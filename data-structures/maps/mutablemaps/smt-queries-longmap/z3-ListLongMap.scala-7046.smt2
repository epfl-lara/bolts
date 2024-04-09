; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89326 () Bool)

(assert start!89326)

(declare-fun b!1023796 () Bool)

(declare-fun b_free!20331 () Bool)

(declare-fun b_next!20331 () Bool)

(assert (=> b!1023796 (= b_free!20331 (not b_next!20331))))

(declare-fun tp!72028 () Bool)

(declare-fun b_and!32591 () Bool)

(assert (=> b!1023796 (= tp!72028 b_and!32591)))

(declare-fun mapNonEmpty!37494 () Bool)

(declare-fun mapRes!37494 () Bool)

(declare-fun tp!72029 () Bool)

(declare-fun e!577023 () Bool)

(assert (=> mapNonEmpty!37494 (= mapRes!37494 (and tp!72029 e!577023))))

(declare-datatypes ((V!36941 0))(
  ( (V!36942 (val!12076 Int)) )
))
(declare-datatypes ((ValueCell!11322 0))(
  ( (ValueCellFull!11322 (v!14646 V!36941)) (EmptyCell!11322) )
))
(declare-fun mapValue!37494 () ValueCell!11322)

(declare-datatypes ((array!64130 0))(
  ( (array!64131 (arr!30873 (Array (_ BitVec 32) (_ BitVec 64))) (size!31385 (_ BitVec 32))) )
))
(declare-datatypes ((array!64132 0))(
  ( (array!64133 (arr!30874 (Array (_ BitVec 32) ValueCell!11322)) (size!31386 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5238 0))(
  ( (LongMapFixedSize!5239 (defaultEntry!5971 Int) (mask!29599 (_ BitVec 32)) (extraKeys!5703 (_ BitVec 32)) (zeroValue!5807 V!36941) (minValue!5807 V!36941) (_size!2674 (_ BitVec 32)) (_keys!11113 array!64130) (_values!5994 array!64132) (_vacant!2674 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5238)

(declare-fun mapRest!37494 () (Array (_ BitVec 32) ValueCell!11322))

(declare-fun mapKey!37494 () (_ BitVec 32))

(assert (=> mapNonEmpty!37494 (= (arr!30874 (_values!5994 thiss!1427)) (store mapRest!37494 mapKey!37494 mapValue!37494))))

(declare-fun b!1023793 () Bool)

(declare-fun e!577022 () Bool)

(declare-fun tp_is_empty!24051 () Bool)

(assert (=> b!1023793 (= e!577022 tp_is_empty!24051)))

(declare-fun b!1023794 () Bool)

(assert (=> b!1023794 (= e!577023 tp_is_empty!24051)))

(declare-fun b!1023795 () Bool)

(declare-fun res!685658 () Bool)

(declare-fun e!577027 () Bool)

(assert (=> b!1023795 (=> (not res!685658) (not e!577027))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1023795 (= res!685658 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!577026 () Bool)

(declare-fun e!577025 () Bool)

(declare-fun array_inv!23787 (array!64130) Bool)

(declare-fun array_inv!23788 (array!64132) Bool)

(assert (=> b!1023796 (= e!577026 (and tp!72028 tp_is_empty!24051 (array_inv!23787 (_keys!11113 thiss!1427)) (array_inv!23788 (_values!5994 thiss!1427)) e!577025))))

(declare-fun b!1023797 () Bool)

(assert (=> b!1023797 (= e!577027 (not true))))

(declare-fun lt!450504 () Bool)

(declare-fun lt!450503 () V!36941)

(declare-fun valid!1951 (LongMapFixedSize!5238) Bool)

(assert (=> b!1023797 (= lt!450504 (valid!1951 (LongMapFixedSize!5239 (defaultEntry!5971 thiss!1427) (mask!29599 thiss!1427) (bvand (extraKeys!5703 thiss!1427) #b00000000000000000000000000000001) (zeroValue!5807 thiss!1427) lt!450503 (_size!2674 thiss!1427) (_keys!11113 thiss!1427) (_values!5994 thiss!1427) (_vacant!2674 thiss!1427))))))

(declare-datatypes ((tuple2!15612 0))(
  ( (tuple2!15613 (_1!7816 (_ BitVec 64)) (_2!7816 V!36941)) )
))
(declare-datatypes ((List!21825 0))(
  ( (Nil!21822) (Cons!21821 (h!23019 tuple2!15612) (t!30892 List!21825)) )
))
(declare-datatypes ((ListLongMap!13771 0))(
  ( (ListLongMap!13772 (toList!6901 List!21825)) )
))
(declare-fun -!477 (ListLongMap!13771 (_ BitVec 64)) ListLongMap!13771)

(declare-fun getCurrentListMap!3908 (array!64130 array!64132 (_ BitVec 32) (_ BitVec 32) V!36941 V!36941 (_ BitVec 32) Int) ListLongMap!13771)

(assert (=> b!1023797 (= (-!477 (getCurrentListMap!3908 (_keys!11113 thiss!1427) (_values!5994 thiss!1427) (mask!29599 thiss!1427) (extraKeys!5703 thiss!1427) (zeroValue!5807 thiss!1427) (minValue!5807 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!5971 thiss!1427)) #b1000000000000000000000000000000000000000000000000000000000000000) (getCurrentListMap!3908 (_keys!11113 thiss!1427) (_values!5994 thiss!1427) (mask!29599 thiss!1427) (bvand (extraKeys!5703 thiss!1427) #b00000000000000000000000000000001) (zeroValue!5807 thiss!1427) lt!450503 #b00000000000000000000000000000000 (defaultEntry!5971 thiss!1427)))))

(declare-datatypes ((Unit!33306 0))(
  ( (Unit!33307) )
))
(declare-fun lt!450505 () Unit!33306)

(declare-fun lemmaRemoveLongMinValueKeyThenRemoveKeyFromListMap!9 (array!64130 array!64132 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!36941 V!36941 V!36941 Int) Unit!33306)

(assert (=> b!1023797 (= lt!450505 (lemmaRemoveLongMinValueKeyThenRemoveKeyFromListMap!9 (_keys!11113 thiss!1427) (_values!5994 thiss!1427) (mask!29599 thiss!1427) (extraKeys!5703 thiss!1427) (bvand (extraKeys!5703 thiss!1427) #b00000000000000000000000000000001) (zeroValue!5807 thiss!1427) (minValue!5807 thiss!1427) lt!450503 (defaultEntry!5971 thiss!1427)))))

(declare-fun dynLambda!1952 (Int (_ BitVec 64)) V!36941)

(assert (=> b!1023797 (= lt!450503 (dynLambda!1952 (defaultEntry!5971 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1023798 () Bool)

(assert (=> b!1023798 (= e!577025 (and e!577022 mapRes!37494))))

(declare-fun condMapEmpty!37494 () Bool)

(declare-fun mapDefault!37494 () ValueCell!11322)

(assert (=> b!1023798 (= condMapEmpty!37494 (= (arr!30874 (_values!5994 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11322)) mapDefault!37494)))))

(declare-fun mapIsEmpty!37494 () Bool)

(assert (=> mapIsEmpty!37494 mapRes!37494))

(declare-fun res!685659 () Bool)

(assert (=> start!89326 (=> (not res!685659) (not e!577027))))

(assert (=> start!89326 (= res!685659 (valid!1951 thiss!1427))))

(assert (=> start!89326 e!577027))

(assert (=> start!89326 e!577026))

(assert (=> start!89326 true))

(assert (= (and start!89326 res!685659) b!1023795))

(assert (= (and b!1023795 res!685658) b!1023797))

(assert (= (and b!1023798 condMapEmpty!37494) mapIsEmpty!37494))

(assert (= (and b!1023798 (not condMapEmpty!37494)) mapNonEmpty!37494))

(get-info :version)

(assert (= (and mapNonEmpty!37494 ((_ is ValueCellFull!11322) mapValue!37494)) b!1023794))

(assert (= (and b!1023798 ((_ is ValueCellFull!11322) mapDefault!37494)) b!1023793))

(assert (= b!1023796 b!1023798))

(assert (= start!89326 b!1023796))

(declare-fun b_lambda!15745 () Bool)

(assert (=> (not b_lambda!15745) (not b!1023797)))

(declare-fun t!30891 () Bool)

(declare-fun tb!6891 () Bool)

(assert (=> (and b!1023796 (= (defaultEntry!5971 thiss!1427) (defaultEntry!5971 thiss!1427)) t!30891) tb!6891))

(declare-fun result!14083 () Bool)

(assert (=> tb!6891 (= result!14083 tp_is_empty!24051)))

(assert (=> b!1023797 t!30891))

(declare-fun b_and!32593 () Bool)

(assert (= b_and!32591 (and (=> t!30891 result!14083) b_and!32593)))

(declare-fun m!942517 () Bool)

(assert (=> mapNonEmpty!37494 m!942517))

(declare-fun m!942519 () Bool)

(assert (=> b!1023796 m!942519))

(declare-fun m!942521 () Bool)

(assert (=> b!1023796 m!942521))

(declare-fun m!942523 () Bool)

(assert (=> b!1023797 m!942523))

(declare-fun m!942525 () Bool)

(assert (=> b!1023797 m!942525))

(declare-fun m!942527 () Bool)

(assert (=> b!1023797 m!942527))

(declare-fun m!942529 () Bool)

(assert (=> b!1023797 m!942529))

(declare-fun m!942531 () Bool)

(assert (=> b!1023797 m!942531))

(assert (=> b!1023797 m!942527))

(declare-fun m!942533 () Bool)

(assert (=> b!1023797 m!942533))

(declare-fun m!942535 () Bool)

(assert (=> start!89326 m!942535))

(check-sat (not b_next!20331) tp_is_empty!24051 (not start!89326) (not mapNonEmpty!37494) (not b!1023797) (not b_lambda!15745) b_and!32593 (not b!1023796))
(check-sat b_and!32593 (not b_next!20331))
