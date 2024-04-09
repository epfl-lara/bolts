; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93752 () Bool)

(assert start!93752)

(declare-fun b_free!21201 () Bool)

(declare-fun b_next!21201 () Bool)

(assert (=> start!93752 (= b_free!21201 (not b_next!21201))))

(declare-fun tp!75024 () Bool)

(declare-fun b_and!33929 () Bool)

(assert (=> start!93752 (= tp!75024 b_and!33929)))

(declare-fun b!1060049 () Bool)

(declare-fun res!708131 () Bool)

(declare-fun e!603506 () Bool)

(assert (=> b!1060049 (=> (not res!708131) (not e!603506))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38483 0))(
  ( (V!38484 (val!12556 Int)) )
))
(declare-datatypes ((ValueCell!11802 0))(
  ( (ValueCellFull!11802 (v!15167 V!38483)) (EmptyCell!11802) )
))
(declare-datatypes ((array!67024 0))(
  ( (array!67025 (arr!32217 (Array (_ BitVec 32) ValueCell!11802)) (size!32754 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67024)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67026 0))(
  ( (array!67027 (arr!32218 (Array (_ BitVec 32) (_ BitVec 64))) (size!32755 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67026)

(assert (=> b!1060049 (= res!708131 (and (= (size!32754 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32755 _keys!1163) (size!32754 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1060050 () Bool)

(declare-fun res!708132 () Bool)

(assert (=> b!1060050 (=> (not res!708132) (not e!603506))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67026 (_ BitVec 32)) Bool)

(assert (=> b!1060050 (= res!708132 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun mapIsEmpty!39184 () Bool)

(declare-fun mapRes!39184 () Bool)

(assert (=> mapIsEmpty!39184 mapRes!39184))

(declare-fun b!1060051 () Bool)

(declare-fun e!603508 () Bool)

(declare-fun tp_is_empty!25011 () Bool)

(assert (=> b!1060051 (= e!603508 tp_is_empty!25011)))

(declare-fun b!1060052 () Bool)

(assert (=> b!1060052 (= e!603506 false)))

(declare-fun zeroValueBefore!47 () V!38483)

(declare-datatypes ((tuple2!15962 0))(
  ( (tuple2!15963 (_1!7991 (_ BitVec 64)) (_2!7991 V!38483)) )
))
(declare-datatypes ((List!22576 0))(
  ( (Nil!22573) (Cons!22572 (h!23781 tuple2!15962) (t!31890 List!22576)) )
))
(declare-datatypes ((ListLongMap!13943 0))(
  ( (ListLongMap!13944 (toList!6987 List!22576)) )
))
(declare-fun lt!467198 () ListLongMap!13943)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38483)

(declare-fun getCurrentListMapNoExtraKeys!3551 (array!67026 array!67024 (_ BitVec 32) (_ BitVec 32) V!38483 V!38483 (_ BitVec 32) Int) ListLongMap!13943)

(assert (=> b!1060052 (= lt!467198 (getCurrentListMapNoExtraKeys!3551 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1060053 () Bool)

(declare-fun res!708129 () Bool)

(assert (=> b!1060053 (=> (not res!708129) (not e!603506))))

(declare-datatypes ((List!22577 0))(
  ( (Nil!22574) (Cons!22573 (h!23782 (_ BitVec 64)) (t!31891 List!22577)) )
))
(declare-fun arrayNoDuplicates!0 (array!67026 (_ BitVec 32) List!22577) Bool)

(assert (=> b!1060053 (= res!708129 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22574))))

(declare-fun b!1060054 () Bool)

(declare-fun e!603507 () Bool)

(assert (=> b!1060054 (= e!603507 tp_is_empty!25011)))

(declare-fun b!1060055 () Bool)

(declare-fun e!603509 () Bool)

(assert (=> b!1060055 (= e!603509 (and e!603507 mapRes!39184))))

(declare-fun condMapEmpty!39184 () Bool)

(declare-fun mapDefault!39184 () ValueCell!11802)

(assert (=> b!1060055 (= condMapEmpty!39184 (= (arr!32217 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11802)) mapDefault!39184)))))

(declare-fun mapNonEmpty!39184 () Bool)

(declare-fun tp!75023 () Bool)

(assert (=> mapNonEmpty!39184 (= mapRes!39184 (and tp!75023 e!603508))))

(declare-fun mapKey!39184 () (_ BitVec 32))

(declare-fun mapRest!39184 () (Array (_ BitVec 32) ValueCell!11802))

(declare-fun mapValue!39184 () ValueCell!11802)

(assert (=> mapNonEmpty!39184 (= (arr!32217 _values!955) (store mapRest!39184 mapKey!39184 mapValue!39184))))

(declare-fun res!708130 () Bool)

(assert (=> start!93752 (=> (not res!708130) (not e!603506))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93752 (= res!708130 (validMask!0 mask!1515))))

(assert (=> start!93752 e!603506))

(assert (=> start!93752 true))

(assert (=> start!93752 tp_is_empty!25011))

(declare-fun array_inv!24820 (array!67024) Bool)

(assert (=> start!93752 (and (array_inv!24820 _values!955) e!603509)))

(assert (=> start!93752 tp!75024))

(declare-fun array_inv!24821 (array!67026) Bool)

(assert (=> start!93752 (array_inv!24821 _keys!1163)))

(assert (= (and start!93752 res!708130) b!1060049))

(assert (= (and b!1060049 res!708131) b!1060050))

(assert (= (and b!1060050 res!708132) b!1060053))

(assert (= (and b!1060053 res!708129) b!1060052))

(assert (= (and b!1060055 condMapEmpty!39184) mapIsEmpty!39184))

(assert (= (and b!1060055 (not condMapEmpty!39184)) mapNonEmpty!39184))

(get-info :version)

(assert (= (and mapNonEmpty!39184 ((_ is ValueCellFull!11802) mapValue!39184)) b!1060051))

(assert (= (and b!1060055 ((_ is ValueCellFull!11802) mapDefault!39184)) b!1060054))

(assert (= start!93752 b!1060055))

(declare-fun m!979379 () Bool)

(assert (=> b!1060052 m!979379))

(declare-fun m!979381 () Bool)

(assert (=> b!1060053 m!979381))

(declare-fun m!979383 () Bool)

(assert (=> start!93752 m!979383))

(declare-fun m!979385 () Bool)

(assert (=> start!93752 m!979385))

(declare-fun m!979387 () Bool)

(assert (=> start!93752 m!979387))

(declare-fun m!979389 () Bool)

(assert (=> b!1060050 m!979389))

(declare-fun m!979391 () Bool)

(assert (=> mapNonEmpty!39184 m!979391))

(check-sat (not b!1060053) (not b_next!21201) tp_is_empty!25011 (not mapNonEmpty!39184) (not b!1060050) (not start!93752) (not b!1060052) b_and!33929)
(check-sat b_and!33929 (not b_next!21201))
