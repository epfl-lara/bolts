; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412796 () Bool)

(assert start!412796)

(declare-fun b!4299377 () Bool)

(declare-fun b_free!127989 () Bool)

(declare-fun b_next!128693 () Bool)

(assert (=> b!4299377 (= b_free!127989 (not b_next!128693))))

(declare-fun tp!1320890 () Bool)

(declare-fun b_and!339293 () Bool)

(assert (=> b!4299377 (= tp!1320890 b_and!339293)))

(declare-fun b_free!127991 () Bool)

(declare-fun b_next!128695 () Bool)

(assert (=> start!412796 (= b_free!127991 (not b_next!128695))))

(declare-fun tp!1320886 () Bool)

(declare-fun b_and!339295 () Bool)

(assert (=> start!412796 (= tp!1320886 b_and!339295)))

(declare-fun b!4299370 () Bool)

(declare-fun b_free!127993 () Bool)

(declare-fun b_next!128697 () Bool)

(assert (=> b!4299370 (= b_free!127993 (not b_next!128697))))

(declare-fun tp!1320885 () Bool)

(declare-fun b_and!339297 () Bool)

(assert (=> b!4299370 (= tp!1320885 b_and!339297)))

(declare-fun b!4299369 () Bool)

(declare-fun e!2672319 () Bool)

(declare-fun e!2672320 () Bool)

(assert (=> b!4299369 (= e!2672319 e!2672320)))

(declare-fun mapIsEmpty!20280 () Bool)

(declare-fun mapRes!20280 () Bool)

(assert (=> mapIsEmpty!20280 mapRes!20280))

(declare-datatypes ((K!9034 0))(
  ( (K!9035 (val!15485 Int)) )
))
(declare-datatypes ((V!9236 0))(
  ( (V!9237 (val!15486 Int)) )
))
(declare-datatypes ((tuple2!45854 0))(
  ( (tuple2!45855 (_1!26206 K!9034) (_2!26206 V!9236)) )
))
(declare-datatypes ((List!48052 0))(
  ( (Nil!47928) (Cons!47928 (h!53348 tuple2!45854) (t!354749 List!48052)) )
))
(declare-datatypes ((array!16158 0))(
  ( (array!16159 (arr!7215 (Array (_ BitVec 32) (_ BitVec 64))) (size!35254 (_ BitVec 32))) )
))
(declare-datatypes ((array!16160 0))(
  ( (array!16161 (arr!7216 (Array (_ BitVec 32) List!48052)) (size!35255 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9030 0))(
  ( (LongMapFixedSize!9031 (defaultEntry!4900 Int) (mask!13001 (_ BitVec 32)) (extraKeys!4764 (_ BitVec 32)) (zeroValue!4774 List!48052) (minValue!4774 List!48052) (_size!9073 (_ BitVec 32)) (_keys!4815 array!16158) (_values!4796 array!16160) (_vacant!4576 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17869 0))(
  ( (Cell!17870 (v!41887 LongMapFixedSize!9030)) )
))
(declare-datatypes ((MutLongMap!4515 0))(
  ( (LongMap!4515 (underlying!9259 Cell!17869)) (MutLongMapExt!4514 (__x!29570 Int)) )
))
(declare-datatypes ((Hashable!4431 0))(
  ( (HashableExt!4430 (__x!29571 Int)) )
))
(declare-datatypes ((Cell!17871 0))(
  ( (Cell!17872 (v!41888 MutLongMap!4515)) )
))
(declare-datatypes ((MutableMap!4421 0))(
  ( (MutableMapExt!4420 (__x!29572 Int)) (HashMap!4421 (underlying!9260 Cell!17871) (hashF!6463 Hashable!4431) (_size!9074 (_ BitVec 32)) (defaultValue!4592 Int)) )
))
(declare-fun hm!64 () MutableMap!4421)

(declare-fun tp!1320892 () Bool)

(declare-fun tp!1320887 () Bool)

(declare-fun e!2672312 () Bool)

(declare-fun e!2672318 () Bool)

(declare-fun array_inv!5169 (array!16158) Bool)

(declare-fun array_inv!5170 (array!16160) Bool)

(assert (=> b!4299370 (= e!2672318 (and tp!1320885 tp!1320887 tp!1320892 (array_inv!5169 (_keys!4815 (v!41887 (underlying!9259 (v!41888 (underlying!9260 hm!64)))))) (array_inv!5170 (_values!4796 (v!41887 (underlying!9259 (v!41888 (underlying!9260 hm!64)))))) e!2672312))))

(declare-fun b!4299371 () Bool)

(declare-fun res!1762114 () Bool)

(declare-fun e!2672315 () Bool)

(assert (=> b!4299371 (=> (not res!1762114) (not e!2672315))))

(declare-datatypes ((tuple2!45856 0))(
  ( (tuple2!45857 (_1!26207 Bool) (_2!26207 MutableMap!4421)) )
))
(declare-fun lt!1521219 () tuple2!45856)

(declare-datatypes ((ListMap!1469 0))(
  ( (ListMap!1470 (toList!2187 List!48052)) )
))
(declare-fun lt!1521224 () ListMap!1469)

(declare-fun eq!98 (ListMap!1469 ListMap!1469) Bool)

(declare-fun map!9887 (MutableMap!4421) ListMap!1469)

(assert (=> b!4299371 (= res!1762114 (eq!98 (map!9887 (_2!26207 lt!1521219)) lt!1521224))))

(declare-fun b!4299372 () Bool)

(declare-fun tp!1320889 () Bool)

(assert (=> b!4299372 (= e!2672312 (and tp!1320889 mapRes!20280))))

(declare-fun condMapEmpty!20280 () Bool)

(declare-fun mapDefault!20280 () List!48052)

(assert (=> b!4299372 (= condMapEmpty!20280 (= (arr!7216 (_values!4796 (v!41887 (underlying!9259 (v!41888 (underlying!9260 hm!64)))))) ((as const (Array (_ BitVec 32) List!48052)) mapDefault!20280)))))

(declare-fun b!4299373 () Bool)

(declare-fun e!2672317 () Bool)

(declare-fun e!2672322 () Bool)

(assert (=> b!4299373 (= e!2672317 e!2672322)))

(declare-fun res!1762116 () Bool)

(assert (=> b!4299373 (=> (not res!1762116) (not e!2672322))))

(declare-fun lt!1521223 () ListMap!1469)

(declare-fun p!6034 () Int)

(declare-fun forall!8623 (List!48052 Int) Bool)

(assert (=> b!4299373 (= res!1762116 (forall!8623 (toList!2187 lt!1521223) p!6034))))

(assert (=> b!4299373 (= lt!1521223 (map!9887 hm!64))))

(declare-fun b!4299374 () Bool)

(declare-fun e!2672316 () Bool)

(assert (=> b!4299374 (= e!2672316 e!2672315)))

(declare-fun res!1762118 () Bool)

(assert (=> b!4299374 (=> (not res!1762118) (not e!2672315))))

(assert (=> b!4299374 (= res!1762118 (_1!26207 lt!1521219))))

(declare-fun k0!1716 () K!9034)

(declare-fun v!9471 () V!9236)

(declare-fun update!324 (MutableMap!4421 K!9034 V!9236) tuple2!45856)

(assert (=> b!4299374 (= lt!1521219 (update!324 hm!64 k0!1716 v!9471))))

(declare-fun lt!1521220 () tuple2!45854)

(declare-fun +!166 (ListMap!1469 tuple2!45854) ListMap!1469)

(assert (=> b!4299374 (= lt!1521224 (+!166 lt!1521223 lt!1521220))))

(declare-fun mapNonEmpty!20280 () Bool)

(declare-fun tp!1320888 () Bool)

(declare-fun tp!1320891 () Bool)

(assert (=> mapNonEmpty!20280 (= mapRes!20280 (and tp!1320888 tp!1320891))))

(declare-fun mapKey!20280 () (_ BitVec 32))

(declare-fun mapValue!20280 () List!48052)

(declare-fun mapRest!20280 () (Array (_ BitVec 32) List!48052))

(assert (=> mapNonEmpty!20280 (= (arr!7216 (_values!4796 (v!41887 (underlying!9259 (v!41888 (underlying!9260 hm!64)))))) (store mapRest!20280 mapKey!20280 mapValue!20280))))

(declare-fun b!4299375 () Bool)

(assert (=> b!4299375 (= e!2672322 e!2672316)))

(declare-fun res!1762119 () Bool)

(assert (=> b!4299375 (=> (not res!1762119) (not e!2672316))))

(declare-fun dynLambda!20355 (Int tuple2!45854) Bool)

(assert (=> b!4299375 (= res!1762119 (dynLambda!20355 p!6034 lt!1521220))))

(assert (=> b!4299375 (= lt!1521220 (tuple2!45855 k0!1716 v!9471))))

(declare-fun b!4299376 () Bool)

(assert (=> b!4299376 (= e!2672315 (not (forall!8623 (toList!2187 lt!1521224) p!6034)))))

(declare-fun insertNoDuplicatedKeys!21 (List!48052 K!9034 V!9236) List!48052)

(assert (=> b!4299376 (forall!8623 (insertNoDuplicatedKeys!21 (toList!2187 lt!1521223) k0!1716 v!9471) p!6034)))

(declare-datatypes ((Unit!66749 0))(
  ( (Unit!66750) )
))
(declare-fun lt!1521221 () Unit!66749)

(declare-fun lemmaInsertNoDuplicatedKeysPreservesForall!11 (List!48052 K!9034 V!9236 Int) Unit!66749)

(assert (=> b!4299376 (= lt!1521221 (lemmaInsertNoDuplicatedKeysPreservesForall!11 (toList!2187 lt!1521223) k0!1716 v!9471 p!6034))))

(declare-fun e!2672313 () Bool)

(declare-fun e!2672321 () Bool)

(assert (=> b!4299377 (= e!2672313 (and e!2672321 tp!1320890))))

(declare-fun b!4299378 () Bool)

(assert (=> b!4299378 (= e!2672320 e!2672318)))

(declare-fun res!1762115 () Bool)

(assert (=> start!412796 (=> (not res!1762115) (not e!2672317))))

(get-info :version)

(assert (=> start!412796 (= res!1762115 ((_ is HashMap!4421) hm!64))))

(assert (=> start!412796 e!2672317))

(assert (=> start!412796 e!2672313))

(declare-fun tp_is_empty!23233 () Bool)

(assert (=> start!412796 tp_is_empty!23233))

(declare-fun tp_is_empty!23235 () Bool)

(assert (=> start!412796 tp_is_empty!23235))

(assert (=> start!412796 tp!1320886))

(declare-fun b!4299379 () Bool)

(declare-fun res!1762117 () Bool)

(assert (=> b!4299379 (=> (not res!1762117) (not e!2672317))))

(declare-fun valid!3494 (MutableMap!4421) Bool)

(assert (=> b!4299379 (= res!1762117 (valid!3494 hm!64))))

(declare-fun b!4299380 () Bool)

(declare-fun lt!1521222 () MutLongMap!4515)

(assert (=> b!4299380 (= e!2672321 (and e!2672319 ((_ is LongMap!4515) lt!1521222)))))

(assert (=> b!4299380 (= lt!1521222 (v!41888 (underlying!9260 hm!64)))))

(assert (= (and start!412796 res!1762115) b!4299379))

(assert (= (and b!4299379 res!1762117) b!4299373))

(assert (= (and b!4299373 res!1762116) b!4299375))

(assert (= (and b!4299375 res!1762119) b!4299374))

(assert (= (and b!4299374 res!1762118) b!4299371))

(assert (= (and b!4299371 res!1762114) b!4299376))

(assert (= (and b!4299372 condMapEmpty!20280) mapIsEmpty!20280))

(assert (= (and b!4299372 (not condMapEmpty!20280)) mapNonEmpty!20280))

(assert (= b!4299370 b!4299372))

(assert (= b!4299378 b!4299370))

(assert (= b!4299369 b!4299378))

(assert (= (and b!4299380 ((_ is LongMap!4515) (v!41888 (underlying!9260 hm!64)))) b!4299369))

(assert (= b!4299377 b!4299380))

(assert (= (and start!412796 ((_ is HashMap!4421) hm!64)) b!4299377))

(declare-fun b_lambda!126285 () Bool)

(assert (=> (not b_lambda!126285) (not b!4299375)))

(declare-fun t!354748 () Bool)

(declare-fun tb!257181 () Bool)

(assert (=> (and start!412796 (= p!6034 p!6034) t!354748) tb!257181))

(declare-fun result!314450 () Bool)

(assert (=> tb!257181 (= result!314450 true)))

(assert (=> b!4299375 t!354748))

(declare-fun b_and!339299 () Bool)

(assert (= b_and!339295 (and (=> t!354748 result!314450) b_and!339299)))

(declare-fun m!4891525 () Bool)

(assert (=> b!4299370 m!4891525))

(declare-fun m!4891527 () Bool)

(assert (=> b!4299370 m!4891527))

(declare-fun m!4891529 () Bool)

(assert (=> b!4299376 m!4891529))

(declare-fun m!4891531 () Bool)

(assert (=> b!4299376 m!4891531))

(assert (=> b!4299376 m!4891531))

(declare-fun m!4891533 () Bool)

(assert (=> b!4299376 m!4891533))

(declare-fun m!4891535 () Bool)

(assert (=> b!4299376 m!4891535))

(declare-fun m!4891537 () Bool)

(assert (=> b!4299371 m!4891537))

(assert (=> b!4299371 m!4891537))

(declare-fun m!4891539 () Bool)

(assert (=> b!4299371 m!4891539))

(declare-fun m!4891541 () Bool)

(assert (=> mapNonEmpty!20280 m!4891541))

(declare-fun m!4891543 () Bool)

(assert (=> b!4299379 m!4891543))

(declare-fun m!4891545 () Bool)

(assert (=> b!4299374 m!4891545))

(declare-fun m!4891547 () Bool)

(assert (=> b!4299374 m!4891547))

(declare-fun m!4891549 () Bool)

(assert (=> b!4299373 m!4891549))

(declare-fun m!4891551 () Bool)

(assert (=> b!4299373 m!4891551))

(declare-fun m!4891553 () Bool)

(assert (=> b!4299375 m!4891553))

(check-sat (not b!4299379) (not b!4299371) (not b!4299372) b_and!339299 b_and!339297 (not b!4299376) tp_is_empty!23235 (not b!4299370) (not mapNonEmpty!20280) (not b!4299373) (not b_next!128697) (not b!4299374) tp_is_empty!23233 (not b_next!128693) b_and!339293 (not b_lambda!126285) (not b_next!128695))
(check-sat (not b_next!128697) b_and!339299 b_and!339297 (not b_next!128695) (not b_next!128693) b_and!339293)
(get-model)

(declare-fun b_lambda!126287 () Bool)

(assert (= b_lambda!126285 (or (and start!412796 b_free!127991) b_lambda!126287)))

(check-sat (not b!4299379) (not b!4299371) (not b!4299372) b_and!339299 b_and!339297 (not b!4299376) (not b_next!128695) tp_is_empty!23235 (not b!4299370) (not mapNonEmpty!20280) (not b_next!128697) (not b_lambda!126287) (not b!4299373) (not b!4299374) tp_is_empty!23233 (not b_next!128693) b_and!339293)
(check-sat (not b_next!128697) b_and!339299 b_and!339297 (not b_next!128695) (not b_next!128693) b_and!339293)
(get-model)

(declare-fun d!1266520 () Bool)

(declare-fun res!1762124 () Bool)

(declare-fun e!2672327 () Bool)

(assert (=> d!1266520 (=> res!1762124 e!2672327)))

(assert (=> d!1266520 (= res!1762124 ((_ is Nil!47928) (toList!2187 lt!1521224)))))

(assert (=> d!1266520 (= (forall!8623 (toList!2187 lt!1521224) p!6034) e!2672327)))

(declare-fun b!4299385 () Bool)

(declare-fun e!2672328 () Bool)

(assert (=> b!4299385 (= e!2672327 e!2672328)))

(declare-fun res!1762125 () Bool)

(assert (=> b!4299385 (=> (not res!1762125) (not e!2672328))))

(assert (=> b!4299385 (= res!1762125 (dynLambda!20355 p!6034 (h!53348 (toList!2187 lt!1521224))))))

(declare-fun b!4299386 () Bool)

(assert (=> b!4299386 (= e!2672328 (forall!8623 (t!354749 (toList!2187 lt!1521224)) p!6034))))

(assert (= (and d!1266520 (not res!1762124)) b!4299385))

(assert (= (and b!4299385 res!1762125) b!4299386))

(declare-fun b_lambda!126289 () Bool)

(assert (=> (not b_lambda!126289) (not b!4299385)))

(declare-fun t!354751 () Bool)

(declare-fun tb!257183 () Bool)

(assert (=> (and start!412796 (= p!6034 p!6034) t!354751) tb!257183))

(declare-fun result!314452 () Bool)

(assert (=> tb!257183 (= result!314452 true)))

(assert (=> b!4299385 t!354751))

(declare-fun b_and!339301 () Bool)

(assert (= b_and!339299 (and (=> t!354751 result!314452) b_and!339301)))

(declare-fun m!4891555 () Bool)

(assert (=> b!4299385 m!4891555))

(declare-fun m!4891557 () Bool)

(assert (=> b!4299386 m!4891557))

(assert (=> b!4299376 d!1266520))

(declare-fun d!1266522 () Bool)

(declare-fun res!1762126 () Bool)

(declare-fun e!2672329 () Bool)

(assert (=> d!1266522 (=> res!1762126 e!2672329)))

(assert (=> d!1266522 (= res!1762126 ((_ is Nil!47928) (insertNoDuplicatedKeys!21 (toList!2187 lt!1521223) k0!1716 v!9471)))))

(assert (=> d!1266522 (= (forall!8623 (insertNoDuplicatedKeys!21 (toList!2187 lt!1521223) k0!1716 v!9471) p!6034) e!2672329)))

(declare-fun b!4299387 () Bool)

(declare-fun e!2672330 () Bool)

(assert (=> b!4299387 (= e!2672329 e!2672330)))

(declare-fun res!1762127 () Bool)

(assert (=> b!4299387 (=> (not res!1762127) (not e!2672330))))

(assert (=> b!4299387 (= res!1762127 (dynLambda!20355 p!6034 (h!53348 (insertNoDuplicatedKeys!21 (toList!2187 lt!1521223) k0!1716 v!9471))))))

(declare-fun b!4299388 () Bool)

(assert (=> b!4299388 (= e!2672330 (forall!8623 (t!354749 (insertNoDuplicatedKeys!21 (toList!2187 lt!1521223) k0!1716 v!9471)) p!6034))))

(assert (= (and d!1266522 (not res!1762126)) b!4299387))

(assert (= (and b!4299387 res!1762127) b!4299388))

(declare-fun b_lambda!126291 () Bool)

(assert (=> (not b_lambda!126291) (not b!4299387)))

(declare-fun t!354753 () Bool)

(declare-fun tb!257185 () Bool)

(assert (=> (and start!412796 (= p!6034 p!6034) t!354753) tb!257185))

(declare-fun result!314454 () Bool)

(assert (=> tb!257185 (= result!314454 true)))

(assert (=> b!4299387 t!354753))

(declare-fun b_and!339303 () Bool)

(assert (= b_and!339301 (and (=> t!354753 result!314454) b_and!339303)))

(declare-fun m!4891559 () Bool)

(assert (=> b!4299387 m!4891559))

(declare-fun m!4891561 () Bool)

(assert (=> b!4299388 m!4891561))

(assert (=> b!4299376 d!1266522))

(declare-fun b!4299417 () Bool)

(declare-fun e!2672349 () List!48052)

(declare-fun call!295798 () List!48052)

(assert (=> b!4299417 (= e!2672349 call!295798)))

(declare-fun b!4299418 () Bool)

(declare-fun res!1762136 () Bool)

(declare-fun e!2672346 () Bool)

(assert (=> b!4299418 (=> (not res!1762136) (not e!2672346))))

(declare-fun lt!1521250 () List!48052)

(declare-fun containsKey!229 (List!48052 K!9034) Bool)

(assert (=> b!4299418 (= res!1762136 (containsKey!229 lt!1521250 k0!1716))))

(declare-fun b!4299419 () Bool)

(declare-datatypes ((List!48053 0))(
  ( (Nil!47929) (Cons!47929 (h!53349 K!9034) (t!354756 List!48053)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7528 (List!48053) (InoxSet K!9034))

(declare-fun getKeysList!31 (List!48052) List!48053)

(assert (=> b!4299419 (= e!2672346 (= (content!7528 (getKeysList!31 lt!1521250)) ((_ map or) (content!7528 (getKeysList!31 (toList!2187 lt!1521223))) (store ((as const (Array K!9034 Bool)) false) k0!1716 true))))))

(declare-fun b!4299420 () Bool)

(declare-fun e!2672345 () List!48052)

(declare-fun call!295799 () List!48052)

(assert (=> b!4299420 (= e!2672345 call!295799)))

(declare-fun lt!1521248 () List!48053)

(declare-fun call!295797 () List!48053)

(assert (=> b!4299420 (= lt!1521248 call!295797)))

(declare-fun lt!1521251 () Unit!66749)

(declare-fun lemmaSubseqRefl!58 (List!48053) Unit!66749)

(assert (=> b!4299420 (= lt!1521251 (lemmaSubseqRefl!58 lt!1521248))))

(declare-fun subseq!574 (List!48053 List!48053) Bool)

(assert (=> b!4299420 (subseq!574 lt!1521248 lt!1521248)))

(declare-fun lt!1521254 () Unit!66749)

(assert (=> b!4299420 (= lt!1521254 lt!1521251)))

(declare-fun c!731345 () Bool)

(declare-fun bm!295792 () Bool)

(declare-fun c!731347 () Bool)

(declare-fun c!731346 () Bool)

(declare-fun e!2672348 () List!48052)

(declare-fun $colon$colon!654 (List!48052 tuple2!45854) List!48052)

(assert (=> bm!295792 (= call!295799 ($colon$colon!654 (ite c!731347 (t!354749 (toList!2187 lt!1521223)) (ite c!731346 (toList!2187 lt!1521223) e!2672348)) (ite (or c!731347 c!731346) (tuple2!45855 k0!1716 v!9471) (ite c!731345 (h!53348 (toList!2187 lt!1521223)) (tuple2!45855 k0!1716 v!9471)))))))

(declare-fun d!1266524 () Bool)

(assert (=> d!1266524 e!2672346))

(declare-fun res!1762138 () Bool)

(assert (=> d!1266524 (=> (not res!1762138) (not e!2672346))))

(declare-fun invariantList!537 (List!48052) Bool)

(assert (=> d!1266524 (= res!1762138 (invariantList!537 lt!1521250))))

(assert (=> d!1266524 (= lt!1521250 e!2672345)))

(assert (=> d!1266524 (= c!731347 (and ((_ is Cons!47928) (toList!2187 lt!1521223)) (= (_1!26206 (h!53348 (toList!2187 lt!1521223))) k0!1716)))))

(assert (=> d!1266524 (invariantList!537 (toList!2187 lt!1521223))))

(assert (=> d!1266524 (= (insertNoDuplicatedKeys!21 (toList!2187 lt!1521223) k0!1716 v!9471) lt!1521250)))

(declare-fun b!4299421 () Bool)

(assert (=> b!4299421 (= e!2672348 Nil!47928)))

(declare-fun b!4299422 () Bool)

(declare-fun e!2672351 () List!48052)

(declare-fun lt!1521256 () List!48052)

(assert (=> b!4299422 (= e!2672351 lt!1521256)))

(declare-fun call!295800 () List!48052)

(assert (=> b!4299422 (= lt!1521256 call!295800)))

(declare-fun c!731343 () Bool)

(assert (=> b!4299422 (= c!731343 (containsKey!229 (insertNoDuplicatedKeys!21 (t!354749 (toList!2187 lt!1521223)) k0!1716 v!9471) (_1!26206 (h!53348 (toList!2187 lt!1521223)))))))

(declare-fun lt!1521247 () Unit!66749)

(declare-fun e!2672350 () Unit!66749)

(assert (=> b!4299422 (= lt!1521247 e!2672350)))

(declare-fun b!4299423 () Bool)

(assert (=> b!4299423 (= e!2672348 (insertNoDuplicatedKeys!21 (t!354749 (toList!2187 lt!1521223)) k0!1716 v!9471))))

(declare-fun b!4299424 () Bool)

(assert (=> b!4299424 false))

(declare-fun lt!1521257 () Unit!66749)

(declare-fun lt!1521249 () Unit!66749)

(assert (=> b!4299424 (= lt!1521257 lt!1521249)))

(assert (=> b!4299424 (containsKey!229 (t!354749 (toList!2187 lt!1521223)) (_1!26206 (h!53348 (toList!2187 lt!1521223))))))

(declare-fun lemmaInGetKeysListThenContainsKey!28 (List!48052 K!9034) Unit!66749)

(assert (=> b!4299424 (= lt!1521249 (lemmaInGetKeysListThenContainsKey!28 (t!354749 (toList!2187 lt!1521223)) (_1!26206 (h!53348 (toList!2187 lt!1521223)))))))

(declare-fun lt!1521255 () Unit!66749)

(declare-fun lt!1521252 () Unit!66749)

(assert (=> b!4299424 (= lt!1521255 lt!1521252)))

(declare-fun contains!9848 (List!48053 K!9034) Bool)

(assert (=> b!4299424 (contains!9848 call!295797 (_1!26206 (h!53348 (toList!2187 lt!1521223))))))

(declare-fun lt!1521253 () List!48052)

(declare-fun lemmaInListThenGetKeysListContains!28 (List!48052 K!9034) Unit!66749)

(assert (=> b!4299424 (= lt!1521252 (lemmaInListThenGetKeysListContains!28 lt!1521253 (_1!26206 (h!53348 (toList!2187 lt!1521223)))))))

(assert (=> b!4299424 (= lt!1521253 (insertNoDuplicatedKeys!21 (t!354749 (toList!2187 lt!1521223)) k0!1716 v!9471))))

(declare-fun Unit!66751 () Unit!66749)

(assert (=> b!4299424 (= e!2672350 Unit!66751)))

(declare-fun b!4299425 () Bool)

(assert (=> b!4299425 (= c!731345 ((_ is Cons!47928) (toList!2187 lt!1521223)))))

(assert (=> b!4299425 (= e!2672349 e!2672351)))

(declare-fun b!4299426 () Bool)

(declare-fun e!2672347 () Bool)

(assert (=> b!4299426 (= e!2672347 (not (containsKey!229 (toList!2187 lt!1521223) k0!1716)))))

(declare-fun b!4299427 () Bool)

(assert (=> b!4299427 (= e!2672345 e!2672349)))

(declare-fun res!1762137 () Bool)

(assert (=> b!4299427 (= res!1762137 ((_ is Cons!47928) (toList!2187 lt!1521223)))))

(assert (=> b!4299427 (=> (not res!1762137) (not e!2672347))))

(assert (=> b!4299427 (= c!731346 e!2672347)))

(declare-fun b!4299428 () Bool)

(declare-fun res!1762139 () Bool)

(assert (=> b!4299428 (=> (not res!1762139) (not e!2672346))))

(declare-fun contains!9849 (List!48052 tuple2!45854) Bool)

(assert (=> b!4299428 (= res!1762139 (contains!9849 lt!1521250 (tuple2!45855 k0!1716 v!9471)))))

(declare-fun b!4299429 () Bool)

(assert (=> b!4299429 (= e!2672351 call!295800)))

(declare-fun b!4299430 () Bool)

(declare-fun Unit!66752 () Unit!66749)

(assert (=> b!4299430 (= e!2672350 Unit!66752)))

(declare-fun bm!295793 () Bool)

(assert (=> bm!295793 (= call!295800 call!295798)))

(declare-fun c!731344 () Bool)

(assert (=> bm!295793 (= c!731344 c!731345)))

(declare-fun bm!295794 () Bool)

(assert (=> bm!295794 (= call!295798 call!295799)))

(declare-fun bm!295795 () Bool)

(assert (=> bm!295795 (= call!295797 (getKeysList!31 (ite c!731347 (toList!2187 lt!1521223) lt!1521253)))))

(assert (= (and d!1266524 c!731347) b!4299420))

(assert (= (and d!1266524 (not c!731347)) b!4299427))

(assert (= (and b!4299427 res!1762137) b!4299426))

(assert (= (and b!4299427 c!731346) b!4299417))

(assert (= (and b!4299427 (not c!731346)) b!4299425))

(assert (= (and b!4299425 c!731345) b!4299422))

(assert (= (and b!4299425 (not c!731345)) b!4299429))

(assert (= (and b!4299422 c!731343) b!4299424))

(assert (= (and b!4299422 (not c!731343)) b!4299430))

(assert (= (or b!4299422 b!4299429) bm!295793))

(assert (= (and bm!295793 c!731344) b!4299423))

(assert (= (and bm!295793 (not c!731344)) b!4299421))

(assert (= (or b!4299417 bm!295793) bm!295794))

(assert (= (or b!4299420 b!4299424) bm!295795))

(assert (= (or b!4299420 bm!295794) bm!295792))

(assert (= (and d!1266524 res!1762138) b!4299418))

(assert (= (and b!4299418 res!1762136) b!4299428))

(assert (= (and b!4299428 res!1762139) b!4299419))

(declare-fun m!4891563 () Bool)

(assert (=> b!4299424 m!4891563))

(declare-fun m!4891565 () Bool)

(assert (=> b!4299424 m!4891565))

(declare-fun m!4891567 () Bool)

(assert (=> b!4299424 m!4891567))

(declare-fun m!4891569 () Bool)

(assert (=> b!4299424 m!4891569))

(declare-fun m!4891571 () Bool)

(assert (=> b!4299424 m!4891571))

(declare-fun m!4891573 () Bool)

(assert (=> b!4299426 m!4891573))

(declare-fun m!4891575 () Bool)

(assert (=> d!1266524 m!4891575))

(declare-fun m!4891577 () Bool)

(assert (=> d!1266524 m!4891577))

(assert (=> b!4299422 m!4891567))

(assert (=> b!4299422 m!4891567))

(declare-fun m!4891579 () Bool)

(assert (=> b!4299422 m!4891579))

(assert (=> b!4299423 m!4891567))

(declare-fun m!4891581 () Bool)

(assert (=> b!4299418 m!4891581))

(declare-fun m!4891583 () Bool)

(assert (=> b!4299419 m!4891583))

(declare-fun m!4891585 () Bool)

(assert (=> b!4299419 m!4891585))

(assert (=> b!4299419 m!4891583))

(declare-fun m!4891587 () Bool)

(assert (=> b!4299419 m!4891587))

(declare-fun m!4891589 () Bool)

(assert (=> b!4299419 m!4891589))

(declare-fun m!4891591 () Bool)

(assert (=> b!4299419 m!4891591))

(assert (=> b!4299419 m!4891589))

(declare-fun m!4891593 () Bool)

(assert (=> b!4299420 m!4891593))

(declare-fun m!4891595 () Bool)

(assert (=> b!4299420 m!4891595))

(declare-fun m!4891597 () Bool)

(assert (=> bm!295795 m!4891597))

(declare-fun m!4891599 () Bool)

(assert (=> b!4299428 m!4891599))

(declare-fun m!4891601 () Bool)

(assert (=> bm!295792 m!4891601))

(assert (=> b!4299376 d!1266524))

(declare-fun d!1266526 () Bool)

(assert (=> d!1266526 (forall!8623 (insertNoDuplicatedKeys!21 (toList!2187 lt!1521223) k0!1716 v!9471) p!6034)))

(declare-fun lt!1521260 () Unit!66749)

(declare-fun choose!26168 (List!48052 K!9034 V!9236 Int) Unit!66749)

(assert (=> d!1266526 (= lt!1521260 (choose!26168 (toList!2187 lt!1521223) k0!1716 v!9471 p!6034))))

(assert (=> d!1266526 (invariantList!537 (toList!2187 lt!1521223))))

(assert (=> d!1266526 (= (lemmaInsertNoDuplicatedKeysPreservesForall!11 (toList!2187 lt!1521223) k0!1716 v!9471 p!6034) lt!1521260)))

(declare-fun bs!603939 () Bool)

(assert (= bs!603939 d!1266526))

(assert (=> bs!603939 m!4891531))

(assert (=> bs!603939 m!4891531))

(assert (=> bs!603939 m!4891533))

(declare-fun m!4891603 () Bool)

(assert (=> bs!603939 m!4891603))

(assert (=> bs!603939 m!4891577))

(assert (=> b!4299376 d!1266526))

(declare-fun d!1266528 () Bool)

(declare-fun res!1762140 () Bool)

(declare-fun e!2672352 () Bool)

(assert (=> d!1266528 (=> res!1762140 e!2672352)))

(assert (=> d!1266528 (= res!1762140 ((_ is Nil!47928) (toList!2187 lt!1521223)))))

(assert (=> d!1266528 (= (forall!8623 (toList!2187 lt!1521223) p!6034) e!2672352)))

(declare-fun b!4299431 () Bool)

(declare-fun e!2672353 () Bool)

(assert (=> b!4299431 (= e!2672352 e!2672353)))

(declare-fun res!1762141 () Bool)

(assert (=> b!4299431 (=> (not res!1762141) (not e!2672353))))

(assert (=> b!4299431 (= res!1762141 (dynLambda!20355 p!6034 (h!53348 (toList!2187 lt!1521223))))))

(declare-fun b!4299432 () Bool)

(assert (=> b!4299432 (= e!2672353 (forall!8623 (t!354749 (toList!2187 lt!1521223)) p!6034))))

(assert (= (and d!1266528 (not res!1762140)) b!4299431))

(assert (= (and b!4299431 res!1762141) b!4299432))

(declare-fun b_lambda!126293 () Bool)

(assert (=> (not b_lambda!126293) (not b!4299431)))

(declare-fun t!354755 () Bool)

(declare-fun tb!257187 () Bool)

(assert (=> (and start!412796 (= p!6034 p!6034) t!354755) tb!257187))

(declare-fun result!314456 () Bool)

(assert (=> tb!257187 (= result!314456 true)))

(assert (=> b!4299431 t!354755))

(declare-fun b_and!339305 () Bool)

(assert (= b_and!339303 (and (=> t!354755 result!314456) b_and!339305)))

(declare-fun m!4891605 () Bool)

(assert (=> b!4299431 m!4891605))

(declare-fun m!4891607 () Bool)

(assert (=> b!4299432 m!4891607))

(assert (=> b!4299373 d!1266528))

(declare-fun d!1266530 () Bool)

(declare-fun lt!1521263 () ListMap!1469)

(assert (=> d!1266530 (invariantList!537 (toList!2187 lt!1521263))))

(declare-datatypes ((tuple2!45858 0))(
  ( (tuple2!45859 (_1!26208 (_ BitVec 64)) (_2!26208 List!48052)) )
))
(declare-datatypes ((List!48054 0))(
  ( (Nil!47930) (Cons!47930 (h!53350 tuple2!45858) (t!354757 List!48054)) )
))
(declare-fun extractMap!268 (List!48054) ListMap!1469)

(declare-datatypes ((ListLongMap!799 0))(
  ( (ListLongMap!800 (toList!2188 List!48054)) )
))
(declare-fun map!9888 (MutLongMap!4515) ListLongMap!799)

(assert (=> d!1266530 (= lt!1521263 (extractMap!268 (toList!2188 (map!9888 (v!41888 (underlying!9260 hm!64))))))))

(assert (=> d!1266530 (valid!3494 hm!64)))

(assert (=> d!1266530 (= (map!9887 hm!64) lt!1521263)))

(declare-fun bs!603940 () Bool)

(assert (= bs!603940 d!1266530))

(declare-fun m!4891609 () Bool)

(assert (=> bs!603940 m!4891609))

(declare-fun m!4891611 () Bool)

(assert (=> bs!603940 m!4891611))

(declare-fun m!4891613 () Bool)

(assert (=> bs!603940 m!4891613))

(assert (=> bs!603940 m!4891543))

(assert (=> b!4299373 d!1266530))

(declare-fun bs!603941 () Bool)

(declare-fun b!4299475 () Bool)

(declare-fun b!4299474 () Bool)

(assert (= bs!603941 (and b!4299475 b!4299474)))

(declare-fun lambda!131934 () Int)

(declare-fun lambda!131933 () Int)

(assert (=> bs!603941 (= lambda!131934 lambda!131933)))

(declare-fun b!4299471 () Bool)

(declare-fun e!2672378 () Unit!66749)

(declare-fun Unit!66753 () Unit!66749)

(assert (=> b!4299471 (= e!2672378 Unit!66753)))

(declare-fun bm!295858 () Bool)

(declare-fun call!295869 () ListLongMap!799)

(declare-datatypes ((tuple2!45860 0))(
  ( (tuple2!45861 (_1!26209 Bool) (_2!26209 MutLongMap!4515)) )
))
(declare-fun lt!1521402 () tuple2!45860)

(declare-fun lt!1521409 () tuple2!45860)

(declare-fun c!731366 () Bool)

(assert (=> bm!295858 (= call!295869 (map!9888 (ite c!731366 (_2!26209 lt!1521402) (_2!26209 lt!1521409))))))

(declare-fun bm!295859 () Bool)

(declare-fun lt!1521403 () (_ BitVec 64))

(declare-fun lt!1521393 () (_ BitVec 64))

(declare-fun call!295873 () Unit!66749)

(declare-fun lt!1521391 () List!48052)

(declare-fun lt!1521426 () List!48052)

(declare-fun lemmaRemovePairForKeyPreservesHash!107 (List!48052 K!9034 (_ BitVec 64) Hashable!4431) Unit!66749)

(assert (=> bm!295859 (= call!295873 (lemmaRemovePairForKeyPreservesHash!107 (ite c!731366 lt!1521391 lt!1521426) k0!1716 (ite c!731366 lt!1521403 lt!1521393) (hashF!6463 hm!64)))))

(declare-fun b!4299472 () Bool)

(declare-fun e!2672380 () ListMap!1469)

(declare-fun call!295892 () ListMap!1469)

(assert (=> b!4299472 (= e!2672380 (+!166 call!295892 (tuple2!45855 k0!1716 v!9471)))))

(declare-fun bm!295860 () Bool)

(declare-fun call!295872 () (_ BitVec 64))

(declare-fun hash!836 (Hashable!4431 K!9034) (_ BitVec 64))

(assert (=> bm!295860 (= call!295872 (hash!836 (hashF!6463 hm!64) k0!1716))))

(declare-fun lt!1521389 () ListMap!1469)

(declare-fun call!295882 () Bool)

(declare-fun lt!1521395 () ListMap!1469)

(declare-fun bm!295861 () Bool)

(declare-fun contains!9850 (ListMap!1469 K!9034) Bool)

(assert (=> bm!295861 (= call!295882 (contains!9850 (ite c!731366 lt!1521395 lt!1521389) k0!1716))))

(declare-fun lt!1521425 () MutableMap!4421)

(declare-fun b!4299473 () Bool)

(declare-fun e!2672379 () tuple2!45856)

(declare-datatypes ((tuple2!45862 0))(
  ( (tuple2!45863 (_1!26210 Unit!66749) (_2!26210 MutableMap!4421)) )
))
(declare-fun Unit!66754 () Unit!66749)

(declare-fun Unit!66755 () Unit!66749)

(assert (=> b!4299473 (= e!2672379 (tuple2!45857 (_1!26209 lt!1521409) (_2!26210 (ite (_1!26209 lt!1521409) (tuple2!45863 Unit!66754 (HashMap!4421 (Cell!17872 (_2!26209 lt!1521409)) (hashF!6463 hm!64) (bvadd (_size!9074 hm!64) #b00000000000000000000000000000001) (defaultValue!4592 hm!64))) (tuple2!45863 Unit!66755 lt!1521425)))))))

(assert (=> b!4299473 (= lt!1521393 call!295872)))

(declare-fun c!731368 () Bool)

(declare-fun contains!9851 (MutLongMap!4515 (_ BitVec 64)) Bool)

(assert (=> b!4299473 (= c!731368 (contains!9851 (v!41888 (underlying!9260 hm!64)) lt!1521393))))

(declare-fun e!2672386 () List!48052)

(assert (=> b!4299473 (= lt!1521426 e!2672386)))

(declare-fun lt!1521410 () List!48052)

(assert (=> b!4299473 (= lt!1521410 (Cons!47928 (tuple2!45855 k0!1716 v!9471) lt!1521426))))

(declare-fun call!295890 () tuple2!45860)

(assert (=> b!4299473 (= lt!1521409 call!295890)))

(assert (=> b!4299473 (= lt!1521425 (HashMap!4421 (Cell!17872 (_2!26209 lt!1521409)) (hashF!6463 hm!64) (_size!9074 hm!64) (defaultValue!4592 hm!64)))))

(declare-fun c!731364 () Bool)

(assert (=> b!4299473 (= c!731364 (_1!26209 lt!1521409))))

(declare-fun lt!1521388 () Unit!66749)

(declare-fun e!2672381 () Unit!66749)

(assert (=> b!4299473 (= lt!1521388 e!2672381)))

(declare-fun lt!1521406 () ListLongMap!799)

(declare-fun bm!295862 () Bool)

(declare-fun lt!1521408 () ListLongMap!799)

(declare-fun call!295891 () Bool)

(declare-fun forall!8624 (List!48054 Int) Bool)

(assert (=> bm!295862 (= call!295891 (forall!8624 (ite c!731366 (toList!2188 lt!1521408) (toList!2188 lt!1521406)) (ite c!731366 lambda!131933 lambda!131934)))))

(declare-fun call!295881 () Bool)

(assert (=> b!4299474 call!295881))

(declare-fun lt!1521385 () Unit!66749)

(declare-fun Unit!66756 () Unit!66749)

(assert (=> b!4299474 (= lt!1521385 Unit!66756)))

(declare-fun call!295866 () Bool)

(assert (=> b!4299474 call!295866))

(declare-fun lt!1521377 () Unit!66749)

(declare-fun Unit!66757 () Unit!66749)

(assert (=> b!4299474 (= lt!1521377 Unit!66757)))

(declare-fun call!295885 () Bool)

(assert (=> b!4299474 call!295885))

(declare-fun lt!1521398 () Unit!66749)

(declare-fun lt!1521397 () Unit!66749)

(assert (=> b!4299474 (= lt!1521398 lt!1521397)))

(declare-fun call!295888 () Bool)

(assert (=> b!4299474 (= call!295882 call!295888)))

(declare-fun call!295884 () Unit!66749)

(assert (=> b!4299474 (= lt!1521397 call!295884)))

(declare-fun lt!1521427 () ListMap!1469)

(declare-fun call!295893 () ListMap!1469)

(assert (=> b!4299474 (= lt!1521427 call!295893)))

(declare-fun call!295889 () ListMap!1469)

(assert (=> b!4299474 (= lt!1521395 call!295889)))

(declare-fun lt!1521414 () Unit!66749)

(declare-fun lt!1521381 () Unit!66749)

(assert (=> b!4299474 (= lt!1521414 lt!1521381)))

(declare-fun call!295875 () Bool)

(assert (=> b!4299474 call!295875))

(declare-fun lt!1521416 () ListLongMap!799)

(declare-fun lt!1521417 () List!48052)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!32 (ListLongMap!799 (_ BitVec 64) List!48052 K!9034 V!9236 Hashable!4431) Unit!66749)

(assert (=> b!4299474 (= lt!1521381 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!32 lt!1521416 lt!1521403 lt!1521417 k0!1716 v!9471 (hashF!6463 hm!64)))))

(declare-fun lt!1521376 () Unit!66749)

(declare-fun lt!1521424 () Unit!66749)

(assert (=> b!4299474 (= lt!1521376 lt!1521424)))

(declare-fun e!2672384 () Bool)

(assert (=> b!4299474 e!2672384))

(declare-fun res!1762153 () Bool)

(assert (=> b!4299474 (=> (not res!1762153) (not e!2672384))))

(assert (=> b!4299474 (= res!1762153 call!295891)))

(declare-fun call!295867 () ListLongMap!799)

(assert (=> b!4299474 (= lt!1521408 call!295867)))

(declare-fun call!295880 () Unit!66749)

(assert (=> b!4299474 (= lt!1521424 call!295880)))

(declare-fun lt!1521401 () Unit!66749)

(declare-fun Unit!66758 () Unit!66749)

(assert (=> b!4299474 (= lt!1521401 Unit!66758)))

(declare-fun noDuplicateKeys!148 (List!48052) Bool)

(assert (=> b!4299474 (noDuplicateKeys!148 lt!1521417)))

(declare-fun lt!1521374 () Unit!66749)

(declare-fun Unit!66759 () Unit!66749)

(assert (=> b!4299474 (= lt!1521374 Unit!66759)))

(declare-fun call!295876 () List!48052)

(declare-fun containsKey!230 (List!48052 K!9034) Bool)

(assert (=> b!4299474 (not (containsKey!230 call!295876 k0!1716))))

(declare-fun lt!1521387 () Unit!66749)

(declare-fun Unit!66760 () Unit!66749)

(assert (=> b!4299474 (= lt!1521387 Unit!66760)))

(declare-fun lt!1521413 () Unit!66749)

(declare-fun lt!1521421 () Unit!66749)

(assert (=> b!4299474 (= lt!1521413 lt!1521421)))

(assert (=> b!4299474 (noDuplicateKeys!148 call!295876)))

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!125 (List!48052 K!9034) Unit!66749)

(assert (=> b!4299474 (= lt!1521421 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!125 lt!1521391 k0!1716))))

(declare-fun lt!1521412 () Unit!66749)

(declare-fun lt!1521399 () Unit!66749)

(assert (=> b!4299474 (= lt!1521412 lt!1521399)))

(declare-fun call!295879 () Bool)

(assert (=> b!4299474 call!295879))

(assert (=> b!4299474 (= lt!1521399 call!295873)))

(declare-fun lt!1521390 () Unit!66749)

(declare-fun lt!1521396 () Unit!66749)

(assert (=> b!4299474 (= lt!1521390 lt!1521396)))

(declare-fun call!295868 () Bool)

(assert (=> b!4299474 call!295868))

(declare-fun call!295874 () Unit!66749)

(assert (=> b!4299474 (= lt!1521396 call!295874)))

(declare-fun e!2672385 () Unit!66749)

(declare-fun Unit!66761 () Unit!66749)

(assert (=> b!4299474 (= e!2672385 Unit!66761)))

(declare-fun call!295863 () ListMap!1469)

(assert (=> b!4299475 (contains!9850 call!295863 k0!1716)))

(declare-fun lt!1521428 () Unit!66749)

(declare-fun Unit!66762 () Unit!66749)

(assert (=> b!4299475 (= lt!1521428 Unit!66762)))

(assert (=> b!4299475 (contains!9850 call!295893 k0!1716)))

(declare-fun lt!1521392 () Unit!66749)

(declare-fun lt!1521384 () Unit!66749)

(assert (=> b!4299475 (= lt!1521392 lt!1521384)))

(assert (=> b!4299475 (= call!295888 call!295882)))

(assert (=> b!4299475 (= lt!1521384 call!295884)))

(assert (=> b!4299475 (= lt!1521389 call!295893)))

(declare-fun lt!1521420 () ListMap!1469)

(assert (=> b!4299475 (= lt!1521420 call!295863)))

(declare-fun lt!1521379 () Unit!66749)

(declare-fun Unit!66763 () Unit!66749)

(assert (=> b!4299475 (= lt!1521379 Unit!66763)))

(assert (=> b!4299475 call!295881))

(declare-fun lt!1521404 () Unit!66749)

(declare-fun Unit!66764 () Unit!66749)

(assert (=> b!4299475 (= lt!1521404 Unit!66764)))

(assert (=> b!4299475 call!295866))

(declare-fun lt!1521407 () Unit!66749)

(declare-fun Unit!66765 () Unit!66749)

(assert (=> b!4299475 (= lt!1521407 Unit!66765)))

(assert (=> b!4299475 call!295885))

(declare-fun lt!1521380 () Unit!66749)

(declare-fun lt!1521419 () Unit!66749)

(assert (=> b!4299475 (= lt!1521380 lt!1521419)))

(assert (=> b!4299475 call!295875))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!32 (ListLongMap!799 (_ BitVec 64) List!48052 K!9034 V!9236 Hashable!4431) Unit!66749)

(assert (=> b!4299475 (= lt!1521419 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!32 lt!1521416 lt!1521393 lt!1521410 k0!1716 v!9471 (hashF!6463 hm!64)))))

(declare-fun lt!1521394 () Unit!66749)

(declare-fun lt!1521405 () Unit!66749)

(assert (=> b!4299475 (= lt!1521394 lt!1521405)))

(declare-fun e!2672376 () Bool)

(assert (=> b!4299475 e!2672376))

(declare-fun res!1762156 () Bool)

(assert (=> b!4299475 (=> (not res!1762156) (not e!2672376))))

(assert (=> b!4299475 (= res!1762156 call!295891)))

(assert (=> b!4299475 (= lt!1521406 call!295867)))

(assert (=> b!4299475 (= lt!1521405 call!295880)))

(declare-fun lt!1521415 () Unit!66749)

(assert (=> b!4299475 (= lt!1521415 e!2672378)))

(declare-fun c!731363 () Bool)

(declare-fun isEmpty!28044 (List!48052) Bool)

(assert (=> b!4299475 (= c!731363 (not (isEmpty!28044 lt!1521426)))))

(declare-fun Unit!66766 () Unit!66749)

(assert (=> b!4299475 (= e!2672381 Unit!66766)))

(declare-fun bm!295863 () Bool)

(declare-fun update!325 (MutLongMap!4515 (_ BitVec 64) List!48052) tuple2!45860)

(assert (=> bm!295863 (= call!295890 (update!325 (v!41888 (underlying!9260 hm!64)) (ite c!731366 lt!1521403 lt!1521393) (ite c!731366 lt!1521417 lt!1521410)))))

(declare-fun bm!295864 () Bool)

(declare-fun allKeysSameHash!120 (List!48052 (_ BitVec 64) Hashable!4431) Bool)

(assert (=> bm!295864 (= call!295868 (allKeysSameHash!120 (ite c!731366 lt!1521391 lt!1521426) (ite c!731366 lt!1521403 lt!1521393) (hashF!6463 hm!64)))))

(declare-fun bm!295865 () Bool)

(declare-fun call!295870 () ListMap!1469)

(declare-fun call!295864 () ListMap!1469)

(assert (=> bm!295865 (= call!295875 (eq!98 call!295870 call!295864))))

(declare-fun call!295878 () ListMap!1469)

(declare-fun bm!295866 () Bool)

(declare-fun lt!1521386 () tuple2!45856)

(declare-fun c!731362 () Bool)

(assert (=> bm!295866 (= call!295878 (map!9887 (ite c!731362 (_2!26207 lt!1521386) hm!64)))))

(declare-fun b!4299476 () Bool)

(declare-fun res!1762154 () Bool)

(declare-fun e!2672383 () Bool)

(assert (=> b!4299476 (=> (not res!1762154) (not e!2672383))))

(assert (=> b!4299476 (= res!1762154 (valid!3494 (_2!26207 lt!1521386)))))

(declare-fun lt!1521411 () MutableMap!4421)

(declare-fun call!295887 () ListMap!1469)

(declare-fun bm!295867 () Bool)

(assert (=> bm!295867 (= call!295887 (map!9887 (ite c!731366 lt!1521411 lt!1521425)))))

(declare-fun b!4299477 () Bool)

(declare-fun lt!1521400 () ListMap!1469)

(assert (=> b!4299477 (= call!295889 lt!1521400)))

(declare-fun lt!1521418 () Unit!66749)

(declare-fun Unit!66767 () Unit!66749)

(assert (=> b!4299477 (= lt!1521418 Unit!66767)))

(declare-fun call!295883 () Bool)

(assert (=> b!4299477 call!295883))

(declare-fun Unit!66768 () Unit!66749)

(assert (=> b!4299477 (= e!2672385 Unit!66768)))

(declare-fun bm!295868 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!111 (List!48054 (_ BitVec 64) List!48052 Hashable!4431) Unit!66749)

(assert (=> bm!295868 (= call!295874 (lemmaInLongMapAllKeySameHashThenForTuple!111 (toList!2188 lt!1521416) (ite c!731366 lt!1521403 lt!1521393) (ite c!731366 lt!1521391 lt!1521426) (hashF!6463 hm!64)))))

(declare-fun b!4299478 () Bool)

(declare-fun call!295865 () Bool)

(assert (=> b!4299478 (= e!2672376 call!295865)))

(declare-fun bm!295869 () Bool)

(declare-fun allKeysSameHashInMap!268 (ListLongMap!799 Hashable!4431) Bool)

(assert (=> bm!295869 (= call!295865 (allKeysSameHashInMap!268 (ite c!731366 lt!1521408 lt!1521406) (hashF!6463 hm!64)))))

(declare-fun bm!295870 () Bool)

(assert (=> bm!295870 (= call!295881 (eq!98 (ite c!731366 call!295889 call!295863) call!295893))))

(declare-fun bm!295871 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!98 (ListLongMap!799 (_ BitVec 64) List!48052 Hashable!4431) Unit!66749)

(assert (=> bm!295871 (= call!295880 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!98 lt!1521416 (ite c!731366 lt!1521403 lt!1521393) (ite c!731366 lt!1521417 lt!1521410) (hashF!6463 hm!64)))))

(declare-fun bm!295872 () Bool)

(declare-fun call!295877 () ListMap!1469)

(assert (=> bm!295872 (= call!295877 (extractMap!268 (toList!2188 lt!1521416)))))

(declare-fun b!4299479 () Bool)

(declare-fun e!2672377 () Bool)

(declare-fun e!2672382 () Bool)

(assert (=> b!4299479 (= e!2672377 e!2672382)))

(declare-fun res!1762152 () Bool)

(assert (=> b!4299479 (= res!1762152 (contains!9850 call!295878 k0!1716))))

(assert (=> b!4299479 (=> (not res!1762152) (not e!2672382))))

(declare-fun bm!295873 () Bool)

(declare-fun lemmaEquivalentThenSameContains!32 (ListMap!1469 ListMap!1469 K!9034) Unit!66749)

(assert (=> bm!295873 (= call!295884 (lemmaEquivalentThenSameContains!32 (ite c!731366 lt!1521395 lt!1521420) (ite c!731366 lt!1521427 lt!1521389) k0!1716))))

(declare-fun bm!295874 () Bool)

(assert (=> bm!295874 (= call!295883 (valid!3494 (ite c!731366 lt!1521411 lt!1521425)))))

(declare-fun b!4299480 () Bool)

(declare-fun call!295886 () Bool)

(assert (=> b!4299480 (= e!2672377 call!295886)))

(declare-fun bm!295875 () Bool)

(assert (=> bm!295875 (= call!295866 (allKeysSameHashInMap!268 call!295869 (hashF!6463 hm!64)))))

(declare-fun bm!295876 () Bool)

(assert (=> bm!295876 (= call!295888 (contains!9850 (ite c!731366 lt!1521427 lt!1521420) k0!1716))))

(declare-fun bm!295877 () Bool)

(declare-fun +!167 (ListLongMap!799 tuple2!45858) ListLongMap!799)

(assert (=> bm!295877 (= call!295867 (+!167 lt!1521416 (ite c!731366 (tuple2!45859 lt!1521403 lt!1521417) (tuple2!45859 lt!1521393 lt!1521410))))))

(declare-fun b!4299481 () Bool)

(assert (=> b!4299481 (= e!2672380 call!295878)))

(declare-fun bm!295878 () Bool)

(assert (=> bm!295878 (= call!295870 (extractMap!268 (toList!2188 call!295867)))))

(declare-fun d!1266532 () Bool)

(assert (=> d!1266532 e!2672383))

(declare-fun res!1762155 () Bool)

(assert (=> d!1266532 (=> (not res!1762155) (not e!2672383))))

(assert (=> d!1266532 (= res!1762155 ((_ is HashMap!4421) (_2!26207 lt!1521386)))))

(declare-fun lt!1521422 () tuple2!45856)

(assert (=> d!1266532 (= lt!1521386 (tuple2!45857 (_1!26207 lt!1521422) (_2!26207 lt!1521422)))))

(assert (=> d!1266532 (= lt!1521422 e!2672379)))

(declare-fun contains!9852 (MutableMap!4421 K!9034) Bool)

(assert (=> d!1266532 (= c!731366 (contains!9852 hm!64 k0!1716))))

(assert (=> d!1266532 (= lt!1521416 (map!9888 (v!41888 (underlying!9260 hm!64))))))

(assert (=> d!1266532 (= lt!1521400 (map!9887 hm!64))))

(assert (=> d!1266532 (valid!3494 hm!64)))

(assert (=> d!1266532 (= (update!324 hm!64 k0!1716 v!9471) lt!1521386)))

(declare-fun bm!295879 () Bool)

(assert (=> bm!295879 (= call!295863 call!295887)))

(declare-fun b!4299482 () Bool)

(assert (=> b!4299482 (= call!295863 lt!1521400)))

(declare-fun lt!1521382 () Unit!66749)

(declare-fun Unit!66769 () Unit!66749)

(assert (=> b!4299482 (= lt!1521382 Unit!66769)))

(assert (=> b!4299482 call!295883))

(declare-fun Unit!66770 () Unit!66749)

(assert (=> b!4299482 (= e!2672381 Unit!66770)))

(declare-fun bm!295880 () Bool)

(assert (=> bm!295880 (= call!295879 (allKeysSameHash!120 call!295876 (ite c!731366 lt!1521403 lt!1521393) (hashF!6463 hm!64)))))

(declare-fun b!4299483 () Bool)

(assert (=> b!4299483 (= e!2672382 call!295886)))

(declare-fun b!4299484 () Bool)

(declare-fun call!295871 () List!48052)

(assert (=> b!4299484 (= e!2672386 call!295871)))

(declare-fun b!4299485 () Bool)

(declare-fun Unit!66771 () Unit!66749)

(declare-fun Unit!66772 () Unit!66749)

(assert (=> b!4299485 (= e!2672379 (tuple2!45857 (_1!26209 lt!1521402) (_2!26210 (ite false (tuple2!45863 Unit!66771 (HashMap!4421 (Cell!17872 (_2!26209 lt!1521402)) (hashF!6463 hm!64) (bvadd (_size!9074 hm!64) #b00000000000000000000000000000001) (defaultValue!4592 hm!64))) (tuple2!45863 Unit!66772 lt!1521411)))))))

(assert (=> b!4299485 (= lt!1521403 call!295872)))

(assert (=> b!4299485 (= lt!1521391 call!295871)))

(assert (=> b!4299485 (= lt!1521417 (Cons!47928 (tuple2!45855 k0!1716 v!9471) call!295876))))

(assert (=> b!4299485 (= lt!1521402 call!295890)))

(assert (=> b!4299485 (= lt!1521411 (HashMap!4421 (Cell!17872 (_2!26209 lt!1521402)) (hashF!6463 hm!64) (_size!9074 hm!64) (defaultValue!4592 hm!64)))))

(declare-fun c!731365 () Bool)

(assert (=> b!4299485 (= c!731365 (_1!26209 lt!1521402))))

(declare-fun lt!1521423 () Unit!66749)

(assert (=> b!4299485 (= lt!1521423 e!2672385)))

(declare-fun b!4299486 () Bool)

(assert (=> b!4299486 (= e!2672384 call!295865)))

(declare-fun bm!295881 () Bool)

(declare-fun removePairForKey!137 (List!48052 K!9034) List!48052)

(assert (=> bm!295881 (= call!295876 (removePairForKey!137 (ite c!731366 lt!1521391 lt!1521426) k0!1716))))

(declare-fun bm!295882 () Bool)

(assert (=> bm!295882 (= call!295889 call!295887)))

(declare-fun bm!295883 () Bool)

(assert (=> bm!295883 (= call!295892 (map!9887 (ite c!731362 hm!64 (_2!26207 lt!1521386))))))

(declare-fun b!4299487 () Bool)

(assert (=> b!4299487 (= e!2672383 e!2672377)))

(assert (=> b!4299487 (= c!731362 (_1!26207 lt!1521386))))

(declare-fun b!4299488 () Bool)

(assert (=> b!4299488 (= e!2672386 Nil!47928)))

(declare-fun bm!295884 () Bool)

(assert (=> bm!295884 (= call!295885 (forall!8624 (toList!2188 call!295869) (ite c!731366 lambda!131933 lambda!131934)))))

(declare-fun bm!295885 () Bool)

(assert (=> bm!295885 (= call!295864 (+!166 call!295877 (tuple2!45855 k0!1716 v!9471)))))

(declare-fun bm!295886 () Bool)

(assert (=> bm!295886 (= call!295886 (eq!98 (ite c!731362 call!295878 call!295892) e!2672380))))

(declare-fun c!731367 () Bool)

(assert (=> bm!295886 (= c!731367 c!731362)))

(declare-fun bm!295887 () Bool)

(declare-fun apply!10873 (MutLongMap!4515 (_ BitVec 64)) List!48052)

(assert (=> bm!295887 (= call!295871 (apply!10873 (v!41888 (underlying!9260 hm!64)) (ite c!731366 lt!1521403 lt!1521393)))))

(declare-fun b!4299489 () Bool)

(declare-fun lt!1521383 () Unit!66749)

(assert (=> b!4299489 (= e!2672378 lt!1521383)))

(declare-fun lt!1521378 () Unit!66749)

(assert (=> b!4299489 (= lt!1521378 call!295874)))

(assert (=> b!4299489 call!295868))

(declare-fun lt!1521375 () Unit!66749)

(assert (=> b!4299489 (= lt!1521375 lt!1521378)))

(assert (=> b!4299489 (= lt!1521383 call!295873)))

(assert (=> b!4299489 call!295879))

(declare-fun bm!295888 () Bool)

(assert (=> bm!295888 (= call!295893 (+!166 lt!1521400 (tuple2!45855 k0!1716 v!9471)))))

(assert (= (and d!1266532 c!731366) b!4299485))

(assert (= (and d!1266532 (not c!731366)) b!4299473))

(assert (= (and b!4299485 c!731365) b!4299474))

(assert (= (and b!4299485 (not c!731365)) b!4299477))

(assert (= (and b!4299474 res!1762153) b!4299486))

(assert (= (or b!4299474 b!4299477) bm!295882))

(assert (= (and b!4299473 c!731368) b!4299484))

(assert (= (and b!4299473 (not c!731368)) b!4299488))

(assert (= (and b!4299473 c!731364) b!4299475))

(assert (= (and b!4299473 (not c!731364)) b!4299482))

(assert (= (and b!4299475 c!731363) b!4299489))

(assert (= (and b!4299475 (not c!731363)) b!4299471))

(assert (= (and b!4299475 res!1762156) b!4299478))

(assert (= (or b!4299475 b!4299482) bm!295879))

(assert (= (or b!4299486 b!4299478) bm!295869))

(assert (= (or b!4299485 b!4299473) bm!295863))

(assert (= (or b!4299474 b!4299489) bm!295868))

(assert (= (or b!4299474 b!4299475) bm!295877))

(assert (= (or b!4299485 b!4299484) bm!295887))

(assert (= (or b!4299474 b!4299475) bm!295861))

(assert (= (or b!4299474 b!4299475) bm!295873))

(assert (= (or b!4299474 b!4299485 b!4299489) bm!295881))

(assert (= (or b!4299485 b!4299473) bm!295860))

(assert (= (or b!4299474 b!4299489) bm!295859))

(assert (= (or b!4299474 b!4299475) bm!295862))

(assert (= (or b!4299474 b!4299475) bm!295888))

(assert (= (or bm!295882 bm!295879) bm!295867))

(assert (= (or b!4299477 b!4299482) bm!295874))

(assert (= (or b!4299474 b!4299475) bm!295876))

(assert (= (or b!4299474 b!4299475) bm!295858))

(assert (= (or b!4299474 b!4299475) bm!295871))

(assert (= (or b!4299474 b!4299489) bm!295864))

(assert (= (or b!4299474 b!4299475) bm!295872))

(assert (= (or b!4299474 b!4299475) bm!295884))

(assert (= (or b!4299474 b!4299475) bm!295885))

(assert (= (or b!4299474 b!4299475) bm!295870))

(assert (= (or b!4299474 b!4299475) bm!295878))

(assert (= (or b!4299474 b!4299489) bm!295880))

(assert (= (or b!4299474 b!4299475) bm!295875))

(assert (= (or b!4299474 b!4299475) bm!295865))

(assert (= (and d!1266532 res!1762155) b!4299476))

(assert (= (and b!4299476 res!1762154) b!4299487))

(assert (= (and b!4299487 c!731362) b!4299479))

(assert (= (and b!4299487 (not c!731362)) b!4299480))

(assert (= (and b!4299479 res!1762152) b!4299483))

(assert (= (or b!4299479 b!4299483 b!4299480) bm!295866))

(assert (= (or b!4299483 b!4299480) bm!295883))

(assert (= (or b!4299483 b!4299480) bm!295886))

(assert (= (and bm!295886 c!731367) b!4299472))

(assert (= (and bm!295886 (not c!731367)) b!4299481))

(declare-fun m!4891615 () Bool)

(assert (=> bm!295860 m!4891615))

(declare-fun m!4891617 () Bool)

(assert (=> bm!295887 m!4891617))

(declare-fun m!4891619 () Bool)

(assert (=> b!4299472 m!4891619))

(declare-fun m!4891621 () Bool)

(assert (=> bm!295866 m!4891621))

(declare-fun m!4891623 () Bool)

(assert (=> bm!295874 m!4891623))

(declare-fun m!4891625 () Bool)

(assert (=> bm!295883 m!4891625))

(declare-fun m!4891627 () Bool)

(assert (=> bm!295873 m!4891627))

(declare-fun m!4891629 () Bool)

(assert (=> bm!295875 m!4891629))

(declare-fun m!4891631 () Bool)

(assert (=> bm!295862 m!4891631))

(declare-fun m!4891633 () Bool)

(assert (=> bm!295858 m!4891633))

(declare-fun m!4891635 () Bool)

(assert (=> bm!295884 m!4891635))

(declare-fun m!4891637 () Bool)

(assert (=> bm!295859 m!4891637))

(declare-fun m!4891639 () Bool)

(assert (=> bm!295885 m!4891639))

(declare-fun m!4891641 () Bool)

(assert (=> b!4299474 m!4891641))

(declare-fun m!4891643 () Bool)

(assert (=> b!4299474 m!4891643))

(declare-fun m!4891645 () Bool)

(assert (=> b!4299474 m!4891645))

(declare-fun m!4891647 () Bool)

(assert (=> b!4299474 m!4891647))

(declare-fun m!4891649 () Bool)

(assert (=> b!4299474 m!4891649))

(declare-fun m!4891651 () Bool)

(assert (=> bm!295861 m!4891651))

(declare-fun m!4891653 () Bool)

(assert (=> b!4299479 m!4891653))

(declare-fun m!4891655 () Bool)

(assert (=> bm!295864 m!4891655))

(declare-fun m!4891657 () Bool)

(assert (=> b!4299475 m!4891657))

(declare-fun m!4891659 () Bool)

(assert (=> b!4299475 m!4891659))

(declare-fun m!4891661 () Bool)

(assert (=> b!4299475 m!4891661))

(declare-fun m!4891663 () Bool)

(assert (=> b!4299475 m!4891663))

(declare-fun m!4891665 () Bool)

(assert (=> bm!295870 m!4891665))

(declare-fun m!4891667 () Bool)

(assert (=> d!1266532 m!4891667))

(assert (=> d!1266532 m!4891611))

(assert (=> d!1266532 m!4891551))

(assert (=> d!1266532 m!4891543))

(declare-fun m!4891669 () Bool)

(assert (=> bm!295871 m!4891669))

(declare-fun m!4891671 () Bool)

(assert (=> bm!295888 m!4891671))

(declare-fun m!4891673 () Bool)

(assert (=> bm!295877 m!4891673))

(declare-fun m!4891675 () Bool)

(assert (=> b!4299476 m!4891675))

(declare-fun m!4891677 () Bool)

(assert (=> b!4299473 m!4891677))

(declare-fun m!4891679 () Bool)

(assert (=> bm!295868 m!4891679))

(declare-fun m!4891681 () Bool)

(assert (=> bm!295867 m!4891681))

(declare-fun m!4891683 () Bool)

(assert (=> bm!295881 m!4891683))

(declare-fun m!4891685 () Bool)

(assert (=> bm!295863 m!4891685))

(declare-fun m!4891687 () Bool)

(assert (=> bm!295876 m!4891687))

(declare-fun m!4891689 () Bool)

(assert (=> bm!295880 m!4891689))

(declare-fun m!4891691 () Bool)

(assert (=> bm!295878 m!4891691))

(declare-fun m!4891693 () Bool)

(assert (=> bm!295865 m!4891693))

(declare-fun m!4891695 () Bool)

(assert (=> bm!295872 m!4891695))

(declare-fun m!4891697 () Bool)

(assert (=> bm!295886 m!4891697))

(declare-fun m!4891699 () Bool)

(assert (=> bm!295869 m!4891699))

(assert (=> b!4299374 d!1266532))

(declare-fun d!1266534 () Bool)

(declare-fun e!2672389 () Bool)

(assert (=> d!1266534 e!2672389))

(declare-fun res!1762161 () Bool)

(assert (=> d!1266534 (=> (not res!1762161) (not e!2672389))))

(declare-fun lt!1521440 () ListMap!1469)

(assert (=> d!1266534 (= res!1762161 (contains!9850 lt!1521440 (_1!26206 lt!1521220)))))

(declare-fun lt!1521439 () List!48052)

(assert (=> d!1266534 (= lt!1521440 (ListMap!1470 lt!1521439))))

(declare-fun lt!1521438 () Unit!66749)

(declare-fun lt!1521437 () Unit!66749)

(assert (=> d!1266534 (= lt!1521438 lt!1521437)))

(declare-datatypes ((Option!10160 0))(
  ( (None!10159) (Some!10159 (v!41890 V!9236)) )
))
(declare-fun getValueByKey!209 (List!48052 K!9034) Option!10160)

(assert (=> d!1266534 (= (getValueByKey!209 lt!1521439 (_1!26206 lt!1521220)) (Some!10159 (_2!26206 lt!1521220)))))

(declare-fun lemmaContainsTupThenGetReturnValue!40 (List!48052 K!9034 V!9236) Unit!66749)

(assert (=> d!1266534 (= lt!1521437 (lemmaContainsTupThenGetReturnValue!40 lt!1521439 (_1!26206 lt!1521220) (_2!26206 lt!1521220)))))

(assert (=> d!1266534 (= lt!1521439 (insertNoDuplicatedKeys!21 (toList!2187 lt!1521223) (_1!26206 lt!1521220) (_2!26206 lt!1521220)))))

(assert (=> d!1266534 (= (+!166 lt!1521223 lt!1521220) lt!1521440)))

(declare-fun b!4299494 () Bool)

(declare-fun res!1762162 () Bool)

(assert (=> b!4299494 (=> (not res!1762162) (not e!2672389))))

(assert (=> b!4299494 (= res!1762162 (= (getValueByKey!209 (toList!2187 lt!1521440) (_1!26206 lt!1521220)) (Some!10159 (_2!26206 lt!1521220))))))

(declare-fun b!4299495 () Bool)

(assert (=> b!4299495 (= e!2672389 (contains!9849 (toList!2187 lt!1521440) lt!1521220))))

(assert (= (and d!1266534 res!1762161) b!4299494))

(assert (= (and b!4299494 res!1762162) b!4299495))

(declare-fun m!4891701 () Bool)

(assert (=> d!1266534 m!4891701))

(declare-fun m!4891703 () Bool)

(assert (=> d!1266534 m!4891703))

(declare-fun m!4891705 () Bool)

(assert (=> d!1266534 m!4891705))

(declare-fun m!4891707 () Bool)

(assert (=> d!1266534 m!4891707))

(declare-fun m!4891709 () Bool)

(assert (=> b!4299494 m!4891709))

(declare-fun m!4891711 () Bool)

(assert (=> b!4299495 m!4891711))

(assert (=> b!4299374 d!1266534))

(declare-fun bs!603942 () Bool)

(declare-fun b!4299500 () Bool)

(assert (= bs!603942 (and b!4299500 b!4299474)))

(declare-fun lambda!131937 () Int)

(assert (=> bs!603942 (= lambda!131937 lambda!131933)))

(declare-fun bs!603943 () Bool)

(assert (= bs!603943 (and b!4299500 b!4299475)))

(assert (=> bs!603943 (= lambda!131937 lambda!131934)))

(declare-fun d!1266536 () Bool)

(declare-fun res!1762167 () Bool)

(declare-fun e!2672392 () Bool)

(assert (=> d!1266536 (=> (not res!1762167) (not e!2672392))))

(declare-fun valid!3495 (MutLongMap!4515) Bool)

(assert (=> d!1266536 (= res!1762167 (valid!3495 (v!41888 (underlying!9260 hm!64))))))

(assert (=> d!1266536 (= (valid!3494 hm!64) e!2672392)))

(declare-fun res!1762168 () Bool)

(assert (=> b!4299500 (=> (not res!1762168) (not e!2672392))))

(assert (=> b!4299500 (= res!1762168 (forall!8624 (toList!2188 (map!9888 (v!41888 (underlying!9260 hm!64)))) lambda!131937))))

(declare-fun b!4299501 () Bool)

(assert (=> b!4299501 (= e!2672392 (allKeysSameHashInMap!268 (map!9888 (v!41888 (underlying!9260 hm!64))) (hashF!6463 hm!64)))))

(assert (= (and d!1266536 res!1762167) b!4299500))

(assert (= (and b!4299500 res!1762168) b!4299501))

(declare-fun m!4891713 () Bool)

(assert (=> d!1266536 m!4891713))

(assert (=> b!4299500 m!4891611))

(declare-fun m!4891715 () Bool)

(assert (=> b!4299500 m!4891715))

(assert (=> b!4299501 m!4891611))

(assert (=> b!4299501 m!4891611))

(declare-fun m!4891717 () Bool)

(assert (=> b!4299501 m!4891717))

(assert (=> b!4299379 d!1266536))

(declare-fun d!1266538 () Bool)

(assert (=> d!1266538 (= (array_inv!5169 (_keys!4815 (v!41887 (underlying!9259 (v!41888 (underlying!9260 hm!64)))))) (bvsge (size!35254 (_keys!4815 (v!41887 (underlying!9259 (v!41888 (underlying!9260 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4299370 d!1266538))

(declare-fun d!1266540 () Bool)

(assert (=> d!1266540 (= (array_inv!5170 (_values!4796 (v!41887 (underlying!9259 (v!41888 (underlying!9260 hm!64)))))) (bvsge (size!35255 (_values!4796 (v!41887 (underlying!9259 (v!41888 (underlying!9260 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4299370 d!1266540))

(declare-fun d!1266542 () Bool)

(declare-fun content!7529 (List!48052) (InoxSet tuple2!45854))

(assert (=> d!1266542 (= (eq!98 (map!9887 (_2!26207 lt!1521219)) lt!1521224) (= (content!7529 (toList!2187 (map!9887 (_2!26207 lt!1521219)))) (content!7529 (toList!2187 lt!1521224))))))

(declare-fun bs!603944 () Bool)

(assert (= bs!603944 d!1266542))

(declare-fun m!4891719 () Bool)

(assert (=> bs!603944 m!4891719))

(declare-fun m!4891721 () Bool)

(assert (=> bs!603944 m!4891721))

(assert (=> b!4299371 d!1266542))

(declare-fun d!1266544 () Bool)

(declare-fun lt!1521441 () ListMap!1469)

(assert (=> d!1266544 (invariantList!537 (toList!2187 lt!1521441))))

(assert (=> d!1266544 (= lt!1521441 (extractMap!268 (toList!2188 (map!9888 (v!41888 (underlying!9260 (_2!26207 lt!1521219)))))))))

(assert (=> d!1266544 (valid!3494 (_2!26207 lt!1521219))))

(assert (=> d!1266544 (= (map!9887 (_2!26207 lt!1521219)) lt!1521441)))

(declare-fun bs!603945 () Bool)

(assert (= bs!603945 d!1266544))

(declare-fun m!4891723 () Bool)

(assert (=> bs!603945 m!4891723))

(declare-fun m!4891725 () Bool)

(assert (=> bs!603945 m!4891725))

(declare-fun m!4891727 () Bool)

(assert (=> bs!603945 m!4891727))

(declare-fun m!4891729 () Bool)

(assert (=> bs!603945 m!4891729))

(assert (=> b!4299371 d!1266544))

(declare-fun e!2672395 () Bool)

(declare-fun tp!1320895 () Bool)

(declare-fun b!4299506 () Bool)

(assert (=> b!4299506 (= e!2672395 (and tp_is_empty!23233 tp_is_empty!23235 tp!1320895))))

(assert (=> b!4299372 (= tp!1320889 e!2672395)))

(assert (= (and b!4299372 ((_ is Cons!47928) mapDefault!20280)) b!4299506))

(declare-fun condMapEmpty!20283 () Bool)

(declare-fun mapDefault!20283 () List!48052)

(assert (=> mapNonEmpty!20280 (= condMapEmpty!20283 (= mapRest!20280 ((as const (Array (_ BitVec 32) List!48052)) mapDefault!20283)))))

(declare-fun e!2672401 () Bool)

(declare-fun mapRes!20283 () Bool)

(assert (=> mapNonEmpty!20280 (= tp!1320888 (and e!2672401 mapRes!20283))))

(declare-fun b!4299514 () Bool)

(declare-fun tp!1320904 () Bool)

(assert (=> b!4299514 (= e!2672401 (and tp_is_empty!23233 tp_is_empty!23235 tp!1320904))))

(declare-fun mapIsEmpty!20283 () Bool)

(assert (=> mapIsEmpty!20283 mapRes!20283))

(declare-fun e!2672400 () Bool)

(declare-fun b!4299513 () Bool)

(declare-fun tp!1320903 () Bool)

(assert (=> b!4299513 (= e!2672400 (and tp_is_empty!23233 tp_is_empty!23235 tp!1320903))))

(declare-fun mapNonEmpty!20283 () Bool)

(declare-fun tp!1320902 () Bool)

(assert (=> mapNonEmpty!20283 (= mapRes!20283 (and tp!1320902 e!2672400))))

(declare-fun mapRest!20283 () (Array (_ BitVec 32) List!48052))

(declare-fun mapValue!20283 () List!48052)

(declare-fun mapKey!20283 () (_ BitVec 32))

(assert (=> mapNonEmpty!20283 (= mapRest!20280 (store mapRest!20283 mapKey!20283 mapValue!20283))))

(assert (= (and mapNonEmpty!20280 condMapEmpty!20283) mapIsEmpty!20283))

(assert (= (and mapNonEmpty!20280 (not condMapEmpty!20283)) mapNonEmpty!20283))

(assert (= (and mapNonEmpty!20283 ((_ is Cons!47928) mapValue!20283)) b!4299513))

(assert (= (and mapNonEmpty!20280 ((_ is Cons!47928) mapDefault!20283)) b!4299514))

(declare-fun m!4891731 () Bool)

(assert (=> mapNonEmpty!20283 m!4891731))

(declare-fun tp!1320905 () Bool)

(declare-fun e!2672402 () Bool)

(declare-fun b!4299515 () Bool)

(assert (=> b!4299515 (= e!2672402 (and tp_is_empty!23233 tp_is_empty!23235 tp!1320905))))

(assert (=> mapNonEmpty!20280 (= tp!1320891 e!2672402)))

(assert (= (and mapNonEmpty!20280 ((_ is Cons!47928) mapValue!20280)) b!4299515))

(declare-fun e!2672403 () Bool)

(declare-fun b!4299516 () Bool)

(declare-fun tp!1320906 () Bool)

(assert (=> b!4299516 (= e!2672403 (and tp_is_empty!23233 tp_is_empty!23235 tp!1320906))))

(assert (=> b!4299370 (= tp!1320887 e!2672403)))

(assert (= (and b!4299370 ((_ is Cons!47928) (zeroValue!4774 (v!41887 (underlying!9259 (v!41888 (underlying!9260 hm!64))))))) b!4299516))

(declare-fun b!4299517 () Bool)

(declare-fun tp!1320907 () Bool)

(declare-fun e!2672404 () Bool)

(assert (=> b!4299517 (= e!2672404 (and tp_is_empty!23233 tp_is_empty!23235 tp!1320907))))

(assert (=> b!4299370 (= tp!1320892 e!2672404)))

(assert (= (and b!4299370 ((_ is Cons!47928) (minValue!4774 (v!41887 (underlying!9259 (v!41888 (underlying!9260 hm!64))))))) b!4299517))

(declare-fun b_lambda!126295 () Bool)

(assert (= b_lambda!126293 (or (and start!412796 b_free!127991) b_lambda!126295)))

(declare-fun b_lambda!126297 () Bool)

(assert (= b_lambda!126291 (or (and start!412796 b_free!127991) b_lambda!126297)))

(declare-fun b_lambda!126299 () Bool)

(assert (= b_lambda!126289 (or (and start!412796 b_free!127991) b_lambda!126299)))

(check-sat (not b!4299423) (not b_lambda!126299) (not bm!295863) (not bm!295875) (not b!4299424) (not b!4299419) (not b_next!128695) (not bm!295886) (not bm!295866) (not b!4299495) (not bm!295871) (not b!4299501) (not bm!295883) (not b!4299422) (not b!4299506) (not bm!295869) (not b!4299516) (not b!4299475) (not b_lambda!126297) (not d!1266530) (not bm!295858) (not bm!295887) (not b!4299420) (not b!4299418) (not b!4299426) b_and!339305 (not b!4299476) (not d!1266542) (not b_lambda!126287) (not b_next!128697) (not bm!295859) (not bm!295864) (not d!1266544) (not bm!295888) (not d!1266532) (not b!4299515) (not bm!295868) (not b!4299432) (not bm!295861) (not bm!295876) (not bm!295795) (not bm!295867) (not d!1266526) (not bm!295862) (not bm!295873) (not b!4299494) (not b!4299514) (not bm!295860) (not b_lambda!126295) tp_is_empty!23233 (not bm!295877) (not bm!295884) (not b!4299428) b_and!339297 (not bm!295872) (not bm!295865) (not b!4299513) (not bm!295885) (not bm!295880) (not b!4299517) (not d!1266524) (not b!4299474) (not bm!295878) (not bm!295881) (not d!1266534) (not b!4299500) (not bm!295792) (not b_next!128693) b_and!339293 (not b!4299479) (not bm!295874) (not b!4299472) (not bm!295870) (not mapNonEmpty!20283) (not b!4299473) (not b!4299386) tp_is_empty!23235 (not d!1266536) (not b!4299388))
(check-sat b_and!339305 (not b_next!128697) b_and!339297 (not b_next!128695) (not b_next!128693) b_and!339293)
