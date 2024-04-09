; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34222 () Bool)

(assert start!34222)

(declare-fun b_free!7237 () Bool)

(declare-fun b_next!7237 () Bool)

(assert (=> start!34222 (= b_free!7237 (not b_next!7237))))

(declare-fun tp!25245 () Bool)

(declare-fun b_and!14455 () Bool)

(assert (=> start!34222 (= tp!25245 b_and!14455)))

(declare-fun b!341051 () Bool)

(declare-fun res!188573 () Bool)

(declare-fun e!209183 () Bool)

(assert (=> b!341051 (=> (not res!188573) (not e!209183))))

(declare-datatypes ((array!17943 0))(
  ( (array!17944 (arr!8489 (Array (_ BitVec 32) (_ BitVec 64))) (size!8841 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17943)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17943 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!341051 (= res!188573 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!12210 () Bool)

(declare-fun mapRes!12210 () Bool)

(declare-fun tp!25244 () Bool)

(declare-fun e!209186 () Bool)

(assert (=> mapNonEmpty!12210 (= mapRes!12210 (and tp!25244 e!209186))))

(declare-datatypes ((V!10563 0))(
  ( (V!10564 (val!3639 Int)) )
))
(declare-datatypes ((ValueCell!3251 0))(
  ( (ValueCellFull!3251 (v!5807 V!10563)) (EmptyCell!3251) )
))
(declare-fun mapValue!12210 () ValueCell!3251)

(declare-fun mapKey!12210 () (_ BitVec 32))

(declare-datatypes ((array!17945 0))(
  ( (array!17946 (arr!8490 (Array (_ BitVec 32) ValueCell!3251)) (size!8842 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17945)

(declare-fun mapRest!12210 () (Array (_ BitVec 32) ValueCell!3251))

(assert (=> mapNonEmpty!12210 (= (arr!8490 _values!1525) (store mapRest!12210 mapKey!12210 mapValue!12210))))

(declare-fun b!341052 () Bool)

(declare-fun res!188575 () Bool)

(declare-fun e!209187 () Bool)

(assert (=> b!341052 (=> (not res!188575) (not e!209187))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!341052 (= res!188575 (validKeyInArray!0 k!1348))))

(declare-fun res!188577 () Bool)

(assert (=> start!34222 (=> (not res!188577) (not e!209187))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34222 (= res!188577 (validMask!0 mask!2385))))

(assert (=> start!34222 e!209187))

(assert (=> start!34222 true))

(declare-fun tp_is_empty!7189 () Bool)

(assert (=> start!34222 tp_is_empty!7189))

(assert (=> start!34222 tp!25245))

(declare-fun e!209185 () Bool)

(declare-fun array_inv!6278 (array!17945) Bool)

(assert (=> start!34222 (and (array_inv!6278 _values!1525) e!209185)))

(declare-fun array_inv!6279 (array!17943) Bool)

(assert (=> start!34222 (array_inv!6279 _keys!1895)))

(declare-fun b!341053 () Bool)

(declare-fun e!209182 () Bool)

(assert (=> b!341053 (= e!209185 (and e!209182 mapRes!12210))))

(declare-fun condMapEmpty!12210 () Bool)

(declare-fun mapDefault!12210 () ValueCell!3251)

