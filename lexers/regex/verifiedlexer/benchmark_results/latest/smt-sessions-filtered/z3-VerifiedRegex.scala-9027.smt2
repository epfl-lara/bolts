; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!485644 () Bool)

(assert start!485644)

(declare-fun b!4753002 () Bool)

(declare-datatypes ((K!14540 0))(
  ( (K!14541 (val!19903 Int)) )
))
(declare-datatypes ((V!14786 0))(
  ( (V!14787 (val!19904 Int)) )
))
(declare-datatypes ((tuple2!54872 0))(
  ( (tuple2!54873 (_1!30730 K!14540) (_2!30730 V!14786)) )
))
(declare-datatypes ((List!53220 0))(
  ( (Nil!53096) (Cons!53096 (h!59493 tuple2!54872) (t!360560 List!53220)) )
))
(declare-datatypes ((ListMap!5557 0))(
  ( (ListMap!5558 (toList!6124 List!53220)) )
))
(declare-fun lt!1917988 () ListMap!5557)

(declare-fun e!2965006 () Bool)

(declare-fun l!14304 () List!53220)

(declare-fun acc!1214 () ListMap!5557)

(declare-fun eq!1225 (ListMap!5557 ListMap!5557) Bool)

(declare-fun addToMapMapFromBucket!1580 (List!53220 ListMap!5557) ListMap!5557)

(assert (=> b!4753002 (= e!2965006 (eq!1225 lt!1917988 (addToMapMapFromBucket!1580 l!14304 acc!1214)))))

(declare-fun b!4753003 () Bool)

(declare-fun e!2965010 () Bool)

(declare-fun e!2965009 () Bool)

(assert (=> b!4753003 (= e!2965010 e!2965009)))

(declare-fun res!2015801 () Bool)

(assert (=> b!4753003 (=> (not res!2015801) (not e!2965009))))

(declare-fun lt!1917998 () List!53220)

(declare-fun noDuplicateKeys!2156 (List!53220) Bool)

(assert (=> b!4753003 (= res!2015801 (noDuplicateKeys!2156 lt!1917998))))

(declare-fun t!14174 () tuple2!54872)

(assert (=> b!4753003 (= lt!1917998 (Cons!53096 t!14174 l!14304))))

(declare-fun b!4753005 () Bool)

(declare-fun e!2965005 () Bool)

(assert (=> b!4753005 (= e!2965009 (not e!2965005))))

(declare-fun res!2015803 () Bool)

(assert (=> b!4753005 (=> res!2015803 e!2965005)))

(assert (=> b!4753005 (= res!2015803 (not (noDuplicateKeys!2156 (t!360560 l!14304))))))

(declare-fun e!2965007 () Bool)

(assert (=> b!4753005 e!2965007))

(declare-fun res!2015802 () Bool)

(assert (=> b!4753005 (=> (not res!2015802) (not e!2965007))))

(declare-fun lt!1917997 () ListMap!5557)

(declare-fun lt!1917996 () ListMap!5557)

(assert (=> b!4753005 (= res!2015802 (eq!1225 lt!1917997 lt!1917996))))

(declare-datatypes ((Unit!136560 0))(
  ( (Unit!136561) )
))
(declare-fun lt!1917987 () Unit!136560)

(declare-fun addCommutativeForDiffKeys!26 (ListMap!5557 K!14540 V!14786 K!14540 V!14786) Unit!136560)

(assert (=> b!4753005 (= lt!1917987 (addCommutativeForDiffKeys!26 acc!1214 (_1!30730 t!14174) (_2!30730 t!14174) (_1!30730 (h!59493 l!14304)) (_2!30730 (h!59493 l!14304))))))

(assert (=> b!4753005 (eq!1225 lt!1917996 lt!1917997)))

(declare-fun +!2390 (ListMap!5557 tuple2!54872) ListMap!5557)

(assert (=> b!4753005 (= lt!1917997 (+!2390 (+!2390 acc!1214 t!14174) (h!59493 l!14304)))))

(declare-fun lt!1917999 () ListMap!5557)

(assert (=> b!4753005 (= lt!1917996 (+!2390 lt!1917999 t!14174))))

(declare-fun lt!1917993 () Unit!136560)

(assert (=> b!4753005 (= lt!1917993 (addCommutativeForDiffKeys!26 acc!1214 (_1!30730 (h!59493 l!14304)) (_2!30730 (h!59493 l!14304)) (_1!30730 t!14174) (_2!30730 t!14174)))))

(declare-fun lt!1917992 () ListMap!5557)

(declare-fun lt!1917994 () ListMap!5557)

(assert (=> b!4753005 (eq!1225 lt!1917992 (addToMapMapFromBucket!1580 (t!360560 l!14304) lt!1917994))))

(declare-fun lt!1917990 () ListMap!5557)

(assert (=> b!4753005 (= lt!1917994 (+!2390 lt!1917990 (h!59493 l!14304)))))

(assert (=> b!4753005 (eq!1225 lt!1917992 (addToMapMapFromBucket!1580 l!14304 lt!1917990))))

(assert (=> b!4753005 (= lt!1917990 (+!2390 acc!1214 t!14174))))

(assert (=> b!4753005 (= lt!1917992 (addToMapMapFromBucket!1580 lt!1917998 acc!1214))))

(declare-fun lt!1917995 () ListMap!5557)

(declare-fun lt!1917989 () ListMap!5557)

(assert (=> b!4753005 (eq!1225 lt!1917995 (addToMapMapFromBucket!1580 (t!360560 l!14304) lt!1917989))))

(assert (=> b!4753005 (= lt!1917989 (+!2390 lt!1917999 t!14174))))

(assert (=> b!4753005 e!2965006))

(declare-fun res!2015800 () Bool)

(assert (=> b!4753005 (=> (not res!2015800) (not e!2965006))))

(assert (=> b!4753005 (= res!2015800 (eq!1225 lt!1917995 (+!2390 lt!1917988 t!14174)))))

(assert (=> b!4753005 (= lt!1917995 (addToMapMapFromBucket!1580 (Cons!53096 t!14174 (t!360560 l!14304)) lt!1917999))))

(declare-fun lt!1917991 () Unit!136560)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!470 (tuple2!54872 List!53220 ListMap!5557) Unit!136560)

(assert (=> b!4753005 (= lt!1917991 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!470 t!14174 (t!360560 l!14304) lt!1917999))))

(assert (=> b!4753005 (= lt!1917988 (addToMapMapFromBucket!1580 (t!360560 l!14304) lt!1917999))))

(assert (=> b!4753005 (= lt!1917999 (+!2390 acc!1214 (h!59493 l!14304)))))

(declare-fun tp_is_empty!31917 () Bool)

(declare-fun tp_is_empty!31919 () Bool)

(declare-fun b!4753006 () Bool)

(declare-fun e!2965008 () Bool)

(declare-fun tp!1350260 () Bool)

(assert (=> b!4753006 (= e!2965008 (and tp_is_empty!31917 tp_is_empty!31919 tp!1350260))))

(declare-fun b!4753007 () Bool)

(declare-fun e!2965004 () Bool)

(declare-fun tp!1350261 () Bool)

(assert (=> b!4753007 (= e!2965004 tp!1350261)))

(declare-fun b!4753008 () Bool)

(assert (=> b!4753008 (= e!2965007 (eq!1225 lt!1917994 lt!1917989))))

(declare-fun b!4753009 () Bool)

(declare-fun res!2015799 () Bool)

(assert (=> b!4753009 (=> (not res!2015799) (not e!2965009))))

(get-info :version)

(assert (=> b!4753009 (= res!2015799 (not ((_ is Nil!53096) l!14304)))))

(declare-fun res!2015798 () Bool)

(assert (=> start!485644 (=> (not res!2015798) (not e!2965010))))

(assert (=> start!485644 (= res!2015798 (noDuplicateKeys!2156 l!14304))))

(assert (=> start!485644 e!2965010))

(assert (=> start!485644 e!2965008))

(assert (=> start!485644 (and tp_is_empty!31917 tp_is_empty!31919)))

(declare-fun inv!68410 (ListMap!5557) Bool)

(assert (=> start!485644 (and (inv!68410 acc!1214) e!2965004)))

(declare-fun b!4753004 () Bool)

(assert (=> b!4753004 (= e!2965005 (eq!1225 lt!1917989 lt!1917994))))

(assert (= (and start!485644 res!2015798) b!4753003))

(assert (= (and b!4753003 res!2015801) b!4753009))

(assert (= (and b!4753009 res!2015799) b!4753005))

(assert (= (and b!4753005 res!2015800) b!4753002))

(assert (= (and b!4753005 res!2015802) b!4753008))

(assert (= (and b!4753005 (not res!2015803)) b!4753004))

(assert (= (and start!485644 ((_ is Cons!53096) l!14304)) b!4753006))

(assert (= start!485644 b!4753007))

(declare-fun m!5718741 () Bool)

(assert (=> b!4753005 m!5718741))

(declare-fun m!5718743 () Bool)

(assert (=> b!4753005 m!5718743))

(declare-fun m!5718745 () Bool)

(assert (=> b!4753005 m!5718745))

(declare-fun m!5718747 () Bool)

(assert (=> b!4753005 m!5718747))

(declare-fun m!5718749 () Bool)

(assert (=> b!4753005 m!5718749))

(declare-fun m!5718751 () Bool)

(assert (=> b!4753005 m!5718751))

(declare-fun m!5718753 () Bool)

(assert (=> b!4753005 m!5718753))

(declare-fun m!5718755 () Bool)

(assert (=> b!4753005 m!5718755))

(assert (=> b!4753005 m!5718741))

(declare-fun m!5718757 () Bool)

(assert (=> b!4753005 m!5718757))

(declare-fun m!5718759 () Bool)

(assert (=> b!4753005 m!5718759))

(declare-fun m!5718761 () Bool)

(assert (=> b!4753005 m!5718761))

(declare-fun m!5718763 () Bool)

(assert (=> b!4753005 m!5718763))

(declare-fun m!5718765 () Bool)

(assert (=> b!4753005 m!5718765))

(declare-fun m!5718767 () Bool)

(assert (=> b!4753005 m!5718767))

(declare-fun m!5718769 () Bool)

(assert (=> b!4753005 m!5718769))

(assert (=> b!4753005 m!5718755))

(declare-fun m!5718771 () Bool)

(assert (=> b!4753005 m!5718771))

(declare-fun m!5718773 () Bool)

(assert (=> b!4753005 m!5718773))

(assert (=> b!4753005 m!5718763))

(declare-fun m!5718775 () Bool)

(assert (=> b!4753005 m!5718775))

(assert (=> b!4753005 m!5718775))

(declare-fun m!5718777 () Bool)

(assert (=> b!4753005 m!5718777))

(assert (=> b!4753005 m!5718759))

(declare-fun m!5718779 () Bool)

(assert (=> b!4753005 m!5718779))

(declare-fun m!5718781 () Bool)

(assert (=> b!4753005 m!5718781))

(declare-fun m!5718783 () Bool)

(assert (=> b!4753005 m!5718783))

(declare-fun m!5718785 () Bool)

(assert (=> b!4753002 m!5718785))

(assert (=> b!4753002 m!5718785))

(declare-fun m!5718787 () Bool)

(assert (=> b!4753002 m!5718787))

(declare-fun m!5718789 () Bool)

(assert (=> b!4753003 m!5718789))

(declare-fun m!5718791 () Bool)

(assert (=> b!4753004 m!5718791))

(declare-fun m!5718793 () Bool)

(assert (=> b!4753008 m!5718793))

(declare-fun m!5718795 () Bool)

(assert (=> start!485644 m!5718795))

(declare-fun m!5718797 () Bool)

(assert (=> start!485644 m!5718797))

(check-sat (not start!485644) (not b!4753002) tp_is_empty!31919 tp_is_empty!31917 (not b!4753003) (not b!4753004) (not b!4753007) (not b!4753006) (not b!4753005) (not b!4753008))
(check-sat)
