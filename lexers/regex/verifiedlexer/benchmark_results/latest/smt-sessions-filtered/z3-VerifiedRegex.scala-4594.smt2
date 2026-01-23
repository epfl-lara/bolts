; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!241826 () Bool)

(assert start!241826)

(declare-fun b!2478623 () Bool)

(declare-fun b_free!72089 () Bool)

(declare-fun b_next!72793 () Bool)

(assert (=> b!2478623 (= b_free!72089 (not b_next!72793))))

(declare-fun tp!793204 () Bool)

(declare-fun b_and!188327 () Bool)

(assert (=> b!2478623 (= tp!793204 b_and!188327)))

(declare-fun b!2478628 () Bool)

(declare-fun b_free!72091 () Bool)

(declare-fun b_next!72795 () Bool)

(assert (=> b!2478628 (= b_free!72091 (not b_next!72795))))

(declare-fun tp!793205 () Bool)

(declare-fun b_and!188329 () Bool)

(assert (=> b!2478628 (= tp!793205 b_and!188329)))

(declare-fun bs!467241 () Bool)

(declare-fun b!2478625 () Bool)

(declare-fun b!2478621 () Bool)

(assert (= bs!467241 (and b!2478625 b!2478621)))

(declare-fun lambda!93572 () Int)

(declare-fun lambda!93571 () Int)

(assert (=> bs!467241 (not (= lambda!93572 lambda!93571))))

(declare-fun b!2478641 () Bool)

(declare-fun e!1572952 () Bool)

(assert (=> b!2478641 (= e!1572952 true)))

(declare-fun e!1572953 () Bool)

(assert (=> b!2478625 e!1572953))

(declare-fun b!2478642 () Bool)

(declare-fun e!1572949 () Bool)

(declare-fun e!1572951 () Bool)

(assert (=> b!2478642 (= e!1572949 e!1572951)))

(declare-fun b!2478643 () Bool)

(declare-fun e!1572950 () Bool)

(declare-datatypes ((K!5355 0))(
  ( (K!5356 (val!8759 Int)) )
))
(declare-datatypes ((V!5557 0))(
  ( (V!5558 (val!8760 Int)) )
))
(declare-datatypes ((tuple2!28490 0))(
  ( (tuple2!28491 (_1!16786 K!5355) (_2!16786 V!5557)) )
))
(declare-datatypes ((List!29107 0))(
  ( (Nil!29007) (Cons!29007 (h!34409 tuple2!28490) (t!210756 List!29107)) )
))
(declare-datatypes ((array!11681 0))(
  ( (array!11682 (arr!5206 (Array (_ BitVec 32) List!29107)) (size!22625 (_ BitVec 32))) )
))
(declare-datatypes ((array!11683 0))(
  ( (array!11684 (arr!5207 (Array (_ BitVec 32) (_ BitVec 64))) (size!22626 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6616 0))(
  ( (LongMapFixedSize!6617 (defaultEntry!3682 Int) (mask!8451 (_ BitVec 32)) (extraKeys!3556 (_ BitVec 32)) (zeroValue!3566 List!29107) (minValue!3566 List!29107) (_size!6663 (_ BitVec 32)) (_keys!3605 array!11683) (_values!3588 array!11681) (_vacant!3369 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13049 0))(
  ( (Cell!13050 (v!31304 LongMapFixedSize!6616)) )
))
(declare-datatypes ((MutLongMap!3308 0))(
  ( (LongMap!3308 (underlying!6823 Cell!13049)) (MutLongMapExt!3307 (__x!18830 Int)) )
))
(declare-fun lt!885684 () MutLongMap!3308)

(get-info :version)

(assert (=> b!2478643 (= e!1572950 (and e!1572949 ((_ is LongMap!3308) lt!885684)))))

(declare-datatypes ((Unit!42413 0))(
  ( (Unit!42414) )
))
(declare-datatypes ((Hashable!3218 0))(
  ( (HashableExt!3217 (__x!18831 Int)) )
))
(declare-datatypes ((Cell!13051 0))(
  ( (Cell!13052 (v!31305 MutLongMap!3308)) )
))
(declare-datatypes ((MutableMap!3218 0))(
  ( (MutableMapExt!3217 (__x!18832 Int)) (HashMap!3218 (underlying!6824 Cell!13051) (hashF!5156 Hashable!3218) (_size!6664 (_ BitVec 32)) (defaultValue!3380 Int)) )
))
(declare-datatypes ((tuple2!28492 0))(
  ( (tuple2!28493 (_1!16787 Unit!42413) (_2!16787 MutableMap!3218)) )
))
(declare-fun lt!885679 () tuple2!28492)

(assert (=> b!2478643 (= lt!885684 (v!31305 (underlying!6824 (_2!16787 lt!885679))))))

(declare-fun b!2478644 () Bool)

(assert (=> b!2478644 (= e!1572951 e!1572952)))

(declare-fun b!2478645 () Bool)

(assert (=> b!2478645 (= e!1572953 e!1572950)))

(assert (= b!2478644 b!2478641))

(assert (= b!2478642 b!2478644))

(assert (= (and b!2478643 ((_ is LongMap!3308) (v!31305 (underlying!6824 (_2!16787 lt!885679))))) b!2478642))

(assert (= b!2478645 b!2478643))

(assert (= (and b!2478625 ((_ is HashMap!3218) (_2!16787 lt!885679))) b!2478645))

(declare-fun order!15707 () Int)

(declare-fun order!15709 () Int)

(declare-fun dynLambda!12445 (Int Int) Int)

(declare-fun dynLambda!12446 (Int Int) Int)

(assert (=> b!2478641 (< (dynLambda!12445 order!15707 (defaultEntry!3682 (v!31304 (underlying!6823 (v!31305 (underlying!6824 (_2!16787 lt!885679))))))) (dynLambda!12446 order!15709 lambda!93572))))

(declare-fun order!15711 () Int)

(declare-fun dynLambda!12447 (Int Int) Int)

(assert (=> b!2478645 (< (dynLambda!12447 order!15711 (defaultValue!3380 (_2!16787 lt!885679))) (dynLambda!12446 order!15709 lambda!93572))))

(declare-fun b!2478617 () Bool)

(declare-fun e!1572932 () Bool)

(declare-fun e!1572930 () Bool)

(assert (=> b!2478617 (= e!1572932 e!1572930)))

(declare-fun b!2478618 () Bool)

(declare-fun res!1049168 () Bool)

(declare-fun e!1572934 () Bool)

(assert (=> b!2478618 (=> (not res!1049168) (not e!1572934))))

(declare-fun thiss!42540 () MutableMap!3218)

(declare-fun valid!2522 (MutableMap!3218) Bool)

(assert (=> b!2478618 (= res!1049168 (valid!2522 thiss!42540))))

(declare-fun res!1049166 () Bool)

(assert (=> start!241826 (=> (not res!1049166) (not e!1572934))))

(assert (=> start!241826 (= res!1049166 ((_ is HashMap!3218) thiss!42540))))

(assert (=> start!241826 e!1572934))

(declare-fun e!1572933 () Bool)

(assert (=> start!241826 e!1572933))

(declare-fun tp_is_empty!12131 () Bool)

(assert (=> start!241826 tp_is_empty!12131))

(declare-fun b!2478619 () Bool)

(declare-fun res!1049169 () Bool)

(assert (=> b!2478619 (=> (not res!1049169) (not e!1572934))))

(declare-fun key!2246 () K!5355)

(declare-fun contains!5009 (MutableMap!3218 K!5355) Bool)

(assert (=> b!2478619 (= res!1049169 (contains!5009 thiss!42540 key!2246))))

(declare-fun mapIsEmpty!15370 () Bool)

(declare-fun mapRes!15370 () Bool)

(assert (=> mapIsEmpty!15370 mapRes!15370))

(declare-fun b!2478620 () Bool)

(declare-fun e!1572931 () Bool)

(declare-fun tp!793207 () Bool)

(assert (=> b!2478620 (= e!1572931 (and tp!793207 mapRes!15370))))

(declare-fun condMapEmpty!15370 () Bool)

(declare-fun mapDefault!15370 () List!29107)

(assert (=> b!2478620 (= condMapEmpty!15370 (= (arr!5206 (_values!3588 (v!31304 (underlying!6823 (v!31305 (underlying!6824 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29107)) mapDefault!15370)))))

(declare-fun e!1572935 () Bool)

(assert (=> b!2478621 (= e!1572934 (not e!1572935))))

(declare-fun res!1049170 () Bool)

(assert (=> b!2478621 (=> res!1049170 e!1572935)))

(declare-datatypes ((tuple2!28494 0))(
  ( (tuple2!28495 (_1!16788 Bool) (_2!16788 MutLongMap!3308)) )
))
(declare-fun lt!885681 () tuple2!28494)

(assert (=> b!2478621 (= res!1049170 (not (_1!16788 lt!885681)))))

(declare-fun lt!885670 () List!29107)

(declare-fun noDuplicateKeys!51 (List!29107) Bool)

(assert (=> b!2478621 (noDuplicateKeys!51 lt!885670)))

(declare-fun lt!885678 () Unit!42413)

(declare-fun lt!885672 () List!29107)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!37 (List!29107 K!5355) Unit!42413)

(assert (=> b!2478621 (= lt!885678 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!37 lt!885672 key!2246))))

(declare-fun lt!885676 () Cell!13051)

(declare-fun Unit!42415 () Unit!42413)

(declare-fun Unit!42416 () Unit!42413)

(assert (=> b!2478621 (= lt!885679 (ite (_1!16788 lt!885681) (tuple2!28493 Unit!42415 (HashMap!3218 lt!885676 (hashF!5156 thiss!42540) (bvsub (_size!6664 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3380 thiss!42540))) (tuple2!28493 Unit!42416 (HashMap!3218 lt!885676 (hashF!5156 thiss!42540) (_size!6664 thiss!42540) (defaultValue!3380 thiss!42540)))))))

(assert (=> b!2478621 (= lt!885676 (Cell!13052 (_2!16788 lt!885681)))))

(declare-fun lt!885673 () (_ BitVec 64))

(declare-fun update!154 (MutLongMap!3308 (_ BitVec 64) List!29107) tuple2!28494)

(assert (=> b!2478621 (= lt!885681 (update!154 (v!31305 (underlying!6824 thiss!42540)) lt!885673 lt!885670))))

(declare-fun removePairForKey!41 (List!29107 K!5355) List!29107)

(assert (=> b!2478621 (= lt!885670 (removePairForKey!41 lt!885672 key!2246))))

(declare-datatypes ((ListMap!983 0))(
  ( (ListMap!984 (toList!1497 List!29107)) )
))
(declare-fun lt!885677 () ListMap!983)

(declare-fun map!6089 (MutableMap!3218) ListMap!983)

(assert (=> b!2478621 (= lt!885677 (map!6089 thiss!42540))))

(declare-fun lt!885680 () Unit!42413)

(declare-datatypes ((tuple2!28496 0))(
  ( (tuple2!28497 (_1!16789 (_ BitVec 64)) (_2!16789 List!29107)) )
))
(declare-datatypes ((List!29108 0))(
  ( (Nil!29008) (Cons!29008 (h!34410 tuple2!28496) (t!210757 List!29108)) )
))
(declare-datatypes ((ListLongMap!441 0))(
  ( (ListLongMap!442 (toList!1498 List!29108)) )
))
(declare-fun lt!885674 () ListLongMap!441)

(declare-fun lt!885671 () tuple2!28496)

(declare-fun forallContained!822 (List!29108 Int tuple2!28496) Unit!42413)

(assert (=> b!2478621 (= lt!885680 (forallContained!822 (toList!1498 lt!885674) lambda!93571 lt!885671))))

(assert (=> b!2478621 (= lt!885671 (tuple2!28497 lt!885673 lt!885672))))

(declare-fun map!6090 (MutLongMap!3308) ListLongMap!441)

(assert (=> b!2478621 (= lt!885674 (map!6090 (v!31305 (underlying!6824 thiss!42540))))))

(declare-fun apply!6867 (MutLongMap!3308 (_ BitVec 64)) List!29107)

(assert (=> b!2478621 (= lt!885672 (apply!6867 (v!31305 (underlying!6824 thiss!42540)) lt!885673))))

(declare-fun hash!638 (Hashable!3218 K!5355) (_ BitVec 64))

(assert (=> b!2478621 (= lt!885673 (hash!638 (hashF!5156 thiss!42540) key!2246))))

(declare-fun b!2478622 () Bool)

(declare-fun res!1049165 () Bool)

(assert (=> b!2478622 (=> res!1049165 e!1572935)))

(declare-fun contains!5010 (List!29108 tuple2!28496) Bool)

(assert (=> b!2478622 (= res!1049165 (not (contains!5010 (toList!1498 lt!885674) lt!885671)))))

(declare-fun e!1572937 () Bool)

(declare-fun tp!793208 () Bool)

(declare-fun tp!793202 () Bool)

(declare-fun array_inv!3737 (array!11683) Bool)

(declare-fun array_inv!3738 (array!11681) Bool)

(assert (=> b!2478623 (= e!1572937 (and tp!793204 tp!793208 tp!793202 (array_inv!3737 (_keys!3605 (v!31304 (underlying!6823 (v!31305 (underlying!6824 thiss!42540)))))) (array_inv!3738 (_values!3588 (v!31304 (underlying!6823 (v!31305 (underlying!6824 thiss!42540)))))) e!1572931))))

(declare-fun b!2478624 () Bool)

(declare-fun forall!5938 (List!29108 Int) Bool)

(assert (=> b!2478624 (= e!1572935 (forall!5938 (toList!1498 lt!885674) lambda!93572))))

(declare-fun res!1049167 () Bool)

(assert (=> b!2478625 (=> res!1049167 e!1572935)))

(assert (=> b!2478625 (= res!1049167 (not (forall!5938 (toList!1498 lt!885674) lambda!93572)))))

(declare-fun mapNonEmpty!15370 () Bool)

(declare-fun tp!793203 () Bool)

(declare-fun tp!793206 () Bool)

(assert (=> mapNonEmpty!15370 (= mapRes!15370 (and tp!793203 tp!793206))))

(declare-fun mapRest!15370 () (Array (_ BitVec 32) List!29107))

(declare-fun mapKey!15370 () (_ BitVec 32))

(declare-fun mapValue!15370 () List!29107)

(assert (=> mapNonEmpty!15370 (= (arr!5206 (_values!3588 (v!31304 (underlying!6823 (v!31305 (underlying!6824 thiss!42540)))))) (store mapRest!15370 mapKey!15370 mapValue!15370))))

(declare-fun b!2478626 () Bool)

(declare-fun e!1572936 () Bool)

(declare-fun lt!885675 () MutLongMap!3308)

(assert (=> b!2478626 (= e!1572936 (and e!1572932 ((_ is LongMap!3308) lt!885675)))))

(assert (=> b!2478626 (= lt!885675 (v!31305 (underlying!6824 thiss!42540)))))

(declare-fun b!2478627 () Bool)

(assert (=> b!2478627 (= e!1572930 e!1572937)))

(assert (=> b!2478628 (= e!1572933 (and e!1572936 tp!793205))))

(assert (= (and start!241826 res!1049166) b!2478618))

(assert (= (and b!2478618 res!1049168) b!2478619))

(assert (= (and b!2478619 res!1049169) b!2478621))

(assert (= (and b!2478621 (not res!1049170)) b!2478625))

(assert (= (and b!2478625 (not res!1049167)) b!2478622))

(assert (= (and b!2478622 (not res!1049165)) b!2478624))

(assert (= (and b!2478620 condMapEmpty!15370) mapIsEmpty!15370))

(assert (= (and b!2478620 (not condMapEmpty!15370)) mapNonEmpty!15370))

(assert (= b!2478623 b!2478620))

(assert (= b!2478627 b!2478623))

(assert (= b!2478617 b!2478627))

(assert (= (and b!2478626 ((_ is LongMap!3308) (v!31305 (underlying!6824 thiss!42540)))) b!2478617))

(assert (= b!2478628 b!2478626))

(assert (= (and start!241826 ((_ is HashMap!3218) thiss!42540)) b!2478628))

(declare-fun m!2846333 () Bool)

(assert (=> b!2478622 m!2846333))

(declare-fun m!2846335 () Bool)

(assert (=> b!2478623 m!2846335))

(declare-fun m!2846337 () Bool)

(assert (=> b!2478623 m!2846337))

(declare-fun m!2846339 () Bool)

(assert (=> b!2478621 m!2846339))

(declare-fun m!2846341 () Bool)

(assert (=> b!2478621 m!2846341))

(declare-fun m!2846343 () Bool)

(assert (=> b!2478621 m!2846343))

(declare-fun m!2846345 () Bool)

(assert (=> b!2478621 m!2846345))

(declare-fun m!2846347 () Bool)

(assert (=> b!2478621 m!2846347))

(declare-fun m!2846349 () Bool)

(assert (=> b!2478621 m!2846349))

(declare-fun m!2846351 () Bool)

(assert (=> b!2478621 m!2846351))

(declare-fun m!2846353 () Bool)

(assert (=> b!2478621 m!2846353))

(declare-fun m!2846355 () Bool)

(assert (=> b!2478621 m!2846355))

(declare-fun m!2846357 () Bool)

(assert (=> b!2478625 m!2846357))

(assert (=> b!2478624 m!2846357))

(declare-fun m!2846359 () Bool)

(assert (=> b!2478619 m!2846359))

(declare-fun m!2846361 () Bool)

(assert (=> b!2478618 m!2846361))

(declare-fun m!2846363 () Bool)

(assert (=> mapNonEmpty!15370 m!2846363))

(check-sat (not mapNonEmpty!15370) (not b_next!72793) b_and!188329 (not b!2478625) b_and!188327 (not b!2478618) (not b!2478622) (not b!2478623) tp_is_empty!12131 (not b!2478621) (not b_next!72795) (not b!2478619) (not b!2478620) (not b!2478624))
(check-sat b_and!188329 b_and!188327 (not b_next!72793) (not b_next!72795))
