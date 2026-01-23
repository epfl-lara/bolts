; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!467056 () Bool)

(assert start!467056)

(declare-fun b!4642976 () Bool)

(declare-fun e!2896402 () Bool)

(declare-fun e!2896398 () Bool)

(assert (=> b!4642976 (= e!2896402 e!2896398)))

(declare-fun res!1950326 () Bool)

(assert (=> b!4642976 (=> res!1950326 e!2896398)))

(declare-datatypes ((K!13160 0))(
  ( (K!13161 (val!18799 Int)) )
))
(declare-datatypes ((V!13406 0))(
  ( (V!13407 (val!18800 Int)) )
))
(declare-datatypes ((tuple2!52862 0))(
  ( (tuple2!52863 (_1!29725 K!13160) (_2!29725 V!13406)) )
))
(declare-datatypes ((List!51920 0))(
  ( (Nil!51796) (Cons!51796 (h!57912 tuple2!52862) (t!359010 List!51920)) )
))
(declare-fun lt!1806795 () List!51920)

(declare-fun lt!1806807 () List!51920)

(declare-fun key!4968 () K!13160)

(declare-fun removePairForKey!1227 (List!51920 K!13160) List!51920)

(assert (=> b!4642976 (= res!1950326 (not (= (removePairForKey!1227 lt!1806795 key!4968) lt!1806807)))))

(declare-fun newBucket!224 () List!51920)

(declare-fun tail!8227 (List!51920) List!51920)

(assert (=> b!4642976 (= lt!1806807 (tail!8227 newBucket!224))))

(declare-fun oldBucket!40 () List!51920)

(assert (=> b!4642976 (= lt!1806795 (tail!8227 oldBucket!40))))

(declare-fun e!2896409 () Bool)

(declare-fun tp!1342959 () Bool)

(declare-fun b!4642977 () Bool)

(declare-fun tp_is_empty!29709 () Bool)

(declare-fun tp_is_empty!29711 () Bool)

(assert (=> b!4642977 (= e!2896409 (and tp_is_empty!29709 tp_is_empty!29711 tp!1342959))))

(declare-fun b!4642978 () Bool)

(declare-fun res!1950311 () Bool)

(declare-fun e!2896401 () Bool)

(assert (=> b!4642978 (=> res!1950311 e!2896401)))

(declare-fun lt!1806805 () tuple2!52862)

(assert (=> b!4642978 (= res!1950311 (not (= lt!1806805 (h!57912 oldBucket!40))))))

(declare-fun b!4642979 () Bool)

(declare-fun res!1950317 () Bool)

(assert (=> b!4642979 (=> res!1950317 e!2896398)))

(assert (=> b!4642979 (= res!1950317 (not (= (removePairForKey!1227 (t!359010 oldBucket!40) key!4968) lt!1806807)))))

(declare-fun res!1950325 () Bool)

(declare-fun e!2896405 () Bool)

(assert (=> start!467056 (=> (not res!1950325) (not e!2896405))))

(declare-fun noDuplicateKeys!1604 (List!51920) Bool)

(assert (=> start!467056 (= res!1950325 (noDuplicateKeys!1604 oldBucket!40))))

(assert (=> start!467056 e!2896405))

(assert (=> start!467056 true))

(declare-fun e!2896408 () Bool)

(assert (=> start!467056 e!2896408))

(assert (=> start!467056 tp_is_empty!29709))

(assert (=> start!467056 e!2896409))

(declare-fun b!4642980 () Bool)

(declare-fun e!2896399 () Bool)

(declare-fun e!2896404 () Bool)

(assert (=> b!4642980 (= e!2896399 e!2896404)))

(declare-fun res!1950320 () Bool)

(assert (=> b!4642980 (=> res!1950320 e!2896404)))

(declare-datatypes ((ListMap!4477 0))(
  ( (ListMap!4478 (toList!5153 List!51920)) )
))
(declare-fun lt!1806793 () ListMap!4477)

(declare-fun lt!1806797 () ListMap!4477)

(assert (=> b!4642980 (= res!1950320 (not (= lt!1806793 lt!1806797)))))

(declare-fun lt!1806792 () ListMap!4477)

(declare-fun +!1954 (ListMap!4477 tuple2!52862) ListMap!4477)

(assert (=> b!4642980 (= lt!1806797 (+!1954 lt!1806792 (h!57912 oldBucket!40)))))

(declare-fun lt!1806798 () ListMap!4477)

(declare-fun -!608 (ListMap!4477 K!13160) ListMap!4477)

(assert (=> b!4642980 (= lt!1806793 (-!608 lt!1806798 key!4968))))

(declare-fun lt!1806788 () ListMap!4477)

(assert (=> b!4642980 (= lt!1806798 (+!1954 lt!1806788 (h!57912 oldBucket!40)))))

(assert (=> b!4642980 (= (-!608 (+!1954 lt!1806788 (h!57912 oldBucket!40)) key!4968) (+!1954 lt!1806792 (h!57912 oldBucket!40)))))

(declare-datatypes ((Unit!115757 0))(
  ( (Unit!115758) )
))
(declare-fun lt!1806800 () Unit!115757)

(declare-fun addRemoveCommutativeForDiffKeys!53 (ListMap!4477 K!13160 V!13406 K!13160) Unit!115757)

(assert (=> b!4642980 (= lt!1806800 (addRemoveCommutativeForDiffKeys!53 lt!1806788 (_1!29725 (h!57912 oldBucket!40)) (_2!29725 (h!57912 oldBucket!40)) key!4968))))

(declare-fun lt!1806813 () ListMap!4477)

(declare-fun eq!895 (ListMap!4477 ListMap!4477) Bool)

(assert (=> b!4642980 (eq!895 lt!1806813 lt!1806792)))

(assert (=> b!4642980 (= lt!1806792 (-!608 lt!1806788 key!4968))))

(declare-datatypes ((Hashable!6001 0))(
  ( (HashableExt!6000 (__x!31704 Int)) )
))
(declare-fun hashF!1389 () Hashable!6001)

(declare-fun lt!1806812 () Unit!115757)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!160 ((_ BitVec 64) List!51920 List!51920 K!13160 Hashable!6001) Unit!115757)

(assert (=> b!4642980 (= lt!1806812 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!160 hash!414 (t!359010 oldBucket!40) lt!1806807 key!4968 hashF!1389))))

(declare-fun b!4642981 () Bool)

(declare-fun e!2896406 () Bool)

(declare-fun lt!1806804 () ListMap!4477)

(assert (=> b!4642981 (= e!2896406 (= lt!1806804 (ListMap!4478 Nil!51796)))))

(declare-fun b!4642982 () Bool)

(declare-fun lt!1806806 () ListMap!4477)

(assert (=> b!4642982 (= e!2896401 (eq!895 lt!1806806 (+!1954 lt!1806813 (h!57912 oldBucket!40))))))

(declare-fun b!4642983 () Bool)

(assert (=> b!4642983 (= e!2896404 e!2896401)))

(declare-fun res!1950316 () Bool)

(assert (=> b!4642983 (=> res!1950316 e!2896401)))

(declare-fun lt!1806796 () ListMap!4477)

(assert (=> b!4642983 (= res!1950316 (not (eq!895 lt!1806796 lt!1806797)))))

(assert (=> b!4642983 (eq!895 lt!1806793 lt!1806796)))

(declare-fun lt!1806790 () ListMap!4477)

(assert (=> b!4642983 (= lt!1806796 (-!608 lt!1806790 key!4968))))

(declare-fun lt!1806816 () Unit!115757)

(declare-fun lemmaRemovePreservesEq!56 (ListMap!4477 ListMap!4477 K!13160) Unit!115757)

(assert (=> b!4642983 (= lt!1806816 (lemmaRemovePreservesEq!56 lt!1806798 lt!1806790 key!4968))))

(declare-fun b!4642984 () Bool)

(declare-fun res!1950314 () Bool)

(assert (=> b!4642984 (=> (not res!1950314) (not e!2896405))))

(declare-fun allKeysSameHash!1458 (List!51920 (_ BitVec 64) Hashable!6001) Bool)

(assert (=> b!4642984 (= res!1950314 (allKeysSameHash!1458 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4642985 () Bool)

(declare-fun e!2896400 () Bool)

(assert (=> b!4642985 (= e!2896398 e!2896400)))

(declare-fun res!1950312 () Bool)

(assert (=> b!4642985 (=> res!1950312 e!2896400)))

(declare-datatypes ((tuple2!52864 0))(
  ( (tuple2!52865 (_1!29726 (_ BitVec 64)) (_2!29726 List!51920)) )
))
(declare-datatypes ((List!51921 0))(
  ( (Nil!51797) (Cons!51797 (h!57913 tuple2!52864) (t!359011 List!51921)) )
))
(declare-fun extractMap!1660 (List!51921) ListMap!4477)

(assert (=> b!4642985 (= res!1950312 (not (eq!895 lt!1806790 (+!1954 (extractMap!1660 (Cons!51797 (tuple2!52865 hash!414 lt!1806795) Nil!51797)) (h!57912 oldBucket!40)))))))

(declare-fun addToMapMapFromBucket!1063 (List!51920 ListMap!4477) ListMap!4477)

(assert (=> b!4642985 (eq!895 (addToMapMapFromBucket!1063 (Cons!51796 lt!1806805 lt!1806807) (ListMap!4478 Nil!51796)) (+!1954 (addToMapMapFromBucket!1063 lt!1806807 (ListMap!4478 Nil!51796)) lt!1806805))))

(declare-fun lt!1806802 () Unit!115757)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!146 (tuple2!52862 List!51920 ListMap!4477) Unit!115757)

(assert (=> b!4642985 (= lt!1806802 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!146 lt!1806805 lt!1806807 (ListMap!4478 Nil!51796)))))

(declare-fun head!9714 (List!51920) tuple2!52862)

(assert (=> b!4642985 (= lt!1806805 (head!9714 newBucket!224))))

(declare-fun lt!1806799 () tuple2!52862)

(assert (=> b!4642985 (eq!895 (addToMapMapFromBucket!1063 (Cons!51796 lt!1806799 lt!1806795) (ListMap!4478 Nil!51796)) (+!1954 (addToMapMapFromBucket!1063 lt!1806795 (ListMap!4478 Nil!51796)) lt!1806799))))

(declare-fun lt!1806815 () Unit!115757)

(assert (=> b!4642985 (= lt!1806815 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!146 lt!1806799 lt!1806795 (ListMap!4478 Nil!51796)))))

(assert (=> b!4642985 (= lt!1806799 (head!9714 oldBucket!40))))

(declare-fun contains!14937 (ListMap!4477 K!13160) Bool)

(assert (=> b!4642985 (contains!14937 lt!1806788 key!4968)))

(declare-fun lt!1806803 () List!51921)

(assert (=> b!4642985 (= lt!1806788 (extractMap!1660 lt!1806803))))

(declare-fun lt!1806789 () Unit!115757)

(declare-datatypes ((ListLongMap!3723 0))(
  ( (ListLongMap!3724 (toList!5154 List!51921)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!382 (ListLongMap!3723 K!13160 Hashable!6001) Unit!115757)

(assert (=> b!4642985 (= lt!1806789 (lemmaListContainsThenExtractedMapContains!382 (ListLongMap!3724 lt!1806803) key!4968 hashF!1389))))

(assert (=> b!4642985 (= lt!1806803 (Cons!51797 (tuple2!52865 hash!414 (t!359010 oldBucket!40)) Nil!51797))))

(declare-fun b!4642986 () Bool)

(declare-fun res!1950322 () Bool)

(declare-fun e!2896403 () Bool)

(assert (=> b!4642986 (=> (not res!1950322) (not e!2896403))))

(assert (=> b!4642986 (= res!1950322 (allKeysSameHash!1458 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4642987 () Bool)

(declare-fun e!2896407 () Bool)

(assert (=> b!4642987 (= e!2896405 e!2896407)))

(declare-fun res!1950313 () Bool)

(assert (=> b!4642987 (=> (not res!1950313) (not e!2896407))))

(assert (=> b!4642987 (= res!1950313 (contains!14937 lt!1806790 key!4968))))

(declare-fun lt!1806817 () List!51921)

(assert (=> b!4642987 (= lt!1806790 (extractMap!1660 lt!1806817))))

(assert (=> b!4642987 (= lt!1806817 (Cons!51797 (tuple2!52865 hash!414 oldBucket!40) Nil!51797))))

(declare-fun b!4642988 () Bool)

(declare-fun res!1950318 () Bool)

(assert (=> b!4642988 (=> (not res!1950318) (not e!2896405))))

(assert (=> b!4642988 (= res!1950318 (= (removePairForKey!1227 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4642989 () Bool)

(declare-fun tp!1342958 () Bool)

(assert (=> b!4642989 (= e!2896408 (and tp_is_empty!29709 tp_is_empty!29711 tp!1342958))))

(declare-fun b!4642990 () Bool)

(declare-fun res!1950321 () Bool)

(assert (=> b!4642990 (=> (not res!1950321) (not e!2896405))))

(assert (=> b!4642990 (= res!1950321 (noDuplicateKeys!1604 newBucket!224))))

(declare-fun b!4642991 () Bool)

(assert (=> b!4642991 (= e!2896400 e!2896399)))

(declare-fun res!1950323 () Bool)

(assert (=> b!4642991 (=> res!1950323 e!2896399)))

(assert (=> b!4642991 (= res!1950323 (not (eq!895 lt!1806806 (+!1954 lt!1806813 lt!1806805))))))

(assert (=> b!4642991 (= lt!1806813 (extractMap!1660 (Cons!51797 (tuple2!52865 hash!414 lt!1806807) Nil!51797)))))

(assert (=> b!4642991 (= lt!1806806 (extractMap!1660 (Cons!51797 (tuple2!52865 hash!414 newBucket!224) Nil!51797)))))

(declare-fun b!4642992 () Bool)

(assert (=> b!4642992 (= e!2896407 e!2896403)))

(declare-fun res!1950310 () Bool)

(assert (=> b!4642992 (=> (not res!1950310) (not e!2896403))))

(declare-fun lt!1806810 () (_ BitVec 64))

(assert (=> b!4642992 (= res!1950310 (= lt!1806810 hash!414))))

(declare-fun hash!3707 (Hashable!6001 K!13160) (_ BitVec 64))

(assert (=> b!4642992 (= lt!1806810 (hash!3707 hashF!1389 key!4968))))

(declare-fun b!4642993 () Bool)

(declare-fun e!2896410 () Bool)

(assert (=> b!4642993 (= e!2896410 e!2896402)))

(declare-fun res!1950324 () Bool)

(assert (=> b!4642993 (=> res!1950324 e!2896402)))

(declare-fun containsKey!2654 (List!51920 K!13160) Bool)

(assert (=> b!4642993 (= res!1950324 (not (containsKey!2654 (t!359010 oldBucket!40) key!4968)))))

(assert (=> b!4642993 (containsKey!2654 oldBucket!40 key!4968)))

(declare-fun lt!1806801 () Unit!115757)

(declare-fun lemmaGetPairDefinedThenContainsKey!118 (List!51920 K!13160 Hashable!6001) Unit!115757)

(assert (=> b!4642993 (= lt!1806801 (lemmaGetPairDefinedThenContainsKey!118 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1806794 () List!51920)

(declare-datatypes ((Option!11776 0))(
  ( (None!11775) (Some!11775 (v!46013 tuple2!52862)) )
))
(declare-fun isDefined!9041 (Option!11776) Bool)

(declare-fun getPair!364 (List!51920 K!13160) Option!11776)

(assert (=> b!4642993 (isDefined!9041 (getPair!364 lt!1806794 key!4968))))

(declare-fun lt!1806808 () Unit!115757)

(declare-fun lt!1806787 () tuple2!52864)

(declare-fun lambda!196756 () Int)

(declare-fun forallContained!3182 (List!51921 Int tuple2!52864) Unit!115757)

(assert (=> b!4642993 (= lt!1806808 (forallContained!3182 lt!1806817 lambda!196756 lt!1806787))))

(declare-fun contains!14938 (List!51921 tuple2!52864) Bool)

(assert (=> b!4642993 (contains!14938 lt!1806817 lt!1806787)))

(assert (=> b!4642993 (= lt!1806787 (tuple2!52865 lt!1806810 lt!1806794))))

(declare-fun lt!1806811 () Unit!115757)

(declare-fun lt!1806814 () ListLongMap!3723)

(declare-fun lemmaGetValueImpliesTupleContained!169 (ListLongMap!3723 (_ BitVec 64) List!51920) Unit!115757)

(assert (=> b!4642993 (= lt!1806811 (lemmaGetValueImpliesTupleContained!169 lt!1806814 lt!1806810 lt!1806794))))

(declare-fun apply!12237 (ListLongMap!3723 (_ BitVec 64)) List!51920)

(assert (=> b!4642993 (= lt!1806794 (apply!12237 lt!1806814 lt!1806810))))

(declare-fun contains!14939 (ListLongMap!3723 (_ BitVec 64)) Bool)

(assert (=> b!4642993 (contains!14939 lt!1806814 lt!1806810)))

(declare-fun lt!1806791 () Unit!115757)

(declare-fun lemmaInGenMapThenLongMapContainsHash!570 (ListLongMap!3723 K!13160 Hashable!6001) Unit!115757)

(assert (=> b!4642993 (= lt!1806791 (lemmaInGenMapThenLongMapContainsHash!570 lt!1806814 key!4968 hashF!1389))))

(declare-fun lt!1806809 () Unit!115757)

(declare-fun lemmaInGenMapThenGetPairDefined!160 (ListLongMap!3723 K!13160 Hashable!6001) Unit!115757)

(assert (=> b!4642993 (= lt!1806809 (lemmaInGenMapThenGetPairDefined!160 lt!1806814 key!4968 hashF!1389))))

(assert (=> b!4642993 (= lt!1806814 (ListLongMap!3724 lt!1806817))))

(declare-fun b!4642994 () Bool)

(assert (=> b!4642994 (= e!2896403 (not e!2896410))))

(declare-fun res!1950319 () Bool)

(assert (=> b!4642994 (=> res!1950319 e!2896410)))

(get-info :version)

(assert (=> b!4642994 (= res!1950319 (or (and ((_ is Cons!51796) oldBucket!40) (= (_1!29725 (h!57912 oldBucket!40)) key!4968)) (not ((_ is Cons!51796) oldBucket!40)) (= (_1!29725 (h!57912 oldBucket!40)) key!4968)))))

(assert (=> b!4642994 e!2896406))

(declare-fun res!1950315 () Bool)

(assert (=> b!4642994 (=> (not res!1950315) (not e!2896406))))

(assert (=> b!4642994 (= res!1950315 (= lt!1806790 (addToMapMapFromBucket!1063 oldBucket!40 lt!1806804)))))

(assert (=> b!4642994 (= lt!1806804 (extractMap!1660 Nil!51797))))

(assert (=> b!4642994 true))

(assert (= (and start!467056 res!1950325) b!4642990))

(assert (= (and b!4642990 res!1950321) b!4642988))

(assert (= (and b!4642988 res!1950318) b!4642984))

(assert (= (and b!4642984 res!1950314) b!4642987))

(assert (= (and b!4642987 res!1950313) b!4642992))

(assert (= (and b!4642992 res!1950310) b!4642986))

(assert (= (and b!4642986 res!1950322) b!4642994))

(assert (= (and b!4642994 res!1950315) b!4642981))

(assert (= (and b!4642994 (not res!1950319)) b!4642993))

(assert (= (and b!4642993 (not res!1950324)) b!4642976))

(assert (= (and b!4642976 (not res!1950326)) b!4642979))

(assert (= (and b!4642979 (not res!1950317)) b!4642985))

(assert (= (and b!4642985 (not res!1950312)) b!4642991))

(assert (= (and b!4642991 (not res!1950323)) b!4642980))

(assert (= (and b!4642980 (not res!1950320)) b!4642983))

(assert (= (and b!4642983 (not res!1950316)) b!4642978))

(assert (= (and b!4642978 (not res!1950311)) b!4642982))

(assert (= (and start!467056 ((_ is Cons!51796) oldBucket!40)) b!4642989))

(assert (= (and start!467056 ((_ is Cons!51796) newBucket!224)) b!4642977))

(declare-fun m!5505407 () Bool)

(assert (=> b!4642979 m!5505407))

(declare-fun m!5505409 () Bool)

(assert (=> b!4642994 m!5505409))

(declare-fun m!5505411 () Bool)

(assert (=> b!4642994 m!5505411))

(declare-fun m!5505413 () Bool)

(assert (=> start!467056 m!5505413))

(declare-fun m!5505415 () Bool)

(assert (=> b!4642980 m!5505415))

(declare-fun m!5505417 () Bool)

(assert (=> b!4642980 m!5505417))

(declare-fun m!5505419 () Bool)

(assert (=> b!4642980 m!5505419))

(declare-fun m!5505421 () Bool)

(assert (=> b!4642980 m!5505421))

(declare-fun m!5505423 () Bool)

(assert (=> b!4642980 m!5505423))

(assert (=> b!4642980 m!5505417))

(declare-fun m!5505425 () Bool)

(assert (=> b!4642980 m!5505425))

(declare-fun m!5505427 () Bool)

(assert (=> b!4642980 m!5505427))

(declare-fun m!5505429 () Bool)

(assert (=> b!4642980 m!5505429))

(declare-fun m!5505431 () Bool)

(assert (=> b!4642990 m!5505431))

(declare-fun m!5505433 () Bool)

(assert (=> b!4642987 m!5505433))

(declare-fun m!5505435 () Bool)

(assert (=> b!4642987 m!5505435))

(declare-fun m!5505437 () Bool)

(assert (=> b!4642983 m!5505437))

(declare-fun m!5505439 () Bool)

(assert (=> b!4642983 m!5505439))

(declare-fun m!5505441 () Bool)

(assert (=> b!4642983 m!5505441))

(declare-fun m!5505443 () Bool)

(assert (=> b!4642983 m!5505443))

(declare-fun m!5505445 () Bool)

(assert (=> b!4642988 m!5505445))

(declare-fun m!5505447 () Bool)

(assert (=> b!4642986 m!5505447))

(declare-fun m!5505449 () Bool)

(assert (=> b!4642982 m!5505449))

(assert (=> b!4642982 m!5505449))

(declare-fun m!5505451 () Bool)

(assert (=> b!4642982 m!5505451))

(declare-fun m!5505453 () Bool)

(assert (=> b!4642992 m!5505453))

(declare-fun m!5505455 () Bool)

(assert (=> b!4642976 m!5505455))

(declare-fun m!5505457 () Bool)

(assert (=> b!4642976 m!5505457))

(declare-fun m!5505459 () Bool)

(assert (=> b!4642976 m!5505459))

(declare-fun m!5505461 () Bool)

(assert (=> b!4642991 m!5505461))

(assert (=> b!4642991 m!5505461))

(declare-fun m!5505463 () Bool)

(assert (=> b!4642991 m!5505463))

(declare-fun m!5505465 () Bool)

(assert (=> b!4642991 m!5505465))

(declare-fun m!5505467 () Bool)

(assert (=> b!4642991 m!5505467))

(declare-fun m!5505469 () Bool)

(assert (=> b!4642984 m!5505469))

(declare-fun m!5505471 () Bool)

(assert (=> b!4642993 m!5505471))

(declare-fun m!5505473 () Bool)

(assert (=> b!4642993 m!5505473))

(declare-fun m!5505475 () Bool)

(assert (=> b!4642993 m!5505475))

(declare-fun m!5505477 () Bool)

(assert (=> b!4642993 m!5505477))

(declare-fun m!5505479 () Bool)

(assert (=> b!4642993 m!5505479))

(declare-fun m!5505481 () Bool)

(assert (=> b!4642993 m!5505481))

(declare-fun m!5505483 () Bool)

(assert (=> b!4642993 m!5505483))

(assert (=> b!4642993 m!5505475))

(declare-fun m!5505485 () Bool)

(assert (=> b!4642993 m!5505485))

(declare-fun m!5505487 () Bool)

(assert (=> b!4642993 m!5505487))

(declare-fun m!5505489 () Bool)

(assert (=> b!4642993 m!5505489))

(declare-fun m!5505491 () Bool)

(assert (=> b!4642993 m!5505491))

(declare-fun m!5505493 () Bool)

(assert (=> b!4642993 m!5505493))

(declare-fun m!5505495 () Bool)

(assert (=> b!4642985 m!5505495))

(declare-fun m!5505497 () Bool)

(assert (=> b!4642985 m!5505497))

(declare-fun m!5505499 () Bool)

(assert (=> b!4642985 m!5505499))

(declare-fun m!5505501 () Bool)

(assert (=> b!4642985 m!5505501))

(declare-fun m!5505503 () Bool)

(assert (=> b!4642985 m!5505503))

(declare-fun m!5505505 () Bool)

(assert (=> b!4642985 m!5505505))

(declare-fun m!5505507 () Bool)

(assert (=> b!4642985 m!5505507))

(declare-fun m!5505509 () Bool)

(assert (=> b!4642985 m!5505509))

(declare-fun m!5505511 () Bool)

(assert (=> b!4642985 m!5505511))

(declare-fun m!5505513 () Bool)

(assert (=> b!4642985 m!5505513))

(declare-fun m!5505515 () Bool)

(assert (=> b!4642985 m!5505515))

(declare-fun m!5505517 () Bool)

(assert (=> b!4642985 m!5505517))

(declare-fun m!5505519 () Bool)

(assert (=> b!4642985 m!5505519))

(assert (=> b!4642985 m!5505499))

(declare-fun m!5505521 () Bool)

(assert (=> b!4642985 m!5505521))

(declare-fun m!5505523 () Bool)

(assert (=> b!4642985 m!5505523))

(declare-fun m!5505525 () Bool)

(assert (=> b!4642985 m!5505525))

(assert (=> b!4642985 m!5505497))

(assert (=> b!4642985 m!5505501))

(declare-fun m!5505527 () Bool)

(assert (=> b!4642985 m!5505527))

(assert (=> b!4642985 m!5505507))

(assert (=> b!4642985 m!5505525))

(declare-fun m!5505529 () Bool)

(assert (=> b!4642985 m!5505529))

(assert (=> b!4642985 m!5505511))

(assert (=> b!4642985 m!5505503))

(assert (=> b!4642985 m!5505523))

(check-sat (not b!4642991) (not b!4642980) (not b!4642993) (not b!4642983) (not b!4642988) (not b!4642976) (not start!467056) tp_is_empty!29709 (not b!4642987) (not b!4642977) (not b!4642986) (not b!4642990) (not b!4642982) (not b!4642989) (not b!4642984) (not b!4642994) (not b!4642979) tp_is_empty!29711 (not b!4642985) (not b!4642992))
(check-sat)
