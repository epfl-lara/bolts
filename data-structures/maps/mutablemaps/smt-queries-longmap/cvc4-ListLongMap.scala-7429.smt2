; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94464 () Bool)

(assert start!94464)

(declare-fun b_free!21755 () Bool)

(declare-fun b_next!21755 () Bool)

(assert (=> start!94464 (= b_free!21755 (not b_next!21755))))

(declare-fun tp!76712 () Bool)

(declare-fun b_and!34565 () Bool)

(assert (=> start!94464 (= tp!76712 b_and!34565)))

(declare-fun res!712536 () Bool)

(declare-fun e!609029 () Bool)

(assert (=> start!94464 (=> (not res!712536) (not e!609029))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94464 (= res!712536 (validMask!0 mask!1515))))

(assert (=> start!94464 e!609029))

(assert (=> start!94464 true))

(declare-fun tp_is_empty!25565 () Bool)

(assert (=> start!94464 tp_is_empty!25565))

(declare-datatypes ((V!39221 0))(
  ( (V!39222 (val!12833 Int)) )
))
(declare-datatypes ((ValueCell!12079 0))(
  ( (ValueCellFull!12079 (v!15448 V!39221)) (EmptyCell!12079) )
))
(declare-datatypes ((array!68084 0))(
  ( (array!68085 (arr!32738 (Array (_ BitVec 32) ValueCell!12079)) (size!33275 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68084)

(declare-fun e!609024 () Bool)

(declare-fun array_inv!25178 (array!68084) Bool)

(assert (=> start!94464 (and (array_inv!25178 _values!955) e!609024)))

(assert (=> start!94464 tp!76712))

(declare-datatypes ((array!68086 0))(
  ( (array!68087 (arr!32739 (Array (_ BitVec 32) (_ BitVec 64))) (size!33276 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68086)

(declare-fun array_inv!25179 (array!68086) Bool)

(assert (=> start!94464 (array_inv!25179 _keys!1163)))

(declare-fun mapNonEmpty!40042 () Bool)

(declare-fun mapRes!40042 () Bool)

(declare-fun tp!76713 () Bool)

(declare-fun e!609028 () Bool)

(assert (=> mapNonEmpty!40042 (= mapRes!40042 (and tp!76713 e!609028))))

(declare-fun mapRest!40042 () (Array (_ BitVec 32) ValueCell!12079))

(declare-fun mapValue!40042 () ValueCell!12079)

(declare-fun mapKey!40042 () (_ BitVec 32))

(assert (=> mapNonEmpty!40042 (= (arr!32738 _values!955) (store mapRest!40042 mapKey!40042 mapValue!40042))))

(declare-fun b!1067643 () Bool)

(declare-fun res!712539 () Bool)

(assert (=> b!1067643 (=> (not res!712539) (not e!609029))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68086 (_ BitVec 32)) Bool)

(assert (=> b!1067643 (= res!712539 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!40042 () Bool)

(assert (=> mapIsEmpty!40042 mapRes!40042))

(declare-fun b!1067644 () Bool)

(declare-fun res!712537 () Bool)

(assert (=> b!1067644 (=> (not res!712537) (not e!609029))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1067644 (= res!712537 (and (= (size!33275 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33276 _keys!1163) (size!33275 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1067645 () Bool)

(declare-fun e!609026 () Bool)

(assert (=> b!1067645 (= e!609026 true)))

(declare-datatypes ((tuple2!16368 0))(
  ( (tuple2!16369 (_1!8194 (_ BitVec 64)) (_2!8194 V!39221)) )
))
(declare-datatypes ((List!22958 0))(
  ( (Nil!22955) (Cons!22954 (h!24163 tuple2!16368) (t!32290 List!22958)) )
))
(declare-datatypes ((ListLongMap!14349 0))(
  ( (ListLongMap!14350 (toList!7190 List!22958)) )
))
(declare-fun lt!471550 () ListLongMap!14349)

(declare-fun -!631 (ListLongMap!14349 (_ BitVec 64)) ListLongMap!14349)

(assert (=> b!1067645 (= (-!631 lt!471550 #b0000000000000000000000000000000000000000000000000000000000000000) lt!471550)))

(declare-datatypes ((Unit!35046 0))(
  ( (Unit!35047) )
))
(declare-fun lt!471552 () Unit!35046)

(declare-fun removeNotPresentStillSame!40 (ListLongMap!14349 (_ BitVec 64)) Unit!35046)

(assert (=> b!1067645 (= lt!471552 (removeNotPresentStillSame!40 lt!471550 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1067646 () Bool)

(declare-fun e!609025 () Bool)

(assert (=> b!1067646 (= e!609029 (not e!609025))))

(declare-fun res!712538 () Bool)

(assert (=> b!1067646 (=> res!712538 e!609025)))

(assert (=> b!1067646 (= res!712538 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!471551 () ListLongMap!14349)

(declare-fun lt!471553 () ListLongMap!14349)

(assert (=> b!1067646 (= lt!471551 lt!471553)))

(declare-fun zeroValueBefore!47 () V!39221)

(declare-fun minValue!907 () V!39221)

(declare-fun lt!471554 () Unit!35046)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39221)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!774 (array!68086 array!68084 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39221 V!39221 V!39221 V!39221 (_ BitVec 32) Int) Unit!35046)

(assert (=> b!1067646 (= lt!471554 (lemmaNoChangeToArrayThenSameMapNoExtras!774 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3735 (array!68086 array!68084 (_ BitVec 32) (_ BitVec 32) V!39221 V!39221 (_ BitVec 32) Int) ListLongMap!14349)

(assert (=> b!1067646 (= lt!471553 (getCurrentListMapNoExtraKeys!3735 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1067646 (= lt!471551 (getCurrentListMapNoExtraKeys!3735 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1067647 () Bool)

(assert (=> b!1067647 (= e!609025 e!609026)))

(declare-fun res!712540 () Bool)

(assert (=> b!1067647 (=> res!712540 e!609026)))

(declare-fun contains!6296 (ListLongMap!14349 (_ BitVec 64)) Bool)

(assert (=> b!1067647 (= res!712540 (contains!6296 lt!471550 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun getCurrentListMap!4086 (array!68086 array!68084 (_ BitVec 32) (_ BitVec 32) V!39221 V!39221 (_ BitVec 32) Int) ListLongMap!14349)

(assert (=> b!1067647 (= lt!471550 (getCurrentListMap!4086 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1067648 () Bool)

(declare-fun e!609027 () Bool)

(assert (=> b!1067648 (= e!609027 tp_is_empty!25565)))

(declare-fun b!1067649 () Bool)

(declare-fun res!712541 () Bool)

(assert (=> b!1067649 (=> (not res!712541) (not e!609029))))

(declare-datatypes ((List!22959 0))(
  ( (Nil!22956) (Cons!22955 (h!24164 (_ BitVec 64)) (t!32291 List!22959)) )
))
(declare-fun arrayNoDuplicates!0 (array!68086 (_ BitVec 32) List!22959) Bool)

(assert (=> b!1067649 (= res!712541 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22956))))

(declare-fun b!1067650 () Bool)

(assert (=> b!1067650 (= e!609024 (and e!609027 mapRes!40042))))

(declare-fun condMapEmpty!40042 () Bool)

(declare-fun mapDefault!40042 () ValueCell!12079)

