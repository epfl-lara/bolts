; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755638 () Bool)

(assert start!755638)

(declare-fun res!3173775 () Bool)

(declare-fun e!4728036 () Bool)

(assert (=> start!755638 (=> (not res!3173775) (not e!4728036))))

(declare-datatypes ((B!4309 0))(
  ( (B!4310 (val!32554 Int)) )
))
(declare-datatypes ((List!75070 0))(
  ( (Nil!74944) (Cons!74944 (h!81392 B!4309) (t!390826 List!75070)) )
))
(declare-fun l!3127 () List!75070)

(declare-fun e!9294 () B!4309)

(declare-fun contains!20908 (List!75070 B!4309) Bool)

(assert (=> start!755638 (= res!3173775 (contains!20908 l!3127 e!9294))))

(assert (=> start!755638 e!4728036))

(declare-fun e!4728037 () Bool)

(assert (=> start!755638 e!4728037))

(declare-fun tp_is_empty!54213 () Bool)

(assert (=> start!755638 tp_is_empty!54213))

(declare-fun b!8025846 () Bool)

(declare-fun res!3173774 () Bool)

(assert (=> b!8025846 (=> (not res!3173774) (not e!4728036))))

(declare-fun head!16450 (List!75070) B!4309)

(assert (=> b!8025846 (= res!3173774 (not (= (head!16450 l!3127) e!9294)))))

(declare-fun b!8025847 () Bool)

(declare-fun tail!15993 (List!75070) List!75070)

(assert (=> b!8025847 (= e!4728036 (= (tail!15993 l!3127) Nil!74944))))

(declare-fun b!8025848 () Bool)

(declare-fun tp!2401924 () Bool)

(assert (=> b!8025848 (= e!4728037 (and tp_is_empty!54213 tp!2401924))))

(assert (= (and start!755638 res!3173775) b!8025846))

(assert (= (and b!8025846 res!3173774) b!8025847))

(get-info :version)

(assert (= (and start!755638 ((_ is Cons!74944) l!3127)) b!8025848))

(declare-fun m!8388384 () Bool)

(assert (=> start!755638 m!8388384))

(declare-fun m!8388386 () Bool)

(assert (=> b!8025846 m!8388386))

(declare-fun m!8388388 () Bool)

(assert (=> b!8025847 m!8388388))

(check-sat (not start!755638) (not b!8025848) (not b!8025847) tp_is_empty!54213 (not b!8025846))
(check-sat)
(get-model)

(declare-fun d!2393311 () Bool)

(assert (=> d!2393311 (= (tail!15993 l!3127) (t!390826 l!3127))))

(assert (=> b!8025847 d!2393311))

(declare-fun d!2393315 () Bool)

(declare-fun lt!2720774 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15966 (List!75070) (InoxSet B!4309))

(assert (=> d!2393315 (= lt!2720774 (select (content!15966 l!3127) e!9294))))

(declare-fun e!4728042 () Bool)

(assert (=> d!2393315 (= lt!2720774 e!4728042)))

(declare-fun res!3173781 () Bool)

(assert (=> d!2393315 (=> (not res!3173781) (not e!4728042))))

(assert (=> d!2393315 (= res!3173781 ((_ is Cons!74944) l!3127))))

(assert (=> d!2393315 (= (contains!20908 l!3127 e!9294) lt!2720774)))

(declare-fun b!8025853 () Bool)

(declare-fun e!4728043 () Bool)

(assert (=> b!8025853 (= e!4728042 e!4728043)))

(declare-fun res!3173780 () Bool)

(assert (=> b!8025853 (=> res!3173780 e!4728043)))

(assert (=> b!8025853 (= res!3173780 (= (h!81392 l!3127) e!9294))))

(declare-fun b!8025854 () Bool)

(assert (=> b!8025854 (= e!4728043 (contains!20908 (t!390826 l!3127) e!9294))))

(assert (= (and d!2393315 res!3173781) b!8025853))

(assert (= (and b!8025853 (not res!3173780)) b!8025854))

(declare-fun m!8388390 () Bool)

(assert (=> d!2393315 m!8388390))

(declare-fun m!8388392 () Bool)

(assert (=> d!2393315 m!8388392))

(declare-fun m!8388394 () Bool)

(assert (=> b!8025854 m!8388394))

(assert (=> start!755638 d!2393315))

(declare-fun d!2393319 () Bool)

(assert (=> d!2393319 (= (head!16450 l!3127) (h!81392 l!3127))))

(assert (=> b!8025846 d!2393319))

(declare-fun b!8025863 () Bool)

(declare-fun e!4728050 () Bool)

(declare-fun tp!2401927 () Bool)

(assert (=> b!8025863 (= e!4728050 (and tp_is_empty!54213 tp!2401927))))

(assert (=> b!8025848 (= tp!2401924 e!4728050)))

(assert (= (and b!8025848 ((_ is Cons!74944) (t!390826 l!3127))) b!8025863))

(check-sat (not d!2393315) (not b!8025854) (not b!8025863) tp_is_empty!54213)
(check-sat)
(get-model)

(declare-fun d!2393321 () Bool)

(declare-fun c!1472680 () Bool)

(assert (=> d!2393321 (= c!1472680 ((_ is Nil!74944) l!3127))))

(declare-fun e!4728058 () (InoxSet B!4309))

(assert (=> d!2393321 (= (content!15966 l!3127) e!4728058)))

(declare-fun b!8025875 () Bool)

(assert (=> b!8025875 (= e!4728058 ((as const (Array B!4309 Bool)) false))))

(declare-fun b!8025876 () Bool)

(assert (=> b!8025876 (= e!4728058 ((_ map or) (store ((as const (Array B!4309 Bool)) false) (h!81392 l!3127) true) (content!15966 (t!390826 l!3127))))))

(assert (= (and d!2393321 c!1472680) b!8025875))

(assert (= (and d!2393321 (not c!1472680)) b!8025876))

(declare-fun m!8388402 () Bool)

(assert (=> b!8025876 m!8388402))

(declare-fun m!8388404 () Bool)

(assert (=> b!8025876 m!8388404))

(assert (=> d!2393315 d!2393321))

(declare-fun d!2393323 () Bool)

(declare-fun lt!2720778 () Bool)

(assert (=> d!2393323 (= lt!2720778 (select (content!15966 (t!390826 l!3127)) e!9294))))

(declare-fun e!4728059 () Bool)

(assert (=> d!2393323 (= lt!2720778 e!4728059)))

(declare-fun res!3173789 () Bool)

(assert (=> d!2393323 (=> (not res!3173789) (not e!4728059))))

(assert (=> d!2393323 (= res!3173789 ((_ is Cons!74944) (t!390826 l!3127)))))

(assert (=> d!2393323 (= (contains!20908 (t!390826 l!3127) e!9294) lt!2720778)))

(declare-fun b!8025877 () Bool)

(declare-fun e!4728060 () Bool)

(assert (=> b!8025877 (= e!4728059 e!4728060)))

(declare-fun res!3173788 () Bool)

(assert (=> b!8025877 (=> res!3173788 e!4728060)))

(assert (=> b!8025877 (= res!3173788 (= (h!81392 (t!390826 l!3127)) e!9294))))

(declare-fun b!8025878 () Bool)

(assert (=> b!8025878 (= e!4728060 (contains!20908 (t!390826 (t!390826 l!3127)) e!9294))))

(assert (= (and d!2393323 res!3173789) b!8025877))

(assert (= (and b!8025877 (not res!3173788)) b!8025878))

(assert (=> d!2393323 m!8388404))

(declare-fun m!8388406 () Bool)

(assert (=> d!2393323 m!8388406))

(declare-fun m!8388408 () Bool)

(assert (=> b!8025878 m!8388408))

(assert (=> b!8025854 d!2393323))

(declare-fun b!8025879 () Bool)

(declare-fun e!4728061 () Bool)

(declare-fun tp!2401931 () Bool)

(assert (=> b!8025879 (= e!4728061 (and tp_is_empty!54213 tp!2401931))))

(assert (=> b!8025863 (= tp!2401927 e!4728061)))

(assert (= (and b!8025863 ((_ is Cons!74944) (t!390826 (t!390826 l!3127)))) b!8025879))

(check-sat (not d!2393323) (not b!8025878) tp_is_empty!54213 (not b!8025876) (not b!8025879))
(check-sat)
