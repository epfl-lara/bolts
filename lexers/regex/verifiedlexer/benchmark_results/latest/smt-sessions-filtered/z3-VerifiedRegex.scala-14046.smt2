; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!741474 () Bool)

(assert start!741474)

(declare-fun b!7805566 () Bool)

(declare-fun e!4620490 () Bool)

(declare-datatypes ((C!42100 0))(
  ( (C!42101 (val!31490 Int)) )
))
(declare-datatypes ((List!73726 0))(
  ( (Nil!73602) (Cons!73602 (h!80050 C!42100) (t!388461 List!73726)) )
))
(declare-fun s!14292 () List!73726)

(declare-datatypes ((Regex!20887 0))(
  ( (ElementMatch!20887 (c!1437382 C!42100)) (Concat!29732 (regOne!42286 Regex!20887) (regTwo!42286 Regex!20887)) (EmptyExpr!20887) (Star!20887 (reg!21216 Regex!20887)) (EmptyLang!20887) (Union!20887 (regOne!42287 Regex!20887) (regTwo!42287 Regex!20887)) )
))
(declare-fun matchR!10347 (Regex!20887 List!73726) Bool)

(assert (=> b!7805566 (= e!4620490 (matchR!10347 EmptyLang!20887 (t!388461 s!14292)))))

(declare-fun b!7805567 () Bool)

(declare-fun e!4620492 () Bool)

(declare-fun e!4620486 () Bool)

(assert (=> b!7805567 (= e!4620492 e!4620486)))

(declare-fun res!3108664 () Bool)

(assert (=> b!7805567 (=> (not res!3108664) (not e!4620486))))

(declare-fun lt!2675245 () Regex!20887)

(assert (=> b!7805567 (= res!3108664 (matchR!10347 lt!2675245 (t!388461 s!14292)))))

(declare-fun lt!2675247 () Regex!20887)

(declare-fun derivativeStep!6224 (Regex!20887 C!42100) Regex!20887)

(assert (=> b!7805567 (= lt!2675245 (derivativeStep!6224 lt!2675247 (h!80050 s!14292)))))

(declare-fun res!3108654 () Bool)

(declare-fun e!4620491 () Bool)

(assert (=> start!741474 (=> (not res!3108654) (not e!4620491))))

(declare-fun r1!6279 () Regex!20887)

(declare-fun validRegex!11301 (Regex!20887) Bool)

(assert (=> start!741474 (= res!3108654 (validRegex!11301 r1!6279))))

(assert (=> start!741474 e!4620491))

(declare-fun e!4620489 () Bool)

(assert (=> start!741474 e!4620489))

(declare-fun e!4620493 () Bool)

(assert (=> start!741474 e!4620493))

(declare-fun e!4620487 () Bool)

(assert (=> start!741474 e!4620487))

(declare-fun b!7805568 () Bool)

(declare-fun tp!2299552 () Bool)

(declare-fun tp!2299545 () Bool)

(assert (=> b!7805568 (= e!4620493 (and tp!2299552 tp!2299545))))

(declare-fun b!7805569 () Bool)

(declare-fun e!4620495 () Bool)

(declare-fun e!4620488 () Bool)

(assert (=> b!7805569 (= e!4620495 (not e!4620488))))

(declare-fun res!3108656 () Bool)

(assert (=> b!7805569 (=> res!3108656 e!4620488)))

(declare-fun lt!2675243 () Bool)

(assert (=> b!7805569 (= res!3108656 (not lt!2675243))))

(declare-fun derivative!569 (Regex!20887 List!73726) Regex!20887)

(assert (=> b!7805569 (= (derivative!569 EmptyLang!20887 (t!388461 s!14292)) EmptyLang!20887)))

(declare-datatypes ((Unit!168612 0))(
  ( (Unit!168613) )
))
(declare-fun lt!2675248 () Unit!168612)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!104 (Regex!20887 List!73726) Unit!168612)

(assert (=> b!7805569 (= lt!2675248 (lemmaEmptyLangDerivativeIsAFixPoint!104 EmptyLang!20887 (t!388461 s!14292)))))

(assert (=> b!7805569 e!4620490))

(declare-fun res!3108662 () Bool)

(assert (=> b!7805569 (=> res!3108662 e!4620490)))

(assert (=> b!7805569 (= res!3108662 lt!2675243)))

(declare-fun lt!2675251 () Regex!20887)

(assert (=> b!7805569 (= lt!2675243 (matchR!10347 lt!2675251 (t!388461 s!14292)))))

(declare-fun lt!2675250 () Unit!168612)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!426 (Regex!20887 Regex!20887 List!73726) Unit!168612)

(assert (=> b!7805569 (= lt!2675250 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!426 lt!2675251 EmptyLang!20887 (t!388461 s!14292)))))

(declare-fun b!7805570 () Bool)

(declare-fun tp!2299548 () Bool)

(declare-fun tp!2299551 () Bool)

(assert (=> b!7805570 (= e!4620489 (and tp!2299548 tp!2299551))))

(declare-fun b!7805571 () Bool)

(declare-fun res!3108660 () Bool)

(declare-fun e!4620494 () Bool)

(assert (=> b!7805571 (=> res!3108660 e!4620494)))

(declare-fun lt!2675242 () List!73726)

(declare-fun isPrefix!6265 (List!73726 List!73726) Bool)

(assert (=> b!7805571 (= res!3108660 (not (isPrefix!6265 Nil!73602 lt!2675242)))))

(declare-fun b!7805572 () Bool)

(declare-fun tp!2299553 () Bool)

(declare-fun tp!2299547 () Bool)

(assert (=> b!7805572 (= e!4620493 (and tp!2299553 tp!2299547))))

(declare-fun b!7805573 () Bool)

(assert (=> b!7805573 (= e!4620488 e!4620494)))

(declare-fun res!3108658 () Bool)

(assert (=> b!7805573 (=> res!3108658 e!4620494)))

(declare-datatypes ((tuple2!69960 0))(
  ( (tuple2!69961 (_1!38283 List!73726) (_2!38283 List!73726)) )
))
(declare-fun lt!2675246 () tuple2!69960)

(declare-fun ++!17947 (List!73726 List!73726) List!73726)

(assert (=> b!7805573 (= res!3108658 (not (= (++!17947 lt!2675242 (_2!38283 lt!2675246)) s!14292)))))

(assert (=> b!7805573 (= lt!2675242 (Cons!73602 (h!80050 s!14292) (_1!38283 lt!2675246)))))

(declare-datatypes ((Option!17774 0))(
  ( (None!17773) (Some!17773 (v!54908 tuple2!69960)) )
))
(declare-fun lt!2675249 () Option!17774)

(declare-fun get!26342 (Option!17774) tuple2!69960)

(assert (=> b!7805573 (= lt!2675246 (get!26342 lt!2675249))))

(declare-fun isDefined!14384 (Option!17774) Bool)

(assert (=> b!7805573 (isDefined!14384 lt!2675249)))

(declare-fun r2!6217 () Regex!20887)

(declare-fun lt!2675244 () Regex!20887)

(declare-fun findConcatSeparation!3804 (Regex!20887 Regex!20887 List!73726 List!73726 List!73726) Option!17774)

(assert (=> b!7805573 (= lt!2675249 (findConcatSeparation!3804 lt!2675244 r2!6217 Nil!73602 (t!388461 s!14292) (t!388461 s!14292)))))

(declare-fun lt!2675252 () Unit!168612)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!386 (Regex!20887 Regex!20887 List!73726) Unit!168612)

(assert (=> b!7805573 (= lt!2675252 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!386 lt!2675244 r2!6217 (t!388461 s!14292)))))

(declare-fun b!7805574 () Bool)

(declare-fun res!3108659 () Bool)

(assert (=> b!7805574 (=> (not res!3108659) (not e!4620491))))

(assert (=> b!7805574 (= res!3108659 (validRegex!11301 r2!6217))))

(declare-fun b!7805575 () Bool)

(assert (=> b!7805575 (= e!4620491 e!4620492)))

(declare-fun res!3108657 () Bool)

(assert (=> b!7805575 (=> (not res!3108657) (not e!4620492))))

(assert (=> b!7805575 (= res!3108657 (matchR!10347 lt!2675247 s!14292))))

(assert (=> b!7805575 (= lt!2675247 (Concat!29732 r1!6279 r2!6217))))

(declare-fun b!7805576 () Bool)

(declare-fun tp!2299549 () Bool)

(declare-fun tp!2299555 () Bool)

(assert (=> b!7805576 (= e!4620489 (and tp!2299549 tp!2299555))))

(declare-fun b!7805577 () Bool)

(assert (=> b!7805577 (= e!4620486 e!4620495)))

(declare-fun res!3108655 () Bool)

(assert (=> b!7805577 (=> (not res!3108655) (not e!4620495))))

(assert (=> b!7805577 (= res!3108655 (= lt!2675245 (Union!20887 lt!2675251 EmptyLang!20887)))))

(assert (=> b!7805577 (= lt!2675251 (Concat!29732 lt!2675244 r2!6217))))

(assert (=> b!7805577 (= lt!2675244 (derivativeStep!6224 r1!6279 (h!80050 s!14292)))))

(declare-fun b!7805578 () Bool)

(declare-fun tp!2299550 () Bool)

(assert (=> b!7805578 (= e!4620493 tp!2299550)))

(declare-fun b!7805579 () Bool)

(declare-fun res!3108661 () Bool)

(assert (=> b!7805579 (=> (not res!3108661) (not e!4620486))))

(declare-fun nullable!9271 (Regex!20887) Bool)

(assert (=> b!7805579 (= res!3108661 (not (nullable!9271 r1!6279)))))

(declare-fun b!7805580 () Bool)

(declare-fun tp_is_empty!52129 () Bool)

(declare-fun tp!2299546 () Bool)

(assert (=> b!7805580 (= e!4620487 (and tp_is_empty!52129 tp!2299546))))

(declare-fun b!7805581 () Bool)

(declare-fun tp!2299554 () Bool)

(assert (=> b!7805581 (= e!4620489 tp!2299554)))

(declare-fun b!7805582 () Bool)

(assert (=> b!7805582 (= e!4620493 tp_is_empty!52129)))

(declare-fun b!7805583 () Bool)

(declare-fun res!3108663 () Bool)

(assert (=> b!7805583 (=> (not res!3108663) (not e!4620492))))

(get-info :version)

(assert (=> b!7805583 (= res!3108663 ((_ is Cons!73602) s!14292))))

(declare-fun b!7805584 () Bool)

(assert (=> b!7805584 (= e!4620489 tp_is_empty!52129)))

(declare-fun b!7805585 () Bool)

(assert (=> b!7805585 (= e!4620494 (= (++!17947 Nil!73602 s!14292) s!14292))))

(assert (= (and start!741474 res!3108654) b!7805574))

(assert (= (and b!7805574 res!3108659) b!7805575))

(assert (= (and b!7805575 res!3108657) b!7805583))

(assert (= (and b!7805583 res!3108663) b!7805567))

(assert (= (and b!7805567 res!3108664) b!7805579))

(assert (= (and b!7805579 res!3108661) b!7805577))

(assert (= (and b!7805577 res!3108655) b!7805569))

(assert (= (and b!7805569 (not res!3108662)) b!7805566))

(assert (= (and b!7805569 (not res!3108656)) b!7805573))

(assert (= (and b!7805573 (not res!3108658)) b!7805571))

(assert (= (and b!7805571 (not res!3108660)) b!7805585))

(assert (= (and start!741474 ((_ is ElementMatch!20887) r1!6279)) b!7805584))

(assert (= (and start!741474 ((_ is Concat!29732) r1!6279)) b!7805576))

(assert (= (and start!741474 ((_ is Star!20887) r1!6279)) b!7805581))

(assert (= (and start!741474 ((_ is Union!20887) r1!6279)) b!7805570))

(assert (= (and start!741474 ((_ is ElementMatch!20887) r2!6217)) b!7805582))

(assert (= (and start!741474 ((_ is Concat!29732) r2!6217)) b!7805572))

(assert (= (and start!741474 ((_ is Star!20887) r2!6217)) b!7805578))

(assert (= (and start!741474 ((_ is Union!20887) r2!6217)) b!7805568))

(assert (= (and start!741474 ((_ is Cons!73602) s!14292)) b!7805580))

(declare-fun m!8239144 () Bool)

(assert (=> b!7805567 m!8239144))

(declare-fun m!8239146 () Bool)

(assert (=> b!7805567 m!8239146))

(declare-fun m!8239148 () Bool)

(assert (=> b!7805573 m!8239148))

(declare-fun m!8239150 () Bool)

(assert (=> b!7805573 m!8239150))

(declare-fun m!8239152 () Bool)

(assert (=> b!7805573 m!8239152))

(declare-fun m!8239154 () Bool)

(assert (=> b!7805573 m!8239154))

(declare-fun m!8239156 () Bool)

(assert (=> b!7805573 m!8239156))

(declare-fun m!8239158 () Bool)

(assert (=> b!7805566 m!8239158))

(declare-fun m!8239160 () Bool)

(assert (=> b!7805577 m!8239160))

(declare-fun m!8239162 () Bool)

(assert (=> b!7805579 m!8239162))

(declare-fun m!8239164 () Bool)

(assert (=> b!7805574 m!8239164))

(declare-fun m!8239166 () Bool)

(assert (=> b!7805571 m!8239166))

(declare-fun m!8239168 () Bool)

(assert (=> b!7805585 m!8239168))

(declare-fun m!8239170 () Bool)

(assert (=> start!741474 m!8239170))

(declare-fun m!8239172 () Bool)

(assert (=> b!7805569 m!8239172))

(declare-fun m!8239174 () Bool)

(assert (=> b!7805569 m!8239174))

(declare-fun m!8239176 () Bool)

(assert (=> b!7805569 m!8239176))

(declare-fun m!8239178 () Bool)

(assert (=> b!7805569 m!8239178))

(declare-fun m!8239180 () Bool)

(assert (=> b!7805575 m!8239180))

(check-sat (not b!7805581) (not b!7805585) (not b!7805570) (not b!7805575) (not b!7805568) (not b!7805566) (not b!7805569) (not b!7805576) (not b!7805572) (not b!7805577) (not b!7805571) (not b!7805580) (not b!7805578) (not b!7805573) (not b!7805574) (not b!7805579) tp_is_empty!52129 (not start!741474) (not b!7805567))
(check-sat)
(get-model)

(declare-fun b!7805595 () Bool)

(declare-fun res!3108673 () Bool)

(declare-fun e!4620502 () Bool)

(assert (=> b!7805595 (=> (not res!3108673) (not e!4620502))))

(declare-fun head!15961 (List!73726) C!42100)

(assert (=> b!7805595 (= res!3108673 (= (head!15961 Nil!73602) (head!15961 lt!2675242)))))

(declare-fun d!2347955 () Bool)

(declare-fun e!4620503 () Bool)

(assert (=> d!2347955 e!4620503))

(declare-fun res!3108675 () Bool)

(assert (=> d!2347955 (=> res!3108675 e!4620503)))

(declare-fun lt!2675255 () Bool)

(assert (=> d!2347955 (= res!3108675 (not lt!2675255))))

(declare-fun e!4620504 () Bool)

(assert (=> d!2347955 (= lt!2675255 e!4620504)))

(declare-fun res!3108674 () Bool)

(assert (=> d!2347955 (=> res!3108674 e!4620504)))

(assert (=> d!2347955 (= res!3108674 ((_ is Nil!73602) Nil!73602))))

(assert (=> d!2347955 (= (isPrefix!6265 Nil!73602 lt!2675242) lt!2675255)))

(declare-fun b!7805596 () Bool)

(declare-fun tail!15502 (List!73726) List!73726)

(assert (=> b!7805596 (= e!4620502 (isPrefix!6265 (tail!15502 Nil!73602) (tail!15502 lt!2675242)))))

(declare-fun b!7805597 () Bool)

(declare-fun size!42728 (List!73726) Int)

(assert (=> b!7805597 (= e!4620503 (>= (size!42728 lt!2675242) (size!42728 Nil!73602)))))

(declare-fun b!7805594 () Bool)

(assert (=> b!7805594 (= e!4620504 e!4620502)))

(declare-fun res!3108676 () Bool)

(assert (=> b!7805594 (=> (not res!3108676) (not e!4620502))))

(assert (=> b!7805594 (= res!3108676 (not ((_ is Nil!73602) lt!2675242)))))

(assert (= (and d!2347955 (not res!3108674)) b!7805594))

(assert (= (and b!7805594 res!3108676) b!7805595))

(assert (= (and b!7805595 res!3108673) b!7805596))

(assert (= (and d!2347955 (not res!3108675)) b!7805597))

(declare-fun m!8239182 () Bool)

(assert (=> b!7805595 m!8239182))

(declare-fun m!8239184 () Bool)

(assert (=> b!7805595 m!8239184))

(declare-fun m!8239186 () Bool)

(assert (=> b!7805596 m!8239186))

(declare-fun m!8239188 () Bool)

(assert (=> b!7805596 m!8239188))

(assert (=> b!7805596 m!8239186))

(assert (=> b!7805596 m!8239188))

(declare-fun m!8239190 () Bool)

(assert (=> b!7805596 m!8239190))

(declare-fun m!8239192 () Bool)

(assert (=> b!7805597 m!8239192))

(declare-fun m!8239194 () Bool)

(assert (=> b!7805597 m!8239194))

(assert (=> b!7805571 d!2347955))

(declare-fun b!7805626 () Bool)

(declare-fun res!3108694 () Bool)

(declare-fun e!4620519 () Bool)

(assert (=> b!7805626 (=> res!3108694 e!4620519)))

(declare-fun isEmpty!42252 (List!73726) Bool)

(assert (=> b!7805626 (= res!3108694 (not (isEmpty!42252 (tail!15502 (t!388461 s!14292)))))))

(declare-fun b!7805627 () Bool)

(declare-fun res!3108697 () Bool)

(declare-fun e!4620523 () Bool)

(assert (=> b!7805627 (=> (not res!3108697) (not e!4620523))))

(declare-fun call!723965 () Bool)

(assert (=> b!7805627 (= res!3108697 (not call!723965))))

(declare-fun b!7805628 () Bool)

(declare-fun res!3108698 () Bool)

(declare-fun e!4620520 () Bool)

(assert (=> b!7805628 (=> res!3108698 e!4620520)))

(assert (=> b!7805628 (= res!3108698 (not ((_ is ElementMatch!20887) EmptyLang!20887)))))

(declare-fun e!4620525 () Bool)

(assert (=> b!7805628 (= e!4620525 e!4620520)))

(declare-fun b!7805629 () Bool)

(declare-fun e!4620521 () Bool)

(declare-fun lt!2675258 () Bool)

(assert (=> b!7805629 (= e!4620521 (= lt!2675258 call!723965))))

(declare-fun b!7805630 () Bool)

(declare-fun e!4620522 () Bool)

(assert (=> b!7805630 (= e!4620522 (matchR!10347 (derivativeStep!6224 EmptyLang!20887 (head!15961 (t!388461 s!14292))) (tail!15502 (t!388461 s!14292))))))

(declare-fun d!2347957 () Bool)

(assert (=> d!2347957 e!4620521))

(declare-fun c!1437390 () Bool)

(assert (=> d!2347957 (= c!1437390 ((_ is EmptyExpr!20887) EmptyLang!20887))))

(assert (=> d!2347957 (= lt!2675258 e!4620522)))

(declare-fun c!1437389 () Bool)

(assert (=> d!2347957 (= c!1437389 (isEmpty!42252 (t!388461 s!14292)))))

(assert (=> d!2347957 (validRegex!11301 EmptyLang!20887)))

(assert (=> d!2347957 (= (matchR!10347 EmptyLang!20887 (t!388461 s!14292)) lt!2675258)))

(declare-fun b!7805631 () Bool)

(declare-fun res!3108699 () Bool)

(assert (=> b!7805631 (=> res!3108699 e!4620520)))

(assert (=> b!7805631 (= res!3108699 e!4620523)))

(declare-fun res!3108695 () Bool)

(assert (=> b!7805631 (=> (not res!3108695) (not e!4620523))))

(assert (=> b!7805631 (= res!3108695 lt!2675258)))

(declare-fun b!7805632 () Bool)

(assert (=> b!7805632 (= e!4620525 (not lt!2675258))))

(declare-fun b!7805633 () Bool)

(assert (=> b!7805633 (= e!4620519 (not (= (head!15961 (t!388461 s!14292)) (c!1437382 EmptyLang!20887))))))

(declare-fun b!7805634 () Bool)

(declare-fun res!3108700 () Bool)

(assert (=> b!7805634 (=> (not res!3108700) (not e!4620523))))

(assert (=> b!7805634 (= res!3108700 (isEmpty!42252 (tail!15502 (t!388461 s!14292))))))

(declare-fun b!7805635 () Bool)

(assert (=> b!7805635 (= e!4620522 (nullable!9271 EmptyLang!20887))))

(declare-fun b!7805636 () Bool)

(declare-fun e!4620524 () Bool)

(assert (=> b!7805636 (= e!4620520 e!4620524)))

(declare-fun res!3108693 () Bool)

(assert (=> b!7805636 (=> (not res!3108693) (not e!4620524))))

(assert (=> b!7805636 (= res!3108693 (not lt!2675258))))

(declare-fun b!7805637 () Bool)

(assert (=> b!7805637 (= e!4620521 e!4620525)))

(declare-fun c!1437391 () Bool)

(assert (=> b!7805637 (= c!1437391 ((_ is EmptyLang!20887) EmptyLang!20887))))

(declare-fun bm!723960 () Bool)

(assert (=> bm!723960 (= call!723965 (isEmpty!42252 (t!388461 s!14292)))))

(declare-fun b!7805638 () Bool)

(assert (=> b!7805638 (= e!4620524 e!4620519)))

(declare-fun res!3108696 () Bool)

(assert (=> b!7805638 (=> res!3108696 e!4620519)))

(assert (=> b!7805638 (= res!3108696 call!723965)))

(declare-fun b!7805639 () Bool)

(assert (=> b!7805639 (= e!4620523 (= (head!15961 (t!388461 s!14292)) (c!1437382 EmptyLang!20887)))))

(assert (= (and d!2347957 c!1437389) b!7805635))

(assert (= (and d!2347957 (not c!1437389)) b!7805630))

(assert (= (and d!2347957 c!1437390) b!7805629))

(assert (= (and d!2347957 (not c!1437390)) b!7805637))

(assert (= (and b!7805637 c!1437391) b!7805632))

(assert (= (and b!7805637 (not c!1437391)) b!7805628))

(assert (= (and b!7805628 (not res!3108698)) b!7805631))

(assert (= (and b!7805631 res!3108695) b!7805627))

(assert (= (and b!7805627 res!3108697) b!7805634))

(assert (= (and b!7805634 res!3108700) b!7805639))

(assert (= (and b!7805631 (not res!3108699)) b!7805636))

(assert (= (and b!7805636 res!3108693) b!7805638))

(assert (= (and b!7805638 (not res!3108696)) b!7805626))

(assert (= (and b!7805626 (not res!3108694)) b!7805633))

(assert (= (or b!7805629 b!7805627 b!7805638) bm!723960))

(declare-fun m!8239196 () Bool)

(assert (=> b!7805639 m!8239196))

(declare-fun m!8239198 () Bool)

(assert (=> b!7805635 m!8239198))

(assert (=> b!7805630 m!8239196))

(assert (=> b!7805630 m!8239196))

(declare-fun m!8239200 () Bool)

(assert (=> b!7805630 m!8239200))

(declare-fun m!8239202 () Bool)

(assert (=> b!7805630 m!8239202))

(assert (=> b!7805630 m!8239200))

(assert (=> b!7805630 m!8239202))

(declare-fun m!8239204 () Bool)

(assert (=> b!7805630 m!8239204))

(assert (=> b!7805633 m!8239196))

(assert (=> b!7805634 m!8239202))

(assert (=> b!7805634 m!8239202))

(declare-fun m!8239206 () Bool)

(assert (=> b!7805634 m!8239206))

(assert (=> b!7805626 m!8239202))

(assert (=> b!7805626 m!8239202))

(assert (=> b!7805626 m!8239206))

(declare-fun m!8239208 () Bool)

(assert (=> d!2347957 m!8239208))

(declare-fun m!8239210 () Bool)

(assert (=> d!2347957 m!8239210))

(assert (=> bm!723960 m!8239208))

(assert (=> b!7805566 d!2347957))

(declare-fun bm!723969 () Bool)

(declare-fun call!723975 () Regex!20887)

(declare-fun call!723974 () Regex!20887)

(assert (=> bm!723969 (= call!723975 call!723974)))

(declare-fun b!7805672 () Bool)

(declare-fun call!723976 () Regex!20887)

(declare-fun e!4620544 () Regex!20887)

(assert (=> b!7805672 (= e!4620544 (Union!20887 (Concat!29732 call!723976 (regTwo!42286 r1!6279)) call!723975))))

(declare-fun b!7805673 () Bool)

(declare-fun c!1437409 () Bool)

(assert (=> b!7805673 (= c!1437409 ((_ is Union!20887) r1!6279))))

(declare-fun e!4620546 () Regex!20887)

(declare-fun e!4620542 () Regex!20887)

(assert (=> b!7805673 (= e!4620546 e!4620542)))

(declare-fun b!7805674 () Bool)

(assert (=> b!7805674 (= e!4620546 (ite (= (h!80050 s!14292) (c!1437382 r1!6279)) EmptyExpr!20887 EmptyLang!20887))))

(declare-fun b!7805675 () Bool)

(declare-fun e!4620545 () Regex!20887)

(assert (=> b!7805675 (= e!4620545 (Concat!29732 call!723974 r1!6279))))

(declare-fun bm!723970 () Bool)

(declare-fun call!723977 () Regex!20887)

(declare-fun c!1437408 () Bool)

(declare-fun c!1437406 () Bool)

(assert (=> bm!723970 (= call!723977 (derivativeStep!6224 (ite c!1437409 (regTwo!42287 r1!6279) (ite c!1437408 (reg!21216 r1!6279) (ite c!1437406 (regTwo!42286 r1!6279) (regOne!42286 r1!6279)))) (h!80050 s!14292)))))

(declare-fun d!2347961 () Bool)

(declare-fun lt!2675264 () Regex!20887)

(assert (=> d!2347961 (validRegex!11301 lt!2675264)))

(declare-fun e!4620543 () Regex!20887)

(assert (=> d!2347961 (= lt!2675264 e!4620543)))

(declare-fun c!1437405 () Bool)

(assert (=> d!2347961 (= c!1437405 (or ((_ is EmptyExpr!20887) r1!6279) ((_ is EmptyLang!20887) r1!6279)))))

(assert (=> d!2347961 (validRegex!11301 r1!6279)))

(assert (=> d!2347961 (= (derivativeStep!6224 r1!6279 (h!80050 s!14292)) lt!2675264)))

(declare-fun b!7805676 () Bool)

(assert (=> b!7805676 (= e!4620542 e!4620545)))

(assert (=> b!7805676 (= c!1437408 ((_ is Star!20887) r1!6279))))

(declare-fun b!7805677 () Bool)

(assert (=> b!7805677 (= e!4620543 EmptyLang!20887)))

(declare-fun b!7805678 () Bool)

(assert (=> b!7805678 (= e!4620542 (Union!20887 call!723976 call!723977))))

(declare-fun bm!723971 () Bool)

(assert (=> bm!723971 (= call!723976 (derivativeStep!6224 (ite c!1437409 (regOne!42287 r1!6279) (regOne!42286 r1!6279)) (h!80050 s!14292)))))

(declare-fun bm!723972 () Bool)

(assert (=> bm!723972 (= call!723974 call!723977)))

(declare-fun b!7805679 () Bool)

(assert (=> b!7805679 (= e!4620543 e!4620546)))

(declare-fun c!1437407 () Bool)

(assert (=> b!7805679 (= c!1437407 ((_ is ElementMatch!20887) r1!6279))))

(declare-fun b!7805680 () Bool)

(assert (=> b!7805680 (= c!1437406 (nullable!9271 (regOne!42286 r1!6279)))))

(assert (=> b!7805680 (= e!4620545 e!4620544)))

(declare-fun b!7805681 () Bool)

(assert (=> b!7805681 (= e!4620544 (Union!20887 (Concat!29732 call!723975 (regTwo!42286 r1!6279)) EmptyLang!20887))))

(assert (= (and d!2347961 c!1437405) b!7805677))

(assert (= (and d!2347961 (not c!1437405)) b!7805679))

(assert (= (and b!7805679 c!1437407) b!7805674))

(assert (= (and b!7805679 (not c!1437407)) b!7805673))

(assert (= (and b!7805673 c!1437409) b!7805678))

(assert (= (and b!7805673 (not c!1437409)) b!7805676))

(assert (= (and b!7805676 c!1437408) b!7805675))

(assert (= (and b!7805676 (not c!1437408)) b!7805680))

(assert (= (and b!7805680 c!1437406) b!7805672))

(assert (= (and b!7805680 (not c!1437406)) b!7805681))

(assert (= (or b!7805672 b!7805681) bm!723969))

(assert (= (or b!7805675 bm!723969) bm!723972))

(assert (= (or b!7805678 bm!723972) bm!723970))

(assert (= (or b!7805678 b!7805672) bm!723971))

(declare-fun m!8239226 () Bool)

(assert (=> bm!723970 m!8239226))

(declare-fun m!8239228 () Bool)

(assert (=> d!2347961 m!8239228))

(assert (=> d!2347961 m!8239170))

(declare-fun m!8239230 () Bool)

(assert (=> bm!723971 m!8239230))

(declare-fun m!8239232 () Bool)

(assert (=> b!7805680 m!8239232))

(assert (=> b!7805577 d!2347961))

(declare-fun b!7805682 () Bool)

(declare-fun res!3108708 () Bool)

(declare-fun e!4620547 () Bool)

(assert (=> b!7805682 (=> res!3108708 e!4620547)))

(assert (=> b!7805682 (= res!3108708 (not (isEmpty!42252 (tail!15502 (t!388461 s!14292)))))))

(declare-fun b!7805683 () Bool)

(declare-fun res!3108711 () Bool)

(declare-fun e!4620551 () Bool)

(assert (=> b!7805683 (=> (not res!3108711) (not e!4620551))))

(declare-fun call!723978 () Bool)

(assert (=> b!7805683 (= res!3108711 (not call!723978))))

(declare-fun b!7805684 () Bool)

(declare-fun res!3108712 () Bool)

(declare-fun e!4620548 () Bool)

(assert (=> b!7805684 (=> res!3108712 e!4620548)))

(assert (=> b!7805684 (= res!3108712 (not ((_ is ElementMatch!20887) lt!2675245)))))

(declare-fun e!4620553 () Bool)

(assert (=> b!7805684 (= e!4620553 e!4620548)))

(declare-fun b!7805685 () Bool)

(declare-fun e!4620549 () Bool)

(declare-fun lt!2675265 () Bool)

(assert (=> b!7805685 (= e!4620549 (= lt!2675265 call!723978))))

(declare-fun b!7805686 () Bool)

(declare-fun e!4620550 () Bool)

(assert (=> b!7805686 (= e!4620550 (matchR!10347 (derivativeStep!6224 lt!2675245 (head!15961 (t!388461 s!14292))) (tail!15502 (t!388461 s!14292))))))

(declare-fun d!2347965 () Bool)

(assert (=> d!2347965 e!4620549))

(declare-fun c!1437411 () Bool)

(assert (=> d!2347965 (= c!1437411 ((_ is EmptyExpr!20887) lt!2675245))))

(assert (=> d!2347965 (= lt!2675265 e!4620550)))

(declare-fun c!1437410 () Bool)

(assert (=> d!2347965 (= c!1437410 (isEmpty!42252 (t!388461 s!14292)))))

(assert (=> d!2347965 (validRegex!11301 lt!2675245)))

(assert (=> d!2347965 (= (matchR!10347 lt!2675245 (t!388461 s!14292)) lt!2675265)))

(declare-fun b!7805687 () Bool)

(declare-fun res!3108713 () Bool)

(assert (=> b!7805687 (=> res!3108713 e!4620548)))

(assert (=> b!7805687 (= res!3108713 e!4620551)))

(declare-fun res!3108709 () Bool)

(assert (=> b!7805687 (=> (not res!3108709) (not e!4620551))))

(assert (=> b!7805687 (= res!3108709 lt!2675265)))

(declare-fun b!7805688 () Bool)

(assert (=> b!7805688 (= e!4620553 (not lt!2675265))))

(declare-fun b!7805689 () Bool)

(assert (=> b!7805689 (= e!4620547 (not (= (head!15961 (t!388461 s!14292)) (c!1437382 lt!2675245))))))

(declare-fun b!7805690 () Bool)

(declare-fun res!3108714 () Bool)

(assert (=> b!7805690 (=> (not res!3108714) (not e!4620551))))

(assert (=> b!7805690 (= res!3108714 (isEmpty!42252 (tail!15502 (t!388461 s!14292))))))

(declare-fun b!7805691 () Bool)

(assert (=> b!7805691 (= e!4620550 (nullable!9271 lt!2675245))))

(declare-fun b!7805692 () Bool)

(declare-fun e!4620552 () Bool)

(assert (=> b!7805692 (= e!4620548 e!4620552)))

(declare-fun res!3108707 () Bool)

(assert (=> b!7805692 (=> (not res!3108707) (not e!4620552))))

(assert (=> b!7805692 (= res!3108707 (not lt!2675265))))

(declare-fun b!7805693 () Bool)

(assert (=> b!7805693 (= e!4620549 e!4620553)))

(declare-fun c!1437412 () Bool)

(assert (=> b!7805693 (= c!1437412 ((_ is EmptyLang!20887) lt!2675245))))

(declare-fun bm!723973 () Bool)

(assert (=> bm!723973 (= call!723978 (isEmpty!42252 (t!388461 s!14292)))))

(declare-fun b!7805694 () Bool)

(assert (=> b!7805694 (= e!4620552 e!4620547)))

(declare-fun res!3108710 () Bool)

(assert (=> b!7805694 (=> res!3108710 e!4620547)))

(assert (=> b!7805694 (= res!3108710 call!723978)))

(declare-fun b!7805695 () Bool)

(assert (=> b!7805695 (= e!4620551 (= (head!15961 (t!388461 s!14292)) (c!1437382 lt!2675245)))))

(assert (= (and d!2347965 c!1437410) b!7805691))

(assert (= (and d!2347965 (not c!1437410)) b!7805686))

(assert (= (and d!2347965 c!1437411) b!7805685))

(assert (= (and d!2347965 (not c!1437411)) b!7805693))

(assert (= (and b!7805693 c!1437412) b!7805688))

(assert (= (and b!7805693 (not c!1437412)) b!7805684))

(assert (= (and b!7805684 (not res!3108712)) b!7805687))

(assert (= (and b!7805687 res!3108709) b!7805683))

(assert (= (and b!7805683 res!3108711) b!7805690))

(assert (= (and b!7805690 res!3108714) b!7805695))

(assert (= (and b!7805687 (not res!3108713)) b!7805692))

(assert (= (and b!7805692 res!3108707) b!7805694))

(assert (= (and b!7805694 (not res!3108710)) b!7805682))

(assert (= (and b!7805682 (not res!3108708)) b!7805689))

(assert (= (or b!7805685 b!7805683 b!7805694) bm!723973))

(assert (=> b!7805695 m!8239196))

(declare-fun m!8239234 () Bool)

(assert (=> b!7805691 m!8239234))

(assert (=> b!7805686 m!8239196))

(assert (=> b!7805686 m!8239196))

(declare-fun m!8239236 () Bool)

(assert (=> b!7805686 m!8239236))

(assert (=> b!7805686 m!8239202))

(assert (=> b!7805686 m!8239236))

(assert (=> b!7805686 m!8239202))

(declare-fun m!8239238 () Bool)

(assert (=> b!7805686 m!8239238))

(assert (=> b!7805689 m!8239196))

(assert (=> b!7805690 m!8239202))

(assert (=> b!7805690 m!8239202))

(assert (=> b!7805690 m!8239206))

(assert (=> b!7805682 m!8239202))

(assert (=> b!7805682 m!8239202))

(assert (=> b!7805682 m!8239206))

(assert (=> d!2347965 m!8239208))

(declare-fun m!8239240 () Bool)

(assert (=> d!2347965 m!8239240))

(assert (=> bm!723973 m!8239208))

(assert (=> b!7805567 d!2347965))

(declare-fun bm!723974 () Bool)

(declare-fun call!723980 () Regex!20887)

(declare-fun call!723979 () Regex!20887)

(assert (=> bm!723974 (= call!723980 call!723979)))

(declare-fun e!4620556 () Regex!20887)

(declare-fun call!723981 () Regex!20887)

(declare-fun b!7805696 () Bool)

(assert (=> b!7805696 (= e!4620556 (Union!20887 (Concat!29732 call!723981 (regTwo!42286 lt!2675247)) call!723980))))

(declare-fun b!7805697 () Bool)

(declare-fun c!1437417 () Bool)

(assert (=> b!7805697 (= c!1437417 ((_ is Union!20887) lt!2675247))))

(declare-fun e!4620558 () Regex!20887)

(declare-fun e!4620554 () Regex!20887)

(assert (=> b!7805697 (= e!4620558 e!4620554)))

(declare-fun b!7805698 () Bool)

(assert (=> b!7805698 (= e!4620558 (ite (= (h!80050 s!14292) (c!1437382 lt!2675247)) EmptyExpr!20887 EmptyLang!20887))))

(declare-fun b!7805699 () Bool)

(declare-fun e!4620557 () Regex!20887)

(assert (=> b!7805699 (= e!4620557 (Concat!29732 call!723979 lt!2675247))))

(declare-fun bm!723975 () Bool)

(declare-fun c!1437414 () Bool)

(declare-fun c!1437416 () Bool)

(declare-fun call!723982 () Regex!20887)

(assert (=> bm!723975 (= call!723982 (derivativeStep!6224 (ite c!1437417 (regTwo!42287 lt!2675247) (ite c!1437416 (reg!21216 lt!2675247) (ite c!1437414 (regTwo!42286 lt!2675247) (regOne!42286 lt!2675247)))) (h!80050 s!14292)))))

(declare-fun d!2347967 () Bool)

(declare-fun lt!2675266 () Regex!20887)

(assert (=> d!2347967 (validRegex!11301 lt!2675266)))

(declare-fun e!4620555 () Regex!20887)

(assert (=> d!2347967 (= lt!2675266 e!4620555)))

(declare-fun c!1437413 () Bool)

(assert (=> d!2347967 (= c!1437413 (or ((_ is EmptyExpr!20887) lt!2675247) ((_ is EmptyLang!20887) lt!2675247)))))

(assert (=> d!2347967 (validRegex!11301 lt!2675247)))

(assert (=> d!2347967 (= (derivativeStep!6224 lt!2675247 (h!80050 s!14292)) lt!2675266)))

(declare-fun b!7805700 () Bool)

(assert (=> b!7805700 (= e!4620554 e!4620557)))

(assert (=> b!7805700 (= c!1437416 ((_ is Star!20887) lt!2675247))))

(declare-fun b!7805701 () Bool)

(assert (=> b!7805701 (= e!4620555 EmptyLang!20887)))

(declare-fun b!7805702 () Bool)

(assert (=> b!7805702 (= e!4620554 (Union!20887 call!723981 call!723982))))

(declare-fun bm!723976 () Bool)

(assert (=> bm!723976 (= call!723981 (derivativeStep!6224 (ite c!1437417 (regOne!42287 lt!2675247) (regOne!42286 lt!2675247)) (h!80050 s!14292)))))

(declare-fun bm!723977 () Bool)

(assert (=> bm!723977 (= call!723979 call!723982)))

(declare-fun b!7805703 () Bool)

(assert (=> b!7805703 (= e!4620555 e!4620558)))

(declare-fun c!1437415 () Bool)

(assert (=> b!7805703 (= c!1437415 ((_ is ElementMatch!20887) lt!2675247))))

(declare-fun b!7805704 () Bool)

(assert (=> b!7805704 (= c!1437414 (nullable!9271 (regOne!42286 lt!2675247)))))

(assert (=> b!7805704 (= e!4620557 e!4620556)))

(declare-fun b!7805705 () Bool)

(assert (=> b!7805705 (= e!4620556 (Union!20887 (Concat!29732 call!723980 (regTwo!42286 lt!2675247)) EmptyLang!20887))))

(assert (= (and d!2347967 c!1437413) b!7805701))

(assert (= (and d!2347967 (not c!1437413)) b!7805703))

(assert (= (and b!7805703 c!1437415) b!7805698))

(assert (= (and b!7805703 (not c!1437415)) b!7805697))

(assert (= (and b!7805697 c!1437417) b!7805702))

(assert (= (and b!7805697 (not c!1437417)) b!7805700))

(assert (= (and b!7805700 c!1437416) b!7805699))

(assert (= (and b!7805700 (not c!1437416)) b!7805704))

(assert (= (and b!7805704 c!1437414) b!7805696))

(assert (= (and b!7805704 (not c!1437414)) b!7805705))

(assert (= (or b!7805696 b!7805705) bm!723974))

(assert (= (or b!7805699 bm!723974) bm!723977))

(assert (= (or b!7805702 bm!723977) bm!723975))

(assert (= (or b!7805702 b!7805696) bm!723976))

(declare-fun m!8239242 () Bool)

(assert (=> bm!723975 m!8239242))

(declare-fun m!8239244 () Bool)

(assert (=> d!2347967 m!8239244))

(declare-fun m!8239246 () Bool)

(assert (=> d!2347967 m!8239246))

(declare-fun m!8239248 () Bool)

(assert (=> bm!723976 m!8239248))

(declare-fun m!8239250 () Bool)

(assert (=> b!7805704 m!8239250))

(assert (=> b!7805567 d!2347967))

(declare-fun b!7805752 () Bool)

(declare-fun e!4620586 () Bool)

(declare-fun lt!2675275 () Option!17774)

(assert (=> b!7805752 (= e!4620586 (= (++!17947 (_1!38283 (get!26342 lt!2675275)) (_2!38283 (get!26342 lt!2675275))) (t!388461 s!14292)))))

(declare-fun b!7805753 () Bool)

(declare-fun lt!2675276 () Unit!168612)

(declare-fun lt!2675277 () Unit!168612)

(assert (=> b!7805753 (= lt!2675276 lt!2675277)))

(assert (=> b!7805753 (= (++!17947 (++!17947 Nil!73602 (Cons!73602 (h!80050 (t!388461 s!14292)) Nil!73602)) (t!388461 (t!388461 s!14292))) (t!388461 s!14292))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3417 (List!73726 C!42100 List!73726 List!73726) Unit!168612)

(assert (=> b!7805753 (= lt!2675277 (lemmaMoveElementToOtherListKeepsConcatEq!3417 Nil!73602 (h!80050 (t!388461 s!14292)) (t!388461 (t!388461 s!14292)) (t!388461 s!14292)))))

(declare-fun e!4620583 () Option!17774)

(assert (=> b!7805753 (= e!4620583 (findConcatSeparation!3804 lt!2675244 r2!6217 (++!17947 Nil!73602 (Cons!73602 (h!80050 (t!388461 s!14292)) Nil!73602)) (t!388461 (t!388461 s!14292)) (t!388461 s!14292)))))

(declare-fun b!7805755 () Bool)

(declare-fun res!3108742 () Bool)

(assert (=> b!7805755 (=> (not res!3108742) (not e!4620586))))

(assert (=> b!7805755 (= res!3108742 (matchR!10347 lt!2675244 (_1!38283 (get!26342 lt!2675275))))))

(declare-fun b!7805756 () Bool)

(declare-fun e!4620584 () Option!17774)

(assert (=> b!7805756 (= e!4620584 e!4620583)))

(declare-fun c!1437428 () Bool)

(assert (=> b!7805756 (= c!1437428 ((_ is Nil!73602) (t!388461 s!14292)))))

(declare-fun b!7805757 () Bool)

(declare-fun e!4620585 () Bool)

(assert (=> b!7805757 (= e!4620585 (not (isDefined!14384 lt!2675275)))))

(declare-fun b!7805758 () Bool)

(assert (=> b!7805758 (= e!4620584 (Some!17773 (tuple2!69961 Nil!73602 (t!388461 s!14292))))))

(declare-fun b!7805754 () Bool)

(declare-fun res!3108745 () Bool)

(assert (=> b!7805754 (=> (not res!3108745) (not e!4620586))))

(assert (=> b!7805754 (= res!3108745 (matchR!10347 r2!6217 (_2!38283 (get!26342 lt!2675275))))))

(declare-fun d!2347969 () Bool)

(assert (=> d!2347969 e!4620585))

(declare-fun res!3108744 () Bool)

(assert (=> d!2347969 (=> res!3108744 e!4620585)))

(assert (=> d!2347969 (= res!3108744 e!4620586)))

(declare-fun res!3108743 () Bool)

(assert (=> d!2347969 (=> (not res!3108743) (not e!4620586))))

(assert (=> d!2347969 (= res!3108743 (isDefined!14384 lt!2675275))))

(assert (=> d!2347969 (= lt!2675275 e!4620584)))

(declare-fun c!1437429 () Bool)

(declare-fun e!4620587 () Bool)

(assert (=> d!2347969 (= c!1437429 e!4620587)))

(declare-fun res!3108741 () Bool)

(assert (=> d!2347969 (=> (not res!3108741) (not e!4620587))))

(assert (=> d!2347969 (= res!3108741 (matchR!10347 lt!2675244 Nil!73602))))

(assert (=> d!2347969 (validRegex!11301 lt!2675244)))

(assert (=> d!2347969 (= (findConcatSeparation!3804 lt!2675244 r2!6217 Nil!73602 (t!388461 s!14292) (t!388461 s!14292)) lt!2675275)))

(declare-fun b!7805759 () Bool)

(assert (=> b!7805759 (= e!4620587 (matchR!10347 r2!6217 (t!388461 s!14292)))))

(declare-fun b!7805760 () Bool)

(assert (=> b!7805760 (= e!4620583 None!17773)))

(assert (= (and d!2347969 res!3108741) b!7805759))

(assert (= (and d!2347969 c!1437429) b!7805758))

(assert (= (and d!2347969 (not c!1437429)) b!7805756))

(assert (= (and b!7805756 c!1437428) b!7805760))

(assert (= (and b!7805756 (not c!1437428)) b!7805753))

(assert (= (and d!2347969 res!3108743) b!7805755))

(assert (= (and b!7805755 res!3108742) b!7805754))

(assert (= (and b!7805754 res!3108745) b!7805752))

(assert (= (and d!2347969 (not res!3108744)) b!7805757))

(declare-fun m!8239252 () Bool)

(assert (=> d!2347969 m!8239252))

(declare-fun m!8239254 () Bool)

(assert (=> d!2347969 m!8239254))

(declare-fun m!8239256 () Bool)

(assert (=> d!2347969 m!8239256))

(declare-fun m!8239258 () Bool)

(assert (=> b!7805759 m!8239258))

(declare-fun m!8239260 () Bool)

(assert (=> b!7805753 m!8239260))

(assert (=> b!7805753 m!8239260))

(declare-fun m!8239262 () Bool)

(assert (=> b!7805753 m!8239262))

(declare-fun m!8239264 () Bool)

(assert (=> b!7805753 m!8239264))

(assert (=> b!7805753 m!8239260))

(declare-fun m!8239266 () Bool)

(assert (=> b!7805753 m!8239266))

(assert (=> b!7805757 m!8239252))

(declare-fun m!8239268 () Bool)

(assert (=> b!7805755 m!8239268))

(declare-fun m!8239270 () Bool)

(assert (=> b!7805755 m!8239270))

(assert (=> b!7805752 m!8239268))

(declare-fun m!8239272 () Bool)

(assert (=> b!7805752 m!8239272))

(assert (=> b!7805754 m!8239268))

(declare-fun m!8239274 () Bool)

(assert (=> b!7805754 m!8239274))

(assert (=> b!7805573 d!2347969))

(declare-fun d!2347971 () Bool)

(assert (=> d!2347971 (isDefined!14384 (findConcatSeparation!3804 lt!2675244 r2!6217 Nil!73602 (t!388461 s!14292) (t!388461 s!14292)))))

(declare-fun lt!2675281 () Unit!168612)

(declare-fun choose!59562 (Regex!20887 Regex!20887 List!73726) Unit!168612)

(assert (=> d!2347971 (= lt!2675281 (choose!59562 lt!2675244 r2!6217 (t!388461 s!14292)))))

(assert (=> d!2347971 (validRegex!11301 lt!2675244)))

(assert (=> d!2347971 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!386 lt!2675244 r2!6217 (t!388461 s!14292)) lt!2675281)))

(declare-fun bs!1966540 () Bool)

(assert (= bs!1966540 d!2347971))

(assert (=> bs!1966540 m!8239154))

(assert (=> bs!1966540 m!8239154))

(declare-fun m!8239292 () Bool)

(assert (=> bs!1966540 m!8239292))

(declare-fun m!8239294 () Bool)

(assert (=> bs!1966540 m!8239294))

(assert (=> bs!1966540 m!8239256))

(assert (=> b!7805573 d!2347971))

(declare-fun d!2347975 () Bool)

(declare-fun isEmpty!42254 (Option!17774) Bool)

(assert (=> d!2347975 (= (isDefined!14384 lt!2675249) (not (isEmpty!42254 lt!2675249)))))

(declare-fun bs!1966541 () Bool)

(assert (= bs!1966541 d!2347975))

(declare-fun m!8239296 () Bool)

(assert (=> bs!1966541 m!8239296))

(assert (=> b!7805573 d!2347975))

(declare-fun d!2347977 () Bool)

(assert (=> d!2347977 (= (get!26342 lt!2675249) (v!54908 lt!2675249))))

(assert (=> b!7805573 d!2347977))

(declare-fun b!7805785 () Bool)

(declare-fun res!3108759 () Bool)

(declare-fun e!4620600 () Bool)

(assert (=> b!7805785 (=> (not res!3108759) (not e!4620600))))

(declare-fun lt!2675284 () List!73726)

(assert (=> b!7805785 (= res!3108759 (= (size!42728 lt!2675284) (+ (size!42728 lt!2675242) (size!42728 (_2!38283 lt!2675246)))))))

(declare-fun b!7805786 () Bool)

(assert (=> b!7805786 (= e!4620600 (or (not (= (_2!38283 lt!2675246) Nil!73602)) (= lt!2675284 lt!2675242)))))

(declare-fun d!2347979 () Bool)

(assert (=> d!2347979 e!4620600))

(declare-fun res!3108758 () Bool)

(assert (=> d!2347979 (=> (not res!3108758) (not e!4620600))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15626 (List!73726) (InoxSet C!42100))

(assert (=> d!2347979 (= res!3108758 (= (content!15626 lt!2675284) ((_ map or) (content!15626 lt!2675242) (content!15626 (_2!38283 lt!2675246)))))))

(declare-fun e!4620599 () List!73726)

(assert (=> d!2347979 (= lt!2675284 e!4620599)))

(declare-fun c!1437435 () Bool)

(assert (=> d!2347979 (= c!1437435 ((_ is Nil!73602) lt!2675242))))

(assert (=> d!2347979 (= (++!17947 lt!2675242 (_2!38283 lt!2675246)) lt!2675284)))

(declare-fun b!7805783 () Bool)

(assert (=> b!7805783 (= e!4620599 (_2!38283 lt!2675246))))

(declare-fun b!7805784 () Bool)

(assert (=> b!7805784 (= e!4620599 (Cons!73602 (h!80050 lt!2675242) (++!17947 (t!388461 lt!2675242) (_2!38283 lt!2675246))))))

(assert (= (and d!2347979 c!1437435) b!7805783))

(assert (= (and d!2347979 (not c!1437435)) b!7805784))

(assert (= (and d!2347979 res!3108758) b!7805785))

(assert (= (and b!7805785 res!3108759) b!7805786))

(declare-fun m!8239298 () Bool)

(assert (=> b!7805785 m!8239298))

(assert (=> b!7805785 m!8239192))

(declare-fun m!8239300 () Bool)

(assert (=> b!7805785 m!8239300))

(declare-fun m!8239302 () Bool)

(assert (=> d!2347979 m!8239302))

(declare-fun m!8239304 () Bool)

(assert (=> d!2347979 m!8239304))

(declare-fun m!8239306 () Bool)

(assert (=> d!2347979 m!8239306))

(declare-fun m!8239308 () Bool)

(assert (=> b!7805784 m!8239308))

(assert (=> b!7805573 d!2347979))

(declare-fun d!2347981 () Bool)

(declare-fun nullableFct!3649 (Regex!20887) Bool)

(assert (=> d!2347981 (= (nullable!9271 r1!6279) (nullableFct!3649 r1!6279))))

(declare-fun bs!1966542 () Bool)

(assert (= bs!1966542 d!2347981))

(declare-fun m!8239310 () Bool)

(assert (=> bs!1966542 m!8239310))

(assert (=> b!7805579 d!2347981))

(declare-fun b!7805825 () Bool)

(declare-fun e!4620629 () Bool)

(declare-fun call!724002 () Bool)

(assert (=> b!7805825 (= e!4620629 call!724002)))

(declare-fun b!7805826 () Bool)

(declare-fun e!4620630 () Bool)

(assert (=> b!7805826 (= e!4620630 e!4620629)))

(declare-fun res!3108770 () Bool)

(assert (=> b!7805826 (= res!3108770 (not (nullable!9271 (reg!21216 r2!6217))))))

(assert (=> b!7805826 (=> (not res!3108770) (not e!4620629))))

(declare-fun bm!723995 () Bool)

(declare-fun call!724001 () Bool)

(assert (=> bm!723995 (= call!724001 call!724002)))

(declare-fun b!7805828 () Bool)

(declare-fun res!3108772 () Bool)

(declare-fun e!4620627 () Bool)

(assert (=> b!7805828 (=> res!3108772 e!4620627)))

(assert (=> b!7805828 (= res!3108772 (not ((_ is Concat!29732) r2!6217)))))

(declare-fun e!4620626 () Bool)

(assert (=> b!7805828 (= e!4620626 e!4620627)))

(declare-fun b!7805829 () Bool)

(assert (=> b!7805829 (= e!4620630 e!4620626)))

(declare-fun c!1437451 () Bool)

(assert (=> b!7805829 (= c!1437451 ((_ is Union!20887) r2!6217))))

(declare-fun b!7805830 () Bool)

(declare-fun e!4620625 () Bool)

(assert (=> b!7805830 (= e!4620625 e!4620630)))

(declare-fun c!1437450 () Bool)

(assert (=> b!7805830 (= c!1437450 ((_ is Star!20887) r2!6217))))

(declare-fun b!7805831 () Bool)

(declare-fun e!4620631 () Bool)

(declare-fun call!724000 () Bool)

(assert (=> b!7805831 (= e!4620631 call!724000)))

(declare-fun bm!723996 () Bool)

(assert (=> bm!723996 (= call!724002 (validRegex!11301 (ite c!1437450 (reg!21216 r2!6217) (ite c!1437451 (regOne!42287 r2!6217) (regOne!42286 r2!6217)))))))

(declare-fun b!7805832 () Bool)

(declare-fun e!4620628 () Bool)

(assert (=> b!7805832 (= e!4620628 call!724000)))

(declare-fun b!7805827 () Bool)

(assert (=> b!7805827 (= e!4620627 e!4620628)))

(declare-fun res!3108774 () Bool)

(assert (=> b!7805827 (=> (not res!3108774) (not e!4620628))))

(assert (=> b!7805827 (= res!3108774 call!724001)))

(declare-fun d!2347983 () Bool)

(declare-fun res!3108771 () Bool)

(assert (=> d!2347983 (=> res!3108771 e!4620625)))

(assert (=> d!2347983 (= res!3108771 ((_ is ElementMatch!20887) r2!6217))))

(assert (=> d!2347983 (= (validRegex!11301 r2!6217) e!4620625)))

(declare-fun b!7805833 () Bool)

(declare-fun res!3108773 () Bool)

(assert (=> b!7805833 (=> (not res!3108773) (not e!4620631))))

(assert (=> b!7805833 (= res!3108773 call!724001)))

(assert (=> b!7805833 (= e!4620626 e!4620631)))

(declare-fun bm!723997 () Bool)

(assert (=> bm!723997 (= call!724000 (validRegex!11301 (ite c!1437451 (regTwo!42287 r2!6217) (regTwo!42286 r2!6217))))))

(assert (= (and d!2347983 (not res!3108771)) b!7805830))

(assert (= (and b!7805830 c!1437450) b!7805826))

(assert (= (and b!7805830 (not c!1437450)) b!7805829))

(assert (= (and b!7805826 res!3108770) b!7805825))

(assert (= (and b!7805829 c!1437451) b!7805833))

(assert (= (and b!7805829 (not c!1437451)) b!7805828))

(assert (= (and b!7805833 res!3108773) b!7805831))

(assert (= (and b!7805828 (not res!3108772)) b!7805827))

(assert (= (and b!7805827 res!3108774) b!7805832))

(assert (= (or b!7805833 b!7805827) bm!723995))

(assert (= (or b!7805831 b!7805832) bm!723997))

(assert (= (or b!7805825 bm!723995) bm!723996))

(declare-fun m!8239312 () Bool)

(assert (=> b!7805826 m!8239312))

(declare-fun m!8239314 () Bool)

(assert (=> bm!723996 m!8239314))

(declare-fun m!8239316 () Bool)

(assert (=> bm!723997 m!8239316))

(assert (=> b!7805574 d!2347983))

(declare-fun b!7805836 () Bool)

(declare-fun res!3108776 () Bool)

(declare-fun e!4620633 () Bool)

(assert (=> b!7805836 (=> (not res!3108776) (not e!4620633))))

(declare-fun lt!2675287 () List!73726)

(assert (=> b!7805836 (= res!3108776 (= (size!42728 lt!2675287) (+ (size!42728 Nil!73602) (size!42728 s!14292))))))

(declare-fun b!7805837 () Bool)

(assert (=> b!7805837 (= e!4620633 (or (not (= s!14292 Nil!73602)) (= lt!2675287 Nil!73602)))))

(declare-fun d!2347985 () Bool)

(assert (=> d!2347985 e!4620633))

(declare-fun res!3108775 () Bool)

(assert (=> d!2347985 (=> (not res!3108775) (not e!4620633))))

(assert (=> d!2347985 (= res!3108775 (= (content!15626 lt!2675287) ((_ map or) (content!15626 Nil!73602) (content!15626 s!14292))))))

(declare-fun e!4620632 () List!73726)

(assert (=> d!2347985 (= lt!2675287 e!4620632)))

(declare-fun c!1437452 () Bool)

(assert (=> d!2347985 (= c!1437452 ((_ is Nil!73602) Nil!73602))))

(assert (=> d!2347985 (= (++!17947 Nil!73602 s!14292) lt!2675287)))

(declare-fun b!7805834 () Bool)

(assert (=> b!7805834 (= e!4620632 s!14292)))

(declare-fun b!7805835 () Bool)

(assert (=> b!7805835 (= e!4620632 (Cons!73602 (h!80050 Nil!73602) (++!17947 (t!388461 Nil!73602) s!14292)))))

(assert (= (and d!2347985 c!1437452) b!7805834))

(assert (= (and d!2347985 (not c!1437452)) b!7805835))

(assert (= (and d!2347985 res!3108775) b!7805836))

(assert (= (and b!7805836 res!3108776) b!7805837))

(declare-fun m!8239318 () Bool)

(assert (=> b!7805836 m!8239318))

(assert (=> b!7805836 m!8239194))

(declare-fun m!8239320 () Bool)

(assert (=> b!7805836 m!8239320))

(declare-fun m!8239322 () Bool)

(assert (=> d!2347985 m!8239322))

(declare-fun m!8239324 () Bool)

(assert (=> d!2347985 m!8239324))

(declare-fun m!8239326 () Bool)

(assert (=> d!2347985 m!8239326))

(declare-fun m!8239328 () Bool)

(assert (=> b!7805835 m!8239328))

(assert (=> b!7805585 d!2347985))

(declare-fun d!2347987 () Bool)

(declare-fun lt!2675290 () Regex!20887)

(assert (=> d!2347987 (validRegex!11301 lt!2675290)))

(declare-fun e!4620636 () Regex!20887)

(assert (=> d!2347987 (= lt!2675290 e!4620636)))

(declare-fun c!1437455 () Bool)

(assert (=> d!2347987 (= c!1437455 ((_ is Cons!73602) (t!388461 s!14292)))))

(assert (=> d!2347987 (validRegex!11301 EmptyLang!20887)))

(assert (=> d!2347987 (= (derivative!569 EmptyLang!20887 (t!388461 s!14292)) lt!2675290)))

(declare-fun b!7805842 () Bool)

(assert (=> b!7805842 (= e!4620636 (derivative!569 (derivativeStep!6224 EmptyLang!20887 (h!80050 (t!388461 s!14292))) (t!388461 (t!388461 s!14292))))))

(declare-fun b!7805843 () Bool)

(assert (=> b!7805843 (= e!4620636 EmptyLang!20887)))

(assert (= (and d!2347987 c!1437455) b!7805842))

(assert (= (and d!2347987 (not c!1437455)) b!7805843))

(declare-fun m!8239330 () Bool)

(assert (=> d!2347987 m!8239330))

(assert (=> d!2347987 m!8239210))

(declare-fun m!8239332 () Bool)

(assert (=> b!7805842 m!8239332))

(assert (=> b!7805842 m!8239332))

(declare-fun m!8239334 () Bool)

(assert (=> b!7805842 m!8239334))

(assert (=> b!7805569 d!2347987))

(declare-fun d!2347989 () Bool)

(assert (=> d!2347989 (= (derivative!569 EmptyLang!20887 (t!388461 s!14292)) EmptyLang!20887)))

(declare-fun lt!2675294 () Unit!168612)

(declare-fun choose!59563 (Regex!20887 List!73726) Unit!168612)

(assert (=> d!2347989 (= lt!2675294 (choose!59563 EmptyLang!20887 (t!388461 s!14292)))))

(assert (=> d!2347989 (= EmptyLang!20887 EmptyLang!20887)))

(assert (=> d!2347989 (= (lemmaEmptyLangDerivativeIsAFixPoint!104 EmptyLang!20887 (t!388461 s!14292)) lt!2675294)))

(declare-fun bs!1966543 () Bool)

(assert (= bs!1966543 d!2347989))

(assert (=> bs!1966543 m!8239172))

(declare-fun m!8239336 () Bool)

(assert (=> bs!1966543 m!8239336))

(assert (=> b!7805569 d!2347989))

(declare-fun b!7805854 () Bool)

(declare-fun res!3108778 () Bool)

(declare-fun e!4620642 () Bool)

(assert (=> b!7805854 (=> res!3108778 e!4620642)))

(assert (=> b!7805854 (= res!3108778 (not (isEmpty!42252 (tail!15502 (t!388461 s!14292)))))))

(declare-fun b!7805855 () Bool)

(declare-fun res!3108781 () Bool)

(declare-fun e!4620646 () Bool)

(assert (=> b!7805855 (=> (not res!3108781) (not e!4620646))))

(declare-fun call!724007 () Bool)

(assert (=> b!7805855 (= res!3108781 (not call!724007))))

(declare-fun b!7805856 () Bool)

(declare-fun res!3108782 () Bool)

(declare-fun e!4620643 () Bool)

(assert (=> b!7805856 (=> res!3108782 e!4620643)))

(assert (=> b!7805856 (= res!3108782 (not ((_ is ElementMatch!20887) lt!2675251)))))

(declare-fun e!4620648 () Bool)

(assert (=> b!7805856 (= e!4620648 e!4620643)))

(declare-fun b!7805857 () Bool)

(declare-fun e!4620644 () Bool)

(declare-fun lt!2675295 () Bool)

(assert (=> b!7805857 (= e!4620644 (= lt!2675295 call!724007))))

(declare-fun b!7805858 () Bool)

(declare-fun e!4620645 () Bool)

(assert (=> b!7805858 (= e!4620645 (matchR!10347 (derivativeStep!6224 lt!2675251 (head!15961 (t!388461 s!14292))) (tail!15502 (t!388461 s!14292))))))

(declare-fun d!2347991 () Bool)

(assert (=> d!2347991 e!4620644))

(declare-fun c!1437462 () Bool)

(assert (=> d!2347991 (= c!1437462 ((_ is EmptyExpr!20887) lt!2675251))))

(assert (=> d!2347991 (= lt!2675295 e!4620645)))

(declare-fun c!1437461 () Bool)

(assert (=> d!2347991 (= c!1437461 (isEmpty!42252 (t!388461 s!14292)))))

(assert (=> d!2347991 (validRegex!11301 lt!2675251)))

(assert (=> d!2347991 (= (matchR!10347 lt!2675251 (t!388461 s!14292)) lt!2675295)))

(declare-fun b!7805859 () Bool)

(declare-fun res!3108783 () Bool)

(assert (=> b!7805859 (=> res!3108783 e!4620643)))

(assert (=> b!7805859 (= res!3108783 e!4620646)))

(declare-fun res!3108779 () Bool)

(assert (=> b!7805859 (=> (not res!3108779) (not e!4620646))))

(assert (=> b!7805859 (= res!3108779 lt!2675295)))

(declare-fun b!7805860 () Bool)

(assert (=> b!7805860 (= e!4620648 (not lt!2675295))))

(declare-fun b!7805861 () Bool)

(assert (=> b!7805861 (= e!4620642 (not (= (head!15961 (t!388461 s!14292)) (c!1437382 lt!2675251))))))

(declare-fun b!7805862 () Bool)

(declare-fun res!3108784 () Bool)

(assert (=> b!7805862 (=> (not res!3108784) (not e!4620646))))

(assert (=> b!7805862 (= res!3108784 (isEmpty!42252 (tail!15502 (t!388461 s!14292))))))

(declare-fun b!7805863 () Bool)

(assert (=> b!7805863 (= e!4620645 (nullable!9271 lt!2675251))))

(declare-fun b!7805864 () Bool)

(declare-fun e!4620647 () Bool)

(assert (=> b!7805864 (= e!4620643 e!4620647)))

(declare-fun res!3108777 () Bool)

(assert (=> b!7805864 (=> (not res!3108777) (not e!4620647))))

(assert (=> b!7805864 (= res!3108777 (not lt!2675295))))

(declare-fun b!7805865 () Bool)

(assert (=> b!7805865 (= e!4620644 e!4620648)))

(declare-fun c!1437463 () Bool)

(assert (=> b!7805865 (= c!1437463 ((_ is EmptyLang!20887) lt!2675251))))

(declare-fun bm!724002 () Bool)

(assert (=> bm!724002 (= call!724007 (isEmpty!42252 (t!388461 s!14292)))))

(declare-fun b!7805866 () Bool)

(assert (=> b!7805866 (= e!4620647 e!4620642)))

(declare-fun res!3108780 () Bool)

(assert (=> b!7805866 (=> res!3108780 e!4620642)))

(assert (=> b!7805866 (= res!3108780 call!724007)))

(declare-fun b!7805867 () Bool)

(assert (=> b!7805867 (= e!4620646 (= (head!15961 (t!388461 s!14292)) (c!1437382 lt!2675251)))))

(assert (= (and d!2347991 c!1437461) b!7805863))

(assert (= (and d!2347991 (not c!1437461)) b!7805858))

(assert (= (and d!2347991 c!1437462) b!7805857))

(assert (= (and d!2347991 (not c!1437462)) b!7805865))

(assert (= (and b!7805865 c!1437463) b!7805860))

(assert (= (and b!7805865 (not c!1437463)) b!7805856))

(assert (= (and b!7805856 (not res!3108782)) b!7805859))

(assert (= (and b!7805859 res!3108779) b!7805855))

(assert (= (and b!7805855 res!3108781) b!7805862))

(assert (= (and b!7805862 res!3108784) b!7805867))

(assert (= (and b!7805859 (not res!3108783)) b!7805864))

(assert (= (and b!7805864 res!3108777) b!7805866))

(assert (= (and b!7805866 (not res!3108780)) b!7805854))

(assert (= (and b!7805854 (not res!3108778)) b!7805861))

(assert (= (or b!7805857 b!7805855 b!7805866) bm!724002))

(assert (=> b!7805867 m!8239196))

(declare-fun m!8239346 () Bool)

(assert (=> b!7805863 m!8239346))

(assert (=> b!7805858 m!8239196))

(assert (=> b!7805858 m!8239196))

(declare-fun m!8239348 () Bool)

(assert (=> b!7805858 m!8239348))

(assert (=> b!7805858 m!8239202))

(assert (=> b!7805858 m!8239348))

(assert (=> b!7805858 m!8239202))

(declare-fun m!8239350 () Bool)

(assert (=> b!7805858 m!8239350))

(assert (=> b!7805861 m!8239196))

(assert (=> b!7805862 m!8239202))

(assert (=> b!7805862 m!8239202))

(assert (=> b!7805862 m!8239206))

(assert (=> b!7805854 m!8239202))

(assert (=> b!7805854 m!8239202))

(assert (=> b!7805854 m!8239206))

(assert (=> d!2347991 m!8239208))

(declare-fun m!8239352 () Bool)

(assert (=> d!2347991 m!8239352))

(assert (=> bm!724002 m!8239208))

(assert (=> b!7805569 d!2347991))

(declare-fun d!2347995 () Bool)

(declare-fun e!4620659 () Bool)

(assert (=> d!2347995 e!4620659))

(declare-fun res!3108797 () Bool)

(assert (=> d!2347995 (=> res!3108797 e!4620659)))

(assert (=> d!2347995 (= res!3108797 (matchR!10347 lt!2675251 (t!388461 s!14292)))))

(declare-fun lt!2675300 () Unit!168612)

(declare-fun choose!59565 (Regex!20887 Regex!20887 List!73726) Unit!168612)

(assert (=> d!2347995 (= lt!2675300 (choose!59565 lt!2675251 EmptyLang!20887 (t!388461 s!14292)))))

(declare-fun e!4620660 () Bool)

(assert (=> d!2347995 e!4620660))

(declare-fun res!3108798 () Bool)

(assert (=> d!2347995 (=> (not res!3108798) (not e!4620660))))

(assert (=> d!2347995 (= res!3108798 (validRegex!11301 lt!2675251))))

(assert (=> d!2347995 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!426 lt!2675251 EmptyLang!20887 (t!388461 s!14292)) lt!2675300)))

(declare-fun b!7805880 () Bool)

(assert (=> b!7805880 (= e!4620660 (validRegex!11301 EmptyLang!20887))))

(declare-fun b!7805881 () Bool)

(assert (=> b!7805881 (= e!4620659 (matchR!10347 EmptyLang!20887 (t!388461 s!14292)))))

(assert (= (and d!2347995 res!3108798) b!7805880))

(assert (= (and d!2347995 (not res!3108797)) b!7805881))

(assert (=> d!2347995 m!8239176))

(declare-fun m!8239354 () Bool)

(assert (=> d!2347995 m!8239354))

(assert (=> d!2347995 m!8239352))

(assert (=> b!7805880 m!8239210))

(assert (=> b!7805881 m!8239158))

(assert (=> b!7805569 d!2347995))

(declare-fun b!7805882 () Bool)

(declare-fun res!3108800 () Bool)

(declare-fun e!4620661 () Bool)

(assert (=> b!7805882 (=> res!3108800 e!4620661)))

(assert (=> b!7805882 (= res!3108800 (not (isEmpty!42252 (tail!15502 s!14292))))))

(declare-fun b!7805883 () Bool)

(declare-fun res!3108803 () Bool)

(declare-fun e!4620665 () Bool)

(assert (=> b!7805883 (=> (not res!3108803) (not e!4620665))))

(declare-fun call!724008 () Bool)

(assert (=> b!7805883 (= res!3108803 (not call!724008))))

(declare-fun b!7805884 () Bool)

(declare-fun res!3108804 () Bool)

(declare-fun e!4620662 () Bool)

(assert (=> b!7805884 (=> res!3108804 e!4620662)))

(assert (=> b!7805884 (= res!3108804 (not ((_ is ElementMatch!20887) lt!2675247)))))

(declare-fun e!4620667 () Bool)

(assert (=> b!7805884 (= e!4620667 e!4620662)))

(declare-fun b!7805885 () Bool)

(declare-fun e!4620663 () Bool)

(declare-fun lt!2675301 () Bool)

(assert (=> b!7805885 (= e!4620663 (= lt!2675301 call!724008))))

(declare-fun b!7805886 () Bool)

(declare-fun e!4620664 () Bool)

(assert (=> b!7805886 (= e!4620664 (matchR!10347 (derivativeStep!6224 lt!2675247 (head!15961 s!14292)) (tail!15502 s!14292)))))

(declare-fun d!2347997 () Bool)

(assert (=> d!2347997 e!4620663))

(declare-fun c!1437465 () Bool)

(assert (=> d!2347997 (= c!1437465 ((_ is EmptyExpr!20887) lt!2675247))))

(assert (=> d!2347997 (= lt!2675301 e!4620664)))

(declare-fun c!1437464 () Bool)

(assert (=> d!2347997 (= c!1437464 (isEmpty!42252 s!14292))))

(assert (=> d!2347997 (validRegex!11301 lt!2675247)))

(assert (=> d!2347997 (= (matchR!10347 lt!2675247 s!14292) lt!2675301)))

(declare-fun b!7805887 () Bool)

(declare-fun res!3108805 () Bool)

(assert (=> b!7805887 (=> res!3108805 e!4620662)))

(assert (=> b!7805887 (= res!3108805 e!4620665)))

(declare-fun res!3108801 () Bool)

(assert (=> b!7805887 (=> (not res!3108801) (not e!4620665))))

(assert (=> b!7805887 (= res!3108801 lt!2675301)))

(declare-fun b!7805888 () Bool)

(assert (=> b!7805888 (= e!4620667 (not lt!2675301))))

(declare-fun b!7805889 () Bool)

(assert (=> b!7805889 (= e!4620661 (not (= (head!15961 s!14292) (c!1437382 lt!2675247))))))

(declare-fun b!7805890 () Bool)

(declare-fun res!3108806 () Bool)

(assert (=> b!7805890 (=> (not res!3108806) (not e!4620665))))

(assert (=> b!7805890 (= res!3108806 (isEmpty!42252 (tail!15502 s!14292)))))

(declare-fun b!7805891 () Bool)

(assert (=> b!7805891 (= e!4620664 (nullable!9271 lt!2675247))))

(declare-fun b!7805892 () Bool)

(declare-fun e!4620666 () Bool)

(assert (=> b!7805892 (= e!4620662 e!4620666)))

(declare-fun res!3108799 () Bool)

(assert (=> b!7805892 (=> (not res!3108799) (not e!4620666))))

(assert (=> b!7805892 (= res!3108799 (not lt!2675301))))

(declare-fun b!7805893 () Bool)

(assert (=> b!7805893 (= e!4620663 e!4620667)))

(declare-fun c!1437466 () Bool)

(assert (=> b!7805893 (= c!1437466 ((_ is EmptyLang!20887) lt!2675247))))

(declare-fun bm!724003 () Bool)

(assert (=> bm!724003 (= call!724008 (isEmpty!42252 s!14292))))

(declare-fun b!7805894 () Bool)

(assert (=> b!7805894 (= e!4620666 e!4620661)))

(declare-fun res!3108802 () Bool)

(assert (=> b!7805894 (=> res!3108802 e!4620661)))

(assert (=> b!7805894 (= res!3108802 call!724008)))

(declare-fun b!7805895 () Bool)

(assert (=> b!7805895 (= e!4620665 (= (head!15961 s!14292) (c!1437382 lt!2675247)))))

(assert (= (and d!2347997 c!1437464) b!7805891))

(assert (= (and d!2347997 (not c!1437464)) b!7805886))

(assert (= (and d!2347997 c!1437465) b!7805885))

(assert (= (and d!2347997 (not c!1437465)) b!7805893))

(assert (= (and b!7805893 c!1437466) b!7805888))

(assert (= (and b!7805893 (not c!1437466)) b!7805884))

(assert (= (and b!7805884 (not res!3108804)) b!7805887))

(assert (= (and b!7805887 res!3108801) b!7805883))

(assert (= (and b!7805883 res!3108803) b!7805890))

(assert (= (and b!7805890 res!3108806) b!7805895))

(assert (= (and b!7805887 (not res!3108805)) b!7805892))

(assert (= (and b!7805892 res!3108799) b!7805894))

(assert (= (and b!7805894 (not res!3108802)) b!7805882))

(assert (= (and b!7805882 (not res!3108800)) b!7805889))

(assert (= (or b!7805885 b!7805883 b!7805894) bm!724003))

(declare-fun m!8239356 () Bool)

(assert (=> b!7805895 m!8239356))

(declare-fun m!8239358 () Bool)

(assert (=> b!7805891 m!8239358))

(assert (=> b!7805886 m!8239356))

(assert (=> b!7805886 m!8239356))

(declare-fun m!8239360 () Bool)

(assert (=> b!7805886 m!8239360))

(declare-fun m!8239362 () Bool)

(assert (=> b!7805886 m!8239362))

(assert (=> b!7805886 m!8239360))

(assert (=> b!7805886 m!8239362))

(declare-fun m!8239364 () Bool)

(assert (=> b!7805886 m!8239364))

(assert (=> b!7805889 m!8239356))

(assert (=> b!7805890 m!8239362))

(assert (=> b!7805890 m!8239362))

(declare-fun m!8239366 () Bool)

(assert (=> b!7805890 m!8239366))

(assert (=> b!7805882 m!8239362))

(assert (=> b!7805882 m!8239362))

(assert (=> b!7805882 m!8239366))

(declare-fun m!8239368 () Bool)

(assert (=> d!2347997 m!8239368))

(assert (=> d!2347997 m!8239246))

(assert (=> bm!724003 m!8239368))

(assert (=> b!7805575 d!2347997))

(declare-fun b!7805900 () Bool)

(declare-fun e!4620675 () Bool)

(declare-fun call!724011 () Bool)

(assert (=> b!7805900 (= e!4620675 call!724011)))

(declare-fun b!7805901 () Bool)

(declare-fun e!4620676 () Bool)

(assert (=> b!7805901 (= e!4620676 e!4620675)))

(declare-fun res!3108811 () Bool)

(assert (=> b!7805901 (= res!3108811 (not (nullable!9271 (reg!21216 r1!6279))))))

(assert (=> b!7805901 (=> (not res!3108811) (not e!4620675))))

(declare-fun bm!724004 () Bool)

(declare-fun call!724010 () Bool)

(assert (=> bm!724004 (= call!724010 call!724011)))

(declare-fun b!7805903 () Bool)

(declare-fun res!3108813 () Bool)

(declare-fun e!4620673 () Bool)

(assert (=> b!7805903 (=> res!3108813 e!4620673)))

(assert (=> b!7805903 (= res!3108813 (not ((_ is Concat!29732) r1!6279)))))

(declare-fun e!4620672 () Bool)

(assert (=> b!7805903 (= e!4620672 e!4620673)))

(declare-fun b!7805904 () Bool)

(assert (=> b!7805904 (= e!4620676 e!4620672)))

(declare-fun c!1437468 () Bool)

(assert (=> b!7805904 (= c!1437468 ((_ is Union!20887) r1!6279))))

(declare-fun b!7805905 () Bool)

(declare-fun e!4620671 () Bool)

(assert (=> b!7805905 (= e!4620671 e!4620676)))

(declare-fun c!1437467 () Bool)

(assert (=> b!7805905 (= c!1437467 ((_ is Star!20887) r1!6279))))

(declare-fun b!7805906 () Bool)

(declare-fun e!4620677 () Bool)

(declare-fun call!724009 () Bool)

(assert (=> b!7805906 (= e!4620677 call!724009)))

(declare-fun bm!724005 () Bool)

(assert (=> bm!724005 (= call!724011 (validRegex!11301 (ite c!1437467 (reg!21216 r1!6279) (ite c!1437468 (regOne!42287 r1!6279) (regOne!42286 r1!6279)))))))

(declare-fun b!7805907 () Bool)

(declare-fun e!4620674 () Bool)

(assert (=> b!7805907 (= e!4620674 call!724009)))

(declare-fun b!7805902 () Bool)

(assert (=> b!7805902 (= e!4620673 e!4620674)))

(declare-fun res!3108815 () Bool)

(assert (=> b!7805902 (=> (not res!3108815) (not e!4620674))))

(assert (=> b!7805902 (= res!3108815 call!724010)))

(declare-fun d!2347999 () Bool)

(declare-fun res!3108812 () Bool)

(assert (=> d!2347999 (=> res!3108812 e!4620671)))

(assert (=> d!2347999 (= res!3108812 ((_ is ElementMatch!20887) r1!6279))))

(assert (=> d!2347999 (= (validRegex!11301 r1!6279) e!4620671)))

(declare-fun b!7805908 () Bool)

(declare-fun res!3108814 () Bool)

(assert (=> b!7805908 (=> (not res!3108814) (not e!4620677))))

(assert (=> b!7805908 (= res!3108814 call!724010)))

(assert (=> b!7805908 (= e!4620672 e!4620677)))

(declare-fun bm!724006 () Bool)

(assert (=> bm!724006 (= call!724009 (validRegex!11301 (ite c!1437468 (regTwo!42287 r1!6279) (regTwo!42286 r1!6279))))))

(assert (= (and d!2347999 (not res!3108812)) b!7805905))

(assert (= (and b!7805905 c!1437467) b!7805901))

(assert (= (and b!7805905 (not c!1437467)) b!7805904))

(assert (= (and b!7805901 res!3108811) b!7805900))

(assert (= (and b!7805904 c!1437468) b!7805908))

(assert (= (and b!7805904 (not c!1437468)) b!7805903))

(assert (= (and b!7805908 res!3108814) b!7805906))

(assert (= (and b!7805903 (not res!3108813)) b!7805902))

(assert (= (and b!7805902 res!3108815) b!7805907))

(assert (= (or b!7805908 b!7805902) bm!724004))

(assert (= (or b!7805906 b!7805907) bm!724006))

(assert (= (or b!7805900 bm!724004) bm!724005))

(declare-fun m!8239382 () Bool)

(assert (=> b!7805901 m!8239382))

(declare-fun m!8239384 () Bool)

(assert (=> bm!724005 m!8239384))

(declare-fun m!8239386 () Bool)

(assert (=> bm!724006 m!8239386))

(assert (=> start!741474 d!2347999))

(declare-fun b!7805936 () Bool)

(declare-fun e!4620687 () Bool)

(declare-fun tp!2299566 () Bool)

(declare-fun tp!2299567 () Bool)

(assert (=> b!7805936 (= e!4620687 (and tp!2299566 tp!2299567))))

(declare-fun b!7805934 () Bool)

(declare-fun tp!2299570 () Bool)

(declare-fun tp!2299568 () Bool)

(assert (=> b!7805934 (= e!4620687 (and tp!2299570 tp!2299568))))

(declare-fun b!7805933 () Bool)

(assert (=> b!7805933 (= e!4620687 tp_is_empty!52129)))

(declare-fun b!7805935 () Bool)

(declare-fun tp!2299569 () Bool)

(assert (=> b!7805935 (= e!4620687 tp!2299569)))

(assert (=> b!7805581 (= tp!2299554 e!4620687)))

(assert (= (and b!7805581 ((_ is ElementMatch!20887) (reg!21216 r1!6279))) b!7805933))

(assert (= (and b!7805581 ((_ is Concat!29732) (reg!21216 r1!6279))) b!7805934))

(assert (= (and b!7805581 ((_ is Star!20887) (reg!21216 r1!6279))) b!7805935))

(assert (= (and b!7805581 ((_ is Union!20887) (reg!21216 r1!6279))) b!7805936))

(declare-fun b!7805940 () Bool)

(declare-fun e!4620688 () Bool)

(declare-fun tp!2299571 () Bool)

(declare-fun tp!2299572 () Bool)

(assert (=> b!7805940 (= e!4620688 (and tp!2299571 tp!2299572))))

(declare-fun b!7805938 () Bool)

(declare-fun tp!2299575 () Bool)

(declare-fun tp!2299573 () Bool)

(assert (=> b!7805938 (= e!4620688 (and tp!2299575 tp!2299573))))

(declare-fun b!7805937 () Bool)

(assert (=> b!7805937 (= e!4620688 tp_is_empty!52129)))

(declare-fun b!7805939 () Bool)

(declare-fun tp!2299574 () Bool)

(assert (=> b!7805939 (= e!4620688 tp!2299574)))

(assert (=> b!7805576 (= tp!2299549 e!4620688)))

(assert (= (and b!7805576 ((_ is ElementMatch!20887) (regOne!42286 r1!6279))) b!7805937))

(assert (= (and b!7805576 ((_ is Concat!29732) (regOne!42286 r1!6279))) b!7805938))

(assert (= (and b!7805576 ((_ is Star!20887) (regOne!42286 r1!6279))) b!7805939))

(assert (= (and b!7805576 ((_ is Union!20887) (regOne!42286 r1!6279))) b!7805940))

(declare-fun b!7805944 () Bool)

(declare-fun e!4620689 () Bool)

(declare-fun tp!2299576 () Bool)

(declare-fun tp!2299577 () Bool)

(assert (=> b!7805944 (= e!4620689 (and tp!2299576 tp!2299577))))

(declare-fun b!7805942 () Bool)

(declare-fun tp!2299580 () Bool)

(declare-fun tp!2299578 () Bool)

(assert (=> b!7805942 (= e!4620689 (and tp!2299580 tp!2299578))))

(declare-fun b!7805941 () Bool)

(assert (=> b!7805941 (= e!4620689 tp_is_empty!52129)))

(declare-fun b!7805943 () Bool)

(declare-fun tp!2299579 () Bool)

(assert (=> b!7805943 (= e!4620689 tp!2299579)))

(assert (=> b!7805576 (= tp!2299555 e!4620689)))

(assert (= (and b!7805576 ((_ is ElementMatch!20887) (regTwo!42286 r1!6279))) b!7805941))

(assert (= (and b!7805576 ((_ is Concat!29732) (regTwo!42286 r1!6279))) b!7805942))

(assert (= (and b!7805576 ((_ is Star!20887) (regTwo!42286 r1!6279))) b!7805943))

(assert (= (and b!7805576 ((_ is Union!20887) (regTwo!42286 r1!6279))) b!7805944))

(declare-fun b!7805948 () Bool)

(declare-fun e!4620690 () Bool)

(declare-fun tp!2299581 () Bool)

(declare-fun tp!2299582 () Bool)

(assert (=> b!7805948 (= e!4620690 (and tp!2299581 tp!2299582))))

(declare-fun b!7805946 () Bool)

(declare-fun tp!2299585 () Bool)

(declare-fun tp!2299583 () Bool)

(assert (=> b!7805946 (= e!4620690 (and tp!2299585 tp!2299583))))

(declare-fun b!7805945 () Bool)

(assert (=> b!7805945 (= e!4620690 tp_is_empty!52129)))

(declare-fun b!7805947 () Bool)

(declare-fun tp!2299584 () Bool)

(assert (=> b!7805947 (= e!4620690 tp!2299584)))

(assert (=> b!7805572 (= tp!2299553 e!4620690)))

(assert (= (and b!7805572 ((_ is ElementMatch!20887) (regOne!42286 r2!6217))) b!7805945))

(assert (= (and b!7805572 ((_ is Concat!29732) (regOne!42286 r2!6217))) b!7805946))

(assert (= (and b!7805572 ((_ is Star!20887) (regOne!42286 r2!6217))) b!7805947))

(assert (= (and b!7805572 ((_ is Union!20887) (regOne!42286 r2!6217))) b!7805948))

(declare-fun b!7805952 () Bool)

(declare-fun e!4620691 () Bool)

(declare-fun tp!2299586 () Bool)

(declare-fun tp!2299587 () Bool)

(assert (=> b!7805952 (= e!4620691 (and tp!2299586 tp!2299587))))

(declare-fun b!7805950 () Bool)

(declare-fun tp!2299590 () Bool)

(declare-fun tp!2299588 () Bool)

(assert (=> b!7805950 (= e!4620691 (and tp!2299590 tp!2299588))))

(declare-fun b!7805949 () Bool)

(assert (=> b!7805949 (= e!4620691 tp_is_empty!52129)))

(declare-fun b!7805951 () Bool)

(declare-fun tp!2299589 () Bool)

(assert (=> b!7805951 (= e!4620691 tp!2299589)))

(assert (=> b!7805572 (= tp!2299547 e!4620691)))

(assert (= (and b!7805572 ((_ is ElementMatch!20887) (regTwo!42286 r2!6217))) b!7805949))

(assert (= (and b!7805572 ((_ is Concat!29732) (regTwo!42286 r2!6217))) b!7805950))

(assert (= (and b!7805572 ((_ is Star!20887) (regTwo!42286 r2!6217))) b!7805951))

(assert (= (and b!7805572 ((_ is Union!20887) (regTwo!42286 r2!6217))) b!7805952))

(declare-fun b!7805956 () Bool)

(declare-fun e!4620692 () Bool)

(declare-fun tp!2299591 () Bool)

(declare-fun tp!2299592 () Bool)

(assert (=> b!7805956 (= e!4620692 (and tp!2299591 tp!2299592))))

(declare-fun b!7805954 () Bool)

(declare-fun tp!2299595 () Bool)

(declare-fun tp!2299593 () Bool)

(assert (=> b!7805954 (= e!4620692 (and tp!2299595 tp!2299593))))

(declare-fun b!7805953 () Bool)

(assert (=> b!7805953 (= e!4620692 tp_is_empty!52129)))

(declare-fun b!7805955 () Bool)

(declare-fun tp!2299594 () Bool)

(assert (=> b!7805955 (= e!4620692 tp!2299594)))

(assert (=> b!7805578 (= tp!2299550 e!4620692)))

(assert (= (and b!7805578 ((_ is ElementMatch!20887) (reg!21216 r2!6217))) b!7805953))

(assert (= (and b!7805578 ((_ is Concat!29732) (reg!21216 r2!6217))) b!7805954))

(assert (= (and b!7805578 ((_ is Star!20887) (reg!21216 r2!6217))) b!7805955))

(assert (= (and b!7805578 ((_ is Union!20887) (reg!21216 r2!6217))) b!7805956))

(declare-fun b!7805960 () Bool)

(declare-fun e!4620693 () Bool)

(declare-fun tp!2299596 () Bool)

(declare-fun tp!2299597 () Bool)

(assert (=> b!7805960 (= e!4620693 (and tp!2299596 tp!2299597))))

(declare-fun b!7805958 () Bool)

(declare-fun tp!2299600 () Bool)

(declare-fun tp!2299598 () Bool)

(assert (=> b!7805958 (= e!4620693 (and tp!2299600 tp!2299598))))

(declare-fun b!7805957 () Bool)

(assert (=> b!7805957 (= e!4620693 tp_is_empty!52129)))

(declare-fun b!7805959 () Bool)

(declare-fun tp!2299599 () Bool)

(assert (=> b!7805959 (= e!4620693 tp!2299599)))

(assert (=> b!7805568 (= tp!2299552 e!4620693)))

(assert (= (and b!7805568 ((_ is ElementMatch!20887) (regOne!42287 r2!6217))) b!7805957))

(assert (= (and b!7805568 ((_ is Concat!29732) (regOne!42287 r2!6217))) b!7805958))

(assert (= (and b!7805568 ((_ is Star!20887) (regOne!42287 r2!6217))) b!7805959))

(assert (= (and b!7805568 ((_ is Union!20887) (regOne!42287 r2!6217))) b!7805960))

(declare-fun b!7805964 () Bool)

(declare-fun e!4620694 () Bool)

(declare-fun tp!2299601 () Bool)

(declare-fun tp!2299602 () Bool)

(assert (=> b!7805964 (= e!4620694 (and tp!2299601 tp!2299602))))

(declare-fun b!7805962 () Bool)

(declare-fun tp!2299605 () Bool)

(declare-fun tp!2299603 () Bool)

(assert (=> b!7805962 (= e!4620694 (and tp!2299605 tp!2299603))))

(declare-fun b!7805961 () Bool)

(assert (=> b!7805961 (= e!4620694 tp_is_empty!52129)))

(declare-fun b!7805963 () Bool)

(declare-fun tp!2299604 () Bool)

(assert (=> b!7805963 (= e!4620694 tp!2299604)))

(assert (=> b!7805568 (= tp!2299545 e!4620694)))

(assert (= (and b!7805568 ((_ is ElementMatch!20887) (regTwo!42287 r2!6217))) b!7805961))

(assert (= (and b!7805568 ((_ is Concat!29732) (regTwo!42287 r2!6217))) b!7805962))

(assert (= (and b!7805568 ((_ is Star!20887) (regTwo!42287 r2!6217))) b!7805963))

(assert (= (and b!7805568 ((_ is Union!20887) (regTwo!42287 r2!6217))) b!7805964))

(declare-fun b!7805985 () Bool)

(declare-fun e!4620711 () Bool)

(declare-fun tp!2299608 () Bool)

(assert (=> b!7805985 (= e!4620711 (and tp_is_empty!52129 tp!2299608))))

(assert (=> b!7805580 (= tp!2299546 e!4620711)))

(assert (= (and b!7805580 ((_ is Cons!73602) (t!388461 s!14292))) b!7805985))

(declare-fun b!7805991 () Bool)

(declare-fun e!4620712 () Bool)

(declare-fun tp!2299609 () Bool)

(declare-fun tp!2299610 () Bool)

(assert (=> b!7805991 (= e!4620712 (and tp!2299609 tp!2299610))))

(declare-fun b!7805989 () Bool)

(declare-fun tp!2299613 () Bool)

(declare-fun tp!2299611 () Bool)

(assert (=> b!7805989 (= e!4620712 (and tp!2299613 tp!2299611))))

(declare-fun b!7805988 () Bool)

(assert (=> b!7805988 (= e!4620712 tp_is_empty!52129)))

(declare-fun b!7805990 () Bool)

(declare-fun tp!2299612 () Bool)

(assert (=> b!7805990 (= e!4620712 tp!2299612)))

(assert (=> b!7805570 (= tp!2299548 e!4620712)))

(assert (= (and b!7805570 ((_ is ElementMatch!20887) (regOne!42287 r1!6279))) b!7805988))

(assert (= (and b!7805570 ((_ is Concat!29732) (regOne!42287 r1!6279))) b!7805989))

(assert (= (and b!7805570 ((_ is Star!20887) (regOne!42287 r1!6279))) b!7805990))

(assert (= (and b!7805570 ((_ is Union!20887) (regOne!42287 r1!6279))) b!7805991))

(declare-fun b!7805995 () Bool)

(declare-fun e!4620713 () Bool)

(declare-fun tp!2299614 () Bool)

(declare-fun tp!2299615 () Bool)

(assert (=> b!7805995 (= e!4620713 (and tp!2299614 tp!2299615))))

(declare-fun b!7805993 () Bool)

(declare-fun tp!2299618 () Bool)

(declare-fun tp!2299616 () Bool)

(assert (=> b!7805993 (= e!4620713 (and tp!2299618 tp!2299616))))

(declare-fun b!7805992 () Bool)

(assert (=> b!7805992 (= e!4620713 tp_is_empty!52129)))

(declare-fun b!7805994 () Bool)

(declare-fun tp!2299617 () Bool)

(assert (=> b!7805994 (= e!4620713 tp!2299617)))

(assert (=> b!7805570 (= tp!2299551 e!4620713)))

(assert (= (and b!7805570 ((_ is ElementMatch!20887) (regTwo!42287 r1!6279))) b!7805992))

(assert (= (and b!7805570 ((_ is Concat!29732) (regTwo!42287 r1!6279))) b!7805993))

(assert (= (and b!7805570 ((_ is Star!20887) (regTwo!42287 r1!6279))) b!7805994))

(assert (= (and b!7805570 ((_ is Union!20887) (regTwo!42287 r1!6279))) b!7805995))

(check-sat (not b!7805955) (not d!2347997) (not bm!724002) (not d!2347957) (not bm!723996) (not bm!723960) (not b!7805954) (not b!7805947) (not b!7805886) (not b!7805757) (not b!7805759) (not d!2347965) (not b!7805959) (not b!7805689) (not b!7805784) (not b!7805882) (not b!7805960) (not b!7805958) (not d!2347985) (not b!7805752) (not b!7805639) (not b!7805990) (not b!7805854) (not d!2347971) (not b!7805951) (not b!7805686) (not b!7805880) (not b!7805889) (not b!7805596) (not b!7805690) (not bm!724005) (not d!2347987) (not b!7805944) (not b!7805785) (not b!7805835) (not b!7805946) (not b!7805836) (not bm!723976) (not bm!723973) (not d!2347979) (not b!7805691) (not d!2347991) (not b!7805994) (not b!7805952) (not b!7805891) (not b!7805948) (not d!2347989) (not b!7805695) (not d!2347961) (not b!7805991) (not b!7805630) (not b!7805936) (not b!7805755) (not b!7805881) (not d!2347981) (not bm!723970) (not b!7805956) (not b!7805633) (not b!7805940) (not b!7805901) (not b!7805861) (not b!7805895) (not b!7805626) (not b!7805964) (not b!7805935) (not b!7805962) (not b!7805950) (not b!7805682) (not bm!723975) (not b!7805989) (not d!2347969) (not b!7805858) (not b!7805754) (not b!7805890) (not d!2347995) (not b!7805753) (not b!7805995) (not b!7805938) (not b!7805826) (not b!7805704) tp_is_empty!52129 (not d!2347975) (not b!7805985) (not b!7805863) (not b!7805943) (not b!7805942) (not bm!724006) (not b!7805680) (not b!7805597) (not b!7805634) (not bm!723971) (not b!7805635) (not b!7805595) (not d!2347967) (not bm!724003) (not b!7805842) (not b!7805862) (not b!7805993) (not b!7805939) (not b!7805934) (not b!7805963) (not b!7805867) (not bm!723997))
(check-sat)
