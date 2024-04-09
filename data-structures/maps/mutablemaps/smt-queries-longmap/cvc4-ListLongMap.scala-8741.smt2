; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106068 () Bool)

(assert start!106068)

(declare-fun b_free!27485 () Bool)

(declare-fun b_next!27485 () Bool)

(assert (=> start!106068 (= b_free!27485 (not b_next!27485))))

(declare-fun tp!96002 () Bool)

(declare-fun b_and!45457 () Bool)

(assert (=> start!106068 (= tp!96002 b_and!45457)))

(declare-fun b!1262591 () Bool)

(declare-fun e!718774 () Bool)

(declare-datatypes ((V!48547 0))(
  ( (V!48548 (val!16256 Int)) )
))
(declare-datatypes ((tuple2!21186 0))(
  ( (tuple2!21187 (_1!10603 (_ BitVec 64)) (_2!10603 V!48547)) )
))
(declare-datatypes ((List!28407 0))(
  ( (Nil!28404) (Cons!28403 (h!29612 tuple2!21186) (t!41923 List!28407)) )
))
(declare-datatypes ((ListLongMap!19071 0))(
  ( (ListLongMap!19072 (toList!9551 List!28407)) )
))
(declare-fun lt!572356 () ListLongMap!19071)

(declare-fun contains!7617 (ListLongMap!19071 (_ BitVec 64)) Bool)

(assert (=> b!1262591 (= e!718774 (not (contains!7617 lt!572356 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!718773 () Bool)

(assert (=> b!1262591 e!718773))

(declare-fun res!841211 () Bool)

(assert (=> b!1262591 (=> (not res!841211) (not e!718773))))

(declare-fun minValueBefore!43 () V!48547)

(declare-fun lt!572358 () ListLongMap!19071)

(declare-fun +!4219 (ListLongMap!19071 tuple2!21186) ListLongMap!19071)

(assert (=> b!1262591 (= res!841211 (= lt!572358 (+!4219 lt!572356 (tuple2!21187 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48547)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48547)

(declare-datatypes ((array!82377 0))(
  ( (array!82378 (arr!39732 (Array (_ BitVec 32) (_ BitVec 64))) (size!40269 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!82377)

(declare-datatypes ((ValueCell!15430 0))(
  ( (ValueCellFull!15430 (v!18964 V!48547)) (EmptyCell!15430) )
))
(declare-datatypes ((array!82379 0))(
  ( (array!82380 (arr!39733 (Array (_ BitVec 32) ValueCell!15430)) (size!40270 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!82379)

(declare-fun lt!572357 () ListLongMap!19071)

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun getCurrentListMap!4656 (array!82377 array!82379 (_ BitVec 32) (_ BitVec 32) V!48547 V!48547 (_ BitVec 32) Int) ListLongMap!19071)

(assert (=> b!1262591 (= lt!572357 (getCurrentListMap!4656 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1262591 (= lt!572358 (getCurrentListMap!4656 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1262592 () Bool)

(declare-fun e!718779 () Bool)

(declare-fun tp_is_empty!32387 () Bool)

(assert (=> b!1262592 (= e!718779 tp_is_empty!32387)))

(declare-fun mapNonEmpty!50398 () Bool)

(declare-fun mapRes!50398 () Bool)

(declare-fun tp!96003 () Bool)

(assert (=> mapNonEmpty!50398 (= mapRes!50398 (and tp!96003 e!718779))))

(declare-fun mapRest!50398 () (Array (_ BitVec 32) ValueCell!15430))

(declare-fun mapValue!50398 () ValueCell!15430)

(declare-fun mapKey!50398 () (_ BitVec 32))

(assert (=> mapNonEmpty!50398 (= (arr!39733 _values!914) (store mapRest!50398 mapKey!50398 mapValue!50398))))

(declare-fun mapIsEmpty!50398 () Bool)

(assert (=> mapIsEmpty!50398 mapRes!50398))

(declare-fun res!841210 () Bool)

(declare-fun e!718775 () Bool)

(assert (=> start!106068 (=> (not res!841210) (not e!718775))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!106068 (= res!841210 (validMask!0 mask!1466))))

(assert (=> start!106068 e!718775))

(assert (=> start!106068 true))

(assert (=> start!106068 tp!96002))

(assert (=> start!106068 tp_is_empty!32387))

(declare-fun array_inv!30197 (array!82377) Bool)

(assert (=> start!106068 (array_inv!30197 _keys!1118)))

(declare-fun e!718778 () Bool)

(declare-fun array_inv!30198 (array!82379) Bool)

(assert (=> start!106068 (and (array_inv!30198 _values!914) e!718778)))

(declare-fun b!1262593 () Bool)

(declare-fun res!841215 () Bool)

(assert (=> b!1262593 (=> (not res!841215) (not e!718775))))

(assert (=> b!1262593 (= res!841215 (and (= (size!40270 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40269 _keys!1118) (size!40270 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1262594 () Bool)

(declare-fun lt!572355 () ListLongMap!19071)

(assert (=> b!1262594 (= e!718773 (= lt!572357 lt!572355))))

(declare-fun b!1262595 () Bool)

(declare-fun res!841212 () Bool)

(assert (=> b!1262595 (=> (not res!841212) (not e!718775))))

(declare-datatypes ((List!28408 0))(
  ( (Nil!28405) (Cons!28404 (h!29613 (_ BitVec 64)) (t!41924 List!28408)) )
))
(declare-fun arrayNoDuplicates!0 (array!82377 (_ BitVec 32) List!28408) Bool)

(assert (=> b!1262595 (= res!841212 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28405))))

(declare-fun b!1262596 () Bool)

(assert (=> b!1262596 (= e!718775 (not e!718774))))

(declare-fun res!841213 () Bool)

(assert (=> b!1262596 (=> res!841213 e!718774)))

(assert (=> b!1262596 (= res!841213 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1262596 (= lt!572356 lt!572355)))

(declare-datatypes ((Unit!42036 0))(
  ( (Unit!42037) )
))
(declare-fun lt!572359 () Unit!42036)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1187 (array!82377 array!82379 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48547 V!48547 V!48547 V!48547 (_ BitVec 32) Int) Unit!42036)

(assert (=> b!1262596 (= lt!572359 (lemmaNoChangeToArrayThenSameMapNoExtras!1187 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5891 (array!82377 array!82379 (_ BitVec 32) (_ BitVec 32) V!48547 V!48547 (_ BitVec 32) Int) ListLongMap!19071)

(assert (=> b!1262596 (= lt!572355 (getCurrentListMapNoExtraKeys!5891 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1262596 (= lt!572356 (getCurrentListMapNoExtraKeys!5891 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1262597 () Bool)

(declare-fun res!841214 () Bool)

(assert (=> b!1262597 (=> (not res!841214) (not e!718775))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!82377 (_ BitVec 32)) Bool)

(assert (=> b!1262597 (= res!841214 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1262598 () Bool)

(declare-fun e!718776 () Bool)

(assert (=> b!1262598 (= e!718776 tp_is_empty!32387)))

(declare-fun b!1262599 () Bool)

(assert (=> b!1262599 (= e!718778 (and e!718776 mapRes!50398))))

(declare-fun condMapEmpty!50398 () Bool)

(declare-fun mapDefault!50398 () ValueCell!15430)

