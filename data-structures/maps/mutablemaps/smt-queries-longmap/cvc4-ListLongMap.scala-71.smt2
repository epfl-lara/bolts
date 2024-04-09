; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!962 () Bool)

(assert start!962)

(declare-fun b_free!335 () Bool)

(declare-fun b_next!335 () Bool)

(assert (=> start!962 (= b_free!335 (not b_next!335))))

(declare-fun tp!1238 () Bool)

(declare-fun b_and!483 () Bool)

(assert (=> start!962 (= tp!1238 b_and!483)))

(declare-fun mapNonEmpty!593 () Bool)

(declare-fun mapRes!593 () Bool)

(declare-fun tp!1237 () Bool)

(declare-fun e!4701 () Bool)

(assert (=> mapNonEmpty!593 (= mapRes!593 (and tp!1237 e!4701))))

(declare-datatypes ((V!727 0))(
  ( (V!728 (val!212 Int)) )
))
(declare-datatypes ((ValueCell!190 0))(
  ( (ValueCellFull!190 (v!1304 V!727)) (EmptyCell!190) )
))
(declare-fun mapValue!593 () ValueCell!190)

(declare-fun mapRest!593 () (Array (_ BitVec 32) ValueCell!190))

(declare-datatypes ((array!749 0))(
  ( (array!750 (arr!362 (Array (_ BitVec 32) ValueCell!190)) (size!424 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!749)

(declare-fun mapKey!593 () (_ BitVec 32))

(assert (=> mapNonEmpty!593 (= (arr!362 _values!1492) (store mapRest!593 mapKey!593 mapValue!593))))

(declare-fun b!8293 () Bool)

(declare-fun e!4704 () Bool)

(declare-fun e!4705 () Bool)

(assert (=> b!8293 (= e!4704 (and e!4705 mapRes!593))))

(declare-fun condMapEmpty!593 () Bool)

(declare-fun mapDefault!593 () ValueCell!190)

