; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82596 () Bool)

(assert start!82596)

(declare-fun b_free!18701 () Bool)

(declare-fun b_next!18701 () Bool)

(assert (=> start!82596 (= b_free!18701 (not b_next!18701))))

(declare-fun tp!65223 () Bool)

(declare-fun b_and!30207 () Bool)

(assert (=> start!82596 (= tp!65223 b_and!30207)))

(declare-fun b!962099 () Bool)

(declare-fun e!542589 () Bool)

(declare-fun tp_is_empty!21503 () Bool)

(assert (=> b!962099 (= e!542589 tp_is_empty!21503)))

(declare-fun b!962100 () Bool)

(declare-fun res!643972 () Bool)

(declare-fun e!542592 () Bool)

(assert (=> b!962100 (=> (not res!643972) (not e!542592))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33653 0))(
  ( (V!33654 (val!10802 Int)) )
))
(declare-datatypes ((ValueCell!10270 0))(
  ( (ValueCellFull!10270 (v!13360 V!33653)) (EmptyCell!10270) )
))
(declare-datatypes ((array!59091 0))(
  ( (array!59092 (arr!28410 (Array (_ BitVec 32) ValueCell!10270)) (size!28890 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!59091)

(declare-datatypes ((array!59093 0))(
  ( (array!59094 (arr!28411 (Array (_ BitVec 32) (_ BitVec 64))) (size!28891 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!59093)

(declare-fun mask!2110 () (_ BitVec 32))

(assert (=> b!962100 (= res!643972 (and (= (size!28890 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28891 _keys!1686) (size!28890 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!34249 () Bool)

(declare-fun mapRes!34249 () Bool)

(assert (=> mapIsEmpty!34249 mapRes!34249))

(declare-fun mapNonEmpty!34249 () Bool)

(declare-fun tp!65224 () Bool)

(declare-fun e!542593 () Bool)

(assert (=> mapNonEmpty!34249 (= mapRes!34249 (and tp!65224 e!542593))))

(declare-fun mapValue!34249 () ValueCell!10270)

(declare-fun mapRest!34249 () (Array (_ BitVec 32) ValueCell!10270))

(declare-fun mapKey!34249 () (_ BitVec 32))

(assert (=> mapNonEmpty!34249 (= (arr!28410 _values!1400) (store mapRest!34249 mapKey!34249 mapValue!34249))))

(declare-fun b!962101 () Bool)

(declare-fun e!542590 () Bool)

(assert (=> b!962101 (= e!542590 (and e!542589 mapRes!34249))))

(declare-fun condMapEmpty!34249 () Bool)

(declare-fun mapDefault!34249 () ValueCell!10270)

