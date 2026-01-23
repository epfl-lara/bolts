; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!506276 () Bool)

(assert start!506276)

(declare-fun res!2070745 () Bool)

(declare-fun e!3032770 () Bool)

(assert (=> start!506276 (=> (not res!2070745) (not e!3032770))))

(declare-datatypes ((K!17424 0))(
  ( (K!17425 (val!22245 Int)) )
))
(declare-datatypes ((V!17670 0))(
  ( (V!17671 (val!22246 Int)) )
))
(declare-datatypes ((tuple2!59352 0))(
  ( (tuple2!59353 (_1!32970 K!17424) (_2!32970 V!17670)) )
))
(declare-datatypes ((List!55733 0))(
  ( (Nil!55609) (Cons!55609 (h!62046 tuple2!59352) (t!363229 List!55733)) )
))
(declare-fun l!15167 () List!55733)

(declare-fun noDuplicateKeys!2610 (List!55733) Bool)

(assert (=> start!506276 (= res!2070745 (noDuplicateKeys!2610 l!15167))))

(assert (=> start!506276 e!3032770))

(declare-fun e!3032769 () Bool)

(assert (=> start!506276 e!3032769))

(declare-fun tp_is_empty!35281 () Bool)

(assert (=> start!506276 tp_is_empty!35281))

(declare-fun b!4851350 () Bool)

(declare-fun key!6935 () K!17424)

(declare-fun containsKey!4720 (List!55733 K!17424) Bool)

(assert (=> b!4851350 (= e!3032770 (not (containsKey!4720 l!15167 key!6935)))))

(declare-fun b!4851349 () Bool)

(declare-fun res!2070746 () Bool)

(assert (=> b!4851349 (=> (not res!2070746) (not e!3032770))))

(get-info :version)

(assert (=> b!4851349 (= res!2070746 (and ((_ is Cons!55609) l!15167) (= (_1!32970 (h!62046 l!15167)) key!6935)))))

(declare-fun tp_is_empty!35283 () Bool)

(declare-fun b!4851351 () Bool)

(declare-fun tp!1364902 () Bool)

(assert (=> b!4851351 (= e!3032769 (and tp_is_empty!35281 tp_is_empty!35283 tp!1364902))))

(declare-fun b!4851348 () Bool)

(declare-fun res!2070747 () Bool)

(assert (=> b!4851348 (=> (not res!2070747) (not e!3032770))))

(declare-datatypes ((Option!13715 0))(
  ( (None!13714) (Some!13714 (v!49508 tuple2!59352)) )
))
(declare-fun isDefined!10805 (Option!13715) Bool)

(declare-fun getPair!1118 (List!55733 K!17424) Option!13715)

(assert (=> b!4851348 (= res!2070747 (isDefined!10805 (getPair!1118 l!15167 key!6935)))))

(assert (= (and start!506276 res!2070745) b!4851348))

(assert (= (and b!4851348 res!2070747) b!4851349))

(assert (= (and b!4851349 res!2070746) b!4851350))

(assert (= (and start!506276 ((_ is Cons!55609) l!15167)) b!4851351))

(declare-fun m!5849912 () Bool)

(assert (=> start!506276 m!5849912))

(declare-fun m!5849914 () Bool)

(assert (=> b!4851350 m!5849914))

(declare-fun m!5849916 () Bool)

(assert (=> b!4851348 m!5849916))

(assert (=> b!4851348 m!5849916))

(declare-fun m!5849918 () Bool)

(assert (=> b!4851348 m!5849918))

(check-sat tp_is_empty!35283 (not b!4851348) (not start!506276) (not b!4851350) tp_is_empty!35281 (not b!4851351))
(check-sat)
(get-model)

(declare-fun d!1557388 () Bool)

(declare-fun isEmpty!29759 (Option!13715) Bool)

(assert (=> d!1557388 (= (isDefined!10805 (getPair!1118 l!15167 key!6935)) (not (isEmpty!29759 (getPair!1118 l!15167 key!6935))))))

(declare-fun bs!1172983 () Bool)

(assert (= bs!1172983 d!1557388))

(assert (=> bs!1172983 m!5849916))

(declare-fun m!5849920 () Bool)

(assert (=> bs!1172983 m!5849920))

(assert (=> b!4851348 d!1557388))

(declare-fun b!4851388 () Bool)

(declare-fun e!3032805 () Option!13715)

(declare-fun e!3032801 () Option!13715)

(assert (=> b!4851388 (= e!3032805 e!3032801)))

(declare-fun c!825576 () Bool)

(assert (=> b!4851388 (= c!825576 ((_ is Cons!55609) l!15167))))

(declare-fun d!1557392 () Bool)

(declare-fun e!3032804 () Bool)

(assert (=> d!1557392 e!3032804))

(declare-fun res!2070772 () Bool)

(assert (=> d!1557392 (=> res!2070772 e!3032804)))

(declare-fun e!3032799 () Bool)

(assert (=> d!1557392 (= res!2070772 e!3032799)))

(declare-fun res!2070770 () Bool)

(assert (=> d!1557392 (=> (not res!2070770) (not e!3032799))))

(declare-fun lt!1990057 () Option!13715)

(assert (=> d!1557392 (= res!2070770 (isEmpty!29759 lt!1990057))))

(assert (=> d!1557392 (= lt!1990057 e!3032805)))

(declare-fun c!825575 () Bool)

(assert (=> d!1557392 (= c!825575 (and ((_ is Cons!55609) l!15167) (= (_1!32970 (h!62046 l!15167)) key!6935)))))

(assert (=> d!1557392 (noDuplicateKeys!2610 l!15167)))

(assert (=> d!1557392 (= (getPair!1118 l!15167 key!6935) lt!1990057)))

(declare-fun b!4851389 () Bool)

(assert (=> b!4851389 (= e!3032799 (not (containsKey!4720 l!15167 key!6935)))))

(declare-fun b!4851390 () Bool)

(assert (=> b!4851390 (= e!3032805 (Some!13714 (h!62046 l!15167)))))

(declare-fun b!4851391 () Bool)

(assert (=> b!4851391 (= e!3032801 (getPair!1118 (t!363229 l!15167) key!6935))))

(declare-fun b!4851394 () Bool)

(declare-fun e!3032800 () Bool)

(declare-fun contains!19276 (List!55733 tuple2!59352) Bool)

(declare-fun get!19080 (Option!13715) tuple2!59352)

(assert (=> b!4851394 (= e!3032800 (contains!19276 l!15167 (get!19080 lt!1990057)))))

(declare-fun b!4851395 () Bool)

(assert (=> b!4851395 (= e!3032804 e!3032800)))

(declare-fun res!2070771 () Bool)

(assert (=> b!4851395 (=> (not res!2070771) (not e!3032800))))

(assert (=> b!4851395 (= res!2070771 (isDefined!10805 lt!1990057))))

(declare-fun b!4851396 () Bool)

(assert (=> b!4851396 (= e!3032801 None!13714)))

(declare-fun b!4851397 () Bool)

(declare-fun res!2070773 () Bool)

(assert (=> b!4851397 (=> (not res!2070773) (not e!3032800))))

(assert (=> b!4851397 (= res!2070773 (= (_1!32970 (get!19080 lt!1990057)) key!6935))))

(assert (= (and d!1557392 c!825575) b!4851390))

(assert (= (and d!1557392 (not c!825575)) b!4851388))

(assert (= (and b!4851388 c!825576) b!4851391))

(assert (= (and b!4851388 (not c!825576)) b!4851396))

(assert (= (and d!1557392 res!2070770) b!4851389))

(assert (= (and d!1557392 (not res!2070772)) b!4851395))

(assert (= (and b!4851395 res!2070771) b!4851397))

(assert (= (and b!4851397 res!2070773) b!4851394))

(declare-fun m!5849930 () Bool)

(assert (=> b!4851397 m!5849930))

(declare-fun m!5849932 () Bool)

(assert (=> b!4851395 m!5849932))

(declare-fun m!5849934 () Bool)

(assert (=> b!4851391 m!5849934))

(assert (=> b!4851394 m!5849930))

(assert (=> b!4851394 m!5849930))

(declare-fun m!5849936 () Bool)

(assert (=> b!4851394 m!5849936))

(declare-fun m!5849938 () Bool)

(assert (=> d!1557392 m!5849938))

(assert (=> d!1557392 m!5849912))

(assert (=> b!4851389 m!5849914))

(assert (=> b!4851348 d!1557392))

(declare-fun d!1557400 () Bool)

(declare-fun res!2070788 () Bool)

(declare-fun e!3032817 () Bool)

(assert (=> d!1557400 (=> res!2070788 e!3032817)))

(assert (=> d!1557400 (= res!2070788 (and ((_ is Cons!55609) l!15167) (= (_1!32970 (h!62046 l!15167)) key!6935)))))

(assert (=> d!1557400 (= (containsKey!4720 l!15167 key!6935) e!3032817)))

(declare-fun b!4851416 () Bool)

(declare-fun e!3032818 () Bool)

(assert (=> b!4851416 (= e!3032817 e!3032818)))

(declare-fun res!2070789 () Bool)

(assert (=> b!4851416 (=> (not res!2070789) (not e!3032818))))

(assert (=> b!4851416 (= res!2070789 ((_ is Cons!55609) l!15167))))

(declare-fun b!4851417 () Bool)

(assert (=> b!4851417 (= e!3032818 (containsKey!4720 (t!363229 l!15167) key!6935))))

(assert (= (and d!1557400 (not res!2070788)) b!4851416))

(assert (= (and b!4851416 res!2070789) b!4851417))

(declare-fun m!5849940 () Bool)

(assert (=> b!4851417 m!5849940))

(assert (=> b!4851350 d!1557400))

(declare-fun d!1557402 () Bool)

(declare-fun res!2070794 () Bool)

(declare-fun e!3032826 () Bool)

(assert (=> d!1557402 (=> res!2070794 e!3032826)))

(assert (=> d!1557402 (= res!2070794 (not ((_ is Cons!55609) l!15167)))))

(assert (=> d!1557402 (= (noDuplicateKeys!2610 l!15167) e!3032826)))

(declare-fun b!4851427 () Bool)

(declare-fun e!3032827 () Bool)

(assert (=> b!4851427 (= e!3032826 e!3032827)))

(declare-fun res!2070795 () Bool)

(assert (=> b!4851427 (=> (not res!2070795) (not e!3032827))))

(assert (=> b!4851427 (= res!2070795 (not (containsKey!4720 (t!363229 l!15167) (_1!32970 (h!62046 l!15167)))))))

(declare-fun b!4851428 () Bool)

(assert (=> b!4851428 (= e!3032827 (noDuplicateKeys!2610 (t!363229 l!15167)))))

(assert (= (and d!1557402 (not res!2070794)) b!4851427))

(assert (= (and b!4851427 res!2070795) b!4851428))

(declare-fun m!5849952 () Bool)

(assert (=> b!4851427 m!5849952))

(declare-fun m!5849954 () Bool)

(assert (=> b!4851428 m!5849954))

(assert (=> start!506276 d!1557402))

(declare-fun b!4851433 () Bool)

(declare-fun tp!1364908 () Bool)

(declare-fun e!3032830 () Bool)

(assert (=> b!4851433 (= e!3032830 (and tp_is_empty!35281 tp_is_empty!35283 tp!1364908))))

(assert (=> b!4851351 (= tp!1364902 e!3032830)))

(assert (= (and b!4851351 ((_ is Cons!55609) (t!363229 l!15167))) b!4851433))

(check-sat (not b!4851395) tp_is_empty!35281 (not b!4851427) (not b!4851417) (not b!4851391) (not b!4851389) (not b!4851394) (not d!1557388) (not d!1557392) tp_is_empty!35283 (not b!4851433) (not b!4851397) (not b!4851428))
(check-sat)
