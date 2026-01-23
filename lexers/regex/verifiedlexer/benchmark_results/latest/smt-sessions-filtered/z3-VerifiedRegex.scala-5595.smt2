; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!280792 () Bool)

(assert start!280792)

(declare-fun b!2877402 () Bool)

(declare-fun res!1192975 () Bool)

(declare-fun e!1820753 () Bool)

(assert (=> b!2877402 (=> (not res!1192975) (not e!1820753))))

(declare-datatypes ((C!17672 0))(
  ( (C!17673 (val!10870 Int)) )
))
(declare-datatypes ((Regex!8745 0))(
  ( (ElementMatch!8745 (c!466558 C!17672)) (Concat!14066 (regOne!18002 Regex!8745) (regTwo!18002 Regex!8745)) (EmptyExpr!8745) (Star!8745 (reg!9074 Regex!8745)) (EmptyLang!8745) (Union!8745 (regOne!18003 Regex!8745) (regTwo!18003 Regex!8745)) )
))
(declare-datatypes ((List!34526 0))(
  ( (Nil!34402) (Cons!34402 (h!39822 Regex!8745) (t!233569 List!34526)) )
))
(declare-datatypes ((Context!5410 0))(
  ( (Context!5411 (exprs!3205 List!34526)) )
))
(declare-fun c!7184 () Context!5410)

(get-info :version)

(assert (=> b!2877402 (= res!1192975 ((_ is Cons!34402) (exprs!3205 c!7184)))))

(declare-fun b!2877403 () Bool)

(declare-fun e!1820756 () Bool)

(declare-fun tp!923892 () Bool)

(assert (=> b!2877403 (= e!1820756 tp!923892)))

(declare-fun b!2877404 () Bool)

(declare-fun e!1820757 () Bool)

(declare-fun e!1820755 () Bool)

(assert (=> b!2877404 (= e!1820757 (not e!1820755))))

(declare-fun res!1192977 () Bool)

(assert (=> b!2877404 (=> res!1192977 e!1820755)))

(declare-datatypes ((List!34527 0))(
  ( (Nil!34403) (Cons!34403 (h!39823 C!17672) (t!233570 List!34527)) )
))
(declare-datatypes ((Option!6420 0))(
  ( (None!6419) (Some!6419 (v!34545 List!34527)) )
))
(declare-fun lt!1018985 () Option!6420)

(declare-fun matchR!3745 (Regex!8745 List!34527) Bool)

(assert (=> b!2877404 (= res!1192977 (not (matchR!3745 (h!39822 (exprs!3205 c!7184)) (v!34545 lt!1018985))))))

(declare-fun lt!1018984 () Context!5410)

(declare-fun lt!1018982 () Option!6420)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun matchZipper!487 ((InoxSet Context!5410) List!34527) Bool)

(declare-fun get!10344 (Option!6420) List!34527)

(assert (=> b!2877404 (matchZipper!487 (store ((as const (Array Context!5410 Bool)) false) lt!1018984 true) (get!10344 lt!1018982))))

(declare-datatypes ((Unit!47991 0))(
  ( (Unit!47992) )
))
(declare-fun lt!1018987 () Unit!47991)

(declare-fun lemmaGetWitnessMatchesContext!44 (Context!5410) Unit!47991)

(assert (=> b!2877404 (= lt!1018987 (lemmaGetWitnessMatchesContext!44 lt!1018984))))

(assert (=> b!2877404 (matchR!3745 (h!39822 (exprs!3205 c!7184)) (get!10344 lt!1018985))))

(declare-fun lt!1018981 () Unit!47991)

(declare-fun lemmaGetWitnessMatches!52 (Regex!8745) Unit!47991)

(assert (=> b!2877404 (= lt!1018981 (lemmaGetWitnessMatches!52 (h!39822 (exprs!3205 c!7184))))))

(declare-fun res!1192978 () Bool)

(assert (=> start!280792 (=> (not res!1192978) (not e!1820753))))

(declare-fun lostCause!837 (Context!5410) Bool)

(assert (=> start!280792 (= res!1192978 (not (lostCause!837 c!7184)))))

(assert (=> start!280792 e!1820753))

(declare-fun inv!46449 (Context!5410) Bool)

(assert (=> start!280792 (and (inv!46449 c!7184) e!1820756)))

(declare-fun b!2877405 () Bool)

(assert (=> b!2877405 (= e!1820755 (inv!46449 lt!1018984))))

(declare-fun lt!1018980 () (InoxSet Context!5410))

(assert (=> b!2877405 (matchZipper!487 lt!1018980 (v!34545 lt!1018985))))

(declare-fun lt!1018986 () Unit!47991)

(declare-fun lt!1018983 () Context!5410)

(declare-datatypes ((List!34528 0))(
  ( (Nil!34404) (Cons!34404 (h!39824 Context!5410) (t!233571 List!34528)) )
))
(declare-fun theoremZipperRegexEquiv!119 ((InoxSet Context!5410) List!34528 Regex!8745 List!34527) Unit!47991)

(assert (=> b!2877405 (= lt!1018986 (theoremZipperRegexEquiv!119 lt!1018980 (Cons!34404 lt!1018983 Nil!34404) (h!39822 (exprs!3205 c!7184)) (v!34545 lt!1018985)))))

(assert (=> b!2877405 (= lt!1018980 (store ((as const (Array Context!5410 Bool)) false) lt!1018983 true))))

(assert (=> b!2877405 (= lt!1018983 (Context!5411 (Cons!34402 (h!39822 (exprs!3205 c!7184)) Nil!34402)))))

(declare-fun b!2877406 () Bool)

(declare-fun e!1820754 () Bool)

(assert (=> b!2877406 (= e!1820754 e!1820757)))

(declare-fun res!1192979 () Bool)

(assert (=> b!2877406 (=> (not res!1192979) (not e!1820757))))

(assert (=> b!2877406 (= res!1192979 ((_ is Some!6419) lt!1018982))))

(declare-fun getLanguageWitness!441 (Context!5410) Option!6420)

(assert (=> b!2877406 (= lt!1018982 (getLanguageWitness!441 lt!1018984))))

(assert (=> b!2877406 (= lt!1018984 (Context!5411 (t!233569 (exprs!3205 c!7184))))))

(declare-fun b!2877407 () Bool)

(assert (=> b!2877407 (= e!1820753 e!1820754)))

(declare-fun res!1192976 () Bool)

(assert (=> b!2877407 (=> (not res!1192976) (not e!1820754))))

(assert (=> b!2877407 (= res!1192976 ((_ is Some!6419) lt!1018985))))

(declare-fun getLanguageWitness!442 (Regex!8745) Option!6420)

(assert (=> b!2877407 (= lt!1018985 (getLanguageWitness!442 (h!39822 (exprs!3205 c!7184))))))

(assert (= (and start!280792 res!1192978) b!2877402))

(assert (= (and b!2877402 res!1192975) b!2877407))

(assert (= (and b!2877407 res!1192976) b!2877406))

(assert (= (and b!2877406 res!1192979) b!2877404))

(assert (= (and b!2877404 (not res!1192977)) b!2877405))

(assert (= start!280792 b!2877403))

(declare-fun m!3294959 () Bool)

(assert (=> b!2877406 m!3294959))

(declare-fun m!3294961 () Bool)

(assert (=> b!2877407 m!3294961))

(declare-fun m!3294963 () Bool)

(assert (=> b!2877405 m!3294963))

(declare-fun m!3294965 () Bool)

(assert (=> b!2877405 m!3294965))

(declare-fun m!3294967 () Bool)

(assert (=> b!2877405 m!3294967))

(declare-fun m!3294969 () Bool)

(assert (=> b!2877405 m!3294969))

(declare-fun m!3294971 () Bool)

(assert (=> start!280792 m!3294971))

(declare-fun m!3294973 () Bool)

(assert (=> start!280792 m!3294973))

(declare-fun m!3294975 () Bool)

(assert (=> b!2877404 m!3294975))

(declare-fun m!3294977 () Bool)

(assert (=> b!2877404 m!3294977))

(declare-fun m!3294979 () Bool)

(assert (=> b!2877404 m!3294979))

(declare-fun m!3294981 () Bool)

(assert (=> b!2877404 m!3294981))

(declare-fun m!3294983 () Bool)

(assert (=> b!2877404 m!3294983))

(assert (=> b!2877404 m!3294975))

(declare-fun m!3294985 () Bool)

(assert (=> b!2877404 m!3294985))

(assert (=> b!2877404 m!3294979))

(declare-fun m!3294987 () Bool)

(assert (=> b!2877404 m!3294987))

(declare-fun m!3294989 () Bool)

(assert (=> b!2877404 m!3294989))

(assert (=> b!2877404 m!3294981))

(check-sat (not b!2877406) (not b!2877405) (not start!280792) (not b!2877407) (not b!2877403) (not b!2877404))
(check-sat)
(get-model)

(declare-fun b!2877502 () Bool)

(declare-fun c!466593 () Bool)

(declare-fun lt!1019017 () Option!6420)

(assert (=> b!2877502 (= c!466593 ((_ is Some!6419) lt!1019017))))

(assert (=> b!2877502 (= lt!1019017 (getLanguageWitness!441 (Context!5411 (t!233569 (exprs!3205 lt!1018984)))))))

(declare-fun e!1820805 () Option!6420)

(declare-fun e!1820807 () Option!6420)

(assert (=> b!2877502 (= e!1820805 e!1820807)))

(declare-fun b!2877503 () Bool)

(assert (=> b!2877503 (= e!1820807 None!6419)))

(declare-fun b!2877504 () Bool)

(declare-fun e!1820806 () Option!6420)

(assert (=> b!2877504 (= e!1820806 (Some!6419 Nil!34403))))

(declare-fun d!831896 () Bool)

(declare-fun lt!1019016 () Option!6420)

(declare-fun lambda!107339 () Int)

(declare-fun isEmpty!18732 (Option!6420) Bool)

(declare-fun exists!1177 (List!34526 Int) Bool)

(assert (=> d!831896 (= (isEmpty!18732 lt!1019016) (exists!1177 (exprs!3205 lt!1018984) lambda!107339))))

(assert (=> d!831896 (= lt!1019016 e!1820806)))

(declare-fun c!466595 () Bool)

(assert (=> d!831896 (= c!466595 ((_ is Cons!34402) (exprs!3205 lt!1018984)))))

(assert (=> d!831896 (= (getLanguageWitness!441 lt!1018984) lt!1019016)))

(declare-fun b!2877505 () Bool)

(assert (=> b!2877505 (= e!1820806 e!1820805)))

(declare-fun lt!1019018 () Option!6420)

(assert (=> b!2877505 (= lt!1019018 (getLanguageWitness!442 (h!39822 (exprs!3205 lt!1018984))))))

(declare-fun c!466594 () Bool)

(assert (=> b!2877505 (= c!466594 ((_ is Some!6419) lt!1019018))))

(declare-fun b!2877506 () Bool)

(assert (=> b!2877506 (= e!1820805 None!6419)))

(declare-fun b!2877507 () Bool)

(declare-fun ++!8180 (List!34527 List!34527) List!34527)

(assert (=> b!2877507 (= e!1820807 (Some!6419 (++!8180 (v!34545 lt!1019018) (v!34545 lt!1019017))))))

(assert (= (and d!831896 c!466595) b!2877505))

(assert (= (and d!831896 (not c!466595)) b!2877504))

(assert (= (and b!2877505 c!466594) b!2877502))

(assert (= (and b!2877505 (not c!466594)) b!2877506))

(assert (= (and b!2877502 c!466593) b!2877507))

(assert (= (and b!2877502 (not c!466593)) b!2877503))

(declare-fun m!3295069 () Bool)

(assert (=> b!2877502 m!3295069))

(declare-fun m!3295071 () Bool)

(assert (=> d!831896 m!3295071))

(declare-fun m!3295073 () Bool)

(assert (=> d!831896 m!3295073))

(declare-fun m!3295075 () Bool)

(assert (=> b!2877505 m!3295075))

(declare-fun m!3295077 () Bool)

(assert (=> b!2877507 m!3295077))

(assert (=> b!2877406 d!831896))

(declare-fun bs!522908 () Bool)

(declare-fun d!831926 () Bool)

(assert (= bs!522908 (and d!831926 d!831896)))

(declare-fun lambda!107342 () Int)

(assert (=> bs!522908 (= lambda!107342 lambda!107339)))

(assert (=> d!831926 (= (lostCause!837 c!7184) (exists!1177 (exprs!3205 c!7184) lambda!107342))))

(declare-fun bs!522909 () Bool)

(assert (= bs!522909 d!831926))

(declare-fun m!3295079 () Bool)

(assert (=> bs!522909 m!3295079))

(assert (=> start!280792 d!831926))

(declare-fun bs!522910 () Bool)

(declare-fun d!831928 () Bool)

(assert (= bs!522910 (and d!831928 d!831896)))

(declare-fun lambda!107345 () Int)

(assert (=> bs!522910 (not (= lambda!107345 lambda!107339))))

(declare-fun bs!522911 () Bool)

(assert (= bs!522911 (and d!831928 d!831926)))

(assert (=> bs!522911 (not (= lambda!107345 lambda!107342))))

(declare-fun forall!7088 (List!34526 Int) Bool)

(assert (=> d!831928 (= (inv!46449 c!7184) (forall!7088 (exprs!3205 c!7184) lambda!107345))))

(declare-fun bs!522912 () Bool)

(assert (= bs!522912 d!831928))

(declare-fun m!3295081 () Bool)

(assert (=> bs!522912 m!3295081))

(assert (=> start!280792 d!831928))

(declare-fun b!2877593 () Bool)

(declare-fun e!1820851 () Option!6420)

(assert (=> b!2877593 (= e!1820851 None!6419)))

(declare-fun b!2877594 () Bool)

(declare-fun e!1820855 () Option!6420)

(declare-fun e!1820856 () Option!6420)

(assert (=> b!2877594 (= e!1820855 e!1820856)))

(declare-fun lt!1019034 () Option!6420)

(declare-fun call!186346 () Option!6420)

(assert (=> b!2877594 (= lt!1019034 call!186346)))

(declare-fun c!466636 () Bool)

(assert (=> b!2877594 (= c!466636 ((_ is Some!6419) lt!1019034))))

(declare-fun b!2877595 () Bool)

(declare-fun e!1820857 () Option!6420)

(assert (=> b!2877595 (= e!1820857 (Some!6419 Nil!34403))))

(declare-fun b!2877596 () Bool)

(declare-fun e!1820852 () Option!6420)

(declare-fun lt!1019036 () Option!6420)

(declare-fun lt!1019035 () Option!6420)

(assert (=> b!2877596 (= e!1820852 (Some!6419 (++!8180 (v!34545 lt!1019036) (v!34545 lt!1019035))))))

(declare-fun bm!186340 () Bool)

(declare-fun c!466641 () Bool)

(assert (=> bm!186340 (= call!186346 (getLanguageWitness!442 (ite c!466641 (regOne!18003 (h!39822 (exprs!3205 c!7184))) (regOne!18002 (h!39822 (exprs!3205 c!7184))))))))

(declare-fun b!2877597 () Bool)

(assert (=> b!2877597 (= e!1820856 lt!1019034)))

(declare-fun b!2877598 () Bool)

(declare-fun e!1820858 () Option!6420)

(assert (=> b!2877598 (= e!1820858 None!6419)))

(declare-fun b!2877599 () Bool)

(declare-fun e!1820854 () Option!6420)

(assert (=> b!2877599 (= e!1820854 (Some!6419 Nil!34403))))

(declare-fun b!2877600 () Bool)

(assert (=> b!2877600 (= e!1820857 e!1820858)))

(declare-fun c!466638 () Bool)

(assert (=> b!2877600 (= c!466638 ((_ is EmptyLang!8745) (h!39822 (exprs!3205 c!7184))))))

(declare-fun b!2877601 () Bool)

(declare-fun c!466637 () Bool)

(assert (=> b!2877601 (= c!466637 ((_ is ElementMatch!8745) (h!39822 (exprs!3205 c!7184))))))

(declare-fun e!1820853 () Option!6420)

(assert (=> b!2877601 (= e!1820858 e!1820853)))

(declare-fun b!2877602 () Bool)

(assert (=> b!2877602 (= e!1820853 (Some!6419 (Cons!34403 (c!466558 (h!39822 (exprs!3205 c!7184))) Nil!34403)))))

(declare-fun b!2877603 () Bool)

(declare-fun c!466643 () Bool)

(assert (=> b!2877603 (= c!466643 ((_ is Some!6419) lt!1019035))))

(declare-fun call!186345 () Option!6420)

(assert (=> b!2877603 (= lt!1019035 call!186345)))

(assert (=> b!2877603 (= e!1820851 e!1820852)))

(declare-fun b!2877604 () Bool)

(assert (=> b!2877604 (= e!1820852 None!6419)))

(declare-fun b!2877605 () Bool)

(assert (=> b!2877605 (= e!1820856 call!186345)))

(declare-fun d!831930 () Bool)

(declare-fun c!466639 () Bool)

(assert (=> d!831930 (= c!466639 ((_ is EmptyExpr!8745) (h!39822 (exprs!3205 c!7184))))))

(assert (=> d!831930 (= (getLanguageWitness!442 (h!39822 (exprs!3205 c!7184))) e!1820857)))

(declare-fun bm!186341 () Bool)

(assert (=> bm!186341 (= call!186345 (getLanguageWitness!442 (ite c!466641 (regTwo!18003 (h!39822 (exprs!3205 c!7184))) (regTwo!18002 (h!39822 (exprs!3205 c!7184))))))))

(declare-fun b!2877606 () Bool)

(assert (=> b!2877606 (= c!466641 ((_ is Union!8745) (h!39822 (exprs!3205 c!7184))))))

(assert (=> b!2877606 (= e!1820854 e!1820855)))

(declare-fun b!2877607 () Bool)

(assert (=> b!2877607 (= e!1820855 e!1820851)))

(assert (=> b!2877607 (= lt!1019036 call!186346)))

(declare-fun c!466642 () Bool)

(assert (=> b!2877607 (= c!466642 ((_ is Some!6419) lt!1019036))))

(declare-fun b!2877608 () Bool)

(assert (=> b!2877608 (= e!1820853 e!1820854)))

(declare-fun c!466640 () Bool)

(assert (=> b!2877608 (= c!466640 ((_ is Star!8745) (h!39822 (exprs!3205 c!7184))))))

(assert (= (and d!831930 c!466639) b!2877595))

(assert (= (and d!831930 (not c!466639)) b!2877600))

(assert (= (and b!2877600 c!466638) b!2877598))

(assert (= (and b!2877600 (not c!466638)) b!2877601))

(assert (= (and b!2877601 c!466637) b!2877602))

(assert (= (and b!2877601 (not c!466637)) b!2877608))

(assert (= (and b!2877608 c!466640) b!2877599))

(assert (= (and b!2877608 (not c!466640)) b!2877606))

(assert (= (and b!2877606 c!466641) b!2877594))

(assert (= (and b!2877606 (not c!466641)) b!2877607))

(assert (= (and b!2877594 c!466636) b!2877597))

(assert (= (and b!2877594 (not c!466636)) b!2877605))

(assert (= (and b!2877607 c!466642) b!2877603))

(assert (= (and b!2877607 (not c!466642)) b!2877593))

(assert (= (and b!2877603 c!466643) b!2877596))

(assert (= (and b!2877603 (not c!466643)) b!2877604))

(assert (= (or b!2877605 b!2877603) bm!186341))

(assert (= (or b!2877594 b!2877607) bm!186340))

(declare-fun m!3295089 () Bool)

(assert (=> b!2877596 m!3295089))

(declare-fun m!3295091 () Bool)

(assert (=> bm!186340 m!3295091))

(declare-fun m!3295093 () Bool)

(assert (=> bm!186341 m!3295093))

(assert (=> b!2877407 d!831930))

(declare-fun b!2877637 () Bool)

(declare-fun res!1193030 () Bool)

(declare-fun e!1820875 () Bool)

(assert (=> b!2877637 (=> res!1193030 e!1820875)))

(declare-fun e!1820878 () Bool)

(assert (=> b!2877637 (= res!1193030 e!1820878)))

(declare-fun res!1193028 () Bool)

(assert (=> b!2877637 (=> (not res!1193028) (not e!1820878))))

(declare-fun lt!1019039 () Bool)

(assert (=> b!2877637 (= res!1193028 lt!1019039)))

(declare-fun b!2877638 () Bool)

(declare-fun res!1193034 () Bool)

(assert (=> b!2877638 (=> res!1193034 e!1820875)))

(assert (=> b!2877638 (= res!1193034 (not ((_ is ElementMatch!8745) (h!39822 (exprs!3205 c!7184)))))))

(declare-fun e!1820876 () Bool)

(assert (=> b!2877638 (= e!1820876 e!1820875)))

(declare-fun b!2877639 () Bool)

(declare-fun res!1193035 () Bool)

(declare-fun e!1820877 () Bool)

(assert (=> b!2877639 (=> res!1193035 e!1820877)))

(declare-fun isEmpty!18734 (List!34527) Bool)

(declare-fun tail!4577 (List!34527) List!34527)

(assert (=> b!2877639 (= res!1193035 (not (isEmpty!18734 (tail!4577 (v!34545 lt!1018985)))))))

(declare-fun b!2877640 () Bool)

(declare-fun head!6352 (List!34527) C!17672)

(assert (=> b!2877640 (= e!1820877 (not (= (head!6352 (v!34545 lt!1018985)) (c!466558 (h!39822 (exprs!3205 c!7184))))))))

(declare-fun b!2877641 () Bool)

(declare-fun res!1193029 () Bool)

(assert (=> b!2877641 (=> (not res!1193029) (not e!1820878))))

(declare-fun call!186349 () Bool)

(assert (=> b!2877641 (= res!1193029 (not call!186349))))

(declare-fun b!2877642 () Bool)

(declare-fun e!1820873 () Bool)

(declare-fun derivativeStep!2328 (Regex!8745 C!17672) Regex!8745)

(assert (=> b!2877642 (= e!1820873 (matchR!3745 (derivativeStep!2328 (h!39822 (exprs!3205 c!7184)) (head!6352 (v!34545 lt!1018985))) (tail!4577 (v!34545 lt!1018985))))))

(declare-fun b!2877643 () Bool)

(assert (=> b!2877643 (= e!1820878 (= (head!6352 (v!34545 lt!1018985)) (c!466558 (h!39822 (exprs!3205 c!7184)))))))

(declare-fun b!2877644 () Bool)

(declare-fun e!1820879 () Bool)

(assert (=> b!2877644 (= e!1820875 e!1820879)))

(declare-fun res!1193032 () Bool)

(assert (=> b!2877644 (=> (not res!1193032) (not e!1820879))))

(assert (=> b!2877644 (= res!1193032 (not lt!1019039))))

(declare-fun b!2877645 () Bool)

(assert (=> b!2877645 (= e!1820876 (not lt!1019039))))

(declare-fun b!2877646 () Bool)

(declare-fun nullable!2695 (Regex!8745) Bool)

(assert (=> b!2877646 (= e!1820873 (nullable!2695 (h!39822 (exprs!3205 c!7184))))))

(declare-fun b!2877648 () Bool)

(declare-fun e!1820874 () Bool)

(assert (=> b!2877648 (= e!1820874 e!1820876)))

(declare-fun c!466652 () Bool)

(assert (=> b!2877648 (= c!466652 ((_ is EmptyLang!8745) (h!39822 (exprs!3205 c!7184))))))

(declare-fun b!2877649 () Bool)

(assert (=> b!2877649 (= e!1820874 (= lt!1019039 call!186349))))

(declare-fun b!2877650 () Bool)

(assert (=> b!2877650 (= e!1820879 e!1820877)))

(declare-fun res!1193031 () Bool)

(assert (=> b!2877650 (=> res!1193031 e!1820877)))

(assert (=> b!2877650 (= res!1193031 call!186349)))

(declare-fun bm!186344 () Bool)

(assert (=> bm!186344 (= call!186349 (isEmpty!18734 (v!34545 lt!1018985)))))

(declare-fun d!831932 () Bool)

(assert (=> d!831932 e!1820874))

(declare-fun c!466651 () Bool)

(assert (=> d!831932 (= c!466651 ((_ is EmptyExpr!8745) (h!39822 (exprs!3205 c!7184))))))

(assert (=> d!831932 (= lt!1019039 e!1820873)))

(declare-fun c!466650 () Bool)

(assert (=> d!831932 (= c!466650 (isEmpty!18734 (v!34545 lt!1018985)))))

(declare-fun validRegex!3523 (Regex!8745) Bool)

(assert (=> d!831932 (validRegex!3523 (h!39822 (exprs!3205 c!7184)))))

(assert (=> d!831932 (= (matchR!3745 (h!39822 (exprs!3205 c!7184)) (v!34545 lt!1018985)) lt!1019039)))

(declare-fun b!2877647 () Bool)

(declare-fun res!1193033 () Bool)

(assert (=> b!2877647 (=> (not res!1193033) (not e!1820878))))

(assert (=> b!2877647 (= res!1193033 (isEmpty!18734 (tail!4577 (v!34545 lt!1018985))))))

(assert (= (and d!831932 c!466650) b!2877646))

(assert (= (and d!831932 (not c!466650)) b!2877642))

(assert (= (and d!831932 c!466651) b!2877649))

(assert (= (and d!831932 (not c!466651)) b!2877648))

(assert (= (and b!2877648 c!466652) b!2877645))

(assert (= (and b!2877648 (not c!466652)) b!2877638))

(assert (= (and b!2877638 (not res!1193034)) b!2877637))

(assert (= (and b!2877637 res!1193028) b!2877641))

(assert (= (and b!2877641 res!1193029) b!2877647))

(assert (= (and b!2877647 res!1193033) b!2877643))

(assert (= (and b!2877637 (not res!1193030)) b!2877644))

(assert (= (and b!2877644 res!1193032) b!2877650))

(assert (= (and b!2877650 (not res!1193031)) b!2877639))

(assert (= (and b!2877639 (not res!1193035)) b!2877640))

(assert (= (or b!2877649 b!2877650 b!2877641) bm!186344))

(declare-fun m!3295095 () Bool)

(assert (=> b!2877639 m!3295095))

(assert (=> b!2877639 m!3295095))

(declare-fun m!3295097 () Bool)

(assert (=> b!2877639 m!3295097))

(declare-fun m!3295099 () Bool)

(assert (=> bm!186344 m!3295099))

(assert (=> b!2877647 m!3295095))

(assert (=> b!2877647 m!3295095))

(assert (=> b!2877647 m!3295097))

(declare-fun m!3295101 () Bool)

(assert (=> b!2877640 m!3295101))

(assert (=> b!2877642 m!3295101))

(assert (=> b!2877642 m!3295101))

(declare-fun m!3295103 () Bool)

(assert (=> b!2877642 m!3295103))

(assert (=> b!2877642 m!3295095))

(assert (=> b!2877642 m!3295103))

(assert (=> b!2877642 m!3295095))

(declare-fun m!3295105 () Bool)

(assert (=> b!2877642 m!3295105))

(assert (=> d!831932 m!3295099))

(declare-fun m!3295107 () Bool)

(assert (=> d!831932 m!3295107))

(assert (=> b!2877643 m!3295101))

(declare-fun m!3295109 () Bool)

(assert (=> b!2877646 m!3295109))

(assert (=> b!2877404 d!831932))

(declare-fun b!2877651 () Bool)

(declare-fun res!1193038 () Bool)

(declare-fun e!1820882 () Bool)

(assert (=> b!2877651 (=> res!1193038 e!1820882)))

(declare-fun e!1820885 () Bool)

(assert (=> b!2877651 (= res!1193038 e!1820885)))

(declare-fun res!1193036 () Bool)

(assert (=> b!2877651 (=> (not res!1193036) (not e!1820885))))

(declare-fun lt!1019040 () Bool)

(assert (=> b!2877651 (= res!1193036 lt!1019040)))

(declare-fun b!2877652 () Bool)

(declare-fun res!1193042 () Bool)

(assert (=> b!2877652 (=> res!1193042 e!1820882)))

(assert (=> b!2877652 (= res!1193042 (not ((_ is ElementMatch!8745) (h!39822 (exprs!3205 c!7184)))))))

(declare-fun e!1820883 () Bool)

(assert (=> b!2877652 (= e!1820883 e!1820882)))

(declare-fun b!2877653 () Bool)

(declare-fun res!1193043 () Bool)

(declare-fun e!1820884 () Bool)

(assert (=> b!2877653 (=> res!1193043 e!1820884)))

(assert (=> b!2877653 (= res!1193043 (not (isEmpty!18734 (tail!4577 (get!10344 lt!1018985)))))))

(declare-fun b!2877654 () Bool)

(assert (=> b!2877654 (= e!1820884 (not (= (head!6352 (get!10344 lt!1018985)) (c!466558 (h!39822 (exprs!3205 c!7184))))))))

(declare-fun b!2877655 () Bool)

(declare-fun res!1193037 () Bool)

(assert (=> b!2877655 (=> (not res!1193037) (not e!1820885))))

(declare-fun call!186350 () Bool)

(assert (=> b!2877655 (= res!1193037 (not call!186350))))

(declare-fun b!2877656 () Bool)

(declare-fun e!1820880 () Bool)

(assert (=> b!2877656 (= e!1820880 (matchR!3745 (derivativeStep!2328 (h!39822 (exprs!3205 c!7184)) (head!6352 (get!10344 lt!1018985))) (tail!4577 (get!10344 lt!1018985))))))

(declare-fun b!2877657 () Bool)

(assert (=> b!2877657 (= e!1820885 (= (head!6352 (get!10344 lt!1018985)) (c!466558 (h!39822 (exprs!3205 c!7184)))))))

(declare-fun b!2877658 () Bool)

(declare-fun e!1820886 () Bool)

(assert (=> b!2877658 (= e!1820882 e!1820886)))

(declare-fun res!1193040 () Bool)

(assert (=> b!2877658 (=> (not res!1193040) (not e!1820886))))

(assert (=> b!2877658 (= res!1193040 (not lt!1019040))))

(declare-fun b!2877659 () Bool)

(assert (=> b!2877659 (= e!1820883 (not lt!1019040))))

(declare-fun b!2877660 () Bool)

(assert (=> b!2877660 (= e!1820880 (nullable!2695 (h!39822 (exprs!3205 c!7184))))))

(declare-fun b!2877662 () Bool)

(declare-fun e!1820881 () Bool)

(assert (=> b!2877662 (= e!1820881 e!1820883)))

(declare-fun c!466655 () Bool)

(assert (=> b!2877662 (= c!466655 ((_ is EmptyLang!8745) (h!39822 (exprs!3205 c!7184))))))

(declare-fun b!2877663 () Bool)

(assert (=> b!2877663 (= e!1820881 (= lt!1019040 call!186350))))

(declare-fun b!2877664 () Bool)

(assert (=> b!2877664 (= e!1820886 e!1820884)))

(declare-fun res!1193039 () Bool)

(assert (=> b!2877664 (=> res!1193039 e!1820884)))

(assert (=> b!2877664 (= res!1193039 call!186350)))

(declare-fun bm!186345 () Bool)

(assert (=> bm!186345 (= call!186350 (isEmpty!18734 (get!10344 lt!1018985)))))

(declare-fun d!831934 () Bool)

(assert (=> d!831934 e!1820881))

(declare-fun c!466654 () Bool)

(assert (=> d!831934 (= c!466654 ((_ is EmptyExpr!8745) (h!39822 (exprs!3205 c!7184))))))

(assert (=> d!831934 (= lt!1019040 e!1820880)))

(declare-fun c!466653 () Bool)

(assert (=> d!831934 (= c!466653 (isEmpty!18734 (get!10344 lt!1018985)))))

(assert (=> d!831934 (validRegex!3523 (h!39822 (exprs!3205 c!7184)))))

(assert (=> d!831934 (= (matchR!3745 (h!39822 (exprs!3205 c!7184)) (get!10344 lt!1018985)) lt!1019040)))

(declare-fun b!2877661 () Bool)

(declare-fun res!1193041 () Bool)

(assert (=> b!2877661 (=> (not res!1193041) (not e!1820885))))

(assert (=> b!2877661 (= res!1193041 (isEmpty!18734 (tail!4577 (get!10344 lt!1018985))))))

(assert (= (and d!831934 c!466653) b!2877660))

(assert (= (and d!831934 (not c!466653)) b!2877656))

(assert (= (and d!831934 c!466654) b!2877663))

(assert (= (and d!831934 (not c!466654)) b!2877662))

(assert (= (and b!2877662 c!466655) b!2877659))

(assert (= (and b!2877662 (not c!466655)) b!2877652))

(assert (= (and b!2877652 (not res!1193042)) b!2877651))

(assert (= (and b!2877651 res!1193036) b!2877655))

(assert (= (and b!2877655 res!1193037) b!2877661))

(assert (= (and b!2877661 res!1193041) b!2877657))

(assert (= (and b!2877651 (not res!1193038)) b!2877658))

(assert (= (and b!2877658 res!1193040) b!2877664))

(assert (= (and b!2877664 (not res!1193039)) b!2877653))

(assert (= (and b!2877653 (not res!1193043)) b!2877654))

(assert (= (or b!2877663 b!2877664 b!2877655) bm!186345))

(assert (=> b!2877653 m!3294975))

(declare-fun m!3295111 () Bool)

(assert (=> b!2877653 m!3295111))

(assert (=> b!2877653 m!3295111))

(declare-fun m!3295113 () Bool)

(assert (=> b!2877653 m!3295113))

(assert (=> bm!186345 m!3294975))

(declare-fun m!3295115 () Bool)

(assert (=> bm!186345 m!3295115))

(assert (=> b!2877661 m!3294975))

(assert (=> b!2877661 m!3295111))

(assert (=> b!2877661 m!3295111))

(assert (=> b!2877661 m!3295113))

(assert (=> b!2877654 m!3294975))

(declare-fun m!3295117 () Bool)

(assert (=> b!2877654 m!3295117))

(assert (=> b!2877656 m!3294975))

(assert (=> b!2877656 m!3295117))

(assert (=> b!2877656 m!3295117))

(declare-fun m!3295119 () Bool)

(assert (=> b!2877656 m!3295119))

(assert (=> b!2877656 m!3294975))

(assert (=> b!2877656 m!3295111))

(assert (=> b!2877656 m!3295119))

(assert (=> b!2877656 m!3295111))

(declare-fun m!3295121 () Bool)

(assert (=> b!2877656 m!3295121))

(assert (=> d!831934 m!3294975))

(assert (=> d!831934 m!3295115))

(assert (=> d!831934 m!3295107))

(assert (=> b!2877657 m!3294975))

(assert (=> b!2877657 m!3295117))

(assert (=> b!2877660 m!3295109))

(assert (=> b!2877404 d!831934))

(declare-fun d!831936 () Bool)

(declare-fun c!466658 () Bool)

(assert (=> d!831936 (= c!466658 (isEmpty!18734 (get!10344 lt!1018982)))))

(declare-fun e!1820889 () Bool)

(assert (=> d!831936 (= (matchZipper!487 (store ((as const (Array Context!5410 Bool)) false) lt!1018984 true) (get!10344 lt!1018982)) e!1820889)))

(declare-fun b!2877669 () Bool)

(declare-fun nullableZipper!723 ((InoxSet Context!5410)) Bool)

(assert (=> b!2877669 (= e!1820889 (nullableZipper!723 (store ((as const (Array Context!5410 Bool)) false) lt!1018984 true)))))

(declare-fun b!2877670 () Bool)

(declare-fun derivationStepZipper!479 ((InoxSet Context!5410) C!17672) (InoxSet Context!5410))

(assert (=> b!2877670 (= e!1820889 (matchZipper!487 (derivationStepZipper!479 (store ((as const (Array Context!5410 Bool)) false) lt!1018984 true) (head!6352 (get!10344 lt!1018982))) (tail!4577 (get!10344 lt!1018982))))))

(assert (= (and d!831936 c!466658) b!2877669))

(assert (= (and d!831936 (not c!466658)) b!2877670))

(assert (=> d!831936 m!3294981))

(declare-fun m!3295123 () Bool)

(assert (=> d!831936 m!3295123))

(assert (=> b!2877669 m!3294979))

(declare-fun m!3295125 () Bool)

(assert (=> b!2877669 m!3295125))

(assert (=> b!2877670 m!3294981))

(declare-fun m!3295127 () Bool)

(assert (=> b!2877670 m!3295127))

(assert (=> b!2877670 m!3294979))

(assert (=> b!2877670 m!3295127))

(declare-fun m!3295129 () Bool)

(assert (=> b!2877670 m!3295129))

(assert (=> b!2877670 m!3294981))

(declare-fun m!3295131 () Bool)

(assert (=> b!2877670 m!3295131))

(assert (=> b!2877670 m!3295129))

(assert (=> b!2877670 m!3295131))

(declare-fun m!3295133 () Bool)

(assert (=> b!2877670 m!3295133))

(assert (=> b!2877404 d!831936))

(declare-fun d!831938 () Bool)

(assert (=> d!831938 (= (get!10344 lt!1018985) (v!34545 lt!1018985))))

(assert (=> b!2877404 d!831938))

(declare-fun d!831940 () Bool)

(assert (=> d!831940 (= (get!10344 lt!1018982) (v!34545 lt!1018982))))

(assert (=> b!2877404 d!831940))

(declare-fun d!831942 () Bool)

(assert (=> d!831942 (matchR!3745 (h!39822 (exprs!3205 c!7184)) (get!10344 (getLanguageWitness!442 (h!39822 (exprs!3205 c!7184)))))))

(declare-fun lt!1019043 () Unit!47991)

(declare-fun choose!17016 (Regex!8745) Unit!47991)

(assert (=> d!831942 (= lt!1019043 (choose!17016 (h!39822 (exprs!3205 c!7184))))))

(assert (=> d!831942 (validRegex!3523 (h!39822 (exprs!3205 c!7184)))))

(assert (=> d!831942 (= (lemmaGetWitnessMatches!52 (h!39822 (exprs!3205 c!7184))) lt!1019043)))

(declare-fun bs!522913 () Bool)

(assert (= bs!522913 d!831942))

(declare-fun m!3295135 () Bool)

(assert (=> bs!522913 m!3295135))

(declare-fun m!3295137 () Bool)

(assert (=> bs!522913 m!3295137))

(declare-fun m!3295139 () Bool)

(assert (=> bs!522913 m!3295139))

(assert (=> bs!522913 m!3295107))

(assert (=> bs!522913 m!3294961))

(assert (=> bs!522913 m!3295137))

(assert (=> bs!522913 m!3294961))

(assert (=> b!2877404 d!831942))

(declare-fun d!831944 () Bool)

(assert (=> d!831944 (matchZipper!487 (store ((as const (Array Context!5410 Bool)) false) lt!1018984 true) (get!10344 (getLanguageWitness!441 lt!1018984)))))

(declare-fun lt!1019046 () Unit!47991)

(declare-fun choose!17017 (Context!5410) Unit!47991)

(assert (=> d!831944 (= lt!1019046 (choose!17017 lt!1018984))))

(assert (=> d!831944 (not (lostCause!837 lt!1018984))))

(assert (=> d!831944 (= (lemmaGetWitnessMatchesContext!44 lt!1018984) lt!1019046)))

(declare-fun bs!522914 () Bool)

(assert (= bs!522914 d!831944))

(assert (=> bs!522914 m!3294959))

(declare-fun m!3295141 () Bool)

(assert (=> bs!522914 m!3295141))

(assert (=> bs!522914 m!3294979))

(assert (=> bs!522914 m!3294959))

(assert (=> bs!522914 m!3294979))

(assert (=> bs!522914 m!3295141))

(declare-fun m!3295143 () Bool)

(assert (=> bs!522914 m!3295143))

(declare-fun m!3295145 () Bool)

(assert (=> bs!522914 m!3295145))

(declare-fun m!3295147 () Bool)

(assert (=> bs!522914 m!3295147))

(assert (=> b!2877404 d!831944))

(declare-fun bs!522915 () Bool)

(declare-fun d!831946 () Bool)

(assert (= bs!522915 (and d!831946 d!831896)))

(declare-fun lambda!107346 () Int)

(assert (=> bs!522915 (not (= lambda!107346 lambda!107339))))

(declare-fun bs!522916 () Bool)

(assert (= bs!522916 (and d!831946 d!831926)))

(assert (=> bs!522916 (not (= lambda!107346 lambda!107342))))

(declare-fun bs!522917 () Bool)

(assert (= bs!522917 (and d!831946 d!831928)))

(assert (=> bs!522917 (= lambda!107346 lambda!107345)))

(assert (=> d!831946 (= (inv!46449 lt!1018984) (forall!7088 (exprs!3205 lt!1018984) lambda!107346))))

(declare-fun bs!522918 () Bool)

(assert (= bs!522918 d!831946))

(declare-fun m!3295149 () Bool)

(assert (=> bs!522918 m!3295149))

(assert (=> b!2877405 d!831946))

(declare-fun d!831948 () Bool)

(declare-fun c!466660 () Bool)

(assert (=> d!831948 (= c!466660 (isEmpty!18734 (v!34545 lt!1018985)))))

(declare-fun e!1820890 () Bool)

(assert (=> d!831948 (= (matchZipper!487 lt!1018980 (v!34545 lt!1018985)) e!1820890)))

(declare-fun b!2877671 () Bool)

(assert (=> b!2877671 (= e!1820890 (nullableZipper!723 lt!1018980))))

(declare-fun b!2877672 () Bool)

(assert (=> b!2877672 (= e!1820890 (matchZipper!487 (derivationStepZipper!479 lt!1018980 (head!6352 (v!34545 lt!1018985))) (tail!4577 (v!34545 lt!1018985))))))

(assert (= (and d!831948 c!466660) b!2877671))

(assert (= (and d!831948 (not c!466660)) b!2877672))

(assert (=> d!831948 m!3295099))

(declare-fun m!3295151 () Bool)

(assert (=> b!2877671 m!3295151))

(assert (=> b!2877672 m!3295101))

(assert (=> b!2877672 m!3295101))

(declare-fun m!3295153 () Bool)

(assert (=> b!2877672 m!3295153))

(assert (=> b!2877672 m!3295095))

(assert (=> b!2877672 m!3295153))

(assert (=> b!2877672 m!3295095))

(declare-fun m!3295155 () Bool)

(assert (=> b!2877672 m!3295155))

(assert (=> b!2877405 d!831948))

(declare-fun d!831950 () Bool)

(assert (=> d!831950 (= (matchR!3745 (h!39822 (exprs!3205 c!7184)) (v!34545 lt!1018985)) (matchZipper!487 lt!1018980 (v!34545 lt!1018985)))))

(declare-fun lt!1019049 () Unit!47991)

(declare-fun choose!17018 ((InoxSet Context!5410) List!34528 Regex!8745 List!34527) Unit!47991)

(assert (=> d!831950 (= lt!1019049 (choose!17018 lt!1018980 (Cons!34404 lt!1018983 Nil!34404) (h!39822 (exprs!3205 c!7184)) (v!34545 lt!1018985)))))

(assert (=> d!831950 (validRegex!3523 (h!39822 (exprs!3205 c!7184)))))

(assert (=> d!831950 (= (theoremZipperRegexEquiv!119 lt!1018980 (Cons!34404 lt!1018983 Nil!34404) (h!39822 (exprs!3205 c!7184)) (v!34545 lt!1018985)) lt!1019049)))

(declare-fun bs!522919 () Bool)

(assert (= bs!522919 d!831950))

(assert (=> bs!522919 m!3294989))

(assert (=> bs!522919 m!3294965))

(declare-fun m!3295157 () Bool)

(assert (=> bs!522919 m!3295157))

(assert (=> bs!522919 m!3295107))

(assert (=> b!2877405 d!831950))

(declare-fun b!2877677 () Bool)

(declare-fun e!1820893 () Bool)

(declare-fun tp!923903 () Bool)

(declare-fun tp!923904 () Bool)

(assert (=> b!2877677 (= e!1820893 (and tp!923903 tp!923904))))

(assert (=> b!2877403 (= tp!923892 e!1820893)))

(assert (= (and b!2877403 ((_ is Cons!34402) (exprs!3205 c!7184))) b!2877677))

(check-sat (not b!2877669) (not d!831928) (not d!831934) (not b!2877677) (not d!831950) (not b!2877657) (not d!831942) (not d!831926) (not d!831896) (not b!2877505) (not b!2877661) (not b!2877643) (not b!2877654) (not b!2877646) (not d!831932) (not bm!186344) (not bm!186340) (not b!2877596) (not d!831946) (not d!831944) (not b!2877647) (not b!2877656) (not b!2877653) (not bm!186345) (not b!2877507) (not b!2877671) (not b!2877502) (not b!2877639) (not b!2877640) (not d!831948) (not bm!186341) (not b!2877660) (not d!831936) (not b!2877670) (not b!2877672) (not b!2877642))
(check-sat)
(get-model)

(declare-fun b!2877687 () Bool)

(declare-fun e!1820898 () List!34527)

(assert (=> b!2877687 (= e!1820898 (Cons!34403 (h!39823 (v!34545 lt!1019036)) (++!8180 (t!233570 (v!34545 lt!1019036)) (v!34545 lt!1019035))))))

(declare-fun b!2877686 () Bool)

(assert (=> b!2877686 (= e!1820898 (v!34545 lt!1019035))))

(declare-fun d!831952 () Bool)

(declare-fun e!1820899 () Bool)

(assert (=> d!831952 e!1820899))

(declare-fun res!1193048 () Bool)

(assert (=> d!831952 (=> (not res!1193048) (not e!1820899))))

(declare-fun lt!1019052 () List!34527)

(declare-fun content!4708 (List!34527) (InoxSet C!17672))

(assert (=> d!831952 (= res!1193048 (= (content!4708 lt!1019052) ((_ map or) (content!4708 (v!34545 lt!1019036)) (content!4708 (v!34545 lt!1019035)))))))

(assert (=> d!831952 (= lt!1019052 e!1820898)))

(declare-fun c!466663 () Bool)

(assert (=> d!831952 (= c!466663 ((_ is Nil!34403) (v!34545 lt!1019036)))))

(assert (=> d!831952 (= (++!8180 (v!34545 lt!1019036) (v!34545 lt!1019035)) lt!1019052)))

(declare-fun b!2877688 () Bool)

(declare-fun res!1193049 () Bool)

(assert (=> b!2877688 (=> (not res!1193049) (not e!1820899))))

(declare-fun size!26327 (List!34527) Int)

(assert (=> b!2877688 (= res!1193049 (= (size!26327 lt!1019052) (+ (size!26327 (v!34545 lt!1019036)) (size!26327 (v!34545 lt!1019035)))))))

(declare-fun b!2877689 () Bool)

(assert (=> b!2877689 (= e!1820899 (or (not (= (v!34545 lt!1019035) Nil!34403)) (= lt!1019052 (v!34545 lt!1019036))))))

(assert (= (and d!831952 c!466663) b!2877686))

(assert (= (and d!831952 (not c!466663)) b!2877687))

(assert (= (and d!831952 res!1193048) b!2877688))

(assert (= (and b!2877688 res!1193049) b!2877689))

(declare-fun m!3295159 () Bool)

(assert (=> b!2877687 m!3295159))

(declare-fun m!3295161 () Bool)

(assert (=> d!831952 m!3295161))

(declare-fun m!3295163 () Bool)

(assert (=> d!831952 m!3295163))

(declare-fun m!3295165 () Bool)

(assert (=> d!831952 m!3295165))

(declare-fun m!3295167 () Bool)

(assert (=> b!2877688 m!3295167))

(declare-fun m!3295169 () Bool)

(assert (=> b!2877688 m!3295169))

(declare-fun m!3295171 () Bool)

(assert (=> b!2877688 m!3295171))

(assert (=> b!2877596 d!831952))

(declare-fun d!831954 () Bool)

(declare-fun c!466664 () Bool)

(assert (=> d!831954 (= c!466664 (isEmpty!18734 (get!10344 (getLanguageWitness!441 lt!1018984))))))

(declare-fun e!1820900 () Bool)

(assert (=> d!831954 (= (matchZipper!487 (store ((as const (Array Context!5410 Bool)) false) lt!1018984 true) (get!10344 (getLanguageWitness!441 lt!1018984))) e!1820900)))

(declare-fun b!2877690 () Bool)

(assert (=> b!2877690 (= e!1820900 (nullableZipper!723 (store ((as const (Array Context!5410 Bool)) false) lt!1018984 true)))))

(declare-fun b!2877691 () Bool)

(assert (=> b!2877691 (= e!1820900 (matchZipper!487 (derivationStepZipper!479 (store ((as const (Array Context!5410 Bool)) false) lt!1018984 true) (head!6352 (get!10344 (getLanguageWitness!441 lt!1018984)))) (tail!4577 (get!10344 (getLanguageWitness!441 lt!1018984)))))))

(assert (= (and d!831954 c!466664) b!2877690))

(assert (= (and d!831954 (not c!466664)) b!2877691))

(assert (=> d!831954 m!3295141))

(declare-fun m!3295173 () Bool)

(assert (=> d!831954 m!3295173))

(assert (=> b!2877690 m!3294979))

(assert (=> b!2877690 m!3295125))

(assert (=> b!2877691 m!3295141))

(declare-fun m!3295175 () Bool)

(assert (=> b!2877691 m!3295175))

(assert (=> b!2877691 m!3294979))

(assert (=> b!2877691 m!3295175))

(declare-fun m!3295177 () Bool)

(assert (=> b!2877691 m!3295177))

(assert (=> b!2877691 m!3295141))

(declare-fun m!3295179 () Bool)

(assert (=> b!2877691 m!3295179))

(assert (=> b!2877691 m!3295177))

(assert (=> b!2877691 m!3295179))

(declare-fun m!3295181 () Bool)

(assert (=> b!2877691 m!3295181))

(assert (=> d!831944 d!831954))

(declare-fun d!831956 () Bool)

(assert (=> d!831956 (matchZipper!487 (store ((as const (Array Context!5410 Bool)) false) lt!1018984 true) (get!10344 (getLanguageWitness!441 lt!1018984)))))

(assert (=> d!831956 true))

(declare-fun _$31!163 () Unit!47991)

(assert (=> d!831956 (= (choose!17017 lt!1018984) _$31!163)))

(declare-fun bs!522920 () Bool)

(assert (= bs!522920 d!831956))

(assert (=> bs!522920 m!3294979))

(assert (=> bs!522920 m!3294959))

(assert (=> bs!522920 m!3294959))

(assert (=> bs!522920 m!3295141))

(assert (=> bs!522920 m!3294979))

(assert (=> bs!522920 m!3295141))

(assert (=> bs!522920 m!3295143))

(assert (=> d!831944 d!831956))

(assert (=> d!831944 d!831896))

(declare-fun bs!522921 () Bool)

(declare-fun d!831958 () Bool)

(assert (= bs!522921 (and d!831958 d!831896)))

(declare-fun lambda!107347 () Int)

(assert (=> bs!522921 (= lambda!107347 lambda!107339)))

(declare-fun bs!522922 () Bool)

(assert (= bs!522922 (and d!831958 d!831926)))

(assert (=> bs!522922 (= lambda!107347 lambda!107342)))

(declare-fun bs!522923 () Bool)

(assert (= bs!522923 (and d!831958 d!831928)))

(assert (=> bs!522923 (not (= lambda!107347 lambda!107345))))

(declare-fun bs!522924 () Bool)

(assert (= bs!522924 (and d!831958 d!831946)))

(assert (=> bs!522924 (not (= lambda!107347 lambda!107346))))

(assert (=> d!831958 (= (lostCause!837 lt!1018984) (exists!1177 (exprs!3205 lt!1018984) lambda!107347))))

(declare-fun bs!522925 () Bool)

(assert (= bs!522925 d!831958))

(declare-fun m!3295183 () Bool)

(assert (=> bs!522925 m!3295183))

(assert (=> d!831944 d!831958))

(declare-fun d!831960 () Bool)

(assert (=> d!831960 (= (get!10344 (getLanguageWitness!441 lt!1018984)) (v!34545 (getLanguageWitness!441 lt!1018984)))))

(assert (=> d!831944 d!831960))

(declare-fun d!831962 () Bool)

(assert (=> d!831962 (= (isEmpty!18734 (v!34545 lt!1018985)) ((_ is Nil!34403) (v!34545 lt!1018985)))))

(assert (=> d!831932 d!831962))

(declare-fun c!466670 () Bool)

(declare-fun c!466671 () Bool)

(declare-fun bm!186352 () Bool)

(declare-fun call!186358 () Bool)

(assert (=> bm!186352 (= call!186358 (validRegex!3523 (ite c!466671 (reg!9074 (h!39822 (exprs!3205 c!7184))) (ite c!466670 (regOne!18003 (h!39822 (exprs!3205 c!7184))) (regTwo!18002 (h!39822 (exprs!3205 c!7184)))))))))

(declare-fun b!2877710 () Bool)

(declare-fun e!1820915 () Bool)

(declare-fun call!186357 () Bool)

(assert (=> b!2877710 (= e!1820915 call!186357)))

(declare-fun bm!186353 () Bool)

(declare-fun call!186359 () Bool)

(assert (=> bm!186353 (= call!186359 (validRegex!3523 (ite c!466670 (regTwo!18003 (h!39822 (exprs!3205 c!7184))) (regOne!18002 (h!39822 (exprs!3205 c!7184))))))))

(declare-fun b!2877711 () Bool)

(declare-fun e!1820916 () Bool)

(assert (=> b!2877711 (= e!1820916 e!1820915)))

(declare-fun res!1193063 () Bool)

(assert (=> b!2877711 (=> (not res!1193063) (not e!1820915))))

(assert (=> b!2877711 (= res!1193063 call!186359)))

(declare-fun b!2877712 () Bool)

(declare-fun e!1820919 () Bool)

(declare-fun e!1820918 () Bool)

(assert (=> b!2877712 (= e!1820919 e!1820918)))

(declare-fun res!1193061 () Bool)

(assert (=> b!2877712 (= res!1193061 (not (nullable!2695 (reg!9074 (h!39822 (exprs!3205 c!7184))))))))

(assert (=> b!2877712 (=> (not res!1193061) (not e!1820918))))

(declare-fun d!831964 () Bool)

(declare-fun res!1193060 () Bool)

(declare-fun e!1820921 () Bool)

(assert (=> d!831964 (=> res!1193060 e!1820921)))

(assert (=> d!831964 (= res!1193060 ((_ is ElementMatch!8745) (h!39822 (exprs!3205 c!7184))))))

(assert (=> d!831964 (= (validRegex!3523 (h!39822 (exprs!3205 c!7184))) e!1820921)))

(declare-fun bm!186354 () Bool)

(assert (=> bm!186354 (= call!186357 call!186358)))

(declare-fun b!2877713 () Bool)

(assert (=> b!2877713 (= e!1820921 e!1820919)))

(assert (=> b!2877713 (= c!466671 ((_ is Star!8745) (h!39822 (exprs!3205 c!7184))))))

(declare-fun b!2877714 () Bool)

(declare-fun e!1820920 () Bool)

(assert (=> b!2877714 (= e!1820920 call!186359)))

(declare-fun b!2877715 () Bool)

(declare-fun res!1193062 () Bool)

(assert (=> b!2877715 (=> (not res!1193062) (not e!1820920))))

(assert (=> b!2877715 (= res!1193062 call!186357)))

(declare-fun e!1820917 () Bool)

(assert (=> b!2877715 (= e!1820917 e!1820920)))

(declare-fun b!2877716 () Bool)

(declare-fun res!1193064 () Bool)

(assert (=> b!2877716 (=> res!1193064 e!1820916)))

(assert (=> b!2877716 (= res!1193064 (not ((_ is Concat!14066) (h!39822 (exprs!3205 c!7184)))))))

(assert (=> b!2877716 (= e!1820917 e!1820916)))

(declare-fun b!2877717 () Bool)

(assert (=> b!2877717 (= e!1820919 e!1820917)))

(assert (=> b!2877717 (= c!466670 ((_ is Union!8745) (h!39822 (exprs!3205 c!7184))))))

(declare-fun b!2877718 () Bool)

(assert (=> b!2877718 (= e!1820918 call!186358)))

(assert (= (and d!831964 (not res!1193060)) b!2877713))

(assert (= (and b!2877713 c!466671) b!2877712))

(assert (= (and b!2877713 (not c!466671)) b!2877717))

(assert (= (and b!2877712 res!1193061) b!2877718))

(assert (= (and b!2877717 c!466670) b!2877715))

(assert (= (and b!2877717 (not c!466670)) b!2877716))

(assert (= (and b!2877715 res!1193062) b!2877714))

(assert (= (and b!2877716 (not res!1193064)) b!2877711))

(assert (= (and b!2877711 res!1193063) b!2877710))

(assert (= (or b!2877714 b!2877711) bm!186353))

(assert (= (or b!2877715 b!2877710) bm!186354))

(assert (= (or b!2877718 bm!186354) bm!186352))

(declare-fun m!3295185 () Bool)

(assert (=> bm!186352 m!3295185))

(declare-fun m!3295187 () Bool)

(assert (=> bm!186353 m!3295187))

(declare-fun m!3295189 () Bool)

(assert (=> b!2877712 m!3295189))

(assert (=> d!831932 d!831964))

(declare-fun b!2877719 () Bool)

(declare-fun e!1820922 () Option!6420)

(assert (=> b!2877719 (= e!1820922 None!6419)))

(declare-fun b!2877720 () Bool)

(declare-fun e!1820926 () Option!6420)

(declare-fun e!1820927 () Option!6420)

(assert (=> b!2877720 (= e!1820926 e!1820927)))

(declare-fun lt!1019053 () Option!6420)

(declare-fun call!186361 () Option!6420)

(assert (=> b!2877720 (= lt!1019053 call!186361)))

(declare-fun c!466672 () Bool)

(assert (=> b!2877720 (= c!466672 ((_ is Some!6419) lt!1019053))))

(declare-fun b!2877721 () Bool)

(declare-fun e!1820928 () Option!6420)

(assert (=> b!2877721 (= e!1820928 (Some!6419 Nil!34403))))

(declare-fun b!2877722 () Bool)

(declare-fun e!1820923 () Option!6420)

(declare-fun lt!1019055 () Option!6420)

(declare-fun lt!1019054 () Option!6420)

(assert (=> b!2877722 (= e!1820923 (Some!6419 (++!8180 (v!34545 lt!1019055) (v!34545 lt!1019054))))))

(declare-fun bm!186355 () Bool)

(declare-fun c!466677 () Bool)

(assert (=> bm!186355 (= call!186361 (getLanguageWitness!442 (ite c!466677 (regOne!18003 (ite c!466641 (regOne!18003 (h!39822 (exprs!3205 c!7184))) (regOne!18002 (h!39822 (exprs!3205 c!7184))))) (regOne!18002 (ite c!466641 (regOne!18003 (h!39822 (exprs!3205 c!7184))) (regOne!18002 (h!39822 (exprs!3205 c!7184))))))))))

(declare-fun b!2877723 () Bool)

(assert (=> b!2877723 (= e!1820927 lt!1019053)))

(declare-fun b!2877724 () Bool)

(declare-fun e!1820929 () Option!6420)

(assert (=> b!2877724 (= e!1820929 None!6419)))

(declare-fun b!2877725 () Bool)

(declare-fun e!1820925 () Option!6420)

(assert (=> b!2877725 (= e!1820925 (Some!6419 Nil!34403))))

(declare-fun b!2877726 () Bool)

(assert (=> b!2877726 (= e!1820928 e!1820929)))

(declare-fun c!466674 () Bool)

(assert (=> b!2877726 (= c!466674 ((_ is EmptyLang!8745) (ite c!466641 (regOne!18003 (h!39822 (exprs!3205 c!7184))) (regOne!18002 (h!39822 (exprs!3205 c!7184))))))))

(declare-fun b!2877727 () Bool)

(declare-fun c!466673 () Bool)

(assert (=> b!2877727 (= c!466673 ((_ is ElementMatch!8745) (ite c!466641 (regOne!18003 (h!39822 (exprs!3205 c!7184))) (regOne!18002 (h!39822 (exprs!3205 c!7184))))))))

(declare-fun e!1820924 () Option!6420)

(assert (=> b!2877727 (= e!1820929 e!1820924)))

(declare-fun b!2877728 () Bool)

(assert (=> b!2877728 (= e!1820924 (Some!6419 (Cons!34403 (c!466558 (ite c!466641 (regOne!18003 (h!39822 (exprs!3205 c!7184))) (regOne!18002 (h!39822 (exprs!3205 c!7184))))) Nil!34403)))))

(declare-fun b!2877729 () Bool)

(declare-fun c!466679 () Bool)

(assert (=> b!2877729 (= c!466679 ((_ is Some!6419) lt!1019054))))

(declare-fun call!186360 () Option!6420)

(assert (=> b!2877729 (= lt!1019054 call!186360)))

(assert (=> b!2877729 (= e!1820922 e!1820923)))

(declare-fun b!2877730 () Bool)

(assert (=> b!2877730 (= e!1820923 None!6419)))

(declare-fun b!2877731 () Bool)

(assert (=> b!2877731 (= e!1820927 call!186360)))

(declare-fun d!831966 () Bool)

(declare-fun c!466675 () Bool)

(assert (=> d!831966 (= c!466675 ((_ is EmptyExpr!8745) (ite c!466641 (regOne!18003 (h!39822 (exprs!3205 c!7184))) (regOne!18002 (h!39822 (exprs!3205 c!7184))))))))

(assert (=> d!831966 (= (getLanguageWitness!442 (ite c!466641 (regOne!18003 (h!39822 (exprs!3205 c!7184))) (regOne!18002 (h!39822 (exprs!3205 c!7184))))) e!1820928)))

(declare-fun bm!186356 () Bool)

(assert (=> bm!186356 (= call!186360 (getLanguageWitness!442 (ite c!466677 (regTwo!18003 (ite c!466641 (regOne!18003 (h!39822 (exprs!3205 c!7184))) (regOne!18002 (h!39822 (exprs!3205 c!7184))))) (regTwo!18002 (ite c!466641 (regOne!18003 (h!39822 (exprs!3205 c!7184))) (regOne!18002 (h!39822 (exprs!3205 c!7184))))))))))

(declare-fun b!2877732 () Bool)

(assert (=> b!2877732 (= c!466677 ((_ is Union!8745) (ite c!466641 (regOne!18003 (h!39822 (exprs!3205 c!7184))) (regOne!18002 (h!39822 (exprs!3205 c!7184))))))))

(assert (=> b!2877732 (= e!1820925 e!1820926)))

(declare-fun b!2877733 () Bool)

(assert (=> b!2877733 (= e!1820926 e!1820922)))

(assert (=> b!2877733 (= lt!1019055 call!186361)))

(declare-fun c!466678 () Bool)

(assert (=> b!2877733 (= c!466678 ((_ is Some!6419) lt!1019055))))

(declare-fun b!2877734 () Bool)

(assert (=> b!2877734 (= e!1820924 e!1820925)))

(declare-fun c!466676 () Bool)

(assert (=> b!2877734 (= c!466676 ((_ is Star!8745) (ite c!466641 (regOne!18003 (h!39822 (exprs!3205 c!7184))) (regOne!18002 (h!39822 (exprs!3205 c!7184))))))))

(assert (= (and d!831966 c!466675) b!2877721))

(assert (= (and d!831966 (not c!466675)) b!2877726))

(assert (= (and b!2877726 c!466674) b!2877724))

(assert (= (and b!2877726 (not c!466674)) b!2877727))

(assert (= (and b!2877727 c!466673) b!2877728))

(assert (= (and b!2877727 (not c!466673)) b!2877734))

(assert (= (and b!2877734 c!466676) b!2877725))

(assert (= (and b!2877734 (not c!466676)) b!2877732))

(assert (= (and b!2877732 c!466677) b!2877720))

(assert (= (and b!2877732 (not c!466677)) b!2877733))

(assert (= (and b!2877720 c!466672) b!2877723))

(assert (= (and b!2877720 (not c!466672)) b!2877731))

(assert (= (and b!2877733 c!466678) b!2877729))

(assert (= (and b!2877733 (not c!466678)) b!2877719))

(assert (= (and b!2877729 c!466679) b!2877722))

(assert (= (and b!2877729 (not c!466679)) b!2877730))

(assert (= (or b!2877731 b!2877729) bm!186356))

(assert (= (or b!2877720 b!2877733) bm!186355))

(declare-fun m!3295191 () Bool)

(assert (=> b!2877722 m!3295191))

(declare-fun m!3295193 () Bool)

(assert (=> bm!186355 m!3295193))

(declare-fun m!3295195 () Bool)

(assert (=> bm!186356 m!3295195))

(assert (=> bm!186340 d!831966))

(declare-fun d!831968 () Bool)

(declare-fun nullableFct!822 (Regex!8745) Bool)

(assert (=> d!831968 (= (nullable!2695 (h!39822 (exprs!3205 c!7184))) (nullableFct!822 (h!39822 (exprs!3205 c!7184))))))

(declare-fun bs!522926 () Bool)

(assert (= bs!522926 d!831968))

(declare-fun m!3295197 () Bool)

(assert (=> bs!522926 m!3295197))

(assert (=> b!2877646 d!831968))

(declare-fun b!2877735 () Bool)

(declare-fun e!1820930 () Option!6420)

(assert (=> b!2877735 (= e!1820930 None!6419)))

(declare-fun b!2877736 () Bool)

(declare-fun e!1820934 () Option!6420)

(declare-fun e!1820935 () Option!6420)

(assert (=> b!2877736 (= e!1820934 e!1820935)))

(declare-fun lt!1019056 () Option!6420)

(declare-fun call!186363 () Option!6420)

(assert (=> b!2877736 (= lt!1019056 call!186363)))

(declare-fun c!466680 () Bool)

(assert (=> b!2877736 (= c!466680 ((_ is Some!6419) lt!1019056))))

(declare-fun b!2877737 () Bool)

(declare-fun e!1820936 () Option!6420)

(assert (=> b!2877737 (= e!1820936 (Some!6419 Nil!34403))))

(declare-fun b!2877738 () Bool)

(declare-fun e!1820931 () Option!6420)

(declare-fun lt!1019058 () Option!6420)

(declare-fun lt!1019057 () Option!6420)

(assert (=> b!2877738 (= e!1820931 (Some!6419 (++!8180 (v!34545 lt!1019058) (v!34545 lt!1019057))))))

(declare-fun bm!186357 () Bool)

(declare-fun c!466685 () Bool)

(assert (=> bm!186357 (= call!186363 (getLanguageWitness!442 (ite c!466685 (regOne!18003 (h!39822 (exprs!3205 lt!1018984))) (regOne!18002 (h!39822 (exprs!3205 lt!1018984))))))))

(declare-fun b!2877739 () Bool)

(assert (=> b!2877739 (= e!1820935 lt!1019056)))

(declare-fun b!2877740 () Bool)

(declare-fun e!1820937 () Option!6420)

(assert (=> b!2877740 (= e!1820937 None!6419)))

(declare-fun b!2877741 () Bool)

(declare-fun e!1820933 () Option!6420)

(assert (=> b!2877741 (= e!1820933 (Some!6419 Nil!34403))))

(declare-fun b!2877742 () Bool)

(assert (=> b!2877742 (= e!1820936 e!1820937)))

(declare-fun c!466682 () Bool)

(assert (=> b!2877742 (= c!466682 ((_ is EmptyLang!8745) (h!39822 (exprs!3205 lt!1018984))))))

(declare-fun b!2877743 () Bool)

(declare-fun c!466681 () Bool)

(assert (=> b!2877743 (= c!466681 ((_ is ElementMatch!8745) (h!39822 (exprs!3205 lt!1018984))))))

(declare-fun e!1820932 () Option!6420)

(assert (=> b!2877743 (= e!1820937 e!1820932)))

(declare-fun b!2877744 () Bool)

(assert (=> b!2877744 (= e!1820932 (Some!6419 (Cons!34403 (c!466558 (h!39822 (exprs!3205 lt!1018984))) Nil!34403)))))

(declare-fun b!2877745 () Bool)

(declare-fun c!466687 () Bool)

(assert (=> b!2877745 (= c!466687 ((_ is Some!6419) lt!1019057))))

(declare-fun call!186362 () Option!6420)

(assert (=> b!2877745 (= lt!1019057 call!186362)))

(assert (=> b!2877745 (= e!1820930 e!1820931)))

(declare-fun b!2877746 () Bool)

(assert (=> b!2877746 (= e!1820931 None!6419)))

(declare-fun b!2877747 () Bool)

(assert (=> b!2877747 (= e!1820935 call!186362)))

(declare-fun d!831970 () Bool)

(declare-fun c!466683 () Bool)

(assert (=> d!831970 (= c!466683 ((_ is EmptyExpr!8745) (h!39822 (exprs!3205 lt!1018984))))))

(assert (=> d!831970 (= (getLanguageWitness!442 (h!39822 (exprs!3205 lt!1018984))) e!1820936)))

(declare-fun bm!186358 () Bool)

(assert (=> bm!186358 (= call!186362 (getLanguageWitness!442 (ite c!466685 (regTwo!18003 (h!39822 (exprs!3205 lt!1018984))) (regTwo!18002 (h!39822 (exprs!3205 lt!1018984))))))))

(declare-fun b!2877748 () Bool)

(assert (=> b!2877748 (= c!466685 ((_ is Union!8745) (h!39822 (exprs!3205 lt!1018984))))))

(assert (=> b!2877748 (= e!1820933 e!1820934)))

(declare-fun b!2877749 () Bool)

(assert (=> b!2877749 (= e!1820934 e!1820930)))

(assert (=> b!2877749 (= lt!1019058 call!186363)))

(declare-fun c!466686 () Bool)

(assert (=> b!2877749 (= c!466686 ((_ is Some!6419) lt!1019058))))

(declare-fun b!2877750 () Bool)

(assert (=> b!2877750 (= e!1820932 e!1820933)))

(declare-fun c!466684 () Bool)

(assert (=> b!2877750 (= c!466684 ((_ is Star!8745) (h!39822 (exprs!3205 lt!1018984))))))

(assert (= (and d!831970 c!466683) b!2877737))

(assert (= (and d!831970 (not c!466683)) b!2877742))

(assert (= (and b!2877742 c!466682) b!2877740))

(assert (= (and b!2877742 (not c!466682)) b!2877743))

(assert (= (and b!2877743 c!466681) b!2877744))

(assert (= (and b!2877743 (not c!466681)) b!2877750))

(assert (= (and b!2877750 c!466684) b!2877741))

(assert (= (and b!2877750 (not c!466684)) b!2877748))

(assert (= (and b!2877748 c!466685) b!2877736))

(assert (= (and b!2877748 (not c!466685)) b!2877749))

(assert (= (and b!2877736 c!466680) b!2877739))

(assert (= (and b!2877736 (not c!466680)) b!2877747))

(assert (= (and b!2877749 c!466686) b!2877745))

(assert (= (and b!2877749 (not c!466686)) b!2877735))

(assert (= (and b!2877745 c!466687) b!2877738))

(assert (= (and b!2877745 (not c!466687)) b!2877746))

(assert (= (or b!2877747 b!2877745) bm!186358))

(assert (= (or b!2877736 b!2877749) bm!186357))

(declare-fun m!3295199 () Bool)

(assert (=> b!2877738 m!3295199))

(declare-fun m!3295201 () Bool)

(assert (=> bm!186357 m!3295201))

(declare-fun m!3295203 () Bool)

(assert (=> bm!186358 m!3295203))

(assert (=> b!2877505 d!831970))

(declare-fun d!831972 () Bool)

(assert (=> d!831972 (= (isEmpty!18734 (tail!4577 (v!34545 lt!1018985))) ((_ is Nil!34403) (tail!4577 (v!34545 lt!1018985))))))

(assert (=> b!2877647 d!831972))

(declare-fun d!831974 () Bool)

(assert (=> d!831974 (= (tail!4577 (v!34545 lt!1018985)) (t!233570 (v!34545 lt!1018985)))))

(assert (=> b!2877647 d!831974))

(declare-fun d!831976 () Bool)

(assert (=> d!831976 (= (isEmpty!18734 (get!10344 lt!1018985)) ((_ is Nil!34403) (get!10344 lt!1018985)))))

(assert (=> d!831934 d!831976))

(assert (=> d!831934 d!831964))

(declare-fun d!831978 () Bool)

(declare-fun lambda!107350 () Int)

(declare-fun exists!1179 ((InoxSet Context!5410) Int) Bool)

(assert (=> d!831978 (= (nullableZipper!723 (store ((as const (Array Context!5410 Bool)) false) lt!1018984 true)) (exists!1179 (store ((as const (Array Context!5410 Bool)) false) lt!1018984 true) lambda!107350))))

(declare-fun bs!522927 () Bool)

(assert (= bs!522927 d!831978))

(assert (=> bs!522927 m!3294979))

(declare-fun m!3295205 () Bool)

(assert (=> bs!522927 m!3295205))

(assert (=> b!2877669 d!831978))

(declare-fun b!2877752 () Bool)

(declare-fun e!1820938 () List!34527)

(assert (=> b!2877752 (= e!1820938 (Cons!34403 (h!39823 (v!34545 lt!1019018)) (++!8180 (t!233570 (v!34545 lt!1019018)) (v!34545 lt!1019017))))))

(declare-fun b!2877751 () Bool)

(assert (=> b!2877751 (= e!1820938 (v!34545 lt!1019017))))

(declare-fun d!831980 () Bool)

(declare-fun e!1820939 () Bool)

(assert (=> d!831980 e!1820939))

(declare-fun res!1193065 () Bool)

(assert (=> d!831980 (=> (not res!1193065) (not e!1820939))))

(declare-fun lt!1019059 () List!34527)

(assert (=> d!831980 (= res!1193065 (= (content!4708 lt!1019059) ((_ map or) (content!4708 (v!34545 lt!1019018)) (content!4708 (v!34545 lt!1019017)))))))

(assert (=> d!831980 (= lt!1019059 e!1820938)))

(declare-fun c!466690 () Bool)

(assert (=> d!831980 (= c!466690 ((_ is Nil!34403) (v!34545 lt!1019018)))))

(assert (=> d!831980 (= (++!8180 (v!34545 lt!1019018) (v!34545 lt!1019017)) lt!1019059)))

(declare-fun b!2877753 () Bool)

(declare-fun res!1193066 () Bool)

(assert (=> b!2877753 (=> (not res!1193066) (not e!1820939))))

(assert (=> b!2877753 (= res!1193066 (= (size!26327 lt!1019059) (+ (size!26327 (v!34545 lt!1019018)) (size!26327 (v!34545 lt!1019017)))))))

(declare-fun b!2877754 () Bool)

(assert (=> b!2877754 (= e!1820939 (or (not (= (v!34545 lt!1019017) Nil!34403)) (= lt!1019059 (v!34545 lt!1019018))))))

(assert (= (and d!831980 c!466690) b!2877751))

(assert (= (and d!831980 (not c!466690)) b!2877752))

(assert (= (and d!831980 res!1193065) b!2877753))

(assert (= (and b!2877753 res!1193066) b!2877754))

(declare-fun m!3295207 () Bool)

(assert (=> b!2877752 m!3295207))

(declare-fun m!3295209 () Bool)

(assert (=> d!831980 m!3295209))

(declare-fun m!3295211 () Bool)

(assert (=> d!831980 m!3295211))

(declare-fun m!3295213 () Bool)

(assert (=> d!831980 m!3295213))

(declare-fun m!3295215 () Bool)

(assert (=> b!2877753 m!3295215))

(declare-fun m!3295217 () Bool)

(assert (=> b!2877753 m!3295217))

(declare-fun m!3295219 () Bool)

(assert (=> b!2877753 m!3295219))

(assert (=> b!2877507 d!831980))

(declare-fun d!831982 () Bool)

(assert (=> d!831982 (= (isEmpty!18734 (tail!4577 (get!10344 lt!1018985))) ((_ is Nil!34403) (tail!4577 (get!10344 lt!1018985))))))

(assert (=> b!2877653 d!831982))

(declare-fun d!831984 () Bool)

(assert (=> d!831984 (= (tail!4577 (get!10344 lt!1018985)) (t!233570 (get!10344 lt!1018985)))))

(assert (=> b!2877653 d!831984))

(assert (=> d!831948 d!831962))

(declare-fun d!831986 () Bool)

(declare-fun c!466691 () Bool)

(assert (=> d!831986 (= c!466691 (isEmpty!18734 (tail!4577 (get!10344 lt!1018982))))))

(declare-fun e!1820940 () Bool)

(assert (=> d!831986 (= (matchZipper!487 (derivationStepZipper!479 (store ((as const (Array Context!5410 Bool)) false) lt!1018984 true) (head!6352 (get!10344 lt!1018982))) (tail!4577 (get!10344 lt!1018982))) e!1820940)))

(declare-fun b!2877755 () Bool)

(assert (=> b!2877755 (= e!1820940 (nullableZipper!723 (derivationStepZipper!479 (store ((as const (Array Context!5410 Bool)) false) lt!1018984 true) (head!6352 (get!10344 lt!1018982)))))))

(declare-fun b!2877756 () Bool)

(assert (=> b!2877756 (= e!1820940 (matchZipper!487 (derivationStepZipper!479 (derivationStepZipper!479 (store ((as const (Array Context!5410 Bool)) false) lt!1018984 true) (head!6352 (get!10344 lt!1018982))) (head!6352 (tail!4577 (get!10344 lt!1018982)))) (tail!4577 (tail!4577 (get!10344 lt!1018982)))))))

(assert (= (and d!831986 c!466691) b!2877755))

(assert (= (and d!831986 (not c!466691)) b!2877756))

(assert (=> d!831986 m!3295131))

(declare-fun m!3295221 () Bool)

(assert (=> d!831986 m!3295221))

(assert (=> b!2877755 m!3295129))

(declare-fun m!3295223 () Bool)

(assert (=> b!2877755 m!3295223))

(assert (=> b!2877756 m!3295131))

(declare-fun m!3295225 () Bool)

(assert (=> b!2877756 m!3295225))

(assert (=> b!2877756 m!3295129))

(assert (=> b!2877756 m!3295225))

(declare-fun m!3295227 () Bool)

(assert (=> b!2877756 m!3295227))

(assert (=> b!2877756 m!3295131))

(declare-fun m!3295229 () Bool)

(assert (=> b!2877756 m!3295229))

(assert (=> b!2877756 m!3295227))

(assert (=> b!2877756 m!3295229))

(declare-fun m!3295231 () Bool)

(assert (=> b!2877756 m!3295231))

(assert (=> b!2877670 d!831986))

(declare-fun d!831988 () Bool)

(assert (=> d!831988 true))

(declare-fun lambda!107353 () Int)

(declare-fun flatMap!225 ((InoxSet Context!5410) Int) (InoxSet Context!5410))

(assert (=> d!831988 (= (derivationStepZipper!479 (store ((as const (Array Context!5410 Bool)) false) lt!1018984 true) (head!6352 (get!10344 lt!1018982))) (flatMap!225 (store ((as const (Array Context!5410 Bool)) false) lt!1018984 true) lambda!107353))))

(declare-fun bs!522928 () Bool)

(assert (= bs!522928 d!831988))

(assert (=> bs!522928 m!3294979))

(declare-fun m!3295233 () Bool)

(assert (=> bs!522928 m!3295233))

(assert (=> b!2877670 d!831988))

(declare-fun d!831990 () Bool)

(assert (=> d!831990 (= (head!6352 (get!10344 lt!1018982)) (h!39823 (get!10344 lt!1018982)))))

(assert (=> b!2877670 d!831990))

(declare-fun d!831992 () Bool)

(assert (=> d!831992 (= (tail!4577 (get!10344 lt!1018982)) (t!233570 (get!10344 lt!1018982)))))

(assert (=> b!2877670 d!831992))

(declare-fun d!831994 () Bool)

(assert (=> d!831994 (= (isEmpty!18732 lt!1019016) (not ((_ is Some!6419) lt!1019016)))))

(assert (=> d!831896 d!831994))

(declare-fun bs!522929 () Bool)

(declare-fun d!831996 () Bool)

(assert (= bs!522929 (and d!831996 d!831958)))

(declare-fun lambda!107356 () Int)

(assert (=> bs!522929 (not (= lambda!107356 lambda!107347))))

(declare-fun bs!522930 () Bool)

(assert (= bs!522930 (and d!831996 d!831928)))

(assert (=> bs!522930 (not (= lambda!107356 lambda!107345))))

(declare-fun bs!522931 () Bool)

(assert (= bs!522931 (and d!831996 d!831896)))

(assert (=> bs!522931 (not (= lambda!107356 lambda!107339))))

(declare-fun bs!522932 () Bool)

(assert (= bs!522932 (and d!831996 d!831926)))

(assert (=> bs!522932 (not (= lambda!107356 lambda!107342))))

(declare-fun bs!522933 () Bool)

(assert (= bs!522933 (and d!831996 d!831946)))

(assert (=> bs!522933 (not (= lambda!107356 lambda!107346))))

(assert (=> d!831996 true))

(declare-fun order!18141 () Int)

(declare-fun dynLambda!14322 (Int Int) Int)

(assert (=> d!831996 (< (dynLambda!14322 order!18141 lambda!107339) (dynLambda!14322 order!18141 lambda!107356))))

(assert (=> d!831996 (= (exists!1177 (exprs!3205 lt!1018984) lambda!107339) (not (forall!7088 (exprs!3205 lt!1018984) lambda!107356)))))

(declare-fun bs!522934 () Bool)

(assert (= bs!522934 d!831996))

(declare-fun m!3295235 () Bool)

(assert (=> bs!522934 m!3295235))

(assert (=> d!831896 d!831996))

(declare-fun bs!522935 () Bool)

(declare-fun d!832002 () Bool)

(assert (= bs!522935 (and d!832002 d!831958)))

(declare-fun lambda!107357 () Int)

(assert (=> bs!522935 (not (= lambda!107357 lambda!107347))))

(declare-fun bs!522936 () Bool)

(assert (= bs!522936 (and d!832002 d!831928)))

(assert (=> bs!522936 (not (= lambda!107357 lambda!107345))))

(declare-fun bs!522937 () Bool)

(assert (= bs!522937 (and d!832002 d!831896)))

(assert (=> bs!522937 (not (= lambda!107357 lambda!107339))))

(declare-fun bs!522938 () Bool)

(assert (= bs!522938 (and d!832002 d!831946)))

(assert (=> bs!522938 (not (= lambda!107357 lambda!107346))))

(declare-fun bs!522939 () Bool)

(assert (= bs!522939 (and d!832002 d!831926)))

(assert (=> bs!522939 (not (= lambda!107357 lambda!107342))))

(declare-fun bs!522940 () Bool)

(assert (= bs!522940 (and d!832002 d!831996)))

(assert (=> bs!522940 (= (= lambda!107342 lambda!107339) (= lambda!107357 lambda!107356))))

(assert (=> d!832002 true))

(assert (=> d!832002 (< (dynLambda!14322 order!18141 lambda!107342) (dynLambda!14322 order!18141 lambda!107357))))

(assert (=> d!832002 (= (exists!1177 (exprs!3205 c!7184) lambda!107342) (not (forall!7088 (exprs!3205 c!7184) lambda!107357)))))

(declare-fun bs!522941 () Bool)

(assert (= bs!522941 d!832002))

(declare-fun m!3295237 () Bool)

(assert (=> bs!522941 m!3295237))

(assert (=> d!831926 d!832002))

(declare-fun d!832004 () Bool)

(assert (=> d!832004 (= (head!6352 (v!34545 lt!1018985)) (h!39823 (v!34545 lt!1018985)))))

(assert (=> b!2877640 d!832004))

(assert (=> bm!186345 d!831976))

(assert (=> d!831950 d!831932))

(assert (=> d!831950 d!831948))

(declare-fun d!832006 () Bool)

(assert (=> d!832006 (= (matchR!3745 (h!39822 (exprs!3205 c!7184)) (v!34545 lt!1018985)) (matchZipper!487 lt!1018980 (v!34545 lt!1018985)))))

(assert (=> d!832006 true))

(declare-fun _$44!1299 () Unit!47991)

(assert (=> d!832006 (= (choose!17018 lt!1018980 (Cons!34404 lt!1018983 Nil!34404) (h!39822 (exprs!3205 c!7184)) (v!34545 lt!1018985)) _$44!1299)))

(declare-fun bs!522942 () Bool)

(assert (= bs!522942 d!832006))

(assert (=> bs!522942 m!3294989))

(assert (=> bs!522942 m!3294965))

(assert (=> d!831950 d!832006))

(assert (=> d!831950 d!831964))

(declare-fun d!832010 () Bool)

(declare-fun res!1193079 () Bool)

(declare-fun e!1820954 () Bool)

(assert (=> d!832010 (=> res!1193079 e!1820954)))

(assert (=> d!832010 (= res!1193079 ((_ is Nil!34402) (exprs!3205 lt!1018984)))))

(assert (=> d!832010 (= (forall!7088 (exprs!3205 lt!1018984) lambda!107346) e!1820954)))

(declare-fun b!2877783 () Bool)

(declare-fun e!1820955 () Bool)

(assert (=> b!2877783 (= e!1820954 e!1820955)))

(declare-fun res!1193080 () Bool)

(assert (=> b!2877783 (=> (not res!1193080) (not e!1820955))))

(declare-fun dynLambda!14323 (Int Regex!8745) Bool)

(assert (=> b!2877783 (= res!1193080 (dynLambda!14323 lambda!107346 (h!39822 (exprs!3205 lt!1018984))))))

(declare-fun b!2877784 () Bool)

(assert (=> b!2877784 (= e!1820955 (forall!7088 (t!233569 (exprs!3205 lt!1018984)) lambda!107346))))

(assert (= (and d!832010 (not res!1193079)) b!2877783))

(assert (= (and b!2877783 res!1193080) b!2877784))

(declare-fun b_lambda!86203 () Bool)

(assert (=> (not b_lambda!86203) (not b!2877783)))

(declare-fun m!3295253 () Bool)

(assert (=> b!2877783 m!3295253))

(declare-fun m!3295255 () Bool)

(assert (=> b!2877784 m!3295255))

(assert (=> d!831946 d!832010))

(declare-fun b!2877801 () Bool)

(declare-fun res!1193083 () Bool)

(declare-fun e!1820966 () Bool)

(assert (=> b!2877801 (=> res!1193083 e!1820966)))

(declare-fun e!1820969 () Bool)

(assert (=> b!2877801 (= res!1193083 e!1820969)))

(declare-fun res!1193081 () Bool)

(assert (=> b!2877801 (=> (not res!1193081) (not e!1820969))))

(declare-fun lt!1019063 () Bool)

(assert (=> b!2877801 (= res!1193081 lt!1019063)))

(declare-fun b!2877802 () Bool)

(declare-fun res!1193087 () Bool)

(assert (=> b!2877802 (=> res!1193087 e!1820966)))

(assert (=> b!2877802 (= res!1193087 (not ((_ is ElementMatch!8745) (derivativeStep!2328 (h!39822 (exprs!3205 c!7184)) (head!6352 (v!34545 lt!1018985))))))))

(declare-fun e!1820967 () Bool)

(assert (=> b!2877802 (= e!1820967 e!1820966)))

(declare-fun b!2877803 () Bool)

(declare-fun res!1193088 () Bool)

(declare-fun e!1820968 () Bool)

(assert (=> b!2877803 (=> res!1193088 e!1820968)))

(assert (=> b!2877803 (= res!1193088 (not (isEmpty!18734 (tail!4577 (tail!4577 (v!34545 lt!1018985))))))))

(declare-fun b!2877804 () Bool)

(assert (=> b!2877804 (= e!1820968 (not (= (head!6352 (tail!4577 (v!34545 lt!1018985))) (c!466558 (derivativeStep!2328 (h!39822 (exprs!3205 c!7184)) (head!6352 (v!34545 lt!1018985)))))))))

(declare-fun b!2877805 () Bool)

(declare-fun res!1193082 () Bool)

(assert (=> b!2877805 (=> (not res!1193082) (not e!1820969))))

(declare-fun call!186367 () Bool)

(assert (=> b!2877805 (= res!1193082 (not call!186367))))

(declare-fun b!2877806 () Bool)

(declare-fun e!1820964 () Bool)

(assert (=> b!2877806 (= e!1820964 (matchR!3745 (derivativeStep!2328 (derivativeStep!2328 (h!39822 (exprs!3205 c!7184)) (head!6352 (v!34545 lt!1018985))) (head!6352 (tail!4577 (v!34545 lt!1018985)))) (tail!4577 (tail!4577 (v!34545 lt!1018985)))))))

(declare-fun b!2877807 () Bool)

(assert (=> b!2877807 (= e!1820969 (= (head!6352 (tail!4577 (v!34545 lt!1018985))) (c!466558 (derivativeStep!2328 (h!39822 (exprs!3205 c!7184)) (head!6352 (v!34545 lt!1018985))))))))

(declare-fun b!2877808 () Bool)

(declare-fun e!1820970 () Bool)

(assert (=> b!2877808 (= e!1820966 e!1820970)))

(declare-fun res!1193085 () Bool)

(assert (=> b!2877808 (=> (not res!1193085) (not e!1820970))))

(assert (=> b!2877808 (= res!1193085 (not lt!1019063))))

(declare-fun b!2877809 () Bool)

(assert (=> b!2877809 (= e!1820967 (not lt!1019063))))

(declare-fun b!2877810 () Bool)

(assert (=> b!2877810 (= e!1820964 (nullable!2695 (derivativeStep!2328 (h!39822 (exprs!3205 c!7184)) (head!6352 (v!34545 lt!1018985)))))))

(declare-fun b!2877812 () Bool)

(declare-fun e!1820965 () Bool)

(assert (=> b!2877812 (= e!1820965 e!1820967)))

(declare-fun c!466709 () Bool)

(assert (=> b!2877812 (= c!466709 ((_ is EmptyLang!8745) (derivativeStep!2328 (h!39822 (exprs!3205 c!7184)) (head!6352 (v!34545 lt!1018985)))))))

(declare-fun b!2877813 () Bool)

(assert (=> b!2877813 (= e!1820965 (= lt!1019063 call!186367))))

(declare-fun b!2877814 () Bool)

(assert (=> b!2877814 (= e!1820970 e!1820968)))

(declare-fun res!1193084 () Bool)

(assert (=> b!2877814 (=> res!1193084 e!1820968)))

(assert (=> b!2877814 (= res!1193084 call!186367)))

(declare-fun bm!186362 () Bool)

(assert (=> bm!186362 (= call!186367 (isEmpty!18734 (tail!4577 (v!34545 lt!1018985))))))

(declare-fun d!832012 () Bool)

(assert (=> d!832012 e!1820965))

(declare-fun c!466708 () Bool)

(assert (=> d!832012 (= c!466708 ((_ is EmptyExpr!8745) (derivativeStep!2328 (h!39822 (exprs!3205 c!7184)) (head!6352 (v!34545 lt!1018985)))))))

(assert (=> d!832012 (= lt!1019063 e!1820964)))

(declare-fun c!466707 () Bool)

(assert (=> d!832012 (= c!466707 (isEmpty!18734 (tail!4577 (v!34545 lt!1018985))))))

(assert (=> d!832012 (validRegex!3523 (derivativeStep!2328 (h!39822 (exprs!3205 c!7184)) (head!6352 (v!34545 lt!1018985))))))

(assert (=> d!832012 (= (matchR!3745 (derivativeStep!2328 (h!39822 (exprs!3205 c!7184)) (head!6352 (v!34545 lt!1018985))) (tail!4577 (v!34545 lt!1018985))) lt!1019063)))

(declare-fun b!2877811 () Bool)

(declare-fun res!1193086 () Bool)

(assert (=> b!2877811 (=> (not res!1193086) (not e!1820969))))

(assert (=> b!2877811 (= res!1193086 (isEmpty!18734 (tail!4577 (tail!4577 (v!34545 lt!1018985)))))))

(assert (= (and d!832012 c!466707) b!2877810))

(assert (= (and d!832012 (not c!466707)) b!2877806))

(assert (= (and d!832012 c!466708) b!2877813))

(assert (= (and d!832012 (not c!466708)) b!2877812))

(assert (= (and b!2877812 c!466709) b!2877809))

(assert (= (and b!2877812 (not c!466709)) b!2877802))

(assert (= (and b!2877802 (not res!1193087)) b!2877801))

(assert (= (and b!2877801 res!1193081) b!2877805))

(assert (= (and b!2877805 res!1193082) b!2877811))

(assert (= (and b!2877811 res!1193086) b!2877807))

(assert (= (and b!2877801 (not res!1193083)) b!2877808))

(assert (= (and b!2877808 res!1193085) b!2877814))

(assert (= (and b!2877814 (not res!1193084)) b!2877803))

(assert (= (and b!2877803 (not res!1193088)) b!2877804))

(assert (= (or b!2877813 b!2877814 b!2877805) bm!186362))

(assert (=> b!2877803 m!3295095))

(declare-fun m!3295257 () Bool)

(assert (=> b!2877803 m!3295257))

(assert (=> b!2877803 m!3295257))

(declare-fun m!3295259 () Bool)

(assert (=> b!2877803 m!3295259))

(assert (=> bm!186362 m!3295095))

(assert (=> bm!186362 m!3295097))

(assert (=> b!2877811 m!3295095))

(assert (=> b!2877811 m!3295257))

(assert (=> b!2877811 m!3295257))

(assert (=> b!2877811 m!3295259))

(assert (=> b!2877804 m!3295095))

(declare-fun m!3295261 () Bool)

(assert (=> b!2877804 m!3295261))

(assert (=> b!2877806 m!3295095))

(assert (=> b!2877806 m!3295261))

(assert (=> b!2877806 m!3295103))

(assert (=> b!2877806 m!3295261))

(declare-fun m!3295263 () Bool)

(assert (=> b!2877806 m!3295263))

(assert (=> b!2877806 m!3295095))

(assert (=> b!2877806 m!3295257))

(assert (=> b!2877806 m!3295263))

(assert (=> b!2877806 m!3295257))

(declare-fun m!3295265 () Bool)

(assert (=> b!2877806 m!3295265))

(assert (=> d!832012 m!3295095))

(assert (=> d!832012 m!3295097))

(assert (=> d!832012 m!3295103))

(declare-fun m!3295267 () Bool)

(assert (=> d!832012 m!3295267))

(assert (=> b!2877807 m!3295095))

(assert (=> b!2877807 m!3295261))

(assert (=> b!2877810 m!3295103))

(declare-fun m!3295269 () Bool)

(assert (=> b!2877810 m!3295269))

(assert (=> b!2877642 d!832012))

(declare-fun b!2877845 () Bool)

(declare-fun call!186387 () Regex!8745)

(declare-fun e!1820986 () Regex!8745)

(declare-fun call!186388 () Regex!8745)

(assert (=> b!2877845 (= e!1820986 (Union!8745 (Concat!14066 call!186387 (regTwo!18002 (h!39822 (exprs!3205 c!7184)))) call!186388))))

(declare-fun b!2877846 () Bool)

(declare-fun e!1820987 () Regex!8745)

(declare-fun call!186386 () Regex!8745)

(assert (=> b!2877846 (= e!1820987 (Concat!14066 call!186386 (h!39822 (exprs!3205 c!7184))))))

(declare-fun b!2877847 () Bool)

(declare-fun c!466729 () Bool)

(assert (=> b!2877847 (= c!466729 (nullable!2695 (regOne!18002 (h!39822 (exprs!3205 c!7184)))))))

(assert (=> b!2877847 (= e!1820987 e!1820986)))

(declare-fun b!2877848 () Bool)

(declare-fun e!1820988 () Regex!8745)

(declare-fun call!186389 () Regex!8745)

(assert (=> b!2877848 (= e!1820988 (Union!8745 call!186389 call!186388))))

(declare-fun b!2877849 () Bool)

(declare-fun e!1820990 () Regex!8745)

(assert (=> b!2877849 (= e!1820990 (ite (= (head!6352 (v!34545 lt!1018985)) (c!466558 (h!39822 (exprs!3205 c!7184)))) EmptyExpr!8745 EmptyLang!8745))))

(declare-fun bm!186381 () Bool)

(declare-fun c!466731 () Bool)

(assert (=> bm!186381 (= call!186388 (derivativeStep!2328 (ite c!466731 (regTwo!18003 (h!39822 (exprs!3205 c!7184))) (regTwo!18002 (h!39822 (exprs!3205 c!7184)))) (head!6352 (v!34545 lt!1018985))))))

(declare-fun d!832014 () Bool)

(declare-fun lt!1019067 () Regex!8745)

(assert (=> d!832014 (validRegex!3523 lt!1019067)))

(declare-fun e!1820989 () Regex!8745)

(assert (=> d!832014 (= lt!1019067 e!1820989)))

(declare-fun c!466727 () Bool)

(assert (=> d!832014 (= c!466727 (or ((_ is EmptyExpr!8745) (h!39822 (exprs!3205 c!7184))) ((_ is EmptyLang!8745) (h!39822 (exprs!3205 c!7184)))))))

(assert (=> d!832014 (validRegex!3523 (h!39822 (exprs!3205 c!7184)))))

(assert (=> d!832014 (= (derivativeStep!2328 (h!39822 (exprs!3205 c!7184)) (head!6352 (v!34545 lt!1018985))) lt!1019067)))

(declare-fun b!2877850 () Bool)

(assert (=> b!2877850 (= e!1820988 e!1820987)))

(declare-fun c!466728 () Bool)

(assert (=> b!2877850 (= c!466728 ((_ is Star!8745) (h!39822 (exprs!3205 c!7184))))))

(declare-fun b!2877851 () Bool)

(assert (=> b!2877851 (= e!1820989 e!1820990)))

(declare-fun c!466730 () Bool)

(assert (=> b!2877851 (= c!466730 ((_ is ElementMatch!8745) (h!39822 (exprs!3205 c!7184))))))

(declare-fun bm!186382 () Bool)

(assert (=> bm!186382 (= call!186386 call!186389)))

(declare-fun b!2877852 () Bool)

(assert (=> b!2877852 (= e!1820989 EmptyLang!8745)))

(declare-fun bm!186383 () Bool)

(assert (=> bm!186383 (= call!186387 call!186386)))

(declare-fun b!2877853 () Bool)

(assert (=> b!2877853 (= e!1820986 (Union!8745 (Concat!14066 call!186387 (regTwo!18002 (h!39822 (exprs!3205 c!7184)))) EmptyLang!8745))))

(declare-fun bm!186384 () Bool)

(assert (=> bm!186384 (= call!186389 (derivativeStep!2328 (ite c!466731 (regOne!18003 (h!39822 (exprs!3205 c!7184))) (ite c!466728 (reg!9074 (h!39822 (exprs!3205 c!7184))) (regOne!18002 (h!39822 (exprs!3205 c!7184))))) (head!6352 (v!34545 lt!1018985))))))

(declare-fun b!2877854 () Bool)

(assert (=> b!2877854 (= c!466731 ((_ is Union!8745) (h!39822 (exprs!3205 c!7184))))))

(assert (=> b!2877854 (= e!1820990 e!1820988)))

(assert (= (and d!832014 c!466727) b!2877852))

(assert (= (and d!832014 (not c!466727)) b!2877851))

(assert (= (and b!2877851 c!466730) b!2877849))

(assert (= (and b!2877851 (not c!466730)) b!2877854))

(assert (= (and b!2877854 c!466731) b!2877848))

(assert (= (and b!2877854 (not c!466731)) b!2877850))

(assert (= (and b!2877850 c!466728) b!2877846))

(assert (= (and b!2877850 (not c!466728)) b!2877847))

(assert (= (and b!2877847 c!466729) b!2877845))

(assert (= (and b!2877847 (not c!466729)) b!2877853))

(assert (= (or b!2877845 b!2877853) bm!186383))

(assert (= (or b!2877846 bm!186383) bm!186382))

(assert (= (or b!2877848 bm!186382) bm!186384))

(assert (= (or b!2877848 b!2877845) bm!186381))

(declare-fun m!3295283 () Bool)

(assert (=> b!2877847 m!3295283))

(assert (=> bm!186381 m!3295101))

(declare-fun m!3295285 () Bool)

(assert (=> bm!186381 m!3295285))

(declare-fun m!3295287 () Bool)

(assert (=> d!832014 m!3295287))

(assert (=> d!832014 m!3295107))

(assert (=> bm!186384 m!3295101))

(declare-fun m!3295289 () Bool)

(assert (=> bm!186384 m!3295289))

(assert (=> b!2877642 d!832014))

(assert (=> b!2877642 d!832004))

(assert (=> b!2877642 d!831974))

(declare-fun d!832028 () Bool)

(declare-fun res!1193089 () Bool)

(declare-fun e!1820991 () Bool)

(assert (=> d!832028 (=> res!1193089 e!1820991)))

(assert (=> d!832028 (= res!1193089 ((_ is Nil!34402) (exprs!3205 c!7184)))))

(assert (=> d!832028 (= (forall!7088 (exprs!3205 c!7184) lambda!107345) e!1820991)))

(declare-fun b!2877855 () Bool)

(declare-fun e!1820992 () Bool)

(assert (=> b!2877855 (= e!1820991 e!1820992)))

(declare-fun res!1193090 () Bool)

(assert (=> b!2877855 (=> (not res!1193090) (not e!1820992))))

(assert (=> b!2877855 (= res!1193090 (dynLambda!14323 lambda!107345 (h!39822 (exprs!3205 c!7184))))))

(declare-fun b!2877856 () Bool)

(assert (=> b!2877856 (= e!1820992 (forall!7088 (t!233569 (exprs!3205 c!7184)) lambda!107345))))

(assert (= (and d!832028 (not res!1193089)) b!2877855))

(assert (= (and b!2877855 res!1193090) b!2877856))

(declare-fun b_lambda!86205 () Bool)

(assert (=> (not b_lambda!86205) (not b!2877855)))

(declare-fun m!3295291 () Bool)

(assert (=> b!2877855 m!3295291))

(declare-fun m!3295293 () Bool)

(assert (=> b!2877856 m!3295293))

(assert (=> d!831928 d!832028))

(assert (=> b!2877643 d!832004))

(declare-fun bs!522951 () Bool)

(declare-fun d!832032 () Bool)

(assert (= bs!522951 (and d!832032 d!832002)))

(declare-fun lambda!107363 () Int)

(assert (=> bs!522951 (not (= lambda!107363 lambda!107357))))

(declare-fun bs!522953 () Bool)

(assert (= bs!522953 (and d!832032 d!831958)))

(assert (=> bs!522953 (= lambda!107363 lambda!107347)))

(declare-fun bs!522954 () Bool)

(assert (= bs!522954 (and d!832032 d!831928)))

(assert (=> bs!522954 (not (= lambda!107363 lambda!107345))))

(declare-fun bs!522955 () Bool)

(assert (= bs!522955 (and d!832032 d!831896)))

(assert (=> bs!522955 (= lambda!107363 lambda!107339)))

(declare-fun bs!522956 () Bool)

(assert (= bs!522956 (and d!832032 d!831946)))

(assert (=> bs!522956 (not (= lambda!107363 lambda!107346))))

(declare-fun bs!522957 () Bool)

(assert (= bs!522957 (and d!832032 d!831926)))

(assert (=> bs!522957 (= lambda!107363 lambda!107342)))

(declare-fun bs!522958 () Bool)

(assert (= bs!522958 (and d!832032 d!831996)))

(assert (=> bs!522958 (not (= lambda!107363 lambda!107356))))

(declare-fun b!2877857 () Bool)

(declare-fun c!466733 () Bool)

(declare-fun lt!1019069 () Option!6420)

(assert (=> b!2877857 (= c!466733 ((_ is Some!6419) lt!1019069))))

(assert (=> b!2877857 (= lt!1019069 (getLanguageWitness!441 (Context!5411 (t!233569 (exprs!3205 (Context!5411 (t!233569 (exprs!3205 lt!1018984))))))))))

(declare-fun e!1820993 () Option!6420)

(declare-fun e!1820995 () Option!6420)

(assert (=> b!2877857 (= e!1820993 e!1820995)))

(declare-fun b!2877858 () Bool)

(assert (=> b!2877858 (= e!1820995 None!6419)))

(declare-fun b!2877859 () Bool)

(declare-fun e!1820994 () Option!6420)

(assert (=> b!2877859 (= e!1820994 (Some!6419 Nil!34403))))

(declare-fun lt!1019068 () Option!6420)

(assert (=> d!832032 (= (isEmpty!18732 lt!1019068) (exists!1177 (exprs!3205 (Context!5411 (t!233569 (exprs!3205 lt!1018984)))) lambda!107363))))

(assert (=> d!832032 (= lt!1019068 e!1820994)))

(declare-fun c!466735 () Bool)

(assert (=> d!832032 (= c!466735 ((_ is Cons!34402) (exprs!3205 (Context!5411 (t!233569 (exprs!3205 lt!1018984))))))))

(assert (=> d!832032 (= (getLanguageWitness!441 (Context!5411 (t!233569 (exprs!3205 lt!1018984)))) lt!1019068)))

(declare-fun b!2877860 () Bool)

(assert (=> b!2877860 (= e!1820994 e!1820993)))

(declare-fun lt!1019070 () Option!6420)

(assert (=> b!2877860 (= lt!1019070 (getLanguageWitness!442 (h!39822 (exprs!3205 (Context!5411 (t!233569 (exprs!3205 lt!1018984)))))))))

(declare-fun c!466734 () Bool)

(assert (=> b!2877860 (= c!466734 ((_ is Some!6419) lt!1019070))))

(declare-fun b!2877861 () Bool)

(assert (=> b!2877861 (= e!1820993 None!6419)))

(declare-fun b!2877862 () Bool)

(assert (=> b!2877862 (= e!1820995 (Some!6419 (++!8180 (v!34545 lt!1019070) (v!34545 lt!1019069))))))

(assert (= (and d!832032 c!466735) b!2877860))

(assert (= (and d!832032 (not c!466735)) b!2877859))

(assert (= (and b!2877860 c!466734) b!2877857))

(assert (= (and b!2877860 (not c!466734)) b!2877861))

(assert (= (and b!2877857 c!466733) b!2877862))

(assert (= (and b!2877857 (not c!466733)) b!2877858))

(declare-fun m!3295307 () Bool)

(assert (=> b!2877857 m!3295307))

(declare-fun m!3295309 () Bool)

(assert (=> d!832032 m!3295309))

(declare-fun m!3295313 () Bool)

(assert (=> d!832032 m!3295313))

(declare-fun m!3295315 () Bool)

(assert (=> b!2877860 m!3295315))

(declare-fun m!3295317 () Bool)

(assert (=> b!2877862 m!3295317))

(assert (=> b!2877502 d!832032))

(declare-fun b!2877867 () Bool)

(declare-fun e!1820998 () Option!6420)

(assert (=> b!2877867 (= e!1820998 None!6419)))

(declare-fun b!2877868 () Bool)

(declare-fun e!1821002 () Option!6420)

(declare-fun e!1821003 () Option!6420)

(assert (=> b!2877868 (= e!1821002 e!1821003)))

(declare-fun lt!1019071 () Option!6420)

(declare-fun call!186391 () Option!6420)

(assert (=> b!2877868 (= lt!1019071 call!186391)))

(declare-fun c!466738 () Bool)

(assert (=> b!2877868 (= c!466738 ((_ is Some!6419) lt!1019071))))

(declare-fun b!2877869 () Bool)

(declare-fun e!1821004 () Option!6420)

(assert (=> b!2877869 (= e!1821004 (Some!6419 Nil!34403))))

(declare-fun b!2877870 () Bool)

(declare-fun e!1820999 () Option!6420)

(declare-fun lt!1019073 () Option!6420)

(declare-fun lt!1019072 () Option!6420)

(assert (=> b!2877870 (= e!1820999 (Some!6419 (++!8180 (v!34545 lt!1019073) (v!34545 lt!1019072))))))

(declare-fun bm!186385 () Bool)

(declare-fun c!466743 () Bool)

(assert (=> bm!186385 (= call!186391 (getLanguageWitness!442 (ite c!466743 (regOne!18003 (ite c!466641 (regTwo!18003 (h!39822 (exprs!3205 c!7184))) (regTwo!18002 (h!39822 (exprs!3205 c!7184))))) (regOne!18002 (ite c!466641 (regTwo!18003 (h!39822 (exprs!3205 c!7184))) (regTwo!18002 (h!39822 (exprs!3205 c!7184))))))))))

(declare-fun b!2877871 () Bool)

(assert (=> b!2877871 (= e!1821003 lt!1019071)))

(declare-fun b!2877872 () Bool)

(declare-fun e!1821005 () Option!6420)

(assert (=> b!2877872 (= e!1821005 None!6419)))

(declare-fun b!2877873 () Bool)

(declare-fun e!1821001 () Option!6420)

(assert (=> b!2877873 (= e!1821001 (Some!6419 Nil!34403))))

(declare-fun b!2877874 () Bool)

(assert (=> b!2877874 (= e!1821004 e!1821005)))

(declare-fun c!466740 () Bool)

(assert (=> b!2877874 (= c!466740 ((_ is EmptyLang!8745) (ite c!466641 (regTwo!18003 (h!39822 (exprs!3205 c!7184))) (regTwo!18002 (h!39822 (exprs!3205 c!7184))))))))

(declare-fun b!2877875 () Bool)

(declare-fun c!466739 () Bool)

(assert (=> b!2877875 (= c!466739 ((_ is ElementMatch!8745) (ite c!466641 (regTwo!18003 (h!39822 (exprs!3205 c!7184))) (regTwo!18002 (h!39822 (exprs!3205 c!7184))))))))

(declare-fun e!1821000 () Option!6420)

(assert (=> b!2877875 (= e!1821005 e!1821000)))

(declare-fun b!2877876 () Bool)

(assert (=> b!2877876 (= e!1821000 (Some!6419 (Cons!34403 (c!466558 (ite c!466641 (regTwo!18003 (h!39822 (exprs!3205 c!7184))) (regTwo!18002 (h!39822 (exprs!3205 c!7184))))) Nil!34403)))))

(declare-fun b!2877877 () Bool)

(declare-fun c!466745 () Bool)

(assert (=> b!2877877 (= c!466745 ((_ is Some!6419) lt!1019072))))

(declare-fun call!186390 () Option!6420)

(assert (=> b!2877877 (= lt!1019072 call!186390)))

(assert (=> b!2877877 (= e!1820998 e!1820999)))

(declare-fun b!2877878 () Bool)

(assert (=> b!2877878 (= e!1820999 None!6419)))

(declare-fun b!2877879 () Bool)

(assert (=> b!2877879 (= e!1821003 call!186390)))

(declare-fun d!832038 () Bool)

(declare-fun c!466741 () Bool)

(assert (=> d!832038 (= c!466741 ((_ is EmptyExpr!8745) (ite c!466641 (regTwo!18003 (h!39822 (exprs!3205 c!7184))) (regTwo!18002 (h!39822 (exprs!3205 c!7184))))))))

(assert (=> d!832038 (= (getLanguageWitness!442 (ite c!466641 (regTwo!18003 (h!39822 (exprs!3205 c!7184))) (regTwo!18002 (h!39822 (exprs!3205 c!7184))))) e!1821004)))

(declare-fun bm!186386 () Bool)

(assert (=> bm!186386 (= call!186390 (getLanguageWitness!442 (ite c!466743 (regTwo!18003 (ite c!466641 (regTwo!18003 (h!39822 (exprs!3205 c!7184))) (regTwo!18002 (h!39822 (exprs!3205 c!7184))))) (regTwo!18002 (ite c!466641 (regTwo!18003 (h!39822 (exprs!3205 c!7184))) (regTwo!18002 (h!39822 (exprs!3205 c!7184))))))))))

(declare-fun b!2877880 () Bool)

(assert (=> b!2877880 (= c!466743 ((_ is Union!8745) (ite c!466641 (regTwo!18003 (h!39822 (exprs!3205 c!7184))) (regTwo!18002 (h!39822 (exprs!3205 c!7184))))))))

(assert (=> b!2877880 (= e!1821001 e!1821002)))

(declare-fun b!2877881 () Bool)

(assert (=> b!2877881 (= e!1821002 e!1820998)))

(assert (=> b!2877881 (= lt!1019073 call!186391)))

(declare-fun c!466744 () Bool)

(assert (=> b!2877881 (= c!466744 ((_ is Some!6419) lt!1019073))))

(declare-fun b!2877882 () Bool)

(assert (=> b!2877882 (= e!1821000 e!1821001)))

(declare-fun c!466742 () Bool)

(assert (=> b!2877882 (= c!466742 ((_ is Star!8745) (ite c!466641 (regTwo!18003 (h!39822 (exprs!3205 c!7184))) (regTwo!18002 (h!39822 (exprs!3205 c!7184))))))))

(assert (= (and d!832038 c!466741) b!2877869))

(assert (= (and d!832038 (not c!466741)) b!2877874))

(assert (= (and b!2877874 c!466740) b!2877872))

(assert (= (and b!2877874 (not c!466740)) b!2877875))

(assert (= (and b!2877875 c!466739) b!2877876))

(assert (= (and b!2877875 (not c!466739)) b!2877882))

(assert (= (and b!2877882 c!466742) b!2877873))

(assert (= (and b!2877882 (not c!466742)) b!2877880))

(assert (= (and b!2877880 c!466743) b!2877868))

(assert (= (and b!2877880 (not c!466743)) b!2877881))

(assert (= (and b!2877868 c!466738) b!2877871))

(assert (= (and b!2877868 (not c!466738)) b!2877879))

(assert (= (and b!2877881 c!466744) b!2877877))

(assert (= (and b!2877881 (not c!466744)) b!2877867))

(assert (= (and b!2877877 c!466745) b!2877870))

(assert (= (and b!2877877 (not c!466745)) b!2877878))

(assert (= (or b!2877879 b!2877877) bm!186386))

(assert (= (or b!2877868 b!2877881) bm!186385))

(declare-fun m!3295323 () Bool)

(assert (=> b!2877870 m!3295323))

(declare-fun m!3295325 () Bool)

(assert (=> bm!186385 m!3295325))

(declare-fun m!3295327 () Bool)

(assert (=> bm!186386 m!3295327))

(assert (=> bm!186341 d!832038))

(assert (=> b!2877660 d!831968))

(assert (=> b!2877661 d!831982))

(assert (=> b!2877661 d!831984))

(assert (=> b!2877639 d!831972))

(assert (=> b!2877639 d!831974))

(declare-fun d!832042 () Bool)

(assert (=> d!832042 (= (head!6352 (get!10344 lt!1018985)) (h!39823 (get!10344 lt!1018985)))))

(assert (=> b!2877654 d!832042))

(assert (=> d!831942 d!831964))

(declare-fun d!832044 () Bool)

(assert (=> d!832044 (= (get!10344 (getLanguageWitness!442 (h!39822 (exprs!3205 c!7184)))) (v!34545 (getLanguageWitness!442 (h!39822 (exprs!3205 c!7184)))))))

(assert (=> d!831942 d!832044))

(assert (=> d!831942 d!831930))

(declare-fun b!2877883 () Bool)

(declare-fun res!1193093 () Bool)

(declare-fun e!1821008 () Bool)

(assert (=> b!2877883 (=> res!1193093 e!1821008)))

(declare-fun e!1821011 () Bool)

(assert (=> b!2877883 (= res!1193093 e!1821011)))

(declare-fun res!1193091 () Bool)

(assert (=> b!2877883 (=> (not res!1193091) (not e!1821011))))

(declare-fun lt!1019074 () Bool)

(assert (=> b!2877883 (= res!1193091 lt!1019074)))

(declare-fun b!2877884 () Bool)

(declare-fun res!1193097 () Bool)

(assert (=> b!2877884 (=> res!1193097 e!1821008)))

(assert (=> b!2877884 (= res!1193097 (not ((_ is ElementMatch!8745) (h!39822 (exprs!3205 c!7184)))))))

(declare-fun e!1821009 () Bool)

(assert (=> b!2877884 (= e!1821009 e!1821008)))

(declare-fun b!2877885 () Bool)

(declare-fun res!1193098 () Bool)

(declare-fun e!1821010 () Bool)

(assert (=> b!2877885 (=> res!1193098 e!1821010)))

(assert (=> b!2877885 (= res!1193098 (not (isEmpty!18734 (tail!4577 (get!10344 (getLanguageWitness!442 (h!39822 (exprs!3205 c!7184))))))))))

(declare-fun b!2877886 () Bool)

(assert (=> b!2877886 (= e!1821010 (not (= (head!6352 (get!10344 (getLanguageWitness!442 (h!39822 (exprs!3205 c!7184))))) (c!466558 (h!39822 (exprs!3205 c!7184))))))))

(declare-fun b!2877887 () Bool)

(declare-fun res!1193092 () Bool)

(assert (=> b!2877887 (=> (not res!1193092) (not e!1821011))))

(declare-fun call!186392 () Bool)

(assert (=> b!2877887 (= res!1193092 (not call!186392))))

(declare-fun b!2877888 () Bool)

(declare-fun e!1821006 () Bool)

(assert (=> b!2877888 (= e!1821006 (matchR!3745 (derivativeStep!2328 (h!39822 (exprs!3205 c!7184)) (head!6352 (get!10344 (getLanguageWitness!442 (h!39822 (exprs!3205 c!7184)))))) (tail!4577 (get!10344 (getLanguageWitness!442 (h!39822 (exprs!3205 c!7184)))))))))

(declare-fun b!2877889 () Bool)

(assert (=> b!2877889 (= e!1821011 (= (head!6352 (get!10344 (getLanguageWitness!442 (h!39822 (exprs!3205 c!7184))))) (c!466558 (h!39822 (exprs!3205 c!7184)))))))

(declare-fun b!2877890 () Bool)

(declare-fun e!1821012 () Bool)

(assert (=> b!2877890 (= e!1821008 e!1821012)))

(declare-fun res!1193095 () Bool)

(assert (=> b!2877890 (=> (not res!1193095) (not e!1821012))))

(assert (=> b!2877890 (= res!1193095 (not lt!1019074))))

(declare-fun b!2877891 () Bool)

(assert (=> b!2877891 (= e!1821009 (not lt!1019074))))

(declare-fun b!2877892 () Bool)

(assert (=> b!2877892 (= e!1821006 (nullable!2695 (h!39822 (exprs!3205 c!7184))))))

(declare-fun b!2877894 () Bool)

(declare-fun e!1821007 () Bool)

(assert (=> b!2877894 (= e!1821007 e!1821009)))

(declare-fun c!466750 () Bool)

(assert (=> b!2877894 (= c!466750 ((_ is EmptyLang!8745) (h!39822 (exprs!3205 c!7184))))))

(declare-fun b!2877895 () Bool)

(assert (=> b!2877895 (= e!1821007 (= lt!1019074 call!186392))))

(declare-fun b!2877896 () Bool)

(assert (=> b!2877896 (= e!1821012 e!1821010)))

(declare-fun res!1193094 () Bool)

(assert (=> b!2877896 (=> res!1193094 e!1821010)))

(assert (=> b!2877896 (= res!1193094 call!186392)))

(declare-fun bm!186387 () Bool)

(assert (=> bm!186387 (= call!186392 (isEmpty!18734 (get!10344 (getLanguageWitness!442 (h!39822 (exprs!3205 c!7184))))))))

(declare-fun d!832046 () Bool)

(assert (=> d!832046 e!1821007))

(declare-fun c!466749 () Bool)

(assert (=> d!832046 (= c!466749 ((_ is EmptyExpr!8745) (h!39822 (exprs!3205 c!7184))))))

(assert (=> d!832046 (= lt!1019074 e!1821006)))

(declare-fun c!466748 () Bool)

(assert (=> d!832046 (= c!466748 (isEmpty!18734 (get!10344 (getLanguageWitness!442 (h!39822 (exprs!3205 c!7184))))))))

(assert (=> d!832046 (validRegex!3523 (h!39822 (exprs!3205 c!7184)))))

(assert (=> d!832046 (= (matchR!3745 (h!39822 (exprs!3205 c!7184)) (get!10344 (getLanguageWitness!442 (h!39822 (exprs!3205 c!7184))))) lt!1019074)))

(declare-fun b!2877893 () Bool)

(declare-fun res!1193096 () Bool)

(assert (=> b!2877893 (=> (not res!1193096) (not e!1821011))))

(assert (=> b!2877893 (= res!1193096 (isEmpty!18734 (tail!4577 (get!10344 (getLanguageWitness!442 (h!39822 (exprs!3205 c!7184)))))))))

(assert (= (and d!832046 c!466748) b!2877892))

(assert (= (and d!832046 (not c!466748)) b!2877888))

(assert (= (and d!832046 c!466749) b!2877895))

(assert (= (and d!832046 (not c!466749)) b!2877894))

(assert (= (and b!2877894 c!466750) b!2877891))

(assert (= (and b!2877894 (not c!466750)) b!2877884))

(assert (= (and b!2877884 (not res!1193097)) b!2877883))

(assert (= (and b!2877883 res!1193091) b!2877887))

(assert (= (and b!2877887 res!1193092) b!2877893))

(assert (= (and b!2877893 res!1193096) b!2877889))

(assert (= (and b!2877883 (not res!1193093)) b!2877890))

(assert (= (and b!2877890 res!1193095) b!2877896))

(assert (= (and b!2877896 (not res!1193094)) b!2877885))

(assert (= (and b!2877885 (not res!1193098)) b!2877886))

(assert (= (or b!2877895 b!2877896 b!2877887) bm!186387))

(assert (=> b!2877885 m!3295137))

(declare-fun m!3295329 () Bool)

(assert (=> b!2877885 m!3295329))

(assert (=> b!2877885 m!3295329))

(declare-fun m!3295331 () Bool)

(assert (=> b!2877885 m!3295331))

(assert (=> bm!186387 m!3295137))

(declare-fun m!3295333 () Bool)

(assert (=> bm!186387 m!3295333))

(assert (=> b!2877893 m!3295137))

(assert (=> b!2877893 m!3295329))

(assert (=> b!2877893 m!3295329))

(assert (=> b!2877893 m!3295331))

(assert (=> b!2877886 m!3295137))

(declare-fun m!3295337 () Bool)

(assert (=> b!2877886 m!3295337))

(assert (=> b!2877888 m!3295137))

(assert (=> b!2877888 m!3295337))

(assert (=> b!2877888 m!3295337))

(declare-fun m!3295339 () Bool)

(assert (=> b!2877888 m!3295339))

(assert (=> b!2877888 m!3295137))

(assert (=> b!2877888 m!3295329))

(assert (=> b!2877888 m!3295339))

(assert (=> b!2877888 m!3295329))

(declare-fun m!3295341 () Bool)

(assert (=> b!2877888 m!3295341))

(assert (=> d!832046 m!3295137))

(assert (=> d!832046 m!3295333))

(assert (=> d!832046 m!3295107))

(assert (=> b!2877889 m!3295137))

(assert (=> b!2877889 m!3295337))

(assert (=> b!2877892 m!3295109))

(assert (=> d!831942 d!832046))

(declare-fun d!832050 () Bool)

(assert (=> d!832050 (matchR!3745 (h!39822 (exprs!3205 c!7184)) (get!10344 (getLanguageWitness!442 (h!39822 (exprs!3205 c!7184)))))))

(assert (=> d!832050 true))

(declare-fun _$101!114 () Unit!47991)

(assert (=> d!832050 (= (choose!17016 (h!39822 (exprs!3205 c!7184))) _$101!114)))

(declare-fun bs!522966 () Bool)

(assert (= bs!522966 d!832050))

(assert (=> bs!522966 m!3294961))

(assert (=> bs!522966 m!3294961))

(assert (=> bs!522966 m!3295137))

(assert (=> bs!522966 m!3295137))

(assert (=> bs!522966 m!3295139))

(assert (=> d!831942 d!832050))

(assert (=> bm!186344 d!831962))

(declare-fun b!2877903 () Bool)

(declare-fun res!1193101 () Bool)

(declare-fun e!1821016 () Bool)

(assert (=> b!2877903 (=> res!1193101 e!1821016)))

(declare-fun e!1821019 () Bool)

(assert (=> b!2877903 (= res!1193101 e!1821019)))

(declare-fun res!1193099 () Bool)

(assert (=> b!2877903 (=> (not res!1193099) (not e!1821019))))

(declare-fun lt!1019075 () Bool)

(assert (=> b!2877903 (= res!1193099 lt!1019075)))

(declare-fun b!2877904 () Bool)

(declare-fun res!1193105 () Bool)

(assert (=> b!2877904 (=> res!1193105 e!1821016)))

(assert (=> b!2877904 (= res!1193105 (not ((_ is ElementMatch!8745) (derivativeStep!2328 (h!39822 (exprs!3205 c!7184)) (head!6352 (get!10344 lt!1018985))))))))

(declare-fun e!1821017 () Bool)

(assert (=> b!2877904 (= e!1821017 e!1821016)))

(declare-fun b!2877905 () Bool)

(declare-fun res!1193106 () Bool)

(declare-fun e!1821018 () Bool)

(assert (=> b!2877905 (=> res!1193106 e!1821018)))

(assert (=> b!2877905 (= res!1193106 (not (isEmpty!18734 (tail!4577 (tail!4577 (get!10344 lt!1018985))))))))

(declare-fun b!2877906 () Bool)

(assert (=> b!2877906 (= e!1821018 (not (= (head!6352 (tail!4577 (get!10344 lt!1018985))) (c!466558 (derivativeStep!2328 (h!39822 (exprs!3205 c!7184)) (head!6352 (get!10344 lt!1018985)))))))))

(declare-fun b!2877907 () Bool)

(declare-fun res!1193100 () Bool)

(assert (=> b!2877907 (=> (not res!1193100) (not e!1821019))))

(declare-fun call!186393 () Bool)

(assert (=> b!2877907 (= res!1193100 (not call!186393))))

(declare-fun b!2877908 () Bool)

(declare-fun e!1821014 () Bool)

(assert (=> b!2877908 (= e!1821014 (matchR!3745 (derivativeStep!2328 (derivativeStep!2328 (h!39822 (exprs!3205 c!7184)) (head!6352 (get!10344 lt!1018985))) (head!6352 (tail!4577 (get!10344 lt!1018985)))) (tail!4577 (tail!4577 (get!10344 lt!1018985)))))))

(declare-fun b!2877909 () Bool)

(assert (=> b!2877909 (= e!1821019 (= (head!6352 (tail!4577 (get!10344 lt!1018985))) (c!466558 (derivativeStep!2328 (h!39822 (exprs!3205 c!7184)) (head!6352 (get!10344 lt!1018985))))))))

(declare-fun b!2877910 () Bool)

(declare-fun e!1821020 () Bool)

(assert (=> b!2877910 (= e!1821016 e!1821020)))

(declare-fun res!1193103 () Bool)

(assert (=> b!2877910 (=> (not res!1193103) (not e!1821020))))

(assert (=> b!2877910 (= res!1193103 (not lt!1019075))))

(declare-fun b!2877911 () Bool)

(assert (=> b!2877911 (= e!1821017 (not lt!1019075))))

(declare-fun b!2877912 () Bool)

(assert (=> b!2877912 (= e!1821014 (nullable!2695 (derivativeStep!2328 (h!39822 (exprs!3205 c!7184)) (head!6352 (get!10344 lt!1018985)))))))

(declare-fun b!2877914 () Bool)

(declare-fun e!1821015 () Bool)

(assert (=> b!2877914 (= e!1821015 e!1821017)))

(declare-fun c!466754 () Bool)

(assert (=> b!2877914 (= c!466754 ((_ is EmptyLang!8745) (derivativeStep!2328 (h!39822 (exprs!3205 c!7184)) (head!6352 (get!10344 lt!1018985)))))))

(declare-fun b!2877915 () Bool)

(assert (=> b!2877915 (= e!1821015 (= lt!1019075 call!186393))))

(declare-fun b!2877916 () Bool)

(assert (=> b!2877916 (= e!1821020 e!1821018)))

(declare-fun res!1193102 () Bool)

(assert (=> b!2877916 (=> res!1193102 e!1821018)))

(assert (=> b!2877916 (= res!1193102 call!186393)))

(declare-fun bm!186388 () Bool)

(assert (=> bm!186388 (= call!186393 (isEmpty!18734 (tail!4577 (get!10344 lt!1018985))))))

(declare-fun d!832054 () Bool)

(assert (=> d!832054 e!1821015))

(declare-fun c!466753 () Bool)

(assert (=> d!832054 (= c!466753 ((_ is EmptyExpr!8745) (derivativeStep!2328 (h!39822 (exprs!3205 c!7184)) (head!6352 (get!10344 lt!1018985)))))))

(assert (=> d!832054 (= lt!1019075 e!1821014)))

(declare-fun c!466752 () Bool)

(assert (=> d!832054 (= c!466752 (isEmpty!18734 (tail!4577 (get!10344 lt!1018985))))))

(assert (=> d!832054 (validRegex!3523 (derivativeStep!2328 (h!39822 (exprs!3205 c!7184)) (head!6352 (get!10344 lt!1018985))))))

(assert (=> d!832054 (= (matchR!3745 (derivativeStep!2328 (h!39822 (exprs!3205 c!7184)) (head!6352 (get!10344 lt!1018985))) (tail!4577 (get!10344 lt!1018985))) lt!1019075)))

(declare-fun b!2877913 () Bool)

(declare-fun res!1193104 () Bool)

(assert (=> b!2877913 (=> (not res!1193104) (not e!1821019))))

(assert (=> b!2877913 (= res!1193104 (isEmpty!18734 (tail!4577 (tail!4577 (get!10344 lt!1018985)))))))

(assert (= (and d!832054 c!466752) b!2877912))

(assert (= (and d!832054 (not c!466752)) b!2877908))

(assert (= (and d!832054 c!466753) b!2877915))

(assert (= (and d!832054 (not c!466753)) b!2877914))

(assert (= (and b!2877914 c!466754) b!2877911))

(assert (= (and b!2877914 (not c!466754)) b!2877904))

(assert (= (and b!2877904 (not res!1193105)) b!2877903))

(assert (= (and b!2877903 res!1193099) b!2877907))

(assert (= (and b!2877907 res!1193100) b!2877913))

(assert (= (and b!2877913 res!1193104) b!2877909))

(assert (= (and b!2877903 (not res!1193101)) b!2877910))

(assert (= (and b!2877910 res!1193103) b!2877916))

(assert (= (and b!2877916 (not res!1193102)) b!2877905))

(assert (= (and b!2877905 (not res!1193106)) b!2877906))

(assert (= (or b!2877915 b!2877916 b!2877907) bm!186388))

(assert (=> b!2877905 m!3295111))

(declare-fun m!3295359 () Bool)

(assert (=> b!2877905 m!3295359))

(assert (=> b!2877905 m!3295359))

(declare-fun m!3295361 () Bool)

(assert (=> b!2877905 m!3295361))

(assert (=> bm!186388 m!3295111))

(assert (=> bm!186388 m!3295113))

(assert (=> b!2877913 m!3295111))

(assert (=> b!2877913 m!3295359))

(assert (=> b!2877913 m!3295359))

(assert (=> b!2877913 m!3295361))

(assert (=> b!2877906 m!3295111))

(declare-fun m!3295363 () Bool)

(assert (=> b!2877906 m!3295363))

(assert (=> b!2877908 m!3295111))

(assert (=> b!2877908 m!3295363))

(assert (=> b!2877908 m!3295119))

(assert (=> b!2877908 m!3295363))

(declare-fun m!3295365 () Bool)

(assert (=> b!2877908 m!3295365))

(assert (=> b!2877908 m!3295111))

(assert (=> b!2877908 m!3295359))

(assert (=> b!2877908 m!3295365))

(assert (=> b!2877908 m!3295359))

(declare-fun m!3295367 () Bool)

(assert (=> b!2877908 m!3295367))

(assert (=> d!832054 m!3295111))

(assert (=> d!832054 m!3295113))

(assert (=> d!832054 m!3295119))

(declare-fun m!3295369 () Bool)

(assert (=> d!832054 m!3295369))

(assert (=> b!2877909 m!3295111))

(assert (=> b!2877909 m!3295363))

(assert (=> b!2877912 m!3295119))

(declare-fun m!3295371 () Bool)

(assert (=> b!2877912 m!3295371))

(assert (=> b!2877656 d!832054))

(declare-fun e!1821028 () Regex!8745)

(declare-fun call!186396 () Regex!8745)

(declare-fun call!186397 () Regex!8745)

(declare-fun b!2877931 () Bool)

(assert (=> b!2877931 (= e!1821028 (Union!8745 (Concat!14066 call!186396 (regTwo!18002 (h!39822 (exprs!3205 c!7184)))) call!186397))))

(declare-fun b!2877932 () Bool)

(declare-fun e!1821029 () Regex!8745)

(declare-fun call!186395 () Regex!8745)

(assert (=> b!2877932 (= e!1821029 (Concat!14066 call!186395 (h!39822 (exprs!3205 c!7184))))))

(declare-fun b!2877933 () Bool)

(declare-fun c!466760 () Bool)

(assert (=> b!2877933 (= c!466760 (nullable!2695 (regOne!18002 (h!39822 (exprs!3205 c!7184)))))))

(assert (=> b!2877933 (= e!1821029 e!1821028)))

(declare-fun b!2877934 () Bool)

(declare-fun e!1821030 () Regex!8745)

(declare-fun call!186398 () Regex!8745)

(assert (=> b!2877934 (= e!1821030 (Union!8745 call!186398 call!186397))))

(declare-fun b!2877935 () Bool)

(declare-fun e!1821032 () Regex!8745)

(assert (=> b!2877935 (= e!1821032 (ite (= (head!6352 (get!10344 lt!1018985)) (c!466558 (h!39822 (exprs!3205 c!7184)))) EmptyExpr!8745 EmptyLang!8745))))

(declare-fun c!466762 () Bool)

(declare-fun bm!186390 () Bool)

(assert (=> bm!186390 (= call!186397 (derivativeStep!2328 (ite c!466762 (regTwo!18003 (h!39822 (exprs!3205 c!7184))) (regTwo!18002 (h!39822 (exprs!3205 c!7184)))) (head!6352 (get!10344 lt!1018985))))))

(declare-fun d!832064 () Bool)

(declare-fun lt!1019077 () Regex!8745)

(assert (=> d!832064 (validRegex!3523 lt!1019077)))

(declare-fun e!1821031 () Regex!8745)

(assert (=> d!832064 (= lt!1019077 e!1821031)))

(declare-fun c!466758 () Bool)

(assert (=> d!832064 (= c!466758 (or ((_ is EmptyExpr!8745) (h!39822 (exprs!3205 c!7184))) ((_ is EmptyLang!8745) (h!39822 (exprs!3205 c!7184)))))))

(assert (=> d!832064 (validRegex!3523 (h!39822 (exprs!3205 c!7184)))))

(assert (=> d!832064 (= (derivativeStep!2328 (h!39822 (exprs!3205 c!7184)) (head!6352 (get!10344 lt!1018985))) lt!1019077)))

(declare-fun b!2877936 () Bool)

(assert (=> b!2877936 (= e!1821030 e!1821029)))

(declare-fun c!466759 () Bool)

(assert (=> b!2877936 (= c!466759 ((_ is Star!8745) (h!39822 (exprs!3205 c!7184))))))

(declare-fun b!2877937 () Bool)

(assert (=> b!2877937 (= e!1821031 e!1821032)))

(declare-fun c!466761 () Bool)

(assert (=> b!2877937 (= c!466761 ((_ is ElementMatch!8745) (h!39822 (exprs!3205 c!7184))))))

(declare-fun bm!186391 () Bool)

(assert (=> bm!186391 (= call!186395 call!186398)))

(declare-fun b!2877938 () Bool)

(assert (=> b!2877938 (= e!1821031 EmptyLang!8745)))

(declare-fun bm!186392 () Bool)

(assert (=> bm!186392 (= call!186396 call!186395)))

(declare-fun b!2877939 () Bool)

(assert (=> b!2877939 (= e!1821028 (Union!8745 (Concat!14066 call!186396 (regTwo!18002 (h!39822 (exprs!3205 c!7184)))) EmptyLang!8745))))

(declare-fun bm!186393 () Bool)

(assert (=> bm!186393 (= call!186398 (derivativeStep!2328 (ite c!466762 (regOne!18003 (h!39822 (exprs!3205 c!7184))) (ite c!466759 (reg!9074 (h!39822 (exprs!3205 c!7184))) (regOne!18002 (h!39822 (exprs!3205 c!7184))))) (head!6352 (get!10344 lt!1018985))))))

(declare-fun b!2877940 () Bool)

(assert (=> b!2877940 (= c!466762 ((_ is Union!8745) (h!39822 (exprs!3205 c!7184))))))

(assert (=> b!2877940 (= e!1821032 e!1821030)))

(assert (= (and d!832064 c!466758) b!2877938))

(assert (= (and d!832064 (not c!466758)) b!2877937))

(assert (= (and b!2877937 c!466761) b!2877935))

(assert (= (and b!2877937 (not c!466761)) b!2877940))

(assert (= (and b!2877940 c!466762) b!2877934))

(assert (= (and b!2877940 (not c!466762)) b!2877936))

(assert (= (and b!2877936 c!466759) b!2877932))

(assert (= (and b!2877936 (not c!466759)) b!2877933))

(assert (= (and b!2877933 c!466760) b!2877931))

(assert (= (and b!2877933 (not c!466760)) b!2877939))

(assert (= (or b!2877931 b!2877939) bm!186392))

(assert (= (or b!2877932 bm!186392) bm!186391))

(assert (= (or b!2877934 bm!186391) bm!186393))

(assert (= (or b!2877934 b!2877931) bm!186390))

(assert (=> b!2877933 m!3295283))

(assert (=> bm!186390 m!3295117))

(declare-fun m!3295383 () Bool)

(assert (=> bm!186390 m!3295383))

(declare-fun m!3295387 () Bool)

(assert (=> d!832064 m!3295387))

(assert (=> d!832064 m!3295107))

(assert (=> bm!186393 m!3295117))

(declare-fun m!3295389 () Bool)

(assert (=> bm!186393 m!3295389))

(assert (=> b!2877656 d!832064))

(assert (=> b!2877656 d!832042))

(assert (=> b!2877656 d!831984))

(declare-fun bs!522969 () Bool)

(declare-fun d!832066 () Bool)

(assert (= bs!522969 (and d!832066 d!831978)))

(declare-fun lambda!107371 () Int)

(assert (=> bs!522969 (= lambda!107371 lambda!107350)))

(assert (=> d!832066 (= (nullableZipper!723 lt!1018980) (exists!1179 lt!1018980 lambda!107371))))

(declare-fun bs!522970 () Bool)

(assert (= bs!522970 d!832066))

(declare-fun m!3295393 () Bool)

(assert (=> bs!522970 m!3295393))

(assert (=> b!2877671 d!832066))

(assert (=> b!2877657 d!832042))

(declare-fun d!832070 () Bool)

(declare-fun c!466768 () Bool)

(assert (=> d!832070 (= c!466768 (isEmpty!18734 (tail!4577 (v!34545 lt!1018985))))))

(declare-fun e!1821038 () Bool)

(assert (=> d!832070 (= (matchZipper!487 (derivationStepZipper!479 lt!1018980 (head!6352 (v!34545 lt!1018985))) (tail!4577 (v!34545 lt!1018985))) e!1821038)))

(declare-fun b!2877951 () Bool)

(assert (=> b!2877951 (= e!1821038 (nullableZipper!723 (derivationStepZipper!479 lt!1018980 (head!6352 (v!34545 lt!1018985)))))))

(declare-fun b!2877952 () Bool)

(assert (=> b!2877952 (= e!1821038 (matchZipper!487 (derivationStepZipper!479 (derivationStepZipper!479 lt!1018980 (head!6352 (v!34545 lt!1018985))) (head!6352 (tail!4577 (v!34545 lt!1018985)))) (tail!4577 (tail!4577 (v!34545 lt!1018985)))))))

(assert (= (and d!832070 c!466768) b!2877951))

(assert (= (and d!832070 (not c!466768)) b!2877952))

(assert (=> d!832070 m!3295095))

(assert (=> d!832070 m!3295097))

(assert (=> b!2877951 m!3295153))

(declare-fun m!3295395 () Bool)

(assert (=> b!2877951 m!3295395))

(assert (=> b!2877952 m!3295095))

(assert (=> b!2877952 m!3295261))

(assert (=> b!2877952 m!3295153))

(assert (=> b!2877952 m!3295261))

(declare-fun m!3295397 () Bool)

(assert (=> b!2877952 m!3295397))

(assert (=> b!2877952 m!3295095))

(assert (=> b!2877952 m!3295257))

(assert (=> b!2877952 m!3295397))

(assert (=> b!2877952 m!3295257))

(declare-fun m!3295401 () Bool)

(assert (=> b!2877952 m!3295401))

(assert (=> b!2877672 d!832070))

(declare-fun bs!522971 () Bool)

(declare-fun d!832072 () Bool)

(assert (= bs!522971 (and d!832072 d!831988)))

(declare-fun lambda!107372 () Int)

(assert (=> bs!522971 (= (= (head!6352 (v!34545 lt!1018985)) (head!6352 (get!10344 lt!1018982))) (= lambda!107372 lambda!107353))))

(assert (=> d!832072 true))

(assert (=> d!832072 (= (derivationStepZipper!479 lt!1018980 (head!6352 (v!34545 lt!1018985))) (flatMap!225 lt!1018980 lambda!107372))))

(declare-fun bs!522972 () Bool)

(assert (= bs!522972 d!832072))

(declare-fun m!3295407 () Bool)

(assert (=> bs!522972 m!3295407))

(assert (=> b!2877672 d!832072))

(assert (=> b!2877672 d!832004))

(assert (=> b!2877672 d!831974))

(declare-fun d!832078 () Bool)

(assert (=> d!832078 (= (isEmpty!18734 (get!10344 lt!1018982)) ((_ is Nil!34403) (get!10344 lt!1018982)))))

(assert (=> d!831936 d!832078))

(declare-fun b!2877967 () Bool)

(declare-fun e!1821045 () Bool)

(declare-fun tp_is_empty!15085 () Bool)

(assert (=> b!2877967 (= e!1821045 tp_is_empty!15085)))

(assert (=> b!2877677 (= tp!923903 e!1821045)))

(declare-fun b!2877968 () Bool)

(declare-fun tp!923916 () Bool)

(declare-fun tp!923918 () Bool)

(assert (=> b!2877968 (= e!1821045 (and tp!923916 tp!923918))))

(declare-fun b!2877969 () Bool)

(declare-fun tp!923915 () Bool)

(assert (=> b!2877969 (= e!1821045 tp!923915)))

(declare-fun b!2877970 () Bool)

(declare-fun tp!923919 () Bool)

(declare-fun tp!923917 () Bool)

(assert (=> b!2877970 (= e!1821045 (and tp!923919 tp!923917))))

(assert (= (and b!2877677 ((_ is ElementMatch!8745) (h!39822 (exprs!3205 c!7184)))) b!2877967))

(assert (= (and b!2877677 ((_ is Concat!14066) (h!39822 (exprs!3205 c!7184)))) b!2877968))

(assert (= (and b!2877677 ((_ is Star!8745) (h!39822 (exprs!3205 c!7184)))) b!2877969))

(assert (= (and b!2877677 ((_ is Union!8745) (h!39822 (exprs!3205 c!7184)))) b!2877970))

(declare-fun b!2877971 () Bool)

(declare-fun e!1821046 () Bool)

(declare-fun tp!923920 () Bool)

(declare-fun tp!923921 () Bool)

(assert (=> b!2877971 (= e!1821046 (and tp!923920 tp!923921))))

(assert (=> b!2877677 (= tp!923904 e!1821046)))

(assert (= (and b!2877677 ((_ is Cons!34402) (t!233569 (exprs!3205 c!7184)))) b!2877971))

(declare-fun b_lambda!86207 () Bool)

(assert (= b_lambda!86205 (or d!831928 b_lambda!86207)))

(declare-fun bs!522973 () Bool)

(declare-fun d!832082 () Bool)

(assert (= bs!522973 (and d!832082 d!831928)))

(assert (=> bs!522973 (= (dynLambda!14323 lambda!107345 (h!39822 (exprs!3205 c!7184))) (validRegex!3523 (h!39822 (exprs!3205 c!7184))))))

(assert (=> bs!522973 m!3295107))

(assert (=> b!2877855 d!832082))

(declare-fun b_lambda!86209 () Bool)

(assert (= b_lambda!86203 (or d!831946 b_lambda!86209)))

(declare-fun bs!522974 () Bool)

(declare-fun d!832084 () Bool)

(assert (= bs!522974 (and d!832084 d!831946)))

(assert (=> bs!522974 (= (dynLambda!14323 lambda!107346 (h!39822 (exprs!3205 lt!1018984))) (validRegex!3523 (h!39822 (exprs!3205 lt!1018984))))))

(declare-fun m!3295409 () Bool)

(assert (=> bs!522974 m!3295409))

(assert (=> b!2877783 d!832084))

(check-sat (not b!2877807) (not bm!186356) (not b!2877804) (not d!831988) (not d!831956) (not b!2877806) (not d!831958) (not b!2877688) (not b!2877968) (not d!832006) (not b!2877738) (not bm!186388) (not bm!186384) (not bs!522973) (not d!832050) (not bm!186390) (not bm!186387) (not b!2877860) (not b!2877951) (not b!2877811) (not d!832072) (not b!2877889) (not d!832054) (not b!2877856) (not b!2877933) (not bm!186357) (not b!2877752) (not bs!522974) (not b!2877905) (not b!2877753) (not b!2877886) (not b!2877970) (not b!2877857) (not b!2877810) (not b!2877756) (not b!2877906) (not d!832066) (not b!2877971) (not b!2877888) (not b!2877909) (not b!2877885) (not b!2877691) (not d!832032) (not d!831986) (not d!831980) (not d!832070) (not b!2877893) (not b!2877912) (not b!2877952) (not b!2877755) (not bm!186353) (not b!2877803) (not bm!186381) (not d!832012) (not d!832002) (not b!2877690) (not d!832046) (not b!2877687) (not d!831978) (not b_lambda!86207) (not d!831952) (not bm!186393) (not b!2877892) (not b!2877722) (not d!831954) (not b!2877908) (not b!2877870) (not bm!186358) (not bm!186386) (not bm!186385) tp_is_empty!15085 (not bm!186352) (not d!831996) (not b!2877862) (not b!2877969) (not bm!186355) (not b!2877712) (not d!832064) (not b!2877847) (not d!832014) (not d!831968) (not b!2877913) (not b_lambda!86209) (not b!2877784) (not bm!186362))
(check-sat)
