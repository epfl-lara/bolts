; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34246 () Bool)

(assert start!34246)

(declare-fun b_free!7261 () Bool)

(declare-fun b_next!7261 () Bool)

(assert (=> start!34246 (= b_free!7261 (not b_next!7261))))

(declare-fun tp!25317 () Bool)

(declare-fun b_and!14479 () Bool)

(assert (=> start!34246 (= tp!25317 b_and!14479)))

(declare-fun b!341458 () Bool)

(declare-datatypes ((Unit!10609 0))(
  ( (Unit!10610) )
))
(declare-fun e!209413 () Unit!10609)

(declare-fun Unit!10611 () Unit!10609)

(assert (=> b!341458 (= e!209413 Unit!10611)))

(declare-fun mapIsEmpty!12246 () Bool)

(declare-fun mapRes!12246 () Bool)

(assert (=> mapIsEmpty!12246 mapRes!12246))

(declare-fun b!341459 () Bool)

(declare-fun res!188854 () Bool)

(declare-fun e!209409 () Bool)

(assert (=> b!341459 (=> (not res!188854) (not e!209409))))

(declare-datatypes ((array!17991 0))(
  ( (array!17992 (arr!8513 (Array (_ BitVec 32) (_ BitVec 64))) (size!8865 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17991)

(declare-datatypes ((List!4921 0))(
  ( (Nil!4918) (Cons!4917 (h!5773 (_ BitVec 64)) (t!10037 List!4921)) )
))
(declare-fun arrayNoDuplicates!0 (array!17991 (_ BitVec 32) List!4921) Bool)

(assert (=> b!341459 (= res!188854 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4918))))

(declare-fun b!341460 () Bool)

(declare-fun e!209414 () Bool)

(declare-fun tp_is_empty!7213 () Bool)

(assert (=> b!341460 (= e!209414 tp_is_empty!7213)))

(declare-fun res!188851 () Bool)

(assert (=> start!34246 (=> (not res!188851) (not e!209409))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34246 (= res!188851 (validMask!0 mask!2385))))

(assert (=> start!34246 e!209409))

(assert (=> start!34246 true))

(assert (=> start!34246 tp_is_empty!7213))

(assert (=> start!34246 tp!25317))

(declare-datatypes ((V!10595 0))(
  ( (V!10596 (val!3651 Int)) )
))
(declare-datatypes ((ValueCell!3263 0))(
  ( (ValueCellFull!3263 (v!5819 V!10595)) (EmptyCell!3263) )
))
(declare-datatypes ((array!17993 0))(
  ( (array!17994 (arr!8514 (Array (_ BitVec 32) ValueCell!3263)) (size!8866 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17993)

(declare-fun e!209415 () Bool)

(declare-fun array_inv!6298 (array!17993) Bool)

(assert (=> start!34246 (and (array_inv!6298 _values!1525) e!209415)))

(declare-fun array_inv!6299 (array!17991) Bool)

(assert (=> start!34246 (array_inv!6299 _keys!1895)))

(declare-fun b!341461 () Bool)

(declare-fun res!188852 () Bool)

(assert (=> b!341461 (=> (not res!188852) (not e!209409))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!341461 (= res!188852 (validKeyInArray!0 k!1348))))

(declare-fun mapNonEmpty!12246 () Bool)

(declare-fun tp!25316 () Bool)

(assert (=> mapNonEmpty!12246 (= mapRes!12246 (and tp!25316 e!209414))))

(declare-fun mapValue!12246 () ValueCell!3263)

(declare-fun mapRest!12246 () (Array (_ BitVec 32) ValueCell!3263))

(declare-fun mapKey!12246 () (_ BitVec 32))

(assert (=> mapNonEmpty!12246 (= (arr!8514 _values!1525) (store mapRest!12246 mapKey!12246 mapValue!12246))))

(declare-fun b!341462 () Bool)

(declare-fun res!188853 () Bool)

(assert (=> b!341462 (=> (not res!188853) (not e!209409))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!341462 (= res!188853 (and (= (size!8866 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8865 _keys!1895) (size!8866 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!341463 () Bool)

(declare-fun res!188850 () Bool)

(assert (=> b!341463 (=> (not res!188850) (not e!209409))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17991 (_ BitVec 32)) Bool)

(assert (=> b!341463 (= res!188850 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!341464 () Bool)

(declare-fun e!209411 () Bool)

(assert (=> b!341464 (= e!209411 tp_is_empty!7213)))

(declare-fun b!341465 () Bool)

(declare-fun res!188855 () Bool)

(assert (=> b!341465 (=> (not res!188855) (not e!209409))))

(declare-fun zeroValue!1467 () V!10595)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10595)

(declare-datatypes ((tuple2!5278 0))(
  ( (tuple2!5279 (_1!2649 (_ BitVec 64)) (_2!2649 V!10595)) )
))
(declare-datatypes ((List!4922 0))(
  ( (Nil!4919) (Cons!4918 (h!5774 tuple2!5278) (t!10038 List!4922)) )
))
(declare-datatypes ((ListLongMap!4205 0))(
  ( (ListLongMap!4206 (toList!2118 List!4922)) )
))
(declare-fun contains!2168 (ListLongMap!4205 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1638 (array!17991 array!17993 (_ BitVec 32) (_ BitVec 32) V!10595 V!10595 (_ BitVec 32) Int) ListLongMap!4205)

(assert (=> b!341465 (= res!188855 (not (contains!2168 (getCurrentListMap!1638 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!341466 () Bool)

(declare-fun Unit!10612 () Unit!10609)

(assert (=> b!341466 (= e!209413 Unit!10612)))

(declare-fun lt!161780 () Unit!10609)

(declare-fun lemmaArrayContainsKeyThenInListMap!291 (array!17991 array!17993 (_ BitVec 32) (_ BitVec 32) V!10595 V!10595 (_ BitVec 64) (_ BitVec 32) Int) Unit!10609)

(declare-fun arrayScanForKey!0 (array!17991 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!341466 (= lt!161780 (lemmaArrayContainsKeyThenInListMap!291 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!341466 false))

(declare-fun b!341467 () Bool)

(declare-fun e!209410 () Bool)

(assert (=> b!341467 (= e!209410 (bvsge #b00000000000000000000000000000000 (size!8865 _keys!1895)))))

(declare-fun lt!161781 () Unit!10609)

(assert (=> b!341467 (= lt!161781 e!209413)))

(declare-fun c!52616 () Bool)

(declare-fun arrayContainsKey!0 (array!17991 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!341467 (= c!52616 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!341468 () Bool)

(assert (=> b!341468 (= e!209415 (and e!209411 mapRes!12246))))

(declare-fun condMapEmpty!12246 () Bool)

(declare-fun mapDefault!12246 () ValueCell!3263)

