; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!668028 () Bool)

(assert start!668028)

(declare-fun b!6962824 () Bool)

(declare-fun e!4186230 () Bool)

(declare-fun tp!1919996 () Bool)

(declare-fun tp!1920001 () Bool)

(assert (=> b!6962824 (= e!4186230 (and tp!1919996 tp!1920001))))

(declare-fun b!6962825 () Bool)

(declare-fun e!4186233 () Bool)

(declare-fun e!4186235 () Bool)

(assert (=> b!6962825 (= e!4186233 (not e!4186235))))

(declare-fun res!2840911 () Bool)

(assert (=> b!6962825 (=> res!2840911 e!4186235)))

(declare-datatypes ((C!34458 0))(
  ( (C!34459 (val!26931 Int)) )
))
(declare-datatypes ((Regex!17094 0))(
  ( (ElementMatch!17094 (c!1291026 C!34458)) (Concat!25939 (regOne!34700 Regex!17094) (regTwo!34700 Regex!17094)) (EmptyExpr!17094) (Star!17094 (reg!17423 Regex!17094)) (EmptyLang!17094) (Union!17094 (regOne!34701 Regex!17094) (regTwo!34701 Regex!17094)) )
))
(declare-fun r!13765 () Regex!17094)

(assert (=> b!6962825 (= res!2840911 (not (is-Union!17094 r!13765)))))

(declare-fun lt!2479025 () Bool)

(declare-datatypes ((List!66873 0))(
  ( (Nil!66749) (Cons!66749 (h!73197 C!34458) (t!380616 List!66873)) )
))
(declare-fun s!9351 () List!66873)

(declare-fun matchRSpec!4115 (Regex!17094 List!66873) Bool)

(assert (=> b!6962825 (= lt!2479025 (matchRSpec!4115 r!13765 s!9351))))

(declare-fun matchR!9200 (Regex!17094 List!66873) Bool)

(assert (=> b!6962825 (= lt!2479025 (matchR!9200 r!13765 s!9351))))

(declare-datatypes ((Unit!160848 0))(
  ( (Unit!160849) )
))
(declare-fun lt!2479028 () Unit!160848)

(declare-fun mainMatchTheorem!4109 (Regex!17094 List!66873) Unit!160848)

(assert (=> b!6962825 (= lt!2479028 (mainMatchTheorem!4109 r!13765 s!9351))))

(declare-fun res!2840912 () Bool)

(assert (=> start!668028 (=> (not res!2840912) (not e!4186233))))

(declare-datatypes ((List!66874 0))(
  ( (Nil!66750) (Cons!66750 (h!73198 Regex!17094) (t!380617 List!66874)) )
))
(declare-fun l!9142 () List!66874)

(declare-fun lambda!397251 () Int)

(declare-fun forall!15965 (List!66874 Int) Bool)

(assert (=> start!668028 (= res!2840912 (forall!15965 l!9142 lambda!397251))))

(assert (=> start!668028 e!4186233))

(declare-fun e!4186232 () Bool)

(assert (=> start!668028 e!4186232))

(assert (=> start!668028 e!4186230))

(declare-fun e!4186229 () Bool)

(assert (=> start!668028 e!4186229))

(declare-fun b!6962826 () Bool)

(declare-fun res!2840914 () Bool)

(assert (=> b!6962826 (=> (not res!2840914) (not e!4186233))))

(declare-fun generalisedUnion!2569 (List!66874) Regex!17094)

(assert (=> b!6962826 (= res!2840914 (= r!13765 (generalisedUnion!2569 l!9142)))))

(declare-fun b!6962827 () Bool)

(declare-fun tp_is_empty!43413 () Bool)

(assert (=> b!6962827 (= e!4186230 tp_is_empty!43413)))

(declare-fun b!6962828 () Bool)

(declare-fun tp!1920003 () Bool)

(declare-fun tp!1919998 () Bool)

(assert (=> b!6962828 (= e!4186230 (and tp!1920003 tp!1919998))))

(declare-fun b!6962829 () Bool)

(declare-fun tp!1919997 () Bool)

(assert (=> b!6962829 (= e!4186230 tp!1919997)))

(declare-fun b!6962830 () Bool)

(declare-fun res!2840913 () Bool)

(assert (=> b!6962830 (=> res!2840913 e!4186235)))

(declare-fun isEmpty!38965 (List!66874) Bool)

(assert (=> b!6962830 (= res!2840913 (isEmpty!38965 l!9142))))

(declare-fun b!6962831 () Bool)

(declare-fun res!2840915 () Bool)

(assert (=> b!6962831 (=> res!2840915 e!4186235)))

(declare-fun tail!13046 (List!66874) List!66874)

(assert (=> b!6962831 (= res!2840915 (isEmpty!38965 (tail!13046 l!9142)))))

(declare-fun b!6962832 () Bool)

(declare-fun e!4186231 () Bool)

(assert (=> b!6962832 (= e!4186235 e!4186231)))

(declare-fun res!2840909 () Bool)

(assert (=> b!6962832 (=> res!2840909 e!4186231)))

(declare-fun e!4186234 () Bool)

(assert (=> b!6962832 (= res!2840909 (not (= lt!2479025 e!4186234)))))

(declare-fun res!2840910 () Bool)

(assert (=> b!6962832 (=> res!2840910 e!4186234)))

(declare-fun lt!2479027 () Bool)

(assert (=> b!6962832 (= res!2840910 lt!2479027)))

(assert (=> b!6962832 (= lt!2479027 (matchRSpec!4115 (regOne!34701 r!13765) s!9351))))

(declare-fun b!6962833 () Bool)

(declare-fun tp!1920000 () Bool)

(assert (=> b!6962833 (= e!4186229 (and tp_is_empty!43413 tp!1920000))))

(declare-fun b!6962834 () Bool)

(assert (=> b!6962834 (= e!4186231 (not (= l!9142 Nil!66750)))))

(assert (=> b!6962834 (= (matchR!9200 (regTwo!34701 r!13765) s!9351) (matchRSpec!4115 (regTwo!34701 r!13765) s!9351))))

(declare-fun lt!2479024 () Unit!160848)

(assert (=> b!6962834 (= lt!2479024 (mainMatchTheorem!4109 (regTwo!34701 r!13765) s!9351))))

(assert (=> b!6962834 (= (matchR!9200 (regOne!34701 r!13765) s!9351) lt!2479027)))

(declare-fun lt!2479026 () Unit!160848)

(assert (=> b!6962834 (= lt!2479026 (mainMatchTheorem!4109 (regOne!34701 r!13765) s!9351))))

(declare-fun b!6962835 () Bool)

(assert (=> b!6962835 (= e!4186234 (matchRSpec!4115 (regTwo!34701 r!13765) s!9351))))

(declare-fun b!6962836 () Bool)

(declare-fun tp!1920002 () Bool)

(declare-fun tp!1919999 () Bool)

(assert (=> b!6962836 (= e!4186232 (and tp!1920002 tp!1919999))))

(assert (= (and start!668028 res!2840912) b!6962826))

(assert (= (and b!6962826 res!2840914) b!6962825))

(assert (= (and b!6962825 (not res!2840911)) b!6962830))

(assert (= (and b!6962830 (not res!2840913)) b!6962831))

(assert (= (and b!6962831 (not res!2840915)) b!6962832))

(assert (= (and b!6962832 (not res!2840910)) b!6962835))

(assert (= (and b!6962832 (not res!2840909)) b!6962834))

(assert (= (and start!668028 (is-Cons!66750 l!9142)) b!6962836))

(assert (= (and start!668028 (is-ElementMatch!17094 r!13765)) b!6962827))

(assert (= (and start!668028 (is-Concat!25939 r!13765)) b!6962828))

(assert (= (and start!668028 (is-Star!17094 r!13765)) b!6962829))

(assert (= (and start!668028 (is-Union!17094 r!13765)) b!6962824))

(assert (= (and start!668028 (is-Cons!66749 s!9351)) b!6962833))

(declare-fun m!7656748 () Bool)

(assert (=> b!6962832 m!7656748))

(declare-fun m!7656750 () Bool)

(assert (=> b!6962835 m!7656750))

(declare-fun m!7656752 () Bool)

(assert (=> start!668028 m!7656752))

(declare-fun m!7656754 () Bool)

(assert (=> b!6962825 m!7656754))

(declare-fun m!7656756 () Bool)

(assert (=> b!6962825 m!7656756))

(declare-fun m!7656758 () Bool)

(assert (=> b!6962825 m!7656758))

(declare-fun m!7656760 () Bool)

(assert (=> b!6962834 m!7656760))

(declare-fun m!7656762 () Bool)

(assert (=> b!6962834 m!7656762))

(declare-fun m!7656764 () Bool)

(assert (=> b!6962834 m!7656764))

(declare-fun m!7656766 () Bool)

(assert (=> b!6962834 m!7656766))

(assert (=> b!6962834 m!7656750))

(declare-fun m!7656768 () Bool)

(assert (=> b!6962831 m!7656768))

(assert (=> b!6962831 m!7656768))

(declare-fun m!7656770 () Bool)

(assert (=> b!6962831 m!7656770))

(declare-fun m!7656772 () Bool)

(assert (=> b!6962830 m!7656772))

(declare-fun m!7656774 () Bool)

(assert (=> b!6962826 m!7656774))

(push 1)

(assert (not b!6962829))

(assert (not b!6962825))

(assert (not b!6962830))

(assert (not b!6962832))

(assert (not b!6962834))

(assert (not start!668028))

(assert (not b!6962831))

(assert (not b!6962836))

(assert (not b!6962826))

(assert (not b!6962833))

(assert tp_is_empty!43413)

(assert (not b!6962824))

(assert (not b!6962828))

(assert (not b!6962835))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6962912 () Bool)

(assert (=> b!6962912 true))

(assert (=> b!6962912 true))

(declare-fun bs!1858460 () Bool)

(declare-fun b!6962910 () Bool)

(assert (= bs!1858460 (and b!6962910 b!6962912)))

(declare-fun lambda!397260 () Int)

(declare-fun lambda!397259 () Int)

(assert (=> bs!1858460 (not (= lambda!397260 lambda!397259))))

(assert (=> b!6962910 true))

(assert (=> b!6962910 true))

(declare-fun bm!632197 () Bool)

(declare-fun call!632203 () Bool)

(declare-fun isEmpty!38967 (List!66873) Bool)

(assert (=> bm!632197 (= call!632203 (isEmpty!38967 s!9351))))

(declare-fun b!6962908 () Bool)

(declare-fun e!4186279 () Bool)

(assert (=> b!6962908 (= e!4186279 call!632203)))

(declare-fun b!6962909 () Bool)

(declare-fun e!4186280 () Bool)

(assert (=> b!6962909 (= e!4186279 e!4186280)))

(declare-fun res!2840955 () Bool)

(assert (=> b!6962909 (= res!2840955 (not (is-EmptyLang!17094 (regOne!34701 r!13765))))))

(assert (=> b!6962909 (=> (not res!2840955) (not e!4186280))))

(declare-fun e!4186277 () Bool)

(declare-fun call!632202 () Bool)

(assert (=> b!6962910 (= e!4186277 call!632202)))

(declare-fun b!6962911 () Bool)

(declare-fun e!4186275 () Bool)

(assert (=> b!6962911 (= e!4186275 (= s!9351 (Cons!66749 (c!1291026 (regOne!34701 r!13765)) Nil!66749)))))

(declare-fun e!4186278 () Bool)

(assert (=> b!6962912 (= e!4186278 call!632202)))

(declare-fun b!6962913 () Bool)

(declare-fun e!4186276 () Bool)

(assert (=> b!6962913 (= e!4186276 e!4186277)))

(declare-fun c!1291036 () Bool)

(assert (=> b!6962913 (= c!1291036 (is-Star!17094 (regOne!34701 r!13765)))))

(declare-fun b!6962914 () Bool)

(declare-fun c!1291038 () Bool)

(assert (=> b!6962914 (= c!1291038 (is-ElementMatch!17094 (regOne!34701 r!13765)))))

(assert (=> b!6962914 (= e!4186280 e!4186275)))

(declare-fun b!6962915 () Bool)

(declare-fun e!4186281 () Bool)

(assert (=> b!6962915 (= e!4186276 e!4186281)))

(declare-fun res!2840954 () Bool)

(assert (=> b!6962915 (= res!2840954 (matchRSpec!4115 (regOne!34701 (regOne!34701 r!13765)) s!9351))))

(assert (=> b!6962915 (=> res!2840954 e!4186281)))

(declare-fun b!6962916 () Bool)

(declare-fun c!1291037 () Bool)

(assert (=> b!6962916 (= c!1291037 (is-Union!17094 (regOne!34701 r!13765)))))

(assert (=> b!6962916 (= e!4186275 e!4186276)))

(declare-fun b!6962917 () Bool)

(assert (=> b!6962917 (= e!4186281 (matchRSpec!4115 (regTwo!34701 (regOne!34701 r!13765)) s!9351))))

(declare-fun b!6962918 () Bool)

(declare-fun res!2840953 () Bool)

(assert (=> b!6962918 (=> res!2840953 e!4186278)))

(assert (=> b!6962918 (= res!2840953 call!632203)))

(assert (=> b!6962918 (= e!4186277 e!4186278)))

(declare-fun bm!632198 () Bool)

(declare-fun Exists!4074 (Int) Bool)

(assert (=> bm!632198 (= call!632202 (Exists!4074 (ite c!1291036 lambda!397259 lambda!397260)))))

(declare-fun d!2170241 () Bool)

(declare-fun c!1291039 () Bool)

(assert (=> d!2170241 (= c!1291039 (is-EmptyExpr!17094 (regOne!34701 r!13765)))))

(assert (=> d!2170241 (= (matchRSpec!4115 (regOne!34701 r!13765) s!9351) e!4186279)))

(assert (= (and d!2170241 c!1291039) b!6962908))

(assert (= (and d!2170241 (not c!1291039)) b!6962909))

(assert (= (and b!6962909 res!2840955) b!6962914))

(assert (= (and b!6962914 c!1291038) b!6962911))

(assert (= (and b!6962914 (not c!1291038)) b!6962916))

(assert (= (and b!6962916 c!1291037) b!6962915))

(assert (= (and b!6962916 (not c!1291037)) b!6962913))

(assert (= (and b!6962915 (not res!2840954)) b!6962917))

(assert (= (and b!6962913 c!1291036) b!6962918))

(assert (= (and b!6962913 (not c!1291036)) b!6962910))

(assert (= (and b!6962918 (not res!2840953)) b!6962912))

(assert (= (or b!6962912 b!6962910) bm!632198))

(assert (= (or b!6962908 b!6962918) bm!632197))

(declare-fun m!7656804 () Bool)

(assert (=> bm!632197 m!7656804))

(declare-fun m!7656806 () Bool)

(assert (=> b!6962915 m!7656806))

(declare-fun m!7656808 () Bool)

(assert (=> b!6962917 m!7656808))

(declare-fun m!7656810 () Bool)

(assert (=> bm!632198 m!7656810))

(assert (=> b!6962832 d!2170241))

(declare-fun d!2170245 () Bool)

(assert (=> d!2170245 (= (isEmpty!38965 (tail!13046 l!9142)) (is-Nil!66750 (tail!13046 l!9142)))))

(assert (=> b!6962831 d!2170245))

(declare-fun d!2170247 () Bool)

(assert (=> d!2170247 (= (tail!13046 l!9142) (t!380617 l!9142))))

(assert (=> b!6962831 d!2170247))

(declare-fun bs!1858461 () Bool)

(declare-fun d!2170249 () Bool)

(assert (= bs!1858461 (and d!2170249 start!668028)))

(declare-fun lambda!397267 () Int)

(assert (=> bs!1858461 (= lambda!397267 lambda!397251)))

(declare-fun b!6962986 () Bool)

(declare-fun e!4186321 () Bool)

(declare-fun lt!2479046 () Regex!17094)

(declare-fun isUnion!1472 (Regex!17094) Bool)

(assert (=> b!6962986 (= e!4186321 (isUnion!1472 lt!2479046))))

(declare-fun b!6962987 () Bool)

(declare-fun e!4186319 () Bool)

(declare-fun isEmptyLang!2044 (Regex!17094) Bool)

(assert (=> b!6962987 (= e!4186319 (isEmptyLang!2044 lt!2479046))))

(declare-fun b!6962988 () Bool)

(declare-fun head!13985 (List!66874) Regex!17094)

(assert (=> b!6962988 (= e!4186321 (= lt!2479046 (head!13985 l!9142)))))

(declare-fun b!6962989 () Bool)

(declare-fun e!4186322 () Bool)

(assert (=> b!6962989 (= e!4186322 (isEmpty!38965 (t!380617 l!9142)))))

(declare-fun b!6962990 () Bool)

(declare-fun e!4186324 () Regex!17094)

(assert (=> b!6962990 (= e!4186324 EmptyLang!17094)))

(declare-fun b!6962991 () Bool)

(declare-fun e!4186323 () Regex!17094)

(assert (=> b!6962991 (= e!4186323 e!4186324)))

(declare-fun c!1291063 () Bool)

(assert (=> b!6962991 (= c!1291063 (is-Cons!66750 l!9142))))

(declare-fun b!6962992 () Bool)

(assert (=> b!6962992 (= e!4186319 e!4186321)))

(declare-fun c!1291061 () Bool)

(assert (=> b!6962992 (= c!1291061 (isEmpty!38965 (tail!13046 l!9142)))))

(declare-fun b!6962993 () Bool)

(assert (=> b!6962993 (= e!4186323 (h!73198 l!9142))))

(declare-fun b!6962994 () Bool)

(assert (=> b!6962994 (= e!4186324 (Union!17094 (h!73198 l!9142) (generalisedUnion!2569 (t!380617 l!9142))))))

(declare-fun b!6962995 () Bool)

(declare-fun e!4186320 () Bool)

(assert (=> b!6962995 (= e!4186320 e!4186319)))

(declare-fun c!1291062 () Bool)

(assert (=> b!6962995 (= c!1291062 (isEmpty!38965 l!9142))))

(assert (=> d!2170249 e!4186320))

(declare-fun res!2840980 () Bool)

(assert (=> d!2170249 (=> (not res!2840980) (not e!4186320))))

(declare-fun validRegex!8786 (Regex!17094) Bool)

(assert (=> d!2170249 (= res!2840980 (validRegex!8786 lt!2479046))))

(assert (=> d!2170249 (= lt!2479046 e!4186323)))

(declare-fun c!1291060 () Bool)

(assert (=> d!2170249 (= c!1291060 e!4186322)))

(declare-fun res!2840979 () Bool)

(assert (=> d!2170249 (=> (not res!2840979) (not e!4186322))))

(assert (=> d!2170249 (= res!2840979 (is-Cons!66750 l!9142))))

(assert (=> d!2170249 (forall!15965 l!9142 lambda!397267)))

(assert (=> d!2170249 (= (generalisedUnion!2569 l!9142) lt!2479046)))

(assert (= (and d!2170249 res!2840979) b!6962989))

(assert (= (and d!2170249 c!1291060) b!6962993))

(assert (= (and d!2170249 (not c!1291060)) b!6962991))

(assert (= (and b!6962991 c!1291063) b!6962994))

(assert (= (and b!6962991 (not c!1291063)) b!6962990))

(assert (= (and d!2170249 res!2840980) b!6962995))

(assert (= (and b!6962995 c!1291062) b!6962987))

(assert (= (and b!6962995 (not c!1291062)) b!6962992))

(assert (= (and b!6962992 c!1291061) b!6962988))

(assert (= (and b!6962992 (not c!1291061)) b!6962986))

(declare-fun m!7656812 () Bool)

(assert (=> b!6962989 m!7656812))

(declare-fun m!7656814 () Bool)

(assert (=> b!6962986 m!7656814))

(assert (=> b!6962992 m!7656768))

(assert (=> b!6962992 m!7656768))

(assert (=> b!6962992 m!7656770))

(declare-fun m!7656816 () Bool)

(assert (=> b!6962994 m!7656816))

(assert (=> b!6962995 m!7656772))

(declare-fun m!7656818 () Bool)

(assert (=> d!2170249 m!7656818))

(declare-fun m!7656820 () Bool)

(assert (=> d!2170249 m!7656820))

(declare-fun m!7656822 () Bool)

(assert (=> b!6962988 m!7656822))

(declare-fun m!7656824 () Bool)

(assert (=> b!6962987 m!7656824))

(assert (=> b!6962826 d!2170249))

(declare-fun d!2170251 () Bool)

(declare-fun res!2840985 () Bool)

(declare-fun e!4186329 () Bool)

(assert (=> d!2170251 (=> res!2840985 e!4186329)))

(assert (=> d!2170251 (= res!2840985 (is-Nil!66750 l!9142))))

(assert (=> d!2170251 (= (forall!15965 l!9142 lambda!397251) e!4186329)))

(declare-fun b!6963004 () Bool)

(declare-fun e!4186330 () Bool)

(assert (=> b!6963004 (= e!4186329 e!4186330)))

(declare-fun res!2840986 () Bool)

(assert (=> b!6963004 (=> (not res!2840986) (not e!4186330))))

(declare-fun dynLambda!26615 (Int Regex!17094) Bool)

(assert (=> b!6963004 (= res!2840986 (dynLambda!26615 lambda!397251 (h!73198 l!9142)))))

(declare-fun b!6963005 () Bool)

(assert (=> b!6963005 (= e!4186330 (forall!15965 (t!380617 l!9142) lambda!397251))))

(assert (= (and d!2170251 (not res!2840985)) b!6963004))

(assert (= (and b!6963004 res!2840986) b!6963005))

(declare-fun b_lambda!260593 () Bool)

(assert (=> (not b_lambda!260593) (not b!6963004)))

(declare-fun m!7656826 () Bool)

(assert (=> b!6963004 m!7656826))

(declare-fun m!7656828 () Bool)

(assert (=> b!6963005 m!7656828))

(assert (=> start!668028 d!2170251))

(declare-fun b!6963034 () Bool)

(declare-fun res!2841003 () Bool)

(declare-fun e!4186351 () Bool)

(assert (=> b!6963034 (=> (not res!2841003) (not e!4186351))))

(declare-fun call!632212 () Bool)

(assert (=> b!6963034 (= res!2841003 (not call!632212))))

(declare-fun b!6963036 () Bool)

(declare-fun e!4186345 () Bool)

(declare-fun derivativeStep!5519 (Regex!17094 C!34458) Regex!17094)

(declare-fun head!13986 (List!66873) C!34458)

(declare-fun tail!13048 (List!66873) List!66873)

(assert (=> b!6963036 (= e!4186345 (matchR!9200 (derivativeStep!5519 (regTwo!34701 r!13765) (head!13986 s!9351)) (tail!13048 s!9351)))))

(declare-fun b!6963037 () Bool)

(declare-fun res!2841005 () Bool)

(assert (=> b!6963037 (=> (not res!2841005) (not e!4186351))))

(assert (=> b!6963037 (= res!2841005 (isEmpty!38967 (tail!13048 s!9351)))))

(declare-fun bm!632207 () Bool)

(assert (=> bm!632207 (= call!632212 (isEmpty!38967 s!9351))))

(declare-fun b!6963038 () Bool)

(declare-fun e!4186348 () Bool)

(declare-fun e!4186346 () Bool)

(assert (=> b!6963038 (= e!4186348 e!4186346)))

(declare-fun res!2841010 () Bool)

(assert (=> b!6963038 (=> (not res!2841010) (not e!4186346))))

(declare-fun lt!2479049 () Bool)

(assert (=> b!6963038 (= res!2841010 (not lt!2479049))))

(declare-fun b!6963039 () Bool)

(declare-fun e!4186350 () Bool)

(assert (=> b!6963039 (= e!4186350 (not lt!2479049))))

(declare-fun b!6963040 () Bool)

(declare-fun e!4186347 () Bool)

(assert (=> b!6963040 (= e!4186347 (not (= (head!13986 s!9351) (c!1291026 (regTwo!34701 r!13765)))))))

(declare-fun b!6963041 () Bool)

(declare-fun res!2841008 () Bool)

(assert (=> b!6963041 (=> res!2841008 e!4186347)))

(assert (=> b!6963041 (= res!2841008 (not (isEmpty!38967 (tail!13048 s!9351))))))

(declare-fun d!2170253 () Bool)

(declare-fun e!4186349 () Bool)

(assert (=> d!2170253 e!4186349))

(declare-fun c!1291070 () Bool)

(assert (=> d!2170253 (= c!1291070 (is-EmptyExpr!17094 (regTwo!34701 r!13765)))))

(assert (=> d!2170253 (= lt!2479049 e!4186345)))

(declare-fun c!1291072 () Bool)

(assert (=> d!2170253 (= c!1291072 (isEmpty!38967 s!9351))))

(assert (=> d!2170253 (validRegex!8786 (regTwo!34701 r!13765))))

(assert (=> d!2170253 (= (matchR!9200 (regTwo!34701 r!13765) s!9351) lt!2479049)))

(declare-fun b!6963035 () Bool)

(declare-fun res!2841007 () Bool)

(assert (=> b!6963035 (=> res!2841007 e!4186348)))

(assert (=> b!6963035 (= res!2841007 (not (is-ElementMatch!17094 (regTwo!34701 r!13765))))))

(assert (=> b!6963035 (= e!4186350 e!4186348)))

(declare-fun b!6963042 () Bool)

(assert (=> b!6963042 (= e!4186349 (= lt!2479049 call!632212))))

(declare-fun b!6963043 () Bool)

(assert (=> b!6963043 (= e!4186351 (= (head!13986 s!9351) (c!1291026 (regTwo!34701 r!13765))))))

(declare-fun b!6963044 () Bool)

(assert (=> b!6963044 (= e!4186346 e!4186347)))

(declare-fun res!2841009 () Bool)

(assert (=> b!6963044 (=> res!2841009 e!4186347)))

(assert (=> b!6963044 (= res!2841009 call!632212)))

(declare-fun b!6963045 () Bool)

(assert (=> b!6963045 (= e!4186349 e!4186350)))

(declare-fun c!1291071 () Bool)

(assert (=> b!6963045 (= c!1291071 (is-EmptyLang!17094 (regTwo!34701 r!13765)))))

(declare-fun b!6963046 () Bool)

(declare-fun nullable!6893 (Regex!17094) Bool)

(assert (=> b!6963046 (= e!4186345 (nullable!6893 (regTwo!34701 r!13765)))))

(declare-fun b!6963047 () Bool)

(declare-fun res!2841004 () Bool)

(assert (=> b!6963047 (=> res!2841004 e!4186348)))

(assert (=> b!6963047 (= res!2841004 e!4186351)))

(declare-fun res!2841006 () Bool)

(assert (=> b!6963047 (=> (not res!2841006) (not e!4186351))))

(assert (=> b!6963047 (= res!2841006 lt!2479049)))

(assert (= (and d!2170253 c!1291072) b!6963046))

(assert (= (and d!2170253 (not c!1291072)) b!6963036))

(assert (= (and d!2170253 c!1291070) b!6963042))

(assert (= (and d!2170253 (not c!1291070)) b!6963045))

(assert (= (and b!6963045 c!1291071) b!6963039))

(assert (= (and b!6963045 (not c!1291071)) b!6963035))

(assert (= (and b!6963035 (not res!2841007)) b!6963047))

(assert (= (and b!6963047 res!2841006) b!6963034))

(assert (= (and b!6963034 res!2841003) b!6963037))

(assert (= (and b!6963037 res!2841005) b!6963043))

(assert (= (and b!6963047 (not res!2841004)) b!6963038))

(assert (= (and b!6963038 res!2841010) b!6963044))

(assert (= (and b!6963044 (not res!2841009)) b!6963041))

(assert (= (and b!6963041 (not res!2841008)) b!6963040))

(assert (= (or b!6963042 b!6963034 b!6963044) bm!632207))

(declare-fun m!7656838 () Bool)

(assert (=> b!6963043 m!7656838))

(assert (=> bm!632207 m!7656804))

(declare-fun m!7656840 () Bool)

(assert (=> b!6963037 m!7656840))

(assert (=> b!6963037 m!7656840))

(declare-fun m!7656842 () Bool)

(assert (=> b!6963037 m!7656842))

(assert (=> b!6963041 m!7656840))

(assert (=> b!6963041 m!7656840))

(assert (=> b!6963041 m!7656842))

(assert (=> d!2170253 m!7656804))

(declare-fun m!7656844 () Bool)

(assert (=> d!2170253 m!7656844))

(assert (=> b!6963040 m!7656838))

(assert (=> b!6963036 m!7656838))

(assert (=> b!6963036 m!7656838))

(declare-fun m!7656846 () Bool)

(assert (=> b!6963036 m!7656846))

(assert (=> b!6963036 m!7656840))

(assert (=> b!6963036 m!7656846))

(assert (=> b!6963036 m!7656840))

(declare-fun m!7656848 () Bool)

(assert (=> b!6963036 m!7656848))

(declare-fun m!7656850 () Bool)

(assert (=> b!6963046 m!7656850))

(assert (=> b!6962834 d!2170253))

(declare-fun bs!1858463 () Bool)

(declare-fun b!6963052 () Bool)

(assert (= bs!1858463 (and b!6963052 b!6962912)))

(declare-fun lambda!397270 () Int)

(assert (=> bs!1858463 (= (and (= (reg!17423 (regTwo!34701 r!13765)) (reg!17423 (regOne!34701 r!13765))) (= (regTwo!34701 r!13765) (regOne!34701 r!13765))) (= lambda!397270 lambda!397259))))

(declare-fun bs!1858464 () Bool)

(assert (= bs!1858464 (and b!6963052 b!6962910)))

(assert (=> bs!1858464 (not (= lambda!397270 lambda!397260))))

(assert (=> b!6963052 true))

(assert (=> b!6963052 true))

(declare-fun bs!1858465 () Bool)

(declare-fun b!6963050 () Bool)

(assert (= bs!1858465 (and b!6963050 b!6962912)))

(declare-fun lambda!397271 () Int)

(assert (=> bs!1858465 (not (= lambda!397271 lambda!397259))))

(declare-fun bs!1858466 () Bool)

(assert (= bs!1858466 (and b!6963050 b!6962910)))

(assert (=> bs!1858466 (= (and (= (regOne!34700 (regTwo!34701 r!13765)) (regOne!34700 (regOne!34701 r!13765))) (= (regTwo!34700 (regTwo!34701 r!13765)) (regTwo!34700 (regOne!34701 r!13765)))) (= lambda!397271 lambda!397260))))

(declare-fun bs!1858467 () Bool)

(assert (= bs!1858467 (and b!6963050 b!6963052)))

(assert (=> bs!1858467 (not (= lambda!397271 lambda!397270))))

(assert (=> b!6963050 true))

(assert (=> b!6963050 true))

(declare-fun bm!632208 () Bool)

(declare-fun call!632214 () Bool)

(assert (=> bm!632208 (= call!632214 (isEmpty!38967 s!9351))))

(declare-fun b!6963048 () Bool)

(declare-fun e!4186356 () Bool)

(assert (=> b!6963048 (= e!4186356 call!632214)))

(declare-fun b!6963049 () Bool)

(declare-fun e!4186357 () Bool)

(assert (=> b!6963049 (= e!4186356 e!4186357)))

(declare-fun res!2841013 () Bool)

(assert (=> b!6963049 (= res!2841013 (not (is-EmptyLang!17094 (regTwo!34701 r!13765))))))

(assert (=> b!6963049 (=> (not res!2841013) (not e!4186357))))

(declare-fun e!4186354 () Bool)

(declare-fun call!632213 () Bool)

(assert (=> b!6963050 (= e!4186354 call!632213)))

(declare-fun b!6963051 () Bool)

(declare-fun e!4186352 () Bool)

(assert (=> b!6963051 (= e!4186352 (= s!9351 (Cons!66749 (c!1291026 (regTwo!34701 r!13765)) Nil!66749)))))

(declare-fun e!4186355 () Bool)

(assert (=> b!6963052 (= e!4186355 call!632213)))

(declare-fun b!6963053 () Bool)

(declare-fun e!4186353 () Bool)

(assert (=> b!6963053 (= e!4186353 e!4186354)))

(declare-fun c!1291073 () Bool)

(assert (=> b!6963053 (= c!1291073 (is-Star!17094 (regTwo!34701 r!13765)))))

(declare-fun b!6963054 () Bool)

(declare-fun c!1291075 () Bool)

(assert (=> b!6963054 (= c!1291075 (is-ElementMatch!17094 (regTwo!34701 r!13765)))))

(assert (=> b!6963054 (= e!4186357 e!4186352)))

(declare-fun b!6963055 () Bool)

(declare-fun e!4186358 () Bool)

(assert (=> b!6963055 (= e!4186353 e!4186358)))

(declare-fun res!2841012 () Bool)

(assert (=> b!6963055 (= res!2841012 (matchRSpec!4115 (regOne!34701 (regTwo!34701 r!13765)) s!9351))))

(assert (=> b!6963055 (=> res!2841012 e!4186358)))

(declare-fun b!6963056 () Bool)

(declare-fun c!1291074 () Bool)

(assert (=> b!6963056 (= c!1291074 (is-Union!17094 (regTwo!34701 r!13765)))))

(assert (=> b!6963056 (= e!4186352 e!4186353)))

(declare-fun b!6963057 () Bool)

(assert (=> b!6963057 (= e!4186358 (matchRSpec!4115 (regTwo!34701 (regTwo!34701 r!13765)) s!9351))))

(declare-fun b!6963058 () Bool)

(declare-fun res!2841011 () Bool)

(assert (=> b!6963058 (=> res!2841011 e!4186355)))

(assert (=> b!6963058 (= res!2841011 call!632214)))

(assert (=> b!6963058 (= e!4186354 e!4186355)))

(declare-fun bm!632209 () Bool)

(assert (=> bm!632209 (= call!632213 (Exists!4074 (ite c!1291073 lambda!397270 lambda!397271)))))

(declare-fun d!2170257 () Bool)

(declare-fun c!1291076 () Bool)

(assert (=> d!2170257 (= c!1291076 (is-EmptyExpr!17094 (regTwo!34701 r!13765)))))

(assert (=> d!2170257 (= (matchRSpec!4115 (regTwo!34701 r!13765) s!9351) e!4186356)))

(assert (= (and d!2170257 c!1291076) b!6963048))

(assert (= (and d!2170257 (not c!1291076)) b!6963049))

(assert (= (and b!6963049 res!2841013) b!6963054))

(assert (= (and b!6963054 c!1291075) b!6963051))

(assert (= (and b!6963054 (not c!1291075)) b!6963056))

(assert (= (and b!6963056 c!1291074) b!6963055))

(assert (= (and b!6963056 (not c!1291074)) b!6963053))

(assert (= (and b!6963055 (not res!2841012)) b!6963057))

(assert (= (and b!6963053 c!1291073) b!6963058))

(assert (= (and b!6963053 (not c!1291073)) b!6963050))

(assert (= (and b!6963058 (not res!2841011)) b!6963052))

(assert (= (or b!6963052 b!6963050) bm!632209))

(assert (= (or b!6963048 b!6963058) bm!632208))

(assert (=> bm!632208 m!7656804))

(declare-fun m!7656852 () Bool)

(assert (=> b!6963055 m!7656852))

(declare-fun m!7656854 () Bool)

(assert (=> b!6963057 m!7656854))

(declare-fun m!7656856 () Bool)

(assert (=> bm!632209 m!7656856))

(assert (=> b!6962834 d!2170257))

(declare-fun d!2170259 () Bool)

(assert (=> d!2170259 (= (matchR!9200 (regTwo!34701 r!13765) s!9351) (matchRSpec!4115 (regTwo!34701 r!13765) s!9351))))

(declare-fun lt!2479054 () Unit!160848)

(declare-fun choose!51887 (Regex!17094 List!66873) Unit!160848)

(assert (=> d!2170259 (= lt!2479054 (choose!51887 (regTwo!34701 r!13765) s!9351))))

(assert (=> d!2170259 (validRegex!8786 (regTwo!34701 r!13765))))

(assert (=> d!2170259 (= (mainMatchTheorem!4109 (regTwo!34701 r!13765) s!9351) lt!2479054)))

(declare-fun bs!1858468 () Bool)

(assert (= bs!1858468 d!2170259))

(assert (=> bs!1858468 m!7656760))

(assert (=> bs!1858468 m!7656750))

(declare-fun m!7656858 () Bool)

(assert (=> bs!1858468 m!7656858))

(assert (=> bs!1858468 m!7656844))

(assert (=> b!6962834 d!2170259))

(declare-fun b!6963087 () Bool)

(declare-fun res!2841030 () Bool)

(declare-fun e!4186379 () Bool)

(assert (=> b!6963087 (=> (not res!2841030) (not e!4186379))))

(declare-fun call!632215 () Bool)

(assert (=> b!6963087 (= res!2841030 (not call!632215))))

(declare-fun b!6963089 () Bool)

(declare-fun e!4186373 () Bool)

(assert (=> b!6963089 (= e!4186373 (matchR!9200 (derivativeStep!5519 (regOne!34701 r!13765) (head!13986 s!9351)) (tail!13048 s!9351)))))

(declare-fun b!6963090 () Bool)

(declare-fun res!2841032 () Bool)

(assert (=> b!6963090 (=> (not res!2841032) (not e!4186379))))

(assert (=> b!6963090 (= res!2841032 (isEmpty!38967 (tail!13048 s!9351)))))

(declare-fun bm!632210 () Bool)

(assert (=> bm!632210 (= call!632215 (isEmpty!38967 s!9351))))

(declare-fun b!6963091 () Bool)

(declare-fun e!4186376 () Bool)

(declare-fun e!4186374 () Bool)

(assert (=> b!6963091 (= e!4186376 e!4186374)))

(declare-fun res!2841037 () Bool)

(assert (=> b!6963091 (=> (not res!2841037) (not e!4186374))))

(declare-fun lt!2479055 () Bool)

(assert (=> b!6963091 (= res!2841037 (not lt!2479055))))

(declare-fun b!6963092 () Bool)

(declare-fun e!4186378 () Bool)

(assert (=> b!6963092 (= e!4186378 (not lt!2479055))))

(declare-fun b!6963093 () Bool)

(declare-fun e!4186375 () Bool)

(assert (=> b!6963093 (= e!4186375 (not (= (head!13986 s!9351) (c!1291026 (regOne!34701 r!13765)))))))

(declare-fun b!6963094 () Bool)

(declare-fun res!2841035 () Bool)

(assert (=> b!6963094 (=> res!2841035 e!4186375)))

(assert (=> b!6963094 (= res!2841035 (not (isEmpty!38967 (tail!13048 s!9351))))))

(declare-fun d!2170261 () Bool)

(declare-fun e!4186377 () Bool)

(assert (=> d!2170261 e!4186377))

(declare-fun c!1291083 () Bool)

(assert (=> d!2170261 (= c!1291083 (is-EmptyExpr!17094 (regOne!34701 r!13765)))))

(assert (=> d!2170261 (= lt!2479055 e!4186373)))

(declare-fun c!1291085 () Bool)

(assert (=> d!2170261 (= c!1291085 (isEmpty!38967 s!9351))))

(assert (=> d!2170261 (validRegex!8786 (regOne!34701 r!13765))))

(assert (=> d!2170261 (= (matchR!9200 (regOne!34701 r!13765) s!9351) lt!2479055)))

(declare-fun b!6963088 () Bool)

(declare-fun res!2841034 () Bool)

(assert (=> b!6963088 (=> res!2841034 e!4186376)))

(assert (=> b!6963088 (= res!2841034 (not (is-ElementMatch!17094 (regOne!34701 r!13765))))))

(assert (=> b!6963088 (= e!4186378 e!4186376)))

(declare-fun b!6963095 () Bool)

(assert (=> b!6963095 (= e!4186377 (= lt!2479055 call!632215))))

(declare-fun b!6963096 () Bool)

(assert (=> b!6963096 (= e!4186379 (= (head!13986 s!9351) (c!1291026 (regOne!34701 r!13765))))))

(declare-fun b!6963097 () Bool)

(assert (=> b!6963097 (= e!4186374 e!4186375)))

(declare-fun res!2841036 () Bool)

(assert (=> b!6963097 (=> res!2841036 e!4186375)))

(assert (=> b!6963097 (= res!2841036 call!632215)))

(declare-fun b!6963098 () Bool)

(assert (=> b!6963098 (= e!4186377 e!4186378)))

(declare-fun c!1291084 () Bool)

(assert (=> b!6963098 (= c!1291084 (is-EmptyLang!17094 (regOne!34701 r!13765)))))

(declare-fun b!6963099 () Bool)

(assert (=> b!6963099 (= e!4186373 (nullable!6893 (regOne!34701 r!13765)))))

(declare-fun b!6963100 () Bool)

(declare-fun res!2841031 () Bool)

(assert (=> b!6963100 (=> res!2841031 e!4186376)))

(assert (=> b!6963100 (= res!2841031 e!4186379)))

(declare-fun res!2841033 () Bool)

(assert (=> b!6963100 (=> (not res!2841033) (not e!4186379))))

(assert (=> b!6963100 (= res!2841033 lt!2479055)))

(assert (= (and d!2170261 c!1291085) b!6963099))

(assert (= (and d!2170261 (not c!1291085)) b!6963089))

(assert (= (and d!2170261 c!1291083) b!6963095))

(assert (= (and d!2170261 (not c!1291083)) b!6963098))

(assert (= (and b!6963098 c!1291084) b!6963092))

(assert (= (and b!6963098 (not c!1291084)) b!6963088))

(assert (= (and b!6963088 (not res!2841034)) b!6963100))

(assert (= (and b!6963100 res!2841033) b!6963087))

(assert (= (and b!6963087 res!2841030) b!6963090))

(assert (= (and b!6963090 res!2841032) b!6963096))

(assert (= (and b!6963100 (not res!2841031)) b!6963091))

(assert (= (and b!6963091 res!2841037) b!6963097))

(assert (= (and b!6963097 (not res!2841036)) b!6963094))

(assert (= (and b!6963094 (not res!2841035)) b!6963093))

(assert (= (or b!6963095 b!6963087 b!6963097) bm!632210))

(assert (=> b!6963096 m!7656838))

(assert (=> bm!632210 m!7656804))

(assert (=> b!6963090 m!7656840))

(assert (=> b!6963090 m!7656840))

(assert (=> b!6963090 m!7656842))

(assert (=> b!6963094 m!7656840))

(assert (=> b!6963094 m!7656840))

(assert (=> b!6963094 m!7656842))

(assert (=> d!2170261 m!7656804))

(declare-fun m!7656860 () Bool)

(assert (=> d!2170261 m!7656860))

(assert (=> b!6963093 m!7656838))

(assert (=> b!6963089 m!7656838))

(assert (=> b!6963089 m!7656838))

(declare-fun m!7656862 () Bool)

(assert (=> b!6963089 m!7656862))

(assert (=> b!6963089 m!7656840))

(assert (=> b!6963089 m!7656862))

(assert (=> b!6963089 m!7656840))

(declare-fun m!7656864 () Bool)

(assert (=> b!6963089 m!7656864))

(declare-fun m!7656866 () Bool)

(assert (=> b!6963099 m!7656866))

(assert (=> b!6962834 d!2170261))

(declare-fun d!2170263 () Bool)

(assert (=> d!2170263 (= (matchR!9200 (regOne!34701 r!13765) s!9351) (matchRSpec!4115 (regOne!34701 r!13765) s!9351))))

(declare-fun lt!2479056 () Unit!160848)

(assert (=> d!2170263 (= lt!2479056 (choose!51887 (regOne!34701 r!13765) s!9351))))

(assert (=> d!2170263 (validRegex!8786 (regOne!34701 r!13765))))

(assert (=> d!2170263 (= (mainMatchTheorem!4109 (regOne!34701 r!13765) s!9351) lt!2479056)))

(declare-fun bs!1858469 () Bool)

(assert (= bs!1858469 d!2170263))

(assert (=> bs!1858469 m!7656764))

(assert (=> bs!1858469 m!7656748))

(declare-fun m!7656868 () Bool)

(assert (=> bs!1858469 m!7656868))

(assert (=> bs!1858469 m!7656860))

(assert (=> b!6962834 d!2170263))

(declare-fun bs!1858470 () Bool)

(declare-fun b!6963105 () Bool)

(assert (= bs!1858470 (and b!6963105 b!6962912)))

(declare-fun lambda!397272 () Int)

(assert (=> bs!1858470 (= (and (= (reg!17423 r!13765) (reg!17423 (regOne!34701 r!13765))) (= r!13765 (regOne!34701 r!13765))) (= lambda!397272 lambda!397259))))

(declare-fun bs!1858471 () Bool)

(assert (= bs!1858471 (and b!6963105 b!6962910)))

(assert (=> bs!1858471 (not (= lambda!397272 lambda!397260))))

(declare-fun bs!1858472 () Bool)

(assert (= bs!1858472 (and b!6963105 b!6963052)))

(assert (=> bs!1858472 (= (and (= (reg!17423 r!13765) (reg!17423 (regTwo!34701 r!13765))) (= r!13765 (regTwo!34701 r!13765))) (= lambda!397272 lambda!397270))))

(declare-fun bs!1858473 () Bool)

(assert (= bs!1858473 (and b!6963105 b!6963050)))

(assert (=> bs!1858473 (not (= lambda!397272 lambda!397271))))

(assert (=> b!6963105 true))

(assert (=> b!6963105 true))

(declare-fun bs!1858474 () Bool)

(declare-fun b!6963103 () Bool)

(assert (= bs!1858474 (and b!6963103 b!6962912)))

(declare-fun lambda!397273 () Int)

(assert (=> bs!1858474 (not (= lambda!397273 lambda!397259))))

(declare-fun bs!1858475 () Bool)

(assert (= bs!1858475 (and b!6963103 b!6962910)))

(assert (=> bs!1858475 (= (and (= (regOne!34700 r!13765) (regOne!34700 (regOne!34701 r!13765))) (= (regTwo!34700 r!13765) (regTwo!34700 (regOne!34701 r!13765)))) (= lambda!397273 lambda!397260))))

(declare-fun bs!1858476 () Bool)

(assert (= bs!1858476 (and b!6963103 b!6963050)))

(assert (=> bs!1858476 (= (and (= (regOne!34700 r!13765) (regOne!34700 (regTwo!34701 r!13765))) (= (regTwo!34700 r!13765) (regTwo!34700 (regTwo!34701 r!13765)))) (= lambda!397273 lambda!397271))))

(declare-fun bs!1858477 () Bool)

(assert (= bs!1858477 (and b!6963103 b!6963105)))

(assert (=> bs!1858477 (not (= lambda!397273 lambda!397272))))

(declare-fun bs!1858478 () Bool)

(assert (= bs!1858478 (and b!6963103 b!6963052)))

(assert (=> bs!1858478 (not (= lambda!397273 lambda!397270))))

(assert (=> b!6963103 true))

(assert (=> b!6963103 true))

(declare-fun bm!632211 () Bool)

(declare-fun call!632217 () Bool)

(assert (=> bm!632211 (= call!632217 (isEmpty!38967 s!9351))))

(declare-fun b!6963101 () Bool)

(declare-fun e!4186384 () Bool)

(assert (=> b!6963101 (= e!4186384 call!632217)))

(declare-fun b!6963102 () Bool)

(declare-fun e!4186385 () Bool)

(assert (=> b!6963102 (= e!4186384 e!4186385)))

(declare-fun res!2841040 () Bool)

(assert (=> b!6963102 (= res!2841040 (not (is-EmptyLang!17094 r!13765)))))

(assert (=> b!6963102 (=> (not res!2841040) (not e!4186385))))

(declare-fun e!4186382 () Bool)

(declare-fun call!632216 () Bool)

(assert (=> b!6963103 (= e!4186382 call!632216)))

(declare-fun b!6963104 () Bool)

(declare-fun e!4186380 () Bool)

(assert (=> b!6963104 (= e!4186380 (= s!9351 (Cons!66749 (c!1291026 r!13765) Nil!66749)))))

(declare-fun e!4186383 () Bool)

(assert (=> b!6963105 (= e!4186383 call!632216)))

(declare-fun b!6963106 () Bool)

(declare-fun e!4186381 () Bool)

(assert (=> b!6963106 (= e!4186381 e!4186382)))

(declare-fun c!1291086 () Bool)

(assert (=> b!6963106 (= c!1291086 (is-Star!17094 r!13765))))

(declare-fun b!6963107 () Bool)

(declare-fun c!1291088 () Bool)

(assert (=> b!6963107 (= c!1291088 (is-ElementMatch!17094 r!13765))))

(assert (=> b!6963107 (= e!4186385 e!4186380)))

(declare-fun b!6963108 () Bool)

(declare-fun e!4186386 () Bool)

(assert (=> b!6963108 (= e!4186381 e!4186386)))

(declare-fun res!2841039 () Bool)

(assert (=> b!6963108 (= res!2841039 (matchRSpec!4115 (regOne!34701 r!13765) s!9351))))

(assert (=> b!6963108 (=> res!2841039 e!4186386)))

(declare-fun b!6963109 () Bool)

(declare-fun c!1291087 () Bool)

(assert (=> b!6963109 (= c!1291087 (is-Union!17094 r!13765))))

(assert (=> b!6963109 (= e!4186380 e!4186381)))

(declare-fun b!6963110 () Bool)

(assert (=> b!6963110 (= e!4186386 (matchRSpec!4115 (regTwo!34701 r!13765) s!9351))))

(declare-fun b!6963111 () Bool)

(declare-fun res!2841038 () Bool)

(assert (=> b!6963111 (=> res!2841038 e!4186383)))

(assert (=> b!6963111 (= res!2841038 call!632217)))

(assert (=> b!6963111 (= e!4186382 e!4186383)))

(declare-fun bm!632212 () Bool)

(assert (=> bm!632212 (= call!632216 (Exists!4074 (ite c!1291086 lambda!397272 lambda!397273)))))

(declare-fun d!2170265 () Bool)

(declare-fun c!1291089 () Bool)

(assert (=> d!2170265 (= c!1291089 (is-EmptyExpr!17094 r!13765))))

(assert (=> d!2170265 (= (matchRSpec!4115 r!13765 s!9351) e!4186384)))

(assert (= (and d!2170265 c!1291089) b!6963101))

(assert (= (and d!2170265 (not c!1291089)) b!6963102))

(assert (= (and b!6963102 res!2841040) b!6963107))

(assert (= (and b!6963107 c!1291088) b!6963104))

(assert (= (and b!6963107 (not c!1291088)) b!6963109))

(assert (= (and b!6963109 c!1291087) b!6963108))

(assert (= (and b!6963109 (not c!1291087)) b!6963106))

(assert (= (and b!6963108 (not res!2841039)) b!6963110))

(assert (= (and b!6963106 c!1291086) b!6963111))

(assert (= (and b!6963106 (not c!1291086)) b!6963103))

(assert (= (and b!6963111 (not res!2841038)) b!6963105))

(assert (= (or b!6963105 b!6963103) bm!632212))

(assert (= (or b!6963101 b!6963111) bm!632211))

(assert (=> bm!632211 m!7656804))

(assert (=> b!6963108 m!7656748))

(assert (=> b!6963110 m!7656750))

(declare-fun m!7656870 () Bool)

(assert (=> bm!632212 m!7656870))

(assert (=> b!6962825 d!2170265))

(declare-fun b!6963112 () Bool)

(declare-fun res!2841041 () Bool)

(declare-fun e!4186393 () Bool)

(assert (=> b!6963112 (=> (not res!2841041) (not e!4186393))))

(declare-fun call!632220 () Bool)

(assert (=> b!6963112 (= res!2841041 (not call!632220))))

(declare-fun b!6963114 () Bool)

(declare-fun e!4186387 () Bool)

(assert (=> b!6963114 (= e!4186387 (matchR!9200 (derivativeStep!5519 r!13765 (head!13986 s!9351)) (tail!13048 s!9351)))))

(declare-fun b!6963115 () Bool)

(declare-fun res!2841043 () Bool)

(assert (=> b!6963115 (=> (not res!2841043) (not e!4186393))))

(assert (=> b!6963115 (= res!2841043 (isEmpty!38967 (tail!13048 s!9351)))))

(declare-fun bm!632215 () Bool)

(assert (=> bm!632215 (= call!632220 (isEmpty!38967 s!9351))))

(declare-fun b!6963116 () Bool)

(declare-fun e!4186390 () Bool)

(declare-fun e!4186388 () Bool)

(assert (=> b!6963116 (= e!4186390 e!4186388)))

(declare-fun res!2841048 () Bool)

(assert (=> b!6963116 (=> (not res!2841048) (not e!4186388))))

(declare-fun lt!2479057 () Bool)

(assert (=> b!6963116 (= res!2841048 (not lt!2479057))))

(declare-fun b!6963117 () Bool)

(declare-fun e!4186392 () Bool)

(assert (=> b!6963117 (= e!4186392 (not lt!2479057))))

(declare-fun b!6963118 () Bool)

(declare-fun e!4186389 () Bool)

(assert (=> b!6963118 (= e!4186389 (not (= (head!13986 s!9351) (c!1291026 r!13765))))))

(declare-fun b!6963119 () Bool)

(declare-fun res!2841046 () Bool)

(assert (=> b!6963119 (=> res!2841046 e!4186389)))

(assert (=> b!6963119 (= res!2841046 (not (isEmpty!38967 (tail!13048 s!9351))))))

(declare-fun d!2170267 () Bool)

(declare-fun e!4186391 () Bool)

(assert (=> d!2170267 e!4186391))

(declare-fun c!1291090 () Bool)

(assert (=> d!2170267 (= c!1291090 (is-EmptyExpr!17094 r!13765))))

(assert (=> d!2170267 (= lt!2479057 e!4186387)))

(declare-fun c!1291092 () Bool)

(assert (=> d!2170267 (= c!1291092 (isEmpty!38967 s!9351))))

(assert (=> d!2170267 (validRegex!8786 r!13765)))

(assert (=> d!2170267 (= (matchR!9200 r!13765 s!9351) lt!2479057)))

(declare-fun b!6963113 () Bool)

(declare-fun res!2841045 () Bool)

(assert (=> b!6963113 (=> res!2841045 e!4186390)))

(assert (=> b!6963113 (= res!2841045 (not (is-ElementMatch!17094 r!13765)))))

(assert (=> b!6963113 (= e!4186392 e!4186390)))

(declare-fun b!6963120 () Bool)

(assert (=> b!6963120 (= e!4186391 (= lt!2479057 call!632220))))

(declare-fun b!6963121 () Bool)

(assert (=> b!6963121 (= e!4186393 (= (head!13986 s!9351) (c!1291026 r!13765)))))

(declare-fun b!6963122 () Bool)

(assert (=> b!6963122 (= e!4186388 e!4186389)))

(declare-fun res!2841047 () Bool)

(assert (=> b!6963122 (=> res!2841047 e!4186389)))

(assert (=> b!6963122 (= res!2841047 call!632220)))

(declare-fun b!6963123 () Bool)

(assert (=> b!6963123 (= e!4186391 e!4186392)))

(declare-fun c!1291091 () Bool)

(assert (=> b!6963123 (= c!1291091 (is-EmptyLang!17094 r!13765))))

(declare-fun b!6963124 () Bool)

(assert (=> b!6963124 (= e!4186387 (nullable!6893 r!13765))))

(declare-fun b!6963125 () Bool)

(declare-fun res!2841042 () Bool)

(assert (=> b!6963125 (=> res!2841042 e!4186390)))

(assert (=> b!6963125 (= res!2841042 e!4186393)))

(declare-fun res!2841044 () Bool)

(assert (=> b!6963125 (=> (not res!2841044) (not e!4186393))))

(assert (=> b!6963125 (= res!2841044 lt!2479057)))

(assert (= (and d!2170267 c!1291092) b!6963124))

(assert (= (and d!2170267 (not c!1291092)) b!6963114))

(assert (= (and d!2170267 c!1291090) b!6963120))

(assert (= (and d!2170267 (not c!1291090)) b!6963123))

(assert (= (and b!6963123 c!1291091) b!6963117))

(assert (= (and b!6963123 (not c!1291091)) b!6963113))

(assert (= (and b!6963113 (not res!2841045)) b!6963125))

(assert (= (and b!6963125 res!2841044) b!6963112))

(assert (= (and b!6963112 res!2841041) b!6963115))

(assert (= (and b!6963115 res!2841043) b!6963121))

(assert (= (and b!6963125 (not res!2841042)) b!6963116))

(assert (= (and b!6963116 res!2841048) b!6963122))

(assert (= (and b!6963122 (not res!2841047)) b!6963119))

(assert (= (and b!6963119 (not res!2841046)) b!6963118))

(assert (= (or b!6963120 b!6963112 b!6963122) bm!632215))

(assert (=> b!6963121 m!7656838))

(assert (=> bm!632215 m!7656804))

(assert (=> b!6963115 m!7656840))

(assert (=> b!6963115 m!7656840))

(assert (=> b!6963115 m!7656842))

(assert (=> b!6963119 m!7656840))

(assert (=> b!6963119 m!7656840))

(assert (=> b!6963119 m!7656842))

(assert (=> d!2170267 m!7656804))

(declare-fun m!7656872 () Bool)

(assert (=> d!2170267 m!7656872))

(assert (=> b!6963118 m!7656838))

(assert (=> b!6963114 m!7656838))

(assert (=> b!6963114 m!7656838))

(declare-fun m!7656874 () Bool)

(assert (=> b!6963114 m!7656874))

(assert (=> b!6963114 m!7656840))

(assert (=> b!6963114 m!7656874))

(assert (=> b!6963114 m!7656840))

(declare-fun m!7656876 () Bool)

(assert (=> b!6963114 m!7656876))

(declare-fun m!7656878 () Bool)

(assert (=> b!6963124 m!7656878))

(assert (=> b!6962825 d!2170267))

(declare-fun d!2170269 () Bool)

(assert (=> d!2170269 (= (matchR!9200 r!13765 s!9351) (matchRSpec!4115 r!13765 s!9351))))

(declare-fun lt!2479058 () Unit!160848)

(assert (=> d!2170269 (= lt!2479058 (choose!51887 r!13765 s!9351))))

(assert (=> d!2170269 (validRegex!8786 r!13765)))

(assert (=> d!2170269 (= (mainMatchTheorem!4109 r!13765 s!9351) lt!2479058)))

(declare-fun bs!1858479 () Bool)

(assert (= bs!1858479 d!2170269))

(assert (=> bs!1858479 m!7656756))

(assert (=> bs!1858479 m!7656754))

(declare-fun m!7656880 () Bool)

(assert (=> bs!1858479 m!7656880))

(assert (=> bs!1858479 m!7656872))

(assert (=> b!6962825 d!2170269))

(assert (=> b!6962835 d!2170257))

(declare-fun d!2170271 () Bool)

(assert (=> d!2170271 (= (isEmpty!38965 l!9142) (is-Nil!66750 l!9142))))

(assert (=> b!6962830 d!2170271))

(declare-fun b!6963130 () Bool)

(declare-fun e!4186396 () Bool)

(declare-fun tp!1920030 () Bool)

(assert (=> b!6963130 (= e!4186396 (and tp_is_empty!43413 tp!1920030))))

(assert (=> b!6962833 (= tp!1920000 e!4186396)))

(assert (= (and b!6962833 (is-Cons!66749 (t!380616 s!9351))) b!6963130))

(declare-fun b!6963142 () Bool)

(declare-fun e!4186399 () Bool)

(declare-fun tp!1920044 () Bool)

(declare-fun tp!1920042 () Bool)

(assert (=> b!6963142 (= e!4186399 (and tp!1920044 tp!1920042))))

(declare-fun b!6963143 () Bool)

(declare-fun tp!1920041 () Bool)

(assert (=> b!6963143 (= e!4186399 tp!1920041)))

(declare-fun b!6963141 () Bool)

(assert (=> b!6963141 (= e!4186399 tp_is_empty!43413)))

(declare-fun b!6963144 () Bool)

(declare-fun tp!1920043 () Bool)

(declare-fun tp!1920045 () Bool)

(assert (=> b!6963144 (= e!4186399 (and tp!1920043 tp!1920045))))

(assert (=> b!6962828 (= tp!1920003 e!4186399)))

(assert (= (and b!6962828 (is-ElementMatch!17094 (regOne!34700 r!13765))) b!6963141))

(assert (= (and b!6962828 (is-Concat!25939 (regOne!34700 r!13765))) b!6963142))

(assert (= (and b!6962828 (is-Star!17094 (regOne!34700 r!13765))) b!6963143))

(assert (= (and b!6962828 (is-Union!17094 (regOne!34700 r!13765))) b!6963144))

(declare-fun b!6963146 () Bool)

(declare-fun e!4186400 () Bool)

(declare-fun tp!1920049 () Bool)

(declare-fun tp!1920047 () Bool)

(assert (=> b!6963146 (= e!4186400 (and tp!1920049 tp!1920047))))

(declare-fun b!6963147 () Bool)

(declare-fun tp!1920046 () Bool)

(assert (=> b!6963147 (= e!4186400 tp!1920046)))

(declare-fun b!6963145 () Bool)

(assert (=> b!6963145 (= e!4186400 tp_is_empty!43413)))

(declare-fun b!6963148 () Bool)

(declare-fun tp!1920048 () Bool)

(declare-fun tp!1920050 () Bool)

(assert (=> b!6963148 (= e!4186400 (and tp!1920048 tp!1920050))))

(assert (=> b!6962828 (= tp!1919998 e!4186400)))

(assert (= (and b!6962828 (is-ElementMatch!17094 (regTwo!34700 r!13765))) b!6963145))

(assert (= (and b!6962828 (is-Concat!25939 (regTwo!34700 r!13765))) b!6963146))

(assert (= (and b!6962828 (is-Star!17094 (regTwo!34700 r!13765))) b!6963147))

(assert (= (and b!6962828 (is-Union!17094 (regTwo!34700 r!13765))) b!6963148))

(declare-fun b!6963150 () Bool)

(declare-fun e!4186401 () Bool)

(declare-fun tp!1920054 () Bool)

(declare-fun tp!1920052 () Bool)

(assert (=> b!6963150 (= e!4186401 (and tp!1920054 tp!1920052))))

(declare-fun b!6963151 () Bool)

(declare-fun tp!1920051 () Bool)

(assert (=> b!6963151 (= e!4186401 tp!1920051)))

(declare-fun b!6963149 () Bool)

(assert (=> b!6963149 (= e!4186401 tp_is_empty!43413)))

(declare-fun b!6963152 () Bool)

(declare-fun tp!1920053 () Bool)

(declare-fun tp!1920055 () Bool)

(assert (=> b!6963152 (= e!4186401 (and tp!1920053 tp!1920055))))

(assert (=> b!6962829 (= tp!1919997 e!4186401)))

(assert (= (and b!6962829 (is-ElementMatch!17094 (reg!17423 r!13765))) b!6963149))

(assert (= (and b!6962829 (is-Concat!25939 (reg!17423 r!13765))) b!6963150))

(assert (= (and b!6962829 (is-Star!17094 (reg!17423 r!13765))) b!6963151))

(assert (= (and b!6962829 (is-Union!17094 (reg!17423 r!13765))) b!6963152))

(declare-fun b!6963154 () Bool)

(declare-fun e!4186402 () Bool)

(declare-fun tp!1920059 () Bool)

(declare-fun tp!1920057 () Bool)

(assert (=> b!6963154 (= e!4186402 (and tp!1920059 tp!1920057))))

(declare-fun b!6963155 () Bool)

(declare-fun tp!1920056 () Bool)

(assert (=> b!6963155 (= e!4186402 tp!1920056)))

(declare-fun b!6963153 () Bool)

(assert (=> b!6963153 (= e!4186402 tp_is_empty!43413)))

(declare-fun b!6963156 () Bool)

(declare-fun tp!1920058 () Bool)

(declare-fun tp!1920060 () Bool)

(assert (=> b!6963156 (= e!4186402 (and tp!1920058 tp!1920060))))

(assert (=> b!6962824 (= tp!1919996 e!4186402)))

(assert (= (and b!6962824 (is-ElementMatch!17094 (regOne!34701 r!13765))) b!6963153))

(assert (= (and b!6962824 (is-Concat!25939 (regOne!34701 r!13765))) b!6963154))

(assert (= (and b!6962824 (is-Star!17094 (regOne!34701 r!13765))) b!6963155))

(assert (= (and b!6962824 (is-Union!17094 (regOne!34701 r!13765))) b!6963156))

(declare-fun b!6963158 () Bool)

(declare-fun e!4186403 () Bool)

(declare-fun tp!1920064 () Bool)

(declare-fun tp!1920062 () Bool)

(assert (=> b!6963158 (= e!4186403 (and tp!1920064 tp!1920062))))

(declare-fun b!6963159 () Bool)

(declare-fun tp!1920061 () Bool)

(assert (=> b!6963159 (= e!4186403 tp!1920061)))

(declare-fun b!6963157 () Bool)

(assert (=> b!6963157 (= e!4186403 tp_is_empty!43413)))

(declare-fun b!6963160 () Bool)

(declare-fun tp!1920063 () Bool)

(declare-fun tp!1920065 () Bool)

(assert (=> b!6963160 (= e!4186403 (and tp!1920063 tp!1920065))))

(assert (=> b!6962824 (= tp!1920001 e!4186403)))

(assert (= (and b!6962824 (is-ElementMatch!17094 (regTwo!34701 r!13765))) b!6963157))

(assert (= (and b!6962824 (is-Concat!25939 (regTwo!34701 r!13765))) b!6963158))

(assert (= (and b!6962824 (is-Star!17094 (regTwo!34701 r!13765))) b!6963159))

(assert (= (and b!6962824 (is-Union!17094 (regTwo!34701 r!13765))) b!6963160))

(declare-fun b!6963162 () Bool)

(declare-fun e!4186404 () Bool)

(declare-fun tp!1920069 () Bool)

(declare-fun tp!1920067 () Bool)

(assert (=> b!6963162 (= e!4186404 (and tp!1920069 tp!1920067))))

(declare-fun b!6963163 () Bool)

(declare-fun tp!1920066 () Bool)

(assert (=> b!6963163 (= e!4186404 tp!1920066)))

(declare-fun b!6963161 () Bool)

(assert (=> b!6963161 (= e!4186404 tp_is_empty!43413)))

(declare-fun b!6963164 () Bool)

(declare-fun tp!1920068 () Bool)

(declare-fun tp!1920070 () Bool)

(assert (=> b!6963164 (= e!4186404 (and tp!1920068 tp!1920070))))

(assert (=> b!6962836 (= tp!1920002 e!4186404)))

(assert (= (and b!6962836 (is-ElementMatch!17094 (h!73198 l!9142))) b!6963161))

(assert (= (and b!6962836 (is-Concat!25939 (h!73198 l!9142))) b!6963162))

(assert (= (and b!6962836 (is-Star!17094 (h!73198 l!9142))) b!6963163))

(assert (= (and b!6962836 (is-Union!17094 (h!73198 l!9142))) b!6963164))

(declare-fun b!6963169 () Bool)

(declare-fun e!4186407 () Bool)

(declare-fun tp!1920075 () Bool)

(declare-fun tp!1920076 () Bool)

(assert (=> b!6963169 (= e!4186407 (and tp!1920075 tp!1920076))))

(assert (=> b!6962836 (= tp!1919999 e!4186407)))

(assert (= (and b!6962836 (is-Cons!66750 (t!380617 l!9142))) b!6963169))

(declare-fun b_lambda!260595 () Bool)

(assert (= b_lambda!260593 (or start!668028 b_lambda!260595)))

(declare-fun bs!1858480 () Bool)

(declare-fun d!2170273 () Bool)

(assert (= bs!1858480 (and d!2170273 start!668028)))

(assert (=> bs!1858480 (= (dynLambda!26615 lambda!397251 (h!73198 l!9142)) (validRegex!8786 (h!73198 l!9142)))))

(declare-fun m!7656882 () Bool)

(assert (=> bs!1858480 m!7656882))

(assert (=> b!6963004 d!2170273))

(push 1)

(assert (not b!6962986))

(assert (not b!6963055))

(assert (not b!6963151))

(assert (not bs!1858480))

(assert (not bm!632210))

(assert (not b!6962995))

(assert (not b!6963090))

(assert (not b!6963094))

(assert (not b!6963155))

(assert (not b!6963041))

(assert (not bm!632215))

(assert (not b!6963144))

(assert (not bm!632209))

(assert (not bm!632197))

(assert (not b!6963093))

(assert (not b_lambda!260595))

(assert (not b!6963156))

(assert (not b!6962994))

(assert (not b!6963057))

(assert (not b!6963115))

(assert (not b!6963152))

(assert (not b!6963040))

(assert (not d!2170263))

(assert (not b!6963108))

(assert (not b!6963118))

(assert (not b!6963046))

(assert (not bm!632212))

(assert (not d!2170261))

(assert (not b!6963043))

(assert (not b!6963121))

(assert (not b!6963114))

(assert (not b!6963130))

(assert (not bm!632198))

(assert (not b!6963005))

(assert (not d!2170269))

(assert (not b!6963110))

(assert (not b!6962915))

(assert (not d!2170253))

(assert (not b!6963142))

(assert (not bm!632208))

(assert (not b!6962988))

(assert (not b!6963148))

(assert (not bm!632207))

(assert (not b!6963158))

(assert (not b!6963147))

(assert (not b!6963169))

(assert (not b!6963124))

(assert (not b!6962989))

(assert tp_is_empty!43413)

(assert (not b!6963163))

(assert (not b!6963143))

(assert (not b!6963037))

(assert (not b!6963150))

(assert (not b!6963164))

(assert (not b!6963154))

(assert (not b!6962917))

(assert (not b!6963159))

(assert (not b!6963119))

(assert (not b!6962987))

(assert (not d!2170259))

(assert (not b!6963036))

(assert (not d!2170267))

(assert (not d!2170249))

(assert (not b!6963162))

(assert (not b!6963096))

(assert (not b!6963099))

(assert (not b!6963160))

(assert (not b!6963089))

(assert (not bm!632211))

(assert (not b!6963146))

(assert (not b!6962992))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

