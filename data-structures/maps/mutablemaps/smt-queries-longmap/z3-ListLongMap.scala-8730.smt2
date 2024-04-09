; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105912 () Bool)

(assert start!105912)

(declare-fun b_free!27417 () Bool)

(declare-fun b_next!27417 () Bool)

(assert (=> start!105912 (= b_free!27417 (not b_next!27417))))

(declare-fun tp!95783 () Bool)

(declare-fun b_and!45335 () Bool)

(assert (=> start!105912 (= tp!95783 b_and!45335)))

(declare-fun res!840417 () Bool)

(declare-fun e!717700 () Bool)

(assert (=> start!105912 (=> (not res!840417) (not e!717700))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105912 (= res!840417 (validMask!0 mask!1466))))

(assert (=> start!105912 e!717700))

(assert (=> start!105912 true))

(assert (=> start!105912 tp!95783))

(declare-fun tp_is_empty!32319 () Bool)

(assert (=> start!105912 tp_is_empty!32319))

(declare-datatypes ((array!82243 0))(
  ( (array!82244 (arr!39670 (Array (_ BitVec 32) (_ BitVec 64))) (size!40207 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82243)

(declare-fun array_inv!30151 (array!82243) Bool)

(assert (=> start!105912 (array_inv!30151 _keys!1118)))

(declare-datatypes ((V!48457 0))(
  ( (V!48458 (val!16222 Int)) )
))
(declare-datatypes ((ValueCell!15396 0))(
  ( (ValueCellFull!15396 (v!18926 V!48457)) (EmptyCell!15396) )
))
(declare-datatypes ((array!82245 0))(
  ( (array!82246 (arr!39671 (Array (_ BitVec 32) ValueCell!15396)) (size!40208 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82245)

(declare-fun e!717696 () Bool)

(declare-fun array_inv!30152 (array!82245) Bool)

(assert (=> start!105912 (and (array_inv!30152 _values!914) e!717696)))

(declare-fun b!1261028 () Bool)

(declare-fun e!717699 () Bool)

(declare-fun mapRes!50281 () Bool)

(assert (=> b!1261028 (= e!717696 (and e!717699 mapRes!50281))))

(declare-fun condMapEmpty!50281 () Bool)

(declare-fun mapDefault!50281 () ValueCell!15396)

(assert (=> b!1261028 (= condMapEmpty!50281 (= (arr!39671 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15396)) mapDefault!50281)))))

(declare-fun b!1261029 () Bool)

(declare-fun res!840415 () Bool)

(assert (=> b!1261029 (=> (not res!840415) (not e!717700))))

(declare-datatypes ((List!28362 0))(
  ( (Nil!28359) (Cons!28358 (h!29567 (_ BitVec 64)) (t!41868 List!28362)) )
))
(declare-fun arrayNoDuplicates!0 (array!82243 (_ BitVec 32) List!28362) Bool)

(assert (=> b!1261029 (= res!840415 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28359))))

(declare-fun b!1261030 () Bool)

(declare-fun e!717697 () Bool)

(assert (=> b!1261030 (= e!717697 tp_is_empty!32319)))

(declare-fun b!1261031 () Bool)

(declare-fun res!840416 () Bool)

(assert (=> b!1261031 (=> (not res!840416) (not e!717700))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1261031 (= res!840416 (and (= (size!40208 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40207 _keys!1118) (size!40208 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1261032 () Bool)

(declare-fun res!840418 () Bool)

(assert (=> b!1261032 (=> (not res!840418) (not e!717700))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82243 (_ BitVec 32)) Bool)

(assert (=> b!1261032 (= res!840418 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1261033 () Bool)

(assert (=> b!1261033 (= e!717699 tp_is_empty!32319)))

(declare-fun mapIsEmpty!50281 () Bool)

(assert (=> mapIsEmpty!50281 mapRes!50281))

(declare-fun mapNonEmpty!50281 () Bool)

(declare-fun tp!95784 () Bool)

(assert (=> mapNonEmpty!50281 (= mapRes!50281 (and tp!95784 e!717697))))

(declare-fun mapKey!50281 () (_ BitVec 32))

(declare-fun mapRest!50281 () (Array (_ BitVec 32) ValueCell!15396))

(declare-fun mapValue!50281 () ValueCell!15396)

(assert (=> mapNonEmpty!50281 (= (arr!39671 _values!914) (store mapRest!50281 mapKey!50281 mapValue!50281))))

(declare-fun b!1261034 () Bool)

(assert (=> b!1261034 (= e!717700 false)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48457)

(declare-fun zeroValue!871 () V!48457)

(declare-datatypes ((tuple2!21140 0))(
  ( (tuple2!21141 (_1!10580 (_ BitVec 64)) (_2!10580 V!48457)) )
))
(declare-datatypes ((List!28363 0))(
  ( (Nil!28360) (Cons!28359 (h!29568 tuple2!21140) (t!41869 List!28363)) )
))
(declare-datatypes ((ListLongMap!19025 0))(
  ( (ListLongMap!19026 (toList!9528 List!28363)) )
))
(declare-fun lt!571475 () ListLongMap!19025)

(declare-fun getCurrentListMapNoExtraKeys!5869 (array!82243 array!82245 (_ BitVec 32) (_ BitVec 32) V!48457 V!48457 (_ BitVec 32) Int) ListLongMap!19025)

(assert (=> b!1261034 (= lt!571475 (getCurrentListMapNoExtraKeys!5869 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!571474 () ListLongMap!19025)

(declare-fun minValueBefore!43 () V!48457)

(assert (=> b!1261034 (= lt!571474 (getCurrentListMapNoExtraKeys!5869 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (= (and start!105912 res!840417) b!1261031))

(assert (= (and b!1261031 res!840416) b!1261032))

(assert (= (and b!1261032 res!840418) b!1261029))

(assert (= (and b!1261029 res!840415) b!1261034))

(assert (= (and b!1261028 condMapEmpty!50281) mapIsEmpty!50281))

(assert (= (and b!1261028 (not condMapEmpty!50281)) mapNonEmpty!50281))

(get-info :version)

(assert (= (and mapNonEmpty!50281 ((_ is ValueCellFull!15396) mapValue!50281)) b!1261030))

(assert (= (and b!1261028 ((_ is ValueCellFull!15396) mapDefault!50281)) b!1261033))

(assert (= start!105912 b!1261028))

(declare-fun m!1161771 () Bool)

(assert (=> mapNonEmpty!50281 m!1161771))

(declare-fun m!1161773 () Bool)

(assert (=> b!1261034 m!1161773))

(declare-fun m!1161775 () Bool)

(assert (=> b!1261034 m!1161775))

(declare-fun m!1161777 () Bool)

(assert (=> b!1261029 m!1161777))

(declare-fun m!1161779 () Bool)

(assert (=> start!105912 m!1161779))

(declare-fun m!1161781 () Bool)

(assert (=> start!105912 m!1161781))

(declare-fun m!1161783 () Bool)

(assert (=> start!105912 m!1161783))

(declare-fun m!1161785 () Bool)

(assert (=> b!1261032 m!1161785))

(check-sat (not b!1261032) (not b!1261029) (not b!1261034) (not b_next!27417) (not mapNonEmpty!50281) b_and!45335 (not start!105912) tp_is_empty!32319)
(check-sat b_and!45335 (not b_next!27417))
