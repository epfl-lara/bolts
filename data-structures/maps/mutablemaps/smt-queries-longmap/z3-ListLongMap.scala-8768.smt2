; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106596 () Bool)

(assert start!106596)

(declare-fun b!1266327 () Bool)

(declare-fun res!843164 () Bool)

(declare-fun e!721285 () Bool)

(assert (=> b!1266327 (=> (not res!843164) (not e!721285))))

(declare-datatypes ((B!2002 0))(
  ( (B!2003 (val!16336 Int)) )
))
(declare-datatypes ((tuple2!21340 0))(
  ( (tuple2!21341 (_1!10680 (_ BitVec 64)) (_2!10680 B!2002)) )
))
(declare-datatypes ((List!28503 0))(
  ( (Nil!28500) (Cons!28499 (h!29708 tuple2!21340) (t!42034 List!28503)) )
))
(declare-fun l!706 () List!28503)

(get-info :version)

(assert (=> b!1266327 (= res!843164 (not ((_ is Cons!28499) l!706)))))

(declare-fun res!843166 () Bool)

(assert (=> start!106596 (=> (not res!843166) (not e!721285))))

(declare-fun isStrictlySorted!799 (List!28503) Bool)

(assert (=> start!106596 (= res!843166 (isStrictlySorted!799 l!706))))

(assert (=> start!106596 e!721285))

(declare-fun e!721284 () Bool)

(assert (=> start!106596 e!721284))

(assert (=> start!106596 true))

(declare-fun tp_is_empty!32535 () Bool)

(assert (=> start!106596 tp_is_empty!32535))

(declare-fun b!1266329 () Bool)

(declare-fun tp!96435 () Bool)

(assert (=> b!1266329 (= e!721284 (and tp_is_empty!32535 tp!96435))))

(declare-fun v1!26 () B!2002)

(declare-fun b!1266328 () Bool)

(declare-fun key1!31 () (_ BitVec 64))

(declare-fun removeStrictlySorted!160 (List!28503 (_ BitVec 64)) List!28503)

(declare-fun insertStrictlySorted!469 (List!28503 (_ BitVec 64) B!2002) List!28503)

(assert (=> b!1266328 (= e!721285 (not (= (removeStrictlySorted!160 (insertStrictlySorted!469 l!706 key1!31 v1!26) key1!31) l!706)))))

(declare-fun b!1266326 () Bool)

(declare-fun res!843165 () Bool)

(assert (=> b!1266326 (=> (not res!843165) (not e!721285))))

(declare-fun containsKey!660 (List!28503 (_ BitVec 64)) Bool)

(assert (=> b!1266326 (= res!843165 (not (containsKey!660 l!706 key1!31)))))

(assert (= (and start!106596 res!843166) b!1266326))

(assert (= (and b!1266326 res!843165) b!1266327))

(assert (= (and b!1266327 res!843164) b!1266328))

(assert (= (and start!106596 ((_ is Cons!28499) l!706)) b!1266329))

(declare-fun m!1166129 () Bool)

(assert (=> start!106596 m!1166129))

(declare-fun m!1166131 () Bool)

(assert (=> b!1266328 m!1166131))

(assert (=> b!1266328 m!1166131))

(declare-fun m!1166133 () Bool)

(assert (=> b!1266328 m!1166133))

(declare-fun m!1166135 () Bool)

(assert (=> b!1266326 m!1166135))

(check-sat (not b!1266329) (not start!106596) (not b!1266328) (not b!1266326) tp_is_empty!32535)
(check-sat)
(get-model)

(declare-fun d!139137 () Bool)

(declare-fun res!843180 () Bool)

(declare-fun e!721296 () Bool)

(assert (=> d!139137 (=> res!843180 e!721296)))

(assert (=> d!139137 (= res!843180 (or ((_ is Nil!28500) l!706) ((_ is Nil!28500) (t!42034 l!706))))))

(assert (=> d!139137 (= (isStrictlySorted!799 l!706) e!721296)))

(declare-fun b!1266346 () Bool)

(declare-fun e!721299 () Bool)

(assert (=> b!1266346 (= e!721296 e!721299)))

(declare-fun res!843182 () Bool)

(assert (=> b!1266346 (=> (not res!843182) (not e!721299))))

(assert (=> b!1266346 (= res!843182 (bvslt (_1!10680 (h!29708 l!706)) (_1!10680 (h!29708 (t!42034 l!706)))))))

(declare-fun b!1266347 () Bool)

(assert (=> b!1266347 (= e!721299 (isStrictlySorted!799 (t!42034 l!706)))))

(assert (= (and d!139137 (not res!843180)) b!1266346))

(assert (= (and b!1266346 res!843182) b!1266347))

(declare-fun m!1166145 () Bool)

(assert (=> b!1266347 m!1166145))

(assert (=> start!106596 d!139137))

(declare-fun b!1266389 () Bool)

(declare-fun e!721327 () List!28503)

(declare-fun e!721325 () List!28503)

(assert (=> b!1266389 (= e!721327 e!721325)))

(declare-fun c!123394 () Bool)

(assert (=> b!1266389 (= c!123394 (and ((_ is Cons!28499) (insertStrictlySorted!469 l!706 key1!31 v1!26)) (not (= (_1!10680 (h!29708 (insertStrictlySorted!469 l!706 key1!31 v1!26))) key1!31))))))

(declare-fun b!1266390 () Bool)

(declare-fun e!721326 () Bool)

(declare-fun lt!574078 () List!28503)

(assert (=> b!1266390 (= e!721326 (not (containsKey!660 lt!574078 key1!31)))))

(declare-fun d!139143 () Bool)

(assert (=> d!139143 e!721326))

(declare-fun res!843195 () Bool)

(assert (=> d!139143 (=> (not res!843195) (not e!721326))))

(assert (=> d!139143 (= res!843195 (isStrictlySorted!799 lt!574078))))

(assert (=> d!139143 (= lt!574078 e!721327)))

(declare-fun c!123395 () Bool)

(assert (=> d!139143 (= c!123395 (and ((_ is Cons!28499) (insertStrictlySorted!469 l!706 key1!31 v1!26)) (= (_1!10680 (h!29708 (insertStrictlySorted!469 l!706 key1!31 v1!26))) key1!31)))))

(assert (=> d!139143 (isStrictlySorted!799 (insertStrictlySorted!469 l!706 key1!31 v1!26))))

(assert (=> d!139143 (= (removeStrictlySorted!160 (insertStrictlySorted!469 l!706 key1!31 v1!26) key1!31) lt!574078)))

(declare-fun b!1266391 () Bool)

(declare-fun $colon$colon!645 (List!28503 tuple2!21340) List!28503)

(assert (=> b!1266391 (= e!721325 ($colon$colon!645 (removeStrictlySorted!160 (t!42034 (insertStrictlySorted!469 l!706 key1!31 v1!26)) key1!31) (h!29708 (insertStrictlySorted!469 l!706 key1!31 v1!26))))))

(declare-fun b!1266392 () Bool)

(assert (=> b!1266392 (= e!721327 (t!42034 (insertStrictlySorted!469 l!706 key1!31 v1!26)))))

(declare-fun b!1266393 () Bool)

(assert (=> b!1266393 (= e!721325 Nil!28500)))

(assert (= (and d!139143 c!123395) b!1266392))

(assert (= (and d!139143 (not c!123395)) b!1266389))

(assert (= (and b!1266389 c!123394) b!1266391))

(assert (= (and b!1266389 (not c!123394)) b!1266393))

(assert (= (and d!139143 res!843195) b!1266390))

(declare-fun m!1166159 () Bool)

(assert (=> b!1266390 m!1166159))

(declare-fun m!1166161 () Bool)

(assert (=> d!139143 m!1166161))

(assert (=> d!139143 m!1166131))

(declare-fun m!1166163 () Bool)

(assert (=> d!139143 m!1166163))

(declare-fun m!1166165 () Bool)

(assert (=> b!1266391 m!1166165))

(assert (=> b!1266391 m!1166165))

(declare-fun m!1166167 () Bool)

(assert (=> b!1266391 m!1166167))

(assert (=> b!1266328 d!139143))

(declare-fun d!139149 () Bool)

(declare-fun e!721369 () Bool)

(assert (=> d!139149 e!721369))

(declare-fun res!843212 () Bool)

(assert (=> d!139149 (=> (not res!843212) (not e!721369))))

(declare-fun lt!574087 () List!28503)

(assert (=> d!139149 (= res!843212 (isStrictlySorted!799 lt!574087))))

(declare-fun e!721366 () List!28503)

(assert (=> d!139149 (= lt!574087 e!721366)))

(declare-fun c!123429 () Bool)

(assert (=> d!139149 (= c!123429 (and ((_ is Cons!28499) l!706) (bvslt (_1!10680 (h!29708 l!706)) key1!31)))))

(assert (=> d!139149 (isStrictlySorted!799 l!706)))

(assert (=> d!139149 (= (insertStrictlySorted!469 l!706 key1!31 v1!26) lt!574087)))

(declare-fun b!1266469 () Bool)

(declare-fun e!721367 () List!28503)

(assert (=> b!1266469 (= e!721367 (insertStrictlySorted!469 (t!42034 l!706) key1!31 v1!26))))

(declare-fun b!1266470 () Bool)

(declare-fun e!721370 () List!28503)

(declare-fun call!62485 () List!28503)

(assert (=> b!1266470 (= e!721370 call!62485)))

(declare-fun bm!62482 () Bool)

(declare-fun call!62487 () List!28503)

(assert (=> bm!62482 (= call!62485 call!62487)))

(declare-fun b!1266471 () Bool)

(declare-fun contains!7660 (List!28503 tuple2!21340) Bool)

(assert (=> b!1266471 (= e!721369 (contains!7660 lt!574087 (tuple2!21341 key1!31 v1!26)))))

(declare-fun b!1266472 () Bool)

(declare-fun call!62486 () List!28503)

(assert (=> b!1266472 (= e!721366 call!62486)))

(declare-fun c!123428 () Bool)

(declare-fun c!123427 () Bool)

(declare-fun b!1266473 () Bool)

(assert (=> b!1266473 (= e!721367 (ite c!123428 (t!42034 l!706) (ite c!123427 (Cons!28499 (h!29708 l!706) (t!42034 l!706)) Nil!28500)))))

(declare-fun b!1266474 () Bool)

(assert (=> b!1266474 (= c!123427 (and ((_ is Cons!28499) l!706) (bvsgt (_1!10680 (h!29708 l!706)) key1!31)))))

(declare-fun e!721368 () List!28503)

(assert (=> b!1266474 (= e!721368 e!721370)))

(declare-fun b!1266475 () Bool)

(assert (=> b!1266475 (= e!721370 call!62485)))

(declare-fun b!1266476 () Bool)

(assert (=> b!1266476 (= e!721368 call!62487)))

(declare-fun bm!62483 () Bool)

(assert (=> bm!62483 (= call!62487 call!62486)))

(declare-fun b!1266477 () Bool)

(declare-fun res!843211 () Bool)

(assert (=> b!1266477 (=> (not res!843211) (not e!721369))))

(assert (=> b!1266477 (= res!843211 (containsKey!660 lt!574087 key1!31))))

(declare-fun b!1266478 () Bool)

(assert (=> b!1266478 (= e!721366 e!721368)))

(assert (=> b!1266478 (= c!123428 (and ((_ is Cons!28499) l!706) (= (_1!10680 (h!29708 l!706)) key1!31)))))

(declare-fun bm!62484 () Bool)

(assert (=> bm!62484 (= call!62486 ($colon$colon!645 e!721367 (ite c!123429 (h!29708 l!706) (tuple2!21341 key1!31 v1!26))))))

(declare-fun c!123426 () Bool)

(assert (=> bm!62484 (= c!123426 c!123429)))

(assert (= (and d!139149 c!123429) b!1266472))

(assert (= (and d!139149 (not c!123429)) b!1266478))

(assert (= (and b!1266478 c!123428) b!1266476))

(assert (= (and b!1266478 (not c!123428)) b!1266474))

(assert (= (and b!1266474 c!123427) b!1266475))

(assert (= (and b!1266474 (not c!123427)) b!1266470))

(assert (= (or b!1266475 b!1266470) bm!62482))

(assert (= (or b!1266476 bm!62482) bm!62483))

(assert (= (or b!1266472 bm!62483) bm!62484))

(assert (= (and bm!62484 c!123426) b!1266469))

(assert (= (and bm!62484 (not c!123426)) b!1266473))

(assert (= (and d!139149 res!843212) b!1266477))

(assert (= (and b!1266477 res!843211) b!1266471))

(declare-fun m!1166189 () Bool)

(assert (=> b!1266469 m!1166189))

(declare-fun m!1166191 () Bool)

(assert (=> bm!62484 m!1166191))

(declare-fun m!1166193 () Bool)

(assert (=> b!1266471 m!1166193))

(declare-fun m!1166195 () Bool)

(assert (=> b!1266477 m!1166195))

(declare-fun m!1166197 () Bool)

(assert (=> d!139149 m!1166197))

(assert (=> d!139149 m!1166129))

(assert (=> b!1266328 d!139149))

(declare-fun d!139155 () Bool)

(declare-fun res!843229 () Bool)

(declare-fun e!721390 () Bool)

(assert (=> d!139155 (=> res!843229 e!721390)))

(assert (=> d!139155 (= res!843229 (and ((_ is Cons!28499) l!706) (= (_1!10680 (h!29708 l!706)) key1!31)))))

(assert (=> d!139155 (= (containsKey!660 l!706 key1!31) e!721390)))

(declare-fun b!1266503 () Bool)

(declare-fun e!721391 () Bool)

(assert (=> b!1266503 (= e!721390 e!721391)))

(declare-fun res!843230 () Bool)

(assert (=> b!1266503 (=> (not res!843230) (not e!721391))))

(assert (=> b!1266503 (= res!843230 (and (or (not ((_ is Cons!28499) l!706)) (bvsle (_1!10680 (h!29708 l!706)) key1!31)) ((_ is Cons!28499) l!706) (bvslt (_1!10680 (h!29708 l!706)) key1!31)))))

(declare-fun b!1266504 () Bool)

(assert (=> b!1266504 (= e!721391 (containsKey!660 (t!42034 l!706) key1!31))))

(assert (= (and d!139155 (not res!843229)) b!1266503))

(assert (= (and b!1266503 res!843230) b!1266504))

(declare-fun m!1166211 () Bool)

(assert (=> b!1266504 m!1166211))

(assert (=> b!1266326 d!139155))

(declare-fun b!1266515 () Bool)

(declare-fun e!721400 () Bool)

(declare-fun tp!96441 () Bool)

(assert (=> b!1266515 (= e!721400 (and tp_is_empty!32535 tp!96441))))

(assert (=> b!1266329 (= tp!96435 e!721400)))

(assert (= (and b!1266329 ((_ is Cons!28499) (t!42034 l!706))) b!1266515))

(check-sat (not d!139143) (not b!1266469) (not bm!62484) (not b!1266477) (not b!1266471) (not b!1266390) (not b!1266515) (not b!1266391) (not b!1266347) (not d!139149) (not b!1266504) tp_is_empty!32535)
(check-sat)
(get-model)

(declare-fun d!139161 () Bool)

(declare-fun res!843239 () Bool)

(declare-fun e!721409 () Bool)

(assert (=> d!139161 (=> res!843239 e!721409)))

(assert (=> d!139161 (= res!843239 (or ((_ is Nil!28500) lt!574078) ((_ is Nil!28500) (t!42034 lt!574078))))))

(assert (=> d!139161 (= (isStrictlySorted!799 lt!574078) e!721409)))

(declare-fun b!1266528 () Bool)

(declare-fun e!721410 () Bool)

(assert (=> b!1266528 (= e!721409 e!721410)))

(declare-fun res!843240 () Bool)

(assert (=> b!1266528 (=> (not res!843240) (not e!721410))))

(assert (=> b!1266528 (= res!843240 (bvslt (_1!10680 (h!29708 lt!574078)) (_1!10680 (h!29708 (t!42034 lt!574078)))))))

(declare-fun b!1266529 () Bool)

(assert (=> b!1266529 (= e!721410 (isStrictlySorted!799 (t!42034 lt!574078)))))

(assert (= (and d!139161 (not res!843239)) b!1266528))

(assert (= (and b!1266528 res!843240) b!1266529))

(declare-fun m!1166217 () Bool)

(assert (=> b!1266529 m!1166217))

(assert (=> d!139143 d!139161))

(declare-fun d!139163 () Bool)

(declare-fun res!843241 () Bool)

(declare-fun e!721411 () Bool)

(assert (=> d!139163 (=> res!843241 e!721411)))

(assert (=> d!139163 (= res!843241 (or ((_ is Nil!28500) (insertStrictlySorted!469 l!706 key1!31 v1!26)) ((_ is Nil!28500) (t!42034 (insertStrictlySorted!469 l!706 key1!31 v1!26)))))))

(assert (=> d!139163 (= (isStrictlySorted!799 (insertStrictlySorted!469 l!706 key1!31 v1!26)) e!721411)))

(declare-fun b!1266530 () Bool)

(declare-fun e!721412 () Bool)

(assert (=> b!1266530 (= e!721411 e!721412)))

(declare-fun res!843242 () Bool)

(assert (=> b!1266530 (=> (not res!843242) (not e!721412))))

(assert (=> b!1266530 (= res!843242 (bvslt (_1!10680 (h!29708 (insertStrictlySorted!469 l!706 key1!31 v1!26))) (_1!10680 (h!29708 (t!42034 (insertStrictlySorted!469 l!706 key1!31 v1!26))))))))

(declare-fun b!1266531 () Bool)

(assert (=> b!1266531 (= e!721412 (isStrictlySorted!799 (t!42034 (insertStrictlySorted!469 l!706 key1!31 v1!26))))))

(assert (= (and d!139163 (not res!843241)) b!1266530))

(assert (= (and b!1266530 res!843242) b!1266531))

(declare-fun m!1166219 () Bool)

(assert (=> b!1266531 m!1166219))

(assert (=> d!139143 d!139163))

(declare-fun d!139165 () Bool)

(assert (=> d!139165 (= ($colon$colon!645 (removeStrictlySorted!160 (t!42034 (insertStrictlySorted!469 l!706 key1!31 v1!26)) key1!31) (h!29708 (insertStrictlySorted!469 l!706 key1!31 v1!26))) (Cons!28499 (h!29708 (insertStrictlySorted!469 l!706 key1!31 v1!26)) (removeStrictlySorted!160 (t!42034 (insertStrictlySorted!469 l!706 key1!31 v1!26)) key1!31)))))

(assert (=> b!1266391 d!139165))

(declare-fun b!1266532 () Bool)

(declare-fun e!721415 () List!28503)

(declare-fun e!721413 () List!28503)

(assert (=> b!1266532 (= e!721415 e!721413)))

(declare-fun c!123434 () Bool)

(assert (=> b!1266532 (= c!123434 (and ((_ is Cons!28499) (t!42034 (insertStrictlySorted!469 l!706 key1!31 v1!26))) (not (= (_1!10680 (h!29708 (t!42034 (insertStrictlySorted!469 l!706 key1!31 v1!26)))) key1!31))))))

(declare-fun b!1266533 () Bool)

(declare-fun e!721414 () Bool)

(declare-fun lt!574089 () List!28503)

(assert (=> b!1266533 (= e!721414 (not (containsKey!660 lt!574089 key1!31)))))

(declare-fun d!139167 () Bool)

(assert (=> d!139167 e!721414))

(declare-fun res!843243 () Bool)

(assert (=> d!139167 (=> (not res!843243) (not e!721414))))

(assert (=> d!139167 (= res!843243 (isStrictlySorted!799 lt!574089))))

(assert (=> d!139167 (= lt!574089 e!721415)))

(declare-fun c!123435 () Bool)

(assert (=> d!139167 (= c!123435 (and ((_ is Cons!28499) (t!42034 (insertStrictlySorted!469 l!706 key1!31 v1!26))) (= (_1!10680 (h!29708 (t!42034 (insertStrictlySorted!469 l!706 key1!31 v1!26)))) key1!31)))))

(assert (=> d!139167 (isStrictlySorted!799 (t!42034 (insertStrictlySorted!469 l!706 key1!31 v1!26)))))

(assert (=> d!139167 (= (removeStrictlySorted!160 (t!42034 (insertStrictlySorted!469 l!706 key1!31 v1!26)) key1!31) lt!574089)))

(declare-fun b!1266534 () Bool)

(assert (=> b!1266534 (= e!721413 ($colon$colon!645 (removeStrictlySorted!160 (t!42034 (t!42034 (insertStrictlySorted!469 l!706 key1!31 v1!26))) key1!31) (h!29708 (t!42034 (insertStrictlySorted!469 l!706 key1!31 v1!26)))))))

(declare-fun b!1266535 () Bool)

(assert (=> b!1266535 (= e!721415 (t!42034 (t!42034 (insertStrictlySorted!469 l!706 key1!31 v1!26))))))

(declare-fun b!1266536 () Bool)

(assert (=> b!1266536 (= e!721413 Nil!28500)))

(assert (= (and d!139167 c!123435) b!1266535))

(assert (= (and d!139167 (not c!123435)) b!1266532))

(assert (= (and b!1266532 c!123434) b!1266534))

(assert (= (and b!1266532 (not c!123434)) b!1266536))

(assert (= (and d!139167 res!843243) b!1266533))

(declare-fun m!1166221 () Bool)

(assert (=> b!1266533 m!1166221))

(declare-fun m!1166223 () Bool)

(assert (=> d!139167 m!1166223))

(assert (=> d!139167 m!1166219))

(declare-fun m!1166225 () Bool)

(assert (=> b!1266534 m!1166225))

(assert (=> b!1266534 m!1166225))

(declare-fun m!1166227 () Bool)

(assert (=> b!1266534 m!1166227))

(assert (=> b!1266391 d!139167))

(declare-fun d!139169 () Bool)

(assert (=> d!139169 (= ($colon$colon!645 e!721367 (ite c!123429 (h!29708 l!706) (tuple2!21341 key1!31 v1!26))) (Cons!28499 (ite c!123429 (h!29708 l!706) (tuple2!21341 key1!31 v1!26)) e!721367))))

(assert (=> bm!62484 d!139169))

(declare-fun d!139171 () Bool)

(declare-fun res!843244 () Bool)

(declare-fun e!721416 () Bool)

(assert (=> d!139171 (=> res!843244 e!721416)))

(assert (=> d!139171 (= res!843244 (and ((_ is Cons!28499) lt!574078) (= (_1!10680 (h!29708 lt!574078)) key1!31)))))

(assert (=> d!139171 (= (containsKey!660 lt!574078 key1!31) e!721416)))

(declare-fun b!1266537 () Bool)

(declare-fun e!721417 () Bool)

(assert (=> b!1266537 (= e!721416 e!721417)))

(declare-fun res!843245 () Bool)

(assert (=> b!1266537 (=> (not res!843245) (not e!721417))))

(assert (=> b!1266537 (= res!843245 (and (or (not ((_ is Cons!28499) lt!574078)) (bvsle (_1!10680 (h!29708 lt!574078)) key1!31)) ((_ is Cons!28499) lt!574078) (bvslt (_1!10680 (h!29708 lt!574078)) key1!31)))))

(declare-fun b!1266538 () Bool)

(assert (=> b!1266538 (= e!721417 (containsKey!660 (t!42034 lt!574078) key1!31))))

(assert (= (and d!139171 (not res!843244)) b!1266537))

(assert (= (and b!1266537 res!843245) b!1266538))

(declare-fun m!1166229 () Bool)

(assert (=> b!1266538 m!1166229))

(assert (=> b!1266390 d!139171))

(declare-fun d!139173 () Bool)

(declare-fun res!843246 () Bool)

(declare-fun e!721418 () Bool)

(assert (=> d!139173 (=> res!843246 e!721418)))

(assert (=> d!139173 (= res!843246 (and ((_ is Cons!28499) lt!574087) (= (_1!10680 (h!29708 lt!574087)) key1!31)))))

(assert (=> d!139173 (= (containsKey!660 lt!574087 key1!31) e!721418)))

(declare-fun b!1266539 () Bool)

(declare-fun e!721419 () Bool)

(assert (=> b!1266539 (= e!721418 e!721419)))

(declare-fun res!843247 () Bool)

(assert (=> b!1266539 (=> (not res!843247) (not e!721419))))

(assert (=> b!1266539 (= res!843247 (and (or (not ((_ is Cons!28499) lt!574087)) (bvsle (_1!10680 (h!29708 lt!574087)) key1!31)) ((_ is Cons!28499) lt!574087) (bvslt (_1!10680 (h!29708 lt!574087)) key1!31)))))

(declare-fun b!1266540 () Bool)

(assert (=> b!1266540 (= e!721419 (containsKey!660 (t!42034 lt!574087) key1!31))))

(assert (= (and d!139173 (not res!843246)) b!1266539))

(assert (= (and b!1266539 res!843247) b!1266540))

(declare-fun m!1166231 () Bool)

(assert (=> b!1266540 m!1166231))

(assert (=> b!1266477 d!139173))

(declare-fun d!139175 () Bool)

(declare-fun res!843248 () Bool)

(declare-fun e!721420 () Bool)

(assert (=> d!139175 (=> res!843248 e!721420)))

(assert (=> d!139175 (= res!843248 (or ((_ is Nil!28500) (t!42034 l!706)) ((_ is Nil!28500) (t!42034 (t!42034 l!706)))))))

(assert (=> d!139175 (= (isStrictlySorted!799 (t!42034 l!706)) e!721420)))

(declare-fun b!1266541 () Bool)

(declare-fun e!721421 () Bool)

(assert (=> b!1266541 (= e!721420 e!721421)))

(declare-fun res!843249 () Bool)

(assert (=> b!1266541 (=> (not res!843249) (not e!721421))))

(assert (=> b!1266541 (= res!843249 (bvslt (_1!10680 (h!29708 (t!42034 l!706))) (_1!10680 (h!29708 (t!42034 (t!42034 l!706))))))))

(declare-fun b!1266542 () Bool)

(assert (=> b!1266542 (= e!721421 (isStrictlySorted!799 (t!42034 (t!42034 l!706))))))

(assert (= (and d!139175 (not res!843248)) b!1266541))

(assert (= (and b!1266541 res!843249) b!1266542))

(declare-fun m!1166233 () Bool)

(assert (=> b!1266542 m!1166233))

(assert (=> b!1266347 d!139175))

(declare-fun d!139177 () Bool)

(declare-fun e!721425 () Bool)

(assert (=> d!139177 e!721425))

(declare-fun res!843251 () Bool)

(assert (=> d!139177 (=> (not res!843251) (not e!721425))))

(declare-fun lt!574090 () List!28503)

(assert (=> d!139177 (= res!843251 (isStrictlySorted!799 lt!574090))))

(declare-fun e!721422 () List!28503)

(assert (=> d!139177 (= lt!574090 e!721422)))

(declare-fun c!123439 () Bool)

(assert (=> d!139177 (= c!123439 (and ((_ is Cons!28499) (t!42034 l!706)) (bvslt (_1!10680 (h!29708 (t!42034 l!706))) key1!31)))))

(assert (=> d!139177 (isStrictlySorted!799 (t!42034 l!706))))

(assert (=> d!139177 (= (insertStrictlySorted!469 (t!42034 l!706) key1!31 v1!26) lt!574090)))

(declare-fun e!721423 () List!28503)

(declare-fun b!1266543 () Bool)

(assert (=> b!1266543 (= e!721423 (insertStrictlySorted!469 (t!42034 (t!42034 l!706)) key1!31 v1!26))))

(declare-fun b!1266544 () Bool)

(declare-fun e!721426 () List!28503)

(declare-fun call!62491 () List!28503)

(assert (=> b!1266544 (= e!721426 call!62491)))

(declare-fun bm!62488 () Bool)

(declare-fun call!62493 () List!28503)

(assert (=> bm!62488 (= call!62491 call!62493)))

(declare-fun b!1266545 () Bool)

(assert (=> b!1266545 (= e!721425 (contains!7660 lt!574090 (tuple2!21341 key1!31 v1!26)))))

(declare-fun b!1266546 () Bool)

(declare-fun call!62492 () List!28503)

(assert (=> b!1266546 (= e!721422 call!62492)))

(declare-fun c!123438 () Bool)

(declare-fun b!1266547 () Bool)

(declare-fun c!123437 () Bool)

(assert (=> b!1266547 (= e!721423 (ite c!123438 (t!42034 (t!42034 l!706)) (ite c!123437 (Cons!28499 (h!29708 (t!42034 l!706)) (t!42034 (t!42034 l!706))) Nil!28500)))))

(declare-fun b!1266548 () Bool)

(assert (=> b!1266548 (= c!123437 (and ((_ is Cons!28499) (t!42034 l!706)) (bvsgt (_1!10680 (h!29708 (t!42034 l!706))) key1!31)))))

(declare-fun e!721424 () List!28503)

(assert (=> b!1266548 (= e!721424 e!721426)))

(declare-fun b!1266549 () Bool)

(assert (=> b!1266549 (= e!721426 call!62491)))

(declare-fun b!1266550 () Bool)

(assert (=> b!1266550 (= e!721424 call!62493)))

(declare-fun bm!62489 () Bool)

(assert (=> bm!62489 (= call!62493 call!62492)))

(declare-fun b!1266551 () Bool)

(declare-fun res!843250 () Bool)

(assert (=> b!1266551 (=> (not res!843250) (not e!721425))))

(assert (=> b!1266551 (= res!843250 (containsKey!660 lt!574090 key1!31))))

(declare-fun b!1266552 () Bool)

(assert (=> b!1266552 (= e!721422 e!721424)))

(assert (=> b!1266552 (= c!123438 (and ((_ is Cons!28499) (t!42034 l!706)) (= (_1!10680 (h!29708 (t!42034 l!706))) key1!31)))))

(declare-fun bm!62490 () Bool)

(assert (=> bm!62490 (= call!62492 ($colon$colon!645 e!721423 (ite c!123439 (h!29708 (t!42034 l!706)) (tuple2!21341 key1!31 v1!26))))))

(declare-fun c!123436 () Bool)

(assert (=> bm!62490 (= c!123436 c!123439)))

(assert (= (and d!139177 c!123439) b!1266546))

(assert (= (and d!139177 (not c!123439)) b!1266552))

(assert (= (and b!1266552 c!123438) b!1266550))

(assert (= (and b!1266552 (not c!123438)) b!1266548))

(assert (= (and b!1266548 c!123437) b!1266549))

(assert (= (and b!1266548 (not c!123437)) b!1266544))

(assert (= (or b!1266549 b!1266544) bm!62488))

(assert (= (or b!1266550 bm!62488) bm!62489))

(assert (= (or b!1266546 bm!62489) bm!62490))

(assert (= (and bm!62490 c!123436) b!1266543))

(assert (= (and bm!62490 (not c!123436)) b!1266547))

(assert (= (and d!139177 res!843251) b!1266551))

(assert (= (and b!1266551 res!843250) b!1266545))

(declare-fun m!1166235 () Bool)

(assert (=> b!1266543 m!1166235))

(declare-fun m!1166237 () Bool)

(assert (=> bm!62490 m!1166237))

(declare-fun m!1166239 () Bool)

(assert (=> b!1266545 m!1166239))

(declare-fun m!1166241 () Bool)

(assert (=> b!1266551 m!1166241))

(declare-fun m!1166243 () Bool)

(assert (=> d!139177 m!1166243))

(assert (=> d!139177 m!1166145))

(assert (=> b!1266469 d!139177))

(declare-fun d!139179 () Bool)

(declare-fun lt!574093 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!644 (List!28503) (InoxSet tuple2!21340))

(assert (=> d!139179 (= lt!574093 (select (content!644 lt!574087) (tuple2!21341 key1!31 v1!26)))))

(declare-fun e!721431 () Bool)

(assert (=> d!139179 (= lt!574093 e!721431)))

(declare-fun res!843256 () Bool)

(assert (=> d!139179 (=> (not res!843256) (not e!721431))))

(assert (=> d!139179 (= res!843256 ((_ is Cons!28499) lt!574087))))

(assert (=> d!139179 (= (contains!7660 lt!574087 (tuple2!21341 key1!31 v1!26)) lt!574093)))

(declare-fun b!1266557 () Bool)

(declare-fun e!721432 () Bool)

(assert (=> b!1266557 (= e!721431 e!721432)))

(declare-fun res!843257 () Bool)

(assert (=> b!1266557 (=> res!843257 e!721432)))

(assert (=> b!1266557 (= res!843257 (= (h!29708 lt!574087) (tuple2!21341 key1!31 v1!26)))))

(declare-fun b!1266558 () Bool)

(assert (=> b!1266558 (= e!721432 (contains!7660 (t!42034 lt!574087) (tuple2!21341 key1!31 v1!26)))))

(assert (= (and d!139179 res!843256) b!1266557))

(assert (= (and b!1266557 (not res!843257)) b!1266558))

(declare-fun m!1166245 () Bool)

(assert (=> d!139179 m!1166245))

(declare-fun m!1166247 () Bool)

(assert (=> d!139179 m!1166247))

(declare-fun m!1166249 () Bool)

(assert (=> b!1266558 m!1166249))

(assert (=> b!1266471 d!139179))

(declare-fun d!139181 () Bool)

(declare-fun res!843258 () Bool)

(declare-fun e!721433 () Bool)

(assert (=> d!139181 (=> res!843258 e!721433)))

(assert (=> d!139181 (= res!843258 (or ((_ is Nil!28500) lt!574087) ((_ is Nil!28500) (t!42034 lt!574087))))))

(assert (=> d!139181 (= (isStrictlySorted!799 lt!574087) e!721433)))

(declare-fun b!1266559 () Bool)

(declare-fun e!721434 () Bool)

(assert (=> b!1266559 (= e!721433 e!721434)))

(declare-fun res!843259 () Bool)

(assert (=> b!1266559 (=> (not res!843259) (not e!721434))))

(assert (=> b!1266559 (= res!843259 (bvslt (_1!10680 (h!29708 lt!574087)) (_1!10680 (h!29708 (t!42034 lt!574087)))))))

(declare-fun b!1266560 () Bool)

(assert (=> b!1266560 (= e!721434 (isStrictlySorted!799 (t!42034 lt!574087)))))

(assert (= (and d!139181 (not res!843258)) b!1266559))

(assert (= (and b!1266559 res!843259) b!1266560))

(declare-fun m!1166251 () Bool)

(assert (=> b!1266560 m!1166251))

(assert (=> d!139149 d!139181))

(assert (=> d!139149 d!139137))

(declare-fun d!139183 () Bool)

(declare-fun res!843260 () Bool)

(declare-fun e!721435 () Bool)

(assert (=> d!139183 (=> res!843260 e!721435)))

(assert (=> d!139183 (= res!843260 (and ((_ is Cons!28499) (t!42034 l!706)) (= (_1!10680 (h!29708 (t!42034 l!706))) key1!31)))))

(assert (=> d!139183 (= (containsKey!660 (t!42034 l!706) key1!31) e!721435)))

(declare-fun b!1266561 () Bool)

(declare-fun e!721436 () Bool)

(assert (=> b!1266561 (= e!721435 e!721436)))

(declare-fun res!843261 () Bool)

(assert (=> b!1266561 (=> (not res!843261) (not e!721436))))

(assert (=> b!1266561 (= res!843261 (and (or (not ((_ is Cons!28499) (t!42034 l!706))) (bvsle (_1!10680 (h!29708 (t!42034 l!706))) key1!31)) ((_ is Cons!28499) (t!42034 l!706)) (bvslt (_1!10680 (h!29708 (t!42034 l!706))) key1!31)))))

(declare-fun b!1266562 () Bool)

(assert (=> b!1266562 (= e!721436 (containsKey!660 (t!42034 (t!42034 l!706)) key1!31))))

(assert (= (and d!139183 (not res!843260)) b!1266561))

(assert (= (and b!1266561 res!843261) b!1266562))

(declare-fun m!1166253 () Bool)

(assert (=> b!1266562 m!1166253))

(assert (=> b!1266504 d!139183))

(declare-fun b!1266563 () Bool)

(declare-fun e!721437 () Bool)

(declare-fun tp!96448 () Bool)

(assert (=> b!1266563 (= e!721437 (and tp_is_empty!32535 tp!96448))))

(assert (=> b!1266515 (= tp!96441 e!721437)))

(assert (= (and b!1266515 ((_ is Cons!28499) (t!42034 (t!42034 l!706)))) b!1266563))

(check-sat (not b!1266529) (not b!1266560) (not d!139177) (not b!1266538) (not b!1266562) (not b!1266551) tp_is_empty!32535 (not b!1266540) (not b!1266534) (not d!139167) (not b!1266543) (not b!1266533) (not b!1266542) (not b!1266545) (not bm!62490) (not d!139179) (not b!1266563) (not b!1266558) (not b!1266531))
(check-sat)
