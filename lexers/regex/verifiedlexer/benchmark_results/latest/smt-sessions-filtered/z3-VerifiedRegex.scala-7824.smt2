; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!410948 () Bool)

(assert start!410948)

(declare-fun b!4278391 () Bool)

(declare-fun e!2656170 () Bool)

(declare-datatypes ((T!79990 0))(
  ( (T!79991 (val!15272 Int)) )
))
(declare-datatypes ((List!47481 0))(
  ( (Nil!47357) (Cons!47357 (h!52777 T!79990) (t!354054 List!47481)) )
))
(declare-datatypes ((IArray!28683 0))(
  ( (IArray!28684 (innerList!14399 List!47481)) )
))
(declare-datatypes ((Conc!14339 0))(
  ( (Node!14339 (left!35291 Conc!14339) (right!35621 Conc!14339) (csize!28908 Int) (cheight!14550 Int)) (Leaf!22164 (xs!17645 IArray!28683) (csize!28909 Int)) (Empty!14339) )
))
(declare-fun t!3602 () Conc!14339)

(declare-fun height!1889 (Conc!14339) Int)

(assert (=> b!4278391 (= e!2656170 (not (< (height!1889 (left!35291 t!3602)) (height!1889 t!3602))))))

(declare-fun lt!1514193 () List!47481)

(declare-fun acc!259 () List!47481)

(declare-fun efficientList!602 (Conc!14339 List!47481) List!47481)

(assert (=> b!4278391 (= lt!1514193 (efficientList!602 (right!35621 t!3602) acc!259))))

(declare-fun lt!1514194 () List!47481)

(declare-fun lt!1514195 () List!47481)

(declare-fun ++!12103 (List!47481 List!47481) List!47481)

(assert (=> b!4278391 (= (++!12103 (++!12103 lt!1514194 lt!1514195) acc!259) (++!12103 lt!1514194 (++!12103 lt!1514195 acc!259)))))

(declare-datatypes ((Unit!66313 0))(
  ( (Unit!66314) )
))
(declare-fun lt!1514196 () Unit!66313)

(declare-fun lemmaConcatAssociativity!2734 (List!47481 List!47481 List!47481) Unit!66313)

(assert (=> b!4278391 (= lt!1514196 (lemmaConcatAssociativity!2734 lt!1514194 lt!1514195 acc!259))))

(declare-fun list!17275 (Conc!14339) List!47481)

(assert (=> b!4278391 (= lt!1514195 (list!17275 (right!35621 t!3602)))))

(assert (=> b!4278391 (= lt!1514194 (list!17275 (left!35291 t!3602)))))

(declare-fun res!1756517 () Bool)

(assert (=> start!410948 (=> (not res!1756517) (not e!2656170))))

(get-info :version)

(assert (=> start!410948 (= res!1756517 (and (not ((_ is Empty!14339) t!3602)) (not ((_ is Leaf!22164) t!3602))))))

(assert (=> start!410948 e!2656170))

(declare-fun e!2656171 () Bool)

(declare-fun inv!62719 (Conc!14339) Bool)

(assert (=> start!410948 (and (inv!62719 t!3602) e!2656171)))

(declare-fun e!2656168 () Bool)

(assert (=> start!410948 e!2656168))

(declare-fun b!4278392 () Bool)

(declare-fun e!2656169 () Bool)

(declare-fun tp!1309023 () Bool)

(assert (=> b!4278392 (= e!2656169 tp!1309023)))

(declare-fun b!4278393 () Bool)

(declare-fun inv!62720 (IArray!28683) Bool)

(assert (=> b!4278393 (= e!2656171 (and (inv!62720 (xs!17645 t!3602)) e!2656169))))

(declare-fun b!4278394 () Bool)

(declare-fun tp_is_empty!22953 () Bool)

(declare-fun tp!1309025 () Bool)

(assert (=> b!4278394 (= e!2656168 (and tp_is_empty!22953 tp!1309025))))

(declare-fun b!4278395 () Bool)

(declare-fun tp!1309024 () Bool)

(declare-fun tp!1309026 () Bool)

(assert (=> b!4278395 (= e!2656171 (and (inv!62719 (left!35291 t!3602)) tp!1309026 (inv!62719 (right!35621 t!3602)) tp!1309024))))

(assert (= (and start!410948 res!1756517) b!4278391))

(assert (= (and start!410948 ((_ is Node!14339) t!3602)) b!4278395))

(assert (= b!4278393 b!4278392))

(assert (= (and start!410948 ((_ is Leaf!22164) t!3602)) b!4278393))

(assert (= (and start!410948 ((_ is Cons!47357) acc!259)) b!4278394))

(declare-fun m!4875013 () Bool)

(assert (=> b!4278391 m!4875013))

(declare-fun m!4875015 () Bool)

(assert (=> b!4278391 m!4875015))

(declare-fun m!4875017 () Bool)

(assert (=> b!4278391 m!4875017))

(declare-fun m!4875019 () Bool)

(assert (=> b!4278391 m!4875019))

(declare-fun m!4875021 () Bool)

(assert (=> b!4278391 m!4875021))

(declare-fun m!4875023 () Bool)

(assert (=> b!4278391 m!4875023))

(declare-fun m!4875025 () Bool)

(assert (=> b!4278391 m!4875025))

(declare-fun m!4875027 () Bool)

(assert (=> b!4278391 m!4875027))

(declare-fun m!4875029 () Bool)

(assert (=> b!4278391 m!4875029))

(declare-fun m!4875031 () Bool)

(assert (=> b!4278391 m!4875031))

(assert (=> b!4278391 m!4875013))

(assert (=> b!4278391 m!4875025))

(declare-fun m!4875033 () Bool)

(assert (=> start!410948 m!4875033))

(declare-fun m!4875035 () Bool)

(assert (=> b!4278393 m!4875035))

(declare-fun m!4875037 () Bool)

(assert (=> b!4278395 m!4875037))

(declare-fun m!4875039 () Bool)

(assert (=> b!4278395 m!4875039))

(check-sat tp_is_empty!22953 (not b!4278394) (not b!4278392) (not b!4278395) (not b!4278393) (not b!4278391) (not start!410948))
(check-sat)
(get-model)

(declare-fun d!1263359 () Bool)

(declare-fun c!728792 () Bool)

(assert (=> d!1263359 (= c!728792 ((_ is Node!14339) t!3602))))

(declare-fun e!2656186 () Bool)

(assert (=> d!1263359 (= (inv!62719 t!3602) e!2656186)))

(declare-fun b!4278417 () Bool)

(declare-fun inv!62723 (Conc!14339) Bool)

(assert (=> b!4278417 (= e!2656186 (inv!62723 t!3602))))

(declare-fun b!4278418 () Bool)

(declare-fun e!2656187 () Bool)

(assert (=> b!4278418 (= e!2656186 e!2656187)))

(declare-fun res!1756525 () Bool)

(assert (=> b!4278418 (= res!1756525 (not ((_ is Leaf!22164) t!3602)))))

(assert (=> b!4278418 (=> res!1756525 e!2656187)))

(declare-fun b!4278419 () Bool)

(declare-fun inv!62724 (Conc!14339) Bool)

(assert (=> b!4278419 (= e!2656187 (inv!62724 t!3602))))

(assert (= (and d!1263359 c!728792) b!4278417))

(assert (= (and d!1263359 (not c!728792)) b!4278418))

(assert (= (and b!4278418 (not res!1756525)) b!4278419))

(declare-fun m!4875053 () Bool)

(assert (=> b!4278417 m!4875053))

(declare-fun m!4875055 () Bool)

(assert (=> b!4278419 m!4875055))

(assert (=> start!410948 d!1263359))

(declare-fun d!1263367 () Bool)

(declare-fun size!34668 (List!47481) Int)

(assert (=> d!1263367 (= (inv!62720 (xs!17645 t!3602)) (<= (size!34668 (innerList!14399 (xs!17645 t!3602))) 2147483647))))

(declare-fun bs!602619 () Bool)

(assert (= bs!602619 d!1263367))

(declare-fun m!4875057 () Bool)

(assert (=> bs!602619 m!4875057))

(assert (=> b!4278393 d!1263367))

(declare-fun d!1263369 () Bool)

(declare-fun c!728797 () Bool)

(assert (=> d!1263369 (= c!728797 ((_ is Node!14339) (left!35291 t!3602)))))

(declare-fun e!2656192 () Bool)

(assert (=> d!1263369 (= (inv!62719 (left!35291 t!3602)) e!2656192)))

(declare-fun b!4278428 () Bool)

(assert (=> b!4278428 (= e!2656192 (inv!62723 (left!35291 t!3602)))))

(declare-fun b!4278429 () Bool)

(declare-fun e!2656193 () Bool)

(assert (=> b!4278429 (= e!2656192 e!2656193)))

(declare-fun res!1756526 () Bool)

(assert (=> b!4278429 (= res!1756526 (not ((_ is Leaf!22164) (left!35291 t!3602))))))

(assert (=> b!4278429 (=> res!1756526 e!2656193)))

(declare-fun b!4278430 () Bool)

(assert (=> b!4278430 (= e!2656193 (inv!62724 (left!35291 t!3602)))))

(assert (= (and d!1263369 c!728797) b!4278428))

(assert (= (and d!1263369 (not c!728797)) b!4278429))

(assert (= (and b!4278429 (not res!1756526)) b!4278430))

(declare-fun m!4875059 () Bool)

(assert (=> b!4278428 m!4875059))

(declare-fun m!4875061 () Bool)

(assert (=> b!4278430 m!4875061))

(assert (=> b!4278395 d!1263369))

(declare-fun d!1263371 () Bool)

(declare-fun c!728798 () Bool)

(assert (=> d!1263371 (= c!728798 ((_ is Node!14339) (right!35621 t!3602)))))

(declare-fun e!2656194 () Bool)

(assert (=> d!1263371 (= (inv!62719 (right!35621 t!3602)) e!2656194)))

(declare-fun b!4278431 () Bool)

(assert (=> b!4278431 (= e!2656194 (inv!62723 (right!35621 t!3602)))))

(declare-fun b!4278432 () Bool)

(declare-fun e!2656195 () Bool)

(assert (=> b!4278432 (= e!2656194 e!2656195)))

(declare-fun res!1756527 () Bool)

(assert (=> b!4278432 (= res!1756527 (not ((_ is Leaf!22164) (right!35621 t!3602))))))

(assert (=> b!4278432 (=> res!1756527 e!2656195)))

(declare-fun b!4278433 () Bool)

(assert (=> b!4278433 (= e!2656195 (inv!62724 (right!35621 t!3602)))))

(assert (= (and d!1263371 c!728798) b!4278431))

(assert (= (and d!1263371 (not c!728798)) b!4278432))

(assert (= (and b!4278432 (not res!1756527)) b!4278433))

(declare-fun m!4875063 () Bool)

(assert (=> b!4278431 m!4875063))

(declare-fun m!4875065 () Bool)

(assert (=> b!4278433 m!4875065))

(assert (=> b!4278395 d!1263371))

(declare-fun d!1263373 () Bool)

(declare-fun c!728807 () Bool)

(assert (=> d!1263373 (= c!728807 ((_ is Empty!14339) (left!35291 t!3602)))))

(declare-fun e!2656204 () List!47481)

(assert (=> d!1263373 (= (list!17275 (left!35291 t!3602)) e!2656204)))

(declare-fun b!4278453 () Bool)

(declare-fun e!2656205 () List!47481)

(assert (=> b!4278453 (= e!2656205 (++!12103 (list!17275 (left!35291 (left!35291 t!3602))) (list!17275 (right!35621 (left!35291 t!3602)))))))

(declare-fun b!4278451 () Bool)

(assert (=> b!4278451 (= e!2656204 e!2656205)))

(declare-fun c!728808 () Bool)

(assert (=> b!4278451 (= c!728808 ((_ is Leaf!22164) (left!35291 t!3602)))))

(declare-fun b!4278450 () Bool)

(assert (=> b!4278450 (= e!2656204 Nil!47357)))

(declare-fun b!4278452 () Bool)

(declare-fun list!17277 (IArray!28683) List!47481)

(assert (=> b!4278452 (= e!2656205 (list!17277 (xs!17645 (left!35291 t!3602))))))

(assert (= (and d!1263373 c!728807) b!4278450))

(assert (= (and d!1263373 (not c!728807)) b!4278451))

(assert (= (and b!4278451 c!728808) b!4278452))

(assert (= (and b!4278451 (not c!728808)) b!4278453))

(declare-fun m!4875083 () Bool)

(assert (=> b!4278453 m!4875083))

(declare-fun m!4875085 () Bool)

(assert (=> b!4278453 m!4875085))

(assert (=> b!4278453 m!4875083))

(assert (=> b!4278453 m!4875085))

(declare-fun m!4875087 () Bool)

(assert (=> b!4278453 m!4875087))

(declare-fun m!4875089 () Bool)

(assert (=> b!4278452 m!4875089))

(assert (=> b!4278391 d!1263373))

(declare-fun e!2656216 () List!47481)

(declare-fun b!4278475 () Bool)

(assert (=> b!4278475 (= e!2656216 (Cons!47357 (h!52777 (++!12103 lt!1514194 lt!1514195)) (++!12103 (t!354054 (++!12103 lt!1514194 lt!1514195)) acc!259)))))

(declare-fun b!4278474 () Bool)

(assert (=> b!4278474 (= e!2656216 acc!259)))

(declare-fun d!1263381 () Bool)

(declare-fun e!2656217 () Bool)

(assert (=> d!1263381 e!2656217))

(declare-fun res!1756539 () Bool)

(assert (=> d!1263381 (=> (not res!1756539) (not e!2656217))))

(declare-fun lt!1514202 () List!47481)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7491 (List!47481) (InoxSet T!79990))

(assert (=> d!1263381 (= res!1756539 (= (content!7491 lt!1514202) ((_ map or) (content!7491 (++!12103 lt!1514194 lt!1514195)) (content!7491 acc!259))))))

(assert (=> d!1263381 (= lt!1514202 e!2656216)))

(declare-fun c!728814 () Bool)

(assert (=> d!1263381 (= c!728814 ((_ is Nil!47357) (++!12103 lt!1514194 lt!1514195)))))

(assert (=> d!1263381 (= (++!12103 (++!12103 lt!1514194 lt!1514195) acc!259) lt!1514202)))

(declare-fun b!4278476 () Bool)

(declare-fun res!1756538 () Bool)

(assert (=> b!4278476 (=> (not res!1756538) (not e!2656217))))

(assert (=> b!4278476 (= res!1756538 (= (size!34668 lt!1514202) (+ (size!34668 (++!12103 lt!1514194 lt!1514195)) (size!34668 acc!259))))))

(declare-fun b!4278477 () Bool)

(assert (=> b!4278477 (= e!2656217 (or (not (= acc!259 Nil!47357)) (= lt!1514202 (++!12103 lt!1514194 lt!1514195))))))

(assert (= (and d!1263381 c!728814) b!4278474))

(assert (= (and d!1263381 (not c!728814)) b!4278475))

(assert (= (and d!1263381 res!1756539) b!4278476))

(assert (= (and b!4278476 res!1756538) b!4278477))

(declare-fun m!4875105 () Bool)

(assert (=> b!4278475 m!4875105))

(declare-fun m!4875107 () Bool)

(assert (=> d!1263381 m!4875107))

(assert (=> d!1263381 m!4875025))

(declare-fun m!4875109 () Bool)

(assert (=> d!1263381 m!4875109))

(declare-fun m!4875111 () Bool)

(assert (=> d!1263381 m!4875111))

(declare-fun m!4875113 () Bool)

(assert (=> b!4278476 m!4875113))

(assert (=> b!4278476 m!4875025))

(declare-fun m!4875115 () Bool)

(assert (=> b!4278476 m!4875115))

(declare-fun m!4875117 () Bool)

(assert (=> b!4278476 m!4875117))

(assert (=> b!4278391 d!1263381))

(declare-fun b!4278510 () Bool)

(declare-fun e!2656234 () List!47481)

(declare-fun call!294274 () List!47481)

(assert (=> b!4278510 (= e!2656234 call!294274)))

(declare-fun b!4278511 () Bool)

(declare-fun e!2656236 () List!47481)

(declare-fun lt!1514230 () List!47481)

(assert (=> b!4278511 (= e!2656236 lt!1514230)))

(declare-fun bm!294269 () Bool)

(declare-fun c!728831 () Bool)

(declare-fun c!728829 () Bool)

(assert (=> bm!294269 (= c!728831 c!728829)))

(assert (=> bm!294269 (= call!294274 (++!12103 e!2656236 acc!259))))

(declare-fun d!1263385 () Bool)

(declare-fun lt!1514229 () List!47481)

(assert (=> d!1263385 (= lt!1514229 (++!12103 (list!17275 (right!35621 t!3602)) acc!259))))

(declare-fun e!2656235 () List!47481)

(assert (=> d!1263385 (= lt!1514229 e!2656235)))

(declare-fun c!728830 () Bool)

(assert (=> d!1263385 (= c!728830 ((_ is Empty!14339) (right!35621 t!3602)))))

(assert (=> d!1263385 (= (efficientList!602 (right!35621 t!3602) acc!259) lt!1514229)))

(declare-fun b!4278512 () Bool)

(declare-fun efficientList!603 (IArray!28683) List!47481)

(assert (=> b!4278512 (= e!2656236 (efficientList!603 (xs!17645 (right!35621 t!3602))))))

(declare-fun b!4278513 () Bool)

(assert (=> b!4278513 (= e!2656235 e!2656234)))

(assert (=> b!4278513 (= c!728829 ((_ is Leaf!22164) (right!35621 t!3602)))))

(declare-fun b!4278514 () Bool)

(declare-fun lt!1514228 () Unit!66313)

(declare-fun lt!1514231 () Unit!66313)

(assert (=> b!4278514 (= lt!1514228 lt!1514231)))

(declare-fun lt!1514232 () List!47481)

(assert (=> b!4278514 (= (++!12103 (++!12103 lt!1514232 lt!1514230) acc!259) (++!12103 lt!1514232 call!294274))))

(assert (=> b!4278514 (= lt!1514231 (lemmaConcatAssociativity!2734 lt!1514232 lt!1514230 acc!259))))

(assert (=> b!4278514 (= lt!1514230 (list!17275 (right!35621 (right!35621 t!3602))))))

(assert (=> b!4278514 (= lt!1514232 (list!17275 (left!35291 (right!35621 t!3602))))))

(assert (=> b!4278514 (= e!2656234 (efficientList!602 (left!35291 (right!35621 t!3602)) (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259)))))

(declare-fun b!4278515 () Bool)

(assert (=> b!4278515 (= e!2656235 acc!259)))

(assert (= (and d!1263385 c!728830) b!4278515))

(assert (= (and d!1263385 (not c!728830)) b!4278513))

(assert (= (and b!4278513 c!728829) b!4278510))

(assert (= (and b!4278513 (not c!728829)) b!4278514))

(assert (= (or b!4278510 b!4278514) bm!294269))

(assert (= (and bm!294269 c!728831) b!4278512))

(assert (= (and bm!294269 (not c!728831)) b!4278511))

(declare-fun m!4875145 () Bool)

(assert (=> bm!294269 m!4875145))

(assert (=> d!1263385 m!4875031))

(assert (=> d!1263385 m!4875031))

(declare-fun m!4875147 () Bool)

(assert (=> d!1263385 m!4875147))

(declare-fun m!4875149 () Bool)

(assert (=> b!4278512 m!4875149))

(declare-fun m!4875151 () Bool)

(assert (=> b!4278514 m!4875151))

(declare-fun m!4875153 () Bool)

(assert (=> b!4278514 m!4875153))

(declare-fun m!4875155 () Bool)

(assert (=> b!4278514 m!4875155))

(declare-fun m!4875157 () Bool)

(assert (=> b!4278514 m!4875157))

(assert (=> b!4278514 m!4875157))

(declare-fun m!4875159 () Bool)

(assert (=> b!4278514 m!4875159))

(declare-fun m!4875161 () Bool)

(assert (=> b!4278514 m!4875161))

(assert (=> b!4278514 m!4875151))

(declare-fun m!4875163 () Bool)

(assert (=> b!4278514 m!4875163))

(declare-fun m!4875165 () Bool)

(assert (=> b!4278514 m!4875165))

(assert (=> b!4278391 d!1263385))

(declare-fun d!1263395 () Bool)

(assert (=> d!1263395 (= (height!1889 (left!35291 t!3602)) (ite ((_ is Empty!14339) (left!35291 t!3602)) 0 (ite ((_ is Leaf!22164) (left!35291 t!3602)) 1 (cheight!14550 (left!35291 t!3602)))))))

(assert (=> b!4278391 d!1263395))

(declare-fun b!4278517 () Bool)

(declare-fun e!2656237 () List!47481)

(assert (=> b!4278517 (= e!2656237 (Cons!47357 (h!52777 lt!1514194) (++!12103 (t!354054 lt!1514194) (++!12103 lt!1514195 acc!259))))))

(declare-fun b!4278516 () Bool)

(assert (=> b!4278516 (= e!2656237 (++!12103 lt!1514195 acc!259))))

(declare-fun d!1263397 () Bool)

(declare-fun e!2656238 () Bool)

(assert (=> d!1263397 e!2656238))

(declare-fun res!1756545 () Bool)

(assert (=> d!1263397 (=> (not res!1756545) (not e!2656238))))

(declare-fun lt!1514233 () List!47481)

(assert (=> d!1263397 (= res!1756545 (= (content!7491 lt!1514233) ((_ map or) (content!7491 lt!1514194) (content!7491 (++!12103 lt!1514195 acc!259)))))))

(assert (=> d!1263397 (= lt!1514233 e!2656237)))

(declare-fun c!728832 () Bool)

(assert (=> d!1263397 (= c!728832 ((_ is Nil!47357) lt!1514194))))

(assert (=> d!1263397 (= (++!12103 lt!1514194 (++!12103 lt!1514195 acc!259)) lt!1514233)))

(declare-fun b!4278518 () Bool)

(declare-fun res!1756544 () Bool)

(assert (=> b!4278518 (=> (not res!1756544) (not e!2656238))))

(assert (=> b!4278518 (= res!1756544 (= (size!34668 lt!1514233) (+ (size!34668 lt!1514194) (size!34668 (++!12103 lt!1514195 acc!259)))))))

(declare-fun b!4278519 () Bool)

(assert (=> b!4278519 (= e!2656238 (or (not (= (++!12103 lt!1514195 acc!259) Nil!47357)) (= lt!1514233 lt!1514194)))))

(assert (= (and d!1263397 c!728832) b!4278516))

(assert (= (and d!1263397 (not c!728832)) b!4278517))

(assert (= (and d!1263397 res!1756545) b!4278518))

(assert (= (and b!4278518 res!1756544) b!4278519))

(assert (=> b!4278517 m!4875013))

(declare-fun m!4875167 () Bool)

(assert (=> b!4278517 m!4875167))

(declare-fun m!4875169 () Bool)

(assert (=> d!1263397 m!4875169))

(declare-fun m!4875171 () Bool)

(assert (=> d!1263397 m!4875171))

(assert (=> d!1263397 m!4875013))

(declare-fun m!4875173 () Bool)

(assert (=> d!1263397 m!4875173))

(declare-fun m!4875175 () Bool)

(assert (=> b!4278518 m!4875175))

(declare-fun m!4875177 () Bool)

(assert (=> b!4278518 m!4875177))

(assert (=> b!4278518 m!4875013))

(declare-fun m!4875179 () Bool)

(assert (=> b!4278518 m!4875179))

(assert (=> b!4278391 d!1263397))

(declare-fun d!1263399 () Bool)

(declare-fun c!728836 () Bool)

(assert (=> d!1263399 (= c!728836 ((_ is Empty!14339) (right!35621 t!3602)))))

(declare-fun e!2656242 () List!47481)

(assert (=> d!1263399 (= (list!17275 (right!35621 t!3602)) e!2656242)))

(declare-fun b!4278529 () Bool)

(declare-fun e!2656243 () List!47481)

(assert (=> b!4278529 (= e!2656243 (++!12103 (list!17275 (left!35291 (right!35621 t!3602))) (list!17275 (right!35621 (right!35621 t!3602)))))))

(declare-fun b!4278527 () Bool)

(assert (=> b!4278527 (= e!2656242 e!2656243)))

(declare-fun c!728837 () Bool)

(assert (=> b!4278527 (= c!728837 ((_ is Leaf!22164) (right!35621 t!3602)))))

(declare-fun b!4278526 () Bool)

(assert (=> b!4278526 (= e!2656242 Nil!47357)))

(declare-fun b!4278528 () Bool)

(assert (=> b!4278528 (= e!2656243 (list!17277 (xs!17645 (right!35621 t!3602))))))

(assert (= (and d!1263399 c!728836) b!4278526))

(assert (= (and d!1263399 (not c!728836)) b!4278527))

(assert (= (and b!4278527 c!728837) b!4278528))

(assert (= (and b!4278527 (not c!728837)) b!4278529))

(assert (=> b!4278529 m!4875161))

(assert (=> b!4278529 m!4875153))

(assert (=> b!4278529 m!4875161))

(assert (=> b!4278529 m!4875153))

(declare-fun m!4875181 () Bool)

(assert (=> b!4278529 m!4875181))

(declare-fun m!4875183 () Bool)

(assert (=> b!4278528 m!4875183))

(assert (=> b!4278391 d!1263399))

(declare-fun b!4278531 () Bool)

(declare-fun e!2656244 () List!47481)

(assert (=> b!4278531 (= e!2656244 (Cons!47357 (h!52777 lt!1514194) (++!12103 (t!354054 lt!1514194) lt!1514195)))))

(declare-fun b!4278530 () Bool)

(assert (=> b!4278530 (= e!2656244 lt!1514195)))

(declare-fun d!1263401 () Bool)

(declare-fun e!2656245 () Bool)

(assert (=> d!1263401 e!2656245))

(declare-fun res!1756547 () Bool)

(assert (=> d!1263401 (=> (not res!1756547) (not e!2656245))))

(declare-fun lt!1514239 () List!47481)

(assert (=> d!1263401 (= res!1756547 (= (content!7491 lt!1514239) ((_ map or) (content!7491 lt!1514194) (content!7491 lt!1514195))))))

(assert (=> d!1263401 (= lt!1514239 e!2656244)))

(declare-fun c!728838 () Bool)

(assert (=> d!1263401 (= c!728838 ((_ is Nil!47357) lt!1514194))))

(assert (=> d!1263401 (= (++!12103 lt!1514194 lt!1514195) lt!1514239)))

(declare-fun b!4278532 () Bool)

(declare-fun res!1756546 () Bool)

(assert (=> b!4278532 (=> (not res!1756546) (not e!2656245))))

(assert (=> b!4278532 (= res!1756546 (= (size!34668 lt!1514239) (+ (size!34668 lt!1514194) (size!34668 lt!1514195))))))

(declare-fun b!4278533 () Bool)

(assert (=> b!4278533 (= e!2656245 (or (not (= lt!1514195 Nil!47357)) (= lt!1514239 lt!1514194)))))

(assert (= (and d!1263401 c!728838) b!4278530))

(assert (= (and d!1263401 (not c!728838)) b!4278531))

(assert (= (and d!1263401 res!1756547) b!4278532))

(assert (= (and b!4278532 res!1756546) b!4278533))

(declare-fun m!4875203 () Bool)

(assert (=> b!4278531 m!4875203))

(declare-fun m!4875205 () Bool)

(assert (=> d!1263401 m!4875205))

(assert (=> d!1263401 m!4875171))

(declare-fun m!4875207 () Bool)

(assert (=> d!1263401 m!4875207))

(declare-fun m!4875209 () Bool)

(assert (=> b!4278532 m!4875209))

(assert (=> b!4278532 m!4875177))

(declare-fun m!4875211 () Bool)

(assert (=> b!4278532 m!4875211))

(assert (=> b!4278391 d!1263401))

(declare-fun d!1263405 () Bool)

(assert (=> d!1263405 (= (height!1889 t!3602) (ite ((_ is Empty!14339) t!3602) 0 (ite ((_ is Leaf!22164) t!3602) 1 (cheight!14550 t!3602))))))

(assert (=> b!4278391 d!1263405))

(declare-fun d!1263407 () Bool)

(assert (=> d!1263407 (= (++!12103 (++!12103 lt!1514194 lt!1514195) acc!259) (++!12103 lt!1514194 (++!12103 lt!1514195 acc!259)))))

(declare-fun lt!1514243 () Unit!66313)

(declare-fun choose!26088 (List!47481 List!47481 List!47481) Unit!66313)

(assert (=> d!1263407 (= lt!1514243 (choose!26088 lt!1514194 lt!1514195 acc!259))))

(assert (=> d!1263407 (= (lemmaConcatAssociativity!2734 lt!1514194 lt!1514195 acc!259) lt!1514243)))

(declare-fun bs!602622 () Bool)

(assert (= bs!602622 d!1263407))

(assert (=> bs!602622 m!4875025))

(assert (=> bs!602622 m!4875027))

(assert (=> bs!602622 m!4875013))

(assert (=> bs!602622 m!4875015))

(assert (=> bs!602622 m!4875025))

(declare-fun m!4875221 () Bool)

(assert (=> bs!602622 m!4875221))

(assert (=> bs!602622 m!4875013))

(assert (=> b!4278391 d!1263407))

(declare-fun b!4278550 () Bool)

(declare-fun e!2656253 () List!47481)

(assert (=> b!4278550 (= e!2656253 (Cons!47357 (h!52777 lt!1514195) (++!12103 (t!354054 lt!1514195) acc!259)))))

(declare-fun b!4278548 () Bool)

(assert (=> b!4278548 (= e!2656253 acc!259)))

(declare-fun d!1263411 () Bool)

(declare-fun e!2656254 () Bool)

(assert (=> d!1263411 e!2656254))

(declare-fun res!1756551 () Bool)

(assert (=> d!1263411 (=> (not res!1756551) (not e!2656254))))

(declare-fun lt!1514244 () List!47481)

(assert (=> d!1263411 (= res!1756551 (= (content!7491 lt!1514244) ((_ map or) (content!7491 lt!1514195) (content!7491 acc!259))))))

(assert (=> d!1263411 (= lt!1514244 e!2656253)))

(declare-fun c!728840 () Bool)

(assert (=> d!1263411 (= c!728840 ((_ is Nil!47357) lt!1514195))))

(assert (=> d!1263411 (= (++!12103 lt!1514195 acc!259) lt!1514244)))

(declare-fun b!4278551 () Bool)

(declare-fun res!1756550 () Bool)

(assert (=> b!4278551 (=> (not res!1756550) (not e!2656254))))

(assert (=> b!4278551 (= res!1756550 (= (size!34668 lt!1514244) (+ (size!34668 lt!1514195) (size!34668 acc!259))))))

(declare-fun b!4278552 () Bool)

(assert (=> b!4278552 (= e!2656254 (or (not (= acc!259 Nil!47357)) (= lt!1514244 lt!1514195)))))

(assert (= (and d!1263411 c!728840) b!4278548))

(assert (= (and d!1263411 (not c!728840)) b!4278550))

(assert (= (and d!1263411 res!1756551) b!4278551))

(assert (= (and b!4278551 res!1756550) b!4278552))

(declare-fun m!4875229 () Bool)

(assert (=> b!4278550 m!4875229))

(declare-fun m!4875231 () Bool)

(assert (=> d!1263411 m!4875231))

(assert (=> d!1263411 m!4875207))

(assert (=> d!1263411 m!4875111))

(declare-fun m!4875233 () Bool)

(assert (=> b!4278551 m!4875233))

(assert (=> b!4278551 m!4875211))

(assert (=> b!4278551 m!4875117))

(assert (=> b!4278391 d!1263411))

(declare-fun b!4278564 () Bool)

(declare-fun e!2656262 () Bool)

(declare-fun tp!1309043 () Bool)

(assert (=> b!4278564 (= e!2656262 (and tp_is_empty!22953 tp!1309043))))

(assert (=> b!4278392 (= tp!1309023 e!2656262)))

(assert (= (and b!4278392 ((_ is Cons!47357) (innerList!14399 (xs!17645 t!3602)))) b!4278564))

(declare-fun b!4278566 () Bool)

(declare-fun e!2656264 () Bool)

(declare-fun tp!1309045 () Bool)

(assert (=> b!4278566 (= e!2656264 (and tp_is_empty!22953 tp!1309045))))

(assert (=> b!4278394 (= tp!1309025 e!2656264)))

(assert (= (and b!4278394 ((_ is Cons!47357) (t!354054 acc!259))) b!4278566))

(declare-fun e!2656270 () Bool)

(declare-fun tp!1309054 () Bool)

(declare-fun tp!1309055 () Bool)

(declare-fun b!4278576 () Bool)

(assert (=> b!4278576 (= e!2656270 (and (inv!62719 (left!35291 (left!35291 t!3602))) tp!1309054 (inv!62719 (right!35621 (left!35291 t!3602))) tp!1309055))))

(declare-fun b!4278578 () Bool)

(declare-fun e!2656271 () Bool)

(declare-fun tp!1309053 () Bool)

(assert (=> b!4278578 (= e!2656271 tp!1309053)))

(declare-fun b!4278577 () Bool)

(assert (=> b!4278577 (= e!2656270 (and (inv!62720 (xs!17645 (left!35291 t!3602))) e!2656271))))

(assert (=> b!4278395 (= tp!1309026 (and (inv!62719 (left!35291 t!3602)) e!2656270))))

(assert (= (and b!4278395 ((_ is Node!14339) (left!35291 t!3602))) b!4278576))

(assert (= b!4278577 b!4278578))

(assert (= (and b!4278395 ((_ is Leaf!22164) (left!35291 t!3602))) b!4278577))

(declare-fun m!4875241 () Bool)

(assert (=> b!4278576 m!4875241))

(declare-fun m!4875243 () Bool)

(assert (=> b!4278576 m!4875243))

(declare-fun m!4875245 () Bool)

(assert (=> b!4278577 m!4875245))

(assert (=> b!4278395 m!4875037))

(declare-fun tp!1309057 () Bool)

(declare-fun e!2656272 () Bool)

(declare-fun tp!1309058 () Bool)

(declare-fun b!4278579 () Bool)

(assert (=> b!4278579 (= e!2656272 (and (inv!62719 (left!35291 (right!35621 t!3602))) tp!1309057 (inv!62719 (right!35621 (right!35621 t!3602))) tp!1309058))))

(declare-fun b!4278581 () Bool)

(declare-fun e!2656273 () Bool)

(declare-fun tp!1309056 () Bool)

(assert (=> b!4278581 (= e!2656273 tp!1309056)))

(declare-fun b!4278580 () Bool)

(assert (=> b!4278580 (= e!2656272 (and (inv!62720 (xs!17645 (right!35621 t!3602))) e!2656273))))

(assert (=> b!4278395 (= tp!1309024 (and (inv!62719 (right!35621 t!3602)) e!2656272))))

(assert (= (and b!4278395 ((_ is Node!14339) (right!35621 t!3602))) b!4278579))

(assert (= b!4278580 b!4278581))

(assert (= (and b!4278395 ((_ is Leaf!22164) (right!35621 t!3602))) b!4278580))

(declare-fun m!4875247 () Bool)

(assert (=> b!4278579 m!4875247))

(declare-fun m!4875249 () Bool)

(assert (=> b!4278579 m!4875249))

(declare-fun m!4875251 () Bool)

(assert (=> b!4278580 m!4875251))

(assert (=> b!4278395 m!4875039))

(check-sat (not b!4278395) (not b!4278428) (not d!1263397) (not b!4278517) tp_is_empty!22953 (not b!4278550) (not b!4278580) (not b!4278518) (not d!1263385) (not b!4278431) (not b!4278531) (not b!4278514) (not b!4278578) (not b!4278577) (not b!4278452) (not b!4278581) (not b!4278566) (not b!4278528) (not d!1263381) (not d!1263367) (not b!4278433) (not b!4278579) (not b!4278430) (not b!4278419) (not b!4278564) (not bm!294269) (not b!4278551) (not b!4278475) (not d!1263407) (not b!4278576) (not b!4278512) (not b!4278529) (not b!4278417) (not b!4278532) (not d!1263401) (not b!4278453) (not b!4278476) (not d!1263411))
(check-sat)
(get-model)

(declare-fun b!4278593 () Bool)

(declare-fun e!2656279 () List!47481)

(assert (=> b!4278593 (= e!2656279 (Cons!47357 (h!52777 (t!354054 (++!12103 lt!1514194 lt!1514195))) (++!12103 (t!354054 (t!354054 (++!12103 lt!1514194 lt!1514195))) acc!259)))))

(declare-fun b!4278592 () Bool)

(assert (=> b!4278592 (= e!2656279 acc!259)))

(declare-fun d!1263421 () Bool)

(declare-fun e!2656280 () Bool)

(assert (=> d!1263421 e!2656280))

(declare-fun res!1756553 () Bool)

(assert (=> d!1263421 (=> (not res!1756553) (not e!2656280))))

(declare-fun lt!1514250 () List!47481)

(assert (=> d!1263421 (= res!1756553 (= (content!7491 lt!1514250) ((_ map or) (content!7491 (t!354054 (++!12103 lt!1514194 lt!1514195))) (content!7491 acc!259))))))

(assert (=> d!1263421 (= lt!1514250 e!2656279)))

(declare-fun c!728846 () Bool)

(assert (=> d!1263421 (= c!728846 ((_ is Nil!47357) (t!354054 (++!12103 lt!1514194 lt!1514195))))))

(assert (=> d!1263421 (= (++!12103 (t!354054 (++!12103 lt!1514194 lt!1514195)) acc!259) lt!1514250)))

(declare-fun b!4278594 () Bool)

(declare-fun res!1756552 () Bool)

(assert (=> b!4278594 (=> (not res!1756552) (not e!2656280))))

(assert (=> b!4278594 (= res!1756552 (= (size!34668 lt!1514250) (+ (size!34668 (t!354054 (++!12103 lt!1514194 lt!1514195))) (size!34668 acc!259))))))

(declare-fun b!4278595 () Bool)

(assert (=> b!4278595 (= e!2656280 (or (not (= acc!259 Nil!47357)) (= lt!1514250 (t!354054 (++!12103 lt!1514194 lt!1514195)))))))

(assert (= (and d!1263421 c!728846) b!4278592))

(assert (= (and d!1263421 (not c!728846)) b!4278593))

(assert (= (and d!1263421 res!1756553) b!4278594))

(assert (= (and b!4278594 res!1756552) b!4278595))

(declare-fun m!4875259 () Bool)

(assert (=> b!4278593 m!4875259))

(declare-fun m!4875261 () Bool)

(assert (=> d!1263421 m!4875261))

(declare-fun m!4875263 () Bool)

(assert (=> d!1263421 m!4875263))

(assert (=> d!1263421 m!4875111))

(declare-fun m!4875265 () Bool)

(assert (=> b!4278594 m!4875265))

(declare-fun m!4875267 () Bool)

(assert (=> b!4278594 m!4875267))

(assert (=> b!4278594 m!4875117))

(assert (=> b!4278475 d!1263421))

(declare-fun d!1263423 () Bool)

(declare-fun c!728849 () Bool)

(assert (=> d!1263423 (= c!728849 ((_ is Nil!47357) lt!1514233))))

(declare-fun e!2656286 () (InoxSet T!79990))

(assert (=> d!1263423 (= (content!7491 lt!1514233) e!2656286)))

(declare-fun b!4278609 () Bool)

(assert (=> b!4278609 (= e!2656286 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4278610 () Bool)

(assert (=> b!4278610 (= e!2656286 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 lt!1514233) true) (content!7491 (t!354054 lt!1514233))))))

(assert (= (and d!1263423 c!728849) b!4278609))

(assert (= (and d!1263423 (not c!728849)) b!4278610))

(declare-fun m!4875269 () Bool)

(assert (=> b!4278610 m!4875269))

(declare-fun m!4875273 () Bool)

(assert (=> b!4278610 m!4875273))

(assert (=> d!1263397 d!1263423))

(declare-fun d!1263425 () Bool)

(declare-fun c!728850 () Bool)

(assert (=> d!1263425 (= c!728850 ((_ is Nil!47357) lt!1514194))))

(declare-fun e!2656287 () (InoxSet T!79990))

(assert (=> d!1263425 (= (content!7491 lt!1514194) e!2656287)))

(declare-fun b!4278611 () Bool)

(assert (=> b!4278611 (= e!2656287 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4278612 () Bool)

(assert (=> b!4278612 (= e!2656287 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 lt!1514194) true) (content!7491 (t!354054 lt!1514194))))))

(assert (= (and d!1263425 c!728850) b!4278611))

(assert (= (and d!1263425 (not c!728850)) b!4278612))

(declare-fun m!4875281 () Bool)

(assert (=> b!4278612 m!4875281))

(declare-fun m!4875283 () Bool)

(assert (=> b!4278612 m!4875283))

(assert (=> d!1263397 d!1263425))

(declare-fun d!1263429 () Bool)

(declare-fun c!728851 () Bool)

(assert (=> d!1263429 (= c!728851 ((_ is Nil!47357) (++!12103 lt!1514195 acc!259)))))

(declare-fun e!2656289 () (InoxSet T!79990))

(assert (=> d!1263429 (= (content!7491 (++!12103 lt!1514195 acc!259)) e!2656289)))

(declare-fun b!4278616 () Bool)

(assert (=> b!4278616 (= e!2656289 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4278617 () Bool)

(assert (=> b!4278617 (= e!2656289 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 (++!12103 lt!1514195 acc!259)) true) (content!7491 (t!354054 (++!12103 lt!1514195 acc!259)))))))

(assert (= (and d!1263429 c!728851) b!4278616))

(assert (= (and d!1263429 (not c!728851)) b!4278617))

(declare-fun m!4875293 () Bool)

(assert (=> b!4278617 m!4875293))

(declare-fun m!4875297 () Bool)

(assert (=> b!4278617 m!4875297))

(assert (=> d!1263397 d!1263429))

(declare-fun d!1263433 () Bool)

(declare-fun lt!1514256 () Int)

(assert (=> d!1263433 (>= lt!1514256 0)))

(declare-fun e!2656301 () Int)

(assert (=> d!1263433 (= lt!1514256 e!2656301)))

(declare-fun c!728861 () Bool)

(assert (=> d!1263433 (= c!728861 ((_ is Nil!47357) (innerList!14399 (xs!17645 t!3602))))))

(assert (=> d!1263433 (= (size!34668 (innerList!14399 (xs!17645 t!3602))) lt!1514256)))

(declare-fun b!4278640 () Bool)

(assert (=> b!4278640 (= e!2656301 0)))

(declare-fun b!4278641 () Bool)

(assert (=> b!4278641 (= e!2656301 (+ 1 (size!34668 (t!354054 (innerList!14399 (xs!17645 t!3602))))))))

(assert (= (and d!1263433 c!728861) b!4278640))

(assert (= (and d!1263433 (not c!728861)) b!4278641))

(declare-fun m!4875343 () Bool)

(assert (=> b!4278641 m!4875343))

(assert (=> d!1263367 d!1263433))

(declare-fun d!1263451 () Bool)

(declare-fun lt!1514259 () Int)

(assert (=> d!1263451 (>= lt!1514259 0)))

(declare-fun e!2656305 () Int)

(assert (=> d!1263451 (= lt!1514259 e!2656305)))

(declare-fun c!728864 () Bool)

(assert (=> d!1263451 (= c!728864 ((_ is Nil!47357) lt!1514239))))

(assert (=> d!1263451 (= (size!34668 lt!1514239) lt!1514259)))

(declare-fun b!4278648 () Bool)

(assert (=> b!4278648 (= e!2656305 0)))

(declare-fun b!4278649 () Bool)

(assert (=> b!4278649 (= e!2656305 (+ 1 (size!34668 (t!354054 lt!1514239))))))

(assert (= (and d!1263451 c!728864) b!4278648))

(assert (= (and d!1263451 (not c!728864)) b!4278649))

(declare-fun m!4875345 () Bool)

(assert (=> b!4278649 m!4875345))

(assert (=> b!4278532 d!1263451))

(declare-fun d!1263453 () Bool)

(declare-fun lt!1514260 () Int)

(assert (=> d!1263453 (>= lt!1514260 0)))

(declare-fun e!2656306 () Int)

(assert (=> d!1263453 (= lt!1514260 e!2656306)))

(declare-fun c!728865 () Bool)

(assert (=> d!1263453 (= c!728865 ((_ is Nil!47357) lt!1514194))))

(assert (=> d!1263453 (= (size!34668 lt!1514194) lt!1514260)))

(declare-fun b!4278650 () Bool)

(assert (=> b!4278650 (= e!2656306 0)))

(declare-fun b!4278651 () Bool)

(assert (=> b!4278651 (= e!2656306 (+ 1 (size!34668 (t!354054 lt!1514194))))))

(assert (= (and d!1263453 c!728865) b!4278650))

(assert (= (and d!1263453 (not c!728865)) b!4278651))

(declare-fun m!4875357 () Bool)

(assert (=> b!4278651 m!4875357))

(assert (=> b!4278532 d!1263453))

(declare-fun d!1263457 () Bool)

(declare-fun lt!1514261 () Int)

(assert (=> d!1263457 (>= lt!1514261 0)))

(declare-fun e!2656307 () Int)

(assert (=> d!1263457 (= lt!1514261 e!2656307)))

(declare-fun c!728866 () Bool)

(assert (=> d!1263457 (= c!728866 ((_ is Nil!47357) lt!1514195))))

(assert (=> d!1263457 (= (size!34668 lt!1514195) lt!1514261)))

(declare-fun b!4278652 () Bool)

(assert (=> b!4278652 (= e!2656307 0)))

(declare-fun b!4278653 () Bool)

(assert (=> b!4278653 (= e!2656307 (+ 1 (size!34668 (t!354054 lt!1514195))))))

(assert (= (and d!1263457 c!728866) b!4278652))

(assert (= (and d!1263457 (not c!728866)) b!4278653))

(declare-fun m!4875359 () Bool)

(assert (=> b!4278653 m!4875359))

(assert (=> b!4278532 d!1263457))

(declare-fun b!4278659 () Bool)

(declare-fun e!2656310 () List!47481)

(assert (=> b!4278659 (= e!2656310 (Cons!47357 (h!52777 (list!17275 (right!35621 t!3602))) (++!12103 (t!354054 (list!17275 (right!35621 t!3602))) acc!259)))))

(declare-fun b!4278658 () Bool)

(assert (=> b!4278658 (= e!2656310 acc!259)))

(declare-fun d!1263459 () Bool)

(declare-fun e!2656311 () Bool)

(assert (=> d!1263459 e!2656311))

(declare-fun res!1756575 () Bool)

(assert (=> d!1263459 (=> (not res!1756575) (not e!2656311))))

(declare-fun lt!1514263 () List!47481)

(assert (=> d!1263459 (= res!1756575 (= (content!7491 lt!1514263) ((_ map or) (content!7491 (list!17275 (right!35621 t!3602))) (content!7491 acc!259))))))

(assert (=> d!1263459 (= lt!1514263 e!2656310)))

(declare-fun c!728868 () Bool)

(assert (=> d!1263459 (= c!728868 ((_ is Nil!47357) (list!17275 (right!35621 t!3602))))))

(assert (=> d!1263459 (= (++!12103 (list!17275 (right!35621 t!3602)) acc!259) lt!1514263)))

(declare-fun b!4278660 () Bool)

(declare-fun res!1756574 () Bool)

(assert (=> b!4278660 (=> (not res!1756574) (not e!2656311))))

(assert (=> b!4278660 (= res!1756574 (= (size!34668 lt!1514263) (+ (size!34668 (list!17275 (right!35621 t!3602))) (size!34668 acc!259))))))

(declare-fun b!4278661 () Bool)

(assert (=> b!4278661 (= e!2656311 (or (not (= acc!259 Nil!47357)) (= lt!1514263 (list!17275 (right!35621 t!3602)))))))

(assert (= (and d!1263459 c!728868) b!4278658))

(assert (= (and d!1263459 (not c!728868)) b!4278659))

(assert (= (and d!1263459 res!1756575) b!4278660))

(assert (= (and b!4278660 res!1756574) b!4278661))

(declare-fun m!4875375 () Bool)

(assert (=> b!4278659 m!4875375))

(declare-fun m!4875377 () Bool)

(assert (=> d!1263459 m!4875377))

(assert (=> d!1263459 m!4875031))

(declare-fun m!4875383 () Bool)

(assert (=> d!1263459 m!4875383))

(assert (=> d!1263459 m!4875111))

(declare-fun m!4875385 () Bool)

(assert (=> b!4278660 m!4875385))

(assert (=> b!4278660 m!4875031))

(declare-fun m!4875389 () Bool)

(assert (=> b!4278660 m!4875389))

(assert (=> b!4278660 m!4875117))

(assert (=> d!1263385 d!1263459))

(assert (=> d!1263385 d!1263399))

(declare-fun d!1263465 () Bool)

(declare-fun res!1756584 () Bool)

(declare-fun e!2656328 () Bool)

(assert (=> d!1263465 (=> (not res!1756584) (not e!2656328))))

(assert (=> d!1263465 (= res!1756584 (<= (size!34668 (list!17277 (xs!17645 (right!35621 t!3602)))) 512))))

(assert (=> d!1263465 (= (inv!62724 (right!35621 t!3602)) e!2656328)))

(declare-fun b!4278692 () Bool)

(declare-fun res!1756585 () Bool)

(assert (=> b!4278692 (=> (not res!1756585) (not e!2656328))))

(assert (=> b!4278692 (= res!1756585 (= (csize!28909 (right!35621 t!3602)) (size!34668 (list!17277 (xs!17645 (right!35621 t!3602))))))))

(declare-fun b!4278693 () Bool)

(assert (=> b!4278693 (= e!2656328 (and (> (csize!28909 (right!35621 t!3602)) 0) (<= (csize!28909 (right!35621 t!3602)) 512)))))

(assert (= (and d!1263465 res!1756584) b!4278692))

(assert (= (and b!4278692 res!1756585) b!4278693))

(assert (=> d!1263465 m!4875183))

(assert (=> d!1263465 m!4875183))

(declare-fun m!4875427 () Bool)

(assert (=> d!1263465 m!4875427))

(assert (=> b!4278692 m!4875183))

(assert (=> b!4278692 m!4875183))

(assert (=> b!4278692 m!4875427))

(assert (=> b!4278433 d!1263465))

(assert (=> d!1263407 d!1263381))

(assert (=> d!1263407 d!1263397))

(assert (=> d!1263407 d!1263411))

(declare-fun d!1263487 () Bool)

(assert (=> d!1263487 (= (++!12103 (++!12103 lt!1514194 lt!1514195) acc!259) (++!12103 lt!1514194 (++!12103 lt!1514195 acc!259)))))

(assert (=> d!1263487 true))

(declare-fun _$15!524 () Unit!66313)

(assert (=> d!1263487 (= (choose!26088 lt!1514194 lt!1514195 acc!259) _$15!524)))

(declare-fun bs!602626 () Bool)

(assert (= bs!602626 d!1263487))

(assert (=> bs!602626 m!4875025))

(assert (=> bs!602626 m!4875025))

(assert (=> bs!602626 m!4875027))

(assert (=> bs!602626 m!4875013))

(assert (=> bs!602626 m!4875013))

(assert (=> bs!602626 m!4875015))

(assert (=> d!1263407 d!1263487))

(assert (=> d!1263407 d!1263401))

(declare-fun d!1263495 () Bool)

(declare-fun lt!1514272 () Int)

(assert (=> d!1263495 (>= lt!1514272 0)))

(declare-fun e!2656336 () Int)

(assert (=> d!1263495 (= lt!1514272 e!2656336)))

(declare-fun c!728882 () Bool)

(assert (=> d!1263495 (= c!728882 ((_ is Nil!47357) lt!1514202))))

(assert (=> d!1263495 (= (size!34668 lt!1514202) lt!1514272)))

(declare-fun b!4278708 () Bool)

(assert (=> b!4278708 (= e!2656336 0)))

(declare-fun b!4278709 () Bool)

(assert (=> b!4278709 (= e!2656336 (+ 1 (size!34668 (t!354054 lt!1514202))))))

(assert (= (and d!1263495 c!728882) b!4278708))

(assert (= (and d!1263495 (not c!728882)) b!4278709))

(declare-fun m!4875451 () Bool)

(assert (=> b!4278709 m!4875451))

(assert (=> b!4278476 d!1263495))

(declare-fun d!1263497 () Bool)

(declare-fun lt!1514273 () Int)

(assert (=> d!1263497 (>= lt!1514273 0)))

(declare-fun e!2656337 () Int)

(assert (=> d!1263497 (= lt!1514273 e!2656337)))

(declare-fun c!728883 () Bool)

(assert (=> d!1263497 (= c!728883 ((_ is Nil!47357) (++!12103 lt!1514194 lt!1514195)))))

(assert (=> d!1263497 (= (size!34668 (++!12103 lt!1514194 lt!1514195)) lt!1514273)))

(declare-fun b!4278710 () Bool)

(assert (=> b!4278710 (= e!2656337 0)))

(declare-fun b!4278711 () Bool)

(assert (=> b!4278711 (= e!2656337 (+ 1 (size!34668 (t!354054 (++!12103 lt!1514194 lt!1514195)))))))

(assert (= (and d!1263497 c!728883) b!4278710))

(assert (= (and d!1263497 (not c!728883)) b!4278711))

(assert (=> b!4278711 m!4875267))

(assert (=> b!4278476 d!1263497))

(declare-fun d!1263501 () Bool)

(declare-fun lt!1514275 () Int)

(assert (=> d!1263501 (>= lt!1514275 0)))

(declare-fun e!2656340 () Int)

(assert (=> d!1263501 (= lt!1514275 e!2656340)))

(declare-fun c!728885 () Bool)

(assert (=> d!1263501 (= c!728885 ((_ is Nil!47357) acc!259))))

(assert (=> d!1263501 (= (size!34668 acc!259) lt!1514275)))

(declare-fun b!4278716 () Bool)

(assert (=> b!4278716 (= e!2656340 0)))

(declare-fun b!4278717 () Bool)

(assert (=> b!4278717 (= e!2656340 (+ 1 (size!34668 (t!354054 acc!259))))))

(assert (= (and d!1263501 c!728885) b!4278716))

(assert (= (and d!1263501 (not c!728885)) b!4278717))

(declare-fun m!4875467 () Bool)

(assert (=> b!4278717 m!4875467))

(assert (=> b!4278476 d!1263501))

(assert (=> b!4278395 d!1263369))

(assert (=> b!4278395 d!1263371))

(declare-fun d!1263503 () Bool)

(declare-fun res!1756615 () Bool)

(declare-fun e!2656360 () Bool)

(assert (=> d!1263503 (=> (not res!1756615) (not e!2656360))))

(declare-fun size!34671 (Conc!14339) Int)

(assert (=> d!1263503 (= res!1756615 (= (csize!28908 (right!35621 t!3602)) (+ (size!34671 (left!35291 (right!35621 t!3602))) (size!34671 (right!35621 (right!35621 t!3602))))))))

(assert (=> d!1263503 (= (inv!62723 (right!35621 t!3602)) e!2656360)))

(declare-fun b!4278757 () Bool)

(declare-fun res!1756616 () Bool)

(assert (=> b!4278757 (=> (not res!1756616) (not e!2656360))))

(assert (=> b!4278757 (= res!1756616 (and (not (= (left!35291 (right!35621 t!3602)) Empty!14339)) (not (= (right!35621 (right!35621 t!3602)) Empty!14339))))))

(declare-fun b!4278758 () Bool)

(declare-fun res!1756617 () Bool)

(assert (=> b!4278758 (=> (not res!1756617) (not e!2656360))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4278758 (= res!1756617 (= (cheight!14550 (right!35621 t!3602)) (+ (max!0 (height!1889 (left!35291 (right!35621 t!3602))) (height!1889 (right!35621 (right!35621 t!3602)))) 1)))))

(declare-fun b!4278759 () Bool)

(assert (=> b!4278759 (= e!2656360 (<= 0 (cheight!14550 (right!35621 t!3602))))))

(assert (= (and d!1263503 res!1756615) b!4278757))

(assert (= (and b!4278757 res!1756616) b!4278758))

(assert (= (and b!4278758 res!1756617) b!4278759))

(declare-fun m!4875547 () Bool)

(assert (=> d!1263503 m!4875547))

(declare-fun m!4875549 () Bool)

(assert (=> d!1263503 m!4875549))

(declare-fun m!4875551 () Bool)

(assert (=> b!4278758 m!4875551))

(declare-fun m!4875553 () Bool)

(assert (=> b!4278758 m!4875553))

(assert (=> b!4278758 m!4875551))

(assert (=> b!4278758 m!4875553))

(declare-fun m!4875557 () Bool)

(assert (=> b!4278758 m!4875557))

(assert (=> b!4278431 d!1263503))

(declare-fun b!4278767 () Bool)

(declare-fun e!2656364 () List!47481)

(assert (=> b!4278767 (= e!2656364 (Cons!47357 (h!52777 (t!354054 lt!1514194)) (++!12103 (t!354054 (t!354054 lt!1514194)) lt!1514195)))))

(declare-fun b!4278766 () Bool)

(assert (=> b!4278766 (= e!2656364 lt!1514195)))

(declare-fun d!1263525 () Bool)

(declare-fun e!2656365 () Bool)

(assert (=> d!1263525 e!2656365))

(declare-fun res!1756619 () Bool)

(assert (=> d!1263525 (=> (not res!1756619) (not e!2656365))))

(declare-fun lt!1514287 () List!47481)

(assert (=> d!1263525 (= res!1756619 (= (content!7491 lt!1514287) ((_ map or) (content!7491 (t!354054 lt!1514194)) (content!7491 lt!1514195))))))

(assert (=> d!1263525 (= lt!1514287 e!2656364)))

(declare-fun c!728900 () Bool)

(assert (=> d!1263525 (= c!728900 ((_ is Nil!47357) (t!354054 lt!1514194)))))

(assert (=> d!1263525 (= (++!12103 (t!354054 lt!1514194) lt!1514195) lt!1514287)))

(declare-fun b!4278768 () Bool)

(declare-fun res!1756618 () Bool)

(assert (=> b!4278768 (=> (not res!1756618) (not e!2656365))))

(assert (=> b!4278768 (= res!1756618 (= (size!34668 lt!1514287) (+ (size!34668 (t!354054 lt!1514194)) (size!34668 lt!1514195))))))

(declare-fun b!4278769 () Bool)

(assert (=> b!4278769 (= e!2656365 (or (not (= lt!1514195 Nil!47357)) (= lt!1514287 (t!354054 lt!1514194))))))

(assert (= (and d!1263525 c!728900) b!4278766))

(assert (= (and d!1263525 (not c!728900)) b!4278767))

(assert (= (and d!1263525 res!1756619) b!4278768))

(assert (= (and b!4278768 res!1756618) b!4278769))

(declare-fun m!4875567 () Bool)

(assert (=> b!4278767 m!4875567))

(declare-fun m!4875569 () Bool)

(assert (=> d!1263525 m!4875569))

(assert (=> d!1263525 m!4875283))

(assert (=> d!1263525 m!4875207))

(declare-fun m!4875573 () Bool)

(assert (=> b!4278768 m!4875573))

(assert (=> b!4278768 m!4875357))

(assert (=> b!4278768 m!4875211))

(assert (=> b!4278531 d!1263525))

(declare-fun d!1263535 () Bool)

(declare-fun c!728904 () Bool)

(assert (=> d!1263535 (= c!728904 ((_ is Nil!47357) lt!1514202))))

(declare-fun e!2656369 () (InoxSet T!79990))

(assert (=> d!1263535 (= (content!7491 lt!1514202) e!2656369)))

(declare-fun b!4278776 () Bool)

(assert (=> b!4278776 (= e!2656369 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4278777 () Bool)

(assert (=> b!4278777 (= e!2656369 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 lt!1514202) true) (content!7491 (t!354054 lt!1514202))))))

(assert (= (and d!1263535 c!728904) b!4278776))

(assert (= (and d!1263535 (not c!728904)) b!4278777))

(declare-fun m!4875577 () Bool)

(assert (=> b!4278777 m!4875577))

(declare-fun m!4875579 () Bool)

(assert (=> b!4278777 m!4875579))

(assert (=> d!1263381 d!1263535))

(declare-fun d!1263539 () Bool)

(declare-fun c!728906 () Bool)

(assert (=> d!1263539 (= c!728906 ((_ is Nil!47357) (++!12103 lt!1514194 lt!1514195)))))

(declare-fun e!2656372 () (InoxSet T!79990))

(assert (=> d!1263539 (= (content!7491 (++!12103 lt!1514194 lt!1514195)) e!2656372)))

(declare-fun b!4278782 () Bool)

(assert (=> b!4278782 (= e!2656372 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4278783 () Bool)

(assert (=> b!4278783 (= e!2656372 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 (++!12103 lt!1514194 lt!1514195)) true) (content!7491 (t!354054 (++!12103 lt!1514194 lt!1514195)))))))

(assert (= (and d!1263539 c!728906) b!4278782))

(assert (= (and d!1263539 (not c!728906)) b!4278783))

(declare-fun m!4875581 () Bool)

(assert (=> b!4278783 m!4875581))

(assert (=> b!4278783 m!4875263))

(assert (=> d!1263381 d!1263539))

(declare-fun d!1263541 () Bool)

(declare-fun c!728907 () Bool)

(assert (=> d!1263541 (= c!728907 ((_ is Nil!47357) acc!259))))

(declare-fun e!2656373 () (InoxSet T!79990))

(assert (=> d!1263541 (= (content!7491 acc!259) e!2656373)))

(declare-fun b!4278784 () Bool)

(assert (=> b!4278784 (= e!2656373 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4278785 () Bool)

(assert (=> b!4278785 (= e!2656373 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 acc!259) true) (content!7491 (t!354054 acc!259))))))

(assert (= (and d!1263541 c!728907) b!4278784))

(assert (= (and d!1263541 (not c!728907)) b!4278785))

(declare-fun m!4875585 () Bool)

(assert (=> b!4278785 m!4875585))

(declare-fun m!4875589 () Bool)

(assert (=> b!4278785 m!4875589))

(assert (=> d!1263381 d!1263541))

(declare-fun d!1263543 () Bool)

(assert (=> d!1263543 (= (list!17277 (xs!17645 (right!35621 t!3602))) (innerList!14399 (xs!17645 (right!35621 t!3602))))))

(assert (=> b!4278528 d!1263543))

(declare-fun b!4278787 () Bool)

(declare-fun e!2656374 () List!47481)

(assert (=> b!4278787 (= e!2656374 (Cons!47357 (h!52777 e!2656236) (++!12103 (t!354054 e!2656236) acc!259)))))

(declare-fun b!4278786 () Bool)

(assert (=> b!4278786 (= e!2656374 acc!259)))

(declare-fun d!1263547 () Bool)

(declare-fun e!2656375 () Bool)

(assert (=> d!1263547 e!2656375))

(declare-fun res!1756623 () Bool)

(assert (=> d!1263547 (=> (not res!1756623) (not e!2656375))))

(declare-fun lt!1514289 () List!47481)

(assert (=> d!1263547 (= res!1756623 (= (content!7491 lt!1514289) ((_ map or) (content!7491 e!2656236) (content!7491 acc!259))))))

(assert (=> d!1263547 (= lt!1514289 e!2656374)))

(declare-fun c!728908 () Bool)

(assert (=> d!1263547 (= c!728908 ((_ is Nil!47357) e!2656236))))

(assert (=> d!1263547 (= (++!12103 e!2656236 acc!259) lt!1514289)))

(declare-fun b!4278788 () Bool)

(declare-fun res!1756622 () Bool)

(assert (=> b!4278788 (=> (not res!1756622) (not e!2656375))))

(assert (=> b!4278788 (= res!1756622 (= (size!34668 lt!1514289) (+ (size!34668 e!2656236) (size!34668 acc!259))))))

(declare-fun b!4278789 () Bool)

(assert (=> b!4278789 (= e!2656375 (or (not (= acc!259 Nil!47357)) (= lt!1514289 e!2656236)))))

(assert (= (and d!1263547 c!728908) b!4278786))

(assert (= (and d!1263547 (not c!728908)) b!4278787))

(assert (= (and d!1263547 res!1756623) b!4278788))

(assert (= (and b!4278788 res!1756622) b!4278789))

(declare-fun m!4875601 () Bool)

(assert (=> b!4278787 m!4875601))

(declare-fun m!4875603 () Bool)

(assert (=> d!1263547 m!4875603))

(declare-fun m!4875605 () Bool)

(assert (=> d!1263547 m!4875605))

(assert (=> d!1263547 m!4875111))

(declare-fun m!4875607 () Bool)

(assert (=> b!4278788 m!4875607))

(declare-fun m!4875609 () Bool)

(assert (=> b!4278788 m!4875609))

(assert (=> b!4278788 m!4875117))

(assert (=> bm!294269 d!1263547))

(declare-fun b!4278791 () Bool)

(declare-fun e!2656376 () List!47481)

(assert (=> b!4278791 (= e!2656376 (Cons!47357 (h!52777 (list!17275 (left!35291 (right!35621 t!3602)))) (++!12103 (t!354054 (list!17275 (left!35291 (right!35621 t!3602)))) (list!17275 (right!35621 (right!35621 t!3602))))))))

(declare-fun b!4278790 () Bool)

(assert (=> b!4278790 (= e!2656376 (list!17275 (right!35621 (right!35621 t!3602))))))

(declare-fun d!1263549 () Bool)

(declare-fun e!2656377 () Bool)

(assert (=> d!1263549 e!2656377))

(declare-fun res!1756625 () Bool)

(assert (=> d!1263549 (=> (not res!1756625) (not e!2656377))))

(declare-fun lt!1514290 () List!47481)

(assert (=> d!1263549 (= res!1756625 (= (content!7491 lt!1514290) ((_ map or) (content!7491 (list!17275 (left!35291 (right!35621 t!3602)))) (content!7491 (list!17275 (right!35621 (right!35621 t!3602)))))))))

(assert (=> d!1263549 (= lt!1514290 e!2656376)))

(declare-fun c!728909 () Bool)

(assert (=> d!1263549 (= c!728909 ((_ is Nil!47357) (list!17275 (left!35291 (right!35621 t!3602)))))))

(assert (=> d!1263549 (= (++!12103 (list!17275 (left!35291 (right!35621 t!3602))) (list!17275 (right!35621 (right!35621 t!3602)))) lt!1514290)))

(declare-fun b!4278792 () Bool)

(declare-fun res!1756624 () Bool)

(assert (=> b!4278792 (=> (not res!1756624) (not e!2656377))))

(assert (=> b!4278792 (= res!1756624 (= (size!34668 lt!1514290) (+ (size!34668 (list!17275 (left!35291 (right!35621 t!3602)))) (size!34668 (list!17275 (right!35621 (right!35621 t!3602)))))))))

(declare-fun b!4278793 () Bool)

(assert (=> b!4278793 (= e!2656377 (or (not (= (list!17275 (right!35621 (right!35621 t!3602))) Nil!47357)) (= lt!1514290 (list!17275 (left!35291 (right!35621 t!3602))))))))

(assert (= (and d!1263549 c!728909) b!4278790))

(assert (= (and d!1263549 (not c!728909)) b!4278791))

(assert (= (and d!1263549 res!1756625) b!4278792))

(assert (= (and b!4278792 res!1756624) b!4278793))

(assert (=> b!4278791 m!4875153))

(declare-fun m!4875611 () Bool)

(assert (=> b!4278791 m!4875611))

(declare-fun m!4875613 () Bool)

(assert (=> d!1263549 m!4875613))

(assert (=> d!1263549 m!4875161))

(declare-fun m!4875615 () Bool)

(assert (=> d!1263549 m!4875615))

(assert (=> d!1263549 m!4875153))

(declare-fun m!4875617 () Bool)

(assert (=> d!1263549 m!4875617))

(declare-fun m!4875619 () Bool)

(assert (=> b!4278792 m!4875619))

(assert (=> b!4278792 m!4875161))

(declare-fun m!4875621 () Bool)

(assert (=> b!4278792 m!4875621))

(assert (=> b!4278792 m!4875153))

(declare-fun m!4875623 () Bool)

(assert (=> b!4278792 m!4875623))

(assert (=> b!4278529 d!1263549))

(declare-fun d!1263551 () Bool)

(declare-fun c!728910 () Bool)

(assert (=> d!1263551 (= c!728910 ((_ is Empty!14339) (left!35291 (right!35621 t!3602))))))

(declare-fun e!2656378 () List!47481)

(assert (=> d!1263551 (= (list!17275 (left!35291 (right!35621 t!3602))) e!2656378)))

(declare-fun b!4278797 () Bool)

(declare-fun e!2656379 () List!47481)

(assert (=> b!4278797 (= e!2656379 (++!12103 (list!17275 (left!35291 (left!35291 (right!35621 t!3602)))) (list!17275 (right!35621 (left!35291 (right!35621 t!3602))))))))

(declare-fun b!4278795 () Bool)

(assert (=> b!4278795 (= e!2656378 e!2656379)))

(declare-fun c!728911 () Bool)

(assert (=> b!4278795 (= c!728911 ((_ is Leaf!22164) (left!35291 (right!35621 t!3602))))))

(declare-fun b!4278794 () Bool)

(assert (=> b!4278794 (= e!2656378 Nil!47357)))

(declare-fun b!4278796 () Bool)

(assert (=> b!4278796 (= e!2656379 (list!17277 (xs!17645 (left!35291 (right!35621 t!3602)))))))

(assert (= (and d!1263551 c!728910) b!4278794))

(assert (= (and d!1263551 (not c!728910)) b!4278795))

(assert (= (and b!4278795 c!728911) b!4278796))

(assert (= (and b!4278795 (not c!728911)) b!4278797))

(declare-fun m!4875625 () Bool)

(assert (=> b!4278797 m!4875625))

(declare-fun m!4875627 () Bool)

(assert (=> b!4278797 m!4875627))

(assert (=> b!4278797 m!4875625))

(assert (=> b!4278797 m!4875627))

(declare-fun m!4875629 () Bool)

(assert (=> b!4278797 m!4875629))

(declare-fun m!4875631 () Bool)

(assert (=> b!4278796 m!4875631))

(assert (=> b!4278529 d!1263551))

(declare-fun d!1263553 () Bool)

(declare-fun c!728912 () Bool)

(assert (=> d!1263553 (= c!728912 ((_ is Empty!14339) (right!35621 (right!35621 t!3602))))))

(declare-fun e!2656380 () List!47481)

(assert (=> d!1263553 (= (list!17275 (right!35621 (right!35621 t!3602))) e!2656380)))

(declare-fun b!4278801 () Bool)

(declare-fun e!2656381 () List!47481)

(assert (=> b!4278801 (= e!2656381 (++!12103 (list!17275 (left!35291 (right!35621 (right!35621 t!3602)))) (list!17275 (right!35621 (right!35621 (right!35621 t!3602))))))))

(declare-fun b!4278799 () Bool)

(assert (=> b!4278799 (= e!2656380 e!2656381)))

(declare-fun c!728913 () Bool)

(assert (=> b!4278799 (= c!728913 ((_ is Leaf!22164) (right!35621 (right!35621 t!3602))))))

(declare-fun b!4278798 () Bool)

(assert (=> b!4278798 (= e!2656380 Nil!47357)))

(declare-fun b!4278800 () Bool)

(assert (=> b!4278800 (= e!2656381 (list!17277 (xs!17645 (right!35621 (right!35621 t!3602)))))))

(assert (= (and d!1263553 c!728912) b!4278798))

(assert (= (and d!1263553 (not c!728912)) b!4278799))

(assert (= (and b!4278799 c!728913) b!4278800))

(assert (= (and b!4278799 (not c!728913)) b!4278801))

(declare-fun m!4875633 () Bool)

(assert (=> b!4278801 m!4875633))

(declare-fun m!4875635 () Bool)

(assert (=> b!4278801 m!4875635))

(assert (=> b!4278801 m!4875633))

(assert (=> b!4278801 m!4875635))

(declare-fun m!4875637 () Bool)

(assert (=> b!4278801 m!4875637))

(declare-fun m!4875639 () Bool)

(assert (=> b!4278800 m!4875639))

(assert (=> b!4278529 d!1263553))

(declare-fun d!1263555 () Bool)

(declare-fun lt!1514297 () List!47481)

(assert (=> d!1263555 (= lt!1514297 (list!17277 (xs!17645 (right!35621 t!3602))))))

(declare-fun rec!38 (IArray!28683 Int List!47481) List!47481)

(declare-fun size!34672 (IArray!28683) Int)

(assert (=> d!1263555 (= lt!1514297 (rec!38 (xs!17645 (right!35621 t!3602)) (size!34672 (xs!17645 (right!35621 t!3602))) Nil!47357))))

(assert (=> d!1263555 (= (efficientList!603 (xs!17645 (right!35621 t!3602))) lt!1514297)))

(declare-fun bs!602628 () Bool)

(assert (= bs!602628 d!1263555))

(assert (=> bs!602628 m!4875183))

(declare-fun m!4875663 () Bool)

(assert (=> bs!602628 m!4875663))

(assert (=> bs!602628 m!4875663))

(declare-fun m!4875665 () Bool)

(assert (=> bs!602628 m!4875665))

(assert (=> b!4278512 d!1263555))

(declare-fun d!1263567 () Bool)

(declare-fun res!1756628 () Bool)

(declare-fun e!2656387 () Bool)

(assert (=> d!1263567 (=> (not res!1756628) (not e!2656387))))

(assert (=> d!1263567 (= res!1756628 (= (csize!28908 (left!35291 t!3602)) (+ (size!34671 (left!35291 (left!35291 t!3602))) (size!34671 (right!35621 (left!35291 t!3602))))))))

(assert (=> d!1263567 (= (inv!62723 (left!35291 t!3602)) e!2656387)))

(declare-fun b!4278812 () Bool)

(declare-fun res!1756629 () Bool)

(assert (=> b!4278812 (=> (not res!1756629) (not e!2656387))))

(assert (=> b!4278812 (= res!1756629 (and (not (= (left!35291 (left!35291 t!3602)) Empty!14339)) (not (= (right!35621 (left!35291 t!3602)) Empty!14339))))))

(declare-fun b!4278813 () Bool)

(declare-fun res!1756630 () Bool)

(assert (=> b!4278813 (=> (not res!1756630) (not e!2656387))))

(assert (=> b!4278813 (= res!1756630 (= (cheight!14550 (left!35291 t!3602)) (+ (max!0 (height!1889 (left!35291 (left!35291 t!3602))) (height!1889 (right!35621 (left!35291 t!3602)))) 1)))))

(declare-fun b!4278814 () Bool)

(assert (=> b!4278814 (= e!2656387 (<= 0 (cheight!14550 (left!35291 t!3602))))))

(assert (= (and d!1263567 res!1756628) b!4278812))

(assert (= (and b!4278812 res!1756629) b!4278813))

(assert (= (and b!4278813 res!1756630) b!4278814))

(declare-fun m!4875667 () Bool)

(assert (=> d!1263567 m!4875667))

(declare-fun m!4875669 () Bool)

(assert (=> d!1263567 m!4875669))

(declare-fun m!4875671 () Bool)

(assert (=> b!4278813 m!4875671))

(declare-fun m!4875673 () Bool)

(assert (=> b!4278813 m!4875673))

(assert (=> b!4278813 m!4875671))

(assert (=> b!4278813 m!4875673))

(declare-fun m!4875675 () Bool)

(assert (=> b!4278813 m!4875675))

(assert (=> b!4278428 d!1263567))

(declare-fun b!4278816 () Bool)

(declare-fun e!2656388 () List!47481)

(assert (=> b!4278816 (= e!2656388 (Cons!47357 (h!52777 (t!354054 lt!1514195)) (++!12103 (t!354054 (t!354054 lt!1514195)) acc!259)))))

(declare-fun b!4278815 () Bool)

(assert (=> b!4278815 (= e!2656388 acc!259)))

(declare-fun d!1263569 () Bool)

(declare-fun e!2656389 () Bool)

(assert (=> d!1263569 e!2656389))

(declare-fun res!1756632 () Bool)

(assert (=> d!1263569 (=> (not res!1756632) (not e!2656389))))

(declare-fun lt!1514298 () List!47481)

(assert (=> d!1263569 (= res!1756632 (= (content!7491 lt!1514298) ((_ map or) (content!7491 (t!354054 lt!1514195)) (content!7491 acc!259))))))

(assert (=> d!1263569 (= lt!1514298 e!2656388)))

(declare-fun c!728918 () Bool)

(assert (=> d!1263569 (= c!728918 ((_ is Nil!47357) (t!354054 lt!1514195)))))

(assert (=> d!1263569 (= (++!12103 (t!354054 lt!1514195) acc!259) lt!1514298)))

(declare-fun b!4278817 () Bool)

(declare-fun res!1756631 () Bool)

(assert (=> b!4278817 (=> (not res!1756631) (not e!2656389))))

(assert (=> b!4278817 (= res!1756631 (= (size!34668 lt!1514298) (+ (size!34668 (t!354054 lt!1514195)) (size!34668 acc!259))))))

(declare-fun b!4278818 () Bool)

(assert (=> b!4278818 (= e!2656389 (or (not (= acc!259 Nil!47357)) (= lt!1514298 (t!354054 lt!1514195))))))

(assert (= (and d!1263569 c!728918) b!4278815))

(assert (= (and d!1263569 (not c!728918)) b!4278816))

(assert (= (and d!1263569 res!1756632) b!4278817))

(assert (= (and b!4278817 res!1756631) b!4278818))

(declare-fun m!4875677 () Bool)

(assert (=> b!4278816 m!4875677))

(declare-fun m!4875679 () Bool)

(assert (=> d!1263569 m!4875679))

(declare-fun m!4875681 () Bool)

(assert (=> d!1263569 m!4875681))

(assert (=> d!1263569 m!4875111))

(declare-fun m!4875683 () Bool)

(assert (=> b!4278817 m!4875683))

(assert (=> b!4278817 m!4875359))

(assert (=> b!4278817 m!4875117))

(assert (=> b!4278550 d!1263569))

(declare-fun d!1263573 () Bool)

(declare-fun c!728920 () Bool)

(assert (=> d!1263573 (= c!728920 ((_ is Node!14339) (left!35291 (right!35621 t!3602))))))

(declare-fun e!2656391 () Bool)

(assert (=> d!1263573 (= (inv!62719 (left!35291 (right!35621 t!3602))) e!2656391)))

(declare-fun b!4278821 () Bool)

(assert (=> b!4278821 (= e!2656391 (inv!62723 (left!35291 (right!35621 t!3602))))))

(declare-fun b!4278822 () Bool)

(declare-fun e!2656392 () Bool)

(assert (=> b!4278822 (= e!2656391 e!2656392)))

(declare-fun res!1756633 () Bool)

(assert (=> b!4278822 (= res!1756633 (not ((_ is Leaf!22164) (left!35291 (right!35621 t!3602)))))))

(assert (=> b!4278822 (=> res!1756633 e!2656392)))

(declare-fun b!4278823 () Bool)

(assert (=> b!4278823 (= e!2656392 (inv!62724 (left!35291 (right!35621 t!3602))))))

(assert (= (and d!1263573 c!728920) b!4278821))

(assert (= (and d!1263573 (not c!728920)) b!4278822))

(assert (= (and b!4278822 (not res!1756633)) b!4278823))

(declare-fun m!4875685 () Bool)

(assert (=> b!4278821 m!4875685))

(declare-fun m!4875689 () Bool)

(assert (=> b!4278823 m!4875689))

(assert (=> b!4278579 d!1263573))

(declare-fun d!1263575 () Bool)

(declare-fun c!728921 () Bool)

(assert (=> d!1263575 (= c!728921 ((_ is Node!14339) (right!35621 (right!35621 t!3602))))))

(declare-fun e!2656393 () Bool)

(assert (=> d!1263575 (= (inv!62719 (right!35621 (right!35621 t!3602))) e!2656393)))

(declare-fun b!4278824 () Bool)

(assert (=> b!4278824 (= e!2656393 (inv!62723 (right!35621 (right!35621 t!3602))))))

(declare-fun b!4278825 () Bool)

(declare-fun e!2656394 () Bool)

(assert (=> b!4278825 (= e!2656393 e!2656394)))

(declare-fun res!1756634 () Bool)

(assert (=> b!4278825 (= res!1756634 (not ((_ is Leaf!22164) (right!35621 (right!35621 t!3602)))))))

(assert (=> b!4278825 (=> res!1756634 e!2656394)))

(declare-fun b!4278826 () Bool)

(assert (=> b!4278826 (= e!2656394 (inv!62724 (right!35621 (right!35621 t!3602))))))

(assert (= (and d!1263575 c!728921) b!4278824))

(assert (= (and d!1263575 (not c!728921)) b!4278825))

(assert (= (and b!4278825 (not res!1756634)) b!4278826))

(declare-fun m!4875691 () Bool)

(assert (=> b!4278824 m!4875691))

(declare-fun m!4875693 () Bool)

(assert (=> b!4278826 m!4875693))

(assert (=> b!4278579 d!1263575))

(declare-fun b!4278831 () Bool)

(declare-fun e!2656397 () List!47481)

(assert (=> b!4278831 (= e!2656397 (Cons!47357 (h!52777 (t!354054 lt!1514194)) (++!12103 (t!354054 (t!354054 lt!1514194)) (++!12103 lt!1514195 acc!259))))))

(declare-fun b!4278830 () Bool)

(assert (=> b!4278830 (= e!2656397 (++!12103 lt!1514195 acc!259))))

(declare-fun d!1263577 () Bool)

(declare-fun e!2656398 () Bool)

(assert (=> d!1263577 e!2656398))

(declare-fun res!1756636 () Bool)

(assert (=> d!1263577 (=> (not res!1756636) (not e!2656398))))

(declare-fun lt!1514300 () List!47481)

(assert (=> d!1263577 (= res!1756636 (= (content!7491 lt!1514300) ((_ map or) (content!7491 (t!354054 lt!1514194)) (content!7491 (++!12103 lt!1514195 acc!259)))))))

(assert (=> d!1263577 (= lt!1514300 e!2656397)))

(declare-fun c!728922 () Bool)

(assert (=> d!1263577 (= c!728922 ((_ is Nil!47357) (t!354054 lt!1514194)))))

(assert (=> d!1263577 (= (++!12103 (t!354054 lt!1514194) (++!12103 lt!1514195 acc!259)) lt!1514300)))

(declare-fun b!4278832 () Bool)

(declare-fun res!1756635 () Bool)

(assert (=> b!4278832 (=> (not res!1756635) (not e!2656398))))

(assert (=> b!4278832 (= res!1756635 (= (size!34668 lt!1514300) (+ (size!34668 (t!354054 lt!1514194)) (size!34668 (++!12103 lt!1514195 acc!259)))))))

(declare-fun b!4278833 () Bool)

(assert (=> b!4278833 (= e!2656398 (or (not (= (++!12103 lt!1514195 acc!259) Nil!47357)) (= lt!1514300 (t!354054 lt!1514194))))))

(assert (= (and d!1263577 c!728922) b!4278830))

(assert (= (and d!1263577 (not c!728922)) b!4278831))

(assert (= (and d!1263577 res!1756636) b!4278832))

(assert (= (and b!4278832 res!1756635) b!4278833))

(assert (=> b!4278831 m!4875013))

(declare-fun m!4875701 () Bool)

(assert (=> b!4278831 m!4875701))

(declare-fun m!4875703 () Bool)

(assert (=> d!1263577 m!4875703))

(assert (=> d!1263577 m!4875283))

(assert (=> d!1263577 m!4875013))

(assert (=> d!1263577 m!4875173))

(declare-fun m!4875705 () Bool)

(assert (=> b!4278832 m!4875705))

(assert (=> b!4278832 m!4875357))

(assert (=> b!4278832 m!4875013))

(assert (=> b!4278832 m!4875179))

(assert (=> b!4278517 d!1263577))

(declare-fun d!1263579 () Bool)

(declare-fun lt!1514301 () Int)

(assert (=> d!1263579 (>= lt!1514301 0)))

(declare-fun e!2656401 () Int)

(assert (=> d!1263579 (= lt!1514301 e!2656401)))

(declare-fun c!728923 () Bool)

(assert (=> d!1263579 (= c!728923 ((_ is Nil!47357) lt!1514244))))

(assert (=> d!1263579 (= (size!34668 lt!1514244) lt!1514301)))

(declare-fun b!4278837 () Bool)

(assert (=> b!4278837 (= e!2656401 0)))

(declare-fun b!4278838 () Bool)

(assert (=> b!4278838 (= e!2656401 (+ 1 (size!34668 (t!354054 lt!1514244))))))

(assert (= (and d!1263579 c!728923) b!4278837))

(assert (= (and d!1263579 (not c!728923)) b!4278838))

(declare-fun m!4875713 () Bool)

(assert (=> b!4278838 m!4875713))

(assert (=> b!4278551 d!1263579))

(assert (=> b!4278551 d!1263457))

(assert (=> b!4278551 d!1263501))

(declare-fun d!1263581 () Bool)

(assert (=> d!1263581 (= (inv!62720 (xs!17645 (right!35621 t!3602))) (<= (size!34668 (innerList!14399 (xs!17645 (right!35621 t!3602)))) 2147483647))))

(declare-fun bs!602630 () Bool)

(assert (= bs!602630 d!1263581))

(declare-fun m!4875715 () Bool)

(assert (=> bs!602630 m!4875715))

(assert (=> b!4278580 d!1263581))

(declare-fun d!1263583 () Bool)

(declare-fun lt!1514302 () Int)

(assert (=> d!1263583 (>= lt!1514302 0)))

(declare-fun e!2656405 () Int)

(assert (=> d!1263583 (= lt!1514302 e!2656405)))

(declare-fun c!728924 () Bool)

(assert (=> d!1263583 (= c!728924 ((_ is Nil!47357) lt!1514233))))

(assert (=> d!1263583 (= (size!34668 lt!1514233) lt!1514302)))

(declare-fun b!4278842 () Bool)

(assert (=> b!4278842 (= e!2656405 0)))

(declare-fun b!4278843 () Bool)

(assert (=> b!4278843 (= e!2656405 (+ 1 (size!34668 (t!354054 lt!1514233))))))

(assert (= (and d!1263583 c!728924) b!4278842))

(assert (= (and d!1263583 (not c!728924)) b!4278843))

(declare-fun m!4875717 () Bool)

(assert (=> b!4278843 m!4875717))

(assert (=> b!4278518 d!1263583))

(assert (=> b!4278518 d!1263453))

(declare-fun d!1263585 () Bool)

(declare-fun lt!1514303 () Int)

(assert (=> d!1263585 (>= lt!1514303 0)))

(declare-fun e!2656409 () Int)

(assert (=> d!1263585 (= lt!1514303 e!2656409)))

(declare-fun c!728925 () Bool)

(assert (=> d!1263585 (= c!728925 ((_ is Nil!47357) (++!12103 lt!1514195 acc!259)))))

(assert (=> d!1263585 (= (size!34668 (++!12103 lt!1514195 acc!259)) lt!1514303)))

(declare-fun b!4278848 () Bool)

(assert (=> b!4278848 (= e!2656409 0)))

(declare-fun b!4278849 () Bool)

(assert (=> b!4278849 (= e!2656409 (+ 1 (size!34668 (t!354054 (++!12103 lt!1514195 acc!259)))))))

(assert (= (and d!1263585 c!728925) b!4278848))

(assert (= (and d!1263585 (not c!728925)) b!4278849))

(declare-fun m!4875723 () Bool)

(assert (=> b!4278849 m!4875723))

(assert (=> b!4278518 d!1263585))

(declare-fun b!4278854 () Bool)

(declare-fun e!2656412 () List!47481)

(assert (=> b!4278854 (= e!2656412 (Cons!47357 (h!52777 (list!17275 (left!35291 (left!35291 t!3602)))) (++!12103 (t!354054 (list!17275 (left!35291 (left!35291 t!3602)))) (list!17275 (right!35621 (left!35291 t!3602))))))))

(declare-fun b!4278853 () Bool)

(assert (=> b!4278853 (= e!2656412 (list!17275 (right!35621 (left!35291 t!3602))))))

(declare-fun d!1263587 () Bool)

(declare-fun e!2656413 () Bool)

(assert (=> d!1263587 e!2656413))

(declare-fun res!1756638 () Bool)

(assert (=> d!1263587 (=> (not res!1756638) (not e!2656413))))

(declare-fun lt!1514304 () List!47481)

(assert (=> d!1263587 (= res!1756638 (= (content!7491 lt!1514304) ((_ map or) (content!7491 (list!17275 (left!35291 (left!35291 t!3602)))) (content!7491 (list!17275 (right!35621 (left!35291 t!3602)))))))))

(assert (=> d!1263587 (= lt!1514304 e!2656412)))

(declare-fun c!728926 () Bool)

(assert (=> d!1263587 (= c!728926 ((_ is Nil!47357) (list!17275 (left!35291 (left!35291 t!3602)))))))

(assert (=> d!1263587 (= (++!12103 (list!17275 (left!35291 (left!35291 t!3602))) (list!17275 (right!35621 (left!35291 t!3602)))) lt!1514304)))

(declare-fun b!4278855 () Bool)

(declare-fun res!1756637 () Bool)

(assert (=> b!4278855 (=> (not res!1756637) (not e!2656413))))

(assert (=> b!4278855 (= res!1756637 (= (size!34668 lt!1514304) (+ (size!34668 (list!17275 (left!35291 (left!35291 t!3602)))) (size!34668 (list!17275 (right!35621 (left!35291 t!3602)))))))))

(declare-fun b!4278856 () Bool)

(assert (=> b!4278856 (= e!2656413 (or (not (= (list!17275 (right!35621 (left!35291 t!3602))) Nil!47357)) (= lt!1514304 (list!17275 (left!35291 (left!35291 t!3602))))))))

(assert (= (and d!1263587 c!728926) b!4278853))

(assert (= (and d!1263587 (not c!728926)) b!4278854))

(assert (= (and d!1263587 res!1756638) b!4278855))

(assert (= (and b!4278855 res!1756637) b!4278856))

(assert (=> b!4278854 m!4875085))

(declare-fun m!4875733 () Bool)

(assert (=> b!4278854 m!4875733))

(declare-fun m!4875735 () Bool)

(assert (=> d!1263587 m!4875735))

(assert (=> d!1263587 m!4875083))

(declare-fun m!4875737 () Bool)

(assert (=> d!1263587 m!4875737))

(assert (=> d!1263587 m!4875085))

(declare-fun m!4875739 () Bool)

(assert (=> d!1263587 m!4875739))

(declare-fun m!4875741 () Bool)

(assert (=> b!4278855 m!4875741))

(assert (=> b!4278855 m!4875083))

(declare-fun m!4875743 () Bool)

(assert (=> b!4278855 m!4875743))

(assert (=> b!4278855 m!4875085))

(declare-fun m!4875745 () Bool)

(assert (=> b!4278855 m!4875745))

(assert (=> b!4278453 d!1263587))

(declare-fun d!1263589 () Bool)

(declare-fun c!728927 () Bool)

(assert (=> d!1263589 (= c!728927 ((_ is Empty!14339) (left!35291 (left!35291 t!3602))))))

(declare-fun e!2656414 () List!47481)

(assert (=> d!1263589 (= (list!17275 (left!35291 (left!35291 t!3602))) e!2656414)))

(declare-fun b!4278860 () Bool)

(declare-fun e!2656415 () List!47481)

(assert (=> b!4278860 (= e!2656415 (++!12103 (list!17275 (left!35291 (left!35291 (left!35291 t!3602)))) (list!17275 (right!35621 (left!35291 (left!35291 t!3602))))))))

(declare-fun b!4278858 () Bool)

(assert (=> b!4278858 (= e!2656414 e!2656415)))

(declare-fun c!728928 () Bool)

(assert (=> b!4278858 (= c!728928 ((_ is Leaf!22164) (left!35291 (left!35291 t!3602))))))

(declare-fun b!4278857 () Bool)

(assert (=> b!4278857 (= e!2656414 Nil!47357)))

(declare-fun b!4278859 () Bool)

(assert (=> b!4278859 (= e!2656415 (list!17277 (xs!17645 (left!35291 (left!35291 t!3602)))))))

(assert (= (and d!1263589 c!728927) b!4278857))

(assert (= (and d!1263589 (not c!728927)) b!4278858))

(assert (= (and b!4278858 c!728928) b!4278859))

(assert (= (and b!4278858 (not c!728928)) b!4278860))

(declare-fun m!4875747 () Bool)

(assert (=> b!4278860 m!4875747))

(declare-fun m!4875749 () Bool)

(assert (=> b!4278860 m!4875749))

(assert (=> b!4278860 m!4875747))

(assert (=> b!4278860 m!4875749))

(declare-fun m!4875751 () Bool)

(assert (=> b!4278860 m!4875751))

(declare-fun m!4875753 () Bool)

(assert (=> b!4278859 m!4875753))

(assert (=> b!4278453 d!1263589))

(declare-fun d!1263591 () Bool)

(declare-fun c!728929 () Bool)

(assert (=> d!1263591 (= c!728929 ((_ is Empty!14339) (right!35621 (left!35291 t!3602))))))

(declare-fun e!2656416 () List!47481)

(assert (=> d!1263591 (= (list!17275 (right!35621 (left!35291 t!3602))) e!2656416)))

(declare-fun b!4278864 () Bool)

(declare-fun e!2656417 () List!47481)

(assert (=> b!4278864 (= e!2656417 (++!12103 (list!17275 (left!35291 (right!35621 (left!35291 t!3602)))) (list!17275 (right!35621 (right!35621 (left!35291 t!3602))))))))

(declare-fun b!4278862 () Bool)

(assert (=> b!4278862 (= e!2656416 e!2656417)))

(declare-fun c!728930 () Bool)

(assert (=> b!4278862 (= c!728930 ((_ is Leaf!22164) (right!35621 (left!35291 t!3602))))))

(declare-fun b!4278861 () Bool)

(assert (=> b!4278861 (= e!2656416 Nil!47357)))

(declare-fun b!4278863 () Bool)

(assert (=> b!4278863 (= e!2656417 (list!17277 (xs!17645 (right!35621 (left!35291 t!3602)))))))

(assert (= (and d!1263591 c!728929) b!4278861))

(assert (= (and d!1263591 (not c!728929)) b!4278862))

(assert (= (and b!4278862 c!728930) b!4278863))

(assert (= (and b!4278862 (not c!728930)) b!4278864))

(declare-fun m!4875755 () Bool)

(assert (=> b!4278864 m!4875755))

(declare-fun m!4875757 () Bool)

(assert (=> b!4278864 m!4875757))

(assert (=> b!4278864 m!4875755))

(assert (=> b!4278864 m!4875757))

(declare-fun m!4875759 () Bool)

(assert (=> b!4278864 m!4875759))

(declare-fun m!4875761 () Bool)

(assert (=> b!4278863 m!4875761))

(assert (=> b!4278453 d!1263591))

(declare-fun d!1263593 () Bool)

(declare-fun c!728931 () Bool)

(assert (=> d!1263593 (= c!728931 ((_ is Node!14339) (left!35291 (left!35291 t!3602))))))

(declare-fun e!2656418 () Bool)

(assert (=> d!1263593 (= (inv!62719 (left!35291 (left!35291 t!3602))) e!2656418)))

(declare-fun b!4278865 () Bool)

(assert (=> b!4278865 (= e!2656418 (inv!62723 (left!35291 (left!35291 t!3602))))))

(declare-fun b!4278866 () Bool)

(declare-fun e!2656419 () Bool)

(assert (=> b!4278866 (= e!2656418 e!2656419)))

(declare-fun res!1756639 () Bool)

(assert (=> b!4278866 (= res!1756639 (not ((_ is Leaf!22164) (left!35291 (left!35291 t!3602)))))))

(assert (=> b!4278866 (=> res!1756639 e!2656419)))

(declare-fun b!4278867 () Bool)

(assert (=> b!4278867 (= e!2656419 (inv!62724 (left!35291 (left!35291 t!3602))))))

(assert (= (and d!1263593 c!728931) b!4278865))

(assert (= (and d!1263593 (not c!728931)) b!4278866))

(assert (= (and b!4278866 (not res!1756639)) b!4278867))

(declare-fun m!4875763 () Bool)

(assert (=> b!4278865 m!4875763))

(declare-fun m!4875765 () Bool)

(assert (=> b!4278867 m!4875765))

(assert (=> b!4278576 d!1263593))

(declare-fun d!1263595 () Bool)

(declare-fun c!728932 () Bool)

(assert (=> d!1263595 (= c!728932 ((_ is Node!14339) (right!35621 (left!35291 t!3602))))))

(declare-fun e!2656420 () Bool)

(assert (=> d!1263595 (= (inv!62719 (right!35621 (left!35291 t!3602))) e!2656420)))

(declare-fun b!4278868 () Bool)

(assert (=> b!4278868 (= e!2656420 (inv!62723 (right!35621 (left!35291 t!3602))))))

(declare-fun b!4278869 () Bool)

(declare-fun e!2656421 () Bool)

(assert (=> b!4278869 (= e!2656420 e!2656421)))

(declare-fun res!1756640 () Bool)

(assert (=> b!4278869 (= res!1756640 (not ((_ is Leaf!22164) (right!35621 (left!35291 t!3602)))))))

(assert (=> b!4278869 (=> res!1756640 e!2656421)))

(declare-fun b!4278870 () Bool)

(assert (=> b!4278870 (= e!2656421 (inv!62724 (right!35621 (left!35291 t!3602))))))

(assert (= (and d!1263595 c!728932) b!4278868))

(assert (= (and d!1263595 (not c!728932)) b!4278869))

(assert (= (and b!4278869 (not res!1756640)) b!4278870))

(declare-fun m!4875767 () Bool)

(assert (=> b!4278868 m!4875767))

(declare-fun m!4875769 () Bool)

(assert (=> b!4278870 m!4875769))

(assert (=> b!4278576 d!1263595))

(declare-fun d!1263597 () Bool)

(assert (=> d!1263597 (= (inv!62720 (xs!17645 (left!35291 t!3602))) (<= (size!34668 (innerList!14399 (xs!17645 (left!35291 t!3602)))) 2147483647))))

(declare-fun bs!602631 () Bool)

(assert (= bs!602631 d!1263597))

(declare-fun m!4875771 () Bool)

(assert (=> bs!602631 m!4875771))

(assert (=> b!4278577 d!1263597))

(declare-fun d!1263599 () Bool)

(declare-fun res!1756641 () Bool)

(declare-fun e!2656422 () Bool)

(assert (=> d!1263599 (=> (not res!1756641) (not e!2656422))))

(assert (=> d!1263599 (= res!1756641 (<= (size!34668 (list!17277 (xs!17645 t!3602))) 512))))

(assert (=> d!1263599 (= (inv!62724 t!3602) e!2656422)))

(declare-fun b!4278871 () Bool)

(declare-fun res!1756642 () Bool)

(assert (=> b!4278871 (=> (not res!1756642) (not e!2656422))))

(assert (=> b!4278871 (= res!1756642 (= (csize!28909 t!3602) (size!34668 (list!17277 (xs!17645 t!3602)))))))

(declare-fun b!4278872 () Bool)

(assert (=> b!4278872 (= e!2656422 (and (> (csize!28909 t!3602) 0) (<= (csize!28909 t!3602) 512)))))

(assert (= (and d!1263599 res!1756641) b!4278871))

(assert (= (and b!4278871 res!1756642) b!4278872))

(declare-fun m!4875773 () Bool)

(assert (=> d!1263599 m!4875773))

(assert (=> d!1263599 m!4875773))

(declare-fun m!4875775 () Bool)

(assert (=> d!1263599 m!4875775))

(assert (=> b!4278871 m!4875773))

(assert (=> b!4278871 m!4875773))

(assert (=> b!4278871 m!4875775))

(assert (=> b!4278419 d!1263599))

(declare-fun d!1263601 () Bool)

(declare-fun c!728933 () Bool)

(assert (=> d!1263601 (= c!728933 ((_ is Nil!47357) lt!1514239))))

(declare-fun e!2656423 () (InoxSet T!79990))

(assert (=> d!1263601 (= (content!7491 lt!1514239) e!2656423)))

(declare-fun b!4278873 () Bool)

(assert (=> b!4278873 (= e!2656423 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4278874 () Bool)

(assert (=> b!4278874 (= e!2656423 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 lt!1514239) true) (content!7491 (t!354054 lt!1514239))))))

(assert (= (and d!1263601 c!728933) b!4278873))

(assert (= (and d!1263601 (not c!728933)) b!4278874))

(declare-fun m!4875777 () Bool)

(assert (=> b!4278874 m!4875777))

(declare-fun m!4875779 () Bool)

(assert (=> b!4278874 m!4875779))

(assert (=> d!1263401 d!1263601))

(assert (=> d!1263401 d!1263425))

(declare-fun d!1263603 () Bool)

(declare-fun c!728934 () Bool)

(assert (=> d!1263603 (= c!728934 ((_ is Nil!47357) lt!1514195))))

(declare-fun e!2656424 () (InoxSet T!79990))

(assert (=> d!1263603 (= (content!7491 lt!1514195) e!2656424)))

(declare-fun b!4278875 () Bool)

(assert (=> b!4278875 (= e!2656424 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4278876 () Bool)

(assert (=> b!4278876 (= e!2656424 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 lt!1514195) true) (content!7491 (t!354054 lt!1514195))))))

(assert (= (and d!1263603 c!728934) b!4278875))

(assert (= (and d!1263603 (not c!728934)) b!4278876))

(declare-fun m!4875781 () Bool)

(assert (=> b!4278876 m!4875781))

(assert (=> b!4278876 m!4875681))

(assert (=> d!1263401 d!1263603))

(declare-fun d!1263605 () Bool)

(declare-fun c!728935 () Bool)

(assert (=> d!1263605 (= c!728935 ((_ is Nil!47357) lt!1514244))))

(declare-fun e!2656425 () (InoxSet T!79990))

(assert (=> d!1263605 (= (content!7491 lt!1514244) e!2656425)))

(declare-fun b!4278877 () Bool)

(assert (=> b!4278877 (= e!2656425 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4278878 () Bool)

(assert (=> b!4278878 (= e!2656425 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 lt!1514244) true) (content!7491 (t!354054 lt!1514244))))))

(assert (= (and d!1263605 c!728935) b!4278877))

(assert (= (and d!1263605 (not c!728935)) b!4278878))

(declare-fun m!4875783 () Bool)

(assert (=> b!4278878 m!4875783))

(declare-fun m!4875785 () Bool)

(assert (=> b!4278878 m!4875785))

(assert (=> d!1263411 d!1263605))

(assert (=> d!1263411 d!1263603))

(assert (=> d!1263411 d!1263541))

(declare-fun b!4278880 () Bool)

(declare-fun e!2656426 () List!47481)

(assert (=> b!4278880 (= e!2656426 (Cons!47357 (h!52777 lt!1514232) (++!12103 (t!354054 lt!1514232) lt!1514230)))))

(declare-fun b!4278879 () Bool)

(assert (=> b!4278879 (= e!2656426 lt!1514230)))

(declare-fun d!1263607 () Bool)

(declare-fun e!2656427 () Bool)

(assert (=> d!1263607 e!2656427))

(declare-fun res!1756644 () Bool)

(assert (=> d!1263607 (=> (not res!1756644) (not e!2656427))))

(declare-fun lt!1514305 () List!47481)

(assert (=> d!1263607 (= res!1756644 (= (content!7491 lt!1514305) ((_ map or) (content!7491 lt!1514232) (content!7491 lt!1514230))))))

(assert (=> d!1263607 (= lt!1514305 e!2656426)))

(declare-fun c!728936 () Bool)

(assert (=> d!1263607 (= c!728936 ((_ is Nil!47357) lt!1514232))))

(assert (=> d!1263607 (= (++!12103 lt!1514232 lt!1514230) lt!1514305)))

(declare-fun b!4278881 () Bool)

(declare-fun res!1756643 () Bool)

(assert (=> b!4278881 (=> (not res!1756643) (not e!2656427))))

(assert (=> b!4278881 (= res!1756643 (= (size!34668 lt!1514305) (+ (size!34668 lt!1514232) (size!34668 lt!1514230))))))

(declare-fun b!4278882 () Bool)

(assert (=> b!4278882 (= e!2656427 (or (not (= lt!1514230 Nil!47357)) (= lt!1514305 lt!1514232)))))

(assert (= (and d!1263607 c!728936) b!4278879))

(assert (= (and d!1263607 (not c!728936)) b!4278880))

(assert (= (and d!1263607 res!1756644) b!4278881))

(assert (= (and b!4278881 res!1756643) b!4278882))

(declare-fun m!4875787 () Bool)

(assert (=> b!4278880 m!4875787))

(declare-fun m!4875789 () Bool)

(assert (=> d!1263607 m!4875789))

(declare-fun m!4875791 () Bool)

(assert (=> d!1263607 m!4875791))

(declare-fun m!4875793 () Bool)

(assert (=> d!1263607 m!4875793))

(declare-fun m!4875795 () Bool)

(assert (=> b!4278881 m!4875795))

(declare-fun m!4875797 () Bool)

(assert (=> b!4278881 m!4875797))

(declare-fun m!4875799 () Bool)

(assert (=> b!4278881 m!4875799))

(assert (=> b!4278514 d!1263607))

(declare-fun b!4278884 () Bool)

(declare-fun e!2656428 () List!47481)

(assert (=> b!4278884 (= e!2656428 (Cons!47357 (h!52777 lt!1514232) (++!12103 (t!354054 lt!1514232) call!294274)))))

(declare-fun b!4278883 () Bool)

(assert (=> b!4278883 (= e!2656428 call!294274)))

(declare-fun d!1263609 () Bool)

(declare-fun e!2656429 () Bool)

(assert (=> d!1263609 e!2656429))

(declare-fun res!1756646 () Bool)

(assert (=> d!1263609 (=> (not res!1756646) (not e!2656429))))

(declare-fun lt!1514306 () List!47481)

(assert (=> d!1263609 (= res!1756646 (= (content!7491 lt!1514306) ((_ map or) (content!7491 lt!1514232) (content!7491 call!294274))))))

(assert (=> d!1263609 (= lt!1514306 e!2656428)))

(declare-fun c!728937 () Bool)

(assert (=> d!1263609 (= c!728937 ((_ is Nil!47357) lt!1514232))))

(assert (=> d!1263609 (= (++!12103 lt!1514232 call!294274) lt!1514306)))

(declare-fun b!4278885 () Bool)

(declare-fun res!1756645 () Bool)

(assert (=> b!4278885 (=> (not res!1756645) (not e!2656429))))

(assert (=> b!4278885 (= res!1756645 (= (size!34668 lt!1514306) (+ (size!34668 lt!1514232) (size!34668 call!294274))))))

(declare-fun b!4278886 () Bool)

(assert (=> b!4278886 (= e!2656429 (or (not (= call!294274 Nil!47357)) (= lt!1514306 lt!1514232)))))

(assert (= (and d!1263609 c!728937) b!4278883))

(assert (= (and d!1263609 (not c!728937)) b!4278884))

(assert (= (and d!1263609 res!1756646) b!4278885))

(assert (= (and b!4278885 res!1756645) b!4278886))

(declare-fun m!4875801 () Bool)

(assert (=> b!4278884 m!4875801))

(declare-fun m!4875803 () Bool)

(assert (=> d!1263609 m!4875803))

(assert (=> d!1263609 m!4875791))

(declare-fun m!4875805 () Bool)

(assert (=> d!1263609 m!4875805))

(declare-fun m!4875807 () Bool)

(assert (=> b!4278885 m!4875807))

(assert (=> b!4278885 m!4875797))

(declare-fun m!4875809 () Bool)

(assert (=> b!4278885 m!4875809))

(assert (=> b!4278514 d!1263609))

(assert (=> b!4278514 d!1263553))

(assert (=> b!4278514 d!1263551))

(declare-fun e!2656430 () List!47481)

(declare-fun b!4278888 () Bool)

(assert (=> b!4278888 (= e!2656430 (Cons!47357 (h!52777 (++!12103 lt!1514232 lt!1514230)) (++!12103 (t!354054 (++!12103 lt!1514232 lt!1514230)) acc!259)))))

(declare-fun b!4278887 () Bool)

(assert (=> b!4278887 (= e!2656430 acc!259)))

(declare-fun d!1263611 () Bool)

(declare-fun e!2656431 () Bool)

(assert (=> d!1263611 e!2656431))

(declare-fun res!1756648 () Bool)

(assert (=> d!1263611 (=> (not res!1756648) (not e!2656431))))

(declare-fun lt!1514307 () List!47481)

(assert (=> d!1263611 (= res!1756648 (= (content!7491 lt!1514307) ((_ map or) (content!7491 (++!12103 lt!1514232 lt!1514230)) (content!7491 acc!259))))))

(assert (=> d!1263611 (= lt!1514307 e!2656430)))

(declare-fun c!728938 () Bool)

(assert (=> d!1263611 (= c!728938 ((_ is Nil!47357) (++!12103 lt!1514232 lt!1514230)))))

(assert (=> d!1263611 (= (++!12103 (++!12103 lt!1514232 lt!1514230) acc!259) lt!1514307)))

(declare-fun b!4278889 () Bool)

(declare-fun res!1756647 () Bool)

(assert (=> b!4278889 (=> (not res!1756647) (not e!2656431))))

(assert (=> b!4278889 (= res!1756647 (= (size!34668 lt!1514307) (+ (size!34668 (++!12103 lt!1514232 lt!1514230)) (size!34668 acc!259))))))

(declare-fun b!4278890 () Bool)

(assert (=> b!4278890 (= e!2656431 (or (not (= acc!259 Nil!47357)) (= lt!1514307 (++!12103 lt!1514232 lt!1514230))))))

(assert (= (and d!1263611 c!728938) b!4278887))

(assert (= (and d!1263611 (not c!728938)) b!4278888))

(assert (= (and d!1263611 res!1756648) b!4278889))

(assert (= (and b!4278889 res!1756647) b!4278890))

(declare-fun m!4875811 () Bool)

(assert (=> b!4278888 m!4875811))

(declare-fun m!4875813 () Bool)

(assert (=> d!1263611 m!4875813))

(assert (=> d!1263611 m!4875157))

(declare-fun m!4875815 () Bool)

(assert (=> d!1263611 m!4875815))

(assert (=> d!1263611 m!4875111))

(declare-fun m!4875817 () Bool)

(assert (=> b!4278889 m!4875817))

(assert (=> b!4278889 m!4875157))

(declare-fun m!4875819 () Bool)

(assert (=> b!4278889 m!4875819))

(assert (=> b!4278889 m!4875117))

(assert (=> b!4278514 d!1263611))

(declare-fun d!1263613 () Bool)

(assert (=> d!1263613 (= (++!12103 (++!12103 lt!1514232 lt!1514230) acc!259) (++!12103 lt!1514232 (++!12103 lt!1514230 acc!259)))))

(declare-fun lt!1514308 () Unit!66313)

(assert (=> d!1263613 (= lt!1514308 (choose!26088 lt!1514232 lt!1514230 acc!259))))

(assert (=> d!1263613 (= (lemmaConcatAssociativity!2734 lt!1514232 lt!1514230 acc!259) lt!1514308)))

(declare-fun bs!602632 () Bool)

(assert (= bs!602632 d!1263613))

(assert (=> bs!602632 m!4875157))

(assert (=> bs!602632 m!4875159))

(declare-fun m!4875821 () Bool)

(assert (=> bs!602632 m!4875821))

(declare-fun m!4875823 () Bool)

(assert (=> bs!602632 m!4875823))

(assert (=> bs!602632 m!4875157))

(declare-fun m!4875825 () Bool)

(assert (=> bs!602632 m!4875825))

(assert (=> bs!602632 m!4875821))

(assert (=> b!4278514 d!1263613))

(declare-fun b!4278891 () Bool)

(declare-fun e!2656432 () List!47481)

(declare-fun call!294278 () List!47481)

(assert (=> b!4278891 (= e!2656432 call!294278)))

(declare-fun b!4278892 () Bool)

(declare-fun e!2656434 () List!47481)

(declare-fun lt!1514311 () List!47481)

(assert (=> b!4278892 (= e!2656434 lt!1514311)))

(declare-fun bm!294273 () Bool)

(declare-fun c!728941 () Bool)

(declare-fun c!728939 () Bool)

(assert (=> bm!294273 (= c!728941 c!728939)))

(assert (=> bm!294273 (= call!294278 (++!12103 e!2656434 (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259)))))

(declare-fun d!1263615 () Bool)

(declare-fun lt!1514310 () List!47481)

(assert (=> d!1263615 (= lt!1514310 (++!12103 (list!17275 (left!35291 (right!35621 t!3602))) (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259)))))

(declare-fun e!2656433 () List!47481)

(assert (=> d!1263615 (= lt!1514310 e!2656433)))

(declare-fun c!728940 () Bool)

(assert (=> d!1263615 (= c!728940 ((_ is Empty!14339) (left!35291 (right!35621 t!3602))))))

(assert (=> d!1263615 (= (efficientList!602 (left!35291 (right!35621 t!3602)) (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259)) lt!1514310)))

(declare-fun b!4278893 () Bool)

(assert (=> b!4278893 (= e!2656434 (efficientList!603 (xs!17645 (left!35291 (right!35621 t!3602)))))))

(declare-fun b!4278894 () Bool)

(assert (=> b!4278894 (= e!2656433 e!2656432)))

(assert (=> b!4278894 (= c!728939 ((_ is Leaf!22164) (left!35291 (right!35621 t!3602))))))

(declare-fun b!4278895 () Bool)

(declare-fun lt!1514309 () Unit!66313)

(declare-fun lt!1514312 () Unit!66313)

(assert (=> b!4278895 (= lt!1514309 lt!1514312)))

(declare-fun lt!1514313 () List!47481)

(assert (=> b!4278895 (= (++!12103 (++!12103 lt!1514313 lt!1514311) (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259)) (++!12103 lt!1514313 call!294278))))

(assert (=> b!4278895 (= lt!1514312 (lemmaConcatAssociativity!2734 lt!1514313 lt!1514311 (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259)))))

(assert (=> b!4278895 (= lt!1514311 (list!17275 (right!35621 (left!35291 (right!35621 t!3602)))))))

(assert (=> b!4278895 (= lt!1514313 (list!17275 (left!35291 (left!35291 (right!35621 t!3602)))))))

(assert (=> b!4278895 (= e!2656432 (efficientList!602 (left!35291 (left!35291 (right!35621 t!3602))) (efficientList!602 (right!35621 (left!35291 (right!35621 t!3602))) (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259))))))

(declare-fun b!4278896 () Bool)

(assert (=> b!4278896 (= e!2656433 (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259))))

(assert (= (and d!1263615 c!728940) b!4278896))

(assert (= (and d!1263615 (not c!728940)) b!4278894))

(assert (= (and b!4278894 c!728939) b!4278891))

(assert (= (and b!4278894 (not c!728939)) b!4278895))

(assert (= (or b!4278891 b!4278895) bm!294273))

(assert (= (and bm!294273 c!728941) b!4278893))

(assert (= (and bm!294273 (not c!728941)) b!4278892))

(assert (=> bm!294273 m!4875151))

(declare-fun m!4875827 () Bool)

(assert (=> bm!294273 m!4875827))

(assert (=> d!1263615 m!4875161))

(assert (=> d!1263615 m!4875161))

(assert (=> d!1263615 m!4875151))

(declare-fun m!4875829 () Bool)

(assert (=> d!1263615 m!4875829))

(declare-fun m!4875831 () Bool)

(assert (=> b!4278893 m!4875831))

(assert (=> b!4278895 m!4875151))

(declare-fun m!4875833 () Bool)

(assert (=> b!4278895 m!4875833))

(assert (=> b!4278895 m!4875627))

(declare-fun m!4875835 () Bool)

(assert (=> b!4278895 m!4875835))

(declare-fun m!4875837 () Bool)

(assert (=> b!4278895 m!4875837))

(assert (=> b!4278895 m!4875837))

(assert (=> b!4278895 m!4875151))

(declare-fun m!4875839 () Bool)

(assert (=> b!4278895 m!4875839))

(assert (=> b!4278895 m!4875625))

(assert (=> b!4278895 m!4875833))

(declare-fun m!4875841 () Bool)

(assert (=> b!4278895 m!4875841))

(assert (=> b!4278895 m!4875151))

(declare-fun m!4875843 () Bool)

(assert (=> b!4278895 m!4875843))

(assert (=> b!4278514 d!1263615))

(declare-fun b!4278897 () Bool)

(declare-fun e!2656435 () List!47481)

(declare-fun call!294279 () List!47481)

(assert (=> b!4278897 (= e!2656435 call!294279)))

(declare-fun b!4278898 () Bool)

(declare-fun e!2656437 () List!47481)

(declare-fun lt!1514316 () List!47481)

(assert (=> b!4278898 (= e!2656437 lt!1514316)))

(declare-fun bm!294274 () Bool)

(declare-fun c!728944 () Bool)

(declare-fun c!728942 () Bool)

(assert (=> bm!294274 (= c!728944 c!728942)))

(assert (=> bm!294274 (= call!294279 (++!12103 e!2656437 acc!259))))

(declare-fun d!1263617 () Bool)

(declare-fun lt!1514315 () List!47481)

(assert (=> d!1263617 (= lt!1514315 (++!12103 (list!17275 (right!35621 (right!35621 t!3602))) acc!259))))

(declare-fun e!2656436 () List!47481)

(assert (=> d!1263617 (= lt!1514315 e!2656436)))

(declare-fun c!728943 () Bool)

(assert (=> d!1263617 (= c!728943 ((_ is Empty!14339) (right!35621 (right!35621 t!3602))))))

(assert (=> d!1263617 (= (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259) lt!1514315)))

(declare-fun b!4278899 () Bool)

(assert (=> b!4278899 (= e!2656437 (efficientList!603 (xs!17645 (right!35621 (right!35621 t!3602)))))))

(declare-fun b!4278900 () Bool)

(assert (=> b!4278900 (= e!2656436 e!2656435)))

(assert (=> b!4278900 (= c!728942 ((_ is Leaf!22164) (right!35621 (right!35621 t!3602))))))

(declare-fun b!4278901 () Bool)

(declare-fun lt!1514314 () Unit!66313)

(declare-fun lt!1514317 () Unit!66313)

(assert (=> b!4278901 (= lt!1514314 lt!1514317)))

(declare-fun lt!1514318 () List!47481)

(assert (=> b!4278901 (= (++!12103 (++!12103 lt!1514318 lt!1514316) acc!259) (++!12103 lt!1514318 call!294279))))

(assert (=> b!4278901 (= lt!1514317 (lemmaConcatAssociativity!2734 lt!1514318 lt!1514316 acc!259))))

(assert (=> b!4278901 (= lt!1514316 (list!17275 (right!35621 (right!35621 (right!35621 t!3602)))))))

(assert (=> b!4278901 (= lt!1514318 (list!17275 (left!35291 (right!35621 (right!35621 t!3602)))))))

(assert (=> b!4278901 (= e!2656435 (efficientList!602 (left!35291 (right!35621 (right!35621 t!3602))) (efficientList!602 (right!35621 (right!35621 (right!35621 t!3602))) acc!259)))))

(declare-fun b!4278902 () Bool)

(assert (=> b!4278902 (= e!2656436 acc!259)))

(assert (= (and d!1263617 c!728943) b!4278902))

(assert (= (and d!1263617 (not c!728943)) b!4278900))

(assert (= (and b!4278900 c!728942) b!4278897))

(assert (= (and b!4278900 (not c!728942)) b!4278901))

(assert (= (or b!4278897 b!4278901) bm!294274))

(assert (= (and bm!294274 c!728944) b!4278899))

(assert (= (and bm!294274 (not c!728944)) b!4278898))

(declare-fun m!4875845 () Bool)

(assert (=> bm!294274 m!4875845))

(assert (=> d!1263617 m!4875153))

(assert (=> d!1263617 m!4875153))

(declare-fun m!4875847 () Bool)

(assert (=> d!1263617 m!4875847))

(declare-fun m!4875849 () Bool)

(assert (=> b!4278899 m!4875849))

(declare-fun m!4875851 () Bool)

(assert (=> b!4278901 m!4875851))

(assert (=> b!4278901 m!4875635))

(declare-fun m!4875853 () Bool)

(assert (=> b!4278901 m!4875853))

(declare-fun m!4875855 () Bool)

(assert (=> b!4278901 m!4875855))

(assert (=> b!4278901 m!4875855))

(declare-fun m!4875857 () Bool)

(assert (=> b!4278901 m!4875857))

(assert (=> b!4278901 m!4875633))

(assert (=> b!4278901 m!4875851))

(declare-fun m!4875859 () Bool)

(assert (=> b!4278901 m!4875859))

(declare-fun m!4875861 () Bool)

(assert (=> b!4278901 m!4875861))

(assert (=> b!4278514 d!1263617))

(declare-fun d!1263619 () Bool)

(declare-fun res!1756649 () Bool)

(declare-fun e!2656438 () Bool)

(assert (=> d!1263619 (=> (not res!1756649) (not e!2656438))))

(assert (=> d!1263619 (= res!1756649 (<= (size!34668 (list!17277 (xs!17645 (left!35291 t!3602)))) 512))))

(assert (=> d!1263619 (= (inv!62724 (left!35291 t!3602)) e!2656438)))

(declare-fun b!4278903 () Bool)

(declare-fun res!1756650 () Bool)

(assert (=> b!4278903 (=> (not res!1756650) (not e!2656438))))

(assert (=> b!4278903 (= res!1756650 (= (csize!28909 (left!35291 t!3602)) (size!34668 (list!17277 (xs!17645 (left!35291 t!3602))))))))

(declare-fun b!4278904 () Bool)

(assert (=> b!4278904 (= e!2656438 (and (> (csize!28909 (left!35291 t!3602)) 0) (<= (csize!28909 (left!35291 t!3602)) 512)))))

(assert (= (and d!1263619 res!1756649) b!4278903))

(assert (= (and b!4278903 res!1756650) b!4278904))

(assert (=> d!1263619 m!4875089))

(assert (=> d!1263619 m!4875089))

(declare-fun m!4875863 () Bool)

(assert (=> d!1263619 m!4875863))

(assert (=> b!4278903 m!4875089))

(assert (=> b!4278903 m!4875089))

(assert (=> b!4278903 m!4875863))

(assert (=> b!4278430 d!1263619))

(declare-fun d!1263621 () Bool)

(assert (=> d!1263621 (= (list!17277 (xs!17645 (left!35291 t!3602))) (innerList!14399 (xs!17645 (left!35291 t!3602))))))

(assert (=> b!4278452 d!1263621))

(declare-fun d!1263623 () Bool)

(declare-fun res!1756651 () Bool)

(declare-fun e!2656439 () Bool)

(assert (=> d!1263623 (=> (not res!1756651) (not e!2656439))))

(assert (=> d!1263623 (= res!1756651 (= (csize!28908 t!3602) (+ (size!34671 (left!35291 t!3602)) (size!34671 (right!35621 t!3602)))))))

(assert (=> d!1263623 (= (inv!62723 t!3602) e!2656439)))

(declare-fun b!4278905 () Bool)

(declare-fun res!1756652 () Bool)

(assert (=> b!4278905 (=> (not res!1756652) (not e!2656439))))

(assert (=> b!4278905 (= res!1756652 (and (not (= (left!35291 t!3602) Empty!14339)) (not (= (right!35621 t!3602) Empty!14339))))))

(declare-fun b!4278906 () Bool)

(declare-fun res!1756653 () Bool)

(assert (=> b!4278906 (=> (not res!1756653) (not e!2656439))))

(assert (=> b!4278906 (= res!1756653 (= (cheight!14550 t!3602) (+ (max!0 (height!1889 (left!35291 t!3602)) (height!1889 (right!35621 t!3602))) 1)))))

(declare-fun b!4278907 () Bool)

(assert (=> b!4278907 (= e!2656439 (<= 0 (cheight!14550 t!3602)))))

(assert (= (and d!1263623 res!1756651) b!4278905))

(assert (= (and b!4278905 res!1756652) b!4278906))

(assert (= (and b!4278906 res!1756653) b!4278907))

(declare-fun m!4875865 () Bool)

(assert (=> d!1263623 m!4875865))

(declare-fun m!4875867 () Bool)

(assert (=> d!1263623 m!4875867))

(assert (=> b!4278906 m!4875021))

(declare-fun m!4875869 () Bool)

(assert (=> b!4278906 m!4875869))

(assert (=> b!4278906 m!4875021))

(assert (=> b!4278906 m!4875869))

(declare-fun m!4875871 () Bool)

(assert (=> b!4278906 m!4875871))

(assert (=> b!4278417 d!1263623))

(declare-fun tp!1309076 () Bool)

(declare-fun b!4278908 () Bool)

(declare-fun tp!1309077 () Bool)

(declare-fun e!2656440 () Bool)

(assert (=> b!4278908 (= e!2656440 (and (inv!62719 (left!35291 (left!35291 (left!35291 t!3602)))) tp!1309076 (inv!62719 (right!35621 (left!35291 (left!35291 t!3602)))) tp!1309077))))

(declare-fun b!4278910 () Bool)

(declare-fun e!2656441 () Bool)

(declare-fun tp!1309075 () Bool)

(assert (=> b!4278910 (= e!2656441 tp!1309075)))

(declare-fun b!4278909 () Bool)

(assert (=> b!4278909 (= e!2656440 (and (inv!62720 (xs!17645 (left!35291 (left!35291 t!3602)))) e!2656441))))

(assert (=> b!4278576 (= tp!1309054 (and (inv!62719 (left!35291 (left!35291 t!3602))) e!2656440))))

(assert (= (and b!4278576 ((_ is Node!14339) (left!35291 (left!35291 t!3602)))) b!4278908))

(assert (= b!4278909 b!4278910))

(assert (= (and b!4278576 ((_ is Leaf!22164) (left!35291 (left!35291 t!3602)))) b!4278909))

(declare-fun m!4875873 () Bool)

(assert (=> b!4278908 m!4875873))

(declare-fun m!4875875 () Bool)

(assert (=> b!4278908 m!4875875))

(declare-fun m!4875877 () Bool)

(assert (=> b!4278909 m!4875877))

(assert (=> b!4278576 m!4875241))

(declare-fun tp!1309080 () Bool)

(declare-fun tp!1309079 () Bool)

(declare-fun e!2656442 () Bool)

(declare-fun b!4278911 () Bool)

(assert (=> b!4278911 (= e!2656442 (and (inv!62719 (left!35291 (right!35621 (left!35291 t!3602)))) tp!1309079 (inv!62719 (right!35621 (right!35621 (left!35291 t!3602)))) tp!1309080))))

(declare-fun b!4278913 () Bool)

(declare-fun e!2656443 () Bool)

(declare-fun tp!1309078 () Bool)

(assert (=> b!4278913 (= e!2656443 tp!1309078)))

(declare-fun b!4278912 () Bool)

(assert (=> b!4278912 (= e!2656442 (and (inv!62720 (xs!17645 (right!35621 (left!35291 t!3602)))) e!2656443))))

(assert (=> b!4278576 (= tp!1309055 (and (inv!62719 (right!35621 (left!35291 t!3602))) e!2656442))))

(assert (= (and b!4278576 ((_ is Node!14339) (right!35621 (left!35291 t!3602)))) b!4278911))

(assert (= b!4278912 b!4278913))

(assert (= (and b!4278576 ((_ is Leaf!22164) (right!35621 (left!35291 t!3602)))) b!4278912))

(declare-fun m!4875879 () Bool)

(assert (=> b!4278911 m!4875879))

(declare-fun m!4875881 () Bool)

(assert (=> b!4278911 m!4875881))

(declare-fun m!4875883 () Bool)

(assert (=> b!4278912 m!4875883))

(assert (=> b!4278576 m!4875243))

(declare-fun b!4278914 () Bool)

(declare-fun e!2656444 () Bool)

(declare-fun tp!1309081 () Bool)

(assert (=> b!4278914 (= e!2656444 (and tp_is_empty!22953 tp!1309081))))

(assert (=> b!4278566 (= tp!1309045 e!2656444)))

(assert (= (and b!4278566 ((_ is Cons!47357) (t!354054 (t!354054 acc!259)))) b!4278914))

(declare-fun b!4278915 () Bool)

(declare-fun e!2656445 () Bool)

(declare-fun tp!1309082 () Bool)

(assert (=> b!4278915 (= e!2656445 (and tp_is_empty!22953 tp!1309082))))

(assert (=> b!4278581 (= tp!1309056 e!2656445)))

(assert (= (and b!4278581 ((_ is Cons!47357) (innerList!14399 (xs!17645 (right!35621 t!3602))))) b!4278915))

(declare-fun b!4278916 () Bool)

(declare-fun e!2656446 () Bool)

(declare-fun tp!1309083 () Bool)

(assert (=> b!4278916 (= e!2656446 (and tp_is_empty!22953 tp!1309083))))

(assert (=> b!4278578 (= tp!1309053 e!2656446)))

(assert (= (and b!4278578 ((_ is Cons!47357) (innerList!14399 (xs!17645 (left!35291 t!3602))))) b!4278916))

(declare-fun tp!1309085 () Bool)

(declare-fun e!2656447 () Bool)

(declare-fun b!4278917 () Bool)

(declare-fun tp!1309086 () Bool)

(assert (=> b!4278917 (= e!2656447 (and (inv!62719 (left!35291 (left!35291 (right!35621 t!3602)))) tp!1309085 (inv!62719 (right!35621 (left!35291 (right!35621 t!3602)))) tp!1309086))))

(declare-fun b!4278919 () Bool)

(declare-fun e!2656448 () Bool)

(declare-fun tp!1309084 () Bool)

(assert (=> b!4278919 (= e!2656448 tp!1309084)))

(declare-fun b!4278918 () Bool)

(assert (=> b!4278918 (= e!2656447 (and (inv!62720 (xs!17645 (left!35291 (right!35621 t!3602)))) e!2656448))))

(assert (=> b!4278579 (= tp!1309057 (and (inv!62719 (left!35291 (right!35621 t!3602))) e!2656447))))

(assert (= (and b!4278579 ((_ is Node!14339) (left!35291 (right!35621 t!3602)))) b!4278917))

(assert (= b!4278918 b!4278919))

(assert (= (and b!4278579 ((_ is Leaf!22164) (left!35291 (right!35621 t!3602)))) b!4278918))

(declare-fun m!4875885 () Bool)

(assert (=> b!4278917 m!4875885))

(declare-fun m!4875887 () Bool)

(assert (=> b!4278917 m!4875887))

(declare-fun m!4875889 () Bool)

(assert (=> b!4278918 m!4875889))

(assert (=> b!4278579 m!4875247))

(declare-fun tp!1309089 () Bool)

(declare-fun tp!1309088 () Bool)

(declare-fun b!4278920 () Bool)

(declare-fun e!2656449 () Bool)

(assert (=> b!4278920 (= e!2656449 (and (inv!62719 (left!35291 (right!35621 (right!35621 t!3602)))) tp!1309088 (inv!62719 (right!35621 (right!35621 (right!35621 t!3602)))) tp!1309089))))

(declare-fun b!4278922 () Bool)

(declare-fun e!2656450 () Bool)

(declare-fun tp!1309087 () Bool)

(assert (=> b!4278922 (= e!2656450 tp!1309087)))

(declare-fun b!4278921 () Bool)

(assert (=> b!4278921 (= e!2656449 (and (inv!62720 (xs!17645 (right!35621 (right!35621 t!3602)))) e!2656450))))

(assert (=> b!4278579 (= tp!1309058 (and (inv!62719 (right!35621 (right!35621 t!3602))) e!2656449))))

(assert (= (and b!4278579 ((_ is Node!14339) (right!35621 (right!35621 t!3602)))) b!4278920))

(assert (= b!4278921 b!4278922))

(assert (= (and b!4278579 ((_ is Leaf!22164) (right!35621 (right!35621 t!3602)))) b!4278921))

(declare-fun m!4875891 () Bool)

(assert (=> b!4278920 m!4875891))

(declare-fun m!4875893 () Bool)

(assert (=> b!4278920 m!4875893))

(declare-fun m!4875895 () Bool)

(assert (=> b!4278921 m!4875895))

(assert (=> b!4278579 m!4875249))

(declare-fun b!4278923 () Bool)

(declare-fun e!2656451 () Bool)

(declare-fun tp!1309090 () Bool)

(assert (=> b!4278923 (= e!2656451 (and tp_is_empty!22953 tp!1309090))))

(assert (=> b!4278564 (= tp!1309043 e!2656451)))

(assert (= (and b!4278564 ((_ is Cons!47357) (t!354054 (innerList!14399 (xs!17645 t!3602))))) b!4278923))

(check-sat (not d!1263623) (not b!4278801) (not d!1263555) (not b!4278908) (not b!4278915) (not b!4278920) (not b!4278758) (not b!4278854) (not d!1263503) (not b!4278888) (not b!4278797) (not b!4278868) (not b!4278855) (not b!4278849) (not d!1263577) (not b!4278788) (not d!1263569) (not b!4278816) (not bm!294273) (not b!4278653) (not b!4278880) (not b!4278823) (not b!4278783) (not b!4278906) (not d!1263607) (not b!4278914) (not b!4278867) (not d!1263587) (not b!4278821) (not b!4278768) (not b!4278918) (not b!4278594) (not b!4278791) (not b!4278660) (not b!4278711) (not b!4278717) tp_is_empty!22953 (not b!4278863) (not b!4278649) (not b!4278617) (not b!4278826) (not b!4278659) (not d!1263459) (not d!1263617) (not b!4278895) (not bm!294274) (not d!1263599) (not b!4278874) (not b!4278881) (not b!4278903) (not d!1263421) (not b!4278893) (not b!4278909) (not b!4278579) (not b!4278817) (not b!4278871) (not b!4278910) (not b!4278692) (not b!4278870) (not d!1263567) (not b!4278612) (not b!4278901) (not d!1263619) (not b!4278651) (not b!4278923) (not b!4278884) (not d!1263611) (not b!4278899) (not b!4278860) (not b!4278916) (not b!4278813) (not b!4278921) (not b!4278912) (not d!1263547) (not b!4278838) (not b!4278878) (not b!4278885) (not b!4278709) (not b!4278919) (not b!4278922) (not b!4278777) (not b!4278824) (not b!4278641) (not b!4278831) (not b!4278787) (not b!4278792) (not b!4278576) (not b!4278913) (not d!1263609) (not b!4278785) (not b!4278843) (not b!4278876) (not d!1263549) (not b!4278865) (not b!4278593) (not d!1263615) (not d!1263487) (not b!4278859) (not b!4278889) (not d!1263525) (not d!1263597) (not d!1263581) (not b!4278832) (not b!4278767) (not b!4278800) (not d!1263613) (not b!4278796) (not d!1263465) (not b!4278864) (not b!4278917) (not b!4278610) (not b!4278911))
(check-sat)
(get-model)

(declare-fun d!1263625 () Bool)

(declare-fun lt!1514321 () Int)

(assert (=> d!1263625 (= lt!1514321 (size!34668 (list!17275 (left!35291 t!3602))))))

(assert (=> d!1263625 (= lt!1514321 (ite ((_ is Empty!14339) (left!35291 t!3602)) 0 (ite ((_ is Leaf!22164) (left!35291 t!3602)) (csize!28909 (left!35291 t!3602)) (csize!28908 (left!35291 t!3602)))))))

(assert (=> d!1263625 (= (size!34671 (left!35291 t!3602)) lt!1514321)))

(declare-fun bs!602633 () Bool)

(assert (= bs!602633 d!1263625))

(assert (=> bs!602633 m!4875029))

(assert (=> bs!602633 m!4875029))

(declare-fun m!4875897 () Bool)

(assert (=> bs!602633 m!4875897))

(assert (=> d!1263623 d!1263625))

(declare-fun d!1263627 () Bool)

(declare-fun lt!1514322 () Int)

(assert (=> d!1263627 (= lt!1514322 (size!34668 (list!17275 (right!35621 t!3602))))))

(assert (=> d!1263627 (= lt!1514322 (ite ((_ is Empty!14339) (right!35621 t!3602)) 0 (ite ((_ is Leaf!22164) (right!35621 t!3602)) (csize!28909 (right!35621 t!3602)) (csize!28908 (right!35621 t!3602)))))))

(assert (=> d!1263627 (= (size!34671 (right!35621 t!3602)) lt!1514322)))

(declare-fun bs!602634 () Bool)

(assert (= bs!602634 d!1263627))

(assert (=> bs!602634 m!4875031))

(assert (=> bs!602634 m!4875031))

(assert (=> bs!602634 m!4875389))

(assert (=> d!1263623 d!1263627))

(declare-fun d!1263629 () Bool)

(declare-fun c!728945 () Bool)

(assert (=> d!1263629 (= c!728945 ((_ is Node!14339) (left!35291 (left!35291 (left!35291 t!3602)))))))

(declare-fun e!2656452 () Bool)

(assert (=> d!1263629 (= (inv!62719 (left!35291 (left!35291 (left!35291 t!3602)))) e!2656452)))

(declare-fun b!4278924 () Bool)

(assert (=> b!4278924 (= e!2656452 (inv!62723 (left!35291 (left!35291 (left!35291 t!3602)))))))

(declare-fun b!4278925 () Bool)

(declare-fun e!2656453 () Bool)

(assert (=> b!4278925 (= e!2656452 e!2656453)))

(declare-fun res!1756654 () Bool)

(assert (=> b!4278925 (= res!1756654 (not ((_ is Leaf!22164) (left!35291 (left!35291 (left!35291 t!3602))))))))

(assert (=> b!4278925 (=> res!1756654 e!2656453)))

(declare-fun b!4278926 () Bool)

(assert (=> b!4278926 (= e!2656453 (inv!62724 (left!35291 (left!35291 (left!35291 t!3602)))))))

(assert (= (and d!1263629 c!728945) b!4278924))

(assert (= (and d!1263629 (not c!728945)) b!4278925))

(assert (= (and b!4278925 (not res!1756654)) b!4278926))

(declare-fun m!4875899 () Bool)

(assert (=> b!4278924 m!4875899))

(declare-fun m!4875901 () Bool)

(assert (=> b!4278926 m!4875901))

(assert (=> b!4278908 d!1263629))

(declare-fun d!1263631 () Bool)

(declare-fun c!728946 () Bool)

(assert (=> d!1263631 (= c!728946 ((_ is Node!14339) (right!35621 (left!35291 (left!35291 t!3602)))))))

(declare-fun e!2656454 () Bool)

(assert (=> d!1263631 (= (inv!62719 (right!35621 (left!35291 (left!35291 t!3602)))) e!2656454)))

(declare-fun b!4278927 () Bool)

(assert (=> b!4278927 (= e!2656454 (inv!62723 (right!35621 (left!35291 (left!35291 t!3602)))))))

(declare-fun b!4278928 () Bool)

(declare-fun e!2656455 () Bool)

(assert (=> b!4278928 (= e!2656454 e!2656455)))

(declare-fun res!1756655 () Bool)

(assert (=> b!4278928 (= res!1756655 (not ((_ is Leaf!22164) (right!35621 (left!35291 (left!35291 t!3602))))))))

(assert (=> b!4278928 (=> res!1756655 e!2656455)))

(declare-fun b!4278929 () Bool)

(assert (=> b!4278929 (= e!2656455 (inv!62724 (right!35621 (left!35291 (left!35291 t!3602)))))))

(assert (= (and d!1263631 c!728946) b!4278927))

(assert (= (and d!1263631 (not c!728946)) b!4278928))

(assert (= (and b!4278928 (not res!1756655)) b!4278929))

(declare-fun m!4875903 () Bool)

(assert (=> b!4278927 m!4875903))

(declare-fun m!4875905 () Bool)

(assert (=> b!4278929 m!4875905))

(assert (=> b!4278908 d!1263631))

(declare-fun d!1263633 () Bool)

(declare-fun res!1756656 () Bool)

(declare-fun e!2656456 () Bool)

(assert (=> d!1263633 (=> (not res!1756656) (not e!2656456))))

(assert (=> d!1263633 (= res!1756656 (= (csize!28908 (left!35291 (left!35291 t!3602))) (+ (size!34671 (left!35291 (left!35291 (left!35291 t!3602)))) (size!34671 (right!35621 (left!35291 (left!35291 t!3602)))))))))

(assert (=> d!1263633 (= (inv!62723 (left!35291 (left!35291 t!3602))) e!2656456)))

(declare-fun b!4278930 () Bool)

(declare-fun res!1756657 () Bool)

(assert (=> b!4278930 (=> (not res!1756657) (not e!2656456))))

(assert (=> b!4278930 (= res!1756657 (and (not (= (left!35291 (left!35291 (left!35291 t!3602))) Empty!14339)) (not (= (right!35621 (left!35291 (left!35291 t!3602))) Empty!14339))))))

(declare-fun b!4278931 () Bool)

(declare-fun res!1756658 () Bool)

(assert (=> b!4278931 (=> (not res!1756658) (not e!2656456))))

(assert (=> b!4278931 (= res!1756658 (= (cheight!14550 (left!35291 (left!35291 t!3602))) (+ (max!0 (height!1889 (left!35291 (left!35291 (left!35291 t!3602)))) (height!1889 (right!35621 (left!35291 (left!35291 t!3602))))) 1)))))

(declare-fun b!4278932 () Bool)

(assert (=> b!4278932 (= e!2656456 (<= 0 (cheight!14550 (left!35291 (left!35291 t!3602)))))))

(assert (= (and d!1263633 res!1756656) b!4278930))

(assert (= (and b!4278930 res!1756657) b!4278931))

(assert (= (and b!4278931 res!1756658) b!4278932))

(declare-fun m!4875907 () Bool)

(assert (=> d!1263633 m!4875907))

(declare-fun m!4875909 () Bool)

(assert (=> d!1263633 m!4875909))

(declare-fun m!4875911 () Bool)

(assert (=> b!4278931 m!4875911))

(declare-fun m!4875913 () Bool)

(assert (=> b!4278931 m!4875913))

(assert (=> b!4278931 m!4875911))

(assert (=> b!4278931 m!4875913))

(declare-fun m!4875915 () Bool)

(assert (=> b!4278931 m!4875915))

(assert (=> b!4278865 d!1263633))

(declare-fun d!1263635 () Bool)

(declare-fun lt!1514323 () Int)

(assert (=> d!1263635 (>= lt!1514323 0)))

(declare-fun e!2656457 () Int)

(assert (=> d!1263635 (= lt!1514323 e!2656457)))

(declare-fun c!728947 () Bool)

(assert (=> d!1263635 (= c!728947 ((_ is Nil!47357) (innerList!14399 (xs!17645 (left!35291 t!3602)))))))

(assert (=> d!1263635 (= (size!34668 (innerList!14399 (xs!17645 (left!35291 t!3602)))) lt!1514323)))

(declare-fun b!4278933 () Bool)

(assert (=> b!4278933 (= e!2656457 0)))

(declare-fun b!4278934 () Bool)

(assert (=> b!4278934 (= e!2656457 (+ 1 (size!34668 (t!354054 (innerList!14399 (xs!17645 (left!35291 t!3602)))))))))

(assert (= (and d!1263635 c!728947) b!4278933))

(assert (= (and d!1263635 (not c!728947)) b!4278934))

(declare-fun m!4875917 () Bool)

(assert (=> b!4278934 m!4875917))

(assert (=> d!1263597 d!1263635))

(declare-fun d!1263637 () Bool)

(declare-fun res!1756659 () Bool)

(declare-fun e!2656458 () Bool)

(assert (=> d!1263637 (=> (not res!1756659) (not e!2656458))))

(assert (=> d!1263637 (= res!1756659 (= (csize!28908 (right!35621 (right!35621 t!3602))) (+ (size!34671 (left!35291 (right!35621 (right!35621 t!3602)))) (size!34671 (right!35621 (right!35621 (right!35621 t!3602)))))))))

(assert (=> d!1263637 (= (inv!62723 (right!35621 (right!35621 t!3602))) e!2656458)))

(declare-fun b!4278935 () Bool)

(declare-fun res!1756660 () Bool)

(assert (=> b!4278935 (=> (not res!1756660) (not e!2656458))))

(assert (=> b!4278935 (= res!1756660 (and (not (= (left!35291 (right!35621 (right!35621 t!3602))) Empty!14339)) (not (= (right!35621 (right!35621 (right!35621 t!3602))) Empty!14339))))))

(declare-fun b!4278936 () Bool)

(declare-fun res!1756661 () Bool)

(assert (=> b!4278936 (=> (not res!1756661) (not e!2656458))))

(assert (=> b!4278936 (= res!1756661 (= (cheight!14550 (right!35621 (right!35621 t!3602))) (+ (max!0 (height!1889 (left!35291 (right!35621 (right!35621 t!3602)))) (height!1889 (right!35621 (right!35621 (right!35621 t!3602))))) 1)))))

(declare-fun b!4278937 () Bool)

(assert (=> b!4278937 (= e!2656458 (<= 0 (cheight!14550 (right!35621 (right!35621 t!3602)))))))

(assert (= (and d!1263637 res!1756659) b!4278935))

(assert (= (and b!4278935 res!1756660) b!4278936))

(assert (= (and b!4278936 res!1756661) b!4278937))

(declare-fun m!4875919 () Bool)

(assert (=> d!1263637 m!4875919))

(declare-fun m!4875921 () Bool)

(assert (=> d!1263637 m!4875921))

(declare-fun m!4875923 () Bool)

(assert (=> b!4278936 m!4875923))

(declare-fun m!4875925 () Bool)

(assert (=> b!4278936 m!4875925))

(assert (=> b!4278936 m!4875923))

(assert (=> b!4278936 m!4875925))

(declare-fun m!4875927 () Bool)

(assert (=> b!4278936 m!4875927))

(assert (=> b!4278824 d!1263637))

(declare-fun d!1263639 () Bool)

(declare-fun lt!1514324 () Int)

(assert (=> d!1263639 (>= lt!1514324 0)))

(declare-fun e!2656459 () Int)

(assert (=> d!1263639 (= lt!1514324 e!2656459)))

(declare-fun c!728948 () Bool)

(assert (=> d!1263639 (= c!728948 ((_ is Nil!47357) lt!1514300))))

(assert (=> d!1263639 (= (size!34668 lt!1514300) lt!1514324)))

(declare-fun b!4278938 () Bool)

(assert (=> b!4278938 (= e!2656459 0)))

(declare-fun b!4278939 () Bool)

(assert (=> b!4278939 (= e!2656459 (+ 1 (size!34668 (t!354054 lt!1514300))))))

(assert (= (and d!1263639 c!728948) b!4278938))

(assert (= (and d!1263639 (not c!728948)) b!4278939))

(declare-fun m!4875929 () Bool)

(assert (=> b!4278939 m!4875929))

(assert (=> b!4278832 d!1263639))

(declare-fun d!1263641 () Bool)

(declare-fun lt!1514325 () Int)

(assert (=> d!1263641 (>= lt!1514325 0)))

(declare-fun e!2656460 () Int)

(assert (=> d!1263641 (= lt!1514325 e!2656460)))

(declare-fun c!728949 () Bool)

(assert (=> d!1263641 (= c!728949 ((_ is Nil!47357) (t!354054 lt!1514194)))))

(assert (=> d!1263641 (= (size!34668 (t!354054 lt!1514194)) lt!1514325)))

(declare-fun b!4278940 () Bool)

(assert (=> b!4278940 (= e!2656460 0)))

(declare-fun b!4278941 () Bool)

(assert (=> b!4278941 (= e!2656460 (+ 1 (size!34668 (t!354054 (t!354054 lt!1514194)))))))

(assert (= (and d!1263641 c!728949) b!4278940))

(assert (= (and d!1263641 (not c!728949)) b!4278941))

(declare-fun m!4875931 () Bool)

(assert (=> b!4278941 m!4875931))

(assert (=> b!4278832 d!1263641))

(assert (=> b!4278832 d!1263585))

(declare-fun d!1263643 () Bool)

(declare-fun lt!1514326 () Int)

(assert (=> d!1263643 (>= lt!1514326 0)))

(declare-fun e!2656461 () Int)

(assert (=> d!1263643 (= lt!1514326 e!2656461)))

(declare-fun c!728950 () Bool)

(assert (=> d!1263643 (= c!728950 ((_ is Nil!47357) (t!354054 (innerList!14399 (xs!17645 t!3602)))))))

(assert (=> d!1263643 (= (size!34668 (t!354054 (innerList!14399 (xs!17645 t!3602)))) lt!1514326)))

(declare-fun b!4278942 () Bool)

(assert (=> b!4278942 (= e!2656461 0)))

(declare-fun b!4278943 () Bool)

(assert (=> b!4278943 (= e!2656461 (+ 1 (size!34668 (t!354054 (t!354054 (innerList!14399 (xs!17645 t!3602)))))))))

(assert (= (and d!1263643 c!728950) b!4278942))

(assert (= (and d!1263643 (not c!728950)) b!4278943))

(declare-fun m!4875933 () Bool)

(assert (=> b!4278943 m!4875933))

(assert (=> b!4278641 d!1263643))

(declare-fun d!1263645 () Bool)

(assert (=> d!1263645 (= (list!17277 (xs!17645 (left!35291 (left!35291 t!3602)))) (innerList!14399 (xs!17645 (left!35291 (left!35291 t!3602)))))))

(assert (=> b!4278859 d!1263645))

(declare-fun b!4278945 () Bool)

(declare-fun e!2656462 () List!47481)

(assert (=> b!4278945 (= e!2656462 (Cons!47357 (h!52777 (t!354054 (list!17275 (right!35621 t!3602)))) (++!12103 (t!354054 (t!354054 (list!17275 (right!35621 t!3602)))) acc!259)))))

(declare-fun b!4278944 () Bool)

(assert (=> b!4278944 (= e!2656462 acc!259)))

(declare-fun d!1263647 () Bool)

(declare-fun e!2656463 () Bool)

(assert (=> d!1263647 e!2656463))

(declare-fun res!1756663 () Bool)

(assert (=> d!1263647 (=> (not res!1756663) (not e!2656463))))

(declare-fun lt!1514327 () List!47481)

(assert (=> d!1263647 (= res!1756663 (= (content!7491 lt!1514327) ((_ map or) (content!7491 (t!354054 (list!17275 (right!35621 t!3602)))) (content!7491 acc!259))))))

(assert (=> d!1263647 (= lt!1514327 e!2656462)))

(declare-fun c!728951 () Bool)

(assert (=> d!1263647 (= c!728951 ((_ is Nil!47357) (t!354054 (list!17275 (right!35621 t!3602)))))))

(assert (=> d!1263647 (= (++!12103 (t!354054 (list!17275 (right!35621 t!3602))) acc!259) lt!1514327)))

(declare-fun b!4278946 () Bool)

(declare-fun res!1756662 () Bool)

(assert (=> b!4278946 (=> (not res!1756662) (not e!2656463))))

(assert (=> b!4278946 (= res!1756662 (= (size!34668 lt!1514327) (+ (size!34668 (t!354054 (list!17275 (right!35621 t!3602)))) (size!34668 acc!259))))))

(declare-fun b!4278947 () Bool)

(assert (=> b!4278947 (= e!2656463 (or (not (= acc!259 Nil!47357)) (= lt!1514327 (t!354054 (list!17275 (right!35621 t!3602))))))))

(assert (= (and d!1263647 c!728951) b!4278944))

(assert (= (and d!1263647 (not c!728951)) b!4278945))

(assert (= (and d!1263647 res!1756663) b!4278946))

(assert (= (and b!4278946 res!1756662) b!4278947))

(declare-fun m!4875935 () Bool)

(assert (=> b!4278945 m!4875935))

(declare-fun m!4875937 () Bool)

(assert (=> d!1263647 m!4875937))

(declare-fun m!4875939 () Bool)

(assert (=> d!1263647 m!4875939))

(assert (=> d!1263647 m!4875111))

(declare-fun m!4875941 () Bool)

(assert (=> b!4278946 m!4875941))

(declare-fun m!4875943 () Bool)

(assert (=> b!4278946 m!4875943))

(assert (=> b!4278946 m!4875117))

(assert (=> b!4278659 d!1263647))

(declare-fun d!1263649 () Bool)

(declare-fun res!1756664 () Bool)

(declare-fun e!2656464 () Bool)

(assert (=> d!1263649 (=> (not res!1756664) (not e!2656464))))

(assert (=> d!1263649 (= res!1756664 (<= (size!34668 (list!17277 (xs!17645 (left!35291 (right!35621 t!3602))))) 512))))

(assert (=> d!1263649 (= (inv!62724 (left!35291 (right!35621 t!3602))) e!2656464)))

(declare-fun b!4278948 () Bool)

(declare-fun res!1756665 () Bool)

(assert (=> b!4278948 (=> (not res!1756665) (not e!2656464))))

(assert (=> b!4278948 (= res!1756665 (= (csize!28909 (left!35291 (right!35621 t!3602))) (size!34668 (list!17277 (xs!17645 (left!35291 (right!35621 t!3602)))))))))

(declare-fun b!4278949 () Bool)

(assert (=> b!4278949 (= e!2656464 (and (> (csize!28909 (left!35291 (right!35621 t!3602))) 0) (<= (csize!28909 (left!35291 (right!35621 t!3602))) 512)))))

(assert (= (and d!1263649 res!1756664) b!4278948))

(assert (= (and b!4278948 res!1756665) b!4278949))

(assert (=> d!1263649 m!4875631))

(assert (=> d!1263649 m!4875631))

(declare-fun m!4875945 () Bool)

(assert (=> d!1263649 m!4875945))

(assert (=> b!4278948 m!4875631))

(assert (=> b!4278948 m!4875631))

(assert (=> b!4278948 m!4875945))

(assert (=> b!4278823 d!1263649))

(declare-fun d!1263651 () Bool)

(declare-fun c!728952 () Bool)

(assert (=> d!1263651 (= c!728952 ((_ is Nil!47357) lt!1514307))))

(declare-fun e!2656465 () (InoxSet T!79990))

(assert (=> d!1263651 (= (content!7491 lt!1514307) e!2656465)))

(declare-fun b!4278950 () Bool)

(assert (=> b!4278950 (= e!2656465 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4278951 () Bool)

(assert (=> b!4278951 (= e!2656465 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 lt!1514307) true) (content!7491 (t!354054 lt!1514307))))))

(assert (= (and d!1263651 c!728952) b!4278950))

(assert (= (and d!1263651 (not c!728952)) b!4278951))

(declare-fun m!4875947 () Bool)

(assert (=> b!4278951 m!4875947))

(declare-fun m!4875949 () Bool)

(assert (=> b!4278951 m!4875949))

(assert (=> d!1263611 d!1263651))

(declare-fun d!1263653 () Bool)

(declare-fun c!728953 () Bool)

(assert (=> d!1263653 (= c!728953 ((_ is Nil!47357) (++!12103 lt!1514232 lt!1514230)))))

(declare-fun e!2656466 () (InoxSet T!79990))

(assert (=> d!1263653 (= (content!7491 (++!12103 lt!1514232 lt!1514230)) e!2656466)))

(declare-fun b!4278952 () Bool)

(assert (=> b!4278952 (= e!2656466 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4278953 () Bool)

(assert (=> b!4278953 (= e!2656466 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 (++!12103 lt!1514232 lt!1514230)) true) (content!7491 (t!354054 (++!12103 lt!1514232 lt!1514230)))))))

(assert (= (and d!1263653 c!728953) b!4278952))

(assert (= (and d!1263653 (not c!728953)) b!4278953))

(declare-fun m!4875951 () Bool)

(assert (=> b!4278953 m!4875951))

(declare-fun m!4875953 () Bool)

(assert (=> b!4278953 m!4875953))

(assert (=> d!1263611 d!1263653))

(assert (=> d!1263611 d!1263541))

(declare-fun d!1263655 () Bool)

(declare-fun lt!1514328 () Int)

(assert (=> d!1263655 (>= lt!1514328 0)))

(declare-fun e!2656467 () Int)

(assert (=> d!1263655 (= lt!1514328 e!2656467)))

(declare-fun c!728954 () Bool)

(assert (=> d!1263655 (= c!728954 ((_ is Nil!47357) lt!1514290))))

(assert (=> d!1263655 (= (size!34668 lt!1514290) lt!1514328)))

(declare-fun b!4278954 () Bool)

(assert (=> b!4278954 (= e!2656467 0)))

(declare-fun b!4278955 () Bool)

(assert (=> b!4278955 (= e!2656467 (+ 1 (size!34668 (t!354054 lt!1514290))))))

(assert (= (and d!1263655 c!728954) b!4278954))

(assert (= (and d!1263655 (not c!728954)) b!4278955))

(declare-fun m!4875955 () Bool)

(assert (=> b!4278955 m!4875955))

(assert (=> b!4278792 d!1263655))

(declare-fun d!1263657 () Bool)

(declare-fun lt!1514329 () Int)

(assert (=> d!1263657 (>= lt!1514329 0)))

(declare-fun e!2656468 () Int)

(assert (=> d!1263657 (= lt!1514329 e!2656468)))

(declare-fun c!728955 () Bool)

(assert (=> d!1263657 (= c!728955 ((_ is Nil!47357) (list!17275 (left!35291 (right!35621 t!3602)))))))

(assert (=> d!1263657 (= (size!34668 (list!17275 (left!35291 (right!35621 t!3602)))) lt!1514329)))

(declare-fun b!4278956 () Bool)

(assert (=> b!4278956 (= e!2656468 0)))

(declare-fun b!4278957 () Bool)

(assert (=> b!4278957 (= e!2656468 (+ 1 (size!34668 (t!354054 (list!17275 (left!35291 (right!35621 t!3602)))))))))

(assert (= (and d!1263657 c!728955) b!4278956))

(assert (= (and d!1263657 (not c!728955)) b!4278957))

(declare-fun m!4875957 () Bool)

(assert (=> b!4278957 m!4875957))

(assert (=> b!4278792 d!1263657))

(declare-fun d!1263659 () Bool)

(declare-fun lt!1514330 () Int)

(assert (=> d!1263659 (>= lt!1514330 0)))

(declare-fun e!2656469 () Int)

(assert (=> d!1263659 (= lt!1514330 e!2656469)))

(declare-fun c!728956 () Bool)

(assert (=> d!1263659 (= c!728956 ((_ is Nil!47357) (list!17275 (right!35621 (right!35621 t!3602)))))))

(assert (=> d!1263659 (= (size!34668 (list!17275 (right!35621 (right!35621 t!3602)))) lt!1514330)))

(declare-fun b!4278958 () Bool)

(assert (=> b!4278958 (= e!2656469 0)))

(declare-fun b!4278959 () Bool)

(assert (=> b!4278959 (= e!2656469 (+ 1 (size!34668 (t!354054 (list!17275 (right!35621 (right!35621 t!3602)))))))))

(assert (= (and d!1263659 c!728956) b!4278958))

(assert (= (and d!1263659 (not c!728956)) b!4278959))

(declare-fun m!4875959 () Bool)

(assert (=> b!4278959 m!4875959))

(assert (=> b!4278792 d!1263659))

(declare-fun d!1263661 () Bool)

(assert (=> d!1263661 (= (list!17277 (xs!17645 (right!35621 (right!35621 t!3602)))) (innerList!14399 (xs!17645 (right!35621 (right!35621 t!3602)))))))

(assert (=> b!4278800 d!1263661))

(declare-fun b!4278961 () Bool)

(declare-fun e!2656470 () List!47481)

(assert (=> b!4278961 (= e!2656470 (Cons!47357 (h!52777 (list!17275 (left!35291 (left!35291 (right!35621 t!3602))))) (++!12103 (t!354054 (list!17275 (left!35291 (left!35291 (right!35621 t!3602))))) (list!17275 (right!35621 (left!35291 (right!35621 t!3602)))))))))

(declare-fun b!4278960 () Bool)

(assert (=> b!4278960 (= e!2656470 (list!17275 (right!35621 (left!35291 (right!35621 t!3602)))))))

(declare-fun d!1263663 () Bool)

(declare-fun e!2656471 () Bool)

(assert (=> d!1263663 e!2656471))

(declare-fun res!1756667 () Bool)

(assert (=> d!1263663 (=> (not res!1756667) (not e!2656471))))

(declare-fun lt!1514331 () List!47481)

(assert (=> d!1263663 (= res!1756667 (= (content!7491 lt!1514331) ((_ map or) (content!7491 (list!17275 (left!35291 (left!35291 (right!35621 t!3602))))) (content!7491 (list!17275 (right!35621 (left!35291 (right!35621 t!3602))))))))))

(assert (=> d!1263663 (= lt!1514331 e!2656470)))

(declare-fun c!728957 () Bool)

(assert (=> d!1263663 (= c!728957 ((_ is Nil!47357) (list!17275 (left!35291 (left!35291 (right!35621 t!3602))))))))

(assert (=> d!1263663 (= (++!12103 (list!17275 (left!35291 (left!35291 (right!35621 t!3602)))) (list!17275 (right!35621 (left!35291 (right!35621 t!3602))))) lt!1514331)))

(declare-fun b!4278962 () Bool)

(declare-fun res!1756666 () Bool)

(assert (=> b!4278962 (=> (not res!1756666) (not e!2656471))))

(assert (=> b!4278962 (= res!1756666 (= (size!34668 lt!1514331) (+ (size!34668 (list!17275 (left!35291 (left!35291 (right!35621 t!3602))))) (size!34668 (list!17275 (right!35621 (left!35291 (right!35621 t!3602))))))))))

(declare-fun b!4278963 () Bool)

(assert (=> b!4278963 (= e!2656471 (or (not (= (list!17275 (right!35621 (left!35291 (right!35621 t!3602)))) Nil!47357)) (= lt!1514331 (list!17275 (left!35291 (left!35291 (right!35621 t!3602)))))))))

(assert (= (and d!1263663 c!728957) b!4278960))

(assert (= (and d!1263663 (not c!728957)) b!4278961))

(assert (= (and d!1263663 res!1756667) b!4278962))

(assert (= (and b!4278962 res!1756666) b!4278963))

(assert (=> b!4278961 m!4875627))

(declare-fun m!4875961 () Bool)

(assert (=> b!4278961 m!4875961))

(declare-fun m!4875963 () Bool)

(assert (=> d!1263663 m!4875963))

(assert (=> d!1263663 m!4875625))

(declare-fun m!4875965 () Bool)

(assert (=> d!1263663 m!4875965))

(assert (=> d!1263663 m!4875627))

(declare-fun m!4875967 () Bool)

(assert (=> d!1263663 m!4875967))

(declare-fun m!4875969 () Bool)

(assert (=> b!4278962 m!4875969))

(assert (=> b!4278962 m!4875625))

(declare-fun m!4875971 () Bool)

(assert (=> b!4278962 m!4875971))

(assert (=> b!4278962 m!4875627))

(declare-fun m!4875973 () Bool)

(assert (=> b!4278962 m!4875973))

(assert (=> b!4278797 d!1263663))

(declare-fun d!1263665 () Bool)

(declare-fun c!728958 () Bool)

(assert (=> d!1263665 (= c!728958 ((_ is Empty!14339) (left!35291 (left!35291 (right!35621 t!3602)))))))

(declare-fun e!2656472 () List!47481)

(assert (=> d!1263665 (= (list!17275 (left!35291 (left!35291 (right!35621 t!3602)))) e!2656472)))

(declare-fun b!4278967 () Bool)

(declare-fun e!2656473 () List!47481)

(assert (=> b!4278967 (= e!2656473 (++!12103 (list!17275 (left!35291 (left!35291 (left!35291 (right!35621 t!3602))))) (list!17275 (right!35621 (left!35291 (left!35291 (right!35621 t!3602)))))))))

(declare-fun b!4278965 () Bool)

(assert (=> b!4278965 (= e!2656472 e!2656473)))

(declare-fun c!728959 () Bool)

(assert (=> b!4278965 (= c!728959 ((_ is Leaf!22164) (left!35291 (left!35291 (right!35621 t!3602)))))))

(declare-fun b!4278964 () Bool)

(assert (=> b!4278964 (= e!2656472 Nil!47357)))

(declare-fun b!4278966 () Bool)

(assert (=> b!4278966 (= e!2656473 (list!17277 (xs!17645 (left!35291 (left!35291 (right!35621 t!3602))))))))

(assert (= (and d!1263665 c!728958) b!4278964))

(assert (= (and d!1263665 (not c!728958)) b!4278965))

(assert (= (and b!4278965 c!728959) b!4278966))

(assert (= (and b!4278965 (not c!728959)) b!4278967))

(declare-fun m!4875975 () Bool)

(assert (=> b!4278967 m!4875975))

(declare-fun m!4875977 () Bool)

(assert (=> b!4278967 m!4875977))

(assert (=> b!4278967 m!4875975))

(assert (=> b!4278967 m!4875977))

(declare-fun m!4875979 () Bool)

(assert (=> b!4278967 m!4875979))

(declare-fun m!4875981 () Bool)

(assert (=> b!4278966 m!4875981))

(assert (=> b!4278797 d!1263665))

(declare-fun d!1263667 () Bool)

(declare-fun c!728960 () Bool)

(assert (=> d!1263667 (= c!728960 ((_ is Empty!14339) (right!35621 (left!35291 (right!35621 t!3602)))))))

(declare-fun e!2656474 () List!47481)

(assert (=> d!1263667 (= (list!17275 (right!35621 (left!35291 (right!35621 t!3602)))) e!2656474)))

(declare-fun b!4278971 () Bool)

(declare-fun e!2656475 () List!47481)

(assert (=> b!4278971 (= e!2656475 (++!12103 (list!17275 (left!35291 (right!35621 (left!35291 (right!35621 t!3602))))) (list!17275 (right!35621 (right!35621 (left!35291 (right!35621 t!3602)))))))))

(declare-fun b!4278969 () Bool)

(assert (=> b!4278969 (= e!2656474 e!2656475)))

(declare-fun c!728961 () Bool)

(assert (=> b!4278969 (= c!728961 ((_ is Leaf!22164) (right!35621 (left!35291 (right!35621 t!3602)))))))

(declare-fun b!4278968 () Bool)

(assert (=> b!4278968 (= e!2656474 Nil!47357)))

(declare-fun b!4278970 () Bool)

(assert (=> b!4278970 (= e!2656475 (list!17277 (xs!17645 (right!35621 (left!35291 (right!35621 t!3602))))))))

(assert (= (and d!1263667 c!728960) b!4278968))

(assert (= (and d!1263667 (not c!728960)) b!4278969))

(assert (= (and b!4278969 c!728961) b!4278970))

(assert (= (and b!4278969 (not c!728961)) b!4278971))

(declare-fun m!4875983 () Bool)

(assert (=> b!4278971 m!4875983))

(declare-fun m!4875985 () Bool)

(assert (=> b!4278971 m!4875985))

(assert (=> b!4278971 m!4875983))

(assert (=> b!4278971 m!4875985))

(declare-fun m!4875987 () Bool)

(assert (=> b!4278971 m!4875987))

(declare-fun m!4875989 () Bool)

(assert (=> b!4278970 m!4875989))

(assert (=> b!4278797 d!1263667))

(assert (=> b!4278895 d!1263667))

(declare-fun d!1263669 () Bool)

(assert (=> d!1263669 (= (++!12103 (++!12103 lt!1514313 lt!1514311) (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259)) (++!12103 lt!1514313 (++!12103 lt!1514311 (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259))))))

(declare-fun lt!1514332 () Unit!66313)

(assert (=> d!1263669 (= lt!1514332 (choose!26088 lt!1514313 lt!1514311 (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259)))))

(assert (=> d!1263669 (= (lemmaConcatAssociativity!2734 lt!1514313 lt!1514311 (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259)) lt!1514332)))

(declare-fun bs!602635 () Bool)

(assert (= bs!602635 d!1263669))

(assert (=> bs!602635 m!4875837))

(assert (=> bs!602635 m!4875151))

(assert (=> bs!602635 m!4875839))

(declare-fun m!4875991 () Bool)

(assert (=> bs!602635 m!4875991))

(declare-fun m!4875993 () Bool)

(assert (=> bs!602635 m!4875993))

(assert (=> bs!602635 m!4875837))

(assert (=> bs!602635 m!4875151))

(declare-fun m!4875995 () Bool)

(assert (=> bs!602635 m!4875995))

(assert (=> bs!602635 m!4875151))

(assert (=> bs!602635 m!4875991))

(assert (=> b!4278895 d!1263669))

(declare-fun e!2656476 () List!47481)

(declare-fun b!4278973 () Bool)

(assert (=> b!4278973 (= e!2656476 (Cons!47357 (h!52777 (++!12103 lt!1514313 lt!1514311)) (++!12103 (t!354054 (++!12103 lt!1514313 lt!1514311)) (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259))))))

(declare-fun b!4278972 () Bool)

(assert (=> b!4278972 (= e!2656476 (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259))))

(declare-fun d!1263671 () Bool)

(declare-fun e!2656477 () Bool)

(assert (=> d!1263671 e!2656477))

(declare-fun res!1756669 () Bool)

(assert (=> d!1263671 (=> (not res!1756669) (not e!2656477))))

(declare-fun lt!1514333 () List!47481)

(assert (=> d!1263671 (= res!1756669 (= (content!7491 lt!1514333) ((_ map or) (content!7491 (++!12103 lt!1514313 lt!1514311)) (content!7491 (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259)))))))

(assert (=> d!1263671 (= lt!1514333 e!2656476)))

(declare-fun c!728962 () Bool)

(assert (=> d!1263671 (= c!728962 ((_ is Nil!47357) (++!12103 lt!1514313 lt!1514311)))))

(assert (=> d!1263671 (= (++!12103 (++!12103 lt!1514313 lt!1514311) (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259)) lt!1514333)))

(declare-fun b!4278974 () Bool)

(declare-fun res!1756668 () Bool)

(assert (=> b!4278974 (=> (not res!1756668) (not e!2656477))))

(assert (=> b!4278974 (= res!1756668 (= (size!34668 lt!1514333) (+ (size!34668 (++!12103 lt!1514313 lt!1514311)) (size!34668 (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259)))))))

(declare-fun b!4278975 () Bool)

(assert (=> b!4278975 (= e!2656477 (or (not (= (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259) Nil!47357)) (= lt!1514333 (++!12103 lt!1514313 lt!1514311))))))

(assert (= (and d!1263671 c!728962) b!4278972))

(assert (= (and d!1263671 (not c!728962)) b!4278973))

(assert (= (and d!1263671 res!1756669) b!4278974))

(assert (= (and b!4278974 res!1756668) b!4278975))

(assert (=> b!4278973 m!4875151))

(declare-fun m!4875997 () Bool)

(assert (=> b!4278973 m!4875997))

(declare-fun m!4875999 () Bool)

(assert (=> d!1263671 m!4875999))

(assert (=> d!1263671 m!4875837))

(declare-fun m!4876001 () Bool)

(assert (=> d!1263671 m!4876001))

(assert (=> d!1263671 m!4875151))

(declare-fun m!4876003 () Bool)

(assert (=> d!1263671 m!4876003))

(declare-fun m!4876005 () Bool)

(assert (=> b!4278974 m!4876005))

(assert (=> b!4278974 m!4875837))

(declare-fun m!4876007 () Bool)

(assert (=> b!4278974 m!4876007))

(assert (=> b!4278974 m!4875151))

(declare-fun m!4876009 () Bool)

(assert (=> b!4278974 m!4876009))

(assert (=> b!4278895 d!1263671))

(assert (=> b!4278895 d!1263665))

(declare-fun b!4278977 () Bool)

(declare-fun e!2656478 () List!47481)

(assert (=> b!4278977 (= e!2656478 (Cons!47357 (h!52777 lt!1514313) (++!12103 (t!354054 lt!1514313) lt!1514311)))))

(declare-fun b!4278976 () Bool)

(assert (=> b!4278976 (= e!2656478 lt!1514311)))

(declare-fun d!1263673 () Bool)

(declare-fun e!2656479 () Bool)

(assert (=> d!1263673 e!2656479))

(declare-fun res!1756671 () Bool)

(assert (=> d!1263673 (=> (not res!1756671) (not e!2656479))))

(declare-fun lt!1514334 () List!47481)

(assert (=> d!1263673 (= res!1756671 (= (content!7491 lt!1514334) ((_ map or) (content!7491 lt!1514313) (content!7491 lt!1514311))))))

(assert (=> d!1263673 (= lt!1514334 e!2656478)))

(declare-fun c!728963 () Bool)

(assert (=> d!1263673 (= c!728963 ((_ is Nil!47357) lt!1514313))))

(assert (=> d!1263673 (= (++!12103 lt!1514313 lt!1514311) lt!1514334)))

(declare-fun b!4278978 () Bool)

(declare-fun res!1756670 () Bool)

(assert (=> b!4278978 (=> (not res!1756670) (not e!2656479))))

(assert (=> b!4278978 (= res!1756670 (= (size!34668 lt!1514334) (+ (size!34668 lt!1514313) (size!34668 lt!1514311))))))

(declare-fun b!4278979 () Bool)

(assert (=> b!4278979 (= e!2656479 (or (not (= lt!1514311 Nil!47357)) (= lt!1514334 lt!1514313)))))

(assert (= (and d!1263673 c!728963) b!4278976))

(assert (= (and d!1263673 (not c!728963)) b!4278977))

(assert (= (and d!1263673 res!1756671) b!4278978))

(assert (= (and b!4278978 res!1756670) b!4278979))

(declare-fun m!4876011 () Bool)

(assert (=> b!4278977 m!4876011))

(declare-fun m!4876013 () Bool)

(assert (=> d!1263673 m!4876013))

(declare-fun m!4876015 () Bool)

(assert (=> d!1263673 m!4876015))

(declare-fun m!4876017 () Bool)

(assert (=> d!1263673 m!4876017))

(declare-fun m!4876019 () Bool)

(assert (=> b!4278978 m!4876019))

(declare-fun m!4876021 () Bool)

(assert (=> b!4278978 m!4876021))

(declare-fun m!4876023 () Bool)

(assert (=> b!4278978 m!4876023))

(assert (=> b!4278895 d!1263673))

(declare-fun b!4278981 () Bool)

(declare-fun e!2656480 () List!47481)

(assert (=> b!4278981 (= e!2656480 (Cons!47357 (h!52777 lt!1514313) (++!12103 (t!354054 lt!1514313) call!294278)))))

(declare-fun b!4278980 () Bool)

(assert (=> b!4278980 (= e!2656480 call!294278)))

(declare-fun d!1263675 () Bool)

(declare-fun e!2656481 () Bool)

(assert (=> d!1263675 e!2656481))

(declare-fun res!1756673 () Bool)

(assert (=> d!1263675 (=> (not res!1756673) (not e!2656481))))

(declare-fun lt!1514335 () List!47481)

(assert (=> d!1263675 (= res!1756673 (= (content!7491 lt!1514335) ((_ map or) (content!7491 lt!1514313) (content!7491 call!294278))))))

(assert (=> d!1263675 (= lt!1514335 e!2656480)))

(declare-fun c!728964 () Bool)

(assert (=> d!1263675 (= c!728964 ((_ is Nil!47357) lt!1514313))))

(assert (=> d!1263675 (= (++!12103 lt!1514313 call!294278) lt!1514335)))

(declare-fun b!4278982 () Bool)

(declare-fun res!1756672 () Bool)

(assert (=> b!4278982 (=> (not res!1756672) (not e!2656481))))

(assert (=> b!4278982 (= res!1756672 (= (size!34668 lt!1514335) (+ (size!34668 lt!1514313) (size!34668 call!294278))))))

(declare-fun b!4278983 () Bool)

(assert (=> b!4278983 (= e!2656481 (or (not (= call!294278 Nil!47357)) (= lt!1514335 lt!1514313)))))

(assert (= (and d!1263675 c!728964) b!4278980))

(assert (= (and d!1263675 (not c!728964)) b!4278981))

(assert (= (and d!1263675 res!1756673) b!4278982))

(assert (= (and b!4278982 res!1756672) b!4278983))

(declare-fun m!4876025 () Bool)

(assert (=> b!4278981 m!4876025))

(declare-fun m!4876027 () Bool)

(assert (=> d!1263675 m!4876027))

(assert (=> d!1263675 m!4876015))

(declare-fun m!4876029 () Bool)

(assert (=> d!1263675 m!4876029))

(declare-fun m!4876031 () Bool)

(assert (=> b!4278982 m!4876031))

(assert (=> b!4278982 m!4876021))

(declare-fun m!4876033 () Bool)

(assert (=> b!4278982 m!4876033))

(assert (=> b!4278895 d!1263675))

(declare-fun b!4278984 () Bool)

(declare-fun e!2656482 () List!47481)

(declare-fun call!294280 () List!47481)

(assert (=> b!4278984 (= e!2656482 call!294280)))

(declare-fun b!4278985 () Bool)

(declare-fun e!2656484 () List!47481)

(declare-fun lt!1514338 () List!47481)

(assert (=> b!4278985 (= e!2656484 lt!1514338)))

(declare-fun bm!294275 () Bool)

(declare-fun c!728967 () Bool)

(declare-fun c!728965 () Bool)

(assert (=> bm!294275 (= c!728967 c!728965)))

(assert (=> bm!294275 (= call!294280 (++!12103 e!2656484 (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259)))))

(declare-fun d!1263677 () Bool)

(declare-fun lt!1514337 () List!47481)

(assert (=> d!1263677 (= lt!1514337 (++!12103 (list!17275 (right!35621 (left!35291 (right!35621 t!3602)))) (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259)))))

(declare-fun e!2656483 () List!47481)

(assert (=> d!1263677 (= lt!1514337 e!2656483)))

(declare-fun c!728966 () Bool)

(assert (=> d!1263677 (= c!728966 ((_ is Empty!14339) (right!35621 (left!35291 (right!35621 t!3602)))))))

(assert (=> d!1263677 (= (efficientList!602 (right!35621 (left!35291 (right!35621 t!3602))) (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259)) lt!1514337)))

(declare-fun b!4278986 () Bool)

(assert (=> b!4278986 (= e!2656484 (efficientList!603 (xs!17645 (right!35621 (left!35291 (right!35621 t!3602))))))))

(declare-fun b!4278987 () Bool)

(assert (=> b!4278987 (= e!2656483 e!2656482)))

(assert (=> b!4278987 (= c!728965 ((_ is Leaf!22164) (right!35621 (left!35291 (right!35621 t!3602)))))))

(declare-fun b!4278988 () Bool)

(declare-fun lt!1514336 () Unit!66313)

(declare-fun lt!1514339 () Unit!66313)

(assert (=> b!4278988 (= lt!1514336 lt!1514339)))

(declare-fun lt!1514340 () List!47481)

(assert (=> b!4278988 (= (++!12103 (++!12103 lt!1514340 lt!1514338) (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259)) (++!12103 lt!1514340 call!294280))))

(assert (=> b!4278988 (= lt!1514339 (lemmaConcatAssociativity!2734 lt!1514340 lt!1514338 (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259)))))

(assert (=> b!4278988 (= lt!1514338 (list!17275 (right!35621 (right!35621 (left!35291 (right!35621 t!3602))))))))

(assert (=> b!4278988 (= lt!1514340 (list!17275 (left!35291 (right!35621 (left!35291 (right!35621 t!3602))))))))

(assert (=> b!4278988 (= e!2656482 (efficientList!602 (left!35291 (right!35621 (left!35291 (right!35621 t!3602)))) (efficientList!602 (right!35621 (right!35621 (left!35291 (right!35621 t!3602)))) (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259))))))

(declare-fun b!4278989 () Bool)

(assert (=> b!4278989 (= e!2656483 (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259))))

(assert (= (and d!1263677 c!728966) b!4278989))

(assert (= (and d!1263677 (not c!728966)) b!4278987))

(assert (= (and b!4278987 c!728965) b!4278984))

(assert (= (and b!4278987 (not c!728965)) b!4278988))

(assert (= (or b!4278984 b!4278988) bm!294275))

(assert (= (and bm!294275 c!728967) b!4278986))

(assert (= (and bm!294275 (not c!728967)) b!4278985))

(assert (=> bm!294275 m!4875151))

(declare-fun m!4876035 () Bool)

(assert (=> bm!294275 m!4876035))

(assert (=> d!1263677 m!4875627))

(assert (=> d!1263677 m!4875627))

(assert (=> d!1263677 m!4875151))

(declare-fun m!4876037 () Bool)

(assert (=> d!1263677 m!4876037))

(declare-fun m!4876039 () Bool)

(assert (=> b!4278986 m!4876039))

(assert (=> b!4278988 m!4875151))

(declare-fun m!4876041 () Bool)

(assert (=> b!4278988 m!4876041))

(assert (=> b!4278988 m!4875985))

(declare-fun m!4876043 () Bool)

(assert (=> b!4278988 m!4876043))

(declare-fun m!4876045 () Bool)

(assert (=> b!4278988 m!4876045))

(assert (=> b!4278988 m!4876045))

(assert (=> b!4278988 m!4875151))

(declare-fun m!4876047 () Bool)

(assert (=> b!4278988 m!4876047))

(assert (=> b!4278988 m!4875983))

(assert (=> b!4278988 m!4876041))

(declare-fun m!4876049 () Bool)

(assert (=> b!4278988 m!4876049))

(assert (=> b!4278988 m!4875151))

(declare-fun m!4876051 () Bool)

(assert (=> b!4278988 m!4876051))

(assert (=> b!4278895 d!1263677))

(declare-fun b!4278990 () Bool)

(declare-fun e!2656485 () List!47481)

(declare-fun call!294281 () List!47481)

(assert (=> b!4278990 (= e!2656485 call!294281)))

(declare-fun b!4278991 () Bool)

(declare-fun e!2656487 () List!47481)

(declare-fun lt!1514343 () List!47481)

(assert (=> b!4278991 (= e!2656487 lt!1514343)))

(declare-fun bm!294276 () Bool)

(declare-fun c!728970 () Bool)

(declare-fun c!728968 () Bool)

(assert (=> bm!294276 (= c!728970 c!728968)))

(assert (=> bm!294276 (= call!294281 (++!12103 e!2656487 (efficientList!602 (right!35621 (left!35291 (right!35621 t!3602))) (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259))))))

(declare-fun d!1263679 () Bool)

(declare-fun lt!1514342 () List!47481)

(assert (=> d!1263679 (= lt!1514342 (++!12103 (list!17275 (left!35291 (left!35291 (right!35621 t!3602)))) (efficientList!602 (right!35621 (left!35291 (right!35621 t!3602))) (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259))))))

(declare-fun e!2656486 () List!47481)

(assert (=> d!1263679 (= lt!1514342 e!2656486)))

(declare-fun c!728969 () Bool)

(assert (=> d!1263679 (= c!728969 ((_ is Empty!14339) (left!35291 (left!35291 (right!35621 t!3602)))))))

(assert (=> d!1263679 (= (efficientList!602 (left!35291 (left!35291 (right!35621 t!3602))) (efficientList!602 (right!35621 (left!35291 (right!35621 t!3602))) (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259))) lt!1514342)))

(declare-fun b!4278992 () Bool)

(assert (=> b!4278992 (= e!2656487 (efficientList!603 (xs!17645 (left!35291 (left!35291 (right!35621 t!3602))))))))

(declare-fun b!4278993 () Bool)

(assert (=> b!4278993 (= e!2656486 e!2656485)))

(assert (=> b!4278993 (= c!728968 ((_ is Leaf!22164) (left!35291 (left!35291 (right!35621 t!3602)))))))

(declare-fun b!4278994 () Bool)

(declare-fun lt!1514341 () Unit!66313)

(declare-fun lt!1514344 () Unit!66313)

(assert (=> b!4278994 (= lt!1514341 lt!1514344)))

(declare-fun lt!1514345 () List!47481)

(assert (=> b!4278994 (= (++!12103 (++!12103 lt!1514345 lt!1514343) (efficientList!602 (right!35621 (left!35291 (right!35621 t!3602))) (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259))) (++!12103 lt!1514345 call!294281))))

(assert (=> b!4278994 (= lt!1514344 (lemmaConcatAssociativity!2734 lt!1514345 lt!1514343 (efficientList!602 (right!35621 (left!35291 (right!35621 t!3602))) (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259))))))

(assert (=> b!4278994 (= lt!1514343 (list!17275 (right!35621 (left!35291 (left!35291 (right!35621 t!3602))))))))

(assert (=> b!4278994 (= lt!1514345 (list!17275 (left!35291 (left!35291 (left!35291 (right!35621 t!3602))))))))

(assert (=> b!4278994 (= e!2656485 (efficientList!602 (left!35291 (left!35291 (left!35291 (right!35621 t!3602)))) (efficientList!602 (right!35621 (left!35291 (left!35291 (right!35621 t!3602)))) (efficientList!602 (right!35621 (left!35291 (right!35621 t!3602))) (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259)))))))

(declare-fun b!4278995 () Bool)

(assert (=> b!4278995 (= e!2656486 (efficientList!602 (right!35621 (left!35291 (right!35621 t!3602))) (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259)))))

(assert (= (and d!1263679 c!728969) b!4278995))

(assert (= (and d!1263679 (not c!728969)) b!4278993))

(assert (= (and b!4278993 c!728968) b!4278990))

(assert (= (and b!4278993 (not c!728968)) b!4278994))

(assert (= (or b!4278990 b!4278994) bm!294276))

(assert (= (and bm!294276 c!728970) b!4278992))

(assert (= (and bm!294276 (not c!728970)) b!4278991))

(assert (=> bm!294276 m!4875833))

(declare-fun m!4876053 () Bool)

(assert (=> bm!294276 m!4876053))

(assert (=> d!1263679 m!4875625))

(assert (=> d!1263679 m!4875625))

(assert (=> d!1263679 m!4875833))

(declare-fun m!4876055 () Bool)

(assert (=> d!1263679 m!4876055))

(declare-fun m!4876057 () Bool)

(assert (=> b!4278992 m!4876057))

(assert (=> b!4278994 m!4875833))

(declare-fun m!4876059 () Bool)

(assert (=> b!4278994 m!4876059))

(assert (=> b!4278994 m!4875977))

(declare-fun m!4876061 () Bool)

(assert (=> b!4278994 m!4876061))

(declare-fun m!4876063 () Bool)

(assert (=> b!4278994 m!4876063))

(assert (=> b!4278994 m!4876063))

(assert (=> b!4278994 m!4875833))

(declare-fun m!4876065 () Bool)

(assert (=> b!4278994 m!4876065))

(assert (=> b!4278994 m!4875975))

(assert (=> b!4278994 m!4876059))

(declare-fun m!4876067 () Bool)

(assert (=> b!4278994 m!4876067))

(assert (=> b!4278994 m!4875833))

(declare-fun m!4876069 () Bool)

(assert (=> b!4278994 m!4876069))

(assert (=> b!4278895 d!1263679))

(declare-fun b!4278997 () Bool)

(declare-fun e!2656488 () List!47481)

(assert (=> b!4278997 (= e!2656488 (Cons!47357 (h!52777 (list!17275 (right!35621 (right!35621 t!3602)))) (++!12103 (t!354054 (list!17275 (right!35621 (right!35621 t!3602)))) acc!259)))))

(declare-fun b!4278996 () Bool)

(assert (=> b!4278996 (= e!2656488 acc!259)))

(declare-fun d!1263681 () Bool)

(declare-fun e!2656489 () Bool)

(assert (=> d!1263681 e!2656489))

(declare-fun res!1756675 () Bool)

(assert (=> d!1263681 (=> (not res!1756675) (not e!2656489))))

(declare-fun lt!1514346 () List!47481)

(assert (=> d!1263681 (= res!1756675 (= (content!7491 lt!1514346) ((_ map or) (content!7491 (list!17275 (right!35621 (right!35621 t!3602)))) (content!7491 acc!259))))))

(assert (=> d!1263681 (= lt!1514346 e!2656488)))

(declare-fun c!728971 () Bool)

(assert (=> d!1263681 (= c!728971 ((_ is Nil!47357) (list!17275 (right!35621 (right!35621 t!3602)))))))

(assert (=> d!1263681 (= (++!12103 (list!17275 (right!35621 (right!35621 t!3602))) acc!259) lt!1514346)))

(declare-fun b!4278998 () Bool)

(declare-fun res!1756674 () Bool)

(assert (=> b!4278998 (=> (not res!1756674) (not e!2656489))))

(assert (=> b!4278998 (= res!1756674 (= (size!34668 lt!1514346) (+ (size!34668 (list!17275 (right!35621 (right!35621 t!3602)))) (size!34668 acc!259))))))

(declare-fun b!4278999 () Bool)

(assert (=> b!4278999 (= e!2656489 (or (not (= acc!259 Nil!47357)) (= lt!1514346 (list!17275 (right!35621 (right!35621 t!3602))))))))

(assert (= (and d!1263681 c!728971) b!4278996))

(assert (= (and d!1263681 (not c!728971)) b!4278997))

(assert (= (and d!1263681 res!1756675) b!4278998))

(assert (= (and b!4278998 res!1756674) b!4278999))

(declare-fun m!4876071 () Bool)

(assert (=> b!4278997 m!4876071))

(declare-fun m!4876073 () Bool)

(assert (=> d!1263681 m!4876073))

(assert (=> d!1263681 m!4875153))

(assert (=> d!1263681 m!4875617))

(assert (=> d!1263681 m!4875111))

(declare-fun m!4876075 () Bool)

(assert (=> b!4278998 m!4876075))

(assert (=> b!4278998 m!4875153))

(assert (=> b!4278998 m!4875623))

(assert (=> b!4278998 m!4875117))

(assert (=> d!1263617 d!1263681))

(assert (=> d!1263617 d!1263553))

(declare-fun d!1263683 () Bool)

(declare-fun c!728972 () Bool)

(assert (=> d!1263683 (= c!728972 ((_ is Node!14339) (left!35291 (left!35291 (right!35621 t!3602)))))))

(declare-fun e!2656490 () Bool)

(assert (=> d!1263683 (= (inv!62719 (left!35291 (left!35291 (right!35621 t!3602)))) e!2656490)))

(declare-fun b!4279000 () Bool)

(assert (=> b!4279000 (= e!2656490 (inv!62723 (left!35291 (left!35291 (right!35621 t!3602)))))))

(declare-fun b!4279001 () Bool)

(declare-fun e!2656491 () Bool)

(assert (=> b!4279001 (= e!2656490 e!2656491)))

(declare-fun res!1756676 () Bool)

(assert (=> b!4279001 (= res!1756676 (not ((_ is Leaf!22164) (left!35291 (left!35291 (right!35621 t!3602))))))))

(assert (=> b!4279001 (=> res!1756676 e!2656491)))

(declare-fun b!4279002 () Bool)

(assert (=> b!4279002 (= e!2656491 (inv!62724 (left!35291 (left!35291 (right!35621 t!3602)))))))

(assert (= (and d!1263683 c!728972) b!4279000))

(assert (= (and d!1263683 (not c!728972)) b!4279001))

(assert (= (and b!4279001 (not res!1756676)) b!4279002))

(declare-fun m!4876077 () Bool)

(assert (=> b!4279000 m!4876077))

(declare-fun m!4876079 () Bool)

(assert (=> b!4279002 m!4876079))

(assert (=> b!4278917 d!1263683))

(declare-fun d!1263685 () Bool)

(declare-fun c!728973 () Bool)

(assert (=> d!1263685 (= c!728973 ((_ is Node!14339) (right!35621 (left!35291 (right!35621 t!3602)))))))

(declare-fun e!2656492 () Bool)

(assert (=> d!1263685 (= (inv!62719 (right!35621 (left!35291 (right!35621 t!3602)))) e!2656492)))

(declare-fun b!4279003 () Bool)

(assert (=> b!4279003 (= e!2656492 (inv!62723 (right!35621 (left!35291 (right!35621 t!3602)))))))

(declare-fun b!4279004 () Bool)

(declare-fun e!2656493 () Bool)

(assert (=> b!4279004 (= e!2656492 e!2656493)))

(declare-fun res!1756677 () Bool)

(assert (=> b!4279004 (= res!1756677 (not ((_ is Leaf!22164) (right!35621 (left!35291 (right!35621 t!3602))))))))

(assert (=> b!4279004 (=> res!1756677 e!2656493)))

(declare-fun b!4279005 () Bool)

(assert (=> b!4279005 (= e!2656493 (inv!62724 (right!35621 (left!35291 (right!35621 t!3602)))))))

(assert (= (and d!1263685 c!728973) b!4279003))

(assert (= (and d!1263685 (not c!728973)) b!4279004))

(assert (= (and b!4279004 (not res!1756677)) b!4279005))

(declare-fun m!4876081 () Bool)

(assert (=> b!4279003 m!4876081))

(declare-fun m!4876083 () Bool)

(assert (=> b!4279005 m!4876083))

(assert (=> b!4278917 d!1263685))

(declare-fun d!1263687 () Bool)

(declare-fun c!728974 () Bool)

(assert (=> d!1263687 (= c!728974 ((_ is Nil!47357) lt!1514300))))

(declare-fun e!2656494 () (InoxSet T!79990))

(assert (=> d!1263687 (= (content!7491 lt!1514300) e!2656494)))

(declare-fun b!4279006 () Bool)

(assert (=> b!4279006 (= e!2656494 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4279007 () Bool)

(assert (=> b!4279007 (= e!2656494 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 lt!1514300) true) (content!7491 (t!354054 lt!1514300))))))

(assert (= (and d!1263687 c!728974) b!4279006))

(assert (= (and d!1263687 (not c!728974)) b!4279007))

(declare-fun m!4876085 () Bool)

(assert (=> b!4279007 m!4876085))

(declare-fun m!4876087 () Bool)

(assert (=> b!4279007 m!4876087))

(assert (=> d!1263577 d!1263687))

(declare-fun d!1263689 () Bool)

(declare-fun c!728975 () Bool)

(assert (=> d!1263689 (= c!728975 ((_ is Nil!47357) (t!354054 lt!1514194)))))

(declare-fun e!2656495 () (InoxSet T!79990))

(assert (=> d!1263689 (= (content!7491 (t!354054 lt!1514194)) e!2656495)))

(declare-fun b!4279008 () Bool)

(assert (=> b!4279008 (= e!2656495 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4279009 () Bool)

(assert (=> b!4279009 (= e!2656495 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 (t!354054 lt!1514194)) true) (content!7491 (t!354054 (t!354054 lt!1514194)))))))

(assert (= (and d!1263689 c!728975) b!4279008))

(assert (= (and d!1263689 (not c!728975)) b!4279009))

(declare-fun m!4876089 () Bool)

(assert (=> b!4279009 m!4876089))

(declare-fun m!4876091 () Bool)

(assert (=> b!4279009 m!4876091))

(assert (=> d!1263577 d!1263689))

(assert (=> d!1263577 d!1263429))

(declare-fun d!1263691 () Bool)

(declare-fun lt!1514347 () Int)

(assert (=> d!1263691 (>= lt!1514347 0)))

(declare-fun e!2656496 () Int)

(assert (=> d!1263691 (= lt!1514347 e!2656496)))

(declare-fun c!728976 () Bool)

(assert (=> d!1263691 (= c!728976 ((_ is Nil!47357) lt!1514306))))

(assert (=> d!1263691 (= (size!34668 lt!1514306) lt!1514347)))

(declare-fun b!4279010 () Bool)

(assert (=> b!4279010 (= e!2656496 0)))

(declare-fun b!4279011 () Bool)

(assert (=> b!4279011 (= e!2656496 (+ 1 (size!34668 (t!354054 lt!1514306))))))

(assert (= (and d!1263691 c!728976) b!4279010))

(assert (= (and d!1263691 (not c!728976)) b!4279011))

(declare-fun m!4876093 () Bool)

(assert (=> b!4279011 m!4876093))

(assert (=> b!4278885 d!1263691))

(declare-fun d!1263693 () Bool)

(declare-fun lt!1514348 () Int)

(assert (=> d!1263693 (>= lt!1514348 0)))

(declare-fun e!2656497 () Int)

(assert (=> d!1263693 (= lt!1514348 e!2656497)))

(declare-fun c!728977 () Bool)

(assert (=> d!1263693 (= c!728977 ((_ is Nil!47357) lt!1514232))))

(assert (=> d!1263693 (= (size!34668 lt!1514232) lt!1514348)))

(declare-fun b!4279012 () Bool)

(assert (=> b!4279012 (= e!2656497 0)))

(declare-fun b!4279013 () Bool)

(assert (=> b!4279013 (= e!2656497 (+ 1 (size!34668 (t!354054 lt!1514232))))))

(assert (= (and d!1263693 c!728977) b!4279012))

(assert (= (and d!1263693 (not c!728977)) b!4279013))

(declare-fun m!4876095 () Bool)

(assert (=> b!4279013 m!4876095))

(assert (=> b!4278885 d!1263693))

(declare-fun d!1263695 () Bool)

(declare-fun lt!1514349 () Int)

(assert (=> d!1263695 (>= lt!1514349 0)))

(declare-fun e!2656498 () Int)

(assert (=> d!1263695 (= lt!1514349 e!2656498)))

(declare-fun c!728978 () Bool)

(assert (=> d!1263695 (= c!728978 ((_ is Nil!47357) call!294274))))

(assert (=> d!1263695 (= (size!34668 call!294274) lt!1514349)))

(declare-fun b!4279014 () Bool)

(assert (=> b!4279014 (= e!2656498 0)))

(declare-fun b!4279015 () Bool)

(assert (=> b!4279015 (= e!2656498 (+ 1 (size!34668 (t!354054 call!294274))))))

(assert (= (and d!1263695 c!728978) b!4279014))

(assert (= (and d!1263695 (not c!728978)) b!4279015))

(declare-fun m!4876097 () Bool)

(assert (=> b!4279015 m!4876097))

(assert (=> b!4278885 d!1263695))

(declare-fun e!2656499 () List!47481)

(declare-fun b!4279017 () Bool)

(assert (=> b!4279017 (= e!2656499 (Cons!47357 (h!52777 (t!354054 (++!12103 lt!1514232 lt!1514230))) (++!12103 (t!354054 (t!354054 (++!12103 lt!1514232 lt!1514230))) acc!259)))))

(declare-fun b!4279016 () Bool)

(assert (=> b!4279016 (= e!2656499 acc!259)))

(declare-fun d!1263697 () Bool)

(declare-fun e!2656500 () Bool)

(assert (=> d!1263697 e!2656500))

(declare-fun res!1756679 () Bool)

(assert (=> d!1263697 (=> (not res!1756679) (not e!2656500))))

(declare-fun lt!1514350 () List!47481)

(assert (=> d!1263697 (= res!1756679 (= (content!7491 lt!1514350) ((_ map or) (content!7491 (t!354054 (++!12103 lt!1514232 lt!1514230))) (content!7491 acc!259))))))

(assert (=> d!1263697 (= lt!1514350 e!2656499)))

(declare-fun c!728979 () Bool)

(assert (=> d!1263697 (= c!728979 ((_ is Nil!47357) (t!354054 (++!12103 lt!1514232 lt!1514230))))))

(assert (=> d!1263697 (= (++!12103 (t!354054 (++!12103 lt!1514232 lt!1514230)) acc!259) lt!1514350)))

(declare-fun b!4279018 () Bool)

(declare-fun res!1756678 () Bool)

(assert (=> b!4279018 (=> (not res!1756678) (not e!2656500))))

(assert (=> b!4279018 (= res!1756678 (= (size!34668 lt!1514350) (+ (size!34668 (t!354054 (++!12103 lt!1514232 lt!1514230))) (size!34668 acc!259))))))

(declare-fun b!4279019 () Bool)

(assert (=> b!4279019 (= e!2656500 (or (not (= acc!259 Nil!47357)) (= lt!1514350 (t!354054 (++!12103 lt!1514232 lt!1514230)))))))

(assert (= (and d!1263697 c!728979) b!4279016))

(assert (= (and d!1263697 (not c!728979)) b!4279017))

(assert (= (and d!1263697 res!1756679) b!4279018))

(assert (= (and b!4279018 res!1756678) b!4279019))

(declare-fun m!4876099 () Bool)

(assert (=> b!4279017 m!4876099))

(declare-fun m!4876101 () Bool)

(assert (=> d!1263697 m!4876101))

(assert (=> d!1263697 m!4875953))

(assert (=> d!1263697 m!4875111))

(declare-fun m!4876103 () Bool)

(assert (=> b!4279018 m!4876103))

(declare-fun m!4876105 () Bool)

(assert (=> b!4279018 m!4876105))

(assert (=> b!4279018 m!4875117))

(assert (=> b!4278888 d!1263697))

(declare-fun d!1263699 () Bool)

(declare-fun lt!1514351 () Int)

(assert (=> d!1263699 (>= lt!1514351 0)))

(declare-fun e!2656501 () Int)

(assert (=> d!1263699 (= lt!1514351 e!2656501)))

(declare-fun c!728980 () Bool)

(assert (=> d!1263699 (= c!728980 ((_ is Nil!47357) (t!354054 lt!1514233)))))

(assert (=> d!1263699 (= (size!34668 (t!354054 lt!1514233)) lt!1514351)))

(declare-fun b!4279020 () Bool)

(assert (=> b!4279020 (= e!2656501 0)))

(declare-fun b!4279021 () Bool)

(assert (=> b!4279021 (= e!2656501 (+ 1 (size!34668 (t!354054 (t!354054 lt!1514233)))))))

(assert (= (and d!1263699 c!728980) b!4279020))

(assert (= (and d!1263699 (not c!728980)) b!4279021))

(declare-fun m!4876107 () Bool)

(assert (=> b!4279021 m!4876107))

(assert (=> b!4278843 d!1263699))

(declare-fun d!1263701 () Bool)

(declare-fun lt!1514352 () Int)

(assert (=> d!1263701 (>= lt!1514352 0)))

(declare-fun e!2656502 () Int)

(assert (=> d!1263701 (= lt!1514352 e!2656502)))

(declare-fun c!728981 () Bool)

(assert (=> d!1263701 (= c!728981 ((_ is Nil!47357) lt!1514304))))

(assert (=> d!1263701 (= (size!34668 lt!1514304) lt!1514352)))

(declare-fun b!4279022 () Bool)

(assert (=> b!4279022 (= e!2656502 0)))

(declare-fun b!4279023 () Bool)

(assert (=> b!4279023 (= e!2656502 (+ 1 (size!34668 (t!354054 lt!1514304))))))

(assert (= (and d!1263701 c!728981) b!4279022))

(assert (= (and d!1263701 (not c!728981)) b!4279023))

(declare-fun m!4876109 () Bool)

(assert (=> b!4279023 m!4876109))

(assert (=> b!4278855 d!1263701))

(declare-fun d!1263703 () Bool)

(declare-fun lt!1514353 () Int)

(assert (=> d!1263703 (>= lt!1514353 0)))

(declare-fun e!2656503 () Int)

(assert (=> d!1263703 (= lt!1514353 e!2656503)))

(declare-fun c!728982 () Bool)

(assert (=> d!1263703 (= c!728982 ((_ is Nil!47357) (list!17275 (left!35291 (left!35291 t!3602)))))))

(assert (=> d!1263703 (= (size!34668 (list!17275 (left!35291 (left!35291 t!3602)))) lt!1514353)))

(declare-fun b!4279024 () Bool)

(assert (=> b!4279024 (= e!2656503 0)))

(declare-fun b!4279025 () Bool)

(assert (=> b!4279025 (= e!2656503 (+ 1 (size!34668 (t!354054 (list!17275 (left!35291 (left!35291 t!3602)))))))))

(assert (= (and d!1263703 c!728982) b!4279024))

(assert (= (and d!1263703 (not c!728982)) b!4279025))

(declare-fun m!4876111 () Bool)

(assert (=> b!4279025 m!4876111))

(assert (=> b!4278855 d!1263703))

(declare-fun d!1263705 () Bool)

(declare-fun lt!1514354 () Int)

(assert (=> d!1263705 (>= lt!1514354 0)))

(declare-fun e!2656504 () Int)

(assert (=> d!1263705 (= lt!1514354 e!2656504)))

(declare-fun c!728983 () Bool)

(assert (=> d!1263705 (= c!728983 ((_ is Nil!47357) (list!17275 (right!35621 (left!35291 t!3602)))))))

(assert (=> d!1263705 (= (size!34668 (list!17275 (right!35621 (left!35291 t!3602)))) lt!1514354)))

(declare-fun b!4279026 () Bool)

(assert (=> b!4279026 (= e!2656504 0)))

(declare-fun b!4279027 () Bool)

(assert (=> b!4279027 (= e!2656504 (+ 1 (size!34668 (t!354054 (list!17275 (right!35621 (left!35291 t!3602)))))))))

(assert (= (and d!1263705 c!728983) b!4279026))

(assert (= (and d!1263705 (not c!728983)) b!4279027))

(declare-fun m!4876113 () Bool)

(assert (=> b!4279027 m!4876113))

(assert (=> b!4278855 d!1263705))

(declare-fun d!1263707 () Bool)

(declare-fun c!728984 () Bool)

(assert (=> d!1263707 (= c!728984 ((_ is Nil!47357) (t!354054 lt!1514239)))))

(declare-fun e!2656505 () (InoxSet T!79990))

(assert (=> d!1263707 (= (content!7491 (t!354054 lt!1514239)) e!2656505)))

(declare-fun b!4279028 () Bool)

(assert (=> b!4279028 (= e!2656505 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4279029 () Bool)

(assert (=> b!4279029 (= e!2656505 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 (t!354054 lt!1514239)) true) (content!7491 (t!354054 (t!354054 lt!1514239)))))))

(assert (= (and d!1263707 c!728984) b!4279028))

(assert (= (and d!1263707 (not c!728984)) b!4279029))

(declare-fun m!4876115 () Bool)

(assert (=> b!4279029 m!4876115))

(declare-fun m!4876117 () Bool)

(assert (=> b!4279029 m!4876117))

(assert (=> b!4278874 d!1263707))

(declare-fun b!4279031 () Bool)

(declare-fun e!2656506 () List!47481)

(assert (=> b!4279031 (= e!2656506 (Cons!47357 (h!52777 (t!354054 (t!354054 lt!1514194))) (++!12103 (t!354054 (t!354054 (t!354054 lt!1514194))) (++!12103 lt!1514195 acc!259))))))

(declare-fun b!4279030 () Bool)

(assert (=> b!4279030 (= e!2656506 (++!12103 lt!1514195 acc!259))))

(declare-fun d!1263709 () Bool)

(declare-fun e!2656507 () Bool)

(assert (=> d!1263709 e!2656507))

(declare-fun res!1756681 () Bool)

(assert (=> d!1263709 (=> (not res!1756681) (not e!2656507))))

(declare-fun lt!1514355 () List!47481)

(assert (=> d!1263709 (= res!1756681 (= (content!7491 lt!1514355) ((_ map or) (content!7491 (t!354054 (t!354054 lt!1514194))) (content!7491 (++!12103 lt!1514195 acc!259)))))))

(assert (=> d!1263709 (= lt!1514355 e!2656506)))

(declare-fun c!728985 () Bool)

(assert (=> d!1263709 (= c!728985 ((_ is Nil!47357) (t!354054 (t!354054 lt!1514194))))))

(assert (=> d!1263709 (= (++!12103 (t!354054 (t!354054 lt!1514194)) (++!12103 lt!1514195 acc!259)) lt!1514355)))

(declare-fun b!4279032 () Bool)

(declare-fun res!1756680 () Bool)

(assert (=> b!4279032 (=> (not res!1756680) (not e!2656507))))

(assert (=> b!4279032 (= res!1756680 (= (size!34668 lt!1514355) (+ (size!34668 (t!354054 (t!354054 lt!1514194))) (size!34668 (++!12103 lt!1514195 acc!259)))))))

(declare-fun b!4279033 () Bool)

(assert (=> b!4279033 (= e!2656507 (or (not (= (++!12103 lt!1514195 acc!259) Nil!47357)) (= lt!1514355 (t!354054 (t!354054 lt!1514194)))))))

(assert (= (and d!1263709 c!728985) b!4279030))

(assert (= (and d!1263709 (not c!728985)) b!4279031))

(assert (= (and d!1263709 res!1756681) b!4279032))

(assert (= (and b!4279032 res!1756680) b!4279033))

(assert (=> b!4279031 m!4875013))

(declare-fun m!4876119 () Bool)

(assert (=> b!4279031 m!4876119))

(declare-fun m!4876121 () Bool)

(assert (=> d!1263709 m!4876121))

(assert (=> d!1263709 m!4876091))

(assert (=> d!1263709 m!4875013))

(assert (=> d!1263709 m!4875173))

(declare-fun m!4876123 () Bool)

(assert (=> b!4279032 m!4876123))

(assert (=> b!4279032 m!4875931))

(assert (=> b!4279032 m!4875013))

(assert (=> b!4279032 m!4875179))

(assert (=> b!4278831 d!1263709))

(declare-fun d!1263711 () Bool)

(declare-fun c!728986 () Bool)

(assert (=> d!1263711 (= c!728986 ((_ is Nil!47357) lt!1514290))))

(declare-fun e!2656508 () (InoxSet T!79990))

(assert (=> d!1263711 (= (content!7491 lt!1514290) e!2656508)))

(declare-fun b!4279034 () Bool)

(assert (=> b!4279034 (= e!2656508 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4279035 () Bool)

(assert (=> b!4279035 (= e!2656508 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 lt!1514290) true) (content!7491 (t!354054 lt!1514290))))))

(assert (= (and d!1263711 c!728986) b!4279034))

(assert (= (and d!1263711 (not c!728986)) b!4279035))

(declare-fun m!4876125 () Bool)

(assert (=> b!4279035 m!4876125))

(declare-fun m!4876127 () Bool)

(assert (=> b!4279035 m!4876127))

(assert (=> d!1263549 d!1263711))

(declare-fun d!1263713 () Bool)

(declare-fun c!728987 () Bool)

(assert (=> d!1263713 (= c!728987 ((_ is Nil!47357) (list!17275 (left!35291 (right!35621 t!3602)))))))

(declare-fun e!2656509 () (InoxSet T!79990))

(assert (=> d!1263713 (= (content!7491 (list!17275 (left!35291 (right!35621 t!3602)))) e!2656509)))

(declare-fun b!4279036 () Bool)

(assert (=> b!4279036 (= e!2656509 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4279037 () Bool)

(assert (=> b!4279037 (= e!2656509 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 (list!17275 (left!35291 (right!35621 t!3602)))) true) (content!7491 (t!354054 (list!17275 (left!35291 (right!35621 t!3602)))))))))

(assert (= (and d!1263713 c!728987) b!4279036))

(assert (= (and d!1263713 (not c!728987)) b!4279037))

(declare-fun m!4876129 () Bool)

(assert (=> b!4279037 m!4876129))

(declare-fun m!4876131 () Bool)

(assert (=> b!4279037 m!4876131))

(assert (=> d!1263549 d!1263713))

(declare-fun d!1263715 () Bool)

(declare-fun c!728988 () Bool)

(assert (=> d!1263715 (= c!728988 ((_ is Nil!47357) (list!17275 (right!35621 (right!35621 t!3602)))))))

(declare-fun e!2656510 () (InoxSet T!79990))

(assert (=> d!1263715 (= (content!7491 (list!17275 (right!35621 (right!35621 t!3602)))) e!2656510)))

(declare-fun b!4279038 () Bool)

(assert (=> b!4279038 (= e!2656510 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4279039 () Bool)

(assert (=> b!4279039 (= e!2656510 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 (list!17275 (right!35621 (right!35621 t!3602)))) true) (content!7491 (t!354054 (list!17275 (right!35621 (right!35621 t!3602)))))))))

(assert (= (and d!1263715 c!728988) b!4279038))

(assert (= (and d!1263715 (not c!728988)) b!4279039))

(declare-fun m!4876133 () Bool)

(assert (=> b!4279039 m!4876133))

(declare-fun m!4876135 () Bool)

(assert (=> b!4279039 m!4876135))

(assert (=> d!1263549 d!1263715))

(declare-fun d!1263717 () Bool)

(declare-fun c!728989 () Bool)

(assert (=> d!1263717 (= c!728989 ((_ is Nil!47357) lt!1514306))))

(declare-fun e!2656511 () (InoxSet T!79990))

(assert (=> d!1263717 (= (content!7491 lt!1514306) e!2656511)))

(declare-fun b!4279040 () Bool)

(assert (=> b!4279040 (= e!2656511 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4279041 () Bool)

(assert (=> b!4279041 (= e!2656511 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 lt!1514306) true) (content!7491 (t!354054 lt!1514306))))))

(assert (= (and d!1263717 c!728989) b!4279040))

(assert (= (and d!1263717 (not c!728989)) b!4279041))

(declare-fun m!4876137 () Bool)

(assert (=> b!4279041 m!4876137))

(declare-fun m!4876139 () Bool)

(assert (=> b!4279041 m!4876139))

(assert (=> d!1263609 d!1263717))

(declare-fun d!1263719 () Bool)

(declare-fun c!728990 () Bool)

(assert (=> d!1263719 (= c!728990 ((_ is Nil!47357) lt!1514232))))

(declare-fun e!2656512 () (InoxSet T!79990))

(assert (=> d!1263719 (= (content!7491 lt!1514232) e!2656512)))

(declare-fun b!4279042 () Bool)

(assert (=> b!4279042 (= e!2656512 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4279043 () Bool)

(assert (=> b!4279043 (= e!2656512 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 lt!1514232) true) (content!7491 (t!354054 lt!1514232))))))

(assert (= (and d!1263719 c!728990) b!4279042))

(assert (= (and d!1263719 (not c!728990)) b!4279043))

(declare-fun m!4876141 () Bool)

(assert (=> b!4279043 m!4876141))

(declare-fun m!4876143 () Bool)

(assert (=> b!4279043 m!4876143))

(assert (=> d!1263609 d!1263719))

(declare-fun d!1263721 () Bool)

(declare-fun c!728991 () Bool)

(assert (=> d!1263721 (= c!728991 ((_ is Nil!47357) call!294274))))

(declare-fun e!2656513 () (InoxSet T!79990))

(assert (=> d!1263721 (= (content!7491 call!294274) e!2656513)))

(declare-fun b!4279044 () Bool)

(assert (=> b!4279044 (= e!2656513 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4279045 () Bool)

(assert (=> b!4279045 (= e!2656513 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 call!294274) true) (content!7491 (t!354054 call!294274))))))

(assert (= (and d!1263721 c!728991) b!4279044))

(assert (= (and d!1263721 (not c!728991)) b!4279045))

(declare-fun m!4876145 () Bool)

(assert (=> b!4279045 m!4876145))

(declare-fun m!4876147 () Bool)

(assert (=> b!4279045 m!4876147))

(assert (=> d!1263609 d!1263721))

(declare-fun d!1263723 () Bool)

(declare-fun c!728992 () Bool)

(assert (=> d!1263723 (= c!728992 ((_ is Nil!47357) (t!354054 lt!1514233)))))

(declare-fun e!2656514 () (InoxSet T!79990))

(assert (=> d!1263723 (= (content!7491 (t!354054 lt!1514233)) e!2656514)))

(declare-fun b!4279046 () Bool)

(assert (=> b!4279046 (= e!2656514 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4279047 () Bool)

(assert (=> b!4279047 (= e!2656514 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 (t!354054 lt!1514233)) true) (content!7491 (t!354054 (t!354054 lt!1514233)))))))

(assert (= (and d!1263723 c!728992) b!4279046))

(assert (= (and d!1263723 (not c!728992)) b!4279047))

(declare-fun m!4876149 () Bool)

(assert (=> b!4279047 m!4876149))

(declare-fun m!4876151 () Bool)

(assert (=> b!4279047 m!4876151))

(assert (=> b!4278610 d!1263723))

(declare-fun d!1263725 () Bool)

(declare-fun c!728993 () Bool)

(assert (=> d!1263725 (= c!728993 ((_ is Nil!47357) lt!1514304))))

(declare-fun e!2656515 () (InoxSet T!79990))

(assert (=> d!1263725 (= (content!7491 lt!1514304) e!2656515)))

(declare-fun b!4279048 () Bool)

(assert (=> b!4279048 (= e!2656515 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4279049 () Bool)

(assert (=> b!4279049 (= e!2656515 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 lt!1514304) true) (content!7491 (t!354054 lt!1514304))))))

(assert (= (and d!1263725 c!728993) b!4279048))

(assert (= (and d!1263725 (not c!728993)) b!4279049))

(declare-fun m!4876153 () Bool)

(assert (=> b!4279049 m!4876153))

(declare-fun m!4876155 () Bool)

(assert (=> b!4279049 m!4876155))

(assert (=> d!1263587 d!1263725))

(declare-fun d!1263727 () Bool)

(declare-fun c!728994 () Bool)

(assert (=> d!1263727 (= c!728994 ((_ is Nil!47357) (list!17275 (left!35291 (left!35291 t!3602)))))))

(declare-fun e!2656516 () (InoxSet T!79990))

(assert (=> d!1263727 (= (content!7491 (list!17275 (left!35291 (left!35291 t!3602)))) e!2656516)))

(declare-fun b!4279050 () Bool)

(assert (=> b!4279050 (= e!2656516 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4279051 () Bool)

(assert (=> b!4279051 (= e!2656516 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 (list!17275 (left!35291 (left!35291 t!3602)))) true) (content!7491 (t!354054 (list!17275 (left!35291 (left!35291 t!3602)))))))))

(assert (= (and d!1263727 c!728994) b!4279050))

(assert (= (and d!1263727 (not c!728994)) b!4279051))

(declare-fun m!4876157 () Bool)

(assert (=> b!4279051 m!4876157))

(declare-fun m!4876159 () Bool)

(assert (=> b!4279051 m!4876159))

(assert (=> d!1263587 d!1263727))

(declare-fun d!1263729 () Bool)

(declare-fun c!728995 () Bool)

(assert (=> d!1263729 (= c!728995 ((_ is Nil!47357) (list!17275 (right!35621 (left!35291 t!3602)))))))

(declare-fun e!2656517 () (InoxSet T!79990))

(assert (=> d!1263729 (= (content!7491 (list!17275 (right!35621 (left!35291 t!3602)))) e!2656517)))

(declare-fun b!4279052 () Bool)

(assert (=> b!4279052 (= e!2656517 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4279053 () Bool)

(assert (=> b!4279053 (= e!2656517 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 (list!17275 (right!35621 (left!35291 t!3602)))) true) (content!7491 (t!354054 (list!17275 (right!35621 (left!35291 t!3602)))))))))

(assert (= (and d!1263729 c!728995) b!4279052))

(assert (= (and d!1263729 (not c!728995)) b!4279053))

(declare-fun m!4876161 () Bool)

(assert (=> b!4279053 m!4876161))

(declare-fun m!4876163 () Bool)

(assert (=> b!4279053 m!4876163))

(assert (=> d!1263587 d!1263729))

(declare-fun d!1263731 () Bool)

(declare-fun lt!1514356 () Int)

(assert (=> d!1263731 (>= lt!1514356 0)))

(declare-fun e!2656518 () Int)

(assert (=> d!1263731 (= lt!1514356 e!2656518)))

(declare-fun c!728996 () Bool)

(assert (=> d!1263731 (= c!728996 ((_ is Nil!47357) (t!354054 lt!1514195)))))

(assert (=> d!1263731 (= (size!34668 (t!354054 lt!1514195)) lt!1514356)))

(declare-fun b!4279054 () Bool)

(assert (=> b!4279054 (= e!2656518 0)))

(declare-fun b!4279055 () Bool)

(assert (=> b!4279055 (= e!2656518 (+ 1 (size!34668 (t!354054 (t!354054 lt!1514195)))))))

(assert (= (and d!1263731 c!728996) b!4279054))

(assert (= (and d!1263731 (not c!728996)) b!4279055))

(declare-fun m!4876165 () Bool)

(assert (=> b!4279055 m!4876165))

(assert (=> b!4278653 d!1263731))

(declare-fun d!1263733 () Bool)

(declare-fun lt!1514357 () List!47481)

(assert (=> d!1263733 (= lt!1514357 (list!17277 (xs!17645 (right!35621 (right!35621 t!3602)))))))

(assert (=> d!1263733 (= lt!1514357 (rec!38 (xs!17645 (right!35621 (right!35621 t!3602))) (size!34672 (xs!17645 (right!35621 (right!35621 t!3602)))) Nil!47357))))

(assert (=> d!1263733 (= (efficientList!603 (xs!17645 (right!35621 (right!35621 t!3602)))) lt!1514357)))

(declare-fun bs!602636 () Bool)

(assert (= bs!602636 d!1263733))

(assert (=> bs!602636 m!4875639))

(declare-fun m!4876167 () Bool)

(assert (=> bs!602636 m!4876167))

(assert (=> bs!602636 m!4876167))

(declare-fun m!4876169 () Bool)

(assert (=> bs!602636 m!4876169))

(assert (=> b!4278899 d!1263733))

(assert (=> b!4278651 d!1263641))

(declare-fun d!1263735 () Bool)

(declare-fun lt!1514358 () Int)

(assert (=> d!1263735 (>= lt!1514358 0)))

(declare-fun e!2656519 () Int)

(assert (=> d!1263735 (= lt!1514358 e!2656519)))

(declare-fun c!728997 () Bool)

(assert (=> d!1263735 (= c!728997 ((_ is Nil!47357) lt!1514287))))

(assert (=> d!1263735 (= (size!34668 lt!1514287) lt!1514358)))

(declare-fun b!4279056 () Bool)

(assert (=> b!4279056 (= e!2656519 0)))

(declare-fun b!4279057 () Bool)

(assert (=> b!4279057 (= e!2656519 (+ 1 (size!34668 (t!354054 lt!1514287))))))

(assert (= (and d!1263735 c!728997) b!4279056))

(assert (= (and d!1263735 (not c!728997)) b!4279057))

(declare-fun m!4876171 () Bool)

(assert (=> b!4279057 m!4876171))

(assert (=> b!4278768 d!1263735))

(assert (=> b!4278768 d!1263641))

(assert (=> b!4278768 d!1263457))

(declare-fun d!1263737 () Bool)

(declare-fun lt!1514359 () Int)

(assert (=> d!1263737 (>= lt!1514359 0)))

(declare-fun e!2656520 () Int)

(assert (=> d!1263737 (= lt!1514359 e!2656520)))

(declare-fun c!728998 () Bool)

(assert (=> d!1263737 (= c!728998 ((_ is Nil!47357) lt!1514305))))

(assert (=> d!1263737 (= (size!34668 lt!1514305) lt!1514359)))

(declare-fun b!4279058 () Bool)

(assert (=> b!4279058 (= e!2656520 0)))

(declare-fun b!4279059 () Bool)

(assert (=> b!4279059 (= e!2656520 (+ 1 (size!34668 (t!354054 lt!1514305))))))

(assert (= (and d!1263737 c!728998) b!4279058))

(assert (= (and d!1263737 (not c!728998)) b!4279059))

(declare-fun m!4876173 () Bool)

(assert (=> b!4279059 m!4876173))

(assert (=> b!4278881 d!1263737))

(assert (=> b!4278881 d!1263693))

(declare-fun d!1263739 () Bool)

(declare-fun lt!1514360 () Int)

(assert (=> d!1263739 (>= lt!1514360 0)))

(declare-fun e!2656521 () Int)

(assert (=> d!1263739 (= lt!1514360 e!2656521)))

(declare-fun c!728999 () Bool)

(assert (=> d!1263739 (= c!728999 ((_ is Nil!47357) lt!1514230))))

(assert (=> d!1263739 (= (size!34668 lt!1514230) lt!1514360)))

(declare-fun b!4279060 () Bool)

(assert (=> b!4279060 (= e!2656521 0)))

(declare-fun b!4279061 () Bool)

(assert (=> b!4279061 (= e!2656521 (+ 1 (size!34668 (t!354054 lt!1514230))))))

(assert (= (and d!1263739 c!728999) b!4279060))

(assert (= (and d!1263739 (not c!728999)) b!4279061))

(declare-fun m!4876175 () Bool)

(assert (=> b!4279061 m!4876175))

(assert (=> b!4278881 d!1263739))

(declare-fun d!1263741 () Bool)

(declare-fun lt!1514361 () Int)

(assert (=> d!1263741 (>= lt!1514361 0)))

(declare-fun e!2656522 () Int)

(assert (=> d!1263741 (= lt!1514361 e!2656522)))

(declare-fun c!729000 () Bool)

(assert (=> d!1263741 (= c!729000 ((_ is Nil!47357) lt!1514289))))

(assert (=> d!1263741 (= (size!34668 lt!1514289) lt!1514361)))

(declare-fun b!4279062 () Bool)

(assert (=> b!4279062 (= e!2656522 0)))

(declare-fun b!4279063 () Bool)

(assert (=> b!4279063 (= e!2656522 (+ 1 (size!34668 (t!354054 lt!1514289))))))

(assert (= (and d!1263741 c!729000) b!4279062))

(assert (= (and d!1263741 (not c!729000)) b!4279063))

(declare-fun m!4876177 () Bool)

(assert (=> b!4279063 m!4876177))

(assert (=> b!4278788 d!1263741))

(declare-fun d!1263743 () Bool)

(declare-fun lt!1514362 () Int)

(assert (=> d!1263743 (>= lt!1514362 0)))

(declare-fun e!2656523 () Int)

(assert (=> d!1263743 (= lt!1514362 e!2656523)))

(declare-fun c!729001 () Bool)

(assert (=> d!1263743 (= c!729001 ((_ is Nil!47357) e!2656236))))

(assert (=> d!1263743 (= (size!34668 e!2656236) lt!1514362)))

(declare-fun b!4279064 () Bool)

(assert (=> b!4279064 (= e!2656523 0)))

(declare-fun b!4279065 () Bool)

(assert (=> b!4279065 (= e!2656523 (+ 1 (size!34668 (t!354054 e!2656236))))))

(assert (= (and d!1263743 c!729001) b!4279064))

(assert (= (and d!1263743 (not c!729001)) b!4279065))

(declare-fun m!4876179 () Bool)

(assert (=> b!4279065 m!4876179))

(assert (=> b!4278788 d!1263743))

(assert (=> b!4278788 d!1263501))

(declare-fun b!4279067 () Bool)

(declare-fun e!2656524 () List!47481)

(assert (=> b!4279067 (= e!2656524 (Cons!47357 (h!52777 (t!354054 (list!17275 (left!35291 (right!35621 t!3602))))) (++!12103 (t!354054 (t!354054 (list!17275 (left!35291 (right!35621 t!3602))))) (list!17275 (right!35621 (right!35621 t!3602))))))))

(declare-fun b!4279066 () Bool)

(assert (=> b!4279066 (= e!2656524 (list!17275 (right!35621 (right!35621 t!3602))))))

(declare-fun d!1263745 () Bool)

(declare-fun e!2656525 () Bool)

(assert (=> d!1263745 e!2656525))

(declare-fun res!1756683 () Bool)

(assert (=> d!1263745 (=> (not res!1756683) (not e!2656525))))

(declare-fun lt!1514363 () List!47481)

(assert (=> d!1263745 (= res!1756683 (= (content!7491 lt!1514363) ((_ map or) (content!7491 (t!354054 (list!17275 (left!35291 (right!35621 t!3602))))) (content!7491 (list!17275 (right!35621 (right!35621 t!3602)))))))))

(assert (=> d!1263745 (= lt!1514363 e!2656524)))

(declare-fun c!729002 () Bool)

(assert (=> d!1263745 (= c!729002 ((_ is Nil!47357) (t!354054 (list!17275 (left!35291 (right!35621 t!3602))))))))

(assert (=> d!1263745 (= (++!12103 (t!354054 (list!17275 (left!35291 (right!35621 t!3602)))) (list!17275 (right!35621 (right!35621 t!3602)))) lt!1514363)))

(declare-fun b!4279068 () Bool)

(declare-fun res!1756682 () Bool)

(assert (=> b!4279068 (=> (not res!1756682) (not e!2656525))))

(assert (=> b!4279068 (= res!1756682 (= (size!34668 lt!1514363) (+ (size!34668 (t!354054 (list!17275 (left!35291 (right!35621 t!3602))))) (size!34668 (list!17275 (right!35621 (right!35621 t!3602)))))))))

(declare-fun b!4279069 () Bool)

(assert (=> b!4279069 (= e!2656525 (or (not (= (list!17275 (right!35621 (right!35621 t!3602))) Nil!47357)) (= lt!1514363 (t!354054 (list!17275 (left!35291 (right!35621 t!3602)))))))))

(assert (= (and d!1263745 c!729002) b!4279066))

(assert (= (and d!1263745 (not c!729002)) b!4279067))

(assert (= (and d!1263745 res!1756683) b!4279068))

(assert (= (and b!4279068 res!1756682) b!4279069))

(assert (=> b!4279067 m!4875153))

(declare-fun m!4876181 () Bool)

(assert (=> b!4279067 m!4876181))

(declare-fun m!4876183 () Bool)

(assert (=> d!1263745 m!4876183))

(assert (=> d!1263745 m!4876131))

(assert (=> d!1263745 m!4875153))

(assert (=> d!1263745 m!4875617))

(declare-fun m!4876185 () Bool)

(assert (=> b!4279068 m!4876185))

(assert (=> b!4279068 m!4875957))

(assert (=> b!4279068 m!4875153))

(assert (=> b!4279068 m!4875623))

(assert (=> b!4278791 d!1263745))

(declare-fun b!4279071 () Bool)

(declare-fun e!2656526 () List!47481)

(assert (=> b!4279071 (= e!2656526 (Cons!47357 (h!52777 (t!354054 lt!1514232)) (++!12103 (t!354054 (t!354054 lt!1514232)) call!294274)))))

(declare-fun b!4279070 () Bool)

(assert (=> b!4279070 (= e!2656526 call!294274)))

(declare-fun d!1263747 () Bool)

(declare-fun e!2656527 () Bool)

(assert (=> d!1263747 e!2656527))

(declare-fun res!1756685 () Bool)

(assert (=> d!1263747 (=> (not res!1756685) (not e!2656527))))

(declare-fun lt!1514364 () List!47481)

(assert (=> d!1263747 (= res!1756685 (= (content!7491 lt!1514364) ((_ map or) (content!7491 (t!354054 lt!1514232)) (content!7491 call!294274))))))

(assert (=> d!1263747 (= lt!1514364 e!2656526)))

(declare-fun c!729003 () Bool)

(assert (=> d!1263747 (= c!729003 ((_ is Nil!47357) (t!354054 lt!1514232)))))

(assert (=> d!1263747 (= (++!12103 (t!354054 lt!1514232) call!294274) lt!1514364)))

(declare-fun b!4279072 () Bool)

(declare-fun res!1756684 () Bool)

(assert (=> b!4279072 (=> (not res!1756684) (not e!2656527))))

(assert (=> b!4279072 (= res!1756684 (= (size!34668 lt!1514364) (+ (size!34668 (t!354054 lt!1514232)) (size!34668 call!294274))))))

(declare-fun b!4279073 () Bool)

(assert (=> b!4279073 (= e!2656527 (or (not (= call!294274 Nil!47357)) (= lt!1514364 (t!354054 lt!1514232))))))

(assert (= (and d!1263747 c!729003) b!4279070))

(assert (= (and d!1263747 (not c!729003)) b!4279071))

(assert (= (and d!1263747 res!1756685) b!4279072))

(assert (= (and b!4279072 res!1756684) b!4279073))

(declare-fun m!4876187 () Bool)

(assert (=> b!4279071 m!4876187))

(declare-fun m!4876189 () Bool)

(assert (=> d!1263747 m!4876189))

(assert (=> d!1263747 m!4876143))

(assert (=> d!1263747 m!4875805))

(declare-fun m!4876191 () Bool)

(assert (=> b!4279072 m!4876191))

(assert (=> b!4279072 m!4876095))

(assert (=> b!4279072 m!4875809))

(assert (=> b!4278884 d!1263747))

(declare-fun d!1263749 () Bool)

(declare-fun lt!1514365 () Int)

(assert (=> d!1263749 (>= lt!1514365 0)))

(declare-fun e!2656528 () Int)

(assert (=> d!1263749 (= lt!1514365 e!2656528)))

(declare-fun c!729004 () Bool)

(assert (=> d!1263749 (= c!729004 ((_ is Nil!47357) (t!354054 lt!1514244)))))

(assert (=> d!1263749 (= (size!34668 (t!354054 lt!1514244)) lt!1514365)))

(declare-fun b!4279074 () Bool)

(assert (=> b!4279074 (= e!2656528 0)))

(declare-fun b!4279075 () Bool)

(assert (=> b!4279075 (= e!2656528 (+ 1 (size!34668 (t!354054 (t!354054 lt!1514244)))))))

(assert (= (and d!1263749 c!729004) b!4279074))

(assert (= (and d!1263749 (not c!729004)) b!4279075))

(declare-fun m!4876193 () Bool)

(assert (=> b!4279075 m!4876193))

(assert (=> b!4278838 d!1263749))

(assert (=> b!4278579 d!1263573))

(assert (=> b!4278579 d!1263575))

(declare-fun d!1263751 () Bool)

(assert (=> d!1263751 (= (list!17277 (xs!17645 (left!35291 (right!35621 t!3602)))) (innerList!14399 (xs!17645 (left!35291 (right!35621 t!3602)))))))

(assert (=> b!4278796 d!1263751))

(declare-fun d!1263753 () Bool)

(declare-fun lt!1514366 () Int)

(assert (=> d!1263753 (>= lt!1514366 0)))

(declare-fun e!2656529 () Int)

(assert (=> d!1263753 (= lt!1514366 e!2656529)))

(declare-fun c!729005 () Bool)

(assert (=> d!1263753 (= c!729005 ((_ is Nil!47357) (t!354054 lt!1514239)))))

(assert (=> d!1263753 (= (size!34668 (t!354054 lt!1514239)) lt!1514366)))

(declare-fun b!4279076 () Bool)

(assert (=> b!4279076 (= e!2656529 0)))

(declare-fun b!4279077 () Bool)

(assert (=> b!4279077 (= e!2656529 (+ 1 (size!34668 (t!354054 (t!354054 lt!1514239)))))))

(assert (= (and d!1263753 c!729005) b!4279076))

(assert (= (and d!1263753 (not c!729005)) b!4279077))

(declare-fun m!4876195 () Bool)

(assert (=> b!4279077 m!4876195))

(assert (=> b!4278649 d!1263753))

(declare-fun d!1263755 () Bool)

(declare-fun res!1756686 () Bool)

(declare-fun e!2656530 () Bool)

(assert (=> d!1263755 (=> (not res!1756686) (not e!2656530))))

(assert (=> d!1263755 (= res!1756686 (<= (size!34668 (list!17277 (xs!17645 (right!35621 (left!35291 t!3602))))) 512))))

(assert (=> d!1263755 (= (inv!62724 (right!35621 (left!35291 t!3602))) e!2656530)))

(declare-fun b!4279078 () Bool)

(declare-fun res!1756687 () Bool)

(assert (=> b!4279078 (=> (not res!1756687) (not e!2656530))))

(assert (=> b!4279078 (= res!1756687 (= (csize!28909 (right!35621 (left!35291 t!3602))) (size!34668 (list!17277 (xs!17645 (right!35621 (left!35291 t!3602)))))))))

(declare-fun b!4279079 () Bool)

(assert (=> b!4279079 (= e!2656530 (and (> (csize!28909 (right!35621 (left!35291 t!3602))) 0) (<= (csize!28909 (right!35621 (left!35291 t!3602))) 512)))))

(assert (= (and d!1263755 res!1756686) b!4279078))

(assert (= (and b!4279078 res!1756687) b!4279079))

(assert (=> d!1263755 m!4875761))

(assert (=> d!1263755 m!4875761))

(declare-fun m!4876197 () Bool)

(assert (=> d!1263755 m!4876197))

(assert (=> b!4279078 m!4875761))

(assert (=> b!4279078 m!4875761))

(assert (=> b!4279078 m!4876197))

(assert (=> b!4278870 d!1263755))

(declare-fun d!1263757 () Bool)

(assert (=> d!1263757 (= (inv!62720 (xs!17645 (right!35621 (left!35291 t!3602)))) (<= (size!34668 (innerList!14399 (xs!17645 (right!35621 (left!35291 t!3602))))) 2147483647))))

(declare-fun bs!602637 () Bool)

(assert (= bs!602637 d!1263757))

(declare-fun m!4876199 () Bool)

(assert (=> bs!602637 m!4876199))

(assert (=> b!4278912 d!1263757))

(declare-fun d!1263759 () Bool)

(declare-fun lt!1514367 () Int)

(assert (=> d!1263759 (>= lt!1514367 0)))

(declare-fun e!2656531 () Int)

(assert (=> d!1263759 (= lt!1514367 e!2656531)))

(declare-fun c!729006 () Bool)

(assert (=> d!1263759 (= c!729006 ((_ is Nil!47357) (list!17277 (xs!17645 (right!35621 t!3602)))))))

(assert (=> d!1263759 (= (size!34668 (list!17277 (xs!17645 (right!35621 t!3602)))) lt!1514367)))

(declare-fun b!4279080 () Bool)

(assert (=> b!4279080 (= e!2656531 0)))

(declare-fun b!4279081 () Bool)

(assert (=> b!4279081 (= e!2656531 (+ 1 (size!34668 (t!354054 (list!17277 (xs!17645 (right!35621 t!3602)))))))))

(assert (= (and d!1263759 c!729006) b!4279080))

(assert (= (and d!1263759 (not c!729006)) b!4279081))

(declare-fun m!4876201 () Bool)

(assert (=> b!4279081 m!4876201))

(assert (=> d!1263465 d!1263759))

(assert (=> d!1263465 d!1263543))

(declare-fun b!4279083 () Bool)

(declare-fun e!2656532 () List!47481)

(assert (=> b!4279083 (= e!2656532 (Cons!47357 (h!52777 (list!17275 (left!35291 (right!35621 t!3602)))) (++!12103 (t!354054 (list!17275 (left!35291 (right!35621 t!3602)))) (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259))))))

(declare-fun b!4279082 () Bool)

(assert (=> b!4279082 (= e!2656532 (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259))))

(declare-fun d!1263761 () Bool)

(declare-fun e!2656533 () Bool)

(assert (=> d!1263761 e!2656533))

(declare-fun res!1756689 () Bool)

(assert (=> d!1263761 (=> (not res!1756689) (not e!2656533))))

(declare-fun lt!1514368 () List!47481)

(assert (=> d!1263761 (= res!1756689 (= (content!7491 lt!1514368) ((_ map or) (content!7491 (list!17275 (left!35291 (right!35621 t!3602)))) (content!7491 (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259)))))))

(assert (=> d!1263761 (= lt!1514368 e!2656532)))

(declare-fun c!729007 () Bool)

(assert (=> d!1263761 (= c!729007 ((_ is Nil!47357) (list!17275 (left!35291 (right!35621 t!3602)))))))

(assert (=> d!1263761 (= (++!12103 (list!17275 (left!35291 (right!35621 t!3602))) (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259)) lt!1514368)))

(declare-fun b!4279084 () Bool)

(declare-fun res!1756688 () Bool)

(assert (=> b!4279084 (=> (not res!1756688) (not e!2656533))))

(assert (=> b!4279084 (= res!1756688 (= (size!34668 lt!1514368) (+ (size!34668 (list!17275 (left!35291 (right!35621 t!3602)))) (size!34668 (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259)))))))

(declare-fun b!4279085 () Bool)

(assert (=> b!4279085 (= e!2656533 (or (not (= (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259) Nil!47357)) (= lt!1514368 (list!17275 (left!35291 (right!35621 t!3602))))))))

(assert (= (and d!1263761 c!729007) b!4279082))

(assert (= (and d!1263761 (not c!729007)) b!4279083))

(assert (= (and d!1263761 res!1756689) b!4279084))

(assert (= (and b!4279084 res!1756688) b!4279085))

(assert (=> b!4279083 m!4875151))

(declare-fun m!4876203 () Bool)

(assert (=> b!4279083 m!4876203))

(declare-fun m!4876205 () Bool)

(assert (=> d!1263761 m!4876205))

(assert (=> d!1263761 m!4875161))

(assert (=> d!1263761 m!4875615))

(assert (=> d!1263761 m!4875151))

(assert (=> d!1263761 m!4876003))

(declare-fun m!4876207 () Bool)

(assert (=> b!4279084 m!4876207))

(assert (=> b!4279084 m!4875161))

(assert (=> b!4279084 m!4875621))

(assert (=> b!4279084 m!4875151))

(assert (=> b!4279084 m!4876009))

(assert (=> d!1263615 d!1263761))

(assert (=> d!1263615 d!1263551))

(declare-fun d!1263763 () Bool)

(declare-fun c!729008 () Bool)

(assert (=> d!1263763 (= c!729008 ((_ is Nil!47357) lt!1514289))))

(declare-fun e!2656534 () (InoxSet T!79990))

(assert (=> d!1263763 (= (content!7491 lt!1514289) e!2656534)))

(declare-fun b!4279086 () Bool)

(assert (=> b!4279086 (= e!2656534 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4279087 () Bool)

(assert (=> b!4279087 (= e!2656534 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 lt!1514289) true) (content!7491 (t!354054 lt!1514289))))))

(assert (= (and d!1263763 c!729008) b!4279086))

(assert (= (and d!1263763 (not c!729008)) b!4279087))

(declare-fun m!4876209 () Bool)

(assert (=> b!4279087 m!4876209))

(declare-fun m!4876211 () Bool)

(assert (=> b!4279087 m!4876211))

(assert (=> d!1263547 d!1263763))

(declare-fun d!1263765 () Bool)

(declare-fun c!729009 () Bool)

(assert (=> d!1263765 (= c!729009 ((_ is Nil!47357) e!2656236))))

(declare-fun e!2656535 () (InoxSet T!79990))

(assert (=> d!1263765 (= (content!7491 e!2656236) e!2656535)))

(declare-fun b!4279088 () Bool)

(assert (=> b!4279088 (= e!2656535 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4279089 () Bool)

(assert (=> b!4279089 (= e!2656535 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 e!2656236) true) (content!7491 (t!354054 e!2656236))))))

(assert (= (and d!1263765 c!729009) b!4279088))

(assert (= (and d!1263765 (not c!729009)) b!4279089))

(declare-fun m!4876213 () Bool)

(assert (=> b!4279089 m!4876213))

(declare-fun m!4876215 () Bool)

(assert (=> b!4279089 m!4876215))

(assert (=> d!1263547 d!1263765))

(assert (=> d!1263547 d!1263541))

(declare-fun d!1263767 () Bool)

(declare-fun c!729010 () Bool)

(assert (=> d!1263767 (= c!729010 ((_ is Nil!47357) (t!354054 (++!12103 lt!1514195 acc!259))))))

(declare-fun e!2656536 () (InoxSet T!79990))

(assert (=> d!1263767 (= (content!7491 (t!354054 (++!12103 lt!1514195 acc!259))) e!2656536)))

(declare-fun b!4279090 () Bool)

(assert (=> b!4279090 (= e!2656536 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4279091 () Bool)

(assert (=> b!4279091 (= e!2656536 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 (t!354054 (++!12103 lt!1514195 acc!259))) true) (content!7491 (t!354054 (t!354054 (++!12103 lt!1514195 acc!259))))))))

(assert (= (and d!1263767 c!729010) b!4279090))

(assert (= (and d!1263767 (not c!729010)) b!4279091))

(declare-fun m!4876217 () Bool)

(assert (=> b!4279091 m!4876217))

(declare-fun m!4876219 () Bool)

(assert (=> b!4279091 m!4876219))

(assert (=> b!4278617 d!1263767))

(assert (=> d!1263555 d!1263543))

(declare-fun d!1263769 () Bool)

(declare-fun lt!1514397 () List!47481)

(assert (=> d!1263769 (= lt!1514397 (list!17277 (xs!17645 (right!35621 t!3602))))))

(declare-fun e!2656547 () List!47481)

(assert (=> d!1263769 (= lt!1514397 e!2656547)))

(declare-fun c!729018 () Bool)

(assert (=> d!1263769 (= c!729018 (<= (size!34672 (xs!17645 (right!35621 t!3602))) 0))))

(declare-fun e!2656548 () Bool)

(assert (=> d!1263769 e!2656548))

(declare-fun res!1756695 () Bool)

(assert (=> d!1263769 (=> (not res!1756695) (not e!2656548))))

(assert (=> d!1263769 (= res!1756695 (<= 0 (size!34672 (xs!17645 (right!35621 t!3602)))))))

(assert (=> d!1263769 (= (rec!38 (xs!17645 (right!35621 t!3602)) (size!34672 (xs!17645 (right!35621 t!3602))) Nil!47357) lt!1514397)))

(declare-fun b!4279111 () Bool)

(assert (=> b!4279111 (= e!2656548 (<= (size!34672 (xs!17645 (right!35621 t!3602))) (size!34672 (xs!17645 (right!35621 t!3602)))))))

(declare-fun b!4279112 () Bool)

(assert (=> b!4279112 (= e!2656547 Nil!47357)))

(declare-fun b!4279113 () Bool)

(declare-fun $colon$colon!642 (List!47481 T!79990) List!47481)

(declare-fun apply!10794 (IArray!28683 Int) T!79990)

(assert (=> b!4279113 (= e!2656547 (rec!38 (xs!17645 (right!35621 t!3602)) (- (size!34672 (xs!17645 (right!35621 t!3602))) 1) ($colon$colon!642 Nil!47357 (apply!10794 (xs!17645 (right!35621 t!3602)) (- (size!34672 (xs!17645 (right!35621 t!3602))) 1)))))))

(declare-fun lt!1514395 () List!47481)

(assert (=> b!4279113 (= lt!1514395 (list!17277 (xs!17645 (right!35621 t!3602))))))

(declare-fun lt!1514394 () Int)

(assert (=> b!4279113 (= lt!1514394 (- (size!34672 (xs!17645 (right!35621 t!3602))) 1))))

(declare-fun lt!1514392 () Unit!66313)

(declare-fun lemmaDropApply!1244 (List!47481 Int) Unit!66313)

(assert (=> b!4279113 (= lt!1514392 (lemmaDropApply!1244 lt!1514395 lt!1514394))))

(declare-fun head!9000 (List!47481) T!79990)

(declare-fun drop!2142 (List!47481 Int) List!47481)

(declare-fun apply!10795 (List!47481 Int) T!79990)

(assert (=> b!4279113 (= (head!9000 (drop!2142 lt!1514395 lt!1514394)) (apply!10795 lt!1514395 lt!1514394))))

(declare-fun lt!1514399 () Unit!66313)

(assert (=> b!4279113 (= lt!1514399 lt!1514392)))

(declare-fun lt!1514396 () List!47481)

(assert (=> b!4279113 (= lt!1514396 (list!17277 (xs!17645 (right!35621 t!3602))))))

(declare-fun lt!1514393 () Int)

(assert (=> b!4279113 (= lt!1514393 (- (size!34672 (xs!17645 (right!35621 t!3602))) 1))))

(declare-fun lt!1514398 () Unit!66313)

(declare-fun lemmaDropTail!1128 (List!47481 Int) Unit!66313)

(assert (=> b!4279113 (= lt!1514398 (lemmaDropTail!1128 lt!1514396 lt!1514393))))

(declare-fun tail!6865 (List!47481) List!47481)

(assert (=> b!4279113 (= (tail!6865 (drop!2142 lt!1514396 lt!1514393)) (drop!2142 lt!1514396 (+ lt!1514393 1)))))

(declare-fun lt!1514400 () Unit!66313)

(assert (=> b!4279113 (= lt!1514400 lt!1514398)))

(assert (= (and d!1263769 res!1756695) b!4279111))

(assert (= (and d!1263769 c!729018) b!4279112))

(assert (= (and d!1263769 (not c!729018)) b!4279113))

(assert (=> d!1263769 m!4875183))

(assert (=> b!4279111 m!4875663))

(declare-fun m!4876247 () Bool)

(assert (=> b!4279113 m!4876247))

(declare-fun m!4876249 () Bool)

(assert (=> b!4279113 m!4876249))

(assert (=> b!4279113 m!4876249))

(declare-fun m!4876251 () Bool)

(assert (=> b!4279113 m!4876251))

(declare-fun m!4876255 () Bool)

(assert (=> b!4279113 m!4876255))

(declare-fun m!4876259 () Bool)

(assert (=> b!4279113 m!4876259))

(declare-fun m!4876261 () Bool)

(assert (=> b!4279113 m!4876261))

(declare-fun m!4876263 () Bool)

(assert (=> b!4279113 m!4876263))

(assert (=> b!4279113 m!4876263))

(declare-fun m!4876265 () Bool)

(assert (=> b!4279113 m!4876265))

(declare-fun m!4876267 () Bool)

(assert (=> b!4279113 m!4876267))

(assert (=> b!4279113 m!4876261))

(declare-fun m!4876269 () Bool)

(assert (=> b!4279113 m!4876269))

(assert (=> b!4279113 m!4875183))

(assert (=> b!4279113 m!4876251))

(declare-fun m!4876271 () Bool)

(assert (=> b!4279113 m!4876271))

(assert (=> d!1263555 d!1263769))

(declare-fun d!1263793 () Bool)

(declare-fun lt!1514404 () Int)

(assert (=> d!1263793 (= lt!1514404 (size!34668 (list!17277 (xs!17645 (right!35621 t!3602)))))))

(declare-fun choose!26089 (IArray!28683) Int)

(assert (=> d!1263793 (= lt!1514404 (choose!26089 (xs!17645 (right!35621 t!3602))))))

(assert (=> d!1263793 (= (size!34672 (xs!17645 (right!35621 t!3602))) lt!1514404)))

(declare-fun bs!602639 () Bool)

(assert (= bs!602639 d!1263793))

(assert (=> bs!602639 m!4875183))

(assert (=> bs!602639 m!4875183))

(assert (=> bs!602639 m!4875427))

(declare-fun m!4876295 () Bool)

(assert (=> bs!602639 m!4876295))

(assert (=> d!1263555 d!1263793))

(assert (=> b!4278612 d!1263689))

(declare-fun b!4279134 () Bool)

(declare-fun e!2656559 () List!47481)

(assert (=> b!4279134 (= e!2656559 (Cons!47357 (h!52777 (t!354054 (list!17275 (left!35291 (left!35291 t!3602))))) (++!12103 (t!354054 (t!354054 (list!17275 (left!35291 (left!35291 t!3602))))) (list!17275 (right!35621 (left!35291 t!3602))))))))

(declare-fun b!4279133 () Bool)

(assert (=> b!4279133 (= e!2656559 (list!17275 (right!35621 (left!35291 t!3602))))))

(declare-fun d!1263807 () Bool)

(declare-fun e!2656560 () Bool)

(assert (=> d!1263807 e!2656560))

(declare-fun res!1756702 () Bool)

(assert (=> d!1263807 (=> (not res!1756702) (not e!2656560))))

(declare-fun lt!1514405 () List!47481)

(assert (=> d!1263807 (= res!1756702 (= (content!7491 lt!1514405) ((_ map or) (content!7491 (t!354054 (list!17275 (left!35291 (left!35291 t!3602))))) (content!7491 (list!17275 (right!35621 (left!35291 t!3602)))))))))

(assert (=> d!1263807 (= lt!1514405 e!2656559)))

(declare-fun c!729026 () Bool)

(assert (=> d!1263807 (= c!729026 ((_ is Nil!47357) (t!354054 (list!17275 (left!35291 (left!35291 t!3602))))))))

(assert (=> d!1263807 (= (++!12103 (t!354054 (list!17275 (left!35291 (left!35291 t!3602)))) (list!17275 (right!35621 (left!35291 t!3602)))) lt!1514405)))

(declare-fun b!4279135 () Bool)

(declare-fun res!1756701 () Bool)

(assert (=> b!4279135 (=> (not res!1756701) (not e!2656560))))

(assert (=> b!4279135 (= res!1756701 (= (size!34668 lt!1514405) (+ (size!34668 (t!354054 (list!17275 (left!35291 (left!35291 t!3602))))) (size!34668 (list!17275 (right!35621 (left!35291 t!3602)))))))))

(declare-fun b!4279136 () Bool)

(assert (=> b!4279136 (= e!2656560 (or (not (= (list!17275 (right!35621 (left!35291 t!3602))) Nil!47357)) (= lt!1514405 (t!354054 (list!17275 (left!35291 (left!35291 t!3602)))))))))

(assert (= (and d!1263807 c!729026) b!4279133))

(assert (= (and d!1263807 (not c!729026)) b!4279134))

(assert (= (and d!1263807 res!1756702) b!4279135))

(assert (= (and b!4279135 res!1756701) b!4279136))

(assert (=> b!4279134 m!4875085))

(declare-fun m!4876305 () Bool)

(assert (=> b!4279134 m!4876305))

(declare-fun m!4876307 () Bool)

(assert (=> d!1263807 m!4876307))

(assert (=> d!1263807 m!4876159))

(assert (=> d!1263807 m!4875085))

(assert (=> d!1263807 m!4875739))

(declare-fun m!4876309 () Bool)

(assert (=> b!4279135 m!4876309))

(assert (=> b!4279135 m!4876111))

(assert (=> b!4279135 m!4875085))

(assert (=> b!4279135 m!4875745))

(assert (=> b!4278854 d!1263807))

(declare-fun d!1263813 () Bool)

(declare-fun res!1756705 () Bool)

(declare-fun e!2656564 () Bool)

(assert (=> d!1263813 (=> (not res!1756705) (not e!2656564))))

(assert (=> d!1263813 (= res!1756705 (<= (size!34668 (list!17277 (xs!17645 (left!35291 (left!35291 t!3602))))) 512))))

(assert (=> d!1263813 (= (inv!62724 (left!35291 (left!35291 t!3602))) e!2656564)))

(declare-fun b!4279143 () Bool)

(declare-fun res!1756706 () Bool)

(assert (=> b!4279143 (=> (not res!1756706) (not e!2656564))))

(assert (=> b!4279143 (= res!1756706 (= (csize!28909 (left!35291 (left!35291 t!3602))) (size!34668 (list!17277 (xs!17645 (left!35291 (left!35291 t!3602)))))))))

(declare-fun b!4279144 () Bool)

(assert (=> b!4279144 (= e!2656564 (and (> (csize!28909 (left!35291 (left!35291 t!3602))) 0) (<= (csize!28909 (left!35291 (left!35291 t!3602))) 512)))))

(assert (= (and d!1263813 res!1756705) b!4279143))

(assert (= (and b!4279143 res!1756706) b!4279144))

(assert (=> d!1263813 m!4875753))

(assert (=> d!1263813 m!4875753))

(declare-fun m!4876311 () Bool)

(assert (=> d!1263813 m!4876311))

(assert (=> b!4279143 m!4875753))

(assert (=> b!4279143 m!4875753))

(assert (=> b!4279143 m!4876311))

(assert (=> b!4278867 d!1263813))

(declare-fun d!1263815 () Bool)

(declare-fun lt!1514408 () Int)

(assert (=> d!1263815 (>= lt!1514408 0)))

(declare-fun e!2656565 () Int)

(assert (=> d!1263815 (= lt!1514408 e!2656565)))

(declare-fun c!729029 () Bool)

(assert (=> d!1263815 (= c!729029 ((_ is Nil!47357) lt!1514298))))

(assert (=> d!1263815 (= (size!34668 lt!1514298) lt!1514408)))

(declare-fun b!4279145 () Bool)

(assert (=> b!4279145 (= e!2656565 0)))

(declare-fun b!4279146 () Bool)

(assert (=> b!4279146 (= e!2656565 (+ 1 (size!34668 (t!354054 lt!1514298))))))

(assert (= (and d!1263815 c!729029) b!4279145))

(assert (= (and d!1263815 (not c!729029)) b!4279146))

(declare-fun m!4876321 () Bool)

(assert (=> b!4279146 m!4876321))

(assert (=> b!4278817 d!1263815))

(assert (=> b!4278817 d!1263731))

(assert (=> b!4278817 d!1263501))

(declare-fun d!1263819 () Bool)

(declare-fun c!729030 () Bool)

(assert (=> d!1263819 (= c!729030 ((_ is Nil!47357) lt!1514305))))

(declare-fun e!2656566 () (InoxSet T!79990))

(assert (=> d!1263819 (= (content!7491 lt!1514305) e!2656566)))

(declare-fun b!4279147 () Bool)

(assert (=> b!4279147 (= e!2656566 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4279148 () Bool)

(assert (=> b!4279148 (= e!2656566 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 lt!1514305) true) (content!7491 (t!354054 lt!1514305))))))

(assert (= (and d!1263819 c!729030) b!4279147))

(assert (= (and d!1263819 (not c!729030)) b!4279148))

(declare-fun m!4876323 () Bool)

(assert (=> b!4279148 m!4876323))

(declare-fun m!4876325 () Bool)

(assert (=> b!4279148 m!4876325))

(assert (=> d!1263607 d!1263819))

(assert (=> d!1263607 d!1263719))

(declare-fun d!1263821 () Bool)

(declare-fun c!729031 () Bool)

(assert (=> d!1263821 (= c!729031 ((_ is Nil!47357) lt!1514230))))

(declare-fun e!2656567 () (InoxSet T!79990))

(assert (=> d!1263821 (= (content!7491 lt!1514230) e!2656567)))

(declare-fun b!4279149 () Bool)

(assert (=> b!4279149 (= e!2656567 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4279150 () Bool)

(assert (=> b!4279150 (= e!2656567 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 lt!1514230) true) (content!7491 (t!354054 lt!1514230))))))

(assert (= (and d!1263821 c!729031) b!4279149))

(assert (= (and d!1263821 (not c!729031)) b!4279150))

(declare-fun m!4876327 () Bool)

(assert (=> b!4279150 m!4876327))

(declare-fun m!4876329 () Bool)

(assert (=> b!4279150 m!4876329))

(assert (=> d!1263607 d!1263821))

(declare-fun d!1263823 () Bool)

(declare-fun res!1756707 () Bool)

(declare-fun e!2656568 () Bool)

(assert (=> d!1263823 (=> (not res!1756707) (not e!2656568))))

(assert (=> d!1263823 (= res!1756707 (<= (size!34668 (list!17277 (xs!17645 (right!35621 (right!35621 t!3602))))) 512))))

(assert (=> d!1263823 (= (inv!62724 (right!35621 (right!35621 t!3602))) e!2656568)))

(declare-fun b!4279151 () Bool)

(declare-fun res!1756708 () Bool)

(assert (=> b!4279151 (=> (not res!1756708) (not e!2656568))))

(assert (=> b!4279151 (= res!1756708 (= (csize!28909 (right!35621 (right!35621 t!3602))) (size!34668 (list!17277 (xs!17645 (right!35621 (right!35621 t!3602)))))))))

(declare-fun b!4279152 () Bool)

(assert (=> b!4279152 (= e!2656568 (and (> (csize!28909 (right!35621 (right!35621 t!3602))) 0) (<= (csize!28909 (right!35621 (right!35621 t!3602))) 512)))))

(assert (= (and d!1263823 res!1756707) b!4279151))

(assert (= (and b!4279151 res!1756708) b!4279152))

(assert (=> d!1263823 m!4875639))

(assert (=> d!1263823 m!4875639))

(declare-fun m!4876331 () Bool)

(assert (=> d!1263823 m!4876331))

(assert (=> b!4279151 m!4875639))

(assert (=> b!4279151 m!4875639))

(assert (=> b!4279151 m!4876331))

(assert (=> b!4278826 d!1263823))

(declare-fun d!1263825 () Bool)

(declare-fun lt!1514409 () Int)

(assert (=> d!1263825 (>= lt!1514409 0)))

(declare-fun e!2656569 () Int)

(assert (=> d!1263825 (= lt!1514409 e!2656569)))

(declare-fun c!729032 () Bool)

(assert (=> d!1263825 (= c!729032 ((_ is Nil!47357) (t!354054 (++!12103 lt!1514194 lt!1514195))))))

(assert (=> d!1263825 (= (size!34668 (t!354054 (++!12103 lt!1514194 lt!1514195))) lt!1514409)))

(declare-fun b!4279153 () Bool)

(assert (=> b!4279153 (= e!2656569 0)))

(declare-fun b!4279154 () Bool)

(assert (=> b!4279154 (= e!2656569 (+ 1 (size!34668 (t!354054 (t!354054 (++!12103 lt!1514194 lt!1514195))))))))

(assert (= (and d!1263825 c!729032) b!4279153))

(assert (= (and d!1263825 (not c!729032)) b!4279154))

(declare-fun m!4876333 () Bool)

(assert (=> b!4279154 m!4876333))

(assert (=> b!4278711 d!1263825))

(declare-fun d!1263827 () Bool)

(declare-fun c!729033 () Bool)

(assert (=> d!1263827 (= c!729033 ((_ is Nil!47357) (t!354054 lt!1514202)))))

(declare-fun e!2656570 () (InoxSet T!79990))

(assert (=> d!1263827 (= (content!7491 (t!354054 lt!1514202)) e!2656570)))

(declare-fun b!4279155 () Bool)

(assert (=> b!4279155 (= e!2656570 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4279156 () Bool)

(assert (=> b!4279156 (= e!2656570 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 (t!354054 lt!1514202)) true) (content!7491 (t!354054 (t!354054 lt!1514202)))))))

(assert (= (and d!1263827 c!729033) b!4279155))

(assert (= (and d!1263827 (not c!729033)) b!4279156))

(declare-fun m!4876335 () Bool)

(assert (=> b!4279156 m!4876335))

(declare-fun m!4876337 () Bool)

(assert (=> b!4279156 m!4876337))

(assert (=> b!4278777 d!1263827))

(declare-fun d!1263829 () Bool)

(declare-fun res!1756709 () Bool)

(declare-fun e!2656571 () Bool)

(assert (=> d!1263829 (=> (not res!1756709) (not e!2656571))))

(assert (=> d!1263829 (= res!1756709 (= (csize!28908 (left!35291 (right!35621 t!3602))) (+ (size!34671 (left!35291 (left!35291 (right!35621 t!3602)))) (size!34671 (right!35621 (left!35291 (right!35621 t!3602)))))))))

(assert (=> d!1263829 (= (inv!62723 (left!35291 (right!35621 t!3602))) e!2656571)))

(declare-fun b!4279157 () Bool)

(declare-fun res!1756710 () Bool)

(assert (=> b!4279157 (=> (not res!1756710) (not e!2656571))))

(assert (=> b!4279157 (= res!1756710 (and (not (= (left!35291 (left!35291 (right!35621 t!3602))) Empty!14339)) (not (= (right!35621 (left!35291 (right!35621 t!3602))) Empty!14339))))))

(declare-fun b!4279158 () Bool)

(declare-fun res!1756711 () Bool)

(assert (=> b!4279158 (=> (not res!1756711) (not e!2656571))))

(assert (=> b!4279158 (= res!1756711 (= (cheight!14550 (left!35291 (right!35621 t!3602))) (+ (max!0 (height!1889 (left!35291 (left!35291 (right!35621 t!3602)))) (height!1889 (right!35621 (left!35291 (right!35621 t!3602))))) 1)))))

(declare-fun b!4279159 () Bool)

(assert (=> b!4279159 (= e!2656571 (<= 0 (cheight!14550 (left!35291 (right!35621 t!3602)))))))

(assert (= (and d!1263829 res!1756709) b!4279157))

(assert (= (and b!4279157 res!1756710) b!4279158))

(assert (= (and b!4279158 res!1756711) b!4279159))

(declare-fun m!4876339 () Bool)

(assert (=> d!1263829 m!4876339))

(declare-fun m!4876341 () Bool)

(assert (=> d!1263829 m!4876341))

(declare-fun m!4876343 () Bool)

(assert (=> b!4279158 m!4876343))

(declare-fun m!4876345 () Bool)

(assert (=> b!4279158 m!4876345))

(assert (=> b!4279158 m!4876343))

(assert (=> b!4279158 m!4876345))

(declare-fun m!4876347 () Bool)

(assert (=> b!4279158 m!4876347))

(assert (=> b!4278821 d!1263829))

(declare-fun d!1263837 () Bool)

(declare-fun lt!1514411 () Int)

(assert (=> d!1263837 (>= lt!1514411 0)))

(declare-fun e!2656573 () Int)

(assert (=> d!1263837 (= lt!1514411 e!2656573)))

(declare-fun c!729035 () Bool)

(assert (=> d!1263837 (= c!729035 ((_ is Nil!47357) (innerList!14399 (xs!17645 (right!35621 t!3602)))))))

(assert (=> d!1263837 (= (size!34668 (innerList!14399 (xs!17645 (right!35621 t!3602)))) lt!1514411)))

(declare-fun b!4279162 () Bool)

(assert (=> b!4279162 (= e!2656573 0)))

(declare-fun b!4279163 () Bool)

(assert (=> b!4279163 (= e!2656573 (+ 1 (size!34668 (t!354054 (innerList!14399 (xs!17645 (right!35621 t!3602)))))))))

(assert (= (and d!1263837 c!729035) b!4279162))

(assert (= (and d!1263837 (not c!729035)) b!4279163))

(declare-fun m!4876351 () Bool)

(assert (=> b!4279163 m!4876351))

(assert (=> d!1263581 d!1263837))

(declare-fun b!4279167 () Bool)

(declare-fun e!2656575 () List!47481)

(assert (=> b!4279167 (= e!2656575 (Cons!47357 (h!52777 (t!354054 e!2656236)) (++!12103 (t!354054 (t!354054 e!2656236)) acc!259)))))

(declare-fun b!4279166 () Bool)

(assert (=> b!4279166 (= e!2656575 acc!259)))

(declare-fun d!1263841 () Bool)

(declare-fun e!2656576 () Bool)

(assert (=> d!1263841 e!2656576))

(declare-fun res!1756713 () Bool)

(assert (=> d!1263841 (=> (not res!1756713) (not e!2656576))))

(declare-fun lt!1514413 () List!47481)

(assert (=> d!1263841 (= res!1756713 (= (content!7491 lt!1514413) ((_ map or) (content!7491 (t!354054 e!2656236)) (content!7491 acc!259))))))

(assert (=> d!1263841 (= lt!1514413 e!2656575)))

(declare-fun c!729037 () Bool)

(assert (=> d!1263841 (= c!729037 ((_ is Nil!47357) (t!354054 e!2656236)))))

(assert (=> d!1263841 (= (++!12103 (t!354054 e!2656236) acc!259) lt!1514413)))

(declare-fun b!4279168 () Bool)

(declare-fun res!1756712 () Bool)

(assert (=> b!4279168 (=> (not res!1756712) (not e!2656576))))

(assert (=> b!4279168 (= res!1756712 (= (size!34668 lt!1514413) (+ (size!34668 (t!354054 e!2656236)) (size!34668 acc!259))))))

(declare-fun b!4279169 () Bool)

(assert (=> b!4279169 (= e!2656576 (or (not (= acc!259 Nil!47357)) (= lt!1514413 (t!354054 e!2656236))))))

(assert (= (and d!1263841 c!729037) b!4279166))

(assert (= (and d!1263841 (not c!729037)) b!4279167))

(assert (= (and d!1263841 res!1756713) b!4279168))

(assert (= (and b!4279168 res!1756712) b!4279169))

(declare-fun m!4876355 () Bool)

(assert (=> b!4279167 m!4876355))

(declare-fun m!4876357 () Bool)

(assert (=> d!1263841 m!4876357))

(assert (=> d!1263841 m!4876215))

(assert (=> d!1263841 m!4875111))

(declare-fun m!4876359 () Bool)

(assert (=> b!4279168 m!4876359))

(assert (=> b!4279168 m!4876179))

(assert (=> b!4279168 m!4875117))

(assert (=> b!4278787 d!1263841))

(assert (=> d!1263487 d!1263381))

(assert (=> d!1263487 d!1263401))

(assert (=> d!1263487 d!1263397))

(assert (=> d!1263487 d!1263411))

(declare-fun b!4279173 () Bool)

(declare-fun e!2656578 () List!47481)

(assert (=> b!4279173 (= e!2656578 (Cons!47357 (h!52777 e!2656437) (++!12103 (t!354054 e!2656437) acc!259)))))

(declare-fun b!4279172 () Bool)

(assert (=> b!4279172 (= e!2656578 acc!259)))

(declare-fun d!1263845 () Bool)

(declare-fun e!2656579 () Bool)

(assert (=> d!1263845 e!2656579))

(declare-fun res!1756715 () Bool)

(assert (=> d!1263845 (=> (not res!1756715) (not e!2656579))))

(declare-fun lt!1514415 () List!47481)

(assert (=> d!1263845 (= res!1756715 (= (content!7491 lt!1514415) ((_ map or) (content!7491 e!2656437) (content!7491 acc!259))))))

(assert (=> d!1263845 (= lt!1514415 e!2656578)))

(declare-fun c!729039 () Bool)

(assert (=> d!1263845 (= c!729039 ((_ is Nil!47357) e!2656437))))

(assert (=> d!1263845 (= (++!12103 e!2656437 acc!259) lt!1514415)))

(declare-fun b!4279174 () Bool)

(declare-fun res!1756714 () Bool)

(assert (=> b!4279174 (=> (not res!1756714) (not e!2656579))))

(assert (=> b!4279174 (= res!1756714 (= (size!34668 lt!1514415) (+ (size!34668 e!2656437) (size!34668 acc!259))))))

(declare-fun b!4279175 () Bool)

(assert (=> b!4279175 (= e!2656579 (or (not (= acc!259 Nil!47357)) (= lt!1514415 e!2656437)))))

(assert (= (and d!1263845 c!729039) b!4279172))

(assert (= (and d!1263845 (not c!729039)) b!4279173))

(assert (= (and d!1263845 res!1756715) b!4279174))

(assert (= (and b!4279174 res!1756714) b!4279175))

(declare-fun m!4876363 () Bool)

(assert (=> b!4279173 m!4876363))

(declare-fun m!4876365 () Bool)

(assert (=> d!1263845 m!4876365))

(declare-fun m!4876367 () Bool)

(assert (=> d!1263845 m!4876367))

(assert (=> d!1263845 m!4875111))

(declare-fun m!4876369 () Bool)

(assert (=> b!4279174 m!4876369))

(declare-fun m!4876371 () Bool)

(assert (=> b!4279174 m!4876371))

(assert (=> b!4279174 m!4875117))

(assert (=> bm!294274 d!1263845))

(declare-fun b!4279181 () Bool)

(declare-fun e!2656582 () List!47481)

(assert (=> b!4279181 (= e!2656582 (Cons!47357 (h!52777 (t!354054 (t!354054 lt!1514194))) (++!12103 (t!354054 (t!354054 (t!354054 lt!1514194))) lt!1514195)))))

(declare-fun b!4279180 () Bool)

(assert (=> b!4279180 (= e!2656582 lt!1514195)))

(declare-fun d!1263849 () Bool)

(declare-fun e!2656583 () Bool)

(assert (=> d!1263849 e!2656583))

(declare-fun res!1756719 () Bool)

(assert (=> d!1263849 (=> (not res!1756719) (not e!2656583))))

(declare-fun lt!1514417 () List!47481)

(assert (=> d!1263849 (= res!1756719 (= (content!7491 lt!1514417) ((_ map or) (content!7491 (t!354054 (t!354054 lt!1514194))) (content!7491 lt!1514195))))))

(assert (=> d!1263849 (= lt!1514417 e!2656582)))

(declare-fun c!729041 () Bool)

(assert (=> d!1263849 (= c!729041 ((_ is Nil!47357) (t!354054 (t!354054 lt!1514194))))))

(assert (=> d!1263849 (= (++!12103 (t!354054 (t!354054 lt!1514194)) lt!1514195) lt!1514417)))

(declare-fun b!4279182 () Bool)

(declare-fun res!1756718 () Bool)

(assert (=> b!4279182 (=> (not res!1756718) (not e!2656583))))

(assert (=> b!4279182 (= res!1756718 (= (size!34668 lt!1514417) (+ (size!34668 (t!354054 (t!354054 lt!1514194))) (size!34668 lt!1514195))))))

(declare-fun b!4279183 () Bool)

(assert (=> b!4279183 (= e!2656583 (or (not (= lt!1514195 Nil!47357)) (= lt!1514417 (t!354054 (t!354054 lt!1514194)))))))

(assert (= (and d!1263849 c!729041) b!4279180))

(assert (= (and d!1263849 (not c!729041)) b!4279181))

(assert (= (and d!1263849 res!1756719) b!4279182))

(assert (= (and b!4279182 res!1756718) b!4279183))

(declare-fun m!4876373 () Bool)

(assert (=> b!4279181 m!4876373))

(declare-fun m!4876375 () Bool)

(assert (=> d!1263849 m!4876375))

(assert (=> d!1263849 m!4876091))

(assert (=> d!1263849 m!4875207))

(declare-fun m!4876377 () Bool)

(assert (=> b!4279182 m!4876377))

(assert (=> b!4279182 m!4875931))

(assert (=> b!4279182 m!4875211))

(assert (=> b!4278767 d!1263849))

(declare-fun d!1263851 () Bool)

(declare-fun lt!1514418 () Int)

(assert (=> d!1263851 (>= lt!1514418 0)))

(declare-fun e!2656584 () Int)

(assert (=> d!1263851 (= lt!1514418 e!2656584)))

(declare-fun c!729042 () Bool)

(assert (=> d!1263851 (= c!729042 ((_ is Nil!47357) (t!354054 acc!259)))))

(assert (=> d!1263851 (= (size!34668 (t!354054 acc!259)) lt!1514418)))

(declare-fun b!4279184 () Bool)

(assert (=> b!4279184 (= e!2656584 0)))

(declare-fun b!4279185 () Bool)

(assert (=> b!4279185 (= e!2656584 (+ 1 (size!34668 (t!354054 (t!354054 acc!259)))))))

(assert (= (and d!1263851 c!729042) b!4279184))

(assert (= (and d!1263851 (not c!729042)) b!4279185))

(declare-fun m!4876387 () Bool)

(assert (=> b!4279185 m!4876387))

(assert (=> b!4278717 d!1263851))

(declare-fun d!1263853 () Bool)

(assert (=> d!1263853 (= (max!0 (height!1889 (left!35291 t!3602)) (height!1889 (right!35621 t!3602))) (ite (< (height!1889 (left!35291 t!3602)) (height!1889 (right!35621 t!3602))) (height!1889 (right!35621 t!3602)) (height!1889 (left!35291 t!3602))))))

(assert (=> b!4278906 d!1263853))

(assert (=> b!4278906 d!1263395))

(declare-fun d!1263857 () Bool)

(assert (=> d!1263857 (= (height!1889 (right!35621 t!3602)) (ite ((_ is Empty!14339) (right!35621 t!3602)) 0 (ite ((_ is Leaf!22164) (right!35621 t!3602)) 1 (cheight!14550 (right!35621 t!3602)))))))

(assert (=> b!4278906 d!1263857))

(declare-fun b!4279191 () Bool)

(declare-fun e!2656587 () List!47481)

(assert (=> b!4279191 (= e!2656587 (Cons!47357 (h!52777 (list!17275 (left!35291 (right!35621 (left!35291 t!3602))))) (++!12103 (t!354054 (list!17275 (left!35291 (right!35621 (left!35291 t!3602))))) (list!17275 (right!35621 (right!35621 (left!35291 t!3602)))))))))

(declare-fun b!4279190 () Bool)

(assert (=> b!4279190 (= e!2656587 (list!17275 (right!35621 (right!35621 (left!35291 t!3602)))))))

(declare-fun d!1263859 () Bool)

(declare-fun e!2656588 () Bool)

(assert (=> d!1263859 e!2656588))

(declare-fun res!1756723 () Bool)

(assert (=> d!1263859 (=> (not res!1756723) (not e!2656588))))

(declare-fun lt!1514420 () List!47481)

(assert (=> d!1263859 (= res!1756723 (= (content!7491 lt!1514420) ((_ map or) (content!7491 (list!17275 (left!35291 (right!35621 (left!35291 t!3602))))) (content!7491 (list!17275 (right!35621 (right!35621 (left!35291 t!3602))))))))))

(assert (=> d!1263859 (= lt!1514420 e!2656587)))

(declare-fun c!729044 () Bool)

(assert (=> d!1263859 (= c!729044 ((_ is Nil!47357) (list!17275 (left!35291 (right!35621 (left!35291 t!3602))))))))

(assert (=> d!1263859 (= (++!12103 (list!17275 (left!35291 (right!35621 (left!35291 t!3602)))) (list!17275 (right!35621 (right!35621 (left!35291 t!3602))))) lt!1514420)))

(declare-fun b!4279192 () Bool)

(declare-fun res!1756722 () Bool)

(assert (=> b!4279192 (=> (not res!1756722) (not e!2656588))))

(assert (=> b!4279192 (= res!1756722 (= (size!34668 lt!1514420) (+ (size!34668 (list!17275 (left!35291 (right!35621 (left!35291 t!3602))))) (size!34668 (list!17275 (right!35621 (right!35621 (left!35291 t!3602))))))))))

(declare-fun b!4279193 () Bool)

(assert (=> b!4279193 (= e!2656588 (or (not (= (list!17275 (right!35621 (right!35621 (left!35291 t!3602)))) Nil!47357)) (= lt!1514420 (list!17275 (left!35291 (right!35621 (left!35291 t!3602)))))))))

(assert (= (and d!1263859 c!729044) b!4279190))

(assert (= (and d!1263859 (not c!729044)) b!4279191))

(assert (= (and d!1263859 res!1756723) b!4279192))

(assert (= (and b!4279192 res!1756722) b!4279193))

(assert (=> b!4279191 m!4875757))

(declare-fun m!4876397 () Bool)

(assert (=> b!4279191 m!4876397))

(declare-fun m!4876399 () Bool)

(assert (=> d!1263859 m!4876399))

(assert (=> d!1263859 m!4875755))

(declare-fun m!4876401 () Bool)

(assert (=> d!1263859 m!4876401))

(assert (=> d!1263859 m!4875757))

(declare-fun m!4876403 () Bool)

(assert (=> d!1263859 m!4876403))

(declare-fun m!4876405 () Bool)

(assert (=> b!4279192 m!4876405))

(assert (=> b!4279192 m!4875755))

(declare-fun m!4876407 () Bool)

(assert (=> b!4279192 m!4876407))

(assert (=> b!4279192 m!4875757))

(declare-fun m!4876409 () Bool)

(assert (=> b!4279192 m!4876409))

(assert (=> b!4278864 d!1263859))

(declare-fun d!1263863 () Bool)

(declare-fun c!729046 () Bool)

(assert (=> d!1263863 (= c!729046 ((_ is Empty!14339) (left!35291 (right!35621 (left!35291 t!3602)))))))

(declare-fun e!2656590 () List!47481)

(assert (=> d!1263863 (= (list!17275 (left!35291 (right!35621 (left!35291 t!3602)))) e!2656590)))

(declare-fun b!4279199 () Bool)

(declare-fun e!2656591 () List!47481)

(assert (=> b!4279199 (= e!2656591 (++!12103 (list!17275 (left!35291 (left!35291 (right!35621 (left!35291 t!3602))))) (list!17275 (right!35621 (left!35291 (right!35621 (left!35291 t!3602)))))))))

(declare-fun b!4279197 () Bool)

(assert (=> b!4279197 (= e!2656590 e!2656591)))

(declare-fun c!729047 () Bool)

(assert (=> b!4279197 (= c!729047 ((_ is Leaf!22164) (left!35291 (right!35621 (left!35291 t!3602)))))))

(declare-fun b!4279196 () Bool)

(assert (=> b!4279196 (= e!2656590 Nil!47357)))

(declare-fun b!4279198 () Bool)

(assert (=> b!4279198 (= e!2656591 (list!17277 (xs!17645 (left!35291 (right!35621 (left!35291 t!3602))))))))

(assert (= (and d!1263863 c!729046) b!4279196))

(assert (= (and d!1263863 (not c!729046)) b!4279197))

(assert (= (and b!4279197 c!729047) b!4279198))

(assert (= (and b!4279197 (not c!729047)) b!4279199))

(declare-fun m!4876413 () Bool)

(assert (=> b!4279199 m!4876413))

(declare-fun m!4876415 () Bool)

(assert (=> b!4279199 m!4876415))

(assert (=> b!4279199 m!4876413))

(assert (=> b!4279199 m!4876415))

(declare-fun m!4876417 () Bool)

(assert (=> b!4279199 m!4876417))

(declare-fun m!4876419 () Bool)

(assert (=> b!4279198 m!4876419))

(assert (=> b!4278864 d!1263863))

(declare-fun d!1263867 () Bool)

(declare-fun c!729049 () Bool)

(assert (=> d!1263867 (= c!729049 ((_ is Empty!14339) (right!35621 (right!35621 (left!35291 t!3602)))))))

(declare-fun e!2656593 () List!47481)

(assert (=> d!1263867 (= (list!17275 (right!35621 (right!35621 (left!35291 t!3602)))) e!2656593)))

(declare-fun b!4279205 () Bool)

(declare-fun e!2656594 () List!47481)

(assert (=> b!4279205 (= e!2656594 (++!12103 (list!17275 (left!35291 (right!35621 (right!35621 (left!35291 t!3602))))) (list!17275 (right!35621 (right!35621 (right!35621 (left!35291 t!3602)))))))))

(declare-fun b!4279203 () Bool)

(assert (=> b!4279203 (= e!2656593 e!2656594)))

(declare-fun c!729050 () Bool)

(assert (=> b!4279203 (= c!729050 ((_ is Leaf!22164) (right!35621 (right!35621 (left!35291 t!3602)))))))

(declare-fun b!4279202 () Bool)

(assert (=> b!4279202 (= e!2656593 Nil!47357)))

(declare-fun b!4279204 () Bool)

(assert (=> b!4279204 (= e!2656594 (list!17277 (xs!17645 (right!35621 (right!35621 (left!35291 t!3602))))))))

(assert (= (and d!1263867 c!729049) b!4279202))

(assert (= (and d!1263867 (not c!729049)) b!4279203))

(assert (= (and b!4279203 c!729050) b!4279204))

(assert (= (and b!4279203 (not c!729050)) b!4279205))

(declare-fun m!4876423 () Bool)

(assert (=> b!4279205 m!4876423))

(declare-fun m!4876425 () Bool)

(assert (=> b!4279205 m!4876425))

(assert (=> b!4279205 m!4876423))

(assert (=> b!4279205 m!4876425))

(declare-fun m!4876427 () Bool)

(assert (=> b!4279205 m!4876427))

(declare-fun m!4876429 () Bool)

(assert (=> b!4279204 m!4876429))

(assert (=> b!4278864 d!1263867))

(declare-fun d!1263871 () Bool)

(declare-fun lt!1514424 () Int)

(assert (=> d!1263871 (>= lt!1514424 0)))

(declare-fun e!2656596 () Int)

(assert (=> d!1263871 (= lt!1514424 e!2656596)))

(declare-fun c!729052 () Bool)

(assert (=> d!1263871 (= c!729052 ((_ is Nil!47357) (list!17277 (xs!17645 (left!35291 t!3602)))))))

(assert (=> d!1263871 (= (size!34668 (list!17277 (xs!17645 (left!35291 t!3602)))) lt!1514424)))

(declare-fun b!4279208 () Bool)

(assert (=> b!4279208 (= e!2656596 0)))

(declare-fun b!4279209 () Bool)

(assert (=> b!4279209 (= e!2656596 (+ 1 (size!34668 (t!354054 (list!17277 (xs!17645 (left!35291 t!3602)))))))))

(assert (= (and d!1263871 c!729052) b!4279208))

(assert (= (and d!1263871 (not c!729052)) b!4279209))

(declare-fun m!4876433 () Bool)

(assert (=> b!4279209 m!4876433))

(assert (=> d!1263619 d!1263871))

(assert (=> d!1263619 d!1263621))

(declare-fun b!4279212 () Bool)

(declare-fun e!2656597 () List!47481)

(assert (=> b!4279212 (= e!2656597 (Cons!47357 (h!52777 (t!354054 lt!1514232)) (++!12103 (t!354054 (t!354054 lt!1514232)) lt!1514230)))))

(declare-fun b!4279210 () Bool)

(assert (=> b!4279210 (= e!2656597 lt!1514230)))

(declare-fun d!1263875 () Bool)

(declare-fun e!2656599 () Bool)

(assert (=> d!1263875 e!2656599))

(declare-fun res!1756727 () Bool)

(assert (=> d!1263875 (=> (not res!1756727) (not e!2656599))))

(declare-fun lt!1514426 () List!47481)

(assert (=> d!1263875 (= res!1756727 (= (content!7491 lt!1514426) ((_ map or) (content!7491 (t!354054 lt!1514232)) (content!7491 lt!1514230))))))

(assert (=> d!1263875 (= lt!1514426 e!2656597)))

(declare-fun c!729054 () Bool)

(assert (=> d!1263875 (= c!729054 ((_ is Nil!47357) (t!354054 lt!1514232)))))

(assert (=> d!1263875 (= (++!12103 (t!354054 lt!1514232) lt!1514230) lt!1514426)))

(declare-fun b!4279214 () Bool)

(declare-fun res!1756725 () Bool)

(assert (=> b!4279214 (=> (not res!1756725) (not e!2656599))))

(assert (=> b!4279214 (= res!1756725 (= (size!34668 lt!1514426) (+ (size!34668 (t!354054 lt!1514232)) (size!34668 lt!1514230))))))

(declare-fun b!4279216 () Bool)

(assert (=> b!4279216 (= e!2656599 (or (not (= lt!1514230 Nil!47357)) (= lt!1514426 (t!354054 lt!1514232))))))

(assert (= (and d!1263875 c!729054) b!4279210))

(assert (= (and d!1263875 (not c!729054)) b!4279212))

(assert (= (and d!1263875 res!1756727) b!4279214))

(assert (= (and b!4279214 res!1756725) b!4279216))

(declare-fun m!4876435 () Bool)

(assert (=> b!4279212 m!4876435))

(declare-fun m!4876437 () Bool)

(assert (=> d!1263875 m!4876437))

(assert (=> d!1263875 m!4876143))

(assert (=> d!1263875 m!4875793))

(declare-fun m!4876439 () Bool)

(assert (=> b!4279214 m!4876439))

(assert (=> b!4279214 m!4876095))

(assert (=> b!4279214 m!4875799))

(assert (=> b!4278880 d!1263875))

(declare-fun d!1263877 () Bool)

(assert (=> d!1263877 (= (inv!62720 (xs!17645 (right!35621 (right!35621 t!3602)))) (<= (size!34668 (innerList!14399 (xs!17645 (right!35621 (right!35621 t!3602))))) 2147483647))))

(declare-fun bs!602640 () Bool)

(assert (= bs!602640 d!1263877))

(declare-fun m!4876441 () Bool)

(assert (=> bs!602640 m!4876441))

(assert (=> b!4278921 d!1263877))

(declare-fun d!1263879 () Bool)

(declare-fun c!729055 () Bool)

(assert (=> d!1263879 (= c!729055 ((_ is Node!14339) (left!35291 (right!35621 (left!35291 t!3602)))))))

(declare-fun e!2656601 () Bool)

(assert (=> d!1263879 (= (inv!62719 (left!35291 (right!35621 (left!35291 t!3602)))) e!2656601)))

(declare-fun b!4279218 () Bool)

(assert (=> b!4279218 (= e!2656601 (inv!62723 (left!35291 (right!35621 (left!35291 t!3602)))))))

(declare-fun b!4279219 () Bool)

(declare-fun e!2656602 () Bool)

(assert (=> b!4279219 (= e!2656601 e!2656602)))

(declare-fun res!1756728 () Bool)

(assert (=> b!4279219 (= res!1756728 (not ((_ is Leaf!22164) (left!35291 (right!35621 (left!35291 t!3602))))))))

(assert (=> b!4279219 (=> res!1756728 e!2656602)))

(declare-fun b!4279220 () Bool)

(assert (=> b!4279220 (= e!2656602 (inv!62724 (left!35291 (right!35621 (left!35291 t!3602)))))))

(assert (= (and d!1263879 c!729055) b!4279218))

(assert (= (and d!1263879 (not c!729055)) b!4279219))

(assert (= (and b!4279219 (not res!1756728)) b!4279220))

(declare-fun m!4876448 () Bool)

(assert (=> b!4279218 m!4876448))

(declare-fun m!4876451 () Bool)

(assert (=> b!4279220 m!4876451))

(assert (=> b!4278911 d!1263879))

(declare-fun d!1263881 () Bool)

(declare-fun c!729056 () Bool)

(assert (=> d!1263881 (= c!729056 ((_ is Node!14339) (right!35621 (right!35621 (left!35291 t!3602)))))))

(declare-fun e!2656603 () Bool)

(assert (=> d!1263881 (= (inv!62719 (right!35621 (right!35621 (left!35291 t!3602)))) e!2656603)))

(declare-fun b!4279221 () Bool)

(assert (=> b!4279221 (= e!2656603 (inv!62723 (right!35621 (right!35621 (left!35291 t!3602)))))))

(declare-fun b!4279222 () Bool)

(declare-fun e!2656604 () Bool)

(assert (=> b!4279222 (= e!2656603 e!2656604)))

(declare-fun res!1756729 () Bool)

(assert (=> b!4279222 (= res!1756729 (not ((_ is Leaf!22164) (right!35621 (right!35621 (left!35291 t!3602))))))))

(assert (=> b!4279222 (=> res!1756729 e!2656604)))

(declare-fun b!4279223 () Bool)

(assert (=> b!4279223 (= e!2656604 (inv!62724 (right!35621 (right!35621 (left!35291 t!3602)))))))

(assert (= (and d!1263881 c!729056) b!4279221))

(assert (= (and d!1263881 (not c!729056)) b!4279222))

(assert (= (and b!4279222 (not res!1756729)) b!4279223))

(declare-fun m!4876461 () Bool)

(assert (=> b!4279221 m!4876461))

(declare-fun m!4876463 () Bool)

(assert (=> b!4279223 m!4876463))

(assert (=> b!4278911 d!1263881))

(declare-fun d!1263885 () Bool)

(declare-fun c!729057 () Bool)

(assert (=> d!1263885 (= c!729057 ((_ is Nil!47357) lt!1514298))))

(declare-fun e!2656605 () (InoxSet T!79990))

(assert (=> d!1263885 (= (content!7491 lt!1514298) e!2656605)))

(declare-fun b!4279224 () Bool)

(assert (=> b!4279224 (= e!2656605 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4279225 () Bool)

(assert (=> b!4279225 (= e!2656605 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 lt!1514298) true) (content!7491 (t!354054 lt!1514298))))))

(assert (= (and d!1263885 c!729057) b!4279224))

(assert (= (and d!1263885 (not c!729057)) b!4279225))

(declare-fun m!4876465 () Bool)

(assert (=> b!4279225 m!4876465))

(declare-fun m!4876467 () Bool)

(assert (=> b!4279225 m!4876467))

(assert (=> d!1263569 d!1263885))

(declare-fun d!1263887 () Bool)

(declare-fun c!729059 () Bool)

(assert (=> d!1263887 (= c!729059 ((_ is Nil!47357) (t!354054 lt!1514195)))))

(declare-fun e!2656607 () (InoxSet T!79990))

(assert (=> d!1263887 (= (content!7491 (t!354054 lt!1514195)) e!2656607)))

(declare-fun b!4279228 () Bool)

(assert (=> b!4279228 (= e!2656607 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4279229 () Bool)

(assert (=> b!4279229 (= e!2656607 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 (t!354054 lt!1514195)) true) (content!7491 (t!354054 (t!354054 lt!1514195)))))))

(assert (= (and d!1263887 c!729059) b!4279228))

(assert (= (and d!1263887 (not c!729059)) b!4279229))

(declare-fun m!4876469 () Bool)

(assert (=> b!4279229 m!4876469))

(declare-fun m!4876473 () Bool)

(assert (=> b!4279229 m!4876473))

(assert (=> d!1263569 d!1263887))

(assert (=> d!1263569 d!1263541))

(declare-fun d!1263889 () Bool)

(declare-fun lt!1514428 () Int)

(assert (=> d!1263889 (>= lt!1514428 0)))

(declare-fun e!2656608 () Int)

(assert (=> d!1263889 (= lt!1514428 e!2656608)))

(declare-fun c!729060 () Bool)

(assert (=> d!1263889 (= c!729060 ((_ is Nil!47357) (t!354054 lt!1514202)))))

(assert (=> d!1263889 (= (size!34668 (t!354054 lt!1514202)) lt!1514428)))

(declare-fun b!4279230 () Bool)

(assert (=> b!4279230 (= e!2656608 0)))

(declare-fun b!4279231 () Bool)

(assert (=> b!4279231 (= e!2656608 (+ 1 (size!34668 (t!354054 (t!354054 lt!1514202)))))))

(assert (= (and d!1263889 c!729060) b!4279230))

(assert (= (and d!1263889 (not c!729060)) b!4279231))

(declare-fun m!4876475 () Bool)

(assert (=> b!4279231 m!4876475))

(assert (=> b!4278709 d!1263889))

(declare-fun d!1263893 () Bool)

(declare-fun lt!1514429 () List!47481)

(assert (=> d!1263893 (= lt!1514429 (list!17277 (xs!17645 (left!35291 (right!35621 t!3602)))))))

(assert (=> d!1263893 (= lt!1514429 (rec!38 (xs!17645 (left!35291 (right!35621 t!3602))) (size!34672 (xs!17645 (left!35291 (right!35621 t!3602)))) Nil!47357))))

(assert (=> d!1263893 (= (efficientList!603 (xs!17645 (left!35291 (right!35621 t!3602)))) lt!1514429)))

(declare-fun bs!602641 () Bool)

(assert (= bs!602641 d!1263893))

(assert (=> bs!602641 m!4875631))

(declare-fun m!4876477 () Bool)

(assert (=> bs!602641 m!4876477))

(assert (=> bs!602641 m!4876477))

(declare-fun m!4876479 () Bool)

(assert (=> bs!602641 m!4876479))

(assert (=> b!4278893 d!1263893))

(assert (=> b!4278576 d!1263593))

(assert (=> b!4278576 d!1263595))

(declare-fun d!1263895 () Bool)

(declare-fun lt!1514430 () Int)

(assert (=> d!1263895 (>= lt!1514430 0)))

(declare-fun e!2656610 () Int)

(assert (=> d!1263895 (= lt!1514430 e!2656610)))

(declare-fun c!729061 () Bool)

(assert (=> d!1263895 (= c!729061 ((_ is Nil!47357) (t!354054 (++!12103 lt!1514195 acc!259))))))

(assert (=> d!1263895 (= (size!34668 (t!354054 (++!12103 lt!1514195 acc!259))) lt!1514430)))

(declare-fun b!4279235 () Bool)

(assert (=> b!4279235 (= e!2656610 0)))

(declare-fun b!4279236 () Bool)

(assert (=> b!4279236 (= e!2656610 (+ 1 (size!34668 (t!354054 (t!354054 (++!12103 lt!1514195 acc!259))))))))

(assert (= (and d!1263895 c!729061) b!4279235))

(assert (= (and d!1263895 (not c!729061)) b!4279236))

(declare-fun m!4876481 () Bool)

(assert (=> b!4279236 m!4876481))

(assert (=> b!4278849 d!1263895))

(assert (=> b!4278903 d!1263871))

(assert (=> b!4278903 d!1263621))

(declare-fun d!1263897 () Bool)

(declare-fun lt!1514431 () Int)

(assert (=> d!1263897 (= lt!1514431 (size!34668 (list!17275 (left!35291 (right!35621 t!3602)))))))

(assert (=> d!1263897 (= lt!1514431 (ite ((_ is Empty!14339) (left!35291 (right!35621 t!3602))) 0 (ite ((_ is Leaf!22164) (left!35291 (right!35621 t!3602))) (csize!28909 (left!35291 (right!35621 t!3602))) (csize!28908 (left!35291 (right!35621 t!3602))))))))

(assert (=> d!1263897 (= (size!34671 (left!35291 (right!35621 t!3602))) lt!1514431)))

(declare-fun bs!602642 () Bool)

(assert (= bs!602642 d!1263897))

(assert (=> bs!602642 m!4875161))

(assert (=> bs!602642 m!4875161))

(assert (=> bs!602642 m!4875621))

(assert (=> d!1263503 d!1263897))

(declare-fun d!1263899 () Bool)

(declare-fun lt!1514432 () Int)

(assert (=> d!1263899 (= lt!1514432 (size!34668 (list!17275 (right!35621 (right!35621 t!3602)))))))

(assert (=> d!1263899 (= lt!1514432 (ite ((_ is Empty!14339) (right!35621 (right!35621 t!3602))) 0 (ite ((_ is Leaf!22164) (right!35621 (right!35621 t!3602))) (csize!28909 (right!35621 (right!35621 t!3602))) (csize!28908 (right!35621 (right!35621 t!3602))))))))

(assert (=> d!1263899 (= (size!34671 (right!35621 (right!35621 t!3602))) lt!1514432)))

(declare-fun bs!602643 () Bool)

(assert (= bs!602643 d!1263899))

(assert (=> bs!602643 m!4875153))

(assert (=> bs!602643 m!4875153))

(assert (=> bs!602643 m!4875623))

(assert (=> d!1263503 d!1263899))

(declare-fun b!4279238 () Bool)

(declare-fun e!2656611 () List!47481)

(assert (=> b!4279238 (= e!2656611 (Cons!47357 (h!52777 (t!354054 (t!354054 lt!1514195))) (++!12103 (t!354054 (t!354054 (t!354054 lt!1514195))) acc!259)))))

(declare-fun b!4279237 () Bool)

(assert (=> b!4279237 (= e!2656611 acc!259)))

(declare-fun d!1263901 () Bool)

(declare-fun e!2656612 () Bool)

(assert (=> d!1263901 e!2656612))

(declare-fun res!1756734 () Bool)

(assert (=> d!1263901 (=> (not res!1756734) (not e!2656612))))

(declare-fun lt!1514433 () List!47481)

(assert (=> d!1263901 (= res!1756734 (= (content!7491 lt!1514433) ((_ map or) (content!7491 (t!354054 (t!354054 lt!1514195))) (content!7491 acc!259))))))

(assert (=> d!1263901 (= lt!1514433 e!2656611)))

(declare-fun c!729062 () Bool)

(assert (=> d!1263901 (= c!729062 ((_ is Nil!47357) (t!354054 (t!354054 lt!1514195))))))

(assert (=> d!1263901 (= (++!12103 (t!354054 (t!354054 lt!1514195)) acc!259) lt!1514433)))

(declare-fun b!4279239 () Bool)

(declare-fun res!1756733 () Bool)

(assert (=> b!4279239 (=> (not res!1756733) (not e!2656612))))

(assert (=> b!4279239 (= res!1756733 (= (size!34668 lt!1514433) (+ (size!34668 (t!354054 (t!354054 lt!1514195))) (size!34668 acc!259))))))

(declare-fun b!4279240 () Bool)

(assert (=> b!4279240 (= e!2656612 (or (not (= acc!259 Nil!47357)) (= lt!1514433 (t!354054 (t!354054 lt!1514195)))))))

(assert (= (and d!1263901 c!729062) b!4279237))

(assert (= (and d!1263901 (not c!729062)) b!4279238))

(assert (= (and d!1263901 res!1756734) b!4279239))

(assert (= (and b!4279239 res!1756733) b!4279240))

(declare-fun m!4876493 () Bool)

(assert (=> b!4279238 m!4876493))

(declare-fun m!4876495 () Bool)

(assert (=> d!1263901 m!4876495))

(assert (=> d!1263901 m!4876473))

(assert (=> d!1263901 m!4875111))

(declare-fun m!4876497 () Bool)

(assert (=> b!4279239 m!4876497))

(assert (=> b!4279239 m!4876165))

(assert (=> b!4279239 m!4875117))

(assert (=> b!4278816 d!1263901))

(declare-fun d!1263905 () Bool)

(declare-fun lt!1514434 () Int)

(assert (=> d!1263905 (>= lt!1514434 0)))

(declare-fun e!2656614 () Int)

(assert (=> d!1263905 (= lt!1514434 e!2656614)))

(declare-fun c!729064 () Bool)

(assert (=> d!1263905 (= c!729064 ((_ is Nil!47357) lt!1514250))))

(assert (=> d!1263905 (= (size!34668 lt!1514250) lt!1514434)))

(declare-fun b!4279243 () Bool)

(assert (=> b!4279243 (= e!2656614 0)))

(declare-fun b!4279244 () Bool)

(assert (=> b!4279244 (= e!2656614 (+ 1 (size!34668 (t!354054 lt!1514250))))))

(assert (= (and d!1263905 c!729064) b!4279243))

(assert (= (and d!1263905 (not c!729064)) b!4279244))

(declare-fun m!4876503 () Bool)

(assert (=> b!4279244 m!4876503))

(assert (=> b!4278594 d!1263905))

(assert (=> b!4278594 d!1263825))

(assert (=> b!4278594 d!1263501))

(declare-fun d!1263909 () Bool)

(assert (=> d!1263909 (= (inv!62720 (xs!17645 (left!35291 (left!35291 t!3602)))) (<= (size!34668 (innerList!14399 (xs!17645 (left!35291 (left!35291 t!3602))))) 2147483647))))

(declare-fun bs!602644 () Bool)

(assert (= bs!602644 d!1263909))

(declare-fun m!4876505 () Bool)

(assert (=> bs!602644 m!4876505))

(assert (=> b!4278909 d!1263909))

(declare-fun d!1263911 () Bool)

(assert (=> d!1263911 (= (max!0 (height!1889 (left!35291 (right!35621 t!3602))) (height!1889 (right!35621 (right!35621 t!3602)))) (ite (< (height!1889 (left!35291 (right!35621 t!3602))) (height!1889 (right!35621 (right!35621 t!3602)))) (height!1889 (right!35621 (right!35621 t!3602))) (height!1889 (left!35291 (right!35621 t!3602)))))))

(assert (=> b!4278758 d!1263911))

(declare-fun d!1263913 () Bool)

(assert (=> d!1263913 (= (height!1889 (left!35291 (right!35621 t!3602))) (ite ((_ is Empty!14339) (left!35291 (right!35621 t!3602))) 0 (ite ((_ is Leaf!22164) (left!35291 (right!35621 t!3602))) 1 (cheight!14550 (left!35291 (right!35621 t!3602))))))))

(assert (=> b!4278758 d!1263913))

(declare-fun d!1263915 () Bool)

(assert (=> d!1263915 (= (height!1889 (right!35621 (right!35621 t!3602))) (ite ((_ is Empty!14339) (right!35621 (right!35621 t!3602))) 0 (ite ((_ is Leaf!22164) (right!35621 (right!35621 t!3602))) 1 (cheight!14550 (right!35621 (right!35621 t!3602))))))))

(assert (=> b!4278758 d!1263915))

(declare-fun d!1263917 () Bool)

(assert (=> d!1263917 (= (list!17277 (xs!17645 (right!35621 (left!35291 t!3602)))) (innerList!14399 (xs!17645 (right!35621 (left!35291 t!3602)))))))

(assert (=> b!4278863 d!1263917))

(assert (=> b!4278692 d!1263759))

(assert (=> b!4278692 d!1263543))

(declare-fun d!1263921 () Bool)

(declare-fun lt!1514437 () Int)

(assert (=> d!1263921 (>= lt!1514437 0)))

(declare-fun e!2656616 () Int)

(assert (=> d!1263921 (= lt!1514437 e!2656616)))

(declare-fun c!729066 () Bool)

(assert (=> d!1263921 (= c!729066 ((_ is Nil!47357) (list!17277 (xs!17645 t!3602))))))

(assert (=> d!1263921 (= (size!34668 (list!17277 (xs!17645 t!3602))) lt!1514437)))

(declare-fun b!4279247 () Bool)

(assert (=> b!4279247 (= e!2656616 0)))

(declare-fun b!4279248 () Bool)

(assert (=> b!4279248 (= e!2656616 (+ 1 (size!34668 (t!354054 (list!17277 (xs!17645 t!3602))))))))

(assert (= (and d!1263921 c!729066) b!4279247))

(assert (= (and d!1263921 (not c!729066)) b!4279248))

(declare-fun m!4876509 () Bool)

(assert (=> b!4279248 m!4876509))

(assert (=> d!1263599 d!1263921))

(declare-fun d!1263923 () Bool)

(assert (=> d!1263923 (= (list!17277 (xs!17645 t!3602)) (innerList!14399 (xs!17645 t!3602)))))

(assert (=> d!1263599 d!1263923))

(assert (=> b!4278871 d!1263921))

(assert (=> b!4278871 d!1263923))

(declare-fun d!1263925 () Bool)

(declare-fun c!729067 () Bool)

(assert (=> d!1263925 (= c!729067 ((_ is Node!14339) (left!35291 (right!35621 (right!35621 t!3602)))))))

(declare-fun e!2656617 () Bool)

(assert (=> d!1263925 (= (inv!62719 (left!35291 (right!35621 (right!35621 t!3602)))) e!2656617)))

(declare-fun b!4279249 () Bool)

(assert (=> b!4279249 (= e!2656617 (inv!62723 (left!35291 (right!35621 (right!35621 t!3602)))))))

(declare-fun b!4279250 () Bool)

(declare-fun e!2656618 () Bool)

(assert (=> b!4279250 (= e!2656617 e!2656618)))

(declare-fun res!1756735 () Bool)

(assert (=> b!4279250 (= res!1756735 (not ((_ is Leaf!22164) (left!35291 (right!35621 (right!35621 t!3602))))))))

(assert (=> b!4279250 (=> res!1756735 e!2656618)))

(declare-fun b!4279251 () Bool)

(assert (=> b!4279251 (= e!2656618 (inv!62724 (left!35291 (right!35621 (right!35621 t!3602)))))))

(assert (= (and d!1263925 c!729067) b!4279249))

(assert (= (and d!1263925 (not c!729067)) b!4279250))

(assert (= (and b!4279250 (not res!1756735)) b!4279251))

(declare-fun m!4876515 () Bool)

(assert (=> b!4279249 m!4876515))

(declare-fun m!4876517 () Bool)

(assert (=> b!4279251 m!4876517))

(assert (=> b!4278920 d!1263925))

(declare-fun d!1263929 () Bool)

(declare-fun c!729068 () Bool)

(assert (=> d!1263929 (= c!729068 ((_ is Node!14339) (right!35621 (right!35621 (right!35621 t!3602)))))))

(declare-fun e!2656620 () Bool)

(assert (=> d!1263929 (= (inv!62719 (right!35621 (right!35621 (right!35621 t!3602)))) e!2656620)))

(declare-fun b!4279253 () Bool)

(assert (=> b!4279253 (= e!2656620 (inv!62723 (right!35621 (right!35621 (right!35621 t!3602)))))))

(declare-fun b!4279255 () Bool)

(declare-fun e!2656621 () Bool)

(assert (=> b!4279255 (= e!2656620 e!2656621)))

(declare-fun res!1756738 () Bool)

(assert (=> b!4279255 (= res!1756738 (not ((_ is Leaf!22164) (right!35621 (right!35621 (right!35621 t!3602))))))))

(assert (=> b!4279255 (=> res!1756738 e!2656621)))

(declare-fun b!4279257 () Bool)

(assert (=> b!4279257 (= e!2656621 (inv!62724 (right!35621 (right!35621 (right!35621 t!3602)))))))

(assert (= (and d!1263929 c!729068) b!4279253))

(assert (= (and d!1263929 (not c!729068)) b!4279255))

(assert (= (and b!4279255 (not res!1756738)) b!4279257))

(declare-fun m!4876519 () Bool)

(assert (=> b!4279253 m!4876519))

(declare-fun m!4876521 () Bool)

(assert (=> b!4279257 m!4876521))

(assert (=> b!4278920 d!1263929))

(declare-fun d!1263931 () Bool)

(declare-fun c!729070 () Bool)

(assert (=> d!1263931 (= c!729070 ((_ is Nil!47357) (t!354054 (++!12103 lt!1514194 lt!1514195))))))

(declare-fun e!2656623 () (InoxSet T!79990))

(assert (=> d!1263931 (= (content!7491 (t!354054 (++!12103 lt!1514194 lt!1514195))) e!2656623)))

(declare-fun b!4279259 () Bool)

(assert (=> b!4279259 (= e!2656623 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4279260 () Bool)

(assert (=> b!4279260 (= e!2656623 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 (t!354054 (++!12103 lt!1514194 lt!1514195))) true) (content!7491 (t!354054 (t!354054 (++!12103 lt!1514194 lt!1514195))))))))

(assert (= (and d!1263931 c!729070) b!4279259))

(assert (= (and d!1263931 (not c!729070)) b!4279260))

(declare-fun m!4876523 () Bool)

(assert (=> b!4279260 m!4876523))

(declare-fun m!4876525 () Bool)

(assert (=> b!4279260 m!4876525))

(assert (=> b!4278783 d!1263931))

(assert (=> b!4278876 d!1263887))

(assert (=> d!1263613 d!1263607))

(declare-fun d!1263933 () Bool)

(assert (=> d!1263933 (= (++!12103 (++!12103 lt!1514232 lt!1514230) acc!259) (++!12103 lt!1514232 (++!12103 lt!1514230 acc!259)))))

(assert (=> d!1263933 true))

(declare-fun _$15!528 () Unit!66313)

(assert (=> d!1263933 (= (choose!26088 lt!1514232 lt!1514230 acc!259) _$15!528)))

(declare-fun bs!602646 () Bool)

(assert (= bs!602646 d!1263933))

(assert (=> bs!602646 m!4875157))

(assert (=> bs!602646 m!4875157))

(assert (=> bs!602646 m!4875159))

(assert (=> bs!602646 m!4875821))

(assert (=> bs!602646 m!4875821))

(assert (=> bs!602646 m!4875823))

(assert (=> d!1263613 d!1263933))

(assert (=> d!1263613 d!1263611))

(declare-fun b!4279262 () Bool)

(declare-fun e!2656624 () List!47481)

(assert (=> b!4279262 (= e!2656624 (Cons!47357 (h!52777 lt!1514230) (++!12103 (t!354054 lt!1514230) acc!259)))))

(declare-fun b!4279261 () Bool)

(assert (=> b!4279261 (= e!2656624 acc!259)))

(declare-fun d!1263935 () Bool)

(declare-fun e!2656625 () Bool)

(assert (=> d!1263935 e!2656625))

(declare-fun res!1756740 () Bool)

(assert (=> d!1263935 (=> (not res!1756740) (not e!2656625))))

(declare-fun lt!1514439 () List!47481)

(assert (=> d!1263935 (= res!1756740 (= (content!7491 lt!1514439) ((_ map or) (content!7491 lt!1514230) (content!7491 acc!259))))))

(assert (=> d!1263935 (= lt!1514439 e!2656624)))

(declare-fun c!729071 () Bool)

(assert (=> d!1263935 (= c!729071 ((_ is Nil!47357) lt!1514230))))

(assert (=> d!1263935 (= (++!12103 lt!1514230 acc!259) lt!1514439)))

(declare-fun b!4279263 () Bool)

(declare-fun res!1756739 () Bool)

(assert (=> b!4279263 (=> (not res!1756739) (not e!2656625))))

(assert (=> b!4279263 (= res!1756739 (= (size!34668 lt!1514439) (+ (size!34668 lt!1514230) (size!34668 acc!259))))))

(declare-fun b!4279264 () Bool)

(assert (=> b!4279264 (= e!2656625 (or (not (= acc!259 Nil!47357)) (= lt!1514439 lt!1514230)))))

(assert (= (and d!1263935 c!729071) b!4279261))

(assert (= (and d!1263935 (not c!729071)) b!4279262))

(assert (= (and d!1263935 res!1756740) b!4279263))

(assert (= (and b!4279263 res!1756739) b!4279264))

(declare-fun m!4876535 () Bool)

(assert (=> b!4279262 m!4876535))

(declare-fun m!4876537 () Bool)

(assert (=> d!1263935 m!4876537))

(assert (=> d!1263935 m!4875793))

(assert (=> d!1263935 m!4875111))

(declare-fun m!4876539 () Bool)

(assert (=> b!4279263 m!4876539))

(assert (=> b!4279263 m!4875799))

(assert (=> b!4279263 m!4875117))

(assert (=> d!1263613 d!1263935))

(declare-fun e!2656627 () List!47481)

(declare-fun b!4279268 () Bool)

(assert (=> b!4279268 (= e!2656627 (Cons!47357 (h!52777 lt!1514232) (++!12103 (t!354054 lt!1514232) (++!12103 lt!1514230 acc!259))))))

(declare-fun b!4279267 () Bool)

(assert (=> b!4279267 (= e!2656627 (++!12103 lt!1514230 acc!259))))

(declare-fun d!1263939 () Bool)

(declare-fun e!2656628 () Bool)

(assert (=> d!1263939 e!2656628))

(declare-fun res!1756742 () Bool)

(assert (=> d!1263939 (=> (not res!1756742) (not e!2656628))))

(declare-fun lt!1514441 () List!47481)

(assert (=> d!1263939 (= res!1756742 (= (content!7491 lt!1514441) ((_ map or) (content!7491 lt!1514232) (content!7491 (++!12103 lt!1514230 acc!259)))))))

(assert (=> d!1263939 (= lt!1514441 e!2656627)))

(declare-fun c!729073 () Bool)

(assert (=> d!1263939 (= c!729073 ((_ is Nil!47357) lt!1514232))))

(assert (=> d!1263939 (= (++!12103 lt!1514232 (++!12103 lt!1514230 acc!259)) lt!1514441)))

(declare-fun b!4279269 () Bool)

(declare-fun res!1756741 () Bool)

(assert (=> b!4279269 (=> (not res!1756741) (not e!2656628))))

(assert (=> b!4279269 (= res!1756741 (= (size!34668 lt!1514441) (+ (size!34668 lt!1514232) (size!34668 (++!12103 lt!1514230 acc!259)))))))

(declare-fun b!4279270 () Bool)

(assert (=> b!4279270 (= e!2656628 (or (not (= (++!12103 lt!1514230 acc!259) Nil!47357)) (= lt!1514441 lt!1514232)))))

(assert (= (and d!1263939 c!729073) b!4279267))

(assert (= (and d!1263939 (not c!729073)) b!4279268))

(assert (= (and d!1263939 res!1756742) b!4279269))

(assert (= (and b!4279269 res!1756741) b!4279270))

(assert (=> b!4279268 m!4875821))

(declare-fun m!4876543 () Bool)

(assert (=> b!4279268 m!4876543))

(declare-fun m!4876545 () Bool)

(assert (=> d!1263939 m!4876545))

(assert (=> d!1263939 m!4875791))

(assert (=> d!1263939 m!4875821))

(declare-fun m!4876547 () Bool)

(assert (=> d!1263939 m!4876547))

(declare-fun m!4876549 () Bool)

(assert (=> b!4279269 m!4876549))

(assert (=> b!4279269 m!4875797))

(assert (=> b!4279269 m!4875821))

(declare-fun m!4876551 () Bool)

(assert (=> b!4279269 m!4876551))

(assert (=> d!1263613 d!1263939))

(declare-fun d!1263943 () Bool)

(declare-fun lt!1514442 () Int)

(assert (=> d!1263943 (>= lt!1514442 0)))

(declare-fun e!2656631 () Int)

(assert (=> d!1263943 (= lt!1514442 e!2656631)))

(declare-fun c!729075 () Bool)

(assert (=> d!1263943 (= c!729075 ((_ is Nil!47357) lt!1514263))))

(assert (=> d!1263943 (= (size!34668 lt!1514263) lt!1514442)))

(declare-fun b!4279274 () Bool)

(assert (=> b!4279274 (= e!2656631 0)))

(declare-fun b!4279275 () Bool)

(assert (=> b!4279275 (= e!2656631 (+ 1 (size!34668 (t!354054 lt!1514263))))))

(assert (= (and d!1263943 c!729075) b!4279274))

(assert (= (and d!1263943 (not c!729075)) b!4279275))

(declare-fun m!4876557 () Bool)

(assert (=> b!4279275 m!4876557))

(assert (=> b!4278660 d!1263943))

(declare-fun d!1263947 () Bool)

(declare-fun lt!1514443 () Int)

(assert (=> d!1263947 (>= lt!1514443 0)))

(declare-fun e!2656632 () Int)

(assert (=> d!1263947 (= lt!1514443 e!2656632)))

(declare-fun c!729076 () Bool)

(assert (=> d!1263947 (= c!729076 ((_ is Nil!47357) (list!17275 (right!35621 t!3602))))))

(assert (=> d!1263947 (= (size!34668 (list!17275 (right!35621 t!3602))) lt!1514443)))

(declare-fun b!4279276 () Bool)

(assert (=> b!4279276 (= e!2656632 0)))

(declare-fun b!4279277 () Bool)

(assert (=> b!4279277 (= e!2656632 (+ 1 (size!34668 (t!354054 (list!17275 (right!35621 t!3602))))))))

(assert (= (and d!1263947 c!729076) b!4279276))

(assert (= (and d!1263947 (not c!729076)) b!4279277))

(assert (=> b!4279277 m!4875943))

(assert (=> b!4278660 d!1263947))

(assert (=> b!4278660 d!1263501))

(declare-fun b!4279282 () Bool)

(declare-fun e!2656635 () List!47481)

(assert (=> b!4279282 (= e!2656635 (Cons!47357 (h!52777 (list!17275 (left!35291 (right!35621 (right!35621 t!3602))))) (++!12103 (t!354054 (list!17275 (left!35291 (right!35621 (right!35621 t!3602))))) (list!17275 (right!35621 (right!35621 (right!35621 t!3602)))))))))

(declare-fun b!4279281 () Bool)

(assert (=> b!4279281 (= e!2656635 (list!17275 (right!35621 (right!35621 (right!35621 t!3602)))))))

(declare-fun d!1263949 () Bool)

(declare-fun e!2656636 () Bool)

(assert (=> d!1263949 e!2656636))

(declare-fun res!1756746 () Bool)

(assert (=> d!1263949 (=> (not res!1756746) (not e!2656636))))

(declare-fun lt!1514444 () List!47481)

(assert (=> d!1263949 (= res!1756746 (= (content!7491 lt!1514444) ((_ map or) (content!7491 (list!17275 (left!35291 (right!35621 (right!35621 t!3602))))) (content!7491 (list!17275 (right!35621 (right!35621 (right!35621 t!3602))))))))))

(assert (=> d!1263949 (= lt!1514444 e!2656635)))

(declare-fun c!729078 () Bool)

(assert (=> d!1263949 (= c!729078 ((_ is Nil!47357) (list!17275 (left!35291 (right!35621 (right!35621 t!3602))))))))

(assert (=> d!1263949 (= (++!12103 (list!17275 (left!35291 (right!35621 (right!35621 t!3602)))) (list!17275 (right!35621 (right!35621 (right!35621 t!3602))))) lt!1514444)))

(declare-fun b!4279283 () Bool)

(declare-fun res!1756745 () Bool)

(assert (=> b!4279283 (=> (not res!1756745) (not e!2656636))))

(assert (=> b!4279283 (= res!1756745 (= (size!34668 lt!1514444) (+ (size!34668 (list!17275 (left!35291 (right!35621 (right!35621 t!3602))))) (size!34668 (list!17275 (right!35621 (right!35621 (right!35621 t!3602))))))))))

(declare-fun b!4279284 () Bool)

(assert (=> b!4279284 (= e!2656636 (or (not (= (list!17275 (right!35621 (right!35621 (right!35621 t!3602)))) Nil!47357)) (= lt!1514444 (list!17275 (left!35291 (right!35621 (right!35621 t!3602)))))))))

(assert (= (and d!1263949 c!729078) b!4279281))

(assert (= (and d!1263949 (not c!729078)) b!4279282))

(assert (= (and d!1263949 res!1756746) b!4279283))

(assert (= (and b!4279283 res!1756745) b!4279284))

(assert (=> b!4279282 m!4875635))

(declare-fun m!4876563 () Bool)

(assert (=> b!4279282 m!4876563))

(declare-fun m!4876565 () Bool)

(assert (=> d!1263949 m!4876565))

(assert (=> d!1263949 m!4875633))

(declare-fun m!4876567 () Bool)

(assert (=> d!1263949 m!4876567))

(assert (=> d!1263949 m!4875635))

(declare-fun m!4876569 () Bool)

(assert (=> d!1263949 m!4876569))

(declare-fun m!4876571 () Bool)

(assert (=> b!4279283 m!4876571))

(assert (=> b!4279283 m!4875633))

(declare-fun m!4876573 () Bool)

(assert (=> b!4279283 m!4876573))

(assert (=> b!4279283 m!4875635))

(declare-fun m!4876575 () Bool)

(assert (=> b!4279283 m!4876575))

(assert (=> b!4278801 d!1263949))

(declare-fun d!1263953 () Bool)

(declare-fun c!729080 () Bool)

(assert (=> d!1263953 (= c!729080 ((_ is Empty!14339) (left!35291 (right!35621 (right!35621 t!3602)))))))

(declare-fun e!2656638 () List!47481)

(assert (=> d!1263953 (= (list!17275 (left!35291 (right!35621 (right!35621 t!3602)))) e!2656638)))

(declare-fun b!4279290 () Bool)

(declare-fun e!2656639 () List!47481)

(assert (=> b!4279290 (= e!2656639 (++!12103 (list!17275 (left!35291 (left!35291 (right!35621 (right!35621 t!3602))))) (list!17275 (right!35621 (left!35291 (right!35621 (right!35621 t!3602)))))))))

(declare-fun b!4279288 () Bool)

(assert (=> b!4279288 (= e!2656638 e!2656639)))

(declare-fun c!729081 () Bool)

(assert (=> b!4279288 (= c!729081 ((_ is Leaf!22164) (left!35291 (right!35621 (right!35621 t!3602)))))))

(declare-fun b!4279287 () Bool)

(assert (=> b!4279287 (= e!2656638 Nil!47357)))

(declare-fun b!4279289 () Bool)

(assert (=> b!4279289 (= e!2656639 (list!17277 (xs!17645 (left!35291 (right!35621 (right!35621 t!3602))))))))

(assert (= (and d!1263953 c!729080) b!4279287))

(assert (= (and d!1263953 (not c!729080)) b!4279288))

(assert (= (and b!4279288 c!729081) b!4279289))

(assert (= (and b!4279288 (not c!729081)) b!4279290))

(declare-fun m!4876581 () Bool)

(assert (=> b!4279290 m!4876581))

(declare-fun m!4876583 () Bool)

(assert (=> b!4279290 m!4876583))

(assert (=> b!4279290 m!4876581))

(assert (=> b!4279290 m!4876583))

(declare-fun m!4876585 () Bool)

(assert (=> b!4279290 m!4876585))

(declare-fun m!4876587 () Bool)

(assert (=> b!4279289 m!4876587))

(assert (=> b!4278801 d!1263953))

(declare-fun d!1263957 () Bool)

(declare-fun c!729083 () Bool)

(assert (=> d!1263957 (= c!729083 ((_ is Empty!14339) (right!35621 (right!35621 (right!35621 t!3602)))))))

(declare-fun e!2656641 () List!47481)

(assert (=> d!1263957 (= (list!17275 (right!35621 (right!35621 (right!35621 t!3602)))) e!2656641)))

(declare-fun b!4279296 () Bool)

(declare-fun e!2656642 () List!47481)

(assert (=> b!4279296 (= e!2656642 (++!12103 (list!17275 (left!35291 (right!35621 (right!35621 (right!35621 t!3602))))) (list!17275 (right!35621 (right!35621 (right!35621 (right!35621 t!3602)))))))))

(declare-fun b!4279294 () Bool)

(assert (=> b!4279294 (= e!2656641 e!2656642)))

(declare-fun c!729084 () Bool)

(assert (=> b!4279294 (= c!729084 ((_ is Leaf!22164) (right!35621 (right!35621 (right!35621 t!3602)))))))

(declare-fun b!4279293 () Bool)

(assert (=> b!4279293 (= e!2656641 Nil!47357)))

(declare-fun b!4279295 () Bool)

(assert (=> b!4279295 (= e!2656642 (list!17277 (xs!17645 (right!35621 (right!35621 (right!35621 t!3602))))))))

(assert (= (and d!1263957 c!729083) b!4279293))

(assert (= (and d!1263957 (not c!729083)) b!4279294))

(assert (= (and b!4279294 c!729084) b!4279295))

(assert (= (and b!4279294 (not c!729084)) b!4279296))

(declare-fun m!4876593 () Bool)

(assert (=> b!4279296 m!4876593))

(declare-fun m!4876595 () Bool)

(assert (=> b!4279296 m!4876595))

(assert (=> b!4279296 m!4876593))

(assert (=> b!4279296 m!4876595))

(declare-fun m!4876597 () Bool)

(assert (=> b!4279296 m!4876597))

(declare-fun m!4876599 () Bool)

(assert (=> b!4279295 m!4876599))

(assert (=> b!4278801 d!1263957))

(declare-fun e!2656644 () List!47481)

(declare-fun b!4279300 () Bool)

(assert (=> b!4279300 (= e!2656644 (Cons!47357 (h!52777 e!2656434) (++!12103 (t!354054 e!2656434) (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259))))))

(declare-fun b!4279299 () Bool)

(assert (=> b!4279299 (= e!2656644 (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259))))

(declare-fun d!1263961 () Bool)

(declare-fun e!2656645 () Bool)

(assert (=> d!1263961 e!2656645))

(declare-fun res!1756748 () Bool)

(assert (=> d!1263961 (=> (not res!1756748) (not e!2656645))))

(declare-fun lt!1514445 () List!47481)

(assert (=> d!1263961 (= res!1756748 (= (content!7491 lt!1514445) ((_ map or) (content!7491 e!2656434) (content!7491 (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259)))))))

(assert (=> d!1263961 (= lt!1514445 e!2656644)))

(declare-fun c!729086 () Bool)

(assert (=> d!1263961 (= c!729086 ((_ is Nil!47357) e!2656434))))

(assert (=> d!1263961 (= (++!12103 e!2656434 (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259)) lt!1514445)))

(declare-fun b!4279301 () Bool)

(declare-fun res!1756747 () Bool)

(assert (=> b!4279301 (=> (not res!1756747) (not e!2656645))))

(assert (=> b!4279301 (= res!1756747 (= (size!34668 lt!1514445) (+ (size!34668 e!2656434) (size!34668 (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259)))))))

(declare-fun b!4279302 () Bool)

(assert (=> b!4279302 (= e!2656645 (or (not (= (efficientList!602 (right!35621 (right!35621 t!3602)) acc!259) Nil!47357)) (= lt!1514445 e!2656434)))))

(assert (= (and d!1263961 c!729086) b!4279299))

(assert (= (and d!1263961 (not c!729086)) b!4279300))

(assert (= (and d!1263961 res!1756748) b!4279301))

(assert (= (and b!4279301 res!1756747) b!4279302))

(assert (=> b!4279300 m!4875151))

(declare-fun m!4876605 () Bool)

(assert (=> b!4279300 m!4876605))

(declare-fun m!4876607 () Bool)

(assert (=> d!1263961 m!4876607))

(declare-fun m!4876609 () Bool)

(assert (=> d!1263961 m!4876609))

(assert (=> d!1263961 m!4875151))

(assert (=> d!1263961 m!4876003))

(declare-fun m!4876611 () Bool)

(assert (=> b!4279301 m!4876611))

(declare-fun m!4876613 () Bool)

(assert (=> b!4279301 m!4876613))

(assert (=> b!4279301 m!4875151))

(assert (=> b!4279301 m!4876009))

(assert (=> bm!294273 d!1263961))

(declare-fun b!4279306 () Bool)

(declare-fun e!2656647 () List!47481)

(assert (=> b!4279306 (= e!2656647 (Cons!47357 (h!52777 lt!1514318) (++!12103 (t!354054 lt!1514318) call!294279)))))

(declare-fun b!4279305 () Bool)

(assert (=> b!4279305 (= e!2656647 call!294279)))

(declare-fun d!1263965 () Bool)

(declare-fun e!2656648 () Bool)

(assert (=> d!1263965 e!2656648))

(declare-fun res!1756750 () Bool)

(assert (=> d!1263965 (=> (not res!1756750) (not e!2656648))))

(declare-fun lt!1514447 () List!47481)

(assert (=> d!1263965 (= res!1756750 (= (content!7491 lt!1514447) ((_ map or) (content!7491 lt!1514318) (content!7491 call!294279))))))

(assert (=> d!1263965 (= lt!1514447 e!2656647)))

(declare-fun c!729088 () Bool)

(assert (=> d!1263965 (= c!729088 ((_ is Nil!47357) lt!1514318))))

(assert (=> d!1263965 (= (++!12103 lt!1514318 call!294279) lt!1514447)))

(declare-fun b!4279307 () Bool)

(declare-fun res!1756749 () Bool)

(assert (=> b!4279307 (=> (not res!1756749) (not e!2656648))))

(assert (=> b!4279307 (= res!1756749 (= (size!34668 lt!1514447) (+ (size!34668 lt!1514318) (size!34668 call!294279))))))

(declare-fun b!4279308 () Bool)

(assert (=> b!4279308 (= e!2656648 (or (not (= call!294279 Nil!47357)) (= lt!1514447 lt!1514318)))))

(assert (= (and d!1263965 c!729088) b!4279305))

(assert (= (and d!1263965 (not c!729088)) b!4279306))

(assert (= (and d!1263965 res!1756750) b!4279307))

(assert (= (and b!4279307 res!1756749) b!4279308))

(declare-fun m!4876617 () Bool)

(assert (=> b!4279306 m!4876617))

(declare-fun m!4876619 () Bool)

(assert (=> d!1263965 m!4876619))

(declare-fun m!4876621 () Bool)

(assert (=> d!1263965 m!4876621))

(declare-fun m!4876623 () Bool)

(assert (=> d!1263965 m!4876623))

(declare-fun m!4876625 () Bool)

(assert (=> b!4279307 m!4876625))

(declare-fun m!4876627 () Bool)

(assert (=> b!4279307 m!4876627))

(declare-fun m!4876629 () Bool)

(assert (=> b!4279307 m!4876629))

(assert (=> b!4278901 d!1263965))

(declare-fun d!1263969 () Bool)

(assert (=> d!1263969 (= (++!12103 (++!12103 lt!1514318 lt!1514316) acc!259) (++!12103 lt!1514318 (++!12103 lt!1514316 acc!259)))))

(declare-fun lt!1514449 () Unit!66313)

(assert (=> d!1263969 (= lt!1514449 (choose!26088 lt!1514318 lt!1514316 acc!259))))

(assert (=> d!1263969 (= (lemmaConcatAssociativity!2734 lt!1514318 lt!1514316 acc!259) lt!1514449)))

(declare-fun bs!602647 () Bool)

(assert (= bs!602647 d!1263969))

(assert (=> bs!602647 m!4875855))

(assert (=> bs!602647 m!4875857))

(declare-fun m!4876631 () Bool)

(assert (=> bs!602647 m!4876631))

(declare-fun m!4876633 () Bool)

(assert (=> bs!602647 m!4876633))

(assert (=> bs!602647 m!4875855))

(declare-fun m!4876635 () Bool)

(assert (=> bs!602647 m!4876635))

(assert (=> bs!602647 m!4876631))

(assert (=> b!4278901 d!1263969))

(declare-fun b!4279314 () Bool)

(declare-fun e!2656651 () List!47481)

(assert (=> b!4279314 (= e!2656651 (Cons!47357 (h!52777 lt!1514318) (++!12103 (t!354054 lt!1514318) lt!1514316)))))

(declare-fun b!4279313 () Bool)

(assert (=> b!4279313 (= e!2656651 lt!1514316)))

(declare-fun d!1263971 () Bool)

(declare-fun e!2656652 () Bool)

(assert (=> d!1263971 e!2656652))

(declare-fun res!1756754 () Bool)

(assert (=> d!1263971 (=> (not res!1756754) (not e!2656652))))

(declare-fun lt!1514450 () List!47481)

(assert (=> d!1263971 (= res!1756754 (= (content!7491 lt!1514450) ((_ map or) (content!7491 lt!1514318) (content!7491 lt!1514316))))))

(assert (=> d!1263971 (= lt!1514450 e!2656651)))

(declare-fun c!729090 () Bool)

(assert (=> d!1263971 (= c!729090 ((_ is Nil!47357) lt!1514318))))

(assert (=> d!1263971 (= (++!12103 lt!1514318 lt!1514316) lt!1514450)))

(declare-fun b!4279315 () Bool)

(declare-fun res!1756753 () Bool)

(assert (=> b!4279315 (=> (not res!1756753) (not e!2656652))))

(assert (=> b!4279315 (= res!1756753 (= (size!34668 lt!1514450) (+ (size!34668 lt!1514318) (size!34668 lt!1514316))))))

(declare-fun b!4279316 () Bool)

(assert (=> b!4279316 (= e!2656652 (or (not (= lt!1514316 Nil!47357)) (= lt!1514450 lt!1514318)))))

(assert (= (and d!1263971 c!729090) b!4279313))

(assert (= (and d!1263971 (not c!729090)) b!4279314))

(assert (= (and d!1263971 res!1756754) b!4279315))

(assert (= (and b!4279315 res!1756753) b!4279316))

(declare-fun m!4876643 () Bool)

(assert (=> b!4279314 m!4876643))

(declare-fun m!4876647 () Bool)

(assert (=> d!1263971 m!4876647))

(assert (=> d!1263971 m!4876621))

(declare-fun m!4876651 () Bool)

(assert (=> d!1263971 m!4876651))

(declare-fun m!4876653 () Bool)

(assert (=> b!4279315 m!4876653))

(assert (=> b!4279315 m!4876627))

(declare-fun m!4876657 () Bool)

(assert (=> b!4279315 m!4876657))

(assert (=> b!4278901 d!1263971))

(assert (=> b!4278901 d!1263957))

(assert (=> b!4278901 d!1263953))

(declare-fun b!4279317 () Bool)

(declare-fun e!2656653 () List!47481)

(declare-fun call!294282 () List!47481)

(assert (=> b!4279317 (= e!2656653 call!294282)))

(declare-fun b!4279318 () Bool)

(declare-fun e!2656655 () List!47481)

(declare-fun lt!1514453 () List!47481)

(assert (=> b!4279318 (= e!2656655 lt!1514453)))

(declare-fun bm!294277 () Bool)

(declare-fun c!729093 () Bool)

(declare-fun c!729091 () Bool)

(assert (=> bm!294277 (= c!729093 c!729091)))

(assert (=> bm!294277 (= call!294282 (++!12103 e!2656655 acc!259))))

(declare-fun d!1263973 () Bool)

(declare-fun lt!1514452 () List!47481)

(assert (=> d!1263973 (= lt!1514452 (++!12103 (list!17275 (right!35621 (right!35621 (right!35621 t!3602)))) acc!259))))

(declare-fun e!2656654 () List!47481)

(assert (=> d!1263973 (= lt!1514452 e!2656654)))

(declare-fun c!729092 () Bool)

(assert (=> d!1263973 (= c!729092 ((_ is Empty!14339) (right!35621 (right!35621 (right!35621 t!3602)))))))

(assert (=> d!1263973 (= (efficientList!602 (right!35621 (right!35621 (right!35621 t!3602))) acc!259) lt!1514452)))

(declare-fun b!4279319 () Bool)

(assert (=> b!4279319 (= e!2656655 (efficientList!603 (xs!17645 (right!35621 (right!35621 (right!35621 t!3602))))))))

(declare-fun b!4279320 () Bool)

(assert (=> b!4279320 (= e!2656654 e!2656653)))

(assert (=> b!4279320 (= c!729091 ((_ is Leaf!22164) (right!35621 (right!35621 (right!35621 t!3602)))))))

(declare-fun b!4279321 () Bool)

(declare-fun lt!1514451 () Unit!66313)

(declare-fun lt!1514454 () Unit!66313)

(assert (=> b!4279321 (= lt!1514451 lt!1514454)))

(declare-fun lt!1514455 () List!47481)

(assert (=> b!4279321 (= (++!12103 (++!12103 lt!1514455 lt!1514453) acc!259) (++!12103 lt!1514455 call!294282))))

(assert (=> b!4279321 (= lt!1514454 (lemmaConcatAssociativity!2734 lt!1514455 lt!1514453 acc!259))))

(assert (=> b!4279321 (= lt!1514453 (list!17275 (right!35621 (right!35621 (right!35621 (right!35621 t!3602))))))))

(assert (=> b!4279321 (= lt!1514455 (list!17275 (left!35291 (right!35621 (right!35621 (right!35621 t!3602))))))))

(assert (=> b!4279321 (= e!2656653 (efficientList!602 (left!35291 (right!35621 (right!35621 (right!35621 t!3602)))) (efficientList!602 (right!35621 (right!35621 (right!35621 (right!35621 t!3602)))) acc!259)))))

(declare-fun b!4279322 () Bool)

(assert (=> b!4279322 (= e!2656654 acc!259)))

(assert (= (and d!1263973 c!729092) b!4279322))

(assert (= (and d!1263973 (not c!729092)) b!4279320))

(assert (= (and b!4279320 c!729091) b!4279317))

(assert (= (and b!4279320 (not c!729091)) b!4279321))

(assert (= (or b!4279317 b!4279321) bm!294277))

(assert (= (and bm!294277 c!729093) b!4279319))

(assert (= (and bm!294277 (not c!729093)) b!4279318))

(declare-fun m!4876661 () Bool)

(assert (=> bm!294277 m!4876661))

(assert (=> d!1263973 m!4875635))

(assert (=> d!1263973 m!4875635))

(declare-fun m!4876663 () Bool)

(assert (=> d!1263973 m!4876663))

(declare-fun m!4876665 () Bool)

(assert (=> b!4279319 m!4876665))

(declare-fun m!4876667 () Bool)

(assert (=> b!4279321 m!4876667))

(assert (=> b!4279321 m!4876595))

(declare-fun m!4876671 () Bool)

(assert (=> b!4279321 m!4876671))

(declare-fun m!4876673 () Bool)

(assert (=> b!4279321 m!4876673))

(assert (=> b!4279321 m!4876673))

(declare-fun m!4876677 () Bool)

(assert (=> b!4279321 m!4876677))

(assert (=> b!4279321 m!4876593))

(assert (=> b!4279321 m!4876667))

(declare-fun m!4876679 () Bool)

(assert (=> b!4279321 m!4876679))

(declare-fun m!4876681 () Bool)

(assert (=> b!4279321 m!4876681))

(assert (=> b!4278901 d!1263973))

(declare-fun e!2656658 () List!47481)

(declare-fun b!4279328 () Bool)

(assert (=> b!4279328 (= e!2656658 (Cons!47357 (h!52777 (++!12103 lt!1514318 lt!1514316)) (++!12103 (t!354054 (++!12103 lt!1514318 lt!1514316)) acc!259)))))

(declare-fun b!4279327 () Bool)

(assert (=> b!4279327 (= e!2656658 acc!259)))

(declare-fun d!1263977 () Bool)

(declare-fun e!2656659 () Bool)

(assert (=> d!1263977 e!2656659))

(declare-fun res!1756756 () Bool)

(assert (=> d!1263977 (=> (not res!1756756) (not e!2656659))))

(declare-fun lt!1514456 () List!47481)

(assert (=> d!1263977 (= res!1756756 (= (content!7491 lt!1514456) ((_ map or) (content!7491 (++!12103 lt!1514318 lt!1514316)) (content!7491 acc!259))))))

(assert (=> d!1263977 (= lt!1514456 e!2656658)))

(declare-fun c!729096 () Bool)

(assert (=> d!1263977 (= c!729096 ((_ is Nil!47357) (++!12103 lt!1514318 lt!1514316)))))

(assert (=> d!1263977 (= (++!12103 (++!12103 lt!1514318 lt!1514316) acc!259) lt!1514456)))

(declare-fun b!4279329 () Bool)

(declare-fun res!1756755 () Bool)

(assert (=> b!4279329 (=> (not res!1756755) (not e!2656659))))

(assert (=> b!4279329 (= res!1756755 (= (size!34668 lt!1514456) (+ (size!34668 (++!12103 lt!1514318 lt!1514316)) (size!34668 acc!259))))))

(declare-fun b!4279330 () Bool)

(assert (=> b!4279330 (= e!2656659 (or (not (= acc!259 Nil!47357)) (= lt!1514456 (++!12103 lt!1514318 lt!1514316))))))

(assert (= (and d!1263977 c!729096) b!4279327))

(assert (= (and d!1263977 (not c!729096)) b!4279328))

(assert (= (and d!1263977 res!1756756) b!4279329))

(assert (= (and b!4279329 res!1756755) b!4279330))

(declare-fun m!4876687 () Bool)

(assert (=> b!4279328 m!4876687))

(declare-fun m!4876689 () Bool)

(assert (=> d!1263977 m!4876689))

(assert (=> d!1263977 m!4875855))

(declare-fun m!4876691 () Bool)

(assert (=> d!1263977 m!4876691))

(assert (=> d!1263977 m!4875111))

(declare-fun m!4876693 () Bool)

(assert (=> b!4279329 m!4876693))

(assert (=> b!4279329 m!4875855))

(declare-fun m!4876695 () Bool)

(assert (=> b!4279329 m!4876695))

(assert (=> b!4279329 m!4875117))

(assert (=> b!4278901 d!1263977))

(declare-fun b!4279335 () Bool)

(declare-fun e!2656662 () List!47481)

(declare-fun call!294283 () List!47481)

(assert (=> b!4279335 (= e!2656662 call!294283)))

(declare-fun b!4279336 () Bool)

(declare-fun e!2656664 () List!47481)

(declare-fun lt!1514459 () List!47481)

(assert (=> b!4279336 (= e!2656664 lt!1514459)))

(declare-fun bm!294278 () Bool)

(declare-fun c!729101 () Bool)

(declare-fun c!729099 () Bool)

(assert (=> bm!294278 (= c!729101 c!729099)))

(assert (=> bm!294278 (= call!294283 (++!12103 e!2656664 (efficientList!602 (right!35621 (right!35621 (right!35621 t!3602))) acc!259)))))

(declare-fun d!1263981 () Bool)

(declare-fun lt!1514458 () List!47481)

(assert (=> d!1263981 (= lt!1514458 (++!12103 (list!17275 (left!35291 (right!35621 (right!35621 t!3602)))) (efficientList!602 (right!35621 (right!35621 (right!35621 t!3602))) acc!259)))))

(declare-fun e!2656663 () List!47481)

(assert (=> d!1263981 (= lt!1514458 e!2656663)))

(declare-fun c!729100 () Bool)

(assert (=> d!1263981 (= c!729100 ((_ is Empty!14339) (left!35291 (right!35621 (right!35621 t!3602)))))))

(assert (=> d!1263981 (= (efficientList!602 (left!35291 (right!35621 (right!35621 t!3602))) (efficientList!602 (right!35621 (right!35621 (right!35621 t!3602))) acc!259)) lt!1514458)))

(declare-fun b!4279337 () Bool)

(assert (=> b!4279337 (= e!2656664 (efficientList!603 (xs!17645 (left!35291 (right!35621 (right!35621 t!3602))))))))

(declare-fun b!4279338 () Bool)

(assert (=> b!4279338 (= e!2656663 e!2656662)))

(assert (=> b!4279338 (= c!729099 ((_ is Leaf!22164) (left!35291 (right!35621 (right!35621 t!3602)))))))

(declare-fun b!4279339 () Bool)

(declare-fun lt!1514457 () Unit!66313)

(declare-fun lt!1514460 () Unit!66313)

(assert (=> b!4279339 (= lt!1514457 lt!1514460)))

(declare-fun lt!1514461 () List!47481)

(assert (=> b!4279339 (= (++!12103 (++!12103 lt!1514461 lt!1514459) (efficientList!602 (right!35621 (right!35621 (right!35621 t!3602))) acc!259)) (++!12103 lt!1514461 call!294283))))

(assert (=> b!4279339 (= lt!1514460 (lemmaConcatAssociativity!2734 lt!1514461 lt!1514459 (efficientList!602 (right!35621 (right!35621 (right!35621 t!3602))) acc!259)))))

(assert (=> b!4279339 (= lt!1514459 (list!17275 (right!35621 (left!35291 (right!35621 (right!35621 t!3602))))))))

(assert (=> b!4279339 (= lt!1514461 (list!17275 (left!35291 (left!35291 (right!35621 (right!35621 t!3602))))))))

(assert (=> b!4279339 (= e!2656662 (efficientList!602 (left!35291 (left!35291 (right!35621 (right!35621 t!3602)))) (efficientList!602 (right!35621 (left!35291 (right!35621 (right!35621 t!3602)))) (efficientList!602 (right!35621 (right!35621 (right!35621 t!3602))) acc!259))))))

(declare-fun b!4279340 () Bool)

(assert (=> b!4279340 (= e!2656663 (efficientList!602 (right!35621 (right!35621 (right!35621 t!3602))) acc!259))))

(assert (= (and d!1263981 c!729100) b!4279340))

(assert (= (and d!1263981 (not c!729100)) b!4279338))

(assert (= (and b!4279338 c!729099) b!4279335))

(assert (= (and b!4279338 (not c!729099)) b!4279339))

(assert (= (or b!4279335 b!4279339) bm!294278))

(assert (= (and bm!294278 c!729101) b!4279337))

(assert (= (and bm!294278 (not c!729101)) b!4279336))

(assert (=> bm!294278 m!4875851))

(declare-fun m!4876705 () Bool)

(assert (=> bm!294278 m!4876705))

(assert (=> d!1263981 m!4875633))

(assert (=> d!1263981 m!4875633))

(assert (=> d!1263981 m!4875851))

(declare-fun m!4876707 () Bool)

(assert (=> d!1263981 m!4876707))

(declare-fun m!4876709 () Bool)

(assert (=> b!4279337 m!4876709))

(assert (=> b!4279339 m!4875851))

(declare-fun m!4876711 () Bool)

(assert (=> b!4279339 m!4876711))

(assert (=> b!4279339 m!4876583))

(declare-fun m!4876713 () Bool)

(assert (=> b!4279339 m!4876713))

(declare-fun m!4876715 () Bool)

(assert (=> b!4279339 m!4876715))

(assert (=> b!4279339 m!4876715))

(assert (=> b!4279339 m!4875851))

(declare-fun m!4876717 () Bool)

(assert (=> b!4279339 m!4876717))

(assert (=> b!4279339 m!4876581))

(assert (=> b!4279339 m!4876711))

(declare-fun m!4876719 () Bool)

(assert (=> b!4279339 m!4876719))

(assert (=> b!4279339 m!4875851))

(declare-fun m!4876721 () Bool)

(assert (=> b!4279339 m!4876721))

(assert (=> b!4278901 d!1263981))

(declare-fun b!4279346 () Bool)

(declare-fun e!2656667 () List!47481)

(assert (=> b!4279346 (= e!2656667 (Cons!47357 (h!52777 (list!17275 (left!35291 (left!35291 (left!35291 t!3602))))) (++!12103 (t!354054 (list!17275 (left!35291 (left!35291 (left!35291 t!3602))))) (list!17275 (right!35621 (left!35291 (left!35291 t!3602)))))))))

(declare-fun b!4279345 () Bool)

(assert (=> b!4279345 (= e!2656667 (list!17275 (right!35621 (left!35291 (left!35291 t!3602)))))))

(declare-fun d!1263985 () Bool)

(declare-fun e!2656668 () Bool)

(assert (=> d!1263985 e!2656668))

(declare-fun res!1756760 () Bool)

(assert (=> d!1263985 (=> (not res!1756760) (not e!2656668))))

(declare-fun lt!1514463 () List!47481)

(assert (=> d!1263985 (= res!1756760 (= (content!7491 lt!1514463) ((_ map or) (content!7491 (list!17275 (left!35291 (left!35291 (left!35291 t!3602))))) (content!7491 (list!17275 (right!35621 (left!35291 (left!35291 t!3602))))))))))

(assert (=> d!1263985 (= lt!1514463 e!2656667)))

(declare-fun c!729103 () Bool)

(assert (=> d!1263985 (= c!729103 ((_ is Nil!47357) (list!17275 (left!35291 (left!35291 (left!35291 t!3602))))))))

(assert (=> d!1263985 (= (++!12103 (list!17275 (left!35291 (left!35291 (left!35291 t!3602)))) (list!17275 (right!35621 (left!35291 (left!35291 t!3602))))) lt!1514463)))

(declare-fun b!4279347 () Bool)

(declare-fun res!1756759 () Bool)

(assert (=> b!4279347 (=> (not res!1756759) (not e!2656668))))

(assert (=> b!4279347 (= res!1756759 (= (size!34668 lt!1514463) (+ (size!34668 (list!17275 (left!35291 (left!35291 (left!35291 t!3602))))) (size!34668 (list!17275 (right!35621 (left!35291 (left!35291 t!3602))))))))))

(declare-fun b!4279348 () Bool)

(assert (=> b!4279348 (= e!2656668 (or (not (= (list!17275 (right!35621 (left!35291 (left!35291 t!3602)))) Nil!47357)) (= lt!1514463 (list!17275 (left!35291 (left!35291 (left!35291 t!3602)))))))))

(assert (= (and d!1263985 c!729103) b!4279345))

(assert (= (and d!1263985 (not c!729103)) b!4279346))

(assert (= (and d!1263985 res!1756760) b!4279347))

(assert (= (and b!4279347 res!1756759) b!4279348))

(assert (=> b!4279346 m!4875749))

(declare-fun m!4876727 () Bool)

(assert (=> b!4279346 m!4876727))

(declare-fun m!4876729 () Bool)

(assert (=> d!1263985 m!4876729))

(assert (=> d!1263985 m!4875747))

(declare-fun m!4876733 () Bool)

(assert (=> d!1263985 m!4876733))

(assert (=> d!1263985 m!4875749))

(declare-fun m!4876737 () Bool)

(assert (=> d!1263985 m!4876737))

(declare-fun m!4876739 () Bool)

(assert (=> b!4279347 m!4876739))

(assert (=> b!4279347 m!4875747))

(declare-fun m!4876741 () Bool)

(assert (=> b!4279347 m!4876741))

(assert (=> b!4279347 m!4875749))

(declare-fun m!4876743 () Bool)

(assert (=> b!4279347 m!4876743))

(assert (=> b!4278860 d!1263985))

(declare-fun d!1263987 () Bool)

(declare-fun c!729104 () Bool)

(assert (=> d!1263987 (= c!729104 ((_ is Empty!14339) (left!35291 (left!35291 (left!35291 t!3602)))))))

(declare-fun e!2656669 () List!47481)

(assert (=> d!1263987 (= (list!17275 (left!35291 (left!35291 (left!35291 t!3602)))) e!2656669)))

(declare-fun b!4279352 () Bool)

(declare-fun e!2656670 () List!47481)

(assert (=> b!4279352 (= e!2656670 (++!12103 (list!17275 (left!35291 (left!35291 (left!35291 (left!35291 t!3602))))) (list!17275 (right!35621 (left!35291 (left!35291 (left!35291 t!3602)))))))))

(declare-fun b!4279350 () Bool)

(assert (=> b!4279350 (= e!2656669 e!2656670)))

(declare-fun c!729105 () Bool)

(assert (=> b!4279350 (= c!729105 ((_ is Leaf!22164) (left!35291 (left!35291 (left!35291 t!3602)))))))

(declare-fun b!4279349 () Bool)

(assert (=> b!4279349 (= e!2656669 Nil!47357)))

(declare-fun b!4279351 () Bool)

(assert (=> b!4279351 (= e!2656670 (list!17277 (xs!17645 (left!35291 (left!35291 (left!35291 t!3602))))))))

(assert (= (and d!1263987 c!729104) b!4279349))

(assert (= (and d!1263987 (not c!729104)) b!4279350))

(assert (= (and b!4279350 c!729105) b!4279351))

(assert (= (and b!4279350 (not c!729105)) b!4279352))

(declare-fun m!4876745 () Bool)

(assert (=> b!4279352 m!4876745))

(declare-fun m!4876747 () Bool)

(assert (=> b!4279352 m!4876747))

(assert (=> b!4279352 m!4876745))

(assert (=> b!4279352 m!4876747))

(declare-fun m!4876749 () Bool)

(assert (=> b!4279352 m!4876749))

(declare-fun m!4876751 () Bool)

(assert (=> b!4279351 m!4876751))

(assert (=> b!4278860 d!1263987))

(declare-fun d!1263991 () Bool)

(declare-fun c!729107 () Bool)

(assert (=> d!1263991 (= c!729107 ((_ is Empty!14339) (right!35621 (left!35291 (left!35291 t!3602)))))))

(declare-fun e!2656672 () List!47481)

(assert (=> d!1263991 (= (list!17275 (right!35621 (left!35291 (left!35291 t!3602)))) e!2656672)))

(declare-fun b!4279358 () Bool)

(declare-fun e!2656673 () List!47481)

(assert (=> b!4279358 (= e!2656673 (++!12103 (list!17275 (left!35291 (right!35621 (left!35291 (left!35291 t!3602))))) (list!17275 (right!35621 (right!35621 (left!35291 (left!35291 t!3602)))))))))

(declare-fun b!4279356 () Bool)

(assert (=> b!4279356 (= e!2656672 e!2656673)))

(declare-fun c!729108 () Bool)

(assert (=> b!4279356 (= c!729108 ((_ is Leaf!22164) (right!35621 (left!35291 (left!35291 t!3602)))))))

(declare-fun b!4279355 () Bool)

(assert (=> b!4279355 (= e!2656672 Nil!47357)))

(declare-fun b!4279357 () Bool)

(assert (=> b!4279357 (= e!2656673 (list!17277 (xs!17645 (right!35621 (left!35291 (left!35291 t!3602))))))))

(assert (= (and d!1263991 c!729107) b!4279355))

(assert (= (and d!1263991 (not c!729107)) b!4279356))

(assert (= (and b!4279356 c!729108) b!4279357))

(assert (= (and b!4279356 (not c!729108)) b!4279358))

(declare-fun m!4876755 () Bool)

(assert (=> b!4279358 m!4876755))

(declare-fun m!4876757 () Bool)

(assert (=> b!4279358 m!4876757))

(assert (=> b!4279358 m!4876755))

(assert (=> b!4279358 m!4876757))

(declare-fun m!4876759 () Bool)

(assert (=> b!4279358 m!4876759))

(declare-fun m!4876761 () Bool)

(assert (=> b!4279357 m!4876761))

(assert (=> b!4278860 d!1263991))

(declare-fun d!1263995 () Bool)

(declare-fun lt!1514466 () Int)

(assert (=> d!1263995 (= lt!1514466 (size!34668 (list!17275 (left!35291 (left!35291 t!3602)))))))

(assert (=> d!1263995 (= lt!1514466 (ite ((_ is Empty!14339) (left!35291 (left!35291 t!3602))) 0 (ite ((_ is Leaf!22164) (left!35291 (left!35291 t!3602))) (csize!28909 (left!35291 (left!35291 t!3602))) (csize!28908 (left!35291 (left!35291 t!3602))))))))

(assert (=> d!1263995 (= (size!34671 (left!35291 (left!35291 t!3602))) lt!1514466)))

(declare-fun bs!602648 () Bool)

(assert (= bs!602648 d!1263995))

(assert (=> bs!602648 m!4875083))

(assert (=> bs!602648 m!4875083))

(assert (=> bs!602648 m!4875743))

(assert (=> d!1263567 d!1263995))

(declare-fun d!1263999 () Bool)

(declare-fun lt!1514468 () Int)

(assert (=> d!1263999 (= lt!1514468 (size!34668 (list!17275 (right!35621 (left!35291 t!3602)))))))

(assert (=> d!1263999 (= lt!1514468 (ite ((_ is Empty!14339) (right!35621 (left!35291 t!3602))) 0 (ite ((_ is Leaf!22164) (right!35621 (left!35291 t!3602))) (csize!28909 (right!35621 (left!35291 t!3602))) (csize!28908 (right!35621 (left!35291 t!3602))))))))

(assert (=> d!1263999 (= (size!34671 (right!35621 (left!35291 t!3602))) lt!1514468)))

(declare-fun bs!602649 () Bool)

(assert (= bs!602649 d!1263999))

(assert (=> bs!602649 m!4875085))

(assert (=> bs!602649 m!4875085))

(assert (=> bs!602649 m!4875745))

(assert (=> d!1263567 d!1263999))

(declare-fun d!1264001 () Bool)

(declare-fun c!729111 () Bool)

(assert (=> d!1264001 (= c!729111 ((_ is Nil!47357) lt!1514287))))

(declare-fun e!2656676 () (InoxSet T!79990))

(assert (=> d!1264001 (= (content!7491 lt!1514287) e!2656676)))

(declare-fun b!4279363 () Bool)

(assert (=> b!4279363 (= e!2656676 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4279364 () Bool)

(assert (=> b!4279364 (= e!2656676 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 lt!1514287) true) (content!7491 (t!354054 lt!1514287))))))

(assert (= (and d!1264001 c!729111) b!4279363))

(assert (= (and d!1264001 (not c!729111)) b!4279364))

(declare-fun m!4876765 () Bool)

(assert (=> b!4279364 m!4876765))

(declare-fun m!4876767 () Bool)

(assert (=> b!4279364 m!4876767))

(assert (=> d!1263525 d!1264001))

(assert (=> d!1263525 d!1263689))

(assert (=> d!1263525 d!1263603))

(declare-fun d!1264005 () Bool)

(declare-fun res!1756761 () Bool)

(declare-fun e!2656677 () Bool)

(assert (=> d!1264005 (=> (not res!1756761) (not e!2656677))))

(assert (=> d!1264005 (= res!1756761 (= (csize!28908 (right!35621 (left!35291 t!3602))) (+ (size!34671 (left!35291 (right!35621 (left!35291 t!3602)))) (size!34671 (right!35621 (right!35621 (left!35291 t!3602)))))))))

(assert (=> d!1264005 (= (inv!62723 (right!35621 (left!35291 t!3602))) e!2656677)))

(declare-fun b!4279365 () Bool)

(declare-fun res!1756762 () Bool)

(assert (=> b!4279365 (=> (not res!1756762) (not e!2656677))))

(assert (=> b!4279365 (= res!1756762 (and (not (= (left!35291 (right!35621 (left!35291 t!3602))) Empty!14339)) (not (= (right!35621 (right!35621 (left!35291 t!3602))) Empty!14339))))))

(declare-fun b!4279366 () Bool)

(declare-fun res!1756763 () Bool)

(assert (=> b!4279366 (=> (not res!1756763) (not e!2656677))))

(assert (=> b!4279366 (= res!1756763 (= (cheight!14550 (right!35621 (left!35291 t!3602))) (+ (max!0 (height!1889 (left!35291 (right!35621 (left!35291 t!3602)))) (height!1889 (right!35621 (right!35621 (left!35291 t!3602))))) 1)))))

(declare-fun b!4279367 () Bool)

(assert (=> b!4279367 (= e!2656677 (<= 0 (cheight!14550 (right!35621 (left!35291 t!3602)))))))

(assert (= (and d!1264005 res!1756761) b!4279365))

(assert (= (and b!4279365 res!1756762) b!4279366))

(assert (= (and b!4279366 res!1756763) b!4279367))

(declare-fun m!4876769 () Bool)

(assert (=> d!1264005 m!4876769))

(declare-fun m!4876771 () Bool)

(assert (=> d!1264005 m!4876771))

(declare-fun m!4876773 () Bool)

(assert (=> b!4279366 m!4876773))

(declare-fun m!4876775 () Bool)

(assert (=> b!4279366 m!4876775))

(assert (=> b!4279366 m!4876773))

(assert (=> b!4279366 m!4876775))

(declare-fun m!4876777 () Bool)

(assert (=> b!4279366 m!4876777))

(assert (=> b!4278868 d!1264005))

(declare-fun d!1264007 () Bool)

(declare-fun c!729112 () Bool)

(assert (=> d!1264007 (= c!729112 ((_ is Nil!47357) lt!1514250))))

(declare-fun e!2656678 () (InoxSet T!79990))

(assert (=> d!1264007 (= (content!7491 lt!1514250) e!2656678)))

(declare-fun b!4279368 () Bool)

(assert (=> b!4279368 (= e!2656678 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4279369 () Bool)

(assert (=> b!4279369 (= e!2656678 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 lt!1514250) true) (content!7491 (t!354054 lt!1514250))))))

(assert (= (and d!1264007 c!729112) b!4279368))

(assert (= (and d!1264007 (not c!729112)) b!4279369))

(declare-fun m!4876779 () Bool)

(assert (=> b!4279369 m!4876779))

(declare-fun m!4876781 () Bool)

(assert (=> b!4279369 m!4876781))

(assert (=> d!1263421 d!1264007))

(assert (=> d!1263421 d!1263931))

(assert (=> d!1263421 d!1263541))

(declare-fun d!1264009 () Bool)

(declare-fun c!729113 () Bool)

(assert (=> d!1264009 (= c!729113 ((_ is Nil!47357) (t!354054 acc!259)))))

(declare-fun e!2656679 () (InoxSet T!79990))

(assert (=> d!1264009 (= (content!7491 (t!354054 acc!259)) e!2656679)))

(declare-fun b!4279370 () Bool)

(assert (=> b!4279370 (= e!2656679 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4279371 () Bool)

(assert (=> b!4279371 (= e!2656679 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 (t!354054 acc!259)) true) (content!7491 (t!354054 (t!354054 acc!259)))))))

(assert (= (and d!1264009 c!729113) b!4279370))

(assert (= (and d!1264009 (not c!729113)) b!4279371))

(declare-fun m!4876783 () Bool)

(assert (=> b!4279371 m!4876783))

(declare-fun m!4876785 () Bool)

(assert (=> b!4279371 m!4876785))

(assert (=> b!4278785 d!1264009))

(declare-fun d!1264011 () Bool)

(declare-fun c!729114 () Bool)

(assert (=> d!1264011 (= c!729114 ((_ is Nil!47357) (t!354054 lt!1514244)))))

(declare-fun e!2656680 () (InoxSet T!79990))

(assert (=> d!1264011 (= (content!7491 (t!354054 lt!1514244)) e!2656680)))

(declare-fun b!4279372 () Bool)

(assert (=> b!4279372 (= e!2656680 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4279373 () Bool)

(assert (=> b!4279373 (= e!2656680 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 (t!354054 lt!1514244)) true) (content!7491 (t!354054 (t!354054 lt!1514244)))))))

(assert (= (and d!1264011 c!729114) b!4279372))

(assert (= (and d!1264011 (not c!729114)) b!4279373))

(declare-fun m!4876787 () Bool)

(assert (=> b!4279373 m!4876787))

(declare-fun m!4876789 () Bool)

(assert (=> b!4279373 m!4876789))

(assert (=> b!4278878 d!1264011))

(declare-fun d!1264013 () Bool)

(assert (=> d!1264013 (= (inv!62720 (xs!17645 (left!35291 (right!35621 t!3602)))) (<= (size!34668 (innerList!14399 (xs!17645 (left!35291 (right!35621 t!3602))))) 2147483647))))

(declare-fun bs!602650 () Bool)

(assert (= bs!602650 d!1264013))

(declare-fun m!4876791 () Bool)

(assert (=> bs!602650 m!4876791))

(assert (=> b!4278918 d!1264013))

(declare-fun d!1264015 () Bool)

(declare-fun c!729115 () Bool)

(assert (=> d!1264015 (= c!729115 ((_ is Nil!47357) lt!1514263))))

(declare-fun e!2656681 () (InoxSet T!79990))

(assert (=> d!1264015 (= (content!7491 lt!1514263) e!2656681)))

(declare-fun b!4279374 () Bool)

(assert (=> b!4279374 (= e!2656681 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4279375 () Bool)

(assert (=> b!4279375 (= e!2656681 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 lt!1514263) true) (content!7491 (t!354054 lt!1514263))))))

(assert (= (and d!1264015 c!729115) b!4279374))

(assert (= (and d!1264015 (not c!729115)) b!4279375))

(declare-fun m!4876793 () Bool)

(assert (=> b!4279375 m!4876793))

(declare-fun m!4876795 () Bool)

(assert (=> b!4279375 m!4876795))

(assert (=> d!1263459 d!1264015))

(declare-fun d!1264017 () Bool)

(declare-fun c!729116 () Bool)

(assert (=> d!1264017 (= c!729116 ((_ is Nil!47357) (list!17275 (right!35621 t!3602))))))

(declare-fun e!2656682 () (InoxSet T!79990))

(assert (=> d!1264017 (= (content!7491 (list!17275 (right!35621 t!3602))) e!2656682)))

(declare-fun b!4279376 () Bool)

(assert (=> b!4279376 (= e!2656682 ((as const (Array T!79990 Bool)) false))))

(declare-fun b!4279377 () Bool)

(assert (=> b!4279377 (= e!2656682 ((_ map or) (store ((as const (Array T!79990 Bool)) false) (h!52777 (list!17275 (right!35621 t!3602))) true) (content!7491 (t!354054 (list!17275 (right!35621 t!3602))))))))

(assert (= (and d!1264017 c!729116) b!4279376))

(assert (= (and d!1264017 (not c!729116)) b!4279377))

(declare-fun m!4876797 () Bool)

(assert (=> b!4279377 m!4876797))

(assert (=> b!4279377 m!4875939))

(assert (=> d!1263459 d!1264017))

(assert (=> d!1263459 d!1263541))

(declare-fun d!1264019 () Bool)

(declare-fun lt!1514469 () Int)

(assert (=> d!1264019 (>= lt!1514469 0)))

(declare-fun e!2656683 () Int)

(assert (=> d!1264019 (= lt!1514469 e!2656683)))

(declare-fun c!729117 () Bool)

(assert (=> d!1264019 (= c!729117 ((_ is Nil!47357) lt!1514307))))

(assert (=> d!1264019 (= (size!34668 lt!1514307) lt!1514469)))

(declare-fun b!4279378 () Bool)

(assert (=> b!4279378 (= e!2656683 0)))

(declare-fun b!4279379 () Bool)

(assert (=> b!4279379 (= e!2656683 (+ 1 (size!34668 (t!354054 lt!1514307))))))

(assert (= (and d!1264019 c!729117) b!4279378))

(assert (= (and d!1264019 (not c!729117)) b!4279379))

(declare-fun m!4876799 () Bool)

(assert (=> b!4279379 m!4876799))

(assert (=> b!4278889 d!1264019))

(declare-fun d!1264021 () Bool)

(declare-fun lt!1514470 () Int)

(assert (=> d!1264021 (>= lt!1514470 0)))

(declare-fun e!2656684 () Int)

(assert (=> d!1264021 (= lt!1514470 e!2656684)))

(declare-fun c!729118 () Bool)

(assert (=> d!1264021 (= c!729118 ((_ is Nil!47357) (++!12103 lt!1514232 lt!1514230)))))

(assert (=> d!1264021 (= (size!34668 (++!12103 lt!1514232 lt!1514230)) lt!1514470)))

(declare-fun b!4279380 () Bool)

(assert (=> b!4279380 (= e!2656684 0)))

(declare-fun b!4279381 () Bool)

(assert (=> b!4279381 (= e!2656684 (+ 1 (size!34668 (t!354054 (++!12103 lt!1514232 lt!1514230)))))))

(assert (= (and d!1264021 c!729118) b!4279380))

(assert (= (and d!1264021 (not c!729118)) b!4279381))

(assert (=> b!4279381 m!4876105))

(assert (=> b!4278889 d!1264021))

(assert (=> b!4278889 d!1263501))

(declare-fun b!4279383 () Bool)

(declare-fun e!2656685 () List!47481)

(assert (=> b!4279383 (= e!2656685 (Cons!47357 (h!52777 (t!354054 (t!354054 (++!12103 lt!1514194 lt!1514195)))) (++!12103 (t!354054 (t!354054 (t!354054 (++!12103 lt!1514194 lt!1514195)))) acc!259)))))

(declare-fun b!4279382 () Bool)

(assert (=> b!4279382 (= e!2656685 acc!259)))

(declare-fun d!1264023 () Bool)

(declare-fun e!2656686 () Bool)

(assert (=> d!1264023 e!2656686))

(declare-fun res!1756765 () Bool)

(assert (=> d!1264023 (=> (not res!1756765) (not e!2656686))))

(declare-fun lt!1514471 () List!47481)

(assert (=> d!1264023 (= res!1756765 (= (content!7491 lt!1514471) ((_ map or) (content!7491 (t!354054 (t!354054 (++!12103 lt!1514194 lt!1514195)))) (content!7491 acc!259))))))

(assert (=> d!1264023 (= lt!1514471 e!2656685)))

(declare-fun c!729119 () Bool)

(assert (=> d!1264023 (= c!729119 ((_ is Nil!47357) (t!354054 (t!354054 (++!12103 lt!1514194 lt!1514195)))))))

(assert (=> d!1264023 (= (++!12103 (t!354054 (t!354054 (++!12103 lt!1514194 lt!1514195))) acc!259) lt!1514471)))

(declare-fun b!4279384 () Bool)

(declare-fun res!1756764 () Bool)

(assert (=> b!4279384 (=> (not res!1756764) (not e!2656686))))

(assert (=> b!4279384 (= res!1756764 (= (size!34668 lt!1514471) (+ (size!34668 (t!354054 (t!354054 (++!12103 lt!1514194 lt!1514195)))) (size!34668 acc!259))))))

(declare-fun b!4279385 () Bool)

(assert (=> b!4279385 (= e!2656686 (or (not (= acc!259 Nil!47357)) (= lt!1514471 (t!354054 (t!354054 (++!12103 lt!1514194 lt!1514195))))))))

(assert (= (and d!1264023 c!729119) b!4279382))

(assert (= (and d!1264023 (not c!729119)) b!4279383))

(assert (= (and d!1264023 res!1756765) b!4279384))

(assert (= (and b!4279384 res!1756764) b!4279385))

(declare-fun m!4876801 () Bool)

(assert (=> b!4279383 m!4876801))

(declare-fun m!4876803 () Bool)

(assert (=> d!1264023 m!4876803))

(assert (=> d!1264023 m!4876525))

(assert (=> d!1264023 m!4875111))

(declare-fun m!4876805 () Bool)

(assert (=> b!4279384 m!4876805))

(assert (=> b!4279384 m!4876333))

(assert (=> b!4279384 m!4875117))

(assert (=> b!4278593 d!1264023))

(declare-fun d!1264025 () Bool)

(assert (=> d!1264025 (= (max!0 (height!1889 (left!35291 (left!35291 t!3602))) (height!1889 (right!35621 (left!35291 t!3602)))) (ite (< (height!1889 (left!35291 (left!35291 t!3602))) (height!1889 (right!35621 (left!35291 t!3602)))) (height!1889 (right!35621 (left!35291 t!3602))) (height!1889 (left!35291 (left!35291 t!3602)))))))

(assert (=> b!4278813 d!1264025))

(declare-fun d!1264027 () Bool)

(assert (=> d!1264027 (= (height!1889 (left!35291 (left!35291 t!3602))) (ite ((_ is Empty!14339) (left!35291 (left!35291 t!3602))) 0 (ite ((_ is Leaf!22164) (left!35291 (left!35291 t!3602))) 1 (cheight!14550 (left!35291 (left!35291 t!3602))))))))

(assert (=> b!4278813 d!1264027))

(declare-fun d!1264029 () Bool)

(assert (=> d!1264029 (= (height!1889 (right!35621 (left!35291 t!3602))) (ite ((_ is Empty!14339) (right!35621 (left!35291 t!3602))) 0 (ite ((_ is Leaf!22164) (right!35621 (left!35291 t!3602))) 1 (cheight!14550 (right!35621 (left!35291 t!3602))))))))

(assert (=> b!4278813 d!1264029))

(declare-fun tp!1309092 () Bool)

(declare-fun b!4279386 () Bool)

(declare-fun tp!1309093 () Bool)

(declare-fun e!2656687 () Bool)

(assert (=> b!4279386 (= e!2656687 (and (inv!62719 (left!35291 (left!35291 (left!35291 (left!35291 t!3602))))) tp!1309092 (inv!62719 (right!35621 (left!35291 (left!35291 (left!35291 t!3602))))) tp!1309093))))

(declare-fun b!4279388 () Bool)

(declare-fun e!2656688 () Bool)

(declare-fun tp!1309091 () Bool)

(assert (=> b!4279388 (= e!2656688 tp!1309091)))

(declare-fun b!4279387 () Bool)

(assert (=> b!4279387 (= e!2656687 (and (inv!62720 (xs!17645 (left!35291 (left!35291 (left!35291 t!3602))))) e!2656688))))

(assert (=> b!4278908 (= tp!1309076 (and (inv!62719 (left!35291 (left!35291 (left!35291 t!3602)))) e!2656687))))

(assert (= (and b!4278908 ((_ is Node!14339) (left!35291 (left!35291 (left!35291 t!3602))))) b!4279386))

(assert (= b!4279387 b!4279388))

(assert (= (and b!4278908 ((_ is Leaf!22164) (left!35291 (left!35291 (left!35291 t!3602))))) b!4279387))

(declare-fun m!4876807 () Bool)

(assert (=> b!4279386 m!4876807))

(declare-fun m!4876809 () Bool)

(assert (=> b!4279386 m!4876809))

(declare-fun m!4876811 () Bool)

(assert (=> b!4279387 m!4876811))

(assert (=> b!4278908 m!4875873))

(declare-fun tp!1309096 () Bool)

(declare-fun e!2656689 () Bool)

(declare-fun b!4279389 () Bool)

(declare-fun tp!1309095 () Bool)

(assert (=> b!4279389 (= e!2656689 (and (inv!62719 (left!35291 (right!35621 (left!35291 (left!35291 t!3602))))) tp!1309095 (inv!62719 (right!35621 (right!35621 (left!35291 (left!35291 t!3602))))) tp!1309096))))

(declare-fun b!4279391 () Bool)

(declare-fun e!2656690 () Bool)

(declare-fun tp!1309094 () Bool)

(assert (=> b!4279391 (= e!2656690 tp!1309094)))

(declare-fun b!4279390 () Bool)

(assert (=> b!4279390 (= e!2656689 (and (inv!62720 (xs!17645 (right!35621 (left!35291 (left!35291 t!3602))))) e!2656690))))

(assert (=> b!4278908 (= tp!1309077 (and (inv!62719 (right!35621 (left!35291 (left!35291 t!3602)))) e!2656689))))

(assert (= (and b!4278908 ((_ is Node!14339) (right!35621 (left!35291 (left!35291 t!3602))))) b!4279389))

(assert (= b!4279390 b!4279391))

(assert (= (and b!4278908 ((_ is Leaf!22164) (right!35621 (left!35291 (left!35291 t!3602))))) b!4279390))

(declare-fun m!4876813 () Bool)

(assert (=> b!4279389 m!4876813))

(declare-fun m!4876815 () Bool)

(assert (=> b!4279389 m!4876815))

(declare-fun m!4876817 () Bool)

(assert (=> b!4279390 m!4876817))

(assert (=> b!4278908 m!4875875))

(declare-fun b!4279392 () Bool)

(declare-fun e!2656691 () Bool)

(declare-fun tp!1309097 () Bool)

(assert (=> b!4279392 (= e!2656691 (and tp_is_empty!22953 tp!1309097))))

(assert (=> b!4278922 (= tp!1309087 e!2656691)))

(assert (= (and b!4278922 ((_ is Cons!47357) (innerList!14399 (xs!17645 (right!35621 (right!35621 t!3602)))))) b!4279392))

(declare-fun b!4279393 () Bool)

(declare-fun e!2656692 () Bool)

(declare-fun tp!1309098 () Bool)

(assert (=> b!4279393 (= e!2656692 (and tp_is_empty!22953 tp!1309098))))

(assert (=> b!4278916 (= tp!1309083 e!2656692)))

(assert (= (and b!4278916 ((_ is Cons!47357) (t!354054 (innerList!14399 (xs!17645 (left!35291 t!3602)))))) b!4279393))

(declare-fun b!4279394 () Bool)

(declare-fun tp!1309101 () Bool)

(declare-fun e!2656693 () Bool)

(declare-fun tp!1309100 () Bool)

(assert (=> b!4279394 (= e!2656693 (and (inv!62719 (left!35291 (left!35291 (right!35621 (left!35291 t!3602))))) tp!1309100 (inv!62719 (right!35621 (left!35291 (right!35621 (left!35291 t!3602))))) tp!1309101))))

(declare-fun b!4279396 () Bool)

(declare-fun e!2656694 () Bool)

(declare-fun tp!1309099 () Bool)

(assert (=> b!4279396 (= e!2656694 tp!1309099)))

(declare-fun b!4279395 () Bool)

(assert (=> b!4279395 (= e!2656693 (and (inv!62720 (xs!17645 (left!35291 (right!35621 (left!35291 t!3602))))) e!2656694))))

(assert (=> b!4278911 (= tp!1309079 (and (inv!62719 (left!35291 (right!35621 (left!35291 t!3602)))) e!2656693))))

(assert (= (and b!4278911 ((_ is Node!14339) (left!35291 (right!35621 (left!35291 t!3602))))) b!4279394))

(assert (= b!4279395 b!4279396))

(assert (= (and b!4278911 ((_ is Leaf!22164) (left!35291 (right!35621 (left!35291 t!3602))))) b!4279395))

(declare-fun m!4876819 () Bool)

(assert (=> b!4279394 m!4876819))

(declare-fun m!4876821 () Bool)

(assert (=> b!4279394 m!4876821))

(declare-fun m!4876823 () Bool)

(assert (=> b!4279395 m!4876823))

(assert (=> b!4278911 m!4875879))

(declare-fun tp!1309104 () Bool)

(declare-fun b!4279397 () Bool)

(declare-fun tp!1309103 () Bool)

(declare-fun e!2656695 () Bool)

(assert (=> b!4279397 (= e!2656695 (and (inv!62719 (left!35291 (right!35621 (right!35621 (left!35291 t!3602))))) tp!1309103 (inv!62719 (right!35621 (right!35621 (right!35621 (left!35291 t!3602))))) tp!1309104))))

(declare-fun b!4279399 () Bool)

(declare-fun e!2656696 () Bool)

(declare-fun tp!1309102 () Bool)

(assert (=> b!4279399 (= e!2656696 tp!1309102)))

(declare-fun b!4279398 () Bool)

(assert (=> b!4279398 (= e!2656695 (and (inv!62720 (xs!17645 (right!35621 (right!35621 (left!35291 t!3602))))) e!2656696))))

(assert (=> b!4278911 (= tp!1309080 (and (inv!62719 (right!35621 (right!35621 (left!35291 t!3602)))) e!2656695))))

(assert (= (and b!4278911 ((_ is Node!14339) (right!35621 (right!35621 (left!35291 t!3602))))) b!4279397))

(assert (= b!4279398 b!4279399))

(assert (= (and b!4278911 ((_ is Leaf!22164) (right!35621 (right!35621 (left!35291 t!3602))))) b!4279398))

(declare-fun m!4876825 () Bool)

(assert (=> b!4279397 m!4876825))

(declare-fun m!4876827 () Bool)

(assert (=> b!4279397 m!4876827))

(declare-fun m!4876829 () Bool)

(assert (=> b!4279398 m!4876829))

(assert (=> b!4278911 m!4875881))

(declare-fun b!4279400 () Bool)

(declare-fun e!2656697 () Bool)

(declare-fun tp!1309105 () Bool)

(assert (=> b!4279400 (= e!2656697 (and tp_is_empty!22953 tp!1309105))))

(assert (=> b!4278910 (= tp!1309075 e!2656697)))

(assert (= (and b!4278910 ((_ is Cons!47357) (innerList!14399 (xs!17645 (left!35291 (left!35291 t!3602)))))) b!4279400))

(declare-fun b!4279401 () Bool)

(declare-fun e!2656698 () Bool)

(declare-fun tp!1309106 () Bool)

(assert (=> b!4279401 (= e!2656698 (and tp_is_empty!22953 tp!1309106))))

(assert (=> b!4278913 (= tp!1309078 e!2656698)))

(assert (= (and b!4278913 ((_ is Cons!47357) (innerList!14399 (xs!17645 (right!35621 (left!35291 t!3602)))))) b!4279401))

(declare-fun e!2656699 () Bool)

(declare-fun b!4279402 () Bool)

(declare-fun tp!1309109 () Bool)

(declare-fun tp!1309108 () Bool)

(assert (=> b!4279402 (= e!2656699 (and (inv!62719 (left!35291 (left!35291 (left!35291 (right!35621 t!3602))))) tp!1309108 (inv!62719 (right!35621 (left!35291 (left!35291 (right!35621 t!3602))))) tp!1309109))))

(declare-fun b!4279404 () Bool)

(declare-fun e!2656700 () Bool)

(declare-fun tp!1309107 () Bool)

(assert (=> b!4279404 (= e!2656700 tp!1309107)))

(declare-fun b!4279403 () Bool)

(assert (=> b!4279403 (= e!2656699 (and (inv!62720 (xs!17645 (left!35291 (left!35291 (right!35621 t!3602))))) e!2656700))))

(assert (=> b!4278917 (= tp!1309085 (and (inv!62719 (left!35291 (left!35291 (right!35621 t!3602)))) e!2656699))))

(assert (= (and b!4278917 ((_ is Node!14339) (left!35291 (left!35291 (right!35621 t!3602))))) b!4279402))

(assert (= b!4279403 b!4279404))

(assert (= (and b!4278917 ((_ is Leaf!22164) (left!35291 (left!35291 (right!35621 t!3602))))) b!4279403))

(declare-fun m!4876831 () Bool)

(assert (=> b!4279402 m!4876831))

(declare-fun m!4876834 () Bool)

(assert (=> b!4279402 m!4876834))

(declare-fun m!4876837 () Bool)

(assert (=> b!4279403 m!4876837))

(assert (=> b!4278917 m!4875885))

(declare-fun tp!1309111 () Bool)

(declare-fun e!2656701 () Bool)

(declare-fun b!4279405 () Bool)

(declare-fun tp!1309112 () Bool)

(assert (=> b!4279405 (= e!2656701 (and (inv!62719 (left!35291 (right!35621 (left!35291 (right!35621 t!3602))))) tp!1309111 (inv!62719 (right!35621 (right!35621 (left!35291 (right!35621 t!3602))))) tp!1309112))))

(declare-fun b!4279407 () Bool)

(declare-fun e!2656702 () Bool)

(declare-fun tp!1309110 () Bool)

(assert (=> b!4279407 (= e!2656702 tp!1309110)))

(declare-fun b!4279406 () Bool)

(assert (=> b!4279406 (= e!2656701 (and (inv!62720 (xs!17645 (right!35621 (left!35291 (right!35621 t!3602))))) e!2656702))))

(assert (=> b!4278917 (= tp!1309086 (and (inv!62719 (right!35621 (left!35291 (right!35621 t!3602)))) e!2656701))))

(assert (= (and b!4278917 ((_ is Node!14339) (right!35621 (left!35291 (right!35621 t!3602))))) b!4279405))

(assert (= b!4279406 b!4279407))

(assert (= (and b!4278917 ((_ is Leaf!22164) (right!35621 (left!35291 (right!35621 t!3602))))) b!4279406))

(declare-fun m!4876839 () Bool)

(assert (=> b!4279405 m!4876839))

(declare-fun m!4876841 () Bool)

(assert (=> b!4279405 m!4876841))

(declare-fun m!4876843 () Bool)

(assert (=> b!4279406 m!4876843))

(assert (=> b!4278917 m!4875887))

(declare-fun b!4279408 () Bool)

(declare-fun e!2656703 () Bool)

(declare-fun tp!1309113 () Bool)

(assert (=> b!4279408 (= e!2656703 (and tp_is_empty!22953 tp!1309113))))

(assert (=> b!4278914 (= tp!1309081 e!2656703)))

(assert (= (and b!4278914 ((_ is Cons!47357) (t!354054 (t!354054 (t!354054 acc!259))))) b!4279408))

(declare-fun b!4279409 () Bool)

(declare-fun tp!1309115 () Bool)

(declare-fun e!2656704 () Bool)

(declare-fun tp!1309116 () Bool)

(assert (=> b!4279409 (= e!2656704 (and (inv!62719 (left!35291 (left!35291 (right!35621 (right!35621 t!3602))))) tp!1309115 (inv!62719 (right!35621 (left!35291 (right!35621 (right!35621 t!3602))))) tp!1309116))))

(declare-fun b!4279411 () Bool)

(declare-fun e!2656705 () Bool)

(declare-fun tp!1309114 () Bool)

(assert (=> b!4279411 (= e!2656705 tp!1309114)))

(declare-fun b!4279410 () Bool)

(assert (=> b!4279410 (= e!2656704 (and (inv!62720 (xs!17645 (left!35291 (right!35621 (right!35621 t!3602))))) e!2656705))))

(assert (=> b!4278920 (= tp!1309088 (and (inv!62719 (left!35291 (right!35621 (right!35621 t!3602)))) e!2656704))))

(assert (= (and b!4278920 ((_ is Node!14339) (left!35291 (right!35621 (right!35621 t!3602))))) b!4279409))

(assert (= b!4279410 b!4279411))

(assert (= (and b!4278920 ((_ is Leaf!22164) (left!35291 (right!35621 (right!35621 t!3602))))) b!4279410))

(declare-fun m!4876845 () Bool)

(assert (=> b!4279409 m!4876845))

(declare-fun m!4876847 () Bool)

(assert (=> b!4279409 m!4876847))

(declare-fun m!4876849 () Bool)

(assert (=> b!4279410 m!4876849))

(assert (=> b!4278920 m!4875891))

(declare-fun b!4279414 () Bool)

(declare-fun tp!1309118 () Bool)

(declare-fun e!2656707 () Bool)

(declare-fun tp!1309119 () Bool)

(assert (=> b!4279414 (= e!2656707 (and (inv!62719 (left!35291 (right!35621 (right!35621 (right!35621 t!3602))))) tp!1309118 (inv!62719 (right!35621 (right!35621 (right!35621 (right!35621 t!3602))))) tp!1309119))))

(declare-fun b!4279416 () Bool)

(declare-fun e!2656708 () Bool)

(declare-fun tp!1309117 () Bool)

(assert (=> b!4279416 (= e!2656708 tp!1309117)))

(declare-fun b!4279415 () Bool)

(assert (=> b!4279415 (= e!2656707 (and (inv!62720 (xs!17645 (right!35621 (right!35621 (right!35621 t!3602))))) e!2656708))))

(assert (=> b!4278920 (= tp!1309089 (and (inv!62719 (right!35621 (right!35621 (right!35621 t!3602)))) e!2656707))))

(assert (= (and b!4278920 ((_ is Node!14339) (right!35621 (right!35621 (right!35621 t!3602))))) b!4279414))

(assert (= b!4279415 b!4279416))

(assert (= (and b!4278920 ((_ is Leaf!22164) (right!35621 (right!35621 (right!35621 t!3602))))) b!4279415))

(declare-fun m!4876851 () Bool)

(assert (=> b!4279414 m!4876851))

(declare-fun m!4876853 () Bool)

(assert (=> b!4279414 m!4876853))

(declare-fun m!4876855 () Bool)

(assert (=> b!4279415 m!4876855))

(assert (=> b!4278920 m!4875893))

(declare-fun b!4279417 () Bool)

(declare-fun e!2656709 () Bool)

(declare-fun tp!1309120 () Bool)

(assert (=> b!4279417 (= e!2656709 (and tp_is_empty!22953 tp!1309120))))

(assert (=> b!4278923 (= tp!1309090 e!2656709)))

(assert (= (and b!4278923 ((_ is Cons!47357) (t!354054 (t!354054 (innerList!14399 (xs!17645 t!3602)))))) b!4279417))

(declare-fun b!4279418 () Bool)

(declare-fun e!2656710 () Bool)

(declare-fun tp!1309121 () Bool)

(assert (=> b!4279418 (= e!2656710 (and tp_is_empty!22953 tp!1309121))))

(assert (=> b!4278919 (= tp!1309084 e!2656710)))

(assert (= (and b!4278919 ((_ is Cons!47357) (innerList!14399 (xs!17645 (left!35291 (right!35621 t!3602)))))) b!4279418))

(declare-fun b!4279419 () Bool)

(declare-fun e!2656711 () Bool)

(declare-fun tp!1309122 () Bool)

(assert (=> b!4279419 (= e!2656711 (and tp_is_empty!22953 tp!1309122))))

(assert (=> b!4278915 (= tp!1309082 e!2656711)))

(assert (= (and b!4278915 ((_ is Cons!47357) (t!354054 (innerList!14399 (xs!17645 (right!35621 t!3602)))))) b!4279419))

(check-sat (not b!4279251) (not b!4279375) (not d!1263965) (not b!4278943) (not b!4279369) (not d!1263745) (not b!4279366) (not b!4279238) (not d!1263679) (not b!4279275) (not b!4279198) (not b!4279083) (not d!1263909) (not b!4278920) (not d!1263807) (not b!4279408) (not b!4278973) (not b!4279410) (not b!4279081) (not b!4279077) (not b!4279314) (not b!4278931) (not b!4279411) (not b!4278977) (not b!4279015) (not b!4279419) (not b!4279041) (not b!4279239) (not b!4279181) (not b!4279037) (not b!4278941) (not d!1263999) (not b!4279011) (not b!4279072) (not bm!294278) (not b!4279027) (not b!4278978) (not b!4279347) (not b!4279283) (not b!4278957) (not d!1263757) (not b!4279168) (not b!4278962) (not d!1263769) (not b!4279005) (not b!4279221) (not b!4279148) (not d!1263897) (not b!4279059) (not b!4279223) (not b!4279158) (not b!4279384) (not b!4279248) (not d!1263823) (not d!1263935) (not b!4279402) (not b!4279329) (not b!4278946) (not b!4279002) (not d!1263627) (not b!4279289) (not d!1263649) (not b!4279000) (not b!4279212) (not b!4279009) (not b!4279049) (not b!4279091) (not b!4279057) (not b!4279249) (not b!4278971) (not d!1263985) (not bm!294276) (not b!4279315) (not d!1263859) (not d!1263637) (not b!4279031) tp_is_empty!22953 (not b!4278934) (not d!1263969) (not b!4279260) (not b!4279167) (not b!4279397) (not b!4279089) (not b!4279268) (not b!4279003) (not b!4279135) (not b!4279300) (not d!1263981) (not d!1263901) (not b!4279415) (not b!4279389) (not d!1263829) (not b!4279399) (not b!4279406) (not b!4278908) (not b!4279394) (not b!4279192) (not b!4279047) (not b!4278926) (not d!1263961) (not d!1263633) (not d!1263697) (not b!4279156) (not b!4279191) (not b!4279383) (not b!4279185) (not d!1263877) (not b!4279388) (not b!4279401) (not b!4279151) (not d!1263845) (not b!4279319) (not b!4279257) (not b!4279381) (not d!1263939) (not b!4279373) (not d!1263793) (not bm!294277) (not b!4279029) (not b!4278982) (not d!1263681) (not b!4279113) (not d!1263677) (not b!4279392) (not d!1263625) (not b!4279307) (not b!4279337) (not b!4279229) (not b!4279346) (not b!4279403) (not b!4279391) (not b!4279386) (not b!4279068) (not b!4279214) (not b!4279306) (not b!4279199) (not b!4279078) (not b!4278988) (not b!4279395) (not b!4279209) (not b!4279417) (not b!4279405) (not b!4279182) (not b!4278955) (not b!4279393) (not b!4279400) (not b!4278992) (not b!4279263) (not b!4279231) (not b!4279398) (not b!4279328) (not d!1263875) (not d!1263995) (not b!4278974) (not b!4279396) (not b!4278994) (not b!4279205) (not b!4279418) (not b!4279111) (not b!4278924) (not b!4278945) (not b!4279414) (not bm!294275) (not b!4279018) (not b!4279087) (not b!4279277) (not b!4279021) (not b!4279282) (not b!4279262) (not b!4279154) (not b!4279055) (not d!1264005) (not b!4279035) (not b!4279023) (not b!4279387) (not b!4279173) (not b!4279351) (not b!4279404) (not b!4278961) (not b!4279071) (not b!4279053) (not b!4278948) (not b!4279143) (not b!4279407) (not d!1263813) (not d!1263709) (not d!1263977) (not b!4279253) (not b!4279269) (not b!4279379) (not d!1263841) (not b!4278986) (not b!4279290) (not b!4278936) (not b!4278929) (not b!4279075) (not b!4279296) (not b!4279371) (not b!4279218) (not b!4279063) (not d!1263899) (not b!4278959) (not b!4278998) (not b!4279061) (not b!4279220) (not b!4279017) (not d!1263747) (not d!1263761) (not b!4279146) (not b!4278967) (not b!4279244) (not b!4279051) (not b!4279043) (not b!4279150) (not b!4279357) (not d!1263973) (not d!1263673) (not d!1264023) (not b!4278939) (not d!1263671) (not d!1263647) (not b!4278966) (not b!4279295) (not b!4279225) (not b!4278927) (not d!1263675) (not b!4279301) (not b!4279321) (not b!4279364) (not d!1263933) (not b!4279045) (not b!4279416) (not b!4279013) (not b!4278981) (not b!4279339) (not b!4279236) (not d!1263669) (not d!1263755) (not b!4279084) (not b!4279358) (not d!1264013) (not b!4279007) (not b!4279039) (not b!4279067) (not b!4279163) (not d!1263971) (not b!4279390) (not b!4279032) (not b!4279377) (not b!4279174) (not d!1263733) (not b!4279352) (not d!1263949) (not b!4278953) (not b!4279409) (not b!4278997) (not d!1263663) (not d!1263893) (not b!4279025) (not d!1263849) (not b!4279065) (not b!4278917) (not b!4279204) (not b!4278951) (not b!4278970) (not b!4278911) (not b!4279134))
(check-sat)
