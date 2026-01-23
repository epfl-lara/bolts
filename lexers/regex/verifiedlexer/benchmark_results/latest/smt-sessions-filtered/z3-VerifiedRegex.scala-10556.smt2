; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!543520 () Bool)

(assert start!543520)

(declare-fun b!5135291 () Bool)

(declare-fun e!3203061 () Bool)

(declare-fun tp!1432355 () Bool)

(assert (=> b!5135291 (= e!3203061 tp!1432355)))

(declare-fun b!5135289 () Bool)

(declare-fun res!2187354 () Bool)

(declare-fun e!3203062 () Bool)

(assert (=> b!5135289 (=> (not res!2187354) (not e!3203062))))

(declare-datatypes ((C!29072 0))(
  ( (C!29073 (val!24188 Int)) )
))
(declare-datatypes ((Regex!14403 0))(
  ( (ElementMatch!14403 (c!883942 C!29072)) (Concat!23248 (regOne!29318 Regex!14403) (regTwo!29318 Regex!14403)) (EmptyExpr!14403) (Star!14403 (reg!14732 Regex!14403)) (EmptyLang!14403) (Union!14403 (regOne!29319 Regex!14403) (regTwo!29319 Regex!14403)) )
))
(declare-datatypes ((List!59742 0))(
  ( (Nil!59618) (Cons!59618 (h!66066 Regex!14403) (t!372769 List!59742)) )
))
(declare-datatypes ((Context!7574 0))(
  ( (Context!7575 (exprs!4287 List!59742)) )
))
(declare-fun ctx!74 () Context!7574)

(declare-fun nullable!4776 (Regex!14403) Bool)

(assert (=> b!5135289 (= res!2187354 (nullable!4776 (h!66066 (exprs!4287 ctx!74))))))

(declare-fun b!5135290 () Bool)

(declare-fun lt!2119089 () Context!7574)

(declare-fun inv!79188 (Context!7574) Bool)

(assert (=> b!5135290 (= e!3203062 (not (inv!79188 lt!2119089)))))

(declare-fun a!1252 () C!29072)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lostCauseZipper!1231 ((InoxSet Context!7574)) Bool)

(declare-fun derivationStepZipperDown!112 (Regex!14403 Context!7574 C!29072) (InoxSet Context!7574))

(assert (=> b!5135290 (lostCauseZipper!1231 (derivationStepZipperDown!112 (h!66066 (exprs!4287 ctx!74)) lt!2119089 a!1252))))

(declare-datatypes ((Unit!150961 0))(
  ( (Unit!150962) )
))
(declare-fun lt!2119091 () Unit!150961)

(declare-fun lemmaLostCauseFixPointDerivDown!6 (Regex!14403 Context!7574 C!29072) Unit!150961)

(assert (=> b!5135290 (= lt!2119091 (lemmaLostCauseFixPointDerivDown!6 (h!66066 (exprs!4287 ctx!74)) lt!2119089 a!1252))))

(declare-fun derivationStepZipperUp!89 (Context!7574 C!29072) (InoxSet Context!7574))

(assert (=> b!5135290 (lostCauseZipper!1231 (derivationStepZipperUp!89 lt!2119089 a!1252))))

(declare-fun lt!2119090 () Unit!150961)

(declare-fun lemmaLostCauseFixPointDerivUp!22 (Context!7574 C!29072) Unit!150961)

(assert (=> b!5135290 (= lt!2119090 (lemmaLostCauseFixPointDerivUp!22 lt!2119089 a!1252))))

(assert (=> b!5135290 (= lt!2119089 (Context!7575 (t!372769 (exprs!4287 ctx!74))))))

(declare-fun lostCause!1366 (Regex!14403) Bool)

(assert (=> b!5135290 (not (lostCause!1366 (h!66066 (exprs!4287 ctx!74))))))

(declare-fun lt!2119092 () Unit!150961)

(declare-fun lemmaNullableThenNotLostCause!54 (Regex!14403) Unit!150961)

(assert (=> b!5135290 (= lt!2119092 (lemmaNullableThenNotLostCause!54 (h!66066 (exprs!4287 ctx!74))))))

(declare-fun b!5135288 () Bool)

(declare-fun res!2187356 () Bool)

(assert (=> b!5135288 (=> (not res!2187356) (not e!3203062))))

(get-info :version)

(assert (=> b!5135288 (= res!2187356 ((_ is Cons!59618) (exprs!4287 ctx!74)))))

(declare-fun res!2187355 () Bool)

(assert (=> start!543520 (=> (not res!2187355) (not e!3203062))))

(declare-fun lostCause!1367 (Context!7574) Bool)

(assert (=> start!543520 (= res!2187355 (lostCause!1367 ctx!74))))

(assert (=> start!543520 e!3203062))

(assert (=> start!543520 (and (inv!79188 ctx!74) e!3203061)))

(declare-fun tp_is_empty!37959 () Bool)

(assert (=> start!543520 tp_is_empty!37959))

(assert (= (and start!543520 res!2187355) b!5135288))

(assert (= (and b!5135288 res!2187356) b!5135289))

(assert (= (and b!5135289 res!2187354) b!5135290))

(assert (= start!543520 b!5135291))

(declare-fun m!6200876 () Bool)

(assert (=> b!5135289 m!6200876))

(declare-fun m!6200878 () Bool)

(assert (=> b!5135290 m!6200878))

(declare-fun m!6200880 () Bool)

(assert (=> b!5135290 m!6200880))

(declare-fun m!6200882 () Bool)

(assert (=> b!5135290 m!6200882))

(declare-fun m!6200884 () Bool)

(assert (=> b!5135290 m!6200884))

(declare-fun m!6200886 () Bool)

(assert (=> b!5135290 m!6200886))

(declare-fun m!6200888 () Bool)

(assert (=> b!5135290 m!6200888))

(declare-fun m!6200890 () Bool)

(assert (=> b!5135290 m!6200890))

(assert (=> b!5135290 m!6200884))

(assert (=> b!5135290 m!6200880))

(declare-fun m!6200892 () Bool)

(assert (=> b!5135290 m!6200892))

(declare-fun m!6200894 () Bool)

(assert (=> b!5135290 m!6200894))

(declare-fun m!6200896 () Bool)

(assert (=> start!543520 m!6200896))

(declare-fun m!6200898 () Bool)

(assert (=> start!543520 m!6200898))

(check-sat (not b!5135289) tp_is_empty!37959 (not start!543520) (not b!5135291) (not b!5135290))
(check-sat)
(get-model)

(declare-fun d!1661623 () Bool)

(declare-fun lambda!255750 () Int)

(declare-fun exists!1735 (List!59742 Int) Bool)

(assert (=> d!1661623 (= (lostCause!1367 ctx!74) (exists!1735 (exprs!4287 ctx!74) lambda!255750))))

(declare-fun bs!1199680 () Bool)

(assert (= bs!1199680 d!1661623))

(declare-fun m!6200934 () Bool)

(assert (=> bs!1199680 m!6200934))

(assert (=> start!543520 d!1661623))

(declare-fun bs!1199681 () Bool)

(declare-fun d!1661637 () Bool)

(assert (= bs!1199681 (and d!1661637 d!1661623)))

(declare-fun lambda!255753 () Int)

(assert (=> bs!1199681 (not (= lambda!255753 lambda!255750))))

(declare-fun forall!13860 (List!59742 Int) Bool)

(assert (=> d!1661637 (= (inv!79188 ctx!74) (forall!13860 (exprs!4287 ctx!74) lambda!255753))))

(declare-fun bs!1199682 () Bool)

(assert (= bs!1199682 d!1661637))

(declare-fun m!6200936 () Bool)

(assert (=> bs!1199682 m!6200936))

(assert (=> start!543520 d!1661637))

(declare-fun d!1661639 () Bool)

(assert (=> d!1661639 (lostCauseZipper!1231 (derivationStepZipperUp!89 lt!2119089 a!1252))))

(declare-fun lt!2119136 () Unit!150961)

(declare-fun choose!37988 (Context!7574 C!29072) Unit!150961)

(assert (=> d!1661639 (= lt!2119136 (choose!37988 lt!2119089 a!1252))))

(assert (=> d!1661639 (lostCause!1367 lt!2119089)))

(assert (=> d!1661639 (= (lemmaLostCauseFixPointDerivUp!22 lt!2119089 a!1252) lt!2119136)))

(declare-fun bs!1199695 () Bool)

(assert (= bs!1199695 d!1661639))

(assert (=> bs!1199695 m!6200884))

(assert (=> bs!1199695 m!6200884))

(assert (=> bs!1199695 m!6200886))

(declare-fun m!6200948 () Bool)

(assert (=> bs!1199695 m!6200948))

(declare-fun m!6200950 () Bool)

(assert (=> bs!1199695 m!6200950))

(assert (=> b!5135290 d!1661639))

(declare-fun d!1661643 () Bool)

(declare-fun lostCauseFct!330 (Regex!14403) Bool)

(assert (=> d!1661643 (= (lostCause!1366 (h!66066 (exprs!4287 ctx!74))) (lostCauseFct!330 (h!66066 (exprs!4287 ctx!74))))))

(declare-fun bs!1199696 () Bool)

(assert (= bs!1199696 d!1661643))

(declare-fun m!6200966 () Bool)

(assert (=> bs!1199696 m!6200966))

(assert (=> b!5135290 d!1661643))

(declare-fun b!5135363 () Bool)

(declare-fun e!3203109 () Bool)

(assert (=> b!5135363 (= e!3203109 (nullable!4776 (h!66066 (exprs!4287 lt!2119089))))))

(declare-fun bm!357748 () Bool)

(declare-fun call!357753 () (InoxSet Context!7574))

(assert (=> bm!357748 (= call!357753 (derivationStepZipperDown!112 (h!66066 (exprs!4287 lt!2119089)) (Context!7575 (t!372769 (exprs!4287 lt!2119089))) a!1252))))

(declare-fun e!3203108 () (InoxSet Context!7574))

(declare-fun b!5135364 () Bool)

(assert (=> b!5135364 (= e!3203108 ((_ map or) call!357753 (derivationStepZipperUp!89 (Context!7575 (t!372769 (exprs!4287 lt!2119089))) a!1252)))))

(declare-fun d!1661647 () Bool)

(declare-fun c!883980 () Bool)

(assert (=> d!1661647 (= c!883980 e!3203109)))

(declare-fun res!2187365 () Bool)

(assert (=> d!1661647 (=> (not res!2187365) (not e!3203109))))

(assert (=> d!1661647 (= res!2187365 ((_ is Cons!59618) (exprs!4287 lt!2119089)))))

(assert (=> d!1661647 (= (derivationStepZipperUp!89 lt!2119089 a!1252) e!3203108)))

(declare-fun b!5135365 () Bool)

(declare-fun e!3203107 () (InoxSet Context!7574))

(assert (=> b!5135365 (= e!3203108 e!3203107)))

(declare-fun c!883981 () Bool)

(assert (=> b!5135365 (= c!883981 ((_ is Cons!59618) (exprs!4287 lt!2119089)))))

(declare-fun b!5135366 () Bool)

(assert (=> b!5135366 (= e!3203107 call!357753)))

(declare-fun b!5135367 () Bool)

(assert (=> b!5135367 (= e!3203107 ((as const (Array Context!7574 Bool)) false))))

(assert (= (and d!1661647 res!2187365) b!5135363))

(assert (= (and d!1661647 c!883980) b!5135364))

(assert (= (and d!1661647 (not c!883980)) b!5135365))

(assert (= (and b!5135365 c!883981) b!5135366))

(assert (= (and b!5135365 (not c!883981)) b!5135367))

(assert (= (or b!5135364 b!5135366) bm!357748))

(declare-fun m!6200974 () Bool)

(assert (=> b!5135363 m!6200974))

(declare-fun m!6200976 () Bool)

(assert (=> bm!357748 m!6200976))

(declare-fun m!6200978 () Bool)

(assert (=> b!5135364 m!6200978))

(assert (=> b!5135290 d!1661647))

(declare-fun bs!1199703 () Bool)

(declare-fun b!5135372 () Bool)

(declare-fun d!1661653 () Bool)

(assert (= bs!1199703 (and b!5135372 d!1661653)))

(declare-fun lambda!255774 () Int)

(declare-fun lambda!255773 () Int)

(assert (=> bs!1199703 (not (= lambda!255774 lambda!255773))))

(declare-fun bs!1199704 () Bool)

(declare-fun b!5135373 () Bool)

(assert (= bs!1199704 (and b!5135373 d!1661653)))

(declare-fun lambda!255775 () Int)

(assert (=> bs!1199704 (not (= lambda!255775 lambda!255773))))

(declare-fun bs!1199705 () Bool)

(assert (= bs!1199705 (and b!5135373 b!5135372)))

(assert (=> bs!1199705 (= lambda!255775 lambda!255774)))

(declare-fun bm!357753 () Bool)

(declare-datatypes ((List!59745 0))(
  ( (Nil!59621) (Cons!59621 (h!66069 Context!7574) (t!372772 List!59745)) )
))
(declare-fun call!357758 () List!59745)

(declare-fun toList!8366 ((InoxSet Context!7574)) List!59745)

(assert (=> bm!357753 (= call!357758 (toList!8366 (derivationStepZipperDown!112 (h!66066 (exprs!4287 ctx!74)) lt!2119089 a!1252)))))

(declare-fun lt!2119154 () List!59745)

(declare-fun lt!2119159 () List!59745)

(declare-fun bm!357754 () Bool)

(declare-fun call!357759 () Bool)

(declare-fun c!883992 () Bool)

(declare-fun exists!1737 (List!59745 Int) Bool)

(assert (=> bm!357754 (= call!357759 (exists!1737 (ite c!883992 lt!2119154 lt!2119159) (ite c!883992 lambda!255774 lambda!255775)))))

(declare-fun lt!2119153 () Bool)

(declare-datatypes ((List!59746 0))(
  ( (Nil!59622) (Cons!59622 (h!66070 C!29072) (t!372773 List!59746)) )
))
(declare-datatypes ((Option!14763 0))(
  ( (None!14762) (Some!14762 (v!50791 List!59746)) )
))
(declare-fun isEmpty!32024 (Option!14763) Bool)

(declare-fun getLanguageWitness!904 ((InoxSet Context!7574)) Option!14763)

(assert (=> d!1661653 (= lt!2119153 (isEmpty!32024 (getLanguageWitness!904 (derivationStepZipperDown!112 (h!66066 (exprs!4287 ctx!74)) lt!2119089 a!1252))))))

(declare-fun forall!13861 ((InoxSet Context!7574) Int) Bool)

(assert (=> d!1661653 (= lt!2119153 (forall!13861 (derivationStepZipperDown!112 (h!66066 (exprs!4287 ctx!74)) lt!2119089 a!1252) lambda!255773))))

(declare-fun lt!2119158 () Unit!150961)

(declare-fun e!3203116 () Unit!150961)

(assert (=> d!1661653 (= lt!2119158 e!3203116)))

(assert (=> d!1661653 (= c!883992 (not (forall!13861 (derivationStepZipperDown!112 (h!66066 (exprs!4287 ctx!74)) lt!2119089 a!1252) lambda!255773)))))

(assert (=> d!1661653 (= (lostCauseZipper!1231 (derivationStepZipperDown!112 (h!66066 (exprs!4287 ctx!74)) lt!2119089 a!1252)) lt!2119153)))

(declare-fun Unit!150967 () Unit!150961)

(assert (=> b!5135372 (= e!3203116 Unit!150967)))

(assert (=> b!5135372 (= lt!2119154 call!357758)))

(declare-fun lt!2119156 () Unit!150961)

(declare-fun lemmaNotForallThenExists!414 (List!59745 Int) Unit!150961)

(assert (=> b!5135372 (= lt!2119156 (lemmaNotForallThenExists!414 lt!2119154 lambda!255773))))

(assert (=> b!5135372 call!357759))

(declare-fun lt!2119157 () Unit!150961)

(assert (=> b!5135372 (= lt!2119157 lt!2119156)))

(declare-fun Unit!150968 () Unit!150961)

(assert (=> b!5135373 (= e!3203116 Unit!150968)))

(assert (=> b!5135373 (= lt!2119159 call!357758)))

(declare-fun lt!2119155 () Unit!150961)

(declare-fun lemmaForallThenNotExists!381 (List!59745 Int) Unit!150961)

(assert (=> b!5135373 (= lt!2119155 (lemmaForallThenNotExists!381 lt!2119159 lambda!255773))))

(assert (=> b!5135373 (not call!357759)))

(declare-fun lt!2119160 () Unit!150961)

(assert (=> b!5135373 (= lt!2119160 lt!2119155)))

(assert (= (and d!1661653 c!883992) b!5135372))

(assert (= (and d!1661653 (not c!883992)) b!5135373))

(assert (= (or b!5135372 b!5135373) bm!357753))

(assert (= (or b!5135372 b!5135373) bm!357754))

(declare-fun m!6200980 () Bool)

(assert (=> bm!357754 m!6200980))

(assert (=> d!1661653 m!6200880))

(declare-fun m!6200982 () Bool)

(assert (=> d!1661653 m!6200982))

(assert (=> d!1661653 m!6200982))

(declare-fun m!6200984 () Bool)

(assert (=> d!1661653 m!6200984))

(assert (=> d!1661653 m!6200880))

(declare-fun m!6200986 () Bool)

(assert (=> d!1661653 m!6200986))

(assert (=> d!1661653 m!6200880))

(assert (=> d!1661653 m!6200986))

(declare-fun m!6200988 () Bool)

(assert (=> b!5135373 m!6200988))

(declare-fun m!6200990 () Bool)

(assert (=> b!5135372 m!6200990))

(assert (=> bm!357753 m!6200880))

(declare-fun m!6200992 () Bool)

(assert (=> bm!357753 m!6200992))

(assert (=> b!5135290 d!1661653))

(declare-fun bs!1199706 () Bool)

(declare-fun d!1661655 () Bool)

(assert (= bs!1199706 (and d!1661655 d!1661653)))

(declare-fun lambda!255776 () Int)

(assert (=> bs!1199706 (= lambda!255776 lambda!255773)))

(declare-fun bs!1199707 () Bool)

(assert (= bs!1199707 (and d!1661655 b!5135372)))

(assert (=> bs!1199707 (not (= lambda!255776 lambda!255774))))

(declare-fun bs!1199708 () Bool)

(assert (= bs!1199708 (and d!1661655 b!5135373)))

(assert (=> bs!1199708 (not (= lambda!255776 lambda!255775))))

(declare-fun bs!1199709 () Bool)

(declare-fun b!5135374 () Bool)

(assert (= bs!1199709 (and b!5135374 d!1661653)))

(declare-fun lambda!255777 () Int)

(assert (=> bs!1199709 (not (= lambda!255777 lambda!255773))))

(declare-fun bs!1199710 () Bool)

(assert (= bs!1199710 (and b!5135374 b!5135372)))

(assert (=> bs!1199710 (= lambda!255777 lambda!255774)))

(declare-fun bs!1199711 () Bool)

(assert (= bs!1199711 (and b!5135374 b!5135373)))

(assert (=> bs!1199711 (= lambda!255777 lambda!255775)))

(declare-fun bs!1199712 () Bool)

(assert (= bs!1199712 (and b!5135374 d!1661655)))

(assert (=> bs!1199712 (not (= lambda!255777 lambda!255776))))

(declare-fun bs!1199713 () Bool)

(declare-fun b!5135375 () Bool)

(assert (= bs!1199713 (and b!5135375 d!1661655)))

(declare-fun lambda!255778 () Int)

(assert (=> bs!1199713 (not (= lambda!255778 lambda!255776))))

(declare-fun bs!1199714 () Bool)

(assert (= bs!1199714 (and b!5135375 d!1661653)))

(assert (=> bs!1199714 (not (= lambda!255778 lambda!255773))))

(declare-fun bs!1199715 () Bool)

(assert (= bs!1199715 (and b!5135375 b!5135374)))

(assert (=> bs!1199715 (= lambda!255778 lambda!255777)))

(declare-fun bs!1199716 () Bool)

(assert (= bs!1199716 (and b!5135375 b!5135373)))

(assert (=> bs!1199716 (= lambda!255778 lambda!255775)))

(declare-fun bs!1199717 () Bool)

(assert (= bs!1199717 (and b!5135375 b!5135372)))

(assert (=> bs!1199717 (= lambda!255778 lambda!255774)))

(declare-fun bm!357755 () Bool)

(declare-fun call!357760 () List!59745)

(assert (=> bm!357755 (= call!357760 (toList!8366 (derivationStepZipperUp!89 lt!2119089 a!1252)))))

(declare-fun lt!2119162 () List!59745)

(declare-fun lt!2119167 () List!59745)

(declare-fun c!883993 () Bool)

(declare-fun call!357761 () Bool)

(declare-fun bm!357756 () Bool)

(assert (=> bm!357756 (= call!357761 (exists!1737 (ite c!883993 lt!2119162 lt!2119167) (ite c!883993 lambda!255777 lambda!255778)))))

(declare-fun lt!2119161 () Bool)

(assert (=> d!1661655 (= lt!2119161 (isEmpty!32024 (getLanguageWitness!904 (derivationStepZipperUp!89 lt!2119089 a!1252))))))

(assert (=> d!1661655 (= lt!2119161 (forall!13861 (derivationStepZipperUp!89 lt!2119089 a!1252) lambda!255776))))

(declare-fun lt!2119166 () Unit!150961)

(declare-fun e!3203117 () Unit!150961)

(assert (=> d!1661655 (= lt!2119166 e!3203117)))

(assert (=> d!1661655 (= c!883993 (not (forall!13861 (derivationStepZipperUp!89 lt!2119089 a!1252) lambda!255776)))))

(assert (=> d!1661655 (= (lostCauseZipper!1231 (derivationStepZipperUp!89 lt!2119089 a!1252)) lt!2119161)))

(declare-fun Unit!150969 () Unit!150961)

(assert (=> b!5135374 (= e!3203117 Unit!150969)))

(assert (=> b!5135374 (= lt!2119162 call!357760)))

(declare-fun lt!2119164 () Unit!150961)

(assert (=> b!5135374 (= lt!2119164 (lemmaNotForallThenExists!414 lt!2119162 lambda!255776))))

(assert (=> b!5135374 call!357761))

(declare-fun lt!2119165 () Unit!150961)

(assert (=> b!5135374 (= lt!2119165 lt!2119164)))

(declare-fun Unit!150970 () Unit!150961)

(assert (=> b!5135375 (= e!3203117 Unit!150970)))

(assert (=> b!5135375 (= lt!2119167 call!357760)))

(declare-fun lt!2119163 () Unit!150961)

(assert (=> b!5135375 (= lt!2119163 (lemmaForallThenNotExists!381 lt!2119167 lambda!255776))))

(assert (=> b!5135375 (not call!357761)))

(declare-fun lt!2119168 () Unit!150961)

(assert (=> b!5135375 (= lt!2119168 lt!2119163)))

(assert (= (and d!1661655 c!883993) b!5135374))

(assert (= (and d!1661655 (not c!883993)) b!5135375))

(assert (= (or b!5135374 b!5135375) bm!357755))

(assert (= (or b!5135374 b!5135375) bm!357756))

(declare-fun m!6200994 () Bool)

(assert (=> bm!357756 m!6200994))

(assert (=> d!1661655 m!6200884))

(declare-fun m!6200996 () Bool)

(assert (=> d!1661655 m!6200996))

(assert (=> d!1661655 m!6200996))

(declare-fun m!6200998 () Bool)

(assert (=> d!1661655 m!6200998))

(assert (=> d!1661655 m!6200884))

(declare-fun m!6201000 () Bool)

(assert (=> d!1661655 m!6201000))

(assert (=> d!1661655 m!6200884))

(assert (=> d!1661655 m!6201000))

(declare-fun m!6201002 () Bool)

(assert (=> b!5135375 m!6201002))

(declare-fun m!6201004 () Bool)

(assert (=> b!5135374 m!6201004))

(assert (=> bm!357755 m!6200884))

(declare-fun m!6201006 () Bool)

(assert (=> bm!357755 m!6201006))

(assert (=> b!5135290 d!1661655))

(declare-fun d!1661657 () Bool)

(assert (=> d!1661657 (not (lostCause!1366 (h!66066 (exprs!4287 ctx!74))))))

(declare-fun lt!2119171 () Unit!150961)

(declare-fun choose!37989 (Regex!14403) Unit!150961)

(assert (=> d!1661657 (= lt!2119171 (choose!37989 (h!66066 (exprs!4287 ctx!74))))))

(declare-fun validRegex!6262 (Regex!14403) Bool)

(assert (=> d!1661657 (validRegex!6262 (h!66066 (exprs!4287 ctx!74)))))

(assert (=> d!1661657 (= (lemmaNullableThenNotLostCause!54 (h!66066 (exprs!4287 ctx!74))) lt!2119171)))

(declare-fun bs!1199718 () Bool)

(assert (= bs!1199718 d!1661657))

(assert (=> bs!1199718 m!6200892))

(declare-fun m!6201008 () Bool)

(assert (=> bs!1199718 m!6201008))

(declare-fun m!6201010 () Bool)

(assert (=> bs!1199718 m!6201010))

(assert (=> b!5135290 d!1661657))

(declare-fun d!1661659 () Bool)

(assert (=> d!1661659 (lostCauseZipper!1231 (derivationStepZipperDown!112 (h!66066 (exprs!4287 ctx!74)) lt!2119089 a!1252))))

(declare-fun lt!2119174 () Unit!150961)

(declare-fun choose!37990 (Regex!14403 Context!7574 C!29072) Unit!150961)

(assert (=> d!1661659 (= lt!2119174 (choose!37990 (h!66066 (exprs!4287 ctx!74)) lt!2119089 a!1252))))

(assert (=> d!1661659 (validRegex!6262 (h!66066 (exprs!4287 ctx!74)))))

(assert (=> d!1661659 (= (lemmaLostCauseFixPointDerivDown!6 (h!66066 (exprs!4287 ctx!74)) lt!2119089 a!1252) lt!2119174)))

(declare-fun bs!1199719 () Bool)

(assert (= bs!1199719 d!1661659))

(assert (=> bs!1199719 m!6200880))

(assert (=> bs!1199719 m!6200880))

(assert (=> bs!1199719 m!6200882))

(declare-fun m!6201012 () Bool)

(assert (=> bs!1199719 m!6201012))

(assert (=> bs!1199719 m!6201010))

(assert (=> b!5135290 d!1661659))

(declare-fun bm!357769 () Bool)

(declare-fun call!357779 () (InoxSet Context!7574))

(declare-fun call!357776 () (InoxSet Context!7574))

(assert (=> bm!357769 (= call!357779 call!357776)))

(declare-fun b!5135398 () Bool)

(declare-fun e!3203132 () (InoxSet Context!7574))

(declare-fun call!357778 () (InoxSet Context!7574))

(assert (=> b!5135398 (= e!3203132 ((_ map or) call!357778 call!357779))))

(declare-fun b!5135399 () Bool)

(declare-fun e!3203130 () (InoxSet Context!7574))

(assert (=> b!5135399 (= e!3203130 ((as const (Array Context!7574 Bool)) false))))

(declare-fun b!5135400 () Bool)

(declare-fun e!3203134 () (InoxSet Context!7574))

(declare-fun e!3203135 () (InoxSet Context!7574))

(assert (=> b!5135400 (= e!3203134 e!3203135)))

(declare-fun c!884008 () Bool)

(assert (=> b!5135400 (= c!884008 ((_ is Union!14403) (h!66066 (exprs!4287 ctx!74))))))

(declare-fun b!5135401 () Bool)

(declare-fun e!3203131 () (InoxSet Context!7574))

(assert (=> b!5135401 (= e!3203132 e!3203131)))

(declare-fun c!884007 () Bool)

(assert (=> b!5135401 (= c!884007 ((_ is Concat!23248) (h!66066 (exprs!4287 ctx!74))))))

(declare-fun b!5135402 () Bool)

(declare-fun e!3203133 () Bool)

(assert (=> b!5135402 (= e!3203133 (nullable!4776 (regOne!29318 (h!66066 (exprs!4287 ctx!74)))))))

(declare-fun b!5135403 () Bool)

(declare-fun call!357775 () (InoxSet Context!7574))

(assert (=> b!5135403 (= e!3203131 call!357775)))

(declare-fun b!5135405 () Bool)

(assert (=> b!5135405 (= e!3203134 (store ((as const (Array Context!7574 Bool)) false) lt!2119089 true))))

(declare-fun bm!357770 () Bool)

(assert (=> bm!357770 (= call!357775 call!357779)))

(declare-fun b!5135406 () Bool)

(assert (=> b!5135406 (= e!3203135 ((_ map or) call!357776 call!357778))))

(declare-fun b!5135407 () Bool)

(declare-fun c!884006 () Bool)

(assert (=> b!5135407 (= c!884006 ((_ is Star!14403) (h!66066 (exprs!4287 ctx!74))))))

(assert (=> b!5135407 (= e!3203131 e!3203130)))

(declare-fun b!5135408 () Bool)

(assert (=> b!5135408 (= e!3203130 call!357775)))

(declare-fun b!5135404 () Bool)

(declare-fun c!884004 () Bool)

(assert (=> b!5135404 (= c!884004 e!3203133)))

(declare-fun res!2187368 () Bool)

(assert (=> b!5135404 (=> (not res!2187368) (not e!3203133))))

(assert (=> b!5135404 (= res!2187368 ((_ is Concat!23248) (h!66066 (exprs!4287 ctx!74))))))

(assert (=> b!5135404 (= e!3203135 e!3203132)))

(declare-fun d!1661661 () Bool)

(declare-fun c!884005 () Bool)

(assert (=> d!1661661 (= c!884005 (and ((_ is ElementMatch!14403) (h!66066 (exprs!4287 ctx!74))) (= (c!883942 (h!66066 (exprs!4287 ctx!74))) a!1252)))))

(assert (=> d!1661661 (= (derivationStepZipperDown!112 (h!66066 (exprs!4287 ctx!74)) lt!2119089 a!1252) e!3203134)))

(declare-fun call!357777 () List!59742)

(declare-fun bm!357771 () Bool)

(assert (=> bm!357771 (= call!357776 (derivationStepZipperDown!112 (ite c!884008 (regOne!29319 (h!66066 (exprs!4287 ctx!74))) (ite c!884004 (regTwo!29318 (h!66066 (exprs!4287 ctx!74))) (ite c!884007 (regOne!29318 (h!66066 (exprs!4287 ctx!74))) (reg!14732 (h!66066 (exprs!4287 ctx!74)))))) (ite (or c!884008 c!884004) lt!2119089 (Context!7575 call!357777)) a!1252))))

(declare-fun call!357774 () List!59742)

(declare-fun bm!357772 () Bool)

(assert (=> bm!357772 (= call!357778 (derivationStepZipperDown!112 (ite c!884008 (regTwo!29319 (h!66066 (exprs!4287 ctx!74))) (regOne!29318 (h!66066 (exprs!4287 ctx!74)))) (ite c!884008 lt!2119089 (Context!7575 call!357774)) a!1252))))

(declare-fun bm!357773 () Bool)

(declare-fun $colon$colon!1163 (List!59742 Regex!14403) List!59742)

(assert (=> bm!357773 (= call!357774 ($colon$colon!1163 (exprs!4287 lt!2119089) (ite (or c!884004 c!884007) (regTwo!29318 (h!66066 (exprs!4287 ctx!74))) (h!66066 (exprs!4287 ctx!74)))))))

(declare-fun bm!357774 () Bool)

(assert (=> bm!357774 (= call!357777 call!357774)))

(assert (= (and d!1661661 c!884005) b!5135405))

(assert (= (and d!1661661 (not c!884005)) b!5135400))

(assert (= (and b!5135400 c!884008) b!5135406))

(assert (= (and b!5135400 (not c!884008)) b!5135404))

(assert (= (and b!5135404 res!2187368) b!5135402))

(assert (= (and b!5135404 c!884004) b!5135398))

(assert (= (and b!5135404 (not c!884004)) b!5135401))

(assert (= (and b!5135401 c!884007) b!5135403))

(assert (= (and b!5135401 (not c!884007)) b!5135407))

(assert (= (and b!5135407 c!884006) b!5135408))

(assert (= (and b!5135407 (not c!884006)) b!5135399))

(assert (= (or b!5135403 b!5135408) bm!357774))

(assert (= (or b!5135403 b!5135408) bm!357770))

(assert (= (or b!5135398 bm!357774) bm!357773))

(assert (= (or b!5135398 bm!357770) bm!357769))

(assert (= (or b!5135406 bm!357769) bm!357771))

(assert (= (or b!5135406 b!5135398) bm!357772))

(declare-fun m!6201014 () Bool)

(assert (=> bm!357772 m!6201014))

(declare-fun m!6201016 () Bool)

(assert (=> bm!357771 m!6201016))

(declare-fun m!6201018 () Bool)

(assert (=> b!5135402 m!6201018))

(declare-fun m!6201020 () Bool)

(assert (=> b!5135405 m!6201020))

(declare-fun m!6201022 () Bool)

(assert (=> bm!357773 m!6201022))

(assert (=> b!5135290 d!1661661))

(declare-fun bs!1199720 () Bool)

(declare-fun d!1661663 () Bool)

(assert (= bs!1199720 (and d!1661663 d!1661623)))

(declare-fun lambda!255779 () Int)

(assert (=> bs!1199720 (not (= lambda!255779 lambda!255750))))

(declare-fun bs!1199721 () Bool)

(assert (= bs!1199721 (and d!1661663 d!1661637)))

(assert (=> bs!1199721 (= lambda!255779 lambda!255753)))

(assert (=> d!1661663 (= (inv!79188 lt!2119089) (forall!13860 (exprs!4287 lt!2119089) lambda!255779))))

(declare-fun bs!1199722 () Bool)

(assert (= bs!1199722 d!1661663))

(declare-fun m!6201024 () Bool)

(assert (=> bs!1199722 m!6201024))

(assert (=> b!5135290 d!1661663))

(declare-fun d!1661665 () Bool)

(declare-fun nullableFct!1299 (Regex!14403) Bool)

(assert (=> d!1661665 (= (nullable!4776 (h!66066 (exprs!4287 ctx!74))) (nullableFct!1299 (h!66066 (exprs!4287 ctx!74))))))

(declare-fun bs!1199723 () Bool)

(assert (= bs!1199723 d!1661665))

(declare-fun m!6201026 () Bool)

(assert (=> bs!1199723 m!6201026))

(assert (=> b!5135289 d!1661665))

(declare-fun b!5135413 () Bool)

(declare-fun e!3203138 () Bool)

(declare-fun tp!1432366 () Bool)

(declare-fun tp!1432367 () Bool)

(assert (=> b!5135413 (= e!3203138 (and tp!1432366 tp!1432367))))

(assert (=> b!5135291 (= tp!1432355 e!3203138)))

(assert (= (and b!5135291 ((_ is Cons!59618) (exprs!4287 ctx!74))) b!5135413))

(check-sat (not d!1661643) (not d!1661665) (not bm!357771) (not d!1661657) (not d!1661655) (not bm!357772) (not d!1661663) (not d!1661639) tp_is_empty!37959 (not b!5135373) (not b!5135413) (not bm!357748) (not d!1661653) (not bm!357754) (not b!5135364) (not bm!357773) (not d!1661637) (not b!5135402) (not bm!357753) (not d!1661623) (not b!5135375) (not b!5135374) (not d!1661659) (not b!5135372) (not bm!357756) (not bm!357755) (not b!5135363))
(check-sat)
(get-model)

(declare-fun b!5135444 () Bool)

(declare-fun e!3203167 () Bool)

(declare-fun e!3203169 () Bool)

(assert (=> b!5135444 (= e!3203167 e!3203169)))

(declare-fun res!2187389 () Bool)

(assert (=> b!5135444 (=> res!2187389 e!3203169)))

(assert (=> b!5135444 (= res!2187389 ((_ is EmptyLang!14403) (h!66066 (exprs!4287 ctx!74))))))

(declare-fun bm!357780 () Bool)

(declare-fun call!357785 () Bool)

(declare-fun c!884013 () Bool)

(assert (=> bm!357780 (= call!357785 (lostCause!1366 (ite c!884013 (regTwo!29319 (h!66066 (exprs!4287 ctx!74))) (regOne!29318 (h!66066 (exprs!4287 ctx!74))))))))

(declare-fun bm!357781 () Bool)

(declare-fun call!357786 () Bool)

(assert (=> bm!357781 (= call!357786 (lostCause!1366 (ite c!884013 (regOne!29319 (h!66066 (exprs!4287 ctx!74))) (regTwo!29318 (h!66066 (exprs!4287 ctx!74))))))))

(declare-fun b!5135445 () Bool)

(declare-fun e!3203171 () Bool)

(assert (=> b!5135445 (= e!3203171 call!357786)))

(declare-fun d!1661677 () Bool)

(declare-fun lt!2119186 () Bool)

(declare-fun getLanguageWitness!905 (Regex!14403) Option!14763)

(assert (=> d!1661677 (= lt!2119186 (isEmpty!32024 (getLanguageWitness!905 (h!66066 (exprs!4287 ctx!74)))))))

(assert (=> d!1661677 (= lt!2119186 e!3203167)))

(declare-fun res!2187393 () Bool)

(assert (=> d!1661677 (=> (not res!2187393) (not e!3203167))))

(assert (=> d!1661677 (= res!2187393 (not ((_ is EmptyExpr!14403) (h!66066 (exprs!4287 ctx!74)))))))

(assert (=> d!1661677 (= (lostCauseFct!330 (h!66066 (exprs!4287 ctx!74))) lt!2119186)))

(declare-fun b!5135446 () Bool)

(declare-fun e!3203168 () Bool)

(assert (=> b!5135446 (= e!3203168 call!357785)))

(declare-fun b!5135447 () Bool)

(declare-fun e!3203170 () Bool)

(assert (=> b!5135447 (= e!3203169 e!3203170)))

(declare-fun res!2187390 () Bool)

(assert (=> b!5135447 (=> (not res!2187390) (not e!3203170))))

(assert (=> b!5135447 (= res!2187390 (and (not ((_ is ElementMatch!14403) (h!66066 (exprs!4287 ctx!74)))) (not ((_ is Star!14403) (h!66066 (exprs!4287 ctx!74))))))))

(declare-fun b!5135448 () Bool)

(declare-fun e!3203172 () Bool)

(assert (=> b!5135448 (= e!3203170 e!3203172)))

(assert (=> b!5135448 (= c!884013 ((_ is Union!14403) (h!66066 (exprs!4287 ctx!74))))))

(declare-fun b!5135449 () Bool)

(assert (=> b!5135449 (= e!3203172 e!3203168)))

(declare-fun res!2187392 () Bool)

(assert (=> b!5135449 (= res!2187392 call!357786)))

(assert (=> b!5135449 (=> (not res!2187392) (not e!3203168))))

(declare-fun b!5135450 () Bool)

(assert (=> b!5135450 (= e!3203172 e!3203171)))

(declare-fun res!2187391 () Bool)

(assert (=> b!5135450 (= res!2187391 call!357785)))

(assert (=> b!5135450 (=> res!2187391 e!3203171)))

(assert (= (and d!1661677 res!2187393) b!5135444))

(assert (= (and b!5135444 (not res!2187389)) b!5135447))

(assert (= (and b!5135447 res!2187390) b!5135448))

(assert (= (and b!5135448 c!884013) b!5135449))

(assert (= (and b!5135448 (not c!884013)) b!5135450))

(assert (= (and b!5135449 res!2187392) b!5135446))

(assert (= (and b!5135450 (not res!2187391)) b!5135445))

(assert (= (or b!5135449 b!5135445) bm!357781))

(assert (= (or b!5135446 b!5135450) bm!357780))

(declare-fun m!6201056 () Bool)

(assert (=> bm!357780 m!6201056))

(declare-fun m!6201058 () Bool)

(assert (=> bm!357781 m!6201058))

(declare-fun m!6201060 () Bool)

(assert (=> d!1661677 m!6201060))

(assert (=> d!1661677 m!6201060))

(declare-fun m!6201062 () Bool)

(assert (=> d!1661677 m!6201062))

(assert (=> d!1661643 d!1661677))

(declare-fun bs!1199739 () Bool)

(declare-fun d!1661685 () Bool)

(assert (= bs!1199739 (and d!1661685 d!1661623)))

(declare-fun lambda!255792 () Int)

(assert (=> bs!1199739 (not (= lambda!255792 lambda!255750))))

(declare-fun bs!1199740 () Bool)

(assert (= bs!1199740 (and d!1661685 d!1661637)))

(assert (=> bs!1199740 (not (= lambda!255792 lambda!255753))))

(declare-fun bs!1199741 () Bool)

(assert (= bs!1199741 (and d!1661685 d!1661663)))

(assert (=> bs!1199741 (not (= lambda!255792 lambda!255779))))

(assert (=> d!1661685 true))

(declare-fun order!26921 () Int)

(declare-fun dynLambda!23740 (Int Int) Int)

(assert (=> d!1661685 (< (dynLambda!23740 order!26921 lambda!255750) (dynLambda!23740 order!26921 lambda!255792))))

(assert (=> d!1661685 (= (exists!1735 (exprs!4287 ctx!74) lambda!255750) (not (forall!13860 (exprs!4287 ctx!74) lambda!255792)))))

(declare-fun bs!1199742 () Bool)

(assert (= bs!1199742 d!1661685))

(declare-fun m!6201064 () Bool)

(assert (=> bs!1199742 m!6201064))

(assert (=> d!1661623 d!1661685))

(declare-fun d!1661687 () Bool)

(assert (=> d!1661687 (= (nullable!4776 (regOne!29318 (h!66066 (exprs!4287 ctx!74)))) (nullableFct!1299 (regOne!29318 (h!66066 (exprs!4287 ctx!74)))))))

(declare-fun bs!1199743 () Bool)

(assert (= bs!1199743 d!1661687))

(declare-fun m!6201066 () Bool)

(assert (=> bs!1199743 m!6201066))

(assert (=> b!5135402 d!1661687))

(declare-fun d!1661689 () Bool)

(declare-fun res!2187398 () Bool)

(declare-fun e!3203180 () Bool)

(assert (=> d!1661689 (=> res!2187398 e!3203180)))

(assert (=> d!1661689 (= res!2187398 ((_ is Nil!59618) (exprs!4287 lt!2119089)))))

(assert (=> d!1661689 (= (forall!13860 (exprs!4287 lt!2119089) lambda!255779) e!3203180)))

(declare-fun b!5135463 () Bool)

(declare-fun e!3203181 () Bool)

(assert (=> b!5135463 (= e!3203180 e!3203181)))

(declare-fun res!2187399 () Bool)

(assert (=> b!5135463 (=> (not res!2187399) (not e!3203181))))

(declare-fun dynLambda!23741 (Int Regex!14403) Bool)

(assert (=> b!5135463 (= res!2187399 (dynLambda!23741 lambda!255779 (h!66066 (exprs!4287 lt!2119089))))))

(declare-fun b!5135464 () Bool)

(assert (=> b!5135464 (= e!3203181 (forall!13860 (t!372769 (exprs!4287 lt!2119089)) lambda!255779))))

(assert (= (and d!1661689 (not res!2187398)) b!5135463))

(assert (= (and b!5135463 res!2187399) b!5135464))

(declare-fun b_lambda!200075 () Bool)

(assert (=> (not b_lambda!200075) (not b!5135463)))

(declare-fun m!6201068 () Bool)

(assert (=> b!5135463 m!6201068))

(declare-fun m!6201072 () Bool)

(assert (=> b!5135464 m!6201072))

(assert (=> d!1661663 d!1661689))

(assert (=> d!1661657 d!1661643))

(declare-fun d!1661691 () Bool)

(assert (=> d!1661691 (not (lostCause!1366 (h!66066 (exprs!4287 ctx!74))))))

(assert (=> d!1661691 true))

(declare-fun _$98!246 () Unit!150961)

(assert (=> d!1661691 (= (choose!37989 (h!66066 (exprs!4287 ctx!74))) _$98!246)))

(declare-fun bs!1199752 () Bool)

(assert (= bs!1199752 d!1661691))

(assert (=> bs!1199752 m!6200892))

(assert (=> d!1661657 d!1661691))

(declare-fun b!5135504 () Bool)

(declare-fun e!3203216 () Bool)

(declare-fun call!357800 () Bool)

(assert (=> b!5135504 (= e!3203216 call!357800)))

(declare-fun bm!357794 () Bool)

(declare-fun call!357801 () Bool)

(assert (=> bm!357794 (= call!357800 call!357801)))

(declare-fun b!5135505 () Bool)

(declare-fun e!3203218 () Bool)

(declare-fun call!357799 () Bool)

(assert (=> b!5135505 (= e!3203218 call!357799)))

(declare-fun c!884030 () Bool)

(declare-fun bm!357795 () Bool)

(declare-fun c!884031 () Bool)

(assert (=> bm!357795 (= call!357801 (validRegex!6262 (ite c!884031 (reg!14732 (h!66066 (exprs!4287 ctx!74))) (ite c!884030 (regTwo!29319 (h!66066 (exprs!4287 ctx!74))) (regOne!29318 (h!66066 (exprs!4287 ctx!74)))))))))

(declare-fun b!5135506 () Bool)

(declare-fun e!3203214 () Bool)

(assert (=> b!5135506 (= e!3203214 call!357801)))

(declare-fun b!5135507 () Bool)

(declare-fun e!3203220 () Bool)

(declare-fun e!3203219 () Bool)

(assert (=> b!5135507 (= e!3203220 e!3203219)))

(assert (=> b!5135507 (= c!884030 ((_ is Union!14403) (h!66066 (exprs!4287 ctx!74))))))

(declare-fun b!5135508 () Bool)

(declare-fun e!3203217 () Bool)

(assert (=> b!5135508 (= e!3203217 e!3203218)))

(declare-fun res!2187425 () Bool)

(assert (=> b!5135508 (=> (not res!2187425) (not e!3203218))))

(assert (=> b!5135508 (= res!2187425 call!357800)))

(declare-fun b!5135510 () Bool)

(declare-fun res!2187426 () Bool)

(assert (=> b!5135510 (=> (not res!2187426) (not e!3203216))))

(assert (=> b!5135510 (= res!2187426 call!357799)))

(assert (=> b!5135510 (= e!3203219 e!3203216)))

(declare-fun b!5135511 () Bool)

(assert (=> b!5135511 (= e!3203220 e!3203214)))

(declare-fun res!2187427 () Bool)

(assert (=> b!5135511 (= res!2187427 (not (nullable!4776 (reg!14732 (h!66066 (exprs!4287 ctx!74))))))))

(assert (=> b!5135511 (=> (not res!2187427) (not e!3203214))))

(declare-fun bm!357796 () Bool)

(assert (=> bm!357796 (= call!357799 (validRegex!6262 (ite c!884030 (regOne!29319 (h!66066 (exprs!4287 ctx!74))) (regTwo!29318 (h!66066 (exprs!4287 ctx!74))))))))

(declare-fun b!5135512 () Bool)

(declare-fun e!3203215 () Bool)

(assert (=> b!5135512 (= e!3203215 e!3203220)))

(assert (=> b!5135512 (= c!884031 ((_ is Star!14403) (h!66066 (exprs!4287 ctx!74))))))

(declare-fun d!1661695 () Bool)

(declare-fun res!2187429 () Bool)

(assert (=> d!1661695 (=> res!2187429 e!3203215)))

(assert (=> d!1661695 (= res!2187429 ((_ is ElementMatch!14403) (h!66066 (exprs!4287 ctx!74))))))

(assert (=> d!1661695 (= (validRegex!6262 (h!66066 (exprs!4287 ctx!74))) e!3203215)))

(declare-fun b!5135509 () Bool)

(declare-fun res!2187428 () Bool)

(assert (=> b!5135509 (=> res!2187428 e!3203217)))

(assert (=> b!5135509 (= res!2187428 (not ((_ is Concat!23248) (h!66066 (exprs!4287 ctx!74)))))))

(assert (=> b!5135509 (= e!3203219 e!3203217)))

(assert (= (and d!1661695 (not res!2187429)) b!5135512))

(assert (= (and b!5135512 c!884031) b!5135511))

(assert (= (and b!5135512 (not c!884031)) b!5135507))

(assert (= (and b!5135511 res!2187427) b!5135506))

(assert (= (and b!5135507 c!884030) b!5135510))

(assert (= (and b!5135507 (not c!884030)) b!5135509))

(assert (= (and b!5135510 res!2187426) b!5135504))

(assert (= (and b!5135509 (not res!2187428)) b!5135508))

(assert (= (and b!5135508 res!2187425) b!5135505))

(assert (= (or b!5135510 b!5135505) bm!357796))

(assert (= (or b!5135504 b!5135508) bm!357794))

(assert (= (or b!5135506 bm!357794) bm!357795))

(declare-fun m!6201090 () Bool)

(assert (=> bm!357795 m!6201090))

(declare-fun m!6201092 () Bool)

(assert (=> b!5135511 m!6201092))

(declare-fun m!6201094 () Bool)

(assert (=> bm!357796 m!6201094))

(assert (=> d!1661657 d!1661695))

(declare-fun d!1661703 () Bool)

(assert (=> d!1661703 (= (isEmpty!32024 (getLanguageWitness!904 (derivationStepZipperUp!89 lt!2119089 a!1252))) (not ((_ is Some!14762) (getLanguageWitness!904 (derivationStepZipperUp!89 lt!2119089 a!1252)))))))

(assert (=> d!1661655 d!1661703))

(declare-fun bs!1199756 () Bool)

(declare-fun d!1661705 () Bool)

(assert (= bs!1199756 (and d!1661705 d!1661655)))

(declare-fun lambda!255802 () Int)

(assert (=> bs!1199756 (not (= lambda!255802 lambda!255776))))

(declare-fun bs!1199757 () Bool)

(assert (= bs!1199757 (and d!1661705 d!1661653)))

(assert (=> bs!1199757 (not (= lambda!255802 lambda!255773))))

(declare-fun bs!1199758 () Bool)

(assert (= bs!1199758 (and d!1661705 b!5135375)))

(assert (=> bs!1199758 (= lambda!255802 lambda!255778)))

(declare-fun bs!1199759 () Bool)

(assert (= bs!1199759 (and d!1661705 b!5135374)))

(assert (=> bs!1199759 (= lambda!255802 lambda!255777)))

(declare-fun bs!1199760 () Bool)

(assert (= bs!1199760 (and d!1661705 b!5135373)))

(assert (=> bs!1199760 (= lambda!255802 lambda!255775)))

(declare-fun bs!1199761 () Bool)

(assert (= bs!1199761 (and d!1661705 b!5135372)))

(assert (=> bs!1199761 (= lambda!255802 lambda!255774)))

(declare-fun lt!2119195 () Option!14763)

(declare-fun isDefined!11530 (Option!14763) Bool)

(declare-fun exists!1739 ((InoxSet Context!7574) Int) Bool)

(assert (=> d!1661705 (= (isDefined!11530 lt!2119195) (exists!1739 (derivationStepZipperUp!89 lt!2119089 a!1252) lambda!255802))))

(declare-fun e!3203244 () Option!14763)

(assert (=> d!1661705 (= lt!2119195 e!3203244)))

(declare-fun c!884046 () Bool)

(assert (=> d!1661705 (= c!884046 (exists!1739 (derivationStepZipperUp!89 lt!2119089 a!1252) lambda!255802))))

(assert (=> d!1661705 (= (getLanguageWitness!904 (derivationStepZipperUp!89 lt!2119089 a!1252)) lt!2119195)))

(declare-fun b!5135544 () Bool)

(declare-fun getLanguageWitness!907 (Context!7574) Option!14763)

(declare-fun getWitness!833 ((InoxSet Context!7574) Int) Context!7574)

(assert (=> b!5135544 (= e!3203244 (getLanguageWitness!907 (getWitness!833 (derivationStepZipperUp!89 lt!2119089 a!1252) lambda!255802)))))

(declare-fun b!5135545 () Bool)

(assert (=> b!5135545 (= e!3203244 None!14762)))

(assert (= (and d!1661705 c!884046) b!5135544))

(assert (= (and d!1661705 (not c!884046)) b!5135545))

(declare-fun m!6201102 () Bool)

(assert (=> d!1661705 m!6201102))

(assert (=> d!1661705 m!6200884))

(declare-fun m!6201104 () Bool)

(assert (=> d!1661705 m!6201104))

(assert (=> d!1661705 m!6200884))

(assert (=> d!1661705 m!6201104))

(assert (=> b!5135544 m!6200884))

(declare-fun m!6201106 () Bool)

(assert (=> b!5135544 m!6201106))

(assert (=> b!5135544 m!6201106))

(declare-fun m!6201108 () Bool)

(assert (=> b!5135544 m!6201108))

(assert (=> d!1661655 d!1661705))

(declare-fun d!1661711 () Bool)

(declare-fun lt!2119198 () Bool)

(declare-fun forall!13863 (List!59745 Int) Bool)

(assert (=> d!1661711 (= lt!2119198 (forall!13863 (toList!8366 (derivationStepZipperUp!89 lt!2119089 a!1252)) lambda!255776))))

(declare-fun choose!37995 ((InoxSet Context!7574) Int) Bool)

(assert (=> d!1661711 (= lt!2119198 (choose!37995 (derivationStepZipperUp!89 lt!2119089 a!1252) lambda!255776))))

(assert (=> d!1661711 (= (forall!13861 (derivationStepZipperUp!89 lt!2119089 a!1252) lambda!255776) lt!2119198)))

(declare-fun bs!1199762 () Bool)

(assert (= bs!1199762 d!1661711))

(assert (=> bs!1199762 m!6200884))

(assert (=> bs!1199762 m!6201006))

(assert (=> bs!1199762 m!6201006))

(declare-fun m!6201120 () Bool)

(assert (=> bs!1199762 m!6201120))

(assert (=> bs!1199762 m!6200884))

(declare-fun m!6201122 () Bool)

(assert (=> bs!1199762 m!6201122))

(assert (=> d!1661655 d!1661711))

(declare-fun d!1661715 () Bool)

(assert (=> d!1661715 (= (isEmpty!32024 (getLanguageWitness!904 (derivationStepZipperDown!112 (h!66066 (exprs!4287 ctx!74)) lt!2119089 a!1252))) (not ((_ is Some!14762) (getLanguageWitness!904 (derivationStepZipperDown!112 (h!66066 (exprs!4287 ctx!74)) lt!2119089 a!1252)))))))

(assert (=> d!1661653 d!1661715))

(declare-fun bs!1199763 () Bool)

(declare-fun d!1661717 () Bool)

(assert (= bs!1199763 (and d!1661717 d!1661655)))

(declare-fun lambda!255803 () Int)

(assert (=> bs!1199763 (not (= lambda!255803 lambda!255776))))

(declare-fun bs!1199764 () Bool)

(assert (= bs!1199764 (and d!1661717 d!1661653)))

(assert (=> bs!1199764 (not (= lambda!255803 lambda!255773))))

(declare-fun bs!1199765 () Bool)

(assert (= bs!1199765 (and d!1661717 b!5135375)))

(assert (=> bs!1199765 (= lambda!255803 lambda!255778)))

(declare-fun bs!1199766 () Bool)

(assert (= bs!1199766 (and d!1661717 b!5135374)))

(assert (=> bs!1199766 (= lambda!255803 lambda!255777)))

(declare-fun bs!1199767 () Bool)

(assert (= bs!1199767 (and d!1661717 d!1661705)))

(assert (=> bs!1199767 (= lambda!255803 lambda!255802)))

(declare-fun bs!1199768 () Bool)

(assert (= bs!1199768 (and d!1661717 b!5135373)))

(assert (=> bs!1199768 (= lambda!255803 lambda!255775)))

(declare-fun bs!1199769 () Bool)

(assert (= bs!1199769 (and d!1661717 b!5135372)))

(assert (=> bs!1199769 (= lambda!255803 lambda!255774)))

(declare-fun lt!2119199 () Option!14763)

(assert (=> d!1661717 (= (isDefined!11530 lt!2119199) (exists!1739 (derivationStepZipperDown!112 (h!66066 (exprs!4287 ctx!74)) lt!2119089 a!1252) lambda!255803))))

(declare-fun e!3203251 () Option!14763)

(assert (=> d!1661717 (= lt!2119199 e!3203251)))

(declare-fun c!884052 () Bool)

(assert (=> d!1661717 (= c!884052 (exists!1739 (derivationStepZipperDown!112 (h!66066 (exprs!4287 ctx!74)) lt!2119089 a!1252) lambda!255803))))

(assert (=> d!1661717 (= (getLanguageWitness!904 (derivationStepZipperDown!112 (h!66066 (exprs!4287 ctx!74)) lt!2119089 a!1252)) lt!2119199)))

(declare-fun b!5135557 () Bool)

(assert (=> b!5135557 (= e!3203251 (getLanguageWitness!907 (getWitness!833 (derivationStepZipperDown!112 (h!66066 (exprs!4287 ctx!74)) lt!2119089 a!1252) lambda!255803)))))

(declare-fun b!5135558 () Bool)

(assert (=> b!5135558 (= e!3203251 None!14762)))

(assert (= (and d!1661717 c!884052) b!5135557))

(assert (= (and d!1661717 (not c!884052)) b!5135558))

(declare-fun m!6201124 () Bool)

(assert (=> d!1661717 m!6201124))

(assert (=> d!1661717 m!6200880))

(declare-fun m!6201126 () Bool)

(assert (=> d!1661717 m!6201126))

(assert (=> d!1661717 m!6200880))

(assert (=> d!1661717 m!6201126))

(assert (=> b!5135557 m!6200880))

(declare-fun m!6201128 () Bool)

(assert (=> b!5135557 m!6201128))

(assert (=> b!5135557 m!6201128))

(declare-fun m!6201130 () Bool)

(assert (=> b!5135557 m!6201130))

(assert (=> d!1661653 d!1661717))

(declare-fun d!1661719 () Bool)

(declare-fun lt!2119200 () Bool)

(assert (=> d!1661719 (= lt!2119200 (forall!13863 (toList!8366 (derivationStepZipperDown!112 (h!66066 (exprs!4287 ctx!74)) lt!2119089 a!1252)) lambda!255773))))

(assert (=> d!1661719 (= lt!2119200 (choose!37995 (derivationStepZipperDown!112 (h!66066 (exprs!4287 ctx!74)) lt!2119089 a!1252) lambda!255773))))

(assert (=> d!1661719 (= (forall!13861 (derivationStepZipperDown!112 (h!66066 (exprs!4287 ctx!74)) lt!2119089 a!1252) lambda!255773) lt!2119200)))

(declare-fun bs!1199770 () Bool)

(assert (= bs!1199770 d!1661719))

(assert (=> bs!1199770 m!6200880))

(assert (=> bs!1199770 m!6200992))

(assert (=> bs!1199770 m!6200992))

(declare-fun m!6201132 () Bool)

(assert (=> bs!1199770 m!6201132))

(assert (=> bs!1199770 m!6200880))

(declare-fun m!6201134 () Bool)

(assert (=> bs!1199770 m!6201134))

(assert (=> d!1661653 d!1661719))

(declare-fun d!1661721 () Bool)

(declare-fun res!2187446 () Bool)

(declare-fun e!3203252 () Bool)

(assert (=> d!1661721 (=> res!2187446 e!3203252)))

(assert (=> d!1661721 (= res!2187446 ((_ is Nil!59618) (exprs!4287 ctx!74)))))

(assert (=> d!1661721 (= (forall!13860 (exprs!4287 ctx!74) lambda!255753) e!3203252)))

(declare-fun b!5135559 () Bool)

(declare-fun e!3203253 () Bool)

(assert (=> b!5135559 (= e!3203252 e!3203253)))

(declare-fun res!2187447 () Bool)

(assert (=> b!5135559 (=> (not res!2187447) (not e!3203253))))

(assert (=> b!5135559 (= res!2187447 (dynLambda!23741 lambda!255753 (h!66066 (exprs!4287 ctx!74))))))

(declare-fun b!5135560 () Bool)

(assert (=> b!5135560 (= e!3203253 (forall!13860 (t!372769 (exprs!4287 ctx!74)) lambda!255753))))

(assert (= (and d!1661721 (not res!2187446)) b!5135559))

(assert (= (and b!5135559 res!2187447) b!5135560))

(declare-fun b_lambda!200077 () Bool)

(assert (=> (not b_lambda!200077) (not b!5135559)))

(declare-fun m!6201136 () Bool)

(assert (=> b!5135559 m!6201136))

(declare-fun m!6201138 () Bool)

(assert (=> b!5135560 m!6201138))

(assert (=> d!1661637 d!1661721))

(declare-fun bs!1199775 () Bool)

(declare-fun d!1661723 () Bool)

(assert (= bs!1199775 (and d!1661723 d!1661655)))

(declare-fun lambda!255807 () Int)

(assert (=> bs!1199775 (not (= lambda!255807 lambda!255776))))

(declare-fun bs!1199777 () Bool)

(assert (= bs!1199777 (and d!1661723 d!1661653)))

(assert (=> bs!1199777 (not (= lambda!255807 lambda!255773))))

(declare-fun bs!1199778 () Bool)

(assert (= bs!1199778 (and d!1661723 b!5135375)))

(assert (=> bs!1199778 (not (= lambda!255807 lambda!255778))))

(declare-fun bs!1199779 () Bool)

(assert (= bs!1199779 (and d!1661723 d!1661717)))

(assert (=> bs!1199779 (not (= lambda!255807 lambda!255803))))

(declare-fun bs!1199780 () Bool)

(assert (= bs!1199780 (and d!1661723 b!5135374)))

(assert (=> bs!1199780 (not (= lambda!255807 lambda!255777))))

(declare-fun bs!1199781 () Bool)

(assert (= bs!1199781 (and d!1661723 d!1661705)))

(assert (=> bs!1199781 (not (= lambda!255807 lambda!255802))))

(declare-fun bs!1199782 () Bool)

(assert (= bs!1199782 (and d!1661723 b!5135373)))

(assert (=> bs!1199782 (not (= lambda!255807 lambda!255775))))

(declare-fun bs!1199783 () Bool)

(assert (= bs!1199783 (and d!1661723 b!5135372)))

(assert (=> bs!1199783 (not (= lambda!255807 lambda!255774))))

(assert (=> d!1661723 true))

(declare-fun order!26923 () Int)

(declare-fun dynLambda!23742 (Int Int) Int)

(assert (=> d!1661723 (< (dynLambda!23742 order!26923 (ite c!883992 lambda!255774 lambda!255775)) (dynLambda!23742 order!26923 lambda!255807))))

(assert (=> d!1661723 (= (exists!1737 (ite c!883992 lt!2119154 lt!2119159) (ite c!883992 lambda!255774 lambda!255775)) (not (forall!13863 (ite c!883992 lt!2119154 lt!2119159) lambda!255807)))))

(declare-fun bs!1199784 () Bool)

(assert (= bs!1199784 d!1661723))

(declare-fun m!6201142 () Bool)

(assert (=> bs!1199784 m!6201142))

(assert (=> bm!357754 d!1661723))

(assert (=> d!1661639 d!1661655))

(assert (=> d!1661639 d!1661647))

(declare-fun d!1661729 () Bool)

(assert (=> d!1661729 (lostCauseZipper!1231 (derivationStepZipperUp!89 lt!2119089 a!1252))))

(assert (=> d!1661729 true))

(declare-fun _$38!419 () Unit!150961)

(assert (=> d!1661729 (= (choose!37988 lt!2119089 a!1252) _$38!419)))

(declare-fun bs!1199804 () Bool)

(assert (= bs!1199804 d!1661729))

(assert (=> bs!1199804 m!6200884))

(assert (=> bs!1199804 m!6200884))

(assert (=> bs!1199804 m!6200886))

(assert (=> d!1661639 d!1661729))

(declare-fun bs!1199807 () Bool)

(declare-fun d!1661739 () Bool)

(assert (= bs!1199807 (and d!1661739 d!1661623)))

(declare-fun lambda!255812 () Int)

(assert (=> bs!1199807 (= lambda!255812 lambda!255750)))

(declare-fun bs!1199808 () Bool)

(assert (= bs!1199808 (and d!1661739 d!1661637)))

(assert (=> bs!1199808 (not (= lambda!255812 lambda!255753))))

(declare-fun bs!1199810 () Bool)

(assert (= bs!1199810 (and d!1661739 d!1661663)))

(assert (=> bs!1199810 (not (= lambda!255812 lambda!255779))))

(declare-fun bs!1199811 () Bool)

(assert (= bs!1199811 (and d!1661739 d!1661685)))

(assert (=> bs!1199811 (not (= lambda!255812 lambda!255792))))

(assert (=> d!1661739 (= (lostCause!1367 lt!2119089) (exists!1735 (exprs!4287 lt!2119089) lambda!255812))))

(declare-fun bs!1199812 () Bool)

(assert (= bs!1199812 d!1661739))

(declare-fun m!6201170 () Bool)

(assert (=> bs!1199812 m!6201170))

(assert (=> d!1661639 d!1661739))

(declare-fun d!1661743 () Bool)

(declare-fun e!3203263 () Bool)

(assert (=> d!1661743 e!3203263))

(declare-fun res!2187452 () Bool)

(assert (=> d!1661743 (=> (not res!2187452) (not e!3203263))))

(declare-fun lt!2119205 () List!59745)

(declare-fun noDuplicate!1106 (List!59745) Bool)

(assert (=> d!1661743 (= res!2187452 (noDuplicate!1106 lt!2119205))))

(declare-fun choose!37996 ((InoxSet Context!7574)) List!59745)

(assert (=> d!1661743 (= lt!2119205 (choose!37996 (derivationStepZipperDown!112 (h!66066 (exprs!4287 ctx!74)) lt!2119089 a!1252)))))

(assert (=> d!1661743 (= (toList!8366 (derivationStepZipperDown!112 (h!66066 (exprs!4287 ctx!74)) lt!2119089 a!1252)) lt!2119205)))

(declare-fun b!5135579 () Bool)

(declare-fun content!10583 (List!59745) (InoxSet Context!7574))

(assert (=> b!5135579 (= e!3203263 (= (content!10583 lt!2119205) (derivationStepZipperDown!112 (h!66066 (exprs!4287 ctx!74)) lt!2119089 a!1252)))))

(assert (= (and d!1661743 res!2187452) b!5135579))

(declare-fun m!6201174 () Bool)

(assert (=> d!1661743 m!6201174))

(assert (=> d!1661743 m!6200880))

(declare-fun m!6201176 () Bool)

(assert (=> d!1661743 m!6201176))

(declare-fun m!6201178 () Bool)

(assert (=> b!5135579 m!6201178))

(assert (=> bm!357753 d!1661743))

(declare-fun bs!1199830 () Bool)

(declare-fun d!1661747 () Bool)

(assert (= bs!1199830 (and d!1661747 d!1661655)))

(declare-fun lambda!255819 () Int)

(assert (=> bs!1199830 (not (= lambda!255819 lambda!255776))))

(declare-fun bs!1199831 () Bool)

(assert (= bs!1199831 (and d!1661747 d!1661723)))

(assert (=> bs!1199831 (= (= lambda!255773 (ite c!883992 lambda!255774 lambda!255775)) (= lambda!255819 lambda!255807))))

(declare-fun bs!1199832 () Bool)

(assert (= bs!1199832 (and d!1661747 d!1661653)))

(assert (=> bs!1199832 (not (= lambda!255819 lambda!255773))))

(declare-fun bs!1199833 () Bool)

(assert (= bs!1199833 (and d!1661747 b!5135375)))

(assert (=> bs!1199833 (not (= lambda!255819 lambda!255778))))

(declare-fun bs!1199834 () Bool)

(assert (= bs!1199834 (and d!1661747 d!1661717)))

(assert (=> bs!1199834 (not (= lambda!255819 lambda!255803))))

(declare-fun bs!1199835 () Bool)

(assert (= bs!1199835 (and d!1661747 b!5135374)))

(assert (=> bs!1199835 (not (= lambda!255819 lambda!255777))))

(declare-fun bs!1199837 () Bool)

(assert (= bs!1199837 (and d!1661747 d!1661705)))

(assert (=> bs!1199837 (not (= lambda!255819 lambda!255802))))

(declare-fun bs!1199839 () Bool)

(assert (= bs!1199839 (and d!1661747 b!5135373)))

(assert (=> bs!1199839 (not (= lambda!255819 lambda!255775))))

(declare-fun bs!1199841 () Bool)

(assert (= bs!1199841 (and d!1661747 b!5135372)))

(assert (=> bs!1199841 (not (= lambda!255819 lambda!255774))))

(assert (=> d!1661747 true))

(assert (=> d!1661747 (< (dynLambda!23742 order!26923 lambda!255773) (dynLambda!23742 order!26923 lambda!255819))))

(assert (=> d!1661747 (exists!1737 lt!2119154 lambda!255819)))

(declare-fun lt!2119209 () Unit!150961)

(declare-fun choose!37997 (List!59745 Int) Unit!150961)

(assert (=> d!1661747 (= lt!2119209 (choose!37997 lt!2119154 lambda!255773))))

(assert (=> d!1661747 (not (forall!13863 lt!2119154 lambda!255773))))

(assert (=> d!1661747 (= (lemmaNotForallThenExists!414 lt!2119154 lambda!255773) lt!2119209)))

(declare-fun bs!1199846 () Bool)

(assert (= bs!1199846 d!1661747))

(declare-fun m!6201196 () Bool)

(assert (=> bs!1199846 m!6201196))

(declare-fun m!6201198 () Bool)

(assert (=> bs!1199846 m!6201198))

(declare-fun m!6201200 () Bool)

(assert (=> bs!1199846 m!6201200))

(assert (=> b!5135372 d!1661747))

(declare-fun bs!1199852 () Bool)

(declare-fun d!1661755 () Bool)

(assert (= bs!1199852 (and d!1661755 d!1661655)))

(declare-fun lambda!255821 () Int)

(assert (=> bs!1199852 (not (= lambda!255821 lambda!255776))))

(declare-fun bs!1199853 () Bool)

(assert (= bs!1199853 (and d!1661755 d!1661723)))

(assert (=> bs!1199853 (= (= (ite c!883993 lambda!255777 lambda!255778) (ite c!883992 lambda!255774 lambda!255775)) (= lambda!255821 lambda!255807))))

(declare-fun bs!1199854 () Bool)

(assert (= bs!1199854 (and d!1661755 d!1661653)))

(assert (=> bs!1199854 (not (= lambda!255821 lambda!255773))))

(declare-fun bs!1199855 () Bool)

(assert (= bs!1199855 (and d!1661755 b!5135375)))

(assert (=> bs!1199855 (not (= lambda!255821 lambda!255778))))

(declare-fun bs!1199856 () Bool)

(assert (= bs!1199856 (and d!1661755 d!1661717)))

(assert (=> bs!1199856 (not (= lambda!255821 lambda!255803))))

(declare-fun bs!1199857 () Bool)

(assert (= bs!1199857 (and d!1661755 b!5135374)))

(assert (=> bs!1199857 (not (= lambda!255821 lambda!255777))))

(declare-fun bs!1199858 () Bool)

(assert (= bs!1199858 (and d!1661755 d!1661747)))

(assert (=> bs!1199858 (= (= (ite c!883993 lambda!255777 lambda!255778) lambda!255773) (= lambda!255821 lambda!255819))))

(declare-fun bs!1199859 () Bool)

(assert (= bs!1199859 (and d!1661755 d!1661705)))

(assert (=> bs!1199859 (not (= lambda!255821 lambda!255802))))

(declare-fun bs!1199860 () Bool)

(assert (= bs!1199860 (and d!1661755 b!5135373)))

(assert (=> bs!1199860 (not (= lambda!255821 lambda!255775))))

(declare-fun bs!1199861 () Bool)

(assert (= bs!1199861 (and d!1661755 b!5135372)))

(assert (=> bs!1199861 (not (= lambda!255821 lambda!255774))))

(assert (=> d!1661755 true))

(assert (=> d!1661755 (< (dynLambda!23742 order!26923 (ite c!883993 lambda!255777 lambda!255778)) (dynLambda!23742 order!26923 lambda!255821))))

(assert (=> d!1661755 (= (exists!1737 (ite c!883993 lt!2119162 lt!2119167) (ite c!883993 lambda!255777 lambda!255778)) (not (forall!13863 (ite c!883993 lt!2119162 lt!2119167) lambda!255821)))))

(declare-fun bs!1199863 () Bool)

(assert (= bs!1199863 d!1661755))

(declare-fun m!6201210 () Bool)

(assert (=> bs!1199863 m!6201210))

(assert (=> bm!357756 d!1661755))

(declare-fun bs!1199864 () Bool)

(declare-fun d!1661759 () Bool)

(assert (= bs!1199864 (and d!1661759 d!1661755)))

(declare-fun lambda!255824 () Int)

(assert (=> bs!1199864 (= (= lambda!255773 (ite c!883993 lambda!255777 lambda!255778)) (= lambda!255824 lambda!255821))))

(declare-fun bs!1199865 () Bool)

(assert (= bs!1199865 (and d!1661759 d!1661655)))

(assert (=> bs!1199865 (not (= lambda!255824 lambda!255776))))

(declare-fun bs!1199866 () Bool)

(assert (= bs!1199866 (and d!1661759 d!1661723)))

(assert (=> bs!1199866 (= (= lambda!255773 (ite c!883992 lambda!255774 lambda!255775)) (= lambda!255824 lambda!255807))))

(declare-fun bs!1199867 () Bool)

(assert (= bs!1199867 (and d!1661759 d!1661653)))

(assert (=> bs!1199867 (not (= lambda!255824 lambda!255773))))

(declare-fun bs!1199868 () Bool)

(assert (= bs!1199868 (and d!1661759 b!5135375)))

(assert (=> bs!1199868 (not (= lambda!255824 lambda!255778))))

(declare-fun bs!1199869 () Bool)

(assert (= bs!1199869 (and d!1661759 d!1661717)))

(assert (=> bs!1199869 (not (= lambda!255824 lambda!255803))))

(declare-fun bs!1199870 () Bool)

(assert (= bs!1199870 (and d!1661759 b!5135374)))

(assert (=> bs!1199870 (not (= lambda!255824 lambda!255777))))

(declare-fun bs!1199871 () Bool)

(assert (= bs!1199871 (and d!1661759 d!1661747)))

(assert (=> bs!1199871 (= lambda!255824 lambda!255819)))

(declare-fun bs!1199872 () Bool)

(assert (= bs!1199872 (and d!1661759 d!1661705)))

(assert (=> bs!1199872 (not (= lambda!255824 lambda!255802))))

(declare-fun bs!1199873 () Bool)

(assert (= bs!1199873 (and d!1661759 b!5135373)))

(assert (=> bs!1199873 (not (= lambda!255824 lambda!255775))))

(declare-fun bs!1199874 () Bool)

(assert (= bs!1199874 (and d!1661759 b!5135372)))

(assert (=> bs!1199874 (not (= lambda!255824 lambda!255774))))

(assert (=> d!1661759 true))

(assert (=> d!1661759 (< (dynLambda!23742 order!26923 lambda!255773) (dynLambda!23742 order!26923 lambda!255824))))

(assert (=> d!1661759 (not (exists!1737 lt!2119159 lambda!255824))))

(declare-fun lt!2119214 () Unit!150961)

(declare-fun choose!37998 (List!59745 Int) Unit!150961)

(assert (=> d!1661759 (= lt!2119214 (choose!37998 lt!2119159 lambda!255773))))

(assert (=> d!1661759 (forall!13863 lt!2119159 lambda!255773)))

(assert (=> d!1661759 (= (lemmaForallThenNotExists!381 lt!2119159 lambda!255773) lt!2119214)))

(declare-fun bs!1199875 () Bool)

(assert (= bs!1199875 d!1661759))

(declare-fun m!6201216 () Bool)

(assert (=> bs!1199875 m!6201216))

(declare-fun m!6201218 () Bool)

(assert (=> bs!1199875 m!6201218))

(declare-fun m!6201220 () Bool)

(assert (=> bs!1199875 m!6201220))

(assert (=> b!5135373 d!1661759))

(assert (=> d!1661659 d!1661653))

(assert (=> d!1661659 d!1661661))

(declare-fun d!1661763 () Bool)

(assert (=> d!1661763 (lostCauseZipper!1231 (derivationStepZipperDown!112 (h!66066 (exprs!4287 ctx!74)) lt!2119089 a!1252))))

(assert (=> d!1661763 true))

(declare-fun _$39!526 () Unit!150961)

(assert (=> d!1661763 (= (choose!37990 (h!66066 (exprs!4287 ctx!74)) lt!2119089 a!1252) _$39!526)))

(declare-fun bs!1199876 () Bool)

(assert (= bs!1199876 d!1661763))

(assert (=> bs!1199876 m!6200880))

(assert (=> bs!1199876 m!6200880))

(assert (=> bs!1199876 m!6200882))

(assert (=> d!1661659 d!1661763))

(assert (=> d!1661659 d!1661695))

(declare-fun b!5135630 () Bool)

(declare-fun e!3203312 () Bool)

(declare-fun e!3203307 () Bool)

(assert (=> b!5135630 (= e!3203312 e!3203307)))

(declare-fun c!884069 () Bool)

(assert (=> b!5135630 (= c!884069 ((_ is Union!14403) (h!66066 (exprs!4287 ctx!74))))))

(declare-fun b!5135631 () Bool)

(declare-fun e!3203308 () Bool)

(assert (=> b!5135631 (= e!3203308 e!3203312)))

(declare-fun res!2187484 () Bool)

(assert (=> b!5135631 (=> res!2187484 e!3203312)))

(assert (=> b!5135631 (= res!2187484 ((_ is Star!14403) (h!66066 (exprs!4287 ctx!74))))))

(declare-fun bm!357834 () Bool)

(declare-fun call!357839 () Bool)

(assert (=> bm!357834 (= call!357839 (nullable!4776 (ite c!884069 (regOne!29319 (h!66066 (exprs!4287 ctx!74))) (regOne!29318 (h!66066 (exprs!4287 ctx!74))))))))

(declare-fun bm!357835 () Bool)

(declare-fun call!357840 () Bool)

(assert (=> bm!357835 (= call!357840 (nullable!4776 (ite c!884069 (regTwo!29319 (h!66066 (exprs!4287 ctx!74))) (regTwo!29318 (h!66066 (exprs!4287 ctx!74))))))))

(declare-fun b!5135633 () Bool)

(declare-fun e!3203311 () Bool)

(assert (=> b!5135633 (= e!3203307 e!3203311)))

(declare-fun res!2187482 () Bool)

(assert (=> b!5135633 (= res!2187482 call!357839)))

(assert (=> b!5135633 (=> res!2187482 e!3203311)))

(declare-fun b!5135634 () Bool)

(declare-fun e!3203309 () Bool)

(assert (=> b!5135634 (= e!3203309 call!357840)))

(declare-fun b!5135635 () Bool)

(declare-fun e!3203310 () Bool)

(assert (=> b!5135635 (= e!3203310 e!3203308)))

(declare-fun res!2187485 () Bool)

(assert (=> b!5135635 (=> (not res!2187485) (not e!3203308))))

(assert (=> b!5135635 (= res!2187485 (and (not ((_ is EmptyLang!14403) (h!66066 (exprs!4287 ctx!74)))) (not ((_ is ElementMatch!14403) (h!66066 (exprs!4287 ctx!74))))))))

(declare-fun b!5135636 () Bool)

(assert (=> b!5135636 (= e!3203311 call!357840)))

(declare-fun b!5135632 () Bool)

(assert (=> b!5135632 (= e!3203307 e!3203309)))

(declare-fun res!2187481 () Bool)

(assert (=> b!5135632 (= res!2187481 call!357839)))

(assert (=> b!5135632 (=> (not res!2187481) (not e!3203309))))

(declare-fun d!1661767 () Bool)

(declare-fun res!2187483 () Bool)

(assert (=> d!1661767 (=> res!2187483 e!3203310)))

(assert (=> d!1661767 (= res!2187483 ((_ is EmptyExpr!14403) (h!66066 (exprs!4287 ctx!74))))))

(assert (=> d!1661767 (= (nullableFct!1299 (h!66066 (exprs!4287 ctx!74))) e!3203310)))

(assert (= (and d!1661767 (not res!2187483)) b!5135635))

(assert (= (and b!5135635 res!2187485) b!5135631))

(assert (= (and b!5135631 (not res!2187484)) b!5135630))

(assert (= (and b!5135630 c!884069) b!5135633))

(assert (= (and b!5135630 (not c!884069)) b!5135632))

(assert (= (and b!5135633 (not res!2187482)) b!5135636))

(assert (= (and b!5135632 res!2187481) b!5135634))

(assert (= (or b!5135636 b!5135634) bm!357835))

(assert (= (or b!5135633 b!5135632) bm!357834))

(declare-fun m!6201236 () Bool)

(assert (=> bm!357834 m!6201236))

(declare-fun m!6201238 () Bool)

(assert (=> bm!357835 m!6201238))

(assert (=> d!1661665 d!1661767))

(declare-fun bs!1199892 () Bool)

(declare-fun d!1661773 () Bool)

(assert (= bs!1199892 (and d!1661773 d!1661755)))

(declare-fun lambda!255826 () Int)

(assert (=> bs!1199892 (= (= lambda!255776 (ite c!883993 lambda!255777 lambda!255778)) (= lambda!255826 lambda!255821))))

(declare-fun bs!1199893 () Bool)

(assert (= bs!1199893 (and d!1661773 d!1661655)))

(assert (=> bs!1199893 (not (= lambda!255826 lambda!255776))))

(declare-fun bs!1199894 () Bool)

(assert (= bs!1199894 (and d!1661773 d!1661723)))

(assert (=> bs!1199894 (= (= lambda!255776 (ite c!883992 lambda!255774 lambda!255775)) (= lambda!255826 lambda!255807))))

(declare-fun bs!1199895 () Bool)

(assert (= bs!1199895 (and d!1661773 d!1661653)))

(assert (=> bs!1199895 (not (= lambda!255826 lambda!255773))))

(declare-fun bs!1199896 () Bool)

(assert (= bs!1199896 (and d!1661773 d!1661759)))

(assert (=> bs!1199896 (= (= lambda!255776 lambda!255773) (= lambda!255826 lambda!255824))))

(declare-fun bs!1199897 () Bool)

(assert (= bs!1199897 (and d!1661773 b!5135375)))

(assert (=> bs!1199897 (not (= lambda!255826 lambda!255778))))

(declare-fun bs!1199898 () Bool)

(assert (= bs!1199898 (and d!1661773 d!1661717)))

(assert (=> bs!1199898 (not (= lambda!255826 lambda!255803))))

(declare-fun bs!1199899 () Bool)

(assert (= bs!1199899 (and d!1661773 b!5135374)))

(assert (=> bs!1199899 (not (= lambda!255826 lambda!255777))))

(declare-fun bs!1199900 () Bool)

(assert (= bs!1199900 (and d!1661773 d!1661747)))

(assert (=> bs!1199900 (= (= lambda!255776 lambda!255773) (= lambda!255826 lambda!255819))))

(declare-fun bs!1199901 () Bool)

(assert (= bs!1199901 (and d!1661773 d!1661705)))

(assert (=> bs!1199901 (not (= lambda!255826 lambda!255802))))

(declare-fun bs!1199902 () Bool)

(assert (= bs!1199902 (and d!1661773 b!5135373)))

(assert (=> bs!1199902 (not (= lambda!255826 lambda!255775))))

(declare-fun bs!1199903 () Bool)

(assert (= bs!1199903 (and d!1661773 b!5135372)))

(assert (=> bs!1199903 (not (= lambda!255826 lambda!255774))))

(assert (=> d!1661773 true))

(assert (=> d!1661773 (< (dynLambda!23742 order!26923 lambda!255776) (dynLambda!23742 order!26923 lambda!255826))))

(assert (=> d!1661773 (not (exists!1737 lt!2119167 lambda!255826))))

(declare-fun lt!2119218 () Unit!150961)

(assert (=> d!1661773 (= lt!2119218 (choose!37998 lt!2119167 lambda!255776))))

(assert (=> d!1661773 (forall!13863 lt!2119167 lambda!255776)))

(assert (=> d!1661773 (= (lemmaForallThenNotExists!381 lt!2119167 lambda!255776) lt!2119218)))

(declare-fun bs!1199906 () Bool)

(assert (= bs!1199906 d!1661773))

(declare-fun m!6201240 () Bool)

(assert (=> bs!1199906 m!6201240))

(declare-fun m!6201242 () Bool)

(assert (=> bs!1199906 m!6201242))

(declare-fun m!6201246 () Bool)

(assert (=> bs!1199906 m!6201246))

(assert (=> b!5135375 d!1661773))

(declare-fun d!1661779 () Bool)

(assert (=> d!1661779 (= ($colon$colon!1163 (exprs!4287 lt!2119089) (ite (or c!884004 c!884007) (regTwo!29318 (h!66066 (exprs!4287 ctx!74))) (h!66066 (exprs!4287 ctx!74)))) (Cons!59618 (ite (or c!884004 c!884007) (regTwo!29318 (h!66066 (exprs!4287 ctx!74))) (h!66066 (exprs!4287 ctx!74))) (exprs!4287 lt!2119089)))))

(assert (=> bm!357773 d!1661779))

(declare-fun d!1661781 () Bool)

(declare-fun e!3203317 () Bool)

(assert (=> d!1661781 e!3203317))

(declare-fun res!2187486 () Bool)

(assert (=> d!1661781 (=> (not res!2187486) (not e!3203317))))

(declare-fun lt!2119219 () List!59745)

(assert (=> d!1661781 (= res!2187486 (noDuplicate!1106 lt!2119219))))

(assert (=> d!1661781 (= lt!2119219 (choose!37996 (derivationStepZipperUp!89 lt!2119089 a!1252)))))

(assert (=> d!1661781 (= (toList!8366 (derivationStepZipperUp!89 lt!2119089 a!1252)) lt!2119219)))

(declare-fun b!5135652 () Bool)

(assert (=> b!5135652 (= e!3203317 (= (content!10583 lt!2119219) (derivationStepZipperUp!89 lt!2119089 a!1252)))))

(assert (= (and d!1661781 res!2187486) b!5135652))

(declare-fun m!6201248 () Bool)

(assert (=> d!1661781 m!6201248))

(assert (=> d!1661781 m!6200884))

(declare-fun m!6201250 () Bool)

(assert (=> d!1661781 m!6201250))

(declare-fun m!6201252 () Bool)

(assert (=> b!5135652 m!6201252))

(assert (=> bm!357755 d!1661781))

(declare-fun bm!357836 () Bool)

(declare-fun call!357846 () (InoxSet Context!7574))

(declare-fun call!357843 () (InoxSet Context!7574))

(assert (=> bm!357836 (= call!357846 call!357843)))

(declare-fun b!5135653 () Bool)

(declare-fun e!3203320 () (InoxSet Context!7574))

(declare-fun call!357845 () (InoxSet Context!7574))

(assert (=> b!5135653 (= e!3203320 ((_ map or) call!357845 call!357846))))

(declare-fun b!5135654 () Bool)

(declare-fun e!3203318 () (InoxSet Context!7574))

(assert (=> b!5135654 (= e!3203318 ((as const (Array Context!7574 Bool)) false))))

(declare-fun b!5135655 () Bool)

(declare-fun e!3203322 () (InoxSet Context!7574))

(declare-fun e!3203323 () (InoxSet Context!7574))

(assert (=> b!5135655 (= e!3203322 e!3203323)))

(declare-fun c!884074 () Bool)

(assert (=> b!5135655 (= c!884074 ((_ is Union!14403) (ite c!884008 (regOne!29319 (h!66066 (exprs!4287 ctx!74))) (ite c!884004 (regTwo!29318 (h!66066 (exprs!4287 ctx!74))) (ite c!884007 (regOne!29318 (h!66066 (exprs!4287 ctx!74))) (reg!14732 (h!66066 (exprs!4287 ctx!74))))))))))

(declare-fun b!5135656 () Bool)

(declare-fun e!3203319 () (InoxSet Context!7574))

(assert (=> b!5135656 (= e!3203320 e!3203319)))

(declare-fun c!884073 () Bool)

(assert (=> b!5135656 (= c!884073 ((_ is Concat!23248) (ite c!884008 (regOne!29319 (h!66066 (exprs!4287 ctx!74))) (ite c!884004 (regTwo!29318 (h!66066 (exprs!4287 ctx!74))) (ite c!884007 (regOne!29318 (h!66066 (exprs!4287 ctx!74))) (reg!14732 (h!66066 (exprs!4287 ctx!74))))))))))

(declare-fun e!3203321 () Bool)

(declare-fun b!5135657 () Bool)

(assert (=> b!5135657 (= e!3203321 (nullable!4776 (regOne!29318 (ite c!884008 (regOne!29319 (h!66066 (exprs!4287 ctx!74))) (ite c!884004 (regTwo!29318 (h!66066 (exprs!4287 ctx!74))) (ite c!884007 (regOne!29318 (h!66066 (exprs!4287 ctx!74))) (reg!14732 (h!66066 (exprs!4287 ctx!74)))))))))))

(declare-fun b!5135658 () Bool)

(declare-fun call!357842 () (InoxSet Context!7574))

(assert (=> b!5135658 (= e!3203319 call!357842)))

(declare-fun b!5135660 () Bool)

(assert (=> b!5135660 (= e!3203322 (store ((as const (Array Context!7574 Bool)) false) (ite (or c!884008 c!884004) lt!2119089 (Context!7575 call!357777)) true))))

(declare-fun bm!357837 () Bool)

(assert (=> bm!357837 (= call!357842 call!357846)))

(declare-fun b!5135661 () Bool)

(assert (=> b!5135661 (= e!3203323 ((_ map or) call!357843 call!357845))))

(declare-fun c!884072 () Bool)

(declare-fun b!5135662 () Bool)

(assert (=> b!5135662 (= c!884072 ((_ is Star!14403) (ite c!884008 (regOne!29319 (h!66066 (exprs!4287 ctx!74))) (ite c!884004 (regTwo!29318 (h!66066 (exprs!4287 ctx!74))) (ite c!884007 (regOne!29318 (h!66066 (exprs!4287 ctx!74))) (reg!14732 (h!66066 (exprs!4287 ctx!74))))))))))

(assert (=> b!5135662 (= e!3203319 e!3203318)))

(declare-fun b!5135663 () Bool)

(assert (=> b!5135663 (= e!3203318 call!357842)))

(declare-fun b!5135659 () Bool)

(declare-fun c!884070 () Bool)

(assert (=> b!5135659 (= c!884070 e!3203321)))

(declare-fun res!2187487 () Bool)

(assert (=> b!5135659 (=> (not res!2187487) (not e!3203321))))

(assert (=> b!5135659 (= res!2187487 ((_ is Concat!23248) (ite c!884008 (regOne!29319 (h!66066 (exprs!4287 ctx!74))) (ite c!884004 (regTwo!29318 (h!66066 (exprs!4287 ctx!74))) (ite c!884007 (regOne!29318 (h!66066 (exprs!4287 ctx!74))) (reg!14732 (h!66066 (exprs!4287 ctx!74))))))))))

(assert (=> b!5135659 (= e!3203323 e!3203320)))

(declare-fun d!1661783 () Bool)

(declare-fun c!884071 () Bool)

(assert (=> d!1661783 (= c!884071 (and ((_ is ElementMatch!14403) (ite c!884008 (regOne!29319 (h!66066 (exprs!4287 ctx!74))) (ite c!884004 (regTwo!29318 (h!66066 (exprs!4287 ctx!74))) (ite c!884007 (regOne!29318 (h!66066 (exprs!4287 ctx!74))) (reg!14732 (h!66066 (exprs!4287 ctx!74))))))) (= (c!883942 (ite c!884008 (regOne!29319 (h!66066 (exprs!4287 ctx!74))) (ite c!884004 (regTwo!29318 (h!66066 (exprs!4287 ctx!74))) (ite c!884007 (regOne!29318 (h!66066 (exprs!4287 ctx!74))) (reg!14732 (h!66066 (exprs!4287 ctx!74))))))) a!1252)))))

(assert (=> d!1661783 (= (derivationStepZipperDown!112 (ite c!884008 (regOne!29319 (h!66066 (exprs!4287 ctx!74))) (ite c!884004 (regTwo!29318 (h!66066 (exprs!4287 ctx!74))) (ite c!884007 (regOne!29318 (h!66066 (exprs!4287 ctx!74))) (reg!14732 (h!66066 (exprs!4287 ctx!74)))))) (ite (or c!884008 c!884004) lt!2119089 (Context!7575 call!357777)) a!1252) e!3203322)))

(declare-fun bm!357838 () Bool)

(declare-fun call!357844 () List!59742)

(assert (=> bm!357838 (= call!357843 (derivationStepZipperDown!112 (ite c!884074 (regOne!29319 (ite c!884008 (regOne!29319 (h!66066 (exprs!4287 ctx!74))) (ite c!884004 (regTwo!29318 (h!66066 (exprs!4287 ctx!74))) (ite c!884007 (regOne!29318 (h!66066 (exprs!4287 ctx!74))) (reg!14732 (h!66066 (exprs!4287 ctx!74))))))) (ite c!884070 (regTwo!29318 (ite c!884008 (regOne!29319 (h!66066 (exprs!4287 ctx!74))) (ite c!884004 (regTwo!29318 (h!66066 (exprs!4287 ctx!74))) (ite c!884007 (regOne!29318 (h!66066 (exprs!4287 ctx!74))) (reg!14732 (h!66066 (exprs!4287 ctx!74))))))) (ite c!884073 (regOne!29318 (ite c!884008 (regOne!29319 (h!66066 (exprs!4287 ctx!74))) (ite c!884004 (regTwo!29318 (h!66066 (exprs!4287 ctx!74))) (ite c!884007 (regOne!29318 (h!66066 (exprs!4287 ctx!74))) (reg!14732 (h!66066 (exprs!4287 ctx!74))))))) (reg!14732 (ite c!884008 (regOne!29319 (h!66066 (exprs!4287 ctx!74))) (ite c!884004 (regTwo!29318 (h!66066 (exprs!4287 ctx!74))) (ite c!884007 (regOne!29318 (h!66066 (exprs!4287 ctx!74))) (reg!14732 (h!66066 (exprs!4287 ctx!74)))))))))) (ite (or c!884074 c!884070) (ite (or c!884008 c!884004) lt!2119089 (Context!7575 call!357777)) (Context!7575 call!357844)) a!1252))))

(declare-fun call!357841 () List!59742)

(declare-fun bm!357839 () Bool)

(assert (=> bm!357839 (= call!357845 (derivationStepZipperDown!112 (ite c!884074 (regTwo!29319 (ite c!884008 (regOne!29319 (h!66066 (exprs!4287 ctx!74))) (ite c!884004 (regTwo!29318 (h!66066 (exprs!4287 ctx!74))) (ite c!884007 (regOne!29318 (h!66066 (exprs!4287 ctx!74))) (reg!14732 (h!66066 (exprs!4287 ctx!74))))))) (regOne!29318 (ite c!884008 (regOne!29319 (h!66066 (exprs!4287 ctx!74))) (ite c!884004 (regTwo!29318 (h!66066 (exprs!4287 ctx!74))) (ite c!884007 (regOne!29318 (h!66066 (exprs!4287 ctx!74))) (reg!14732 (h!66066 (exprs!4287 ctx!74)))))))) (ite c!884074 (ite (or c!884008 c!884004) lt!2119089 (Context!7575 call!357777)) (Context!7575 call!357841)) a!1252))))

(declare-fun bm!357840 () Bool)

(assert (=> bm!357840 (= call!357841 ($colon$colon!1163 (exprs!4287 (ite (or c!884008 c!884004) lt!2119089 (Context!7575 call!357777))) (ite (or c!884070 c!884073) (regTwo!29318 (ite c!884008 (regOne!29319 (h!66066 (exprs!4287 ctx!74))) (ite c!884004 (regTwo!29318 (h!66066 (exprs!4287 ctx!74))) (ite c!884007 (regOne!29318 (h!66066 (exprs!4287 ctx!74))) (reg!14732 (h!66066 (exprs!4287 ctx!74))))))) (ite c!884008 (regOne!29319 (h!66066 (exprs!4287 ctx!74))) (ite c!884004 (regTwo!29318 (h!66066 (exprs!4287 ctx!74))) (ite c!884007 (regOne!29318 (h!66066 (exprs!4287 ctx!74))) (reg!14732 (h!66066 (exprs!4287 ctx!74)))))))))))

(declare-fun bm!357841 () Bool)

(assert (=> bm!357841 (= call!357844 call!357841)))

(assert (= (and d!1661783 c!884071) b!5135660))

(assert (= (and d!1661783 (not c!884071)) b!5135655))

(assert (= (and b!5135655 c!884074) b!5135661))

(assert (= (and b!5135655 (not c!884074)) b!5135659))

(assert (= (and b!5135659 res!2187487) b!5135657))

(assert (= (and b!5135659 c!884070) b!5135653))

(assert (= (and b!5135659 (not c!884070)) b!5135656))

(assert (= (and b!5135656 c!884073) b!5135658))

(assert (= (and b!5135656 (not c!884073)) b!5135662))

(assert (= (and b!5135662 c!884072) b!5135663))

(assert (= (and b!5135662 (not c!884072)) b!5135654))

(assert (= (or b!5135658 b!5135663) bm!357841))

(assert (= (or b!5135658 b!5135663) bm!357837))

(assert (= (or b!5135653 bm!357841) bm!357840))

(assert (= (or b!5135653 bm!357837) bm!357836))

(assert (= (or b!5135661 bm!357836) bm!357838))

(assert (= (or b!5135661 b!5135653) bm!357839))

(declare-fun m!6201254 () Bool)

(assert (=> bm!357839 m!6201254))

(declare-fun m!6201256 () Bool)

(assert (=> bm!357838 m!6201256))

(declare-fun m!6201258 () Bool)

(assert (=> b!5135657 m!6201258))

(declare-fun m!6201260 () Bool)

(assert (=> b!5135660 m!6201260))

(declare-fun m!6201262 () Bool)

(assert (=> bm!357840 m!6201262))

(assert (=> bm!357771 d!1661783))

(declare-fun bs!1199907 () Bool)

(declare-fun d!1661785 () Bool)

(assert (= bs!1199907 (and d!1661785 d!1661755)))

(declare-fun lambda!255827 () Int)

(assert (=> bs!1199907 (= (= lambda!255776 (ite c!883993 lambda!255777 lambda!255778)) (= lambda!255827 lambda!255821))))

(declare-fun bs!1199908 () Bool)

(assert (= bs!1199908 (and d!1661785 d!1661655)))

(assert (=> bs!1199908 (not (= lambda!255827 lambda!255776))))

(declare-fun bs!1199909 () Bool)

(assert (= bs!1199909 (and d!1661785 d!1661723)))

(assert (=> bs!1199909 (= (= lambda!255776 (ite c!883992 lambda!255774 lambda!255775)) (= lambda!255827 lambda!255807))))

(declare-fun bs!1199910 () Bool)

(assert (= bs!1199910 (and d!1661785 d!1661653)))

(assert (=> bs!1199910 (not (= lambda!255827 lambda!255773))))

(declare-fun bs!1199911 () Bool)

(assert (= bs!1199911 (and d!1661785 d!1661773)))

(assert (=> bs!1199911 (= lambda!255827 lambda!255826)))

(declare-fun bs!1199912 () Bool)

(assert (= bs!1199912 (and d!1661785 d!1661759)))

(assert (=> bs!1199912 (= (= lambda!255776 lambda!255773) (= lambda!255827 lambda!255824))))

(declare-fun bs!1199913 () Bool)

(assert (= bs!1199913 (and d!1661785 b!5135375)))

(assert (=> bs!1199913 (not (= lambda!255827 lambda!255778))))

(declare-fun bs!1199914 () Bool)

(assert (= bs!1199914 (and d!1661785 d!1661717)))

(assert (=> bs!1199914 (not (= lambda!255827 lambda!255803))))

(declare-fun bs!1199915 () Bool)

(assert (= bs!1199915 (and d!1661785 b!5135374)))

(assert (=> bs!1199915 (not (= lambda!255827 lambda!255777))))

(declare-fun bs!1199916 () Bool)

(assert (= bs!1199916 (and d!1661785 d!1661747)))

(assert (=> bs!1199916 (= (= lambda!255776 lambda!255773) (= lambda!255827 lambda!255819))))

(declare-fun bs!1199917 () Bool)

(assert (= bs!1199917 (and d!1661785 d!1661705)))

(assert (=> bs!1199917 (not (= lambda!255827 lambda!255802))))

(declare-fun bs!1199918 () Bool)

(assert (= bs!1199918 (and d!1661785 b!5135373)))

(assert (=> bs!1199918 (not (= lambda!255827 lambda!255775))))

(declare-fun bs!1199919 () Bool)

(assert (= bs!1199919 (and d!1661785 b!5135372)))

(assert (=> bs!1199919 (not (= lambda!255827 lambda!255774))))

(assert (=> d!1661785 true))

(assert (=> d!1661785 (< (dynLambda!23742 order!26923 lambda!255776) (dynLambda!23742 order!26923 lambda!255827))))

(assert (=> d!1661785 (exists!1737 lt!2119162 lambda!255827)))

(declare-fun lt!2119220 () Unit!150961)

(assert (=> d!1661785 (= lt!2119220 (choose!37997 lt!2119162 lambda!255776))))

(assert (=> d!1661785 (not (forall!13863 lt!2119162 lambda!255776))))

(assert (=> d!1661785 (= (lemmaNotForallThenExists!414 lt!2119162 lambda!255776) lt!2119220)))

(declare-fun bs!1199920 () Bool)

(assert (= bs!1199920 d!1661785))

(declare-fun m!6201264 () Bool)

(assert (=> bs!1199920 m!6201264))

(declare-fun m!6201266 () Bool)

(assert (=> bs!1199920 m!6201266))

(declare-fun m!6201268 () Bool)

(assert (=> bs!1199920 m!6201268))

(assert (=> b!5135374 d!1661785))

(declare-fun bm!357842 () Bool)

(declare-fun call!357852 () (InoxSet Context!7574))

(declare-fun call!357849 () (InoxSet Context!7574))

(assert (=> bm!357842 (= call!357852 call!357849)))

(declare-fun b!5135664 () Bool)

(declare-fun e!3203326 () (InoxSet Context!7574))

(declare-fun call!357851 () (InoxSet Context!7574))

(assert (=> b!5135664 (= e!3203326 ((_ map or) call!357851 call!357852))))

(declare-fun b!5135665 () Bool)

(declare-fun e!3203324 () (InoxSet Context!7574))

(assert (=> b!5135665 (= e!3203324 ((as const (Array Context!7574 Bool)) false))))

(declare-fun b!5135666 () Bool)

(declare-fun e!3203328 () (InoxSet Context!7574))

(declare-fun e!3203329 () (InoxSet Context!7574))

(assert (=> b!5135666 (= e!3203328 e!3203329)))

(declare-fun c!884079 () Bool)

(assert (=> b!5135666 (= c!884079 ((_ is Union!14403) (ite c!884008 (regTwo!29319 (h!66066 (exprs!4287 ctx!74))) (regOne!29318 (h!66066 (exprs!4287 ctx!74))))))))

(declare-fun b!5135667 () Bool)

(declare-fun e!3203325 () (InoxSet Context!7574))

(assert (=> b!5135667 (= e!3203326 e!3203325)))

(declare-fun c!884078 () Bool)

(assert (=> b!5135667 (= c!884078 ((_ is Concat!23248) (ite c!884008 (regTwo!29319 (h!66066 (exprs!4287 ctx!74))) (regOne!29318 (h!66066 (exprs!4287 ctx!74))))))))

(declare-fun b!5135668 () Bool)

(declare-fun e!3203327 () Bool)

(assert (=> b!5135668 (= e!3203327 (nullable!4776 (regOne!29318 (ite c!884008 (regTwo!29319 (h!66066 (exprs!4287 ctx!74))) (regOne!29318 (h!66066 (exprs!4287 ctx!74)))))))))

(declare-fun b!5135669 () Bool)

(declare-fun call!357848 () (InoxSet Context!7574))

(assert (=> b!5135669 (= e!3203325 call!357848)))

(declare-fun b!5135671 () Bool)

(assert (=> b!5135671 (= e!3203328 (store ((as const (Array Context!7574 Bool)) false) (ite c!884008 lt!2119089 (Context!7575 call!357774)) true))))

(declare-fun bm!357843 () Bool)

(assert (=> bm!357843 (= call!357848 call!357852)))

(declare-fun b!5135672 () Bool)

(assert (=> b!5135672 (= e!3203329 ((_ map or) call!357849 call!357851))))

(declare-fun b!5135673 () Bool)

(declare-fun c!884077 () Bool)

(assert (=> b!5135673 (= c!884077 ((_ is Star!14403) (ite c!884008 (regTwo!29319 (h!66066 (exprs!4287 ctx!74))) (regOne!29318 (h!66066 (exprs!4287 ctx!74))))))))

(assert (=> b!5135673 (= e!3203325 e!3203324)))

(declare-fun b!5135674 () Bool)

(assert (=> b!5135674 (= e!3203324 call!357848)))

(declare-fun b!5135670 () Bool)

(declare-fun c!884075 () Bool)

(assert (=> b!5135670 (= c!884075 e!3203327)))

(declare-fun res!2187488 () Bool)

(assert (=> b!5135670 (=> (not res!2187488) (not e!3203327))))

(assert (=> b!5135670 (= res!2187488 ((_ is Concat!23248) (ite c!884008 (regTwo!29319 (h!66066 (exprs!4287 ctx!74))) (regOne!29318 (h!66066 (exprs!4287 ctx!74))))))))

(assert (=> b!5135670 (= e!3203329 e!3203326)))

(declare-fun d!1661787 () Bool)

(declare-fun c!884076 () Bool)

(assert (=> d!1661787 (= c!884076 (and ((_ is ElementMatch!14403) (ite c!884008 (regTwo!29319 (h!66066 (exprs!4287 ctx!74))) (regOne!29318 (h!66066 (exprs!4287 ctx!74))))) (= (c!883942 (ite c!884008 (regTwo!29319 (h!66066 (exprs!4287 ctx!74))) (regOne!29318 (h!66066 (exprs!4287 ctx!74))))) a!1252)))))

(assert (=> d!1661787 (= (derivationStepZipperDown!112 (ite c!884008 (regTwo!29319 (h!66066 (exprs!4287 ctx!74))) (regOne!29318 (h!66066 (exprs!4287 ctx!74)))) (ite c!884008 lt!2119089 (Context!7575 call!357774)) a!1252) e!3203328)))

(declare-fun bm!357844 () Bool)

(declare-fun call!357850 () List!59742)

(assert (=> bm!357844 (= call!357849 (derivationStepZipperDown!112 (ite c!884079 (regOne!29319 (ite c!884008 (regTwo!29319 (h!66066 (exprs!4287 ctx!74))) (regOne!29318 (h!66066 (exprs!4287 ctx!74))))) (ite c!884075 (regTwo!29318 (ite c!884008 (regTwo!29319 (h!66066 (exprs!4287 ctx!74))) (regOne!29318 (h!66066 (exprs!4287 ctx!74))))) (ite c!884078 (regOne!29318 (ite c!884008 (regTwo!29319 (h!66066 (exprs!4287 ctx!74))) (regOne!29318 (h!66066 (exprs!4287 ctx!74))))) (reg!14732 (ite c!884008 (regTwo!29319 (h!66066 (exprs!4287 ctx!74))) (regOne!29318 (h!66066 (exprs!4287 ctx!74)))))))) (ite (or c!884079 c!884075) (ite c!884008 lt!2119089 (Context!7575 call!357774)) (Context!7575 call!357850)) a!1252))))

(declare-fun bm!357845 () Bool)

(declare-fun call!357847 () List!59742)

(assert (=> bm!357845 (= call!357851 (derivationStepZipperDown!112 (ite c!884079 (regTwo!29319 (ite c!884008 (regTwo!29319 (h!66066 (exprs!4287 ctx!74))) (regOne!29318 (h!66066 (exprs!4287 ctx!74))))) (regOne!29318 (ite c!884008 (regTwo!29319 (h!66066 (exprs!4287 ctx!74))) (regOne!29318 (h!66066 (exprs!4287 ctx!74)))))) (ite c!884079 (ite c!884008 lt!2119089 (Context!7575 call!357774)) (Context!7575 call!357847)) a!1252))))

(declare-fun bm!357846 () Bool)

(assert (=> bm!357846 (= call!357847 ($colon$colon!1163 (exprs!4287 (ite c!884008 lt!2119089 (Context!7575 call!357774))) (ite (or c!884075 c!884078) (regTwo!29318 (ite c!884008 (regTwo!29319 (h!66066 (exprs!4287 ctx!74))) (regOne!29318 (h!66066 (exprs!4287 ctx!74))))) (ite c!884008 (regTwo!29319 (h!66066 (exprs!4287 ctx!74))) (regOne!29318 (h!66066 (exprs!4287 ctx!74)))))))))

(declare-fun bm!357847 () Bool)

(assert (=> bm!357847 (= call!357850 call!357847)))

(assert (= (and d!1661787 c!884076) b!5135671))

(assert (= (and d!1661787 (not c!884076)) b!5135666))

(assert (= (and b!5135666 c!884079) b!5135672))

(assert (= (and b!5135666 (not c!884079)) b!5135670))

(assert (= (and b!5135670 res!2187488) b!5135668))

(assert (= (and b!5135670 c!884075) b!5135664))

(assert (= (and b!5135670 (not c!884075)) b!5135667))

(assert (= (and b!5135667 c!884078) b!5135669))

(assert (= (and b!5135667 (not c!884078)) b!5135673))

(assert (= (and b!5135673 c!884077) b!5135674))

(assert (= (and b!5135673 (not c!884077)) b!5135665))

(assert (= (or b!5135669 b!5135674) bm!357847))

(assert (= (or b!5135669 b!5135674) bm!357843))

(assert (= (or b!5135664 bm!357847) bm!357846))

(assert (= (or b!5135664 bm!357843) bm!357842))

(assert (= (or b!5135672 bm!357842) bm!357844))

(assert (= (or b!5135672 b!5135664) bm!357845))

(declare-fun m!6201270 () Bool)

(assert (=> bm!357845 m!6201270))

(declare-fun m!6201272 () Bool)

(assert (=> bm!357844 m!6201272))

(declare-fun m!6201274 () Bool)

(assert (=> b!5135668 m!6201274))

(declare-fun m!6201276 () Bool)

(assert (=> b!5135671 m!6201276))

(declare-fun m!6201278 () Bool)

(assert (=> bm!357846 m!6201278))

(assert (=> bm!357772 d!1661787))

(declare-fun d!1661789 () Bool)

(assert (=> d!1661789 (= (nullable!4776 (h!66066 (exprs!4287 lt!2119089))) (nullableFct!1299 (h!66066 (exprs!4287 lt!2119089))))))

(declare-fun bs!1199921 () Bool)

(assert (= bs!1199921 d!1661789))

(declare-fun m!6201280 () Bool)

(assert (=> bs!1199921 m!6201280))

(assert (=> b!5135363 d!1661789))

(declare-fun b!5135675 () Bool)

(declare-fun e!3203332 () Bool)

(assert (=> b!5135675 (= e!3203332 (nullable!4776 (h!66066 (exprs!4287 (Context!7575 (t!372769 (exprs!4287 lt!2119089)))))))))

(declare-fun bm!357848 () Bool)

(declare-fun call!357853 () (InoxSet Context!7574))

(assert (=> bm!357848 (= call!357853 (derivationStepZipperDown!112 (h!66066 (exprs!4287 (Context!7575 (t!372769 (exprs!4287 lt!2119089))))) (Context!7575 (t!372769 (exprs!4287 (Context!7575 (t!372769 (exprs!4287 lt!2119089)))))) a!1252))))

(declare-fun b!5135676 () Bool)

(declare-fun e!3203331 () (InoxSet Context!7574))

(assert (=> b!5135676 (= e!3203331 ((_ map or) call!357853 (derivationStepZipperUp!89 (Context!7575 (t!372769 (exprs!4287 (Context!7575 (t!372769 (exprs!4287 lt!2119089)))))) a!1252)))))

(declare-fun d!1661791 () Bool)

(declare-fun c!884080 () Bool)

(assert (=> d!1661791 (= c!884080 e!3203332)))

(declare-fun res!2187489 () Bool)

(assert (=> d!1661791 (=> (not res!2187489) (not e!3203332))))

(assert (=> d!1661791 (= res!2187489 ((_ is Cons!59618) (exprs!4287 (Context!7575 (t!372769 (exprs!4287 lt!2119089))))))))

(assert (=> d!1661791 (= (derivationStepZipperUp!89 (Context!7575 (t!372769 (exprs!4287 lt!2119089))) a!1252) e!3203331)))

(declare-fun b!5135677 () Bool)

(declare-fun e!3203330 () (InoxSet Context!7574))

(assert (=> b!5135677 (= e!3203331 e!3203330)))

(declare-fun c!884081 () Bool)

(assert (=> b!5135677 (= c!884081 ((_ is Cons!59618) (exprs!4287 (Context!7575 (t!372769 (exprs!4287 lt!2119089))))))))

(declare-fun b!5135678 () Bool)

(assert (=> b!5135678 (= e!3203330 call!357853)))

(declare-fun b!5135679 () Bool)

(assert (=> b!5135679 (= e!3203330 ((as const (Array Context!7574 Bool)) false))))

(assert (= (and d!1661791 res!2187489) b!5135675))

(assert (= (and d!1661791 c!884080) b!5135676))

(assert (= (and d!1661791 (not c!884080)) b!5135677))

(assert (= (and b!5135677 c!884081) b!5135678))

(assert (= (and b!5135677 (not c!884081)) b!5135679))

(assert (= (or b!5135676 b!5135678) bm!357848))

(declare-fun m!6201282 () Bool)

(assert (=> b!5135675 m!6201282))

(declare-fun m!6201284 () Bool)

(assert (=> bm!357848 m!6201284))

(declare-fun m!6201286 () Bool)

(assert (=> b!5135676 m!6201286))

(assert (=> b!5135364 d!1661791))

(declare-fun bm!357849 () Bool)

(declare-fun call!357859 () (InoxSet Context!7574))

(declare-fun call!357856 () (InoxSet Context!7574))

(assert (=> bm!357849 (= call!357859 call!357856)))

(declare-fun b!5135680 () Bool)

(declare-fun e!3203335 () (InoxSet Context!7574))

(declare-fun call!357858 () (InoxSet Context!7574))

(assert (=> b!5135680 (= e!3203335 ((_ map or) call!357858 call!357859))))

(declare-fun b!5135681 () Bool)

(declare-fun e!3203333 () (InoxSet Context!7574))

(assert (=> b!5135681 (= e!3203333 ((as const (Array Context!7574 Bool)) false))))

(declare-fun b!5135682 () Bool)

(declare-fun e!3203337 () (InoxSet Context!7574))

(declare-fun e!3203338 () (InoxSet Context!7574))

(assert (=> b!5135682 (= e!3203337 e!3203338)))

(declare-fun c!884086 () Bool)

(assert (=> b!5135682 (= c!884086 ((_ is Union!14403) (h!66066 (exprs!4287 lt!2119089))))))

(declare-fun b!5135683 () Bool)

(declare-fun e!3203334 () (InoxSet Context!7574))

(assert (=> b!5135683 (= e!3203335 e!3203334)))

(declare-fun c!884085 () Bool)

(assert (=> b!5135683 (= c!884085 ((_ is Concat!23248) (h!66066 (exprs!4287 lt!2119089))))))

(declare-fun b!5135684 () Bool)

(declare-fun e!3203336 () Bool)

(assert (=> b!5135684 (= e!3203336 (nullable!4776 (regOne!29318 (h!66066 (exprs!4287 lt!2119089)))))))

(declare-fun b!5135685 () Bool)

(declare-fun call!357855 () (InoxSet Context!7574))

(assert (=> b!5135685 (= e!3203334 call!357855)))

(declare-fun b!5135687 () Bool)

(assert (=> b!5135687 (= e!3203337 (store ((as const (Array Context!7574 Bool)) false) (Context!7575 (t!372769 (exprs!4287 lt!2119089))) true))))

(declare-fun bm!357850 () Bool)

(assert (=> bm!357850 (= call!357855 call!357859)))

(declare-fun b!5135688 () Bool)

(assert (=> b!5135688 (= e!3203338 ((_ map or) call!357856 call!357858))))

(declare-fun b!5135689 () Bool)

(declare-fun c!884084 () Bool)

(assert (=> b!5135689 (= c!884084 ((_ is Star!14403) (h!66066 (exprs!4287 lt!2119089))))))

(assert (=> b!5135689 (= e!3203334 e!3203333)))

(declare-fun b!5135690 () Bool)

(assert (=> b!5135690 (= e!3203333 call!357855)))

(declare-fun b!5135686 () Bool)

(declare-fun c!884082 () Bool)

(assert (=> b!5135686 (= c!884082 e!3203336)))

(declare-fun res!2187490 () Bool)

(assert (=> b!5135686 (=> (not res!2187490) (not e!3203336))))

(assert (=> b!5135686 (= res!2187490 ((_ is Concat!23248) (h!66066 (exprs!4287 lt!2119089))))))

(assert (=> b!5135686 (= e!3203338 e!3203335)))

(declare-fun d!1661793 () Bool)

(declare-fun c!884083 () Bool)

(assert (=> d!1661793 (= c!884083 (and ((_ is ElementMatch!14403) (h!66066 (exprs!4287 lt!2119089))) (= (c!883942 (h!66066 (exprs!4287 lt!2119089))) a!1252)))))

(assert (=> d!1661793 (= (derivationStepZipperDown!112 (h!66066 (exprs!4287 lt!2119089)) (Context!7575 (t!372769 (exprs!4287 lt!2119089))) a!1252) e!3203337)))

(declare-fun bm!357851 () Bool)

(declare-fun call!357857 () List!59742)

(assert (=> bm!357851 (= call!357856 (derivationStepZipperDown!112 (ite c!884086 (regOne!29319 (h!66066 (exprs!4287 lt!2119089))) (ite c!884082 (regTwo!29318 (h!66066 (exprs!4287 lt!2119089))) (ite c!884085 (regOne!29318 (h!66066 (exprs!4287 lt!2119089))) (reg!14732 (h!66066 (exprs!4287 lt!2119089)))))) (ite (or c!884086 c!884082) (Context!7575 (t!372769 (exprs!4287 lt!2119089))) (Context!7575 call!357857)) a!1252))))

(declare-fun call!357854 () List!59742)

(declare-fun bm!357852 () Bool)

(assert (=> bm!357852 (= call!357858 (derivationStepZipperDown!112 (ite c!884086 (regTwo!29319 (h!66066 (exprs!4287 lt!2119089))) (regOne!29318 (h!66066 (exprs!4287 lt!2119089)))) (ite c!884086 (Context!7575 (t!372769 (exprs!4287 lt!2119089))) (Context!7575 call!357854)) a!1252))))

(declare-fun bm!357853 () Bool)

(assert (=> bm!357853 (= call!357854 ($colon$colon!1163 (exprs!4287 (Context!7575 (t!372769 (exprs!4287 lt!2119089)))) (ite (or c!884082 c!884085) (regTwo!29318 (h!66066 (exprs!4287 lt!2119089))) (h!66066 (exprs!4287 lt!2119089)))))))

(declare-fun bm!357854 () Bool)

(assert (=> bm!357854 (= call!357857 call!357854)))

(assert (= (and d!1661793 c!884083) b!5135687))

(assert (= (and d!1661793 (not c!884083)) b!5135682))

(assert (= (and b!5135682 c!884086) b!5135688))

(assert (= (and b!5135682 (not c!884086)) b!5135686))

(assert (= (and b!5135686 res!2187490) b!5135684))

(assert (= (and b!5135686 c!884082) b!5135680))

(assert (= (and b!5135686 (not c!884082)) b!5135683))

(assert (= (and b!5135683 c!884085) b!5135685))

(assert (= (and b!5135683 (not c!884085)) b!5135689))

(assert (= (and b!5135689 c!884084) b!5135690))

(assert (= (and b!5135689 (not c!884084)) b!5135681))

(assert (= (or b!5135685 b!5135690) bm!357854))

(assert (= (or b!5135685 b!5135690) bm!357850))

(assert (= (or b!5135680 bm!357854) bm!357853))

(assert (= (or b!5135680 bm!357850) bm!357849))

(assert (= (or b!5135688 bm!357849) bm!357851))

(assert (= (or b!5135688 b!5135680) bm!357852))

(declare-fun m!6201288 () Bool)

(assert (=> bm!357852 m!6201288))

(declare-fun m!6201290 () Bool)

(assert (=> bm!357851 m!6201290))

(declare-fun m!6201292 () Bool)

(assert (=> b!5135684 m!6201292))

(declare-fun m!6201294 () Bool)

(assert (=> b!5135687 m!6201294))

(declare-fun m!6201296 () Bool)

(assert (=> bm!357853 m!6201296))

(assert (=> bm!357748 d!1661793))

(declare-fun b!5135704 () Bool)

(declare-fun e!3203341 () Bool)

(declare-fun tp!1432399 () Bool)

(declare-fun tp!1432397 () Bool)

(assert (=> b!5135704 (= e!3203341 (and tp!1432399 tp!1432397))))

(declare-fun b!5135702 () Bool)

(declare-fun tp!1432398 () Bool)

(declare-fun tp!1432396 () Bool)

(assert (=> b!5135702 (= e!3203341 (and tp!1432398 tp!1432396))))

(declare-fun b!5135701 () Bool)

(assert (=> b!5135701 (= e!3203341 tp_is_empty!37959)))

(assert (=> b!5135413 (= tp!1432366 e!3203341)))

(declare-fun b!5135703 () Bool)

(declare-fun tp!1432395 () Bool)

(assert (=> b!5135703 (= e!3203341 tp!1432395)))

(assert (= (and b!5135413 ((_ is ElementMatch!14403) (h!66066 (exprs!4287 ctx!74)))) b!5135701))

(assert (= (and b!5135413 ((_ is Concat!23248) (h!66066 (exprs!4287 ctx!74)))) b!5135702))

(assert (= (and b!5135413 ((_ is Star!14403) (h!66066 (exprs!4287 ctx!74)))) b!5135703))

(assert (= (and b!5135413 ((_ is Union!14403) (h!66066 (exprs!4287 ctx!74)))) b!5135704))

(declare-fun b!5135705 () Bool)

(declare-fun e!3203342 () Bool)

(declare-fun tp!1432400 () Bool)

(declare-fun tp!1432401 () Bool)

(assert (=> b!5135705 (= e!3203342 (and tp!1432400 tp!1432401))))

(assert (=> b!5135413 (= tp!1432367 e!3203342)))

(assert (= (and b!5135413 ((_ is Cons!59618) (t!372769 (exprs!4287 ctx!74)))) b!5135705))

(declare-fun b_lambda!200085 () Bool)

(assert (= b_lambda!200077 (or d!1661637 b_lambda!200085)))

(declare-fun bs!1199922 () Bool)

(declare-fun d!1661795 () Bool)

(assert (= bs!1199922 (and d!1661795 d!1661637)))

(assert (=> bs!1199922 (= (dynLambda!23741 lambda!255753 (h!66066 (exprs!4287 ctx!74))) (validRegex!6262 (h!66066 (exprs!4287 ctx!74))))))

(assert (=> bs!1199922 m!6201010))

(assert (=> b!5135559 d!1661795))

(declare-fun b_lambda!200087 () Bool)

(assert (= b_lambda!200075 (or d!1661663 b_lambda!200087)))

(declare-fun bs!1199923 () Bool)

(declare-fun d!1661797 () Bool)

(assert (= bs!1199923 (and d!1661797 d!1661663)))

(assert (=> bs!1199923 (= (dynLambda!23741 lambda!255779 (h!66066 (exprs!4287 lt!2119089))) (validRegex!6262 (h!66066 (exprs!4287 lt!2119089))))))

(declare-fun m!6201298 () Bool)

(assert (=> bs!1199923 m!6201298))

(assert (=> b!5135463 d!1661797))

(check-sat (not b_lambda!200087) (not b!5135684) (not d!1661685) (not d!1661729) (not bm!357834) (not d!1661719) (not b!5135464) (not d!1661759) (not d!1661747) (not b!5135703) (not b!5135579) (not bm!357838) (not bm!357853) (not d!1661755) (not bm!357846) (not b!5135676) (not d!1661723) (not b_lambda!200085) (not d!1661687) (not bm!357835) (not bm!357845) (not bm!357851) (not bs!1199923) (not b!5135652) (not bm!357781) (not b!5135560) (not b!5135675) (not b!5135702) (not bm!357844) (not bm!357848) (not bm!357839) (not d!1661677) (not d!1661717) (not d!1661743) (not d!1661691) (not d!1661705) (not bm!357840) (not b!5135544) (not b!5135704) (not d!1661785) (not d!1661789) (not b!5135557) (not b!5135657) (not b!5135668) (not d!1661711) (not b!5135511) (not bm!357796) tp_is_empty!37959 (not bs!1199922) (not bm!357795) (not bm!357780) (not d!1661763) (not d!1661773) (not bm!357852) (not d!1661781) (not b!5135705) (not d!1661739))
(check-sat)
