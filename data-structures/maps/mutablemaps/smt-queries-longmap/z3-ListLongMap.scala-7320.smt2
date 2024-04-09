; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93596 () Bool)

(assert start!93596)

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun e!602620 () Bool)

(declare-fun b!1058919 () Bool)

(declare-datatypes ((V!38347 0))(
  ( (V!38348 (val!12505 Int)) )
))
(declare-datatypes ((ValueCell!11751 0))(
  ( (ValueCellFull!11751 (v!15115 V!38347)) (EmptyCell!11751) )
))
(declare-datatypes ((array!66824 0))(
  ( (array!66825 (arr!32123 (Array (_ BitVec 32) ValueCell!11751)) (size!32660 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66824)

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(declare-datatypes ((array!66826 0))(
  ( (array!66827 (arr!32124 (Array (_ BitVec 32) (_ BitVec 64))) (size!32661 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66826)

(assert (=> b!1058919 (= e!602620 (and (= (size!32660 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32661 _keys!1163) (size!32660 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (size!32661 _keys!1163) (bvadd #b00000000000000000000000000000001 mask!1515)) (bvsgt #b00000000000000000000000000000000 (size!32661 _keys!1163))))))

(declare-fun mapNonEmpty!39013 () Bool)

(declare-fun mapRes!39013 () Bool)

(declare-fun tp!74820 () Bool)

(declare-fun e!602619 () Bool)

(assert (=> mapNonEmpty!39013 (= mapRes!39013 (and tp!74820 e!602619))))

(declare-fun mapRest!39013 () (Array (_ BitVec 32) ValueCell!11751))

(declare-fun mapValue!39013 () ValueCell!11751)

(declare-fun mapKey!39013 () (_ BitVec 32))

(assert (=> mapNonEmpty!39013 (= (arr!32123 _values!955) (store mapRest!39013 mapKey!39013 mapValue!39013))))

(declare-fun res!707542 () Bool)

(assert (=> start!93596 (=> (not res!707542) (not e!602620))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93596 (= res!707542 (validMask!0 mask!1515))))

(assert (=> start!93596 e!602620))

(assert (=> start!93596 true))

(declare-fun e!602618 () Bool)

(declare-fun array_inv!24744 (array!66824) Bool)

(assert (=> start!93596 (and (array_inv!24744 _values!955) e!602618)))

(declare-fun array_inv!24745 (array!66826) Bool)

(assert (=> start!93596 (array_inv!24745 _keys!1163)))

(declare-fun mapIsEmpty!39013 () Bool)

(assert (=> mapIsEmpty!39013 mapRes!39013))

(declare-fun b!1058920 () Bool)

(declare-fun tp_is_empty!24909 () Bool)

(assert (=> b!1058920 (= e!602619 tp_is_empty!24909)))

(declare-fun b!1058921 () Bool)

(declare-fun e!602622 () Bool)

(assert (=> b!1058921 (= e!602622 tp_is_empty!24909)))

(declare-fun b!1058922 () Bool)

(assert (=> b!1058922 (= e!602618 (and e!602622 mapRes!39013))))

(declare-fun condMapEmpty!39013 () Bool)

(declare-fun mapDefault!39013 () ValueCell!11751)

(assert (=> b!1058922 (= condMapEmpty!39013 (= (arr!32123 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11751)) mapDefault!39013)))))

(assert (= (and start!93596 res!707542) b!1058919))

(assert (= (and b!1058922 condMapEmpty!39013) mapIsEmpty!39013))

(assert (= (and b!1058922 (not condMapEmpty!39013)) mapNonEmpty!39013))

(get-info :version)

(assert (= (and mapNonEmpty!39013 ((_ is ValueCellFull!11751) mapValue!39013)) b!1058920))

(assert (= (and b!1058922 ((_ is ValueCellFull!11751) mapDefault!39013)) b!1058921))

(assert (= start!93596 b!1058922))

(declare-fun m!978661 () Bool)

(assert (=> mapNonEmpty!39013 m!978661))

(declare-fun m!978663 () Bool)

(assert (=> start!93596 m!978663))

(declare-fun m!978665 () Bool)

(assert (=> start!93596 m!978665))

(declare-fun m!978667 () Bool)

(assert (=> start!93596 m!978667))

(check-sat (not start!93596) (not mapNonEmpty!39013) tp_is_empty!24909)
(check-sat)
(get-model)

(declare-fun d!128627 () Bool)

(assert (=> d!128627 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!93596 d!128627))

(declare-fun d!128629 () Bool)

(assert (=> d!128629 (= (array_inv!24744 _values!955) (bvsge (size!32660 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!93596 d!128629))

(declare-fun d!128631 () Bool)

(assert (=> d!128631 (= (array_inv!24745 _keys!1163) (bvsge (size!32661 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!93596 d!128631))

(declare-fun condMapEmpty!39019 () Bool)

(declare-fun mapDefault!39019 () ValueCell!11751)

(assert (=> mapNonEmpty!39013 (= condMapEmpty!39019 (= mapRest!39013 ((as const (Array (_ BitVec 32) ValueCell!11751)) mapDefault!39019)))))

(declare-fun e!602642 () Bool)

(declare-fun mapRes!39019 () Bool)

(assert (=> mapNonEmpty!39013 (= tp!74820 (and e!602642 mapRes!39019))))

(declare-fun mapNonEmpty!39019 () Bool)

(declare-fun tp!74826 () Bool)

(declare-fun e!602643 () Bool)

(assert (=> mapNonEmpty!39019 (= mapRes!39019 (and tp!74826 e!602643))))

(declare-fun mapValue!39019 () ValueCell!11751)

(declare-fun mapRest!39019 () (Array (_ BitVec 32) ValueCell!11751))

(declare-fun mapKey!39019 () (_ BitVec 32))

(assert (=> mapNonEmpty!39019 (= mapRest!39013 (store mapRest!39019 mapKey!39019 mapValue!39019))))

(declare-fun b!1058942 () Bool)

(assert (=> b!1058942 (= e!602642 tp_is_empty!24909)))

(declare-fun b!1058941 () Bool)

(assert (=> b!1058941 (= e!602643 tp_is_empty!24909)))

(declare-fun mapIsEmpty!39019 () Bool)

(assert (=> mapIsEmpty!39019 mapRes!39019))

(assert (= (and mapNonEmpty!39013 condMapEmpty!39019) mapIsEmpty!39019))

(assert (= (and mapNonEmpty!39013 (not condMapEmpty!39019)) mapNonEmpty!39019))

(assert (= (and mapNonEmpty!39019 ((_ is ValueCellFull!11751) mapValue!39019)) b!1058941))

(assert (= (and mapNonEmpty!39013 ((_ is ValueCellFull!11751) mapDefault!39019)) b!1058942))

(declare-fun m!978677 () Bool)

(assert (=> mapNonEmpty!39019 m!978677))

(check-sat (not mapNonEmpty!39019) tp_is_empty!24909)
(check-sat)
