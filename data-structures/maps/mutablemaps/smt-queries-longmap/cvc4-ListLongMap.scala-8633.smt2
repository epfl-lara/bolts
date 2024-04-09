; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105140 () Bool)

(assert start!105140)

(declare-fun b_free!26837 () Bool)

(declare-fun b_next!26837 () Bool)

(assert (=> start!105140 (= b_free!26837 (not b_next!26837))))

(declare-fun tp!94013 () Bool)

(declare-fun b_and!44651 () Bool)

(assert (=> start!105140 (= tp!94013 b_and!44651)))

(declare-fun mapIsEmpty!49381 () Bool)

(declare-fun mapRes!49381 () Bool)

(assert (=> mapIsEmpty!49381 mapRes!49381))

(declare-fun res!835300 () Bool)

(declare-fun e!711370 () Bool)

(assert (=> start!105140 (=> (not res!835300) (not e!711370))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105140 (= res!835300 (validMask!0 mask!1466))))

(assert (=> start!105140 e!711370))

(assert (=> start!105140 true))

(assert (=> start!105140 tp!94013))

(declare-fun tp_is_empty!31739 () Bool)

(assert (=> start!105140 tp_is_empty!31739))

(declare-datatypes ((array!81119 0))(
  ( (array!81120 (arr!39118 (Array (_ BitVec 32) (_ BitVec 64))) (size!39655 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81119)

(declare-fun array_inv!29767 (array!81119) Bool)

(assert (=> start!105140 (array_inv!29767 _keys!1118)))

(declare-datatypes ((V!47683 0))(
  ( (V!47684 (val!15932 Int)) )
))
(declare-datatypes ((ValueCell!15106 0))(
  ( (ValueCellFull!15106 (v!18630 V!47683)) (EmptyCell!15106) )
))
(declare-datatypes ((array!81121 0))(
  ( (array!81122 (arr!39119 (Array (_ BitVec 32) ValueCell!15106)) (size!39656 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81121)

(declare-fun e!711371 () Bool)

(declare-fun array_inv!29768 (array!81121) Bool)

(assert (=> start!105140 (and (array_inv!29768 _values!914) e!711371)))

(declare-fun b!1252414 () Bool)

(declare-fun e!711373 () Bool)

(assert (=> b!1252414 (= e!711370 (not e!711373))))

(declare-fun res!835301 () Bool)

(assert (=> b!1252414 (=> res!835301 e!711373)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1252414 (= res!835301 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!20692 0))(
  ( (tuple2!20693 (_1!10356 (_ BitVec 64)) (_2!10356 V!47683)) )
))
(declare-datatypes ((List!27942 0))(
  ( (Nil!27939) (Cons!27938 (h!29147 tuple2!20692) (t!41428 List!27942)) )
))
(declare-datatypes ((ListLongMap!18577 0))(
  ( (ListLongMap!18578 (toList!9304 List!27942)) )
))
(declare-fun lt!565305 () ListLongMap!18577)

(declare-fun lt!565306 () ListLongMap!18577)

(assert (=> b!1252414 (= lt!565305 lt!565306)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47683)

(declare-datatypes ((Unit!41585 0))(
  ( (Unit!41586) )
))
(declare-fun lt!565304 () Unit!41585)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47683)

(declare-fun minValueBefore!43 () V!47683)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!995 (array!81119 array!81121 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47683 V!47683 V!47683 V!47683 (_ BitVec 32) Int) Unit!41585)

(assert (=> b!1252414 (= lt!565304 (lemmaNoChangeToArrayThenSameMapNoExtras!995 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5677 (array!81119 array!81121 (_ BitVec 32) (_ BitVec 32) V!47683 V!47683 (_ BitVec 32) Int) ListLongMap!18577)

(assert (=> b!1252414 (= lt!565306 (getCurrentListMapNoExtraKeys!5677 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1252414 (= lt!565305 (getCurrentListMapNoExtraKeys!5677 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252415 () Bool)

(declare-fun res!835303 () Bool)

(assert (=> b!1252415 (=> (not res!835303) (not e!711370))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81119 (_ BitVec 32)) Bool)

(assert (=> b!1252415 (= res!835303 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1252416 () Bool)

(declare-fun res!835299 () Bool)

(assert (=> b!1252416 (=> (not res!835299) (not e!711370))))

(assert (=> b!1252416 (= res!835299 (and (= (size!39656 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39655 _keys!1118) (size!39656 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1252417 () Bool)

(declare-fun res!835302 () Bool)

(assert (=> b!1252417 (=> (not res!835302) (not e!711370))))

(declare-datatypes ((List!27943 0))(
  ( (Nil!27940) (Cons!27939 (h!29148 (_ BitVec 64)) (t!41429 List!27943)) )
))
(declare-fun arrayNoDuplicates!0 (array!81119 (_ BitVec 32) List!27943) Bool)

(assert (=> b!1252417 (= res!835302 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27940))))

(declare-fun b!1252418 () Bool)

(declare-fun e!711369 () Bool)

(assert (=> b!1252418 (= e!711371 (and e!711369 mapRes!49381))))

(declare-fun condMapEmpty!49381 () Bool)

(declare-fun mapDefault!49381 () ValueCell!15106)

