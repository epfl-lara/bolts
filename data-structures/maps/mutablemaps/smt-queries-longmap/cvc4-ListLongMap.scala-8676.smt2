; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105472 () Bool)

(assert start!105472)

(declare-fun b_free!27095 () Bool)

(declare-fun b_next!27095 () Bool)

(assert (=> start!105472 (= b_free!27095 (not b_next!27095))))

(declare-fun tp!94800 () Bool)

(declare-fun b_and!44951 () Bool)

(assert (=> start!105472 (= tp!94800 b_and!44951)))

(declare-fun b!1256101 () Bool)

(declare-fun e!714071 () Bool)

(declare-fun tp_is_empty!31997 () Bool)

(assert (=> b!1256101 (= e!714071 tp_is_empty!31997)))

(declare-fun mapIsEmpty!49780 () Bool)

(declare-fun mapRes!49780 () Bool)

(assert (=> mapIsEmpty!49780 mapRes!49780))

(declare-fun b!1256102 () Bool)

(declare-fun res!837482 () Bool)

(declare-fun e!714067 () Bool)

(assert (=> b!1256102 (=> (not res!837482) (not e!714067))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((V!48027 0))(
  ( (V!48028 (val!16061 Int)) )
))
(declare-datatypes ((ValueCell!15235 0))(
  ( (ValueCellFull!15235 (v!18761 V!48027)) (EmptyCell!15235) )
))
(declare-datatypes ((array!81627 0))(
  ( (array!81628 (arr!39368 (Array (_ BitVec 32) ValueCell!15235)) (size!39905 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81627)

(declare-datatypes ((array!81629 0))(
  ( (array!81630 (arr!39369 (Array (_ BitVec 32) (_ BitVec 64))) (size!39906 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81629)

(assert (=> b!1256102 (= res!837482 (and (= (size!39905 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39906 _keys!1118) (size!39905 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1256103 () Bool)

(declare-fun e!714068 () Bool)

(declare-fun e!714073 () Bool)

(assert (=> b!1256103 (= e!714068 e!714073)))

(declare-fun res!837477 () Bool)

(assert (=> b!1256103 (=> res!837477 e!714073)))

(declare-datatypes ((tuple2!20896 0))(
  ( (tuple2!20897 (_1!10458 (_ BitVec 64)) (_2!10458 V!48027)) )
))
(declare-datatypes ((List!28131 0))(
  ( (Nil!28128) (Cons!28127 (h!29336 tuple2!20896) (t!41625 List!28131)) )
))
(declare-datatypes ((ListLongMap!18781 0))(
  ( (ListLongMap!18782 (toList!9406 List!28131)) )
))
(declare-fun lt!567922 () ListLongMap!18781)

(declare-fun contains!7562 (ListLongMap!18781 (_ BitVec 64)) Bool)

(assert (=> b!1256103 (= res!837477 (contains!7562 lt!567922 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun defaultEntry!922 () Int)

(declare-fun zeroValue!871 () V!48027)

(declare-fun minValueBefore!43 () V!48027)

(declare-fun getCurrentListMap!4567 (array!81629 array!81627 (_ BitVec 32) (_ BitVec 32) V!48027 V!48027 (_ BitVec 32) Int) ListLongMap!18781)

(assert (=> b!1256103 (= lt!567922 (getCurrentListMap!4567 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256104 () Bool)

(declare-fun res!837480 () Bool)

(assert (=> b!1256104 (=> (not res!837480) (not e!714067))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81629 (_ BitVec 32)) Bool)

(assert (=> b!1256104 (= res!837480 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1256105 () Bool)

(assert (=> b!1256105 (= e!714067 (not e!714068))))

(declare-fun res!837481 () Bool)

(assert (=> b!1256105 (=> res!837481 e!714068)))

(assert (=> b!1256105 (= res!837481 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!567920 () ListLongMap!18781)

(declare-fun lt!567924 () ListLongMap!18781)

(assert (=> b!1256105 (= lt!567920 lt!567924)))

(declare-fun minValueAfter!43 () V!48027)

(declare-datatypes ((Unit!41784 0))(
  ( (Unit!41785) )
))
(declare-fun lt!567921 () Unit!41784)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1080 (array!81629 array!81627 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48027 V!48027 V!48027 V!48027 (_ BitVec 32) Int) Unit!41784)

(assert (=> b!1256105 (= lt!567921 (lemmaNoChangeToArrayThenSameMapNoExtras!1080 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5762 (array!81629 array!81627 (_ BitVec 32) (_ BitVec 32) V!48027 V!48027 (_ BitVec 32) Int) ListLongMap!18781)

(assert (=> b!1256105 (= lt!567924 (getCurrentListMapNoExtraKeys!5762 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1256105 (= lt!567920 (getCurrentListMapNoExtraKeys!5762 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1256107 () Bool)

(declare-fun res!837478 () Bool)

(assert (=> b!1256107 (=> (not res!837478) (not e!714067))))

(declare-datatypes ((List!28132 0))(
  ( (Nil!28129) (Cons!28128 (h!29337 (_ BitVec 64)) (t!41626 List!28132)) )
))
(declare-fun arrayNoDuplicates!0 (array!81629 (_ BitVec 32) List!28132) Bool)

(assert (=> b!1256107 (= res!837478 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28129))))

(declare-fun b!1256108 () Bool)

(declare-fun e!714070 () Bool)

(declare-fun e!714072 () Bool)

(assert (=> b!1256108 (= e!714070 (and e!714072 mapRes!49780))))

(declare-fun condMapEmpty!49780 () Bool)

(declare-fun mapDefault!49780 () ValueCell!15235)

