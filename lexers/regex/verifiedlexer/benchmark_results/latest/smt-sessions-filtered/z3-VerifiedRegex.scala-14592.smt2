; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755852 () Bool)

(assert start!755852)

(declare-fun res!3174196 () Bool)

(declare-fun e!4728582 () Bool)

(assert (=> start!755852 (=> (not res!3174196) (not e!4728582))))

(declare-datatypes ((B!4365 0))(
  ( (B!4366 (val!32582 Int)) )
))
(declare-datatypes ((List!75098 0))(
  ( (Nil!74972) (Cons!74972 (h!81420 B!4365) (t!390854 List!75098)) )
))
(declare-fun l!2938 () List!75098)

(declare-fun e!9235 () B!4365)

(declare-fun contains!20936 (List!75098 B!4365) Bool)

(assert (=> start!755852 (= res!3174196 (contains!20936 l!2938 e!9235))))

(assert (=> start!755852 e!4728582))

(declare-fun e!4728583 () Bool)

(assert (=> start!755852 e!4728583))

(declare-fun tp_is_empty!54269 () Bool)

(assert (=> start!755852 tp_is_empty!54269))

(declare-fun b!8026627 () Bool)

(declare-fun res!3174197 () Bool)

(assert (=> b!8026627 (=> (not res!3174197) (not e!4728582))))

(get-info :version)

(assert (=> b!8026627 (= res!3174197 (and (or (not ((_ is Cons!74972) l!2938)) (not (= (h!81420 l!2938) e!9235))) ((_ is Cons!74972) l!2938) (not (= (h!81420 l!2938) e!9235))))))

(declare-fun b!8026628 () Bool)

(declare-fun getIndex!918 (List!75098 B!4365) Int)

(assert (=> b!8026628 (= e!4728582 (< (+ 1 (getIndex!918 (t!390854 l!2938) e!9235)) 0))))

(declare-fun b!8026629 () Bool)

(declare-fun tp!2402081 () Bool)

(assert (=> b!8026629 (= e!4728583 (and tp_is_empty!54269 tp!2402081))))

(assert (= (and start!755852 res!3174196) b!8026627))

(assert (= (and b!8026627 res!3174197) b!8026628))

(assert (= (and start!755852 ((_ is Cons!74972) l!2938)) b!8026629))

(declare-fun m!8388966 () Bool)

(assert (=> start!755852 m!8388966))

(declare-fun m!8388968 () Bool)

(assert (=> b!8026628 m!8388968))

(check-sat (not start!755852) (not b!8026628) (not b!8026629) tp_is_empty!54269)
(check-sat)
(get-model)

(declare-fun d!2393571 () Bool)

(declare-fun lt!2721006 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15991 (List!75098) (InoxSet B!4365))

(assert (=> d!2393571 (= lt!2721006 (select (content!15991 l!2938) e!9235))))

(declare-fun e!4728595 () Bool)

(assert (=> d!2393571 (= lt!2721006 e!4728595)))

(declare-fun res!3174209 () Bool)

(assert (=> d!2393571 (=> (not res!3174209) (not e!4728595))))

(assert (=> d!2393571 (= res!3174209 ((_ is Cons!74972) l!2938))))

(assert (=> d!2393571 (= (contains!20936 l!2938 e!9235) lt!2721006)))

(declare-fun b!8026640 () Bool)

(declare-fun e!4728594 () Bool)

(assert (=> b!8026640 (= e!4728595 e!4728594)))

(declare-fun res!3174208 () Bool)

(assert (=> b!8026640 (=> res!3174208 e!4728594)))

(assert (=> b!8026640 (= res!3174208 (= (h!81420 l!2938) e!9235))))

(declare-fun b!8026641 () Bool)

(assert (=> b!8026641 (= e!4728594 (contains!20936 (t!390854 l!2938) e!9235))))

(assert (= (and d!2393571 res!3174209) b!8026640))

(assert (= (and b!8026640 (not res!3174208)) b!8026641))

(declare-fun m!8388976 () Bool)

(assert (=> d!2393571 m!8388976))

(declare-fun m!8388978 () Bool)

(assert (=> d!2393571 m!8388978))

(declare-fun m!8388980 () Bool)

(assert (=> b!8026641 m!8388980))

(assert (=> start!755852 d!2393571))

(declare-fun b!8026665 () Bool)

(declare-fun e!4728608 () Int)

(assert (=> b!8026665 (= e!4728608 (- 1))))

(declare-fun b!8026662 () Bool)

(declare-fun e!4728609 () Int)

(assert (=> b!8026662 (= e!4728609 0)))

(declare-fun b!8026664 () Bool)

(assert (=> b!8026664 (= e!4728608 (+ 1 (getIndex!918 (t!390854 (t!390854 l!2938)) e!9235)))))

(declare-fun d!2393577 () Bool)

(declare-fun lt!2721012 () Int)

(assert (=> d!2393577 (>= lt!2721012 0)))

(assert (=> d!2393577 (= lt!2721012 e!4728609)))

(declare-fun c!1472765 () Bool)

(assert (=> d!2393577 (= c!1472765 (and ((_ is Cons!74972) (t!390854 l!2938)) (= (h!81420 (t!390854 l!2938)) e!9235)))))

(assert (=> d!2393577 (contains!20936 (t!390854 l!2938) e!9235)))

(assert (=> d!2393577 (= (getIndex!918 (t!390854 l!2938) e!9235) lt!2721012)))

(declare-fun b!8026663 () Bool)

(assert (=> b!8026663 (= e!4728609 e!4728608)))

(declare-fun c!1472766 () Bool)

(assert (=> b!8026663 (= c!1472766 (and ((_ is Cons!74972) (t!390854 l!2938)) (not (= (h!81420 (t!390854 l!2938)) e!9235))))))

(assert (= (and d!2393577 c!1472765) b!8026662))

(assert (= (and d!2393577 (not c!1472765)) b!8026663))

(assert (= (and b!8026663 c!1472766) b!8026664))

(assert (= (and b!8026663 (not c!1472766)) b!8026665))

(declare-fun m!8388984 () Bool)

(assert (=> b!8026664 m!8388984))

(assert (=> d!2393577 m!8388980))

(assert (=> b!8026628 d!2393577))

(declare-fun b!8026675 () Bool)

(declare-fun e!4728615 () Bool)

(declare-fun tp!2402087 () Bool)

(assert (=> b!8026675 (= e!4728615 (and tp_is_empty!54269 tp!2402087))))

(assert (=> b!8026629 (= tp!2402081 e!4728615)))

(assert (= (and b!8026629 ((_ is Cons!74972) (t!390854 l!2938))) b!8026675))

(check-sat (not d!2393577) (not d!2393571) (not b!8026664) tp_is_empty!54269 (not b!8026675) (not b!8026641))
(check-sat)
