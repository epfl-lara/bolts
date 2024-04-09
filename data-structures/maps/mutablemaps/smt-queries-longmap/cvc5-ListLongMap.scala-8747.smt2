; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106178 () Bool)

(assert start!106178)

(declare-fun b_free!27517 () Bool)

(declare-fun b_next!27517 () Bool)

(assert (=> start!106178 (= b_free!27517 (not b_next!27517))))

(declare-fun tp!96111 () Bool)

(declare-fun b_and!45535 () Bool)

(assert (=> start!106178 (= tp!96111 b_and!45535)))

(declare-fun b!1263685 () Bool)

(declare-fun res!841747 () Bool)

(declare-fun e!719518 () Bool)

(assert (=> b!1263685 (=> (not res!841747) (not e!719518))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!82447 0))(
  ( (array!82448 (arr!39763 (Array (_ BitVec 32) (_ BitVec 64))) (size!40300 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82447)

(declare-datatypes ((V!48591 0))(
  ( (V!48592 (val!16272 Int)) )
))
(declare-datatypes ((ValueCell!15446 0))(
  ( (ValueCellFull!15446 (v!18984 V!48591)) (EmptyCell!15446) )
))
(declare-datatypes ((array!82449 0))(
  ( (array!82450 (arr!39764 (Array (_ BitVec 32) ValueCell!15446)) (size!40301 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82449)

(assert (=> b!1263685 (= res!841747 (and (= (size!40301 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40300 _keys!1118) (size!40301 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1263686 () Bool)

(declare-fun res!841746 () Bool)

(assert (=> b!1263686 (=> (not res!841746) (not e!719518))))

(declare-datatypes ((List!28430 0))(
  ( (Nil!28427) (Cons!28426 (h!29635 (_ BitVec 64)) (t!41954 List!28430)) )
))
(declare-fun arrayNoDuplicates!0 (array!82447 (_ BitVec 32) List!28430) Bool)

(assert (=> b!1263686 (= res!841746 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28427))))

(declare-fun mapNonEmpty!50458 () Bool)

(declare-fun mapRes!50458 () Bool)

(declare-fun tp!96110 () Bool)

(declare-fun e!719521 () Bool)

(assert (=> mapNonEmpty!50458 (= mapRes!50458 (and tp!96110 e!719521))))

(declare-fun mapValue!50458 () ValueCell!15446)

(declare-fun mapKey!50458 () (_ BitVec 32))

(declare-fun mapRest!50458 () (Array (_ BitVec 32) ValueCell!15446))

(assert (=> mapNonEmpty!50458 (= (arr!39764 _values!914) (store mapRest!50458 mapKey!50458 mapValue!50458))))

(declare-fun b!1263687 () Bool)

(declare-fun e!719520 () Bool)

(assert (=> b!1263687 (= e!719518 (not e!719520))))

(declare-fun res!841748 () Bool)

(assert (=> b!1263687 (=> res!841748 e!719520)))

(assert (=> b!1263687 (= res!841748 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!719517 () Bool)

(assert (=> b!1263687 e!719517))

(declare-fun res!841751 () Bool)

(assert (=> b!1263687 (=> (not res!841751) (not e!719517))))

(declare-datatypes ((tuple2!21212 0))(
  ( (tuple2!21213 (_1!10616 (_ BitVec 64)) (_2!10616 V!48591)) )
))
(declare-datatypes ((List!28431 0))(
  ( (Nil!28428) (Cons!28427 (h!29636 tuple2!21212) (t!41955 List!28431)) )
))
(declare-datatypes ((ListLongMap!19097 0))(
  ( (ListLongMap!19098 (toList!9564 List!28431)) )
))
(declare-fun lt!573180 () ListLongMap!19097)

(declare-fun lt!573178 () ListLongMap!19097)

(assert (=> b!1263687 (= res!841751 (= lt!573180 lt!573178))))

(declare-fun minValueAfter!43 () V!48591)

(declare-fun zeroValue!871 () V!48591)

(declare-fun minValueBefore!43 () V!48591)

(declare-datatypes ((Unit!42070 0))(
  ( (Unit!42071) )
))
(declare-fun lt!573179 () Unit!42070)

(declare-fun defaultEntry!922 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1199 (array!82447 array!82449 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48591 V!48591 V!48591 V!48591 (_ BitVec 32) Int) Unit!42070)

(assert (=> b!1263687 (= lt!573179 (lemmaNoChangeToArrayThenSameMapNoExtras!1199 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5903 (array!82447 array!82449 (_ BitVec 32) (_ BitVec 32) V!48591 V!48591 (_ BitVec 32) Int) ListLongMap!19097)

(assert (=> b!1263687 (= lt!573178 (getCurrentListMapNoExtraKeys!5903 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1263687 (= lt!573180 (getCurrentListMapNoExtraKeys!5903 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!841752 () Bool)

(assert (=> start!106178 (=> (not res!841752) (not e!719518))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106178 (= res!841752 (validMask!0 mask!1466))))

(assert (=> start!106178 e!719518))

(assert (=> start!106178 true))

(assert (=> start!106178 tp!96111))

(declare-fun tp_is_empty!32419 () Bool)

(assert (=> start!106178 tp_is_empty!32419))

(declare-fun array_inv!30221 (array!82447) Bool)

(assert (=> start!106178 (array_inv!30221 _keys!1118)))

(declare-fun e!719515 () Bool)

(declare-fun array_inv!30222 (array!82449) Bool)

(assert (=> start!106178 (and (array_inv!30222 _values!914) e!719515)))

(declare-fun b!1263688 () Bool)

(declare-fun res!841750 () Bool)

(assert (=> b!1263688 (=> (not res!841750) (not e!719518))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82447 (_ BitVec 32)) Bool)

(assert (=> b!1263688 (= res!841750 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1263689 () Bool)

(assert (=> b!1263689 (= e!719521 tp_is_empty!32419)))

(declare-fun b!1263690 () Bool)

(declare-fun e!719519 () Bool)

(declare-fun getCurrentListMap!4667 (array!82447 array!82449 (_ BitVec 32) (_ BitVec 32) V!48591 V!48591 (_ BitVec 32) Int) ListLongMap!19097)

(declare-fun +!4229 (ListLongMap!19097 tuple2!21212) ListLongMap!19097)

(assert (=> b!1263690 (= e!719519 (= (getCurrentListMap!4667 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922) (+!4229 (+!4229 lt!573180 (tuple2!21213 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871)) (tuple2!21213 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun b!1263691 () Bool)

(assert (=> b!1263691 (= e!719520 (= (getCurrentListMap!4667 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922) (+!4229 lt!573178 (tuple2!21213 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!871))))))

(declare-fun b!1263692 () Bool)

(assert (=> b!1263692 (= e!719517 e!719519)))

(declare-fun res!841749 () Bool)

(assert (=> b!1263692 (=> res!841749 e!719519)))

(assert (=> b!1263692 (= res!841749 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!50458 () Bool)

(assert (=> mapIsEmpty!50458 mapRes!50458))

(declare-fun b!1263693 () Bool)

(declare-fun e!719516 () Bool)

(assert (=> b!1263693 (= e!719515 (and e!719516 mapRes!50458))))

(declare-fun condMapEmpty!50458 () Bool)

(declare-fun mapDefault!50458 () ValueCell!15446)

