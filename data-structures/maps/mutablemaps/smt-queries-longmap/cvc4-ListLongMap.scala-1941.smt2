; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34352 () Bool)

(assert start!34352)

(declare-fun b_free!7319 () Bool)

(declare-fun b_next!7319 () Bool)

(assert (=> start!34352 (= b_free!7319 (not b_next!7319))))

(declare-fun tp!25496 () Bool)

(declare-fun b_and!14541 () Bool)

(assert (=> start!34352 (= tp!25496 b_and!14541)))

(declare-fun b!342780 () Bool)

(declare-fun res!189566 () Bool)

(declare-fun e!210204 () Bool)

(assert (=> b!342780 (=> (not res!189566) (not e!210204))))

(declare-datatypes ((array!18107 0))(
  ( (array!18108 (arr!8569 (Array (_ BitVec 32) (_ BitVec 64))) (size!8921 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18107)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18107 (_ BitVec 32)) Bool)

(assert (=> b!342780 (= res!189566 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!342781 () Bool)

(declare-fun e!210201 () Bool)

(assert (=> b!342781 (= e!210204 e!210201)))

(declare-fun res!189565 () Bool)

(assert (=> b!342781 (=> (not res!189565) (not e!210201))))

(declare-datatypes ((SeekEntryResult!3304 0))(
  ( (MissingZero!3304 (index!15395 (_ BitVec 32))) (Found!3304 (index!15396 (_ BitVec 32))) (Intermediate!3304 (undefined!4116 Bool) (index!15397 (_ BitVec 32)) (x!34129 (_ BitVec 32))) (Undefined!3304) (MissingVacant!3304 (index!15398 (_ BitVec 32))) )
))
(declare-fun lt!162253 () SeekEntryResult!3304)

(assert (=> b!342781 (= res!189565 (and (not (is-Found!3304 lt!162253)) (not (is-MissingZero!3304 lt!162253)) (is-MissingVacant!3304 lt!162253)))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18107 (_ BitVec 32)) SeekEntryResult!3304)

(assert (=> b!342781 (= lt!162253 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12339 () Bool)

(declare-fun mapRes!12339 () Bool)

(assert (=> mapIsEmpty!12339 mapRes!12339))

(declare-fun b!342782 () Bool)

(declare-fun res!189564 () Bool)

(assert (=> b!342782 (=> (not res!189564) (not e!210204))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!342782 (= res!189564 (validKeyInArray!0 k!1348))))

(declare-fun b!342783 () Bool)

(declare-fun e!210203 () Bool)

(declare-fun tp_is_empty!7271 () Bool)

(assert (=> b!342783 (= e!210203 tp_is_empty!7271)))

(declare-fun b!342784 () Bool)

(declare-datatypes ((Unit!10701 0))(
  ( (Unit!10702) )
))
(declare-fun e!210198 () Unit!10701)

(declare-fun Unit!10703 () Unit!10701)

(assert (=> b!342784 (= e!210198 Unit!10703)))

(declare-fun b!342785 () Bool)

(declare-fun res!189563 () Bool)

(assert (=> b!342785 (=> (not res!189563) (not e!210204))))

(declare-datatypes ((List!4965 0))(
  ( (Nil!4962) (Cons!4961 (h!5817 (_ BitVec 64)) (t!10085 List!4965)) )
))
(declare-fun arrayNoDuplicates!0 (array!18107 (_ BitVec 32) List!4965) Bool)

(assert (=> b!342785 (= res!189563 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4962))))

(declare-fun res!189562 () Bool)

(assert (=> start!34352 (=> (not res!189562) (not e!210204))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34352 (= res!189562 (validMask!0 mask!2385))))

(assert (=> start!34352 e!210204))

(assert (=> start!34352 true))

(assert (=> start!34352 tp_is_empty!7271))

(assert (=> start!34352 tp!25496))

(declare-datatypes ((V!10671 0))(
  ( (V!10672 (val!3680 Int)) )
))
(declare-datatypes ((ValueCell!3292 0))(
  ( (ValueCellFull!3292 (v!5850 V!10671)) (EmptyCell!3292) )
))
(declare-datatypes ((array!18109 0))(
  ( (array!18110 (arr!8570 (Array (_ BitVec 32) ValueCell!3292)) (size!8922 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18109)

(declare-fun e!210199 () Bool)

(declare-fun array_inv!6336 (array!18109) Bool)

(assert (=> start!34352 (and (array_inv!6336 _values!1525) e!210199)))

(declare-fun array_inv!6337 (array!18107) Bool)

(assert (=> start!34352 (array_inv!6337 _keys!1895)))

(declare-fun b!342786 () Bool)

(declare-fun res!189561 () Bool)

(assert (=> b!342786 (=> (not res!189561) (not e!210204))))

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10671)

(declare-fun zeroValue!1467 () V!10671)

(declare-datatypes ((tuple2!5322 0))(
  ( (tuple2!5323 (_1!2671 (_ BitVec 64)) (_2!2671 V!10671)) )
))
(declare-datatypes ((List!4966 0))(
  ( (Nil!4963) (Cons!4962 (h!5818 tuple2!5322) (t!10086 List!4966)) )
))
(declare-datatypes ((ListLongMap!4249 0))(
  ( (ListLongMap!4250 (toList!2140 List!4966)) )
))
(declare-fun contains!2192 (ListLongMap!4249 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1660 (array!18107 array!18109 (_ BitVec 32) (_ BitVec 32) V!10671 V!10671 (_ BitVec 32) Int) ListLongMap!4249)

(assert (=> b!342786 (= res!189561 (not (contains!2192 (getCurrentListMap!1660 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!342787 () Bool)

(declare-fun e!210202 () Bool)

(assert (=> b!342787 (= e!210202 tp_is_empty!7271)))

(declare-fun mapNonEmpty!12339 () Bool)

(declare-fun tp!25497 () Bool)

(assert (=> mapNonEmpty!12339 (= mapRes!12339 (and tp!25497 e!210202))))

(declare-fun mapKey!12339 () (_ BitVec 32))

(declare-fun mapRest!12339 () (Array (_ BitVec 32) ValueCell!3292))

(declare-fun mapValue!12339 () ValueCell!3292)

(assert (=> mapNonEmpty!12339 (= (arr!8570 _values!1525) (store mapRest!12339 mapKey!12339 mapValue!12339))))

(declare-fun b!342788 () Bool)

(declare-fun Unit!10704 () Unit!10701)

(assert (=> b!342788 (= e!210198 Unit!10704)))

(declare-fun lt!162255 () Unit!10701)

(declare-fun lemmaArrayContainsKeyThenInListMap!312 (array!18107 array!18109 (_ BitVec 32) (_ BitVec 32) V!10671 V!10671 (_ BitVec 64) (_ BitVec 32) Int) Unit!10701)

(declare-fun arrayScanForKey!0 (array!18107 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!342788 (= lt!162255 (lemmaArrayContainsKeyThenInListMap!312 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!342788 false))

(declare-fun b!342789 () Bool)

(declare-fun res!189560 () Bool)

(assert (=> b!342789 (=> (not res!189560) (not e!210204))))

(assert (=> b!342789 (= res!189560 (and (= (size!8922 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8921 _keys!1895) (size!8922 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!342790 () Bool)

(assert (=> b!342790 (= e!210201 false)))

(declare-fun lt!162254 () Unit!10701)

(assert (=> b!342790 (= lt!162254 e!210198)))

(declare-fun c!52781 () Bool)

(declare-fun arrayContainsKey!0 (array!18107 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!342790 (= c!52781 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!342791 () Bool)

(assert (=> b!342791 (= e!210199 (and e!210203 mapRes!12339))))

(declare-fun condMapEmpty!12339 () Bool)

(declare-fun mapDefault!12339 () ValueCell!3292)

