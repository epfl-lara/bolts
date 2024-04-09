; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132334 () Bool)

(assert start!132334)

(declare-fun b_free!31929 () Bool)

(declare-fun b_next!31929 () Bool)

(assert (=> start!132334 (= b_free!31929 (not b_next!31929))))

(declare-fun tp!112052 () Bool)

(declare-fun b_and!51377 () Bool)

(assert (=> start!132334 (= tp!112052 b_and!51377)))

(declare-datatypes ((array!103569 0))(
  ( (array!103570 (arr!49978 (Array (_ BitVec 32) (_ BitVec 64))) (size!50529 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103569)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((V!59383 0))(
  ( (V!59384 (val!19180 Int)) )
))
(declare-datatypes ((ValueCell!18192 0))(
  ( (ValueCellFull!18192 (v!21982 V!59383)) (EmptyCell!18192) )
))
(declare-datatypes ((array!103571 0))(
  ( (array!103572 (arr!49979 (Array (_ BitVec 32) ValueCell!18192)) (size!50530 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103571)

(declare-fun minValue!436 () V!59383)

(declare-fun bm!71234 () Bool)

(declare-fun zeroValue!436 () V!59383)

(declare-datatypes ((tuple2!24876 0))(
  ( (tuple2!24877 (_1!12448 (_ BitVec 64)) (_2!12448 V!59383)) )
))
(declare-datatypes ((List!36355 0))(
  ( (Nil!36352) (Cons!36351 (h!37797 tuple2!24876) (t!51076 List!36355)) )
))
(declare-datatypes ((ListLongMap!22497 0))(
  ( (ListLongMap!22498 (toList!11264 List!36355)) )
))
(declare-fun call!71241 () ListLongMap!22497)

(declare-fun getCurrentListMapNoExtraKeys!6687 (array!103569 array!103571 (_ BitVec 32) (_ BitVec 32) V!59383 V!59383 (_ BitVec 32) Int) ListLongMap!22497)

(assert (=> bm!71234 (= call!71241 (getCurrentListMapNoExtraKeys!6687 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun bm!71235 () Bool)

(declare-fun call!71240 () ListLongMap!22497)

(declare-fun call!71237 () ListLongMap!22497)

(assert (=> bm!71235 (= call!71240 call!71237)))

(declare-fun res!1062815 () Bool)

(declare-fun e!864146 () Bool)

(assert (=> start!132334 (=> (not res!1062815) (not e!864146))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132334 (= res!1062815 (validMask!0 mask!926))))

(assert (=> start!132334 e!864146))

(declare-fun array_inv!38775 (array!103569) Bool)

(assert (=> start!132334 (array_inv!38775 _keys!618)))

(declare-fun tp_is_empty!38205 () Bool)

(assert (=> start!132334 tp_is_empty!38205))

(assert (=> start!132334 true))

(assert (=> start!132334 tp!112052))

(declare-fun e!864144 () Bool)

(declare-fun array_inv!38776 (array!103571) Bool)

(assert (=> start!132334 (and (array_inv!38776 _values!470) e!864144)))

(declare-fun bm!71236 () Bool)

(declare-fun call!71239 () ListLongMap!22497)

(declare-fun call!71238 () ListLongMap!22497)

(assert (=> bm!71236 (= call!71239 call!71238)))

(declare-fun b!1552217 () Bool)

(declare-fun e!864142 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1552217 (= e!864142 (not (validKeyInArray!0 (select (arr!49978 _keys!618) from!762))))))

(declare-fun b!1552218 () Bool)

(declare-fun e!864149 () Bool)

(assert (=> b!1552218 (= e!864149 tp_is_empty!38205)))

(declare-fun b!1552219 () Bool)

(declare-datatypes ((Unit!51633 0))(
  ( (Unit!51634) )
))
(declare-fun e!864139 () Unit!51633)

(declare-fun Unit!51635 () Unit!51633)

(assert (=> b!1552219 (= e!864139 Unit!51635)))

(declare-fun b!1552220 () Bool)

(declare-fun c!142899 () Bool)

(declare-fun lt!669153 () Bool)

(assert (=> b!1552220 (= c!142899 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!669153))))

(declare-fun e!864147 () ListLongMap!22497)

(declare-fun e!864145 () ListLongMap!22497)

(assert (=> b!1552220 (= e!864147 e!864145)))

(declare-fun b!1552221 () Bool)

(assert (=> b!1552221 (= e!864145 call!71239)))

(declare-fun b!1552222 () Bool)

(declare-fun res!1062817 () Bool)

(assert (=> b!1552222 (=> (not res!1062817) (not e!864146))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103569 (_ BitVec 32)) Bool)

(assert (=> b!1552222 (= res!1062817 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1552223 () Bool)

(declare-fun e!864143 () ListLongMap!22497)

(declare-fun +!4970 (ListLongMap!22497 tuple2!24876) ListLongMap!22497)

(assert (=> b!1552223 (= e!864143 (+!4970 call!71238 (tuple2!24877 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1552224 () Bool)

(declare-fun e!864141 () Bool)

(assert (=> b!1552224 (= e!864146 e!864141)))

(declare-fun res!1062813 () Bool)

(assert (=> b!1552224 (=> (not res!1062813) (not e!864141))))

(declare-fun lt!669160 () Bool)

(assert (=> b!1552224 (= res!1062813 (not lt!669160))))

(declare-fun lt!669156 () Unit!51633)

(assert (=> b!1552224 (= lt!669156 e!864139)))

(declare-fun c!142900 () Bool)

(assert (=> b!1552224 (= c!142900 (not lt!669160))))

(assert (=> b!1552224 (= lt!669160 e!864142)))

(declare-fun res!1062812 () Bool)

(assert (=> b!1552224 (=> res!1062812 e!864142)))

(assert (=> b!1552224 (= res!1062812 (bvsge from!762 (size!50529 _keys!618)))))

(declare-fun lt!669157 () ListLongMap!22497)

(assert (=> b!1552224 (= lt!669157 e!864143)))

(declare-fun c!142901 () Bool)

(assert (=> b!1552224 (= c!142901 (and (not lt!669153) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1552224 (= lt!669153 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!59023 () Bool)

(declare-fun mapRes!59023 () Bool)

(declare-fun tp!112051 () Bool)

(assert (=> mapNonEmpty!59023 (= mapRes!59023 (and tp!112051 e!864149))))

(declare-fun mapKey!59023 () (_ BitVec 32))

(declare-fun mapValue!59023 () ValueCell!18192)

(declare-fun mapRest!59023 () (Array (_ BitVec 32) ValueCell!18192))

(assert (=> mapNonEmpty!59023 (= (arr!49979 _values!470) (store mapRest!59023 mapKey!59023 mapValue!59023))))

(declare-fun mapIsEmpty!59023 () Bool)

(assert (=> mapIsEmpty!59023 mapRes!59023))

(declare-fun b!1552225 () Bool)

(declare-fun res!1062816 () Bool)

(assert (=> b!1552225 (=> (not res!1062816) (not e!864141))))

(declare-fun contains!10134 (ListLongMap!22497 (_ BitVec 64)) Bool)

(assert (=> b!1552225 (= res!1062816 (contains!10134 lt!669157 (select (arr!49978 _keys!618) from!762)))))

(declare-fun bm!71237 () Bool)

(assert (=> bm!71237 (= call!71237 call!71241)))

(declare-fun b!1552226 () Bool)

(declare-fun e!864140 () Bool)

(assert (=> b!1552226 (= e!864144 (and e!864140 mapRes!59023))))

(declare-fun condMapEmpty!59023 () Bool)

(declare-fun mapDefault!59023 () ValueCell!18192)

(assert (=> b!1552226 (= condMapEmpty!59023 (= (arr!49979 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18192)) mapDefault!59023)))))

(declare-fun b!1552227 () Bool)

(assert (=> b!1552227 (= e!864145 call!71240)))

(declare-fun b!1552228 () Bool)

(assert (=> b!1552228 (= e!864147 call!71239)))

(declare-fun b!1552229 () Bool)

(declare-fun res!1062818 () Bool)

(assert (=> b!1552229 (=> (not res!1062818) (not e!864146))))

(assert (=> b!1552229 (= res!1062818 (and (= (size!50530 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50529 _keys!618) (size!50530 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1552230 () Bool)

(declare-fun res!1062814 () Bool)

(assert (=> b!1552230 (=> (not res!1062814) (not e!864146))))

(declare-datatypes ((List!36356 0))(
  ( (Nil!36353) (Cons!36352 (h!37798 (_ BitVec 64)) (t!51077 List!36356)) )
))
(declare-fun arrayNoDuplicates!0 (array!103569 (_ BitVec 32) List!36356) Bool)

(assert (=> b!1552230 (= res!1062814 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36353))))

(declare-fun c!142898 () Bool)

(declare-fun bm!71238 () Bool)

(assert (=> bm!71238 (= call!71238 (+!4970 (ite c!142901 call!71241 (ite c!142898 call!71237 call!71240)) (ite (or c!142901 c!142898) (tuple2!24877 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24877 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1552231 () Bool)

(declare-fun res!1062819 () Bool)

(assert (=> b!1552231 (=> (not res!1062819) (not e!864146))))

(assert (=> b!1552231 (= res!1062819 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50529 _keys!618))))))

(declare-fun b!1552232 () Bool)

(assert (=> b!1552232 (= e!864141 (bvsge from!762 (size!50530 _values!470)))))

(declare-fun b!1552233 () Bool)

(assert (=> b!1552233 (= e!864140 tp_is_empty!38205)))

(declare-fun b!1552234 () Bool)

(assert (=> b!1552234 (= e!864143 e!864147)))

(assert (=> b!1552234 (= c!142898 (and (not lt!669153) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1552235 () Bool)

(declare-fun lt!669159 () Unit!51633)

(assert (=> b!1552235 (= e!864139 lt!669159)))

(declare-fun lt!669162 () ListLongMap!22497)

(assert (=> b!1552235 (= lt!669162 (getCurrentListMapNoExtraKeys!6687 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun lt!669152 () Unit!51633)

(declare-fun addStillContains!1305 (ListLongMap!22497 (_ BitVec 64) V!59383 (_ BitVec 64)) Unit!51633)

(assert (=> b!1552235 (= lt!669152 (addStillContains!1305 lt!669162 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49978 _keys!618) from!762)))))

(declare-fun lt!669161 () ListLongMap!22497)

(assert (=> b!1552235 (= lt!669161 (+!4970 lt!669162 (tuple2!24877 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)))))

(assert (=> b!1552235 (contains!10134 lt!669161 (select (arr!49978 _keys!618) from!762))))

(declare-fun addApplyDifferent!638 (ListLongMap!22497 (_ BitVec 64) V!59383 (_ BitVec 64)) Unit!51633)

(assert (=> b!1552235 (= lt!669159 (addApplyDifferent!638 lt!669162 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49978 _keys!618) from!762)))))

(declare-fun lt!669158 () V!59383)

(declare-fun apply!1137 (ListLongMap!22497 (_ BitVec 64)) V!59383)

(assert (=> b!1552235 (= lt!669158 (apply!1137 (+!4970 lt!669162 (tuple2!24877 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49978 _keys!618) from!762)))))

(declare-fun lt!669154 () V!59383)

(assert (=> b!1552235 (= lt!669154 (apply!1137 lt!669162 (select (arr!49978 _keys!618) from!762)))))

(assert (=> b!1552235 (= lt!669158 lt!669154)))

(declare-fun lt!669155 () Unit!51633)

(assert (=> b!1552235 (= lt!669155 (addApplyDifferent!638 lt!669162 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49978 _keys!618) from!762)))))

(assert (=> b!1552235 (= (apply!1137 lt!669161 (select (arr!49978 _keys!618) from!762)) lt!669154)))

(assert (= (and start!132334 res!1062815) b!1552229))

(assert (= (and b!1552229 res!1062818) b!1552222))

(assert (= (and b!1552222 res!1062817) b!1552230))

(assert (= (and b!1552230 res!1062814) b!1552231))

(assert (= (and b!1552231 res!1062819) b!1552224))

(assert (= (and b!1552224 c!142901) b!1552223))

(assert (= (and b!1552224 (not c!142901)) b!1552234))

(assert (= (and b!1552234 c!142898) b!1552228))

(assert (= (and b!1552234 (not c!142898)) b!1552220))

(assert (= (and b!1552220 c!142899) b!1552221))

(assert (= (and b!1552220 (not c!142899)) b!1552227))

(assert (= (or b!1552221 b!1552227) bm!71235))

(assert (= (or b!1552228 bm!71235) bm!71237))

(assert (= (or b!1552228 b!1552221) bm!71236))

(assert (= (or b!1552223 bm!71237) bm!71234))

(assert (= (or b!1552223 bm!71236) bm!71238))

(assert (= (and b!1552224 (not res!1062812)) b!1552217))

(assert (= (and b!1552224 c!142900) b!1552235))

(assert (= (and b!1552224 (not c!142900)) b!1552219))

(assert (= (and b!1552224 res!1062813) b!1552225))

(assert (= (and b!1552225 res!1062816) b!1552232))

(assert (= (and b!1552226 condMapEmpty!59023) mapIsEmpty!59023))

(assert (= (and b!1552226 (not condMapEmpty!59023)) mapNonEmpty!59023))

(get-info :version)

(assert (= (and mapNonEmpty!59023 ((_ is ValueCellFull!18192) mapValue!59023)) b!1552218))

(assert (= (and b!1552226 ((_ is ValueCellFull!18192) mapDefault!59023)) b!1552233))

(assert (= start!132334 b!1552226))

(declare-fun m!1430789 () Bool)

(assert (=> bm!71238 m!1430789))

(declare-fun m!1430791 () Bool)

(assert (=> mapNonEmpty!59023 m!1430791))

(declare-fun m!1430793 () Bool)

(assert (=> b!1552222 m!1430793))

(declare-fun m!1430795 () Bool)

(assert (=> b!1552225 m!1430795))

(assert (=> b!1552225 m!1430795))

(declare-fun m!1430797 () Bool)

(assert (=> b!1552225 m!1430797))

(declare-fun m!1430799 () Bool)

(assert (=> start!132334 m!1430799))

(declare-fun m!1430801 () Bool)

(assert (=> start!132334 m!1430801))

(declare-fun m!1430803 () Bool)

(assert (=> start!132334 m!1430803))

(assert (=> b!1552235 m!1430795))

(declare-fun m!1430805 () Bool)

(assert (=> b!1552235 m!1430805))

(declare-fun m!1430807 () Bool)

(assert (=> b!1552235 m!1430807))

(assert (=> b!1552235 m!1430795))

(declare-fun m!1430809 () Bool)

(assert (=> b!1552235 m!1430809))

(assert (=> b!1552235 m!1430795))

(declare-fun m!1430811 () Bool)

(assert (=> b!1552235 m!1430811))

(assert (=> b!1552235 m!1430807))

(declare-fun m!1430813 () Bool)

(assert (=> b!1552235 m!1430813))

(assert (=> b!1552235 m!1430795))

(declare-fun m!1430815 () Bool)

(assert (=> b!1552235 m!1430815))

(assert (=> b!1552235 m!1430795))

(declare-fun m!1430817 () Bool)

(assert (=> b!1552235 m!1430817))

(assert (=> b!1552235 m!1430795))

(declare-fun m!1430819 () Bool)

(assert (=> b!1552235 m!1430819))

(assert (=> b!1552235 m!1430795))

(declare-fun m!1430821 () Bool)

(assert (=> b!1552235 m!1430821))

(assert (=> b!1552235 m!1430795))

(declare-fun m!1430823 () Bool)

(assert (=> b!1552235 m!1430823))

(declare-fun m!1430825 () Bool)

(assert (=> b!1552223 m!1430825))

(declare-fun m!1430827 () Bool)

(assert (=> b!1552230 m!1430827))

(assert (=> b!1552217 m!1430795))

(assert (=> b!1552217 m!1430795))

(declare-fun m!1430829 () Bool)

(assert (=> b!1552217 m!1430829))

(assert (=> bm!71234 m!1430813))

(check-sat (not start!132334) (not b!1552230) (not b!1552222) (not b!1552235) b_and!51377 (not bm!71234) tp_is_empty!38205 (not b!1552223) (not b!1552225) (not bm!71238) (not b!1552217) (not b_next!31929) (not mapNonEmpty!59023))
(check-sat b_and!51377 (not b_next!31929))
