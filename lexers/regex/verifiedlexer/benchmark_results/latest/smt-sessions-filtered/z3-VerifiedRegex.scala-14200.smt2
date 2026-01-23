; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!744182 () Bool)

(assert start!744182)

(declare-fun b!7878119 () Bool)

(declare-fun res!3128929 () Bool)

(declare-fun e!4652739 () Bool)

(assert (=> b!7878119 (=> (not res!3128929) (not e!4652739))))

(declare-datatypes ((C!42672 0))(
  ( (C!42673 (val!31798 Int)) )
))
(declare-datatypes ((Regex!21173 0))(
  ( (ElementMatch!21173 (c!1446777 C!42672)) (Concat!30018 (regOne!42858 Regex!21173) (regTwo!42858 Regex!21173)) (EmptyExpr!21173) (Star!21173 (reg!21502 Regex!21173)) (EmptyLang!21173) (Union!21173 (regOne!42859 Regex!21173) (regTwo!42859 Regex!21173)) )
))
(declare-fun lt!2681080 () Regex!21173)

(declare-fun validRegex!11583 (Regex!21173) Bool)

(assert (=> b!7878119 (= res!3128929 (validRegex!11583 lt!2681080))))

(declare-fun b!7878121 () Bool)

(declare-fun e!4652743 () Bool)

(declare-fun tp!2340577 () Bool)

(declare-fun tp!2340584 () Bool)

(assert (=> b!7878121 (= e!4652743 (and tp!2340577 tp!2340584))))

(declare-fun b!7878122 () Bool)

(declare-fun res!3128928 () Bool)

(assert (=> b!7878122 (=> (not res!3128928) (not e!4652739))))

(declare-fun lt!2681081 () Regex!21173)

(declare-datatypes ((List!74032 0))(
  ( (Nil!73908) (Cons!73908 (h!80356 C!42672) (t!388767 List!74032)) )
))
(declare-fun s!14219 () List!74032)

(declare-fun matchR!10609 (Regex!21173 List!74032) Bool)

(assert (=> b!7878122 (= res!3128928 (matchR!10609 lt!2681081 (t!388767 s!14219)))))

(declare-fun b!7878123 () Bool)

(declare-fun e!4652741 () Bool)

(declare-fun tp_is_empty!52745 () Bool)

(declare-fun tp!2340574 () Bool)

(assert (=> b!7878123 (= e!4652741 (and tp_is_empty!52745 tp!2340574))))

(declare-fun b!7878124 () Bool)

(declare-fun e!4652740 () Bool)

(assert (=> b!7878124 (= e!4652740 tp_is_empty!52745)))

(declare-fun b!7878125 () Bool)

(assert (=> b!7878125 (= e!4652743 tp_is_empty!52745)))

(declare-fun b!7878126 () Bool)

(declare-fun tp!2340581 () Bool)

(declare-fun tp!2340576 () Bool)

(assert (=> b!7878126 (= e!4652740 (and tp!2340581 tp!2340576))))

(declare-fun b!7878120 () Bool)

(declare-fun tp!2340579 () Bool)

(assert (=> b!7878120 (= e!4652743 tp!2340579)))

(declare-fun res!3128930 () Bool)

(declare-fun e!4652742 () Bool)

(assert (=> start!744182 (=> (not res!3128930) (not e!4652742))))

(declare-fun r1!6200 () Regex!21173)

(assert (=> start!744182 (= res!3128930 (validRegex!11583 r1!6200))))

(assert (=> start!744182 e!4652742))

(assert (=> start!744182 e!4652740))

(assert (=> start!744182 e!4652743))

(assert (=> start!744182 e!4652741))

(declare-fun b!7878127 () Bool)

(declare-fun tp!2340582 () Bool)

(declare-fun tp!2340580 () Bool)

(assert (=> b!7878127 (= e!4652740 (and tp!2340582 tp!2340580))))

(declare-fun b!7878128 () Bool)

(declare-fun res!3128924 () Bool)

(assert (=> b!7878128 (=> (not res!3128924) (not e!4652742))))

(get-info :version)

(assert (=> b!7878128 (= res!3128924 ((_ is Cons!73908) s!14219))))

(declare-fun b!7878129 () Bool)

(declare-fun res!3128925 () Bool)

(assert (=> b!7878129 (=> (not res!3128925) (not e!4652742))))

(assert (=> b!7878129 (= res!3128925 (matchR!10609 r1!6200 s!14219))))

(declare-fun b!7878130 () Bool)

(declare-fun tp!2340578 () Bool)

(declare-fun tp!2340583 () Bool)

(assert (=> b!7878130 (= e!4652743 (and tp!2340578 tp!2340583))))

(declare-fun b!7878131 () Bool)

(declare-fun tp!2340575 () Bool)

(assert (=> b!7878131 (= e!4652740 tp!2340575)))

(declare-fun b!7878132 () Bool)

(declare-fun ListPrimitiveSize!472 (List!74032) Int)

(assert (=> b!7878132 (= e!4652739 (>= (ListPrimitiveSize!472 (t!388767 s!14219)) (ListPrimitiveSize!472 s!14219)))))

(declare-fun b!7878133 () Bool)

(assert (=> b!7878133 (= e!4652742 e!4652739)))

(declare-fun res!3128927 () Bool)

(assert (=> b!7878133 (=> (not res!3128927) (not e!4652739))))

(assert (=> b!7878133 (= res!3128927 (validRegex!11583 lt!2681081))))

(declare-fun r2!6138 () Regex!21173)

(declare-fun derivativeStep!6404 (Regex!21173 C!42672) Regex!21173)

(assert (=> b!7878133 (= lt!2681080 (derivativeStep!6404 r2!6138 (h!80356 s!14219)))))

(assert (=> b!7878133 (= lt!2681081 (derivativeStep!6404 r1!6200 (h!80356 s!14219)))))

(declare-fun b!7878134 () Bool)

(declare-fun res!3128926 () Bool)

(assert (=> b!7878134 (=> (not res!3128926) (not e!4652742))))

(assert (=> b!7878134 (= res!3128926 (validRegex!11583 r2!6138))))

(assert (= (and start!744182 res!3128930) b!7878134))

(assert (= (and b!7878134 res!3128926) b!7878129))

(assert (= (and b!7878129 res!3128925) b!7878128))

(assert (= (and b!7878128 res!3128924) b!7878133))

(assert (= (and b!7878133 res!3128927) b!7878119))

(assert (= (and b!7878119 res!3128929) b!7878122))

(assert (= (and b!7878122 res!3128928) b!7878132))

(assert (= (and start!744182 ((_ is ElementMatch!21173) r1!6200)) b!7878124))

(assert (= (and start!744182 ((_ is Concat!30018) r1!6200)) b!7878127))

(assert (= (and start!744182 ((_ is Star!21173) r1!6200)) b!7878131))

(assert (= (and start!744182 ((_ is Union!21173) r1!6200)) b!7878126))

(assert (= (and start!744182 ((_ is ElementMatch!21173) r2!6138)) b!7878125))

(assert (= (and start!744182 ((_ is Concat!30018) r2!6138)) b!7878121))

(assert (= (and start!744182 ((_ is Star!21173) r2!6138)) b!7878120))

(assert (= (and start!744182 ((_ is Union!21173) r2!6138)) b!7878130))

(assert (= (and start!744182 ((_ is Cons!73908) s!14219)) b!7878123))

(declare-fun m!8267060 () Bool)

(assert (=> b!7878119 m!8267060))

(declare-fun m!8267062 () Bool)

(assert (=> b!7878129 m!8267062))

(declare-fun m!8267064 () Bool)

(assert (=> b!7878133 m!8267064))

(declare-fun m!8267066 () Bool)

(assert (=> b!7878133 m!8267066))

(declare-fun m!8267068 () Bool)

(assert (=> b!7878133 m!8267068))

(declare-fun m!8267070 () Bool)

(assert (=> b!7878132 m!8267070))

(declare-fun m!8267072 () Bool)

(assert (=> b!7878132 m!8267072))

(declare-fun m!8267074 () Bool)

(assert (=> start!744182 m!8267074))

(declare-fun m!8267076 () Bool)

(assert (=> b!7878134 m!8267076))

(declare-fun m!8267078 () Bool)

(assert (=> b!7878122 m!8267078))

(check-sat (not b!7878130) (not b!7878119) (not b!7878123) (not b!7878127) (not b!7878133) (not b!7878121) (not b!7878122) (not b!7878131) (not b!7878120) (not b!7878134) (not b!7878126) (not b!7878132) (not start!744182) tp_is_empty!52745 (not b!7878129))
(check-sat)
(get-model)

(declare-fun b!7878157 () Bool)

(declare-fun e!4652764 () Bool)

(declare-fun call!730677 () Bool)

(assert (=> b!7878157 (= e!4652764 call!730677)))

(declare-fun bm!730670 () Bool)

(declare-fun call!730675 () Bool)

(declare-fun call!730676 () Bool)

(assert (=> bm!730670 (= call!730675 call!730676)))

(declare-fun b!7878158 () Bool)

(declare-fun res!3128944 () Bool)

(assert (=> b!7878158 (=> (not res!3128944) (not e!4652764))))

(assert (=> b!7878158 (= res!3128944 call!730675)))

(declare-fun e!4652758 () Bool)

(assert (=> b!7878158 (= e!4652758 e!4652764)))

(declare-fun b!7878159 () Bool)

(declare-fun e!4652762 () Bool)

(assert (=> b!7878159 (= e!4652762 call!730675)))

(declare-fun c!1446782 () Bool)

(declare-fun bm!730671 () Bool)

(declare-fun c!1446783 () Bool)

(assert (=> bm!730671 (= call!730676 (validRegex!11583 (ite c!1446783 (reg!21502 lt!2681080) (ite c!1446782 (regOne!42859 lt!2681080) (regTwo!42858 lt!2681080)))))))

(declare-fun b!7878160 () Bool)

(declare-fun res!3128942 () Bool)

(declare-fun e!4652761 () Bool)

(assert (=> b!7878160 (=> res!3128942 e!4652761)))

(assert (=> b!7878160 (= res!3128942 (not ((_ is Concat!30018) lt!2681080)))))

(assert (=> b!7878160 (= e!4652758 e!4652761)))

(declare-fun b!7878161 () Bool)

(declare-fun e!4652763 () Bool)

(assert (=> b!7878161 (= e!4652763 call!730676)))

(declare-fun d!2355865 () Bool)

(declare-fun res!3128943 () Bool)

(declare-fun e!4652760 () Bool)

(assert (=> d!2355865 (=> res!3128943 e!4652760)))

(assert (=> d!2355865 (= res!3128943 ((_ is ElementMatch!21173) lt!2681080))))

(assert (=> d!2355865 (= (validRegex!11583 lt!2681080) e!4652760)))

(declare-fun b!7878162 () Bool)

(assert (=> b!7878162 (= e!4652761 e!4652762)))

(declare-fun res!3128941 () Bool)

(assert (=> b!7878162 (=> (not res!3128941) (not e!4652762))))

(assert (=> b!7878162 (= res!3128941 call!730677)))

(declare-fun b!7878163 () Bool)

(declare-fun e!4652759 () Bool)

(assert (=> b!7878163 (= e!4652759 e!4652758)))

(assert (=> b!7878163 (= c!1446782 ((_ is Union!21173) lt!2681080))))

(declare-fun bm!730672 () Bool)

(assert (=> bm!730672 (= call!730677 (validRegex!11583 (ite c!1446782 (regTwo!42859 lt!2681080) (regOne!42858 lt!2681080))))))

(declare-fun b!7878164 () Bool)

(assert (=> b!7878164 (= e!4652759 e!4652763)))

(declare-fun res!3128945 () Bool)

(declare-fun nullable!9437 (Regex!21173) Bool)

(assert (=> b!7878164 (= res!3128945 (not (nullable!9437 (reg!21502 lt!2681080))))))

(assert (=> b!7878164 (=> (not res!3128945) (not e!4652763))))

(declare-fun b!7878165 () Bool)

(assert (=> b!7878165 (= e!4652760 e!4652759)))

(assert (=> b!7878165 (= c!1446783 ((_ is Star!21173) lt!2681080))))

(assert (= (and d!2355865 (not res!3128943)) b!7878165))

(assert (= (and b!7878165 c!1446783) b!7878164))

(assert (= (and b!7878165 (not c!1446783)) b!7878163))

(assert (= (and b!7878164 res!3128945) b!7878161))

(assert (= (and b!7878163 c!1446782) b!7878158))

(assert (= (and b!7878163 (not c!1446782)) b!7878160))

(assert (= (and b!7878158 res!3128944) b!7878157))

(assert (= (and b!7878160 (not res!3128942)) b!7878162))

(assert (= (and b!7878162 res!3128941) b!7878159))

(assert (= (or b!7878157 b!7878162) bm!730672))

(assert (= (or b!7878158 b!7878159) bm!730670))

(assert (= (or b!7878161 bm!730670) bm!730671))

(declare-fun m!8267080 () Bool)

(assert (=> bm!730671 m!8267080))

(declare-fun m!8267082 () Bool)

(assert (=> bm!730672 m!8267082))

(declare-fun m!8267084 () Bool)

(assert (=> b!7878164 m!8267084))

(assert (=> b!7878119 d!2355865))

(declare-fun b!7878184 () Bool)

(declare-fun e!4652781 () Bool)

(declare-fun call!730680 () Bool)

(assert (=> b!7878184 (= e!4652781 call!730680)))

(declare-fun bm!730673 () Bool)

(declare-fun call!730678 () Bool)

(declare-fun call!730679 () Bool)

(assert (=> bm!730673 (= call!730678 call!730679)))

(declare-fun b!7878185 () Bool)

(declare-fun res!3128959 () Bool)

(assert (=> b!7878185 (=> (not res!3128959) (not e!4652781))))

(assert (=> b!7878185 (= res!3128959 call!730678)))

(declare-fun e!4652775 () Bool)

(assert (=> b!7878185 (= e!4652775 e!4652781)))

(declare-fun b!7878186 () Bool)

(declare-fun e!4652779 () Bool)

(assert (=> b!7878186 (= e!4652779 call!730678)))

(declare-fun c!1446790 () Bool)

(declare-fun bm!730674 () Bool)

(declare-fun c!1446791 () Bool)

(assert (=> bm!730674 (= call!730679 (validRegex!11583 (ite c!1446791 (reg!21502 r1!6200) (ite c!1446790 (regOne!42859 r1!6200) (regTwo!42858 r1!6200)))))))

(declare-fun b!7878187 () Bool)

(declare-fun res!3128957 () Bool)

(declare-fun e!4652778 () Bool)

(assert (=> b!7878187 (=> res!3128957 e!4652778)))

(assert (=> b!7878187 (= res!3128957 (not ((_ is Concat!30018) r1!6200)))))

(assert (=> b!7878187 (= e!4652775 e!4652778)))

(declare-fun b!7878188 () Bool)

(declare-fun e!4652780 () Bool)

(assert (=> b!7878188 (= e!4652780 call!730679)))

(declare-fun d!2355869 () Bool)

(declare-fun res!3128958 () Bool)

(declare-fun e!4652777 () Bool)

(assert (=> d!2355869 (=> res!3128958 e!4652777)))

(assert (=> d!2355869 (= res!3128958 ((_ is ElementMatch!21173) r1!6200))))

(assert (=> d!2355869 (= (validRegex!11583 r1!6200) e!4652777)))

(declare-fun b!7878189 () Bool)

(assert (=> b!7878189 (= e!4652778 e!4652779)))

(declare-fun res!3128956 () Bool)

(assert (=> b!7878189 (=> (not res!3128956) (not e!4652779))))

(assert (=> b!7878189 (= res!3128956 call!730680)))

(declare-fun b!7878190 () Bool)

(declare-fun e!4652776 () Bool)

(assert (=> b!7878190 (= e!4652776 e!4652775)))

(assert (=> b!7878190 (= c!1446790 ((_ is Union!21173) r1!6200))))

(declare-fun bm!730675 () Bool)

(assert (=> bm!730675 (= call!730680 (validRegex!11583 (ite c!1446790 (regTwo!42859 r1!6200) (regOne!42858 r1!6200))))))

(declare-fun b!7878191 () Bool)

(assert (=> b!7878191 (= e!4652776 e!4652780)))

(declare-fun res!3128960 () Bool)

(assert (=> b!7878191 (= res!3128960 (not (nullable!9437 (reg!21502 r1!6200))))))

(assert (=> b!7878191 (=> (not res!3128960) (not e!4652780))))

(declare-fun b!7878192 () Bool)

(assert (=> b!7878192 (= e!4652777 e!4652776)))

(assert (=> b!7878192 (= c!1446791 ((_ is Star!21173) r1!6200))))

(assert (= (and d!2355869 (not res!3128958)) b!7878192))

(assert (= (and b!7878192 c!1446791) b!7878191))

(assert (= (and b!7878192 (not c!1446791)) b!7878190))

(assert (= (and b!7878191 res!3128960) b!7878188))

(assert (= (and b!7878190 c!1446790) b!7878185))

(assert (= (and b!7878190 (not c!1446790)) b!7878187))

(assert (= (and b!7878185 res!3128959) b!7878184))

(assert (= (and b!7878187 (not res!3128957)) b!7878189))

(assert (= (and b!7878189 res!3128956) b!7878186))

(assert (= (or b!7878184 b!7878189) bm!730675))

(assert (= (or b!7878185 b!7878186) bm!730673))

(assert (= (or b!7878188 bm!730673) bm!730674))

(declare-fun m!8267086 () Bool)

(assert (=> bm!730674 m!8267086))

(declare-fun m!8267088 () Bool)

(assert (=> bm!730675 m!8267088))

(declare-fun m!8267090 () Bool)

(assert (=> b!7878191 m!8267090))

(assert (=> start!744182 d!2355869))

(declare-fun d!2355871 () Bool)

(declare-fun lt!2681086 () Int)

(assert (=> d!2355871 (>= lt!2681086 0)))

(declare-fun e!4652788 () Int)

(assert (=> d!2355871 (= lt!2681086 e!4652788)))

(declare-fun c!1446794 () Bool)

(assert (=> d!2355871 (= c!1446794 ((_ is Nil!73908) (t!388767 s!14219)))))

(assert (=> d!2355871 (= (ListPrimitiveSize!472 (t!388767 s!14219)) lt!2681086)))

(declare-fun b!7878203 () Bool)

(assert (=> b!7878203 (= e!4652788 0)))

(declare-fun b!7878204 () Bool)

(assert (=> b!7878204 (= e!4652788 (+ 1 (ListPrimitiveSize!472 (t!388767 (t!388767 s!14219)))))))

(assert (= (and d!2355871 c!1446794) b!7878203))

(assert (= (and d!2355871 (not c!1446794)) b!7878204))

(declare-fun m!8267092 () Bool)

(assert (=> b!7878204 m!8267092))

(assert (=> b!7878132 d!2355871))

(declare-fun d!2355873 () Bool)

(declare-fun lt!2681087 () Int)

(assert (=> d!2355873 (>= lt!2681087 0)))

(declare-fun e!4652789 () Int)

(assert (=> d!2355873 (= lt!2681087 e!4652789)))

(declare-fun c!1446795 () Bool)

(assert (=> d!2355873 (= c!1446795 ((_ is Nil!73908) s!14219))))

(assert (=> d!2355873 (= (ListPrimitiveSize!472 s!14219) lt!2681087)))

(declare-fun b!7878205 () Bool)

(assert (=> b!7878205 (= e!4652789 0)))

(declare-fun b!7878206 () Bool)

(assert (=> b!7878206 (= e!4652789 (+ 1 (ListPrimitiveSize!472 (t!388767 s!14219))))))

(assert (= (and d!2355873 c!1446795) b!7878205))

(assert (= (and d!2355873 (not c!1446795)) b!7878206))

(assert (=> b!7878206 m!8267070))

(assert (=> b!7878132 d!2355873))

(declare-fun bm!730696 () Bool)

(declare-fun call!730701 () Bool)

(declare-fun isEmpty!42404 (List!74032) Bool)

(assert (=> bm!730696 (= call!730701 (isEmpty!42404 (t!388767 s!14219)))))

(declare-fun b!7878294 () Bool)

(declare-fun e!4652846 () Bool)

(declare-fun e!4652847 () Bool)

(assert (=> b!7878294 (= e!4652846 e!4652847)))

(declare-fun res!3129018 () Bool)

(assert (=> b!7878294 (=> res!3129018 e!4652847)))

(assert (=> b!7878294 (= res!3129018 call!730701)))

(declare-fun b!7878295 () Bool)

(declare-fun head!16115 (List!74032) C!42672)

(assert (=> b!7878295 (= e!4652847 (not (= (head!16115 (t!388767 s!14219)) (c!1446777 lt!2681081))))))

(declare-fun b!7878296 () Bool)

(declare-fun res!3129021 () Bool)

(declare-fun e!4652851 () Bool)

(assert (=> b!7878296 (=> (not res!3129021) (not e!4652851))))

(declare-fun tail!15658 (List!74032) List!74032)

(assert (=> b!7878296 (= res!3129021 (isEmpty!42404 (tail!15658 (t!388767 s!14219))))))

(declare-fun b!7878297 () Bool)

(declare-fun res!3129019 () Bool)

(declare-fun e!4652849 () Bool)

(assert (=> b!7878297 (=> res!3129019 e!4652849)))

(assert (=> b!7878297 (= res!3129019 (not ((_ is ElementMatch!21173) lt!2681081)))))

(declare-fun e!4652852 () Bool)

(assert (=> b!7878297 (= e!4652852 e!4652849)))

(declare-fun b!7878298 () Bool)

(declare-fun res!3129017 () Bool)

(assert (=> b!7878298 (=> res!3129017 e!4652847)))

(assert (=> b!7878298 (= res!3129017 (not (isEmpty!42404 (tail!15658 (t!388767 s!14219)))))))

(declare-fun b!7878299 () Bool)

(declare-fun e!4652850 () Bool)

(declare-fun lt!2681091 () Bool)

(assert (=> b!7878299 (= e!4652850 (= lt!2681091 call!730701))))

(declare-fun b!7878301 () Bool)

(assert (=> b!7878301 (= e!4652851 (= (head!16115 (t!388767 s!14219)) (c!1446777 lt!2681081)))))

(declare-fun b!7878302 () Bool)

(assert (=> b!7878302 (= e!4652852 (not lt!2681091))))

(declare-fun b!7878303 () Bool)

(declare-fun res!3129020 () Bool)

(assert (=> b!7878303 (=> (not res!3129020) (not e!4652851))))

(assert (=> b!7878303 (= res!3129020 (not call!730701))))

(declare-fun b!7878304 () Bool)

(declare-fun e!4652848 () Bool)

(assert (=> b!7878304 (= e!4652848 (nullable!9437 lt!2681081))))

(declare-fun b!7878305 () Bool)

(assert (=> b!7878305 (= e!4652848 (matchR!10609 (derivativeStep!6404 lt!2681081 (head!16115 (t!388767 s!14219))) (tail!15658 (t!388767 s!14219))))))

(declare-fun b!7878306 () Bool)

(assert (=> b!7878306 (= e!4652850 e!4652852)))

(declare-fun c!1446815 () Bool)

(assert (=> b!7878306 (= c!1446815 ((_ is EmptyLang!21173) lt!2681081))))

(declare-fun b!7878307 () Bool)

(declare-fun res!3129023 () Bool)

(assert (=> b!7878307 (=> res!3129023 e!4652849)))

(assert (=> b!7878307 (= res!3129023 e!4652851)))

(declare-fun res!3129016 () Bool)

(assert (=> b!7878307 (=> (not res!3129016) (not e!4652851))))

(assert (=> b!7878307 (= res!3129016 lt!2681091)))

(declare-fun d!2355875 () Bool)

(assert (=> d!2355875 e!4652850))

(declare-fun c!1446816 () Bool)

(assert (=> d!2355875 (= c!1446816 ((_ is EmptyExpr!21173) lt!2681081))))

(assert (=> d!2355875 (= lt!2681091 e!4652848)))

(declare-fun c!1446817 () Bool)

(assert (=> d!2355875 (= c!1446817 (isEmpty!42404 (t!388767 s!14219)))))

(assert (=> d!2355875 (validRegex!11583 lt!2681081)))

(assert (=> d!2355875 (= (matchR!10609 lt!2681081 (t!388767 s!14219)) lt!2681091)))

(declare-fun b!7878300 () Bool)

(assert (=> b!7878300 (= e!4652849 e!4652846)))

(declare-fun res!3129022 () Bool)

(assert (=> b!7878300 (=> (not res!3129022) (not e!4652846))))

(assert (=> b!7878300 (= res!3129022 (not lt!2681091))))

(assert (= (and d!2355875 c!1446817) b!7878304))

(assert (= (and d!2355875 (not c!1446817)) b!7878305))

(assert (= (and d!2355875 c!1446816) b!7878299))

(assert (= (and d!2355875 (not c!1446816)) b!7878306))

(assert (= (and b!7878306 c!1446815) b!7878302))

(assert (= (and b!7878306 (not c!1446815)) b!7878297))

(assert (= (and b!7878297 (not res!3129019)) b!7878307))

(assert (= (and b!7878307 res!3129016) b!7878303))

(assert (= (and b!7878303 res!3129020) b!7878296))

(assert (= (and b!7878296 res!3129021) b!7878301))

(assert (= (and b!7878307 (not res!3129023)) b!7878300))

(assert (= (and b!7878300 res!3129022) b!7878294))

(assert (= (and b!7878294 (not res!3129018)) b!7878298))

(assert (= (and b!7878298 (not res!3129017)) b!7878295))

(assert (= (or b!7878299 b!7878294 b!7878303) bm!730696))

(declare-fun m!8267126 () Bool)

(assert (=> d!2355875 m!8267126))

(assert (=> d!2355875 m!8267064))

(declare-fun m!8267128 () Bool)

(assert (=> b!7878305 m!8267128))

(assert (=> b!7878305 m!8267128))

(declare-fun m!8267130 () Bool)

(assert (=> b!7878305 m!8267130))

(declare-fun m!8267132 () Bool)

(assert (=> b!7878305 m!8267132))

(assert (=> b!7878305 m!8267130))

(assert (=> b!7878305 m!8267132))

(declare-fun m!8267134 () Bool)

(assert (=> b!7878305 m!8267134))

(assert (=> b!7878298 m!8267132))

(assert (=> b!7878298 m!8267132))

(declare-fun m!8267136 () Bool)

(assert (=> b!7878298 m!8267136))

(declare-fun m!8267138 () Bool)

(assert (=> b!7878304 m!8267138))

(assert (=> b!7878301 m!8267128))

(assert (=> b!7878295 m!8267128))

(assert (=> b!7878296 m!8267132))

(assert (=> b!7878296 m!8267132))

(assert (=> b!7878296 m!8267136))

(assert (=> bm!730696 m!8267126))

(assert (=> b!7878122 d!2355875))

(declare-fun b!7878308 () Bool)

(declare-fun e!4652859 () Bool)

(declare-fun call!730704 () Bool)

(assert (=> b!7878308 (= e!4652859 call!730704)))

(declare-fun bm!730697 () Bool)

(declare-fun call!730702 () Bool)

(declare-fun call!730703 () Bool)

(assert (=> bm!730697 (= call!730702 call!730703)))

(declare-fun b!7878309 () Bool)

(declare-fun res!3129027 () Bool)

(assert (=> b!7878309 (=> (not res!3129027) (not e!4652859))))

(assert (=> b!7878309 (= res!3129027 call!730702)))

(declare-fun e!4652853 () Bool)

(assert (=> b!7878309 (= e!4652853 e!4652859)))

(declare-fun b!7878310 () Bool)

(declare-fun e!4652857 () Bool)

(assert (=> b!7878310 (= e!4652857 call!730702)))

(declare-fun c!1446818 () Bool)

(declare-fun c!1446819 () Bool)

(declare-fun bm!730698 () Bool)

(assert (=> bm!730698 (= call!730703 (validRegex!11583 (ite c!1446819 (reg!21502 lt!2681081) (ite c!1446818 (regOne!42859 lt!2681081) (regTwo!42858 lt!2681081)))))))

(declare-fun b!7878311 () Bool)

(declare-fun res!3129025 () Bool)

(declare-fun e!4652856 () Bool)

(assert (=> b!7878311 (=> res!3129025 e!4652856)))

(assert (=> b!7878311 (= res!3129025 (not ((_ is Concat!30018) lt!2681081)))))

(assert (=> b!7878311 (= e!4652853 e!4652856)))

(declare-fun b!7878312 () Bool)

(declare-fun e!4652858 () Bool)

(assert (=> b!7878312 (= e!4652858 call!730703)))

(declare-fun d!2355885 () Bool)

(declare-fun res!3129026 () Bool)

(declare-fun e!4652855 () Bool)

(assert (=> d!2355885 (=> res!3129026 e!4652855)))

(assert (=> d!2355885 (= res!3129026 ((_ is ElementMatch!21173) lt!2681081))))

(assert (=> d!2355885 (= (validRegex!11583 lt!2681081) e!4652855)))

(declare-fun b!7878313 () Bool)

(assert (=> b!7878313 (= e!4652856 e!4652857)))

(declare-fun res!3129024 () Bool)

(assert (=> b!7878313 (=> (not res!3129024) (not e!4652857))))

(assert (=> b!7878313 (= res!3129024 call!730704)))

(declare-fun b!7878314 () Bool)

(declare-fun e!4652854 () Bool)

(assert (=> b!7878314 (= e!4652854 e!4652853)))

(assert (=> b!7878314 (= c!1446818 ((_ is Union!21173) lt!2681081))))

(declare-fun bm!730699 () Bool)

(assert (=> bm!730699 (= call!730704 (validRegex!11583 (ite c!1446818 (regTwo!42859 lt!2681081) (regOne!42858 lt!2681081))))))

(declare-fun b!7878315 () Bool)

(assert (=> b!7878315 (= e!4652854 e!4652858)))

(declare-fun res!3129028 () Bool)

(assert (=> b!7878315 (= res!3129028 (not (nullable!9437 (reg!21502 lt!2681081))))))

(assert (=> b!7878315 (=> (not res!3129028) (not e!4652858))))

(declare-fun b!7878316 () Bool)

(assert (=> b!7878316 (= e!4652855 e!4652854)))

(assert (=> b!7878316 (= c!1446819 ((_ is Star!21173) lt!2681081))))

(assert (= (and d!2355885 (not res!3129026)) b!7878316))

(assert (= (and b!7878316 c!1446819) b!7878315))

(assert (= (and b!7878316 (not c!1446819)) b!7878314))

(assert (= (and b!7878315 res!3129028) b!7878312))

(assert (= (and b!7878314 c!1446818) b!7878309))

(assert (= (and b!7878314 (not c!1446818)) b!7878311))

(assert (= (and b!7878309 res!3129027) b!7878308))

(assert (= (and b!7878311 (not res!3129025)) b!7878313))

(assert (= (and b!7878313 res!3129024) b!7878310))

(assert (= (or b!7878308 b!7878313) bm!730699))

(assert (= (or b!7878309 b!7878310) bm!730697))

(assert (= (or b!7878312 bm!730697) bm!730698))

(declare-fun m!8267140 () Bool)

(assert (=> bm!730698 m!8267140))

(declare-fun m!8267142 () Bool)

(assert (=> bm!730699 m!8267142))

(declare-fun m!8267144 () Bool)

(assert (=> b!7878315 m!8267144))

(assert (=> b!7878133 d!2355885))

(declare-fun b!7878386 () Bool)

(declare-fun c!1446852 () Bool)

(assert (=> b!7878386 (= c!1446852 (nullable!9437 (regOne!42858 r2!6138)))))

(declare-fun e!4652900 () Regex!21173)

(declare-fun e!4652897 () Regex!21173)

(assert (=> b!7878386 (= e!4652900 e!4652897)))

(declare-fun bm!730727 () Bool)

(declare-fun call!730733 () Regex!21173)

(declare-fun call!730732 () Regex!21173)

(assert (=> bm!730727 (= call!730733 call!730732)))

(declare-fun bm!730728 () Bool)

(declare-fun call!730734 () Regex!21173)

(assert (=> bm!730728 (= call!730734 call!730733)))

(declare-fun b!7878387 () Bool)

(declare-fun e!4652898 () Regex!21173)

(declare-fun e!4652901 () Regex!21173)

(assert (=> b!7878387 (= e!4652898 e!4652901)))

(declare-fun c!1446856 () Bool)

(assert (=> b!7878387 (= c!1446856 ((_ is ElementMatch!21173) r2!6138))))

(declare-fun call!730735 () Regex!21173)

(declare-fun c!1446854 () Bool)

(declare-fun bm!730729 () Bool)

(assert (=> bm!730729 (= call!730735 (derivativeStep!6404 (ite c!1446854 (regTwo!42859 r2!6138) (regTwo!42858 r2!6138)) (h!80356 s!14219)))))

(declare-fun b!7878388 () Bool)

(assert (=> b!7878388 (= e!4652897 (Union!21173 (Concat!30018 call!730734 (regTwo!42858 r2!6138)) call!730735))))

(declare-fun d!2355887 () Bool)

(declare-fun lt!2681098 () Regex!21173)

(assert (=> d!2355887 (validRegex!11583 lt!2681098)))

(assert (=> d!2355887 (= lt!2681098 e!4652898)))

(declare-fun c!1446853 () Bool)

(assert (=> d!2355887 (= c!1446853 (or ((_ is EmptyExpr!21173) r2!6138) ((_ is EmptyLang!21173) r2!6138)))))

(assert (=> d!2355887 (validRegex!11583 r2!6138)))

(assert (=> d!2355887 (= (derivativeStep!6404 r2!6138 (h!80356 s!14219)) lt!2681098)))

(declare-fun b!7878389 () Bool)

(assert (=> b!7878389 (= e!4652897 (Union!21173 (Concat!30018 call!730734 (regTwo!42858 r2!6138)) EmptyLang!21173))))

(declare-fun b!7878390 () Bool)

(assert (=> b!7878390 (= e!4652900 (Concat!30018 call!730733 r2!6138))))

(declare-fun b!7878391 () Bool)

(assert (=> b!7878391 (= e!4652901 (ite (= (h!80356 s!14219) (c!1446777 r2!6138)) EmptyExpr!21173 EmptyLang!21173))))

(declare-fun b!7878392 () Bool)

(declare-fun e!4652899 () Regex!21173)

(assert (=> b!7878392 (= e!4652899 e!4652900)))

(declare-fun c!1446855 () Bool)

(assert (=> b!7878392 (= c!1446855 ((_ is Star!21173) r2!6138))))

(declare-fun b!7878393 () Bool)

(assert (=> b!7878393 (= c!1446854 ((_ is Union!21173) r2!6138))))

(assert (=> b!7878393 (= e!4652901 e!4652899)))

(declare-fun b!7878394 () Bool)

(assert (=> b!7878394 (= e!4652898 EmptyLang!21173)))

(declare-fun b!7878395 () Bool)

(assert (=> b!7878395 (= e!4652899 (Union!21173 call!730732 call!730735))))

(declare-fun bm!730730 () Bool)

(assert (=> bm!730730 (= call!730732 (derivativeStep!6404 (ite c!1446854 (regOne!42859 r2!6138) (ite c!1446855 (reg!21502 r2!6138) (regOne!42858 r2!6138))) (h!80356 s!14219)))))

(assert (= (and d!2355887 c!1446853) b!7878394))

(assert (= (and d!2355887 (not c!1446853)) b!7878387))

(assert (= (and b!7878387 c!1446856) b!7878391))

(assert (= (and b!7878387 (not c!1446856)) b!7878393))

(assert (= (and b!7878393 c!1446854) b!7878395))

(assert (= (and b!7878393 (not c!1446854)) b!7878392))

(assert (= (and b!7878392 c!1446855) b!7878390))

(assert (= (and b!7878392 (not c!1446855)) b!7878386))

(assert (= (and b!7878386 c!1446852) b!7878388))

(assert (= (and b!7878386 (not c!1446852)) b!7878389))

(assert (= (or b!7878388 b!7878389) bm!730728))

(assert (= (or b!7878390 bm!730728) bm!730727))

(assert (= (or b!7878395 b!7878388) bm!730729))

(assert (= (or b!7878395 bm!730727) bm!730730))

(declare-fun m!8267168 () Bool)

(assert (=> b!7878386 m!8267168))

(declare-fun m!8267170 () Bool)

(assert (=> bm!730729 m!8267170))

(declare-fun m!8267172 () Bool)

(assert (=> d!2355887 m!8267172))

(assert (=> d!2355887 m!8267076))

(declare-fun m!8267174 () Bool)

(assert (=> bm!730730 m!8267174))

(assert (=> b!7878133 d!2355887))

(declare-fun b!7878400 () Bool)

(declare-fun c!1446859 () Bool)

(assert (=> b!7878400 (= c!1446859 (nullable!9437 (regOne!42858 r1!6200)))))

(declare-fun e!4652907 () Regex!21173)

(declare-fun e!4652904 () Regex!21173)

(assert (=> b!7878400 (= e!4652907 e!4652904)))

(declare-fun bm!730731 () Bool)

(declare-fun call!730737 () Regex!21173)

(declare-fun call!730736 () Regex!21173)

(assert (=> bm!730731 (= call!730737 call!730736)))

(declare-fun bm!730732 () Bool)

(declare-fun call!730738 () Regex!21173)

(assert (=> bm!730732 (= call!730738 call!730737)))

(declare-fun b!7878401 () Bool)

(declare-fun e!4652905 () Regex!21173)

(declare-fun e!4652908 () Regex!21173)

(assert (=> b!7878401 (= e!4652905 e!4652908)))

(declare-fun c!1446863 () Bool)

(assert (=> b!7878401 (= c!1446863 ((_ is ElementMatch!21173) r1!6200))))

(declare-fun call!730739 () Regex!21173)

(declare-fun c!1446861 () Bool)

(declare-fun bm!730733 () Bool)

(assert (=> bm!730733 (= call!730739 (derivativeStep!6404 (ite c!1446861 (regTwo!42859 r1!6200) (regTwo!42858 r1!6200)) (h!80356 s!14219)))))

(declare-fun b!7878402 () Bool)

(assert (=> b!7878402 (= e!4652904 (Union!21173 (Concat!30018 call!730738 (regTwo!42858 r1!6200)) call!730739))))

(declare-fun d!2355895 () Bool)

(declare-fun lt!2681101 () Regex!21173)

(assert (=> d!2355895 (validRegex!11583 lt!2681101)))

(assert (=> d!2355895 (= lt!2681101 e!4652905)))

(declare-fun c!1446860 () Bool)

(assert (=> d!2355895 (= c!1446860 (or ((_ is EmptyExpr!21173) r1!6200) ((_ is EmptyLang!21173) r1!6200)))))

(assert (=> d!2355895 (validRegex!11583 r1!6200)))

(assert (=> d!2355895 (= (derivativeStep!6404 r1!6200 (h!80356 s!14219)) lt!2681101)))

(declare-fun b!7878403 () Bool)

(assert (=> b!7878403 (= e!4652904 (Union!21173 (Concat!30018 call!730738 (regTwo!42858 r1!6200)) EmptyLang!21173))))

(declare-fun b!7878404 () Bool)

(assert (=> b!7878404 (= e!4652907 (Concat!30018 call!730737 r1!6200))))

(declare-fun b!7878405 () Bool)

(assert (=> b!7878405 (= e!4652908 (ite (= (h!80356 s!14219) (c!1446777 r1!6200)) EmptyExpr!21173 EmptyLang!21173))))

(declare-fun b!7878406 () Bool)

(declare-fun e!4652906 () Regex!21173)

(assert (=> b!7878406 (= e!4652906 e!4652907)))

(declare-fun c!1446862 () Bool)

(assert (=> b!7878406 (= c!1446862 ((_ is Star!21173) r1!6200))))

(declare-fun b!7878407 () Bool)

(assert (=> b!7878407 (= c!1446861 ((_ is Union!21173) r1!6200))))

(assert (=> b!7878407 (= e!4652908 e!4652906)))

(declare-fun b!7878408 () Bool)

(assert (=> b!7878408 (= e!4652905 EmptyLang!21173)))

(declare-fun b!7878409 () Bool)

(assert (=> b!7878409 (= e!4652906 (Union!21173 call!730736 call!730739))))

(declare-fun bm!730734 () Bool)

(assert (=> bm!730734 (= call!730736 (derivativeStep!6404 (ite c!1446861 (regOne!42859 r1!6200) (ite c!1446862 (reg!21502 r1!6200) (regOne!42858 r1!6200))) (h!80356 s!14219)))))

(assert (= (and d!2355895 c!1446860) b!7878408))

(assert (= (and d!2355895 (not c!1446860)) b!7878401))

(assert (= (and b!7878401 c!1446863) b!7878405))

(assert (= (and b!7878401 (not c!1446863)) b!7878407))

(assert (= (and b!7878407 c!1446861) b!7878409))

(assert (= (and b!7878407 (not c!1446861)) b!7878406))

(assert (= (and b!7878406 c!1446862) b!7878404))

(assert (= (and b!7878406 (not c!1446862)) b!7878400))

(assert (= (and b!7878400 c!1446859) b!7878402))

(assert (= (and b!7878400 (not c!1446859)) b!7878403))

(assert (= (or b!7878402 b!7878403) bm!730732))

(assert (= (or b!7878404 bm!730732) bm!730731))

(assert (= (or b!7878409 b!7878402) bm!730733))

(assert (= (or b!7878409 bm!730731) bm!730734))

(declare-fun m!8267176 () Bool)

(assert (=> b!7878400 m!8267176))

(declare-fun m!8267178 () Bool)

(assert (=> bm!730733 m!8267178))

(declare-fun m!8267180 () Bool)

(assert (=> d!2355895 m!8267180))

(assert (=> d!2355895 m!8267074))

(declare-fun m!8267184 () Bool)

(assert (=> bm!730734 m!8267184))

(assert (=> b!7878133 d!2355895))

(declare-fun b!7878414 () Bool)

(declare-fun e!4652917 () Bool)

(declare-fun call!730742 () Bool)

(assert (=> b!7878414 (= e!4652917 call!730742)))

(declare-fun bm!730735 () Bool)

(declare-fun call!730740 () Bool)

(declare-fun call!730741 () Bool)

(assert (=> bm!730735 (= call!730740 call!730741)))

(declare-fun b!7878415 () Bool)

(declare-fun res!3129037 () Bool)

(assert (=> b!7878415 (=> (not res!3129037) (not e!4652917))))

(assert (=> b!7878415 (= res!3129037 call!730740)))

(declare-fun e!4652911 () Bool)

(assert (=> b!7878415 (= e!4652911 e!4652917)))

(declare-fun b!7878416 () Bool)

(declare-fun e!4652915 () Bool)

(assert (=> b!7878416 (= e!4652915 call!730740)))

(declare-fun c!1446866 () Bool)

(declare-fun bm!730736 () Bool)

(declare-fun c!1446867 () Bool)

(assert (=> bm!730736 (= call!730741 (validRegex!11583 (ite c!1446867 (reg!21502 r2!6138) (ite c!1446866 (regOne!42859 r2!6138) (regTwo!42858 r2!6138)))))))

(declare-fun b!7878417 () Bool)

(declare-fun res!3129035 () Bool)

(declare-fun e!4652914 () Bool)

(assert (=> b!7878417 (=> res!3129035 e!4652914)))

(assert (=> b!7878417 (= res!3129035 (not ((_ is Concat!30018) r2!6138)))))

(assert (=> b!7878417 (= e!4652911 e!4652914)))

(declare-fun b!7878418 () Bool)

(declare-fun e!4652916 () Bool)

(assert (=> b!7878418 (= e!4652916 call!730741)))

(declare-fun d!2355899 () Bool)

(declare-fun res!3129036 () Bool)

(declare-fun e!4652913 () Bool)

(assert (=> d!2355899 (=> res!3129036 e!4652913)))

(assert (=> d!2355899 (= res!3129036 ((_ is ElementMatch!21173) r2!6138))))

(assert (=> d!2355899 (= (validRegex!11583 r2!6138) e!4652913)))

(declare-fun b!7878419 () Bool)

(assert (=> b!7878419 (= e!4652914 e!4652915)))

(declare-fun res!3129034 () Bool)

(assert (=> b!7878419 (=> (not res!3129034) (not e!4652915))))

(assert (=> b!7878419 (= res!3129034 call!730742)))

(declare-fun b!7878420 () Bool)

(declare-fun e!4652912 () Bool)

(assert (=> b!7878420 (= e!4652912 e!4652911)))

(assert (=> b!7878420 (= c!1446866 ((_ is Union!21173) r2!6138))))

(declare-fun bm!730737 () Bool)

(assert (=> bm!730737 (= call!730742 (validRegex!11583 (ite c!1446866 (regTwo!42859 r2!6138) (regOne!42858 r2!6138))))))

(declare-fun b!7878421 () Bool)

(assert (=> b!7878421 (= e!4652912 e!4652916)))

(declare-fun res!3129038 () Bool)

(assert (=> b!7878421 (= res!3129038 (not (nullable!9437 (reg!21502 r2!6138))))))

(assert (=> b!7878421 (=> (not res!3129038) (not e!4652916))))

(declare-fun b!7878422 () Bool)

(assert (=> b!7878422 (= e!4652913 e!4652912)))

(assert (=> b!7878422 (= c!1446867 ((_ is Star!21173) r2!6138))))

(assert (= (and d!2355899 (not res!3129036)) b!7878422))

(assert (= (and b!7878422 c!1446867) b!7878421))

(assert (= (and b!7878422 (not c!1446867)) b!7878420))

(assert (= (and b!7878421 res!3129038) b!7878418))

(assert (= (and b!7878420 c!1446866) b!7878415))

(assert (= (and b!7878420 (not c!1446866)) b!7878417))

(assert (= (and b!7878415 res!3129037) b!7878414))

(assert (= (and b!7878417 (not res!3129035)) b!7878419))

(assert (= (and b!7878419 res!3129034) b!7878416))

(assert (= (or b!7878414 b!7878419) bm!730737))

(assert (= (or b!7878415 b!7878416) bm!730735))

(assert (= (or b!7878418 bm!730735) bm!730736))

(declare-fun m!8267186 () Bool)

(assert (=> bm!730736 m!8267186))

(declare-fun m!8267188 () Bool)

(assert (=> bm!730737 m!8267188))

(declare-fun m!8267190 () Bool)

(assert (=> b!7878421 m!8267190))

(assert (=> b!7878134 d!2355899))

(declare-fun bm!730739 () Bool)

(declare-fun call!730744 () Bool)

(assert (=> bm!730739 (= call!730744 (isEmpty!42404 s!14219))))

(declare-fun b!7878437 () Bool)

(declare-fun e!4652925 () Bool)

(declare-fun e!4652926 () Bool)

(assert (=> b!7878437 (= e!4652925 e!4652926)))

(declare-fun res!3129049 () Bool)

(assert (=> b!7878437 (=> res!3129049 e!4652926)))

(assert (=> b!7878437 (= res!3129049 call!730744)))

(declare-fun b!7878438 () Bool)

(assert (=> b!7878438 (= e!4652926 (not (= (head!16115 s!14219) (c!1446777 r1!6200))))))

(declare-fun b!7878439 () Bool)

(declare-fun res!3129052 () Bool)

(declare-fun e!4652930 () Bool)

(assert (=> b!7878439 (=> (not res!3129052) (not e!4652930))))

(assert (=> b!7878439 (= res!3129052 (isEmpty!42404 (tail!15658 s!14219)))))

(declare-fun b!7878440 () Bool)

(declare-fun res!3129050 () Bool)

(declare-fun e!4652928 () Bool)

(assert (=> b!7878440 (=> res!3129050 e!4652928)))

(assert (=> b!7878440 (= res!3129050 (not ((_ is ElementMatch!21173) r1!6200)))))

(declare-fun e!4652931 () Bool)

(assert (=> b!7878440 (= e!4652931 e!4652928)))

(declare-fun b!7878441 () Bool)

(declare-fun res!3129048 () Bool)

(assert (=> b!7878441 (=> res!3129048 e!4652926)))

(assert (=> b!7878441 (= res!3129048 (not (isEmpty!42404 (tail!15658 s!14219))))))

(declare-fun b!7878442 () Bool)

(declare-fun e!4652929 () Bool)

(declare-fun lt!2681105 () Bool)

(assert (=> b!7878442 (= e!4652929 (= lt!2681105 call!730744))))

(declare-fun b!7878444 () Bool)

(assert (=> b!7878444 (= e!4652930 (= (head!16115 s!14219) (c!1446777 r1!6200)))))

(declare-fun b!7878445 () Bool)

(assert (=> b!7878445 (= e!4652931 (not lt!2681105))))

(declare-fun b!7878446 () Bool)

(declare-fun res!3129051 () Bool)

(assert (=> b!7878446 (=> (not res!3129051) (not e!4652930))))

(assert (=> b!7878446 (= res!3129051 (not call!730744))))

(declare-fun b!7878447 () Bool)

(declare-fun e!4652927 () Bool)

(assert (=> b!7878447 (= e!4652927 (nullable!9437 r1!6200))))

(declare-fun b!7878448 () Bool)

(assert (=> b!7878448 (= e!4652927 (matchR!10609 (derivativeStep!6404 r1!6200 (head!16115 s!14219)) (tail!15658 s!14219)))))

(declare-fun b!7878449 () Bool)

(assert (=> b!7878449 (= e!4652929 e!4652931)))

(declare-fun c!1446871 () Bool)

(assert (=> b!7878449 (= c!1446871 ((_ is EmptyLang!21173) r1!6200))))

(declare-fun b!7878450 () Bool)

(declare-fun res!3129054 () Bool)

(assert (=> b!7878450 (=> res!3129054 e!4652928)))

(assert (=> b!7878450 (= res!3129054 e!4652930)))

(declare-fun res!3129047 () Bool)

(assert (=> b!7878450 (=> (not res!3129047) (not e!4652930))))

(assert (=> b!7878450 (= res!3129047 lt!2681105)))

(declare-fun d!2355903 () Bool)

(assert (=> d!2355903 e!4652929))

(declare-fun c!1446872 () Bool)

(assert (=> d!2355903 (= c!1446872 ((_ is EmptyExpr!21173) r1!6200))))

(assert (=> d!2355903 (= lt!2681105 e!4652927)))

(declare-fun c!1446873 () Bool)

(assert (=> d!2355903 (= c!1446873 (isEmpty!42404 s!14219))))

(assert (=> d!2355903 (validRegex!11583 r1!6200)))

(assert (=> d!2355903 (= (matchR!10609 r1!6200 s!14219) lt!2681105)))

(declare-fun b!7878443 () Bool)

(assert (=> b!7878443 (= e!4652928 e!4652925)))

(declare-fun res!3129053 () Bool)

(assert (=> b!7878443 (=> (not res!3129053) (not e!4652925))))

(assert (=> b!7878443 (= res!3129053 (not lt!2681105))))

(assert (= (and d!2355903 c!1446873) b!7878447))

(assert (= (and d!2355903 (not c!1446873)) b!7878448))

(assert (= (and d!2355903 c!1446872) b!7878442))

(assert (= (and d!2355903 (not c!1446872)) b!7878449))

(assert (= (and b!7878449 c!1446871) b!7878445))

(assert (= (and b!7878449 (not c!1446871)) b!7878440))

(assert (= (and b!7878440 (not res!3129050)) b!7878450))

(assert (= (and b!7878450 res!3129047) b!7878446))

(assert (= (and b!7878446 res!3129051) b!7878439))

(assert (= (and b!7878439 res!3129052) b!7878444))

(assert (= (and b!7878450 (not res!3129054)) b!7878443))

(assert (= (and b!7878443 res!3129053) b!7878437))

(assert (= (and b!7878437 (not res!3129049)) b!7878441))

(assert (= (and b!7878441 (not res!3129048)) b!7878438))

(assert (= (or b!7878442 b!7878437 b!7878446) bm!730739))

(declare-fun m!8267206 () Bool)

(assert (=> d!2355903 m!8267206))

(assert (=> d!2355903 m!8267074))

(declare-fun m!8267208 () Bool)

(assert (=> b!7878448 m!8267208))

(assert (=> b!7878448 m!8267208))

(declare-fun m!8267210 () Bool)

(assert (=> b!7878448 m!8267210))

(declare-fun m!8267212 () Bool)

(assert (=> b!7878448 m!8267212))

(assert (=> b!7878448 m!8267210))

(assert (=> b!7878448 m!8267212))

(declare-fun m!8267214 () Bool)

(assert (=> b!7878448 m!8267214))

(assert (=> b!7878441 m!8267212))

(assert (=> b!7878441 m!8267212))

(declare-fun m!8267216 () Bool)

(assert (=> b!7878441 m!8267216))

(declare-fun m!8267218 () Bool)

(assert (=> b!7878447 m!8267218))

(assert (=> b!7878444 m!8267208))

(assert (=> b!7878438 m!8267208))

(assert (=> b!7878439 m!8267212))

(assert (=> b!7878439 m!8267212))

(assert (=> b!7878439 m!8267216))

(assert (=> bm!730739 m!8267206))

(assert (=> b!7878129 d!2355903))

(declare-fun b!7878498 () Bool)

(declare-fun e!4652942 () Bool)

(declare-fun tp!2340637 () Bool)

(assert (=> b!7878498 (= e!4652942 tp!2340637)))

(declare-fun b!7878500 () Bool)

(declare-fun tp!2340639 () Bool)

(declare-fun tp!2340636 () Bool)

(assert (=> b!7878500 (= e!4652942 (and tp!2340639 tp!2340636))))

(declare-fun b!7878496 () Bool)

(declare-fun tp!2340635 () Bool)

(declare-fun tp!2340638 () Bool)

(assert (=> b!7878496 (= e!4652942 (and tp!2340635 tp!2340638))))

(declare-fun b!7878495 () Bool)

(assert (=> b!7878495 (= e!4652942 tp_is_empty!52745)))

(assert (=> b!7878130 (= tp!2340578 e!4652942)))

(assert (= (and b!7878130 ((_ is ElementMatch!21173) (regOne!42859 r2!6138))) b!7878495))

(assert (= (and b!7878130 ((_ is Concat!30018) (regOne!42859 r2!6138))) b!7878496))

(assert (= (and b!7878130 ((_ is Star!21173) (regOne!42859 r2!6138))) b!7878498))

(assert (= (and b!7878130 ((_ is Union!21173) (regOne!42859 r2!6138))) b!7878500))

(declare-fun b!7878509 () Bool)

(declare-fun e!4652946 () Bool)

(declare-fun tp!2340649 () Bool)

(assert (=> b!7878509 (= e!4652946 tp!2340649)))

(declare-fun b!7878510 () Bool)

(declare-fun tp!2340651 () Bool)

(declare-fun tp!2340648 () Bool)

(assert (=> b!7878510 (= e!4652946 (and tp!2340651 tp!2340648))))

(declare-fun b!7878508 () Bool)

(declare-fun tp!2340647 () Bool)

(declare-fun tp!2340650 () Bool)

(assert (=> b!7878508 (= e!4652946 (and tp!2340647 tp!2340650))))

(declare-fun b!7878507 () Bool)

(assert (=> b!7878507 (= e!4652946 tp_is_empty!52745)))

(assert (=> b!7878130 (= tp!2340583 e!4652946)))

(assert (= (and b!7878130 ((_ is ElementMatch!21173) (regTwo!42859 r2!6138))) b!7878507))

(assert (= (and b!7878130 ((_ is Concat!30018) (regTwo!42859 r2!6138))) b!7878508))

(assert (= (and b!7878130 ((_ is Star!21173) (regTwo!42859 r2!6138))) b!7878509))

(assert (= (and b!7878130 ((_ is Union!21173) (regTwo!42859 r2!6138))) b!7878510))

(declare-fun b!7878514 () Bool)

(declare-fun e!4652948 () Bool)

(declare-fun tp!2340655 () Bool)

(assert (=> b!7878514 (= e!4652948 tp!2340655)))

(declare-fun b!7878515 () Bool)

(declare-fun tp!2340657 () Bool)

(declare-fun tp!2340654 () Bool)

(assert (=> b!7878515 (= e!4652948 (and tp!2340657 tp!2340654))))

(declare-fun b!7878513 () Bool)

(declare-fun tp!2340653 () Bool)

(declare-fun tp!2340656 () Bool)

(assert (=> b!7878513 (= e!4652948 (and tp!2340653 tp!2340656))))

(declare-fun b!7878512 () Bool)

(assert (=> b!7878512 (= e!4652948 tp_is_empty!52745)))

(assert (=> b!7878120 (= tp!2340579 e!4652948)))

(assert (= (and b!7878120 ((_ is ElementMatch!21173) (reg!21502 r2!6138))) b!7878512))

(assert (= (and b!7878120 ((_ is Concat!30018) (reg!21502 r2!6138))) b!7878513))

(assert (= (and b!7878120 ((_ is Star!21173) (reg!21502 r2!6138))) b!7878514))

(assert (= (and b!7878120 ((_ is Union!21173) (reg!21502 r2!6138))) b!7878515))

(declare-fun b!7878525 () Bool)

(declare-fun e!4652950 () Bool)

(declare-fun tp!2340665 () Bool)

(assert (=> b!7878525 (= e!4652950 tp!2340665)))

(declare-fun b!7878527 () Bool)

(declare-fun tp!2340667 () Bool)

(declare-fun tp!2340664 () Bool)

(assert (=> b!7878527 (= e!4652950 (and tp!2340667 tp!2340664))))

(declare-fun b!7878523 () Bool)

(declare-fun tp!2340663 () Bool)

(declare-fun tp!2340666 () Bool)

(assert (=> b!7878523 (= e!4652950 (and tp!2340663 tp!2340666))))

(declare-fun b!7878520 () Bool)

(assert (=> b!7878520 (= e!4652950 tp_is_empty!52745)))

(assert (=> b!7878131 (= tp!2340575 e!4652950)))

(assert (= (and b!7878131 ((_ is ElementMatch!21173) (reg!21502 r1!6200))) b!7878520))

(assert (= (and b!7878131 ((_ is Concat!30018) (reg!21502 r1!6200))) b!7878523))

(assert (= (and b!7878131 ((_ is Star!21173) (reg!21502 r1!6200))) b!7878525))

(assert (= (and b!7878131 ((_ is Union!21173) (reg!21502 r1!6200))) b!7878527))

(declare-fun b!7878534 () Bool)

(declare-fun e!4652953 () Bool)

(declare-fun tp!2340680 () Bool)

(assert (=> b!7878534 (= e!4652953 tp!2340680)))

(declare-fun b!7878535 () Bool)

(declare-fun tp!2340682 () Bool)

(declare-fun tp!2340679 () Bool)

(assert (=> b!7878535 (= e!4652953 (and tp!2340682 tp!2340679))))

(declare-fun b!7878533 () Bool)

(declare-fun tp!2340678 () Bool)

(declare-fun tp!2340681 () Bool)

(assert (=> b!7878533 (= e!4652953 (and tp!2340678 tp!2340681))))

(declare-fun b!7878532 () Bool)

(assert (=> b!7878532 (= e!4652953 tp_is_empty!52745)))

(assert (=> b!7878126 (= tp!2340581 e!4652953)))

(assert (= (and b!7878126 ((_ is ElementMatch!21173) (regOne!42859 r1!6200))) b!7878532))

(assert (= (and b!7878126 ((_ is Concat!30018) (regOne!42859 r1!6200))) b!7878533))

(assert (= (and b!7878126 ((_ is Star!21173) (regOne!42859 r1!6200))) b!7878534))

(assert (= (and b!7878126 ((_ is Union!21173) (regOne!42859 r1!6200))) b!7878535))

(declare-fun b!7878538 () Bool)

(declare-fun e!4652954 () Bool)

(declare-fun tp!2340685 () Bool)

(assert (=> b!7878538 (= e!4652954 tp!2340685)))

(declare-fun b!7878539 () Bool)

(declare-fun tp!2340687 () Bool)

(declare-fun tp!2340684 () Bool)

(assert (=> b!7878539 (= e!4652954 (and tp!2340687 tp!2340684))))

(declare-fun b!7878537 () Bool)

(declare-fun tp!2340683 () Bool)

(declare-fun tp!2340686 () Bool)

(assert (=> b!7878537 (= e!4652954 (and tp!2340683 tp!2340686))))

(declare-fun b!7878536 () Bool)

(assert (=> b!7878536 (= e!4652954 tp_is_empty!52745)))

(assert (=> b!7878126 (= tp!2340576 e!4652954)))

(assert (= (and b!7878126 ((_ is ElementMatch!21173) (regTwo!42859 r1!6200))) b!7878536))

(assert (= (and b!7878126 ((_ is Concat!30018) (regTwo!42859 r1!6200))) b!7878537))

(assert (= (and b!7878126 ((_ is Star!21173) (regTwo!42859 r1!6200))) b!7878538))

(assert (= (and b!7878126 ((_ is Union!21173) (regTwo!42859 r1!6200))) b!7878539))

(declare-fun b!7878542 () Bool)

(declare-fun e!4652955 () Bool)

(declare-fun tp!2340690 () Bool)

(assert (=> b!7878542 (= e!4652955 tp!2340690)))

(declare-fun b!7878543 () Bool)

(declare-fun tp!2340692 () Bool)

(declare-fun tp!2340689 () Bool)

(assert (=> b!7878543 (= e!4652955 (and tp!2340692 tp!2340689))))

(declare-fun b!7878541 () Bool)

(declare-fun tp!2340688 () Bool)

(declare-fun tp!2340691 () Bool)

(assert (=> b!7878541 (= e!4652955 (and tp!2340688 tp!2340691))))

(declare-fun b!7878540 () Bool)

(assert (=> b!7878540 (= e!4652955 tp_is_empty!52745)))

(assert (=> b!7878121 (= tp!2340577 e!4652955)))

(assert (= (and b!7878121 ((_ is ElementMatch!21173) (regOne!42858 r2!6138))) b!7878540))

(assert (= (and b!7878121 ((_ is Concat!30018) (regOne!42858 r2!6138))) b!7878541))

(assert (= (and b!7878121 ((_ is Star!21173) (regOne!42858 r2!6138))) b!7878542))

(assert (= (and b!7878121 ((_ is Union!21173) (regOne!42858 r2!6138))) b!7878543))

(declare-fun b!7878546 () Bool)

(declare-fun e!4652956 () Bool)

(declare-fun tp!2340695 () Bool)

(assert (=> b!7878546 (= e!4652956 tp!2340695)))

(declare-fun b!7878547 () Bool)

(declare-fun tp!2340697 () Bool)

(declare-fun tp!2340694 () Bool)

(assert (=> b!7878547 (= e!4652956 (and tp!2340697 tp!2340694))))

(declare-fun b!7878545 () Bool)

(declare-fun tp!2340693 () Bool)

(declare-fun tp!2340696 () Bool)

(assert (=> b!7878545 (= e!4652956 (and tp!2340693 tp!2340696))))

(declare-fun b!7878544 () Bool)

(assert (=> b!7878544 (= e!4652956 tp_is_empty!52745)))

(assert (=> b!7878121 (= tp!2340584 e!4652956)))

(assert (= (and b!7878121 ((_ is ElementMatch!21173) (regTwo!42858 r2!6138))) b!7878544))

(assert (= (and b!7878121 ((_ is Concat!30018) (regTwo!42858 r2!6138))) b!7878545))

(assert (= (and b!7878121 ((_ is Star!21173) (regTwo!42858 r2!6138))) b!7878546))

(assert (= (and b!7878121 ((_ is Union!21173) (regTwo!42858 r2!6138))) b!7878547))

(declare-fun b!7878550 () Bool)

(declare-fun e!4652957 () Bool)

(declare-fun tp!2340700 () Bool)

(assert (=> b!7878550 (= e!4652957 tp!2340700)))

(declare-fun b!7878551 () Bool)

(declare-fun tp!2340702 () Bool)

(declare-fun tp!2340699 () Bool)

(assert (=> b!7878551 (= e!4652957 (and tp!2340702 tp!2340699))))

(declare-fun b!7878549 () Bool)

(declare-fun tp!2340698 () Bool)

(declare-fun tp!2340701 () Bool)

(assert (=> b!7878549 (= e!4652957 (and tp!2340698 tp!2340701))))

(declare-fun b!7878548 () Bool)

(assert (=> b!7878548 (= e!4652957 tp_is_empty!52745)))

(assert (=> b!7878127 (= tp!2340582 e!4652957)))

(assert (= (and b!7878127 ((_ is ElementMatch!21173) (regOne!42858 r1!6200))) b!7878548))

(assert (= (and b!7878127 ((_ is Concat!30018) (regOne!42858 r1!6200))) b!7878549))

(assert (= (and b!7878127 ((_ is Star!21173) (regOne!42858 r1!6200))) b!7878550))

(assert (= (and b!7878127 ((_ is Union!21173) (regOne!42858 r1!6200))) b!7878551))

(declare-fun b!7878554 () Bool)

(declare-fun e!4652958 () Bool)

(declare-fun tp!2340705 () Bool)

(assert (=> b!7878554 (= e!4652958 tp!2340705)))

(declare-fun b!7878555 () Bool)

(declare-fun tp!2340707 () Bool)

(declare-fun tp!2340704 () Bool)

(assert (=> b!7878555 (= e!4652958 (and tp!2340707 tp!2340704))))

(declare-fun b!7878553 () Bool)

(declare-fun tp!2340703 () Bool)

(declare-fun tp!2340706 () Bool)

(assert (=> b!7878553 (= e!4652958 (and tp!2340703 tp!2340706))))

(declare-fun b!7878552 () Bool)

(assert (=> b!7878552 (= e!4652958 tp_is_empty!52745)))

(assert (=> b!7878127 (= tp!2340580 e!4652958)))

(assert (= (and b!7878127 ((_ is ElementMatch!21173) (regTwo!42858 r1!6200))) b!7878552))

(assert (= (and b!7878127 ((_ is Concat!30018) (regTwo!42858 r1!6200))) b!7878553))

(assert (= (and b!7878127 ((_ is Star!21173) (regTwo!42858 r1!6200))) b!7878554))

(assert (= (and b!7878127 ((_ is Union!21173) (regTwo!42858 r1!6200))) b!7878555))

(declare-fun b!7878560 () Bool)

(declare-fun e!4652961 () Bool)

(declare-fun tp!2340710 () Bool)

(assert (=> b!7878560 (= e!4652961 (and tp_is_empty!52745 tp!2340710))))

(assert (=> b!7878123 (= tp!2340574 e!4652961)))

(assert (= (and b!7878123 ((_ is Cons!73908) (t!388767 s!14219))) b!7878560))

(check-sat (not bm!730729) (not b!7878298) (not b!7878498) (not b!7878204) (not b!7878421) (not b!7878439) (not b!7878542) (not b!7878304) (not b!7878527) (not b!7878553) (not b!7878496) (not d!2355887) (not b!7878554) (not bm!730737) (not b!7878535) (not b!7878206) (not bm!730736) (not b!7878514) (not b!7878537) (not b!7878295) (not b!7878539) (not b!7878533) (not b!7878515) (not b!7878510) (not b!7878545) (not b!7878547) (not b!7878534) (not b!7878400) (not bm!730672) (not bm!730675) (not bm!730739) (not b!7878438) (not d!2355903) (not b!7878513) (not b!7878546) tp_is_empty!52745 (not b!7878538) (not b!7878551) (not b!7878560) (not bm!730699) (not b!7878541) (not b!7878301) (not b!7878523) (not b!7878525) (not b!7878555) (not bm!730734) (not b!7878509) (not bm!730730) (not b!7878191) (not b!7878296) (not b!7878549) (not bm!730696) (not b!7878441) (not d!2355895) (not bm!730733) (not b!7878305) (not b!7878386) (not b!7878164) (not bm!730698) (not b!7878447) (not b!7878315) (not b!7878500) (not b!7878448) (not b!7878543) (not bm!730674) (not b!7878444) (not b!7878550) (not d!2355875) (not b!7878508) (not bm!730671))
(check-sat)
