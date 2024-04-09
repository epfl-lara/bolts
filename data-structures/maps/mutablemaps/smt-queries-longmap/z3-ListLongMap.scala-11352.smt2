; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132050 () Bool)

(assert start!132050)

(declare-fun b_free!31731 () Bool)

(declare-fun b_next!31731 () Bool)

(assert (=> start!132050 (= b_free!31731 (not b_next!31731))))

(declare-fun tp!111445 () Bool)

(declare-fun b_and!51151 () Bool)

(assert (=> start!132050 (= tp!111445 b_and!51151)))

(declare-fun b!1546858 () Bool)

(declare-fun e!861046 () Bool)

(declare-fun e!861045 () Bool)

(declare-fun mapRes!58714 () Bool)

(assert (=> b!1546858 (= e!861046 (and e!861045 mapRes!58714))))

(declare-fun condMapEmpty!58714 () Bool)

(declare-datatypes ((V!59119 0))(
  ( (V!59120 (val!19081 Int)) )
))
(declare-datatypes ((ValueCell!18093 0))(
  ( (ValueCellFull!18093 (v!21879 V!59119)) (EmptyCell!18093) )
))
(declare-datatypes ((array!103181 0))(
  ( (array!103182 (arr!49788 (Array (_ BitVec 32) ValueCell!18093)) (size!50339 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103181)

(declare-fun mapDefault!58714 () ValueCell!18093)

(assert (=> b!1546858 (= condMapEmpty!58714 (= (arr!49788 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18093)) mapDefault!58714)))))

(declare-fun b!1546859 () Bool)

(declare-fun res!1060499 () Bool)

(declare-fun e!861044 () Bool)

(assert (=> b!1546859 (=> (not res!1060499) (not e!861044))))

(declare-datatypes ((array!103183 0))(
  ( (array!103184 (arr!49789 (Array (_ BitVec 32) (_ BitVec 64))) (size!50340 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103183)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103183 (_ BitVec 32)) Bool)

(assert (=> b!1546859 (= res!1060499 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1546860 () Bool)

(declare-fun tp_is_empty!38007 () Bool)

(assert (=> b!1546860 (= e!861045 tp_is_empty!38007)))

(declare-fun mapNonEmpty!58714 () Bool)

(declare-fun tp!111446 () Bool)

(declare-fun e!861051 () Bool)

(assert (=> mapNonEmpty!58714 (= mapRes!58714 (and tp!111446 e!861051))))

(declare-fun mapValue!58714 () ValueCell!18093)

(declare-fun mapRest!58714 () (Array (_ BitVec 32) ValueCell!18093))

(declare-fun mapKey!58714 () (_ BitVec 32))

(assert (=> mapNonEmpty!58714 (= (arr!49788 _values!470) (store mapRest!58714 mapKey!58714 mapValue!58714))))

(declare-fun b!1546861 () Bool)

(declare-fun res!1060498 () Bool)

(assert (=> b!1546861 (=> (not res!1060498) (not e!861044))))

(declare-datatypes ((List!36196 0))(
  ( (Nil!36193) (Cons!36192 (h!37638 (_ BitVec 64)) (t!50897 List!36196)) )
))
(declare-fun arrayNoDuplicates!0 (array!103183 (_ BitVec 32) List!36196) Bool)

(assert (=> b!1546861 (= res!1060498 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36193))))

(declare-fun zeroValue!436 () V!59119)

(declare-fun bm!69704 () Bool)

(declare-datatypes ((tuple2!24686 0))(
  ( (tuple2!24687 (_1!12353 (_ BitVec 64)) (_2!12353 V!59119)) )
))
(declare-datatypes ((List!36197 0))(
  ( (Nil!36194) (Cons!36193 (h!37639 tuple2!24686) (t!50898 List!36197)) )
))
(declare-datatypes ((ListLongMap!22307 0))(
  ( (ListLongMap!22308 (toList!11169 List!36197)) )
))
(declare-fun call!69707 () ListLongMap!22307)

(declare-fun call!69711 () ListLongMap!22307)

(declare-fun call!69708 () ListLongMap!22307)

(declare-fun minValue!436 () V!59119)

(declare-fun c!141853 () Bool)

(declare-fun c!141852 () Bool)

(declare-fun call!69709 () ListLongMap!22307)

(declare-fun +!4897 (ListLongMap!22307 tuple2!24686) ListLongMap!22307)

(assert (=> bm!69704 (= call!69711 (+!4897 (ite c!141853 call!69709 (ite c!141852 call!69707 call!69708)) (ite (or c!141853 c!141852) (tuple2!24687 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24687 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun bm!69705 () Bool)

(declare-fun call!69710 () ListLongMap!22307)

(assert (=> bm!69705 (= call!69710 call!69711)))

(declare-fun b!1546862 () Bool)

(declare-fun res!1060496 () Bool)

(assert (=> b!1546862 (=> (not res!1060496) (not e!861044))))

(declare-fun from!762 () (_ BitVec 32))

(assert (=> b!1546862 (= res!1060496 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50340 _keys!618))))))

(declare-fun b!1546864 () Bool)

(declare-fun e!861048 () Bool)

(assert (=> b!1546864 (= e!861044 e!861048)))

(declare-fun res!1060494 () Bool)

(assert (=> b!1546864 (=> (not res!1060494) (not e!861048))))

(assert (=> b!1546864 (= res!1060494 (bvslt from!762 (size!50340 _keys!618)))))

(declare-fun lt!666657 () ListLongMap!22307)

(declare-fun e!861047 () ListLongMap!22307)

(assert (=> b!1546864 (= lt!666657 e!861047)))

(declare-fun lt!666658 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1546864 (= c!141853 (and (not lt!666658) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1546864 (= lt!666658 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun defaultEntry!478 () Int)

(declare-fun bm!69706 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6614 (array!103183 array!103181 (_ BitVec 32) (_ BitVec 32) V!59119 V!59119 (_ BitVec 32) Int) ListLongMap!22307)

(assert (=> bm!69706 (= call!69709 (getCurrentListMapNoExtraKeys!6614 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1546865 () Bool)

(assert (=> b!1546865 (= e!861048 (not true))))

(declare-fun lt!666655 () ListLongMap!22307)

(declare-fun apply!1082 (ListLongMap!22307 (_ BitVec 64)) V!59119)

(assert (=> b!1546865 (= (apply!1082 (+!4897 lt!666655 (tuple2!24687 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49789 _keys!618) from!762)) (apply!1082 lt!666655 (select (arr!49789 _keys!618) from!762)))))

(declare-datatypes ((Unit!51494 0))(
  ( (Unit!51495) )
))
(declare-fun lt!666659 () Unit!51494)

(declare-fun addApplyDifferent!585 (ListLongMap!22307 (_ BitVec 64) V!59119 (_ BitVec 64)) Unit!51494)

(assert (=> b!1546865 (= lt!666659 (addApplyDifferent!585 lt!666655 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49789 _keys!618) from!762)))))

(declare-fun contains!10066 (ListLongMap!22307 (_ BitVec 64)) Bool)

(assert (=> b!1546865 (contains!10066 (+!4897 lt!666655 (tuple2!24687 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49789 _keys!618) from!762))))

(declare-fun lt!666656 () Unit!51494)

(declare-fun addStillContains!1248 (ListLongMap!22307 (_ BitVec 64) V!59119 (_ BitVec 64)) Unit!51494)

(assert (=> b!1546865 (= lt!666656 (addStillContains!1248 lt!666655 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49789 _keys!618) from!762)))))

(assert (=> b!1546865 (= lt!666655 (getCurrentListMapNoExtraKeys!6614 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1546866 () Bool)

(declare-fun e!861050 () ListLongMap!22307)

(assert (=> b!1546866 (= e!861047 e!861050)))

(assert (=> b!1546866 (= c!141852 (and (not lt!666658) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!69707 () Bool)

(assert (=> bm!69707 (= call!69708 call!69707)))

(declare-fun b!1546867 () Bool)

(declare-fun e!861049 () ListLongMap!22307)

(assert (=> b!1546867 (= e!861049 call!69710)))

(declare-fun b!1546868 () Bool)

(assert (=> b!1546868 (= e!861051 tp_is_empty!38007)))

(declare-fun mapIsEmpty!58714 () Bool)

(assert (=> mapIsEmpty!58714 mapRes!58714))

(declare-fun b!1546869 () Bool)

(assert (=> b!1546869 (= e!861050 call!69710)))

(declare-fun b!1546863 () Bool)

(assert (=> b!1546863 (= e!861049 call!69708)))

(declare-fun res!1060495 () Bool)

(assert (=> start!132050 (=> (not res!1060495) (not e!861044))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132050 (= res!1060495 (validMask!0 mask!926))))

(assert (=> start!132050 e!861044))

(declare-fun array_inv!38645 (array!103183) Bool)

(assert (=> start!132050 (array_inv!38645 _keys!618)))

(assert (=> start!132050 tp_is_empty!38007))

(assert (=> start!132050 true))

(assert (=> start!132050 tp!111445))

(declare-fun array_inv!38646 (array!103181) Bool)

(assert (=> start!132050 (and (array_inv!38646 _values!470) e!861046)))

(declare-fun b!1546870 () Bool)

(declare-fun res!1060497 () Bool)

(assert (=> b!1546870 (=> (not res!1060497) (not e!861048))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1546870 (= res!1060497 (validKeyInArray!0 (select (arr!49789 _keys!618) from!762)))))

(declare-fun bm!69708 () Bool)

(assert (=> bm!69708 (= call!69707 call!69709)))

(declare-fun b!1546871 () Bool)

(assert (=> b!1546871 (= e!861047 (+!4897 call!69711 (tuple2!24687 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1546872 () Bool)

(declare-fun res!1060493 () Bool)

(assert (=> b!1546872 (=> (not res!1060493) (not e!861044))))

(assert (=> b!1546872 (= res!1060493 (and (= (size!50339 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50340 _keys!618) (size!50339 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1546873 () Bool)

(declare-fun c!141854 () Bool)

(assert (=> b!1546873 (= c!141854 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666658))))

(assert (=> b!1546873 (= e!861050 e!861049)))

(assert (= (and start!132050 res!1060495) b!1546872))

(assert (= (and b!1546872 res!1060493) b!1546859))

(assert (= (and b!1546859 res!1060499) b!1546861))

(assert (= (and b!1546861 res!1060498) b!1546862))

(assert (= (and b!1546862 res!1060496) b!1546864))

(assert (= (and b!1546864 c!141853) b!1546871))

(assert (= (and b!1546864 (not c!141853)) b!1546866))

(assert (= (and b!1546866 c!141852) b!1546869))

(assert (= (and b!1546866 (not c!141852)) b!1546873))

(assert (= (and b!1546873 c!141854) b!1546867))

(assert (= (and b!1546873 (not c!141854)) b!1546863))

(assert (= (or b!1546867 b!1546863) bm!69707))

(assert (= (or b!1546869 bm!69707) bm!69708))

(assert (= (or b!1546869 b!1546867) bm!69705))

(assert (= (or b!1546871 bm!69708) bm!69706))

(assert (= (or b!1546871 bm!69705) bm!69704))

(assert (= (and b!1546864 res!1060494) b!1546870))

(assert (= (and b!1546870 res!1060497) b!1546865))

(assert (= (and b!1546858 condMapEmpty!58714) mapIsEmpty!58714))

(assert (= (and b!1546858 (not condMapEmpty!58714)) mapNonEmpty!58714))

(get-info :version)

(assert (= (and mapNonEmpty!58714 ((_ is ValueCellFull!18093) mapValue!58714)) b!1546868))

(assert (= (and b!1546858 ((_ is ValueCellFull!18093) mapDefault!58714)) b!1546860))

(assert (= start!132050 b!1546858))

(declare-fun m!1426639 () Bool)

(assert (=> start!132050 m!1426639))

(declare-fun m!1426641 () Bool)

(assert (=> start!132050 m!1426641))

(declare-fun m!1426643 () Bool)

(assert (=> start!132050 m!1426643))

(declare-fun m!1426645 () Bool)

(assert (=> b!1546870 m!1426645))

(assert (=> b!1546870 m!1426645))

(declare-fun m!1426647 () Bool)

(assert (=> b!1546870 m!1426647))

(declare-fun m!1426649 () Bool)

(assert (=> b!1546859 m!1426649))

(declare-fun m!1426651 () Bool)

(assert (=> b!1546865 m!1426651))

(assert (=> b!1546865 m!1426645))

(declare-fun m!1426653 () Bool)

(assert (=> b!1546865 m!1426653))

(assert (=> b!1546865 m!1426645))

(assert (=> b!1546865 m!1426645))

(declare-fun m!1426655 () Bool)

(assert (=> b!1546865 m!1426655))

(assert (=> b!1546865 m!1426645))

(declare-fun m!1426657 () Bool)

(assert (=> b!1546865 m!1426657))

(declare-fun m!1426659 () Bool)

(assert (=> b!1546865 m!1426659))

(assert (=> b!1546865 m!1426645))

(declare-fun m!1426661 () Bool)

(assert (=> b!1546865 m!1426661))

(assert (=> b!1546865 m!1426651))

(assert (=> b!1546865 m!1426645))

(declare-fun m!1426663 () Bool)

(assert (=> b!1546865 m!1426663))

(declare-fun m!1426665 () Bool)

(assert (=> b!1546865 m!1426665))

(assert (=> b!1546865 m!1426659))

(declare-fun m!1426667 () Bool)

(assert (=> bm!69704 m!1426667))

(declare-fun m!1426669 () Bool)

(assert (=> mapNonEmpty!58714 m!1426669))

(assert (=> bm!69706 m!1426665))

(declare-fun m!1426671 () Bool)

(assert (=> b!1546861 m!1426671))

(declare-fun m!1426673 () Bool)

(assert (=> b!1546871 m!1426673))

(check-sat b_and!51151 (not b!1546870) (not mapNonEmpty!58714) (not start!132050) (not b_next!31731) (not b!1546861) (not bm!69706) (not bm!69704) (not b!1546871) (not b!1546859) tp_is_empty!38007 (not b!1546865))
(check-sat b_and!51151 (not b_next!31731))
