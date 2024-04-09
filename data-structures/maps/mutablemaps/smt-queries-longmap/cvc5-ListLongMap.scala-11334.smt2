; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131940 () Bool)

(assert start!131940)

(declare-fun b_free!31621 () Bool)

(declare-fun b_next!31621 () Bool)

(assert (=> start!131940 (= b_free!31621 (not b_next!31621))))

(declare-fun tp!111116 () Bool)

(declare-fun b_and!51041 () Bool)

(assert (=> start!131940 (= tp!111116 b_and!51041)))

(declare-fun b!1544304 () Bool)

(declare-fun e!859602 () Bool)

(declare-fun tp_is_empty!37897 () Bool)

(assert (=> b!1544304 (= e!859602 tp_is_empty!37897)))

(declare-datatypes ((array!102967 0))(
  ( (array!102968 (arr!49681 (Array (_ BitVec 32) (_ BitVec 64))) (size!50232 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!102967)

(declare-datatypes ((V!58973 0))(
  ( (V!58974 (val!19026 Int)) )
))
(declare-fun zeroValue!436 () V!58973)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-datatypes ((tuple2!24582 0))(
  ( (tuple2!24583 (_1!12301 (_ BitVec 64)) (_2!12301 V!58973)) )
))
(declare-datatypes ((List!36103 0))(
  ( (Nil!36100) (Cons!36099 (h!37545 tuple2!24582) (t!50804 List!36103)) )
))
(declare-datatypes ((ListLongMap!22203 0))(
  ( (ListLongMap!22204 (toList!11117 List!36103)) )
))
(declare-fun call!68885 () ListLongMap!22203)

(declare-fun bm!68879 () Bool)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18038 0))(
  ( (ValueCellFull!18038 (v!21824 V!58973)) (EmptyCell!18038) )
))
(declare-datatypes ((array!102969 0))(
  ( (array!102970 (arr!49682 (Array (_ BitVec 32) ValueCell!18038)) (size!50233 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!102969)

(declare-fun minValue!436 () V!58973)

(declare-fun getCurrentListMapNoExtraKeys!6567 (array!102967 array!102969 (_ BitVec 32) (_ BitVec 32) V!58973 V!58973 (_ BitVec 32) Int) ListLongMap!22203)

(assert (=> bm!68879 (= call!68885 (getCurrentListMapNoExtraKeys!6567 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1544305 () Bool)

(declare-fun e!859606 () ListLongMap!22203)

(declare-fun call!68886 () ListLongMap!22203)

(declare-fun +!4852 (ListLongMap!22203 tuple2!24582) ListLongMap!22203)

(assert (=> b!1544305 (= e!859606 (+!4852 call!68886 (tuple2!24583 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1544306 () Bool)

(declare-fun res!1059426 () Bool)

(declare-fun e!859603 () Bool)

(assert (=> b!1544306 (=> (not res!1059426) (not e!859603))))

(assert (=> b!1544306 (= res!1059426 (and (= (size!50233 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50232 _keys!618) (size!50233 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1544307 () Bool)

(declare-fun e!859605 () Bool)

(declare-fun mapRes!58549 () Bool)

(assert (=> b!1544307 (= e!859605 (and e!859602 mapRes!58549))))

(declare-fun condMapEmpty!58549 () Bool)

(declare-fun mapDefault!58549 () ValueCell!18038)

