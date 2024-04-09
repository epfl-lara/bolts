; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131936 () Bool)

(assert start!131936)

(declare-fun b_free!31617 () Bool)

(declare-fun b_next!31617 () Bool)

(assert (=> start!131936 (= b_free!31617 (not b_next!31617))))

(declare-fun tp!111104 () Bool)

(declare-fun b_and!51037 () Bool)

(assert (=> start!131936 (= tp!111104 b_and!51037)))

(declare-fun b!1544220 () Bool)

(declare-datatypes ((V!58967 0))(
  ( (V!58968 (val!19024 Int)) )
))
(declare-datatypes ((tuple2!24578 0))(
  ( (tuple2!24579 (_1!12299 (_ BitVec 64)) (_2!12299 V!58967)) )
))
(declare-datatypes ((List!36099 0))(
  ( (Nil!36096) (Cons!36095 (h!37541 tuple2!24578) (t!50800 List!36099)) )
))
(declare-datatypes ((ListLongMap!22199 0))(
  ( (ListLongMap!22200 (toList!11115 List!36099)) )
))
(declare-fun e!859558 () ListLongMap!22199)

(declare-fun call!68852 () ListLongMap!22199)

(declare-fun minValue!436 () V!58967)

(declare-fun +!4850 (ListLongMap!22199 tuple2!24578) ListLongMap!22199)

(assert (=> b!1544220 (= e!859558 (+!4850 call!68852 (tuple2!24579 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1544221 () Bool)

(declare-fun res!1059395 () Bool)

(declare-fun e!859555 () Bool)

(assert (=> b!1544221 (=> (not res!1059395) (not e!859555))))

(declare-datatypes ((array!102959 0))(
  ( (array!102960 (arr!49677 (Array (_ BitVec 32) (_ BitVec 64))) (size!50228 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102959)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102959 (_ BitVec 32)) Bool)

(assert (=> b!1544221 (= res!1059395 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1544222 () Bool)

(declare-fun e!859554 () Bool)

(declare-fun tp_is_empty!37893 () Bool)

(assert (=> b!1544222 (= e!859554 tp_is_empty!37893)))

(declare-fun b!1544223 () Bool)

(declare-fun e!859557 () ListLongMap!22199)

(declare-fun call!68854 () ListLongMap!22199)

(assert (=> b!1544223 (= e!859557 call!68854)))

(declare-fun b!1544224 () Bool)

(declare-fun call!68855 () ListLongMap!22199)

(assert (=> b!1544224 (= e!859557 call!68855)))

(declare-fun mapNonEmpty!58543 () Bool)

(declare-fun mapRes!58543 () Bool)

(declare-fun tp!111103 () Bool)

(assert (=> mapNonEmpty!58543 (= mapRes!58543 (and tp!111103 e!859554))))

(declare-datatypes ((ValueCell!18036 0))(
  ( (ValueCellFull!18036 (v!21822 V!58967)) (EmptyCell!18036) )
))
(declare-fun mapRest!58543 () (Array (_ BitVec 32) ValueCell!18036))

(declare-datatypes ((array!102961 0))(
  ( (array!102962 (arr!49678 (Array (_ BitVec 32) ValueCell!18036)) (size!50229 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102961)

(declare-fun mapValue!58543 () ValueCell!18036)

(declare-fun mapKey!58543 () (_ BitVec 32))

(assert (=> mapNonEmpty!58543 (= (arr!49678 _values!470) (store mapRest!58543 mapKey!58543 mapValue!58543))))

(declare-fun b!1544225 () Bool)

(declare-fun res!1059394 () Bool)

(assert (=> b!1544225 (=> (not res!1059394) (not e!859555))))

(declare-datatypes ((List!36100 0))(
  ( (Nil!36097) (Cons!36096 (h!37542 (_ BitVec 64)) (t!50801 List!36100)) )
))
(declare-fun arrayNoDuplicates!0 (array!102959 (_ BitVec 32) List!36100) Bool)

(assert (=> b!1544225 (= res!1059394 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36097))))

(declare-fun b!1544226 () Bool)

(declare-fun res!1059398 () Bool)

(assert (=> b!1544226 (=> (not res!1059398) (not e!859555))))

(declare-fun from!762 () (_ BitVec 32))

(assert (=> b!1544226 (= res!1059398 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50228 _keys!618))))))

(declare-fun res!1059397 () Bool)

(assert (=> start!131936 (=> (not res!1059397) (not e!859555))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131936 (= res!1059397 (validMask!0 mask!926))))

(assert (=> start!131936 e!859555))

(declare-fun array_inv!38567 (array!102959) Bool)

(assert (=> start!131936 (array_inv!38567 _keys!618)))

(assert (=> start!131936 tp_is_empty!37893))

(assert (=> start!131936 true))

(assert (=> start!131936 tp!111104))

(declare-fun e!859556 () Bool)

(declare-fun array_inv!38568 (array!102961) Bool)

(assert (=> start!131936 (and (array_inv!38568 _values!470) e!859556)))

(declare-fun b!1544227 () Bool)

(declare-fun e!859559 () Bool)

(assert (=> b!1544227 (= e!859559 tp_is_empty!37893)))

(declare-fun b!1544228 () Bool)

(declare-fun e!859560 () ListLongMap!22199)

(assert (=> b!1544228 (= e!859558 e!859560)))

(declare-fun c!141341 () Bool)

(declare-fun lt!666047 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(assert (=> b!1544228 (= c!141341 (and (not lt!666047) (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun call!68853 () ListLongMap!22199)

(declare-fun zeroValue!436 () V!58967)

(declare-fun defaultEntry!478 () Int)

(declare-fun bm!68849 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6565 (array!102959 array!102961 (_ BitVec 32) (_ BitVec 32) V!58967 V!58967 (_ BitVec 32) Int) ListLongMap!22199)

(assert (=> bm!68849 (= call!68853 (getCurrentListMapNoExtraKeys!6565 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1544229 () Bool)

(declare-fun c!141339 () Bool)

(assert (=> b!1544229 (= c!141339 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666047))))

(assert (=> b!1544229 (= e!859560 e!859557)))

(declare-fun b!1544230 () Bool)

(assert (=> b!1544230 (= e!859560 call!68854)))

(declare-fun b!1544231 () Bool)

(assert (=> b!1544231 (= e!859556 (and e!859559 mapRes!58543))))

(declare-fun condMapEmpty!58543 () Bool)

(declare-fun mapDefault!58543 () ValueCell!18036)

(assert (=> b!1544231 (= condMapEmpty!58543 (= (arr!49678 _values!470) ((as const (Array (_ BitVec 32) ValueCell!18036)) mapDefault!58543)))))

(declare-fun bm!68850 () Bool)

(declare-fun call!68856 () ListLongMap!22199)

(assert (=> bm!68850 (= call!68856 call!68853)))

(declare-fun b!1544232 () Bool)

(assert (=> b!1544232 (= e!859555 false)))

(declare-fun lt!666046 () ListLongMap!22199)

(assert (=> b!1544232 (= lt!666046 e!859558)))

(declare-fun c!141340 () Bool)

(assert (=> b!1544232 (= c!141340 (and (not lt!666047) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1544232 (= lt!666047 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!68851 () Bool)

(assert (=> bm!68851 (= call!68854 call!68852)))

(declare-fun b!1544233 () Bool)

(declare-fun res!1059396 () Bool)

(assert (=> b!1544233 (=> (not res!1059396) (not e!859555))))

(assert (=> b!1544233 (= res!1059396 (and (= (size!50229 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50228 _keys!618) (size!50229 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun bm!68852 () Bool)

(assert (=> bm!68852 (= call!68855 call!68856)))

(declare-fun bm!68853 () Bool)

(assert (=> bm!68853 (= call!68852 (+!4850 (ite c!141340 call!68853 (ite c!141341 call!68856 call!68855)) (ite (or c!141340 c!141341) (tuple2!24579 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24579 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun mapIsEmpty!58543 () Bool)

(assert (=> mapIsEmpty!58543 mapRes!58543))

(assert (= (and start!131936 res!1059397) b!1544233))

(assert (= (and b!1544233 res!1059396) b!1544221))

(assert (= (and b!1544221 res!1059395) b!1544225))

(assert (= (and b!1544225 res!1059394) b!1544226))

(assert (= (and b!1544226 res!1059398) b!1544232))

(assert (= (and b!1544232 c!141340) b!1544220))

(assert (= (and b!1544232 (not c!141340)) b!1544228))

(assert (= (and b!1544228 c!141341) b!1544230))

(assert (= (and b!1544228 (not c!141341)) b!1544229))

(assert (= (and b!1544229 c!141339) b!1544223))

(assert (= (and b!1544229 (not c!141339)) b!1544224))

(assert (= (or b!1544223 b!1544224) bm!68852))

(assert (= (or b!1544230 bm!68852) bm!68850))

(assert (= (or b!1544230 b!1544223) bm!68851))

(assert (= (or b!1544220 bm!68850) bm!68849))

(assert (= (or b!1544220 bm!68851) bm!68853))

(assert (= (and b!1544231 condMapEmpty!58543) mapIsEmpty!58543))

(assert (= (and b!1544231 (not condMapEmpty!58543)) mapNonEmpty!58543))

(get-info :version)

(assert (= (and mapNonEmpty!58543 ((_ is ValueCellFull!18036) mapValue!58543)) b!1544222))

(assert (= (and b!1544231 ((_ is ValueCellFull!18036) mapDefault!58543)) b!1544227))

(assert (= start!131936 b!1544231))

(declare-fun m!1425163 () Bool)

(assert (=> start!131936 m!1425163))

(declare-fun m!1425165 () Bool)

(assert (=> start!131936 m!1425165))

(declare-fun m!1425167 () Bool)

(assert (=> start!131936 m!1425167))

(declare-fun m!1425169 () Bool)

(assert (=> b!1544221 m!1425169))

(declare-fun m!1425171 () Bool)

(assert (=> bm!68853 m!1425171))

(declare-fun m!1425173 () Bool)

(assert (=> mapNonEmpty!58543 m!1425173))

(declare-fun m!1425175 () Bool)

(assert (=> b!1544220 m!1425175))

(declare-fun m!1425177 () Bool)

(assert (=> b!1544225 m!1425177))

(declare-fun m!1425179 () Bool)

(assert (=> bm!68849 m!1425179))

(check-sat b_and!51037 (not b!1544221) (not b_next!31617) tp_is_empty!37893 (not bm!68853) (not b!1544225) (not start!131936) (not mapNonEmpty!58543) (not bm!68849) (not b!1544220))
(check-sat b_and!51037 (not b_next!31617))
