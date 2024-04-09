; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94654 () Bool)

(assert start!94654)

(declare-fun b_free!21901 () Bool)

(declare-fun b_next!21901 () Bool)

(assert (=> start!94654 (= b_free!21901 (not b_next!21901))))

(declare-fun tp!77156 () Bool)

(declare-fun b_and!34731 () Bool)

(assert (=> start!94654 (= tp!77156 b_and!34731)))

(declare-fun mapNonEmpty!40267 () Bool)

(declare-fun mapRes!40267 () Bool)

(declare-fun tp!77157 () Bool)

(declare-fun e!610628 () Bool)

(assert (=> mapNonEmpty!40267 (= mapRes!40267 (and tp!77157 e!610628))))

(declare-datatypes ((V!39417 0))(
  ( (V!39418 (val!12906 Int)) )
))
(declare-datatypes ((ValueCell!12152 0))(
  ( (ValueCellFull!12152 (v!15523 V!39417)) (EmptyCell!12152) )
))
(declare-fun mapRest!40267 () (Array (_ BitVec 32) ValueCell!12152))

(declare-datatypes ((array!68368 0))(
  ( (array!68369 (arr!32878 (Array (_ BitVec 32) ValueCell!12152)) (size!33415 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68368)

(declare-fun mapKey!40267 () (_ BitVec 32))

(declare-fun mapValue!40267 () ValueCell!12152)

(assert (=> mapNonEmpty!40267 (= (arr!32878 _values!955) (store mapRest!40267 mapKey!40267 mapValue!40267))))

(declare-fun b!1069798 () Bool)

(declare-fun res!713845 () Bool)

(declare-fun e!610627 () Bool)

(assert (=> b!1069798 (=> (not res!713845) (not e!610627))))

(declare-datatypes ((array!68370 0))(
  ( (array!68371 (arr!32879 (Array (_ BitVec 32) (_ BitVec 64))) (size!33416 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68370)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68370 (_ BitVec 32)) Bool)

(assert (=> b!1069798 (= res!713845 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1069799 () Bool)

(declare-fun tp_is_empty!25711 () Bool)

(assert (=> b!1069799 (= e!610628 tp_is_empty!25711)))

(declare-fun res!713843 () Bool)

(assert (=> start!94654 (=> (not res!713843) (not e!610627))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94654 (= res!713843 (validMask!0 mask!1515))))

(assert (=> start!94654 e!610627))

(assert (=> start!94654 true))

(assert (=> start!94654 tp_is_empty!25711))

(declare-fun e!610630 () Bool)

(declare-fun array_inv!25286 (array!68368) Bool)

(assert (=> start!94654 (and (array_inv!25286 _values!955) e!610630)))

(assert (=> start!94654 tp!77156))

(declare-fun array_inv!25287 (array!68370) Bool)

(assert (=> start!94654 (array_inv!25287 _keys!1163)))

(declare-fun b!1069800 () Bool)

(assert (=> b!1069800 (= e!610627 (not true))))

(declare-datatypes ((tuple2!16478 0))(
  ( (tuple2!16479 (_1!8249 (_ BitVec 64)) (_2!8249 V!39417)) )
))
(declare-datatypes ((List!23066 0))(
  ( (Nil!23063) (Cons!23062 (h!24271 tuple2!16478) (t!32402 List!23066)) )
))
(declare-datatypes ((ListLongMap!14459 0))(
  ( (ListLongMap!14460 (toList!7245 List!23066)) )
))
(declare-fun lt!472763 () ListLongMap!14459)

(declare-fun lt!472765 () ListLongMap!14459)

(assert (=> b!1069800 (= lt!472763 lt!472765)))

(declare-fun minValue!907 () V!39417)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39417)

(declare-datatypes ((Unit!35156 0))(
  ( (Unit!35157) )
))
(declare-fun lt!472764 () Unit!35156)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39417)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!821 (array!68370 array!68368 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39417 V!39417 V!39417 V!39417 (_ BitVec 32) Int) Unit!35156)

(assert (=> b!1069800 (= lt!472764 (lemmaNoChangeToArrayThenSameMapNoExtras!821 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3782 (array!68370 array!68368 (_ BitVec 32) (_ BitVec 32) V!39417 V!39417 (_ BitVec 32) Int) ListLongMap!14459)

(assert (=> b!1069800 (= lt!472765 (getCurrentListMapNoExtraKeys!3782 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1069800 (= lt!472763 (getCurrentListMapNoExtraKeys!3782 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1069801 () Bool)

(declare-fun e!610631 () Bool)

(assert (=> b!1069801 (= e!610630 (and e!610631 mapRes!40267))))

(declare-fun condMapEmpty!40267 () Bool)

(declare-fun mapDefault!40267 () ValueCell!12152)

