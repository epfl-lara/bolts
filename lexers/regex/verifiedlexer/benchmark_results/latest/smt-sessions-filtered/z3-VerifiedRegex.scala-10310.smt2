; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!536106 () Bool)

(assert start!536106)

(declare-fun res!2166134 () Bool)

(declare-fun e!3173499 () Bool)

(assert (=> start!536106 (=> (not res!2166134) (not e!3173499))))

(declare-fun i!589 () Int)

(assert (=> start!536106 (= res!2166134 (<= 0 i!589))))

(assert (=> start!536106 e!3173499))

(assert (=> start!536106 true))

(declare-datatypes ((T!105426 0))(
  ( (T!105427 (val!23696 Int)) )
))
(declare-datatypes ((List!58621 0))(
  ( (Nil!58497) (Cons!58497 (h!64945 T!105426) (t!371488 List!58621)) )
))
(declare-datatypes ((IArray!31285 0))(
  ( (IArray!31286 (innerList!15700 List!58621)) )
))
(declare-datatypes ((Conc!15612 0))(
  ( (Node!15612 (left!42890 Conc!15612) (right!43220 Conc!15612) (csize!31454 Int) (cheight!15823 Int)) (Leaf!25923 (xs!18994 IArray!31285) (csize!31455 Int)) (Empty!15612) )
))
(declare-datatypes ((BalanceConc!30414 0))(
  ( (BalanceConc!30415 (c!874316 Conc!15612)) )
))
(declare-fun thiss!5775 () BalanceConc!30414)

(declare-fun e!3173500 () Bool)

(declare-fun inv!77812 (BalanceConc!30414) Bool)

(assert (=> start!536106 (and (inv!77812 thiss!5775) e!3173500)))

(declare-fun b!5088368 () Bool)

(declare-fun res!2166133 () Bool)

(assert (=> b!5088368 (=> (not res!2166133) (not e!3173499))))

(declare-fun size!39161 (BalanceConc!30414) Int)

(assert (=> b!5088368 (= res!2166133 (< i!589 (size!39161 thiss!5775)))))

(declare-fun b!5088369 () Bool)

(declare-fun apply!14243 (Conc!15612 Int) T!105426)

(declare-fun apply!14244 (List!58621 Int) T!105426)

(declare-fun list!19058 (BalanceConc!30414) List!58621)

(assert (=> b!5088369 (= e!3173499 (not (= (apply!14243 (c!874316 thiss!5775) i!589) (apply!14244 (list!19058 thiss!5775) i!589))))))

(declare-fun b!5088370 () Bool)

(declare-fun tp!1418567 () Bool)

(declare-fun inv!77813 (Conc!15612) Bool)

(assert (=> b!5088370 (= e!3173500 (and (inv!77813 (c!874316 thiss!5775)) tp!1418567))))

(assert (= (and start!536106 res!2166134) b!5088368))

(assert (= (and b!5088368 res!2166133) b!5088369))

(assert (= start!536106 b!5088370))

(declare-fun m!6146274 () Bool)

(assert (=> start!536106 m!6146274))

(declare-fun m!6146276 () Bool)

(assert (=> b!5088368 m!6146276))

(declare-fun m!6146278 () Bool)

(assert (=> b!5088369 m!6146278))

(declare-fun m!6146280 () Bool)

(assert (=> b!5088369 m!6146280))

(assert (=> b!5088369 m!6146280))

(declare-fun m!6146282 () Bool)

(assert (=> b!5088369 m!6146282))

(declare-fun m!6146284 () Bool)

(assert (=> b!5088370 m!6146284))

(check-sat (not b!5088369) (not b!5088370) (not b!5088368) (not start!536106))
(check-sat)
(get-model)

(declare-fun b!5088385 () Bool)

(declare-fun e!3173511 () T!105426)

(declare-fun apply!14245 (IArray!31285 Int) T!105426)

(assert (=> b!5088385 (= e!3173511 (apply!14245 (xs!18994 (c!874316 thiss!5775)) i!589))))

(declare-fun b!5088386 () Bool)

(declare-fun e!3173509 () Bool)

(declare-fun size!39162 (Conc!15612) Int)

(assert (=> b!5088386 (= e!3173509 (< i!589 (size!39162 (c!874316 thiss!5775))))))

(declare-fun b!5088387 () Bool)

(declare-fun e!3173512 () Int)

(assert (=> b!5088387 (= e!3173512 (- i!589 (size!39162 (left!42890 (c!874316 thiss!5775)))))))

(declare-fun b!5088388 () Bool)

(declare-fun e!3173510 () T!105426)

(declare-fun call!354618 () T!105426)

(assert (=> b!5088388 (= e!3173510 call!354618)))

(declare-fun b!5088389 () Bool)

(assert (=> b!5088389 (= e!3173512 i!589)))

(declare-fun bm!354613 () Bool)

(declare-fun c!874325 () Bool)

(declare-fun c!874323 () Bool)

(assert (=> bm!354613 (= c!874325 c!874323)))

(assert (=> bm!354613 (= call!354618 (apply!14243 (ite c!874323 (left!42890 (c!874316 thiss!5775)) (right!43220 (c!874316 thiss!5775))) e!3173512))))

(declare-fun d!1647007 () Bool)

(declare-fun lt!2092081 () T!105426)

(declare-fun list!19059 (Conc!15612) List!58621)

(assert (=> d!1647007 (= lt!2092081 (apply!14244 (list!19059 (c!874316 thiss!5775)) i!589))))

(assert (=> d!1647007 (= lt!2092081 e!3173511)))

(declare-fun c!874324 () Bool)

(get-info :version)

(assert (=> d!1647007 (= c!874324 ((_ is Leaf!25923) (c!874316 thiss!5775)))))

(assert (=> d!1647007 e!3173509))

(declare-fun res!2166137 () Bool)

(assert (=> d!1647007 (=> (not res!2166137) (not e!3173509))))

(assert (=> d!1647007 (= res!2166137 (<= 0 i!589))))

(assert (=> d!1647007 (= (apply!14243 (c!874316 thiss!5775) i!589) lt!2092081)))

(declare-fun b!5088390 () Bool)

(assert (=> b!5088390 (= e!3173510 call!354618)))

(declare-fun b!5088391 () Bool)

(assert (=> b!5088391 (= e!3173511 e!3173510)))

(declare-fun lt!2092080 () Bool)

(declare-fun appendIndex!408 (List!58621 List!58621 Int) Bool)

(assert (=> b!5088391 (= lt!2092080 (appendIndex!408 (list!19059 (left!42890 (c!874316 thiss!5775))) (list!19059 (right!43220 (c!874316 thiss!5775))) i!589))))

(assert (=> b!5088391 (= c!874323 (< i!589 (size!39162 (left!42890 (c!874316 thiss!5775)))))))

(assert (= (and d!1647007 res!2166137) b!5088386))

(assert (= (and d!1647007 c!874324) b!5088385))

(assert (= (and d!1647007 (not c!874324)) b!5088391))

(assert (= (and b!5088391 c!874323) b!5088388))

(assert (= (and b!5088391 (not c!874323)) b!5088390))

(assert (= (or b!5088388 b!5088390) bm!354613))

(assert (= (and bm!354613 c!874325) b!5088389))

(assert (= (and bm!354613 (not c!874325)) b!5088387))

(declare-fun m!6146292 () Bool)

(assert (=> b!5088386 m!6146292))

(declare-fun m!6146294 () Bool)

(assert (=> b!5088391 m!6146294))

(declare-fun m!6146296 () Bool)

(assert (=> b!5088391 m!6146296))

(assert (=> b!5088391 m!6146294))

(assert (=> b!5088391 m!6146296))

(declare-fun m!6146298 () Bool)

(assert (=> b!5088391 m!6146298))

(declare-fun m!6146300 () Bool)

(assert (=> b!5088391 m!6146300))

(declare-fun m!6146302 () Bool)

(assert (=> b!5088385 m!6146302))

(declare-fun m!6146304 () Bool)

(assert (=> d!1647007 m!6146304))

(assert (=> d!1647007 m!6146304))

(declare-fun m!6146306 () Bool)

(assert (=> d!1647007 m!6146306))

(assert (=> b!5088387 m!6146300))

(declare-fun m!6146308 () Bool)

(assert (=> bm!354613 m!6146308))

(assert (=> b!5088369 d!1647007))

(declare-fun d!1647015 () Bool)

(declare-fun lt!2092088 () T!105426)

(declare-fun contains!19585 (List!58621 T!105426) Bool)

(assert (=> d!1647015 (contains!19585 (list!19058 thiss!5775) lt!2092088)))

(declare-fun e!3173526 () T!105426)

(assert (=> d!1647015 (= lt!2092088 e!3173526)))

(declare-fun c!874334 () Bool)

(assert (=> d!1647015 (= c!874334 (= i!589 0))))

(declare-fun e!3173525 () Bool)

(assert (=> d!1647015 e!3173525))

(declare-fun res!2166142 () Bool)

(assert (=> d!1647015 (=> (not res!2166142) (not e!3173525))))

(assert (=> d!1647015 (= res!2166142 (<= 0 i!589))))

(assert (=> d!1647015 (= (apply!14244 (list!19058 thiss!5775) i!589) lt!2092088)))

(declare-fun b!5088412 () Bool)

(declare-fun size!39165 (List!58621) Int)

(assert (=> b!5088412 (= e!3173525 (< i!589 (size!39165 (list!19058 thiss!5775))))))

(declare-fun b!5088413 () Bool)

(declare-fun head!10796 (List!58621) T!105426)

(assert (=> b!5088413 (= e!3173526 (head!10796 (list!19058 thiss!5775)))))

(declare-fun b!5088414 () Bool)

(declare-fun tail!9951 (List!58621) List!58621)

(assert (=> b!5088414 (= e!3173526 (apply!14244 (tail!9951 (list!19058 thiss!5775)) (- i!589 1)))))

(assert (= (and d!1647015 res!2166142) b!5088412))

(assert (= (and d!1647015 c!874334) b!5088413))

(assert (= (and d!1647015 (not c!874334)) b!5088414))

(assert (=> d!1647015 m!6146280))

(declare-fun m!6146310 () Bool)

(assert (=> d!1647015 m!6146310))

(assert (=> b!5088412 m!6146280))

(declare-fun m!6146312 () Bool)

(assert (=> b!5088412 m!6146312))

(assert (=> b!5088413 m!6146280))

(declare-fun m!6146314 () Bool)

(assert (=> b!5088413 m!6146314))

(assert (=> b!5088414 m!6146280))

(declare-fun m!6146316 () Bool)

(assert (=> b!5088414 m!6146316))

(assert (=> b!5088414 m!6146316))

(declare-fun m!6146318 () Bool)

(assert (=> b!5088414 m!6146318))

(assert (=> b!5088369 d!1647015))

(declare-fun d!1647017 () Bool)

(assert (=> d!1647017 (= (list!19058 thiss!5775) (list!19059 (c!874316 thiss!5775)))))

(declare-fun bs!1191044 () Bool)

(assert (= bs!1191044 d!1647017))

(assert (=> bs!1191044 m!6146304))

(assert (=> b!5088369 d!1647017))

(declare-fun d!1647019 () Bool)

(declare-fun c!874342 () Bool)

(assert (=> d!1647019 (= c!874342 ((_ is Node!15612) (c!874316 thiss!5775)))))

(declare-fun e!3173539 () Bool)

(assert (=> d!1647019 (= (inv!77813 (c!874316 thiss!5775)) e!3173539)))

(declare-fun b!5088434 () Bool)

(declare-fun inv!77814 (Conc!15612) Bool)

(assert (=> b!5088434 (= e!3173539 (inv!77814 (c!874316 thiss!5775)))))

(declare-fun b!5088435 () Bool)

(declare-fun e!3173540 () Bool)

(assert (=> b!5088435 (= e!3173539 e!3173540)))

(declare-fun res!2166148 () Bool)

(assert (=> b!5088435 (= res!2166148 (not ((_ is Leaf!25923) (c!874316 thiss!5775))))))

(assert (=> b!5088435 (=> res!2166148 e!3173540)))

(declare-fun b!5088436 () Bool)

(declare-fun inv!77815 (Conc!15612) Bool)

(assert (=> b!5088436 (= e!3173540 (inv!77815 (c!874316 thiss!5775)))))

(assert (= (and d!1647019 c!874342) b!5088434))

(assert (= (and d!1647019 (not c!874342)) b!5088435))

(assert (= (and b!5088435 (not res!2166148)) b!5088436))

(declare-fun m!6146336 () Bool)

(assert (=> b!5088434 m!6146336))

(declare-fun m!6146338 () Bool)

(assert (=> b!5088436 m!6146338))

(assert (=> b!5088370 d!1647019))

(declare-fun d!1647023 () Bool)

(declare-fun lt!2092096 () Int)

(assert (=> d!1647023 (= lt!2092096 (size!39165 (list!19058 thiss!5775)))))

(assert (=> d!1647023 (= lt!2092096 (size!39162 (c!874316 thiss!5775)))))

(assert (=> d!1647023 (= (size!39161 thiss!5775) lt!2092096)))

(declare-fun bs!1191045 () Bool)

(assert (= bs!1191045 d!1647023))

(assert (=> bs!1191045 m!6146280))

(assert (=> bs!1191045 m!6146280))

(assert (=> bs!1191045 m!6146312))

(assert (=> bs!1191045 m!6146292))

(assert (=> b!5088368 d!1647023))

(declare-fun d!1647027 () Bool)

(declare-fun isBalanced!4459 (Conc!15612) Bool)

(assert (=> d!1647027 (= (inv!77812 thiss!5775) (isBalanced!4459 (c!874316 thiss!5775)))))

(declare-fun bs!1191047 () Bool)

(assert (= bs!1191047 d!1647027))

(declare-fun m!6146348 () Bool)

(assert (=> bs!1191047 m!6146348))

(assert (=> start!536106 d!1647027))

(declare-fun b!5088454 () Bool)

(declare-fun tp!1418575 () Bool)

(declare-fun e!3173552 () Bool)

(declare-fun tp!1418574 () Bool)

(assert (=> b!5088454 (= e!3173552 (and (inv!77813 (left!42890 (c!874316 thiss!5775))) tp!1418575 (inv!77813 (right!43220 (c!874316 thiss!5775))) tp!1418574))))

(declare-fun b!5088456 () Bool)

(declare-fun e!3173551 () Bool)

(declare-fun tp!1418576 () Bool)

(assert (=> b!5088456 (= e!3173551 tp!1418576)))

(declare-fun b!5088455 () Bool)

(declare-fun inv!77816 (IArray!31285) Bool)

(assert (=> b!5088455 (= e!3173552 (and (inv!77816 (xs!18994 (c!874316 thiss!5775))) e!3173551))))

(assert (=> b!5088370 (= tp!1418567 (and (inv!77813 (c!874316 thiss!5775)) e!3173552))))

(assert (= (and b!5088370 ((_ is Node!15612) (c!874316 thiss!5775))) b!5088454))

(assert (= b!5088455 b!5088456))

(assert (= (and b!5088370 ((_ is Leaf!25923) (c!874316 thiss!5775))) b!5088455))

(declare-fun m!6146350 () Bool)

(assert (=> b!5088454 m!6146350))

(declare-fun m!6146352 () Bool)

(assert (=> b!5088454 m!6146352))

(declare-fun m!6146354 () Bool)

(assert (=> b!5088455 m!6146354))

(assert (=> b!5088370 m!6146284))

(check-sat (not b!5088387) (not b!5088455) (not b!5088391) (not b!5088454) (not b!5088456) (not d!1647007) (not b!5088385) (not b!5088412) (not b!5088370) (not b!5088386) (not d!1647023) (not b!5088436) (not b!5088414) (not b!5088434) (not b!5088413) (not d!1647027) (not d!1647017) (not d!1647015) (not bm!354613))
(check-sat)
