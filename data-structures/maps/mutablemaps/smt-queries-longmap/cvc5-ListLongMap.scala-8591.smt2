; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104812 () Bool)

(assert start!104812)

(declare-fun b_free!26581 () Bool)

(declare-fun b_next!26581 () Bool)

(assert (=> start!104812 (= b_free!26581 (not b_next!26581))))

(declare-fun tp!93233 () Bool)

(declare-fun b_and!44359 () Bool)

(assert (=> start!104812 (= tp!93233 b_and!44359)))

(declare-fun b!1248892 () Bool)

(declare-fun e!708791 () Bool)

(declare-fun tp_is_empty!31483 () Bool)

(assert (=> b!1248892 (= e!708791 tp_is_empty!31483)))

(declare-fun b!1248893 () Bool)

(declare-fun res!833231 () Bool)

(declare-fun e!708789 () Bool)

(assert (=> b!1248893 (=> (not res!833231) (not e!708789))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!80631 0))(
  ( (array!80632 (arr!38878 (Array (_ BitVec 32) (_ BitVec 64))) (size!39415 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80631)

(declare-datatypes ((V!47343 0))(
  ( (V!47344 (val!15804 Int)) )
))
(declare-datatypes ((ValueCell!14978 0))(
  ( (ValueCellFull!14978 (v!18500 V!47343)) (EmptyCell!14978) )
))
(declare-datatypes ((array!80633 0))(
  ( (array!80634 (arr!38879 (Array (_ BitVec 32) ValueCell!14978)) (size!39416 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80633)

(assert (=> b!1248893 (= res!833231 (and (= (size!39416 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39415 _keys!1118) (size!39416 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1248894 () Bool)

(declare-fun res!833232 () Bool)

(assert (=> b!1248894 (=> (not res!833232) (not e!708789))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!80631 (_ BitVec 32)) Bool)

(assert (=> b!1248894 (= res!833232 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1248895 () Bool)

(declare-fun res!833230 () Bool)

(assert (=> b!1248895 (=> (not res!833230) (not e!708789))))

(declare-datatypes ((List!27767 0))(
  ( (Nil!27764) (Cons!27763 (h!28972 (_ BitVec 64)) (t!41245 List!27767)) )
))
(declare-fun arrayNoDuplicates!0 (array!80631 (_ BitVec 32) List!27767) Bool)

(assert (=> b!1248895 (= res!833230 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27764))))

(declare-fun res!833229 () Bool)

(assert (=> start!104812 (=> (not res!833229) (not e!708789))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104812 (= res!833229 (validMask!0 mask!1466))))

(assert (=> start!104812 e!708789))

(assert (=> start!104812 true))

(assert (=> start!104812 tp!93233))

(assert (=> start!104812 tp_is_empty!31483))

(declare-fun array_inv!29599 (array!80631) Bool)

(assert (=> start!104812 (array_inv!29599 _keys!1118)))

(declare-fun e!708790 () Bool)

(declare-fun array_inv!29600 (array!80633) Bool)

(assert (=> start!104812 (and (array_inv!29600 _values!914) e!708790)))

(declare-fun b!1248896 () Bool)

(declare-fun e!708792 () Bool)

(assert (=> b!1248896 (= e!708792 tp_is_empty!31483)))

(declare-fun mapIsEmpty!48985 () Bool)

(declare-fun mapRes!48985 () Bool)

(assert (=> mapIsEmpty!48985 mapRes!48985))

(declare-fun b!1248897 () Bool)

(assert (=> b!1248897 (= e!708789 false)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((tuple2!20506 0))(
  ( (tuple2!20507 (_1!10263 (_ BitVec 64)) (_2!10263 V!47343)) )
))
(declare-datatypes ((List!27768 0))(
  ( (Nil!27765) (Cons!27764 (h!28973 tuple2!20506) (t!41246 List!27768)) )
))
(declare-datatypes ((ListLongMap!18391 0))(
  ( (ListLongMap!18392 (toList!9211 List!27768)) )
))
(declare-fun lt!563508 () ListLongMap!18391)

(declare-fun minValueAfter!43 () V!47343)

(declare-fun zeroValue!871 () V!47343)

(declare-fun getCurrentListMapNoExtraKeys!5594 (array!80631 array!80633 (_ BitVec 32) (_ BitVec 32) V!47343 V!47343 (_ BitVec 32) Int) ListLongMap!18391)

(assert (=> b!1248897 (= lt!563508 (getCurrentListMapNoExtraKeys!5594 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun lt!563507 () ListLongMap!18391)

(declare-fun minValueBefore!43 () V!47343)

(assert (=> b!1248897 (= lt!563507 (getCurrentListMapNoExtraKeys!5594 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun mapNonEmpty!48985 () Bool)

(declare-fun tp!93234 () Bool)

(assert (=> mapNonEmpty!48985 (= mapRes!48985 (and tp!93234 e!708792))))

(declare-fun mapValue!48985 () ValueCell!14978)

(declare-fun mapKey!48985 () (_ BitVec 32))

(declare-fun mapRest!48985 () (Array (_ BitVec 32) ValueCell!14978))

(assert (=> mapNonEmpty!48985 (= (arr!38879 _values!914) (store mapRest!48985 mapKey!48985 mapValue!48985))))

(declare-fun b!1248898 () Bool)

(assert (=> b!1248898 (= e!708790 (and e!708791 mapRes!48985))))

(declare-fun condMapEmpty!48985 () Bool)

(declare-fun mapDefault!48985 () ValueCell!14978)

