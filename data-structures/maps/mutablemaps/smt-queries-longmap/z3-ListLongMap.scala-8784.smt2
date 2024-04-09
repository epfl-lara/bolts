; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106904 () Bool)

(assert start!106904)

(declare-fun b!1267777 () Bool)

(declare-fun e!722294 () Bool)

(declare-datatypes ((B!2098 0))(
  ( (B!2099 (val!16384 Int)) )
))
(declare-datatypes ((tuple2!21436 0))(
  ( (tuple2!21437 (_1!10728 (_ BitVec 64)) (_2!10728 B!2098)) )
))
(declare-datatypes ((List!28551 0))(
  ( (Nil!28548) (Cons!28547 (h!29756 tuple2!21436) (t!42087 List!28551)) )
))
(declare-fun l!874 () List!28551)

(declare-fun key!235 () (_ BitVec 64))

(declare-fun removeStrictlySorted!172 (List!28551 (_ BitVec 64)) List!28551)

(assert (=> b!1267777 (= e!722294 (not (= (removeStrictlySorted!172 l!874 key!235) l!874)))))

(declare-fun res!843997 () Bool)

(assert (=> start!106904 (=> (not res!843997) (not e!722294))))

(declare-fun isStrictlySorted!829 (List!28551) Bool)

(assert (=> start!106904 (= res!843997 (isStrictlySorted!829 l!874))))

(assert (=> start!106904 e!722294))

(declare-fun e!722295 () Bool)

(assert (=> start!106904 e!722295))

(assert (=> start!106904 true))

(declare-fun b!1267775 () Bool)

(declare-fun res!843998 () Bool)

(assert (=> b!1267775 (=> (not res!843998) (not e!722294))))

(declare-fun containsKey!690 (List!28551 (_ BitVec 64)) Bool)

(assert (=> b!1267775 (= res!843998 (not (containsKey!690 l!874 key!235)))))

(declare-fun b!1267776 () Bool)

(declare-fun res!843999 () Bool)

(assert (=> b!1267776 (=> (not res!843999) (not e!722294))))

(get-info :version)

(assert (=> b!1267776 (= res!843999 (not ((_ is Cons!28547) l!874)))))

(declare-fun b!1267778 () Bool)

(declare-fun tp_is_empty!32619 () Bool)

(declare-fun tp!96665 () Bool)

(assert (=> b!1267778 (= e!722295 (and tp_is_empty!32619 tp!96665))))

(assert (= (and start!106904 res!843997) b!1267775))

(assert (= (and b!1267775 res!843998) b!1267776))

(assert (= (and b!1267776 res!843999) b!1267777))

(assert (= (and start!106904 ((_ is Cons!28547) l!874)) b!1267778))

(declare-fun m!1166905 () Bool)

(assert (=> b!1267777 m!1166905))

(declare-fun m!1166907 () Bool)

(assert (=> start!106904 m!1166907))

(declare-fun m!1166909 () Bool)

(assert (=> b!1267775 m!1166909))

(check-sat tp_is_empty!32619 (not b!1267777) (not b!1267775) (not b!1267778) (not start!106904))
(check-sat)
(get-model)

(declare-fun d!139527 () Bool)

(declare-fun res!844017 () Bool)

(declare-fun e!722310 () Bool)

(assert (=> d!139527 (=> res!844017 e!722310)))

(assert (=> d!139527 (= res!844017 (or ((_ is Nil!28548) l!874) ((_ is Nil!28548) (t!42087 l!874))))))

(assert (=> d!139527 (= (isStrictlySorted!829 l!874) e!722310)))

(declare-fun b!1267799 () Bool)

(declare-fun e!722311 () Bool)

(assert (=> b!1267799 (= e!722310 e!722311)))

(declare-fun res!844018 () Bool)

(assert (=> b!1267799 (=> (not res!844018) (not e!722311))))

(assert (=> b!1267799 (= res!844018 (bvslt (_1!10728 (h!29756 l!874)) (_1!10728 (h!29756 (t!42087 l!874)))))))

(declare-fun b!1267800 () Bool)

(assert (=> b!1267800 (= e!722311 (isStrictlySorted!829 (t!42087 l!874)))))

(assert (= (and d!139527 (not res!844017)) b!1267799))

(assert (= (and b!1267799 res!844018) b!1267800))

(declare-fun m!1166917 () Bool)

(assert (=> b!1267800 m!1166917))

(assert (=> start!106904 d!139527))

(declare-fun b!1267838 () Bool)

(declare-fun e!722341 () List!28551)

(declare-fun e!722340 () List!28551)

(assert (=> b!1267838 (= e!722341 e!722340)))

(declare-fun c!123556 () Bool)

(assert (=> b!1267838 (= c!123556 (and ((_ is Cons!28547) l!874) (not (= (_1!10728 (h!29756 l!874)) key!235))))))

(declare-fun b!1267839 () Bool)

(assert (=> b!1267839 (= e!722341 (t!42087 l!874))))

(declare-fun b!1267840 () Bool)

(declare-fun $colon$colon!655 (List!28551 tuple2!21436) List!28551)

(assert (=> b!1267840 (= e!722340 ($colon$colon!655 (removeStrictlySorted!172 (t!42087 l!874) key!235) (h!29756 l!874)))))

(declare-fun b!1267841 () Bool)

(assert (=> b!1267841 (= e!722340 Nil!28548)))

(declare-fun b!1267842 () Bool)

(declare-fun e!722339 () Bool)

(declare-fun lt!574315 () List!28551)

(assert (=> b!1267842 (= e!722339 (not (containsKey!690 lt!574315 key!235)))))

(declare-fun d!139533 () Bool)

(assert (=> d!139533 e!722339))

(declare-fun res!844036 () Bool)

(assert (=> d!139533 (=> (not res!844036) (not e!722339))))

(assert (=> d!139533 (= res!844036 (isStrictlySorted!829 lt!574315))))

(assert (=> d!139533 (= lt!574315 e!722341)))

(declare-fun c!123557 () Bool)

(assert (=> d!139533 (= c!123557 (and ((_ is Cons!28547) l!874) (= (_1!10728 (h!29756 l!874)) key!235)))))

(assert (=> d!139533 (isStrictlySorted!829 l!874)))

(assert (=> d!139533 (= (removeStrictlySorted!172 l!874 key!235) lt!574315)))

(assert (= (and d!139533 c!123557) b!1267839))

(assert (= (and d!139533 (not c!123557)) b!1267838))

(assert (= (and b!1267838 c!123556) b!1267840))

(assert (= (and b!1267838 (not c!123556)) b!1267841))

(assert (= (and d!139533 res!844036) b!1267842))

(declare-fun m!1166931 () Bool)

(assert (=> b!1267840 m!1166931))

(assert (=> b!1267840 m!1166931))

(declare-fun m!1166933 () Bool)

(assert (=> b!1267840 m!1166933))

(declare-fun m!1166935 () Bool)

(assert (=> b!1267842 m!1166935))

(declare-fun m!1166937 () Bool)

(assert (=> d!139533 m!1166937))

(assert (=> d!139533 m!1166907))

(assert (=> b!1267777 d!139533))

(declare-fun d!139541 () Bool)

(declare-fun res!844050 () Bool)

(declare-fun e!722361 () Bool)

(assert (=> d!139541 (=> res!844050 e!722361)))

(assert (=> d!139541 (= res!844050 (and ((_ is Cons!28547) l!874) (= (_1!10728 (h!29756 l!874)) key!235)))))

(assert (=> d!139541 (= (containsKey!690 l!874 key!235) e!722361)))

(declare-fun b!1267868 () Bool)

(declare-fun e!722362 () Bool)

(assert (=> b!1267868 (= e!722361 e!722362)))

(declare-fun res!844051 () Bool)

(assert (=> b!1267868 (=> (not res!844051) (not e!722362))))

(assert (=> b!1267868 (= res!844051 (and (or (not ((_ is Cons!28547) l!874)) (bvsle (_1!10728 (h!29756 l!874)) key!235)) ((_ is Cons!28547) l!874) (bvslt (_1!10728 (h!29756 l!874)) key!235)))))

(declare-fun b!1267869 () Bool)

(assert (=> b!1267869 (= e!722362 (containsKey!690 (t!42087 l!874) key!235))))

(assert (= (and d!139541 (not res!844050)) b!1267868))

(assert (= (and b!1267868 res!844051) b!1267869))

(declare-fun m!1166941 () Bool)

(assert (=> b!1267869 m!1166941))

(assert (=> b!1267775 d!139541))

(declare-fun b!1267884 () Bool)

(declare-fun e!722371 () Bool)

(declare-fun tp!96675 () Bool)

(assert (=> b!1267884 (= e!722371 (and tp_is_empty!32619 tp!96675))))

(assert (=> b!1267778 (= tp!96665 e!722371)))

(assert (= (and b!1267778 ((_ is Cons!28547) (t!42087 l!874))) b!1267884))

(check-sat tp_is_empty!32619 (not b!1267869) (not b!1267800) (not d!139533) (not b!1267840) (not b!1267842) (not b!1267884))
(check-sat)
