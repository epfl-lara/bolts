; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!472832 () Bool)

(assert start!472832)

(declare-fun b!4681808 () Bool)

(declare-fun e!2921027 () Bool)

(declare-fun tp!1345167 () Bool)

(assert (=> b!4681808 (= e!2921027 tp!1345167)))

(declare-fun b!4681810 () Bool)

(declare-fun res!1973243 () Bool)

(declare-fun e!2921029 () Bool)

(assert (=> b!4681810 (=> (not res!1973243) (not e!2921029))))

(declare-datatypes ((K!13655 0))(
  ( (K!13656 (val!19195 Int)) )
))
(declare-datatypes ((V!13901 0))(
  ( (V!13902 (val!19196 Int)) )
))
(declare-datatypes ((tuple2!53602 0))(
  ( (tuple2!53603 (_1!30095 K!13655) (_2!30095 V!13901)) )
))
(declare-datatypes ((List!52401 0))(
  ( (Nil!52277) (Cons!52277 (h!58494 tuple2!53602) (t!359561 List!52401)) )
))
(declare-fun oldBucket!34 () List!52401)

(declare-fun noDuplicateKeys!1802 (List!52401) Bool)

(assert (=> b!4681810 (= res!1973243 (noDuplicateKeys!1802 oldBucket!34))))

(declare-fun b!4681811 () Bool)

(declare-fun e!2921025 () Bool)

(declare-fun e!2921034 () Bool)

(assert (=> b!4681811 (= e!2921025 e!2921034)))

(declare-fun res!1973250 () Bool)

(assert (=> b!4681811 (=> (not res!1973250) (not e!2921034))))

(declare-datatypes ((tuple2!53604 0))(
  ( (tuple2!53605 (_1!30096 (_ BitVec 64)) (_2!30096 List!52401)) )
))
(declare-datatypes ((List!52402 0))(
  ( (Nil!52278) (Cons!52278 (h!58495 tuple2!53604) (t!359562 List!52402)) )
))
(declare-datatypes ((ListLongMap!4023 0))(
  ( (ListLongMap!4024 (toList!5493 List!52402)) )
))
(declare-fun lm!2023 () ListLongMap!4023)

(declare-fun lt!1841725 () tuple2!53604)

(declare-fun head!9895 (List!52402) tuple2!53604)

(assert (=> b!4681811 (= res!1973250 (= (head!9895 (toList!5493 lm!2023)) lt!1841725))))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4681811 (= lt!1841725 (tuple2!53605 hash!405 oldBucket!34))))

(declare-fun b!4681812 () Bool)

(declare-fun res!1973237 () Bool)

(assert (=> b!4681812 (=> (not res!1973237) (not e!2921029))))

(declare-fun newBucket!218 () List!52401)

(assert (=> b!4681812 (= res!1973237 (noDuplicateKeys!1802 newBucket!218))))

(declare-fun b!4681813 () Bool)

(declare-fun res!1973235 () Bool)

(declare-fun e!2921020 () Bool)

(assert (=> b!4681813 (=> res!1973235 e!2921020)))

(declare-datatypes ((ListMap!4857 0))(
  ( (ListMap!4858 (toList!5494 List!52401)) )
))
(declare-fun lt!1841737 () ListMap!4857)

(declare-fun lt!1841736 () ListMap!4857)

(assert (=> b!4681813 (= res!1973235 (not (= lt!1841737 lt!1841736)))))

(declare-fun b!4681814 () Bool)

(declare-fun e!2921028 () Bool)

(declare-fun e!2921026 () Bool)

(assert (=> b!4681814 (= e!2921028 e!2921026)))

(declare-fun res!1973245 () Bool)

(assert (=> b!4681814 (=> res!1973245 e!2921026)))

(declare-fun lt!1841723 () ListMap!4857)

(assert (=> b!4681814 (= res!1973245 (not (= lt!1841736 lt!1841723)))))

(declare-fun lt!1841728 () tuple2!53604)

(declare-fun extractMap!1828 (List!52402) ListMap!4857)

(assert (=> b!4681814 (= lt!1841723 (extractMap!1828 (Cons!52278 lt!1841728 (t!359562 (toList!5493 lm!2023)))))))

(declare-fun lt!1841738 () List!52402)

(assert (=> b!4681814 (= lt!1841736 (extractMap!1828 lt!1841738))))

(assert (=> b!4681814 (= lt!1841728 (tuple2!53605 hash!405 newBucket!218))))

(declare-fun lt!1841722 () List!52401)

(assert (=> b!4681814 (= lt!1841738 (Cons!52278 (tuple2!53605 hash!405 lt!1841722) (t!359562 (toList!5493 lm!2023))))))

(declare-fun b!4681815 () Bool)

(declare-fun res!1973247 () Bool)

(assert (=> b!4681815 (=> (not res!1973247) (not e!2921025))))

(declare-datatypes ((Hashable!6171 0))(
  ( (HashableExt!6170 (__x!31874 Int)) )
))
(declare-fun hashF!1323 () Hashable!6171)

(declare-fun allKeysSameHashInMap!1716 (ListLongMap!4023 Hashable!6171) Bool)

(assert (=> b!4681815 (= res!1973247 (allKeysSameHashInMap!1716 lm!2023 hashF!1323))))

(declare-fun b!4681816 () Bool)

(declare-fun e!2921024 () Bool)

(assert (=> b!4681816 (= e!2921020 e!2921024)))

(declare-fun res!1973248 () Bool)

(assert (=> b!4681816 (=> res!1973248 e!2921024)))

(declare-fun key!4653 () K!13655)

(declare-fun contains!15406 (ListMap!4857 K!13655) Bool)

(assert (=> b!4681816 (= res!1973248 (contains!15406 lt!1841737 key!4653))))

(assert (=> b!4681816 (not (contains!15406 lt!1841736 key!4653))))

(declare-datatypes ((Unit!122879 0))(
  ( (Unit!122880) )
))
(declare-fun lt!1841724 () Unit!122879)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!402 (ListLongMap!4023 K!13655 Hashable!6171) Unit!122879)

(assert (=> b!4681816 (= lt!1841724 (lemmaNotInItsHashBucketThenNotInMap!402 (ListLongMap!4024 lt!1841738) key!4653 hashF!1323))))

(declare-fun e!2921032 () Bool)

(declare-fun lambda!205015 () Int)

(declare-fun lt!1841721 () List!52402)

(declare-fun b!4681817 () Bool)

(declare-fun forall!11241 (List!52402 Int) Bool)

(assert (=> b!4681817 (= e!2921032 (forall!11241 (Cons!52278 lt!1841725 lt!1841721) lambda!205015))))

(declare-fun lt!1841740 () ListMap!4857)

(assert (=> b!4681817 (= lt!1841740 (extractMap!1828 (Cons!52278 lt!1841728 lt!1841721)))))

(declare-fun tail!8471 (List!52402) List!52402)

(assert (=> b!4681817 (= lt!1841721 (tail!8471 (toList!5493 lm!2023)))))

(declare-fun b!4681818 () Bool)

(declare-fun res!1973251 () Bool)

(assert (=> b!4681818 (=> (not res!1973251) (not e!2921029))))

(declare-fun allKeysSameHash!1628 (List!52401 (_ BitVec 64) Hashable!6171) Bool)

(assert (=> b!4681818 (= res!1973251 (allKeysSameHash!1628 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4681819 () Bool)

(declare-fun e!2921022 () Bool)

(assert (=> b!4681819 (= e!2921024 e!2921022)))

(declare-fun res!1973236 () Bool)

(assert (=> b!4681819 (=> res!1973236 e!2921022)))

(declare-fun lt!1841734 () ListMap!4857)

(assert (=> b!4681819 (= res!1973236 (not (= lt!1841734 lt!1841737)))))

(declare-fun lt!1841733 () ListMap!4857)

(declare-fun -!666 (ListMap!4857 K!13655) ListMap!4857)

(assert (=> b!4681819 (= lt!1841734 (-!666 lt!1841733 key!4653))))

(declare-fun +!2104 (ListMap!4857 tuple2!53602) ListMap!4857)

(assert (=> b!4681819 (= (-!666 (+!2104 lt!1841737 (tuple2!53603 key!4653 (_2!30095 (h!58494 oldBucket!34)))) key!4653) lt!1841737)))

(declare-fun lt!1841730 () Unit!122879)

(declare-fun addThenRemoveForNewKeyIsSame!57 (ListMap!4857 K!13655 V!13901) Unit!122879)

(assert (=> b!4681819 (= lt!1841730 (addThenRemoveForNewKeyIsSame!57 lt!1841737 key!4653 (_2!30095 (h!58494 oldBucket!34))))))

(declare-fun b!4681820 () Bool)

(declare-fun res!1973257 () Bool)

(assert (=> b!4681820 (=> res!1973257 e!2921020)))

(declare-fun containsKey!2953 (List!52401 K!13655) Bool)

(assert (=> b!4681820 (= res!1973257 (containsKey!2953 lt!1841722 key!4653))))

(declare-fun b!4681821 () Bool)

(declare-fun res!1973249 () Bool)

(assert (=> b!4681821 (=> (not res!1973249) (not e!2921025))))

(declare-fun hash!3986 (Hashable!6171 K!13655) (_ BitVec 64))

(assert (=> b!4681821 (= res!1973249 (= (hash!3986 hashF!1323 key!4653) hash!405))))

(declare-fun e!2921033 () Bool)

(declare-fun tp!1345168 () Bool)

(declare-fun tp_is_empty!30501 () Bool)

(declare-fun b!4681822 () Bool)

(declare-fun tp_is_empty!30503 () Bool)

(assert (=> b!4681822 (= e!2921033 (and tp_is_empty!30501 tp_is_empty!30503 tp!1345168))))

(declare-fun b!4681823 () Bool)

(declare-fun e!2921031 () Bool)

(assert (=> b!4681823 (= e!2921031 e!2921028)))

(declare-fun res!1973242 () Bool)

(assert (=> b!4681823 (=> res!1973242 e!2921028)))

(assert (=> b!4681823 (= res!1973242 (not (= lt!1841722 newBucket!218)))))

(declare-fun tail!8472 (List!52401) List!52401)

(assert (=> b!4681823 (= lt!1841722 (tail!8472 oldBucket!34))))

(declare-fun b!4681824 () Bool)

(assert (=> b!4681824 (= e!2921029 e!2921025)))

(declare-fun res!1973255 () Bool)

(assert (=> b!4681824 (=> (not res!1973255) (not e!2921025))))

(declare-fun lt!1841726 () ListMap!4857)

(assert (=> b!4681824 (= res!1973255 (contains!15406 lt!1841726 key!4653))))

(assert (=> b!4681824 (= lt!1841726 (extractMap!1828 (toList!5493 lm!2023)))))

(declare-fun b!4681809 () Bool)

(declare-fun res!1973256 () Bool)

(assert (=> b!4681809 (=> (not res!1973256) (not e!2921029))))

(declare-fun removePairForKey!1397 (List!52401 K!13655) List!52401)

(assert (=> b!4681809 (= res!1973256 (= (removePairForKey!1397 oldBucket!34 key!4653) newBucket!218))))

(declare-fun res!1973240 () Bool)

(assert (=> start!472832 (=> (not res!1973240) (not e!2921029))))

(assert (=> start!472832 (= res!1973240 (forall!11241 (toList!5493 lm!2023) lambda!205015))))

(assert (=> start!472832 e!2921029))

(declare-fun inv!67529 (ListLongMap!4023) Bool)

(assert (=> start!472832 (and (inv!67529 lm!2023) e!2921027)))

(assert (=> start!472832 tp_is_empty!30501))

(declare-fun e!2921030 () Bool)

(assert (=> start!472832 e!2921030))

(assert (=> start!472832 true))

(assert (=> start!472832 e!2921033))

(declare-fun b!4681825 () Bool)

(declare-fun res!1973252 () Bool)

(assert (=> b!4681825 (=> res!1973252 e!2921032)))

(declare-fun lt!1841727 () ListMap!4857)

(declare-fun eq!991 (ListMap!4857 ListMap!4857) Bool)

(assert (=> b!4681825 (= res!1973252 (not (eq!991 lt!1841723 lt!1841727)))))

(declare-fun b!4681826 () Bool)

(declare-fun res!1973244 () Bool)

(assert (=> b!4681826 (=> (not res!1973244) (not e!2921025))))

(assert (=> b!4681826 (= res!1973244 (allKeysSameHash!1628 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4681827 () Bool)

(declare-fun e!2921021 () Bool)

(assert (=> b!4681827 (= e!2921026 e!2921021)))

(declare-fun res!1973239 () Bool)

(assert (=> b!4681827 (=> res!1973239 e!2921021)))

(declare-fun lt!1841731 () ListMap!4857)

(declare-fun addToMapMapFromBucket!1234 (List!52401 ListMap!4857) ListMap!4857)

(assert (=> b!4681827 (= res!1973239 (not (= lt!1841737 (addToMapMapFromBucket!1234 newBucket!218 lt!1841731))))))

(assert (=> b!4681827 (= lt!1841737 (addToMapMapFromBucket!1234 lt!1841722 lt!1841731))))

(declare-fun tp!1345169 () Bool)

(declare-fun b!4681828 () Bool)

(assert (=> b!4681828 (= e!2921030 (and tp_is_empty!30501 tp_is_empty!30503 tp!1345169))))

(declare-fun b!4681829 () Bool)

(declare-fun e!2921023 () Bool)

(assert (=> b!4681829 (= e!2921023 e!2921032)))

(declare-fun res!1973253 () Bool)

(assert (=> b!4681829 (=> res!1973253 e!2921032)))

(assert (=> b!4681829 (= res!1973253 (not (eq!991 lt!1841727 lt!1841736)))))

(assert (=> b!4681829 (eq!991 lt!1841734 lt!1841727)))

(declare-fun lt!1841729 () ListMap!4857)

(assert (=> b!4681829 (= lt!1841727 (-!666 lt!1841729 key!4653))))

(declare-fun lt!1841739 () Unit!122879)

(declare-fun lemmaRemovePreservesEq!86 (ListMap!4857 ListMap!4857 K!13655) Unit!122879)

(assert (=> b!4681829 (= lt!1841739 (lemmaRemovePreservesEq!86 lt!1841733 lt!1841729 key!4653))))

(declare-fun b!4681830 () Bool)

(declare-fun res!1973254 () Bool)

(assert (=> b!4681830 (=> (not res!1973254) (not e!2921034))))

(get-info :version)

(assert (=> b!4681830 (= res!1973254 ((_ is Cons!52278) (toList!5493 lm!2023)))))

(declare-fun b!4681831 () Bool)

(assert (=> b!4681831 (= e!2921022 e!2921023)))

(declare-fun res!1973238 () Bool)

(assert (=> b!4681831 (=> res!1973238 e!2921023)))

(assert (=> b!4681831 (= res!1973238 (not (eq!991 lt!1841733 lt!1841729)))))

(assert (=> b!4681831 (= lt!1841729 (extractMap!1828 (Cons!52278 lt!1841725 (t!359562 (toList!5493 lm!2023)))))))

(declare-fun b!4681832 () Bool)

(assert (=> b!4681832 (= e!2921034 (not e!2921031))))

(declare-fun res!1973246 () Bool)

(assert (=> b!4681832 (=> res!1973246 e!2921031)))

(assert (=> b!4681832 (= res!1973246 (or (not ((_ is Cons!52277) oldBucket!34)) (not (= (_1!30095 (h!58494 oldBucket!34)) key!4653))))))

(assert (=> b!4681832 (= lt!1841726 (addToMapMapFromBucket!1234 (_2!30096 (h!58495 (toList!5493 lm!2023))) lt!1841731))))

(assert (=> b!4681832 (= lt!1841731 (extractMap!1828 (t!359562 (toList!5493 lm!2023))))))

(declare-fun tail!8473 (ListLongMap!4023) ListLongMap!4023)

(assert (=> b!4681832 (= (t!359562 (toList!5493 lm!2023)) (toList!5493 (tail!8473 lm!2023)))))

(declare-fun b!4681833 () Bool)

(assert (=> b!4681833 (= e!2921021 e!2921020)))

(declare-fun res!1973241 () Bool)

(assert (=> b!4681833 (=> res!1973241 e!2921020)))

(assert (=> b!4681833 (= res!1973241 (not (eq!991 lt!1841733 (addToMapMapFromBucket!1234 oldBucket!34 lt!1841731))))))

(assert (=> b!4681833 (= lt!1841733 (+!2104 lt!1841737 (h!58494 oldBucket!34)))))

(declare-fun lt!1841735 () tuple2!53602)

(assert (=> b!4681833 (eq!991 (addToMapMapFromBucket!1234 (Cons!52277 lt!1841735 lt!1841722) lt!1841731) (+!2104 lt!1841737 lt!1841735))))

(declare-fun lt!1841732 () Unit!122879)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!240 (tuple2!53602 List!52401 ListMap!4857) Unit!122879)

(assert (=> b!4681833 (= lt!1841732 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!240 lt!1841735 lt!1841722 lt!1841731))))

(declare-fun head!9896 (List!52401) tuple2!53602)

(assert (=> b!4681833 (= lt!1841735 (head!9896 oldBucket!34))))

(assert (= (and start!472832 res!1973240) b!4681810))

(assert (= (and b!4681810 res!1973243) b!4681812))

(assert (= (and b!4681812 res!1973237) b!4681809))

(assert (= (and b!4681809 res!1973256) b!4681818))

(assert (= (and b!4681818 res!1973251) b!4681824))

(assert (= (and b!4681824 res!1973255) b!4681821))

(assert (= (and b!4681821 res!1973249) b!4681826))

(assert (= (and b!4681826 res!1973244) b!4681815))

(assert (= (and b!4681815 res!1973247) b!4681811))

(assert (= (and b!4681811 res!1973250) b!4681830))

(assert (= (and b!4681830 res!1973254) b!4681832))

(assert (= (and b!4681832 (not res!1973246)) b!4681823))

(assert (= (and b!4681823 (not res!1973242)) b!4681814))

(assert (= (and b!4681814 (not res!1973245)) b!4681827))

(assert (= (and b!4681827 (not res!1973239)) b!4681833))

(assert (= (and b!4681833 (not res!1973241)) b!4681820))

(assert (= (and b!4681820 (not res!1973257)) b!4681813))

(assert (= (and b!4681813 (not res!1973235)) b!4681816))

(assert (= (and b!4681816 (not res!1973248)) b!4681819))

(assert (= (and b!4681819 (not res!1973236)) b!4681831))

(assert (= (and b!4681831 (not res!1973238)) b!4681829))

(assert (= (and b!4681829 (not res!1973253)) b!4681825))

(assert (= (and b!4681825 (not res!1973252)) b!4681817))

(assert (= start!472832 b!4681808))

(assert (= (and start!472832 ((_ is Cons!52277) oldBucket!34)) b!4681828))

(assert (= (and start!472832 ((_ is Cons!52277) newBucket!218)) b!4681822))

(declare-fun m!5579783 () Bool)

(assert (=> b!4681810 m!5579783))

(declare-fun m!5579785 () Bool)

(assert (=> b!4681816 m!5579785))

(declare-fun m!5579787 () Bool)

(assert (=> b!4681816 m!5579787))

(declare-fun m!5579789 () Bool)

(assert (=> b!4681816 m!5579789))

(declare-fun m!5579791 () Bool)

(assert (=> b!4681826 m!5579791))

(declare-fun m!5579793 () Bool)

(assert (=> b!4681814 m!5579793))

(declare-fun m!5579795 () Bool)

(assert (=> b!4681814 m!5579795))

(declare-fun m!5579797 () Bool)

(assert (=> b!4681833 m!5579797))

(declare-fun m!5579799 () Bool)

(assert (=> b!4681833 m!5579799))

(declare-fun m!5579801 () Bool)

(assert (=> b!4681833 m!5579801))

(assert (=> b!4681833 m!5579801))

(declare-fun m!5579803 () Bool)

(assert (=> b!4681833 m!5579803))

(declare-fun m!5579805 () Bool)

(assert (=> b!4681833 m!5579805))

(declare-fun m!5579807 () Bool)

(assert (=> b!4681833 m!5579807))

(declare-fun m!5579809 () Bool)

(assert (=> b!4681833 m!5579809))

(assert (=> b!4681833 m!5579799))

(assert (=> b!4681833 m!5579809))

(declare-fun m!5579811 () Bool)

(assert (=> b!4681833 m!5579811))

(declare-fun m!5579813 () Bool)

(assert (=> b!4681831 m!5579813))

(declare-fun m!5579815 () Bool)

(assert (=> b!4681831 m!5579815))

(declare-fun m!5579817 () Bool)

(assert (=> b!4681821 m!5579817))

(declare-fun m!5579819 () Bool)

(assert (=> b!4681809 m!5579819))

(declare-fun m!5579821 () Bool)

(assert (=> start!472832 m!5579821))

(declare-fun m!5579823 () Bool)

(assert (=> start!472832 m!5579823))

(declare-fun m!5579825 () Bool)

(assert (=> b!4681819 m!5579825))

(declare-fun m!5579827 () Bool)

(assert (=> b!4681819 m!5579827))

(assert (=> b!4681819 m!5579827))

(declare-fun m!5579829 () Bool)

(assert (=> b!4681819 m!5579829))

(declare-fun m!5579831 () Bool)

(assert (=> b!4681819 m!5579831))

(declare-fun m!5579833 () Bool)

(assert (=> b!4681827 m!5579833))

(declare-fun m!5579835 () Bool)

(assert (=> b!4681827 m!5579835))

(declare-fun m!5579837 () Bool)

(assert (=> b!4681812 m!5579837))

(declare-fun m!5579839 () Bool)

(assert (=> b!4681829 m!5579839))

(declare-fun m!5579841 () Bool)

(assert (=> b!4681829 m!5579841))

(declare-fun m!5579843 () Bool)

(assert (=> b!4681829 m!5579843))

(declare-fun m!5579845 () Bool)

(assert (=> b!4681829 m!5579845))

(declare-fun m!5579847 () Bool)

(assert (=> b!4681811 m!5579847))

(declare-fun m!5579849 () Bool)

(assert (=> b!4681825 m!5579849))

(declare-fun m!5579851 () Bool)

(assert (=> b!4681823 m!5579851))

(declare-fun m!5579853 () Bool)

(assert (=> b!4681818 m!5579853))

(declare-fun m!5579855 () Bool)

(assert (=> b!4681824 m!5579855))

(declare-fun m!5579857 () Bool)

(assert (=> b!4681824 m!5579857))

(declare-fun m!5579859 () Bool)

(assert (=> b!4681817 m!5579859))

(declare-fun m!5579861 () Bool)

(assert (=> b!4681817 m!5579861))

(declare-fun m!5579863 () Bool)

(assert (=> b!4681817 m!5579863))

(declare-fun m!5579865 () Bool)

(assert (=> b!4681832 m!5579865))

(declare-fun m!5579867 () Bool)

(assert (=> b!4681832 m!5579867))

(declare-fun m!5579869 () Bool)

(assert (=> b!4681832 m!5579869))

(declare-fun m!5579871 () Bool)

(assert (=> b!4681815 m!5579871))

(declare-fun m!5579873 () Bool)

(assert (=> b!4681820 m!5579873))

(check-sat (not b!4681833) (not b!4681828) (not b!4681814) (not b!4681824) (not b!4681825) (not b!4681811) (not b!4681819) (not b!4681821) tp_is_empty!30501 (not b!4681817) (not b!4681831) (not start!472832) (not b!4681816) (not b!4681809) (not b!4681818) (not b!4681822) (not b!4681812) (not b!4681829) (not b!4681820) (not b!4681815) (not b!4681827) (not b!4681826) (not b!4681810) (not b!4681808) (not b!4681832) tp_is_empty!30503 (not b!4681823))
(check-sat)
(get-model)

(declare-fun d!1488047 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9120 (List!52401) (InoxSet tuple2!53602))

(assert (=> d!1488047 (= (eq!991 lt!1841727 lt!1841736) (= (content!9120 (toList!5494 lt!1841727)) (content!9120 (toList!5494 lt!1841736))))))

(declare-fun bs!1083230 () Bool)

(assert (= bs!1083230 d!1488047))

(declare-fun m!5579875 () Bool)

(assert (=> bs!1083230 m!5579875))

(declare-fun m!5579877 () Bool)

(assert (=> bs!1083230 m!5579877))

(assert (=> b!4681829 d!1488047))

(declare-fun d!1488049 () Bool)

(assert (=> d!1488049 (= (eq!991 lt!1841734 lt!1841727) (= (content!9120 (toList!5494 lt!1841734)) (content!9120 (toList!5494 lt!1841727))))))

(declare-fun bs!1083231 () Bool)

(assert (= bs!1083231 d!1488049))

(declare-fun m!5579879 () Bool)

(assert (=> bs!1083231 m!5579879))

(assert (=> bs!1083231 m!5579875))

(assert (=> b!4681829 d!1488049))

(declare-fun d!1488051 () Bool)

(declare-fun e!2921039 () Bool)

(assert (=> d!1488051 e!2921039))

(declare-fun res!1973264 () Bool)

(assert (=> d!1488051 (=> (not res!1973264) (not e!2921039))))

(declare-fun lt!1841751 () ListMap!4857)

(assert (=> d!1488051 (= res!1973264 (not (contains!15406 lt!1841751 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!334 (List!52401 K!13655) List!52401)

(assert (=> d!1488051 (= lt!1841751 (ListMap!4858 (removePresrvNoDuplicatedKeys!334 (toList!5494 lt!1841729) key!4653)))))

(assert (=> d!1488051 (= (-!666 lt!1841729 key!4653) lt!1841751)))

(declare-fun b!4681840 () Bool)

(declare-datatypes ((List!52403 0))(
  ( (Nil!52279) (Cons!52279 (h!58498 K!13655) (t!359565 List!52403)) )
))
(declare-fun content!9121 (List!52403) (InoxSet K!13655))

(declare-fun keys!18632 (ListMap!4857) List!52403)

(assert (=> b!4681840 (= e!2921039 (= ((_ map and) (content!9121 (keys!18632 lt!1841729)) ((_ map not) (store ((as const (Array K!13655 Bool)) false) key!4653 true))) (content!9121 (keys!18632 lt!1841751))))))

(assert (= (and d!1488051 res!1973264) b!4681840))

(declare-fun m!5579881 () Bool)

(assert (=> d!1488051 m!5579881))

(declare-fun m!5579883 () Bool)

(assert (=> d!1488051 m!5579883))

(declare-fun m!5579885 () Bool)

(assert (=> b!4681840 m!5579885))

(assert (=> b!4681840 m!5579885))

(declare-fun m!5579887 () Bool)

(assert (=> b!4681840 m!5579887))

(declare-fun m!5579889 () Bool)

(assert (=> b!4681840 m!5579889))

(declare-fun m!5579891 () Bool)

(assert (=> b!4681840 m!5579891))

(assert (=> b!4681840 m!5579889))

(declare-fun m!5579893 () Bool)

(assert (=> b!4681840 m!5579893))

(assert (=> b!4681829 d!1488051))

(declare-fun d!1488055 () Bool)

(assert (=> d!1488055 (eq!991 (-!666 lt!1841733 key!4653) (-!666 lt!1841729 key!4653))))

(declare-fun lt!1841758 () Unit!122879)

(declare-fun choose!32409 (ListMap!4857 ListMap!4857 K!13655) Unit!122879)

(assert (=> d!1488055 (= lt!1841758 (choose!32409 lt!1841733 lt!1841729 key!4653))))

(assert (=> d!1488055 (eq!991 lt!1841733 lt!1841729)))

(assert (=> d!1488055 (= (lemmaRemovePreservesEq!86 lt!1841733 lt!1841729 key!4653) lt!1841758)))

(declare-fun bs!1083232 () Bool)

(assert (= bs!1083232 d!1488055))

(assert (=> bs!1083232 m!5579843))

(assert (=> bs!1083232 m!5579825))

(assert (=> bs!1083232 m!5579843))

(declare-fun m!5579907 () Bool)

(assert (=> bs!1083232 m!5579907))

(assert (=> bs!1083232 m!5579825))

(declare-fun m!5579909 () Bool)

(assert (=> bs!1083232 m!5579909))

(assert (=> bs!1083232 m!5579813))

(assert (=> b!4681829 d!1488055))

(declare-fun d!1488059 () Bool)

(assert (=> d!1488059 true))

(assert (=> d!1488059 true))

(declare-fun lambda!205018 () Int)

(declare-fun forall!11243 (List!52401 Int) Bool)

(assert (=> d!1488059 (= (allKeysSameHash!1628 oldBucket!34 hash!405 hashF!1323) (forall!11243 oldBucket!34 lambda!205018))))

(declare-fun bs!1083233 () Bool)

(assert (= bs!1083233 d!1488059))

(declare-fun m!5579911 () Bool)

(assert (=> bs!1083233 m!5579911))

(assert (=> b!4681818 d!1488059))

(declare-fun d!1488061 () Bool)

(declare-fun lt!1841761 () List!52401)

(assert (=> d!1488061 (not (containsKey!2953 lt!1841761 key!4653))))

(declare-fun e!2921046 () List!52401)

(assert (=> d!1488061 (= lt!1841761 e!2921046)))

(declare-fun c!800784 () Bool)

(assert (=> d!1488061 (= c!800784 (and ((_ is Cons!52277) oldBucket!34) (= (_1!30095 (h!58494 oldBucket!34)) key!4653)))))

(assert (=> d!1488061 (noDuplicateKeys!1802 oldBucket!34)))

(assert (=> d!1488061 (= (removePairForKey!1397 oldBucket!34 key!4653) lt!1841761)))

(declare-fun b!4681856 () Bool)

(declare-fun e!2921045 () List!52401)

(assert (=> b!4681856 (= e!2921046 e!2921045)))

(declare-fun c!800785 () Bool)

(assert (=> b!4681856 (= c!800785 ((_ is Cons!52277) oldBucket!34))))

(declare-fun b!4681858 () Bool)

(assert (=> b!4681858 (= e!2921045 Nil!52277)))

(declare-fun b!4681855 () Bool)

(assert (=> b!4681855 (= e!2921046 (t!359561 oldBucket!34))))

(declare-fun b!4681857 () Bool)

(assert (=> b!4681857 (= e!2921045 (Cons!52277 (h!58494 oldBucket!34) (removePairForKey!1397 (t!359561 oldBucket!34) key!4653)))))

(assert (= (and d!1488061 c!800784) b!4681855))

(assert (= (and d!1488061 (not c!800784)) b!4681856))

(assert (= (and b!4681856 c!800785) b!4681857))

(assert (= (and b!4681856 (not c!800785)) b!4681858))

(declare-fun m!5579913 () Bool)

(assert (=> d!1488061 m!5579913))

(assert (=> d!1488061 m!5579783))

(declare-fun m!5579915 () Bool)

(assert (=> b!4681857 m!5579915))

(assert (=> b!4681809 d!1488061))

(declare-fun d!1488063 () Bool)

(declare-fun e!2921047 () Bool)

(assert (=> d!1488063 e!2921047))

(declare-fun res!1973267 () Bool)

(assert (=> d!1488063 (=> (not res!1973267) (not e!2921047))))

(declare-fun lt!1841762 () ListMap!4857)

(assert (=> d!1488063 (= res!1973267 (not (contains!15406 lt!1841762 key!4653)))))

(assert (=> d!1488063 (= lt!1841762 (ListMap!4858 (removePresrvNoDuplicatedKeys!334 (toList!5494 lt!1841733) key!4653)))))

(assert (=> d!1488063 (= (-!666 lt!1841733 key!4653) lt!1841762)))

(declare-fun b!4681859 () Bool)

(assert (=> b!4681859 (= e!2921047 (= ((_ map and) (content!9121 (keys!18632 lt!1841733)) ((_ map not) (store ((as const (Array K!13655 Bool)) false) key!4653 true))) (content!9121 (keys!18632 lt!1841762))))))

(assert (= (and d!1488063 res!1973267) b!4681859))

(declare-fun m!5579917 () Bool)

(assert (=> d!1488063 m!5579917))

(declare-fun m!5579919 () Bool)

(assert (=> d!1488063 m!5579919))

(declare-fun m!5579921 () Bool)

(assert (=> b!4681859 m!5579921))

(assert (=> b!4681859 m!5579921))

(declare-fun m!5579923 () Bool)

(assert (=> b!4681859 m!5579923))

(declare-fun m!5579925 () Bool)

(assert (=> b!4681859 m!5579925))

(declare-fun m!5579927 () Bool)

(assert (=> b!4681859 m!5579927))

(assert (=> b!4681859 m!5579925))

(assert (=> b!4681859 m!5579893))

(assert (=> b!4681819 d!1488063))

(declare-fun d!1488065 () Bool)

(declare-fun e!2921048 () Bool)

(assert (=> d!1488065 e!2921048))

(declare-fun res!1973268 () Bool)

(assert (=> d!1488065 (=> (not res!1973268) (not e!2921048))))

(declare-fun lt!1841763 () ListMap!4857)

(assert (=> d!1488065 (= res!1973268 (not (contains!15406 lt!1841763 key!4653)))))

(assert (=> d!1488065 (= lt!1841763 (ListMap!4858 (removePresrvNoDuplicatedKeys!334 (toList!5494 (+!2104 lt!1841737 (tuple2!53603 key!4653 (_2!30095 (h!58494 oldBucket!34))))) key!4653)))))

(assert (=> d!1488065 (= (-!666 (+!2104 lt!1841737 (tuple2!53603 key!4653 (_2!30095 (h!58494 oldBucket!34)))) key!4653) lt!1841763)))

(declare-fun b!4681860 () Bool)

(assert (=> b!4681860 (= e!2921048 (= ((_ map and) (content!9121 (keys!18632 (+!2104 lt!1841737 (tuple2!53603 key!4653 (_2!30095 (h!58494 oldBucket!34)))))) ((_ map not) (store ((as const (Array K!13655 Bool)) false) key!4653 true))) (content!9121 (keys!18632 lt!1841763))))))

(assert (= (and d!1488065 res!1973268) b!4681860))

(declare-fun m!5579929 () Bool)

(assert (=> d!1488065 m!5579929))

(declare-fun m!5579931 () Bool)

(assert (=> d!1488065 m!5579931))

(assert (=> b!4681860 m!5579827))

(declare-fun m!5579933 () Bool)

(assert (=> b!4681860 m!5579933))

(assert (=> b!4681860 m!5579933))

(declare-fun m!5579935 () Bool)

(assert (=> b!4681860 m!5579935))

(declare-fun m!5579937 () Bool)

(assert (=> b!4681860 m!5579937))

(declare-fun m!5579939 () Bool)

(assert (=> b!4681860 m!5579939))

(assert (=> b!4681860 m!5579937))

(assert (=> b!4681860 m!5579893))

(assert (=> b!4681819 d!1488065))

(declare-fun d!1488067 () Bool)

(declare-fun e!2921051 () Bool)

(assert (=> d!1488067 e!2921051))

(declare-fun res!1973273 () Bool)

(assert (=> d!1488067 (=> (not res!1973273) (not e!2921051))))

(declare-fun lt!1841775 () ListMap!4857)

(assert (=> d!1488067 (= res!1973273 (contains!15406 lt!1841775 (_1!30095 (tuple2!53603 key!4653 (_2!30095 (h!58494 oldBucket!34))))))))

(declare-fun lt!1841774 () List!52401)

(assert (=> d!1488067 (= lt!1841775 (ListMap!4858 lt!1841774))))

(declare-fun lt!1841773 () Unit!122879)

(declare-fun lt!1841772 () Unit!122879)

(assert (=> d!1488067 (= lt!1841773 lt!1841772)))

(declare-datatypes ((Option!11977 0))(
  ( (None!11976) (Some!11976 (v!46339 V!13901)) )
))
(declare-fun getValueByKey!1725 (List!52401 K!13655) Option!11977)

(assert (=> d!1488067 (= (getValueByKey!1725 lt!1841774 (_1!30095 (tuple2!53603 key!4653 (_2!30095 (h!58494 oldBucket!34))))) (Some!11976 (_2!30095 (tuple2!53603 key!4653 (_2!30095 (h!58494 oldBucket!34))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!984 (List!52401 K!13655 V!13901) Unit!122879)

(assert (=> d!1488067 (= lt!1841772 (lemmaContainsTupThenGetReturnValue!984 lt!1841774 (_1!30095 (tuple2!53603 key!4653 (_2!30095 (h!58494 oldBucket!34)))) (_2!30095 (tuple2!53603 key!4653 (_2!30095 (h!58494 oldBucket!34))))))))

(declare-fun insertNoDuplicatedKeys!492 (List!52401 K!13655 V!13901) List!52401)

(assert (=> d!1488067 (= lt!1841774 (insertNoDuplicatedKeys!492 (toList!5494 lt!1841737) (_1!30095 (tuple2!53603 key!4653 (_2!30095 (h!58494 oldBucket!34)))) (_2!30095 (tuple2!53603 key!4653 (_2!30095 (h!58494 oldBucket!34))))))))

(assert (=> d!1488067 (= (+!2104 lt!1841737 (tuple2!53603 key!4653 (_2!30095 (h!58494 oldBucket!34)))) lt!1841775)))

(declare-fun b!4681865 () Bool)

(declare-fun res!1973274 () Bool)

(assert (=> b!4681865 (=> (not res!1973274) (not e!2921051))))

(assert (=> b!4681865 (= res!1973274 (= (getValueByKey!1725 (toList!5494 lt!1841775) (_1!30095 (tuple2!53603 key!4653 (_2!30095 (h!58494 oldBucket!34))))) (Some!11976 (_2!30095 (tuple2!53603 key!4653 (_2!30095 (h!58494 oldBucket!34)))))))))

(declare-fun b!4681866 () Bool)

(declare-fun contains!15408 (List!52401 tuple2!53602) Bool)

(assert (=> b!4681866 (= e!2921051 (contains!15408 (toList!5494 lt!1841775) (tuple2!53603 key!4653 (_2!30095 (h!58494 oldBucket!34)))))))

(assert (= (and d!1488067 res!1973273) b!4681865))

(assert (= (and b!4681865 res!1973274) b!4681866))

(declare-fun m!5579941 () Bool)

(assert (=> d!1488067 m!5579941))

(declare-fun m!5579943 () Bool)

(assert (=> d!1488067 m!5579943))

(declare-fun m!5579945 () Bool)

(assert (=> d!1488067 m!5579945))

(declare-fun m!5579947 () Bool)

(assert (=> d!1488067 m!5579947))

(declare-fun m!5579949 () Bool)

(assert (=> b!4681865 m!5579949))

(declare-fun m!5579951 () Bool)

(assert (=> b!4681866 m!5579951))

(assert (=> b!4681819 d!1488067))

(declare-fun d!1488069 () Bool)

(assert (=> d!1488069 (= (-!666 (+!2104 lt!1841737 (tuple2!53603 key!4653 (_2!30095 (h!58494 oldBucket!34)))) key!4653) lt!1841737)))

(declare-fun lt!1841778 () Unit!122879)

(declare-fun choose!32411 (ListMap!4857 K!13655 V!13901) Unit!122879)

(assert (=> d!1488069 (= lt!1841778 (choose!32411 lt!1841737 key!4653 (_2!30095 (h!58494 oldBucket!34))))))

(assert (=> d!1488069 (not (contains!15406 lt!1841737 key!4653))))

(assert (=> d!1488069 (= (addThenRemoveForNewKeyIsSame!57 lt!1841737 key!4653 (_2!30095 (h!58494 oldBucket!34))) lt!1841778)))

(declare-fun bs!1083234 () Bool)

(assert (= bs!1083234 d!1488069))

(assert (=> bs!1083234 m!5579827))

(assert (=> bs!1083234 m!5579827))

(assert (=> bs!1083234 m!5579829))

(declare-fun m!5579953 () Bool)

(assert (=> bs!1083234 m!5579953))

(assert (=> bs!1083234 m!5579785))

(assert (=> b!4681819 d!1488069))

(declare-fun bs!1083235 () Bool)

(declare-fun d!1488071 () Bool)

(assert (= bs!1083235 (and d!1488071 d!1488059)))

(declare-fun lambda!205019 () Int)

(assert (=> bs!1083235 (= lambda!205019 lambda!205018)))

(assert (=> d!1488071 true))

(assert (=> d!1488071 true))

(assert (=> d!1488071 (= (allKeysSameHash!1628 newBucket!218 hash!405 hashF!1323) (forall!11243 newBucket!218 lambda!205019))))

(declare-fun bs!1083236 () Bool)

(assert (= bs!1083236 d!1488071))

(declare-fun m!5579955 () Bool)

(assert (=> bs!1083236 m!5579955))

(assert (=> b!4681826 d!1488071))

(declare-fun bs!1083237 () Bool)

(declare-fun d!1488073 () Bool)

(assert (= bs!1083237 (and d!1488073 start!472832)))

(declare-fun lambda!205022 () Int)

(assert (=> bs!1083237 (not (= lambda!205022 lambda!205015))))

(assert (=> d!1488073 true))

(assert (=> d!1488073 (= (allKeysSameHashInMap!1716 lm!2023 hashF!1323) (forall!11241 (toList!5493 lm!2023) lambda!205022))))

(declare-fun bs!1083238 () Bool)

(assert (= bs!1083238 d!1488073))

(declare-fun m!5579957 () Bool)

(assert (=> bs!1083238 m!5579957))

(assert (=> b!4681815 d!1488073))

(declare-fun d!1488075 () Bool)

(declare-fun res!1973279 () Bool)

(declare-fun e!2921058 () Bool)

(assert (=> d!1488075 (=> res!1973279 e!2921058)))

(assert (=> d!1488075 (= res!1973279 ((_ is Nil!52278) (Cons!52278 lt!1841725 lt!1841721)))))

(assert (=> d!1488075 (= (forall!11241 (Cons!52278 lt!1841725 lt!1841721) lambda!205015) e!2921058)))

(declare-fun b!4681877 () Bool)

(declare-fun e!2921059 () Bool)

(assert (=> b!4681877 (= e!2921058 e!2921059)))

(declare-fun res!1973280 () Bool)

(assert (=> b!4681877 (=> (not res!1973280) (not e!2921059))))

(declare-fun dynLambda!21685 (Int tuple2!53604) Bool)

(assert (=> b!4681877 (= res!1973280 (dynLambda!21685 lambda!205015 (h!58495 (Cons!52278 lt!1841725 lt!1841721))))))

(declare-fun b!4681878 () Bool)

(assert (=> b!4681878 (= e!2921059 (forall!11241 (t!359562 (Cons!52278 lt!1841725 lt!1841721)) lambda!205015))))

(assert (= (and d!1488075 (not res!1973279)) b!4681877))

(assert (= (and b!4681877 res!1973280) b!4681878))

(declare-fun b_lambda!176709 () Bool)

(assert (=> (not b_lambda!176709) (not b!4681877)))

(declare-fun m!5579959 () Bool)

(assert (=> b!4681877 m!5579959))

(declare-fun m!5579961 () Bool)

(assert (=> b!4681878 m!5579961))

(assert (=> b!4681817 d!1488075))

(declare-fun bs!1083242 () Bool)

(declare-fun d!1488077 () Bool)

(assert (= bs!1083242 (and d!1488077 start!472832)))

(declare-fun lambda!205057 () Int)

(assert (=> bs!1083242 (= lambda!205057 lambda!205015)))

(declare-fun bs!1083243 () Bool)

(assert (= bs!1083243 (and d!1488077 d!1488073)))

(assert (=> bs!1083243 (not (= lambda!205057 lambda!205022))))

(declare-fun lt!1841844 () ListMap!4857)

(declare-fun invariantList!1382 (List!52401) Bool)

(assert (=> d!1488077 (invariantList!1382 (toList!5494 lt!1841844))))

(declare-fun e!2921069 () ListMap!4857)

(assert (=> d!1488077 (= lt!1841844 e!2921069)))

(declare-fun c!800791 () Bool)

(assert (=> d!1488077 (= c!800791 ((_ is Cons!52278) (Cons!52278 lt!1841728 lt!1841721)))))

(assert (=> d!1488077 (forall!11241 (Cons!52278 lt!1841728 lt!1841721) lambda!205057)))

(assert (=> d!1488077 (= (extractMap!1828 (Cons!52278 lt!1841728 lt!1841721)) lt!1841844)))

(declare-fun b!4681896 () Bool)

(assert (=> b!4681896 (= e!2921069 (addToMapMapFromBucket!1234 (_2!30096 (h!58495 (Cons!52278 lt!1841728 lt!1841721))) (extractMap!1828 (t!359562 (Cons!52278 lt!1841728 lt!1841721)))))))

(declare-fun b!4681897 () Bool)

(assert (=> b!4681897 (= e!2921069 (ListMap!4858 Nil!52277))))

(assert (= (and d!1488077 c!800791) b!4681896))

(assert (= (and d!1488077 (not c!800791)) b!4681897))

(declare-fun m!5579967 () Bool)

(assert (=> d!1488077 m!5579967))

(declare-fun m!5579971 () Bool)

(assert (=> d!1488077 m!5579971))

(declare-fun m!5579977 () Bool)

(assert (=> b!4681896 m!5579977))

(assert (=> b!4681896 m!5579977))

(declare-fun m!5579989 () Bool)

(assert (=> b!4681896 m!5579989))

(assert (=> b!4681817 d!1488077))

(declare-fun d!1488079 () Bool)

(assert (=> d!1488079 (= (tail!8471 (toList!5493 lm!2023)) (t!359562 (toList!5493 lm!2023)))))

(assert (=> b!4681817 d!1488079))

(declare-fun bs!1083352 () Bool)

(declare-fun b!4682008 () Bool)

(assert (= bs!1083352 (and b!4682008 d!1488059)))

(declare-fun lambda!205113 () Int)

(assert (=> bs!1083352 (not (= lambda!205113 lambda!205018))))

(declare-fun bs!1083353 () Bool)

(assert (= bs!1083353 (and b!4682008 d!1488071)))

(assert (=> bs!1083353 (not (= lambda!205113 lambda!205019))))

(assert (=> b!4682008 true))

(declare-fun bs!1083354 () Bool)

(declare-fun b!4682006 () Bool)

(assert (= bs!1083354 (and b!4682006 d!1488059)))

(declare-fun lambda!205114 () Int)

(assert (=> bs!1083354 (not (= lambda!205114 lambda!205018))))

(declare-fun bs!1083355 () Bool)

(assert (= bs!1083355 (and b!4682006 d!1488071)))

(assert (=> bs!1083355 (not (= lambda!205114 lambda!205019))))

(declare-fun bs!1083356 () Bool)

(assert (= bs!1083356 (and b!4682006 b!4682008)))

(assert (=> bs!1083356 (= lambda!205114 lambda!205113)))

(assert (=> b!4682006 true))

(declare-fun lambda!205115 () Int)

(assert (=> bs!1083354 (not (= lambda!205115 lambda!205018))))

(assert (=> bs!1083355 (not (= lambda!205115 lambda!205019))))

(declare-fun lt!1842011 () ListMap!4857)

(assert (=> bs!1083356 (= (= lt!1842011 lt!1841731) (= lambda!205115 lambda!205113))))

(assert (=> b!4682006 (= (= lt!1842011 lt!1841731) (= lambda!205115 lambda!205114))))

(assert (=> b!4682006 true))

(declare-fun bs!1083357 () Bool)

(declare-fun d!1488083 () Bool)

(assert (= bs!1083357 (and d!1488083 b!4682006)))

(declare-fun lt!1842013 () ListMap!4857)

(declare-fun lambda!205116 () Int)

(assert (=> bs!1083357 (= (= lt!1842013 lt!1842011) (= lambda!205116 lambda!205115))))

(declare-fun bs!1083358 () Bool)

(assert (= bs!1083358 (and d!1488083 b!4682008)))

(assert (=> bs!1083358 (= (= lt!1842013 lt!1841731) (= lambda!205116 lambda!205113))))

(declare-fun bs!1083359 () Bool)

(assert (= bs!1083359 (and d!1488083 d!1488071)))

(assert (=> bs!1083359 (not (= lambda!205116 lambda!205019))))

(declare-fun bs!1083360 () Bool)

(assert (= bs!1083360 (and d!1488083 d!1488059)))

(assert (=> bs!1083360 (not (= lambda!205116 lambda!205018))))

(assert (=> bs!1083357 (= (= lt!1842013 lt!1841731) (= lambda!205116 lambda!205114))))

(assert (=> d!1488083 true))

(declare-fun call!327261 () Bool)

(declare-fun c!800815 () Bool)

(declare-fun bm!327255 () Bool)

(assert (=> bm!327255 (= call!327261 (forall!11243 (toList!5494 lt!1841731) (ite c!800815 lambda!205113 lambda!205114)))))

(declare-fun e!2921143 () ListMap!4857)

(assert (=> b!4682006 (= e!2921143 lt!1842011)))

(declare-fun lt!1842010 () ListMap!4857)

(assert (=> b!4682006 (= lt!1842010 (+!2104 lt!1841731 (h!58494 newBucket!218)))))

(assert (=> b!4682006 (= lt!1842011 (addToMapMapFromBucket!1234 (t!359561 newBucket!218) (+!2104 lt!1841731 (h!58494 newBucket!218))))))

(declare-fun lt!1842018 () Unit!122879)

(declare-fun call!327262 () Unit!122879)

(assert (=> b!4682006 (= lt!1842018 call!327262)))

(assert (=> b!4682006 call!327261))

(declare-fun lt!1842012 () Unit!122879)

(assert (=> b!4682006 (= lt!1842012 lt!1842018)))

(assert (=> b!4682006 (forall!11243 (toList!5494 lt!1842010) lambda!205115)))

(declare-fun lt!1842030 () Unit!122879)

(declare-fun Unit!122903 () Unit!122879)

(assert (=> b!4682006 (= lt!1842030 Unit!122903)))

(assert (=> b!4682006 (forall!11243 (t!359561 newBucket!218) lambda!205115)))

(declare-fun lt!1842022 () Unit!122879)

(declare-fun Unit!122904 () Unit!122879)

(assert (=> b!4682006 (= lt!1842022 Unit!122904)))

(declare-fun lt!1842024 () Unit!122879)

(declare-fun Unit!122905 () Unit!122879)

(assert (=> b!4682006 (= lt!1842024 Unit!122905)))

(declare-fun lt!1842021 () Unit!122879)

(declare-fun forallContained!3354 (List!52401 Int tuple2!53602) Unit!122879)

(assert (=> b!4682006 (= lt!1842021 (forallContained!3354 (toList!5494 lt!1842010) lambda!205115 (h!58494 newBucket!218)))))

(assert (=> b!4682006 (contains!15406 lt!1842010 (_1!30095 (h!58494 newBucket!218)))))

(declare-fun lt!1842026 () Unit!122879)

(declare-fun Unit!122906 () Unit!122879)

(assert (=> b!4682006 (= lt!1842026 Unit!122906)))

(assert (=> b!4682006 (contains!15406 lt!1842011 (_1!30095 (h!58494 newBucket!218)))))

(declare-fun lt!1842014 () Unit!122879)

(declare-fun Unit!122907 () Unit!122879)

(assert (=> b!4682006 (= lt!1842014 Unit!122907)))

(declare-fun call!327260 () Bool)

(assert (=> b!4682006 call!327260))

(declare-fun lt!1842019 () Unit!122879)

(declare-fun Unit!122908 () Unit!122879)

(assert (=> b!4682006 (= lt!1842019 Unit!122908)))

(assert (=> b!4682006 (forall!11243 (toList!5494 lt!1842010) lambda!205115)))

(declare-fun lt!1842016 () Unit!122879)

(declare-fun Unit!122909 () Unit!122879)

(assert (=> b!4682006 (= lt!1842016 Unit!122909)))

(declare-fun lt!1842023 () Unit!122879)

(declare-fun Unit!122910 () Unit!122879)

(assert (=> b!4682006 (= lt!1842023 Unit!122910)))

(declare-fun lt!1842028 () Unit!122879)

(declare-fun addForallContainsKeyThenBeforeAdding!669 (ListMap!4857 ListMap!4857 K!13655 V!13901) Unit!122879)

(assert (=> b!4682006 (= lt!1842028 (addForallContainsKeyThenBeforeAdding!669 lt!1841731 lt!1842011 (_1!30095 (h!58494 newBucket!218)) (_2!30095 (h!58494 newBucket!218))))))

(assert (=> b!4682006 (forall!11243 (toList!5494 lt!1841731) lambda!205115)))

(declare-fun lt!1842020 () Unit!122879)

(assert (=> b!4682006 (= lt!1842020 lt!1842028)))

(assert (=> b!4682006 (forall!11243 (toList!5494 lt!1841731) lambda!205115)))

(declare-fun lt!1842017 () Unit!122879)

(declare-fun Unit!122911 () Unit!122879)

(assert (=> b!4682006 (= lt!1842017 Unit!122911)))

(declare-fun res!1973347 () Bool)

(assert (=> b!4682006 (= res!1973347 (forall!11243 newBucket!218 lambda!205115))))

(declare-fun e!2921144 () Bool)

(assert (=> b!4682006 (=> (not res!1973347) (not e!2921144))))

(assert (=> b!4682006 e!2921144))

(declare-fun lt!1842029 () Unit!122879)

(declare-fun Unit!122912 () Unit!122879)

(assert (=> b!4682006 (= lt!1842029 Unit!122912)))

(declare-fun bm!327256 () Bool)

(assert (=> bm!327256 (= call!327260 (forall!11243 (ite c!800815 (toList!5494 lt!1841731) newBucket!218) (ite c!800815 lambda!205113 lambda!205115)))))

(declare-fun b!4682007 () Bool)

(declare-fun res!1973348 () Bool)

(declare-fun e!2921142 () Bool)

(assert (=> b!4682007 (=> (not res!1973348) (not e!2921142))))

(assert (=> b!4682007 (= res!1973348 (forall!11243 (toList!5494 lt!1841731) lambda!205116))))

(assert (=> b!4682008 (= e!2921143 lt!1841731)))

(declare-fun lt!1842027 () Unit!122879)

(assert (=> b!4682008 (= lt!1842027 call!327262)))

(assert (=> b!4682008 call!327261))

(declare-fun lt!1842025 () Unit!122879)

(assert (=> b!4682008 (= lt!1842025 lt!1842027)))

(assert (=> b!4682008 call!327260))

(declare-fun lt!1842015 () Unit!122879)

(declare-fun Unit!122913 () Unit!122879)

(assert (=> b!4682008 (= lt!1842015 Unit!122913)))

(declare-fun bm!327257 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!670 (ListMap!4857) Unit!122879)

(assert (=> bm!327257 (= call!327262 (lemmaContainsAllItsOwnKeys!670 lt!1841731))))

(declare-fun b!4682010 () Bool)

(assert (=> b!4682010 (= e!2921142 (invariantList!1382 (toList!5494 lt!1842013)))))

(assert (=> d!1488083 e!2921142))

(declare-fun res!1973346 () Bool)

(assert (=> d!1488083 (=> (not res!1973346) (not e!2921142))))

(assert (=> d!1488083 (= res!1973346 (forall!11243 newBucket!218 lambda!205116))))

(assert (=> d!1488083 (= lt!1842013 e!2921143)))

(assert (=> d!1488083 (= c!800815 ((_ is Nil!52277) newBucket!218))))

(assert (=> d!1488083 (noDuplicateKeys!1802 newBucket!218)))

(assert (=> d!1488083 (= (addToMapMapFromBucket!1234 newBucket!218 lt!1841731) lt!1842013)))

(declare-fun b!4682009 () Bool)

(assert (=> b!4682009 (= e!2921144 (forall!11243 (toList!5494 lt!1841731) lambda!205115))))

(assert (= (and d!1488083 c!800815) b!4682008))

(assert (= (and d!1488083 (not c!800815)) b!4682006))

(assert (= (and b!4682006 res!1973347) b!4682009))

(assert (= (or b!4682008 b!4682006) bm!327257))

(assert (= (or b!4682008 b!4682006) bm!327255))

(assert (= (or b!4682008 b!4682006) bm!327256))

(assert (= (and d!1488083 res!1973346) b!4682007))

(assert (= (and b!4682007 res!1973348) b!4682010))

(declare-fun m!5580295 () Bool)

(assert (=> d!1488083 m!5580295))

(assert (=> d!1488083 m!5579837))

(declare-fun m!5580299 () Bool)

(assert (=> b!4682009 m!5580299))

(declare-fun m!5580301 () Bool)

(assert (=> b!4682006 m!5580301))

(declare-fun m!5580303 () Bool)

(assert (=> b!4682006 m!5580303))

(declare-fun m!5580305 () Bool)

(assert (=> b!4682006 m!5580305))

(assert (=> b!4682006 m!5580305))

(declare-fun m!5580307 () Bool)

(assert (=> b!4682006 m!5580307))

(declare-fun m!5580309 () Bool)

(assert (=> b!4682006 m!5580309))

(assert (=> b!4682006 m!5580301))

(declare-fun m!5580311 () Bool)

(assert (=> b!4682006 m!5580311))

(declare-fun m!5580315 () Bool)

(assert (=> b!4682006 m!5580315))

(declare-fun m!5580319 () Bool)

(assert (=> b!4682006 m!5580319))

(declare-fun m!5580321 () Bool)

(assert (=> b!4682006 m!5580321))

(assert (=> b!4682006 m!5580299))

(assert (=> b!4682006 m!5580299))

(declare-fun m!5580323 () Bool)

(assert (=> b!4682007 m!5580323))

(declare-fun m!5580325 () Bool)

(assert (=> bm!327255 m!5580325))

(declare-fun m!5580327 () Bool)

(assert (=> bm!327257 m!5580327))

(declare-fun m!5580329 () Bool)

(assert (=> b!4682010 m!5580329))

(declare-fun m!5580331 () Bool)

(assert (=> bm!327256 m!5580331))

(assert (=> b!4681827 d!1488083))

(declare-fun bs!1083362 () Bool)

(declare-fun b!4682017 () Bool)

(assert (= bs!1083362 (and b!4682017 b!4682006)))

(declare-fun lambda!205117 () Int)

(assert (=> bs!1083362 (= (= lt!1841731 lt!1842011) (= lambda!205117 lambda!205115))))

(declare-fun bs!1083363 () Bool)

(assert (= bs!1083363 (and b!4682017 b!4682008)))

(assert (=> bs!1083363 (= lambda!205117 lambda!205113)))

(declare-fun bs!1083364 () Bool)

(assert (= bs!1083364 (and b!4682017 d!1488083)))

(assert (=> bs!1083364 (= (= lt!1841731 lt!1842013) (= lambda!205117 lambda!205116))))

(declare-fun bs!1083365 () Bool)

(assert (= bs!1083365 (and b!4682017 d!1488071)))

(assert (=> bs!1083365 (not (= lambda!205117 lambda!205019))))

(declare-fun bs!1083366 () Bool)

(assert (= bs!1083366 (and b!4682017 d!1488059)))

(assert (=> bs!1083366 (not (= lambda!205117 lambda!205018))))

(assert (=> bs!1083362 (= lambda!205117 lambda!205114)))

(assert (=> b!4682017 true))

(declare-fun bs!1083367 () Bool)

(declare-fun b!4682015 () Bool)

(assert (= bs!1083367 (and b!4682015 b!4682006)))

(declare-fun lambda!205118 () Int)

(assert (=> bs!1083367 (= (= lt!1841731 lt!1842011) (= lambda!205118 lambda!205115))))

(declare-fun bs!1083368 () Bool)

(assert (= bs!1083368 (and b!4682015 b!4682008)))

(assert (=> bs!1083368 (= lambda!205118 lambda!205113)))

(declare-fun bs!1083369 () Bool)

(assert (= bs!1083369 (and b!4682015 d!1488083)))

(assert (=> bs!1083369 (= (= lt!1841731 lt!1842013) (= lambda!205118 lambda!205116))))

(declare-fun bs!1083370 () Bool)

(assert (= bs!1083370 (and b!4682015 d!1488071)))

(assert (=> bs!1083370 (not (= lambda!205118 lambda!205019))))

(declare-fun bs!1083371 () Bool)

(assert (= bs!1083371 (and b!4682015 b!4682017)))

(assert (=> bs!1083371 (= lambda!205118 lambda!205117)))

(declare-fun bs!1083372 () Bool)

(assert (= bs!1083372 (and b!4682015 d!1488059)))

(assert (=> bs!1083372 (not (= lambda!205118 lambda!205018))))

(assert (=> bs!1083367 (= lambda!205118 lambda!205114)))

(assert (=> b!4682015 true))

(declare-fun lambda!205119 () Int)

(declare-fun lt!1842035 () ListMap!4857)

(assert (=> bs!1083367 (= (= lt!1842035 lt!1842011) (= lambda!205119 lambda!205115))))

(assert (=> bs!1083368 (= (= lt!1842035 lt!1841731) (= lambda!205119 lambda!205113))))

(assert (=> b!4682015 (= (= lt!1842035 lt!1841731) (= lambda!205119 lambda!205118))))

(assert (=> bs!1083369 (= (= lt!1842035 lt!1842013) (= lambda!205119 lambda!205116))))

(assert (=> bs!1083370 (not (= lambda!205119 lambda!205019))))

(assert (=> bs!1083371 (= (= lt!1842035 lt!1841731) (= lambda!205119 lambda!205117))))

(assert (=> bs!1083372 (not (= lambda!205119 lambda!205018))))

(assert (=> bs!1083367 (= (= lt!1842035 lt!1841731) (= lambda!205119 lambda!205114))))

(assert (=> b!4682015 true))

(declare-fun bs!1083373 () Bool)

(declare-fun d!1488157 () Bool)

(assert (= bs!1083373 (and d!1488157 b!4682006)))

(declare-fun lambda!205120 () Int)

(declare-fun lt!1842037 () ListMap!4857)

(assert (=> bs!1083373 (= (= lt!1842037 lt!1842011) (= lambda!205120 lambda!205115))))

(declare-fun bs!1083374 () Bool)

(assert (= bs!1083374 (and d!1488157 b!4682008)))

(assert (=> bs!1083374 (= (= lt!1842037 lt!1841731) (= lambda!205120 lambda!205113))))

(declare-fun bs!1083375 () Bool)

(assert (= bs!1083375 (and d!1488157 b!4682015)))

(assert (=> bs!1083375 (= (= lt!1842037 lt!1842035) (= lambda!205120 lambda!205119))))

(assert (=> bs!1083375 (= (= lt!1842037 lt!1841731) (= lambda!205120 lambda!205118))))

(declare-fun bs!1083376 () Bool)

(assert (= bs!1083376 (and d!1488157 d!1488083)))

(assert (=> bs!1083376 (= (= lt!1842037 lt!1842013) (= lambda!205120 lambda!205116))))

(declare-fun bs!1083377 () Bool)

(assert (= bs!1083377 (and d!1488157 d!1488071)))

(assert (=> bs!1083377 (not (= lambda!205120 lambda!205019))))

(declare-fun bs!1083378 () Bool)

(assert (= bs!1083378 (and d!1488157 b!4682017)))

(assert (=> bs!1083378 (= (= lt!1842037 lt!1841731) (= lambda!205120 lambda!205117))))

(declare-fun bs!1083379 () Bool)

(assert (= bs!1083379 (and d!1488157 d!1488059)))

(assert (=> bs!1083379 (not (= lambda!205120 lambda!205018))))

(assert (=> bs!1083373 (= (= lt!1842037 lt!1841731) (= lambda!205120 lambda!205114))))

(assert (=> d!1488157 true))

(declare-fun c!800816 () Bool)

(declare-fun call!327264 () Bool)

(declare-fun bm!327258 () Bool)

(assert (=> bm!327258 (= call!327264 (forall!11243 (toList!5494 lt!1841731) (ite c!800816 lambda!205117 lambda!205118)))))

(declare-fun e!2921148 () ListMap!4857)

(assert (=> b!4682015 (= e!2921148 lt!1842035)))

(declare-fun lt!1842034 () ListMap!4857)

(assert (=> b!4682015 (= lt!1842034 (+!2104 lt!1841731 (h!58494 lt!1841722)))))

(assert (=> b!4682015 (= lt!1842035 (addToMapMapFromBucket!1234 (t!359561 lt!1841722) (+!2104 lt!1841731 (h!58494 lt!1841722))))))

(declare-fun lt!1842042 () Unit!122879)

(declare-fun call!327265 () Unit!122879)

(assert (=> b!4682015 (= lt!1842042 call!327265)))

(assert (=> b!4682015 call!327264))

(declare-fun lt!1842036 () Unit!122879)

(assert (=> b!4682015 (= lt!1842036 lt!1842042)))

(assert (=> b!4682015 (forall!11243 (toList!5494 lt!1842034) lambda!205119)))

(declare-fun lt!1842054 () Unit!122879)

(declare-fun Unit!122925 () Unit!122879)

(assert (=> b!4682015 (= lt!1842054 Unit!122925)))

(assert (=> b!4682015 (forall!11243 (t!359561 lt!1841722) lambda!205119)))

(declare-fun lt!1842046 () Unit!122879)

(declare-fun Unit!122926 () Unit!122879)

(assert (=> b!4682015 (= lt!1842046 Unit!122926)))

(declare-fun lt!1842048 () Unit!122879)

(declare-fun Unit!122927 () Unit!122879)

(assert (=> b!4682015 (= lt!1842048 Unit!122927)))

(declare-fun lt!1842045 () Unit!122879)

(assert (=> b!4682015 (= lt!1842045 (forallContained!3354 (toList!5494 lt!1842034) lambda!205119 (h!58494 lt!1841722)))))

(assert (=> b!4682015 (contains!15406 lt!1842034 (_1!30095 (h!58494 lt!1841722)))))

(declare-fun lt!1842050 () Unit!122879)

(declare-fun Unit!122928 () Unit!122879)

(assert (=> b!4682015 (= lt!1842050 Unit!122928)))

(assert (=> b!4682015 (contains!15406 lt!1842035 (_1!30095 (h!58494 lt!1841722)))))

(declare-fun lt!1842038 () Unit!122879)

(declare-fun Unit!122929 () Unit!122879)

(assert (=> b!4682015 (= lt!1842038 Unit!122929)))

(declare-fun call!327263 () Bool)

(assert (=> b!4682015 call!327263))

(declare-fun lt!1842043 () Unit!122879)

(declare-fun Unit!122930 () Unit!122879)

(assert (=> b!4682015 (= lt!1842043 Unit!122930)))

(assert (=> b!4682015 (forall!11243 (toList!5494 lt!1842034) lambda!205119)))

(declare-fun lt!1842040 () Unit!122879)

(declare-fun Unit!122931 () Unit!122879)

(assert (=> b!4682015 (= lt!1842040 Unit!122931)))

(declare-fun lt!1842047 () Unit!122879)

(declare-fun Unit!122932 () Unit!122879)

(assert (=> b!4682015 (= lt!1842047 Unit!122932)))

(declare-fun lt!1842052 () Unit!122879)

(assert (=> b!4682015 (= lt!1842052 (addForallContainsKeyThenBeforeAdding!669 lt!1841731 lt!1842035 (_1!30095 (h!58494 lt!1841722)) (_2!30095 (h!58494 lt!1841722))))))

(assert (=> b!4682015 (forall!11243 (toList!5494 lt!1841731) lambda!205119)))

(declare-fun lt!1842044 () Unit!122879)

(assert (=> b!4682015 (= lt!1842044 lt!1842052)))

(assert (=> b!4682015 (forall!11243 (toList!5494 lt!1841731) lambda!205119)))

(declare-fun lt!1842041 () Unit!122879)

(declare-fun Unit!122933 () Unit!122879)

(assert (=> b!4682015 (= lt!1842041 Unit!122933)))

(declare-fun res!1973352 () Bool)

(assert (=> b!4682015 (= res!1973352 (forall!11243 lt!1841722 lambda!205119))))

(declare-fun e!2921149 () Bool)

(assert (=> b!4682015 (=> (not res!1973352) (not e!2921149))))

(assert (=> b!4682015 e!2921149))

(declare-fun lt!1842053 () Unit!122879)

(declare-fun Unit!122934 () Unit!122879)

(assert (=> b!4682015 (= lt!1842053 Unit!122934)))

(declare-fun bm!327259 () Bool)

(assert (=> bm!327259 (= call!327263 (forall!11243 (ite c!800816 (toList!5494 lt!1841731) lt!1841722) (ite c!800816 lambda!205117 lambda!205119)))))

(declare-fun b!4682016 () Bool)

(declare-fun res!1973353 () Bool)

(declare-fun e!2921147 () Bool)

(assert (=> b!4682016 (=> (not res!1973353) (not e!2921147))))

(assert (=> b!4682016 (= res!1973353 (forall!11243 (toList!5494 lt!1841731) lambda!205120))))

(assert (=> b!4682017 (= e!2921148 lt!1841731)))

(declare-fun lt!1842051 () Unit!122879)

(assert (=> b!4682017 (= lt!1842051 call!327265)))

(assert (=> b!4682017 call!327264))

(declare-fun lt!1842049 () Unit!122879)

(assert (=> b!4682017 (= lt!1842049 lt!1842051)))

(assert (=> b!4682017 call!327263))

(declare-fun lt!1842039 () Unit!122879)

(declare-fun Unit!122935 () Unit!122879)

(assert (=> b!4682017 (= lt!1842039 Unit!122935)))

(declare-fun bm!327260 () Bool)

(assert (=> bm!327260 (= call!327265 (lemmaContainsAllItsOwnKeys!670 lt!1841731))))

(declare-fun b!4682019 () Bool)

(assert (=> b!4682019 (= e!2921147 (invariantList!1382 (toList!5494 lt!1842037)))))

(assert (=> d!1488157 e!2921147))

(declare-fun res!1973351 () Bool)

(assert (=> d!1488157 (=> (not res!1973351) (not e!2921147))))

(assert (=> d!1488157 (= res!1973351 (forall!11243 lt!1841722 lambda!205120))))

(assert (=> d!1488157 (= lt!1842037 e!2921148)))

(assert (=> d!1488157 (= c!800816 ((_ is Nil!52277) lt!1841722))))

(assert (=> d!1488157 (noDuplicateKeys!1802 lt!1841722)))

(assert (=> d!1488157 (= (addToMapMapFromBucket!1234 lt!1841722 lt!1841731) lt!1842037)))

(declare-fun b!4682018 () Bool)

(assert (=> b!4682018 (= e!2921149 (forall!11243 (toList!5494 lt!1841731) lambda!205119))))

(assert (= (and d!1488157 c!800816) b!4682017))

(assert (= (and d!1488157 (not c!800816)) b!4682015))

(assert (= (and b!4682015 res!1973352) b!4682018))

(assert (= (or b!4682017 b!4682015) bm!327260))

(assert (= (or b!4682017 b!4682015) bm!327258))

(assert (= (or b!4682017 b!4682015) bm!327259))

(assert (= (and d!1488157 res!1973351) b!4682016))

(assert (= (and b!4682016 res!1973353) b!4682019))

(declare-fun m!5580337 () Bool)

(assert (=> d!1488157 m!5580337))

(declare-fun m!5580339 () Bool)

(assert (=> d!1488157 m!5580339))

(declare-fun m!5580341 () Bool)

(assert (=> b!4682018 m!5580341))

(declare-fun m!5580343 () Bool)

(assert (=> b!4682015 m!5580343))

(declare-fun m!5580345 () Bool)

(assert (=> b!4682015 m!5580345))

(declare-fun m!5580347 () Bool)

(assert (=> b!4682015 m!5580347))

(assert (=> b!4682015 m!5580347))

(declare-fun m!5580349 () Bool)

(assert (=> b!4682015 m!5580349))

(declare-fun m!5580351 () Bool)

(assert (=> b!4682015 m!5580351))

(assert (=> b!4682015 m!5580343))

(declare-fun m!5580353 () Bool)

(assert (=> b!4682015 m!5580353))

(declare-fun m!5580355 () Bool)

(assert (=> b!4682015 m!5580355))

(declare-fun m!5580357 () Bool)

(assert (=> b!4682015 m!5580357))

(declare-fun m!5580359 () Bool)

(assert (=> b!4682015 m!5580359))

(assert (=> b!4682015 m!5580341))

(assert (=> b!4682015 m!5580341))

(declare-fun m!5580361 () Bool)

(assert (=> b!4682016 m!5580361))

(declare-fun m!5580363 () Bool)

(assert (=> bm!327258 m!5580363))

(assert (=> bm!327260 m!5580327))

(declare-fun m!5580365 () Bool)

(assert (=> b!4682019 m!5580365))

(declare-fun m!5580367 () Bool)

(assert (=> bm!327259 m!5580367))

(assert (=> b!4681827 d!1488157))

(declare-fun d!1488161 () Bool)

(declare-fun e!2921188 () Bool)

(assert (=> d!1488161 e!2921188))

(declare-fun res!1973366 () Bool)

(assert (=> d!1488161 (=> res!1973366 e!2921188)))

(declare-fun e!2921186 () Bool)

(assert (=> d!1488161 (= res!1973366 e!2921186)))

(declare-fun res!1973368 () Bool)

(assert (=> d!1488161 (=> (not res!1973368) (not e!2921186))))

(declare-fun lt!1842107 () Bool)

(assert (=> d!1488161 (= res!1973368 (not lt!1842107))))

(declare-fun lt!1842106 () Bool)

(assert (=> d!1488161 (= lt!1842107 lt!1842106)))

(declare-fun lt!1842110 () Unit!122879)

(declare-fun e!2921190 () Unit!122879)

(assert (=> d!1488161 (= lt!1842110 e!2921190)))

(declare-fun c!800835 () Bool)

(assert (=> d!1488161 (= c!800835 lt!1842106)))

(declare-fun containsKey!2954 (List!52401 K!13655) Bool)

(assert (=> d!1488161 (= lt!1842106 (containsKey!2954 (toList!5494 lt!1841737) key!4653))))

(assert (=> d!1488161 (= (contains!15406 lt!1841737 key!4653) lt!1842107)))

(declare-fun bm!327267 () Bool)

(declare-fun call!327272 () Bool)

(declare-fun e!2921191 () List!52403)

(declare-fun contains!15409 (List!52403 K!13655) Bool)

(assert (=> bm!327267 (= call!327272 (contains!15409 e!2921191 key!4653))))

(declare-fun c!800837 () Bool)

(assert (=> bm!327267 (= c!800837 c!800835)))

(declare-fun b!4682079 () Bool)

(declare-fun e!2921187 () Bool)

(assert (=> b!4682079 (= e!2921188 e!2921187)))

(declare-fun res!1973367 () Bool)

(assert (=> b!4682079 (=> (not res!1973367) (not e!2921187))))

(declare-fun isDefined!9231 (Option!11977) Bool)

(assert (=> b!4682079 (= res!1973367 (isDefined!9231 (getValueByKey!1725 (toList!5494 lt!1841737) key!4653)))))

(declare-fun b!4682080 () Bool)

(assert (=> b!4682080 (= e!2921187 (contains!15409 (keys!18632 lt!1841737) key!4653))))

(declare-fun b!4682081 () Bool)

(assert (=> b!4682081 (= e!2921191 (keys!18632 lt!1841737))))

(declare-fun b!4682082 () Bool)

(declare-fun e!2921189 () Unit!122879)

(declare-fun Unit!122940 () Unit!122879)

(assert (=> b!4682082 (= e!2921189 Unit!122940)))

(declare-fun b!4682083 () Bool)

(declare-fun getKeysList!821 (List!52401) List!52403)

(assert (=> b!4682083 (= e!2921191 (getKeysList!821 (toList!5494 lt!1841737)))))

(declare-fun b!4682084 () Bool)

(assert (=> b!4682084 (= e!2921190 e!2921189)))

(declare-fun c!800836 () Bool)

(assert (=> b!4682084 (= c!800836 call!327272)))

(declare-fun b!4682085 () Bool)

(assert (=> b!4682085 false))

(declare-fun lt!1842112 () Unit!122879)

(declare-fun lt!1842111 () Unit!122879)

(assert (=> b!4682085 (= lt!1842112 lt!1842111)))

(assert (=> b!4682085 (containsKey!2954 (toList!5494 lt!1841737) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!820 (List!52401 K!13655) Unit!122879)

(assert (=> b!4682085 (= lt!1842111 (lemmaInGetKeysListThenContainsKey!820 (toList!5494 lt!1841737) key!4653))))

(declare-fun Unit!122945 () Unit!122879)

(assert (=> b!4682085 (= e!2921189 Unit!122945)))

(declare-fun b!4682086 () Bool)

(declare-fun lt!1842109 () Unit!122879)

(assert (=> b!4682086 (= e!2921190 lt!1842109)))

(declare-fun lt!1842108 () Unit!122879)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1616 (List!52401 K!13655) Unit!122879)

(assert (=> b!4682086 (= lt!1842108 (lemmaContainsKeyImpliesGetValueByKeyDefined!1616 (toList!5494 lt!1841737) key!4653))))

(assert (=> b!4682086 (isDefined!9231 (getValueByKey!1725 (toList!5494 lt!1841737) key!4653))))

(declare-fun lt!1842105 () Unit!122879)

(assert (=> b!4682086 (= lt!1842105 lt!1842108)))

(declare-fun lemmaInListThenGetKeysListContains!816 (List!52401 K!13655) Unit!122879)

(assert (=> b!4682086 (= lt!1842109 (lemmaInListThenGetKeysListContains!816 (toList!5494 lt!1841737) key!4653))))

(assert (=> b!4682086 call!327272))

(declare-fun b!4682087 () Bool)

(assert (=> b!4682087 (= e!2921186 (not (contains!15409 (keys!18632 lt!1841737) key!4653)))))

(assert (= (and d!1488161 c!800835) b!4682086))

(assert (= (and d!1488161 (not c!800835)) b!4682084))

(assert (= (and b!4682084 c!800836) b!4682085))

(assert (= (and b!4682084 (not c!800836)) b!4682082))

(assert (= (or b!4682086 b!4682084) bm!327267))

(assert (= (and bm!327267 c!800837) b!4682083))

(assert (= (and bm!327267 (not c!800837)) b!4682081))

(assert (= (and d!1488161 res!1973368) b!4682087))

(assert (= (and d!1488161 (not res!1973366)) b!4682079))

(assert (= (and b!4682079 res!1973367) b!4682080))

(declare-fun m!5580443 () Bool)

(assert (=> b!4682087 m!5580443))

(assert (=> b!4682087 m!5580443))

(declare-fun m!5580445 () Bool)

(assert (=> b!4682087 m!5580445))

(assert (=> b!4682081 m!5580443))

(declare-fun m!5580447 () Bool)

(assert (=> b!4682086 m!5580447))

(declare-fun m!5580449 () Bool)

(assert (=> b!4682086 m!5580449))

(assert (=> b!4682086 m!5580449))

(declare-fun m!5580451 () Bool)

(assert (=> b!4682086 m!5580451))

(declare-fun m!5580453 () Bool)

(assert (=> b!4682086 m!5580453))

(declare-fun m!5580455 () Bool)

(assert (=> bm!327267 m!5580455))

(declare-fun m!5580457 () Bool)

(assert (=> d!1488161 m!5580457))

(assert (=> b!4682079 m!5580449))

(assert (=> b!4682079 m!5580449))

(assert (=> b!4682079 m!5580451))

(assert (=> b!4682080 m!5580443))

(assert (=> b!4682080 m!5580443))

(assert (=> b!4682080 m!5580445))

(assert (=> b!4682085 m!5580457))

(declare-fun m!5580459 () Bool)

(assert (=> b!4682085 m!5580459))

(declare-fun m!5580461 () Bool)

(assert (=> b!4682083 m!5580461))

(assert (=> b!4681816 d!1488161))

(declare-fun d!1488179 () Bool)

(declare-fun e!2921194 () Bool)

(assert (=> d!1488179 e!2921194))

(declare-fun res!1973369 () Bool)

(assert (=> d!1488179 (=> res!1973369 e!2921194)))

(declare-fun e!2921192 () Bool)

(assert (=> d!1488179 (= res!1973369 e!2921192)))

(declare-fun res!1973371 () Bool)

(assert (=> d!1488179 (=> (not res!1973371) (not e!2921192))))

(declare-fun lt!1842115 () Bool)

(assert (=> d!1488179 (= res!1973371 (not lt!1842115))))

(declare-fun lt!1842114 () Bool)

(assert (=> d!1488179 (= lt!1842115 lt!1842114)))

(declare-fun lt!1842118 () Unit!122879)

(declare-fun e!2921196 () Unit!122879)

(assert (=> d!1488179 (= lt!1842118 e!2921196)))

(declare-fun c!800838 () Bool)

(assert (=> d!1488179 (= c!800838 lt!1842114)))

(assert (=> d!1488179 (= lt!1842114 (containsKey!2954 (toList!5494 lt!1841736) key!4653))))

(assert (=> d!1488179 (= (contains!15406 lt!1841736 key!4653) lt!1842115)))

(declare-fun bm!327268 () Bool)

(declare-fun call!327273 () Bool)

(declare-fun e!2921197 () List!52403)

(assert (=> bm!327268 (= call!327273 (contains!15409 e!2921197 key!4653))))

(declare-fun c!800840 () Bool)

(assert (=> bm!327268 (= c!800840 c!800838)))

(declare-fun b!4682088 () Bool)

(declare-fun e!2921193 () Bool)

(assert (=> b!4682088 (= e!2921194 e!2921193)))

(declare-fun res!1973370 () Bool)

(assert (=> b!4682088 (=> (not res!1973370) (not e!2921193))))

(assert (=> b!4682088 (= res!1973370 (isDefined!9231 (getValueByKey!1725 (toList!5494 lt!1841736) key!4653)))))

(declare-fun b!4682089 () Bool)

(assert (=> b!4682089 (= e!2921193 (contains!15409 (keys!18632 lt!1841736) key!4653))))

(declare-fun b!4682090 () Bool)

(assert (=> b!4682090 (= e!2921197 (keys!18632 lt!1841736))))

(declare-fun b!4682091 () Bool)

(declare-fun e!2921195 () Unit!122879)

(declare-fun Unit!122949 () Unit!122879)

(assert (=> b!4682091 (= e!2921195 Unit!122949)))

(declare-fun b!4682092 () Bool)

(assert (=> b!4682092 (= e!2921197 (getKeysList!821 (toList!5494 lt!1841736)))))

(declare-fun b!4682093 () Bool)

(assert (=> b!4682093 (= e!2921196 e!2921195)))

(declare-fun c!800839 () Bool)

(assert (=> b!4682093 (= c!800839 call!327273)))

(declare-fun b!4682094 () Bool)

(assert (=> b!4682094 false))

(declare-fun lt!1842120 () Unit!122879)

(declare-fun lt!1842119 () Unit!122879)

(assert (=> b!4682094 (= lt!1842120 lt!1842119)))

(assert (=> b!4682094 (containsKey!2954 (toList!5494 lt!1841736) key!4653)))

(assert (=> b!4682094 (= lt!1842119 (lemmaInGetKeysListThenContainsKey!820 (toList!5494 lt!1841736) key!4653))))

(declare-fun Unit!122950 () Unit!122879)

(assert (=> b!4682094 (= e!2921195 Unit!122950)))

(declare-fun b!4682095 () Bool)

(declare-fun lt!1842117 () Unit!122879)

(assert (=> b!4682095 (= e!2921196 lt!1842117)))

(declare-fun lt!1842116 () Unit!122879)

(assert (=> b!4682095 (= lt!1842116 (lemmaContainsKeyImpliesGetValueByKeyDefined!1616 (toList!5494 lt!1841736) key!4653))))

(assert (=> b!4682095 (isDefined!9231 (getValueByKey!1725 (toList!5494 lt!1841736) key!4653))))

(declare-fun lt!1842113 () Unit!122879)

(assert (=> b!4682095 (= lt!1842113 lt!1842116)))

(assert (=> b!4682095 (= lt!1842117 (lemmaInListThenGetKeysListContains!816 (toList!5494 lt!1841736) key!4653))))

(assert (=> b!4682095 call!327273))

(declare-fun b!4682096 () Bool)

(assert (=> b!4682096 (= e!2921192 (not (contains!15409 (keys!18632 lt!1841736) key!4653)))))

(assert (= (and d!1488179 c!800838) b!4682095))

(assert (= (and d!1488179 (not c!800838)) b!4682093))

(assert (= (and b!4682093 c!800839) b!4682094))

(assert (= (and b!4682093 (not c!800839)) b!4682091))

(assert (= (or b!4682095 b!4682093) bm!327268))

(assert (= (and bm!327268 c!800840) b!4682092))

(assert (= (and bm!327268 (not c!800840)) b!4682090))

(assert (= (and d!1488179 res!1973371) b!4682096))

(assert (= (and d!1488179 (not res!1973369)) b!4682088))

(assert (= (and b!4682088 res!1973370) b!4682089))

(declare-fun m!5580463 () Bool)

(assert (=> b!4682096 m!5580463))

(assert (=> b!4682096 m!5580463))

(declare-fun m!5580465 () Bool)

(assert (=> b!4682096 m!5580465))

(assert (=> b!4682090 m!5580463))

(declare-fun m!5580467 () Bool)

(assert (=> b!4682095 m!5580467))

(declare-fun m!5580469 () Bool)

(assert (=> b!4682095 m!5580469))

(assert (=> b!4682095 m!5580469))

(declare-fun m!5580471 () Bool)

(assert (=> b!4682095 m!5580471))

(declare-fun m!5580473 () Bool)

(assert (=> b!4682095 m!5580473))

(declare-fun m!5580475 () Bool)

(assert (=> bm!327268 m!5580475))

(declare-fun m!5580477 () Bool)

(assert (=> d!1488179 m!5580477))

(assert (=> b!4682088 m!5580469))

(assert (=> b!4682088 m!5580469))

(assert (=> b!4682088 m!5580471))

(assert (=> b!4682089 m!5580463))

(assert (=> b!4682089 m!5580463))

(assert (=> b!4682089 m!5580465))

(assert (=> b!4682094 m!5580477))

(declare-fun m!5580479 () Bool)

(assert (=> b!4682094 m!5580479))

(declare-fun m!5580481 () Bool)

(assert (=> b!4682092 m!5580481))

(assert (=> b!4681816 d!1488179))

(declare-fun bs!1083458 () Bool)

(declare-fun d!1488181 () Bool)

(assert (= bs!1083458 (and d!1488181 start!472832)))

(declare-fun lambda!205130 () Int)

(assert (=> bs!1083458 (= lambda!205130 lambda!205015)))

(declare-fun bs!1083459 () Bool)

(assert (= bs!1083459 (and d!1488181 d!1488073)))

(assert (=> bs!1083459 (not (= lambda!205130 lambda!205022))))

(declare-fun bs!1083460 () Bool)

(assert (= bs!1083460 (and d!1488181 d!1488077)))

(assert (=> bs!1083460 (= lambda!205130 lambda!205057)))

(assert (=> d!1488181 (not (contains!15406 (extractMap!1828 (toList!5493 (ListLongMap!4024 lt!1841738))) key!4653))))

(declare-fun lt!1842123 () Unit!122879)

(declare-fun choose!32412 (ListLongMap!4023 K!13655 Hashable!6171) Unit!122879)

(assert (=> d!1488181 (= lt!1842123 (choose!32412 (ListLongMap!4024 lt!1841738) key!4653 hashF!1323))))

(assert (=> d!1488181 (forall!11241 (toList!5493 (ListLongMap!4024 lt!1841738)) lambda!205130)))

(assert (=> d!1488181 (= (lemmaNotInItsHashBucketThenNotInMap!402 (ListLongMap!4024 lt!1841738) key!4653 hashF!1323) lt!1842123)))

(declare-fun bs!1083461 () Bool)

(assert (= bs!1083461 d!1488181))

(declare-fun m!5580483 () Bool)

(assert (=> bs!1083461 m!5580483))

(assert (=> bs!1083461 m!5580483))

(declare-fun m!5580485 () Bool)

(assert (=> bs!1083461 m!5580485))

(declare-fun m!5580487 () Bool)

(assert (=> bs!1083461 m!5580487))

(declare-fun m!5580489 () Bool)

(assert (=> bs!1083461 m!5580489))

(assert (=> b!4681816 d!1488181))

(declare-fun d!1488183 () Bool)

(assert (=> d!1488183 (= (tail!8472 oldBucket!34) (t!359561 oldBucket!34))))

(assert (=> b!4681823 d!1488183))

(declare-fun d!1488185 () Bool)

(declare-fun res!1973376 () Bool)

(declare-fun e!2921202 () Bool)

(assert (=> d!1488185 (=> res!1973376 e!2921202)))

(assert (=> d!1488185 (= res!1973376 (not ((_ is Cons!52277) newBucket!218)))))

(assert (=> d!1488185 (= (noDuplicateKeys!1802 newBucket!218) e!2921202)))

(declare-fun b!4682101 () Bool)

(declare-fun e!2921203 () Bool)

(assert (=> b!4682101 (= e!2921202 e!2921203)))

(declare-fun res!1973377 () Bool)

(assert (=> b!4682101 (=> (not res!1973377) (not e!2921203))))

(assert (=> b!4682101 (= res!1973377 (not (containsKey!2953 (t!359561 newBucket!218) (_1!30095 (h!58494 newBucket!218)))))))

(declare-fun b!4682102 () Bool)

(assert (=> b!4682102 (= e!2921203 (noDuplicateKeys!1802 (t!359561 newBucket!218)))))

(assert (= (and d!1488185 (not res!1973376)) b!4682101))

(assert (= (and b!4682101 res!1973377) b!4682102))

(declare-fun m!5580491 () Bool)

(assert (=> b!4682101 m!5580491))

(declare-fun m!5580493 () Bool)

(assert (=> b!4682102 m!5580493))

(assert (=> b!4681812 d!1488185))

(declare-fun d!1488187 () Bool)

(declare-fun res!1973378 () Bool)

(declare-fun e!2921204 () Bool)

(assert (=> d!1488187 (=> res!1973378 e!2921204)))

(assert (=> d!1488187 (= res!1973378 ((_ is Nil!52278) (toList!5493 lm!2023)))))

(assert (=> d!1488187 (= (forall!11241 (toList!5493 lm!2023) lambda!205015) e!2921204)))

(declare-fun b!4682103 () Bool)

(declare-fun e!2921205 () Bool)

(assert (=> b!4682103 (= e!2921204 e!2921205)))

(declare-fun res!1973379 () Bool)

(assert (=> b!4682103 (=> (not res!1973379) (not e!2921205))))

(assert (=> b!4682103 (= res!1973379 (dynLambda!21685 lambda!205015 (h!58495 (toList!5493 lm!2023))))))

(declare-fun b!4682104 () Bool)

(assert (=> b!4682104 (= e!2921205 (forall!11241 (t!359562 (toList!5493 lm!2023)) lambda!205015))))

(assert (= (and d!1488187 (not res!1973378)) b!4682103))

(assert (= (and b!4682103 res!1973379) b!4682104))

(declare-fun b_lambda!176719 () Bool)

(assert (=> (not b_lambda!176719) (not b!4682103)))

(declare-fun m!5580495 () Bool)

(assert (=> b!4682103 m!5580495))

(declare-fun m!5580497 () Bool)

(assert (=> b!4682104 m!5580497))

(assert (=> start!472832 d!1488187))

(declare-fun d!1488189 () Bool)

(declare-fun isStrictlySorted!622 (List!52402) Bool)

(assert (=> d!1488189 (= (inv!67529 lm!2023) (isStrictlySorted!622 (toList!5493 lm!2023)))))

(declare-fun bs!1083462 () Bool)

(assert (= bs!1083462 d!1488189))

(declare-fun m!5580499 () Bool)

(assert (=> bs!1083462 m!5580499))

(assert (=> start!472832 d!1488189))

(declare-fun d!1488191 () Bool)

(assert (=> d!1488191 (= (eq!991 lt!1841723 lt!1841727) (= (content!9120 (toList!5494 lt!1841723)) (content!9120 (toList!5494 lt!1841727))))))

(declare-fun bs!1083463 () Bool)

(assert (= bs!1083463 d!1488191))

(declare-fun m!5580501 () Bool)

(assert (=> bs!1083463 m!5580501))

(assert (=> bs!1083463 m!5579875))

(assert (=> b!4681825 d!1488191))

(declare-fun bs!1083464 () Bool)

(declare-fun d!1488193 () Bool)

(assert (= bs!1083464 (and d!1488193 start!472832)))

(declare-fun lambda!205131 () Int)

(assert (=> bs!1083464 (= lambda!205131 lambda!205015)))

(declare-fun bs!1083465 () Bool)

(assert (= bs!1083465 (and d!1488193 d!1488073)))

(assert (=> bs!1083465 (not (= lambda!205131 lambda!205022))))

(declare-fun bs!1083466 () Bool)

(assert (= bs!1083466 (and d!1488193 d!1488077)))

(assert (=> bs!1083466 (= lambda!205131 lambda!205057)))

(declare-fun bs!1083467 () Bool)

(assert (= bs!1083467 (and d!1488193 d!1488181)))

(assert (=> bs!1083467 (= lambda!205131 lambda!205130)))

(declare-fun lt!1842124 () ListMap!4857)

(assert (=> d!1488193 (invariantList!1382 (toList!5494 lt!1842124))))

(declare-fun e!2921206 () ListMap!4857)

(assert (=> d!1488193 (= lt!1842124 e!2921206)))

(declare-fun c!800841 () Bool)

(assert (=> d!1488193 (= c!800841 ((_ is Cons!52278) (Cons!52278 lt!1841728 (t!359562 (toList!5493 lm!2023)))))))

(assert (=> d!1488193 (forall!11241 (Cons!52278 lt!1841728 (t!359562 (toList!5493 lm!2023))) lambda!205131)))

(assert (=> d!1488193 (= (extractMap!1828 (Cons!52278 lt!1841728 (t!359562 (toList!5493 lm!2023)))) lt!1842124)))

(declare-fun b!4682105 () Bool)

(assert (=> b!4682105 (= e!2921206 (addToMapMapFromBucket!1234 (_2!30096 (h!58495 (Cons!52278 lt!1841728 (t!359562 (toList!5493 lm!2023))))) (extractMap!1828 (t!359562 (Cons!52278 lt!1841728 (t!359562 (toList!5493 lm!2023)))))))))

(declare-fun b!4682106 () Bool)

(assert (=> b!4682106 (= e!2921206 (ListMap!4858 Nil!52277))))

(assert (= (and d!1488193 c!800841) b!4682105))

(assert (= (and d!1488193 (not c!800841)) b!4682106))

(declare-fun m!5580503 () Bool)

(assert (=> d!1488193 m!5580503))

(declare-fun m!5580505 () Bool)

(assert (=> d!1488193 m!5580505))

(declare-fun m!5580507 () Bool)

(assert (=> b!4682105 m!5580507))

(assert (=> b!4682105 m!5580507))

(declare-fun m!5580509 () Bool)

(assert (=> b!4682105 m!5580509))

(assert (=> b!4681814 d!1488193))

(declare-fun bs!1083468 () Bool)

(declare-fun d!1488195 () Bool)

(assert (= bs!1083468 (and d!1488195 d!1488077)))

(declare-fun lambda!205132 () Int)

(assert (=> bs!1083468 (= lambda!205132 lambda!205057)))

(declare-fun bs!1083469 () Bool)

(assert (= bs!1083469 (and d!1488195 d!1488181)))

(assert (=> bs!1083469 (= lambda!205132 lambda!205130)))

(declare-fun bs!1083470 () Bool)

(assert (= bs!1083470 (and d!1488195 d!1488193)))

(assert (=> bs!1083470 (= lambda!205132 lambda!205131)))

(declare-fun bs!1083471 () Bool)

(assert (= bs!1083471 (and d!1488195 start!472832)))

(assert (=> bs!1083471 (= lambda!205132 lambda!205015)))

(declare-fun bs!1083472 () Bool)

(assert (= bs!1083472 (and d!1488195 d!1488073)))

(assert (=> bs!1083472 (not (= lambda!205132 lambda!205022))))

(declare-fun lt!1842125 () ListMap!4857)

(assert (=> d!1488195 (invariantList!1382 (toList!5494 lt!1842125))))

(declare-fun e!2921207 () ListMap!4857)

(assert (=> d!1488195 (= lt!1842125 e!2921207)))

(declare-fun c!800842 () Bool)

(assert (=> d!1488195 (= c!800842 ((_ is Cons!52278) lt!1841738))))

(assert (=> d!1488195 (forall!11241 lt!1841738 lambda!205132)))

(assert (=> d!1488195 (= (extractMap!1828 lt!1841738) lt!1842125)))

(declare-fun b!4682107 () Bool)

(assert (=> b!4682107 (= e!2921207 (addToMapMapFromBucket!1234 (_2!30096 (h!58495 lt!1841738)) (extractMap!1828 (t!359562 lt!1841738))))))

(declare-fun b!4682108 () Bool)

(assert (=> b!4682108 (= e!2921207 (ListMap!4858 Nil!52277))))

(assert (= (and d!1488195 c!800842) b!4682107))

(assert (= (and d!1488195 (not c!800842)) b!4682108))

(declare-fun m!5580511 () Bool)

(assert (=> d!1488195 m!5580511))

(declare-fun m!5580513 () Bool)

(assert (=> d!1488195 m!5580513))

(declare-fun m!5580515 () Bool)

(assert (=> b!4682107 m!5580515))

(assert (=> b!4682107 m!5580515))

(declare-fun m!5580517 () Bool)

(assert (=> b!4682107 m!5580517))

(assert (=> b!4681814 d!1488195))

(declare-fun d!1488197 () Bool)

(declare-fun e!2921210 () Bool)

(assert (=> d!1488197 e!2921210))

(declare-fun res!1973380 () Bool)

(assert (=> d!1488197 (=> res!1973380 e!2921210)))

(declare-fun e!2921208 () Bool)

(assert (=> d!1488197 (= res!1973380 e!2921208)))

(declare-fun res!1973382 () Bool)

(assert (=> d!1488197 (=> (not res!1973382) (not e!2921208))))

(declare-fun lt!1842128 () Bool)

(assert (=> d!1488197 (= res!1973382 (not lt!1842128))))

(declare-fun lt!1842127 () Bool)

(assert (=> d!1488197 (= lt!1842128 lt!1842127)))

(declare-fun lt!1842131 () Unit!122879)

(declare-fun e!2921212 () Unit!122879)

(assert (=> d!1488197 (= lt!1842131 e!2921212)))

(declare-fun c!800843 () Bool)

(assert (=> d!1488197 (= c!800843 lt!1842127)))

(assert (=> d!1488197 (= lt!1842127 (containsKey!2954 (toList!5494 lt!1841726) key!4653))))

(assert (=> d!1488197 (= (contains!15406 lt!1841726 key!4653) lt!1842128)))

(declare-fun bm!327269 () Bool)

(declare-fun call!327274 () Bool)

(declare-fun e!2921213 () List!52403)

(assert (=> bm!327269 (= call!327274 (contains!15409 e!2921213 key!4653))))

(declare-fun c!800845 () Bool)

(assert (=> bm!327269 (= c!800845 c!800843)))

(declare-fun b!4682109 () Bool)

(declare-fun e!2921209 () Bool)

(assert (=> b!4682109 (= e!2921210 e!2921209)))

(declare-fun res!1973381 () Bool)

(assert (=> b!4682109 (=> (not res!1973381) (not e!2921209))))

(assert (=> b!4682109 (= res!1973381 (isDefined!9231 (getValueByKey!1725 (toList!5494 lt!1841726) key!4653)))))

(declare-fun b!4682110 () Bool)

(assert (=> b!4682110 (= e!2921209 (contains!15409 (keys!18632 lt!1841726) key!4653))))

(declare-fun b!4682111 () Bool)

(assert (=> b!4682111 (= e!2921213 (keys!18632 lt!1841726))))

(declare-fun b!4682112 () Bool)

(declare-fun e!2921211 () Unit!122879)

(declare-fun Unit!122955 () Unit!122879)

(assert (=> b!4682112 (= e!2921211 Unit!122955)))

(declare-fun b!4682113 () Bool)

(assert (=> b!4682113 (= e!2921213 (getKeysList!821 (toList!5494 lt!1841726)))))

(declare-fun b!4682114 () Bool)

(assert (=> b!4682114 (= e!2921212 e!2921211)))

(declare-fun c!800844 () Bool)

(assert (=> b!4682114 (= c!800844 call!327274)))

(declare-fun b!4682115 () Bool)

(assert (=> b!4682115 false))

(declare-fun lt!1842133 () Unit!122879)

(declare-fun lt!1842132 () Unit!122879)

(assert (=> b!4682115 (= lt!1842133 lt!1842132)))

(assert (=> b!4682115 (containsKey!2954 (toList!5494 lt!1841726) key!4653)))

(assert (=> b!4682115 (= lt!1842132 (lemmaInGetKeysListThenContainsKey!820 (toList!5494 lt!1841726) key!4653))))

(declare-fun Unit!122956 () Unit!122879)

(assert (=> b!4682115 (= e!2921211 Unit!122956)))

(declare-fun b!4682116 () Bool)

(declare-fun lt!1842130 () Unit!122879)

(assert (=> b!4682116 (= e!2921212 lt!1842130)))

(declare-fun lt!1842129 () Unit!122879)

(assert (=> b!4682116 (= lt!1842129 (lemmaContainsKeyImpliesGetValueByKeyDefined!1616 (toList!5494 lt!1841726) key!4653))))

(assert (=> b!4682116 (isDefined!9231 (getValueByKey!1725 (toList!5494 lt!1841726) key!4653))))

(declare-fun lt!1842126 () Unit!122879)

(assert (=> b!4682116 (= lt!1842126 lt!1842129)))

(assert (=> b!4682116 (= lt!1842130 (lemmaInListThenGetKeysListContains!816 (toList!5494 lt!1841726) key!4653))))

(assert (=> b!4682116 call!327274))

(declare-fun b!4682117 () Bool)

(assert (=> b!4682117 (= e!2921208 (not (contains!15409 (keys!18632 lt!1841726) key!4653)))))

(assert (= (and d!1488197 c!800843) b!4682116))

(assert (= (and d!1488197 (not c!800843)) b!4682114))

(assert (= (and b!4682114 c!800844) b!4682115))

(assert (= (and b!4682114 (not c!800844)) b!4682112))

(assert (= (or b!4682116 b!4682114) bm!327269))

(assert (= (and bm!327269 c!800845) b!4682113))

(assert (= (and bm!327269 (not c!800845)) b!4682111))

(assert (= (and d!1488197 res!1973382) b!4682117))

(assert (= (and d!1488197 (not res!1973380)) b!4682109))

(assert (= (and b!4682109 res!1973381) b!4682110))

(declare-fun m!5580519 () Bool)

(assert (=> b!4682117 m!5580519))

(assert (=> b!4682117 m!5580519))

(declare-fun m!5580521 () Bool)

(assert (=> b!4682117 m!5580521))

(assert (=> b!4682111 m!5580519))

(declare-fun m!5580523 () Bool)

(assert (=> b!4682116 m!5580523))

(declare-fun m!5580525 () Bool)

(assert (=> b!4682116 m!5580525))

(assert (=> b!4682116 m!5580525))

(declare-fun m!5580527 () Bool)

(assert (=> b!4682116 m!5580527))

(declare-fun m!5580529 () Bool)

(assert (=> b!4682116 m!5580529))

(declare-fun m!5580531 () Bool)

(assert (=> bm!327269 m!5580531))

(declare-fun m!5580533 () Bool)

(assert (=> d!1488197 m!5580533))

(assert (=> b!4682109 m!5580525))

(assert (=> b!4682109 m!5580525))

(assert (=> b!4682109 m!5580527))

(assert (=> b!4682110 m!5580519))

(assert (=> b!4682110 m!5580519))

(assert (=> b!4682110 m!5580521))

(assert (=> b!4682115 m!5580533))

(declare-fun m!5580535 () Bool)

(assert (=> b!4682115 m!5580535))

(declare-fun m!5580537 () Bool)

(assert (=> b!4682113 m!5580537))

(assert (=> b!4681824 d!1488197))

(declare-fun bs!1083473 () Bool)

(declare-fun d!1488199 () Bool)

(assert (= bs!1083473 (and d!1488199 d!1488077)))

(declare-fun lambda!205133 () Int)

(assert (=> bs!1083473 (= lambda!205133 lambda!205057)))

(declare-fun bs!1083474 () Bool)

(assert (= bs!1083474 (and d!1488199 d!1488195)))

(assert (=> bs!1083474 (= lambda!205133 lambda!205132)))

(declare-fun bs!1083475 () Bool)

(assert (= bs!1083475 (and d!1488199 d!1488181)))

(assert (=> bs!1083475 (= lambda!205133 lambda!205130)))

(declare-fun bs!1083476 () Bool)

(assert (= bs!1083476 (and d!1488199 d!1488193)))

(assert (=> bs!1083476 (= lambda!205133 lambda!205131)))

(declare-fun bs!1083477 () Bool)

(assert (= bs!1083477 (and d!1488199 start!472832)))

(assert (=> bs!1083477 (= lambda!205133 lambda!205015)))

(declare-fun bs!1083478 () Bool)

(assert (= bs!1083478 (and d!1488199 d!1488073)))

(assert (=> bs!1083478 (not (= lambda!205133 lambda!205022))))

(declare-fun lt!1842134 () ListMap!4857)

(assert (=> d!1488199 (invariantList!1382 (toList!5494 lt!1842134))))

(declare-fun e!2921214 () ListMap!4857)

(assert (=> d!1488199 (= lt!1842134 e!2921214)))

(declare-fun c!800846 () Bool)

(assert (=> d!1488199 (= c!800846 ((_ is Cons!52278) (toList!5493 lm!2023)))))

(assert (=> d!1488199 (forall!11241 (toList!5493 lm!2023) lambda!205133)))

(assert (=> d!1488199 (= (extractMap!1828 (toList!5493 lm!2023)) lt!1842134)))

(declare-fun b!4682118 () Bool)

(assert (=> b!4682118 (= e!2921214 (addToMapMapFromBucket!1234 (_2!30096 (h!58495 (toList!5493 lm!2023))) (extractMap!1828 (t!359562 (toList!5493 lm!2023)))))))

(declare-fun b!4682119 () Bool)

(assert (=> b!4682119 (= e!2921214 (ListMap!4858 Nil!52277))))

(assert (= (and d!1488199 c!800846) b!4682118))

(assert (= (and d!1488199 (not c!800846)) b!4682119))

(declare-fun m!5580539 () Bool)

(assert (=> d!1488199 m!5580539))

(declare-fun m!5580541 () Bool)

(assert (=> d!1488199 m!5580541))

(assert (=> b!4682118 m!5579867))

(assert (=> b!4682118 m!5579867))

(declare-fun m!5580543 () Bool)

(assert (=> b!4682118 m!5580543))

(assert (=> b!4681824 d!1488199))

(declare-fun d!1488201 () Bool)

(declare-fun hash!3987 (Hashable!6171 K!13655) (_ BitVec 64))

(assert (=> d!1488201 (= (hash!3986 hashF!1323 key!4653) (hash!3987 hashF!1323 key!4653))))

(declare-fun bs!1083479 () Bool)

(assert (= bs!1083479 d!1488201))

(declare-fun m!5580545 () Bool)

(assert (=> bs!1083479 m!5580545))

(assert (=> b!4681821 d!1488201))

(declare-fun d!1488203 () Bool)

(declare-fun res!1973383 () Bool)

(declare-fun e!2921215 () Bool)

(assert (=> d!1488203 (=> res!1973383 e!2921215)))

(assert (=> d!1488203 (= res!1973383 (not ((_ is Cons!52277) oldBucket!34)))))

(assert (=> d!1488203 (= (noDuplicateKeys!1802 oldBucket!34) e!2921215)))

(declare-fun b!4682120 () Bool)

(declare-fun e!2921216 () Bool)

(assert (=> b!4682120 (= e!2921215 e!2921216)))

(declare-fun res!1973384 () Bool)

(assert (=> b!4682120 (=> (not res!1973384) (not e!2921216))))

(assert (=> b!4682120 (= res!1973384 (not (containsKey!2953 (t!359561 oldBucket!34) (_1!30095 (h!58494 oldBucket!34)))))))

(declare-fun b!4682121 () Bool)

(assert (=> b!4682121 (= e!2921216 (noDuplicateKeys!1802 (t!359561 oldBucket!34)))))

(assert (= (and d!1488203 (not res!1973383)) b!4682120))

(assert (= (and b!4682120 res!1973384) b!4682121))

(declare-fun m!5580547 () Bool)

(assert (=> b!4682120 m!5580547))

(declare-fun m!5580549 () Bool)

(assert (=> b!4682121 m!5580549))

(assert (=> b!4681810 d!1488203))

(declare-fun d!1488205 () Bool)

(assert (=> d!1488205 (= (eq!991 lt!1841733 lt!1841729) (= (content!9120 (toList!5494 lt!1841733)) (content!9120 (toList!5494 lt!1841729))))))

(declare-fun bs!1083480 () Bool)

(assert (= bs!1083480 d!1488205))

(declare-fun m!5580551 () Bool)

(assert (=> bs!1083480 m!5580551))

(declare-fun m!5580553 () Bool)

(assert (=> bs!1083480 m!5580553))

(assert (=> b!4681831 d!1488205))

(declare-fun bs!1083481 () Bool)

(declare-fun d!1488207 () Bool)

(assert (= bs!1083481 (and d!1488207 d!1488077)))

(declare-fun lambda!205134 () Int)

(assert (=> bs!1083481 (= lambda!205134 lambda!205057)))

(declare-fun bs!1083482 () Bool)

(assert (= bs!1083482 (and d!1488207 d!1488195)))

(assert (=> bs!1083482 (= lambda!205134 lambda!205132)))

(declare-fun bs!1083483 () Bool)

(assert (= bs!1083483 (and d!1488207 d!1488193)))

(assert (=> bs!1083483 (= lambda!205134 lambda!205131)))

(declare-fun bs!1083484 () Bool)

(assert (= bs!1083484 (and d!1488207 start!472832)))

(assert (=> bs!1083484 (= lambda!205134 lambda!205015)))

(declare-fun bs!1083485 () Bool)

(assert (= bs!1083485 (and d!1488207 d!1488073)))

(assert (=> bs!1083485 (not (= lambda!205134 lambda!205022))))

(declare-fun bs!1083486 () Bool)

(assert (= bs!1083486 (and d!1488207 d!1488199)))

(assert (=> bs!1083486 (= lambda!205134 lambda!205133)))

(declare-fun bs!1083487 () Bool)

(assert (= bs!1083487 (and d!1488207 d!1488181)))

(assert (=> bs!1083487 (= lambda!205134 lambda!205130)))

(declare-fun lt!1842135 () ListMap!4857)

(assert (=> d!1488207 (invariantList!1382 (toList!5494 lt!1842135))))

(declare-fun e!2921217 () ListMap!4857)

(assert (=> d!1488207 (= lt!1842135 e!2921217)))

(declare-fun c!800847 () Bool)

(assert (=> d!1488207 (= c!800847 ((_ is Cons!52278) (Cons!52278 lt!1841725 (t!359562 (toList!5493 lm!2023)))))))

(assert (=> d!1488207 (forall!11241 (Cons!52278 lt!1841725 (t!359562 (toList!5493 lm!2023))) lambda!205134)))

(assert (=> d!1488207 (= (extractMap!1828 (Cons!52278 lt!1841725 (t!359562 (toList!5493 lm!2023)))) lt!1842135)))

(declare-fun b!4682122 () Bool)

(assert (=> b!4682122 (= e!2921217 (addToMapMapFromBucket!1234 (_2!30096 (h!58495 (Cons!52278 lt!1841725 (t!359562 (toList!5493 lm!2023))))) (extractMap!1828 (t!359562 (Cons!52278 lt!1841725 (t!359562 (toList!5493 lm!2023)))))))))

(declare-fun b!4682123 () Bool)

(assert (=> b!4682123 (= e!2921217 (ListMap!4858 Nil!52277))))

(assert (= (and d!1488207 c!800847) b!4682122))

(assert (= (and d!1488207 (not c!800847)) b!4682123))

(declare-fun m!5580555 () Bool)

(assert (=> d!1488207 m!5580555))

(declare-fun m!5580557 () Bool)

(assert (=> d!1488207 m!5580557))

(declare-fun m!5580559 () Bool)

(assert (=> b!4682122 m!5580559))

(assert (=> b!4682122 m!5580559))

(declare-fun m!5580561 () Bool)

(assert (=> b!4682122 m!5580561))

(assert (=> b!4681831 d!1488207))

(declare-fun d!1488209 () Bool)

(declare-fun res!1973389 () Bool)

(declare-fun e!2921222 () Bool)

(assert (=> d!1488209 (=> res!1973389 e!2921222)))

(assert (=> d!1488209 (= res!1973389 (and ((_ is Cons!52277) lt!1841722) (= (_1!30095 (h!58494 lt!1841722)) key!4653)))))

(assert (=> d!1488209 (= (containsKey!2953 lt!1841722 key!4653) e!2921222)))

(declare-fun b!4682128 () Bool)

(declare-fun e!2921223 () Bool)

(assert (=> b!4682128 (= e!2921222 e!2921223)))

(declare-fun res!1973390 () Bool)

(assert (=> b!4682128 (=> (not res!1973390) (not e!2921223))))

(assert (=> b!4682128 (= res!1973390 ((_ is Cons!52277) lt!1841722))))

(declare-fun b!4682129 () Bool)

(assert (=> b!4682129 (= e!2921223 (containsKey!2953 (t!359561 lt!1841722) key!4653))))

(assert (= (and d!1488209 (not res!1973389)) b!4682128))

(assert (= (and b!4682128 res!1973390) b!4682129))

(declare-fun m!5580563 () Bool)

(assert (=> b!4682129 m!5580563))

(assert (=> b!4681820 d!1488209))

(declare-fun d!1488211 () Bool)

(assert (=> d!1488211 (= (head!9896 oldBucket!34) (h!58494 oldBucket!34))))

(assert (=> b!4681833 d!1488211))

(declare-fun bs!1083488 () Bool)

(declare-fun b!4682132 () Bool)

(assert (= bs!1083488 (and b!4682132 b!4682006)))

(declare-fun lambda!205135 () Int)

(assert (=> bs!1083488 (= (= lt!1841731 lt!1842011) (= lambda!205135 lambda!205115))))

(declare-fun bs!1083489 () Bool)

(assert (= bs!1083489 (and b!4682132 b!4682008)))

(assert (=> bs!1083489 (= lambda!205135 lambda!205113)))

(declare-fun bs!1083490 () Bool)

(assert (= bs!1083490 (and b!4682132 b!4682015)))

(assert (=> bs!1083490 (= (= lt!1841731 lt!1842035) (= lambda!205135 lambda!205119))))

(assert (=> bs!1083490 (= lambda!205135 lambda!205118)))

(declare-fun bs!1083491 () Bool)

(assert (= bs!1083491 (and b!4682132 d!1488083)))

(assert (=> bs!1083491 (= (= lt!1841731 lt!1842013) (= lambda!205135 lambda!205116))))

(declare-fun bs!1083492 () Bool)

(assert (= bs!1083492 (and b!4682132 d!1488157)))

(assert (=> bs!1083492 (= (= lt!1841731 lt!1842037) (= lambda!205135 lambda!205120))))

(declare-fun bs!1083493 () Bool)

(assert (= bs!1083493 (and b!4682132 d!1488071)))

(assert (=> bs!1083493 (not (= lambda!205135 lambda!205019))))

(declare-fun bs!1083494 () Bool)

(assert (= bs!1083494 (and b!4682132 b!4682017)))

(assert (=> bs!1083494 (= lambda!205135 lambda!205117)))

(declare-fun bs!1083495 () Bool)

(assert (= bs!1083495 (and b!4682132 d!1488059)))

(assert (=> bs!1083495 (not (= lambda!205135 lambda!205018))))

(assert (=> bs!1083488 (= lambda!205135 lambda!205114)))

(assert (=> b!4682132 true))

(declare-fun bs!1083496 () Bool)

(declare-fun b!4682130 () Bool)

(assert (= bs!1083496 (and b!4682130 b!4682006)))

(declare-fun lambda!205136 () Int)

(assert (=> bs!1083496 (= (= lt!1841731 lt!1842011) (= lambda!205136 lambda!205115))))

(declare-fun bs!1083497 () Bool)

(assert (= bs!1083497 (and b!4682130 b!4682008)))

(assert (=> bs!1083497 (= lambda!205136 lambda!205113)))

(declare-fun bs!1083498 () Bool)

(assert (= bs!1083498 (and b!4682130 b!4682132)))

(assert (=> bs!1083498 (= lambda!205136 lambda!205135)))

(declare-fun bs!1083499 () Bool)

(assert (= bs!1083499 (and b!4682130 b!4682015)))

(assert (=> bs!1083499 (= (= lt!1841731 lt!1842035) (= lambda!205136 lambda!205119))))

(assert (=> bs!1083499 (= lambda!205136 lambda!205118)))

(declare-fun bs!1083500 () Bool)

(assert (= bs!1083500 (and b!4682130 d!1488083)))

(assert (=> bs!1083500 (= (= lt!1841731 lt!1842013) (= lambda!205136 lambda!205116))))

(declare-fun bs!1083501 () Bool)

(assert (= bs!1083501 (and b!4682130 d!1488157)))

(assert (=> bs!1083501 (= (= lt!1841731 lt!1842037) (= lambda!205136 lambda!205120))))

(declare-fun bs!1083502 () Bool)

(assert (= bs!1083502 (and b!4682130 d!1488071)))

(assert (=> bs!1083502 (not (= lambda!205136 lambda!205019))))

(declare-fun bs!1083503 () Bool)

(assert (= bs!1083503 (and b!4682130 b!4682017)))

(assert (=> bs!1083503 (= lambda!205136 lambda!205117)))

(declare-fun bs!1083504 () Bool)

(assert (= bs!1083504 (and b!4682130 d!1488059)))

(assert (=> bs!1083504 (not (= lambda!205136 lambda!205018))))

(assert (=> bs!1083496 (= lambda!205136 lambda!205114)))

(assert (=> b!4682130 true))

(declare-fun lambda!205137 () Int)

(declare-fun lt!1842137 () ListMap!4857)

(assert (=> bs!1083496 (= (= lt!1842137 lt!1842011) (= lambda!205137 lambda!205115))))

(assert (=> bs!1083497 (= (= lt!1842137 lt!1841731) (= lambda!205137 lambda!205113))))

(assert (=> bs!1083498 (= (= lt!1842137 lt!1841731) (= lambda!205137 lambda!205135))))

(assert (=> bs!1083499 (= (= lt!1842137 lt!1842035) (= lambda!205137 lambda!205119))))

(assert (=> bs!1083499 (= (= lt!1842137 lt!1841731) (= lambda!205137 lambda!205118))))

(assert (=> bs!1083500 (= (= lt!1842137 lt!1842013) (= lambda!205137 lambda!205116))))

(assert (=> bs!1083501 (= (= lt!1842137 lt!1842037) (= lambda!205137 lambda!205120))))

(assert (=> bs!1083502 (not (= lambda!205137 lambda!205019))))

(assert (=> bs!1083503 (= (= lt!1842137 lt!1841731) (= lambda!205137 lambda!205117))))

(assert (=> bs!1083496 (= (= lt!1842137 lt!1841731) (= lambda!205137 lambda!205114))))

(assert (=> b!4682130 (= (= lt!1842137 lt!1841731) (= lambda!205137 lambda!205136))))

(assert (=> bs!1083504 (not (= lambda!205137 lambda!205018))))

(assert (=> b!4682130 true))

(declare-fun bs!1083505 () Bool)

(declare-fun d!1488213 () Bool)

(assert (= bs!1083505 (and d!1488213 b!4682006)))

(declare-fun lt!1842139 () ListMap!4857)

(declare-fun lambda!205138 () Int)

(assert (=> bs!1083505 (= (= lt!1842139 lt!1842011) (= lambda!205138 lambda!205115))))

(declare-fun bs!1083506 () Bool)

(assert (= bs!1083506 (and d!1488213 b!4682008)))

(assert (=> bs!1083506 (= (= lt!1842139 lt!1841731) (= lambda!205138 lambda!205113))))

(declare-fun bs!1083507 () Bool)

(assert (= bs!1083507 (and d!1488213 b!4682132)))

(assert (=> bs!1083507 (= (= lt!1842139 lt!1841731) (= lambda!205138 lambda!205135))))

(declare-fun bs!1083508 () Bool)

(assert (= bs!1083508 (and d!1488213 b!4682015)))

(assert (=> bs!1083508 (= (= lt!1842139 lt!1842035) (= lambda!205138 lambda!205119))))

(assert (=> bs!1083508 (= (= lt!1842139 lt!1841731) (= lambda!205138 lambda!205118))))

(declare-fun bs!1083509 () Bool)

(assert (= bs!1083509 (and d!1488213 d!1488083)))

(assert (=> bs!1083509 (= (= lt!1842139 lt!1842013) (= lambda!205138 lambda!205116))))

(declare-fun bs!1083510 () Bool)

(assert (= bs!1083510 (and d!1488213 d!1488157)))

(assert (=> bs!1083510 (= (= lt!1842139 lt!1842037) (= lambda!205138 lambda!205120))))

(declare-fun bs!1083511 () Bool)

(assert (= bs!1083511 (and d!1488213 d!1488071)))

(assert (=> bs!1083511 (not (= lambda!205138 lambda!205019))))

(assert (=> bs!1083505 (= (= lt!1842139 lt!1841731) (= lambda!205138 lambda!205114))))

(declare-fun bs!1083512 () Bool)

(assert (= bs!1083512 (and d!1488213 b!4682130)))

(assert (=> bs!1083512 (= (= lt!1842139 lt!1842137) (= lambda!205138 lambda!205137))))

(declare-fun bs!1083513 () Bool)

(assert (= bs!1083513 (and d!1488213 b!4682017)))

(assert (=> bs!1083513 (= (= lt!1842139 lt!1841731) (= lambda!205138 lambda!205117))))

(assert (=> bs!1083512 (= (= lt!1842139 lt!1841731) (= lambda!205138 lambda!205136))))

(declare-fun bs!1083514 () Bool)

(assert (= bs!1083514 (and d!1488213 d!1488059)))

(assert (=> bs!1083514 (not (= lambda!205138 lambda!205018))))

(assert (=> d!1488213 true))

(declare-fun call!327276 () Bool)

(declare-fun c!800848 () Bool)

(declare-fun bm!327270 () Bool)

(assert (=> bm!327270 (= call!327276 (forall!11243 (toList!5494 lt!1841731) (ite c!800848 lambda!205135 lambda!205136)))))

(declare-fun e!2921225 () ListMap!4857)

(assert (=> b!4682130 (= e!2921225 lt!1842137)))

(declare-fun lt!1842136 () ListMap!4857)

(assert (=> b!4682130 (= lt!1842136 (+!2104 lt!1841731 (h!58494 oldBucket!34)))))

(assert (=> b!4682130 (= lt!1842137 (addToMapMapFromBucket!1234 (t!359561 oldBucket!34) (+!2104 lt!1841731 (h!58494 oldBucket!34))))))

(declare-fun lt!1842144 () Unit!122879)

(declare-fun call!327277 () Unit!122879)

(assert (=> b!4682130 (= lt!1842144 call!327277)))

(assert (=> b!4682130 call!327276))

(declare-fun lt!1842138 () Unit!122879)

(assert (=> b!4682130 (= lt!1842138 lt!1842144)))

(assert (=> b!4682130 (forall!11243 (toList!5494 lt!1842136) lambda!205137)))

(declare-fun lt!1842156 () Unit!122879)

(declare-fun Unit!122957 () Unit!122879)

(assert (=> b!4682130 (= lt!1842156 Unit!122957)))

(assert (=> b!4682130 (forall!11243 (t!359561 oldBucket!34) lambda!205137)))

(declare-fun lt!1842148 () Unit!122879)

(declare-fun Unit!122958 () Unit!122879)

(assert (=> b!4682130 (= lt!1842148 Unit!122958)))

(declare-fun lt!1842150 () Unit!122879)

(declare-fun Unit!122959 () Unit!122879)

(assert (=> b!4682130 (= lt!1842150 Unit!122959)))

(declare-fun lt!1842147 () Unit!122879)

(assert (=> b!4682130 (= lt!1842147 (forallContained!3354 (toList!5494 lt!1842136) lambda!205137 (h!58494 oldBucket!34)))))

(assert (=> b!4682130 (contains!15406 lt!1842136 (_1!30095 (h!58494 oldBucket!34)))))

(declare-fun lt!1842152 () Unit!122879)

(declare-fun Unit!122960 () Unit!122879)

(assert (=> b!4682130 (= lt!1842152 Unit!122960)))

(assert (=> b!4682130 (contains!15406 lt!1842137 (_1!30095 (h!58494 oldBucket!34)))))

(declare-fun lt!1842140 () Unit!122879)

(declare-fun Unit!122961 () Unit!122879)

(assert (=> b!4682130 (= lt!1842140 Unit!122961)))

(declare-fun call!327275 () Bool)

(assert (=> b!4682130 call!327275))

(declare-fun lt!1842145 () Unit!122879)

(declare-fun Unit!122962 () Unit!122879)

(assert (=> b!4682130 (= lt!1842145 Unit!122962)))

(assert (=> b!4682130 (forall!11243 (toList!5494 lt!1842136) lambda!205137)))

(declare-fun lt!1842142 () Unit!122879)

(declare-fun Unit!122963 () Unit!122879)

(assert (=> b!4682130 (= lt!1842142 Unit!122963)))

(declare-fun lt!1842149 () Unit!122879)

(declare-fun Unit!122964 () Unit!122879)

(assert (=> b!4682130 (= lt!1842149 Unit!122964)))

(declare-fun lt!1842154 () Unit!122879)

(assert (=> b!4682130 (= lt!1842154 (addForallContainsKeyThenBeforeAdding!669 lt!1841731 lt!1842137 (_1!30095 (h!58494 oldBucket!34)) (_2!30095 (h!58494 oldBucket!34))))))

(assert (=> b!4682130 (forall!11243 (toList!5494 lt!1841731) lambda!205137)))

(declare-fun lt!1842146 () Unit!122879)

(assert (=> b!4682130 (= lt!1842146 lt!1842154)))

(assert (=> b!4682130 (forall!11243 (toList!5494 lt!1841731) lambda!205137)))

(declare-fun lt!1842143 () Unit!122879)

(declare-fun Unit!122965 () Unit!122879)

(assert (=> b!4682130 (= lt!1842143 Unit!122965)))

(declare-fun res!1973392 () Bool)

(assert (=> b!4682130 (= res!1973392 (forall!11243 oldBucket!34 lambda!205137))))

(declare-fun e!2921226 () Bool)

(assert (=> b!4682130 (=> (not res!1973392) (not e!2921226))))

(assert (=> b!4682130 e!2921226))

(declare-fun lt!1842155 () Unit!122879)

(declare-fun Unit!122966 () Unit!122879)

(assert (=> b!4682130 (= lt!1842155 Unit!122966)))

(declare-fun bm!327271 () Bool)

(assert (=> bm!327271 (= call!327275 (forall!11243 (ite c!800848 (toList!5494 lt!1841731) oldBucket!34) (ite c!800848 lambda!205135 lambda!205137)))))

(declare-fun b!4682131 () Bool)

(declare-fun res!1973393 () Bool)

(declare-fun e!2921224 () Bool)

(assert (=> b!4682131 (=> (not res!1973393) (not e!2921224))))

(assert (=> b!4682131 (= res!1973393 (forall!11243 (toList!5494 lt!1841731) lambda!205138))))

(assert (=> b!4682132 (= e!2921225 lt!1841731)))

(declare-fun lt!1842153 () Unit!122879)

(assert (=> b!4682132 (= lt!1842153 call!327277)))

(assert (=> b!4682132 call!327276))

(declare-fun lt!1842151 () Unit!122879)

(assert (=> b!4682132 (= lt!1842151 lt!1842153)))

(assert (=> b!4682132 call!327275))

(declare-fun lt!1842141 () Unit!122879)

(declare-fun Unit!122967 () Unit!122879)

(assert (=> b!4682132 (= lt!1842141 Unit!122967)))

(declare-fun bm!327272 () Bool)

(assert (=> bm!327272 (= call!327277 (lemmaContainsAllItsOwnKeys!670 lt!1841731))))

(declare-fun b!4682134 () Bool)

(assert (=> b!4682134 (= e!2921224 (invariantList!1382 (toList!5494 lt!1842139)))))

(assert (=> d!1488213 e!2921224))

(declare-fun res!1973391 () Bool)

(assert (=> d!1488213 (=> (not res!1973391) (not e!2921224))))

(assert (=> d!1488213 (= res!1973391 (forall!11243 oldBucket!34 lambda!205138))))

(assert (=> d!1488213 (= lt!1842139 e!2921225)))

(assert (=> d!1488213 (= c!800848 ((_ is Nil!52277) oldBucket!34))))

(assert (=> d!1488213 (noDuplicateKeys!1802 oldBucket!34)))

(assert (=> d!1488213 (= (addToMapMapFromBucket!1234 oldBucket!34 lt!1841731) lt!1842139)))

(declare-fun b!4682133 () Bool)

(assert (=> b!4682133 (= e!2921226 (forall!11243 (toList!5494 lt!1841731) lambda!205137))))

(assert (= (and d!1488213 c!800848) b!4682132))

(assert (= (and d!1488213 (not c!800848)) b!4682130))

(assert (= (and b!4682130 res!1973392) b!4682133))

(assert (= (or b!4682132 b!4682130) bm!327272))

(assert (= (or b!4682132 b!4682130) bm!327270))

(assert (= (or b!4682132 b!4682130) bm!327271))

(assert (= (and d!1488213 res!1973391) b!4682131))

(assert (= (and b!4682131 res!1973393) b!4682134))

(declare-fun m!5580565 () Bool)

(assert (=> d!1488213 m!5580565))

(assert (=> d!1488213 m!5579783))

(declare-fun m!5580567 () Bool)

(assert (=> b!4682133 m!5580567))

(declare-fun m!5580569 () Bool)

(assert (=> b!4682130 m!5580569))

(declare-fun m!5580571 () Bool)

(assert (=> b!4682130 m!5580571))

(declare-fun m!5580573 () Bool)

(assert (=> b!4682130 m!5580573))

(assert (=> b!4682130 m!5580573))

(declare-fun m!5580575 () Bool)

(assert (=> b!4682130 m!5580575))

(declare-fun m!5580577 () Bool)

(assert (=> b!4682130 m!5580577))

(assert (=> b!4682130 m!5580569))

(declare-fun m!5580579 () Bool)

(assert (=> b!4682130 m!5580579))

(declare-fun m!5580581 () Bool)

(assert (=> b!4682130 m!5580581))

(declare-fun m!5580583 () Bool)

(assert (=> b!4682130 m!5580583))

(declare-fun m!5580585 () Bool)

(assert (=> b!4682130 m!5580585))

(assert (=> b!4682130 m!5580567))

(assert (=> b!4682130 m!5580567))

(declare-fun m!5580587 () Bool)

(assert (=> b!4682131 m!5580587))

(declare-fun m!5580589 () Bool)

(assert (=> bm!327270 m!5580589))

(assert (=> bm!327272 m!5580327))

(declare-fun m!5580591 () Bool)

(assert (=> b!4682134 m!5580591))

(declare-fun m!5580593 () Bool)

(assert (=> bm!327271 m!5580593))

(assert (=> b!4681833 d!1488213))

(declare-fun d!1488215 () Bool)

(assert (=> d!1488215 (eq!991 (addToMapMapFromBucket!1234 (Cons!52277 lt!1841735 lt!1841722) lt!1841731) (+!2104 (addToMapMapFromBucket!1234 lt!1841722 lt!1841731) lt!1841735))))

(declare-fun lt!1842159 () Unit!122879)

(declare-fun choose!32415 (tuple2!53602 List!52401 ListMap!4857) Unit!122879)

(assert (=> d!1488215 (= lt!1842159 (choose!32415 lt!1841735 lt!1841722 lt!1841731))))

(assert (=> d!1488215 (noDuplicateKeys!1802 lt!1841722)))

(assert (=> d!1488215 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!240 lt!1841735 lt!1841722 lt!1841731) lt!1842159)))

(declare-fun bs!1083515 () Bool)

(assert (= bs!1083515 d!1488215))

(assert (=> bs!1083515 m!5580339))

(assert (=> bs!1083515 m!5579835))

(assert (=> bs!1083515 m!5579835))

(declare-fun m!5580595 () Bool)

(assert (=> bs!1083515 m!5580595))

(declare-fun m!5580597 () Bool)

(assert (=> bs!1083515 m!5580597))

(assert (=> bs!1083515 m!5579799))

(assert (=> bs!1083515 m!5579799))

(assert (=> bs!1083515 m!5580595))

(declare-fun m!5580599 () Bool)

(assert (=> bs!1083515 m!5580599))

(assert (=> b!4681833 d!1488215))

(declare-fun d!1488217 () Bool)

(declare-fun e!2921227 () Bool)

(assert (=> d!1488217 e!2921227))

(declare-fun res!1973394 () Bool)

(assert (=> d!1488217 (=> (not res!1973394) (not e!2921227))))

(declare-fun lt!1842163 () ListMap!4857)

(assert (=> d!1488217 (= res!1973394 (contains!15406 lt!1842163 (_1!30095 lt!1841735)))))

(declare-fun lt!1842162 () List!52401)

(assert (=> d!1488217 (= lt!1842163 (ListMap!4858 lt!1842162))))

(declare-fun lt!1842161 () Unit!122879)

(declare-fun lt!1842160 () Unit!122879)

(assert (=> d!1488217 (= lt!1842161 lt!1842160)))

(assert (=> d!1488217 (= (getValueByKey!1725 lt!1842162 (_1!30095 lt!1841735)) (Some!11976 (_2!30095 lt!1841735)))))

(assert (=> d!1488217 (= lt!1842160 (lemmaContainsTupThenGetReturnValue!984 lt!1842162 (_1!30095 lt!1841735) (_2!30095 lt!1841735)))))

(assert (=> d!1488217 (= lt!1842162 (insertNoDuplicatedKeys!492 (toList!5494 lt!1841737) (_1!30095 lt!1841735) (_2!30095 lt!1841735)))))

(assert (=> d!1488217 (= (+!2104 lt!1841737 lt!1841735) lt!1842163)))

(declare-fun b!4682135 () Bool)

(declare-fun res!1973395 () Bool)

(assert (=> b!4682135 (=> (not res!1973395) (not e!2921227))))

(assert (=> b!4682135 (= res!1973395 (= (getValueByKey!1725 (toList!5494 lt!1842163) (_1!30095 lt!1841735)) (Some!11976 (_2!30095 lt!1841735))))))

(declare-fun b!4682136 () Bool)

(assert (=> b!4682136 (= e!2921227 (contains!15408 (toList!5494 lt!1842163) lt!1841735))))

(assert (= (and d!1488217 res!1973394) b!4682135))

(assert (= (and b!4682135 res!1973395) b!4682136))

(declare-fun m!5580601 () Bool)

(assert (=> d!1488217 m!5580601))

(declare-fun m!5580603 () Bool)

(assert (=> d!1488217 m!5580603))

(declare-fun m!5580605 () Bool)

(assert (=> d!1488217 m!5580605))

(declare-fun m!5580607 () Bool)

(assert (=> d!1488217 m!5580607))

(declare-fun m!5580609 () Bool)

(assert (=> b!4682135 m!5580609))

(declare-fun m!5580611 () Bool)

(assert (=> b!4682136 m!5580611))

(assert (=> b!4681833 d!1488217))

(declare-fun d!1488219 () Bool)

(assert (=> d!1488219 (= (eq!991 lt!1841733 (addToMapMapFromBucket!1234 oldBucket!34 lt!1841731)) (= (content!9120 (toList!5494 lt!1841733)) (content!9120 (toList!5494 (addToMapMapFromBucket!1234 oldBucket!34 lt!1841731)))))))

(declare-fun bs!1083516 () Bool)

(assert (= bs!1083516 d!1488219))

(assert (=> bs!1083516 m!5580551))

(declare-fun m!5580613 () Bool)

(assert (=> bs!1083516 m!5580613))

(assert (=> b!4681833 d!1488219))

(declare-fun d!1488221 () Bool)

(declare-fun e!2921228 () Bool)

(assert (=> d!1488221 e!2921228))

(declare-fun res!1973396 () Bool)

(assert (=> d!1488221 (=> (not res!1973396) (not e!2921228))))

(declare-fun lt!1842167 () ListMap!4857)

(assert (=> d!1488221 (= res!1973396 (contains!15406 lt!1842167 (_1!30095 (h!58494 oldBucket!34))))))

(declare-fun lt!1842166 () List!52401)

(assert (=> d!1488221 (= lt!1842167 (ListMap!4858 lt!1842166))))

(declare-fun lt!1842165 () Unit!122879)

(declare-fun lt!1842164 () Unit!122879)

(assert (=> d!1488221 (= lt!1842165 lt!1842164)))

(assert (=> d!1488221 (= (getValueByKey!1725 lt!1842166 (_1!30095 (h!58494 oldBucket!34))) (Some!11976 (_2!30095 (h!58494 oldBucket!34))))))

(assert (=> d!1488221 (= lt!1842164 (lemmaContainsTupThenGetReturnValue!984 lt!1842166 (_1!30095 (h!58494 oldBucket!34)) (_2!30095 (h!58494 oldBucket!34))))))

(assert (=> d!1488221 (= lt!1842166 (insertNoDuplicatedKeys!492 (toList!5494 lt!1841737) (_1!30095 (h!58494 oldBucket!34)) (_2!30095 (h!58494 oldBucket!34))))))

(assert (=> d!1488221 (= (+!2104 lt!1841737 (h!58494 oldBucket!34)) lt!1842167)))

(declare-fun b!4682137 () Bool)

(declare-fun res!1973397 () Bool)

(assert (=> b!4682137 (=> (not res!1973397) (not e!2921228))))

(assert (=> b!4682137 (= res!1973397 (= (getValueByKey!1725 (toList!5494 lt!1842167) (_1!30095 (h!58494 oldBucket!34))) (Some!11976 (_2!30095 (h!58494 oldBucket!34)))))))

(declare-fun b!4682138 () Bool)

(assert (=> b!4682138 (= e!2921228 (contains!15408 (toList!5494 lt!1842167) (h!58494 oldBucket!34)))))

(assert (= (and d!1488221 res!1973396) b!4682137))

(assert (= (and b!4682137 res!1973397) b!4682138))

(declare-fun m!5580615 () Bool)

(assert (=> d!1488221 m!5580615))

(declare-fun m!5580617 () Bool)

(assert (=> d!1488221 m!5580617))

(declare-fun m!5580619 () Bool)

(assert (=> d!1488221 m!5580619))

(declare-fun m!5580621 () Bool)

(assert (=> d!1488221 m!5580621))

(declare-fun m!5580623 () Bool)

(assert (=> b!4682137 m!5580623))

(declare-fun m!5580625 () Bool)

(assert (=> b!4682138 m!5580625))

(assert (=> b!4681833 d!1488221))

(declare-fun bs!1083517 () Bool)

(declare-fun b!4682141 () Bool)

(assert (= bs!1083517 (and b!4682141 b!4682006)))

(declare-fun lambda!205139 () Int)

(assert (=> bs!1083517 (= (= lt!1841731 lt!1842011) (= lambda!205139 lambda!205115))))

(declare-fun bs!1083518 () Bool)

(assert (= bs!1083518 (and b!4682141 b!4682008)))

(assert (=> bs!1083518 (= lambda!205139 lambda!205113)))

(declare-fun bs!1083519 () Bool)

(assert (= bs!1083519 (and b!4682141 b!4682132)))

(assert (=> bs!1083519 (= lambda!205139 lambda!205135)))

(declare-fun bs!1083520 () Bool)

(assert (= bs!1083520 (and b!4682141 b!4682015)))

(assert (=> bs!1083520 (= (= lt!1841731 lt!1842035) (= lambda!205139 lambda!205119))))

(assert (=> bs!1083520 (= lambda!205139 lambda!205118)))

(declare-fun bs!1083521 () Bool)

(assert (= bs!1083521 (and b!4682141 d!1488083)))

(assert (=> bs!1083521 (= (= lt!1841731 lt!1842013) (= lambda!205139 lambda!205116))))

(declare-fun bs!1083522 () Bool)

(assert (= bs!1083522 (and b!4682141 d!1488157)))

(assert (=> bs!1083522 (= (= lt!1841731 lt!1842037) (= lambda!205139 lambda!205120))))

(declare-fun bs!1083523 () Bool)

(assert (= bs!1083523 (and b!4682141 d!1488071)))

(assert (=> bs!1083523 (not (= lambda!205139 lambda!205019))))

(assert (=> bs!1083517 (= lambda!205139 lambda!205114)))

(declare-fun bs!1083524 () Bool)

(assert (= bs!1083524 (and b!4682141 d!1488213)))

(assert (=> bs!1083524 (= (= lt!1841731 lt!1842139) (= lambda!205139 lambda!205138))))

(declare-fun bs!1083525 () Bool)

(assert (= bs!1083525 (and b!4682141 b!4682130)))

(assert (=> bs!1083525 (= (= lt!1841731 lt!1842137) (= lambda!205139 lambda!205137))))

(declare-fun bs!1083526 () Bool)

(assert (= bs!1083526 (and b!4682141 b!4682017)))

(assert (=> bs!1083526 (= lambda!205139 lambda!205117)))

(assert (=> bs!1083525 (= lambda!205139 lambda!205136)))

(declare-fun bs!1083527 () Bool)

(assert (= bs!1083527 (and b!4682141 d!1488059)))

(assert (=> bs!1083527 (not (= lambda!205139 lambda!205018))))

(assert (=> b!4682141 true))

(declare-fun bs!1083528 () Bool)

(declare-fun b!4682139 () Bool)

(assert (= bs!1083528 (and b!4682139 b!4682006)))

(declare-fun lambda!205140 () Int)

(assert (=> bs!1083528 (= (= lt!1841731 lt!1842011) (= lambda!205140 lambda!205115))))

(declare-fun bs!1083529 () Bool)

(assert (= bs!1083529 (and b!4682139 b!4682008)))

(assert (=> bs!1083529 (= lambda!205140 lambda!205113)))

(declare-fun bs!1083530 () Bool)

(assert (= bs!1083530 (and b!4682139 b!4682132)))

(assert (=> bs!1083530 (= lambda!205140 lambda!205135)))

(declare-fun bs!1083531 () Bool)

(assert (= bs!1083531 (and b!4682139 b!4682015)))

(assert (=> bs!1083531 (= (= lt!1841731 lt!1842035) (= lambda!205140 lambda!205119))))

(assert (=> bs!1083531 (= lambda!205140 lambda!205118)))

(declare-fun bs!1083532 () Bool)

(assert (= bs!1083532 (and b!4682139 d!1488083)))

(assert (=> bs!1083532 (= (= lt!1841731 lt!1842013) (= lambda!205140 lambda!205116))))

(declare-fun bs!1083533 () Bool)

(assert (= bs!1083533 (and b!4682139 d!1488157)))

(assert (=> bs!1083533 (= (= lt!1841731 lt!1842037) (= lambda!205140 lambda!205120))))

(assert (=> bs!1083528 (= lambda!205140 lambda!205114)))

(declare-fun bs!1083534 () Bool)

(assert (= bs!1083534 (and b!4682139 d!1488071)))

(assert (=> bs!1083534 (not (= lambda!205140 lambda!205019))))

(declare-fun bs!1083535 () Bool)

(assert (= bs!1083535 (and b!4682139 b!4682141)))

(assert (=> bs!1083535 (= lambda!205140 lambda!205139)))

(declare-fun bs!1083536 () Bool)

(assert (= bs!1083536 (and b!4682139 d!1488213)))

(assert (=> bs!1083536 (= (= lt!1841731 lt!1842139) (= lambda!205140 lambda!205138))))

(declare-fun bs!1083537 () Bool)

(assert (= bs!1083537 (and b!4682139 b!4682130)))

(assert (=> bs!1083537 (= (= lt!1841731 lt!1842137) (= lambda!205140 lambda!205137))))

(declare-fun bs!1083538 () Bool)

(assert (= bs!1083538 (and b!4682139 b!4682017)))

(assert (=> bs!1083538 (= lambda!205140 lambda!205117)))

(assert (=> bs!1083537 (= lambda!205140 lambda!205136)))

(declare-fun bs!1083539 () Bool)

(assert (= bs!1083539 (and b!4682139 d!1488059)))

(assert (=> bs!1083539 (not (= lambda!205140 lambda!205018))))

(assert (=> b!4682139 true))

(declare-fun lt!1842169 () ListMap!4857)

(declare-fun lambda!205141 () Int)

(assert (=> bs!1083528 (= (= lt!1842169 lt!1842011) (= lambda!205141 lambda!205115))))

(assert (=> bs!1083529 (= (= lt!1842169 lt!1841731) (= lambda!205141 lambda!205113))))

(assert (=> bs!1083530 (= (= lt!1842169 lt!1841731) (= lambda!205141 lambda!205135))))

(assert (=> bs!1083531 (= (= lt!1842169 lt!1842035) (= lambda!205141 lambda!205119))))

(assert (=> bs!1083531 (= (= lt!1842169 lt!1841731) (= lambda!205141 lambda!205118))))

(assert (=> bs!1083532 (= (= lt!1842169 lt!1842013) (= lambda!205141 lambda!205116))))

(assert (=> bs!1083533 (= (= lt!1842169 lt!1842037) (= lambda!205141 lambda!205120))))

(assert (=> bs!1083528 (= (= lt!1842169 lt!1841731) (= lambda!205141 lambda!205114))))

(assert (=> b!4682139 (= (= lt!1842169 lt!1841731) (= lambda!205141 lambda!205140))))

(assert (=> bs!1083534 (not (= lambda!205141 lambda!205019))))

(assert (=> bs!1083535 (= (= lt!1842169 lt!1841731) (= lambda!205141 lambda!205139))))

(assert (=> bs!1083536 (= (= lt!1842169 lt!1842139) (= lambda!205141 lambda!205138))))

(assert (=> bs!1083537 (= (= lt!1842169 lt!1842137) (= lambda!205141 lambda!205137))))

(assert (=> bs!1083538 (= (= lt!1842169 lt!1841731) (= lambda!205141 lambda!205117))))

(assert (=> bs!1083537 (= (= lt!1842169 lt!1841731) (= lambda!205141 lambda!205136))))

(assert (=> bs!1083539 (not (= lambda!205141 lambda!205018))))

(assert (=> b!4682139 true))

(declare-fun bs!1083540 () Bool)

(declare-fun d!1488223 () Bool)

(assert (= bs!1083540 (and d!1488223 b!4682139)))

(declare-fun lambda!205142 () Int)

(declare-fun lt!1842171 () ListMap!4857)

(assert (=> bs!1083540 (= (= lt!1842171 lt!1842169) (= lambda!205142 lambda!205141))))

(declare-fun bs!1083541 () Bool)

(assert (= bs!1083541 (and d!1488223 b!4682006)))

(assert (=> bs!1083541 (= (= lt!1842171 lt!1842011) (= lambda!205142 lambda!205115))))

(declare-fun bs!1083542 () Bool)

(assert (= bs!1083542 (and d!1488223 b!4682008)))

(assert (=> bs!1083542 (= (= lt!1842171 lt!1841731) (= lambda!205142 lambda!205113))))

(declare-fun bs!1083543 () Bool)

(assert (= bs!1083543 (and d!1488223 b!4682132)))

(assert (=> bs!1083543 (= (= lt!1842171 lt!1841731) (= lambda!205142 lambda!205135))))

(declare-fun bs!1083544 () Bool)

(assert (= bs!1083544 (and d!1488223 b!4682015)))

(assert (=> bs!1083544 (= (= lt!1842171 lt!1842035) (= lambda!205142 lambda!205119))))

(assert (=> bs!1083544 (= (= lt!1842171 lt!1841731) (= lambda!205142 lambda!205118))))

(declare-fun bs!1083545 () Bool)

(assert (= bs!1083545 (and d!1488223 d!1488083)))

(assert (=> bs!1083545 (= (= lt!1842171 lt!1842013) (= lambda!205142 lambda!205116))))

(declare-fun bs!1083546 () Bool)

(assert (= bs!1083546 (and d!1488223 d!1488157)))

(assert (=> bs!1083546 (= (= lt!1842171 lt!1842037) (= lambda!205142 lambda!205120))))

(assert (=> bs!1083541 (= (= lt!1842171 lt!1841731) (= lambda!205142 lambda!205114))))

(assert (=> bs!1083540 (= (= lt!1842171 lt!1841731) (= lambda!205142 lambda!205140))))

(declare-fun bs!1083547 () Bool)

(assert (= bs!1083547 (and d!1488223 d!1488071)))

(assert (=> bs!1083547 (not (= lambda!205142 lambda!205019))))

(declare-fun bs!1083548 () Bool)

(assert (= bs!1083548 (and d!1488223 b!4682141)))

(assert (=> bs!1083548 (= (= lt!1842171 lt!1841731) (= lambda!205142 lambda!205139))))

(declare-fun bs!1083549 () Bool)

(assert (= bs!1083549 (and d!1488223 d!1488213)))

(assert (=> bs!1083549 (= (= lt!1842171 lt!1842139) (= lambda!205142 lambda!205138))))

(declare-fun bs!1083550 () Bool)

(assert (= bs!1083550 (and d!1488223 b!4682130)))

(assert (=> bs!1083550 (= (= lt!1842171 lt!1842137) (= lambda!205142 lambda!205137))))

(declare-fun bs!1083551 () Bool)

(assert (= bs!1083551 (and d!1488223 b!4682017)))

(assert (=> bs!1083551 (= (= lt!1842171 lt!1841731) (= lambda!205142 lambda!205117))))

(assert (=> bs!1083550 (= (= lt!1842171 lt!1841731) (= lambda!205142 lambda!205136))))

(declare-fun bs!1083552 () Bool)

(assert (= bs!1083552 (and d!1488223 d!1488059)))

(assert (=> bs!1083552 (not (= lambda!205142 lambda!205018))))

(assert (=> d!1488223 true))

(declare-fun bm!327273 () Bool)

(declare-fun call!327279 () Bool)

(declare-fun c!800849 () Bool)

(assert (=> bm!327273 (= call!327279 (forall!11243 (toList!5494 lt!1841731) (ite c!800849 lambda!205139 lambda!205140)))))

(declare-fun e!2921230 () ListMap!4857)

(assert (=> b!4682139 (= e!2921230 lt!1842169)))

(declare-fun lt!1842168 () ListMap!4857)

(assert (=> b!4682139 (= lt!1842168 (+!2104 lt!1841731 (h!58494 (Cons!52277 lt!1841735 lt!1841722))))))

(assert (=> b!4682139 (= lt!1842169 (addToMapMapFromBucket!1234 (t!359561 (Cons!52277 lt!1841735 lt!1841722)) (+!2104 lt!1841731 (h!58494 (Cons!52277 lt!1841735 lt!1841722)))))))

(declare-fun lt!1842176 () Unit!122879)

(declare-fun call!327280 () Unit!122879)

(assert (=> b!4682139 (= lt!1842176 call!327280)))

(assert (=> b!4682139 call!327279))

(declare-fun lt!1842170 () Unit!122879)

(assert (=> b!4682139 (= lt!1842170 lt!1842176)))

(assert (=> b!4682139 (forall!11243 (toList!5494 lt!1842168) lambda!205141)))

(declare-fun lt!1842188 () Unit!122879)

(declare-fun Unit!122981 () Unit!122879)

(assert (=> b!4682139 (= lt!1842188 Unit!122981)))

(assert (=> b!4682139 (forall!11243 (t!359561 (Cons!52277 lt!1841735 lt!1841722)) lambda!205141)))

(declare-fun lt!1842180 () Unit!122879)

(declare-fun Unit!122982 () Unit!122879)

(assert (=> b!4682139 (= lt!1842180 Unit!122982)))

(declare-fun lt!1842182 () Unit!122879)

(declare-fun Unit!122983 () Unit!122879)

(assert (=> b!4682139 (= lt!1842182 Unit!122983)))

(declare-fun lt!1842179 () Unit!122879)

(assert (=> b!4682139 (= lt!1842179 (forallContained!3354 (toList!5494 lt!1842168) lambda!205141 (h!58494 (Cons!52277 lt!1841735 lt!1841722))))))

(assert (=> b!4682139 (contains!15406 lt!1842168 (_1!30095 (h!58494 (Cons!52277 lt!1841735 lt!1841722))))))

(declare-fun lt!1842184 () Unit!122879)

(declare-fun Unit!122984 () Unit!122879)

(assert (=> b!4682139 (= lt!1842184 Unit!122984)))

(assert (=> b!4682139 (contains!15406 lt!1842169 (_1!30095 (h!58494 (Cons!52277 lt!1841735 lt!1841722))))))

(declare-fun lt!1842172 () Unit!122879)

(declare-fun Unit!122985 () Unit!122879)

(assert (=> b!4682139 (= lt!1842172 Unit!122985)))

(declare-fun call!327278 () Bool)

(assert (=> b!4682139 call!327278))

(declare-fun lt!1842177 () Unit!122879)

(declare-fun Unit!122986 () Unit!122879)

(assert (=> b!4682139 (= lt!1842177 Unit!122986)))

(assert (=> b!4682139 (forall!11243 (toList!5494 lt!1842168) lambda!205141)))

(declare-fun lt!1842174 () Unit!122879)

(declare-fun Unit!122987 () Unit!122879)

(assert (=> b!4682139 (= lt!1842174 Unit!122987)))

(declare-fun lt!1842181 () Unit!122879)

(declare-fun Unit!122988 () Unit!122879)

(assert (=> b!4682139 (= lt!1842181 Unit!122988)))

(declare-fun lt!1842186 () Unit!122879)

(assert (=> b!4682139 (= lt!1842186 (addForallContainsKeyThenBeforeAdding!669 lt!1841731 lt!1842169 (_1!30095 (h!58494 (Cons!52277 lt!1841735 lt!1841722))) (_2!30095 (h!58494 (Cons!52277 lt!1841735 lt!1841722)))))))

(assert (=> b!4682139 (forall!11243 (toList!5494 lt!1841731) lambda!205141)))

(declare-fun lt!1842178 () Unit!122879)

(assert (=> b!4682139 (= lt!1842178 lt!1842186)))

(assert (=> b!4682139 (forall!11243 (toList!5494 lt!1841731) lambda!205141)))

(declare-fun lt!1842175 () Unit!122879)

(declare-fun Unit!122989 () Unit!122879)

(assert (=> b!4682139 (= lt!1842175 Unit!122989)))

(declare-fun res!1973399 () Bool)

(assert (=> b!4682139 (= res!1973399 (forall!11243 (Cons!52277 lt!1841735 lt!1841722) lambda!205141))))

(declare-fun e!2921231 () Bool)

(assert (=> b!4682139 (=> (not res!1973399) (not e!2921231))))

(assert (=> b!4682139 e!2921231))

(declare-fun lt!1842187 () Unit!122879)

(declare-fun Unit!122990 () Unit!122879)

(assert (=> b!4682139 (= lt!1842187 Unit!122990)))

(declare-fun bm!327274 () Bool)

(assert (=> bm!327274 (= call!327278 (forall!11243 (ite c!800849 (toList!5494 lt!1841731) (Cons!52277 lt!1841735 lt!1841722)) (ite c!800849 lambda!205139 lambda!205141)))))

(declare-fun b!4682140 () Bool)

(declare-fun res!1973400 () Bool)

(declare-fun e!2921229 () Bool)

(assert (=> b!4682140 (=> (not res!1973400) (not e!2921229))))

(assert (=> b!4682140 (= res!1973400 (forall!11243 (toList!5494 lt!1841731) lambda!205142))))

(assert (=> b!4682141 (= e!2921230 lt!1841731)))

(declare-fun lt!1842185 () Unit!122879)

(assert (=> b!4682141 (= lt!1842185 call!327280)))

(assert (=> b!4682141 call!327279))

(declare-fun lt!1842183 () Unit!122879)

(assert (=> b!4682141 (= lt!1842183 lt!1842185)))

(assert (=> b!4682141 call!327278))

(declare-fun lt!1842173 () Unit!122879)

(declare-fun Unit!122991 () Unit!122879)

(assert (=> b!4682141 (= lt!1842173 Unit!122991)))

(declare-fun bm!327275 () Bool)

(assert (=> bm!327275 (= call!327280 (lemmaContainsAllItsOwnKeys!670 lt!1841731))))

(declare-fun b!4682143 () Bool)

(assert (=> b!4682143 (= e!2921229 (invariantList!1382 (toList!5494 lt!1842171)))))

(assert (=> d!1488223 e!2921229))

(declare-fun res!1973398 () Bool)

(assert (=> d!1488223 (=> (not res!1973398) (not e!2921229))))

(assert (=> d!1488223 (= res!1973398 (forall!11243 (Cons!52277 lt!1841735 lt!1841722) lambda!205142))))

(assert (=> d!1488223 (= lt!1842171 e!2921230)))

(assert (=> d!1488223 (= c!800849 ((_ is Nil!52277) (Cons!52277 lt!1841735 lt!1841722)))))

(assert (=> d!1488223 (noDuplicateKeys!1802 (Cons!52277 lt!1841735 lt!1841722))))

(assert (=> d!1488223 (= (addToMapMapFromBucket!1234 (Cons!52277 lt!1841735 lt!1841722) lt!1841731) lt!1842171)))

(declare-fun b!4682142 () Bool)

(assert (=> b!4682142 (= e!2921231 (forall!11243 (toList!5494 lt!1841731) lambda!205141))))

(assert (= (and d!1488223 c!800849) b!4682141))

(assert (= (and d!1488223 (not c!800849)) b!4682139))

(assert (= (and b!4682139 res!1973399) b!4682142))

(assert (= (or b!4682141 b!4682139) bm!327275))

(assert (= (or b!4682141 b!4682139) bm!327273))

(assert (= (or b!4682141 b!4682139) bm!327274))

(assert (= (and d!1488223 res!1973398) b!4682140))

(assert (= (and b!4682140 res!1973400) b!4682143))

(declare-fun m!5580627 () Bool)

(assert (=> d!1488223 m!5580627))

(declare-fun m!5580629 () Bool)

(assert (=> d!1488223 m!5580629))

(declare-fun m!5580631 () Bool)

(assert (=> b!4682142 m!5580631))

(declare-fun m!5580633 () Bool)

(assert (=> b!4682139 m!5580633))

(declare-fun m!5580635 () Bool)

(assert (=> b!4682139 m!5580635))

(declare-fun m!5580637 () Bool)

(assert (=> b!4682139 m!5580637))

(assert (=> b!4682139 m!5580637))

(declare-fun m!5580639 () Bool)

(assert (=> b!4682139 m!5580639))

(declare-fun m!5580641 () Bool)

(assert (=> b!4682139 m!5580641))

(assert (=> b!4682139 m!5580633))

(declare-fun m!5580643 () Bool)

(assert (=> b!4682139 m!5580643))

(declare-fun m!5580645 () Bool)

(assert (=> b!4682139 m!5580645))

(declare-fun m!5580647 () Bool)

(assert (=> b!4682139 m!5580647))

(declare-fun m!5580649 () Bool)

(assert (=> b!4682139 m!5580649))

(assert (=> b!4682139 m!5580631))

(assert (=> b!4682139 m!5580631))

(declare-fun m!5580651 () Bool)

(assert (=> b!4682140 m!5580651))

(declare-fun m!5580653 () Bool)

(assert (=> bm!327273 m!5580653))

(assert (=> bm!327275 m!5580327))

(declare-fun m!5580655 () Bool)

(assert (=> b!4682143 m!5580655))

(declare-fun m!5580657 () Bool)

(assert (=> bm!327274 m!5580657))

(assert (=> b!4681833 d!1488223))

(declare-fun d!1488225 () Bool)

(assert (=> d!1488225 (= (eq!991 (addToMapMapFromBucket!1234 (Cons!52277 lt!1841735 lt!1841722) lt!1841731) (+!2104 lt!1841737 lt!1841735)) (= (content!9120 (toList!5494 (addToMapMapFromBucket!1234 (Cons!52277 lt!1841735 lt!1841722) lt!1841731))) (content!9120 (toList!5494 (+!2104 lt!1841737 lt!1841735)))))))

(declare-fun bs!1083553 () Bool)

(assert (= bs!1083553 d!1488225))

(declare-fun m!5580659 () Bool)

(assert (=> bs!1083553 m!5580659))

(declare-fun m!5580661 () Bool)

(assert (=> bs!1083553 m!5580661))

(assert (=> b!4681833 d!1488225))

(declare-fun d!1488227 () Bool)

(assert (=> d!1488227 (= (head!9895 (toList!5493 lm!2023)) (h!58495 (toList!5493 lm!2023)))))

(assert (=> b!4681811 d!1488227))

(declare-fun bs!1083554 () Bool)

(declare-fun b!4682146 () Bool)

(assert (= bs!1083554 (and b!4682146 b!4682139)))

(declare-fun lambda!205143 () Int)

(assert (=> bs!1083554 (= (= lt!1841731 lt!1842169) (= lambda!205143 lambda!205141))))

(declare-fun bs!1083555 () Bool)

(assert (= bs!1083555 (and b!4682146 b!4682006)))

(assert (=> bs!1083555 (= (= lt!1841731 lt!1842011) (= lambda!205143 lambda!205115))))

(declare-fun bs!1083556 () Bool)

(assert (= bs!1083556 (and b!4682146 b!4682132)))

(assert (=> bs!1083556 (= lambda!205143 lambda!205135)))

(declare-fun bs!1083557 () Bool)

(assert (= bs!1083557 (and b!4682146 b!4682015)))

(assert (=> bs!1083557 (= (= lt!1841731 lt!1842035) (= lambda!205143 lambda!205119))))

(assert (=> bs!1083557 (= lambda!205143 lambda!205118)))

(declare-fun bs!1083558 () Bool)

(assert (= bs!1083558 (and b!4682146 d!1488083)))

(assert (=> bs!1083558 (= (= lt!1841731 lt!1842013) (= lambda!205143 lambda!205116))))

(declare-fun bs!1083559 () Bool)

(assert (= bs!1083559 (and b!4682146 d!1488157)))

(assert (=> bs!1083559 (= (= lt!1841731 lt!1842037) (= lambda!205143 lambda!205120))))

(assert (=> bs!1083555 (= lambda!205143 lambda!205114)))

(assert (=> bs!1083554 (= lambda!205143 lambda!205140)))

(declare-fun bs!1083560 () Bool)

(assert (= bs!1083560 (and b!4682146 d!1488223)))

(assert (=> bs!1083560 (= (= lt!1841731 lt!1842171) (= lambda!205143 lambda!205142))))

(declare-fun bs!1083561 () Bool)

(assert (= bs!1083561 (and b!4682146 b!4682008)))

(assert (=> bs!1083561 (= lambda!205143 lambda!205113)))

(declare-fun bs!1083562 () Bool)

(assert (= bs!1083562 (and b!4682146 d!1488071)))

(assert (=> bs!1083562 (not (= lambda!205143 lambda!205019))))

(declare-fun bs!1083563 () Bool)

(assert (= bs!1083563 (and b!4682146 b!4682141)))

(assert (=> bs!1083563 (= lambda!205143 lambda!205139)))

(declare-fun bs!1083564 () Bool)

(assert (= bs!1083564 (and b!4682146 d!1488213)))

(assert (=> bs!1083564 (= (= lt!1841731 lt!1842139) (= lambda!205143 lambda!205138))))

(declare-fun bs!1083565 () Bool)

(assert (= bs!1083565 (and b!4682146 b!4682130)))

(assert (=> bs!1083565 (= (= lt!1841731 lt!1842137) (= lambda!205143 lambda!205137))))

(declare-fun bs!1083566 () Bool)

(assert (= bs!1083566 (and b!4682146 b!4682017)))

(assert (=> bs!1083566 (= lambda!205143 lambda!205117)))

(assert (=> bs!1083565 (= lambda!205143 lambda!205136)))

(declare-fun bs!1083567 () Bool)

(assert (= bs!1083567 (and b!4682146 d!1488059)))

(assert (=> bs!1083567 (not (= lambda!205143 lambda!205018))))

(assert (=> b!4682146 true))

(declare-fun bs!1083568 () Bool)

(declare-fun b!4682144 () Bool)

(assert (= bs!1083568 (and b!4682144 b!4682139)))

(declare-fun lambda!205144 () Int)

(assert (=> bs!1083568 (= (= lt!1841731 lt!1842169) (= lambda!205144 lambda!205141))))

(declare-fun bs!1083569 () Bool)

(assert (= bs!1083569 (and b!4682144 b!4682006)))

(assert (=> bs!1083569 (= (= lt!1841731 lt!1842011) (= lambda!205144 lambda!205115))))

(declare-fun bs!1083570 () Bool)

(assert (= bs!1083570 (and b!4682144 b!4682132)))

(assert (=> bs!1083570 (= lambda!205144 lambda!205135)))

(declare-fun bs!1083571 () Bool)

(assert (= bs!1083571 (and b!4682144 b!4682015)))

(assert (=> bs!1083571 (= (= lt!1841731 lt!1842035) (= lambda!205144 lambda!205119))))

(assert (=> bs!1083571 (= lambda!205144 lambda!205118)))

(declare-fun bs!1083572 () Bool)

(assert (= bs!1083572 (and b!4682144 d!1488083)))

(assert (=> bs!1083572 (= (= lt!1841731 lt!1842013) (= lambda!205144 lambda!205116))))

(declare-fun bs!1083573 () Bool)

(assert (= bs!1083573 (and b!4682144 b!4682146)))

(assert (=> bs!1083573 (= lambda!205144 lambda!205143)))

(declare-fun bs!1083574 () Bool)

(assert (= bs!1083574 (and b!4682144 d!1488157)))

(assert (=> bs!1083574 (= (= lt!1841731 lt!1842037) (= lambda!205144 lambda!205120))))

(assert (=> bs!1083569 (= lambda!205144 lambda!205114)))

(assert (=> bs!1083568 (= lambda!205144 lambda!205140)))

(declare-fun bs!1083575 () Bool)

(assert (= bs!1083575 (and b!4682144 d!1488223)))

(assert (=> bs!1083575 (= (= lt!1841731 lt!1842171) (= lambda!205144 lambda!205142))))

(declare-fun bs!1083576 () Bool)

(assert (= bs!1083576 (and b!4682144 b!4682008)))

(assert (=> bs!1083576 (= lambda!205144 lambda!205113)))

(declare-fun bs!1083577 () Bool)

(assert (= bs!1083577 (and b!4682144 d!1488071)))

(assert (=> bs!1083577 (not (= lambda!205144 lambda!205019))))

(declare-fun bs!1083578 () Bool)

(assert (= bs!1083578 (and b!4682144 b!4682141)))

(assert (=> bs!1083578 (= lambda!205144 lambda!205139)))

(declare-fun bs!1083579 () Bool)

(assert (= bs!1083579 (and b!4682144 d!1488213)))

(assert (=> bs!1083579 (= (= lt!1841731 lt!1842139) (= lambda!205144 lambda!205138))))

(declare-fun bs!1083580 () Bool)

(assert (= bs!1083580 (and b!4682144 b!4682130)))

(assert (=> bs!1083580 (= (= lt!1841731 lt!1842137) (= lambda!205144 lambda!205137))))

(declare-fun bs!1083581 () Bool)

(assert (= bs!1083581 (and b!4682144 b!4682017)))

(assert (=> bs!1083581 (= lambda!205144 lambda!205117)))

(assert (=> bs!1083580 (= lambda!205144 lambda!205136)))

(declare-fun bs!1083582 () Bool)

(assert (= bs!1083582 (and b!4682144 d!1488059)))

(assert (=> bs!1083582 (not (= lambda!205144 lambda!205018))))

(assert (=> b!4682144 true))

(declare-fun lambda!205145 () Int)

(declare-fun lt!1842190 () ListMap!4857)

(assert (=> bs!1083568 (= (= lt!1842190 lt!1842169) (= lambda!205145 lambda!205141))))

(assert (=> bs!1083569 (= (= lt!1842190 lt!1842011) (= lambda!205145 lambda!205115))))

(assert (=> bs!1083570 (= (= lt!1842190 lt!1841731) (= lambda!205145 lambda!205135))))

(assert (=> bs!1083571 (= (= lt!1842190 lt!1842035) (= lambda!205145 lambda!205119))))

(assert (=> bs!1083571 (= (= lt!1842190 lt!1841731) (= lambda!205145 lambda!205118))))

(assert (=> bs!1083572 (= (= lt!1842190 lt!1842013) (= lambda!205145 lambda!205116))))

(assert (=> bs!1083573 (= (= lt!1842190 lt!1841731) (= lambda!205145 lambda!205143))))

(assert (=> bs!1083574 (= (= lt!1842190 lt!1842037) (= lambda!205145 lambda!205120))))

(assert (=> b!4682144 (= (= lt!1842190 lt!1841731) (= lambda!205145 lambda!205144))))

(assert (=> bs!1083569 (= (= lt!1842190 lt!1841731) (= lambda!205145 lambda!205114))))

(assert (=> bs!1083568 (= (= lt!1842190 lt!1841731) (= lambda!205145 lambda!205140))))

(assert (=> bs!1083575 (= (= lt!1842190 lt!1842171) (= lambda!205145 lambda!205142))))

(assert (=> bs!1083576 (= (= lt!1842190 lt!1841731) (= lambda!205145 lambda!205113))))

(assert (=> bs!1083577 (not (= lambda!205145 lambda!205019))))

(assert (=> bs!1083578 (= (= lt!1842190 lt!1841731) (= lambda!205145 lambda!205139))))

(assert (=> bs!1083579 (= (= lt!1842190 lt!1842139) (= lambda!205145 lambda!205138))))

(assert (=> bs!1083580 (= (= lt!1842190 lt!1842137) (= lambda!205145 lambda!205137))))

(assert (=> bs!1083581 (= (= lt!1842190 lt!1841731) (= lambda!205145 lambda!205117))))

(assert (=> bs!1083580 (= (= lt!1842190 lt!1841731) (= lambda!205145 lambda!205136))))

(assert (=> bs!1083582 (not (= lambda!205145 lambda!205018))))

(assert (=> b!4682144 true))

(declare-fun bs!1083583 () Bool)

(declare-fun d!1488229 () Bool)

(assert (= bs!1083583 (and d!1488229 b!4682139)))

(declare-fun lambda!205146 () Int)

(declare-fun lt!1842192 () ListMap!4857)

(assert (=> bs!1083583 (= (= lt!1842192 lt!1842169) (= lambda!205146 lambda!205141))))

(declare-fun bs!1083584 () Bool)

(assert (= bs!1083584 (and d!1488229 b!4682006)))

(assert (=> bs!1083584 (= (= lt!1842192 lt!1842011) (= lambda!205146 lambda!205115))))

(declare-fun bs!1083585 () Bool)

(assert (= bs!1083585 (and d!1488229 b!4682132)))

(assert (=> bs!1083585 (= (= lt!1842192 lt!1841731) (= lambda!205146 lambda!205135))))

(declare-fun bs!1083586 () Bool)

(assert (= bs!1083586 (and d!1488229 b!4682015)))

(assert (=> bs!1083586 (= (= lt!1842192 lt!1842035) (= lambda!205146 lambda!205119))))

(assert (=> bs!1083586 (= (= lt!1842192 lt!1841731) (= lambda!205146 lambda!205118))))

(declare-fun bs!1083587 () Bool)

(assert (= bs!1083587 (and d!1488229 d!1488083)))

(assert (=> bs!1083587 (= (= lt!1842192 lt!1842013) (= lambda!205146 lambda!205116))))

(declare-fun bs!1083588 () Bool)

(assert (= bs!1083588 (and d!1488229 b!4682146)))

(assert (=> bs!1083588 (= (= lt!1842192 lt!1841731) (= lambda!205146 lambda!205143))))

(declare-fun bs!1083589 () Bool)

(assert (= bs!1083589 (and d!1488229 d!1488157)))

(assert (=> bs!1083589 (= (= lt!1842192 lt!1842037) (= lambda!205146 lambda!205120))))

(declare-fun bs!1083590 () Bool)

(assert (= bs!1083590 (and d!1488229 b!4682144)))

(assert (=> bs!1083590 (= (= lt!1842192 lt!1841731) (= lambda!205146 lambda!205144))))

(assert (=> bs!1083584 (= (= lt!1842192 lt!1841731) (= lambda!205146 lambda!205114))))

(assert (=> bs!1083583 (= (= lt!1842192 lt!1841731) (= lambda!205146 lambda!205140))))

(declare-fun bs!1083591 () Bool)

(assert (= bs!1083591 (and d!1488229 d!1488223)))

(assert (=> bs!1083591 (= (= lt!1842192 lt!1842171) (= lambda!205146 lambda!205142))))

(declare-fun bs!1083592 () Bool)

(assert (= bs!1083592 (and d!1488229 b!4682008)))

(assert (=> bs!1083592 (= (= lt!1842192 lt!1841731) (= lambda!205146 lambda!205113))))

(declare-fun bs!1083593 () Bool)

(assert (= bs!1083593 (and d!1488229 d!1488071)))

(assert (=> bs!1083593 (not (= lambda!205146 lambda!205019))))

(assert (=> bs!1083590 (= (= lt!1842192 lt!1842190) (= lambda!205146 lambda!205145))))

(declare-fun bs!1083594 () Bool)

(assert (= bs!1083594 (and d!1488229 b!4682141)))

(assert (=> bs!1083594 (= (= lt!1842192 lt!1841731) (= lambda!205146 lambda!205139))))

(declare-fun bs!1083595 () Bool)

(assert (= bs!1083595 (and d!1488229 d!1488213)))

(assert (=> bs!1083595 (= (= lt!1842192 lt!1842139) (= lambda!205146 lambda!205138))))

(declare-fun bs!1083596 () Bool)

(assert (= bs!1083596 (and d!1488229 b!4682130)))

(assert (=> bs!1083596 (= (= lt!1842192 lt!1842137) (= lambda!205146 lambda!205137))))

(declare-fun bs!1083597 () Bool)

(assert (= bs!1083597 (and d!1488229 b!4682017)))

(assert (=> bs!1083597 (= (= lt!1842192 lt!1841731) (= lambda!205146 lambda!205117))))

(assert (=> bs!1083596 (= (= lt!1842192 lt!1841731) (= lambda!205146 lambda!205136))))

(declare-fun bs!1083598 () Bool)

(assert (= bs!1083598 (and d!1488229 d!1488059)))

(assert (=> bs!1083598 (not (= lambda!205146 lambda!205018))))

(assert (=> d!1488229 true))

(declare-fun c!800850 () Bool)

(declare-fun bm!327276 () Bool)

(declare-fun call!327282 () Bool)

(assert (=> bm!327276 (= call!327282 (forall!11243 (toList!5494 lt!1841731) (ite c!800850 lambda!205143 lambda!205144)))))

(declare-fun e!2921233 () ListMap!4857)

(assert (=> b!4682144 (= e!2921233 lt!1842190)))

(declare-fun lt!1842189 () ListMap!4857)

(assert (=> b!4682144 (= lt!1842189 (+!2104 lt!1841731 (h!58494 (_2!30096 (h!58495 (toList!5493 lm!2023))))))))

(assert (=> b!4682144 (= lt!1842190 (addToMapMapFromBucket!1234 (t!359561 (_2!30096 (h!58495 (toList!5493 lm!2023)))) (+!2104 lt!1841731 (h!58494 (_2!30096 (h!58495 (toList!5493 lm!2023)))))))))

(declare-fun lt!1842197 () Unit!122879)

(declare-fun call!327283 () Unit!122879)

(assert (=> b!4682144 (= lt!1842197 call!327283)))

(assert (=> b!4682144 call!327282))

(declare-fun lt!1842191 () Unit!122879)

(assert (=> b!4682144 (= lt!1842191 lt!1842197)))

(assert (=> b!4682144 (forall!11243 (toList!5494 lt!1842189) lambda!205145)))

(declare-fun lt!1842209 () Unit!122879)

(declare-fun Unit!122992 () Unit!122879)

(assert (=> b!4682144 (= lt!1842209 Unit!122992)))

(assert (=> b!4682144 (forall!11243 (t!359561 (_2!30096 (h!58495 (toList!5493 lm!2023)))) lambda!205145)))

(declare-fun lt!1842201 () Unit!122879)

(declare-fun Unit!122993 () Unit!122879)

(assert (=> b!4682144 (= lt!1842201 Unit!122993)))

(declare-fun lt!1842203 () Unit!122879)

(declare-fun Unit!122994 () Unit!122879)

(assert (=> b!4682144 (= lt!1842203 Unit!122994)))

(declare-fun lt!1842200 () Unit!122879)

(assert (=> b!4682144 (= lt!1842200 (forallContained!3354 (toList!5494 lt!1842189) lambda!205145 (h!58494 (_2!30096 (h!58495 (toList!5493 lm!2023))))))))

(assert (=> b!4682144 (contains!15406 lt!1842189 (_1!30095 (h!58494 (_2!30096 (h!58495 (toList!5493 lm!2023))))))))

(declare-fun lt!1842205 () Unit!122879)

(declare-fun Unit!122995 () Unit!122879)

(assert (=> b!4682144 (= lt!1842205 Unit!122995)))

(assert (=> b!4682144 (contains!15406 lt!1842190 (_1!30095 (h!58494 (_2!30096 (h!58495 (toList!5493 lm!2023))))))))

(declare-fun lt!1842193 () Unit!122879)

(declare-fun Unit!122996 () Unit!122879)

(assert (=> b!4682144 (= lt!1842193 Unit!122996)))

(declare-fun call!327281 () Bool)

(assert (=> b!4682144 call!327281))

(declare-fun lt!1842198 () Unit!122879)

(declare-fun Unit!122997 () Unit!122879)

(assert (=> b!4682144 (= lt!1842198 Unit!122997)))

(assert (=> b!4682144 (forall!11243 (toList!5494 lt!1842189) lambda!205145)))

(declare-fun lt!1842195 () Unit!122879)

(declare-fun Unit!122998 () Unit!122879)

(assert (=> b!4682144 (= lt!1842195 Unit!122998)))

(declare-fun lt!1842202 () Unit!122879)

(declare-fun Unit!122999 () Unit!122879)

(assert (=> b!4682144 (= lt!1842202 Unit!122999)))

(declare-fun lt!1842207 () Unit!122879)

(assert (=> b!4682144 (= lt!1842207 (addForallContainsKeyThenBeforeAdding!669 lt!1841731 lt!1842190 (_1!30095 (h!58494 (_2!30096 (h!58495 (toList!5493 lm!2023))))) (_2!30095 (h!58494 (_2!30096 (h!58495 (toList!5493 lm!2023)))))))))

(assert (=> b!4682144 (forall!11243 (toList!5494 lt!1841731) lambda!205145)))

(declare-fun lt!1842199 () Unit!122879)

(assert (=> b!4682144 (= lt!1842199 lt!1842207)))

(assert (=> b!4682144 (forall!11243 (toList!5494 lt!1841731) lambda!205145)))

(declare-fun lt!1842196 () Unit!122879)

(declare-fun Unit!123000 () Unit!122879)

(assert (=> b!4682144 (= lt!1842196 Unit!123000)))

(declare-fun res!1973402 () Bool)

(assert (=> b!4682144 (= res!1973402 (forall!11243 (_2!30096 (h!58495 (toList!5493 lm!2023))) lambda!205145))))

(declare-fun e!2921234 () Bool)

(assert (=> b!4682144 (=> (not res!1973402) (not e!2921234))))

(assert (=> b!4682144 e!2921234))

(declare-fun lt!1842208 () Unit!122879)

(declare-fun Unit!123001 () Unit!122879)

(assert (=> b!4682144 (= lt!1842208 Unit!123001)))

(declare-fun bm!327277 () Bool)

(assert (=> bm!327277 (= call!327281 (forall!11243 (ite c!800850 (toList!5494 lt!1841731) (_2!30096 (h!58495 (toList!5493 lm!2023)))) (ite c!800850 lambda!205143 lambda!205145)))))

(declare-fun b!4682145 () Bool)

(declare-fun res!1973403 () Bool)

(declare-fun e!2921232 () Bool)

(assert (=> b!4682145 (=> (not res!1973403) (not e!2921232))))

(assert (=> b!4682145 (= res!1973403 (forall!11243 (toList!5494 lt!1841731) lambda!205146))))

(assert (=> b!4682146 (= e!2921233 lt!1841731)))

(declare-fun lt!1842206 () Unit!122879)

(assert (=> b!4682146 (= lt!1842206 call!327283)))

(assert (=> b!4682146 call!327282))

(declare-fun lt!1842204 () Unit!122879)

(assert (=> b!4682146 (= lt!1842204 lt!1842206)))

(assert (=> b!4682146 call!327281))

(declare-fun lt!1842194 () Unit!122879)

(declare-fun Unit!123002 () Unit!122879)

(assert (=> b!4682146 (= lt!1842194 Unit!123002)))

(declare-fun bm!327278 () Bool)

(assert (=> bm!327278 (= call!327283 (lemmaContainsAllItsOwnKeys!670 lt!1841731))))

(declare-fun b!4682148 () Bool)

(assert (=> b!4682148 (= e!2921232 (invariantList!1382 (toList!5494 lt!1842192)))))

(assert (=> d!1488229 e!2921232))

(declare-fun res!1973401 () Bool)

(assert (=> d!1488229 (=> (not res!1973401) (not e!2921232))))

(assert (=> d!1488229 (= res!1973401 (forall!11243 (_2!30096 (h!58495 (toList!5493 lm!2023))) lambda!205146))))

(assert (=> d!1488229 (= lt!1842192 e!2921233)))

(assert (=> d!1488229 (= c!800850 ((_ is Nil!52277) (_2!30096 (h!58495 (toList!5493 lm!2023)))))))

(assert (=> d!1488229 (noDuplicateKeys!1802 (_2!30096 (h!58495 (toList!5493 lm!2023))))))

(assert (=> d!1488229 (= (addToMapMapFromBucket!1234 (_2!30096 (h!58495 (toList!5493 lm!2023))) lt!1841731) lt!1842192)))

(declare-fun b!4682147 () Bool)

(assert (=> b!4682147 (= e!2921234 (forall!11243 (toList!5494 lt!1841731) lambda!205145))))

(assert (= (and d!1488229 c!800850) b!4682146))

(assert (= (and d!1488229 (not c!800850)) b!4682144))

(assert (= (and b!4682144 res!1973402) b!4682147))

(assert (= (or b!4682146 b!4682144) bm!327278))

(assert (= (or b!4682146 b!4682144) bm!327276))

(assert (= (or b!4682146 b!4682144) bm!327277))

(assert (= (and d!1488229 res!1973401) b!4682145))

(assert (= (and b!4682145 res!1973403) b!4682148))

(declare-fun m!5580663 () Bool)

(assert (=> d!1488229 m!5580663))

(declare-fun m!5580665 () Bool)

(assert (=> d!1488229 m!5580665))

(declare-fun m!5580667 () Bool)

(assert (=> b!4682147 m!5580667))

(declare-fun m!5580669 () Bool)

(assert (=> b!4682144 m!5580669))

(declare-fun m!5580671 () Bool)

(assert (=> b!4682144 m!5580671))

(declare-fun m!5580673 () Bool)

(assert (=> b!4682144 m!5580673))

(assert (=> b!4682144 m!5580673))

(declare-fun m!5580675 () Bool)

(assert (=> b!4682144 m!5580675))

(declare-fun m!5580677 () Bool)

(assert (=> b!4682144 m!5580677))

(assert (=> b!4682144 m!5580669))

(declare-fun m!5580679 () Bool)

(assert (=> b!4682144 m!5580679))

(declare-fun m!5580681 () Bool)

(assert (=> b!4682144 m!5580681))

(declare-fun m!5580683 () Bool)

(assert (=> b!4682144 m!5580683))

(declare-fun m!5580685 () Bool)

(assert (=> b!4682144 m!5580685))

(assert (=> b!4682144 m!5580667))

(assert (=> b!4682144 m!5580667))

(declare-fun m!5580687 () Bool)

(assert (=> b!4682145 m!5580687))

(declare-fun m!5580689 () Bool)

(assert (=> bm!327276 m!5580689))

(assert (=> bm!327278 m!5580327))

(declare-fun m!5580691 () Bool)

(assert (=> b!4682148 m!5580691))

(declare-fun m!5580693 () Bool)

(assert (=> bm!327277 m!5580693))

(assert (=> b!4681832 d!1488229))

(declare-fun bs!1083599 () Bool)

(declare-fun d!1488231 () Bool)

(assert (= bs!1083599 (and d!1488231 d!1488077)))

(declare-fun lambda!205147 () Int)

(assert (=> bs!1083599 (= lambda!205147 lambda!205057)))

(declare-fun bs!1083600 () Bool)

(assert (= bs!1083600 (and d!1488231 d!1488195)))

(assert (=> bs!1083600 (= lambda!205147 lambda!205132)))

(declare-fun bs!1083601 () Bool)

(assert (= bs!1083601 (and d!1488231 d!1488207)))

(assert (=> bs!1083601 (= lambda!205147 lambda!205134)))

(declare-fun bs!1083602 () Bool)

(assert (= bs!1083602 (and d!1488231 d!1488193)))

(assert (=> bs!1083602 (= lambda!205147 lambda!205131)))

(declare-fun bs!1083603 () Bool)

(assert (= bs!1083603 (and d!1488231 start!472832)))

(assert (=> bs!1083603 (= lambda!205147 lambda!205015)))

(declare-fun bs!1083604 () Bool)

(assert (= bs!1083604 (and d!1488231 d!1488073)))

(assert (=> bs!1083604 (not (= lambda!205147 lambda!205022))))

(declare-fun bs!1083605 () Bool)

(assert (= bs!1083605 (and d!1488231 d!1488199)))

(assert (=> bs!1083605 (= lambda!205147 lambda!205133)))

(declare-fun bs!1083606 () Bool)

(assert (= bs!1083606 (and d!1488231 d!1488181)))

(assert (=> bs!1083606 (= lambda!205147 lambda!205130)))

(declare-fun lt!1842210 () ListMap!4857)

(assert (=> d!1488231 (invariantList!1382 (toList!5494 lt!1842210))))

(declare-fun e!2921235 () ListMap!4857)

(assert (=> d!1488231 (= lt!1842210 e!2921235)))

(declare-fun c!800851 () Bool)

(assert (=> d!1488231 (= c!800851 ((_ is Cons!52278) (t!359562 (toList!5493 lm!2023))))))

(assert (=> d!1488231 (forall!11241 (t!359562 (toList!5493 lm!2023)) lambda!205147)))

(assert (=> d!1488231 (= (extractMap!1828 (t!359562 (toList!5493 lm!2023))) lt!1842210)))

(declare-fun b!4682149 () Bool)

(assert (=> b!4682149 (= e!2921235 (addToMapMapFromBucket!1234 (_2!30096 (h!58495 (t!359562 (toList!5493 lm!2023)))) (extractMap!1828 (t!359562 (t!359562 (toList!5493 lm!2023))))))))

(declare-fun b!4682150 () Bool)

(assert (=> b!4682150 (= e!2921235 (ListMap!4858 Nil!52277))))

(assert (= (and d!1488231 c!800851) b!4682149))

(assert (= (and d!1488231 (not c!800851)) b!4682150))

(declare-fun m!5580695 () Bool)

(assert (=> d!1488231 m!5580695))

(declare-fun m!5580697 () Bool)

(assert (=> d!1488231 m!5580697))

(declare-fun m!5580699 () Bool)

(assert (=> b!4682149 m!5580699))

(assert (=> b!4682149 m!5580699))

(declare-fun m!5580701 () Bool)

(assert (=> b!4682149 m!5580701))

(assert (=> b!4681832 d!1488231))

(declare-fun d!1488233 () Bool)

(assert (=> d!1488233 (= (tail!8473 lm!2023) (ListLongMap!4024 (tail!8471 (toList!5493 lm!2023))))))

(declare-fun bs!1083607 () Bool)

(assert (= bs!1083607 d!1488233))

(assert (=> bs!1083607 m!5579863))

(assert (=> b!4681832 d!1488233))

(declare-fun e!2921238 () Bool)

(declare-fun tp!1345182 () Bool)

(declare-fun b!4682155 () Bool)

(assert (=> b!4682155 (= e!2921238 (and tp_is_empty!30501 tp_is_empty!30503 tp!1345182))))

(assert (=> b!4681828 (= tp!1345169 e!2921238)))

(assert (= (and b!4681828 ((_ is Cons!52277) (t!359561 oldBucket!34))) b!4682155))

(declare-fun b!4682160 () Bool)

(declare-fun e!2921241 () Bool)

(declare-fun tp!1345187 () Bool)

(declare-fun tp!1345188 () Bool)

(assert (=> b!4682160 (= e!2921241 (and tp!1345187 tp!1345188))))

(assert (=> b!4681808 (= tp!1345167 e!2921241)))

(assert (= (and b!4681808 ((_ is Cons!52278) (toList!5493 lm!2023))) b!4682160))

(declare-fun e!2921242 () Bool)

(declare-fun tp!1345189 () Bool)

(declare-fun b!4682161 () Bool)

(assert (=> b!4682161 (= e!2921242 (and tp_is_empty!30501 tp_is_empty!30503 tp!1345189))))

(assert (=> b!4681822 (= tp!1345168 e!2921242)))

(assert (= (and b!4681822 ((_ is Cons!52277) (t!359561 newBucket!218))) b!4682161))

(declare-fun b_lambda!176721 () Bool)

(assert (= b_lambda!176709 (or start!472832 b_lambda!176721)))

(declare-fun bs!1083608 () Bool)

(declare-fun d!1488235 () Bool)

(assert (= bs!1083608 (and d!1488235 start!472832)))

(assert (=> bs!1083608 (= (dynLambda!21685 lambda!205015 (h!58495 (Cons!52278 lt!1841725 lt!1841721))) (noDuplicateKeys!1802 (_2!30096 (h!58495 (Cons!52278 lt!1841725 lt!1841721)))))))

(declare-fun m!5580703 () Bool)

(assert (=> bs!1083608 m!5580703))

(assert (=> b!4681877 d!1488235))

(declare-fun b_lambda!176723 () Bool)

(assert (= b_lambda!176719 (or start!472832 b_lambda!176723)))

(declare-fun bs!1083609 () Bool)

(declare-fun d!1488237 () Bool)

(assert (= bs!1083609 (and d!1488237 start!472832)))

(assert (=> bs!1083609 (= (dynLambda!21685 lambda!205015 (h!58495 (toList!5493 lm!2023))) (noDuplicateKeys!1802 (_2!30096 (h!58495 (toList!5493 lm!2023)))))))

(assert (=> bs!1083609 m!5580665))

(assert (=> b!4682103 d!1488237))

(check-sat (not bs!1083609) (not b!4682149) (not b!4682094) (not b!4681878) (not b!4682139) (not d!1488217) (not bm!327269) (not b!4682160) (not b!4682101) (not b!4682006) (not d!1488193) (not bm!327276) (not b!4682081) (not b!4681860) (not d!1488189) (not b!4682110) (not b!4682115) (not d!1488077) (not b!4682137) (not bm!327257) (not d!1488051) (not b!4682130) (not d!1488213) (not bm!327275) (not b!4682088) (not b!4682143) (not d!1488231) (not bm!327277) (not bm!327271) (not bm!327259) (not b!4682109) (not bm!327273) (not b!4682136) (not b!4681896) (not b!4682080) (not b!4682145) (not d!1488197) (not d!1488067) (not b!4682122) (not bm!327255) (not b!4682120) (not b!4682107) (not bm!327260) (not b!4682140) (not b!4682117) (not d!1488223) (not b!4682095) (not d!1488225) (not d!1488205) (not b!4682142) (not b!4682089) (not d!1488229) (not b!4682121) (not b!4681857) (not d!1488071) (not d!1488047) (not d!1488055) (not bm!327278) (not d!1488199) (not b!4682155) (not b!4682111) (not d!1488073) (not b!4682147) (not b!4682087) (not bm!327258) (not b!4682019) (not b!4682086) (not d!1488215) (not b!4682131) (not bm!327256) (not b!4682016) (not d!1488065) (not bm!327272) (not b!4682105) (not b!4682010) (not d!1488061) (not b_lambda!176723) (not d!1488219) (not d!1488083) (not b!4682083) (not b!4682079) (not d!1488179) (not d!1488063) (not b!4682138) (not bs!1083608) (not b!4682116) (not b_lambda!176721) (not d!1488049) (not d!1488191) tp_is_empty!30501 (not b!4682135) (not b!4682085) (not b!4682144) (not b!4681840) (not b!4681859) (not b!4682015) (not b!4682102) (not d!1488201) (not b!4682090) (not b!4681866) (not b!4682148) (not b!4682134) (not b!4682113) (not b!4682129) (not d!1488207) (not d!1488233) (not b!4682009) (not d!1488181) (not d!1488059) (not b!4682104) tp_is_empty!30503 (not b!4682133) (not d!1488221) (not d!1488069) (not bm!327267) (not b!4682007) (not b!4682018) (not bm!327268) (not b!4682161) (not d!1488195) (not b!4681865) (not b!4682092) (not d!1488157) (not b!4682118) (not b!4682096) (not bm!327274) (not d!1488161) (not bm!327270))
(check-sat)
