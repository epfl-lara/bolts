; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93746 () Bool)

(assert start!93746)

(declare-fun b_free!21195 () Bool)

(declare-fun b_next!21195 () Bool)

(assert (=> start!93746 (= b_free!21195 (not b_next!21195))))

(declare-fun tp!75006 () Bool)

(declare-fun b_and!33923 () Bool)

(assert (=> start!93746 (= tp!75006 b_and!33923)))

(declare-fun b!1059986 () Bool)

(declare-fun e!603461 () Bool)

(declare-fun tp_is_empty!25005 () Bool)

(assert (=> b!1059986 (= e!603461 tp_is_empty!25005)))

(declare-fun mapNonEmpty!39175 () Bool)

(declare-fun mapRes!39175 () Bool)

(declare-fun tp!75005 () Bool)

(assert (=> mapNonEmpty!39175 (= mapRes!39175 (and tp!75005 e!603461))))

(declare-datatypes ((V!38475 0))(
  ( (V!38476 (val!12553 Int)) )
))
(declare-datatypes ((ValueCell!11799 0))(
  ( (ValueCellFull!11799 (v!15164 V!38475)) (EmptyCell!11799) )
))
(declare-fun mapRest!39175 () (Array (_ BitVec 32) ValueCell!11799))

(declare-fun mapKey!39175 () (_ BitVec 32))

(declare-fun mapValue!39175 () ValueCell!11799)

(declare-datatypes ((array!67016 0))(
  ( (array!67017 (arr!32213 (Array (_ BitVec 32) ValueCell!11799)) (size!32750 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!67016)

(assert (=> mapNonEmpty!39175 (= (arr!32213 _values!955) (store mapRest!39175 mapKey!39175 mapValue!39175))))

(declare-fun b!1059987 () Bool)

(declare-fun e!603464 () Bool)

(assert (=> b!1059987 (= e!603464 tp_is_empty!25005)))

(declare-fun b!1059988 () Bool)

(declare-fun res!708095 () Bool)

(declare-fun e!603460 () Bool)

(assert (=> b!1059988 (=> (not res!708095) (not e!603460))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!67018 0))(
  ( (array!67019 (arr!32214 (Array (_ BitVec 32) (_ BitVec 64))) (size!32751 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!67018)

(assert (=> b!1059988 (= res!708095 (and (= (size!32750 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32751 _keys!1163) (size!32750 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!708096 () Bool)

(assert (=> start!93746 (=> (not res!708096) (not e!603460))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93746 (= res!708096 (validMask!0 mask!1515))))

(assert (=> start!93746 e!603460))

(assert (=> start!93746 true))

(assert (=> start!93746 tp_is_empty!25005))

(declare-fun e!603462 () Bool)

(declare-fun array_inv!24818 (array!67016) Bool)

(assert (=> start!93746 (and (array_inv!24818 _values!955) e!603462)))

(assert (=> start!93746 tp!75006))

(declare-fun array_inv!24819 (array!67018) Bool)

(assert (=> start!93746 (array_inv!24819 _keys!1163)))

(declare-fun b!1059989 () Bool)

(assert (=> b!1059989 (= e!603462 (and e!603464 mapRes!39175))))

(declare-fun condMapEmpty!39175 () Bool)

(declare-fun mapDefault!39175 () ValueCell!11799)

(assert (=> b!1059989 (= condMapEmpty!39175 (= (arr!32213 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11799)) mapDefault!39175)))))

(declare-fun mapIsEmpty!39175 () Bool)

(assert (=> mapIsEmpty!39175 mapRes!39175))

(declare-fun b!1059990 () Bool)

(declare-fun res!708093 () Bool)

(assert (=> b!1059990 (=> (not res!708093) (not e!603460))))

(declare-datatypes ((List!22574 0))(
  ( (Nil!22571) (Cons!22570 (h!23779 (_ BitVec 64)) (t!31888 List!22574)) )
))
(declare-fun arrayNoDuplicates!0 (array!67018 (_ BitVec 32) List!22574) Bool)

(assert (=> b!1059990 (= res!708093 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22571))))

(declare-fun b!1059991 () Bool)

(assert (=> b!1059991 (= e!603460 false)))

(declare-fun zeroValueBefore!47 () V!38475)

(declare-datatypes ((tuple2!15960 0))(
  ( (tuple2!15961 (_1!7990 (_ BitVec 64)) (_2!7990 V!38475)) )
))
(declare-datatypes ((List!22575 0))(
  ( (Nil!22572) (Cons!22571 (h!23780 tuple2!15960) (t!31889 List!22575)) )
))
(declare-datatypes ((ListLongMap!13941 0))(
  ( (ListLongMap!13942 (toList!6986 List!22575)) )
))
(declare-fun lt!467189 () ListLongMap!13941)

(declare-fun defaultEntry!963 () Int)

(declare-fun minValue!907 () V!38475)

(declare-fun getCurrentListMapNoExtraKeys!3550 (array!67018 array!67016 (_ BitVec 32) (_ BitVec 32) V!38475 V!38475 (_ BitVec 32) Int) ListLongMap!13941)

(assert (=> b!1059991 (= lt!467189 (getCurrentListMapNoExtraKeys!3550 _keys!1163 _values!955 mask!1515 extraKeysBefore!76 zeroValueBefore!47 minValue!907 #b00000000000000000000000000000000 defaultEntry!963))))

(declare-fun b!1059992 () Bool)

(declare-fun res!708094 () Bool)

(assert (=> b!1059992 (=> (not res!708094) (not e!603460))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!67018 (_ BitVec 32)) Bool)

(assert (=> b!1059992 (= res!708094 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(assert (= (and start!93746 res!708096) b!1059988))

(assert (= (and b!1059988 res!708095) b!1059992))

(assert (= (and b!1059992 res!708094) b!1059990))

(assert (= (and b!1059990 res!708093) b!1059991))

(assert (= (and b!1059989 condMapEmpty!39175) mapIsEmpty!39175))

(assert (= (and b!1059989 (not condMapEmpty!39175)) mapNonEmpty!39175))

(get-info :version)

(assert (= (and mapNonEmpty!39175 ((_ is ValueCellFull!11799) mapValue!39175)) b!1059986))

(assert (= (and b!1059989 ((_ is ValueCellFull!11799) mapDefault!39175)) b!1059987))

(assert (= start!93746 b!1059989))

(declare-fun m!979337 () Bool)

(assert (=> b!1059990 m!979337))

(declare-fun m!979339 () Bool)

(assert (=> mapNonEmpty!39175 m!979339))

(declare-fun m!979341 () Bool)

(assert (=> b!1059991 m!979341))

(declare-fun m!979343 () Bool)

(assert (=> b!1059992 m!979343))

(declare-fun m!979345 () Bool)

(assert (=> start!93746 m!979345))

(declare-fun m!979347 () Bool)

(assert (=> start!93746 m!979347))

(declare-fun m!979349 () Bool)

(assert (=> start!93746 m!979349))

(check-sat tp_is_empty!25005 (not b_next!21195) (not b!1059990) (not mapNonEmpty!39175) (not start!93746) b_and!33923 (not b!1059991) (not b!1059992))
(check-sat b_and!33923 (not b_next!21195))
