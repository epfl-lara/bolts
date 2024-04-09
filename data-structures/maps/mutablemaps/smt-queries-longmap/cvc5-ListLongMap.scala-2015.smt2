; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35122 () Bool)

(assert start!35122)

(declare-fun b_free!7759 () Bool)

(declare-fun b_next!7759 () Bool)

(assert (=> start!35122 (= b_free!7759 (not b_next!7759))))

(declare-fun tp!26861 () Bool)

(declare-fun b_and!15011 () Bool)

(assert (=> start!35122 (= tp!26861 b_and!15011)))

(declare-fun b!351877 () Bool)

(declare-fun e!215489 () Bool)

(declare-fun e!215491 () Bool)

(assert (=> b!351877 (= e!215489 e!215491)))

(declare-fun res!195214 () Bool)

(assert (=> b!351877 (=> (not res!195214) (not e!215491))))

(declare-fun lt!165015 () Bool)

(assert (=> b!351877 (= res!195214 (not lt!165015))))

(declare-datatypes ((Unit!10881 0))(
  ( (Unit!10882) )
))
(declare-fun lt!165013 () Unit!10881)

(declare-fun e!215488 () Unit!10881)

(assert (=> b!351877 (= lt!165013 e!215488)))

(declare-fun c!53438 () Bool)

(assert (=> b!351877 (= c!53438 lt!165015)))

(declare-datatypes ((array!18967 0))(
  ( (array!18968 (arr!8984 (Array (_ BitVec 32) (_ BitVec 64))) (size!9336 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18967)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!18967 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!351877 (= lt!165015 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!351878 () Bool)

(declare-fun e!215486 () Bool)

(declare-fun tp_is_empty!7711 () Bool)

(assert (=> b!351878 (= e!215486 tp_is_empty!7711)))

(declare-fun b!351880 () Bool)

(declare-fun res!195219 () Bool)

(declare-fun e!215493 () Bool)

(assert (=> b!351880 (=> (not res!195219) (not e!215493))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!11259 0))(
  ( (V!11260 (val!3900 Int)) )
))
(declare-datatypes ((ValueCell!3512 0))(
  ( (ValueCellFull!3512 (v!6085 V!11259)) (EmptyCell!3512) )
))
(declare-datatypes ((array!18969 0))(
  ( (array!18970 (arr!8985 (Array (_ BitVec 32) ValueCell!3512)) (size!9337 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18969)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!351880 (= res!195219 (and (= (size!9337 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9336 _keys!1895) (size!9337 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!351881 () Bool)

(declare-fun res!195213 () Bool)

(assert (=> b!351881 (=> (not res!195213) (not e!215493))))

(declare-fun zeroValue!1467 () V!11259)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!11259)

(declare-datatypes ((tuple2!5622 0))(
  ( (tuple2!5623 (_1!2821 (_ BitVec 64)) (_2!2821 V!11259)) )
))
(declare-datatypes ((List!5259 0))(
  ( (Nil!5256) (Cons!5255 (h!6111 tuple2!5622) (t!10409 List!5259)) )
))
(declare-datatypes ((ListLongMap!4549 0))(
  ( (ListLongMap!4550 (toList!2290 List!5259)) )
))
(declare-fun contains!2357 (ListLongMap!4549 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1807 (array!18967 array!18969 (_ BitVec 32) (_ BitVec 32) V!11259 V!11259 (_ BitVec 32) Int) ListLongMap!4549)

(assert (=> b!351881 (= res!195213 (not (contains!2357 (getCurrentListMap!1807 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun mapIsEmpty!13044 () Bool)

(declare-fun mapRes!13044 () Bool)

(assert (=> mapIsEmpty!13044 mapRes!13044))

(declare-fun b!351882 () Bool)

(declare-fun Unit!10883 () Unit!10881)

(assert (=> b!351882 (= e!215488 Unit!10883)))

(declare-fun b!351883 () Bool)

(declare-fun e!215487 () Bool)

(assert (=> b!351883 (= e!215487 tp_is_empty!7711)))

(declare-fun b!351884 () Bool)

(assert (=> b!351884 (= e!215493 e!215489)))

(declare-fun res!195218 () Bool)

(assert (=> b!351884 (=> (not res!195218) (not e!215489))))

(declare-datatypes ((SeekEntryResult!3454 0))(
  ( (MissingZero!3454 (index!15995 (_ BitVec 32))) (Found!3454 (index!15996 (_ BitVec 32))) (Intermediate!3454 (undefined!4266 Bool) (index!15997 (_ BitVec 32)) (x!35021 (_ BitVec 32))) (Undefined!3454) (MissingVacant!3454 (index!15998 (_ BitVec 32))) )
))
(declare-fun lt!165012 () SeekEntryResult!3454)

(assert (=> b!351884 (= res!195218 (and (not (is-Found!3454 lt!165012)) (not (is-MissingZero!3454 lt!165012)) (is-MissingVacant!3454 lt!165012)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18967 (_ BitVec 32)) SeekEntryResult!3454)

(assert (=> b!351884 (= lt!165012 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!351885 () Bool)

(declare-fun res!195220 () Bool)

(assert (=> b!351885 (=> (not res!195220) (not e!215493))))

(declare-datatypes ((List!5260 0))(
  ( (Nil!5257) (Cons!5256 (h!6112 (_ BitVec 64)) (t!10410 List!5260)) )
))
(declare-fun arrayNoDuplicates!0 (array!18967 (_ BitVec 32) List!5260) Bool)

(assert (=> b!351885 (= res!195220 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5257))))

(declare-fun b!351886 () Bool)

(declare-fun res!195215 () Bool)

(assert (=> b!351886 (=> (not res!195215) (not e!215493))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!351886 (= res!195215 (validKeyInArray!0 k!1348))))

(declare-fun b!351887 () Bool)

(declare-fun Unit!10884 () Unit!10881)

(assert (=> b!351887 (= e!215488 Unit!10884)))

(declare-fun lt!165014 () Unit!10881)

(declare-fun lemmaArrayContainsKeyThenInListMap!331 (array!18967 array!18969 (_ BitVec 32) (_ BitVec 32) V!11259 V!11259 (_ BitVec 64) (_ BitVec 32) Int) Unit!10881)

(declare-fun arrayScanForKey!0 (array!18967 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!351887 (= lt!165014 (lemmaArrayContainsKeyThenInListMap!331 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!351887 false))

(declare-fun b!351888 () Bool)

(declare-fun e!215490 () Bool)

(assert (=> b!351888 (= e!215490 (and e!215487 mapRes!13044))))

(declare-fun condMapEmpty!13044 () Bool)

(declare-fun mapDefault!13044 () ValueCell!3512)

