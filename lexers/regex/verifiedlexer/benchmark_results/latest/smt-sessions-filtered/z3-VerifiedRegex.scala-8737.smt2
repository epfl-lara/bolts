; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!466292 () Bool)

(assert start!466292)

(declare-fun b!4638822 () Bool)

(declare-fun e!2893760 () Bool)

(declare-fun e!2893758 () Bool)

(assert (=> b!4638822 (= e!2893760 (not e!2893758))))

(declare-fun res!1947803 () Bool)

(assert (=> b!4638822 (=> res!1947803 e!2893758)))

(declare-datatypes ((K!13090 0))(
  ( (K!13091 (val!18743 Int)) )
))
(declare-datatypes ((V!13336 0))(
  ( (V!13337 (val!18744 Int)) )
))
(declare-datatypes ((tuple2!52750 0))(
  ( (tuple2!52751 (_1!29669 K!13090) (_2!29669 V!13336)) )
))
(declare-datatypes ((List!51848 0))(
  ( (Nil!51724) (Cons!51724 (h!57824 tuple2!52750) (t!358928 List!51848)) )
))
(declare-fun oldBucket!40 () List!51848)

(declare-fun key!4968 () K!13090)

(get-info :version)

(assert (=> b!4638822 (= res!1947803 (or (not ((_ is Cons!51724) oldBucket!40)) (not (= (_1!29669 (h!57824 oldBucket!40)) key!4968))))))

(declare-fun e!2893757 () Bool)

(assert (=> b!4638822 e!2893757))

(declare-fun res!1947790 () Bool)

(assert (=> b!4638822 (=> (not res!1947790) (not e!2893757))))

(declare-datatypes ((ListMap!4421 0))(
  ( (ListMap!4422 (toList!5097 List!51848)) )
))
(declare-fun lt!1801565 () ListMap!4421)

(declare-fun lt!1801554 () ListMap!4421)

(declare-fun addToMapMapFromBucket!1035 (List!51848 ListMap!4421) ListMap!4421)

(assert (=> b!4638822 (= res!1947790 (= lt!1801554 (addToMapMapFromBucket!1035 oldBucket!40 lt!1801565)))))

(declare-datatypes ((tuple2!52752 0))(
  ( (tuple2!52753 (_1!29670 (_ BitVec 64)) (_2!29670 List!51848)) )
))
(declare-datatypes ((List!51849 0))(
  ( (Nil!51725) (Cons!51725 (h!57825 tuple2!52752) (t!358929 List!51849)) )
))
(declare-fun extractMap!1632 (List!51849) ListMap!4421)

(assert (=> b!4638822 (= lt!1801565 (extractMap!1632 Nil!51725))))

(assert (=> b!4638822 true))

(declare-fun b!4638823 () Bool)

(declare-fun e!2893754 () Bool)

(declare-fun e!2893762 () Bool)

(assert (=> b!4638823 (= e!2893754 e!2893762)))

(declare-fun res!1947791 () Bool)

(assert (=> b!4638823 (=> res!1947791 e!2893762)))

(declare-fun lt!1801555 () ListMap!4421)

(declare-fun newBucket!224 () List!51848)

(assert (=> b!4638823 (= res!1947791 (not (= lt!1801555 (addToMapMapFromBucket!1035 newBucket!224 (ListMap!4422 Nil!51724)))))))

(declare-fun lt!1801560 () List!51848)

(assert (=> b!4638823 (= lt!1801555 (addToMapMapFromBucket!1035 lt!1801560 (ListMap!4422 Nil!51724)))))

(declare-fun b!4638824 () Bool)

(declare-fun e!2893753 () Bool)

(assert (=> b!4638824 (= e!2893758 e!2893753)))

(declare-fun res!1947797 () Bool)

(assert (=> b!4638824 (=> res!1947797 e!2893753)))

(assert (=> b!4638824 (= res!1947797 (not (= lt!1801560 newBucket!224)))))

(declare-fun tail!8203 (List!51848) List!51848)

(assert (=> b!4638824 (= lt!1801560 (tail!8203 oldBucket!40))))

(declare-fun b!4638825 () Bool)

(declare-fun tp_is_empty!29597 () Bool)

(declare-fun tp_is_empty!29599 () Bool)

(declare-fun e!2893752 () Bool)

(declare-fun tp!1342727 () Bool)

(assert (=> b!4638825 (= e!2893752 (and tp_is_empty!29597 tp_is_empty!29599 tp!1342727))))

(declare-fun b!4638826 () Bool)

(declare-fun res!1947795 () Bool)

(declare-fun e!2893759 () Bool)

(assert (=> b!4638826 (=> (not res!1947795) (not e!2893759))))

(declare-fun noDuplicateKeys!1576 (List!51848) Bool)

(assert (=> b!4638826 (= res!1947795 (noDuplicateKeys!1576 newBucket!224))))

(declare-fun b!4638827 () Bool)

(declare-fun e!2893751 () Bool)

(declare-fun e!2893761 () Bool)

(assert (=> b!4638827 (= e!2893751 e!2893761)))

(declare-fun res!1947792 () Bool)

(assert (=> b!4638827 (=> res!1947792 e!2893761)))

(declare-fun lt!1801563 () ListMap!4421)

(declare-fun -!594 (ListMap!4421 K!13090) ListMap!4421)

(assert (=> b!4638827 (= res!1947792 (not (= (-!594 lt!1801563 key!4968) lt!1801555)))))

(declare-fun +!1930 (ListMap!4421 tuple2!52750) ListMap!4421)

(assert (=> b!4638827 (= (-!594 (+!1930 lt!1801555 (tuple2!52751 key!4968 (_2!29669 (h!57824 oldBucket!40)))) key!4968) lt!1801555)))

(declare-datatypes ((Unit!115015 0))(
  ( (Unit!115016) )
))
(declare-fun lt!1801562 () Unit!115015)

(declare-fun addThenRemoveForNewKeyIsSame!25 (ListMap!4421 K!13090 V!13336) Unit!115015)

(assert (=> b!4638827 (= lt!1801562 (addThenRemoveForNewKeyIsSame!25 lt!1801555 key!4968 (_2!29669 (h!57824 oldBucket!40))))))

(declare-fun b!4638829 () Bool)

(declare-fun res!1947805 () Bool)

(declare-fun e!2893756 () Bool)

(assert (=> b!4638829 (=> res!1947805 e!2893756)))

(declare-fun containsKey!2596 (List!51848 K!13090) Bool)

(assert (=> b!4638829 (= res!1947805 (containsKey!2596 lt!1801560 key!4968))))

(declare-fun e!2893755 () Bool)

(declare-fun b!4638830 () Bool)

(declare-fun tp!1342726 () Bool)

(assert (=> b!4638830 (= e!2893755 (and tp_is_empty!29597 tp_is_empty!29599 tp!1342726))))

(declare-fun b!4638831 () Bool)

(declare-fun res!1947799 () Bool)

(assert (=> b!4638831 (=> res!1947799 e!2893756)))

(declare-fun lt!1801558 () ListMap!4421)

(assert (=> b!4638831 (= res!1947799 (not (= lt!1801555 lt!1801558)))))

(declare-fun b!4638832 () Bool)

(declare-fun res!1947793 () Bool)

(assert (=> b!4638832 (=> (not res!1947793) (not e!2893759))))

(declare-fun removePairForKey!1199 (List!51848 K!13090) List!51848)

(assert (=> b!4638832 (= res!1947793 (= (removePairForKey!1199 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4638833 () Bool)

(assert (=> b!4638833 (= e!2893757 (= lt!1801565 (ListMap!4422 Nil!51724)))))

(declare-fun b!4638834 () Bool)

(assert (=> b!4638834 (= e!2893756 e!2893751)))

(declare-fun res!1947801 () Bool)

(assert (=> b!4638834 (=> res!1947801 e!2893751)))

(declare-fun contains!14835 (ListMap!4421 K!13090) Bool)

(assert (=> b!4638834 (= res!1947801 (contains!14835 lt!1801555 key!4968))))

(assert (=> b!4638834 (not (contains!14835 lt!1801558 key!4968))))

(declare-datatypes ((Hashable!5973 0))(
  ( (HashableExt!5972 (__x!31676 Int)) )
))
(declare-fun hashF!1389 () Hashable!5973)

(declare-fun lt!1801557 () Unit!115015)

(declare-fun lt!1801556 () List!51849)

(declare-datatypes ((ListLongMap!3667 0))(
  ( (ListLongMap!3668 (toList!5098 List!51849)) )
))
(declare-fun lemmaNotInItsHashBucketThenNotInMap!368 (ListLongMap!3667 K!13090 Hashable!5973) Unit!115015)

(assert (=> b!4638834 (= lt!1801557 (lemmaNotInItsHashBucketThenNotInMap!368 (ListLongMap!3668 lt!1801556) key!4968 hashF!1389))))

(declare-fun b!4638835 () Bool)

(assert (=> b!4638835 (= e!2893762 e!2893756)))

(declare-fun res!1947802 () Bool)

(assert (=> b!4638835 (=> res!1947802 e!2893756)))

(declare-fun lt!1801564 () ListMap!4421)

(declare-fun eq!877 (ListMap!4421 ListMap!4421) Bool)

(assert (=> b!4638835 (= res!1947802 (not (eq!877 lt!1801563 lt!1801564)))))

(assert (=> b!4638835 (= lt!1801564 (addToMapMapFromBucket!1035 oldBucket!40 (ListMap!4422 Nil!51724)))))

(assert (=> b!4638835 (= lt!1801563 (+!1930 lt!1801555 (h!57824 oldBucket!40)))))

(declare-fun lt!1801559 () tuple2!52750)

(assert (=> b!4638835 (eq!877 (addToMapMapFromBucket!1035 (Cons!51724 lt!1801559 lt!1801560) (ListMap!4422 Nil!51724)) (+!1930 lt!1801555 lt!1801559))))

(declare-fun lt!1801561 () Unit!115015)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!128 (tuple2!52750 List!51848 ListMap!4421) Unit!115015)

(assert (=> b!4638835 (= lt!1801561 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!128 lt!1801559 lt!1801560 (ListMap!4422 Nil!51724)))))

(declare-fun head!9696 (List!51848) tuple2!52750)

(assert (=> b!4638835 (= lt!1801559 (head!9696 oldBucket!40))))

(declare-fun res!1947798 () Bool)

(assert (=> start!466292 (=> (not res!1947798) (not e!2893759))))

(assert (=> start!466292 (= res!1947798 (noDuplicateKeys!1576 oldBucket!40))))

(assert (=> start!466292 e!2893759))

(assert (=> start!466292 true))

(assert (=> start!466292 e!2893755))

(assert (=> start!466292 tp_is_empty!29597))

(assert (=> start!466292 e!2893752))

(declare-fun b!4638828 () Bool)

(declare-fun res!1947804 () Bool)

(assert (=> b!4638828 (=> (not res!1947804) (not e!2893760))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun hash!3660 (Hashable!5973 K!13090) (_ BitVec 64))

(assert (=> b!4638828 (= res!1947804 (= (hash!3660 hashF!1389 key!4968) hash!414))))

(declare-fun b!4638836 () Bool)

(declare-fun res!1947796 () Bool)

(assert (=> b!4638836 (=> (not res!1947796) (not e!2893759))))

(declare-fun allKeysSameHash!1430 (List!51848 (_ BitVec 64) Hashable!5973) Bool)

(assert (=> b!4638836 (= res!1947796 (allKeysSameHash!1430 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4638837 () Bool)

(declare-fun res!1947794 () Bool)

(assert (=> b!4638837 (=> (not res!1947794) (not e!2893760))))

(assert (=> b!4638837 (= res!1947794 (allKeysSameHash!1430 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4638838 () Bool)

(assert (=> b!4638838 (= e!2893753 e!2893754)))

(declare-fun res!1947806 () Bool)

(assert (=> b!4638838 (=> res!1947806 e!2893754)))

(assert (=> b!4638838 (= res!1947806 (not (= lt!1801558 (extractMap!1632 (Cons!51725 (tuple2!52753 hash!414 newBucket!224) Nil!51725)))))))

(assert (=> b!4638838 (= lt!1801558 (extractMap!1632 lt!1801556))))

(assert (=> b!4638838 (= lt!1801556 (Cons!51725 (tuple2!52753 hash!414 lt!1801560) Nil!51725))))

(declare-fun b!4638839 () Bool)

(assert (=> b!4638839 (= e!2893761 (= lt!1801554 lt!1801564))))

(declare-fun b!4638840 () Bool)

(assert (=> b!4638840 (= e!2893759 e!2893760)))

(declare-fun res!1947800 () Bool)

(assert (=> b!4638840 (=> (not res!1947800) (not e!2893760))))

(assert (=> b!4638840 (= res!1947800 (contains!14835 lt!1801554 key!4968))))

(assert (=> b!4638840 (= lt!1801554 (extractMap!1632 (Cons!51725 (tuple2!52753 hash!414 oldBucket!40) Nil!51725)))))

(assert (= (and start!466292 res!1947798) b!4638826))

(assert (= (and b!4638826 res!1947795) b!4638832))

(assert (= (and b!4638832 res!1947793) b!4638836))

(assert (= (and b!4638836 res!1947796) b!4638840))

(assert (= (and b!4638840 res!1947800) b!4638828))

(assert (= (and b!4638828 res!1947804) b!4638837))

(assert (= (and b!4638837 res!1947794) b!4638822))

(assert (= (and b!4638822 res!1947790) b!4638833))

(assert (= (and b!4638822 (not res!1947803)) b!4638824))

(assert (= (and b!4638824 (not res!1947797)) b!4638838))

(assert (= (and b!4638838 (not res!1947806)) b!4638823))

(assert (= (and b!4638823 (not res!1947791)) b!4638835))

(assert (= (and b!4638835 (not res!1947802)) b!4638829))

(assert (= (and b!4638829 (not res!1947805)) b!4638831))

(assert (= (and b!4638831 (not res!1947799)) b!4638834))

(assert (= (and b!4638834 (not res!1947801)) b!4638827))

(assert (= (and b!4638827 (not res!1947792)) b!4638839))

(assert (= (and start!466292 ((_ is Cons!51724) oldBucket!40)) b!4638830))

(assert (= (and start!466292 ((_ is Cons!51724) newBucket!224)) b!4638825))

(declare-fun m!5497671 () Bool)

(assert (=> start!466292 m!5497671))

(declare-fun m!5497673 () Bool)

(assert (=> b!4638827 m!5497673))

(declare-fun m!5497675 () Bool)

(assert (=> b!4638827 m!5497675))

(assert (=> b!4638827 m!5497675))

(declare-fun m!5497677 () Bool)

(assert (=> b!4638827 m!5497677))

(declare-fun m!5497679 () Bool)

(assert (=> b!4638827 m!5497679))

(declare-fun m!5497681 () Bool)

(assert (=> b!4638823 m!5497681))

(declare-fun m!5497683 () Bool)

(assert (=> b!4638823 m!5497683))

(declare-fun m!5497685 () Bool)

(assert (=> b!4638836 m!5497685))

(declare-fun m!5497687 () Bool)

(assert (=> b!4638824 m!5497687))

(declare-fun m!5497689 () Bool)

(assert (=> b!4638826 m!5497689))

(declare-fun m!5497691 () Bool)

(assert (=> b!4638835 m!5497691))

(declare-fun m!5497693 () Bool)

(assert (=> b!4638835 m!5497693))

(declare-fun m!5497695 () Bool)

(assert (=> b!4638835 m!5497695))

(declare-fun m!5497697 () Bool)

(assert (=> b!4638835 m!5497697))

(declare-fun m!5497699 () Bool)

(assert (=> b!4638835 m!5497699))

(declare-fun m!5497701 () Bool)

(assert (=> b!4638835 m!5497701))

(assert (=> b!4638835 m!5497691))

(assert (=> b!4638835 m!5497693))

(declare-fun m!5497703 () Bool)

(assert (=> b!4638835 m!5497703))

(declare-fun m!5497705 () Bool)

(assert (=> b!4638835 m!5497705))

(declare-fun m!5497707 () Bool)

(assert (=> b!4638829 m!5497707))

(declare-fun m!5497709 () Bool)

(assert (=> b!4638834 m!5497709))

(declare-fun m!5497711 () Bool)

(assert (=> b!4638834 m!5497711))

(declare-fun m!5497713 () Bool)

(assert (=> b!4638834 m!5497713))

(declare-fun m!5497715 () Bool)

(assert (=> b!4638828 m!5497715))

(declare-fun m!5497717 () Bool)

(assert (=> b!4638832 m!5497717))

(declare-fun m!5497719 () Bool)

(assert (=> b!4638838 m!5497719))

(declare-fun m!5497721 () Bool)

(assert (=> b!4638838 m!5497721))

(declare-fun m!5497723 () Bool)

(assert (=> b!4638822 m!5497723))

(declare-fun m!5497725 () Bool)

(assert (=> b!4638822 m!5497725))

(declare-fun m!5497727 () Bool)

(assert (=> b!4638840 m!5497727))

(declare-fun m!5497729 () Bool)

(assert (=> b!4638840 m!5497729))

(declare-fun m!5497731 () Bool)

(assert (=> b!4638837 m!5497731))

(check-sat (not b!4638827) (not b!4638837) (not b!4638832) (not b!4638824) (not b!4638822) (not b!4638835) tp_is_empty!29597 (not b!4638840) (not b!4638826) (not b!4638828) (not b!4638823) tp_is_empty!29599 (not b!4638825) (not b!4638830) (not b!4638834) (not b!4638836) (not b!4638838) (not b!4638829) (not start!466292))
(check-sat)
