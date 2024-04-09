; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3692 () Bool)

(assert start!3692)

(declare-fun mapNonEmpty!1084 () Bool)

(declare-fun mapRes!1084 () Bool)

(declare-fun tp!3604 () Bool)

(declare-fun e!16769 () Bool)

(assert (=> mapNonEmpty!1084 (= mapRes!1084 (and tp!3604 e!16769))))

(declare-datatypes ((V!1229 0))(
  ( (V!1230 (val!553 Int)) )
))
(declare-datatypes ((ValueCell!327 0))(
  ( (ValueCellFull!327 (v!1638 V!1229)) (EmptyCell!327) )
))
(declare-datatypes ((array!1341 0))(
  ( (array!1342 (arr!632 (Array (_ BitVec 32) ValueCell!327)) (size!733 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1341)

(declare-fun mapKey!1084 () (_ BitVec 32))

(declare-fun mapRest!1084 () (Array (_ BitVec 32) ValueCell!327))

(declare-fun mapValue!1084 () ValueCell!327)

(assert (=> mapNonEmpty!1084 (= (arr!632 _values!1501) (store mapRest!1084 mapKey!1084 mapValue!1084))))

(declare-fun b!25875 () Bool)

(declare-fun res!15387 () Bool)

(declare-fun e!16768 () Bool)

(assert (=> b!25875 (=> (not res!15387) (not e!16768))))

(declare-datatypes ((array!1343 0))(
  ( (array!1344 (arr!633 (Array (_ BitVec 32) (_ BitVec 64))) (size!734 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1343)

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1343 (_ BitVec 32)) Bool)

(assert (=> b!25875 (= res!15387 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun mapIsEmpty!1084 () Bool)

(assert (=> mapIsEmpty!1084 mapRes!1084))

(declare-fun b!25876 () Bool)

(declare-fun e!16772 () Bool)

(declare-fun tp_is_empty!1053 () Bool)

(assert (=> b!25876 (= e!16772 tp_is_empty!1053)))

(declare-fun b!25877 () Bool)

(declare-fun e!16770 () Bool)

(assert (=> b!25877 (= e!16770 (and e!16772 mapRes!1084))))

(declare-fun condMapEmpty!1084 () Bool)

(declare-fun mapDefault!1084 () ValueCell!327)

(assert (=> b!25877 (= condMapEmpty!1084 (= (arr!632 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!327)) mapDefault!1084)))))

(declare-fun res!15388 () Bool)

(assert (=> start!3692 (=> (not res!15388) (not e!16768))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3692 (= res!15388 (validMask!0 mask!2294))))

(assert (=> start!3692 e!16768))

(assert (=> start!3692 true))

(declare-fun array_inv!441 (array!1341) Bool)

(assert (=> start!3692 (and (array_inv!441 _values!1501) e!16770)))

(declare-fun array_inv!442 (array!1343) Bool)

(assert (=> start!3692 (array_inv!442 _keys!1833)))

(declare-fun b!25878 () Bool)

(declare-fun res!15389 () Bool)

(assert (=> b!25878 (=> (not res!15389) (not e!16768))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!25878 (= res!15389 (and (= (size!733 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!734 _keys!1833) (size!733 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!25879 () Bool)

(assert (=> b!25879 (= e!16768 (bvsgt #b00000000000000000000000000000000 (size!734 _keys!1833)))))

(declare-fun b!25880 () Bool)

(assert (=> b!25880 (= e!16769 tp_is_empty!1053)))

(assert (= (and start!3692 res!15388) b!25878))

(assert (= (and b!25878 res!15389) b!25875))

(assert (= (and b!25875 res!15387) b!25879))

(assert (= (and b!25877 condMapEmpty!1084) mapIsEmpty!1084))

(assert (= (and b!25877 (not condMapEmpty!1084)) mapNonEmpty!1084))

(get-info :version)

(assert (= (and mapNonEmpty!1084 ((_ is ValueCellFull!327) mapValue!1084)) b!25880))

(assert (= (and b!25877 ((_ is ValueCellFull!327) mapDefault!1084)) b!25876))

(assert (= start!3692 b!25877))

(declare-fun m!20865 () Bool)

(assert (=> mapNonEmpty!1084 m!20865))

(declare-fun m!20867 () Bool)

(assert (=> b!25875 m!20867))

(declare-fun m!20869 () Bool)

(assert (=> start!3692 m!20869))

(declare-fun m!20871 () Bool)

(assert (=> start!3692 m!20871))

(declare-fun m!20873 () Bool)

(assert (=> start!3692 m!20873))

(check-sat (not start!3692) (not b!25875) (not mapNonEmpty!1084) tp_is_empty!1053)
(check-sat)
(get-model)

(declare-fun d!4837 () Bool)

(assert (=> d!4837 (= (validMask!0 mask!2294) (and (or (= mask!2294 #b00000000000000000000000000000111) (= mask!2294 #b00000000000000000000000000001111) (= mask!2294 #b00000000000000000000000000011111) (= mask!2294 #b00000000000000000000000000111111) (= mask!2294 #b00000000000000000000000001111111) (= mask!2294 #b00000000000000000000000011111111) (= mask!2294 #b00000000000000000000000111111111) (= mask!2294 #b00000000000000000000001111111111) (= mask!2294 #b00000000000000000000011111111111) (= mask!2294 #b00000000000000000000111111111111) (= mask!2294 #b00000000000000000001111111111111) (= mask!2294 #b00000000000000000011111111111111) (= mask!2294 #b00000000000000000111111111111111) (= mask!2294 #b00000000000000001111111111111111) (= mask!2294 #b00000000000000011111111111111111) (= mask!2294 #b00000000000000111111111111111111) (= mask!2294 #b00000000000001111111111111111111) (= mask!2294 #b00000000000011111111111111111111) (= mask!2294 #b00000000000111111111111111111111) (= mask!2294 #b00000000001111111111111111111111) (= mask!2294 #b00000000011111111111111111111111) (= mask!2294 #b00000000111111111111111111111111) (= mask!2294 #b00000001111111111111111111111111) (= mask!2294 #b00000011111111111111111111111111) (= mask!2294 #b00000111111111111111111111111111) (= mask!2294 #b00001111111111111111111111111111) (= mask!2294 #b00011111111111111111111111111111) (= mask!2294 #b00111111111111111111111111111111)) (bvsle mask!2294 #b00111111111111111111111111111111)))))

(assert (=> start!3692 d!4837))

(declare-fun d!4839 () Bool)

(assert (=> d!4839 (= (array_inv!441 _values!1501) (bvsge (size!733 _values!1501) #b00000000000000000000000000000000))))

(assert (=> start!3692 d!4839))

(declare-fun d!4841 () Bool)

(assert (=> d!4841 (= (array_inv!442 _keys!1833) (bvsge (size!734 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> start!3692 d!4841))

(declare-fun b!25907 () Bool)

(declare-fun e!16795 () Bool)

(declare-fun e!16794 () Bool)

(assert (=> b!25907 (= e!16795 e!16794)))

(declare-fun c!3655 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!25907 (= c!3655 (validKeyInArray!0 (select (arr!633 _keys!1833) #b00000000000000000000000000000000)))))

(declare-fun d!4843 () Bool)

(declare-fun res!15403 () Bool)

(assert (=> d!4843 (=> res!15403 e!16795)))

(assert (=> d!4843 (= res!15403 (bvsge #b00000000000000000000000000000000 (size!734 _keys!1833)))))

(assert (=> d!4843 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294) e!16795)))

(declare-fun b!25908 () Bool)

(declare-fun call!2492 () Bool)

(assert (=> b!25908 (= e!16794 call!2492)))

(declare-fun bm!2489 () Bool)

(assert (=> bm!2489 (= call!2492 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1833 mask!2294))))

(declare-fun b!25909 () Bool)

(declare-fun e!16796 () Bool)

(assert (=> b!25909 (= e!16794 e!16796)))

(declare-fun lt!10298 () (_ BitVec 64))

(assert (=> b!25909 (= lt!10298 (select (arr!633 _keys!1833) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!621 0))(
  ( (Unit!622) )
))
(declare-fun lt!10296 () Unit!621)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!1343 (_ BitVec 64) (_ BitVec 32)) Unit!621)

(assert (=> b!25909 (= lt!10296 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1833 lt!10298 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!1343 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!25909 (arrayContainsKey!0 _keys!1833 lt!10298 #b00000000000000000000000000000000)))

(declare-fun lt!10297 () Unit!621)

(assert (=> b!25909 (= lt!10297 lt!10296)))

(declare-fun res!15404 () Bool)

(declare-datatypes ((SeekEntryResult!62 0))(
  ( (MissingZero!62 (index!2370 (_ BitVec 32))) (Found!62 (index!2371 (_ BitVec 32))) (Intermediate!62 (undefined!874 Bool) (index!2372 (_ BitVec 32)) (x!6046 (_ BitVec 32))) (Undefined!62) (MissingVacant!62 (index!2373 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1343 (_ BitVec 32)) SeekEntryResult!62)

(assert (=> b!25909 (= res!15404 (= (seekEntryOrOpen!0 (select (arr!633 _keys!1833) #b00000000000000000000000000000000) _keys!1833 mask!2294) (Found!62 #b00000000000000000000000000000000)))))

(assert (=> b!25909 (=> (not res!15404) (not e!16796))))

(declare-fun b!25910 () Bool)

(assert (=> b!25910 (= e!16796 call!2492)))

(assert (= (and d!4843 (not res!15403)) b!25907))

(assert (= (and b!25907 c!3655) b!25909))

(assert (= (and b!25907 (not c!3655)) b!25908))

(assert (= (and b!25909 res!15404) b!25910))

(assert (= (or b!25910 b!25908) bm!2489))

(declare-fun m!20885 () Bool)

(assert (=> b!25907 m!20885))

(assert (=> b!25907 m!20885))

(declare-fun m!20887 () Bool)

(assert (=> b!25907 m!20887))

(declare-fun m!20889 () Bool)

(assert (=> bm!2489 m!20889))

(assert (=> b!25909 m!20885))

(declare-fun m!20891 () Bool)

(assert (=> b!25909 m!20891))

(declare-fun m!20893 () Bool)

(assert (=> b!25909 m!20893))

(assert (=> b!25909 m!20885))

(declare-fun m!20895 () Bool)

(assert (=> b!25909 m!20895))

(assert (=> b!25875 d!4843))

(declare-fun b!25918 () Bool)

(declare-fun e!16801 () Bool)

(assert (=> b!25918 (= e!16801 tp_is_empty!1053)))

(declare-fun condMapEmpty!1090 () Bool)

(declare-fun mapDefault!1090 () ValueCell!327)

(assert (=> mapNonEmpty!1084 (= condMapEmpty!1090 (= mapRest!1084 ((as const (Array (_ BitVec 32) ValueCell!327)) mapDefault!1090)))))

(declare-fun mapRes!1090 () Bool)

(assert (=> mapNonEmpty!1084 (= tp!3604 (and e!16801 mapRes!1090))))

(declare-fun mapNonEmpty!1090 () Bool)

(declare-fun tp!3610 () Bool)

(declare-fun e!16802 () Bool)

(assert (=> mapNonEmpty!1090 (= mapRes!1090 (and tp!3610 e!16802))))

(declare-fun mapValue!1090 () ValueCell!327)

(declare-fun mapRest!1090 () (Array (_ BitVec 32) ValueCell!327))

(declare-fun mapKey!1090 () (_ BitVec 32))

(assert (=> mapNonEmpty!1090 (= mapRest!1084 (store mapRest!1090 mapKey!1090 mapValue!1090))))

(declare-fun mapIsEmpty!1090 () Bool)

(assert (=> mapIsEmpty!1090 mapRes!1090))

(declare-fun b!25917 () Bool)

(assert (=> b!25917 (= e!16802 tp_is_empty!1053)))

(assert (= (and mapNonEmpty!1084 condMapEmpty!1090) mapIsEmpty!1090))

(assert (= (and mapNonEmpty!1084 (not condMapEmpty!1090)) mapNonEmpty!1090))

(assert (= (and mapNonEmpty!1090 ((_ is ValueCellFull!327) mapValue!1090)) b!25917))

(assert (= (and mapNonEmpty!1084 ((_ is ValueCellFull!327) mapDefault!1090)) b!25918))

(declare-fun m!20897 () Bool)

(assert (=> mapNonEmpty!1090 m!20897))

(check-sat tp_is_empty!1053 (not b!25907) (not b!25909) (not mapNonEmpty!1090) (not bm!2489))
(check-sat)
