; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132054 () Bool)

(assert start!132054)

(declare-fun b_free!31735 () Bool)

(declare-fun b_next!31735 () Bool)

(assert (=> start!132054 (= b_free!31735 (not b_next!31735))))

(declare-fun tp!111457 () Bool)

(declare-fun b_and!51155 () Bool)

(assert (=> start!132054 (= tp!111457 b_and!51155)))

(declare-fun bm!69734 () Bool)

(declare-datatypes ((array!103189 0))(
  ( (array!103190 (arr!49792 (Array (_ BitVec 32) (_ BitVec 64))) (size!50343 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103189)

(declare-datatypes ((V!59125 0))(
  ( (V!59126 (val!19083 Int)) )
))
(declare-fun zeroValue!436 () V!59125)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun from!762 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18095 0))(
  ( (ValueCellFull!18095 (v!21881 V!59125)) (EmptyCell!18095) )
))
(declare-datatypes ((array!103191 0))(
  ( (array!103192 (arr!49793 (Array (_ BitVec 32) ValueCell!18095)) (size!50344 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103191)

(declare-fun minValue!436 () V!59125)

(declare-datatypes ((tuple2!24690 0))(
  ( (tuple2!24691 (_1!12355 (_ BitVec 64)) (_2!12355 V!59125)) )
))
(declare-datatypes ((List!36200 0))(
  ( (Nil!36197) (Cons!36196 (h!37642 tuple2!24690) (t!50901 List!36200)) )
))
(declare-datatypes ((ListLongMap!22311 0))(
  ( (ListLongMap!22312 (toList!11171 List!36200)) )
))
(declare-fun call!69740 () ListLongMap!22311)

(declare-fun defaultEntry!478 () Int)

(declare-fun getCurrentListMapNoExtraKeys!6616 (array!103189 array!103191 (_ BitVec 32) (_ BitVec 32) V!59125 V!59125 (_ BitVec 32) Int) ListLongMap!22311)

(assert (=> bm!69734 (= call!69740 (getCurrentListMapNoExtraKeys!6616 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1546954 () Bool)

(declare-fun res!1060537 () Bool)

(declare-fun e!861098 () Bool)

(assert (=> b!1546954 (=> (not res!1060537) (not e!861098))))

(declare-datatypes ((List!36201 0))(
  ( (Nil!36198) (Cons!36197 (h!37643 (_ BitVec 64)) (t!50902 List!36201)) )
))
(declare-fun arrayNoDuplicates!0 (array!103189 (_ BitVec 32) List!36201) Bool)

(assert (=> b!1546954 (= res!1060537 (arrayNoDuplicates!0 _keys!618 #b00000000000000000000000000000000 Nil!36198))))

(declare-fun b!1546955 () Bool)

(declare-fun e!861101 () ListLongMap!22311)

(declare-fun call!69741 () ListLongMap!22311)

(declare-fun +!4898 (ListLongMap!22311 tuple2!24690) ListLongMap!22311)

(assert (=> b!1546955 (= e!861101 (+!4898 call!69741 (tuple2!24691 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!436)))))

(declare-fun b!1546956 () Bool)

(declare-fun res!1060535 () Bool)

(assert (=> b!1546956 (=> (not res!1060535) (not e!861098))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103189 (_ BitVec 32)) Bool)

(assert (=> b!1546956 (= res!1060535 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1546957 () Bool)

(declare-fun e!861105 () ListLongMap!22311)

(declare-fun call!69738 () ListLongMap!22311)

(assert (=> b!1546957 (= e!861105 call!69738)))

(declare-fun b!1546958 () Bool)

(declare-fun e!861106 () ListLongMap!22311)

(declare-fun call!69737 () ListLongMap!22311)

(assert (=> b!1546958 (= e!861106 call!69737)))

(declare-fun b!1546959 () Bool)

(declare-fun res!1060541 () Bool)

(assert (=> b!1546959 (=> (not res!1060541) (not e!861098))))

(assert (=> b!1546959 (= res!1060541 (and (bvsge from!762 #b00000000000000000000000000000000) (bvsle from!762 (size!50343 _keys!618))))))

(declare-fun b!1546960 () Bool)

(declare-fun e!861103 () Bool)

(assert (=> b!1546960 (= e!861098 e!861103)))

(declare-fun res!1060540 () Bool)

(assert (=> b!1546960 (=> (not res!1060540) (not e!861103))))

(assert (=> b!1546960 (= res!1060540 (bvslt from!762 (size!50343 _keys!618)))))

(declare-fun lt!666689 () ListLongMap!22311)

(assert (=> b!1546960 (= lt!666689 e!861101)))

(declare-fun c!141870 () Bool)

(declare-fun lt!666687 () Bool)

(assert (=> b!1546960 (= c!141870 (and (not lt!666687) (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1546960 (= lt!666687 (= (bvand extraKeys!417 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1546961 () Bool)

(assert (=> b!1546961 (= e!861105 call!69737)))

(declare-fun res!1060539 () Bool)

(assert (=> start!132054 (=> (not res!1060539) (not e!861098))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132054 (= res!1060539 (validMask!0 mask!926))))

(assert (=> start!132054 e!861098))

(declare-fun array_inv!38649 (array!103189) Bool)

(assert (=> start!132054 (array_inv!38649 _keys!618)))

(declare-fun tp_is_empty!38011 () Bool)

(assert (=> start!132054 tp_is_empty!38011))

(assert (=> start!132054 true))

(assert (=> start!132054 tp!111457))

(declare-fun e!861102 () Bool)

(declare-fun array_inv!38650 (array!103191) Bool)

(assert (=> start!132054 (and (array_inv!38650 _values!470) e!861102)))

(declare-fun b!1546962 () Bool)

(declare-fun e!861099 () Bool)

(assert (=> b!1546962 (= e!861099 tp_is_empty!38011)))

(declare-fun b!1546963 () Bool)

(declare-fun mapRes!58720 () Bool)

(assert (=> b!1546963 (= e!861102 (and e!861099 mapRes!58720))))

(declare-fun condMapEmpty!58720 () Bool)

(declare-fun mapDefault!58720 () ValueCell!18095)

