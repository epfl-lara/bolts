; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!105236 () Bool)

(assert start!105236)

(declare-fun b_free!26917 () Bool)

(declare-fun b_next!26917 () Bool)

(assert (=> start!105236 (= b_free!26917 (not b_next!26917))))

(declare-fun tp!94257 () Bool)

(declare-fun b_and!44741 () Bool)

(assert (=> start!105236 (= tp!94257 b_and!44741)))

(declare-fun b!1253531 () Bool)

(declare-fun res!835967 () Bool)

(declare-fun e!712195 () Bool)

(assert (=> b!1253531 (=> (not res!835967) (not e!712195))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81277 0))(
  ( (array!81278 (arr!39196 (Array (_ BitVec 32) (_ BitVec 64))) (size!39733 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81277)

(declare-datatypes ((V!47791 0))(
  ( (V!47792 (val!15972 Int)) )
))
(declare-datatypes ((ValueCell!15146 0))(
  ( (ValueCellFull!15146 (v!18670 V!47791)) (EmptyCell!15146) )
))
(declare-datatypes ((array!81279 0))(
  ( (array!81280 (arr!39197 (Array (_ BitVec 32) ValueCell!15146)) (size!39734 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81279)

(assert (=> b!1253531 (= res!835967 (and (= (size!39734 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!39733 _keys!1118) (size!39734 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1253532 () Bool)

(declare-fun e!712191 () Bool)

(declare-fun tp_is_empty!31819 () Bool)

(assert (=> b!1253532 (= e!712191 tp_is_empty!31819)))

(declare-fun b!1253533 () Bool)

(declare-fun res!835968 () Bool)

(assert (=> b!1253533 (=> (not res!835968) (not e!712195))))

(declare-datatypes ((List!28009 0))(
  ( (Nil!28006) (Cons!28005 (h!29214 (_ BitVec 64)) (t!41497 List!28009)) )
))
(declare-fun arrayNoDuplicates!0 (array!81277 (_ BitVec 32) List!28009) Bool)

(assert (=> b!1253533 (= res!835968 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28006))))

(declare-fun res!835966 () Bool)

(assert (=> start!105236 (=> (not res!835966) (not e!712195))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105236 (= res!835966 (validMask!0 mask!1466))))

(assert (=> start!105236 e!712195))

(assert (=> start!105236 true))

(assert (=> start!105236 tp!94257))

(assert (=> start!105236 tp_is_empty!31819))

(declare-fun array_inv!29821 (array!81277) Bool)

(assert (=> start!105236 (array_inv!29821 _keys!1118)))

(declare-fun e!712194 () Bool)

(declare-fun array_inv!29822 (array!81279) Bool)

(assert (=> start!105236 (and (array_inv!29822 _values!914) e!712194)))

(declare-fun b!1253534 () Bool)

(declare-fun e!712193 () Bool)

(assert (=> b!1253534 (= e!712193 tp_is_empty!31819)))

(declare-fun b!1253535 () Bool)

(declare-fun e!712192 () Bool)

(assert (=> b!1253535 (= e!712195 (not e!712192))))

(declare-fun res!835969 () Bool)

(assert (=> b!1253535 (=> res!835969 e!712192)))

(assert (=> b!1253535 (= res!835969 (or (not (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!20762 0))(
  ( (tuple2!20763 (_1!10391 (_ BitVec 64)) (_2!10391 V!47791)) )
))
(declare-datatypes ((List!28010 0))(
  ( (Nil!28007) (Cons!28006 (h!29215 tuple2!20762) (t!41498 List!28010)) )
))
(declare-datatypes ((ListLongMap!18647 0))(
  ( (ListLongMap!18648 (toList!9339 List!28010)) )
))
(declare-fun lt!566100 () ListLongMap!18647)

(declare-fun lt!566101 () ListLongMap!18647)

(assert (=> b!1253535 (= lt!566100 lt!566101)))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!47791)

(declare-fun zeroValue!871 () V!47791)

(declare-fun minValueBefore!43 () V!47791)

(declare-datatypes ((Unit!41648 0))(
  ( (Unit!41649) )
))
(declare-fun lt!566095 () Unit!41648)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1023 (array!81277 array!81279 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!47791 V!47791 V!47791 V!47791 (_ BitVec 32) Int) Unit!41648)

(assert (=> b!1253535 (= lt!566095 (lemmaNoChangeToArrayThenSameMapNoExtras!1023 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5705 (array!81277 array!81279 (_ BitVec 32) (_ BitVec 32) V!47791 V!47791 (_ BitVec 32) Int) ListLongMap!18647)

(assert (=> b!1253535 (= lt!566101 (getCurrentListMapNoExtraKeys!5705 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253535 (= lt!566100 (getCurrentListMapNoExtraKeys!5705 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1253536 () Bool)

(declare-fun res!835970 () Bool)

(assert (=> b!1253536 (=> (not res!835970) (not e!712195))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81277 (_ BitVec 32)) Bool)

(assert (=> b!1253536 (= res!835970 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun mapNonEmpty!49504 () Bool)

(declare-fun mapRes!49504 () Bool)

(declare-fun tp!94256 () Bool)

(assert (=> mapNonEmpty!49504 (= mapRes!49504 (and tp!94256 e!712191))))

(declare-fun mapValue!49504 () ValueCell!15146)

(declare-fun mapKey!49504 () (_ BitVec 32))

(declare-fun mapRest!49504 () (Array (_ BitVec 32) ValueCell!15146))

(assert (=> mapNonEmpty!49504 (= (arr!39197 _values!914) (store mapRest!49504 mapKey!49504 mapValue!49504))))

(declare-fun mapIsEmpty!49504 () Bool)

(assert (=> mapIsEmpty!49504 mapRes!49504))

(declare-fun b!1253537 () Bool)

(assert (=> b!1253537 (= e!712192 true)))

(declare-fun lt!566096 () ListLongMap!18647)

(declare-fun lt!566098 () ListLongMap!18647)

(declare-fun -!2051 (ListLongMap!18647 (_ BitVec 64)) ListLongMap!18647)

(assert (=> b!1253537 (= lt!566096 (-!2051 lt!566098 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!566099 () ListLongMap!18647)

(assert (=> b!1253537 (= (-!2051 lt!566099 #b1000000000000000000000000000000000000000000000000000000000000000) lt!566100)))

(declare-fun lt!566102 () Unit!41648)

(declare-fun addThenRemoveForNewKeyIsSame!311 (ListLongMap!18647 (_ BitVec 64) V!47791) Unit!41648)

(assert (=> b!1253537 (= lt!566102 (addThenRemoveForNewKeyIsSame!311 lt!566100 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43))))

(declare-fun lt!566097 () ListLongMap!18647)

(assert (=> b!1253537 (and (= lt!566098 lt!566099) (= lt!566097 lt!566101))))

(declare-fun +!4142 (ListLongMap!18647 tuple2!20762) ListLongMap!18647)

(assert (=> b!1253537 (= lt!566099 (+!4142 lt!566100 (tuple2!20763 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!43)))))

(declare-fun getCurrentListMap!4529 (array!81277 array!81279 (_ BitVec 32) (_ BitVec 32) V!47791 V!47791 (_ BitVec 32) Int) ListLongMap!18647)

(assert (=> b!1253537 (= lt!566097 (getCurrentListMap!4529 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1253537 (= lt!566098 (getCurrentListMap!4529 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1253538 () Bool)

(assert (=> b!1253538 (= e!712194 (and e!712193 mapRes!49504))))

(declare-fun condMapEmpty!49504 () Bool)

(declare-fun mapDefault!49504 () ValueCell!15146)

