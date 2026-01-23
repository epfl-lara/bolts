; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!418192 () Bool)

(assert start!418192)

(declare-fun b!4335802 () Bool)

(declare-fun res!1778306 () Bool)

(declare-fun e!2697936 () Bool)

(assert (=> b!4335802 (=> res!1778306 e!2697936)))

(declare-datatypes ((K!10020 0))(
  ( (K!10021 (val!16287 Int)) )
))
(declare-datatypes ((V!10266 0))(
  ( (V!10267 (val!16288 Int)) )
))
(declare-datatypes ((tuple2!47894 0))(
  ( (tuple2!47895 (_1!27241 K!10020) (_2!27241 V!10266)) )
))
(declare-datatypes ((List!48789 0))(
  ( (Nil!48665) (Cons!48665 (h!54166 tuple2!47894) (t!355705 List!48789)) )
))
(declare-fun newBucket!200 () List!48789)

(declare-fun noDuplicateKeys!381 (List!48789) Bool)

(assert (=> b!4335802 (= res!1778306 (not (noDuplicateKeys!381 newBucket!200)))))

(declare-fun b!4335804 () Bool)

(declare-fun res!1778309 () Bool)

(declare-fun e!2697933 () Bool)

(assert (=> b!4335804 (=> (not res!1778309) (not e!2697933))))

(declare-datatypes ((tuple2!47896 0))(
  ( (tuple2!47897 (_1!27242 (_ BitVec 64)) (_2!27242 List!48789)) )
))
(declare-datatypes ((List!48790 0))(
  ( (Nil!48666) (Cons!48666 (h!54167 tuple2!47896) (t!355706 List!48790)) )
))
(declare-datatypes ((ListLongMap!1395 0))(
  ( (ListLongMap!1396 (toList!2745 List!48790)) )
))
(declare-fun lm!1707 () ListLongMap!1395)

(declare-fun key!3918 () K!10020)

(declare-datatypes ((ListMap!1989 0))(
  ( (ListMap!1990 (toList!2746 List!48789)) )
))
(declare-fun contains!10720 (ListMap!1989 K!10020) Bool)

(declare-fun extractMap!440 (List!48790) ListMap!1989)

(assert (=> b!4335804 (= res!1778309 (contains!10720 (extractMap!440 (toList!2745 lm!1707)) key!3918))))

(declare-fun b!4335805 () Bool)

(declare-fun res!1778302 () Bool)

(assert (=> b!4335805 (=> (not res!1778302) (not e!2697933))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4773 0))(
  ( (HashableExt!4772 (__x!30476 Int)) )
))
(declare-fun hashF!1247 () Hashable!4773)

(declare-fun allKeysSameHash!339 (List!48789 (_ BitVec 64) Hashable!4773) Bool)

(assert (=> b!4335805 (= res!1778302 (allKeysSameHash!339 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4335806 () Bool)

(declare-fun res!1778311 () Bool)

(assert (=> b!4335806 (=> (not res!1778311) (not e!2697933))))

(declare-fun hash!1328 (Hashable!4773 K!10020) (_ BitVec 64))

(assert (=> b!4335806 (= res!1778311 (= (hash!1328 hashF!1247 key!3918) hash!377))))

(declare-fun e!2697938 () Bool)

(declare-fun lt!1549217 () ListLongMap!1395)

(declare-fun lt!1549214 () tuple2!47896)

(declare-fun b!4335807 () Bool)

(get-info :version)

(assert (=> b!4335807 (= e!2697938 (or (not ((_ is Cons!48666) (toList!2745 lm!1707))) (not (= (_1!27242 (h!54167 (toList!2745 lm!1707))) hash!377)) (= lt!1549217 (ListLongMap!1396 (Cons!48666 lt!1549214 (t!355706 (toList!2745 lm!1707)))))))))

(declare-fun b!4335808 () Bool)

(declare-fun e!2697935 () Bool)

(declare-fun tp!1328968 () Bool)

(assert (=> b!4335808 (= e!2697935 tp!1328968)))

(declare-fun tp_is_empty!24763 () Bool)

(declare-fun e!2697940 () Bool)

(declare-fun b!4335809 () Bool)

(declare-fun tp_is_empty!24761 () Bool)

(declare-fun tp!1328967 () Bool)

(assert (=> b!4335809 (= e!2697940 (and tp_is_empty!24761 tp_is_empty!24763 tp!1328967))))

(declare-fun b!4335810 () Bool)

(assert (=> b!4335810 (= e!2697933 (not e!2697936))))

(declare-fun res!1778299 () Bool)

(assert (=> b!4335810 (=> res!1778299 e!2697936)))

(declare-fun lt!1549225 () List!48789)

(assert (=> b!4335810 (= res!1778299 (not (= newBucket!200 lt!1549225)))))

(declare-fun lt!1549224 () tuple2!47894)

(declare-fun lt!1549226 () List!48789)

(assert (=> b!4335810 (= lt!1549225 (Cons!48665 lt!1549224 lt!1549226))))

(declare-fun lt!1549219 () List!48789)

(declare-fun removePairForKey!351 (List!48789 K!10020) List!48789)

(assert (=> b!4335810 (= lt!1549226 (removePairForKey!351 lt!1549219 key!3918))))

(declare-fun newValue!99 () V!10266)

(assert (=> b!4335810 (= lt!1549224 (tuple2!47895 key!3918 newValue!99))))

(declare-datatypes ((Unit!68559 0))(
  ( (Unit!68560) )
))
(declare-fun lt!1549215 () Unit!68559)

(declare-fun lambda!135807 () Int)

(declare-fun lt!1549213 () tuple2!47896)

(declare-fun forallContained!1599 (List!48790 Int tuple2!47896) Unit!68559)

(assert (=> b!4335810 (= lt!1549215 (forallContained!1599 (toList!2745 lm!1707) lambda!135807 lt!1549213))))

(declare-fun contains!10721 (List!48790 tuple2!47896) Bool)

(assert (=> b!4335810 (contains!10721 (toList!2745 lm!1707) lt!1549213)))

(assert (=> b!4335810 (= lt!1549213 (tuple2!47897 hash!377 lt!1549219))))

(declare-fun lt!1549220 () Unit!68559)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!228 (List!48790 (_ BitVec 64) List!48789) Unit!68559)

(assert (=> b!4335810 (= lt!1549220 (lemmaGetValueByKeyImpliesContainsTuple!228 (toList!2745 lm!1707) hash!377 lt!1549219))))

(declare-fun apply!11233 (ListLongMap!1395 (_ BitVec 64)) List!48789)

(assert (=> b!4335810 (= lt!1549219 (apply!11233 lm!1707 hash!377))))

(declare-fun res!1778300 () Bool)

(assert (=> start!418192 (=> (not res!1778300) (not e!2697933))))

(declare-fun forall!8949 (List!48790 Int) Bool)

(assert (=> start!418192 (= res!1778300 (forall!8949 (toList!2745 lm!1707) lambda!135807))))

(assert (=> start!418192 e!2697933))

(assert (=> start!418192 e!2697940))

(assert (=> start!418192 true))

(declare-fun inv!64206 (ListLongMap!1395) Bool)

(assert (=> start!418192 (and (inv!64206 lm!1707) e!2697935)))

(assert (=> start!418192 tp_is_empty!24761))

(assert (=> start!418192 tp_is_empty!24763))

(declare-fun b!4335803 () Bool)

(declare-fun res!1778304 () Bool)

(assert (=> b!4335803 (=> (not res!1778304) (not e!2697938))))

(assert (=> b!4335803 (= res!1778304 (forall!8949 (toList!2745 lt!1549217) lambda!135807))))

(declare-fun b!4335811 () Bool)

(declare-fun e!2697937 () Bool)

(assert (=> b!4335811 (= e!2697937 true)))

(declare-fun lt!1549218 () Bool)

(assert (=> b!4335811 (= lt!1549218 (noDuplicateKeys!381 lt!1549226))))

(declare-fun b!4335812 () Bool)

(declare-fun res!1778308 () Bool)

(assert (=> b!4335812 (=> (not res!1778308) (not e!2697933))))

(declare-fun allKeysSameHashInMap!485 (ListLongMap!1395 Hashable!4773) Bool)

(assert (=> b!4335812 (= res!1778308 (allKeysSameHashInMap!485 lm!1707 hashF!1247))))

(declare-fun lt!1549216 () ListMap!1989)

(declare-fun lt!1549223 () ListMap!1989)

(declare-fun b!4335813 () Bool)

(declare-fun e!2697934 () Bool)

(declare-fun addToMapMapFromBucket!89 (List!48789 ListMap!1989) ListMap!1989)

(declare-fun +!433 (ListMap!1989 tuple2!47894) ListMap!1989)

(assert (=> b!4335813 (= e!2697934 (= lt!1549216 (addToMapMapFromBucket!89 lt!1549226 (+!433 lt!1549223 lt!1549224))))))

(declare-fun b!4335814 () Bool)

(declare-fun res!1778307 () Bool)

(assert (=> b!4335814 (=> (not res!1778307) (not e!2697933))))

(declare-fun contains!10722 (ListLongMap!1395 (_ BitVec 64)) Bool)

(assert (=> b!4335814 (= res!1778307 (contains!10722 lm!1707 hash!377))))

(declare-fun b!4335815 () Bool)

(declare-fun e!2697939 () Bool)

(assert (=> b!4335815 (= e!2697936 e!2697939)))

(declare-fun res!1778310 () Bool)

(assert (=> b!4335815 (=> res!1778310 e!2697939)))

(assert (=> b!4335815 (= res!1778310 (or (not ((_ is Cons!48666) (toList!2745 lm!1707))) (not (= (_1!27242 (h!54167 (toList!2745 lm!1707))) hash!377))))))

(assert (=> b!4335815 e!2697938))

(declare-fun res!1778303 () Bool)

(assert (=> b!4335815 (=> (not res!1778303) (not e!2697938))))

(assert (=> b!4335815 (= res!1778303 (forall!8949 (toList!2745 lt!1549217) lambda!135807))))

(declare-fun +!434 (ListLongMap!1395 tuple2!47896) ListLongMap!1395)

(assert (=> b!4335815 (= lt!1549217 (+!434 lm!1707 lt!1549214))))

(assert (=> b!4335815 (= lt!1549214 (tuple2!47897 hash!377 newBucket!200))))

(declare-fun lt!1549221 () Unit!68559)

(declare-fun addValidProp!35 (ListLongMap!1395 Int (_ BitVec 64) List!48789) Unit!68559)

(assert (=> b!4335815 (= lt!1549221 (addValidProp!35 lm!1707 lambda!135807 hash!377 newBucket!200))))

(assert (=> b!4335815 (forall!8949 (toList!2745 lm!1707) lambda!135807)))

(declare-fun b!4335816 () Bool)

(assert (=> b!4335816 (= e!2697939 e!2697937)))

(declare-fun res!1778305 () Bool)

(assert (=> b!4335816 (=> res!1778305 e!2697937)))

(declare-fun containsKey!530 (List!48789 K!10020) Bool)

(assert (=> b!4335816 (= res!1778305 (containsKey!530 lt!1549226 key!3918))))

(assert (=> b!4335816 e!2697934))

(declare-fun res!1778301 () Bool)

(assert (=> b!4335816 (=> (not res!1778301) (not e!2697934))))

(declare-fun lt!1549222 () ListMap!1989)

(assert (=> b!4335816 (= res!1778301 (= lt!1549222 lt!1549216))))

(assert (=> b!4335816 (= lt!1549216 (addToMapMapFromBucket!89 lt!1549225 lt!1549223))))

(assert (=> b!4335816 (= lt!1549222 (addToMapMapFromBucket!89 newBucket!200 lt!1549223))))

(assert (=> b!4335816 (= lt!1549222 (extractMap!440 (toList!2745 lt!1549217)))))

(assert (=> b!4335816 (= lt!1549223 (extractMap!440 (t!355706 (toList!2745 lm!1707))))))

(assert (= (and start!418192 res!1778300) b!4335812))

(assert (= (and b!4335812 res!1778308) b!4335806))

(assert (= (and b!4335806 res!1778311) b!4335805))

(assert (= (and b!4335805 res!1778302) b!4335804))

(assert (= (and b!4335804 res!1778309) b!4335814))

(assert (= (and b!4335814 res!1778307) b!4335810))

(assert (= (and b!4335810 (not res!1778299)) b!4335802))

(assert (= (and b!4335802 (not res!1778306)) b!4335815))

(assert (= (and b!4335815 res!1778303) b!4335803))

(assert (= (and b!4335803 res!1778304) b!4335807))

(assert (= (and b!4335815 (not res!1778310)) b!4335816))

(assert (= (and b!4335816 res!1778301) b!4335813))

(assert (= (and b!4335816 (not res!1778305)) b!4335811))

(assert (= (and start!418192 ((_ is Cons!48665) newBucket!200)) b!4335809))

(assert (= start!418192 b!4335808))

(declare-fun m!4930841 () Bool)

(assert (=> b!4335806 m!4930841))

(declare-fun m!4930843 () Bool)

(assert (=> b!4335814 m!4930843))

(declare-fun m!4930845 () Bool)

(assert (=> b!4335816 m!4930845))

(declare-fun m!4930847 () Bool)

(assert (=> b!4335816 m!4930847))

(declare-fun m!4930849 () Bool)

(assert (=> b!4335816 m!4930849))

(declare-fun m!4930851 () Bool)

(assert (=> b!4335816 m!4930851))

(declare-fun m!4930853 () Bool)

(assert (=> b!4335816 m!4930853))

(declare-fun m!4930855 () Bool)

(assert (=> b!4335811 m!4930855))

(declare-fun m!4930857 () Bool)

(assert (=> b!4335810 m!4930857))

(declare-fun m!4930859 () Bool)

(assert (=> b!4335810 m!4930859))

(declare-fun m!4930861 () Bool)

(assert (=> b!4335810 m!4930861))

(declare-fun m!4930863 () Bool)

(assert (=> b!4335810 m!4930863))

(declare-fun m!4930865 () Bool)

(assert (=> b!4335810 m!4930865))

(declare-fun m!4930867 () Bool)

(assert (=> b!4335804 m!4930867))

(assert (=> b!4335804 m!4930867))

(declare-fun m!4930869 () Bool)

(assert (=> b!4335804 m!4930869))

(declare-fun m!4930871 () Bool)

(assert (=> b!4335813 m!4930871))

(assert (=> b!4335813 m!4930871))

(declare-fun m!4930873 () Bool)

(assert (=> b!4335813 m!4930873))

(declare-fun m!4930875 () Bool)

(assert (=> b!4335805 m!4930875))

(declare-fun m!4930877 () Bool)

(assert (=> b!4335803 m!4930877))

(declare-fun m!4930879 () Bool)

(assert (=> b!4335802 m!4930879))

(assert (=> b!4335815 m!4930877))

(declare-fun m!4930881 () Bool)

(assert (=> b!4335815 m!4930881))

(declare-fun m!4930883 () Bool)

(assert (=> b!4335815 m!4930883))

(declare-fun m!4930885 () Bool)

(assert (=> b!4335815 m!4930885))

(declare-fun m!4930887 () Bool)

(assert (=> b!4335812 m!4930887))

(assert (=> start!418192 m!4930885))

(declare-fun m!4930889 () Bool)

(assert (=> start!418192 m!4930889))

(check-sat (not b!4335813) (not b!4335805) tp_is_empty!24763 (not b!4335814) (not b!4335816) (not b!4335810) (not start!418192) (not b!4335803) (not b!4335802) (not b!4335809) (not b!4335815) (not b!4335808) (not b!4335811) (not b!4335806) (not b!4335804) (not b!4335812) tp_is_empty!24761)
(check-sat)
