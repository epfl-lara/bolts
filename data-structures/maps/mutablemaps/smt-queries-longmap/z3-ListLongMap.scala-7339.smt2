; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93764 () Bool)

(assert start!93764)

(declare-fun b_free!21213 () Bool)

(declare-fun b_next!21213 () Bool)

(assert (=> start!93764 (= b_free!21213 (not b_next!21213))))

(declare-fun tp!75060 () Bool)

(declare-fun b_and!33941 () Bool)

(assert (=> start!93764 (= tp!75060 b_and!33941)))

(declare-fun b!1060175 () Bool)

(declare-fun res!708203 () Bool)

(declare-fun e!603597 () Bool)

(assert (=> b!1060175 (=> (not res!708203) (not e!603597))))

(declare-datatypes ((array!67046 0))(
  ( (array!67047 (arr!32228 (Array (_ BitVec 32) (_ BitVec 64))) (size!32765 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67046)

(declare-datatypes ((List!22583 0))(
  ( (Nil!22580) (Cons!22579 (h!23788 (_ BitVec 64)) (t!31897 List!22583)) )
))
(declare-fun arrayNoDuplicates!0 (array!67046 (_ BitVec 32) List!22583) Bool)

(assert (=> b!1060175 (= res!708203 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22580))))

(declare-fun b!1060176 () Bool)

(declare-fun e!603595 () Bool)

(declare-fun tp_is_empty!25023 () Bool)

(assert (=> b!1060176 (= e!603595 tp_is_empty!25023)))

(declare-fun b!1060177 () Bool)

(assert (=> b!1060177 (= e!603597 false)))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38499 0))(
  ( (V!38500 (val!12562 Int)) )
))
(declare-fun zeroValueBefore!47 () V!38499)

(declare-datatypes ((ValueCell!11808 0))(
  ( (ValueCellFull!11808 (v!15173 V!38499)) (EmptyCell!11808) )
))
(declare-datatypes ((array!67048 0))(
  ( (array!67049 (arr!32229 (Array (_ BitVec 32) ValueCell!11808)) (size!32766 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67048)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38499)

(declare-datatypes ((tuple2!15970 0))(
  ( (tuple2!15971 (_1!7995 (_ BitVec 64)) (_2!7995 V!38499)) )
))
(declare-datatypes ((List!22584 0))(
  ( (Nil!22581) (Cons!22580 (h!23789 tuple2!15970) (t!31898 List!22584)) )
))
(declare-datatypes ((ListLongMap!13951 0))(
  ( (ListLongMap!13952 (toList!6991 List!22584)) )
))
(declare-fun lt!467216 () ListLongMap!13951)

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3555 (array!67046 array!67048 (_ BitVec 32) (_ BitVec 32) V!38499 V!38499 (_ BitVec 32) Int) ListLongMap!13951)

(assert (=> b!1060177 (= lt!467216 (getCurrentListMapNoExtraKeys!3555 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun mapNonEmpty!39202 () Bool)

(declare-fun mapRes!39202 () Bool)

(declare-fun tp!75059 () Bool)

(assert (=> mapNonEmpty!39202 (= mapRes!39202 (and tp!75059 e!603595))))

(declare-fun mapRest!39202 () (Array (_ BitVec 32) ValueCell!11808))

(declare-fun mapValue!39202 () ValueCell!11808)

(declare-fun mapKey!39202 () (_ BitVec 32))

(assert (=> mapNonEmpty!39202 (= (arr!32229 _values!955) (store mapRest!39202 mapKey!39202 mapValue!39202))))

(declare-fun b!1060178 () Bool)

(declare-fun e!603599 () Bool)

(declare-fun e!603598 () Bool)

(assert (=> b!1060178 (= e!603599 (and e!603598 mapRes!39202))))

(declare-fun condMapEmpty!39202 () Bool)

(declare-fun mapDefault!39202 () ValueCell!11808)

(assert (=> b!1060178 (= condMapEmpty!39202 (= (arr!32229 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11808)) mapDefault!39202)))))

(declare-fun b!1060179 () Bool)

(declare-fun res!708202 () Bool)

(assert (=> b!1060179 (=> (not res!708202) (not e!603597))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67046 (_ BitVec 32)) Bool)

(assert (=> b!1060179 (= res!708202 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!708201 () Bool)

(assert (=> start!93764 (=> (not res!708201) (not e!603597))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93764 (= res!708201 (validMask!0 mask!1515))))

(assert (=> start!93764 e!603597))

(assert (=> start!93764 true))

(assert (=> start!93764 tp_is_empty!25023))

(declare-fun array_inv!24824 (array!67048) Bool)

(assert (=> start!93764 (and (array_inv!24824 _values!955) e!603599)))

(assert (=> start!93764 tp!75060))

(declare-fun array_inv!24825 (array!67046) Bool)

(assert (=> start!93764 (array_inv!24825 _keys!1163)))

(declare-fun mapIsEmpty!39202 () Bool)

(assert (=> mapIsEmpty!39202 mapRes!39202))

(declare-fun b!1060180 () Bool)

(assert (=> b!1060180 (= e!603598 tp_is_empty!25023)))

(declare-fun b!1060181 () Bool)

(declare-fun res!708204 () Bool)

(assert (=> b!1060181 (=> (not res!708204) (not e!603597))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(assert (=> b!1060181 (= res!708204 (and (= (size!32766 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32765 _keys!1163) (size!32766 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and start!93764 res!708201) b!1060181))

(assert (= (and b!1060181 res!708204) b!1060179))

(assert (= (and b!1060179 res!708202) b!1060175))

(assert (= (and b!1060175 res!708203) b!1060177))

(assert (= (and b!1060178 condMapEmpty!39202) mapIsEmpty!39202))

(assert (= (and b!1060178 (not condMapEmpty!39202)) mapNonEmpty!39202))

(get-info :version)

(assert (= (and mapNonEmpty!39202 ((_ is ValueCellFull!11808) mapValue!39202)) b!1060176))

(assert (= (and b!1060178 ((_ is ValueCellFull!11808) mapDefault!39202)) b!1060180))

(assert (= start!93764 b!1060178))

(declare-fun m!979463 () Bool)

(assert (=> b!1060175 m!979463))

(declare-fun m!979465 () Bool)

(assert (=> b!1060179 m!979465))

(declare-fun m!979467 () Bool)

(assert (=> mapNonEmpty!39202 m!979467))

(declare-fun m!979469 () Bool)

(assert (=> b!1060177 m!979469))

(declare-fun m!979471 () Bool)

(assert (=> start!93764 m!979471))

(declare-fun m!979473 () Bool)

(assert (=> start!93764 m!979473))

(declare-fun m!979475 () Bool)

(assert (=> start!93764 m!979475))

(check-sat tp_is_empty!25023 (not b_next!21213) (not mapNonEmpty!39202) (not b!1060179) (not b!1060177) b_and!33941 (not b!1060175) (not start!93764))
(check-sat b_and!33941 (not b_next!21213))
