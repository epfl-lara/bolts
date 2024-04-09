; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!890 () Bool)

(assert start!890)

(declare-fun b_free!263 () Bool)

(declare-fun b_next!263 () Bool)

(assert (=> start!890 (= b_free!263 (not b_next!263))))

(declare-fun tp!1021 () Bool)

(declare-fun b_and!411 () Bool)

(assert (=> start!890 (= tp!1021 b_and!411)))

(declare-fun mapNonEmpty!485 () Bool)

(declare-fun mapRes!485 () Bool)

(declare-fun tp!1022 () Bool)

(declare-fun e!4111 () Bool)

(assert (=> mapNonEmpty!485 (= mapRes!485 (and tp!1022 e!4111))))

(declare-datatypes ((V!631 0))(
  ( (V!632 (val!176 Int)) )
))
(declare-datatypes ((ValueCell!154 0))(
  ( (ValueCellFull!154 (v!1268 V!631)) (EmptyCell!154) )
))
(declare-fun mapValue!485 () ValueCell!154)

(declare-datatypes ((array!617 0))(
  ( (array!618 (arr!296 (Array (_ BitVec 32) ValueCell!154)) (size!358 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!617)

(declare-fun mapKey!485 () (_ BitVec 32))

(declare-fun mapRest!485 () (Array (_ BitVec 32) ValueCell!154))

(assert (=> mapNonEmpty!485 (= (arr!296 _values!1492) (store mapRest!485 mapKey!485 mapValue!485))))

(declare-fun b!7403 () Bool)

(declare-fun e!4110 () Bool)

(declare-fun tp_is_empty!341 () Bool)

(assert (=> b!7403 (= e!4110 tp_is_empty!341)))

(declare-fun b!7404 () Bool)

(declare-fun res!7387 () Bool)

(declare-fun e!4112 () Bool)

(assert (=> b!7404 (=> (not res!7387) (not e!4112))))

(declare-datatypes ((array!619 0))(
  ( (array!620 (arr!297 (Array (_ BitVec 32) (_ BitVec 64))) (size!359 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!619)

(declare-datatypes ((List!200 0))(
  ( (Nil!197) (Cons!196 (h!762 (_ BitVec 64)) (t!2337 List!200)) )
))
(declare-fun arrayNoDuplicates!0 (array!619 (_ BitVec 32) List!200) Bool)

(assert (=> b!7404 (= res!7387 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!197))))

(declare-fun mapIsEmpty!485 () Bool)

(assert (=> mapIsEmpty!485 mapRes!485))

(declare-fun b!7405 () Bool)

(declare-fun res!7385 () Bool)

(assert (=> b!7405 (=> (not res!7385) (not e!4112))))

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!7405 (= res!7385 (validKeyInArray!0 k!1278))))

(declare-fun b!7406 () Bool)

(assert (=> b!7406 (= e!4112 (not true))))

(declare-fun e!4108 () Bool)

(assert (=> b!7406 e!4108))

(declare-fun c!557 () Bool)

(assert (=> b!7406 (= c!557 (and (not (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1278 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun minValue!1434 () V!631)

(declare-datatypes ((Unit!141 0))(
  ( (Unit!142) )
))
(declare-fun lt!1533 () Unit!141)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!631)

(declare-fun defaultEntry!1495 () Int)

(declare-fun lemmaKeyInListMapIsInArray!51 (array!619 array!617 (_ BitVec 32) (_ BitVec 32) V!631 V!631 (_ BitVec 64) Int) Unit!141)

(assert (=> b!7406 (= lt!1533 (lemmaKeyInListMapIsInArray!51 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 k!1278 defaultEntry!1495))))

(declare-fun res!7388 () Bool)

(assert (=> start!890 (=> (not res!7388) (not e!4112))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!890 (= res!7388 (validMask!0 mask!2250))))

(assert (=> start!890 e!4112))

(assert (=> start!890 tp!1021))

(assert (=> start!890 true))

(declare-fun e!4109 () Bool)

(declare-fun array_inv!219 (array!617) Bool)

(assert (=> start!890 (and (array_inv!219 _values!1492) e!4109)))

(assert (=> start!890 tp_is_empty!341))

(declare-fun array_inv!220 (array!619) Bool)

(assert (=> start!890 (array_inv!220 _keys!1806)))

(declare-fun b!7407 () Bool)

(assert (=> b!7407 (= e!4109 (and e!4110 mapRes!485))))

(declare-fun condMapEmpty!485 () Bool)

(declare-fun mapDefault!485 () ValueCell!154)

