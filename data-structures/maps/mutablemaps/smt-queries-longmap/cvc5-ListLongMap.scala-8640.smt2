; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105178 () Bool)

(assert start!105178)

(declare-fun b_free!26875 () Bool)

(declare-fun b_next!26875 () Bool)

(assert (=> start!105178 (= b_free!26875 (not b_next!26875))))

(declare-fun tp!94127 () Bool)

(declare-fun b_and!44689 () Bool)

(assert (=> start!105178 (= tp!94127 b_and!44689)))

(declare-fun b!1252870 () Bool)

(declare-fun res!835587 () Bool)

(declare-fun e!711714 () Bool)

(assert (=> b!1252870 (=> (not res!835587) (not e!711714))))

(declare-datatypes ((array!81193 0))(
  ( (array!81194 (arr!39155 (Array (_ BitVec 32) (_ BitVec 64))) (size!39692 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81193)

(declare-datatypes ((List!27973 0))(
  ( (Nil!27970) (Cons!27969 (h!29178 (_ BitVec 64)) (t!41459 List!27973)) )
))
(declare-fun arrayNoDuplicates!0 (array!81193 (_ BitVec 32) List!27973) Bool)

(assert (=> b!1252870 (= res!835587 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!27970))))

(declare-fun mapNonEmpty!49438 () Bool)

(declare-fun mapRes!49438 () Bool)

(declare-fun tp!94128 () Bool)

(declare-fun e!711711 () Bool)

(assert (=> mapNonEmpty!49438 (= mapRes!49438 (and tp!94128 e!711711))))

(declare-datatypes ((V!47735 0))(
  ( (V!47736 (val!15951 Int)) )
))
(declare-datatypes ((ValueCell!15125 0))(
  ( (ValueCellFull!15125 (v!18649 V!47735)) (EmptyCell!15125) )
))
(declare-fun mapRest!49438 () (Array (_ BitVec 32) ValueCell!15125))

(declare-fun mapValue!49438 () ValueCell!15125)

(declare-datatypes ((array!81195 0))(
  ( (array!81196 (arr!39156 (Array (_ BitVec 32) ValueCell!15125)) (size!39693 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81195)

(declare-fun mapKey!49438 () (_ BitVec 32))

(assert (=> mapNonEmpty!49438 (= (arr!39156 _values!914) (store mapRest!49438 mapKey!49438 mapValue!49438))))

(declare-fun b!1252871 () Bool)

(declare-fun e!711712 () Bool)

(assert (=> b!1252871 (= e!711712 (bvsle #b00000000000000000000000000000000 (size!39692 _keys!1118)))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((tuple2!20726 0))(
  ( (tuple2!20727 (_1!10373 (_ BitVec 64)) (_2!10373 V!47735)) )
))
(declare-datatypes ((List!27974 0))(
  ( (Nil!27971) (Cons!27970 (h!29179 tuple2!20726) (t!41460 List!27974)) )
))
(declare-datatypes ((ListLongMap!18611 0))(
  ( (ListLongMap!18612 (toList!9321 List!27974)) )
))
(declare-fun lt!565534 () ListLongMap!18611)

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!47735)

(declare-fun minValueBefore!43 () V!47735)

(declare-fun getCurrentListMap!4513 (array!81193 array!81195 (_ BitVec 32) (_ BitVec 32) V!47735 V!47735 (_ BitVec 32) Int) ListLongMap!18611)

(assert (=> b!1252871 (= lt!565534 (getCurrentListMap!4513 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1252872 () Bool)

(declare-fun res!835586 () Bool)

(assert (=> b!1252872 (=> (not res!835586) (not e!711714))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81193 (_ BitVec 32)) Bool)

(assert (=> b!1252872 (= res!835586 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapIsEmpty!49438 () Bool)

(assert (=> mapIsEmpty!49438 mapRes!49438))

(declare-fun b!1252874 () Bool)

(declare-fun e!711715 () Bool)

(declare-fun tp_is_empty!31777 () Bool)

(assert (=> b!1252874 (= e!711715 tp_is_empty!31777)))

(declare-fun b!1252875 () Bool)

(declare-fun res!835588 () Bool)

(assert (=> b!1252875 (=> (not res!835588) (not e!711714))))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(assert (=> b!1252875 (= res!835588 (and (= (size!39693 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39692 _keys!1118) (size!39693 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1252876 () Bool)

(assert (=> b!1252876 (= e!711711 tp_is_empty!31777)))

(declare-fun b!1252877 () Bool)

(assert (=> b!1252877 (= e!711714 (not e!711712))))

(declare-fun res!835584 () Bool)

(assert (=> b!1252877 (=> res!835584 e!711712)))

(assert (=> b!1252877 (= res!835584 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!565531 () ListLongMap!18611)

(declare-fun lt!565533 () ListLongMap!18611)

(assert (=> b!1252877 (= lt!565531 lt!565533)))

(declare-fun minValueAfter!43 () V!47735)

(declare-datatypes ((Unit!41615 0))(
  ( (Unit!41616) )
))
(declare-fun lt!565532 () Unit!41615)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1010 (array!81193 array!81195 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47735 V!47735 V!47735 V!47735 (_ BitVec 32) Int) Unit!41615)

(assert (=> b!1252877 (= lt!565532 (lemmaNoChangeToArrayThenSameMapNoExtras!1010 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5692 (array!81193 array!81195 (_ BitVec 32) (_ BitVec 32) V!47735 V!47735 (_ BitVec 32) Int) ListLongMap!18611)

(assert (=> b!1252877 (= lt!565533 (getCurrentListMapNoExtraKeys!5692 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1252877 (= lt!565531 (getCurrentListMapNoExtraKeys!5692 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun res!835585 () Bool)

(assert (=> start!105178 (=> (not res!835585) (not e!711714))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105178 (= res!835585 (validMask!0 mask!1466))))

(assert (=> start!105178 e!711714))

(assert (=> start!105178 true))

(assert (=> start!105178 tp!94127))

(assert (=> start!105178 tp_is_empty!31777))

(declare-fun array_inv!29793 (array!81193) Bool)

(assert (=> start!105178 (array_inv!29793 _keys!1118)))

(declare-fun e!711710 () Bool)

(declare-fun array_inv!29794 (array!81195) Bool)

(assert (=> start!105178 (and (array_inv!29794 _values!914) e!711710)))

(declare-fun b!1252873 () Bool)

(assert (=> b!1252873 (= e!711710 (and e!711715 mapRes!49438))))

(declare-fun condMapEmpty!49438 () Bool)

(declare-fun mapDefault!49438 () ValueCell!15125)

