; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42398 () Bool)

(assert start!42398)

(declare-fun b_free!11865 () Bool)

(declare-fun b_next!11865 () Bool)

(assert (=> start!42398 (= b_free!11865 (not b_next!11865))))

(declare-fun tp!41629 () Bool)

(declare-fun b_and!20339 () Bool)

(assert (=> start!42398 (= tp!41629 b_and!20339)))

(declare-fun mapIsEmpty!21652 () Bool)

(declare-fun mapRes!21652 () Bool)

(assert (=> mapIsEmpty!21652 mapRes!21652))

(declare-fun b!472757 () Bool)

(declare-fun e!277283 () Bool)

(declare-fun tp_is_empty!13293 () Bool)

(assert (=> b!472757 (= e!277283 tp_is_empty!13293)))

(declare-fun b!472758 () Bool)

(declare-fun e!277279 () Bool)

(assert (=> b!472758 (= e!277279 true)))

(declare-datatypes ((V!18829 0))(
  ( (V!18830 (val!6691 Int)) )
))
(declare-datatypes ((tuple2!8802 0))(
  ( (tuple2!8803 (_1!4411 (_ BitVec 64)) (_2!4411 V!18829)) )
))
(declare-datatypes ((List!8919 0))(
  ( (Nil!8916) (Cons!8915 (h!9771 tuple2!8802) (t!14897 List!8919)) )
))
(declare-datatypes ((ListLongMap!7729 0))(
  ( (ListLongMap!7730 (toList!3880 List!8919)) )
))
(declare-fun lt!214617 () ListLongMap!7729)

(declare-fun lt!214616 () tuple2!8802)

(declare-fun minValueBefore!38 () V!18829)

(declare-fun +!1690 (ListLongMap!7729 tuple2!8802) ListLongMap!7729)

(assert (=> b!472758 (= (+!1690 lt!214617 lt!214616) (+!1690 (+!1690 lt!214617 (tuple2!8803 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!214616))))

(declare-fun minValueAfter!38 () V!18829)

(assert (=> b!472758 (= lt!214616 (tuple2!8803 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13881 0))(
  ( (Unit!13882) )
))
(declare-fun lt!214621 () Unit!13881)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!127 (ListLongMap!7729 (_ BitVec 64) V!18829 V!18829) Unit!13881)

(assert (=> b!472758 (= lt!214621 (addSameAsAddTwiceSameKeyDiffValues!127 lt!214617 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!214618 () ListLongMap!7729)

(declare-fun zeroValue!794 () V!18829)

(assert (=> b!472758 (= lt!214617 (+!1690 lt!214618 (tuple2!8803 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun lt!214620 () ListLongMap!7729)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30309 0))(
  ( (array!30310 (arr!14571 (Array (_ BitVec 32) (_ BitVec 64))) (size!14923 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30309)

(declare-datatypes ((ValueCell!6303 0))(
  ( (ValueCellFull!6303 (v!8978 V!18829)) (EmptyCell!6303) )
))
(declare-datatypes ((array!30311 0))(
  ( (array!30312 (arr!14572 (Array (_ BitVec 32) ValueCell!6303)) (size!14924 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30311)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2227 (array!30309 array!30311 (_ BitVec 32) (_ BitVec 32) V!18829 V!18829 (_ BitVec 32) Int) ListLongMap!7729)

(assert (=> b!472758 (= lt!214620 (getCurrentListMap!2227 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun lt!214622 () ListLongMap!7729)

(assert (=> b!472758 (= lt!214622 (getCurrentListMap!2227 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472759 () Bool)

(declare-fun e!277281 () Bool)

(assert (=> b!472759 (= e!277281 (not e!277279))))

(declare-fun res!282447 () Bool)

(assert (=> b!472759 (=> res!282447 e!277279)))

(assert (=> b!472759 (= res!282447 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!214619 () ListLongMap!7729)

(assert (=> b!472759 (= lt!214618 lt!214619)))

(declare-fun lt!214615 () Unit!13881)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!234 (array!30309 array!30311 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18829 V!18829 V!18829 V!18829 (_ BitVec 32) Int) Unit!13881)

(assert (=> b!472759 (= lt!214615 (lemmaNoChangeToArrayThenSameMapNoExtras!234 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2039 (array!30309 array!30311 (_ BitVec 32) (_ BitVec 32) V!18829 V!18829 (_ BitVec 32) Int) ListLongMap!7729)

(assert (=> b!472759 (= lt!214619 (getCurrentListMapNoExtraKeys!2039 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!472759 (= lt!214618 (getCurrentListMapNoExtraKeys!2039 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472760 () Bool)

(declare-fun res!282448 () Bool)

(assert (=> b!472760 (=> (not res!282448) (not e!277281))))

(declare-datatypes ((List!8920 0))(
  ( (Nil!8917) (Cons!8916 (h!9772 (_ BitVec 64)) (t!14898 List!8920)) )
))
(declare-fun arrayNoDuplicates!0 (array!30309 (_ BitVec 32) List!8920) Bool)

(assert (=> b!472760 (= res!282448 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8917))))

(declare-fun res!282451 () Bool)

(assert (=> start!42398 (=> (not res!282451) (not e!277281))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42398 (= res!282451 (validMask!0 mask!1365))))

(assert (=> start!42398 e!277281))

(assert (=> start!42398 tp_is_empty!13293))

(assert (=> start!42398 tp!41629))

(assert (=> start!42398 true))

(declare-fun array_inv!10508 (array!30309) Bool)

(assert (=> start!42398 (array_inv!10508 _keys!1025)))

(declare-fun e!277282 () Bool)

(declare-fun array_inv!10509 (array!30311) Bool)

(assert (=> start!42398 (and (array_inv!10509 _values!833) e!277282)))

(declare-fun b!472761 () Bool)

(declare-fun e!277284 () Bool)

(assert (=> b!472761 (= e!277284 tp_is_empty!13293)))

(declare-fun b!472762 () Bool)

(assert (=> b!472762 (= e!277282 (and e!277283 mapRes!21652))))

(declare-fun condMapEmpty!21652 () Bool)

(declare-fun mapDefault!21652 () ValueCell!6303)

(assert (=> b!472762 (= condMapEmpty!21652 (= (arr!14572 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6303)) mapDefault!21652)))))

(declare-fun b!472763 () Bool)

(declare-fun res!282450 () Bool)

(assert (=> b!472763 (=> (not res!282450) (not e!277281))))

(assert (=> b!472763 (= res!282450 (and (= (size!14924 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14923 _keys!1025) (size!14924 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!21652 () Bool)

(declare-fun tp!41628 () Bool)

(assert (=> mapNonEmpty!21652 (= mapRes!21652 (and tp!41628 e!277284))))

(declare-fun mapValue!21652 () ValueCell!6303)

(declare-fun mapRest!21652 () (Array (_ BitVec 32) ValueCell!6303))

(declare-fun mapKey!21652 () (_ BitVec 32))

(assert (=> mapNonEmpty!21652 (= (arr!14572 _values!833) (store mapRest!21652 mapKey!21652 mapValue!21652))))

(declare-fun b!472764 () Bool)

(declare-fun res!282449 () Bool)

(assert (=> b!472764 (=> (not res!282449) (not e!277281))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30309 (_ BitVec 32)) Bool)

(assert (=> b!472764 (= res!282449 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(assert (= (and start!42398 res!282451) b!472763))

(assert (= (and b!472763 res!282450) b!472764))

(assert (= (and b!472764 res!282449) b!472760))

(assert (= (and b!472760 res!282448) b!472759))

(assert (= (and b!472759 (not res!282447)) b!472758))

(assert (= (and b!472762 condMapEmpty!21652) mapIsEmpty!21652))

(assert (= (and b!472762 (not condMapEmpty!21652)) mapNonEmpty!21652))

(get-info :version)

(assert (= (and mapNonEmpty!21652 ((_ is ValueCellFull!6303) mapValue!21652)) b!472761))

(assert (= (and b!472762 ((_ is ValueCellFull!6303) mapDefault!21652)) b!472757))

(assert (= start!42398 b!472762))

(declare-fun m!454681 () Bool)

(assert (=> start!42398 m!454681))

(declare-fun m!454683 () Bool)

(assert (=> start!42398 m!454683))

(declare-fun m!454685 () Bool)

(assert (=> start!42398 m!454685))

(declare-fun m!454687 () Bool)

(assert (=> b!472758 m!454687))

(declare-fun m!454689 () Bool)

(assert (=> b!472758 m!454689))

(declare-fun m!454691 () Bool)

(assert (=> b!472758 m!454691))

(declare-fun m!454693 () Bool)

(assert (=> b!472758 m!454693))

(declare-fun m!454695 () Bool)

(assert (=> b!472758 m!454695))

(assert (=> b!472758 m!454691))

(declare-fun m!454697 () Bool)

(assert (=> b!472758 m!454697))

(declare-fun m!454699 () Bool)

(assert (=> b!472758 m!454699))

(declare-fun m!454701 () Bool)

(assert (=> b!472760 m!454701))

(declare-fun m!454703 () Bool)

(assert (=> b!472759 m!454703))

(declare-fun m!454705 () Bool)

(assert (=> b!472759 m!454705))

(declare-fun m!454707 () Bool)

(assert (=> b!472759 m!454707))

(declare-fun m!454709 () Bool)

(assert (=> b!472764 m!454709))

(declare-fun m!454711 () Bool)

(assert (=> mapNonEmpty!21652 m!454711))

(check-sat (not start!42398) (not b!472764) (not b!472759) (not b_next!11865) (not b!472758) (not mapNonEmpty!21652) tp_is_empty!13293 (not b!472760) b_and!20339)
(check-sat b_and!20339 (not b_next!11865))
