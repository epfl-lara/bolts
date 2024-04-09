; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93700 () Bool)

(assert start!93700)

(declare-fun b!1059595 () Bool)

(declare-fun res!707884 () Bool)

(declare-fun e!603166 () Bool)

(assert (=> b!1059595 (=> (not res!707884) (not e!603166))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-datatypes ((V!38427 0))(
  ( (V!38428 (val!12535 Int)) )
))
(declare-datatypes ((ValueCell!11781 0))(
  ( (ValueCellFull!11781 (v!15146 V!38427)) (EmptyCell!11781) )
))
(declare-datatypes ((array!66944 0))(
  ( (array!66945 (arr!32178 (Array (_ BitVec 32) ValueCell!11781)) (size!32715 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66944)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!66946 0))(
  ( (array!66947 (arr!32179 (Array (_ BitVec 32) (_ BitVec 64))) (size!32716 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66946)

(assert (=> b!1059595 (= res!707884 (and (= (size!32715 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32716 _keys!1163) (size!32715 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1059596 () Bool)

(assert (=> b!1059596 (= e!603166 false)))

(declare-fun lt!467135 () Bool)

(declare-datatypes ((List!22557 0))(
  ( (Nil!22554) (Cons!22553 (h!23762 (_ BitVec 64)) (t!31871 List!22557)) )
))
(declare-fun arrayNoDuplicates!0 (array!66946 (_ BitVec 32) List!22557) Bool)

(assert (=> b!1059596 (= lt!467135 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22554))))

(declare-fun mapIsEmpty!39118 () Bool)

(declare-fun mapRes!39118 () Bool)

(assert (=> mapIsEmpty!39118 mapRes!39118))

(declare-fun mapNonEmpty!39118 () Bool)

(declare-fun tp!74925 () Bool)

(declare-fun e!603163 () Bool)

(assert (=> mapNonEmpty!39118 (= mapRes!39118 (and tp!74925 e!603163))))

(declare-fun mapRest!39118 () (Array (_ BitVec 32) ValueCell!11781))

(declare-fun mapKey!39118 () (_ BitVec 32))

(declare-fun mapValue!39118 () ValueCell!11781)

(assert (=> mapNonEmpty!39118 (= (arr!32178 _values!955) (store mapRest!39118 mapKey!39118 mapValue!39118))))

(declare-fun b!1059598 () Bool)

(declare-fun tp_is_empty!24969 () Bool)

(assert (=> b!1059598 (= e!603163 tp_is_empty!24969)))

(declare-fun res!707885 () Bool)

(assert (=> start!93700 (=> (not res!707885) (not e!603166))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93700 (= res!707885 (validMask!0 mask!1515))))

(assert (=> start!93700 e!603166))

(assert (=> start!93700 true))

(declare-fun e!603165 () Bool)

(declare-fun array_inv!24790 (array!66944) Bool)

(assert (=> start!93700 (and (array_inv!24790 _values!955) e!603165)))

(declare-fun array_inv!24791 (array!66946) Bool)

(assert (=> start!93700 (array_inv!24791 _keys!1163)))

(declare-fun b!1059597 () Bool)

(declare-fun e!603164 () Bool)

(assert (=> b!1059597 (= e!603164 tp_is_empty!24969)))

(declare-fun b!1059599 () Bool)

(assert (=> b!1059599 (= e!603165 (and e!603164 mapRes!39118))))

(declare-fun condMapEmpty!39118 () Bool)

(declare-fun mapDefault!39118 () ValueCell!11781)

(assert (=> b!1059599 (= condMapEmpty!39118 (= (arr!32178 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11781)) mapDefault!39118)))))

(declare-fun b!1059600 () Bool)

(declare-fun res!707886 () Bool)

(assert (=> b!1059600 (=> (not res!707886) (not e!603166))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!66946 (_ BitVec 32)) Bool)

(assert (=> b!1059600 (= res!707886 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(assert (= (and start!93700 res!707885) b!1059595))

(assert (= (and b!1059595 res!707884) b!1059600))

(assert (= (and b!1059600 res!707886) b!1059596))

(assert (= (and b!1059599 condMapEmpty!39118) mapIsEmpty!39118))

(assert (= (and b!1059599 (not condMapEmpty!39118)) mapNonEmpty!39118))

(get-info :version)

(assert (= (and mapNonEmpty!39118 ((_ is ValueCellFull!11781) mapValue!39118)) b!1059598))

(assert (= (and b!1059599 ((_ is ValueCellFull!11781) mapDefault!39118)) b!1059597))

(assert (= start!93700 b!1059599))

(declare-fun m!979089 () Bool)

(assert (=> b!1059596 m!979089))

(declare-fun m!979091 () Bool)

(assert (=> mapNonEmpty!39118 m!979091))

(declare-fun m!979093 () Bool)

(assert (=> start!93700 m!979093))

(declare-fun m!979095 () Bool)

(assert (=> start!93700 m!979095))

(declare-fun m!979097 () Bool)

(assert (=> start!93700 m!979097))

(declare-fun m!979099 () Bool)

(assert (=> b!1059600 m!979099))

(check-sat (not b!1059600) (not b!1059596) (not start!93700) tp_is_empty!24969 (not mapNonEmpty!39118))
(check-sat)
