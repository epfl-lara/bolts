; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!696154 () Bool)

(assert start!696154)

(declare-fun b!7141601 () Bool)

(assert (=> b!7141601 true))

(declare-fun bs!1888457 () Bool)

(declare-fun b!7141606 () Bool)

(assert (= bs!1888457 (and b!7141606 b!7141601)))

(declare-fun lambda!434807 () Int)

(declare-fun lambda!434806 () Int)

(assert (=> bs!1888457 (not (= lambda!434807 lambda!434806))))

(declare-fun b!7141600 () Bool)

(declare-fun res!2913916 () Bool)

(declare-fun e!4291886 () Bool)

(assert (=> b!7141600 (=> res!2913916 e!4291886)))

(declare-datatypes ((C!36610 0))(
  ( (C!36611 (val!28253 Int)) )
))
(declare-datatypes ((Regex!18168 0))(
  ( (ElementMatch!18168 (c!1331809 C!36610)) (Concat!27013 (regOne!36848 Regex!18168) (regTwo!36848 Regex!18168)) (EmptyExpr!18168) (Star!18168 (reg!18497 Regex!18168)) (EmptyLang!18168) (Union!18168 (regOne!36849 Regex!18168) (regTwo!36849 Regex!18168)) )
))
(declare-datatypes ((List!69414 0))(
  ( (Nil!69290) (Cons!69290 (h!75738 Regex!18168) (t!383431 List!69414)) )
))
(declare-fun lt!2567495 () List!69414)

(declare-fun lambda!434805 () Int)

(declare-fun exists!3960 (List!69414 Int) Bool)

(assert (=> b!7141600 (= res!2913916 (not (exists!3960 lt!2567495 lambda!434805)))))

(declare-fun e!4291887 () Bool)

(declare-fun e!4291889 () Bool)

(assert (=> b!7141601 (= e!4291887 e!4291889)))

(declare-fun res!2913914 () Bool)

(assert (=> b!7141601 (=> res!2913914 e!4291889)))

(declare-datatypes ((Context!14324 0))(
  ( (Context!14325 (exprs!7662 List!69414)) )
))
(declare-fun z!3189 () (Set Context!14324))

(declare-fun exists!3961 ((Set Context!14324) Int) Bool)

(assert (=> b!7141601 (= res!2913914 (not (exists!3961 z!3189 lambda!434806)))))

(declare-datatypes ((List!69415 0))(
  ( (Nil!69291) (Cons!69291 (h!75739 Context!14324) (t!383432 List!69415)) )
))
(declare-fun lt!2567494 () List!69415)

(declare-fun exists!3962 (List!69415 Int) Bool)

(assert (=> b!7141601 (exists!3962 lt!2567494 lambda!434806)))

(declare-datatypes ((Unit!163203 0))(
  ( (Unit!163204) )
))
(declare-fun lt!2567492 () Unit!163203)

(declare-fun lt!2567501 () Regex!18168)

(declare-fun lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!27 (List!69415 Regex!18168) Unit!163203)

(assert (=> b!7141601 (= lt!2567492 (lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!27 lt!2567494 lt!2567501))))

(declare-fun b!7141602 () Bool)

(declare-fun e!4291880 () Bool)

(declare-fun e!4291883 () Bool)

(assert (=> b!7141602 (= e!4291880 e!4291883)))

(declare-fun res!2913910 () Bool)

(assert (=> b!7141602 (=> (not res!2913910) (not e!4291883))))

(declare-fun r!11483 () Regex!18168)

(declare-fun unfocusZipper!2516 (List!69415) Regex!18168)

(assert (=> b!7141602 (= res!2913910 (= r!11483 (unfocusZipper!2516 lt!2567494)))))

(declare-fun toList!11199 ((Set Context!14324)) List!69415)

(assert (=> b!7141602 (= lt!2567494 (toList!11199 z!3189))))

(declare-fun b!7141603 () Bool)

(declare-fun e!4291881 () Bool)

(assert (=> b!7141603 (= e!4291889 e!4291881)))

(declare-fun res!2913918 () Bool)

(assert (=> b!7141603 (=> res!2913918 e!4291881)))

(declare-fun lt!2567493 () Context!14324)

(assert (=> b!7141603 (= res!2913918 (not (set.member lt!2567493 z!3189)))))

(declare-fun getWitness!1941 ((Set Context!14324) Int) Context!14324)

(assert (=> b!7141603 (= lt!2567493 (getWitness!1941 z!3189 lambda!434806))))

(declare-fun b!7141604 () Bool)

(declare-fun e!4291884 () Bool)

(declare-fun tp_is_empty!45973 () Bool)

(assert (=> b!7141604 (= e!4291884 tp_is_empty!45973)))

(declare-fun b!7141605 () Bool)

(declare-fun res!2913915 () Bool)

(assert (=> b!7141605 (=> res!2913915 e!4291887)))

(declare-fun contains!20608 (List!69414 Regex!18168) Bool)

(assert (=> b!7141605 (= res!2913915 (not (contains!20608 lt!2567495 lt!2567501)))))

(declare-fun e!4291879 () Bool)

(declare-fun nullableZipper!2771 ((Set Context!14324)) Bool)

(assert (=> b!7141606 (= e!4291879 (nullableZipper!2771 z!3189))))

(assert (=> b!7141606 (exists!3961 z!3189 lambda!434807)))

(declare-fun lt!2567498 () Unit!163203)

(declare-fun lemmaContainsThenExists!196 ((Set Context!14324) Context!14324 Int) Unit!163203)

(assert (=> b!7141606 (= lt!2567498 (lemmaContainsThenExists!196 z!3189 lt!2567493 lambda!434807))))

(declare-fun res!2913913 () Bool)

(assert (=> start!696154 (=> (not res!2913913) (not e!4291880))))

(declare-fun validRegex!9335 (Regex!18168) Bool)

(assert (=> start!696154 (= res!2913913 (validRegex!9335 r!11483))))

(assert (=> start!696154 e!4291880))

(assert (=> start!696154 e!4291884))

(declare-fun condSetEmpty!52564 () Bool)

(assert (=> start!696154 (= condSetEmpty!52564 (= z!3189 (as set.empty (Set Context!14324))))))

(declare-fun setRes!52564 () Bool)

(assert (=> start!696154 setRes!52564))

(declare-fun setIsEmpty!52564 () Bool)

(assert (=> setIsEmpty!52564 setRes!52564))

(declare-fun b!7141607 () Bool)

(declare-fun tp!1969620 () Bool)

(declare-fun tp!1969618 () Bool)

(assert (=> b!7141607 (= e!4291884 (and tp!1969620 tp!1969618))))

(declare-fun b!7141608 () Bool)

(declare-fun e!4291885 () Bool)

(assert (=> b!7141608 (= e!4291885 e!4291879)))

(declare-fun res!2913911 () Bool)

(assert (=> b!7141608 (=> res!2913911 e!4291879)))

(declare-fun nullableContext!149 (Context!14324) Bool)

(assert (=> b!7141608 (= res!2913911 (not (nullableContext!149 lt!2567493)))))

(declare-fun forall!17008 (List!69414 Int) Bool)

(assert (=> b!7141608 (forall!17008 (exprs!7662 lt!2567493) lambda!434805)))

(declare-fun lt!2567497 () Unit!163203)

(declare-fun nullableGenConcatSpec!11 (Regex!18168 List!69414) Unit!163203)

(assert (=> b!7141608 (= lt!2567497 (nullableGenConcatSpec!11 lt!2567501 (exprs!7662 lt!2567493)))))

(declare-fun b!7141609 () Bool)

(declare-fun e!4291888 () Bool)

(assert (=> b!7141609 (= e!4291888 (not e!4291886))))

(declare-fun res!2913917 () Bool)

(assert (=> b!7141609 (=> res!2913917 e!4291886)))

(declare-fun lt!2567491 () Bool)

(assert (=> b!7141609 (= res!2913917 (not (= lt!2567491 (exists!3960 lt!2567495 lambda!434805))))))

(assert (=> b!7141609 (= lt!2567491 (exists!3960 lt!2567495 lambda!434805))))

(declare-fun lt!2567499 () Regex!18168)

(declare-fun nullable!7687 (Regex!18168) Bool)

(assert (=> b!7141609 (= lt!2567491 (nullable!7687 lt!2567499))))

(declare-fun lt!2567500 () Unit!163203)

(declare-fun nullableGenUnionSpec!55 (Regex!18168 List!69414) Unit!163203)

(assert (=> b!7141609 (= lt!2567500 (nullableGenUnionSpec!55 lt!2567499 lt!2567495))))

(declare-fun b!7141610 () Bool)

(declare-fun res!2913908 () Bool)

(assert (=> b!7141610 (=> res!2913908 e!4291886)))

(assert (=> b!7141610 (= res!2913908 (not lt!2567491))))

(declare-fun b!7141611 () Bool)

(declare-fun res!2913909 () Bool)

(assert (=> b!7141611 (=> res!2913909 e!4291885)))

(declare-fun lt!2567496 () Regex!18168)

(assert (=> b!7141611 (= res!2913909 (not (nullable!7687 lt!2567496)))))

(declare-fun b!7141612 () Bool)

(assert (=> b!7141612 (= e!4291883 e!4291888)))

(declare-fun res!2913907 () Bool)

(assert (=> b!7141612 (=> (not res!2913907) (not e!4291888))))

(assert (=> b!7141612 (= res!2913907 (= r!11483 lt!2567499))))

(declare-fun generalisedUnion!2673 (List!69414) Regex!18168)

(assert (=> b!7141612 (= lt!2567499 (generalisedUnion!2673 lt!2567495))))

(declare-fun unfocusZipperList!2209 (List!69415) List!69414)

(assert (=> b!7141612 (= lt!2567495 (unfocusZipperList!2209 lt!2567494))))

(declare-fun b!7141613 () Bool)

(declare-fun tp!1969616 () Bool)

(assert (=> b!7141613 (= e!4291884 tp!1969616)))

(declare-fun b!7141614 () Bool)

(assert (=> b!7141614 (= e!4291881 e!4291885)))

(declare-fun res!2913912 () Bool)

(assert (=> b!7141614 (=> res!2913912 e!4291885)))

(assert (=> b!7141614 (= res!2913912 (not (= lt!2567496 lt!2567501)))))

(declare-fun generalisedConcat!2352 (List!69414) Regex!18168)

(assert (=> b!7141614 (= lt!2567496 (generalisedConcat!2352 (exprs!7662 lt!2567493)))))

(declare-fun b!7141615 () Bool)

(declare-fun tp!1969615 () Bool)

(declare-fun tp!1969614 () Bool)

(assert (=> b!7141615 (= e!4291884 (and tp!1969615 tp!1969614))))

(declare-fun b!7141616 () Bool)

(declare-fun e!4291882 () Bool)

(declare-fun tp!1969617 () Bool)

(assert (=> b!7141616 (= e!4291882 tp!1969617)))

(declare-fun b!7141617 () Bool)

(assert (=> b!7141617 (= e!4291886 e!4291887)))

(declare-fun res!2913906 () Bool)

(assert (=> b!7141617 (=> res!2913906 e!4291887)))

(assert (=> b!7141617 (= res!2913906 (not (nullable!7687 lt!2567501)))))

(declare-fun getWitness!1942 (List!69414 Int) Regex!18168)

(assert (=> b!7141617 (= lt!2567501 (getWitness!1942 lt!2567495 lambda!434805))))

(declare-fun setElem!52564 () Context!14324)

(declare-fun setNonEmpty!52564 () Bool)

(declare-fun tp!1969619 () Bool)

(declare-fun inv!88485 (Context!14324) Bool)

(assert (=> setNonEmpty!52564 (= setRes!52564 (and tp!1969619 (inv!88485 setElem!52564) e!4291882))))

(declare-fun setRest!52564 () (Set Context!14324))

(assert (=> setNonEmpty!52564 (= z!3189 (set.union (set.insert setElem!52564 (as set.empty (Set Context!14324))) setRest!52564))))

(assert (= (and start!696154 res!2913913) b!7141602))

(assert (= (and b!7141602 res!2913910) b!7141612))

(assert (= (and b!7141612 res!2913907) b!7141609))

(assert (= (and b!7141609 (not res!2913917)) b!7141610))

(assert (= (and b!7141610 (not res!2913908)) b!7141600))

(assert (= (and b!7141600 (not res!2913916)) b!7141617))

(assert (= (and b!7141617 (not res!2913906)) b!7141605))

(assert (= (and b!7141605 (not res!2913915)) b!7141601))

(assert (= (and b!7141601 (not res!2913914)) b!7141603))

(assert (= (and b!7141603 (not res!2913918)) b!7141614))

(assert (= (and b!7141614 (not res!2913912)) b!7141611))

(assert (= (and b!7141611 (not res!2913909)) b!7141608))

(assert (= (and b!7141608 (not res!2913911)) b!7141606))

(assert (= (and start!696154 (is-ElementMatch!18168 r!11483)) b!7141604))

(assert (= (and start!696154 (is-Concat!27013 r!11483)) b!7141615))

(assert (= (and start!696154 (is-Star!18168 r!11483)) b!7141613))

(assert (= (and start!696154 (is-Union!18168 r!11483)) b!7141607))

(assert (= (and start!696154 condSetEmpty!52564) setIsEmpty!52564))

(assert (= (and start!696154 (not condSetEmpty!52564)) setNonEmpty!52564))

(assert (= setNonEmpty!52564 b!7141616))

(declare-fun m!7856158 () Bool)

(assert (=> b!7141603 m!7856158))

(declare-fun m!7856160 () Bool)

(assert (=> b!7141603 m!7856160))

(declare-fun m!7856162 () Bool)

(assert (=> b!7141606 m!7856162))

(declare-fun m!7856164 () Bool)

(assert (=> b!7141606 m!7856164))

(declare-fun m!7856166 () Bool)

(assert (=> b!7141606 m!7856166))

(declare-fun m!7856168 () Bool)

(assert (=> b!7141600 m!7856168))

(declare-fun m!7856170 () Bool)

(assert (=> b!7141605 m!7856170))

(declare-fun m!7856172 () Bool)

(assert (=> b!7141617 m!7856172))

(declare-fun m!7856174 () Bool)

(assert (=> b!7141617 m!7856174))

(declare-fun m!7856176 () Bool)

(assert (=> b!7141608 m!7856176))

(declare-fun m!7856178 () Bool)

(assert (=> b!7141608 m!7856178))

(declare-fun m!7856180 () Bool)

(assert (=> b!7141608 m!7856180))

(assert (=> b!7141609 m!7856168))

(assert (=> b!7141609 m!7856168))

(declare-fun m!7856182 () Bool)

(assert (=> b!7141609 m!7856182))

(declare-fun m!7856184 () Bool)

(assert (=> b!7141609 m!7856184))

(declare-fun m!7856186 () Bool)

(assert (=> setNonEmpty!52564 m!7856186))

(declare-fun m!7856188 () Bool)

(assert (=> b!7141612 m!7856188))

(declare-fun m!7856190 () Bool)

(assert (=> b!7141612 m!7856190))

(declare-fun m!7856192 () Bool)

(assert (=> b!7141611 m!7856192))

(declare-fun m!7856194 () Bool)

(assert (=> b!7141602 m!7856194))

(declare-fun m!7856196 () Bool)

(assert (=> b!7141602 m!7856196))

(declare-fun m!7856198 () Bool)

(assert (=> start!696154 m!7856198))

(declare-fun m!7856200 () Bool)

(assert (=> b!7141601 m!7856200))

(declare-fun m!7856202 () Bool)

(assert (=> b!7141601 m!7856202))

(declare-fun m!7856204 () Bool)

(assert (=> b!7141601 m!7856204))

(declare-fun m!7856206 () Bool)

(assert (=> b!7141614 m!7856206))

(push 1)

(assert (not b!7141605))

(assert (not b!7141607))

(assert (not b!7141612))

(assert (not b!7141616))

(assert (not b!7141609))

(assert (not b!7141603))

(assert (not setNonEmpty!52564))

(assert (not b!7141602))

(assert (not b!7141613))

(assert (not b!7141615))

(assert (not b!7141600))

(assert (not b!7141614))

(assert (not b!7141617))

(assert (not start!696154))

(assert (not b!7141601))

(assert (not b!7141611))

(assert (not b!7141608))

(assert (not b!7141606))

(assert tp_is_empty!45973)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2227449 () Bool)

(declare-fun e!4291931 () Bool)

(assert (=> d!2227449 e!4291931))

(declare-fun res!2913966 () Bool)

(assert (=> d!2227449 (=> (not res!2913966) (not e!4291931))))

(declare-fun lt!2567540 () Context!14324)

(declare-fun dynLambda!28210 (Int Context!14324) Bool)

(assert (=> d!2227449 (= res!2913966 (dynLambda!28210 lambda!434806 lt!2567540))))

(declare-fun getWitness!1945 (List!69415 Int) Context!14324)

(assert (=> d!2227449 (= lt!2567540 (getWitness!1945 (toList!11199 z!3189) lambda!434806))))

(assert (=> d!2227449 (exists!3961 z!3189 lambda!434806)))

(assert (=> d!2227449 (= (getWitness!1941 z!3189 lambda!434806) lt!2567540)))

(declare-fun b!7141684 () Bool)

(assert (=> b!7141684 (= e!4291931 (set.member lt!2567540 z!3189))))

(assert (= (and d!2227449 res!2913966) b!7141684))

(declare-fun b_lambda!272607 () Bool)

(assert (=> (not b_lambda!272607) (not d!2227449)))

(declare-fun m!7856266 () Bool)

(assert (=> d!2227449 m!7856266))

(assert (=> d!2227449 m!7856196))

(assert (=> d!2227449 m!7856196))

(declare-fun m!7856270 () Bool)

(assert (=> d!2227449 m!7856270))

(assert (=> d!2227449 m!7856200))

(declare-fun m!7856274 () Bool)

(assert (=> b!7141684 m!7856274))

(assert (=> b!7141603 d!2227449))

(declare-fun d!2227451 () Bool)

(declare-fun lt!2567543 () Bool)

(declare-fun content!14205 (List!69414) (Set Regex!18168))

(assert (=> d!2227451 (= lt!2567543 (set.member lt!2567501 (content!14205 lt!2567495)))))

(declare-fun e!4291936 () Bool)

(assert (=> d!2227451 (= lt!2567543 e!4291936)))

(declare-fun res!2913971 () Bool)

(assert (=> d!2227451 (=> (not res!2913971) (not e!4291936))))

(assert (=> d!2227451 (= res!2913971 (is-Cons!69290 lt!2567495))))

(assert (=> d!2227451 (= (contains!20608 lt!2567495 lt!2567501) lt!2567543)))

(declare-fun b!7141689 () Bool)

(declare-fun e!4291937 () Bool)

(assert (=> b!7141689 (= e!4291936 e!4291937)))

(declare-fun res!2913972 () Bool)

(assert (=> b!7141689 (=> res!2913972 e!4291937)))

(assert (=> b!7141689 (= res!2913972 (= (h!75738 lt!2567495) lt!2567501))))

(declare-fun b!7141690 () Bool)

(assert (=> b!7141690 (= e!4291937 (contains!20608 (t!383431 lt!2567495) lt!2567501))))

(assert (= (and d!2227451 res!2913971) b!7141689))

(assert (= (and b!7141689 (not res!2913972)) b!7141690))

(declare-fun m!7856276 () Bool)

(assert (=> d!2227451 m!7856276))

(declare-fun m!7856278 () Bool)

(assert (=> d!2227451 m!7856278))

(declare-fun m!7856280 () Bool)

(assert (=> b!7141690 m!7856280))

(assert (=> b!7141605 d!2227451))

(declare-fun bs!1888464 () Bool)

(declare-fun d!2227455 () Bool)

(assert (= bs!1888464 (and d!2227455 b!7141609)))

(declare-fun lambda!434840 () Int)

(assert (=> bs!1888464 (not (= lambda!434840 lambda!434805))))

(declare-fun b!7141714 () Bool)

(declare-fun e!4291953 () Bool)

(declare-fun isEmpty!40069 (List!69414) Bool)

(assert (=> b!7141714 (= e!4291953 (isEmpty!40069 (t!383431 (exprs!7662 lt!2567493))))))

(declare-fun b!7141715 () Bool)

(declare-fun e!4291958 () Regex!18168)

(assert (=> b!7141715 (= e!4291958 EmptyExpr!18168)))

(declare-fun b!7141716 () Bool)

(declare-fun e!4291954 () Bool)

(declare-fun lt!2567549 () Regex!18168)

(declare-fun isEmptyExpr!2038 (Regex!18168) Bool)

(assert (=> b!7141716 (= e!4291954 (isEmptyExpr!2038 lt!2567549))))

(declare-fun b!7141717 () Bool)

(declare-fun e!4291955 () Regex!18168)

(assert (=> b!7141717 (= e!4291955 (h!75738 (exprs!7662 lt!2567493)))))

(declare-fun b!7141718 () Bool)

(declare-fun e!4291957 () Bool)

(declare-fun head!14510 (List!69414) Regex!18168)

(assert (=> b!7141718 (= e!4291957 (= lt!2567549 (head!14510 (exprs!7662 lt!2567493))))))

(declare-fun b!7141719 () Bool)

(declare-fun e!4291956 () Bool)

(assert (=> b!7141719 (= e!4291956 e!4291954)))

(declare-fun c!1331828 () Bool)

(assert (=> b!7141719 (= c!1331828 (isEmpty!40069 (exprs!7662 lt!2567493)))))

(declare-fun b!7141720 () Bool)

(assert (=> b!7141720 (= e!4291954 e!4291957)))

(declare-fun c!1331829 () Bool)

(declare-fun tail!13980 (List!69414) List!69414)

(assert (=> b!7141720 (= c!1331829 (isEmpty!40069 (tail!13980 (exprs!7662 lt!2567493))))))

(declare-fun b!7141722 () Bool)

(declare-fun isConcat!1561 (Regex!18168) Bool)

(assert (=> b!7141722 (= e!4291957 (isConcat!1561 lt!2567549))))

(declare-fun b!7141723 () Bool)

(assert (=> b!7141723 (= e!4291958 (Concat!27013 (h!75738 (exprs!7662 lt!2567493)) (generalisedConcat!2352 (t!383431 (exprs!7662 lt!2567493)))))))

(declare-fun b!7141721 () Bool)

(assert (=> b!7141721 (= e!4291955 e!4291958)))

(declare-fun c!1331826 () Bool)

(assert (=> b!7141721 (= c!1331826 (is-Cons!69290 (exprs!7662 lt!2567493)))))

(assert (=> d!2227455 e!4291956))

(declare-fun res!2913980 () Bool)

(assert (=> d!2227455 (=> (not res!2913980) (not e!4291956))))

(assert (=> d!2227455 (= res!2913980 (validRegex!9335 lt!2567549))))

(assert (=> d!2227455 (= lt!2567549 e!4291955)))

(declare-fun c!1331827 () Bool)

(assert (=> d!2227455 (= c!1331827 e!4291953)))

(declare-fun res!2913981 () Bool)

(assert (=> d!2227455 (=> (not res!2913981) (not e!4291953))))

(assert (=> d!2227455 (= res!2913981 (is-Cons!69290 (exprs!7662 lt!2567493)))))

(assert (=> d!2227455 (forall!17008 (exprs!7662 lt!2567493) lambda!434840)))

(assert (=> d!2227455 (= (generalisedConcat!2352 (exprs!7662 lt!2567493)) lt!2567549)))

(assert (= (and d!2227455 res!2913981) b!7141714))

(assert (= (and d!2227455 c!1331827) b!7141717))

(assert (= (and d!2227455 (not c!1331827)) b!7141721))

(assert (= (and b!7141721 c!1331826) b!7141723))

(assert (= (and b!7141721 (not c!1331826)) b!7141715))

(assert (= (and d!2227455 res!2913980) b!7141719))

(assert (= (and b!7141719 c!1331828) b!7141716))

(assert (= (and b!7141719 (not c!1331828)) b!7141720))

(assert (= (and b!7141720 c!1331829) b!7141718))

(assert (= (and b!7141720 (not c!1331829)) b!7141722))

(declare-fun m!7856288 () Bool)

(assert (=> b!7141720 m!7856288))

(assert (=> b!7141720 m!7856288))

(declare-fun m!7856290 () Bool)

(assert (=> b!7141720 m!7856290))

(declare-fun m!7856292 () Bool)

(assert (=> b!7141716 m!7856292))

(declare-fun m!7856294 () Bool)

(assert (=> b!7141723 m!7856294))

(declare-fun m!7856296 () Bool)

(assert (=> b!7141718 m!7856296))

(declare-fun m!7856298 () Bool)

(assert (=> b!7141719 m!7856298))

(declare-fun m!7856300 () Bool)

(assert (=> b!7141722 m!7856300))

(declare-fun m!7856302 () Bool)

(assert (=> b!7141714 m!7856302))

(declare-fun m!7856304 () Bool)

(assert (=> d!2227455 m!7856304))

(declare-fun m!7856306 () Bool)

(assert (=> d!2227455 m!7856306))

(assert (=> b!7141614 d!2227455))

(declare-fun d!2227459 () Bool)

(declare-fun nullableFct!2991 (Regex!18168) Bool)

(assert (=> d!2227459 (= (nullable!7687 lt!2567496) (nullableFct!2991 lt!2567496))))

(declare-fun bs!1888465 () Bool)

(assert (= bs!1888465 d!2227459))

(declare-fun m!7856308 () Bool)

(assert (=> bs!1888465 m!7856308))

(assert (=> b!7141611 d!2227459))

(declare-fun d!2227461 () Bool)

(declare-fun lt!2567552 () Bool)

(assert (=> d!2227461 (= lt!2567552 (exists!3962 (toList!11199 z!3189) lambda!434806))))

(declare-fun choose!55238 ((Set Context!14324) Int) Bool)

(assert (=> d!2227461 (= lt!2567552 (choose!55238 z!3189 lambda!434806))))

(assert (=> d!2227461 (= (exists!3961 z!3189 lambda!434806) lt!2567552)))

(declare-fun bs!1888466 () Bool)

(assert (= bs!1888466 d!2227461))

(assert (=> bs!1888466 m!7856196))

(assert (=> bs!1888466 m!7856196))

(declare-fun m!7856310 () Bool)

(assert (=> bs!1888466 m!7856310))

(declare-fun m!7856312 () Bool)

(assert (=> bs!1888466 m!7856312))

(assert (=> b!7141601 d!2227461))

(declare-fun bs!1888467 () Bool)

(declare-fun d!2227463 () Bool)

(assert (= bs!1888467 (and d!2227463 b!7141601)))

(declare-fun lambda!434843 () Int)

(assert (=> bs!1888467 (not (= lambda!434843 lambda!434806))))

(declare-fun bs!1888468 () Bool)

(assert (= bs!1888468 (and d!2227463 b!7141606)))

(assert (=> bs!1888468 (not (= lambda!434843 lambda!434807))))

(assert (=> d!2227463 true))

(declare-fun order!28571 () Int)

(declare-fun dynLambda!28211 (Int Int) Int)

(assert (=> d!2227463 (< (dynLambda!28211 order!28571 lambda!434806) (dynLambda!28211 order!28571 lambda!434843))))

(declare-fun forall!17010 (List!69415 Int) Bool)

(assert (=> d!2227463 (= (exists!3962 lt!2567494 lambda!434806) (not (forall!17010 lt!2567494 lambda!434843)))))

(declare-fun bs!1888469 () Bool)

(assert (= bs!1888469 d!2227463))

(declare-fun m!7856314 () Bool)

(assert (=> bs!1888469 m!7856314))

(assert (=> b!7141601 d!2227463))

(declare-fun bs!1888470 () Bool)

(declare-fun d!2227465 () Bool)

(assert (= bs!1888470 (and d!2227465 b!7141601)))

(declare-fun lambda!434848 () Int)

(assert (=> bs!1888470 (= lambda!434848 lambda!434806)))

(declare-fun bs!1888471 () Bool)

(assert (= bs!1888471 (and d!2227465 b!7141606)))

(assert (=> bs!1888471 (not (= lambda!434848 lambda!434807))))

(declare-fun bs!1888472 () Bool)

(assert (= bs!1888472 (and d!2227465 d!2227463)))

(assert (=> bs!1888472 (not (= lambda!434848 lambda!434843))))

(assert (=> d!2227465 true))

(assert (=> d!2227465 (exists!3962 lt!2567494 lambda!434848)))

(declare-fun lt!2567557 () Unit!163203)

(declare-fun choose!55239 (List!69415 Regex!18168) Unit!163203)

(assert (=> d!2227465 (= lt!2567557 (choose!55239 lt!2567494 lt!2567501))))

(assert (=> d!2227465 (contains!20608 (unfocusZipperList!2209 lt!2567494) lt!2567501)))

(assert (=> d!2227465 (= (lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!27 lt!2567494 lt!2567501) lt!2567557)))

(declare-fun bs!1888473 () Bool)

(assert (= bs!1888473 d!2227465))

(declare-fun m!7856316 () Bool)

(assert (=> bs!1888473 m!7856316))

(declare-fun m!7856318 () Bool)

(assert (=> bs!1888473 m!7856318))

(assert (=> bs!1888473 m!7856190))

(assert (=> bs!1888473 m!7856190))

(declare-fun m!7856320 () Bool)

(assert (=> bs!1888473 m!7856320))

(assert (=> b!7141601 d!2227465))

(declare-fun bs!1888477 () Bool)

(declare-fun d!2227467 () Bool)

(assert (= bs!1888477 (and d!2227467 b!7141609)))

(declare-fun lambda!434852 () Int)

(assert (=> bs!1888477 (not (= lambda!434852 lambda!434805))))

(declare-fun bs!1888478 () Bool)

(assert (= bs!1888478 (and d!2227467 d!2227455)))

(assert (=> bs!1888478 (= lambda!434852 lambda!434840)))

(declare-fun b!7141776 () Bool)

(declare-fun e!4291993 () Bool)

(declare-fun lt!2567561 () Regex!18168)

(declare-fun isUnion!1528 (Regex!18168) Bool)

(assert (=> b!7141776 (= e!4291993 (isUnion!1528 lt!2567561))))

(declare-fun b!7141777 () Bool)

(declare-fun e!4291994 () Regex!18168)

(declare-fun e!4291989 () Regex!18168)

(assert (=> b!7141777 (= e!4291994 e!4291989)))

(declare-fun c!1331853 () Bool)

(assert (=> b!7141777 (= c!1331853 (is-Cons!69290 lt!2567495))))

(declare-fun b!7141778 () Bool)

(declare-fun e!4291992 () Bool)

(declare-fun isEmptyLang!2101 (Regex!18168) Bool)

(assert (=> b!7141778 (= e!4291992 (isEmptyLang!2101 lt!2567561))))

(declare-fun b!7141779 () Bool)

(declare-fun e!4291990 () Bool)

(assert (=> b!7141779 (= e!4291990 e!4291992)))

(declare-fun c!1331854 () Bool)

(assert (=> b!7141779 (= c!1331854 (isEmpty!40069 lt!2567495))))

(declare-fun b!7141780 () Bool)

(declare-fun e!4291991 () Bool)

(assert (=> b!7141780 (= e!4291991 (isEmpty!40069 (t!383431 lt!2567495)))))

(declare-fun b!7141782 () Bool)

(assert (=> b!7141782 (= e!4291992 e!4291993)))

(declare-fun c!1331855 () Bool)

(assert (=> b!7141782 (= c!1331855 (isEmpty!40069 (tail!13980 lt!2567495)))))

(declare-fun b!7141783 () Bool)

(assert (=> b!7141783 (= e!4291993 (= lt!2567561 (head!14510 lt!2567495)))))

(declare-fun b!7141784 () Bool)

(assert (=> b!7141784 (= e!4291994 (h!75738 lt!2567495))))

(declare-fun b!7141785 () Bool)

(assert (=> b!7141785 (= e!4291989 (Union!18168 (h!75738 lt!2567495) (generalisedUnion!2673 (t!383431 lt!2567495))))))

(assert (=> d!2227467 e!4291990))

(declare-fun res!2913992 () Bool)

(assert (=> d!2227467 (=> (not res!2913992) (not e!4291990))))

(assert (=> d!2227467 (= res!2913992 (validRegex!9335 lt!2567561))))

(assert (=> d!2227467 (= lt!2567561 e!4291994)))

(declare-fun c!1331852 () Bool)

(assert (=> d!2227467 (= c!1331852 e!4291991)))

(declare-fun res!2913993 () Bool)

(assert (=> d!2227467 (=> (not res!2913993) (not e!4291991))))

(assert (=> d!2227467 (= res!2913993 (is-Cons!69290 lt!2567495))))

(assert (=> d!2227467 (forall!17008 lt!2567495 lambda!434852)))

(assert (=> d!2227467 (= (generalisedUnion!2673 lt!2567495) lt!2567561)))

(declare-fun b!7141781 () Bool)

(assert (=> b!7141781 (= e!4291989 EmptyLang!18168)))

(assert (= (and d!2227467 res!2913993) b!7141780))

(assert (= (and d!2227467 c!1331852) b!7141784))

(assert (= (and d!2227467 (not c!1331852)) b!7141777))

(assert (= (and b!7141777 c!1331853) b!7141785))

(assert (= (and b!7141777 (not c!1331853)) b!7141781))

(assert (= (and d!2227467 res!2913992) b!7141779))

(assert (= (and b!7141779 c!1331854) b!7141778))

(assert (= (and b!7141779 (not c!1331854)) b!7141782))

(assert (= (and b!7141782 c!1331855) b!7141783))

(assert (= (and b!7141782 (not c!1331855)) b!7141776))

(declare-fun m!7856322 () Bool)

(assert (=> b!7141778 m!7856322))

(declare-fun m!7856324 () Bool)

(assert (=> b!7141785 m!7856324))

(declare-fun m!7856326 () Bool)

(assert (=> b!7141780 m!7856326))

(declare-fun m!7856328 () Bool)

(assert (=> d!2227467 m!7856328))

(declare-fun m!7856330 () Bool)

(assert (=> d!2227467 m!7856330))

(declare-fun m!7856332 () Bool)

(assert (=> b!7141779 m!7856332))

(declare-fun m!7856334 () Bool)

(assert (=> b!7141776 m!7856334))

(declare-fun m!7856336 () Bool)

(assert (=> b!7141782 m!7856336))

(assert (=> b!7141782 m!7856336))

(declare-fun m!7856338 () Bool)

(assert (=> b!7141782 m!7856338))

(declare-fun m!7856340 () Bool)

(assert (=> b!7141783 m!7856340))

(assert (=> b!7141612 d!2227467))

(declare-fun bs!1888479 () Bool)

(declare-fun d!2227469 () Bool)

(assert (= bs!1888479 (and d!2227469 b!7141609)))

(declare-fun lambda!434855 () Int)

(assert (=> bs!1888479 (not (= lambda!434855 lambda!434805))))

(declare-fun bs!1888480 () Bool)

(assert (= bs!1888480 (and d!2227469 d!2227455)))

(assert (=> bs!1888480 (= lambda!434855 lambda!434840)))

(declare-fun bs!1888481 () Bool)

(assert (= bs!1888481 (and d!2227469 d!2227467)))

(assert (=> bs!1888481 (= lambda!434855 lambda!434852)))

(declare-fun lt!2567564 () List!69414)

(assert (=> d!2227469 (forall!17008 lt!2567564 lambda!434855)))

(declare-fun e!4291997 () List!69414)

(assert (=> d!2227469 (= lt!2567564 e!4291997)))

(declare-fun c!1331858 () Bool)

(assert (=> d!2227469 (= c!1331858 (is-Cons!69291 lt!2567494))))

(assert (=> d!2227469 (= (unfocusZipperList!2209 lt!2567494) lt!2567564)))

(declare-fun b!7141790 () Bool)

(assert (=> b!7141790 (= e!4291997 (Cons!69290 (generalisedConcat!2352 (exprs!7662 (h!75739 lt!2567494))) (unfocusZipperList!2209 (t!383432 lt!2567494))))))

(declare-fun b!7141791 () Bool)

(assert (=> b!7141791 (= e!4291997 Nil!69290)))

(assert (= (and d!2227469 c!1331858) b!7141790))

(assert (= (and d!2227469 (not c!1331858)) b!7141791))

(declare-fun m!7856362 () Bool)

(assert (=> d!2227469 m!7856362))

(declare-fun m!7856364 () Bool)

(assert (=> b!7141790 m!7856364))

(declare-fun m!7856366 () Bool)

(assert (=> b!7141790 m!7856366))

(assert (=> b!7141612 d!2227469))

(declare-fun d!2227473 () Bool)

(declare-fun lt!2567569 () Regex!18168)

(assert (=> d!2227473 (validRegex!9335 lt!2567569)))

(assert (=> d!2227473 (= lt!2567569 (generalisedUnion!2673 (unfocusZipperList!2209 lt!2567494)))))

(assert (=> d!2227473 (= (unfocusZipper!2516 lt!2567494) lt!2567569)))

(declare-fun bs!1888482 () Bool)

(assert (= bs!1888482 d!2227473))

(declare-fun m!7856368 () Bool)

(assert (=> bs!1888482 m!7856368))

(assert (=> bs!1888482 m!7856190))

(assert (=> bs!1888482 m!7856190))

(declare-fun m!7856370 () Bool)

(assert (=> bs!1888482 m!7856370))

(assert (=> b!7141602 d!2227473))

(declare-fun d!2227475 () Bool)

(declare-fun e!4292002 () Bool)

(assert (=> d!2227475 e!4292002))

(declare-fun res!2913996 () Bool)

(assert (=> d!2227475 (=> (not res!2913996) (not e!4292002))))

(declare-fun lt!2567572 () List!69415)

(declare-fun noDuplicate!2831 (List!69415) Bool)

(assert (=> d!2227475 (= res!2913996 (noDuplicate!2831 lt!2567572))))

(declare-fun choose!55240 ((Set Context!14324)) List!69415)

(assert (=> d!2227475 (= lt!2567572 (choose!55240 z!3189))))

(assert (=> d!2227475 (= (toList!11199 z!3189) lt!2567572)))

(declare-fun b!7141798 () Bool)

(declare-fun content!14206 (List!69415) (Set Context!14324))

(assert (=> b!7141798 (= e!4292002 (= (content!14206 lt!2567572) z!3189))))

(assert (= (and d!2227475 res!2913996) b!7141798))

(declare-fun m!7856372 () Bool)

(assert (=> d!2227475 m!7856372))

(declare-fun m!7856374 () Bool)

(assert (=> d!2227475 m!7856374))

(declare-fun m!7856376 () Bool)

(assert (=> b!7141798 m!7856376))

(assert (=> b!7141602 d!2227475))

(declare-fun bs!1888483 () Bool)

(declare-fun d!2227477 () Bool)

(assert (= bs!1888483 (and d!2227477 b!7141609)))

(declare-fun lambda!434860 () Int)

(assert (=> bs!1888483 (= lambda!434860 lambda!434805)))

(declare-fun bs!1888484 () Bool)

(assert (= bs!1888484 (and d!2227477 d!2227455)))

(assert (=> bs!1888484 (not (= lambda!434860 lambda!434840))))

(declare-fun bs!1888485 () Bool)

(assert (= bs!1888485 (and d!2227477 d!2227467)))

(assert (=> bs!1888485 (not (= lambda!434860 lambda!434852))))

(declare-fun bs!1888486 () Bool)

(assert (= bs!1888486 (and d!2227477 d!2227469)))

(assert (=> bs!1888486 (not (= lambda!434860 lambda!434855))))

(assert (=> d!2227477 (= (nullableContext!149 lt!2567493) (forall!17008 (exprs!7662 lt!2567493) lambda!434860))))

(declare-fun bs!1888487 () Bool)

(assert (= bs!1888487 d!2227477))

(declare-fun m!7856378 () Bool)

(assert (=> bs!1888487 m!7856378))

(assert (=> b!7141608 d!2227477))

(declare-fun d!2227479 () Bool)

(declare-fun res!2914001 () Bool)

(declare-fun e!4292008 () Bool)

(assert (=> d!2227479 (=> res!2914001 e!4292008)))

(assert (=> d!2227479 (= res!2914001 (is-Nil!69290 (exprs!7662 lt!2567493)))))

(assert (=> d!2227479 (= (forall!17008 (exprs!7662 lt!2567493) lambda!434805) e!4292008)))

(declare-fun b!7141805 () Bool)

(declare-fun e!4292009 () Bool)

(assert (=> b!7141805 (= e!4292008 e!4292009)))

(declare-fun res!2914002 () Bool)

(assert (=> b!7141805 (=> (not res!2914002) (not e!4292009))))

(declare-fun dynLambda!28212 (Int Regex!18168) Bool)

(assert (=> b!7141805 (= res!2914002 (dynLambda!28212 lambda!434805 (h!75738 (exprs!7662 lt!2567493))))))

(declare-fun b!7141806 () Bool)

(assert (=> b!7141806 (= e!4292009 (forall!17008 (t!383431 (exprs!7662 lt!2567493)) lambda!434805))))

(assert (= (and d!2227479 (not res!2914001)) b!7141805))

(assert (= (and b!7141805 res!2914002) b!7141806))

(declare-fun b_lambda!272611 () Bool)

(assert (=> (not b_lambda!272611) (not b!7141805)))

(declare-fun m!7856386 () Bool)

(assert (=> b!7141805 m!7856386))

(declare-fun m!7856388 () Bool)

(assert (=> b!7141806 m!7856388))

(assert (=> b!7141608 d!2227479))

(declare-fun bs!1888492 () Bool)

(declare-fun d!2227483 () Bool)

(assert (= bs!1888492 (and d!2227483 d!2227477)))

(declare-fun lambda!434869 () Int)

(assert (=> bs!1888492 (not (= lambda!434869 lambda!434860))))

(declare-fun bs!1888493 () Bool)

(assert (= bs!1888493 (and d!2227483 d!2227455)))

(assert (=> bs!1888493 (= lambda!434869 lambda!434840)))

(declare-fun bs!1888494 () Bool)

(assert (= bs!1888494 (and d!2227483 d!2227467)))

(assert (=> bs!1888494 (= lambda!434869 lambda!434852)))

(declare-fun bs!1888495 () Bool)

(assert (= bs!1888495 (and d!2227483 d!2227469)))

(assert (=> bs!1888495 (= lambda!434869 lambda!434855)))

(declare-fun bs!1888496 () Bool)

(assert (= bs!1888496 (and d!2227483 b!7141609)))

(assert (=> bs!1888496 (not (= lambda!434869 lambda!434805))))

(declare-fun lambda!434870 () Int)

(assert (=> bs!1888492 (= lambda!434870 lambda!434860)))

(declare-fun bs!1888498 () Bool)

(assert (= bs!1888498 d!2227483))

(assert (=> bs!1888498 (not (= lambda!434870 lambda!434869))))

(assert (=> bs!1888493 (not (= lambda!434870 lambda!434840))))

(assert (=> bs!1888494 (not (= lambda!434870 lambda!434852))))

(assert (=> bs!1888495 (not (= lambda!434870 lambda!434855))))

(assert (=> bs!1888496 (= lambda!434870 lambda!434805)))

(assert (=> d!2227483 (= (nullable!7687 lt!2567501) (forall!17008 (exprs!7662 lt!2567493) lambda!434870))))

(declare-fun lt!2567576 () Unit!163203)

(declare-fun choose!55241 (Regex!18168 List!69414) Unit!163203)

(assert (=> d!2227483 (= lt!2567576 (choose!55241 lt!2567501 (exprs!7662 lt!2567493)))))

(assert (=> d!2227483 (forall!17008 (exprs!7662 lt!2567493) lambda!434869)))

(assert (=> d!2227483 (= (nullableGenConcatSpec!11 lt!2567501 (exprs!7662 lt!2567493)) lt!2567576)))

(assert (=> bs!1888498 m!7856172))

(declare-fun m!7856390 () Bool)

(assert (=> bs!1888498 m!7856390))

(declare-fun m!7856392 () Bool)

(assert (=> bs!1888498 m!7856392))

(declare-fun m!7856394 () Bool)

(assert (=> bs!1888498 m!7856394))

(assert (=> b!7141608 d!2227483))

(declare-fun bs!1888504 () Bool)

(declare-fun d!2227485 () Bool)

(assert (= bs!1888504 (and d!2227485 d!2227477)))

(declare-fun lambda!434873 () Int)

(assert (=> bs!1888504 (not (= lambda!434873 lambda!434860))))

(declare-fun bs!1888505 () Bool)

(assert (= bs!1888505 (and d!2227485 d!2227483)))

(assert (=> bs!1888505 (not (= lambda!434873 lambda!434870))))

(assert (=> bs!1888505 (= lambda!434873 lambda!434869)))

(declare-fun bs!1888506 () Bool)

(assert (= bs!1888506 (and d!2227485 d!2227455)))

(assert (=> bs!1888506 (= lambda!434873 lambda!434840)))

(declare-fun bs!1888507 () Bool)

(assert (= bs!1888507 (and d!2227485 d!2227467)))

(assert (=> bs!1888507 (= lambda!434873 lambda!434852)))

(declare-fun bs!1888508 () Bool)

(assert (= bs!1888508 (and d!2227485 d!2227469)))

(assert (=> bs!1888508 (= lambda!434873 lambda!434855)))

(declare-fun bs!1888509 () Bool)

(assert (= bs!1888509 (and d!2227485 b!7141609)))

(assert (=> bs!1888509 (not (= lambda!434873 lambda!434805))))

(assert (=> d!2227485 (= (inv!88485 setElem!52564) (forall!17008 (exprs!7662 setElem!52564) lambda!434873))))

(declare-fun bs!1888510 () Bool)

(assert (= bs!1888510 d!2227485))

(declare-fun m!7856398 () Bool)

(assert (=> bs!1888510 m!7856398))

(assert (=> setNonEmpty!52564 d!2227485))

(declare-fun bs!1888511 () Bool)

(declare-fun d!2227489 () Bool)

(assert (= bs!1888511 (and d!2227489 d!2227477)))

(declare-fun lambda!434876 () Int)

(assert (=> bs!1888511 (not (= lambda!434876 lambda!434860))))

(declare-fun bs!1888512 () Bool)

(assert (= bs!1888512 (and d!2227489 d!2227485)))

(assert (=> bs!1888512 (not (= lambda!434876 lambda!434873))))

(declare-fun bs!1888513 () Bool)

(assert (= bs!1888513 (and d!2227489 d!2227483)))

(assert (=> bs!1888513 (not (= lambda!434876 lambda!434870))))

(assert (=> bs!1888513 (not (= lambda!434876 lambda!434869))))

(declare-fun bs!1888514 () Bool)

(assert (= bs!1888514 (and d!2227489 d!2227455)))

(assert (=> bs!1888514 (not (= lambda!434876 lambda!434840))))

(declare-fun bs!1888515 () Bool)

(assert (= bs!1888515 (and d!2227489 d!2227467)))

(assert (=> bs!1888515 (not (= lambda!434876 lambda!434852))))

(declare-fun bs!1888516 () Bool)

(assert (= bs!1888516 (and d!2227489 d!2227469)))

(assert (=> bs!1888516 (not (= lambda!434876 lambda!434855))))

(declare-fun bs!1888517 () Bool)

(assert (= bs!1888517 (and d!2227489 b!7141609)))

(assert (=> bs!1888517 (not (= lambda!434876 lambda!434805))))

(assert (=> d!2227489 true))

(declare-fun order!28575 () Int)

(declare-fun dynLambda!28213 (Int Int) Int)

(assert (=> d!2227489 (< (dynLambda!28213 order!28575 lambda!434805) (dynLambda!28213 order!28575 lambda!434876))))

(assert (=> d!2227489 (= (exists!3960 lt!2567495 lambda!434805) (not (forall!17008 lt!2567495 lambda!434876)))))

(declare-fun bs!1888518 () Bool)

(assert (= bs!1888518 d!2227489))

(declare-fun m!7856400 () Bool)

(assert (=> bs!1888518 m!7856400))

(assert (=> b!7141600 d!2227489))

(assert (=> b!7141609 d!2227489))

(declare-fun d!2227491 () Bool)

(assert (=> d!2227491 (= (nullable!7687 lt!2567499) (nullableFct!2991 lt!2567499))))

(declare-fun bs!1888519 () Bool)

(assert (= bs!1888519 d!2227491))

(declare-fun m!7856402 () Bool)

(assert (=> bs!1888519 m!7856402))

(assert (=> b!7141609 d!2227491))

(declare-fun bs!1888521 () Bool)

(declare-fun d!2227493 () Bool)

(assert (= bs!1888521 (and d!2227493 d!2227477)))

(declare-fun lambda!434881 () Int)

(assert (=> bs!1888521 (not (= lambda!434881 lambda!434860))))

(declare-fun bs!1888522 () Bool)

(assert (= bs!1888522 (and d!2227493 d!2227485)))

(assert (=> bs!1888522 (= lambda!434881 lambda!434873)))

(declare-fun bs!1888523 () Bool)

(assert (= bs!1888523 (and d!2227493 d!2227483)))

(assert (=> bs!1888523 (not (= lambda!434881 lambda!434870))))

(assert (=> bs!1888523 (= lambda!434881 lambda!434869)))

(declare-fun bs!1888524 () Bool)

(assert (= bs!1888524 (and d!2227493 d!2227455)))

(assert (=> bs!1888524 (= lambda!434881 lambda!434840)))

(declare-fun bs!1888525 () Bool)

(assert (= bs!1888525 (and d!2227493 d!2227467)))

(assert (=> bs!1888525 (= lambda!434881 lambda!434852)))

(declare-fun bs!1888526 () Bool)

(assert (= bs!1888526 (and d!2227493 d!2227469)))

(assert (=> bs!1888526 (= lambda!434881 lambda!434855)))

(declare-fun bs!1888527 () Bool)

(assert (= bs!1888527 (and d!2227493 b!7141609)))

(assert (=> bs!1888527 (not (= lambda!434881 lambda!434805))))

(declare-fun bs!1888528 () Bool)

(assert (= bs!1888528 (and d!2227493 d!2227489)))

(assert (=> bs!1888528 (not (= lambda!434881 lambda!434876))))

(declare-fun lambda!434882 () Int)

(assert (=> bs!1888521 (= lambda!434882 lambda!434860)))

(assert (=> bs!1888522 (not (= lambda!434882 lambda!434873))))

(assert (=> bs!1888523 (= lambda!434882 lambda!434870)))

(assert (=> bs!1888523 (not (= lambda!434882 lambda!434869))))

(assert (=> bs!1888524 (not (= lambda!434882 lambda!434840))))

(assert (=> bs!1888525 (not (= lambda!434882 lambda!434852))))

(assert (=> bs!1888526 (not (= lambda!434882 lambda!434855))))

(assert (=> bs!1888527 (= lambda!434882 lambda!434805)))

(declare-fun bs!1888529 () Bool)

(assert (= bs!1888529 d!2227493))

(assert (=> bs!1888529 (not (= lambda!434882 lambda!434881))))

(assert (=> bs!1888528 (not (= lambda!434882 lambda!434876))))

(assert (=> d!2227493 (= (nullable!7687 lt!2567499) (exists!3960 lt!2567495 lambda!434882))))

(declare-fun lt!2567582 () Unit!163203)

(declare-fun choose!55242 (Regex!18168 List!69414) Unit!163203)

(assert (=> d!2227493 (= lt!2567582 (choose!55242 lt!2567499 lt!2567495))))

(assert (=> d!2227493 (forall!17008 lt!2567495 lambda!434881)))

(assert (=> d!2227493 (= (nullableGenUnionSpec!55 lt!2567499 lt!2567495) lt!2567582)))

(assert (=> bs!1888529 m!7856182))

(declare-fun m!7856408 () Bool)

(assert (=> bs!1888529 m!7856408))

(declare-fun m!7856410 () Bool)

(assert (=> bs!1888529 m!7856410))

(declare-fun m!7856412 () Bool)

(assert (=> bs!1888529 m!7856412))

(assert (=> b!7141609 d!2227493))

(declare-fun b!7141832 () Bool)

(declare-fun e!4292032 () Bool)

(declare-fun e!4292027 () Bool)

(assert (=> b!7141832 (= e!4292032 e!4292027)))

(declare-fun c!1331867 () Bool)

(assert (=> b!7141832 (= c!1331867 (is-Union!18168 r!11483))))

(declare-fun b!7141833 () Bool)

(declare-fun e!4292029 () Bool)

(declare-fun call!651217 () Bool)

(assert (=> b!7141833 (= e!4292029 call!651217)))

(declare-fun b!7141834 () Bool)

(declare-fun e!4292031 () Bool)

(assert (=> b!7141834 (= e!4292031 call!651217)))

(declare-fun bm!651210 () Bool)

(assert (=> bm!651210 (= call!651217 (validRegex!9335 (ite c!1331867 (regTwo!36849 r!11483) (regTwo!36848 r!11483))))))

(declare-fun b!7141836 () Bool)

(declare-fun res!2914020 () Bool)

(assert (=> b!7141836 (=> (not res!2914020) (not e!4292029))))

(declare-fun call!651216 () Bool)

(assert (=> b!7141836 (= res!2914020 call!651216)))

(assert (=> b!7141836 (= e!4292027 e!4292029)))

(declare-fun b!7141837 () Bool)

(declare-fun res!2914018 () Bool)

(declare-fun e!4292028 () Bool)

(assert (=> b!7141837 (=> res!2914018 e!4292028)))

(assert (=> b!7141837 (= res!2914018 (not (is-Concat!27013 r!11483)))))

(assert (=> b!7141837 (= e!4292027 e!4292028)))

(declare-fun bm!651211 () Bool)

(declare-fun c!1331868 () Bool)

(declare-fun call!651215 () Bool)

(assert (=> bm!651211 (= call!651215 (validRegex!9335 (ite c!1331868 (reg!18497 r!11483) (ite c!1331867 (regOne!36849 r!11483) (regOne!36848 r!11483)))))))

(declare-fun b!7141838 () Bool)

(declare-fun e!4292030 () Bool)

(assert (=> b!7141838 (= e!4292030 e!4292032)))

(assert (=> b!7141838 (= c!1331868 (is-Star!18168 r!11483))))

(declare-fun b!7141839 () Bool)

(assert (=> b!7141839 (= e!4292028 e!4292031)))

(declare-fun res!2914017 () Bool)

(assert (=> b!7141839 (=> (not res!2914017) (not e!4292031))))

(assert (=> b!7141839 (= res!2914017 call!651216)))

(declare-fun b!7141840 () Bool)

(declare-fun e!4292033 () Bool)

(assert (=> b!7141840 (= e!4292032 e!4292033)))

(declare-fun res!2914019 () Bool)

(assert (=> b!7141840 (= res!2914019 (not (nullable!7687 (reg!18497 r!11483))))))

(assert (=> b!7141840 (=> (not res!2914019) (not e!4292033))))

(declare-fun bm!651212 () Bool)

(assert (=> bm!651212 (= call!651216 call!651215)))

(declare-fun b!7141835 () Bool)

(assert (=> b!7141835 (= e!4292033 call!651215)))

(declare-fun d!2227497 () Bool)

(declare-fun res!2914016 () Bool)

(assert (=> d!2227497 (=> res!2914016 e!4292030)))

(assert (=> d!2227497 (= res!2914016 (is-ElementMatch!18168 r!11483))))

(assert (=> d!2227497 (= (validRegex!9335 r!11483) e!4292030)))

(assert (= (and d!2227497 (not res!2914016)) b!7141838))

(assert (= (and b!7141838 c!1331868) b!7141840))

(assert (= (and b!7141838 (not c!1331868)) b!7141832))

(assert (= (and b!7141840 res!2914019) b!7141835))

(assert (= (and b!7141832 c!1331867) b!7141836))

(assert (= (and b!7141832 (not c!1331867)) b!7141837))

(assert (= (and b!7141836 res!2914020) b!7141833))

(assert (= (and b!7141837 (not res!2914018)) b!7141839))

(assert (= (and b!7141839 res!2914017) b!7141834))

(assert (= (or b!7141833 b!7141834) bm!651210))

(assert (= (or b!7141836 b!7141839) bm!651212))

(assert (= (or b!7141835 bm!651212) bm!651211))

(declare-fun m!7856422 () Bool)

(assert (=> bm!651210 m!7856422))

(declare-fun m!7856424 () Bool)

(assert (=> bm!651211 m!7856424))

(declare-fun m!7856426 () Bool)

(assert (=> b!7141840 m!7856426))

(assert (=> start!696154 d!2227497))

(declare-fun bs!1888537 () Bool)

(declare-fun d!2227503 () Bool)

(assert (= bs!1888537 (and d!2227503 b!7141601)))

(declare-fun lambda!434888 () Int)

(assert (=> bs!1888537 (not (= lambda!434888 lambda!434806))))

(declare-fun bs!1888538 () Bool)

(assert (= bs!1888538 (and d!2227503 b!7141606)))

(assert (=> bs!1888538 (= lambda!434888 lambda!434807)))

(declare-fun bs!1888539 () Bool)

(assert (= bs!1888539 (and d!2227503 d!2227463)))

(assert (=> bs!1888539 (not (= lambda!434888 lambda!434843))))

(declare-fun bs!1888540 () Bool)

(assert (= bs!1888540 (and d!2227503 d!2227465)))

(assert (=> bs!1888540 (not (= lambda!434888 lambda!434848))))

(assert (=> d!2227503 (= (nullableZipper!2771 z!3189) (exists!3961 z!3189 lambda!434888))))

(declare-fun bs!1888541 () Bool)

(assert (= bs!1888541 d!2227503))

(declare-fun m!7856428 () Bool)

(assert (=> bs!1888541 m!7856428))

(assert (=> b!7141606 d!2227503))

(declare-fun d!2227505 () Bool)

(declare-fun lt!2567586 () Bool)

(assert (=> d!2227505 (= lt!2567586 (exists!3962 (toList!11199 z!3189) lambda!434807))))

(assert (=> d!2227505 (= lt!2567586 (choose!55238 z!3189 lambda!434807))))

(assert (=> d!2227505 (= (exists!3961 z!3189 lambda!434807) lt!2567586)))

(declare-fun bs!1888542 () Bool)

(assert (= bs!1888542 d!2227505))

(assert (=> bs!1888542 m!7856196))

(assert (=> bs!1888542 m!7856196))

(declare-fun m!7856430 () Bool)

(assert (=> bs!1888542 m!7856430))

(declare-fun m!7856432 () Bool)

(assert (=> bs!1888542 m!7856432))

(assert (=> b!7141606 d!2227505))

(declare-fun d!2227507 () Bool)

(assert (=> d!2227507 (exists!3961 z!3189 lambda!434807)))

(declare-fun lt!2567589 () Unit!163203)

(declare-fun choose!55243 ((Set Context!14324) Context!14324 Int) Unit!163203)

(assert (=> d!2227507 (= lt!2567589 (choose!55243 z!3189 lt!2567493 lambda!434807))))

(assert (=> d!2227507 (set.member lt!2567493 z!3189)))

(assert (=> d!2227507 (= (lemmaContainsThenExists!196 z!3189 lt!2567493 lambda!434807) lt!2567589)))

(declare-fun bs!1888543 () Bool)

(assert (= bs!1888543 d!2227507))

(assert (=> bs!1888543 m!7856164))

(declare-fun m!7856434 () Bool)

(assert (=> bs!1888543 m!7856434))

(assert (=> bs!1888543 m!7856158))

(assert (=> b!7141606 d!2227507))

(declare-fun d!2227509 () Bool)

(assert (=> d!2227509 (= (nullable!7687 lt!2567501) (nullableFct!2991 lt!2567501))))

(declare-fun bs!1888544 () Bool)

(assert (= bs!1888544 d!2227509))

(declare-fun m!7856436 () Bool)

(assert (=> bs!1888544 m!7856436))

(assert (=> b!7141617 d!2227509))

(declare-fun b!7141871 () Bool)

(declare-fun e!4292058 () Bool)

(declare-fun lt!2567594 () Regex!18168)

(assert (=> b!7141871 (= e!4292058 (contains!20608 lt!2567495 lt!2567594))))

(declare-fun d!2227511 () Bool)

(assert (=> d!2227511 e!4292058))

(declare-fun res!2914036 () Bool)

(assert (=> d!2227511 (=> (not res!2914036) (not e!4292058))))

(assert (=> d!2227511 (= res!2914036 (dynLambda!28212 lambda!434805 lt!2567594))))

(declare-fun e!4292060 () Regex!18168)

(assert (=> d!2227511 (= lt!2567594 e!4292060)))

(declare-fun c!1331879 () Bool)

(declare-fun e!4292057 () Bool)

(assert (=> d!2227511 (= c!1331879 e!4292057)))

(declare-fun res!2914035 () Bool)

(assert (=> d!2227511 (=> (not res!2914035) (not e!4292057))))

(assert (=> d!2227511 (= res!2914035 (is-Cons!69290 lt!2567495))))

(assert (=> d!2227511 (exists!3960 lt!2567495 lambda!434805)))

(assert (=> d!2227511 (= (getWitness!1942 lt!2567495 lambda!434805) lt!2567594)))

(declare-fun b!7141872 () Bool)

(assert (=> b!7141872 (= e!4292060 (h!75738 lt!2567495))))

(declare-fun b!7141873 () Bool)

(declare-fun e!4292059 () Regex!18168)

(assert (=> b!7141873 (= e!4292060 e!4292059)))

(declare-fun c!1331880 () Bool)

(assert (=> b!7141873 (= c!1331880 (is-Cons!69290 lt!2567495))))

(declare-fun b!7141874 () Bool)

(assert (=> b!7141874 (= e!4292059 (getWitness!1942 (t!383431 lt!2567495) lambda!434805))))

(declare-fun b!7141875 () Bool)

(assert (=> b!7141875 (= e!4292057 (dynLambda!28212 lambda!434805 (h!75738 lt!2567495)))))

(declare-fun b!7141876 () Bool)

(declare-fun lt!2567595 () Unit!163203)

(declare-fun Unit!163207 () Unit!163203)

(assert (=> b!7141876 (= lt!2567595 Unit!163207)))

(assert (=> b!7141876 false))

(assert (=> b!7141876 (= e!4292059 (head!14510 lt!2567495))))

(assert (= (and d!2227511 res!2914035) b!7141875))

(assert (= (and d!2227511 c!1331879) b!7141872))

(assert (= (and d!2227511 (not c!1331879)) b!7141873))

(assert (= (and b!7141873 c!1331880) b!7141874))

(assert (= (and b!7141873 (not c!1331880)) b!7141876))

(assert (= (and d!2227511 res!2914036) b!7141871))

(declare-fun b_lambda!272613 () Bool)

(assert (=> (not b_lambda!272613) (not d!2227511)))

(declare-fun b_lambda!272615 () Bool)

(assert (=> (not b_lambda!272615) (not b!7141875)))

(declare-fun m!7856438 () Bool)

(assert (=> b!7141871 m!7856438))

(declare-fun m!7856440 () Bool)

(assert (=> d!2227511 m!7856440))

(assert (=> d!2227511 m!7856168))

(declare-fun m!7856442 () Bool)

(assert (=> b!7141874 m!7856442))

(assert (=> b!7141876 m!7856340))

(declare-fun m!7856444 () Bool)

(assert (=> b!7141875 m!7856444))

(assert (=> b!7141617 d!2227511))

(declare-fun b!7141889 () Bool)

(declare-fun e!4292063 () Bool)

(declare-fun tp!1969653 () Bool)

(assert (=> b!7141889 (= e!4292063 tp!1969653)))

(declare-fun b!7141888 () Bool)

(declare-fun tp!1969656 () Bool)

(declare-fun tp!1969655 () Bool)

(assert (=> b!7141888 (= e!4292063 (and tp!1969656 tp!1969655))))

(declare-fun b!7141887 () Bool)

(assert (=> b!7141887 (= e!4292063 tp_is_empty!45973)))

(declare-fun b!7141890 () Bool)

(declare-fun tp!1969654 () Bool)

(declare-fun tp!1969652 () Bool)

(assert (=> b!7141890 (= e!4292063 (and tp!1969654 tp!1969652))))

(assert (=> b!7141613 (= tp!1969616 e!4292063)))

(assert (= (and b!7141613 (is-ElementMatch!18168 (reg!18497 r!11483))) b!7141887))

(assert (= (and b!7141613 (is-Concat!27013 (reg!18497 r!11483))) b!7141888))

(assert (= (and b!7141613 (is-Star!18168 (reg!18497 r!11483))) b!7141889))

(assert (= (and b!7141613 (is-Union!18168 (reg!18497 r!11483))) b!7141890))

(declare-fun condSetEmpty!52570 () Bool)

(assert (=> setNonEmpty!52564 (= condSetEmpty!52570 (= setRest!52564 (as set.empty (Set Context!14324))))))

(declare-fun setRes!52570 () Bool)

(assert (=> setNonEmpty!52564 (= tp!1969619 setRes!52570)))

(declare-fun setIsEmpty!52570 () Bool)

(assert (=> setIsEmpty!52570 setRes!52570))

(declare-fun e!4292073 () Bool)

(declare-fun setNonEmpty!52570 () Bool)

(declare-fun setElem!52570 () Context!14324)

(declare-fun tp!1969662 () Bool)

(assert (=> setNonEmpty!52570 (= setRes!52570 (and tp!1969662 (inv!88485 setElem!52570) e!4292073))))

(declare-fun setRest!52570 () (Set Context!14324))

(assert (=> setNonEmpty!52570 (= setRest!52564 (set.union (set.insert setElem!52570 (as set.empty (Set Context!14324))) setRest!52570))))

(declare-fun b!7141904 () Bool)

(declare-fun tp!1969661 () Bool)

(assert (=> b!7141904 (= e!4292073 tp!1969661)))

(assert (= (and setNonEmpty!52564 condSetEmpty!52570) setIsEmpty!52570))

(assert (= (and setNonEmpty!52564 (not condSetEmpty!52570)) setNonEmpty!52570))

(assert (= setNonEmpty!52570 b!7141904))

(declare-fun m!7856446 () Bool)

(assert (=> setNonEmpty!52570 m!7856446))

(declare-fun b!7141907 () Bool)

(declare-fun e!4292074 () Bool)

(declare-fun tp!1969664 () Bool)

(assert (=> b!7141907 (= e!4292074 tp!1969664)))

(declare-fun b!7141906 () Bool)

(declare-fun tp!1969667 () Bool)

(declare-fun tp!1969666 () Bool)

(assert (=> b!7141906 (= e!4292074 (and tp!1969667 tp!1969666))))

(declare-fun b!7141905 () Bool)

(assert (=> b!7141905 (= e!4292074 tp_is_empty!45973)))

(declare-fun b!7141908 () Bool)

(declare-fun tp!1969665 () Bool)

(declare-fun tp!1969663 () Bool)

(assert (=> b!7141908 (= e!4292074 (and tp!1969665 tp!1969663))))

(assert (=> b!7141615 (= tp!1969615 e!4292074)))

(assert (= (and b!7141615 (is-ElementMatch!18168 (regOne!36848 r!11483))) b!7141905))

(assert (= (and b!7141615 (is-Concat!27013 (regOne!36848 r!11483))) b!7141906))

(assert (= (and b!7141615 (is-Star!18168 (regOne!36848 r!11483))) b!7141907))

(assert (= (and b!7141615 (is-Union!18168 (regOne!36848 r!11483))) b!7141908))

(declare-fun b!7141911 () Bool)

(declare-fun e!4292075 () Bool)

(declare-fun tp!1969669 () Bool)

(assert (=> b!7141911 (= e!4292075 tp!1969669)))

(declare-fun b!7141910 () Bool)

(declare-fun tp!1969672 () Bool)

(declare-fun tp!1969671 () Bool)

(assert (=> b!7141910 (= e!4292075 (and tp!1969672 tp!1969671))))

(declare-fun b!7141909 () Bool)

(assert (=> b!7141909 (= e!4292075 tp_is_empty!45973)))

(declare-fun b!7141912 () Bool)

(declare-fun tp!1969670 () Bool)

(declare-fun tp!1969668 () Bool)

(assert (=> b!7141912 (= e!4292075 (and tp!1969670 tp!1969668))))

(assert (=> b!7141615 (= tp!1969614 e!4292075)))

(assert (= (and b!7141615 (is-ElementMatch!18168 (regTwo!36848 r!11483))) b!7141909))

(assert (= (and b!7141615 (is-Concat!27013 (regTwo!36848 r!11483))) b!7141910))

(assert (= (and b!7141615 (is-Star!18168 (regTwo!36848 r!11483))) b!7141911))

(assert (= (and b!7141615 (is-Union!18168 (regTwo!36848 r!11483))) b!7141912))

(declare-fun b!7141917 () Bool)

(declare-fun e!4292078 () Bool)

(declare-fun tp!1969677 () Bool)

(declare-fun tp!1969678 () Bool)

(assert (=> b!7141917 (= e!4292078 (and tp!1969677 tp!1969678))))

(assert (=> b!7141616 (= tp!1969617 e!4292078)))

(assert (= (and b!7141616 (is-Cons!69290 (exprs!7662 setElem!52564))) b!7141917))

(declare-fun b!7141920 () Bool)

(declare-fun e!4292079 () Bool)

(declare-fun tp!1969680 () Bool)

(assert (=> b!7141920 (= e!4292079 tp!1969680)))

(declare-fun b!7141919 () Bool)

(declare-fun tp!1969683 () Bool)

(declare-fun tp!1969682 () Bool)

(assert (=> b!7141919 (= e!4292079 (and tp!1969683 tp!1969682))))

(declare-fun b!7141918 () Bool)

(assert (=> b!7141918 (= e!4292079 tp_is_empty!45973)))

(declare-fun b!7141921 () Bool)

(declare-fun tp!1969681 () Bool)

(declare-fun tp!1969679 () Bool)

(assert (=> b!7141921 (= e!4292079 (and tp!1969681 tp!1969679))))

(assert (=> b!7141607 (= tp!1969620 e!4292079)))

(assert (= (and b!7141607 (is-ElementMatch!18168 (regOne!36849 r!11483))) b!7141918))

(assert (= (and b!7141607 (is-Concat!27013 (regOne!36849 r!11483))) b!7141919))

(assert (= (and b!7141607 (is-Star!18168 (regOne!36849 r!11483))) b!7141920))

(assert (= (and b!7141607 (is-Union!18168 (regOne!36849 r!11483))) b!7141921))

(declare-fun b!7141924 () Bool)

(declare-fun e!4292080 () Bool)

(declare-fun tp!1969685 () Bool)

(assert (=> b!7141924 (= e!4292080 tp!1969685)))

(declare-fun b!7141923 () Bool)

(declare-fun tp!1969688 () Bool)

(declare-fun tp!1969687 () Bool)

(assert (=> b!7141923 (= e!4292080 (and tp!1969688 tp!1969687))))

(declare-fun b!7141922 () Bool)

(assert (=> b!7141922 (= e!4292080 tp_is_empty!45973)))

(declare-fun b!7141925 () Bool)

(declare-fun tp!1969686 () Bool)

(declare-fun tp!1969684 () Bool)

(assert (=> b!7141925 (= e!4292080 (and tp!1969686 tp!1969684))))

(assert (=> b!7141607 (= tp!1969618 e!4292080)))

(assert (= (and b!7141607 (is-ElementMatch!18168 (regTwo!36849 r!11483))) b!7141922))

(assert (= (and b!7141607 (is-Concat!27013 (regTwo!36849 r!11483))) b!7141923))

(assert (= (and b!7141607 (is-Star!18168 (regTwo!36849 r!11483))) b!7141924))

(assert (= (and b!7141607 (is-Union!18168 (regTwo!36849 r!11483))) b!7141925))

(declare-fun b_lambda!272617 () Bool)

(assert (= b_lambda!272613 (or b!7141609 b_lambda!272617)))

(declare-fun bs!1888545 () Bool)

(declare-fun d!2227515 () Bool)

(assert (= bs!1888545 (and d!2227515 b!7141609)))

(assert (=> bs!1888545 (= (dynLambda!28212 lambda!434805 lt!2567594) (nullable!7687 lt!2567594))))

(declare-fun m!7856454 () Bool)

(assert (=> bs!1888545 m!7856454))

(assert (=> d!2227511 d!2227515))

(declare-fun b_lambda!272619 () Bool)

(assert (= b_lambda!272611 (or b!7141609 b_lambda!272619)))

(declare-fun bs!1888546 () Bool)

(declare-fun d!2227517 () Bool)

(assert (= bs!1888546 (and d!2227517 b!7141609)))

(assert (=> bs!1888546 (= (dynLambda!28212 lambda!434805 (h!75738 (exprs!7662 lt!2567493))) (nullable!7687 (h!75738 (exprs!7662 lt!2567493))))))

(declare-fun m!7856456 () Bool)

(assert (=> bs!1888546 m!7856456))

(assert (=> b!7141805 d!2227517))

(declare-fun b_lambda!272621 () Bool)

(assert (= b_lambda!272615 (or b!7141609 b_lambda!272621)))

(declare-fun bs!1888547 () Bool)

(declare-fun d!2227519 () Bool)

(assert (= bs!1888547 (and d!2227519 b!7141609)))

(assert (=> bs!1888547 (= (dynLambda!28212 lambda!434805 (h!75738 lt!2567495)) (nullable!7687 (h!75738 lt!2567495)))))

(declare-fun m!7856458 () Bool)

(assert (=> bs!1888547 m!7856458))

(assert (=> b!7141875 d!2227519))

(declare-fun b_lambda!272623 () Bool)

(assert (= b_lambda!272607 (or b!7141601 b_lambda!272623)))

(declare-fun bs!1888548 () Bool)

(declare-fun d!2227521 () Bool)

(assert (= bs!1888548 (and d!2227521 b!7141601)))

(assert (=> bs!1888548 (= (dynLambda!28210 lambda!434806 lt!2567540) (= (generalisedConcat!2352 (exprs!7662 lt!2567540)) lt!2567501))))

(declare-fun m!7856460 () Bool)

(assert (=> bs!1888548 m!7856460))

(assert (=> d!2227449 d!2227521))

(push 1)

(assert (not b!7141923))

(assert (not d!2227455))

(assert (not d!2227477))

(assert (not b!7141924))

(assert (not b!7141798))

(assert (not d!2227467))

(assert (not d!2227449))

(assert (not bs!1888545))

(assert (not d!2227451))

(assert (not d!2227469))

(assert (not setNonEmpty!52570))

(assert (not b!7141716))

(assert (not d!2227489))

(assert (not b!7141780))

(assert (not b!7141890))

(assert (not d!2227473))

(assert (not b!7141720))

(assert (not b!7141907))

(assert (not b!7141908))

(assert (not bs!1888547))

(assert (not b!7141723))

(assert (not d!2227491))

(assert (not d!2227511))

(assert (not d!2227485))

(assert (not b!7141719))

(assert (not b!7141718))

(assert (not b!7141806))

(assert (not b!7141921))

(assert (not b_lambda!272621))

(assert tp_is_empty!45973)

(assert (not b!7141876))

(assert (not b!7141904))

(assert (not b!7141778))

(assert (not b!7141722))

(assert (not d!2227475))

(assert (not d!2227493))

(assert (not d!2227503))

(assert (not b!7141889))

(assert (not d!2227505))

(assert (not d!2227465))

(assert (not b!7141714))

(assert (not b!7141790))

(assert (not d!2227507))

(assert (not d!2227461))

(assert (not b!7141920))

(assert (not b!7141910))

(assert (not b!7141783))

(assert (not b!7141912))

(assert (not d!2227463))

(assert (not d!2227459))

(assert (not b!7141906))

(assert (not d!2227509))

(assert (not b_lambda!272623))

(assert (not b!7141785))

(assert (not b!7141874))

(assert (not b_lambda!272619))

(assert (not b!7141690))

(assert (not b!7141917))

(assert (not b!7141919))

(assert (not b!7141925))

(assert (not b!7141779))

(assert (not bm!651210))

(assert (not d!2227483))

(assert (not b!7141888))

(assert (not b!7141911))

(assert (not b!7141871))

(assert (not bs!1888546))

(assert (not b!7141782))

(assert (not b!7141776))

(assert (not b!7141840))

(assert (not b_lambda!272617))

(assert (not bm!651211))

(assert (not bs!1888548))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

