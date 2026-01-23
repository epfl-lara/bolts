; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!735660 () Bool)

(assert start!735660)

(declare-fun b!7643050 () Bool)

(declare-fun res!3061281 () Bool)

(declare-fun e!4542923 () Bool)

(assert (=> b!7643050 (=> (not res!3061281) (not e!4542923))))

(declare-datatypes ((C!41228 0))(
  ( (C!41229 (val!31054 Int)) )
))
(declare-datatypes ((Regex!20451 0))(
  ( (ElementMatch!20451 (c!1407820 C!41228)) (Concat!29296 (regOne!41414 Regex!20451) (regTwo!41414 Regex!20451)) (EmptyExpr!20451) (Star!20451 (reg!20780 Regex!20451)) (EmptyLang!20451) (Union!20451 (regOne!41415 Regex!20451) (regTwo!41415 Regex!20451)) )
))
(declare-fun r!14126 () Regex!20451)

(get-info :version)

(assert (=> b!7643050 (= res!3061281 (and (not ((_ is EmptyExpr!20451) r!14126)) (not ((_ is EmptyLang!20451) r!14126)) (not ((_ is ElementMatch!20451) r!14126)) ((_ is Union!20451) r!14126)))))

(declare-fun b!7643051 () Bool)

(declare-fun e!4542921 () Bool)

(declare-fun tp_is_empty!51257 () Bool)

(declare-fun tp!2231073 () Bool)

(assert (=> b!7643051 (= e!4542921 (and tp_is_empty!51257 tp!2231073))))

(declare-fun b!7643052 () Bool)

(declare-fun e!4542925 () Bool)

(declare-fun tp!2231072 () Bool)

(declare-fun tp!2231074 () Bool)

(assert (=> b!7643052 (= e!4542925 (and tp!2231072 tp!2231074))))

(declare-fun b!7643053 () Bool)

(declare-fun tp!2231077 () Bool)

(declare-fun tp!2231076 () Bool)

(assert (=> b!7643053 (= e!4542925 (and tp!2231077 tp!2231076))))

(declare-fun b!7643054 () Bool)

(declare-fun e!4542924 () Bool)

(assert (=> b!7643054 (= e!4542923 (not e!4542924))))

(declare-fun res!3061280 () Bool)

(assert (=> b!7643054 (=> res!3061280 e!4542924)))

(declare-fun validRegex!10869 (Regex!20451) Bool)

(assert (=> b!7643054 (= res!3061280 (not (validRegex!10869 (regTwo!41415 r!14126))))))

(declare-fun lt!2660699 () Bool)

(declare-datatypes ((List!73302 0))(
  ( (Nil!73178) (Cons!73178 (h!79626 C!41228) (t!388037 List!73302)) )
))
(declare-fun s!9605 () List!73302)

(declare-fun matchRSpec!4574 (Regex!20451 List!73302) Bool)

(assert (=> b!7643054 (= lt!2660699 (matchRSpec!4574 (regOne!41415 r!14126) s!9605))))

(declare-datatypes ((Unit!167878 0))(
  ( (Unit!167879) )
))
(declare-fun lt!2660700 () Unit!167878)

(declare-fun mainMatchTheorem!4554 (Regex!20451 List!73302) Unit!167878)

(assert (=> b!7643054 (= lt!2660700 (mainMatchTheorem!4554 (regOne!41415 r!14126) s!9605))))

(declare-fun e!4542922 () Bool)

(assert (=> b!7643054 e!4542922))

(declare-fun res!3061282 () Bool)

(assert (=> b!7643054 (=> res!3061282 e!4542922)))

(assert (=> b!7643054 (= res!3061282 lt!2660699)))

(declare-fun matchR!9952 (Regex!20451 List!73302) Bool)

(assert (=> b!7643054 (= lt!2660699 (matchR!9952 (regOne!41415 r!14126) s!9605))))

(declare-fun lt!2660698 () Unit!167878)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!354 (Regex!20451 Regex!20451 List!73302) Unit!167878)

(assert (=> b!7643054 (= lt!2660698 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!354 (regOne!41415 r!14126) (regTwo!41415 r!14126) s!9605))))

(declare-fun b!7643055 () Bool)

(assert (=> b!7643055 (= e!4542924 (matchRSpec!4574 r!14126 s!9605))))

(assert (=> b!7643055 (= (matchR!9952 (regTwo!41415 r!14126) s!9605) (matchRSpec!4574 (regTwo!41415 r!14126) s!9605))))

(declare-fun lt!2660697 () Unit!167878)

(assert (=> b!7643055 (= lt!2660697 (mainMatchTheorem!4554 (regTwo!41415 r!14126) s!9605))))

(declare-fun res!3061278 () Bool)

(assert (=> start!735660 (=> (not res!3061278) (not e!4542923))))

(assert (=> start!735660 (= res!3061278 (validRegex!10869 r!14126))))

(assert (=> start!735660 e!4542923))

(assert (=> start!735660 e!4542925))

(assert (=> start!735660 e!4542921))

(declare-fun b!7643056 () Bool)

(assert (=> b!7643056 (= e!4542925 tp_is_empty!51257)))

(declare-fun b!7643057 () Bool)

(assert (=> b!7643057 (= e!4542922 (matchR!9952 (regTwo!41415 r!14126) s!9605))))

(declare-fun b!7643058 () Bool)

(declare-fun tp!2231075 () Bool)

(assert (=> b!7643058 (= e!4542925 tp!2231075)))

(declare-fun b!7643059 () Bool)

(declare-fun res!3061279 () Bool)

(assert (=> b!7643059 (=> (not res!3061279) (not e!4542923))))

(assert (=> b!7643059 (= res!3061279 (matchR!9952 r!14126 s!9605))))

(assert (= (and start!735660 res!3061278) b!7643050))

(assert (= (and b!7643050 res!3061281) b!7643059))

(assert (= (and b!7643059 res!3061279) b!7643054))

(assert (= (and b!7643054 (not res!3061282)) b!7643057))

(assert (= (and b!7643054 (not res!3061280)) b!7643055))

(assert (= (and start!735660 ((_ is ElementMatch!20451) r!14126)) b!7643056))

(assert (= (and start!735660 ((_ is Concat!29296) r!14126)) b!7643052))

(assert (= (and start!735660 ((_ is Star!20451) r!14126)) b!7643058))

(assert (= (and start!735660 ((_ is Union!20451) r!14126)) b!7643053))

(assert (= (and start!735660 ((_ is Cons!73178) s!9605)) b!7643051))

(declare-fun m!8163600 () Bool)

(assert (=> b!7643057 m!8163600))

(declare-fun m!8163602 () Bool)

(assert (=> b!7643055 m!8163602))

(assert (=> b!7643055 m!8163600))

(declare-fun m!8163604 () Bool)

(assert (=> b!7643055 m!8163604))

(declare-fun m!8163606 () Bool)

(assert (=> b!7643055 m!8163606))

(declare-fun m!8163608 () Bool)

(assert (=> b!7643054 m!8163608))

(declare-fun m!8163610 () Bool)

(assert (=> b!7643054 m!8163610))

(declare-fun m!8163612 () Bool)

(assert (=> b!7643054 m!8163612))

(declare-fun m!8163614 () Bool)

(assert (=> b!7643054 m!8163614))

(declare-fun m!8163616 () Bool)

(assert (=> b!7643054 m!8163616))

(declare-fun m!8163618 () Bool)

(assert (=> b!7643059 m!8163618))

(declare-fun m!8163620 () Bool)

(assert (=> start!735660 m!8163620))

(check-sat (not b!7643055) (not start!735660) (not b!7643052) (not b!7643051) (not b!7643059) (not b!7643058) (not b!7643057) (not b!7643054) tp_is_empty!51257 (not b!7643053))
(check-sat)
(get-model)

(declare-fun b!7643120 () Bool)

(assert (=> b!7643120 true))

(assert (=> b!7643120 true))

(declare-fun bs!1944747 () Bool)

(declare-fun b!7643114 () Bool)

(assert (= bs!1944747 (and b!7643114 b!7643120)))

(declare-fun lambda!469677 () Int)

(declare-fun lambda!469676 () Int)

(assert (=> bs!1944747 (not (= lambda!469677 lambda!469676))))

(assert (=> b!7643114 true))

(assert (=> b!7643114 true))

(declare-fun e!4542963 () Bool)

(declare-fun call!701618 () Bool)

(assert (=> b!7643114 (= e!4542963 call!701618)))

(declare-fun d!2325317 () Bool)

(declare-fun c!1407840 () Bool)

(assert (=> d!2325317 (= c!1407840 ((_ is EmptyExpr!20451) r!14126))))

(declare-fun e!4542962 () Bool)

(assert (=> d!2325317 (= (matchRSpec!4574 r!14126 s!9605) e!4542962)))

(declare-fun b!7643115 () Bool)

(declare-fun e!4542958 () Bool)

(assert (=> b!7643115 (= e!4542958 (= s!9605 (Cons!73178 (c!1407820 r!14126) Nil!73178)))))

(declare-fun b!7643116 () Bool)

(declare-fun res!3061305 () Bool)

(declare-fun e!4542959 () Bool)

(assert (=> b!7643116 (=> res!3061305 e!4542959)))

(declare-fun call!701617 () Bool)

(assert (=> b!7643116 (= res!3061305 call!701617)))

(assert (=> b!7643116 (= e!4542963 e!4542959)))

(declare-fun bm!701612 () Bool)

(declare-fun isEmpty!41806 (List!73302) Bool)

(assert (=> bm!701612 (= call!701617 (isEmpty!41806 s!9605))))

(declare-fun b!7643117 () Bool)

(declare-fun e!4542960 () Bool)

(assert (=> b!7643117 (= e!4542960 e!4542963)))

(declare-fun c!1407838 () Bool)

(assert (=> b!7643117 (= c!1407838 ((_ is Star!20451) r!14126))))

(declare-fun b!7643118 () Bool)

(declare-fun e!4542961 () Bool)

(assert (=> b!7643118 (= e!4542960 e!4542961)))

(declare-fun res!3061306 () Bool)

(assert (=> b!7643118 (= res!3061306 (matchRSpec!4574 (regOne!41415 r!14126) s!9605))))

(assert (=> b!7643118 (=> res!3061306 e!4542961)))

(declare-fun b!7643119 () Bool)

(assert (=> b!7643119 (= e!4542962 call!701617)))

(assert (=> b!7643120 (= e!4542959 call!701618)))

(declare-fun b!7643121 () Bool)

(declare-fun c!1407839 () Bool)

(assert (=> b!7643121 (= c!1407839 ((_ is ElementMatch!20451) r!14126))))

(declare-fun e!4542964 () Bool)

(assert (=> b!7643121 (= e!4542964 e!4542958)))

(declare-fun bm!701613 () Bool)

(declare-fun Exists!4594 (Int) Bool)

(assert (=> bm!701613 (= call!701618 (Exists!4594 (ite c!1407838 lambda!469676 lambda!469677)))))

(declare-fun b!7643122 () Bool)

(assert (=> b!7643122 (= e!4542962 e!4542964)))

(declare-fun res!3061307 () Bool)

(assert (=> b!7643122 (= res!3061307 (not ((_ is EmptyLang!20451) r!14126)))))

(assert (=> b!7643122 (=> (not res!3061307) (not e!4542964))))

(declare-fun b!7643123 () Bool)

(declare-fun c!1407837 () Bool)

(assert (=> b!7643123 (= c!1407837 ((_ is Union!20451) r!14126))))

(assert (=> b!7643123 (= e!4542958 e!4542960)))

(declare-fun b!7643124 () Bool)

(assert (=> b!7643124 (= e!4542961 (matchRSpec!4574 (regTwo!41415 r!14126) s!9605))))

(assert (= (and d!2325317 c!1407840) b!7643119))

(assert (= (and d!2325317 (not c!1407840)) b!7643122))

(assert (= (and b!7643122 res!3061307) b!7643121))

(assert (= (and b!7643121 c!1407839) b!7643115))

(assert (= (and b!7643121 (not c!1407839)) b!7643123))

(assert (= (and b!7643123 c!1407837) b!7643118))

(assert (= (and b!7643123 (not c!1407837)) b!7643117))

(assert (= (and b!7643118 (not res!3061306)) b!7643124))

(assert (= (and b!7643117 c!1407838) b!7643116))

(assert (= (and b!7643117 (not c!1407838)) b!7643114))

(assert (= (and b!7643116 (not res!3061305)) b!7643120))

(assert (= (or b!7643120 b!7643114) bm!701613))

(assert (= (or b!7643119 b!7643116) bm!701612))

(declare-fun m!8163622 () Bool)

(assert (=> bm!701612 m!8163622))

(assert (=> b!7643118 m!8163608))

(declare-fun m!8163624 () Bool)

(assert (=> bm!701613 m!8163624))

(assert (=> b!7643124 m!8163604))

(assert (=> b!7643055 d!2325317))

(declare-fun d!2325321 () Bool)

(declare-fun e!4542983 () Bool)

(assert (=> d!2325321 e!4542983))

(declare-fun c!1407849 () Bool)

(assert (=> d!2325321 (= c!1407849 ((_ is EmptyExpr!20451) (regTwo!41415 r!14126)))))

(declare-fun lt!2660703 () Bool)

(declare-fun e!4542982 () Bool)

(assert (=> d!2325321 (= lt!2660703 e!4542982)))

(declare-fun c!1407848 () Bool)

(assert (=> d!2325321 (= c!1407848 (isEmpty!41806 s!9605))))

(assert (=> d!2325321 (validRegex!10869 (regTwo!41415 r!14126))))

(assert (=> d!2325321 (= (matchR!9952 (regTwo!41415 r!14126) s!9605) lt!2660703)))

(declare-fun b!7643157 () Bool)

(declare-fun e!4542981 () Bool)

(declare-fun e!4542979 () Bool)

(assert (=> b!7643157 (= e!4542981 e!4542979)))

(declare-fun res!3061325 () Bool)

(assert (=> b!7643157 (=> res!3061325 e!4542979)))

(declare-fun call!701621 () Bool)

(assert (=> b!7643157 (= res!3061325 call!701621)))

(declare-fun b!7643158 () Bool)

(declare-fun res!3061329 () Bool)

(assert (=> b!7643158 (=> res!3061329 e!4542979)))

(declare-fun tail!15266 (List!73302) List!73302)

(assert (=> b!7643158 (= res!3061329 (not (isEmpty!41806 (tail!15266 s!9605))))))

(declare-fun b!7643159 () Bool)

(declare-fun res!3061330 () Bool)

(declare-fun e!4542980 () Bool)

(assert (=> b!7643159 (=> res!3061330 e!4542980)))

(assert (=> b!7643159 (= res!3061330 (not ((_ is ElementMatch!20451) (regTwo!41415 r!14126))))))

(declare-fun e!4542984 () Bool)

(assert (=> b!7643159 (= e!4542984 e!4542980)))

(declare-fun b!7643160 () Bool)

(declare-fun e!4542985 () Bool)

(declare-fun head!15726 (List!73302) C!41228)

(assert (=> b!7643160 (= e!4542985 (= (head!15726 s!9605) (c!1407820 (regTwo!41415 r!14126))))))

(declare-fun bm!701616 () Bool)

(assert (=> bm!701616 (= call!701621 (isEmpty!41806 s!9605))))

(declare-fun b!7643161 () Bool)

(declare-fun nullable!8955 (Regex!20451) Bool)

(assert (=> b!7643161 (= e!4542982 (nullable!8955 (regTwo!41415 r!14126)))))

(declare-fun b!7643162 () Bool)

(declare-fun res!3061324 () Bool)

(assert (=> b!7643162 (=> res!3061324 e!4542980)))

(assert (=> b!7643162 (= res!3061324 e!4542985)))

(declare-fun res!3061331 () Bool)

(assert (=> b!7643162 (=> (not res!3061331) (not e!4542985))))

(assert (=> b!7643162 (= res!3061331 lt!2660703)))

(declare-fun b!7643163 () Bool)

(assert (=> b!7643163 (= e!4542984 (not lt!2660703))))

(declare-fun b!7643164 () Bool)

(assert (=> b!7643164 (= e!4542983 (= lt!2660703 call!701621))))

(declare-fun b!7643165 () Bool)

(declare-fun derivativeStep!5926 (Regex!20451 C!41228) Regex!20451)

(assert (=> b!7643165 (= e!4542982 (matchR!9952 (derivativeStep!5926 (regTwo!41415 r!14126) (head!15726 s!9605)) (tail!15266 s!9605)))))

(declare-fun b!7643166 () Bool)

(assert (=> b!7643166 (= e!4542980 e!4542981)))

(declare-fun res!3061326 () Bool)

(assert (=> b!7643166 (=> (not res!3061326) (not e!4542981))))

(assert (=> b!7643166 (= res!3061326 (not lt!2660703))))

(declare-fun b!7643167 () Bool)

(assert (=> b!7643167 (= e!4542979 (not (= (head!15726 s!9605) (c!1407820 (regTwo!41415 r!14126)))))))

(declare-fun b!7643168 () Bool)

(declare-fun res!3061327 () Bool)

(assert (=> b!7643168 (=> (not res!3061327) (not e!4542985))))

(assert (=> b!7643168 (= res!3061327 (not call!701621))))

(declare-fun b!7643169 () Bool)

(assert (=> b!7643169 (= e!4542983 e!4542984)))

(declare-fun c!1407847 () Bool)

(assert (=> b!7643169 (= c!1407847 ((_ is EmptyLang!20451) (regTwo!41415 r!14126)))))

(declare-fun b!7643170 () Bool)

(declare-fun res!3061328 () Bool)

(assert (=> b!7643170 (=> (not res!3061328) (not e!4542985))))

(assert (=> b!7643170 (= res!3061328 (isEmpty!41806 (tail!15266 s!9605)))))

(assert (= (and d!2325321 c!1407848) b!7643161))

(assert (= (and d!2325321 (not c!1407848)) b!7643165))

(assert (= (and d!2325321 c!1407849) b!7643164))

(assert (= (and d!2325321 (not c!1407849)) b!7643169))

(assert (= (and b!7643169 c!1407847) b!7643163))

(assert (= (and b!7643169 (not c!1407847)) b!7643159))

(assert (= (and b!7643159 (not res!3061330)) b!7643162))

(assert (= (and b!7643162 res!3061331) b!7643168))

(assert (= (and b!7643168 res!3061327) b!7643170))

(assert (= (and b!7643170 res!3061328) b!7643160))

(assert (= (and b!7643162 (not res!3061324)) b!7643166))

(assert (= (and b!7643166 res!3061326) b!7643157))

(assert (= (and b!7643157 (not res!3061325)) b!7643158))

(assert (= (and b!7643158 (not res!3061329)) b!7643167))

(assert (= (or b!7643164 b!7643157 b!7643168) bm!701616))

(declare-fun m!8163626 () Bool)

(assert (=> b!7643165 m!8163626))

(assert (=> b!7643165 m!8163626))

(declare-fun m!8163628 () Bool)

(assert (=> b!7643165 m!8163628))

(declare-fun m!8163630 () Bool)

(assert (=> b!7643165 m!8163630))

(assert (=> b!7643165 m!8163628))

(assert (=> b!7643165 m!8163630))

(declare-fun m!8163632 () Bool)

(assert (=> b!7643165 m!8163632))

(assert (=> b!7643160 m!8163626))

(assert (=> b!7643158 m!8163630))

(assert (=> b!7643158 m!8163630))

(declare-fun m!8163634 () Bool)

(assert (=> b!7643158 m!8163634))

(declare-fun m!8163636 () Bool)

(assert (=> b!7643161 m!8163636))

(assert (=> b!7643167 m!8163626))

(assert (=> bm!701616 m!8163622))

(assert (=> b!7643170 m!8163630))

(assert (=> b!7643170 m!8163630))

(assert (=> b!7643170 m!8163634))

(assert (=> d!2325321 m!8163622))

(assert (=> d!2325321 m!8163612))

(assert (=> b!7643055 d!2325321))

(declare-fun bs!1944748 () Bool)

(declare-fun b!7643177 () Bool)

(assert (= bs!1944748 (and b!7643177 b!7643120)))

(declare-fun lambda!469678 () Int)

(assert (=> bs!1944748 (= (and (= (reg!20780 (regTwo!41415 r!14126)) (reg!20780 r!14126)) (= (regTwo!41415 r!14126) r!14126)) (= lambda!469678 lambda!469676))))

(declare-fun bs!1944749 () Bool)

(assert (= bs!1944749 (and b!7643177 b!7643114)))

(assert (=> bs!1944749 (not (= lambda!469678 lambda!469677))))

(assert (=> b!7643177 true))

(assert (=> b!7643177 true))

(declare-fun bs!1944750 () Bool)

(declare-fun b!7643171 () Bool)

(assert (= bs!1944750 (and b!7643171 b!7643120)))

(declare-fun lambda!469679 () Int)

(assert (=> bs!1944750 (not (= lambda!469679 lambda!469676))))

(declare-fun bs!1944751 () Bool)

(assert (= bs!1944751 (and b!7643171 b!7643114)))

(assert (=> bs!1944751 (= (and (= (regOne!41414 (regTwo!41415 r!14126)) (regOne!41414 r!14126)) (= (regTwo!41414 (regTwo!41415 r!14126)) (regTwo!41414 r!14126))) (= lambda!469679 lambda!469677))))

(declare-fun bs!1944752 () Bool)

(assert (= bs!1944752 (and b!7643171 b!7643177)))

(assert (=> bs!1944752 (not (= lambda!469679 lambda!469678))))

(assert (=> b!7643171 true))

(assert (=> b!7643171 true))

(declare-fun e!4542991 () Bool)

(declare-fun call!701623 () Bool)

(assert (=> b!7643171 (= e!4542991 call!701623)))

(declare-fun d!2325323 () Bool)

(declare-fun c!1407853 () Bool)

(assert (=> d!2325323 (= c!1407853 ((_ is EmptyExpr!20451) (regTwo!41415 r!14126)))))

(declare-fun e!4542990 () Bool)

(assert (=> d!2325323 (= (matchRSpec!4574 (regTwo!41415 r!14126) s!9605) e!4542990)))

(declare-fun b!7643172 () Bool)

(declare-fun e!4542986 () Bool)

(assert (=> b!7643172 (= e!4542986 (= s!9605 (Cons!73178 (c!1407820 (regTwo!41415 r!14126)) Nil!73178)))))

(declare-fun b!7643173 () Bool)

(declare-fun res!3061332 () Bool)

(declare-fun e!4542987 () Bool)

(assert (=> b!7643173 (=> res!3061332 e!4542987)))

(declare-fun call!701622 () Bool)

(assert (=> b!7643173 (= res!3061332 call!701622)))

(assert (=> b!7643173 (= e!4542991 e!4542987)))

(declare-fun bm!701617 () Bool)

(assert (=> bm!701617 (= call!701622 (isEmpty!41806 s!9605))))

(declare-fun b!7643174 () Bool)

(declare-fun e!4542988 () Bool)

(assert (=> b!7643174 (= e!4542988 e!4542991)))

(declare-fun c!1407851 () Bool)

(assert (=> b!7643174 (= c!1407851 ((_ is Star!20451) (regTwo!41415 r!14126)))))

(declare-fun b!7643175 () Bool)

(declare-fun e!4542989 () Bool)

(assert (=> b!7643175 (= e!4542988 e!4542989)))

(declare-fun res!3061333 () Bool)

(assert (=> b!7643175 (= res!3061333 (matchRSpec!4574 (regOne!41415 (regTwo!41415 r!14126)) s!9605))))

(assert (=> b!7643175 (=> res!3061333 e!4542989)))

(declare-fun b!7643176 () Bool)

(assert (=> b!7643176 (= e!4542990 call!701622)))

(assert (=> b!7643177 (= e!4542987 call!701623)))

(declare-fun b!7643178 () Bool)

(declare-fun c!1407852 () Bool)

(assert (=> b!7643178 (= c!1407852 ((_ is ElementMatch!20451) (regTwo!41415 r!14126)))))

(declare-fun e!4542992 () Bool)

(assert (=> b!7643178 (= e!4542992 e!4542986)))

(declare-fun bm!701618 () Bool)

(assert (=> bm!701618 (= call!701623 (Exists!4594 (ite c!1407851 lambda!469678 lambda!469679)))))

(declare-fun b!7643179 () Bool)

(assert (=> b!7643179 (= e!4542990 e!4542992)))

(declare-fun res!3061334 () Bool)

(assert (=> b!7643179 (= res!3061334 (not ((_ is EmptyLang!20451) (regTwo!41415 r!14126))))))

(assert (=> b!7643179 (=> (not res!3061334) (not e!4542992))))

(declare-fun b!7643180 () Bool)

(declare-fun c!1407850 () Bool)

(assert (=> b!7643180 (= c!1407850 ((_ is Union!20451) (regTwo!41415 r!14126)))))

(assert (=> b!7643180 (= e!4542986 e!4542988)))

(declare-fun b!7643181 () Bool)

(assert (=> b!7643181 (= e!4542989 (matchRSpec!4574 (regTwo!41415 (regTwo!41415 r!14126)) s!9605))))

(assert (= (and d!2325323 c!1407853) b!7643176))

(assert (= (and d!2325323 (not c!1407853)) b!7643179))

(assert (= (and b!7643179 res!3061334) b!7643178))

(assert (= (and b!7643178 c!1407852) b!7643172))

(assert (= (and b!7643178 (not c!1407852)) b!7643180))

(assert (= (and b!7643180 c!1407850) b!7643175))

(assert (= (and b!7643180 (not c!1407850)) b!7643174))

(assert (= (and b!7643175 (not res!3061333)) b!7643181))

(assert (= (and b!7643174 c!1407851) b!7643173))

(assert (= (and b!7643174 (not c!1407851)) b!7643171))

(assert (= (and b!7643173 (not res!3061332)) b!7643177))

(assert (= (or b!7643177 b!7643171) bm!701618))

(assert (= (or b!7643176 b!7643173) bm!701617))

(assert (=> bm!701617 m!8163622))

(declare-fun m!8163638 () Bool)

(assert (=> b!7643175 m!8163638))

(declare-fun m!8163640 () Bool)

(assert (=> bm!701618 m!8163640))

(declare-fun m!8163642 () Bool)

(assert (=> b!7643181 m!8163642))

(assert (=> b!7643055 d!2325323))

(declare-fun d!2325325 () Bool)

(assert (=> d!2325325 (= (matchR!9952 (regTwo!41415 r!14126) s!9605) (matchRSpec!4574 (regTwo!41415 r!14126) s!9605))))

(declare-fun lt!2660706 () Unit!167878)

(declare-fun choose!59020 (Regex!20451 List!73302) Unit!167878)

(assert (=> d!2325325 (= lt!2660706 (choose!59020 (regTwo!41415 r!14126) s!9605))))

(assert (=> d!2325325 (validRegex!10869 (regTwo!41415 r!14126))))

(assert (=> d!2325325 (= (mainMatchTheorem!4554 (regTwo!41415 r!14126) s!9605) lt!2660706)))

(declare-fun bs!1944753 () Bool)

(assert (= bs!1944753 d!2325325))

(assert (=> bs!1944753 m!8163600))

(assert (=> bs!1944753 m!8163604))

(declare-fun m!8163644 () Bool)

(assert (=> bs!1944753 m!8163644))

(assert (=> bs!1944753 m!8163612))

(assert (=> b!7643055 d!2325325))

(declare-fun d!2325327 () Bool)

(declare-fun e!4542997 () Bool)

(assert (=> d!2325327 e!4542997))

(declare-fun c!1407856 () Bool)

(assert (=> d!2325327 (= c!1407856 ((_ is EmptyExpr!20451) r!14126))))

(declare-fun lt!2660707 () Bool)

(declare-fun e!4542996 () Bool)

(assert (=> d!2325327 (= lt!2660707 e!4542996)))

(declare-fun c!1407855 () Bool)

(assert (=> d!2325327 (= c!1407855 (isEmpty!41806 s!9605))))

(assert (=> d!2325327 (validRegex!10869 r!14126)))

(assert (=> d!2325327 (= (matchR!9952 r!14126 s!9605) lt!2660707)))

(declare-fun b!7643182 () Bool)

(declare-fun e!4542995 () Bool)

(declare-fun e!4542993 () Bool)

(assert (=> b!7643182 (= e!4542995 e!4542993)))

(declare-fun res!3061336 () Bool)

(assert (=> b!7643182 (=> res!3061336 e!4542993)))

(declare-fun call!701624 () Bool)

(assert (=> b!7643182 (= res!3061336 call!701624)))

(declare-fun b!7643183 () Bool)

(declare-fun res!3061340 () Bool)

(assert (=> b!7643183 (=> res!3061340 e!4542993)))

(assert (=> b!7643183 (= res!3061340 (not (isEmpty!41806 (tail!15266 s!9605))))))

(declare-fun b!7643184 () Bool)

(declare-fun res!3061341 () Bool)

(declare-fun e!4542994 () Bool)

(assert (=> b!7643184 (=> res!3061341 e!4542994)))

(assert (=> b!7643184 (= res!3061341 (not ((_ is ElementMatch!20451) r!14126)))))

(declare-fun e!4542998 () Bool)

(assert (=> b!7643184 (= e!4542998 e!4542994)))

(declare-fun b!7643185 () Bool)

(declare-fun e!4542999 () Bool)

(assert (=> b!7643185 (= e!4542999 (= (head!15726 s!9605) (c!1407820 r!14126)))))

(declare-fun bm!701619 () Bool)

(assert (=> bm!701619 (= call!701624 (isEmpty!41806 s!9605))))

(declare-fun b!7643186 () Bool)

(assert (=> b!7643186 (= e!4542996 (nullable!8955 r!14126))))

(declare-fun b!7643187 () Bool)

(declare-fun res!3061335 () Bool)

(assert (=> b!7643187 (=> res!3061335 e!4542994)))

(assert (=> b!7643187 (= res!3061335 e!4542999)))

(declare-fun res!3061342 () Bool)

(assert (=> b!7643187 (=> (not res!3061342) (not e!4542999))))

(assert (=> b!7643187 (= res!3061342 lt!2660707)))

(declare-fun b!7643188 () Bool)

(assert (=> b!7643188 (= e!4542998 (not lt!2660707))))

(declare-fun b!7643189 () Bool)

(assert (=> b!7643189 (= e!4542997 (= lt!2660707 call!701624))))

(declare-fun b!7643190 () Bool)

(assert (=> b!7643190 (= e!4542996 (matchR!9952 (derivativeStep!5926 r!14126 (head!15726 s!9605)) (tail!15266 s!9605)))))

(declare-fun b!7643191 () Bool)

(assert (=> b!7643191 (= e!4542994 e!4542995)))

(declare-fun res!3061337 () Bool)

(assert (=> b!7643191 (=> (not res!3061337) (not e!4542995))))

(assert (=> b!7643191 (= res!3061337 (not lt!2660707))))

(declare-fun b!7643192 () Bool)

(assert (=> b!7643192 (= e!4542993 (not (= (head!15726 s!9605) (c!1407820 r!14126))))))

(declare-fun b!7643193 () Bool)

(declare-fun res!3061338 () Bool)

(assert (=> b!7643193 (=> (not res!3061338) (not e!4542999))))

(assert (=> b!7643193 (= res!3061338 (not call!701624))))

(declare-fun b!7643194 () Bool)

(assert (=> b!7643194 (= e!4542997 e!4542998)))

(declare-fun c!1407854 () Bool)

(assert (=> b!7643194 (= c!1407854 ((_ is EmptyLang!20451) r!14126))))

(declare-fun b!7643195 () Bool)

(declare-fun res!3061339 () Bool)

(assert (=> b!7643195 (=> (not res!3061339) (not e!4542999))))

(assert (=> b!7643195 (= res!3061339 (isEmpty!41806 (tail!15266 s!9605)))))

(assert (= (and d!2325327 c!1407855) b!7643186))

(assert (= (and d!2325327 (not c!1407855)) b!7643190))

(assert (= (and d!2325327 c!1407856) b!7643189))

(assert (= (and d!2325327 (not c!1407856)) b!7643194))

(assert (= (and b!7643194 c!1407854) b!7643188))

(assert (= (and b!7643194 (not c!1407854)) b!7643184))

(assert (= (and b!7643184 (not res!3061341)) b!7643187))

(assert (= (and b!7643187 res!3061342) b!7643193))

(assert (= (and b!7643193 res!3061338) b!7643195))

(assert (= (and b!7643195 res!3061339) b!7643185))

(assert (= (and b!7643187 (not res!3061335)) b!7643191))

(assert (= (and b!7643191 res!3061337) b!7643182))

(assert (= (and b!7643182 (not res!3061336)) b!7643183))

(assert (= (and b!7643183 (not res!3061340)) b!7643192))

(assert (= (or b!7643189 b!7643182 b!7643193) bm!701619))

(assert (=> b!7643190 m!8163626))

(assert (=> b!7643190 m!8163626))

(declare-fun m!8163646 () Bool)

(assert (=> b!7643190 m!8163646))

(assert (=> b!7643190 m!8163630))

(assert (=> b!7643190 m!8163646))

(assert (=> b!7643190 m!8163630))

(declare-fun m!8163648 () Bool)

(assert (=> b!7643190 m!8163648))

(assert (=> b!7643185 m!8163626))

(assert (=> b!7643183 m!8163630))

(assert (=> b!7643183 m!8163630))

(assert (=> b!7643183 m!8163634))

(declare-fun m!8163650 () Bool)

(assert (=> b!7643186 m!8163650))

(assert (=> b!7643192 m!8163626))

(assert (=> bm!701619 m!8163622))

(assert (=> b!7643195 m!8163630))

(assert (=> b!7643195 m!8163630))

(assert (=> b!7643195 m!8163634))

(assert (=> d!2325327 m!8163622))

(assert (=> d!2325327 m!8163620))

(assert (=> b!7643059 d!2325327))

(declare-fun bs!1944754 () Bool)

(declare-fun b!7643202 () Bool)

(assert (= bs!1944754 (and b!7643202 b!7643120)))

(declare-fun lambda!469680 () Int)

(assert (=> bs!1944754 (= (and (= (reg!20780 (regOne!41415 r!14126)) (reg!20780 r!14126)) (= (regOne!41415 r!14126) r!14126)) (= lambda!469680 lambda!469676))))

(declare-fun bs!1944755 () Bool)

(assert (= bs!1944755 (and b!7643202 b!7643114)))

(assert (=> bs!1944755 (not (= lambda!469680 lambda!469677))))

(declare-fun bs!1944756 () Bool)

(assert (= bs!1944756 (and b!7643202 b!7643177)))

(assert (=> bs!1944756 (= (and (= (reg!20780 (regOne!41415 r!14126)) (reg!20780 (regTwo!41415 r!14126))) (= (regOne!41415 r!14126) (regTwo!41415 r!14126))) (= lambda!469680 lambda!469678))))

(declare-fun bs!1944757 () Bool)

(assert (= bs!1944757 (and b!7643202 b!7643171)))

(assert (=> bs!1944757 (not (= lambda!469680 lambda!469679))))

(assert (=> b!7643202 true))

(assert (=> b!7643202 true))

(declare-fun bs!1944758 () Bool)

(declare-fun b!7643196 () Bool)

(assert (= bs!1944758 (and b!7643196 b!7643114)))

(declare-fun lambda!469681 () Int)

(assert (=> bs!1944758 (= (and (= (regOne!41414 (regOne!41415 r!14126)) (regOne!41414 r!14126)) (= (regTwo!41414 (regOne!41415 r!14126)) (regTwo!41414 r!14126))) (= lambda!469681 lambda!469677))))

(declare-fun bs!1944759 () Bool)

(assert (= bs!1944759 (and b!7643196 b!7643177)))

(assert (=> bs!1944759 (not (= lambda!469681 lambda!469678))))

(declare-fun bs!1944760 () Bool)

(assert (= bs!1944760 (and b!7643196 b!7643171)))

(assert (=> bs!1944760 (= (and (= (regOne!41414 (regOne!41415 r!14126)) (regOne!41414 (regTwo!41415 r!14126))) (= (regTwo!41414 (regOne!41415 r!14126)) (regTwo!41414 (regTwo!41415 r!14126)))) (= lambda!469681 lambda!469679))))

(declare-fun bs!1944761 () Bool)

(assert (= bs!1944761 (and b!7643196 b!7643202)))

(assert (=> bs!1944761 (not (= lambda!469681 lambda!469680))))

(declare-fun bs!1944762 () Bool)

(assert (= bs!1944762 (and b!7643196 b!7643120)))

(assert (=> bs!1944762 (not (= lambda!469681 lambda!469676))))

(assert (=> b!7643196 true))

(assert (=> b!7643196 true))

(declare-fun e!4543005 () Bool)

(declare-fun call!701626 () Bool)

(assert (=> b!7643196 (= e!4543005 call!701626)))

(declare-fun d!2325329 () Bool)

(declare-fun c!1407860 () Bool)

(assert (=> d!2325329 (= c!1407860 ((_ is EmptyExpr!20451) (regOne!41415 r!14126)))))

(declare-fun e!4543004 () Bool)

(assert (=> d!2325329 (= (matchRSpec!4574 (regOne!41415 r!14126) s!9605) e!4543004)))

(declare-fun b!7643197 () Bool)

(declare-fun e!4543000 () Bool)

(assert (=> b!7643197 (= e!4543000 (= s!9605 (Cons!73178 (c!1407820 (regOne!41415 r!14126)) Nil!73178)))))

(declare-fun b!7643198 () Bool)

(declare-fun res!3061343 () Bool)

(declare-fun e!4543001 () Bool)

(assert (=> b!7643198 (=> res!3061343 e!4543001)))

(declare-fun call!701625 () Bool)

(assert (=> b!7643198 (= res!3061343 call!701625)))

(assert (=> b!7643198 (= e!4543005 e!4543001)))

(declare-fun bm!701620 () Bool)

(assert (=> bm!701620 (= call!701625 (isEmpty!41806 s!9605))))

(declare-fun b!7643199 () Bool)

(declare-fun e!4543002 () Bool)

(assert (=> b!7643199 (= e!4543002 e!4543005)))

(declare-fun c!1407858 () Bool)

(assert (=> b!7643199 (= c!1407858 ((_ is Star!20451) (regOne!41415 r!14126)))))

(declare-fun b!7643200 () Bool)

(declare-fun e!4543003 () Bool)

(assert (=> b!7643200 (= e!4543002 e!4543003)))

(declare-fun res!3061344 () Bool)

(assert (=> b!7643200 (= res!3061344 (matchRSpec!4574 (regOne!41415 (regOne!41415 r!14126)) s!9605))))

(assert (=> b!7643200 (=> res!3061344 e!4543003)))

(declare-fun b!7643201 () Bool)

(assert (=> b!7643201 (= e!4543004 call!701625)))

(assert (=> b!7643202 (= e!4543001 call!701626)))

(declare-fun b!7643203 () Bool)

(declare-fun c!1407859 () Bool)

(assert (=> b!7643203 (= c!1407859 ((_ is ElementMatch!20451) (regOne!41415 r!14126)))))

(declare-fun e!4543006 () Bool)

(assert (=> b!7643203 (= e!4543006 e!4543000)))

(declare-fun bm!701621 () Bool)

(assert (=> bm!701621 (= call!701626 (Exists!4594 (ite c!1407858 lambda!469680 lambda!469681)))))

(declare-fun b!7643204 () Bool)

(assert (=> b!7643204 (= e!4543004 e!4543006)))

(declare-fun res!3061345 () Bool)

(assert (=> b!7643204 (= res!3061345 (not ((_ is EmptyLang!20451) (regOne!41415 r!14126))))))

(assert (=> b!7643204 (=> (not res!3061345) (not e!4543006))))

(declare-fun b!7643205 () Bool)

(declare-fun c!1407857 () Bool)

(assert (=> b!7643205 (= c!1407857 ((_ is Union!20451) (regOne!41415 r!14126)))))

(assert (=> b!7643205 (= e!4543000 e!4543002)))

(declare-fun b!7643206 () Bool)

(assert (=> b!7643206 (= e!4543003 (matchRSpec!4574 (regTwo!41415 (regOne!41415 r!14126)) s!9605))))

(assert (= (and d!2325329 c!1407860) b!7643201))

(assert (= (and d!2325329 (not c!1407860)) b!7643204))

(assert (= (and b!7643204 res!3061345) b!7643203))

(assert (= (and b!7643203 c!1407859) b!7643197))

(assert (= (and b!7643203 (not c!1407859)) b!7643205))

(assert (= (and b!7643205 c!1407857) b!7643200))

(assert (= (and b!7643205 (not c!1407857)) b!7643199))

(assert (= (and b!7643200 (not res!3061344)) b!7643206))

(assert (= (and b!7643199 c!1407858) b!7643198))

(assert (= (and b!7643199 (not c!1407858)) b!7643196))

(assert (= (and b!7643198 (not res!3061343)) b!7643202))

(assert (= (or b!7643202 b!7643196) bm!701621))

(assert (= (or b!7643201 b!7643198) bm!701620))

(assert (=> bm!701620 m!8163622))

(declare-fun m!8163652 () Bool)

(assert (=> b!7643200 m!8163652))

(declare-fun m!8163654 () Bool)

(assert (=> bm!701621 m!8163654))

(declare-fun m!8163656 () Bool)

(assert (=> b!7643206 m!8163656))

(assert (=> b!7643054 d!2325329))

(declare-fun d!2325331 () Bool)

(declare-fun e!4543012 () Bool)

(assert (=> d!2325331 e!4543012))

(declare-fun res!3061350 () Bool)

(assert (=> d!2325331 (=> res!3061350 e!4543012)))

(assert (=> d!2325331 (= res!3061350 (matchR!9952 (regOne!41415 r!14126) s!9605))))

(declare-fun lt!2660710 () Unit!167878)

(declare-fun choose!59021 (Regex!20451 Regex!20451 List!73302) Unit!167878)

(assert (=> d!2325331 (= lt!2660710 (choose!59021 (regOne!41415 r!14126) (regTwo!41415 r!14126) s!9605))))

(declare-fun e!4543011 () Bool)

(assert (=> d!2325331 e!4543011))

(declare-fun res!3061351 () Bool)

(assert (=> d!2325331 (=> (not res!3061351) (not e!4543011))))

(assert (=> d!2325331 (= res!3061351 (validRegex!10869 (regOne!41415 r!14126)))))

(assert (=> d!2325331 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!354 (regOne!41415 r!14126) (regTwo!41415 r!14126) s!9605) lt!2660710)))

(declare-fun b!7643211 () Bool)

(assert (=> b!7643211 (= e!4543011 (validRegex!10869 (regTwo!41415 r!14126)))))

(declare-fun b!7643212 () Bool)

(assert (=> b!7643212 (= e!4543012 (matchR!9952 (regTwo!41415 r!14126) s!9605))))

(assert (= (and d!2325331 res!3061351) b!7643211))

(assert (= (and d!2325331 (not res!3061350)) b!7643212))

(assert (=> d!2325331 m!8163616))

(declare-fun m!8163658 () Bool)

(assert (=> d!2325331 m!8163658))

(declare-fun m!8163660 () Bool)

(assert (=> d!2325331 m!8163660))

(assert (=> b!7643211 m!8163612))

(assert (=> b!7643212 m!8163600))

(assert (=> b!7643054 d!2325331))

(declare-fun b!7643231 () Bool)

(declare-fun e!4543027 () Bool)

(declare-fun e!4543029 () Bool)

(assert (=> b!7643231 (= e!4543027 e!4543029)))

(declare-fun res!3061363 () Bool)

(assert (=> b!7643231 (= res!3061363 (not (nullable!8955 (reg!20780 (regTwo!41415 r!14126)))))))

(assert (=> b!7643231 (=> (not res!3061363) (not e!4543029))))

(declare-fun b!7643232 () Bool)

(declare-fun res!3061362 () Bool)

(declare-fun e!4543028 () Bool)

(assert (=> b!7643232 (=> res!3061362 e!4543028)))

(assert (=> b!7643232 (= res!3061362 (not ((_ is Concat!29296) (regTwo!41415 r!14126))))))

(declare-fun e!4543033 () Bool)

(assert (=> b!7643232 (= e!4543033 e!4543028)))

(declare-fun b!7643233 () Bool)

(declare-fun res!3061365 () Bool)

(declare-fun e!4543030 () Bool)

(assert (=> b!7643233 (=> (not res!3061365) (not e!4543030))))

(declare-fun call!701633 () Bool)

(assert (=> b!7643233 (= res!3061365 call!701633)))

(assert (=> b!7643233 (= e!4543033 e!4543030)))

(declare-fun b!7643234 () Bool)

(declare-fun call!701635 () Bool)

(assert (=> b!7643234 (= e!4543030 call!701635)))

(declare-fun bm!701628 () Bool)

(declare-fun call!701634 () Bool)

(assert (=> bm!701628 (= call!701633 call!701634)))

(declare-fun b!7643235 () Bool)

(declare-fun e!4543031 () Bool)

(assert (=> b!7643235 (= e!4543028 e!4543031)))

(declare-fun res!3061364 () Bool)

(assert (=> b!7643235 (=> (not res!3061364) (not e!4543031))))

(assert (=> b!7643235 (= res!3061364 call!701633)))

(declare-fun b!7643236 () Bool)

(assert (=> b!7643236 (= e!4543027 e!4543033)))

(declare-fun c!1407865 () Bool)

(assert (=> b!7643236 (= c!1407865 ((_ is Union!20451) (regTwo!41415 r!14126)))))

(declare-fun d!2325333 () Bool)

(declare-fun res!3061366 () Bool)

(declare-fun e!4543032 () Bool)

(assert (=> d!2325333 (=> res!3061366 e!4543032)))

(assert (=> d!2325333 (= res!3061366 ((_ is ElementMatch!20451) (regTwo!41415 r!14126)))))

(assert (=> d!2325333 (= (validRegex!10869 (regTwo!41415 r!14126)) e!4543032)))

(declare-fun b!7643237 () Bool)

(assert (=> b!7643237 (= e!4543029 call!701634)))

(declare-fun b!7643238 () Bool)

(assert (=> b!7643238 (= e!4543032 e!4543027)))

(declare-fun c!1407866 () Bool)

(assert (=> b!7643238 (= c!1407866 ((_ is Star!20451) (regTwo!41415 r!14126)))))

(declare-fun bm!701629 () Bool)

(assert (=> bm!701629 (= call!701635 (validRegex!10869 (ite c!1407865 (regTwo!41415 (regTwo!41415 r!14126)) (regTwo!41414 (regTwo!41415 r!14126)))))))

(declare-fun bm!701630 () Bool)

(assert (=> bm!701630 (= call!701634 (validRegex!10869 (ite c!1407866 (reg!20780 (regTwo!41415 r!14126)) (ite c!1407865 (regOne!41415 (regTwo!41415 r!14126)) (regOne!41414 (regTwo!41415 r!14126))))))))

(declare-fun b!7643239 () Bool)

(assert (=> b!7643239 (= e!4543031 call!701635)))

(assert (= (and d!2325333 (not res!3061366)) b!7643238))

(assert (= (and b!7643238 c!1407866) b!7643231))

(assert (= (and b!7643238 (not c!1407866)) b!7643236))

(assert (= (and b!7643231 res!3061363) b!7643237))

(assert (= (and b!7643236 c!1407865) b!7643233))

(assert (= (and b!7643236 (not c!1407865)) b!7643232))

(assert (= (and b!7643233 res!3061365) b!7643234))

(assert (= (and b!7643232 (not res!3061362)) b!7643235))

(assert (= (and b!7643235 res!3061364) b!7643239))

(assert (= (or b!7643233 b!7643235) bm!701628))

(assert (= (or b!7643234 b!7643239) bm!701629))

(assert (= (or b!7643237 bm!701628) bm!701630))

(declare-fun m!8163662 () Bool)

(assert (=> b!7643231 m!8163662))

(declare-fun m!8163664 () Bool)

(assert (=> bm!701629 m!8163664))

(declare-fun m!8163666 () Bool)

(assert (=> bm!701630 m!8163666))

(assert (=> b!7643054 d!2325333))

(declare-fun d!2325335 () Bool)

(assert (=> d!2325335 (= (matchR!9952 (regOne!41415 r!14126) s!9605) (matchRSpec!4574 (regOne!41415 r!14126) s!9605))))

(declare-fun lt!2660711 () Unit!167878)

(assert (=> d!2325335 (= lt!2660711 (choose!59020 (regOne!41415 r!14126) s!9605))))

(assert (=> d!2325335 (validRegex!10869 (regOne!41415 r!14126))))

(assert (=> d!2325335 (= (mainMatchTheorem!4554 (regOne!41415 r!14126) s!9605) lt!2660711)))

(declare-fun bs!1944763 () Bool)

(assert (= bs!1944763 d!2325335))

(assert (=> bs!1944763 m!8163616))

(assert (=> bs!1944763 m!8163608))

(declare-fun m!8163668 () Bool)

(assert (=> bs!1944763 m!8163668))

(assert (=> bs!1944763 m!8163660))

(assert (=> b!7643054 d!2325335))

(declare-fun d!2325337 () Bool)

(declare-fun e!4543038 () Bool)

(assert (=> d!2325337 e!4543038))

(declare-fun c!1407869 () Bool)

(assert (=> d!2325337 (= c!1407869 ((_ is EmptyExpr!20451) (regOne!41415 r!14126)))))

(declare-fun lt!2660712 () Bool)

(declare-fun e!4543037 () Bool)

(assert (=> d!2325337 (= lt!2660712 e!4543037)))

(declare-fun c!1407868 () Bool)

(assert (=> d!2325337 (= c!1407868 (isEmpty!41806 s!9605))))

(assert (=> d!2325337 (validRegex!10869 (regOne!41415 r!14126))))

(assert (=> d!2325337 (= (matchR!9952 (regOne!41415 r!14126) s!9605) lt!2660712)))

(declare-fun b!7643240 () Bool)

(declare-fun e!4543036 () Bool)

(declare-fun e!4543034 () Bool)

(assert (=> b!7643240 (= e!4543036 e!4543034)))

(declare-fun res!3061368 () Bool)

(assert (=> b!7643240 (=> res!3061368 e!4543034)))

(declare-fun call!701636 () Bool)

(assert (=> b!7643240 (= res!3061368 call!701636)))

(declare-fun b!7643241 () Bool)

(declare-fun res!3061372 () Bool)

(assert (=> b!7643241 (=> res!3061372 e!4543034)))

(assert (=> b!7643241 (= res!3061372 (not (isEmpty!41806 (tail!15266 s!9605))))))

(declare-fun b!7643242 () Bool)

(declare-fun res!3061373 () Bool)

(declare-fun e!4543035 () Bool)

(assert (=> b!7643242 (=> res!3061373 e!4543035)))

(assert (=> b!7643242 (= res!3061373 (not ((_ is ElementMatch!20451) (regOne!41415 r!14126))))))

(declare-fun e!4543039 () Bool)

(assert (=> b!7643242 (= e!4543039 e!4543035)))

(declare-fun b!7643243 () Bool)

(declare-fun e!4543040 () Bool)

(assert (=> b!7643243 (= e!4543040 (= (head!15726 s!9605) (c!1407820 (regOne!41415 r!14126))))))

(declare-fun bm!701631 () Bool)

(assert (=> bm!701631 (= call!701636 (isEmpty!41806 s!9605))))

(declare-fun b!7643244 () Bool)

(assert (=> b!7643244 (= e!4543037 (nullable!8955 (regOne!41415 r!14126)))))

(declare-fun b!7643245 () Bool)

(declare-fun res!3061367 () Bool)

(assert (=> b!7643245 (=> res!3061367 e!4543035)))

(assert (=> b!7643245 (= res!3061367 e!4543040)))

(declare-fun res!3061374 () Bool)

(assert (=> b!7643245 (=> (not res!3061374) (not e!4543040))))

(assert (=> b!7643245 (= res!3061374 lt!2660712)))

(declare-fun b!7643246 () Bool)

(assert (=> b!7643246 (= e!4543039 (not lt!2660712))))

(declare-fun b!7643247 () Bool)

(assert (=> b!7643247 (= e!4543038 (= lt!2660712 call!701636))))

(declare-fun b!7643248 () Bool)

(assert (=> b!7643248 (= e!4543037 (matchR!9952 (derivativeStep!5926 (regOne!41415 r!14126) (head!15726 s!9605)) (tail!15266 s!9605)))))

(declare-fun b!7643249 () Bool)

(assert (=> b!7643249 (= e!4543035 e!4543036)))

(declare-fun res!3061369 () Bool)

(assert (=> b!7643249 (=> (not res!3061369) (not e!4543036))))

(assert (=> b!7643249 (= res!3061369 (not lt!2660712))))

(declare-fun b!7643250 () Bool)

(assert (=> b!7643250 (= e!4543034 (not (= (head!15726 s!9605) (c!1407820 (regOne!41415 r!14126)))))))

(declare-fun b!7643251 () Bool)

(declare-fun res!3061370 () Bool)

(assert (=> b!7643251 (=> (not res!3061370) (not e!4543040))))

(assert (=> b!7643251 (= res!3061370 (not call!701636))))

(declare-fun b!7643252 () Bool)

(assert (=> b!7643252 (= e!4543038 e!4543039)))

(declare-fun c!1407867 () Bool)

(assert (=> b!7643252 (= c!1407867 ((_ is EmptyLang!20451) (regOne!41415 r!14126)))))

(declare-fun b!7643253 () Bool)

(declare-fun res!3061371 () Bool)

(assert (=> b!7643253 (=> (not res!3061371) (not e!4543040))))

(assert (=> b!7643253 (= res!3061371 (isEmpty!41806 (tail!15266 s!9605)))))

(assert (= (and d!2325337 c!1407868) b!7643244))

(assert (= (and d!2325337 (not c!1407868)) b!7643248))

(assert (= (and d!2325337 c!1407869) b!7643247))

(assert (= (and d!2325337 (not c!1407869)) b!7643252))

(assert (= (and b!7643252 c!1407867) b!7643246))

(assert (= (and b!7643252 (not c!1407867)) b!7643242))

(assert (= (and b!7643242 (not res!3061373)) b!7643245))

(assert (= (and b!7643245 res!3061374) b!7643251))

(assert (= (and b!7643251 res!3061370) b!7643253))

(assert (= (and b!7643253 res!3061371) b!7643243))

(assert (= (and b!7643245 (not res!3061367)) b!7643249))

(assert (= (and b!7643249 res!3061369) b!7643240))

(assert (= (and b!7643240 (not res!3061368)) b!7643241))

(assert (= (and b!7643241 (not res!3061372)) b!7643250))

(assert (= (or b!7643247 b!7643240 b!7643251) bm!701631))

(assert (=> b!7643248 m!8163626))

(assert (=> b!7643248 m!8163626))

(declare-fun m!8163670 () Bool)

(assert (=> b!7643248 m!8163670))

(assert (=> b!7643248 m!8163630))

(assert (=> b!7643248 m!8163670))

(assert (=> b!7643248 m!8163630))

(declare-fun m!8163672 () Bool)

(assert (=> b!7643248 m!8163672))

(assert (=> b!7643243 m!8163626))

(assert (=> b!7643241 m!8163630))

(assert (=> b!7643241 m!8163630))

(assert (=> b!7643241 m!8163634))

(declare-fun m!8163674 () Bool)

(assert (=> b!7643244 m!8163674))

(assert (=> b!7643250 m!8163626))

(assert (=> bm!701631 m!8163622))

(assert (=> b!7643253 m!8163630))

(assert (=> b!7643253 m!8163630))

(assert (=> b!7643253 m!8163634))

(assert (=> d!2325337 m!8163622))

(assert (=> d!2325337 m!8163660))

(assert (=> b!7643054 d!2325337))

(declare-fun b!7643254 () Bool)

(declare-fun e!4543041 () Bool)

(declare-fun e!4543043 () Bool)

(assert (=> b!7643254 (= e!4543041 e!4543043)))

(declare-fun res!3061376 () Bool)

(assert (=> b!7643254 (= res!3061376 (not (nullable!8955 (reg!20780 r!14126))))))

(assert (=> b!7643254 (=> (not res!3061376) (not e!4543043))))

(declare-fun b!7643255 () Bool)

(declare-fun res!3061375 () Bool)

(declare-fun e!4543042 () Bool)

(assert (=> b!7643255 (=> res!3061375 e!4543042)))

(assert (=> b!7643255 (= res!3061375 (not ((_ is Concat!29296) r!14126)))))

(declare-fun e!4543047 () Bool)

(assert (=> b!7643255 (= e!4543047 e!4543042)))

(declare-fun b!7643256 () Bool)

(declare-fun res!3061378 () Bool)

(declare-fun e!4543044 () Bool)

(assert (=> b!7643256 (=> (not res!3061378) (not e!4543044))))

(declare-fun call!701637 () Bool)

(assert (=> b!7643256 (= res!3061378 call!701637)))

(assert (=> b!7643256 (= e!4543047 e!4543044)))

(declare-fun b!7643257 () Bool)

(declare-fun call!701639 () Bool)

(assert (=> b!7643257 (= e!4543044 call!701639)))

(declare-fun bm!701632 () Bool)

(declare-fun call!701638 () Bool)

(assert (=> bm!701632 (= call!701637 call!701638)))

(declare-fun b!7643258 () Bool)

(declare-fun e!4543045 () Bool)

(assert (=> b!7643258 (= e!4543042 e!4543045)))

(declare-fun res!3061377 () Bool)

(assert (=> b!7643258 (=> (not res!3061377) (not e!4543045))))

(assert (=> b!7643258 (= res!3061377 call!701637)))

(declare-fun b!7643259 () Bool)

(assert (=> b!7643259 (= e!4543041 e!4543047)))

(declare-fun c!1407870 () Bool)

(assert (=> b!7643259 (= c!1407870 ((_ is Union!20451) r!14126))))

(declare-fun d!2325339 () Bool)

(declare-fun res!3061379 () Bool)

(declare-fun e!4543046 () Bool)

(assert (=> d!2325339 (=> res!3061379 e!4543046)))

(assert (=> d!2325339 (= res!3061379 ((_ is ElementMatch!20451) r!14126))))

(assert (=> d!2325339 (= (validRegex!10869 r!14126) e!4543046)))

(declare-fun b!7643260 () Bool)

(assert (=> b!7643260 (= e!4543043 call!701638)))

(declare-fun b!7643261 () Bool)

(assert (=> b!7643261 (= e!4543046 e!4543041)))

(declare-fun c!1407871 () Bool)

(assert (=> b!7643261 (= c!1407871 ((_ is Star!20451) r!14126))))

(declare-fun bm!701633 () Bool)

(assert (=> bm!701633 (= call!701639 (validRegex!10869 (ite c!1407870 (regTwo!41415 r!14126) (regTwo!41414 r!14126))))))

(declare-fun bm!701634 () Bool)

(assert (=> bm!701634 (= call!701638 (validRegex!10869 (ite c!1407871 (reg!20780 r!14126) (ite c!1407870 (regOne!41415 r!14126) (regOne!41414 r!14126)))))))

(declare-fun b!7643262 () Bool)

(assert (=> b!7643262 (= e!4543045 call!701639)))

(assert (= (and d!2325339 (not res!3061379)) b!7643261))

(assert (= (and b!7643261 c!1407871) b!7643254))

(assert (= (and b!7643261 (not c!1407871)) b!7643259))

(assert (= (and b!7643254 res!3061376) b!7643260))

(assert (= (and b!7643259 c!1407870) b!7643256))

(assert (= (and b!7643259 (not c!1407870)) b!7643255))

(assert (= (and b!7643256 res!3061378) b!7643257))

(assert (= (and b!7643255 (not res!3061375)) b!7643258))

(assert (= (and b!7643258 res!3061377) b!7643262))

(assert (= (or b!7643256 b!7643258) bm!701632))

(assert (= (or b!7643257 b!7643262) bm!701633))

(assert (= (or b!7643260 bm!701632) bm!701634))

(declare-fun m!8163676 () Bool)

(assert (=> b!7643254 m!8163676))

(declare-fun m!8163678 () Bool)

(assert (=> bm!701633 m!8163678))

(declare-fun m!8163680 () Bool)

(assert (=> bm!701634 m!8163680))

(assert (=> start!735660 d!2325339))

(assert (=> b!7643057 d!2325321))

(declare-fun e!4543050 () Bool)

(assert (=> b!7643052 (= tp!2231072 e!4543050)))

(declare-fun b!7643275 () Bool)

(declare-fun tp!2231088 () Bool)

(assert (=> b!7643275 (= e!4543050 tp!2231088)))

(declare-fun b!7643276 () Bool)

(declare-fun tp!2231089 () Bool)

(declare-fun tp!2231090 () Bool)

(assert (=> b!7643276 (= e!4543050 (and tp!2231089 tp!2231090))))

(declare-fun b!7643274 () Bool)

(declare-fun tp!2231091 () Bool)

(declare-fun tp!2231092 () Bool)

(assert (=> b!7643274 (= e!4543050 (and tp!2231091 tp!2231092))))

(declare-fun b!7643273 () Bool)

(assert (=> b!7643273 (= e!4543050 tp_is_empty!51257)))

(assert (= (and b!7643052 ((_ is ElementMatch!20451) (regOne!41414 r!14126))) b!7643273))

(assert (= (and b!7643052 ((_ is Concat!29296) (regOne!41414 r!14126))) b!7643274))

(assert (= (and b!7643052 ((_ is Star!20451) (regOne!41414 r!14126))) b!7643275))

(assert (= (and b!7643052 ((_ is Union!20451) (regOne!41414 r!14126))) b!7643276))

(declare-fun e!4543051 () Bool)

(assert (=> b!7643052 (= tp!2231074 e!4543051)))

(declare-fun b!7643279 () Bool)

(declare-fun tp!2231093 () Bool)

(assert (=> b!7643279 (= e!4543051 tp!2231093)))

(declare-fun b!7643280 () Bool)

(declare-fun tp!2231094 () Bool)

(declare-fun tp!2231095 () Bool)

(assert (=> b!7643280 (= e!4543051 (and tp!2231094 tp!2231095))))

(declare-fun b!7643278 () Bool)

(declare-fun tp!2231096 () Bool)

(declare-fun tp!2231097 () Bool)

(assert (=> b!7643278 (= e!4543051 (and tp!2231096 tp!2231097))))

(declare-fun b!7643277 () Bool)

(assert (=> b!7643277 (= e!4543051 tp_is_empty!51257)))

(assert (= (and b!7643052 ((_ is ElementMatch!20451) (regTwo!41414 r!14126))) b!7643277))

(assert (= (and b!7643052 ((_ is Concat!29296) (regTwo!41414 r!14126))) b!7643278))

(assert (= (and b!7643052 ((_ is Star!20451) (regTwo!41414 r!14126))) b!7643279))

(assert (= (and b!7643052 ((_ is Union!20451) (regTwo!41414 r!14126))) b!7643280))

(declare-fun e!4543052 () Bool)

(assert (=> b!7643053 (= tp!2231077 e!4543052)))

(declare-fun b!7643283 () Bool)

(declare-fun tp!2231098 () Bool)

(assert (=> b!7643283 (= e!4543052 tp!2231098)))

(declare-fun b!7643284 () Bool)

(declare-fun tp!2231099 () Bool)

(declare-fun tp!2231100 () Bool)

(assert (=> b!7643284 (= e!4543052 (and tp!2231099 tp!2231100))))

(declare-fun b!7643282 () Bool)

(declare-fun tp!2231101 () Bool)

(declare-fun tp!2231102 () Bool)

(assert (=> b!7643282 (= e!4543052 (and tp!2231101 tp!2231102))))

(declare-fun b!7643281 () Bool)

(assert (=> b!7643281 (= e!4543052 tp_is_empty!51257)))

(assert (= (and b!7643053 ((_ is ElementMatch!20451) (regOne!41415 r!14126))) b!7643281))

(assert (= (and b!7643053 ((_ is Concat!29296) (regOne!41415 r!14126))) b!7643282))

(assert (= (and b!7643053 ((_ is Star!20451) (regOne!41415 r!14126))) b!7643283))

(assert (= (and b!7643053 ((_ is Union!20451) (regOne!41415 r!14126))) b!7643284))

(declare-fun e!4543053 () Bool)

(assert (=> b!7643053 (= tp!2231076 e!4543053)))

(declare-fun b!7643287 () Bool)

(declare-fun tp!2231103 () Bool)

(assert (=> b!7643287 (= e!4543053 tp!2231103)))

(declare-fun b!7643288 () Bool)

(declare-fun tp!2231104 () Bool)

(declare-fun tp!2231105 () Bool)

(assert (=> b!7643288 (= e!4543053 (and tp!2231104 tp!2231105))))

(declare-fun b!7643286 () Bool)

(declare-fun tp!2231106 () Bool)

(declare-fun tp!2231107 () Bool)

(assert (=> b!7643286 (= e!4543053 (and tp!2231106 tp!2231107))))

(declare-fun b!7643285 () Bool)

(assert (=> b!7643285 (= e!4543053 tp_is_empty!51257)))

(assert (= (and b!7643053 ((_ is ElementMatch!20451) (regTwo!41415 r!14126))) b!7643285))

(assert (= (and b!7643053 ((_ is Concat!29296) (regTwo!41415 r!14126))) b!7643286))

(assert (= (and b!7643053 ((_ is Star!20451) (regTwo!41415 r!14126))) b!7643287))

(assert (= (and b!7643053 ((_ is Union!20451) (regTwo!41415 r!14126))) b!7643288))

(declare-fun e!4543054 () Bool)

(assert (=> b!7643058 (= tp!2231075 e!4543054)))

(declare-fun b!7643291 () Bool)

(declare-fun tp!2231108 () Bool)

(assert (=> b!7643291 (= e!4543054 tp!2231108)))

(declare-fun b!7643292 () Bool)

(declare-fun tp!2231109 () Bool)

(declare-fun tp!2231110 () Bool)

(assert (=> b!7643292 (= e!4543054 (and tp!2231109 tp!2231110))))

(declare-fun b!7643290 () Bool)

(declare-fun tp!2231111 () Bool)

(declare-fun tp!2231112 () Bool)

(assert (=> b!7643290 (= e!4543054 (and tp!2231111 tp!2231112))))

(declare-fun b!7643289 () Bool)

(assert (=> b!7643289 (= e!4543054 tp_is_empty!51257)))

(assert (= (and b!7643058 ((_ is ElementMatch!20451) (reg!20780 r!14126))) b!7643289))

(assert (= (and b!7643058 ((_ is Concat!29296) (reg!20780 r!14126))) b!7643290))

(assert (= (and b!7643058 ((_ is Star!20451) (reg!20780 r!14126))) b!7643291))

(assert (= (and b!7643058 ((_ is Union!20451) (reg!20780 r!14126))) b!7643292))

(declare-fun b!7643297 () Bool)

(declare-fun e!4543057 () Bool)

(declare-fun tp!2231115 () Bool)

(assert (=> b!7643297 (= e!4543057 (and tp_is_empty!51257 tp!2231115))))

(assert (=> b!7643051 (= tp!2231073 e!4543057)))

(assert (= (and b!7643051 ((_ is Cons!73178) (t!388037 s!9605))) b!7643297))

(check-sat (not bm!701617) (not b!7643278) (not b!7643206) (not b!7643192) (not b!7643280) (not b!7643195) (not bm!701616) (not b!7643292) (not b!7643286) (not b!7643165) (not b!7643248) (not b!7643287) (not b!7643243) (not b!7643253) (not b!7643211) (not b!7643283) (not d!2325325) (not b!7643181) (not b!7643175) (not b!7643282) (not bm!701618) (not bm!701619) (not b!7643231) (not b!7643291) (not b!7643170) (not b!7643183) (not bm!701621) (not bm!701612) (not bm!701630) (not b!7643284) (not b!7643200) (not b!7643288) (not d!2325331) (not d!2325335) (not bm!701633) (not b!7643161) (not b!7643190) (not b!7643290) (not b!7643297) (not b!7643274) (not b!7643241) (not b!7643276) (not b!7643186) (not b!7643124) (not b!7643279) (not b!7643158) (not bm!701620) (not b!7643118) (not b!7643275) (not b!7643244) (not b!7643212) (not b!7643250) (not b!7643254) (not bm!701613) (not d!2325337) (not d!2325327) (not d!2325321) (not bm!701634) (not b!7643160) (not b!7643167) tp_is_empty!51257 (not bm!701631) (not bm!701629) (not b!7643185))
(check-sat)
