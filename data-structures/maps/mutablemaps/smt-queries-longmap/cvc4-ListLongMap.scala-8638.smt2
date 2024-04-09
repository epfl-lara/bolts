; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105170 () Bool)

(assert start!105170)

(declare-fun b_free!26867 () Bool)

(declare-fun b_next!26867 () Bool)

(assert (=> start!105170 (= b_free!26867 (not b_next!26867))))

(declare-fun tp!94103 () Bool)

(declare-fun b_and!44681 () Bool)

(assert (=> start!105170 (= tp!94103 b_and!44681)))

(declare-fun b!1252774 () Bool)

(declare-fun e!711639 () Bool)

(declare-fun tp_is_empty!31769 () Bool)

(assert (=> b!1252774 (= e!711639 tp_is_empty!31769)))

(declare-fun b!1252775 () Bool)

(declare-fun res!835527 () Bool)

(declare-fun e!711641 () Bool)

(assert (=> b!1252775 (=> (not res!835527) (not e!711641))))

(declare-datatypes ((array!81179 0))(
  ( (array!81180 (arr!39148 (Array (_ BitVec 32) (_ BitVec 64))) (size!39685 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81179)

(declare-datatypes ((List!27967 0))(
  ( (Nil!27964) (Cons!27963 (h!29172 (_ BitVec 64)) (t!41453 List!27967)) )
))
(declare-fun arrayNoDuplicates!0 (array!81179 (_ BitVec 32) List!27967) Bool)

(assert (=> b!1252775 (= res!835527 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27964))))

(declare-fun b!1252776 () Bool)

(declare-fun e!711640 () Bool)

(assert (=> b!1252776 (= e!711641 (not e!711640))))

(declare-fun res!835526 () Bool)

(assert (=> b!1252776 (=> res!835526 e!711640)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1252776 (= res!835526 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!47723 0))(
  ( (V!47724 (val!15947 Int)) )
))
(declare-datatypes ((tuple2!20720 0))(
  ( (tuple2!20721 (_1!10370 (_ BitVec 64)) (_2!10370 V!47723)) )
))
(declare-datatypes ((List!27968 0))(
  ( (Nil!27965) (Cons!27964 (h!29173 tuple2!20720) (t!41454 List!27968)) )
))
(declare-datatypes ((ListLongMap!18605 0))(
  ( (ListLongMap!18606 (toList!9318 List!27968)) )
))
(declare-fun lt!565484 () ListLongMap!18605)

(declare-fun lt!565486 () ListLongMap!18605)

(assert (=> b!1252776 (= lt!565484 lt!565486)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41609 0))(
  ( (Unit!41610) )
))
(declare-fun lt!565483 () Unit!41609)

(declare-fun minValueAfter!43 () V!47723)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47723)

(declare-datatypes ((ValueCell!15121 0))(
  ( (ValueCellFull!15121 (v!18645 V!47723)) (EmptyCell!15121) )
))
(declare-datatypes ((array!81181 0))(
  ( (array!81182 (arr!39149 (Array (_ BitVec 32) ValueCell!15121)) (size!39686 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81181)

(declare-fun minValueBefore!43 () V!47723)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1007 (array!81179 array!81181 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47723 V!47723 V!47723 V!47723 (_ BitVec 32) Int) Unit!41609)

(assert (=> b!1252776 (= lt!565483 (lemmaNoChangeToArrayThenSameMapNoExtras!1007 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5689 (array!81179 array!81181 (_ BitVec 32) (_ BitVec 32) V!47723 V!47723 (_ BitVec 32) Int) ListLongMap!18605)

(assert (=> b!1252776 (= lt!565486 (getCurrentListMapNoExtraKeys!5689 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1252776 (= lt!565484 (getCurrentListMapNoExtraKeys!5689 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252777 () Bool)

(declare-fun res!835525 () Bool)

(assert (=> b!1252777 (=> (not res!835525) (not e!711641))))

(assert (=> b!1252777 (= res!835525 (and (= (size!39686 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39685 _keys!1118) (size!39686 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1252778 () Bool)

(declare-fun res!835524 () Bool)

(assert (=> b!1252778 (=> (not res!835524) (not e!711641))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81179 (_ BitVec 32)) Bool)

(assert (=> b!1252778 (= res!835524 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun res!835528 () Bool)

(assert (=> start!105170 (=> (not res!835528) (not e!711641))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105170 (= res!835528 (validMask!0 mask!1466))))

(assert (=> start!105170 e!711641))

(assert (=> start!105170 true))

(assert (=> start!105170 tp!94103))

(assert (=> start!105170 tp_is_empty!31769))

(declare-fun array_inv!29789 (array!81179) Bool)

(assert (=> start!105170 (array_inv!29789 _keys!1118)))

(declare-fun e!711642 () Bool)

(declare-fun array_inv!29790 (array!81181) Bool)

(assert (=> start!105170 (and (array_inv!29790 _values!914) e!711642)))

(declare-fun b!1252779 () Bool)

(declare-fun e!711638 () Bool)

(assert (=> b!1252779 (= e!711638 tp_is_empty!31769)))

(declare-fun b!1252780 () Bool)

(declare-fun mapRes!49426 () Bool)

(assert (=> b!1252780 (= e!711642 (and e!711638 mapRes!49426))))

(declare-fun condMapEmpty!49426 () Bool)

(declare-fun mapDefault!49426 () ValueCell!15121)

