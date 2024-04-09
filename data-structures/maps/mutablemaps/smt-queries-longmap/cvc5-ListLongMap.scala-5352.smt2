; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!71710 () Bool)

(assert start!71710)

(declare-fun b_free!13519 () Bool)

(declare-fun b_next!13519 () Bool)

(assert (=> start!71710 (= b_free!13519 (not b_next!13519))))

(declare-fun tp!47354 () Bool)

(declare-fun b_and!22623 () Bool)

(assert (=> start!71710 (= tp!47354 b_and!22623)))

(declare-datatypes ((V!25307 0))(
  ( (V!25308 (val!7662 Int)) )
))
(declare-datatypes ((tuple2!10192 0))(
  ( (tuple2!10193 (_1!5106 (_ BitVec 64)) (_2!5106 V!25307)) )
))
(declare-fun lt!378373 () tuple2!10192)

(declare-fun e!465018 () Bool)

(declare-fun b!833516 () Bool)

(declare-datatypes ((List!16020 0))(
  ( (Nil!16017) (Cons!16016 (h!17147 tuple2!10192) (t!22399 List!16020)) )
))
(declare-datatypes ((ListLongMap!9029 0))(
  ( (ListLongMap!9030 (toList!4530 List!16020)) )
))
(declare-fun lt!378377 () ListLongMap!9029)

(declare-fun lt!378376 () tuple2!10192)

(declare-fun lt!378374 () ListLongMap!9029)

(declare-fun +!1958 (ListLongMap!9029 tuple2!10192) ListLongMap!9029)

(assert (=> b!833516 (= e!465018 (= lt!378374 (+!1958 (+!1958 lt!378377 lt!378376) lt!378373)))))

(declare-fun mapNonEmpty!24506 () Bool)

(declare-fun mapRes!24506 () Bool)

(declare-fun tp!47353 () Bool)

(declare-fun e!465020 () Bool)

(assert (=> mapNonEmpty!24506 (= mapRes!24506 (and tp!47353 e!465020))))

(declare-datatypes ((ValueCell!7199 0))(
  ( (ValueCellFull!7199 (v!10106 V!25307)) (EmptyCell!7199) )
))
(declare-fun mapRest!24506 () (Array (_ BitVec 32) ValueCell!7199))

(declare-fun mapValue!24506 () ValueCell!7199)

(declare-datatypes ((array!46604 0))(
  ( (array!46605 (arr!22332 (Array (_ BitVec 32) ValueCell!7199)) (size!22753 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46604)

(declare-fun mapKey!24506 () (_ BitVec 32))

(assert (=> mapNonEmpty!24506 (= (arr!22332 _values!788) (store mapRest!24506 mapKey!24506 mapValue!24506))))

(declare-fun b!833517 () Bool)

(declare-fun e!465022 () Bool)

(declare-fun e!465023 () Bool)

(assert (=> b!833517 (= e!465022 (and e!465023 mapRes!24506))))

(declare-fun condMapEmpty!24506 () Bool)

(declare-fun mapDefault!24506 () ValueCell!7199)

