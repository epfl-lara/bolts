; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!46692 () Bool)

(assert start!46692)

(declare-fun b!515209 () Bool)

(declare-fun b_free!13511 () Bool)

(declare-fun b_next!13511 () Bool)

(assert (=> b!515209 (= b_free!13511 (not b_next!13511))))

(declare-fun tp!160771 () Bool)

(declare-fun b_and!50957 () Bool)

(assert (=> b!515209 (= tp!160771 b_and!50957)))

(declare-fun b_free!13513 () Bool)

(declare-fun b_next!13513 () Bool)

(assert (=> start!46692 (= b_free!13513 (not b_next!13513))))

(declare-fun tp!160770 () Bool)

(declare-fun b_and!50959 () Bool)

(assert (=> start!46692 (= tp!160770 b_and!50959)))

(declare-fun b!515213 () Bool)

(declare-fun b_free!13515 () Bool)

(declare-fun b_next!13515 () Bool)

(assert (=> b!515213 (= b_free!13515 (not b_next!13515))))

(declare-fun tp!160775 () Bool)

(declare-fun b_and!50961 () Bool)

(assert (=> b!515213 (= tp!160775 b_and!50961)))

(declare-fun b!515206 () Bool)

(declare-fun e!308174 () Bool)

(declare-fun e!308173 () Bool)

(declare-datatypes ((K!1387 0))(
  ( (K!1388 (val!1773 Int)) )
))
(declare-datatypes ((V!1485 0))(
  ( (V!1486 (val!1774 Int)) )
))
(declare-datatypes ((tuple2!5724 0))(
  ( (tuple2!5725 (_1!3078 K!1387) (_2!3078 V!1485)) )
))
(declare-datatypes ((List!4714 0))(
  ( (Nil!4704) (Cons!4704 (h!10101 tuple2!5724) (t!73256 List!4714)) )
))
(declare-datatypes ((array!1957 0))(
  ( (array!1958 (arr!902 (Array (_ BitVec 32) List!4714)) (size!3836 (_ BitVec 32))) )
))
(declare-datatypes ((array!1959 0))(
  ( (array!1960 (arr!903 (Array (_ BitVec 32) (_ BitVec 64))) (size!3837 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1018 0))(
  ( (LongMapFixedSize!1019 (defaultEntry!860 Int) (mask!1928 (_ BitVec 32)) (extraKeys!755 (_ BitVec 32)) (zeroValue!765 List!4714) (minValue!765 List!4714) (_size!1127 (_ BitVec 32)) (_keys!800 array!1959) (_values!787 array!1957) (_vacant!570 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1977 0))(
  ( (Cell!1978 (v!15735 LongMapFixedSize!1018)) )
))
(declare-datatypes ((MutLongMap!509 0))(
  ( (LongMap!509 (underlying!1197 Cell!1977)) (MutLongMapExt!508 (__x!3418 Int)) )
))
(declare-fun lt!213631 () MutLongMap!509)

(get-info :version)

(assert (=> b!515206 (= e!308174 (and e!308173 ((_ is LongMap!509) lt!213631)))))

(declare-datatypes ((Hashable!481 0))(
  ( (HashableExt!480 (__x!3419 Int)) )
))
(declare-datatypes ((Cell!1979 0))(
  ( (Cell!1980 (v!15736 MutLongMap!509)) )
))
(declare-datatypes ((MutableMap!481 0))(
  ( (MutableMapExt!480 (__x!3420 Int)) (HashMap!481 (underlying!1198 Cell!1979) (hashF!2357 Hashable!481) (_size!1128 (_ BitVec 32)) (defaultValue!630 Int)) )
))
(declare-fun hm!65 () MutableMap!481)

(assert (=> b!515206 (= lt!213631 (v!15736 (underlying!1198 hm!65)))))

(declare-fun b!515207 () Bool)

(declare-fun e!308171 () Bool)

(declare-fun e!308169 () Bool)

(assert (=> b!515207 (= e!308171 e!308169)))

(declare-fun res!218481 () Bool)

(assert (=> b!515207 (=> (not res!218481) (not e!308169))))

(declare-datatypes ((tuple2!5726 0))(
  ( (tuple2!5727 (_1!3079 Bool) (_2!3079 MutableMap!481)) )
))
(declare-fun lt!213630 () tuple2!5726)

(declare-fun valid!467 (MutableMap!481) Bool)

(assert (=> b!515207 (= res!218481 (valid!467 (_2!3079 lt!213630)))))

(declare-fun k0!1740 () K!1387)

(declare-fun remove!29 (MutableMap!481 K!1387) tuple2!5726)

(assert (=> b!515207 (= lt!213630 (remove!29 hm!65 k0!1740))))

(declare-datatypes ((ListMap!169 0))(
  ( (ListMap!170 (toList!403 List!4714)) )
))
(declare-fun lt!213633 () ListMap!169)

(declare-fun lt!213632 () ListMap!169)

(declare-fun -!26 (ListMap!169 K!1387) ListMap!169)

(assert (=> b!515207 (= lt!213633 (-!26 lt!213632 k0!1740))))

(declare-fun res!218482 () Bool)

(declare-fun e!308170 () Bool)

(assert (=> start!46692 (=> (not res!218482) (not e!308170))))

(assert (=> start!46692 (= res!218482 ((_ is HashMap!481) hm!65))))

(assert (=> start!46692 e!308170))

(declare-fun e!308178 () Bool)

(assert (=> start!46692 e!308178))

(assert (=> start!46692 tp!160770))

(declare-fun tp_is_empty!2593 () Bool)

(assert (=> start!46692 tp_is_empty!2593))

(declare-fun mapIsEmpty!1960 () Bool)

(declare-fun mapRes!1960 () Bool)

(assert (=> mapIsEmpty!1960 mapRes!1960))

(declare-fun mapNonEmpty!1960 () Bool)

(declare-fun tp!160774 () Bool)

(declare-fun tp!160777 () Bool)

(assert (=> mapNonEmpty!1960 (= mapRes!1960 (and tp!160774 tp!160777))))

(declare-fun mapRest!1960 () (Array (_ BitVec 32) List!4714))

(declare-fun mapKey!1960 () (_ BitVec 32))

(declare-fun mapValue!1960 () List!4714)

(assert (=> mapNonEmpty!1960 (= (arr!902 (_values!787 (v!15735 (underlying!1197 (v!15736 (underlying!1198 hm!65)))))) (store mapRest!1960 mapKey!1960 mapValue!1960))))

(declare-fun b!515208 () Bool)

(declare-fun e!308177 () Bool)

(declare-fun e!308176 () Bool)

(assert (=> b!515208 (= e!308177 e!308176)))

(declare-fun tp!160772 () Bool)

(declare-fun tp!160776 () Bool)

(declare-fun e!308172 () Bool)

(declare-fun array_inv!659 (array!1959) Bool)

(declare-fun array_inv!660 (array!1957) Bool)

(assert (=> b!515209 (= e!308176 (and tp!160771 tp!160776 tp!160772 (array_inv!659 (_keys!800 (v!15735 (underlying!1197 (v!15736 (underlying!1198 hm!65)))))) (array_inv!660 (_values!787 (v!15735 (underlying!1197 (v!15736 (underlying!1198 hm!65)))))) e!308172))))

(declare-fun b!515210 () Bool)

(declare-fun invariantList!63 (List!4714) Bool)

(declare-fun map!1016 (MutableMap!481) ListMap!169)

(assert (=> b!515210 (= e!308169 (not (invariantList!63 (toList!403 (map!1016 (_2!3079 lt!213630))))))))

(declare-fun b!515211 () Bool)

(assert (=> b!515211 (= e!308170 e!308171)))

(declare-fun res!218480 () Bool)

(assert (=> b!515211 (=> (not res!218480) (not e!308171))))

(declare-fun p!6060 () Int)

(declare-fun forall!1386 (List!4714 Int) Bool)

(assert (=> b!515211 (= res!218480 (forall!1386 (toList!403 lt!213632) p!6060))))

(assert (=> b!515211 (= lt!213632 (map!1016 hm!65))))

(declare-fun b!515212 () Bool)

(declare-fun tp!160773 () Bool)

(assert (=> b!515212 (= e!308172 (and tp!160773 mapRes!1960))))

(declare-fun condMapEmpty!1960 () Bool)

(declare-fun mapDefault!1960 () List!4714)

(assert (=> b!515212 (= condMapEmpty!1960 (= (arr!902 (_values!787 (v!15735 (underlying!1197 (v!15736 (underlying!1198 hm!65)))))) ((as const (Array (_ BitVec 32) List!4714)) mapDefault!1960)))))

(assert (=> b!515213 (= e!308178 (and e!308174 tp!160775))))

(declare-fun b!515214 () Bool)

(assert (=> b!515214 (= e!308173 e!308177)))

(declare-fun b!515215 () Bool)

(declare-fun res!218479 () Bool)

(assert (=> b!515215 (=> (not res!218479) (not e!308170))))

(assert (=> b!515215 (= res!218479 (valid!467 hm!65))))

(assert (= (and start!46692 res!218482) b!515215))

(assert (= (and b!515215 res!218479) b!515211))

(assert (= (and b!515211 res!218480) b!515207))

(assert (= (and b!515207 res!218481) b!515210))

(assert (= (and b!515212 condMapEmpty!1960) mapIsEmpty!1960))

(assert (= (and b!515212 (not condMapEmpty!1960)) mapNonEmpty!1960))

(assert (= b!515209 b!515212))

(assert (= b!515208 b!515209))

(assert (= b!515214 b!515208))

(assert (= (and b!515206 ((_ is LongMap!509) (v!15736 (underlying!1198 hm!65)))) b!515214))

(assert (= b!515213 b!515206))

(assert (= (and start!46692 ((_ is HashMap!481) hm!65)) b!515213))

(declare-fun m!761255 () Bool)

(assert (=> mapNonEmpty!1960 m!761255))

(declare-fun m!761257 () Bool)

(assert (=> b!515207 m!761257))

(declare-fun m!761259 () Bool)

(assert (=> b!515207 m!761259))

(declare-fun m!761261 () Bool)

(assert (=> b!515207 m!761261))

(declare-fun m!761263 () Bool)

(assert (=> b!515215 m!761263))

(declare-fun m!761265 () Bool)

(assert (=> b!515209 m!761265))

(declare-fun m!761267 () Bool)

(assert (=> b!515209 m!761267))

(declare-fun m!761269 () Bool)

(assert (=> b!515211 m!761269))

(declare-fun m!761271 () Bool)

(assert (=> b!515211 m!761271))

(declare-fun m!761273 () Bool)

(assert (=> b!515210 m!761273))

(declare-fun m!761275 () Bool)

(assert (=> b!515210 m!761275))

(check-sat (not b!515212) (not b_next!13513) (not b!515211) (not b!515210) (not b!515207) tp_is_empty!2593 (not b_next!13515) b_and!50959 b_and!50957 (not mapNonEmpty!1960) b_and!50961 (not b_next!13511) (not b!515215) (not b!515209))
(check-sat b_and!50957 (not b_next!13513) (not b_next!13515) b_and!50959 b_and!50961 (not b_next!13511))
(get-model)

(declare-fun d!184401 () Bool)

(declare-fun res!218487 () Bool)

(declare-fun e!308181 () Bool)

(assert (=> d!184401 (=> (not res!218487) (not e!308181))))

(declare-fun valid!468 (MutLongMap!509) Bool)

(assert (=> d!184401 (= res!218487 (valid!468 (v!15736 (underlying!1198 hm!65))))))

(assert (=> d!184401 (= (valid!467 hm!65) e!308181)))

(declare-fun b!515220 () Bool)

(declare-fun res!218488 () Bool)

(assert (=> b!515220 (=> (not res!218488) (not e!308181))))

(declare-fun lambda!14364 () Int)

(declare-datatypes ((tuple2!5728 0))(
  ( (tuple2!5729 (_1!3080 (_ BitVec 64)) (_2!3080 List!4714)) )
))
(declare-datatypes ((List!4715 0))(
  ( (Nil!4705) (Cons!4705 (h!10102 tuple2!5728) (t!73259 List!4715)) )
))
(declare-fun forall!1387 (List!4715 Int) Bool)

(declare-datatypes ((ListLongMap!69 0))(
  ( (ListLongMap!70 (toList!404 List!4715)) )
))
(declare-fun map!1017 (MutLongMap!509) ListLongMap!69)

(assert (=> b!515220 (= res!218488 (forall!1387 (toList!404 (map!1017 (v!15736 (underlying!1198 hm!65)))) lambda!14364))))

(declare-fun b!515221 () Bool)

(declare-fun allKeysSameHashInMap!23 (ListLongMap!69 Hashable!481) Bool)

(assert (=> b!515221 (= e!308181 (allKeysSameHashInMap!23 (map!1017 (v!15736 (underlying!1198 hm!65))) (hashF!2357 hm!65)))))

(assert (= (and d!184401 res!218487) b!515220))

(assert (= (and b!515220 res!218488) b!515221))

(declare-fun m!761277 () Bool)

(assert (=> d!184401 m!761277))

(declare-fun m!761279 () Bool)

(assert (=> b!515220 m!761279))

(declare-fun m!761281 () Bool)

(assert (=> b!515220 m!761281))

(assert (=> b!515221 m!761279))

(assert (=> b!515221 m!761279))

(declare-fun m!761283 () Bool)

(assert (=> b!515221 m!761283))

(assert (=> b!515215 d!184401))

(declare-fun d!184403 () Bool)

(declare-fun noDuplicatedKeys!11 (List!4714) Bool)

(assert (=> d!184403 (= (invariantList!63 (toList!403 (map!1016 (_2!3079 lt!213630)))) (noDuplicatedKeys!11 (toList!403 (map!1016 (_2!3079 lt!213630)))))))

(declare-fun bs!59465 () Bool)

(assert (= bs!59465 d!184403))

(declare-fun m!761285 () Bool)

(assert (=> bs!59465 m!761285))

(assert (=> b!515210 d!184403))

(declare-fun d!184405 () Bool)

(declare-fun lt!213636 () ListMap!169)

(assert (=> d!184405 (invariantList!63 (toList!403 lt!213636))))

(declare-fun extractMap!16 (List!4715) ListMap!169)

(assert (=> d!184405 (= lt!213636 (extractMap!16 (toList!404 (map!1017 (v!15736 (underlying!1198 (_2!3079 lt!213630)))))))))

(assert (=> d!184405 (valid!467 (_2!3079 lt!213630))))

(assert (=> d!184405 (= (map!1016 (_2!3079 lt!213630)) lt!213636)))

(declare-fun bs!59466 () Bool)

(assert (= bs!59466 d!184405))

(declare-fun m!761287 () Bool)

(assert (=> bs!59466 m!761287))

(declare-fun m!761289 () Bool)

(assert (=> bs!59466 m!761289))

(declare-fun m!761291 () Bool)

(assert (=> bs!59466 m!761291))

(assert (=> bs!59466 m!761257))

(assert (=> b!515210 d!184405))

(declare-fun d!184407 () Bool)

(assert (=> d!184407 (= (array_inv!659 (_keys!800 (v!15735 (underlying!1197 (v!15736 (underlying!1198 hm!65)))))) (bvsge (size!3837 (_keys!800 (v!15735 (underlying!1197 (v!15736 (underlying!1198 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!515209 d!184407))

(declare-fun d!184409 () Bool)

(assert (=> d!184409 (= (array_inv!660 (_values!787 (v!15735 (underlying!1197 (v!15736 (underlying!1198 hm!65)))))) (bvsge (size!3836 (_values!787 (v!15735 (underlying!1197 (v!15736 (underlying!1198 hm!65)))))) #b00000000000000000000000000000000))))

(assert (=> b!515209 d!184409))

(declare-fun d!184411 () Bool)

(declare-fun res!218493 () Bool)

(declare-fun e!308186 () Bool)

(assert (=> d!184411 (=> res!218493 e!308186)))

(assert (=> d!184411 (= res!218493 ((_ is Nil!4704) (toList!403 lt!213632)))))

(assert (=> d!184411 (= (forall!1386 (toList!403 lt!213632) p!6060) e!308186)))

(declare-fun b!515226 () Bool)

(declare-fun e!308187 () Bool)

(assert (=> b!515226 (= e!308186 e!308187)))

(declare-fun res!218494 () Bool)

(assert (=> b!515226 (=> (not res!218494) (not e!308187))))

(declare-fun dynLambda!2971 (Int tuple2!5724) Bool)

(assert (=> b!515226 (= res!218494 (dynLambda!2971 p!6060 (h!10101 (toList!403 lt!213632))))))

(declare-fun b!515227 () Bool)

(assert (=> b!515227 (= e!308187 (forall!1386 (t!73256 (toList!403 lt!213632)) p!6060))))

(assert (= (and d!184411 (not res!218493)) b!515226))

(assert (= (and b!515226 res!218494) b!515227))

(declare-fun b_lambda!20005 () Bool)

(assert (=> (not b_lambda!20005) (not b!515226)))

(declare-fun t!73258 () Bool)

(declare-fun tb!47141 () Bool)

(assert (=> (and start!46692 (= p!6060 p!6060) t!73258) tb!47141))

(declare-fun result!52176 () Bool)

(assert (=> tb!47141 (= result!52176 true)))

(assert (=> b!515226 t!73258))

(declare-fun b_and!50963 () Bool)

(assert (= b_and!50959 (and (=> t!73258 result!52176) b_and!50963)))

(declare-fun m!761293 () Bool)

(assert (=> b!515226 m!761293))

(declare-fun m!761295 () Bool)

(assert (=> b!515227 m!761295))

(assert (=> b!515211 d!184411))

(declare-fun d!184413 () Bool)

(declare-fun lt!213637 () ListMap!169)

(assert (=> d!184413 (invariantList!63 (toList!403 lt!213637))))

(assert (=> d!184413 (= lt!213637 (extractMap!16 (toList!404 (map!1017 (v!15736 (underlying!1198 hm!65))))))))

(assert (=> d!184413 (valid!467 hm!65)))

(assert (=> d!184413 (= (map!1016 hm!65) lt!213637)))

(declare-fun bs!59467 () Bool)

(assert (= bs!59467 d!184413))

(declare-fun m!761297 () Bool)

(assert (=> bs!59467 m!761297))

(assert (=> bs!59467 m!761279))

(declare-fun m!761299 () Bool)

(assert (=> bs!59467 m!761299))

(assert (=> bs!59467 m!761263))

(assert (=> b!515211 d!184413))

(declare-fun bs!59468 () Bool)

(declare-fun b!515228 () Bool)

(assert (= bs!59468 (and b!515228 b!515220)))

(declare-fun lambda!14365 () Int)

(assert (=> bs!59468 (= lambda!14365 lambda!14364)))

(declare-fun d!184415 () Bool)

(declare-fun res!218495 () Bool)

(declare-fun e!308188 () Bool)

(assert (=> d!184415 (=> (not res!218495) (not e!308188))))

(assert (=> d!184415 (= res!218495 (valid!468 (v!15736 (underlying!1198 (_2!3079 lt!213630)))))))

(assert (=> d!184415 (= (valid!467 (_2!3079 lt!213630)) e!308188)))

(declare-fun res!218496 () Bool)

(assert (=> b!515228 (=> (not res!218496) (not e!308188))))

(assert (=> b!515228 (= res!218496 (forall!1387 (toList!404 (map!1017 (v!15736 (underlying!1198 (_2!3079 lt!213630))))) lambda!14365))))

(declare-fun b!515229 () Bool)

(assert (=> b!515229 (= e!308188 (allKeysSameHashInMap!23 (map!1017 (v!15736 (underlying!1198 (_2!3079 lt!213630)))) (hashF!2357 (_2!3079 lt!213630))))))

(assert (= (and d!184415 res!218495) b!515228))

(assert (= (and b!515228 res!218496) b!515229))

(declare-fun m!761301 () Bool)

(assert (=> d!184415 m!761301))

(assert (=> b!515228 m!761289))

(declare-fun m!761303 () Bool)

(assert (=> b!515228 m!761303))

(assert (=> b!515229 m!761289))

(assert (=> b!515229 m!761289))

(declare-fun m!761305 () Bool)

(assert (=> b!515229 m!761305))

(assert (=> b!515207 d!184415))

(declare-fun bs!59469 () Bool)

(declare-fun b!515259 () Bool)

(assert (= bs!59469 (and b!515259 b!515220)))

(declare-fun lambda!14372 () Int)

(assert (=> bs!59469 (= lambda!14372 lambda!14364)))

(declare-fun bs!59470 () Bool)

(assert (= bs!59470 (and b!515259 b!515228)))

(assert (=> bs!59470 (= lambda!14372 lambda!14365)))

(declare-fun b!515252 () Bool)

(declare-fun e!308204 () tuple2!5726)

(assert (=> b!515252 (= e!308204 (tuple2!5727 true hm!65))))

(declare-fun lt!213722 () ListLongMap!69)

(declare-fun call!37524 () ListLongMap!69)

(assert (=> b!515252 (= lt!213722 call!37524)))

(declare-datatypes ((Unit!8508 0))(
  ( (Unit!8509) )
))
(declare-fun lt!213712 () Unit!8508)

(declare-fun lemmaRemoveNotContainedDoesNotChange!8 (ListLongMap!69 K!1387 Hashable!481) Unit!8508)

(assert (=> b!515252 (= lt!213712 (lemmaRemoveNotContainedDoesNotChange!8 lt!213722 k0!1740 (hashF!2357 hm!65)))))

(declare-fun call!37522 () ListMap!169)

(declare-fun call!37521 () ListMap!169)

(assert (=> b!515252 (= call!37522 call!37521)))

(declare-fun lt!213706 () Unit!8508)

(assert (=> b!515252 (= lt!213706 lt!213712)))

(declare-fun b!515253 () Bool)

(declare-fun e!308203 () Bool)

(declare-fun call!37528 () Bool)

(assert (=> b!515253 (= e!308203 call!37528)))

(declare-fun bm!37516 () Bool)

(assert (=> bm!37516 (= call!37524 (map!1017 (v!15736 (underlying!1198 hm!65))))))

(declare-fun b!515254 () Bool)

(declare-fun res!218503 () Bool)

(declare-fun e!308205 () Bool)

(assert (=> b!515254 (=> (not res!218503) (not e!308205))))

(declare-fun lt!213720 () tuple2!5726)

(assert (=> b!515254 (= res!218503 (valid!467 (_2!3079 lt!213720)))))

(declare-fun bm!37517 () Bool)

(declare-fun call!37527 () Bool)

(declare-datatypes ((tuple2!5730 0))(
  ( (tuple2!5731 (_1!3081 Unit!8508) (_2!3081 MutableMap!481)) )
))
(declare-fun lt!213713 () tuple2!5730)

(assert (=> bm!37517 (= call!37527 (valid!467 (_2!3081 lt!213713)))))

(declare-fun bm!37518 () Bool)

(declare-fun call!37525 () ListMap!169)

(assert (=> bm!37518 (= call!37525 (map!1016 (_2!3081 lt!213713)))))

(declare-fun bm!37519 () Bool)

(declare-fun call!37526 () ListMap!169)

(assert (=> bm!37519 (= call!37526 (map!1016 (_2!3079 lt!213720)))))

(declare-fun b!515256 () Bool)

(declare-fun lt!213716 () ListMap!169)

(assert (=> b!515256 (= call!37525 lt!213716)))

(declare-fun lt!213698 () Unit!8508)

(declare-fun Unit!8510 () Unit!8508)

(assert (=> b!515256 (= lt!213698 Unit!8510)))

(assert (=> b!515256 call!37527))

(declare-fun e!308202 () Unit!8508)

(declare-fun Unit!8511 () Unit!8508)

(assert (=> b!515256 (= e!308202 Unit!8511)))

(declare-fun b!515257 () Bool)

(declare-fun eq!22 (ListMap!169 ListMap!169) Bool)

(assert (=> b!515257 (eq!22 call!37525 call!37521)))

(declare-fun lt!213726 () Unit!8508)

(declare-fun lt!213707 () Unit!8508)

(assert (=> b!515257 (= lt!213726 lt!213707)))

(declare-fun lt!213724 () ListLongMap!69)

(declare-fun lt!213711 () (_ BitVec 64))

(declare-fun lt!213710 () List!4714)

(declare-fun +!19 (ListLongMap!69 tuple2!5728) ListLongMap!69)

(assert (=> b!515257 (eq!22 (extractMap!16 (toList!404 (+!19 lt!213724 (tuple2!5729 lt!213711 lt!213710)))) (-!26 call!37522 k0!1740))))

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!8 (ListLongMap!69 (_ BitVec 64) List!4714 K!1387 Hashable!481) Unit!8508)

(assert (=> b!515257 (= lt!213707 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!8 lt!213724 lt!213711 lt!213710 k0!1740 (hashF!2357 (_2!3081 lt!213713))))))

(declare-fun lt!213703 () Unit!8508)

(declare-fun Unit!8512 () Unit!8508)

(assert (=> b!515257 (= lt!213703 Unit!8512)))

(declare-fun contains!1071 (ListMap!169 K!1387) Bool)

(assert (=> b!515257 (contains!1071 lt!213716 k0!1740)))

(declare-fun lt!213718 () Unit!8508)

(declare-fun Unit!8513 () Unit!8508)

(assert (=> b!515257 (= lt!213718 Unit!8513)))

(assert (=> b!515257 call!37527))

(declare-fun lt!213704 () Unit!8508)

(declare-fun Unit!8514 () Unit!8508)

(assert (=> b!515257 (= lt!213704 Unit!8514)))

(assert (=> b!515257 (allKeysSameHashInMap!23 (map!1017 (v!15736 (underlying!1198 (_2!3081 lt!213713)))) (hashF!2357 (_2!3081 lt!213713)))))

(declare-fun lt!213700 () Unit!8508)

(declare-fun Unit!8515 () Unit!8508)

(assert (=> b!515257 (= lt!213700 Unit!8515)))

(assert (=> b!515257 (forall!1387 (toList!404 (map!1017 (v!15736 (underlying!1198 (_2!3081 lt!213713))))) lambda!14372)))

(declare-fun lt!213702 () Unit!8508)

(declare-fun lt!213723 () Unit!8508)

(assert (=> b!515257 (= lt!213702 lt!213723)))

(declare-fun e!308206 () Bool)

(assert (=> b!515257 e!308206))

(declare-fun res!218505 () Bool)

(assert (=> b!515257 (=> (not res!218505) (not e!308206))))

(declare-fun lt!213715 () ListLongMap!69)

(assert (=> b!515257 (= res!218505 (forall!1387 (toList!404 lt!213715) lambda!14372))))

(assert (=> b!515257 (= lt!213715 (+!19 lt!213724 (tuple2!5729 lt!213711 lt!213710)))))

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!10 (ListLongMap!69 (_ BitVec 64) List!4714 Hashable!481) Unit!8508)

(assert (=> b!515257 (= lt!213723 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!10 lt!213724 lt!213711 lt!213710 (hashF!2357 (_2!3081 lt!213713))))))

(declare-fun lt!213721 () Unit!8508)

(declare-fun lt!213708 () Unit!8508)

(assert (=> b!515257 (= lt!213721 lt!213708)))

(declare-fun lt!213727 () List!4714)

(declare-fun allKeysSameHash!11 (List!4714 (_ BitVec 64) Hashable!481) Bool)

(declare-fun removePairForKey!10 (List!4714 K!1387) List!4714)

(assert (=> b!515257 (allKeysSameHash!11 (removePairForKey!10 lt!213727 k0!1740) lt!213711 (hashF!2357 (_2!3081 lt!213713)))))

(declare-fun lemmaRemovePairForKeyPreservesHash!10 (List!4714 K!1387 (_ BitVec 64) Hashable!481) Unit!8508)

(assert (=> b!515257 (= lt!213708 (lemmaRemovePairForKeyPreservesHash!10 lt!213727 k0!1740 lt!213711 (hashF!2357 (_2!3081 lt!213713))))))

(declare-fun lt!213725 () Unit!8508)

(declare-fun lt!213719 () Unit!8508)

(assert (=> b!515257 (= lt!213725 lt!213719)))

(assert (=> b!515257 (allKeysSameHash!11 lt!213727 lt!213711 (hashF!2357 (_2!3081 lt!213713)))))

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!10 (List!4715 (_ BitVec 64) List!4714 Hashable!481) Unit!8508)

(assert (=> b!515257 (= lt!213719 (lemmaInLongMapAllKeySameHashThenForTuple!10 (toList!404 lt!213724) lt!213711 lt!213727 (hashF!2357 (_2!3081 lt!213713))))))

(declare-fun Unit!8516 () Unit!8508)

(assert (=> b!515257 (= e!308202 Unit!8516)))

(declare-fun c!99860 () Bool)

(declare-fun bm!37520 () Bool)

(assert (=> bm!37520 (= call!37522 (extractMap!16 (ite c!99860 (toList!404 lt!213722) (toList!404 lt!213724))))))

(declare-fun bm!37521 () Bool)

(declare-fun call!37523 () ListMap!169)

(assert (=> bm!37521 (= call!37523 (map!1016 hm!65))))

(declare-fun b!515258 () Bool)

(assert (=> b!515258 (= e!308203 call!37528)))

(declare-datatypes ((tuple2!5732 0))(
  ( (tuple2!5733 (_1!3082 Bool) (_2!3082 MutLongMap!509)) )
))
(declare-fun lt!213699 () tuple2!5732)

(assert (=> b!515259 (= e!308204 (tuple2!5727 (_1!3082 lt!213699) (_2!3081 lt!213713)))))

(declare-fun hash!509 (Hashable!481 K!1387) (_ BitVec 64))

(assert (=> b!515259 (= lt!213711 (hash!509 (hashF!2357 hm!65) k0!1740))))

(declare-fun apply!1178 (MutLongMap!509 (_ BitVec 64)) List!4714)

(assert (=> b!515259 (= lt!213727 (apply!1178 (v!15736 (underlying!1198 hm!65)) lt!213711))))

(declare-fun lt!213701 () Unit!8508)

(declare-fun forallContained!441 (List!4715 Int tuple2!5728) Unit!8508)

(assert (=> b!515259 (= lt!213701 (forallContained!441 (toList!404 call!37524) lambda!14372 (tuple2!5729 lt!213711 (apply!1178 (v!15736 (underlying!1198 hm!65)) lt!213711))))))

(assert (=> b!515259 (= lt!213716 (map!1016 hm!65))))

(assert (=> b!515259 (= lt!213724 call!37524)))

(assert (=> b!515259 (= lt!213710 (removePairForKey!10 lt!213727 k0!1740))))

(declare-fun update!49 (MutLongMap!509 (_ BitVec 64) List!4714) tuple2!5732)

(assert (=> b!515259 (= lt!213699 (update!49 (v!15736 (underlying!1198 hm!65)) lt!213711 lt!213710))))

(declare-fun lt!213709 () Bool)

(declare-fun Unit!8517 () Unit!8508)

(declare-fun Unit!8518 () Unit!8508)

(assert (=> b!515259 (= lt!213713 (ite (and (_1!3082 lt!213699) lt!213709) (tuple2!5731 Unit!8517 (HashMap!481 (Cell!1980 (_2!3082 lt!213699)) (hashF!2357 hm!65) (bvsub (_size!1128 hm!65) #b00000000000000000000000000000001) (defaultValue!630 hm!65))) (tuple2!5731 Unit!8518 (HashMap!481 (Cell!1980 (_2!3082 lt!213699)) (hashF!2357 hm!65) (_size!1128 hm!65) (defaultValue!630 hm!65)))))))

(declare-fun lt!213717 () Unit!8508)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!10 (List!4714 K!1387) Unit!8508)

(assert (=> b!515259 (= lt!213717 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!10 lt!213727 k0!1740))))

(declare-fun noDuplicateKeys!12 (List!4714) Bool)

(assert (=> b!515259 (noDuplicateKeys!12 (removePairForKey!10 lt!213727 k0!1740))))

(declare-fun lt!213714 () Unit!8508)

(assert (=> b!515259 (= lt!213714 lt!213717)))

(declare-fun c!99861 () Bool)

(assert (=> b!515259 (= c!99861 (_1!3082 lt!213699))))

(declare-fun lt!213705 () Unit!8508)

(assert (=> b!515259 (= lt!213705 e!308202)))

(declare-fun bm!37522 () Bool)

(assert (=> bm!37522 (= call!37521 (-!26 (ite c!99860 call!37522 lt!213716) k0!1740))))

(declare-fun bm!37523 () Bool)

(declare-fun e!308201 () ListMap!169)

(assert (=> bm!37523 (= call!37528 (eq!22 call!37526 e!308201))))

(declare-fun c!99859 () Bool)

(declare-fun c!99858 () Bool)

(assert (=> bm!37523 (= c!99859 c!99858)))

(declare-fun b!515260 () Bool)

(assert (=> b!515260 (= e!308205 e!308203)))

(assert (=> b!515260 (= c!99858 (_1!3079 lt!213720))))

(declare-fun b!515255 () Bool)

(assert (=> b!515255 (= e!308201 call!37523)))

(declare-fun d!184417 () Bool)

(assert (=> d!184417 e!308205))

(declare-fun res!218504 () Bool)

(assert (=> d!184417 (=> (not res!218504) (not e!308205))))

(assert (=> d!184417 (= res!218504 ((_ is HashMap!481) (_2!3079 lt!213720)))))

(assert (=> d!184417 (= lt!213720 e!308204)))

(assert (=> d!184417 (= c!99860 (not lt!213709))))

(declare-fun contains!1072 (MutableMap!481 K!1387) Bool)

(assert (=> d!184417 (= lt!213709 (contains!1072 hm!65 k0!1740))))

(assert (=> d!184417 (valid!467 hm!65)))

(assert (=> d!184417 (= (remove!29 hm!65 k0!1740) lt!213720)))

(declare-fun b!515261 () Bool)

(assert (=> b!515261 (= e!308206 (allKeysSameHashInMap!23 lt!213715 (hashF!2357 (_2!3081 lt!213713))))))

(declare-fun b!515262 () Bool)

(assert (=> b!515262 (= e!308201 (-!26 call!37523 k0!1740))))

(assert (= (and d!184417 c!99860) b!515252))

(assert (= (and d!184417 (not c!99860)) b!515259))

(assert (= (and b!515259 c!99861) b!515257))

(assert (= (and b!515259 (not c!99861)) b!515256))

(assert (= (and b!515257 res!218505) b!515261))

(assert (= (or b!515257 b!515256) bm!37517))

(assert (= (or b!515257 b!515256) bm!37518))

(assert (= (or b!515252 b!515259) bm!37516))

(assert (= (or b!515252 b!515257) bm!37520))

(assert (= (or b!515252 b!515257) bm!37522))

(assert (= (and d!184417 res!218504) b!515254))

(assert (= (and b!515254 res!218503) b!515260))

(assert (= (and b!515260 c!99858) b!515253))

(assert (= (and b!515260 (not c!99858)) b!515258))

(assert (= (or b!515253 b!515258) bm!37519))

(assert (= (or b!515253 b!515258) bm!37521))

(assert (= (or b!515253 b!515258) bm!37523))

(assert (= (and bm!37523 c!99859) b!515262))

(assert (= (and bm!37523 (not c!99859)) b!515255))

(assert (=> bm!37521 m!761271))

(declare-fun m!761307 () Bool)

(assert (=> bm!37523 m!761307))

(declare-fun m!761309 () Bool)

(assert (=> bm!37517 m!761309))

(declare-fun m!761311 () Bool)

(assert (=> d!184417 m!761311))

(assert (=> d!184417 m!761263))

(declare-fun m!761313 () Bool)

(assert (=> b!515257 m!761313))

(declare-fun m!761315 () Bool)

(assert (=> b!515257 m!761315))

(declare-fun m!761317 () Bool)

(assert (=> b!515257 m!761317))

(declare-fun m!761319 () Bool)

(assert (=> b!515257 m!761319))

(declare-fun m!761321 () Bool)

(assert (=> b!515257 m!761321))

(declare-fun m!761323 () Bool)

(assert (=> b!515257 m!761323))

(assert (=> b!515257 m!761317))

(declare-fun m!761325 () Bool)

(assert (=> b!515257 m!761325))

(declare-fun m!761327 () Bool)

(assert (=> b!515257 m!761327))

(declare-fun m!761329 () Bool)

(assert (=> b!515257 m!761329))

(declare-fun m!761331 () Bool)

(assert (=> b!515257 m!761331))

(assert (=> b!515257 m!761331))

(declare-fun m!761333 () Bool)

(assert (=> b!515257 m!761333))

(assert (=> b!515257 m!761315))

(declare-fun m!761335 () Bool)

(assert (=> b!515257 m!761335))

(declare-fun m!761337 () Bool)

(assert (=> b!515257 m!761337))

(declare-fun m!761339 () Bool)

(assert (=> b!515257 m!761339))

(declare-fun m!761341 () Bool)

(assert (=> b!515257 m!761341))

(assert (=> b!515257 m!761319))

(declare-fun m!761343 () Bool)

(assert (=> b!515257 m!761343))

(declare-fun m!761345 () Bool)

(assert (=> b!515257 m!761345))

(declare-fun m!761347 () Bool)

(assert (=> b!515261 m!761347))

(declare-fun m!761349 () Bool)

(assert (=> b!515254 m!761349))

(assert (=> bm!37516 m!761279))

(declare-fun m!761351 () Bool)

(assert (=> bm!37518 m!761351))

(declare-fun m!761353 () Bool)

(assert (=> bm!37519 m!761353))

(declare-fun m!761355 () Bool)

(assert (=> b!515252 m!761355))

(declare-fun m!761357 () Bool)

(assert (=> b!515259 m!761357))

(declare-fun m!761359 () Bool)

(assert (=> b!515259 m!761359))

(declare-fun m!761361 () Bool)

(assert (=> b!515259 m!761361))

(assert (=> b!515259 m!761315))

(declare-fun m!761363 () Bool)

(assert (=> b!515259 m!761363))

(declare-fun m!761365 () Bool)

(assert (=> b!515259 m!761365))

(assert (=> b!515259 m!761271))

(assert (=> b!515259 m!761315))

(declare-fun m!761367 () Bool)

(assert (=> b!515259 m!761367))

(declare-fun m!761369 () Bool)

(assert (=> bm!37520 m!761369))

(declare-fun m!761371 () Bool)

(assert (=> bm!37522 m!761371))

(declare-fun m!761373 () Bool)

(assert (=> b!515262 m!761373))

(assert (=> b!515207 d!184417))

(declare-fun d!184419 () Bool)

(declare-fun e!308209 () Bool)

(assert (=> d!184419 e!308209))

(declare-fun res!218508 () Bool)

(assert (=> d!184419 (=> (not res!218508) (not e!308209))))

(declare-fun lt!213730 () ListMap!169)

(assert (=> d!184419 (= res!218508 (not (contains!1071 lt!213730 k0!1740)))))

(declare-fun removePresrvNoDuplicatedKeys!8 (List!4714 K!1387) List!4714)

(assert (=> d!184419 (= lt!213730 (ListMap!170 (removePresrvNoDuplicatedKeys!8 (toList!403 lt!213632) k0!1740)))))

(assert (=> d!184419 (= (-!26 lt!213632 k0!1740) lt!213730)))

(declare-fun b!515265 () Bool)

(declare-datatypes ((List!4716 0))(
  ( (Nil!4706) (Cons!4706 (h!10103 K!1387) (t!73260 List!4716)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!816 (List!4716) (InoxSet K!1387))

(declare-fun keys!1837 (ListMap!169) List!4716)

(assert (=> b!515265 (= e!308209 (= ((_ map and) (content!816 (keys!1837 lt!213632)) ((_ map not) (store ((as const (Array K!1387 Bool)) false) k0!1740 true))) (content!816 (keys!1837 lt!213730))))))

(assert (= (and d!184419 res!218508) b!515265))

(declare-fun m!761375 () Bool)

(assert (=> d!184419 m!761375))

(declare-fun m!761377 () Bool)

(assert (=> d!184419 m!761377))

(declare-fun m!761379 () Bool)

(assert (=> b!515265 m!761379))

(declare-fun m!761381 () Bool)

(assert (=> b!515265 m!761381))

(declare-fun m!761383 () Bool)

(assert (=> b!515265 m!761383))

(assert (=> b!515265 m!761379))

(declare-fun m!761385 () Bool)

(assert (=> b!515265 m!761385))

(assert (=> b!515265 m!761383))

(declare-fun m!761387 () Bool)

(assert (=> b!515265 m!761387))

(assert (=> b!515207 d!184419))

(declare-fun b!515270 () Bool)

(declare-fun e!308212 () Bool)

(declare-fun tp_is_empty!2595 () Bool)

(declare-fun tp!160780 () Bool)

(assert (=> b!515270 (= e!308212 (and tp_is_empty!2593 tp_is_empty!2595 tp!160780))))

(assert (=> b!515209 (= tp!160776 e!308212)))

(assert (= (and b!515209 ((_ is Cons!4704) (zeroValue!765 (v!15735 (underlying!1197 (v!15736 (underlying!1198 hm!65))))))) b!515270))

(declare-fun b!515271 () Bool)

(declare-fun tp!160781 () Bool)

(declare-fun e!308213 () Bool)

(assert (=> b!515271 (= e!308213 (and tp_is_empty!2593 tp_is_empty!2595 tp!160781))))

(assert (=> b!515209 (= tp!160772 e!308213)))

(assert (= (and b!515209 ((_ is Cons!4704) (minValue!765 (v!15735 (underlying!1197 (v!15736 (underlying!1198 hm!65))))))) b!515271))

(declare-fun e!308218 () Bool)

(declare-fun b!515279 () Bool)

(declare-fun tp!160788 () Bool)

(assert (=> b!515279 (= e!308218 (and tp_is_empty!2593 tp_is_empty!2595 tp!160788))))

(declare-fun condMapEmpty!1963 () Bool)

(declare-fun mapDefault!1963 () List!4714)

(assert (=> mapNonEmpty!1960 (= condMapEmpty!1963 (= mapRest!1960 ((as const (Array (_ BitVec 32) List!4714)) mapDefault!1963)))))

(declare-fun mapRes!1963 () Bool)

(assert (=> mapNonEmpty!1960 (= tp!160774 (and e!308218 mapRes!1963))))

(declare-fun mapNonEmpty!1963 () Bool)

(declare-fun tp!160790 () Bool)

(declare-fun e!308219 () Bool)

(assert (=> mapNonEmpty!1963 (= mapRes!1963 (and tp!160790 e!308219))))

(declare-fun mapValue!1963 () List!4714)

(declare-fun mapKey!1963 () (_ BitVec 32))

(declare-fun mapRest!1963 () (Array (_ BitVec 32) List!4714))

(assert (=> mapNonEmpty!1963 (= mapRest!1960 (store mapRest!1963 mapKey!1963 mapValue!1963))))

(declare-fun tp!160789 () Bool)

(declare-fun b!515278 () Bool)

(assert (=> b!515278 (= e!308219 (and tp_is_empty!2593 tp_is_empty!2595 tp!160789))))

(declare-fun mapIsEmpty!1963 () Bool)

(assert (=> mapIsEmpty!1963 mapRes!1963))

(assert (= (and mapNonEmpty!1960 condMapEmpty!1963) mapIsEmpty!1963))

(assert (= (and mapNonEmpty!1960 (not condMapEmpty!1963)) mapNonEmpty!1963))

(assert (= (and mapNonEmpty!1963 ((_ is Cons!4704) mapValue!1963)) b!515278))

(assert (= (and mapNonEmpty!1960 ((_ is Cons!4704) mapDefault!1963)) b!515279))

(declare-fun m!761389 () Bool)

(assert (=> mapNonEmpty!1963 m!761389))

(declare-fun tp!160791 () Bool)

(declare-fun e!308220 () Bool)

(declare-fun b!515280 () Bool)

(assert (=> b!515280 (= e!308220 (and tp_is_empty!2593 tp_is_empty!2595 tp!160791))))

(assert (=> mapNonEmpty!1960 (= tp!160777 e!308220)))

(assert (= (and mapNonEmpty!1960 ((_ is Cons!4704) mapValue!1960)) b!515280))

(declare-fun e!308221 () Bool)

(declare-fun tp!160792 () Bool)

(declare-fun b!515281 () Bool)

(assert (=> b!515281 (= e!308221 (and tp_is_empty!2593 tp_is_empty!2595 tp!160792))))

(assert (=> b!515212 (= tp!160773 e!308221)))

(assert (= (and b!515212 ((_ is Cons!4704) mapDefault!1960)) b!515281))

(declare-fun b_lambda!20007 () Bool)

(assert (= b_lambda!20005 (or (and start!46692 b_free!13513) b_lambda!20007)))

(check-sat (not b!515227) (not d!184419) (not b!515270) (not d!184415) (not b_next!13515) (not b!515228) (not b!515261) (not b!515252) (not b!515278) (not d!184417) (not bm!37517) (not b!515221) (not b!515220) (not bm!37519) b_and!50957 (not b!515279) (not b!515229) (not b!515259) (not mapNonEmpty!1963) (not b!515281) (not b_lambda!20007) (not b_next!13513) (not b!515254) (not b!515257) (not d!184401) (not d!184405) (not b!515262) b_and!50961 (not bm!37521) (not b_next!13511) (not bm!37516) (not bm!37523) (not d!184403) b_and!50963 (not d!184413) (not bm!37522) tp_is_empty!2593 (not bm!37520) (not bm!37518) tp_is_empty!2595 (not b!515271) (not b!515280) (not b!515265))
(check-sat b_and!50957 (not b_next!13513) b_and!50963 (not b_next!13515) b_and!50961 (not b_next!13511))
