; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3706 () Bool)

(assert start!3706)

(declare-fun b!25949 () Bool)

(declare-fun e!16828 () Bool)

(declare-fun tp_is_empty!1059 () Bool)

(assert (=> b!25949 (= e!16828 tp_is_empty!1059)))

(declare-fun b!25950 () Bool)

(declare-fun e!16829 () Bool)

(declare-datatypes ((array!1351 0))(
  ( (array!1352 (arr!636 (Array (_ BitVec 32) (_ BitVec 64))) (size!737 (_ BitVec 32))) )
))
(declare-fun _keys!1833 () array!1351)

(assert (=> b!25950 (= e!16829 (and (bvsle #b00000000000000000000000000000000 (size!737 _keys!1833)) (bvsge (size!737 _keys!1833) #b01111111111111111111111111111111)))))

(declare-fun b!25951 () Bool)

(declare-fun e!16832 () Bool)

(declare-fun mapRes!1096 () Bool)

(assert (=> b!25951 (= e!16832 (and e!16828 mapRes!1096))))

(declare-fun condMapEmpty!1096 () Bool)

(declare-datatypes ((V!1237 0))(
  ( (V!1238 (val!556 Int)) )
))
(declare-datatypes ((ValueCell!330 0))(
  ( (ValueCellFull!330 (v!1641 V!1237)) (EmptyCell!330) )
))
(declare-datatypes ((array!1353 0))(
  ( (array!1354 (arr!637 (Array (_ BitVec 32) ValueCell!330)) (size!738 (_ BitVec 32))) )
))
(declare-fun _values!1501 () array!1353)

(declare-fun mapDefault!1096 () ValueCell!330)

(assert (=> b!25951 (= condMapEmpty!1096 (= (arr!637 _values!1501) ((as const (Array (_ BitVec 32) ValueCell!330)) mapDefault!1096)))))

(declare-fun mapIsEmpty!1096 () Bool)

(assert (=> mapIsEmpty!1096 mapRes!1096))

(declare-fun res!15422 () Bool)

(assert (=> start!3706 (=> (not res!15422) (not e!16829))))

(declare-fun mask!2294 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!3706 (= res!15422 (validMask!0 mask!2294))))

(assert (=> start!3706 e!16829))

(assert (=> start!3706 true))

(declare-fun array_inv!443 (array!1353) Bool)

(assert (=> start!3706 (and (array_inv!443 _values!1501) e!16832)))

(declare-fun array_inv!444 (array!1351) Bool)

(assert (=> start!3706 (array_inv!444 _keys!1833)))

(declare-fun b!25952 () Bool)

(declare-fun res!15421 () Bool)

(assert (=> b!25952 (=> (not res!15421) (not e!16829))))

(declare-fun extraKeys!1422 () (_ BitVec 32))

(assert (=> b!25952 (= res!15421 (and (= (size!738 _values!1501) (bvadd #b00000000000000000000000000000001 mask!2294)) (= (size!737 _keys!1833) (size!738 _values!1501)) (bvsge mask!2294 #b00000000000000000000000000000000) (bvsge extraKeys!1422 #b00000000000000000000000000000000) (bvsle extraKeys!1422 #b00000000000000000000000000000011)))))

(declare-fun b!25953 () Bool)

(declare-fun res!15420 () Bool)

(assert (=> b!25953 (=> (not res!15420) (not e!16829))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1351 (_ BitVec 32)) Bool)

(assert (=> b!25953 (= res!15420 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294))))

(declare-fun b!25954 () Bool)

(declare-fun e!16831 () Bool)

(assert (=> b!25954 (= e!16831 tp_is_empty!1059)))

(declare-fun mapNonEmpty!1096 () Bool)

(declare-fun tp!3616 () Bool)

(assert (=> mapNonEmpty!1096 (= mapRes!1096 (and tp!3616 e!16831))))

(declare-fun mapKey!1096 () (_ BitVec 32))

(declare-fun mapValue!1096 () ValueCell!330)

(declare-fun mapRest!1096 () (Array (_ BitVec 32) ValueCell!330))

(assert (=> mapNonEmpty!1096 (= (arr!637 _values!1501) (store mapRest!1096 mapKey!1096 mapValue!1096))))

(assert (= (and start!3706 res!15422) b!25952))

(assert (= (and b!25952 res!15421) b!25953))

(assert (= (and b!25953 res!15420) b!25950))

(assert (= (and b!25951 condMapEmpty!1096) mapIsEmpty!1096))

(assert (= (and b!25951 (not condMapEmpty!1096)) mapNonEmpty!1096))

(get-info :version)

(assert (= (and mapNonEmpty!1096 ((_ is ValueCellFull!330) mapValue!1096)) b!25954))

(assert (= (and b!25951 ((_ is ValueCellFull!330) mapDefault!1096)) b!25949))

(assert (= start!3706 b!25951))

(declare-fun m!20909 () Bool)

(assert (=> start!3706 m!20909))

(declare-fun m!20911 () Bool)

(assert (=> start!3706 m!20911))

(declare-fun m!20913 () Bool)

(assert (=> start!3706 m!20913))

(declare-fun m!20915 () Bool)

(assert (=> b!25953 m!20915))

(declare-fun m!20917 () Bool)

(assert (=> mapNonEmpty!1096 m!20917))

(check-sat (not b!25953) (not start!3706) (not mapNonEmpty!1096) tp_is_empty!1059)
(check-sat)
(get-model)

(declare-fun d!4847 () Bool)

(declare-fun res!15437 () Bool)

(declare-fun e!16856 () Bool)

(assert (=> d!4847 (=> res!15437 e!16856)))

(assert (=> d!4847 (= res!15437 (bvsge #b00000000000000000000000000000000 (size!737 _keys!1833)))))

(assert (=> d!4847 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1833 mask!2294) e!16856)))

(declare-fun b!25981 () Bool)

(declare-fun e!16854 () Bool)

(declare-fun call!2495 () Bool)

(assert (=> b!25981 (= e!16854 call!2495)))

(declare-fun b!25982 () Bool)

(declare-fun e!16855 () Bool)

(assert (=> b!25982 (= e!16854 e!16855)))

(declare-fun lt!10306 () (_ BitVec 64))

(assert (=> b!25982 (= lt!10306 (select (arr!636 _keys!1833) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!623 0))(
  ( (Unit!624) )
))
(declare-fun lt!10305 () Unit!623)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!1351 (_ BitVec 64) (_ BitVec 32)) Unit!623)

(assert (=> b!25982 (= lt!10305 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1833 lt!10306 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!1351 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!25982 (arrayContainsKey!0 _keys!1833 lt!10306 #b00000000000000000000000000000000)))

(declare-fun lt!10307 () Unit!623)

(assert (=> b!25982 (= lt!10307 lt!10305)))

(declare-fun res!15436 () Bool)

(declare-datatypes ((SeekEntryResult!63 0))(
  ( (MissingZero!63 (index!2374 (_ BitVec 32))) (Found!63 (index!2375 (_ BitVec 32))) (Intermediate!63 (undefined!875 Bool) (index!2376 (_ BitVec 32)) (x!6057 (_ BitVec 32))) (Undefined!63) (MissingVacant!63 (index!2377 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1351 (_ BitVec 32)) SeekEntryResult!63)

(assert (=> b!25982 (= res!15436 (= (seekEntryOrOpen!0 (select (arr!636 _keys!1833) #b00000000000000000000000000000000) _keys!1833 mask!2294) (Found!63 #b00000000000000000000000000000000)))))

(assert (=> b!25982 (=> (not res!15436) (not e!16855))))

(declare-fun b!25983 () Bool)

(assert (=> b!25983 (= e!16855 call!2495)))

(declare-fun bm!2492 () Bool)

(assert (=> bm!2492 (= call!2495 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1833 mask!2294))))

(declare-fun b!25984 () Bool)

(assert (=> b!25984 (= e!16856 e!16854)))

(declare-fun c!3658 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!25984 (= c!3658 (validKeyInArray!0 (select (arr!636 _keys!1833) #b00000000000000000000000000000000)))))

(assert (= (and d!4847 (not res!15437)) b!25984))

(assert (= (and b!25984 c!3658) b!25982))

(assert (= (and b!25984 (not c!3658)) b!25981))

(assert (= (and b!25982 res!15436) b!25983))

(assert (= (or b!25983 b!25981) bm!2492))

(declare-fun m!20929 () Bool)

(assert (=> b!25982 m!20929))

(declare-fun m!20931 () Bool)

(assert (=> b!25982 m!20931))

(declare-fun m!20933 () Bool)

(assert (=> b!25982 m!20933))

(assert (=> b!25982 m!20929))

(declare-fun m!20935 () Bool)

(assert (=> b!25982 m!20935))

(declare-fun m!20937 () Bool)

(assert (=> bm!2492 m!20937))

(assert (=> b!25984 m!20929))

(assert (=> b!25984 m!20929))

(declare-fun m!20939 () Bool)

(assert (=> b!25984 m!20939))

(assert (=> b!25953 d!4847))

(declare-fun d!4849 () Bool)

(assert (=> d!4849 (= (validMask!0 mask!2294) (and (or (= mask!2294 #b00000000000000000000000000000111) (= mask!2294 #b00000000000000000000000000001111) (= mask!2294 #b00000000000000000000000000011111) (= mask!2294 #b00000000000000000000000000111111) (= mask!2294 #b00000000000000000000000001111111) (= mask!2294 #b00000000000000000000000011111111) (= mask!2294 #b00000000000000000000000111111111) (= mask!2294 #b00000000000000000000001111111111) (= mask!2294 #b00000000000000000000011111111111) (= mask!2294 #b00000000000000000000111111111111) (= mask!2294 #b00000000000000000001111111111111) (= mask!2294 #b00000000000000000011111111111111) (= mask!2294 #b00000000000000000111111111111111) (= mask!2294 #b00000000000000001111111111111111) (= mask!2294 #b00000000000000011111111111111111) (= mask!2294 #b00000000000000111111111111111111) (= mask!2294 #b00000000000001111111111111111111) (= mask!2294 #b00000000000011111111111111111111) (= mask!2294 #b00000000000111111111111111111111) (= mask!2294 #b00000000001111111111111111111111) (= mask!2294 #b00000000011111111111111111111111) (= mask!2294 #b00000000111111111111111111111111) (= mask!2294 #b00000001111111111111111111111111) (= mask!2294 #b00000011111111111111111111111111) (= mask!2294 #b00000111111111111111111111111111) (= mask!2294 #b00001111111111111111111111111111) (= mask!2294 #b00011111111111111111111111111111) (= mask!2294 #b00111111111111111111111111111111)) (bvsle mask!2294 #b00111111111111111111111111111111)))))

(assert (=> start!3706 d!4849))

(declare-fun d!4851 () Bool)

(assert (=> d!4851 (= (array_inv!443 _values!1501) (bvsge (size!738 _values!1501) #b00000000000000000000000000000000))))

(assert (=> start!3706 d!4851))

(declare-fun d!4853 () Bool)

(assert (=> d!4853 (= (array_inv!444 _keys!1833) (bvsge (size!737 _keys!1833) #b00000000000000000000000000000000))))

(assert (=> start!3706 d!4853))

(declare-fun b!25992 () Bool)

(declare-fun e!16862 () Bool)

(assert (=> b!25992 (= e!16862 tp_is_empty!1059)))

(declare-fun b!25991 () Bool)

(declare-fun e!16861 () Bool)

(assert (=> b!25991 (= e!16861 tp_is_empty!1059)))

(declare-fun condMapEmpty!1102 () Bool)

(declare-fun mapDefault!1102 () ValueCell!330)

(assert (=> mapNonEmpty!1096 (= condMapEmpty!1102 (= mapRest!1096 ((as const (Array (_ BitVec 32) ValueCell!330)) mapDefault!1102)))))

(declare-fun mapRes!1102 () Bool)

(assert (=> mapNonEmpty!1096 (= tp!3616 (and e!16862 mapRes!1102))))

(declare-fun mapIsEmpty!1102 () Bool)

(assert (=> mapIsEmpty!1102 mapRes!1102))

(declare-fun mapNonEmpty!1102 () Bool)

(declare-fun tp!3622 () Bool)

(assert (=> mapNonEmpty!1102 (= mapRes!1102 (and tp!3622 e!16861))))

(declare-fun mapValue!1102 () ValueCell!330)

(declare-fun mapKey!1102 () (_ BitVec 32))

(declare-fun mapRest!1102 () (Array (_ BitVec 32) ValueCell!330))

(assert (=> mapNonEmpty!1102 (= mapRest!1096 (store mapRest!1102 mapKey!1102 mapValue!1102))))

(assert (= (and mapNonEmpty!1096 condMapEmpty!1102) mapIsEmpty!1102))

(assert (= (and mapNonEmpty!1096 (not condMapEmpty!1102)) mapNonEmpty!1102))

(assert (= (and mapNonEmpty!1102 ((_ is ValueCellFull!330) mapValue!1102)) b!25991))

(assert (= (and mapNonEmpty!1096 ((_ is ValueCellFull!330) mapDefault!1102)) b!25992))

(declare-fun m!20941 () Bool)

(assert (=> mapNonEmpty!1102 m!20941))

(check-sat (not b!25982) (not b!25984) tp_is_empty!1059 (not mapNonEmpty!1102) (not bm!2492))
(check-sat)
