; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!187420 () Bool)

(assert start!187420)

(declare-fun res!837794 () Bool)

(declare-fun e!1193985 () Bool)

(assert (=> start!187420 (=> (not res!837794) (not e!1193985))))

(declare-fun lt!719450 () Int)

(declare-datatypes ((T!33478 0))(
  ( (T!33479 (val!5993 Int)) )
))
(declare-datatypes ((List!20810 0))(
  ( (Nil!20728) (Cons!20728 (h!26129 T!33478) (t!173027 List!20810)) )
))
(declare-fun l!2791 () List!20810)

(assert (=> start!187420 (= res!837794 (and (> lt!719450 0) (is-Nil!20728 l!2791)))))

(declare-fun size!16461 (List!20810) Int)

(assert (=> start!187420 (= lt!719450 (size!16461 l!2791))))

(assert (=> start!187420 e!1193985))

(declare-fun e!1193984 () Bool)

(assert (=> start!187420 e!1193984))

(declare-fun b!1871523 () Bool)

(declare-fun tail!2864 (List!20810) List!20810)

(declare-fun slice!602 (List!20810 Int Int) List!20810)

(assert (=> b!1871523 (= e!1193985 (not (= (tail!2864 l!2791) (slice!602 l!2791 1 lt!719450))))))

(declare-fun b!1871524 () Bool)

(declare-fun tp_is_empty!8765 () Bool)

(declare-fun tp!532378 () Bool)

(assert (=> b!1871524 (= e!1193984 (and tp_is_empty!8765 tp!532378))))

(assert (= (and start!187420 res!837794) b!1871523))

(assert (= (and start!187420 (is-Cons!20728 l!2791)) b!1871524))

(declare-fun m!2297457 () Bool)

(assert (=> start!187420 m!2297457))

(declare-fun m!2297459 () Bool)

(assert (=> b!1871523 m!2297459))

(declare-fun m!2297461 () Bool)

(assert (=> b!1871523 m!2297461))

(push 1)

(assert (not start!187420))

(assert (not b!1871523))

(assert (not b!1871524))

(assert tp_is_empty!8765)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!572124 () Bool)

(declare-fun lt!719456 () Int)

(assert (=> d!572124 (>= lt!719456 0)))

(declare-fun e!1193994 () Int)

(assert (=> d!572124 (= lt!719456 e!1193994)))

(declare-fun c!304984 () Bool)

(assert (=> d!572124 (= c!304984 (is-Nil!20728 l!2791))))

(assert (=> d!572124 (= (size!16461 l!2791) lt!719456)))

(declare-fun b!1871535 () Bool)

(assert (=> b!1871535 (= e!1193994 0)))

(declare-fun b!1871536 () Bool)

(assert (=> b!1871536 (= e!1193994 (+ 1 (size!16461 (t!173027 l!2791))))))

(assert (= (and d!572124 c!304984) b!1871535))

(assert (= (and d!572124 (not c!304984)) b!1871536))

(declare-fun m!2297469 () Bool)

(assert (=> b!1871536 m!2297469))

(assert (=> start!187420 d!572124))

(declare-fun d!572128 () Bool)

(assert (=> d!572128 (= (tail!2864 l!2791) (t!173027 l!2791))))

(assert (=> b!1871523 d!572128))

(declare-fun d!572130 () Bool)

(declare-fun take!168 (List!20810 Int) List!20810)

(declare-fun drop!995 (List!20810 Int) List!20810)

(assert (=> d!572130 (= (slice!602 l!2791 1 lt!719450) (take!168 (drop!995 l!2791 1) (- lt!719450 1)))))

(declare-fun bs!412014 () Bool)

(assert (= bs!412014 d!572130))

(declare-fun m!2297471 () Bool)

(assert (=> bs!412014 m!2297471))

(assert (=> bs!412014 m!2297471))

(declare-fun m!2297473 () Bool)

(assert (=> bs!412014 m!2297473))

(assert (=> b!1871523 d!572130))

(declare-fun b!1871541 () Bool)

(declare-fun e!1193997 () Bool)

(declare-fun tp!532384 () Bool)

(assert (=> b!1871541 (= e!1193997 (and tp_is_empty!8765 tp!532384))))

(assert (=> b!1871524 (= tp!532378 e!1193997)))

(assert (= (and b!1871524 (is-Cons!20728 (t!173027 l!2791))) b!1871541))

(push 1)

(assert (not b!1871536))

(assert (not d!572130))

(assert (not b!1871541))

(assert tp_is_empty!8765)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

