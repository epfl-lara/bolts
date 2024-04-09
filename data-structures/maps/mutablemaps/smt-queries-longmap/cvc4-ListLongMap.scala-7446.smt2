; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94588 () Bool)

(assert start!94588)

(declare-fun b_free!21857 () Bool)

(declare-fun b_next!21857 () Bool)

(assert (=> start!94588 (= b_free!21857 (not b_next!21857))))

(declare-fun tp!77022 () Bool)

(declare-fun b_and!34677 () Bool)

(assert (=> start!94588 (= tp!77022 b_and!34677)))

(declare-fun mapNonEmpty!40198 () Bool)

(declare-fun mapRes!40198 () Bool)

(declare-fun tp!77021 () Bool)

(declare-fun e!610196 () Bool)

(assert (=> mapNonEmpty!40198 (= mapRes!40198 (and tp!77021 e!610196))))

(declare-fun mapKey!40198 () (_ BitVec 32))

(declare-datatypes ((V!39357 0))(
  ( (V!39358 (val!12884 Int)) )
))
(declare-datatypes ((ValueCell!12130 0))(
  ( (ValueCellFull!12130 (v!15500 V!39357)) (EmptyCell!12130) )
))
(declare-datatypes ((array!68280 0))(
  ( (array!68281 (arr!32835 (Array (_ BitVec 32) ValueCell!12130)) (size!33372 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68280)

(declare-fun mapValue!40198 () ValueCell!12130)

(declare-fun mapRest!40198 () (Array (_ BitVec 32) ValueCell!12130))

(assert (=> mapNonEmpty!40198 (= (arr!32835 _values!955) (store mapRest!40198 mapKey!40198 mapValue!40198))))

(declare-fun b!1069177 () Bool)

(declare-fun e!610197 () Bool)

(declare-fun e!610195 () Bool)

(assert (=> b!1069177 (= e!610197 e!610195)))

(declare-fun res!713516 () Bool)

(assert (=> b!1069177 (=> res!713516 e!610195)))

(declare-datatypes ((tuple2!16446 0))(
  ( (tuple2!16447 (_1!8233 (_ BitVec 64)) (_2!8233 V!39357)) )
))
(declare-datatypes ((List!23033 0))(
  ( (Nil!23030) (Cons!23029 (h!24238 tuple2!16446) (t!32367 List!23033)) )
))
(declare-datatypes ((ListLongMap!14427 0))(
  ( (ListLongMap!14428 (toList!7229 List!23033)) )
))
(declare-fun lt!472443 () ListLongMap!14427)

(declare-fun contains!6326 (ListLongMap!14427 (_ BitVec 64)) Bool)

(assert (=> b!1069177 (= res!713516 (contains!6326 lt!472443 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValueBefore!47 () V!39357)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39357)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68282 0))(
  ( (array!68283 (arr!32836 (Array (_ BitVec 32) (_ BitVec 64))) (size!33373 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68282)

(declare-fun getCurrentListMap!4115 (array!68282 array!68280 (_ BitVec 32) (_ BitVec 32) V!39357 V!39357 (_ BitVec 32) Int) ListLongMap!14427)

(assert (=> b!1069177 (= lt!472443 (getCurrentListMap!4115 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1069178 () Bool)

(declare-fun res!713519 () Bool)

(declare-fun e!610201 () Bool)

(assert (=> b!1069178 (=> (not res!713519) (not e!610201))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68282 (_ BitVec 32)) Bool)

(assert (=> b!1069178 (= res!713519 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1069179 () Bool)

(assert (=> b!1069179 (= e!610195 (bvsle #b00000000000000000000000000000000 (size!33373 _keys!1163)))))

(declare-fun -!663 (ListLongMap!14427 (_ BitVec 64)) ListLongMap!14427)

(assert (=> b!1069179 (= (-!663 lt!472443 #b0000000000000000000000000000000000000000000000000000000000000000) lt!472443)))

(declare-datatypes ((Unit!35122 0))(
  ( (Unit!35123) )
))
(declare-fun lt!472441 () Unit!35122)

(declare-fun removeNotPresentStillSame!72 (ListLongMap!14427 (_ BitVec 64)) Unit!35122)

(assert (=> b!1069179 (= lt!472441 (removeNotPresentStillSame!72 lt!472443 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1069180 () Bool)

(declare-fun res!713520 () Bool)

(assert (=> b!1069180 (=> (not res!713520) (not e!610201))))

(declare-datatypes ((List!23034 0))(
  ( (Nil!23031) (Cons!23030 (h!24239 (_ BitVec 64)) (t!32368 List!23034)) )
))
(declare-fun arrayNoDuplicates!0 (array!68282 (_ BitVec 32) List!23034) Bool)

(assert (=> b!1069180 (= res!713520 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23031))))

(declare-fun b!1069181 () Bool)

(assert (=> b!1069181 (= e!610201 (not e!610197))))

(declare-fun res!713518 () Bool)

(assert (=> b!1069181 (=> res!713518 e!610197)))

(assert (=> b!1069181 (= res!713518 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!472442 () ListLongMap!14427)

(declare-fun lt!472440 () ListLongMap!14427)

(assert (=> b!1069181 (= lt!472442 lt!472440)))

(declare-fun lt!472439 () Unit!35122)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueAfter!47 () V!39357)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!805 (array!68282 array!68280 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39357 V!39357 V!39357 V!39357 (_ BitVec 32) Int) Unit!35122)

(assert (=> b!1069181 (= lt!472439 (lemmaNoChangeToArrayThenSameMapNoExtras!805 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3766 (array!68282 array!68280 (_ BitVec 32) (_ BitVec 32) V!39357 V!39357 (_ BitVec 32) Int) ListLongMap!14427)

(assert (=> b!1069181 (= lt!472440 (getCurrentListMapNoExtraKeys!3766 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1069181 (= lt!472442 (getCurrentListMapNoExtraKeys!3766 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1069182 () Bool)

(declare-fun tp_is_empty!25667 () Bool)

(assert (=> b!1069182 (= e!610196 tp_is_empty!25667)))

(declare-fun res!713517 () Bool)

(assert (=> start!94588 (=> (not res!713517) (not e!610201))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94588 (= res!713517 (validMask!0 mask!1515))))

(assert (=> start!94588 e!610201))

(assert (=> start!94588 true))

(assert (=> start!94588 tp_is_empty!25667))

(declare-fun e!610198 () Bool)

(declare-fun array_inv!25254 (array!68280) Bool)

(assert (=> start!94588 (and (array_inv!25254 _values!955) e!610198)))

(assert (=> start!94588 tp!77022))

(declare-fun array_inv!25255 (array!68282) Bool)

(assert (=> start!94588 (array_inv!25255 _keys!1163)))

(declare-fun b!1069183 () Bool)

(declare-fun res!713515 () Bool)

(assert (=> b!1069183 (=> (not res!713515) (not e!610201))))

(assert (=> b!1069183 (= res!713515 (and (= (size!33372 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33373 _keys!1163) (size!33372 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1069184 () Bool)

(declare-fun e!610199 () Bool)

(assert (=> b!1069184 (= e!610199 tp_is_empty!25667)))

(declare-fun b!1069185 () Bool)

(assert (=> b!1069185 (= e!610198 (and e!610199 mapRes!40198))))

(declare-fun condMapEmpty!40198 () Bool)

(declare-fun mapDefault!40198 () ValueCell!12130)

