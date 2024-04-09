; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93966 () Bool)

(assert start!93966)

(declare-fun b_free!21389 () Bool)

(declare-fun b_next!21389 () Bool)

(assert (=> start!93966 (= b_free!21389 (not b_next!21389))))

(declare-fun tp!75594 () Bool)

(declare-fun b_and!34129 () Bool)

(assert (=> start!93966 (= tp!75594 b_and!34129)))

(declare-fun res!709415 () Bool)

(declare-fun e!605119 () Bool)

(assert (=> start!93966 (=> (not res!709415) (not e!605119))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93966 (= res!709415 (validMask!0 mask!1515))))

(assert (=> start!93966 e!605119))

(assert (=> start!93966 true))

(declare-fun tp_is_empty!25199 () Bool)

(assert (=> start!93966 tp_is_empty!25199))

(declare-datatypes ((V!38733 0))(
  ( (V!38734 (val!12650 Int)) )
))
(declare-datatypes ((ValueCell!11896 0))(
  ( (ValueCellFull!11896 (v!15261 V!38733)) (EmptyCell!11896) )
))
(declare-datatypes ((array!67374 0))(
  ( (array!67375 (arr!32390 (Array (_ BitVec 32) ValueCell!11896)) (size!32927 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67374)

(declare-fun e!605115 () Bool)

(declare-fun array_inv!24930 (array!67374) Bool)

(assert (=> start!93966 (and (array_inv!24930 _values!955) e!605115)))

(assert (=> start!93966 tp!75594))

(declare-datatypes ((array!67376 0))(
  ( (array!67377 (arr!32391 (Array (_ BitVec 32) (_ BitVec 64))) (size!32928 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67376)

(declare-fun array_inv!24931 (array!67376) Bool)

(assert (=> start!93966 (array_inv!24931 _keys!1163)))

(declare-fun mapIsEmpty!39472 () Bool)

(declare-fun mapRes!39472 () Bool)

(assert (=> mapIsEmpty!39472 mapRes!39472))

(declare-fun b!1062278 () Bool)

(declare-fun res!709413 () Bool)

(assert (=> b!1062278 (=> (not res!709413) (not e!605119))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1062278 (= res!709413 (and (= (size!32927 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!32928 _keys!1163) (size!32927 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1062279 () Bool)

(declare-fun res!709416 () Bool)

(assert (=> b!1062279 (=> (not res!709416) (not e!605119))))

(declare-datatypes ((List!22701 0))(
  ( (Nil!22698) (Cons!22697 (h!23906 (_ BitVec 64)) (t!32019 List!22701)) )
))
(declare-fun arrayNoDuplicates!0 (array!67376 (_ BitVec 32) List!22701) Bool)

(assert (=> b!1062279 (= res!709416 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22698))))

(declare-fun b!1062280 () Bool)

(declare-fun e!605120 () Bool)

(declare-fun e!605118 () Bool)

(assert (=> b!1062280 (= e!605120 e!605118)))

(declare-fun res!709414 () Bool)

(assert (=> b!1062280 (=> res!709414 e!605118)))

(declare-datatypes ((tuple2!16088 0))(
  ( (tuple2!16089 (_1!8054 (_ BitVec 64)) (_2!8054 V!38733)) )
))
(declare-datatypes ((List!22702 0))(
  ( (Nil!22699) (Cons!22698 (h!23907 tuple2!16088) (t!32020 List!22702)) )
))
(declare-datatypes ((ListLongMap!14069 0))(
  ( (ListLongMap!14070 (toList!7050 List!22702)) )
))
(declare-fun lt!468015 () ListLongMap!14069)

(declare-fun contains!6246 (ListLongMap!14069 (_ BitVec 64)) Bool)

(assert (=> b!1062280 (= res!709414 (contains!6246 lt!468015 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun zeroValueBefore!47 () V!38733)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38733)

(declare-fun getCurrentListMap!3996 (array!67376 array!67374 (_ BitVec 32) (_ BitVec 32) V!38733 V!38733 (_ BitVec 32) Int) ListLongMap!14069)

(assert (=> b!1062280 (= lt!468015 (getCurrentListMap!3996 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062281 () Bool)

(assert (=> b!1062281 (= e!605118 true)))

(declare-fun -!565 (ListLongMap!14069 (_ BitVec 64)) ListLongMap!14069)

(assert (=> b!1062281 (= (-!565 lt!468015 #b0000000000000000000000000000000000000000000000000000000000000000) lt!468015)))

(declare-datatypes ((Unit!34773 0))(
  ( (Unit!34774) )
))
(declare-fun lt!468016 () Unit!34773)

(declare-fun removeNotPresentStillSame!11 (ListLongMap!14069 (_ BitVec 64)) Unit!34773)

(assert (=> b!1062281 (= lt!468016 (removeNotPresentStillSame!11 lt!468015 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1062282 () Bool)

(assert (=> b!1062282 (= e!605119 (not e!605120))))

(declare-fun res!709417 () Bool)

(assert (=> b!1062282 (=> res!709417 e!605120)))

(assert (=> b!1062282 (= res!709417 (or (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!468018 () ListLongMap!14069)

(declare-fun lt!468017 () ListLongMap!14069)

(assert (=> b!1062282 (= lt!468018 lt!468017)))

(declare-fun lt!468014 () Unit!34773)

(declare-fun zeroValueAfter!47 () V!38733)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!652 (array!67376 array!67374 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!38733 V!38733 V!38733 V!38733 (_ BitVec 32) Int) Unit!34773)

(assert (=> b!1062282 (= lt!468014 (lemmaNoChangeToArrayThenSameMapNoExtras!652 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3613 (array!67376 array!67374 (_ BitVec 32) (_ BitVec 32) V!38733 V!38733 (_ BitVec 32) Int) ListLongMap!14069)

(assert (=> b!1062282 (= lt!468017 (getCurrentListMapNoExtraKeys!3613 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1062282 (= lt!468018 (getCurrentListMapNoExtraKeys!3613 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1062283 () Bool)

(declare-fun e!605116 () Bool)

(assert (=> b!1062283 (= e!605116 tp_is_empty!25199)))

(declare-fun b!1062284 () Bool)

(declare-fun res!709412 () Bool)

(assert (=> b!1062284 (=> (not res!709412) (not e!605119))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67376 (_ BitVec 32)) Bool)

(assert (=> b!1062284 (= res!709412 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!39472 () Bool)

(declare-fun tp!75593 () Bool)

(declare-fun e!605117 () Bool)

(assert (=> mapNonEmpty!39472 (= mapRes!39472 (and tp!75593 e!605117))))

(declare-fun mapValue!39472 () ValueCell!11896)

(declare-fun mapKey!39472 () (_ BitVec 32))

(declare-fun mapRest!39472 () (Array (_ BitVec 32) ValueCell!11896))

(assert (=> mapNonEmpty!39472 (= (arr!32390 _values!955) (store mapRest!39472 mapKey!39472 mapValue!39472))))

(declare-fun b!1062285 () Bool)

(assert (=> b!1062285 (= e!605117 tp_is_empty!25199)))

(declare-fun b!1062286 () Bool)

(assert (=> b!1062286 (= e!605115 (and e!605116 mapRes!39472))))

(declare-fun condMapEmpty!39472 () Bool)

(declare-fun mapDefault!39472 () ValueCell!11896)

