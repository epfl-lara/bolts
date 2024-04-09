; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34718 () Bool)

(assert start!34718)

(declare-fun b_free!7517 () Bool)

(declare-fun b_next!7517 () Bool)

(assert (=> start!34718 (= b_free!7517 (not b_next!7517))))

(declare-fun tp!26115 () Bool)

(declare-fun b_and!14755 () Bool)

(assert (=> start!34718 (= tp!26115 b_and!14755)))

(declare-fun b!346743 () Bool)

(declare-fun res!191929 () Bool)

(declare-fun e!212501 () Bool)

(assert (=> b!346743 (=> (not res!191929) (not e!212501))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-datatypes ((V!10935 0))(
  ( (V!10936 (val!3779 Int)) )
))
(declare-datatypes ((ValueCell!3391 0))(
  ( (ValueCellFull!3391 (v!5957 V!10935)) (EmptyCell!3391) )
))
(declare-datatypes ((array!18495 0))(
  ( (array!18496 (arr!8755 (Array (_ BitVec 32) ValueCell!3391)) (size!9107 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18495)

(declare-datatypes ((array!18497 0))(
  ( (array!18498 (arr!8756 (Array (_ BitVec 32) (_ BitVec 64))) (size!9108 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18497)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!346743 (= res!191929 (and (= (size!9107 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9108 _keys!1895) (size!9107 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!346744 () Bool)

(declare-fun res!191930 () Bool)

(assert (=> b!346744 (=> (not res!191930) (not e!212501))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun zeroValue!1467 () V!10935)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10935)

(declare-datatypes ((tuple2!5450 0))(
  ( (tuple2!5451 (_1!2735 (_ BitVec 64)) (_2!2735 V!10935)) )
))
(declare-datatypes ((List!5097 0))(
  ( (Nil!5094) (Cons!5093 (h!5949 tuple2!5450) (t!10233 List!5097)) )
))
(declare-datatypes ((ListLongMap!4377 0))(
  ( (ListLongMap!4378 (toList!2204 List!5097)) )
))
(declare-fun contains!2264 (ListLongMap!4377 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1724 (array!18497 array!18495 (_ BitVec 32) (_ BitVec 32) V!10935 V!10935 (_ BitVec 32) Int) ListLongMap!4377)

(assert (=> b!346744 (= res!191930 (not (contains!2264 (getCurrentListMap!1724 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!346745 () Bool)

(declare-fun res!191928 () Bool)

(declare-fun e!212504 () Bool)

(assert (=> b!346745 (=> (not res!191928) (not e!212504))))

(declare-datatypes ((SeekEntryResult!3370 0))(
  ( (MissingZero!3370 (index!15659 (_ BitVec 32))) (Found!3370 (index!15660 (_ BitVec 32))) (Intermediate!3370 (undefined!4182 Bool) (index!15661 (_ BitVec 32)) (x!34539 (_ BitVec 32))) (Undefined!3370) (MissingVacant!3370 (index!15662 (_ BitVec 32))) )
))
(declare-fun lt!163421 () SeekEntryResult!3370)

(declare-fun arrayContainsKey!0 (array!18497 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!346745 (= res!191928 (arrayContainsKey!0 _keys!1895 k!1348 (index!15660 lt!163421)))))

(declare-fun b!346746 () Bool)

(declare-fun e!212503 () Bool)

(declare-fun tp_is_empty!7469 () Bool)

(assert (=> b!346746 (= e!212503 tp_is_empty!7469)))

(declare-fun b!346747 () Bool)

(declare-fun res!191927 () Bool)

(assert (=> b!346747 (=> (not res!191927) (not e!212501))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!346747 (= res!191927 (validKeyInArray!0 k!1348))))

(declare-fun mapNonEmpty!12660 () Bool)

(declare-fun mapRes!12660 () Bool)

(declare-fun tp!26114 () Bool)

(assert (=> mapNonEmpty!12660 (= mapRes!12660 (and tp!26114 e!212503))))

(declare-fun mapValue!12660 () ValueCell!3391)

(declare-fun mapKey!12660 () (_ BitVec 32))

(declare-fun mapRest!12660 () (Array (_ BitVec 32) ValueCell!3391))

(assert (=> mapNonEmpty!12660 (= (arr!8755 _values!1525) (store mapRest!12660 mapKey!12660 mapValue!12660))))

(declare-fun b!346748 () Bool)

(declare-fun res!191926 () Bool)

(assert (=> b!346748 (=> (not res!191926) (not e!212501))))

(declare-datatypes ((List!5098 0))(
  ( (Nil!5095) (Cons!5094 (h!5950 (_ BitVec 64)) (t!10234 List!5098)) )
))
(declare-fun arrayNoDuplicates!0 (array!18497 (_ BitVec 32) List!5098) Bool)

(assert (=> b!346748 (= res!191926 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5095))))

(declare-fun b!346749 () Bool)

(declare-fun e!212502 () Bool)

(assert (=> b!346749 (= e!212502 tp_is_empty!7469)))

(declare-fun b!346750 () Bool)

(assert (=> b!346750 (= e!212504 (not true))))

(assert (=> b!346750 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!10760 0))(
  ( (Unit!10761) )
))
(declare-fun lt!163422 () Unit!10760)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!18497 (_ BitVec 64) (_ BitVec 32)) Unit!10760)

(assert (=> b!346750 (= lt!163422 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 k!1348 (index!15660 lt!163421)))))

(declare-fun b!346751 () Bool)

(declare-fun res!191932 () Bool)

(assert (=> b!346751 (=> (not res!191932) (not e!212501))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18497 (_ BitVec 32)) Bool)

(assert (=> b!346751 (= res!191932 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun res!191931 () Bool)

(assert (=> start!34718 (=> (not res!191931) (not e!212501))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34718 (= res!191931 (validMask!0 mask!2385))))

(assert (=> start!34718 e!212501))

(assert (=> start!34718 true))

(assert (=> start!34718 tp_is_empty!7469))

(assert (=> start!34718 tp!26115))

(declare-fun e!212505 () Bool)

(declare-fun array_inv!6470 (array!18495) Bool)

(assert (=> start!34718 (and (array_inv!6470 _values!1525) e!212505)))

(declare-fun array_inv!6471 (array!18497) Bool)

(assert (=> start!34718 (array_inv!6471 _keys!1895)))

(declare-fun mapIsEmpty!12660 () Bool)

(assert (=> mapIsEmpty!12660 mapRes!12660))

(declare-fun b!346752 () Bool)

(assert (=> b!346752 (= e!212505 (and e!212502 mapRes!12660))))

(declare-fun condMapEmpty!12660 () Bool)

(declare-fun mapDefault!12660 () ValueCell!3391)

