; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!94856 () Bool)

(assert start!94856)

(declare-fun b_free!22049 () Bool)

(declare-fun b_next!22049 () Bool)

(assert (=> start!94856 (= b_free!22049 (not b_next!22049))))

(declare-fun tp!77609 () Bool)

(declare-fun b_and!34909 () Bool)

(assert (=> start!94856 (= tp!77609 b_and!34909)))

(declare-fun b!1072108 () Bool)

(declare-fun e!612342 () Bool)

(declare-fun e!612341 () Bool)

(assert (=> b!1072108 (= e!612342 (not e!612341))))

(declare-fun res!715240 () Bool)

(assert (=> b!1072108 (=> res!715240 e!612341)))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1072108 (= res!715240 (or (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!39613 0))(
  ( (V!39614 (val!12980 Int)) )
))
(declare-datatypes ((tuple2!16590 0))(
  ( (tuple2!16591 (_1!8305 (_ BitVec 64)) (_2!8305 V!39613)) )
))
(declare-datatypes ((List!23170 0))(
  ( (Nil!23167) (Cons!23166 (h!24375 tuple2!16590) (t!32512 List!23170)) )
))
(declare-datatypes ((ListLongMap!14571 0))(
  ( (ListLongMap!14572 (toList!7301 List!23170)) )
))
(declare-fun lt!474976 () ListLongMap!14571)

(declare-fun lt!474982 () ListLongMap!14571)

(assert (=> b!1072108 (= lt!474976 lt!474982)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun zeroValueBefore!47 () V!39613)

(declare-datatypes ((ValueCell!12226 0))(
  ( (ValueCellFull!12226 (v!15598 V!39613)) (EmptyCell!12226) )
))
(declare-datatypes ((array!68648 0))(
  ( (array!68649 (arr!33015 (Array (_ BitVec 32) ValueCell!12226)) (size!33552 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68648)

(declare-fun minValue!907 () V!39613)

(declare-datatypes ((Unit!35263 0))(
  ( (Unit!35264) )
))
(declare-fun lt!474979 () Unit!35263)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39613)

(declare-datatypes ((array!68650 0))(
  ( (array!68651 (arr!33016 (Array (_ BitVec 32) (_ BitVec 64))) (size!33553 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68650)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!871 (array!68650 array!68648 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!39613 V!39613 V!39613 V!39613 (_ BitVec 32) Int) Unit!35263)

(assert (=> b!1072108 (= lt!474979 (lemmaNoChangeToArrayThenSameMapNoExtras!871 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 extraKeysAfter!68 zeroValueBefore!47 zeroValueAfter!47 minValue!907 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun getCurrentListMapNoExtraKeys!3832 (array!68650 array!68648 (_ BitVec 32) (_ BitVec 32) V!39613 V!39613 (_ BitVec 32) Int) ListLongMap!14571)

(assert (=> b!1072108 (= lt!474982 (getCurrentListMapNoExtraKeys!3832 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1072108 (= lt!474976 (getCurrentListMapNoExtraKeys!3832 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1072109 () Bool)

(declare-fun e!612340 () Bool)

(declare-fun lt!474981 () ListLongMap!14571)

(declare-fun lt!474973 () tuple2!16590)

(declare-fun +!3156 (ListLongMap!14571 tuple2!16590) ListLongMap!14571)

(assert (=> b!1072109 (= e!612340 (= lt!474981 (+!3156 lt!474982 lt!474973)))))

(declare-fun res!715242 () Bool)

(assert (=> start!94856 (=> (not res!715242) (not e!612342))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94856 (= res!715242 (validMask!0 mask!1515))))

(assert (=> start!94856 e!612342))

(assert (=> start!94856 true))

(declare-fun tp_is_empty!25859 () Bool)

(assert (=> start!94856 tp_is_empty!25859))

(declare-fun e!612345 () Bool)

(declare-fun array_inv!25380 (array!68648) Bool)

(assert (=> start!94856 (and (array_inv!25380 _values!955) e!612345)))

(assert (=> start!94856 tp!77609))

(declare-fun array_inv!25381 (array!68650) Bool)

(assert (=> start!94856 (array_inv!25381 _keys!1163)))

(declare-fun b!1072110 () Bool)

(declare-fun res!715243 () Bool)

(assert (=> b!1072110 (=> (not res!715243) (not e!612342))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68650 (_ BitVec 32)) Bool)

(assert (=> b!1072110 (= res!715243 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapNonEmpty!40498 () Bool)

(declare-fun mapRes!40498 () Bool)

(declare-fun tp!77610 () Bool)

(declare-fun e!612346 () Bool)

(assert (=> mapNonEmpty!40498 (= mapRes!40498 (and tp!77610 e!612346))))

(declare-fun mapRest!40498 () (Array (_ BitVec 32) ValueCell!12226))

(declare-fun mapValue!40498 () ValueCell!12226)

(declare-fun mapKey!40498 () (_ BitVec 32))

(assert (=> mapNonEmpty!40498 (= (arr!33015 _values!955) (store mapRest!40498 mapKey!40498 mapValue!40498))))

(declare-fun b!1072111 () Bool)

(declare-fun res!715244 () Bool)

(assert (=> b!1072111 (=> (not res!715244) (not e!612342))))

(declare-datatypes ((List!23171 0))(
  ( (Nil!23168) (Cons!23167 (h!24376 (_ BitVec 64)) (t!32513 List!23171)) )
))
(declare-fun arrayNoDuplicates!0 (array!68650 (_ BitVec 32) List!23171) Bool)

(assert (=> b!1072111 (= res!715244 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23168))))

(declare-fun b!1072112 () Bool)

(assert (=> b!1072112 (= e!612341 true)))

(declare-fun lt!474980 () ListLongMap!14571)

(declare-fun lt!474977 () ListLongMap!14571)

(declare-fun -!691 (ListLongMap!14571 (_ BitVec 64)) ListLongMap!14571)

(assert (=> b!1072112 (= lt!474980 (-!691 lt!474977 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!474984 () ListLongMap!14571)

(declare-fun lt!474974 () ListLongMap!14571)

(assert (=> b!1072112 (= lt!474984 lt!474974)))

(declare-fun lt!474985 () Unit!35263)

(declare-fun addCommutativeForDiffKeys!735 (ListLongMap!14571 (_ BitVec 64) V!39613 (_ BitVec 64) V!39613) Unit!35263)

(assert (=> b!1072112 (= lt!474985 (addCommutativeForDiffKeys!735 lt!474976 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(declare-fun lt!474983 () ListLongMap!14571)

(assert (=> b!1072112 (= (-!691 lt!474974 #b0000000000000000000000000000000000000000000000000000000000000000) lt!474983)))

(declare-fun lt!474978 () tuple2!16590)

(assert (=> b!1072112 (= lt!474974 (+!3156 lt!474983 lt!474978))))

(declare-fun lt!474975 () Unit!35263)

(declare-fun addThenRemoveForNewKeyIsSame!65 (ListLongMap!14571 (_ BitVec 64) V!39613) Unit!35263)

(assert (=> b!1072112 (= lt!474975 (addThenRemoveForNewKeyIsSame!65 lt!474983 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(assert (=> b!1072112 (= lt!474983 (+!3156 lt!474976 lt!474973))))

(assert (=> b!1072112 e!612340))

(declare-fun res!715245 () Bool)

(assert (=> b!1072112 (=> (not res!715245) (not e!612340))))

(assert (=> b!1072112 (= res!715245 (= lt!474977 lt!474984))))

(assert (=> b!1072112 (= lt!474984 (+!3156 (+!3156 lt!474976 lt!474978) lt!474973))))

(assert (=> b!1072112 (= lt!474973 (tuple2!16591 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!907))))

(assert (=> b!1072112 (= lt!474978 (tuple2!16591 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!47))))

(declare-fun getCurrentListMap!4163 (array!68650 array!68648 (_ BitVec 32) (_ BitVec 32) V!39613 V!39613 (_ BitVec 32) Int) ListLongMap!14571)

(assert (=> b!1072112 (= lt!474981 (getCurrentListMap!4163 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(assert (=> b!1072112 (= lt!474977 (getCurrentListMap!4163 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1072113 () Bool)

(declare-fun e!612344 () Bool)

(assert (=> b!1072113 (= e!612344 tp_is_empty!25859)))

(declare-fun b!1072114 () Bool)

(assert (=> b!1072114 (= e!612345 (and e!612344 mapRes!40498))))

(declare-fun condMapEmpty!40498 () Bool)

(declare-fun mapDefault!40498 () ValueCell!12226)

