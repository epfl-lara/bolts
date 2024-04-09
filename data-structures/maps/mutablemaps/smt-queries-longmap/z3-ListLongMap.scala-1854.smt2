; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!33502 () Bool)

(assert start!33502)

(declare-fun mapNonEmpty!11505 () Bool)

(declare-fun mapRes!11505 () Bool)

(declare-fun tp!23880 () Bool)

(declare-fun e!204027 () Bool)

(assert (=> mapNonEmpty!11505 (= mapRes!11505 (and tp!23880 e!204027))))

(declare-datatypes ((V!9973 0))(
  ( (V!9974 (val!3418 Int)) )
))
(declare-datatypes ((ValueCell!3030 0))(
  ( (ValueCellFull!3030 (v!5573 V!9973)) (EmptyCell!3030) )
))
(declare-fun mapValue!11505 () ValueCell!3030)

(declare-fun mapKey!11505 () (_ BitVec 32))

(declare-datatypes ((array!17087 0))(
  ( (array!17088 (arr!8075 (Array (_ BitVec 32) ValueCell!3030)) (size!8427 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17087)

(declare-fun mapRest!11505 () (Array (_ BitVec 32) ValueCell!3030))

(assert (=> mapNonEmpty!11505 (= (arr!8075 _values!1525) (store mapRest!11505 mapKey!11505 mapValue!11505))))

(declare-fun b!332240 () Bool)

(declare-fun tp_is_empty!6747 () Bool)

(assert (=> b!332240 (= e!204027 tp_is_empty!6747)))

(declare-fun b!332242 () Bool)

(declare-fun e!204028 () Bool)

(declare-fun e!204029 () Bool)

(assert (=> b!332242 (= e!204028 (and e!204029 mapRes!11505))))

(declare-fun condMapEmpty!11505 () Bool)

(declare-fun mapDefault!11505 () ValueCell!3030)

(assert (=> b!332242 (= condMapEmpty!11505 (= (arr!8075 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3030)) mapDefault!11505)))))

(declare-fun b!332243 () Bool)

(declare-fun res!183095 () Bool)

(declare-fun e!204030 () Bool)

(assert (=> b!332243 (=> (not res!183095) (not e!204030))))

(declare-datatypes ((array!17089 0))(
  ( (array!17090 (arr!8076 (Array (_ BitVec 32) (_ BitVec 64))) (size!8428 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!17089)

(declare-datatypes ((List!4615 0))(
  ( (Nil!4612) (Cons!4611 (h!5467 (_ BitVec 64)) (t!9705 List!4615)) )
))
(declare-fun arrayNoDuplicates!0 (array!17089 (_ BitVec 32) List!4615) Bool)

(assert (=> b!332243 (= res!183095 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4612))))

(declare-fun b!332244 () Bool)

(declare-fun res!183094 () Bool)

(assert (=> b!332244 (=> (not res!183094) (not e!204030))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!332244 (= res!183094 (and (= (size!8427 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8428 _keys!1895) (size!8427 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!332245 () Bool)

(declare-fun res!183098 () Bool)

(assert (=> b!332245 (=> (not res!183098) (not e!204030))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17089 (_ BitVec 32)) Bool)

(assert (=> b!332245 (= res!183098 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!332246 () Bool)

(declare-fun res!183096 () Bool)

(assert (=> b!332246 (=> (not res!183096) (not e!204030))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!332246 (= res!183096 (validKeyInArray!0 k0!1348))))

(declare-fun b!332247 () Bool)

(assert (=> b!332247 (= e!204029 tp_is_empty!6747)))

(declare-fun mapIsEmpty!11505 () Bool)

(assert (=> mapIsEmpty!11505 mapRes!11505))

(declare-fun b!332241 () Bool)

(assert (=> b!332241 (= e!204030 (bvsgt #b00000000000000000000000000000000 (size!8428 _keys!1895)))))

(declare-fun res!183097 () Bool)

(assert (=> start!33502 (=> (not res!183097) (not e!204030))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!33502 (= res!183097 (validMask!0 mask!2385))))

(assert (=> start!33502 e!204030))

(assert (=> start!33502 true))

(declare-fun array_inv!6006 (array!17087) Bool)

(assert (=> start!33502 (and (array_inv!6006 _values!1525) e!204028)))

(declare-fun array_inv!6007 (array!17089) Bool)

(assert (=> start!33502 (array_inv!6007 _keys!1895)))

(assert (= (and start!33502 res!183097) b!332244))

(assert (= (and b!332244 res!183094) b!332245))

(assert (= (and b!332245 res!183098) b!332243))

(assert (= (and b!332243 res!183095) b!332246))

(assert (= (and b!332246 res!183096) b!332241))

(assert (= (and b!332242 condMapEmpty!11505) mapIsEmpty!11505))

(assert (= (and b!332242 (not condMapEmpty!11505)) mapNonEmpty!11505))

(get-info :version)

(assert (= (and mapNonEmpty!11505 ((_ is ValueCellFull!3030) mapValue!11505)) b!332240))

(assert (= (and b!332242 ((_ is ValueCellFull!3030) mapDefault!11505)) b!332247))

(assert (= start!33502 b!332242))

(declare-fun m!336799 () Bool)

(assert (=> b!332246 m!336799))

(declare-fun m!336801 () Bool)

(assert (=> b!332243 m!336801))

(declare-fun m!336803 () Bool)

(assert (=> start!33502 m!336803))

(declare-fun m!336805 () Bool)

(assert (=> start!33502 m!336805))

(declare-fun m!336807 () Bool)

(assert (=> start!33502 m!336807))

(declare-fun m!336809 () Bool)

(assert (=> b!332245 m!336809))

(declare-fun m!336811 () Bool)

(assert (=> mapNonEmpty!11505 m!336811))

(check-sat (not start!33502) (not b!332245) (not b!332246) (not b!332243) tp_is_empty!6747 (not mapNonEmpty!11505))
(check-sat)
(get-model)

(declare-fun d!70389 () Bool)

(assert (=> d!70389 (= (validMask!0 mask!2385) (and (or (= mask!2385 #b00000000000000000000000000000111) (= mask!2385 #b00000000000000000000000000001111) (= mask!2385 #b00000000000000000000000000011111) (= mask!2385 #b00000000000000000000000000111111) (= mask!2385 #b00000000000000000000000001111111) (= mask!2385 #b00000000000000000000000011111111) (= mask!2385 #b00000000000000000000000111111111) (= mask!2385 #b00000000000000000000001111111111) (= mask!2385 #b00000000000000000000011111111111) (= mask!2385 #b00000000000000000000111111111111) (= mask!2385 #b00000000000000000001111111111111) (= mask!2385 #b00000000000000000011111111111111) (= mask!2385 #b00000000000000000111111111111111) (= mask!2385 #b00000000000000001111111111111111) (= mask!2385 #b00000000000000011111111111111111) (= mask!2385 #b00000000000000111111111111111111) (= mask!2385 #b00000000000001111111111111111111) (= mask!2385 #b00000000000011111111111111111111) (= mask!2385 #b00000000000111111111111111111111) (= mask!2385 #b00000000001111111111111111111111) (= mask!2385 #b00000000011111111111111111111111) (= mask!2385 #b00000000111111111111111111111111) (= mask!2385 #b00000001111111111111111111111111) (= mask!2385 #b00000011111111111111111111111111) (= mask!2385 #b00000111111111111111111111111111) (= mask!2385 #b00001111111111111111111111111111) (= mask!2385 #b00011111111111111111111111111111) (= mask!2385 #b00111111111111111111111111111111)) (bvsle mask!2385 #b00111111111111111111111111111111)))))

(assert (=> start!33502 d!70389))

(declare-fun d!70391 () Bool)

(assert (=> d!70391 (= (array_inv!6006 _values!1525) (bvsge (size!8427 _values!1525) #b00000000000000000000000000000000))))

(assert (=> start!33502 d!70391))

(declare-fun d!70393 () Bool)

(assert (=> d!70393 (= (array_inv!6007 _keys!1895) (bvsge (size!8428 _keys!1895) #b00000000000000000000000000000000))))

(assert (=> start!33502 d!70393))

(declare-fun b!332280 () Bool)

(declare-fun e!204054 () Bool)

(declare-fun e!204052 () Bool)

(assert (=> b!332280 (= e!204054 e!204052)))

(declare-fun c!52004 () Bool)

(assert (=> b!332280 (= c!52004 (validKeyInArray!0 (select (arr!8076 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!332281 () Bool)

(declare-fun e!204053 () Bool)

(declare-fun call!26207 () Bool)

(assert (=> b!332281 (= e!204053 call!26207)))

(declare-fun b!332282 () Bool)

(assert (=> b!332282 (= e!204052 call!26207)))

(declare-fun b!332283 () Bool)

(assert (=> b!332283 (= e!204052 e!204053)))

(declare-fun lt!158977 () (_ BitVec 64))

(assert (=> b!332283 (= lt!158977 (select (arr!8076 _keys!1895) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!10360 0))(
  ( (Unit!10361) )
))
(declare-fun lt!158978 () Unit!10360)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17089 (_ BitVec 64) (_ BitVec 32)) Unit!10360)

(assert (=> b!332283 (= lt!158978 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1895 lt!158977 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!17089 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!332283 (arrayContainsKey!0 _keys!1895 lt!158977 #b00000000000000000000000000000000)))

(declare-fun lt!158979 () Unit!10360)

(assert (=> b!332283 (= lt!158979 lt!158978)))

(declare-fun res!183119 () Bool)

(declare-datatypes ((SeekEntryResult!3142 0))(
  ( (MissingZero!3142 (index!14747 (_ BitVec 32))) (Found!3142 (index!14748 (_ BitVec 32))) (Intermediate!3142 (undefined!3954 Bool) (index!14749 (_ BitVec 32)) (x!33121 (_ BitVec 32))) (Undefined!3142) (MissingVacant!3142 (index!14750 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17089 (_ BitVec 32)) SeekEntryResult!3142)

(assert (=> b!332283 (= res!183119 (= (seekEntryOrOpen!0 (select (arr!8076 _keys!1895) #b00000000000000000000000000000000) _keys!1895 mask!2385) (Found!3142 #b00000000000000000000000000000000)))))

(assert (=> b!332283 (=> (not res!183119) (not e!204053))))

(declare-fun d!70395 () Bool)

(declare-fun res!183118 () Bool)

(assert (=> d!70395 (=> res!183118 e!204054)))

(assert (=> d!70395 (= res!183118 (bvsge #b00000000000000000000000000000000 (size!8428 _keys!1895)))))

(assert (=> d!70395 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385) e!204054)))

(declare-fun bm!26204 () Bool)

(assert (=> bm!26204 (= call!26207 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1895 mask!2385))))

(assert (= (and d!70395 (not res!183118)) b!332280))

(assert (= (and b!332280 c!52004) b!332283))

(assert (= (and b!332280 (not c!52004)) b!332282))

(assert (= (and b!332283 res!183119) b!332281))

(assert (= (or b!332281 b!332282) bm!26204))

(declare-fun m!336827 () Bool)

(assert (=> b!332280 m!336827))

(assert (=> b!332280 m!336827))

(declare-fun m!336829 () Bool)

(assert (=> b!332280 m!336829))

(assert (=> b!332283 m!336827))

(declare-fun m!336831 () Bool)

(assert (=> b!332283 m!336831))

(declare-fun m!336833 () Bool)

(assert (=> b!332283 m!336833))

(assert (=> b!332283 m!336827))

(declare-fun m!336835 () Bool)

(assert (=> b!332283 m!336835))

(declare-fun m!336837 () Bool)

(assert (=> bm!26204 m!336837))

(assert (=> b!332245 d!70395))

(declare-fun b!332294 () Bool)

(declare-fun e!204065 () Bool)

(declare-fun call!26210 () Bool)

(assert (=> b!332294 (= e!204065 call!26210)))

(declare-fun bm!26207 () Bool)

(declare-fun c!52007 () Bool)

(assert (=> bm!26207 (= call!26210 (arrayNoDuplicates!0 _keys!1895 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!52007 (Cons!4611 (select (arr!8076 _keys!1895) #b00000000000000000000000000000000) Nil!4612) Nil!4612)))))

(declare-fun b!332295 () Bool)

(declare-fun e!204066 () Bool)

(declare-fun e!204064 () Bool)

(assert (=> b!332295 (= e!204066 e!204064)))

(declare-fun res!183126 () Bool)

(assert (=> b!332295 (=> (not res!183126) (not e!204064))))

(declare-fun e!204063 () Bool)

(assert (=> b!332295 (= res!183126 (not e!204063))))

(declare-fun res!183128 () Bool)

(assert (=> b!332295 (=> (not res!183128) (not e!204063))))

(assert (=> b!332295 (= res!183128 (validKeyInArray!0 (select (arr!8076 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun b!332296 () Bool)

(assert (=> b!332296 (= e!204064 e!204065)))

(assert (=> b!332296 (= c!52007 (validKeyInArray!0 (select (arr!8076 _keys!1895) #b00000000000000000000000000000000)))))

(declare-fun d!70397 () Bool)

(declare-fun res!183127 () Bool)

(assert (=> d!70397 (=> res!183127 e!204066)))

(assert (=> d!70397 (= res!183127 (bvsge #b00000000000000000000000000000000 (size!8428 _keys!1895)))))

(assert (=> d!70397 (= (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4612) e!204066)))

(declare-fun b!332297 () Bool)

(assert (=> b!332297 (= e!204065 call!26210)))

(declare-fun b!332298 () Bool)

(declare-fun contains!2004 (List!4615 (_ BitVec 64)) Bool)

(assert (=> b!332298 (= e!204063 (contains!2004 Nil!4612 (select (arr!8076 _keys!1895) #b00000000000000000000000000000000)))))

(assert (= (and d!70397 (not res!183127)) b!332295))

(assert (= (and b!332295 res!183128) b!332298))

(assert (= (and b!332295 res!183126) b!332296))

(assert (= (and b!332296 c!52007) b!332294))

(assert (= (and b!332296 (not c!52007)) b!332297))

(assert (= (or b!332294 b!332297) bm!26207))

(assert (=> bm!26207 m!336827))

(declare-fun m!336839 () Bool)

(assert (=> bm!26207 m!336839))

(assert (=> b!332295 m!336827))

(assert (=> b!332295 m!336827))

(assert (=> b!332295 m!336829))

(assert (=> b!332296 m!336827))

(assert (=> b!332296 m!336827))

(assert (=> b!332296 m!336829))

(assert (=> b!332298 m!336827))

(assert (=> b!332298 m!336827))

(declare-fun m!336841 () Bool)

(assert (=> b!332298 m!336841))

(assert (=> b!332243 d!70397))

(declare-fun d!70399 () Bool)

(assert (=> d!70399 (= (validKeyInArray!0 k0!1348) (and (not (= k0!1348 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1348 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!332246 d!70399))

(declare-fun mapNonEmpty!11511 () Bool)

(declare-fun mapRes!11511 () Bool)

(declare-fun tp!23886 () Bool)

(declare-fun e!204071 () Bool)

(assert (=> mapNonEmpty!11511 (= mapRes!11511 (and tp!23886 e!204071))))

(declare-fun mapKey!11511 () (_ BitVec 32))

(declare-fun mapRest!11511 () (Array (_ BitVec 32) ValueCell!3030))

(declare-fun mapValue!11511 () ValueCell!3030)

(assert (=> mapNonEmpty!11511 (= mapRest!11505 (store mapRest!11511 mapKey!11511 mapValue!11511))))

(declare-fun mapIsEmpty!11511 () Bool)

(assert (=> mapIsEmpty!11511 mapRes!11511))

(declare-fun b!332305 () Bool)

(assert (=> b!332305 (= e!204071 tp_is_empty!6747)))

(declare-fun b!332306 () Bool)

(declare-fun e!204072 () Bool)

(assert (=> b!332306 (= e!204072 tp_is_empty!6747)))

(declare-fun condMapEmpty!11511 () Bool)

(declare-fun mapDefault!11511 () ValueCell!3030)

(assert (=> mapNonEmpty!11505 (= condMapEmpty!11511 (= mapRest!11505 ((as const (Array (_ BitVec 32) ValueCell!3030)) mapDefault!11511)))))

(assert (=> mapNonEmpty!11505 (= tp!23880 (and e!204072 mapRes!11511))))

(assert (= (and mapNonEmpty!11505 condMapEmpty!11511) mapIsEmpty!11511))

(assert (= (and mapNonEmpty!11505 (not condMapEmpty!11511)) mapNonEmpty!11511))

(assert (= (and mapNonEmpty!11511 ((_ is ValueCellFull!3030) mapValue!11511)) b!332305))

(assert (= (and mapNonEmpty!11505 ((_ is ValueCellFull!3030) mapDefault!11511)) b!332306))

(declare-fun m!336843 () Bool)

(assert (=> mapNonEmpty!11511 m!336843))

(check-sat (not b!332298) (not b!332280) (not b!332296) (not b!332283) tp_is_empty!6747 (not b!332295) (not bm!26207) (not mapNonEmpty!11511) (not bm!26204))
(check-sat)
