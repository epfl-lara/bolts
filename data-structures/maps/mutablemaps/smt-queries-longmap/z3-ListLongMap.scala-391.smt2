; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7378 () Bool)

(assert start!7378)

(declare-fun b!47347 () Bool)

(declare-fun e!30308 () Bool)

(declare-fun tp_is_empty!2025 () Bool)

(assert (=> b!47347 (= e!30308 tp_is_empty!2025)))

(declare-fun b!47348 () Bool)

(declare-fun res!27532 () Bool)

(declare-fun e!30311 () Bool)

(assert (=> b!47348 (=> (not res!27532) (not e!30311))))

(declare-datatypes ((array!3114 0))(
  ( (array!3115 (arr!1493 (Array (_ BitVec 32) (_ BitVec 64))) (size!1715 (_ BitVec 32))) )
))
(declare-fun _keys!1940 () array!3114)

(declare-fun extraKeys!1471 () (_ BitVec 32))

(declare-fun mask!2458 () (_ BitVec 32))

(declare-datatypes ((V!2433 0))(
  ( (V!2434 (val!1051 Int)) )
))
(declare-datatypes ((ValueCell!723 0))(
  ( (ValueCellFull!723 (v!2110 V!2433)) (EmptyCell!723) )
))
(declare-datatypes ((array!3116 0))(
  ( (array!3117 (arr!1494 (Array (_ BitVec 32) ValueCell!723)) (size!1716 (_ BitVec 32))) )
))
(declare-fun _values!1550 () array!3116)

(assert (=> b!47348 (= res!27532 (and (= (size!1716 _values!1550) (bvadd #b00000000000000000000000000000001 mask!2458)) (= (size!1715 _keys!1940) (size!1716 _values!1550)) (bvsge mask!2458 #b00000000000000000000000000000000) (bvsge extraKeys!1471 #b00000000000000000000000000000000) (bvsle extraKeys!1471 #b00000000000000000000000000000011)))))

(declare-fun b!47349 () Bool)

(declare-fun e!30307 () Bool)

(assert (=> b!47349 (= e!30307 tp_is_empty!2025)))

(declare-fun b!47350 () Bool)

(declare-datatypes ((List!1273 0))(
  ( (Nil!1270) (Cons!1269 (h!1849 (_ BitVec 64)) (t!4309 List!1273)) )
))
(declare-fun noDuplicate!34 (List!1273) Bool)

(assert (=> b!47350 (= e!30311 (not (noDuplicate!34 Nil!1270)))))

(declare-fun b!47351 () Bool)

(declare-fun res!27535 () Bool)

(assert (=> b!47351 (=> (not res!27535) (not e!30311))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!3114 (_ BitVec 32)) Bool)

(assert (=> b!47351 (= res!27535 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1940 mask!2458))))

(declare-fun res!27534 () Bool)

(assert (=> start!7378 (=> (not res!27534) (not e!30311))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!7378 (= res!27534 (validMask!0 mask!2458))))

(assert (=> start!7378 e!30311))

(assert (=> start!7378 true))

(declare-fun e!30309 () Bool)

(declare-fun array_inv!852 (array!3116) Bool)

(assert (=> start!7378 (and (array_inv!852 _values!1550) e!30309)))

(declare-fun array_inv!853 (array!3114) Bool)

(assert (=> start!7378 (array_inv!853 _keys!1940)))

(declare-fun mapIsEmpty!2075 () Bool)

(declare-fun mapRes!2075 () Bool)

(assert (=> mapIsEmpty!2075 mapRes!2075))

(declare-fun b!47352 () Bool)

(assert (=> b!47352 (= e!30309 (and e!30308 mapRes!2075))))

(declare-fun condMapEmpty!2075 () Bool)

(declare-fun mapDefault!2075 () ValueCell!723)

(assert (=> b!47352 (= condMapEmpty!2075 (= (arr!1494 _values!1550) ((as const (Array (_ BitVec 32) ValueCell!723)) mapDefault!2075)))))

(declare-fun b!47353 () Bool)

(declare-fun res!27533 () Bool)

(assert (=> b!47353 (=> (not res!27533) (not e!30311))))

(assert (=> b!47353 (= res!27533 (and (bvsle #b00000000000000000000000000000000 (size!1715 _keys!1940)) (bvslt (size!1715 _keys!1940) #b01111111111111111111111111111111)))))

(declare-fun mapNonEmpty!2075 () Bool)

(declare-fun tp!6224 () Bool)

(assert (=> mapNonEmpty!2075 (= mapRes!2075 (and tp!6224 e!30307))))

(declare-fun mapRest!2075 () (Array (_ BitVec 32) ValueCell!723))

(declare-fun mapKey!2075 () (_ BitVec 32))

(declare-fun mapValue!2075 () ValueCell!723)

(assert (=> mapNonEmpty!2075 (= (arr!1494 _values!1550) (store mapRest!2075 mapKey!2075 mapValue!2075))))

(assert (= (and start!7378 res!27534) b!47348))

(assert (= (and b!47348 res!27532) b!47351))

(assert (= (and b!47351 res!27535) b!47353))

(assert (= (and b!47353 res!27533) b!47350))

(assert (= (and b!47352 condMapEmpty!2075) mapIsEmpty!2075))

(assert (= (and b!47352 (not condMapEmpty!2075)) mapNonEmpty!2075))

(get-info :version)

(assert (= (and mapNonEmpty!2075 ((_ is ValueCellFull!723) mapValue!2075)) b!47349))

(assert (= (and b!47352 ((_ is ValueCellFull!723) mapDefault!2075)) b!47347))

(assert (= start!7378 b!47352))

(declare-fun m!41625 () Bool)

(assert (=> b!47350 m!41625))

(declare-fun m!41627 () Bool)

(assert (=> b!47351 m!41627))

(declare-fun m!41629 () Bool)

(assert (=> start!7378 m!41629))

(declare-fun m!41631 () Bool)

(assert (=> start!7378 m!41631))

(declare-fun m!41633 () Bool)

(assert (=> start!7378 m!41633))

(declare-fun m!41635 () Bool)

(assert (=> mapNonEmpty!2075 m!41635))

(check-sat (not mapNonEmpty!2075) tp_is_empty!2025 (not b!47351) (not b!47350) (not start!7378))
(check-sat)
(get-model)

(declare-fun d!9473 () Bool)

(declare-fun res!27552 () Bool)

(declare-fun e!30331 () Bool)

(assert (=> d!9473 (=> res!27552 e!30331)))

(assert (=> d!9473 (= res!27552 ((_ is Nil!1270) Nil!1270))))

(assert (=> d!9473 (= (noDuplicate!34 Nil!1270) e!30331)))

(declare-fun b!47379 () Bool)

(declare-fun e!30332 () Bool)

(assert (=> b!47379 (= e!30331 e!30332)))

(declare-fun res!27553 () Bool)

(assert (=> b!47379 (=> (not res!27553) (not e!30332))))

(declare-fun contains!585 (List!1273 (_ BitVec 64)) Bool)

(assert (=> b!47379 (= res!27553 (not (contains!585 (t!4309 Nil!1270) (h!1849 Nil!1270))))))

(declare-fun b!47380 () Bool)

(assert (=> b!47380 (= e!30332 (noDuplicate!34 (t!4309 Nil!1270)))))

(assert (= (and d!9473 (not res!27552)) b!47379))

(assert (= (and b!47379 res!27553) b!47380))

(declare-fun m!41649 () Bool)

(assert (=> b!47379 m!41649))

(declare-fun m!41651 () Bool)

(assert (=> b!47380 m!41651))

(assert (=> b!47350 d!9473))

(declare-fun b!47389 () Bool)

(declare-fun e!30340 () Bool)

(declare-fun e!30339 () Bool)

(assert (=> b!47389 (= e!30340 e!30339)))

(declare-fun lt!20418 () (_ BitVec 64))

(assert (=> b!47389 (= lt!20418 (select (arr!1493 _keys!1940) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!1331 0))(
  ( (Unit!1332) )
))
(declare-fun lt!20420 () Unit!1331)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!3114 (_ BitVec 64) (_ BitVec 32)) Unit!1331)

(assert (=> b!47389 (= lt!20420 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1940 lt!20418 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!3114 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!47389 (arrayContainsKey!0 _keys!1940 lt!20418 #b00000000000000000000000000000000)))

(declare-fun lt!20419 () Unit!1331)

(assert (=> b!47389 (= lt!20419 lt!20420)))

(declare-fun res!27559 () Bool)

(declare-datatypes ((SeekEntryResult!218 0))(
  ( (MissingZero!218 (index!2994 (_ BitVec 32))) (Found!218 (index!2995 (_ BitVec 32))) (Intermediate!218 (undefined!1030 Bool) (index!2996 (_ BitVec 32)) (x!8748 (_ BitVec 32))) (Undefined!218) (MissingVacant!218 (index!2997 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!3114 (_ BitVec 32)) SeekEntryResult!218)

(assert (=> b!47389 (= res!27559 (= (seekEntryOrOpen!0 (select (arr!1493 _keys!1940) #b00000000000000000000000000000000) _keys!1940 mask!2458) (Found!218 #b00000000000000000000000000000000)))))

(assert (=> b!47389 (=> (not res!27559) (not e!30339))))

(declare-fun b!47390 () Bool)

(declare-fun call!3720 () Bool)

(assert (=> b!47390 (= e!30340 call!3720)))

(declare-fun bm!3717 () Bool)

(assert (=> bm!3717 (= call!3720 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1940 mask!2458))))

(declare-fun b!47391 () Bool)

(declare-fun e!30341 () Bool)

(assert (=> b!47391 (= e!30341 e!30340)))

(declare-fun c!6423 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!47391 (= c!6423 (validKeyInArray!0 (select (arr!1493 _keys!1940) #b00000000000000000000000000000000)))))

(declare-fun b!47392 () Bool)

(assert (=> b!47392 (= e!30339 call!3720)))

(declare-fun d!9475 () Bool)

(declare-fun res!27558 () Bool)

(assert (=> d!9475 (=> res!27558 e!30341)))

(assert (=> d!9475 (= res!27558 (bvsge #b00000000000000000000000000000000 (size!1715 _keys!1940)))))

(assert (=> d!9475 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1940 mask!2458) e!30341)))

(assert (= (and d!9475 (not res!27558)) b!47391))

(assert (= (and b!47391 c!6423) b!47389))

(assert (= (and b!47391 (not c!6423)) b!47390))

(assert (= (and b!47389 res!27559) b!47392))

(assert (= (or b!47392 b!47390) bm!3717))

(declare-fun m!41653 () Bool)

(assert (=> b!47389 m!41653))

(declare-fun m!41655 () Bool)

(assert (=> b!47389 m!41655))

(declare-fun m!41657 () Bool)

(assert (=> b!47389 m!41657))

(assert (=> b!47389 m!41653))

(declare-fun m!41659 () Bool)

(assert (=> b!47389 m!41659))

(declare-fun m!41661 () Bool)

(assert (=> bm!3717 m!41661))

(assert (=> b!47391 m!41653))

(assert (=> b!47391 m!41653))

(declare-fun m!41663 () Bool)

(assert (=> b!47391 m!41663))

(assert (=> b!47351 d!9475))

(declare-fun d!9477 () Bool)

(assert (=> d!9477 (= (validMask!0 mask!2458) (and (or (= mask!2458 #b00000000000000000000000000000111) (= mask!2458 #b00000000000000000000000000001111) (= mask!2458 #b00000000000000000000000000011111) (= mask!2458 #b00000000000000000000000000111111) (= mask!2458 #b00000000000000000000000001111111) (= mask!2458 #b00000000000000000000000011111111) (= mask!2458 #b00000000000000000000000111111111) (= mask!2458 #b00000000000000000000001111111111) (= mask!2458 #b00000000000000000000011111111111) (= mask!2458 #b00000000000000000000111111111111) (= mask!2458 #b00000000000000000001111111111111) (= mask!2458 #b00000000000000000011111111111111) (= mask!2458 #b00000000000000000111111111111111) (= mask!2458 #b00000000000000001111111111111111) (= mask!2458 #b00000000000000011111111111111111) (= mask!2458 #b00000000000000111111111111111111) (= mask!2458 #b00000000000001111111111111111111) (= mask!2458 #b00000000000011111111111111111111) (= mask!2458 #b00000000000111111111111111111111) (= mask!2458 #b00000000001111111111111111111111) (= mask!2458 #b00000000011111111111111111111111) (= mask!2458 #b00000000111111111111111111111111) (= mask!2458 #b00000001111111111111111111111111) (= mask!2458 #b00000011111111111111111111111111) (= mask!2458 #b00000111111111111111111111111111) (= mask!2458 #b00001111111111111111111111111111) (= mask!2458 #b00011111111111111111111111111111) (= mask!2458 #b00111111111111111111111111111111)) (bvsle mask!2458 #b00111111111111111111111111111111)))))

(assert (=> start!7378 d!9477))

(declare-fun d!9479 () Bool)

(assert (=> d!9479 (= (array_inv!852 _values!1550) (bvsge (size!1716 _values!1550) #b00000000000000000000000000000000))))

(assert (=> start!7378 d!9479))

(declare-fun d!9481 () Bool)

(assert (=> d!9481 (= (array_inv!853 _keys!1940) (bvsge (size!1715 _keys!1940) #b00000000000000000000000000000000))))

(assert (=> start!7378 d!9481))

(declare-fun b!47399 () Bool)

(declare-fun e!30347 () Bool)

(assert (=> b!47399 (= e!30347 tp_is_empty!2025)))

(declare-fun mapIsEmpty!2081 () Bool)

(declare-fun mapRes!2081 () Bool)

(assert (=> mapIsEmpty!2081 mapRes!2081))

(declare-fun mapNonEmpty!2081 () Bool)

(declare-fun tp!6230 () Bool)

(assert (=> mapNonEmpty!2081 (= mapRes!2081 (and tp!6230 e!30347))))

(declare-fun mapKey!2081 () (_ BitVec 32))

(declare-fun mapRest!2081 () (Array (_ BitVec 32) ValueCell!723))

(declare-fun mapValue!2081 () ValueCell!723)

(assert (=> mapNonEmpty!2081 (= mapRest!2075 (store mapRest!2081 mapKey!2081 mapValue!2081))))

(declare-fun b!47400 () Bool)

(declare-fun e!30346 () Bool)

(assert (=> b!47400 (= e!30346 tp_is_empty!2025)))

(declare-fun condMapEmpty!2081 () Bool)

(declare-fun mapDefault!2081 () ValueCell!723)

(assert (=> mapNonEmpty!2075 (= condMapEmpty!2081 (= mapRest!2075 ((as const (Array (_ BitVec 32) ValueCell!723)) mapDefault!2081)))))

(assert (=> mapNonEmpty!2075 (= tp!6224 (and e!30346 mapRes!2081))))

(assert (= (and mapNonEmpty!2075 condMapEmpty!2081) mapIsEmpty!2081))

(assert (= (and mapNonEmpty!2075 (not condMapEmpty!2081)) mapNonEmpty!2081))

(assert (= (and mapNonEmpty!2081 ((_ is ValueCellFull!723) mapValue!2081)) b!47399))

(assert (= (and mapNonEmpty!2075 ((_ is ValueCellFull!723) mapDefault!2081)) b!47400))

(declare-fun m!41665 () Bool)

(assert (=> mapNonEmpty!2081 m!41665))

(check-sat (not mapNonEmpty!2081) (not b!47380) (not bm!3717) (not b!47391) tp_is_empty!2025 (not b!47389) (not b!47379))
(check-sat)
