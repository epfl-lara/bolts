; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132064 () Bool)

(assert start!132064)

(declare-fun b_free!31745 () Bool)

(declare-fun b_next!31745 () Bool)

(assert (=> start!132064 (= b_free!31745 (not b_next!31745))))

(declare-fun tp!111487 () Bool)

(declare-fun b_and!51165 () Bool)

(assert (=> start!132064 (= tp!111487 b_and!51165)))

(declare-fun bm!69809 () Bool)

(declare-datatypes ((V!59137 0))(
  ( (V!59138 (val!19088 Int)) )
))
(declare-datatypes ((tuple2!24700 0))(
  ( (tuple2!24701 (_1!12360 (_ BitVec 64)) (_2!12360 V!59137)) )
))
(declare-datatypes ((List!36210 0))(
  ( (Nil!36207) (Cons!36206 (h!37652 tuple2!24700) (t!50911 List!36210)) )
))
(declare-datatypes ((ListLongMap!22321 0))(
  ( (ListLongMap!22322 (toList!11176 List!36210)) )
))
(declare-fun call!69813 () ListLongMap!22321)

(declare-fun call!69816 () ListLongMap!22321)

(assert (=> bm!69809 (= call!69813 call!69816)))

(declare-fun bm!69810 () Bool)

(declare-fun call!69815 () ListLongMap!22321)

(assert (=> bm!69810 (= call!69815 call!69813)))

(declare-fun mapNonEmpty!58735 () Bool)

(declare-fun mapRes!58735 () Bool)

(declare-fun tp!111488 () Bool)

(declare-fun e!861240 () Bool)

(assert (=> mapNonEmpty!58735 (= mapRes!58735 (and tp!111488 e!861240))))

(declare-datatypes ((ValueCell!18100 0))(
  ( (ValueCellFull!18100 (v!21886 V!59137)) (EmptyCell!18100) )
))
(declare-fun mapRest!58735 () (Array (_ BitVec 32) ValueCell!18100))

(declare-fun mapKey!58735 () (_ BitVec 32))

(declare-datatypes ((array!103209 0))(
  ( (array!103210 (arr!49802 (Array (_ BitVec 32) ValueCell!18100)) (size!50353 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103209)

(declare-fun mapValue!58735 () ValueCell!18100)

(assert (=> mapNonEmpty!58735 (= (arr!49802 _values!470) (store mapRest!58735 mapKey!58735 mapValue!58735))))

(declare-fun b!1547194 () Bool)

(declare-fun tp_is_empty!38021 () Bool)

(assert (=> b!1547194 (= e!861240 tp_is_empty!38021)))

(declare-fun b!1547195 () Bool)

(declare-fun e!861233 () Bool)

(declare-fun e!861234 () Bool)

(assert (=> b!1547195 (= e!861233 (and e!861234 mapRes!58735))))

(declare-fun condMapEmpty!58735 () Bool)

(declare-fun mapDefault!58735 () ValueCell!18100)

