; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132058 () Bool)

(assert start!132058)

(declare-fun b_free!31739 () Bool)

(declare-fun b_next!31739 () Bool)

(assert (=> start!132058 (= b_free!31739 (not b_next!31739))))

(declare-fun tp!111470 () Bool)

(declare-fun b_and!51159 () Bool)

(assert (=> start!132058 (= tp!111470 b_and!51159)))

(declare-fun b!1547050 () Bool)

(declare-datatypes ((V!59129 0))(
  ( (V!59130 (val!19085 Int)) )
))
(declare-datatypes ((tuple2!24694 0))(
  ( (tuple2!24695 (_1!12357 (_ BitVec 64)) (_2!12357 V!59129)) )
))
(declare-datatypes ((List!36204 0))(
  ( (Nil!36201) (Cons!36200 (h!37646 tuple2!24694) (t!50905 List!36204)) )
))
(declare-datatypes ((ListLongMap!22315 0))(
  ( (ListLongMap!22316 (toList!11173 List!36204)) )
))
(declare-fun e!861158 () ListLongMap!22315)

(declare-fun call!69770 () ListLongMap!22315)

(assert (=> b!1547050 (= e!861158 call!69770)))

(declare-fun b!1547051 () Bool)

(declare-fun res!1060582 () Bool)

(declare-fun e!861160 () Bool)

(assert (=> b!1547051 (=> (not res!1060582) (not e!861160))))

(declare-datatypes ((array!103197 0))(
  ( (array!103198 (arr!49796 (Array (_ BitVec 32) (_ BitVec 64))) (size!50347 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103197)

(declare-datatypes ((List!36205 0))(
  ( (Nil!36202) (Cons!36201 (h!37647 (_ BitVec 64)) (t!50906 List!36205)) )
))
(declare-fun arrayNoDuplicates!0 (array!103197 (_ BitVec 32) List!36205) Bool)

(assert (=> b!1547051 (= res!1060582 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36202))))

(declare-fun mapNonEmpty!58726 () Bool)

(declare-fun mapRes!58726 () Bool)

(declare-fun tp!111469 () Bool)

(declare-fun e!861157 () Bool)

(assert (=> mapNonEmpty!58726 (= mapRes!58726 (and tp!111469 e!861157))))

(declare-datatypes ((ValueCell!18097 0))(
  ( (ValueCellFull!18097 (v!21883 V!59129)) (EmptyCell!18097) )
))
(declare-fun mapValue!58726 () ValueCell!18097)

(declare-datatypes ((array!103199 0))(
  ( (array!103200 (arr!49797 (Array (_ BitVec 32) ValueCell!18097)) (size!50348 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103199)

(declare-fun mapKey!58726 () (_ BitVec 32))

(declare-fun mapRest!58726 () (Array (_ BitVec 32) ValueCell!18097))

(assert (=> mapNonEmpty!58726 (= (arr!49797 _values!470) (store mapRest!58726 mapKey!58726 mapValue!58726))))

(declare-fun bm!69764 () Bool)

(declare-fun call!69768 () ListLongMap!22315)

(declare-fun call!69767 () ListLongMap!22315)

(assert (=> bm!69764 (= call!69768 call!69767)))

(declare-fun b!1547052 () Bool)

(declare-fun res!1060578 () Bool)

(assert (=> b!1547052 (=> (not res!1060578) (not e!861160))))

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(assert (=> b!1547052 (= res!1060578 (and (= (size!50348 _values!470) (bvadd #b00000000000000000000000000000001 mask!926)) (= (size!50347 _keys!618) (size!50348 _values!470)) (bvsge mask!926 #b00000000000000000000000000000000) (bvsge extraKeys!417 #b00000000000000000000000000000000) (bvsle extraKeys!417 #b00000000000000000000000000000011)))))

(declare-fun b!1547053 () Bool)

(declare-fun res!1060577 () Bool)

(declare-fun e!861156 () Bool)

(assert (=> b!1547053 (=> (not res!1060577) (not e!861156))))

(declare-fun from!762 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1547053 (= res!1060577 (validKeyInArray!0 (select (arr!49796 _keys!618) from!762)))))

(declare-fun b!1547054 () Bool)

(assert (=> b!1547054 (= e!861160 e!861156)))

(declare-fun res!1060581 () Bool)

(assert (=> b!1547054 (=> (not res!1060581) (not e!861156))))

(assert (=> b!1547054 (= res!1060581 (bvslt from!762 (size!50347 _keys!618)))))

(declare-fun lt!666719 () ListLongMap!22315)

(declare-fun e!861154 () ListLongMap!22315)

(assert (=> b!1547054 (= lt!666719 e!861154)))

(declare-fun c!141889 () Bool)

(declare-fun lt!666715 () Bool)

(assert (=> b!1547054 (= c!141889 (and (not lt!666715) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1547054 (= lt!666715 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun zeroValue!436 () V!59129)

(declare-fun defaultEntry!478 () Int)

(declare-fun minValue!436 () V!59129)

(declare-fun call!69769 () ListLongMap!22315)

(declare-fun bm!69765 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!6618 (array!103197 array!103199 (_ BitVec 32) (_ BitVec 32) V!59129 V!59129 (_ BitVec 32) Int) ListLongMap!22315)

(assert (=> bm!69765 (= call!69769 (getCurrentListMapNoExtraKeys!6618 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1547055 () Bool)

(declare-fun e!861155 () Bool)

(declare-fun e!861153 () Bool)

(assert (=> b!1547055 (= e!861155 (and e!861153 mapRes!58726))))

(declare-fun condMapEmpty!58726 () Bool)

(declare-fun mapDefault!58726 () ValueCell!18097)

