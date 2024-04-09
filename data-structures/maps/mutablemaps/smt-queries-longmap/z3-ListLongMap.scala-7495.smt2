; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!94980 () Bool)

(assert start!94980)

(declare-fun b_free!22149 () Bool)

(declare-fun b_next!22149 () Bool)

(assert (=> start!94980 (= b_free!22149 (not b_next!22149))))

(declare-fun tp!77912 () Bool)

(declare-fun b_and!35021 () Bool)

(assert (=> start!94980 (= tp!77912 b_and!35021)))

(declare-fun b!1073460 () Bool)

(declare-fun e!613325 () Bool)

(assert (=> b!1073460 (= e!613325 false)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!39747 0))(
  ( (V!39748 (val!13030 Int)) )
))
(declare-fun minValue!907 () V!39747)

(declare-datatypes ((array!68842 0))(
  ( (array!68843 (arr!33111 (Array (_ BitVec 32) (_ BitVec 64))) (size!33648 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!68842)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-datatypes ((ValueCell!12276 0))(
  ( (ValueCellFull!12276 (v!15649 V!39747)) (EmptyCell!12276) )
))
(declare-datatypes ((array!68844 0))(
  ( (array!68845 (arr!33112 (Array (_ BitVec 32) ValueCell!12276)) (size!33649 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!68844)

(declare-datatypes ((tuple2!16660 0))(
  ( (tuple2!16661 (_1!8340 (_ BitVec 64)) (_2!8340 V!39747)) )
))
(declare-datatypes ((List!23237 0))(
  ( (Nil!23234) (Cons!23233 (h!24442 tuple2!16660) (t!32581 List!23237)) )
))
(declare-datatypes ((ListLongMap!14641 0))(
  ( (ListLongMap!14642 (toList!7336 List!23237)) )
))
(declare-fun lt!476045 () ListLongMap!14641)

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!39747)

(declare-fun getCurrentListMapNoExtraKeys!3866 (array!68842 array!68844 (_ BitVec 32) (_ BitVec 32) V!39747 V!39747 (_ BitVec 32) Int) ListLongMap!14641)

(assert (=> b!1073460 (= lt!476045 (getCurrentListMapNoExtraKeys!3866 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!39747)

(declare-fun lt!476044 () ListLongMap!14641)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1073460 (= lt!476044 (getCurrentListMapNoExtraKeys!3866 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1073461 () Bool)

(declare-fun res!716043 () Bool)

(assert (=> b!1073461 (=> (not res!716043) (not e!613325))))

(declare-datatypes ((List!23238 0))(
  ( (Nil!23235) (Cons!23234 (h!24443 (_ BitVec 64)) (t!32582 List!23238)) )
))
(declare-fun arrayNoDuplicates!0 (array!68842 (_ BitVec 32) List!23238) Bool)

(assert (=> b!1073461 (= res!716043 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!23235))))

(declare-fun mapNonEmpty!40651 () Bool)

(declare-fun mapRes!40651 () Bool)

(declare-fun tp!77913 () Bool)

(declare-fun e!613326 () Bool)

(assert (=> mapNonEmpty!40651 (= mapRes!40651 (and tp!77913 e!613326))))

(declare-fun mapKey!40651 () (_ BitVec 32))

(declare-fun mapValue!40651 () ValueCell!12276)

(declare-fun mapRest!40651 () (Array (_ BitVec 32) ValueCell!12276))

(assert (=> mapNonEmpty!40651 (= (arr!33112 _values!955) (store mapRest!40651 mapKey!40651 mapValue!40651))))

(declare-fun b!1073462 () Bool)

(declare-fun res!716040 () Bool)

(assert (=> b!1073462 (=> (not res!716040) (not e!613325))))

(assert (=> b!1073462 (= res!716040 (and (= (size!33649 _values!955) (bvadd mask!1515 #b00000000000000000000000000000001)) (= (size!33648 _keys!1163) (size!33649 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1073463 () Bool)

(declare-fun e!613323 () Bool)

(declare-fun tp_is_empty!25959 () Bool)

(assert (=> b!1073463 (= e!613323 tp_is_empty!25959)))

(declare-fun b!1073464 () Bool)

(assert (=> b!1073464 (= e!613326 tp_is_empty!25959)))

(declare-fun b!1073465 () Bool)

(declare-fun res!716041 () Bool)

(assert (=> b!1073465 (=> (not res!716041) (not e!613325))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!68842 (_ BitVec 32)) Bool)

(assert (=> b!1073465 (= res!716041 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!716042 () Bool)

(assert (=> start!94980 (=> (not res!716042) (not e!613325))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!94980 (= res!716042 (validMask!0 mask!1515))))

(assert (=> start!94980 e!613325))

(assert (=> start!94980 true))

(assert (=> start!94980 tp_is_empty!25959))

(declare-fun e!613324 () Bool)

(declare-fun array_inv!25446 (array!68844) Bool)

(assert (=> start!94980 (and (array_inv!25446 _values!955) e!613324)))

(assert (=> start!94980 tp!77912))

(declare-fun array_inv!25447 (array!68842) Bool)

(assert (=> start!94980 (array_inv!25447 _keys!1163)))

(declare-fun b!1073466 () Bool)

(assert (=> b!1073466 (= e!613324 (and e!613323 mapRes!40651))))

(declare-fun condMapEmpty!40651 () Bool)

(declare-fun mapDefault!40651 () ValueCell!12276)

(assert (=> b!1073466 (= condMapEmpty!40651 (= (arr!33112 _values!955) ((as const (Array (_ BitVec 32) ValueCell!12276)) mapDefault!40651)))))

(declare-fun mapIsEmpty!40651 () Bool)

(assert (=> mapIsEmpty!40651 mapRes!40651))

(assert (= (and start!94980 res!716042) b!1073462))

(assert (= (and b!1073462 res!716040) b!1073465))

(assert (= (and b!1073465 res!716041) b!1073461))

(assert (= (and b!1073461 res!716043) b!1073460))

(assert (= (and b!1073466 condMapEmpty!40651) mapIsEmpty!40651))

(assert (= (and b!1073466 (not condMapEmpty!40651)) mapNonEmpty!40651))

(get-info :version)

(assert (= (and mapNonEmpty!40651 ((_ is ValueCellFull!12276) mapValue!40651)) b!1073464))

(assert (= (and b!1073466 ((_ is ValueCellFull!12276) mapDefault!40651)) b!1073463))

(assert (= start!94980 b!1073466))

(declare-fun m!992565 () Bool)

(assert (=> start!94980 m!992565))

(declare-fun m!992567 () Bool)

(assert (=> start!94980 m!992567))

(declare-fun m!992569 () Bool)

(assert (=> start!94980 m!992569))

(declare-fun m!992571 () Bool)

(assert (=> mapNonEmpty!40651 m!992571))

(declare-fun m!992573 () Bool)

(assert (=> b!1073461 m!992573))

(declare-fun m!992575 () Bool)

(assert (=> b!1073465 m!992575))

(declare-fun m!992577 () Bool)

(assert (=> b!1073460 m!992577))

(declare-fun m!992579 () Bool)

(assert (=> b!1073460 m!992579))

(check-sat b_and!35021 (not b!1073460) (not b!1073465) (not start!94980) (not b!1073461) tp_is_empty!25959 (not mapNonEmpty!40651) (not b_next!22149))
(check-sat b_and!35021 (not b_next!22149))
