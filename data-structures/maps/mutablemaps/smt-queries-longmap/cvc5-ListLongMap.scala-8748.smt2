; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106202 () Bool)

(assert start!106202)

(declare-fun b_free!27523 () Bool)

(declare-fun b_next!27523 () Bool)

(assert (=> start!106202 (= b_free!27523 (not b_next!27523))))

(declare-fun tp!96131 () Bool)

(declare-fun b_and!45553 () Bool)

(assert (=> start!106202 (= tp!96131 b_and!45553)))

(declare-fun b!1263952 () Bool)

(declare-fun e!719701 () Bool)

(declare-fun tp_is_empty!32425 () Bool)

(assert (=> b!1263952 (= e!719701 tp_is_empty!32425)))

(declare-datatypes ((V!48599 0))(
  ( (V!48600 (val!16275 Int)) )
))
(declare-datatypes ((tuple2!21218 0))(
  ( (tuple2!21219 (_1!10619 (_ BitVec 64)) (_2!10619 V!48599)) )
))
(declare-fun lt!573363 () tuple2!21218)

(declare-fun e!719700 () Bool)

(declare-fun b!1263953 () Bool)

(declare-datatypes ((List!28436 0))(
  ( (Nil!28433) (Cons!28432 (h!29641 tuple2!21218) (t!41962 List!28436)) )
))
(declare-datatypes ((ListLongMap!19103 0))(
  ( (ListLongMap!19104 (toList!9567 List!28436)) )
))
(declare-fun lt!573367 () ListLongMap!19103)

(declare-fun lt!573362 () ListLongMap!19103)

(declare-fun +!4232 (ListLongMap!19103 tuple2!21218) ListLongMap!19103)

(assert (=> b!1263953 (= e!719700 (= lt!573367 (+!4232 lt!573362 lt!573363)))))

(declare-fun b!1263954 () Bool)

(declare-fun res!841885 () Bool)

(declare-fun e!719703 () Bool)

(assert (=> b!1263954 (=> (not res!841885) (not e!719703))))

(declare-datatypes ((array!82461 0))(
  ( (array!82462 (arr!39769 (Array (_ BitVec 32) (_ BitVec 64))) (size!40306 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82461)

(declare-datatypes ((List!28437 0))(
  ( (Nil!28434) (Cons!28433 (h!29642 (_ BitVec 64)) (t!41963 List!28437)) )
))
(declare-fun arrayNoDuplicates!0 (array!82461 (_ BitVec 32) List!28437) Bool)

(assert (=> b!1263954 (= res!841885 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28434))))

(declare-fun b!1263955 () Bool)

(declare-fun e!719702 () Bool)

(assert (=> b!1263955 (= e!719703 (not e!719702))))

(declare-fun res!841889 () Bool)

(assert (=> b!1263955 (=> res!841889 e!719702)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1263955 (= res!841889 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!573365 () ListLongMap!19103)

(assert (=> b!1263955 (= lt!573365 lt!573362)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48599)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48599)

(declare-datatypes ((ValueCell!15449 0))(
  ( (ValueCellFull!15449 (v!18988 V!48599)) (EmptyCell!15449) )
))
(declare-datatypes ((array!82463 0))(
  ( (array!82464 (arr!39770 (Array (_ BitVec 32) ValueCell!15449)) (size!40307 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82463)

(declare-datatypes ((Unit!42078 0))(
  ( (Unit!42079) )
))
(declare-fun lt!573361 () Unit!42078)

(declare-fun minValueBefore!43 () V!48599)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1202 (array!82461 array!82463 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48599 V!48599 V!48599 V!48599 (_ BitVec 32) Int) Unit!42078)

(assert (=> b!1263955 (= lt!573361 (lemmaNoChangeToArrayThenSameMapNoExtras!1202 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5906 (array!82461 array!82463 (_ BitVec 32) (_ BitVec 32) V!48599 V!48599 (_ BitVec 32) Int) ListLongMap!19103)

(assert (=> b!1263955 (= lt!573362 (getCurrentListMapNoExtraKeys!5906 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1263955 (= lt!573365 (getCurrentListMapNoExtraKeys!5906 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1263956 () Bool)

(declare-fun res!841886 () Bool)

(assert (=> b!1263956 (=> (not res!841886) (not e!719703))))

(assert (=> b!1263956 (= res!841886 (and (= (size!40307 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40306 _keys!1118) (size!40307 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!841888 () Bool)

(assert (=> start!106202 (=> (not res!841888) (not e!719703))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106202 (= res!841888 (validMask!0 mask!1466))))

(assert (=> start!106202 e!719703))

(assert (=> start!106202 true))

(assert (=> start!106202 tp!96131))

(assert (=> start!106202 tp_is_empty!32425))

(declare-fun array_inv!30225 (array!82461) Bool)

(assert (=> start!106202 (array_inv!30225 _keys!1118)))

(declare-fun e!719699 () Bool)

(declare-fun array_inv!30226 (array!82463) Bool)

(assert (=> start!106202 (and (array_inv!30226 _values!914) e!719699)))

(declare-fun mapNonEmpty!50470 () Bool)

(declare-fun mapRes!50470 () Bool)

(declare-fun tp!96132 () Bool)

(assert (=> mapNonEmpty!50470 (= mapRes!50470 (and tp!96132 e!719701))))

(declare-fun mapValue!50470 () ValueCell!15449)

(declare-fun mapKey!50470 () (_ BitVec 32))

(declare-fun mapRest!50470 () (Array (_ BitVec 32) ValueCell!15449))

(assert (=> mapNonEmpty!50470 (= (arr!39770 _values!914) (store mapRest!50470 mapKey!50470 mapValue!50470))))

(declare-fun b!1263957 () Bool)

(declare-fun res!841887 () Bool)

(assert (=> b!1263957 (=> (not res!841887) (not e!719703))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82461 (_ BitVec 32)) Bool)

(assert (=> b!1263957 (= res!841887 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1263958 () Bool)

(declare-fun e!719697 () Bool)

(assert (=> b!1263958 (= e!719697 tp_is_empty!32425)))

(declare-fun b!1263959 () Bool)

(declare-fun lt!573364 () ListLongMap!19103)

(declare-fun contains!7630 (ListLongMap!19103 (_ BitVec 64)) Bool)

(assert (=> b!1263959 (= e!719702 (not (contains!7630 lt!573364 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1263959 e!719700))

(declare-fun res!841884 () Bool)

(assert (=> b!1263959 (=> (not res!841884) (not e!719700))))

(declare-fun lt!573366 () ListLongMap!19103)

(assert (=> b!1263959 (= res!841884 (= lt!573366 (+!4232 lt!573364 (tuple2!21219 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(assert (=> b!1263959 (= lt!573364 (+!4232 lt!573365 lt!573363))))

(assert (=> b!1263959 (= lt!573363 (tuple2!21219 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))

(declare-fun getCurrentListMap!4670 (array!82461 array!82463 (_ BitVec 32) (_ BitVec 32) V!48599 V!48599 (_ BitVec 32) Int) ListLongMap!19103)

(assert (=> b!1263959 (= lt!573367 (getCurrentListMap!4670 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1263959 (= lt!573366 (getCurrentListMap!4670 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1263960 () Bool)

(assert (=> b!1263960 (= e!719699 (and e!719697 mapRes!50470))))

(declare-fun condMapEmpty!50470 () Bool)

(declare-fun mapDefault!50470 () ValueCell!15449)

