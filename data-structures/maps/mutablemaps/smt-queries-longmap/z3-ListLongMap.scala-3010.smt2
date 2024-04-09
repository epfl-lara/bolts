; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42404 () Bool)

(assert start!42404)

(declare-fun b_free!11871 () Bool)

(declare-fun b_next!11871 () Bool)

(assert (=> start!42404 (= b_free!11871 (not b_next!11871))))

(declare-fun tp!41646 () Bool)

(declare-fun b_and!20345 () Bool)

(assert (=> start!42404 (= tp!41646 b_and!20345)))

(declare-fun b!472829 () Bool)

(declare-fun res!282493 () Bool)

(declare-fun e!277334 () Bool)

(assert (=> b!472829 (=> (not res!282493) (not e!277334))))

(declare-datatypes ((array!30321 0))(
  ( (array!30322 (arr!14577 (Array (_ BitVec 32) (_ BitVec 64))) (size!14929 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30321)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30321 (_ BitVec 32)) Bool)

(assert (=> b!472829 (= res!282493 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun res!282492 () Bool)

(assert (=> start!42404 (=> (not res!282492) (not e!277334))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42404 (= res!282492 (validMask!0 mask!1365))))

(assert (=> start!42404 e!277334))

(declare-fun tp_is_empty!13299 () Bool)

(assert (=> start!42404 tp_is_empty!13299))

(assert (=> start!42404 tp!41646))

(assert (=> start!42404 true))

(declare-fun array_inv!10512 (array!30321) Bool)

(assert (=> start!42404 (array_inv!10512 _keys!1025)))

(declare-datatypes ((V!18837 0))(
  ( (V!18838 (val!6694 Int)) )
))
(declare-datatypes ((ValueCell!6306 0))(
  ( (ValueCellFull!6306 (v!8981 V!18837)) (EmptyCell!6306) )
))
(declare-datatypes ((array!30323 0))(
  ( (array!30324 (arr!14578 (Array (_ BitVec 32) ValueCell!6306)) (size!14930 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30323)

(declare-fun e!277333 () Bool)

(declare-fun array_inv!10513 (array!30323) Bool)

(assert (=> start!42404 (and (array_inv!10513 _values!833) e!277333)))

(declare-fun b!472830 () Bool)

(declare-fun e!277336 () Bool)

(assert (=> b!472830 (= e!277336 tp_is_empty!13299)))

(declare-fun b!472831 () Bool)

(declare-fun e!277337 () Bool)

(assert (=> b!472831 (= e!277337 tp_is_empty!13299)))

(declare-fun b!472832 () Bool)

(declare-fun e!277338 () Bool)

(assert (=> b!472832 (= e!277338 true)))

(declare-datatypes ((tuple2!8808 0))(
  ( (tuple2!8809 (_1!4414 (_ BitVec 64)) (_2!4414 V!18837)) )
))
(declare-datatypes ((List!8923 0))(
  ( (Nil!8920) (Cons!8919 (h!9775 tuple2!8808) (t!14901 List!8923)) )
))
(declare-datatypes ((ListLongMap!7735 0))(
  ( (ListLongMap!7736 (toList!3883 List!8923)) )
))
(declare-fun lt!214689 () ListLongMap!7735)

(declare-fun lt!214693 () tuple2!8808)

(declare-fun minValueBefore!38 () V!18837)

(declare-fun +!1692 (ListLongMap!7735 tuple2!8808) ListLongMap!7735)

(assert (=> b!472832 (= (+!1692 lt!214689 lt!214693) (+!1692 (+!1692 lt!214689 (tuple2!8809 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!214693))))

(declare-fun minValueAfter!38 () V!18837)

(assert (=> b!472832 (= lt!214693 (tuple2!8809 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13887 0))(
  ( (Unit!13888) )
))
(declare-fun lt!214694 () Unit!13887)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!129 (ListLongMap!7735 (_ BitVec 64) V!18837 V!18837) Unit!13887)

(assert (=> b!472832 (= lt!214694 (addSameAsAddTwiceSameKeyDiffValues!129 lt!214689 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!214691 () ListLongMap!7735)

(declare-fun zeroValue!794 () V!18837)

(assert (=> b!472832 (= lt!214689 (+!1692 lt!214691 (tuple2!8809 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun lt!214688 () ListLongMap!7735)

(declare-fun getCurrentListMap!2229 (array!30321 array!30323 (_ BitVec 32) (_ BitVec 32) V!18837 V!18837 (_ BitVec 32) Int) ListLongMap!7735)

(assert (=> b!472832 (= lt!214688 (getCurrentListMap!2229 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!214690 () ListLongMap!7735)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!472832 (= lt!214690 (getCurrentListMap!2229 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472833 () Bool)

(declare-fun res!282494 () Bool)

(assert (=> b!472833 (=> (not res!282494) (not e!277334))))

(assert (=> b!472833 (= res!282494 (and (= (size!14930 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14929 _keys!1025) (size!14930 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!472834 () Bool)

(declare-fun res!282496 () Bool)

(assert (=> b!472834 (=> (not res!282496) (not e!277334))))

(declare-datatypes ((List!8924 0))(
  ( (Nil!8921) (Cons!8920 (h!9776 (_ BitVec 64)) (t!14902 List!8924)) )
))
(declare-fun arrayNoDuplicates!0 (array!30321 (_ BitVec 32) List!8924) Bool)

(assert (=> b!472834 (= res!282496 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8921))))

(declare-fun mapIsEmpty!21661 () Bool)

(declare-fun mapRes!21661 () Bool)

(assert (=> mapIsEmpty!21661 mapRes!21661))

(declare-fun b!472835 () Bool)

(assert (=> b!472835 (= e!277333 (and e!277336 mapRes!21661))))

(declare-fun condMapEmpty!21661 () Bool)

(declare-fun mapDefault!21661 () ValueCell!6306)

(assert (=> b!472835 (= condMapEmpty!21661 (= (arr!14578 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6306)) mapDefault!21661)))))

(declare-fun b!472836 () Bool)

(assert (=> b!472836 (= e!277334 (not e!277338))))

(declare-fun res!282495 () Bool)

(assert (=> b!472836 (=> res!282495 e!277338)))

(assert (=> b!472836 (= res!282495 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!214692 () ListLongMap!7735)

(assert (=> b!472836 (= lt!214691 lt!214692)))

(declare-fun lt!214687 () Unit!13887)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!237 (array!30321 array!30323 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18837 V!18837 V!18837 V!18837 (_ BitVec 32) Int) Unit!13887)

(assert (=> b!472836 (= lt!214687 (lemmaNoChangeToArrayThenSameMapNoExtras!237 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2042 (array!30321 array!30323 (_ BitVec 32) (_ BitVec 32) V!18837 V!18837 (_ BitVec 32) Int) ListLongMap!7735)

(assert (=> b!472836 (= lt!214692 (getCurrentListMapNoExtraKeys!2042 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!472836 (= lt!214691 (getCurrentListMapNoExtraKeys!2042 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!21661 () Bool)

(declare-fun tp!41647 () Bool)

(assert (=> mapNonEmpty!21661 (= mapRes!21661 (and tp!41647 e!277337))))

(declare-fun mapKey!21661 () (_ BitVec 32))

(declare-fun mapValue!21661 () ValueCell!6306)

(declare-fun mapRest!21661 () (Array (_ BitVec 32) ValueCell!6306))

(assert (=> mapNonEmpty!21661 (= (arr!14578 _values!833) (store mapRest!21661 mapKey!21661 mapValue!21661))))

(assert (= (and start!42404 res!282492) b!472833))

(assert (= (and b!472833 res!282494) b!472829))

(assert (= (and b!472829 res!282493) b!472834))

(assert (= (and b!472834 res!282496) b!472836))

(assert (= (and b!472836 (not res!282495)) b!472832))

(assert (= (and b!472835 condMapEmpty!21661) mapIsEmpty!21661))

(assert (= (and b!472835 (not condMapEmpty!21661)) mapNonEmpty!21661))

(get-info :version)

(assert (= (and mapNonEmpty!21661 ((_ is ValueCellFull!6306) mapValue!21661)) b!472831))

(assert (= (and b!472835 ((_ is ValueCellFull!6306) mapDefault!21661)) b!472830))

(assert (= start!42404 b!472835))

(declare-fun m!454777 () Bool)

(assert (=> b!472832 m!454777))

(declare-fun m!454779 () Bool)

(assert (=> b!472832 m!454779))

(declare-fun m!454781 () Bool)

(assert (=> b!472832 m!454781))

(declare-fun m!454783 () Bool)

(assert (=> b!472832 m!454783))

(declare-fun m!454785 () Bool)

(assert (=> b!472832 m!454785))

(assert (=> b!472832 m!454783))

(declare-fun m!454787 () Bool)

(assert (=> b!472832 m!454787))

(declare-fun m!454789 () Bool)

(assert (=> b!472832 m!454789))

(declare-fun m!454791 () Bool)

(assert (=> mapNonEmpty!21661 m!454791))

(declare-fun m!454793 () Bool)

(assert (=> b!472829 m!454793))

(declare-fun m!454795 () Bool)

(assert (=> b!472834 m!454795))

(declare-fun m!454797 () Bool)

(assert (=> start!42404 m!454797))

(declare-fun m!454799 () Bool)

(assert (=> start!42404 m!454799))

(declare-fun m!454801 () Bool)

(assert (=> start!42404 m!454801))

(declare-fun m!454803 () Bool)

(assert (=> b!472836 m!454803))

(declare-fun m!454805 () Bool)

(assert (=> b!472836 m!454805))

(declare-fun m!454807 () Bool)

(assert (=> b!472836 m!454807))

(check-sat (not b_next!11871) (not mapNonEmpty!21661) (not b!472834) (not b!472832) tp_is_empty!13299 (not b!472829) b_and!20345 (not start!42404) (not b!472836))
(check-sat b_and!20345 (not b_next!11871))
