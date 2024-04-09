; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34778 () Bool)

(assert start!34778)

(declare-fun b_free!7555 () Bool)

(declare-fun b_next!7555 () Bool)

(assert (=> start!34778 (= b_free!7555 (not b_next!7555))))

(declare-fun tp!26231 () Bool)

(declare-fun b_and!14795 () Bool)

(assert (=> start!34778 (= tp!26231 b_and!14795)))

(declare-fun b!347514 () Bool)

(declare-fun res!192451 () Bool)

(declare-fun e!212947 () Bool)

(assert (=> b!347514 (=> (not res!192451) (not e!212947))))

(declare-datatypes ((array!18571 0))(
  ( (array!18572 (arr!8792 (Array (_ BitVec 32) (_ BitVec 64))) (size!9144 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18571)

(declare-datatypes ((List!5128 0))(
  ( (Nil!5125) (Cons!5124 (h!5980 (_ BitVec 64)) (t!10266 List!5128)) )
))
(declare-fun arrayNoDuplicates!0 (array!18571 (_ BitVec 32) List!5128) Bool)

(assert (=> b!347514 (= res!192451 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5125))))

(declare-fun b!347515 () Bool)

(declare-fun e!212948 () Bool)

(declare-fun e!212945 () Bool)

(assert (=> b!347515 (= e!212948 e!212945)))

(declare-fun res!192449 () Bool)

(assert (=> b!347515 (=> (not res!192449) (not e!212945))))

(declare-datatypes ((SeekEntryResult!3388 0))(
  ( (MissingZero!3388 (index!15731 (_ BitVec 32))) (Found!3388 (index!15732 (_ BitVec 32))) (Intermediate!3388 (undefined!4200 Bool) (index!15733 (_ BitVec 32)) (x!34623 (_ BitVec 32))) (Undefined!3388) (MissingVacant!3388 (index!15734 (_ BitVec 32))) )
))
(declare-fun lt!163640 () SeekEntryResult!3388)

(declare-fun k!1348 () (_ BitVec 64))

(assert (=> b!347515 (= res!192449 (and (is-Found!3388 lt!163640) (= (select (arr!8792 _keys!1895) (index!15732 lt!163640)) k!1348)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18571 (_ BitVec 32)) SeekEntryResult!3388)

(assert (=> b!347515 (= lt!163640 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!347516 () Bool)

(declare-fun res!192447 () Bool)

(assert (=> b!347516 (=> (not res!192447) (not e!212947))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!347516 (= res!192447 (validKeyInArray!0 k!1348))))

(declare-fun b!347517 () Bool)

(declare-fun res!192448 () Bool)

(assert (=> b!347517 (=> (not res!192448) (not e!212947))))

(declare-datatypes ((V!10987 0))(
  ( (V!10988 (val!3798 Int)) )
))
(declare-datatypes ((ValueCell!3410 0))(
  ( (ValueCellFull!3410 (v!5977 V!10987)) (EmptyCell!3410) )
))
(declare-datatypes ((array!18573 0))(
  ( (array!18574 (arr!8793 (Array (_ BitVec 32) ValueCell!3410)) (size!9145 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18573)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!347517 (= res!192448 (and (= (size!9145 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9144 _keys!1895) (size!9145 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!347518 () Bool)

(declare-fun e!212944 () Bool)

(declare-fun tp_is_empty!7507 () Bool)

(assert (=> b!347518 (= e!212944 tp_is_empty!7507)))

(declare-fun mapNonEmpty!12720 () Bool)

(declare-fun mapRes!12720 () Bool)

(declare-fun tp!26232 () Bool)

(assert (=> mapNonEmpty!12720 (= mapRes!12720 (and tp!26232 e!212944))))

(declare-fun mapKey!12720 () (_ BitVec 32))

(declare-fun mapValue!12720 () ValueCell!3410)

(declare-fun mapRest!12720 () (Array (_ BitVec 32) ValueCell!3410))

(assert (=> mapNonEmpty!12720 (= (arr!8793 _values!1525) (store mapRest!12720 mapKey!12720 mapValue!12720))))

(declare-fun b!347519 () Bool)

(declare-fun e!212942 () Bool)

(assert (=> b!347519 (= e!212942 tp_is_empty!7507)))

(declare-fun b!347520 () Bool)

(assert (=> b!347520 (= e!212945 (not false))))

(declare-datatypes ((tuple2!5484 0))(
  ( (tuple2!5485 (_1!2752 (_ BitVec 64)) (_2!2752 V!10987)) )
))
(declare-datatypes ((List!5129 0))(
  ( (Nil!5126) (Cons!5125 (h!5981 tuple2!5484) (t!10267 List!5129)) )
))
(declare-datatypes ((ListLongMap!4411 0))(
  ( (ListLongMap!4412 (toList!2221 List!5129)) )
))
(declare-fun lt!163641 () ListLongMap!4411)

(declare-fun contains!2282 (ListLongMap!4411 (_ BitVec 64)) Bool)

(assert (=> b!347520 (contains!2282 lt!163641 (select (arr!8792 _keys!1895) (index!15732 lt!163640)))))

(declare-fun zeroValue!1467 () V!10987)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10987)

(declare-datatypes ((Unit!10790 0))(
  ( (Unit!10791) )
))
(declare-fun lt!163639 () Unit!10790)

(declare-fun lemmaValidKeyInArrayIsInListMap!167 (array!18571 array!18573 (_ BitVec 32) (_ BitVec 32) V!10987 V!10987 (_ BitVec 32) Int) Unit!10790)

(assert (=> b!347520 (= lt!163639 (lemmaValidKeyInArrayIsInListMap!167 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 (index!15732 lt!163640) defaultEntry!1528))))

(declare-fun arrayContainsKey!0 (array!18571 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!347520 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000)))

(declare-fun lt!163638 () Unit!10790)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18571 (_ BitVec 64) (_ BitVec 32)) Unit!10790)

(assert (=> b!347520 (= lt!163638 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k!1348 (index!15732 lt!163640)))))

(declare-fun b!347521 () Bool)

(declare-fun res!192445 () Bool)

(assert (=> b!347521 (=> (not res!192445) (not e!212947))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18571 (_ BitVec 32)) Bool)

(assert (=> b!347521 (= res!192445 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12720 () Bool)

(assert (=> mapIsEmpty!12720 mapRes!12720))

(declare-fun b!347523 () Bool)

(declare-fun e!212946 () Bool)

(assert (=> b!347523 (= e!212946 (and e!212942 mapRes!12720))))

(declare-fun condMapEmpty!12720 () Bool)

(declare-fun mapDefault!12720 () ValueCell!3410)

