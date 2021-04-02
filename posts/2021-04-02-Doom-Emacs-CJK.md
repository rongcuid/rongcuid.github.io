---
title: 如何在 Doom Emacs 中设置中文
---

Doom Emacs 设置中文字体的时候，会出现需要重新加载（`doom/reload`）才能设置成功的情况。
这是因为 doom 的加载顺序导致字体设置被覆盖造成的。

正确的`config.el`设置如下：

```elisp
(defun init-cjk-fonts()
  (dolist (charset '(kana han cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font)
      charset (font-spec :family "Noto Sans Mono CJK SC" :size 36))))
(add-hook 'doom-init-ui-hook 'init-cjk-fonts)

```

这段代码把字体设置推迟到 Doom 完成 UI 初始化之后，从而使得字体设置生效。

