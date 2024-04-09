; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93688 () Bool)

(assert start!93688)

(declare-fun b!1059487 () Bool)

(declare-fun e!603073 () Bool)

(declare-fun tp_is_empty!24957 () Bool)

(assert (=> b!1059487 (= e!603073 tp_is_empty!24957)))

(declare-fun b!1059488 () Bool)

(declare-fun e!603076 () Bool)

(assert (=> b!1059488 (= e!603076 false)))

(declare-fun lt!467117 () Bool)

(declare-datatypes ((array!66922 0))(
  ( (array!66923 (arr!32167 (Array (_ BitVec 32) (_ BitVec 64))) (size!32704 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66922)

(declare-datatypes ((List!22553 0))(
  ( (Nil!22550) (Cons!22549 (h!23758 (_ BitVec 64)) (t!31867 List!22553)) )
))
(declare-fun arrayNoDuplicates!0 (array!66922 (_ BitVec 32) List!22553) Bool)

(assert (=> b!1059488 (= lt!467117 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22550))))

(declare-fun mapIsEmpty!39100 () Bool)

(declare-fun mapRes!39100 () Bool)

(assert (=> mapIsEmpty!39100 mapRes!39100))

(declare-fun mapNonEmpty!39100 () Bool)

(declare-fun tp!74907 () Bool)

(assert (=> mapNonEmpty!39100 (= mapRes!39100 (and tp!74907 e!603073))))

(declare-datatypes ((V!38411 0))(
  ( (V!38412 (val!12529 Int)) )
))
(declare-datatypes ((ValueCell!11775 0))(
  ( (ValueCellFull!11775 (v!15140 V!38411)) (EmptyCell!11775) )
))
(declare-fun mapRest!39100 () (Array (_ BitVec 32) ValueCell!11775))

(declare-datatypes ((array!66924 0))(
  ( (array!66925 (arr!32168 (Array (_ BitVec 32) ValueCell!11775)) (size!32705 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66924)

(declare-fun mapKey!39100 () (_ BitVec 32))

(declare-fun mapValue!39100 () ValueCell!11775)

(assert (=> mapNonEmpty!39100 (= (arr!32168 _values!955) (store mapRest!39100 mapKey!39100 mapValue!39100))))

(declare-fun b!1059490 () Bool)

(declare-fun res!707830 () Bool)

(assert (=> b!1059490 (=> (not res!707830) (not e!603076))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!66922 (_ BitVec 32)) Bool)

(assert (=> b!1059490 (= res!707830 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1059491 () Bool)

(declare-fun e!603075 () Bool)

(assert (=> b!1059491 (= e!603075 tp_is_empty!24957)))

(declare-fun b!1059492 () Bool)

(declare-fun e!603077 () Bool)

(assert (=> b!1059492 (= e!603077 (and e!603075 mapRes!39100))))

(declare-fun condMapEmpty!39100 () Bool)

(declare-fun mapDefault!39100 () ValueCell!11775)

(assert (=> b!1059492 (= condMapEmpty!39100 (= (arr!32168 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11775)) mapDefault!39100)))))

(declare-fun res!707832 () Bool)

(assert (=> start!93688 (=> (not res!707832) (not e!603076))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93688 (= res!707832 (validMask!0 mask!1515))))

(assert (=> start!93688 e!603076))

(assert (=> start!93688 true))

(declare-fun array_inv!24780 (array!66924) Bool)

(assert (=> start!93688 (and (array_inv!24780 _values!955) e!603077)))

(declare-fun array_inv!24781 (array!66922) Bool)

(assert (=> start!93688 (array_inv!24781 _keys!1163)))

(declare-fun b!1059489 () Bool)

(declare-fun res!707831 () Bool)

(assert (=> b!1059489 (=> (not res!707831) (not e!603076))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1059489 (= res!707831 (and (= (size!32705 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32704 _keys!1163) (size!32705 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (= (and start!93688 res!707832) b!1059489))

(assert (= (and b!1059489 res!707831) b!1059490))

(assert (= (and b!1059490 res!707830) b!1059488))

(assert (= (and b!1059492 condMapEmpty!39100) mapIsEmpty!39100))

(assert (= (and b!1059492 (not condMapEmpty!39100)) mapNonEmpty!39100))

(get-info :version)

(assert (= (and mapNonEmpty!39100 ((_ is ValueCellFull!11775) mapValue!39100)) b!1059487))

(assert (= (and b!1059492 ((_ is ValueCellFull!11775) mapDefault!39100)) b!1059491))

(assert (= start!93688 b!1059492))

(declare-fun m!979017 () Bool)

(assert (=> b!1059488 m!979017))

(declare-fun m!979019 () Bool)

(assert (=> mapNonEmpty!39100 m!979019))

(declare-fun m!979021 () Bool)

(assert (=> b!1059490 m!979021))

(declare-fun m!979023 () Bool)

(assert (=> start!93688 m!979023))

(declare-fun m!979025 () Bool)

(assert (=> start!93688 m!979025))

(declare-fun m!979027 () Bool)

(assert (=> start!93688 m!979027))

(check-sat (not mapNonEmpty!39100) tp_is_empty!24957 (not b!1059490) (not b!1059488) (not start!93688))
(check-sat)
