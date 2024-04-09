; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7350 () Bool)

(assert start!7350)

(declare-fun b!47194 () Bool)

(declare-fun res!27461 () Bool)

(declare-fun e!30190 () Bool)

(assert (=> b!47194 (=> (not res!27461) (not e!30190))))

(declare-datatypes ((array!3086 0))(
  ( (array!3087 (arr!1481 (Array (_ BitVec 32) (_ BitVec 64))) (size!1703 (_ BitVec 32))) )
))
(declare-fun _keys!1940 () array!3086)

(declare-fun extraKeys!1471 () (_ BitVec 32))

(declare-fun mask!2458 () (_ BitVec 32))

(declare-datatypes ((V!2417 0))(
  ( (V!2418 (val!1045 Int)) )
))
(declare-datatypes ((ValueCell!717 0))(
  ( (ValueCellFull!717 (v!2104 V!2417)) (EmptyCell!717) )
))
(declare-datatypes ((array!3088 0))(
  ( (array!3089 (arr!1482 (Array (_ BitVec 32) ValueCell!717)) (size!1704 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3088)

(assert (=> b!47194 (= res!27461 (and (= (size!1704 _values!1550) (bvadd #b00000000000000000000000000000001 mask!2458)) (= (size!1703 _keys!1940) (size!1704 _values!1550)) (bvsge mask!2458 #b00000000000000000000000000000000) (bvsge extraKeys!1471 #b00000000000000000000000000000000) (bvsle extraKeys!1471 #b00000000000000000000000000000011)))))

(declare-fun b!47195 () Bool)

(declare-fun e!30188 () Bool)

(declare-fun e!30189 () Bool)

(declare-fun mapRes!2051 () Bool)

(assert (=> b!47195 (= e!30188 (and e!30189 mapRes!2051))))

(declare-fun condMapEmpty!2051 () Bool)

(declare-fun mapDefault!2051 () ValueCell!717)

(assert (=> b!47195 (= condMapEmpty!2051 (= (arr!1482 _values!1550) ((as const (Array (_ BitVec 32) ValueCell!717)) mapDefault!2051)))))

(declare-fun b!47197 () Bool)

(assert (=> b!47197 (= e!30190 (bvsgt #b00000000000000000000000000000000 (size!1703 _keys!1940)))))

(declare-fun b!47198 () Bool)

(declare-fun res!27463 () Bool)

(assert (=> b!47198 (=> (not res!27463) (not e!30190))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3086 (_ BitVec 32)) Bool)

(assert (=> b!47198 (= res!27463 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1940 mask!2458))))

(declare-fun mapIsEmpty!2051 () Bool)

(assert (=> mapIsEmpty!2051 mapRes!2051))

(declare-fun mapNonEmpty!2051 () Bool)

(declare-fun tp!6200 () Bool)

(declare-fun e!30191 () Bool)

(assert (=> mapNonEmpty!2051 (= mapRes!2051 (and tp!6200 e!30191))))

(declare-fun mapKey!2051 () (_ BitVec 32))

(declare-fun mapValue!2051 () ValueCell!717)

(declare-fun mapRest!2051 () (Array (_ BitVec 32) ValueCell!717))

(assert (=> mapNonEmpty!2051 (= (arr!1482 _values!1550) (store mapRest!2051 mapKey!2051 mapValue!2051))))

(declare-fun b!47199 () Bool)

(declare-fun tp_is_empty!2013 () Bool)

(assert (=> b!47199 (= e!30191 tp_is_empty!2013)))

(declare-fun res!27462 () Bool)

(assert (=> start!7350 (=> (not res!27462) (not e!30190))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7350 (= res!27462 (validMask!0 mask!2458))))

(assert (=> start!7350 e!30190))

(assert (=> start!7350 true))

(declare-fun array_inv!844 (array!3088) Bool)

(assert (=> start!7350 (and (array_inv!844 _values!1550) e!30188)))

(declare-fun array_inv!845 (array!3086) Bool)

(assert (=> start!7350 (array_inv!845 _keys!1940)))

(declare-fun b!47196 () Bool)

(assert (=> b!47196 (= e!30189 tp_is_empty!2013)))

(assert (= (and start!7350 res!27462) b!47194))

(assert (= (and b!47194 res!27461) b!47198))

(assert (= (and b!47198 res!27463) b!47197))

(assert (= (and b!47195 condMapEmpty!2051) mapIsEmpty!2051))

(assert (= (and b!47195 (not condMapEmpty!2051)) mapNonEmpty!2051))

(get-info :version)

(assert (= (and mapNonEmpty!2051 ((_ is ValueCellFull!717) mapValue!2051)) b!47199))

(assert (= (and b!47195 ((_ is ValueCellFull!717) mapDefault!2051)) b!47196))

(assert (= start!7350 b!47195))

(declare-fun m!41535 () Bool)

(assert (=> b!47198 m!41535))

(declare-fun m!41537 () Bool)

(assert (=> mapNonEmpty!2051 m!41537))

(declare-fun m!41539 () Bool)

(assert (=> start!7350 m!41539))

(declare-fun m!41541 () Bool)

(assert (=> start!7350 m!41541))

(declare-fun m!41543 () Bool)

(assert (=> start!7350 m!41543))

(check-sat (not start!7350) (not b!47198) (not mapNonEmpty!2051) tp_is_empty!2013)
(check-sat)
(get-model)

(declare-fun d!9453 () Bool)

(assert (=> d!9453 (= (validMask!0 mask!2458) (and (or (= mask!2458 #b00000000000000000000000000000111) (= mask!2458 #b00000000000000000000000000001111) (= mask!2458 #b00000000000000000000000000011111) (= mask!2458 #b00000000000000000000000000111111) (= mask!2458 #b00000000000000000000000001111111) (= mask!2458 #b00000000000000000000000011111111) (= mask!2458 #b00000000000000000000000111111111) (= mask!2458 #b00000000000000000000001111111111) (= mask!2458 #b00000000000000000000011111111111) (= mask!2458 #b00000000000000000000111111111111) (= mask!2458 #b00000000000000000001111111111111) (= mask!2458 #b00000000000000000011111111111111) (= mask!2458 #b00000000000000000111111111111111) (= mask!2458 #b00000000000000001111111111111111) (= mask!2458 #b00000000000000011111111111111111) (= mask!2458 #b00000000000000111111111111111111) (= mask!2458 #b00000000000001111111111111111111) (= mask!2458 #b00000000000011111111111111111111) (= mask!2458 #b00000000000111111111111111111111) (= mask!2458 #b00000000001111111111111111111111) (= mask!2458 #b00000000011111111111111111111111) (= mask!2458 #b00000000111111111111111111111111) (= mask!2458 #b00000001111111111111111111111111) (= mask!2458 #b00000011111111111111111111111111) (= mask!2458 #b00000111111111111111111111111111) (= mask!2458 #b00001111111111111111111111111111) (= mask!2458 #b00011111111111111111111111111111) (= mask!2458 #b00111111111111111111111111111111)) (bvsle mask!2458 #b00111111111111111111111111111111)))))

(assert (=> start!7350 d!9453))

(declare-fun d!9455 () Bool)

(assert (=> d!9455 (= (array_inv!844 _values!1550) (bvsge (size!1704 _values!1550) #b00000000000000000000000000000000))))

(assert (=> start!7350 d!9455))

(declare-fun d!9457 () Bool)

(assert (=> d!9457 (= (array_inv!845 _keys!1940) (bvsge (size!1703 _keys!1940) #b00000000000000000000000000000000))))

(assert (=> start!7350 d!9457))

(declare-fun d!9459 () Bool)

(declare-fun res!27478 () Bool)

(declare-fun e!30215 () Bool)

(assert (=> d!9459 (=> res!27478 e!30215)))

(assert (=> d!9459 (= res!27478 (bvsge #b00000000000000000000000000000000 (size!1703 _keys!1940)))))

(assert (=> d!9459 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1940 mask!2458) e!30215)))

(declare-fun b!47226 () Bool)

(declare-fun e!30214 () Bool)

(declare-fun call!3714 () Bool)

(assert (=> b!47226 (= e!30214 call!3714)))

(declare-fun b!47227 () Bool)

(declare-fun e!30213 () Bool)

(assert (=> b!47227 (= e!30213 call!3714)))

(declare-fun b!47228 () Bool)

(assert (=> b!47228 (= e!30213 e!30214)))

(declare-fun lt!20402 () (_ BitVec 64))

(assert (=> b!47228 (= lt!20402 (select (arr!1481 _keys!1940) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!1327 0))(
  ( (Unit!1328) )
))
(declare-fun lt!20401 () Unit!1327)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3086 (_ BitVec 64) (_ BitVec 32)) Unit!1327)

(assert (=> b!47228 (= lt!20401 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1940 lt!20402 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!3086 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!47228 (arrayContainsKey!0 _keys!1940 lt!20402 #b00000000000000000000000000000000)))

(declare-fun lt!20400 () Unit!1327)

(assert (=> b!47228 (= lt!20400 lt!20401)))

(declare-fun res!27477 () Bool)

(declare-datatypes ((SeekEntryResult!216 0))(
  ( (MissingZero!216 (index!2986 (_ BitVec 32))) (Found!216 (index!2987 (_ BitVec 32))) (Intermediate!216 (undefined!1028 Bool) (index!2988 (_ BitVec 32)) (x!8726 (_ BitVec 32))) (Undefined!216) (MissingVacant!216 (index!2989 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!3086 (_ BitVec 32)) SeekEntryResult!216)

(assert (=> b!47228 (= res!27477 (= (seekEntryOrOpen!0 (select (arr!1481 _keys!1940) #b00000000000000000000000000000000) _keys!1940 mask!2458) (Found!216 #b00000000000000000000000000000000)))))

(assert (=> b!47228 (=> (not res!27477) (not e!30214))))

(declare-fun bm!3711 () Bool)

(assert (=> bm!3711 (= call!3714 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1940 mask!2458))))

(declare-fun b!47229 () Bool)

(assert (=> b!47229 (= e!30215 e!30213)))

(declare-fun c!6417 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!47229 (= c!6417 (validKeyInArray!0 (select (arr!1481 _keys!1940) #b00000000000000000000000000000000)))))

(assert (= (and d!9459 (not res!27478)) b!47229))

(assert (= (and b!47229 c!6417) b!47228))

(assert (= (and b!47229 (not c!6417)) b!47227))

(assert (= (and b!47228 res!27477) b!47226))

(assert (= (or b!47226 b!47227) bm!3711))

(declare-fun m!41555 () Bool)

(assert (=> b!47228 m!41555))

(declare-fun m!41557 () Bool)

(assert (=> b!47228 m!41557))

(declare-fun m!41559 () Bool)

(assert (=> b!47228 m!41559))

(assert (=> b!47228 m!41555))

(declare-fun m!41561 () Bool)

(assert (=> b!47228 m!41561))

(declare-fun m!41563 () Bool)

(assert (=> bm!3711 m!41563))

(assert (=> b!47229 m!41555))

(assert (=> b!47229 m!41555))

(declare-fun m!41565 () Bool)

(assert (=> b!47229 m!41565))

(assert (=> b!47198 d!9459))

(declare-fun condMapEmpty!2057 () Bool)

(declare-fun mapDefault!2057 () ValueCell!717)

(assert (=> mapNonEmpty!2051 (= condMapEmpty!2057 (= mapRest!2051 ((as const (Array (_ BitVec 32) ValueCell!717)) mapDefault!2057)))))

(declare-fun e!30221 () Bool)

(declare-fun mapRes!2057 () Bool)

(assert (=> mapNonEmpty!2051 (= tp!6200 (and e!30221 mapRes!2057))))

(declare-fun b!47237 () Bool)

(assert (=> b!47237 (= e!30221 tp_is_empty!2013)))

(declare-fun mapIsEmpty!2057 () Bool)

(assert (=> mapIsEmpty!2057 mapRes!2057))

(declare-fun b!47236 () Bool)

(declare-fun e!30220 () Bool)

(assert (=> b!47236 (= e!30220 tp_is_empty!2013)))

(declare-fun mapNonEmpty!2057 () Bool)

(declare-fun tp!6206 () Bool)

(assert (=> mapNonEmpty!2057 (= mapRes!2057 (and tp!6206 e!30220))))

(declare-fun mapKey!2057 () (_ BitVec 32))

(declare-fun mapRest!2057 () (Array (_ BitVec 32) ValueCell!717))

(declare-fun mapValue!2057 () ValueCell!717)

(assert (=> mapNonEmpty!2057 (= mapRest!2051 (store mapRest!2057 mapKey!2057 mapValue!2057))))

(assert (= (and mapNonEmpty!2051 condMapEmpty!2057) mapIsEmpty!2057))

(assert (= (and mapNonEmpty!2051 (not condMapEmpty!2057)) mapNonEmpty!2057))

(assert (= (and mapNonEmpty!2057 ((_ is ValueCellFull!717) mapValue!2057)) b!47236))

(assert (= (and mapNonEmpty!2051 ((_ is ValueCellFull!717) mapDefault!2057)) b!47237))

(declare-fun m!41567 () Bool)

(assert (=> mapNonEmpty!2057 m!41567))

(check-sat tp_is_empty!2013 (not mapNonEmpty!2057) (not b!47228) (not b!47229) (not bm!3711))
(check-sat)
