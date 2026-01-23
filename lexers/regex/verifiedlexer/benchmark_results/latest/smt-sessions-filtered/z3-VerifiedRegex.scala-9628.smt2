; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!506296 () Bool)

(assert start!506296)

(declare-fun res!2070813 () Bool)

(declare-fun e!3032842 () Bool)

(assert (=> start!506296 (=> (not res!2070813) (not e!3032842))))

(declare-datatypes ((K!17429 0))(
  ( (K!17430 (val!22249 Int)) )
))
(declare-datatypes ((V!17675 0))(
  ( (V!17676 (val!22250 Int)) )
))
(declare-datatypes ((tuple2!59356 0))(
  ( (tuple2!59357 (_1!32972 K!17429) (_2!32972 V!17675)) )
))
(declare-datatypes ((List!55735 0))(
  ( (Nil!55611) (Cons!55611 (h!62048 tuple2!59356) (t!363231 List!55735)) )
))
(declare-fun l!15167 () List!55735)

(declare-fun noDuplicateKeys!2612 (List!55735) Bool)

(assert (=> start!506296 (= res!2070813 (noDuplicateKeys!2612 l!15167))))

(assert (=> start!506296 e!3032842))

(declare-fun e!3032841 () Bool)

(assert (=> start!506296 e!3032841))

(declare-fun tp_is_empty!35289 () Bool)

(assert (=> start!506296 tp_is_empty!35289))

(declare-fun b!4851454 () Bool)

(declare-fun res!2070811 () Bool)

(assert (=> b!4851454 (=> (not res!2070811) (not e!3032842))))

(declare-fun key!6935 () K!17429)

(declare-datatypes ((Option!13717 0))(
  ( (None!13716) (Some!13716 (v!49510 tuple2!59356)) )
))
(declare-fun isDefined!10807 (Option!13717) Bool)

(declare-fun getPair!1120 (List!55735 K!17429) Option!13717)

(assert (=> b!4851454 (= res!2070811 (isDefined!10807 (getPair!1120 l!15167 key!6935)))))

(declare-fun b!4851456 () Bool)

(assert (=> b!4851456 (= e!3032842 (not (noDuplicateKeys!2612 (t!363231 l!15167))))))

(declare-fun b!4851457 () Bool)

(declare-fun tp_is_empty!35291 () Bool)

(declare-fun tp!1364914 () Bool)

(assert (=> b!4851457 (= e!3032841 (and tp_is_empty!35289 tp_is_empty!35291 tp!1364914))))

(declare-fun b!4851455 () Bool)

(declare-fun res!2070812 () Bool)

(assert (=> b!4851455 (=> (not res!2070812) (not e!3032842))))

(get-info :version)

(assert (=> b!4851455 (= res!2070812 (and (or (not ((_ is Cons!55611) l!15167)) (not (= (_1!32972 (h!62048 l!15167)) key!6935))) ((_ is Cons!55611) l!15167)))))

(assert (= (and start!506296 res!2070813) b!4851454))

(assert (= (and b!4851454 res!2070811) b!4851455))

(assert (= (and b!4851455 res!2070812) b!4851456))

(assert (= (and start!506296 ((_ is Cons!55611) l!15167)) b!4851457))

(declare-fun m!5849964 () Bool)

(assert (=> start!506296 m!5849964))

(declare-fun m!5849966 () Bool)

(assert (=> b!4851454 m!5849966))

(assert (=> b!4851454 m!5849966))

(declare-fun m!5849968 () Bool)

(assert (=> b!4851454 m!5849968))

(declare-fun m!5849970 () Bool)

(assert (=> b!4851456 m!5849970))

(check-sat (not b!4851457) (not b!4851454) tp_is_empty!35291 tp_is_empty!35289 (not b!4851456) (not start!506296))
(check-sat)
(get-model)

(declare-fun d!1557407 () Bool)

(declare-fun res!2070826 () Bool)

(declare-fun e!3032855 () Bool)

(assert (=> d!1557407 (=> res!2070826 e!3032855)))

(assert (=> d!1557407 (= res!2070826 (not ((_ is Cons!55611) (t!363231 l!15167))))))

(assert (=> d!1557407 (= (noDuplicateKeys!2612 (t!363231 l!15167)) e!3032855)))

(declare-fun b!4851470 () Bool)

(declare-fun e!3032856 () Bool)

(assert (=> b!4851470 (= e!3032855 e!3032856)))

(declare-fun res!2070827 () Bool)

(assert (=> b!4851470 (=> (not res!2070827) (not e!3032856))))

(declare-fun containsKey!4722 (List!55735 K!17429) Bool)

(assert (=> b!4851470 (= res!2070827 (not (containsKey!4722 (t!363231 (t!363231 l!15167)) (_1!32972 (h!62048 (t!363231 l!15167))))))))

(declare-fun b!4851471 () Bool)

(assert (=> b!4851471 (= e!3032856 (noDuplicateKeys!2612 (t!363231 (t!363231 l!15167))))))

(assert (= (and d!1557407 (not res!2070826)) b!4851470))

(assert (= (and b!4851470 res!2070827) b!4851471))

(declare-fun m!5849978 () Bool)

(assert (=> b!4851470 m!5849978))

(declare-fun m!5849980 () Bool)

(assert (=> b!4851471 m!5849980))

(assert (=> b!4851456 d!1557407))

(declare-fun d!1557413 () Bool)

(declare-fun res!2070828 () Bool)

(declare-fun e!3032857 () Bool)

(assert (=> d!1557413 (=> res!2070828 e!3032857)))

(assert (=> d!1557413 (= res!2070828 (not ((_ is Cons!55611) l!15167)))))

(assert (=> d!1557413 (= (noDuplicateKeys!2612 l!15167) e!3032857)))

(declare-fun b!4851472 () Bool)

(declare-fun e!3032858 () Bool)

(assert (=> b!4851472 (= e!3032857 e!3032858)))

(declare-fun res!2070829 () Bool)

(assert (=> b!4851472 (=> (not res!2070829) (not e!3032858))))

(assert (=> b!4851472 (= res!2070829 (not (containsKey!4722 (t!363231 l!15167) (_1!32972 (h!62048 l!15167)))))))

(declare-fun b!4851473 () Bool)

(assert (=> b!4851473 (= e!3032858 (noDuplicateKeys!2612 (t!363231 l!15167)))))

(assert (= (and d!1557413 (not res!2070828)) b!4851472))

(assert (= (and b!4851472 res!2070829) b!4851473))

(declare-fun m!5849982 () Bool)

(assert (=> b!4851472 m!5849982))

(assert (=> b!4851473 m!5849970))

(assert (=> start!506296 d!1557413))

(declare-fun d!1557415 () Bool)

(declare-fun isEmpty!29761 (Option!13717) Bool)

(assert (=> d!1557415 (= (isDefined!10807 (getPair!1120 l!15167 key!6935)) (not (isEmpty!29761 (getPair!1120 l!15167 key!6935))))))

(declare-fun bs!1172988 () Bool)

(assert (= bs!1172988 d!1557415))

(assert (=> bs!1172988 m!5849966))

(declare-fun m!5849986 () Bool)

(assert (=> bs!1172988 m!5849986))

(assert (=> b!4851454 d!1557415))

(declare-fun b!4851514 () Bool)

(declare-fun e!3032888 () Bool)

(declare-fun lt!1990064 () Option!13717)

(declare-fun contains!19278 (List!55735 tuple2!59356) Bool)

(declare-fun get!19083 (Option!13717) tuple2!59356)

(assert (=> b!4851514 (= e!3032888 (contains!19278 l!15167 (get!19083 lt!1990064)))))

(declare-fun b!4851515 () Bool)

(declare-fun e!3032884 () Option!13717)

(assert (=> b!4851515 (= e!3032884 (Some!13716 (h!62048 l!15167)))))

(declare-fun b!4851517 () Bool)

(declare-fun e!3032885 () Option!13717)

(assert (=> b!4851517 (= e!3032885 None!13716)))

(declare-fun b!4851518 () Bool)

(assert (=> b!4851518 (= e!3032885 (getPair!1120 (t!363231 l!15167) key!6935))))

(declare-fun b!4851519 () Bool)

(assert (=> b!4851519 (= e!3032884 e!3032885)))

(declare-fun c!825589 () Bool)

(assert (=> b!4851519 (= c!825589 ((_ is Cons!55611) l!15167))))

(declare-fun b!4851520 () Bool)

(declare-fun e!3032887 () Bool)

(assert (=> b!4851520 (= e!3032887 (not (containsKey!4722 l!15167 key!6935)))))

(declare-fun b!4851521 () Bool)

(declare-fun e!3032886 () Bool)

(assert (=> b!4851521 (= e!3032886 e!3032888)))

(declare-fun res!2070852 () Bool)

(assert (=> b!4851521 (=> (not res!2070852) (not e!3032888))))

(assert (=> b!4851521 (= res!2070852 (isDefined!10807 lt!1990064))))

(declare-fun b!4851516 () Bool)

(declare-fun res!2070853 () Bool)

(assert (=> b!4851516 (=> (not res!2070853) (not e!3032888))))

(assert (=> b!4851516 (= res!2070853 (= (_1!32972 (get!19083 lt!1990064)) key!6935))))

(declare-fun d!1557419 () Bool)

(assert (=> d!1557419 e!3032886))

(declare-fun res!2070851 () Bool)

(assert (=> d!1557419 (=> res!2070851 e!3032886)))

(assert (=> d!1557419 (= res!2070851 e!3032887)))

(declare-fun res!2070850 () Bool)

(assert (=> d!1557419 (=> (not res!2070850) (not e!3032887))))

(assert (=> d!1557419 (= res!2070850 (isEmpty!29761 lt!1990064))))

(assert (=> d!1557419 (= lt!1990064 e!3032884)))

(declare-fun c!825590 () Bool)

(assert (=> d!1557419 (= c!825590 (and ((_ is Cons!55611) l!15167) (= (_1!32972 (h!62048 l!15167)) key!6935)))))

(assert (=> d!1557419 (noDuplicateKeys!2612 l!15167)))

(assert (=> d!1557419 (= (getPair!1120 l!15167 key!6935) lt!1990064)))

(assert (= (and d!1557419 c!825590) b!4851515))

(assert (= (and d!1557419 (not c!825590)) b!4851519))

(assert (= (and b!4851519 c!825589) b!4851518))

(assert (= (and b!4851519 (not c!825589)) b!4851517))

(assert (= (and d!1557419 res!2070850) b!4851520))

(assert (= (and d!1557419 (not res!2070851)) b!4851521))

(assert (= (and b!4851521 res!2070852) b!4851516))

(assert (= (and b!4851516 res!2070853) b!4851514))

(declare-fun m!5850000 () Bool)

(assert (=> d!1557419 m!5850000))

(assert (=> d!1557419 m!5849964))

(declare-fun m!5850002 () Bool)

(assert (=> b!4851520 m!5850002))

(declare-fun m!5850004 () Bool)

(assert (=> b!4851518 m!5850004))

(declare-fun m!5850006 () Bool)

(assert (=> b!4851514 m!5850006))

(assert (=> b!4851514 m!5850006))

(declare-fun m!5850008 () Bool)

(assert (=> b!4851514 m!5850008))

(declare-fun m!5850010 () Bool)

(assert (=> b!4851521 m!5850010))

(assert (=> b!4851516 m!5850006))

(assert (=> b!4851454 d!1557419))

(declare-fun e!3032894 () Bool)

(declare-fun tp!1364920 () Bool)

(declare-fun b!4851531 () Bool)

(assert (=> b!4851531 (= e!3032894 (and tp_is_empty!35289 tp_is_empty!35291 tp!1364920))))

(assert (=> b!4851457 (= tp!1364914 e!3032894)))

(assert (= (and b!4851457 ((_ is Cons!55611) (t!363231 l!15167))) b!4851531))

(check-sat (not b!4851520) (not b!4851518) (not b!4851516) (not b!4851473) (not b!4851471) (not b!4851470) tp_is_empty!35291 (not b!4851472) (not b!4851514) (not b!4851521) tp_is_empty!35289 (not d!1557415) (not b!4851531) (not d!1557419))
(check-sat)
