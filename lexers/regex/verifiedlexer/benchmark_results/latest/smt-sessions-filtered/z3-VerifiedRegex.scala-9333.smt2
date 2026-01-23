; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!496598 () Bool)

(assert start!496598)

(declare-fun b!4806114 () Bool)

(declare-fun b_free!129843 () Bool)

(declare-fun b_next!130633 () Bool)

(assert (=> b!4806114 (= b_free!129843 (not b_next!130633))))

(declare-fun tp!1358735 () Bool)

(declare-fun b_and!341597 () Bool)

(assert (=> b!4806114 (= tp!1358735 b_and!341597)))

(declare-fun b!4806113 () Bool)

(declare-fun b_free!129845 () Bool)

(declare-fun b_next!130635 () Bool)

(assert (=> b!4806113 (= b_free!129845 (not b_next!130635))))

(declare-fun tp!1358739 () Bool)

(declare-fun b_and!341599 () Bool)

(assert (=> b!4806113 (= tp!1358739 b_and!341599)))

(declare-fun e!3001577 () Bool)

(declare-datatypes ((K!15954 0))(
  ( (K!15955 (val!21069 Int)) )
))
(declare-datatypes ((array!18242 0))(
  ( (array!18243 (arr!8135 (Array (_ BitVec 32) (_ BitVec 64))) (size!36381 (_ BitVec 32))) )
))
(declare-datatypes ((V!16200 0))(
  ( (V!16201 (val!21070 Int)) )
))
(declare-datatypes ((tuple2!57104 0))(
  ( (tuple2!57105 (_1!31846 K!15954) (_2!31846 V!16200)) )
))
(declare-datatypes ((List!54505 0))(
  ( (Nil!54381) (Cons!54381 (h!60813 tuple2!57104) (t!361955 List!54505)) )
))
(declare-datatypes ((array!18244 0))(
  ( (array!18245 (arr!8136 (Array (_ BitVec 32) List!54505)) (size!36382 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9950 0))(
  ( (LongMapFixedSize!9951 (defaultEntry!5393 Int) (mask!14933 (_ BitVec 32)) (extraKeys!5250 (_ BitVec 32)) (zeroValue!5263 List!54505) (minValue!5263 List!54505) (_size!9975 (_ BitVec 32)) (_keys!5317 array!18242) (_values!5288 array!18244) (_vacant!5040 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19665 0))(
  ( (Cell!19666 (v!48584 LongMapFixedSize!9950)) )
))
(declare-datatypes ((MutLongMap!4975 0))(
  ( (LongMap!4975 (underlying!10157 Cell!19665)) (MutLongMapExt!4974 (__x!33023 Int)) )
))
(declare-datatypes ((Hashable!6986 0))(
  ( (HashableExt!6985 (__x!33024 Int)) )
))
(declare-datatypes ((Cell!19667 0))(
  ( (Cell!19668 (v!48585 MutLongMap!4975)) )
))
(declare-datatypes ((MutableMap!4859 0))(
  ( (MutableMapExt!4858 (__x!33025 Int)) (HashMap!4859 (underlying!10158 Cell!19667) (hashF!13254 Hashable!6986) (_size!9976 (_ BitVec 32)) (defaultValue!5030 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4859)

(declare-fun tp!1358738 () Bool)

(declare-fun e!3001578 () Bool)

(declare-fun tp!1358740 () Bool)

(declare-fun array_inv!5859 (array!18242) Bool)

(declare-fun array_inv!5860 (array!18244) Bool)

(assert (=> b!4806114 (= e!3001577 (and tp!1358735 tp!1358738 tp!1358740 (array_inv!5859 (_keys!5317 (v!48584 (underlying!10157 (v!48585 (underlying!10158 thiss!41921)))))) (array_inv!5860 (_values!5288 (v!48584 (underlying!10157 (v!48585 (underlying!10158 thiss!41921)))))) e!3001578))))

(declare-fun b!4806115 () Bool)

(declare-fun res!2044709 () Bool)

(declare-fun e!3001575 () Bool)

(assert (=> b!4806115 (=> (not res!2044709) (not e!3001575))))

(declare-fun valid!3982 (MutableMap!4859) Bool)

(assert (=> b!4806115 (= res!2044709 (valid!3982 thiss!41921))))

(declare-fun b!4806116 () Bool)

(declare-fun res!2044712 () Bool)

(assert (=> b!4806116 (=> (not res!2044712) (not e!3001575))))

(declare-fun key!1652 () K!15954)

(declare-fun contains!18045 (MutLongMap!4975 (_ BitVec 64)) Bool)

(declare-fun hash!5054 (Hashable!6986 K!15954) (_ BitVec 64))

(assert (=> b!4806116 (= res!2044712 (contains!18045 (v!48585 (underlying!10158 thiss!41921)) (hash!5054 (hashF!13254 thiss!41921) key!1652)))))

(declare-fun b!4806117 () Bool)

(declare-fun e!3001580 () Bool)

(declare-fun valid!3983 (MutLongMap!4975) Bool)

(assert (=> b!4806117 (= e!3001580 (not (valid!3983 (v!48585 (underlying!10158 thiss!41921)))))))

(declare-fun b!4806118 () Bool)

(declare-fun tp!1358741 () Bool)

(declare-fun mapRes!22046 () Bool)

(assert (=> b!4806118 (= e!3001578 (and tp!1358741 mapRes!22046))))

(declare-fun condMapEmpty!22046 () Bool)

(declare-fun mapDefault!22046 () List!54505)

(assert (=> b!4806118 (= condMapEmpty!22046 (= (arr!8136 (_values!5288 (v!48584 (underlying!10157 (v!48585 (underlying!10158 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54505)) mapDefault!22046)))))

(declare-fun b!4806119 () Bool)

(declare-fun e!3001574 () Bool)

(declare-fun e!3001576 () Bool)

(assert (=> b!4806119 (= e!3001574 e!3001576)))

(declare-fun b!4806120 () Bool)

(assert (=> b!4806120 (= e!3001576 e!3001577)))

(declare-fun b!4806121 () Bool)

(declare-fun e!3001581 () Bool)

(declare-fun lt!1959892 () MutLongMap!4975)

(get-info :version)

(assert (=> b!4806121 (= e!3001581 (and e!3001574 ((_ is LongMap!4975) lt!1959892)))))

(assert (=> b!4806121 (= lt!1959892 (v!48585 (underlying!10158 thiss!41921)))))

(declare-fun mapNonEmpty!22046 () Bool)

(declare-fun tp!1358736 () Bool)

(declare-fun tp!1358737 () Bool)

(assert (=> mapNonEmpty!22046 (= mapRes!22046 (and tp!1358736 tp!1358737))))

(declare-fun mapValue!22046 () List!54505)

(declare-fun mapRest!22046 () (Array (_ BitVec 32) List!54505))

(declare-fun mapKey!22046 () (_ BitVec 32))

(assert (=> mapNonEmpty!22046 (= (arr!8136 (_values!5288 (v!48584 (underlying!10157 (v!48585 (underlying!10158 thiss!41921)))))) (store mapRest!22046 mapKey!22046 mapValue!22046))))

(declare-fun res!2044711 () Bool)

(assert (=> start!496598 (=> (not res!2044711) (not e!3001575))))

(assert (=> start!496598 (= res!2044711 ((_ is HashMap!4859) thiss!41921))))

(assert (=> start!496598 e!3001575))

(declare-fun e!3001579 () Bool)

(assert (=> start!496598 e!3001579))

(declare-fun tp_is_empty!33793 () Bool)

(assert (=> start!496598 tp_is_empty!33793))

(assert (=> b!4806113 (= e!3001579 (and e!3001581 tp!1358739))))

(declare-fun mapIsEmpty!22046 () Bool)

(assert (=> mapIsEmpty!22046 mapRes!22046))

(declare-fun b!4806122 () Bool)

(assert (=> b!4806122 (= e!3001575 e!3001580)))

(declare-fun res!2044710 () Bool)

(assert (=> b!4806122 (=> (not res!2044710) (not e!3001580))))

(assert (=> b!4806122 (= res!2044710 ((_ is LongMap!4975) (v!48585 (underlying!10158 thiss!41921))))))

(declare-datatypes ((tuple2!57106 0))(
  ( (tuple2!57107 (_1!31847 (_ BitVec 64)) (_2!31847 List!54505)) )
))
(declare-datatypes ((List!54506 0))(
  ( (Nil!54382) (Cons!54382 (h!60814 tuple2!57106) (t!361956 List!54506)) )
))
(declare-datatypes ((ListLongMap!5465 0))(
  ( (ListLongMap!5466 (toList!7040 List!54506)) )
))
(declare-fun lt!1959891 () ListLongMap!5465)

(declare-fun map!12299 (MutLongMap!4975) ListLongMap!5465)

(assert (=> b!4806122 (= lt!1959891 (map!12299 (v!48585 (underlying!10158 thiss!41921))))))

(assert (= (and start!496598 res!2044711) b!4806115))

(assert (= (and b!4806115 res!2044709) b!4806116))

(assert (= (and b!4806116 res!2044712) b!4806122))

(assert (= (and b!4806122 res!2044710) b!4806117))

(assert (= (and b!4806118 condMapEmpty!22046) mapIsEmpty!22046))

(assert (= (and b!4806118 (not condMapEmpty!22046)) mapNonEmpty!22046))

(assert (= b!4806114 b!4806118))

(assert (= b!4806120 b!4806114))

(assert (= b!4806119 b!4806120))

(assert (= (and b!4806121 ((_ is LongMap!4975) (v!48585 (underlying!10158 thiss!41921)))) b!4806119))

(assert (= b!4806113 b!4806121))

(assert (= (and start!496598 ((_ is HashMap!4859) thiss!41921)) b!4806113))

(declare-fun m!5792584 () Bool)

(assert (=> b!4806117 m!5792584))

(declare-fun m!5792586 () Bool)

(assert (=> b!4806115 m!5792586))

(declare-fun m!5792588 () Bool)

(assert (=> b!4806114 m!5792588))

(declare-fun m!5792590 () Bool)

(assert (=> b!4806114 m!5792590))

(declare-fun m!5792592 () Bool)

(assert (=> b!4806122 m!5792592))

(declare-fun m!5792594 () Bool)

(assert (=> b!4806116 m!5792594))

(assert (=> b!4806116 m!5792594))

(declare-fun m!5792596 () Bool)

(assert (=> b!4806116 m!5792596))

(declare-fun m!5792598 () Bool)

(assert (=> mapNonEmpty!22046 m!5792598))

(check-sat (not b!4806118) (not b_next!130633) (not b!4806122) tp_is_empty!33793 (not b!4806116) (not b!4806114) (not b!4806117) (not b_next!130635) (not b!4806115) b_and!341599 b_and!341597 (not mapNonEmpty!22046))
(check-sat b_and!341597 b_and!341599 (not b_next!130633) (not b_next!130635))
(get-model)

(declare-fun d!1539722 () Bool)

(declare-fun valid!3984 (LongMapFixedSize!9950) Bool)

(assert (=> d!1539722 (= (valid!3983 (v!48585 (underlying!10158 thiss!41921))) (valid!3984 (v!48584 (underlying!10157 (v!48585 (underlying!10158 thiss!41921))))))))

(declare-fun bs!1159859 () Bool)

(assert (= bs!1159859 d!1539722))

(declare-fun m!5792600 () Bool)

(assert (=> bs!1159859 m!5792600))

(assert (=> b!4806117 d!1539722))

(declare-fun d!1539724 () Bool)

(declare-fun res!2044717 () Bool)

(declare-fun e!3001584 () Bool)

(assert (=> d!1539724 (=> (not res!2044717) (not e!3001584))))

(assert (=> d!1539724 (= res!2044717 (valid!3983 (v!48585 (underlying!10158 thiss!41921))))))

(assert (=> d!1539724 (= (valid!3982 thiss!41921) e!3001584)))

(declare-fun b!4806127 () Bool)

(declare-fun res!2044718 () Bool)

(assert (=> b!4806127 (=> (not res!2044718) (not e!3001584))))

(declare-fun lambda!233459 () Int)

(declare-fun forall!12367 (List!54506 Int) Bool)

(assert (=> b!4806127 (= res!2044718 (forall!12367 (toList!7040 (map!12299 (v!48585 (underlying!10158 thiss!41921)))) lambda!233459))))

(declare-fun b!4806128 () Bool)

(declare-fun allKeysSameHashInMap!2385 (ListLongMap!5465 Hashable!6986) Bool)

(assert (=> b!4806128 (= e!3001584 (allKeysSameHashInMap!2385 (map!12299 (v!48585 (underlying!10158 thiss!41921))) (hashF!13254 thiss!41921)))))

(assert (= (and d!1539724 res!2044717) b!4806127))

(assert (= (and b!4806127 res!2044718) b!4806128))

(assert (=> d!1539724 m!5792584))

(assert (=> b!4806127 m!5792592))

(declare-fun m!5792602 () Bool)

(assert (=> b!4806127 m!5792602))

(assert (=> b!4806128 m!5792592))

(assert (=> b!4806128 m!5792592))

(declare-fun m!5792604 () Bool)

(assert (=> b!4806128 m!5792604))

(assert (=> b!4806115 d!1539724))

(declare-fun d!1539726 () Bool)

(declare-fun lt!1959895 () Bool)

(declare-fun contains!18046 (ListLongMap!5465 (_ BitVec 64)) Bool)

(assert (=> d!1539726 (= lt!1959895 (contains!18046 (map!12299 (v!48585 (underlying!10158 thiss!41921))) (hash!5054 (hashF!13254 thiss!41921) key!1652)))))

(declare-fun contains!18047 (LongMapFixedSize!9950 (_ BitVec 64)) Bool)

(assert (=> d!1539726 (= lt!1959895 (contains!18047 (v!48584 (underlying!10157 (v!48585 (underlying!10158 thiss!41921)))) (hash!5054 (hashF!13254 thiss!41921) key!1652)))))

(assert (=> d!1539726 (valid!3983 (v!48585 (underlying!10158 thiss!41921)))))

(assert (=> d!1539726 (= (contains!18045 (v!48585 (underlying!10158 thiss!41921)) (hash!5054 (hashF!13254 thiss!41921) key!1652)) lt!1959895)))

(declare-fun bs!1159860 () Bool)

(assert (= bs!1159860 d!1539726))

(assert (=> bs!1159860 m!5792592))

(assert (=> bs!1159860 m!5792592))

(assert (=> bs!1159860 m!5792594))

(declare-fun m!5792606 () Bool)

(assert (=> bs!1159860 m!5792606))

(assert (=> bs!1159860 m!5792594))

(declare-fun m!5792608 () Bool)

(assert (=> bs!1159860 m!5792608))

(assert (=> bs!1159860 m!5792584))

(assert (=> b!4806116 d!1539726))

(declare-fun d!1539728 () Bool)

(declare-fun hash!5055 (Hashable!6986 K!15954) (_ BitVec 64))

(assert (=> d!1539728 (= (hash!5054 (hashF!13254 thiss!41921) key!1652) (hash!5055 (hashF!13254 thiss!41921) key!1652))))

(declare-fun bs!1159861 () Bool)

(assert (= bs!1159861 d!1539728))

(declare-fun m!5792610 () Bool)

(assert (=> bs!1159861 m!5792610))

(assert (=> b!4806116 d!1539728))

(declare-fun d!1539730 () Bool)

(assert (=> d!1539730 (= (array_inv!5859 (_keys!5317 (v!48584 (underlying!10157 (v!48585 (underlying!10158 thiss!41921)))))) (bvsge (size!36381 (_keys!5317 (v!48584 (underlying!10157 (v!48585 (underlying!10158 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4806114 d!1539730))

(declare-fun d!1539732 () Bool)

(assert (=> d!1539732 (= (array_inv!5860 (_values!5288 (v!48584 (underlying!10157 (v!48585 (underlying!10158 thiss!41921)))))) (bvsge (size!36382 (_values!5288 (v!48584 (underlying!10157 (v!48585 (underlying!10158 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4806114 d!1539732))

(declare-fun d!1539734 () Bool)

(declare-fun map!12300 (LongMapFixedSize!9950) ListLongMap!5465)

(assert (=> d!1539734 (= (map!12299 (v!48585 (underlying!10158 thiss!41921))) (map!12300 (v!48584 (underlying!10157 (v!48585 (underlying!10158 thiss!41921))))))))

(declare-fun bs!1159862 () Bool)

(assert (= bs!1159862 d!1539734))

(declare-fun m!5792612 () Bool)

(assert (=> bs!1159862 m!5792612))

(assert (=> b!4806122 d!1539734))

(declare-fun mapIsEmpty!22049 () Bool)

(declare-fun mapRes!22049 () Bool)

(assert (=> mapIsEmpty!22049 mapRes!22049))

(declare-fun tp!1358749 () Bool)

(declare-fun b!4806136 () Bool)

(declare-fun tp_is_empty!33795 () Bool)

(declare-fun e!3001589 () Bool)

(assert (=> b!4806136 (= e!3001589 (and tp_is_empty!33793 tp_is_empty!33795 tp!1358749))))

(declare-fun condMapEmpty!22049 () Bool)

(declare-fun mapDefault!22049 () List!54505)

(assert (=> mapNonEmpty!22046 (= condMapEmpty!22049 (= mapRest!22046 ((as const (Array (_ BitVec 32) List!54505)) mapDefault!22049)))))

(assert (=> mapNonEmpty!22046 (= tp!1358736 (and e!3001589 mapRes!22049))))

(declare-fun mapNonEmpty!22049 () Bool)

(declare-fun tp!1358748 () Bool)

(declare-fun e!3001590 () Bool)

(assert (=> mapNonEmpty!22049 (= mapRes!22049 (and tp!1358748 e!3001590))))

(declare-fun mapValue!22049 () List!54505)

(declare-fun mapRest!22049 () (Array (_ BitVec 32) List!54505))

(declare-fun mapKey!22049 () (_ BitVec 32))

(assert (=> mapNonEmpty!22049 (= mapRest!22046 (store mapRest!22049 mapKey!22049 mapValue!22049))))

(declare-fun tp!1358750 () Bool)

(declare-fun b!4806135 () Bool)

(assert (=> b!4806135 (= e!3001590 (and tp_is_empty!33793 tp_is_empty!33795 tp!1358750))))

(assert (= (and mapNonEmpty!22046 condMapEmpty!22049) mapIsEmpty!22049))

(assert (= (and mapNonEmpty!22046 (not condMapEmpty!22049)) mapNonEmpty!22049))

(assert (= (and mapNonEmpty!22049 ((_ is Cons!54381) mapValue!22049)) b!4806135))

(assert (= (and mapNonEmpty!22046 ((_ is Cons!54381) mapDefault!22049)) b!4806136))

(declare-fun m!5792614 () Bool)

(assert (=> mapNonEmpty!22049 m!5792614))

(declare-fun b!4806141 () Bool)

(declare-fun tp!1358753 () Bool)

(declare-fun e!3001593 () Bool)

(assert (=> b!4806141 (= e!3001593 (and tp_is_empty!33793 tp_is_empty!33795 tp!1358753))))

(assert (=> mapNonEmpty!22046 (= tp!1358737 e!3001593)))

(assert (= (and mapNonEmpty!22046 ((_ is Cons!54381) mapValue!22046)) b!4806141))

(declare-fun tp!1358754 () Bool)

(declare-fun b!4806142 () Bool)

(declare-fun e!3001594 () Bool)

(assert (=> b!4806142 (= e!3001594 (and tp_is_empty!33793 tp_is_empty!33795 tp!1358754))))

(assert (=> b!4806114 (= tp!1358738 e!3001594)))

(assert (= (and b!4806114 ((_ is Cons!54381) (zeroValue!5263 (v!48584 (underlying!10157 (v!48585 (underlying!10158 thiss!41921))))))) b!4806142))

(declare-fun b!4806143 () Bool)

(declare-fun e!3001595 () Bool)

(declare-fun tp!1358755 () Bool)

(assert (=> b!4806143 (= e!3001595 (and tp_is_empty!33793 tp_is_empty!33795 tp!1358755))))

(assert (=> b!4806114 (= tp!1358740 e!3001595)))

(assert (= (and b!4806114 ((_ is Cons!54381) (minValue!5263 (v!48584 (underlying!10157 (v!48585 (underlying!10158 thiss!41921))))))) b!4806143))

(declare-fun b!4806144 () Bool)

(declare-fun e!3001596 () Bool)

(declare-fun tp!1358756 () Bool)

(assert (=> b!4806144 (= e!3001596 (and tp_is_empty!33793 tp_is_empty!33795 tp!1358756))))

(assert (=> b!4806118 (= tp!1358741 e!3001596)))

(assert (= (and b!4806118 ((_ is Cons!54381) mapDefault!22046)) b!4806144))

(check-sat (not b!4806143) (not b_next!130633) (not b!4806142) (not d!1539734) (not b!4806135) (not d!1539724) (not d!1539722) (not b!4806141) tp_is_empty!33793 b_and!341599 (not mapNonEmpty!22049) (not b!4806144) (not b!4806136) (not b_next!130635) (not b!4806128) b_and!341597 (not d!1539726) (not d!1539728) tp_is_empty!33795 (not b!4806127))
(check-sat b_and!341597 b_and!341599 (not b_next!130633) (not b_next!130635))
