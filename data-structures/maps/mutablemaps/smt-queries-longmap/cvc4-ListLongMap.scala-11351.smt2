; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132046 () Bool)

(assert start!132046)

(declare-fun b_free!31727 () Bool)

(declare-fun b_next!31727 () Bool)

(assert (=> start!132046 (= b_free!31727 (not b_next!31727))))

(declare-fun tp!111434 () Bool)

(declare-fun b_and!51147 () Bool)

(assert (=> start!132046 (= tp!111434 b_and!51147)))

(declare-fun b!1546762 () Bool)

(declare-fun e!860990 () Bool)

(assert (=> b!1546762 (= e!860990 (not true))))

(declare-datatypes ((array!103173 0))(
  ( (array!103174 (arr!49784 (Array (_ BitVec 32) (_ BitVec 64))) (size!50335 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103173)

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((V!59113 0))(
  ( (V!59114 (val!19079 Int)) )
))
(declare-datatypes ((tuple2!24682 0))(
  ( (tuple2!24683 (_1!12351 (_ BitVec 64)) (_2!12351 V!59113)) )
))
(declare-datatypes ((List!36192 0))(
  ( (Nil!36189) (Cons!36188 (h!37634 tuple2!24682) (t!50893 List!36192)) )
))
(declare-datatypes ((ListLongMap!22303 0))(
  ( (ListLongMap!22304 (toList!11167 List!36192)) )
))
(declare-fun lt!666627 () ListLongMap!22303)

(declare-fun minValue!436 () V!59113)

(declare-fun apply!1080 (ListLongMap!22303 (_ BitVec 64)) V!59113)

(declare-fun +!4895 (ListLongMap!22303 tuple2!24682) ListLongMap!22303)

(assert (=> b!1546762 (= (apply!1080 (+!4895 lt!666627 (tuple2!24683 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)) (select (arr!49784 _keys!618) from!762)) (apply!1080 lt!666627 (select (arr!49784 _keys!618) from!762)))))

(declare-datatypes ((Unit!51490 0))(
  ( (Unit!51491) )
))
(declare-fun lt!666629 () Unit!51490)

(declare-fun addApplyDifferent!583 (ListLongMap!22303 (_ BitVec 64) V!59113 (_ BitVec 64)) Unit!51490)

(assert (=> b!1546762 (= lt!666629 (addApplyDifferent!583 lt!666627 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436 (select (arr!49784 _keys!618) from!762)))))

(declare-fun zeroValue!436 () V!59113)

(declare-fun contains!10064 (ListLongMap!22303 (_ BitVec 64)) Bool)

(assert (=> b!1546762 (contains!10064 (+!4895 lt!666627 (tuple2!24683 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436)) (select (arr!49784 _keys!618) from!762))))

(declare-fun lt!666628 () Unit!51490)

(declare-fun addStillContains!1246 (ListLongMap!22303 (_ BitVec 64) V!59113 (_ BitVec 64)) Unit!51490)

(assert (=> b!1546762 (= lt!666628 (addStillContains!1246 lt!666627 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436 (select (arr!49784 _keys!618) from!762)))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18091 0))(
  ( (ValueCellFull!18091 (v!21877 V!59113)) (EmptyCell!18091) )
))
(declare-datatypes ((array!103175 0))(
  ( (array!103176 (arr!49785 (Array (_ BitVec 32) ValueCell!18091)) (size!50336 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103175)

(declare-fun getCurrentListMapNoExtraKeys!6612 (array!103173 array!103175 (_ BitVec 32) (_ BitVec 32) V!59113 V!59113 (_ BitVec 32) Int) ListLongMap!22303)

(assert (=> b!1546762 (= lt!666627 (getCurrentListMapNoExtraKeys!6612 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun bm!69674 () Bool)

(declare-fun call!69680 () ListLongMap!22303)

(declare-fun call!69677 () ListLongMap!22303)

(assert (=> bm!69674 (= call!69680 call!69677)))

(declare-fun b!1546763 () Bool)

(declare-fun res!1060452 () Bool)

(declare-fun e!860998 () Bool)

(assert (=> b!1546763 (=> (not res!1060452) (not e!860998))))

(declare-datatypes ((List!36193 0))(
  ( (Nil!36190) (Cons!36189 (h!37635 (_ BitVec 64)) (t!50894 List!36193)) )
))
(declare-fun arrayNoDuplicates!0 (array!103173 (_ BitVec 32) List!36193) Bool)

(assert (=> b!1546763 (= res!1060452 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36190))))

(declare-fun c!141836 () Bool)

(declare-fun bm!69675 () Bool)

(declare-fun call!69678 () ListLongMap!22303)

(declare-fun call!69679 () ListLongMap!22303)

(declare-fun c!141835 () Bool)

(assert (=> bm!69675 (= call!69678 (+!4895 (ite c!141835 call!69677 (ite c!141836 call!69680 call!69679)) (ite (or c!141835 c!141836) (tuple2!24683 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!436) (tuple2!24683 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436))))))

(declare-fun b!1546764 () Bool)

(declare-fun res!1060451 () Bool)

(assert (=> b!1546764 (=> (not res!1060451) (not e!860998))))

(assert (=> b!1546764 (= res!1060451 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50335 _keys!618))))))

(declare-fun mapNonEmpty!58708 () Bool)

(declare-fun mapRes!58708 () Bool)

(declare-fun tp!111433 () Bool)

(declare-fun e!860994 () Bool)

(assert (=> mapNonEmpty!58708 (= mapRes!58708 (and tp!111433 e!860994))))

(declare-fun mapValue!58708 () ValueCell!18091)

(declare-fun mapRest!58708 () (Array (_ BitVec 32) ValueCell!18091))

(declare-fun mapKey!58708 () (_ BitVec 32))

(assert (=> mapNonEmpty!58708 (= (arr!49785 _values!470) (store mapRest!58708 mapKey!58708 mapValue!58708))))

(declare-fun b!1546765 () Bool)

(assert (=> b!1546765 (= e!860998 e!860990)))

(declare-fun res!1060456 () Bool)

(assert (=> b!1546765 (=> (not res!1060456) (not e!860990))))

(assert (=> b!1546765 (= res!1060456 (bvslt from!762 (size!50335 _keys!618)))))

(declare-fun lt!666626 () ListLongMap!22303)

(declare-fun e!860997 () ListLongMap!22303)

(assert (=> b!1546765 (= lt!666626 e!860997)))

(declare-fun lt!666625 () Bool)

(assert (=> b!1546765 (= c!141835 (and (not lt!666625) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1546765 (= lt!666625 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1546766 () Bool)

(declare-fun e!860993 () Bool)

(declare-fun e!860996 () Bool)

(assert (=> b!1546766 (= e!860993 (and e!860996 mapRes!58708))))

(declare-fun condMapEmpty!58708 () Bool)

(declare-fun mapDefault!58708 () ValueCell!18091)

