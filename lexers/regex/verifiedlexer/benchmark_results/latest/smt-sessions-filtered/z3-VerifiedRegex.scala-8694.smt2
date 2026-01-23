; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!462900 () Bool)

(assert start!462900)

(declare-fun b!4621996 () Bool)

(declare-fun e!2883088 () Bool)

(declare-fun e!2883089 () Bool)

(assert (=> b!4621996 (= e!2883088 e!2883089)))

(declare-fun res!1937669 () Bool)

(assert (=> b!4621996 (=> (not res!1937669) (not e!2883089))))

(declare-datatypes ((K!12875 0))(
  ( (K!12876 (val!18571 Int)) )
))
(declare-datatypes ((V!13121 0))(
  ( (V!13122 (val!18572 Int)) )
))
(declare-datatypes ((tuple2!52406 0))(
  ( (tuple2!52407 (_1!29497 K!12875) (_2!29497 V!13121)) )
))
(declare-datatypes ((List!51614 0))(
  ( (Nil!51490) (Cons!51490 (h!57528 tuple2!52406) (t!358634 List!51614)) )
))
(declare-datatypes ((ListMap!4249 0))(
  ( (ListMap!4250 (toList!4945 List!51614)) )
))
(declare-fun lt!1778563 () ListMap!4249)

(declare-fun key!4968 () K!12875)

(declare-fun contains!14505 (ListMap!4249 K!12875) Bool)

(assert (=> b!4621996 (= res!1937669 (contains!14505 lt!1778563 key!4968))))

(declare-datatypes ((tuple2!52408 0))(
  ( (tuple2!52409 (_1!29498 (_ BitVec 64)) (_2!29498 List!51614)) )
))
(declare-datatypes ((List!51615 0))(
  ( (Nil!51491) (Cons!51491 (h!57529 tuple2!52408) (t!358635 List!51615)) )
))
(declare-fun lt!1778562 () List!51615)

(declare-fun extractMap!1546 (List!51615) ListMap!4249)

(assert (=> b!4621996 (= lt!1778563 (extractMap!1546 lt!1778562))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun oldBucket!40 () List!51614)

(assert (=> b!4621996 (= lt!1778562 (Cons!51491 (tuple2!52409 hash!414 oldBucket!40) Nil!51491))))

(declare-fun b!4621997 () Bool)

(declare-fun res!1937670 () Bool)

(assert (=> b!4621997 (=> (not res!1937670) (not e!2883088))))

(declare-fun newBucket!224 () List!51614)

(declare-fun noDuplicateKeys!1490 (List!51614) Bool)

(assert (=> b!4621997 (= res!1937670 (noDuplicateKeys!1490 newBucket!224))))

(declare-fun b!4621999 () Bool)

(declare-fun e!2883091 () Bool)

(declare-fun lt!1778547 () ListMap!4249)

(assert (=> b!4621999 (= e!2883091 (= lt!1778547 (ListMap!4250 Nil!51490)))))

(declare-fun b!4622000 () Bool)

(declare-fun res!1937674 () Bool)

(assert (=> b!4622000 (=> (not res!1937674) (not e!2883088))))

(declare-fun removePairForKey!1113 (List!51614 K!12875) List!51614)

(assert (=> b!4622000 (= res!1937674 (= (removePairForKey!1113 oldBucket!40 key!4968) newBucket!224))))

(declare-fun tp!1341963 () Bool)

(declare-fun tp_is_empty!29255 () Bool)

(declare-fun b!4622001 () Bool)

(declare-fun tp_is_empty!29253 () Bool)

(declare-fun e!2883087 () Bool)

(assert (=> b!4622001 (= e!2883087 (and tp_is_empty!29253 tp_is_empty!29255 tp!1341963))))

(declare-fun b!4622002 () Bool)

(declare-fun e!2883093 () Bool)

(declare-fun e!2883095 () Bool)

(assert (=> b!4622002 (= e!2883093 e!2883095)))

(declare-fun res!1937666 () Bool)

(assert (=> b!4622002 (=> res!1937666 e!2883095)))

(declare-fun lt!1778558 () List!51614)

(declare-fun eq!805 (ListMap!4249 ListMap!4249) Bool)

(declare-fun +!1856 (ListMap!4249 tuple2!52406) ListMap!4249)

(assert (=> b!4622002 (= res!1937666 (not (eq!805 lt!1778563 (+!1856 (extractMap!1546 (Cons!51491 (tuple2!52409 hash!414 lt!1778558) Nil!51491)) (h!57528 oldBucket!40)))))))

(declare-fun lt!1778549 () tuple2!52406)

(declare-fun lt!1778544 () List!51614)

(declare-fun addToMapMapFromBucket!951 (List!51614 ListMap!4249) ListMap!4249)

(assert (=> b!4622002 (eq!805 (addToMapMapFromBucket!951 (Cons!51490 lt!1778549 lt!1778544) (ListMap!4250 Nil!51490)) (+!1856 (addToMapMapFromBucket!951 lt!1778544 (ListMap!4250 Nil!51490)) lt!1778549))))

(declare-datatypes ((Unit!111269 0))(
  ( (Unit!111270) )
))
(declare-fun lt!1778550 () Unit!111269)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!56 (tuple2!52406 List!51614 ListMap!4249) Unit!111269)

(assert (=> b!4622002 (= lt!1778550 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!56 lt!1778549 lt!1778544 (ListMap!4250 Nil!51490)))))

(declare-fun head!9624 (List!51614) tuple2!52406)

(assert (=> b!4622002 (= lt!1778549 (head!9624 newBucket!224))))

(declare-fun lt!1778543 () tuple2!52406)

(assert (=> b!4622002 (eq!805 (addToMapMapFromBucket!951 (Cons!51490 lt!1778543 lt!1778558) (ListMap!4250 Nil!51490)) (+!1856 (addToMapMapFromBucket!951 lt!1778558 (ListMap!4250 Nil!51490)) lt!1778543))))

(declare-fun lt!1778561 () Unit!111269)

(assert (=> b!4622002 (= lt!1778561 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!56 lt!1778543 lt!1778558 (ListMap!4250 Nil!51490)))))

(assert (=> b!4622002 (= lt!1778543 (head!9624 oldBucket!40))))

(declare-fun lt!1778554 () List!51615)

(assert (=> b!4622002 (contains!14505 (extractMap!1546 lt!1778554) key!4968)))

(declare-datatypes ((Hashable!5887 0))(
  ( (HashableExt!5886 (__x!31590 Int)) )
))
(declare-fun hashF!1389 () Hashable!5887)

(declare-fun lt!1778557 () Unit!111269)

(declare-datatypes ((ListLongMap!3535 0))(
  ( (ListLongMap!3536 (toList!4946 List!51615)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!308 (ListLongMap!3535 K!12875 Hashable!5887) Unit!111269)

(assert (=> b!4622002 (= lt!1778557 (lemmaListContainsThenExtractedMapContains!308 (ListLongMap!3536 lt!1778554) key!4968 hashF!1389))))

(assert (=> b!4622002 (= lt!1778554 (Cons!51491 (tuple2!52409 hash!414 (t!358634 oldBucket!40)) Nil!51491))))

(declare-fun b!4622003 () Bool)

(assert (=> b!4622003 (= e!2883095 (not (= newBucket!224 Nil!51490)))))

(declare-fun lt!1778551 () ListMap!4249)

(assert (=> b!4622003 (= lt!1778551 (extractMap!1546 (Cons!51491 (tuple2!52409 hash!414 newBucket!224) Nil!51491)))))

(declare-fun b!4622004 () Bool)

(declare-fun res!1937673 () Bool)

(declare-fun e!2883096 () Bool)

(assert (=> b!4622004 (=> (not res!1937673) (not e!2883096))))

(declare-fun allKeysSameHash!1344 (List!51614 (_ BitVec 64) Hashable!5887) Bool)

(assert (=> b!4622004 (= res!1937673 (allKeysSameHash!1344 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4622005 () Bool)

(declare-fun e!2883092 () Bool)

(assert (=> b!4622005 (= e!2883092 e!2883093)))

(declare-fun res!1937671 () Bool)

(assert (=> b!4622005 (=> res!1937671 e!2883093)))

(assert (=> b!4622005 (= res!1937671 (not (= (removePairForKey!1113 lt!1778558 key!4968) lt!1778544)))))

(declare-fun tail!8125 (List!51614) List!51614)

(assert (=> b!4622005 (= lt!1778544 (tail!8125 newBucket!224))))

(assert (=> b!4622005 (= lt!1778558 (tail!8125 oldBucket!40))))

(declare-fun b!4621998 () Bool)

(assert (=> b!4621998 (= e!2883089 e!2883096)))

(declare-fun res!1937668 () Bool)

(assert (=> b!4621998 (=> (not res!1937668) (not e!2883096))))

(declare-fun lt!1778548 () (_ BitVec 64))

(assert (=> b!4621998 (= res!1937668 (= lt!1778548 hash!414))))

(declare-fun hash!3467 (Hashable!5887 K!12875) (_ BitVec 64))

(assert (=> b!4621998 (= lt!1778548 (hash!3467 hashF!1389 key!4968))))

(declare-fun res!1937672 () Bool)

(assert (=> start!462900 (=> (not res!1937672) (not e!2883088))))

(assert (=> start!462900 (= res!1937672 (noDuplicateKeys!1490 oldBucket!40))))

(assert (=> start!462900 e!2883088))

(assert (=> start!462900 true))

(declare-fun e!2883094 () Bool)

(assert (=> start!462900 e!2883094))

(assert (=> start!462900 tp_is_empty!29253))

(assert (=> start!462900 e!2883087))

(declare-fun b!4622006 () Bool)

(declare-fun res!1937663 () Bool)

(assert (=> b!4622006 (=> (not res!1937663) (not e!2883088))))

(assert (=> b!4622006 (= res!1937663 (allKeysSameHash!1344 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4622007 () Bool)

(declare-fun res!1937664 () Bool)

(assert (=> b!4622007 (=> res!1937664 e!2883093)))

(assert (=> b!4622007 (= res!1937664 (not (= (removePairForKey!1113 (t!358634 oldBucket!40) key!4968) lt!1778544)))))

(declare-fun b!4622008 () Bool)

(declare-fun e!2883090 () Bool)

(assert (=> b!4622008 (= e!2883096 (not e!2883090))))

(declare-fun res!1937667 () Bool)

(assert (=> b!4622008 (=> res!1937667 e!2883090)))

(get-info :version)

(assert (=> b!4622008 (= res!1937667 (or (and ((_ is Cons!51490) oldBucket!40) (= (_1!29497 (h!57528 oldBucket!40)) key!4968)) (not ((_ is Cons!51490) oldBucket!40)) (= (_1!29497 (h!57528 oldBucket!40)) key!4968)))))

(assert (=> b!4622008 e!2883091))

(declare-fun res!1937665 () Bool)

(assert (=> b!4622008 (=> (not res!1937665) (not e!2883091))))

(assert (=> b!4622008 (= res!1937665 (= lt!1778563 (addToMapMapFromBucket!951 oldBucket!40 lt!1778547)))))

(assert (=> b!4622008 (= lt!1778547 (extractMap!1546 Nil!51491))))

(assert (=> b!4622008 true))

(declare-fun b!4622009 () Bool)

(assert (=> b!4622009 (= e!2883090 e!2883092)))

(declare-fun res!1937662 () Bool)

(assert (=> b!4622009 (=> res!1937662 e!2883092)))

(declare-fun containsKey!2406 (List!51614 K!12875) Bool)

(assert (=> b!4622009 (= res!1937662 (not (containsKey!2406 (t!358634 oldBucket!40) key!4968)))))

(assert (=> b!4622009 (containsKey!2406 oldBucket!40 key!4968)))

(declare-fun lt!1778552 () Unit!111269)

(declare-fun lemmaGetPairDefinedThenContainsKey!36 (List!51614 K!12875 Hashable!5887) Unit!111269)

(assert (=> b!4622009 (= lt!1778552 (lemmaGetPairDefinedThenContainsKey!36 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1778556 () List!51614)

(declare-datatypes ((Option!11548 0))(
  ( (None!11547) (Some!11547 (v!45649 tuple2!52406)) )
))
(declare-fun isDefined!8813 (Option!11548) Bool)

(declare-fun getPair!282 (List!51614 K!12875) Option!11548)

(assert (=> b!4622009 (isDefined!8813 (getPair!282 lt!1778556 key!4968))))

(declare-fun lt!1778560 () tuple2!52408)

(declare-fun lambda!191050 () Int)

(declare-fun lt!1778555 () Unit!111269)

(declare-fun forallContained!3022 (List!51615 Int tuple2!52408) Unit!111269)

(assert (=> b!4622009 (= lt!1778555 (forallContained!3022 lt!1778562 lambda!191050 lt!1778560))))

(declare-fun contains!14506 (List!51615 tuple2!52408) Bool)

(assert (=> b!4622009 (contains!14506 lt!1778562 lt!1778560)))

(assert (=> b!4622009 (= lt!1778560 (tuple2!52409 lt!1778548 lt!1778556))))

(declare-fun lt!1778546 () Unit!111269)

(declare-fun lt!1778545 () ListLongMap!3535)

(declare-fun lemmaGetValueImpliesTupleContained!87 (ListLongMap!3535 (_ BitVec 64) List!51614) Unit!111269)

(assert (=> b!4622009 (= lt!1778546 (lemmaGetValueImpliesTupleContained!87 lt!1778545 lt!1778548 lt!1778556))))

(declare-fun apply!12155 (ListLongMap!3535 (_ BitVec 64)) List!51614)

(assert (=> b!4622009 (= lt!1778556 (apply!12155 lt!1778545 lt!1778548))))

(declare-fun contains!14507 (ListLongMap!3535 (_ BitVec 64)) Bool)

(assert (=> b!4622009 (contains!14507 lt!1778545 lt!1778548)))

(declare-fun lt!1778553 () Unit!111269)

(declare-fun lemmaInGenMapThenLongMapContainsHash!488 (ListLongMap!3535 K!12875 Hashable!5887) Unit!111269)

(assert (=> b!4622009 (= lt!1778553 (lemmaInGenMapThenLongMapContainsHash!488 lt!1778545 key!4968 hashF!1389))))

(declare-fun lt!1778559 () Unit!111269)

(declare-fun lemmaInGenMapThenGetPairDefined!78 (ListLongMap!3535 K!12875 Hashable!5887) Unit!111269)

(assert (=> b!4622009 (= lt!1778559 (lemmaInGenMapThenGetPairDefined!78 lt!1778545 key!4968 hashF!1389))))

(assert (=> b!4622009 (= lt!1778545 (ListLongMap!3536 lt!1778562))))

(declare-fun b!4622010 () Bool)

(declare-fun tp!1341962 () Bool)

(assert (=> b!4622010 (= e!2883094 (and tp_is_empty!29253 tp_is_empty!29255 tp!1341962))))

(assert (= (and start!462900 res!1937672) b!4621997))

(assert (= (and b!4621997 res!1937670) b!4622000))

(assert (= (and b!4622000 res!1937674) b!4622006))

(assert (= (and b!4622006 res!1937663) b!4621996))

(assert (= (and b!4621996 res!1937669) b!4621998))

(assert (= (and b!4621998 res!1937668) b!4622004))

(assert (= (and b!4622004 res!1937673) b!4622008))

(assert (= (and b!4622008 res!1937665) b!4621999))

(assert (= (and b!4622008 (not res!1937667)) b!4622009))

(assert (= (and b!4622009 (not res!1937662)) b!4622005))

(assert (= (and b!4622005 (not res!1937671)) b!4622007))

(assert (= (and b!4622007 (not res!1937664)) b!4622002))

(assert (= (and b!4622002 (not res!1937666)) b!4622003))

(assert (= (and start!462900 ((_ is Cons!51490) oldBucket!40)) b!4622010))

(assert (= (and start!462900 ((_ is Cons!51490) newBucket!224)) b!4622001))

(declare-fun m!5459707 () Bool)

(assert (=> b!4621997 m!5459707))

(declare-fun m!5459709 () Bool)

(assert (=> b!4622003 m!5459709))

(declare-fun m!5459711 () Bool)

(assert (=> b!4622006 m!5459711))

(declare-fun m!5459713 () Bool)

(assert (=> b!4622002 m!5459713))

(declare-fun m!5459715 () Bool)

(assert (=> b!4622002 m!5459715))

(declare-fun m!5459717 () Bool)

(assert (=> b!4622002 m!5459717))

(declare-fun m!5459719 () Bool)

(assert (=> b!4622002 m!5459719))

(declare-fun m!5459721 () Bool)

(assert (=> b!4622002 m!5459721))

(declare-fun m!5459723 () Bool)

(assert (=> b!4622002 m!5459723))

(declare-fun m!5459725 () Bool)

(assert (=> b!4622002 m!5459725))

(declare-fun m!5459727 () Bool)

(assert (=> b!4622002 m!5459727))

(declare-fun m!5459729 () Bool)

(assert (=> b!4622002 m!5459729))

(declare-fun m!5459731 () Bool)

(assert (=> b!4622002 m!5459731))

(declare-fun m!5459733 () Bool)

(assert (=> b!4622002 m!5459733))

(declare-fun m!5459735 () Bool)

(assert (=> b!4622002 m!5459735))

(declare-fun m!5459737 () Bool)

(assert (=> b!4622002 m!5459737))

(assert (=> b!4622002 m!5459733))

(assert (=> b!4622002 m!5459723))

(assert (=> b!4622002 m!5459719))

(declare-fun m!5459739 () Bool)

(assert (=> b!4622002 m!5459739))

(assert (=> b!4622002 m!5459715))

(declare-fun m!5459741 () Bool)

(assert (=> b!4622002 m!5459741))

(declare-fun m!5459743 () Bool)

(assert (=> b!4622002 m!5459743))

(declare-fun m!5459745 () Bool)

(assert (=> b!4622002 m!5459745))

(assert (=> b!4622002 m!5459729))

(assert (=> b!4622002 m!5459727))

(assert (=> b!4622002 m!5459713))

(assert (=> b!4622002 m!5459721))

(declare-fun m!5459747 () Bool)

(assert (=> b!4622002 m!5459747))

(assert (=> b!4622002 m!5459745))

(declare-fun m!5459749 () Bool)

(assert (=> b!4622004 m!5459749))

(declare-fun m!5459751 () Bool)

(assert (=> b!4622005 m!5459751))

(declare-fun m!5459753 () Bool)

(assert (=> b!4622005 m!5459753))

(declare-fun m!5459755 () Bool)

(assert (=> b!4622005 m!5459755))

(declare-fun m!5459757 () Bool)

(assert (=> b!4622007 m!5459757))

(declare-fun m!5459759 () Bool)

(assert (=> b!4622009 m!5459759))

(declare-fun m!5459761 () Bool)

(assert (=> b!4622009 m!5459761))

(declare-fun m!5459763 () Bool)

(assert (=> b!4622009 m!5459763))

(declare-fun m!5459765 () Bool)

(assert (=> b!4622009 m!5459765))

(declare-fun m!5459767 () Bool)

(assert (=> b!4622009 m!5459767))

(assert (=> b!4622009 m!5459765))

(declare-fun m!5459769 () Bool)

(assert (=> b!4622009 m!5459769))

(declare-fun m!5459771 () Bool)

(assert (=> b!4622009 m!5459771))

(declare-fun m!5459773 () Bool)

(assert (=> b!4622009 m!5459773))

(declare-fun m!5459775 () Bool)

(assert (=> b!4622009 m!5459775))

(declare-fun m!5459777 () Bool)

(assert (=> b!4622009 m!5459777))

(declare-fun m!5459779 () Bool)

(assert (=> b!4622009 m!5459779))

(declare-fun m!5459781 () Bool)

(assert (=> b!4622009 m!5459781))

(declare-fun m!5459783 () Bool)

(assert (=> b!4622008 m!5459783))

(declare-fun m!5459785 () Bool)

(assert (=> b!4622008 m!5459785))

(declare-fun m!5459787 () Bool)

(assert (=> start!462900 m!5459787))

(declare-fun m!5459789 () Bool)

(assert (=> b!4621998 m!5459789))

(declare-fun m!5459791 () Bool)

(assert (=> b!4621996 m!5459791))

(declare-fun m!5459793 () Bool)

(assert (=> b!4621996 m!5459793))

(declare-fun m!5459795 () Bool)

(assert (=> b!4622000 m!5459795))

(check-sat (not b!4622003) (not b!4621998) (not b!4622001) tp_is_empty!29255 (not b!4621996) (not b!4622004) tp_is_empty!29253 (not start!462900) (not b!4622008) (not b!4622006) (not b!4622002) (not b!4622000) (not b!4622009) (not b!4622005) (not b!4622007) (not b!4622010) (not b!4621997))
(check-sat)
(get-model)

(declare-fun d!1455679 () Bool)

(declare-fun dynLambda!21485 (Int tuple2!52408) Bool)

(assert (=> d!1455679 (dynLambda!21485 lambda!191050 lt!1778560)))

(declare-fun lt!1778569 () Unit!111269)

(declare-fun choose!31212 (List!51615 Int tuple2!52408) Unit!111269)

(assert (=> d!1455679 (= lt!1778569 (choose!31212 lt!1778562 lambda!191050 lt!1778560))))

(declare-fun e!2883105 () Bool)

(assert (=> d!1455679 e!2883105))

(declare-fun res!1937677 () Bool)

(assert (=> d!1455679 (=> (not res!1937677) (not e!2883105))))

(declare-fun forall!10799 (List!51615 Int) Bool)

(assert (=> d!1455679 (= res!1937677 (forall!10799 lt!1778562 lambda!191050))))

(assert (=> d!1455679 (= (forallContained!3022 lt!1778562 lambda!191050 lt!1778560) lt!1778569)))

(declare-fun b!4622029 () Bool)

(assert (=> b!4622029 (= e!2883105 (contains!14506 lt!1778562 lt!1778560))))

(assert (= (and d!1455679 res!1937677) b!4622029))

(declare-fun b_lambda!170661 () Bool)

(assert (=> (not b_lambda!170661) (not d!1455679)))

(declare-fun m!5459803 () Bool)

(assert (=> d!1455679 m!5459803))

(declare-fun m!5459805 () Bool)

(assert (=> d!1455679 m!5459805))

(declare-fun m!5459807 () Bool)

(assert (=> d!1455679 m!5459807))

(assert (=> b!4622029 m!5459771))

(assert (=> b!4622009 d!1455679))

(declare-fun b!4622046 () Bool)

(declare-fun e!2883119 () Option!11548)

(assert (=> b!4622046 (= e!2883119 None!11547)))

(declare-fun d!1455685 () Bool)

(declare-fun e!2883118 () Bool)

(assert (=> d!1455685 e!2883118))

(declare-fun res!1937689 () Bool)

(assert (=> d!1455685 (=> res!1937689 e!2883118)))

(declare-fun e!2883120 () Bool)

(assert (=> d!1455685 (= res!1937689 e!2883120)))

(declare-fun res!1937686 () Bool)

(assert (=> d!1455685 (=> (not res!1937686) (not e!2883120))))

(declare-fun lt!1778572 () Option!11548)

(declare-fun isEmpty!28917 (Option!11548) Bool)

(assert (=> d!1455685 (= res!1937686 (isEmpty!28917 lt!1778572))))

(declare-fun e!2883116 () Option!11548)

(assert (=> d!1455685 (= lt!1778572 e!2883116)))

(declare-fun c!791165 () Bool)

(assert (=> d!1455685 (= c!791165 (and ((_ is Cons!51490) lt!1778556) (= (_1!29497 (h!57528 lt!1778556)) key!4968)))))

(assert (=> d!1455685 (noDuplicateKeys!1490 lt!1778556)))

(assert (=> d!1455685 (= (getPair!282 lt!1778556 key!4968) lt!1778572)))

(declare-fun b!4622047 () Bool)

(assert (=> b!4622047 (= e!2883116 (Some!11547 (h!57528 lt!1778556)))))

(declare-fun b!4622048 () Bool)

(declare-fun e!2883117 () Bool)

(assert (=> b!4622048 (= e!2883118 e!2883117)))

(declare-fun res!1937688 () Bool)

(assert (=> b!4622048 (=> (not res!1937688) (not e!2883117))))

(assert (=> b!4622048 (= res!1937688 (isDefined!8813 lt!1778572))))

(declare-fun b!4622049 () Bool)

(assert (=> b!4622049 (= e!2883120 (not (containsKey!2406 lt!1778556 key!4968)))))

(declare-fun b!4622050 () Bool)

(assert (=> b!4622050 (= e!2883116 e!2883119)))

(declare-fun c!791166 () Bool)

(assert (=> b!4622050 (= c!791166 ((_ is Cons!51490) lt!1778556))))

(declare-fun b!4622051 () Bool)

(declare-fun contains!14509 (List!51614 tuple2!52406) Bool)

(declare-fun get!17043 (Option!11548) tuple2!52406)

(assert (=> b!4622051 (= e!2883117 (contains!14509 lt!1778556 (get!17043 lt!1778572)))))

(declare-fun b!4622052 () Bool)

(declare-fun res!1937687 () Bool)

(assert (=> b!4622052 (=> (not res!1937687) (not e!2883117))))

(assert (=> b!4622052 (= res!1937687 (= (_1!29497 (get!17043 lt!1778572)) key!4968))))

(declare-fun b!4622053 () Bool)

(assert (=> b!4622053 (= e!2883119 (getPair!282 (t!358634 lt!1778556) key!4968))))

(assert (= (and d!1455685 c!791165) b!4622047))

(assert (= (and d!1455685 (not c!791165)) b!4622050))

(assert (= (and b!4622050 c!791166) b!4622053))

(assert (= (and b!4622050 (not c!791166)) b!4622046))

(assert (= (and d!1455685 res!1937686) b!4622049))

(assert (= (and d!1455685 (not res!1937689)) b!4622048))

(assert (= (and b!4622048 res!1937688) b!4622052))

(assert (= (and b!4622052 res!1937687) b!4622051))

(declare-fun m!5459809 () Bool)

(assert (=> b!4622049 m!5459809))

(declare-fun m!5459811 () Bool)

(assert (=> b!4622048 m!5459811))

(declare-fun m!5459813 () Bool)

(assert (=> d!1455685 m!5459813))

(declare-fun m!5459815 () Bool)

(assert (=> d!1455685 m!5459815))

(declare-fun m!5459817 () Bool)

(assert (=> b!4622051 m!5459817))

(assert (=> b!4622051 m!5459817))

(declare-fun m!5459819 () Bool)

(assert (=> b!4622051 m!5459819))

(declare-fun m!5459821 () Bool)

(assert (=> b!4622053 m!5459821))

(assert (=> b!4622052 m!5459817))

(assert (=> b!4622009 d!1455685))

(declare-fun bs!1020772 () Bool)

(declare-fun d!1455687 () Bool)

(assert (= bs!1020772 (and d!1455687 b!4622009)))

(declare-fun lambda!191062 () Int)

(assert (=> bs!1020772 (= lambda!191062 lambda!191050)))

(declare-fun e!2883127 () Bool)

(assert (=> d!1455687 e!2883127))

(declare-fun res!1937698 () Bool)

(assert (=> d!1455687 (=> (not res!1937698) (not e!2883127))))

(assert (=> d!1455687 (= res!1937698 (forall!10799 (toList!4946 lt!1778545) lambda!191062))))

(declare-fun lt!1778602 () Unit!111269)

(declare-fun choose!31213 (ListLongMap!3535 K!12875 Hashable!5887) Unit!111269)

(assert (=> d!1455687 (= lt!1778602 (choose!31213 lt!1778545 key!4968 hashF!1389))))

(assert (=> d!1455687 (forall!10799 (toList!4946 lt!1778545) lambda!191062)))

(assert (=> d!1455687 (= (lemmaInGenMapThenGetPairDefined!78 lt!1778545 key!4968 hashF!1389) lt!1778602)))

(declare-fun b!4622067 () Bool)

(declare-fun res!1937699 () Bool)

(assert (=> b!4622067 (=> (not res!1937699) (not e!2883127))))

(assert (=> b!4622067 (= res!1937699 (contains!14505 (extractMap!1546 (toList!4946 lt!1778545)) key!4968))))

(declare-fun b!4622066 () Bool)

(declare-fun res!1937701 () Bool)

(assert (=> b!4622066 (=> (not res!1937701) (not e!2883127))))

(declare-fun allKeysSameHashInMap!1517 (ListLongMap!3535 Hashable!5887) Bool)

(assert (=> b!4622066 (= res!1937701 (allKeysSameHashInMap!1517 lt!1778545 hashF!1389))))

(declare-fun b!4622068 () Bool)

(assert (=> b!4622068 (= e!2883127 (isDefined!8813 (getPair!282 (apply!12155 lt!1778545 (hash!3467 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1778599 () Unit!111269)

(assert (=> b!4622068 (= lt!1778599 (forallContained!3022 (toList!4946 lt!1778545) lambda!191062 (tuple2!52409 (hash!3467 hashF!1389 key!4968) (apply!12155 lt!1778545 (hash!3467 hashF!1389 key!4968)))))))

(declare-fun lt!1778595 () Unit!111269)

(declare-fun lt!1778600 () Unit!111269)

(assert (=> b!4622068 (= lt!1778595 lt!1778600)))

(declare-fun lt!1778598 () (_ BitVec 64))

(declare-fun lt!1778596 () List!51614)

(assert (=> b!4622068 (contains!14506 (toList!4946 lt!1778545) (tuple2!52409 lt!1778598 lt!1778596))))

(assert (=> b!4622068 (= lt!1778600 (lemmaGetValueImpliesTupleContained!87 lt!1778545 lt!1778598 lt!1778596))))

(declare-fun e!2883128 () Bool)

(assert (=> b!4622068 e!2883128))

(declare-fun res!1937700 () Bool)

(assert (=> b!4622068 (=> (not res!1937700) (not e!2883128))))

(assert (=> b!4622068 (= res!1937700 (contains!14507 lt!1778545 lt!1778598))))

(assert (=> b!4622068 (= lt!1778596 (apply!12155 lt!1778545 (hash!3467 hashF!1389 key!4968)))))

(assert (=> b!4622068 (= lt!1778598 (hash!3467 hashF!1389 key!4968))))

(declare-fun lt!1778601 () Unit!111269)

(declare-fun lt!1778597 () Unit!111269)

(assert (=> b!4622068 (= lt!1778601 lt!1778597)))

(assert (=> b!4622068 (contains!14507 lt!1778545 (hash!3467 hashF!1389 key!4968))))

(assert (=> b!4622068 (= lt!1778597 (lemmaInGenMapThenLongMapContainsHash!488 lt!1778545 key!4968 hashF!1389))))

(declare-fun b!4622069 () Bool)

(declare-datatypes ((Option!11550 0))(
  ( (None!11549) (Some!11549 (v!45655 List!51614)) )
))
(declare-fun getValueByKey!1426 (List!51615 (_ BitVec 64)) Option!11550)

(assert (=> b!4622069 (= e!2883128 (= (getValueByKey!1426 (toList!4946 lt!1778545) lt!1778598) (Some!11549 lt!1778596)))))

(assert (= (and d!1455687 res!1937698) b!4622066))

(assert (= (and b!4622066 res!1937701) b!4622067))

(assert (= (and b!4622067 res!1937699) b!4622068))

(assert (= (and b!4622068 res!1937700) b!4622069))

(declare-fun m!5459823 () Bool)

(assert (=> b!4622066 m!5459823))

(declare-fun m!5459825 () Bool)

(assert (=> b!4622067 m!5459825))

(assert (=> b!4622067 m!5459825))

(declare-fun m!5459827 () Bool)

(assert (=> b!4622067 m!5459827))

(declare-fun m!5459829 () Bool)

(assert (=> d!1455687 m!5459829))

(declare-fun m!5459831 () Bool)

(assert (=> d!1455687 m!5459831))

(assert (=> d!1455687 m!5459829))

(assert (=> b!4622068 m!5459789))

(declare-fun m!5459833 () Bool)

(assert (=> b!4622068 m!5459833))

(declare-fun m!5459835 () Bool)

(assert (=> b!4622068 m!5459835))

(assert (=> b!4622068 m!5459789))

(declare-fun m!5459837 () Bool)

(assert (=> b!4622068 m!5459837))

(assert (=> b!4622068 m!5459763))

(declare-fun m!5459839 () Bool)

(assert (=> b!4622068 m!5459839))

(declare-fun m!5459841 () Bool)

(assert (=> b!4622068 m!5459841))

(declare-fun m!5459843 () Bool)

(assert (=> b!4622068 m!5459843))

(assert (=> b!4622068 m!5459789))

(assert (=> b!4622068 m!5459841))

(declare-fun m!5459845 () Bool)

(assert (=> b!4622068 m!5459845))

(assert (=> b!4622068 m!5459843))

(declare-fun m!5459847 () Bool)

(assert (=> b!4622068 m!5459847))

(declare-fun m!5459849 () Bool)

(assert (=> b!4622069 m!5459849))

(assert (=> b!4622009 d!1455687))

(declare-fun d!1455689 () Bool)

(declare-fun lt!1778641 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8767 (List!51615) (InoxSet tuple2!52408))

(assert (=> d!1455689 (= lt!1778641 (select (content!8767 lt!1778562) lt!1778560))))

(declare-fun e!2883135 () Bool)

(assert (=> d!1455689 (= lt!1778641 e!2883135)))

(declare-fun res!1937709 () Bool)

(assert (=> d!1455689 (=> (not res!1937709) (not e!2883135))))

(assert (=> d!1455689 (= res!1937709 ((_ is Cons!51491) lt!1778562))))

(assert (=> d!1455689 (= (contains!14506 lt!1778562 lt!1778560) lt!1778641)))

(declare-fun b!4622076 () Bool)

(declare-fun e!2883136 () Bool)

(assert (=> b!4622076 (= e!2883135 e!2883136)))

(declare-fun res!1937708 () Bool)

(assert (=> b!4622076 (=> res!1937708 e!2883136)))

(assert (=> b!4622076 (= res!1937708 (= (h!57529 lt!1778562) lt!1778560))))

(declare-fun b!4622077 () Bool)

(assert (=> b!4622077 (= e!2883136 (contains!14506 (t!358635 lt!1778562) lt!1778560))))

(assert (= (and d!1455689 res!1937709) b!4622076))

(assert (= (and b!4622076 (not res!1937708)) b!4622077))

(declare-fun m!5459851 () Bool)

(assert (=> d!1455689 m!5459851))

(declare-fun m!5459853 () Bool)

(assert (=> d!1455689 m!5459853))

(declare-fun m!5459855 () Bool)

(assert (=> b!4622077 m!5459855))

(assert (=> b!4622009 d!1455689))

(declare-fun d!1455691 () Bool)

(declare-fun e!2883147 () Bool)

(assert (=> d!1455691 e!2883147))

(declare-fun res!1937719 () Bool)

(assert (=> d!1455691 (=> res!1937719 e!2883147)))

(declare-fun lt!1778673 () Bool)

(assert (=> d!1455691 (= res!1937719 (not lt!1778673))))

(declare-fun lt!1778672 () Bool)

(assert (=> d!1455691 (= lt!1778673 lt!1778672)))

(declare-fun lt!1778671 () Unit!111269)

(declare-fun e!2883146 () Unit!111269)

(assert (=> d!1455691 (= lt!1778671 e!2883146)))

(declare-fun c!791172 () Bool)

(assert (=> d!1455691 (= c!791172 lt!1778672)))

(declare-fun containsKey!2408 (List!51615 (_ BitVec 64)) Bool)

(assert (=> d!1455691 (= lt!1778672 (containsKey!2408 (toList!4946 lt!1778545) lt!1778548))))

(assert (=> d!1455691 (= (contains!14507 lt!1778545 lt!1778548) lt!1778673)))

(declare-fun b!4622095 () Bool)

(declare-fun lt!1778674 () Unit!111269)

(assert (=> b!4622095 (= e!2883146 lt!1778674)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1328 (List!51615 (_ BitVec 64)) Unit!111269)

(assert (=> b!4622095 (= lt!1778674 (lemmaContainsKeyImpliesGetValueByKeyDefined!1328 (toList!4946 lt!1778545) lt!1778548))))

(declare-fun isDefined!8815 (Option!11550) Bool)

(assert (=> b!4622095 (isDefined!8815 (getValueByKey!1426 (toList!4946 lt!1778545) lt!1778548))))

(declare-fun b!4622096 () Bool)

(declare-fun Unit!111284 () Unit!111269)

(assert (=> b!4622096 (= e!2883146 Unit!111284)))

(declare-fun b!4622097 () Bool)

(assert (=> b!4622097 (= e!2883147 (isDefined!8815 (getValueByKey!1426 (toList!4946 lt!1778545) lt!1778548)))))

(assert (= (and d!1455691 c!791172) b!4622095))

(assert (= (and d!1455691 (not c!791172)) b!4622096))

(assert (= (and d!1455691 (not res!1937719)) b!4622097))

(declare-fun m!5459857 () Bool)

(assert (=> d!1455691 m!5459857))

(declare-fun m!5459859 () Bool)

(assert (=> b!4622095 m!5459859))

(declare-fun m!5459861 () Bool)

(assert (=> b!4622095 m!5459861))

(assert (=> b!4622095 m!5459861))

(declare-fun m!5459863 () Bool)

(assert (=> b!4622095 m!5459863))

(assert (=> b!4622097 m!5459861))

(assert (=> b!4622097 m!5459861))

(assert (=> b!4622097 m!5459863))

(assert (=> b!4622009 d!1455691))

(declare-fun d!1455693 () Bool)

(declare-fun res!1937724 () Bool)

(declare-fun e!2883152 () Bool)

(assert (=> d!1455693 (=> res!1937724 e!2883152)))

(assert (=> d!1455693 (= res!1937724 (and ((_ is Cons!51490) oldBucket!40) (= (_1!29497 (h!57528 oldBucket!40)) key!4968)))))

(assert (=> d!1455693 (= (containsKey!2406 oldBucket!40 key!4968) e!2883152)))

(declare-fun b!4622102 () Bool)

(declare-fun e!2883153 () Bool)

(assert (=> b!4622102 (= e!2883152 e!2883153)))

(declare-fun res!1937725 () Bool)

(assert (=> b!4622102 (=> (not res!1937725) (not e!2883153))))

(assert (=> b!4622102 (= res!1937725 ((_ is Cons!51490) oldBucket!40))))

(declare-fun b!4622103 () Bool)

(assert (=> b!4622103 (= e!2883153 (containsKey!2406 (t!358634 oldBucket!40) key!4968))))

(assert (= (and d!1455693 (not res!1937724)) b!4622102))

(assert (= (and b!4622102 res!1937725) b!4622103))

(assert (=> b!4622103 m!5459773))

(assert (=> b!4622009 d!1455693))

(declare-fun d!1455697 () Bool)

(assert (=> d!1455697 (containsKey!2406 oldBucket!40 key!4968)))

(declare-fun lt!1778677 () Unit!111269)

(declare-fun choose!31215 (List!51614 K!12875 Hashable!5887) Unit!111269)

(assert (=> d!1455697 (= lt!1778677 (choose!31215 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1455697 (noDuplicateKeys!1490 oldBucket!40)))

(assert (=> d!1455697 (= (lemmaGetPairDefinedThenContainsKey!36 oldBucket!40 key!4968 hashF!1389) lt!1778677)))

(declare-fun bs!1020779 () Bool)

(assert (= bs!1020779 d!1455697))

(assert (=> bs!1020779 m!5459775))

(declare-fun m!5459897 () Bool)

(assert (=> bs!1020779 m!5459897))

(assert (=> bs!1020779 m!5459787))

(assert (=> b!4622009 d!1455697))

(declare-fun d!1455699 () Bool)

(declare-fun get!17044 (Option!11550) List!51614)

(assert (=> d!1455699 (= (apply!12155 lt!1778545 lt!1778548) (get!17044 (getValueByKey!1426 (toList!4946 lt!1778545) lt!1778548)))))

(declare-fun bs!1020780 () Bool)

(assert (= bs!1020780 d!1455699))

(assert (=> bs!1020780 m!5459861))

(assert (=> bs!1020780 m!5459861))

(declare-fun m!5459899 () Bool)

(assert (=> bs!1020780 m!5459899))

(assert (=> b!4622009 d!1455699))

(declare-fun d!1455701 () Bool)

(declare-fun res!1937726 () Bool)

(declare-fun e!2883154 () Bool)

(assert (=> d!1455701 (=> res!1937726 e!2883154)))

(assert (=> d!1455701 (= res!1937726 (and ((_ is Cons!51490) (t!358634 oldBucket!40)) (= (_1!29497 (h!57528 (t!358634 oldBucket!40))) key!4968)))))

(assert (=> d!1455701 (= (containsKey!2406 (t!358634 oldBucket!40) key!4968) e!2883154)))

(declare-fun b!4622104 () Bool)

(declare-fun e!2883155 () Bool)

(assert (=> b!4622104 (= e!2883154 e!2883155)))

(declare-fun res!1937727 () Bool)

(assert (=> b!4622104 (=> (not res!1937727) (not e!2883155))))

(assert (=> b!4622104 (= res!1937727 ((_ is Cons!51490) (t!358634 oldBucket!40)))))

(declare-fun b!4622105 () Bool)

(assert (=> b!4622105 (= e!2883155 (containsKey!2406 (t!358634 (t!358634 oldBucket!40)) key!4968))))

(assert (= (and d!1455701 (not res!1937726)) b!4622104))

(assert (= (and b!4622104 res!1937727) b!4622105))

(declare-fun m!5459901 () Bool)

(assert (=> b!4622105 m!5459901))

(assert (=> b!4622009 d!1455701))

(declare-fun d!1455703 () Bool)

(assert (=> d!1455703 (= (isDefined!8813 (getPair!282 lt!1778556 key!4968)) (not (isEmpty!28917 (getPair!282 lt!1778556 key!4968))))))

(declare-fun bs!1020781 () Bool)

(assert (= bs!1020781 d!1455703))

(assert (=> bs!1020781 m!5459765))

(declare-fun m!5459903 () Bool)

(assert (=> bs!1020781 m!5459903))

(assert (=> b!4622009 d!1455703))

(declare-fun d!1455705 () Bool)

(assert (=> d!1455705 (contains!14506 (toList!4946 lt!1778545) (tuple2!52409 lt!1778548 lt!1778556))))

(declare-fun lt!1778680 () Unit!111269)

(declare-fun choose!31216 (ListLongMap!3535 (_ BitVec 64) List!51614) Unit!111269)

(assert (=> d!1455705 (= lt!1778680 (choose!31216 lt!1778545 lt!1778548 lt!1778556))))

(assert (=> d!1455705 (contains!14507 lt!1778545 lt!1778548)))

(assert (=> d!1455705 (= (lemmaGetValueImpliesTupleContained!87 lt!1778545 lt!1778548 lt!1778556) lt!1778680)))

(declare-fun bs!1020782 () Bool)

(assert (= bs!1020782 d!1455705))

(declare-fun m!5459905 () Bool)

(assert (=> bs!1020782 m!5459905))

(declare-fun m!5459907 () Bool)

(assert (=> bs!1020782 m!5459907))

(assert (=> bs!1020782 m!5459779))

(assert (=> b!4622009 d!1455705))

(declare-fun bs!1020784 () Bool)

(declare-fun d!1455707 () Bool)

(assert (= bs!1020784 (and d!1455707 b!4622009)))

(declare-fun lambda!191098 () Int)

(assert (=> bs!1020784 (= lambda!191098 lambda!191050)))

(declare-fun bs!1020785 () Bool)

(assert (= bs!1020785 (and d!1455707 d!1455687)))

(assert (=> bs!1020785 (= lambda!191098 lambda!191062)))

(assert (=> d!1455707 (contains!14507 lt!1778545 (hash!3467 hashF!1389 key!4968))))

(declare-fun lt!1778686 () Unit!111269)

(declare-fun choose!31217 (ListLongMap!3535 K!12875 Hashable!5887) Unit!111269)

(assert (=> d!1455707 (= lt!1778686 (choose!31217 lt!1778545 key!4968 hashF!1389))))

(assert (=> d!1455707 (forall!10799 (toList!4946 lt!1778545) lambda!191098)))

(assert (=> d!1455707 (= (lemmaInGenMapThenLongMapContainsHash!488 lt!1778545 key!4968 hashF!1389) lt!1778686)))

(declare-fun bs!1020786 () Bool)

(assert (= bs!1020786 d!1455707))

(assert (=> bs!1020786 m!5459789))

(assert (=> bs!1020786 m!5459789))

(assert (=> bs!1020786 m!5459833))

(declare-fun m!5459917 () Bool)

(assert (=> bs!1020786 m!5459917))

(declare-fun m!5459919 () Bool)

(assert (=> bs!1020786 m!5459919))

(assert (=> b!4622009 d!1455707))

(declare-fun d!1455711 () Bool)

(declare-fun hash!3469 (Hashable!5887 K!12875) (_ BitVec 64))

(assert (=> d!1455711 (= (hash!3467 hashF!1389 key!4968) (hash!3469 hashF!1389 key!4968))))

(declare-fun bs!1020787 () Bool)

(assert (= bs!1020787 d!1455711))

(declare-fun m!5459921 () Bool)

(assert (=> bs!1020787 m!5459921))

(assert (=> b!4621998 d!1455711))

(declare-fun b!4622121 () Bool)

(declare-fun e!2883163 () List!51614)

(assert (=> b!4622121 (= e!2883163 (t!358634 oldBucket!40))))

(declare-fun d!1455713 () Bool)

(declare-fun lt!1778689 () List!51614)

(assert (=> d!1455713 (not (containsKey!2406 lt!1778689 key!4968))))

(assert (=> d!1455713 (= lt!1778689 e!2883163)))

(declare-fun c!791181 () Bool)

(assert (=> d!1455713 (= c!791181 (and ((_ is Cons!51490) oldBucket!40) (= (_1!29497 (h!57528 oldBucket!40)) key!4968)))))

(assert (=> d!1455713 (noDuplicateKeys!1490 oldBucket!40)))

(assert (=> d!1455713 (= (removePairForKey!1113 oldBucket!40 key!4968) lt!1778689)))

(declare-fun b!4622122 () Bool)

(declare-fun e!2883164 () List!51614)

(assert (=> b!4622122 (= e!2883163 e!2883164)))

(declare-fun c!791180 () Bool)

(assert (=> b!4622122 (= c!791180 ((_ is Cons!51490) oldBucket!40))))

(declare-fun b!4622124 () Bool)

(assert (=> b!4622124 (= e!2883164 Nil!51490)))

(declare-fun b!4622123 () Bool)

(assert (=> b!4622123 (= e!2883164 (Cons!51490 (h!57528 oldBucket!40) (removePairForKey!1113 (t!358634 oldBucket!40) key!4968)))))

(assert (= (and d!1455713 c!791181) b!4622121))

(assert (= (and d!1455713 (not c!791181)) b!4622122))

(assert (= (and b!4622122 c!791180) b!4622123))

(assert (= (and b!4622122 (not c!791180)) b!4622124))

(declare-fun m!5459923 () Bool)

(assert (=> d!1455713 m!5459923))

(assert (=> d!1455713 m!5459787))

(assert (=> b!4622123 m!5459757))

(assert (=> b!4622000 d!1455713))

(declare-fun d!1455715 () Bool)

(declare-fun res!1937732 () Bool)

(declare-fun e!2883169 () Bool)

(assert (=> d!1455715 (=> res!1937732 e!2883169)))

(assert (=> d!1455715 (= res!1937732 (not ((_ is Cons!51490) oldBucket!40)))))

(assert (=> d!1455715 (= (noDuplicateKeys!1490 oldBucket!40) e!2883169)))

(declare-fun b!4622129 () Bool)

(declare-fun e!2883170 () Bool)

(assert (=> b!4622129 (= e!2883169 e!2883170)))

(declare-fun res!1937733 () Bool)

(assert (=> b!4622129 (=> (not res!1937733) (not e!2883170))))

(assert (=> b!4622129 (= res!1937733 (not (containsKey!2406 (t!358634 oldBucket!40) (_1!29497 (h!57528 oldBucket!40)))))))

(declare-fun b!4622130 () Bool)

(assert (=> b!4622130 (= e!2883170 (noDuplicateKeys!1490 (t!358634 oldBucket!40)))))

(assert (= (and d!1455715 (not res!1937732)) b!4622129))

(assert (= (and b!4622129 res!1937733) b!4622130))

(declare-fun m!5459925 () Bool)

(assert (=> b!4622129 m!5459925))

(declare-fun m!5459927 () Bool)

(assert (=> b!4622130 m!5459927))

(assert (=> start!462900 d!1455715))

(declare-fun b!4622192 () Bool)

(declare-fun e!2883212 () Unit!111269)

(declare-fun lt!1778738 () Unit!111269)

(assert (=> b!4622192 (= e!2883212 lt!1778738)))

(declare-fun lt!1778737 () Unit!111269)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1329 (List!51614 K!12875) Unit!111269)

(assert (=> b!4622192 (= lt!1778737 (lemmaContainsKeyImpliesGetValueByKeyDefined!1329 (toList!4945 lt!1778563) key!4968))))

(declare-datatypes ((Option!11551 0))(
  ( (None!11550) (Some!11550 (v!45656 V!13121)) )
))
(declare-fun isDefined!8816 (Option!11551) Bool)

(declare-fun getValueByKey!1427 (List!51614 K!12875) Option!11551)

(assert (=> b!4622192 (isDefined!8816 (getValueByKey!1427 (toList!4945 lt!1778563) key!4968))))

(declare-fun lt!1778736 () Unit!111269)

(assert (=> b!4622192 (= lt!1778736 lt!1778737)))

(declare-fun lemmaInListThenGetKeysListContains!638 (List!51614 K!12875) Unit!111269)

(assert (=> b!4622192 (= lt!1778738 (lemmaInListThenGetKeysListContains!638 (toList!4945 lt!1778563) key!4968))))

(declare-fun call!322316 () Bool)

(assert (=> b!4622192 call!322316))

(declare-fun b!4622193 () Bool)

(declare-fun e!2883214 () Unit!111269)

(declare-fun Unit!111296 () Unit!111269)

(assert (=> b!4622193 (= e!2883214 Unit!111296)))

(declare-fun bm!322311 () Bool)

(declare-datatypes ((List!51617 0))(
  ( (Nil!51493) (Cons!51493 (h!57533 K!12875) (t!358639 List!51617)) )
))
(declare-fun e!2883213 () List!51617)

(declare-fun contains!14511 (List!51617 K!12875) Bool)

(assert (=> bm!322311 (= call!322316 (contains!14511 e!2883213 key!4968))))

(declare-fun c!791204 () Bool)

(declare-fun c!791203 () Bool)

(assert (=> bm!322311 (= c!791204 c!791203)))

(declare-fun b!4622194 () Bool)

(declare-fun e!2883215 () Bool)

(declare-fun keys!18126 (ListMap!4249) List!51617)

(assert (=> b!4622194 (= e!2883215 (contains!14511 (keys!18126 lt!1778563) key!4968))))

(declare-fun b!4622195 () Bool)

(declare-fun e!2883217 () Bool)

(assert (=> b!4622195 (= e!2883217 (not (contains!14511 (keys!18126 lt!1778563) key!4968)))))

(declare-fun b!4622196 () Bool)

(assert (=> b!4622196 (= e!2883212 e!2883214)))

(declare-fun c!791202 () Bool)

(assert (=> b!4622196 (= c!791202 call!322316)))

(declare-fun b!4622197 () Bool)

(declare-fun getKeysList!643 (List!51614) List!51617)

(assert (=> b!4622197 (= e!2883213 (getKeysList!643 (toList!4945 lt!1778563)))))

(declare-fun b!4622198 () Bool)

(assert (=> b!4622198 (= e!2883213 (keys!18126 lt!1778563))))

(declare-fun d!1455717 () Bool)

(declare-fun e!2883216 () Bool)

(assert (=> d!1455717 e!2883216))

(declare-fun res!1937757 () Bool)

(assert (=> d!1455717 (=> res!1937757 e!2883216)))

(assert (=> d!1455717 (= res!1937757 e!2883217)))

(declare-fun res!1937756 () Bool)

(assert (=> d!1455717 (=> (not res!1937756) (not e!2883217))))

(declare-fun lt!1778734 () Bool)

(assert (=> d!1455717 (= res!1937756 (not lt!1778734))))

(declare-fun lt!1778739 () Bool)

(assert (=> d!1455717 (= lt!1778734 lt!1778739)))

(declare-fun lt!1778740 () Unit!111269)

(assert (=> d!1455717 (= lt!1778740 e!2883212)))

(assert (=> d!1455717 (= c!791203 lt!1778739)))

(declare-fun containsKey!2409 (List!51614 K!12875) Bool)

(assert (=> d!1455717 (= lt!1778739 (containsKey!2409 (toList!4945 lt!1778563) key!4968))))

(assert (=> d!1455717 (= (contains!14505 lt!1778563 key!4968) lt!1778734)))

(declare-fun b!4622199 () Bool)

(assert (=> b!4622199 (= e!2883216 e!2883215)))

(declare-fun res!1937755 () Bool)

(assert (=> b!4622199 (=> (not res!1937755) (not e!2883215))))

(assert (=> b!4622199 (= res!1937755 (isDefined!8816 (getValueByKey!1427 (toList!4945 lt!1778563) key!4968)))))

(declare-fun b!4622200 () Bool)

(assert (=> b!4622200 false))

(declare-fun lt!1778733 () Unit!111269)

(declare-fun lt!1778735 () Unit!111269)

(assert (=> b!4622200 (= lt!1778733 lt!1778735)))

(assert (=> b!4622200 (containsKey!2409 (toList!4945 lt!1778563) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!642 (List!51614 K!12875) Unit!111269)

(assert (=> b!4622200 (= lt!1778735 (lemmaInGetKeysListThenContainsKey!642 (toList!4945 lt!1778563) key!4968))))

(declare-fun Unit!111297 () Unit!111269)

(assert (=> b!4622200 (= e!2883214 Unit!111297)))

(assert (= (and d!1455717 c!791203) b!4622192))

(assert (= (and d!1455717 (not c!791203)) b!4622196))

(assert (= (and b!4622196 c!791202) b!4622200))

(assert (= (and b!4622196 (not c!791202)) b!4622193))

(assert (= (or b!4622192 b!4622196) bm!322311))

(assert (= (and bm!322311 c!791204) b!4622197))

(assert (= (and bm!322311 (not c!791204)) b!4622198))

(assert (= (and d!1455717 res!1937756) b!4622195))

(assert (= (and d!1455717 (not res!1937757)) b!4622199))

(assert (= (and b!4622199 res!1937755) b!4622194))

(declare-fun m!5459971 () Bool)

(assert (=> b!4622194 m!5459971))

(assert (=> b!4622194 m!5459971))

(declare-fun m!5459973 () Bool)

(assert (=> b!4622194 m!5459973))

(declare-fun m!5459975 () Bool)

(assert (=> d!1455717 m!5459975))

(declare-fun m!5459977 () Bool)

(assert (=> bm!322311 m!5459977))

(declare-fun m!5459979 () Bool)

(assert (=> b!4622199 m!5459979))

(assert (=> b!4622199 m!5459979))

(declare-fun m!5459981 () Bool)

(assert (=> b!4622199 m!5459981))

(declare-fun m!5459983 () Bool)

(assert (=> b!4622197 m!5459983))

(assert (=> b!4622195 m!5459971))

(assert (=> b!4622195 m!5459971))

(assert (=> b!4622195 m!5459973))

(assert (=> b!4622198 m!5459971))

(declare-fun m!5459985 () Bool)

(assert (=> b!4622192 m!5459985))

(assert (=> b!4622192 m!5459979))

(assert (=> b!4622192 m!5459979))

(assert (=> b!4622192 m!5459981))

(declare-fun m!5459987 () Bool)

(assert (=> b!4622192 m!5459987))

(assert (=> b!4622200 m!5459975))

(declare-fun m!5459989 () Bool)

(assert (=> b!4622200 m!5459989))

(assert (=> b!4621996 d!1455717))

(declare-fun bs!1020791 () Bool)

(declare-fun d!1455733 () Bool)

(assert (= bs!1020791 (and d!1455733 b!4622009)))

(declare-fun lambda!191102 () Int)

(assert (=> bs!1020791 (= lambda!191102 lambda!191050)))

(declare-fun bs!1020792 () Bool)

(assert (= bs!1020792 (and d!1455733 d!1455687)))

(assert (=> bs!1020792 (= lambda!191102 lambda!191062)))

(declare-fun bs!1020793 () Bool)

(assert (= bs!1020793 (and d!1455733 d!1455707)))

(assert (=> bs!1020793 (= lambda!191102 lambda!191098)))

(declare-fun lt!1778746 () ListMap!4249)

(declare-fun invariantList!1192 (List!51614) Bool)

(assert (=> d!1455733 (invariantList!1192 (toList!4945 lt!1778746))))

(declare-fun e!2883220 () ListMap!4249)

(assert (=> d!1455733 (= lt!1778746 e!2883220)))

(declare-fun c!791207 () Bool)

(assert (=> d!1455733 (= c!791207 ((_ is Cons!51491) lt!1778562))))

(assert (=> d!1455733 (forall!10799 lt!1778562 lambda!191102)))

(assert (=> d!1455733 (= (extractMap!1546 lt!1778562) lt!1778746)))

(declare-fun b!4622205 () Bool)

(assert (=> b!4622205 (= e!2883220 (addToMapMapFromBucket!951 (_2!29498 (h!57529 lt!1778562)) (extractMap!1546 (t!358635 lt!1778562))))))

(declare-fun b!4622206 () Bool)

(assert (=> b!4622206 (= e!2883220 (ListMap!4250 Nil!51490))))

(assert (= (and d!1455733 c!791207) b!4622205))

(assert (= (and d!1455733 (not c!791207)) b!4622206))

(declare-fun m!5459995 () Bool)

(assert (=> d!1455733 m!5459995))

(declare-fun m!5459997 () Bool)

(assert (=> d!1455733 m!5459997))

(declare-fun m!5459999 () Bool)

(assert (=> b!4622205 m!5459999))

(assert (=> b!4622205 m!5459999))

(declare-fun m!5460001 () Bool)

(assert (=> b!4622205 m!5460001))

(assert (=> b!4621996 d!1455733))

(declare-fun d!1455739 () Bool)

(assert (=> d!1455739 true))

(assert (=> d!1455739 true))

(declare-fun lambda!191105 () Int)

(declare-fun forall!10800 (List!51614 Int) Bool)

(assert (=> d!1455739 (= (allKeysSameHash!1344 oldBucket!40 hash!414 hashF!1389) (forall!10800 oldBucket!40 lambda!191105))))

(declare-fun bs!1020794 () Bool)

(assert (= bs!1020794 d!1455739))

(declare-fun m!5460003 () Bool)

(assert (=> bs!1020794 m!5460003))

(assert (=> b!4622006 d!1455739))

(declare-fun d!1455741 () Bool)

(declare-fun res!1937762 () Bool)

(declare-fun e!2883223 () Bool)

(assert (=> d!1455741 (=> res!1937762 e!2883223)))

(assert (=> d!1455741 (= res!1937762 (not ((_ is Cons!51490) newBucket!224)))))

(assert (=> d!1455741 (= (noDuplicateKeys!1490 newBucket!224) e!2883223)))

(declare-fun b!4622215 () Bool)

(declare-fun e!2883224 () Bool)

(assert (=> b!4622215 (= e!2883223 e!2883224)))

(declare-fun res!1937763 () Bool)

(assert (=> b!4622215 (=> (not res!1937763) (not e!2883224))))

(assert (=> b!4622215 (= res!1937763 (not (containsKey!2406 (t!358634 newBucket!224) (_1!29497 (h!57528 newBucket!224)))))))

(declare-fun b!4622216 () Bool)

(assert (=> b!4622216 (= e!2883224 (noDuplicateKeys!1490 (t!358634 newBucket!224)))))

(assert (= (and d!1455741 (not res!1937762)) b!4622215))

(assert (= (and b!4622215 res!1937763) b!4622216))

(declare-fun m!5460005 () Bool)

(assert (=> b!4622215 m!5460005))

(declare-fun m!5460007 () Bool)

(assert (=> b!4622216 m!5460007))

(assert (=> b!4621997 d!1455741))

(declare-fun bs!1020960 () Bool)

(declare-fun b!4622313 () Bool)

(assert (= bs!1020960 (and b!4622313 d!1455739)))

(declare-fun lambda!191160 () Int)

(assert (=> bs!1020960 (not (= lambda!191160 lambda!191105))))

(assert (=> b!4622313 true))

(declare-fun bs!1020961 () Bool)

(declare-fun b!4622312 () Bool)

(assert (= bs!1020961 (and b!4622312 d!1455739)))

(declare-fun lambda!191161 () Int)

(assert (=> bs!1020961 (not (= lambda!191161 lambda!191105))))

(declare-fun bs!1020962 () Bool)

(assert (= bs!1020962 (and b!4622312 b!4622313)))

(assert (=> bs!1020962 (= lambda!191161 lambda!191160)))

(assert (=> b!4622312 true))

(declare-fun lambda!191162 () Int)

(assert (=> bs!1020961 (not (= lambda!191162 lambda!191105))))

(declare-fun lt!1778927 () ListMap!4249)

(assert (=> bs!1020962 (= (= lt!1778927 lt!1778547) (= lambda!191162 lambda!191160))))

(assert (=> b!4622312 (= (= lt!1778927 lt!1778547) (= lambda!191162 lambda!191161))))

(assert (=> b!4622312 true))

(declare-fun bs!1020963 () Bool)

(declare-fun d!1455743 () Bool)

(assert (= bs!1020963 (and d!1455743 d!1455739)))

(declare-fun lambda!191163 () Int)

(assert (=> bs!1020963 (not (= lambda!191163 lambda!191105))))

(declare-fun bs!1020964 () Bool)

(assert (= bs!1020964 (and d!1455743 b!4622313)))

(declare-fun lt!1778929 () ListMap!4249)

(assert (=> bs!1020964 (= (= lt!1778929 lt!1778547) (= lambda!191163 lambda!191160))))

(declare-fun bs!1020965 () Bool)

(assert (= bs!1020965 (and d!1455743 b!4622312)))

(assert (=> bs!1020965 (= (= lt!1778929 lt!1778547) (= lambda!191163 lambda!191161))))

(assert (=> bs!1020965 (= (= lt!1778929 lt!1778927) (= lambda!191163 lambda!191162))))

(assert (=> d!1455743 true))

(declare-fun bm!322331 () Bool)

(declare-fun call!322336 () Unit!111269)

(declare-fun lemmaContainsAllItsOwnKeys!494 (ListMap!4249) Unit!111269)

(assert (=> bm!322331 (= call!322336 (lemmaContainsAllItsOwnKeys!494 lt!1778547))))

(declare-fun bm!322332 () Bool)

(declare-fun lt!1778942 () ListMap!4249)

(declare-fun c!791226 () Bool)

(declare-fun call!322338 () Bool)

(assert (=> bm!322332 (= call!322338 (forall!10800 (ite c!791226 (toList!4945 lt!1778547) (toList!4945 lt!1778942)) (ite c!791226 lambda!191160 lambda!191162)))))

(declare-fun b!4622311 () Bool)

(declare-fun e!2883291 () Bool)

(declare-fun call!322337 () Bool)

(assert (=> b!4622311 (= e!2883291 call!322337)))

(declare-fun e!2883289 () ListMap!4249)

(assert (=> b!4622313 (= e!2883289 lt!1778547)))

(declare-fun lt!1778937 () Unit!111269)

(assert (=> b!4622313 (= lt!1778937 call!322336)))

(assert (=> b!4622313 call!322337))

(declare-fun lt!1778934 () Unit!111269)

(assert (=> b!4622313 (= lt!1778934 lt!1778937)))

(assert (=> b!4622313 call!322338))

(declare-fun lt!1778925 () Unit!111269)

(declare-fun Unit!111309 () Unit!111269)

(assert (=> b!4622313 (= lt!1778925 Unit!111309)))

(declare-fun bm!322333 () Bool)

(assert (=> bm!322333 (= call!322337 (forall!10800 (toList!4945 lt!1778547) (ite c!791226 lambda!191160 lambda!191162)))))

(assert (=> b!4622312 (= e!2883289 lt!1778927)))

(assert (=> b!4622312 (= lt!1778942 (+!1856 lt!1778547 (h!57528 oldBucket!40)))))

(assert (=> b!4622312 (= lt!1778927 (addToMapMapFromBucket!951 (t!358634 oldBucket!40) (+!1856 lt!1778547 (h!57528 oldBucket!40))))))

(declare-fun lt!1778936 () Unit!111269)

(assert (=> b!4622312 (= lt!1778936 call!322336)))

(assert (=> b!4622312 (forall!10800 (toList!4945 lt!1778547) lambda!191161)))

(declare-fun lt!1778928 () Unit!111269)

(assert (=> b!4622312 (= lt!1778928 lt!1778936)))

(assert (=> b!4622312 call!322338))

(declare-fun lt!1778935 () Unit!111269)

(declare-fun Unit!111310 () Unit!111269)

(assert (=> b!4622312 (= lt!1778935 Unit!111310)))

(assert (=> b!4622312 (forall!10800 (t!358634 oldBucket!40) lambda!191162)))

(declare-fun lt!1778930 () Unit!111269)

(declare-fun Unit!111311 () Unit!111269)

(assert (=> b!4622312 (= lt!1778930 Unit!111311)))

(declare-fun lt!1778938 () Unit!111269)

(declare-fun Unit!111312 () Unit!111269)

(assert (=> b!4622312 (= lt!1778938 Unit!111312)))

(declare-fun lt!1778933 () Unit!111269)

(declare-fun forallContained!3024 (List!51614 Int tuple2!52406) Unit!111269)

(assert (=> b!4622312 (= lt!1778933 (forallContained!3024 (toList!4945 lt!1778942) lambda!191162 (h!57528 oldBucket!40)))))

(assert (=> b!4622312 (contains!14505 lt!1778942 (_1!29497 (h!57528 oldBucket!40)))))

(declare-fun lt!1778923 () Unit!111269)

(declare-fun Unit!111313 () Unit!111269)

(assert (=> b!4622312 (= lt!1778923 Unit!111313)))

(assert (=> b!4622312 (contains!14505 lt!1778927 (_1!29497 (h!57528 oldBucket!40)))))

(declare-fun lt!1778932 () Unit!111269)

(declare-fun Unit!111314 () Unit!111269)

(assert (=> b!4622312 (= lt!1778932 Unit!111314)))

(assert (=> b!4622312 (forall!10800 oldBucket!40 lambda!191162)))

(declare-fun lt!1778924 () Unit!111269)

(declare-fun Unit!111315 () Unit!111269)

(assert (=> b!4622312 (= lt!1778924 Unit!111315)))

(assert (=> b!4622312 (forall!10800 (toList!4945 lt!1778942) lambda!191162)))

(declare-fun lt!1778939 () Unit!111269)

(declare-fun Unit!111316 () Unit!111269)

(assert (=> b!4622312 (= lt!1778939 Unit!111316)))

(declare-fun lt!1778941 () Unit!111269)

(declare-fun Unit!111317 () Unit!111269)

(assert (=> b!4622312 (= lt!1778941 Unit!111317)))

(declare-fun lt!1778926 () Unit!111269)

(declare-fun addForallContainsKeyThenBeforeAdding!493 (ListMap!4249 ListMap!4249 K!12875 V!13121) Unit!111269)

(assert (=> b!4622312 (= lt!1778926 (addForallContainsKeyThenBeforeAdding!493 lt!1778547 lt!1778927 (_1!29497 (h!57528 oldBucket!40)) (_2!29497 (h!57528 oldBucket!40))))))

(assert (=> b!4622312 (forall!10800 (toList!4945 lt!1778547) lambda!191162)))

(declare-fun lt!1778943 () Unit!111269)

(assert (=> b!4622312 (= lt!1778943 lt!1778926)))

(assert (=> b!4622312 (forall!10800 (toList!4945 lt!1778547) lambda!191162)))

(declare-fun lt!1778931 () Unit!111269)

(declare-fun Unit!111318 () Unit!111269)

(assert (=> b!4622312 (= lt!1778931 Unit!111318)))

(declare-fun res!1937822 () Bool)

(assert (=> b!4622312 (= res!1937822 (forall!10800 oldBucket!40 lambda!191162))))

(assert (=> b!4622312 (=> (not res!1937822) (not e!2883291))))

(assert (=> b!4622312 e!2883291))

(declare-fun lt!1778940 () Unit!111269)

(declare-fun Unit!111319 () Unit!111269)

(assert (=> b!4622312 (= lt!1778940 Unit!111319)))

(declare-fun e!2883290 () Bool)

(assert (=> d!1455743 e!2883290))

(declare-fun res!1937824 () Bool)

(assert (=> d!1455743 (=> (not res!1937824) (not e!2883290))))

(assert (=> d!1455743 (= res!1937824 (forall!10800 oldBucket!40 lambda!191163))))

(assert (=> d!1455743 (= lt!1778929 e!2883289)))

(assert (=> d!1455743 (= c!791226 ((_ is Nil!51490) oldBucket!40))))

(assert (=> d!1455743 (noDuplicateKeys!1490 oldBucket!40)))

(assert (=> d!1455743 (= (addToMapMapFromBucket!951 oldBucket!40 lt!1778547) lt!1778929)))

(declare-fun b!4622314 () Bool)

(declare-fun res!1937823 () Bool)

(assert (=> b!4622314 (=> (not res!1937823) (not e!2883290))))

(assert (=> b!4622314 (= res!1937823 (forall!10800 (toList!4945 lt!1778547) lambda!191163))))

(declare-fun b!4622315 () Bool)

(assert (=> b!4622315 (= e!2883290 (invariantList!1192 (toList!4945 lt!1778929)))))

(assert (= (and d!1455743 c!791226) b!4622313))

(assert (= (and d!1455743 (not c!791226)) b!4622312))

(assert (= (and b!4622312 res!1937822) b!4622311))

(assert (= (or b!4622313 b!4622312) bm!322331))

(assert (= (or b!4622313 b!4622311) bm!322333))

(assert (= (or b!4622313 b!4622312) bm!322332))

(assert (= (and d!1455743 res!1937824) b!4622314))

(assert (= (and b!4622314 res!1937823) b!4622315))

(declare-fun m!5460285 () Bool)

(assert (=> bm!322332 m!5460285))

(declare-fun m!5460287 () Bool)

(assert (=> b!4622312 m!5460287))

(declare-fun m!5460289 () Bool)

(assert (=> b!4622312 m!5460289))

(declare-fun m!5460291 () Bool)

(assert (=> b!4622312 m!5460291))

(declare-fun m!5460293 () Bool)

(assert (=> b!4622312 m!5460293))

(declare-fun m!5460295 () Bool)

(assert (=> b!4622312 m!5460295))

(declare-fun m!5460297 () Bool)

(assert (=> b!4622312 m!5460297))

(declare-fun m!5460299 () Bool)

(assert (=> b!4622312 m!5460299))

(declare-fun m!5460301 () Bool)

(assert (=> b!4622312 m!5460301))

(assert (=> b!4622312 m!5460291))

(declare-fun m!5460303 () Bool)

(assert (=> b!4622312 m!5460303))

(declare-fun m!5460305 () Bool)

(assert (=> b!4622312 m!5460305))

(assert (=> b!4622312 m!5460293))

(declare-fun m!5460307 () Bool)

(assert (=> b!4622312 m!5460307))

(assert (=> b!4622312 m!5460305))

(declare-fun m!5460309 () Bool)

(assert (=> b!4622315 m!5460309))

(declare-fun m!5460311 () Bool)

(assert (=> d!1455743 m!5460311))

(assert (=> d!1455743 m!5459787))

(declare-fun m!5460313 () Bool)

(assert (=> b!4622314 m!5460313))

(declare-fun m!5460315 () Bool)

(assert (=> bm!322333 m!5460315))

(declare-fun m!5460317 () Bool)

(assert (=> bm!322331 m!5460317))

(assert (=> b!4622008 d!1455743))

(declare-fun bs!1020966 () Bool)

(declare-fun d!1455801 () Bool)

(assert (= bs!1020966 (and d!1455801 b!4622009)))

(declare-fun lambda!191164 () Int)

(assert (=> bs!1020966 (= lambda!191164 lambda!191050)))

(declare-fun bs!1020967 () Bool)

(assert (= bs!1020967 (and d!1455801 d!1455687)))

(assert (=> bs!1020967 (= lambda!191164 lambda!191062)))

(declare-fun bs!1020968 () Bool)

(assert (= bs!1020968 (and d!1455801 d!1455707)))

(assert (=> bs!1020968 (= lambda!191164 lambda!191098)))

(declare-fun bs!1020969 () Bool)

(assert (= bs!1020969 (and d!1455801 d!1455733)))

(assert (=> bs!1020969 (= lambda!191164 lambda!191102)))

(declare-fun lt!1778944 () ListMap!4249)

(assert (=> d!1455801 (invariantList!1192 (toList!4945 lt!1778944))))

(declare-fun e!2883292 () ListMap!4249)

(assert (=> d!1455801 (= lt!1778944 e!2883292)))

(declare-fun c!791227 () Bool)

(assert (=> d!1455801 (= c!791227 ((_ is Cons!51491) Nil!51491))))

(assert (=> d!1455801 (forall!10799 Nil!51491 lambda!191164)))

(assert (=> d!1455801 (= (extractMap!1546 Nil!51491) lt!1778944)))

(declare-fun b!4622318 () Bool)

(assert (=> b!4622318 (= e!2883292 (addToMapMapFromBucket!951 (_2!29498 (h!57529 Nil!51491)) (extractMap!1546 (t!358635 Nil!51491))))))

(declare-fun b!4622319 () Bool)

(assert (=> b!4622319 (= e!2883292 (ListMap!4250 Nil!51490))))

(assert (= (and d!1455801 c!791227) b!4622318))

(assert (= (and d!1455801 (not c!791227)) b!4622319))

(declare-fun m!5460319 () Bool)

(assert (=> d!1455801 m!5460319))

(declare-fun m!5460321 () Bool)

(assert (=> d!1455801 m!5460321))

(declare-fun m!5460323 () Bool)

(assert (=> b!4622318 m!5460323))

(assert (=> b!4622318 m!5460323))

(declare-fun m!5460325 () Bool)

(assert (=> b!4622318 m!5460325))

(assert (=> b!4622008 d!1455801))

(declare-fun b!4622320 () Bool)

(declare-fun e!2883293 () List!51614)

(assert (=> b!4622320 (= e!2883293 (t!358634 (t!358634 oldBucket!40)))))

(declare-fun d!1455803 () Bool)

(declare-fun lt!1778945 () List!51614)

(assert (=> d!1455803 (not (containsKey!2406 lt!1778945 key!4968))))

(assert (=> d!1455803 (= lt!1778945 e!2883293)))

(declare-fun c!791229 () Bool)

(assert (=> d!1455803 (= c!791229 (and ((_ is Cons!51490) (t!358634 oldBucket!40)) (= (_1!29497 (h!57528 (t!358634 oldBucket!40))) key!4968)))))

(assert (=> d!1455803 (noDuplicateKeys!1490 (t!358634 oldBucket!40))))

(assert (=> d!1455803 (= (removePairForKey!1113 (t!358634 oldBucket!40) key!4968) lt!1778945)))

(declare-fun b!4622321 () Bool)

(declare-fun e!2883294 () List!51614)

(assert (=> b!4622321 (= e!2883293 e!2883294)))

(declare-fun c!791228 () Bool)

(assert (=> b!4622321 (= c!791228 ((_ is Cons!51490) (t!358634 oldBucket!40)))))

(declare-fun b!4622323 () Bool)

(assert (=> b!4622323 (= e!2883294 Nil!51490)))

(declare-fun b!4622322 () Bool)

(assert (=> b!4622322 (= e!2883294 (Cons!51490 (h!57528 (t!358634 oldBucket!40)) (removePairForKey!1113 (t!358634 (t!358634 oldBucket!40)) key!4968)))))

(assert (= (and d!1455803 c!791229) b!4622320))

(assert (= (and d!1455803 (not c!791229)) b!4622321))

(assert (= (and b!4622321 c!791228) b!4622322))

(assert (= (and b!4622321 (not c!791228)) b!4622323))

(declare-fun m!5460327 () Bool)

(assert (=> d!1455803 m!5460327))

(assert (=> d!1455803 m!5459927))

(declare-fun m!5460329 () Bool)

(assert (=> b!4622322 m!5460329))

(assert (=> b!4622007 d!1455803))

(declare-fun bs!1020970 () Bool)

(declare-fun d!1455805 () Bool)

(assert (= bs!1020970 (and d!1455805 b!4622312)))

(declare-fun lambda!191165 () Int)

(assert (=> bs!1020970 (not (= lambda!191165 lambda!191161))))

(assert (=> bs!1020970 (not (= lambda!191165 lambda!191162))))

(declare-fun bs!1020971 () Bool)

(assert (= bs!1020971 (and d!1455805 b!4622313)))

(assert (=> bs!1020971 (not (= lambda!191165 lambda!191160))))

(declare-fun bs!1020972 () Bool)

(assert (= bs!1020972 (and d!1455805 d!1455739)))

(assert (=> bs!1020972 (= lambda!191165 lambda!191105)))

(declare-fun bs!1020973 () Bool)

(assert (= bs!1020973 (and d!1455805 d!1455743)))

(assert (=> bs!1020973 (not (= lambda!191165 lambda!191163))))

(assert (=> d!1455805 true))

(assert (=> d!1455805 true))

(assert (=> d!1455805 (= (allKeysSameHash!1344 newBucket!224 hash!414 hashF!1389) (forall!10800 newBucket!224 lambda!191165))))

(declare-fun bs!1020974 () Bool)

(assert (= bs!1020974 d!1455805))

(declare-fun m!5460331 () Bool)

(assert (=> bs!1020974 m!5460331))

(assert (=> b!4622004 d!1455805))

(declare-fun bs!1020975 () Bool)

(declare-fun d!1455807 () Bool)

(assert (= bs!1020975 (and d!1455807 d!1455707)))

(declare-fun lambda!191166 () Int)

(assert (=> bs!1020975 (= lambda!191166 lambda!191098)))

(declare-fun bs!1020976 () Bool)

(assert (= bs!1020976 (and d!1455807 d!1455801)))

(assert (=> bs!1020976 (= lambda!191166 lambda!191164)))

(declare-fun bs!1020977 () Bool)

(assert (= bs!1020977 (and d!1455807 d!1455733)))

(assert (=> bs!1020977 (= lambda!191166 lambda!191102)))

(declare-fun bs!1020978 () Bool)

(assert (= bs!1020978 (and d!1455807 b!4622009)))

(assert (=> bs!1020978 (= lambda!191166 lambda!191050)))

(declare-fun bs!1020979 () Bool)

(assert (= bs!1020979 (and d!1455807 d!1455687)))

(assert (=> bs!1020979 (= lambda!191166 lambda!191062)))

(declare-fun lt!1778946 () ListMap!4249)

(assert (=> d!1455807 (invariantList!1192 (toList!4945 lt!1778946))))

(declare-fun e!2883295 () ListMap!4249)

(assert (=> d!1455807 (= lt!1778946 e!2883295)))

(declare-fun c!791230 () Bool)

(assert (=> d!1455807 (= c!791230 ((_ is Cons!51491) (Cons!51491 (tuple2!52409 hash!414 newBucket!224) Nil!51491)))))

(assert (=> d!1455807 (forall!10799 (Cons!51491 (tuple2!52409 hash!414 newBucket!224) Nil!51491) lambda!191166)))

(assert (=> d!1455807 (= (extractMap!1546 (Cons!51491 (tuple2!52409 hash!414 newBucket!224) Nil!51491)) lt!1778946)))

(declare-fun b!4622324 () Bool)

(assert (=> b!4622324 (= e!2883295 (addToMapMapFromBucket!951 (_2!29498 (h!57529 (Cons!51491 (tuple2!52409 hash!414 newBucket!224) Nil!51491))) (extractMap!1546 (t!358635 (Cons!51491 (tuple2!52409 hash!414 newBucket!224) Nil!51491)))))))

(declare-fun b!4622325 () Bool)

(assert (=> b!4622325 (= e!2883295 (ListMap!4250 Nil!51490))))

(assert (= (and d!1455807 c!791230) b!4622324))

(assert (= (and d!1455807 (not c!791230)) b!4622325))

(declare-fun m!5460333 () Bool)

(assert (=> d!1455807 m!5460333))

(declare-fun m!5460335 () Bool)

(assert (=> d!1455807 m!5460335))

(declare-fun m!5460337 () Bool)

(assert (=> b!4622324 m!5460337))

(assert (=> b!4622324 m!5460337))

(declare-fun m!5460339 () Bool)

(assert (=> b!4622324 m!5460339))

(assert (=> b!4622003 d!1455807))

(declare-fun b!4622326 () Bool)

(declare-fun e!2883298 () List!51614)

(assert (=> b!4622326 (= e!2883298 (t!358634 lt!1778558))))

(declare-fun d!1455809 () Bool)

(declare-fun lt!1778949 () List!51614)

(assert (=> d!1455809 (not (containsKey!2406 lt!1778949 key!4968))))

(assert (=> d!1455809 (= lt!1778949 e!2883298)))

(declare-fun c!791232 () Bool)

(assert (=> d!1455809 (= c!791232 (and ((_ is Cons!51490) lt!1778558) (= (_1!29497 (h!57528 lt!1778558)) key!4968)))))

(assert (=> d!1455809 (noDuplicateKeys!1490 lt!1778558)))

(assert (=> d!1455809 (= (removePairForKey!1113 lt!1778558 key!4968) lt!1778949)))

(declare-fun b!4622327 () Bool)

(declare-fun e!2883299 () List!51614)

(assert (=> b!4622327 (= e!2883298 e!2883299)))

(declare-fun c!791231 () Bool)

(assert (=> b!4622327 (= c!791231 ((_ is Cons!51490) lt!1778558))))

(declare-fun b!4622329 () Bool)

(assert (=> b!4622329 (= e!2883299 Nil!51490)))

(declare-fun b!4622328 () Bool)

(assert (=> b!4622328 (= e!2883299 (Cons!51490 (h!57528 lt!1778558) (removePairForKey!1113 (t!358634 lt!1778558) key!4968)))))

(assert (= (and d!1455809 c!791232) b!4622326))

(assert (= (and d!1455809 (not c!791232)) b!4622327))

(assert (= (and b!4622327 c!791231) b!4622328))

(assert (= (and b!4622327 (not c!791231)) b!4622329))

(declare-fun m!5460341 () Bool)

(assert (=> d!1455809 m!5460341))

(declare-fun m!5460343 () Bool)

(assert (=> d!1455809 m!5460343))

(declare-fun m!5460345 () Bool)

(assert (=> b!4622328 m!5460345))

(assert (=> b!4622005 d!1455809))

(declare-fun d!1455811 () Bool)

(assert (=> d!1455811 (= (tail!8125 newBucket!224) (t!358634 newBucket!224))))

(assert (=> b!4622005 d!1455811))

(declare-fun d!1455813 () Bool)

(assert (=> d!1455813 (= (tail!8125 oldBucket!40) (t!358634 oldBucket!40))))

(assert (=> b!4622005 d!1455813))

(declare-fun d!1455815 () Bool)

(declare-fun content!8769 (List!51614) (InoxSet tuple2!52406))

(assert (=> d!1455815 (= (eq!805 (addToMapMapFromBucket!951 (Cons!51490 lt!1778543 lt!1778558) (ListMap!4250 Nil!51490)) (+!1856 (addToMapMapFromBucket!951 lt!1778558 (ListMap!4250 Nil!51490)) lt!1778543)) (= (content!8769 (toList!4945 (addToMapMapFromBucket!951 (Cons!51490 lt!1778543 lt!1778558) (ListMap!4250 Nil!51490)))) (content!8769 (toList!4945 (+!1856 (addToMapMapFromBucket!951 lt!1778558 (ListMap!4250 Nil!51490)) lt!1778543)))))))

(declare-fun bs!1020980 () Bool)

(assert (= bs!1020980 d!1455815))

(declare-fun m!5460347 () Bool)

(assert (=> bs!1020980 m!5460347))

(declare-fun m!5460349 () Bool)

(assert (=> bs!1020980 m!5460349))

(assert (=> b!4622002 d!1455815))

(declare-fun d!1455817 () Bool)

(assert (=> d!1455817 (eq!805 (addToMapMapFromBucket!951 (Cons!51490 lt!1778549 lt!1778544) (ListMap!4250 Nil!51490)) (+!1856 (addToMapMapFromBucket!951 lt!1778544 (ListMap!4250 Nil!51490)) lt!1778549))))

(declare-fun lt!1778974 () Unit!111269)

(declare-fun choose!31218 (tuple2!52406 List!51614 ListMap!4249) Unit!111269)

(assert (=> d!1455817 (= lt!1778974 (choose!31218 lt!1778549 lt!1778544 (ListMap!4250 Nil!51490)))))

(assert (=> d!1455817 (noDuplicateKeys!1490 lt!1778544)))

(assert (=> d!1455817 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!56 lt!1778549 lt!1778544 (ListMap!4250 Nil!51490)) lt!1778974)))

(declare-fun bs!1020989 () Bool)

(assert (= bs!1020989 d!1455817))

(assert (=> bs!1020989 m!5459745))

(assert (=> bs!1020989 m!5459729))

(declare-fun m!5460377 () Bool)

(assert (=> bs!1020989 m!5460377))

(assert (=> bs!1020989 m!5459727))

(assert (=> bs!1020989 m!5459727))

(assert (=> bs!1020989 m!5459729))

(assert (=> bs!1020989 m!5459731))

(assert (=> bs!1020989 m!5459745))

(declare-fun m!5460379 () Bool)

(assert (=> bs!1020989 m!5460379))

(assert (=> b!4622002 d!1455817))

(declare-fun bs!1020992 () Bool)

(declare-fun d!1455821 () Bool)

(assert (= bs!1020992 (and d!1455821 d!1455707)))

(declare-fun lambda!191176 () Int)

(assert (=> bs!1020992 (= lambda!191176 lambda!191098)))

(declare-fun bs!1020993 () Bool)

(assert (= bs!1020993 (and d!1455821 d!1455801)))

(assert (=> bs!1020993 (= lambda!191176 lambda!191164)))

(declare-fun bs!1020994 () Bool)

(assert (= bs!1020994 (and d!1455821 d!1455733)))

(assert (=> bs!1020994 (= lambda!191176 lambda!191102)))

(declare-fun bs!1020995 () Bool)

(assert (= bs!1020995 (and d!1455821 d!1455807)))

(assert (=> bs!1020995 (= lambda!191176 lambda!191166)))

(declare-fun bs!1020996 () Bool)

(assert (= bs!1020996 (and d!1455821 b!4622009)))

(assert (=> bs!1020996 (= lambda!191176 lambda!191050)))

(declare-fun bs!1020997 () Bool)

(assert (= bs!1020997 (and d!1455821 d!1455687)))

(assert (=> bs!1020997 (= lambda!191176 lambda!191062)))

(assert (=> d!1455821 (contains!14505 (extractMap!1546 (toList!4946 (ListLongMap!3536 lt!1778554))) key!4968)))

(declare-fun lt!1778992 () Unit!111269)

(declare-fun choose!31219 (ListLongMap!3535 K!12875 Hashable!5887) Unit!111269)

(assert (=> d!1455821 (= lt!1778992 (choose!31219 (ListLongMap!3536 lt!1778554) key!4968 hashF!1389))))

(assert (=> d!1455821 (forall!10799 (toList!4946 (ListLongMap!3536 lt!1778554)) lambda!191176)))

(assert (=> d!1455821 (= (lemmaListContainsThenExtractedMapContains!308 (ListLongMap!3536 lt!1778554) key!4968 hashF!1389) lt!1778992)))

(declare-fun bs!1020998 () Bool)

(assert (= bs!1020998 d!1455821))

(declare-fun m!5460393 () Bool)

(assert (=> bs!1020998 m!5460393))

(assert (=> bs!1020998 m!5460393))

(declare-fun m!5460395 () Bool)

(assert (=> bs!1020998 m!5460395))

(declare-fun m!5460397 () Bool)

(assert (=> bs!1020998 m!5460397))

(declare-fun m!5460399 () Bool)

(assert (=> bs!1020998 m!5460399))

(assert (=> b!4622002 d!1455821))

(declare-fun d!1455827 () Bool)

(declare-fun e!2883316 () Bool)

(assert (=> d!1455827 e!2883316))

(declare-fun res!1937844 () Bool)

(assert (=> d!1455827 (=> (not res!1937844) (not e!2883316))))

(declare-fun lt!1779002 () ListMap!4249)

(assert (=> d!1455827 (= res!1937844 (contains!14505 lt!1779002 (_1!29497 lt!1778549)))))

(declare-fun lt!1779003 () List!51614)

(assert (=> d!1455827 (= lt!1779002 (ListMap!4250 lt!1779003))))

(declare-fun lt!1779004 () Unit!111269)

(declare-fun lt!1779001 () Unit!111269)

(assert (=> d!1455827 (= lt!1779004 lt!1779001)))

(assert (=> d!1455827 (= (getValueByKey!1427 lt!1779003 (_1!29497 lt!1778549)) (Some!11550 (_2!29497 lt!1778549)))))

(declare-fun lemmaContainsTupThenGetReturnValue!836 (List!51614 K!12875 V!13121) Unit!111269)

(assert (=> d!1455827 (= lt!1779001 (lemmaContainsTupThenGetReturnValue!836 lt!1779003 (_1!29497 lt!1778549) (_2!29497 lt!1778549)))))

(declare-fun insertNoDuplicatedKeys!344 (List!51614 K!12875 V!13121) List!51614)

(assert (=> d!1455827 (= lt!1779003 (insertNoDuplicatedKeys!344 (toList!4945 (addToMapMapFromBucket!951 lt!1778544 (ListMap!4250 Nil!51490))) (_1!29497 lt!1778549) (_2!29497 lt!1778549)))))

(assert (=> d!1455827 (= (+!1856 (addToMapMapFromBucket!951 lt!1778544 (ListMap!4250 Nil!51490)) lt!1778549) lt!1779002)))

(declare-fun b!4622362 () Bool)

(declare-fun res!1937845 () Bool)

(assert (=> b!4622362 (=> (not res!1937845) (not e!2883316))))

(assert (=> b!4622362 (= res!1937845 (= (getValueByKey!1427 (toList!4945 lt!1779002) (_1!29497 lt!1778549)) (Some!11550 (_2!29497 lt!1778549))))))

(declare-fun b!4622363 () Bool)

(assert (=> b!4622363 (= e!2883316 (contains!14509 (toList!4945 lt!1779002) lt!1778549))))

(assert (= (and d!1455827 res!1937844) b!4622362))

(assert (= (and b!4622362 res!1937845) b!4622363))

(declare-fun m!5460401 () Bool)

(assert (=> d!1455827 m!5460401))

(declare-fun m!5460403 () Bool)

(assert (=> d!1455827 m!5460403))

(declare-fun m!5460405 () Bool)

(assert (=> d!1455827 m!5460405))

(declare-fun m!5460407 () Bool)

(assert (=> d!1455827 m!5460407))

(declare-fun m!5460409 () Bool)

(assert (=> b!4622362 m!5460409))

(declare-fun m!5460411 () Bool)

(assert (=> b!4622363 m!5460411))

(assert (=> b!4622002 d!1455827))

(declare-fun d!1455829 () Bool)

(assert (=> d!1455829 (= (head!9624 oldBucket!40) (h!57528 oldBucket!40))))

(assert (=> b!4622002 d!1455829))

(declare-fun d!1455831 () Bool)

(assert (=> d!1455831 (= (head!9624 newBucket!224) (h!57528 newBucket!224))))

(assert (=> b!4622002 d!1455831))

(declare-fun d!1455833 () Bool)

(declare-fun e!2883317 () Bool)

(assert (=> d!1455833 e!2883317))

(declare-fun res!1937846 () Bool)

(assert (=> d!1455833 (=> (not res!1937846) (not e!2883317))))

(declare-fun lt!1779006 () ListMap!4249)

(assert (=> d!1455833 (= res!1937846 (contains!14505 lt!1779006 (_1!29497 lt!1778543)))))

(declare-fun lt!1779007 () List!51614)

(assert (=> d!1455833 (= lt!1779006 (ListMap!4250 lt!1779007))))

(declare-fun lt!1779008 () Unit!111269)

(declare-fun lt!1779005 () Unit!111269)

(assert (=> d!1455833 (= lt!1779008 lt!1779005)))

(assert (=> d!1455833 (= (getValueByKey!1427 lt!1779007 (_1!29497 lt!1778543)) (Some!11550 (_2!29497 lt!1778543)))))

(assert (=> d!1455833 (= lt!1779005 (lemmaContainsTupThenGetReturnValue!836 lt!1779007 (_1!29497 lt!1778543) (_2!29497 lt!1778543)))))

(assert (=> d!1455833 (= lt!1779007 (insertNoDuplicatedKeys!344 (toList!4945 (addToMapMapFromBucket!951 lt!1778558 (ListMap!4250 Nil!51490))) (_1!29497 lt!1778543) (_2!29497 lt!1778543)))))

(assert (=> d!1455833 (= (+!1856 (addToMapMapFromBucket!951 lt!1778558 (ListMap!4250 Nil!51490)) lt!1778543) lt!1779006)))

(declare-fun b!4622364 () Bool)

(declare-fun res!1937847 () Bool)

(assert (=> b!4622364 (=> (not res!1937847) (not e!2883317))))

(assert (=> b!4622364 (= res!1937847 (= (getValueByKey!1427 (toList!4945 lt!1779006) (_1!29497 lt!1778543)) (Some!11550 (_2!29497 lt!1778543))))))

(declare-fun b!4622365 () Bool)

(assert (=> b!4622365 (= e!2883317 (contains!14509 (toList!4945 lt!1779006) lt!1778543))))

(assert (= (and d!1455833 res!1937846) b!4622364))

(assert (= (and b!4622364 res!1937847) b!4622365))

(declare-fun m!5460413 () Bool)

(assert (=> d!1455833 m!5460413))

(declare-fun m!5460415 () Bool)

(assert (=> d!1455833 m!5460415))

(declare-fun m!5460417 () Bool)

(assert (=> d!1455833 m!5460417))

(declare-fun m!5460419 () Bool)

(assert (=> d!1455833 m!5460419))

(declare-fun m!5460421 () Bool)

(assert (=> b!4622364 m!5460421))

(declare-fun m!5460423 () Bool)

(assert (=> b!4622365 m!5460423))

(assert (=> b!4622002 d!1455833))

(declare-fun d!1455835 () Bool)

(assert (=> d!1455835 (= (eq!805 lt!1778563 (+!1856 (extractMap!1546 (Cons!51491 (tuple2!52409 hash!414 lt!1778558) Nil!51491)) (h!57528 oldBucket!40))) (= (content!8769 (toList!4945 lt!1778563)) (content!8769 (toList!4945 (+!1856 (extractMap!1546 (Cons!51491 (tuple2!52409 hash!414 lt!1778558) Nil!51491)) (h!57528 oldBucket!40))))))))

(declare-fun bs!1020999 () Bool)

(assert (= bs!1020999 d!1455835))

(declare-fun m!5460425 () Bool)

(assert (=> bs!1020999 m!5460425))

(declare-fun m!5460427 () Bool)

(assert (=> bs!1020999 m!5460427))

(assert (=> b!4622002 d!1455835))

(declare-fun d!1455837 () Bool)

(declare-fun e!2883318 () Bool)

(assert (=> d!1455837 e!2883318))

(declare-fun res!1937848 () Bool)

(assert (=> d!1455837 (=> (not res!1937848) (not e!2883318))))

(declare-fun lt!1779010 () ListMap!4249)

(assert (=> d!1455837 (= res!1937848 (contains!14505 lt!1779010 (_1!29497 (h!57528 oldBucket!40))))))

(declare-fun lt!1779011 () List!51614)

(assert (=> d!1455837 (= lt!1779010 (ListMap!4250 lt!1779011))))

(declare-fun lt!1779012 () Unit!111269)

(declare-fun lt!1779009 () Unit!111269)

(assert (=> d!1455837 (= lt!1779012 lt!1779009)))

(assert (=> d!1455837 (= (getValueByKey!1427 lt!1779011 (_1!29497 (h!57528 oldBucket!40))) (Some!11550 (_2!29497 (h!57528 oldBucket!40))))))

(assert (=> d!1455837 (= lt!1779009 (lemmaContainsTupThenGetReturnValue!836 lt!1779011 (_1!29497 (h!57528 oldBucket!40)) (_2!29497 (h!57528 oldBucket!40))))))

(assert (=> d!1455837 (= lt!1779011 (insertNoDuplicatedKeys!344 (toList!4945 (extractMap!1546 (Cons!51491 (tuple2!52409 hash!414 lt!1778558) Nil!51491))) (_1!29497 (h!57528 oldBucket!40)) (_2!29497 (h!57528 oldBucket!40))))))

(assert (=> d!1455837 (= (+!1856 (extractMap!1546 (Cons!51491 (tuple2!52409 hash!414 lt!1778558) Nil!51491)) (h!57528 oldBucket!40)) lt!1779010)))

(declare-fun b!4622366 () Bool)

(declare-fun res!1937849 () Bool)

(assert (=> b!4622366 (=> (not res!1937849) (not e!2883318))))

(assert (=> b!4622366 (= res!1937849 (= (getValueByKey!1427 (toList!4945 lt!1779010) (_1!29497 (h!57528 oldBucket!40))) (Some!11550 (_2!29497 (h!57528 oldBucket!40)))))))

(declare-fun b!4622367 () Bool)

(assert (=> b!4622367 (= e!2883318 (contains!14509 (toList!4945 lt!1779010) (h!57528 oldBucket!40)))))

(assert (= (and d!1455837 res!1937848) b!4622366))

(assert (= (and b!4622366 res!1937849) b!4622367))

(declare-fun m!5460429 () Bool)

(assert (=> d!1455837 m!5460429))

(declare-fun m!5460431 () Bool)

(assert (=> d!1455837 m!5460431))

(declare-fun m!5460433 () Bool)

(assert (=> d!1455837 m!5460433))

(declare-fun m!5460435 () Bool)

(assert (=> d!1455837 m!5460435))

(declare-fun m!5460437 () Bool)

(assert (=> b!4622366 m!5460437))

(declare-fun m!5460439 () Bool)

(assert (=> b!4622367 m!5460439))

(assert (=> b!4622002 d!1455837))

(declare-fun b!4622368 () Bool)

(declare-fun e!2883319 () Unit!111269)

(declare-fun lt!1779018 () Unit!111269)

(assert (=> b!4622368 (= e!2883319 lt!1779018)))

(declare-fun lt!1779017 () Unit!111269)

(assert (=> b!4622368 (= lt!1779017 (lemmaContainsKeyImpliesGetValueByKeyDefined!1329 (toList!4945 (extractMap!1546 lt!1778554)) key!4968))))

(assert (=> b!4622368 (isDefined!8816 (getValueByKey!1427 (toList!4945 (extractMap!1546 lt!1778554)) key!4968))))

(declare-fun lt!1779016 () Unit!111269)

(assert (=> b!4622368 (= lt!1779016 lt!1779017)))

(assert (=> b!4622368 (= lt!1779018 (lemmaInListThenGetKeysListContains!638 (toList!4945 (extractMap!1546 lt!1778554)) key!4968))))

(declare-fun call!322339 () Bool)

(assert (=> b!4622368 call!322339))

(declare-fun b!4622369 () Bool)

(declare-fun e!2883321 () Unit!111269)

(declare-fun Unit!111331 () Unit!111269)

(assert (=> b!4622369 (= e!2883321 Unit!111331)))

(declare-fun bm!322334 () Bool)

(declare-fun e!2883320 () List!51617)

(assert (=> bm!322334 (= call!322339 (contains!14511 e!2883320 key!4968))))

(declare-fun c!791238 () Bool)

(declare-fun c!791237 () Bool)

(assert (=> bm!322334 (= c!791238 c!791237)))

(declare-fun b!4622370 () Bool)

(declare-fun e!2883322 () Bool)

(assert (=> b!4622370 (= e!2883322 (contains!14511 (keys!18126 (extractMap!1546 lt!1778554)) key!4968))))

(declare-fun b!4622371 () Bool)

(declare-fun e!2883324 () Bool)

(assert (=> b!4622371 (= e!2883324 (not (contains!14511 (keys!18126 (extractMap!1546 lt!1778554)) key!4968)))))

(declare-fun b!4622372 () Bool)

(assert (=> b!4622372 (= e!2883319 e!2883321)))

(declare-fun c!791236 () Bool)

(assert (=> b!4622372 (= c!791236 call!322339)))

(declare-fun b!4622373 () Bool)

(assert (=> b!4622373 (= e!2883320 (getKeysList!643 (toList!4945 (extractMap!1546 lt!1778554))))))

(declare-fun b!4622374 () Bool)

(assert (=> b!4622374 (= e!2883320 (keys!18126 (extractMap!1546 lt!1778554)))))

(declare-fun d!1455839 () Bool)

(declare-fun e!2883323 () Bool)

(assert (=> d!1455839 e!2883323))

(declare-fun res!1937852 () Bool)

(assert (=> d!1455839 (=> res!1937852 e!2883323)))

(assert (=> d!1455839 (= res!1937852 e!2883324)))

(declare-fun res!1937851 () Bool)

(assert (=> d!1455839 (=> (not res!1937851) (not e!2883324))))

(declare-fun lt!1779014 () Bool)

(assert (=> d!1455839 (= res!1937851 (not lt!1779014))))

(declare-fun lt!1779019 () Bool)

(assert (=> d!1455839 (= lt!1779014 lt!1779019)))

(declare-fun lt!1779020 () Unit!111269)

(assert (=> d!1455839 (= lt!1779020 e!2883319)))

(assert (=> d!1455839 (= c!791237 lt!1779019)))

(assert (=> d!1455839 (= lt!1779019 (containsKey!2409 (toList!4945 (extractMap!1546 lt!1778554)) key!4968))))

(assert (=> d!1455839 (= (contains!14505 (extractMap!1546 lt!1778554) key!4968) lt!1779014)))

(declare-fun b!4622375 () Bool)

(assert (=> b!4622375 (= e!2883323 e!2883322)))

(declare-fun res!1937850 () Bool)

(assert (=> b!4622375 (=> (not res!1937850) (not e!2883322))))

(assert (=> b!4622375 (= res!1937850 (isDefined!8816 (getValueByKey!1427 (toList!4945 (extractMap!1546 lt!1778554)) key!4968)))))

(declare-fun b!4622376 () Bool)

(assert (=> b!4622376 false))

(declare-fun lt!1779013 () Unit!111269)

(declare-fun lt!1779015 () Unit!111269)

(assert (=> b!4622376 (= lt!1779013 lt!1779015)))

(assert (=> b!4622376 (containsKey!2409 (toList!4945 (extractMap!1546 lt!1778554)) key!4968)))

(assert (=> b!4622376 (= lt!1779015 (lemmaInGetKeysListThenContainsKey!642 (toList!4945 (extractMap!1546 lt!1778554)) key!4968))))

(declare-fun Unit!111332 () Unit!111269)

(assert (=> b!4622376 (= e!2883321 Unit!111332)))

(assert (= (and d!1455839 c!791237) b!4622368))

(assert (= (and d!1455839 (not c!791237)) b!4622372))

(assert (= (and b!4622372 c!791236) b!4622376))

(assert (= (and b!4622372 (not c!791236)) b!4622369))

(assert (= (or b!4622368 b!4622372) bm!322334))

(assert (= (and bm!322334 c!791238) b!4622373))

(assert (= (and bm!322334 (not c!791238)) b!4622374))

(assert (= (and d!1455839 res!1937851) b!4622371))

(assert (= (and d!1455839 (not res!1937852)) b!4622375))

(assert (= (and b!4622375 res!1937850) b!4622370))

(assert (=> b!4622370 m!5459715))

(declare-fun m!5460441 () Bool)

(assert (=> b!4622370 m!5460441))

(assert (=> b!4622370 m!5460441))

(declare-fun m!5460443 () Bool)

(assert (=> b!4622370 m!5460443))

(declare-fun m!5460445 () Bool)

(assert (=> d!1455839 m!5460445))

(declare-fun m!5460447 () Bool)

(assert (=> bm!322334 m!5460447))

(declare-fun m!5460449 () Bool)

(assert (=> b!4622375 m!5460449))

(assert (=> b!4622375 m!5460449))

(declare-fun m!5460451 () Bool)

(assert (=> b!4622375 m!5460451))

(declare-fun m!5460453 () Bool)

(assert (=> b!4622373 m!5460453))

(assert (=> b!4622371 m!5459715))

(assert (=> b!4622371 m!5460441))

(assert (=> b!4622371 m!5460441))

(assert (=> b!4622371 m!5460443))

(assert (=> b!4622374 m!5459715))

(assert (=> b!4622374 m!5460441))

(declare-fun m!5460455 () Bool)

(assert (=> b!4622368 m!5460455))

(assert (=> b!4622368 m!5460449))

(assert (=> b!4622368 m!5460449))

(assert (=> b!4622368 m!5460451))

(declare-fun m!5460457 () Bool)

(assert (=> b!4622368 m!5460457))

(assert (=> b!4622376 m!5460445))

(declare-fun m!5460459 () Bool)

(assert (=> b!4622376 m!5460459))

(assert (=> b!4622002 d!1455839))

(declare-fun d!1455841 () Bool)

(assert (=> d!1455841 (eq!805 (addToMapMapFromBucket!951 (Cons!51490 lt!1778543 lt!1778558) (ListMap!4250 Nil!51490)) (+!1856 (addToMapMapFromBucket!951 lt!1778558 (ListMap!4250 Nil!51490)) lt!1778543))))

(declare-fun lt!1779021 () Unit!111269)

(assert (=> d!1455841 (= lt!1779021 (choose!31218 lt!1778543 lt!1778558 (ListMap!4250 Nil!51490)))))

(assert (=> d!1455841 (noDuplicateKeys!1490 lt!1778558)))

(assert (=> d!1455841 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!56 lt!1778543 lt!1778558 (ListMap!4250 Nil!51490)) lt!1779021)))

(declare-fun bs!1021000 () Bool)

(assert (= bs!1021000 d!1455841))

(assert (=> bs!1021000 m!5459719))

(assert (=> bs!1021000 m!5459721))

(assert (=> bs!1021000 m!5460343))

(assert (=> bs!1021000 m!5459713))

(assert (=> bs!1021000 m!5459713))

(assert (=> bs!1021000 m!5459721))

(assert (=> bs!1021000 m!5459747))

(assert (=> bs!1021000 m!5459719))

(declare-fun m!5460461 () Bool)

(assert (=> bs!1021000 m!5460461))

(assert (=> b!4622002 d!1455841))

(declare-fun bs!1021001 () Bool)

(declare-fun b!4622379 () Bool)

(assert (= bs!1021001 (and b!4622379 b!4622312)))

(declare-fun lambda!191177 () Int)

(assert (=> bs!1021001 (= (= (ListMap!4250 Nil!51490) lt!1778547) (= lambda!191177 lambda!191161))))

(assert (=> bs!1021001 (= (= (ListMap!4250 Nil!51490) lt!1778927) (= lambda!191177 lambda!191162))))

(declare-fun bs!1021002 () Bool)

(assert (= bs!1021002 (and b!4622379 b!4622313)))

(assert (=> bs!1021002 (= (= (ListMap!4250 Nil!51490) lt!1778547) (= lambda!191177 lambda!191160))))

(declare-fun bs!1021003 () Bool)

(assert (= bs!1021003 (and b!4622379 d!1455743)))

(assert (=> bs!1021003 (= (= (ListMap!4250 Nil!51490) lt!1778929) (= lambda!191177 lambda!191163))))

(declare-fun bs!1021004 () Bool)

(assert (= bs!1021004 (and b!4622379 d!1455739)))

(assert (=> bs!1021004 (not (= lambda!191177 lambda!191105))))

(declare-fun bs!1021005 () Bool)

(assert (= bs!1021005 (and b!4622379 d!1455805)))

(assert (=> bs!1021005 (not (= lambda!191177 lambda!191165))))

(assert (=> b!4622379 true))

(declare-fun bs!1021006 () Bool)

(declare-fun b!4622378 () Bool)

(assert (= bs!1021006 (and b!4622378 b!4622312)))

(declare-fun lambda!191178 () Int)

(assert (=> bs!1021006 (= (= (ListMap!4250 Nil!51490) lt!1778547) (= lambda!191178 lambda!191161))))

(declare-fun bs!1021007 () Bool)

(assert (= bs!1021007 (and b!4622378 b!4622379)))

(assert (=> bs!1021007 (= lambda!191178 lambda!191177)))

(assert (=> bs!1021006 (= (= (ListMap!4250 Nil!51490) lt!1778927) (= lambda!191178 lambda!191162))))

(declare-fun bs!1021008 () Bool)

(assert (= bs!1021008 (and b!4622378 b!4622313)))

(assert (=> bs!1021008 (= (= (ListMap!4250 Nil!51490) lt!1778547) (= lambda!191178 lambda!191160))))

(declare-fun bs!1021009 () Bool)

(assert (= bs!1021009 (and b!4622378 d!1455743)))

(assert (=> bs!1021009 (= (= (ListMap!4250 Nil!51490) lt!1778929) (= lambda!191178 lambda!191163))))

(declare-fun bs!1021010 () Bool)

(assert (= bs!1021010 (and b!4622378 d!1455739)))

(assert (=> bs!1021010 (not (= lambda!191178 lambda!191105))))

(declare-fun bs!1021011 () Bool)

(assert (= bs!1021011 (and b!4622378 d!1455805)))

(assert (=> bs!1021011 (not (= lambda!191178 lambda!191165))))

(assert (=> b!4622378 true))

(declare-fun lt!1779026 () ListMap!4249)

(declare-fun lambda!191179 () Int)

(assert (=> bs!1021006 (= (= lt!1779026 lt!1778547) (= lambda!191179 lambda!191161))))

(assert (=> bs!1021006 (= (= lt!1779026 lt!1778927) (= lambda!191179 lambda!191162))))

(assert (=> bs!1021008 (= (= lt!1779026 lt!1778547) (= lambda!191179 lambda!191160))))

(assert (=> bs!1021009 (= (= lt!1779026 lt!1778929) (= lambda!191179 lambda!191163))))

(assert (=> b!4622378 (= (= lt!1779026 (ListMap!4250 Nil!51490)) (= lambda!191179 lambda!191178))))

(assert (=> bs!1021007 (= (= lt!1779026 (ListMap!4250 Nil!51490)) (= lambda!191179 lambda!191177))))

(assert (=> bs!1021010 (not (= lambda!191179 lambda!191105))))

(assert (=> bs!1021011 (not (= lambda!191179 lambda!191165))))

(assert (=> b!4622378 true))

(declare-fun bs!1021012 () Bool)

(declare-fun d!1455843 () Bool)

(assert (= bs!1021012 (and d!1455843 b!4622312)))

(declare-fun lambda!191180 () Int)

(declare-fun lt!1779028 () ListMap!4249)

(assert (=> bs!1021012 (= (= lt!1779028 lt!1778547) (= lambda!191180 lambda!191161))))

(assert (=> bs!1021012 (= (= lt!1779028 lt!1778927) (= lambda!191180 lambda!191162))))

(declare-fun bs!1021013 () Bool)

(assert (= bs!1021013 (and d!1455843 b!4622313)))

(assert (=> bs!1021013 (= (= lt!1779028 lt!1778547) (= lambda!191180 lambda!191160))))

(declare-fun bs!1021014 () Bool)

(assert (= bs!1021014 (and d!1455843 b!4622378)))

(assert (=> bs!1021014 (= (= lt!1779028 lt!1779026) (= lambda!191180 lambda!191179))))

(declare-fun bs!1021015 () Bool)

(assert (= bs!1021015 (and d!1455843 d!1455743)))

(assert (=> bs!1021015 (= (= lt!1779028 lt!1778929) (= lambda!191180 lambda!191163))))

(assert (=> bs!1021014 (= (= lt!1779028 (ListMap!4250 Nil!51490)) (= lambda!191180 lambda!191178))))

(declare-fun bs!1021016 () Bool)

(assert (= bs!1021016 (and d!1455843 b!4622379)))

(assert (=> bs!1021016 (= (= lt!1779028 (ListMap!4250 Nil!51490)) (= lambda!191180 lambda!191177))))

(declare-fun bs!1021017 () Bool)

(assert (= bs!1021017 (and d!1455843 d!1455739)))

(assert (=> bs!1021017 (not (= lambda!191180 lambda!191105))))

(declare-fun bs!1021018 () Bool)

(assert (= bs!1021018 (and d!1455843 d!1455805)))

(assert (=> bs!1021018 (not (= lambda!191180 lambda!191165))))

(assert (=> d!1455843 true))

(declare-fun bm!322335 () Bool)

(declare-fun call!322340 () Unit!111269)

(assert (=> bm!322335 (= call!322340 (lemmaContainsAllItsOwnKeys!494 (ListMap!4250 Nil!51490)))))

(declare-fun lt!1779041 () ListMap!4249)

(declare-fun c!791239 () Bool)

(declare-fun bm!322336 () Bool)

(declare-fun call!322342 () Bool)

(assert (=> bm!322336 (= call!322342 (forall!10800 (ite c!791239 (toList!4945 (ListMap!4250 Nil!51490)) (toList!4945 lt!1779041)) (ite c!791239 lambda!191177 lambda!191179)))))

(declare-fun b!4622377 () Bool)

(declare-fun e!2883327 () Bool)

(declare-fun call!322341 () Bool)

(assert (=> b!4622377 (= e!2883327 call!322341)))

(declare-fun e!2883325 () ListMap!4249)

(assert (=> b!4622379 (= e!2883325 (ListMap!4250 Nil!51490))))

(declare-fun lt!1779036 () Unit!111269)

(assert (=> b!4622379 (= lt!1779036 call!322340)))

(assert (=> b!4622379 call!322341))

(declare-fun lt!1779033 () Unit!111269)

(assert (=> b!4622379 (= lt!1779033 lt!1779036)))

(assert (=> b!4622379 call!322342))

(declare-fun lt!1779024 () Unit!111269)

(declare-fun Unit!111343 () Unit!111269)

(assert (=> b!4622379 (= lt!1779024 Unit!111343)))

(declare-fun bm!322337 () Bool)

(assert (=> bm!322337 (= call!322341 (forall!10800 (toList!4945 (ListMap!4250 Nil!51490)) (ite c!791239 lambda!191177 lambda!191179)))))

(assert (=> b!4622378 (= e!2883325 lt!1779026)))

(assert (=> b!4622378 (= lt!1779041 (+!1856 (ListMap!4250 Nil!51490) (h!57528 (Cons!51490 lt!1778549 lt!1778544))))))

(assert (=> b!4622378 (= lt!1779026 (addToMapMapFromBucket!951 (t!358634 (Cons!51490 lt!1778549 lt!1778544)) (+!1856 (ListMap!4250 Nil!51490) (h!57528 (Cons!51490 lt!1778549 lt!1778544)))))))

(declare-fun lt!1779035 () Unit!111269)

(assert (=> b!4622378 (= lt!1779035 call!322340)))

(assert (=> b!4622378 (forall!10800 (toList!4945 (ListMap!4250 Nil!51490)) lambda!191178)))

(declare-fun lt!1779027 () Unit!111269)

(assert (=> b!4622378 (= lt!1779027 lt!1779035)))

(assert (=> b!4622378 call!322342))

(declare-fun lt!1779034 () Unit!111269)

(declare-fun Unit!111344 () Unit!111269)

(assert (=> b!4622378 (= lt!1779034 Unit!111344)))

(assert (=> b!4622378 (forall!10800 (t!358634 (Cons!51490 lt!1778549 lt!1778544)) lambda!191179)))

(declare-fun lt!1779029 () Unit!111269)

(declare-fun Unit!111345 () Unit!111269)

(assert (=> b!4622378 (= lt!1779029 Unit!111345)))

(declare-fun lt!1779037 () Unit!111269)

(declare-fun Unit!111346 () Unit!111269)

(assert (=> b!4622378 (= lt!1779037 Unit!111346)))

(declare-fun lt!1779032 () Unit!111269)

(assert (=> b!4622378 (= lt!1779032 (forallContained!3024 (toList!4945 lt!1779041) lambda!191179 (h!57528 (Cons!51490 lt!1778549 lt!1778544))))))

(assert (=> b!4622378 (contains!14505 lt!1779041 (_1!29497 (h!57528 (Cons!51490 lt!1778549 lt!1778544))))))

(declare-fun lt!1779022 () Unit!111269)

(declare-fun Unit!111348 () Unit!111269)

(assert (=> b!4622378 (= lt!1779022 Unit!111348)))

(assert (=> b!4622378 (contains!14505 lt!1779026 (_1!29497 (h!57528 (Cons!51490 lt!1778549 lt!1778544))))))

(declare-fun lt!1779031 () Unit!111269)

(declare-fun Unit!111349 () Unit!111269)

(assert (=> b!4622378 (= lt!1779031 Unit!111349)))

(assert (=> b!4622378 (forall!10800 (Cons!51490 lt!1778549 lt!1778544) lambda!191179)))

(declare-fun lt!1779023 () Unit!111269)

(declare-fun Unit!111350 () Unit!111269)

(assert (=> b!4622378 (= lt!1779023 Unit!111350)))

(assert (=> b!4622378 (forall!10800 (toList!4945 lt!1779041) lambda!191179)))

(declare-fun lt!1779038 () Unit!111269)

(declare-fun Unit!111351 () Unit!111269)

(assert (=> b!4622378 (= lt!1779038 Unit!111351)))

(declare-fun lt!1779040 () Unit!111269)

(declare-fun Unit!111352 () Unit!111269)

(assert (=> b!4622378 (= lt!1779040 Unit!111352)))

(declare-fun lt!1779025 () Unit!111269)

(assert (=> b!4622378 (= lt!1779025 (addForallContainsKeyThenBeforeAdding!493 (ListMap!4250 Nil!51490) lt!1779026 (_1!29497 (h!57528 (Cons!51490 lt!1778549 lt!1778544))) (_2!29497 (h!57528 (Cons!51490 lt!1778549 lt!1778544)))))))

(assert (=> b!4622378 (forall!10800 (toList!4945 (ListMap!4250 Nil!51490)) lambda!191179)))

(declare-fun lt!1779042 () Unit!111269)

(assert (=> b!4622378 (= lt!1779042 lt!1779025)))

(assert (=> b!4622378 (forall!10800 (toList!4945 (ListMap!4250 Nil!51490)) lambda!191179)))

(declare-fun lt!1779030 () Unit!111269)

(declare-fun Unit!111353 () Unit!111269)

(assert (=> b!4622378 (= lt!1779030 Unit!111353)))

(declare-fun res!1937853 () Bool)

(assert (=> b!4622378 (= res!1937853 (forall!10800 (Cons!51490 lt!1778549 lt!1778544) lambda!191179))))

(assert (=> b!4622378 (=> (not res!1937853) (not e!2883327))))

(assert (=> b!4622378 e!2883327))

(declare-fun lt!1779039 () Unit!111269)

(declare-fun Unit!111354 () Unit!111269)

(assert (=> b!4622378 (= lt!1779039 Unit!111354)))

(declare-fun e!2883326 () Bool)

(assert (=> d!1455843 e!2883326))

(declare-fun res!1937855 () Bool)

(assert (=> d!1455843 (=> (not res!1937855) (not e!2883326))))

(assert (=> d!1455843 (= res!1937855 (forall!10800 (Cons!51490 lt!1778549 lt!1778544) lambda!191180))))

(assert (=> d!1455843 (= lt!1779028 e!2883325)))

(assert (=> d!1455843 (= c!791239 ((_ is Nil!51490) (Cons!51490 lt!1778549 lt!1778544)))))

(assert (=> d!1455843 (noDuplicateKeys!1490 (Cons!51490 lt!1778549 lt!1778544))))

(assert (=> d!1455843 (= (addToMapMapFromBucket!951 (Cons!51490 lt!1778549 lt!1778544) (ListMap!4250 Nil!51490)) lt!1779028)))

(declare-fun b!4622380 () Bool)

(declare-fun res!1937854 () Bool)

(assert (=> b!4622380 (=> (not res!1937854) (not e!2883326))))

(assert (=> b!4622380 (= res!1937854 (forall!10800 (toList!4945 (ListMap!4250 Nil!51490)) lambda!191180))))

(declare-fun b!4622381 () Bool)

(assert (=> b!4622381 (= e!2883326 (invariantList!1192 (toList!4945 lt!1779028)))))

(assert (= (and d!1455843 c!791239) b!4622379))

(assert (= (and d!1455843 (not c!791239)) b!4622378))

(assert (= (and b!4622378 res!1937853) b!4622377))

(assert (= (or b!4622379 b!4622378) bm!322335))

(assert (= (or b!4622379 b!4622377) bm!322337))

(assert (= (or b!4622379 b!4622378) bm!322336))

(assert (= (and d!1455843 res!1937855) b!4622380))

(assert (= (and b!4622380 res!1937854) b!4622381))

(declare-fun m!5460463 () Bool)

(assert (=> bm!322336 m!5460463))

(declare-fun m!5460465 () Bool)

(assert (=> b!4622378 m!5460465))

(declare-fun m!5460467 () Bool)

(assert (=> b!4622378 m!5460467))

(declare-fun m!5460469 () Bool)

(assert (=> b!4622378 m!5460469))

(declare-fun m!5460471 () Bool)

(assert (=> b!4622378 m!5460471))

(declare-fun m!5460473 () Bool)

(assert (=> b!4622378 m!5460473))

(declare-fun m!5460475 () Bool)

(assert (=> b!4622378 m!5460475))

(declare-fun m!5460477 () Bool)

(assert (=> b!4622378 m!5460477))

(declare-fun m!5460479 () Bool)

(assert (=> b!4622378 m!5460479))

(assert (=> b!4622378 m!5460469))

(declare-fun m!5460481 () Bool)

(assert (=> b!4622378 m!5460481))

(declare-fun m!5460483 () Bool)

(assert (=> b!4622378 m!5460483))

(assert (=> b!4622378 m!5460471))

(declare-fun m!5460485 () Bool)

(assert (=> b!4622378 m!5460485))

(assert (=> b!4622378 m!5460483))

(declare-fun m!5460487 () Bool)

(assert (=> b!4622381 m!5460487))

(declare-fun m!5460489 () Bool)

(assert (=> d!1455843 m!5460489))

(declare-fun m!5460491 () Bool)

(assert (=> d!1455843 m!5460491))

(declare-fun m!5460493 () Bool)

(assert (=> b!4622380 m!5460493))

(declare-fun m!5460495 () Bool)

(assert (=> bm!322337 m!5460495))

(declare-fun m!5460497 () Bool)

(assert (=> bm!322335 m!5460497))

(assert (=> b!4622002 d!1455843))

(declare-fun bs!1021019 () Bool)

(declare-fun b!4622384 () Bool)

(assert (= bs!1021019 (and b!4622384 b!4622312)))

(declare-fun lambda!191181 () Int)

(assert (=> bs!1021019 (= (= (ListMap!4250 Nil!51490) lt!1778547) (= lambda!191181 lambda!191161))))

(declare-fun bs!1021020 () Bool)

(assert (= bs!1021020 (and b!4622384 d!1455843)))

(assert (=> bs!1021020 (= (= (ListMap!4250 Nil!51490) lt!1779028) (= lambda!191181 lambda!191180))))

(assert (=> bs!1021019 (= (= (ListMap!4250 Nil!51490) lt!1778927) (= lambda!191181 lambda!191162))))

(declare-fun bs!1021021 () Bool)

(assert (= bs!1021021 (and b!4622384 b!4622313)))

(assert (=> bs!1021021 (= (= (ListMap!4250 Nil!51490) lt!1778547) (= lambda!191181 lambda!191160))))

(declare-fun bs!1021022 () Bool)

(assert (= bs!1021022 (and b!4622384 b!4622378)))

(assert (=> bs!1021022 (= (= (ListMap!4250 Nil!51490) lt!1779026) (= lambda!191181 lambda!191179))))

(declare-fun bs!1021023 () Bool)

(assert (= bs!1021023 (and b!4622384 d!1455743)))

(assert (=> bs!1021023 (= (= (ListMap!4250 Nil!51490) lt!1778929) (= lambda!191181 lambda!191163))))

(assert (=> bs!1021022 (= lambda!191181 lambda!191178)))

(declare-fun bs!1021024 () Bool)

(assert (= bs!1021024 (and b!4622384 b!4622379)))

(assert (=> bs!1021024 (= lambda!191181 lambda!191177)))

(declare-fun bs!1021025 () Bool)

(assert (= bs!1021025 (and b!4622384 d!1455739)))

(assert (=> bs!1021025 (not (= lambda!191181 lambda!191105))))

(declare-fun bs!1021026 () Bool)

(assert (= bs!1021026 (and b!4622384 d!1455805)))

(assert (=> bs!1021026 (not (= lambda!191181 lambda!191165))))

(assert (=> b!4622384 true))

(declare-fun bs!1021027 () Bool)

(declare-fun b!4622383 () Bool)

(assert (= bs!1021027 (and b!4622383 b!4622312)))

(declare-fun lambda!191182 () Int)

(assert (=> bs!1021027 (= (= (ListMap!4250 Nil!51490) lt!1778547) (= lambda!191182 lambda!191161))))

(declare-fun bs!1021028 () Bool)

(assert (= bs!1021028 (and b!4622383 d!1455843)))

(assert (=> bs!1021028 (= (= (ListMap!4250 Nil!51490) lt!1779028) (= lambda!191182 lambda!191180))))

(declare-fun bs!1021029 () Bool)

(assert (= bs!1021029 (and b!4622383 b!4622384)))

(assert (=> bs!1021029 (= lambda!191182 lambda!191181)))

(assert (=> bs!1021027 (= (= (ListMap!4250 Nil!51490) lt!1778927) (= lambda!191182 lambda!191162))))

(declare-fun bs!1021030 () Bool)

(assert (= bs!1021030 (and b!4622383 b!4622313)))

(assert (=> bs!1021030 (= (= (ListMap!4250 Nil!51490) lt!1778547) (= lambda!191182 lambda!191160))))

(declare-fun bs!1021031 () Bool)

(assert (= bs!1021031 (and b!4622383 b!4622378)))

(assert (=> bs!1021031 (= (= (ListMap!4250 Nil!51490) lt!1779026) (= lambda!191182 lambda!191179))))

(declare-fun bs!1021032 () Bool)

(assert (= bs!1021032 (and b!4622383 d!1455743)))

(assert (=> bs!1021032 (= (= (ListMap!4250 Nil!51490) lt!1778929) (= lambda!191182 lambda!191163))))

(assert (=> bs!1021031 (= lambda!191182 lambda!191178)))

(declare-fun bs!1021033 () Bool)

(assert (= bs!1021033 (and b!4622383 b!4622379)))

(assert (=> bs!1021033 (= lambda!191182 lambda!191177)))

(declare-fun bs!1021034 () Bool)

(assert (= bs!1021034 (and b!4622383 d!1455739)))

(assert (=> bs!1021034 (not (= lambda!191182 lambda!191105))))

(declare-fun bs!1021035 () Bool)

(assert (= bs!1021035 (and b!4622383 d!1455805)))

(assert (=> bs!1021035 (not (= lambda!191182 lambda!191165))))

(assert (=> b!4622383 true))

(declare-fun lt!1779047 () ListMap!4249)

(declare-fun lambda!191183 () Int)

(assert (=> bs!1021027 (= (= lt!1779047 lt!1778547) (= lambda!191183 lambda!191161))))

(assert (=> bs!1021028 (= (= lt!1779047 lt!1779028) (= lambda!191183 lambda!191180))))

(assert (=> bs!1021029 (= (= lt!1779047 (ListMap!4250 Nil!51490)) (= lambda!191183 lambda!191181))))

(assert (=> bs!1021027 (= (= lt!1779047 lt!1778927) (= lambda!191183 lambda!191162))))

(assert (=> bs!1021030 (= (= lt!1779047 lt!1778547) (= lambda!191183 lambda!191160))))

(assert (=> b!4622383 (= (= lt!1779047 (ListMap!4250 Nil!51490)) (= lambda!191183 lambda!191182))))

(assert (=> bs!1021031 (= (= lt!1779047 lt!1779026) (= lambda!191183 lambda!191179))))

(assert (=> bs!1021032 (= (= lt!1779047 lt!1778929) (= lambda!191183 lambda!191163))))

(assert (=> bs!1021031 (= (= lt!1779047 (ListMap!4250 Nil!51490)) (= lambda!191183 lambda!191178))))

(assert (=> bs!1021033 (= (= lt!1779047 (ListMap!4250 Nil!51490)) (= lambda!191183 lambda!191177))))

(assert (=> bs!1021034 (not (= lambda!191183 lambda!191105))))

(assert (=> bs!1021035 (not (= lambda!191183 lambda!191165))))

(assert (=> b!4622383 true))

(declare-fun bs!1021036 () Bool)

(declare-fun d!1455845 () Bool)

(assert (= bs!1021036 (and d!1455845 b!4622383)))

(declare-fun lt!1779049 () ListMap!4249)

(declare-fun lambda!191184 () Int)

(assert (=> bs!1021036 (= (= lt!1779049 lt!1779047) (= lambda!191184 lambda!191183))))

(declare-fun bs!1021037 () Bool)

(assert (= bs!1021037 (and d!1455845 b!4622312)))

(assert (=> bs!1021037 (= (= lt!1779049 lt!1778547) (= lambda!191184 lambda!191161))))

(declare-fun bs!1021038 () Bool)

(assert (= bs!1021038 (and d!1455845 d!1455843)))

(assert (=> bs!1021038 (= (= lt!1779049 lt!1779028) (= lambda!191184 lambda!191180))))

(declare-fun bs!1021039 () Bool)

(assert (= bs!1021039 (and d!1455845 b!4622384)))

(assert (=> bs!1021039 (= (= lt!1779049 (ListMap!4250 Nil!51490)) (= lambda!191184 lambda!191181))))

(assert (=> bs!1021037 (= (= lt!1779049 lt!1778927) (= lambda!191184 lambda!191162))))

(declare-fun bs!1021040 () Bool)

(assert (= bs!1021040 (and d!1455845 b!4622313)))

(assert (=> bs!1021040 (= (= lt!1779049 lt!1778547) (= lambda!191184 lambda!191160))))

(assert (=> bs!1021036 (= (= lt!1779049 (ListMap!4250 Nil!51490)) (= lambda!191184 lambda!191182))))

(declare-fun bs!1021041 () Bool)

(assert (= bs!1021041 (and d!1455845 b!4622378)))

(assert (=> bs!1021041 (= (= lt!1779049 lt!1779026) (= lambda!191184 lambda!191179))))

(declare-fun bs!1021042 () Bool)

(assert (= bs!1021042 (and d!1455845 d!1455743)))

(assert (=> bs!1021042 (= (= lt!1779049 lt!1778929) (= lambda!191184 lambda!191163))))

(assert (=> bs!1021041 (= (= lt!1779049 (ListMap!4250 Nil!51490)) (= lambda!191184 lambda!191178))))

(declare-fun bs!1021043 () Bool)

(assert (= bs!1021043 (and d!1455845 b!4622379)))

(assert (=> bs!1021043 (= (= lt!1779049 (ListMap!4250 Nil!51490)) (= lambda!191184 lambda!191177))))

(declare-fun bs!1021044 () Bool)

(assert (= bs!1021044 (and d!1455845 d!1455739)))

(assert (=> bs!1021044 (not (= lambda!191184 lambda!191105))))

(declare-fun bs!1021045 () Bool)

(assert (= bs!1021045 (and d!1455845 d!1455805)))

(assert (=> bs!1021045 (not (= lambda!191184 lambda!191165))))

(assert (=> d!1455845 true))

(declare-fun bm!322338 () Bool)

(declare-fun call!322343 () Unit!111269)

(assert (=> bm!322338 (= call!322343 (lemmaContainsAllItsOwnKeys!494 (ListMap!4250 Nil!51490)))))

(declare-fun bm!322339 () Bool)

(declare-fun call!322345 () Bool)

(declare-fun c!791240 () Bool)

(declare-fun lt!1779062 () ListMap!4249)

(assert (=> bm!322339 (= call!322345 (forall!10800 (ite c!791240 (toList!4945 (ListMap!4250 Nil!51490)) (toList!4945 lt!1779062)) (ite c!791240 lambda!191181 lambda!191183)))))

(declare-fun b!4622382 () Bool)

(declare-fun e!2883330 () Bool)

(declare-fun call!322344 () Bool)

(assert (=> b!4622382 (= e!2883330 call!322344)))

(declare-fun e!2883328 () ListMap!4249)

(assert (=> b!4622384 (= e!2883328 (ListMap!4250 Nil!51490))))

(declare-fun lt!1779057 () Unit!111269)

(assert (=> b!4622384 (= lt!1779057 call!322343)))

(assert (=> b!4622384 call!322344))

(declare-fun lt!1779054 () Unit!111269)

(assert (=> b!4622384 (= lt!1779054 lt!1779057)))

(assert (=> b!4622384 call!322345))

(declare-fun lt!1779045 () Unit!111269)

(declare-fun Unit!111357 () Unit!111269)

(assert (=> b!4622384 (= lt!1779045 Unit!111357)))

(declare-fun bm!322340 () Bool)

(assert (=> bm!322340 (= call!322344 (forall!10800 (toList!4945 (ListMap!4250 Nil!51490)) (ite c!791240 lambda!191181 lambda!191183)))))

(assert (=> b!4622383 (= e!2883328 lt!1779047)))

(assert (=> b!4622383 (= lt!1779062 (+!1856 (ListMap!4250 Nil!51490) (h!57528 (Cons!51490 lt!1778543 lt!1778558))))))

(assert (=> b!4622383 (= lt!1779047 (addToMapMapFromBucket!951 (t!358634 (Cons!51490 lt!1778543 lt!1778558)) (+!1856 (ListMap!4250 Nil!51490) (h!57528 (Cons!51490 lt!1778543 lt!1778558)))))))

(declare-fun lt!1779056 () Unit!111269)

(assert (=> b!4622383 (= lt!1779056 call!322343)))

(assert (=> b!4622383 (forall!10800 (toList!4945 (ListMap!4250 Nil!51490)) lambda!191182)))

(declare-fun lt!1779048 () Unit!111269)

(assert (=> b!4622383 (= lt!1779048 lt!1779056)))

(assert (=> b!4622383 call!322345))

(declare-fun lt!1779055 () Unit!111269)

(declare-fun Unit!111358 () Unit!111269)

(assert (=> b!4622383 (= lt!1779055 Unit!111358)))

(assert (=> b!4622383 (forall!10800 (t!358634 (Cons!51490 lt!1778543 lt!1778558)) lambda!191183)))

(declare-fun lt!1779050 () Unit!111269)

(declare-fun Unit!111359 () Unit!111269)

(assert (=> b!4622383 (= lt!1779050 Unit!111359)))

(declare-fun lt!1779058 () Unit!111269)

(declare-fun Unit!111360 () Unit!111269)

(assert (=> b!4622383 (= lt!1779058 Unit!111360)))

(declare-fun lt!1779053 () Unit!111269)

(assert (=> b!4622383 (= lt!1779053 (forallContained!3024 (toList!4945 lt!1779062) lambda!191183 (h!57528 (Cons!51490 lt!1778543 lt!1778558))))))

(assert (=> b!4622383 (contains!14505 lt!1779062 (_1!29497 (h!57528 (Cons!51490 lt!1778543 lt!1778558))))))

(declare-fun lt!1779043 () Unit!111269)

(declare-fun Unit!111361 () Unit!111269)

(assert (=> b!4622383 (= lt!1779043 Unit!111361)))

(assert (=> b!4622383 (contains!14505 lt!1779047 (_1!29497 (h!57528 (Cons!51490 lt!1778543 lt!1778558))))))

(declare-fun lt!1779052 () Unit!111269)

(declare-fun Unit!111362 () Unit!111269)

(assert (=> b!4622383 (= lt!1779052 Unit!111362)))

(assert (=> b!4622383 (forall!10800 (Cons!51490 lt!1778543 lt!1778558) lambda!191183)))

(declare-fun lt!1779044 () Unit!111269)

(declare-fun Unit!111363 () Unit!111269)

(assert (=> b!4622383 (= lt!1779044 Unit!111363)))

(assert (=> b!4622383 (forall!10800 (toList!4945 lt!1779062) lambda!191183)))

(declare-fun lt!1779059 () Unit!111269)

(declare-fun Unit!111364 () Unit!111269)

(assert (=> b!4622383 (= lt!1779059 Unit!111364)))

(declare-fun lt!1779061 () Unit!111269)

(declare-fun Unit!111365 () Unit!111269)

(assert (=> b!4622383 (= lt!1779061 Unit!111365)))

(declare-fun lt!1779046 () Unit!111269)

(assert (=> b!4622383 (= lt!1779046 (addForallContainsKeyThenBeforeAdding!493 (ListMap!4250 Nil!51490) lt!1779047 (_1!29497 (h!57528 (Cons!51490 lt!1778543 lt!1778558))) (_2!29497 (h!57528 (Cons!51490 lt!1778543 lt!1778558)))))))

(assert (=> b!4622383 (forall!10800 (toList!4945 (ListMap!4250 Nil!51490)) lambda!191183)))

(declare-fun lt!1779063 () Unit!111269)

(assert (=> b!4622383 (= lt!1779063 lt!1779046)))

(assert (=> b!4622383 (forall!10800 (toList!4945 (ListMap!4250 Nil!51490)) lambda!191183)))

(declare-fun lt!1779051 () Unit!111269)

(declare-fun Unit!111366 () Unit!111269)

(assert (=> b!4622383 (= lt!1779051 Unit!111366)))

(declare-fun res!1937856 () Bool)

(assert (=> b!4622383 (= res!1937856 (forall!10800 (Cons!51490 lt!1778543 lt!1778558) lambda!191183))))

(assert (=> b!4622383 (=> (not res!1937856) (not e!2883330))))

(assert (=> b!4622383 e!2883330))

(declare-fun lt!1779060 () Unit!111269)

(declare-fun Unit!111367 () Unit!111269)

(assert (=> b!4622383 (= lt!1779060 Unit!111367)))

(declare-fun e!2883329 () Bool)

(assert (=> d!1455845 e!2883329))

(declare-fun res!1937858 () Bool)

(assert (=> d!1455845 (=> (not res!1937858) (not e!2883329))))

(assert (=> d!1455845 (= res!1937858 (forall!10800 (Cons!51490 lt!1778543 lt!1778558) lambda!191184))))

(assert (=> d!1455845 (= lt!1779049 e!2883328)))

(assert (=> d!1455845 (= c!791240 ((_ is Nil!51490) (Cons!51490 lt!1778543 lt!1778558)))))

(assert (=> d!1455845 (noDuplicateKeys!1490 (Cons!51490 lt!1778543 lt!1778558))))

(assert (=> d!1455845 (= (addToMapMapFromBucket!951 (Cons!51490 lt!1778543 lt!1778558) (ListMap!4250 Nil!51490)) lt!1779049)))

(declare-fun b!4622385 () Bool)

(declare-fun res!1937857 () Bool)

(assert (=> b!4622385 (=> (not res!1937857) (not e!2883329))))

(assert (=> b!4622385 (= res!1937857 (forall!10800 (toList!4945 (ListMap!4250 Nil!51490)) lambda!191184))))

(declare-fun b!4622386 () Bool)

(assert (=> b!4622386 (= e!2883329 (invariantList!1192 (toList!4945 lt!1779049)))))

(assert (= (and d!1455845 c!791240) b!4622384))

(assert (= (and d!1455845 (not c!791240)) b!4622383))

(assert (= (and b!4622383 res!1937856) b!4622382))

(assert (= (or b!4622384 b!4622383) bm!322338))

(assert (= (or b!4622384 b!4622382) bm!322340))

(assert (= (or b!4622384 b!4622383) bm!322339))

(assert (= (and d!1455845 res!1937858) b!4622385))

(assert (= (and b!4622385 res!1937857) b!4622386))

(declare-fun m!5460499 () Bool)

(assert (=> bm!322339 m!5460499))

(declare-fun m!5460501 () Bool)

(assert (=> b!4622383 m!5460501))

(declare-fun m!5460503 () Bool)

(assert (=> b!4622383 m!5460503))

(declare-fun m!5460505 () Bool)

(assert (=> b!4622383 m!5460505))

(declare-fun m!5460507 () Bool)

(assert (=> b!4622383 m!5460507))

(declare-fun m!5460509 () Bool)

(assert (=> b!4622383 m!5460509))

(declare-fun m!5460511 () Bool)

(assert (=> b!4622383 m!5460511))

(declare-fun m!5460513 () Bool)

(assert (=> b!4622383 m!5460513))

(declare-fun m!5460515 () Bool)

(assert (=> b!4622383 m!5460515))

(assert (=> b!4622383 m!5460505))

(declare-fun m!5460517 () Bool)

(assert (=> b!4622383 m!5460517))

(declare-fun m!5460519 () Bool)

(assert (=> b!4622383 m!5460519))

(assert (=> b!4622383 m!5460507))

(declare-fun m!5460521 () Bool)

(assert (=> b!4622383 m!5460521))

(assert (=> b!4622383 m!5460519))

(declare-fun m!5460523 () Bool)

(assert (=> b!4622386 m!5460523))

(declare-fun m!5460525 () Bool)

(assert (=> d!1455845 m!5460525))

(declare-fun m!5460527 () Bool)

(assert (=> d!1455845 m!5460527))

(declare-fun m!5460529 () Bool)

(assert (=> b!4622385 m!5460529))

(declare-fun m!5460531 () Bool)

(assert (=> bm!322340 m!5460531))

(assert (=> bm!322338 m!5460497))

(assert (=> b!4622002 d!1455845))

(declare-fun bs!1021046 () Bool)

(declare-fun d!1455847 () Bool)

(assert (= bs!1021046 (and d!1455847 d!1455821)))

(declare-fun lambda!191185 () Int)

(assert (=> bs!1021046 (= lambda!191185 lambda!191176)))

(declare-fun bs!1021047 () Bool)

(assert (= bs!1021047 (and d!1455847 d!1455707)))

(assert (=> bs!1021047 (= lambda!191185 lambda!191098)))

(declare-fun bs!1021048 () Bool)

(assert (= bs!1021048 (and d!1455847 d!1455801)))

(assert (=> bs!1021048 (= lambda!191185 lambda!191164)))

(declare-fun bs!1021049 () Bool)

(assert (= bs!1021049 (and d!1455847 d!1455733)))

(assert (=> bs!1021049 (= lambda!191185 lambda!191102)))

(declare-fun bs!1021050 () Bool)

(assert (= bs!1021050 (and d!1455847 d!1455807)))

(assert (=> bs!1021050 (= lambda!191185 lambda!191166)))

(declare-fun bs!1021051 () Bool)

(assert (= bs!1021051 (and d!1455847 b!4622009)))

(assert (=> bs!1021051 (= lambda!191185 lambda!191050)))

(declare-fun bs!1021052 () Bool)

(assert (= bs!1021052 (and d!1455847 d!1455687)))

(assert (=> bs!1021052 (= lambda!191185 lambda!191062)))

(declare-fun lt!1779064 () ListMap!4249)

(assert (=> d!1455847 (invariantList!1192 (toList!4945 lt!1779064))))

(declare-fun e!2883331 () ListMap!4249)

(assert (=> d!1455847 (= lt!1779064 e!2883331)))

(declare-fun c!791241 () Bool)

(assert (=> d!1455847 (= c!791241 ((_ is Cons!51491) (Cons!51491 (tuple2!52409 hash!414 lt!1778558) Nil!51491)))))

(assert (=> d!1455847 (forall!10799 (Cons!51491 (tuple2!52409 hash!414 lt!1778558) Nil!51491) lambda!191185)))

(assert (=> d!1455847 (= (extractMap!1546 (Cons!51491 (tuple2!52409 hash!414 lt!1778558) Nil!51491)) lt!1779064)))

(declare-fun b!4622387 () Bool)

(assert (=> b!4622387 (= e!2883331 (addToMapMapFromBucket!951 (_2!29498 (h!57529 (Cons!51491 (tuple2!52409 hash!414 lt!1778558) Nil!51491))) (extractMap!1546 (t!358635 (Cons!51491 (tuple2!52409 hash!414 lt!1778558) Nil!51491)))))))

(declare-fun b!4622388 () Bool)

(assert (=> b!4622388 (= e!2883331 (ListMap!4250 Nil!51490))))

(assert (= (and d!1455847 c!791241) b!4622387))

(assert (= (and d!1455847 (not c!791241)) b!4622388))

(declare-fun m!5460533 () Bool)

(assert (=> d!1455847 m!5460533))

(declare-fun m!5460535 () Bool)

(assert (=> d!1455847 m!5460535))

(declare-fun m!5460537 () Bool)

(assert (=> b!4622387 m!5460537))

(assert (=> b!4622387 m!5460537))

(declare-fun m!5460539 () Bool)

(assert (=> b!4622387 m!5460539))

(assert (=> b!4622002 d!1455847))

(declare-fun bs!1021053 () Bool)

(declare-fun b!4622391 () Bool)

(assert (= bs!1021053 (and b!4622391 b!4622312)))

(declare-fun lambda!191186 () Int)

(assert (=> bs!1021053 (= (= (ListMap!4250 Nil!51490) lt!1778547) (= lambda!191186 lambda!191161))))

(declare-fun bs!1021054 () Bool)

(assert (= bs!1021054 (and b!4622391 d!1455843)))

(assert (=> bs!1021054 (= (= (ListMap!4250 Nil!51490) lt!1779028) (= lambda!191186 lambda!191180))))

(declare-fun bs!1021055 () Bool)

(assert (= bs!1021055 (and b!4622391 b!4622384)))

(assert (=> bs!1021055 (= lambda!191186 lambda!191181)))

(assert (=> bs!1021053 (= (= (ListMap!4250 Nil!51490) lt!1778927) (= lambda!191186 lambda!191162))))

(declare-fun bs!1021056 () Bool)

(assert (= bs!1021056 (and b!4622391 b!4622313)))

(assert (=> bs!1021056 (= (= (ListMap!4250 Nil!51490) lt!1778547) (= lambda!191186 lambda!191160))))

(declare-fun bs!1021057 () Bool)

(assert (= bs!1021057 (and b!4622391 b!4622383)))

(assert (=> bs!1021057 (= lambda!191186 lambda!191182)))

(declare-fun bs!1021058 () Bool)

(assert (= bs!1021058 (and b!4622391 b!4622378)))

(assert (=> bs!1021058 (= (= (ListMap!4250 Nil!51490) lt!1779026) (= lambda!191186 lambda!191179))))

(declare-fun bs!1021059 () Bool)

(assert (= bs!1021059 (and b!4622391 d!1455743)))

(assert (=> bs!1021059 (= (= (ListMap!4250 Nil!51490) lt!1778929) (= lambda!191186 lambda!191163))))

(assert (=> bs!1021057 (= (= (ListMap!4250 Nil!51490) lt!1779047) (= lambda!191186 lambda!191183))))

(declare-fun bs!1021060 () Bool)

(assert (= bs!1021060 (and b!4622391 d!1455845)))

(assert (=> bs!1021060 (= (= (ListMap!4250 Nil!51490) lt!1779049) (= lambda!191186 lambda!191184))))

(assert (=> bs!1021058 (= lambda!191186 lambda!191178)))

(declare-fun bs!1021061 () Bool)

(assert (= bs!1021061 (and b!4622391 b!4622379)))

(assert (=> bs!1021061 (= lambda!191186 lambda!191177)))

(declare-fun bs!1021062 () Bool)

(assert (= bs!1021062 (and b!4622391 d!1455739)))

(assert (=> bs!1021062 (not (= lambda!191186 lambda!191105))))

(declare-fun bs!1021063 () Bool)

(assert (= bs!1021063 (and b!4622391 d!1455805)))

(assert (=> bs!1021063 (not (= lambda!191186 lambda!191165))))

(assert (=> b!4622391 true))

(declare-fun bs!1021064 () Bool)

(declare-fun b!4622390 () Bool)

(assert (= bs!1021064 (and b!4622390 b!4622312)))

(declare-fun lambda!191187 () Int)

(assert (=> bs!1021064 (= (= (ListMap!4250 Nil!51490) lt!1778547) (= lambda!191187 lambda!191161))))

(declare-fun bs!1021065 () Bool)

(assert (= bs!1021065 (and b!4622390 d!1455843)))

(assert (=> bs!1021065 (= (= (ListMap!4250 Nil!51490) lt!1779028) (= lambda!191187 lambda!191180))))

(declare-fun bs!1021066 () Bool)

(assert (= bs!1021066 (and b!4622390 b!4622384)))

(assert (=> bs!1021066 (= lambda!191187 lambda!191181)))

(assert (=> bs!1021064 (= (= (ListMap!4250 Nil!51490) lt!1778927) (= lambda!191187 lambda!191162))))

(declare-fun bs!1021067 () Bool)

(assert (= bs!1021067 (and b!4622390 b!4622313)))

(assert (=> bs!1021067 (= (= (ListMap!4250 Nil!51490) lt!1778547) (= lambda!191187 lambda!191160))))

(declare-fun bs!1021068 () Bool)

(assert (= bs!1021068 (and b!4622390 b!4622383)))

(assert (=> bs!1021068 (= lambda!191187 lambda!191182)))

(declare-fun bs!1021069 () Bool)

(assert (= bs!1021069 (and b!4622390 b!4622378)))

(assert (=> bs!1021069 (= (= (ListMap!4250 Nil!51490) lt!1779026) (= lambda!191187 lambda!191179))))

(declare-fun bs!1021070 () Bool)

(assert (= bs!1021070 (and b!4622390 d!1455743)))

(assert (=> bs!1021070 (= (= (ListMap!4250 Nil!51490) lt!1778929) (= lambda!191187 lambda!191163))))

(assert (=> bs!1021068 (= (= (ListMap!4250 Nil!51490) lt!1779047) (= lambda!191187 lambda!191183))))

(declare-fun bs!1021071 () Bool)

(assert (= bs!1021071 (and b!4622390 d!1455845)))

(assert (=> bs!1021071 (= (= (ListMap!4250 Nil!51490) lt!1779049) (= lambda!191187 lambda!191184))))

(assert (=> bs!1021069 (= lambda!191187 lambda!191178)))

(declare-fun bs!1021072 () Bool)

(assert (= bs!1021072 (and b!4622390 b!4622391)))

(assert (=> bs!1021072 (= lambda!191187 lambda!191186)))

(declare-fun bs!1021073 () Bool)

(assert (= bs!1021073 (and b!4622390 b!4622379)))

(assert (=> bs!1021073 (= lambda!191187 lambda!191177)))

(declare-fun bs!1021074 () Bool)

(assert (= bs!1021074 (and b!4622390 d!1455739)))

(assert (=> bs!1021074 (not (= lambda!191187 lambda!191105))))

(declare-fun bs!1021075 () Bool)

(assert (= bs!1021075 (and b!4622390 d!1455805)))

(assert (=> bs!1021075 (not (= lambda!191187 lambda!191165))))

(assert (=> b!4622390 true))

(declare-fun lambda!191188 () Int)

(declare-fun lt!1779069 () ListMap!4249)

(assert (=> bs!1021064 (= (= lt!1779069 lt!1778547) (= lambda!191188 lambda!191161))))

(assert (=> bs!1021065 (= (= lt!1779069 lt!1779028) (= lambda!191188 lambda!191180))))

(assert (=> bs!1021066 (= (= lt!1779069 (ListMap!4250 Nil!51490)) (= lambda!191188 lambda!191181))))

(assert (=> bs!1021064 (= (= lt!1779069 lt!1778927) (= lambda!191188 lambda!191162))))

(assert (=> bs!1021067 (= (= lt!1779069 lt!1778547) (= lambda!191188 lambda!191160))))

(assert (=> bs!1021068 (= (= lt!1779069 (ListMap!4250 Nil!51490)) (= lambda!191188 lambda!191182))))

(assert (=> b!4622390 (= (= lt!1779069 (ListMap!4250 Nil!51490)) (= lambda!191188 lambda!191187))))

(assert (=> bs!1021069 (= (= lt!1779069 lt!1779026) (= lambda!191188 lambda!191179))))

(assert (=> bs!1021070 (= (= lt!1779069 lt!1778929) (= lambda!191188 lambda!191163))))

(assert (=> bs!1021068 (= (= lt!1779069 lt!1779047) (= lambda!191188 lambda!191183))))

(assert (=> bs!1021071 (= (= lt!1779069 lt!1779049) (= lambda!191188 lambda!191184))))

(assert (=> bs!1021069 (= (= lt!1779069 (ListMap!4250 Nil!51490)) (= lambda!191188 lambda!191178))))

(assert (=> bs!1021072 (= (= lt!1779069 (ListMap!4250 Nil!51490)) (= lambda!191188 lambda!191186))))

(assert (=> bs!1021073 (= (= lt!1779069 (ListMap!4250 Nil!51490)) (= lambda!191188 lambda!191177))))

(assert (=> bs!1021074 (not (= lambda!191188 lambda!191105))))

(assert (=> bs!1021075 (not (= lambda!191188 lambda!191165))))

(assert (=> b!4622390 true))

(declare-fun bs!1021076 () Bool)

(declare-fun d!1455849 () Bool)

(assert (= bs!1021076 (and d!1455849 d!1455843)))

(declare-fun lt!1779071 () ListMap!4249)

(declare-fun lambda!191189 () Int)

(assert (=> bs!1021076 (= (= lt!1779071 lt!1779028) (= lambda!191189 lambda!191180))))

(declare-fun bs!1021077 () Bool)

(assert (= bs!1021077 (and d!1455849 b!4622384)))

(assert (=> bs!1021077 (= (= lt!1779071 (ListMap!4250 Nil!51490)) (= lambda!191189 lambda!191181))))

(declare-fun bs!1021078 () Bool)

(assert (= bs!1021078 (and d!1455849 b!4622312)))

(assert (=> bs!1021078 (= (= lt!1779071 lt!1778927) (= lambda!191189 lambda!191162))))

(declare-fun bs!1021079 () Bool)

(assert (= bs!1021079 (and d!1455849 b!4622313)))

(assert (=> bs!1021079 (= (= lt!1779071 lt!1778547) (= lambda!191189 lambda!191160))))

(declare-fun bs!1021080 () Bool)

(assert (= bs!1021080 (and d!1455849 b!4622383)))

(assert (=> bs!1021080 (= (= lt!1779071 (ListMap!4250 Nil!51490)) (= lambda!191189 lambda!191182))))

(declare-fun bs!1021081 () Bool)

(assert (= bs!1021081 (and d!1455849 b!4622390)))

(assert (=> bs!1021081 (= (= lt!1779071 (ListMap!4250 Nil!51490)) (= lambda!191189 lambda!191187))))

(declare-fun bs!1021082 () Bool)

(assert (= bs!1021082 (and d!1455849 b!4622378)))

(assert (=> bs!1021082 (= (= lt!1779071 lt!1779026) (= lambda!191189 lambda!191179))))

(declare-fun bs!1021083 () Bool)

(assert (= bs!1021083 (and d!1455849 d!1455743)))

(assert (=> bs!1021083 (= (= lt!1779071 lt!1778929) (= lambda!191189 lambda!191163))))

(assert (=> bs!1021080 (= (= lt!1779071 lt!1779047) (= lambda!191189 lambda!191183))))

(declare-fun bs!1021084 () Bool)

(assert (= bs!1021084 (and d!1455849 d!1455845)))

(assert (=> bs!1021084 (= (= lt!1779071 lt!1779049) (= lambda!191189 lambda!191184))))

(assert (=> bs!1021081 (= (= lt!1779071 lt!1779069) (= lambda!191189 lambda!191188))))

(assert (=> bs!1021078 (= (= lt!1779071 lt!1778547) (= lambda!191189 lambda!191161))))

(assert (=> bs!1021082 (= (= lt!1779071 (ListMap!4250 Nil!51490)) (= lambda!191189 lambda!191178))))

(declare-fun bs!1021085 () Bool)

(assert (= bs!1021085 (and d!1455849 b!4622391)))

(assert (=> bs!1021085 (= (= lt!1779071 (ListMap!4250 Nil!51490)) (= lambda!191189 lambda!191186))))

(declare-fun bs!1021086 () Bool)

(assert (= bs!1021086 (and d!1455849 b!4622379)))

(assert (=> bs!1021086 (= (= lt!1779071 (ListMap!4250 Nil!51490)) (= lambda!191189 lambda!191177))))

(declare-fun bs!1021087 () Bool)

(assert (= bs!1021087 (and d!1455849 d!1455739)))

(assert (=> bs!1021087 (not (= lambda!191189 lambda!191105))))

(declare-fun bs!1021088 () Bool)

(assert (= bs!1021088 (and d!1455849 d!1455805)))

(assert (=> bs!1021088 (not (= lambda!191189 lambda!191165))))

(assert (=> d!1455849 true))

(declare-fun bm!322341 () Bool)

(declare-fun call!322346 () Unit!111269)

(assert (=> bm!322341 (= call!322346 (lemmaContainsAllItsOwnKeys!494 (ListMap!4250 Nil!51490)))))

(declare-fun lt!1779084 () ListMap!4249)

(declare-fun c!791242 () Bool)

(declare-fun bm!322342 () Bool)

(declare-fun call!322348 () Bool)

(assert (=> bm!322342 (= call!322348 (forall!10800 (ite c!791242 (toList!4945 (ListMap!4250 Nil!51490)) (toList!4945 lt!1779084)) (ite c!791242 lambda!191186 lambda!191188)))))

(declare-fun b!4622389 () Bool)

(declare-fun e!2883334 () Bool)

(declare-fun call!322347 () Bool)

(assert (=> b!4622389 (= e!2883334 call!322347)))

(declare-fun e!2883332 () ListMap!4249)

(assert (=> b!4622391 (= e!2883332 (ListMap!4250 Nil!51490))))

(declare-fun lt!1779079 () Unit!111269)

(assert (=> b!4622391 (= lt!1779079 call!322346)))

(assert (=> b!4622391 call!322347))

(declare-fun lt!1779076 () Unit!111269)

(assert (=> b!4622391 (= lt!1779076 lt!1779079)))

(assert (=> b!4622391 call!322348))

(declare-fun lt!1779067 () Unit!111269)

(declare-fun Unit!111368 () Unit!111269)

(assert (=> b!4622391 (= lt!1779067 Unit!111368)))

(declare-fun bm!322343 () Bool)

(assert (=> bm!322343 (= call!322347 (forall!10800 (toList!4945 (ListMap!4250 Nil!51490)) (ite c!791242 lambda!191186 lambda!191188)))))

(assert (=> b!4622390 (= e!2883332 lt!1779069)))

(assert (=> b!4622390 (= lt!1779084 (+!1856 (ListMap!4250 Nil!51490) (h!57528 lt!1778558)))))

(assert (=> b!4622390 (= lt!1779069 (addToMapMapFromBucket!951 (t!358634 lt!1778558) (+!1856 (ListMap!4250 Nil!51490) (h!57528 lt!1778558))))))

(declare-fun lt!1779078 () Unit!111269)

(assert (=> b!4622390 (= lt!1779078 call!322346)))

(assert (=> b!4622390 (forall!10800 (toList!4945 (ListMap!4250 Nil!51490)) lambda!191187)))

(declare-fun lt!1779070 () Unit!111269)

(assert (=> b!4622390 (= lt!1779070 lt!1779078)))

(assert (=> b!4622390 call!322348))

(declare-fun lt!1779077 () Unit!111269)

(declare-fun Unit!111369 () Unit!111269)

(assert (=> b!4622390 (= lt!1779077 Unit!111369)))

(assert (=> b!4622390 (forall!10800 (t!358634 lt!1778558) lambda!191188)))

(declare-fun lt!1779072 () Unit!111269)

(declare-fun Unit!111370 () Unit!111269)

(assert (=> b!4622390 (= lt!1779072 Unit!111370)))

(declare-fun lt!1779080 () Unit!111269)

(declare-fun Unit!111371 () Unit!111269)

(assert (=> b!4622390 (= lt!1779080 Unit!111371)))

(declare-fun lt!1779075 () Unit!111269)

(assert (=> b!4622390 (= lt!1779075 (forallContained!3024 (toList!4945 lt!1779084) lambda!191188 (h!57528 lt!1778558)))))

(assert (=> b!4622390 (contains!14505 lt!1779084 (_1!29497 (h!57528 lt!1778558)))))

(declare-fun lt!1779065 () Unit!111269)

(declare-fun Unit!111372 () Unit!111269)

(assert (=> b!4622390 (= lt!1779065 Unit!111372)))

(assert (=> b!4622390 (contains!14505 lt!1779069 (_1!29497 (h!57528 lt!1778558)))))

(declare-fun lt!1779074 () Unit!111269)

(declare-fun Unit!111373 () Unit!111269)

(assert (=> b!4622390 (= lt!1779074 Unit!111373)))

(assert (=> b!4622390 (forall!10800 lt!1778558 lambda!191188)))

(declare-fun lt!1779066 () Unit!111269)

(declare-fun Unit!111374 () Unit!111269)

(assert (=> b!4622390 (= lt!1779066 Unit!111374)))

(assert (=> b!4622390 (forall!10800 (toList!4945 lt!1779084) lambda!191188)))

(declare-fun lt!1779081 () Unit!111269)

(declare-fun Unit!111375 () Unit!111269)

(assert (=> b!4622390 (= lt!1779081 Unit!111375)))

(declare-fun lt!1779083 () Unit!111269)

(declare-fun Unit!111376 () Unit!111269)

(assert (=> b!4622390 (= lt!1779083 Unit!111376)))

(declare-fun lt!1779068 () Unit!111269)

(assert (=> b!4622390 (= lt!1779068 (addForallContainsKeyThenBeforeAdding!493 (ListMap!4250 Nil!51490) lt!1779069 (_1!29497 (h!57528 lt!1778558)) (_2!29497 (h!57528 lt!1778558))))))

(assert (=> b!4622390 (forall!10800 (toList!4945 (ListMap!4250 Nil!51490)) lambda!191188)))

(declare-fun lt!1779085 () Unit!111269)

(assert (=> b!4622390 (= lt!1779085 lt!1779068)))

(assert (=> b!4622390 (forall!10800 (toList!4945 (ListMap!4250 Nil!51490)) lambda!191188)))

(declare-fun lt!1779073 () Unit!111269)

(declare-fun Unit!111377 () Unit!111269)

(assert (=> b!4622390 (= lt!1779073 Unit!111377)))

(declare-fun res!1937859 () Bool)

(assert (=> b!4622390 (= res!1937859 (forall!10800 lt!1778558 lambda!191188))))

(assert (=> b!4622390 (=> (not res!1937859) (not e!2883334))))

(assert (=> b!4622390 e!2883334))

(declare-fun lt!1779082 () Unit!111269)

(declare-fun Unit!111378 () Unit!111269)

(assert (=> b!4622390 (= lt!1779082 Unit!111378)))

(declare-fun e!2883333 () Bool)

(assert (=> d!1455849 e!2883333))

(declare-fun res!1937861 () Bool)

(assert (=> d!1455849 (=> (not res!1937861) (not e!2883333))))

(assert (=> d!1455849 (= res!1937861 (forall!10800 lt!1778558 lambda!191189))))

(assert (=> d!1455849 (= lt!1779071 e!2883332)))

(assert (=> d!1455849 (= c!791242 ((_ is Nil!51490) lt!1778558))))

(assert (=> d!1455849 (noDuplicateKeys!1490 lt!1778558)))

(assert (=> d!1455849 (= (addToMapMapFromBucket!951 lt!1778558 (ListMap!4250 Nil!51490)) lt!1779071)))

(declare-fun b!4622392 () Bool)

(declare-fun res!1937860 () Bool)

(assert (=> b!4622392 (=> (not res!1937860) (not e!2883333))))

(assert (=> b!4622392 (= res!1937860 (forall!10800 (toList!4945 (ListMap!4250 Nil!51490)) lambda!191189))))

(declare-fun b!4622393 () Bool)

(assert (=> b!4622393 (= e!2883333 (invariantList!1192 (toList!4945 lt!1779071)))))

(assert (= (and d!1455849 c!791242) b!4622391))

(assert (= (and d!1455849 (not c!791242)) b!4622390))

(assert (= (and b!4622390 res!1937859) b!4622389))

(assert (= (or b!4622391 b!4622390) bm!322341))

(assert (= (or b!4622391 b!4622389) bm!322343))

(assert (= (or b!4622391 b!4622390) bm!322342))

(assert (= (and d!1455849 res!1937861) b!4622392))

(assert (= (and b!4622392 res!1937860) b!4622393))

(declare-fun m!5460541 () Bool)

(assert (=> bm!322342 m!5460541))

(declare-fun m!5460543 () Bool)

(assert (=> b!4622390 m!5460543))

(declare-fun m!5460545 () Bool)

(assert (=> b!4622390 m!5460545))

(declare-fun m!5460547 () Bool)

(assert (=> b!4622390 m!5460547))

(declare-fun m!5460549 () Bool)

(assert (=> b!4622390 m!5460549))

(declare-fun m!5460551 () Bool)

(assert (=> b!4622390 m!5460551))

(declare-fun m!5460553 () Bool)

(assert (=> b!4622390 m!5460553))

(declare-fun m!5460555 () Bool)

(assert (=> b!4622390 m!5460555))

(declare-fun m!5460557 () Bool)

(assert (=> b!4622390 m!5460557))

(assert (=> b!4622390 m!5460547))

(declare-fun m!5460559 () Bool)

(assert (=> b!4622390 m!5460559))

(declare-fun m!5460561 () Bool)

(assert (=> b!4622390 m!5460561))

(assert (=> b!4622390 m!5460549))

(declare-fun m!5460563 () Bool)

(assert (=> b!4622390 m!5460563))

(assert (=> b!4622390 m!5460561))

(declare-fun m!5460565 () Bool)

(assert (=> b!4622393 m!5460565))

(declare-fun m!5460567 () Bool)

(assert (=> d!1455849 m!5460567))

(assert (=> d!1455849 m!5460343))

(declare-fun m!5460569 () Bool)

(assert (=> b!4622392 m!5460569))

(declare-fun m!5460571 () Bool)

(assert (=> bm!322343 m!5460571))

(assert (=> bm!322341 m!5460497))

(assert (=> b!4622002 d!1455849))

(declare-fun bs!1021089 () Bool)

(declare-fun d!1455851 () Bool)

(assert (= bs!1021089 (and d!1455851 d!1455821)))

(declare-fun lambda!191190 () Int)

(assert (=> bs!1021089 (= lambda!191190 lambda!191176)))

(declare-fun bs!1021090 () Bool)

(assert (= bs!1021090 (and d!1455851 d!1455707)))

(assert (=> bs!1021090 (= lambda!191190 lambda!191098)))

(declare-fun bs!1021091 () Bool)

(assert (= bs!1021091 (and d!1455851 d!1455733)))

(assert (=> bs!1021091 (= lambda!191190 lambda!191102)))

(declare-fun bs!1021092 () Bool)

(assert (= bs!1021092 (and d!1455851 d!1455807)))

(assert (=> bs!1021092 (= lambda!191190 lambda!191166)))

(declare-fun bs!1021093 () Bool)

(assert (= bs!1021093 (and d!1455851 b!4622009)))

(assert (=> bs!1021093 (= lambda!191190 lambda!191050)))

(declare-fun bs!1021094 () Bool)

(assert (= bs!1021094 (and d!1455851 d!1455687)))

(assert (=> bs!1021094 (= lambda!191190 lambda!191062)))

(declare-fun bs!1021095 () Bool)

(assert (= bs!1021095 (and d!1455851 d!1455847)))

(assert (=> bs!1021095 (= lambda!191190 lambda!191185)))

(declare-fun bs!1021096 () Bool)

(assert (= bs!1021096 (and d!1455851 d!1455801)))

(assert (=> bs!1021096 (= lambda!191190 lambda!191164)))

(declare-fun lt!1779086 () ListMap!4249)

(assert (=> d!1455851 (invariantList!1192 (toList!4945 lt!1779086))))

(declare-fun e!2883335 () ListMap!4249)

(assert (=> d!1455851 (= lt!1779086 e!2883335)))

(declare-fun c!791243 () Bool)

(assert (=> d!1455851 (= c!791243 ((_ is Cons!51491) lt!1778554))))

(assert (=> d!1455851 (forall!10799 lt!1778554 lambda!191190)))

(assert (=> d!1455851 (= (extractMap!1546 lt!1778554) lt!1779086)))

(declare-fun b!4622394 () Bool)

(assert (=> b!4622394 (= e!2883335 (addToMapMapFromBucket!951 (_2!29498 (h!57529 lt!1778554)) (extractMap!1546 (t!358635 lt!1778554))))))

(declare-fun b!4622395 () Bool)

(assert (=> b!4622395 (= e!2883335 (ListMap!4250 Nil!51490))))

(assert (= (and d!1455851 c!791243) b!4622394))

(assert (= (and d!1455851 (not c!791243)) b!4622395))

(declare-fun m!5460573 () Bool)

(assert (=> d!1455851 m!5460573))

(declare-fun m!5460575 () Bool)

(assert (=> d!1455851 m!5460575))

(declare-fun m!5460577 () Bool)

(assert (=> b!4622394 m!5460577))

(assert (=> b!4622394 m!5460577))

(declare-fun m!5460579 () Bool)

(assert (=> b!4622394 m!5460579))

(assert (=> b!4622002 d!1455851))

(declare-fun bs!1021097 () Bool)

(declare-fun b!4622398 () Bool)

(assert (= bs!1021097 (and b!4622398 d!1455849)))

(declare-fun lambda!191191 () Int)

(assert (=> bs!1021097 (= (= (ListMap!4250 Nil!51490) lt!1779071) (= lambda!191191 lambda!191189))))

(declare-fun bs!1021098 () Bool)

(assert (= bs!1021098 (and b!4622398 d!1455843)))

(assert (=> bs!1021098 (= (= (ListMap!4250 Nil!51490) lt!1779028) (= lambda!191191 lambda!191180))))

(declare-fun bs!1021099 () Bool)

(assert (= bs!1021099 (and b!4622398 b!4622384)))

(assert (=> bs!1021099 (= lambda!191191 lambda!191181)))

(declare-fun bs!1021100 () Bool)

(assert (= bs!1021100 (and b!4622398 b!4622312)))

(assert (=> bs!1021100 (= (= (ListMap!4250 Nil!51490) lt!1778927) (= lambda!191191 lambda!191162))))

(declare-fun bs!1021101 () Bool)

(assert (= bs!1021101 (and b!4622398 b!4622313)))

(assert (=> bs!1021101 (= (= (ListMap!4250 Nil!51490) lt!1778547) (= lambda!191191 lambda!191160))))

(declare-fun bs!1021102 () Bool)

(assert (= bs!1021102 (and b!4622398 b!4622383)))

(assert (=> bs!1021102 (= lambda!191191 lambda!191182)))

(declare-fun bs!1021103 () Bool)

(assert (= bs!1021103 (and b!4622398 b!4622390)))

(assert (=> bs!1021103 (= lambda!191191 lambda!191187)))

(declare-fun bs!1021104 () Bool)

(assert (= bs!1021104 (and b!4622398 b!4622378)))

(assert (=> bs!1021104 (= (= (ListMap!4250 Nil!51490) lt!1779026) (= lambda!191191 lambda!191179))))

(declare-fun bs!1021105 () Bool)

(assert (= bs!1021105 (and b!4622398 d!1455743)))

(assert (=> bs!1021105 (= (= (ListMap!4250 Nil!51490) lt!1778929) (= lambda!191191 lambda!191163))))

(assert (=> bs!1021102 (= (= (ListMap!4250 Nil!51490) lt!1779047) (= lambda!191191 lambda!191183))))

(declare-fun bs!1021106 () Bool)

(assert (= bs!1021106 (and b!4622398 d!1455845)))

(assert (=> bs!1021106 (= (= (ListMap!4250 Nil!51490) lt!1779049) (= lambda!191191 lambda!191184))))

(assert (=> bs!1021103 (= (= (ListMap!4250 Nil!51490) lt!1779069) (= lambda!191191 lambda!191188))))

(assert (=> bs!1021100 (= (= (ListMap!4250 Nil!51490) lt!1778547) (= lambda!191191 lambda!191161))))

(assert (=> bs!1021104 (= lambda!191191 lambda!191178)))

(declare-fun bs!1021107 () Bool)

(assert (= bs!1021107 (and b!4622398 b!4622391)))

(assert (=> bs!1021107 (= lambda!191191 lambda!191186)))

(declare-fun bs!1021108 () Bool)

(assert (= bs!1021108 (and b!4622398 b!4622379)))

(assert (=> bs!1021108 (= lambda!191191 lambda!191177)))

(declare-fun bs!1021109 () Bool)

(assert (= bs!1021109 (and b!4622398 d!1455739)))

(assert (=> bs!1021109 (not (= lambda!191191 lambda!191105))))

(declare-fun bs!1021110 () Bool)

(assert (= bs!1021110 (and b!4622398 d!1455805)))

(assert (=> bs!1021110 (not (= lambda!191191 lambda!191165))))

(assert (=> b!4622398 true))

(declare-fun bs!1021111 () Bool)

(declare-fun b!4622397 () Bool)

(assert (= bs!1021111 (and b!4622397 d!1455849)))

(declare-fun lambda!191192 () Int)

(assert (=> bs!1021111 (= (= (ListMap!4250 Nil!51490) lt!1779071) (= lambda!191192 lambda!191189))))

(declare-fun bs!1021112 () Bool)

(assert (= bs!1021112 (and b!4622397 d!1455843)))

(assert (=> bs!1021112 (= (= (ListMap!4250 Nil!51490) lt!1779028) (= lambda!191192 lambda!191180))))

(declare-fun bs!1021113 () Bool)

(assert (= bs!1021113 (and b!4622397 b!4622384)))

(assert (=> bs!1021113 (= lambda!191192 lambda!191181)))

(declare-fun bs!1021114 () Bool)

(assert (= bs!1021114 (and b!4622397 b!4622312)))

(assert (=> bs!1021114 (= (= (ListMap!4250 Nil!51490) lt!1778927) (= lambda!191192 lambda!191162))))

(declare-fun bs!1021115 () Bool)

(assert (= bs!1021115 (and b!4622397 b!4622313)))

(assert (=> bs!1021115 (= (= (ListMap!4250 Nil!51490) lt!1778547) (= lambda!191192 lambda!191160))))

(declare-fun bs!1021116 () Bool)

(assert (= bs!1021116 (and b!4622397 b!4622383)))

(assert (=> bs!1021116 (= lambda!191192 lambda!191182)))

(declare-fun bs!1021117 () Bool)

(assert (= bs!1021117 (and b!4622397 b!4622390)))

(assert (=> bs!1021117 (= lambda!191192 lambda!191187)))

(declare-fun bs!1021118 () Bool)

(assert (= bs!1021118 (and b!4622397 b!4622378)))

(assert (=> bs!1021118 (= (= (ListMap!4250 Nil!51490) lt!1779026) (= lambda!191192 lambda!191179))))

(declare-fun bs!1021119 () Bool)

(assert (= bs!1021119 (and b!4622397 b!4622398)))

(assert (=> bs!1021119 (= lambda!191192 lambda!191191)))

(declare-fun bs!1021120 () Bool)

(assert (= bs!1021120 (and b!4622397 d!1455743)))

(assert (=> bs!1021120 (= (= (ListMap!4250 Nil!51490) lt!1778929) (= lambda!191192 lambda!191163))))

(assert (=> bs!1021116 (= (= (ListMap!4250 Nil!51490) lt!1779047) (= lambda!191192 lambda!191183))))

(declare-fun bs!1021121 () Bool)

(assert (= bs!1021121 (and b!4622397 d!1455845)))

(assert (=> bs!1021121 (= (= (ListMap!4250 Nil!51490) lt!1779049) (= lambda!191192 lambda!191184))))

(assert (=> bs!1021117 (= (= (ListMap!4250 Nil!51490) lt!1779069) (= lambda!191192 lambda!191188))))

(assert (=> bs!1021114 (= (= (ListMap!4250 Nil!51490) lt!1778547) (= lambda!191192 lambda!191161))))

(assert (=> bs!1021118 (= lambda!191192 lambda!191178)))

(declare-fun bs!1021122 () Bool)

(assert (= bs!1021122 (and b!4622397 b!4622391)))

(assert (=> bs!1021122 (= lambda!191192 lambda!191186)))

(declare-fun bs!1021123 () Bool)

(assert (= bs!1021123 (and b!4622397 b!4622379)))

(assert (=> bs!1021123 (= lambda!191192 lambda!191177)))

(declare-fun bs!1021124 () Bool)

(assert (= bs!1021124 (and b!4622397 d!1455739)))

(assert (=> bs!1021124 (not (= lambda!191192 lambda!191105))))

(declare-fun bs!1021125 () Bool)

(assert (= bs!1021125 (and b!4622397 d!1455805)))

(assert (=> bs!1021125 (not (= lambda!191192 lambda!191165))))

(assert (=> b!4622397 true))

(declare-fun lt!1779091 () ListMap!4249)

(declare-fun lambda!191193 () Int)

(assert (=> bs!1021111 (= (= lt!1779091 lt!1779071) (= lambda!191193 lambda!191189))))

(assert (=> bs!1021112 (= (= lt!1779091 lt!1779028) (= lambda!191193 lambda!191180))))

(assert (=> bs!1021113 (= (= lt!1779091 (ListMap!4250 Nil!51490)) (= lambda!191193 lambda!191181))))

(assert (=> bs!1021114 (= (= lt!1779091 lt!1778927) (= lambda!191193 lambda!191162))))

(assert (=> bs!1021115 (= (= lt!1779091 lt!1778547) (= lambda!191193 lambda!191160))))

(assert (=> bs!1021116 (= (= lt!1779091 (ListMap!4250 Nil!51490)) (= lambda!191193 lambda!191182))))

(assert (=> bs!1021117 (= (= lt!1779091 (ListMap!4250 Nil!51490)) (= lambda!191193 lambda!191187))))

(assert (=> bs!1021118 (= (= lt!1779091 lt!1779026) (= lambda!191193 lambda!191179))))

(assert (=> bs!1021119 (= (= lt!1779091 (ListMap!4250 Nil!51490)) (= lambda!191193 lambda!191191))))

(assert (=> b!4622397 (= (= lt!1779091 (ListMap!4250 Nil!51490)) (= lambda!191193 lambda!191192))))

(assert (=> bs!1021120 (= (= lt!1779091 lt!1778929) (= lambda!191193 lambda!191163))))

(assert (=> bs!1021116 (= (= lt!1779091 lt!1779047) (= lambda!191193 lambda!191183))))

(assert (=> bs!1021121 (= (= lt!1779091 lt!1779049) (= lambda!191193 lambda!191184))))

(assert (=> bs!1021117 (= (= lt!1779091 lt!1779069) (= lambda!191193 lambda!191188))))

(assert (=> bs!1021114 (= (= lt!1779091 lt!1778547) (= lambda!191193 lambda!191161))))

(assert (=> bs!1021118 (= (= lt!1779091 (ListMap!4250 Nil!51490)) (= lambda!191193 lambda!191178))))

(assert (=> bs!1021122 (= (= lt!1779091 (ListMap!4250 Nil!51490)) (= lambda!191193 lambda!191186))))

(assert (=> bs!1021123 (= (= lt!1779091 (ListMap!4250 Nil!51490)) (= lambda!191193 lambda!191177))))

(assert (=> bs!1021124 (not (= lambda!191193 lambda!191105))))

(assert (=> bs!1021125 (not (= lambda!191193 lambda!191165))))

(assert (=> b!4622397 true))

(declare-fun bs!1021126 () Bool)

(declare-fun d!1455853 () Bool)

(assert (= bs!1021126 (and d!1455853 d!1455849)))

(declare-fun lambda!191194 () Int)

(declare-fun lt!1779093 () ListMap!4249)

(assert (=> bs!1021126 (= (= lt!1779093 lt!1779071) (= lambda!191194 lambda!191189))))

(declare-fun bs!1021127 () Bool)

(assert (= bs!1021127 (and d!1455853 d!1455843)))

(assert (=> bs!1021127 (= (= lt!1779093 lt!1779028) (= lambda!191194 lambda!191180))))

(declare-fun bs!1021128 () Bool)

(assert (= bs!1021128 (and d!1455853 b!4622384)))

(assert (=> bs!1021128 (= (= lt!1779093 (ListMap!4250 Nil!51490)) (= lambda!191194 lambda!191181))))

(declare-fun bs!1021129 () Bool)

(assert (= bs!1021129 (and d!1455853 b!4622312)))

(assert (=> bs!1021129 (= (= lt!1779093 lt!1778927) (= lambda!191194 lambda!191162))))

(declare-fun bs!1021130 () Bool)

(assert (= bs!1021130 (and d!1455853 b!4622313)))

(assert (=> bs!1021130 (= (= lt!1779093 lt!1778547) (= lambda!191194 lambda!191160))))

(declare-fun bs!1021131 () Bool)

(assert (= bs!1021131 (and d!1455853 b!4622383)))

(assert (=> bs!1021131 (= (= lt!1779093 (ListMap!4250 Nil!51490)) (= lambda!191194 lambda!191182))))

(declare-fun bs!1021132 () Bool)

(assert (= bs!1021132 (and d!1455853 b!4622390)))

(assert (=> bs!1021132 (= (= lt!1779093 (ListMap!4250 Nil!51490)) (= lambda!191194 lambda!191187))))

(declare-fun bs!1021133 () Bool)

(assert (= bs!1021133 (and d!1455853 b!4622378)))

(assert (=> bs!1021133 (= (= lt!1779093 lt!1779026) (= lambda!191194 lambda!191179))))

(declare-fun bs!1021134 () Bool)

(assert (= bs!1021134 (and d!1455853 b!4622398)))

(assert (=> bs!1021134 (= (= lt!1779093 (ListMap!4250 Nil!51490)) (= lambda!191194 lambda!191191))))

(declare-fun bs!1021135 () Bool)

(assert (= bs!1021135 (and d!1455853 b!4622397)))

(assert (=> bs!1021135 (= (= lt!1779093 (ListMap!4250 Nil!51490)) (= lambda!191194 lambda!191192))))

(declare-fun bs!1021136 () Bool)

(assert (= bs!1021136 (and d!1455853 d!1455743)))

(assert (=> bs!1021136 (= (= lt!1779093 lt!1778929) (= lambda!191194 lambda!191163))))

(assert (=> bs!1021135 (= (= lt!1779093 lt!1779091) (= lambda!191194 lambda!191193))))

(assert (=> bs!1021131 (= (= lt!1779093 lt!1779047) (= lambda!191194 lambda!191183))))

(declare-fun bs!1021137 () Bool)

(assert (= bs!1021137 (and d!1455853 d!1455845)))

(assert (=> bs!1021137 (= (= lt!1779093 lt!1779049) (= lambda!191194 lambda!191184))))

(assert (=> bs!1021132 (= (= lt!1779093 lt!1779069) (= lambda!191194 lambda!191188))))

(assert (=> bs!1021129 (= (= lt!1779093 lt!1778547) (= lambda!191194 lambda!191161))))

(assert (=> bs!1021133 (= (= lt!1779093 (ListMap!4250 Nil!51490)) (= lambda!191194 lambda!191178))))

(declare-fun bs!1021138 () Bool)

(assert (= bs!1021138 (and d!1455853 b!4622391)))

(assert (=> bs!1021138 (= (= lt!1779093 (ListMap!4250 Nil!51490)) (= lambda!191194 lambda!191186))))

(declare-fun bs!1021139 () Bool)

(assert (= bs!1021139 (and d!1455853 b!4622379)))

(assert (=> bs!1021139 (= (= lt!1779093 (ListMap!4250 Nil!51490)) (= lambda!191194 lambda!191177))))

(declare-fun bs!1021140 () Bool)

(assert (= bs!1021140 (and d!1455853 d!1455739)))

(assert (=> bs!1021140 (not (= lambda!191194 lambda!191105))))

(declare-fun bs!1021141 () Bool)

(assert (= bs!1021141 (and d!1455853 d!1455805)))

(assert (=> bs!1021141 (not (= lambda!191194 lambda!191165))))

(assert (=> d!1455853 true))

(declare-fun bm!322344 () Bool)

(declare-fun call!322349 () Unit!111269)

(assert (=> bm!322344 (= call!322349 (lemmaContainsAllItsOwnKeys!494 (ListMap!4250 Nil!51490)))))

(declare-fun lt!1779106 () ListMap!4249)

(declare-fun c!791244 () Bool)

(declare-fun bm!322345 () Bool)

(declare-fun call!322351 () Bool)

(assert (=> bm!322345 (= call!322351 (forall!10800 (ite c!791244 (toList!4945 (ListMap!4250 Nil!51490)) (toList!4945 lt!1779106)) (ite c!791244 lambda!191191 lambda!191193)))))

(declare-fun b!4622396 () Bool)

(declare-fun e!2883338 () Bool)

(declare-fun call!322350 () Bool)

(assert (=> b!4622396 (= e!2883338 call!322350)))

(declare-fun e!2883336 () ListMap!4249)

(assert (=> b!4622398 (= e!2883336 (ListMap!4250 Nil!51490))))

(declare-fun lt!1779101 () Unit!111269)

(assert (=> b!4622398 (= lt!1779101 call!322349)))

(assert (=> b!4622398 call!322350))

(declare-fun lt!1779098 () Unit!111269)

(assert (=> b!4622398 (= lt!1779098 lt!1779101)))

(assert (=> b!4622398 call!322351))

(declare-fun lt!1779089 () Unit!111269)

(declare-fun Unit!111380 () Unit!111269)

(assert (=> b!4622398 (= lt!1779089 Unit!111380)))

(declare-fun bm!322346 () Bool)

(assert (=> bm!322346 (= call!322350 (forall!10800 (toList!4945 (ListMap!4250 Nil!51490)) (ite c!791244 lambda!191191 lambda!191193)))))

(assert (=> b!4622397 (= e!2883336 lt!1779091)))

(assert (=> b!4622397 (= lt!1779106 (+!1856 (ListMap!4250 Nil!51490) (h!57528 lt!1778544)))))

(assert (=> b!4622397 (= lt!1779091 (addToMapMapFromBucket!951 (t!358634 lt!1778544) (+!1856 (ListMap!4250 Nil!51490) (h!57528 lt!1778544))))))

(declare-fun lt!1779100 () Unit!111269)

(assert (=> b!4622397 (= lt!1779100 call!322349)))

(assert (=> b!4622397 (forall!10800 (toList!4945 (ListMap!4250 Nil!51490)) lambda!191192)))

(declare-fun lt!1779092 () Unit!111269)

(assert (=> b!4622397 (= lt!1779092 lt!1779100)))

(assert (=> b!4622397 call!322351))

(declare-fun lt!1779099 () Unit!111269)

(declare-fun Unit!111381 () Unit!111269)

(assert (=> b!4622397 (= lt!1779099 Unit!111381)))

(assert (=> b!4622397 (forall!10800 (t!358634 lt!1778544) lambda!191193)))

(declare-fun lt!1779094 () Unit!111269)

(declare-fun Unit!111382 () Unit!111269)

(assert (=> b!4622397 (= lt!1779094 Unit!111382)))

(declare-fun lt!1779102 () Unit!111269)

(declare-fun Unit!111383 () Unit!111269)

(assert (=> b!4622397 (= lt!1779102 Unit!111383)))

(declare-fun lt!1779097 () Unit!111269)

(assert (=> b!4622397 (= lt!1779097 (forallContained!3024 (toList!4945 lt!1779106) lambda!191193 (h!57528 lt!1778544)))))

(assert (=> b!4622397 (contains!14505 lt!1779106 (_1!29497 (h!57528 lt!1778544)))))

(declare-fun lt!1779087 () Unit!111269)

(declare-fun Unit!111384 () Unit!111269)

(assert (=> b!4622397 (= lt!1779087 Unit!111384)))

(assert (=> b!4622397 (contains!14505 lt!1779091 (_1!29497 (h!57528 lt!1778544)))))

(declare-fun lt!1779096 () Unit!111269)

(declare-fun Unit!111385 () Unit!111269)

(assert (=> b!4622397 (= lt!1779096 Unit!111385)))

(assert (=> b!4622397 (forall!10800 lt!1778544 lambda!191193)))

(declare-fun lt!1779088 () Unit!111269)

(declare-fun Unit!111386 () Unit!111269)

(assert (=> b!4622397 (= lt!1779088 Unit!111386)))

(assert (=> b!4622397 (forall!10800 (toList!4945 lt!1779106) lambda!191193)))

(declare-fun lt!1779103 () Unit!111269)

(declare-fun Unit!111387 () Unit!111269)

(assert (=> b!4622397 (= lt!1779103 Unit!111387)))

(declare-fun lt!1779105 () Unit!111269)

(declare-fun Unit!111388 () Unit!111269)

(assert (=> b!4622397 (= lt!1779105 Unit!111388)))

(declare-fun lt!1779090 () Unit!111269)

(assert (=> b!4622397 (= lt!1779090 (addForallContainsKeyThenBeforeAdding!493 (ListMap!4250 Nil!51490) lt!1779091 (_1!29497 (h!57528 lt!1778544)) (_2!29497 (h!57528 lt!1778544))))))

(assert (=> b!4622397 (forall!10800 (toList!4945 (ListMap!4250 Nil!51490)) lambda!191193)))

(declare-fun lt!1779107 () Unit!111269)

(assert (=> b!4622397 (= lt!1779107 lt!1779090)))

(assert (=> b!4622397 (forall!10800 (toList!4945 (ListMap!4250 Nil!51490)) lambda!191193)))

(declare-fun lt!1779095 () Unit!111269)

(declare-fun Unit!111389 () Unit!111269)

(assert (=> b!4622397 (= lt!1779095 Unit!111389)))

(declare-fun res!1937862 () Bool)

(assert (=> b!4622397 (= res!1937862 (forall!10800 lt!1778544 lambda!191193))))

(assert (=> b!4622397 (=> (not res!1937862) (not e!2883338))))

(assert (=> b!4622397 e!2883338))

(declare-fun lt!1779104 () Unit!111269)

(declare-fun Unit!111390 () Unit!111269)

(assert (=> b!4622397 (= lt!1779104 Unit!111390)))

(declare-fun e!2883337 () Bool)

(assert (=> d!1455853 e!2883337))

(declare-fun res!1937864 () Bool)

(assert (=> d!1455853 (=> (not res!1937864) (not e!2883337))))

(assert (=> d!1455853 (= res!1937864 (forall!10800 lt!1778544 lambda!191194))))

(assert (=> d!1455853 (= lt!1779093 e!2883336)))

(assert (=> d!1455853 (= c!791244 ((_ is Nil!51490) lt!1778544))))

(assert (=> d!1455853 (noDuplicateKeys!1490 lt!1778544)))

(assert (=> d!1455853 (= (addToMapMapFromBucket!951 lt!1778544 (ListMap!4250 Nil!51490)) lt!1779093)))

(declare-fun b!4622399 () Bool)

(declare-fun res!1937863 () Bool)

(assert (=> b!4622399 (=> (not res!1937863) (not e!2883337))))

(assert (=> b!4622399 (= res!1937863 (forall!10800 (toList!4945 (ListMap!4250 Nil!51490)) lambda!191194))))

(declare-fun b!4622400 () Bool)

(assert (=> b!4622400 (= e!2883337 (invariantList!1192 (toList!4945 lt!1779093)))))

(assert (= (and d!1455853 c!791244) b!4622398))

(assert (= (and d!1455853 (not c!791244)) b!4622397))

(assert (= (and b!4622397 res!1937862) b!4622396))

(assert (= (or b!4622398 b!4622397) bm!322344))

(assert (= (or b!4622398 b!4622396) bm!322346))

(assert (= (or b!4622398 b!4622397) bm!322345))

(assert (= (and d!1455853 res!1937864) b!4622399))

(assert (= (and b!4622399 res!1937863) b!4622400))

(declare-fun m!5460581 () Bool)

(assert (=> bm!322345 m!5460581))

(declare-fun m!5460583 () Bool)

(assert (=> b!4622397 m!5460583))

(declare-fun m!5460585 () Bool)

(assert (=> b!4622397 m!5460585))

(declare-fun m!5460587 () Bool)

(assert (=> b!4622397 m!5460587))

(declare-fun m!5460589 () Bool)

(assert (=> b!4622397 m!5460589))

(declare-fun m!5460591 () Bool)

(assert (=> b!4622397 m!5460591))

(declare-fun m!5460593 () Bool)

(assert (=> b!4622397 m!5460593))

(declare-fun m!5460595 () Bool)

(assert (=> b!4622397 m!5460595))

(declare-fun m!5460597 () Bool)

(assert (=> b!4622397 m!5460597))

(assert (=> b!4622397 m!5460587))

(declare-fun m!5460599 () Bool)

(assert (=> b!4622397 m!5460599))

(declare-fun m!5460601 () Bool)

(assert (=> b!4622397 m!5460601))

(assert (=> b!4622397 m!5460589))

(declare-fun m!5460603 () Bool)

(assert (=> b!4622397 m!5460603))

(assert (=> b!4622397 m!5460601))

(declare-fun m!5460605 () Bool)

(assert (=> b!4622400 m!5460605))

(declare-fun m!5460607 () Bool)

(assert (=> d!1455853 m!5460607))

(assert (=> d!1455853 m!5460377))

(declare-fun m!5460609 () Bool)

(assert (=> b!4622399 m!5460609))

(declare-fun m!5460611 () Bool)

(assert (=> bm!322346 m!5460611))

(assert (=> bm!322344 m!5460497))

(assert (=> b!4622002 d!1455853))

(declare-fun d!1455855 () Bool)

(assert (=> d!1455855 (= (eq!805 (addToMapMapFromBucket!951 (Cons!51490 lt!1778549 lt!1778544) (ListMap!4250 Nil!51490)) (+!1856 (addToMapMapFromBucket!951 lt!1778544 (ListMap!4250 Nil!51490)) lt!1778549)) (= (content!8769 (toList!4945 (addToMapMapFromBucket!951 (Cons!51490 lt!1778549 lt!1778544) (ListMap!4250 Nil!51490)))) (content!8769 (toList!4945 (+!1856 (addToMapMapFromBucket!951 lt!1778544 (ListMap!4250 Nil!51490)) lt!1778549)))))))

(declare-fun bs!1021142 () Bool)

(assert (= bs!1021142 d!1455855))

(declare-fun m!5460613 () Bool)

(assert (=> bs!1021142 m!5460613))

(declare-fun m!5460615 () Bool)

(assert (=> bs!1021142 m!5460615))

(assert (=> b!4622002 d!1455855))

(declare-fun e!2883341 () Bool)

(declare-fun tp!1341970 () Bool)

(declare-fun b!4622405 () Bool)

(assert (=> b!4622405 (= e!2883341 (and tp_is_empty!29253 tp_is_empty!29255 tp!1341970))))

(assert (=> b!4622010 (= tp!1341962 e!2883341)))

(assert (= (and b!4622010 ((_ is Cons!51490) (t!358634 oldBucket!40))) b!4622405))

(declare-fun tp!1341971 () Bool)

(declare-fun b!4622406 () Bool)

(declare-fun e!2883342 () Bool)

(assert (=> b!4622406 (= e!2883342 (and tp_is_empty!29253 tp_is_empty!29255 tp!1341971))))

(assert (=> b!4622001 (= tp!1341963 e!2883342)))

(assert (= (and b!4622001 ((_ is Cons!51490) (t!358634 newBucket!224))) b!4622406))

(declare-fun b_lambda!170667 () Bool)

(assert (= b_lambda!170661 (or b!4622009 b_lambda!170667)))

(declare-fun bs!1021143 () Bool)

(declare-fun d!1455857 () Bool)

(assert (= bs!1021143 (and d!1455857 b!4622009)))

(assert (=> bs!1021143 (= (dynLambda!21485 lambda!191050 lt!1778560) (noDuplicateKeys!1490 (_2!29498 lt!1778560)))))

(declare-fun m!5460617 () Bool)

(assert (=> bs!1021143 m!5460617))

(assert (=> d!1455679 d!1455857))

(check-sat (not b!4622049) (not bm!322338) (not d!1455835) (not b!4622371) (not d!1455703) (not b!4622052) (not bm!322337) (not b!4622392) (not bm!322340) (not bm!322344) (not d!1455691) (not d!1455855) (not b!4622068) (not b!4622394) (not b!4622130) (not d!1455697) (not b!4622314) (not bm!322331) (not b!4622381) (not b!4622097) (not d!1455821) (not d!1455847) (not b!4622365) (not b!4622315) (not b!4622390) (not bm!322339) tp_is_empty!29255 (not b!4622362) (not d!1455699) (not d!1455717) (not d!1455713) (not b!4622192) (not b!4622312) (not d!1455679) (not d!1455687) (not b!4622215) (not b!4622405) (not b!4622069) (not b!4622385) (not b!4622324) (not bm!322333) (not bm!322346) (not b!4622129) (not d!1455739) (not b!4622200) (not d!1455707) (not d!1455827) (not d!1455705) (not d!1455845) (not b!4622366) (not d!1455853) (not d!1455839) (not d!1455805) (not b!4622195) (not d!1455733) (not b!4622374) (not b!4622378) (not b!4622397) (not b!4622386) (not b!4622318) (not b!4622380) (not d!1455833) (not b!4622368) (not bm!322332) (not d!1455815) (not b!4622123) (not b!4622197) (not d!1455685) (not bm!322336) (not b!4622051) (not b!4622383) (not b_lambda!170667) (not b!4622399) (not d!1455817) (not bm!322342) (not d!1455801) (not b!4622364) (not b!4622375) (not bm!322341) (not b!4622322) (not b!4622370) (not b!4622048) (not b!4622053) (not d!1455803) (not b!4622066) tp_is_empty!29253 (not b!4622373) (not bm!322334) (not b!4622400) (not b!4622077) (not bm!322311) (not bm!322335) (not d!1455837) (not bs!1021143) (not d!1455711) (not b!4622376) (not b!4622328) (not b!4622199) (not b!4622194) (not d!1455809) (not b!4622198) (not d!1455689) (not b!4622095) (not d!1455807) (not b!4622367) (not b!4622105) (not b!4622216) (not b!4622029) (not d!1455851) (not d!1455843) (not b!4622387) (not d!1455841) (not b!4622406) (not b!4622393) (not b!4622067) (not bm!322343) (not b!4622205) (not bm!322345) (not b!4622363) (not d!1455743) (not d!1455849) (not b!4622103))
(check-sat)
