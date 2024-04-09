; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!898 () Bool)

(assert start!898)

(declare-fun b_free!271 () Bool)

(declare-fun b_next!271 () Bool)

(assert (=> start!898 (= b_free!271 (not b_next!271))))

(declare-fun tp!1045 () Bool)

(declare-fun b_and!419 () Bool)

(assert (=> start!898 (= tp!1045 b_and!419)))

(declare-fun b!7492 () Bool)

(declare-fun res!7437 () Bool)

(declare-fun e!4172 () Bool)

(assert (=> b!7492 (=> (not res!7437) (not e!4172))))

(declare-datatypes ((array!633 0))(
  ( (array!634 (arr!304 (Array (_ BitVec 32) (_ BitVec 64))) (size!366 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!633)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!633 (_ BitVec 32)) Bool)

(assert (=> b!7492 (= res!7437 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!7493 () Bool)

(declare-fun res!7438 () Bool)

(assert (=> b!7493 (=> (not res!7438) (not e!4172))))

(declare-datatypes ((V!643 0))(
  ( (V!644 (val!180 Int)) )
))
(declare-datatypes ((ValueCell!158 0))(
  ( (ValueCellFull!158 (v!1272 V!643)) (EmptyCell!158) )
))
(declare-datatypes ((array!635 0))(
  ( (array!636 (arr!305 (Array (_ BitVec 32) ValueCell!158)) (size!367 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!635)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!7493 (= res!7438 (and (= (size!367 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!366 _keys!1806) (size!367 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun b!7494 () Bool)

(declare-fun res!7436 () Bool)

(assert (=> b!7494 (=> (not res!7436) (not e!4172))))

(declare-datatypes ((List!207 0))(
  ( (Nil!204) (Cons!203 (h!769 (_ BitVec 64)) (t!2344 List!207)) )
))
(declare-fun arrayNoDuplicates!0 (array!633 (_ BitVec 32) List!207) Bool)

(assert (=> b!7494 (= res!7436 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!204))))

(declare-fun mapNonEmpty!497 () Bool)

(declare-fun mapRes!497 () Bool)

(declare-fun tp!1046 () Bool)

(declare-fun e!4169 () Bool)

(assert (=> mapNonEmpty!497 (= mapRes!497 (and tp!1046 e!4169))))

(declare-fun mapValue!497 () ValueCell!158)

(declare-fun mapRest!497 () (Array (_ BitVec 32) ValueCell!158))

(declare-fun mapKey!497 () (_ BitVec 32))

(assert (=> mapNonEmpty!497 (= (arr!305 _values!1492) (store mapRest!497 mapKey!497 mapValue!497))))

(declare-fun b!7491 () Bool)

(declare-fun e!4168 () Bool)

(declare-fun tp_is_empty!349 () Bool)

(assert (=> b!7491 (= e!4168 tp_is_empty!349)))

(declare-fun res!7435 () Bool)

(assert (=> start!898 (=> (not res!7435) (not e!4172))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!898 (= res!7435 (validMask!0 mask!2250))))

(assert (=> start!898 e!4172))

(assert (=> start!898 tp!1045))

(assert (=> start!898 true))

(declare-fun e!4171 () Bool)

(declare-fun array_inv!227 (array!635) Bool)

(assert (=> start!898 (and (array_inv!227 _values!1492) e!4171)))

(assert (=> start!898 tp_is_empty!349))

(declare-fun array_inv!228 (array!633) Bool)

(assert (=> start!898 (array_inv!228 _keys!1806)))

(declare-fun b!7495 () Bool)

(assert (=> b!7495 (= e!4169 tp_is_empty!349)))

(declare-fun b!7496 () Bool)

(assert (=> b!7496 (= e!4171 (and e!4168 mapRes!497))))

(declare-fun condMapEmpty!497 () Bool)

(declare-fun mapDefault!497 () ValueCell!158)

