; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94652 () Bool)

(assert start!94652)

(declare-fun b_free!21899 () Bool)

(declare-fun b_next!21899 () Bool)

(assert (=> start!94652 (= b_free!21899 (not b_next!21899))))

(declare-fun tp!77151 () Bool)

(declare-fun b_and!34729 () Bool)

(assert (=> start!94652 (= tp!77151 b_and!34729)))

(declare-fun b!1069777 () Bool)

(declare-fun e!610616 () Bool)

(declare-fun tp_is_empty!25709 () Bool)

(assert (=> b!1069777 (= e!610616 tp_is_empty!25709)))

(declare-fun b!1069778 () Bool)

(declare-fun e!610612 () Bool)

(assert (=> b!1069778 (= e!610612 (not true))))

(declare-datatypes ((V!39413 0))(
  ( (V!39414 (val!12905 Int)) )
))
(declare-datatypes ((tuple2!16476 0))(
  ( (tuple2!16477 (_1!8248 (_ BitVec 64)) (_2!8248 V!39413)) )
))
(declare-datatypes ((List!23064 0))(
  ( (Nil!23061) (Cons!23060 (h!24269 tuple2!16476) (t!32400 List!23064)) )
))
(declare-datatypes ((ListLongMap!14457 0))(
  ( (ListLongMap!14458 (toList!7244 List!23064)) )
))
(declare-fun lt!472754 () ListLongMap!14457)

(declare-fun lt!472755 () ListLongMap!14457)

(assert (=> b!1069778 (= lt!472754 lt!472755)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39413)

(declare-fun minValue!907 () V!39413)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12151 0))(
  ( (ValueCellFull!12151 (v!15522 V!39413)) (EmptyCell!12151) )
))
(declare-datatypes ((array!68364 0))(
  ( (array!68365 (arr!32876 (Array (_ BitVec 32) ValueCell!12151)) (size!33413 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68364)

(declare-datatypes ((Unit!35154 0))(
  ( (Unit!35155) )
))
(declare-fun lt!472756 () Unit!35154)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39413)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68366 0))(
  ( (array!68367 (arr!32877 (Array (_ BitVec 32) (_ BitVec 64))) (size!33414 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68366)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!820 (array!68366 array!68364 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39413 V!39413 V!39413 V!39413 (_ BitVec 32) Int) Unit!35154)

(assert (=> b!1069778 (= lt!472756 (lemmaNoChangeToArrayThenSameMapNoExtras!820 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3781 (array!68366 array!68364 (_ BitVec 32) (_ BitVec 32) V!39413 V!39413 (_ BitVec 32) Int) ListLongMap!14457)

(assert (=> b!1069778 (= lt!472755 (getCurrentListMapNoExtraKeys!3781 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1069778 (= lt!472754 (getCurrentListMapNoExtraKeys!3781 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1069779 () Bool)

(declare-fun e!610615 () Bool)

(assert (=> b!1069779 (= e!610615 tp_is_empty!25709)))

(declare-fun b!1069781 () Bool)

(declare-fun res!713830 () Bool)

(assert (=> b!1069781 (=> (not res!713830) (not e!610612))))

(declare-datatypes ((List!23065 0))(
  ( (Nil!23062) (Cons!23061 (h!24270 (_ BitVec 64)) (t!32401 List!23065)) )
))
(declare-fun arrayNoDuplicates!0 (array!68366 (_ BitVec 32) List!23065) Bool)

(assert (=> b!1069781 (= res!713830 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23062))))

(declare-fun mapIsEmpty!40264 () Bool)

(declare-fun mapRes!40264 () Bool)

(assert (=> mapIsEmpty!40264 mapRes!40264))

(declare-fun b!1069782 () Bool)

(declare-fun res!713832 () Bool)

(assert (=> b!1069782 (=> (not res!713832) (not e!610612))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68366 (_ BitVec 32)) Bool)

(assert (=> b!1069782 (= res!713832 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!40264 () Bool)

(declare-fun tp!77150 () Bool)

(assert (=> mapNonEmpty!40264 (= mapRes!40264 (and tp!77150 e!610615))))

(declare-fun mapRest!40264 () (Array (_ BitVec 32) ValueCell!12151))

(declare-fun mapKey!40264 () (_ BitVec 32))

(declare-fun mapValue!40264 () ValueCell!12151)

(assert (=> mapNonEmpty!40264 (= (arr!32876 _values!955) (store mapRest!40264 mapKey!40264 mapValue!40264))))

(declare-fun b!1069783 () Bool)

(declare-fun res!713831 () Bool)

(assert (=> b!1069783 (=> (not res!713831) (not e!610612))))

(assert (=> b!1069783 (= res!713831 (and (= (size!33413 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33414 _keys!1163) (size!33413 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1069780 () Bool)

(declare-fun e!610614 () Bool)

(assert (=> b!1069780 (= e!610614 (and e!610616 mapRes!40264))))

(declare-fun condMapEmpty!40264 () Bool)

(declare-fun mapDefault!40264 () ValueCell!12151)

