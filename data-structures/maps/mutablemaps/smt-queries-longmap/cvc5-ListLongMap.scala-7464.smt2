; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94728 () Bool)

(assert start!94728)

(declare-fun b_free!21961 () Bool)

(declare-fun b_next!21961 () Bool)

(assert (=> start!94728 (= b_free!21961 (not b_next!21961))))

(declare-fun tp!77340 () Bool)

(declare-fun b_and!34799 () Bool)

(assert (=> start!94728 (= tp!77340 b_and!34799)))

(declare-fun b!1070587 () Bool)

(declare-fun e!611207 () Bool)

(declare-fun e!611211 () Bool)

(assert (=> b!1070587 (= e!611207 (not e!611211))))

(declare-fun res!714308 () Bool)

(assert (=> b!1070587 (=> res!714308 e!611211)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1070587 (= res!714308 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!39497 0))(
  ( (V!39498 (val!12936 Int)) )
))
(declare-datatypes ((tuple2!16520 0))(
  ( (tuple2!16521 (_1!8270 (_ BitVec 64)) (_2!8270 V!39497)) )
))
(declare-datatypes ((List!23105 0))(
  ( (Nil!23102) (Cons!23101 (h!24310 tuple2!16520) (t!32443 List!23105)) )
))
(declare-datatypes ((ListLongMap!14501 0))(
  ( (ListLongMap!14502 (toList!7266 List!23105)) )
))
(declare-fun lt!473149 () ListLongMap!14501)

(declare-fun lt!473150 () ListLongMap!14501)

(assert (=> b!1070587 (= lt!473149 lt!473150)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39497)

(declare-datatypes ((Unit!35196 0))(
  ( (Unit!35197) )
))
(declare-fun lt!473148 () Unit!35196)

(declare-datatypes ((ValueCell!12182 0))(
  ( (ValueCellFull!12182 (v!15553 V!39497)) (EmptyCell!12182) )
))
(declare-datatypes ((array!68478 0))(
  ( (array!68479 (arr!32932 (Array (_ BitVec 32) ValueCell!12182)) (size!33469 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68478)

(declare-fun minValue!907 () V!39497)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39497)

(declare-datatypes ((array!68480 0))(
  ( (array!68481 (arr!32933 (Array (_ BitVec 32) (_ BitVec 64))) (size!33470 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68480)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!841 (array!68480 array!68478 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39497 V!39497 V!39497 V!39497 (_ BitVec 32) Int) Unit!35196)

(assert (=> b!1070587 (= lt!473148 (lemmaNoChangeToArrayThenSameMapNoExtras!841 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3802 (array!68480 array!68478 (_ BitVec 32) (_ BitVec 32) V!39497 V!39497 (_ BitVec 32) Int) ListLongMap!14501)

(assert (=> b!1070587 (= lt!473150 (getCurrentListMapNoExtraKeys!3802 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1070587 (= lt!473149 (getCurrentListMapNoExtraKeys!3802 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070588 () Bool)

(declare-fun e!611208 () Bool)

(declare-fun tp_is_empty!25771 () Bool)

(assert (=> b!1070588 (= e!611208 tp_is_empty!25771)))

(declare-fun b!1070589 () Bool)

(declare-fun res!714307 () Bool)

(assert (=> b!1070589 (=> (not res!714307) (not e!611207))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68480 (_ BitVec 32)) Bool)

(assert (=> b!1070589 (= res!714307 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1070590 () Bool)

(declare-fun res!714311 () Bool)

(assert (=> b!1070590 (=> (not res!714311) (not e!611207))))

(declare-datatypes ((List!23106 0))(
  ( (Nil!23103) (Cons!23102 (h!24311 (_ BitVec 64)) (t!32444 List!23106)) )
))
(declare-fun arrayNoDuplicates!0 (array!68480 (_ BitVec 32) List!23106) Bool)

(assert (=> b!1070590 (= res!714311 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23103))))

(declare-fun mapNonEmpty!40360 () Bool)

(declare-fun mapRes!40360 () Bool)

(declare-fun tp!77339 () Bool)

(assert (=> mapNonEmpty!40360 (= mapRes!40360 (and tp!77339 e!611208))))

(declare-fun mapKey!40360 () (_ BitVec 32))

(declare-fun mapRest!40360 () (Array (_ BitVec 32) ValueCell!12182))

(declare-fun mapValue!40360 () ValueCell!12182)

(assert (=> mapNonEmpty!40360 (= (arr!32932 _values!955) (store mapRest!40360 mapKey!40360 mapValue!40360))))

(declare-fun b!1070591 () Bool)

(assert (=> b!1070591 (= e!611211 (bvsle #b00000000000000000000000000000000 (size!33470 _keys!1163)))))

(declare-fun lt!473147 () ListLongMap!14501)

(declare-fun getCurrentListMap!4132 (array!68480 array!68478 (_ BitVec 32) (_ BitVec 32) V!39497 V!39497 (_ BitVec 32) Int) ListLongMap!14501)

(assert (=> b!1070591 (= lt!473147 (getCurrentListMap!4132 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1070592 () Bool)

(declare-fun e!611210 () Bool)

(assert (=> b!1070592 (= e!611210 tp_is_empty!25771)))

(declare-fun b!1070593 () Bool)

(declare-fun res!714309 () Bool)

(assert (=> b!1070593 (=> (not res!714309) (not e!611207))))

(assert (=> b!1070593 (= res!714309 (and (= (size!33469 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33470 _keys!1163) (size!33469 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1070594 () Bool)

(declare-fun e!611206 () Bool)

(assert (=> b!1070594 (= e!611206 (and e!611210 mapRes!40360))))

(declare-fun condMapEmpty!40360 () Bool)

(declare-fun mapDefault!40360 () ValueCell!12182)

