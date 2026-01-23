; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!279706 () Bool)

(assert start!279706)

(declare-fun b!2866539 () Bool)

(declare-fun e!1814699 () Bool)

(declare-datatypes ((C!17588 0))(
  ( (C!17589 (val!10828 Int)) )
))
(declare-datatypes ((Regex!8703 0))(
  ( (ElementMatch!8703 (c!462896 C!17588)) (Concat!14024 (regOne!17918 Regex!8703) (regTwo!17918 Regex!8703)) (EmptyExpr!8703) (Star!8703 (reg!9032 Regex!8703)) (EmptyLang!8703) (Union!8703 (regOne!17919 Regex!8703) (regTwo!17919 Regex!8703)) )
))
(declare-datatypes ((List!34433 0))(
  ( (Nil!34309) (Cons!34309 (h!39729 Regex!8703) (t!233476 List!34433)) )
))
(declare-datatypes ((Context!5326 0))(
  ( (Context!5327 (exprs!3163 List!34433)) )
))
(declare-fun c!7184 () Context!5326)

(declare-datatypes ((List!34434 0))(
  ( (Nil!34310) (Cons!34310 (h!39730 C!17588) (t!233477 List!34434)) )
))
(declare-datatypes ((Option!6382 0))(
  ( (None!6381) (Some!6381 (v!34503 List!34434)) )
))
(declare-fun isDefined!4992 (Option!6382) Bool)

(declare-fun getLanguageWitness!370 (Context!5326) Option!6382)

(assert (=> b!2866539 (= e!1814699 (not (isDefined!4992 (getLanguageWitness!370 c!7184))))))

(declare-fun b!2866540 () Bool)

(declare-fun res!1190051 () Bool)

(assert (=> b!2866540 (=> (not res!1190051) (not e!1814699))))

(get-info :version)

(declare-fun getLanguageWitness!371 (Regex!8703) Option!6382)

(assert (=> b!2866540 (= res!1190051 ((_ is Some!6381) (getLanguageWitness!371 (h!39729 (exprs!3163 c!7184)))))))

(declare-fun b!2866541 () Bool)

(declare-fun res!1190052 () Bool)

(assert (=> b!2866541 (=> (not res!1190052) (not e!1814699))))

(assert (=> b!2866541 (= res!1190052 (not ((_ is Some!6381) (getLanguageWitness!370 (Context!5327 (t!233476 (exprs!3163 c!7184)))))))))

(declare-fun b!2866542 () Bool)

(declare-fun e!1814698 () Bool)

(declare-fun tp!922944 () Bool)

(assert (=> b!2866542 (= e!1814698 tp!922944)))

(declare-fun res!1190050 () Bool)

(assert (=> start!279706 (=> (not res!1190050) (not e!1814699))))

(declare-fun lostCause!795 (Context!5326) Bool)

(assert (=> start!279706 (= res!1190050 (not (lostCause!795 c!7184)))))

(assert (=> start!279706 e!1814699))

(declare-fun inv!46344 (Context!5326) Bool)

(assert (=> start!279706 (and (inv!46344 c!7184) e!1814698)))

(declare-fun b!2866543 () Bool)

(declare-fun res!1190053 () Bool)

(assert (=> b!2866543 (=> (not res!1190053) (not e!1814699))))

(assert (=> b!2866543 (= res!1190053 ((_ is Cons!34309) (exprs!3163 c!7184)))))

(assert (= (and start!279706 res!1190050) b!2866543))

(assert (= (and b!2866543 res!1190053) b!2866540))

(assert (= (and b!2866540 res!1190051) b!2866541))

(assert (= (and b!2866541 res!1190052) b!2866539))

(assert (= start!279706 b!2866542))

(declare-fun m!3286879 () Bool)

(assert (=> b!2866539 m!3286879))

(assert (=> b!2866539 m!3286879))

(declare-fun m!3286881 () Bool)

(assert (=> b!2866539 m!3286881))

(declare-fun m!3286883 () Bool)

(assert (=> b!2866540 m!3286883))

(declare-fun m!3286885 () Bool)

(assert (=> b!2866541 m!3286885))

(declare-fun m!3286887 () Bool)

(assert (=> start!279706 m!3286887))

(declare-fun m!3286889 () Bool)

(assert (=> start!279706 m!3286889))

(check-sat (not start!279706) (not b!2866540) (not b!2866542) (not b!2866539) (not b!2866541))
(check-sat)
(get-model)

(declare-fun b!2866628 () Bool)

(declare-fun e!1814744 () Option!6382)

(declare-fun lt!1017004 () Option!6382)

(declare-fun lt!1017002 () Option!6382)

(declare-fun ++!8152 (List!34434 List!34434) List!34434)

(assert (=> b!2866628 (= e!1814744 (Some!6381 (++!8152 (v!34503 lt!1017004) (v!34503 lt!1017002))))))

(declare-fun b!2866629 () Bool)

(declare-fun e!1814742 () Option!6382)

(assert (=> b!2866629 (= e!1814742 (Some!6381 Nil!34310))))

(declare-fun b!2866630 () Bool)

(declare-fun e!1814743 () Option!6382)

(assert (=> b!2866630 (= e!1814742 e!1814743)))

(assert (=> b!2866630 (= lt!1017004 (getLanguageWitness!371 (h!39729 (exprs!3163 (Context!5327 (t!233476 (exprs!3163 c!7184)))))))))

(declare-fun c!462943 () Bool)

(assert (=> b!2866630 (= c!462943 ((_ is Some!6381) lt!1017004))))

(declare-fun b!2866632 () Bool)

(declare-fun c!462942 () Bool)

(assert (=> b!2866632 (= c!462942 ((_ is Some!6381) lt!1017002))))

(assert (=> b!2866632 (= lt!1017002 (getLanguageWitness!370 (Context!5327 (t!233476 (exprs!3163 (Context!5327 (t!233476 (exprs!3163 c!7184))))))))))

(assert (=> b!2866632 (= e!1814743 e!1814744)))

(declare-fun b!2866633 () Bool)

(assert (=> b!2866633 (= e!1814744 None!6381)))

(declare-fun d!828789 () Bool)

(declare-fun lt!1017003 () Option!6382)

(declare-fun lambda!106808 () Int)

(declare-fun isEmpty!18682 (Option!6382) Bool)

(declare-fun exists!1132 (List!34433 Int) Bool)

(assert (=> d!828789 (= (isEmpty!18682 lt!1017003) (exists!1132 (exprs!3163 (Context!5327 (t!233476 (exprs!3163 c!7184)))) lambda!106808))))

(assert (=> d!828789 (= lt!1017003 e!1814742)))

(declare-fun c!462941 () Bool)

(assert (=> d!828789 (= c!462941 ((_ is Cons!34309) (exprs!3163 (Context!5327 (t!233476 (exprs!3163 c!7184))))))))

(assert (=> d!828789 (= (getLanguageWitness!370 (Context!5327 (t!233476 (exprs!3163 c!7184)))) lt!1017003)))

(declare-fun b!2866631 () Bool)

(assert (=> b!2866631 (= e!1814743 None!6381)))

(assert (= (and d!828789 c!462941) b!2866630))

(assert (= (and d!828789 (not c!462941)) b!2866629))

(assert (= (and b!2866630 c!462943) b!2866632))

(assert (= (and b!2866630 (not c!462943)) b!2866631))

(assert (= (and b!2866632 c!462942) b!2866628))

(assert (= (and b!2866632 (not c!462942)) b!2866633))

(declare-fun m!3286917 () Bool)

(assert (=> b!2866628 m!3286917))

(declare-fun m!3286919 () Bool)

(assert (=> b!2866630 m!3286919))

(declare-fun m!3286921 () Bool)

(assert (=> b!2866632 m!3286921))

(declare-fun m!3286923 () Bool)

(assert (=> d!828789 m!3286923))

(declare-fun m!3286925 () Bool)

(assert (=> d!828789 m!3286925))

(assert (=> b!2866541 d!828789))

(declare-fun b!2866671 () Bool)

(declare-fun e!1814770 () Option!6382)

(assert (=> b!2866671 (= e!1814770 None!6381)))

(declare-fun b!2866672 () Bool)

(declare-fun c!462967 () Bool)

(assert (=> b!2866672 (= c!462967 ((_ is ElementMatch!8703) (h!39729 (exprs!3163 c!7184))))))

(declare-fun e!1814764 () Option!6382)

(assert (=> b!2866672 (= e!1814770 e!1814764)))

(declare-fun b!2866673 () Bool)

(declare-fun e!1814766 () Option!6382)

(assert (=> b!2866673 (= e!1814766 e!1814770)))

(declare-fun c!462966 () Bool)

(assert (=> b!2866673 (= c!462966 ((_ is EmptyLang!8703) (h!39729 (exprs!3163 c!7184))))))

(declare-fun b!2866674 () Bool)

(declare-fun c!462960 () Bool)

(declare-fun lt!1017011 () Option!6382)

(assert (=> b!2866674 (= c!462960 ((_ is Some!6381) lt!1017011))))

(declare-fun call!184952 () Option!6382)

(assert (=> b!2866674 (= lt!1017011 call!184952)))

(declare-fun e!1814767 () Option!6382)

(declare-fun e!1814771 () Option!6382)

(assert (=> b!2866674 (= e!1814767 e!1814771)))

(declare-fun b!2866675 () Bool)

(assert (=> b!2866675 (= e!1814771 None!6381)))

(declare-fun b!2866676 () Bool)

(declare-fun e!1814768 () Option!6382)

(assert (=> b!2866676 (= e!1814764 e!1814768)))

(declare-fun c!462961 () Bool)

(assert (=> b!2866676 (= c!462961 ((_ is Star!8703) (h!39729 (exprs!3163 c!7184))))))

(declare-fun bm!184946 () Bool)

(declare-fun c!462962 () Bool)

(assert (=> bm!184946 (= call!184952 (getLanguageWitness!371 (ite c!462962 (regTwo!17919 (h!39729 (exprs!3163 c!7184))) (regTwo!17918 (h!39729 (exprs!3163 c!7184))))))))

(declare-fun b!2866677 () Bool)

(assert (=> b!2866677 (= c!462962 ((_ is Union!8703) (h!39729 (exprs!3163 c!7184))))))

(declare-fun e!1814769 () Option!6382)

(assert (=> b!2866677 (= e!1814768 e!1814769)))

(declare-fun d!828803 () Bool)

(declare-fun c!462964 () Bool)

(assert (=> d!828803 (= c!462964 ((_ is EmptyExpr!8703) (h!39729 (exprs!3163 c!7184))))))

(assert (=> d!828803 (= (getLanguageWitness!371 (h!39729 (exprs!3163 c!7184))) e!1814766)))

(declare-fun b!2866678 () Bool)

(declare-fun lt!1017012 () Option!6382)

(assert (=> b!2866678 (= e!1814771 (Some!6381 (++!8152 (v!34503 lt!1017012) (v!34503 lt!1017011))))))

(declare-fun b!2866679 () Bool)

(declare-fun e!1814765 () Option!6382)

(declare-fun lt!1017013 () Option!6382)

(assert (=> b!2866679 (= e!1814765 lt!1017013)))

(declare-fun b!2866680 () Bool)

(assert (=> b!2866680 (= e!1814766 (Some!6381 Nil!34310))))

(declare-fun b!2866681 () Bool)

(assert (=> b!2866681 (= e!1814768 (Some!6381 Nil!34310))))

(declare-fun b!2866682 () Bool)

(assert (=> b!2866682 (= e!1814769 e!1814767)))

(declare-fun call!184951 () Option!6382)

(assert (=> b!2866682 (= lt!1017012 call!184951)))

(declare-fun c!462963 () Bool)

(assert (=> b!2866682 (= c!462963 ((_ is Some!6381) lt!1017012))))

(declare-fun b!2866683 () Bool)

(assert (=> b!2866683 (= e!1814769 e!1814765)))

(assert (=> b!2866683 (= lt!1017013 call!184951)))

(declare-fun c!462965 () Bool)

(assert (=> b!2866683 (= c!462965 ((_ is Some!6381) lt!1017013))))

(declare-fun b!2866684 () Bool)

(assert (=> b!2866684 (= e!1814764 (Some!6381 (Cons!34310 (c!462896 (h!39729 (exprs!3163 c!7184))) Nil!34310)))))

(declare-fun b!2866685 () Bool)

(assert (=> b!2866685 (= e!1814767 None!6381)))

(declare-fun bm!184947 () Bool)

(assert (=> bm!184947 (= call!184951 (getLanguageWitness!371 (ite c!462962 (regOne!17919 (h!39729 (exprs!3163 c!7184))) (regOne!17918 (h!39729 (exprs!3163 c!7184))))))))

(declare-fun b!2866686 () Bool)

(assert (=> b!2866686 (= e!1814765 call!184952)))

(assert (= (and d!828803 c!462964) b!2866680))

(assert (= (and d!828803 (not c!462964)) b!2866673))

(assert (= (and b!2866673 c!462966) b!2866671))

(assert (= (and b!2866673 (not c!462966)) b!2866672))

(assert (= (and b!2866672 c!462967) b!2866684))

(assert (= (and b!2866672 (not c!462967)) b!2866676))

(assert (= (and b!2866676 c!462961) b!2866681))

(assert (= (and b!2866676 (not c!462961)) b!2866677))

(assert (= (and b!2866677 c!462962) b!2866683))

(assert (= (and b!2866677 (not c!462962)) b!2866682))

(assert (= (and b!2866683 c!462965) b!2866679))

(assert (= (and b!2866683 (not c!462965)) b!2866686))

(assert (= (and b!2866682 c!462963) b!2866674))

(assert (= (and b!2866682 (not c!462963)) b!2866685))

(assert (= (and b!2866674 c!462960) b!2866678))

(assert (= (and b!2866674 (not c!462960)) b!2866675))

(assert (= (or b!2866686 b!2866674) bm!184946))

(assert (= (or b!2866683 b!2866682) bm!184947))

(declare-fun m!3286929 () Bool)

(assert (=> bm!184946 m!3286929))

(declare-fun m!3286931 () Bool)

(assert (=> b!2866678 m!3286931))

(declare-fun m!3286933 () Bool)

(assert (=> bm!184947 m!3286933))

(assert (=> b!2866540 d!828803))

(declare-fun d!828805 () Bool)

(assert (=> d!828805 (= (isDefined!4992 (getLanguageWitness!370 c!7184)) (not (isEmpty!18682 (getLanguageWitness!370 c!7184))))))

(declare-fun bs!521617 () Bool)

(assert (= bs!521617 d!828805))

(assert (=> bs!521617 m!3286879))

(declare-fun m!3286935 () Bool)

(assert (=> bs!521617 m!3286935))

(assert (=> b!2866539 d!828805))

(declare-fun bs!521618 () Bool)

(declare-fun d!828807 () Bool)

(assert (= bs!521618 (and d!828807 d!828789)))

(declare-fun lambda!106812 () Int)

(assert (=> bs!521618 (= lambda!106812 lambda!106808)))

(declare-fun b!2866687 () Bool)

(declare-fun e!1814774 () Option!6382)

(declare-fun lt!1017016 () Option!6382)

(declare-fun lt!1017014 () Option!6382)

(assert (=> b!2866687 (= e!1814774 (Some!6381 (++!8152 (v!34503 lt!1017016) (v!34503 lt!1017014))))))

(declare-fun b!2866688 () Bool)

(declare-fun e!1814772 () Option!6382)

(assert (=> b!2866688 (= e!1814772 (Some!6381 Nil!34310))))

(declare-fun b!2866689 () Bool)

(declare-fun e!1814773 () Option!6382)

(assert (=> b!2866689 (= e!1814772 e!1814773)))

(assert (=> b!2866689 (= lt!1017016 (getLanguageWitness!371 (h!39729 (exprs!3163 c!7184))))))

(declare-fun c!462970 () Bool)

(assert (=> b!2866689 (= c!462970 ((_ is Some!6381) lt!1017016))))

(declare-fun b!2866691 () Bool)

(declare-fun c!462969 () Bool)

(assert (=> b!2866691 (= c!462969 ((_ is Some!6381) lt!1017014))))

(assert (=> b!2866691 (= lt!1017014 (getLanguageWitness!370 (Context!5327 (t!233476 (exprs!3163 c!7184)))))))

(assert (=> b!2866691 (= e!1814773 e!1814774)))

(declare-fun b!2866692 () Bool)

(assert (=> b!2866692 (= e!1814774 None!6381)))

(declare-fun lt!1017015 () Option!6382)

(assert (=> d!828807 (= (isEmpty!18682 lt!1017015) (exists!1132 (exprs!3163 c!7184) lambda!106812))))

(assert (=> d!828807 (= lt!1017015 e!1814772)))

(declare-fun c!462968 () Bool)

(assert (=> d!828807 (= c!462968 ((_ is Cons!34309) (exprs!3163 c!7184)))))

(assert (=> d!828807 (= (getLanguageWitness!370 c!7184) lt!1017015)))

(declare-fun b!2866690 () Bool)

(assert (=> b!2866690 (= e!1814773 None!6381)))

(assert (= (and d!828807 c!462968) b!2866689))

(assert (= (and d!828807 (not c!462968)) b!2866688))

(assert (= (and b!2866689 c!462970) b!2866691))

(assert (= (and b!2866689 (not c!462970)) b!2866690))

(assert (= (and b!2866691 c!462969) b!2866687))

(assert (= (and b!2866691 (not c!462969)) b!2866692))

(declare-fun m!3286937 () Bool)

(assert (=> b!2866687 m!3286937))

(assert (=> b!2866689 m!3286883))

(assert (=> b!2866691 m!3286885))

(declare-fun m!3286939 () Bool)

(assert (=> d!828807 m!3286939))

(declare-fun m!3286941 () Bool)

(assert (=> d!828807 m!3286941))

(assert (=> b!2866539 d!828807))

(declare-fun bs!521619 () Bool)

(declare-fun d!828809 () Bool)

(assert (= bs!521619 (and d!828809 d!828789)))

(declare-fun lambda!106815 () Int)

(assert (=> bs!521619 (= lambda!106815 lambda!106808)))

(declare-fun bs!521620 () Bool)

(assert (= bs!521620 (and d!828809 d!828807)))

(assert (=> bs!521620 (= lambda!106815 lambda!106812)))

(assert (=> d!828809 (= (lostCause!795 c!7184) (exists!1132 (exprs!3163 c!7184) lambda!106815))))

(declare-fun bs!521621 () Bool)

(assert (= bs!521621 d!828809))

(declare-fun m!3286943 () Bool)

(assert (=> bs!521621 m!3286943))

(assert (=> start!279706 d!828809))

(declare-fun bs!521622 () Bool)

(declare-fun d!828811 () Bool)

(assert (= bs!521622 (and d!828811 d!828789)))

(declare-fun lambda!106818 () Int)

(assert (=> bs!521622 (not (= lambda!106818 lambda!106808))))

(declare-fun bs!521623 () Bool)

(assert (= bs!521623 (and d!828811 d!828807)))

(assert (=> bs!521623 (not (= lambda!106818 lambda!106812))))

(declare-fun bs!521624 () Bool)

(assert (= bs!521624 (and d!828811 d!828809)))

(assert (=> bs!521624 (not (= lambda!106818 lambda!106815))))

(declare-fun forall!7059 (List!34433 Int) Bool)

(assert (=> d!828811 (= (inv!46344 c!7184) (forall!7059 (exprs!3163 c!7184) lambda!106818))))

(declare-fun bs!521625 () Bool)

(assert (= bs!521625 d!828811))

(declare-fun m!3286945 () Bool)

(assert (=> bs!521625 m!3286945))

(assert (=> start!279706 d!828811))

(declare-fun b!2866697 () Bool)

(declare-fun e!1814777 () Bool)

(declare-fun tp!922955 () Bool)

(declare-fun tp!922956 () Bool)

(assert (=> b!2866697 (= e!1814777 (and tp!922955 tp!922956))))

(assert (=> b!2866542 (= tp!922944 e!1814777)))

(assert (= (and b!2866542 ((_ is Cons!34309) (exprs!3163 c!7184))) b!2866697))

(check-sat (not b!2866689) (not d!828809) (not b!2866691) (not b!2866630) (not d!828807) (not b!2866687) (not b!2866697) (not b!2866628) (not d!828789) (not bm!184946) (not d!828811) (not b!2866632) (not b!2866678) (not bm!184947) (not d!828805))
(check-sat)
