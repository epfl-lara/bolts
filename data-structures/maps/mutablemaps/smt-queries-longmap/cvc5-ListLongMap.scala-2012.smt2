; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35104 () Bool)

(assert start!35104)

(declare-fun b_free!7741 () Bool)

(declare-fun b_next!7741 () Bool)

(assert (=> start!35104 (= b_free!7741 (not b_next!7741))))

(declare-fun tp!26808 () Bool)

(declare-fun b_and!14993 () Bool)

(assert (=> start!35104 (= tp!26808 b_and!14993)))

(declare-fun b!351556 () Bool)

(declare-fun e!215303 () Bool)

(declare-fun tp_is_empty!7693 () Bool)

(assert (=> b!351556 (= e!215303 tp_is_empty!7693)))

(declare-fun mapNonEmpty!13017 () Bool)

(declare-fun mapRes!13017 () Bool)

(declare-fun tp!26807 () Bool)

(declare-fun e!215304 () Bool)

(assert (=> mapNonEmpty!13017 (= mapRes!13017 (and tp!26807 e!215304))))

(declare-fun mapKey!13017 () (_ BitVec 32))

(declare-datatypes ((V!11235 0))(
  ( (V!11236 (val!3891 Int)) )
))
(declare-datatypes ((ValueCell!3503 0))(
  ( (ValueCellFull!3503 (v!6076 V!11235)) (EmptyCell!3503) )
))
(declare-fun mapValue!13017 () ValueCell!3503)

(declare-datatypes ((array!18931 0))(
  ( (array!18932 (arr!8966 (Array (_ BitVec 32) ValueCell!3503)) (size!9318 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18931)

(declare-fun mapRest!13017 () (Array (_ BitVec 32) ValueCell!3503))

(assert (=> mapNonEmpty!13017 (= (arr!8966 _values!1525) (store mapRest!13017 mapKey!13017 mapValue!13017))))

(declare-fun b!351557 () Bool)

(declare-fun res!195016 () Bool)

(declare-fun e!215305 () Bool)

(assert (=> b!351557 (=> (not res!195016) (not e!215305))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!351557 (= res!195016 (validKeyInArray!0 k!1348))))

(declare-fun b!351558 () Bool)

(declare-fun res!195013 () Bool)

(declare-fun e!215302 () Bool)

(assert (=> b!351558 (=> (not res!195013) (not e!215302))))

(declare-datatypes ((array!18933 0))(
  ( (array!18934 (arr!8967 (Array (_ BitVec 32) (_ BitVec 64))) (size!9319 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18933)

(declare-fun arrayContainsKey!0 (array!18933 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!351558 (= res!195013 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!351559 () Bool)

(assert (=> b!351559 (= e!215304 tp_is_empty!7693)))

(declare-fun b!351560 () Bool)

(declare-fun res!195020 () Bool)

(assert (=> b!351560 (=> (not res!195020) (not e!215305))))

(declare-datatypes ((List!5243 0))(
  ( (Nil!5240) (Cons!5239 (h!6095 (_ BitVec 64)) (t!10393 List!5243)) )
))
(declare-fun arrayNoDuplicates!0 (array!18933 (_ BitVec 32) List!5243) Bool)

(assert (=> b!351560 (= res!195020 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5240))))

(declare-fun b!351561 () Bool)

(declare-fun res!195017 () Bool)

(assert (=> b!351561 (=> (not res!195017) (not e!215305))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18933 (_ BitVec 32)) Bool)

(assert (=> b!351561 (= res!195017 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!351562 () Bool)

(declare-fun res!195018 () Bool)

(assert (=> b!351562 (=> (not res!195018) (not e!215305))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!351562 (= res!195018 (and (= (size!9318 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9319 _keys!1895) (size!9318 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun res!195019 () Bool)

(assert (=> start!35104 (=> (not res!195019) (not e!215305))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35104 (= res!195019 (validMask!0 mask!2385))))

(assert (=> start!35104 e!215305))

(assert (=> start!35104 true))

(assert (=> start!35104 tp_is_empty!7693))

(assert (=> start!35104 tp!26808))

(declare-fun e!215306 () Bool)

(declare-fun array_inv!6608 (array!18931) Bool)

(assert (=> start!35104 (and (array_inv!6608 _values!1525) e!215306)))

(declare-fun array_inv!6609 (array!18933) Bool)

(assert (=> start!35104 (array_inv!6609 _keys!1895)))

(declare-fun b!351563 () Bool)

(assert (=> b!351563 (= e!215305 e!215302)))

(declare-fun res!195014 () Bool)

(assert (=> b!351563 (=> (not res!195014) (not e!215302))))

(declare-datatypes ((SeekEntryResult!3447 0))(
  ( (MissingZero!3447 (index!15967 (_ BitVec 32))) (Found!3447 (index!15968 (_ BitVec 32))) (Intermediate!3447 (undefined!4259 Bool) (index!15969 (_ BitVec 32)) (x!34990 (_ BitVec 32))) (Undefined!3447) (MissingVacant!3447 (index!15970 (_ BitVec 32))) )
))
(declare-fun lt!164928 () SeekEntryResult!3447)

(assert (=> b!351563 (= res!195014 (and (not (is-Found!3447 lt!164928)) (not (is-MissingZero!3447 lt!164928)) (is-MissingVacant!3447 lt!164928)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18933 (_ BitVec 32)) SeekEntryResult!3447)

(assert (=> b!351563 (= lt!164928 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!13017 () Bool)

(assert (=> mapIsEmpty!13017 mapRes!13017))

(declare-fun b!351564 () Bool)

(declare-fun res!195015 () Bool)

(assert (=> b!351564 (=> (not res!195015) (not e!215305))))

(declare-fun zeroValue!1467 () V!11235)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!11235)

(declare-datatypes ((tuple2!5606 0))(
  ( (tuple2!5607 (_1!2813 (_ BitVec 64)) (_2!2813 V!11235)) )
))
(declare-datatypes ((List!5244 0))(
  ( (Nil!5241) (Cons!5240 (h!6096 tuple2!5606) (t!10394 List!5244)) )
))
(declare-datatypes ((ListLongMap!4533 0))(
  ( (ListLongMap!4534 (toList!2282 List!5244)) )
))
(declare-fun contains!2349 (ListLongMap!4533 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1799 (array!18933 array!18931 (_ BitVec 32) (_ BitVec 32) V!11235 V!11235 (_ BitVec 32) Int) ListLongMap!4533)

(assert (=> b!351564 (= res!195015 (not (contains!2349 (getCurrentListMap!1799 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!351565 () Bool)

(assert (=> b!351565 (= e!215306 (and e!215303 mapRes!13017))))

(declare-fun condMapEmpty!13017 () Bool)

(declare-fun mapDefault!13017 () ValueCell!3503)

