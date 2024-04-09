; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93622 () Bool)

(assert start!93622)

(declare-fun b!1059047 () Bool)

(declare-fun e!602729 () Bool)

(declare-datatypes ((array!66848 0))(
  ( (array!66849 (arr!32133 (Array (_ BitVec 32) (_ BitVec 64))) (size!32670 (_ BitVec 32))) )
))
(declare-fun _keys!1163 () array!66848)

(assert (=> b!1059047 (= e!602729 (and (bvsle #b00000000000000000000000000000000 (size!32670 _keys!1163)) (bvsge (size!32670 _keys!1163) #b01111111111111111111111111111111)))))

(declare-fun b!1059048 () Bool)

(declare-fun res!707596 () Bool)

(assert (=> b!1059048 (=> (not res!707596) (not e!602729))))

(declare-fun mask!1515 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!66848 (_ BitVec 32)) Bool)

(assert (=> b!1059048 (= res!707596 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515))))

(declare-fun res!707594 () Bool)

(assert (=> start!93622 (=> (not res!707594) (not e!602729))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!93622 (= res!707594 (validMask!0 mask!1515))))

(assert (=> start!93622 e!602729))

(assert (=> start!93622 true))

(declare-datatypes ((V!38363 0))(
  ( (V!38364 (val!12511 Int)) )
))
(declare-datatypes ((ValueCell!11757 0))(
  ( (ValueCellFull!11757 (v!15121 V!38363)) (EmptyCell!11757) )
))
(declare-datatypes ((array!66850 0))(
  ( (array!66851 (arr!32134 (Array (_ BitVec 32) ValueCell!11757)) (size!32671 (_ BitVec 32))) )
))
(declare-fun _values!955 () array!66850)

(declare-fun e!602733 () Bool)

(declare-fun array_inv!24752 (array!66850) Bool)

(assert (=> start!93622 (and (array_inv!24752 _values!955) e!602733)))

(declare-fun array_inv!24753 (array!66848) Bool)

(assert (=> start!93622 (array_inv!24753 _keys!1163)))

(declare-fun mapNonEmpty!39037 () Bool)

(declare-fun mapRes!39037 () Bool)

(declare-fun tp!74844 () Bool)

(declare-fun e!602730 () Bool)

(assert (=> mapNonEmpty!39037 (= mapRes!39037 (and tp!74844 e!602730))))

(declare-fun mapKey!39037 () (_ BitVec 32))

(declare-fun mapValue!39037 () ValueCell!11757)

(declare-fun mapRest!39037 () (Array (_ BitVec 32) ValueCell!11757))

(assert (=> mapNonEmpty!39037 (= (arr!32134 _values!955) (store mapRest!39037 mapKey!39037 mapValue!39037))))

(declare-fun mapIsEmpty!39037 () Bool)

(assert (=> mapIsEmpty!39037 mapRes!39037))

(declare-fun b!1059049 () Bool)

(declare-fun tp_is_empty!24921 () Bool)

(assert (=> b!1059049 (= e!602730 tp_is_empty!24921)))

(declare-fun b!1059050 () Bool)

(declare-fun res!707595 () Bool)

(assert (=> b!1059050 (=> (not res!707595) (not e!602729))))

(declare-fun extraKeysAfter!68 () (_ BitVec 32))

(declare-fun extraKeysBefore!76 () (_ BitVec 32))

(assert (=> b!1059050 (= res!707595 (and (= (size!32671 _values!955) (bvadd #b00000000000000000000000000000001 mask!1515)) (= (size!32670 _keys!1163) (size!32671 _values!955)) (bvsge mask!1515 #b00000000000000000000000000000000) (bvsge extraKeysBefore!76 #b00000000000000000000000000000000) (bvsle extraKeysBefore!76 #b00000000000000000000000000000011) (bvsge extraKeysAfter!68 #b00000000000000000000000000000000) (bvsle extraKeysAfter!68 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!76 #b00000000000000000000000000000010) (bvand extraKeysAfter!68 #b00000000000000000000000000000010)) (= (bvand extraKeysAfter!68 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1059051 () Bool)

(declare-fun e!602731 () Bool)

(assert (=> b!1059051 (= e!602731 tp_is_empty!24921)))

(declare-fun b!1059052 () Bool)

(assert (=> b!1059052 (= e!602733 (and e!602731 mapRes!39037))))

(declare-fun condMapEmpty!39037 () Bool)

(declare-fun mapDefault!39037 () ValueCell!11757)

(assert (=> b!1059052 (= condMapEmpty!39037 (= (arr!32134 _values!955) ((as const (Array (_ BitVec 32) ValueCell!11757)) mapDefault!39037)))))

(assert (= (and start!93622 res!707594) b!1059050))

(assert (= (and b!1059050 res!707595) b!1059048))

(assert (= (and b!1059048 res!707596) b!1059047))

(assert (= (and b!1059052 condMapEmpty!39037) mapIsEmpty!39037))

(assert (= (and b!1059052 (not condMapEmpty!39037)) mapNonEmpty!39037))

(get-info :version)

(assert (= (and mapNonEmpty!39037 ((_ is ValueCellFull!11757) mapValue!39037)) b!1059049))

(assert (= (and b!1059052 ((_ is ValueCellFull!11757) mapDefault!39037)) b!1059051))

(assert (= start!93622 b!1059052))

(declare-fun m!978733 () Bool)

(assert (=> b!1059048 m!978733))

(declare-fun m!978735 () Bool)

(assert (=> start!93622 m!978735))

(declare-fun m!978737 () Bool)

(assert (=> start!93622 m!978737))

(declare-fun m!978739 () Bool)

(assert (=> start!93622 m!978739))

(declare-fun m!978741 () Bool)

(assert (=> mapNonEmpty!39037 m!978741))

(check-sat (not b!1059048) (not start!93622) (not mapNonEmpty!39037) tp_is_empty!24921)
(check-sat)
(get-model)

(declare-fun bm!44876 () Bool)

(declare-fun call!44879 () Bool)

(assert (=> bm!44876 (= call!44879 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1163 mask!1515))))

(declare-fun b!1059079 () Bool)

(declare-fun e!602757 () Bool)

(assert (=> b!1059079 (= e!602757 call!44879)))

(declare-fun d!128645 () Bool)

(declare-fun res!707611 () Bool)

(declare-fun e!602756 () Bool)

(assert (=> d!128645 (=> res!707611 e!602756)))

(assert (=> d!128645 (= res!707611 (bvsge #b00000000000000000000000000000000 (size!32670 _keys!1163)))))

(assert (=> d!128645 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1163 mask!1515) e!602756)))

(declare-fun b!1059080 () Bool)

(declare-fun e!602755 () Bool)

(assert (=> b!1059080 (= e!602755 e!602757)))

(declare-fun lt!467062 () (_ BitVec 64))

(assert (=> b!1059080 (= lt!467062 (select (arr!32133 _keys!1163) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!34705 0))(
  ( (Unit!34706) )
))
(declare-fun lt!467061 () Unit!34705)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!66848 (_ BitVec 64) (_ BitVec 32)) Unit!34705)

(assert (=> b!1059080 (= lt!467061 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1163 lt!467062 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!66848 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1059080 (arrayContainsKey!0 _keys!1163 lt!467062 #b00000000000000000000000000000000)))

(declare-fun lt!467060 () Unit!34705)

(assert (=> b!1059080 (= lt!467060 lt!467061)))

(declare-fun res!707610 () Bool)

(declare-datatypes ((SeekEntryResult!9863 0))(
  ( (MissingZero!9863 (index!41822 (_ BitVec 32))) (Found!9863 (index!41823 (_ BitVec 32))) (Intermediate!9863 (undefined!10675 Bool) (index!41824 (_ BitVec 32)) (x!94625 (_ BitVec 32))) (Undefined!9863) (MissingVacant!9863 (index!41825 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!66848 (_ BitVec 32)) SeekEntryResult!9863)

(assert (=> b!1059080 (= res!707610 (= (seekEntryOrOpen!0 (select (arr!32133 _keys!1163) #b00000000000000000000000000000000) _keys!1163 mask!1515) (Found!9863 #b00000000000000000000000000000000)))))

(assert (=> b!1059080 (=> (not res!707610) (not e!602757))))

(declare-fun b!1059081 () Bool)

(assert (=> b!1059081 (= e!602756 e!602755)))

(declare-fun c!107135 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1059081 (= c!107135 (validKeyInArray!0 (select (arr!32133 _keys!1163) #b00000000000000000000000000000000)))))

(declare-fun b!1059082 () Bool)

(assert (=> b!1059082 (= e!602755 call!44879)))

(assert (= (and d!128645 (not res!707611)) b!1059081))

(assert (= (and b!1059081 c!107135) b!1059080))

(assert (= (and b!1059081 (not c!107135)) b!1059082))

(assert (= (and b!1059080 res!707610) b!1059079))

(assert (= (or b!1059079 b!1059082) bm!44876))

(declare-fun m!978753 () Bool)

(assert (=> bm!44876 m!978753))

(declare-fun m!978755 () Bool)

(assert (=> b!1059080 m!978755))

(declare-fun m!978757 () Bool)

(assert (=> b!1059080 m!978757))

(declare-fun m!978759 () Bool)

(assert (=> b!1059080 m!978759))

(assert (=> b!1059080 m!978755))

(declare-fun m!978761 () Bool)

(assert (=> b!1059080 m!978761))

(assert (=> b!1059081 m!978755))

(assert (=> b!1059081 m!978755))

(declare-fun m!978763 () Bool)

(assert (=> b!1059081 m!978763))

(assert (=> b!1059048 d!128645))

(declare-fun d!128647 () Bool)

(assert (=> d!128647 (= (validMask!0 mask!1515) (and (or (= mask!1515 #b00000000000000000000000000000111) (= mask!1515 #b00000000000000000000000000001111) (= mask!1515 #b00000000000000000000000000011111) (= mask!1515 #b00000000000000000000000000111111) (= mask!1515 #b00000000000000000000000001111111) (= mask!1515 #b00000000000000000000000011111111) (= mask!1515 #b00000000000000000000000111111111) (= mask!1515 #b00000000000000000000001111111111) (= mask!1515 #b00000000000000000000011111111111) (= mask!1515 #b00000000000000000000111111111111) (= mask!1515 #b00000000000000000001111111111111) (= mask!1515 #b00000000000000000011111111111111) (= mask!1515 #b00000000000000000111111111111111) (= mask!1515 #b00000000000000001111111111111111) (= mask!1515 #b00000000000000011111111111111111) (= mask!1515 #b00000000000000111111111111111111) (= mask!1515 #b00000000000001111111111111111111) (= mask!1515 #b00000000000011111111111111111111) (= mask!1515 #b00000000000111111111111111111111) (= mask!1515 #b00000000001111111111111111111111) (= mask!1515 #b00000000011111111111111111111111) (= mask!1515 #b00000000111111111111111111111111) (= mask!1515 #b00000001111111111111111111111111) (= mask!1515 #b00000011111111111111111111111111) (= mask!1515 #b00000111111111111111111111111111) (= mask!1515 #b00001111111111111111111111111111) (= mask!1515 #b00011111111111111111111111111111) (= mask!1515 #b00111111111111111111111111111111)) (bvsle mask!1515 #b00111111111111111111111111111111)))))

(assert (=> start!93622 d!128647))

(declare-fun d!128649 () Bool)

(assert (=> d!128649 (= (array_inv!24752 _values!955) (bvsge (size!32671 _values!955) #b00000000000000000000000000000000))))

(assert (=> start!93622 d!128649))

(declare-fun d!128651 () Bool)

(assert (=> d!128651 (= (array_inv!24753 _keys!1163) (bvsge (size!32670 _keys!1163) #b00000000000000000000000000000000))))

(assert (=> start!93622 d!128651))

(declare-fun b!1059089 () Bool)

(declare-fun e!602763 () Bool)

(assert (=> b!1059089 (= e!602763 tp_is_empty!24921)))

(declare-fun mapNonEmpty!39043 () Bool)

(declare-fun mapRes!39043 () Bool)

(declare-fun tp!74850 () Bool)

(assert (=> mapNonEmpty!39043 (= mapRes!39043 (and tp!74850 e!602763))))

(declare-fun mapValue!39043 () ValueCell!11757)

(declare-fun mapKey!39043 () (_ BitVec 32))

(declare-fun mapRest!39043 () (Array (_ BitVec 32) ValueCell!11757))

(assert (=> mapNonEmpty!39043 (= mapRest!39037 (store mapRest!39043 mapKey!39043 mapValue!39043))))

(declare-fun condMapEmpty!39043 () Bool)

(declare-fun mapDefault!39043 () ValueCell!11757)

(assert (=> mapNonEmpty!39037 (= condMapEmpty!39043 (= mapRest!39037 ((as const (Array (_ BitVec 32) ValueCell!11757)) mapDefault!39043)))))

(declare-fun e!602762 () Bool)

(assert (=> mapNonEmpty!39037 (= tp!74844 (and e!602762 mapRes!39043))))

(declare-fun b!1059090 () Bool)

(assert (=> b!1059090 (= e!602762 tp_is_empty!24921)))

(declare-fun mapIsEmpty!39043 () Bool)

(assert (=> mapIsEmpty!39043 mapRes!39043))

(assert (= (and mapNonEmpty!39037 condMapEmpty!39043) mapIsEmpty!39043))

(assert (= (and mapNonEmpty!39037 (not condMapEmpty!39043)) mapNonEmpty!39043))

(assert (= (and mapNonEmpty!39043 ((_ is ValueCellFull!11757) mapValue!39043)) b!1059089))

(assert (= (and mapNonEmpty!39037 ((_ is ValueCellFull!11757) mapDefault!39043)) b!1059090))

(declare-fun m!978765 () Bool)

(assert (=> mapNonEmpty!39043 m!978765))

(check-sat (not mapNonEmpty!39043) tp_is_empty!24921 (not b!1059080) (not bm!44876) (not b!1059081))
(check-sat)
