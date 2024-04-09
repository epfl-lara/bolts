; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93706 () Bool)

(assert start!93706)

(declare-fun mapIsEmpty!39127 () Bool)

(declare-fun mapRes!39127 () Bool)

(assert (=> mapIsEmpty!39127 mapRes!39127))

(declare-fun b!1059649 () Bool)

(declare-fun res!707913 () Bool)

(declare-fun e!603212 () Bool)

(assert (=> b!1059649 (=> (not res!707913) (not e!603212))))

(declare-datatypes ((array!66956 0))(
  ( (array!66957 (arr!32184 (Array (_ BitVec 32) (_ BitVec 64))) (size!32721 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66956)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!66956 (_ BitVec 32)) Bool)

(assert (=> b!1059649 (= res!707913 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1059650 () Bool)

(declare-fun e!603208 () Bool)

(declare-fun tp_is_empty!24975 () Bool)

(assert (=> b!1059650 (= e!603208 tp_is_empty!24975)))

(declare-fun b!1059651 () Bool)

(assert (=> b!1059651 (= e!603212 false)))

(declare-fun lt!467144 () Bool)

(declare-datatypes ((List!22559 0))(
  ( (Nil!22556) (Cons!22555 (h!23764 (_ BitVec 64)) (t!31873 List!22559)) )
))
(declare-fun arrayNoDuplicates!0 (array!66956 (_ BitVec 32) List!22559) Bool)

(assert (=> b!1059651 (= lt!467144 (arrayNoDuplicates!0 _keys!1163 #b00000000000000000000000000000000 Nil!22556))))

(declare-fun b!1059652 () Bool)

(declare-fun e!603209 () Bool)

(declare-fun e!603210 () Bool)

(assert (=> b!1059652 (= e!603209 (and e!603210 mapRes!39127))))

(declare-fun condMapEmpty!39127 () Bool)

(declare-datatypes ((V!38435 0))(
  ( (V!38436 (val!12538 Int)) )
))
(declare-datatypes ((ValueCell!11784 0))(
  ( (ValueCellFull!11784 (v!15149 V!38435)) (EmptyCell!11784) )
))
(declare-datatypes ((array!66958 0))(
  ( (array!66959 (arr!32185 (Array (_ BitVec 32) ValueCell!11784)) (size!32722 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66958)

(declare-fun mapDefault!39127 () ValueCell!11784)

(assert (=> b!1059652 (= condMapEmpty!39127 (= (arr!32185 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11784)) mapDefault!39127)))))

(declare-fun b!1059653 () Bool)

(declare-fun res!707911 () Bool)

(assert (=> b!1059653 (=> (not res!707911) (not e!603212))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1059653 (= res!707911 (and (= (size!32722 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32721 _keys!1163) (size!32722 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!39127 () Bool)

(declare-fun tp!74934 () Bool)

(assert (=> mapNonEmpty!39127 (= mapRes!39127 (and tp!74934 e!603208))))

(declare-fun mapRest!39127 () (Array (_ BitVec 32) ValueCell!11784))

(declare-fun mapValue!39127 () ValueCell!11784)

(declare-fun mapKey!39127 () (_ BitVec 32))

(assert (=> mapNonEmpty!39127 (= (arr!32185 _values!955) (store mapRest!39127 mapKey!39127 mapValue!39127))))

(declare-fun res!707912 () Bool)

(assert (=> start!93706 (=> (not res!707912) (not e!603212))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93706 (= res!707912 (validMask!0 mask!1515))))

(assert (=> start!93706 e!603212))

(assert (=> start!93706 true))

(declare-fun array_inv!24796 (array!66958) Bool)

(assert (=> start!93706 (and (array_inv!24796 _values!955) e!603209)))

(declare-fun array_inv!24797 (array!66956) Bool)

(assert (=> start!93706 (array_inv!24797 _keys!1163)))

(declare-fun b!1059654 () Bool)

(assert (=> b!1059654 (= e!603210 tp_is_empty!24975)))

(assert (= (and start!93706 res!707912) b!1059653))

(assert (= (and b!1059653 res!707911) b!1059649))

(assert (= (and b!1059649 res!707913) b!1059651))

(assert (= (and b!1059652 condMapEmpty!39127) mapIsEmpty!39127))

(assert (= (and b!1059652 (not condMapEmpty!39127)) mapNonEmpty!39127))

(get-info :version)

(assert (= (and mapNonEmpty!39127 ((_ is ValueCellFull!11784) mapValue!39127)) b!1059650))

(assert (= (and b!1059652 ((_ is ValueCellFull!11784) mapDefault!39127)) b!1059654))

(assert (= start!93706 b!1059652))

(declare-fun m!979125 () Bool)

(assert (=> b!1059649 m!979125))

(declare-fun m!979127 () Bool)

(assert (=> b!1059651 m!979127))

(declare-fun m!979129 () Bool)

(assert (=> mapNonEmpty!39127 m!979129))

(declare-fun m!979131 () Bool)

(assert (=> start!93706 m!979131))

(declare-fun m!979133 () Bool)

(assert (=> start!93706 m!979133))

(declare-fun m!979135 () Bool)

(assert (=> start!93706 m!979135))

(check-sat (not b!1059651) (not start!93706) tp_is_empty!24975 (not b!1059649) (not mapNonEmpty!39127))
(check-sat)
