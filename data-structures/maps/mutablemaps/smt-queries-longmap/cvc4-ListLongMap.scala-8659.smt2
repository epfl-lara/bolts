; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105334 () Bool)

(assert start!105334)

(declare-fun b_free!26993 () Bool)

(declare-fun b_next!26993 () Bool)

(assert (=> start!105334 (= b_free!26993 (not b_next!26993))))

(declare-fun tp!94488 () Bool)

(declare-fun b_and!44829 () Bool)

(assert (=> start!105334 (= tp!94488 b_and!44829)))

(declare-fun b!1254635 () Bool)

(declare-fun e!713006 () Bool)

(declare-fun e!713005 () Bool)

(assert (=> b!1254635 (= e!713006 e!713005)))

(declare-fun res!836628 () Bool)

(assert (=> b!1254635 (=> res!836628 e!713005)))

(declare-datatypes ((V!47891 0))(
  ( (V!47892 (val!16010 Int)) )
))
(declare-datatypes ((tuple2!20814 0))(
  ( (tuple2!20815 (_1!10417 (_ BitVec 64)) (_2!10417 V!47891)) )
))
(declare-datatypes ((List!28055 0))(
  ( (Nil!28052) (Cons!28051 (h!29260 tuple2!20814) (t!41545 List!28055)) )
))
(declare-datatypes ((ListLongMap!18699 0))(
  ( (ListLongMap!18700 (toList!9365 List!28055)) )
))
(declare-fun lt!567138 () ListLongMap!18699)

(declare-fun lt!567139 () ListLongMap!18699)

(declare-fun -!2073 (ListLongMap!18699 (_ BitVec 64)) ListLongMap!18699)

(assert (=> b!1254635 (= res!836628 (not (= (-!2073 lt!567138 #b1000000000000000000000000000000000000000000000000000000000000000) lt!567139)))))

(declare-fun lt!567137 () ListLongMap!18699)

(declare-fun lt!567140 () ListLongMap!18699)

(assert (=> b!1254635 (= (-!2073 lt!567137 #b1000000000000000000000000000000000000000000000000000000000000000) lt!567140)))

(declare-datatypes ((Unit!41702 0))(
  ( (Unit!41703) )
))
(declare-fun lt!567143 () Unit!41702)

(declare-fun minValueBefore!43 () V!47891)

(declare-fun addThenRemoveForNewKeyIsSame!333 (ListLongMap!18699 (_ BitVec 64) V!47891) Unit!41702)

(assert (=> b!1254635 (= lt!567143 (addThenRemoveForNewKeyIsSame!333 lt!567140 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!567142 () ListLongMap!18699)

(assert (=> b!1254635 (and (= lt!567138 lt!567137) (= lt!567139 lt!567142))))

(declare-fun +!4164 (ListLongMap!18699 tuple2!20814) ListLongMap!18699)

(assert (=> b!1254635 (= lt!567137 (+!4164 lt!567140 (tuple2!20815 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47891)

(declare-fun zeroValue!871 () V!47891)

(declare-datatypes ((array!81423 0))(
  ( (array!81424 (arr!39268 (Array (_ BitVec 32) (_ BitVec 64))) (size!39805 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81423)

(declare-datatypes ((ValueCell!15184 0))(
  ( (ValueCellFull!15184 (v!18709 V!47891)) (EmptyCell!15184) )
))
(declare-datatypes ((array!81425 0))(
  ( (array!81426 (arr!39269 (Array (_ BitVec 32) ValueCell!15184)) (size!39806 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81425)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun getCurrentListMap!4551 (array!81423 array!81425 (_ BitVec 32) (_ BitVec 32) V!47891 V!47891 (_ BitVec 32) Int) ListLongMap!18699)

(assert (=> b!1254635 (= lt!567139 (getCurrentListMap!4551 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1254635 (= lt!567138 (getCurrentListMap!4551 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1254636 () Bool)

(declare-fun res!836626 () Bool)

(declare-fun e!713004 () Bool)

(assert (=> b!1254636 (=> (not res!836626) (not e!713004))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81423 (_ BitVec 32)) Bool)

(assert (=> b!1254636 (= res!836626 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1254637 () Bool)

(assert (=> b!1254637 (= e!713004 (not e!713006))))

(declare-fun res!836631 () Bool)

(assert (=> b!1254637 (=> res!836631 e!713006)))

(assert (=> b!1254637 (= res!836631 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1254637 (= lt!567140 lt!567142)))

(declare-fun lt!567141 () Unit!41702)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1044 (array!81423 array!81425 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47891 V!47891 V!47891 V!47891 (_ BitVec 32) Int) Unit!41702)

(assert (=> b!1254637 (= lt!567141 (lemmaNoChangeToArrayThenSameMapNoExtras!1044 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5726 (array!81423 array!81425 (_ BitVec 32) (_ BitVec 32) V!47891 V!47891 (_ BitVec 32) Int) ListLongMap!18699)

(assert (=> b!1254637 (= lt!567142 (getCurrentListMapNoExtraKeys!5726 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1254637 (= lt!567140 (getCurrentListMapNoExtraKeys!5726 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1254638 () Bool)

(declare-fun e!713003 () Bool)

(declare-fun e!713002 () Bool)

(declare-fun mapRes!49621 () Bool)

(assert (=> b!1254638 (= e!713003 (and e!713002 mapRes!49621))))

(declare-fun condMapEmpty!49621 () Bool)

(declare-fun mapDefault!49621 () ValueCell!15184)

