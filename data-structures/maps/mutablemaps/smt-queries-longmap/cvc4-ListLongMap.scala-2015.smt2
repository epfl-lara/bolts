; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!35126 () Bool)

(assert start!35126)

(declare-fun b_free!7763 () Bool)

(declare-fun b_next!7763 () Bool)

(assert (=> start!35126 (= b_free!7763 (not b_next!7763))))

(declare-fun tp!26874 () Bool)

(declare-fun b_and!15015 () Bool)

(assert (=> start!35126 (= tp!26874 b_and!15015)))

(declare-fun b!351961 () Bool)

(declare-fun res!195272 () Bool)

(declare-fun e!215534 () Bool)

(assert (=> b!351961 (=> (not res!195272) (not e!215534))))

(declare-datatypes ((array!18975 0))(
  ( (array!18976 (arr!8988 (Array (_ BitVec 32) (_ BitVec 64))) (size!9340 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18975)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18975 (_ BitVec 32)) Bool)

(assert (=> b!351961 (= res!195272 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!351962 () Bool)

(declare-fun e!215535 () Bool)

(assert (=> b!351962 (= e!215534 e!215535)))

(declare-fun res!195274 () Bool)

(assert (=> b!351962 (=> (not res!195274) (not e!215535))))

(declare-datatypes ((SeekEntryResult!3456 0))(
  ( (MissingZero!3456 (index!16003 (_ BitVec 32))) (Found!3456 (index!16004 (_ BitVec 32))) (Intermediate!3456 (undefined!4268 Bool) (index!16005 (_ BitVec 32)) (x!35023 (_ BitVec 32))) (Undefined!3456) (MissingVacant!3456 (index!16006 (_ BitVec 32))) )
))
(declare-fun lt!165036 () SeekEntryResult!3456)

(assert (=> b!351962 (= res!195274 (and (not (is-Found!3456 lt!165036)) (not (is-MissingZero!3456 lt!165036)) (is-MissingVacant!3456 lt!165036)))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18975 (_ BitVec 32)) SeekEntryResult!3456)

(assert (=> b!351962 (= lt!165036 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!351963 () Bool)

(declare-datatypes ((Unit!10889 0))(
  ( (Unit!10890) )
))
(declare-fun e!215541 () Unit!10889)

(declare-fun Unit!10891 () Unit!10889)

(assert (=> b!351963 (= e!215541 Unit!10891)))

(declare-datatypes ((V!11263 0))(
  ( (V!11264 (val!3902 Int)) )
))
(declare-fun zeroValue!1467 () V!11263)

(declare-fun lt!165039 () Unit!10889)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3514 0))(
  ( (ValueCellFull!3514 (v!6087 V!11263)) (EmptyCell!3514) )
))
(declare-datatypes ((array!18977 0))(
  ( (array!18978 (arr!8989 (Array (_ BitVec 32) ValueCell!3514)) (size!9341 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18977)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11263)

(declare-fun lemmaArrayContainsKeyThenInListMap!333 (array!18975 array!18977 (_ BitVec 32) (_ BitVec 32) V!11263 V!11263 (_ BitVec 64) (_ BitVec 32) Int) Unit!10889)

(declare-fun arrayScanForKey!0 (array!18975 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!351963 (= lt!165039 (lemmaArrayContainsKeyThenInListMap!333 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k!1348 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!351963 false))

(declare-fun b!351964 () Bool)

(declare-fun res!195267 () Bool)

(declare-fun e!215538 () Bool)

(assert (=> b!351964 (=> (not res!195267) (not e!215538))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!351964 (= res!195267 (inRange!0 (index!16006 lt!165036) mask!2385))))

(declare-fun b!351965 () Bool)

(assert (=> b!351965 (= e!215538 (or (bvslt (index!16006 lt!165036) #b00000000000000000000000000000000) (bvsge (index!16006 lt!165036) (size!9340 _keys!1895))))))

(declare-fun b!351966 () Bool)

(declare-fun res!195268 () Bool)

(assert (=> b!351966 (=> (not res!195268) (not e!215534))))

(declare-datatypes ((tuple2!5626 0))(
  ( (tuple2!5627 (_1!2823 (_ BitVec 64)) (_2!2823 V!11263)) )
))
(declare-datatypes ((List!5263 0))(
  ( (Nil!5260) (Cons!5259 (h!6115 tuple2!5626) (t!10413 List!5263)) )
))
(declare-datatypes ((ListLongMap!4553 0))(
  ( (ListLongMap!4554 (toList!2292 List!5263)) )
))
(declare-fun contains!2359 (ListLongMap!4553 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1809 (array!18975 array!18977 (_ BitVec 32) (_ BitVec 32) V!11263 V!11263 (_ BitVec 32) Int) ListLongMap!4553)

(assert (=> b!351966 (= res!195268 (not (contains!2359 (getCurrentListMap!1809 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!351967 () Bool)

(declare-fun res!195273 () Bool)

(assert (=> b!351967 (=> (not res!195273) (not e!215534))))

(assert (=> b!351967 (= res!195273 (and (= (size!9341 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9340 _keys!1895) (size!9341 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!351968 () Bool)

(declare-fun Unit!10892 () Unit!10889)

(assert (=> b!351968 (= e!215541 Unit!10892)))

(declare-fun mapIsEmpty!13050 () Bool)

(declare-fun mapRes!13050 () Bool)

(assert (=> mapIsEmpty!13050 mapRes!13050))

(declare-fun b!351969 () Bool)

(declare-fun res!195271 () Bool)

(assert (=> b!351969 (=> (not res!195271) (not e!215534))))

(declare-datatypes ((List!5264 0))(
  ( (Nil!5261) (Cons!5260 (h!6116 (_ BitVec 64)) (t!10414 List!5264)) )
))
(declare-fun arrayNoDuplicates!0 (array!18975 (_ BitVec 32) List!5264) Bool)

(assert (=> b!351969 (= res!195271 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5261))))

(declare-fun b!351970 () Bool)

(declare-fun e!215540 () Bool)

(declare-fun tp_is_empty!7715 () Bool)

(assert (=> b!351970 (= e!215540 tp_is_empty!7715)))

(declare-fun mapNonEmpty!13050 () Bool)

(declare-fun tp!26873 () Bool)

(assert (=> mapNonEmpty!13050 (= mapRes!13050 (and tp!26873 e!215540))))

(declare-fun mapKey!13050 () (_ BitVec 32))

(declare-fun mapValue!13050 () ValueCell!3514)

(declare-fun mapRest!13050 () (Array (_ BitVec 32) ValueCell!3514))

(assert (=> mapNonEmpty!13050 (= (arr!8989 _values!1525) (store mapRest!13050 mapKey!13050 mapValue!13050))))

(declare-fun res!195269 () Bool)

(assert (=> start!35126 (=> (not res!195269) (not e!215534))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35126 (= res!195269 (validMask!0 mask!2385))))

(assert (=> start!35126 e!215534))

(assert (=> start!35126 true))

(assert (=> start!35126 tp_is_empty!7715))

(assert (=> start!35126 tp!26874))

(declare-fun e!215536 () Bool)

(declare-fun array_inv!6624 (array!18977) Bool)

(assert (=> start!35126 (and (array_inv!6624 _values!1525) e!215536)))

(declare-fun array_inv!6625 (array!18975) Bool)

(assert (=> start!35126 (array_inv!6625 _keys!1895)))

(declare-fun b!351971 () Bool)

(assert (=> b!351971 (= e!215535 e!215538)))

(declare-fun res!195270 () Bool)

(assert (=> b!351971 (=> (not res!195270) (not e!215538))))

(declare-fun lt!165037 () Bool)

(assert (=> b!351971 (= res!195270 (not lt!165037))))

(declare-fun lt!165038 () Unit!10889)

(assert (=> b!351971 (= lt!165038 e!215541)))

(declare-fun c!53444 () Bool)

(assert (=> b!351971 (= c!53444 lt!165037)))

(declare-fun arrayContainsKey!0 (array!18975 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!351971 (= lt!165037 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!351972 () Bool)

(declare-fun e!215537 () Bool)

(assert (=> b!351972 (= e!215536 (and e!215537 mapRes!13050))))

(declare-fun condMapEmpty!13050 () Bool)

(declare-fun mapDefault!13050 () ValueCell!3514)

