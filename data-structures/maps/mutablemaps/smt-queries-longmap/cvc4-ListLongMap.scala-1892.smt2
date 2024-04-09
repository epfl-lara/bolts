; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33854 () Bool)

(assert start!33854)

(declare-fun b_free!7025 () Bool)

(declare-fun b_next!7025 () Bool)

(assert (=> start!33854 (= b_free!7025 (not b_next!7025))))

(declare-fun tp!24587 () Bool)

(declare-fun b_and!14229 () Bool)

(assert (=> start!33854 (= tp!24587 b_and!14229)))

(declare-fun b!336529 () Bool)

(declare-fun res!185840 () Bool)

(declare-fun e!206567 () Bool)

(assert (=> b!336529 (=> (not res!185840) (not e!206567))))

(declare-datatypes ((array!17533 0))(
  ( (array!17534 (arr!8291 (Array (_ BitVec 32) (_ BitVec 64))) (size!8643 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17533)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17533 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!336529 (= res!185840 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!11871 () Bool)

(declare-fun mapRes!11871 () Bool)

(declare-fun tp!24588 () Bool)

(declare-fun e!206566 () Bool)

(assert (=> mapNonEmpty!11871 (= mapRes!11871 (and tp!24588 e!206566))))

(declare-datatypes ((V!10279 0))(
  ( (V!10280 (val!3533 Int)) )
))
(declare-datatypes ((ValueCell!3145 0))(
  ( (ValueCellFull!3145 (v!5694 V!10279)) (EmptyCell!3145) )
))
(declare-fun mapRest!11871 () (Array (_ BitVec 32) ValueCell!3145))

(declare-fun mapKey!11871 () (_ BitVec 32))

(declare-fun mapValue!11871 () ValueCell!3145)

(declare-datatypes ((array!17535 0))(
  ( (array!17536 (arr!8292 (Array (_ BitVec 32) ValueCell!3145)) (size!8644 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17535)

(assert (=> mapNonEmpty!11871 (= (arr!8292 _values!1525) (store mapRest!11871 mapKey!11871 mapValue!11871))))

(declare-fun b!336530 () Bool)

(assert (=> b!336530 (= e!206567 false)))

(declare-fun lt!160265 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!17533 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!336530 (= lt!160265 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!11871 () Bool)

(assert (=> mapIsEmpty!11871 mapRes!11871))

(declare-fun b!336531 () Bool)

(declare-fun res!185839 () Bool)

(declare-fun e!206570 () Bool)

(assert (=> b!336531 (=> (not res!185839) (not e!206570))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!336531 (= res!185839 (validKeyInArray!0 k!1348))))

(declare-fun b!336532 () Bool)

(assert (=> b!336532 (= e!206570 e!206567)))

(declare-fun res!185842 () Bool)

(assert (=> b!336532 (=> (not res!185842) (not e!206567))))

(declare-datatypes ((SeekEntryResult!3214 0))(
  ( (MissingZero!3214 (index!15035 (_ BitVec 32))) (Found!3214 (index!15036 (_ BitVec 32))) (Intermediate!3214 (undefined!4026 Bool) (index!15037 (_ BitVec 32)) (x!33557 (_ BitVec 32))) (Undefined!3214) (MissingVacant!3214 (index!15038 (_ BitVec 32))) )
))
(declare-fun lt!160266 () SeekEntryResult!3214)

(assert (=> b!336532 (= res!185842 (and (not (is-Found!3214 lt!160266)) (is-MissingZero!3214 lt!160266)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17533 (_ BitVec 32)) SeekEntryResult!3214)

(assert (=> b!336532 (= lt!160266 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!336533 () Bool)

(declare-fun res!185838 () Bool)

(assert (=> b!336533 (=> (not res!185838) (not e!206570))))

(declare-fun zeroValue!1467 () V!10279)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10279)

(declare-datatypes ((tuple2!5136 0))(
  ( (tuple2!5137 (_1!2578 (_ BitVec 64)) (_2!2578 V!10279)) )
))
(declare-datatypes ((List!4773 0))(
  ( (Nil!4770) (Cons!4769 (h!5625 tuple2!5136) (t!9875 List!4773)) )
))
(declare-datatypes ((ListLongMap!4063 0))(
  ( (ListLongMap!4064 (toList!2047 List!4773)) )
))
(declare-fun contains!2090 (ListLongMap!4063 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1567 (array!17533 array!17535 (_ BitVec 32) (_ BitVec 32) V!10279 V!10279 (_ BitVec 32) Int) ListLongMap!4063)

(assert (=> b!336533 (= res!185838 (not (contains!2090 (getCurrentListMap!1567 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!336534 () Bool)

(declare-fun res!185841 () Bool)

(assert (=> b!336534 (=> (not res!185841) (not e!206570))))

(assert (=> b!336534 (= res!185841 (and (= (size!8644 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8643 _keys!1895) (size!8644 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!336535 () Bool)

(declare-fun res!185843 () Bool)

(assert (=> b!336535 (=> (not res!185843) (not e!206570))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17533 (_ BitVec 32)) Bool)

(assert (=> b!336535 (= res!185843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun res!185836 () Bool)

(assert (=> start!33854 (=> (not res!185836) (not e!206570))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33854 (= res!185836 (validMask!0 mask!2385))))

(assert (=> start!33854 e!206570))

(assert (=> start!33854 true))

(declare-fun tp_is_empty!6977 () Bool)

(assert (=> start!33854 tp_is_empty!6977))

(assert (=> start!33854 tp!24587))

(declare-fun e!206569 () Bool)

(declare-fun array_inv!6148 (array!17535) Bool)

(assert (=> start!33854 (and (array_inv!6148 _values!1525) e!206569)))

(declare-fun array_inv!6149 (array!17533) Bool)

(assert (=> start!33854 (array_inv!6149 _keys!1895)))

(declare-fun b!336536 () Bool)

(declare-fun e!206568 () Bool)

(assert (=> b!336536 (= e!206568 tp_is_empty!6977)))

(declare-fun b!336537 () Bool)

(declare-fun res!185837 () Bool)

(assert (=> b!336537 (=> (not res!185837) (not e!206570))))

(declare-datatypes ((List!4774 0))(
  ( (Nil!4771) (Cons!4770 (h!5626 (_ BitVec 64)) (t!9876 List!4774)) )
))
(declare-fun arrayNoDuplicates!0 (array!17533 (_ BitVec 32) List!4774) Bool)

(assert (=> b!336537 (= res!185837 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4771))))

(declare-fun b!336538 () Bool)

(assert (=> b!336538 (= e!206566 tp_is_empty!6977)))

(declare-fun b!336539 () Bool)

(assert (=> b!336539 (= e!206569 (and e!206568 mapRes!11871))))

(declare-fun condMapEmpty!11871 () Bool)

(declare-fun mapDefault!11871 () ValueCell!3145)

