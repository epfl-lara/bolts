; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!396066 () Bool)

(assert start!396066)

(declare-fun b!4158320 () Bool)

(declare-fun res!1703216 () Bool)

(declare-fun e!2580749 () Bool)

(assert (=> b!4158320 (=> (not res!1703216) (not e!2580749))))

(declare-datatypes ((B!2657 0))(
  ( (B!2658 (val!14620 Int)) )
))
(declare-fun e2!32 () B!2657)

(declare-fun e1!32 () B!2657)

(declare-datatypes ((List!45497 0))(
  ( (Nil!45373) (Cons!45373 (h!50793 B!2657) (t!343528 List!45497)) )
))
(declare-fun l!3062 () List!45497)

(declare-fun getIndex!852 (List!45497 B!2657) Int)

(assert (=> b!4158320 (= res!1703216 (< (getIndex!852 l!3062 e1!32) (getIndex!852 l!3062 e2!32)))))

(declare-fun b!4158321 () Bool)

(declare-fun res!1703215 () Bool)

(assert (=> b!4158321 (=> (not res!1703215) (not e!2580749))))

(declare-fun contains!9231 (List!45497 B!2657) Bool)

(assert (=> b!4158321 (= res!1703215 (contains!9231 l!3062 e2!32))))

(declare-fun b!4158323 () Bool)

(declare-fun e!2580750 () Bool)

(declare-fun tp_is_empty!21705 () Bool)

(declare-fun tp!1268906 () Bool)

(assert (=> b!4158323 (= e!2580750 (and tp_is_empty!21705 tp!1268906))))

(declare-fun b!4158324 () Bool)

(declare-fun res!1703218 () Bool)

(assert (=> b!4158324 (=> (not res!1703218) (not e!2580749))))

(assert (=> b!4158324 (= res!1703218 (not (= e1!32 e2!32)))))

(declare-fun res!1703217 () Bool)

(assert (=> start!396066 (=> (not res!1703217) (not e!2580749))))

(assert (=> start!396066 (= res!1703217 (contains!9231 l!3062 e1!32))))

(assert (=> start!396066 e!2580749))

(assert (=> start!396066 e!2580750))

(assert (=> start!396066 tp_is_empty!21705))

(declare-fun b!4158322 () Bool)

(declare-fun size!33452 (List!45497) Int)

(assert (=> b!4158322 (= e!2580749 (< (size!33452 l!3062) 0))))

(assert (= (and start!396066 res!1703217) b!4158321))

(assert (= (and b!4158321 res!1703215) b!4158324))

(assert (= (and b!4158324 res!1703218) b!4158320))

(assert (= (and b!4158320 res!1703216) b!4158322))

(get-info :version)

(assert (= (and start!396066 ((_ is Cons!45373) l!3062)) b!4158323))

(declare-fun m!4752223 () Bool)

(assert (=> b!4158320 m!4752223))

(declare-fun m!4752225 () Bool)

(assert (=> b!4158320 m!4752225))

(declare-fun m!4752227 () Bool)

(assert (=> b!4158321 m!4752227))

(declare-fun m!4752229 () Bool)

(assert (=> start!396066 m!4752229))

(declare-fun m!4752231 () Bool)

(assert (=> b!4158322 m!4752231))

(check-sat (not b!4158320) (not b!4158321) (not start!396066) (not b!4158323) tp_is_empty!21705 (not b!4158322))
(check-sat)
(get-model)

(declare-fun d!1229503 () Bool)

(declare-fun lt!1482200 () Int)

(assert (=> d!1229503 (>= lt!1482200 0)))

(declare-fun e!2580756 () Int)

(assert (=> d!1229503 (= lt!1482200 e!2580756)))

(declare-fun c!711639 () Bool)

(assert (=> d!1229503 (= c!711639 ((_ is Nil!45373) l!3062))))

(assert (=> d!1229503 (= (size!33452 l!3062) lt!1482200)))

(declare-fun b!4158335 () Bool)

(assert (=> b!4158335 (= e!2580756 0)))

(declare-fun b!4158336 () Bool)

(assert (=> b!4158336 (= e!2580756 (+ 1 (size!33452 (t!343528 l!3062))))))

(assert (= (and d!1229503 c!711639) b!4158335))

(assert (= (and d!1229503 (not c!711639)) b!4158336))

(declare-fun m!4752235 () Bool)

(assert (=> b!4158336 m!4752235))

(assert (=> b!4158322 d!1229503))

(declare-fun d!1229509 () Bool)

(declare-fun lt!1482205 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7021 (List!45497) (InoxSet B!2657))

(assert (=> d!1229509 (= lt!1482205 (select (content!7021 l!3062) e1!32))))

(declare-fun e!2580767 () Bool)

(assert (=> d!1229509 (= lt!1482205 e!2580767)))

(declare-fun res!1703224 () Bool)

(assert (=> d!1229509 (=> (not res!1703224) (not e!2580767))))

(assert (=> d!1229509 (= res!1703224 ((_ is Cons!45373) l!3062))))

(assert (=> d!1229509 (= (contains!9231 l!3062 e1!32) lt!1482205)))

(declare-fun b!4158349 () Bool)

(declare-fun e!2580766 () Bool)

(assert (=> b!4158349 (= e!2580767 e!2580766)))

(declare-fun res!1703223 () Bool)

(assert (=> b!4158349 (=> res!1703223 e!2580766)))

(assert (=> b!4158349 (= res!1703223 (= (h!50793 l!3062) e1!32))))

(declare-fun b!4158350 () Bool)

(assert (=> b!4158350 (= e!2580766 (contains!9231 (t!343528 l!3062) e1!32))))

(assert (= (and d!1229509 res!1703224) b!4158349))

(assert (= (and b!4158349 (not res!1703223)) b!4158350))

(declare-fun m!4752237 () Bool)

(assert (=> d!1229509 m!4752237))

(declare-fun m!4752239 () Bool)

(assert (=> d!1229509 m!4752239))

(declare-fun m!4752241 () Bool)

(assert (=> b!4158350 m!4752241))

(assert (=> start!396066 d!1229509))

(declare-fun b!4158371 () Bool)

(declare-fun e!2580781 () Int)

(assert (=> b!4158371 (= e!2580781 0)))

(declare-fun b!4158374 () Bool)

(declare-fun e!2580782 () Int)

(assert (=> b!4158374 (= e!2580782 (- 1))))

(declare-fun d!1229511 () Bool)

(declare-fun lt!1482212 () Int)

(assert (=> d!1229511 (>= lt!1482212 0)))

(assert (=> d!1229511 (= lt!1482212 e!2580781)))

(declare-fun c!711652 () Bool)

(assert (=> d!1229511 (= c!711652 (and ((_ is Cons!45373) l!3062) (= (h!50793 l!3062) e1!32)))))

(assert (=> d!1229511 (contains!9231 l!3062 e1!32)))

(assert (=> d!1229511 (= (getIndex!852 l!3062 e1!32) lt!1482212)))

(declare-fun b!4158373 () Bool)

(assert (=> b!4158373 (= e!2580782 (+ 1 (getIndex!852 (t!343528 l!3062) e1!32)))))

(declare-fun b!4158372 () Bool)

(assert (=> b!4158372 (= e!2580781 e!2580782)))

(declare-fun c!711653 () Bool)

(assert (=> b!4158372 (= c!711653 (and ((_ is Cons!45373) l!3062) (not (= (h!50793 l!3062) e1!32))))))

(assert (= (and d!1229511 c!711652) b!4158371))

(assert (= (and d!1229511 (not c!711652)) b!4158372))

(assert (= (and b!4158372 c!711653) b!4158373))

(assert (= (and b!4158372 (not c!711653)) b!4158374))

(assert (=> d!1229511 m!4752229))

(declare-fun m!4752247 () Bool)

(assert (=> b!4158373 m!4752247))

(assert (=> b!4158320 d!1229511))

(declare-fun b!4158375 () Bool)

(declare-fun e!2580783 () Int)

(assert (=> b!4158375 (= e!2580783 0)))

(declare-fun b!4158378 () Bool)

(declare-fun e!2580784 () Int)

(assert (=> b!4158378 (= e!2580784 (- 1))))

(declare-fun d!1229517 () Bool)

(declare-fun lt!1482213 () Int)

(assert (=> d!1229517 (>= lt!1482213 0)))

(assert (=> d!1229517 (= lt!1482213 e!2580783)))

(declare-fun c!711654 () Bool)

(assert (=> d!1229517 (= c!711654 (and ((_ is Cons!45373) l!3062) (= (h!50793 l!3062) e2!32)))))

(assert (=> d!1229517 (contains!9231 l!3062 e2!32)))

(assert (=> d!1229517 (= (getIndex!852 l!3062 e2!32) lt!1482213)))

(declare-fun b!4158377 () Bool)

(assert (=> b!4158377 (= e!2580784 (+ 1 (getIndex!852 (t!343528 l!3062) e2!32)))))

(declare-fun b!4158376 () Bool)

(assert (=> b!4158376 (= e!2580783 e!2580784)))

(declare-fun c!711655 () Bool)

(assert (=> b!4158376 (= c!711655 (and ((_ is Cons!45373) l!3062) (not (= (h!50793 l!3062) e2!32))))))

(assert (= (and d!1229517 c!711654) b!4158375))

(assert (= (and d!1229517 (not c!711654)) b!4158376))

(assert (= (and b!4158376 c!711655) b!4158377))

(assert (= (and b!4158376 (not c!711655)) b!4158378))

(assert (=> d!1229517 m!4752227))

(declare-fun m!4752249 () Bool)

(assert (=> b!4158377 m!4752249))

(assert (=> b!4158320 d!1229517))

(declare-fun d!1229519 () Bool)

(declare-fun lt!1482215 () Bool)

(assert (=> d!1229519 (= lt!1482215 (select (content!7021 l!3062) e2!32))))

(declare-fun e!2580788 () Bool)

(assert (=> d!1229519 (= lt!1482215 e!2580788)))

(declare-fun res!1703232 () Bool)

(assert (=> d!1229519 (=> (not res!1703232) (not e!2580788))))

(assert (=> d!1229519 (= res!1703232 ((_ is Cons!45373) l!3062))))

(assert (=> d!1229519 (= (contains!9231 l!3062 e2!32) lt!1482215)))

(declare-fun b!4158381 () Bool)

(declare-fun e!2580787 () Bool)

(assert (=> b!4158381 (= e!2580788 e!2580787)))

(declare-fun res!1703231 () Bool)

(assert (=> b!4158381 (=> res!1703231 e!2580787)))

(assert (=> b!4158381 (= res!1703231 (= (h!50793 l!3062) e2!32))))

(declare-fun b!4158382 () Bool)

(assert (=> b!4158382 (= e!2580787 (contains!9231 (t!343528 l!3062) e2!32))))

(assert (= (and d!1229519 res!1703232) b!4158381))

(assert (= (and b!4158381 (not res!1703231)) b!4158382))

(assert (=> d!1229519 m!4752237))

(declare-fun m!4752257 () Bool)

(assert (=> d!1229519 m!4752257))

(declare-fun m!4752259 () Bool)

(assert (=> b!4158382 m!4752259))

(assert (=> b!4158321 d!1229519))

(declare-fun b!4158393 () Bool)

(declare-fun e!2580795 () Bool)

(declare-fun tp!1268911 () Bool)

(assert (=> b!4158393 (= e!2580795 (and tp_is_empty!21705 tp!1268911))))

(assert (=> b!4158323 (= tp!1268906 e!2580795)))

(assert (= (and b!4158323 ((_ is Cons!45373) (t!343528 l!3062))) b!4158393))

(check-sat (not d!1229509) (not d!1229519) (not b!4158382) (not b!4158377) (not b!4158373) (not d!1229517) (not d!1229511) (not b!4158393) (not b!4158336) tp_is_empty!21705 (not b!4158350))
(check-sat)
