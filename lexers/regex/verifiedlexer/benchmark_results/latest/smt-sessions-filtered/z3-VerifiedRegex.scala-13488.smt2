; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!728036 () Bool)

(assert start!728036)

(declare-fun b!7520881 () Bool)

(declare-fun e!4483407 () Bool)

(declare-fun tp!2184457 () Bool)

(assert (=> b!7520881 (= e!4483407 tp!2184457)))

(declare-fun b!7520879 () Bool)

(declare-fun res!3014752 () Bool)

(declare-fun e!4483408 () Bool)

(assert (=> b!7520879 (=> (not res!3014752) (not e!4483408))))

(declare-datatypes ((C!39868 0))(
  ( (C!39869 (val!30374 Int)) )
))
(declare-datatypes ((Regex!19771 0))(
  ( (ElementMatch!19771 (c!1389562 C!39868)) (Concat!28616 (regOne!40054 Regex!19771) (regTwo!40054 Regex!19771)) (EmptyExpr!19771) (Star!19771 (reg!20100 Regex!19771)) (EmptyLang!19771) (Union!19771 (regOne!40055 Regex!19771) (regTwo!40055 Regex!19771)) )
))
(declare-datatypes ((List!72682 0))(
  ( (Nil!72558) (Cons!72558 (h!79006 Regex!19771) (t!387383 List!72682)) )
))
(declare-datatypes ((Context!17046 0))(
  ( (Context!17047 (exprs!9023 List!72682)) )
))
(declare-fun context!41 () Context!17046)

(get-info :version)

(assert (=> b!7520879 (= res!3014752 ((_ is Cons!72558) (exprs!9023 context!41)))))

(declare-fun b!7520880 () Bool)

(declare-fun inv!92720 (Context!17046) Bool)

(assert (=> b!7520880 (= e!4483408 (not (inv!92720 (Context!17047 (t!387383 (exprs!9023 context!41))))))))

(declare-fun res!3014750 () Bool)

(assert (=> start!728036 (=> (not res!3014750) (not e!4483408))))

(declare-fun e!4483409 () Bool)

(assert (=> start!728036 (= res!3014750 e!4483409)))

(declare-fun res!3014751 () Bool)

(assert (=> start!728036 (=> res!3014751 e!4483409)))

(assert (=> start!728036 (= res!3014751 (not ((_ is Cons!72558) (exprs!9023 context!41))))))

(assert (=> start!728036 e!4483408))

(assert (=> start!728036 (and (inv!92720 context!41) e!4483407)))

(declare-fun b!7520878 () Bool)

(declare-fun nullable!8607 (Regex!19771) Bool)

(assert (=> b!7520878 (= e!4483409 (not (nullable!8607 (h!79006 (exprs!9023 context!41)))))))

(assert (= (and start!728036 (not res!3014751)) b!7520878))

(assert (= (and start!728036 res!3014750) b!7520879))

(assert (= (and b!7520879 res!3014752) b!7520880))

(assert (= start!728036 b!7520881))

(declare-fun m!8100224 () Bool)

(assert (=> b!7520880 m!8100224))

(declare-fun m!8100226 () Bool)

(assert (=> start!728036 m!8100226))

(declare-fun m!8100228 () Bool)

(assert (=> b!7520878 m!8100228))

(check-sat (not b!7520878) (not start!728036) (not b!7520880) (not b!7520881))
(check-sat)
(get-model)

(declare-fun d!2308985 () Bool)

(declare-fun nullableFct!3442 (Regex!19771) Bool)

(assert (=> d!2308985 (= (nullable!8607 (h!79006 (exprs!9023 context!41))) (nullableFct!3442 (h!79006 (exprs!9023 context!41))))))

(declare-fun bs!1939645 () Bool)

(assert (= bs!1939645 d!2308985))

(declare-fun m!8100230 () Bool)

(assert (=> bs!1939645 m!8100230))

(assert (=> b!7520878 d!2308985))

(declare-fun d!2308989 () Bool)

(declare-fun lambda!466420 () Int)

(declare-fun forall!18409 (List!72682 Int) Bool)

(assert (=> d!2308989 (= (inv!92720 context!41) (forall!18409 (exprs!9023 context!41) lambda!466420))))

(declare-fun bs!1939646 () Bool)

(assert (= bs!1939646 d!2308989))

(declare-fun m!8100232 () Bool)

(assert (=> bs!1939646 m!8100232))

(assert (=> start!728036 d!2308989))

(declare-fun bs!1939647 () Bool)

(declare-fun d!2308991 () Bool)

(assert (= bs!1939647 (and d!2308991 d!2308989)))

(declare-fun lambda!466421 () Int)

(assert (=> bs!1939647 (= lambda!466421 lambda!466420)))

(assert (=> d!2308991 (= (inv!92720 (Context!17047 (t!387383 (exprs!9023 context!41)))) (forall!18409 (exprs!9023 (Context!17047 (t!387383 (exprs!9023 context!41)))) lambda!466421))))

(declare-fun bs!1939648 () Bool)

(assert (= bs!1939648 d!2308991))

(declare-fun m!8100234 () Bool)

(assert (=> bs!1939648 m!8100234))

(assert (=> b!7520880 d!2308991))

(declare-fun b!7520886 () Bool)

(declare-fun e!4483412 () Bool)

(declare-fun tp!2184462 () Bool)

(declare-fun tp!2184463 () Bool)

(assert (=> b!7520886 (= e!4483412 (and tp!2184462 tp!2184463))))

(assert (=> b!7520881 (= tp!2184457 e!4483412)))

(assert (= (and b!7520881 ((_ is Cons!72558) (exprs!9023 context!41))) b!7520886))

(check-sat (not d!2308991) (not d!2308985) (not d!2308989) (not b!7520886))
(check-sat)
(get-model)

(declare-fun d!2308993 () Bool)

(declare-fun res!3014757 () Bool)

(declare-fun e!4483417 () Bool)

(assert (=> d!2308993 (=> res!3014757 e!4483417)))

(assert (=> d!2308993 (= res!3014757 ((_ is Nil!72558) (exprs!9023 (Context!17047 (t!387383 (exprs!9023 context!41))))))))

(assert (=> d!2308993 (= (forall!18409 (exprs!9023 (Context!17047 (t!387383 (exprs!9023 context!41)))) lambda!466421) e!4483417)))

(declare-fun b!7520891 () Bool)

(declare-fun e!4483418 () Bool)

(assert (=> b!7520891 (= e!4483417 e!4483418)))

(declare-fun res!3014758 () Bool)

(assert (=> b!7520891 (=> (not res!3014758) (not e!4483418))))

(declare-fun dynLambda!29890 (Int Regex!19771) Bool)

(assert (=> b!7520891 (= res!3014758 (dynLambda!29890 lambda!466421 (h!79006 (exprs!9023 (Context!17047 (t!387383 (exprs!9023 context!41)))))))))

(declare-fun b!7520892 () Bool)

(assert (=> b!7520892 (= e!4483418 (forall!18409 (t!387383 (exprs!9023 (Context!17047 (t!387383 (exprs!9023 context!41))))) lambda!466421))))

(assert (= (and d!2308993 (not res!3014757)) b!7520891))

(assert (= (and b!7520891 res!3014758) b!7520892))

(declare-fun b_lambda!288843 () Bool)

(assert (=> (not b_lambda!288843) (not b!7520891)))

(declare-fun m!8100240 () Bool)

(assert (=> b!7520891 m!8100240))

(declare-fun m!8100242 () Bool)

(assert (=> b!7520892 m!8100242))

(assert (=> d!2308991 d!2308993))

(declare-fun b!7520912 () Bool)

(declare-fun e!4483435 () Bool)

(declare-fun e!4483434 () Bool)

(assert (=> b!7520912 (= e!4483435 e!4483434)))

(declare-fun res!3014769 () Bool)

(assert (=> b!7520912 (=> (not res!3014769) (not e!4483434))))

(assert (=> b!7520912 (= res!3014769 (and (not ((_ is EmptyLang!19771) (h!79006 (exprs!9023 context!41)))) (not ((_ is ElementMatch!19771) (h!79006 (exprs!9023 context!41))))))))

(declare-fun bm!689636 () Bool)

(declare-fun call!689641 () Bool)

(declare-fun c!1389565 () Bool)

(assert (=> bm!689636 (= call!689641 (nullable!8607 (ite c!1389565 (regTwo!40055 (h!79006 (exprs!9023 context!41))) (regOne!40054 (h!79006 (exprs!9023 context!41))))))))

(declare-fun bm!689637 () Bool)

(declare-fun call!689642 () Bool)

(assert (=> bm!689637 (= call!689642 (nullable!8607 (ite c!1389565 (regOne!40055 (h!79006 (exprs!9023 context!41))) (regTwo!40054 (h!79006 (exprs!9023 context!41))))))))

(declare-fun b!7520913 () Bool)

(declare-fun e!4483438 () Bool)

(assert (=> b!7520913 (= e!4483438 call!689642)))

(declare-fun b!7520914 () Bool)

(declare-fun e!4483437 () Bool)

(assert (=> b!7520914 (= e!4483437 e!4483438)))

(declare-fun res!3014772 () Bool)

(assert (=> b!7520914 (= res!3014772 call!689641)))

(assert (=> b!7520914 (=> (not res!3014772) (not e!4483438))))

(declare-fun b!7520915 () Bool)

(declare-fun e!4483439 () Bool)

(assert (=> b!7520915 (= e!4483434 e!4483439)))

(declare-fun res!3014771 () Bool)

(assert (=> b!7520915 (=> res!3014771 e!4483439)))

(assert (=> b!7520915 (= res!3014771 ((_ is Star!19771) (h!79006 (exprs!9023 context!41))))))

(declare-fun b!7520916 () Bool)

(declare-fun e!4483436 () Bool)

(assert (=> b!7520916 (= e!4483437 e!4483436)))

(declare-fun res!3014770 () Bool)

(assert (=> b!7520916 (= res!3014770 call!689642)))

(assert (=> b!7520916 (=> res!3014770 e!4483436)))

(declare-fun d!2308999 () Bool)

(declare-fun res!3014773 () Bool)

(assert (=> d!2308999 (=> res!3014773 e!4483435)))

(assert (=> d!2308999 (= res!3014773 ((_ is EmptyExpr!19771) (h!79006 (exprs!9023 context!41))))))

(assert (=> d!2308999 (= (nullableFct!3442 (h!79006 (exprs!9023 context!41))) e!4483435)))

(declare-fun b!7520917 () Bool)

(assert (=> b!7520917 (= e!4483436 call!689641)))

(declare-fun b!7520918 () Bool)

(assert (=> b!7520918 (= e!4483439 e!4483437)))

(assert (=> b!7520918 (= c!1389565 ((_ is Union!19771) (h!79006 (exprs!9023 context!41))))))

(assert (= (and d!2308999 (not res!3014773)) b!7520912))

(assert (= (and b!7520912 res!3014769) b!7520915))

(assert (= (and b!7520915 (not res!3014771)) b!7520918))

(assert (= (and b!7520918 c!1389565) b!7520916))

(assert (= (and b!7520918 (not c!1389565)) b!7520914))

(assert (= (and b!7520916 (not res!3014770)) b!7520917))

(assert (= (and b!7520914 res!3014772) b!7520913))

(assert (= (or b!7520917 b!7520914) bm!689636))

(assert (= (or b!7520916 b!7520913) bm!689637))

(declare-fun m!8100246 () Bool)

(assert (=> bm!689636 m!8100246))

(declare-fun m!8100248 () Bool)

(assert (=> bm!689637 m!8100248))

(assert (=> d!2308985 d!2308999))

(declare-fun d!2309001 () Bool)

(declare-fun res!3014774 () Bool)

(declare-fun e!4483440 () Bool)

(assert (=> d!2309001 (=> res!3014774 e!4483440)))

(assert (=> d!2309001 (= res!3014774 ((_ is Nil!72558) (exprs!9023 context!41)))))

(assert (=> d!2309001 (= (forall!18409 (exprs!9023 context!41) lambda!466420) e!4483440)))

(declare-fun b!7520919 () Bool)

(declare-fun e!4483441 () Bool)

(assert (=> b!7520919 (= e!4483440 e!4483441)))

(declare-fun res!3014775 () Bool)

(assert (=> b!7520919 (=> (not res!3014775) (not e!4483441))))

(assert (=> b!7520919 (= res!3014775 (dynLambda!29890 lambda!466420 (h!79006 (exprs!9023 context!41))))))

(declare-fun b!7520920 () Bool)

(assert (=> b!7520920 (= e!4483441 (forall!18409 (t!387383 (exprs!9023 context!41)) lambda!466420))))

(assert (= (and d!2309001 (not res!3014774)) b!7520919))

(assert (= (and b!7520919 res!3014775) b!7520920))

(declare-fun b_lambda!288845 () Bool)

(assert (=> (not b_lambda!288845) (not b!7520919)))

(declare-fun m!8100250 () Bool)

(assert (=> b!7520919 m!8100250))

(declare-fun m!8100252 () Bool)

(assert (=> b!7520920 m!8100252))

(assert (=> d!2308989 d!2309001))

(declare-fun b!7520931 () Bool)

(declare-fun e!4483444 () Bool)

(declare-fun tp_is_empty!49899 () Bool)

(assert (=> b!7520931 (= e!4483444 tp_is_empty!49899)))

(declare-fun b!7520933 () Bool)

(declare-fun tp!2184480 () Bool)

(assert (=> b!7520933 (= e!4483444 tp!2184480)))

(declare-fun b!7520932 () Bool)

(declare-fun tp!2184481 () Bool)

(declare-fun tp!2184483 () Bool)

(assert (=> b!7520932 (= e!4483444 (and tp!2184481 tp!2184483))))

(declare-fun b!7520934 () Bool)

(declare-fun tp!2184484 () Bool)

(declare-fun tp!2184482 () Bool)

(assert (=> b!7520934 (= e!4483444 (and tp!2184484 tp!2184482))))

(assert (=> b!7520886 (= tp!2184462 e!4483444)))

(assert (= (and b!7520886 ((_ is ElementMatch!19771) (h!79006 (exprs!9023 context!41)))) b!7520931))

(assert (= (and b!7520886 ((_ is Concat!28616) (h!79006 (exprs!9023 context!41)))) b!7520932))

(assert (= (and b!7520886 ((_ is Star!19771) (h!79006 (exprs!9023 context!41)))) b!7520933))

(assert (= (and b!7520886 ((_ is Union!19771) (h!79006 (exprs!9023 context!41)))) b!7520934))

(declare-fun b!7520935 () Bool)

(declare-fun e!4483445 () Bool)

(declare-fun tp!2184485 () Bool)

(declare-fun tp!2184486 () Bool)

(assert (=> b!7520935 (= e!4483445 (and tp!2184485 tp!2184486))))

(assert (=> b!7520886 (= tp!2184463 e!4483445)))

(assert (= (and b!7520886 ((_ is Cons!72558) (t!387383 (exprs!9023 context!41)))) b!7520935))

(declare-fun b_lambda!288847 () Bool)

(assert (= b_lambda!288845 (or d!2308989 b_lambda!288847)))

(declare-fun bs!1939653 () Bool)

(declare-fun d!2309003 () Bool)

(assert (= bs!1939653 (and d!2309003 d!2308989)))

(declare-fun validRegex!10201 (Regex!19771) Bool)

(assert (=> bs!1939653 (= (dynLambda!29890 lambda!466420 (h!79006 (exprs!9023 context!41))) (validRegex!10201 (h!79006 (exprs!9023 context!41))))))

(declare-fun m!8100254 () Bool)

(assert (=> bs!1939653 m!8100254))

(assert (=> b!7520919 d!2309003))

(declare-fun b_lambda!288849 () Bool)

(assert (= b_lambda!288843 (or d!2308991 b_lambda!288849)))

(declare-fun bs!1939654 () Bool)

(declare-fun d!2309005 () Bool)

(assert (= bs!1939654 (and d!2309005 d!2308991)))

(assert (=> bs!1939654 (= (dynLambda!29890 lambda!466421 (h!79006 (exprs!9023 (Context!17047 (t!387383 (exprs!9023 context!41)))))) (validRegex!10201 (h!79006 (exprs!9023 (Context!17047 (t!387383 (exprs!9023 context!41)))))))))

(declare-fun m!8100256 () Bool)

(assert (=> bs!1939654 m!8100256))

(assert (=> b!7520891 d!2309005))

(check-sat (not b_lambda!288849) (not bm!689636) (not bs!1939654) (not b!7520935) (not bs!1939653) (not bm!689637) (not b_lambda!288847) (not b!7520932) tp_is_empty!49899 (not b!7520892) (not b!7520920) (not b!7520934) (not b!7520933))
(check-sat)
