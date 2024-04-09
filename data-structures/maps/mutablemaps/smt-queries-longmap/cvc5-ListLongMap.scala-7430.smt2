; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94466 () Bool)

(assert start!94466)

(declare-fun b_free!21757 () Bool)

(declare-fun b_next!21757 () Bool)

(assert (=> start!94466 (= b_free!21757 (not b_next!21757))))

(declare-fun tp!76719 () Bool)

(declare-fun b_and!34567 () Bool)

(assert (=> start!94466 (= tp!76719 b_and!34567)))

(declare-fun b!1067670 () Bool)

(declare-fun e!609047 () Bool)

(declare-fun e!609048 () Bool)

(assert (=> b!1067670 (= e!609047 e!609048)))

(declare-fun res!712555 () Bool)

(assert (=> b!1067670 (=> res!712555 e!609048)))

(declare-datatypes ((V!39225 0))(
  ( (V!39226 (val!12834 Int)) )
))
(declare-datatypes ((tuple2!16370 0))(
  ( (tuple2!16371 (_1!8195 (_ BitVec 64)) (_2!8195 V!39225)) )
))
(declare-datatypes ((List!22960 0))(
  ( (Nil!22957) (Cons!22956 (h!24165 tuple2!16370) (t!32292 List!22960)) )
))
(declare-datatypes ((ListLongMap!14351 0))(
  ( (ListLongMap!14352 (toList!7191 List!22960)) )
))
(declare-fun lt!471567 () ListLongMap!14351)

(declare-fun contains!6297 (ListLongMap!14351 (_ BitVec 64)) Bool)

(assert (=> b!1067670 (= res!712555 (contains!6297 lt!471567 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39225)

(declare-datatypes ((ValueCell!12080 0))(
  ( (ValueCellFull!12080 (v!15449 V!39225)) (EmptyCell!12080) )
))
(declare-datatypes ((array!68088 0))(
  ( (array!68089 (arr!32740 (Array (_ BitVec 32) ValueCell!12080)) (size!33277 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68088)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!39225)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68090 0))(
  ( (array!68091 (arr!32741 (Array (_ BitVec 32) (_ BitVec 64))) (size!33278 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68090)

(declare-fun getCurrentListMap!4087 (array!68090 array!68088 (_ BitVec 32) (_ BitVec 32) V!39225 V!39225 (_ BitVec 32) Int) ListLongMap!14351)

(assert (=> b!1067670 (= lt!471567 (getCurrentListMap!4087 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1067671 () Bool)

(declare-fun res!712554 () Bool)

(declare-fun e!609046 () Bool)

(assert (=> b!1067671 (=> (not res!712554) (not e!609046))))

(declare-datatypes ((List!22961 0))(
  ( (Nil!22958) (Cons!22957 (h!24166 (_ BitVec 64)) (t!32293 List!22961)) )
))
(declare-fun arrayNoDuplicates!0 (array!68090 (_ BitVec 32) List!22961) Bool)

(assert (=> b!1067671 (= res!712554 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22958))))

(declare-fun b!1067672 () Bool)

(assert (=> b!1067672 (= e!609048 true)))

(declare-fun -!632 (ListLongMap!14351 (_ BitVec 64)) ListLongMap!14351)

(assert (=> b!1067672 (= (-!632 lt!471567 #b0000000000000000000000000000000000000000000000000000000000000000) lt!471567)))

(declare-datatypes ((Unit!35048 0))(
  ( (Unit!35049) )
))
(declare-fun lt!471568 () Unit!35048)

(declare-fun removeNotPresentStillSame!41 (ListLongMap!14351 (_ BitVec 64)) Unit!35048)

(assert (=> b!1067672 (= lt!471568 (removeNotPresentStillSame!41 lt!471567 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!712557 () Bool)

(assert (=> start!94466 (=> (not res!712557) (not e!609046))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94466 (= res!712557 (validMask!0 mask!1515))))

(assert (=> start!94466 e!609046))

(assert (=> start!94466 true))

(declare-fun tp_is_empty!25567 () Bool)

(assert (=> start!94466 tp_is_empty!25567))

(declare-fun e!609045 () Bool)

(declare-fun array_inv!25180 (array!68088) Bool)

(assert (=> start!94466 (and (array_inv!25180 _values!955) e!609045)))

(assert (=> start!94466 tp!76719))

(declare-fun array_inv!25181 (array!68090) Bool)

(assert (=> start!94466 (array_inv!25181 _keys!1163)))

(declare-fun b!1067673 () Bool)

(assert (=> b!1067673 (= e!609046 (not e!609047))))

(declare-fun res!712556 () Bool)

(assert (=> b!1067673 (=> res!712556 e!609047)))

(assert (=> b!1067673 (= res!712556 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!471566 () ListLongMap!14351)

(declare-fun lt!471569 () ListLongMap!14351)

(assert (=> b!1067673 (= lt!471566 lt!471569)))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun lt!471565 () Unit!35048)

(declare-fun zeroValueAfter!47 () V!39225)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!775 (array!68090 array!68088 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39225 V!39225 V!39225 V!39225 (_ BitVec 32) Int) Unit!35048)

(assert (=> b!1067673 (= lt!471565 (lemmaNoChangeToArrayThenSameMapNoExtras!775 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3736 (array!68090 array!68088 (_ BitVec 32) (_ BitVec 32) V!39225 V!39225 (_ BitVec 32) Int) ListLongMap!14351)

(assert (=> b!1067673 (= lt!471569 (getCurrentListMapNoExtraKeys!3736 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1067673 (= lt!471566 (getCurrentListMapNoExtraKeys!3736 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1067674 () Bool)

(declare-fun res!712559 () Bool)

(assert (=> b!1067674 (=> (not res!712559) (not e!609046))))

(assert (=> b!1067674 (= res!712559 (and (= (size!33277 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33278 _keys!1163) (size!33277 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1067675 () Bool)

(declare-fun res!712558 () Bool)

(assert (=> b!1067675 (=> (not res!712558) (not e!609046))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68090 (_ BitVec 32)) Bool)

(assert (=> b!1067675 (= res!712558 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1067676 () Bool)

(declare-fun e!609050 () Bool)

(assert (=> b!1067676 (= e!609050 tp_is_empty!25567)))

(declare-fun b!1067677 () Bool)

(declare-fun e!609051 () Bool)

(assert (=> b!1067677 (= e!609051 tp_is_empty!25567)))

(declare-fun mapIsEmpty!40045 () Bool)

(declare-fun mapRes!40045 () Bool)

(assert (=> mapIsEmpty!40045 mapRes!40045))

(declare-fun mapNonEmpty!40045 () Bool)

(declare-fun tp!76718 () Bool)

(assert (=> mapNonEmpty!40045 (= mapRes!40045 (and tp!76718 e!609050))))

(declare-fun mapKey!40045 () (_ BitVec 32))

(declare-fun mapValue!40045 () ValueCell!12080)

(declare-fun mapRest!40045 () (Array (_ BitVec 32) ValueCell!12080))

(assert (=> mapNonEmpty!40045 (= (arr!32740 _values!955) (store mapRest!40045 mapKey!40045 mapValue!40045))))

(declare-fun b!1067678 () Bool)

(assert (=> b!1067678 (= e!609045 (and e!609051 mapRes!40045))))

(declare-fun condMapEmpty!40045 () Bool)

(declare-fun mapDefault!40045 () ValueCell!12080)

