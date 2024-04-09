; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94704 () Bool)

(assert start!94704)

(declare-fun b_free!21937 () Bool)

(declare-fun b_next!21937 () Bool)

(assert (=> start!94704 (= b_free!21937 (not b_next!21937))))

(declare-fun tp!77267 () Bool)

(declare-fun b_and!34775 () Bool)

(assert (=> start!94704 (= tp!77267 b_and!34775)))

(declare-fun res!714131 () Bool)

(declare-fun e!610994 () Bool)

(assert (=> start!94704 (=> (not res!714131) (not e!610994))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94704 (= res!714131 (validMask!0 mask!1515))))

(assert (=> start!94704 e!610994))

(assert (=> start!94704 true))

(declare-fun tp_is_empty!25747 () Bool)

(assert (=> start!94704 tp_is_empty!25747))

(declare-datatypes ((V!39465 0))(
  ( (V!39466 (val!12924 Int)) )
))
(declare-datatypes ((ValueCell!12170 0))(
  ( (ValueCellFull!12170 (v!15541 V!39465)) (EmptyCell!12170) )
))
(declare-datatypes ((array!68438 0))(
  ( (array!68439 (arr!32912 (Array (_ BitVec 32) ValueCell!12170)) (size!33449 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68438)

(declare-fun e!610990 () Bool)

(declare-fun array_inv!25308 (array!68438) Bool)

(assert (=> start!94704 (and (array_inv!25308 _values!955) e!610990)))

(assert (=> start!94704 tp!77267))

(declare-datatypes ((array!68440 0))(
  ( (array!68441 (arr!32913 (Array (_ BitVec 32) (_ BitVec 64))) (size!33450 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68440)

(declare-fun array_inv!25309 (array!68440) Bool)

(assert (=> start!94704 (array_inv!25309 _keys!1163)))

(declare-fun b!1070299 () Bool)

(declare-fun e!610991 () Bool)

(assert (=> b!1070299 (= e!610991 tp_is_empty!25747)))

(declare-fun b!1070300 () Bool)

(declare-fun e!610992 () Bool)

(assert (=> b!1070300 (= e!610994 (not e!610992))))

(declare-fun res!714127 () Bool)

(assert (=> b!1070300 (=> res!714127 e!610992)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1070300 (= res!714127 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16504 0))(
  ( (tuple2!16505 (_1!8262 (_ BitVec 64)) (_2!8262 V!39465)) )
))
(declare-datatypes ((List!23090 0))(
  ( (Nil!23087) (Cons!23086 (h!24295 tuple2!16504) (t!32428 List!23090)) )
))
(declare-datatypes ((ListLongMap!14485 0))(
  ( (ListLongMap!14486 (toList!7258 List!23090)) )
))
(declare-fun lt!473004 () ListLongMap!14485)

(declare-fun lt!473003 () ListLongMap!14485)

(assert (=> b!1070300 (= lt!473004 lt!473003)))

(declare-fun zeroValueBefore!47 () V!39465)

(declare-fun minValue!907 () V!39465)

(declare-datatypes ((Unit!35180 0))(
  ( (Unit!35181) )
))
(declare-fun lt!473005 () Unit!35180)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39465)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!833 (array!68440 array!68438 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39465 V!39465 V!39465 V!39465 (_ BitVec 32) Int) Unit!35180)

(assert (=> b!1070300 (= lt!473005 (lemmaNoChangeToArrayThenSameMapNoExtras!833 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3794 (array!68440 array!68438 (_ BitVec 32) (_ BitVec 32) V!39465 V!39465 (_ BitVec 32) Int) ListLongMap!14485)

(assert (=> b!1070300 (= lt!473003 (getCurrentListMapNoExtraKeys!3794 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1070300 (= lt!473004 (getCurrentListMapNoExtraKeys!3794 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070301 () Bool)

(declare-fun res!714130 () Bool)

(assert (=> b!1070301 (=> (not res!714130) (not e!610994))))

(declare-datatypes ((List!23091 0))(
  ( (Nil!23088) (Cons!23087 (h!24296 (_ BitVec 64)) (t!32429 List!23091)) )
))
(declare-fun arrayNoDuplicates!0 (array!68440 (_ BitVec 32) List!23091) Bool)

(assert (=> b!1070301 (= res!714130 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23088))))

(declare-fun mapIsEmpty!40324 () Bool)

(declare-fun mapRes!40324 () Bool)

(assert (=> mapIsEmpty!40324 mapRes!40324))

(declare-fun mapNonEmpty!40324 () Bool)

(declare-fun tp!77268 () Bool)

(assert (=> mapNonEmpty!40324 (= mapRes!40324 (and tp!77268 e!610991))))

(declare-fun mapRest!40324 () (Array (_ BitVec 32) ValueCell!12170))

(declare-fun mapValue!40324 () ValueCell!12170)

(declare-fun mapKey!40324 () (_ BitVec 32))

(assert (=> mapNonEmpty!40324 (= (arr!32912 _values!955) (store mapRest!40324 mapKey!40324 mapValue!40324))))

(declare-fun b!1070302 () Bool)

(declare-fun res!714128 () Bool)

(assert (=> b!1070302 (=> (not res!714128) (not e!610994))))

(assert (=> b!1070302 (= res!714128 (and (= (size!33449 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33450 _keys!1163) (size!33449 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1070303 () Bool)

(assert (=> b!1070303 (= e!610992 true)))

(declare-fun lt!473006 () ListLongMap!14485)

(declare-fun getCurrentListMap!4124 (array!68440 array!68438 (_ BitVec 32) (_ BitVec 32) V!39465 V!39465 (_ BitVec 32) Int) ListLongMap!14485)

(assert (=> b!1070303 (= lt!473006 (getCurrentListMap!4124 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070304 () Bool)

(declare-fun e!610993 () Bool)

(assert (=> b!1070304 (= e!610993 tp_is_empty!25747)))

(declare-fun b!1070305 () Bool)

(declare-fun res!714129 () Bool)

(assert (=> b!1070305 (=> (not res!714129) (not e!610994))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68440 (_ BitVec 32)) Bool)

(assert (=> b!1070305 (= res!714129 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1070306 () Bool)

(assert (=> b!1070306 (= e!610990 (and e!610993 mapRes!40324))))

(declare-fun condMapEmpty!40324 () Bool)

(declare-fun mapDefault!40324 () ValueCell!12170)

