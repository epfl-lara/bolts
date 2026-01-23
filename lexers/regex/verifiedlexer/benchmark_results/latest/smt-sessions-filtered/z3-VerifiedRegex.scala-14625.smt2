; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!756472 () Bool)

(assert start!756472)

(declare-fun res!3175816 () Bool)

(declare-fun e!4731048 () Bool)

(assert (=> start!756472 (=> (not res!3175816) (not e!4731048))))

(declare-datatypes ((C!43744 0))(
  ( (C!43745 (val!32648 Int)) )
))
(declare-datatypes ((Regex!21703 0))(
  ( (ElementMatch!21703 (c!1473228 C!43744)) (Concat!30706 (regOne!43918 Regex!21703) (regTwo!43918 Regex!21703)) (EmptyExpr!21703) (Star!21703 (reg!22032 Regex!21703)) (EmptyLang!21703) (Union!21703 (regOne!43919 Regex!21703) (regTwo!43919 Regex!21703)) )
))
(declare-fun r!13230 () Regex!21703)

(declare-fun validRegex!11999 (Regex!21703) Bool)

(assert (=> start!756472 (= res!3175816 (validRegex!11999 r!13230))))

(assert (=> start!756472 e!4731048))

(declare-fun e!4731049 () Bool)

(assert (=> start!756472 e!4731049))

(declare-fun e!4731047 () Bool)

(assert (=> start!756472 e!4731047))

(declare-fun b!8030523 () Bool)

(declare-fun res!3175817 () Bool)

(assert (=> b!8030523 (=> (not res!3175817) (not e!4731048))))

(declare-datatypes ((List!75168 0))(
  ( (Nil!75042) (Cons!75042 (h!81490 C!43744) (t!390938 List!75168)) )
))
(declare-fun input!5983 () List!75168)

(declare-fun isEmpty!43021 (List!75168) Bool)

(assert (=> b!8030523 (= res!3175817 (not (isEmpty!43021 input!5983)))))

(declare-fun b!8030524 () Bool)

(declare-fun tp_is_empty!54401 () Bool)

(assert (=> b!8030524 (= e!4731049 tp_is_empty!54401)))

(declare-fun b!8030525 () Bool)

(declare-fun tp!2403451 () Bool)

(declare-fun tp!2403454 () Bool)

(assert (=> b!8030525 (= e!4731049 (and tp!2403451 tp!2403454))))

(declare-fun b!8030526 () Bool)

(declare-fun tp!2403455 () Bool)

(assert (=> b!8030526 (= e!4731047 (and tp_is_empty!54401 tp!2403455))))

(declare-fun b!8030527 () Bool)

(declare-fun tp!2403450 () Bool)

(assert (=> b!8030527 (= e!4731049 tp!2403450)))

(declare-fun b!8030528 () Bool)

(declare-fun tp!2403453 () Bool)

(declare-fun tp!2403452 () Bool)

(assert (=> b!8030528 (= e!4731049 (and tp!2403453 tp!2403452))))

(declare-fun b!8030529 () Bool)

(declare-fun lt!2721848 () Bool)

(get-info :version)

(assert (=> b!8030529 (= e!4731048 (and (not ((_ is EmptyExpr!21703) r!13230)) (not ((_ is EmptyLang!21703) r!13230)) ((_ is ElementMatch!21703) r!13230) lt!2721848 (= input!5983 Nil!75042)))))

(declare-fun matchR!10776 (Regex!21703 List!75168) Bool)

(declare-fun derivativeStep!6646 (Regex!21703 C!43744) Regex!21703)

(declare-fun head!16509 (List!75168) C!43744)

(declare-fun tail!16050 (List!75168) List!75168)

(assert (=> b!8030529 (= lt!2721848 (matchR!10776 (derivativeStep!6646 r!13230 (head!16509 input!5983)) (tail!16050 input!5983)))))

(assert (= (and start!756472 res!3175816) b!8030523))

(assert (= (and b!8030523 res!3175817) b!8030529))

(assert (= (and start!756472 ((_ is ElementMatch!21703) r!13230)) b!8030524))

(assert (= (and start!756472 ((_ is Concat!30706) r!13230)) b!8030528))

(assert (= (and start!756472 ((_ is Star!21703) r!13230)) b!8030527))

(assert (= (and start!756472 ((_ is Union!21703) r!13230)) b!8030525))

(assert (= (and start!756472 ((_ is Cons!75042) input!5983)) b!8030526))

(declare-fun m!8392066 () Bool)

(assert (=> start!756472 m!8392066))

(declare-fun m!8392068 () Bool)

(assert (=> b!8030523 m!8392068))

(declare-fun m!8392070 () Bool)

(assert (=> b!8030529 m!8392070))

(assert (=> b!8030529 m!8392070))

(declare-fun m!8392072 () Bool)

(assert (=> b!8030529 m!8392072))

(declare-fun m!8392074 () Bool)

(assert (=> b!8030529 m!8392074))

(assert (=> b!8030529 m!8392072))

(assert (=> b!8030529 m!8392074))

(declare-fun m!8392076 () Bool)

(assert (=> b!8030529 m!8392076))

(check-sat tp_is_empty!54401 (not start!756472) (not b!8030527) (not b!8030528) (not b!8030529) (not b!8030526) (not b!8030525) (not b!8030523))
(check-sat)
(get-model)

(declare-fun d!2394604 () Bool)

(assert (=> d!2394604 (= (isEmpty!43021 input!5983) ((_ is Nil!75042) input!5983))))

(assert (=> b!8030523 d!2394604))

(declare-fun b!8030548 () Bool)

(declare-fun e!4731067 () Bool)

(declare-fun e!4731065 () Bool)

(assert (=> b!8030548 (= e!4731067 e!4731065)))

(declare-fun c!1473233 () Bool)

(assert (=> b!8030548 (= c!1473233 ((_ is Star!21703) r!13230))))

(declare-fun b!8030549 () Bool)

(declare-fun e!4731064 () Bool)

(declare-fun call!744881 () Bool)

(assert (=> b!8030549 (= e!4731064 call!744881)))

(declare-fun bm!744874 () Bool)

(declare-fun c!1473234 () Bool)

(declare-fun call!744880 () Bool)

(assert (=> bm!744874 (= call!744880 (validRegex!11999 (ite c!1473233 (reg!22032 r!13230) (ite c!1473234 (regTwo!43919 r!13230) (regTwo!43918 r!13230)))))))

(declare-fun b!8030550 () Bool)

(declare-fun e!4731066 () Bool)

(assert (=> b!8030550 (= e!4731065 e!4731066)))

(assert (=> b!8030550 (= c!1473234 ((_ is Union!21703) r!13230))))

(declare-fun b!8030551 () Bool)

(declare-fun e!4731068 () Bool)

(assert (=> b!8030551 (= e!4731068 e!4731064)))

(declare-fun res!3175831 () Bool)

(assert (=> b!8030551 (=> (not res!3175831) (not e!4731064))))

(declare-fun call!744879 () Bool)

(assert (=> b!8030551 (= res!3175831 call!744879)))

(declare-fun b!8030552 () Bool)

(declare-fun e!4731070 () Bool)

(assert (=> b!8030552 (= e!4731070 call!744881)))

(declare-fun b!8030553 () Bool)

(declare-fun e!4731069 () Bool)

(assert (=> b!8030553 (= e!4731069 call!744880)))

(declare-fun bm!744875 () Bool)

(assert (=> bm!744875 (= call!744881 call!744880)))

(declare-fun d!2394606 () Bool)

(declare-fun res!3175832 () Bool)

(assert (=> d!2394606 (=> res!3175832 e!4731067)))

(assert (=> d!2394606 (= res!3175832 ((_ is ElementMatch!21703) r!13230))))

(assert (=> d!2394606 (= (validRegex!11999 r!13230) e!4731067)))

(declare-fun bm!744876 () Bool)

(assert (=> bm!744876 (= call!744879 (validRegex!11999 (ite c!1473234 (regOne!43919 r!13230) (regOne!43918 r!13230))))))

(declare-fun b!8030554 () Bool)

(assert (=> b!8030554 (= e!4731065 e!4731069)))

(declare-fun res!3175830 () Bool)

(declare-fun nullable!9736 (Regex!21703) Bool)

(assert (=> b!8030554 (= res!3175830 (not (nullable!9736 (reg!22032 r!13230))))))

(assert (=> b!8030554 (=> (not res!3175830) (not e!4731069))))

(declare-fun b!8030555 () Bool)

(declare-fun res!3175829 () Bool)

(assert (=> b!8030555 (=> (not res!3175829) (not e!4731070))))

(assert (=> b!8030555 (= res!3175829 call!744879)))

(assert (=> b!8030555 (= e!4731066 e!4731070)))

(declare-fun b!8030556 () Bool)

(declare-fun res!3175828 () Bool)

(assert (=> b!8030556 (=> res!3175828 e!4731068)))

(assert (=> b!8030556 (= res!3175828 (not ((_ is Concat!30706) r!13230)))))

(assert (=> b!8030556 (= e!4731066 e!4731068)))

(assert (= (and d!2394606 (not res!3175832)) b!8030548))

(assert (= (and b!8030548 c!1473233) b!8030554))

(assert (= (and b!8030548 (not c!1473233)) b!8030550))

(assert (= (and b!8030554 res!3175830) b!8030553))

(assert (= (and b!8030550 c!1473234) b!8030555))

(assert (= (and b!8030550 (not c!1473234)) b!8030556))

(assert (= (and b!8030555 res!3175829) b!8030552))

(assert (= (and b!8030556 (not res!3175828)) b!8030551))

(assert (= (and b!8030551 res!3175831) b!8030549))

(assert (= (or b!8030555 b!8030551) bm!744876))

(assert (= (or b!8030552 b!8030549) bm!744875))

(assert (= (or b!8030553 bm!744875) bm!744874))

(declare-fun m!8392078 () Bool)

(assert (=> bm!744874 m!8392078))

(declare-fun m!8392080 () Bool)

(assert (=> bm!744876 m!8392080))

(declare-fun m!8392082 () Bool)

(assert (=> b!8030554 m!8392082))

(assert (=> start!756472 d!2394606))

(declare-fun b!8030611 () Bool)

(declare-fun res!3175870 () Bool)

(declare-fun e!4731103 () Bool)

(assert (=> b!8030611 (=> res!3175870 e!4731103)))

(declare-fun e!4731102 () Bool)

(assert (=> b!8030611 (= res!3175870 e!4731102)))

(declare-fun res!3175869 () Bool)

(assert (=> b!8030611 (=> (not res!3175869) (not e!4731102))))

(declare-fun lt!2721853 () Bool)

(assert (=> b!8030611 (= res!3175869 lt!2721853)))

(declare-fun b!8030612 () Bool)

(declare-fun e!4731097 () Bool)

(declare-fun call!744884 () Bool)

(assert (=> b!8030612 (= e!4731097 (= lt!2721853 call!744884))))

(declare-fun b!8030613 () Bool)

(declare-fun e!4731104 () Bool)

(assert (=> b!8030613 (= e!4731104 (not lt!2721853))))

(declare-fun b!8030614 () Bool)

(declare-fun res!3175866 () Bool)

(assert (=> b!8030614 (=> (not res!3175866) (not e!4731102))))

(assert (=> b!8030614 (= res!3175866 (not call!744884))))

(declare-fun b!8030615 () Bool)

(assert (=> b!8030615 (= e!4731097 e!4731104)))

(declare-fun c!1473249 () Bool)

(assert (=> b!8030615 (= c!1473249 ((_ is EmptyLang!21703) (derivativeStep!6646 r!13230 (head!16509 input!5983))))))

(declare-fun b!8030616 () Bool)

(assert (=> b!8030616 (= e!4731102 (= (head!16509 (tail!16050 input!5983)) (c!1473228 (derivativeStep!6646 r!13230 (head!16509 input!5983)))))))

(declare-fun bm!744879 () Bool)

(assert (=> bm!744879 (= call!744884 (isEmpty!43021 (tail!16050 input!5983)))))

(declare-fun b!8030617 () Bool)

(declare-fun res!3175868 () Bool)

(assert (=> b!8030617 (=> (not res!3175868) (not e!4731102))))

(assert (=> b!8030617 (= res!3175868 (isEmpty!43021 (tail!16050 (tail!16050 input!5983))))))

(declare-fun b!8030618 () Bool)

(declare-fun res!3175864 () Bool)

(assert (=> b!8030618 (=> res!3175864 e!4731103)))

(assert (=> b!8030618 (= res!3175864 (not ((_ is ElementMatch!21703) (derivativeStep!6646 r!13230 (head!16509 input!5983)))))))

(assert (=> b!8030618 (= e!4731104 e!4731103)))

(declare-fun b!8030619 () Bool)

(declare-fun e!4731105 () Bool)

(assert (=> b!8030619 (= e!4731105 (not (= (head!16509 (tail!16050 input!5983)) (c!1473228 (derivativeStep!6646 r!13230 (head!16509 input!5983))))))))

(declare-fun b!8030620 () Bool)

(declare-fun e!4731100 () Bool)

(assert (=> b!8030620 (= e!4731100 (matchR!10776 (derivativeStep!6646 (derivativeStep!6646 r!13230 (head!16509 input!5983)) (head!16509 (tail!16050 input!5983))) (tail!16050 (tail!16050 input!5983))))))

(declare-fun b!8030621 () Bool)

(declare-fun res!3175867 () Bool)

(assert (=> b!8030621 (=> res!3175867 e!4731105)))

(assert (=> b!8030621 (= res!3175867 (not (isEmpty!43021 (tail!16050 (tail!16050 input!5983)))))))

(declare-fun d!2394612 () Bool)

(assert (=> d!2394612 e!4731097))

(declare-fun c!1473247 () Bool)

(assert (=> d!2394612 (= c!1473247 ((_ is EmptyExpr!21703) (derivativeStep!6646 r!13230 (head!16509 input!5983))))))

(assert (=> d!2394612 (= lt!2721853 e!4731100)))

(declare-fun c!1473248 () Bool)

(assert (=> d!2394612 (= c!1473248 (isEmpty!43021 (tail!16050 input!5983)))))

(assert (=> d!2394612 (validRegex!11999 (derivativeStep!6646 r!13230 (head!16509 input!5983)))))

(assert (=> d!2394612 (= (matchR!10776 (derivativeStep!6646 r!13230 (head!16509 input!5983)) (tail!16050 input!5983)) lt!2721853)))

(declare-fun b!8030622 () Bool)

(declare-fun e!4731101 () Bool)

(assert (=> b!8030622 (= e!4731101 e!4731105)))

(declare-fun res!3175865 () Bool)

(assert (=> b!8030622 (=> res!3175865 e!4731105)))

(assert (=> b!8030622 (= res!3175865 call!744884)))

(declare-fun b!8030623 () Bool)

(assert (=> b!8030623 (= e!4731103 e!4731101)))

(declare-fun res!3175863 () Bool)

(assert (=> b!8030623 (=> (not res!3175863) (not e!4731101))))

(assert (=> b!8030623 (= res!3175863 (not lt!2721853))))

(declare-fun b!8030624 () Bool)

(assert (=> b!8030624 (= e!4731100 (nullable!9736 (derivativeStep!6646 r!13230 (head!16509 input!5983))))))

(assert (= (and d!2394612 c!1473248) b!8030624))

(assert (= (and d!2394612 (not c!1473248)) b!8030620))

(assert (= (and d!2394612 c!1473247) b!8030612))

(assert (= (and d!2394612 (not c!1473247)) b!8030615))

(assert (= (and b!8030615 c!1473249) b!8030613))

(assert (= (and b!8030615 (not c!1473249)) b!8030618))

(assert (= (and b!8030618 (not res!3175864)) b!8030611))

(assert (= (and b!8030611 res!3175869) b!8030614))

(assert (= (and b!8030614 res!3175866) b!8030617))

(assert (= (and b!8030617 res!3175868) b!8030616))

(assert (= (and b!8030611 (not res!3175870)) b!8030623))

(assert (= (and b!8030623 res!3175863) b!8030622))

(assert (= (and b!8030622 (not res!3175865)) b!8030621))

(assert (= (and b!8030621 (not res!3175867)) b!8030619))

(assert (= (or b!8030612 b!8030614 b!8030622) bm!744879))

(assert (=> b!8030624 m!8392072))

(declare-fun m!8392084 () Bool)

(assert (=> b!8030624 m!8392084))

(assert (=> d!2394612 m!8392074))

(declare-fun m!8392086 () Bool)

(assert (=> d!2394612 m!8392086))

(assert (=> d!2394612 m!8392072))

(declare-fun m!8392088 () Bool)

(assert (=> d!2394612 m!8392088))

(assert (=> b!8030619 m!8392074))

(declare-fun m!8392090 () Bool)

(assert (=> b!8030619 m!8392090))

(assert (=> b!8030617 m!8392074))

(declare-fun m!8392092 () Bool)

(assert (=> b!8030617 m!8392092))

(assert (=> b!8030617 m!8392092))

(declare-fun m!8392094 () Bool)

(assert (=> b!8030617 m!8392094))

(assert (=> b!8030621 m!8392074))

(assert (=> b!8030621 m!8392092))

(assert (=> b!8030621 m!8392092))

(assert (=> b!8030621 m!8392094))

(assert (=> bm!744879 m!8392074))

(assert (=> bm!744879 m!8392086))

(assert (=> b!8030616 m!8392074))

(assert (=> b!8030616 m!8392090))

(assert (=> b!8030620 m!8392074))

(assert (=> b!8030620 m!8392090))

(assert (=> b!8030620 m!8392072))

(assert (=> b!8030620 m!8392090))

(declare-fun m!8392096 () Bool)

(assert (=> b!8030620 m!8392096))

(assert (=> b!8030620 m!8392074))

(assert (=> b!8030620 m!8392092))

(assert (=> b!8030620 m!8392096))

(assert (=> b!8030620 m!8392092))

(declare-fun m!8392098 () Bool)

(assert (=> b!8030620 m!8392098))

(assert (=> b!8030529 d!2394612))

(declare-fun b!8030661 () Bool)

(declare-fun e!4731124 () Regex!21703)

(assert (=> b!8030661 (= e!4731124 (ite (= (head!16509 input!5983) (c!1473228 r!13230)) EmptyExpr!21703 EmptyLang!21703))))

(declare-fun b!8030662 () Bool)

(declare-fun c!1473264 () Bool)

(assert (=> b!8030662 (= c!1473264 (nullable!9736 (regOne!43918 r!13230)))))

(declare-fun e!4731123 () Regex!21703)

(declare-fun e!4731126 () Regex!21703)

(assert (=> b!8030662 (= e!4731123 e!4731126)))

(declare-fun call!744898 () Regex!21703)

(declare-fun b!8030663 () Bool)

(declare-fun call!744896 () Regex!21703)

(assert (=> b!8030663 (= e!4731126 (Union!21703 (Concat!30706 call!744896 (regTwo!43918 r!13230)) call!744898))))

(declare-fun d!2394614 () Bool)

(declare-fun lt!2721857 () Regex!21703)

(assert (=> d!2394614 (validRegex!11999 lt!2721857)))

(declare-fun e!4731127 () Regex!21703)

(assert (=> d!2394614 (= lt!2721857 e!4731127)))

(declare-fun c!1473265 () Bool)

(assert (=> d!2394614 (= c!1473265 (or ((_ is EmptyExpr!21703) r!13230) ((_ is EmptyLang!21703) r!13230)))))

(assert (=> d!2394614 (validRegex!11999 r!13230)))

(assert (=> d!2394614 (= (derivativeStep!6646 r!13230 (head!16509 input!5983)) lt!2721857)))

(declare-fun c!1473266 () Bool)

(declare-fun c!1473263 () Bool)

(declare-fun call!744897 () Regex!21703)

(declare-fun bm!744891 () Bool)

(assert (=> bm!744891 (= call!744897 (derivativeStep!6646 (ite c!1473263 (regOne!43919 r!13230) (ite c!1473266 (reg!22032 r!13230) (regOne!43918 r!13230))) (head!16509 input!5983)))))

(declare-fun b!8030664 () Bool)

(assert (=> b!8030664 (= e!4731126 (Union!21703 (Concat!30706 call!744896 (regTwo!43918 r!13230)) EmptyLang!21703))))

(declare-fun b!8030665 () Bool)

(declare-fun e!4731125 () Regex!21703)

(assert (=> b!8030665 (= e!4731125 (Union!21703 call!744897 call!744898))))

(declare-fun bm!744892 () Bool)

(assert (=> bm!744892 (= call!744898 (derivativeStep!6646 (ite c!1473263 (regTwo!43919 r!13230) (regTwo!43918 r!13230)) (head!16509 input!5983)))))

(declare-fun b!8030666 () Bool)

(assert (=> b!8030666 (= e!4731127 EmptyLang!21703)))

(declare-fun b!8030667 () Bool)

(assert (=> b!8030667 (= e!4731125 e!4731123)))

(assert (=> b!8030667 (= c!1473266 ((_ is Star!21703) r!13230))))

(declare-fun bm!744893 () Bool)

(declare-fun call!744899 () Regex!21703)

(assert (=> bm!744893 (= call!744896 call!744899)))

(declare-fun b!8030668 () Bool)

(assert (=> b!8030668 (= e!4731123 (Concat!30706 call!744899 r!13230))))

(declare-fun b!8030669 () Bool)

(assert (=> b!8030669 (= e!4731127 e!4731124)))

(declare-fun c!1473267 () Bool)

(assert (=> b!8030669 (= c!1473267 ((_ is ElementMatch!21703) r!13230))))

(declare-fun bm!744894 () Bool)

(assert (=> bm!744894 (= call!744899 call!744897)))

(declare-fun b!8030670 () Bool)

(assert (=> b!8030670 (= c!1473263 ((_ is Union!21703) r!13230))))

(assert (=> b!8030670 (= e!4731124 e!4731125)))

(assert (= (and d!2394614 c!1473265) b!8030666))

(assert (= (and d!2394614 (not c!1473265)) b!8030669))

(assert (= (and b!8030669 c!1473267) b!8030661))

(assert (= (and b!8030669 (not c!1473267)) b!8030670))

(assert (= (and b!8030670 c!1473263) b!8030665))

(assert (= (and b!8030670 (not c!1473263)) b!8030667))

(assert (= (and b!8030667 c!1473266) b!8030668))

(assert (= (and b!8030667 (not c!1473266)) b!8030662))

(assert (= (and b!8030662 c!1473264) b!8030663))

(assert (= (and b!8030662 (not c!1473264)) b!8030664))

(assert (= (or b!8030663 b!8030664) bm!744893))

(assert (= (or b!8030668 bm!744893) bm!744894))

(assert (= (or b!8030665 b!8030663) bm!744892))

(assert (= (or b!8030665 bm!744894) bm!744891))

(declare-fun m!8392100 () Bool)

(assert (=> b!8030662 m!8392100))

(declare-fun m!8392102 () Bool)

(assert (=> d!2394614 m!8392102))

(assert (=> d!2394614 m!8392066))

(assert (=> bm!744891 m!8392070))

(declare-fun m!8392104 () Bool)

(assert (=> bm!744891 m!8392104))

(assert (=> bm!744892 m!8392070))

(declare-fun m!8392106 () Bool)

(assert (=> bm!744892 m!8392106))

(assert (=> b!8030529 d!2394614))

(declare-fun d!2394616 () Bool)

(assert (=> d!2394616 (= (head!16509 input!5983) (h!81490 input!5983))))

(assert (=> b!8030529 d!2394616))

(declare-fun d!2394618 () Bool)

(assert (=> d!2394618 (= (tail!16050 input!5983) (t!390938 input!5983))))

(assert (=> b!8030529 d!2394618))

(declare-fun b!8030675 () Bool)

(declare-fun e!4731130 () Bool)

(declare-fun tp!2403458 () Bool)

(assert (=> b!8030675 (= e!4731130 (and tp_is_empty!54401 tp!2403458))))

(assert (=> b!8030526 (= tp!2403455 e!4731130)))

(assert (= (and b!8030526 ((_ is Cons!75042) (t!390938 input!5983))) b!8030675))

(declare-fun b!8030686 () Bool)

(declare-fun e!4731133 () Bool)

(assert (=> b!8030686 (= e!4731133 tp_is_empty!54401)))

(declare-fun b!8030689 () Bool)

(declare-fun tp!2403470 () Bool)

(declare-fun tp!2403472 () Bool)

(assert (=> b!8030689 (= e!4731133 (and tp!2403470 tp!2403472))))

(declare-fun b!8030687 () Bool)

(declare-fun tp!2403471 () Bool)

(declare-fun tp!2403469 () Bool)

(assert (=> b!8030687 (= e!4731133 (and tp!2403471 tp!2403469))))

(declare-fun b!8030688 () Bool)

(declare-fun tp!2403473 () Bool)

(assert (=> b!8030688 (= e!4731133 tp!2403473)))

(assert (=> b!8030527 (= tp!2403450 e!4731133)))

(assert (= (and b!8030527 ((_ is ElementMatch!21703) (reg!22032 r!13230))) b!8030686))

(assert (= (and b!8030527 ((_ is Concat!30706) (reg!22032 r!13230))) b!8030687))

(assert (= (and b!8030527 ((_ is Star!21703) (reg!22032 r!13230))) b!8030688))

(assert (= (and b!8030527 ((_ is Union!21703) (reg!22032 r!13230))) b!8030689))

(declare-fun b!8030690 () Bool)

(declare-fun e!4731134 () Bool)

(assert (=> b!8030690 (= e!4731134 tp_is_empty!54401)))

(declare-fun b!8030693 () Bool)

(declare-fun tp!2403475 () Bool)

(declare-fun tp!2403477 () Bool)

(assert (=> b!8030693 (= e!4731134 (and tp!2403475 tp!2403477))))

(declare-fun b!8030691 () Bool)

(declare-fun tp!2403476 () Bool)

(declare-fun tp!2403474 () Bool)

(assert (=> b!8030691 (= e!4731134 (and tp!2403476 tp!2403474))))

(declare-fun b!8030692 () Bool)

(declare-fun tp!2403478 () Bool)

(assert (=> b!8030692 (= e!4731134 tp!2403478)))

(assert (=> b!8030528 (= tp!2403453 e!4731134)))

(assert (= (and b!8030528 ((_ is ElementMatch!21703) (regOne!43918 r!13230))) b!8030690))

(assert (= (and b!8030528 ((_ is Concat!30706) (regOne!43918 r!13230))) b!8030691))

(assert (= (and b!8030528 ((_ is Star!21703) (regOne!43918 r!13230))) b!8030692))

(assert (= (and b!8030528 ((_ is Union!21703) (regOne!43918 r!13230))) b!8030693))

(declare-fun b!8030694 () Bool)

(declare-fun e!4731135 () Bool)

(assert (=> b!8030694 (= e!4731135 tp_is_empty!54401)))

(declare-fun b!8030697 () Bool)

(declare-fun tp!2403480 () Bool)

(declare-fun tp!2403482 () Bool)

(assert (=> b!8030697 (= e!4731135 (and tp!2403480 tp!2403482))))

(declare-fun b!8030695 () Bool)

(declare-fun tp!2403481 () Bool)

(declare-fun tp!2403479 () Bool)

(assert (=> b!8030695 (= e!4731135 (and tp!2403481 tp!2403479))))

(declare-fun b!8030696 () Bool)

(declare-fun tp!2403483 () Bool)

(assert (=> b!8030696 (= e!4731135 tp!2403483)))

(assert (=> b!8030528 (= tp!2403452 e!4731135)))

(assert (= (and b!8030528 ((_ is ElementMatch!21703) (regTwo!43918 r!13230))) b!8030694))

(assert (= (and b!8030528 ((_ is Concat!30706) (regTwo!43918 r!13230))) b!8030695))

(assert (= (and b!8030528 ((_ is Star!21703) (regTwo!43918 r!13230))) b!8030696))

(assert (= (and b!8030528 ((_ is Union!21703) (regTwo!43918 r!13230))) b!8030697))

(declare-fun b!8030698 () Bool)

(declare-fun e!4731136 () Bool)

(assert (=> b!8030698 (= e!4731136 tp_is_empty!54401)))

(declare-fun b!8030701 () Bool)

(declare-fun tp!2403485 () Bool)

(declare-fun tp!2403487 () Bool)

(assert (=> b!8030701 (= e!4731136 (and tp!2403485 tp!2403487))))

(declare-fun b!8030699 () Bool)

(declare-fun tp!2403486 () Bool)

(declare-fun tp!2403484 () Bool)

(assert (=> b!8030699 (= e!4731136 (and tp!2403486 tp!2403484))))

(declare-fun b!8030700 () Bool)

(declare-fun tp!2403488 () Bool)

(assert (=> b!8030700 (= e!4731136 tp!2403488)))

(assert (=> b!8030525 (= tp!2403451 e!4731136)))

(assert (= (and b!8030525 ((_ is ElementMatch!21703) (regOne!43919 r!13230))) b!8030698))

(assert (= (and b!8030525 ((_ is Concat!30706) (regOne!43919 r!13230))) b!8030699))

(assert (= (and b!8030525 ((_ is Star!21703) (regOne!43919 r!13230))) b!8030700))

(assert (= (and b!8030525 ((_ is Union!21703) (regOne!43919 r!13230))) b!8030701))

(declare-fun b!8030702 () Bool)

(declare-fun e!4731137 () Bool)

(assert (=> b!8030702 (= e!4731137 tp_is_empty!54401)))

(declare-fun b!8030705 () Bool)

(declare-fun tp!2403490 () Bool)

(declare-fun tp!2403492 () Bool)

(assert (=> b!8030705 (= e!4731137 (and tp!2403490 tp!2403492))))

(declare-fun b!8030703 () Bool)

(declare-fun tp!2403491 () Bool)

(declare-fun tp!2403489 () Bool)

(assert (=> b!8030703 (= e!4731137 (and tp!2403491 tp!2403489))))

(declare-fun b!8030704 () Bool)

(declare-fun tp!2403493 () Bool)

(assert (=> b!8030704 (= e!4731137 tp!2403493)))

(assert (=> b!8030525 (= tp!2403454 e!4731137)))

(assert (= (and b!8030525 ((_ is ElementMatch!21703) (regTwo!43919 r!13230))) b!8030702))

(assert (= (and b!8030525 ((_ is Concat!30706) (regTwo!43919 r!13230))) b!8030703))

(assert (= (and b!8030525 ((_ is Star!21703) (regTwo!43919 r!13230))) b!8030704))

(assert (= (and b!8030525 ((_ is Union!21703) (regTwo!43919 r!13230))) b!8030705))

(check-sat (not b!8030620) (not b!8030693) (not b!8030621) tp_is_empty!54401 (not b!8030662) (not b!8030692) (not b!8030700) (not b!8030617) (not b!8030701) (not b!8030704) (not bm!744892) (not b!8030697) (not d!2394614) (not b!8030619) (not b!8030624) (not b!8030703) (not b!8030675) (not d!2394612) (not b!8030689) (not b!8030696) (not b!8030554) (not b!8030699) (not bm!744876) (not b!8030691) (not b!8030688) (not bm!744879) (not bm!744874) (not b!8030695) (not b!8030687) (not b!8030705) (not b!8030616) (not bm!744891))
(check-sat)
