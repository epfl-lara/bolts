; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94880 () Bool)

(assert start!94880)

(declare-fun b_free!22073 () Bool)

(declare-fun b_next!22073 () Bool)

(assert (=> start!94880 (= b_free!22073 (not b_next!22073))))

(declare-fun tp!77682 () Bool)

(declare-fun b_and!34933 () Bool)

(assert (=> start!94880 (= tp!77682 b_and!34933)))

(declare-fun mapIsEmpty!40534 () Bool)

(declare-fun mapRes!40534 () Bool)

(assert (=> mapIsEmpty!40534 mapRes!40534))

(declare-fun b!1072432 () Bool)

(declare-fun res!715456 () Bool)

(declare-fun e!612594 () Bool)

(assert (=> b!1072432 (=> (not res!715456) (not e!612594))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39645 0))(
  ( (V!39646 (val!12992 Int)) )
))
(declare-datatypes ((ValueCell!12238 0))(
  ( (ValueCellFull!12238 (v!15610 V!39645)) (EmptyCell!12238) )
))
(declare-datatypes ((array!68694 0))(
  ( (array!68695 (arr!33038 (Array (_ BitVec 32) ValueCell!12238)) (size!33575 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68694)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!68696 0))(
  ( (array!68697 (arr!33039 (Array (_ BitVec 32) (_ BitVec 64))) (size!33576 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68696)

(assert (=> b!1072432 (= res!715456 (and (= (size!33575 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33576 _keys!1163) (size!33575 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1072433 () Bool)

(declare-fun e!612595 () Bool)

(declare-fun tp_is_empty!25883 () Bool)

(assert (=> b!1072433 (= e!612595 tp_is_empty!25883)))

(declare-fun res!715458 () Bool)

(assert (=> start!94880 (=> (not res!715458) (not e!612594))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94880 (= res!715458 (validMask!0 mask!1515))))

(assert (=> start!94880 e!612594))

(assert (=> start!94880 true))

(assert (=> start!94880 tp_is_empty!25883))

(declare-fun e!612596 () Bool)

(declare-fun array_inv!25396 (array!68694) Bool)

(assert (=> start!94880 (and (array_inv!25396 _values!955) e!612596)))

(assert (=> start!94880 tp!77682))

(declare-fun array_inv!25397 (array!68696) Bool)

(assert (=> start!94880 (array_inv!25397 _keys!1163)))

(declare-fun b!1072434 () Bool)

(declare-fun e!612592 () Bool)

(assert (=> b!1072434 (= e!612592 tp_is_empty!25883)))

(declare-fun mapNonEmpty!40534 () Bool)

(declare-fun tp!77681 () Bool)

(assert (=> mapNonEmpty!40534 (= mapRes!40534 (and tp!77681 e!612592))))

(declare-fun mapRest!40534 () (Array (_ BitVec 32) ValueCell!12238))

(declare-fun mapValue!40534 () ValueCell!12238)

(declare-fun mapKey!40534 () (_ BitVec 32))

(assert (=> mapNonEmpty!40534 (= (arr!33038 _values!955) (store mapRest!40534 mapKey!40534 mapValue!40534))))

(declare-fun b!1072435 () Bool)

(declare-fun e!612597 () Bool)

(assert (=> b!1072435 (= e!612594 (not e!612597))))

(declare-fun res!715457 () Bool)

(assert (=> b!1072435 (=> res!715457 e!612597)))

(assert (=> b!1072435 (= res!715457 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!16608 0))(
  ( (tuple2!16609 (_1!8314 (_ BitVec 64)) (_2!8314 V!39645)) )
))
(declare-datatypes ((List!23188 0))(
  ( (Nil!23185) (Cons!23184 (h!24393 tuple2!16608) (t!32530 List!23188)) )
))
(declare-datatypes ((ListLongMap!14589 0))(
  ( (ListLongMap!14590 (toList!7310 List!23188)) )
))
(declare-fun lt!475452 () ListLongMap!14589)

(declare-fun lt!475446 () ListLongMap!14589)

(assert (=> b!1072435 (= lt!475452 lt!475446)))

(declare-datatypes ((Unit!35281 0))(
  ( (Unit!35282) )
))
(declare-fun lt!475449 () Unit!35281)

(declare-fun zeroValueBefore!47 () V!39645)

(declare-fun minValue!907 () V!39645)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39645)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!879 (array!68696 array!68694 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39645 V!39645 V!39645 V!39645 (_ BitVec 32) Int) Unit!35281)

(assert (=> b!1072435 (= lt!475449 (lemmaNoChangeToArrayThenSameMapNoExtras!879 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3840 (array!68696 array!68694 (_ BitVec 32) (_ BitVec 32) V!39645 V!39645 (_ BitVec 32) Int) ListLongMap!14589)

(assert (=> b!1072435 (= lt!475446 (getCurrentListMapNoExtraKeys!3840 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1072435 (= lt!475452 (getCurrentListMapNoExtraKeys!3840 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1072436 () Bool)

(declare-fun res!715460 () Bool)

(assert (=> b!1072436 (=> (not res!715460) (not e!612594))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68696 (_ BitVec 32)) Bool)

(assert (=> b!1072436 (= res!715460 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun lt!475451 () tuple2!16608)

(declare-fun b!1072437 () Bool)

(declare-fun lt!475447 () ListLongMap!14589)

(declare-fun e!612593 () Bool)

(declare-fun +!3165 (ListLongMap!14589 tuple2!16608) ListLongMap!14589)

(assert (=> b!1072437 (= e!612593 (= lt!475447 (+!3165 lt!475446 lt!475451)))))

(declare-fun b!1072438 () Bool)

(declare-fun res!715461 () Bool)

(assert (=> b!1072438 (=> (not res!715461) (not e!612594))))

(declare-datatypes ((List!23189 0))(
  ( (Nil!23186) (Cons!23185 (h!24394 (_ BitVec 64)) (t!32531 List!23189)) )
))
(declare-fun arrayNoDuplicates!0 (array!68696 (_ BitVec 32) List!23189) Bool)

(assert (=> b!1072438 (= res!715461 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23186))))

(declare-fun b!1072439 () Bool)

(assert (=> b!1072439 (= e!612597 true)))

(declare-fun lt!475445 () ListLongMap!14589)

(declare-fun lt!475442 () ListLongMap!14589)

(declare-fun -!700 (ListLongMap!14589 (_ BitVec 64)) ListLongMap!14589)

(assert (=> b!1072439 (= lt!475445 (-!700 lt!475442 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!475448 () ListLongMap!14589)

(declare-fun lt!475441 () ListLongMap!14589)

(assert (=> b!1072439 (= lt!475448 lt!475441)))

(declare-fun lt!475450 () Unit!35281)

(declare-fun addCommutativeForDiffKeys!744 (ListLongMap!14589 (_ BitVec 64) V!39645 (_ BitVec 64) V!39645) Unit!35281)

(assert (=> b!1072439 (= lt!475450 (addCommutativeForDiffKeys!744 lt!475452 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!475444 () ListLongMap!14589)

(assert (=> b!1072439 (= (-!700 lt!475441 #b0000000000000000000000000000000000000000000000000000000000000000) lt!475444)))

(declare-fun lt!475443 () tuple2!16608)

(assert (=> b!1072439 (= lt!475441 (+!3165 lt!475444 lt!475443))))

(declare-fun lt!475453 () Unit!35281)

(declare-fun addThenRemoveForNewKeyIsSame!74 (ListLongMap!14589 (_ BitVec 64) V!39645) Unit!35281)

(assert (=> b!1072439 (= lt!475453 (addThenRemoveForNewKeyIsSame!74 lt!475444 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(assert (=> b!1072439 (= lt!475444 (+!3165 lt!475452 lt!475451))))

(assert (=> b!1072439 e!612593))

(declare-fun res!715459 () Bool)

(assert (=> b!1072439 (=> (not res!715459) (not e!612593))))

(assert (=> b!1072439 (= res!715459 (= lt!475442 lt!475448))))

(assert (=> b!1072439 (= lt!475448 (+!3165 (+!3165 lt!475452 lt!475443) lt!475451))))

(assert (=> b!1072439 (= lt!475451 (tuple2!16609 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1072439 (= lt!475443 (tuple2!16609 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun getCurrentListMap!4172 (array!68696 array!68694 (_ BitVec 32) (_ BitVec 32) V!39645 V!39645 (_ BitVec 32) Int) ListLongMap!14589)

(assert (=> b!1072439 (= lt!475447 (getCurrentListMap!4172 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1072439 (= lt!475442 (getCurrentListMap!4172 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1072440 () Bool)

(assert (=> b!1072440 (= e!612596 (and e!612595 mapRes!40534))))

(declare-fun condMapEmpty!40534 () Bool)

(declare-fun mapDefault!40534 () ValueCell!12238)

