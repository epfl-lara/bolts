; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!236914 () Bool)

(assert start!236914)

(declare-fun b!2418366 () Bool)

(declare-datatypes ((Unit!41507 0))(
  ( (Unit!41508) )
))
(declare-fun e!1538820 () Unit!41507)

(declare-fun Unit!41509 () Unit!41507)

(assert (=> b!2418366 (= e!1538820 Unit!41509)))

(declare-fun lt!874666 () Unit!41507)

(declare-datatypes ((C!14374 0))(
  ( (C!14375 (val!8429 Int)) )
))
(declare-datatypes ((Regex!7108 0))(
  ( (ElementMatch!7108 (c!385432 C!14374)) (Concat!11744 (regOne!14728 Regex!7108) (regTwo!14728 Regex!7108)) (EmptyExpr!7108) (Star!7108 (reg!7437 Regex!7108)) (EmptyLang!7108) (Union!7108 (regOne!14729 Regex!7108) (regTwo!14729 Regex!7108)) )
))
(declare-fun lt!874669 () Regex!7108)

(declare-datatypes ((List!28454 0))(
  ( (Nil!28356) (Cons!28356 (h!33757 C!14374) (t!208431 List!28454)) )
))
(declare-fun s!9460 () List!28454)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!83 (Regex!7108 Regex!7108 List!28454 List!28454) Unit!41507)

(assert (=> b!2418366 (= lt!874666 (lemmaTwoRegexMatchThenConcatMatchesConcatString!83 lt!874669 EmptyExpr!7108 s!9460 Nil!28356))))

(declare-fun lt!874671 () Regex!7108)

(assert (=> b!2418366 (= lt!874671 (Concat!11744 lt!874669 EmptyExpr!7108))))

(declare-fun res!1027051 () Bool)

(declare-fun call!147664 () List!28454)

(declare-fun matchR!3225 (Regex!7108 List!28454) Bool)

(assert (=> b!2418366 (= res!1027051 (matchR!3225 lt!874671 call!147664))))

(declare-fun e!1538813 () Bool)

(assert (=> b!2418366 (=> (not res!1027051) (not e!1538813))))

(assert (=> b!2418366 e!1538813))

(declare-fun lt!874663 () Unit!41507)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!57 (Regex!7108 Regex!7108 List!28454) Unit!41507)

(assert (=> b!2418366 (= lt!874663 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!57 lt!874669 EmptyExpr!7108 s!9460))))

(declare-fun res!1027052 () Bool)

(declare-fun call!147663 () Bool)

(assert (=> b!2418366 (= res!1027052 call!147663)))

(declare-fun e!1538822 () Bool)

(assert (=> b!2418366 (=> (not res!1027052) (not e!1538822))))

(assert (=> b!2418366 e!1538822))

(declare-fun b!2418367 () Bool)

(declare-fun e!1538825 () Bool)

(declare-fun r!13927 () Regex!7108)

(declare-fun validRegex!2828 (Regex!7108) Bool)

(assert (=> b!2418367 (= e!1538825 (validRegex!2828 r!13927))))

(declare-fun b!2418368 () Bool)

(declare-fun e!1538817 () Unit!41507)

(declare-fun Unit!41510 () Unit!41507)

(assert (=> b!2418368 (= e!1538817 Unit!41510)))

(declare-fun b!2418369 () Bool)

(declare-fun e!1538814 () Bool)

(assert (=> b!2418369 (= e!1538814 false)))

(declare-fun b!2418370 () Bool)

(assert (=> b!2418370 e!1538814))

(declare-fun res!1027048 () Bool)

(assert (=> b!2418370 (=> (not res!1027048) (not e!1538814))))

(declare-fun call!147662 () Bool)

(assert (=> b!2418370 (= res!1027048 call!147662)))

(declare-datatypes ((tuple2!27996 0))(
  ( (tuple2!27997 (_1!16539 List!28454) (_2!16539 List!28454)) )
))
(declare-fun lt!874665 () tuple2!27996)

(declare-fun lt!874661 () Unit!41507)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!57 (Regex!7108 Regex!7108 List!28454 List!28454 List!28454) Unit!41507)

(assert (=> b!2418370 (= lt!874661 (lemmaFindSeparationIsDefinedThenConcatMatches!57 lt!874669 EmptyExpr!7108 (_1!16539 lt!874665) (_2!16539 lt!874665) s!9460))))

(declare-datatypes ((Option!5609 0))(
  ( (None!5608) (Some!5608 (v!31016 tuple2!27996)) )
))
(declare-fun lt!874667 () Option!5609)

(declare-fun get!8715 (Option!5609) tuple2!27996)

(assert (=> b!2418370 (= lt!874665 (get!8715 lt!874667))))

(declare-fun Unit!41511 () Unit!41507)

(assert (=> b!2418370 (= e!1538817 Unit!41511)))

(declare-fun b!2418371 () Bool)

(declare-fun call!147659 () Bool)

(assert (=> b!2418371 (= e!1538822 call!147659)))

(declare-fun b!2418372 () Bool)

(declare-fun res!1027056 () Bool)

(declare-fun e!1538815 () Bool)

(assert (=> b!2418372 (=> (not res!1027056) (not e!1538815))))

(declare-datatypes ((List!28455 0))(
  ( (Nil!28357) (Cons!28357 (h!33758 Regex!7108) (t!208432 List!28455)) )
))
(declare-fun l!9164 () List!28455)

(declare-fun generalisedConcat!209 (List!28455) Regex!7108)

(assert (=> b!2418372 (= res!1027056 (= r!13927 (generalisedConcat!209 l!9164)))))

(declare-fun b!2418373 () Bool)

(declare-fun e!1538819 () Bool)

(declare-fun tp_is_empty!11629 () Bool)

(declare-fun tp!768876 () Bool)

(assert (=> b!2418373 (= e!1538819 (and tp_is_empty!11629 tp!768876))))

(declare-fun call!147660 () Option!5609)

(declare-fun bm!147654 () Bool)

(declare-fun lt!874673 () Regex!7108)

(declare-fun findConcatSeparation!717 (Regex!7108 Regex!7108 List!28454 List!28454 List!28454) Option!5609)

(assert (=> bm!147654 (= call!147660 (findConcatSeparation!717 lt!874669 lt!874673 Nil!28356 s!9460 s!9460))))

(declare-fun b!2418374 () Bool)

(declare-fun e!1538818 () Bool)

(declare-fun tp!768879 () Bool)

(assert (=> b!2418374 (= e!1538818 tp!768879)))

(declare-fun b!2418365 () Bool)

(declare-fun Unit!41512 () Unit!41507)

(assert (=> b!2418365 (= e!1538820 Unit!41512)))

(declare-fun call!147661 () Option!5609)

(assert (=> b!2418365 (= lt!874667 call!147661)))

(declare-fun lt!874664 () Bool)

(assert (=> b!2418365 (= lt!874664 call!147659)))

(declare-fun c!385431 () Bool)

(assert (=> b!2418365 (= c!385431 lt!874664)))

(declare-fun lt!874662 () Unit!41507)

(assert (=> b!2418365 (= lt!874662 e!1538817)))

(declare-fun res!1027049 () Bool)

(assert (=> b!2418365 (= res!1027049 (not lt!874664))))

(declare-fun e!1538816 () Bool)

(assert (=> b!2418365 (=> (not res!1027049) (not e!1538816))))

(assert (=> b!2418365 e!1538816))

(declare-fun res!1027057 () Bool)

(assert (=> start!236914 (=> (not res!1027057) (not e!1538815))))

(declare-fun lambda!91084 () Int)

(declare-fun forall!5742 (List!28455 Int) Bool)

(assert (=> start!236914 (= res!1027057 (forall!5742 l!9164 lambda!91084))))

(assert (=> start!236914 e!1538815))

(declare-fun e!1538826 () Bool)

(assert (=> start!236914 e!1538826))

(assert (=> start!236914 e!1538818))

(assert (=> start!236914 e!1538819))

(declare-fun b!2418375 () Bool)

(declare-fun tp!768877 () Bool)

(declare-fun tp!768880 () Bool)

(assert (=> b!2418375 (= e!1538826 (and tp!768877 tp!768880))))

(declare-fun c!385430 () Bool)

(declare-fun bm!147655 () Bool)

(assert (=> bm!147655 (= call!147662 (matchR!3225 (ite c!385430 lt!874671 (Concat!11744 lt!874669 EmptyExpr!7108)) (ite c!385430 s!9460 call!147664)))))

(declare-fun b!2418376 () Bool)

(declare-fun e!1538821 () Bool)

(declare-fun e!1538823 () Bool)

(assert (=> b!2418376 (= e!1538821 e!1538823)))

(declare-fun res!1027054 () Bool)

(assert (=> b!2418376 (=> res!1027054 e!1538823)))

(declare-fun lt!874668 () List!28455)

(declare-fun isEmpty!16370 (List!28455) Bool)

(assert (=> b!2418376 (= res!1027054 (not (isEmpty!16370 lt!874668)))))

(declare-fun tail!3700 (List!28455) List!28455)

(assert (=> b!2418376 (= lt!874668 (tail!3700 l!9164))))

(declare-fun bm!147656 () Bool)

(declare-fun ++!7029 (List!28454 List!28454) List!28454)

(assert (=> bm!147656 (= call!147664 (++!7029 (ite c!385430 s!9460 (_1!16539 lt!874665)) (ite c!385430 Nil!28356 (_2!16539 lt!874665))))))

(declare-fun b!2418377 () Bool)

(declare-fun e!1538824 () Bool)

(assert (=> b!2418377 (= e!1538823 e!1538824)))

(declare-fun res!1027055 () Bool)

(assert (=> b!2418377 (=> res!1027055 e!1538824)))

(assert (=> b!2418377 (= res!1027055 (not (= lt!874673 EmptyExpr!7108)))))

(assert (=> b!2418377 (= lt!874673 (generalisedConcat!209 lt!874668))))

(declare-fun b!2418378 () Bool)

(assert (=> b!2418378 (= e!1538813 call!147662)))

(declare-fun bm!147657 () Bool)

(assert (=> bm!147657 (= call!147661 (findConcatSeparation!717 lt!874669 EmptyExpr!7108 Nil!28356 s!9460 s!9460))))

(declare-fun b!2418379 () Bool)

(assert (=> b!2418379 (= e!1538818 tp_is_empty!11629)))

(declare-fun b!2418380 () Bool)

(declare-fun tp!768881 () Bool)

(declare-fun tp!768878 () Bool)

(assert (=> b!2418380 (= e!1538818 (and tp!768881 tp!768878))))

(declare-fun b!2418381 () Bool)

(assert (=> b!2418381 (= e!1538816 (not call!147663))))

(declare-fun bm!147658 () Bool)

(declare-fun isDefined!4435 (Option!5609) Bool)

(assert (=> bm!147658 (= call!147663 (isDefined!4435 (ite c!385430 call!147661 call!147660)))))

(declare-fun b!2418382 () Bool)

(declare-fun res!1027053 () Bool)

(assert (=> b!2418382 (=> res!1027053 e!1538821)))

(assert (=> b!2418382 (= res!1027053 (isEmpty!16370 l!9164))))

(declare-fun bm!147659 () Bool)

(assert (=> bm!147659 (= call!147659 (isDefined!4435 (ite c!385430 call!147660 lt!874667)))))

(declare-fun b!2418383 () Bool)

(assert (=> b!2418383 (= e!1538824 e!1538825)))

(declare-fun res!1027047 () Bool)

(assert (=> b!2418383 (=> res!1027047 e!1538825)))

(assert (=> b!2418383 (= res!1027047 (not (is-Cons!28357 l!9164)))))

(declare-fun lt!874672 () Unit!41507)

(assert (=> b!2418383 (= lt!874672 e!1538820)))

(assert (=> b!2418383 (= c!385430 (matchR!3225 lt!874669 s!9460))))

(declare-fun head!5428 (List!28455) Regex!7108)

(assert (=> b!2418383 (= lt!874669 (head!5428 l!9164))))

(declare-fun b!2418384 () Bool)

(declare-fun tp!768874 () Bool)

(declare-fun tp!768875 () Bool)

(assert (=> b!2418384 (= e!1538818 (and tp!768874 tp!768875))))

(declare-fun b!2418385 () Bool)

(assert (=> b!2418385 (= e!1538815 (not e!1538821))))

(declare-fun res!1027050 () Bool)

(assert (=> b!2418385 (=> res!1027050 e!1538821)))

(assert (=> b!2418385 (= res!1027050 (or (is-Concat!11744 r!13927) (is-EmptyExpr!7108 r!13927)))))

(declare-fun matchRSpec!957 (Regex!7108 List!28454) Bool)

(assert (=> b!2418385 (= (matchR!3225 r!13927 s!9460) (matchRSpec!957 r!13927 s!9460))))

(declare-fun lt!874670 () Unit!41507)

(declare-fun mainMatchTheorem!957 (Regex!7108 List!28454) Unit!41507)

(assert (=> b!2418385 (= lt!874670 (mainMatchTheorem!957 r!13927 s!9460))))

(assert (= (and start!236914 res!1027057) b!2418372))

(assert (= (and b!2418372 res!1027056) b!2418385))

(assert (= (and b!2418385 (not res!1027050)) b!2418382))

(assert (= (and b!2418382 (not res!1027053)) b!2418376))

(assert (= (and b!2418376 (not res!1027054)) b!2418377))

(assert (= (and b!2418377 (not res!1027055)) b!2418383))

(assert (= (and b!2418383 c!385430) b!2418366))

(assert (= (and b!2418383 (not c!385430)) b!2418365))

(assert (= (and b!2418366 res!1027051) b!2418378))

(assert (= (and b!2418366 res!1027052) b!2418371))

(assert (= (and b!2418365 c!385431) b!2418370))

(assert (= (and b!2418365 (not c!385431)) b!2418368))

(assert (= (and b!2418370 res!1027048) b!2418369))

(assert (= (and b!2418365 res!1027049) b!2418381))

(assert (= (or b!2418366 b!2418365) bm!147657))

(assert (= (or b!2418366 b!2418370) bm!147656))

(assert (= (or b!2418371 b!2418381) bm!147654))

(assert (= (or b!2418378 b!2418370) bm!147655))

(assert (= (or b!2418371 b!2418365) bm!147659))

(assert (= (or b!2418366 b!2418381) bm!147658))

(assert (= (and b!2418383 (not res!1027047)) b!2418367))

(assert (= (and start!236914 (is-Cons!28357 l!9164)) b!2418375))

(assert (= (and start!236914 (is-ElementMatch!7108 r!13927)) b!2418379))

(assert (= (and start!236914 (is-Concat!11744 r!13927)) b!2418384))

(assert (= (and start!236914 (is-Star!7108 r!13927)) b!2418374))

(assert (= (and start!236914 (is-Union!7108 r!13927)) b!2418380))

(assert (= (and start!236914 (is-Cons!28356 s!9460)) b!2418373))

(declare-fun m!2806031 () Bool)

(assert (=> b!2418370 m!2806031))

(declare-fun m!2806033 () Bool)

(assert (=> b!2418370 m!2806033))

(declare-fun m!2806035 () Bool)

(assert (=> bm!147659 m!2806035))

(declare-fun m!2806037 () Bool)

(assert (=> bm!147654 m!2806037))

(declare-fun m!2806039 () Bool)

(assert (=> bm!147658 m!2806039))

(declare-fun m!2806041 () Bool)

(assert (=> b!2418382 m!2806041))

(declare-fun m!2806043 () Bool)

(assert (=> b!2418367 m!2806043))

(declare-fun m!2806045 () Bool)

(assert (=> b!2418376 m!2806045))

(declare-fun m!2806047 () Bool)

(assert (=> b!2418376 m!2806047))

(declare-fun m!2806049 () Bool)

(assert (=> bm!147656 m!2806049))

(declare-fun m!2806051 () Bool)

(assert (=> start!236914 m!2806051))

(declare-fun m!2806053 () Bool)

(assert (=> b!2418372 m!2806053))

(declare-fun m!2806055 () Bool)

(assert (=> b!2418385 m!2806055))

(declare-fun m!2806057 () Bool)

(assert (=> b!2418385 m!2806057))

(declare-fun m!2806059 () Bool)

(assert (=> b!2418385 m!2806059))

(declare-fun m!2806061 () Bool)

(assert (=> b!2418366 m!2806061))

(declare-fun m!2806063 () Bool)

(assert (=> b!2418366 m!2806063))

(declare-fun m!2806065 () Bool)

(assert (=> b!2418366 m!2806065))

(declare-fun m!2806067 () Bool)

(assert (=> b!2418383 m!2806067))

(declare-fun m!2806069 () Bool)

(assert (=> b!2418383 m!2806069))

(declare-fun m!2806071 () Bool)

(assert (=> bm!147655 m!2806071))

(declare-fun m!2806073 () Bool)

(assert (=> bm!147657 m!2806073))

(declare-fun m!2806075 () Bool)

(assert (=> b!2418377 m!2806075))

(push 1)

(assert (not bm!147657))

(assert (not b!2418367))

(assert (not bm!147655))

(assert (not b!2418372))

(assert (not b!2418376))

(assert (not bm!147656))

(assert (not b!2418380))

(assert (not b!2418370))

(assert (not b!2418377))

(assert (not b!2418375))

(assert (not b!2418373))

(assert tp_is_empty!11629)

(assert (not bm!147654))

(assert (not b!2418366))

(assert (not b!2418384))

(assert (not b!2418374))

(assert (not b!2418382))

(assert (not b!2418385))

(assert (not b!2418383))

(assert (not bm!147659))

(assert (not start!236914))

(assert (not bm!147658))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2418477 () Bool)

(declare-fun e!1538884 () Bool)

(declare-fun nullable!2143 (Regex!7108) Bool)

(assert (=> b!2418477 (= e!1538884 (nullable!2143 (ite c!385430 lt!874671 (Concat!11744 lt!874669 EmptyExpr!7108))))))

(declare-fun bm!147680 () Bool)

(declare-fun call!147685 () Bool)

(declare-fun isEmpty!16372 (List!28454) Bool)

(assert (=> bm!147680 (= call!147685 (isEmpty!16372 (ite c!385430 s!9460 call!147664)))))

(declare-fun b!2418478 () Bool)

(declare-fun res!1027114 () Bool)

(declare-fun e!1538885 () Bool)

(assert (=> b!2418478 (=> res!1027114 e!1538885)))

(declare-fun tail!3702 (List!28454) List!28454)

(assert (=> b!2418478 (= res!1027114 (not (isEmpty!16372 (tail!3702 (ite c!385430 s!9460 call!147664)))))))

(declare-fun b!2418479 () Bool)

(declare-fun e!1538887 () Bool)

(assert (=> b!2418479 (= e!1538887 e!1538885)))

(declare-fun res!1027109 () Bool)

(assert (=> b!2418479 (=> res!1027109 e!1538885)))

(assert (=> b!2418479 (= res!1027109 call!147685)))

(declare-fun b!2418480 () Bool)

(declare-fun e!1538886 () Bool)

(declare-fun head!5430 (List!28454) C!14374)

(assert (=> b!2418480 (= e!1538886 (= (head!5430 (ite c!385430 s!9460 call!147664)) (c!385432 (ite c!385430 lt!874671 (Concat!11744 lt!874669 EmptyExpr!7108)))))))

(declare-fun b!2418481 () Bool)

(assert (=> b!2418481 (= e!1538885 (not (= (head!5430 (ite c!385430 s!9460 call!147664)) (c!385432 (ite c!385430 lt!874671 (Concat!11744 lt!874669 EmptyExpr!7108))))))))

(declare-fun b!2418482 () Bool)

(declare-fun e!1538883 () Bool)

(declare-fun lt!874715 () Bool)

(assert (=> b!2418482 (= e!1538883 (= lt!874715 call!147685))))

(declare-fun b!2418484 () Bool)

(declare-fun derivativeStep!1800 (Regex!7108 C!14374) Regex!7108)

(assert (=> b!2418484 (= e!1538884 (matchR!3225 (derivativeStep!1800 (ite c!385430 lt!874671 (Concat!11744 lt!874669 EmptyExpr!7108)) (head!5430 (ite c!385430 s!9460 call!147664))) (tail!3702 (ite c!385430 s!9460 call!147664))))))

(declare-fun b!2418485 () Bool)

(declare-fun res!1027111 () Bool)

(assert (=> b!2418485 (=> (not res!1027111) (not e!1538886))))

(assert (=> b!2418485 (= res!1027111 (not call!147685))))

(declare-fun b!2418486 () Bool)

(declare-fun res!1027112 () Bool)

(assert (=> b!2418486 (=> (not res!1027112) (not e!1538886))))

(assert (=> b!2418486 (= res!1027112 (isEmpty!16372 (tail!3702 (ite c!385430 s!9460 call!147664))))))

(declare-fun b!2418487 () Bool)

(declare-fun res!1027108 () Bool)

(declare-fun e!1538888 () Bool)

(assert (=> b!2418487 (=> res!1027108 e!1538888)))

(assert (=> b!2418487 (= res!1027108 e!1538886)))

(declare-fun res!1027113 () Bool)

(assert (=> b!2418487 (=> (not res!1027113) (not e!1538886))))

(assert (=> b!2418487 (= res!1027113 lt!874715)))

(declare-fun b!2418488 () Bool)

(declare-fun res!1027107 () Bool)

(assert (=> b!2418488 (=> res!1027107 e!1538888)))

(assert (=> b!2418488 (= res!1027107 (not (is-ElementMatch!7108 (ite c!385430 lt!874671 (Concat!11744 lt!874669 EmptyExpr!7108)))))))

(declare-fun e!1538889 () Bool)

(assert (=> b!2418488 (= e!1538889 e!1538888)))

(declare-fun b!2418483 () Bool)

(assert (=> b!2418483 (= e!1538889 (not lt!874715))))

(declare-fun d!701483 () Bool)

(assert (=> d!701483 e!1538883))

(declare-fun c!385448 () Bool)

(assert (=> d!701483 (= c!385448 (is-EmptyExpr!7108 (ite c!385430 lt!874671 (Concat!11744 lt!874669 EmptyExpr!7108))))))

(assert (=> d!701483 (= lt!874715 e!1538884)))

(declare-fun c!385447 () Bool)

(assert (=> d!701483 (= c!385447 (isEmpty!16372 (ite c!385430 s!9460 call!147664)))))

(assert (=> d!701483 (validRegex!2828 (ite c!385430 lt!874671 (Concat!11744 lt!874669 EmptyExpr!7108)))))

(assert (=> d!701483 (= (matchR!3225 (ite c!385430 lt!874671 (Concat!11744 lt!874669 EmptyExpr!7108)) (ite c!385430 s!9460 call!147664)) lt!874715)))

(declare-fun b!2418489 () Bool)

(assert (=> b!2418489 (= e!1538888 e!1538887)))

(declare-fun res!1027110 () Bool)

(assert (=> b!2418489 (=> (not res!1027110) (not e!1538887))))

(assert (=> b!2418489 (= res!1027110 (not lt!874715))))

(declare-fun b!2418490 () Bool)

(assert (=> b!2418490 (= e!1538883 e!1538889)))

(declare-fun c!385446 () Bool)

(assert (=> b!2418490 (= c!385446 (is-EmptyLang!7108 (ite c!385430 lt!874671 (Concat!11744 lt!874669 EmptyExpr!7108))))))

(assert (= (and d!701483 c!385447) b!2418477))

(assert (= (and d!701483 (not c!385447)) b!2418484))

(assert (= (and d!701483 c!385448) b!2418482))

(assert (= (and d!701483 (not c!385448)) b!2418490))

(assert (= (and b!2418490 c!385446) b!2418483))

(assert (= (and b!2418490 (not c!385446)) b!2418488))

(assert (= (and b!2418488 (not res!1027107)) b!2418487))

(assert (= (and b!2418487 res!1027113) b!2418485))

(assert (= (and b!2418485 res!1027111) b!2418486))

(assert (= (and b!2418486 res!1027112) b!2418480))

(assert (= (and b!2418487 (not res!1027108)) b!2418489))

(assert (= (and b!2418489 res!1027110) b!2418479))

(assert (= (and b!2418479 (not res!1027109)) b!2418478))

(assert (= (and b!2418478 (not res!1027114)) b!2418481))

(assert (= (or b!2418482 b!2418479 b!2418485) bm!147680))

(declare-fun m!2806123 () Bool)

(assert (=> b!2418481 m!2806123))

(declare-fun m!2806125 () Bool)

(assert (=> d!701483 m!2806125))

(declare-fun m!2806127 () Bool)

(assert (=> d!701483 m!2806127))

(assert (=> b!2418484 m!2806123))

(assert (=> b!2418484 m!2806123))

(declare-fun m!2806129 () Bool)

(assert (=> b!2418484 m!2806129))

(declare-fun m!2806131 () Bool)

(assert (=> b!2418484 m!2806131))

(assert (=> b!2418484 m!2806129))

(assert (=> b!2418484 m!2806131))

(declare-fun m!2806133 () Bool)

(assert (=> b!2418484 m!2806133))

(assert (=> bm!147680 m!2806125))

(assert (=> b!2418478 m!2806131))

(assert (=> b!2418478 m!2806131))

(declare-fun m!2806135 () Bool)

(assert (=> b!2418478 m!2806135))

(assert (=> b!2418480 m!2806123))

(declare-fun m!2806137 () Bool)

(assert (=> b!2418477 m!2806137))

(assert (=> b!2418486 m!2806131))

(assert (=> b!2418486 m!2806131))

(assert (=> b!2418486 m!2806135))

(assert (=> bm!147655 d!701483))

(declare-fun d!701487 () Bool)

(assert (=> d!701487 (matchR!3225 (Concat!11744 lt!874669 EmptyExpr!7108) (++!7029 s!9460 Nil!28356))))

(declare-fun lt!874718 () Unit!41507)

(declare-fun choose!14299 (Regex!7108 Regex!7108 List!28454 List!28454) Unit!41507)

(assert (=> d!701487 (= lt!874718 (choose!14299 lt!874669 EmptyExpr!7108 s!9460 Nil!28356))))

(declare-fun e!1538892 () Bool)

(assert (=> d!701487 e!1538892))

(declare-fun res!1027117 () Bool)

(assert (=> d!701487 (=> (not res!1027117) (not e!1538892))))

(assert (=> d!701487 (= res!1027117 (validRegex!2828 lt!874669))))

(assert (=> d!701487 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!83 lt!874669 EmptyExpr!7108 s!9460 Nil!28356) lt!874718)))

(declare-fun b!2418493 () Bool)

(assert (=> b!2418493 (= e!1538892 (validRegex!2828 EmptyExpr!7108))))

(assert (= (and d!701487 res!1027117) b!2418493))

(declare-fun m!2806139 () Bool)

(assert (=> d!701487 m!2806139))

(assert (=> d!701487 m!2806139))

(declare-fun m!2806141 () Bool)

(assert (=> d!701487 m!2806141))

(declare-fun m!2806143 () Bool)

(assert (=> d!701487 m!2806143))

(declare-fun m!2806145 () Bool)

(assert (=> d!701487 m!2806145))

(declare-fun m!2806147 () Bool)

(assert (=> b!2418493 m!2806147))

(assert (=> b!2418366 d!701487))

(declare-fun b!2418494 () Bool)

(declare-fun e!1538894 () Bool)

(assert (=> b!2418494 (= e!1538894 (nullable!2143 lt!874671))))

(declare-fun bm!147681 () Bool)

(declare-fun call!147686 () Bool)

(assert (=> bm!147681 (= call!147686 (isEmpty!16372 call!147664))))

(declare-fun b!2418495 () Bool)

(declare-fun res!1027125 () Bool)

(declare-fun e!1538895 () Bool)

(assert (=> b!2418495 (=> res!1027125 e!1538895)))

(assert (=> b!2418495 (= res!1027125 (not (isEmpty!16372 (tail!3702 call!147664))))))

(declare-fun b!2418496 () Bool)

(declare-fun e!1538897 () Bool)

(assert (=> b!2418496 (= e!1538897 e!1538895)))

(declare-fun res!1027120 () Bool)

(assert (=> b!2418496 (=> res!1027120 e!1538895)))

(assert (=> b!2418496 (= res!1027120 call!147686)))

(declare-fun b!2418497 () Bool)

(declare-fun e!1538896 () Bool)

(assert (=> b!2418497 (= e!1538896 (= (head!5430 call!147664) (c!385432 lt!874671)))))

(declare-fun b!2418498 () Bool)

(assert (=> b!2418498 (= e!1538895 (not (= (head!5430 call!147664) (c!385432 lt!874671))))))

(declare-fun b!2418499 () Bool)

(declare-fun e!1538893 () Bool)

(declare-fun lt!874719 () Bool)

(assert (=> b!2418499 (= e!1538893 (= lt!874719 call!147686))))

(declare-fun b!2418501 () Bool)

(assert (=> b!2418501 (= e!1538894 (matchR!3225 (derivativeStep!1800 lt!874671 (head!5430 call!147664)) (tail!3702 call!147664)))))

(declare-fun b!2418502 () Bool)

(declare-fun res!1027122 () Bool)

(assert (=> b!2418502 (=> (not res!1027122) (not e!1538896))))

(assert (=> b!2418502 (= res!1027122 (not call!147686))))

(declare-fun b!2418503 () Bool)

(declare-fun res!1027123 () Bool)

(assert (=> b!2418503 (=> (not res!1027123) (not e!1538896))))

(assert (=> b!2418503 (= res!1027123 (isEmpty!16372 (tail!3702 call!147664)))))

(declare-fun b!2418504 () Bool)

(declare-fun res!1027119 () Bool)

(declare-fun e!1538898 () Bool)

(assert (=> b!2418504 (=> res!1027119 e!1538898)))

(assert (=> b!2418504 (= res!1027119 e!1538896)))

(declare-fun res!1027124 () Bool)

(assert (=> b!2418504 (=> (not res!1027124) (not e!1538896))))

(assert (=> b!2418504 (= res!1027124 lt!874719)))

(declare-fun b!2418505 () Bool)

(declare-fun res!1027118 () Bool)

(assert (=> b!2418505 (=> res!1027118 e!1538898)))

(assert (=> b!2418505 (= res!1027118 (not (is-ElementMatch!7108 lt!874671)))))

(declare-fun e!1538899 () Bool)

(assert (=> b!2418505 (= e!1538899 e!1538898)))

(declare-fun b!2418500 () Bool)

(assert (=> b!2418500 (= e!1538899 (not lt!874719))))

(declare-fun d!701489 () Bool)

(assert (=> d!701489 e!1538893))

(declare-fun c!385451 () Bool)

(assert (=> d!701489 (= c!385451 (is-EmptyExpr!7108 lt!874671))))

(assert (=> d!701489 (= lt!874719 e!1538894)))

(declare-fun c!385450 () Bool)

(assert (=> d!701489 (= c!385450 (isEmpty!16372 call!147664))))

(assert (=> d!701489 (validRegex!2828 lt!874671)))

(assert (=> d!701489 (= (matchR!3225 lt!874671 call!147664) lt!874719)))

(declare-fun b!2418506 () Bool)

(assert (=> b!2418506 (= e!1538898 e!1538897)))

(declare-fun res!1027121 () Bool)

(assert (=> b!2418506 (=> (not res!1027121) (not e!1538897))))

(assert (=> b!2418506 (= res!1027121 (not lt!874719))))

(declare-fun b!2418507 () Bool)

(assert (=> b!2418507 (= e!1538893 e!1538899)))

(declare-fun c!385449 () Bool)

(assert (=> b!2418507 (= c!385449 (is-EmptyLang!7108 lt!874671))))

(assert (= (and d!701489 c!385450) b!2418494))

(assert (= (and d!701489 (not c!385450)) b!2418501))

(assert (= (and d!701489 c!385451) b!2418499))

(assert (= (and d!701489 (not c!385451)) b!2418507))

(assert (= (and b!2418507 c!385449) b!2418500))

(assert (= (and b!2418507 (not c!385449)) b!2418505))

(assert (= (and b!2418505 (not res!1027118)) b!2418504))

(assert (= (and b!2418504 res!1027124) b!2418502))

(assert (= (and b!2418502 res!1027122) b!2418503))

(assert (= (and b!2418503 res!1027123) b!2418497))

(assert (= (and b!2418504 (not res!1027119)) b!2418506))

(assert (= (and b!2418506 res!1027121) b!2418496))

(assert (= (and b!2418496 (not res!1027120)) b!2418495))

(assert (= (and b!2418495 (not res!1027125)) b!2418498))

(assert (= (or b!2418499 b!2418496 b!2418502) bm!147681))

(declare-fun m!2806149 () Bool)

(assert (=> b!2418498 m!2806149))

(declare-fun m!2806151 () Bool)

(assert (=> d!701489 m!2806151))

(declare-fun m!2806153 () Bool)

(assert (=> d!701489 m!2806153))

(assert (=> b!2418501 m!2806149))

(assert (=> b!2418501 m!2806149))

(declare-fun m!2806155 () Bool)

(assert (=> b!2418501 m!2806155))

(declare-fun m!2806157 () Bool)

(assert (=> b!2418501 m!2806157))

(assert (=> b!2418501 m!2806155))

(assert (=> b!2418501 m!2806157))

(declare-fun m!2806159 () Bool)

(assert (=> b!2418501 m!2806159))

(assert (=> bm!147681 m!2806151))

(assert (=> b!2418495 m!2806157))

(assert (=> b!2418495 m!2806157))

(declare-fun m!2806161 () Bool)

(assert (=> b!2418495 m!2806161))

(assert (=> b!2418497 m!2806149))

(declare-fun m!2806163 () Bool)

(assert (=> b!2418494 m!2806163))

(assert (=> b!2418503 m!2806157))

(assert (=> b!2418503 m!2806157))

(assert (=> b!2418503 m!2806161))

(assert (=> b!2418366 d!701489))

(declare-fun d!701491 () Bool)

(assert (=> d!701491 (isDefined!4435 (findConcatSeparation!717 lt!874669 EmptyExpr!7108 Nil!28356 s!9460 s!9460))))

(declare-fun lt!874722 () Unit!41507)

(declare-fun choose!14300 (Regex!7108 Regex!7108 List!28454) Unit!41507)

(assert (=> d!701491 (= lt!874722 (choose!14300 lt!874669 EmptyExpr!7108 s!9460))))

(assert (=> d!701491 (validRegex!2828 lt!874669)))

(assert (=> d!701491 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!57 lt!874669 EmptyExpr!7108 s!9460) lt!874722)))

(declare-fun bs!463639 () Bool)

(assert (= bs!463639 d!701491))

(assert (=> bs!463639 m!2806073))

(assert (=> bs!463639 m!2806073))

(declare-fun m!2806165 () Bool)

(assert (=> bs!463639 m!2806165))

(declare-fun m!2806167 () Bool)

(assert (=> bs!463639 m!2806167))

(assert (=> bs!463639 m!2806145))

(assert (=> b!2418366 d!701491))

(declare-fun d!701493 () Bool)

(assert (=> d!701493 (= (isEmpty!16370 l!9164) (is-Nil!28357 l!9164))))

(assert (=> b!2418382 d!701493))

(declare-fun d!701495 () Bool)

(declare-fun isEmpty!16373 (Option!5609) Bool)

(assert (=> d!701495 (= (isDefined!4435 (ite c!385430 call!147661 call!147660)) (not (isEmpty!16373 (ite c!385430 call!147661 call!147660))))))

(declare-fun bs!463640 () Bool)

(assert (= bs!463640 d!701495))

(declare-fun m!2806169 () Bool)

(assert (=> bs!463640 m!2806169))

(assert (=> bm!147658 d!701495))

(declare-fun b!2418554 () Bool)

(declare-fun e!1538925 () Bool)

(assert (=> b!2418554 (= e!1538925 (matchR!3225 lt!874673 s!9460))))

(declare-fun b!2418555 () Bool)

(declare-fun e!1538927 () Option!5609)

(assert (=> b!2418555 (= e!1538927 None!5608)))

(declare-fun b!2418556 () Bool)

(declare-fun e!1538928 () Bool)

(declare-fun lt!874732 () Option!5609)

(assert (=> b!2418556 (= e!1538928 (= (++!7029 (_1!16539 (get!8715 lt!874732)) (_2!16539 (get!8715 lt!874732))) s!9460))))

(declare-fun b!2418557 () Bool)

(declare-fun res!1027153 () Bool)

(assert (=> b!2418557 (=> (not res!1027153) (not e!1538928))))

(assert (=> b!2418557 (= res!1027153 (matchR!3225 lt!874673 (_2!16539 (get!8715 lt!874732))))))

(declare-fun d!701497 () Bool)

(declare-fun e!1538926 () Bool)

(assert (=> d!701497 e!1538926))

(declare-fun res!1027156 () Bool)

(assert (=> d!701497 (=> res!1027156 e!1538926)))

(assert (=> d!701497 (= res!1027156 e!1538928)))

(declare-fun res!1027152 () Bool)

(assert (=> d!701497 (=> (not res!1027152) (not e!1538928))))

(assert (=> d!701497 (= res!1027152 (isDefined!4435 lt!874732))))

(declare-fun e!1538924 () Option!5609)

(assert (=> d!701497 (= lt!874732 e!1538924)))

(declare-fun c!385462 () Bool)

(assert (=> d!701497 (= c!385462 e!1538925)))

(declare-fun res!1027155 () Bool)

(assert (=> d!701497 (=> (not res!1027155) (not e!1538925))))

(assert (=> d!701497 (= res!1027155 (matchR!3225 lt!874669 Nil!28356))))

(assert (=> d!701497 (validRegex!2828 lt!874669)))

(assert (=> d!701497 (= (findConcatSeparation!717 lt!874669 lt!874673 Nil!28356 s!9460 s!9460) lt!874732)))

(declare-fun b!2418558 () Bool)

(declare-fun lt!874731 () Unit!41507)

(declare-fun lt!874733 () Unit!41507)

(assert (=> b!2418558 (= lt!874731 lt!874733)))

(assert (=> b!2418558 (= (++!7029 (++!7029 Nil!28356 (Cons!28356 (h!33757 s!9460) Nil!28356)) (t!208431 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!655 (List!28454 C!14374 List!28454 List!28454) Unit!41507)

(assert (=> b!2418558 (= lt!874733 (lemmaMoveElementToOtherListKeepsConcatEq!655 Nil!28356 (h!33757 s!9460) (t!208431 s!9460) s!9460))))

(assert (=> b!2418558 (= e!1538927 (findConcatSeparation!717 lt!874669 lt!874673 (++!7029 Nil!28356 (Cons!28356 (h!33757 s!9460) Nil!28356)) (t!208431 s!9460) s!9460))))

(declare-fun b!2418559 () Bool)

(assert (=> b!2418559 (= e!1538924 e!1538927)))

(declare-fun c!385463 () Bool)

(assert (=> b!2418559 (= c!385463 (is-Nil!28356 s!9460))))

(declare-fun b!2418560 () Bool)

(declare-fun res!1027154 () Bool)

(assert (=> b!2418560 (=> (not res!1027154) (not e!1538928))))

(assert (=> b!2418560 (= res!1027154 (matchR!3225 lt!874669 (_1!16539 (get!8715 lt!874732))))))

(declare-fun b!2418561 () Bool)

(assert (=> b!2418561 (= e!1538924 (Some!5608 (tuple2!27997 Nil!28356 s!9460)))))

(declare-fun b!2418562 () Bool)

(assert (=> b!2418562 (= e!1538926 (not (isDefined!4435 lt!874732)))))

(assert (= (and d!701497 res!1027155) b!2418554))

(assert (= (and d!701497 c!385462) b!2418561))

(assert (= (and d!701497 (not c!385462)) b!2418559))

(assert (= (and b!2418559 c!385463) b!2418555))

(assert (= (and b!2418559 (not c!385463)) b!2418558))

(assert (= (and d!701497 res!1027152) b!2418560))

(assert (= (and b!2418560 res!1027154) b!2418557))

(assert (= (and b!2418557 res!1027153) b!2418556))

(assert (= (and d!701497 (not res!1027156)) b!2418562))

(declare-fun m!2806171 () Bool)

(assert (=> b!2418560 m!2806171))

(declare-fun m!2806173 () Bool)

(assert (=> b!2418560 m!2806173))

(declare-fun m!2806175 () Bool)

(assert (=> b!2418558 m!2806175))

(assert (=> b!2418558 m!2806175))

(declare-fun m!2806177 () Bool)

(assert (=> b!2418558 m!2806177))

(declare-fun m!2806179 () Bool)

(assert (=> b!2418558 m!2806179))

(assert (=> b!2418558 m!2806175))

(declare-fun m!2806181 () Bool)

(assert (=> b!2418558 m!2806181))

(assert (=> b!2418556 m!2806171))

(declare-fun m!2806183 () Bool)

(assert (=> b!2418556 m!2806183))

(declare-fun m!2806185 () Bool)

(assert (=> b!2418562 m!2806185))

(declare-fun m!2806187 () Bool)

(assert (=> b!2418554 m!2806187))

(assert (=> d!701497 m!2806185))

(declare-fun m!2806189 () Bool)

(assert (=> d!701497 m!2806189))

(assert (=> d!701497 m!2806145))

(assert (=> b!2418557 m!2806171))

(declare-fun m!2806191 () Bool)

(assert (=> b!2418557 m!2806191))

(assert (=> bm!147654 d!701497))

(declare-fun d!701499 () Bool)

(declare-fun res!1027169 () Bool)

(declare-fun e!1538940 () Bool)

(assert (=> d!701499 (=> res!1027169 e!1538940)))

(assert (=> d!701499 (= res!1027169 (is-Nil!28357 l!9164))))

(assert (=> d!701499 (= (forall!5742 l!9164 lambda!91084) e!1538940)))

(declare-fun b!2418581 () Bool)

(declare-fun e!1538941 () Bool)

(assert (=> b!2418581 (= e!1538940 e!1538941)))

(declare-fun res!1027170 () Bool)

(assert (=> b!2418581 (=> (not res!1027170) (not e!1538941))))

(declare-fun dynLambda!12204 (Int Regex!7108) Bool)

(assert (=> b!2418581 (= res!1027170 (dynLambda!12204 lambda!91084 (h!33758 l!9164)))))

(declare-fun b!2418582 () Bool)

(assert (=> b!2418582 (= e!1538941 (forall!5742 (t!208432 l!9164) lambda!91084))))

(assert (= (and d!701499 (not res!1027169)) b!2418581))

(assert (= (and b!2418581 res!1027170) b!2418582))

(declare-fun b_lambda!74603 () Bool)

(assert (=> (not b_lambda!74603) (not b!2418581)))

(declare-fun m!2806207 () Bool)

(assert (=> b!2418581 m!2806207))

(declare-fun m!2806209 () Bool)

(assert (=> b!2418582 m!2806209))

(assert (=> start!236914 d!701499))

(declare-fun bs!463641 () Bool)

(declare-fun d!701503 () Bool)

(assert (= bs!463641 (and d!701503 start!236914)))

(declare-fun lambda!91090 () Int)

(assert (=> bs!463641 (= lambda!91090 lambda!91084)))

(declare-fun e!1538959 () Bool)

(assert (=> d!701503 e!1538959))

(declare-fun res!1027176 () Bool)

(assert (=> d!701503 (=> (not res!1027176) (not e!1538959))))

(declare-fun lt!874737 () Regex!7108)

(assert (=> d!701503 (= res!1027176 (validRegex!2828 lt!874737))))

(declare-fun e!1538955 () Regex!7108)

(assert (=> d!701503 (= lt!874737 e!1538955)))

(declare-fun c!385476 () Bool)

(declare-fun e!1538958 () Bool)

(assert (=> d!701503 (= c!385476 e!1538958)))

(declare-fun res!1027175 () Bool)

(assert (=> d!701503 (=> (not res!1027175) (not e!1538958))))

(assert (=> d!701503 (= res!1027175 (is-Cons!28357 l!9164))))

(assert (=> d!701503 (forall!5742 l!9164 lambda!91090)))

(assert (=> d!701503 (= (generalisedConcat!209 l!9164) lt!874737)))

(declare-fun b!2418603 () Bool)

(declare-fun e!1538956 () Bool)

(declare-fun isConcat!163 (Regex!7108) Bool)

(assert (=> b!2418603 (= e!1538956 (isConcat!163 lt!874737))))

(declare-fun b!2418604 () Bool)

(declare-fun e!1538957 () Bool)

(assert (=> b!2418604 (= e!1538959 e!1538957)))

(declare-fun c!385475 () Bool)

(assert (=> b!2418604 (= c!385475 (isEmpty!16370 l!9164))))

(declare-fun b!2418605 () Bool)

(assert (=> b!2418605 (= e!1538958 (isEmpty!16370 (t!208432 l!9164)))))

(declare-fun b!2418606 () Bool)

(assert (=> b!2418606 (= e!1538956 (= lt!874737 (head!5428 l!9164)))))

(declare-fun b!2418607 () Bool)

(declare-fun e!1538954 () Regex!7108)

(assert (=> b!2418607 (= e!1538954 EmptyExpr!7108)))

(declare-fun b!2418608 () Bool)

(declare-fun isEmptyExpr!163 (Regex!7108) Bool)

(assert (=> b!2418608 (= e!1538957 (isEmptyExpr!163 lt!874737))))

(declare-fun b!2418609 () Bool)

(assert (=> b!2418609 (= e!1538955 (h!33758 l!9164))))

(declare-fun b!2418610 () Bool)

(assert (=> b!2418610 (= e!1538955 e!1538954)))

(declare-fun c!385477 () Bool)

(assert (=> b!2418610 (= c!385477 (is-Cons!28357 l!9164))))

(declare-fun b!2418611 () Bool)

(assert (=> b!2418611 (= e!1538957 e!1538956)))

(declare-fun c!385478 () Bool)

(assert (=> b!2418611 (= c!385478 (isEmpty!16370 (tail!3700 l!9164)))))

(declare-fun b!2418612 () Bool)

(assert (=> b!2418612 (= e!1538954 (Concat!11744 (h!33758 l!9164) (generalisedConcat!209 (t!208432 l!9164))))))

(assert (= (and d!701503 res!1027175) b!2418605))

(assert (= (and d!701503 c!385476) b!2418609))

(assert (= (and d!701503 (not c!385476)) b!2418610))

(assert (= (and b!2418610 c!385477) b!2418612))

(assert (= (and b!2418610 (not c!385477)) b!2418607))

(assert (= (and d!701503 res!1027176) b!2418604))

(assert (= (and b!2418604 c!385475) b!2418608))

(assert (= (and b!2418604 (not c!385475)) b!2418611))

(assert (= (and b!2418611 c!385478) b!2418606))

(assert (= (and b!2418611 (not c!385478)) b!2418603))

(assert (=> b!2418604 m!2806041))

(declare-fun m!2806211 () Bool)

(assert (=> b!2418608 m!2806211))

(assert (=> b!2418611 m!2806047))

(assert (=> b!2418611 m!2806047))

(declare-fun m!2806213 () Bool)

(assert (=> b!2418611 m!2806213))

(assert (=> b!2418606 m!2806069))

(declare-fun m!2806215 () Bool)

(assert (=> b!2418603 m!2806215))

(declare-fun m!2806217 () Bool)

(assert (=> b!2418605 m!2806217))

(declare-fun m!2806219 () Bool)

(assert (=> d!701503 m!2806219))

(declare-fun m!2806221 () Bool)

(assert (=> d!701503 m!2806221))

(declare-fun m!2806223 () Bool)

(assert (=> b!2418612 m!2806223))

(assert (=> b!2418372 d!701503))

(declare-fun b!2418613 () Bool)

(declare-fun e!1538961 () Bool)

(assert (=> b!2418613 (= e!1538961 (matchR!3225 EmptyExpr!7108 s!9460))))

(declare-fun b!2418614 () Bool)

(declare-fun e!1538963 () Option!5609)

(assert (=> b!2418614 (= e!1538963 None!5608)))

(declare-fun b!2418615 () Bool)

(declare-fun e!1538964 () Bool)

(declare-fun lt!874739 () Option!5609)

(assert (=> b!2418615 (= e!1538964 (= (++!7029 (_1!16539 (get!8715 lt!874739)) (_2!16539 (get!8715 lt!874739))) s!9460))))

(declare-fun b!2418616 () Bool)

(declare-fun res!1027178 () Bool)

(assert (=> b!2418616 (=> (not res!1027178) (not e!1538964))))

(assert (=> b!2418616 (= res!1027178 (matchR!3225 EmptyExpr!7108 (_2!16539 (get!8715 lt!874739))))))

(declare-fun d!701505 () Bool)

(declare-fun e!1538962 () Bool)

(assert (=> d!701505 e!1538962))

(declare-fun res!1027181 () Bool)

(assert (=> d!701505 (=> res!1027181 e!1538962)))

(assert (=> d!701505 (= res!1027181 e!1538964)))

(declare-fun res!1027177 () Bool)

(assert (=> d!701505 (=> (not res!1027177) (not e!1538964))))

(assert (=> d!701505 (= res!1027177 (isDefined!4435 lt!874739))))

(declare-fun e!1538960 () Option!5609)

(assert (=> d!701505 (= lt!874739 e!1538960)))

(declare-fun c!385479 () Bool)

(assert (=> d!701505 (= c!385479 e!1538961)))

(declare-fun res!1027180 () Bool)

(assert (=> d!701505 (=> (not res!1027180) (not e!1538961))))

(assert (=> d!701505 (= res!1027180 (matchR!3225 lt!874669 Nil!28356))))

(assert (=> d!701505 (validRegex!2828 lt!874669)))

(assert (=> d!701505 (= (findConcatSeparation!717 lt!874669 EmptyExpr!7108 Nil!28356 s!9460 s!9460) lt!874739)))

(declare-fun b!2418617 () Bool)

(declare-fun lt!874738 () Unit!41507)

(declare-fun lt!874740 () Unit!41507)

(assert (=> b!2418617 (= lt!874738 lt!874740)))

(assert (=> b!2418617 (= (++!7029 (++!7029 Nil!28356 (Cons!28356 (h!33757 s!9460) Nil!28356)) (t!208431 s!9460)) s!9460)))

(assert (=> b!2418617 (= lt!874740 (lemmaMoveElementToOtherListKeepsConcatEq!655 Nil!28356 (h!33757 s!9460) (t!208431 s!9460) s!9460))))

(assert (=> b!2418617 (= e!1538963 (findConcatSeparation!717 lt!874669 EmptyExpr!7108 (++!7029 Nil!28356 (Cons!28356 (h!33757 s!9460) Nil!28356)) (t!208431 s!9460) s!9460))))

(declare-fun b!2418618 () Bool)

(assert (=> b!2418618 (= e!1538960 e!1538963)))

(declare-fun c!385480 () Bool)

(assert (=> b!2418618 (= c!385480 (is-Nil!28356 s!9460))))

(declare-fun b!2418619 () Bool)

(declare-fun res!1027179 () Bool)

(assert (=> b!2418619 (=> (not res!1027179) (not e!1538964))))

(assert (=> b!2418619 (= res!1027179 (matchR!3225 lt!874669 (_1!16539 (get!8715 lt!874739))))))

(declare-fun b!2418620 () Bool)

(assert (=> b!2418620 (= e!1538960 (Some!5608 (tuple2!27997 Nil!28356 s!9460)))))

(declare-fun b!2418621 () Bool)

(assert (=> b!2418621 (= e!1538962 (not (isDefined!4435 lt!874739)))))

(assert (= (and d!701505 res!1027180) b!2418613))

(assert (= (and d!701505 c!385479) b!2418620))

(assert (= (and d!701505 (not c!385479)) b!2418618))

(assert (= (and b!2418618 c!385480) b!2418614))

(assert (= (and b!2418618 (not c!385480)) b!2418617))

(assert (= (and d!701505 res!1027177) b!2418619))

(assert (= (and b!2418619 res!1027179) b!2418616))

(assert (= (and b!2418616 res!1027178) b!2418615))

(assert (= (and d!701505 (not res!1027181)) b!2418621))

(declare-fun m!2806225 () Bool)

(assert (=> b!2418619 m!2806225))

(declare-fun m!2806227 () Bool)

(assert (=> b!2418619 m!2806227))

(assert (=> b!2418617 m!2806175))

(assert (=> b!2418617 m!2806175))

(assert (=> b!2418617 m!2806177))

(assert (=> b!2418617 m!2806179))

(assert (=> b!2418617 m!2806175))

(declare-fun m!2806229 () Bool)

(assert (=> b!2418617 m!2806229))

(assert (=> b!2418615 m!2806225))

(declare-fun m!2806231 () Bool)

(assert (=> b!2418615 m!2806231))

(declare-fun m!2806233 () Bool)

(assert (=> b!2418621 m!2806233))

(declare-fun m!2806235 () Bool)

(assert (=> b!2418613 m!2806235))

(assert (=> d!701505 m!2806233))

(assert (=> d!701505 m!2806189))

(assert (=> d!701505 m!2806145))

(assert (=> b!2418616 m!2806225))

(declare-fun m!2806237 () Bool)

(assert (=> b!2418616 m!2806237))

(assert (=> bm!147657 d!701505))

(declare-fun d!701507 () Bool)

(assert (=> d!701507 (matchR!3225 (Concat!11744 lt!874669 EmptyExpr!7108) (++!7029 (_1!16539 lt!874665) (_2!16539 lt!874665)))))

(declare-fun lt!874743 () Unit!41507)

(declare-fun choose!14301 (Regex!7108 Regex!7108 List!28454 List!28454 List!28454) Unit!41507)

(assert (=> d!701507 (= lt!874743 (choose!14301 lt!874669 EmptyExpr!7108 (_1!16539 lt!874665) (_2!16539 lt!874665) s!9460))))

(assert (=> d!701507 (validRegex!2828 lt!874669)))

(assert (=> d!701507 (= (lemmaFindSeparationIsDefinedThenConcatMatches!57 lt!874669 EmptyExpr!7108 (_1!16539 lt!874665) (_2!16539 lt!874665) s!9460) lt!874743)))

(declare-fun bs!463642 () Bool)

(assert (= bs!463642 d!701507))

(declare-fun m!2806239 () Bool)

(assert (=> bs!463642 m!2806239))

(assert (=> bs!463642 m!2806239))

(declare-fun m!2806241 () Bool)

(assert (=> bs!463642 m!2806241))

(declare-fun m!2806243 () Bool)

(assert (=> bs!463642 m!2806243))

(assert (=> bs!463642 m!2806145))

(assert (=> b!2418370 d!701507))

(declare-fun d!701509 () Bool)

(assert (=> d!701509 (= (get!8715 lt!874667) (v!31016 lt!874667))))

(assert (=> b!2418370 d!701509))

(declare-fun b!2418644 () Bool)

(declare-fun e!1538980 () Bool)

(assert (=> b!2418644 (= e!1538980 (nullable!2143 r!13927))))

(declare-fun bm!147685 () Bool)

(declare-fun call!147690 () Bool)

(assert (=> bm!147685 (= call!147690 (isEmpty!16372 s!9460))))

(declare-fun b!2418645 () Bool)

(declare-fun res!1027195 () Bool)

(declare-fun e!1538981 () Bool)

(assert (=> b!2418645 (=> res!1027195 e!1538981)))

(assert (=> b!2418645 (= res!1027195 (not (isEmpty!16372 (tail!3702 s!9460))))))

(declare-fun b!2418646 () Bool)

(declare-fun e!1538983 () Bool)

(assert (=> b!2418646 (= e!1538983 e!1538981)))

(declare-fun res!1027190 () Bool)

(assert (=> b!2418646 (=> res!1027190 e!1538981)))

(assert (=> b!2418646 (= res!1027190 call!147690)))

(declare-fun b!2418647 () Bool)

(declare-fun e!1538982 () Bool)

(assert (=> b!2418647 (= e!1538982 (= (head!5430 s!9460) (c!385432 r!13927)))))

(declare-fun b!2418648 () Bool)

(assert (=> b!2418648 (= e!1538981 (not (= (head!5430 s!9460) (c!385432 r!13927))))))

(declare-fun b!2418649 () Bool)

(declare-fun e!1538979 () Bool)

(declare-fun lt!874744 () Bool)

(assert (=> b!2418649 (= e!1538979 (= lt!874744 call!147690))))

(declare-fun b!2418651 () Bool)

(assert (=> b!2418651 (= e!1538980 (matchR!3225 (derivativeStep!1800 r!13927 (head!5430 s!9460)) (tail!3702 s!9460)))))

(declare-fun b!2418652 () Bool)

(declare-fun res!1027192 () Bool)

(assert (=> b!2418652 (=> (not res!1027192) (not e!1538982))))

(assert (=> b!2418652 (= res!1027192 (not call!147690))))

(declare-fun b!2418653 () Bool)

(declare-fun res!1027193 () Bool)

(assert (=> b!2418653 (=> (not res!1027193) (not e!1538982))))

(assert (=> b!2418653 (= res!1027193 (isEmpty!16372 (tail!3702 s!9460)))))

(declare-fun b!2418654 () Bool)

(declare-fun res!1027189 () Bool)

(declare-fun e!1538984 () Bool)

(assert (=> b!2418654 (=> res!1027189 e!1538984)))

(assert (=> b!2418654 (= res!1027189 e!1538982)))

(declare-fun res!1027194 () Bool)

(assert (=> b!2418654 (=> (not res!1027194) (not e!1538982))))

(assert (=> b!2418654 (= res!1027194 lt!874744)))

(declare-fun b!2418655 () Bool)

(declare-fun res!1027188 () Bool)

(assert (=> b!2418655 (=> res!1027188 e!1538984)))

(assert (=> b!2418655 (= res!1027188 (not (is-ElementMatch!7108 r!13927)))))

(declare-fun e!1538985 () Bool)

(assert (=> b!2418655 (= e!1538985 e!1538984)))

(declare-fun b!2418650 () Bool)

(assert (=> b!2418650 (= e!1538985 (not lt!874744))))

(declare-fun d!701511 () Bool)

(assert (=> d!701511 e!1538979))

(declare-fun c!385491 () Bool)

(assert (=> d!701511 (= c!385491 (is-EmptyExpr!7108 r!13927))))

(assert (=> d!701511 (= lt!874744 e!1538980)))

(declare-fun c!385490 () Bool)

(assert (=> d!701511 (= c!385490 (isEmpty!16372 s!9460))))

(assert (=> d!701511 (validRegex!2828 r!13927)))

(assert (=> d!701511 (= (matchR!3225 r!13927 s!9460) lt!874744)))

(declare-fun b!2418656 () Bool)

(assert (=> b!2418656 (= e!1538984 e!1538983)))

(declare-fun res!1027191 () Bool)

(assert (=> b!2418656 (=> (not res!1027191) (not e!1538983))))

(assert (=> b!2418656 (= res!1027191 (not lt!874744))))

(declare-fun b!2418657 () Bool)

(assert (=> b!2418657 (= e!1538979 e!1538985)))

(declare-fun c!385489 () Bool)

(assert (=> b!2418657 (= c!385489 (is-EmptyLang!7108 r!13927))))

(assert (= (and d!701511 c!385490) b!2418644))

(assert (= (and d!701511 (not c!385490)) b!2418651))

(assert (= (and d!701511 c!385491) b!2418649))

(assert (= (and d!701511 (not c!385491)) b!2418657))

(assert (= (and b!2418657 c!385489) b!2418650))

(assert (= (and b!2418657 (not c!385489)) b!2418655))

(assert (= (and b!2418655 (not res!1027188)) b!2418654))

(assert (= (and b!2418654 res!1027194) b!2418652))

(assert (= (and b!2418652 res!1027192) b!2418653))

(assert (= (and b!2418653 res!1027193) b!2418647))

(assert (= (and b!2418654 (not res!1027189)) b!2418656))

(assert (= (and b!2418656 res!1027191) b!2418646))

(assert (= (and b!2418646 (not res!1027190)) b!2418645))

(assert (= (and b!2418645 (not res!1027195)) b!2418648))

(assert (= (or b!2418649 b!2418646 b!2418652) bm!147685))

(declare-fun m!2806245 () Bool)

(assert (=> b!2418648 m!2806245))

(declare-fun m!2806247 () Bool)

(assert (=> d!701511 m!2806247))

(assert (=> d!701511 m!2806043))

(assert (=> b!2418651 m!2806245))

(assert (=> b!2418651 m!2806245))

(declare-fun m!2806249 () Bool)

(assert (=> b!2418651 m!2806249))

(declare-fun m!2806251 () Bool)

(assert (=> b!2418651 m!2806251))

(assert (=> b!2418651 m!2806249))

(assert (=> b!2418651 m!2806251))

(declare-fun m!2806253 () Bool)

(assert (=> b!2418651 m!2806253))

(assert (=> bm!147685 m!2806247))

(assert (=> b!2418645 m!2806251))

(assert (=> b!2418645 m!2806251))

(declare-fun m!2806255 () Bool)

(assert (=> b!2418645 m!2806255))

(assert (=> b!2418647 m!2806245))

(declare-fun m!2806257 () Bool)

(assert (=> b!2418644 m!2806257))

(assert (=> b!2418653 m!2806251))

(assert (=> b!2418653 m!2806251))

(assert (=> b!2418653 m!2806255))

(assert (=> b!2418385 d!701511))

(declare-fun b!2418700 () Bool)

(assert (=> b!2418700 true))

(assert (=> b!2418700 true))

(declare-fun bs!463643 () Bool)

(declare-fun b!2418708 () Bool)

(assert (= bs!463643 (and b!2418708 b!2418700)))

(declare-fun lambda!91100 () Int)

(declare-fun lambda!91099 () Int)

(assert (=> bs!463643 (not (= lambda!91100 lambda!91099))))

(assert (=> b!2418708 true))

(assert (=> b!2418708 true))

(declare-fun d!701513 () Bool)

(declare-fun c!385500 () Bool)

(assert (=> d!701513 (= c!385500 (is-EmptyExpr!7108 r!13927))))

(declare-fun e!1539009 () Bool)

(assert (=> d!701513 (= (matchRSpec!957 r!13927 s!9460) e!1539009)))

(declare-fun e!1539011 () Bool)

(declare-fun call!147700 () Bool)

(assert (=> b!2418700 (= e!1539011 call!147700)))

(declare-fun bm!147694 () Bool)

(declare-fun call!147699 () Bool)

(assert (=> bm!147694 (= call!147699 (isEmpty!16372 s!9460))))

(declare-fun b!2418701 () Bool)

(declare-fun e!1539012 () Bool)

(assert (=> b!2418701 (= e!1539012 (matchRSpec!957 (regTwo!14729 r!13927) s!9460))))

(declare-fun b!2418702 () Bool)

(declare-fun res!1027224 () Bool)

(assert (=> b!2418702 (=> res!1027224 e!1539011)))

(assert (=> b!2418702 (= res!1027224 call!147699)))

(declare-fun e!1539010 () Bool)

(assert (=> b!2418702 (= e!1539010 e!1539011)))

(declare-fun b!2418703 () Bool)

(assert (=> b!2418703 (= e!1539009 call!147699)))

(declare-fun bm!147695 () Bool)

(declare-fun c!385501 () Bool)

(declare-fun Exists!1148 (Int) Bool)

(assert (=> bm!147695 (= call!147700 (Exists!1148 (ite c!385501 lambda!91099 lambda!91100)))))

(declare-fun b!2418704 () Bool)

(declare-fun c!385502 () Bool)

(assert (=> b!2418704 (= c!385502 (is-Union!7108 r!13927))))

(declare-fun e!1539014 () Bool)

(declare-fun e!1539008 () Bool)

(assert (=> b!2418704 (= e!1539014 e!1539008)))

(declare-fun b!2418705 () Bool)

(assert (=> b!2418705 (= e!1539014 (= s!9460 (Cons!28356 (c!385432 r!13927) Nil!28356)))))

(declare-fun b!2418706 () Bool)

(assert (=> b!2418706 (= e!1539008 e!1539012)))

(declare-fun res!1027222 () Bool)

(assert (=> b!2418706 (= res!1027222 (matchRSpec!957 (regOne!14729 r!13927) s!9460))))

(assert (=> b!2418706 (=> res!1027222 e!1539012)))

(declare-fun b!2418707 () Bool)

(declare-fun e!1539013 () Bool)

(assert (=> b!2418707 (= e!1539009 e!1539013)))

(declare-fun res!1027223 () Bool)

(assert (=> b!2418707 (= res!1027223 (not (is-EmptyLang!7108 r!13927)))))

(assert (=> b!2418707 (=> (not res!1027223) (not e!1539013))))

(assert (=> b!2418708 (= e!1539010 call!147700)))

(declare-fun b!2418709 () Bool)

(assert (=> b!2418709 (= e!1539008 e!1539010)))

(assert (=> b!2418709 (= c!385501 (is-Star!7108 r!13927))))

(declare-fun b!2418710 () Bool)

(declare-fun c!385503 () Bool)

(assert (=> b!2418710 (= c!385503 (is-ElementMatch!7108 r!13927))))

(assert (=> b!2418710 (= e!1539013 e!1539014)))

(assert (= (and d!701513 c!385500) b!2418703))

(assert (= (and d!701513 (not c!385500)) b!2418707))

(assert (= (and b!2418707 res!1027223) b!2418710))

(assert (= (and b!2418710 c!385503) b!2418705))

(assert (= (and b!2418710 (not c!385503)) b!2418704))

(assert (= (and b!2418704 c!385502) b!2418706))

(assert (= (and b!2418704 (not c!385502)) b!2418709))

(assert (= (and b!2418706 (not res!1027222)) b!2418701))

(assert (= (and b!2418709 c!385501) b!2418702))

(assert (= (and b!2418709 (not c!385501)) b!2418708))

(assert (= (and b!2418702 (not res!1027224)) b!2418700))

(assert (= (or b!2418700 b!2418708) bm!147695))

(assert (= (or b!2418703 b!2418702) bm!147694))

(assert (=> bm!147694 m!2806247))

(declare-fun m!2806259 () Bool)

(assert (=> b!2418701 m!2806259))

(declare-fun m!2806261 () Bool)

(assert (=> bm!147695 m!2806261))

(declare-fun m!2806263 () Bool)

(assert (=> b!2418706 m!2806263))

(assert (=> b!2418385 d!701513))

(declare-fun d!701515 () Bool)

(assert (=> d!701515 (= (matchR!3225 r!13927 s!9460) (matchRSpec!957 r!13927 s!9460))))

(declare-fun lt!874747 () Unit!41507)

(declare-fun choose!14302 (Regex!7108 List!28454) Unit!41507)

(assert (=> d!701515 (= lt!874747 (choose!14302 r!13927 s!9460))))

(assert (=> d!701515 (validRegex!2828 r!13927)))

(assert (=> d!701515 (= (mainMatchTheorem!957 r!13927 s!9460) lt!874747)))

(declare-fun bs!463644 () Bool)

(assert (= bs!463644 d!701515))

(assert (=> bs!463644 m!2806055))

(assert (=> bs!463644 m!2806057))

(declare-fun m!2806265 () Bool)

(assert (=> bs!463644 m!2806265))

(assert (=> bs!463644 m!2806043))

(assert (=> b!2418385 d!701515))

(declare-fun bs!463645 () Bool)

(declare-fun d!701517 () Bool)

(assert (= bs!463645 (and d!701517 start!236914)))

(declare-fun lambda!91102 () Int)

(assert (=> bs!463645 (= lambda!91102 lambda!91084)))

(declare-fun bs!463646 () Bool)

(assert (= bs!463646 (and d!701517 d!701503)))

(assert (=> bs!463646 (= lambda!91102 lambda!91090)))

(declare-fun e!1539027 () Bool)

(assert (=> d!701517 e!1539027))

(declare-fun res!1027229 () Bool)

(assert (=> d!701517 (=> (not res!1027229) (not e!1539027))))

(declare-fun lt!874748 () Regex!7108)

(assert (=> d!701517 (= res!1027229 (validRegex!2828 lt!874748))))

(declare-fun e!1539023 () Regex!7108)

(assert (=> d!701517 (= lt!874748 e!1539023)))

(declare-fun c!385509 () Bool)

(declare-fun e!1539026 () Bool)

(assert (=> d!701517 (= c!385509 e!1539026)))

(declare-fun res!1027228 () Bool)

(assert (=> d!701517 (=> (not res!1027228) (not e!1539026))))

(assert (=> d!701517 (= res!1027228 (is-Cons!28357 lt!874668))))

(assert (=> d!701517 (forall!5742 lt!874668 lambda!91102)))

(assert (=> d!701517 (= (generalisedConcat!209 lt!874668) lt!874748)))

(declare-fun b!2418728 () Bool)

(declare-fun e!1539024 () Bool)

(assert (=> b!2418728 (= e!1539024 (isConcat!163 lt!874748))))

(declare-fun b!2418729 () Bool)

(declare-fun e!1539025 () Bool)

(assert (=> b!2418729 (= e!1539027 e!1539025)))

(declare-fun c!385508 () Bool)

(assert (=> b!2418729 (= c!385508 (isEmpty!16370 lt!874668))))

(declare-fun b!2418730 () Bool)

(assert (=> b!2418730 (= e!1539026 (isEmpty!16370 (t!208432 lt!874668)))))

(declare-fun b!2418731 () Bool)

(assert (=> b!2418731 (= e!1539024 (= lt!874748 (head!5428 lt!874668)))))

(declare-fun b!2418732 () Bool)

(declare-fun e!1539022 () Regex!7108)

(assert (=> b!2418732 (= e!1539022 EmptyExpr!7108)))

(declare-fun b!2418733 () Bool)

(assert (=> b!2418733 (= e!1539025 (isEmptyExpr!163 lt!874748))))

(declare-fun b!2418734 () Bool)

(assert (=> b!2418734 (= e!1539023 (h!33758 lt!874668))))

(declare-fun b!2418735 () Bool)

(assert (=> b!2418735 (= e!1539023 e!1539022)))

(declare-fun c!385510 () Bool)

(assert (=> b!2418735 (= c!385510 (is-Cons!28357 lt!874668))))

(declare-fun b!2418736 () Bool)

(assert (=> b!2418736 (= e!1539025 e!1539024)))

(declare-fun c!385511 () Bool)

(assert (=> b!2418736 (= c!385511 (isEmpty!16370 (tail!3700 lt!874668)))))

(declare-fun b!2418737 () Bool)

(assert (=> b!2418737 (= e!1539022 (Concat!11744 (h!33758 lt!874668) (generalisedConcat!209 (t!208432 lt!874668))))))

(assert (= (and d!701517 res!1027228) b!2418730))

(assert (= (and d!701517 c!385509) b!2418734))

(assert (= (and d!701517 (not c!385509)) b!2418735))

(assert (= (and b!2418735 c!385510) b!2418737))

(assert (= (and b!2418735 (not c!385510)) b!2418732))

(assert (= (and d!701517 res!1027229) b!2418729))

(assert (= (and b!2418729 c!385508) b!2418733))

(assert (= (and b!2418729 (not c!385508)) b!2418736))

(assert (= (and b!2418736 c!385511) b!2418731))

(assert (= (and b!2418736 (not c!385511)) b!2418728))

(assert (=> b!2418729 m!2806045))

(declare-fun m!2806267 () Bool)

(assert (=> b!2418733 m!2806267))

(declare-fun m!2806269 () Bool)

(assert (=> b!2418736 m!2806269))

(assert (=> b!2418736 m!2806269))

(declare-fun m!2806271 () Bool)

(assert (=> b!2418736 m!2806271))

(declare-fun m!2806273 () Bool)

(assert (=> b!2418731 m!2806273))

(declare-fun m!2806275 () Bool)

(assert (=> b!2418728 m!2806275))

(declare-fun m!2806277 () Bool)

(assert (=> b!2418730 m!2806277))

(declare-fun m!2806279 () Bool)

(assert (=> d!701517 m!2806279))

(declare-fun m!2806281 () Bool)

(assert (=> d!701517 m!2806281))

(declare-fun m!2806283 () Bool)

(assert (=> b!2418737 m!2806283))

(assert (=> b!2418377 d!701517))

(declare-fun b!2418748 () Bool)

(declare-fun e!1539032 () List!28454)

(assert (=> b!2418748 (= e!1539032 (ite c!385430 Nil!28356 (_2!16539 lt!874665)))))

(declare-fun b!2418749 () Bool)

(assert (=> b!2418749 (= e!1539032 (Cons!28356 (h!33757 (ite c!385430 s!9460 (_1!16539 lt!874665))) (++!7029 (t!208431 (ite c!385430 s!9460 (_1!16539 lt!874665))) (ite c!385430 Nil!28356 (_2!16539 lt!874665)))))))

(declare-fun b!2418750 () Bool)

(declare-fun res!1027235 () Bool)

(declare-fun e!1539033 () Bool)

(assert (=> b!2418750 (=> (not res!1027235) (not e!1539033))))

(declare-fun lt!874751 () List!28454)

(declare-fun size!22232 (List!28454) Int)

(assert (=> b!2418750 (= res!1027235 (= (size!22232 lt!874751) (+ (size!22232 (ite c!385430 s!9460 (_1!16539 lt!874665))) (size!22232 (ite c!385430 Nil!28356 (_2!16539 lt!874665))))))))

(declare-fun b!2418751 () Bool)

(assert (=> b!2418751 (= e!1539033 (or (not (= (ite c!385430 Nil!28356 (_2!16539 lt!874665)) Nil!28356)) (= lt!874751 (ite c!385430 s!9460 (_1!16539 lt!874665)))))))

(declare-fun d!701519 () Bool)

(assert (=> d!701519 e!1539033))

(declare-fun res!1027234 () Bool)

(assert (=> d!701519 (=> (not res!1027234) (not e!1539033))))

(declare-fun content!3894 (List!28454) (Set C!14374))

(assert (=> d!701519 (= res!1027234 (= (content!3894 lt!874751) (set.union (content!3894 (ite c!385430 s!9460 (_1!16539 lt!874665))) (content!3894 (ite c!385430 Nil!28356 (_2!16539 lt!874665))))))))

(assert (=> d!701519 (= lt!874751 e!1539032)))

(declare-fun c!385514 () Bool)

(assert (=> d!701519 (= c!385514 (is-Nil!28356 (ite c!385430 s!9460 (_1!16539 lt!874665))))))

(assert (=> d!701519 (= (++!7029 (ite c!385430 s!9460 (_1!16539 lt!874665)) (ite c!385430 Nil!28356 (_2!16539 lt!874665))) lt!874751)))

(assert (= (and d!701519 c!385514) b!2418748))

(assert (= (and d!701519 (not c!385514)) b!2418749))

(assert (= (and d!701519 res!1027234) b!2418750))

(assert (= (and b!2418750 res!1027235) b!2418751))

(declare-fun m!2806291 () Bool)

(assert (=> b!2418749 m!2806291))

(declare-fun m!2806293 () Bool)

(assert (=> b!2418750 m!2806293))

(declare-fun m!2806295 () Bool)

(assert (=> b!2418750 m!2806295))

(declare-fun m!2806297 () Bool)

(assert (=> b!2418750 m!2806297))

(declare-fun m!2806299 () Bool)

(assert (=> d!701519 m!2806299))

(declare-fun m!2806301 () Bool)

(assert (=> d!701519 m!2806301))

(declare-fun m!2806303 () Bool)

(assert (=> d!701519 m!2806303))

(assert (=> bm!147656 d!701519))

(declare-fun b!2418752 () Bool)

(declare-fun e!1539035 () Bool)

(assert (=> b!2418752 (= e!1539035 (nullable!2143 lt!874669))))

(declare-fun bm!147698 () Bool)

(declare-fun call!147703 () Bool)

(assert (=> bm!147698 (= call!147703 (isEmpty!16372 s!9460))))

(declare-fun b!2418753 () Bool)

(declare-fun res!1027243 () Bool)

(declare-fun e!1539036 () Bool)

(assert (=> b!2418753 (=> res!1027243 e!1539036)))

(assert (=> b!2418753 (= res!1027243 (not (isEmpty!16372 (tail!3702 s!9460))))))

(declare-fun b!2418754 () Bool)

(declare-fun e!1539038 () Bool)

(assert (=> b!2418754 (= e!1539038 e!1539036)))

(declare-fun res!1027238 () Bool)

(assert (=> b!2418754 (=> res!1027238 e!1539036)))

(assert (=> b!2418754 (= res!1027238 call!147703)))

(declare-fun b!2418755 () Bool)

(declare-fun e!1539037 () Bool)

(assert (=> b!2418755 (= e!1539037 (= (head!5430 s!9460) (c!385432 lt!874669)))))

(declare-fun b!2418756 () Bool)

(assert (=> b!2418756 (= e!1539036 (not (= (head!5430 s!9460) (c!385432 lt!874669))))))

(declare-fun b!2418757 () Bool)

(declare-fun e!1539034 () Bool)

(declare-fun lt!874752 () Bool)

(assert (=> b!2418757 (= e!1539034 (= lt!874752 call!147703))))

(declare-fun b!2418759 () Bool)

(assert (=> b!2418759 (= e!1539035 (matchR!3225 (derivativeStep!1800 lt!874669 (head!5430 s!9460)) (tail!3702 s!9460)))))

(declare-fun b!2418760 () Bool)

(declare-fun res!1027240 () Bool)

(assert (=> b!2418760 (=> (not res!1027240) (not e!1539037))))

(assert (=> b!2418760 (= res!1027240 (not call!147703))))

(declare-fun b!2418761 () Bool)

(declare-fun res!1027241 () Bool)

(assert (=> b!2418761 (=> (not res!1027241) (not e!1539037))))

(assert (=> b!2418761 (= res!1027241 (isEmpty!16372 (tail!3702 s!9460)))))

(declare-fun b!2418762 () Bool)

(declare-fun res!1027237 () Bool)

(declare-fun e!1539039 () Bool)

(assert (=> b!2418762 (=> res!1027237 e!1539039)))

(assert (=> b!2418762 (= res!1027237 e!1539037)))

(declare-fun res!1027242 () Bool)

(assert (=> b!2418762 (=> (not res!1027242) (not e!1539037))))

(assert (=> b!2418762 (= res!1027242 lt!874752)))

(declare-fun b!2418763 () Bool)

(declare-fun res!1027236 () Bool)

(assert (=> b!2418763 (=> res!1027236 e!1539039)))

(assert (=> b!2418763 (= res!1027236 (not (is-ElementMatch!7108 lt!874669)))))

(declare-fun e!1539040 () Bool)

(assert (=> b!2418763 (= e!1539040 e!1539039)))

(declare-fun b!2418758 () Bool)

(assert (=> b!2418758 (= e!1539040 (not lt!874752))))

(declare-fun d!701523 () Bool)

(assert (=> d!701523 e!1539034))

(declare-fun c!385517 () Bool)

(assert (=> d!701523 (= c!385517 (is-EmptyExpr!7108 lt!874669))))

(assert (=> d!701523 (= lt!874752 e!1539035)))

(declare-fun c!385516 () Bool)

(assert (=> d!701523 (= c!385516 (isEmpty!16372 s!9460))))

(assert (=> d!701523 (validRegex!2828 lt!874669)))

(assert (=> d!701523 (= (matchR!3225 lt!874669 s!9460) lt!874752)))

(declare-fun b!2418764 () Bool)

(assert (=> b!2418764 (= e!1539039 e!1539038)))

(declare-fun res!1027239 () Bool)

(assert (=> b!2418764 (=> (not res!1027239) (not e!1539038))))

(assert (=> b!2418764 (= res!1027239 (not lt!874752))))

(declare-fun b!2418765 () Bool)

(assert (=> b!2418765 (= e!1539034 e!1539040)))

(declare-fun c!385515 () Bool)

(assert (=> b!2418765 (= c!385515 (is-EmptyLang!7108 lt!874669))))

(assert (= (and d!701523 c!385516) b!2418752))

(assert (= (and d!701523 (not c!385516)) b!2418759))

(assert (= (and d!701523 c!385517) b!2418757))

(assert (= (and d!701523 (not c!385517)) b!2418765))

(assert (= (and b!2418765 c!385515) b!2418758))

(assert (= (and b!2418765 (not c!385515)) b!2418763))

(assert (= (and b!2418763 (not res!1027236)) b!2418762))

(assert (= (and b!2418762 res!1027242) b!2418760))

(assert (= (and b!2418760 res!1027240) b!2418761))

(assert (= (and b!2418761 res!1027241) b!2418755))

(assert (= (and b!2418762 (not res!1027237)) b!2418764))

(assert (= (and b!2418764 res!1027239) b!2418754))

(assert (= (and b!2418754 (not res!1027238)) b!2418753))

(assert (= (and b!2418753 (not res!1027243)) b!2418756))

(assert (= (or b!2418757 b!2418754 b!2418760) bm!147698))

(assert (=> b!2418756 m!2806245))

(assert (=> d!701523 m!2806247))

(assert (=> d!701523 m!2806145))

(assert (=> b!2418759 m!2806245))

(assert (=> b!2418759 m!2806245))

(declare-fun m!2806305 () Bool)

(assert (=> b!2418759 m!2806305))

(assert (=> b!2418759 m!2806251))

(assert (=> b!2418759 m!2806305))

(assert (=> b!2418759 m!2806251))

(declare-fun m!2806307 () Bool)

(assert (=> b!2418759 m!2806307))

(assert (=> bm!147698 m!2806247))

(assert (=> b!2418753 m!2806251))

(assert (=> b!2418753 m!2806251))

(assert (=> b!2418753 m!2806255))

(assert (=> b!2418755 m!2806245))

(declare-fun m!2806309 () Bool)

(assert (=> b!2418752 m!2806309))

(assert (=> b!2418761 m!2806251))

(assert (=> b!2418761 m!2806251))

(assert (=> b!2418761 m!2806255))

(assert (=> b!2418383 d!701523))

(declare-fun d!701525 () Bool)

(assert (=> d!701525 (= (head!5428 l!9164) (h!33758 l!9164))))

(assert (=> b!2418383 d!701525))

(declare-fun d!701527 () Bool)

(assert (=> d!701527 (= (isEmpty!16370 lt!874668) (is-Nil!28357 lt!874668))))

(assert (=> b!2418376 d!701527))

(declare-fun d!701529 () Bool)

(assert (=> d!701529 (= (tail!3700 l!9164) (t!208432 l!9164))))

(assert (=> b!2418376 d!701529))

(declare-fun call!147711 () Bool)

(declare-fun c!385523 () Bool)

(declare-fun bm!147705 () Bool)

(declare-fun c!385522 () Bool)

(assert (=> bm!147705 (= call!147711 (validRegex!2828 (ite c!385523 (reg!7437 r!13927) (ite c!385522 (regOne!14729 r!13927) (regTwo!14728 r!13927)))))))

(declare-fun b!2418784 () Bool)

(declare-fun res!1027256 () Bool)

(declare-fun e!1539058 () Bool)

(assert (=> b!2418784 (=> res!1027256 e!1539058)))

(assert (=> b!2418784 (= res!1027256 (not (is-Concat!11744 r!13927)))))

(declare-fun e!1539061 () Bool)

(assert (=> b!2418784 (= e!1539061 e!1539058)))

(declare-fun b!2418785 () Bool)

(declare-fun e!1539059 () Bool)

(assert (=> b!2418785 (= e!1539058 e!1539059)))

(declare-fun res!1027254 () Bool)

(assert (=> b!2418785 (=> (not res!1027254) (not e!1539059))))

(declare-fun call!147712 () Bool)

(assert (=> b!2418785 (= res!1027254 call!147712)))

(declare-fun bm!147706 () Bool)

(declare-fun call!147710 () Bool)

(assert (=> bm!147706 (= call!147710 call!147711)))

(declare-fun b!2418786 () Bool)

(declare-fun e!1539057 () Bool)

(declare-fun e!1539060 () Bool)

(assert (=> b!2418786 (= e!1539057 e!1539060)))

(assert (=> b!2418786 (= c!385523 (is-Star!7108 r!13927))))

(declare-fun b!2418787 () Bool)

(declare-fun e!1539055 () Bool)

(assert (=> b!2418787 (= e!1539055 call!147711)))

(declare-fun b!2418788 () Bool)

(declare-fun res!1027257 () Bool)

(declare-fun e!1539056 () Bool)

(assert (=> b!2418788 (=> (not res!1027257) (not e!1539056))))

(assert (=> b!2418788 (= res!1027257 call!147710)))

(assert (=> b!2418788 (= e!1539061 e!1539056)))

(declare-fun b!2418789 () Bool)

(assert (=> b!2418789 (= e!1539060 e!1539061)))

(assert (=> b!2418789 (= c!385522 (is-Union!7108 r!13927))))

(declare-fun b!2418790 () Bool)

(assert (=> b!2418790 (= e!1539056 call!147712)))

(declare-fun b!2418791 () Bool)

(assert (=> b!2418791 (= e!1539059 call!147710)))

(declare-fun d!701531 () Bool)

(declare-fun res!1027255 () Bool)

(assert (=> d!701531 (=> res!1027255 e!1539057)))

(assert (=> d!701531 (= res!1027255 (is-ElementMatch!7108 r!13927))))

(assert (=> d!701531 (= (validRegex!2828 r!13927) e!1539057)))

(declare-fun b!2418792 () Bool)

(assert (=> b!2418792 (= e!1539060 e!1539055)))

(declare-fun res!1027258 () Bool)

(assert (=> b!2418792 (= res!1027258 (not (nullable!2143 (reg!7437 r!13927))))))

(assert (=> b!2418792 (=> (not res!1027258) (not e!1539055))))

(declare-fun bm!147707 () Bool)

(assert (=> bm!147707 (= call!147712 (validRegex!2828 (ite c!385522 (regTwo!14729 r!13927) (regOne!14728 r!13927))))))

(assert (= (and d!701531 (not res!1027255)) b!2418786))

(assert (= (and b!2418786 c!385523) b!2418792))

(assert (= (and b!2418786 (not c!385523)) b!2418789))

(assert (= (and b!2418792 res!1027258) b!2418787))

(assert (= (and b!2418789 c!385522) b!2418788))

(assert (= (and b!2418789 (not c!385522)) b!2418784))

(assert (= (and b!2418788 res!1027257) b!2418790))

(assert (= (and b!2418784 (not res!1027256)) b!2418785))

(assert (= (and b!2418785 res!1027254) b!2418791))

(assert (= (or b!2418788 b!2418791) bm!147706))

(assert (= (or b!2418790 b!2418785) bm!147707))

(assert (= (or b!2418787 bm!147706) bm!147705))

(declare-fun m!2806313 () Bool)

(assert (=> bm!147705 m!2806313))

(declare-fun m!2806315 () Bool)

(assert (=> b!2418792 m!2806315))

(declare-fun m!2806317 () Bool)

(assert (=> bm!147707 m!2806317))

(assert (=> b!2418367 d!701531))

(declare-fun d!701535 () Bool)

(assert (=> d!701535 (= (isDefined!4435 (ite c!385430 call!147660 lt!874667)) (not (isEmpty!16373 (ite c!385430 call!147660 lt!874667))))))

(declare-fun bs!463649 () Bool)

(assert (= bs!463649 d!701535))

(declare-fun m!2806319 () Bool)

(assert (=> bs!463649 m!2806319))

(assert (=> bm!147659 d!701535))

(declare-fun b!2418803 () Bool)

(declare-fun e!1539064 () Bool)

(assert (=> b!2418803 (= e!1539064 tp_is_empty!11629)))

(declare-fun b!2418806 () Bool)

(declare-fun tp!768918 () Bool)

(declare-fun tp!768917 () Bool)

(assert (=> b!2418806 (= e!1539064 (and tp!768918 tp!768917))))

(declare-fun b!2418805 () Bool)

(declare-fun tp!768920 () Bool)

(assert (=> b!2418805 (= e!1539064 tp!768920)))

(assert (=> b!2418375 (= tp!768877 e!1539064)))

(declare-fun b!2418804 () Bool)

(declare-fun tp!768919 () Bool)

(declare-fun tp!768916 () Bool)

(assert (=> b!2418804 (= e!1539064 (and tp!768919 tp!768916))))

(assert (= (and b!2418375 (is-ElementMatch!7108 (h!33758 l!9164))) b!2418803))

(assert (= (and b!2418375 (is-Concat!11744 (h!33758 l!9164))) b!2418804))

(assert (= (and b!2418375 (is-Star!7108 (h!33758 l!9164))) b!2418805))

(assert (= (and b!2418375 (is-Union!7108 (h!33758 l!9164))) b!2418806))

(declare-fun b!2418811 () Bool)

(declare-fun e!1539067 () Bool)

(declare-fun tp!768925 () Bool)

(declare-fun tp!768926 () Bool)

(assert (=> b!2418811 (= e!1539067 (and tp!768925 tp!768926))))

(assert (=> b!2418375 (= tp!768880 e!1539067)))

(assert (= (and b!2418375 (is-Cons!28357 (t!208432 l!9164))) b!2418811))

(declare-fun b!2418812 () Bool)

(declare-fun e!1539068 () Bool)

(assert (=> b!2418812 (= e!1539068 tp_is_empty!11629)))

(declare-fun b!2418815 () Bool)

(declare-fun tp!768929 () Bool)

(declare-fun tp!768928 () Bool)

(assert (=> b!2418815 (= e!1539068 (and tp!768929 tp!768928))))

(declare-fun b!2418814 () Bool)

(declare-fun tp!768931 () Bool)

(assert (=> b!2418814 (= e!1539068 tp!768931)))

(assert (=> b!2418374 (= tp!768879 e!1539068)))

(declare-fun b!2418813 () Bool)

(declare-fun tp!768930 () Bool)

(declare-fun tp!768927 () Bool)

(assert (=> b!2418813 (= e!1539068 (and tp!768930 tp!768927))))

(assert (= (and b!2418374 (is-ElementMatch!7108 (reg!7437 r!13927))) b!2418812))

(assert (= (and b!2418374 (is-Concat!11744 (reg!7437 r!13927))) b!2418813))

(assert (= (and b!2418374 (is-Star!7108 (reg!7437 r!13927))) b!2418814))

(assert (= (and b!2418374 (is-Union!7108 (reg!7437 r!13927))) b!2418815))

(declare-fun b!2418816 () Bool)

(declare-fun e!1539069 () Bool)

(assert (=> b!2418816 (= e!1539069 tp_is_empty!11629)))

(declare-fun b!2418819 () Bool)

(declare-fun tp!768934 () Bool)

(declare-fun tp!768933 () Bool)

(assert (=> b!2418819 (= e!1539069 (and tp!768934 tp!768933))))

(declare-fun b!2418818 () Bool)

(declare-fun tp!768936 () Bool)

(assert (=> b!2418818 (= e!1539069 tp!768936)))

(assert (=> b!2418384 (= tp!768874 e!1539069)))

(declare-fun b!2418817 () Bool)

(declare-fun tp!768935 () Bool)

(declare-fun tp!768932 () Bool)

(assert (=> b!2418817 (= e!1539069 (and tp!768935 tp!768932))))

(assert (= (and b!2418384 (is-ElementMatch!7108 (regOne!14728 r!13927))) b!2418816))

(assert (= (and b!2418384 (is-Concat!11744 (regOne!14728 r!13927))) b!2418817))

(assert (= (and b!2418384 (is-Star!7108 (regOne!14728 r!13927))) b!2418818))

(assert (= (and b!2418384 (is-Union!7108 (regOne!14728 r!13927))) b!2418819))

(declare-fun b!2418820 () Bool)

(declare-fun e!1539070 () Bool)

(assert (=> b!2418820 (= e!1539070 tp_is_empty!11629)))

(declare-fun b!2418823 () Bool)

(declare-fun tp!768939 () Bool)

(declare-fun tp!768938 () Bool)

(assert (=> b!2418823 (= e!1539070 (and tp!768939 tp!768938))))

(declare-fun b!2418822 () Bool)

(declare-fun tp!768941 () Bool)

(assert (=> b!2418822 (= e!1539070 tp!768941)))

(assert (=> b!2418384 (= tp!768875 e!1539070)))

(declare-fun b!2418821 () Bool)

(declare-fun tp!768940 () Bool)

(declare-fun tp!768937 () Bool)

(assert (=> b!2418821 (= e!1539070 (and tp!768940 tp!768937))))

(assert (= (and b!2418384 (is-ElementMatch!7108 (regTwo!14728 r!13927))) b!2418820))

(assert (= (and b!2418384 (is-Concat!11744 (regTwo!14728 r!13927))) b!2418821))

(assert (= (and b!2418384 (is-Star!7108 (regTwo!14728 r!13927))) b!2418822))

(assert (= (and b!2418384 (is-Union!7108 (regTwo!14728 r!13927))) b!2418823))

(declare-fun b!2418824 () Bool)

(declare-fun e!1539071 () Bool)

(assert (=> b!2418824 (= e!1539071 tp_is_empty!11629)))

(declare-fun b!2418827 () Bool)

(declare-fun tp!768944 () Bool)

(declare-fun tp!768943 () Bool)

(assert (=> b!2418827 (= e!1539071 (and tp!768944 tp!768943))))

(declare-fun b!2418826 () Bool)

(declare-fun tp!768946 () Bool)

(assert (=> b!2418826 (= e!1539071 tp!768946)))

(assert (=> b!2418380 (= tp!768881 e!1539071)))

(declare-fun b!2418825 () Bool)

(declare-fun tp!768945 () Bool)

(declare-fun tp!768942 () Bool)

(assert (=> b!2418825 (= e!1539071 (and tp!768945 tp!768942))))

(assert (= (and b!2418380 (is-ElementMatch!7108 (regOne!14729 r!13927))) b!2418824))

(assert (= (and b!2418380 (is-Concat!11744 (regOne!14729 r!13927))) b!2418825))

(assert (= (and b!2418380 (is-Star!7108 (regOne!14729 r!13927))) b!2418826))

(assert (= (and b!2418380 (is-Union!7108 (regOne!14729 r!13927))) b!2418827))

(declare-fun b!2418828 () Bool)

(declare-fun e!1539072 () Bool)

(assert (=> b!2418828 (= e!1539072 tp_is_empty!11629)))

(declare-fun b!2418831 () Bool)

(declare-fun tp!768949 () Bool)

(declare-fun tp!768948 () Bool)

(assert (=> b!2418831 (= e!1539072 (and tp!768949 tp!768948))))

(declare-fun b!2418830 () Bool)

(declare-fun tp!768951 () Bool)

(assert (=> b!2418830 (= e!1539072 tp!768951)))

(assert (=> b!2418380 (= tp!768878 e!1539072)))

(declare-fun b!2418829 () Bool)

(declare-fun tp!768950 () Bool)

(declare-fun tp!768947 () Bool)

(assert (=> b!2418829 (= e!1539072 (and tp!768950 tp!768947))))

(assert (= (and b!2418380 (is-ElementMatch!7108 (regTwo!14729 r!13927))) b!2418828))

(assert (= (and b!2418380 (is-Concat!11744 (regTwo!14729 r!13927))) b!2418829))

(assert (= (and b!2418380 (is-Star!7108 (regTwo!14729 r!13927))) b!2418830))

(assert (= (and b!2418380 (is-Union!7108 (regTwo!14729 r!13927))) b!2418831))

(declare-fun b!2418836 () Bool)

(declare-fun e!1539075 () Bool)

(declare-fun tp!768954 () Bool)

(assert (=> b!2418836 (= e!1539075 (and tp_is_empty!11629 tp!768954))))

(assert (=> b!2418373 (= tp!768876 e!1539075)))

(assert (= (and b!2418373 (is-Cons!28356 (t!208431 s!9460))) b!2418836))

(declare-fun b_lambda!74605 () Bool)

(assert (= b_lambda!74603 (or start!236914 b_lambda!74605)))

(declare-fun bs!463650 () Bool)

(declare-fun d!701537 () Bool)

(assert (= bs!463650 (and d!701537 start!236914)))

(assert (=> bs!463650 (= (dynLambda!12204 lambda!91084 (h!33758 l!9164)) (validRegex!2828 (h!33758 l!9164)))))

(declare-fun m!2806321 () Bool)

(assert (=> bs!463650 m!2806321))

(assert (=> b!2418581 d!701537))

(push 1)

(assert (not b!2418728))

(assert (not bm!147681))

(assert (not b!2418752))

(assert (not b!2418830))

(assert (not b!2418761))

(assert (not b_lambda!74605))

(assert (not b!2418814))

(assert (not b!2418481))

(assert (not b!2418736))

(assert (not b!2418822))

(assert (not b!2418811))

(assert (not b!2418501))

(assert (not b!2418478))

(assert (not b!2418493))

(assert (not b!2418651))

(assert (not bm!147680))

(assert (not b!2418562))

(assert (not d!701505))

(assert (not b!2418497))

(assert (not b!2418606))

(assert (not b!2418826))

(assert (not b!2418701))

(assert (not b!2418617))

(assert (not b!2418613))

(assert (not b!2418731))

(assert (not d!701491))

(assert (not b!2418755))

(assert (not b!2418819))

(assert (not b!2418821))

(assert (not b!2418554))

(assert (not d!701517))

(assert (not d!701487))

(assert (not b!2418484))

(assert (not b!2418817))

(assert (not d!701503))

(assert (not b!2418813))

(assert (not d!701535))

(assert (not b!2418612))

(assert (not b!2418750))

(assert (not b!2418495))

(assert (not b!2418560))

(assert (not b!2418753))

(assert (not b!2418737))

(assert (not d!701495))

(assert (not b!2418605))

(assert (not bm!147707))

(assert (not b!2418733))

(assert (not b!2418480))

(assert (not b!2418644))

(assert (not d!701519))

(assert (not b!2418759))

(assert (not b!2418604))

(assert (not b!2418829))

(assert (not b!2418608))

(assert (not b!2418836))

(assert (not bm!147685))

(assert (not d!701523))

(assert (not b!2418825))

(assert (not b!2418815))

(assert (not b!2418603))

(assert (not b!2418558))

(assert (not bm!147694))

(assert (not d!701511))

(assert (not b!2418647))

(assert (not d!701497))

(assert (not b!2418823))

(assert (not d!701483))

(assert (not b!2418477))

(assert (not bm!147698))

(assert (not b!2418611))

(assert (not b!2418503))

(assert (not d!701489))

(assert (not b!2418806))

(assert (not b!2418557))

(assert (not b!2418729))

(assert (not b!2418730))

(assert (not b!2418498))

(assert (not bm!147695))

(assert (not b!2418818))

(assert (not b!2418706))

(assert (not b!2418494))

(assert (not b!2418582))

(assert (not b!2418648))

(assert (not d!701507))

(assert (not b!2418749))

(assert (not b!2418831))

(assert (not b!2418827))

(assert (not b!2418486))

(assert (not b!2418621))

(assert (not d!701515))

(assert (not b!2418645))

(assert (not b!2418653))

(assert (not b!2418756))

(assert (not b!2418556))

(assert (not b!2418792))

(assert (not b!2418615))

(assert (not bm!147705))

(assert (not b!2418805))

(assert (not b!2418616))

(assert (not b!2418804))

(assert tp_is_empty!11629)

(assert (not b!2418619))

(assert (not bs!463650))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

