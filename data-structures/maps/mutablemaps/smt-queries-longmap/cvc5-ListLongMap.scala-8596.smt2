; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!104842 () Bool)

(assert start!104842)

(declare-fun b_free!26611 () Bool)

(declare-fun b_next!26611 () Bool)

(assert (=> start!104842 (= b_free!26611 (not b_next!26611))))

(declare-fun tp!93324 () Bool)

(declare-fun b_and!44389 () Bool)

(assert (=> start!104842 (= tp!93324 b_and!44389)))

(declare-fun b!1249207 () Bool)

(declare-fun e!709014 () Bool)

(assert (=> b!1249207 (= e!709014 (not true))))

(declare-datatypes ((V!47383 0))(
  ( (V!47384 (val!15819 Int)) )
))
(declare-datatypes ((tuple2!20524 0))(
  ( (tuple2!20525 (_1!10272 (_ BitVec 64)) (_2!10272 V!47383)) )
))
(declare-datatypes ((List!27784 0))(
  ( (Nil!27781) (Cons!27780 (h!28989 tuple2!20524) (t!41262 List!27784)) )
))
(declare-datatypes ((ListLongMap!18409 0))(
  ( (ListLongMap!18410 (toList!9220 List!27784)) )
))
(declare-fun lt!563609 () ListLongMap!18409)

(declare-fun lt!563608 () ListLongMap!18409)

(assert (=> b!1249207 (= lt!563609 lt!563608)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun minValueAfter!43 () V!47383)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47383)

(declare-datatypes ((array!80685 0))(
  ( (array!80686 (arr!38905 (Array (_ BitVec 32) (_ BitVec 64))) (size!39442 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!80685)

(declare-datatypes ((ValueCell!14993 0))(
  ( (ValueCellFull!14993 (v!18515 V!47383)) (EmptyCell!14993) )
))
(declare-datatypes ((array!80687 0))(
  ( (array!80688 (arr!38906 (Array (_ BitVec 32) ValueCell!14993)) (size!39443 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!80687)

(declare-fun minValueBefore!43 () V!47383)

(declare-datatypes ((Unit!41423 0))(
  ( (Unit!41424) )
))
(declare-fun lt!563610 () Unit!41423)

(declare-fun defaultEntry!922 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!921 (array!80685 array!80687 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47383 V!47383 V!47383 V!47383 (_ BitVec 32) Int) Unit!41423)

(assert (=> b!1249207 (= lt!563610 (lemmaNoChangeToArrayThenSameMapNoExtras!921 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5603 (array!80685 array!80687 (_ BitVec 32) (_ BitVec 32) V!47383 V!47383 (_ BitVec 32) Int) ListLongMap!18409)

(assert (=> b!1249207 (= lt!563608 (getCurrentListMapNoExtraKeys!5603 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1249207 (= lt!563609 (getCurrentListMapNoExtraKeys!5603 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1249208 () Bool)

(declare-fun res!833409 () Bool)

(assert (=> b!1249208 (=> (not res!833409) (not e!709014))))

(assert (=> b!1249208 (= res!833409 (and (= (size!39443 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39442 _keys!1118) (size!39443 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!49030 () Bool)

(declare-fun mapRes!49030 () Bool)

(declare-fun tp!93323 () Bool)

(declare-fun e!709013 () Bool)

(assert (=> mapNonEmpty!49030 (= mapRes!49030 (and tp!93323 e!709013))))

(declare-fun mapValue!49030 () ValueCell!14993)

(declare-fun mapRest!49030 () (Array (_ BitVec 32) ValueCell!14993))

(declare-fun mapKey!49030 () (_ BitVec 32))

(assert (=> mapNonEmpty!49030 (= (arr!38906 _values!914) (store mapRest!49030 mapKey!49030 mapValue!49030))))

(declare-fun b!1249209 () Bool)

(declare-fun tp_is_empty!31513 () Bool)

(assert (=> b!1249209 (= e!709013 tp_is_empty!31513)))

(declare-fun mapIsEmpty!49030 () Bool)

(assert (=> mapIsEmpty!49030 mapRes!49030))

(declare-fun res!833412 () Bool)

(assert (=> start!104842 (=> (not res!833412) (not e!709014))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!104842 (= res!833412 (validMask!0 mask!1466))))

(assert (=> start!104842 e!709014))

(assert (=> start!104842 true))

(assert (=> start!104842 tp!93324))

(assert (=> start!104842 tp_is_empty!31513))

(declare-fun array_inv!29621 (array!80685) Bool)

(assert (=> start!104842 (array_inv!29621 _keys!1118)))

(declare-fun e!709016 () Bool)

(declare-fun array_inv!29622 (array!80687) Bool)

(assert (=> start!104842 (and (array_inv!29622 _values!914) e!709016)))

(declare-fun b!1249210 () Bool)

(declare-fun e!709017 () Bool)

(assert (=> b!1249210 (= e!709017 tp_is_empty!31513)))

(declare-fun b!1249211 () Bool)

(declare-fun res!833411 () Bool)

(assert (=> b!1249211 (=> (not res!833411) (not e!709014))))

(declare-datatypes ((List!27785 0))(
  ( (Nil!27782) (Cons!27781 (h!28990 (_ BitVec 64)) (t!41263 List!27785)) )
))
(declare-fun arrayNoDuplicates!0 (array!80685 (_ BitVec 32) List!27785) Bool)

(assert (=> b!1249211 (= res!833411 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27782))))

(declare-fun b!1249212 () Bool)

(assert (=> b!1249212 (= e!709016 (and e!709017 mapRes!49030))))

(declare-fun condMapEmpty!49030 () Bool)

(declare-fun mapDefault!49030 () ValueCell!14993)

