; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755812 () Bool)

(assert start!755812)

(declare-fun b!8026455 () Bool)

(declare-fun e!4728461 () Bool)

(declare-fun e!4728463 () Bool)

(assert (=> b!8026455 (= e!4728461 e!4728463)))

(declare-fun res!3174121 () Bool)

(assert (=> b!8026455 (=> (not res!3174121) (not e!4728463))))

(declare-datatypes ((B!4353 0))(
  ( (B!4354 (val!32576 Int)) )
))
(declare-datatypes ((List!75092 0))(
  ( (Nil!74966) (Cons!74966 (h!81414 B!4353) (t!390848 List!75092)) )
))
(declare-fun lt!2720964 () List!75092)

(declare-fun e!9294 () B!4353)

(declare-fun head!16472 (List!75092) B!4353)

(assert (=> b!8026455 (= res!3174121 (= (head!16472 lt!2720964) e!9294))))

(declare-fun l!3127 () List!75092)

(declare-fun tail!16013 (List!75092) List!75092)

(assert (=> b!8026455 (= lt!2720964 (tail!16013 l!3127))))

(declare-fun res!3174120 () Bool)

(assert (=> start!755812 (=> (not res!3174120) (not e!4728461))))

(declare-fun contains!20930 (List!75092 B!4353) Bool)

(assert (=> start!755812 (= res!3174120 (contains!20930 l!3127 e!9294))))

(assert (=> start!755812 e!4728461))

(declare-fun e!4728462 () Bool)

(assert (=> start!755812 e!4728462))

(declare-fun tp_is_empty!54257 () Bool)

(assert (=> start!755812 tp_is_empty!54257))

(declare-fun b!8026454 () Bool)

(declare-fun res!3174119 () Bool)

(assert (=> b!8026454 (=> (not res!3174119) (not e!4728461))))

(assert (=> b!8026454 (= res!3174119 (not (= (head!16472 l!3127) e!9294)))))

(declare-fun b!8026457 () Bool)

(declare-fun tp!2402045 () Bool)

(assert (=> b!8026457 (= e!4728462 (and tp_is_empty!54257 tp!2402045))))

(declare-fun b!8026456 () Bool)

(declare-fun getIndex!916 (List!75092 B!4353) Int)

(assert (=> b!8026456 (= e!4728463 (not (= (getIndex!916 l!3127 e!9294) (+ 1 (getIndex!916 lt!2720964 e!9294)))))))

(assert (= (and start!755812 res!3174120) b!8026454))

(assert (= (and b!8026454 res!3174119) b!8026455))

(assert (= (and b!8026455 res!3174121) b!8026456))

(get-info :version)

(assert (= (and start!755812 ((_ is Cons!74966) l!3127)) b!8026457))

(declare-fun m!8388870 () Bool)

(assert (=> b!8026455 m!8388870))

(declare-fun m!8388872 () Bool)

(assert (=> b!8026455 m!8388872))

(declare-fun m!8388874 () Bool)

(assert (=> start!755812 m!8388874))

(declare-fun m!8388876 () Bool)

(assert (=> b!8026454 m!8388876))

(declare-fun m!8388878 () Bool)

(assert (=> b!8026456 m!8388878))

(declare-fun m!8388880 () Bool)

(assert (=> b!8026456 m!8388880))

(check-sat (not b!8026454) tp_is_empty!54257 (not b!8026457) (not b!8026456) (not b!8026455) (not start!755812))
(check-sat)
(get-model)

(declare-fun d!2393526 () Bool)

(declare-fun lt!2720971 () Int)

(assert (=> d!2393526 (>= lt!2720971 0)))

(declare-fun e!4728479 () Int)

(assert (=> d!2393526 (= lt!2720971 e!4728479)))

(declare-fun c!1472743 () Bool)

(assert (=> d!2393526 (= c!1472743 (and ((_ is Cons!74966) l!3127) (= (h!81414 l!3127) e!9294)))))

(assert (=> d!2393526 (contains!20930 l!3127 e!9294)))

(assert (=> d!2393526 (= (getIndex!916 l!3127 e!9294) lt!2720971)))

(declare-fun b!8026482 () Bool)

(assert (=> b!8026482 (= e!4728479 0)))

(declare-fun b!8026485 () Bool)

(declare-fun e!4728478 () Int)

(assert (=> b!8026485 (= e!4728478 (- 1))))

(declare-fun b!8026484 () Bool)

(assert (=> b!8026484 (= e!4728478 (+ 1 (getIndex!916 (t!390848 l!3127) e!9294)))))

(declare-fun b!8026483 () Bool)

(assert (=> b!8026483 (= e!4728479 e!4728478)))

(declare-fun c!1472744 () Bool)

(assert (=> b!8026483 (= c!1472744 (and ((_ is Cons!74966) l!3127) (not (= (h!81414 l!3127) e!9294))))))

(assert (= (and d!2393526 c!1472743) b!8026482))

(assert (= (and d!2393526 (not c!1472743)) b!8026483))

(assert (= (and b!8026483 c!1472744) b!8026484))

(assert (= (and b!8026483 (not c!1472744)) b!8026485))

(assert (=> d!2393526 m!8388874))

(declare-fun m!8388888 () Bool)

(assert (=> b!8026484 m!8388888))

(assert (=> b!8026456 d!2393526))

(declare-fun d!2393532 () Bool)

(declare-fun lt!2720972 () Int)

(assert (=> d!2393532 (>= lt!2720972 0)))

(declare-fun e!4728481 () Int)

(assert (=> d!2393532 (= lt!2720972 e!4728481)))

(declare-fun c!1472745 () Bool)

(assert (=> d!2393532 (= c!1472745 (and ((_ is Cons!74966) lt!2720964) (= (h!81414 lt!2720964) e!9294)))))

(assert (=> d!2393532 (contains!20930 lt!2720964 e!9294)))

(assert (=> d!2393532 (= (getIndex!916 lt!2720964 e!9294) lt!2720972)))

(declare-fun b!8026486 () Bool)

(assert (=> b!8026486 (= e!4728481 0)))

(declare-fun b!8026489 () Bool)

(declare-fun e!4728480 () Int)

(assert (=> b!8026489 (= e!4728480 (- 1))))

(declare-fun b!8026488 () Bool)

(assert (=> b!8026488 (= e!4728480 (+ 1 (getIndex!916 (t!390848 lt!2720964) e!9294)))))

(declare-fun b!8026487 () Bool)

(assert (=> b!8026487 (= e!4728481 e!4728480)))

(declare-fun c!1472746 () Bool)

(assert (=> b!8026487 (= c!1472746 (and ((_ is Cons!74966) lt!2720964) (not (= (h!81414 lt!2720964) e!9294))))))

(assert (= (and d!2393532 c!1472745) b!8026486))

(assert (= (and d!2393532 (not c!1472745)) b!8026487))

(assert (= (and b!8026487 c!1472746) b!8026488))

(assert (= (and b!8026487 (not c!1472746)) b!8026489))

(declare-fun m!8388890 () Bool)

(assert (=> d!2393532 m!8388890))

(declare-fun m!8388892 () Bool)

(assert (=> b!8026488 m!8388892))

(assert (=> b!8026456 d!2393532))

(declare-fun d!2393534 () Bool)

(declare-fun lt!2720978 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15985 (List!75092) (InoxSet B!4353))

(assert (=> d!2393534 (= lt!2720978 (select (content!15985 l!3127) e!9294))))

(declare-fun e!4728496 () Bool)

(assert (=> d!2393534 (= lt!2720978 e!4728496)))

(declare-fun res!3174133 () Bool)

(assert (=> d!2393534 (=> (not res!3174133) (not e!4728496))))

(assert (=> d!2393534 (= res!3174133 ((_ is Cons!74966) l!3127))))

(assert (=> d!2393534 (= (contains!20930 l!3127 e!9294) lt!2720978)))

(declare-fun b!8026505 () Bool)

(declare-fun e!4728495 () Bool)

(assert (=> b!8026505 (= e!4728496 e!4728495)))

(declare-fun res!3174132 () Bool)

(assert (=> b!8026505 (=> res!3174132 e!4728495)))

(assert (=> b!8026505 (= res!3174132 (= (h!81414 l!3127) e!9294))))

(declare-fun b!8026506 () Bool)

(assert (=> b!8026506 (= e!4728495 (contains!20930 (t!390848 l!3127) e!9294))))

(assert (= (and d!2393534 res!3174133) b!8026505))

(assert (= (and b!8026505 (not res!3174132)) b!8026506))

(declare-fun m!8388900 () Bool)

(assert (=> d!2393534 m!8388900))

(declare-fun m!8388902 () Bool)

(assert (=> d!2393534 m!8388902))

(declare-fun m!8388904 () Bool)

(assert (=> b!8026506 m!8388904))

(assert (=> start!755812 d!2393534))

(declare-fun d!2393542 () Bool)

(assert (=> d!2393542 (= (head!16472 l!3127) (h!81414 l!3127))))

(assert (=> b!8026454 d!2393542))

(declare-fun d!2393544 () Bool)

(assert (=> d!2393544 (= (head!16472 lt!2720964) (h!81414 lt!2720964))))

(assert (=> b!8026455 d!2393544))

(declare-fun d!2393546 () Bool)

(assert (=> d!2393546 (= (tail!16013 l!3127) (t!390848 l!3127))))

(assert (=> b!8026455 d!2393546))

(declare-fun b!8026511 () Bool)

(declare-fun e!4728499 () Bool)

(declare-fun tp!2402051 () Bool)

(assert (=> b!8026511 (= e!4728499 (and tp_is_empty!54257 tp!2402051))))

(assert (=> b!8026457 (= tp!2402045 e!4728499)))

(assert (= (and b!8026457 ((_ is Cons!74966) (t!390848 l!3127))) b!8026511))

(check-sat (not b!8026511) (not d!2393534) (not b!8026506) (not d!2393532) (not d!2393526) tp_is_empty!54257 (not b!8026488) (not b!8026484))
(check-sat)
