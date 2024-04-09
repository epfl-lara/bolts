; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93682 () Bool)

(assert start!93682)

(declare-fun res!707805 () Bool)

(declare-fun e!603032 () Bool)

(assert (=> start!93682 (=> (not res!707805) (not e!603032))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93682 (= res!707805 (validMask!0 mask!1515))))

(assert (=> start!93682 e!603032))

(assert (=> start!93682 true))

(declare-datatypes ((V!38403 0))(
  ( (V!38404 (val!12526 Int)) )
))
(declare-datatypes ((ValueCell!11772 0))(
  ( (ValueCellFull!11772 (v!15137 V!38403)) (EmptyCell!11772) )
))
(declare-datatypes ((array!66910 0))(
  ( (array!66911 (arr!32161 (Array (_ BitVec 32) ValueCell!11772)) (size!32698 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66910)

(declare-fun e!603028 () Bool)

(declare-fun array_inv!24774 (array!66910) Bool)

(assert (=> start!93682 (and (array_inv!24774 _values!955) e!603028)))

(declare-datatypes ((array!66912 0))(
  ( (array!66913 (arr!32162 (Array (_ BitVec 32) (_ BitVec 64))) (size!32699 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66912)

(declare-fun array_inv!24775 (array!66912) Bool)

(assert (=> start!93682 (array_inv!24775 _keys!1163)))

(declare-fun b!1059433 () Bool)

(declare-fun e!603031 () Bool)

(declare-fun tp_is_empty!24951 () Bool)

(assert (=> b!1059433 (= e!603031 tp_is_empty!24951)))

(declare-fun mapIsEmpty!39091 () Bool)

(declare-fun mapRes!39091 () Bool)

(assert (=> mapIsEmpty!39091 mapRes!39091))

(declare-fun b!1059434 () Bool)

(assert (=> b!1059434 (= e!603032 false)))

(declare-fun lt!467108 () Bool)

(declare-datatypes ((List!22552 0))(
  ( (Nil!22549) (Cons!22548 (h!23757 (_ BitVec 64)) (t!31866 List!22552)) )
))
(declare-fun arrayNoDuplicates!0 (array!66912 (_ BitVec 32) List!22552) Bool)

(assert (=> b!1059434 (= lt!467108 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22549))))

(declare-fun b!1059435 () Bool)

(declare-fun res!707804 () Bool)

(assert (=> b!1059435 (=> (not res!707804) (not e!603032))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1059435 (= res!707804 (and (= (size!32698 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32699 _keys!1163) (size!32698 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!39091 () Bool)

(declare-fun tp!74898 () Bool)

(assert (=> mapNonEmpty!39091 (= mapRes!39091 (and tp!74898 e!603031))))

(declare-fun mapValue!39091 () ValueCell!11772)

(declare-fun mapKey!39091 () (_ BitVec 32))

(declare-fun mapRest!39091 () (Array (_ BitVec 32) ValueCell!11772))

(assert (=> mapNonEmpty!39091 (= (arr!32161 _values!955) (store mapRest!39091 mapKey!39091 mapValue!39091))))

(declare-fun b!1059436 () Bool)

(declare-fun e!603030 () Bool)

(assert (=> b!1059436 (= e!603028 (and e!603030 mapRes!39091))))

(declare-fun condMapEmpty!39091 () Bool)

(declare-fun mapDefault!39091 () ValueCell!11772)

(assert (=> b!1059436 (= condMapEmpty!39091 (= (arr!32161 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11772)) mapDefault!39091)))))

(declare-fun b!1059437 () Bool)

(assert (=> b!1059437 (= e!603030 tp_is_empty!24951)))

(declare-fun b!1059438 () Bool)

(declare-fun res!707803 () Bool)

(assert (=> b!1059438 (=> (not res!707803) (not e!603032))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!66912 (_ BitVec 32)) Bool)

(assert (=> b!1059438 (= res!707803 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(assert (= (and start!93682 res!707805) b!1059435))

(assert (= (and b!1059435 res!707804) b!1059438))

(assert (= (and b!1059438 res!707803) b!1059434))

(assert (= (and b!1059436 condMapEmpty!39091) mapIsEmpty!39091))

(assert (= (and b!1059436 (not condMapEmpty!39091)) mapNonEmpty!39091))

(get-info :version)

(assert (= (and mapNonEmpty!39091 ((_ is ValueCellFull!11772) mapValue!39091)) b!1059433))

(assert (= (and b!1059436 ((_ is ValueCellFull!11772) mapDefault!39091)) b!1059437))

(assert (= start!93682 b!1059436))

(declare-fun m!978981 () Bool)

(assert (=> start!93682 m!978981))

(declare-fun m!978983 () Bool)

(assert (=> start!93682 m!978983))

(declare-fun m!978985 () Bool)

(assert (=> start!93682 m!978985))

(declare-fun m!978987 () Bool)

(assert (=> b!1059434 m!978987))

(declare-fun m!978989 () Bool)

(assert (=> mapNonEmpty!39091 m!978989))

(declare-fun m!978991 () Bool)

(assert (=> b!1059438 m!978991))

(check-sat (not mapNonEmpty!39091) tp_is_empty!24951 (not start!93682) (not b!1059434) (not b!1059438))
(check-sat)
