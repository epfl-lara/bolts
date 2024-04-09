; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!71712 () Bool)

(assert start!71712)

(declare-fun b_free!13521 () Bool)

(declare-fun b_next!13521 () Bool)

(assert (=> start!71712 (= b_free!13521 (not b_next!13521))))

(declare-fun tp!47360 () Bool)

(declare-fun b_and!22625 () Bool)

(assert (=> start!71712 (= tp!47360 b_and!22625)))

(declare-fun b!833546 () Bool)

(declare-fun e!465045 () Bool)

(declare-fun tp_is_empty!15231 () Bool)

(assert (=> b!833546 (= e!465045 tp_is_empty!15231)))

(declare-fun b!833547 () Bool)

(declare-fun e!465042 () Bool)

(declare-fun e!465043 () Bool)

(assert (=> b!833547 (= e!465042 (not e!465043))))

(declare-fun res!566913 () Bool)

(assert (=> b!833547 (=> res!566913 e!465043)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!833547 (= res!566913 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!25309 0))(
  ( (V!25310 (val!7663 Int)) )
))
(declare-datatypes ((tuple2!10194 0))(
  ( (tuple2!10195 (_1!5107 (_ BitVec 64)) (_2!5107 V!25309)) )
))
(declare-datatypes ((List!16021 0))(
  ( (Nil!16018) (Cons!16017 (h!17148 tuple2!10194) (t!22400 List!16021)) )
))
(declare-datatypes ((ListLongMap!9031 0))(
  ( (ListLongMap!9032 (toList!4531 List!16021)) )
))
(declare-fun lt!378419 () ListLongMap!9031)

(declare-fun lt!378413 () ListLongMap!9031)

(assert (=> b!833547 (= lt!378419 lt!378413)))

(declare-fun zeroValueBefore!34 () V!25309)

(declare-datatypes ((array!46606 0))(
  ( (array!46607 (arr!22333 (Array (_ BitVec 32) (_ BitVec 64))) (size!22754 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!46606)

(declare-fun zeroValueAfter!34 () V!25309)

(declare-datatypes ((ValueCell!7200 0))(
  ( (ValueCellFull!7200 (v!10107 V!25309)) (EmptyCell!7200) )
))
(declare-datatypes ((array!46608 0))(
  ( (array!46609 (arr!22334 (Array (_ BitVec 32) ValueCell!7200)) (size!22755 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!46608)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun minValue!754 () V!25309)

(declare-datatypes ((Unit!28569 0))(
  ( (Unit!28570) )
))
(declare-fun lt!378412 () Unit!28569)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!619 (array!46606 array!46608 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!25309 V!25309 V!25309 V!25309 (_ BitVec 32) Int) Unit!28569)

(assert (=> b!833547 (= lt!378412 (lemmaNoChangeToArrayThenSameMapNoExtras!619 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2529 (array!46606 array!46608 (_ BitVec 32) (_ BitVec 32) V!25309 V!25309 (_ BitVec 32) Int) ListLongMap!9031)

(assert (=> b!833547 (= lt!378413 (getCurrentListMapNoExtraKeys!2529 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!833547 (= lt!378419 (getCurrentListMapNoExtraKeys!2529 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!833548 () Bool)

(declare-fun e!465046 () Bool)

(declare-fun mapRes!24509 () Bool)

(assert (=> b!833548 (= e!465046 (and e!465045 mapRes!24509))))

(declare-fun condMapEmpty!24509 () Bool)

(declare-fun mapDefault!24509 () ValueCell!7200)

(assert (=> b!833548 (= condMapEmpty!24509 (= (arr!22334 _values!788) ((as const (Array (_ BitVec 32) ValueCell!7200)) mapDefault!24509)))))

(declare-fun b!833549 () Bool)

(declare-fun e!465044 () Bool)

(assert (=> b!833549 (= e!465044 tp_is_empty!15231)))

(declare-fun b!833550 () Bool)

(declare-fun res!566911 () Bool)

(assert (=> b!833550 (=> (not res!566911) (not e!465042))))

(assert (=> b!833550 (= res!566911 (and (= (size!22755 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22754 _keys!976) (size!22755 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!378415 () ListLongMap!9031)

(declare-fun b!833551 () Bool)

(declare-fun lt!378410 () tuple2!10194)

(declare-fun e!465040 () Bool)

(declare-fun lt!378409 () tuple2!10194)

(declare-fun +!1959 (ListLongMap!9031 tuple2!10194) ListLongMap!9031)

(assert (=> b!833551 (= e!465040 (= lt!378415 (+!1959 (+!1959 lt!378413 lt!378409) lt!378410)))))

(declare-fun res!566908 () Bool)

(assert (=> start!71712 (=> (not res!566908) (not e!465042))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!71712 (= res!566908 (validMask!0 mask!1312))))

(assert (=> start!71712 e!465042))

(assert (=> start!71712 tp_is_empty!15231))

(declare-fun array_inv!17761 (array!46606) Bool)

(assert (=> start!71712 (array_inv!17761 _keys!976)))

(assert (=> start!71712 true))

(declare-fun array_inv!17762 (array!46608) Bool)

(assert (=> start!71712 (and (array_inv!17762 _values!788) e!465046)))

(assert (=> start!71712 tp!47360))

(declare-fun b!833552 () Bool)

(declare-fun res!566914 () Bool)

(assert (=> b!833552 (=> (not res!566914) (not e!465042))))

(declare-datatypes ((List!16022 0))(
  ( (Nil!16019) (Cons!16018 (h!17149 (_ BitVec 64)) (t!22401 List!16022)) )
))
(declare-fun arrayNoDuplicates!0 (array!46606 (_ BitVec 32) List!16022) Bool)

(assert (=> b!833552 (= res!566914 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!16019))))

(declare-fun b!833553 () Bool)

(assert (=> b!833553 (= e!465043 (= lt!378415 (+!1959 (+!1959 lt!378419 lt!378410) lt!378409)))))

(declare-fun lt!378416 () ListLongMap!9031)

(declare-fun lt!378408 () ListLongMap!9031)

(assert (=> b!833553 (and (= lt!378416 lt!378408) (= lt!378415 lt!378408) (= lt!378415 lt!378416))))

(declare-fun lt!378417 () ListLongMap!9031)

(assert (=> b!833553 (= lt!378408 (+!1959 lt!378417 lt!378410))))

(declare-fun lt!378414 () ListLongMap!9031)

(assert (=> b!833553 (= lt!378416 (+!1959 lt!378414 lt!378410))))

(declare-fun lt!378411 () Unit!28569)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!252 (ListLongMap!9031 (_ BitVec 64) V!25309 V!25309) Unit!28569)

(assert (=> b!833553 (= lt!378411 (addSameAsAddTwiceSameKeyDiffValues!252 lt!378414 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!833553 e!465040))

(declare-fun res!566910 () Bool)

(assert (=> b!833553 (=> (not res!566910) (not e!465040))))

(declare-fun lt!378420 () ListLongMap!9031)

(assert (=> b!833553 (= res!566910 (= lt!378420 lt!378417))))

(declare-fun lt!378418 () tuple2!10194)

(assert (=> b!833553 (= lt!378417 (+!1959 lt!378414 lt!378418))))

(assert (=> b!833553 (= lt!378414 (+!1959 lt!378419 lt!378409))))

(assert (=> b!833553 (= lt!378410 (tuple2!10195 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!465047 () Bool)

(assert (=> b!833553 e!465047))

(declare-fun res!566912 () Bool)

(assert (=> b!833553 (=> (not res!566912) (not e!465047))))

(assert (=> b!833553 (= res!566912 (= lt!378420 (+!1959 (+!1959 lt!378419 lt!378418) lt!378409)))))

(assert (=> b!833553 (= lt!378409 (tuple2!10195 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(assert (=> b!833553 (= lt!378418 (tuple2!10195 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun getCurrentListMap!2599 (array!46606 array!46608 (_ BitVec 32) (_ BitVec 32) V!25309 V!25309 (_ BitVec 32) Int) ListLongMap!9031)

(assert (=> b!833553 (= lt!378415 (getCurrentListMap!2599 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!833553 (= lt!378420 (getCurrentListMap!2599 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!24509 () Bool)

(declare-fun tp!47359 () Bool)

(assert (=> mapNonEmpty!24509 (= mapRes!24509 (and tp!47359 e!465044))))

(declare-fun mapRest!24509 () (Array (_ BitVec 32) ValueCell!7200))

(declare-fun mapKey!24509 () (_ BitVec 32))

(declare-fun mapValue!24509 () ValueCell!7200)

(assert (=> mapNonEmpty!24509 (= (arr!22334 _values!788) (store mapRest!24509 mapKey!24509 mapValue!24509))))

(declare-fun b!833554 () Bool)

(declare-fun res!566909 () Bool)

(assert (=> b!833554 (=> (not res!566909) (not e!465042))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!46606 (_ BitVec 32)) Bool)

(assert (=> b!833554 (= res!566909 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!24509 () Bool)

(assert (=> mapIsEmpty!24509 mapRes!24509))

(declare-fun b!833555 () Bool)

(assert (=> b!833555 (= e!465047 (= lt!378415 (+!1959 (+!1959 lt!378413 (tuple2!10195 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)) lt!378409)))))

(assert (= (and start!71712 res!566908) b!833550))

(assert (= (and b!833550 res!566911) b!833554))

(assert (= (and b!833554 res!566909) b!833552))

(assert (= (and b!833552 res!566914) b!833547))

(assert (= (and b!833547 (not res!566913)) b!833553))

(assert (= (and b!833553 res!566912) b!833555))

(assert (= (and b!833553 res!566910) b!833551))

(assert (= (and b!833548 condMapEmpty!24509) mapIsEmpty!24509))

(assert (= (and b!833548 (not condMapEmpty!24509)) mapNonEmpty!24509))

(get-info :version)

(assert (= (and mapNonEmpty!24509 ((_ is ValueCellFull!7200) mapValue!24509)) b!833549))

(assert (= (and b!833548 ((_ is ValueCellFull!7200) mapDefault!24509)) b!833546))

(assert (= start!71712 b!833548))

(declare-fun m!778525 () Bool)

(assert (=> b!833552 m!778525))

(declare-fun m!778527 () Bool)

(assert (=> b!833547 m!778527))

(declare-fun m!778529 () Bool)

(assert (=> b!833547 m!778529))

(declare-fun m!778531 () Bool)

(assert (=> b!833547 m!778531))

(declare-fun m!778533 () Bool)

(assert (=> b!833554 m!778533))

(declare-fun m!778535 () Bool)

(assert (=> b!833551 m!778535))

(assert (=> b!833551 m!778535))

(declare-fun m!778537 () Bool)

(assert (=> b!833551 m!778537))

(declare-fun m!778539 () Bool)

(assert (=> start!71712 m!778539))

(declare-fun m!778541 () Bool)

(assert (=> start!71712 m!778541))

(declare-fun m!778543 () Bool)

(assert (=> start!71712 m!778543))

(declare-fun m!778545 () Bool)

(assert (=> mapNonEmpty!24509 m!778545))

(declare-fun m!778547 () Bool)

(assert (=> b!833553 m!778547))

(declare-fun m!778549 () Bool)

(assert (=> b!833553 m!778549))

(declare-fun m!778551 () Bool)

(assert (=> b!833553 m!778551))

(declare-fun m!778553 () Bool)

(assert (=> b!833553 m!778553))

(declare-fun m!778555 () Bool)

(assert (=> b!833553 m!778555))

(assert (=> b!833553 m!778553))

(declare-fun m!778557 () Bool)

(assert (=> b!833553 m!778557))

(declare-fun m!778559 () Bool)

(assert (=> b!833553 m!778559))

(declare-fun m!778561 () Bool)

(assert (=> b!833553 m!778561))

(declare-fun m!778563 () Bool)

(assert (=> b!833553 m!778563))

(declare-fun m!778565 () Bool)

(assert (=> b!833553 m!778565))

(assert (=> b!833553 m!778551))

(declare-fun m!778567 () Bool)

(assert (=> b!833553 m!778567))

(declare-fun m!778569 () Bool)

(assert (=> b!833555 m!778569))

(assert (=> b!833555 m!778569))

(declare-fun m!778571 () Bool)

(assert (=> b!833555 m!778571))

(check-sat (not mapNonEmpty!24509) b_and!22625 (not b_next!13521) (not b!833551) (not b!833547) (not b!833554) tp_is_empty!15231 (not b!833555) (not b!833553) (not start!71712) (not b!833552))
(check-sat b_and!22625 (not b_next!13521))
