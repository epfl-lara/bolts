; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93860 () Bool)

(assert start!93860)

(declare-fun b_free!21297 () Bool)

(declare-fun b_next!21297 () Bool)

(assert (=> start!93860 (= b_free!21297 (not b_next!21297))))

(declare-fun tp!75315 () Bool)

(declare-fun b_and!34029 () Bool)

(assert (=> start!93860 (= tp!75315 b_and!34029)))

(declare-fun b!1061130 () Bool)

(declare-fun e!604277 () Bool)

(declare-fun tp_is_empty!25107 () Bool)

(assert (=> b!1061130 (= e!604277 tp_is_empty!25107)))

(declare-fun b!1061131 () Bool)

(declare-fun res!708734 () Bool)

(declare-fun e!604274 () Bool)

(assert (=> b!1061131 (=> (not res!708734) (not e!604274))))

(declare-datatypes ((array!67202 0))(
  ( (array!67203 (arr!32305 (Array (_ BitVec 32) (_ BitVec 64))) (size!32842 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67202)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67202 (_ BitVec 32)) Bool)

(assert (=> b!1061131 (= res!708734 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1061132 () Bool)

(declare-fun e!604275 () Bool)

(declare-fun e!604276 () Bool)

(declare-fun mapRes!39331 () Bool)

(assert (=> b!1061132 (= e!604275 (and e!604276 mapRes!39331))))

(declare-fun condMapEmpty!39331 () Bool)

(declare-datatypes ((V!38611 0))(
  ( (V!38612 (val!12604 Int)) )
))
(declare-datatypes ((ValueCell!11850 0))(
  ( (ValueCellFull!11850 (v!15215 V!38611)) (EmptyCell!11850) )
))
(declare-datatypes ((array!67204 0))(
  ( (array!67205 (arr!32306 (Array (_ BitVec 32) ValueCell!11850)) (size!32843 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67204)

(declare-fun mapDefault!39331 () ValueCell!11850)

(assert (=> b!1061132 (= condMapEmpty!39331 (= (arr!32306 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11850)) mapDefault!39331)))))

(declare-fun b!1061133 () Bool)

(assert (=> b!1061133 (= e!604276 tp_is_empty!25107)))

(declare-fun res!708733 () Bool)

(assert (=> start!93860 (=> (not res!708733) (not e!604274))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93860 (= res!708733 (validMask!0 mask!1515))))

(assert (=> start!93860 e!604274))

(assert (=> start!93860 true))

(assert (=> start!93860 tp_is_empty!25107))

(declare-fun array_inv!24874 (array!67204) Bool)

(assert (=> start!93860 (and (array_inv!24874 _values!955) e!604275)))

(assert (=> start!93860 tp!75315))

(declare-fun array_inv!24875 (array!67202) Bool)

(assert (=> start!93860 (array_inv!24875 _keys!1163)))

(declare-fun b!1061134 () Bool)

(declare-fun res!708735 () Bool)

(assert (=> b!1061134 (=> (not res!708735) (not e!604274))))

(declare-datatypes ((List!22639 0))(
  ( (Nil!22636) (Cons!22635 (h!23844 (_ BitVec 64)) (t!31955 List!22639)) )
))
(declare-fun arrayNoDuplicates!0 (array!67202 (_ BitVec 32) List!22639) Bool)

(assert (=> b!1061134 (= res!708735 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22636))))

(declare-fun mapNonEmpty!39331 () Bool)

(declare-fun tp!75314 () Bool)

(assert (=> mapNonEmpty!39331 (= mapRes!39331 (and tp!75314 e!604277))))

(declare-fun mapKey!39331 () (_ BitVec 32))

(declare-fun mapValue!39331 () ValueCell!11850)

(declare-fun mapRest!39331 () (Array (_ BitVec 32) ValueCell!11850))

(assert (=> mapNonEmpty!39331 (= (arr!32306 _values!955) (store mapRest!39331 mapKey!39331 mapValue!39331))))

(declare-fun b!1061135 () Bool)

(assert (=> b!1061135 (= e!604274 false)))

(declare-fun minValue!907 () V!38611)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun defaultEntry!963 () Int)

(declare-fun zeroValueAfter!47 () V!38611)

(declare-datatypes ((tuple2!16026 0))(
  ( (tuple2!16027 (_1!8023 (_ BitVec 64)) (_2!8023 V!38611)) )
))
(declare-datatypes ((List!22640 0))(
  ( (Nil!22637) (Cons!22636 (h!23845 tuple2!16026) (t!31956 List!22640)) )
))
(declare-datatypes ((ListLongMap!14007 0))(
  ( (ListLongMap!14008 (toList!7019 List!22640)) )
))
(declare-fun lt!467467 () ListLongMap!14007)

(declare-fun getCurrentListMapNoExtraKeys!3583 (array!67202 array!67204 (_ BitVec 32) (_ BitVec 32) V!38611 V!38611 (_ BitVec 32) Int) ListLongMap!14007)

(assert (=> b!1061135 (= lt!467467 (getCurrentListMapNoExtraKeys!3583 _keys!1163 _values!955 mask!1515 extraKeysAfter!68 zeroValueAfter!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun zeroValueBefore!47 () V!38611)

(declare-fun lt!467468 () ListLongMap!14007)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1061135 (= lt!467468 (getCurrentListMapNoExtraKeys!3583 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1061136 () Bool)

(declare-fun res!708732 () Bool)

(assert (=> b!1061136 (=> (not res!708732) (not e!604274))))

(assert (=> b!1061136 (= res!708732 (and (= (size!32843 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32842 _keys!1163) (size!32843 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!39331 () Bool)

(assert (=> mapIsEmpty!39331 mapRes!39331))

(assert (= (and start!93860 res!708733) b!1061136))

(assert (= (and b!1061136 res!708732) b!1061131))

(assert (= (and b!1061131 res!708734) b!1061134))

(assert (= (and b!1061134 res!708735) b!1061135))

(assert (= (and b!1061132 condMapEmpty!39331) mapIsEmpty!39331))

(assert (= (and b!1061132 (not condMapEmpty!39331)) mapNonEmpty!39331))

(get-info :version)

(assert (= (and mapNonEmpty!39331 ((_ is ValueCellFull!11850) mapValue!39331)) b!1061130))

(assert (= (and b!1061132 ((_ is ValueCellFull!11850) mapDefault!39331)) b!1061133))

(assert (= start!93860 b!1061132))

(declare-fun m!980157 () Bool)

(assert (=> start!93860 m!980157))

(declare-fun m!980159 () Bool)

(assert (=> start!93860 m!980159))

(declare-fun m!980161 () Bool)

(assert (=> start!93860 m!980161))

(declare-fun m!980163 () Bool)

(assert (=> b!1061135 m!980163))

(declare-fun m!980165 () Bool)

(assert (=> b!1061135 m!980165))

(declare-fun m!980167 () Bool)

(assert (=> mapNonEmpty!39331 m!980167))

(declare-fun m!980169 () Bool)

(assert (=> b!1061134 m!980169))

(declare-fun m!980171 () Bool)

(assert (=> b!1061131 m!980171))

(check-sat (not b!1061131) (not mapNonEmpty!39331) tp_is_empty!25107 (not b!1061135) (not b_next!21297) b_and!34029 (not start!93860) (not b!1061134))
(check-sat b_and!34029 (not b_next!21297))
