; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34000 () Bool)

(assert start!34000)

(declare-fun b_free!7123 () Bool)

(declare-fun b_next!7123 () Bool)

(assert (=> start!34000 (= b_free!7123 (not b_next!7123))))

(declare-fun tp!24887 () Bool)

(declare-fun b_and!14331 () Bool)

(assert (=> start!34000 (= tp!24887 b_and!14331)))

(declare-fun b!338489 () Bool)

(declare-fun e!207694 () Bool)

(declare-fun tp_is_empty!7075 () Bool)

(assert (=> b!338489 (= e!207694 tp_is_empty!7075)))

(declare-fun mapIsEmpty!12024 () Bool)

(declare-fun mapRes!12024 () Bool)

(assert (=> mapIsEmpty!12024 mapRes!12024))

(declare-fun b!338490 () Bool)

(declare-datatypes ((Unit!10519 0))(
  ( (Unit!10520) )
))
(declare-fun e!207693 () Unit!10519)

(declare-fun Unit!10521 () Unit!10519)

(assert (=> b!338490 (= e!207693 Unit!10521)))

(declare-fun b!338491 () Bool)

(declare-fun res!187055 () Bool)

(declare-fun e!207698 () Bool)

(assert (=> b!338491 (=> (not res!187055) (not e!207698))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10411 0))(
  ( (V!10412 (val!3582 Int)) )
))
(declare-datatypes ((ValueCell!3194 0))(
  ( (ValueCellFull!3194 (v!5745 V!10411)) (EmptyCell!3194) )
))
(declare-datatypes ((array!17717 0))(
  ( (array!17718 (arr!8381 (Array (_ BitVec 32) ValueCell!3194)) (size!8733 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17717)

(declare-datatypes ((array!17719 0))(
  ( (array!17720 (arr!8382 (Array (_ BitVec 32) (_ BitVec 64))) (size!8734 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17719)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!338491 (= res!187055 (and (= (size!8733 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8734 _keys!1895) (size!8733 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!12024 () Bool)

(declare-fun tp!24888 () Bool)

(assert (=> mapNonEmpty!12024 (= mapRes!12024 (and tp!24888 e!207694))))

(declare-fun mapKey!12024 () (_ BitVec 32))

(declare-fun mapValue!12024 () ValueCell!3194)

(declare-fun mapRest!12024 () (Array (_ BitVec 32) ValueCell!3194))

(assert (=> mapNonEmpty!12024 (= (arr!8381 _values!1525) (store mapRest!12024 mapKey!12024 mapValue!12024))))

(declare-fun b!338492 () Bool)

(declare-fun res!187051 () Bool)

(assert (=> b!338492 (=> (not res!187051) (not e!207698))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!10411)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10411)

(declare-datatypes ((tuple2!5190 0))(
  ( (tuple2!5191 (_1!2605 (_ BitVec 64)) (_2!2605 V!10411)) )
))
(declare-datatypes ((List!4831 0))(
  ( (Nil!4828) (Cons!4827 (h!5683 tuple2!5190) (t!9937 List!4831)) )
))
(declare-datatypes ((ListLongMap!4117 0))(
  ( (ListLongMap!4118 (toList!2074 List!4831)) )
))
(declare-fun contains!2119 (ListLongMap!4117 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1594 (array!17719 array!17717 (_ BitVec 32) (_ BitVec 32) V!10411 V!10411 (_ BitVec 32) Int) ListLongMap!4117)

(assert (=> b!338492 (= res!187051 (not (contains!2119 (getCurrentListMap!1594 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!338493 () Bool)

(declare-fun res!187049 () Bool)

(assert (=> b!338493 (=> (not res!187049) (not e!207698))))

(declare-datatypes ((List!4832 0))(
  ( (Nil!4829) (Cons!4828 (h!5684 (_ BitVec 64)) (t!9938 List!4832)) )
))
(declare-fun arrayNoDuplicates!0 (array!17719 (_ BitVec 32) List!4832) Bool)

(assert (=> b!338493 (= res!187049 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4829))))

(declare-fun b!338494 () Bool)

(declare-fun res!187050 () Bool)

(assert (=> b!338494 (=> (not res!187050) (not e!207698))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!338494 (= res!187050 (validKeyInArray!0 k!1348))))

(declare-fun res!187054 () Bool)

(assert (=> start!34000 (=> (not res!187054) (not e!207698))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34000 (= res!187054 (validMask!0 mask!2385))))

(assert (=> start!34000 e!207698))

(assert (=> start!34000 true))

(assert (=> start!34000 tp_is_empty!7075))

(assert (=> start!34000 tp!24887))

(declare-fun e!207695 () Bool)

(declare-fun array_inv!6206 (array!17717) Bool)

(assert (=> start!34000 (and (array_inv!6206 _values!1525) e!207695)))

(declare-fun array_inv!6207 (array!17719) Bool)

(assert (=> start!34000 (array_inv!6207 _keys!1895)))

(declare-fun b!338495 () Bool)

(declare-fun e!207699 () Bool)

(assert (=> b!338495 (= e!207698 e!207699)))

(declare-fun res!187053 () Bool)

(assert (=> b!338495 (=> (not res!187053) (not e!207699))))

(declare-datatypes ((SeekEntryResult!3242 0))(
  ( (MissingZero!3242 (index!15147 (_ BitVec 32))) (Found!3242 (index!15148 (_ BitVec 32))) (Intermediate!3242 (undefined!4054 Bool) (index!15149 (_ BitVec 32)) (x!33741 (_ BitVec 32))) (Undefined!3242) (MissingVacant!3242 (index!15150 (_ BitVec 32))) )
))
(declare-fun lt!160837 () SeekEntryResult!3242)

(assert (=> b!338495 (= res!187053 (and (not (is-Found!3242 lt!160837)) (is-MissingZero!3242 lt!160837)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17719 (_ BitVec 32)) SeekEntryResult!3242)

(assert (=> b!338495 (= lt!160837 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!338496 () Bool)

(declare-fun e!207696 () Bool)

(assert (=> b!338496 (= e!207696 tp_is_empty!7075)))

(declare-fun b!338497 () Bool)

(assert (=> b!338497 (= e!207695 (and e!207696 mapRes!12024))))

(declare-fun condMapEmpty!12024 () Bool)

(declare-fun mapDefault!12024 () ValueCell!3194)

