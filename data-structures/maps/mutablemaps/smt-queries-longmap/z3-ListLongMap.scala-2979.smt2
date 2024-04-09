; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42160 () Bool)

(assert start!42160)

(declare-fun b_free!11685 () Bool)

(declare-fun b_next!11685 () Bool)

(assert (=> start!42160 (= b_free!11685 (not b_next!11685))))

(declare-fun tp!41077 () Bool)

(declare-fun b_and!20125 () Bool)

(assert (=> start!42160 (= tp!41077 b_and!20125)))

(declare-fun b!470378 () Bool)

(declare-fun res!281130 () Bool)

(declare-fun e!275587 () Bool)

(assert (=> b!470378 (=> (not res!281130) (not e!275587))))

(declare-datatypes ((array!29957 0))(
  ( (array!29958 (arr!14399 (Array (_ BitVec 32) (_ BitVec 64))) (size!14751 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29957)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29957 (_ BitVec 32)) Bool)

(assert (=> b!470378 (= res!281130 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!21370 () Bool)

(declare-fun mapRes!21370 () Bool)

(assert (=> mapIsEmpty!21370 mapRes!21370))

(declare-fun mapNonEmpty!21370 () Bool)

(declare-fun tp!41076 () Bool)

(declare-fun e!275585 () Bool)

(assert (=> mapNonEmpty!21370 (= mapRes!21370 (and tp!41076 e!275585))))

(declare-datatypes ((V!18589 0))(
  ( (V!18590 (val!6601 Int)) )
))
(declare-datatypes ((ValueCell!6213 0))(
  ( (ValueCellFull!6213 (v!8888 V!18589)) (EmptyCell!6213) )
))
(declare-fun mapValue!21370 () ValueCell!6213)

(declare-fun mapRest!21370 () (Array (_ BitVec 32) ValueCell!6213))

(declare-datatypes ((array!29959 0))(
  ( (array!29960 (arr!14400 (Array (_ BitVec 32) ValueCell!6213)) (size!14752 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29959)

(declare-fun mapKey!21370 () (_ BitVec 32))

(assert (=> mapNonEmpty!21370 (= (arr!14400 _values!833) (store mapRest!21370 mapKey!21370 mapValue!21370))))

(declare-fun b!470380 () Bool)

(declare-fun e!275586 () Bool)

(declare-fun tp_is_empty!13113 () Bool)

(assert (=> b!470380 (= e!275586 tp_is_empty!13113)))

(declare-fun b!470381 () Bool)

(declare-fun res!281131 () Bool)

(assert (=> b!470381 (=> (not res!281131) (not e!275587))))

(declare-datatypes ((List!8786 0))(
  ( (Nil!8783) (Cons!8782 (h!9638 (_ BitVec 64)) (t!14756 List!8786)) )
))
(declare-fun arrayNoDuplicates!0 (array!29957 (_ BitVec 32) List!8786) Bool)

(assert (=> b!470381 (= res!281131 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8783))))

(declare-fun b!470382 () Bool)

(declare-fun res!281133 () Bool)

(assert (=> b!470382 (=> (not res!281133) (not e!275587))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!470382 (= res!281133 (and (= (size!14752 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14751 _keys!1025) (size!14752 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!470379 () Bool)

(assert (=> b!470379 (= e!275585 tp_is_empty!13113)))

(declare-fun res!281132 () Bool)

(assert (=> start!42160 (=> (not res!281132) (not e!275587))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42160 (= res!281132 (validMask!0 mask!1365))))

(assert (=> start!42160 e!275587))

(assert (=> start!42160 tp_is_empty!13113))

(assert (=> start!42160 tp!41077))

(assert (=> start!42160 true))

(declare-fun array_inv!10392 (array!29957) Bool)

(assert (=> start!42160 (array_inv!10392 _keys!1025)))

(declare-fun e!275588 () Bool)

(declare-fun array_inv!10393 (array!29959) Bool)

(assert (=> start!42160 (and (array_inv!10393 _values!833) e!275588)))

(declare-fun b!470383 () Bool)

(assert (=> b!470383 (= e!275588 (and e!275586 mapRes!21370))))

(declare-fun condMapEmpty!21370 () Bool)

(declare-fun mapDefault!21370 () ValueCell!6213)

(assert (=> b!470383 (= condMapEmpty!21370 (= (arr!14400 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6213)) mapDefault!21370)))))

(declare-fun b!470384 () Bool)

(assert (=> b!470384 (= e!275587 (not true))))

(declare-datatypes ((tuple2!8664 0))(
  ( (tuple2!8665 (_1!4342 (_ BitVec 64)) (_2!4342 V!18589)) )
))
(declare-datatypes ((List!8787 0))(
  ( (Nil!8784) (Cons!8783 (h!9639 tuple2!8664) (t!14757 List!8787)) )
))
(declare-datatypes ((ListLongMap!7591 0))(
  ( (ListLongMap!7592 (toList!3811 List!8787)) )
))
(declare-fun lt!213475 () ListLongMap!7591)

(declare-fun lt!213474 () ListLongMap!7591)

(assert (=> b!470384 (= lt!213475 lt!213474)))

(declare-fun minValueBefore!38 () V!18589)

(declare-fun zeroValue!794 () V!18589)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13748 0))(
  ( (Unit!13749) )
))
(declare-fun lt!213473 () Unit!13748)

(declare-fun minValueAfter!38 () V!18589)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!168 (array!29957 array!29959 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18589 V!18589 V!18589 V!18589 (_ BitVec 32) Int) Unit!13748)

(assert (=> b!470384 (= lt!213473 (lemmaNoChangeToArrayThenSameMapNoExtras!168 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1973 (array!29957 array!29959 (_ BitVec 32) (_ BitVec 32) V!18589 V!18589 (_ BitVec 32) Int) ListLongMap!7591)

(assert (=> b!470384 (= lt!213474 (getCurrentListMapNoExtraKeys!1973 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!470384 (= lt!213475 (getCurrentListMapNoExtraKeys!1973 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (= (and start!42160 res!281132) b!470382))

(assert (= (and b!470382 res!281133) b!470378))

(assert (= (and b!470378 res!281130) b!470381))

(assert (= (and b!470381 res!281131) b!470384))

(assert (= (and b!470383 condMapEmpty!21370) mapIsEmpty!21370))

(assert (= (and b!470383 (not condMapEmpty!21370)) mapNonEmpty!21370))

(get-info :version)

(assert (= (and mapNonEmpty!21370 ((_ is ValueCellFull!6213) mapValue!21370)) b!470379))

(assert (= (and b!470383 ((_ is ValueCellFull!6213) mapDefault!21370)) b!470380))

(assert (= start!42160 b!470383))

(declare-fun m!452683 () Bool)

(assert (=> mapNonEmpty!21370 m!452683))

(declare-fun m!452685 () Bool)

(assert (=> b!470381 m!452685))

(declare-fun m!452687 () Bool)

(assert (=> start!42160 m!452687))

(declare-fun m!452689 () Bool)

(assert (=> start!42160 m!452689))

(declare-fun m!452691 () Bool)

(assert (=> start!42160 m!452691))

(declare-fun m!452693 () Bool)

(assert (=> b!470384 m!452693))

(declare-fun m!452695 () Bool)

(assert (=> b!470384 m!452695))

(declare-fun m!452697 () Bool)

(assert (=> b!470384 m!452697))

(declare-fun m!452699 () Bool)

(assert (=> b!470378 m!452699))

(check-sat tp_is_empty!13113 (not b!470381) b_and!20125 (not b!470384) (not start!42160) (not mapNonEmpty!21370) (not b!470378) (not b_next!11685))
(check-sat b_and!20125 (not b_next!11685))
