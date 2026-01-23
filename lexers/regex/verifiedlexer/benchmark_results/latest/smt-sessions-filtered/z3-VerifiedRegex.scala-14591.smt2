; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755840 () Bool)

(assert start!755840)

(declare-fun res!3174172 () Bool)

(declare-fun e!4728545 () Bool)

(assert (=> start!755840 (=> (not res!3174172) (not e!4728545))))

(declare-datatypes ((B!4361 0))(
  ( (B!4362 (val!32580 Int)) )
))
(declare-datatypes ((List!75096 0))(
  ( (Nil!74970) (Cons!74970 (h!81418 B!4361) (t!390852 List!75096)) )
))
(declare-fun l!2938 () List!75096)

(declare-fun e!9235 () B!4361)

(declare-fun contains!20934 (List!75096 B!4361) Bool)

(assert (=> start!755840 (= res!3174172 (contains!20934 l!2938 e!9235))))

(assert (=> start!755840 e!4728545))

(declare-fun e!4728544 () Bool)

(assert (=> start!755840 e!4728544))

(declare-fun tp_is_empty!54265 () Bool)

(assert (=> start!755840 tp_is_empty!54265))

(declare-fun b!8026571 () Bool)

(declare-fun res!3174173 () Bool)

(assert (=> b!8026571 (=> (not res!3174173) (not e!4728545))))

(get-info :version)

(assert (=> b!8026571 (= res!3174173 (and (or (not ((_ is Cons!74970) l!2938)) (not (= (h!81418 l!2938) e!9235))) ((_ is Cons!74970) l!2938) (not (= (h!81418 l!2938) e!9235))))))

(declare-fun b!8026572 () Bool)

(declare-fun ListPrimitiveSize!517 (List!75096) Int)

(assert (=> b!8026572 (= e!4728545 (>= (ListPrimitiveSize!517 (t!390852 l!2938)) (ListPrimitiveSize!517 l!2938)))))

(declare-fun b!8026573 () Bool)

(declare-fun tp!2402069 () Bool)

(assert (=> b!8026573 (= e!4728544 (and tp_is_empty!54265 tp!2402069))))

(assert (= (and start!755840 res!3174172) b!8026571))

(assert (= (and b!8026571 res!3174173) b!8026572))

(assert (= (and start!755840 ((_ is Cons!74970) l!2938)) b!8026573))

(declare-fun m!8388940 () Bool)

(assert (=> start!755840 m!8388940))

(declare-fun m!8388942 () Bool)

(assert (=> b!8026572 m!8388942))

(declare-fun m!8388944 () Bool)

(assert (=> b!8026572 m!8388944))

(check-sat (not start!755840) (not b!8026572) (not b!8026573) tp_is_empty!54265)
(check-sat)
(get-model)

(declare-fun d!2393558 () Bool)

(declare-fun lt!2720992 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15989 (List!75096) (InoxSet B!4361))

(assert (=> d!2393558 (= lt!2720992 (select (content!15989 l!2938) e!9235))))

(declare-fun e!4728556 () Bool)

(assert (=> d!2393558 (= lt!2720992 e!4728556)))

(declare-fun res!3174184 () Bool)

(assert (=> d!2393558 (=> (not res!3174184) (not e!4728556))))

(assert (=> d!2393558 (= res!3174184 ((_ is Cons!74970) l!2938))))

(assert (=> d!2393558 (= (contains!20934 l!2938 e!9235) lt!2720992)))

(declare-fun b!8026584 () Bool)

(declare-fun e!4728557 () Bool)

(assert (=> b!8026584 (= e!4728556 e!4728557)))

(declare-fun res!3174185 () Bool)

(assert (=> b!8026584 (=> res!3174185 e!4728557)))

(assert (=> b!8026584 (= res!3174185 (= (h!81418 l!2938) e!9235))))

(declare-fun b!8026585 () Bool)

(assert (=> b!8026585 (= e!4728557 (contains!20934 (t!390852 l!2938) e!9235))))

(assert (= (and d!2393558 res!3174184) b!8026584))

(assert (= (and b!8026584 (not res!3174185)) b!8026585))

(declare-fun m!8388952 () Bool)

(assert (=> d!2393558 m!8388952))

(declare-fun m!8388954 () Bool)

(assert (=> d!2393558 m!8388954))

(declare-fun m!8388956 () Bool)

(assert (=> b!8026585 m!8388956))

(assert (=> start!755840 d!2393558))

(declare-fun d!2393564 () Bool)

(declare-fun lt!2720998 () Int)

(assert (=> d!2393564 (>= lt!2720998 0)))

(declare-fun e!4728563 () Int)

(assert (=> d!2393564 (= lt!2720998 e!4728563)))

(declare-fun c!1472752 () Bool)

(assert (=> d!2393564 (= c!1472752 ((_ is Nil!74970) (t!390852 l!2938)))))

(assert (=> d!2393564 (= (ListPrimitiveSize!517 (t!390852 l!2938)) lt!2720998)))

(declare-fun b!8026596 () Bool)

(assert (=> b!8026596 (= e!4728563 0)))

(declare-fun b!8026597 () Bool)

(assert (=> b!8026597 (= e!4728563 (+ 1 (ListPrimitiveSize!517 (t!390852 (t!390852 l!2938)))))))

(assert (= (and d!2393564 c!1472752) b!8026596))

(assert (= (and d!2393564 (not c!1472752)) b!8026597))

(declare-fun m!8388960 () Bool)

(assert (=> b!8026597 m!8388960))

(assert (=> b!8026572 d!2393564))

(declare-fun d!2393568 () Bool)

(declare-fun lt!2721000 () Int)

(assert (=> d!2393568 (>= lt!2721000 0)))

(declare-fun e!4728565 () Int)

(assert (=> d!2393568 (= lt!2721000 e!4728565)))

(declare-fun c!1472754 () Bool)

(assert (=> d!2393568 (= c!1472754 ((_ is Nil!74970) l!2938))))

(assert (=> d!2393568 (= (ListPrimitiveSize!517 l!2938) lt!2721000)))

(declare-fun b!8026601 () Bool)

(assert (=> b!8026601 (= e!4728565 0)))

(declare-fun b!8026603 () Bool)

(assert (=> b!8026603 (= e!4728565 (+ 1 (ListPrimitiveSize!517 (t!390852 l!2938))))))

(assert (= (and d!2393568 c!1472754) b!8026601))

(assert (= (and d!2393568 (not c!1472754)) b!8026603))

(assert (=> b!8026603 m!8388942))

(assert (=> b!8026572 d!2393568))

(declare-fun b!8026611 () Bool)

(declare-fun e!4728571 () Bool)

(declare-fun tp!2402075 () Bool)

(assert (=> b!8026611 (= e!4728571 (and tp_is_empty!54265 tp!2402075))))

(assert (=> b!8026573 (= tp!2402069 e!4728571)))

(assert (= (and b!8026573 ((_ is Cons!74970) (t!390852 l!2938))) b!8026611))

(check-sat (not b!8026597) (not d!2393558) tp_is_empty!54265 (not b!8026603) (not b!8026585) (not b!8026611))
(check-sat)
