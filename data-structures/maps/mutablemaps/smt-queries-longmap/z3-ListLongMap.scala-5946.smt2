; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!77522 () Bool)

(assert start!77522)

(declare-fun res!609330 () Bool)

(declare-fun e!505841 () Bool)

(assert (=> start!77522 (=> (not res!609330) (not e!505841))))

(declare-fun mask!1756 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!77522 (= res!609330 (validMask!0 mask!1756))))

(assert (=> start!77522 e!505841))

(assert (=> start!77522 true))

(declare-datatypes ((V!29641 0))(
  ( (V!29642 (val!9304 Int)) )
))
(declare-datatypes ((ValueCell!8772 0))(
  ( (ValueCellFull!8772 (v!11809 V!29641)) (EmptyCell!8772) )
))
(declare-datatypes ((array!53060 0))(
  ( (array!53061 (arr!25486 (Array (_ BitVec 32) ValueCell!8772)) (size!25946 (_ BitVec 32))) )
))
(declare-fun _values!1152 () array!53060)

(declare-fun e!505840 () Bool)

(declare-fun array_inv!19954 (array!53060) Bool)

(assert (=> start!77522 (and (array_inv!19954 _values!1152) e!505840)))

(declare-datatypes ((array!53062 0))(
  ( (array!53063 (arr!25487 (Array (_ BitVec 32) (_ BitVec 64))) (size!25947 (_ BitVec 32))) )
))
(declare-fun _keys!1386 () array!53062)

(declare-fun array_inv!19955 (array!53062) Bool)

(assert (=> start!77522 (array_inv!19955 _keys!1386)))

(declare-fun b!902883 () Bool)

(declare-fun e!505837 () Bool)

(declare-fun tp_is_empty!18507 () Bool)

(assert (=> b!902883 (= e!505837 tp_is_empty!18507)))

(declare-fun b!902884 () Bool)

(declare-fun res!609329 () Bool)

(assert (=> b!902884 (=> (not res!609329) (not e!505841))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!53062 (_ BitVec 32)) Bool)

(assert (=> b!902884 (= res!609329 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756))))

(declare-fun b!902885 () Bool)

(declare-fun res!609327 () Bool)

(assert (=> b!902885 (=> (not res!609327) (not e!505841))))

(declare-datatypes ((List!17982 0))(
  ( (Nil!17979) (Cons!17978 (h!19124 (_ BitVec 64)) (t!25373 List!17982)) )
))
(declare-fun arrayNoDuplicates!0 (array!53062 (_ BitVec 32) List!17982) Bool)

(assert (=> b!902885 (= res!609327 (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!17979))))

(declare-fun b!902886 () Bool)

(declare-fun res!609328 () Bool)

(assert (=> b!902886 (=> (not res!609328) (not e!505841))))

(declare-fun extraKeys!1073 () (_ BitVec 32))

(assert (=> b!902886 (= res!609328 (and (= (size!25946 _values!1152) (bvadd #b00000000000000000000000000000001 mask!1756)) (= (size!25947 _keys!1386) (size!25946 _values!1152)) (bvsge mask!1756 #b00000000000000000000000000000000) (bvsge extraKeys!1073 #b00000000000000000000000000000000) (bvsle extraKeys!1073 #b00000000000000000000000000000011)))))

(declare-fun b!902887 () Bool)

(declare-fun e!505839 () Bool)

(assert (=> b!902887 (= e!505839 tp_is_empty!18507)))

(declare-fun b!902888 () Bool)

(assert (=> b!902888 (= e!505841 (bvsgt #b00000000000000000000000000000000 (size!25947 _keys!1386)))))

(declare-fun b!902889 () Bool)

(declare-fun mapRes!29470 () Bool)

(assert (=> b!902889 (= e!505840 (and e!505837 mapRes!29470))))

(declare-fun condMapEmpty!29470 () Bool)

(declare-fun mapDefault!29470 () ValueCell!8772)

(assert (=> b!902889 (= condMapEmpty!29470 (= (arr!25486 _values!1152) ((as const (Array (_ BitVec 32) ValueCell!8772)) mapDefault!29470)))))

(declare-fun mapIsEmpty!29470 () Bool)

(assert (=> mapIsEmpty!29470 mapRes!29470))

(declare-fun mapNonEmpty!29470 () Bool)

(declare-fun tp!56530 () Bool)

(assert (=> mapNonEmpty!29470 (= mapRes!29470 (and tp!56530 e!505839))))

(declare-fun mapKey!29470 () (_ BitVec 32))

(declare-fun mapRest!29470 () (Array (_ BitVec 32) ValueCell!8772))

(declare-fun mapValue!29470 () ValueCell!8772)

(assert (=> mapNonEmpty!29470 (= (arr!25486 _values!1152) (store mapRest!29470 mapKey!29470 mapValue!29470))))

(assert (= (and start!77522 res!609330) b!902886))

(assert (= (and b!902886 res!609328) b!902884))

(assert (= (and b!902884 res!609329) b!902885))

(assert (= (and b!902885 res!609327) b!902888))

(assert (= (and b!902889 condMapEmpty!29470) mapIsEmpty!29470))

(assert (= (and b!902889 (not condMapEmpty!29470)) mapNonEmpty!29470))

(get-info :version)

(assert (= (and mapNonEmpty!29470 ((_ is ValueCellFull!8772) mapValue!29470)) b!902887))

(assert (= (and b!902889 ((_ is ValueCellFull!8772) mapDefault!29470)) b!902883))

(assert (= start!77522 b!902889))

(declare-fun m!838787 () Bool)

(assert (=> start!77522 m!838787))

(declare-fun m!838789 () Bool)

(assert (=> start!77522 m!838789))

(declare-fun m!838791 () Bool)

(assert (=> start!77522 m!838791))

(declare-fun m!838793 () Bool)

(assert (=> b!902884 m!838793))

(declare-fun m!838795 () Bool)

(assert (=> b!902885 m!838795))

(declare-fun m!838797 () Bool)

(assert (=> mapNonEmpty!29470 m!838797))

(check-sat (not b!902885) (not start!77522) (not b!902884) tp_is_empty!18507 (not mapNonEmpty!29470))
(check-sat)
(get-model)

(declare-fun b!902921 () Bool)

(declare-fun e!505865 () Bool)

(declare-fun e!505866 () Bool)

(assert (=> b!902921 (= e!505865 e!505866)))

(declare-fun res!609350 () Bool)

(assert (=> b!902921 (=> (not res!609350) (not e!505866))))

(declare-fun e!505867 () Bool)

(assert (=> b!902921 (= res!609350 (not e!505867))))

(declare-fun res!609349 () Bool)

(assert (=> b!902921 (=> (not res!609349) (not e!505867))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!902921 (= res!609349 (validKeyInArray!0 (select (arr!25487 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!902922 () Bool)

(declare-fun e!505868 () Bool)

(declare-fun call!40249 () Bool)

(assert (=> b!902922 (= e!505868 call!40249)))

(declare-fun d!111915 () Bool)

(declare-fun res!609351 () Bool)

(assert (=> d!111915 (=> res!609351 e!505865)))

(assert (=> d!111915 (= res!609351 (bvsge #b00000000000000000000000000000000 (size!25947 _keys!1386)))))

(assert (=> d!111915 (= (arrayNoDuplicates!0 _keys!1386 #b00000000000000000000000000000000 Nil!17979) e!505865)))

(declare-fun b!902923 () Bool)

(assert (=> b!902923 (= e!505866 e!505868)))

(declare-fun c!95563 () Bool)

(assert (=> b!902923 (= c!95563 (validKeyInArray!0 (select (arr!25487 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!902924 () Bool)

(declare-fun contains!4436 (List!17982 (_ BitVec 64)) Bool)

(assert (=> b!902924 (= e!505867 (contains!4436 Nil!17979 (select (arr!25487 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun bm!40246 () Bool)

(assert (=> bm!40246 (= call!40249 (arrayNoDuplicates!0 _keys!1386 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!95563 (Cons!17978 (select (arr!25487 _keys!1386) #b00000000000000000000000000000000) Nil!17979) Nil!17979)))))

(declare-fun b!902925 () Bool)

(assert (=> b!902925 (= e!505868 call!40249)))

(assert (= (and d!111915 (not res!609351)) b!902921))

(assert (= (and b!902921 res!609349) b!902924))

(assert (= (and b!902921 res!609350) b!902923))

(assert (= (and b!902923 c!95563) b!902925))

(assert (= (and b!902923 (not c!95563)) b!902922))

(assert (= (or b!902925 b!902922) bm!40246))

(declare-fun m!838811 () Bool)

(assert (=> b!902921 m!838811))

(assert (=> b!902921 m!838811))

(declare-fun m!838813 () Bool)

(assert (=> b!902921 m!838813))

(assert (=> b!902923 m!838811))

(assert (=> b!902923 m!838811))

(assert (=> b!902923 m!838813))

(assert (=> b!902924 m!838811))

(assert (=> b!902924 m!838811))

(declare-fun m!838815 () Bool)

(assert (=> b!902924 m!838815))

(assert (=> bm!40246 m!838811))

(declare-fun m!838817 () Bool)

(assert (=> bm!40246 m!838817))

(assert (=> b!902885 d!111915))

(declare-fun bm!40249 () Bool)

(declare-fun call!40252 () Bool)

(assert (=> bm!40249 (= call!40252 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1386 mask!1756))))

(declare-fun b!902934 () Bool)

(declare-fun e!505876 () Bool)

(declare-fun e!505877 () Bool)

(assert (=> b!902934 (= e!505876 e!505877)))

(declare-fun c!95566 () Bool)

(assert (=> b!902934 (= c!95566 (validKeyInArray!0 (select (arr!25487 _keys!1386) #b00000000000000000000000000000000)))))

(declare-fun b!902935 () Bool)

(declare-fun e!505875 () Bool)

(assert (=> b!902935 (= e!505877 e!505875)))

(declare-fun lt!407902 () (_ BitVec 64))

(assert (=> b!902935 (= lt!407902 (select (arr!25487 _keys!1386) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!30611 0))(
  ( (Unit!30612) )
))
(declare-fun lt!407903 () Unit!30611)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!53062 (_ BitVec 64) (_ BitVec 32)) Unit!30611)

(assert (=> b!902935 (= lt!407903 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1386 lt!407902 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!53062 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!902935 (arrayContainsKey!0 _keys!1386 lt!407902 #b00000000000000000000000000000000)))

(declare-fun lt!407901 () Unit!30611)

(assert (=> b!902935 (= lt!407901 lt!407903)))

(declare-fun res!609356 () Bool)

(declare-datatypes ((SeekEntryResult!8949 0))(
  ( (MissingZero!8949 (index!38166 (_ BitVec 32))) (Found!8949 (index!38167 (_ BitVec 32))) (Intermediate!8949 (undefined!9761 Bool) (index!38168 (_ BitVec 32)) (x!76987 (_ BitVec 32))) (Undefined!8949) (MissingVacant!8949 (index!38169 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!53062 (_ BitVec 32)) SeekEntryResult!8949)

(assert (=> b!902935 (= res!609356 (= (seekEntryOrOpen!0 (select (arr!25487 _keys!1386) #b00000000000000000000000000000000) _keys!1386 mask!1756) (Found!8949 #b00000000000000000000000000000000)))))

(assert (=> b!902935 (=> (not res!609356) (not e!505875))))

(declare-fun b!902936 () Bool)

(assert (=> b!902936 (= e!505875 call!40252)))

(declare-fun d!111917 () Bool)

(declare-fun res!609357 () Bool)

(assert (=> d!111917 (=> res!609357 e!505876)))

(assert (=> d!111917 (= res!609357 (bvsge #b00000000000000000000000000000000 (size!25947 _keys!1386)))))

(assert (=> d!111917 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1386 mask!1756) e!505876)))

(declare-fun b!902937 () Bool)

(assert (=> b!902937 (= e!505877 call!40252)))

(assert (= (and d!111917 (not res!609357)) b!902934))

(assert (= (and b!902934 c!95566) b!902935))

(assert (= (and b!902934 (not c!95566)) b!902937))

(assert (= (and b!902935 res!609356) b!902936))

(assert (= (or b!902936 b!902937) bm!40249))

(declare-fun m!838819 () Bool)

(assert (=> bm!40249 m!838819))

(assert (=> b!902934 m!838811))

(assert (=> b!902934 m!838811))

(assert (=> b!902934 m!838813))

(assert (=> b!902935 m!838811))

(declare-fun m!838821 () Bool)

(assert (=> b!902935 m!838821))

(declare-fun m!838823 () Bool)

(assert (=> b!902935 m!838823))

(assert (=> b!902935 m!838811))

(declare-fun m!838825 () Bool)

(assert (=> b!902935 m!838825))

(assert (=> b!902884 d!111917))

(declare-fun d!111919 () Bool)

(assert (=> d!111919 (= (validMask!0 mask!1756) (and (or (= mask!1756 #b00000000000000000000000000000111) (= mask!1756 #b00000000000000000000000000001111) (= mask!1756 #b00000000000000000000000000011111) (= mask!1756 #b00000000000000000000000000111111) (= mask!1756 #b00000000000000000000000001111111) (= mask!1756 #b00000000000000000000000011111111) (= mask!1756 #b00000000000000000000000111111111) (= mask!1756 #b00000000000000000000001111111111) (= mask!1756 #b00000000000000000000011111111111) (= mask!1756 #b00000000000000000000111111111111) (= mask!1756 #b00000000000000000001111111111111) (= mask!1756 #b00000000000000000011111111111111) (= mask!1756 #b00000000000000000111111111111111) (= mask!1756 #b00000000000000001111111111111111) (= mask!1756 #b00000000000000011111111111111111) (= mask!1756 #b00000000000000111111111111111111) (= mask!1756 #b00000000000001111111111111111111) (= mask!1756 #b00000000000011111111111111111111) (= mask!1756 #b00000000000111111111111111111111) (= mask!1756 #b00000000001111111111111111111111) (= mask!1756 #b00000000011111111111111111111111) (= mask!1756 #b00000000111111111111111111111111) (= mask!1756 #b00000001111111111111111111111111) (= mask!1756 #b00000011111111111111111111111111) (= mask!1756 #b00000111111111111111111111111111) (= mask!1756 #b00001111111111111111111111111111) (= mask!1756 #b00011111111111111111111111111111) (= mask!1756 #b00111111111111111111111111111111)) (bvsle mask!1756 #b00111111111111111111111111111111)))))

(assert (=> start!77522 d!111919))

(declare-fun d!111921 () Bool)

(assert (=> d!111921 (= (array_inv!19954 _values!1152) (bvsge (size!25946 _values!1152) #b00000000000000000000000000000000))))

(assert (=> start!77522 d!111921))

(declare-fun d!111923 () Bool)

(assert (=> d!111923 (= (array_inv!19955 _keys!1386) (bvsge (size!25947 _keys!1386) #b00000000000000000000000000000000))))

(assert (=> start!77522 d!111923))

(declare-fun mapIsEmpty!29476 () Bool)

(declare-fun mapRes!29476 () Bool)

(assert (=> mapIsEmpty!29476 mapRes!29476))

(declare-fun mapNonEmpty!29476 () Bool)

(declare-fun tp!56536 () Bool)

(declare-fun e!505883 () Bool)

(assert (=> mapNonEmpty!29476 (= mapRes!29476 (and tp!56536 e!505883))))

(declare-fun mapRest!29476 () (Array (_ BitVec 32) ValueCell!8772))

(declare-fun mapKey!29476 () (_ BitVec 32))

(declare-fun mapValue!29476 () ValueCell!8772)

(assert (=> mapNonEmpty!29476 (= mapRest!29470 (store mapRest!29476 mapKey!29476 mapValue!29476))))

(declare-fun b!902945 () Bool)

(declare-fun e!505882 () Bool)

(assert (=> b!902945 (= e!505882 tp_is_empty!18507)))

(declare-fun condMapEmpty!29476 () Bool)

(declare-fun mapDefault!29476 () ValueCell!8772)

(assert (=> mapNonEmpty!29470 (= condMapEmpty!29476 (= mapRest!29470 ((as const (Array (_ BitVec 32) ValueCell!8772)) mapDefault!29476)))))

(assert (=> mapNonEmpty!29470 (= tp!56530 (and e!505882 mapRes!29476))))

(declare-fun b!902944 () Bool)

(assert (=> b!902944 (= e!505883 tp_is_empty!18507)))

(assert (= (and mapNonEmpty!29470 condMapEmpty!29476) mapIsEmpty!29476))

(assert (= (and mapNonEmpty!29470 (not condMapEmpty!29476)) mapNonEmpty!29476))

(assert (= (and mapNonEmpty!29476 ((_ is ValueCellFull!8772) mapValue!29476)) b!902944))

(assert (= (and mapNonEmpty!29470 ((_ is ValueCellFull!8772) mapDefault!29476)) b!902945))

(declare-fun m!838827 () Bool)

(assert (=> mapNonEmpty!29476 m!838827))

(check-sat (not b!902921) (not b!902935) (not b!902923) (not bm!40249) tp_is_empty!18507 (not bm!40246) (not b!902924) (not mapNonEmpty!29476) (not b!902934))
(check-sat)
