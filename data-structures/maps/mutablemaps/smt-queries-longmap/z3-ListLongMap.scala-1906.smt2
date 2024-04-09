; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33984 () Bool)

(assert start!33984)

(declare-fun b_free!7107 () Bool)

(declare-fun b_next!7107 () Bool)

(assert (=> start!33984 (= b_free!7107 (not b_next!7107))))

(declare-fun tp!24840 () Bool)

(declare-fun b_and!14315 () Bool)

(assert (=> start!33984 (= tp!24840 b_and!14315)))

(declare-fun b!338201 () Bool)

(declare-fun res!186881 () Bool)

(declare-fun e!207529 () Bool)

(assert (=> b!338201 (=> (not res!186881) (not e!207529))))

(declare-datatypes ((array!17685 0))(
  ( (array!17686 (arr!8365 (Array (_ BitVec 32) (_ BitVec 64))) (size!8717 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17685)

(declare-datatypes ((List!4819 0))(
  ( (Nil!4816) (Cons!4815 (h!5671 (_ BitVec 64)) (t!9925 List!4819)) )
))
(declare-fun arrayNoDuplicates!0 (array!17685 (_ BitVec 32) List!4819) Bool)

(assert (=> b!338201 (= res!186881 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4816))))

(declare-fun b!338202 () Bool)

(declare-datatypes ((Unit!10488 0))(
  ( (Unit!10489) )
))
(declare-fun e!207525 () Unit!10488)

(declare-fun Unit!10490 () Unit!10488)

(assert (=> b!338202 (= e!207525 Unit!10490)))

(declare-fun b!338203 () Bool)

(declare-fun e!207526 () Bool)

(assert (=> b!338203 (= e!207526 false)))

(declare-fun lt!160758 () Unit!10488)

(assert (=> b!338203 (= lt!160758 e!207525)))

(declare-fun c!52343 () Bool)

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!17685 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!338203 (= c!52343 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!338204 () Bool)

(declare-fun res!186886 () Bool)

(assert (=> b!338204 (=> (not res!186886) (not e!207529))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17685 (_ BitVec 32)) Bool)

(assert (=> b!338204 (= res!186886 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun mapNonEmpty!12000 () Bool)

(declare-fun mapRes!12000 () Bool)

(declare-fun tp!24839 () Bool)

(declare-fun e!207527 () Bool)

(assert (=> mapNonEmpty!12000 (= mapRes!12000 (and tp!24839 e!207527))))

(declare-fun mapKey!12000 () (_ BitVec 32))

(declare-datatypes ((V!10389 0))(
  ( (V!10390 (val!3574 Int)) )
))
(declare-datatypes ((ValueCell!3186 0))(
  ( (ValueCellFull!3186 (v!5737 V!10389)) (EmptyCell!3186) )
))
(declare-fun mapValue!12000 () ValueCell!3186)

(declare-fun mapRest!12000 () (Array (_ BitVec 32) ValueCell!3186))

(declare-datatypes ((array!17687 0))(
  ( (array!17688 (arr!8366 (Array (_ BitVec 32) ValueCell!3186)) (size!8718 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17687)

(assert (=> mapNonEmpty!12000 (= (arr!8366 _values!1525) (store mapRest!12000 mapKey!12000 mapValue!12000))))

(declare-fun b!338205 () Bool)

(declare-fun res!186884 () Bool)

(assert (=> b!338205 (=> (not res!186884) (not e!207529))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!338205 (= res!186884 (validKeyInArray!0 k0!1348))))

(declare-fun b!338206 () Bool)

(declare-fun res!186885 () Bool)

(assert (=> b!338206 (=> (not res!186885) (not e!207529))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!338206 (= res!186885 (and (= (size!8718 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8717 _keys!1895) (size!8718 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!338207 () Bool)

(declare-fun tp_is_empty!7059 () Bool)

(assert (=> b!338207 (= e!207527 tp_is_empty!7059)))

(declare-fun mapIsEmpty!12000 () Bool)

(assert (=> mapIsEmpty!12000 mapRes!12000))

(declare-fun b!338208 () Bool)

(declare-fun res!186883 () Bool)

(assert (=> b!338208 (=> (not res!186883) (not e!207529))))

(declare-fun zeroValue!1467 () V!10389)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10389)

(declare-datatypes ((tuple2!5180 0))(
  ( (tuple2!5181 (_1!2600 (_ BitVec 64)) (_2!2600 V!10389)) )
))
(declare-datatypes ((List!4820 0))(
  ( (Nil!4817) (Cons!4816 (h!5672 tuple2!5180) (t!9926 List!4820)) )
))
(declare-datatypes ((ListLongMap!4107 0))(
  ( (ListLongMap!4108 (toList!2069 List!4820)) )
))
(declare-fun contains!2114 (ListLongMap!4107 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1589 (array!17685 array!17687 (_ BitVec 32) (_ BitVec 32) V!10389 V!10389 (_ BitVec 32) Int) ListLongMap!4107)

(assert (=> b!338208 (= res!186883 (not (contains!2114 (getCurrentListMap!1589 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!338209 () Bool)

(declare-fun e!207531 () Bool)

(declare-fun e!207530 () Bool)

(assert (=> b!338209 (= e!207531 (and e!207530 mapRes!12000))))

(declare-fun condMapEmpty!12000 () Bool)

(declare-fun mapDefault!12000 () ValueCell!3186)

(assert (=> b!338209 (= condMapEmpty!12000 (= (arr!8366 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3186)) mapDefault!12000)))))

(declare-fun res!186887 () Bool)

(assert (=> start!33984 (=> (not res!186887) (not e!207529))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33984 (= res!186887 (validMask!0 mask!2385))))

(assert (=> start!33984 e!207529))

(assert (=> start!33984 true))

(assert (=> start!33984 tp_is_empty!7059))

(assert (=> start!33984 tp!24840))

(declare-fun array_inv!6192 (array!17687) Bool)

(assert (=> start!33984 (and (array_inv!6192 _values!1525) e!207531)))

(declare-fun array_inv!6193 (array!17685) Bool)

(assert (=> start!33984 (array_inv!6193 _keys!1895)))

(declare-fun b!338210 () Bool)

(assert (=> b!338210 (= e!207530 tp_is_empty!7059)))

(declare-fun b!338211 () Bool)

(assert (=> b!338211 (= e!207529 e!207526)))

(declare-fun res!186882 () Bool)

(assert (=> b!338211 (=> (not res!186882) (not e!207526))))

(declare-datatypes ((SeekEntryResult!3234 0))(
  ( (MissingZero!3234 (index!15115 (_ BitVec 32))) (Found!3234 (index!15116 (_ BitVec 32))) (Intermediate!3234 (undefined!4046 Bool) (index!15117 (_ BitVec 32)) (x!33709 (_ BitVec 32))) (Undefined!3234) (MissingVacant!3234 (index!15118 (_ BitVec 32))) )
))
(declare-fun lt!160757 () SeekEntryResult!3234)

(get-info :version)

(assert (=> b!338211 (= res!186882 (and (not ((_ is Found!3234) lt!160757)) ((_ is MissingZero!3234) lt!160757)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17685 (_ BitVec 32)) SeekEntryResult!3234)

(assert (=> b!338211 (= lt!160757 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!338212 () Bool)

(declare-fun Unit!10491 () Unit!10488)

(assert (=> b!338212 (= e!207525 Unit!10491)))

(declare-fun lt!160756 () Unit!10488)

(declare-fun lemmaArrayContainsKeyThenInListMap!267 (array!17685 array!17687 (_ BitVec 32) (_ BitVec 32) V!10389 V!10389 (_ BitVec 64) (_ BitVec 32) Int) Unit!10488)

(declare-fun arrayScanForKey!0 (array!17685 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!338212 (= lt!160756 (lemmaArrayContainsKeyThenInListMap!267 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 k0!1348 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000) defaultEntry!1528))))

(assert (=> b!338212 false))

(assert (= (and start!33984 res!186887) b!338206))

(assert (= (and b!338206 res!186885) b!338204))

(assert (= (and b!338204 res!186886) b!338201))

(assert (= (and b!338201 res!186881) b!338205))

(assert (= (and b!338205 res!186884) b!338208))

(assert (= (and b!338208 res!186883) b!338211))

(assert (= (and b!338211 res!186882) b!338203))

(assert (= (and b!338203 c!52343) b!338212))

(assert (= (and b!338203 (not c!52343)) b!338202))

(assert (= (and b!338209 condMapEmpty!12000) mapIsEmpty!12000))

(assert (= (and b!338209 (not condMapEmpty!12000)) mapNonEmpty!12000))

(assert (= (and mapNonEmpty!12000 ((_ is ValueCellFull!3186) mapValue!12000)) b!338207))

(assert (= (and b!338209 ((_ is ValueCellFull!3186) mapDefault!12000)) b!338210))

(assert (= start!33984 b!338209))

(declare-fun m!341505 () Bool)

(assert (=> start!33984 m!341505))

(declare-fun m!341507 () Bool)

(assert (=> start!33984 m!341507))

(declare-fun m!341509 () Bool)

(assert (=> start!33984 m!341509))

(declare-fun m!341511 () Bool)

(assert (=> b!338212 m!341511))

(assert (=> b!338212 m!341511))

(declare-fun m!341513 () Bool)

(assert (=> b!338212 m!341513))

(declare-fun m!341515 () Bool)

(assert (=> mapNonEmpty!12000 m!341515))

(declare-fun m!341517 () Bool)

(assert (=> b!338205 m!341517))

(declare-fun m!341519 () Bool)

(assert (=> b!338208 m!341519))

(assert (=> b!338208 m!341519))

(declare-fun m!341521 () Bool)

(assert (=> b!338208 m!341521))

(declare-fun m!341523 () Bool)

(assert (=> b!338211 m!341523))

(declare-fun m!341525 () Bool)

(assert (=> b!338204 m!341525))

(declare-fun m!341527 () Bool)

(assert (=> b!338203 m!341527))

(declare-fun m!341529 () Bool)

(assert (=> b!338201 m!341529))

(check-sat (not b_next!7107) tp_is_empty!7059 (not b!338208) (not b!338205) (not b!338211) (not mapNonEmpty!12000) (not b!338204) (not b!338203) (not b!338212) b_and!14315 (not b!338201) (not start!33984))
(check-sat b_and!14315 (not b_next!7107))
