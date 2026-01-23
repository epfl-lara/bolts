; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!544216 () Bool)

(assert start!544216)

(declare-fun b!5139926 () Bool)

(declare-fun e!3205774 () Bool)

(declare-fun tp!1433792 () Bool)

(assert (=> b!5139926 (= e!3205774 tp!1433792)))

(declare-fun b!5139927 () Bool)

(declare-fun e!3205775 () Bool)

(declare-datatypes ((C!29188 0))(
  ( (C!29189 (val!24246 Int)) )
))
(declare-datatypes ((Regex!14461 0))(
  ( (ElementMatch!14461 (c!884991 C!29188)) (Concat!23306 (regOne!29434 Regex!14461) (regTwo!29434 Regex!14461)) (EmptyExpr!14461) (Star!14461 (reg!14790 Regex!14461)) (EmptyLang!14461) (Union!14461 (regOne!29435 Regex!14461) (regTwo!29435 Regex!14461)) )
))
(declare-fun expr!117 () Regex!14461)

(declare-fun regexDepth!133 (Regex!14461) Int)

(assert (=> b!5139927 (= e!3205775 (< (regexDepth!133 expr!117) 0))))

(declare-fun b!5139928 () Bool)

(declare-fun res!2189179 () Bool)

(assert (=> b!5139928 (=> (not res!2189179) (not e!3205775))))

(declare-fun e!3205777 () Bool)

(assert (=> b!5139928 (= res!2189179 e!3205777)))

(declare-fun res!2189178 () Bool)

(assert (=> b!5139928 (=> res!2189178 e!3205777)))

(declare-fun lostCause!1474 (Regex!14461) Bool)

(assert (=> b!5139928 (= res!2189178 (lostCause!1474 expr!117))))

(declare-fun b!5139929 () Bool)

(declare-fun e!3205776 () Bool)

(declare-fun tp_is_empty!38071 () Bool)

(assert (=> b!5139929 (= e!3205776 tp_is_empty!38071)))

(declare-fun b!5139930 () Bool)

(declare-datatypes ((List!59835 0))(
  ( (Nil!59711) (Cons!59711 (h!66159 Regex!14461) (t!372868 List!59835)) )
))
(declare-datatypes ((Context!7690 0))(
  ( (Context!7691 (exprs!4345 List!59835)) )
))
(declare-fun ctx!100 () Context!7690)

(declare-fun lostCause!1475 (Context!7690) Bool)

(assert (=> b!5139930 (= e!3205777 (lostCause!1475 ctx!100))))

(declare-fun res!2189180 () Bool)

(assert (=> start!544216 (=> (not res!2189180) (not e!3205775))))

(declare-fun validRegex!6316 (Regex!14461) Bool)

(assert (=> start!544216 (= res!2189180 (validRegex!6316 expr!117))))

(assert (=> start!544216 e!3205775))

(assert (=> start!544216 e!3205776))

(declare-fun inv!79333 (Context!7690) Bool)

(assert (=> start!544216 (and (inv!79333 ctx!100) e!3205774)))

(declare-fun b!5139931 () Bool)

(declare-fun tp!1433788 () Bool)

(assert (=> b!5139931 (= e!3205776 tp!1433788)))

(declare-fun b!5139932 () Bool)

(declare-fun tp!1433793 () Bool)

(declare-fun tp!1433790 () Bool)

(assert (=> b!5139932 (= e!3205776 (and tp!1433793 tp!1433790))))

(declare-fun b!5139933 () Bool)

(declare-fun tp!1433791 () Bool)

(declare-fun tp!1433789 () Bool)

(assert (=> b!5139933 (= e!3205776 (and tp!1433791 tp!1433789))))

(assert (= (and start!544216 res!2189180) b!5139928))

(assert (= (and b!5139928 (not res!2189178)) b!5139930))

(assert (= (and b!5139928 res!2189179) b!5139927))

(get-info :version)

(assert (= (and start!544216 ((_ is ElementMatch!14461) expr!117)) b!5139929))

(assert (= (and start!544216 ((_ is Concat!23306) expr!117)) b!5139933))

(assert (= (and start!544216 ((_ is Star!14461) expr!117)) b!5139931))

(assert (= (and start!544216 ((_ is Union!14461) expr!117)) b!5139932))

(assert (= start!544216 b!5139926))

(declare-fun m!6204246 () Bool)

(assert (=> b!5139927 m!6204246))

(declare-fun m!6204248 () Bool)

(assert (=> b!5139928 m!6204248))

(declare-fun m!6204250 () Bool)

(assert (=> b!5139930 m!6204250))

(declare-fun m!6204252 () Bool)

(assert (=> start!544216 m!6204252))

(declare-fun m!6204254 () Bool)

(assert (=> start!544216 m!6204254))

(check-sat (not b!5139932) (not b!5139933) (not b!5139928) (not b!5139926) (not start!544216) (not b!5139927) (not b!5139931) tp_is_empty!38071 (not b!5139930))
(check-sat)
(get-model)

(declare-fun d!1662620 () Bool)

(declare-fun lostCauseFct!343 (Regex!14461) Bool)

(assert (=> d!1662620 (= (lostCause!1474 expr!117) (lostCauseFct!343 expr!117))))

(declare-fun bs!1200658 () Bool)

(assert (= bs!1200658 d!1662620))

(declare-fun m!6204256 () Bool)

(assert (=> bs!1200658 m!6204256))

(assert (=> b!5139928 d!1662620))

(declare-fun d!1662624 () Bool)

(declare-fun lambda!256381 () Int)

(declare-fun exists!1775 (List!59835 Int) Bool)

(assert (=> d!1662624 (= (lostCause!1475 ctx!100) (exists!1775 (exprs!4345 ctx!100) lambda!256381))))

(declare-fun bs!1200663 () Bool)

(assert (= bs!1200663 d!1662624))

(declare-fun m!6204280 () Bool)

(assert (=> bs!1200663 m!6204280))

(assert (=> b!5139930 d!1662624))

(declare-fun b!5140065 () Bool)

(declare-fun e!3205856 () Bool)

(declare-fun e!3205858 () Bool)

(assert (=> b!5140065 (= e!3205856 e!3205858)))

(declare-fun c!885024 () Bool)

(assert (=> b!5140065 (= c!885024 ((_ is Union!14461) expr!117))))

(declare-fun b!5140066 () Bool)

(declare-fun res!2189216 () Bool)

(declare-fun e!3205859 () Bool)

(assert (=> b!5140066 (=> (not res!2189216) (not e!3205859))))

(declare-fun call!358693 () Bool)

(assert (=> b!5140066 (= res!2189216 call!358693)))

(assert (=> b!5140066 (= e!3205858 e!3205859)))

(declare-fun bm!358687 () Bool)

(declare-fun call!358694 () Bool)

(assert (=> bm!358687 (= call!358694 (validRegex!6316 (ite c!885024 (regTwo!29435 expr!117) (regTwo!29434 expr!117))))))

(declare-fun b!5140067 () Bool)

(declare-fun e!3205855 () Bool)

(assert (=> b!5140067 (= e!3205856 e!3205855)))

(declare-fun res!2189217 () Bool)

(declare-fun nullable!4818 (Regex!14461) Bool)

(assert (=> b!5140067 (= res!2189217 (not (nullable!4818 (reg!14790 expr!117))))))

(assert (=> b!5140067 (=> (not res!2189217) (not e!3205855))))

(declare-fun d!1662634 () Bool)

(declare-fun res!2189215 () Bool)

(declare-fun e!3205857 () Bool)

(assert (=> d!1662634 (=> res!2189215 e!3205857)))

(assert (=> d!1662634 (= res!2189215 ((_ is ElementMatch!14461) expr!117))))

(assert (=> d!1662634 (= (validRegex!6316 expr!117) e!3205857)))

(declare-fun b!5140068 () Bool)

(declare-fun e!3205853 () Bool)

(assert (=> b!5140068 (= e!3205853 call!358694)))

(declare-fun b!5140069 () Bool)

(declare-fun e!3205854 () Bool)

(assert (=> b!5140069 (= e!3205854 e!3205853)))

(declare-fun res!2189219 () Bool)

(assert (=> b!5140069 (=> (not res!2189219) (not e!3205853))))

(assert (=> b!5140069 (= res!2189219 call!358693)))

(declare-fun b!5140070 () Bool)

(assert (=> b!5140070 (= e!3205857 e!3205856)))

(declare-fun c!885023 () Bool)

(assert (=> b!5140070 (= c!885023 ((_ is Star!14461) expr!117))))

(declare-fun bm!358688 () Bool)

(declare-fun call!358692 () Bool)

(assert (=> bm!358688 (= call!358693 call!358692)))

(declare-fun b!5140071 () Bool)

(declare-fun res!2189218 () Bool)

(assert (=> b!5140071 (=> res!2189218 e!3205854)))

(assert (=> b!5140071 (= res!2189218 (not ((_ is Concat!23306) expr!117)))))

(assert (=> b!5140071 (= e!3205858 e!3205854)))

(declare-fun b!5140072 () Bool)

(assert (=> b!5140072 (= e!3205859 call!358694)))

(declare-fun b!5140073 () Bool)

(assert (=> b!5140073 (= e!3205855 call!358692)))

(declare-fun bm!358689 () Bool)

(assert (=> bm!358689 (= call!358692 (validRegex!6316 (ite c!885023 (reg!14790 expr!117) (ite c!885024 (regOne!29435 expr!117) (regOne!29434 expr!117)))))))

(assert (= (and d!1662634 (not res!2189215)) b!5140070))

(assert (= (and b!5140070 c!885023) b!5140067))

(assert (= (and b!5140070 (not c!885023)) b!5140065))

(assert (= (and b!5140067 res!2189217) b!5140073))

(assert (= (and b!5140065 c!885024) b!5140066))

(assert (= (and b!5140065 (not c!885024)) b!5140071))

(assert (= (and b!5140066 res!2189216) b!5140072))

(assert (= (and b!5140071 (not res!2189218)) b!5140069))

(assert (= (and b!5140069 res!2189219) b!5140068))

(assert (= (or b!5140072 b!5140068) bm!358687))

(assert (= (or b!5140066 b!5140069) bm!358688))

(assert (= (or b!5140073 bm!358688) bm!358689))

(declare-fun m!6204282 () Bool)

(assert (=> bm!358687 m!6204282))

(declare-fun m!6204284 () Bool)

(assert (=> b!5140067 m!6204284))

(declare-fun m!6204286 () Bool)

(assert (=> bm!358689 m!6204286))

(assert (=> start!544216 d!1662634))

(declare-fun bs!1200664 () Bool)

(declare-fun d!1662636 () Bool)

(assert (= bs!1200664 (and d!1662636 d!1662624)))

(declare-fun lambda!256384 () Int)

(assert (=> bs!1200664 (not (= lambda!256384 lambda!256381))))

(declare-fun forall!13915 (List!59835 Int) Bool)

(assert (=> d!1662636 (= (inv!79333 ctx!100) (forall!13915 (exprs!4345 ctx!100) lambda!256384))))

(declare-fun bs!1200665 () Bool)

(assert (= bs!1200665 d!1662636))

(declare-fun m!6204288 () Bool)

(assert (=> bs!1200665 m!6204288))

(assert (=> start!544216 d!1662636))

(declare-fun b!5140108 () Bool)

(declare-fun res!2189227 () Bool)

(declare-fun e!3205885 () Bool)

(assert (=> b!5140108 (=> (not res!2189227) (not e!3205885))))

(declare-fun lt!2120362 () Int)

(declare-fun call!358710 () Int)

(assert (=> b!5140108 (= res!2189227 (> lt!2120362 call!358710))))

(declare-fun e!3205887 () Bool)

(assert (=> b!5140108 (= e!3205887 e!3205885)))

(declare-fun b!5140109 () Bool)

(declare-fun e!3205880 () Int)

(declare-fun call!358709 () Int)

(assert (=> b!5140109 (= e!3205880 (+ 1 call!358709))))

(declare-fun bm!358704 () Bool)

(declare-fun call!358715 () Int)

(declare-fun c!885044 () Bool)

(assert (=> bm!358704 (= call!358715 (regexDepth!133 (ite c!885044 (regOne!29435 expr!117) (regTwo!29434 expr!117))))))

(declare-fun b!5140110 () Bool)

(declare-fun e!3205884 () Int)

(assert (=> b!5140110 (= e!3205884 1)))

(declare-fun b!5140111 () Bool)

(declare-fun e!3205889 () Int)

(assert (=> b!5140111 (= e!3205889 e!3205880)))

(declare-fun c!885041 () Bool)

(assert (=> b!5140111 (= c!885041 ((_ is Concat!23306) expr!117))))

(declare-fun c!885039 () Bool)

(declare-fun bm!358705 () Bool)

(declare-fun call!358713 () Int)

(declare-fun c!885042 () Bool)

(assert (=> bm!358705 (= call!358713 (regexDepth!133 (ite c!885042 (reg!14790 expr!117) (ite c!885039 (regOne!29435 expr!117) (regTwo!29434 expr!117)))))))

(declare-fun b!5140112 () Bool)

(assert (=> b!5140112 (= c!885039 ((_ is Union!14461) expr!117))))

(declare-fun e!3205881 () Int)

(assert (=> b!5140112 (= e!3205881 e!3205889)))

(declare-fun b!5140113 () Bool)

(assert (=> b!5140113 (= e!3205881 (+ 1 call!358713))))

(declare-fun b!5140114 () Bool)

(declare-fun e!3205883 () Bool)

(declare-fun call!358712 () Int)

(assert (=> b!5140114 (= e!3205883 (> lt!2120362 call!358712))))

(declare-fun b!5140115 () Bool)

(assert (=> b!5140115 (= e!3205884 e!3205881)))

(assert (=> b!5140115 (= c!885042 ((_ is Star!14461) expr!117))))

(declare-fun b!5140116 () Bool)

(declare-fun c!885040 () Bool)

(assert (=> b!5140116 (= c!885040 ((_ is Star!14461) expr!117))))

(declare-fun e!3205888 () Bool)

(assert (=> b!5140116 (= e!3205887 e!3205888)))

(declare-fun b!5140117 () Bool)

(declare-fun e!3205886 () Bool)

(assert (=> b!5140117 (= e!3205886 e!3205883)))

(declare-fun res!2189226 () Bool)

(assert (=> b!5140117 (= res!2189226 (> lt!2120362 call!358715))))

(assert (=> b!5140117 (=> (not res!2189226) (not e!3205883))))

(declare-fun bm!358706 () Bool)

(assert (=> bm!358706 (= call!358710 call!358712)))

(declare-fun b!5140118 () Bool)

(assert (=> b!5140118 (= e!3205886 e!3205887)))

(declare-fun c!885043 () Bool)

(assert (=> b!5140118 (= c!885043 ((_ is Concat!23306) expr!117))))

(declare-fun bm!358707 () Bool)

(declare-fun call!358711 () Int)

(declare-fun call!358714 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!358707 (= call!358709 (maxBigInt!0 (ite c!885039 call!358714 call!358711) (ite c!885039 call!358711 call!358714)))))

(declare-fun b!5140119 () Bool)

(assert (=> b!5140119 (= e!3205888 (> lt!2120362 call!358710))))

(declare-fun bm!358708 () Bool)

(assert (=> bm!358708 (= call!358711 (regexDepth!133 (ite c!885039 (regTwo!29435 expr!117) (regOne!29434 expr!117))))))

(declare-fun b!5140120 () Bool)

(assert (=> b!5140120 (= e!3205880 1)))

(declare-fun bm!358709 () Bool)

(assert (=> bm!358709 (= call!358712 (regexDepth!133 (ite c!885044 (regTwo!29435 expr!117) (ite c!885043 (regOne!29434 expr!117) (reg!14790 expr!117)))))))

(declare-fun b!5140121 () Bool)

(assert (=> b!5140121 (= e!3205889 (+ 1 call!358709))))

(declare-fun d!1662638 () Bool)

(declare-fun e!3205882 () Bool)

(assert (=> d!1662638 e!3205882))

(declare-fun res!2189228 () Bool)

(assert (=> d!1662638 (=> (not res!2189228) (not e!3205882))))

(assert (=> d!1662638 (= res!2189228 (> lt!2120362 0))))

(assert (=> d!1662638 (= lt!2120362 e!3205884)))

(declare-fun c!885045 () Bool)

(assert (=> d!1662638 (= c!885045 ((_ is ElementMatch!14461) expr!117))))

(assert (=> d!1662638 (= (regexDepth!133 expr!117) lt!2120362)))

(declare-fun b!5140122 () Bool)

(assert (=> b!5140122 (= e!3205888 (= lt!2120362 1))))

(declare-fun bm!358710 () Bool)

(assert (=> bm!358710 (= call!358714 call!358713)))

(declare-fun b!5140123 () Bool)

(assert (=> b!5140123 (= e!3205885 (> lt!2120362 call!358715))))

(declare-fun b!5140124 () Bool)

(assert (=> b!5140124 (= e!3205882 e!3205886)))

(assert (=> b!5140124 (= c!885044 ((_ is Union!14461) expr!117))))

(assert (= (and d!1662638 c!885045) b!5140110))

(assert (= (and d!1662638 (not c!885045)) b!5140115))

(assert (= (and b!5140115 c!885042) b!5140113))

(assert (= (and b!5140115 (not c!885042)) b!5140112))

(assert (= (and b!5140112 c!885039) b!5140121))

(assert (= (and b!5140112 (not c!885039)) b!5140111))

(assert (= (and b!5140111 c!885041) b!5140109))

(assert (= (and b!5140111 (not c!885041)) b!5140120))

(assert (= (or b!5140121 b!5140109) bm!358708))

(assert (= (or b!5140121 b!5140109) bm!358710))

(assert (= (or b!5140121 b!5140109) bm!358707))

(assert (= (or b!5140113 bm!358710) bm!358705))

(assert (= (and d!1662638 res!2189228) b!5140124))

(assert (= (and b!5140124 c!885044) b!5140117))

(assert (= (and b!5140124 (not c!885044)) b!5140118))

(assert (= (and b!5140117 res!2189226) b!5140114))

(assert (= (and b!5140118 c!885043) b!5140108))

(assert (= (and b!5140118 (not c!885043)) b!5140116))

(assert (= (and b!5140108 res!2189227) b!5140123))

(assert (= (and b!5140116 c!885040) b!5140119))

(assert (= (and b!5140116 (not c!885040)) b!5140122))

(assert (= (or b!5140108 b!5140119) bm!358706))

(assert (= (or b!5140114 bm!358706) bm!358709))

(assert (= (or b!5140117 b!5140123) bm!358704))

(declare-fun m!6204290 () Bool)

(assert (=> bm!358709 m!6204290))

(declare-fun m!6204292 () Bool)

(assert (=> bm!358707 m!6204292))

(declare-fun m!6204294 () Bool)

(assert (=> bm!358705 m!6204294))

(declare-fun m!6204296 () Bool)

(assert (=> bm!358708 m!6204296))

(declare-fun m!6204298 () Bool)

(assert (=> bm!358704 m!6204298))

(assert (=> b!5139927 d!1662638))

(declare-fun b!5140138 () Bool)

(declare-fun e!3205892 () Bool)

(declare-fun tp!1433847 () Bool)

(declare-fun tp!1433846 () Bool)

(assert (=> b!5140138 (= e!3205892 (and tp!1433847 tp!1433846))))

(declare-fun b!5140135 () Bool)

(assert (=> b!5140135 (= e!3205892 tp_is_empty!38071)))

(assert (=> b!5139933 (= tp!1433791 e!3205892)))

(declare-fun b!5140137 () Bool)

(declare-fun tp!1433849 () Bool)

(assert (=> b!5140137 (= e!3205892 tp!1433849)))

(declare-fun b!5140136 () Bool)

(declare-fun tp!1433845 () Bool)

(declare-fun tp!1433848 () Bool)

(assert (=> b!5140136 (= e!3205892 (and tp!1433845 tp!1433848))))

(assert (= (and b!5139933 ((_ is ElementMatch!14461) (regOne!29434 expr!117))) b!5140135))

(assert (= (and b!5139933 ((_ is Concat!23306) (regOne!29434 expr!117))) b!5140136))

(assert (= (and b!5139933 ((_ is Star!14461) (regOne!29434 expr!117))) b!5140137))

(assert (= (and b!5139933 ((_ is Union!14461) (regOne!29434 expr!117))) b!5140138))

(declare-fun b!5140142 () Bool)

(declare-fun e!3205893 () Bool)

(declare-fun tp!1433852 () Bool)

(declare-fun tp!1433851 () Bool)

(assert (=> b!5140142 (= e!3205893 (and tp!1433852 tp!1433851))))

(declare-fun b!5140139 () Bool)

(assert (=> b!5140139 (= e!3205893 tp_is_empty!38071)))

(assert (=> b!5139933 (= tp!1433789 e!3205893)))

(declare-fun b!5140141 () Bool)

(declare-fun tp!1433854 () Bool)

(assert (=> b!5140141 (= e!3205893 tp!1433854)))

(declare-fun b!5140140 () Bool)

(declare-fun tp!1433850 () Bool)

(declare-fun tp!1433853 () Bool)

(assert (=> b!5140140 (= e!3205893 (and tp!1433850 tp!1433853))))

(assert (= (and b!5139933 ((_ is ElementMatch!14461) (regTwo!29434 expr!117))) b!5140139))

(assert (= (and b!5139933 ((_ is Concat!23306) (regTwo!29434 expr!117))) b!5140140))

(assert (= (and b!5139933 ((_ is Star!14461) (regTwo!29434 expr!117))) b!5140141))

(assert (= (and b!5139933 ((_ is Union!14461) (regTwo!29434 expr!117))) b!5140142))

(declare-fun b!5140146 () Bool)

(declare-fun e!3205894 () Bool)

(declare-fun tp!1433857 () Bool)

(declare-fun tp!1433856 () Bool)

(assert (=> b!5140146 (= e!3205894 (and tp!1433857 tp!1433856))))

(declare-fun b!5140143 () Bool)

(assert (=> b!5140143 (= e!3205894 tp_is_empty!38071)))

(assert (=> b!5139931 (= tp!1433788 e!3205894)))

(declare-fun b!5140145 () Bool)

(declare-fun tp!1433859 () Bool)

(assert (=> b!5140145 (= e!3205894 tp!1433859)))

(declare-fun b!5140144 () Bool)

(declare-fun tp!1433855 () Bool)

(declare-fun tp!1433858 () Bool)

(assert (=> b!5140144 (= e!3205894 (and tp!1433855 tp!1433858))))

(assert (= (and b!5139931 ((_ is ElementMatch!14461) (reg!14790 expr!117))) b!5140143))

(assert (= (and b!5139931 ((_ is Concat!23306) (reg!14790 expr!117))) b!5140144))

(assert (= (and b!5139931 ((_ is Star!14461) (reg!14790 expr!117))) b!5140145))

(assert (= (and b!5139931 ((_ is Union!14461) (reg!14790 expr!117))) b!5140146))

(declare-fun b!5140150 () Bool)

(declare-fun e!3205895 () Bool)

(declare-fun tp!1433862 () Bool)

(declare-fun tp!1433861 () Bool)

(assert (=> b!5140150 (= e!3205895 (and tp!1433862 tp!1433861))))

(declare-fun b!5140147 () Bool)

(assert (=> b!5140147 (= e!3205895 tp_is_empty!38071)))

(assert (=> b!5139932 (= tp!1433793 e!3205895)))

(declare-fun b!5140149 () Bool)

(declare-fun tp!1433864 () Bool)

(assert (=> b!5140149 (= e!3205895 tp!1433864)))

(declare-fun b!5140148 () Bool)

(declare-fun tp!1433860 () Bool)

(declare-fun tp!1433863 () Bool)

(assert (=> b!5140148 (= e!3205895 (and tp!1433860 tp!1433863))))

(assert (= (and b!5139932 ((_ is ElementMatch!14461) (regOne!29435 expr!117))) b!5140147))

(assert (= (and b!5139932 ((_ is Concat!23306) (regOne!29435 expr!117))) b!5140148))

(assert (= (and b!5139932 ((_ is Star!14461) (regOne!29435 expr!117))) b!5140149))

(assert (= (and b!5139932 ((_ is Union!14461) (regOne!29435 expr!117))) b!5140150))

(declare-fun b!5140154 () Bool)

(declare-fun e!3205896 () Bool)

(declare-fun tp!1433867 () Bool)

(declare-fun tp!1433866 () Bool)

(assert (=> b!5140154 (= e!3205896 (and tp!1433867 tp!1433866))))

(declare-fun b!5140151 () Bool)

(assert (=> b!5140151 (= e!3205896 tp_is_empty!38071)))

(assert (=> b!5139932 (= tp!1433790 e!3205896)))

(declare-fun b!5140153 () Bool)

(declare-fun tp!1433869 () Bool)

(assert (=> b!5140153 (= e!3205896 tp!1433869)))

(declare-fun b!5140152 () Bool)

(declare-fun tp!1433865 () Bool)

(declare-fun tp!1433868 () Bool)

(assert (=> b!5140152 (= e!3205896 (and tp!1433865 tp!1433868))))

(assert (= (and b!5139932 ((_ is ElementMatch!14461) (regTwo!29435 expr!117))) b!5140151))

(assert (= (and b!5139932 ((_ is Concat!23306) (regTwo!29435 expr!117))) b!5140152))

(assert (= (and b!5139932 ((_ is Star!14461) (regTwo!29435 expr!117))) b!5140153))

(assert (= (and b!5139932 ((_ is Union!14461) (regTwo!29435 expr!117))) b!5140154))

(declare-fun b!5140159 () Bool)

(declare-fun e!3205899 () Bool)

(declare-fun tp!1433874 () Bool)

(declare-fun tp!1433875 () Bool)

(assert (=> b!5140159 (= e!3205899 (and tp!1433874 tp!1433875))))

(assert (=> b!5139926 (= tp!1433792 e!3205899)))

(assert (= (and b!5139926 ((_ is Cons!59711) (exprs!4345 ctx!100))) b!5140159))

(check-sat (not b!5140145) (not b!5140140) tp_is_empty!38071 (not bm!358704) (not b!5140149) (not d!1662620) (not b!5140141) (not b!5140136) (not b!5140146) (not b!5140137) (not d!1662624) (not b!5140154) (not b!5140150) (not b!5140152) (not b!5140142) (not b!5140067) (not b!5140159) (not bm!358709) (not bm!358707) (not bm!358708) (not bm!358705) (not bm!358687) (not b!5140138) (not b!5140148) (not bm!358689) (not b!5140153) (not b!5140144) (not d!1662636))
(check-sat)
