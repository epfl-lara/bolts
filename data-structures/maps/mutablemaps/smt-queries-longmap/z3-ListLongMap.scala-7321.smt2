; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93608 () Bool)

(assert start!93608)

(declare-fun b!1058973 () Bool)

(declare-fun e!602670 () Bool)

(declare-datatypes ((array!66836 0))(
  ( (array!66837 (arr!32128 (Array (_ BitVec 32) (_ BitVec 64))) (size!32665 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66836)

(assert (=> b!1058973 (= e!602670 (bvsgt #b00000000000000000000000000000000 (size!32665 _keys!1163)))))

(declare-fun b!1058974 () Bool)

(declare-fun res!707563 () Bool)

(assert (=> b!1058974 (=> (not res!707563) (not e!602670))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!66836 (_ BitVec 32)) Bool)

(assert (=> b!1058974 (= res!707563 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun b!1058975 () Bool)

(declare-fun e!602672 () Bool)

(declare-fun tp_is_empty!24915 () Bool)

(assert (=> b!1058975 (= e!602672 tp_is_empty!24915)))

(declare-fun b!1058976 () Bool)

(declare-fun e!602673 () Bool)

(assert (=> b!1058976 (= e!602673 tp_is_empty!24915)))

(declare-fun b!1058977 () Bool)

(declare-fun e!602671 () Bool)

(declare-fun mapRes!39025 () Bool)

(assert (=> b!1058977 (= e!602671 (and e!602673 mapRes!39025))))

(declare-fun condMapEmpty!39025 () Bool)

(declare-datatypes ((V!38355 0))(
  ( (V!38356 (val!12508 Int)) )
))
(declare-datatypes ((ValueCell!11754 0))(
  ( (ValueCellFull!11754 (v!15118 V!38355)) (EmptyCell!11754) )
))
(declare-datatypes ((array!66838 0))(
  ( (array!66839 (arr!32129 (Array (_ BitVec 32) ValueCell!11754)) (size!32666 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66838)

(declare-fun mapDefault!39025 () ValueCell!11754)

(assert (=> b!1058977 (= condMapEmpty!39025 (= (arr!32129 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11754)) mapDefault!39025)))))

(declare-fun b!1058978 () Bool)

(declare-fun res!707562 () Bool)

(assert (=> b!1058978 (=> (not res!707562) (not e!602670))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1058978 (= res!707562 (and (= (size!32666 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32665 _keys!1163) (size!32666 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!707561 () Bool)

(assert (=> start!93608 (=> (not res!707561) (not e!602670))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93608 (= res!707561 (validMask!0 mask!1515))))

(assert (=> start!93608 e!602670))

(assert (=> start!93608 true))

(declare-fun array_inv!24748 (array!66838) Bool)

(assert (=> start!93608 (and (array_inv!24748 _values!955) e!602671)))

(declare-fun array_inv!24749 (array!66836) Bool)

(assert (=> start!93608 (array_inv!24749 _keys!1163)))

(declare-fun mapIsEmpty!39025 () Bool)

(assert (=> mapIsEmpty!39025 mapRes!39025))

(declare-fun mapNonEmpty!39025 () Bool)

(declare-fun tp!74832 () Bool)

(assert (=> mapNonEmpty!39025 (= mapRes!39025 (and tp!74832 e!602672))))

(declare-fun mapRest!39025 () (Array (_ BitVec 32) ValueCell!11754))

(declare-fun mapValue!39025 () ValueCell!11754)

(declare-fun mapKey!39025 () (_ BitVec 32))

(assert (=> mapNonEmpty!39025 (= (arr!32129 _values!955) (store mapRest!39025 mapKey!39025 mapValue!39025))))

(assert (= (and start!93608 res!707561) b!1058978))

(assert (= (and b!1058978 res!707562) b!1058974))

(assert (= (and b!1058974 res!707563) b!1058973))

(assert (= (and b!1058977 condMapEmpty!39025) mapIsEmpty!39025))

(assert (= (and b!1058977 (not condMapEmpty!39025)) mapNonEmpty!39025))

(get-info :version)

(assert (= (and mapNonEmpty!39025 ((_ is ValueCellFull!11754) mapValue!39025)) b!1058975))

(assert (= (and b!1058977 ((_ is ValueCellFull!11754) mapDefault!39025)) b!1058976))

(assert (= start!93608 b!1058977))

(declare-fun m!978689 () Bool)

(assert (=> b!1058974 m!978689))

(declare-fun m!978691 () Bool)

(assert (=> start!93608 m!978691))

(declare-fun m!978693 () Bool)

(assert (=> start!93608 m!978693))

(declare-fun m!978695 () Bool)

(assert (=> start!93608 m!978695))

(declare-fun m!978697 () Bool)

(assert (=> mapNonEmpty!39025 m!978697))

(check-sat (not start!93608) (not b!1058974) (not mapNonEmpty!39025) tp_is_empty!24915)
(check-sat)
(get-model)

(declare-fun d!128635 () Bool)

(assert (=> d!128635 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!93608 d!128635))

(declare-fun d!128637 () Bool)

(assert (=> d!128637 (= (array_inv!24748 _values!955) (bvsge (size!32666 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!93608 d!128637))

(declare-fun d!128639 () Bool)

(assert (=> d!128639 (= (array_inv!24749 _keys!1163) (bvsge (size!32665 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!93608 d!128639))

(declare-fun bm!44873 () Bool)

(declare-fun call!44876 () Bool)

(assert (=> bm!44873 (= call!44876 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1163 mask!1515))))

(declare-fun b!1059005 () Bool)

(declare-fun e!602695 () Bool)

(assert (=> b!1059005 (= e!602695 call!44876)))

(declare-fun d!128641 () Bool)

(declare-fun res!707578 () Bool)

(declare-fun e!602697 () Bool)

(assert (=> d!128641 (=> res!707578 e!602697)))

(assert (=> d!128641 (= res!707578 (bvsge #b00000000000000000000000000000000 (size!32665 _keys!1163)))))

(assert (=> d!128641 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515) e!602697)))

(declare-fun b!1059006 () Bool)

(declare-fun e!602696 () Bool)

(assert (=> b!1059006 (= e!602696 call!44876)))

(declare-fun b!1059007 () Bool)

(assert (=> b!1059007 (= e!602695 e!602696)))

(declare-fun lt!467053 () (_ BitVec 64))

(assert (=> b!1059007 (= lt!467053 (select (arr!32128 _keys!1163) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!34703 0))(
  ( (Unit!34704) )
))
(declare-fun lt!467052 () Unit!34703)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!66836 (_ BitVec 64) (_ BitVec 32)) Unit!34703)

(assert (=> b!1059007 (= lt!467052 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1163 lt!467053 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!66836 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1059007 (arrayContainsKey!0 _keys!1163 lt!467053 #b00000000000000000000000000000000)))

(declare-fun lt!467051 () Unit!34703)

(assert (=> b!1059007 (= lt!467051 lt!467052)))

(declare-fun res!707577 () Bool)

(declare-datatypes ((SeekEntryResult!9862 0))(
  ( (MissingZero!9862 (index!41818 (_ BitVec 32))) (Found!9862 (index!41819 (_ BitVec 32))) (Intermediate!9862 (undefined!10674 Bool) (index!41820 (_ BitVec 32)) (x!94614 (_ BitVec 32))) (Undefined!9862) (MissingVacant!9862 (index!41821 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!66836 (_ BitVec 32)) SeekEntryResult!9862)

(assert (=> b!1059007 (= res!707577 (= (seekEntryOrOpen!0 (select (arr!32128 _keys!1163) #b00000000000000000000000000000000) _keys!1163 mask!1515) (Found!9862 #b00000000000000000000000000000000)))))

(assert (=> b!1059007 (=> (not res!707577) (not e!602696))))

(declare-fun b!1059008 () Bool)

(assert (=> b!1059008 (= e!602697 e!602695)))

(declare-fun c!107132 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1059008 (= c!107132 (validKeyInArray!0 (select (arr!32128 _keys!1163) #b00000000000000000000000000000000)))))

(assert (= (and d!128641 (not res!707578)) b!1059008))

(assert (= (and b!1059008 c!107132) b!1059007))

(assert (= (and b!1059008 (not c!107132)) b!1059005))

(assert (= (and b!1059007 res!707577) b!1059006))

(assert (= (or b!1059006 b!1059005) bm!44873))

(declare-fun m!978709 () Bool)

(assert (=> bm!44873 m!978709))

(declare-fun m!978711 () Bool)

(assert (=> b!1059007 m!978711))

(declare-fun m!978713 () Bool)

(assert (=> b!1059007 m!978713))

(declare-fun m!978715 () Bool)

(assert (=> b!1059007 m!978715))

(assert (=> b!1059007 m!978711))

(declare-fun m!978717 () Bool)

(assert (=> b!1059007 m!978717))

(assert (=> b!1059008 m!978711))

(assert (=> b!1059008 m!978711))

(declare-fun m!978719 () Bool)

(assert (=> b!1059008 m!978719))

(assert (=> b!1058974 d!128641))

(declare-fun mapNonEmpty!39031 () Bool)

(declare-fun mapRes!39031 () Bool)

(declare-fun tp!74838 () Bool)

(declare-fun e!602703 () Bool)

(assert (=> mapNonEmpty!39031 (= mapRes!39031 (and tp!74838 e!602703))))

(declare-fun mapKey!39031 () (_ BitVec 32))

(declare-fun mapRest!39031 () (Array (_ BitVec 32) ValueCell!11754))

(declare-fun mapValue!39031 () ValueCell!11754)

(assert (=> mapNonEmpty!39031 (= mapRest!39025 (store mapRest!39031 mapKey!39031 mapValue!39031))))

(declare-fun b!1059016 () Bool)

(declare-fun e!602702 () Bool)

(assert (=> b!1059016 (= e!602702 tp_is_empty!24915)))

(declare-fun b!1059015 () Bool)

(assert (=> b!1059015 (= e!602703 tp_is_empty!24915)))

(declare-fun condMapEmpty!39031 () Bool)

(declare-fun mapDefault!39031 () ValueCell!11754)

(assert (=> mapNonEmpty!39025 (= condMapEmpty!39031 (= mapRest!39025 ((as const (Array (_ BitVec 32) ValueCell!11754)) mapDefault!39031)))))

(assert (=> mapNonEmpty!39025 (= tp!74832 (and e!602702 mapRes!39031))))

(declare-fun mapIsEmpty!39031 () Bool)

(assert (=> mapIsEmpty!39031 mapRes!39031))

(assert (= (and mapNonEmpty!39025 condMapEmpty!39031) mapIsEmpty!39031))

(assert (= (and mapNonEmpty!39025 (not condMapEmpty!39031)) mapNonEmpty!39031))

(assert (= (and mapNonEmpty!39031 ((_ is ValueCellFull!11754) mapValue!39031)) b!1059015))

(assert (= (and mapNonEmpty!39025 ((_ is ValueCellFull!11754) mapDefault!39031)) b!1059016))

(declare-fun m!978721 () Bool)

(assert (=> mapNonEmpty!39031 m!978721))

(check-sat tp_is_empty!24915 (not bm!44873) (not mapNonEmpty!39031) (not b!1059008) (not b!1059007))
(check-sat)
