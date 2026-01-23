; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!465064 () Bool)

(assert start!465064)

(declare-fun b!4632347 () Bool)

(declare-fun res!1943781 () Bool)

(declare-fun e!2889735 () Bool)

(assert (=> b!4632347 (=> (not res!1943781) (not e!2889735))))

(declare-datatypes ((K!12985 0))(
  ( (K!12986 (val!18659 Int)) )
))
(declare-datatypes ((V!13231 0))(
  ( (V!13232 (val!18660 Int)) )
))
(declare-datatypes ((tuple2!52582 0))(
  ( (tuple2!52583 (_1!29585 K!12985) (_2!29585 V!13231)) )
))
(declare-datatypes ((List!51740 0))(
  ( (Nil!51616) (Cons!51616 (h!57692 tuple2!52582) (t!358798 List!51740)) )
))
(declare-fun oldBucket!40 () List!51740)

(declare-fun newBucket!224 () List!51740)

(declare-fun key!4968 () K!12985)

(declare-fun removePairForKey!1157 (List!51740 K!12985) List!51740)

(assert (=> b!4632347 (= res!1943781 (= (removePairForKey!1157 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4632348 () Bool)

(declare-fun e!2889726 () Bool)

(assert (=> b!4632348 (= e!2889726 true)))

(declare-fun lt!1793201 () Bool)

(declare-datatypes ((ListMap!4337 0))(
  ( (ListMap!4338 (toList!5033 List!51740)) )
))
(declare-fun lt!1793191 () ListMap!4337)

(declare-fun lt!1793196 () ListMap!4337)

(declare-fun eq!849 (ListMap!4337 ListMap!4337) Bool)

(assert (=> b!4632348 (= lt!1793201 (eq!849 lt!1793191 lt!1793196))))

(declare-fun b!4632349 () Bool)

(declare-fun res!1943774 () Bool)

(assert (=> b!4632349 (=> (not res!1943774) (not e!2889735))))

(declare-fun noDuplicateKeys!1534 (List!51740) Bool)

(assert (=> b!4632349 (= res!1943774 (noDuplicateKeys!1534 newBucket!224))))

(declare-fun b!4632350 () Bool)

(declare-fun e!2889738 () Bool)

(declare-fun e!2889737 () Bool)

(assert (=> b!4632350 (= e!2889738 e!2889737)))

(declare-fun res!1943776 () Bool)

(assert (=> b!4632350 (=> res!1943776 e!2889737)))

(declare-fun lt!1793206 () tuple2!52582)

(declare-fun lt!1793217 () ListMap!4337)

(declare-fun +!1900 (ListMap!4337 tuple2!52582) ListMap!4337)

(assert (=> b!4632350 (= res!1943776 (not (eq!849 lt!1793217 (+!1900 lt!1793196 lt!1793206))))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun lt!1793214 () List!51740)

(declare-datatypes ((tuple2!52584 0))(
  ( (tuple2!52585 (_1!29586 (_ BitVec 64)) (_2!29586 List!51740)) )
))
(declare-datatypes ((List!51741 0))(
  ( (Nil!51617) (Cons!51617 (h!57693 tuple2!52584) (t!358799 List!51741)) )
))
(declare-fun extractMap!1590 (List!51741) ListMap!4337)

(assert (=> b!4632350 (= lt!1793196 (extractMap!1590 (Cons!51617 (tuple2!52585 hash!414 lt!1793214) Nil!51617)))))

(assert (=> b!4632350 (= lt!1793217 (extractMap!1590 (Cons!51617 (tuple2!52585 hash!414 newBucket!224) Nil!51617)))))

(declare-fun tp_is_empty!29431 () Bool)

(declare-fun tp_is_empty!29429 () Bool)

(declare-fun tp!1342378 () Bool)

(declare-fun b!4632351 () Bool)

(declare-fun e!2889731 () Bool)

(assert (=> b!4632351 (= e!2889731 (and tp_is_empty!29429 tp_is_empty!29431 tp!1342378))))

(declare-fun b!4632352 () Bool)

(declare-fun res!1943783 () Bool)

(declare-fun e!2889733 () Bool)

(assert (=> b!4632352 (=> (not res!1943783) (not e!2889733))))

(declare-datatypes ((Hashable!5931 0))(
  ( (HashableExt!5930 (__x!31634 Int)) )
))
(declare-fun hashF!1389 () Hashable!5931)

(declare-fun allKeysSameHash!1388 (List!51740 (_ BitVec 64) Hashable!5931) Bool)

(assert (=> b!4632352 (= res!1943783 (allKeysSameHash!1388 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4632353 () Bool)

(declare-fun e!2889728 () Bool)

(assert (=> b!4632353 (= e!2889735 e!2889728)))

(declare-fun res!1943784 () Bool)

(assert (=> b!4632353 (=> (not res!1943784) (not e!2889728))))

(declare-fun lt!1793199 () ListMap!4337)

(declare-fun contains!14713 (ListMap!4337 K!12985) Bool)

(assert (=> b!4632353 (= res!1943784 (contains!14713 lt!1793199 key!4968))))

(declare-fun lt!1793203 () List!51741)

(assert (=> b!4632353 (= lt!1793199 (extractMap!1590 lt!1793203))))

(assert (=> b!4632353 (= lt!1793203 (Cons!51617 (tuple2!52585 hash!414 oldBucket!40) Nil!51617))))

(declare-fun b!4632354 () Bool)

(declare-fun e!2889727 () Bool)

(declare-fun e!2889730 () Bool)

(assert (=> b!4632354 (= e!2889727 e!2889730)))

(declare-fun res!1943767 () Bool)

(assert (=> b!4632354 (=> res!1943767 e!2889730)))

(declare-fun lt!1793194 () List!51740)

(assert (=> b!4632354 (= res!1943767 (not (= (removePairForKey!1157 lt!1793194 key!4968) lt!1793214)))))

(declare-fun tail!8169 (List!51740) List!51740)

(assert (=> b!4632354 (= lt!1793214 (tail!8169 newBucket!224))))

(assert (=> b!4632354 (= lt!1793194 (tail!8169 oldBucket!40))))

(declare-fun b!4632355 () Bool)

(declare-fun e!2889734 () Bool)

(assert (=> b!4632355 (= e!2889734 e!2889726)))

(declare-fun res!1943777 () Bool)

(assert (=> b!4632355 (=> res!1943777 e!2889726)))

(declare-fun lt!1793195 () ListMap!4337)

(declare-fun lt!1793218 () ListMap!4337)

(assert (=> b!4632355 (= res!1943777 (not (eq!849 lt!1793195 lt!1793218)))))

(declare-fun lt!1793202 () ListMap!4337)

(assert (=> b!4632355 (eq!849 lt!1793202 lt!1793195)))

(declare-fun -!574 (ListMap!4337 K!12985) ListMap!4337)

(assert (=> b!4632355 (= lt!1793195 (-!574 lt!1793199 key!4968))))

(declare-fun lt!1793219 () ListMap!4337)

(declare-datatypes ((Unit!113627 0))(
  ( (Unit!113628) )
))
(declare-fun lt!1793210 () Unit!113627)

(declare-fun lemmaRemovePreservesEq!30 (ListMap!4337 ListMap!4337 K!12985) Unit!113627)

(assert (=> b!4632355 (= lt!1793210 (lemmaRemovePreservesEq!30 lt!1793219 lt!1793199 key!4968))))

(declare-fun b!4632356 () Bool)

(assert (=> b!4632356 (= e!2889728 e!2889733)))

(declare-fun res!1943782 () Bool)

(assert (=> b!4632356 (=> (not res!1943782) (not e!2889733))))

(declare-fun lt!1793213 () (_ BitVec 64))

(assert (=> b!4632356 (= res!1943782 (= lt!1793213 hash!414))))

(declare-fun hash!3578 (Hashable!5931 K!12985) (_ BitVec 64))

(assert (=> b!4632356 (= lt!1793213 (hash!3578 hashF!1389 key!4968))))

(declare-fun b!4632357 () Bool)

(declare-fun e!2889736 () Bool)

(declare-fun lt!1793198 () ListMap!4337)

(assert (=> b!4632357 (= e!2889736 (= lt!1793198 (ListMap!4338 Nil!51616)))))

(declare-fun b!4632358 () Bool)

(assert (=> b!4632358 (= e!2889737 e!2889734)))

(declare-fun res!1943778 () Bool)

(assert (=> b!4632358 (=> res!1943778 e!2889734)))

(assert (=> b!4632358 (= res!1943778 (not (= lt!1793202 lt!1793218)))))

(assert (=> b!4632358 (= lt!1793218 (+!1900 lt!1793191 (h!57692 oldBucket!40)))))

(assert (=> b!4632358 (= lt!1793202 (-!574 lt!1793219 key!4968))))

(declare-fun lt!1793188 () ListMap!4337)

(assert (=> b!4632358 (= lt!1793219 (+!1900 lt!1793188 (h!57692 oldBucket!40)))))

(assert (=> b!4632358 (= (-!574 (+!1900 lt!1793188 (h!57692 oldBucket!40)) key!4968) (+!1900 lt!1793191 (h!57692 oldBucket!40)))))

(declare-fun lt!1793211 () Unit!113627)

(declare-fun addRemoveCommutativeForDiffKeys!29 (ListMap!4337 K!12985 V!13231 K!12985) Unit!113627)

(assert (=> b!4632358 (= lt!1793211 (addRemoveCommutativeForDiffKeys!29 lt!1793188 (_1!29585 (h!57692 oldBucket!40)) (_2!29585 (h!57692 oldBucket!40)) key!4968))))

(assert (=> b!4632358 (eq!849 lt!1793196 lt!1793191)))

(assert (=> b!4632358 (= lt!1793191 (-!574 lt!1793188 key!4968))))

(declare-fun lt!1793189 () Unit!113627)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!136 ((_ BitVec 64) List!51740 List!51740 K!12985 Hashable!5931) Unit!113627)

(assert (=> b!4632358 (= lt!1793189 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!136 hash!414 (t!358798 oldBucket!40) lt!1793214 key!4968 hashF!1389))))

(declare-fun res!1943780 () Bool)

(assert (=> start!465064 (=> (not res!1943780) (not e!2889735))))

(assert (=> start!465064 (= res!1943780 (noDuplicateKeys!1534 oldBucket!40))))

(assert (=> start!465064 e!2889735))

(assert (=> start!465064 true))

(declare-fun e!2889732 () Bool)

(assert (=> start!465064 e!2889732))

(assert (=> start!465064 tp_is_empty!29429))

(assert (=> start!465064 e!2889731))

(declare-fun b!4632359 () Bool)

(declare-fun res!1943770 () Bool)

(assert (=> b!4632359 (=> res!1943770 e!2889730)))

(assert (=> b!4632359 (= res!1943770 (not (= (removePairForKey!1157 (t!358798 oldBucket!40) key!4968) lt!1793214)))))

(declare-fun b!4632360 () Bool)

(declare-fun res!1943773 () Bool)

(assert (=> b!4632360 (=> res!1943773 e!2889726)))

(assert (=> b!4632360 (= res!1943773 (not (eq!849 lt!1793217 (+!1900 lt!1793196 (h!57692 oldBucket!40)))))))

(declare-fun b!4632361 () Bool)

(declare-fun tp!1342379 () Bool)

(assert (=> b!4632361 (= e!2889732 (and tp_is_empty!29429 tp_is_empty!29431 tp!1342379))))

(declare-fun b!4632362 () Bool)

(declare-fun e!2889729 () Bool)

(assert (=> b!4632362 (= e!2889733 (not e!2889729))))

(declare-fun res!1943779 () Bool)

(assert (=> b!4632362 (=> res!1943779 e!2889729)))

(get-info :version)

(assert (=> b!4632362 (= res!1943779 (or (and ((_ is Cons!51616) oldBucket!40) (= (_1!29585 (h!57692 oldBucket!40)) key!4968)) (not ((_ is Cons!51616) oldBucket!40)) (= (_1!29585 (h!57692 oldBucket!40)) key!4968)))))

(assert (=> b!4632362 e!2889736))

(declare-fun res!1943772 () Bool)

(assert (=> b!4632362 (=> (not res!1943772) (not e!2889736))))

(declare-fun addToMapMapFromBucket!995 (List!51740 ListMap!4337) ListMap!4337)

(assert (=> b!4632362 (= res!1943772 (= lt!1793199 (addToMapMapFromBucket!995 oldBucket!40 lt!1793198)))))

(assert (=> b!4632362 (= lt!1793198 (extractMap!1590 Nil!51617))))

(assert (=> b!4632362 true))

(declare-fun b!4632363 () Bool)

(declare-fun res!1943771 () Bool)

(assert (=> b!4632363 (=> res!1943771 e!2889726)))

(assert (=> b!4632363 (= res!1943771 (not (= lt!1793206 (h!57692 oldBucket!40))))))

(declare-fun b!4632364 () Bool)

(assert (=> b!4632364 (= e!2889730 e!2889738)))

(declare-fun res!1943775 () Bool)

(assert (=> b!4632364 (=> res!1943775 e!2889738)))

(assert (=> b!4632364 (= res!1943775 (not (eq!849 lt!1793199 (+!1900 (extractMap!1590 (Cons!51617 (tuple2!52585 hash!414 lt!1793194) Nil!51617)) (h!57692 oldBucket!40)))))))

(assert (=> b!4632364 (eq!849 (addToMapMapFromBucket!995 (Cons!51616 lt!1793206 lt!1793214) (ListMap!4338 Nil!51616)) (+!1900 (addToMapMapFromBucket!995 lt!1793214 (ListMap!4338 Nil!51616)) lt!1793206))))

(declare-fun lt!1793192 () Unit!113627)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!100 (tuple2!52582 List!51740 ListMap!4337) Unit!113627)

(assert (=> b!4632364 (= lt!1793192 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!100 lt!1793206 lt!1793214 (ListMap!4338 Nil!51616)))))

(declare-fun head!9668 (List!51740) tuple2!52582)

(assert (=> b!4632364 (= lt!1793206 (head!9668 newBucket!224))))

(declare-fun lt!1793208 () tuple2!52582)

(assert (=> b!4632364 (eq!849 (addToMapMapFromBucket!995 (Cons!51616 lt!1793208 lt!1793194) (ListMap!4338 Nil!51616)) (+!1900 (addToMapMapFromBucket!995 lt!1793194 (ListMap!4338 Nil!51616)) lt!1793208))))

(declare-fun lt!1793216 () Unit!113627)

(assert (=> b!4632364 (= lt!1793216 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!100 lt!1793208 lt!1793194 (ListMap!4338 Nil!51616)))))

(assert (=> b!4632364 (= lt!1793208 (head!9668 oldBucket!40))))

(assert (=> b!4632364 (contains!14713 lt!1793188 key!4968)))

(declare-fun lt!1793209 () List!51741)

(assert (=> b!4632364 (= lt!1793188 (extractMap!1590 lt!1793209))))

(declare-fun lt!1793207 () Unit!113627)

(declare-datatypes ((ListLongMap!3623 0))(
  ( (ListLongMap!3624 (toList!5034 List!51741)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!352 (ListLongMap!3623 K!12985 Hashable!5931) Unit!113627)

(assert (=> b!4632364 (= lt!1793207 (lemmaListContainsThenExtractedMapContains!352 (ListLongMap!3624 lt!1793209) key!4968 hashF!1389))))

(assert (=> b!4632364 (= lt!1793209 (Cons!51617 (tuple2!52585 hash!414 (t!358798 oldBucket!40)) Nil!51617))))

(declare-fun b!4632365 () Bool)

(assert (=> b!4632365 (= e!2889729 e!2889727)))

(declare-fun res!1943769 () Bool)

(assert (=> b!4632365 (=> res!1943769 e!2889727)))

(declare-fun containsKey!2526 (List!51740 K!12985) Bool)

(assert (=> b!4632365 (= res!1943769 (not (containsKey!2526 (t!358798 oldBucket!40) key!4968)))))

(assert (=> b!4632365 (containsKey!2526 oldBucket!40 key!4968)))

(declare-fun lt!1793193 () Unit!113627)

(declare-fun lemmaGetPairDefinedThenContainsKey!80 (List!51740 K!12985 Hashable!5931) Unit!113627)

(assert (=> b!4632365 (= lt!1793193 (lemmaGetPairDefinedThenContainsKey!80 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1793200 () List!51740)

(declare-datatypes ((Option!11668 0))(
  ( (None!11667) (Some!11667 (v!45845 tuple2!52582)) )
))
(declare-fun isDefined!8933 (Option!11668) Bool)

(declare-fun getPair!326 (List!51740 K!12985) Option!11668)

(assert (=> b!4632365 (isDefined!8933 (getPair!326 lt!1793200 key!4968))))

(declare-fun lambda!194000 () Int)

(declare-fun lt!1793190 () tuple2!52584)

(declare-fun lt!1793205 () Unit!113627)

(declare-fun forallContained!3104 (List!51741 Int tuple2!52584) Unit!113627)

(assert (=> b!4632365 (= lt!1793205 (forallContained!3104 lt!1793203 lambda!194000 lt!1793190))))

(declare-fun contains!14714 (List!51741 tuple2!52584) Bool)

(assert (=> b!4632365 (contains!14714 lt!1793203 lt!1793190)))

(assert (=> b!4632365 (= lt!1793190 (tuple2!52585 lt!1793213 lt!1793200))))

(declare-fun lt!1793197 () Unit!113627)

(declare-fun lt!1793204 () ListLongMap!3623)

(declare-fun lemmaGetValueImpliesTupleContained!131 (ListLongMap!3623 (_ BitVec 64) List!51740) Unit!113627)

(assert (=> b!4632365 (= lt!1793197 (lemmaGetValueImpliesTupleContained!131 lt!1793204 lt!1793213 lt!1793200))))

(declare-fun apply!12199 (ListLongMap!3623 (_ BitVec 64)) List!51740)

(assert (=> b!4632365 (= lt!1793200 (apply!12199 lt!1793204 lt!1793213))))

(declare-fun contains!14715 (ListLongMap!3623 (_ BitVec 64)) Bool)

(assert (=> b!4632365 (contains!14715 lt!1793204 lt!1793213)))

(declare-fun lt!1793215 () Unit!113627)

(declare-fun lemmaInGenMapThenLongMapContainsHash!532 (ListLongMap!3623 K!12985 Hashable!5931) Unit!113627)

(assert (=> b!4632365 (= lt!1793215 (lemmaInGenMapThenLongMapContainsHash!532 lt!1793204 key!4968 hashF!1389))))

(declare-fun lt!1793212 () Unit!113627)

(declare-fun lemmaInGenMapThenGetPairDefined!122 (ListLongMap!3623 K!12985 Hashable!5931) Unit!113627)

(assert (=> b!4632365 (= lt!1793212 (lemmaInGenMapThenGetPairDefined!122 lt!1793204 key!4968 hashF!1389))))

(assert (=> b!4632365 (= lt!1793204 (ListLongMap!3624 lt!1793203))))

(declare-fun b!4632366 () Bool)

(declare-fun res!1943768 () Bool)

(assert (=> b!4632366 (=> (not res!1943768) (not e!2889735))))

(assert (=> b!4632366 (= res!1943768 (allKeysSameHash!1388 oldBucket!40 hash!414 hashF!1389))))

(assert (= (and start!465064 res!1943780) b!4632349))

(assert (= (and b!4632349 res!1943774) b!4632347))

(assert (= (and b!4632347 res!1943781) b!4632366))

(assert (= (and b!4632366 res!1943768) b!4632353))

(assert (= (and b!4632353 res!1943784) b!4632356))

(assert (= (and b!4632356 res!1943782) b!4632352))

(assert (= (and b!4632352 res!1943783) b!4632362))

(assert (= (and b!4632362 res!1943772) b!4632357))

(assert (= (and b!4632362 (not res!1943779)) b!4632365))

(assert (= (and b!4632365 (not res!1943769)) b!4632354))

(assert (= (and b!4632354 (not res!1943767)) b!4632359))

(assert (= (and b!4632359 (not res!1943770)) b!4632364))

(assert (= (and b!4632364 (not res!1943775)) b!4632350))

(assert (= (and b!4632350 (not res!1943776)) b!4632358))

(assert (= (and b!4632358 (not res!1943778)) b!4632355))

(assert (= (and b!4632355 (not res!1943777)) b!4632363))

(assert (= (and b!4632363 (not res!1943771)) b!4632360))

(assert (= (and b!4632360 (not res!1943773)) b!4632348))

(assert (= (and start!465064 ((_ is Cons!51616) oldBucket!40)) b!4632361))

(assert (= (and start!465064 ((_ is Cons!51616) newBucket!224)) b!4632351))

(declare-fun m!5483591 () Bool)

(assert (=> b!4632359 m!5483591))

(declare-fun m!5483593 () Bool)

(assert (=> b!4632364 m!5483593))

(declare-fun m!5483595 () Bool)

(assert (=> b!4632364 m!5483595))

(declare-fun m!5483597 () Bool)

(assert (=> b!4632364 m!5483597))

(declare-fun m!5483599 () Bool)

(assert (=> b!4632364 m!5483599))

(declare-fun m!5483601 () Bool)

(assert (=> b!4632364 m!5483601))

(declare-fun m!5483603 () Bool)

(assert (=> b!4632364 m!5483603))

(declare-fun m!5483605 () Bool)

(assert (=> b!4632364 m!5483605))

(declare-fun m!5483607 () Bool)

(assert (=> b!4632364 m!5483607))

(declare-fun m!5483609 () Bool)

(assert (=> b!4632364 m!5483609))

(assert (=> b!4632364 m!5483595))

(declare-fun m!5483611 () Bool)

(assert (=> b!4632364 m!5483611))

(assert (=> b!4632364 m!5483593))

(declare-fun m!5483613 () Bool)

(assert (=> b!4632364 m!5483613))

(assert (=> b!4632364 m!5483601))

(declare-fun m!5483615 () Bool)

(assert (=> b!4632364 m!5483615))

(assert (=> b!4632364 m!5483609))

(declare-fun m!5483617 () Bool)

(assert (=> b!4632364 m!5483617))

(declare-fun m!5483619 () Bool)

(assert (=> b!4632364 m!5483619))

(declare-fun m!5483621 () Bool)

(assert (=> b!4632364 m!5483621))

(declare-fun m!5483623 () Bool)

(assert (=> b!4632364 m!5483623))

(assert (=> b!4632364 m!5483603))

(assert (=> b!4632364 m!5483599))

(assert (=> b!4632364 m!5483613))

(assert (=> b!4632364 m!5483623))

(declare-fun m!5483625 () Bool)

(assert (=> b!4632364 m!5483625))

(declare-fun m!5483627 () Bool)

(assert (=> b!4632364 m!5483627))

(declare-fun m!5483629 () Bool)

(assert (=> b!4632355 m!5483629))

(declare-fun m!5483631 () Bool)

(assert (=> b!4632355 m!5483631))

(declare-fun m!5483633 () Bool)

(assert (=> b!4632355 m!5483633))

(declare-fun m!5483635 () Bool)

(assert (=> b!4632355 m!5483635))

(declare-fun m!5483637 () Bool)

(assert (=> b!4632354 m!5483637))

(declare-fun m!5483639 () Bool)

(assert (=> b!4632354 m!5483639))

(declare-fun m!5483641 () Bool)

(assert (=> b!4632354 m!5483641))

(declare-fun m!5483643 () Bool)

(assert (=> b!4632360 m!5483643))

(assert (=> b!4632360 m!5483643))

(declare-fun m!5483645 () Bool)

(assert (=> b!4632360 m!5483645))

(declare-fun m!5483647 () Bool)

(assert (=> b!4632350 m!5483647))

(assert (=> b!4632350 m!5483647))

(declare-fun m!5483649 () Bool)

(assert (=> b!4632350 m!5483649))

(declare-fun m!5483651 () Bool)

(assert (=> b!4632350 m!5483651))

(declare-fun m!5483653 () Bool)

(assert (=> b!4632350 m!5483653))

(declare-fun m!5483655 () Bool)

(assert (=> b!4632356 m!5483655))

(declare-fun m!5483657 () Bool)

(assert (=> b!4632362 m!5483657))

(declare-fun m!5483659 () Bool)

(assert (=> b!4632362 m!5483659))

(declare-fun m!5483661 () Bool)

(assert (=> b!4632349 m!5483661))

(declare-fun m!5483663 () Bool)

(assert (=> start!465064 m!5483663))

(declare-fun m!5483665 () Bool)

(assert (=> b!4632353 m!5483665))

(declare-fun m!5483667 () Bool)

(assert (=> b!4632353 m!5483667))

(declare-fun m!5483669 () Bool)

(assert (=> b!4632347 m!5483669))

(declare-fun m!5483671 () Bool)

(assert (=> b!4632366 m!5483671))

(declare-fun m!5483673 () Bool)

(assert (=> b!4632358 m!5483673))

(declare-fun m!5483675 () Bool)

(assert (=> b!4632358 m!5483675))

(declare-fun m!5483677 () Bool)

(assert (=> b!4632358 m!5483677))

(declare-fun m!5483679 () Bool)

(assert (=> b!4632358 m!5483679))

(assert (=> b!4632358 m!5483673))

(declare-fun m!5483681 () Bool)

(assert (=> b!4632358 m!5483681))

(declare-fun m!5483683 () Bool)

(assert (=> b!4632358 m!5483683))

(declare-fun m!5483685 () Bool)

(assert (=> b!4632358 m!5483685))

(declare-fun m!5483687 () Bool)

(assert (=> b!4632358 m!5483687))

(declare-fun m!5483689 () Bool)

(assert (=> b!4632352 m!5483689))

(declare-fun m!5483691 () Bool)

(assert (=> b!4632348 m!5483691))

(declare-fun m!5483693 () Bool)

(assert (=> b!4632365 m!5483693))

(declare-fun m!5483695 () Bool)

(assert (=> b!4632365 m!5483695))

(declare-fun m!5483697 () Bool)

(assert (=> b!4632365 m!5483697))

(declare-fun m!5483699 () Bool)

(assert (=> b!4632365 m!5483699))

(declare-fun m!5483701 () Bool)

(assert (=> b!4632365 m!5483701))

(declare-fun m!5483703 () Bool)

(assert (=> b!4632365 m!5483703))

(declare-fun m!5483705 () Bool)

(assert (=> b!4632365 m!5483705))

(declare-fun m!5483707 () Bool)

(assert (=> b!4632365 m!5483707))

(declare-fun m!5483709 () Bool)

(assert (=> b!4632365 m!5483709))

(assert (=> b!4632365 m!5483707))

(declare-fun m!5483711 () Bool)

(assert (=> b!4632365 m!5483711))

(declare-fun m!5483713 () Bool)

(assert (=> b!4632365 m!5483713))

(declare-fun m!5483715 () Bool)

(assert (=> b!4632365 m!5483715))

(check-sat (not start!465064) (not b!4632348) (not b!4632362) tp_is_empty!29429 (not b!4632366) (not b!4632352) (not b!4632350) (not b!4632360) (not b!4632358) (not b!4632353) (not b!4632351) (not b!4632359) (not b!4632361) (not b!4632355) (not b!4632349) (not b!4632356) (not b!4632354) (not b!4632364) tp_is_empty!29431 (not b!4632347) (not b!4632365))
(check-sat)
