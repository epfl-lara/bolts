; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242406 () Bool)

(assert start!242406)

(declare-fun b!2483393 () Bool)

(declare-fun b_free!72393 () Bool)

(declare-fun b_next!73097 () Bool)

(assert (=> b!2483393 (= b_free!72393 (not b_next!73097))))

(declare-fun tp!794986 () Bool)

(declare-fun b_and!188655 () Bool)

(assert (=> b!2483393 (= tp!794986 b_and!188655)))

(declare-fun b!2483396 () Bool)

(declare-fun b_free!72395 () Bool)

(declare-fun b_next!73099 () Bool)

(assert (=> b!2483396 (= b_free!72395 (not b_next!73099))))

(declare-fun tp!794987 () Bool)

(declare-fun b_and!188657 () Bool)

(assert (=> b!2483396 (= tp!794987 b_and!188657)))

(declare-fun bs!467626 () Bool)

(declare-fun b!2483398 () Bool)

(declare-fun b!2483402 () Bool)

(assert (= bs!467626 (and b!2483398 b!2483402)))

(declare-fun lambda!94157 () Int)

(declare-fun lambda!94156 () Int)

(assert (=> bs!467626 (not (= lambda!94157 lambda!94156))))

(declare-fun b!2483413 () Bool)

(declare-fun e!1576587 () Bool)

(assert (=> b!2483413 (= e!1576587 true)))

(declare-fun b!2483412 () Bool)

(declare-fun e!1576586 () Bool)

(assert (=> b!2483412 (= e!1576586 e!1576587)))

(declare-fun b!2483411 () Bool)

(declare-fun e!1576585 () Bool)

(assert (=> b!2483411 (= e!1576585 e!1576586)))

(assert (=> b!2483398 e!1576585))

(assert (= b!2483412 b!2483413))

(assert (= b!2483411 b!2483412))

(declare-datatypes ((K!5545 0))(
  ( (K!5546 (val!8911 Int)) )
))
(declare-datatypes ((V!5747 0))(
  ( (V!5748 (val!8912 Int)) )
))
(declare-datatypes ((tuple2!28936 0))(
  ( (tuple2!28937 (_1!17010 K!5545) (_2!17010 V!5747)) )
))
(declare-datatypes ((List!29245 0))(
  ( (Nil!29145) (Cons!29145 (h!34552 tuple2!28936) (t!210912 List!29245)) )
))
(declare-datatypes ((array!12007 0))(
  ( (array!12008 (arr!5358 (Array (_ BitVec 32) List!29245)) (size!22777 (_ BitVec 32))) )
))
(declare-datatypes ((array!12009 0))(
  ( (array!12010 (arr!5359 (Array (_ BitVec 32) (_ BitVec 64))) (size!22778 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6768 0))(
  ( (LongMapFixedSize!6769 (defaultEntry!3758 Int) (mask!8565 (_ BitVec 32)) (extraKeys!3632 (_ BitVec 32)) (zeroValue!3642 List!29245) (minValue!3642 List!29245) (_size!6815 (_ BitVec 32)) (_keys!3681 array!12009) (_values!3664 array!12007) (_vacant!3445 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13353 0))(
  ( (Cell!13354 (v!31517 LongMapFixedSize!6768)) )
))
(declare-datatypes ((MutLongMap!3384 0))(
  ( (LongMap!3384 (underlying!6975 Cell!13353)) (MutLongMapExt!3383 (__x!19058 Int)) )
))
(declare-datatypes ((tuple2!28938 0))(
  ( (tuple2!28939 (_1!17011 Bool) (_2!17011 MutLongMap!3384)) )
))
(declare-fun lt!889562 () tuple2!28938)

(get-info :version)

(assert (= (and b!2483398 ((_ is LongMap!3384) (_2!17011 lt!889562))) b!2483411))

(declare-fun order!15743 () Int)

(declare-fun order!15745 () Int)

(declare-fun dynLambda!12481 (Int Int) Int)

(declare-fun dynLambda!12482 (Int Int) Int)

(assert (=> b!2483413 (< (dynLambda!12481 order!15743 (defaultEntry!3758 (v!31517 (underlying!6975 (_2!17011 lt!889562))))) (dynLambda!12482 order!15745 lambda!94157))))

(declare-fun b!2483425 () Bool)

(declare-fun e!1576597 () Bool)

(declare-fun e!1576598 () Bool)

(assert (=> b!2483425 (= e!1576597 e!1576598)))

(declare-fun b!2483427 () Bool)

(declare-fun e!1576599 () Bool)

(assert (=> b!2483427 (= e!1576599 true)))

(declare-fun e!1576596 () Bool)

(assert (=> b!2483398 e!1576596))

(declare-fun b!2483424 () Bool)

(assert (=> b!2483424 (= e!1576596 e!1576597)))

(declare-fun b!2483426 () Bool)

(assert (=> b!2483426 (= e!1576598 e!1576599)))

(assert (= b!2483426 b!2483427))

(assert (= b!2483425 b!2483426))

(declare-datatypes ((Cell!13355 0))(
  ( (Cell!13356 (v!31518 MutLongMap!3384)) )
))
(declare-fun lt!889560 () Cell!13355)

(assert (= (and b!2483424 ((_ is LongMap!3384) (v!31518 lt!889560))) b!2483425))

(assert (= b!2483398 b!2483424))

(assert (=> b!2483427 (< (dynLambda!12481 order!15743 (defaultEntry!3758 (v!31517 (underlying!6975 (v!31518 lt!889560))))) (dynLambda!12482 order!15745 lambda!94157))))

(declare-fun b!2483440 () Bool)

(declare-fun e!1576611 () Bool)

(assert (=> b!2483440 (= e!1576611 true)))

(declare-fun e!1576612 () Bool)

(assert (=> b!2483398 e!1576612))

(declare-fun b!2483441 () Bool)

(declare-fun e!1576610 () Bool)

(assert (=> b!2483441 (= e!1576612 e!1576610)))

(declare-fun b!2483442 () Bool)

(declare-fun e!1576613 () Bool)

(declare-fun e!1576614 () Bool)

(assert (=> b!2483442 (= e!1576613 e!1576614)))

(declare-fun b!2483443 () Bool)

(declare-fun lt!889568 () MutLongMap!3384)

(assert (=> b!2483443 (= e!1576610 (and e!1576613 ((_ is LongMap!3384) lt!889568)))))

(declare-datatypes ((Hashable!3294 0))(
  ( (HashableExt!3293 (__x!19059 Int)) )
))
(declare-datatypes ((MutableMap!3294 0))(
  ( (MutableMapExt!3293 (__x!19060 Int)) (HashMap!3294 (underlying!6976 Cell!13355) (hashF!5261 Hashable!3294) (_size!6816 (_ BitVec 32)) (defaultValue!3456 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3294)

(assert (=> b!2483443 (= lt!889568 (v!31518 (underlying!6976 thiss!42540)))))

(declare-fun b!2483444 () Bool)

(assert (=> b!2483444 (= e!1576614 e!1576611)))

(assert (= b!2483444 b!2483440))

(assert (= b!2483442 b!2483444))

(assert (= (and b!2483443 ((_ is LongMap!3384) (v!31518 (underlying!6976 thiss!42540)))) b!2483442))

(assert (= b!2483441 b!2483443))

(assert (= (and b!2483398 ((_ is HashMap!3294) thiss!42540)) b!2483441))

(assert (=> b!2483440 (< (dynLambda!12481 order!15743 (defaultEntry!3758 (v!31517 (underlying!6975 (v!31518 (underlying!6976 thiss!42540)))))) (dynLambda!12482 order!15745 lambda!94157))))

(declare-fun order!15747 () Int)

(declare-fun dynLambda!12483 (Int Int) Int)

(assert (=> b!2483441 (< (dynLambda!12483 order!15747 (defaultValue!3456 thiss!42540)) (dynLambda!12482 order!15745 lambda!94157))))

(declare-fun mapNonEmpty!15633 () Bool)

(declare-fun mapRes!15633 () Bool)

(declare-fun tp!794985 () Bool)

(declare-fun tp!794988 () Bool)

(assert (=> mapNonEmpty!15633 (= mapRes!15633 (and tp!794985 tp!794988))))

(declare-fun mapKey!15633 () (_ BitVec 32))

(declare-fun mapValue!15633 () List!29245)

(declare-fun mapRest!15633 () (Array (_ BitVec 32) List!29245))

(assert (=> mapNonEmpty!15633 (= (arr!5358 (_values!3664 (v!31517 (underlying!6975 (v!31518 (underlying!6976 thiss!42540)))))) (store mapRest!15633 mapKey!15633 mapValue!15633))))

(declare-fun b!2483392 () Bool)

(declare-fun e!1576571 () Bool)

(declare-fun tp!794984 () Bool)

(assert (=> b!2483392 (= e!1576571 (and tp!794984 mapRes!15633))))

(declare-fun condMapEmpty!15633 () Bool)

(declare-fun mapDefault!15633 () List!29245)

(assert (=> b!2483392 (= condMapEmpty!15633 (= (arr!5358 (_values!3664 (v!31517 (underlying!6975 (v!31518 (underlying!6976 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29245)) mapDefault!15633)))))

(declare-fun e!1576577 () Bool)

(declare-fun tp!794983 () Bool)

(declare-fun tp!794982 () Bool)

(declare-fun array_inv!3847 (array!12009) Bool)

(declare-fun array_inv!3848 (array!12007) Bool)

(assert (=> b!2483393 (= e!1576577 (and tp!794986 tp!794982 tp!794983 (array_inv!3847 (_keys!3681 (v!31517 (underlying!6975 (v!31518 (underlying!6976 thiss!42540)))))) (array_inv!3848 (_values!3664 (v!31517 (underlying!6975 (v!31518 (underlying!6976 thiss!42540)))))) e!1576571))))

(declare-fun b!2483394 () Bool)

(declare-fun res!1051186 () Bool)

(declare-fun e!1576570 () Bool)

(assert (=> b!2483394 (=> (not res!1051186) (not e!1576570))))

(declare-fun key!2246 () K!5545)

(declare-fun contains!5143 (MutableMap!3294 K!5545) Bool)

(assert (=> b!2483394 (= res!1051186 (contains!5143 thiss!42540 key!2246))))

(declare-fun mapIsEmpty!15633 () Bool)

(assert (=> mapIsEmpty!15633 mapRes!15633))

(declare-fun b!2483395 () Bool)

(declare-fun e!1576575 () Bool)

(assert (=> b!2483395 (= e!1576575 e!1576577)))

(declare-fun e!1576573 () Bool)

(declare-fun e!1576574 () Bool)

(assert (=> b!2483396 (= e!1576573 (and e!1576574 tp!794987))))

(declare-fun res!1051185 () Bool)

(declare-fun e!1576572 () Bool)

(assert (=> b!2483398 (=> res!1051185 e!1576572)))

(declare-datatypes ((tuple2!28940 0))(
  ( (tuple2!28941 (_1!17012 (_ BitVec 64)) (_2!17012 List!29245)) )
))
(declare-datatypes ((List!29246 0))(
  ( (Nil!29146) (Cons!29146 (h!34553 tuple2!28940) (t!210913 List!29246)) )
))
(declare-datatypes ((ListLongMap!559 0))(
  ( (ListLongMap!560 (toList!1610 List!29246)) )
))
(declare-fun lt!889563 () ListLongMap!559)

(declare-fun forall!5979 (List!29246 Int) Bool)

(assert (=> b!2483398 (= res!1051185 (not (forall!5979 (toList!1610 lt!889563) lambda!94157)))))

(declare-fun b!2483399 () Bool)

(declare-fun res!1051188 () Bool)

(assert (=> b!2483399 (=> (not res!1051188) (not e!1576570))))

(declare-fun valid!2590 (MutableMap!3294) Bool)

(assert (=> b!2483399 (= res!1051188 (valid!2590 thiss!42540))))

(declare-fun b!2483400 () Bool)

(declare-fun lt!889561 () tuple2!28940)

(declare-fun contains!5144 (List!29246 tuple2!28940) Bool)

(assert (=> b!2483400 (= e!1576572 (contains!5144 (toList!1610 lt!889563) lt!889561))))

(declare-fun res!1051187 () Bool)

(assert (=> start!242406 (=> (not res!1051187) (not e!1576570))))

(assert (=> start!242406 (= res!1051187 ((_ is HashMap!3294) thiss!42540))))

(assert (=> start!242406 e!1576570))

(assert (=> start!242406 e!1576573))

(declare-fun tp_is_empty!12305 () Bool)

(assert (=> start!242406 tp_is_empty!12305))

(declare-fun b!2483397 () Bool)

(declare-fun e!1576576 () Bool)

(declare-fun lt!889558 () MutLongMap!3384)

(assert (=> b!2483397 (= e!1576574 (and e!1576576 ((_ is LongMap!3384) lt!889558)))))

(assert (=> b!2483397 (= lt!889558 (v!31518 (underlying!6976 thiss!42540)))))

(declare-fun b!2483401 () Bool)

(assert (=> b!2483401 (= e!1576576 e!1576575)))

(assert (=> b!2483402 (= e!1576570 (not e!1576572))))

(declare-fun res!1051184 () Bool)

(assert (=> b!2483402 (=> res!1051184 e!1576572)))

(assert (=> b!2483402 (= res!1051184 (not (_1!17011 lt!889562)))))

(declare-fun lt!889557 () List!29245)

(declare-fun noDuplicateKeys!91 (List!29245) Bool)

(assert (=> b!2483402 (noDuplicateKeys!91 lt!889557)))

(declare-datatypes ((Unit!42690 0))(
  ( (Unit!42691) )
))
(declare-fun lt!889556 () Unit!42690)

(declare-fun lt!889564 () List!29245)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!71 (List!29245 K!5545) Unit!42690)

(assert (=> b!2483402 (= lt!889556 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!71 lt!889564 key!2246))))

(assert (=> b!2483402 (= lt!889560 (Cell!13356 (_2!17011 lt!889562)))))

(declare-fun lt!889559 () (_ BitVec 64))

(declare-fun update!201 (MutLongMap!3384 (_ BitVec 64) List!29245) tuple2!28938)

(assert (=> b!2483402 (= lt!889562 (update!201 (v!31518 (underlying!6976 thiss!42540)) lt!889559 lt!889557))))

(declare-fun removePairForKey!83 (List!29245 K!5545) List!29245)

(assert (=> b!2483402 (= lt!889557 (removePairForKey!83 lt!889564 key!2246))))

(declare-datatypes ((ListMap!1091 0))(
  ( (ListMap!1092 (toList!1611 List!29245)) )
))
(declare-fun lt!889555 () ListMap!1091)

(declare-fun map!6241 (MutableMap!3294) ListMap!1091)

(assert (=> b!2483402 (= lt!889555 (map!6241 thiss!42540))))

(declare-fun lt!889565 () Unit!42690)

(declare-fun forallContained!872 (List!29246 Int tuple2!28940) Unit!42690)

(assert (=> b!2483402 (= lt!889565 (forallContained!872 (toList!1610 lt!889563) lambda!94156 lt!889561))))

(assert (=> b!2483402 (= lt!889561 (tuple2!28941 lt!889559 lt!889564))))

(declare-fun map!6242 (MutLongMap!3384) ListLongMap!559)

(assert (=> b!2483402 (= lt!889563 (map!6242 (v!31518 (underlying!6976 thiss!42540))))))

(declare-fun apply!6940 (MutLongMap!3384 (_ BitVec 64)) List!29245)

(assert (=> b!2483402 (= lt!889564 (apply!6940 (v!31518 (underlying!6976 thiss!42540)) lt!889559))))

(declare-fun hash!708 (Hashable!3294 K!5545) (_ BitVec 64))

(assert (=> b!2483402 (= lt!889559 (hash!708 (hashF!5261 thiss!42540) key!2246))))

(assert (= (and start!242406 res!1051187) b!2483399))

(assert (= (and b!2483399 res!1051188) b!2483394))

(assert (= (and b!2483394 res!1051186) b!2483402))

(assert (= (and b!2483402 (not res!1051184)) b!2483398))

(assert (= (and b!2483398 (not res!1051185)) b!2483400))

(assert (= (and b!2483392 condMapEmpty!15633) mapIsEmpty!15633))

(assert (= (and b!2483392 (not condMapEmpty!15633)) mapNonEmpty!15633))

(assert (= b!2483393 b!2483392))

(assert (= b!2483395 b!2483393))

(assert (= b!2483401 b!2483395))

(assert (= (and b!2483397 ((_ is LongMap!3384) (v!31518 (underlying!6976 thiss!42540)))) b!2483401))

(assert (= b!2483396 b!2483397))

(assert (= (and start!242406 ((_ is HashMap!3294) thiss!42540)) b!2483396))

(declare-fun m!2851279 () Bool)

(assert (=> b!2483399 m!2851279))

(declare-fun m!2851281 () Bool)

(assert (=> b!2483400 m!2851281))

(declare-fun m!2851283 () Bool)

(assert (=> b!2483394 m!2851283))

(declare-fun m!2851285 () Bool)

(assert (=> b!2483393 m!2851285))

(declare-fun m!2851287 () Bool)

(assert (=> b!2483393 m!2851287))

(declare-fun m!2851289 () Bool)

(assert (=> b!2483402 m!2851289))

(declare-fun m!2851291 () Bool)

(assert (=> b!2483402 m!2851291))

(declare-fun m!2851293 () Bool)

(assert (=> b!2483402 m!2851293))

(declare-fun m!2851295 () Bool)

(assert (=> b!2483402 m!2851295))

(declare-fun m!2851297 () Bool)

(assert (=> b!2483402 m!2851297))

(declare-fun m!2851299 () Bool)

(assert (=> b!2483402 m!2851299))

(declare-fun m!2851301 () Bool)

(assert (=> b!2483402 m!2851301))

(declare-fun m!2851303 () Bool)

(assert (=> b!2483402 m!2851303))

(declare-fun m!2851305 () Bool)

(assert (=> b!2483402 m!2851305))

(declare-fun m!2851307 () Bool)

(assert (=> mapNonEmpty!15633 m!2851307))

(declare-fun m!2851309 () Bool)

(assert (=> b!2483398 m!2851309))

(check-sat (not b!2483400) (not b!2483392) (not b_next!73099) (not b!2483398) (not b!2483394) b_and!188655 tp_is_empty!12305 (not b_next!73097) (not b!2483393) (not b!2483402) b_and!188657 (not mapNonEmpty!15633) (not b!2483399))
(check-sat b_and!188657 b_and!188655 (not b_next!73097) (not b_next!73099))
(get-model)

(declare-fun d!713167 () Bool)

(assert (=> d!713167 (= (array_inv!3847 (_keys!3681 (v!31517 (underlying!6975 (v!31518 (underlying!6976 thiss!42540)))))) (bvsge (size!22778 (_keys!3681 (v!31517 (underlying!6975 (v!31518 (underlying!6976 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2483393 d!713167))

(declare-fun d!713169 () Bool)

(assert (=> d!713169 (= (array_inv!3848 (_values!3664 (v!31517 (underlying!6975 (v!31518 (underlying!6976 thiss!42540)))))) (bvsge (size!22777 (_values!3664 (v!31517 (underlying!6975 (v!31518 (underlying!6976 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2483393 d!713169))

(declare-fun b!2483455 () Bool)

(declare-fun e!1576619 () List!29245)

(assert (=> b!2483455 (= e!1576619 (Cons!29145 (h!34552 lt!889564) (removePairForKey!83 (t!210912 lt!889564) key!2246)))))

(declare-fun b!2483454 () Bool)

(declare-fun e!1576620 () List!29245)

(assert (=> b!2483454 (= e!1576620 e!1576619)))

(declare-fun c!394799 () Bool)

(assert (=> b!2483454 (= c!394799 ((_ is Cons!29145) lt!889564))))

(declare-fun d!713171 () Bool)

(declare-fun lt!889571 () List!29245)

(declare-fun containsKey!144 (List!29245 K!5545) Bool)

(assert (=> d!713171 (not (containsKey!144 lt!889571 key!2246))))

(assert (=> d!713171 (= lt!889571 e!1576620)))

(declare-fun c!394798 () Bool)

(assert (=> d!713171 (= c!394798 (and ((_ is Cons!29145) lt!889564) (= (_1!17010 (h!34552 lt!889564)) key!2246)))))

(assert (=> d!713171 (noDuplicateKeys!91 lt!889564)))

(assert (=> d!713171 (= (removePairForKey!83 lt!889564 key!2246) lt!889571)))

(declare-fun b!2483456 () Bool)

(assert (=> b!2483456 (= e!1576619 Nil!29145)))

(declare-fun b!2483453 () Bool)

(assert (=> b!2483453 (= e!1576620 (t!210912 lt!889564))))

(assert (= (and d!713171 c!394798) b!2483453))

(assert (= (and d!713171 (not c!394798)) b!2483454))

(assert (= (and b!2483454 c!394799) b!2483455))

(assert (= (and b!2483454 (not c!394799)) b!2483456))

(declare-fun m!2851311 () Bool)

(assert (=> b!2483455 m!2851311))

(declare-fun m!2851313 () Bool)

(assert (=> d!713171 m!2851313))

(declare-fun m!2851315 () Bool)

(assert (=> d!713171 m!2851315))

(assert (=> b!2483402 d!713171))

(declare-fun d!713173 () Bool)

(declare-fun res!1051193 () Bool)

(declare-fun e!1576625 () Bool)

(assert (=> d!713173 (=> res!1051193 e!1576625)))

(assert (=> d!713173 (= res!1051193 (not ((_ is Cons!29145) lt!889557)))))

(assert (=> d!713173 (= (noDuplicateKeys!91 lt!889557) e!1576625)))

(declare-fun b!2483461 () Bool)

(declare-fun e!1576626 () Bool)

(assert (=> b!2483461 (= e!1576625 e!1576626)))

(declare-fun res!1051194 () Bool)

(assert (=> b!2483461 (=> (not res!1051194) (not e!1576626))))

(assert (=> b!2483461 (= res!1051194 (not (containsKey!144 (t!210912 lt!889557) (_1!17010 (h!34552 lt!889557)))))))

(declare-fun b!2483462 () Bool)

(assert (=> b!2483462 (= e!1576626 (noDuplicateKeys!91 (t!210912 lt!889557)))))

(assert (= (and d!713173 (not res!1051193)) b!2483461))

(assert (= (and b!2483461 res!1051194) b!2483462))

(declare-fun m!2851317 () Bool)

(assert (=> b!2483461 m!2851317))

(declare-fun m!2851319 () Bool)

(assert (=> b!2483462 m!2851319))

(assert (=> b!2483402 d!713173))

(declare-fun d!713175 () Bool)

(declare-fun hash!709 (Hashable!3294 K!5545) (_ BitVec 64))

(assert (=> d!713175 (= (hash!708 (hashF!5261 thiss!42540) key!2246) (hash!709 (hashF!5261 thiss!42540) key!2246))))

(declare-fun bs!467627 () Bool)

(assert (= bs!467627 d!713175))

(declare-fun m!2851321 () Bool)

(assert (=> bs!467627 m!2851321))

(assert (=> b!2483402 d!713175))

(declare-fun d!713177 () Bool)

(declare-fun dynLambda!12484 (Int tuple2!28940) Bool)

(assert (=> d!713177 (dynLambda!12484 lambda!94156 lt!889561)))

(declare-fun lt!889574 () Unit!42690)

(declare-fun choose!14658 (List!29246 Int tuple2!28940) Unit!42690)

(assert (=> d!713177 (= lt!889574 (choose!14658 (toList!1610 lt!889563) lambda!94156 lt!889561))))

(declare-fun e!1576629 () Bool)

(assert (=> d!713177 e!1576629))

(declare-fun res!1051197 () Bool)

(assert (=> d!713177 (=> (not res!1051197) (not e!1576629))))

(assert (=> d!713177 (= res!1051197 (forall!5979 (toList!1610 lt!889563) lambda!94156))))

(assert (=> d!713177 (= (forallContained!872 (toList!1610 lt!889563) lambda!94156 lt!889561) lt!889574)))

(declare-fun b!2483465 () Bool)

(assert (=> b!2483465 (= e!1576629 (contains!5144 (toList!1610 lt!889563) lt!889561))))

(assert (= (and d!713177 res!1051197) b!2483465))

(declare-fun b_lambda!76195 () Bool)

(assert (=> (not b_lambda!76195) (not d!713177)))

(declare-fun m!2851323 () Bool)

(assert (=> d!713177 m!2851323))

(declare-fun m!2851325 () Bool)

(assert (=> d!713177 m!2851325))

(declare-fun m!2851327 () Bool)

(assert (=> d!713177 m!2851327))

(assert (=> b!2483465 m!2851281))

(assert (=> b!2483402 d!713177))

(declare-fun d!713179 () Bool)

(declare-fun map!6243 (LongMapFixedSize!6768) ListLongMap!559)

(assert (=> d!713179 (= (map!6242 (v!31518 (underlying!6976 thiss!42540))) (map!6243 (v!31517 (underlying!6975 (v!31518 (underlying!6976 thiss!42540))))))))

(declare-fun bs!467628 () Bool)

(assert (= bs!467628 d!713179))

(declare-fun m!2851329 () Bool)

(assert (=> bs!467628 m!2851329))

(assert (=> b!2483402 d!713179))

(declare-fun d!713181 () Bool)

(declare-fun lt!889577 () ListMap!1091)

(declare-fun invariantList!413 (List!29245) Bool)

(assert (=> d!713181 (invariantList!413 (toList!1611 lt!889577))))

(declare-fun extractMap!179 (List!29246) ListMap!1091)

(assert (=> d!713181 (= lt!889577 (extractMap!179 (toList!1610 (map!6242 (v!31518 (underlying!6976 thiss!42540))))))))

(assert (=> d!713181 (valid!2590 thiss!42540)))

(assert (=> d!713181 (= (map!6241 thiss!42540) lt!889577)))

(declare-fun bs!467629 () Bool)

(assert (= bs!467629 d!713181))

(declare-fun m!2851331 () Bool)

(assert (=> bs!467629 m!2851331))

(assert (=> bs!467629 m!2851295))

(declare-fun m!2851333 () Bool)

(assert (=> bs!467629 m!2851333))

(assert (=> bs!467629 m!2851279))

(assert (=> b!2483402 d!713181))

(declare-fun bm!152190 () Bool)

(declare-fun call!152195 () ListLongMap!559)

(assert (=> bm!152190 (= call!152195 (map!6242 (v!31518 (underlying!6976 thiss!42540))))))

(declare-fun b!2483484 () Bool)

(declare-fun e!1576643 () Bool)

(declare-fun e!1576641 () Bool)

(assert (=> b!2483484 (= e!1576643 e!1576641)))

(declare-fun c!394806 () Bool)

(declare-fun lt!889586 () tuple2!28938)

(assert (=> b!2483484 (= c!394806 (_1!17011 lt!889586))))

(declare-fun b!2483485 () Bool)

(declare-fun e!1576642 () tuple2!28938)

(declare-datatypes ((tuple2!28942 0))(
  ( (tuple2!28943 (_1!17013 Bool) (_2!17013 LongMapFixedSize!6768)) )
))
(declare-fun lt!889589 () tuple2!28942)

(assert (=> b!2483485 (= e!1576642 (tuple2!28939 (_1!17013 lt!889589) (LongMap!3384 (Cell!13354 (_2!17013 lt!889589)))))))

(declare-fun lt!889588 () tuple2!28938)

(declare-fun update!202 (LongMapFixedSize!6768 (_ BitVec 64) List!29245) tuple2!28942)

(assert (=> b!2483485 (= lt!889589 (update!202 (v!31517 (underlying!6975 (_2!17011 lt!889588))) lt!889559 lt!889557))))

(declare-fun d!713183 () Bool)

(assert (=> d!713183 e!1576643))

(declare-fun res!1051205 () Bool)

(assert (=> d!713183 (=> (not res!1051205) (not e!1576643))))

(assert (=> d!713183 (= res!1051205 ((_ is LongMap!3384) (_2!17011 lt!889586)))))

(assert (=> d!713183 (= lt!889586 e!1576642)))

(declare-fun c!394808 () Bool)

(assert (=> d!713183 (= c!394808 (_1!17011 lt!889588))))

(declare-fun e!1576640 () tuple2!28938)

(assert (=> d!713183 (= lt!889588 e!1576640)))

(declare-fun c!394807 () Bool)

(declare-fun imbalanced!18 (MutLongMap!3384) Bool)

(assert (=> d!713183 (= c!394807 (imbalanced!18 (v!31518 (underlying!6976 thiss!42540))))))

(declare-fun valid!2591 (MutLongMap!3384) Bool)

(assert (=> d!713183 (valid!2591 (v!31518 (underlying!6976 thiss!42540)))))

(assert (=> d!713183 (= (update!201 (v!31518 (underlying!6976 thiss!42540)) lt!889559 lt!889557) lt!889586)))

(declare-fun bm!152191 () Bool)

(declare-fun call!152196 () ListLongMap!559)

(assert (=> bm!152191 (= call!152196 (map!6242 (_2!17011 lt!889586)))))

(declare-fun b!2483486 () Bool)

(assert (=> b!2483486 (= e!1576640 (tuple2!28939 true (v!31518 (underlying!6976 thiss!42540))))))

(declare-fun b!2483487 () Bool)

(declare-fun e!1576644 () Bool)

(declare-fun +!88 (ListLongMap!559 tuple2!28940) ListLongMap!559)

(assert (=> b!2483487 (= e!1576644 (= call!152196 (+!88 call!152195 (tuple2!28941 lt!889559 lt!889557))))))

(declare-fun b!2483488 () Bool)

(assert (=> b!2483488 (= e!1576641 e!1576644)))

(declare-fun res!1051204 () Bool)

(declare-fun contains!5145 (ListLongMap!559 (_ BitVec 64)) Bool)

(assert (=> b!2483488 (= res!1051204 (contains!5145 call!152196 lt!889559))))

(assert (=> b!2483488 (=> (not res!1051204) (not e!1576644))))

(declare-fun b!2483489 () Bool)

(assert (=> b!2483489 (= e!1576642 (tuple2!28939 false (_2!17011 lt!889588)))))

(declare-fun b!2483490 () Bool)

(declare-fun res!1051206 () Bool)

(assert (=> b!2483490 (=> (not res!1051206) (not e!1576643))))

(assert (=> b!2483490 (= res!1051206 (valid!2591 (_2!17011 lt!889586)))))

(declare-fun b!2483491 () Bool)

(assert (=> b!2483491 (= e!1576641 (= call!152196 call!152195))))

(declare-fun b!2483492 () Bool)

(declare-fun lt!889587 () tuple2!28938)

(assert (=> b!2483492 (= e!1576640 (tuple2!28939 (_1!17011 lt!889587) (_2!17011 lt!889587)))))

(declare-fun repack!22 (MutLongMap!3384) tuple2!28938)

(assert (=> b!2483492 (= lt!889587 (repack!22 (v!31518 (underlying!6976 thiss!42540))))))

(assert (= (and d!713183 c!394807) b!2483492))

(assert (= (and d!713183 (not c!394807)) b!2483486))

(assert (= (and d!713183 c!394808) b!2483485))

(assert (= (and d!713183 (not c!394808)) b!2483489))

(assert (= (and d!713183 res!1051205) b!2483490))

(assert (= (and b!2483490 res!1051206) b!2483484))

(assert (= (and b!2483484 c!394806) b!2483488))

(assert (= (and b!2483484 (not c!394806)) b!2483491))

(assert (= (and b!2483488 res!1051204) b!2483487))

(assert (= (or b!2483487 b!2483491) bm!152190))

(assert (= (or b!2483488 b!2483487 b!2483491) bm!152191))

(declare-fun m!2851335 () Bool)

(assert (=> bm!152191 m!2851335))

(declare-fun m!2851337 () Bool)

(assert (=> b!2483487 m!2851337))

(assert (=> bm!152190 m!2851295))

(declare-fun m!2851339 () Bool)

(assert (=> b!2483492 m!2851339))

(declare-fun m!2851341 () Bool)

(assert (=> b!2483488 m!2851341))

(declare-fun m!2851343 () Bool)

(assert (=> b!2483485 m!2851343))

(declare-fun m!2851345 () Bool)

(assert (=> b!2483490 m!2851345))

(declare-fun m!2851347 () Bool)

(assert (=> d!713183 m!2851347))

(declare-fun m!2851349 () Bool)

(assert (=> d!713183 m!2851349))

(assert (=> b!2483402 d!713183))

(declare-fun d!713185 () Bool)

(declare-fun e!1576647 () Bool)

(assert (=> d!713185 e!1576647))

(declare-fun c!394811 () Bool)

(declare-fun contains!5146 (MutLongMap!3384 (_ BitVec 64)) Bool)

(assert (=> d!713185 (= c!394811 (contains!5146 (v!31518 (underlying!6976 thiss!42540)) lt!889559))))

(declare-fun lt!889592 () List!29245)

(declare-fun apply!6941 (LongMapFixedSize!6768 (_ BitVec 64)) List!29245)

(assert (=> d!713185 (= lt!889592 (apply!6941 (v!31517 (underlying!6975 (v!31518 (underlying!6976 thiss!42540)))) lt!889559))))

(assert (=> d!713185 (valid!2591 (v!31518 (underlying!6976 thiss!42540)))))

(assert (=> d!713185 (= (apply!6940 (v!31518 (underlying!6976 thiss!42540)) lt!889559) lt!889592)))

(declare-fun b!2483497 () Bool)

(declare-datatypes ((Option!5760 0))(
  ( (None!5759) (Some!5759 (v!31524 List!29245)) )
))
(declare-fun get!8991 (Option!5760) List!29245)

(declare-fun getValueByKey!143 (List!29246 (_ BitVec 64)) Option!5760)

(assert (=> b!2483497 (= e!1576647 (= lt!889592 (get!8991 (getValueByKey!143 (toList!1610 (map!6242 (v!31518 (underlying!6976 thiss!42540)))) lt!889559))))))

(declare-fun b!2483498 () Bool)

(declare-fun dynLambda!12485 (Int (_ BitVec 64)) List!29245)

(assert (=> b!2483498 (= e!1576647 (= lt!889592 (dynLambda!12485 (defaultEntry!3758 (v!31517 (underlying!6975 (v!31518 (underlying!6976 thiss!42540))))) lt!889559)))))

(assert (=> b!2483498 ((_ is LongMap!3384) (v!31518 (underlying!6976 thiss!42540)))))

(assert (= (and d!713185 c!394811) b!2483497))

(assert (= (and d!713185 (not c!394811)) b!2483498))

(declare-fun b_lambda!76197 () Bool)

(assert (=> (not b_lambda!76197) (not b!2483498)))

(declare-fun t!210915 () Bool)

(declare-fun tb!140385 () Bool)

(assert (=> (and b!2483393 (= (defaultEntry!3758 (v!31517 (underlying!6975 (v!31518 (underlying!6976 thiss!42540))))) (defaultEntry!3758 (v!31517 (underlying!6975 (v!31518 (underlying!6976 thiss!42540)))))) t!210915) tb!140385))

(assert (=> b!2483498 t!210915))

(declare-fun result!173350 () Bool)

(declare-fun b_and!188659 () Bool)

(assert (= b_and!188655 (and (=> t!210915 result!173350) b_and!188659)))

(declare-fun m!2851351 () Bool)

(assert (=> d!713185 m!2851351))

(declare-fun m!2851353 () Bool)

(assert (=> d!713185 m!2851353))

(assert (=> d!713185 m!2851349))

(assert (=> b!2483497 m!2851295))

(declare-fun m!2851355 () Bool)

(assert (=> b!2483497 m!2851355))

(assert (=> b!2483497 m!2851355))

(declare-fun m!2851357 () Bool)

(assert (=> b!2483497 m!2851357))

(declare-fun m!2851359 () Bool)

(assert (=> b!2483498 m!2851359))

(assert (=> b!2483402 d!713185))

(declare-fun d!713187 () Bool)

(assert (=> d!713187 (noDuplicateKeys!91 (removePairForKey!83 lt!889564 key!2246))))

(declare-fun lt!889595 () Unit!42690)

(declare-fun choose!14659 (List!29245 K!5545) Unit!42690)

(assert (=> d!713187 (= lt!889595 (choose!14659 lt!889564 key!2246))))

(assert (=> d!713187 (noDuplicateKeys!91 lt!889564)))

(assert (=> d!713187 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!71 lt!889564 key!2246) lt!889595)))

(declare-fun bs!467630 () Bool)

(assert (= bs!467630 d!713187))

(assert (=> bs!467630 m!2851299))

(assert (=> bs!467630 m!2851299))

(declare-fun m!2851361 () Bool)

(assert (=> bs!467630 m!2851361))

(declare-fun m!2851363 () Bool)

(assert (=> bs!467630 m!2851363))

(assert (=> bs!467630 m!2851315))

(assert (=> b!2483402 d!713187))

(declare-fun bs!467631 () Bool)

(declare-fun b!2483503 () Bool)

(assert (= bs!467631 (and b!2483503 b!2483402)))

(declare-fun lambda!94160 () Int)

(assert (=> bs!467631 (= lambda!94160 lambda!94156)))

(declare-fun bs!467632 () Bool)

(assert (= bs!467632 (and b!2483503 b!2483398)))

(assert (=> bs!467632 (not (= lambda!94160 lambda!94157))))

(declare-fun d!713189 () Bool)

(declare-fun res!1051211 () Bool)

(declare-fun e!1576650 () Bool)

(assert (=> d!713189 (=> (not res!1051211) (not e!1576650))))

(assert (=> d!713189 (= res!1051211 (valid!2591 (v!31518 (underlying!6976 thiss!42540))))))

(assert (=> d!713189 (= (valid!2590 thiss!42540) e!1576650)))

(declare-fun res!1051212 () Bool)

(assert (=> b!2483503 (=> (not res!1051212) (not e!1576650))))

(assert (=> b!2483503 (= res!1051212 (forall!5979 (toList!1610 (map!6242 (v!31518 (underlying!6976 thiss!42540)))) lambda!94160))))

(declare-fun b!2483504 () Bool)

(declare-fun allKeysSameHashInMap!170 (ListLongMap!559 Hashable!3294) Bool)

(assert (=> b!2483504 (= e!1576650 (allKeysSameHashInMap!170 (map!6242 (v!31518 (underlying!6976 thiss!42540))) (hashF!5261 thiss!42540)))))

(assert (= (and d!713189 res!1051211) b!2483503))

(assert (= (and b!2483503 res!1051212) b!2483504))

(assert (=> d!713189 m!2851349))

(assert (=> b!2483503 m!2851295))

(declare-fun m!2851365 () Bool)

(assert (=> b!2483503 m!2851365))

(assert (=> b!2483504 m!2851295))

(assert (=> b!2483504 m!2851295))

(declare-fun m!2851367 () Bool)

(assert (=> b!2483504 m!2851367))

(assert (=> b!2483399 d!713189))

(declare-fun bs!467633 () Bool)

(declare-fun b!2483537 () Bool)

(assert (= bs!467633 (and b!2483537 b!2483402)))

(declare-fun lambda!94163 () Int)

(assert (=> bs!467633 (= lambda!94163 lambda!94156)))

(declare-fun bs!467634 () Bool)

(assert (= bs!467634 (and b!2483537 b!2483398)))

(assert (=> bs!467634 (not (= lambda!94163 lambda!94157))))

(declare-fun bs!467635 () Bool)

(assert (= bs!467635 (and b!2483537 b!2483503)))

(assert (=> bs!467635 (= lambda!94163 lambda!94160)))

(declare-fun bm!152204 () Bool)

(declare-datatypes ((Option!5761 0))(
  ( (None!5760) (Some!5760 (v!31525 tuple2!28936)) )
))
(declare-fun call!152210 () Option!5761)

(declare-fun call!152211 () List!29245)

(declare-fun getPair!74 (List!29245 K!5545) Option!5761)

(assert (=> bm!152204 (= call!152210 (getPair!74 call!152211 key!2246))))

(declare-fun b!2483527 () Bool)

(declare-fun e!1576669 () Unit!42690)

(declare-fun e!1576666 () Unit!42690)

(assert (=> b!2483527 (= e!1576669 e!1576666)))

(declare-fun res!1051221 () Bool)

(declare-fun call!152212 () Bool)

(assert (=> b!2483527 (= res!1051221 call!152212)))

(declare-fun e!1576668 () Bool)

(assert (=> b!2483527 (=> (not res!1051221) (not e!1576668))))

(declare-fun c!394823 () Bool)

(assert (=> b!2483527 (= c!394823 e!1576668)))

(declare-fun b!2483528 () Bool)

(assert (=> b!2483528 false))

(declare-fun lt!889642 () Unit!42690)

(declare-fun lt!889650 () Unit!42690)

(assert (=> b!2483528 (= lt!889642 lt!889650)))

(declare-fun lt!889647 () ListLongMap!559)

(declare-fun contains!5147 (ListMap!1091 K!5545) Bool)

(assert (=> b!2483528 (contains!5147 (extractMap!179 (toList!1610 lt!889647)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!74 (ListLongMap!559 K!5545 Hashable!3294) Unit!42690)

(assert (=> b!2483528 (= lt!889650 (lemmaInLongMapThenInGenericMap!74 lt!889647 key!2246 (hashF!5261 thiss!42540)))))

(declare-fun call!152213 () ListLongMap!559)

(assert (=> b!2483528 (= lt!889647 call!152213)))

(declare-fun Unit!42692 () Unit!42690)

(assert (=> b!2483528 (= e!1576666 Unit!42692)))

(declare-fun bm!152205 () Bool)

(assert (=> bm!152205 (= call!152213 (map!6242 (v!31518 (underlying!6976 thiss!42540))))))

(declare-fun b!2483529 () Bool)

(assert (=> b!2483529 false))

(declare-fun lt!889639 () Unit!42690)

(declare-fun lt!889651 () Unit!42690)

(assert (=> b!2483529 (= lt!889639 lt!889651)))

(declare-fun lt!889649 () List!29246)

(declare-fun lt!889643 () (_ BitVec 64))

(declare-fun lt!889648 () List!29245)

(assert (=> b!2483529 (contains!5144 lt!889649 (tuple2!28941 lt!889643 lt!889648))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!79 (List!29246 (_ BitVec 64) List!29245) Unit!42690)

(assert (=> b!2483529 (= lt!889651 (lemmaGetValueByKeyImpliesContainsTuple!79 lt!889649 lt!889643 lt!889648))))

(assert (=> b!2483529 (= lt!889648 (apply!6940 (v!31518 (underlying!6976 thiss!42540)) lt!889643))))

(assert (=> b!2483529 (= lt!889649 (toList!1610 (map!6242 (v!31518 (underlying!6976 thiss!42540)))))))

(declare-fun lt!889638 () Unit!42690)

(declare-fun lt!889653 () Unit!42690)

(assert (=> b!2483529 (= lt!889638 lt!889653)))

(declare-fun lt!889644 () List!29246)

(declare-fun isDefined!4582 (Option!5760) Bool)

(assert (=> b!2483529 (isDefined!4582 (getValueByKey!143 lt!889644 lt!889643))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!100 (List!29246 (_ BitVec 64)) Unit!42690)

(assert (=> b!2483529 (= lt!889653 (lemmaContainsKeyImpliesGetValueByKeyDefined!100 lt!889644 lt!889643))))

(assert (=> b!2483529 (= lt!889644 (toList!1610 (map!6242 (v!31518 (underlying!6976 thiss!42540)))))))

(declare-fun lt!889646 () Unit!42690)

(declare-fun lt!889652 () Unit!42690)

(assert (=> b!2483529 (= lt!889646 lt!889652)))

(declare-fun lt!889636 () List!29246)

(declare-fun containsKey!145 (List!29246 (_ BitVec 64)) Bool)

(assert (=> b!2483529 (containsKey!145 lt!889636 lt!889643)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!75 (List!29246 (_ BitVec 64)) Unit!42690)

(assert (=> b!2483529 (= lt!889652 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!75 lt!889636 lt!889643))))

(assert (=> b!2483529 (= lt!889636 (toList!1610 (map!6242 (v!31518 (underlying!6976 thiss!42540)))))))

(declare-fun e!1576667 () Unit!42690)

(declare-fun Unit!42693 () Unit!42690)

(assert (=> b!2483529 (= e!1576667 Unit!42693)))

(declare-fun e!1576665 () Bool)

(declare-fun b!2483530 () Bool)

(declare-fun isDefined!4583 (Option!5761) Bool)

(assert (=> b!2483530 (= e!1576665 (isDefined!4583 (getPair!74 (apply!6940 (v!31518 (underlying!6976 thiss!42540)) lt!889643) key!2246)))))

(declare-fun b!2483531 () Bool)

(declare-fun Unit!42694 () Unit!42690)

(assert (=> b!2483531 (= e!1576666 Unit!42694)))

(declare-fun bm!152207 () Bool)

(declare-fun call!152209 () Bool)

(assert (=> bm!152207 (= call!152209 (isDefined!4583 call!152210))))

(declare-fun b!2483532 () Bool)

(declare-fun e!1576670 () Bool)

(assert (=> b!2483532 (= e!1576670 call!152209)))

(declare-fun b!2483533 () Bool)

(declare-fun lt!889637 () Unit!42690)

(assert (=> b!2483533 (= e!1576669 lt!889637)))

(declare-fun lt!889640 () ListLongMap!559)

(assert (=> b!2483533 (= lt!889640 call!152213)))

(declare-fun lemmaInGenericMapThenInLongMap!74 (ListLongMap!559 K!5545 Hashable!3294) Unit!42690)

(assert (=> b!2483533 (= lt!889637 (lemmaInGenericMapThenInLongMap!74 lt!889640 key!2246 (hashF!5261 thiss!42540)))))

(declare-fun res!1051219 () Bool)

(assert (=> b!2483533 (= res!1051219 call!152212)))

(assert (=> b!2483533 (=> (not res!1051219) (not e!1576670))))

(assert (=> b!2483533 e!1576670))

(declare-fun b!2483534 () Bool)

(declare-fun e!1576671 () Unit!42690)

(declare-fun Unit!42695 () Unit!42690)

(assert (=> b!2483534 (= e!1576671 Unit!42695)))

(declare-fun bm!152208 () Bool)

(declare-fun call!152214 () (_ BitVec 64))

(assert (=> bm!152208 (= call!152214 (hash!708 (hashF!5261 thiss!42540) key!2246))))

(declare-fun d!713191 () Bool)

(declare-fun lt!889641 () Bool)

(assert (=> d!713191 (= lt!889641 (contains!5147 (map!6241 thiss!42540) key!2246))))

(assert (=> d!713191 (= lt!889641 e!1576665)))

(declare-fun res!1051220 () Bool)

(assert (=> d!713191 (=> (not res!1051220) (not e!1576665))))

(assert (=> d!713191 (= res!1051220 (contains!5146 (v!31518 (underlying!6976 thiss!42540)) lt!889643))))

(declare-fun lt!889645 () Unit!42690)

(assert (=> d!713191 (= lt!889645 e!1576669)))

(declare-fun c!394821 () Bool)

(assert (=> d!713191 (= c!394821 (contains!5147 (extractMap!179 (toList!1610 (map!6242 (v!31518 (underlying!6976 thiss!42540))))) key!2246))))

(declare-fun lt!889654 () Unit!42690)

(assert (=> d!713191 (= lt!889654 e!1576671)))

(declare-fun c!394820 () Bool)

(assert (=> d!713191 (= c!394820 (contains!5146 (v!31518 (underlying!6976 thiss!42540)) lt!889643))))

(assert (=> d!713191 (= lt!889643 (hash!708 (hashF!5261 thiss!42540) key!2246))))

(assert (=> d!713191 (valid!2590 thiss!42540)))

(assert (=> d!713191 (= (contains!5143 thiss!42540 key!2246) lt!889641)))

(declare-fun bm!152206 () Bool)

(assert (=> bm!152206 (= call!152212 (contains!5145 (ite c!394821 lt!889640 call!152213) call!152214))))

(declare-fun b!2483535 () Bool)

(assert (=> b!2483535 (= e!1576668 call!152209)))

(declare-fun b!2483536 () Bool)

(declare-fun Unit!42696 () Unit!42690)

(assert (=> b!2483536 (= e!1576667 Unit!42696)))

(assert (=> b!2483537 (= e!1576671 (forallContained!872 (toList!1610 (map!6242 (v!31518 (underlying!6976 thiss!42540)))) lambda!94163 (tuple2!28941 lt!889643 (apply!6940 (v!31518 (underlying!6976 thiss!42540)) lt!889643))))))

(declare-fun c!394822 () Bool)

(assert (=> b!2483537 (= c!394822 (not (contains!5144 (toList!1610 (map!6242 (v!31518 (underlying!6976 thiss!42540)))) (tuple2!28941 lt!889643 (apply!6940 (v!31518 (underlying!6976 thiss!42540)) lt!889643)))))))

(declare-fun lt!889655 () Unit!42690)

(assert (=> b!2483537 (= lt!889655 e!1576667)))

(declare-fun bm!152209 () Bool)

(declare-fun apply!6942 (ListLongMap!559 (_ BitVec 64)) List!29245)

(assert (=> bm!152209 (= call!152211 (apply!6942 (ite c!394821 lt!889640 call!152213) call!152214))))

(assert (= (and d!713191 c!394820) b!2483537))

(assert (= (and d!713191 (not c!394820)) b!2483534))

(assert (= (and b!2483537 c!394822) b!2483529))

(assert (= (and b!2483537 (not c!394822)) b!2483536))

(assert (= (and d!713191 c!394821) b!2483533))

(assert (= (and d!713191 (not c!394821)) b!2483527))

(assert (= (and b!2483533 res!1051219) b!2483532))

(assert (= (and b!2483527 res!1051221) b!2483535))

(assert (= (and b!2483527 c!394823) b!2483528))

(assert (= (and b!2483527 (not c!394823)) b!2483531))

(assert (= (or b!2483533 b!2483532 b!2483527 b!2483535) bm!152208))

(assert (= (or b!2483533 b!2483527 b!2483535 b!2483528) bm!152205))

(assert (= (or b!2483533 b!2483527) bm!152206))

(assert (= (or b!2483532 b!2483535) bm!152209))

(assert (= (or b!2483532 b!2483535) bm!152204))

(assert (= (or b!2483532 b!2483535) bm!152207))

(assert (= (and d!713191 res!1051220) b!2483530))

(assert (=> bm!152205 m!2851295))

(assert (=> bm!152208 m!2851303))

(declare-fun m!2851369 () Bool)

(assert (=> bm!152209 m!2851369))

(declare-fun m!2851371 () Bool)

(assert (=> b!2483529 m!2851371))

(declare-fun m!2851373 () Bool)

(assert (=> b!2483529 m!2851373))

(assert (=> b!2483529 m!2851371))

(declare-fun m!2851375 () Bool)

(assert (=> b!2483529 m!2851375))

(declare-fun m!2851377 () Bool)

(assert (=> b!2483529 m!2851377))

(declare-fun m!2851379 () Bool)

(assert (=> b!2483529 m!2851379))

(declare-fun m!2851381 () Bool)

(assert (=> b!2483529 m!2851381))

(assert (=> b!2483529 m!2851295))

(declare-fun m!2851383 () Bool)

(assert (=> b!2483529 m!2851383))

(declare-fun m!2851385 () Bool)

(assert (=> b!2483529 m!2851385))

(declare-fun m!2851387 () Bool)

(assert (=> bm!152206 m!2851387))

(declare-fun m!2851389 () Bool)

(assert (=> b!2483528 m!2851389))

(assert (=> b!2483528 m!2851389))

(declare-fun m!2851391 () Bool)

(assert (=> b!2483528 m!2851391))

(declare-fun m!2851393 () Bool)

(assert (=> b!2483528 m!2851393))

(assert (=> d!713191 m!2851301))

(declare-fun m!2851395 () Bool)

(assert (=> d!713191 m!2851395))

(declare-fun m!2851397 () Bool)

(assert (=> d!713191 m!2851397))

(assert (=> d!713191 m!2851301))

(assert (=> d!713191 m!2851279))

(assert (=> d!713191 m!2851303))

(assert (=> d!713191 m!2851333))

(assert (=> d!713191 m!2851295))

(assert (=> d!713191 m!2851333))

(declare-fun m!2851399 () Bool)

(assert (=> d!713191 m!2851399))

(declare-fun m!2851401 () Bool)

(assert (=> b!2483533 m!2851401))

(assert (=> b!2483537 m!2851295))

(assert (=> b!2483537 m!2851377))

(declare-fun m!2851403 () Bool)

(assert (=> b!2483537 m!2851403))

(declare-fun m!2851405 () Bool)

(assert (=> b!2483537 m!2851405))

(declare-fun m!2851407 () Bool)

(assert (=> bm!152207 m!2851407))

(assert (=> b!2483530 m!2851377))

(assert (=> b!2483530 m!2851377))

(declare-fun m!2851409 () Bool)

(assert (=> b!2483530 m!2851409))

(assert (=> b!2483530 m!2851409))

(declare-fun m!2851411 () Bool)

(assert (=> b!2483530 m!2851411))

(declare-fun m!2851413 () Bool)

(assert (=> bm!152204 m!2851413))

(assert (=> b!2483394 d!713191))

(declare-fun d!713193 () Bool)

(declare-fun res!1051226 () Bool)

(declare-fun e!1576676 () Bool)

(assert (=> d!713193 (=> res!1051226 e!1576676)))

(assert (=> d!713193 (= res!1051226 ((_ is Nil!29146) (toList!1610 lt!889563)))))

(assert (=> d!713193 (= (forall!5979 (toList!1610 lt!889563) lambda!94157) e!1576676)))

(declare-fun b!2483542 () Bool)

(declare-fun e!1576677 () Bool)

(assert (=> b!2483542 (= e!1576676 e!1576677)))

(declare-fun res!1051227 () Bool)

(assert (=> b!2483542 (=> (not res!1051227) (not e!1576677))))

(assert (=> b!2483542 (= res!1051227 (dynLambda!12484 lambda!94157 (h!34553 (toList!1610 lt!889563))))))

(declare-fun b!2483543 () Bool)

(assert (=> b!2483543 (= e!1576677 (forall!5979 (t!210913 (toList!1610 lt!889563)) lambda!94157))))

(assert (= (and d!713193 (not res!1051226)) b!2483542))

(assert (= (and b!2483542 res!1051227) b!2483543))

(declare-fun b_lambda!76199 () Bool)

(assert (=> (not b_lambda!76199) (not b!2483542)))

(declare-fun m!2851415 () Bool)

(assert (=> b!2483542 m!2851415))

(declare-fun m!2851417 () Bool)

(assert (=> b!2483543 m!2851417))

(assert (=> b!2483398 d!713193))

(declare-fun d!713195 () Bool)

(declare-fun lt!889658 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3979 (List!29246) (InoxSet tuple2!28940))

(assert (=> d!713195 (= lt!889658 (select (content!3979 (toList!1610 lt!889563)) lt!889561))))

(declare-fun e!1576683 () Bool)

(assert (=> d!713195 (= lt!889658 e!1576683)))

(declare-fun res!1051233 () Bool)

(assert (=> d!713195 (=> (not res!1051233) (not e!1576683))))

(assert (=> d!713195 (= res!1051233 ((_ is Cons!29146) (toList!1610 lt!889563)))))

(assert (=> d!713195 (= (contains!5144 (toList!1610 lt!889563) lt!889561) lt!889658)))

(declare-fun b!2483548 () Bool)

(declare-fun e!1576682 () Bool)

(assert (=> b!2483548 (= e!1576683 e!1576682)))

(declare-fun res!1051232 () Bool)

(assert (=> b!2483548 (=> res!1051232 e!1576682)))

(assert (=> b!2483548 (= res!1051232 (= (h!34553 (toList!1610 lt!889563)) lt!889561))))

(declare-fun b!2483549 () Bool)

(assert (=> b!2483549 (= e!1576682 (contains!5144 (t!210913 (toList!1610 lt!889563)) lt!889561))))

(assert (= (and d!713195 res!1051233) b!2483548))

(assert (= (and b!2483548 (not res!1051232)) b!2483549))

(declare-fun m!2851419 () Bool)

(assert (=> d!713195 m!2851419))

(declare-fun m!2851421 () Bool)

(assert (=> d!713195 m!2851421))

(declare-fun m!2851423 () Bool)

(assert (=> b!2483549 m!2851423))

(assert (=> b!2483400 d!713195))

(declare-fun b!2483554 () Bool)

(declare-fun e!1576686 () Bool)

(declare-fun tp_is_empty!12307 () Bool)

(declare-fun tp!794991 () Bool)

(assert (=> b!2483554 (= e!1576686 (and tp_is_empty!12305 tp_is_empty!12307 tp!794991))))

(assert (=> b!2483393 (= tp!794982 e!1576686)))

(assert (= (and b!2483393 ((_ is Cons!29145) (zeroValue!3642 (v!31517 (underlying!6975 (v!31518 (underlying!6976 thiss!42540))))))) b!2483554))

(declare-fun e!1576687 () Bool)

(declare-fun b!2483555 () Bool)

(declare-fun tp!794992 () Bool)

(assert (=> b!2483555 (= e!1576687 (and tp_is_empty!12305 tp_is_empty!12307 tp!794992))))

(assert (=> b!2483393 (= tp!794983 e!1576687)))

(assert (= (and b!2483393 ((_ is Cons!29145) (minValue!3642 (v!31517 (underlying!6975 (v!31518 (underlying!6976 thiss!42540))))))) b!2483555))

(declare-fun tp!794993 () Bool)

(declare-fun e!1576688 () Bool)

(declare-fun b!2483556 () Bool)

(assert (=> b!2483556 (= e!1576688 (and tp_is_empty!12305 tp_is_empty!12307 tp!794993))))

(assert (=> b!2483392 (= tp!794984 e!1576688)))

(assert (= (and b!2483392 ((_ is Cons!29145) mapDefault!15633)) b!2483556))

(declare-fun tp!795000 () Bool)

(declare-fun e!1576693 () Bool)

(declare-fun b!2483563 () Bool)

(assert (=> b!2483563 (= e!1576693 (and tp_is_empty!12305 tp_is_empty!12307 tp!795000))))

(declare-fun b!2483564 () Bool)

(declare-fun tp!795001 () Bool)

(declare-fun e!1576694 () Bool)

(assert (=> b!2483564 (= e!1576694 (and tp_is_empty!12305 tp_is_empty!12307 tp!795001))))

(declare-fun condMapEmpty!15636 () Bool)

(declare-fun mapDefault!15636 () List!29245)

(assert (=> mapNonEmpty!15633 (= condMapEmpty!15636 (= mapRest!15633 ((as const (Array (_ BitVec 32) List!29245)) mapDefault!15636)))))

(declare-fun mapRes!15636 () Bool)

(assert (=> mapNonEmpty!15633 (= tp!794985 (and e!1576694 mapRes!15636))))

(declare-fun mapNonEmpty!15636 () Bool)

(declare-fun tp!795002 () Bool)

(assert (=> mapNonEmpty!15636 (= mapRes!15636 (and tp!795002 e!1576693))))

(declare-fun mapKey!15636 () (_ BitVec 32))

(declare-fun mapRest!15636 () (Array (_ BitVec 32) List!29245))

(declare-fun mapValue!15636 () List!29245)

(assert (=> mapNonEmpty!15636 (= mapRest!15633 (store mapRest!15636 mapKey!15636 mapValue!15636))))

(declare-fun mapIsEmpty!15636 () Bool)

(assert (=> mapIsEmpty!15636 mapRes!15636))

(assert (= (and mapNonEmpty!15633 condMapEmpty!15636) mapIsEmpty!15636))

(assert (= (and mapNonEmpty!15633 (not condMapEmpty!15636)) mapNonEmpty!15636))

(assert (= (and mapNonEmpty!15636 ((_ is Cons!29145) mapValue!15636)) b!2483563))

(assert (= (and mapNonEmpty!15633 ((_ is Cons!29145) mapDefault!15636)) b!2483564))

(declare-fun m!2851425 () Bool)

(assert (=> mapNonEmpty!15636 m!2851425))

(declare-fun tp!795003 () Bool)

(declare-fun b!2483565 () Bool)

(declare-fun e!1576695 () Bool)

(assert (=> b!2483565 (= e!1576695 (and tp_is_empty!12305 tp_is_empty!12307 tp!795003))))

(assert (=> mapNonEmpty!15633 (= tp!794988 e!1576695)))

(assert (= (and mapNonEmpty!15633 ((_ is Cons!29145) mapValue!15633)) b!2483565))

(declare-fun b_lambda!76201 () Bool)

(assert (= b_lambda!76195 (or b!2483402 b_lambda!76201)))

(declare-fun bs!467636 () Bool)

(declare-fun d!713197 () Bool)

(assert (= bs!467636 (and d!713197 b!2483402)))

(assert (=> bs!467636 (= (dynLambda!12484 lambda!94156 lt!889561) (noDuplicateKeys!91 (_2!17012 lt!889561)))))

(declare-fun m!2851427 () Bool)

(assert (=> bs!467636 m!2851427))

(assert (=> d!713177 d!713197))

(declare-fun b_lambda!76203 () Bool)

(assert (= b_lambda!76197 (or (and b!2483393 b_free!72393) b_lambda!76203)))

(declare-fun b_lambda!76205 () Bool)

(assert (= b_lambda!76199 (or b!2483398 b_lambda!76205)))

(declare-fun bs!467637 () Bool)

(declare-fun d!713199 () Bool)

(assert (= bs!467637 (and d!713199 b!2483398)))

(declare-fun allKeysSameHash!67 (List!29245 (_ BitVec 64) Hashable!3294) Bool)

(declare-datatypes ((tuple2!28944 0))(
  ( (tuple2!28945 (_1!17014 Unit!42690) (_2!17014 MutableMap!3294)) )
))
(declare-fun Unit!42697 () Unit!42690)

(declare-fun Unit!42698 () Unit!42690)

(assert (=> bs!467637 (= (dynLambda!12484 lambda!94157 (h!34553 (toList!1610 lt!889563))) (allKeysSameHash!67 (_2!17012 (h!34553 (toList!1610 lt!889563))) (_1!17012 (h!34553 (toList!1610 lt!889563))) (hashF!5261 (_2!17014 (ite (_1!17011 lt!889562) (tuple2!28945 Unit!42697 (HashMap!3294 lt!889560 (hashF!5261 thiss!42540) (bvsub (_size!6816 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3456 thiss!42540))) (tuple2!28945 Unit!42698 (HashMap!3294 lt!889560 (hashF!5261 thiss!42540) (_size!6816 thiss!42540) (defaultValue!3456 thiss!42540))))))))))

(declare-fun m!2851429 () Bool)

(assert (=> bs!467637 m!2851429))

(assert (=> b!2483542 d!713199))

(check-sat (not b!2483504) b_and!188657 (not b!2483503) (not d!713189) (not bm!152191) (not d!713171) (not b!2483492) (not b!2483556) (not bm!152208) (not mapNonEmpty!15636) (not bm!152190) (not d!713191) (not b_lambda!76205) (not d!713185) (not b!2483554) (not b!2483555) (not b!2483488) (not b_next!73097) (not b!2483549) (not b!2483462) (not d!713183) (not b!2483455) (not b!2483528) (not b_lambda!76201) (not d!713181) (not d!713177) (not d!713179) (not bm!152205) (not b!2483490) (not bm!152206) (not b!2483533) (not b!2483564) (not bm!152209) (not b!2483565) (not b_next!73099) (not b!2483543) (not bs!467636) (not b!2483485) (not b!2483529) (not bs!467637) (not b!2483530) (not d!713175) (not b!2483465) b_and!188659 (not bm!152204) (not b_lambda!76203) (not d!713187) (not d!713195) (not bm!152207) (not b!2483487) (not b!2483563) (not b!2483497) tp_is_empty!12307 (not b!2483537) (not b!2483461) (not tb!140385) tp_is_empty!12305)
(check-sat b_and!188657 b_and!188659 (not b_next!73097) (not b_next!73099))
