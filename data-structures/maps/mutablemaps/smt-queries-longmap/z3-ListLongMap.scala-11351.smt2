; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132044 () Bool)

(assert start!132044)

(declare-fun b_free!31725 () Bool)

(declare-fun b_next!31725 () Bool)

(assert (=> start!132044 (= b_free!31725 (not b_next!31725))))

(declare-fun tp!111428 () Bool)

(declare-fun b_and!51145 () Bool)

(assert (=> start!132044 (= tp!111428 b_and!51145)))

(declare-fun b!1546714 () Bool)

(declare-fun e!860963 () Bool)

(declare-fun tp_is_empty!38001 () Bool)

(assert (=> b!1546714 (= e!860963 tp_is_empty!38001)))

(declare-datatypes ((array!103169 0))(
  ( (array!103170 (arr!49782 (Array (_ BitVec 32) (_ BitVec 64))) (size!50333 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103169)

(declare-datatypes ((V!59111 0))(
  ( (V!59112 (val!19078 Int)) )
))
(declare-fun zeroValue!436 () V!59111)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18090 0))(
  ( (ValueCellFull!18090 (v!21876 V!59111)) (EmptyCell!18090) )
))
(declare-datatypes ((array!103171 0))(
  ( (array!103172 (arr!49783 (Array (_ BitVec 32) ValueCell!18090)) (size!50334 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103171)

(declare-datatypes ((tuple2!24680 0))(
  ( (tuple2!24681 (_1!12350 (_ BitVec 64)) (_2!12350 V!59111)) )
))
(declare-datatypes ((List!36190 0))(
  ( (Nil!36187) (Cons!36186 (h!37632 tuple2!24680) (t!50891 List!36190)) )
))
(declare-datatypes ((ListLongMap!22301 0))(
  ( (ListLongMap!22302 (toList!11166 List!36190)) )
))
(declare-fun call!69664 () ListLongMap!22301)

(declare-fun minValue!436 () V!59111)

(declare-fun bm!69659 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6611 (array!103169 array!103171 (_ BitVec 32) (_ BitVec 32) V!59111 V!59111 (_ BitVec 32) Int) ListLongMap!22301)

(assert (=> bm!69659 (= call!69664 (getCurrentListMapNoExtraKeys!6611 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun bm!69660 () Bool)

(declare-fun call!69662 () ListLongMap!22301)

(declare-fun call!69665 () ListLongMap!22301)

(assert (=> bm!69660 (= call!69662 call!69665)))

(declare-fun b!1546715 () Bool)

(declare-fun c!141826 () Bool)

(declare-fun lt!666611 () Bool)

(assert (=> b!1546715 (= c!141826 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666611))))

(declare-fun e!860965 () ListLongMap!22301)

(declare-fun e!860964 () ListLongMap!22301)

(assert (=> b!1546715 (= e!860965 e!860964)))

(declare-fun b!1546716 () Bool)

(assert (=> b!1546716 (= e!860965 call!69662)))

(declare-fun call!69666 () ListLongMap!22301)

(declare-fun c!141825 () Bool)

(declare-fun call!69663 () ListLongMap!22301)

(declare-fun c!141827 () Bool)

(declare-fun bm!69661 () Bool)

(declare-fun +!4894 (ListLongMap!22301 tuple2!24680) ListLongMap!22301)

(assert (=> bm!69661 (= call!69665 (+!4894 (ite c!141827 call!69664 (ite c!141825 call!69666 call!69663)) (ite (or c!141827 c!141825) (tuple2!24681 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24681 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1546717 () Bool)

(declare-fun e!860970 () ListLongMap!22301)

(assert (=> b!1546717 (= e!860970 (+!4894 call!69665 (tuple2!24681 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1546718 () Bool)

(assert (=> b!1546718 (= e!860964 call!69663)))

(declare-fun b!1546719 () Bool)

(declare-fun e!860967 () Bool)

(declare-fun mapRes!58705 () Bool)

(assert (=> b!1546719 (= e!860967 (and e!860963 mapRes!58705))))

(declare-fun condMapEmpty!58705 () Bool)

(declare-fun mapDefault!58705 () ValueCell!18090)

(assert (=> b!1546719 (= condMapEmpty!58705 (= (arr!49783 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18090)) mapDefault!58705)))))

(declare-fun mapNonEmpty!58705 () Bool)

(declare-fun tp!111427 () Bool)

(declare-fun e!860966 () Bool)

(assert (=> mapNonEmpty!58705 (= mapRes!58705 (and tp!111427 e!860966))))

(declare-fun mapRest!58705 () (Array (_ BitVec 32) ValueCell!18090))

(declare-fun mapValue!58705 () ValueCell!18090)

(declare-fun mapKey!58705 () (_ BitVec 32))

(assert (=> mapNonEmpty!58705 (= (arr!49783 _values!470) (store mapRest!58705 mapKey!58705 mapValue!58705))))

(declare-fun b!1546720 () Bool)

(declare-fun res!1060430 () Bool)

(declare-fun e!860971 () Bool)

(assert (=> b!1546720 (=> (not res!1060430) (not e!860971))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103169 (_ BitVec 32)) Bool)

(assert (=> b!1546720 (= res!1060430 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1546721 () Bool)

(declare-fun res!1060436 () Bool)

(assert (=> b!1546721 (=> (not res!1060436) (not e!860971))))

(declare-datatypes ((List!36191 0))(
  ( (Nil!36188) (Cons!36187 (h!37633 (_ BitVec 64)) (t!50892 List!36191)) )
))
(declare-fun arrayNoDuplicates!0 (array!103169 (_ BitVec 32) List!36191) Bool)

(assert (=> b!1546721 (= res!1060436 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36188))))

(declare-fun b!1546723 () Bool)

(assert (=> b!1546723 (= e!860966 tp_is_empty!38001)))

(declare-fun b!1546724 () Bool)

(declare-fun res!1060435 () Bool)

(declare-fun e!860968 () Bool)

(assert (=> b!1546724 (=> (not res!1060435) (not e!860968))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1546724 (= res!1060435 (validKeyInArray!0 (select (arr!49782 _keys!618) from!762)))))

(declare-fun bm!69662 () Bool)

(assert (=> bm!69662 (= call!69666 call!69664)))

(declare-fun mapIsEmpty!58705 () Bool)

(assert (=> mapIsEmpty!58705 mapRes!58705))

(declare-fun b!1546725 () Bool)

(assert (=> b!1546725 (= e!860971 e!860968)))

(declare-fun res!1060431 () Bool)

(assert (=> b!1546725 (=> (not res!1060431) (not e!860968))))

(assert (=> b!1546725 (= res!1060431 (bvslt from!762 (size!50333 _keys!618)))))

(declare-fun lt!666610 () ListLongMap!22301)

(assert (=> b!1546725 (= lt!666610 e!860970)))

(assert (=> b!1546725 (= c!141827 (and (not lt!666611) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1546725 (= lt!666611 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!69663 () Bool)

(assert (=> bm!69663 (= call!69663 call!69666)))

(declare-fun b!1546726 () Bool)

(declare-fun res!1060432 () Bool)

(assert (=> b!1546726 (=> (not res!1060432) (not e!860971))))

(assert (=> b!1546726 (= res!1060432 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50333 _keys!618))))))

(declare-fun res!1060434 () Bool)

(assert (=> start!132044 (=> (not res!1060434) (not e!860971))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132044 (= res!1060434 (validMask!0 mask!926))))

(assert (=> start!132044 e!860971))

(declare-fun array_inv!38643 (array!103169) Bool)

(assert (=> start!132044 (array_inv!38643 _keys!618)))

(assert (=> start!132044 tp_is_empty!38001))

(assert (=> start!132044 true))

(assert (=> start!132044 tp!111428))

(declare-fun array_inv!38644 (array!103171) Bool)

(assert (=> start!132044 (and (array_inv!38644 _values!470) e!860967)))

(declare-fun b!1546722 () Bool)

(assert (=> b!1546722 (= e!860970 e!860965)))

(assert (=> b!1546722 (= c!141825 (and (not lt!666611) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1546727 () Bool)

(assert (=> b!1546727 (= e!860964 call!69662)))

(declare-fun b!1546728 () Bool)

(assert (=> b!1546728 (= e!860968 (not true))))

(declare-fun lt!666612 () ListLongMap!22301)

(declare-fun apply!1079 (ListLongMap!22301 (_ BitVec 64)) V!59111)

(assert (=> b!1546728 (= (apply!1079 (+!4894 lt!666612 (tuple2!24681 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49782 _keys!618) from!762)) (apply!1079 lt!666612 (select (arr!49782 _keys!618) from!762)))))

(declare-datatypes ((Unit!51488 0))(
  ( (Unit!51489) )
))
(declare-fun lt!666613 () Unit!51488)

(declare-fun addApplyDifferent!582 (ListLongMap!22301 (_ BitVec 64) V!59111 (_ BitVec 64)) Unit!51488)

(assert (=> b!1546728 (= lt!666613 (addApplyDifferent!582 lt!666612 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49782 _keys!618) from!762)))))

(declare-fun contains!10063 (ListLongMap!22301 (_ BitVec 64)) Bool)

(assert (=> b!1546728 (contains!10063 (+!4894 lt!666612 (tuple2!24681 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49782 _keys!618) from!762))))

(declare-fun lt!666614 () Unit!51488)

(declare-fun addStillContains!1245 (ListLongMap!22301 (_ BitVec 64) V!59111 (_ BitVec 64)) Unit!51488)

(assert (=> b!1546728 (= lt!666614 (addStillContains!1245 lt!666612 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49782 _keys!618) from!762)))))

(assert (=> b!1546728 (= lt!666612 (getCurrentListMapNoExtraKeys!6611 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1546729 () Bool)

(declare-fun res!1060433 () Bool)

(assert (=> b!1546729 (=> (not res!1060433) (not e!860971))))

(assert (=> b!1546729 (= res!1060433 (and (= (size!50334 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50333 _keys!618) (size!50334 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(assert (= (and start!132044 res!1060434) b!1546729))

(assert (= (and b!1546729 res!1060433) b!1546720))

(assert (= (and b!1546720 res!1060430) b!1546721))

(assert (= (and b!1546721 res!1060436) b!1546726))

(assert (= (and b!1546726 res!1060432) b!1546725))

(assert (= (and b!1546725 c!141827) b!1546717))

(assert (= (and b!1546725 (not c!141827)) b!1546722))

(assert (= (and b!1546722 c!141825) b!1546716))

(assert (= (and b!1546722 (not c!141825)) b!1546715))

(assert (= (and b!1546715 c!141826) b!1546727))

(assert (= (and b!1546715 (not c!141826)) b!1546718))

(assert (= (or b!1546727 b!1546718) bm!69663))

(assert (= (or b!1546716 bm!69663) bm!69662))

(assert (= (or b!1546716 b!1546727) bm!69660))

(assert (= (or b!1546717 bm!69662) bm!69659))

(assert (= (or b!1546717 bm!69660) bm!69661))

(assert (= (and b!1546725 res!1060431) b!1546724))

(assert (= (and b!1546724 res!1060435) b!1546728))

(assert (= (and b!1546719 condMapEmpty!58705) mapIsEmpty!58705))

(assert (= (and b!1546719 (not condMapEmpty!58705)) mapNonEmpty!58705))

(get-info :version)

(assert (= (and mapNonEmpty!58705 ((_ is ValueCellFull!18090) mapValue!58705)) b!1546723))

(assert (= (and b!1546719 ((_ is ValueCellFull!18090) mapDefault!58705)) b!1546714))

(assert (= start!132044 b!1546719))

(declare-fun m!1426531 () Bool)

(assert (=> b!1546720 m!1426531))

(declare-fun m!1426533 () Bool)

(assert (=> mapNonEmpty!58705 m!1426533))

(declare-fun m!1426535 () Bool)

(assert (=> b!1546721 m!1426535))

(declare-fun m!1426537 () Bool)

(assert (=> bm!69659 m!1426537))

(declare-fun m!1426539 () Bool)

(assert (=> bm!69661 m!1426539))

(declare-fun m!1426541 () Bool)

(assert (=> b!1546724 m!1426541))

(assert (=> b!1546724 m!1426541))

(declare-fun m!1426543 () Bool)

(assert (=> b!1546724 m!1426543))

(declare-fun m!1426545 () Bool)

(assert (=> b!1546717 m!1426545))

(declare-fun m!1426547 () Bool)

(assert (=> start!132044 m!1426547))

(declare-fun m!1426549 () Bool)

(assert (=> start!132044 m!1426549))

(declare-fun m!1426551 () Bool)

(assert (=> start!132044 m!1426551))

(assert (=> b!1546728 m!1426541))

(declare-fun m!1426553 () Bool)

(assert (=> b!1546728 m!1426553))

(declare-fun m!1426555 () Bool)

(assert (=> b!1546728 m!1426555))

(assert (=> b!1546728 m!1426541))

(declare-fun m!1426557 () Bool)

(assert (=> b!1546728 m!1426557))

(assert (=> b!1546728 m!1426537))

(assert (=> b!1546728 m!1426541))

(declare-fun m!1426559 () Bool)

(assert (=> b!1546728 m!1426559))

(assert (=> b!1546728 m!1426541))

(declare-fun m!1426561 () Bool)

(assert (=> b!1546728 m!1426561))

(assert (=> b!1546728 m!1426555))

(assert (=> b!1546728 m!1426559))

(assert (=> b!1546728 m!1426541))

(declare-fun m!1426563 () Bool)

(assert (=> b!1546728 m!1426563))

(assert (=> b!1546728 m!1426541))

(declare-fun m!1426565 () Bool)

(assert (=> b!1546728 m!1426565))

(check-sat (not b!1546724) (not b!1546728) (not b_next!31725) tp_is_empty!38001 b_and!51145 (not bm!69661) (not bm!69659) (not b!1546721) (not start!132044) (not b!1546720) (not b!1546717) (not mapNonEmpty!58705))
(check-sat b_and!51145 (not b_next!31725))
