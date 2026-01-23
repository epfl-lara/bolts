; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!419152 () Bool)

(assert start!419152)

(declare-fun b!4343851 () Bool)

(declare-fun res!1783057 () Bool)

(declare-fun e!2703150 () Bool)

(assert (=> b!4343851 (=> res!1783057 e!2703150)))

(declare-datatypes ((K!10105 0))(
  ( (K!10106 (val!16355 Int)) )
))
(declare-datatypes ((V!10351 0))(
  ( (V!10352 (val!16356 Int)) )
))
(declare-datatypes ((tuple2!48030 0))(
  ( (tuple2!48031 (_1!27309 K!10105) (_2!27309 V!10351)) )
))
(declare-datatypes ((List!48873 0))(
  ( (Nil!48749) (Cons!48749 (h!54266 tuple2!48030) (t!355793 List!48873)) )
))
(declare-fun lt!1557161 () List!48873)

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4807 0))(
  ( (HashableExt!4806 (__x!30510 Int)) )
))
(declare-fun hashF!1247 () Hashable!4807)

(declare-fun allKeysSameHash!373 (List!48873 (_ BitVec 64) Hashable!4807) Bool)

(assert (=> b!4343851 (= res!1783057 (not (allKeysSameHash!373 lt!1557161 hash!377 hashF!1247)))))

(declare-fun b!4343852 () Bool)

(declare-fun e!2703144 () Bool)

(declare-datatypes ((ListMap!2057 0))(
  ( (ListMap!2058 (toList!2813 List!48873)) )
))
(declare-fun lt!1557143 () ListMap!2057)

(declare-fun lt!1557151 () ListMap!2057)

(declare-fun eq!205 (ListMap!2057 ListMap!2057) Bool)

(assert (=> b!4343852 (= e!2703144 (eq!205 lt!1557143 lt!1557151))))

(declare-fun b!4343854 () Bool)

(declare-fun res!1783063 () Bool)

(declare-fun e!2703153 () Bool)

(assert (=> b!4343854 (=> (not res!1783063) (not e!2703153))))

(declare-datatypes ((tuple2!48032 0))(
  ( (tuple2!48033 (_1!27310 (_ BitVec 64)) (_2!27310 List!48873)) )
))
(declare-datatypes ((List!48874 0))(
  ( (Nil!48750) (Cons!48750 (h!54267 tuple2!48032) (t!355794 List!48874)) )
))
(declare-datatypes ((ListLongMap!1463 0))(
  ( (ListLongMap!1464 (toList!2814 List!48874)) )
))
(declare-fun lt!1557158 () ListLongMap!1463)

(declare-fun lambda!137541 () Int)

(declare-fun forall!9001 (List!48874 Int) Bool)

(assert (=> b!4343854 (= res!1783063 (forall!9001 (toList!2814 lt!1557158) lambda!137541))))

(declare-fun b!4343855 () Bool)

(declare-fun e!2703147 () Bool)

(declare-fun e!2703145 () Bool)

(assert (=> b!4343855 (= e!2703147 e!2703145)))

(declare-fun res!1783055 () Bool)

(assert (=> b!4343855 (=> (not res!1783055) (not e!2703145))))

(declare-fun lt!1557155 () (_ BitVec 64))

(assert (=> b!4343855 (= res!1783055 (= lt!1557155 hash!377))))

(declare-fun key!3918 () K!10105)

(declare-fun hash!1378 (Hashable!4807 K!10105) (_ BitVec 64))

(assert (=> b!4343855 (= lt!1557155 (hash!1378 hashF!1247 key!3918))))

(declare-fun b!4343856 () Bool)

(declare-fun res!1783061 () Bool)

(declare-fun e!2703152 () Bool)

(assert (=> b!4343856 (=> res!1783061 e!2703152)))

(declare-fun newBucket!200 () List!48873)

(declare-fun noDuplicateKeys!415 (List!48873) Bool)

(assert (=> b!4343856 (= res!1783061 (not (noDuplicateKeys!415 newBucket!200)))))

(declare-fun b!4343857 () Bool)

(declare-fun e!2703154 () Bool)

(assert (=> b!4343857 (= e!2703152 e!2703154)))

(declare-fun res!1783065 () Bool)

(assert (=> b!4343857 (=> res!1783065 e!2703154)))

(declare-fun lm!1707 () ListLongMap!1463)

(get-info :version)

(assert (=> b!4343857 (= res!1783065 (or (not ((_ is Cons!48750) (toList!2814 lm!1707))) (not (= (_1!27310 (h!54267 (toList!2814 lm!1707))) hash!377))))))

(assert (=> b!4343857 e!2703153))

(declare-fun res!1783060 () Bool)

(assert (=> b!4343857 (=> (not res!1783060) (not e!2703153))))

(assert (=> b!4343857 (= res!1783060 (forall!9001 (toList!2814 lt!1557158) lambda!137541))))

(declare-fun lt!1557144 () tuple2!48032)

(declare-fun +!501 (ListLongMap!1463 tuple2!48032) ListLongMap!1463)

(assert (=> b!4343857 (= lt!1557158 (+!501 lm!1707 lt!1557144))))

(assert (=> b!4343857 (= lt!1557144 (tuple2!48033 hash!377 newBucket!200))))

(declare-datatypes ((Unit!70173 0))(
  ( (Unit!70174) )
))
(declare-fun lt!1557147 () Unit!70173)

(declare-fun addValidProp!69 (ListLongMap!1463 Int (_ BitVec 64) List!48873) Unit!70173)

(assert (=> b!4343857 (= lt!1557147 (addValidProp!69 lm!1707 lambda!137541 hash!377 newBucket!200))))

(assert (=> b!4343857 (forall!9001 (toList!2814 lm!1707) lambda!137541)))

(declare-fun b!4343858 () Bool)

(declare-fun tp!1329334 () Bool)

(declare-fun tp_is_empty!24897 () Bool)

(declare-fun e!2703149 () Bool)

(declare-fun tp_is_empty!24899 () Bool)

(assert (=> b!4343858 (= e!2703149 (and tp_is_empty!24897 tp_is_empty!24899 tp!1329334))))

(declare-fun b!4343859 () Bool)

(assert (=> b!4343859 (= e!2703154 e!2703150)))

(declare-fun res!1783059 () Bool)

(assert (=> b!4343859 (=> res!1783059 e!2703150)))

(assert (=> b!4343859 (= res!1783059 (not (forall!9001 (toList!2814 lm!1707) lambda!137541)))))

(declare-fun e!2703148 () Bool)

(assert (=> b!4343859 e!2703148))

(declare-fun res!1783050 () Bool)

(assert (=> b!4343859 (=> (not res!1783050) (not e!2703148))))

(declare-fun lt!1557154 () List!48873)

(assert (=> b!4343859 (= res!1783050 (= lt!1557161 lt!1557154))))

(declare-fun lt!1557156 () ListLongMap!1463)

(assert (=> b!4343859 (= lt!1557156 (+!501 lm!1707 (tuple2!48033 hash!377 lt!1557161)))))

(declare-fun tail!6913 (List!48873) List!48873)

(assert (=> b!4343859 (= lt!1557161 (tail!6913 newBucket!200))))

(assert (=> b!4343859 e!2703144))

(declare-fun res!1783054 () Bool)

(assert (=> b!4343859 (=> (not res!1783054) (not e!2703144))))

(declare-fun lt!1557157 () ListMap!2057)

(assert (=> b!4343859 (= res!1783054 (eq!205 lt!1557157 lt!1557151))))

(declare-fun lt!1557164 () ListMap!2057)

(declare-fun lt!1557149 () tuple2!48030)

(declare-fun +!502 (ListMap!2057 tuple2!48030) ListMap!2057)

(assert (=> b!4343859 (= lt!1557151 (+!502 lt!1557164 lt!1557149))))

(declare-fun lt!1557160 () ListMap!2057)

(declare-fun addToMapMapFromBucket!123 (List!48873 ListMap!2057) ListMap!2057)

(assert (=> b!4343859 (= lt!1557164 (addToMapMapFromBucket!123 lt!1557154 lt!1557160))))

(declare-fun lt!1557145 () Unit!70173)

(declare-fun newValue!99 () V!10351)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!34 (ListMap!2057 K!10105 V!10351 List!48873) Unit!70173)

(assert (=> b!4343859 (= lt!1557145 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!34 lt!1557160 key!3918 newValue!99 lt!1557154))))

(assert (=> b!4343859 (= lt!1557143 lt!1557157)))

(assert (=> b!4343859 (= lt!1557157 (addToMapMapFromBucket!123 lt!1557154 (+!502 lt!1557160 lt!1557149)))))

(declare-fun lt!1557153 () ListMap!2057)

(assert (=> b!4343859 (= lt!1557153 lt!1557143)))

(declare-fun lt!1557146 () List!48873)

(assert (=> b!4343859 (= lt!1557143 (addToMapMapFromBucket!123 lt!1557146 lt!1557160))))

(assert (=> b!4343859 (= lt!1557153 (addToMapMapFromBucket!123 newBucket!200 lt!1557160))))

(declare-fun extractMap!474 (List!48874) ListMap!2057)

(assert (=> b!4343859 (= lt!1557153 (extractMap!474 (toList!2814 lt!1557158)))))

(assert (=> b!4343859 (= lt!1557160 (extractMap!474 (t!355794 (toList!2814 lm!1707))))))

(declare-fun b!4343860 () Bool)

(assert (=> b!4343860 (= e!2703145 (not e!2703152))))

(declare-fun res!1783053 () Bool)

(assert (=> b!4343860 (=> res!1783053 e!2703152)))

(assert (=> b!4343860 (= res!1783053 (not (= newBucket!200 lt!1557146)))))

(assert (=> b!4343860 (= lt!1557146 (Cons!48749 lt!1557149 lt!1557154))))

(declare-fun lt!1557162 () List!48873)

(declare-fun removePairForKey!385 (List!48873 K!10105) List!48873)

(assert (=> b!4343860 (= lt!1557154 (removePairForKey!385 lt!1557162 key!3918))))

(assert (=> b!4343860 (= lt!1557149 (tuple2!48031 key!3918 newValue!99))))

(declare-fun lt!1557152 () Unit!70173)

(declare-fun lt!1557150 () tuple2!48032)

(declare-fun forallContained!1651 (List!48874 Int tuple2!48032) Unit!70173)

(assert (=> b!4343860 (= lt!1557152 (forallContained!1651 (toList!2814 lm!1707) lambda!137541 lt!1557150))))

(declare-fun contains!10854 (List!48874 tuple2!48032) Bool)

(assert (=> b!4343860 (contains!10854 (toList!2814 lm!1707) lt!1557150)))

(assert (=> b!4343860 (= lt!1557150 (tuple2!48033 hash!377 lt!1557162))))

(declare-fun lt!1557163 () Unit!70173)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!262 (List!48874 (_ BitVec 64) List!48873) Unit!70173)

(assert (=> b!4343860 (= lt!1557163 (lemmaGetValueByKeyImpliesContainsTuple!262 (toList!2814 lm!1707) hash!377 lt!1557162))))

(declare-fun apply!11267 (ListLongMap!1463 (_ BitVec 64)) List!48873)

(assert (=> b!4343860 (= lt!1557162 (apply!11267 lm!1707 hash!377))))

(declare-fun b!4343861 () Bool)

(declare-fun res!1783062 () Bool)

(assert (=> b!4343861 (=> (not res!1783062) (not e!2703145))))

(declare-fun contains!10855 (ListLongMap!1463 (_ BitVec 64)) Bool)

(assert (=> b!4343861 (= res!1783062 (contains!10855 lm!1707 hash!377))))

(declare-fun res!1783052 () Bool)

(assert (=> start!419152 (=> (not res!1783052) (not e!2703147))))

(assert (=> start!419152 (= res!1783052 (forall!9001 (toList!2814 lm!1707) lambda!137541))))

(assert (=> start!419152 e!2703147))

(assert (=> start!419152 e!2703149))

(assert (=> start!419152 true))

(declare-fun e!2703151 () Bool)

(declare-fun inv!64291 (ListLongMap!1463) Bool)

(assert (=> start!419152 (and (inv!64291 lm!1707) e!2703151)))

(assert (=> start!419152 tp_is_empty!24897))

(assert (=> start!419152 tp_is_empty!24899))

(declare-fun b!4343853 () Bool)

(assert (=> b!4343853 (= e!2703148 (= lt!1557164 (extractMap!474 (toList!2814 lt!1557156))))))

(declare-fun b!4343862 () Bool)

(assert (=> b!4343862 (= e!2703153 (or (not ((_ is Cons!48750) (toList!2814 lm!1707))) (not (= (_1!27310 (h!54267 (toList!2814 lm!1707))) hash!377)) (= lt!1557158 (ListLongMap!1464 (Cons!48750 lt!1557144 (t!355794 (toList!2814 lm!1707)))))))))

(declare-fun b!4343863 () Bool)

(declare-fun res!1783051 () Bool)

(assert (=> b!4343863 (=> (not res!1783051) (not e!2703145))))

(assert (=> b!4343863 (= res!1783051 (allKeysSameHash!373 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4343864 () Bool)

(declare-fun e!2703146 () Bool)

(assert (=> b!4343864 (= e!2703146 true)))

(declare-fun b!4343865 () Bool)

(declare-fun res!1783056 () Bool)

(assert (=> b!4343865 (=> (not res!1783056) (not e!2703145))))

(declare-fun contains!10856 (ListMap!2057 K!10105) Bool)

(assert (=> b!4343865 (= res!1783056 (contains!10856 (extractMap!474 (toList!2814 lm!1707)) key!3918))))

(declare-fun b!4343866 () Bool)

(declare-fun res!1783058 () Bool)

(assert (=> b!4343866 (=> (not res!1783058) (not e!2703147))))

(declare-fun allKeysSameHashInMap!519 (ListLongMap!1463 Hashable!4807) Bool)

(assert (=> b!4343866 (= res!1783058 (allKeysSameHashInMap!519 lm!1707 hashF!1247))))

(declare-fun b!4343867 () Bool)

(assert (=> b!4343867 (= e!2703150 e!2703146)))

(declare-fun res!1783064 () Bool)

(assert (=> b!4343867 (=> res!1783064 e!2703146)))

(assert (=> b!4343867 (= res!1783064 (not (noDuplicateKeys!415 lt!1557161)))))

(declare-fun lt!1557159 () Unit!70173)

(assert (=> b!4343867 (= lt!1557159 (forallContained!1651 (toList!2814 lm!1707) lambda!137541 lt!1557150))))

(assert (=> b!4343867 (contains!10855 lm!1707 lt!1557155)))

(declare-fun lt!1557148 () Unit!70173)

(declare-fun lemmaInGenMapThenLongMapContainsHash!50 (ListLongMap!1463 K!10105 Hashable!4807) Unit!70173)

(assert (=> b!4343867 (= lt!1557148 (lemmaInGenMapThenLongMapContainsHash!50 lm!1707 key!3918 hashF!1247))))

(declare-fun b!4343868 () Bool)

(declare-fun tp!1329333 () Bool)

(assert (=> b!4343868 (= e!2703151 tp!1329333)))

(assert (= (and start!419152 res!1783052) b!4343866))

(assert (= (and b!4343866 res!1783058) b!4343855))

(assert (= (and b!4343855 res!1783055) b!4343863))

(assert (= (and b!4343863 res!1783051) b!4343865))

(assert (= (and b!4343865 res!1783056) b!4343861))

(assert (= (and b!4343861 res!1783062) b!4343860))

(assert (= (and b!4343860 (not res!1783053)) b!4343856))

(assert (= (and b!4343856 (not res!1783061)) b!4343857))

(assert (= (and b!4343857 res!1783060) b!4343854))

(assert (= (and b!4343854 res!1783063) b!4343862))

(assert (= (and b!4343857 (not res!1783065)) b!4343859))

(assert (= (and b!4343859 res!1783054) b!4343852))

(assert (= (and b!4343859 res!1783050) b!4343853))

(assert (= (and b!4343859 (not res!1783059)) b!4343851))

(assert (= (and b!4343851 (not res!1783057)) b!4343867))

(assert (= (and b!4343867 (not res!1783064)) b!4343864))

(assert (= (and start!419152 ((_ is Cons!48749) newBucket!200)) b!4343858))

(assert (= start!419152 b!4343868))

(declare-fun m!4949509 () Bool)

(assert (=> b!4343851 m!4949509))

(declare-fun m!4949511 () Bool)

(assert (=> b!4343853 m!4949511))

(declare-fun m!4949513 () Bool)

(assert (=> b!4343855 m!4949513))

(declare-fun m!4949515 () Bool)

(assert (=> b!4343854 m!4949515))

(declare-fun m!4949517 () Bool)

(assert (=> b!4343866 m!4949517))

(assert (=> b!4343857 m!4949515))

(declare-fun m!4949519 () Bool)

(assert (=> b!4343857 m!4949519))

(declare-fun m!4949521 () Bool)

(assert (=> b!4343857 m!4949521))

(declare-fun m!4949523 () Bool)

(assert (=> b!4343857 m!4949523))

(declare-fun m!4949525 () Bool)

(assert (=> b!4343852 m!4949525))

(declare-fun m!4949527 () Bool)

(assert (=> b!4343865 m!4949527))

(assert (=> b!4343865 m!4949527))

(declare-fun m!4949529 () Bool)

(assert (=> b!4343865 m!4949529))

(declare-fun m!4949531 () Bool)

(assert (=> b!4343867 m!4949531))

(declare-fun m!4949533 () Bool)

(assert (=> b!4343867 m!4949533))

(declare-fun m!4949535 () Bool)

(assert (=> b!4343867 m!4949535))

(declare-fun m!4949537 () Bool)

(assert (=> b!4343867 m!4949537))

(assert (=> b!4343859 m!4949523))

(declare-fun m!4949539 () Bool)

(assert (=> b!4343859 m!4949539))

(declare-fun m!4949541 () Bool)

(assert (=> b!4343859 m!4949541))

(declare-fun m!4949543 () Bool)

(assert (=> b!4343859 m!4949543))

(declare-fun m!4949545 () Bool)

(assert (=> b!4343859 m!4949545))

(declare-fun m!4949547 () Bool)

(assert (=> b!4343859 m!4949547))

(declare-fun m!4949549 () Bool)

(assert (=> b!4343859 m!4949549))

(declare-fun m!4949551 () Bool)

(assert (=> b!4343859 m!4949551))

(declare-fun m!4949553 () Bool)

(assert (=> b!4343859 m!4949553))

(declare-fun m!4949555 () Bool)

(assert (=> b!4343859 m!4949555))

(assert (=> b!4343859 m!4949553))

(declare-fun m!4949557 () Bool)

(assert (=> b!4343859 m!4949557))

(declare-fun m!4949559 () Bool)

(assert (=> b!4343859 m!4949559))

(declare-fun m!4949561 () Bool)

(assert (=> b!4343859 m!4949561))

(declare-fun m!4949563 () Bool)

(assert (=> b!4343863 m!4949563))

(declare-fun m!4949565 () Bool)

(assert (=> b!4343861 m!4949565))

(assert (=> start!419152 m!4949523))

(declare-fun m!4949567 () Bool)

(assert (=> start!419152 m!4949567))

(assert (=> b!4343860 m!4949533))

(declare-fun m!4949569 () Bool)

(assert (=> b!4343860 m!4949569))

(declare-fun m!4949571 () Bool)

(assert (=> b!4343860 m!4949571))

(declare-fun m!4949573 () Bool)

(assert (=> b!4343860 m!4949573))

(declare-fun m!4949575 () Bool)

(assert (=> b!4343860 m!4949575))

(declare-fun m!4949577 () Bool)

(assert (=> b!4343856 m!4949577))

(check-sat (not b!4343854) (not b!4343865) (not b!4343859) (not b!4343857) (not b!4343866) (not b!4343861) (not b!4343860) (not b!4343851) (not b!4343868) (not b!4343863) (not b!4343855) (not b!4343856) (not b!4343852) tp_is_empty!24897 (not b!4343867) (not b!4343853) (not b!4343858) tp_is_empty!24899 (not start!419152))
(check-sat)
