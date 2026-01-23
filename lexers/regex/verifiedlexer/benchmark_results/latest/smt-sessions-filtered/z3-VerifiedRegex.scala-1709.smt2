; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!85754 () Bool)

(assert start!85754)

(declare-fun b!963109 () Bool)

(assert (=> b!963109 true))

(assert (=> b!963109 true))

(assert (=> b!963109 true))

(declare-fun lambda!33708 () Int)

(declare-fun lambda!33707 () Int)

(assert (=> b!963109 (not (= lambda!33708 lambda!33707))))

(assert (=> b!963109 true))

(assert (=> b!963109 true))

(assert (=> b!963109 true))

(declare-fun bs!241153 () Bool)

(declare-fun b!963119 () Bool)

(assert (= bs!241153 (and b!963119 b!963109)))

(declare-datatypes ((C!5924 0))(
  ( (C!5925 (val!3210 Int)) )
))
(declare-datatypes ((Regex!2677 0))(
  ( (ElementMatch!2677 (c!156880 C!5924)) (Concat!4510 (regOne!5866 Regex!2677) (regTwo!5866 Regex!2677)) (EmptyExpr!2677) (Star!2677 (reg!3006 Regex!2677)) (EmptyLang!2677) (Union!2677 (regOne!5867 Regex!2677) (regTwo!5867 Regex!2677)) )
))
(declare-fun r!15766 () Regex!2677)

(declare-fun lambda!33709 () Int)

(declare-fun lt!347222 () Regex!2677)

(declare-fun lt!347221 () Regex!2677)

(declare-fun lt!347223 () Regex!2677)

(assert (=> bs!241153 (= (and (= lt!347222 (reg!3006 r!15766)) (= lt!347221 lt!347223)) (= lambda!33709 lambda!33707))))

(assert (=> bs!241153 (not (= lambda!33709 lambda!33708))))

(assert (=> b!963119 true))

(assert (=> b!963119 true))

(assert (=> b!963119 true))

(declare-fun lambda!33710 () Int)

(assert (=> bs!241153 (not (= lambda!33710 lambda!33707))))

(assert (=> bs!241153 (= (and (= lt!347222 (reg!3006 r!15766)) (= lt!347221 lt!347223)) (= lambda!33710 lambda!33708))))

(assert (=> b!963119 (not (= lambda!33710 lambda!33709))))

(assert (=> b!963119 true))

(assert (=> b!963119 true))

(assert (=> b!963119 true))

(declare-fun e!621855 () Bool)

(declare-fun e!621856 () Bool)

(assert (=> b!963109 (= e!621855 e!621856)))

(declare-fun res!437760 () Bool)

(assert (=> b!963109 (=> res!437760 e!621856)))

(declare-datatypes ((List!9907 0))(
  ( (Nil!9891) (Cons!9891 (h!15292 C!5924) (t!100953 List!9907)) )
))
(declare-fun s!10566 () List!9907)

(declare-fun matchR!1215 (Regex!2677 List!9907) Bool)

(assert (=> b!963109 (= res!437760 (not (matchR!1215 lt!347221 s!10566)))))

(assert (=> b!963109 (= lt!347221 (Star!2677 lt!347222))))

(declare-fun removeUselessConcat!324 (Regex!2677) Regex!2677)

(assert (=> b!963109 (= lt!347222 (removeUselessConcat!324 (reg!3006 r!15766)))))

(declare-fun Exists!420 (Int) Bool)

(assert (=> b!963109 (= (Exists!420 lambda!33707) (Exists!420 lambda!33708))))

(declare-datatypes ((Unit!15009 0))(
  ( (Unit!15010) )
))
(declare-fun lt!347217 () Unit!15009)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!138 (Regex!2677 List!9907) Unit!15009)

(assert (=> b!963109 (= lt!347217 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!138 (reg!3006 r!15766) s!10566))))

(declare-datatypes ((tuple2!11232 0))(
  ( (tuple2!11233 (_1!6442 List!9907) (_2!6442 List!9907)) )
))
(declare-datatypes ((Option!2258 0))(
  ( (None!2257) (Some!2257 (v!19674 tuple2!11232)) )
))
(declare-fun isDefined!1900 (Option!2258) Bool)

(declare-fun findConcatSeparation!364 (Regex!2677 Regex!2677 List!9907 List!9907 List!9907) Option!2258)

(assert (=> b!963109 (= (isDefined!1900 (findConcatSeparation!364 (reg!3006 r!15766) lt!347223 Nil!9891 s!10566 s!10566)) (Exists!420 lambda!33707))))

(declare-fun lt!347218 () Unit!15009)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!364 (Regex!2677 Regex!2677 List!9907) Unit!15009)

(assert (=> b!963109 (= lt!347218 (lemmaFindConcatSeparationEquivalentToExists!364 (reg!3006 r!15766) lt!347223 s!10566))))

(assert (=> b!963109 (= lt!347223 (Star!2677 (reg!3006 r!15766)))))

(declare-fun b!963110 () Bool)

(declare-fun e!621859 () Bool)

(declare-fun tp_is_empty!4997 () Bool)

(assert (=> b!963110 (= e!621859 tp_is_empty!4997)))

(declare-fun b!963111 () Bool)

(declare-fun e!621861 () Bool)

(declare-fun e!621857 () Bool)

(assert (=> b!963111 (= e!621861 e!621857)))

(declare-fun res!437764 () Bool)

(assert (=> b!963111 (=> res!437764 e!621857)))

(declare-fun lt!347219 () tuple2!11232)

(assert (=> b!963111 (= res!437764 (not (matchR!1215 lt!347222 (_1!6442 lt!347219))))))

(declare-fun lt!347220 () Option!2258)

(declare-fun get!3380 (Option!2258) tuple2!11232)

(assert (=> b!963111 (= lt!347219 (get!3380 lt!347220))))

(declare-fun b!963112 () Bool)

(declare-fun res!437759 () Bool)

(assert (=> b!963112 (=> res!437759 e!621861)))

(declare-fun lt!347216 () Bool)

(assert (=> b!963112 (= res!437759 (not lt!347216))))

(declare-fun b!963113 () Bool)

(declare-fun tp!295890 () Bool)

(declare-fun tp!295889 () Bool)

(assert (=> b!963113 (= e!621859 (and tp!295890 tp!295889))))

(declare-fun b!963114 () Bool)

(assert (=> b!963114 (= e!621857 (matchR!1215 lt!347221 (_2!6442 lt!347219)))))

(declare-fun b!963115 () Bool)

(declare-fun tp!295887 () Bool)

(declare-fun tp!295891 () Bool)

(assert (=> b!963115 (= e!621859 (and tp!295887 tp!295891))))

(declare-fun res!437763 () Bool)

(declare-fun e!621858 () Bool)

(assert (=> start!85754 (=> (not res!437763) (not e!621858))))

(declare-fun validRegex!1146 (Regex!2677) Bool)

(assert (=> start!85754 (= res!437763 (validRegex!1146 r!15766))))

(assert (=> start!85754 e!621858))

(assert (=> start!85754 e!621859))

(declare-fun e!621860 () Bool)

(assert (=> start!85754 e!621860))

(declare-fun b!963116 () Bool)

(declare-fun tp!295892 () Bool)

(assert (=> b!963116 (= e!621860 (and tp_is_empty!4997 tp!295892))))

(declare-fun b!963117 () Bool)

(declare-fun tp!295888 () Bool)

(assert (=> b!963117 (= e!621859 tp!295888)))

(declare-fun b!963118 () Bool)

(assert (=> b!963118 (= e!621858 (not e!621855))))

(declare-fun res!437761 () Bool)

(assert (=> b!963118 (=> res!437761 e!621855)))

(declare-fun lt!347225 () Bool)

(get-info :version)

(assert (=> b!963118 (= res!437761 (or lt!347225 (and ((_ is Concat!4510) r!15766) ((_ is EmptyExpr!2677) (regOne!5866 r!15766))) (and ((_ is Concat!4510) r!15766) ((_ is EmptyExpr!2677) (regTwo!5866 r!15766))) ((_ is Concat!4510) r!15766) ((_ is Union!2677) r!15766) (not ((_ is Star!2677) r!15766))))))

(declare-fun matchRSpec!478 (Regex!2677 List!9907) Bool)

(assert (=> b!963118 (= lt!347225 (matchRSpec!478 r!15766 s!10566))))

(assert (=> b!963118 (= lt!347225 (matchR!1215 r!15766 s!10566))))

(declare-fun lt!347226 () Unit!15009)

(declare-fun mainMatchTheorem!478 (Regex!2677 List!9907) Unit!15009)

(assert (=> b!963118 (= lt!347226 (mainMatchTheorem!478 r!15766 s!10566))))

(assert (=> b!963119 (= e!621856 e!621861)))

(declare-fun res!437762 () Bool)

(assert (=> b!963119 (=> res!437762 e!621861)))

(declare-fun isEmpty!6189 (List!9907) Bool)

(assert (=> b!963119 (= res!437762 (isEmpty!6189 s!10566))))

(assert (=> b!963119 (= (Exists!420 lambda!33709) (Exists!420 lambda!33710))))

(declare-fun lt!347227 () Unit!15009)

(assert (=> b!963119 (= lt!347227 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!138 lt!347222 s!10566))))

(assert (=> b!963119 (= lt!347216 (Exists!420 lambda!33709))))

(assert (=> b!963119 (= lt!347216 (isDefined!1900 lt!347220))))

(assert (=> b!963119 (= lt!347220 (findConcatSeparation!364 lt!347222 lt!347221 Nil!9891 s!10566 s!10566))))

(declare-fun lt!347215 () Unit!15009)

(assert (=> b!963119 (= lt!347215 (lemmaFindConcatSeparationEquivalentToExists!364 lt!347222 lt!347221 s!10566))))

(assert (=> b!963119 (matchRSpec!478 lt!347221 s!10566)))

(declare-fun lt!347224 () Unit!15009)

(assert (=> b!963119 (= lt!347224 (mainMatchTheorem!478 lt!347221 s!10566))))

(assert (= (and start!85754 res!437763) b!963118))

(assert (= (and b!963118 (not res!437761)) b!963109))

(assert (= (and b!963109 (not res!437760)) b!963119))

(assert (= (and b!963119 (not res!437762)) b!963112))

(assert (= (and b!963112 (not res!437759)) b!963111))

(assert (= (and b!963111 (not res!437764)) b!963114))

(assert (= (and start!85754 ((_ is ElementMatch!2677) r!15766)) b!963110))

(assert (= (and start!85754 ((_ is Concat!4510) r!15766)) b!963115))

(assert (= (and start!85754 ((_ is Star!2677) r!15766)) b!963117))

(assert (= (and start!85754 ((_ is Union!2677) r!15766)) b!963113))

(assert (= (and start!85754 ((_ is Cons!9891) s!10566)) b!963116))

(declare-fun m!1170325 () Bool)

(assert (=> b!963114 m!1170325))

(declare-fun m!1170327 () Bool)

(assert (=> start!85754 m!1170327))

(declare-fun m!1170329 () Bool)

(assert (=> b!963111 m!1170329))

(declare-fun m!1170331 () Bool)

(assert (=> b!963111 m!1170331))

(declare-fun m!1170333 () Bool)

(assert (=> b!963119 m!1170333))

(declare-fun m!1170335 () Bool)

(assert (=> b!963119 m!1170335))

(declare-fun m!1170337 () Bool)

(assert (=> b!963119 m!1170337))

(declare-fun m!1170339 () Bool)

(assert (=> b!963119 m!1170339))

(declare-fun m!1170341 () Bool)

(assert (=> b!963119 m!1170341))

(declare-fun m!1170343 () Bool)

(assert (=> b!963119 m!1170343))

(declare-fun m!1170345 () Bool)

(assert (=> b!963119 m!1170345))

(assert (=> b!963119 m!1170345))

(declare-fun m!1170347 () Bool)

(assert (=> b!963119 m!1170347))

(declare-fun m!1170349 () Bool)

(assert (=> b!963119 m!1170349))

(declare-fun m!1170351 () Bool)

(assert (=> b!963109 m!1170351))

(declare-fun m!1170353 () Bool)

(assert (=> b!963109 m!1170353))

(declare-fun m!1170355 () Bool)

(assert (=> b!963109 m!1170355))

(declare-fun m!1170357 () Bool)

(assert (=> b!963109 m!1170357))

(declare-fun m!1170359 () Bool)

(assert (=> b!963109 m!1170359))

(declare-fun m!1170361 () Bool)

(assert (=> b!963109 m!1170361))

(declare-fun m!1170363 () Bool)

(assert (=> b!963109 m!1170363))

(assert (=> b!963109 m!1170363))

(declare-fun m!1170365 () Bool)

(assert (=> b!963109 m!1170365))

(assert (=> b!963109 m!1170353))

(declare-fun m!1170367 () Bool)

(assert (=> b!963118 m!1170367))

(declare-fun m!1170369 () Bool)

(assert (=> b!963118 m!1170369))

(declare-fun m!1170371 () Bool)

(assert (=> b!963118 m!1170371))

(check-sat (not b!963111) (not b!963118) (not b!963117) tp_is_empty!4997 (not b!963116) (not b!963119) (not b!963115) (not start!85754) (not b!963114) (not b!963113) (not b!963109))
(check-sat)
(get-model)

(declare-fun b!963152 () Bool)

(declare-fun e!621881 () Bool)

(declare-fun derivativeStep!616 (Regex!2677 C!5924) Regex!2677)

(declare-fun head!1769 (List!9907) C!5924)

(declare-fun tail!1331 (List!9907) List!9907)

(assert (=> b!963152 (= e!621881 (matchR!1215 (derivativeStep!616 lt!347222 (head!1769 (_1!6442 lt!347219))) (tail!1331 (_1!6442 lt!347219))))))

(declare-fun b!963153 () Bool)

(declare-fun res!437786 () Bool)

(declare-fun e!621876 () Bool)

(assert (=> b!963153 (=> res!437786 e!621876)))

(assert (=> b!963153 (= res!437786 (not (isEmpty!6189 (tail!1331 (_1!6442 lt!347219)))))))

(declare-fun b!963154 () Bool)

(declare-fun res!437783 () Bool)

(declare-fun e!621877 () Bool)

(assert (=> b!963154 (=> res!437783 e!621877)))

(assert (=> b!963154 (= res!437783 (not ((_ is ElementMatch!2677) lt!347222)))))

(declare-fun e!621880 () Bool)

(assert (=> b!963154 (= e!621880 e!621877)))

(declare-fun b!963155 () Bool)

(declare-fun nullable!808 (Regex!2677) Bool)

(assert (=> b!963155 (= e!621881 (nullable!808 lt!347222))))

(declare-fun b!963156 () Bool)

(declare-fun e!621882 () Bool)

(assert (=> b!963156 (= e!621882 e!621880)))

(declare-fun c!156887 () Bool)

(assert (=> b!963156 (= c!156887 ((_ is EmptyLang!2677) lt!347222))))

(declare-fun b!963157 () Bool)

(declare-fun lt!347230 () Bool)

(assert (=> b!963157 (= e!621880 (not lt!347230))))

(declare-fun bm!60775 () Bool)

(declare-fun call!60780 () Bool)

(assert (=> bm!60775 (= call!60780 (isEmpty!6189 (_1!6442 lt!347219)))))

(declare-fun b!963158 () Bool)

(declare-fun e!621878 () Bool)

(assert (=> b!963158 (= e!621877 e!621878)))

(declare-fun res!437785 () Bool)

(assert (=> b!963158 (=> (not res!437785) (not e!621878))))

(assert (=> b!963158 (= res!437785 (not lt!347230))))

(declare-fun b!963159 () Bool)

(declare-fun res!437782 () Bool)

(declare-fun e!621879 () Bool)

(assert (=> b!963159 (=> (not res!437782) (not e!621879))))

(assert (=> b!963159 (= res!437782 (isEmpty!6189 (tail!1331 (_1!6442 lt!347219))))))

(declare-fun b!963160 () Bool)

(declare-fun res!437781 () Bool)

(assert (=> b!963160 (=> (not res!437781) (not e!621879))))

(assert (=> b!963160 (= res!437781 (not call!60780))))

(declare-fun b!963162 () Bool)

(declare-fun res!437787 () Bool)

(assert (=> b!963162 (=> res!437787 e!621877)))

(assert (=> b!963162 (= res!437787 e!621879)))

(declare-fun res!437788 () Bool)

(assert (=> b!963162 (=> (not res!437788) (not e!621879))))

(assert (=> b!963162 (= res!437788 lt!347230)))

(declare-fun b!963163 () Bool)

(assert (=> b!963163 (= e!621876 (not (= (head!1769 (_1!6442 lt!347219)) (c!156880 lt!347222))))))

(declare-fun b!963164 () Bool)

(assert (=> b!963164 (= e!621878 e!621876)))

(declare-fun res!437784 () Bool)

(assert (=> b!963164 (=> res!437784 e!621876)))

(assert (=> b!963164 (= res!437784 call!60780)))

(declare-fun b!963165 () Bool)

(assert (=> b!963165 (= e!621879 (= (head!1769 (_1!6442 lt!347219)) (c!156880 lt!347222)))))

(declare-fun d!285406 () Bool)

(assert (=> d!285406 e!621882))

(declare-fun c!156889 () Bool)

(assert (=> d!285406 (= c!156889 ((_ is EmptyExpr!2677) lt!347222))))

(assert (=> d!285406 (= lt!347230 e!621881)))

(declare-fun c!156888 () Bool)

(assert (=> d!285406 (= c!156888 (isEmpty!6189 (_1!6442 lt!347219)))))

(assert (=> d!285406 (validRegex!1146 lt!347222)))

(assert (=> d!285406 (= (matchR!1215 lt!347222 (_1!6442 lt!347219)) lt!347230)))

(declare-fun b!963161 () Bool)

(assert (=> b!963161 (= e!621882 (= lt!347230 call!60780))))

(assert (= (and d!285406 c!156888) b!963155))

(assert (= (and d!285406 (not c!156888)) b!963152))

(assert (= (and d!285406 c!156889) b!963161))

(assert (= (and d!285406 (not c!156889)) b!963156))

(assert (= (and b!963156 c!156887) b!963157))

(assert (= (and b!963156 (not c!156887)) b!963154))

(assert (= (and b!963154 (not res!437783)) b!963162))

(assert (= (and b!963162 res!437788) b!963160))

(assert (= (and b!963160 res!437781) b!963159))

(assert (= (and b!963159 res!437782) b!963165))

(assert (= (and b!963162 (not res!437787)) b!963158))

(assert (= (and b!963158 res!437785) b!963164))

(assert (= (and b!963164 (not res!437784)) b!963153))

(assert (= (and b!963153 (not res!437786)) b!963163))

(assert (= (or b!963161 b!963160 b!963164) bm!60775))

(declare-fun m!1170375 () Bool)

(assert (=> b!963165 m!1170375))

(declare-fun m!1170377 () Bool)

(assert (=> b!963155 m!1170377))

(assert (=> b!963163 m!1170375))

(assert (=> b!963152 m!1170375))

(assert (=> b!963152 m!1170375))

(declare-fun m!1170379 () Bool)

(assert (=> b!963152 m!1170379))

(declare-fun m!1170381 () Bool)

(assert (=> b!963152 m!1170381))

(assert (=> b!963152 m!1170379))

(assert (=> b!963152 m!1170381))

(declare-fun m!1170383 () Bool)

(assert (=> b!963152 m!1170383))

(assert (=> b!963153 m!1170381))

(assert (=> b!963153 m!1170381))

(declare-fun m!1170385 () Bool)

(assert (=> b!963153 m!1170385))

(assert (=> b!963159 m!1170381))

(assert (=> b!963159 m!1170381))

(assert (=> b!963159 m!1170385))

(declare-fun m!1170387 () Bool)

(assert (=> d!285406 m!1170387))

(declare-fun m!1170389 () Bool)

(assert (=> d!285406 m!1170389))

(assert (=> bm!60775 m!1170387))

(assert (=> b!963111 d!285406))

(declare-fun d!285412 () Bool)

(assert (=> d!285412 (= (get!3380 lt!347220) (v!19674 lt!347220))))

(assert (=> b!963111 d!285412))

(declare-fun bs!241155 () Bool)

(declare-fun b!963248 () Bool)

(assert (= bs!241155 (and b!963248 b!963109)))

(declare-fun lambda!33717 () Int)

(assert (=> bs!241155 (not (= lambda!33717 lambda!33707))))

(assert (=> bs!241155 (= (= r!15766 lt!347223) (= lambda!33717 lambda!33708))))

(declare-fun bs!241156 () Bool)

(assert (= bs!241156 (and b!963248 b!963119)))

(assert (=> bs!241156 (not (= lambda!33717 lambda!33709))))

(assert (=> bs!241156 (= (and (= (reg!3006 r!15766) lt!347222) (= r!15766 lt!347221)) (= lambda!33717 lambda!33710))))

(assert (=> b!963248 true))

(assert (=> b!963248 true))

(declare-fun bs!241157 () Bool)

(declare-fun b!963246 () Bool)

(assert (= bs!241157 (and b!963246 b!963119)))

(declare-fun lambda!33720 () Int)

(assert (=> bs!241157 (not (= lambda!33720 lambda!33710))))

(assert (=> bs!241157 (not (= lambda!33720 lambda!33709))))

(declare-fun bs!241158 () Bool)

(assert (= bs!241158 (and b!963246 b!963248)))

(assert (=> bs!241158 (not (= lambda!33720 lambda!33717))))

(declare-fun bs!241159 () Bool)

(assert (= bs!241159 (and b!963246 b!963109)))

(assert (=> bs!241159 (not (= lambda!33720 lambda!33707))))

(assert (=> bs!241159 (not (= lambda!33720 lambda!33708))))

(assert (=> b!963246 true))

(assert (=> b!963246 true))

(declare-fun b!963245 () Bool)

(declare-fun c!156907 () Bool)

(assert (=> b!963245 (= c!156907 ((_ is Union!2677) r!15766))))

(declare-fun e!621929 () Bool)

(declare-fun e!621930 () Bool)

(assert (=> b!963245 (= e!621929 e!621930)))

(declare-fun e!621927 () Bool)

(declare-fun call!60788 () Bool)

(assert (=> b!963246 (= e!621927 call!60788)))

(declare-fun b!963247 () Bool)

(declare-fun res!437835 () Bool)

(declare-fun e!621925 () Bool)

(assert (=> b!963247 (=> res!437835 e!621925)))

(declare-fun call!60789 () Bool)

(assert (=> b!963247 (= res!437835 call!60789)))

(assert (=> b!963247 (= e!621927 e!621925)))

(assert (=> b!963248 (= e!621925 call!60788)))

(declare-fun b!963249 () Bool)

(declare-fun e!621926 () Bool)

(declare-fun e!621924 () Bool)

(assert (=> b!963249 (= e!621926 e!621924)))

(declare-fun res!437833 () Bool)

(assert (=> b!963249 (= res!437833 (not ((_ is EmptyLang!2677) r!15766)))))

(assert (=> b!963249 (=> (not res!437833) (not e!621924))))

(declare-fun b!963250 () Bool)

(declare-fun c!156908 () Bool)

(assert (=> b!963250 (= c!156908 ((_ is ElementMatch!2677) r!15766))))

(assert (=> b!963250 (= e!621924 e!621929)))

(declare-fun b!963251 () Bool)

(assert (=> b!963251 (= e!621929 (= s!10566 (Cons!9891 (c!156880 r!15766) Nil!9891)))))

(declare-fun bm!60783 () Bool)

(declare-fun c!156909 () Bool)

(assert (=> bm!60783 (= call!60788 (Exists!420 (ite c!156909 lambda!33717 lambda!33720)))))

(declare-fun b!963244 () Bool)

(assert (=> b!963244 (= e!621930 e!621927)))

(assert (=> b!963244 (= c!156909 ((_ is Star!2677) r!15766))))

(declare-fun d!285414 () Bool)

(declare-fun c!156910 () Bool)

(assert (=> d!285414 (= c!156910 ((_ is EmptyExpr!2677) r!15766))))

(assert (=> d!285414 (= (matchRSpec!478 r!15766 s!10566) e!621926)))

(declare-fun b!963252 () Bool)

(declare-fun e!621928 () Bool)

(assert (=> b!963252 (= e!621930 e!621928)))

(declare-fun res!437834 () Bool)

(assert (=> b!963252 (= res!437834 (matchRSpec!478 (regOne!5867 r!15766) s!10566))))

(assert (=> b!963252 (=> res!437834 e!621928)))

(declare-fun b!963253 () Bool)

(assert (=> b!963253 (= e!621928 (matchRSpec!478 (regTwo!5867 r!15766) s!10566))))

(declare-fun bm!60784 () Bool)

(assert (=> bm!60784 (= call!60789 (isEmpty!6189 s!10566))))

(declare-fun b!963254 () Bool)

(assert (=> b!963254 (= e!621926 call!60789)))

(assert (= (and d!285414 c!156910) b!963254))

(assert (= (and d!285414 (not c!156910)) b!963249))

(assert (= (and b!963249 res!437833) b!963250))

(assert (= (and b!963250 c!156908) b!963251))

(assert (= (and b!963250 (not c!156908)) b!963245))

(assert (= (and b!963245 c!156907) b!963252))

(assert (= (and b!963245 (not c!156907)) b!963244))

(assert (= (and b!963252 (not res!437834)) b!963253))

(assert (= (and b!963244 c!156909) b!963247))

(assert (= (and b!963244 (not c!156909)) b!963246))

(assert (= (and b!963247 (not res!437835)) b!963248))

(assert (= (or b!963248 b!963246) bm!60783))

(assert (= (or b!963254 b!963247) bm!60784))

(declare-fun m!1170405 () Bool)

(assert (=> bm!60783 m!1170405))

(declare-fun m!1170407 () Bool)

(assert (=> b!963252 m!1170407))

(declare-fun m!1170409 () Bool)

(assert (=> b!963253 m!1170409))

(assert (=> bm!60784 m!1170347))

(assert (=> b!963118 d!285414))

(declare-fun b!963261 () Bool)

(declare-fun e!621938 () Bool)

(assert (=> b!963261 (= e!621938 (matchR!1215 (derivativeStep!616 r!15766 (head!1769 s!10566)) (tail!1331 s!10566)))))

(declare-fun b!963262 () Bool)

(declare-fun res!437847 () Bool)

(declare-fun e!621933 () Bool)

(assert (=> b!963262 (=> res!437847 e!621933)))

(assert (=> b!963262 (= res!437847 (not (isEmpty!6189 (tail!1331 s!10566))))))

(declare-fun b!963263 () Bool)

(declare-fun res!437844 () Bool)

(declare-fun e!621934 () Bool)

(assert (=> b!963263 (=> res!437844 e!621934)))

(assert (=> b!963263 (= res!437844 (not ((_ is ElementMatch!2677) r!15766)))))

(declare-fun e!621937 () Bool)

(assert (=> b!963263 (= e!621937 e!621934)))

(declare-fun b!963264 () Bool)

(assert (=> b!963264 (= e!621938 (nullable!808 r!15766))))

(declare-fun b!963265 () Bool)

(declare-fun e!621939 () Bool)

(assert (=> b!963265 (= e!621939 e!621937)))

(declare-fun c!156911 () Bool)

(assert (=> b!963265 (= c!156911 ((_ is EmptyLang!2677) r!15766))))

(declare-fun b!963266 () Bool)

(declare-fun lt!347237 () Bool)

(assert (=> b!963266 (= e!621937 (not lt!347237))))

(declare-fun bm!60785 () Bool)

(declare-fun call!60790 () Bool)

(assert (=> bm!60785 (= call!60790 (isEmpty!6189 s!10566))))

(declare-fun b!963267 () Bool)

(declare-fun e!621935 () Bool)

(assert (=> b!963267 (= e!621934 e!621935)))

(declare-fun res!437846 () Bool)

(assert (=> b!963267 (=> (not res!437846) (not e!621935))))

(assert (=> b!963267 (= res!437846 (not lt!347237))))

(declare-fun b!963268 () Bool)

(declare-fun res!437843 () Bool)

(declare-fun e!621936 () Bool)

(assert (=> b!963268 (=> (not res!437843) (not e!621936))))

(assert (=> b!963268 (= res!437843 (isEmpty!6189 (tail!1331 s!10566)))))

(declare-fun b!963269 () Bool)

(declare-fun res!437842 () Bool)

(assert (=> b!963269 (=> (not res!437842) (not e!621936))))

(assert (=> b!963269 (= res!437842 (not call!60790))))

(declare-fun b!963271 () Bool)

(declare-fun res!437848 () Bool)

(assert (=> b!963271 (=> res!437848 e!621934)))

(assert (=> b!963271 (= res!437848 e!621936)))

(declare-fun res!437849 () Bool)

(assert (=> b!963271 (=> (not res!437849) (not e!621936))))

(assert (=> b!963271 (= res!437849 lt!347237)))

(declare-fun b!963272 () Bool)

(assert (=> b!963272 (= e!621933 (not (= (head!1769 s!10566) (c!156880 r!15766))))))

(declare-fun b!963273 () Bool)

(assert (=> b!963273 (= e!621935 e!621933)))

(declare-fun res!437845 () Bool)

(assert (=> b!963273 (=> res!437845 e!621933)))

(assert (=> b!963273 (= res!437845 call!60790)))

(declare-fun b!963274 () Bool)

(assert (=> b!963274 (= e!621936 (= (head!1769 s!10566) (c!156880 r!15766)))))

(declare-fun d!285418 () Bool)

(assert (=> d!285418 e!621939))

(declare-fun c!156913 () Bool)

(assert (=> d!285418 (= c!156913 ((_ is EmptyExpr!2677) r!15766))))

(assert (=> d!285418 (= lt!347237 e!621938)))

(declare-fun c!156912 () Bool)

(assert (=> d!285418 (= c!156912 (isEmpty!6189 s!10566))))

(assert (=> d!285418 (validRegex!1146 r!15766)))

(assert (=> d!285418 (= (matchR!1215 r!15766 s!10566) lt!347237)))

(declare-fun b!963270 () Bool)

(assert (=> b!963270 (= e!621939 (= lt!347237 call!60790))))

(assert (= (and d!285418 c!156912) b!963264))

(assert (= (and d!285418 (not c!156912)) b!963261))

(assert (= (and d!285418 c!156913) b!963270))

(assert (= (and d!285418 (not c!156913)) b!963265))

(assert (= (and b!963265 c!156911) b!963266))

(assert (= (and b!963265 (not c!156911)) b!963263))

(assert (= (and b!963263 (not res!437844)) b!963271))

(assert (= (and b!963271 res!437849) b!963269))

(assert (= (and b!963269 res!437842) b!963268))

(assert (= (and b!963268 res!437843) b!963274))

(assert (= (and b!963271 (not res!437848)) b!963267))

(assert (= (and b!963267 res!437846) b!963273))

(assert (= (and b!963273 (not res!437845)) b!963262))

(assert (= (and b!963262 (not res!437847)) b!963272))

(assert (= (or b!963270 b!963269 b!963273) bm!60785))

(declare-fun m!1170411 () Bool)

(assert (=> b!963274 m!1170411))

(declare-fun m!1170413 () Bool)

(assert (=> b!963264 m!1170413))

(assert (=> b!963272 m!1170411))

(assert (=> b!963261 m!1170411))

(assert (=> b!963261 m!1170411))

(declare-fun m!1170415 () Bool)

(assert (=> b!963261 m!1170415))

(declare-fun m!1170417 () Bool)

(assert (=> b!963261 m!1170417))

(assert (=> b!963261 m!1170415))

(assert (=> b!963261 m!1170417))

(declare-fun m!1170419 () Bool)

(assert (=> b!963261 m!1170419))

(assert (=> b!963262 m!1170417))

(assert (=> b!963262 m!1170417))

(declare-fun m!1170421 () Bool)

(assert (=> b!963262 m!1170421))

(assert (=> b!963268 m!1170417))

(assert (=> b!963268 m!1170417))

(assert (=> b!963268 m!1170421))

(assert (=> d!285418 m!1170347))

(assert (=> d!285418 m!1170327))

(assert (=> bm!60785 m!1170347))

(assert (=> b!963118 d!285418))

(declare-fun d!285420 () Bool)

(assert (=> d!285420 (= (matchR!1215 r!15766 s!10566) (matchRSpec!478 r!15766 s!10566))))

(declare-fun lt!347240 () Unit!15009)

(declare-fun choose!6074 (Regex!2677 List!9907) Unit!15009)

(assert (=> d!285420 (= lt!347240 (choose!6074 r!15766 s!10566))))

(assert (=> d!285420 (validRegex!1146 r!15766)))

(assert (=> d!285420 (= (mainMatchTheorem!478 r!15766 s!10566) lt!347240)))

(declare-fun bs!241164 () Bool)

(assert (= bs!241164 d!285420))

(assert (=> bs!241164 m!1170369))

(assert (=> bs!241164 m!1170367))

(declare-fun m!1170433 () Bool)

(assert (=> bs!241164 m!1170433))

(assert (=> bs!241164 m!1170327))

(assert (=> b!963118 d!285420))

(declare-fun d!285426 () Bool)

(declare-fun choose!6075 (Int) Bool)

(assert (=> d!285426 (= (Exists!420 lambda!33710) (choose!6075 lambda!33710))))

(declare-fun bs!241165 () Bool)

(assert (= bs!241165 d!285426))

(declare-fun m!1170435 () Bool)

(assert (=> bs!241165 m!1170435))

(assert (=> b!963119 d!285426))

(declare-fun d!285428 () Bool)

(assert (=> d!285428 (= (isEmpty!6189 s!10566) ((_ is Nil!9891) s!10566))))

(assert (=> b!963119 d!285428))

(declare-fun d!285430 () Bool)

(declare-fun isEmpty!6191 (Option!2258) Bool)

(assert (=> d!285430 (= (isDefined!1900 lt!347220) (not (isEmpty!6191 lt!347220)))))

(declare-fun bs!241166 () Bool)

(assert (= bs!241166 d!285430))

(declare-fun m!1170437 () Bool)

(assert (=> bs!241166 m!1170437))

(assert (=> b!963119 d!285430))

(declare-fun bs!241171 () Bool)

(declare-fun d!285432 () Bool)

(assert (= bs!241171 (and d!285432 b!963119)))

(declare-fun lambda!33728 () Int)

(assert (=> bs!241171 (not (= lambda!33728 lambda!33710))))

(assert (=> bs!241171 (= lambda!33728 lambda!33709)))

(declare-fun bs!241172 () Bool)

(assert (= bs!241172 (and d!285432 b!963248)))

(assert (=> bs!241172 (not (= lambda!33728 lambda!33717))))

(declare-fun bs!241173 () Bool)

(assert (= bs!241173 (and d!285432 b!963109)))

(assert (=> bs!241173 (= (and (= lt!347222 (reg!3006 r!15766)) (= lt!347221 lt!347223)) (= lambda!33728 lambda!33707))))

(declare-fun bs!241174 () Bool)

(assert (= bs!241174 (and d!285432 b!963246)))

(assert (=> bs!241174 (not (= lambda!33728 lambda!33720))))

(assert (=> bs!241173 (not (= lambda!33728 lambda!33708))))

(assert (=> d!285432 true))

(assert (=> d!285432 true))

(assert (=> d!285432 true))

(assert (=> d!285432 (= (isDefined!1900 (findConcatSeparation!364 lt!347222 lt!347221 Nil!9891 s!10566 s!10566)) (Exists!420 lambda!33728))))

(declare-fun lt!347246 () Unit!15009)

(declare-fun choose!6076 (Regex!2677 Regex!2677 List!9907) Unit!15009)

(assert (=> d!285432 (= lt!347246 (choose!6076 lt!347222 lt!347221 s!10566))))

(assert (=> d!285432 (validRegex!1146 lt!347222)))

(assert (=> d!285432 (= (lemmaFindConcatSeparationEquivalentToExists!364 lt!347222 lt!347221 s!10566) lt!347246)))

(declare-fun bs!241175 () Bool)

(assert (= bs!241175 d!285432))

(declare-fun m!1170443 () Bool)

(assert (=> bs!241175 m!1170443))

(assert (=> bs!241175 m!1170343))

(assert (=> bs!241175 m!1170389))

(assert (=> bs!241175 m!1170343))

(declare-fun m!1170445 () Bool)

(assert (=> bs!241175 m!1170445))

(declare-fun m!1170447 () Bool)

(assert (=> bs!241175 m!1170447))

(assert (=> b!963119 d!285432))

(declare-fun b!963328 () Bool)

(declare-fun e!621973 () Bool)

(declare-fun lt!347264 () Option!2258)

(declare-fun ++!2667 (List!9907 List!9907) List!9907)

(assert (=> b!963328 (= e!621973 (= (++!2667 (_1!6442 (get!3380 lt!347264)) (_2!6442 (get!3380 lt!347264))) s!10566))))

(declare-fun b!963329 () Bool)

(declare-fun res!437885 () Bool)

(assert (=> b!963329 (=> (not res!437885) (not e!621973))))

(assert (=> b!963329 (= res!437885 (matchR!1215 lt!347222 (_1!6442 (get!3380 lt!347264))))))

(declare-fun b!963330 () Bool)

(declare-fun res!437883 () Bool)

(assert (=> b!963330 (=> (not res!437883) (not e!621973))))

(assert (=> b!963330 (= res!437883 (matchR!1215 lt!347221 (_2!6442 (get!3380 lt!347264))))))

(declare-fun b!963331 () Bool)

(declare-fun e!621972 () Option!2258)

(assert (=> b!963331 (= e!621972 (Some!2257 (tuple2!11233 Nil!9891 s!10566)))))

(declare-fun b!963332 () Bool)

(declare-fun e!621970 () Bool)

(assert (=> b!963332 (= e!621970 (matchR!1215 lt!347221 s!10566))))

(declare-fun b!963333 () Bool)

(declare-fun e!621969 () Option!2258)

(assert (=> b!963333 (= e!621972 e!621969)))

(declare-fun c!156924 () Bool)

(assert (=> b!963333 (= c!156924 ((_ is Nil!9891) s!10566))))

(declare-fun b!963334 () Bool)

(assert (=> b!963334 (= e!621969 None!2257)))

(declare-fun b!963335 () Bool)

(declare-fun lt!347263 () Unit!15009)

(declare-fun lt!347262 () Unit!15009)

(assert (=> b!963335 (= lt!347263 lt!347262)))

(assert (=> b!963335 (= (++!2667 (++!2667 Nil!9891 (Cons!9891 (h!15292 s!10566) Nil!9891)) (t!100953 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!272 (List!9907 C!5924 List!9907 List!9907) Unit!15009)

(assert (=> b!963335 (= lt!347262 (lemmaMoveElementToOtherListKeepsConcatEq!272 Nil!9891 (h!15292 s!10566) (t!100953 s!10566) s!10566))))

(assert (=> b!963335 (= e!621969 (findConcatSeparation!364 lt!347222 lt!347221 (++!2667 Nil!9891 (Cons!9891 (h!15292 s!10566) Nil!9891)) (t!100953 s!10566) s!10566))))

(declare-fun b!963336 () Bool)

(declare-fun e!621971 () Bool)

(assert (=> b!963336 (= e!621971 (not (isDefined!1900 lt!347264)))))

(declare-fun d!285436 () Bool)

(assert (=> d!285436 e!621971))

(declare-fun res!437886 () Bool)

(assert (=> d!285436 (=> res!437886 e!621971)))

(assert (=> d!285436 (= res!437886 e!621973)))

(declare-fun res!437887 () Bool)

(assert (=> d!285436 (=> (not res!437887) (not e!621973))))

(assert (=> d!285436 (= res!437887 (isDefined!1900 lt!347264))))

(assert (=> d!285436 (= lt!347264 e!621972)))

(declare-fun c!156925 () Bool)

(assert (=> d!285436 (= c!156925 e!621970)))

(declare-fun res!437884 () Bool)

(assert (=> d!285436 (=> (not res!437884) (not e!621970))))

(assert (=> d!285436 (= res!437884 (matchR!1215 lt!347222 Nil!9891))))

(assert (=> d!285436 (validRegex!1146 lt!347222)))

(assert (=> d!285436 (= (findConcatSeparation!364 lt!347222 lt!347221 Nil!9891 s!10566 s!10566) lt!347264)))

(assert (= (and d!285436 res!437884) b!963332))

(assert (= (and d!285436 c!156925) b!963331))

(assert (= (and d!285436 (not c!156925)) b!963333))

(assert (= (and b!963333 c!156924) b!963334))

(assert (= (and b!963333 (not c!156924)) b!963335))

(assert (= (and d!285436 res!437887) b!963329))

(assert (= (and b!963329 res!437885) b!963330))

(assert (= (and b!963330 res!437883) b!963328))

(assert (= (and d!285436 (not res!437886)) b!963336))

(declare-fun m!1170473 () Bool)

(assert (=> b!963328 m!1170473))

(declare-fun m!1170475 () Bool)

(assert (=> b!963328 m!1170475))

(assert (=> b!963330 m!1170473))

(declare-fun m!1170477 () Bool)

(assert (=> b!963330 m!1170477))

(declare-fun m!1170479 () Bool)

(assert (=> b!963336 m!1170479))

(assert (=> b!963329 m!1170473))

(declare-fun m!1170481 () Bool)

(assert (=> b!963329 m!1170481))

(declare-fun m!1170483 () Bool)

(assert (=> b!963335 m!1170483))

(assert (=> b!963335 m!1170483))

(declare-fun m!1170485 () Bool)

(assert (=> b!963335 m!1170485))

(declare-fun m!1170487 () Bool)

(assert (=> b!963335 m!1170487))

(assert (=> b!963335 m!1170483))

(declare-fun m!1170489 () Bool)

(assert (=> b!963335 m!1170489))

(assert (=> d!285436 m!1170479))

(declare-fun m!1170491 () Bool)

(assert (=> d!285436 m!1170491))

(assert (=> d!285436 m!1170389))

(assert (=> b!963332 m!1170361))

(assert (=> b!963119 d!285436))

(declare-fun d!285442 () Bool)

(assert (=> d!285442 (= (matchR!1215 lt!347221 s!10566) (matchRSpec!478 lt!347221 s!10566))))

(declare-fun lt!347265 () Unit!15009)

(assert (=> d!285442 (= lt!347265 (choose!6074 lt!347221 s!10566))))

(assert (=> d!285442 (validRegex!1146 lt!347221)))

(assert (=> d!285442 (= (mainMatchTheorem!478 lt!347221 s!10566) lt!347265)))

(declare-fun bs!241177 () Bool)

(assert (= bs!241177 d!285442))

(assert (=> bs!241177 m!1170361))

(assert (=> bs!241177 m!1170341))

(declare-fun m!1170493 () Bool)

(assert (=> bs!241177 m!1170493))

(declare-fun m!1170495 () Bool)

(assert (=> bs!241177 m!1170495))

(assert (=> b!963119 d!285442))

(declare-fun bs!241178 () Bool)

(declare-fun b!963341 () Bool)

(assert (= bs!241178 (and b!963341 d!285432)))

(declare-fun lambda!33729 () Int)

(assert (=> bs!241178 (not (= lambda!33729 lambda!33728))))

(declare-fun bs!241179 () Bool)

(assert (= bs!241179 (and b!963341 b!963119)))

(assert (=> bs!241179 (= (= (reg!3006 lt!347221) lt!347222) (= lambda!33729 lambda!33710))))

(assert (=> bs!241179 (not (= lambda!33729 lambda!33709))))

(declare-fun bs!241180 () Bool)

(assert (= bs!241180 (and b!963341 b!963248)))

(assert (=> bs!241180 (= (and (= (reg!3006 lt!347221) (reg!3006 r!15766)) (= lt!347221 r!15766)) (= lambda!33729 lambda!33717))))

(declare-fun bs!241181 () Bool)

(assert (= bs!241181 (and b!963341 b!963109)))

(assert (=> bs!241181 (not (= lambda!33729 lambda!33707))))

(declare-fun bs!241182 () Bool)

(assert (= bs!241182 (and b!963341 b!963246)))

(assert (=> bs!241182 (not (= lambda!33729 lambda!33720))))

(assert (=> bs!241181 (= (and (= (reg!3006 lt!347221) (reg!3006 r!15766)) (= lt!347221 lt!347223)) (= lambda!33729 lambda!33708))))

(assert (=> b!963341 true))

(assert (=> b!963341 true))

(declare-fun bs!241183 () Bool)

(declare-fun b!963339 () Bool)

(assert (= bs!241183 (and b!963339 b!963119)))

(declare-fun lambda!33730 () Int)

(assert (=> bs!241183 (not (= lambda!33730 lambda!33710))))

(assert (=> bs!241183 (not (= lambda!33730 lambda!33709))))

(declare-fun bs!241184 () Bool)

(assert (= bs!241184 (and b!963339 b!963248)))

(assert (=> bs!241184 (not (= lambda!33730 lambda!33717))))

(declare-fun bs!241185 () Bool)

(assert (= bs!241185 (and b!963339 b!963109)))

(assert (=> bs!241185 (not (= lambda!33730 lambda!33707))))

(declare-fun bs!241186 () Bool)

(assert (= bs!241186 (and b!963339 b!963246)))

(assert (=> bs!241186 (= (and (= (regOne!5866 lt!347221) (regOne!5866 r!15766)) (= (regTwo!5866 lt!347221) (regTwo!5866 r!15766))) (= lambda!33730 lambda!33720))))

(assert (=> bs!241185 (not (= lambda!33730 lambda!33708))))

(declare-fun bs!241187 () Bool)

(assert (= bs!241187 (and b!963339 b!963341)))

(assert (=> bs!241187 (not (= lambda!33730 lambda!33729))))

(declare-fun bs!241188 () Bool)

(assert (= bs!241188 (and b!963339 d!285432)))

(assert (=> bs!241188 (not (= lambda!33730 lambda!33728))))

(assert (=> b!963339 true))

(assert (=> b!963339 true))

(declare-fun b!963338 () Bool)

(declare-fun c!156926 () Bool)

(assert (=> b!963338 (= c!156926 ((_ is Union!2677) lt!347221))))

(declare-fun e!621979 () Bool)

(declare-fun e!621980 () Bool)

(assert (=> b!963338 (= e!621979 e!621980)))

(declare-fun e!621977 () Bool)

(declare-fun call!60791 () Bool)

(assert (=> b!963339 (= e!621977 call!60791)))

(declare-fun b!963340 () Bool)

(declare-fun res!437890 () Bool)

(declare-fun e!621975 () Bool)

(assert (=> b!963340 (=> res!437890 e!621975)))

(declare-fun call!60792 () Bool)

(assert (=> b!963340 (= res!437890 call!60792)))

(assert (=> b!963340 (= e!621977 e!621975)))

(assert (=> b!963341 (= e!621975 call!60791)))

(declare-fun b!963342 () Bool)

(declare-fun e!621976 () Bool)

(declare-fun e!621974 () Bool)

(assert (=> b!963342 (= e!621976 e!621974)))

(declare-fun res!437888 () Bool)

(assert (=> b!963342 (= res!437888 (not ((_ is EmptyLang!2677) lt!347221)))))

(assert (=> b!963342 (=> (not res!437888) (not e!621974))))

(declare-fun b!963343 () Bool)

(declare-fun c!156927 () Bool)

(assert (=> b!963343 (= c!156927 ((_ is ElementMatch!2677) lt!347221))))

(assert (=> b!963343 (= e!621974 e!621979)))

(declare-fun b!963344 () Bool)

(assert (=> b!963344 (= e!621979 (= s!10566 (Cons!9891 (c!156880 lt!347221) Nil!9891)))))

(declare-fun bm!60786 () Bool)

(declare-fun c!156928 () Bool)

(assert (=> bm!60786 (= call!60791 (Exists!420 (ite c!156928 lambda!33729 lambda!33730)))))

(declare-fun b!963337 () Bool)

(assert (=> b!963337 (= e!621980 e!621977)))

(assert (=> b!963337 (= c!156928 ((_ is Star!2677) lt!347221))))

(declare-fun d!285444 () Bool)

(declare-fun c!156929 () Bool)

(assert (=> d!285444 (= c!156929 ((_ is EmptyExpr!2677) lt!347221))))

(assert (=> d!285444 (= (matchRSpec!478 lt!347221 s!10566) e!621976)))

(declare-fun b!963345 () Bool)

(declare-fun e!621978 () Bool)

(assert (=> b!963345 (= e!621980 e!621978)))

(declare-fun res!437889 () Bool)

(assert (=> b!963345 (= res!437889 (matchRSpec!478 (regOne!5867 lt!347221) s!10566))))

(assert (=> b!963345 (=> res!437889 e!621978)))

(declare-fun b!963346 () Bool)

(assert (=> b!963346 (= e!621978 (matchRSpec!478 (regTwo!5867 lt!347221) s!10566))))

(declare-fun bm!60787 () Bool)

(assert (=> bm!60787 (= call!60792 (isEmpty!6189 s!10566))))

(declare-fun b!963347 () Bool)

(assert (=> b!963347 (= e!621976 call!60792)))

(assert (= (and d!285444 c!156929) b!963347))

(assert (= (and d!285444 (not c!156929)) b!963342))

(assert (= (and b!963342 res!437888) b!963343))

(assert (= (and b!963343 c!156927) b!963344))

(assert (= (and b!963343 (not c!156927)) b!963338))

(assert (= (and b!963338 c!156926) b!963345))

(assert (= (and b!963338 (not c!156926)) b!963337))

(assert (= (and b!963345 (not res!437889)) b!963346))

(assert (= (and b!963337 c!156928) b!963340))

(assert (= (and b!963337 (not c!156928)) b!963339))

(assert (= (and b!963340 (not res!437890)) b!963341))

(assert (= (or b!963341 b!963339) bm!60786))

(assert (= (or b!963347 b!963340) bm!60787))

(declare-fun m!1170497 () Bool)

(assert (=> bm!60786 m!1170497))

(declare-fun m!1170499 () Bool)

(assert (=> b!963345 m!1170499))

(declare-fun m!1170501 () Bool)

(assert (=> b!963346 m!1170501))

(assert (=> bm!60787 m!1170347))

(assert (=> b!963119 d!285444))

(declare-fun d!285446 () Bool)

(assert (=> d!285446 (= (Exists!420 lambda!33709) (choose!6075 lambda!33709))))

(declare-fun bs!241189 () Bool)

(assert (= bs!241189 d!285446))

(declare-fun m!1170503 () Bool)

(assert (=> bs!241189 m!1170503))

(assert (=> b!963119 d!285446))

(declare-fun bs!241190 () Bool)

(declare-fun d!285448 () Bool)

(assert (= bs!241190 (and d!285448 b!963119)))

(declare-fun lambda!33735 () Int)

(assert (=> bs!241190 (not (= lambda!33735 lambda!33710))))

(assert (=> bs!241190 (= (= (Star!2677 lt!347222) lt!347221) (= lambda!33735 lambda!33709))))

(declare-fun bs!241191 () Bool)

(assert (= bs!241191 (and d!285448 b!963109)))

(assert (=> bs!241191 (= (and (= lt!347222 (reg!3006 r!15766)) (= (Star!2677 lt!347222) lt!347223)) (= lambda!33735 lambda!33707))))

(declare-fun bs!241192 () Bool)

(assert (= bs!241192 (and d!285448 b!963246)))

(assert (=> bs!241192 (not (= lambda!33735 lambda!33720))))

(assert (=> bs!241191 (not (= lambda!33735 lambda!33708))))

(declare-fun bs!241193 () Bool)

(assert (= bs!241193 (and d!285448 b!963341)))

(assert (=> bs!241193 (not (= lambda!33735 lambda!33729))))

(declare-fun bs!241194 () Bool)

(assert (= bs!241194 (and d!285448 d!285432)))

(assert (=> bs!241194 (= (= (Star!2677 lt!347222) lt!347221) (= lambda!33735 lambda!33728))))

(declare-fun bs!241195 () Bool)

(assert (= bs!241195 (and d!285448 b!963339)))

(assert (=> bs!241195 (not (= lambda!33735 lambda!33730))))

(declare-fun bs!241196 () Bool)

(assert (= bs!241196 (and d!285448 b!963248)))

(assert (=> bs!241196 (not (= lambda!33735 lambda!33717))))

(assert (=> d!285448 true))

(assert (=> d!285448 true))

(declare-fun lambda!33736 () Int)

(assert (=> bs!241190 (= (= (Star!2677 lt!347222) lt!347221) (= lambda!33736 lambda!33710))))

(assert (=> bs!241190 (not (= lambda!33736 lambda!33709))))

(assert (=> bs!241191 (not (= lambda!33736 lambda!33707))))

(assert (=> bs!241192 (not (= lambda!33736 lambda!33720))))

(assert (=> bs!241191 (= (and (= lt!347222 (reg!3006 r!15766)) (= (Star!2677 lt!347222) lt!347223)) (= lambda!33736 lambda!33708))))

(assert (=> bs!241193 (= (and (= lt!347222 (reg!3006 lt!347221)) (= (Star!2677 lt!347222) lt!347221)) (= lambda!33736 lambda!33729))))

(assert (=> bs!241194 (not (= lambda!33736 lambda!33728))))

(declare-fun bs!241197 () Bool)

(assert (= bs!241197 d!285448))

(assert (=> bs!241197 (not (= lambda!33736 lambda!33735))))

(assert (=> bs!241195 (not (= lambda!33736 lambda!33730))))

(assert (=> bs!241196 (= (and (= lt!347222 (reg!3006 r!15766)) (= (Star!2677 lt!347222) r!15766)) (= lambda!33736 lambda!33717))))

(assert (=> d!285448 true))

(assert (=> d!285448 true))

(assert (=> d!285448 (= (Exists!420 lambda!33735) (Exists!420 lambda!33736))))

(declare-fun lt!347272 () Unit!15009)

(declare-fun choose!6077 (Regex!2677 List!9907) Unit!15009)

(assert (=> d!285448 (= lt!347272 (choose!6077 lt!347222 s!10566))))

(assert (=> d!285448 (validRegex!1146 lt!347222)))

(assert (=> d!285448 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!138 lt!347222 s!10566) lt!347272)))

(declare-fun m!1170531 () Bool)

(assert (=> bs!241197 m!1170531))

(declare-fun m!1170533 () Bool)

(assert (=> bs!241197 m!1170533))

(declare-fun m!1170535 () Bool)

(assert (=> bs!241197 m!1170535))

(assert (=> bs!241197 m!1170389))

(assert (=> b!963119 d!285448))

(declare-fun bm!60819 () Bool)

(declare-fun call!60825 () Bool)

(declare-fun c!156967 () Bool)

(assert (=> bm!60819 (= call!60825 (validRegex!1146 (ite c!156967 (regTwo!5867 r!15766) (regTwo!5866 r!15766))))))

(declare-fun b!963482 () Bool)

(declare-fun e!622065 () Bool)

(declare-fun e!622064 () Bool)

(assert (=> b!963482 (= e!622065 e!622064)))

(declare-fun res!437956 () Bool)

(assert (=> b!963482 (= res!437956 (not (nullable!808 (reg!3006 r!15766))))))

(assert (=> b!963482 (=> (not res!437956) (not e!622064))))

(declare-fun b!963483 () Bool)

(declare-fun e!622067 () Bool)

(assert (=> b!963483 (= e!622067 call!60825)))

(declare-fun b!963484 () Bool)

(declare-fun e!622066 () Bool)

(declare-fun e!622069 () Bool)

(assert (=> b!963484 (= e!622066 e!622069)))

(declare-fun res!437954 () Bool)

(assert (=> b!963484 (=> (not res!437954) (not e!622069))))

(declare-fun call!60824 () Bool)

(assert (=> b!963484 (= res!437954 call!60824)))

(declare-fun b!963485 () Bool)

(declare-fun res!437955 () Bool)

(assert (=> b!963485 (=> res!437955 e!622066)))

(assert (=> b!963485 (= res!437955 (not ((_ is Concat!4510) r!15766)))))

(declare-fun e!622063 () Bool)

(assert (=> b!963485 (= e!622063 e!622066)))

(declare-fun b!963486 () Bool)

(declare-fun e!622068 () Bool)

(assert (=> b!963486 (= e!622068 e!622065)))

(declare-fun c!156966 () Bool)

(assert (=> b!963486 (= c!156966 ((_ is Star!2677) r!15766))))

(declare-fun b!963487 () Bool)

(assert (=> b!963487 (= e!622065 e!622063)))

(assert (=> b!963487 (= c!156967 ((_ is Union!2677) r!15766))))

(declare-fun call!60826 () Bool)

(declare-fun bm!60820 () Bool)

(assert (=> bm!60820 (= call!60826 (validRegex!1146 (ite c!156966 (reg!3006 r!15766) (ite c!156967 (regOne!5867 r!15766) (regOne!5866 r!15766)))))))

(declare-fun d!285456 () Bool)

(declare-fun res!437953 () Bool)

(assert (=> d!285456 (=> res!437953 e!622068)))

(assert (=> d!285456 (= res!437953 ((_ is ElementMatch!2677) r!15766))))

(assert (=> d!285456 (= (validRegex!1146 r!15766) e!622068)))

(declare-fun b!963488 () Bool)

(declare-fun res!437957 () Bool)

(assert (=> b!963488 (=> (not res!437957) (not e!622067))))

(assert (=> b!963488 (= res!437957 call!60824)))

(assert (=> b!963488 (= e!622063 e!622067)))

(declare-fun b!963489 () Bool)

(assert (=> b!963489 (= e!622069 call!60825)))

(declare-fun bm!60821 () Bool)

(assert (=> bm!60821 (= call!60824 call!60826)))

(declare-fun b!963490 () Bool)

(assert (=> b!963490 (= e!622064 call!60826)))

(assert (= (and d!285456 (not res!437953)) b!963486))

(assert (= (and b!963486 c!156966) b!963482))

(assert (= (and b!963486 (not c!156966)) b!963487))

(assert (= (and b!963482 res!437956) b!963490))

(assert (= (and b!963487 c!156967) b!963488))

(assert (= (and b!963487 (not c!156967)) b!963485))

(assert (= (and b!963488 res!437957) b!963483))

(assert (= (and b!963485 (not res!437955)) b!963484))

(assert (= (and b!963484 res!437954) b!963489))

(assert (= (or b!963483 b!963489) bm!60819))

(assert (= (or b!963488 b!963484) bm!60821))

(assert (= (or b!963490 bm!60821) bm!60820))

(declare-fun m!1170537 () Bool)

(assert (=> bm!60819 m!1170537))

(declare-fun m!1170539 () Bool)

(assert (=> b!963482 m!1170539))

(declare-fun m!1170541 () Bool)

(assert (=> bm!60820 m!1170541))

(assert (=> start!85754 d!285456))

(declare-fun b!963491 () Bool)

(declare-fun e!622075 () Bool)

(assert (=> b!963491 (= e!622075 (matchR!1215 (derivativeStep!616 lt!347221 (head!1769 (_2!6442 lt!347219))) (tail!1331 (_2!6442 lt!347219))))))

(declare-fun b!963492 () Bool)

(declare-fun res!437963 () Bool)

(declare-fun e!622070 () Bool)

(assert (=> b!963492 (=> res!437963 e!622070)))

(assert (=> b!963492 (= res!437963 (not (isEmpty!6189 (tail!1331 (_2!6442 lt!347219)))))))

(declare-fun b!963493 () Bool)

(declare-fun res!437960 () Bool)

(declare-fun e!622071 () Bool)

(assert (=> b!963493 (=> res!437960 e!622071)))

(assert (=> b!963493 (= res!437960 (not ((_ is ElementMatch!2677) lt!347221)))))

(declare-fun e!622074 () Bool)

(assert (=> b!963493 (= e!622074 e!622071)))

(declare-fun b!963494 () Bool)

(assert (=> b!963494 (= e!622075 (nullable!808 lt!347221))))

(declare-fun b!963495 () Bool)

(declare-fun e!622076 () Bool)

(assert (=> b!963495 (= e!622076 e!622074)))

(declare-fun c!156968 () Bool)

(assert (=> b!963495 (= c!156968 ((_ is EmptyLang!2677) lt!347221))))

(declare-fun b!963496 () Bool)

(declare-fun lt!347273 () Bool)

(assert (=> b!963496 (= e!622074 (not lt!347273))))

(declare-fun bm!60822 () Bool)

(declare-fun call!60827 () Bool)

(assert (=> bm!60822 (= call!60827 (isEmpty!6189 (_2!6442 lt!347219)))))

(declare-fun b!963497 () Bool)

(declare-fun e!622072 () Bool)

(assert (=> b!963497 (= e!622071 e!622072)))

(declare-fun res!437962 () Bool)

(assert (=> b!963497 (=> (not res!437962) (not e!622072))))

(assert (=> b!963497 (= res!437962 (not lt!347273))))

(declare-fun b!963498 () Bool)

(declare-fun res!437959 () Bool)

(declare-fun e!622073 () Bool)

(assert (=> b!963498 (=> (not res!437959) (not e!622073))))

(assert (=> b!963498 (= res!437959 (isEmpty!6189 (tail!1331 (_2!6442 lt!347219))))))

(declare-fun b!963499 () Bool)

(declare-fun res!437958 () Bool)

(assert (=> b!963499 (=> (not res!437958) (not e!622073))))

(assert (=> b!963499 (= res!437958 (not call!60827))))

(declare-fun b!963501 () Bool)

(declare-fun res!437964 () Bool)

(assert (=> b!963501 (=> res!437964 e!622071)))

(assert (=> b!963501 (= res!437964 e!622073)))

(declare-fun res!437965 () Bool)

(assert (=> b!963501 (=> (not res!437965) (not e!622073))))

(assert (=> b!963501 (= res!437965 lt!347273)))

(declare-fun b!963502 () Bool)

(assert (=> b!963502 (= e!622070 (not (= (head!1769 (_2!6442 lt!347219)) (c!156880 lt!347221))))))

(declare-fun b!963503 () Bool)

(assert (=> b!963503 (= e!622072 e!622070)))

(declare-fun res!437961 () Bool)

(assert (=> b!963503 (=> res!437961 e!622070)))

(assert (=> b!963503 (= res!437961 call!60827)))

(declare-fun b!963504 () Bool)

(assert (=> b!963504 (= e!622073 (= (head!1769 (_2!6442 lt!347219)) (c!156880 lt!347221)))))

(declare-fun d!285458 () Bool)

(assert (=> d!285458 e!622076))

(declare-fun c!156970 () Bool)

(assert (=> d!285458 (= c!156970 ((_ is EmptyExpr!2677) lt!347221))))

(assert (=> d!285458 (= lt!347273 e!622075)))

(declare-fun c!156969 () Bool)

(assert (=> d!285458 (= c!156969 (isEmpty!6189 (_2!6442 lt!347219)))))

(assert (=> d!285458 (validRegex!1146 lt!347221)))

(assert (=> d!285458 (= (matchR!1215 lt!347221 (_2!6442 lt!347219)) lt!347273)))

(declare-fun b!963500 () Bool)

(assert (=> b!963500 (= e!622076 (= lt!347273 call!60827))))

(assert (= (and d!285458 c!156969) b!963494))

(assert (= (and d!285458 (not c!156969)) b!963491))

(assert (= (and d!285458 c!156970) b!963500))

(assert (= (and d!285458 (not c!156970)) b!963495))

(assert (= (and b!963495 c!156968) b!963496))

(assert (= (and b!963495 (not c!156968)) b!963493))

(assert (= (and b!963493 (not res!437960)) b!963501))

(assert (= (and b!963501 res!437965) b!963499))

(assert (= (and b!963499 res!437958) b!963498))

(assert (= (and b!963498 res!437959) b!963504))

(assert (= (and b!963501 (not res!437964)) b!963497))

(assert (= (and b!963497 res!437962) b!963503))

(assert (= (and b!963503 (not res!437961)) b!963492))

(assert (= (and b!963492 (not res!437963)) b!963502))

(assert (= (or b!963500 b!963499 b!963503) bm!60822))

(declare-fun m!1170543 () Bool)

(assert (=> b!963504 m!1170543))

(declare-fun m!1170545 () Bool)

(assert (=> b!963494 m!1170545))

(assert (=> b!963502 m!1170543))

(assert (=> b!963491 m!1170543))

(assert (=> b!963491 m!1170543))

(declare-fun m!1170547 () Bool)

(assert (=> b!963491 m!1170547))

(declare-fun m!1170549 () Bool)

(assert (=> b!963491 m!1170549))

(assert (=> b!963491 m!1170547))

(assert (=> b!963491 m!1170549))

(declare-fun m!1170551 () Bool)

(assert (=> b!963491 m!1170551))

(assert (=> b!963492 m!1170549))

(assert (=> b!963492 m!1170549))

(declare-fun m!1170553 () Bool)

(assert (=> b!963492 m!1170553))

(assert (=> b!963498 m!1170549))

(assert (=> b!963498 m!1170549))

(assert (=> b!963498 m!1170553))

(declare-fun m!1170555 () Bool)

(assert (=> d!285458 m!1170555))

(assert (=> d!285458 m!1170495))

(assert (=> bm!60822 m!1170555))

(assert (=> b!963114 d!285458))

(declare-fun d!285460 () Bool)

(assert (=> d!285460 (= (Exists!420 lambda!33708) (choose!6075 lambda!33708))))

(declare-fun bs!241198 () Bool)

(assert (= bs!241198 d!285460))

(declare-fun m!1170557 () Bool)

(assert (=> bs!241198 m!1170557))

(assert (=> b!963109 d!285460))

(declare-fun bs!241199 () Bool)

(declare-fun d!285462 () Bool)

(assert (= bs!241199 (and d!285462 b!963119)))

(declare-fun lambda!33741 () Int)

(assert (=> bs!241199 (not (= lambda!33741 lambda!33710))))

(assert (=> bs!241199 (= (and (= (reg!3006 r!15766) lt!347222) (= (Star!2677 (reg!3006 r!15766)) lt!347221)) (= lambda!33741 lambda!33709))))

(declare-fun bs!241200 () Bool)

(assert (= bs!241200 (and d!285462 b!963109)))

(assert (=> bs!241200 (= (= (Star!2677 (reg!3006 r!15766)) lt!347223) (= lambda!33741 lambda!33707))))

(declare-fun bs!241201 () Bool)

(assert (= bs!241201 (and d!285462 b!963246)))

(assert (=> bs!241201 (not (= lambda!33741 lambda!33720))))

(declare-fun bs!241202 () Bool)

(assert (= bs!241202 (and d!285462 d!285448)))

(assert (=> bs!241202 (not (= lambda!33741 lambda!33736))))

(assert (=> bs!241200 (not (= lambda!33741 lambda!33708))))

(declare-fun bs!241203 () Bool)

(assert (= bs!241203 (and d!285462 b!963341)))

(assert (=> bs!241203 (not (= lambda!33741 lambda!33729))))

(declare-fun bs!241204 () Bool)

(assert (= bs!241204 (and d!285462 d!285432)))

(assert (=> bs!241204 (= (and (= (reg!3006 r!15766) lt!347222) (= (Star!2677 (reg!3006 r!15766)) lt!347221)) (= lambda!33741 lambda!33728))))

(assert (=> bs!241202 (= (and (= (reg!3006 r!15766) lt!347222) (= (Star!2677 (reg!3006 r!15766)) (Star!2677 lt!347222))) (= lambda!33741 lambda!33735))))

(declare-fun bs!241205 () Bool)

(assert (= bs!241205 (and d!285462 b!963339)))

(assert (=> bs!241205 (not (= lambda!33741 lambda!33730))))

(declare-fun bs!241206 () Bool)

(assert (= bs!241206 (and d!285462 b!963248)))

(assert (=> bs!241206 (not (= lambda!33741 lambda!33717))))

(assert (=> d!285462 true))

(assert (=> d!285462 true))

(declare-fun bs!241207 () Bool)

(assert (= bs!241207 d!285462))

(declare-fun lambda!33742 () Int)

(assert (=> bs!241207 (not (= lambda!33742 lambda!33741))))

(assert (=> bs!241199 (= (and (= (reg!3006 r!15766) lt!347222) (= (Star!2677 (reg!3006 r!15766)) lt!347221)) (= lambda!33742 lambda!33710))))

(assert (=> bs!241199 (not (= lambda!33742 lambda!33709))))

(assert (=> bs!241200 (not (= lambda!33742 lambda!33707))))

(assert (=> bs!241201 (not (= lambda!33742 lambda!33720))))

(assert (=> bs!241202 (= (and (= (reg!3006 r!15766) lt!347222) (= (Star!2677 (reg!3006 r!15766)) (Star!2677 lt!347222))) (= lambda!33742 lambda!33736))))

(assert (=> bs!241200 (= (= (Star!2677 (reg!3006 r!15766)) lt!347223) (= lambda!33742 lambda!33708))))

(assert (=> bs!241203 (= (and (= (reg!3006 r!15766) (reg!3006 lt!347221)) (= (Star!2677 (reg!3006 r!15766)) lt!347221)) (= lambda!33742 lambda!33729))))

(assert (=> bs!241204 (not (= lambda!33742 lambda!33728))))

(assert (=> bs!241202 (not (= lambda!33742 lambda!33735))))

(assert (=> bs!241205 (not (= lambda!33742 lambda!33730))))

(assert (=> bs!241206 (= (= (Star!2677 (reg!3006 r!15766)) r!15766) (= lambda!33742 lambda!33717))))

(assert (=> d!285462 true))

(assert (=> d!285462 true))

(assert (=> d!285462 (= (Exists!420 lambda!33741) (Exists!420 lambda!33742))))

(declare-fun lt!347274 () Unit!15009)

(assert (=> d!285462 (= lt!347274 (choose!6077 (reg!3006 r!15766) s!10566))))

(assert (=> d!285462 (validRegex!1146 (reg!3006 r!15766))))

(assert (=> d!285462 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!138 (reg!3006 r!15766) s!10566) lt!347274)))

(declare-fun m!1170559 () Bool)

(assert (=> bs!241207 m!1170559))

(declare-fun m!1170561 () Bool)

(assert (=> bs!241207 m!1170561))

(declare-fun m!1170563 () Bool)

(assert (=> bs!241207 m!1170563))

(declare-fun m!1170565 () Bool)

(assert (=> bs!241207 m!1170565))

(assert (=> b!963109 d!285462))

(declare-fun d!285464 () Bool)

(assert (=> d!285464 (= (Exists!420 lambda!33707) (choose!6075 lambda!33707))))

(declare-fun bs!241212 () Bool)

(assert (= bs!241212 d!285464))

(declare-fun m!1170567 () Bool)

(assert (=> bs!241212 m!1170567))

(assert (=> b!963109 d!285464))

(declare-fun d!285466 () Bool)

(assert (=> d!285466 (= (isDefined!1900 (findConcatSeparation!364 (reg!3006 r!15766) lt!347223 Nil!9891 s!10566 s!10566)) (not (isEmpty!6191 (findConcatSeparation!364 (reg!3006 r!15766) lt!347223 Nil!9891 s!10566 s!10566))))))

(declare-fun bs!241213 () Bool)

(assert (= bs!241213 d!285466))

(assert (=> bs!241213 m!1170363))

(declare-fun m!1170569 () Bool)

(assert (=> bs!241213 m!1170569))

(assert (=> b!963109 d!285466))

(declare-fun b!963516 () Bool)

(declare-fun e!622089 () Bool)

(assert (=> b!963516 (= e!622089 (matchR!1215 (derivativeStep!616 lt!347221 (head!1769 s!10566)) (tail!1331 s!10566)))))

(declare-fun b!963517 () Bool)

(declare-fun res!437974 () Bool)

(declare-fun e!622084 () Bool)

(assert (=> b!963517 (=> res!437974 e!622084)))

(assert (=> b!963517 (= res!437974 (not (isEmpty!6189 (tail!1331 s!10566))))))

(declare-fun b!963518 () Bool)

(declare-fun res!437971 () Bool)

(declare-fun e!622085 () Bool)

(assert (=> b!963518 (=> res!437971 e!622085)))

(assert (=> b!963518 (= res!437971 (not ((_ is ElementMatch!2677) lt!347221)))))

(declare-fun e!622088 () Bool)

(assert (=> b!963518 (= e!622088 e!622085)))

(declare-fun b!963519 () Bool)

(assert (=> b!963519 (= e!622089 (nullable!808 lt!347221))))

(declare-fun b!963520 () Bool)

(declare-fun e!622090 () Bool)

(assert (=> b!963520 (= e!622090 e!622088)))

(declare-fun c!156975 () Bool)

(assert (=> b!963520 (= c!156975 ((_ is EmptyLang!2677) lt!347221))))

(declare-fun b!963521 () Bool)

(declare-fun lt!347275 () Bool)

(assert (=> b!963521 (= e!622088 (not lt!347275))))

(declare-fun bm!60829 () Bool)

(declare-fun call!60834 () Bool)

(assert (=> bm!60829 (= call!60834 (isEmpty!6189 s!10566))))

(declare-fun b!963522 () Bool)

(declare-fun e!622086 () Bool)

(assert (=> b!963522 (= e!622085 e!622086)))

(declare-fun res!437973 () Bool)

(assert (=> b!963522 (=> (not res!437973) (not e!622086))))

(assert (=> b!963522 (= res!437973 (not lt!347275))))

(declare-fun b!963523 () Bool)

(declare-fun res!437970 () Bool)

(declare-fun e!622087 () Bool)

(assert (=> b!963523 (=> (not res!437970) (not e!622087))))

(assert (=> b!963523 (= res!437970 (isEmpty!6189 (tail!1331 s!10566)))))

(declare-fun b!963524 () Bool)

(declare-fun res!437969 () Bool)

(assert (=> b!963524 (=> (not res!437969) (not e!622087))))

(assert (=> b!963524 (= res!437969 (not call!60834))))

(declare-fun b!963526 () Bool)

(declare-fun res!437975 () Bool)

(assert (=> b!963526 (=> res!437975 e!622085)))

(assert (=> b!963526 (= res!437975 e!622087)))

(declare-fun res!437976 () Bool)

(assert (=> b!963526 (=> (not res!437976) (not e!622087))))

(assert (=> b!963526 (= res!437976 lt!347275)))

(declare-fun b!963527 () Bool)

(assert (=> b!963527 (= e!622084 (not (= (head!1769 s!10566) (c!156880 lt!347221))))))

(declare-fun b!963528 () Bool)

(assert (=> b!963528 (= e!622086 e!622084)))

(declare-fun res!437972 () Bool)

(assert (=> b!963528 (=> res!437972 e!622084)))

(assert (=> b!963528 (= res!437972 call!60834)))

(declare-fun b!963529 () Bool)

(assert (=> b!963529 (= e!622087 (= (head!1769 s!10566) (c!156880 lt!347221)))))

(declare-fun d!285468 () Bool)

(assert (=> d!285468 e!622090))

(declare-fun c!156977 () Bool)

(assert (=> d!285468 (= c!156977 ((_ is EmptyExpr!2677) lt!347221))))

(assert (=> d!285468 (= lt!347275 e!622089)))

(declare-fun c!156976 () Bool)

(assert (=> d!285468 (= c!156976 (isEmpty!6189 s!10566))))

(assert (=> d!285468 (validRegex!1146 lt!347221)))

(assert (=> d!285468 (= (matchR!1215 lt!347221 s!10566) lt!347275)))

(declare-fun b!963525 () Bool)

(assert (=> b!963525 (= e!622090 (= lt!347275 call!60834))))

(assert (= (and d!285468 c!156976) b!963519))

(assert (= (and d!285468 (not c!156976)) b!963516))

(assert (= (and d!285468 c!156977) b!963525))

(assert (= (and d!285468 (not c!156977)) b!963520))

(assert (= (and b!963520 c!156975) b!963521))

(assert (= (and b!963520 (not c!156975)) b!963518))

(assert (= (and b!963518 (not res!437971)) b!963526))

(assert (= (and b!963526 res!437976) b!963524))

(assert (= (and b!963524 res!437969) b!963523))

(assert (= (and b!963523 res!437970) b!963529))

(assert (= (and b!963526 (not res!437975)) b!963522))

(assert (= (and b!963522 res!437973) b!963528))

(assert (= (and b!963528 (not res!437972)) b!963517))

(assert (= (and b!963517 (not res!437974)) b!963527))

(assert (= (or b!963525 b!963524 b!963528) bm!60829))

(assert (=> b!963529 m!1170411))

(assert (=> b!963519 m!1170545))

(assert (=> b!963527 m!1170411))

(assert (=> b!963516 m!1170411))

(assert (=> b!963516 m!1170411))

(declare-fun m!1170571 () Bool)

(assert (=> b!963516 m!1170571))

(assert (=> b!963516 m!1170417))

(assert (=> b!963516 m!1170571))

(assert (=> b!963516 m!1170417))

(declare-fun m!1170573 () Bool)

(assert (=> b!963516 m!1170573))

(assert (=> b!963517 m!1170417))

(assert (=> b!963517 m!1170417))

(assert (=> b!963517 m!1170421))

(assert (=> b!963523 m!1170417))

(assert (=> b!963523 m!1170417))

(assert (=> b!963523 m!1170421))

(assert (=> d!285468 m!1170347))

(assert (=> d!285468 m!1170495))

(assert (=> bm!60829 m!1170347))

(assert (=> b!963109 d!285468))

(declare-fun bs!241219 () Bool)

(declare-fun d!285470 () Bool)

(assert (= bs!241219 (and d!285470 d!285462)))

(declare-fun lambda!33745 () Int)

(assert (=> bs!241219 (not (= lambda!33745 lambda!33742))))

(assert (=> bs!241219 (= (= lt!347223 (Star!2677 (reg!3006 r!15766))) (= lambda!33745 lambda!33741))))

(declare-fun bs!241220 () Bool)

(assert (= bs!241220 (and d!285470 b!963119)))

(assert (=> bs!241220 (not (= lambda!33745 lambda!33710))))

(assert (=> bs!241220 (= (and (= (reg!3006 r!15766) lt!347222) (= lt!347223 lt!347221)) (= lambda!33745 lambda!33709))))

(declare-fun bs!241221 () Bool)

(assert (= bs!241221 (and d!285470 b!963109)))

(assert (=> bs!241221 (= lambda!33745 lambda!33707)))

(declare-fun bs!241222 () Bool)

(assert (= bs!241222 (and d!285470 b!963246)))

(assert (=> bs!241222 (not (= lambda!33745 lambda!33720))))

(declare-fun bs!241223 () Bool)

(assert (= bs!241223 (and d!285470 d!285448)))

(assert (=> bs!241223 (not (= lambda!33745 lambda!33736))))

(assert (=> bs!241221 (not (= lambda!33745 lambda!33708))))

(declare-fun bs!241224 () Bool)

(assert (= bs!241224 (and d!285470 b!963341)))

(assert (=> bs!241224 (not (= lambda!33745 lambda!33729))))

(declare-fun bs!241225 () Bool)

(assert (= bs!241225 (and d!285470 d!285432)))

(assert (=> bs!241225 (= (and (= (reg!3006 r!15766) lt!347222) (= lt!347223 lt!347221)) (= lambda!33745 lambda!33728))))

(assert (=> bs!241223 (= (and (= (reg!3006 r!15766) lt!347222) (= lt!347223 (Star!2677 lt!347222))) (= lambda!33745 lambda!33735))))

(declare-fun bs!241226 () Bool)

(assert (= bs!241226 (and d!285470 b!963339)))

(assert (=> bs!241226 (not (= lambda!33745 lambda!33730))))

(declare-fun bs!241227 () Bool)

(assert (= bs!241227 (and d!285470 b!963248)))

(assert (=> bs!241227 (not (= lambda!33745 lambda!33717))))

(assert (=> d!285470 true))

(assert (=> d!285470 true))

(assert (=> d!285470 true))

(assert (=> d!285470 (= (isDefined!1900 (findConcatSeparation!364 (reg!3006 r!15766) lt!347223 Nil!9891 s!10566 s!10566)) (Exists!420 lambda!33745))))

(declare-fun lt!347276 () Unit!15009)

(assert (=> d!285470 (= lt!347276 (choose!6076 (reg!3006 r!15766) lt!347223 s!10566))))

(assert (=> d!285470 (validRegex!1146 (reg!3006 r!15766))))

(assert (=> d!285470 (= (lemmaFindConcatSeparationEquivalentToExists!364 (reg!3006 r!15766) lt!347223 s!10566) lt!347276)))

(declare-fun bs!241228 () Bool)

(assert (= bs!241228 d!285470))

(declare-fun m!1170587 () Bool)

(assert (=> bs!241228 m!1170587))

(assert (=> bs!241228 m!1170363))

(assert (=> bs!241228 m!1170565))

(assert (=> bs!241228 m!1170363))

(assert (=> bs!241228 m!1170365))

(declare-fun m!1170589 () Bool)

(assert (=> bs!241228 m!1170589))

(assert (=> b!963109 d!285470))

(declare-fun b!963544 () Bool)

(declare-fun e!622102 () Bool)

(declare-fun lt!347280 () Option!2258)

(assert (=> b!963544 (= e!622102 (= (++!2667 (_1!6442 (get!3380 lt!347280)) (_2!6442 (get!3380 lt!347280))) s!10566))))

(declare-fun b!963545 () Bool)

(declare-fun res!437987 () Bool)

(assert (=> b!963545 (=> (not res!437987) (not e!622102))))

(assert (=> b!963545 (= res!437987 (matchR!1215 (reg!3006 r!15766) (_1!6442 (get!3380 lt!347280))))))

(declare-fun b!963546 () Bool)

(declare-fun res!437985 () Bool)

(assert (=> b!963546 (=> (not res!437985) (not e!622102))))

(assert (=> b!963546 (= res!437985 (matchR!1215 lt!347223 (_2!6442 (get!3380 lt!347280))))))

(declare-fun b!963547 () Bool)

(declare-fun e!622101 () Option!2258)

(assert (=> b!963547 (= e!622101 (Some!2257 (tuple2!11233 Nil!9891 s!10566)))))

(declare-fun b!963548 () Bool)

(declare-fun e!622099 () Bool)

(assert (=> b!963548 (= e!622099 (matchR!1215 lt!347223 s!10566))))

(declare-fun b!963549 () Bool)

(declare-fun e!622098 () Option!2258)

(assert (=> b!963549 (= e!622101 e!622098)))

(declare-fun c!156981 () Bool)

(assert (=> b!963549 (= c!156981 ((_ is Nil!9891) s!10566))))

(declare-fun b!963550 () Bool)

(assert (=> b!963550 (= e!622098 None!2257)))

(declare-fun b!963551 () Bool)

(declare-fun lt!347279 () Unit!15009)

(declare-fun lt!347278 () Unit!15009)

(assert (=> b!963551 (= lt!347279 lt!347278)))

(assert (=> b!963551 (= (++!2667 (++!2667 Nil!9891 (Cons!9891 (h!15292 s!10566) Nil!9891)) (t!100953 s!10566)) s!10566)))

(assert (=> b!963551 (= lt!347278 (lemmaMoveElementToOtherListKeepsConcatEq!272 Nil!9891 (h!15292 s!10566) (t!100953 s!10566) s!10566))))

(assert (=> b!963551 (= e!622098 (findConcatSeparation!364 (reg!3006 r!15766) lt!347223 (++!2667 Nil!9891 (Cons!9891 (h!15292 s!10566) Nil!9891)) (t!100953 s!10566) s!10566))))

(declare-fun b!963552 () Bool)

(declare-fun e!622100 () Bool)

(assert (=> b!963552 (= e!622100 (not (isDefined!1900 lt!347280)))))

(declare-fun d!285476 () Bool)

(assert (=> d!285476 e!622100))

(declare-fun res!437988 () Bool)

(assert (=> d!285476 (=> res!437988 e!622100)))

(assert (=> d!285476 (= res!437988 e!622102)))

(declare-fun res!437989 () Bool)

(assert (=> d!285476 (=> (not res!437989) (not e!622102))))

(assert (=> d!285476 (= res!437989 (isDefined!1900 lt!347280))))

(assert (=> d!285476 (= lt!347280 e!622101)))

(declare-fun c!156982 () Bool)

(assert (=> d!285476 (= c!156982 e!622099)))

(declare-fun res!437986 () Bool)

(assert (=> d!285476 (=> (not res!437986) (not e!622099))))

(assert (=> d!285476 (= res!437986 (matchR!1215 (reg!3006 r!15766) Nil!9891))))

(assert (=> d!285476 (validRegex!1146 (reg!3006 r!15766))))

(assert (=> d!285476 (= (findConcatSeparation!364 (reg!3006 r!15766) lt!347223 Nil!9891 s!10566 s!10566) lt!347280)))

(assert (= (and d!285476 res!437986) b!963548))

(assert (= (and d!285476 c!156982) b!963547))

(assert (= (and d!285476 (not c!156982)) b!963549))

(assert (= (and b!963549 c!156981) b!963550))

(assert (= (and b!963549 (not c!156981)) b!963551))

(assert (= (and d!285476 res!437989) b!963545))

(assert (= (and b!963545 res!437987) b!963546))

(assert (= (and b!963546 res!437985) b!963544))

(assert (= (and d!285476 (not res!437988)) b!963552))

(declare-fun m!1170591 () Bool)

(assert (=> b!963544 m!1170591))

(declare-fun m!1170593 () Bool)

(assert (=> b!963544 m!1170593))

(assert (=> b!963546 m!1170591))

(declare-fun m!1170595 () Bool)

(assert (=> b!963546 m!1170595))

(declare-fun m!1170597 () Bool)

(assert (=> b!963552 m!1170597))

(assert (=> b!963545 m!1170591))

(declare-fun m!1170599 () Bool)

(assert (=> b!963545 m!1170599))

(assert (=> b!963551 m!1170483))

(assert (=> b!963551 m!1170483))

(assert (=> b!963551 m!1170485))

(assert (=> b!963551 m!1170487))

(assert (=> b!963551 m!1170483))

(declare-fun m!1170601 () Bool)

(assert (=> b!963551 m!1170601))

(assert (=> d!285476 m!1170597))

(declare-fun m!1170603 () Bool)

(assert (=> d!285476 m!1170603))

(assert (=> d!285476 m!1170565))

(declare-fun m!1170605 () Bool)

(assert (=> b!963548 m!1170605))

(assert (=> b!963109 d!285476))

(declare-fun c!157004 () Bool)

(declare-fun bm!60844 () Bool)

(declare-fun c!157002 () Bool)

(declare-fun c!157003 () Bool)

(declare-fun call!60853 () Regex!2677)

(declare-fun c!157001 () Bool)

(assert (=> bm!60844 (= call!60853 (removeUselessConcat!324 (ite c!157004 (regTwo!5866 (reg!3006 r!15766)) (ite c!157002 (regOne!5866 (reg!3006 r!15766)) (ite c!157001 (regTwo!5866 (reg!3006 r!15766)) (ite c!157003 (regTwo!5867 (reg!3006 r!15766)) (reg!3006 (reg!3006 r!15766))))))))))

(declare-fun b!963600 () Bool)

(declare-fun c!157000 () Bool)

(assert (=> b!963600 (= c!157000 ((_ is Star!2677) (reg!3006 r!15766)))))

(declare-fun e!622133 () Regex!2677)

(declare-fun e!622130 () Regex!2677)

(assert (=> b!963600 (= e!622133 e!622130)))

(declare-fun b!963601 () Bool)

(declare-fun e!622129 () Bool)

(declare-fun lt!347288 () Regex!2677)

(assert (=> b!963601 (= e!622129 (= (nullable!808 lt!347288) (nullable!808 (reg!3006 r!15766))))))

(declare-fun b!963602 () Bool)

(declare-fun e!622134 () Regex!2677)

(assert (=> b!963602 (= e!622134 call!60853)))

(declare-fun bm!60845 () Bool)

(declare-fun call!60850 () Regex!2677)

(assert (=> bm!60845 (= call!60850 call!60853)))

(declare-fun d!285478 () Bool)

(assert (=> d!285478 e!622129))

(declare-fun res!438003 () Bool)

(assert (=> d!285478 (=> (not res!438003) (not e!622129))))

(assert (=> d!285478 (= res!438003 (validRegex!1146 lt!347288))))

(assert (=> d!285478 (= lt!347288 e!622134)))

(assert (=> d!285478 (= c!157004 (and ((_ is Concat!4510) (reg!3006 r!15766)) ((_ is EmptyExpr!2677) (regOne!5866 (reg!3006 r!15766)))))))

(assert (=> d!285478 (validRegex!1146 (reg!3006 r!15766))))

(assert (=> d!285478 (= (removeUselessConcat!324 (reg!3006 r!15766)) lt!347288)))

(declare-fun b!963603 () Bool)

(declare-fun call!60851 () Regex!2677)

(assert (=> b!963603 (= e!622130 (Star!2677 call!60851))))

(declare-fun bm!60846 () Bool)

(declare-fun call!60852 () Regex!2677)

(assert (=> bm!60846 (= call!60851 call!60852)))

(declare-fun b!963604 () Bool)

(declare-fun e!622132 () Regex!2677)

(assert (=> b!963604 (= e!622134 e!622132)))

(assert (=> b!963604 (= c!157002 (and ((_ is Concat!4510) (reg!3006 r!15766)) ((_ is EmptyExpr!2677) (regTwo!5866 (reg!3006 r!15766)))))))

(declare-fun b!963605 () Bool)

(assert (=> b!963605 (= c!157001 ((_ is Concat!4510) (reg!3006 r!15766)))))

(declare-fun e!622131 () Regex!2677)

(assert (=> b!963605 (= e!622132 e!622131)))

(declare-fun b!963606 () Bool)

(declare-fun call!60849 () Regex!2677)

(assert (=> b!963606 (= e!622131 (Concat!4510 call!60849 call!60852))))

(declare-fun bm!60847 () Bool)

(assert (=> bm!60847 (= call!60849 (removeUselessConcat!324 (ite c!157001 (regOne!5866 (reg!3006 r!15766)) (regOne!5867 (reg!3006 r!15766)))))))

(declare-fun b!963607 () Bool)

(assert (=> b!963607 (= e!622131 e!622133)))

(assert (=> b!963607 (= c!157003 ((_ is Union!2677) (reg!3006 r!15766)))))

(declare-fun b!963608 () Bool)

(assert (=> b!963608 (= e!622130 (reg!3006 r!15766))))

(declare-fun b!963609 () Bool)

(assert (=> b!963609 (= e!622133 (Union!2677 call!60849 call!60851))))

(declare-fun b!963610 () Bool)

(assert (=> b!963610 (= e!622132 call!60850)))

(declare-fun bm!60848 () Bool)

(assert (=> bm!60848 (= call!60852 call!60850)))

(assert (= (and d!285478 c!157004) b!963602))

(assert (= (and d!285478 (not c!157004)) b!963604))

(assert (= (and b!963604 c!157002) b!963610))

(assert (= (and b!963604 (not c!157002)) b!963605))

(assert (= (and b!963605 c!157001) b!963606))

(assert (= (and b!963605 (not c!157001)) b!963607))

(assert (= (and b!963607 c!157003) b!963609))

(assert (= (and b!963607 (not c!157003)) b!963600))

(assert (= (and b!963600 c!157000) b!963603))

(assert (= (and b!963600 (not c!157000)) b!963608))

(assert (= (or b!963609 b!963603) bm!60846))

(assert (= (or b!963606 bm!60846) bm!60848))

(assert (= (or b!963606 b!963609) bm!60847))

(assert (= (or b!963610 bm!60848) bm!60845))

(assert (= (or b!963602 bm!60845) bm!60844))

(assert (= (and d!285478 res!438003) b!963601))

(declare-fun m!1170635 () Bool)

(assert (=> bm!60844 m!1170635))

(declare-fun m!1170637 () Bool)

(assert (=> b!963601 m!1170637))

(assert (=> b!963601 m!1170539))

(declare-fun m!1170639 () Bool)

(assert (=> d!285478 m!1170639))

(assert (=> d!285478 m!1170565))

(declare-fun m!1170641 () Bool)

(assert (=> bm!60847 m!1170641))

(assert (=> b!963109 d!285478))

(declare-fun b!963621 () Bool)

(declare-fun e!622137 () Bool)

(assert (=> b!963621 (= e!622137 tp_is_empty!4997)))

(declare-fun b!963624 () Bool)

(declare-fun tp!295907 () Bool)

(declare-fun tp!295906 () Bool)

(assert (=> b!963624 (= e!622137 (and tp!295907 tp!295906))))

(declare-fun b!963623 () Bool)

(declare-fun tp!295905 () Bool)

(assert (=> b!963623 (= e!622137 tp!295905)))

(declare-fun b!963622 () Bool)

(declare-fun tp!295904 () Bool)

(declare-fun tp!295903 () Bool)

(assert (=> b!963622 (= e!622137 (and tp!295904 tp!295903))))

(assert (=> b!963115 (= tp!295887 e!622137)))

(assert (= (and b!963115 ((_ is ElementMatch!2677) (regOne!5866 r!15766))) b!963621))

(assert (= (and b!963115 ((_ is Concat!4510) (regOne!5866 r!15766))) b!963622))

(assert (= (and b!963115 ((_ is Star!2677) (regOne!5866 r!15766))) b!963623))

(assert (= (and b!963115 ((_ is Union!2677) (regOne!5866 r!15766))) b!963624))

(declare-fun b!963625 () Bool)

(declare-fun e!622138 () Bool)

(assert (=> b!963625 (= e!622138 tp_is_empty!4997)))

(declare-fun b!963628 () Bool)

(declare-fun tp!295912 () Bool)

(declare-fun tp!295911 () Bool)

(assert (=> b!963628 (= e!622138 (and tp!295912 tp!295911))))

(declare-fun b!963627 () Bool)

(declare-fun tp!295910 () Bool)

(assert (=> b!963627 (= e!622138 tp!295910)))

(declare-fun b!963626 () Bool)

(declare-fun tp!295909 () Bool)

(declare-fun tp!295908 () Bool)

(assert (=> b!963626 (= e!622138 (and tp!295909 tp!295908))))

(assert (=> b!963115 (= tp!295891 e!622138)))

(assert (= (and b!963115 ((_ is ElementMatch!2677) (regTwo!5866 r!15766))) b!963625))

(assert (= (and b!963115 ((_ is Concat!4510) (regTwo!5866 r!15766))) b!963626))

(assert (= (and b!963115 ((_ is Star!2677) (regTwo!5866 r!15766))) b!963627))

(assert (= (and b!963115 ((_ is Union!2677) (regTwo!5866 r!15766))) b!963628))

(declare-fun b!963633 () Bool)

(declare-fun e!622141 () Bool)

(declare-fun tp!295915 () Bool)

(assert (=> b!963633 (= e!622141 (and tp_is_empty!4997 tp!295915))))

(assert (=> b!963116 (= tp!295892 e!622141)))

(assert (= (and b!963116 ((_ is Cons!9891) (t!100953 s!10566))) b!963633))

(declare-fun b!963634 () Bool)

(declare-fun e!622142 () Bool)

(assert (=> b!963634 (= e!622142 tp_is_empty!4997)))

(declare-fun b!963637 () Bool)

(declare-fun tp!295920 () Bool)

(declare-fun tp!295919 () Bool)

(assert (=> b!963637 (= e!622142 (and tp!295920 tp!295919))))

(declare-fun b!963636 () Bool)

(declare-fun tp!295918 () Bool)

(assert (=> b!963636 (= e!622142 tp!295918)))

(declare-fun b!963635 () Bool)

(declare-fun tp!295917 () Bool)

(declare-fun tp!295916 () Bool)

(assert (=> b!963635 (= e!622142 (and tp!295917 tp!295916))))

(assert (=> b!963117 (= tp!295888 e!622142)))

(assert (= (and b!963117 ((_ is ElementMatch!2677) (reg!3006 r!15766))) b!963634))

(assert (= (and b!963117 ((_ is Concat!4510) (reg!3006 r!15766))) b!963635))

(assert (= (and b!963117 ((_ is Star!2677) (reg!3006 r!15766))) b!963636))

(assert (= (and b!963117 ((_ is Union!2677) (reg!3006 r!15766))) b!963637))

(declare-fun b!963638 () Bool)

(declare-fun e!622143 () Bool)

(assert (=> b!963638 (= e!622143 tp_is_empty!4997)))

(declare-fun b!963641 () Bool)

(declare-fun tp!295925 () Bool)

(declare-fun tp!295924 () Bool)

(assert (=> b!963641 (= e!622143 (and tp!295925 tp!295924))))

(declare-fun b!963640 () Bool)

(declare-fun tp!295923 () Bool)

(assert (=> b!963640 (= e!622143 tp!295923)))

(declare-fun b!963639 () Bool)

(declare-fun tp!295922 () Bool)

(declare-fun tp!295921 () Bool)

(assert (=> b!963639 (= e!622143 (and tp!295922 tp!295921))))

(assert (=> b!963113 (= tp!295890 e!622143)))

(assert (= (and b!963113 ((_ is ElementMatch!2677) (regOne!5867 r!15766))) b!963638))

(assert (= (and b!963113 ((_ is Concat!4510) (regOne!5867 r!15766))) b!963639))

(assert (= (and b!963113 ((_ is Star!2677) (regOne!5867 r!15766))) b!963640))

(assert (= (and b!963113 ((_ is Union!2677) (regOne!5867 r!15766))) b!963641))

(declare-fun b!963642 () Bool)

(declare-fun e!622144 () Bool)

(assert (=> b!963642 (= e!622144 tp_is_empty!4997)))

(declare-fun b!963645 () Bool)

(declare-fun tp!295930 () Bool)

(declare-fun tp!295929 () Bool)

(assert (=> b!963645 (= e!622144 (and tp!295930 tp!295929))))

(declare-fun b!963644 () Bool)

(declare-fun tp!295928 () Bool)

(assert (=> b!963644 (= e!622144 tp!295928)))

(declare-fun b!963643 () Bool)

(declare-fun tp!295927 () Bool)

(declare-fun tp!295926 () Bool)

(assert (=> b!963643 (= e!622144 (and tp!295927 tp!295926))))

(assert (=> b!963113 (= tp!295889 e!622144)))

(assert (= (and b!963113 ((_ is ElementMatch!2677) (regTwo!5867 r!15766))) b!963642))

(assert (= (and b!963113 ((_ is Concat!4510) (regTwo!5867 r!15766))) b!963643))

(assert (= (and b!963113 ((_ is Star!2677) (regTwo!5867 r!15766))) b!963644))

(assert (= (and b!963113 ((_ is Union!2677) (regTwo!5867 r!15766))) b!963645))

(check-sat (not b!963624) (not d!285468) (not b!963491) (not b!963335) (not b!963329) (not b!963253) (not d!285432) (not b!963643) (not b!963498) (not d!285418) (not b!963529) (not b!963346) (not b!963264) (not b!963545) (not d!285446) (not bm!60819) (not bm!60775) (not b!963261) (not b!963252) (not b!963332) (not bm!60822) (not b!963345) (not d!285478) (not b!963552) (not d!285476) (not b!963262) (not b!963622) (not d!285426) (not d!285466) (not b!963159) (not d!285442) (not b!963637) (not bm!60783) (not b!963544) (not b!963494) (not d!285460) (not b!963330) (not b!963153) (not b!963152) (not d!285406) (not b!963626) (not b!963336) (not b!963155) (not b!963502) tp_is_empty!4997 (not d!285458) (not b!963504) (not b!963640) (not d!285464) (not b!963633) (not b!963635) (not bm!60787) (not d!285462) (not b!963548) (not d!285430) (not b!963272) (not b!963517) (not b!963644) (not b!963546) (not b!963627) (not b!963523) (not b!963601) (not bm!60820) (not bm!60784) (not b!963551) (not b!963274) (not b!963636) (not bm!60785) (not b!963482) (not b!963328) (not d!285420) (not b!963639) (not b!963628) (not bm!60829) (not bm!60844) (not b!963492) (not b!963163) (not b!963527) (not b!963623) (not bm!60786) (not b!963645) (not d!285436) (not b!963516) (not b!963519) (not b!963165) (not bm!60847) (not b!963641) (not b!963268) (not d!285448) (not d!285470))
(check-sat)
