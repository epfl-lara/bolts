; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46834 () Bool)

(assert start!46834)

(declare-fun b!516129 () Bool)

(declare-fun b_free!13571 () Bool)

(declare-fun b_next!13575 () Bool)

(assert (=> b!516129 (= b_free!13571 (not b_next!13575))))

(declare-fun tp!161081 () Bool)

(declare-fun b_and!51029 () Bool)

(assert (=> b!516129 (= tp!161081 b_and!51029)))

(declare-fun b!516126 () Bool)

(declare-fun b_free!13573 () Bool)

(declare-fun b_next!13577 () Bool)

(assert (=> b!516126 (= b_free!13573 (not b_next!13577))))

(declare-fun tp!161083 () Bool)

(declare-fun b_and!51031 () Bool)

(assert (=> b!516126 (= tp!161083 b_and!51031)))

(declare-fun b_free!13575 () Bool)

(declare-fun b_next!13579 () Bool)

(assert (=> start!46834 (= b_free!13575 (not b_next!13579))))

(declare-fun tp!161080 () Bool)

(declare-fun b_and!51033 () Bool)

(assert (=> start!46834 (= tp!161080 b_and!51033)))

(declare-fun tp!161085 () Bool)

(declare-fun e!308850 () Bool)

(declare-datatypes ((V!1510 0))(
  ( (V!1511 (val!1793 Int)) )
))
(declare-datatypes ((K!1412 0))(
  ( (K!1413 (val!1794 Int)) )
))
(declare-datatypes ((tuple2!5786 0))(
  ( (tuple2!5787 (_1!3109 K!1412) (_2!3109 V!1510)) )
))
(declare-datatypes ((List!4732 0))(
  ( (Nil!4722) (Cons!4722 (h!10120 tuple2!5786) (t!73286 List!4732)) )
))
(declare-datatypes ((array!2005 0))(
  ( (array!2006 (arr!922 (Array (_ BitVec 32) List!4732)) (size!3856 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!491 0))(
  ( (HashableExt!490 (__x!3448 Int)) )
))
(declare-datatypes ((array!2007 0))(
  ( (array!2008 (arr!923 (Array (_ BitVec 32) (_ BitVec 64))) (size!3857 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1038 0))(
  ( (LongMapFixedSize!1039 (defaultEntry!870 Int) (mask!1943 (_ BitVec 32)) (extraKeys!765 (_ BitVec 32)) (zeroValue!775 List!4732) (minValue!775 List!4732) (_size!1147 (_ BitVec 32)) (_keys!810 array!2007) (_values!797 array!2005) (_vacant!580 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!2017 0))(
  ( (Cell!2018 (v!15762 LongMapFixedSize!1038)) )
))
(declare-datatypes ((MutLongMap!519 0))(
  ( (LongMap!519 (underlying!1217 Cell!2017)) (MutLongMapExt!518 (__x!3449 Int)) )
))
(declare-datatypes ((Cell!2019 0))(
  ( (Cell!2020 (v!15763 MutLongMap!519)) )
))
(declare-datatypes ((MutableMap!491 0))(
  ( (MutableMapExt!490 (__x!3450 Int)) (HashMap!491 (underlying!1218 Cell!2019) (hashF!2374 Hashable!491) (_size!1148 (_ BitVec 32)) (defaultValue!640 Int)) )
))
(declare-fun hm!65 () MutableMap!491)

(declare-fun e!308848 () Bool)

(declare-fun tp!161079 () Bool)

(declare-fun array_inv!673 (array!2007) Bool)

(declare-fun array_inv!674 (array!2005) Bool)

(assert (=> b!516126 (= e!308848 (and tp!161083 tp!161079 tp!161085 (array_inv!673 (_keys!810 (v!15762 (underlying!1217 (v!15763 (underlying!1218 hm!65)))))) (array_inv!674 (_values!797 (v!15762 (underlying!1217 (v!15763 (underlying!1218 hm!65)))))) e!308850))))

(declare-fun b!516127 () Bool)

(declare-fun res!218880 () Bool)

(declare-fun e!308851 () Bool)

(assert (=> b!516127 (=> (not res!218880) (not e!308851))))

(declare-datatypes ((ListMap!189 0))(
  ( (ListMap!190 (toList!417 List!4732)) )
))
(declare-fun lt!214394 () ListMap!189)

(declare-fun invariantList!72 (List!4732) Bool)

(assert (=> b!516127 (= res!218880 (invariantList!72 (toList!417 lt!214394)))))

(declare-fun b!516128 () Bool)

(declare-fun res!218875 () Bool)

(assert (=> b!516128 (=> (not res!218875) (not e!308851))))

(declare-fun lt!214393 () ListMap!189)

(declare-fun eq!31 (ListMap!189 ListMap!189) Bool)

(assert (=> b!516128 (= res!218875 (eq!31 lt!214393 lt!214394))))

(declare-fun e!308843 () Bool)

(declare-fun e!308852 () Bool)

(assert (=> b!516129 (= e!308843 (and e!308852 tp!161081))))

(declare-fun b!516130 () Bool)

(declare-fun e!308847 () Bool)

(declare-fun e!308849 () Bool)

(assert (=> b!516130 (= e!308847 e!308849)))

(declare-fun b!516131 () Bool)

(declare-fun lt!214392 () MutLongMap!519)

(get-info :version)

(assert (=> b!516131 (= e!308852 (and e!308847 ((_ is LongMap!519) lt!214392)))))

(assert (=> b!516131 (= lt!214392 (v!15763 (underlying!1218 hm!65)))))

(declare-fun mapIsEmpty!2003 () Bool)

(declare-fun mapRes!2003 () Bool)

(assert (=> mapIsEmpty!2003 mapRes!2003))

(declare-fun b!516133 () Bool)

(declare-fun e!308844 () Bool)

(assert (=> b!516133 (= e!308844 e!308851)))

(declare-fun res!218879 () Bool)

(assert (=> b!516133 (=> (not res!218879) (not e!308851))))

(assert (=> b!516133 (= res!218879 (invariantList!72 (toList!417 lt!214393)))))

(declare-datatypes ((tuple2!5788 0))(
  ( (tuple2!5789 (_1!3110 Bool) (_2!3110 MutableMap!491)) )
))
(declare-fun lt!214391 () tuple2!5788)

(declare-fun map!1036 (MutableMap!491) ListMap!189)

(assert (=> b!516133 (= lt!214393 (map!1036 (_2!3110 lt!214391)))))

(declare-fun b!516134 () Bool)

(declare-fun res!218881 () Bool)

(declare-fun e!308842 () Bool)

(assert (=> b!516134 (=> (not res!218881) (not e!308842))))

(declare-fun valid!481 (MutableMap!491) Bool)

(assert (=> b!516134 (= res!218881 (valid!481 hm!65))))

(declare-fun b!516135 () Bool)

(declare-fun e!308846 () Bool)

(assert (=> b!516135 (= e!308846 e!308844)))

(declare-fun res!218876 () Bool)

(assert (=> b!516135 (=> (not res!218876) (not e!308844))))

(assert (=> b!516135 (= res!218876 (valid!481 (_2!3110 lt!214391)))))

(declare-fun k0!1740 () K!1412)

(declare-fun remove!37 (MutableMap!491 K!1412) tuple2!5788)

(assert (=> b!516135 (= lt!214391 (remove!37 hm!65 k0!1740))))

(declare-fun lt!214395 () ListMap!189)

(declare-fun -!34 (ListMap!189 K!1412) ListMap!189)

(assert (=> b!516135 (= lt!214394 (-!34 lt!214395 k0!1740))))

(declare-fun b!516136 () Bool)

(assert (=> b!516136 (= e!308851 (not (invariantList!72 (toList!417 lt!214395))))))

(declare-fun mapNonEmpty!2003 () Bool)

(declare-fun tp!161084 () Bool)

(declare-fun tp!161086 () Bool)

(assert (=> mapNonEmpty!2003 (= mapRes!2003 (and tp!161084 tp!161086))))

(declare-fun mapKey!2003 () (_ BitVec 32))

(declare-fun mapValue!2003 () List!4732)

(declare-fun mapRest!2003 () (Array (_ BitVec 32) List!4732))

(assert (=> mapNonEmpty!2003 (= (arr!922 (_values!797 (v!15762 (underlying!1217 (v!15763 (underlying!1218 hm!65)))))) (store mapRest!2003 mapKey!2003 mapValue!2003))))

(declare-fun b!516137 () Bool)

(declare-fun tp!161082 () Bool)

(assert (=> b!516137 (= e!308850 (and tp!161082 mapRes!2003))))

(declare-fun condMapEmpty!2003 () Bool)

(declare-fun mapDefault!2003 () List!4732)

(assert (=> b!516137 (= condMapEmpty!2003 (= (arr!922 (_values!797 (v!15762 (underlying!1217 (v!15763 (underlying!1218 hm!65)))))) ((as const (Array (_ BitVec 32) List!4732)) mapDefault!2003)))))

(declare-fun b!516132 () Bool)

(assert (=> b!516132 (= e!308842 e!308846)))

(declare-fun res!218877 () Bool)

(assert (=> b!516132 (=> (not res!218877) (not e!308846))))

(declare-fun p!6060 () Int)

(declare-fun forall!1399 (List!4732 Int) Bool)

(assert (=> b!516132 (= res!218877 (forall!1399 (toList!417 lt!214395) p!6060))))

(assert (=> b!516132 (= lt!214395 (map!1036 hm!65))))

(declare-fun res!218878 () Bool)

(assert (=> start!46834 (=> (not res!218878) (not e!308842))))

(assert (=> start!46834 (= res!218878 ((_ is HashMap!491) hm!65))))

(assert (=> start!46834 e!308842))

(assert (=> start!46834 e!308843))

(assert (=> start!46834 tp!161080))

(declare-fun tp_is_empty!2621 () Bool)

(assert (=> start!46834 tp_is_empty!2621))

(declare-fun b!516138 () Bool)

(declare-fun res!218882 () Bool)

(assert (=> b!516138 (=> (not res!218882) (not e!308851))))

(assert (=> b!516138 (= res!218882 (_1!3110 lt!214391))))

(declare-fun b!516139 () Bool)

(assert (=> b!516139 (= e!308849 e!308848)))

(assert (= (and start!46834 res!218878) b!516134))

(assert (= (and b!516134 res!218881) b!516132))

(assert (= (and b!516132 res!218877) b!516135))

(assert (= (and b!516135 res!218876) b!516133))

(assert (= (and b!516133 res!218879) b!516138))

(assert (= (and b!516138 res!218882) b!516128))

(assert (= (and b!516128 res!218875) b!516127))

(assert (= (and b!516127 res!218880) b!516136))

(assert (= (and b!516137 condMapEmpty!2003) mapIsEmpty!2003))

(assert (= (and b!516137 (not condMapEmpty!2003)) mapNonEmpty!2003))

(assert (= b!516126 b!516137))

(assert (= b!516139 b!516126))

(assert (= b!516130 b!516139))

(assert (= (and b!516131 ((_ is LongMap!519) (v!15763 (underlying!1218 hm!65)))) b!516130))

(assert (= b!516129 b!516131))

(assert (= (and start!46834 ((_ is HashMap!491) hm!65)) b!516129))

(declare-fun m!762417 () Bool)

(assert (=> b!516134 m!762417))

(declare-fun m!762419 () Bool)

(assert (=> b!516128 m!762419))

(declare-fun m!762421 () Bool)

(assert (=> b!516126 m!762421))

(declare-fun m!762423 () Bool)

(assert (=> b!516126 m!762423))

(declare-fun m!762425 () Bool)

(assert (=> b!516132 m!762425))

(declare-fun m!762427 () Bool)

(assert (=> b!516132 m!762427))

(declare-fun m!762429 () Bool)

(assert (=> b!516133 m!762429))

(declare-fun m!762431 () Bool)

(assert (=> b!516133 m!762431))

(declare-fun m!762433 () Bool)

(assert (=> mapNonEmpty!2003 m!762433))

(declare-fun m!762435 () Bool)

(assert (=> b!516136 m!762435))

(declare-fun m!762437 () Bool)

(assert (=> b!516135 m!762437))

(declare-fun m!762439 () Bool)

(assert (=> b!516135 m!762439))

(declare-fun m!762441 () Bool)

(assert (=> b!516135 m!762441))

(declare-fun m!762443 () Bool)

(assert (=> b!516127 m!762443))

(check-sat (not b!516134) (not b_next!13579) (not b!516135) (not b!516136) (not b_next!13577) (not b!516137) b_and!51033 b_and!51029 (not b_next!13575) tp_is_empty!2621 (not mapNonEmpty!2003) (not b!516132) b_and!51031 (not b!516133) (not b!516126) (not b!516128) (not b!516127))
(check-sat (not b_next!13579) b_and!51031 (not b_next!13577) b_and!51033 b_and!51029 (not b_next!13575))
(get-model)

(declare-fun d!184622 () Bool)

(declare-fun res!218887 () Bool)

(declare-fun e!308855 () Bool)

(assert (=> d!184622 (=> (not res!218887) (not e!308855))))

(declare-fun valid!482 (MutLongMap!519) Bool)

(assert (=> d!184622 (= res!218887 (valid!482 (v!15763 (underlying!1218 (_2!3110 lt!214391)))))))

(assert (=> d!184622 (= (valid!481 (_2!3110 lt!214391)) e!308855)))

(declare-fun b!516144 () Bool)

(declare-fun res!218888 () Bool)

(assert (=> b!516144 (=> (not res!218888) (not e!308855))))

(declare-fun lambda!14451 () Int)

(declare-datatypes ((tuple2!5790 0))(
  ( (tuple2!5791 (_1!3111 (_ BitVec 64)) (_2!3111 List!4732)) )
))
(declare-datatypes ((List!4733 0))(
  ( (Nil!4723) (Cons!4723 (h!10121 tuple2!5790) (t!73289 List!4733)) )
))
(declare-fun forall!1400 (List!4733 Int) Bool)

(declare-datatypes ((ListLongMap!77 0))(
  ( (ListLongMap!78 (toList!418 List!4733)) )
))
(declare-fun map!1037 (MutLongMap!519) ListLongMap!77)

(assert (=> b!516144 (= res!218888 (forall!1400 (toList!418 (map!1037 (v!15763 (underlying!1218 (_2!3110 lt!214391))))) lambda!14451))))

(declare-fun b!516145 () Bool)

(declare-fun allKeysSameHashInMap!27 (ListLongMap!77 Hashable!491) Bool)

(assert (=> b!516145 (= e!308855 (allKeysSameHashInMap!27 (map!1037 (v!15763 (underlying!1218 (_2!3110 lt!214391)))) (hashF!2374 (_2!3110 lt!214391))))))

(assert (= (and d!184622 res!218887) b!516144))

(assert (= (and b!516144 res!218888) b!516145))

(declare-fun m!762445 () Bool)

(assert (=> d!184622 m!762445))

(declare-fun m!762447 () Bool)

(assert (=> b!516144 m!762447))

(declare-fun m!762449 () Bool)

(assert (=> b!516144 m!762449))

(assert (=> b!516145 m!762447))

(assert (=> b!516145 m!762447))

(declare-fun m!762451 () Bool)

(assert (=> b!516145 m!762451))

(assert (=> b!516135 d!184622))

(declare-fun bs!59687 () Bool)

(declare-fun b!516174 () Bool)

(assert (= bs!59687 (and b!516174 b!516144)))

(declare-fun lambda!14458 () Int)

(assert (=> bs!59687 (= lambda!14458 lambda!14451)))

(declare-fun bm!37658 () Bool)

(declare-fun call!37666 () ListMap!189)

(assert (=> bm!37658 (= call!37666 (map!1036 hm!65))))

(declare-fun bm!37659 () Bool)

(declare-fun call!37663 () ListMap!189)

(declare-fun lt!214465 () tuple2!5788)

(assert (=> bm!37659 (= call!37663 (map!1036 (_2!3110 lt!214465)))))

(declare-fun b!516168 () Bool)

(declare-fun call!37668 () ListMap!189)

(declare-fun lt!214475 () ListMap!189)

(assert (=> b!516168 (= call!37668 lt!214475)))

(declare-datatypes ((Unit!8569 0))(
  ( (Unit!8570) )
))
(declare-fun lt!214463 () Unit!8569)

(declare-fun Unit!8571 () Unit!8569)

(assert (=> b!516168 (= lt!214463 Unit!8571)))

(declare-fun call!37670 () Bool)

(assert (=> b!516168 call!37670))

(declare-fun e!308872 () Unit!8569)

(declare-fun Unit!8572 () Unit!8569)

(assert (=> b!516168 (= e!308872 Unit!8572)))

(declare-fun b!516169 () Bool)

(declare-fun e!308870 () tuple2!5788)

(assert (=> b!516169 (= e!308870 (tuple2!5789 true hm!65))))

(declare-fun lt!214464 () ListLongMap!77)

(declare-fun call!37669 () ListLongMap!77)

(assert (=> b!516169 (= lt!214464 call!37669)))

(declare-fun lt!214474 () Unit!8569)

(declare-fun lemmaRemoveNotContainedDoesNotChange!12 (ListLongMap!77 K!1412 Hashable!491) Unit!8569)

(assert (=> b!516169 (= lt!214474 (lemmaRemoveNotContainedDoesNotChange!12 lt!214464 k0!1740 (hashF!2374 hm!65)))))

(declare-fun call!37667 () ListMap!189)

(declare-fun call!37664 () ListMap!189)

(assert (=> b!516169 (= call!37667 call!37664)))

(declare-fun lt!214481 () Unit!8569)

(assert (=> b!516169 (= lt!214481 lt!214474)))

(declare-fun bm!37660 () Bool)

(declare-fun call!37665 () Bool)

(declare-fun e!308873 () ListMap!189)

(assert (=> bm!37660 (= call!37665 (eq!31 call!37663 e!308873))))

(declare-fun c!99987 () Bool)

(declare-fun c!99986 () Bool)

(assert (=> bm!37660 (= c!99987 c!99986)))

(declare-fun d!184624 () Bool)

(declare-fun e!308869 () Bool)

(assert (=> d!184624 e!308869))

(declare-fun res!218896 () Bool)

(assert (=> d!184624 (=> (not res!218896) (not e!308869))))

(assert (=> d!184624 (= res!218896 ((_ is HashMap!491) (_2!3110 lt!214465)))))

(assert (=> d!184624 (= lt!214465 e!308870)))

(declare-fun c!99988 () Bool)

(declare-fun lt!214471 () Bool)

(assert (=> d!184624 (= c!99988 (not lt!214471))))

(declare-fun contains!1084 (MutableMap!491 K!1412) Bool)

(assert (=> d!184624 (= lt!214471 (contains!1084 hm!65 k0!1740))))

(assert (=> d!184624 (valid!481 hm!65)))

(assert (=> d!184624 (= (remove!37 hm!65 k0!1740) lt!214465)))

(declare-fun bm!37661 () Bool)

(declare-datatypes ((tuple2!5792 0))(
  ( (tuple2!5793 (_1!3112 Unit!8569) (_2!3112 MutableMap!491)) )
))
(declare-fun lt!214476 () tuple2!5792)

(assert (=> bm!37661 (= call!37670 (valid!481 (_2!3112 lt!214476)))))

(declare-fun b!516170 () Bool)

(declare-fun res!218897 () Bool)

(assert (=> b!516170 (=> (not res!218897) (not e!308869))))

(assert (=> b!516170 (= res!218897 (valid!481 (_2!3110 lt!214465)))))

(declare-fun b!516171 () Bool)

(assert (=> b!516171 (= e!308873 (-!34 call!37666 k0!1740))))

(declare-fun b!516172 () Bool)

(declare-fun e!308871 () Bool)

(assert (=> b!516172 (= e!308869 e!308871)))

(assert (=> b!516172 (= c!99986 (_1!3110 lt!214465))))

(declare-fun b!516173 () Bool)

(assert (=> b!516173 (= e!308871 call!37665)))

(declare-datatypes ((tuple2!5794 0))(
  ( (tuple2!5795 (_1!3113 Bool) (_2!3113 MutLongMap!519)) )
))
(declare-fun lt!214467 () tuple2!5794)

(assert (=> b!516174 (= e!308870 (tuple2!5789 (_1!3113 lt!214467) (_2!3112 lt!214476)))))

(declare-fun lt!214461 () (_ BitVec 64))

(declare-fun hash!518 (Hashable!491 K!1412) (_ BitVec 64))

(assert (=> b!516174 (= lt!214461 (hash!518 (hashF!2374 hm!65) k0!1740))))

(declare-fun lt!214484 () List!4732)

(declare-fun apply!1184 (MutLongMap!519 (_ BitVec 64)) List!4732)

(assert (=> b!516174 (= lt!214484 (apply!1184 (v!15763 (underlying!1218 hm!65)) lt!214461))))

(declare-fun lt!214466 () Unit!8569)

(declare-fun forallContained!445 (List!4733 Int tuple2!5790) Unit!8569)

(assert (=> b!516174 (= lt!214466 (forallContained!445 (toList!418 (map!1037 (v!15763 (underlying!1218 hm!65)))) lambda!14458 (tuple2!5791 lt!214461 (apply!1184 (v!15763 (underlying!1218 hm!65)) lt!214461))))))

(assert (=> b!516174 (= lt!214475 (map!1036 hm!65))))

(declare-fun lt!214472 () ListLongMap!77)

(assert (=> b!516174 (= lt!214472 (map!1037 (v!15763 (underlying!1218 hm!65))))))

(declare-fun lt!214477 () List!4732)

(declare-fun removePairForKey!14 (List!4732 K!1412) List!4732)

(assert (=> b!516174 (= lt!214477 (removePairForKey!14 lt!214484 k0!1740))))

(declare-fun update!54 (MutLongMap!519 (_ BitVec 64) List!4732) tuple2!5794)

(assert (=> b!516174 (= lt!214467 (update!54 (v!15763 (underlying!1218 hm!65)) lt!214461 lt!214477))))

(declare-fun Unit!8573 () Unit!8569)

(declare-fun Unit!8574 () Unit!8569)

(assert (=> b!516174 (= lt!214476 (ite (and (_1!3113 lt!214467) lt!214471) (tuple2!5793 Unit!8573 (HashMap!491 (Cell!2020 (_2!3113 lt!214467)) (hashF!2374 hm!65) (bvsub (_size!1148 hm!65) #b00000000000000000000000000000001) (defaultValue!640 hm!65))) (tuple2!5793 Unit!8574 (HashMap!491 (Cell!2020 (_2!3113 lt!214467)) (hashF!2374 hm!65) (_size!1148 hm!65) (defaultValue!640 hm!65)))))))

(declare-fun lt!214460 () Unit!8569)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!14 (List!4732 K!1412) Unit!8569)

(assert (=> b!516174 (= lt!214460 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!14 lt!214484 k0!1740))))

(declare-fun noDuplicateKeys!16 (List!4732) Bool)

(assert (=> b!516174 (noDuplicateKeys!16 (removePairForKey!14 lt!214484 k0!1740))))

(declare-fun lt!214473 () Unit!8569)

(assert (=> b!516174 (= lt!214473 lt!214460)))

(declare-fun c!99989 () Bool)

(assert (=> b!516174 (= c!99989 (_1!3113 lt!214467))))

(declare-fun lt!214462 () Unit!8569)

(assert (=> b!516174 (= lt!214462 e!308872)))

(declare-fun b!516175 () Bool)

(assert (=> b!516175 (= e!308873 call!37666)))

(declare-fun bm!37662 () Bool)

(assert (=> bm!37662 (= call!37668 (map!1036 (_2!3112 lt!214476)))))

(declare-fun bm!37663 () Bool)

(assert (=> bm!37663 (= call!37664 (-!34 (ite c!99988 call!37667 lt!214475) k0!1740))))

(declare-fun b!516176 () Bool)

(assert (=> b!516176 (= e!308871 call!37665)))

(declare-fun b!516177 () Bool)

(assert (=> b!516177 (eq!31 call!37668 call!37664)))

(declare-fun lt!214480 () Unit!8569)

(declare-fun lt!214458 () Unit!8569)

(assert (=> b!516177 (= lt!214480 lt!214458)))

(declare-fun extractMap!20 (List!4733) ListMap!189)

(declare-fun +!23 (ListLongMap!77 tuple2!5790) ListLongMap!77)

(assert (=> b!516177 (eq!31 (extractMap!20 (toList!418 (+!23 lt!214472 (tuple2!5791 lt!214461 lt!214477)))) (-!34 call!37667 k0!1740))))

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!12 (ListLongMap!77 (_ BitVec 64) List!4732 K!1412 Hashable!491) Unit!8569)

(assert (=> b!516177 (= lt!214458 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!12 lt!214472 lt!214461 lt!214477 k0!1740 (hashF!2374 (_2!3112 lt!214476))))))

(declare-fun lt!214470 () Unit!8569)

(declare-fun Unit!8575 () Unit!8569)

(assert (=> b!516177 (= lt!214470 Unit!8575)))

(declare-fun contains!1085 (ListMap!189 K!1412) Bool)

(assert (=> b!516177 (contains!1085 lt!214475 k0!1740)))

(declare-fun lt!214478 () Unit!8569)

(declare-fun Unit!8576 () Unit!8569)

(assert (=> b!516177 (= lt!214478 Unit!8576)))

(assert (=> b!516177 call!37670))

(declare-fun lt!214482 () Unit!8569)

(declare-fun Unit!8577 () Unit!8569)

(assert (=> b!516177 (= lt!214482 Unit!8577)))

(assert (=> b!516177 (allKeysSameHashInMap!27 call!37669 (hashF!2374 (_2!3112 lt!214476)))))

(declare-fun lt!214479 () Unit!8569)

(declare-fun Unit!8578 () Unit!8569)

(assert (=> b!516177 (= lt!214479 Unit!8578)))

(assert (=> b!516177 (forall!1400 (toList!418 call!37669) lambda!14458)))

(declare-fun lt!214483 () Unit!8569)

(declare-fun lt!214469 () Unit!8569)

(assert (=> b!516177 (= lt!214483 lt!214469)))

(declare-fun e!308868 () Bool)

(assert (=> b!516177 e!308868))

(declare-fun res!218895 () Bool)

(assert (=> b!516177 (=> (not res!218895) (not e!308868))))

(declare-fun lt!214459 () ListLongMap!77)

(assert (=> b!516177 (= res!218895 (forall!1400 (toList!418 lt!214459) lambda!14458))))

(assert (=> b!516177 (= lt!214459 (+!23 lt!214472 (tuple2!5791 lt!214461 lt!214477)))))

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!14 (ListLongMap!77 (_ BitVec 64) List!4732 Hashable!491) Unit!8569)

(assert (=> b!516177 (= lt!214469 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!14 lt!214472 lt!214461 lt!214477 (hashF!2374 (_2!3112 lt!214476))))))

(declare-fun lt!214485 () Unit!8569)

(declare-fun lt!214468 () Unit!8569)

(assert (=> b!516177 (= lt!214485 lt!214468)))

(declare-fun allKeysSameHash!15 (List!4732 (_ BitVec 64) Hashable!491) Bool)

(assert (=> b!516177 (allKeysSameHash!15 (removePairForKey!14 lt!214484 k0!1740) lt!214461 (hashF!2374 (_2!3112 lt!214476)))))

(declare-fun lemmaRemovePairForKeyPreservesHash!14 (List!4732 K!1412 (_ BitVec 64) Hashable!491) Unit!8569)

(assert (=> b!516177 (= lt!214468 (lemmaRemovePairForKeyPreservesHash!14 lt!214484 k0!1740 lt!214461 (hashF!2374 (_2!3112 lt!214476))))))

(declare-fun lt!214456 () Unit!8569)

(declare-fun lt!214457 () Unit!8569)

(assert (=> b!516177 (= lt!214456 lt!214457)))

(assert (=> b!516177 (allKeysSameHash!15 lt!214484 lt!214461 (hashF!2374 (_2!3112 lt!214476)))))

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!14 (List!4733 (_ BitVec 64) List!4732 Hashable!491) Unit!8569)

(assert (=> b!516177 (= lt!214457 (lemmaInLongMapAllKeySameHashThenForTuple!14 (toList!418 lt!214472) lt!214461 lt!214484 (hashF!2374 (_2!3112 lt!214476))))))

(declare-fun Unit!8579 () Unit!8569)

(assert (=> b!516177 (= e!308872 Unit!8579)))

(declare-fun bm!37664 () Bool)

(assert (=> bm!37664 (= call!37667 (extractMap!20 (ite c!99988 (toList!418 lt!214464) (toList!418 lt!214472))))))

(declare-fun b!516178 () Bool)

(assert (=> b!516178 (= e!308868 (allKeysSameHashInMap!27 lt!214459 (hashF!2374 (_2!3112 lt!214476))))))

(declare-fun bm!37665 () Bool)

(assert (=> bm!37665 (= call!37669 (map!1037 (ite c!99988 (v!15763 (underlying!1218 hm!65)) (v!15763 (underlying!1218 (_2!3112 lt!214476))))))))

(assert (= (and d!184624 c!99988) b!516169))

(assert (= (and d!184624 (not c!99988)) b!516174))

(assert (= (and b!516174 c!99989) b!516177))

(assert (= (and b!516174 (not c!99989)) b!516168))

(assert (= (and b!516177 res!218895) b!516178))

(assert (= (or b!516177 b!516168) bm!37661))

(assert (= (or b!516177 b!516168) bm!37662))

(assert (= (or b!516169 b!516177) bm!37665))

(assert (= (or b!516169 b!516177) bm!37664))

(assert (= (or b!516169 b!516177) bm!37663))

(assert (= (and d!184624 res!218896) b!516170))

(assert (= (and b!516170 res!218897) b!516172))

(assert (= (and b!516172 c!99986) b!516173))

(assert (= (and b!516172 (not c!99986)) b!516176))

(assert (= (or b!516173 b!516176) bm!37659))

(assert (= (or b!516173 b!516176) bm!37658))

(assert (= (or b!516173 b!516176) bm!37660))

(assert (= (and bm!37660 c!99987) b!516171))

(assert (= (and bm!37660 (not c!99987)) b!516175))

(declare-fun m!762453 () Bool)

(assert (=> d!184624 m!762453))

(assert (=> d!184624 m!762417))

(declare-fun m!762455 () Bool)

(assert (=> b!516177 m!762455))

(declare-fun m!762457 () Bool)

(assert (=> b!516177 m!762457))

(declare-fun m!762459 () Bool)

(assert (=> b!516177 m!762459))

(declare-fun m!762461 () Bool)

(assert (=> b!516177 m!762461))

(declare-fun m!762463 () Bool)

(assert (=> b!516177 m!762463))

(assert (=> b!516177 m!762461))

(declare-fun m!762465 () Bool)

(assert (=> b!516177 m!762465))

(declare-fun m!762467 () Bool)

(assert (=> b!516177 m!762467))

(declare-fun m!762469 () Bool)

(assert (=> b!516177 m!762469))

(declare-fun m!762471 () Bool)

(assert (=> b!516177 m!762471))

(declare-fun m!762473 () Bool)

(assert (=> b!516177 m!762473))

(assert (=> b!516177 m!762473))

(declare-fun m!762475 () Bool)

(assert (=> b!516177 m!762475))

(assert (=> b!516177 m!762459))

(declare-fun m!762477 () Bool)

(assert (=> b!516177 m!762477))

(declare-fun m!762479 () Bool)

(assert (=> b!516177 m!762479))

(declare-fun m!762481 () Bool)

(assert (=> b!516177 m!762481))

(declare-fun m!762483 () Bool)

(assert (=> b!516177 m!762483))

(declare-fun m!762485 () Bool)

(assert (=> b!516177 m!762485))

(declare-fun m!762487 () Bool)

(assert (=> b!516169 m!762487))

(declare-fun m!762489 () Bool)

(assert (=> bm!37660 m!762489))

(declare-fun m!762491 () Bool)

(assert (=> bm!37664 m!762491))

(assert (=> bm!37658 m!762427))

(declare-fun m!762493 () Bool)

(assert (=> bm!37662 m!762493))

(declare-fun m!762495 () Bool)

(assert (=> bm!37665 m!762495))

(declare-fun m!762497 () Bool)

(assert (=> bm!37659 m!762497))

(declare-fun m!762499 () Bool)

(assert (=> bm!37661 m!762499))

(declare-fun m!762501 () Bool)

(assert (=> b!516171 m!762501))

(declare-fun m!762503 () Bool)

(assert (=> b!516170 m!762503))

(declare-fun m!762505 () Bool)

(assert (=> b!516178 m!762505))

(declare-fun m!762507 () Bool)

(assert (=> b!516174 m!762507))

(declare-fun m!762509 () Bool)

(assert (=> b!516174 m!762509))

(assert (=> b!516174 m!762473))

(declare-fun m!762511 () Bool)

(assert (=> b!516174 m!762511))

(declare-fun m!762513 () Bool)

(assert (=> b!516174 m!762513))

(assert (=> b!516174 m!762427))

(declare-fun m!762515 () Bool)

(assert (=> b!516174 m!762515))

(declare-fun m!762517 () Bool)

(assert (=> b!516174 m!762517))

(assert (=> b!516174 m!762473))

(declare-fun m!762519 () Bool)

(assert (=> b!516174 m!762519))

(declare-fun m!762521 () Bool)

(assert (=> bm!37663 m!762521))

(assert (=> b!516135 d!184624))

(declare-fun d!184626 () Bool)

(declare-fun e!308876 () Bool)

(assert (=> d!184626 e!308876))

(declare-fun res!218900 () Bool)

(assert (=> d!184626 (=> (not res!218900) (not e!308876))))

(declare-fun lt!214488 () ListMap!189)

(assert (=> d!184626 (= res!218900 (not (contains!1085 lt!214488 k0!1740)))))

(declare-fun removePresrvNoDuplicatedKeys!12 (List!4732 K!1412) List!4732)

(assert (=> d!184626 (= lt!214488 (ListMap!190 (removePresrvNoDuplicatedKeys!12 (toList!417 lt!214395) k0!1740)))))

(assert (=> d!184626 (= (-!34 lt!214395 k0!1740) lt!214488)))

(declare-fun b!516181 () Bool)

(declare-datatypes ((List!4734 0))(
  ( (Nil!4724) (Cons!4724 (h!10122 K!1412) (t!73290 List!4734)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!823 (List!4734) (InoxSet K!1412))

(declare-fun keys!1851 (ListMap!189) List!4734)

(assert (=> b!516181 (= e!308876 (= ((_ map and) (content!823 (keys!1851 lt!214395)) ((_ map not) (store ((as const (Array K!1412 Bool)) false) k0!1740 true))) (content!823 (keys!1851 lt!214488))))))

(assert (= (and d!184626 res!218900) b!516181))

(declare-fun m!762523 () Bool)

(assert (=> d!184626 m!762523))

(declare-fun m!762525 () Bool)

(assert (=> d!184626 m!762525))

(declare-fun m!762527 () Bool)

(assert (=> b!516181 m!762527))

(declare-fun m!762529 () Bool)

(assert (=> b!516181 m!762529))

(declare-fun m!762531 () Bool)

(assert (=> b!516181 m!762531))

(assert (=> b!516181 m!762531))

(declare-fun m!762533 () Bool)

(assert (=> b!516181 m!762533))

(assert (=> b!516181 m!762529))

(declare-fun m!762535 () Bool)

(assert (=> b!516181 m!762535))

(assert (=> b!516135 d!184626))

(declare-fun bs!59688 () Bool)

(declare-fun b!516182 () Bool)

(assert (= bs!59688 (and b!516182 b!516144)))

(declare-fun lambda!14459 () Int)

(assert (=> bs!59688 (= lambda!14459 lambda!14451)))

(declare-fun bs!59689 () Bool)

(assert (= bs!59689 (and b!516182 b!516174)))

(assert (=> bs!59689 (= lambda!14459 lambda!14458)))

(declare-fun d!184628 () Bool)

(declare-fun res!218901 () Bool)

(declare-fun e!308877 () Bool)

(assert (=> d!184628 (=> (not res!218901) (not e!308877))))

(assert (=> d!184628 (= res!218901 (valid!482 (v!15763 (underlying!1218 hm!65))))))

(assert (=> d!184628 (= (valid!481 hm!65) e!308877)))

(declare-fun res!218902 () Bool)

(assert (=> b!516182 (=> (not res!218902) (not e!308877))))

(assert (=> b!516182 (= res!218902 (forall!1400 (toList!418 (map!1037 (v!15763 (underlying!1218 hm!65)))) lambda!14459))))

(declare-fun b!516183 () Bool)

(assert (=> b!516183 (= e!308877 (allKeysSameHashInMap!27 (map!1037 (v!15763 (underlying!1218 hm!65))) (hashF!2374 hm!65)))))

(assert (= (and d!184628 res!218901) b!516182))

(assert (= (and b!516182 res!218902) b!516183))

(declare-fun m!762537 () Bool)

(assert (=> d!184628 m!762537))

(assert (=> b!516182 m!762511))

(declare-fun m!762539 () Bool)

(assert (=> b!516182 m!762539))

(assert (=> b!516183 m!762511))

(assert (=> b!516183 m!762511))

(declare-fun m!762541 () Bool)

(assert (=> b!516183 m!762541))

(assert (=> b!516134 d!184628))

(declare-fun d!184630 () Bool)

(declare-fun noDuplicatedKeys!15 (List!4732) Bool)

(assert (=> d!184630 (= (invariantList!72 (toList!417 lt!214395)) (noDuplicatedKeys!15 (toList!417 lt!214395)))))

(declare-fun bs!59690 () Bool)

(assert (= bs!59690 d!184630))

(declare-fun m!762543 () Bool)

(assert (=> bs!59690 m!762543))

(assert (=> b!516136 d!184630))

(declare-fun d!184632 () Bool)

(declare-fun res!218907 () Bool)

(declare-fun e!308882 () Bool)

(assert (=> d!184632 (=> res!218907 e!308882)))

(assert (=> d!184632 (= res!218907 ((_ is Nil!4722) (toList!417 lt!214395)))))

(assert (=> d!184632 (= (forall!1399 (toList!417 lt!214395) p!6060) e!308882)))

(declare-fun b!516188 () Bool)

(declare-fun e!308883 () Bool)

(assert (=> b!516188 (= e!308882 e!308883)))

(declare-fun res!218908 () Bool)

(assert (=> b!516188 (=> (not res!218908) (not e!308883))))

(declare-fun dynLambda!2977 (Int tuple2!5786) Bool)

(assert (=> b!516188 (= res!218908 (dynLambda!2977 p!6060 (h!10120 (toList!417 lt!214395))))))

(declare-fun b!516189 () Bool)

(assert (=> b!516189 (= e!308883 (forall!1399 (t!73286 (toList!417 lt!214395)) p!6060))))

(assert (= (and d!184632 (not res!218907)) b!516188))

(assert (= (and b!516188 res!218908) b!516189))

(declare-fun b_lambda!20049 () Bool)

(assert (=> (not b_lambda!20049) (not b!516188)))

(declare-fun t!73288 () Bool)

(declare-fun tb!47153 () Bool)

(assert (=> (and start!46834 (= p!6060 p!6060) t!73288) tb!47153))

(declare-fun result!52206 () Bool)

(assert (=> tb!47153 (= result!52206 true)))

(assert (=> b!516188 t!73288))

(declare-fun b_and!51035 () Bool)

(assert (= b_and!51033 (and (=> t!73288 result!52206) b_and!51035)))

(declare-fun m!762545 () Bool)

(assert (=> b!516188 m!762545))

(declare-fun m!762547 () Bool)

(assert (=> b!516189 m!762547))

(assert (=> b!516132 d!184632))

(declare-fun d!184634 () Bool)

(declare-fun lt!214491 () ListMap!189)

(assert (=> d!184634 (invariantList!72 (toList!417 lt!214491))))

(assert (=> d!184634 (= lt!214491 (extractMap!20 (toList!418 (map!1037 (v!15763 (underlying!1218 hm!65))))))))

(assert (=> d!184634 (valid!481 hm!65)))

(assert (=> d!184634 (= (map!1036 hm!65) lt!214491)))

(declare-fun bs!59691 () Bool)

(assert (= bs!59691 d!184634))

(declare-fun m!762549 () Bool)

(assert (=> bs!59691 m!762549))

(assert (=> bs!59691 m!762511))

(declare-fun m!762551 () Bool)

(assert (=> bs!59691 m!762551))

(assert (=> bs!59691 m!762417))

(assert (=> b!516132 d!184634))

(declare-fun d!184636 () Bool)

(assert (=> d!184636 (= (array_inv!673 (_keys!810 (v!15762 (underlying!1217 (v!15763 (underlying!1218 hm!65)))))) (bvsge (size!3857 (_keys!810 (v!15762 (underlying!1217 (v!15763 (underlying!1218 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!516126 d!184636))

(declare-fun d!184638 () Bool)

(assert (=> d!184638 (= (array_inv!674 (_values!797 (v!15762 (underlying!1217 (v!15763 (underlying!1218 hm!65)))))) (bvsge (size!3856 (_values!797 (v!15762 (underlying!1217 (v!15763 (underlying!1218 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!516126 d!184638))

(declare-fun d!184640 () Bool)

(declare-fun content!824 (List!4732) (InoxSet tuple2!5786))

(assert (=> d!184640 (= (eq!31 lt!214393 lt!214394) (= (content!824 (toList!417 lt!214393)) (content!824 (toList!417 lt!214394))))))

(declare-fun bs!59692 () Bool)

(assert (= bs!59692 d!184640))

(declare-fun m!762553 () Bool)

(assert (=> bs!59692 m!762553))

(declare-fun m!762555 () Bool)

(assert (=> bs!59692 m!762555))

(assert (=> b!516128 d!184640))

(declare-fun d!184642 () Bool)

(assert (=> d!184642 (= (invariantList!72 (toList!417 lt!214394)) (noDuplicatedKeys!15 (toList!417 lt!214394)))))

(declare-fun bs!59693 () Bool)

(assert (= bs!59693 d!184642))

(declare-fun m!762557 () Bool)

(assert (=> bs!59693 m!762557))

(assert (=> b!516127 d!184642))

(declare-fun d!184644 () Bool)

(assert (=> d!184644 (= (invariantList!72 (toList!417 lt!214393)) (noDuplicatedKeys!15 (toList!417 lt!214393)))))

(declare-fun bs!59694 () Bool)

(assert (= bs!59694 d!184644))

(declare-fun m!762559 () Bool)

(assert (=> bs!59694 m!762559))

(assert (=> b!516133 d!184644))

(declare-fun d!184646 () Bool)

(declare-fun lt!214492 () ListMap!189)

(assert (=> d!184646 (invariantList!72 (toList!417 lt!214492))))

(assert (=> d!184646 (= lt!214492 (extractMap!20 (toList!418 (map!1037 (v!15763 (underlying!1218 (_2!3110 lt!214391)))))))))

(assert (=> d!184646 (valid!481 (_2!3110 lt!214391))))

(assert (=> d!184646 (= (map!1036 (_2!3110 lt!214391)) lt!214492)))

(declare-fun bs!59695 () Bool)

(assert (= bs!59695 d!184646))

(declare-fun m!762561 () Bool)

(assert (=> bs!59695 m!762561))

(assert (=> bs!59695 m!762447))

(declare-fun m!762563 () Bool)

(assert (=> bs!59695 m!762563))

(assert (=> bs!59695 m!762437))

(assert (=> b!516133 d!184646))

(declare-fun b!516194 () Bool)

(declare-fun e!308886 () Bool)

(declare-fun tp_is_empty!2623 () Bool)

(declare-fun tp!161089 () Bool)

(assert (=> b!516194 (= e!308886 (and tp_is_empty!2621 tp_is_empty!2623 tp!161089))))

(assert (=> b!516126 (= tp!161079 e!308886)))

(assert (= (and b!516126 ((_ is Cons!4722) (zeroValue!775 (v!15762 (underlying!1217 (v!15763 (underlying!1218 hm!65))))))) b!516194))

(declare-fun b!516195 () Bool)

(declare-fun tp!161090 () Bool)

(declare-fun e!308887 () Bool)

(assert (=> b!516195 (= e!308887 (and tp_is_empty!2621 tp_is_empty!2623 tp!161090))))

(assert (=> b!516126 (= tp!161085 e!308887)))

(assert (= (and b!516126 ((_ is Cons!4722) (minValue!775 (v!15762 (underlying!1217 (v!15763 (underlying!1218 hm!65))))))) b!516195))

(declare-fun e!308892 () Bool)

(declare-fun tp!161098 () Bool)

(declare-fun b!516202 () Bool)

(assert (=> b!516202 (= e!308892 (and tp_is_empty!2621 tp_is_empty!2623 tp!161098))))

(declare-fun b!516203 () Bool)

(declare-fun tp!161099 () Bool)

(declare-fun e!308893 () Bool)

(assert (=> b!516203 (= e!308893 (and tp_is_empty!2621 tp_is_empty!2623 tp!161099))))

(declare-fun mapNonEmpty!2006 () Bool)

(declare-fun mapRes!2006 () Bool)

(declare-fun tp!161097 () Bool)

(assert (=> mapNonEmpty!2006 (= mapRes!2006 (and tp!161097 e!308892))))

(declare-fun mapKey!2006 () (_ BitVec 32))

(declare-fun mapRest!2006 () (Array (_ BitVec 32) List!4732))

(declare-fun mapValue!2006 () List!4732)

(assert (=> mapNonEmpty!2006 (= mapRest!2003 (store mapRest!2006 mapKey!2006 mapValue!2006))))

(declare-fun condMapEmpty!2006 () Bool)

(declare-fun mapDefault!2006 () List!4732)

(assert (=> mapNonEmpty!2003 (= condMapEmpty!2006 (= mapRest!2003 ((as const (Array (_ BitVec 32) List!4732)) mapDefault!2006)))))

(assert (=> mapNonEmpty!2003 (= tp!161084 (and e!308893 mapRes!2006))))

(declare-fun mapIsEmpty!2006 () Bool)

(assert (=> mapIsEmpty!2006 mapRes!2006))

(assert (= (and mapNonEmpty!2003 condMapEmpty!2006) mapIsEmpty!2006))

(assert (= (and mapNonEmpty!2003 (not condMapEmpty!2006)) mapNonEmpty!2006))

(assert (= (and mapNonEmpty!2006 ((_ is Cons!4722) mapValue!2006)) b!516202))

(assert (= (and mapNonEmpty!2003 ((_ is Cons!4722) mapDefault!2006)) b!516203))

(declare-fun m!762565 () Bool)

(assert (=> mapNonEmpty!2006 m!762565))

(declare-fun tp!161100 () Bool)

(declare-fun b!516204 () Bool)

(declare-fun e!308894 () Bool)

(assert (=> b!516204 (= e!308894 (and tp_is_empty!2621 tp_is_empty!2623 tp!161100))))

(assert (=> mapNonEmpty!2003 (= tp!161086 e!308894)))

(assert (= (and mapNonEmpty!2003 ((_ is Cons!4722) mapValue!2003)) b!516204))

(declare-fun e!308895 () Bool)

(declare-fun tp!161101 () Bool)

(declare-fun b!516205 () Bool)

(assert (=> b!516205 (= e!308895 (and tp_is_empty!2621 tp_is_empty!2623 tp!161101))))

(assert (=> b!516137 (= tp!161082 e!308895)))

(assert (= (and b!516137 ((_ is Cons!4722) mapDefault!2003)) b!516205))

(declare-fun b_lambda!20051 () Bool)

(assert (= b_lambda!20049 (or (and start!46834 b_free!13575) b_lambda!20051)))

(check-sat (not d!184622) (not d!184640) (not b!516144) (not b_next!13577) (not b!516204) (not b!516194) (not b!516181) (not mapNonEmpty!2006) (not bm!37659) (not b!516183) (not d!184644) (not d!184628) (not b!516189) (not b!516195) (not b!516182) (not b!516174) (not bm!37661) (not b!516203) (not d!184642) (not b!516169) (not b_next!13579) (not b!516202) b_and!51031 (not b!516145) (not d!184626) (not bm!37662) (not b!516170) (not b_lambda!20051) (not b!516177) (not d!184646) (not bm!37660) (not bm!37663) tp_is_empty!2623 (not d!184630) (not b!516171) (not bm!37665) b_and!51035 b_and!51029 (not b_next!13575) (not b!516205) tp_is_empty!2621 (not bm!37664) (not bm!37658) (not d!184624) (not d!184634) (not b!516178))
(check-sat (not b_next!13579) b_and!51031 (not b_next!13577) (not b_next!13575) b_and!51035 b_and!51029)
