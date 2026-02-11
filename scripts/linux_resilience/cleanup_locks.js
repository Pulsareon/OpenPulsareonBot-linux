const fs = require('fs');
const locks = ['.git/index.lock', 'data/state/jobs.lock'];

locks.forEach(lock => {
    try {
        if (fs.existsSync(lock)) {
            const stats = fs.statSync(lock);
            const ageInMins = (Date.now() - stats.mtimeMs) / 1000 / 60;
            if (ageInMins > 10) {
                console.log(`Cleaning stale lock: ${lock} (Age: ${ageInMins.toFixed(1)}m)`);
                fs.unlinkSync(lock);
            }
        }
    } catch (err) {
        console.error(`Error processing lock ${lock}: ${err.message}`);
    }
});
