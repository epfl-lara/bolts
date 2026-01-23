; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!668788 () Bool)

(assert start!668788)

(declare-fun b!6976773 () Bool)

(assert (=> b!6976773 true))

(declare-fun b!6976770 () Bool)

(declare-fun e!4192977 () Bool)

(declare-datatypes ((C!34550 0))(
  ( (C!34551 (val!26977 Int)) )
))
(declare-datatypes ((Regex!17140 0))(
  ( (ElementMatch!17140 (c!1293132 C!34550)) (Concat!25985 (regOne!34792 Regex!17140) (regTwo!34792 Regex!17140)) (EmptyExpr!17140) (Star!17140 (reg!17469 Regex!17140)) (EmptyLang!17140) (Union!17140 (regOne!34793 Regex!17140) (regTwo!34793 Regex!17140)) )
))
(declare-datatypes ((List!66965 0))(
  ( (Nil!66841) (Cons!66841 (h!73289 Regex!17140) (t!380708 List!66965)) )
))
(declare-datatypes ((Context!12272 0))(
  ( (Context!12273 (exprs!6636 List!66965)) )
))
(declare-fun c!142 () Context!12272)

(declare-fun lambda!398006 () Int)

(declare-fun forall!16009 (List!66965 Int) Bool)

(assert (=> b!6976770 (= e!4192977 (forall!16009 (exprs!6636 c!142) lambda!398006))))

(declare-fun b!6976771 () Bool)

(declare-fun res!2844863 () Bool)

(assert (=> b!6976771 (=> res!2844863 e!4192977)))

(declare-fun lt!2479991 () Context!12272)

(declare-fun lt!2479990 () (Set Context!12272))

(assert (=> b!6976771 (= res!2844863 (not (set.member lt!2479991 lt!2479990)))))

(declare-fun b!6976772 () Bool)

(declare-fun e!4192978 () Bool)

(declare-fun tp!1927084 () Bool)

(assert (=> b!6976772 (= e!4192978 tp!1927084)))

(declare-fun setIsEmpty!47324 () Bool)

(declare-fun setRes!47324 () Bool)

(assert (=> setIsEmpty!47324 setRes!47324))

(declare-fun e!4192975 () Bool)

(declare-fun setNonEmpty!47324 () Bool)

(declare-fun setElem!47324 () Context!12272)

(declare-fun tp!1927080 () Bool)

(declare-fun inv!85710 (Context!12272) Bool)

(assert (=> setNonEmpty!47324 (= setRes!47324 (and tp!1927080 (inv!85710 setElem!47324) e!4192975))))

(declare-fun z1!570 () (Set Context!12272))

(declare-fun setRest!47324 () (Set Context!12272))

(assert (=> setNonEmpty!47324 (= z1!570 (set.union (set.insert setElem!47324 (as set.empty (Set Context!12272))) setRest!47324))))

(declare-fun res!2844864 () Bool)

(declare-fun e!4192979 () Bool)

(assert (=> start!668788 (=> (not res!2844864) (not e!4192979))))

(declare-datatypes ((List!66966 0))(
  ( (Nil!66842) (Cons!66842 (h!73290 C!34550) (t!380709 List!66966)) )
))
(declare-fun s!7408 () List!66966)

(declare-fun matchZipper!2680 ((Set Context!12272) List!66966) Bool)

(assert (=> start!668788 (= res!2844864 (matchZipper!2680 lt!2479990 s!7408))))

(declare-fun ct2!306 () Context!12272)

(declare-fun appendTo!261 ((Set Context!12272) Context!12272) (Set Context!12272))

(assert (=> start!668788 (= lt!2479990 (appendTo!261 z1!570 ct2!306))))

(assert (=> start!668788 e!4192979))

(assert (=> start!668788 (and (inv!85710 c!142) e!4192978)))

(declare-fun condSetEmpty!47324 () Bool)

(assert (=> start!668788 (= condSetEmpty!47324 (= z1!570 (as set.empty (Set Context!12272))))))

(assert (=> start!668788 setRes!47324))

(declare-fun e!4192980 () Bool)

(assert (=> start!668788 e!4192980))

(declare-fun e!4192976 () Bool)

(assert (=> start!668788 (and (inv!85710 ct2!306) e!4192976)))

(assert (=> b!6976773 (= e!4192979 (not e!4192977))))

(declare-fun res!2844866 () Bool)

(assert (=> b!6976773 (=> res!2844866 e!4192977)))

(assert (=> b!6976773 (= res!2844866 (not (matchZipper!2680 (set.insert lt!2479991 (as set.empty (Set Context!12272))) s!7408)))))

(declare-fun lambda!398005 () Int)

(declare-fun getWitness!987 ((Set Context!12272) Int) Context!12272)

(assert (=> b!6976773 (= lt!2479991 (getWitness!987 lt!2479990 lambda!398005))))

(declare-datatypes ((List!66967 0))(
  ( (Nil!66843) (Cons!66843 (h!73291 Context!12272) (t!380710 List!66967)) )
))
(declare-fun lt!2479993 () List!66967)

(declare-fun exists!2876 (List!66967 Int) Bool)

(assert (=> b!6976773 (exists!2876 lt!2479993 lambda!398005)))

(declare-datatypes ((Unit!160928 0))(
  ( (Unit!160929) )
))
(declare-fun lt!2479992 () Unit!160928)

(declare-fun lemmaZipperMatchesExistsMatchingContext!109 (List!66967 List!66966) Unit!160928)

(assert (=> b!6976773 (= lt!2479992 (lemmaZipperMatchesExistsMatchingContext!109 lt!2479993 s!7408))))

(declare-fun toList!10500 ((Set Context!12272)) List!66967)

(assert (=> b!6976773 (= lt!2479993 (toList!10500 lt!2479990))))

(declare-fun b!6976774 () Bool)

(declare-fun tp!1927083 () Bool)

(assert (=> b!6976774 (= e!4192976 tp!1927083)))

(declare-fun b!6976775 () Bool)

(declare-fun res!2844865 () Bool)

(assert (=> b!6976775 (=> (not res!2844865) (not e!4192979))))

(assert (=> b!6976775 (= res!2844865 (is-Cons!66842 s!7408))))

(declare-fun b!6976776 () Bool)

(declare-fun tp_is_empty!43505 () Bool)

(declare-fun tp!1927081 () Bool)

(assert (=> b!6976776 (= e!4192980 (and tp_is_empty!43505 tp!1927081))))

(declare-fun b!6976777 () Bool)

(declare-fun tp!1927082 () Bool)

(assert (=> b!6976777 (= e!4192975 tp!1927082)))

(assert (= (and start!668788 res!2844864) b!6976775))

(assert (= (and b!6976775 res!2844865) b!6976773))

(assert (= (and b!6976773 (not res!2844866)) b!6976771))

(assert (= (and b!6976771 (not res!2844863)) b!6976770))

(assert (= start!668788 b!6976772))

(assert (= (and start!668788 condSetEmpty!47324) setIsEmpty!47324))

(assert (= (and start!668788 (not condSetEmpty!47324)) setNonEmpty!47324))

(assert (= setNonEmpty!47324 b!6976777))

(assert (= (and start!668788 (is-Cons!66842 s!7408)) b!6976776))

(assert (= start!668788 b!6976774))

(declare-fun m!7662020 () Bool)

(assert (=> b!6976771 m!7662020))

(declare-fun m!7662022 () Bool)

(assert (=> b!6976770 m!7662022))

(declare-fun m!7662024 () Bool)

(assert (=> b!6976773 m!7662024))

(declare-fun m!7662026 () Bool)

(assert (=> b!6976773 m!7662026))

(assert (=> b!6976773 m!7662024))

(declare-fun m!7662028 () Bool)

(assert (=> b!6976773 m!7662028))

(declare-fun m!7662030 () Bool)

(assert (=> b!6976773 m!7662030))

(declare-fun m!7662032 () Bool)

(assert (=> b!6976773 m!7662032))

(declare-fun m!7662034 () Bool)

(assert (=> b!6976773 m!7662034))

(declare-fun m!7662036 () Bool)

(assert (=> start!668788 m!7662036))

(declare-fun m!7662038 () Bool)

(assert (=> start!668788 m!7662038))

(declare-fun m!7662040 () Bool)

(assert (=> start!668788 m!7662040))

(declare-fun m!7662042 () Bool)

(assert (=> start!668788 m!7662042))

(declare-fun m!7662044 () Bool)

(assert (=> setNonEmpty!47324 m!7662044))

(push 1)

(assert (not setNonEmpty!47324))

(assert tp_is_empty!43505)

(assert (not b!6976773))

(assert (not b!6976774))

(assert (not b!6976772))

(assert (not b!6976776))

(assert (not b!6976770))

(assert (not b!6976777))

(assert (not start!668788))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2172172 () Bool)

(declare-fun c!1293145 () Bool)

(declare-fun isEmpty!39034 (List!66966) Bool)

(assert (=> d!2172172 (= c!1293145 (isEmpty!39034 s!7408))))

(declare-fun e!4193004 () Bool)

(assert (=> d!2172172 (= (matchZipper!2680 lt!2479990 s!7408) e!4193004)))

(declare-fun b!6976816 () Bool)

(declare-fun nullableZipper!2378 ((Set Context!12272)) Bool)

(assert (=> b!6976816 (= e!4193004 (nullableZipper!2378 lt!2479990))))

(declare-fun b!6976817 () Bool)

(declare-fun derivationStepZipper!2625 ((Set Context!12272) C!34550) (Set Context!12272))

(declare-fun head!14046 (List!66966) C!34550)

(declare-fun tail!13114 (List!66966) List!66966)

(assert (=> b!6976817 (= e!4193004 (matchZipper!2680 (derivationStepZipper!2625 lt!2479990 (head!14046 s!7408)) (tail!13114 s!7408)))))

(assert (= (and d!2172172 c!1293145) b!6976816))

(assert (= (and d!2172172 (not c!1293145)) b!6976817))

(declare-fun m!7662092 () Bool)

(assert (=> d!2172172 m!7662092))

(declare-fun m!7662094 () Bool)

(assert (=> b!6976816 m!7662094))

(declare-fun m!7662096 () Bool)

(assert (=> b!6976817 m!7662096))

(assert (=> b!6976817 m!7662096))

(declare-fun m!7662098 () Bool)

(assert (=> b!6976817 m!7662098))

(declare-fun m!7662100 () Bool)

(assert (=> b!6976817 m!7662100))

(assert (=> b!6976817 m!7662098))

(assert (=> b!6976817 m!7662100))

(declare-fun m!7662102 () Bool)

(assert (=> b!6976817 m!7662102))

(assert (=> start!668788 d!2172172))

(declare-fun d!2172176 () Bool)

(assert (=> d!2172176 true))

(declare-fun lambda!398025 () Int)

(declare-fun map!15386 ((Set Context!12272) Int) (Set Context!12272))

(assert (=> d!2172176 (= (appendTo!261 z1!570 ct2!306) (map!15386 z1!570 lambda!398025))))

(declare-fun bs!1860009 () Bool)

(assert (= bs!1860009 d!2172176))

(declare-fun m!7662114 () Bool)

(assert (=> bs!1860009 m!7662114))

(assert (=> start!668788 d!2172176))

(declare-fun bs!1860010 () Bool)

(declare-fun d!2172182 () Bool)

(assert (= bs!1860010 (and d!2172182 b!6976770)))

(declare-fun lambda!398028 () Int)

(assert (=> bs!1860010 (= lambda!398028 lambda!398006)))

(assert (=> d!2172182 (= (inv!85710 c!142) (forall!16009 (exprs!6636 c!142) lambda!398028))))

(declare-fun bs!1860011 () Bool)

(assert (= bs!1860011 d!2172182))

(declare-fun m!7662128 () Bool)

(assert (=> bs!1860011 m!7662128))

(assert (=> start!668788 d!2172182))

(declare-fun bs!1860012 () Bool)

(declare-fun d!2172188 () Bool)

(assert (= bs!1860012 (and d!2172188 b!6976770)))

(declare-fun lambda!398029 () Int)

(assert (=> bs!1860012 (= lambda!398029 lambda!398006)))

(declare-fun bs!1860013 () Bool)

(assert (= bs!1860013 (and d!2172188 d!2172182)))

(assert (=> bs!1860013 (= lambda!398029 lambda!398028)))

(assert (=> d!2172188 (= (inv!85710 ct2!306) (forall!16009 (exprs!6636 ct2!306) lambda!398029))))

(declare-fun bs!1860014 () Bool)

(assert (= bs!1860014 d!2172188))

(declare-fun m!7662130 () Bool)

(assert (=> bs!1860014 m!7662130))

(assert (=> start!668788 d!2172188))

(declare-fun d!2172190 () Bool)

(declare-fun res!2844889 () Bool)

(declare-fun e!4193016 () Bool)

(assert (=> d!2172190 (=> res!2844889 e!4193016)))

(assert (=> d!2172190 (= res!2844889 (is-Nil!66841 (exprs!6636 c!142)))))

(assert (=> d!2172190 (= (forall!16009 (exprs!6636 c!142) lambda!398006) e!4193016)))

(declare-fun b!6976834 () Bool)

(declare-fun e!4193017 () Bool)

(assert (=> b!6976834 (= e!4193016 e!4193017)))

(declare-fun res!2844890 () Bool)

(assert (=> b!6976834 (=> (not res!2844890) (not e!4193017))))

(declare-fun dynLambda!26656 (Int Regex!17140) Bool)

(assert (=> b!6976834 (= res!2844890 (dynLambda!26656 lambda!398006 (h!73289 (exprs!6636 c!142))))))

(declare-fun b!6976835 () Bool)

(assert (=> b!6976835 (= e!4193017 (forall!16009 (t!380708 (exprs!6636 c!142)) lambda!398006))))

(assert (= (and d!2172190 (not res!2844889)) b!6976834))

(assert (= (and b!6976834 res!2844890) b!6976835))

(declare-fun b_lambda!261007 () Bool)

(assert (=> (not b_lambda!261007) (not b!6976834)))

(declare-fun m!7662132 () Bool)

(assert (=> b!6976834 m!7662132))

(declare-fun m!7662134 () Bool)

(assert (=> b!6976835 m!7662134))

(assert (=> b!6976770 d!2172190))

(declare-fun bs!1860018 () Bool)

(declare-fun d!2172192 () Bool)

(assert (= bs!1860018 (and d!2172192 b!6976773)))

(declare-fun lambda!398040 () Int)

(assert (=> bs!1860018 (= lambda!398040 lambda!398005)))

(assert (=> d!2172192 true))

(assert (=> d!2172192 (exists!2876 lt!2479993 lambda!398040)))

(declare-fun lt!2480021 () Unit!160928)

(declare-fun choose!51928 (List!66967 List!66966) Unit!160928)

(assert (=> d!2172192 (= lt!2480021 (choose!51928 lt!2479993 s!7408))))

(declare-fun content!13161 (List!66967) (Set Context!12272))

(assert (=> d!2172192 (matchZipper!2680 (content!13161 lt!2479993) s!7408)))

(assert (=> d!2172192 (= (lemmaZipperMatchesExistsMatchingContext!109 lt!2479993 s!7408) lt!2480021)))

(declare-fun bs!1860021 () Bool)

(assert (= bs!1860021 d!2172192))

(declare-fun m!7662140 () Bool)

(assert (=> bs!1860021 m!7662140))

(declare-fun m!7662142 () Bool)

(assert (=> bs!1860021 m!7662142))

(declare-fun m!7662144 () Bool)

(assert (=> bs!1860021 m!7662144))

(assert (=> bs!1860021 m!7662144))

(declare-fun m!7662148 () Bool)

(assert (=> bs!1860021 m!7662148))

(assert (=> b!6976773 d!2172192))

(declare-fun d!2172200 () Bool)

(declare-fun e!4193029 () Bool)

(assert (=> d!2172200 e!4193029))

(declare-fun res!2844899 () Bool)

(assert (=> d!2172200 (=> (not res!2844899) (not e!4193029))))

(declare-fun lt!2480024 () Context!12272)

(declare-fun dynLambda!26658 (Int Context!12272) Bool)

(assert (=> d!2172200 (= res!2844899 (dynLambda!26658 lambda!398005 lt!2480024))))

(declare-fun getWitness!990 (List!66967 Int) Context!12272)

(assert (=> d!2172200 (= lt!2480024 (getWitness!990 (toList!10500 lt!2479990) lambda!398005))))

(declare-fun exists!2879 ((Set Context!12272) Int) Bool)

(assert (=> d!2172200 (exists!2879 lt!2479990 lambda!398005)))

(assert (=> d!2172200 (= (getWitness!987 lt!2479990 lambda!398005) lt!2480024)))

(declare-fun b!6976851 () Bool)

(assert (=> b!6976851 (= e!4193029 (set.member lt!2480024 lt!2479990))))

(assert (= (and d!2172200 res!2844899) b!6976851))

(declare-fun b_lambda!261011 () Bool)

(assert (=> (not b_lambda!261011) (not d!2172200)))

(declare-fun m!7662156 () Bool)

(assert (=> d!2172200 m!7662156))

(assert (=> d!2172200 m!7662032))

(assert (=> d!2172200 m!7662032))

(declare-fun m!7662158 () Bool)

(assert (=> d!2172200 m!7662158))

(declare-fun m!7662160 () Bool)

(assert (=> d!2172200 m!7662160))

(declare-fun m!7662162 () Bool)

(assert (=> b!6976851 m!7662162))

(assert (=> b!6976773 d!2172200))

(declare-fun d!2172204 () Bool)

(declare-fun e!4193040 () Bool)

(assert (=> d!2172204 e!4193040))

(declare-fun res!2844902 () Bool)

(assert (=> d!2172204 (=> (not res!2844902) (not e!4193040))))

(declare-fun lt!2480027 () List!66967)

(declare-fun noDuplicate!2471 (List!66967) Bool)

(assert (=> d!2172204 (= res!2844902 (noDuplicate!2471 lt!2480027))))

(declare-fun choose!51930 ((Set Context!12272)) List!66967)

(assert (=> d!2172204 (= lt!2480027 (choose!51930 lt!2479990))))

(assert (=> d!2172204 (= (toList!10500 lt!2479990) lt!2480027)))

(declare-fun b!6976866 () Bool)

(assert (=> b!6976866 (= e!4193040 (= (content!13161 lt!2480027) lt!2479990))))

(assert (= (and d!2172204 res!2844902) b!6976866))

(declare-fun m!7662172 () Bool)

(assert (=> d!2172204 m!7662172))

(declare-fun m!7662174 () Bool)

(assert (=> d!2172204 m!7662174))

(declare-fun m!7662176 () Bool)

(assert (=> b!6976866 m!7662176))

(assert (=> b!6976773 d!2172204))

(declare-fun d!2172210 () Bool)

(declare-fun c!1293151 () Bool)

(assert (=> d!2172210 (= c!1293151 (isEmpty!39034 s!7408))))

(declare-fun e!4193041 () Bool)

(assert (=> d!2172210 (= (matchZipper!2680 (set.insert lt!2479991 (as set.empty (Set Context!12272))) s!7408) e!4193041)))

(declare-fun b!6976867 () Bool)

(assert (=> b!6976867 (= e!4193041 (nullableZipper!2378 (set.insert lt!2479991 (as set.empty (Set Context!12272)))))))

(declare-fun b!6976868 () Bool)

(assert (=> b!6976868 (= e!4193041 (matchZipper!2680 (derivationStepZipper!2625 (set.insert lt!2479991 (as set.empty (Set Context!12272))) (head!14046 s!7408)) (tail!13114 s!7408)))))

(assert (= (and d!2172210 c!1293151) b!6976867))

(assert (= (and d!2172210 (not c!1293151)) b!6976868))

(assert (=> d!2172210 m!7662092))

(assert (=> b!6976867 m!7662024))

(declare-fun m!7662178 () Bool)

(assert (=> b!6976867 m!7662178))

(assert (=> b!6976868 m!7662096))

(assert (=> b!6976868 m!7662024))

(assert (=> b!6976868 m!7662096))

(declare-fun m!7662180 () Bool)

(assert (=> b!6976868 m!7662180))

(assert (=> b!6976868 m!7662100))

(assert (=> b!6976868 m!7662180))

(assert (=> b!6976868 m!7662100))

(declare-fun m!7662182 () Bool)

(assert (=> b!6976868 m!7662182))

(assert (=> b!6976773 d!2172210))

(declare-fun bs!1860029 () Bool)

(declare-fun d!2172212 () Bool)

(assert (= bs!1860029 (and d!2172212 b!6976773)))

(declare-fun lambda!398045 () Int)

(assert (=> bs!1860029 (not (= lambda!398045 lambda!398005))))

(declare-fun bs!1860030 () Bool)

(assert (= bs!1860030 (and d!2172212 d!2172192)))

(assert (=> bs!1860030 (not (= lambda!398045 lambda!398040))))

(assert (=> d!2172212 true))

(declare-fun order!27787 () Int)

(declare-fun dynLambda!26659 (Int Int) Int)

(assert (=> d!2172212 (< (dynLambda!26659 order!27787 lambda!398005) (dynLambda!26659 order!27787 lambda!398045))))

(declare-fun forall!16012 (List!66967 Int) Bool)

(assert (=> d!2172212 (= (exists!2876 lt!2479993 lambda!398005) (not (forall!16012 lt!2479993 lambda!398045)))))

(declare-fun bs!1860031 () Bool)

(assert (= bs!1860031 d!2172212))

(declare-fun m!7662184 () Bool)

(assert (=> bs!1860031 m!7662184))

(assert (=> b!6976773 d!2172212))

(declare-fun bs!1860032 () Bool)

(declare-fun d!2172214 () Bool)

(assert (= bs!1860032 (and d!2172214 b!6976770)))

(declare-fun lambda!398046 () Int)

(assert (=> bs!1860032 (= lambda!398046 lambda!398006)))

(declare-fun bs!1860033 () Bool)

(assert (= bs!1860033 (and d!2172214 d!2172182)))

(assert (=> bs!1860033 (= lambda!398046 lambda!398028)))

(declare-fun bs!1860034 () Bool)

(assert (= bs!1860034 (and d!2172214 d!2172188)))

(assert (=> bs!1860034 (= lambda!398046 lambda!398029)))

(assert (=> d!2172214 (= (inv!85710 setElem!47324) (forall!16009 (exprs!6636 setElem!47324) lambda!398046))))

(declare-fun bs!1860035 () Bool)

(assert (= bs!1860035 d!2172214))

(declare-fun m!7662186 () Bool)

(assert (=> bs!1860035 m!7662186))

(assert (=> setNonEmpty!47324 d!2172214))

(declare-fun b!6976875 () Bool)

(declare-fun e!4193044 () Bool)

(declare-fun tp!1927121 () Bool)

(assert (=> b!6976875 (= e!4193044 (and tp_is_empty!43505 tp!1927121))))

(assert (=> b!6976776 (= tp!1927081 e!4193044)))

(assert (= (and b!6976776 (is-Cons!66842 (t!380709 s!7408))) b!6976875))

(declare-fun b!6976880 () Bool)

(declare-fun e!4193047 () Bool)

(declare-fun tp!1927126 () Bool)

(declare-fun tp!1927127 () Bool)

(assert (=> b!6976880 (= e!4193047 (and tp!1927126 tp!1927127))))

(assert (=> b!6976772 (= tp!1927084 e!4193047)))

(assert (= (and b!6976772 (is-Cons!66841 (exprs!6636 c!142))) b!6976880))

(declare-fun b!6976881 () Bool)

(declare-fun e!4193048 () Bool)

(declare-fun tp!1927128 () Bool)

(declare-fun tp!1927129 () Bool)

(assert (=> b!6976881 (= e!4193048 (and tp!1927128 tp!1927129))))

(assert (=> b!6976774 (= tp!1927083 e!4193048)))

(assert (= (and b!6976774 (is-Cons!66841 (exprs!6636 ct2!306))) b!6976881))

(declare-fun condSetEmpty!47333 () Bool)

(assert (=> setNonEmpty!47324 (= condSetEmpty!47333 (= setRest!47324 (as set.empty (Set Context!12272))))))

(declare-fun setRes!47333 () Bool)

(assert (=> setNonEmpty!47324 (= tp!1927080 setRes!47333)))

(declare-fun setIsEmpty!47333 () Bool)

(assert (=> setIsEmpty!47333 setRes!47333))

(declare-fun setNonEmpty!47333 () Bool)

(declare-fun e!4193051 () Bool)

(declare-fun setElem!47333 () Context!12272)

(declare-fun tp!1927135 () Bool)

(assert (=> setNonEmpty!47333 (= setRes!47333 (and tp!1927135 (inv!85710 setElem!47333) e!4193051))))

(declare-fun setRest!47333 () (Set Context!12272))

(assert (=> setNonEmpty!47333 (= setRest!47324 (set.union (set.insert setElem!47333 (as set.empty (Set Context!12272))) setRest!47333))))

(declare-fun b!6976886 () Bool)

(declare-fun tp!1927134 () Bool)

(assert (=> b!6976886 (= e!4193051 tp!1927134)))

(assert (= (and setNonEmpty!47324 condSetEmpty!47333) setIsEmpty!47333))

(assert (= (and setNonEmpty!47324 (not condSetEmpty!47333)) setNonEmpty!47333))

(assert (= setNonEmpty!47333 b!6976886))

(declare-fun m!7662188 () Bool)

(assert (=> setNonEmpty!47333 m!7662188))

(declare-fun b!6976887 () Bool)

(declare-fun e!4193052 () Bool)

(declare-fun tp!1927136 () Bool)

(declare-fun tp!1927137 () Bool)

(assert (=> b!6976887 (= e!4193052 (and tp!1927136 tp!1927137))))

(assert (=> b!6976777 (= tp!1927082 e!4193052)))

(assert (= (and b!6976777 (is-Cons!66841 (exprs!6636 setElem!47324))) b!6976887))

(declare-fun b_lambda!261017 () Bool)

(assert (= b_lambda!261007 (or b!6976770 b_lambda!261017)))

(declare-fun bs!1860036 () Bool)

(declare-fun d!2172216 () Bool)

(assert (= bs!1860036 (and d!2172216 b!6976770)))

(declare-fun validRegex!8818 (Regex!17140) Bool)

(assert (=> bs!1860036 (= (dynLambda!26656 lambda!398006 (h!73289 (exprs!6636 c!142))) (validRegex!8818 (h!73289 (exprs!6636 c!142))))))

(declare-fun m!7662190 () Bool)

(assert (=> bs!1860036 m!7662190))

(assert (=> b!6976834 d!2172216))

(declare-fun b_lambda!261019 () Bool)

(assert (= b_lambda!261011 (or b!6976773 b_lambda!261019)))

(declare-fun bs!1860037 () Bool)

(declare-fun d!2172218 () Bool)

(assert (= bs!1860037 (and d!2172218 b!6976773)))

(assert (=> bs!1860037 (= (dynLambda!26658 lambda!398005 lt!2480024) (matchZipper!2680 (set.insert lt!2480024 (as set.empty (Set Context!12272))) s!7408))))

(declare-fun m!7662192 () Bool)

(assert (=> bs!1860037 m!7662192))

(assert (=> bs!1860037 m!7662192))

(declare-fun m!7662194 () Bool)

(assert (=> bs!1860037 m!7662194))

(assert (=> d!2172200 d!2172218))

(push 1)

(assert (not d!2172182))

(assert (not d!2172212))

(assert (not d!2172214))

(assert (not b!6976881))

(assert (not d!2172176))

(assert (not b!6976816))

(assert (not b!6976866))

(assert (not d!2172188))

(assert (not d!2172192))

(assert (not d!2172204))

(assert (not b_lambda!261017))

(assert (not bs!1860036))

(assert (not b_lambda!261019))

(assert (not bs!1860037))

(assert tp_is_empty!43505)

(assert (not b!6976887))

(assert (not b!6976880))

(assert (not b!6976875))

(assert (not b!6976886))

(assert (not b!6976835))

(assert (not b!6976817))

(assert (not b!6976867))

(assert (not d!2172172))

(assert (not setNonEmpty!47333))

(assert (not b!6976868))

(assert (not d!2172210))

(assert (not d!2172200))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

