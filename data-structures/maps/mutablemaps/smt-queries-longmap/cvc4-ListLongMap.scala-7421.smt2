; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94402 () Bool)

(assert start!94402)

(declare-fun b_free!21707 () Bool)

(declare-fun b_next!21707 () Bool)

(assert (=> start!94402 (= b_free!21707 (not b_next!21707))))

(declare-fun tp!76565 () Bool)

(declare-fun b_and!34509 () Bool)

(assert (=> start!94402 (= tp!76565 b_and!34509)))

(declare-fun b!1067029 () Bool)

(declare-fun e!608588 () Bool)

(assert (=> b!1067029 (= e!608588 (not true))))

(declare-datatypes ((V!39157 0))(
  ( (V!39158 (val!12809 Int)) )
))
(declare-datatypes ((tuple2!16338 0))(
  ( (tuple2!16339 (_1!8179 (_ BitVec 64)) (_2!8179 V!39157)) )
))
(declare-datatypes ((List!22929 0))(
  ( (Nil!22926) (Cons!22925 (h!24134 tuple2!16338) (t!32259 List!22929)) )
))
(declare-datatypes ((ListLongMap!14319 0))(
  ( (ListLongMap!14320 (toList!7175 List!22929)) )
))
(declare-fun lt!471271 () ListLongMap!14319)

(declare-fun lt!471270 () ListLongMap!14319)

(assert (=> b!1067029 (= lt!471271 lt!471270)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39157)

(declare-datatypes ((Unit!35016 0))(
  ( (Unit!35017) )
))
(declare-fun lt!471269 () Unit!35016)

(declare-datatypes ((ValueCell!12055 0))(
  ( (ValueCellFull!12055 (v!15424 V!39157)) (EmptyCell!12055) )
))
(declare-datatypes ((array!67992 0))(
  ( (array!67993 (arr!32693 (Array (_ BitVec 32) ValueCell!12055)) (size!33230 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67992)

(declare-fun minValue!907 () V!39157)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39157)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67994 0))(
  ( (array!67995 (arr!32694 (Array (_ BitVec 32) (_ BitVec 64))) (size!33231 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67994)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!759 (array!67994 array!67992 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39157 V!39157 V!39157 V!39157 (_ BitVec 32) Int) Unit!35016)

(assert (=> b!1067029 (= lt!471269 (lemmaNoChangeToArrayThenSameMapNoExtras!759 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3720 (array!67994 array!67992 (_ BitVec 32) (_ BitVec 32) V!39157 V!39157 (_ BitVec 32) Int) ListLongMap!14319)

(assert (=> b!1067029 (= lt!471270 (getCurrentListMapNoExtraKeys!3720 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1067029 (= lt!471271 (getCurrentListMapNoExtraKeys!3720 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun res!712194 () Bool)

(assert (=> start!94402 (=> (not res!712194) (not e!608588))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94402 (= res!712194 (validMask!0 mask!1515))))

(assert (=> start!94402 e!608588))

(assert (=> start!94402 true))

(declare-fun tp_is_empty!25517 () Bool)

(assert (=> start!94402 tp_is_empty!25517))

(declare-fun e!608586 () Bool)

(declare-fun array_inv!25150 (array!67992) Bool)

(assert (=> start!94402 (and (array_inv!25150 _values!955) e!608586)))

(assert (=> start!94402 tp!76565))

(declare-fun array_inv!25151 (array!67994) Bool)

(assert (=> start!94402 (array_inv!25151 _keys!1163)))

(declare-fun mapNonEmpty!39967 () Bool)

(declare-fun mapRes!39967 () Bool)

(declare-fun tp!76566 () Bool)

(declare-fun e!608587 () Bool)

(assert (=> mapNonEmpty!39967 (= mapRes!39967 (and tp!76566 e!608587))))

(declare-fun mapKey!39967 () (_ BitVec 32))

(declare-fun mapValue!39967 () ValueCell!12055)

(declare-fun mapRest!39967 () (Array (_ BitVec 32) ValueCell!12055))

(assert (=> mapNonEmpty!39967 (= (arr!32693 _values!955) (store mapRest!39967 mapKey!39967 mapValue!39967))))

(declare-fun b!1067030 () Bool)

(declare-fun e!608584 () Bool)

(assert (=> b!1067030 (= e!608584 tp_is_empty!25517)))

(declare-fun b!1067031 () Bool)

(assert (=> b!1067031 (= e!608587 tp_is_empty!25517)))

(declare-fun b!1067032 () Bool)

(declare-fun res!712195 () Bool)

(assert (=> b!1067032 (=> (not res!712195) (not e!608588))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67994 (_ BitVec 32)) Bool)

(assert (=> b!1067032 (= res!712195 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1067033 () Bool)

(declare-fun res!712192 () Bool)

(assert (=> b!1067033 (=> (not res!712192) (not e!608588))))

(assert (=> b!1067033 (= res!712192 (and (= (size!33230 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33231 _keys!1163) (size!33230 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1067034 () Bool)

(assert (=> b!1067034 (= e!608586 (and e!608584 mapRes!39967))))

(declare-fun condMapEmpty!39967 () Bool)

(declare-fun mapDefault!39967 () ValueCell!12055)

