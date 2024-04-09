; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34512 () Bool)

(assert start!34512)

(declare-fun b_free!7427 () Bool)

(declare-fun b_next!7427 () Bool)

(assert (=> start!34512 (= b_free!7427 (not b_next!7427))))

(declare-fun tp!25827 () Bool)

(declare-fun b_and!14653 () Bool)

(assert (=> start!34512 (= tp!25827 b_and!14653)))

(declare-fun b!344609 () Bool)

(declare-fun res!190694 () Bool)

(declare-fun e!211248 () Bool)

(assert (=> b!344609 (=> (not res!190694) (not e!211248))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10815 0))(
  ( (V!10816 (val!3734 Int)) )
))
(declare-datatypes ((ValueCell!3346 0))(
  ( (ValueCellFull!3346 (v!5906 V!10815)) (EmptyCell!3346) )
))
(declare-datatypes ((array!18313 0))(
  ( (array!18314 (arr!8670 (Array (_ BitVec 32) ValueCell!3346)) (size!9022 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18313)

(declare-datatypes ((array!18315 0))(
  ( (array!18316 (arr!8671 (Array (_ BitVec 32) (_ BitVec 64))) (size!9023 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18315)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!344609 (= res!190694 (and (= (size!9022 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9023 _keys!1895) (size!9022 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!12507 () Bool)

(declare-fun mapRes!12507 () Bool)

(declare-fun tp!25826 () Bool)

(declare-fun e!211244 () Bool)

(assert (=> mapNonEmpty!12507 (= mapRes!12507 (and tp!25826 e!211244))))

(declare-fun mapRest!12507 () (Array (_ BitVec 32) ValueCell!3346))

(declare-fun mapValue!12507 () ValueCell!3346)

(declare-fun mapKey!12507 () (_ BitVec 32))

(assert (=> mapNonEmpty!12507 (= (arr!8670 _values!1525) (store mapRest!12507 mapKey!12507 mapValue!12507))))

(declare-fun res!190689 () Bool)

(assert (=> start!34512 (=> (not res!190689) (not e!211248))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34512 (= res!190689 (validMask!0 mask!2385))))

(assert (=> start!34512 e!211248))

(assert (=> start!34512 true))

(declare-fun tp_is_empty!7379 () Bool)

(assert (=> start!34512 tp_is_empty!7379))

(assert (=> start!34512 tp!25827))

(declare-fun e!211247 () Bool)

(declare-fun array_inv!6412 (array!18313) Bool)

(assert (=> start!34512 (and (array_inv!6412 _values!1525) e!211247)))

(declare-fun array_inv!6413 (array!18315) Bool)

(assert (=> start!34512 (array_inv!6413 _keys!1895)))

(declare-fun b!344610 () Bool)

(declare-fun res!190692 () Bool)

(assert (=> b!344610 (=> (not res!190692) (not e!211248))))

(declare-datatypes ((List!5038 0))(
  ( (Nil!5035) (Cons!5034 (h!5890 (_ BitVec 64)) (t!10162 List!5038)) )
))
(declare-fun arrayNoDuplicates!0 (array!18315 (_ BitVec 32) List!5038) Bool)

(assert (=> b!344610 (= res!190692 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5035))))

(declare-fun b!344611 () Bool)

(declare-fun res!190690 () Bool)

(assert (=> b!344611 (=> (not res!190690) (not e!211248))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!344611 (= res!190690 (validKeyInArray!0 k!1348))))

(declare-fun b!344612 () Bool)

(declare-fun res!190691 () Bool)

(assert (=> b!344612 (=> (not res!190691) (not e!211248))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18315 (_ BitVec 32)) Bool)

(assert (=> b!344612 (= res!190691 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!344613 () Bool)

(assert (=> b!344613 (= e!211248 false)))

(declare-datatypes ((SeekEntryResult!3340 0))(
  ( (MissingZero!3340 (index!15539 (_ BitVec 32))) (Found!3340 (index!15540 (_ BitVec 32))) (Intermediate!3340 (undefined!4152 Bool) (index!15541 (_ BitVec 32)) (x!34329 (_ BitVec 32))) (Undefined!3340) (MissingVacant!3340 (index!15542 (_ BitVec 32))) )
))
(declare-fun lt!162675 () SeekEntryResult!3340)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18315 (_ BitVec 32)) SeekEntryResult!3340)

(assert (=> b!344613 (= lt!162675 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!344614 () Bool)

(assert (=> b!344614 (= e!211244 tp_is_empty!7379)))

(declare-fun b!344615 () Bool)

(declare-fun res!190693 () Bool)

(assert (=> b!344615 (=> (not res!190693) (not e!211248))))

(declare-fun zeroValue!1467 () V!10815)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10815)

(declare-datatypes ((tuple2!5392 0))(
  ( (tuple2!5393 (_1!2706 (_ BitVec 64)) (_2!2706 V!10815)) )
))
(declare-datatypes ((List!5039 0))(
  ( (Nil!5036) (Cons!5035 (h!5891 tuple2!5392) (t!10163 List!5039)) )
))
(declare-datatypes ((ListLongMap!4319 0))(
  ( (ListLongMap!4320 (toList!2175 List!5039)) )
))
(declare-fun contains!2229 (ListLongMap!4319 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1695 (array!18315 array!18313 (_ BitVec 32) (_ BitVec 32) V!10815 V!10815 (_ BitVec 32) Int) ListLongMap!4319)

(assert (=> b!344615 (= res!190693 (not (contains!2229 (getCurrentListMap!1695 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!344616 () Bool)

(declare-fun e!211245 () Bool)

(assert (=> b!344616 (= e!211245 tp_is_empty!7379)))

(declare-fun mapIsEmpty!12507 () Bool)

(assert (=> mapIsEmpty!12507 mapRes!12507))

(declare-fun b!344617 () Bool)

(assert (=> b!344617 (= e!211247 (and e!211245 mapRes!12507))))

(declare-fun condMapEmpty!12507 () Bool)

(declare-fun mapDefault!12507 () ValueCell!3346)

