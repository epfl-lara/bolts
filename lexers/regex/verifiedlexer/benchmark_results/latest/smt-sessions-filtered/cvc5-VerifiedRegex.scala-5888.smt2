; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!288426 () Bool)

(assert start!288426)

(declare-fun b!2985964 () Bool)

(assert (=> b!2985964 true))

(assert (=> b!2985964 true))

(declare-fun lambda!111460 () Int)

(declare-fun lambda!111459 () Int)

(assert (=> b!2985964 (not (= lambda!111460 lambda!111459))))

(assert (=> b!2985964 true))

(assert (=> b!2985964 true))

(declare-fun b!2985960 () Bool)

(declare-fun e!1877511 () Bool)

(declare-fun tp_is_empty!16215 () Bool)

(assert (=> b!2985960 (= e!1877511 tp_is_empty!16215)))

(declare-fun b!2985961 () Bool)

(declare-fun res!1231401 () Bool)

(declare-fun e!1877512 () Bool)

(assert (=> b!2985961 (=> res!1231401 e!1877512)))

(declare-datatypes ((C!18838 0))(
  ( (C!18839 (val!11455 Int)) )
))
(declare-datatypes ((List!35191 0))(
  ( (Nil!35067) (Cons!35067 (h!40487 C!18838) (t!234256 List!35191)) )
))
(declare-fun s!11993 () List!35191)

(declare-fun isEmpty!19328 (List!35191) Bool)

(assert (=> b!2985961 (= res!1231401 (isEmpty!19328 s!11993))))

(declare-fun res!1231402 () Bool)

(declare-fun e!1877510 () Bool)

(assert (=> start!288426 (=> (not res!1231402) (not e!1877510))))

(declare-datatypes ((Regex!9326 0))(
  ( (ElementMatch!9326 (c!490648 C!18838)) (Concat!14647 (regOne!19164 Regex!9326) (regTwo!19164 Regex!9326)) (EmptyExpr!9326) (Star!9326 (reg!9655 Regex!9326)) (EmptyLang!9326) (Union!9326 (regOne!19165 Regex!9326) (regTwo!19165 Regex!9326)) )
))
(declare-fun r!17423 () Regex!9326)

(declare-fun validRegex!4059 (Regex!9326) Bool)

(assert (=> start!288426 (= res!1231402 (validRegex!4059 r!17423))))

(assert (=> start!288426 e!1877510))

(assert (=> start!288426 e!1877511))

(declare-fun e!1877509 () Bool)

(assert (=> start!288426 e!1877509))

(declare-fun b!2985962 () Bool)

(declare-fun tp!949950 () Bool)

(assert (=> b!2985962 (= e!1877511 tp!949950)))

(declare-fun b!2985963 () Bool)

(declare-fun tp!949955 () Bool)

(declare-fun tp!949954 () Bool)

(assert (=> b!2985963 (= e!1877511 (and tp!949955 tp!949954))))

(declare-fun e!1877508 () Bool)

(assert (=> b!2985964 (= e!1877512 e!1877508)))

(declare-fun res!1231399 () Bool)

(assert (=> b!2985964 (=> res!1231399 e!1877508)))

(declare-datatypes ((tuple2!33978 0))(
  ( (tuple2!33979 (_1!20121 List!35191) (_2!20121 List!35191)) )
))
(declare-fun lt!1039343 () tuple2!33978)

(declare-fun matchR!4208 (Regex!9326 List!35191) Bool)

(assert (=> b!2985964 (= res!1231399 (not (matchR!4208 (regOne!19164 r!17423) (_1!20121 lt!1039343))))))

(declare-datatypes ((Option!6721 0))(
  ( (None!6720) (Some!6720 (v!34854 tuple2!33978)) )
))
(declare-fun lt!1039346 () Option!6721)

(declare-fun get!10852 (Option!6721) tuple2!33978)

(assert (=> b!2985964 (= lt!1039343 (get!10852 lt!1039346))))

(declare-fun Exists!1603 (Int) Bool)

(assert (=> b!2985964 (= (Exists!1603 lambda!111459) (Exists!1603 lambda!111460))))

(declare-datatypes ((Unit!49055 0))(
  ( (Unit!49056) )
))
(declare-fun lt!1039345 () Unit!49055)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!539 (Regex!9326 Regex!9326 List!35191) Unit!49055)

(assert (=> b!2985964 (= lt!1039345 (lemmaExistCutMatchRandMatchRSpecEquivalent!539 (regOne!19164 r!17423) (regTwo!19164 r!17423) s!11993))))

(declare-fun isDefined!5272 (Option!6721) Bool)

(assert (=> b!2985964 (= (isDefined!5272 lt!1039346) (Exists!1603 lambda!111459))))

(declare-fun findConcatSeparation!1115 (Regex!9326 Regex!9326 List!35191 List!35191 List!35191) Option!6721)

(assert (=> b!2985964 (= lt!1039346 (findConcatSeparation!1115 (regOne!19164 r!17423) (regTwo!19164 r!17423) Nil!35067 s!11993 s!11993))))

(declare-fun lt!1039342 () Unit!49055)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!893 (Regex!9326 Regex!9326 List!35191) Unit!49055)

(assert (=> b!2985964 (= lt!1039342 (lemmaFindConcatSeparationEquivalentToExists!893 (regOne!19164 r!17423) (regTwo!19164 r!17423) s!11993))))

(declare-fun b!2985965 () Bool)

(assert (=> b!2985965 (= e!1877510 (not e!1877512))))

(declare-fun res!1231400 () Bool)

(assert (=> b!2985965 (=> res!1231400 e!1877512)))

(declare-fun lt!1039344 () Bool)

(assert (=> b!2985965 (= res!1231400 (or (not lt!1039344) (not (is-Concat!14647 r!17423))))))

(declare-fun matchRSpec!1463 (Regex!9326 List!35191) Bool)

(assert (=> b!2985965 (= lt!1039344 (matchRSpec!1463 r!17423 s!11993))))

(assert (=> b!2985965 (= lt!1039344 (matchR!4208 r!17423 s!11993))))

(declare-fun lt!1039341 () Unit!49055)

(declare-fun mainMatchTheorem!1463 (Regex!9326 List!35191) Unit!49055)

(assert (=> b!2985965 (= lt!1039341 (mainMatchTheorem!1463 r!17423 s!11993))))

(declare-fun b!2985966 () Bool)

(declare-fun tp!949951 () Bool)

(declare-fun tp!949953 () Bool)

(assert (=> b!2985966 (= e!1877511 (and tp!949951 tp!949953))))

(declare-fun b!2985967 () Bool)

(declare-fun tp!949952 () Bool)

(assert (=> b!2985967 (= e!1877509 (and tp_is_empty!16215 tp!949952))))

(declare-fun b!2985968 () Bool)

(assert (=> b!2985968 (= e!1877508 (matchR!4208 (regTwo!19164 r!17423) (_2!20121 lt!1039343)))))

(assert (= (and start!288426 res!1231402) b!2985965))

(assert (= (and b!2985965 (not res!1231400)) b!2985961))

(assert (= (and b!2985961 (not res!1231401)) b!2985964))

(assert (= (and b!2985964 (not res!1231399)) b!2985968))

(assert (= (and start!288426 (is-ElementMatch!9326 r!17423)) b!2985960))

(assert (= (and start!288426 (is-Concat!14647 r!17423)) b!2985963))

(assert (= (and start!288426 (is-Star!9326 r!17423)) b!2985962))

(assert (= (and start!288426 (is-Union!9326 r!17423)) b!2985966))

(assert (= (and start!288426 (is-Cons!35067 s!11993)) b!2985967))

(declare-fun m!3344709 () Bool)

(assert (=> b!2985964 m!3344709))

(declare-fun m!3344711 () Bool)

(assert (=> b!2985964 m!3344711))

(declare-fun m!3344713 () Bool)

(assert (=> b!2985964 m!3344713))

(declare-fun m!3344715 () Bool)

(assert (=> b!2985964 m!3344715))

(declare-fun m!3344717 () Bool)

(assert (=> b!2985964 m!3344717))

(declare-fun m!3344719 () Bool)

(assert (=> b!2985964 m!3344719))

(declare-fun m!3344721 () Bool)

(assert (=> b!2985964 m!3344721))

(declare-fun m!3344723 () Bool)

(assert (=> b!2985964 m!3344723))

(assert (=> b!2985964 m!3344713))

(declare-fun m!3344725 () Bool)

(assert (=> b!2985968 m!3344725))

(declare-fun m!3344727 () Bool)

(assert (=> b!2985961 m!3344727))

(declare-fun m!3344729 () Bool)

(assert (=> b!2985965 m!3344729))

(declare-fun m!3344731 () Bool)

(assert (=> b!2985965 m!3344731))

(declare-fun m!3344733 () Bool)

(assert (=> b!2985965 m!3344733))

(declare-fun m!3344735 () Bool)

(assert (=> start!288426 m!3344735))

(push 1)

(assert (not start!288426))

(assert (not b!2985966))

(assert (not b!2985968))

(assert (not b!2985963))

(assert (not b!2985962))

(assert (not b!2985961))

(assert (not b!2985965))

(assert (not b!2985967))

(assert tp_is_empty!16215)

(assert (not b!2985964))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!844065 () Bool)

(assert (=> d!844065 (= (isEmpty!19328 s!11993) (is-Nil!35067 s!11993))))

(assert (=> b!2985961 d!844065))

(declare-fun bs!527404 () Bool)

(declare-fun b!2986107 () Bool)

(assert (= bs!527404 (and b!2986107 b!2985964)))

(declare-fun lambda!111473 () Int)

(assert (=> bs!527404 (not (= lambda!111473 lambda!111459))))

(assert (=> bs!527404 (not (= lambda!111473 lambda!111460))))

(assert (=> b!2986107 true))

(assert (=> b!2986107 true))

(declare-fun bs!527405 () Bool)

(declare-fun b!2986097 () Bool)

(assert (= bs!527405 (and b!2986097 b!2985964)))

(declare-fun lambda!111476 () Int)

(assert (=> bs!527405 (not (= lambda!111476 lambda!111459))))

(assert (=> bs!527405 (= lambda!111476 lambda!111460)))

(declare-fun bs!527406 () Bool)

(assert (= bs!527406 (and b!2986097 b!2986107)))

(assert (=> bs!527406 (not (= lambda!111476 lambda!111473))))

(assert (=> b!2986097 true))

(assert (=> b!2986097 true))

(declare-fun d!844067 () Bool)

(declare-fun c!490674 () Bool)

(assert (=> d!844067 (= c!490674 (is-EmptyExpr!9326 r!17423))))

(declare-fun e!1877588 () Bool)

(assert (=> d!844067 (= (matchRSpec!1463 r!17423 s!11993) e!1877588)))

(declare-fun e!1877591 () Bool)

(declare-fun call!199645 () Bool)

(assert (=> b!2986097 (= e!1877591 call!199645)))

(declare-fun b!2986098 () Bool)

(declare-fun c!490675 () Bool)

(assert (=> b!2986098 (= c!490675 (is-Union!9326 r!17423))))

(declare-fun e!1877590 () Bool)

(declare-fun e!1877587 () Bool)

(assert (=> b!2986098 (= e!1877590 e!1877587)))

(declare-fun b!2986099 () Bool)

(declare-fun e!1877589 () Bool)

(assert (=> b!2986099 (= e!1877589 (matchRSpec!1463 (regTwo!19165 r!17423) s!11993))))

(declare-fun b!2986100 () Bool)

(declare-fun call!199644 () Bool)

(assert (=> b!2986100 (= e!1877588 call!199644)))

(declare-fun b!2986101 () Bool)

(assert (=> b!2986101 (= e!1877587 e!1877591)))

(declare-fun c!490672 () Bool)

(assert (=> b!2986101 (= c!490672 (is-Star!9326 r!17423))))

(declare-fun bm!199639 () Bool)

(assert (=> bm!199639 (= call!199644 (isEmpty!19328 s!11993))))

(declare-fun b!2986102 () Bool)

(assert (=> b!2986102 (= e!1877587 e!1877589)))

(declare-fun res!1231464 () Bool)

(assert (=> b!2986102 (= res!1231464 (matchRSpec!1463 (regOne!19165 r!17423) s!11993))))

(assert (=> b!2986102 (=> res!1231464 e!1877589)))

(declare-fun bm!199640 () Bool)

(assert (=> bm!199640 (= call!199645 (Exists!1603 (ite c!490672 lambda!111473 lambda!111476)))))

(declare-fun b!2986103 () Bool)

(declare-fun res!1231465 () Bool)

(declare-fun e!1877593 () Bool)

(assert (=> b!2986103 (=> res!1231465 e!1877593)))

(assert (=> b!2986103 (= res!1231465 call!199644)))

(assert (=> b!2986103 (= e!1877591 e!1877593)))

(declare-fun b!2986104 () Bool)

(assert (=> b!2986104 (= e!1877590 (= s!11993 (Cons!35067 (c!490648 r!17423) Nil!35067)))))

(declare-fun b!2986105 () Bool)

(declare-fun e!1877592 () Bool)

(assert (=> b!2986105 (= e!1877588 e!1877592)))

(declare-fun res!1231466 () Bool)

(assert (=> b!2986105 (= res!1231466 (not (is-EmptyLang!9326 r!17423)))))

(assert (=> b!2986105 (=> (not res!1231466) (not e!1877592))))

(declare-fun b!2986106 () Bool)

(declare-fun c!490673 () Bool)

(assert (=> b!2986106 (= c!490673 (is-ElementMatch!9326 r!17423))))

(assert (=> b!2986106 (= e!1877592 e!1877590)))

(assert (=> b!2986107 (= e!1877593 call!199645)))

(assert (= (and d!844067 c!490674) b!2986100))

(assert (= (and d!844067 (not c!490674)) b!2986105))

(assert (= (and b!2986105 res!1231466) b!2986106))

(assert (= (and b!2986106 c!490673) b!2986104))

(assert (= (and b!2986106 (not c!490673)) b!2986098))

(assert (= (and b!2986098 c!490675) b!2986102))

(assert (= (and b!2986098 (not c!490675)) b!2986101))

(assert (= (and b!2986102 (not res!1231464)) b!2986099))

(assert (= (and b!2986101 c!490672) b!2986103))

(assert (= (and b!2986101 (not c!490672)) b!2986097))

(assert (= (and b!2986103 (not res!1231465)) b!2986107))

(assert (= (or b!2986107 b!2986097) bm!199640))

(assert (= (or b!2986100 b!2986103) bm!199639))

(declare-fun m!3344771 () Bool)

(assert (=> b!2986099 m!3344771))

(assert (=> bm!199639 m!3344727))

(declare-fun m!3344773 () Bool)

(assert (=> b!2986102 m!3344773))

(declare-fun m!3344775 () Bool)

(assert (=> bm!199640 m!3344775))

(assert (=> b!2985965 d!844067))

(declare-fun b!2986146 () Bool)

(declare-fun e!1877618 () Bool)

(declare-fun e!1877613 () Bool)

(assert (=> b!2986146 (= e!1877618 e!1877613)))

(declare-fun c!490684 () Bool)

(assert (=> b!2986146 (= c!490684 (is-EmptyLang!9326 r!17423))))

(declare-fun b!2986147 () Bool)

(declare-fun lt!1039367 () Bool)

(assert (=> b!2986147 (= e!1877613 (not lt!1039367))))

(declare-fun b!2986148 () Bool)

(declare-fun e!1877615 () Bool)

(declare-fun nullable!3003 (Regex!9326) Bool)

(assert (=> b!2986148 (= e!1877615 (nullable!3003 r!17423))))

(declare-fun bm!199647 () Bool)

(declare-fun call!199652 () Bool)

(assert (=> bm!199647 (= call!199652 (isEmpty!19328 s!11993))))

(declare-fun b!2986149 () Bool)

(declare-fun e!1877617 () Bool)

(declare-fun head!6661 (List!35191) C!18838)

(assert (=> b!2986149 (= e!1877617 (not (= (head!6661 s!11993) (c!490648 r!17423))))))

(declare-fun d!844071 () Bool)

(assert (=> d!844071 e!1877618))

(declare-fun c!490683 () Bool)

(assert (=> d!844071 (= c!490683 (is-EmptyExpr!9326 r!17423))))

(assert (=> d!844071 (= lt!1039367 e!1877615)))

(declare-fun c!490682 () Bool)

(assert (=> d!844071 (= c!490682 (isEmpty!19328 s!11993))))

(assert (=> d!844071 (validRegex!4059 r!17423)))

(assert (=> d!844071 (= (matchR!4208 r!17423 s!11993) lt!1039367)))

(declare-fun b!2986150 () Bool)

(declare-fun res!1231495 () Bool)

(declare-fun e!1877612 () Bool)

(assert (=> b!2986150 (=> res!1231495 e!1877612)))

(declare-fun e!1877614 () Bool)

(assert (=> b!2986150 (= res!1231495 e!1877614)))

(declare-fun res!1231499 () Bool)

(assert (=> b!2986150 (=> (not res!1231499) (not e!1877614))))

(assert (=> b!2986150 (= res!1231499 lt!1039367)))

(declare-fun b!2986151 () Bool)

(declare-fun res!1231496 () Bool)

(assert (=> b!2986151 (=> res!1231496 e!1877617)))

(declare-fun tail!4887 (List!35191) List!35191)

(assert (=> b!2986151 (= res!1231496 (not (isEmpty!19328 (tail!4887 s!11993))))))

(declare-fun b!2986152 () Bool)

(declare-fun res!1231498 () Bool)

(assert (=> b!2986152 (=> (not res!1231498) (not e!1877614))))

(assert (=> b!2986152 (= res!1231498 (not call!199652))))

(declare-fun b!2986153 () Bool)

(declare-fun res!1231493 () Bool)

(assert (=> b!2986153 (=> (not res!1231493) (not e!1877614))))

(assert (=> b!2986153 (= res!1231493 (isEmpty!19328 (tail!4887 s!11993)))))

(declare-fun b!2986154 () Bool)

(declare-fun e!1877616 () Bool)

(assert (=> b!2986154 (= e!1877612 e!1877616)))

(declare-fun res!1231494 () Bool)

(assert (=> b!2986154 (=> (not res!1231494) (not e!1877616))))

(assert (=> b!2986154 (= res!1231494 (not lt!1039367))))

(declare-fun b!2986155 () Bool)

(declare-fun res!1231500 () Bool)

(assert (=> b!2986155 (=> res!1231500 e!1877612)))

(assert (=> b!2986155 (= res!1231500 (not (is-ElementMatch!9326 r!17423)))))

(assert (=> b!2986155 (= e!1877613 e!1877612)))

(declare-fun b!2986156 () Bool)

(declare-fun derivativeStep!2602 (Regex!9326 C!18838) Regex!9326)

(assert (=> b!2986156 (= e!1877615 (matchR!4208 (derivativeStep!2602 r!17423 (head!6661 s!11993)) (tail!4887 s!11993)))))

(declare-fun b!2986157 () Bool)

(assert (=> b!2986157 (= e!1877614 (= (head!6661 s!11993) (c!490648 r!17423)))))

(declare-fun b!2986158 () Bool)

(assert (=> b!2986158 (= e!1877616 e!1877617)))

(declare-fun res!1231497 () Bool)

(assert (=> b!2986158 (=> res!1231497 e!1877617)))

(assert (=> b!2986158 (= res!1231497 call!199652)))

(declare-fun b!2986159 () Bool)

(assert (=> b!2986159 (= e!1877618 (= lt!1039367 call!199652))))

(assert (= (and d!844071 c!490682) b!2986148))

(assert (= (and d!844071 (not c!490682)) b!2986156))

(assert (= (and d!844071 c!490683) b!2986159))

(assert (= (and d!844071 (not c!490683)) b!2986146))

(assert (= (and b!2986146 c!490684) b!2986147))

(assert (= (and b!2986146 (not c!490684)) b!2986155))

(assert (= (and b!2986155 (not res!1231500)) b!2986150))

(assert (= (and b!2986150 res!1231499) b!2986152))

(assert (= (and b!2986152 res!1231498) b!2986153))

(assert (= (and b!2986153 res!1231493) b!2986157))

(assert (= (and b!2986150 (not res!1231495)) b!2986154))

(assert (= (and b!2986154 res!1231494) b!2986158))

(assert (= (and b!2986158 (not res!1231497)) b!2986151))

(assert (= (and b!2986151 (not res!1231496)) b!2986149))

(assert (= (or b!2986159 b!2986152 b!2986158) bm!199647))

(declare-fun m!3344777 () Bool)

(assert (=> b!2986157 m!3344777))

(assert (=> b!2986156 m!3344777))

(assert (=> b!2986156 m!3344777))

(declare-fun m!3344779 () Bool)

(assert (=> b!2986156 m!3344779))

(declare-fun m!3344781 () Bool)

(assert (=> b!2986156 m!3344781))

(assert (=> b!2986156 m!3344779))

(assert (=> b!2986156 m!3344781))

(declare-fun m!3344783 () Bool)

(assert (=> b!2986156 m!3344783))

(declare-fun m!3344785 () Bool)

(assert (=> b!2986148 m!3344785))

(assert (=> d!844071 m!3344727))

(assert (=> d!844071 m!3344735))

(assert (=> b!2986149 m!3344777))

(assert (=> bm!199647 m!3344727))

(assert (=> b!2986153 m!3344781))

(assert (=> b!2986153 m!3344781))

(declare-fun m!3344787 () Bool)

(assert (=> b!2986153 m!3344787))

(assert (=> b!2986151 m!3344781))

(assert (=> b!2986151 m!3344781))

(assert (=> b!2986151 m!3344787))

(assert (=> b!2985965 d!844071))

(declare-fun d!844073 () Bool)

(assert (=> d!844073 (= (matchR!4208 r!17423 s!11993) (matchRSpec!1463 r!17423 s!11993))))

(declare-fun lt!1039370 () Unit!49055)

(declare-fun choose!17694 (Regex!9326 List!35191) Unit!49055)

(assert (=> d!844073 (= lt!1039370 (choose!17694 r!17423 s!11993))))

(assert (=> d!844073 (validRegex!4059 r!17423)))

(assert (=> d!844073 (= (mainMatchTheorem!1463 r!17423 s!11993) lt!1039370)))

(declare-fun bs!527407 () Bool)

(assert (= bs!527407 d!844073))

(assert (=> bs!527407 m!3344731))

(assert (=> bs!527407 m!3344729))

(declare-fun m!3344789 () Bool)

(assert (=> bs!527407 m!3344789))

(assert (=> bs!527407 m!3344735))

(assert (=> b!2985965 d!844073))

(declare-fun bm!199656 () Bool)

(declare-fun call!199662 () Bool)

(declare-fun call!199661 () Bool)

(assert (=> bm!199656 (= call!199662 call!199661)))

(declare-fun c!490693 () Bool)

(declare-fun bm!199657 () Bool)

(declare-fun c!490694 () Bool)

(assert (=> bm!199657 (= call!199661 (validRegex!4059 (ite c!490694 (reg!9655 r!17423) (ite c!490693 (regTwo!19165 r!17423) (regOne!19164 r!17423)))))))

(declare-fun b!2986189 () Bool)

(declare-fun res!1231515 () Bool)

(declare-fun e!1877643 () Bool)

(assert (=> b!2986189 (=> res!1231515 e!1877643)))

(assert (=> b!2986189 (= res!1231515 (not (is-Concat!14647 r!17423)))))

(declare-fun e!1877642 () Bool)

(assert (=> b!2986189 (= e!1877642 e!1877643)))

(declare-fun d!844075 () Bool)

(declare-fun res!1231514 () Bool)

(declare-fun e!1877646 () Bool)

(assert (=> d!844075 (=> res!1231514 e!1877646)))

(assert (=> d!844075 (= res!1231514 (is-ElementMatch!9326 r!17423))))

(assert (=> d!844075 (= (validRegex!4059 r!17423) e!1877646)))

(declare-fun b!2986190 () Bool)

(declare-fun e!1877641 () Bool)

(assert (=> b!2986190 (= e!1877646 e!1877641)))

(assert (=> b!2986190 (= c!490694 (is-Star!9326 r!17423))))

(declare-fun b!2986191 () Bool)

(declare-fun res!1231518 () Bool)

(declare-fun e!1877645 () Bool)

(assert (=> b!2986191 (=> (not res!1231518) (not e!1877645))))

(declare-fun call!199663 () Bool)

(assert (=> b!2986191 (= res!1231518 call!199663)))

(assert (=> b!2986191 (= e!1877642 e!1877645)))

(declare-fun b!2986192 () Bool)

(declare-fun e!1877640 () Bool)

(assert (=> b!2986192 (= e!1877640 call!199663)))

(declare-fun b!2986193 () Bool)

(declare-fun e!1877644 () Bool)

(assert (=> b!2986193 (= e!1877644 call!199661)))

(declare-fun b!2986194 () Bool)

(assert (=> b!2986194 (= e!1877643 e!1877640)))

(declare-fun res!1231517 () Bool)

(assert (=> b!2986194 (=> (not res!1231517) (not e!1877640))))

(assert (=> b!2986194 (= res!1231517 call!199662)))

(declare-fun b!2986195 () Bool)

(assert (=> b!2986195 (= e!1877645 call!199662)))

(declare-fun b!2986196 () Bool)

(assert (=> b!2986196 (= e!1877641 e!1877642)))

(assert (=> b!2986196 (= c!490693 (is-Union!9326 r!17423))))

(declare-fun bm!199658 () Bool)

(assert (=> bm!199658 (= call!199663 (validRegex!4059 (ite c!490693 (regOne!19165 r!17423) (regTwo!19164 r!17423))))))

(declare-fun b!2986197 () Bool)

(assert (=> b!2986197 (= e!1877641 e!1877644)))

(declare-fun res!1231516 () Bool)

(assert (=> b!2986197 (= res!1231516 (not (nullable!3003 (reg!9655 r!17423))))))

(assert (=> b!2986197 (=> (not res!1231516) (not e!1877644))))

(assert (= (and d!844075 (not res!1231514)) b!2986190))

(assert (= (and b!2986190 c!490694) b!2986197))

(assert (= (and b!2986190 (not c!490694)) b!2986196))

(assert (= (and b!2986197 res!1231516) b!2986193))

(assert (= (and b!2986196 c!490693) b!2986191))

(assert (= (and b!2986196 (not c!490693)) b!2986189))

(assert (= (and b!2986191 res!1231518) b!2986195))

(assert (= (and b!2986189 (not res!1231515)) b!2986194))

(assert (= (and b!2986194 res!1231517) b!2986192))

(assert (= (or b!2986191 b!2986192) bm!199658))

(assert (= (or b!2986195 b!2986194) bm!199656))

(assert (= (or b!2986193 bm!199656) bm!199657))

(declare-fun m!3344797 () Bool)

(assert (=> bm!199657 m!3344797))

(declare-fun m!3344799 () Bool)

(assert (=> bm!199658 m!3344799))

(declare-fun m!3344801 () Bool)

(assert (=> b!2986197 m!3344801))

(assert (=> start!288426 d!844075))

(declare-fun bs!527411 () Bool)

(declare-fun d!844079 () Bool)

(assert (= bs!527411 (and d!844079 b!2985964)))

(declare-fun lambda!111485 () Int)

(assert (=> bs!527411 (= lambda!111485 lambda!111459)))

(assert (=> bs!527411 (not (= lambda!111485 lambda!111460))))

(declare-fun bs!527412 () Bool)

(assert (= bs!527412 (and d!844079 b!2986107)))

(assert (=> bs!527412 (not (= lambda!111485 lambda!111473))))

(declare-fun bs!527413 () Bool)

(assert (= bs!527413 (and d!844079 b!2986097)))

(assert (=> bs!527413 (not (= lambda!111485 lambda!111476))))

(assert (=> d!844079 true))

(assert (=> d!844079 true))

(assert (=> d!844079 true))

(declare-fun lambda!111486 () Int)

(assert (=> bs!527413 (= lambda!111486 lambda!111476)))

(assert (=> bs!527411 (not (= lambda!111486 lambda!111459))))

(assert (=> bs!527412 (not (= lambda!111486 lambda!111473))))

(declare-fun bs!527414 () Bool)

(assert (= bs!527414 d!844079))

(assert (=> bs!527414 (not (= lambda!111486 lambda!111485))))

(assert (=> bs!527411 (= lambda!111486 lambda!111460)))

(assert (=> d!844079 true))

(assert (=> d!844079 true))

(assert (=> d!844079 true))

(assert (=> d!844079 (= (Exists!1603 lambda!111485) (Exists!1603 lambda!111486))))

(declare-fun lt!1039375 () Unit!49055)

(declare-fun choose!17695 (Regex!9326 Regex!9326 List!35191) Unit!49055)

(assert (=> d!844079 (= lt!1039375 (choose!17695 (regOne!19164 r!17423) (regTwo!19164 r!17423) s!11993))))

(assert (=> d!844079 (validRegex!4059 (regOne!19164 r!17423))))

(assert (=> d!844079 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!539 (regOne!19164 r!17423) (regTwo!19164 r!17423) s!11993) lt!1039375)))

(declare-fun m!3344803 () Bool)

(assert (=> bs!527414 m!3344803))

(declare-fun m!3344805 () Bool)

(assert (=> bs!527414 m!3344805))

(declare-fun m!3344807 () Bool)

(assert (=> bs!527414 m!3344807))

(declare-fun m!3344809 () Bool)

(assert (=> bs!527414 m!3344809))

(assert (=> b!2985964 d!844079))

(declare-fun d!844081 () Bool)

(declare-fun choose!17696 (Int) Bool)

(assert (=> d!844081 (= (Exists!1603 lambda!111460) (choose!17696 lambda!111460))))

(declare-fun bs!527415 () Bool)

(assert (= bs!527415 d!844081))

(declare-fun m!3344811 () Bool)

(assert (=> bs!527415 m!3344811))

(assert (=> b!2985964 d!844081))

(declare-fun b!2986234 () Bool)

(declare-fun e!1877671 () Bool)

(declare-fun e!1877666 () Bool)

(assert (=> b!2986234 (= e!1877671 e!1877666)))

(declare-fun c!490703 () Bool)

(assert (=> b!2986234 (= c!490703 (is-EmptyLang!9326 (regOne!19164 r!17423)))))

(declare-fun b!2986235 () Bool)

(declare-fun lt!1039376 () Bool)

(assert (=> b!2986235 (= e!1877666 (not lt!1039376))))

(declare-fun b!2986236 () Bool)

(declare-fun e!1877668 () Bool)

(assert (=> b!2986236 (= e!1877668 (nullable!3003 (regOne!19164 r!17423)))))

(declare-fun bm!199661 () Bool)

(declare-fun call!199666 () Bool)

(assert (=> bm!199661 (= call!199666 (isEmpty!19328 (_1!20121 lt!1039343)))))

(declare-fun b!2986237 () Bool)

(declare-fun e!1877670 () Bool)

(assert (=> b!2986237 (= e!1877670 (not (= (head!6661 (_1!20121 lt!1039343)) (c!490648 (regOne!19164 r!17423)))))))

(declare-fun d!844083 () Bool)

(assert (=> d!844083 e!1877671))

(declare-fun c!490702 () Bool)

(assert (=> d!844083 (= c!490702 (is-EmptyExpr!9326 (regOne!19164 r!17423)))))

(assert (=> d!844083 (= lt!1039376 e!1877668)))

(declare-fun c!490701 () Bool)

(assert (=> d!844083 (= c!490701 (isEmpty!19328 (_1!20121 lt!1039343)))))

(assert (=> d!844083 (validRegex!4059 (regOne!19164 r!17423))))

(assert (=> d!844083 (= (matchR!4208 (regOne!19164 r!17423) (_1!20121 lt!1039343)) lt!1039376)))

(declare-fun b!2986238 () Bool)

(declare-fun res!1231545 () Bool)

(declare-fun e!1877665 () Bool)

(assert (=> b!2986238 (=> res!1231545 e!1877665)))

(declare-fun e!1877667 () Bool)

(assert (=> b!2986238 (= res!1231545 e!1877667)))

(declare-fun res!1231549 () Bool)

(assert (=> b!2986238 (=> (not res!1231549) (not e!1877667))))

(assert (=> b!2986238 (= res!1231549 lt!1039376)))

(declare-fun b!2986239 () Bool)

(declare-fun res!1231546 () Bool)

(assert (=> b!2986239 (=> res!1231546 e!1877670)))

(assert (=> b!2986239 (= res!1231546 (not (isEmpty!19328 (tail!4887 (_1!20121 lt!1039343)))))))

(declare-fun b!2986240 () Bool)

(declare-fun res!1231548 () Bool)

(assert (=> b!2986240 (=> (not res!1231548) (not e!1877667))))

(assert (=> b!2986240 (= res!1231548 (not call!199666))))

(declare-fun b!2986241 () Bool)

(declare-fun res!1231543 () Bool)

(assert (=> b!2986241 (=> (not res!1231543) (not e!1877667))))

(assert (=> b!2986241 (= res!1231543 (isEmpty!19328 (tail!4887 (_1!20121 lt!1039343))))))

(declare-fun b!2986242 () Bool)

(declare-fun e!1877669 () Bool)

(assert (=> b!2986242 (= e!1877665 e!1877669)))

(declare-fun res!1231544 () Bool)

(assert (=> b!2986242 (=> (not res!1231544) (not e!1877669))))

(assert (=> b!2986242 (= res!1231544 (not lt!1039376))))

(declare-fun b!2986243 () Bool)

(declare-fun res!1231550 () Bool)

(assert (=> b!2986243 (=> res!1231550 e!1877665)))

(assert (=> b!2986243 (= res!1231550 (not (is-ElementMatch!9326 (regOne!19164 r!17423))))))

(assert (=> b!2986243 (= e!1877666 e!1877665)))

(declare-fun b!2986244 () Bool)

(assert (=> b!2986244 (= e!1877668 (matchR!4208 (derivativeStep!2602 (regOne!19164 r!17423) (head!6661 (_1!20121 lt!1039343))) (tail!4887 (_1!20121 lt!1039343))))))

(declare-fun b!2986245 () Bool)

(assert (=> b!2986245 (= e!1877667 (= (head!6661 (_1!20121 lt!1039343)) (c!490648 (regOne!19164 r!17423))))))

(declare-fun b!2986246 () Bool)

(assert (=> b!2986246 (= e!1877669 e!1877670)))

(declare-fun res!1231547 () Bool)

(assert (=> b!2986246 (=> res!1231547 e!1877670)))

(assert (=> b!2986246 (= res!1231547 call!199666)))

(declare-fun b!2986247 () Bool)

(assert (=> b!2986247 (= e!1877671 (= lt!1039376 call!199666))))

(assert (= (and d!844083 c!490701) b!2986236))

(assert (= (and d!844083 (not c!490701)) b!2986244))

(assert (= (and d!844083 c!490702) b!2986247))

(assert (= (and d!844083 (not c!490702)) b!2986234))

(assert (= (and b!2986234 c!490703) b!2986235))

(assert (= (and b!2986234 (not c!490703)) b!2986243))

(assert (= (and b!2986243 (not res!1231550)) b!2986238))

(assert (= (and b!2986238 res!1231549) b!2986240))

(assert (= (and b!2986240 res!1231548) b!2986241))

(assert (= (and b!2986241 res!1231543) b!2986245))

(assert (= (and b!2986238 (not res!1231545)) b!2986242))

(assert (= (and b!2986242 res!1231544) b!2986246))

(assert (= (and b!2986246 (not res!1231547)) b!2986239))

(assert (= (and b!2986239 (not res!1231546)) b!2986237))

(assert (= (or b!2986247 b!2986240 b!2986246) bm!199661))

(declare-fun m!3344813 () Bool)

(assert (=> b!2986245 m!3344813))

(assert (=> b!2986244 m!3344813))

(assert (=> b!2986244 m!3344813))

(declare-fun m!3344815 () Bool)

(assert (=> b!2986244 m!3344815))

(declare-fun m!3344817 () Bool)

(assert (=> b!2986244 m!3344817))

(assert (=> b!2986244 m!3344815))

(assert (=> b!2986244 m!3344817))

(declare-fun m!3344819 () Bool)

(assert (=> b!2986244 m!3344819))

(declare-fun m!3344821 () Bool)

(assert (=> b!2986236 m!3344821))

(declare-fun m!3344823 () Bool)

(assert (=> d!844083 m!3344823))

(assert (=> d!844083 m!3344809))

(assert (=> b!2986237 m!3344813))

(assert (=> bm!199661 m!3344823))

(assert (=> b!2986241 m!3344817))

(assert (=> b!2986241 m!3344817))

(declare-fun m!3344825 () Bool)

(assert (=> b!2986241 m!3344825))

(assert (=> b!2986239 m!3344817))

(assert (=> b!2986239 m!3344817))

(assert (=> b!2986239 m!3344825))

(assert (=> b!2985964 d!844083))

(declare-fun d!844085 () Bool)

(declare-fun isEmpty!19330 (Option!6721) Bool)

(assert (=> d!844085 (= (isDefined!5272 lt!1039346) (not (isEmpty!19330 lt!1039346)))))

(declare-fun bs!527416 () Bool)

(assert (= bs!527416 d!844085))

(declare-fun m!3344827 () Bool)

(assert (=> bs!527416 m!3344827))

(assert (=> b!2985964 d!844085))

(declare-fun d!844087 () Bool)

(assert (=> d!844087 (= (get!10852 lt!1039346) (v!34854 lt!1039346))))

(assert (=> b!2985964 d!844087))

(declare-fun d!844089 () Bool)

(assert (=> d!844089 (= (Exists!1603 lambda!111459) (choose!17696 lambda!111459))))

(declare-fun bs!527417 () Bool)

(assert (= bs!527417 d!844089))

(declare-fun m!3344829 () Bool)

(assert (=> bs!527417 m!3344829))

(assert (=> b!2985964 d!844089))

(declare-fun d!844091 () Bool)

(declare-fun e!1877706 () Bool)

(assert (=> d!844091 e!1877706))

(declare-fun res!1231587 () Bool)

(assert (=> d!844091 (=> res!1231587 e!1877706)))

(declare-fun e!1877707 () Bool)

(assert (=> d!844091 (= res!1231587 e!1877707)))

(declare-fun res!1231586 () Bool)

(assert (=> d!844091 (=> (not res!1231586) (not e!1877707))))

(declare-fun lt!1039390 () Option!6721)

(assert (=> d!844091 (= res!1231586 (isDefined!5272 lt!1039390))))

(declare-fun e!1877704 () Option!6721)

(assert (=> d!844091 (= lt!1039390 e!1877704)))

(declare-fun c!490717 () Bool)

(declare-fun e!1877705 () Bool)

(assert (=> d!844091 (= c!490717 e!1877705)))

(declare-fun res!1231589 () Bool)

(assert (=> d!844091 (=> (not res!1231589) (not e!1877705))))

(assert (=> d!844091 (= res!1231589 (matchR!4208 (regOne!19164 r!17423) Nil!35067))))

(assert (=> d!844091 (validRegex!4059 (regOne!19164 r!17423))))

(assert (=> d!844091 (= (findConcatSeparation!1115 (regOne!19164 r!17423) (regTwo!19164 r!17423) Nil!35067 s!11993 s!11993) lt!1039390)))

(declare-fun b!2986308 () Bool)

(declare-fun e!1877703 () Option!6721)

(assert (=> b!2986308 (= e!1877704 e!1877703)))

(declare-fun c!490718 () Bool)

(assert (=> b!2986308 (= c!490718 (is-Nil!35067 s!11993))))

(declare-fun b!2986309 () Bool)

(declare-fun res!1231588 () Bool)

(assert (=> b!2986309 (=> (not res!1231588) (not e!1877707))))

(assert (=> b!2986309 (= res!1231588 (matchR!4208 (regTwo!19164 r!17423) (_2!20121 (get!10852 lt!1039390))))))

(declare-fun b!2986310 () Bool)

(assert (=> b!2986310 (= e!1877705 (matchR!4208 (regTwo!19164 r!17423) s!11993))))

(declare-fun b!2986311 () Bool)

(assert (=> b!2986311 (= e!1877706 (not (isDefined!5272 lt!1039390)))))

(declare-fun b!2986312 () Bool)

(declare-fun lt!1039391 () Unit!49055)

(declare-fun lt!1039389 () Unit!49055)

(assert (=> b!2986312 (= lt!1039391 lt!1039389)))

(declare-fun ++!8377 (List!35191 List!35191) List!35191)

(assert (=> b!2986312 (= (++!8377 (++!8377 Nil!35067 (Cons!35067 (h!40487 s!11993) Nil!35067)) (t!234256 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!992 (List!35191 C!18838 List!35191 List!35191) Unit!49055)

(assert (=> b!2986312 (= lt!1039389 (lemmaMoveElementToOtherListKeepsConcatEq!992 Nil!35067 (h!40487 s!11993) (t!234256 s!11993) s!11993))))

(assert (=> b!2986312 (= e!1877703 (findConcatSeparation!1115 (regOne!19164 r!17423) (regTwo!19164 r!17423) (++!8377 Nil!35067 (Cons!35067 (h!40487 s!11993) Nil!35067)) (t!234256 s!11993) s!11993))))

(declare-fun b!2986313 () Bool)

(assert (=> b!2986313 (= e!1877707 (= (++!8377 (_1!20121 (get!10852 lt!1039390)) (_2!20121 (get!10852 lt!1039390))) s!11993))))

(declare-fun b!2986314 () Bool)

(assert (=> b!2986314 (= e!1877704 (Some!6720 (tuple2!33979 Nil!35067 s!11993)))))

(declare-fun b!2986315 () Bool)

(declare-fun res!1231585 () Bool)

(assert (=> b!2986315 (=> (not res!1231585) (not e!1877707))))

(assert (=> b!2986315 (= res!1231585 (matchR!4208 (regOne!19164 r!17423) (_1!20121 (get!10852 lt!1039390))))))

(declare-fun b!2986316 () Bool)

(assert (=> b!2986316 (= e!1877703 None!6720)))

(assert (= (and d!844091 res!1231589) b!2986310))

(assert (= (and d!844091 c!490717) b!2986314))

(assert (= (and d!844091 (not c!490717)) b!2986308))

(assert (= (and b!2986308 c!490718) b!2986316))

(assert (= (and b!2986308 (not c!490718)) b!2986312))

(assert (= (and d!844091 res!1231586) b!2986315))

(assert (= (and b!2986315 res!1231585) b!2986309))

(assert (= (and b!2986309 res!1231588) b!2986313))

(assert (= (and d!844091 (not res!1231587)) b!2986311))

(declare-fun m!3344875 () Bool)

(assert (=> b!2986309 m!3344875))

(declare-fun m!3344877 () Bool)

(assert (=> b!2986309 m!3344877))

(declare-fun m!3344879 () Bool)

(assert (=> b!2986312 m!3344879))

(assert (=> b!2986312 m!3344879))

(declare-fun m!3344883 () Bool)

(assert (=> b!2986312 m!3344883))

(declare-fun m!3344885 () Bool)

(assert (=> b!2986312 m!3344885))

(assert (=> b!2986312 m!3344879))

(declare-fun m!3344887 () Bool)

(assert (=> b!2986312 m!3344887))

(declare-fun m!3344889 () Bool)

(assert (=> b!2986311 m!3344889))

(assert (=> b!2986315 m!3344875))

(declare-fun m!3344891 () Bool)

(assert (=> b!2986315 m!3344891))

(declare-fun m!3344893 () Bool)

(assert (=> b!2986310 m!3344893))

(assert (=> d!844091 m!3344889))

(declare-fun m!3344895 () Bool)

(assert (=> d!844091 m!3344895))

(assert (=> d!844091 m!3344809))

(assert (=> b!2986313 m!3344875))

(declare-fun m!3344897 () Bool)

(assert (=> b!2986313 m!3344897))

(assert (=> b!2985964 d!844091))

(declare-fun bs!527420 () Bool)

(declare-fun d!844103 () Bool)

(assert (= bs!527420 (and d!844103 b!2986097)))

(declare-fun lambda!111489 () Int)

(assert (=> bs!527420 (not (= lambda!111489 lambda!111476))))

(declare-fun bs!527421 () Bool)

(assert (= bs!527421 (and d!844103 b!2985964)))

(assert (=> bs!527421 (= lambda!111489 lambda!111459)))

(declare-fun bs!527422 () Bool)

(assert (= bs!527422 (and d!844103 d!844079)))

(assert (=> bs!527422 (not (= lambda!111489 lambda!111486))))

(declare-fun bs!527423 () Bool)

(assert (= bs!527423 (and d!844103 b!2986107)))

(assert (=> bs!527423 (not (= lambda!111489 lambda!111473))))

(assert (=> bs!527422 (= lambda!111489 lambda!111485)))

(assert (=> bs!527421 (not (= lambda!111489 lambda!111460))))

(assert (=> d!844103 true))

(assert (=> d!844103 true))

(assert (=> d!844103 true))

(assert (=> d!844103 (= (isDefined!5272 (findConcatSeparation!1115 (regOne!19164 r!17423) (regTwo!19164 r!17423) Nil!35067 s!11993 s!11993)) (Exists!1603 lambda!111489))))

(declare-fun lt!1039394 () Unit!49055)

(declare-fun choose!17697 (Regex!9326 Regex!9326 List!35191) Unit!49055)

(assert (=> d!844103 (= lt!1039394 (choose!17697 (regOne!19164 r!17423) (regTwo!19164 r!17423) s!11993))))

(assert (=> d!844103 (validRegex!4059 (regOne!19164 r!17423))))

(assert (=> d!844103 (= (lemmaFindConcatSeparationEquivalentToExists!893 (regOne!19164 r!17423) (regTwo!19164 r!17423) s!11993) lt!1039394)))

(declare-fun bs!527424 () Bool)

(assert (= bs!527424 d!844103))

(declare-fun m!3344901 () Bool)

(assert (=> bs!527424 m!3344901))

(assert (=> bs!527424 m!3344809))

(declare-fun m!3344903 () Bool)

(assert (=> bs!527424 m!3344903))

(assert (=> bs!527424 m!3344719))

(declare-fun m!3344905 () Bool)

(assert (=> bs!527424 m!3344905))

(assert (=> bs!527424 m!3344719))

(assert (=> b!2985964 d!844103))

(declare-fun b!2986321 () Bool)

(declare-fun e!1877716 () Bool)

(declare-fun e!1877711 () Bool)

(assert (=> b!2986321 (= e!1877716 e!1877711)))

(declare-fun c!490721 () Bool)

(assert (=> b!2986321 (= c!490721 (is-EmptyLang!9326 (regTwo!19164 r!17423)))))

(declare-fun b!2986322 () Bool)

(declare-fun lt!1039397 () Bool)

(assert (=> b!2986322 (= e!1877711 (not lt!1039397))))

(declare-fun b!2986323 () Bool)

(declare-fun e!1877713 () Bool)

(assert (=> b!2986323 (= e!1877713 (nullable!3003 (regTwo!19164 r!17423)))))

(declare-fun bm!199665 () Bool)

(declare-fun call!199670 () Bool)

(assert (=> bm!199665 (= call!199670 (isEmpty!19328 (_2!20121 lt!1039343)))))

(declare-fun b!2986324 () Bool)

(declare-fun e!1877715 () Bool)

(assert (=> b!2986324 (= e!1877715 (not (= (head!6661 (_2!20121 lt!1039343)) (c!490648 (regTwo!19164 r!17423)))))))

(declare-fun d!844107 () Bool)

(assert (=> d!844107 e!1877716))

(declare-fun c!490720 () Bool)

(assert (=> d!844107 (= c!490720 (is-EmptyExpr!9326 (regTwo!19164 r!17423)))))

(assert (=> d!844107 (= lt!1039397 e!1877713)))

(declare-fun c!490719 () Bool)

(assert (=> d!844107 (= c!490719 (isEmpty!19328 (_2!20121 lt!1039343)))))

(assert (=> d!844107 (validRegex!4059 (regTwo!19164 r!17423))))

(assert (=> d!844107 (= (matchR!4208 (regTwo!19164 r!17423) (_2!20121 lt!1039343)) lt!1039397)))

(declare-fun b!2986325 () Bool)

(declare-fun res!1231596 () Bool)

(declare-fun e!1877710 () Bool)

(assert (=> b!2986325 (=> res!1231596 e!1877710)))

(declare-fun e!1877712 () Bool)

(assert (=> b!2986325 (= res!1231596 e!1877712)))

(declare-fun res!1231600 () Bool)

(assert (=> b!2986325 (=> (not res!1231600) (not e!1877712))))

(assert (=> b!2986325 (= res!1231600 lt!1039397)))

(declare-fun b!2986326 () Bool)

(declare-fun res!1231597 () Bool)

(assert (=> b!2986326 (=> res!1231597 e!1877715)))

(assert (=> b!2986326 (= res!1231597 (not (isEmpty!19328 (tail!4887 (_2!20121 lt!1039343)))))))

(declare-fun b!2986327 () Bool)

(declare-fun res!1231599 () Bool)

(assert (=> b!2986327 (=> (not res!1231599) (not e!1877712))))

(assert (=> b!2986327 (= res!1231599 (not call!199670))))

(declare-fun b!2986328 () Bool)

(declare-fun res!1231594 () Bool)

(assert (=> b!2986328 (=> (not res!1231594) (not e!1877712))))

(assert (=> b!2986328 (= res!1231594 (isEmpty!19328 (tail!4887 (_2!20121 lt!1039343))))))

(declare-fun b!2986329 () Bool)

(declare-fun e!1877714 () Bool)

(assert (=> b!2986329 (= e!1877710 e!1877714)))

(declare-fun res!1231595 () Bool)

(assert (=> b!2986329 (=> (not res!1231595) (not e!1877714))))

(assert (=> b!2986329 (= res!1231595 (not lt!1039397))))

(declare-fun b!2986330 () Bool)

(declare-fun res!1231601 () Bool)

(assert (=> b!2986330 (=> res!1231601 e!1877710)))

(assert (=> b!2986330 (= res!1231601 (not (is-ElementMatch!9326 (regTwo!19164 r!17423))))))

(assert (=> b!2986330 (= e!1877711 e!1877710)))

(declare-fun b!2986331 () Bool)

(assert (=> b!2986331 (= e!1877713 (matchR!4208 (derivativeStep!2602 (regTwo!19164 r!17423) (head!6661 (_2!20121 lt!1039343))) (tail!4887 (_2!20121 lt!1039343))))))

(declare-fun b!2986332 () Bool)

(assert (=> b!2986332 (= e!1877712 (= (head!6661 (_2!20121 lt!1039343)) (c!490648 (regTwo!19164 r!17423))))))

(declare-fun b!2986333 () Bool)

(assert (=> b!2986333 (= e!1877714 e!1877715)))

(declare-fun res!1231598 () Bool)

(assert (=> b!2986333 (=> res!1231598 e!1877715)))

(assert (=> b!2986333 (= res!1231598 call!199670)))

(declare-fun b!2986334 () Bool)

(assert (=> b!2986334 (= e!1877716 (= lt!1039397 call!199670))))

(assert (= (and d!844107 c!490719) b!2986323))

(assert (= (and d!844107 (not c!490719)) b!2986331))

(assert (= (and d!844107 c!490720) b!2986334))

(assert (= (and d!844107 (not c!490720)) b!2986321))

(assert (= (and b!2986321 c!490721) b!2986322))

(assert (= (and b!2986321 (not c!490721)) b!2986330))

(assert (= (and b!2986330 (not res!1231601)) b!2986325))

(assert (= (and b!2986325 res!1231600) b!2986327))

(assert (= (and b!2986327 res!1231599) b!2986328))

(assert (= (and b!2986328 res!1231594) b!2986332))

(assert (= (and b!2986325 (not res!1231596)) b!2986329))

(assert (= (and b!2986329 res!1231595) b!2986333))

(assert (= (and b!2986333 (not res!1231598)) b!2986326))

(assert (= (and b!2986326 (not res!1231597)) b!2986324))

(assert (= (or b!2986334 b!2986327 b!2986333) bm!199665))

(declare-fun m!3344907 () Bool)

(assert (=> b!2986332 m!3344907))

(assert (=> b!2986331 m!3344907))

(assert (=> b!2986331 m!3344907))

(declare-fun m!3344909 () Bool)

(assert (=> b!2986331 m!3344909))

(declare-fun m!3344911 () Bool)

(assert (=> b!2986331 m!3344911))

(assert (=> b!2986331 m!3344909))

(assert (=> b!2986331 m!3344911))

(declare-fun m!3344913 () Bool)

(assert (=> b!2986331 m!3344913))

(declare-fun m!3344915 () Bool)

(assert (=> b!2986323 m!3344915))

(declare-fun m!3344917 () Bool)

(assert (=> d!844107 m!3344917))

(declare-fun m!3344919 () Bool)

(assert (=> d!844107 m!3344919))

(assert (=> b!2986324 m!3344907))

(assert (=> bm!199665 m!3344917))

(assert (=> b!2986328 m!3344911))

(assert (=> b!2986328 m!3344911))

(declare-fun m!3344921 () Bool)

(assert (=> b!2986328 m!3344921))

(assert (=> b!2986326 m!3344911))

(assert (=> b!2986326 m!3344911))

(assert (=> b!2986326 m!3344921))

(assert (=> b!2985968 d!844107))

(declare-fun e!1877721 () Bool)

(assert (=> b!2985962 (= tp!949950 e!1877721)))

(declare-fun b!2986351 () Bool)

(declare-fun tp!949985 () Bool)

(assert (=> b!2986351 (= e!1877721 tp!949985)))

(declare-fun b!2986350 () Bool)

(declare-fun tp!949986 () Bool)

(declare-fun tp!949984 () Bool)

(assert (=> b!2986350 (= e!1877721 (and tp!949986 tp!949984))))

(declare-fun b!2986349 () Bool)

(assert (=> b!2986349 (= e!1877721 tp_is_empty!16215)))

(declare-fun b!2986352 () Bool)

(declare-fun tp!949987 () Bool)

(declare-fun tp!949988 () Bool)

(assert (=> b!2986352 (= e!1877721 (and tp!949987 tp!949988))))

(assert (= (and b!2985962 (is-ElementMatch!9326 (reg!9655 r!17423))) b!2986349))

(assert (= (and b!2985962 (is-Concat!14647 (reg!9655 r!17423))) b!2986350))

(assert (= (and b!2985962 (is-Star!9326 (reg!9655 r!17423))) b!2986351))

(assert (= (and b!2985962 (is-Union!9326 (reg!9655 r!17423))) b!2986352))

(declare-fun b!2986357 () Bool)

(declare-fun e!1877724 () Bool)

(declare-fun tp!949991 () Bool)

(assert (=> b!2986357 (= e!1877724 (and tp_is_empty!16215 tp!949991))))

(assert (=> b!2985967 (= tp!949952 e!1877724)))

(assert (= (and b!2985967 (is-Cons!35067 (t!234256 s!11993))) b!2986357))

(declare-fun e!1877725 () Bool)

(assert (=> b!2985966 (= tp!949951 e!1877725)))

(declare-fun b!2986360 () Bool)

(declare-fun tp!949993 () Bool)

(assert (=> b!2986360 (= e!1877725 tp!949993)))

(declare-fun b!2986359 () Bool)

(declare-fun tp!949994 () Bool)

(declare-fun tp!949992 () Bool)

(assert (=> b!2986359 (= e!1877725 (and tp!949994 tp!949992))))

(declare-fun b!2986358 () Bool)

(assert (=> b!2986358 (= e!1877725 tp_is_empty!16215)))

(declare-fun b!2986361 () Bool)

(declare-fun tp!949995 () Bool)

(declare-fun tp!949996 () Bool)

(assert (=> b!2986361 (= e!1877725 (and tp!949995 tp!949996))))

(assert (= (and b!2985966 (is-ElementMatch!9326 (regOne!19165 r!17423))) b!2986358))

(assert (= (and b!2985966 (is-Concat!14647 (regOne!19165 r!17423))) b!2986359))

(assert (= (and b!2985966 (is-Star!9326 (regOne!19165 r!17423))) b!2986360))

(assert (= (and b!2985966 (is-Union!9326 (regOne!19165 r!17423))) b!2986361))

(declare-fun e!1877726 () Bool)

(assert (=> b!2985966 (= tp!949953 e!1877726)))

(declare-fun b!2986364 () Bool)

(declare-fun tp!949998 () Bool)

(assert (=> b!2986364 (= e!1877726 tp!949998)))

(declare-fun b!2986363 () Bool)

(declare-fun tp!949999 () Bool)

(declare-fun tp!949997 () Bool)

(assert (=> b!2986363 (= e!1877726 (and tp!949999 tp!949997))))

(declare-fun b!2986362 () Bool)

(assert (=> b!2986362 (= e!1877726 tp_is_empty!16215)))

(declare-fun b!2986365 () Bool)

(declare-fun tp!950000 () Bool)

(declare-fun tp!950001 () Bool)

(assert (=> b!2986365 (= e!1877726 (and tp!950000 tp!950001))))

(assert (= (and b!2985966 (is-ElementMatch!9326 (regTwo!19165 r!17423))) b!2986362))

(assert (= (and b!2985966 (is-Concat!14647 (regTwo!19165 r!17423))) b!2986363))

(assert (= (and b!2985966 (is-Star!9326 (regTwo!19165 r!17423))) b!2986364))

(assert (= (and b!2985966 (is-Union!9326 (regTwo!19165 r!17423))) b!2986365))

(declare-fun e!1877727 () Bool)

(assert (=> b!2985963 (= tp!949955 e!1877727)))

(declare-fun b!2986368 () Bool)

(declare-fun tp!950003 () Bool)

(assert (=> b!2986368 (= e!1877727 tp!950003)))

(declare-fun b!2986367 () Bool)

(declare-fun tp!950004 () Bool)

(declare-fun tp!950002 () Bool)

(assert (=> b!2986367 (= e!1877727 (and tp!950004 tp!950002))))

(declare-fun b!2986366 () Bool)

(assert (=> b!2986366 (= e!1877727 tp_is_empty!16215)))

(declare-fun b!2986369 () Bool)

(declare-fun tp!950005 () Bool)

(declare-fun tp!950006 () Bool)

(assert (=> b!2986369 (= e!1877727 (and tp!950005 tp!950006))))

(assert (= (and b!2985963 (is-ElementMatch!9326 (regOne!19164 r!17423))) b!2986366))

(assert (= (and b!2985963 (is-Concat!14647 (regOne!19164 r!17423))) b!2986367))

(assert (= (and b!2985963 (is-Star!9326 (regOne!19164 r!17423))) b!2986368))

(assert (= (and b!2985963 (is-Union!9326 (regOne!19164 r!17423))) b!2986369))

(declare-fun e!1877728 () Bool)

(assert (=> b!2985963 (= tp!949954 e!1877728)))

(declare-fun b!2986372 () Bool)

(declare-fun tp!950008 () Bool)

(assert (=> b!2986372 (= e!1877728 tp!950008)))

(declare-fun b!2986371 () Bool)

(declare-fun tp!950009 () Bool)

(declare-fun tp!950007 () Bool)

(assert (=> b!2986371 (= e!1877728 (and tp!950009 tp!950007))))

(declare-fun b!2986370 () Bool)

(assert (=> b!2986370 (= e!1877728 tp_is_empty!16215)))

(declare-fun b!2986373 () Bool)

(declare-fun tp!950010 () Bool)

(declare-fun tp!950011 () Bool)

(assert (=> b!2986373 (= e!1877728 (and tp!950010 tp!950011))))

(assert (= (and b!2985963 (is-ElementMatch!9326 (regTwo!19164 r!17423))) b!2986370))

(assert (= (and b!2985963 (is-Concat!14647 (regTwo!19164 r!17423))) b!2986371))

(assert (= (and b!2985963 (is-Star!9326 (regTwo!19164 r!17423))) b!2986372))

(assert (= (and b!2985963 (is-Union!9326 (regTwo!19164 r!17423))) b!2986373))

(push 1)

(assert (not b!2986350))

(assert (not b!2986156))

(assert (not b!2986352))

(assert (not b!2986367))

(assert (not d!844071))

(assert (not d!844107))

(assert (not b!2986313))

(assert (not b!2986239))

(assert (not b!2986326))

(assert (not b!2986332))

(assert (not b!2986331))

(assert (not bm!199639))

(assert (not b!2986311))

(assert (not b!2986244))

(assert (not b!2986153))

(assert (not bm!199640))

(assert (not b!2986359))

(assert (not b!2986360))

(assert (not b!2986237))

(assert (not b!2986324))

(assert (not b!2986245))

(assert (not bm!199658))

(assert (not b!2986151))

(assert (not b!2986309))

(assert (not b!2986369))

(assert (not b!2986328))

(assert (not d!844091))

(assert (not b!2986241))

(assert (not b!2986312))

(assert (not b!2986368))

(assert (not b!2986099))

(assert (not b!2986102))

(assert (not d!844089))

(assert (not b!2986149))

(assert (not bm!199661))

(assert (not bm!199665))

(assert (not b!2986148))

(assert (not b!2986315))

(assert (not b!2986236))

(assert (not d!844083))

(assert (not b!2986197))

(assert (not b!2986361))

(assert (not bm!199657))

(assert (not b!2986364))

(assert (not d!844085))

(assert (not d!844103))

(assert (not d!844081))

(assert (not b!2986365))

(assert (not b!2986372))

(assert (not b!2986157))

(assert (not d!844079))

(assert (not b!2986363))

(assert (not b!2986310))

(assert (not b!2986373))

(assert (not b!2986357))

(assert (not b!2986351))

(assert (not b!2986323))

(assert (not d!844073))

(assert (not bm!199647))

(assert tp_is_empty!16215)

(assert (not b!2986371))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

