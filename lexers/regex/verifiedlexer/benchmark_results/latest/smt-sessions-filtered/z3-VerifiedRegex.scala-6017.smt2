; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!294580 () Bool)

(assert start!294580)

(declare-fun b!3107970 () Bool)

(declare-fun e!1941688 () Bool)

(declare-datatypes ((C!19356 0))(
  ( (C!19357 (val!11714 Int)) )
))
(declare-datatypes ((Regex!9585 0))(
  ( (ElementMatch!9585 (c!519929 C!19356)) (Concat!14906 (regOne!19682 Regex!9585) (regTwo!19682 Regex!9585)) (EmptyExpr!9585) (Star!9585 (reg!9914 Regex!9585)) (EmptyLang!9585) (Union!9585 (regOne!19683 Regex!9585) (regTwo!19683 Regex!9585)) )
))
(declare-fun lt!1056958 () Regex!9585)

(declare-datatypes ((List!35450 0))(
  ( (Nil!35326) (Cons!35326 (h!40746 C!19356) (t!234515 List!35450)) )
))
(declare-fun s!11993 () List!35450)

(declare-fun matchR!4467 (Regex!9585 List!35450) Bool)

(assert (=> b!3107970 (= e!1941688 (matchR!4467 lt!1056958 s!11993))))

(declare-fun b!3107971 () Bool)

(declare-fun e!1941685 () Bool)

(declare-fun tp_is_empty!16733 () Bool)

(declare-fun tp!975920 () Bool)

(assert (=> b!3107971 (= e!1941685 (and tp_is_empty!16733 tp!975920))))

(declare-fun b!3107972 () Bool)

(declare-fun e!1941687 () Bool)

(declare-fun tp!975922 () Bool)

(declare-fun tp!975921 () Bool)

(assert (=> b!3107972 (= e!1941687 (and tp!975922 tp!975921))))

(declare-fun b!3107973 () Bool)

(declare-fun res!1272565 () Bool)

(declare-fun e!1941684 () Bool)

(assert (=> b!3107973 (=> res!1272565 e!1941684)))

(declare-fun lt!1056953 () Regex!9585)

(assert (=> b!3107973 (= res!1272565 (not (matchR!4467 (Union!9585 lt!1056953 lt!1056958) s!11993)))))

(declare-fun b!3107974 () Bool)

(declare-fun e!1941683 () Bool)

(assert (=> b!3107974 (= e!1941684 e!1941683)))

(declare-fun res!1272560 () Bool)

(assert (=> b!3107974 (=> res!1272560 e!1941683)))

(declare-fun lt!1056954 () Bool)

(assert (=> b!3107974 (= res!1272560 (not lt!1056954))))

(assert (=> b!3107974 e!1941688))

(declare-fun res!1272561 () Bool)

(assert (=> b!3107974 (=> res!1272561 e!1941688)))

(assert (=> b!3107974 (= res!1272561 lt!1056954)))

(assert (=> b!3107974 (= lt!1056954 (matchR!4467 lt!1056953 s!11993))))

(declare-datatypes ((Unit!49609 0))(
  ( (Unit!49610) )
))
(declare-fun lt!1056957 () Unit!49609)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!316 (Regex!9585 Regex!9585 List!35450) Unit!49609)

(assert (=> b!3107974 (= lt!1056957 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!316 lt!1056953 lt!1056958 s!11993))))

(declare-fun b!3107975 () Bool)

(declare-fun e!1941689 () Bool)

(declare-fun e!1941686 () Bool)

(assert (=> b!3107975 (= e!1941689 (not e!1941686))))

(declare-fun res!1272564 () Bool)

(assert (=> b!3107975 (=> res!1272564 e!1941686)))

(declare-fun lt!1056956 () Bool)

(declare-fun r!17423 () Regex!9585)

(get-info :version)

(assert (=> b!3107975 (= res!1272564 (or lt!1056956 ((_ is Concat!14906) r!17423) (not ((_ is Union!9585) r!17423))))))

(declare-fun matchRSpec!1722 (Regex!9585 List!35450) Bool)

(assert (=> b!3107975 (= lt!1056956 (matchRSpec!1722 r!17423 s!11993))))

(assert (=> b!3107975 (= lt!1056956 (matchR!4467 r!17423 s!11993))))

(declare-fun lt!1056955 () Unit!49609)

(declare-fun mainMatchTheorem!1722 (Regex!9585 List!35450) Unit!49609)

(assert (=> b!3107975 (= lt!1056955 (mainMatchTheorem!1722 r!17423 s!11993))))

(declare-fun b!3107976 () Bool)

(assert (=> b!3107976 (= e!1941687 tp_is_empty!16733)))

(declare-fun b!3107977 () Bool)

(assert (=> b!3107977 (= e!1941686 e!1941684)))

(declare-fun res!1272566 () Bool)

(assert (=> b!3107977 (=> res!1272566 e!1941684)))

(declare-fun isEmptyLang!636 (Regex!9585) Bool)

(assert (=> b!3107977 (= res!1272566 (isEmptyLang!636 lt!1056953))))

(declare-fun simplify!540 (Regex!9585) Regex!9585)

(assert (=> b!3107977 (= lt!1056958 (simplify!540 (regTwo!19683 r!17423)))))

(assert (=> b!3107977 (= lt!1056953 (simplify!540 (regOne!19683 r!17423)))))

(declare-fun res!1272563 () Bool)

(assert (=> start!294580 (=> (not res!1272563) (not e!1941689))))

(declare-fun validRegex!4318 (Regex!9585) Bool)

(assert (=> start!294580 (= res!1272563 (validRegex!4318 r!17423))))

(assert (=> start!294580 e!1941689))

(assert (=> start!294580 e!1941687))

(assert (=> start!294580 e!1941685))

(declare-fun b!3107978 () Bool)

(declare-fun tp!975923 () Bool)

(declare-fun tp!975925 () Bool)

(assert (=> b!3107978 (= e!1941687 (and tp!975923 tp!975925))))

(declare-fun b!3107979 () Bool)

(assert (=> b!3107979 (= e!1941683 (validRegex!4318 (regOne!19683 r!17423)))))

(declare-fun b!3107980 () Bool)

(declare-fun tp!975924 () Bool)

(assert (=> b!3107980 (= e!1941687 tp!975924)))

(declare-fun b!3107981 () Bool)

(declare-fun res!1272562 () Bool)

(assert (=> b!3107981 (=> res!1272562 e!1941684)))

(assert (=> b!3107981 (= res!1272562 (isEmptyLang!636 lt!1056958))))

(assert (= (and start!294580 res!1272563) b!3107975))

(assert (= (and b!3107975 (not res!1272564)) b!3107977))

(assert (= (and b!3107977 (not res!1272566)) b!3107981))

(assert (= (and b!3107981 (not res!1272562)) b!3107973))

(assert (= (and b!3107973 (not res!1272565)) b!3107974))

(assert (= (and b!3107974 (not res!1272561)) b!3107970))

(assert (= (and b!3107974 (not res!1272560)) b!3107979))

(assert (= (and start!294580 ((_ is ElementMatch!9585) r!17423)) b!3107976))

(assert (= (and start!294580 ((_ is Concat!14906) r!17423)) b!3107978))

(assert (= (and start!294580 ((_ is Star!9585) r!17423)) b!3107980))

(assert (= (and start!294580 ((_ is Union!9585) r!17423)) b!3107972))

(assert (= (and start!294580 ((_ is Cons!35326) s!11993)) b!3107971))

(declare-fun m!3403583 () Bool)

(assert (=> b!3107974 m!3403583))

(declare-fun m!3403585 () Bool)

(assert (=> b!3107974 m!3403585))

(declare-fun m!3403587 () Bool)

(assert (=> b!3107977 m!3403587))

(declare-fun m!3403589 () Bool)

(assert (=> b!3107977 m!3403589))

(declare-fun m!3403591 () Bool)

(assert (=> b!3107977 m!3403591))

(declare-fun m!3403593 () Bool)

(assert (=> b!3107979 m!3403593))

(declare-fun m!3403595 () Bool)

(assert (=> start!294580 m!3403595))

(declare-fun m!3403597 () Bool)

(assert (=> b!3107975 m!3403597))

(declare-fun m!3403599 () Bool)

(assert (=> b!3107975 m!3403599))

(declare-fun m!3403601 () Bool)

(assert (=> b!3107975 m!3403601))

(declare-fun m!3403603 () Bool)

(assert (=> b!3107973 m!3403603))

(declare-fun m!3403605 () Bool)

(assert (=> b!3107981 m!3403605))

(declare-fun m!3403607 () Bool)

(assert (=> b!3107970 m!3403607))

(check-sat (not b!3107972) (not b!3107975) (not b!3107973) (not b!3107980) (not b!3107974) (not b!3107978) (not b!3107981) tp_is_empty!16733 (not b!3107970) (not b!3107977) (not b!3107971) (not b!3107979) (not start!294580))
(check-sat)
(get-model)

(declare-fun b!3108238 () Bool)

(assert (=> b!3108238 true))

(assert (=> b!3108238 true))

(declare-fun bs!535764 () Bool)

(declare-fun b!3108237 () Bool)

(assert (= bs!535764 (and b!3108237 b!3108238)))

(declare-fun lambda!115006 () Int)

(declare-fun lambda!115005 () Int)

(assert (=> bs!535764 (not (= lambda!115006 lambda!115005))))

(assert (=> b!3108237 true))

(assert (=> b!3108237 true))

(declare-fun b!3108234 () Bool)

(declare-fun e!1941845 () Bool)

(declare-fun call!219807 () Bool)

(assert (=> b!3108234 (= e!1941845 call!219807)))

(declare-fun b!3108235 () Bool)

(declare-fun e!1941840 () Bool)

(declare-fun e!1941842 () Bool)

(assert (=> b!3108235 (= e!1941840 e!1941842)))

(declare-fun c!520011 () Bool)

(assert (=> b!3108235 (= c!520011 ((_ is Star!9585) r!17423))))

(declare-fun b!3108236 () Bool)

(declare-fun c!520012 () Bool)

(assert (=> b!3108236 (= c!520012 ((_ is ElementMatch!9585) r!17423))))

(declare-fun e!1941841 () Bool)

(declare-fun e!1941846 () Bool)

(assert (=> b!3108236 (= e!1941841 e!1941846)))

(declare-fun call!219808 () Bool)

(assert (=> b!3108237 (= e!1941842 call!219808)))

(declare-fun d!861524 () Bool)

(declare-fun c!520013 () Bool)

(assert (=> d!861524 (= c!520013 ((_ is EmptyExpr!9585) r!17423))))

(assert (=> d!861524 (= (matchRSpec!1722 r!17423 s!11993) e!1941845)))

(declare-fun e!1941843 () Bool)

(assert (=> b!3108238 (= e!1941843 call!219808)))

(declare-fun b!3108239 () Bool)

(declare-fun c!520010 () Bool)

(assert (=> b!3108239 (= c!520010 ((_ is Union!9585) r!17423))))

(assert (=> b!3108239 (= e!1941846 e!1941840)))

(declare-fun bm!219802 () Bool)

(declare-fun isEmpty!19672 (List!35450) Bool)

(assert (=> bm!219802 (= call!219807 (isEmpty!19672 s!11993))))

(declare-fun b!3108240 () Bool)

(assert (=> b!3108240 (= e!1941846 (= s!11993 (Cons!35326 (c!519929 r!17423) Nil!35326)))))

(declare-fun b!3108241 () Bool)

(declare-fun res!1272661 () Bool)

(assert (=> b!3108241 (=> res!1272661 e!1941843)))

(assert (=> b!3108241 (= res!1272661 call!219807)))

(assert (=> b!3108241 (= e!1941842 e!1941843)))

(declare-fun b!3108242 () Bool)

(assert (=> b!3108242 (= e!1941845 e!1941841)))

(declare-fun res!1272659 () Bool)

(assert (=> b!3108242 (= res!1272659 (not ((_ is EmptyLang!9585) r!17423)))))

(assert (=> b!3108242 (=> (not res!1272659) (not e!1941841))))

(declare-fun bm!219803 () Bool)

(declare-fun Exists!1843 (Int) Bool)

(assert (=> bm!219803 (= call!219808 (Exists!1843 (ite c!520011 lambda!115005 lambda!115006)))))

(declare-fun b!3108243 () Bool)

(declare-fun e!1941844 () Bool)

(assert (=> b!3108243 (= e!1941840 e!1941844)))

(declare-fun res!1272660 () Bool)

(assert (=> b!3108243 (= res!1272660 (matchRSpec!1722 (regOne!19683 r!17423) s!11993))))

(assert (=> b!3108243 (=> res!1272660 e!1941844)))

(declare-fun b!3108244 () Bool)

(assert (=> b!3108244 (= e!1941844 (matchRSpec!1722 (regTwo!19683 r!17423) s!11993))))

(assert (= (and d!861524 c!520013) b!3108234))

(assert (= (and d!861524 (not c!520013)) b!3108242))

(assert (= (and b!3108242 res!1272659) b!3108236))

(assert (= (and b!3108236 c!520012) b!3108240))

(assert (= (and b!3108236 (not c!520012)) b!3108239))

(assert (= (and b!3108239 c!520010) b!3108243))

(assert (= (and b!3108239 (not c!520010)) b!3108235))

(assert (= (and b!3108243 (not res!1272660)) b!3108244))

(assert (= (and b!3108235 c!520011) b!3108241))

(assert (= (and b!3108235 (not c!520011)) b!3108237))

(assert (= (and b!3108241 (not res!1272661)) b!3108238))

(assert (= (or b!3108238 b!3108237) bm!219803))

(assert (= (or b!3108234 b!3108241) bm!219802))

(declare-fun m!3403687 () Bool)

(assert (=> bm!219802 m!3403687))

(declare-fun m!3403689 () Bool)

(assert (=> bm!219803 m!3403689))

(declare-fun m!3403691 () Bool)

(assert (=> b!3108243 m!3403691))

(declare-fun m!3403693 () Bool)

(assert (=> b!3108244 m!3403693))

(assert (=> b!3107975 d!861524))

(declare-fun b!3108277 () Bool)

(declare-fun e!1941865 () Bool)

(declare-fun head!6880 (List!35450) C!19356)

(assert (=> b!3108277 (= e!1941865 (= (head!6880 s!11993) (c!519929 r!17423)))))

(declare-fun d!861546 () Bool)

(declare-fun e!1941861 () Bool)

(assert (=> d!861546 e!1941861))

(declare-fun c!520021 () Bool)

(assert (=> d!861546 (= c!520021 ((_ is EmptyExpr!9585) r!17423))))

(declare-fun lt!1056992 () Bool)

(declare-fun e!1941866 () Bool)

(assert (=> d!861546 (= lt!1056992 e!1941866)))

(declare-fun c!520022 () Bool)

(assert (=> d!861546 (= c!520022 (isEmpty!19672 s!11993))))

(assert (=> d!861546 (validRegex!4318 r!17423)))

(assert (=> d!861546 (= (matchR!4467 r!17423 s!11993) lt!1056992)))

(declare-fun b!3108278 () Bool)

(declare-fun res!1272685 () Bool)

(declare-fun e!1941867 () Bool)

(assert (=> b!3108278 (=> res!1272685 e!1941867)))

(assert (=> b!3108278 (= res!1272685 e!1941865)))

(declare-fun res!1272683 () Bool)

(assert (=> b!3108278 (=> (not res!1272683) (not e!1941865))))

(assert (=> b!3108278 (= res!1272683 lt!1056992)))

(declare-fun b!3108279 () Bool)

(declare-fun res!1272680 () Bool)

(assert (=> b!3108279 (=> (not res!1272680) (not e!1941865))))

(declare-fun call!219811 () Bool)

(assert (=> b!3108279 (= res!1272680 (not call!219811))))

(declare-fun b!3108280 () Bool)

(declare-fun res!1272682 () Bool)

(declare-fun e!1941864 () Bool)

(assert (=> b!3108280 (=> res!1272682 e!1941864)))

(declare-fun tail!5106 (List!35450) List!35450)

(assert (=> b!3108280 (= res!1272682 (not (isEmpty!19672 (tail!5106 s!11993))))))

(declare-fun b!3108281 () Bool)

(declare-fun e!1941862 () Bool)

(assert (=> b!3108281 (= e!1941862 (not lt!1056992))))

(declare-fun b!3108282 () Bool)

(assert (=> b!3108282 (= e!1941861 (= lt!1056992 call!219811))))

(declare-fun b!3108283 () Bool)

(declare-fun e!1941863 () Bool)

(assert (=> b!3108283 (= e!1941867 e!1941863)))

(declare-fun res!1272684 () Bool)

(assert (=> b!3108283 (=> (not res!1272684) (not e!1941863))))

(assert (=> b!3108283 (= res!1272684 (not lt!1056992))))

(declare-fun b!3108284 () Bool)

(declare-fun res!1272679 () Bool)

(assert (=> b!3108284 (=> (not res!1272679) (not e!1941865))))

(assert (=> b!3108284 (= res!1272679 (isEmpty!19672 (tail!5106 s!11993)))))

(declare-fun b!3108285 () Bool)

(assert (=> b!3108285 (= e!1941863 e!1941864)))

(declare-fun res!1272681 () Bool)

(assert (=> b!3108285 (=> res!1272681 e!1941864)))

(assert (=> b!3108285 (= res!1272681 call!219811)))

(declare-fun b!3108286 () Bool)

(declare-fun res!1272678 () Bool)

(assert (=> b!3108286 (=> res!1272678 e!1941867)))

(assert (=> b!3108286 (= res!1272678 (not ((_ is ElementMatch!9585) r!17423)))))

(assert (=> b!3108286 (= e!1941862 e!1941867)))

(declare-fun b!3108287 () Bool)

(declare-fun nullable!3226 (Regex!9585) Bool)

(assert (=> b!3108287 (= e!1941866 (nullable!3226 r!17423))))

(declare-fun bm!219806 () Bool)

(assert (=> bm!219806 (= call!219811 (isEmpty!19672 s!11993))))

(declare-fun b!3108288 () Bool)

(assert (=> b!3108288 (= e!1941861 e!1941862)))

(declare-fun c!520020 () Bool)

(assert (=> b!3108288 (= c!520020 ((_ is EmptyLang!9585) r!17423))))

(declare-fun b!3108289 () Bool)

(assert (=> b!3108289 (= e!1941864 (not (= (head!6880 s!11993) (c!519929 r!17423))))))

(declare-fun b!3108290 () Bool)

(declare-fun derivativeStep!2821 (Regex!9585 C!19356) Regex!9585)

(assert (=> b!3108290 (= e!1941866 (matchR!4467 (derivativeStep!2821 r!17423 (head!6880 s!11993)) (tail!5106 s!11993)))))

(assert (= (and d!861546 c!520022) b!3108287))

(assert (= (and d!861546 (not c!520022)) b!3108290))

(assert (= (and d!861546 c!520021) b!3108282))

(assert (= (and d!861546 (not c!520021)) b!3108288))

(assert (= (and b!3108288 c!520020) b!3108281))

(assert (= (and b!3108288 (not c!520020)) b!3108286))

(assert (= (and b!3108286 (not res!1272678)) b!3108278))

(assert (= (and b!3108278 res!1272683) b!3108279))

(assert (= (and b!3108279 res!1272680) b!3108284))

(assert (= (and b!3108284 res!1272679) b!3108277))

(assert (= (and b!3108278 (not res!1272685)) b!3108283))

(assert (= (and b!3108283 res!1272684) b!3108285))

(assert (= (and b!3108285 (not res!1272681)) b!3108280))

(assert (= (and b!3108280 (not res!1272682)) b!3108289))

(assert (= (or b!3108282 b!3108279 b!3108285) bm!219806))

(declare-fun m!3403695 () Bool)

(assert (=> b!3108289 m!3403695))

(assert (=> d!861546 m!3403687))

(assert (=> d!861546 m!3403595))

(declare-fun m!3403697 () Bool)

(assert (=> b!3108284 m!3403697))

(assert (=> b!3108284 m!3403697))

(declare-fun m!3403699 () Bool)

(assert (=> b!3108284 m!3403699))

(assert (=> bm!219806 m!3403687))

(assert (=> b!3108290 m!3403695))

(assert (=> b!3108290 m!3403695))

(declare-fun m!3403701 () Bool)

(assert (=> b!3108290 m!3403701))

(assert (=> b!3108290 m!3403697))

(assert (=> b!3108290 m!3403701))

(assert (=> b!3108290 m!3403697))

(declare-fun m!3403703 () Bool)

(assert (=> b!3108290 m!3403703))

(assert (=> b!3108280 m!3403697))

(assert (=> b!3108280 m!3403697))

(assert (=> b!3108280 m!3403699))

(assert (=> b!3108277 m!3403695))

(declare-fun m!3403705 () Bool)

(assert (=> b!3108287 m!3403705))

(assert (=> b!3107975 d!861546))

(declare-fun d!861548 () Bool)

(assert (=> d!861548 (= (matchR!4467 r!17423 s!11993) (matchRSpec!1722 r!17423 s!11993))))

(declare-fun lt!1056995 () Unit!49609)

(declare-fun choose!18382 (Regex!9585 List!35450) Unit!49609)

(assert (=> d!861548 (= lt!1056995 (choose!18382 r!17423 s!11993))))

(assert (=> d!861548 (validRegex!4318 r!17423)))

(assert (=> d!861548 (= (mainMatchTheorem!1722 r!17423 s!11993) lt!1056995)))

(declare-fun bs!535765 () Bool)

(assert (= bs!535765 d!861548))

(assert (=> bs!535765 m!3403599))

(assert (=> bs!535765 m!3403597))

(declare-fun m!3403707 () Bool)

(assert (=> bs!535765 m!3403707))

(assert (=> bs!535765 m!3403595))

(assert (=> b!3107975 d!861548))

(declare-fun b!3108291 () Bool)

(declare-fun e!1941872 () Bool)

(assert (=> b!3108291 (= e!1941872 (= (head!6880 s!11993) (c!519929 lt!1056958)))))

(declare-fun d!861550 () Bool)

(declare-fun e!1941868 () Bool)

(assert (=> d!861550 e!1941868))

(declare-fun c!520024 () Bool)

(assert (=> d!861550 (= c!520024 ((_ is EmptyExpr!9585) lt!1056958))))

(declare-fun lt!1056996 () Bool)

(declare-fun e!1941873 () Bool)

(assert (=> d!861550 (= lt!1056996 e!1941873)))

(declare-fun c!520025 () Bool)

(assert (=> d!861550 (= c!520025 (isEmpty!19672 s!11993))))

(assert (=> d!861550 (validRegex!4318 lt!1056958)))

(assert (=> d!861550 (= (matchR!4467 lt!1056958 s!11993) lt!1056996)))

(declare-fun b!3108292 () Bool)

(declare-fun res!1272693 () Bool)

(declare-fun e!1941874 () Bool)

(assert (=> b!3108292 (=> res!1272693 e!1941874)))

(assert (=> b!3108292 (= res!1272693 e!1941872)))

(declare-fun res!1272691 () Bool)

(assert (=> b!3108292 (=> (not res!1272691) (not e!1941872))))

(assert (=> b!3108292 (= res!1272691 lt!1056996)))

(declare-fun b!3108293 () Bool)

(declare-fun res!1272688 () Bool)

(assert (=> b!3108293 (=> (not res!1272688) (not e!1941872))))

(declare-fun call!219812 () Bool)

(assert (=> b!3108293 (= res!1272688 (not call!219812))))

(declare-fun b!3108294 () Bool)

(declare-fun res!1272690 () Bool)

(declare-fun e!1941871 () Bool)

(assert (=> b!3108294 (=> res!1272690 e!1941871)))

(assert (=> b!3108294 (= res!1272690 (not (isEmpty!19672 (tail!5106 s!11993))))))

(declare-fun b!3108295 () Bool)

(declare-fun e!1941869 () Bool)

(assert (=> b!3108295 (= e!1941869 (not lt!1056996))))

(declare-fun b!3108296 () Bool)

(assert (=> b!3108296 (= e!1941868 (= lt!1056996 call!219812))))

(declare-fun b!3108297 () Bool)

(declare-fun e!1941870 () Bool)

(assert (=> b!3108297 (= e!1941874 e!1941870)))

(declare-fun res!1272692 () Bool)

(assert (=> b!3108297 (=> (not res!1272692) (not e!1941870))))

(assert (=> b!3108297 (= res!1272692 (not lt!1056996))))

(declare-fun b!3108298 () Bool)

(declare-fun res!1272687 () Bool)

(assert (=> b!3108298 (=> (not res!1272687) (not e!1941872))))

(assert (=> b!3108298 (= res!1272687 (isEmpty!19672 (tail!5106 s!11993)))))

(declare-fun b!3108299 () Bool)

(assert (=> b!3108299 (= e!1941870 e!1941871)))

(declare-fun res!1272689 () Bool)

(assert (=> b!3108299 (=> res!1272689 e!1941871)))

(assert (=> b!3108299 (= res!1272689 call!219812)))

(declare-fun b!3108300 () Bool)

(declare-fun res!1272686 () Bool)

(assert (=> b!3108300 (=> res!1272686 e!1941874)))

(assert (=> b!3108300 (= res!1272686 (not ((_ is ElementMatch!9585) lt!1056958)))))

(assert (=> b!3108300 (= e!1941869 e!1941874)))

(declare-fun b!3108301 () Bool)

(assert (=> b!3108301 (= e!1941873 (nullable!3226 lt!1056958))))

(declare-fun bm!219807 () Bool)

(assert (=> bm!219807 (= call!219812 (isEmpty!19672 s!11993))))

(declare-fun b!3108302 () Bool)

(assert (=> b!3108302 (= e!1941868 e!1941869)))

(declare-fun c!520023 () Bool)

(assert (=> b!3108302 (= c!520023 ((_ is EmptyLang!9585) lt!1056958))))

(declare-fun b!3108303 () Bool)

(assert (=> b!3108303 (= e!1941871 (not (= (head!6880 s!11993) (c!519929 lt!1056958))))))

(declare-fun b!3108304 () Bool)

(assert (=> b!3108304 (= e!1941873 (matchR!4467 (derivativeStep!2821 lt!1056958 (head!6880 s!11993)) (tail!5106 s!11993)))))

(assert (= (and d!861550 c!520025) b!3108301))

(assert (= (and d!861550 (not c!520025)) b!3108304))

(assert (= (and d!861550 c!520024) b!3108296))

(assert (= (and d!861550 (not c!520024)) b!3108302))

(assert (= (and b!3108302 c!520023) b!3108295))

(assert (= (and b!3108302 (not c!520023)) b!3108300))

(assert (= (and b!3108300 (not res!1272686)) b!3108292))

(assert (= (and b!3108292 res!1272691) b!3108293))

(assert (= (and b!3108293 res!1272688) b!3108298))

(assert (= (and b!3108298 res!1272687) b!3108291))

(assert (= (and b!3108292 (not res!1272693)) b!3108297))

(assert (= (and b!3108297 res!1272692) b!3108299))

(assert (= (and b!3108299 (not res!1272689)) b!3108294))

(assert (= (and b!3108294 (not res!1272690)) b!3108303))

(assert (= (or b!3108296 b!3108293 b!3108299) bm!219807))

(assert (=> b!3108303 m!3403695))

(assert (=> d!861550 m!3403687))

(declare-fun m!3403709 () Bool)

(assert (=> d!861550 m!3403709))

(assert (=> b!3108298 m!3403697))

(assert (=> b!3108298 m!3403697))

(assert (=> b!3108298 m!3403699))

(assert (=> bm!219807 m!3403687))

(assert (=> b!3108304 m!3403695))

(assert (=> b!3108304 m!3403695))

(declare-fun m!3403711 () Bool)

(assert (=> b!3108304 m!3403711))

(assert (=> b!3108304 m!3403697))

(assert (=> b!3108304 m!3403711))

(assert (=> b!3108304 m!3403697))

(declare-fun m!3403713 () Bool)

(assert (=> b!3108304 m!3403713))

(assert (=> b!3108294 m!3403697))

(assert (=> b!3108294 m!3403697))

(assert (=> b!3108294 m!3403699))

(assert (=> b!3108291 m!3403695))

(declare-fun m!3403715 () Bool)

(assert (=> b!3108301 m!3403715))

(assert (=> b!3107970 d!861550))

(declare-fun b!3108305 () Bool)

(declare-fun e!1941879 () Bool)

(assert (=> b!3108305 (= e!1941879 (= (head!6880 s!11993) (c!519929 (Union!9585 lt!1056953 lt!1056958))))))

(declare-fun d!861552 () Bool)

(declare-fun e!1941875 () Bool)

(assert (=> d!861552 e!1941875))

(declare-fun c!520027 () Bool)

(assert (=> d!861552 (= c!520027 ((_ is EmptyExpr!9585) (Union!9585 lt!1056953 lt!1056958)))))

(declare-fun lt!1056997 () Bool)

(declare-fun e!1941880 () Bool)

(assert (=> d!861552 (= lt!1056997 e!1941880)))

(declare-fun c!520028 () Bool)

(assert (=> d!861552 (= c!520028 (isEmpty!19672 s!11993))))

(assert (=> d!861552 (validRegex!4318 (Union!9585 lt!1056953 lt!1056958))))

(assert (=> d!861552 (= (matchR!4467 (Union!9585 lt!1056953 lt!1056958) s!11993) lt!1056997)))

(declare-fun b!3108306 () Bool)

(declare-fun res!1272701 () Bool)

(declare-fun e!1941881 () Bool)

(assert (=> b!3108306 (=> res!1272701 e!1941881)))

(assert (=> b!3108306 (= res!1272701 e!1941879)))

(declare-fun res!1272699 () Bool)

(assert (=> b!3108306 (=> (not res!1272699) (not e!1941879))))

(assert (=> b!3108306 (= res!1272699 lt!1056997)))

(declare-fun b!3108307 () Bool)

(declare-fun res!1272696 () Bool)

(assert (=> b!3108307 (=> (not res!1272696) (not e!1941879))))

(declare-fun call!219813 () Bool)

(assert (=> b!3108307 (= res!1272696 (not call!219813))))

(declare-fun b!3108308 () Bool)

(declare-fun res!1272698 () Bool)

(declare-fun e!1941878 () Bool)

(assert (=> b!3108308 (=> res!1272698 e!1941878)))

(assert (=> b!3108308 (= res!1272698 (not (isEmpty!19672 (tail!5106 s!11993))))))

(declare-fun b!3108309 () Bool)

(declare-fun e!1941876 () Bool)

(assert (=> b!3108309 (= e!1941876 (not lt!1056997))))

(declare-fun b!3108310 () Bool)

(assert (=> b!3108310 (= e!1941875 (= lt!1056997 call!219813))))

(declare-fun b!3108311 () Bool)

(declare-fun e!1941877 () Bool)

(assert (=> b!3108311 (= e!1941881 e!1941877)))

(declare-fun res!1272700 () Bool)

(assert (=> b!3108311 (=> (not res!1272700) (not e!1941877))))

(assert (=> b!3108311 (= res!1272700 (not lt!1056997))))

(declare-fun b!3108312 () Bool)

(declare-fun res!1272695 () Bool)

(assert (=> b!3108312 (=> (not res!1272695) (not e!1941879))))

(assert (=> b!3108312 (= res!1272695 (isEmpty!19672 (tail!5106 s!11993)))))

(declare-fun b!3108313 () Bool)

(assert (=> b!3108313 (= e!1941877 e!1941878)))

(declare-fun res!1272697 () Bool)

(assert (=> b!3108313 (=> res!1272697 e!1941878)))

(assert (=> b!3108313 (= res!1272697 call!219813)))

(declare-fun b!3108314 () Bool)

(declare-fun res!1272694 () Bool)

(assert (=> b!3108314 (=> res!1272694 e!1941881)))

(assert (=> b!3108314 (= res!1272694 (not ((_ is ElementMatch!9585) (Union!9585 lt!1056953 lt!1056958))))))

(assert (=> b!3108314 (= e!1941876 e!1941881)))

(declare-fun b!3108315 () Bool)

(assert (=> b!3108315 (= e!1941880 (nullable!3226 (Union!9585 lt!1056953 lt!1056958)))))

(declare-fun bm!219808 () Bool)

(assert (=> bm!219808 (= call!219813 (isEmpty!19672 s!11993))))

(declare-fun b!3108316 () Bool)

(assert (=> b!3108316 (= e!1941875 e!1941876)))

(declare-fun c!520026 () Bool)

(assert (=> b!3108316 (= c!520026 ((_ is EmptyLang!9585) (Union!9585 lt!1056953 lt!1056958)))))

(declare-fun b!3108317 () Bool)

(assert (=> b!3108317 (= e!1941878 (not (= (head!6880 s!11993) (c!519929 (Union!9585 lt!1056953 lt!1056958)))))))

(declare-fun b!3108318 () Bool)

(assert (=> b!3108318 (= e!1941880 (matchR!4467 (derivativeStep!2821 (Union!9585 lt!1056953 lt!1056958) (head!6880 s!11993)) (tail!5106 s!11993)))))

(assert (= (and d!861552 c!520028) b!3108315))

(assert (= (and d!861552 (not c!520028)) b!3108318))

(assert (= (and d!861552 c!520027) b!3108310))

(assert (= (and d!861552 (not c!520027)) b!3108316))

(assert (= (and b!3108316 c!520026) b!3108309))

(assert (= (and b!3108316 (not c!520026)) b!3108314))

(assert (= (and b!3108314 (not res!1272694)) b!3108306))

(assert (= (and b!3108306 res!1272699) b!3108307))

(assert (= (and b!3108307 res!1272696) b!3108312))

(assert (= (and b!3108312 res!1272695) b!3108305))

(assert (= (and b!3108306 (not res!1272701)) b!3108311))

(assert (= (and b!3108311 res!1272700) b!3108313))

(assert (= (and b!3108313 (not res!1272697)) b!3108308))

(assert (= (and b!3108308 (not res!1272698)) b!3108317))

(assert (= (or b!3108310 b!3108307 b!3108313) bm!219808))

(assert (=> b!3108317 m!3403695))

(assert (=> d!861552 m!3403687))

(declare-fun m!3403717 () Bool)

(assert (=> d!861552 m!3403717))

(assert (=> b!3108312 m!3403697))

(assert (=> b!3108312 m!3403697))

(assert (=> b!3108312 m!3403699))

(assert (=> bm!219808 m!3403687))

(assert (=> b!3108318 m!3403695))

(assert (=> b!3108318 m!3403695))

(declare-fun m!3403719 () Bool)

(assert (=> b!3108318 m!3403719))

(assert (=> b!3108318 m!3403697))

(assert (=> b!3108318 m!3403719))

(assert (=> b!3108318 m!3403697))

(declare-fun m!3403721 () Bool)

(assert (=> b!3108318 m!3403721))

(assert (=> b!3108308 m!3403697))

(assert (=> b!3108308 m!3403697))

(assert (=> b!3108308 m!3403699))

(assert (=> b!3108305 m!3403695))

(declare-fun m!3403723 () Bool)

(assert (=> b!3108315 m!3403723))

(assert (=> b!3107973 d!861552))

(declare-fun b!3108337 () Bool)

(declare-fun res!1272716 () Bool)

(declare-fun e!1941896 () Bool)

(assert (=> b!3108337 (=> (not res!1272716) (not e!1941896))))

(declare-fun call!219821 () Bool)

(assert (=> b!3108337 (= res!1272716 call!219821)))

(declare-fun e!1941902 () Bool)

(assert (=> b!3108337 (= e!1941902 e!1941896)))

(declare-fun b!3108338 () Bool)

(declare-fun e!1941900 () Bool)

(assert (=> b!3108338 (= e!1941900 e!1941902)))

(declare-fun c!520034 () Bool)

(assert (=> b!3108338 (= c!520034 ((_ is Union!9585) (regOne!19683 r!17423)))))

(declare-fun b!3108339 () Bool)

(declare-fun call!219822 () Bool)

(assert (=> b!3108339 (= e!1941896 call!219822)))

(declare-fun b!3108340 () Bool)

(declare-fun e!1941899 () Bool)

(assert (=> b!3108340 (= e!1941899 e!1941900)))

(declare-fun c!520033 () Bool)

(assert (=> b!3108340 (= c!520033 ((_ is Star!9585) (regOne!19683 r!17423)))))

(declare-fun b!3108341 () Bool)

(declare-fun e!1941897 () Bool)

(declare-fun call!219820 () Bool)

(assert (=> b!3108341 (= e!1941897 call!219820)))

(declare-fun b!3108342 () Bool)

(declare-fun e!1941901 () Bool)

(assert (=> b!3108342 (= e!1941901 call!219821)))

(declare-fun b!3108343 () Bool)

(declare-fun res!1272715 () Bool)

(declare-fun e!1941898 () Bool)

(assert (=> b!3108343 (=> res!1272715 e!1941898)))

(assert (=> b!3108343 (= res!1272715 (not ((_ is Concat!14906) (regOne!19683 r!17423))))))

(assert (=> b!3108343 (= e!1941902 e!1941898)))

(declare-fun b!3108344 () Bool)

(assert (=> b!3108344 (= e!1941900 e!1941897)))

(declare-fun res!1272714 () Bool)

(assert (=> b!3108344 (= res!1272714 (not (nullable!3226 (reg!9914 (regOne!19683 r!17423)))))))

(assert (=> b!3108344 (=> (not res!1272714) (not e!1941897))))

(declare-fun d!861554 () Bool)

(declare-fun res!1272713 () Bool)

(assert (=> d!861554 (=> res!1272713 e!1941899)))

(assert (=> d!861554 (= res!1272713 ((_ is ElementMatch!9585) (regOne!19683 r!17423)))))

(assert (=> d!861554 (= (validRegex!4318 (regOne!19683 r!17423)) e!1941899)))

(declare-fun bm!219815 () Bool)

(assert (=> bm!219815 (= call!219821 call!219820)))

(declare-fun bm!219816 () Bool)

(assert (=> bm!219816 (= call!219820 (validRegex!4318 (ite c!520033 (reg!9914 (regOne!19683 r!17423)) (ite c!520034 (regOne!19683 (regOne!19683 r!17423)) (regTwo!19682 (regOne!19683 r!17423))))))))

(declare-fun bm!219817 () Bool)

(assert (=> bm!219817 (= call!219822 (validRegex!4318 (ite c!520034 (regTwo!19683 (regOne!19683 r!17423)) (regOne!19682 (regOne!19683 r!17423)))))))

(declare-fun b!3108345 () Bool)

(assert (=> b!3108345 (= e!1941898 e!1941901)))

(declare-fun res!1272712 () Bool)

(assert (=> b!3108345 (=> (not res!1272712) (not e!1941901))))

(assert (=> b!3108345 (= res!1272712 call!219822)))

(assert (= (and d!861554 (not res!1272713)) b!3108340))

(assert (= (and b!3108340 c!520033) b!3108344))

(assert (= (and b!3108340 (not c!520033)) b!3108338))

(assert (= (and b!3108344 res!1272714) b!3108341))

(assert (= (and b!3108338 c!520034) b!3108337))

(assert (= (and b!3108338 (not c!520034)) b!3108343))

(assert (= (and b!3108337 res!1272716) b!3108339))

(assert (= (and b!3108343 (not res!1272715)) b!3108345))

(assert (= (and b!3108345 res!1272712) b!3108342))

(assert (= (or b!3108337 b!3108342) bm!219815))

(assert (= (or b!3108339 b!3108345) bm!219817))

(assert (= (or b!3108341 bm!219815) bm!219816))

(declare-fun m!3403725 () Bool)

(assert (=> b!3108344 m!3403725))

(declare-fun m!3403727 () Bool)

(assert (=> bm!219816 m!3403727))

(declare-fun m!3403729 () Bool)

(assert (=> bm!219817 m!3403729))

(assert (=> b!3107979 d!861554))

(declare-fun b!3108346 () Bool)

(declare-fun e!1941907 () Bool)

(assert (=> b!3108346 (= e!1941907 (= (head!6880 s!11993) (c!519929 lt!1056953)))))

(declare-fun d!861556 () Bool)

(declare-fun e!1941903 () Bool)

(assert (=> d!861556 e!1941903))

(declare-fun c!520036 () Bool)

(assert (=> d!861556 (= c!520036 ((_ is EmptyExpr!9585) lt!1056953))))

(declare-fun lt!1056998 () Bool)

(declare-fun e!1941908 () Bool)

(assert (=> d!861556 (= lt!1056998 e!1941908)))

(declare-fun c!520037 () Bool)

(assert (=> d!861556 (= c!520037 (isEmpty!19672 s!11993))))

(assert (=> d!861556 (validRegex!4318 lt!1056953)))

(assert (=> d!861556 (= (matchR!4467 lt!1056953 s!11993) lt!1056998)))

(declare-fun b!3108347 () Bool)

(declare-fun res!1272724 () Bool)

(declare-fun e!1941909 () Bool)

(assert (=> b!3108347 (=> res!1272724 e!1941909)))

(assert (=> b!3108347 (= res!1272724 e!1941907)))

(declare-fun res!1272722 () Bool)

(assert (=> b!3108347 (=> (not res!1272722) (not e!1941907))))

(assert (=> b!3108347 (= res!1272722 lt!1056998)))

(declare-fun b!3108348 () Bool)

(declare-fun res!1272719 () Bool)

(assert (=> b!3108348 (=> (not res!1272719) (not e!1941907))))

(declare-fun call!219823 () Bool)

(assert (=> b!3108348 (= res!1272719 (not call!219823))))

(declare-fun b!3108349 () Bool)

(declare-fun res!1272721 () Bool)

(declare-fun e!1941906 () Bool)

(assert (=> b!3108349 (=> res!1272721 e!1941906)))

(assert (=> b!3108349 (= res!1272721 (not (isEmpty!19672 (tail!5106 s!11993))))))

(declare-fun b!3108350 () Bool)

(declare-fun e!1941904 () Bool)

(assert (=> b!3108350 (= e!1941904 (not lt!1056998))))

(declare-fun b!3108351 () Bool)

(assert (=> b!3108351 (= e!1941903 (= lt!1056998 call!219823))))

(declare-fun b!3108352 () Bool)

(declare-fun e!1941905 () Bool)

(assert (=> b!3108352 (= e!1941909 e!1941905)))

(declare-fun res!1272723 () Bool)

(assert (=> b!3108352 (=> (not res!1272723) (not e!1941905))))

(assert (=> b!3108352 (= res!1272723 (not lt!1056998))))

(declare-fun b!3108353 () Bool)

(declare-fun res!1272718 () Bool)

(assert (=> b!3108353 (=> (not res!1272718) (not e!1941907))))

(assert (=> b!3108353 (= res!1272718 (isEmpty!19672 (tail!5106 s!11993)))))

(declare-fun b!3108354 () Bool)

(assert (=> b!3108354 (= e!1941905 e!1941906)))

(declare-fun res!1272720 () Bool)

(assert (=> b!3108354 (=> res!1272720 e!1941906)))

(assert (=> b!3108354 (= res!1272720 call!219823)))

(declare-fun b!3108355 () Bool)

(declare-fun res!1272717 () Bool)

(assert (=> b!3108355 (=> res!1272717 e!1941909)))

(assert (=> b!3108355 (= res!1272717 (not ((_ is ElementMatch!9585) lt!1056953)))))

(assert (=> b!3108355 (= e!1941904 e!1941909)))

(declare-fun b!3108356 () Bool)

(assert (=> b!3108356 (= e!1941908 (nullable!3226 lt!1056953))))

(declare-fun bm!219818 () Bool)

(assert (=> bm!219818 (= call!219823 (isEmpty!19672 s!11993))))

(declare-fun b!3108357 () Bool)

(assert (=> b!3108357 (= e!1941903 e!1941904)))

(declare-fun c!520035 () Bool)

(assert (=> b!3108357 (= c!520035 ((_ is EmptyLang!9585) lt!1056953))))

(declare-fun b!3108358 () Bool)

(assert (=> b!3108358 (= e!1941906 (not (= (head!6880 s!11993) (c!519929 lt!1056953))))))

(declare-fun b!3108359 () Bool)

(assert (=> b!3108359 (= e!1941908 (matchR!4467 (derivativeStep!2821 lt!1056953 (head!6880 s!11993)) (tail!5106 s!11993)))))

(assert (= (and d!861556 c!520037) b!3108356))

(assert (= (and d!861556 (not c!520037)) b!3108359))

(assert (= (and d!861556 c!520036) b!3108351))

(assert (= (and d!861556 (not c!520036)) b!3108357))

(assert (= (and b!3108357 c!520035) b!3108350))

(assert (= (and b!3108357 (not c!520035)) b!3108355))

(assert (= (and b!3108355 (not res!1272717)) b!3108347))

(assert (= (and b!3108347 res!1272722) b!3108348))

(assert (= (and b!3108348 res!1272719) b!3108353))

(assert (= (and b!3108353 res!1272718) b!3108346))

(assert (= (and b!3108347 (not res!1272724)) b!3108352))

(assert (= (and b!3108352 res!1272723) b!3108354))

(assert (= (and b!3108354 (not res!1272720)) b!3108349))

(assert (= (and b!3108349 (not res!1272721)) b!3108358))

(assert (= (or b!3108351 b!3108348 b!3108354) bm!219818))

(assert (=> b!3108358 m!3403695))

(assert (=> d!861556 m!3403687))

(declare-fun m!3403731 () Bool)

(assert (=> d!861556 m!3403731))

(assert (=> b!3108353 m!3403697))

(assert (=> b!3108353 m!3403697))

(assert (=> b!3108353 m!3403699))

(assert (=> bm!219818 m!3403687))

(assert (=> b!3108359 m!3403695))

(assert (=> b!3108359 m!3403695))

(declare-fun m!3403733 () Bool)

(assert (=> b!3108359 m!3403733))

(assert (=> b!3108359 m!3403697))

(assert (=> b!3108359 m!3403733))

(assert (=> b!3108359 m!3403697))

(declare-fun m!3403735 () Bool)

(assert (=> b!3108359 m!3403735))

(assert (=> b!3108349 m!3403697))

(assert (=> b!3108349 m!3403697))

(assert (=> b!3108349 m!3403699))

(assert (=> b!3108346 m!3403695))

(declare-fun m!3403737 () Bool)

(assert (=> b!3108356 m!3403737))

(assert (=> b!3107974 d!861556))

(declare-fun d!861558 () Bool)

(declare-fun e!1941915 () Bool)

(assert (=> d!861558 e!1941915))

(declare-fun res!1272730 () Bool)

(assert (=> d!861558 (=> res!1272730 e!1941915)))

(assert (=> d!861558 (= res!1272730 (matchR!4467 lt!1056953 s!11993))))

(declare-fun lt!1057001 () Unit!49609)

(declare-fun choose!18383 (Regex!9585 Regex!9585 List!35450) Unit!49609)

(assert (=> d!861558 (= lt!1057001 (choose!18383 lt!1056953 lt!1056958 s!11993))))

(declare-fun e!1941914 () Bool)

(assert (=> d!861558 e!1941914))

(declare-fun res!1272729 () Bool)

(assert (=> d!861558 (=> (not res!1272729) (not e!1941914))))

(assert (=> d!861558 (= res!1272729 (validRegex!4318 lt!1056953))))

(assert (=> d!861558 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!316 lt!1056953 lt!1056958 s!11993) lt!1057001)))

(declare-fun b!3108364 () Bool)

(assert (=> b!3108364 (= e!1941914 (validRegex!4318 lt!1056958))))

(declare-fun b!3108365 () Bool)

(assert (=> b!3108365 (= e!1941915 (matchR!4467 lt!1056958 s!11993))))

(assert (= (and d!861558 res!1272729) b!3108364))

(assert (= (and d!861558 (not res!1272730)) b!3108365))

(assert (=> d!861558 m!3403583))

(declare-fun m!3403739 () Bool)

(assert (=> d!861558 m!3403739))

(assert (=> d!861558 m!3403731))

(assert (=> b!3108364 m!3403709))

(assert (=> b!3108365 m!3403607))

(assert (=> b!3107974 d!861558))

(declare-fun b!3108366 () Bool)

(declare-fun res!1272735 () Bool)

(declare-fun e!1941916 () Bool)

(assert (=> b!3108366 (=> (not res!1272735) (not e!1941916))))

(declare-fun call!219825 () Bool)

(assert (=> b!3108366 (= res!1272735 call!219825)))

(declare-fun e!1941922 () Bool)

(assert (=> b!3108366 (= e!1941922 e!1941916)))

(declare-fun b!3108367 () Bool)

(declare-fun e!1941920 () Bool)

(assert (=> b!3108367 (= e!1941920 e!1941922)))

(declare-fun c!520039 () Bool)

(assert (=> b!3108367 (= c!520039 ((_ is Union!9585) r!17423))))

(declare-fun b!3108368 () Bool)

(declare-fun call!219826 () Bool)

(assert (=> b!3108368 (= e!1941916 call!219826)))

(declare-fun b!3108369 () Bool)

(declare-fun e!1941919 () Bool)

(assert (=> b!3108369 (= e!1941919 e!1941920)))

(declare-fun c!520038 () Bool)

(assert (=> b!3108369 (= c!520038 ((_ is Star!9585) r!17423))))

(declare-fun b!3108370 () Bool)

(declare-fun e!1941917 () Bool)

(declare-fun call!219824 () Bool)

(assert (=> b!3108370 (= e!1941917 call!219824)))

(declare-fun b!3108371 () Bool)

(declare-fun e!1941921 () Bool)

(assert (=> b!3108371 (= e!1941921 call!219825)))

(declare-fun b!3108372 () Bool)

(declare-fun res!1272734 () Bool)

(declare-fun e!1941918 () Bool)

(assert (=> b!3108372 (=> res!1272734 e!1941918)))

(assert (=> b!3108372 (= res!1272734 (not ((_ is Concat!14906) r!17423)))))

(assert (=> b!3108372 (= e!1941922 e!1941918)))

(declare-fun b!3108373 () Bool)

(assert (=> b!3108373 (= e!1941920 e!1941917)))

(declare-fun res!1272733 () Bool)

(assert (=> b!3108373 (= res!1272733 (not (nullable!3226 (reg!9914 r!17423))))))

(assert (=> b!3108373 (=> (not res!1272733) (not e!1941917))))

(declare-fun d!861560 () Bool)

(declare-fun res!1272732 () Bool)

(assert (=> d!861560 (=> res!1272732 e!1941919)))

(assert (=> d!861560 (= res!1272732 ((_ is ElementMatch!9585) r!17423))))

(assert (=> d!861560 (= (validRegex!4318 r!17423) e!1941919)))

(declare-fun bm!219819 () Bool)

(assert (=> bm!219819 (= call!219825 call!219824)))

(declare-fun bm!219820 () Bool)

(assert (=> bm!219820 (= call!219824 (validRegex!4318 (ite c!520038 (reg!9914 r!17423) (ite c!520039 (regOne!19683 r!17423) (regTwo!19682 r!17423)))))))

(declare-fun bm!219821 () Bool)

(assert (=> bm!219821 (= call!219826 (validRegex!4318 (ite c!520039 (regTwo!19683 r!17423) (regOne!19682 r!17423))))))

(declare-fun b!3108374 () Bool)

(assert (=> b!3108374 (= e!1941918 e!1941921)))

(declare-fun res!1272731 () Bool)

(assert (=> b!3108374 (=> (not res!1272731) (not e!1941921))))

(assert (=> b!3108374 (= res!1272731 call!219826)))

(assert (= (and d!861560 (not res!1272732)) b!3108369))

(assert (= (and b!3108369 c!520038) b!3108373))

(assert (= (and b!3108369 (not c!520038)) b!3108367))

(assert (= (and b!3108373 res!1272733) b!3108370))

(assert (= (and b!3108367 c!520039) b!3108366))

(assert (= (and b!3108367 (not c!520039)) b!3108372))

(assert (= (and b!3108366 res!1272735) b!3108368))

(assert (= (and b!3108372 (not res!1272734)) b!3108374))

(assert (= (and b!3108374 res!1272731) b!3108371))

(assert (= (or b!3108366 b!3108371) bm!219819))

(assert (= (or b!3108368 b!3108374) bm!219821))

(assert (= (or b!3108370 bm!219819) bm!219820))

(declare-fun m!3403741 () Bool)

(assert (=> b!3108373 m!3403741))

(declare-fun m!3403743 () Bool)

(assert (=> bm!219820 m!3403743))

(declare-fun m!3403745 () Bool)

(assert (=> bm!219821 m!3403745))

(assert (=> start!294580 d!861560))

(declare-fun d!861562 () Bool)

(assert (=> d!861562 (= (isEmptyLang!636 lt!1056953) ((_ is EmptyLang!9585) lt!1056953))))

(assert (=> b!3107977 d!861562))

(declare-fun b!3108425 () Bool)

(declare-fun e!1941958 () Bool)

(declare-fun call!219842 () Bool)

(assert (=> b!3108425 (= e!1941958 call!219842)))

(declare-fun b!3108426 () Bool)

(declare-fun c!520070 () Bool)

(declare-fun e!1941954 () Bool)

(assert (=> b!3108426 (= c!520070 e!1941954)))

(declare-fun res!1272743 () Bool)

(assert (=> b!3108426 (=> res!1272743 e!1941954)))

(declare-fun call!219841 () Bool)

(assert (=> b!3108426 (= res!1272743 call!219841)))

(declare-fun lt!1057015 () Regex!9585)

(declare-fun call!219846 () Regex!9585)

(assert (=> b!3108426 (= lt!1057015 call!219846)))

(declare-fun e!1941956 () Regex!9585)

(declare-fun e!1941960 () Regex!9585)

(assert (=> b!3108426 (= e!1941956 e!1941960)))

(declare-fun b!3108427 () Bool)

(declare-fun e!1941964 () Regex!9585)

(declare-fun lt!1057018 () Regex!9585)

(declare-fun lt!1057019 () Regex!9585)

(assert (=> b!3108427 (= e!1941964 (Union!9585 lt!1057018 lt!1057019))))

(declare-fun b!3108428 () Bool)

(declare-fun e!1941961 () Regex!9585)

(declare-fun lt!1057017 () Regex!9585)

(declare-fun lt!1057014 () Regex!9585)

(assert (=> b!3108428 (= e!1941961 (Concat!14906 lt!1057017 lt!1057014))))

(declare-fun b!3108429 () Bool)

(declare-fun call!219844 () Bool)

(assert (=> b!3108429 (= e!1941954 call!219844)))

(declare-fun b!3108430 () Bool)

(declare-fun e!1941952 () Regex!9585)

(declare-fun e!1941953 () Regex!9585)

(assert (=> b!3108430 (= e!1941952 e!1941953)))

(declare-fun call!219843 () Regex!9585)

(assert (=> b!3108430 (= lt!1057017 call!219843)))

(declare-fun call!219845 () Regex!9585)

(assert (=> b!3108430 (= lt!1057014 call!219845)))

(declare-fun res!1272742 () Bool)

(declare-fun call!219847 () Bool)

(assert (=> b!3108430 (= res!1272742 call!219847)))

(assert (=> b!3108430 (=> res!1272742 e!1941958)))

(declare-fun c!520072 () Bool)

(assert (=> b!3108430 (= c!520072 e!1941958)))

(declare-fun b!3108431 () Bool)

(declare-fun e!1941955 () Regex!9585)

(assert (=> b!3108431 (= e!1941955 lt!1057019)))

(declare-fun b!3108432 () Bool)

(assert (=> b!3108432 (= e!1941964 lt!1057018)))

(declare-fun bm!219837 () Bool)

(assert (=> bm!219837 (= call!219842 call!219841)))

(declare-fun b!3108433 () Bool)

(declare-fun e!1941951 () Regex!9585)

(assert (=> b!3108433 (= e!1941951 e!1941961)))

(declare-fun c!520063 () Bool)

(assert (=> b!3108433 (= c!520063 call!219844)))

(declare-fun b!3108434 () Bool)

(assert (=> b!3108434 (= e!1941960 (Star!9585 lt!1057015))))

(declare-fun bm!219838 () Bool)

(assert (=> bm!219838 (= call!219843 call!219846)))

(declare-fun b!3108435 () Bool)

(declare-fun c!520068 () Bool)

(assert (=> b!3108435 (= c!520068 call!219847)))

(assert (=> b!3108435 (= e!1941955 e!1941964)))

(declare-fun b!3108436 () Bool)

(declare-fun e!1941957 () Regex!9585)

(assert (=> b!3108436 (= e!1941957 e!1941956)))

(declare-fun c!520069 () Bool)

(assert (=> b!3108436 (= c!520069 ((_ is Star!9585) (regTwo!19683 r!17423)))))

(declare-fun b!3108437 () Bool)

(assert (=> b!3108437 (= e!1941961 lt!1057017)))

(declare-fun b!3108438 () Bool)

(assert (=> b!3108438 (= e!1941951 lt!1057014)))

(declare-fun bm!219836 () Bool)

(declare-fun c!520062 () Bool)

(assert (=> bm!219836 (= call!219847 (isEmptyLang!636 (ite c!520062 lt!1057019 lt!1057017)))))

(declare-fun d!861564 () Bool)

(declare-fun e!1941959 () Bool)

(assert (=> d!861564 e!1941959))

(declare-fun res!1272744 () Bool)

(assert (=> d!861564 (=> (not res!1272744) (not e!1941959))))

(declare-fun lt!1057016 () Regex!9585)

(assert (=> d!861564 (= res!1272744 (validRegex!4318 lt!1057016))))

(declare-fun e!1941962 () Regex!9585)

(assert (=> d!861564 (= lt!1057016 e!1941962)))

(declare-fun c!520066 () Bool)

(assert (=> d!861564 (= c!520066 ((_ is EmptyLang!9585) (regTwo!19683 r!17423)))))

(assert (=> d!861564 (validRegex!4318 (regTwo!19683 r!17423))))

(assert (=> d!861564 (= (simplify!540 (regTwo!19683 r!17423)) lt!1057016)))

(declare-fun b!3108439 () Bool)

(assert (=> b!3108439 (= c!520062 ((_ is Union!9585) (regTwo!19683 r!17423)))))

(assert (=> b!3108439 (= e!1941956 e!1941952)))

(declare-fun bm!219839 () Bool)

(declare-fun isEmptyExpr!637 (Regex!9585) Bool)

(assert (=> bm!219839 (= call!219844 (isEmptyExpr!637 (ite c!520069 lt!1057015 lt!1057014)))))

(declare-fun b!3108440 () Bool)

(declare-fun c!520064 () Bool)

(assert (=> b!3108440 (= c!520064 (isEmptyExpr!637 lt!1057017))))

(assert (=> b!3108440 (= e!1941953 e!1941951)))

(declare-fun bm!219840 () Bool)

(assert (=> bm!219840 (= call!219841 (isEmptyLang!636 (ite c!520069 lt!1057015 (ite c!520062 lt!1057018 lt!1057014))))))

(declare-fun b!3108441 () Bool)

(assert (=> b!3108441 (= e!1941960 EmptyExpr!9585)))

(declare-fun bm!219841 () Bool)

(assert (=> bm!219841 (= call!219846 (simplify!540 (ite c!520069 (reg!9914 (regTwo!19683 r!17423)) (ite c!520062 (regTwo!19683 (regTwo!19683 r!17423)) (regOne!19682 (regTwo!19683 r!17423))))))))

(declare-fun b!3108442 () Bool)

(assert (=> b!3108442 (= e!1941959 (= (nullable!3226 lt!1057016) (nullable!3226 (regTwo!19683 r!17423))))))

(declare-fun bm!219842 () Bool)

(assert (=> bm!219842 (= call!219845 (simplify!540 (ite c!520062 (regOne!19683 (regTwo!19683 r!17423)) (regTwo!19682 (regTwo!19683 r!17423)))))))

(declare-fun b!3108443 () Bool)

(assert (=> b!3108443 (= e!1941962 EmptyLang!9585)))

(declare-fun b!3108444 () Bool)

(declare-fun c!520067 () Bool)

(assert (=> b!3108444 (= c!520067 ((_ is EmptyExpr!9585) (regTwo!19683 r!17423)))))

(declare-fun e!1941963 () Regex!9585)

(assert (=> b!3108444 (= e!1941963 e!1941957)))

(declare-fun b!3108445 () Bool)

(assert (=> b!3108445 (= e!1941957 EmptyExpr!9585)))

(declare-fun b!3108446 () Bool)

(assert (=> b!3108446 (= e!1941953 EmptyLang!9585)))

(declare-fun b!3108447 () Bool)

(assert (=> b!3108447 (= e!1941952 e!1941955)))

(assert (=> b!3108447 (= lt!1057018 call!219845)))

(assert (=> b!3108447 (= lt!1057019 call!219843)))

(declare-fun c!520065 () Bool)

(assert (=> b!3108447 (= c!520065 call!219842)))

(declare-fun b!3108448 () Bool)

(assert (=> b!3108448 (= e!1941963 (regTwo!19683 r!17423))))

(declare-fun b!3108449 () Bool)

(assert (=> b!3108449 (= e!1941962 e!1941963)))

(declare-fun c!520071 () Bool)

(assert (=> b!3108449 (= c!520071 ((_ is ElementMatch!9585) (regTwo!19683 r!17423)))))

(assert (= (and d!861564 c!520066) b!3108443))

(assert (= (and d!861564 (not c!520066)) b!3108449))

(assert (= (and b!3108449 c!520071) b!3108448))

(assert (= (and b!3108449 (not c!520071)) b!3108444))

(assert (= (and b!3108444 c!520067) b!3108445))

(assert (= (and b!3108444 (not c!520067)) b!3108436))

(assert (= (and b!3108436 c!520069) b!3108426))

(assert (= (and b!3108436 (not c!520069)) b!3108439))

(assert (= (and b!3108426 (not res!1272743)) b!3108429))

(assert (= (and b!3108426 c!520070) b!3108441))

(assert (= (and b!3108426 (not c!520070)) b!3108434))

(assert (= (and b!3108439 c!520062) b!3108447))

(assert (= (and b!3108439 (not c!520062)) b!3108430))

(assert (= (and b!3108447 c!520065) b!3108431))

(assert (= (and b!3108447 (not c!520065)) b!3108435))

(assert (= (and b!3108435 c!520068) b!3108432))

(assert (= (and b!3108435 (not c!520068)) b!3108427))

(assert (= (and b!3108430 (not res!1272742)) b!3108425))

(assert (= (and b!3108430 c!520072) b!3108446))

(assert (= (and b!3108430 (not c!520072)) b!3108440))

(assert (= (and b!3108440 c!520064) b!3108438))

(assert (= (and b!3108440 (not c!520064)) b!3108433))

(assert (= (and b!3108433 c!520063) b!3108437))

(assert (= (and b!3108433 (not c!520063)) b!3108428))

(assert (= (or b!3108447 b!3108430) bm!219842))

(assert (= (or b!3108447 b!3108430) bm!219838))

(assert (= (or b!3108435 b!3108430) bm!219836))

(assert (= (or b!3108447 b!3108425) bm!219837))

(assert (= (or b!3108429 b!3108433) bm!219839))

(assert (= (or b!3108426 bm!219838) bm!219841))

(assert (= (or b!3108426 bm!219837) bm!219840))

(assert (= (and d!861564 res!1272744) b!3108442))

(declare-fun m!3403747 () Bool)

(assert (=> b!3108442 m!3403747))

(declare-fun m!3403749 () Bool)

(assert (=> b!3108442 m!3403749))

(declare-fun m!3403751 () Bool)

(assert (=> d!861564 m!3403751))

(declare-fun m!3403753 () Bool)

(assert (=> d!861564 m!3403753))

(declare-fun m!3403755 () Bool)

(assert (=> bm!219840 m!3403755))

(declare-fun m!3403757 () Bool)

(assert (=> b!3108440 m!3403757))

(declare-fun m!3403759 () Bool)

(assert (=> bm!219841 m!3403759))

(declare-fun m!3403761 () Bool)

(assert (=> bm!219839 m!3403761))

(declare-fun m!3403763 () Bool)

(assert (=> bm!219842 m!3403763))

(declare-fun m!3403765 () Bool)

(assert (=> bm!219836 m!3403765))

(assert (=> b!3107977 d!861564))

(declare-fun b!3108450 () Bool)

(declare-fun e!1941972 () Bool)

(declare-fun call!219849 () Bool)

(assert (=> b!3108450 (= e!1941972 call!219849)))

(declare-fun b!3108451 () Bool)

(declare-fun c!520081 () Bool)

(declare-fun e!1941968 () Bool)

(assert (=> b!3108451 (= c!520081 e!1941968)))

(declare-fun res!1272746 () Bool)

(assert (=> b!3108451 (=> res!1272746 e!1941968)))

(declare-fun call!219848 () Bool)

(assert (=> b!3108451 (= res!1272746 call!219848)))

(declare-fun lt!1057021 () Regex!9585)

(declare-fun call!219853 () Regex!9585)

(assert (=> b!3108451 (= lt!1057021 call!219853)))

(declare-fun e!1941970 () Regex!9585)

(declare-fun e!1941974 () Regex!9585)

(assert (=> b!3108451 (= e!1941970 e!1941974)))

(declare-fun b!3108452 () Bool)

(declare-fun e!1941978 () Regex!9585)

(declare-fun lt!1057024 () Regex!9585)

(declare-fun lt!1057025 () Regex!9585)

(assert (=> b!3108452 (= e!1941978 (Union!9585 lt!1057024 lt!1057025))))

(declare-fun b!3108453 () Bool)

(declare-fun e!1941975 () Regex!9585)

(declare-fun lt!1057023 () Regex!9585)

(declare-fun lt!1057020 () Regex!9585)

(assert (=> b!3108453 (= e!1941975 (Concat!14906 lt!1057023 lt!1057020))))

(declare-fun b!3108454 () Bool)

(declare-fun call!219851 () Bool)

(assert (=> b!3108454 (= e!1941968 call!219851)))

(declare-fun b!3108455 () Bool)

(declare-fun e!1941966 () Regex!9585)

(declare-fun e!1941967 () Regex!9585)

(assert (=> b!3108455 (= e!1941966 e!1941967)))

(declare-fun call!219850 () Regex!9585)

(assert (=> b!3108455 (= lt!1057023 call!219850)))

(declare-fun call!219852 () Regex!9585)

(assert (=> b!3108455 (= lt!1057020 call!219852)))

(declare-fun res!1272745 () Bool)

(declare-fun call!219854 () Bool)

(assert (=> b!3108455 (= res!1272745 call!219854)))

(assert (=> b!3108455 (=> res!1272745 e!1941972)))

(declare-fun c!520083 () Bool)

(assert (=> b!3108455 (= c!520083 e!1941972)))

(declare-fun b!3108456 () Bool)

(declare-fun e!1941969 () Regex!9585)

(assert (=> b!3108456 (= e!1941969 lt!1057025)))

(declare-fun b!3108457 () Bool)

(assert (=> b!3108457 (= e!1941978 lt!1057024)))

(declare-fun bm!219844 () Bool)

(assert (=> bm!219844 (= call!219849 call!219848)))

(declare-fun b!3108458 () Bool)

(declare-fun e!1941965 () Regex!9585)

(assert (=> b!3108458 (= e!1941965 e!1941975)))

(declare-fun c!520074 () Bool)

(assert (=> b!3108458 (= c!520074 call!219851)))

(declare-fun b!3108459 () Bool)

(assert (=> b!3108459 (= e!1941974 (Star!9585 lt!1057021))))

(declare-fun bm!219845 () Bool)

(assert (=> bm!219845 (= call!219850 call!219853)))

(declare-fun b!3108460 () Bool)

(declare-fun c!520079 () Bool)

(assert (=> b!3108460 (= c!520079 call!219854)))

(assert (=> b!3108460 (= e!1941969 e!1941978)))

(declare-fun b!3108461 () Bool)

(declare-fun e!1941971 () Regex!9585)

(assert (=> b!3108461 (= e!1941971 e!1941970)))

(declare-fun c!520080 () Bool)

(assert (=> b!3108461 (= c!520080 ((_ is Star!9585) (regOne!19683 r!17423)))))

(declare-fun b!3108462 () Bool)

(assert (=> b!3108462 (= e!1941975 lt!1057023)))

(declare-fun b!3108463 () Bool)

(assert (=> b!3108463 (= e!1941965 lt!1057020)))

(declare-fun bm!219843 () Bool)

(declare-fun c!520073 () Bool)

(assert (=> bm!219843 (= call!219854 (isEmptyLang!636 (ite c!520073 lt!1057025 lt!1057023)))))

(declare-fun d!861566 () Bool)

(declare-fun e!1941973 () Bool)

(assert (=> d!861566 e!1941973))

(declare-fun res!1272747 () Bool)

(assert (=> d!861566 (=> (not res!1272747) (not e!1941973))))

(declare-fun lt!1057022 () Regex!9585)

(assert (=> d!861566 (= res!1272747 (validRegex!4318 lt!1057022))))

(declare-fun e!1941976 () Regex!9585)

(assert (=> d!861566 (= lt!1057022 e!1941976)))

(declare-fun c!520077 () Bool)

(assert (=> d!861566 (= c!520077 ((_ is EmptyLang!9585) (regOne!19683 r!17423)))))

(assert (=> d!861566 (validRegex!4318 (regOne!19683 r!17423))))

(assert (=> d!861566 (= (simplify!540 (regOne!19683 r!17423)) lt!1057022)))

(declare-fun b!3108464 () Bool)

(assert (=> b!3108464 (= c!520073 ((_ is Union!9585) (regOne!19683 r!17423)))))

(assert (=> b!3108464 (= e!1941970 e!1941966)))

(declare-fun bm!219846 () Bool)

(assert (=> bm!219846 (= call!219851 (isEmptyExpr!637 (ite c!520080 lt!1057021 lt!1057020)))))

(declare-fun b!3108465 () Bool)

(declare-fun c!520075 () Bool)

(assert (=> b!3108465 (= c!520075 (isEmptyExpr!637 lt!1057023))))

(assert (=> b!3108465 (= e!1941967 e!1941965)))

(declare-fun bm!219847 () Bool)

(assert (=> bm!219847 (= call!219848 (isEmptyLang!636 (ite c!520080 lt!1057021 (ite c!520073 lt!1057024 lt!1057020))))))

(declare-fun b!3108466 () Bool)

(assert (=> b!3108466 (= e!1941974 EmptyExpr!9585)))

(declare-fun bm!219848 () Bool)

(assert (=> bm!219848 (= call!219853 (simplify!540 (ite c!520080 (reg!9914 (regOne!19683 r!17423)) (ite c!520073 (regTwo!19683 (regOne!19683 r!17423)) (regOne!19682 (regOne!19683 r!17423))))))))

(declare-fun b!3108467 () Bool)

(assert (=> b!3108467 (= e!1941973 (= (nullable!3226 lt!1057022) (nullable!3226 (regOne!19683 r!17423))))))

(declare-fun bm!219849 () Bool)

(assert (=> bm!219849 (= call!219852 (simplify!540 (ite c!520073 (regOne!19683 (regOne!19683 r!17423)) (regTwo!19682 (regOne!19683 r!17423)))))))

(declare-fun b!3108468 () Bool)

(assert (=> b!3108468 (= e!1941976 EmptyLang!9585)))

(declare-fun b!3108469 () Bool)

(declare-fun c!520078 () Bool)

(assert (=> b!3108469 (= c!520078 ((_ is EmptyExpr!9585) (regOne!19683 r!17423)))))

(declare-fun e!1941977 () Regex!9585)

(assert (=> b!3108469 (= e!1941977 e!1941971)))

(declare-fun b!3108470 () Bool)

(assert (=> b!3108470 (= e!1941971 EmptyExpr!9585)))

(declare-fun b!3108471 () Bool)

(assert (=> b!3108471 (= e!1941967 EmptyLang!9585)))

(declare-fun b!3108472 () Bool)

(assert (=> b!3108472 (= e!1941966 e!1941969)))

(assert (=> b!3108472 (= lt!1057024 call!219852)))

(assert (=> b!3108472 (= lt!1057025 call!219850)))

(declare-fun c!520076 () Bool)

(assert (=> b!3108472 (= c!520076 call!219849)))

(declare-fun b!3108473 () Bool)

(assert (=> b!3108473 (= e!1941977 (regOne!19683 r!17423))))

(declare-fun b!3108474 () Bool)

(assert (=> b!3108474 (= e!1941976 e!1941977)))

(declare-fun c!520082 () Bool)

(assert (=> b!3108474 (= c!520082 ((_ is ElementMatch!9585) (regOne!19683 r!17423)))))

(assert (= (and d!861566 c!520077) b!3108468))

(assert (= (and d!861566 (not c!520077)) b!3108474))

(assert (= (and b!3108474 c!520082) b!3108473))

(assert (= (and b!3108474 (not c!520082)) b!3108469))

(assert (= (and b!3108469 c!520078) b!3108470))

(assert (= (and b!3108469 (not c!520078)) b!3108461))

(assert (= (and b!3108461 c!520080) b!3108451))

(assert (= (and b!3108461 (not c!520080)) b!3108464))

(assert (= (and b!3108451 (not res!1272746)) b!3108454))

(assert (= (and b!3108451 c!520081) b!3108466))

(assert (= (and b!3108451 (not c!520081)) b!3108459))

(assert (= (and b!3108464 c!520073) b!3108472))

(assert (= (and b!3108464 (not c!520073)) b!3108455))

(assert (= (and b!3108472 c!520076) b!3108456))

(assert (= (and b!3108472 (not c!520076)) b!3108460))

(assert (= (and b!3108460 c!520079) b!3108457))

(assert (= (and b!3108460 (not c!520079)) b!3108452))

(assert (= (and b!3108455 (not res!1272745)) b!3108450))

(assert (= (and b!3108455 c!520083) b!3108471))

(assert (= (and b!3108455 (not c!520083)) b!3108465))

(assert (= (and b!3108465 c!520075) b!3108463))

(assert (= (and b!3108465 (not c!520075)) b!3108458))

(assert (= (and b!3108458 c!520074) b!3108462))

(assert (= (and b!3108458 (not c!520074)) b!3108453))

(assert (= (or b!3108472 b!3108455) bm!219849))

(assert (= (or b!3108472 b!3108455) bm!219845))

(assert (= (or b!3108460 b!3108455) bm!219843))

(assert (= (or b!3108472 b!3108450) bm!219844))

(assert (= (or b!3108454 b!3108458) bm!219846))

(assert (= (or b!3108451 bm!219845) bm!219848))

(assert (= (or b!3108451 bm!219844) bm!219847))

(assert (= (and d!861566 res!1272747) b!3108467))

(declare-fun m!3403767 () Bool)

(assert (=> b!3108467 m!3403767))

(declare-fun m!3403769 () Bool)

(assert (=> b!3108467 m!3403769))

(declare-fun m!3403771 () Bool)

(assert (=> d!861566 m!3403771))

(assert (=> d!861566 m!3403593))

(declare-fun m!3403773 () Bool)

(assert (=> bm!219847 m!3403773))

(declare-fun m!3403775 () Bool)

(assert (=> b!3108465 m!3403775))

(declare-fun m!3403777 () Bool)

(assert (=> bm!219848 m!3403777))

(declare-fun m!3403779 () Bool)

(assert (=> bm!219846 m!3403779))

(declare-fun m!3403781 () Bool)

(assert (=> bm!219849 m!3403781))

(declare-fun m!3403783 () Bool)

(assert (=> bm!219843 m!3403783))

(assert (=> b!3107977 d!861566))

(declare-fun d!861568 () Bool)

(assert (=> d!861568 (= (isEmptyLang!636 lt!1056958) ((_ is EmptyLang!9585) lt!1056958))))

(assert (=> b!3107981 d!861568))

(declare-fun e!1941981 () Bool)

(assert (=> b!3107980 (= tp!975924 e!1941981)))

(declare-fun b!3108487 () Bool)

(declare-fun tp!975937 () Bool)

(assert (=> b!3108487 (= e!1941981 tp!975937)))

(declare-fun b!3108488 () Bool)

(declare-fun tp!975936 () Bool)

(declare-fun tp!975940 () Bool)

(assert (=> b!3108488 (= e!1941981 (and tp!975936 tp!975940))))

(declare-fun b!3108485 () Bool)

(assert (=> b!3108485 (= e!1941981 tp_is_empty!16733)))

(declare-fun b!3108486 () Bool)

(declare-fun tp!975939 () Bool)

(declare-fun tp!975938 () Bool)

(assert (=> b!3108486 (= e!1941981 (and tp!975939 tp!975938))))

(assert (= (and b!3107980 ((_ is ElementMatch!9585) (reg!9914 r!17423))) b!3108485))

(assert (= (and b!3107980 ((_ is Concat!14906) (reg!9914 r!17423))) b!3108486))

(assert (= (and b!3107980 ((_ is Star!9585) (reg!9914 r!17423))) b!3108487))

(assert (= (and b!3107980 ((_ is Union!9585) (reg!9914 r!17423))) b!3108488))

(declare-fun e!1941982 () Bool)

(assert (=> b!3107972 (= tp!975922 e!1941982)))

(declare-fun b!3108491 () Bool)

(declare-fun tp!975942 () Bool)

(assert (=> b!3108491 (= e!1941982 tp!975942)))

(declare-fun b!3108492 () Bool)

(declare-fun tp!975941 () Bool)

(declare-fun tp!975945 () Bool)

(assert (=> b!3108492 (= e!1941982 (and tp!975941 tp!975945))))

(declare-fun b!3108489 () Bool)

(assert (=> b!3108489 (= e!1941982 tp_is_empty!16733)))

(declare-fun b!3108490 () Bool)

(declare-fun tp!975944 () Bool)

(declare-fun tp!975943 () Bool)

(assert (=> b!3108490 (= e!1941982 (and tp!975944 tp!975943))))

(assert (= (and b!3107972 ((_ is ElementMatch!9585) (regOne!19683 r!17423))) b!3108489))

(assert (= (and b!3107972 ((_ is Concat!14906) (regOne!19683 r!17423))) b!3108490))

(assert (= (and b!3107972 ((_ is Star!9585) (regOne!19683 r!17423))) b!3108491))

(assert (= (and b!3107972 ((_ is Union!9585) (regOne!19683 r!17423))) b!3108492))

(declare-fun e!1941983 () Bool)

(assert (=> b!3107972 (= tp!975921 e!1941983)))

(declare-fun b!3108495 () Bool)

(declare-fun tp!975947 () Bool)

(assert (=> b!3108495 (= e!1941983 tp!975947)))

(declare-fun b!3108496 () Bool)

(declare-fun tp!975946 () Bool)

(declare-fun tp!975950 () Bool)

(assert (=> b!3108496 (= e!1941983 (and tp!975946 tp!975950))))

(declare-fun b!3108493 () Bool)

(assert (=> b!3108493 (= e!1941983 tp_is_empty!16733)))

(declare-fun b!3108494 () Bool)

(declare-fun tp!975949 () Bool)

(declare-fun tp!975948 () Bool)

(assert (=> b!3108494 (= e!1941983 (and tp!975949 tp!975948))))

(assert (= (and b!3107972 ((_ is ElementMatch!9585) (regTwo!19683 r!17423))) b!3108493))

(assert (= (and b!3107972 ((_ is Concat!14906) (regTwo!19683 r!17423))) b!3108494))

(assert (= (and b!3107972 ((_ is Star!9585) (regTwo!19683 r!17423))) b!3108495))

(assert (= (and b!3107972 ((_ is Union!9585) (regTwo!19683 r!17423))) b!3108496))

(declare-fun e!1941984 () Bool)

(assert (=> b!3107978 (= tp!975923 e!1941984)))

(declare-fun b!3108499 () Bool)

(declare-fun tp!975952 () Bool)

(assert (=> b!3108499 (= e!1941984 tp!975952)))

(declare-fun b!3108500 () Bool)

(declare-fun tp!975951 () Bool)

(declare-fun tp!975955 () Bool)

(assert (=> b!3108500 (= e!1941984 (and tp!975951 tp!975955))))

(declare-fun b!3108497 () Bool)

(assert (=> b!3108497 (= e!1941984 tp_is_empty!16733)))

(declare-fun b!3108498 () Bool)

(declare-fun tp!975954 () Bool)

(declare-fun tp!975953 () Bool)

(assert (=> b!3108498 (= e!1941984 (and tp!975954 tp!975953))))

(assert (= (and b!3107978 ((_ is ElementMatch!9585) (regOne!19682 r!17423))) b!3108497))

(assert (= (and b!3107978 ((_ is Concat!14906) (regOne!19682 r!17423))) b!3108498))

(assert (= (and b!3107978 ((_ is Star!9585) (regOne!19682 r!17423))) b!3108499))

(assert (= (and b!3107978 ((_ is Union!9585) (regOne!19682 r!17423))) b!3108500))

(declare-fun e!1941985 () Bool)

(assert (=> b!3107978 (= tp!975925 e!1941985)))

(declare-fun b!3108503 () Bool)

(declare-fun tp!975957 () Bool)

(assert (=> b!3108503 (= e!1941985 tp!975957)))

(declare-fun b!3108504 () Bool)

(declare-fun tp!975956 () Bool)

(declare-fun tp!975960 () Bool)

(assert (=> b!3108504 (= e!1941985 (and tp!975956 tp!975960))))

(declare-fun b!3108501 () Bool)

(assert (=> b!3108501 (= e!1941985 tp_is_empty!16733)))

(declare-fun b!3108502 () Bool)

(declare-fun tp!975959 () Bool)

(declare-fun tp!975958 () Bool)

(assert (=> b!3108502 (= e!1941985 (and tp!975959 tp!975958))))

(assert (= (and b!3107978 ((_ is ElementMatch!9585) (regTwo!19682 r!17423))) b!3108501))

(assert (= (and b!3107978 ((_ is Concat!14906) (regTwo!19682 r!17423))) b!3108502))

(assert (= (and b!3107978 ((_ is Star!9585) (regTwo!19682 r!17423))) b!3108503))

(assert (= (and b!3107978 ((_ is Union!9585) (regTwo!19682 r!17423))) b!3108504))

(declare-fun b!3108509 () Bool)

(declare-fun e!1941988 () Bool)

(declare-fun tp!975963 () Bool)

(assert (=> b!3108509 (= e!1941988 (and tp_is_empty!16733 tp!975963))))

(assert (=> b!3107971 (= tp!975920 e!1941988)))

(assert (= (and b!3107971 ((_ is Cons!35326) (t!234515 s!11993))) b!3108509))

(check-sat (not b!3108487) (not b!3108504) (not d!861564) (not b!3108290) (not bm!219818) (not b!3108243) (not b!3108465) (not b!3108315) (not b!3108291) (not bm!219817) (not b!3108496) (not b!3108308) (not b!3108494) (not b!3108498) (not d!861558) (not b!3108495) tp_is_empty!16733 (not b!3108503) (not bm!219816) (not bm!219836) (not b!3108280) (not b!3108358) (not bm!219846) (not b!3108312) (not b!3108359) (not d!861546) (not bm!219821) (not b!3108318) (not b!3108499) (not b!3108440) (not b!3108301) (not b!3108353) (not bm!219807) (not b!3108304) (not b!3108488) (not b!3108490) (not b!3108277) (not b!3108317) (not b!3108486) (not bm!219841) (not bm!219802) (not bm!219806) (not b!3108303) (not b!3108244) (not d!861566) (not b!3108298) (not b!3108467) (not b!3108373) (not bm!219820) (not b!3108284) (not b!3108356) (not bm!219803) (not b!3108492) (not bm!219839) (not d!861550) (not b!3108365) (not bm!219808) (not bm!219842) (not b!3108502) (not b!3108364) (not b!3108305) (not b!3108349) (not b!3108294) (not b!3108344) (not d!861556) (not d!861548) (not b!3108287) (not bm!219848) (not b!3108500) (not bm!219849) (not b!3108346) (not b!3108509) (not b!3108491) (not bm!219843) (not bm!219847) (not d!861552) (not b!3108442) (not bm!219840) (not b!3108289))
(check-sat)
