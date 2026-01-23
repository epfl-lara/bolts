; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!14018 () Bool)

(assert start!14018)

(declare-fun b!134395 () Bool)

(declare-fun e!77861 () Bool)

(declare-fun tp_is_empty!1461 () Bool)

(declare-fun tp!70683 () Bool)

(assert (=> b!134395 (= e!77861 (and tp_is_empty!1461 tp!70683))))

(declare-fun b!134393 () Bool)

(declare-fun res!62821 () Bool)

(declare-fun e!77862 () Bool)

(assert (=> b!134393 (=> (not res!62821) (not e!77862))))

(declare-datatypes ((B!817 0))(
  ( (B!818 (val!894 Int)) )
))
(declare-datatypes ((List!2212 0))(
  ( (Nil!2206) (Cons!2206 (h!7603 B!817) (t!22798 List!2212)) )
))
(declare-fun l!3288 () List!2212)

(get-info :version)

(assert (=> b!134393 (= res!62821 (not ((_ is Cons!2206) l!3288)))))

(declare-fun res!62822 () Bool)

(assert (=> start!14018 (=> (not res!62822) (not e!77862))))

(declare-fun tot!41 () List!2212)

(declare-fun elmt!148 () B!817)

(declare-fun isPrefix!199 (List!2212 List!2212) Bool)

(declare-fun ++!480 (List!2212 List!2212) List!2212)

(assert (=> start!14018 (= res!62822 (isPrefix!199 (++!480 l!3288 (Cons!2206 elmt!148 Nil!2206)) tot!41))))

(assert (=> start!14018 e!77862))

(assert (=> start!14018 e!77861))

(assert (=> start!14018 tp_is_empty!1461))

(declare-fun e!77863 () Bool)

(assert (=> start!14018 e!77863))

(declare-fun b!134394 () Bool)

(assert (=> b!134394 (= e!77862 (not (isPrefix!199 l!3288 tot!41)))))

(declare-fun b!134396 () Bool)

(declare-fun tp!70684 () Bool)

(assert (=> b!134396 (= e!77863 (and tp_is_empty!1461 tp!70684))))

(assert (= (and start!14018 res!62822) b!134393))

(assert (= (and b!134393 res!62821) b!134394))

(assert (= (and start!14018 ((_ is Cons!2206) l!3288)) b!134395))

(assert (= (and start!14018 ((_ is Cons!2206) tot!41)) b!134396))

(declare-fun m!119519 () Bool)

(assert (=> start!14018 m!119519))

(assert (=> start!14018 m!119519))

(declare-fun m!119521 () Bool)

(assert (=> start!14018 m!119521))

(declare-fun m!119523 () Bool)

(assert (=> b!134394 m!119523))

(check-sat (not b!134395) (not b!134396) (not start!14018) (not b!134394) tp_is_empty!1461)
(check-sat)
(get-model)

(declare-fun b!134420 () Bool)

(declare-fun e!77879 () Bool)

(declare-fun size!2002 (List!2212) Int)

(assert (=> b!134420 (= e!77879 (>= (size!2002 tot!41) (size!2002 (++!480 l!3288 (Cons!2206 elmt!148 Nil!2206)))))))

(declare-fun b!134418 () Bool)

(declare-fun res!62845 () Bool)

(declare-fun e!77881 () Bool)

(assert (=> b!134418 (=> (not res!62845) (not e!77881))))

(declare-fun head!542 (List!2212) B!817)

(assert (=> b!134418 (= res!62845 (= (head!542 (++!480 l!3288 (Cons!2206 elmt!148 Nil!2206))) (head!542 tot!41)))))

(declare-fun d!32314 () Bool)

(assert (=> d!32314 e!77879))

(declare-fun res!62846 () Bool)

(assert (=> d!32314 (=> res!62846 e!77879)))

(declare-fun lt!40538 () Bool)

(assert (=> d!32314 (= res!62846 (not lt!40538))))

(declare-fun e!77880 () Bool)

(assert (=> d!32314 (= lt!40538 e!77880)))

(declare-fun res!62844 () Bool)

(assert (=> d!32314 (=> res!62844 e!77880)))

(assert (=> d!32314 (= res!62844 ((_ is Nil!2206) (++!480 l!3288 (Cons!2206 elmt!148 Nil!2206))))))

(assert (=> d!32314 (= (isPrefix!199 (++!480 l!3288 (Cons!2206 elmt!148 Nil!2206)) tot!41) lt!40538)))

(declare-fun b!134419 () Bool)

(declare-fun tail!290 (List!2212) List!2212)

(assert (=> b!134419 (= e!77881 (isPrefix!199 (tail!290 (++!480 l!3288 (Cons!2206 elmt!148 Nil!2206))) (tail!290 tot!41)))))

(declare-fun b!134417 () Bool)

(assert (=> b!134417 (= e!77880 e!77881)))

(declare-fun res!62843 () Bool)

(assert (=> b!134417 (=> (not res!62843) (not e!77881))))

(assert (=> b!134417 (= res!62843 (not ((_ is Nil!2206) tot!41)))))

(assert (= (and d!32314 (not res!62844)) b!134417))

(assert (= (and b!134417 res!62843) b!134418))

(assert (= (and b!134418 res!62845) b!134419))

(assert (= (and d!32314 (not res!62846)) b!134420))

(declare-fun m!119539 () Bool)

(assert (=> b!134420 m!119539))

(assert (=> b!134420 m!119519))

(declare-fun m!119541 () Bool)

(assert (=> b!134420 m!119541))

(assert (=> b!134418 m!119519))

(declare-fun m!119543 () Bool)

(assert (=> b!134418 m!119543))

(declare-fun m!119545 () Bool)

(assert (=> b!134418 m!119545))

(assert (=> b!134419 m!119519))

(declare-fun m!119547 () Bool)

(assert (=> b!134419 m!119547))

(declare-fun m!119549 () Bool)

(assert (=> b!134419 m!119549))

(assert (=> b!134419 m!119547))

(assert (=> b!134419 m!119549))

(declare-fun m!119551 () Bool)

(assert (=> b!134419 m!119551))

(assert (=> start!14018 d!32314))

(declare-fun b!134450 () Bool)

(declare-fun e!77897 () List!2212)

(assert (=> b!134450 (= e!77897 (Cons!2206 (h!7603 l!3288) (++!480 (t!22798 l!3288) (Cons!2206 elmt!148 Nil!2206))))))

(declare-fun b!134452 () Bool)

(declare-fun lt!40545 () List!2212)

(declare-fun e!77898 () Bool)

(assert (=> b!134452 (= e!77898 (or (not (= (Cons!2206 elmt!148 Nil!2206) Nil!2206)) (= lt!40545 l!3288)))))

(declare-fun b!134451 () Bool)

(declare-fun res!62862 () Bool)

(assert (=> b!134451 (=> (not res!62862) (not e!77898))))

(assert (=> b!134451 (= res!62862 (= (size!2002 lt!40545) (+ (size!2002 l!3288) (size!2002 (Cons!2206 elmt!148 Nil!2206)))))))

(declare-fun d!32318 () Bool)

(assert (=> d!32318 e!77898))

(declare-fun res!62861 () Bool)

(assert (=> d!32318 (=> (not res!62861) (not e!77898))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!315 (List!2212) (InoxSet B!817))

(assert (=> d!32318 (= res!62861 (= (content!315 lt!40545) ((_ map or) (content!315 l!3288) (content!315 (Cons!2206 elmt!148 Nil!2206)))))))

(assert (=> d!32318 (= lt!40545 e!77897)))

(declare-fun c!28774 () Bool)

(assert (=> d!32318 (= c!28774 ((_ is Nil!2206) l!3288))))

(assert (=> d!32318 (= (++!480 l!3288 (Cons!2206 elmt!148 Nil!2206)) lt!40545)))

(declare-fun b!134449 () Bool)

(assert (=> b!134449 (= e!77897 (Cons!2206 elmt!148 Nil!2206))))

(assert (= (and d!32318 c!28774) b!134449))

(assert (= (and d!32318 (not c!28774)) b!134450))

(assert (= (and d!32318 res!62861) b!134451))

(assert (= (and b!134451 res!62862) b!134452))

(declare-fun m!119573 () Bool)

(assert (=> b!134450 m!119573))

(declare-fun m!119575 () Bool)

(assert (=> b!134451 m!119575))

(declare-fun m!119577 () Bool)

(assert (=> b!134451 m!119577))

(declare-fun m!119579 () Bool)

(assert (=> b!134451 m!119579))

(declare-fun m!119581 () Bool)

(assert (=> d!32318 m!119581))

(declare-fun m!119583 () Bool)

(assert (=> d!32318 m!119583))

(declare-fun m!119585 () Bool)

(assert (=> d!32318 m!119585))

(assert (=> start!14018 d!32318))

(declare-fun b!134458 () Bool)

(declare-fun e!77901 () Bool)

(assert (=> b!134458 (= e!77901 (>= (size!2002 tot!41) (size!2002 l!3288)))))

(declare-fun b!134456 () Bool)

(declare-fun res!62865 () Bool)

(declare-fun e!77903 () Bool)

(assert (=> b!134456 (=> (not res!62865) (not e!77903))))

(assert (=> b!134456 (= res!62865 (= (head!542 l!3288) (head!542 tot!41)))))

(declare-fun d!32322 () Bool)

(assert (=> d!32322 e!77901))

(declare-fun res!62866 () Bool)

(assert (=> d!32322 (=> res!62866 e!77901)))

(declare-fun lt!40546 () Bool)

(assert (=> d!32322 (= res!62866 (not lt!40546))))

(declare-fun e!77902 () Bool)

(assert (=> d!32322 (= lt!40546 e!77902)))

(declare-fun res!62864 () Bool)

(assert (=> d!32322 (=> res!62864 e!77902)))

(assert (=> d!32322 (= res!62864 ((_ is Nil!2206) l!3288))))

(assert (=> d!32322 (= (isPrefix!199 l!3288 tot!41) lt!40546)))

(declare-fun b!134457 () Bool)

(assert (=> b!134457 (= e!77903 (isPrefix!199 (tail!290 l!3288) (tail!290 tot!41)))))

(declare-fun b!134455 () Bool)

(assert (=> b!134455 (= e!77902 e!77903)))

(declare-fun res!62863 () Bool)

(assert (=> b!134455 (=> (not res!62863) (not e!77903))))

(assert (=> b!134455 (= res!62863 (not ((_ is Nil!2206) tot!41)))))

(assert (= (and d!32322 (not res!62864)) b!134455))

(assert (= (and b!134455 res!62863) b!134456))

(assert (= (and b!134456 res!62865) b!134457))

(assert (= (and d!32322 (not res!62866)) b!134458))

(assert (=> b!134458 m!119539))

(assert (=> b!134458 m!119577))

(declare-fun m!119587 () Bool)

(assert (=> b!134456 m!119587))

(assert (=> b!134456 m!119545))

(declare-fun m!119589 () Bool)

(assert (=> b!134457 m!119589))

(assert (=> b!134457 m!119549))

(assert (=> b!134457 m!119589))

(assert (=> b!134457 m!119549))

(declare-fun m!119591 () Bool)

(assert (=> b!134457 m!119591))

(assert (=> b!134394 d!32322))

(declare-fun b!134463 () Bool)

(declare-fun e!77906 () Bool)

(declare-fun tp!70691 () Bool)

(assert (=> b!134463 (= e!77906 (and tp_is_empty!1461 tp!70691))))

(assert (=> b!134396 (= tp!70684 e!77906)))

(assert (= (and b!134396 ((_ is Cons!2206) (t!22798 tot!41))) b!134463))

(declare-fun b!134464 () Bool)

(declare-fun e!77907 () Bool)

(declare-fun tp!70692 () Bool)

(assert (=> b!134464 (= e!77907 (and tp_is_empty!1461 tp!70692))))

(assert (=> b!134395 (= tp!70683 e!77907)))

(assert (= (and b!134395 ((_ is Cons!2206) (t!22798 l!3288))) b!134464))

(check-sat (not b!134451) (not b!134463) (not b!134418) (not d!32318) tp_is_empty!1461 (not b!134450) (not b!134420) (not b!134457) (not b!134464) (not b!134458) (not b!134456) (not b!134419))
(check-sat)
