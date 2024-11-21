# Contributing

How to contribute to Chaos.

1. Fork the repository: [Fork Chaos](https://github.com/gabrioliv/chaos/fork)

---

2. Create your feature branch:  
   ```bash
   git checkout -b my-new-feature
   ```

---

3. Make your changes.

---

4. Follow these quality steps to ensure consistency:
   - Update and run tests:  
     ```bash
     crystal spec -v --fail-fast
     ```
   - Format your code:  
     ```bash
     crystal tool format
     ```
   - Update the documentation:  
     ```bash
     crystal docs
     ```

---

5. Commit your changes:  
   ```bash
   git commit -am 'Add some feature'
   ```

---

6. Push the branch:  
   ```bash
   git push origin my-new-feature
   ```

---

7. Create a new Pull Request.

---
