; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!662358 () Bool)

(assert start!662358)

(declare-fun b!6860114 () Bool)

(assert (=> b!6860114 true))

(declare-fun b!6860130 () Bool)

(assert (=> b!6860130 true))

(declare-fun bs!1833294 () Bool)

(declare-fun b!6860119 () Bool)

(assert (= bs!1833294 (and b!6860119 b!6860114)))

(declare-fun lambda!388030 () Int)

(declare-fun lambda!388028 () Int)

(assert (=> bs!1833294 (not (= lambda!388030 lambda!388028))))

(declare-fun e!4136031 () Bool)

(declare-fun e!4136024 () Bool)

(assert (=> b!6860114 (= e!4136031 e!4136024)))

(declare-fun res!2799253 () Bool)

(assert (=> b!6860114 (=> res!2799253 e!4136024)))

(declare-fun lt!2457392 () Bool)

(assert (=> b!6860114 (= res!2799253 lt!2457392)))

(declare-datatypes ((C!33650 0))(
  ( (C!33651 (val!26527 Int)) )
))
(declare-datatypes ((Regex!16690 0))(
  ( (ElementMatch!16690 (c!1276936 C!33650)) (Concat!25535 (regOne!33892 Regex!16690) (regTwo!33892 Regex!16690)) (EmptyExpr!16690) (Star!16690 (reg!17019 Regex!16690)) (EmptyLang!16690) (Union!16690 (regOne!33893 Regex!16690) (regTwo!33893 Regex!16690)) )
))
(declare-datatypes ((List!66369 0))(
  ( (Nil!66245) (Cons!66245 (h!72693 Regex!16690) (t!380112 List!66369)) )
))
(declare-fun lt!2457393 () List!66369)

(declare-fun exists!2810 (List!66369 Int) Bool)

(assert (=> b!6860114 (= lt!2457392 (exists!2810 lt!2457393 lambda!388028))))

(declare-fun r!7292 () Regex!16690)

(declare-datatypes ((List!66370 0))(
  ( (Nil!66246) (Cons!66246 (h!72694 C!33650) (t!380113 List!66370)) )
))
(declare-fun s!2326 () List!66370)

(declare-datatypes ((Unit!160137 0))(
  ( (Unit!160138) )
))
(declare-fun lt!2457394 () Unit!160137)

(declare-fun matchRGenUnionSpec!329 (Regex!16690 List!66369 List!66370) Unit!160137)

(assert (=> b!6860114 (= lt!2457394 (matchRGenUnionSpec!329 r!7292 lt!2457393 s!2326))))

(declare-datatypes ((Context!12148 0))(
  ( (Context!12149 (exprs!6574 List!66369)) )
))
(declare-datatypes ((List!66371 0))(
  ( (Nil!66247) (Cons!66247 (h!72695 Context!12148) (t!380114 List!66371)) )
))
(declare-fun zl!343 () List!66371)

(declare-fun unfocusZipperList!2107 (List!66371) List!66369)

(assert (=> b!6860114 (= lt!2457393 (unfocusZipperList!2107 zl!343))))

(declare-fun b!6860115 () Bool)

(declare-fun res!2799256 () Bool)

(assert (=> b!6860115 (=> res!2799256 e!4136024)))

(declare-fun z!1189 () (Set Context!12148))

(declare-fun matchZipper!2656 ((Set Context!12148) List!66370) Bool)

(assert (=> b!6860115 (= res!2799256 (not (matchZipper!2656 z!1189 s!2326)))))

(declare-fun b!6860116 () Bool)

(declare-fun e!4136030 () Bool)

(declare-fun tp!1881248 () Bool)

(assert (=> b!6860116 (= e!4136030 tp!1881248)))

(declare-fun b!6860117 () Bool)

(declare-fun res!2799260 () Bool)

(assert (=> b!6860117 (=> res!2799260 e!4136031)))

(declare-fun isEmpty!38606 (List!66371) Bool)

(assert (=> b!6860117 (= res!2799260 (isEmpty!38606 (t!380114 zl!343)))))

(declare-fun setElem!47178 () Context!12148)

(declare-fun setNonEmpty!47178 () Bool)

(declare-fun setRes!47178 () Bool)

(declare-fun tp!1881244 () Bool)

(declare-fun inv!84973 (Context!12148) Bool)

(assert (=> setNonEmpty!47178 (= setRes!47178 (and tp!1881244 (inv!84973 setElem!47178) e!4136030))))

(declare-fun setRest!47178 () (Set Context!12148))

(assert (=> setNonEmpty!47178 (= z!1189 (set.union (set.insert setElem!47178 (as set.empty (Set Context!12148))) setRest!47178))))

(declare-fun b!6860118 () Bool)

(declare-fun res!2799251 () Bool)

(declare-fun e!4136029 () Bool)

(assert (=> b!6860118 (=> res!2799251 e!4136029)))

(declare-fun lt!2457391 () Context!12148)

(declare-fun contains!20348 (List!66371 Context!12148) Bool)

(assert (=> b!6860118 (= res!2799251 (not (contains!20348 zl!343 lt!2457391)))))

(declare-fun b!6860120 () Bool)

(declare-fun e!4136032 () Bool)

(declare-fun tp!1881253 () Bool)

(declare-fun e!4136027 () Bool)

(assert (=> b!6860120 (= e!4136027 (and (inv!84973 (h!72695 zl!343)) e!4136032 tp!1881253))))

(declare-fun setIsEmpty!47178 () Bool)

(assert (=> setIsEmpty!47178 setRes!47178))

(declare-fun b!6860121 () Bool)

(declare-fun e!4136026 () Bool)

(declare-fun tp!1881245 () Bool)

(assert (=> b!6860121 (= e!4136026 tp!1881245)))

(declare-fun b!6860122 () Bool)

(declare-fun res!2799254 () Bool)

(declare-fun e!4136033 () Bool)

(assert (=> b!6860122 (=> (not res!2799254) (not e!4136033))))

(declare-fun toList!10474 ((Set Context!12148)) List!66371)

(assert (=> b!6860122 (= res!2799254 (= (toList!10474 z!1189) zl!343))))

(declare-fun b!6860123 () Bool)

(declare-fun tp!1881252 () Bool)

(declare-fun tp!1881249 () Bool)

(assert (=> b!6860123 (= e!4136026 (and tp!1881252 tp!1881249))))

(declare-fun b!6860124 () Bool)

(declare-fun res!2799252 () Bool)

(assert (=> b!6860124 (=> res!2799252 e!4136031)))

(assert (=> b!6860124 (= res!2799252 (or (not (is-Cons!66247 zl!343)) (is-Nil!66246 s!2326) (not (= zl!343 (Cons!66247 (h!72695 zl!343) (t!380114 zl!343))))))))

(declare-fun b!6860125 () Bool)

(assert (=> b!6860125 (= e!4136033 (not e!4136031))))

(declare-fun res!2799257 () Bool)

(assert (=> b!6860125 (=> res!2799257 e!4136031)))

(declare-fun e!4136025 () Bool)

(assert (=> b!6860125 (= res!2799257 e!4136025)))

(declare-fun res!2799258 () Bool)

(assert (=> b!6860125 (=> (not res!2799258) (not e!4136025))))

(assert (=> b!6860125 (= res!2799258 (is-Cons!66247 zl!343))))

(declare-fun matchRSpec!3791 (Regex!16690 List!66370) Bool)

(assert (=> b!6860125 (= lt!2457392 (matchRSpec!3791 r!7292 s!2326))))

(declare-fun matchR!8873 (Regex!16690 List!66370) Bool)

(assert (=> b!6860125 (= lt!2457392 (matchR!8873 r!7292 s!2326))))

(declare-fun lt!2457396 () Unit!160137)

(declare-fun mainMatchTheorem!3791 (Regex!16690 List!66370) Unit!160137)

(assert (=> b!6860125 (= lt!2457396 (mainMatchTheorem!3791 r!7292 s!2326))))

(declare-fun b!6860126 () Bool)

(declare-fun res!2799261 () Bool)

(assert (=> b!6860126 (=> res!2799261 e!4136024)))

(assert (=> b!6860126 (= res!2799261 (exists!2810 lt!2457393 lambda!388028))))

(declare-fun b!6860127 () Bool)

(declare-fun tp!1881251 () Bool)

(assert (=> b!6860127 (= e!4136032 tp!1881251)))

(declare-fun b!6860128 () Bool)

(declare-fun e!4136023 () Bool)

(declare-fun tp_is_empty!42633 () Bool)

(declare-fun tp!1881246 () Bool)

(assert (=> b!6860128 (= e!4136023 (and tp_is_empty!42633 tp!1881246))))

(declare-fun b!6860129 () Bool)

(declare-fun res!2799255 () Bool)

(assert (=> b!6860129 (=> (not res!2799255) (not e!4136033))))

(declare-fun unfocusZipper!2432 (List!66371) Regex!16690)

(assert (=> b!6860129 (= res!2799255 (= r!7292 (unfocusZipper!2432 zl!343)))))

(declare-fun res!2799259 () Bool)

(assert (=> start!662358 (=> (not res!2799259) (not e!4136033))))

(declare-fun validRegex!8426 (Regex!16690) Bool)

(assert (=> start!662358 (= res!2799259 (validRegex!8426 r!7292))))

(assert (=> start!662358 e!4136033))

(assert (=> start!662358 e!4136026))

(declare-fun condSetEmpty!47178 () Bool)

(assert (=> start!662358 (= condSetEmpty!47178 (= z!1189 (as set.empty (Set Context!12148))))))

(assert (=> start!662358 setRes!47178))

(assert (=> start!662358 e!4136027))

(assert (=> start!662358 e!4136023))

(declare-fun e!4136028 () Bool)

(assert (=> b!6860119 (= e!4136028 e!4136029)))

(declare-fun res!2799263 () Bool)

(assert (=> b!6860119 (=> res!2799263 e!4136029)))

(declare-fun forall!15877 (List!66369 Int) Bool)

(assert (=> b!6860119 (= res!2799263 (not (forall!15877 (exprs!6574 lt!2457391) lambda!388030)))))

(assert (=> b!6860119 (forall!15877 (exprs!6574 lt!2457391) lambda!388030)))

(declare-fun lt!2457395 () Unit!160137)

(declare-fun lemmaContextForallValidExprs!65 (Context!12148 List!66369) Unit!160137)

(assert (=> b!6860119 (= lt!2457395 (lemmaContextForallValidExprs!65 lt!2457391 (exprs!6574 lt!2457391)))))

(declare-fun lambda!388029 () Int)

(declare-fun getWitness!969 (List!66371 Int) Context!12148)

(assert (=> b!6860119 (= lt!2457391 (getWitness!969 zl!343 lambda!388029))))

(assert (=> b!6860130 (= e!4136024 e!4136028)))

(declare-fun res!2799262 () Bool)

(assert (=> b!6860130 (=> res!2799262 e!4136028)))

(declare-fun exists!2811 (List!66371 Int) Bool)

(assert (=> b!6860130 (= res!2799262 (not (exists!2811 zl!343 lambda!388029)))))

(assert (=> b!6860130 (exists!2811 zl!343 lambda!388029)))

(declare-fun lt!2457397 () Unit!160137)

(declare-fun lemmaZipperMatchesExistsMatchingContext!89 (List!66371 List!66370) Unit!160137)

(assert (=> b!6860130 (= lt!2457397 (lemmaZipperMatchesExistsMatchingContext!89 zl!343 s!2326))))

(declare-fun b!6860131 () Bool)

(assert (=> b!6860131 (= e!4136025 (isEmpty!38606 (t!380114 zl!343)))))

(declare-fun b!6860132 () Bool)

(declare-fun size!40712 (List!66371) Int)

(assert (=> b!6860132 (= e!4136029 (> (size!40712 zl!343) 1))))

(declare-fun b!6860133 () Bool)

(declare-fun tp!1881250 () Bool)

(declare-fun tp!1881247 () Bool)

(assert (=> b!6860133 (= e!4136026 (and tp!1881250 tp!1881247))))

(declare-fun b!6860134 () Bool)

(assert (=> b!6860134 (= e!4136026 tp_is_empty!42633)))

(assert (= (and start!662358 res!2799259) b!6860122))

(assert (= (and b!6860122 res!2799254) b!6860129))

(assert (= (and b!6860129 res!2799255) b!6860125))

(assert (= (and b!6860125 res!2799258) b!6860131))

(assert (= (and b!6860125 (not res!2799257)) b!6860124))

(assert (= (and b!6860124 (not res!2799252)) b!6860117))

(assert (= (and b!6860117 (not res!2799260)) b!6860114))

(assert (= (and b!6860114 (not res!2799253)) b!6860126))

(assert (= (and b!6860126 (not res!2799261)) b!6860115))

(assert (= (and b!6860115 (not res!2799256)) b!6860130))

(assert (= (and b!6860130 (not res!2799262)) b!6860119))

(assert (= (and b!6860119 (not res!2799263)) b!6860118))

(assert (= (and b!6860118 (not res!2799251)) b!6860132))

(assert (= (and start!662358 (is-ElementMatch!16690 r!7292)) b!6860134))

(assert (= (and start!662358 (is-Concat!25535 r!7292)) b!6860133))

(assert (= (and start!662358 (is-Star!16690 r!7292)) b!6860121))

(assert (= (and start!662358 (is-Union!16690 r!7292)) b!6860123))

(assert (= (and start!662358 condSetEmpty!47178) setIsEmpty!47178))

(assert (= (and start!662358 (not condSetEmpty!47178)) setNonEmpty!47178))

(assert (= setNonEmpty!47178 b!6860116))

(assert (= b!6860120 b!6860127))

(assert (= (and start!662358 (is-Cons!66247 zl!343)) b!6860120))

(assert (= (and start!662358 (is-Cons!66246 s!2326)) b!6860128))

(declare-fun m!7594888 () Bool)

(assert (=> start!662358 m!7594888))

(declare-fun m!7594890 () Bool)

(assert (=> b!6860131 m!7594890))

(declare-fun m!7594892 () Bool)

(assert (=> setNonEmpty!47178 m!7594892))

(declare-fun m!7594894 () Bool)

(assert (=> b!6860120 m!7594894))

(declare-fun m!7594896 () Bool)

(assert (=> b!6860132 m!7594896))

(declare-fun m!7594898 () Bool)

(assert (=> b!6860129 m!7594898))

(declare-fun m!7594900 () Bool)

(assert (=> b!6860114 m!7594900))

(declare-fun m!7594902 () Bool)

(assert (=> b!6860114 m!7594902))

(declare-fun m!7594904 () Bool)

(assert (=> b!6860114 m!7594904))

(declare-fun m!7594906 () Bool)

(assert (=> b!6860130 m!7594906))

(assert (=> b!6860130 m!7594906))

(declare-fun m!7594908 () Bool)

(assert (=> b!6860130 m!7594908))

(declare-fun m!7594910 () Bool)

(assert (=> b!6860122 m!7594910))

(declare-fun m!7594912 () Bool)

(assert (=> b!6860119 m!7594912))

(assert (=> b!6860119 m!7594912))

(declare-fun m!7594914 () Bool)

(assert (=> b!6860119 m!7594914))

(declare-fun m!7594916 () Bool)

(assert (=> b!6860119 m!7594916))

(assert (=> b!6860126 m!7594900))

(declare-fun m!7594918 () Bool)

(assert (=> b!6860118 m!7594918))

(declare-fun m!7594920 () Bool)

(assert (=> b!6860125 m!7594920))

(declare-fun m!7594922 () Bool)

(assert (=> b!6860125 m!7594922))

(declare-fun m!7594924 () Bool)

(assert (=> b!6860125 m!7594924))

(declare-fun m!7594926 () Bool)

(assert (=> b!6860115 m!7594926))

(assert (=> b!6860117 m!7594890))

(push 1)

(assert (not b!6860131))

(assert (not b!6860114))

(assert (not b!6860132))

(assert (not b!6860130))

(assert (not b!6860133))

(assert (not b!6860118))

(assert (not b!6860116))

(assert (not b!6860115))

(assert (not b!6860121))

(assert (not b!6860126))

(assert tp_is_empty!42633)

(assert (not start!662358))

(assert (not b!6860129))

(assert (not b!6860117))

(assert (not b!6860125))

(assert (not b!6860127))

(assert (not b!6860128))

(assert (not b!6860120))

(assert (not b!6860123))

(assert (not b!6860119))

(assert (not b!6860122))

(assert (not setNonEmpty!47178))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6860248 () Bool)

(assert (=> b!6860248 true))

(assert (=> b!6860248 true))

(declare-fun bs!1833296 () Bool)

(declare-fun b!6860247 () Bool)

(assert (= bs!1833296 (and b!6860247 b!6860248)))

(declare-fun lambda!388053 () Int)

(declare-fun lambda!388052 () Int)

(assert (=> bs!1833296 (not (= lambda!388053 lambda!388052))))

(assert (=> b!6860247 true))

(assert (=> b!6860247 true))

(declare-fun bm!624839 () Bool)

(declare-fun call!624845 () Bool)

(declare-fun isEmpty!38608 (List!66370) Bool)

(assert (=> bm!624839 (= call!624845 (isEmpty!38608 s!2326))))

(declare-fun b!6860242 () Bool)

(declare-fun e!4136090 () Bool)

(declare-fun e!4136093 () Bool)

(assert (=> b!6860242 (= e!4136090 e!4136093)))

(declare-fun res!2799325 () Bool)

(assert (=> b!6860242 (= res!2799325 (not (is-EmptyLang!16690 r!7292)))))

(assert (=> b!6860242 (=> (not res!2799325) (not e!4136093))))

(declare-fun b!6860243 () Bool)

(declare-fun res!2799324 () Bool)

(declare-fun e!4136091 () Bool)

(assert (=> b!6860243 (=> res!2799324 e!4136091)))

(assert (=> b!6860243 (= res!2799324 call!624845)))

(declare-fun e!4136094 () Bool)

(assert (=> b!6860243 (= e!4136094 e!4136091)))

(declare-fun b!6860244 () Bool)

(assert (=> b!6860244 (= e!4136090 call!624845)))

(declare-fun b!6860245 () Bool)

(declare-fun e!4136089 () Bool)

(assert (=> b!6860245 (= e!4136089 (= s!2326 (Cons!66246 (c!1276936 r!7292) Nil!66246)))))

(declare-fun b!6860246 () Bool)

(declare-fun e!4136092 () Bool)

(assert (=> b!6860246 (= e!4136092 (matchRSpec!3791 (regTwo!33893 r!7292) s!2326))))

(declare-fun call!624844 () Bool)

(assert (=> b!6860247 (= e!4136094 call!624844)))

(declare-fun d!2155423 () Bool)

(declare-fun c!1276950 () Bool)

(assert (=> d!2155423 (= c!1276950 (is-EmptyExpr!16690 r!7292))))

(assert (=> d!2155423 (= (matchRSpec!3791 r!7292 s!2326) e!4136090)))

(assert (=> b!6860248 (= e!4136091 call!624844)))

(declare-fun b!6860249 () Bool)

(declare-fun e!4136095 () Bool)

(assert (=> b!6860249 (= e!4136095 e!4136092)))

(declare-fun res!2799323 () Bool)

(assert (=> b!6860249 (= res!2799323 (matchRSpec!3791 (regOne!33893 r!7292) s!2326))))

(assert (=> b!6860249 (=> res!2799323 e!4136092)))

(declare-fun c!1276949 () Bool)

(declare-fun bm!624840 () Bool)

(declare-fun Exists!3750 (Int) Bool)

(assert (=> bm!624840 (= call!624844 (Exists!3750 (ite c!1276949 lambda!388052 lambda!388053)))))

(declare-fun b!6860250 () Bool)

(assert (=> b!6860250 (= e!4136095 e!4136094)))

(assert (=> b!6860250 (= c!1276949 (is-Star!16690 r!7292))))

(declare-fun b!6860251 () Bool)

(declare-fun c!1276951 () Bool)

(assert (=> b!6860251 (= c!1276951 (is-Union!16690 r!7292))))

(assert (=> b!6860251 (= e!4136089 e!4136095)))

(declare-fun b!6860252 () Bool)

(declare-fun c!1276948 () Bool)

(assert (=> b!6860252 (= c!1276948 (is-ElementMatch!16690 r!7292))))

(assert (=> b!6860252 (= e!4136093 e!4136089)))

(assert (= (and d!2155423 c!1276950) b!6860244))

(assert (= (and d!2155423 (not c!1276950)) b!6860242))

(assert (= (and b!6860242 res!2799325) b!6860252))

(assert (= (and b!6860252 c!1276948) b!6860245))

(assert (= (and b!6860252 (not c!1276948)) b!6860251))

(assert (= (and b!6860251 c!1276951) b!6860249))

(assert (= (and b!6860251 (not c!1276951)) b!6860250))

(assert (= (and b!6860249 (not res!2799323)) b!6860246))

(assert (= (and b!6860250 c!1276949) b!6860243))

(assert (= (and b!6860250 (not c!1276949)) b!6860247))

(assert (= (and b!6860243 (not res!2799324)) b!6860248))

(assert (= (or b!6860248 b!6860247) bm!624840))

(assert (= (or b!6860244 b!6860243) bm!624839))

(declare-fun m!7594968 () Bool)

(assert (=> bm!624839 m!7594968))

(declare-fun m!7594970 () Bool)

(assert (=> b!6860246 m!7594970))

(declare-fun m!7594972 () Bool)

(assert (=> b!6860249 m!7594972))

(declare-fun m!7594974 () Bool)

(assert (=> bm!624840 m!7594974))

(assert (=> b!6860125 d!2155423))

(declare-fun b!6860291 () Bool)

(declare-fun res!2799352 () Bool)

(declare-fun e!4136119 () Bool)

(assert (=> b!6860291 (=> res!2799352 e!4136119)))

(declare-fun tail!12822 (List!66370) List!66370)

(assert (=> b!6860291 (= res!2799352 (not (isEmpty!38608 (tail!12822 s!2326))))))

(declare-fun b!6860292 () Bool)

(declare-fun e!4136118 () Bool)

(declare-fun nullable!6651 (Regex!16690) Bool)

(assert (=> b!6860292 (= e!4136118 (nullable!6651 r!7292))))

(declare-fun b!6860293 () Bool)

(declare-fun res!2799353 () Bool)

(declare-fun e!4136115 () Bool)

(assert (=> b!6860293 (=> res!2799353 e!4136115)))

(declare-fun e!4136116 () Bool)

(assert (=> b!6860293 (= res!2799353 e!4136116)))

(declare-fun res!2799351 () Bool)

(assert (=> b!6860293 (=> (not res!2799351) (not e!4136116))))

(declare-fun lt!2457421 () Bool)

(assert (=> b!6860293 (= res!2799351 lt!2457421)))

(declare-fun b!6860294 () Bool)

(declare-fun res!2799348 () Bool)

(assert (=> b!6860294 (=> (not res!2799348) (not e!4136116))))

(assert (=> b!6860294 (= res!2799348 (isEmpty!38608 (tail!12822 s!2326)))))

(declare-fun b!6860296 () Bool)

(declare-fun e!4136117 () Bool)

(declare-fun call!624848 () Bool)

(assert (=> b!6860296 (= e!4136117 (= lt!2457421 call!624848))))

(declare-fun b!6860297 () Bool)

(declare-fun res!2799349 () Bool)

(assert (=> b!6860297 (=> (not res!2799349) (not e!4136116))))

(assert (=> b!6860297 (= res!2799349 (not call!624848))))

(declare-fun b!6860298 () Bool)

(declare-fun e!4136114 () Bool)

(assert (=> b!6860298 (= e!4136115 e!4136114)))

(declare-fun res!2799350 () Bool)

(assert (=> b!6860298 (=> (not res!2799350) (not e!4136114))))

(assert (=> b!6860298 (= res!2799350 (not lt!2457421))))

(declare-fun b!6860299 () Bool)

(declare-fun e!4136120 () Bool)

(assert (=> b!6860299 (= e!4136117 e!4136120)))

(declare-fun c!1276960 () Bool)

(assert (=> b!6860299 (= c!1276960 (is-EmptyLang!16690 r!7292))))

(declare-fun b!6860300 () Bool)

(declare-fun head!13759 (List!66370) C!33650)

(assert (=> b!6860300 (= e!4136116 (= (head!13759 s!2326) (c!1276936 r!7292)))))

(declare-fun b!6860301 () Bool)

(declare-fun res!2799347 () Bool)

(assert (=> b!6860301 (=> res!2799347 e!4136115)))

(assert (=> b!6860301 (= res!2799347 (not (is-ElementMatch!16690 r!7292)))))

(assert (=> b!6860301 (= e!4136120 e!4136115)))

(declare-fun d!2155425 () Bool)

(assert (=> d!2155425 e!4136117))

(declare-fun c!1276958 () Bool)

(assert (=> d!2155425 (= c!1276958 (is-EmptyExpr!16690 r!7292))))

(assert (=> d!2155425 (= lt!2457421 e!4136118)))

(declare-fun c!1276959 () Bool)

(assert (=> d!2155425 (= c!1276959 (isEmpty!38608 s!2326))))

(assert (=> d!2155425 (validRegex!8426 r!7292)))

(assert (=> d!2155425 (= (matchR!8873 r!7292 s!2326) lt!2457421)))

(declare-fun b!6860295 () Bool)

(assert (=> b!6860295 (= e!4136114 e!4136119)))

(declare-fun res!2799346 () Bool)

(assert (=> b!6860295 (=> res!2799346 e!4136119)))

(assert (=> b!6860295 (= res!2799346 call!624848)))

(declare-fun b!6860302 () Bool)

(declare-fun derivativeStep!5333 (Regex!16690 C!33650) Regex!16690)

(assert (=> b!6860302 (= e!4136118 (matchR!8873 (derivativeStep!5333 r!7292 (head!13759 s!2326)) (tail!12822 s!2326)))))

(declare-fun bm!624843 () Bool)

(assert (=> bm!624843 (= call!624848 (isEmpty!38608 s!2326))))

(declare-fun b!6860303 () Bool)

(assert (=> b!6860303 (= e!4136120 (not lt!2457421))))

(declare-fun b!6860304 () Bool)

(assert (=> b!6860304 (= e!4136119 (not (= (head!13759 s!2326) (c!1276936 r!7292))))))

(assert (= (and d!2155425 c!1276959) b!6860292))

(assert (= (and d!2155425 (not c!1276959)) b!6860302))

(assert (= (and d!2155425 c!1276958) b!6860296))

(assert (= (and d!2155425 (not c!1276958)) b!6860299))

(assert (= (and b!6860299 c!1276960) b!6860303))

(assert (= (and b!6860299 (not c!1276960)) b!6860301))

(assert (= (and b!6860301 (not res!2799347)) b!6860293))

(assert (= (and b!6860293 res!2799351) b!6860297))

(assert (= (and b!6860297 res!2799349) b!6860294))

(assert (= (and b!6860294 res!2799348) b!6860300))

(assert (= (and b!6860293 (not res!2799353)) b!6860298))

(assert (= (and b!6860298 res!2799350) b!6860295))

(assert (= (and b!6860295 (not res!2799346)) b!6860291))

(assert (= (and b!6860291 (not res!2799352)) b!6860304))

(assert (= (or b!6860296 b!6860295 b!6860297) bm!624843))

(declare-fun m!7594978 () Bool)

(assert (=> b!6860300 m!7594978))

(declare-fun m!7594980 () Bool)

(assert (=> b!6860294 m!7594980))

(assert (=> b!6860294 m!7594980))

(declare-fun m!7594982 () Bool)

(assert (=> b!6860294 m!7594982))

(declare-fun m!7594984 () Bool)

(assert (=> b!6860292 m!7594984))

(assert (=> b!6860304 m!7594978))

(assert (=> b!6860302 m!7594978))

(assert (=> b!6860302 m!7594978))

(declare-fun m!7594986 () Bool)

(assert (=> b!6860302 m!7594986))

(assert (=> b!6860302 m!7594980))

(assert (=> b!6860302 m!7594986))

(assert (=> b!6860302 m!7594980))

(declare-fun m!7594988 () Bool)

(assert (=> b!6860302 m!7594988))

(assert (=> d!2155425 m!7594968))

(assert (=> d!2155425 m!7594888))

(assert (=> b!6860291 m!7594980))

(assert (=> b!6860291 m!7594980))

(assert (=> b!6860291 m!7594982))

(assert (=> bm!624843 m!7594968))

(assert (=> b!6860125 d!2155425))

(declare-fun d!2155431 () Bool)

(assert (=> d!2155431 (= (matchR!8873 r!7292 s!2326) (matchRSpec!3791 r!7292 s!2326))))

(declare-fun lt!2457424 () Unit!160137)

(declare-fun choose!51128 (Regex!16690 List!66370) Unit!160137)

(assert (=> d!2155431 (= lt!2457424 (choose!51128 r!7292 s!2326))))

(assert (=> d!2155431 (validRegex!8426 r!7292)))

(assert (=> d!2155431 (= (mainMatchTheorem!3791 r!7292 s!2326) lt!2457424)))

(declare-fun bs!1833300 () Bool)

(assert (= bs!1833300 d!2155431))

(assert (=> bs!1833300 m!7594922))

(assert (=> bs!1833300 m!7594920))

(declare-fun m!7594994 () Bool)

(assert (=> bs!1833300 m!7594994))

(assert (=> bs!1833300 m!7594888))

(assert (=> b!6860125 d!2155431))

(declare-fun d!2155435 () Bool)

(assert (=> d!2155435 (= (isEmpty!38606 (t!380114 zl!343)) (is-Nil!66247 (t!380114 zl!343)))))

(assert (=> b!6860117 d!2155435))

(declare-fun bs!1833301 () Bool)

(declare-fun d!2155437 () Bool)

(assert (= bs!1833301 (and d!2155437 b!6860114)))

(declare-fun lambda!388059 () Int)

(assert (=> bs!1833301 (not (= lambda!388059 lambda!388028))))

(declare-fun bs!1833302 () Bool)

(assert (= bs!1833302 (and d!2155437 b!6860119)))

(assert (=> bs!1833302 (not (= lambda!388059 lambda!388030))))

(assert (=> d!2155437 true))

(declare-fun order!27703 () Int)

(declare-fun dynLambda!26501 (Int Int) Int)

(assert (=> d!2155437 (< (dynLambda!26501 order!27703 lambda!388028) (dynLambda!26501 order!27703 lambda!388059))))

(assert (=> d!2155437 (= (exists!2810 lt!2457393 lambda!388028) (not (forall!15877 lt!2457393 lambda!388059)))))

(declare-fun bs!1833303 () Bool)

(assert (= bs!1833303 d!2155437))

(declare-fun m!7594996 () Bool)

(assert (=> bs!1833303 m!7594996))

(assert (=> b!6860126 d!2155437))

(declare-fun d!2155439 () Bool)

(declare-fun lt!2457430 () Int)

(assert (=> d!2155439 (>= lt!2457430 0)))

(declare-fun e!4136125 () Int)

(assert (=> d!2155439 (= lt!2457430 e!4136125)))

(declare-fun c!1276964 () Bool)

(assert (=> d!2155439 (= c!1276964 (is-Nil!66247 zl!343))))

(assert (=> d!2155439 (= (size!40712 zl!343) lt!2457430)))

(declare-fun b!6860313 () Bool)

(assert (=> b!6860313 (= e!4136125 0)))

(declare-fun b!6860314 () Bool)

(assert (=> b!6860314 (= e!4136125 (+ 1 (size!40712 (t!380114 zl!343))))))

(assert (= (and d!2155439 c!1276964) b!6860313))

(assert (= (and d!2155439 (not c!1276964)) b!6860314))

(declare-fun m!7594998 () Bool)

(assert (=> b!6860314 m!7594998))

(assert (=> b!6860132 d!2155439))

(declare-fun d!2155441 () Bool)

(declare-fun e!4136128 () Bool)

(assert (=> d!2155441 e!4136128))

(declare-fun res!2799358 () Bool)

(assert (=> d!2155441 (=> (not res!2799358) (not e!4136128))))

(declare-fun lt!2457433 () List!66371)

(declare-fun noDuplicate!2454 (List!66371) Bool)

(assert (=> d!2155441 (= res!2799358 (noDuplicate!2454 lt!2457433))))

(declare-fun choose!51129 ((Set Context!12148)) List!66371)

(assert (=> d!2155441 (= lt!2457433 (choose!51129 z!1189))))

(assert (=> d!2155441 (= (toList!10474 z!1189) lt!2457433)))

(declare-fun b!6860317 () Bool)

(declare-fun content!13003 (List!66371) (Set Context!12148))

(assert (=> b!6860317 (= e!4136128 (= (content!13003 lt!2457433) z!1189))))

(assert (= (and d!2155441 res!2799358) b!6860317))

(declare-fun m!7595004 () Bool)

(assert (=> d!2155441 m!7595004))

(declare-fun m!7595006 () Bool)

(assert (=> d!2155441 m!7595006))

(declare-fun m!7595008 () Bool)

(assert (=> b!6860317 m!7595008))

(assert (=> b!6860122 d!2155441))

(assert (=> b!6860114 d!2155437))

(declare-fun bs!1833308 () Bool)

(declare-fun d!2155445 () Bool)

(assert (= bs!1833308 (and d!2155445 b!6860114)))

(declare-fun lambda!388067 () Int)

(assert (=> bs!1833308 (not (= lambda!388067 lambda!388028))))

(declare-fun bs!1833309 () Bool)

(assert (= bs!1833309 (and d!2155445 b!6860119)))

(assert (=> bs!1833309 (= lambda!388067 lambda!388030)))

(declare-fun bs!1833310 () Bool)

(assert (= bs!1833310 (and d!2155445 d!2155437)))

(assert (=> bs!1833310 (not (= lambda!388067 lambda!388059))))

(declare-fun lambda!388068 () Int)

(assert (=> bs!1833308 (= lambda!388068 lambda!388028)))

(assert (=> bs!1833309 (not (= lambda!388068 lambda!388030))))

(assert (=> bs!1833310 (not (= lambda!388068 lambda!388059))))

(declare-fun bs!1833311 () Bool)

(assert (= bs!1833311 d!2155445))

(assert (=> bs!1833311 (not (= lambda!388068 lambda!388067))))

(assert (=> d!2155445 true))

(assert (=> d!2155445 (= (matchR!8873 r!7292 s!2326) (exists!2810 lt!2457393 lambda!388068))))

(declare-fun lt!2457436 () Unit!160137)

(declare-fun choose!51130 (Regex!16690 List!66369 List!66370) Unit!160137)

(assert (=> d!2155445 (= lt!2457436 (choose!51130 r!7292 lt!2457393 s!2326))))

(assert (=> d!2155445 (forall!15877 lt!2457393 lambda!388067)))

(assert (=> d!2155445 (= (matchRGenUnionSpec!329 r!7292 lt!2457393 s!2326) lt!2457436)))

(assert (=> bs!1833311 m!7594922))

(declare-fun m!7595010 () Bool)

(assert (=> bs!1833311 m!7595010))

(declare-fun m!7595012 () Bool)

(assert (=> bs!1833311 m!7595012))

(declare-fun m!7595014 () Bool)

(assert (=> bs!1833311 m!7595014))

(assert (=> b!6860114 d!2155445))

(declare-fun bs!1833312 () Bool)

(declare-fun d!2155447 () Bool)

(assert (= bs!1833312 (and d!2155447 b!6860119)))

(declare-fun lambda!388071 () Int)

(assert (=> bs!1833312 (= lambda!388071 lambda!388030)))

(declare-fun bs!1833313 () Bool)

(assert (= bs!1833313 (and d!2155447 d!2155445)))

(assert (=> bs!1833313 (not (= lambda!388071 lambda!388068))))

(declare-fun bs!1833314 () Bool)

(assert (= bs!1833314 (and d!2155447 d!2155437)))

(assert (=> bs!1833314 (not (= lambda!388071 lambda!388059))))

(assert (=> bs!1833313 (= lambda!388071 lambda!388067)))

(declare-fun bs!1833315 () Bool)

(assert (= bs!1833315 (and d!2155447 b!6860114)))

(assert (=> bs!1833315 (not (= lambda!388071 lambda!388028))))

(declare-fun lt!2457443 () List!66369)

(assert (=> d!2155447 (forall!15877 lt!2457443 lambda!388071)))

(declare-fun e!4136141 () List!66369)

(assert (=> d!2155447 (= lt!2457443 e!4136141)))

(declare-fun c!1276971 () Bool)

(assert (=> d!2155447 (= c!1276971 (is-Cons!66247 zl!343))))

(assert (=> d!2155447 (= (unfocusZipperList!2107 zl!343) lt!2457443)))

(declare-fun b!6860336 () Bool)

(declare-fun generalisedConcat!2278 (List!66369) Regex!16690)

(assert (=> b!6860336 (= e!4136141 (Cons!66245 (generalisedConcat!2278 (exprs!6574 (h!72695 zl!343))) (unfocusZipperList!2107 (t!380114 zl!343))))))

(declare-fun b!6860337 () Bool)

(assert (=> b!6860337 (= e!4136141 Nil!66245)))

(assert (= (and d!2155447 c!1276971) b!6860336))

(assert (= (and d!2155447 (not c!1276971)) b!6860337))

(declare-fun m!7595016 () Bool)

(assert (=> d!2155447 m!7595016))

(declare-fun m!7595018 () Bool)

(assert (=> b!6860336 m!7595018))

(declare-fun m!7595020 () Bool)

(assert (=> b!6860336 m!7595020))

(assert (=> b!6860114 d!2155447))

(declare-fun d!2155449 () Bool)

(declare-fun c!1276976 () Bool)

(assert (=> d!2155449 (= c!1276976 (isEmpty!38608 s!2326))))

(declare-fun e!4136148 () Bool)

(assert (=> d!2155449 (= (matchZipper!2656 z!1189 s!2326) e!4136148)))

(declare-fun b!6860348 () Bool)

(declare-fun nullableZipper!2364 ((Set Context!12148)) Bool)

(assert (=> b!6860348 (= e!4136148 (nullableZipper!2364 z!1189))))

(declare-fun b!6860349 () Bool)

(declare-fun derivationStepZipper!2611 ((Set Context!12148) C!33650) (Set Context!12148))

(assert (=> b!6860349 (= e!4136148 (matchZipper!2656 (derivationStepZipper!2611 z!1189 (head!13759 s!2326)) (tail!12822 s!2326)))))

(assert (= (and d!2155449 c!1276976) b!6860348))

(assert (= (and d!2155449 (not c!1276976)) b!6860349))

(assert (=> d!2155449 m!7594968))

(declare-fun m!7595032 () Bool)

(assert (=> b!6860348 m!7595032))

(assert (=> b!6860349 m!7594978))

(assert (=> b!6860349 m!7594978))

(declare-fun m!7595034 () Bool)

(assert (=> b!6860349 m!7595034))

(assert (=> b!6860349 m!7594980))

(assert (=> b!6860349 m!7595034))

(assert (=> b!6860349 m!7594980))

(declare-fun m!7595036 () Bool)

(assert (=> b!6860349 m!7595036))

(assert (=> b!6860115 d!2155449))

(declare-fun bs!1833316 () Bool)

(declare-fun d!2155453 () Bool)

(assert (= bs!1833316 (and d!2155453 b!6860119)))

(declare-fun lambda!388074 () Int)

(assert (=> bs!1833316 (= lambda!388074 lambda!388030)))

(declare-fun bs!1833317 () Bool)

(assert (= bs!1833317 (and d!2155453 d!2155445)))

(assert (=> bs!1833317 (not (= lambda!388074 lambda!388068))))

(declare-fun bs!1833318 () Bool)

(assert (= bs!1833318 (and d!2155453 d!2155437)))

(assert (=> bs!1833318 (not (= lambda!388074 lambda!388059))))

(assert (=> bs!1833317 (= lambda!388074 lambda!388067)))

(declare-fun bs!1833319 () Bool)

(assert (= bs!1833319 (and d!2155453 b!6860114)))

(assert (=> bs!1833319 (not (= lambda!388074 lambda!388028))))

(declare-fun bs!1833320 () Bool)

(assert (= bs!1833320 (and d!2155453 d!2155447)))

(assert (=> bs!1833320 (= lambda!388074 lambda!388071)))

(assert (=> d!2155453 (= (inv!84973 (h!72695 zl!343)) (forall!15877 (exprs!6574 (h!72695 zl!343)) lambda!388074))))

(declare-fun bs!1833321 () Bool)

(assert (= bs!1833321 d!2155453))

(declare-fun m!7595038 () Bool)

(assert (=> bs!1833321 m!7595038))

(assert (=> b!6860120 d!2155453))

(declare-fun bs!1833322 () Bool)

(declare-fun d!2155457 () Bool)

(assert (= bs!1833322 (and d!2155457 b!6860130)))

(declare-fun lambda!388077 () Int)

(assert (=> bs!1833322 (not (= lambda!388077 lambda!388029))))

(assert (=> d!2155457 true))

(declare-fun order!27705 () Int)

(declare-fun dynLambda!26502 (Int Int) Int)

(assert (=> d!2155457 (< (dynLambda!26502 order!27705 lambda!388029) (dynLambda!26502 order!27705 lambda!388077))))

(declare-fun forall!15879 (List!66371 Int) Bool)

(assert (=> d!2155457 (= (exists!2811 zl!343 lambda!388029) (not (forall!15879 zl!343 lambda!388077)))))

(declare-fun bs!1833323 () Bool)

(assert (= bs!1833323 d!2155457))

(declare-fun m!7595040 () Bool)

(assert (=> bs!1833323 m!7595040))

(assert (=> b!6860130 d!2155457))

(declare-fun bs!1833324 () Bool)

(declare-fun d!2155459 () Bool)

(assert (= bs!1833324 (and d!2155459 b!6860130)))

(declare-fun lambda!388080 () Int)

(assert (=> bs!1833324 (= lambda!388080 lambda!388029)))

(declare-fun bs!1833325 () Bool)

(assert (= bs!1833325 (and d!2155459 d!2155457)))

(assert (=> bs!1833325 (not (= lambda!388080 lambda!388077))))

(assert (=> d!2155459 true))

(assert (=> d!2155459 (exists!2811 zl!343 lambda!388080)))

(declare-fun lt!2457448 () Unit!160137)

(declare-fun choose!51131 (List!66371 List!66370) Unit!160137)

(assert (=> d!2155459 (= lt!2457448 (choose!51131 zl!343 s!2326))))

(assert (=> d!2155459 (matchZipper!2656 (content!13003 zl!343) s!2326)))

(assert (=> d!2155459 (= (lemmaZipperMatchesExistsMatchingContext!89 zl!343 s!2326) lt!2457448)))

(declare-fun bs!1833326 () Bool)

(assert (= bs!1833326 d!2155459))

(declare-fun m!7595042 () Bool)

(assert (=> bs!1833326 m!7595042))

(declare-fun m!7595044 () Bool)

(assert (=> bs!1833326 m!7595044))

(declare-fun m!7595046 () Bool)

(assert (=> bs!1833326 m!7595046))

(assert (=> bs!1833326 m!7595046))

(declare-fun m!7595048 () Bool)

(assert (=> bs!1833326 m!7595048))

(assert (=> b!6860130 d!2155459))

(assert (=> b!6860131 d!2155435))

(declare-fun bs!1833327 () Bool)

(declare-fun d!2155461 () Bool)

(assert (= bs!1833327 (and d!2155461 b!6860119)))

(declare-fun lambda!388081 () Int)

(assert (=> bs!1833327 (= lambda!388081 lambda!388030)))

(declare-fun bs!1833328 () Bool)

(assert (= bs!1833328 (and d!2155461 d!2155445)))

(assert (=> bs!1833328 (not (= lambda!388081 lambda!388068))))

(declare-fun bs!1833329 () Bool)

(assert (= bs!1833329 (and d!2155461 d!2155437)))

(assert (=> bs!1833329 (not (= lambda!388081 lambda!388059))))

(assert (=> bs!1833328 (= lambda!388081 lambda!388067)))

(declare-fun bs!1833330 () Bool)

(assert (= bs!1833330 (and d!2155461 b!6860114)))

(assert (=> bs!1833330 (not (= lambda!388081 lambda!388028))))

(declare-fun bs!1833331 () Bool)

(assert (= bs!1833331 (and d!2155461 d!2155453)))

(assert (=> bs!1833331 (= lambda!388081 lambda!388074)))

(declare-fun bs!1833332 () Bool)

(assert (= bs!1833332 (and d!2155461 d!2155447)))

(assert (=> bs!1833332 (= lambda!388081 lambda!388071)))

(assert (=> d!2155461 (= (inv!84973 setElem!47178) (forall!15877 (exprs!6574 setElem!47178) lambda!388081))))

(declare-fun bs!1833333 () Bool)

(assert (= bs!1833333 d!2155461))

(declare-fun m!7595050 () Bool)

(assert (=> bs!1833333 m!7595050))

(assert (=> setNonEmpty!47178 d!2155461))

(declare-fun d!2155463 () Bool)

(declare-fun lt!2457451 () Bool)

(assert (=> d!2155463 (= lt!2457451 (set.member lt!2457391 (content!13003 zl!343)))))

(declare-fun e!4136168 () Bool)

(assert (=> d!2155463 (= lt!2457451 e!4136168)))

(declare-fun res!2799381 () Bool)

(assert (=> d!2155463 (=> (not res!2799381) (not e!4136168))))

(assert (=> d!2155463 (= res!2799381 (is-Cons!66247 zl!343))))

(assert (=> d!2155463 (= (contains!20348 zl!343 lt!2457391) lt!2457451)))

(declare-fun b!6860374 () Bool)

(declare-fun e!4136167 () Bool)

(assert (=> b!6860374 (= e!4136168 e!4136167)))

(declare-fun res!2799382 () Bool)

(assert (=> b!6860374 (=> res!2799382 e!4136167)))

(assert (=> b!6860374 (= res!2799382 (= (h!72695 zl!343) lt!2457391))))

(declare-fun b!6860375 () Bool)

(assert (=> b!6860375 (= e!4136167 (contains!20348 (t!380114 zl!343) lt!2457391))))

(assert (= (and d!2155463 res!2799381) b!6860374))

(assert (= (and b!6860374 (not res!2799382)) b!6860375))

(assert (=> d!2155463 m!7595046))

(declare-fun m!7595052 () Bool)

(assert (=> d!2155463 m!7595052))

(declare-fun m!7595054 () Bool)

(assert (=> b!6860375 m!7595054))

(assert (=> b!6860118 d!2155463))

(declare-fun d!2155465 () Bool)

(declare-fun res!2799398 () Bool)

(declare-fun e!4136192 () Bool)

(assert (=> d!2155465 (=> res!2799398 e!4136192)))

(assert (=> d!2155465 (= res!2799398 (is-ElementMatch!16690 r!7292))))

(assert (=> d!2155465 (= (validRegex!8426 r!7292) e!4136192)))

(declare-fun b!6860403 () Bool)

(declare-fun e!4136191 () Bool)

(declare-fun e!4136195 () Bool)

(assert (=> b!6860403 (= e!4136191 e!4136195)))

(declare-fun c!1276990 () Bool)

(assert (=> b!6860403 (= c!1276990 (is-Union!16690 r!7292))))

(declare-fun b!6860404 () Bool)

(declare-fun e!4136193 () Bool)

(declare-fun e!4136196 () Bool)

(assert (=> b!6860404 (= e!4136193 e!4136196)))

(declare-fun res!2799400 () Bool)

(assert (=> b!6860404 (=> (not res!2799400) (not e!4136196))))

(declare-fun call!624864 () Bool)

(assert (=> b!6860404 (= res!2799400 call!624864)))

(declare-fun b!6860405 () Bool)

(declare-fun e!4136194 () Bool)

(assert (=> b!6860405 (= e!4136191 e!4136194)))

(declare-fun res!2799399 () Bool)

(assert (=> b!6860405 (= res!2799399 (not (nullable!6651 (reg!17019 r!7292))))))

(assert (=> b!6860405 (=> (not res!2799399) (not e!4136194))))

(declare-fun b!6860406 () Bool)

(assert (=> b!6860406 (= e!4136192 e!4136191)))

(declare-fun c!1276989 () Bool)

(assert (=> b!6860406 (= c!1276989 (is-Star!16690 r!7292))))

(declare-fun b!6860407 () Bool)

(declare-fun res!2799402 () Bool)

(assert (=> b!6860407 (=> res!2799402 e!4136193)))

(assert (=> b!6860407 (= res!2799402 (not (is-Concat!25535 r!7292)))))

(assert (=> b!6860407 (= e!4136195 e!4136193)))

(declare-fun bm!624859 () Bool)

(declare-fun call!624865 () Bool)

(assert (=> bm!624859 (= call!624865 (validRegex!8426 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))))))

(declare-fun b!6860408 () Bool)

(declare-fun call!624866 () Bool)

(assert (=> b!6860408 (= e!4136194 call!624866)))

(declare-fun bm!624860 () Bool)

(assert (=> bm!624860 (= call!624864 call!624866)))

(declare-fun b!6860409 () Bool)

(declare-fun e!4136190 () Bool)

(assert (=> b!6860409 (= e!4136190 call!624865)))

(declare-fun b!6860410 () Bool)

(assert (=> b!6860410 (= e!4136196 call!624865)))

(declare-fun bm!624861 () Bool)

(assert (=> bm!624861 (= call!624866 (validRegex!8426 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))))))

(declare-fun b!6860411 () Bool)

(declare-fun res!2799401 () Bool)

(assert (=> b!6860411 (=> (not res!2799401) (not e!4136190))))

(assert (=> b!6860411 (= res!2799401 call!624864)))

(assert (=> b!6860411 (= e!4136195 e!4136190)))

(assert (= (and d!2155465 (not res!2799398)) b!6860406))

(assert (= (and b!6860406 c!1276989) b!6860405))

(assert (= (and b!6860406 (not c!1276989)) b!6860403))

(assert (= (and b!6860405 res!2799399) b!6860408))

(assert (= (and b!6860403 c!1276990) b!6860411))

(assert (= (and b!6860403 (not c!1276990)) b!6860407))

(assert (= (and b!6860411 res!2799401) b!6860409))

(assert (= (and b!6860407 (not res!2799402)) b!6860404))

(assert (= (and b!6860404 res!2799400) b!6860410))

(assert (= (or b!6860409 b!6860410) bm!624859))

(assert (= (or b!6860411 b!6860404) bm!624860))

(assert (= (or b!6860408 bm!624860) bm!624861))

(declare-fun m!7595062 () Bool)

(assert (=> b!6860405 m!7595062))

(declare-fun m!7595064 () Bool)

(assert (=> bm!624859 m!7595064))

(declare-fun m!7595066 () Bool)

(assert (=> bm!624861 m!7595066))

(assert (=> start!662358 d!2155465))

(declare-fun d!2155469 () Bool)

(declare-fun lt!2457457 () Regex!16690)

(assert (=> d!2155469 (validRegex!8426 lt!2457457)))

(declare-fun generalisedUnion!2526 (List!66369) Regex!16690)

(assert (=> d!2155469 (= lt!2457457 (generalisedUnion!2526 (unfocusZipperList!2107 zl!343)))))

(assert (=> d!2155469 (= (unfocusZipper!2432 zl!343) lt!2457457)))

(declare-fun bs!1833335 () Bool)

(assert (= bs!1833335 d!2155469))

(declare-fun m!7595072 () Bool)

(assert (=> bs!1833335 m!7595072))

(assert (=> bs!1833335 m!7594904))

(assert (=> bs!1833335 m!7594904))

(declare-fun m!7595074 () Bool)

(assert (=> bs!1833335 m!7595074))

(assert (=> b!6860129 d!2155469))

(declare-fun d!2155473 () Bool)

(declare-fun res!2799407 () Bool)

(declare-fun e!4136201 () Bool)

(assert (=> d!2155473 (=> res!2799407 e!4136201)))

(assert (=> d!2155473 (= res!2799407 (is-Nil!66245 (exprs!6574 lt!2457391)))))

(assert (=> d!2155473 (= (forall!15877 (exprs!6574 lt!2457391) lambda!388030) e!4136201)))

(declare-fun b!6860416 () Bool)

(declare-fun e!4136202 () Bool)

(assert (=> b!6860416 (= e!4136201 e!4136202)))

(declare-fun res!2799408 () Bool)

(assert (=> b!6860416 (=> (not res!2799408) (not e!4136202))))

(declare-fun dynLambda!26503 (Int Regex!16690) Bool)

(assert (=> b!6860416 (= res!2799408 (dynLambda!26503 lambda!388030 (h!72693 (exprs!6574 lt!2457391))))))

(declare-fun b!6860417 () Bool)

(assert (=> b!6860417 (= e!4136202 (forall!15877 (t!380112 (exprs!6574 lt!2457391)) lambda!388030))))

(assert (= (and d!2155473 (not res!2799407)) b!6860416))

(assert (= (and b!6860416 res!2799408) b!6860417))

(declare-fun b_lambda!259169 () Bool)

(assert (=> (not b_lambda!259169) (not b!6860416)))

(declare-fun m!7595076 () Bool)

(assert (=> b!6860416 m!7595076))

(declare-fun m!7595078 () Bool)

(assert (=> b!6860417 m!7595078))

(assert (=> b!6860119 d!2155473))

(declare-fun bs!1833336 () Bool)

(declare-fun d!2155475 () Bool)

(assert (= bs!1833336 (and d!2155475 b!6860119)))

(declare-fun lambda!388084 () Int)

(assert (=> bs!1833336 (= lambda!388084 lambda!388030)))

(declare-fun bs!1833337 () Bool)

(assert (= bs!1833337 (and d!2155475 d!2155445)))

(assert (=> bs!1833337 (not (= lambda!388084 lambda!388068))))

(declare-fun bs!1833338 () Bool)

(assert (= bs!1833338 (and d!2155475 d!2155437)))

(assert (=> bs!1833338 (not (= lambda!388084 lambda!388059))))

(assert (=> bs!1833337 (= lambda!388084 lambda!388067)))

(declare-fun bs!1833339 () Bool)

(assert (= bs!1833339 (and d!2155475 b!6860114)))

(assert (=> bs!1833339 (not (= lambda!388084 lambda!388028))))

(declare-fun bs!1833340 () Bool)

(assert (= bs!1833340 (and d!2155475 d!2155453)))

(assert (=> bs!1833340 (= lambda!388084 lambda!388074)))

(declare-fun bs!1833341 () Bool)

(assert (= bs!1833341 (and d!2155475 d!2155461)))

(assert (=> bs!1833341 (= lambda!388084 lambda!388081)))

(declare-fun bs!1833342 () Bool)

(assert (= bs!1833342 (and d!2155475 d!2155447)))

(assert (=> bs!1833342 (= lambda!388084 lambda!388071)))

(assert (=> d!2155475 (forall!15877 (exprs!6574 lt!2457391) lambda!388084)))

(declare-fun lt!2457460 () Unit!160137)

(declare-fun choose!51132 (Context!12148 List!66369) Unit!160137)

(assert (=> d!2155475 (= lt!2457460 (choose!51132 lt!2457391 (exprs!6574 lt!2457391)))))

(assert (=> d!2155475 (= (exprs!6574 lt!2457391) (exprs!6574 lt!2457391))))

(assert (=> d!2155475 (= (lemmaContextForallValidExprs!65 lt!2457391 (exprs!6574 lt!2457391)) lt!2457460)))

(declare-fun bs!1833343 () Bool)

(assert (= bs!1833343 d!2155475))

(declare-fun m!7595080 () Bool)

(assert (=> bs!1833343 m!7595080))

(declare-fun m!7595082 () Bool)

(assert (=> bs!1833343 m!7595082))

(assert (=> b!6860119 d!2155475))

(declare-fun b!6860434 () Bool)

(declare-fun e!4136215 () Bool)

(declare-fun lt!2457466 () Context!12148)

(assert (=> b!6860434 (= e!4136215 (contains!20348 zl!343 lt!2457466))))

(declare-fun b!6860435 () Bool)

(declare-fun e!4136213 () Bool)

(declare-fun dynLambda!26504 (Int Context!12148) Bool)

(assert (=> b!6860435 (= e!4136213 (dynLambda!26504 lambda!388029 (h!72695 zl!343)))))

(declare-fun d!2155477 () Bool)

(assert (=> d!2155477 e!4136215))

(declare-fun res!2799413 () Bool)

(assert (=> d!2155477 (=> (not res!2799413) (not e!4136215))))

(assert (=> d!2155477 (= res!2799413 (dynLambda!26504 lambda!388029 lt!2457466))))

(declare-fun e!4136214 () Context!12148)

(assert (=> d!2155477 (= lt!2457466 e!4136214)))

(declare-fun c!1276999 () Bool)

(assert (=> d!2155477 (= c!1276999 e!4136213)))

(declare-fun res!2799414 () Bool)

(assert (=> d!2155477 (=> (not res!2799414) (not e!4136213))))

(assert (=> d!2155477 (= res!2799414 (is-Cons!66247 zl!343))))

(assert (=> d!2155477 (exists!2811 zl!343 lambda!388029)))

(assert (=> d!2155477 (= (getWitness!969 zl!343 lambda!388029) lt!2457466)))

(declare-fun b!6860436 () Bool)

(assert (=> b!6860436 (= e!4136214 (h!72695 zl!343))))

(declare-fun b!6860437 () Bool)

(declare-fun e!4136216 () Context!12148)

(assert (=> b!6860437 (= e!4136216 (getWitness!969 (t!380114 zl!343) lambda!388029))))

(declare-fun b!6860438 () Bool)

(declare-fun lt!2457465 () Unit!160137)

(declare-fun Unit!160141 () Unit!160137)

(assert (=> b!6860438 (= lt!2457465 Unit!160141)))

(assert (=> b!6860438 false))

(declare-fun head!13760 (List!66371) Context!12148)

(assert (=> b!6860438 (= e!4136216 (head!13760 zl!343))))

(declare-fun b!6860439 () Bool)

(assert (=> b!6860439 (= e!4136214 e!4136216)))

(declare-fun c!1276998 () Bool)

(assert (=> b!6860439 (= c!1276998 (is-Cons!66247 zl!343))))

(assert (= (and d!2155477 res!2799414) b!6860435))

(assert (= (and d!2155477 c!1276999) b!6860436))

(assert (= (and d!2155477 (not c!1276999)) b!6860439))

(assert (= (and b!6860439 c!1276998) b!6860437))

(assert (= (and b!6860439 (not c!1276998)) b!6860438))

(assert (= (and d!2155477 res!2799413) b!6860434))

(declare-fun b_lambda!259171 () Bool)

(assert (=> (not b_lambda!259171) (not b!6860435)))

(declare-fun b_lambda!259173 () Bool)

(assert (=> (not b_lambda!259173) (not d!2155477)))

(declare-fun m!7595084 () Bool)

(assert (=> d!2155477 m!7595084))

(assert (=> d!2155477 m!7594906))

(declare-fun m!7595086 () Bool)

(assert (=> b!6860437 m!7595086))

(declare-fun m!7595088 () Bool)

(assert (=> b!6860435 m!7595088))

(declare-fun m!7595090 () Bool)

(assert (=> b!6860438 m!7595090))

(declare-fun m!7595092 () Bool)

(assert (=> b!6860434 m!7595092))

(assert (=> b!6860119 d!2155477))

(declare-fun b!6860465 () Bool)

(declare-fun e!4136234 () Bool)

(declare-fun tp!1881288 () Bool)

(assert (=> b!6860465 (= e!4136234 tp!1881288)))

(declare-fun b!6860464 () Bool)

(declare-fun tp!1881289 () Bool)

(declare-fun e!4136233 () Bool)

(assert (=> b!6860464 (= e!4136233 (and (inv!84973 (h!72695 (t!380114 zl!343))) e!4136234 tp!1881289))))

(assert (=> b!6860120 (= tp!1881253 e!4136233)))

(assert (= b!6860464 b!6860465))

(assert (= (and b!6860120 (is-Cons!66247 (t!380114 zl!343))) b!6860464))

(declare-fun m!7595094 () Bool)

(assert (=> b!6860464 m!7595094))

(declare-fun b!6860470 () Bool)

(declare-fun e!4136237 () Bool)

(declare-fun tp!1881294 () Bool)

(declare-fun tp!1881295 () Bool)

(assert (=> b!6860470 (= e!4136237 (and tp!1881294 tp!1881295))))

(assert (=> b!6860116 (= tp!1881248 e!4136237)))

(assert (= (and b!6860116 (is-Cons!66245 (exprs!6574 setElem!47178))) b!6860470))

(declare-fun b!6860484 () Bool)

(declare-fun e!4136240 () Bool)

(declare-fun tp!1881308 () Bool)

(declare-fun tp!1881309 () Bool)

(assert (=> b!6860484 (= e!4136240 (and tp!1881308 tp!1881309))))

(declare-fun b!6860483 () Bool)

(declare-fun tp!1881307 () Bool)

(assert (=> b!6860483 (= e!4136240 tp!1881307)))

(declare-fun b!6860481 () Bool)

(assert (=> b!6860481 (= e!4136240 tp_is_empty!42633)))

(assert (=> b!6860121 (= tp!1881245 e!4136240)))

(declare-fun b!6860482 () Bool)

(declare-fun tp!1881310 () Bool)

(declare-fun tp!1881306 () Bool)

(assert (=> b!6860482 (= e!4136240 (and tp!1881310 tp!1881306))))

(assert (= (and b!6860121 (is-ElementMatch!16690 (reg!17019 r!7292))) b!6860481))

(assert (= (and b!6860121 (is-Concat!25535 (reg!17019 r!7292))) b!6860482))

(assert (= (and b!6860121 (is-Star!16690 (reg!17019 r!7292))) b!6860483))

(assert (= (and b!6860121 (is-Union!16690 (reg!17019 r!7292))) b!6860484))

(declare-fun b!6860485 () Bool)

(declare-fun e!4136241 () Bool)

(declare-fun tp!1881311 () Bool)

(declare-fun tp!1881312 () Bool)

(assert (=> b!6860485 (= e!4136241 (and tp!1881311 tp!1881312))))

(assert (=> b!6860127 (= tp!1881251 e!4136241)))

(assert (= (and b!6860127 (is-Cons!66245 (exprs!6574 (h!72695 zl!343)))) b!6860485))

(declare-fun condSetEmpty!47184 () Bool)

(assert (=> setNonEmpty!47178 (= condSetEmpty!47184 (= setRest!47178 (as set.empty (Set Context!12148))))))

(declare-fun setRes!47184 () Bool)

(assert (=> setNonEmpty!47178 (= tp!1881244 setRes!47184)))

(declare-fun setIsEmpty!47184 () Bool)

(assert (=> setIsEmpty!47184 setRes!47184))

(declare-fun e!4136246 () Bool)

(declare-fun tp!1881318 () Bool)

(declare-fun setElem!47184 () Context!12148)

(declare-fun setNonEmpty!47184 () Bool)

(assert (=> setNonEmpty!47184 (= setRes!47184 (and tp!1881318 (inv!84973 setElem!47184) e!4136246))))

(declare-fun setRest!47184 () (Set Context!12148))

(assert (=> setNonEmpty!47184 (= setRest!47178 (set.union (set.insert setElem!47184 (as set.empty (Set Context!12148))) setRest!47184))))

(declare-fun b!6860496 () Bool)

(declare-fun tp!1881317 () Bool)

(assert (=> b!6860496 (= e!4136246 tp!1881317)))

(assert (= (and setNonEmpty!47178 condSetEmpty!47184) setIsEmpty!47184))

(assert (= (and setNonEmpty!47178 (not condSetEmpty!47184)) setNonEmpty!47184))

(assert (= setNonEmpty!47184 b!6860496))

(declare-fun m!7595096 () Bool)

(assert (=> setNonEmpty!47184 m!7595096))

(declare-fun b!6860500 () Bool)

(declare-fun e!4136247 () Bool)

(declare-fun tp!1881321 () Bool)

(declare-fun tp!1881322 () Bool)

(assert (=> b!6860500 (= e!4136247 (and tp!1881321 tp!1881322))))

(declare-fun b!6860499 () Bool)

(declare-fun tp!1881320 () Bool)

(assert (=> b!6860499 (= e!4136247 tp!1881320)))

(declare-fun b!6860497 () Bool)

(assert (=> b!6860497 (= e!4136247 tp_is_empty!42633)))

(assert (=> b!6860133 (= tp!1881250 e!4136247)))

(declare-fun b!6860498 () Bool)

(declare-fun tp!1881323 () Bool)

(declare-fun tp!1881319 () Bool)

(assert (=> b!6860498 (= e!4136247 (and tp!1881323 tp!1881319))))

(assert (= (and b!6860133 (is-ElementMatch!16690 (regOne!33892 r!7292))) b!6860497))

(assert (= (and b!6860133 (is-Concat!25535 (regOne!33892 r!7292))) b!6860498))

(assert (= (and b!6860133 (is-Star!16690 (regOne!33892 r!7292))) b!6860499))

(assert (= (and b!6860133 (is-Union!16690 (regOne!33892 r!7292))) b!6860500))

(declare-fun b!6860504 () Bool)

(declare-fun e!4136248 () Bool)

(declare-fun tp!1881326 () Bool)

(declare-fun tp!1881327 () Bool)

(assert (=> b!6860504 (= e!4136248 (and tp!1881326 tp!1881327))))

(declare-fun b!6860503 () Bool)

(declare-fun tp!1881325 () Bool)

(assert (=> b!6860503 (= e!4136248 tp!1881325)))

(declare-fun b!6860501 () Bool)

(assert (=> b!6860501 (= e!4136248 tp_is_empty!42633)))

(assert (=> b!6860133 (= tp!1881247 e!4136248)))

(declare-fun b!6860502 () Bool)

(declare-fun tp!1881328 () Bool)

(declare-fun tp!1881324 () Bool)

(assert (=> b!6860502 (= e!4136248 (and tp!1881328 tp!1881324))))

(assert (= (and b!6860133 (is-ElementMatch!16690 (regTwo!33892 r!7292))) b!6860501))

(assert (= (and b!6860133 (is-Concat!25535 (regTwo!33892 r!7292))) b!6860502))

(assert (= (and b!6860133 (is-Star!16690 (regTwo!33892 r!7292))) b!6860503))

(assert (= (and b!6860133 (is-Union!16690 (regTwo!33892 r!7292))) b!6860504))

(declare-fun b!6860508 () Bool)

(declare-fun e!4136249 () Bool)

(declare-fun tp!1881331 () Bool)

(declare-fun tp!1881332 () Bool)

(assert (=> b!6860508 (= e!4136249 (and tp!1881331 tp!1881332))))

(declare-fun b!6860507 () Bool)

(declare-fun tp!1881330 () Bool)

(assert (=> b!6860507 (= e!4136249 tp!1881330)))

(declare-fun b!6860505 () Bool)

(assert (=> b!6860505 (= e!4136249 tp_is_empty!42633)))

(assert (=> b!6860123 (= tp!1881252 e!4136249)))

(declare-fun b!6860506 () Bool)

(declare-fun tp!1881333 () Bool)

(declare-fun tp!1881329 () Bool)

(assert (=> b!6860506 (= e!4136249 (and tp!1881333 tp!1881329))))

(assert (= (and b!6860123 (is-ElementMatch!16690 (regOne!33893 r!7292))) b!6860505))

(assert (= (and b!6860123 (is-Concat!25535 (regOne!33893 r!7292))) b!6860506))

(assert (= (and b!6860123 (is-Star!16690 (regOne!33893 r!7292))) b!6860507))

(assert (= (and b!6860123 (is-Union!16690 (regOne!33893 r!7292))) b!6860508))

(declare-fun b!6860512 () Bool)

(declare-fun e!4136250 () Bool)

(declare-fun tp!1881336 () Bool)

(declare-fun tp!1881337 () Bool)

(assert (=> b!6860512 (= e!4136250 (and tp!1881336 tp!1881337))))

(declare-fun b!6860511 () Bool)

(declare-fun tp!1881335 () Bool)

(assert (=> b!6860511 (= e!4136250 tp!1881335)))

(declare-fun b!6860509 () Bool)

(assert (=> b!6860509 (= e!4136250 tp_is_empty!42633)))

(assert (=> b!6860123 (= tp!1881249 e!4136250)))

(declare-fun b!6860510 () Bool)

(declare-fun tp!1881338 () Bool)

(declare-fun tp!1881334 () Bool)

(assert (=> b!6860510 (= e!4136250 (and tp!1881338 tp!1881334))))

(assert (= (and b!6860123 (is-ElementMatch!16690 (regTwo!33893 r!7292))) b!6860509))

(assert (= (and b!6860123 (is-Concat!25535 (regTwo!33893 r!7292))) b!6860510))

(assert (= (and b!6860123 (is-Star!16690 (regTwo!33893 r!7292))) b!6860511))

(assert (= (and b!6860123 (is-Union!16690 (regTwo!33893 r!7292))) b!6860512))

(declare-fun b!6860517 () Bool)

(declare-fun e!4136253 () Bool)

(declare-fun tp!1881341 () Bool)

(assert (=> b!6860517 (= e!4136253 (and tp_is_empty!42633 tp!1881341))))

(assert (=> b!6860128 (= tp!1881246 e!4136253)))

(assert (= (and b!6860128 (is-Cons!66246 (t!380113 s!2326))) b!6860517))

(declare-fun b_lambda!259175 () Bool)

(assert (= b_lambda!259169 (or b!6860119 b_lambda!259175)))

(declare-fun bs!1833344 () Bool)

(declare-fun d!2155479 () Bool)

(assert (= bs!1833344 (and d!2155479 b!6860119)))

(assert (=> bs!1833344 (= (dynLambda!26503 lambda!388030 (h!72693 (exprs!6574 lt!2457391))) (validRegex!8426 (h!72693 (exprs!6574 lt!2457391))))))

(declare-fun m!7595098 () Bool)

(assert (=> bs!1833344 m!7595098))

(assert (=> b!6860416 d!2155479))

(declare-fun b_lambda!259177 () Bool)

(assert (= b_lambda!259171 (or b!6860130 b_lambda!259177)))

(declare-fun bs!1833345 () Bool)

(declare-fun d!2155481 () Bool)

(assert (= bs!1833345 (and d!2155481 b!6860130)))

(assert (=> bs!1833345 (= (dynLambda!26504 lambda!388029 (h!72695 zl!343)) (matchZipper!2656 (set.insert (h!72695 zl!343) (as set.empty (Set Context!12148))) s!2326))))

(declare-fun m!7595100 () Bool)

(assert (=> bs!1833345 m!7595100))

(assert (=> bs!1833345 m!7595100))

(declare-fun m!7595102 () Bool)

(assert (=> bs!1833345 m!7595102))

(assert (=> b!6860435 d!2155481))

(declare-fun b_lambda!259179 () Bool)

(assert (= b_lambda!259173 (or b!6860130 b_lambda!259179)))

(declare-fun bs!1833346 () Bool)

(declare-fun d!2155483 () Bool)

(assert (= bs!1833346 (and d!2155483 b!6860130)))

(assert (=> bs!1833346 (= (dynLambda!26504 lambda!388029 lt!2457466) (matchZipper!2656 (set.insert lt!2457466 (as set.empty (Set Context!12148))) s!2326))))

(declare-fun m!7595104 () Bool)

(assert (=> bs!1833346 m!7595104))

(assert (=> bs!1833346 m!7595104))

(declare-fun m!7595106 () Bool)

(assert (=> bs!1833346 m!7595106))

(assert (=> d!2155477 d!2155483))

(push 1)

(assert (not b!6860510))

(assert (not b!6860292))

(assert (not b!6860496))

(assert (not b!6860300))

(assert (not d!2155459))

(assert (not b!6860317))

(assert (not d!2155457))

(assert (not d!2155449))

(assert (not b!6860498))

(assert tp_is_empty!42633)

(assert (not bs!1833345))

(assert (not b!6860504))

(assert (not d!2155425))

(assert (not bs!1833346))

(assert (not b!6860482))

(assert (not bm!624861))

(assert (not b!6860438))

(assert (not d!2155447))

(assert (not d!2155431))

(assert (not b!6860503))

(assert (not b!6860246))

(assert (not b_lambda!259179))

(assert (not b_lambda!259175))

(assert (not b!6860485))

(assert (not b!6860437))

(assert (not b!6860302))

(assert (not d!2155441))

(assert (not b!6860506))

(assert (not b!6860294))

(assert (not b!6860304))

(assert (not b!6860336))

(assert (not bm!624840))

(assert (not b!6860405))

(assert (not bm!624843))

(assert (not b!6860464))

(assert (not b!6860348))

(assert (not b!6860502))

(assert (not d!2155437))

(assert (not bm!624839))

(assert (not b_lambda!259177))

(assert (not setNonEmpty!47184))

(assert (not b!6860500))

(assert (not b!6860484))

(assert (not b!6860349))

(assert (not b!6860465))

(assert (not b!6860483))

(assert (not b!6860512))

(assert (not b!6860375))

(assert (not b!6860517))

(assert (not d!2155463))

(assert (not bs!1833344))

(assert (not b!6860508))

(assert (not b!6860291))

(assert (not b!6860511))

(assert (not b!6860314))

(assert (not b!6860499))

(assert (not d!2155453))

(assert (not b!6860434))

(assert (not b!6860507))

(assert (not b!6860470))

(assert (not bm!624859))

(assert (not b!6860417))

(assert (not b!6860249))

(assert (not d!2155461))

(assert (not d!2155469))

(assert (not d!2155477))

(assert (not d!2155475))

(assert (not d!2155445))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2155515 () Bool)

(assert (=> d!2155515 (= (isEmpty!38608 (tail!12822 s!2326)) (is-Nil!66246 (tail!12822 s!2326)))))

(assert (=> b!6860294 d!2155515))

(declare-fun d!2155517 () Bool)

(assert (=> d!2155517 (= (tail!12822 s!2326) (t!380113 s!2326))))

(assert (=> b!6860294 d!2155517))

(declare-fun bs!1833382 () Bool)

(declare-fun d!2155519 () Bool)

(assert (= bs!1833382 (and d!2155519 b!6860130)))

(declare-fun lambda!388112 () Int)

(assert (=> bs!1833382 (not (= lambda!388112 lambda!388029))))

(declare-fun bs!1833383 () Bool)

(assert (= bs!1833383 (and d!2155519 d!2155457)))

(assert (=> bs!1833383 (not (= lambda!388112 lambda!388077))))

(declare-fun bs!1833384 () Bool)

(assert (= bs!1833384 (and d!2155519 d!2155459)))

(assert (=> bs!1833384 (not (= lambda!388112 lambda!388080))))

(declare-fun exists!2814 ((Set Context!12148) Int) Bool)

(assert (=> d!2155519 (= (nullableZipper!2364 z!1189) (exists!2814 z!1189 lambda!388112))))

(declare-fun bs!1833385 () Bool)

(assert (= bs!1833385 d!2155519))

(declare-fun m!7595188 () Bool)

(assert (=> bs!1833385 m!7595188))

(assert (=> b!6860348 d!2155519))

(declare-fun bs!1833386 () Bool)

(declare-fun d!2155521 () Bool)

(assert (= bs!1833386 (and d!2155521 b!6860130)))

(declare-fun lambda!388113 () Int)

(assert (=> bs!1833386 (not (= lambda!388113 lambda!388029))))

(declare-fun bs!1833387 () Bool)

(assert (= bs!1833387 (and d!2155521 d!2155457)))

(assert (=> bs!1833387 (= (= lambda!388080 lambda!388029) (= lambda!388113 lambda!388077))))

(declare-fun bs!1833388 () Bool)

(assert (= bs!1833388 (and d!2155521 d!2155459)))

(assert (=> bs!1833388 (not (= lambda!388113 lambda!388080))))

(declare-fun bs!1833389 () Bool)

(assert (= bs!1833389 (and d!2155521 d!2155519)))

(assert (=> bs!1833389 (not (= lambda!388113 lambda!388112))))

(assert (=> d!2155521 true))

(assert (=> d!2155521 (< (dynLambda!26502 order!27705 lambda!388080) (dynLambda!26502 order!27705 lambda!388113))))

(assert (=> d!2155521 (= (exists!2811 zl!343 lambda!388080) (not (forall!15879 zl!343 lambda!388113)))))

(declare-fun bs!1833390 () Bool)

(assert (= bs!1833390 d!2155521))

(declare-fun m!7595190 () Bool)

(assert (=> bs!1833390 m!7595190))

(assert (=> d!2155459 d!2155521))

(declare-fun bs!1833391 () Bool)

(declare-fun d!2155523 () Bool)

(assert (= bs!1833391 (and d!2155523 d!2155519)))

(declare-fun lambda!388116 () Int)

(assert (=> bs!1833391 (not (= lambda!388116 lambda!388112))))

(declare-fun bs!1833392 () Bool)

(assert (= bs!1833392 (and d!2155523 d!2155457)))

(assert (=> bs!1833392 (not (= lambda!388116 lambda!388077))))

(declare-fun bs!1833393 () Bool)

(assert (= bs!1833393 (and d!2155523 d!2155459)))

(assert (=> bs!1833393 (= lambda!388116 lambda!388080)))

(declare-fun bs!1833394 () Bool)

(assert (= bs!1833394 (and d!2155523 d!2155521)))

(assert (=> bs!1833394 (not (= lambda!388116 lambda!388113))))

(declare-fun bs!1833395 () Bool)

(assert (= bs!1833395 (and d!2155523 b!6860130)))

(assert (=> bs!1833395 (= lambda!388116 lambda!388029)))

(assert (=> d!2155523 true))

(assert (=> d!2155523 (exists!2811 zl!343 lambda!388116)))

(assert (=> d!2155523 true))

(declare-fun _$60!1012 () Unit!160137)

(assert (=> d!2155523 (= (choose!51131 zl!343 s!2326) _$60!1012)))

(declare-fun bs!1833396 () Bool)

(assert (= bs!1833396 d!2155523))

(declare-fun m!7595192 () Bool)

(assert (=> bs!1833396 m!7595192))

(assert (=> d!2155459 d!2155523))

(declare-fun d!2155525 () Bool)

(declare-fun c!1277034 () Bool)

(assert (=> d!2155525 (= c!1277034 (isEmpty!38608 s!2326))))

(declare-fun e!4136327 () Bool)

(assert (=> d!2155525 (= (matchZipper!2656 (content!13003 zl!343) s!2326) e!4136327)))

(declare-fun b!6860664 () Bool)

(assert (=> b!6860664 (= e!4136327 (nullableZipper!2364 (content!13003 zl!343)))))

(declare-fun b!6860665 () Bool)

(assert (=> b!6860665 (= e!4136327 (matchZipper!2656 (derivationStepZipper!2611 (content!13003 zl!343) (head!13759 s!2326)) (tail!12822 s!2326)))))

(assert (= (and d!2155525 c!1277034) b!6860664))

(assert (= (and d!2155525 (not c!1277034)) b!6860665))

(assert (=> d!2155525 m!7594968))

(assert (=> b!6860664 m!7595046))

(declare-fun m!7595194 () Bool)

(assert (=> b!6860664 m!7595194))

(assert (=> b!6860665 m!7594978))

(assert (=> b!6860665 m!7595046))

(assert (=> b!6860665 m!7594978))

(declare-fun m!7595196 () Bool)

(assert (=> b!6860665 m!7595196))

(assert (=> b!6860665 m!7594980))

(assert (=> b!6860665 m!7595196))

(assert (=> b!6860665 m!7594980))

(declare-fun m!7595198 () Bool)

(assert (=> b!6860665 m!7595198))

(assert (=> d!2155459 d!2155525))

(declare-fun d!2155527 () Bool)

(declare-fun c!1277037 () Bool)

(assert (=> d!2155527 (= c!1277037 (is-Nil!66247 zl!343))))

(declare-fun e!4136330 () (Set Context!12148))

(assert (=> d!2155527 (= (content!13003 zl!343) e!4136330)))

(declare-fun b!6860670 () Bool)

(assert (=> b!6860670 (= e!4136330 (as set.empty (Set Context!12148)))))

(declare-fun b!6860671 () Bool)

(assert (=> b!6860671 (= e!4136330 (set.union (set.insert (h!72695 zl!343) (as set.empty (Set Context!12148))) (content!13003 (t!380114 zl!343))))))

(assert (= (and d!2155527 c!1277037) b!6860670))

(assert (= (and d!2155527 (not c!1277037)) b!6860671))

(assert (=> b!6860671 m!7595100))

(declare-fun m!7595200 () Bool)

(assert (=> b!6860671 m!7595200))

(assert (=> d!2155459 d!2155527))

(assert (=> d!2155445 d!2155425))

(declare-fun bs!1833397 () Bool)

(declare-fun d!2155529 () Bool)

(assert (= bs!1833397 (and d!2155529 b!6860119)))

(declare-fun lambda!388117 () Int)

(assert (=> bs!1833397 (not (= lambda!388117 lambda!388030))))

(declare-fun bs!1833398 () Bool)

(assert (= bs!1833398 (and d!2155529 d!2155445)))

(assert (=> bs!1833398 (not (= lambda!388117 lambda!388068))))

(declare-fun bs!1833399 () Bool)

(assert (= bs!1833399 (and d!2155529 d!2155437)))

(assert (=> bs!1833399 (= (= lambda!388068 lambda!388028) (= lambda!388117 lambda!388059))))

(declare-fun bs!1833400 () Bool)

(assert (= bs!1833400 (and d!2155529 d!2155475)))

(assert (=> bs!1833400 (not (= lambda!388117 lambda!388084))))

(assert (=> bs!1833398 (not (= lambda!388117 lambda!388067))))

(declare-fun bs!1833401 () Bool)

(assert (= bs!1833401 (and d!2155529 b!6860114)))

(assert (=> bs!1833401 (not (= lambda!388117 lambda!388028))))

(declare-fun bs!1833402 () Bool)

(assert (= bs!1833402 (and d!2155529 d!2155453)))

(assert (=> bs!1833402 (not (= lambda!388117 lambda!388074))))

(declare-fun bs!1833403 () Bool)

(assert (= bs!1833403 (and d!2155529 d!2155461)))

(assert (=> bs!1833403 (not (= lambda!388117 lambda!388081))))

(declare-fun bs!1833404 () Bool)

(assert (= bs!1833404 (and d!2155529 d!2155447)))

(assert (=> bs!1833404 (not (= lambda!388117 lambda!388071))))

(assert (=> d!2155529 true))

(assert (=> d!2155529 (< (dynLambda!26501 order!27703 lambda!388068) (dynLambda!26501 order!27703 lambda!388117))))

(assert (=> d!2155529 (= (exists!2810 lt!2457393 lambda!388068) (not (forall!15877 lt!2457393 lambda!388117)))))

(declare-fun bs!1833405 () Bool)

(assert (= bs!1833405 d!2155529))

(declare-fun m!7595202 () Bool)

(assert (=> bs!1833405 m!7595202))

(assert (=> d!2155445 d!2155529))

(declare-fun bs!1833406 () Bool)

(declare-fun d!2155531 () Bool)

(assert (= bs!1833406 (and d!2155531 b!6860119)))

(declare-fun lambda!388120 () Int)

(assert (=> bs!1833406 (not (= lambda!388120 lambda!388030))))

(declare-fun bs!1833407 () Bool)

(assert (= bs!1833407 (and d!2155531 d!2155445)))

(assert (=> bs!1833407 (= lambda!388120 lambda!388068)))

(declare-fun bs!1833408 () Bool)

(assert (= bs!1833408 (and d!2155531 d!2155437)))

(assert (=> bs!1833408 (not (= lambda!388120 lambda!388059))))

(declare-fun bs!1833409 () Bool)

(assert (= bs!1833409 (and d!2155531 d!2155475)))

(assert (=> bs!1833409 (not (= lambda!388120 lambda!388084))))

(assert (=> bs!1833407 (not (= lambda!388120 lambda!388067))))

(declare-fun bs!1833410 () Bool)

(assert (= bs!1833410 (and d!2155531 d!2155529)))

(assert (=> bs!1833410 (not (= lambda!388120 lambda!388117))))

(declare-fun bs!1833411 () Bool)

(assert (= bs!1833411 (and d!2155531 b!6860114)))

(assert (=> bs!1833411 (= lambda!388120 lambda!388028)))

(declare-fun bs!1833412 () Bool)

(assert (= bs!1833412 (and d!2155531 d!2155453)))

(assert (=> bs!1833412 (not (= lambda!388120 lambda!388074))))

(declare-fun bs!1833413 () Bool)

(assert (= bs!1833413 (and d!2155531 d!2155461)))

(assert (=> bs!1833413 (not (= lambda!388120 lambda!388081))))

(declare-fun bs!1833414 () Bool)

(assert (= bs!1833414 (and d!2155531 d!2155447)))

(assert (=> bs!1833414 (not (= lambda!388120 lambda!388071))))

(assert (=> d!2155531 true))

(assert (=> d!2155531 (= (matchR!8873 r!7292 s!2326) (exists!2810 lt!2457393 lambda!388120))))

(assert (=> d!2155531 true))

(declare-fun _$85!212 () Unit!160137)

(assert (=> d!2155531 (= (choose!51130 r!7292 lt!2457393 s!2326) _$85!212)))

(declare-fun bs!1833415 () Bool)

(assert (= bs!1833415 d!2155531))

(assert (=> bs!1833415 m!7594922))

(declare-fun m!7595204 () Bool)

(assert (=> bs!1833415 m!7595204))

(assert (=> d!2155445 d!2155531))

(declare-fun d!2155533 () Bool)

(declare-fun res!2799471 () Bool)

(declare-fun e!4136333 () Bool)

(assert (=> d!2155533 (=> res!2799471 e!4136333)))

(assert (=> d!2155533 (= res!2799471 (is-Nil!66245 lt!2457393))))

(assert (=> d!2155533 (= (forall!15877 lt!2457393 lambda!388067) e!4136333)))

(declare-fun b!6860674 () Bool)

(declare-fun e!4136334 () Bool)

(assert (=> b!6860674 (= e!4136333 e!4136334)))

(declare-fun res!2799472 () Bool)

(assert (=> b!6860674 (=> (not res!2799472) (not e!4136334))))

(assert (=> b!6860674 (= res!2799472 (dynLambda!26503 lambda!388067 (h!72693 lt!2457393)))))

(declare-fun b!6860675 () Bool)

(assert (=> b!6860675 (= e!4136334 (forall!15877 (t!380112 lt!2457393) lambda!388067))))

(assert (= (and d!2155533 (not res!2799471)) b!6860674))

(assert (= (and b!6860674 res!2799472) b!6860675))

(declare-fun b_lambda!259187 () Bool)

(assert (=> (not b_lambda!259187) (not b!6860674)))

(declare-fun m!7595206 () Bool)

(assert (=> b!6860674 m!7595206))

(declare-fun m!7595208 () Bool)

(assert (=> b!6860675 m!7595208))

(assert (=> d!2155445 d!2155533))

(declare-fun d!2155535 () Bool)

(declare-fun c!1277038 () Bool)

(assert (=> d!2155535 (= c!1277038 (isEmpty!38608 (tail!12822 s!2326)))))

(declare-fun e!4136335 () Bool)

(assert (=> d!2155535 (= (matchZipper!2656 (derivationStepZipper!2611 z!1189 (head!13759 s!2326)) (tail!12822 s!2326)) e!4136335)))

(declare-fun b!6860676 () Bool)

(assert (=> b!6860676 (= e!4136335 (nullableZipper!2364 (derivationStepZipper!2611 z!1189 (head!13759 s!2326))))))

(declare-fun b!6860677 () Bool)

(assert (=> b!6860677 (= e!4136335 (matchZipper!2656 (derivationStepZipper!2611 (derivationStepZipper!2611 z!1189 (head!13759 s!2326)) (head!13759 (tail!12822 s!2326))) (tail!12822 (tail!12822 s!2326))))))

(assert (= (and d!2155535 c!1277038) b!6860676))

(assert (= (and d!2155535 (not c!1277038)) b!6860677))

(assert (=> d!2155535 m!7594980))

(assert (=> d!2155535 m!7594982))

(assert (=> b!6860676 m!7595034))

(declare-fun m!7595210 () Bool)

(assert (=> b!6860676 m!7595210))

(assert (=> b!6860677 m!7594980))

(declare-fun m!7595212 () Bool)

(assert (=> b!6860677 m!7595212))

(assert (=> b!6860677 m!7595034))

(assert (=> b!6860677 m!7595212))

(declare-fun m!7595214 () Bool)

(assert (=> b!6860677 m!7595214))

(assert (=> b!6860677 m!7594980))

(declare-fun m!7595216 () Bool)

(assert (=> b!6860677 m!7595216))

(assert (=> b!6860677 m!7595214))

(assert (=> b!6860677 m!7595216))

(declare-fun m!7595218 () Bool)

(assert (=> b!6860677 m!7595218))

(assert (=> b!6860349 d!2155535))

(declare-fun d!2155537 () Bool)

(assert (=> d!2155537 true))

(declare-fun lambda!388123 () Int)

(declare-fun flatMap!2139 ((Set Context!12148) Int) (Set Context!12148))

(assert (=> d!2155537 (= (derivationStepZipper!2611 z!1189 (head!13759 s!2326)) (flatMap!2139 z!1189 lambda!388123))))

(declare-fun bs!1833416 () Bool)

(assert (= bs!1833416 d!2155537))

(declare-fun m!7595220 () Bool)

(assert (=> bs!1833416 m!7595220))

(assert (=> b!6860349 d!2155537))

(declare-fun d!2155539 () Bool)

(assert (=> d!2155539 (= (head!13759 s!2326) (h!72694 s!2326))))

(assert (=> b!6860349 d!2155539))

(assert (=> b!6860349 d!2155517))

(declare-fun d!2155541 () Bool)

(declare-fun res!2799473 () Bool)

(declare-fun e!4136338 () Bool)

(assert (=> d!2155541 (=> res!2799473 e!4136338)))

(assert (=> d!2155541 (= res!2799473 (is-ElementMatch!16690 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))))))

(assert (=> d!2155541 (= (validRegex!8426 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) e!4136338)))

(declare-fun b!6860680 () Bool)

(declare-fun e!4136337 () Bool)

(declare-fun e!4136341 () Bool)

(assert (=> b!6860680 (= e!4136337 e!4136341)))

(declare-fun c!1277042 () Bool)

(assert (=> b!6860680 (= c!1277042 (is-Union!16690 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))))))

(declare-fun b!6860681 () Bool)

(declare-fun e!4136339 () Bool)

(declare-fun e!4136342 () Bool)

(assert (=> b!6860681 (= e!4136339 e!4136342)))

(declare-fun res!2799475 () Bool)

(assert (=> b!6860681 (=> (not res!2799475) (not e!4136342))))

(declare-fun call!624876 () Bool)

(assert (=> b!6860681 (= res!2799475 call!624876)))

(declare-fun b!6860682 () Bool)

(declare-fun e!4136340 () Bool)

(assert (=> b!6860682 (= e!4136337 e!4136340)))

(declare-fun res!2799474 () Bool)

(assert (=> b!6860682 (= res!2799474 (not (nullable!6651 (reg!17019 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))))))))

(assert (=> b!6860682 (=> (not res!2799474) (not e!4136340))))

(declare-fun b!6860683 () Bool)

(assert (=> b!6860683 (= e!4136338 e!4136337)))

(declare-fun c!1277041 () Bool)

(assert (=> b!6860683 (= c!1277041 (is-Star!16690 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))))))

(declare-fun b!6860684 () Bool)

(declare-fun res!2799477 () Bool)

(assert (=> b!6860684 (=> res!2799477 e!4136339)))

(assert (=> b!6860684 (= res!2799477 (not (is-Concat!25535 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292))))))))

(assert (=> b!6860684 (= e!4136341 e!4136339)))

(declare-fun bm!624871 () Bool)

(declare-fun call!624877 () Bool)

(assert (=> bm!624871 (= call!624877 (validRegex!8426 (ite c!1277042 (regTwo!33893 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (regTwo!33892 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))))))))

(declare-fun b!6860685 () Bool)

(declare-fun call!624878 () Bool)

(assert (=> b!6860685 (= e!4136340 call!624878)))

(declare-fun bm!624872 () Bool)

(assert (=> bm!624872 (= call!624876 call!624878)))

(declare-fun b!6860686 () Bool)

(declare-fun e!4136336 () Bool)

(assert (=> b!6860686 (= e!4136336 call!624877)))

(declare-fun b!6860687 () Bool)

(assert (=> b!6860687 (= e!4136342 call!624877)))

(declare-fun bm!624873 () Bool)

(assert (=> bm!624873 (= call!624878 (validRegex!8426 (ite c!1277041 (reg!17019 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (ite c!1277042 (regOne!33893 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (regOne!33892 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292))))))))))

(declare-fun b!6860688 () Bool)

(declare-fun res!2799476 () Bool)

(assert (=> b!6860688 (=> (not res!2799476) (not e!4136336))))

(assert (=> b!6860688 (= res!2799476 call!624876)))

(assert (=> b!6860688 (= e!4136341 e!4136336)))

(assert (= (and d!2155541 (not res!2799473)) b!6860683))

(assert (= (and b!6860683 c!1277041) b!6860682))

(assert (= (and b!6860683 (not c!1277041)) b!6860680))

(assert (= (and b!6860682 res!2799474) b!6860685))

(assert (= (and b!6860680 c!1277042) b!6860688))

(assert (= (and b!6860680 (not c!1277042)) b!6860684))

(assert (= (and b!6860688 res!2799476) b!6860686))

(assert (= (and b!6860684 (not res!2799477)) b!6860681))

(assert (= (and b!6860681 res!2799475) b!6860687))

(assert (= (or b!6860686 b!6860687) bm!624871))

(assert (= (or b!6860688 b!6860681) bm!624872))

(assert (= (or b!6860685 bm!624872) bm!624873))

(declare-fun m!7595222 () Bool)

(assert (=> b!6860682 m!7595222))

(declare-fun m!7595224 () Bool)

(assert (=> bm!624871 m!7595224))

(declare-fun m!7595226 () Bool)

(assert (=> bm!624873 m!7595226))

(assert (=> bm!624861 d!2155541))

(declare-fun d!2155543 () Bool)

(declare-fun lt!2457491 () Bool)

(assert (=> d!2155543 (= lt!2457491 (set.member lt!2457466 (content!13003 zl!343)))))

(declare-fun e!4136344 () Bool)

(assert (=> d!2155543 (= lt!2457491 e!4136344)))

(declare-fun res!2799478 () Bool)

(assert (=> d!2155543 (=> (not res!2799478) (not e!4136344))))

(assert (=> d!2155543 (= res!2799478 (is-Cons!66247 zl!343))))

(assert (=> d!2155543 (= (contains!20348 zl!343 lt!2457466) lt!2457491)))

(declare-fun b!6860689 () Bool)

(declare-fun e!4136343 () Bool)

(assert (=> b!6860689 (= e!4136344 e!4136343)))

(declare-fun res!2799479 () Bool)

(assert (=> b!6860689 (=> res!2799479 e!4136343)))

(assert (=> b!6860689 (= res!2799479 (= (h!72695 zl!343) lt!2457466))))

(declare-fun b!6860690 () Bool)

(assert (=> b!6860690 (= e!4136343 (contains!20348 (t!380114 zl!343) lt!2457466))))

(assert (= (and d!2155543 res!2799478) b!6860689))

(assert (= (and b!6860689 (not res!2799479)) b!6860690))

(assert (=> d!2155543 m!7595046))

(declare-fun m!7595228 () Bool)

(assert (=> d!2155543 m!7595228))

(declare-fun m!7595230 () Bool)

(assert (=> b!6860690 m!7595230))

(assert (=> b!6860434 d!2155543))

(declare-fun d!2155545 () Bool)

(assert (=> d!2155545 (= (isEmpty!38608 s!2326) (is-Nil!66246 s!2326))))

(assert (=> d!2155449 d!2155545))

(assert (=> b!6860291 d!2155515))

(assert (=> b!6860291 d!2155517))

(declare-fun d!2155547 () Bool)

(declare-fun lt!2457492 () Bool)

(assert (=> d!2155547 (= lt!2457492 (set.member lt!2457391 (content!13003 (t!380114 zl!343))))))

(declare-fun e!4136346 () Bool)

(assert (=> d!2155547 (= lt!2457492 e!4136346)))

(declare-fun res!2799480 () Bool)

(assert (=> d!2155547 (=> (not res!2799480) (not e!4136346))))

(assert (=> d!2155547 (= res!2799480 (is-Cons!66247 (t!380114 zl!343)))))

(assert (=> d!2155547 (= (contains!20348 (t!380114 zl!343) lt!2457391) lt!2457492)))

(declare-fun b!6860691 () Bool)

(declare-fun e!4136345 () Bool)

(assert (=> b!6860691 (= e!4136346 e!4136345)))

(declare-fun res!2799481 () Bool)

(assert (=> b!6860691 (=> res!2799481 e!4136345)))

(assert (=> b!6860691 (= res!2799481 (= (h!72695 (t!380114 zl!343)) lt!2457391))))

(declare-fun b!6860692 () Bool)

(assert (=> b!6860692 (= e!4136345 (contains!20348 (t!380114 (t!380114 zl!343)) lt!2457391))))

(assert (= (and d!2155547 res!2799480) b!6860691))

(assert (= (and b!6860691 (not res!2799481)) b!6860692))

(assert (=> d!2155547 m!7595200))

(declare-fun m!7595232 () Bool)

(assert (=> d!2155547 m!7595232))

(declare-fun m!7595234 () Bool)

(assert (=> b!6860692 m!7595234))

(assert (=> b!6860375 d!2155547))

(declare-fun d!2155549 () Bool)

(declare-fun c!1277043 () Bool)

(assert (=> d!2155549 (= c!1277043 (isEmpty!38608 s!2326))))

(declare-fun e!4136347 () Bool)

(assert (=> d!2155549 (= (matchZipper!2656 (set.insert (h!72695 zl!343) (as set.empty (Set Context!12148))) s!2326) e!4136347)))

(declare-fun b!6860693 () Bool)

(assert (=> b!6860693 (= e!4136347 (nullableZipper!2364 (set.insert (h!72695 zl!343) (as set.empty (Set Context!12148)))))))

(declare-fun b!6860694 () Bool)

(assert (=> b!6860694 (= e!4136347 (matchZipper!2656 (derivationStepZipper!2611 (set.insert (h!72695 zl!343) (as set.empty (Set Context!12148))) (head!13759 s!2326)) (tail!12822 s!2326)))))

(assert (= (and d!2155549 c!1277043) b!6860693))

(assert (= (and d!2155549 (not c!1277043)) b!6860694))

(assert (=> d!2155549 m!7594968))

(assert (=> b!6860693 m!7595100))

(declare-fun m!7595236 () Bool)

(assert (=> b!6860693 m!7595236))

(assert (=> b!6860694 m!7594978))

(assert (=> b!6860694 m!7595100))

(assert (=> b!6860694 m!7594978))

(declare-fun m!7595238 () Bool)

(assert (=> b!6860694 m!7595238))

(assert (=> b!6860694 m!7594980))

(assert (=> b!6860694 m!7595238))

(assert (=> b!6860694 m!7594980))

(declare-fun m!7595240 () Bool)

(assert (=> b!6860694 m!7595240))

(assert (=> bs!1833345 d!2155549))

(declare-fun d!2155551 () Bool)

(declare-fun nullableFct!2527 (Regex!16690) Bool)

(assert (=> d!2155551 (= (nullable!6651 r!7292) (nullableFct!2527 r!7292))))

(declare-fun bs!1833417 () Bool)

(assert (= bs!1833417 d!2155551))

(declare-fun m!7595242 () Bool)

(assert (=> bs!1833417 m!7595242))

(assert (=> b!6860292 d!2155551))

(declare-fun b!6860695 () Bool)

(declare-fun e!4136350 () Bool)

(declare-fun lt!2457494 () Context!12148)

(assert (=> b!6860695 (= e!4136350 (contains!20348 (t!380114 zl!343) lt!2457494))))

(declare-fun b!6860696 () Bool)

(declare-fun e!4136348 () Bool)

(assert (=> b!6860696 (= e!4136348 (dynLambda!26504 lambda!388029 (h!72695 (t!380114 zl!343))))))

(declare-fun d!2155553 () Bool)

(assert (=> d!2155553 e!4136350))

(declare-fun res!2799482 () Bool)

(assert (=> d!2155553 (=> (not res!2799482) (not e!4136350))))

(assert (=> d!2155553 (= res!2799482 (dynLambda!26504 lambda!388029 lt!2457494))))

(declare-fun e!4136349 () Context!12148)

(assert (=> d!2155553 (= lt!2457494 e!4136349)))

(declare-fun c!1277045 () Bool)

(assert (=> d!2155553 (= c!1277045 e!4136348)))

(declare-fun res!2799483 () Bool)

(assert (=> d!2155553 (=> (not res!2799483) (not e!4136348))))

(assert (=> d!2155553 (= res!2799483 (is-Cons!66247 (t!380114 zl!343)))))

(assert (=> d!2155553 (exists!2811 (t!380114 zl!343) lambda!388029)))

(assert (=> d!2155553 (= (getWitness!969 (t!380114 zl!343) lambda!388029) lt!2457494)))

(declare-fun b!6860697 () Bool)

(assert (=> b!6860697 (= e!4136349 (h!72695 (t!380114 zl!343)))))

(declare-fun b!6860698 () Bool)

(declare-fun e!4136351 () Context!12148)

(assert (=> b!6860698 (= e!4136351 (getWitness!969 (t!380114 (t!380114 zl!343)) lambda!388029))))

(declare-fun b!6860699 () Bool)

(declare-fun lt!2457493 () Unit!160137)

(declare-fun Unit!160143 () Unit!160137)

(assert (=> b!6860699 (= lt!2457493 Unit!160143)))

(assert (=> b!6860699 false))

(assert (=> b!6860699 (= e!4136351 (head!13760 (t!380114 zl!343)))))

(declare-fun b!6860700 () Bool)

(assert (=> b!6860700 (= e!4136349 e!4136351)))

(declare-fun c!1277044 () Bool)

(assert (=> b!6860700 (= c!1277044 (is-Cons!66247 (t!380114 zl!343)))))

(assert (= (and d!2155553 res!2799483) b!6860696))

(assert (= (and d!2155553 c!1277045) b!6860697))

(assert (= (and d!2155553 (not c!1277045)) b!6860700))

(assert (= (and b!6860700 c!1277044) b!6860698))

(assert (= (and b!6860700 (not c!1277044)) b!6860699))

(assert (= (and d!2155553 res!2799482) b!6860695))

(declare-fun b_lambda!259189 () Bool)

(assert (=> (not b_lambda!259189) (not b!6860696)))

(declare-fun b_lambda!259191 () Bool)

(assert (=> (not b_lambda!259191) (not d!2155553)))

(declare-fun m!7595244 () Bool)

(assert (=> d!2155553 m!7595244))

(declare-fun m!7595246 () Bool)

(assert (=> d!2155553 m!7595246))

(declare-fun m!7595248 () Bool)

(assert (=> b!6860698 m!7595248))

(declare-fun m!7595250 () Bool)

(assert (=> b!6860696 m!7595250))

(declare-fun m!7595252 () Bool)

(assert (=> b!6860699 m!7595252))

(declare-fun m!7595254 () Bool)

(assert (=> b!6860695 m!7595254))

(assert (=> b!6860437 d!2155553))

(declare-fun d!2155555 () Bool)

(assert (=> d!2155555 (= (head!13760 zl!343) (h!72695 zl!343))))

(assert (=> b!6860438 d!2155555))

(assert (=> bm!624839 d!2155545))

(assert (=> b!6860300 d!2155539))

(assert (=> d!2155477 d!2155457))

(declare-fun bs!1833418 () Bool)

(declare-fun d!2155557 () Bool)

(assert (= bs!1833418 (and d!2155557 b!6860119)))

(declare-fun lambda!388124 () Int)

(assert (=> bs!1833418 (= lambda!388124 lambda!388030)))

(declare-fun bs!1833419 () Bool)

(assert (= bs!1833419 (and d!2155557 d!2155445)))

(assert (=> bs!1833419 (not (= lambda!388124 lambda!388068))))

(declare-fun bs!1833420 () Bool)

(assert (= bs!1833420 (and d!2155557 d!2155437)))

(assert (=> bs!1833420 (not (= lambda!388124 lambda!388059))))

(declare-fun bs!1833421 () Bool)

(assert (= bs!1833421 (and d!2155557 d!2155475)))

(assert (=> bs!1833421 (= lambda!388124 lambda!388084)))

(assert (=> bs!1833419 (= lambda!388124 lambda!388067)))

(declare-fun bs!1833422 () Bool)

(assert (= bs!1833422 (and d!2155557 b!6860114)))

(assert (=> bs!1833422 (not (= lambda!388124 lambda!388028))))

(declare-fun bs!1833423 () Bool)

(assert (= bs!1833423 (and d!2155557 d!2155453)))

(assert (=> bs!1833423 (= lambda!388124 lambda!388074)))

(declare-fun bs!1833424 () Bool)

(assert (= bs!1833424 (and d!2155557 d!2155461)))

(assert (=> bs!1833424 (= lambda!388124 lambda!388081)))

(declare-fun bs!1833425 () Bool)

(assert (= bs!1833425 (and d!2155557 d!2155447)))

(assert (=> bs!1833425 (= lambda!388124 lambda!388071)))

(declare-fun bs!1833426 () Bool)

(assert (= bs!1833426 (and d!2155557 d!2155529)))

(assert (=> bs!1833426 (not (= lambda!388124 lambda!388117))))

(declare-fun bs!1833427 () Bool)

(assert (= bs!1833427 (and d!2155557 d!2155531)))

(assert (=> bs!1833427 (not (= lambda!388124 lambda!388120))))

(assert (=> d!2155557 (= (inv!84973 (h!72695 (t!380114 zl!343))) (forall!15877 (exprs!6574 (h!72695 (t!380114 zl!343))) lambda!388124))))

(declare-fun bs!1833428 () Bool)

(assert (= bs!1833428 d!2155557))

(declare-fun m!7595256 () Bool)

(assert (=> bs!1833428 m!7595256))

(assert (=> b!6860464 d!2155557))

(declare-fun d!2155559 () Bool)

(declare-fun lt!2457495 () Int)

(assert (=> d!2155559 (>= lt!2457495 0)))

(declare-fun e!4136352 () Int)

(assert (=> d!2155559 (= lt!2457495 e!4136352)))

(declare-fun c!1277046 () Bool)

(assert (=> d!2155559 (= c!1277046 (is-Nil!66247 (t!380114 zl!343)))))

(assert (=> d!2155559 (= (size!40712 (t!380114 zl!343)) lt!2457495)))

(declare-fun b!6860701 () Bool)

(assert (=> b!6860701 (= e!4136352 0)))

(declare-fun b!6860702 () Bool)

(assert (=> b!6860702 (= e!4136352 (+ 1 (size!40712 (t!380114 (t!380114 zl!343)))))))

(assert (= (and d!2155559 c!1277046) b!6860701))

(assert (= (and d!2155559 (not c!1277046)) b!6860702))

(declare-fun m!7595258 () Bool)

(assert (=> b!6860702 m!7595258))

(assert (=> b!6860314 d!2155559))

(declare-fun d!2155561 () Bool)

(declare-fun res!2799484 () Bool)

(declare-fun e!4136353 () Bool)

(assert (=> d!2155561 (=> res!2799484 e!4136353)))

(assert (=> d!2155561 (= res!2799484 (is-Nil!66245 (exprs!6574 lt!2457391)))))

(assert (=> d!2155561 (= (forall!15877 (exprs!6574 lt!2457391) lambda!388084) e!4136353)))

(declare-fun b!6860703 () Bool)

(declare-fun e!4136354 () Bool)

(assert (=> b!6860703 (= e!4136353 e!4136354)))

(declare-fun res!2799485 () Bool)

(assert (=> b!6860703 (=> (not res!2799485) (not e!4136354))))

(assert (=> b!6860703 (= res!2799485 (dynLambda!26503 lambda!388084 (h!72693 (exprs!6574 lt!2457391))))))

(declare-fun b!6860704 () Bool)

(assert (=> b!6860704 (= e!4136354 (forall!15877 (t!380112 (exprs!6574 lt!2457391)) lambda!388084))))

(assert (= (and d!2155561 (not res!2799484)) b!6860703))

(assert (= (and b!6860703 res!2799485) b!6860704))

(declare-fun b_lambda!259193 () Bool)

(assert (=> (not b_lambda!259193) (not b!6860703)))

(declare-fun m!7595260 () Bool)

(assert (=> b!6860703 m!7595260))

(declare-fun m!7595262 () Bool)

(assert (=> b!6860704 m!7595262))

(assert (=> d!2155475 d!2155561))

(declare-fun bs!1833429 () Bool)

(declare-fun d!2155563 () Bool)

(assert (= bs!1833429 (and d!2155563 b!6860119)))

(declare-fun lambda!388127 () Int)

(assert (=> bs!1833429 (= lambda!388127 lambda!388030)))

(declare-fun bs!1833430 () Bool)

(assert (= bs!1833430 (and d!2155563 d!2155445)))

(assert (=> bs!1833430 (not (= lambda!388127 lambda!388068))))

(declare-fun bs!1833431 () Bool)

(assert (= bs!1833431 (and d!2155563 d!2155437)))

(assert (=> bs!1833431 (not (= lambda!388127 lambda!388059))))

(declare-fun bs!1833432 () Bool)

(assert (= bs!1833432 (and d!2155563 d!2155475)))

(assert (=> bs!1833432 (= lambda!388127 lambda!388084)))

(assert (=> bs!1833430 (= lambda!388127 lambda!388067)))

(declare-fun bs!1833433 () Bool)

(assert (= bs!1833433 (and d!2155563 b!6860114)))

(assert (=> bs!1833433 (not (= lambda!388127 lambda!388028))))

(declare-fun bs!1833434 () Bool)

(assert (= bs!1833434 (and d!2155563 d!2155461)))

(assert (=> bs!1833434 (= lambda!388127 lambda!388081)))

(declare-fun bs!1833435 () Bool)

(assert (= bs!1833435 (and d!2155563 d!2155447)))

(assert (=> bs!1833435 (= lambda!388127 lambda!388071)))

(declare-fun bs!1833436 () Bool)

(assert (= bs!1833436 (and d!2155563 d!2155529)))

(assert (=> bs!1833436 (not (= lambda!388127 lambda!388117))))

(declare-fun bs!1833437 () Bool)

(assert (= bs!1833437 (and d!2155563 d!2155531)))

(assert (=> bs!1833437 (not (= lambda!388127 lambda!388120))))

(declare-fun bs!1833438 () Bool)

(assert (= bs!1833438 (and d!2155563 d!2155557)))

(assert (=> bs!1833438 (= lambda!388127 lambda!388124)))

(declare-fun bs!1833439 () Bool)

(assert (= bs!1833439 (and d!2155563 d!2155453)))

(assert (=> bs!1833439 (= lambda!388127 lambda!388074)))

(assert (=> d!2155563 (forall!15877 (exprs!6574 lt!2457391) lambda!388127)))

(assert (=> d!2155563 true))

(declare-fun _$47!955 () Unit!160137)

(assert (=> d!2155563 (= (choose!51132 lt!2457391 (exprs!6574 lt!2457391)) _$47!955)))

(declare-fun bs!1833440 () Bool)

(assert (= bs!1833440 d!2155563))

(declare-fun m!7595264 () Bool)

(assert (=> bs!1833440 m!7595264))

(assert (=> d!2155475 d!2155563))

(declare-fun d!2155565 () Bool)

(declare-fun res!2799486 () Bool)

(declare-fun e!4136355 () Bool)

(assert (=> d!2155565 (=> res!2799486 e!4136355)))

(assert (=> d!2155565 (= res!2799486 (is-Nil!66245 (exprs!6574 setElem!47178)))))

(assert (=> d!2155565 (= (forall!15877 (exprs!6574 setElem!47178) lambda!388081) e!4136355)))

(declare-fun b!6860705 () Bool)

(declare-fun e!4136356 () Bool)

(assert (=> b!6860705 (= e!4136355 e!4136356)))

(declare-fun res!2799487 () Bool)

(assert (=> b!6860705 (=> (not res!2799487) (not e!4136356))))

(assert (=> b!6860705 (= res!2799487 (dynLambda!26503 lambda!388081 (h!72693 (exprs!6574 setElem!47178))))))

(declare-fun b!6860706 () Bool)

(assert (=> b!6860706 (= e!4136356 (forall!15877 (t!380112 (exprs!6574 setElem!47178)) lambda!388081))))

(assert (= (and d!2155565 (not res!2799486)) b!6860705))

(assert (= (and b!6860705 res!2799487) b!6860706))

(declare-fun b_lambda!259195 () Bool)

(assert (=> (not b_lambda!259195) (not b!6860705)))

(declare-fun m!7595266 () Bool)

(assert (=> b!6860705 m!7595266))

(declare-fun m!7595268 () Bool)

(assert (=> b!6860706 m!7595268))

(assert (=> d!2155461 d!2155565))

(assert (=> d!2155431 d!2155425))

(assert (=> d!2155431 d!2155423))

(declare-fun d!2155567 () Bool)

(assert (=> d!2155567 (= (matchR!8873 r!7292 s!2326) (matchRSpec!3791 r!7292 s!2326))))

(assert (=> d!2155567 true))

(declare-fun _$88!5717 () Unit!160137)

(assert (=> d!2155567 (= (choose!51128 r!7292 s!2326) _$88!5717)))

(declare-fun bs!1833441 () Bool)

(assert (= bs!1833441 d!2155567))

(assert (=> bs!1833441 m!7594922))

(assert (=> bs!1833441 m!7594920))

(assert (=> d!2155431 d!2155567))

(assert (=> d!2155431 d!2155465))

(assert (=> d!2155425 d!2155545))

(assert (=> d!2155425 d!2155465))

(declare-fun d!2155569 () Bool)

(declare-fun res!2799488 () Bool)

(declare-fun e!4136359 () Bool)

(assert (=> d!2155569 (=> res!2799488 e!4136359)))

(assert (=> d!2155569 (= res!2799488 (is-ElementMatch!16690 lt!2457457))))

(assert (=> d!2155569 (= (validRegex!8426 lt!2457457) e!4136359)))

(declare-fun b!6860707 () Bool)

(declare-fun e!4136358 () Bool)

(declare-fun e!4136362 () Bool)

(assert (=> b!6860707 (= e!4136358 e!4136362)))

(declare-fun c!1277049 () Bool)

(assert (=> b!6860707 (= c!1277049 (is-Union!16690 lt!2457457))))

(declare-fun b!6860708 () Bool)

(declare-fun e!4136360 () Bool)

(declare-fun e!4136363 () Bool)

(assert (=> b!6860708 (= e!4136360 e!4136363)))

(declare-fun res!2799490 () Bool)

(assert (=> b!6860708 (=> (not res!2799490) (not e!4136363))))

(declare-fun call!624879 () Bool)

(assert (=> b!6860708 (= res!2799490 call!624879)))

(declare-fun b!6860709 () Bool)

(declare-fun e!4136361 () Bool)

(assert (=> b!6860709 (= e!4136358 e!4136361)))

(declare-fun res!2799489 () Bool)

(assert (=> b!6860709 (= res!2799489 (not (nullable!6651 (reg!17019 lt!2457457))))))

(assert (=> b!6860709 (=> (not res!2799489) (not e!4136361))))

(declare-fun b!6860710 () Bool)

(assert (=> b!6860710 (= e!4136359 e!4136358)))

(declare-fun c!1277048 () Bool)

(assert (=> b!6860710 (= c!1277048 (is-Star!16690 lt!2457457))))

(declare-fun b!6860711 () Bool)

(declare-fun res!2799492 () Bool)

(assert (=> b!6860711 (=> res!2799492 e!4136360)))

(assert (=> b!6860711 (= res!2799492 (not (is-Concat!25535 lt!2457457)))))

(assert (=> b!6860711 (= e!4136362 e!4136360)))

(declare-fun bm!624874 () Bool)

(declare-fun call!624880 () Bool)

(assert (=> bm!624874 (= call!624880 (validRegex!8426 (ite c!1277049 (regTwo!33893 lt!2457457) (regTwo!33892 lt!2457457))))))

(declare-fun b!6860712 () Bool)

(declare-fun call!624881 () Bool)

(assert (=> b!6860712 (= e!4136361 call!624881)))

(declare-fun bm!624875 () Bool)

(assert (=> bm!624875 (= call!624879 call!624881)))

(declare-fun b!6860713 () Bool)

(declare-fun e!4136357 () Bool)

(assert (=> b!6860713 (= e!4136357 call!624880)))

(declare-fun b!6860714 () Bool)

(assert (=> b!6860714 (= e!4136363 call!624880)))

(declare-fun bm!624876 () Bool)

(assert (=> bm!624876 (= call!624881 (validRegex!8426 (ite c!1277048 (reg!17019 lt!2457457) (ite c!1277049 (regOne!33893 lt!2457457) (regOne!33892 lt!2457457)))))))

(declare-fun b!6860715 () Bool)

(declare-fun res!2799491 () Bool)

(assert (=> b!6860715 (=> (not res!2799491) (not e!4136357))))

(assert (=> b!6860715 (= res!2799491 call!624879)))

(assert (=> b!6860715 (= e!4136362 e!4136357)))

(assert (= (and d!2155569 (not res!2799488)) b!6860710))

(assert (= (and b!6860710 c!1277048) b!6860709))

(assert (= (and b!6860710 (not c!1277048)) b!6860707))

(assert (= (and b!6860709 res!2799489) b!6860712))

(assert (= (and b!6860707 c!1277049) b!6860715))

(assert (= (and b!6860707 (not c!1277049)) b!6860711))

(assert (= (and b!6860715 res!2799491) b!6860713))

(assert (= (and b!6860711 (not res!2799492)) b!6860708))

(assert (= (and b!6860708 res!2799490) b!6860714))

(assert (= (or b!6860713 b!6860714) bm!624874))

(assert (= (or b!6860715 b!6860708) bm!624875))

(assert (= (or b!6860712 bm!624875) bm!624876))

(declare-fun m!7595270 () Bool)

(assert (=> b!6860709 m!7595270))

(declare-fun m!7595272 () Bool)

(assert (=> bm!624874 m!7595272))

(declare-fun m!7595274 () Bool)

(assert (=> bm!624876 m!7595274))

(assert (=> d!2155469 d!2155569))

(declare-fun bs!1833442 () Bool)

(declare-fun d!2155571 () Bool)

(assert (= bs!1833442 (and d!2155571 b!6860119)))

(declare-fun lambda!388130 () Int)

(assert (=> bs!1833442 (= lambda!388130 lambda!388030)))

(declare-fun bs!1833443 () Bool)

(assert (= bs!1833443 (and d!2155571 d!2155563)))

(assert (=> bs!1833443 (= lambda!388130 lambda!388127)))

(declare-fun bs!1833444 () Bool)

(assert (= bs!1833444 (and d!2155571 d!2155445)))

(assert (=> bs!1833444 (not (= lambda!388130 lambda!388068))))

(declare-fun bs!1833445 () Bool)

(assert (= bs!1833445 (and d!2155571 d!2155437)))

(assert (=> bs!1833445 (not (= lambda!388130 lambda!388059))))

(declare-fun bs!1833446 () Bool)

(assert (= bs!1833446 (and d!2155571 d!2155475)))

(assert (=> bs!1833446 (= lambda!388130 lambda!388084)))

(assert (=> bs!1833444 (= lambda!388130 lambda!388067)))

(declare-fun bs!1833447 () Bool)

(assert (= bs!1833447 (and d!2155571 b!6860114)))

(assert (=> bs!1833447 (not (= lambda!388130 lambda!388028))))

(declare-fun bs!1833448 () Bool)

(assert (= bs!1833448 (and d!2155571 d!2155461)))

(assert (=> bs!1833448 (= lambda!388130 lambda!388081)))

(declare-fun bs!1833449 () Bool)

(assert (= bs!1833449 (and d!2155571 d!2155447)))

(assert (=> bs!1833449 (= lambda!388130 lambda!388071)))

(declare-fun bs!1833450 () Bool)

(assert (= bs!1833450 (and d!2155571 d!2155529)))

(assert (=> bs!1833450 (not (= lambda!388130 lambda!388117))))

(declare-fun bs!1833451 () Bool)

(assert (= bs!1833451 (and d!2155571 d!2155531)))

(assert (=> bs!1833451 (not (= lambda!388130 lambda!388120))))

(declare-fun bs!1833452 () Bool)

(assert (= bs!1833452 (and d!2155571 d!2155557)))

(assert (=> bs!1833452 (= lambda!388130 lambda!388124)))

(declare-fun bs!1833453 () Bool)

(assert (= bs!1833453 (and d!2155571 d!2155453)))

(assert (=> bs!1833453 (= lambda!388130 lambda!388074)))

(declare-fun e!4136377 () Bool)

(assert (=> d!2155571 e!4136377))

(declare-fun res!2799497 () Bool)

(assert (=> d!2155571 (=> (not res!2799497) (not e!4136377))))

(declare-fun lt!2457498 () Regex!16690)

(assert (=> d!2155571 (= res!2799497 (validRegex!8426 lt!2457498))))

(declare-fun e!4136380 () Regex!16690)

(assert (=> d!2155571 (= lt!2457498 e!4136380)))

(declare-fun c!1277061 () Bool)

(declare-fun e!4136376 () Bool)

(assert (=> d!2155571 (= c!1277061 e!4136376)))

(declare-fun res!2799498 () Bool)

(assert (=> d!2155571 (=> (not res!2799498) (not e!4136376))))

(assert (=> d!2155571 (= res!2799498 (is-Cons!66245 (unfocusZipperList!2107 zl!343)))))

(assert (=> d!2155571 (forall!15877 (unfocusZipperList!2107 zl!343) lambda!388130)))

(assert (=> d!2155571 (= (generalisedUnion!2526 (unfocusZipperList!2107 zl!343)) lt!2457498)))

(declare-fun b!6860736 () Bool)

(assert (=> b!6860736 (= e!4136380 (h!72693 (unfocusZipperList!2107 zl!343)))))

(declare-fun b!6860737 () Bool)

(declare-fun e!4136379 () Regex!16690)

(assert (=> b!6860737 (= e!4136379 EmptyLang!16690)))

(declare-fun b!6860738 () Bool)

(declare-fun e!4136378 () Bool)

(assert (=> b!6860738 (= e!4136377 e!4136378)))

(declare-fun c!1277058 () Bool)

(declare-fun isEmpty!38610 (List!66369) Bool)

(assert (=> b!6860738 (= c!1277058 (isEmpty!38610 (unfocusZipperList!2107 zl!343)))))

(declare-fun b!6860739 () Bool)

(assert (=> b!6860739 (= e!4136376 (isEmpty!38610 (t!380112 (unfocusZipperList!2107 zl!343))))))

(declare-fun b!6860740 () Bool)

(assert (=> b!6860740 (= e!4136380 e!4136379)))

(declare-fun c!1277060 () Bool)

(assert (=> b!6860740 (= c!1277060 (is-Cons!66245 (unfocusZipperList!2107 zl!343)))))

(declare-fun b!6860741 () Bool)

(declare-fun isEmptyLang!2022 (Regex!16690) Bool)

(assert (=> b!6860741 (= e!4136378 (isEmptyLang!2022 lt!2457498))))

(declare-fun b!6860742 () Bool)

(declare-fun e!4136381 () Bool)

(declare-fun head!13763 (List!66369) Regex!16690)

(assert (=> b!6860742 (= e!4136381 (= lt!2457498 (head!13763 (unfocusZipperList!2107 zl!343))))))

(declare-fun b!6860743 () Bool)

(assert (=> b!6860743 (= e!4136378 e!4136381)))

(declare-fun c!1277059 () Bool)

(declare-fun tail!12824 (List!66369) List!66369)

(assert (=> b!6860743 (= c!1277059 (isEmpty!38610 (tail!12824 (unfocusZipperList!2107 zl!343))))))

(declare-fun b!6860744 () Bool)

(assert (=> b!6860744 (= e!4136379 (Union!16690 (h!72693 (unfocusZipperList!2107 zl!343)) (generalisedUnion!2526 (t!380112 (unfocusZipperList!2107 zl!343)))))))

(declare-fun b!6860745 () Bool)

(declare-fun isUnion!1452 (Regex!16690) Bool)

(assert (=> b!6860745 (= e!4136381 (isUnion!1452 lt!2457498))))

(assert (= (and d!2155571 res!2799498) b!6860739))

(assert (= (and d!2155571 c!1277061) b!6860736))

(assert (= (and d!2155571 (not c!1277061)) b!6860740))

(assert (= (and b!6860740 c!1277060) b!6860744))

(assert (= (and b!6860740 (not c!1277060)) b!6860737))

(assert (= (and d!2155571 res!2799497) b!6860738))

(assert (= (and b!6860738 c!1277058) b!6860741))

(assert (= (and b!6860738 (not c!1277058)) b!6860743))

(assert (= (and b!6860743 c!1277059) b!6860742))

(assert (= (and b!6860743 (not c!1277059)) b!6860745))

(assert (=> b!6860743 m!7594904))

(declare-fun m!7595276 () Bool)

(assert (=> b!6860743 m!7595276))

(assert (=> b!6860743 m!7595276))

(declare-fun m!7595278 () Bool)

(assert (=> b!6860743 m!7595278))

(declare-fun m!7595280 () Bool)

(assert (=> d!2155571 m!7595280))

(assert (=> d!2155571 m!7594904))

(declare-fun m!7595282 () Bool)

(assert (=> d!2155571 m!7595282))

(declare-fun m!7595284 () Bool)

(assert (=> b!6860744 m!7595284))

(assert (=> b!6860738 m!7594904))

(declare-fun m!7595286 () Bool)

(assert (=> b!6860738 m!7595286))

(assert (=> b!6860742 m!7594904))

(declare-fun m!7595288 () Bool)

(assert (=> b!6860742 m!7595288))

(declare-fun m!7595290 () Bool)

(assert (=> b!6860741 m!7595290))

(declare-fun m!7595292 () Bool)

(assert (=> b!6860745 m!7595292))

(declare-fun m!7595294 () Bool)

(assert (=> b!6860739 m!7595294))

(assert (=> d!2155469 d!2155571))

(assert (=> d!2155469 d!2155447))

(declare-fun bs!1833454 () Bool)

(declare-fun b!6860752 () Bool)

(assert (= bs!1833454 (and b!6860752 b!6860248)))

(declare-fun lambda!388131 () Int)

(assert (=> bs!1833454 (= (and (= (reg!17019 (regTwo!33893 r!7292)) (reg!17019 r!7292)) (= (regTwo!33893 r!7292) r!7292)) (= lambda!388131 lambda!388052))))

(declare-fun bs!1833455 () Bool)

(assert (= bs!1833455 (and b!6860752 b!6860247)))

(assert (=> bs!1833455 (not (= lambda!388131 lambda!388053))))

(assert (=> b!6860752 true))

(assert (=> b!6860752 true))

(declare-fun bs!1833456 () Bool)

(declare-fun b!6860751 () Bool)

(assert (= bs!1833456 (and b!6860751 b!6860248)))

(declare-fun lambda!388132 () Int)

(assert (=> bs!1833456 (not (= lambda!388132 lambda!388052))))

(declare-fun bs!1833457 () Bool)

(assert (= bs!1833457 (and b!6860751 b!6860247)))

(assert (=> bs!1833457 (= (and (= (regOne!33892 (regTwo!33893 r!7292)) (regOne!33892 r!7292)) (= (regTwo!33892 (regTwo!33893 r!7292)) (regTwo!33892 r!7292))) (= lambda!388132 lambda!388053))))

(declare-fun bs!1833458 () Bool)

(assert (= bs!1833458 (and b!6860751 b!6860752)))

(assert (=> bs!1833458 (not (= lambda!388132 lambda!388131))))

(assert (=> b!6860751 true))

(assert (=> b!6860751 true))

(declare-fun bm!624877 () Bool)

(declare-fun call!624883 () Bool)

(assert (=> bm!624877 (= call!624883 (isEmpty!38608 s!2326))))

(declare-fun b!6860746 () Bool)

(declare-fun e!4136383 () Bool)

(declare-fun e!4136386 () Bool)

(assert (=> b!6860746 (= e!4136383 e!4136386)))

(declare-fun res!2799501 () Bool)

(assert (=> b!6860746 (= res!2799501 (not (is-EmptyLang!16690 (regTwo!33893 r!7292))))))

(assert (=> b!6860746 (=> (not res!2799501) (not e!4136386))))

(declare-fun b!6860747 () Bool)

(declare-fun res!2799500 () Bool)

(declare-fun e!4136384 () Bool)

(assert (=> b!6860747 (=> res!2799500 e!4136384)))

(assert (=> b!6860747 (= res!2799500 call!624883)))

(declare-fun e!4136387 () Bool)

(assert (=> b!6860747 (= e!4136387 e!4136384)))

(declare-fun b!6860748 () Bool)

(assert (=> b!6860748 (= e!4136383 call!624883)))

(declare-fun b!6860749 () Bool)

(declare-fun e!4136382 () Bool)

(assert (=> b!6860749 (= e!4136382 (= s!2326 (Cons!66246 (c!1276936 (regTwo!33893 r!7292)) Nil!66246)))))

(declare-fun b!6860750 () Bool)

(declare-fun e!4136385 () Bool)

(assert (=> b!6860750 (= e!4136385 (matchRSpec!3791 (regTwo!33893 (regTwo!33893 r!7292)) s!2326))))

(declare-fun call!624882 () Bool)

(assert (=> b!6860751 (= e!4136387 call!624882)))

(declare-fun d!2155573 () Bool)

(declare-fun c!1277064 () Bool)

(assert (=> d!2155573 (= c!1277064 (is-EmptyExpr!16690 (regTwo!33893 r!7292)))))

(assert (=> d!2155573 (= (matchRSpec!3791 (regTwo!33893 r!7292) s!2326) e!4136383)))

(assert (=> b!6860752 (= e!4136384 call!624882)))

(declare-fun b!6860753 () Bool)

(declare-fun e!4136388 () Bool)

(assert (=> b!6860753 (= e!4136388 e!4136385)))

(declare-fun res!2799499 () Bool)

(assert (=> b!6860753 (= res!2799499 (matchRSpec!3791 (regOne!33893 (regTwo!33893 r!7292)) s!2326))))

(assert (=> b!6860753 (=> res!2799499 e!4136385)))

(declare-fun c!1277063 () Bool)

(declare-fun bm!624878 () Bool)

(assert (=> bm!624878 (= call!624882 (Exists!3750 (ite c!1277063 lambda!388131 lambda!388132)))))

(declare-fun b!6860754 () Bool)

(assert (=> b!6860754 (= e!4136388 e!4136387)))

(assert (=> b!6860754 (= c!1277063 (is-Star!16690 (regTwo!33893 r!7292)))))

(declare-fun b!6860755 () Bool)

(declare-fun c!1277065 () Bool)

(assert (=> b!6860755 (= c!1277065 (is-Union!16690 (regTwo!33893 r!7292)))))

(assert (=> b!6860755 (= e!4136382 e!4136388)))

(declare-fun b!6860756 () Bool)

(declare-fun c!1277062 () Bool)

(assert (=> b!6860756 (= c!1277062 (is-ElementMatch!16690 (regTwo!33893 r!7292)))))

(assert (=> b!6860756 (= e!4136386 e!4136382)))

(assert (= (and d!2155573 c!1277064) b!6860748))

(assert (= (and d!2155573 (not c!1277064)) b!6860746))

(assert (= (and b!6860746 res!2799501) b!6860756))

(assert (= (and b!6860756 c!1277062) b!6860749))

(assert (= (and b!6860756 (not c!1277062)) b!6860755))

(assert (= (and b!6860755 c!1277065) b!6860753))

(assert (= (and b!6860755 (not c!1277065)) b!6860754))

(assert (= (and b!6860753 (not res!2799499)) b!6860750))

(assert (= (and b!6860754 c!1277063) b!6860747))

(assert (= (and b!6860754 (not c!1277063)) b!6860751))

(assert (= (and b!6860747 (not res!2799500)) b!6860752))

(assert (= (or b!6860752 b!6860751) bm!624878))

(assert (= (or b!6860748 b!6860747) bm!624877))

(assert (=> bm!624877 m!7594968))

(declare-fun m!7595296 () Bool)

(assert (=> b!6860750 m!7595296))

(declare-fun m!7595298 () Bool)

(assert (=> b!6860753 m!7595298))

(declare-fun m!7595300 () Bool)

(assert (=> bm!624878 m!7595300))

(assert (=> b!6860246 d!2155573))

(assert (=> b!6860304 d!2155539))

(declare-fun d!2155575 () Bool)

(declare-fun c!1277066 () Bool)

(assert (=> d!2155575 (= c!1277066 (isEmpty!38608 s!2326))))

(declare-fun e!4136389 () Bool)

(assert (=> d!2155575 (= (matchZipper!2656 (set.insert lt!2457466 (as set.empty (Set Context!12148))) s!2326) e!4136389)))

(declare-fun b!6860757 () Bool)

(assert (=> b!6860757 (= e!4136389 (nullableZipper!2364 (set.insert lt!2457466 (as set.empty (Set Context!12148)))))))

(declare-fun b!6860758 () Bool)

(assert (=> b!6860758 (= e!4136389 (matchZipper!2656 (derivationStepZipper!2611 (set.insert lt!2457466 (as set.empty (Set Context!12148))) (head!13759 s!2326)) (tail!12822 s!2326)))))

(assert (= (and d!2155575 c!1277066) b!6860757))

(assert (= (and d!2155575 (not c!1277066)) b!6860758))

(assert (=> d!2155575 m!7594968))

(assert (=> b!6860757 m!7595104))

(declare-fun m!7595302 () Bool)

(assert (=> b!6860757 m!7595302))

(assert (=> b!6860758 m!7594978))

(assert (=> b!6860758 m!7595104))

(assert (=> b!6860758 m!7594978))

(declare-fun m!7595304 () Bool)

(assert (=> b!6860758 m!7595304))

(assert (=> b!6860758 m!7594980))

(assert (=> b!6860758 m!7595304))

(assert (=> b!6860758 m!7594980))

(declare-fun m!7595306 () Bool)

(assert (=> b!6860758 m!7595306))

(assert (=> bs!1833346 d!2155575))

(declare-fun d!2155577 () Bool)

(declare-fun res!2799506 () Bool)

(declare-fun e!4136394 () Bool)

(assert (=> d!2155577 (=> res!2799506 e!4136394)))

(assert (=> d!2155577 (= res!2799506 (is-Nil!66247 lt!2457433))))

(assert (=> d!2155577 (= (noDuplicate!2454 lt!2457433) e!4136394)))

(declare-fun b!6860763 () Bool)

(declare-fun e!4136395 () Bool)

(assert (=> b!6860763 (= e!4136394 e!4136395)))

(declare-fun res!2799507 () Bool)

(assert (=> b!6860763 (=> (not res!2799507) (not e!4136395))))

(assert (=> b!6860763 (= res!2799507 (not (contains!20348 (t!380114 lt!2457433) (h!72695 lt!2457433))))))

(declare-fun b!6860764 () Bool)

(assert (=> b!6860764 (= e!4136395 (noDuplicate!2454 (t!380114 lt!2457433)))))

(assert (= (and d!2155577 (not res!2799506)) b!6860763))

(assert (= (and b!6860763 res!2799507) b!6860764))

(declare-fun m!7595308 () Bool)

(assert (=> b!6860763 m!7595308))

(declare-fun m!7595310 () Bool)

(assert (=> b!6860764 m!7595310))

(assert (=> d!2155441 d!2155577))

(declare-fun d!2155579 () Bool)

(declare-fun e!4136404 () Bool)

(assert (=> d!2155579 e!4136404))

(declare-fun res!2799512 () Bool)

(assert (=> d!2155579 (=> (not res!2799512) (not e!4136404))))

(declare-fun res!2799513 () List!66371)

(assert (=> d!2155579 (= res!2799512 (noDuplicate!2454 res!2799513))))

(declare-fun e!4136402 () Bool)

(assert (=> d!2155579 e!4136402))

(assert (=> d!2155579 (= (choose!51129 z!1189) res!2799513)))

(declare-fun b!6860772 () Bool)

(declare-fun e!4136403 () Bool)

(declare-fun tp!1881404 () Bool)

(assert (=> b!6860772 (= e!4136403 tp!1881404)))

(declare-fun b!6860771 () Bool)

(declare-fun tp!1881405 () Bool)

(assert (=> b!6860771 (= e!4136402 (and (inv!84973 (h!72695 res!2799513)) e!4136403 tp!1881405))))

(declare-fun b!6860773 () Bool)

(assert (=> b!6860773 (= e!4136404 (= (content!13003 res!2799513) z!1189))))

(assert (= b!6860771 b!6860772))

(assert (= (and d!2155579 (is-Cons!66247 res!2799513)) b!6860771))

(assert (= (and d!2155579 res!2799512) b!6860773))

(declare-fun m!7595312 () Bool)

(assert (=> d!2155579 m!7595312))

(declare-fun m!7595314 () Bool)

(assert (=> b!6860771 m!7595314))

(declare-fun m!7595316 () Bool)

(assert (=> b!6860773 m!7595316))

(assert (=> d!2155441 d!2155579))

(declare-fun b!6860774 () Bool)

(declare-fun res!2799520 () Bool)

(declare-fun e!4136410 () Bool)

(assert (=> b!6860774 (=> res!2799520 e!4136410)))

(assert (=> b!6860774 (= res!2799520 (not (isEmpty!38608 (tail!12822 (tail!12822 s!2326)))))))

(declare-fun b!6860775 () Bool)

(declare-fun e!4136409 () Bool)

(assert (=> b!6860775 (= e!4136409 (nullable!6651 (derivativeStep!5333 r!7292 (head!13759 s!2326))))))

(declare-fun b!6860776 () Bool)

(declare-fun res!2799521 () Bool)

(declare-fun e!4136406 () Bool)

(assert (=> b!6860776 (=> res!2799521 e!4136406)))

(declare-fun e!4136407 () Bool)

(assert (=> b!6860776 (= res!2799521 e!4136407)))

(declare-fun res!2799519 () Bool)

(assert (=> b!6860776 (=> (not res!2799519) (not e!4136407))))

(declare-fun lt!2457499 () Bool)

(assert (=> b!6860776 (= res!2799519 lt!2457499)))

(declare-fun b!6860777 () Bool)

(declare-fun res!2799516 () Bool)

(assert (=> b!6860777 (=> (not res!2799516) (not e!4136407))))

(assert (=> b!6860777 (= res!2799516 (isEmpty!38608 (tail!12822 (tail!12822 s!2326))))))

(declare-fun b!6860779 () Bool)

(declare-fun e!4136408 () Bool)

(declare-fun call!624884 () Bool)

(assert (=> b!6860779 (= e!4136408 (= lt!2457499 call!624884))))

(declare-fun b!6860780 () Bool)

(declare-fun res!2799517 () Bool)

(assert (=> b!6860780 (=> (not res!2799517) (not e!4136407))))

(assert (=> b!6860780 (= res!2799517 (not call!624884))))

(declare-fun b!6860781 () Bool)

(declare-fun e!4136405 () Bool)

(assert (=> b!6860781 (= e!4136406 e!4136405)))

(declare-fun res!2799518 () Bool)

(assert (=> b!6860781 (=> (not res!2799518) (not e!4136405))))

(assert (=> b!6860781 (= res!2799518 (not lt!2457499))))

(declare-fun b!6860782 () Bool)

(declare-fun e!4136411 () Bool)

(assert (=> b!6860782 (= e!4136408 e!4136411)))

(declare-fun c!1277069 () Bool)

(assert (=> b!6860782 (= c!1277069 (is-EmptyLang!16690 (derivativeStep!5333 r!7292 (head!13759 s!2326))))))

(declare-fun b!6860783 () Bool)

(assert (=> b!6860783 (= e!4136407 (= (head!13759 (tail!12822 s!2326)) (c!1276936 (derivativeStep!5333 r!7292 (head!13759 s!2326)))))))

(declare-fun b!6860784 () Bool)

(declare-fun res!2799515 () Bool)

(assert (=> b!6860784 (=> res!2799515 e!4136406)))

(assert (=> b!6860784 (= res!2799515 (not (is-ElementMatch!16690 (derivativeStep!5333 r!7292 (head!13759 s!2326)))))))

(assert (=> b!6860784 (= e!4136411 e!4136406)))

(declare-fun d!2155581 () Bool)

(assert (=> d!2155581 e!4136408))

(declare-fun c!1277067 () Bool)

(assert (=> d!2155581 (= c!1277067 (is-EmptyExpr!16690 (derivativeStep!5333 r!7292 (head!13759 s!2326))))))

(assert (=> d!2155581 (= lt!2457499 e!4136409)))

(declare-fun c!1277068 () Bool)

(assert (=> d!2155581 (= c!1277068 (isEmpty!38608 (tail!12822 s!2326)))))

(assert (=> d!2155581 (validRegex!8426 (derivativeStep!5333 r!7292 (head!13759 s!2326)))))

(assert (=> d!2155581 (= (matchR!8873 (derivativeStep!5333 r!7292 (head!13759 s!2326)) (tail!12822 s!2326)) lt!2457499)))

(declare-fun b!6860778 () Bool)

(assert (=> b!6860778 (= e!4136405 e!4136410)))

(declare-fun res!2799514 () Bool)

(assert (=> b!6860778 (=> res!2799514 e!4136410)))

(assert (=> b!6860778 (= res!2799514 call!624884)))

(declare-fun b!6860785 () Bool)

(assert (=> b!6860785 (= e!4136409 (matchR!8873 (derivativeStep!5333 (derivativeStep!5333 r!7292 (head!13759 s!2326)) (head!13759 (tail!12822 s!2326))) (tail!12822 (tail!12822 s!2326))))))

(declare-fun bm!624879 () Bool)

(assert (=> bm!624879 (= call!624884 (isEmpty!38608 (tail!12822 s!2326)))))

(declare-fun b!6860786 () Bool)

(assert (=> b!6860786 (= e!4136411 (not lt!2457499))))

(declare-fun b!6860787 () Bool)

(assert (=> b!6860787 (= e!4136410 (not (= (head!13759 (tail!12822 s!2326)) (c!1276936 (derivativeStep!5333 r!7292 (head!13759 s!2326))))))))

(assert (= (and d!2155581 c!1277068) b!6860775))

(assert (= (and d!2155581 (not c!1277068)) b!6860785))

(assert (= (and d!2155581 c!1277067) b!6860779))

(assert (= (and d!2155581 (not c!1277067)) b!6860782))

(assert (= (and b!6860782 c!1277069) b!6860786))

(assert (= (and b!6860782 (not c!1277069)) b!6860784))

(assert (= (and b!6860784 (not res!2799515)) b!6860776))

(assert (= (and b!6860776 res!2799519) b!6860780))

(assert (= (and b!6860780 res!2799517) b!6860777))

(assert (= (and b!6860777 res!2799516) b!6860783))

(assert (= (and b!6860776 (not res!2799521)) b!6860781))

(assert (= (and b!6860781 res!2799518) b!6860778))

(assert (= (and b!6860778 (not res!2799514)) b!6860774))

(assert (= (and b!6860774 (not res!2799520)) b!6860787))

(assert (= (or b!6860779 b!6860778 b!6860780) bm!624879))

(assert (=> b!6860783 m!7594980))

(assert (=> b!6860783 m!7595212))

(assert (=> b!6860777 m!7594980))

(assert (=> b!6860777 m!7595216))

(assert (=> b!6860777 m!7595216))

(declare-fun m!7595318 () Bool)

(assert (=> b!6860777 m!7595318))

(assert (=> b!6860775 m!7594986))

(declare-fun m!7595320 () Bool)

(assert (=> b!6860775 m!7595320))

(assert (=> b!6860787 m!7594980))

(assert (=> b!6860787 m!7595212))

(assert (=> b!6860785 m!7594980))

(assert (=> b!6860785 m!7595212))

(assert (=> b!6860785 m!7594986))

(assert (=> b!6860785 m!7595212))

(declare-fun m!7595322 () Bool)

(assert (=> b!6860785 m!7595322))

(assert (=> b!6860785 m!7594980))

(assert (=> b!6860785 m!7595216))

(assert (=> b!6860785 m!7595322))

(assert (=> b!6860785 m!7595216))

(declare-fun m!7595324 () Bool)

(assert (=> b!6860785 m!7595324))

(assert (=> d!2155581 m!7594980))

(assert (=> d!2155581 m!7594982))

(assert (=> d!2155581 m!7594986))

(declare-fun m!7595326 () Bool)

(assert (=> d!2155581 m!7595326))

(assert (=> b!6860774 m!7594980))

(assert (=> b!6860774 m!7595216))

(assert (=> b!6860774 m!7595216))

(assert (=> b!6860774 m!7595318))

(assert (=> bm!624879 m!7594980))

(assert (=> bm!624879 m!7594982))

(assert (=> b!6860302 d!2155581))

(declare-fun b!6860808 () Bool)

(declare-fun e!4136425 () Regex!16690)

(assert (=> b!6860808 (= e!4136425 EmptyLang!16690)))

(declare-fun call!624896 () Regex!16690)

(declare-fun b!6860809 () Bool)

(declare-fun e!4136426 () Regex!16690)

(declare-fun call!624894 () Regex!16690)

(assert (=> b!6860809 (= e!4136426 (Union!16690 (Concat!25535 call!624894 (regTwo!33892 r!7292)) call!624896))))

(declare-fun bm!624888 () Bool)

(declare-fun call!624893 () Regex!16690)

(assert (=> bm!624888 (= call!624896 call!624893)))

(declare-fun b!6860810 () Bool)

(assert (=> b!6860810 (= e!4136426 (Union!16690 (Concat!25535 call!624896 (regTwo!33892 r!7292)) EmptyLang!16690))))

(declare-fun d!2155583 () Bool)

(declare-fun lt!2457502 () Regex!16690)

(assert (=> d!2155583 (validRegex!8426 lt!2457502)))

(assert (=> d!2155583 (= lt!2457502 e!4136425)))

(declare-fun c!1277081 () Bool)

(assert (=> d!2155583 (= c!1277081 (or (is-EmptyExpr!16690 r!7292) (is-EmptyLang!16690 r!7292)))))

(assert (=> d!2155583 (validRegex!8426 r!7292)))

(assert (=> d!2155583 (= (derivativeStep!5333 r!7292 (head!13759 s!2326)) lt!2457502)))

(declare-fun b!6860811 () Bool)

(declare-fun e!4136424 () Regex!16690)

(assert (=> b!6860811 (= e!4136424 (Concat!25535 call!624893 r!7292))))

(declare-fun b!6860812 () Bool)

(declare-fun e!4136422 () Regex!16690)

(declare-fun call!624895 () Regex!16690)

(assert (=> b!6860812 (= e!4136422 (Union!16690 call!624894 call!624895))))

(declare-fun bm!624889 () Bool)

(assert (=> bm!624889 (= call!624893 call!624895)))

(declare-fun bm!624890 () Bool)

(declare-fun c!1277080 () Bool)

(assert (=> bm!624890 (= call!624894 (derivativeStep!5333 (ite c!1277080 (regOne!33893 r!7292) (regOne!33892 r!7292)) (head!13759 s!2326)))))

(declare-fun b!6860813 () Bool)

(assert (=> b!6860813 (= e!4136422 e!4136424)))

(declare-fun c!1277083 () Bool)

(assert (=> b!6860813 (= c!1277083 (is-Star!16690 r!7292))))

(declare-fun b!6860814 () Bool)

(assert (=> b!6860814 (= c!1277080 (is-Union!16690 r!7292))))

(declare-fun e!4136423 () Regex!16690)

(assert (=> b!6860814 (= e!4136423 e!4136422)))

(declare-fun b!6860815 () Bool)

(assert (=> b!6860815 (= e!4136425 e!4136423)))

(declare-fun c!1277084 () Bool)

(assert (=> b!6860815 (= c!1277084 (is-ElementMatch!16690 r!7292))))

(declare-fun b!6860816 () Bool)

(assert (=> b!6860816 (= e!4136423 (ite (= (head!13759 s!2326) (c!1276936 r!7292)) EmptyExpr!16690 EmptyLang!16690))))

(declare-fun bm!624891 () Bool)

(declare-fun c!1277082 () Bool)

(assert (=> bm!624891 (= call!624895 (derivativeStep!5333 (ite c!1277080 (regTwo!33893 r!7292) (ite c!1277083 (reg!17019 r!7292) (ite c!1277082 (regTwo!33892 r!7292) (regOne!33892 r!7292)))) (head!13759 s!2326)))))

(declare-fun b!6860817 () Bool)

(assert (=> b!6860817 (= c!1277082 (nullable!6651 (regOne!33892 r!7292)))))

(assert (=> b!6860817 (= e!4136424 e!4136426)))

(assert (= (and d!2155583 c!1277081) b!6860808))

(assert (= (and d!2155583 (not c!1277081)) b!6860815))

(assert (= (and b!6860815 c!1277084) b!6860816))

(assert (= (and b!6860815 (not c!1277084)) b!6860814))

(assert (= (and b!6860814 c!1277080) b!6860812))

(assert (= (and b!6860814 (not c!1277080)) b!6860813))

(assert (= (and b!6860813 c!1277083) b!6860811))

(assert (= (and b!6860813 (not c!1277083)) b!6860817))

(assert (= (and b!6860817 c!1277082) b!6860809))

(assert (= (and b!6860817 (not c!1277082)) b!6860810))

(assert (= (or b!6860809 b!6860810) bm!624888))

(assert (= (or b!6860811 bm!624888) bm!624889))

(assert (= (or b!6860812 bm!624889) bm!624891))

(assert (= (or b!6860812 b!6860809) bm!624890))

(declare-fun m!7595328 () Bool)

(assert (=> d!2155583 m!7595328))

(assert (=> d!2155583 m!7594888))

(assert (=> bm!624890 m!7594978))

(declare-fun m!7595330 () Bool)

(assert (=> bm!624890 m!7595330))

(assert (=> bm!624891 m!7594978))

(declare-fun m!7595332 () Bool)

(assert (=> bm!624891 m!7595332))

(declare-fun m!7595334 () Bool)

(assert (=> b!6860817 m!7595334))

(assert (=> b!6860302 d!2155583))

(assert (=> b!6860302 d!2155539))

(assert (=> b!6860302 d!2155517))

(assert (=> bm!624843 d!2155545))

(declare-fun bs!1833459 () Bool)

(declare-fun d!2155585 () Bool)

(assert (= bs!1833459 (and d!2155585 b!6860119)))

(declare-fun lambda!388135 () Int)

(assert (=> bs!1833459 (= lambda!388135 lambda!388030)))

(declare-fun bs!1833460 () Bool)

(assert (= bs!1833460 (and d!2155585 d!2155563)))

(assert (=> bs!1833460 (= lambda!388135 lambda!388127)))

(declare-fun bs!1833461 () Bool)

(assert (= bs!1833461 (and d!2155585 d!2155571)))

(assert (=> bs!1833461 (= lambda!388135 lambda!388130)))

(declare-fun bs!1833462 () Bool)

(assert (= bs!1833462 (and d!2155585 d!2155445)))

(assert (=> bs!1833462 (not (= lambda!388135 lambda!388068))))

(declare-fun bs!1833463 () Bool)

(assert (= bs!1833463 (and d!2155585 d!2155437)))

(assert (=> bs!1833463 (not (= lambda!388135 lambda!388059))))

(declare-fun bs!1833464 () Bool)

(assert (= bs!1833464 (and d!2155585 d!2155475)))

(assert (=> bs!1833464 (= lambda!388135 lambda!388084)))

(assert (=> bs!1833462 (= lambda!388135 lambda!388067)))

(declare-fun bs!1833465 () Bool)

(assert (= bs!1833465 (and d!2155585 b!6860114)))

(assert (=> bs!1833465 (not (= lambda!388135 lambda!388028))))

(declare-fun bs!1833466 () Bool)

(assert (= bs!1833466 (and d!2155585 d!2155461)))

(assert (=> bs!1833466 (= lambda!388135 lambda!388081)))

(declare-fun bs!1833467 () Bool)

(assert (= bs!1833467 (and d!2155585 d!2155447)))

(assert (=> bs!1833467 (= lambda!388135 lambda!388071)))

(declare-fun bs!1833468 () Bool)

(assert (= bs!1833468 (and d!2155585 d!2155529)))

(assert (=> bs!1833468 (not (= lambda!388135 lambda!388117))))

(declare-fun bs!1833469 () Bool)

(assert (= bs!1833469 (and d!2155585 d!2155531)))

(assert (=> bs!1833469 (not (= lambda!388135 lambda!388120))))

(declare-fun bs!1833470 () Bool)

(assert (= bs!1833470 (and d!2155585 d!2155557)))

(assert (=> bs!1833470 (= lambda!388135 lambda!388124)))

(declare-fun bs!1833471 () Bool)

(assert (= bs!1833471 (and d!2155585 d!2155453)))

(assert (=> bs!1833471 (= lambda!388135 lambda!388074)))

(declare-fun b!6860838 () Bool)

(declare-fun e!4136442 () Bool)

(declare-fun lt!2457505 () Regex!16690)

(declare-fun isConcat!1534 (Regex!16690) Bool)

(assert (=> b!6860838 (= e!4136442 (isConcat!1534 lt!2457505))))

(declare-fun b!6860839 () Bool)

(declare-fun e!4136439 () Bool)

(assert (=> b!6860839 (= e!4136439 (isEmpty!38610 (t!380112 (exprs!6574 (h!72695 zl!343)))))))

(declare-fun b!6860840 () Bool)

(declare-fun e!4136441 () Regex!16690)

(assert (=> b!6860840 (= e!4136441 (h!72693 (exprs!6574 (h!72695 zl!343))))))

(declare-fun b!6860842 () Bool)

(assert (=> b!6860842 (= e!4136442 (= lt!2457505 (head!13763 (exprs!6574 (h!72695 zl!343)))))))

(declare-fun b!6860843 () Bool)

(declare-fun e!4136443 () Bool)

(declare-fun isEmptyExpr!2011 (Regex!16690) Bool)

(assert (=> b!6860843 (= e!4136443 (isEmptyExpr!2011 lt!2457505))))

(declare-fun b!6860844 () Bool)

(declare-fun e!4136440 () Regex!16690)

(assert (=> b!6860844 (= e!4136440 (Concat!25535 (h!72693 (exprs!6574 (h!72695 zl!343))) (generalisedConcat!2278 (t!380112 (exprs!6574 (h!72695 zl!343))))))))

(declare-fun b!6860845 () Bool)

(assert (=> b!6860845 (= e!4136441 e!4136440)))

(declare-fun c!1277096 () Bool)

(assert (=> b!6860845 (= c!1277096 (is-Cons!66245 (exprs!6574 (h!72695 zl!343))))))

(declare-fun e!4136444 () Bool)

(assert (=> d!2155585 e!4136444))

(declare-fun res!2799527 () Bool)

(assert (=> d!2155585 (=> (not res!2799527) (not e!4136444))))

(assert (=> d!2155585 (= res!2799527 (validRegex!8426 lt!2457505))))

(assert (=> d!2155585 (= lt!2457505 e!4136441)))

(declare-fun c!1277093 () Bool)

(assert (=> d!2155585 (= c!1277093 e!4136439)))

(declare-fun res!2799526 () Bool)

(assert (=> d!2155585 (=> (not res!2799526) (not e!4136439))))

(assert (=> d!2155585 (= res!2799526 (is-Cons!66245 (exprs!6574 (h!72695 zl!343))))))

(assert (=> d!2155585 (forall!15877 (exprs!6574 (h!72695 zl!343)) lambda!388135)))

(assert (=> d!2155585 (= (generalisedConcat!2278 (exprs!6574 (h!72695 zl!343))) lt!2457505)))

(declare-fun b!6860841 () Bool)

(assert (=> b!6860841 (= e!4136444 e!4136443)))

(declare-fun c!1277095 () Bool)

(assert (=> b!6860841 (= c!1277095 (isEmpty!38610 (exprs!6574 (h!72695 zl!343))))))

(declare-fun b!6860846 () Bool)

(assert (=> b!6860846 (= e!4136440 EmptyExpr!16690)))

(declare-fun b!6860847 () Bool)

(assert (=> b!6860847 (= e!4136443 e!4136442)))

(declare-fun c!1277094 () Bool)

(assert (=> b!6860847 (= c!1277094 (isEmpty!38610 (tail!12824 (exprs!6574 (h!72695 zl!343)))))))

(assert (= (and d!2155585 res!2799526) b!6860839))

(assert (= (and d!2155585 c!1277093) b!6860840))

(assert (= (and d!2155585 (not c!1277093)) b!6860845))

(assert (= (and b!6860845 c!1277096) b!6860844))

(assert (= (and b!6860845 (not c!1277096)) b!6860846))

(assert (= (and d!2155585 res!2799527) b!6860841))

(assert (= (and b!6860841 c!1277095) b!6860843))

(assert (= (and b!6860841 (not c!1277095)) b!6860847))

(assert (= (and b!6860847 c!1277094) b!6860842))

(assert (= (and b!6860847 (not c!1277094)) b!6860838))

(declare-fun m!7595336 () Bool)

(assert (=> b!6860839 m!7595336))

(declare-fun m!7595338 () Bool)

(assert (=> b!6860844 m!7595338))

(declare-fun m!7595340 () Bool)

(assert (=> b!6860842 m!7595340))

(declare-fun m!7595342 () Bool)

(assert (=> b!6860843 m!7595342))

(declare-fun m!7595344 () Bool)

(assert (=> b!6860838 m!7595344))

(declare-fun m!7595346 () Bool)

(assert (=> b!6860847 m!7595346))

(assert (=> b!6860847 m!7595346))

(declare-fun m!7595348 () Bool)

(assert (=> b!6860847 m!7595348))

(declare-fun m!7595350 () Bool)

(assert (=> b!6860841 m!7595350))

(declare-fun m!7595352 () Bool)

(assert (=> d!2155585 m!7595352))

(declare-fun m!7595354 () Bool)

(assert (=> d!2155585 m!7595354))

(assert (=> b!6860336 d!2155585))

(declare-fun bs!1833472 () Bool)

(declare-fun d!2155587 () Bool)

(assert (= bs!1833472 (and d!2155587 b!6860119)))

(declare-fun lambda!388136 () Int)

(assert (=> bs!1833472 (= lambda!388136 lambda!388030)))

(declare-fun bs!1833473 () Bool)

(assert (= bs!1833473 (and d!2155587 d!2155563)))

(assert (=> bs!1833473 (= lambda!388136 lambda!388127)))

(declare-fun bs!1833474 () Bool)

(assert (= bs!1833474 (and d!2155587 d!2155571)))

(assert (=> bs!1833474 (= lambda!388136 lambda!388130)))

(declare-fun bs!1833475 () Bool)

(assert (= bs!1833475 (and d!2155587 d!2155445)))

(assert (=> bs!1833475 (not (= lambda!388136 lambda!388068))))

(declare-fun bs!1833476 () Bool)

(assert (= bs!1833476 (and d!2155587 d!2155437)))

(assert (=> bs!1833476 (not (= lambda!388136 lambda!388059))))

(declare-fun bs!1833477 () Bool)

(assert (= bs!1833477 (and d!2155587 d!2155475)))

(assert (=> bs!1833477 (= lambda!388136 lambda!388084)))

(assert (=> bs!1833475 (= lambda!388136 lambda!388067)))

(declare-fun bs!1833478 () Bool)

(assert (= bs!1833478 (and d!2155587 b!6860114)))

(assert (=> bs!1833478 (not (= lambda!388136 lambda!388028))))

(declare-fun bs!1833479 () Bool)

(assert (= bs!1833479 (and d!2155587 d!2155447)))

(assert (=> bs!1833479 (= lambda!388136 lambda!388071)))

(declare-fun bs!1833480 () Bool)

(assert (= bs!1833480 (and d!2155587 d!2155529)))

(assert (=> bs!1833480 (not (= lambda!388136 lambda!388117))))

(declare-fun bs!1833481 () Bool)

(assert (= bs!1833481 (and d!2155587 d!2155531)))

(assert (=> bs!1833481 (not (= lambda!388136 lambda!388120))))

(declare-fun bs!1833482 () Bool)

(assert (= bs!1833482 (and d!2155587 d!2155557)))

(assert (=> bs!1833482 (= lambda!388136 lambda!388124)))

(declare-fun bs!1833483 () Bool)

(assert (= bs!1833483 (and d!2155587 d!2155453)))

(assert (=> bs!1833483 (= lambda!388136 lambda!388074)))

(declare-fun bs!1833484 () Bool)

(assert (= bs!1833484 (and d!2155587 d!2155461)))

(assert (=> bs!1833484 (= lambda!388136 lambda!388081)))

(declare-fun bs!1833485 () Bool)

(assert (= bs!1833485 (and d!2155587 d!2155585)))

(assert (=> bs!1833485 (= lambda!388136 lambda!388135)))

(declare-fun lt!2457506 () List!66369)

(assert (=> d!2155587 (forall!15877 lt!2457506 lambda!388136)))

(declare-fun e!4136445 () List!66369)

(assert (=> d!2155587 (= lt!2457506 e!4136445)))

(declare-fun c!1277097 () Bool)

(assert (=> d!2155587 (= c!1277097 (is-Cons!66247 (t!380114 zl!343)))))

(assert (=> d!2155587 (= (unfocusZipperList!2107 (t!380114 zl!343)) lt!2457506)))

(declare-fun b!6860848 () Bool)

(assert (=> b!6860848 (= e!4136445 (Cons!66245 (generalisedConcat!2278 (exprs!6574 (h!72695 (t!380114 zl!343)))) (unfocusZipperList!2107 (t!380114 (t!380114 zl!343)))))))

(declare-fun b!6860849 () Bool)

(assert (=> b!6860849 (= e!4136445 Nil!66245)))

(assert (= (and d!2155587 c!1277097) b!6860848))

(assert (= (and d!2155587 (not c!1277097)) b!6860849))

(declare-fun m!7595356 () Bool)

(assert (=> d!2155587 m!7595356))

(declare-fun m!7595358 () Bool)

(assert (=> b!6860848 m!7595358))

(declare-fun m!7595360 () Bool)

(assert (=> b!6860848 m!7595360))

(assert (=> b!6860336 d!2155587))

(declare-fun d!2155589 () Bool)

(declare-fun res!2799528 () Bool)

(declare-fun e!4136446 () Bool)

(assert (=> d!2155589 (=> res!2799528 e!4136446)))

(assert (=> d!2155589 (= res!2799528 (is-Nil!66245 (t!380112 (exprs!6574 lt!2457391))))))

(assert (=> d!2155589 (= (forall!15877 (t!380112 (exprs!6574 lt!2457391)) lambda!388030) e!4136446)))

(declare-fun b!6860850 () Bool)

(declare-fun e!4136447 () Bool)

(assert (=> b!6860850 (= e!4136446 e!4136447)))

(declare-fun res!2799529 () Bool)

(assert (=> b!6860850 (=> (not res!2799529) (not e!4136447))))

(assert (=> b!6860850 (= res!2799529 (dynLambda!26503 lambda!388030 (h!72693 (t!380112 (exprs!6574 lt!2457391)))))))

(declare-fun b!6860851 () Bool)

(assert (=> b!6860851 (= e!4136447 (forall!15877 (t!380112 (t!380112 (exprs!6574 lt!2457391))) lambda!388030))))

(assert (= (and d!2155589 (not res!2799528)) b!6860850))

(assert (= (and b!6860850 res!2799529) b!6860851))

(declare-fun b_lambda!259197 () Bool)

(assert (=> (not b_lambda!259197) (not b!6860850)))

(declare-fun m!7595362 () Bool)

(assert (=> b!6860850 m!7595362))

(declare-fun m!7595364 () Bool)

(assert (=> b!6860851 m!7595364))

(assert (=> b!6860417 d!2155589))

(declare-fun bs!1833486 () Bool)

(declare-fun d!2155591 () Bool)

(assert (= bs!1833486 (and d!2155591 b!6860119)))

(declare-fun lambda!388137 () Int)

(assert (=> bs!1833486 (= lambda!388137 lambda!388030)))

(declare-fun bs!1833487 () Bool)

(assert (= bs!1833487 (and d!2155591 d!2155563)))

(assert (=> bs!1833487 (= lambda!388137 lambda!388127)))

(declare-fun bs!1833488 () Bool)

(assert (= bs!1833488 (and d!2155591 d!2155571)))

(assert (=> bs!1833488 (= lambda!388137 lambda!388130)))

(declare-fun bs!1833489 () Bool)

(assert (= bs!1833489 (and d!2155591 d!2155445)))

(assert (=> bs!1833489 (not (= lambda!388137 lambda!388068))))

(declare-fun bs!1833490 () Bool)

(assert (= bs!1833490 (and d!2155591 d!2155437)))

(assert (=> bs!1833490 (not (= lambda!388137 lambda!388059))))

(declare-fun bs!1833491 () Bool)

(assert (= bs!1833491 (and d!2155591 d!2155475)))

(assert (=> bs!1833491 (= lambda!388137 lambda!388084)))

(assert (=> bs!1833489 (= lambda!388137 lambda!388067)))

(declare-fun bs!1833492 () Bool)

(assert (= bs!1833492 (and d!2155591 b!6860114)))

(assert (=> bs!1833492 (not (= lambda!388137 lambda!388028))))

(declare-fun bs!1833493 () Bool)

(assert (= bs!1833493 (and d!2155591 d!2155587)))

(assert (=> bs!1833493 (= lambda!388137 lambda!388136)))

(declare-fun bs!1833494 () Bool)

(assert (= bs!1833494 (and d!2155591 d!2155447)))

(assert (=> bs!1833494 (= lambda!388137 lambda!388071)))

(declare-fun bs!1833495 () Bool)

(assert (= bs!1833495 (and d!2155591 d!2155529)))

(assert (=> bs!1833495 (not (= lambda!388137 lambda!388117))))

(declare-fun bs!1833496 () Bool)

(assert (= bs!1833496 (and d!2155591 d!2155531)))

(assert (=> bs!1833496 (not (= lambda!388137 lambda!388120))))

(declare-fun bs!1833497 () Bool)

(assert (= bs!1833497 (and d!2155591 d!2155557)))

(assert (=> bs!1833497 (= lambda!388137 lambda!388124)))

(declare-fun bs!1833498 () Bool)

(assert (= bs!1833498 (and d!2155591 d!2155453)))

(assert (=> bs!1833498 (= lambda!388137 lambda!388074)))

(declare-fun bs!1833499 () Bool)

(assert (= bs!1833499 (and d!2155591 d!2155461)))

(assert (=> bs!1833499 (= lambda!388137 lambda!388081)))

(declare-fun bs!1833500 () Bool)

(assert (= bs!1833500 (and d!2155591 d!2155585)))

(assert (=> bs!1833500 (= lambda!388137 lambda!388135)))

(assert (=> d!2155591 (= (inv!84973 setElem!47184) (forall!15877 (exprs!6574 setElem!47184) lambda!388137))))

(declare-fun bs!1833501 () Bool)

(assert (= bs!1833501 d!2155591))

(declare-fun m!7595366 () Bool)

(assert (=> bs!1833501 m!7595366))

(assert (=> setNonEmpty!47184 d!2155591))

(declare-fun d!2155593 () Bool)

(declare-fun res!2799530 () Bool)

(declare-fun e!4136448 () Bool)

(assert (=> d!2155593 (=> res!2799530 e!4136448)))

(assert (=> d!2155593 (= res!2799530 (is-Nil!66245 lt!2457443))))

(assert (=> d!2155593 (= (forall!15877 lt!2457443 lambda!388071) e!4136448)))

(declare-fun b!6860852 () Bool)

(declare-fun e!4136449 () Bool)

(assert (=> b!6860852 (= e!4136448 e!4136449)))

(declare-fun res!2799531 () Bool)

(assert (=> b!6860852 (=> (not res!2799531) (not e!4136449))))

(assert (=> b!6860852 (= res!2799531 (dynLambda!26503 lambda!388071 (h!72693 lt!2457443)))))

(declare-fun b!6860853 () Bool)

(assert (=> b!6860853 (= e!4136449 (forall!15877 (t!380112 lt!2457443) lambda!388071))))

(assert (= (and d!2155593 (not res!2799530)) b!6860852))

(assert (= (and b!6860852 res!2799531) b!6860853))

(declare-fun b_lambda!259199 () Bool)

(assert (=> (not b_lambda!259199) (not b!6860852)))

(declare-fun m!7595368 () Bool)

(assert (=> b!6860852 m!7595368))

(declare-fun m!7595370 () Bool)

(assert (=> b!6860853 m!7595370))

(assert (=> d!2155447 d!2155593))

(declare-fun d!2155595 () Bool)

(declare-fun res!2799536 () Bool)

(declare-fun e!4136454 () Bool)

(assert (=> d!2155595 (=> res!2799536 e!4136454)))

(assert (=> d!2155595 (= res!2799536 (is-Nil!66247 zl!343))))

(assert (=> d!2155595 (= (forall!15879 zl!343 lambda!388077) e!4136454)))

(declare-fun b!6860858 () Bool)

(declare-fun e!4136455 () Bool)

(assert (=> b!6860858 (= e!4136454 e!4136455)))

(declare-fun res!2799537 () Bool)

(assert (=> b!6860858 (=> (not res!2799537) (not e!4136455))))

(assert (=> b!6860858 (= res!2799537 (dynLambda!26504 lambda!388077 (h!72695 zl!343)))))

(declare-fun b!6860859 () Bool)

(assert (=> b!6860859 (= e!4136455 (forall!15879 (t!380114 zl!343) lambda!388077))))

(assert (= (and d!2155595 (not res!2799536)) b!6860858))

(assert (= (and b!6860858 res!2799537) b!6860859))

(declare-fun b_lambda!259201 () Bool)

(assert (=> (not b_lambda!259201) (not b!6860858)))

(declare-fun m!7595372 () Bool)

(assert (=> b!6860858 m!7595372))

(declare-fun m!7595374 () Bool)

(assert (=> b!6860859 m!7595374))

(assert (=> d!2155457 d!2155595))

(declare-fun d!2155597 () Bool)

(declare-fun res!2799538 () Bool)

(declare-fun e!4136458 () Bool)

(assert (=> d!2155597 (=> res!2799538 e!4136458)))

(assert (=> d!2155597 (= res!2799538 (is-ElementMatch!16690 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))))))

(assert (=> d!2155597 (= (validRegex!8426 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) e!4136458)))

(declare-fun b!6860860 () Bool)

(declare-fun e!4136457 () Bool)

(declare-fun e!4136461 () Bool)

(assert (=> b!6860860 (= e!4136457 e!4136461)))

(declare-fun c!1277099 () Bool)

(assert (=> b!6860860 (= c!1277099 (is-Union!16690 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))))))

(declare-fun b!6860861 () Bool)

(declare-fun e!4136459 () Bool)

(declare-fun e!4136462 () Bool)

(assert (=> b!6860861 (= e!4136459 e!4136462)))

(declare-fun res!2799540 () Bool)

(assert (=> b!6860861 (=> (not res!2799540) (not e!4136462))))

(declare-fun call!624897 () Bool)

(assert (=> b!6860861 (= res!2799540 call!624897)))

(declare-fun b!6860862 () Bool)

(declare-fun e!4136460 () Bool)

(assert (=> b!6860862 (= e!4136457 e!4136460)))

(declare-fun res!2799539 () Bool)

(assert (=> b!6860862 (= res!2799539 (not (nullable!6651 (reg!17019 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))))))))

(assert (=> b!6860862 (=> (not res!2799539) (not e!4136460))))

(declare-fun b!6860863 () Bool)

(assert (=> b!6860863 (= e!4136458 e!4136457)))

(declare-fun c!1277098 () Bool)

(assert (=> b!6860863 (= c!1277098 (is-Star!16690 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))))))

(declare-fun b!6860864 () Bool)

(declare-fun res!2799542 () Bool)

(assert (=> b!6860864 (=> res!2799542 e!4136459)))

(assert (=> b!6860864 (= res!2799542 (not (is-Concat!25535 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292)))))))

(assert (=> b!6860864 (= e!4136461 e!4136459)))

(declare-fun call!624898 () Bool)

(declare-fun bm!624892 () Bool)

(assert (=> bm!624892 (= call!624898 (validRegex!8426 (ite c!1277099 (regTwo!33893 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (regTwo!33892 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))))))))

(declare-fun b!6860865 () Bool)

(declare-fun call!624899 () Bool)

(assert (=> b!6860865 (= e!4136460 call!624899)))

(declare-fun bm!624893 () Bool)

(assert (=> bm!624893 (= call!624897 call!624899)))

(declare-fun b!6860866 () Bool)

(declare-fun e!4136456 () Bool)

(assert (=> b!6860866 (= e!4136456 call!624898)))

(declare-fun b!6860867 () Bool)

(assert (=> b!6860867 (= e!4136462 call!624898)))

(declare-fun bm!624894 () Bool)

(assert (=> bm!624894 (= call!624899 (validRegex!8426 (ite c!1277098 (reg!17019 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (ite c!1277099 (regOne!33893 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (regOne!33892 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292)))))))))

(declare-fun b!6860868 () Bool)

(declare-fun res!2799541 () Bool)

(assert (=> b!6860868 (=> (not res!2799541) (not e!4136456))))

(assert (=> b!6860868 (= res!2799541 call!624897)))

(assert (=> b!6860868 (= e!4136461 e!4136456)))

(assert (= (and d!2155597 (not res!2799538)) b!6860863))

(assert (= (and b!6860863 c!1277098) b!6860862))

(assert (= (and b!6860863 (not c!1277098)) b!6860860))

(assert (= (and b!6860862 res!2799539) b!6860865))

(assert (= (and b!6860860 c!1277099) b!6860868))

(assert (= (and b!6860860 (not c!1277099)) b!6860864))

(assert (= (and b!6860868 res!2799541) b!6860866))

(assert (= (and b!6860864 (not res!2799542)) b!6860861))

(assert (= (and b!6860861 res!2799540) b!6860867))

(assert (= (or b!6860866 b!6860867) bm!624892))

(assert (= (or b!6860868 b!6860861) bm!624893))

(assert (= (or b!6860865 bm!624893) bm!624894))

(declare-fun m!7595376 () Bool)

(assert (=> b!6860862 m!7595376))

(declare-fun m!7595378 () Bool)

(assert (=> bm!624892 m!7595378))

(declare-fun m!7595380 () Bool)

(assert (=> bm!624894 m!7595380))

(assert (=> bm!624859 d!2155597))

(declare-fun d!2155599 () Bool)

(declare-fun res!2799543 () Bool)

(declare-fun e!4136465 () Bool)

(assert (=> d!2155599 (=> res!2799543 e!4136465)))

(assert (=> d!2155599 (= res!2799543 (is-ElementMatch!16690 (h!72693 (exprs!6574 lt!2457391))))))

(assert (=> d!2155599 (= (validRegex!8426 (h!72693 (exprs!6574 lt!2457391))) e!4136465)))

(declare-fun b!6860869 () Bool)

(declare-fun e!4136464 () Bool)

(declare-fun e!4136468 () Bool)

(assert (=> b!6860869 (= e!4136464 e!4136468)))

(declare-fun c!1277101 () Bool)

(assert (=> b!6860869 (= c!1277101 (is-Union!16690 (h!72693 (exprs!6574 lt!2457391))))))

(declare-fun b!6860870 () Bool)

(declare-fun e!4136466 () Bool)

(declare-fun e!4136469 () Bool)

(assert (=> b!6860870 (= e!4136466 e!4136469)))

(declare-fun res!2799545 () Bool)

(assert (=> b!6860870 (=> (not res!2799545) (not e!4136469))))

(declare-fun call!624900 () Bool)

(assert (=> b!6860870 (= res!2799545 call!624900)))

(declare-fun b!6860871 () Bool)

(declare-fun e!4136467 () Bool)

(assert (=> b!6860871 (= e!4136464 e!4136467)))

(declare-fun res!2799544 () Bool)

(assert (=> b!6860871 (= res!2799544 (not (nullable!6651 (reg!17019 (h!72693 (exprs!6574 lt!2457391))))))))

(assert (=> b!6860871 (=> (not res!2799544) (not e!4136467))))

(declare-fun b!6860872 () Bool)

(assert (=> b!6860872 (= e!4136465 e!4136464)))

(declare-fun c!1277100 () Bool)

(assert (=> b!6860872 (= c!1277100 (is-Star!16690 (h!72693 (exprs!6574 lt!2457391))))))

(declare-fun b!6860873 () Bool)

(declare-fun res!2799547 () Bool)

(assert (=> b!6860873 (=> res!2799547 e!4136466)))

(assert (=> b!6860873 (= res!2799547 (not (is-Concat!25535 (h!72693 (exprs!6574 lt!2457391)))))))

(assert (=> b!6860873 (= e!4136468 e!4136466)))

(declare-fun bm!624895 () Bool)

(declare-fun call!624901 () Bool)

(assert (=> bm!624895 (= call!624901 (validRegex!8426 (ite c!1277101 (regTwo!33893 (h!72693 (exprs!6574 lt!2457391))) (regTwo!33892 (h!72693 (exprs!6574 lt!2457391))))))))

(declare-fun b!6860874 () Bool)

(declare-fun call!624902 () Bool)

(assert (=> b!6860874 (= e!4136467 call!624902)))

(declare-fun bm!624896 () Bool)

(assert (=> bm!624896 (= call!624900 call!624902)))

(declare-fun b!6860875 () Bool)

(declare-fun e!4136463 () Bool)

(assert (=> b!6860875 (= e!4136463 call!624901)))

(declare-fun b!6860876 () Bool)

(assert (=> b!6860876 (= e!4136469 call!624901)))

(declare-fun bm!624897 () Bool)

(assert (=> bm!624897 (= call!624902 (validRegex!8426 (ite c!1277100 (reg!17019 (h!72693 (exprs!6574 lt!2457391))) (ite c!1277101 (regOne!33893 (h!72693 (exprs!6574 lt!2457391))) (regOne!33892 (h!72693 (exprs!6574 lt!2457391)))))))))

(declare-fun b!6860877 () Bool)

(declare-fun res!2799546 () Bool)

(assert (=> b!6860877 (=> (not res!2799546) (not e!4136463))))

(assert (=> b!6860877 (= res!2799546 call!624900)))

(assert (=> b!6860877 (= e!4136468 e!4136463)))

(assert (= (and d!2155599 (not res!2799543)) b!6860872))

(assert (= (and b!6860872 c!1277100) b!6860871))

(assert (= (and b!6860872 (not c!1277100)) b!6860869))

(assert (= (and b!6860871 res!2799544) b!6860874))

(assert (= (and b!6860869 c!1277101) b!6860877))

(assert (= (and b!6860869 (not c!1277101)) b!6860873))

(assert (= (and b!6860877 res!2799546) b!6860875))

(assert (= (and b!6860873 (not res!2799547)) b!6860870))

(assert (= (and b!6860870 res!2799545) b!6860876))

(assert (= (or b!6860875 b!6860876) bm!624895))

(assert (= (or b!6860877 b!6860870) bm!624896))

(assert (= (or b!6860874 bm!624896) bm!624897))

(declare-fun m!7595382 () Bool)

(assert (=> b!6860871 m!7595382))

(declare-fun m!7595384 () Bool)

(assert (=> bm!624895 m!7595384))

(declare-fun m!7595386 () Bool)

(assert (=> bm!624897 m!7595386))

(assert (=> bs!1833344 d!2155599))

(declare-fun d!2155601 () Bool)

(declare-fun res!2799548 () Bool)

(declare-fun e!4136470 () Bool)

(assert (=> d!2155601 (=> res!2799548 e!4136470)))

(assert (=> d!2155601 (= res!2799548 (is-Nil!66245 lt!2457393))))

(assert (=> d!2155601 (= (forall!15877 lt!2457393 lambda!388059) e!4136470)))

(declare-fun b!6860878 () Bool)

(declare-fun e!4136471 () Bool)

(assert (=> b!6860878 (= e!4136470 e!4136471)))

(declare-fun res!2799549 () Bool)

(assert (=> b!6860878 (=> (not res!2799549) (not e!4136471))))

(assert (=> b!6860878 (= res!2799549 (dynLambda!26503 lambda!388059 (h!72693 lt!2457393)))))

(declare-fun b!6860879 () Bool)

(assert (=> b!6860879 (= e!4136471 (forall!15877 (t!380112 lt!2457393) lambda!388059))))

(assert (= (and d!2155601 (not res!2799548)) b!6860878))

(assert (= (and b!6860878 res!2799549) b!6860879))

(declare-fun b_lambda!259203 () Bool)

(assert (=> (not b_lambda!259203) (not b!6860878)))

(declare-fun m!7595388 () Bool)

(assert (=> b!6860878 m!7595388))

(declare-fun m!7595390 () Bool)

(assert (=> b!6860879 m!7595390))

(assert (=> d!2155437 d!2155601))

(declare-fun bs!1833502 () Bool)

(declare-fun b!6860886 () Bool)

(assert (= bs!1833502 (and b!6860886 b!6860248)))

(declare-fun lambda!388138 () Int)

(assert (=> bs!1833502 (= (and (= (reg!17019 (regOne!33893 r!7292)) (reg!17019 r!7292)) (= (regOne!33893 r!7292) r!7292)) (= lambda!388138 lambda!388052))))

(declare-fun bs!1833503 () Bool)

(assert (= bs!1833503 (and b!6860886 b!6860247)))

(assert (=> bs!1833503 (not (= lambda!388138 lambda!388053))))

(declare-fun bs!1833504 () Bool)

(assert (= bs!1833504 (and b!6860886 b!6860752)))

(assert (=> bs!1833504 (= (and (= (reg!17019 (regOne!33893 r!7292)) (reg!17019 (regTwo!33893 r!7292))) (= (regOne!33893 r!7292) (regTwo!33893 r!7292))) (= lambda!388138 lambda!388131))))

(declare-fun bs!1833505 () Bool)

(assert (= bs!1833505 (and b!6860886 b!6860751)))

(assert (=> bs!1833505 (not (= lambda!388138 lambda!388132))))

(assert (=> b!6860886 true))

(assert (=> b!6860886 true))

(declare-fun bs!1833506 () Bool)

(declare-fun b!6860885 () Bool)

(assert (= bs!1833506 (and b!6860885 b!6860886)))

(declare-fun lambda!388139 () Int)

(assert (=> bs!1833506 (not (= lambda!388139 lambda!388138))))

(declare-fun bs!1833507 () Bool)

(assert (= bs!1833507 (and b!6860885 b!6860248)))

(assert (=> bs!1833507 (not (= lambda!388139 lambda!388052))))

(declare-fun bs!1833508 () Bool)

(assert (= bs!1833508 (and b!6860885 b!6860751)))

(assert (=> bs!1833508 (= (and (= (regOne!33892 (regOne!33893 r!7292)) (regOne!33892 (regTwo!33893 r!7292))) (= (regTwo!33892 (regOne!33893 r!7292)) (regTwo!33892 (regTwo!33893 r!7292)))) (= lambda!388139 lambda!388132))))

(declare-fun bs!1833509 () Bool)

(assert (= bs!1833509 (and b!6860885 b!6860247)))

(assert (=> bs!1833509 (= (and (= (regOne!33892 (regOne!33893 r!7292)) (regOne!33892 r!7292)) (= (regTwo!33892 (regOne!33893 r!7292)) (regTwo!33892 r!7292))) (= lambda!388139 lambda!388053))))

(declare-fun bs!1833510 () Bool)

(assert (= bs!1833510 (and b!6860885 b!6860752)))

(assert (=> bs!1833510 (not (= lambda!388139 lambda!388131))))

(assert (=> b!6860885 true))

(assert (=> b!6860885 true))

(declare-fun bm!624898 () Bool)

(declare-fun call!624904 () Bool)

(assert (=> bm!624898 (= call!624904 (isEmpty!38608 s!2326))))

(declare-fun b!6860880 () Bool)

(declare-fun e!4136473 () Bool)

(declare-fun e!4136476 () Bool)

(assert (=> b!6860880 (= e!4136473 e!4136476)))

(declare-fun res!2799552 () Bool)

(assert (=> b!6860880 (= res!2799552 (not (is-EmptyLang!16690 (regOne!33893 r!7292))))))

(assert (=> b!6860880 (=> (not res!2799552) (not e!4136476))))

(declare-fun b!6860881 () Bool)

(declare-fun res!2799551 () Bool)

(declare-fun e!4136474 () Bool)

(assert (=> b!6860881 (=> res!2799551 e!4136474)))

(assert (=> b!6860881 (= res!2799551 call!624904)))

(declare-fun e!4136477 () Bool)

(assert (=> b!6860881 (= e!4136477 e!4136474)))

(declare-fun b!6860882 () Bool)

(assert (=> b!6860882 (= e!4136473 call!624904)))

(declare-fun b!6860883 () Bool)

(declare-fun e!4136472 () Bool)

(assert (=> b!6860883 (= e!4136472 (= s!2326 (Cons!66246 (c!1276936 (regOne!33893 r!7292)) Nil!66246)))))

(declare-fun b!6860884 () Bool)

(declare-fun e!4136475 () Bool)

(assert (=> b!6860884 (= e!4136475 (matchRSpec!3791 (regTwo!33893 (regOne!33893 r!7292)) s!2326))))

(declare-fun call!624903 () Bool)

(assert (=> b!6860885 (= e!4136477 call!624903)))

(declare-fun d!2155603 () Bool)

(declare-fun c!1277104 () Bool)

(assert (=> d!2155603 (= c!1277104 (is-EmptyExpr!16690 (regOne!33893 r!7292)))))

(assert (=> d!2155603 (= (matchRSpec!3791 (regOne!33893 r!7292) s!2326) e!4136473)))

(assert (=> b!6860886 (= e!4136474 call!624903)))

(declare-fun b!6860887 () Bool)

(declare-fun e!4136478 () Bool)

(assert (=> b!6860887 (= e!4136478 e!4136475)))

(declare-fun res!2799550 () Bool)

(assert (=> b!6860887 (= res!2799550 (matchRSpec!3791 (regOne!33893 (regOne!33893 r!7292)) s!2326))))

(assert (=> b!6860887 (=> res!2799550 e!4136475)))

(declare-fun bm!624899 () Bool)

(declare-fun c!1277103 () Bool)

(assert (=> bm!624899 (= call!624903 (Exists!3750 (ite c!1277103 lambda!388138 lambda!388139)))))

(declare-fun b!6860888 () Bool)

(assert (=> b!6860888 (= e!4136478 e!4136477)))

(assert (=> b!6860888 (= c!1277103 (is-Star!16690 (regOne!33893 r!7292)))))

(declare-fun b!6860889 () Bool)

(declare-fun c!1277105 () Bool)

(assert (=> b!6860889 (= c!1277105 (is-Union!16690 (regOne!33893 r!7292)))))

(assert (=> b!6860889 (= e!4136472 e!4136478)))

(declare-fun b!6860890 () Bool)

(declare-fun c!1277102 () Bool)

(assert (=> b!6860890 (= c!1277102 (is-ElementMatch!16690 (regOne!33893 r!7292)))))

(assert (=> b!6860890 (= e!4136476 e!4136472)))

(assert (= (and d!2155603 c!1277104) b!6860882))

(assert (= (and d!2155603 (not c!1277104)) b!6860880))

(assert (= (and b!6860880 res!2799552) b!6860890))

(assert (= (and b!6860890 c!1277102) b!6860883))

(assert (= (and b!6860890 (not c!1277102)) b!6860889))

(assert (= (and b!6860889 c!1277105) b!6860887))

(assert (= (and b!6860889 (not c!1277105)) b!6860888))

(assert (= (and b!6860887 (not res!2799550)) b!6860884))

(assert (= (and b!6860888 c!1277103) b!6860881))

(assert (= (and b!6860888 (not c!1277103)) b!6860885))

(assert (= (and b!6860881 (not res!2799551)) b!6860886))

(assert (= (or b!6860886 b!6860885) bm!624899))

(assert (= (or b!6860882 b!6860881) bm!624898))

(assert (=> bm!624898 m!7594968))

(declare-fun m!7595392 () Bool)

(assert (=> b!6860884 m!7595392))

(declare-fun m!7595394 () Bool)

(assert (=> b!6860887 m!7595394))

(declare-fun m!7595396 () Bool)

(assert (=> bm!624899 m!7595396))

(assert (=> b!6860249 d!2155603))

(declare-fun d!2155605 () Bool)

(declare-fun c!1277106 () Bool)

(assert (=> d!2155605 (= c!1277106 (is-Nil!66247 lt!2457433))))

(declare-fun e!4136479 () (Set Context!12148))

(assert (=> d!2155605 (= (content!13003 lt!2457433) e!4136479)))

(declare-fun b!6860891 () Bool)

(assert (=> b!6860891 (= e!4136479 (as set.empty (Set Context!12148)))))

(declare-fun b!6860892 () Bool)

(assert (=> b!6860892 (= e!4136479 (set.union (set.insert (h!72695 lt!2457433) (as set.empty (Set Context!12148))) (content!13003 (t!380114 lt!2457433))))))

(assert (= (and d!2155605 c!1277106) b!6860891))

(assert (= (and d!2155605 (not c!1277106)) b!6860892))

(declare-fun m!7595398 () Bool)

(assert (=> b!6860892 m!7595398))

(declare-fun m!7595400 () Bool)

(assert (=> b!6860892 m!7595400))

(assert (=> b!6860317 d!2155605))

(declare-fun d!2155607 () Bool)

(assert (=> d!2155607 (= (nullable!6651 (reg!17019 r!7292)) (nullableFct!2527 (reg!17019 r!7292)))))

(declare-fun bs!1833511 () Bool)

(assert (= bs!1833511 d!2155607))

(declare-fun m!7595402 () Bool)

(assert (=> bs!1833511 m!7595402))

(assert (=> b!6860405 d!2155607))

(assert (=> d!2155463 d!2155527))

(declare-fun d!2155609 () Bool)

(declare-fun choose!51138 (Int) Bool)

(assert (=> d!2155609 (= (Exists!3750 (ite c!1276949 lambda!388052 lambda!388053)) (choose!51138 (ite c!1276949 lambda!388052 lambda!388053)))))

(declare-fun bs!1833512 () Bool)

(assert (= bs!1833512 d!2155609))

(declare-fun m!7595404 () Bool)

(assert (=> bs!1833512 m!7595404))

(assert (=> bm!624840 d!2155609))

(declare-fun d!2155611 () Bool)

(declare-fun res!2799553 () Bool)

(declare-fun e!4136480 () Bool)

(assert (=> d!2155611 (=> res!2799553 e!4136480)))

(assert (=> d!2155611 (= res!2799553 (is-Nil!66245 (exprs!6574 (h!72695 zl!343))))))

(assert (=> d!2155611 (= (forall!15877 (exprs!6574 (h!72695 zl!343)) lambda!388074) e!4136480)))

(declare-fun b!6860893 () Bool)

(declare-fun e!4136481 () Bool)

(assert (=> b!6860893 (= e!4136480 e!4136481)))

(declare-fun res!2799554 () Bool)

(assert (=> b!6860893 (=> (not res!2799554) (not e!4136481))))

(assert (=> b!6860893 (= res!2799554 (dynLambda!26503 lambda!388074 (h!72693 (exprs!6574 (h!72695 zl!343)))))))

(declare-fun b!6860894 () Bool)

(assert (=> b!6860894 (= e!4136481 (forall!15877 (t!380112 (exprs!6574 (h!72695 zl!343))) lambda!388074))))

(assert (= (and d!2155611 (not res!2799553)) b!6860893))

(assert (= (and b!6860893 res!2799554) b!6860894))

(declare-fun b_lambda!259205 () Bool)

(assert (=> (not b_lambda!259205) (not b!6860893)))

(declare-fun m!7595406 () Bool)

(assert (=> b!6860893 m!7595406))

(declare-fun m!7595408 () Bool)

(assert (=> b!6860894 m!7595408))

(assert (=> d!2155453 d!2155611))

(declare-fun b!6860898 () Bool)

(declare-fun e!4136482 () Bool)

(declare-fun tp!1881408 () Bool)

(declare-fun tp!1881409 () Bool)

(assert (=> b!6860898 (= e!4136482 (and tp!1881408 tp!1881409))))

(declare-fun b!6860897 () Bool)

(declare-fun tp!1881407 () Bool)

(assert (=> b!6860897 (= e!4136482 tp!1881407)))

(declare-fun b!6860895 () Bool)

(assert (=> b!6860895 (= e!4136482 tp_is_empty!42633)))

(assert (=> b!6860498 (= tp!1881323 e!4136482)))

(declare-fun b!6860896 () Bool)

(declare-fun tp!1881410 () Bool)

(declare-fun tp!1881406 () Bool)

(assert (=> b!6860896 (= e!4136482 (and tp!1881410 tp!1881406))))

(assert (= (and b!6860498 (is-ElementMatch!16690 (regOne!33892 (regOne!33892 r!7292)))) b!6860895))

(assert (= (and b!6860498 (is-Concat!25535 (regOne!33892 (regOne!33892 r!7292)))) b!6860896))

(assert (= (and b!6860498 (is-Star!16690 (regOne!33892 (regOne!33892 r!7292)))) b!6860897))

(assert (= (and b!6860498 (is-Union!16690 (regOne!33892 (regOne!33892 r!7292)))) b!6860898))

(declare-fun b!6860902 () Bool)

(declare-fun e!4136483 () Bool)

(declare-fun tp!1881413 () Bool)

(declare-fun tp!1881414 () Bool)

(assert (=> b!6860902 (= e!4136483 (and tp!1881413 tp!1881414))))

(declare-fun b!6860901 () Bool)

(declare-fun tp!1881412 () Bool)

(assert (=> b!6860901 (= e!4136483 tp!1881412)))

(declare-fun b!6860899 () Bool)

(assert (=> b!6860899 (= e!4136483 tp_is_empty!42633)))

(assert (=> b!6860498 (= tp!1881319 e!4136483)))

(declare-fun b!6860900 () Bool)

(declare-fun tp!1881415 () Bool)

(declare-fun tp!1881411 () Bool)

(assert (=> b!6860900 (= e!4136483 (and tp!1881415 tp!1881411))))

(assert (= (and b!6860498 (is-ElementMatch!16690 (regTwo!33892 (regOne!33892 r!7292)))) b!6860899))

(assert (= (and b!6860498 (is-Concat!25535 (regTwo!33892 (regOne!33892 r!7292)))) b!6860900))

(assert (= (and b!6860498 (is-Star!16690 (regTwo!33892 (regOne!33892 r!7292)))) b!6860901))

(assert (= (and b!6860498 (is-Union!16690 (regTwo!33892 (regOne!33892 r!7292)))) b!6860902))

(declare-fun b!6860906 () Bool)

(declare-fun e!4136484 () Bool)

(declare-fun tp!1881418 () Bool)

(declare-fun tp!1881419 () Bool)

(assert (=> b!6860906 (= e!4136484 (and tp!1881418 tp!1881419))))

(declare-fun b!6860905 () Bool)

(declare-fun tp!1881417 () Bool)

(assert (=> b!6860905 (= e!4136484 tp!1881417)))

(declare-fun b!6860903 () Bool)

(assert (=> b!6860903 (= e!4136484 tp_is_empty!42633)))

(assert (=> b!6860507 (= tp!1881330 e!4136484)))

(declare-fun b!6860904 () Bool)

(declare-fun tp!1881420 () Bool)

(declare-fun tp!1881416 () Bool)

(assert (=> b!6860904 (= e!4136484 (and tp!1881420 tp!1881416))))

(assert (= (and b!6860507 (is-ElementMatch!16690 (reg!17019 (regOne!33893 r!7292)))) b!6860903))

(assert (= (and b!6860507 (is-Concat!25535 (reg!17019 (regOne!33893 r!7292)))) b!6860904))

(assert (= (and b!6860507 (is-Star!16690 (reg!17019 (regOne!33893 r!7292)))) b!6860905))

(assert (= (and b!6860507 (is-Union!16690 (reg!17019 (regOne!33893 r!7292)))) b!6860906))

(declare-fun b!6860907 () Bool)

(declare-fun e!4136485 () Bool)

(declare-fun tp!1881421 () Bool)

(declare-fun tp!1881422 () Bool)

(assert (=> b!6860907 (= e!4136485 (and tp!1881421 tp!1881422))))

(assert (=> b!6860465 (= tp!1881288 e!4136485)))

(assert (= (and b!6860465 (is-Cons!66245 (exprs!6574 (h!72695 (t!380114 zl!343))))) b!6860907))

(declare-fun b!6860911 () Bool)

(declare-fun e!4136486 () Bool)

(declare-fun tp!1881425 () Bool)

(declare-fun tp!1881426 () Bool)

(assert (=> b!6860911 (= e!4136486 (and tp!1881425 tp!1881426))))

(declare-fun b!6860910 () Bool)

(declare-fun tp!1881424 () Bool)

(assert (=> b!6860910 (= e!4136486 tp!1881424)))

(declare-fun b!6860908 () Bool)

(assert (=> b!6860908 (= e!4136486 tp_is_empty!42633)))

(assert (=> b!6860506 (= tp!1881333 e!4136486)))

(declare-fun b!6860909 () Bool)

(declare-fun tp!1881427 () Bool)

(declare-fun tp!1881423 () Bool)

(assert (=> b!6860909 (= e!4136486 (and tp!1881427 tp!1881423))))

(assert (= (and b!6860506 (is-ElementMatch!16690 (regOne!33892 (regOne!33893 r!7292)))) b!6860908))

(assert (= (and b!6860506 (is-Concat!25535 (regOne!33892 (regOne!33893 r!7292)))) b!6860909))

(assert (= (and b!6860506 (is-Star!16690 (regOne!33892 (regOne!33893 r!7292)))) b!6860910))

(assert (= (and b!6860506 (is-Union!16690 (regOne!33892 (regOne!33893 r!7292)))) b!6860911))

(declare-fun b!6860915 () Bool)

(declare-fun e!4136487 () Bool)

(declare-fun tp!1881430 () Bool)

(declare-fun tp!1881431 () Bool)

(assert (=> b!6860915 (= e!4136487 (and tp!1881430 tp!1881431))))

(declare-fun b!6860914 () Bool)

(declare-fun tp!1881429 () Bool)

(assert (=> b!6860914 (= e!4136487 tp!1881429)))

(declare-fun b!6860912 () Bool)

(assert (=> b!6860912 (= e!4136487 tp_is_empty!42633)))

(assert (=> b!6860506 (= tp!1881329 e!4136487)))

(declare-fun b!6860913 () Bool)

(declare-fun tp!1881432 () Bool)

(declare-fun tp!1881428 () Bool)

(assert (=> b!6860913 (= e!4136487 (and tp!1881432 tp!1881428))))

(assert (= (and b!6860506 (is-ElementMatch!16690 (regTwo!33892 (regOne!33893 r!7292)))) b!6860912))

(assert (= (and b!6860506 (is-Concat!25535 (regTwo!33892 (regOne!33893 r!7292)))) b!6860913))

(assert (= (and b!6860506 (is-Star!16690 (regTwo!33892 (regOne!33893 r!7292)))) b!6860914))

(assert (= (and b!6860506 (is-Union!16690 (regTwo!33892 (regOne!33893 r!7292)))) b!6860915))

(declare-fun b!6860917 () Bool)

(declare-fun e!4136489 () Bool)

(declare-fun tp!1881433 () Bool)

(assert (=> b!6860917 (= e!4136489 tp!1881433)))

(declare-fun tp!1881434 () Bool)

(declare-fun e!4136488 () Bool)

(declare-fun b!6860916 () Bool)

(assert (=> b!6860916 (= e!4136488 (and (inv!84973 (h!72695 (t!380114 (t!380114 zl!343)))) e!4136489 tp!1881434))))

(assert (=> b!6860464 (= tp!1881289 e!4136488)))

(assert (= b!6860916 b!6860917))

(assert (= (and b!6860464 (is-Cons!66247 (t!380114 (t!380114 zl!343)))) b!6860916))

(declare-fun m!7595410 () Bool)

(assert (=> b!6860916 m!7595410))

(declare-fun b!6860921 () Bool)

(declare-fun e!4136490 () Bool)

(declare-fun tp!1881437 () Bool)

(declare-fun tp!1881438 () Bool)

(assert (=> b!6860921 (= e!4136490 (and tp!1881437 tp!1881438))))

(declare-fun b!6860920 () Bool)

(declare-fun tp!1881436 () Bool)

(assert (=> b!6860920 (= e!4136490 tp!1881436)))

(declare-fun b!6860918 () Bool)

(assert (=> b!6860918 (= e!4136490 tp_is_empty!42633)))

(assert (=> b!6860485 (= tp!1881311 e!4136490)))

(declare-fun b!6860919 () Bool)

(declare-fun tp!1881439 () Bool)

(declare-fun tp!1881435 () Bool)

(assert (=> b!6860919 (= e!4136490 (and tp!1881439 tp!1881435))))

(assert (= (and b!6860485 (is-ElementMatch!16690 (h!72693 (exprs!6574 (h!72695 zl!343))))) b!6860918))

(assert (= (and b!6860485 (is-Concat!25535 (h!72693 (exprs!6574 (h!72695 zl!343))))) b!6860919))

(assert (= (and b!6860485 (is-Star!16690 (h!72693 (exprs!6574 (h!72695 zl!343))))) b!6860920))

(assert (= (and b!6860485 (is-Union!16690 (h!72693 (exprs!6574 (h!72695 zl!343))))) b!6860921))

(declare-fun b!6860922 () Bool)

(declare-fun e!4136491 () Bool)

(declare-fun tp!1881440 () Bool)

(declare-fun tp!1881441 () Bool)

(assert (=> b!6860922 (= e!4136491 (and tp!1881440 tp!1881441))))

(assert (=> b!6860485 (= tp!1881312 e!4136491)))

(assert (= (and b!6860485 (is-Cons!66245 (t!380112 (exprs!6574 (h!72695 zl!343))))) b!6860922))

(declare-fun b!6860926 () Bool)

(declare-fun e!4136492 () Bool)

(declare-fun tp!1881444 () Bool)

(declare-fun tp!1881445 () Bool)

(assert (=> b!6860926 (= e!4136492 (and tp!1881444 tp!1881445))))

(declare-fun b!6860925 () Bool)

(declare-fun tp!1881443 () Bool)

(assert (=> b!6860925 (= e!4136492 tp!1881443)))

(declare-fun b!6860923 () Bool)

(assert (=> b!6860923 (= e!4136492 tp_is_empty!42633)))

(assert (=> b!6860470 (= tp!1881294 e!4136492)))

(declare-fun b!6860924 () Bool)

(declare-fun tp!1881446 () Bool)

(declare-fun tp!1881442 () Bool)

(assert (=> b!6860924 (= e!4136492 (and tp!1881446 tp!1881442))))

(assert (= (and b!6860470 (is-ElementMatch!16690 (h!72693 (exprs!6574 setElem!47178)))) b!6860923))

(assert (= (and b!6860470 (is-Concat!25535 (h!72693 (exprs!6574 setElem!47178)))) b!6860924))

(assert (= (and b!6860470 (is-Star!16690 (h!72693 (exprs!6574 setElem!47178)))) b!6860925))

(assert (= (and b!6860470 (is-Union!16690 (h!72693 (exprs!6574 setElem!47178)))) b!6860926))

(declare-fun b!6860927 () Bool)

(declare-fun e!4136493 () Bool)

(declare-fun tp!1881447 () Bool)

(declare-fun tp!1881448 () Bool)

(assert (=> b!6860927 (= e!4136493 (and tp!1881447 tp!1881448))))

(assert (=> b!6860470 (= tp!1881295 e!4136493)))

(assert (= (and b!6860470 (is-Cons!66245 (t!380112 (exprs!6574 setElem!47178)))) b!6860927))

(declare-fun b!6860931 () Bool)

(declare-fun e!4136494 () Bool)

(declare-fun tp!1881451 () Bool)

(declare-fun tp!1881452 () Bool)

(assert (=> b!6860931 (= e!4136494 (and tp!1881451 tp!1881452))))

(declare-fun b!6860930 () Bool)

(declare-fun tp!1881450 () Bool)

(assert (=> b!6860930 (= e!4136494 tp!1881450)))

(declare-fun b!6860928 () Bool)

(assert (=> b!6860928 (= e!4136494 tp_is_empty!42633)))

(assert (=> b!6860500 (= tp!1881321 e!4136494)))

(declare-fun b!6860929 () Bool)

(declare-fun tp!1881453 () Bool)

(declare-fun tp!1881449 () Bool)

(assert (=> b!6860929 (= e!4136494 (and tp!1881453 tp!1881449))))

(assert (= (and b!6860500 (is-ElementMatch!16690 (regOne!33893 (regOne!33892 r!7292)))) b!6860928))

(assert (= (and b!6860500 (is-Concat!25535 (regOne!33893 (regOne!33892 r!7292)))) b!6860929))

(assert (= (and b!6860500 (is-Star!16690 (regOne!33893 (regOne!33892 r!7292)))) b!6860930))

(assert (= (and b!6860500 (is-Union!16690 (regOne!33893 (regOne!33892 r!7292)))) b!6860931))

(declare-fun b!6860935 () Bool)

(declare-fun e!4136495 () Bool)

(declare-fun tp!1881456 () Bool)

(declare-fun tp!1881457 () Bool)

(assert (=> b!6860935 (= e!4136495 (and tp!1881456 tp!1881457))))

(declare-fun b!6860934 () Bool)

(declare-fun tp!1881455 () Bool)

(assert (=> b!6860934 (= e!4136495 tp!1881455)))

(declare-fun b!6860932 () Bool)

(assert (=> b!6860932 (= e!4136495 tp_is_empty!42633)))

(assert (=> b!6860500 (= tp!1881322 e!4136495)))

(declare-fun b!6860933 () Bool)

(declare-fun tp!1881458 () Bool)

(declare-fun tp!1881454 () Bool)

(assert (=> b!6860933 (= e!4136495 (and tp!1881458 tp!1881454))))

(assert (= (and b!6860500 (is-ElementMatch!16690 (regTwo!33893 (regOne!33892 r!7292)))) b!6860932))

(assert (= (and b!6860500 (is-Concat!25535 (regTwo!33893 (regOne!33892 r!7292)))) b!6860933))

(assert (= (and b!6860500 (is-Star!16690 (regTwo!33893 (regOne!33892 r!7292)))) b!6860934))

(assert (= (and b!6860500 (is-Union!16690 (regTwo!33893 (regOne!33892 r!7292)))) b!6860935))

(declare-fun b!6860939 () Bool)

(declare-fun e!4136496 () Bool)

(declare-fun tp!1881461 () Bool)

(declare-fun tp!1881462 () Bool)

(assert (=> b!6860939 (= e!4136496 (and tp!1881461 tp!1881462))))

(declare-fun b!6860938 () Bool)

(declare-fun tp!1881460 () Bool)

(assert (=> b!6860938 (= e!4136496 tp!1881460)))

(declare-fun b!6860936 () Bool)

(assert (=> b!6860936 (= e!4136496 tp_is_empty!42633)))

(assert (=> b!6860499 (= tp!1881320 e!4136496)))

(declare-fun b!6860937 () Bool)

(declare-fun tp!1881463 () Bool)

(declare-fun tp!1881459 () Bool)

(assert (=> b!6860937 (= e!4136496 (and tp!1881463 tp!1881459))))

(assert (= (and b!6860499 (is-ElementMatch!16690 (reg!17019 (regOne!33892 r!7292)))) b!6860936))

(assert (= (and b!6860499 (is-Concat!25535 (reg!17019 (regOne!33892 r!7292)))) b!6860937))

(assert (= (and b!6860499 (is-Star!16690 (reg!17019 (regOne!33892 r!7292)))) b!6860938))

(assert (= (and b!6860499 (is-Union!16690 (reg!17019 (regOne!33892 r!7292)))) b!6860939))

(declare-fun b!6860943 () Bool)

(declare-fun e!4136497 () Bool)

(declare-fun tp!1881466 () Bool)

(declare-fun tp!1881467 () Bool)

(assert (=> b!6860943 (= e!4136497 (and tp!1881466 tp!1881467))))

(declare-fun b!6860942 () Bool)

(declare-fun tp!1881465 () Bool)

(assert (=> b!6860942 (= e!4136497 tp!1881465)))

(declare-fun b!6860940 () Bool)

(assert (=> b!6860940 (= e!4136497 tp_is_empty!42633)))

(assert (=> b!6860508 (= tp!1881331 e!4136497)))

(declare-fun b!6860941 () Bool)

(declare-fun tp!1881468 () Bool)

(declare-fun tp!1881464 () Bool)

(assert (=> b!6860941 (= e!4136497 (and tp!1881468 tp!1881464))))

(assert (= (and b!6860508 (is-ElementMatch!16690 (regOne!33893 (regOne!33893 r!7292)))) b!6860940))

(assert (= (and b!6860508 (is-Concat!25535 (regOne!33893 (regOne!33893 r!7292)))) b!6860941))

(assert (= (and b!6860508 (is-Star!16690 (regOne!33893 (regOne!33893 r!7292)))) b!6860942))

(assert (= (and b!6860508 (is-Union!16690 (regOne!33893 (regOne!33893 r!7292)))) b!6860943))

(declare-fun b!6860947 () Bool)

(declare-fun e!4136498 () Bool)

(declare-fun tp!1881471 () Bool)

(declare-fun tp!1881472 () Bool)

(assert (=> b!6860947 (= e!4136498 (and tp!1881471 tp!1881472))))

(declare-fun b!6860946 () Bool)

(declare-fun tp!1881470 () Bool)

(assert (=> b!6860946 (= e!4136498 tp!1881470)))

(declare-fun b!6860944 () Bool)

(assert (=> b!6860944 (= e!4136498 tp_is_empty!42633)))

(assert (=> b!6860508 (= tp!1881332 e!4136498)))

(declare-fun b!6860945 () Bool)

(declare-fun tp!1881473 () Bool)

(declare-fun tp!1881469 () Bool)

(assert (=> b!6860945 (= e!4136498 (and tp!1881473 tp!1881469))))

(assert (= (and b!6860508 (is-ElementMatch!16690 (regTwo!33893 (regOne!33893 r!7292)))) b!6860944))

(assert (= (and b!6860508 (is-Concat!25535 (regTwo!33893 (regOne!33893 r!7292)))) b!6860945))

(assert (= (and b!6860508 (is-Star!16690 (regTwo!33893 (regOne!33893 r!7292)))) b!6860946))

(assert (= (and b!6860508 (is-Union!16690 (regTwo!33893 (regOne!33893 r!7292)))) b!6860947))

(declare-fun b!6860948 () Bool)

(declare-fun e!4136499 () Bool)

(declare-fun tp!1881474 () Bool)

(assert (=> b!6860948 (= e!4136499 (and tp_is_empty!42633 tp!1881474))))

(assert (=> b!6860517 (= tp!1881341 e!4136499)))

(assert (= (and b!6860517 (is-Cons!66246 (t!380113 (t!380113 s!2326)))) b!6860948))

(declare-fun b!6860952 () Bool)

(declare-fun e!4136500 () Bool)

(declare-fun tp!1881477 () Bool)

(declare-fun tp!1881478 () Bool)

(assert (=> b!6860952 (= e!4136500 (and tp!1881477 tp!1881478))))

(declare-fun b!6860951 () Bool)

(declare-fun tp!1881476 () Bool)

(assert (=> b!6860951 (= e!4136500 tp!1881476)))

(declare-fun b!6860949 () Bool)

(assert (=> b!6860949 (= e!4136500 tp_is_empty!42633)))

(assert (=> b!6860512 (= tp!1881336 e!4136500)))

(declare-fun b!6860950 () Bool)

(declare-fun tp!1881479 () Bool)

(declare-fun tp!1881475 () Bool)

(assert (=> b!6860950 (= e!4136500 (and tp!1881479 tp!1881475))))

(assert (= (and b!6860512 (is-ElementMatch!16690 (regOne!33893 (regTwo!33893 r!7292)))) b!6860949))

(assert (= (and b!6860512 (is-Concat!25535 (regOne!33893 (regTwo!33893 r!7292)))) b!6860950))

(assert (= (and b!6860512 (is-Star!16690 (regOne!33893 (regTwo!33893 r!7292)))) b!6860951))

(assert (= (and b!6860512 (is-Union!16690 (regOne!33893 (regTwo!33893 r!7292)))) b!6860952))

(declare-fun b!6860956 () Bool)

(declare-fun e!4136501 () Bool)

(declare-fun tp!1881482 () Bool)

(declare-fun tp!1881483 () Bool)

(assert (=> b!6860956 (= e!4136501 (and tp!1881482 tp!1881483))))

(declare-fun b!6860955 () Bool)

(declare-fun tp!1881481 () Bool)

(assert (=> b!6860955 (= e!4136501 tp!1881481)))

(declare-fun b!6860953 () Bool)

(assert (=> b!6860953 (= e!4136501 tp_is_empty!42633)))

(assert (=> b!6860512 (= tp!1881337 e!4136501)))

(declare-fun b!6860954 () Bool)

(declare-fun tp!1881484 () Bool)

(declare-fun tp!1881480 () Bool)

(assert (=> b!6860954 (= e!4136501 (and tp!1881484 tp!1881480))))

(assert (= (and b!6860512 (is-ElementMatch!16690 (regTwo!33893 (regTwo!33893 r!7292)))) b!6860953))

(assert (= (and b!6860512 (is-Concat!25535 (regTwo!33893 (regTwo!33893 r!7292)))) b!6860954))

(assert (= (and b!6860512 (is-Star!16690 (regTwo!33893 (regTwo!33893 r!7292)))) b!6860955))

(assert (= (and b!6860512 (is-Union!16690 (regTwo!33893 (regTwo!33893 r!7292)))) b!6860956))

(declare-fun b!6860960 () Bool)

(declare-fun e!4136502 () Bool)

(declare-fun tp!1881487 () Bool)

(declare-fun tp!1881488 () Bool)

(assert (=> b!6860960 (= e!4136502 (and tp!1881487 tp!1881488))))

(declare-fun b!6860959 () Bool)

(declare-fun tp!1881486 () Bool)

(assert (=> b!6860959 (= e!4136502 tp!1881486)))

(declare-fun b!6860957 () Bool)

(assert (=> b!6860957 (= e!4136502 tp_is_empty!42633)))

(assert (=> b!6860482 (= tp!1881310 e!4136502)))

(declare-fun b!6860958 () Bool)

(declare-fun tp!1881489 () Bool)

(declare-fun tp!1881485 () Bool)

(assert (=> b!6860958 (= e!4136502 (and tp!1881489 tp!1881485))))

(assert (= (and b!6860482 (is-ElementMatch!16690 (regOne!33892 (reg!17019 r!7292)))) b!6860957))

(assert (= (and b!6860482 (is-Concat!25535 (regOne!33892 (reg!17019 r!7292)))) b!6860958))

(assert (= (and b!6860482 (is-Star!16690 (regOne!33892 (reg!17019 r!7292)))) b!6860959))

(assert (= (and b!6860482 (is-Union!16690 (regOne!33892 (reg!17019 r!7292)))) b!6860960))

(declare-fun b!6860964 () Bool)

(declare-fun e!4136503 () Bool)

(declare-fun tp!1881492 () Bool)

(declare-fun tp!1881493 () Bool)

(assert (=> b!6860964 (= e!4136503 (and tp!1881492 tp!1881493))))

(declare-fun b!6860963 () Bool)

(declare-fun tp!1881491 () Bool)

(assert (=> b!6860963 (= e!4136503 tp!1881491)))

(declare-fun b!6860961 () Bool)

(assert (=> b!6860961 (= e!4136503 tp_is_empty!42633)))

(assert (=> b!6860482 (= tp!1881306 e!4136503)))

(declare-fun b!6860962 () Bool)

(declare-fun tp!1881494 () Bool)

(declare-fun tp!1881490 () Bool)

(assert (=> b!6860962 (= e!4136503 (and tp!1881494 tp!1881490))))

(assert (= (and b!6860482 (is-ElementMatch!16690 (regTwo!33892 (reg!17019 r!7292)))) b!6860961))

(assert (= (and b!6860482 (is-Concat!25535 (regTwo!33892 (reg!17019 r!7292)))) b!6860962))

(assert (= (and b!6860482 (is-Star!16690 (regTwo!33892 (reg!17019 r!7292)))) b!6860963))

(assert (= (and b!6860482 (is-Union!16690 (regTwo!33892 (reg!17019 r!7292)))) b!6860964))

(declare-fun condSetEmpty!47188 () Bool)

(assert (=> setNonEmpty!47184 (= condSetEmpty!47188 (= setRest!47184 (as set.empty (Set Context!12148))))))

(declare-fun setRes!47188 () Bool)

(assert (=> setNonEmpty!47184 (= tp!1881318 setRes!47188)))

(declare-fun setIsEmpty!47188 () Bool)

(assert (=> setIsEmpty!47188 setRes!47188))

(declare-fun tp!1881496 () Bool)

(declare-fun setNonEmpty!47188 () Bool)

(declare-fun e!4136504 () Bool)

(declare-fun setElem!47188 () Context!12148)

(assert (=> setNonEmpty!47188 (= setRes!47188 (and tp!1881496 (inv!84973 setElem!47188) e!4136504))))

(declare-fun setRest!47188 () (Set Context!12148))

(assert (=> setNonEmpty!47188 (= setRest!47184 (set.union (set.insert setElem!47188 (as set.empty (Set Context!12148))) setRest!47188))))

(declare-fun b!6860965 () Bool)

(declare-fun tp!1881495 () Bool)

(assert (=> b!6860965 (= e!4136504 tp!1881495)))

(assert (= (and setNonEmpty!47184 condSetEmpty!47188) setIsEmpty!47188))

(assert (= (and setNonEmpty!47184 (not condSetEmpty!47188)) setNonEmpty!47188))

(assert (= setNonEmpty!47188 b!6860965))

(declare-fun m!7595412 () Bool)

(assert (=> setNonEmpty!47188 m!7595412))

(declare-fun b!6860969 () Bool)

(declare-fun e!4136505 () Bool)

(declare-fun tp!1881499 () Bool)

(declare-fun tp!1881500 () Bool)

(assert (=> b!6860969 (= e!4136505 (and tp!1881499 tp!1881500))))

(declare-fun b!6860968 () Bool)

(declare-fun tp!1881498 () Bool)

(assert (=> b!6860968 (= e!4136505 tp!1881498)))

(declare-fun b!6860966 () Bool)

(assert (=> b!6860966 (= e!4136505 tp_is_empty!42633)))

(assert (=> b!6860502 (= tp!1881328 e!4136505)))

(declare-fun b!6860967 () Bool)

(declare-fun tp!1881501 () Bool)

(declare-fun tp!1881497 () Bool)

(assert (=> b!6860967 (= e!4136505 (and tp!1881501 tp!1881497))))

(assert (= (and b!6860502 (is-ElementMatch!16690 (regOne!33892 (regTwo!33892 r!7292)))) b!6860966))

(assert (= (and b!6860502 (is-Concat!25535 (regOne!33892 (regTwo!33892 r!7292)))) b!6860967))

(assert (= (and b!6860502 (is-Star!16690 (regOne!33892 (regTwo!33892 r!7292)))) b!6860968))

(assert (= (and b!6860502 (is-Union!16690 (regOne!33892 (regTwo!33892 r!7292)))) b!6860969))

(declare-fun b!6860973 () Bool)

(declare-fun e!4136506 () Bool)

(declare-fun tp!1881504 () Bool)

(declare-fun tp!1881505 () Bool)

(assert (=> b!6860973 (= e!4136506 (and tp!1881504 tp!1881505))))

(declare-fun b!6860972 () Bool)

(declare-fun tp!1881503 () Bool)

(assert (=> b!6860972 (= e!4136506 tp!1881503)))

(declare-fun b!6860970 () Bool)

(assert (=> b!6860970 (= e!4136506 tp_is_empty!42633)))

(assert (=> b!6860502 (= tp!1881324 e!4136506)))

(declare-fun b!6860971 () Bool)

(declare-fun tp!1881506 () Bool)

(declare-fun tp!1881502 () Bool)

(assert (=> b!6860971 (= e!4136506 (and tp!1881506 tp!1881502))))

(assert (= (and b!6860502 (is-ElementMatch!16690 (regTwo!33892 (regTwo!33892 r!7292)))) b!6860970))

(assert (= (and b!6860502 (is-Concat!25535 (regTwo!33892 (regTwo!33892 r!7292)))) b!6860971))

(assert (= (and b!6860502 (is-Star!16690 (regTwo!33892 (regTwo!33892 r!7292)))) b!6860972))

(assert (= (and b!6860502 (is-Union!16690 (regTwo!33892 (regTwo!33892 r!7292)))) b!6860973))

(declare-fun b!6860977 () Bool)

(declare-fun e!4136507 () Bool)

(declare-fun tp!1881509 () Bool)

(declare-fun tp!1881510 () Bool)

(assert (=> b!6860977 (= e!4136507 (and tp!1881509 tp!1881510))))

(declare-fun b!6860976 () Bool)

(declare-fun tp!1881508 () Bool)

(assert (=> b!6860976 (= e!4136507 tp!1881508)))

(declare-fun b!6860974 () Bool)

(assert (=> b!6860974 (= e!4136507 tp_is_empty!42633)))

(assert (=> b!6860511 (= tp!1881335 e!4136507)))

(declare-fun b!6860975 () Bool)

(declare-fun tp!1881511 () Bool)

(declare-fun tp!1881507 () Bool)

(assert (=> b!6860975 (= e!4136507 (and tp!1881511 tp!1881507))))

(assert (= (and b!6860511 (is-ElementMatch!16690 (reg!17019 (regTwo!33893 r!7292)))) b!6860974))

(assert (= (and b!6860511 (is-Concat!25535 (reg!17019 (regTwo!33893 r!7292)))) b!6860975))

(assert (= (and b!6860511 (is-Star!16690 (reg!17019 (regTwo!33893 r!7292)))) b!6860976))

(assert (= (and b!6860511 (is-Union!16690 (reg!17019 (regTwo!33893 r!7292)))) b!6860977))

(declare-fun b!6860981 () Bool)

(declare-fun e!4136508 () Bool)

(declare-fun tp!1881514 () Bool)

(declare-fun tp!1881515 () Bool)

(assert (=> b!6860981 (= e!4136508 (and tp!1881514 tp!1881515))))

(declare-fun b!6860980 () Bool)

(declare-fun tp!1881513 () Bool)

(assert (=> b!6860980 (= e!4136508 tp!1881513)))

(declare-fun b!6860978 () Bool)

(assert (=> b!6860978 (= e!4136508 tp_is_empty!42633)))

(assert (=> b!6860510 (= tp!1881338 e!4136508)))

(declare-fun b!6860979 () Bool)

(declare-fun tp!1881516 () Bool)

(declare-fun tp!1881512 () Bool)

(assert (=> b!6860979 (= e!4136508 (and tp!1881516 tp!1881512))))

(assert (= (and b!6860510 (is-ElementMatch!16690 (regOne!33892 (regTwo!33893 r!7292)))) b!6860978))

(assert (= (and b!6860510 (is-Concat!25535 (regOne!33892 (regTwo!33893 r!7292)))) b!6860979))

(assert (= (and b!6860510 (is-Star!16690 (regOne!33892 (regTwo!33893 r!7292)))) b!6860980))

(assert (= (and b!6860510 (is-Union!16690 (regOne!33892 (regTwo!33893 r!7292)))) b!6860981))

(declare-fun b!6860985 () Bool)

(declare-fun e!4136509 () Bool)

(declare-fun tp!1881519 () Bool)

(declare-fun tp!1881520 () Bool)

(assert (=> b!6860985 (= e!4136509 (and tp!1881519 tp!1881520))))

(declare-fun b!6860984 () Bool)

(declare-fun tp!1881518 () Bool)

(assert (=> b!6860984 (= e!4136509 tp!1881518)))

(declare-fun b!6860982 () Bool)

(assert (=> b!6860982 (= e!4136509 tp_is_empty!42633)))

(assert (=> b!6860510 (= tp!1881334 e!4136509)))

(declare-fun b!6860983 () Bool)

(declare-fun tp!1881521 () Bool)

(declare-fun tp!1881517 () Bool)

(assert (=> b!6860983 (= e!4136509 (and tp!1881521 tp!1881517))))

(assert (= (and b!6860510 (is-ElementMatch!16690 (regTwo!33892 (regTwo!33893 r!7292)))) b!6860982))

(assert (= (and b!6860510 (is-Concat!25535 (regTwo!33892 (regTwo!33893 r!7292)))) b!6860983))

(assert (= (and b!6860510 (is-Star!16690 (regTwo!33892 (regTwo!33893 r!7292)))) b!6860984))

(assert (= (and b!6860510 (is-Union!16690 (regTwo!33892 (regTwo!33893 r!7292)))) b!6860985))

(declare-fun b!6860989 () Bool)

(declare-fun e!4136510 () Bool)

(declare-fun tp!1881524 () Bool)

(declare-fun tp!1881525 () Bool)

(assert (=> b!6860989 (= e!4136510 (and tp!1881524 tp!1881525))))

(declare-fun b!6860988 () Bool)

(declare-fun tp!1881523 () Bool)

(assert (=> b!6860988 (= e!4136510 tp!1881523)))

(declare-fun b!6860986 () Bool)

(assert (=> b!6860986 (= e!4136510 tp_is_empty!42633)))

(assert (=> b!6860484 (= tp!1881308 e!4136510)))

(declare-fun b!6860987 () Bool)

(declare-fun tp!1881526 () Bool)

(declare-fun tp!1881522 () Bool)

(assert (=> b!6860987 (= e!4136510 (and tp!1881526 tp!1881522))))

(assert (= (and b!6860484 (is-ElementMatch!16690 (regOne!33893 (reg!17019 r!7292)))) b!6860986))

(assert (= (and b!6860484 (is-Concat!25535 (regOne!33893 (reg!17019 r!7292)))) b!6860987))

(assert (= (and b!6860484 (is-Star!16690 (regOne!33893 (reg!17019 r!7292)))) b!6860988))

(assert (= (and b!6860484 (is-Union!16690 (regOne!33893 (reg!17019 r!7292)))) b!6860989))

(declare-fun b!6860993 () Bool)

(declare-fun e!4136511 () Bool)

(declare-fun tp!1881529 () Bool)

(declare-fun tp!1881530 () Bool)

(assert (=> b!6860993 (= e!4136511 (and tp!1881529 tp!1881530))))

(declare-fun b!6860992 () Bool)

(declare-fun tp!1881528 () Bool)

(assert (=> b!6860992 (= e!4136511 tp!1881528)))

(declare-fun b!6860990 () Bool)

(assert (=> b!6860990 (= e!4136511 tp_is_empty!42633)))

(assert (=> b!6860484 (= tp!1881309 e!4136511)))

(declare-fun b!6860991 () Bool)

(declare-fun tp!1881531 () Bool)

(declare-fun tp!1881527 () Bool)

(assert (=> b!6860991 (= e!4136511 (and tp!1881531 tp!1881527))))

(assert (= (and b!6860484 (is-ElementMatch!16690 (regTwo!33893 (reg!17019 r!7292)))) b!6860990))

(assert (= (and b!6860484 (is-Concat!25535 (regTwo!33893 (reg!17019 r!7292)))) b!6860991))

(assert (= (and b!6860484 (is-Star!16690 (regTwo!33893 (reg!17019 r!7292)))) b!6860992))

(assert (= (and b!6860484 (is-Union!16690 (regTwo!33893 (reg!17019 r!7292)))) b!6860993))

(declare-fun b!6860997 () Bool)

(declare-fun e!4136512 () Bool)

(declare-fun tp!1881534 () Bool)

(declare-fun tp!1881535 () Bool)

(assert (=> b!6860997 (= e!4136512 (and tp!1881534 tp!1881535))))

(declare-fun b!6860996 () Bool)

(declare-fun tp!1881533 () Bool)

(assert (=> b!6860996 (= e!4136512 tp!1881533)))

(declare-fun b!6860994 () Bool)

(assert (=> b!6860994 (= e!4136512 tp_is_empty!42633)))

(assert (=> b!6860504 (= tp!1881326 e!4136512)))

(declare-fun b!6860995 () Bool)

(declare-fun tp!1881536 () Bool)

(declare-fun tp!1881532 () Bool)

(assert (=> b!6860995 (= e!4136512 (and tp!1881536 tp!1881532))))

(assert (= (and b!6860504 (is-ElementMatch!16690 (regOne!33893 (regTwo!33892 r!7292)))) b!6860994))

(assert (= (and b!6860504 (is-Concat!25535 (regOne!33893 (regTwo!33892 r!7292)))) b!6860995))

(assert (= (and b!6860504 (is-Star!16690 (regOne!33893 (regTwo!33892 r!7292)))) b!6860996))

(assert (= (and b!6860504 (is-Union!16690 (regOne!33893 (regTwo!33892 r!7292)))) b!6860997))

(declare-fun b!6861001 () Bool)

(declare-fun e!4136513 () Bool)

(declare-fun tp!1881539 () Bool)

(declare-fun tp!1881540 () Bool)

(assert (=> b!6861001 (= e!4136513 (and tp!1881539 tp!1881540))))

(declare-fun b!6861000 () Bool)

(declare-fun tp!1881538 () Bool)

(assert (=> b!6861000 (= e!4136513 tp!1881538)))

(declare-fun b!6860998 () Bool)

(assert (=> b!6860998 (= e!4136513 tp_is_empty!42633)))

(assert (=> b!6860504 (= tp!1881327 e!4136513)))

(declare-fun b!6860999 () Bool)

(declare-fun tp!1881541 () Bool)

(declare-fun tp!1881537 () Bool)

(assert (=> b!6860999 (= e!4136513 (and tp!1881541 tp!1881537))))

(assert (= (and b!6860504 (is-ElementMatch!16690 (regTwo!33893 (regTwo!33892 r!7292)))) b!6860998))

(assert (= (and b!6860504 (is-Concat!25535 (regTwo!33893 (regTwo!33892 r!7292)))) b!6860999))

(assert (= (and b!6860504 (is-Star!16690 (regTwo!33893 (regTwo!33892 r!7292)))) b!6861000))

(assert (= (and b!6860504 (is-Union!16690 (regTwo!33893 (regTwo!33892 r!7292)))) b!6861001))

(declare-fun b!6861005 () Bool)

(declare-fun e!4136514 () Bool)

(declare-fun tp!1881544 () Bool)

(declare-fun tp!1881545 () Bool)

(assert (=> b!6861005 (= e!4136514 (and tp!1881544 tp!1881545))))

(declare-fun b!6861004 () Bool)

(declare-fun tp!1881543 () Bool)

(assert (=> b!6861004 (= e!4136514 tp!1881543)))

(declare-fun b!6861002 () Bool)

(assert (=> b!6861002 (= e!4136514 tp_is_empty!42633)))

(assert (=> b!6860483 (= tp!1881307 e!4136514)))

(declare-fun b!6861003 () Bool)

(declare-fun tp!1881546 () Bool)

(declare-fun tp!1881542 () Bool)

(assert (=> b!6861003 (= e!4136514 (and tp!1881546 tp!1881542))))

(assert (= (and b!6860483 (is-ElementMatch!16690 (reg!17019 (reg!17019 r!7292)))) b!6861002))

(assert (= (and b!6860483 (is-Concat!25535 (reg!17019 (reg!17019 r!7292)))) b!6861003))

(assert (= (and b!6860483 (is-Star!16690 (reg!17019 (reg!17019 r!7292)))) b!6861004))

(assert (= (and b!6860483 (is-Union!16690 (reg!17019 (reg!17019 r!7292)))) b!6861005))

(declare-fun b!6861006 () Bool)

(declare-fun e!4136515 () Bool)

(declare-fun tp!1881547 () Bool)

(declare-fun tp!1881548 () Bool)

(assert (=> b!6861006 (= e!4136515 (and tp!1881547 tp!1881548))))

(assert (=> b!6860496 (= tp!1881317 e!4136515)))

(assert (= (and b!6860496 (is-Cons!66245 (exprs!6574 setElem!47184))) b!6861006))

(declare-fun b!6861010 () Bool)

(declare-fun e!4136516 () Bool)

(declare-fun tp!1881551 () Bool)

(declare-fun tp!1881552 () Bool)

(assert (=> b!6861010 (= e!4136516 (and tp!1881551 tp!1881552))))

(declare-fun b!6861009 () Bool)

(declare-fun tp!1881550 () Bool)

(assert (=> b!6861009 (= e!4136516 tp!1881550)))

(declare-fun b!6861007 () Bool)

(assert (=> b!6861007 (= e!4136516 tp_is_empty!42633)))

(assert (=> b!6860503 (= tp!1881325 e!4136516)))

(declare-fun b!6861008 () Bool)

(declare-fun tp!1881553 () Bool)

(declare-fun tp!1881549 () Bool)

(assert (=> b!6861008 (= e!4136516 (and tp!1881553 tp!1881549))))

(assert (= (and b!6860503 (is-ElementMatch!16690 (reg!17019 (regTwo!33892 r!7292)))) b!6861007))

(assert (= (and b!6860503 (is-Concat!25535 (reg!17019 (regTwo!33892 r!7292)))) b!6861008))

(assert (= (and b!6860503 (is-Star!16690 (reg!17019 (regTwo!33892 r!7292)))) b!6861009))

(assert (= (and b!6860503 (is-Union!16690 (reg!17019 (regTwo!33892 r!7292)))) b!6861010))

(declare-fun b_lambda!259207 () Bool)

(assert (= b_lambda!259189 (or b!6860130 b_lambda!259207)))

(declare-fun bs!1833513 () Bool)

(declare-fun d!2155613 () Bool)

(assert (= bs!1833513 (and d!2155613 b!6860130)))

(assert (=> bs!1833513 (= (dynLambda!26504 lambda!388029 (h!72695 (t!380114 zl!343))) (matchZipper!2656 (set.insert (h!72695 (t!380114 zl!343)) (as set.empty (Set Context!12148))) s!2326))))

(declare-fun m!7595414 () Bool)

(assert (=> bs!1833513 m!7595414))

(assert (=> bs!1833513 m!7595414))

(declare-fun m!7595416 () Bool)

(assert (=> bs!1833513 m!7595416))

(assert (=> b!6860696 d!2155613))

(declare-fun b_lambda!259209 () Bool)

(assert (= b_lambda!259191 (or b!6860130 b_lambda!259209)))

(declare-fun bs!1833514 () Bool)

(declare-fun d!2155615 () Bool)

(assert (= bs!1833514 (and d!2155615 b!6860130)))

(assert (=> bs!1833514 (= (dynLambda!26504 lambda!388029 lt!2457494) (matchZipper!2656 (set.insert lt!2457494 (as set.empty (Set Context!12148))) s!2326))))

(declare-fun m!7595418 () Bool)

(assert (=> bs!1833514 m!7595418))

(assert (=> bs!1833514 m!7595418))

(declare-fun m!7595420 () Bool)

(assert (=> bs!1833514 m!7595420))

(assert (=> d!2155553 d!2155615))

(declare-fun b_lambda!259211 () Bool)

(assert (= b_lambda!259193 (or d!2155475 b_lambda!259211)))

(declare-fun bs!1833515 () Bool)

(declare-fun d!2155617 () Bool)

(assert (= bs!1833515 (and d!2155617 d!2155475)))

(assert (=> bs!1833515 (= (dynLambda!26503 lambda!388084 (h!72693 (exprs!6574 lt!2457391))) (validRegex!8426 (h!72693 (exprs!6574 lt!2457391))))))

(assert (=> bs!1833515 m!7595098))

(assert (=> b!6860703 d!2155617))

(declare-fun b_lambda!259213 () Bool)

(assert (= b_lambda!259205 (or d!2155453 b_lambda!259213)))

(declare-fun bs!1833516 () Bool)

(declare-fun d!2155619 () Bool)

(assert (= bs!1833516 (and d!2155619 d!2155453)))

(assert (=> bs!1833516 (= (dynLambda!26503 lambda!388074 (h!72693 (exprs!6574 (h!72695 zl!343)))) (validRegex!8426 (h!72693 (exprs!6574 (h!72695 zl!343)))))))

(declare-fun m!7595422 () Bool)

(assert (=> bs!1833516 m!7595422))

(assert (=> b!6860893 d!2155619))

(declare-fun b_lambda!259215 () Bool)

(assert (= b_lambda!259203 (or d!2155437 b_lambda!259215)))

(declare-fun bs!1833517 () Bool)

(declare-fun d!2155621 () Bool)

(assert (= bs!1833517 (and d!2155621 d!2155437)))

(assert (=> bs!1833517 (= (dynLambda!26503 lambda!388059 (h!72693 lt!2457393)) (not (dynLambda!26503 lambda!388028 (h!72693 lt!2457393))))))

(declare-fun b_lambda!259227 () Bool)

(assert (=> (not b_lambda!259227) (not bs!1833517)))

(declare-fun m!7595424 () Bool)

(assert (=> bs!1833517 m!7595424))

(assert (=> b!6860878 d!2155621))

(declare-fun b_lambda!259217 () Bool)

(assert (= b_lambda!259195 (or d!2155461 b_lambda!259217)))

(declare-fun bs!1833518 () Bool)

(declare-fun d!2155623 () Bool)

(assert (= bs!1833518 (and d!2155623 d!2155461)))

(assert (=> bs!1833518 (= (dynLambda!26503 lambda!388081 (h!72693 (exprs!6574 setElem!47178))) (validRegex!8426 (h!72693 (exprs!6574 setElem!47178))))))

(declare-fun m!7595426 () Bool)

(assert (=> bs!1833518 m!7595426))

(assert (=> b!6860705 d!2155623))

(declare-fun b_lambda!259219 () Bool)

(assert (= b_lambda!259199 (or d!2155447 b_lambda!259219)))

(declare-fun bs!1833519 () Bool)

(declare-fun d!2155625 () Bool)

(assert (= bs!1833519 (and d!2155625 d!2155447)))

(assert (=> bs!1833519 (= (dynLambda!26503 lambda!388071 (h!72693 lt!2457443)) (validRegex!8426 (h!72693 lt!2457443)))))

(declare-fun m!7595428 () Bool)

(assert (=> bs!1833519 m!7595428))

(assert (=> b!6860852 d!2155625))

(declare-fun b_lambda!259221 () Bool)

(assert (= b_lambda!259201 (or d!2155457 b_lambda!259221)))

(declare-fun bs!1833520 () Bool)

(declare-fun d!2155627 () Bool)

(assert (= bs!1833520 (and d!2155627 d!2155457)))

(assert (=> bs!1833520 (= (dynLambda!26504 lambda!388077 (h!72695 zl!343)) (not (dynLambda!26504 lambda!388029 (h!72695 zl!343))))))

(declare-fun b_lambda!259229 () Bool)

(assert (=> (not b_lambda!259229) (not bs!1833520)))

(assert (=> bs!1833520 m!7595088))

(assert (=> b!6860858 d!2155627))

(declare-fun b_lambda!259223 () Bool)

(assert (= b_lambda!259187 (or d!2155445 b_lambda!259223)))

(declare-fun bs!1833521 () Bool)

(declare-fun d!2155629 () Bool)

(assert (= bs!1833521 (and d!2155629 d!2155445)))

(assert (=> bs!1833521 (= (dynLambda!26503 lambda!388067 (h!72693 lt!2457393)) (validRegex!8426 (h!72693 lt!2457393)))))

(declare-fun m!7595430 () Bool)

(assert (=> bs!1833521 m!7595430))

(assert (=> b!6860674 d!2155629))

(declare-fun b_lambda!259225 () Bool)

(assert (= b_lambda!259197 (or b!6860119 b_lambda!259225)))

(declare-fun bs!1833522 () Bool)

(declare-fun d!2155631 () Bool)

(assert (= bs!1833522 (and d!2155631 b!6860119)))

(assert (=> bs!1833522 (= (dynLambda!26503 lambda!388030 (h!72693 (t!380112 (exprs!6574 lt!2457391)))) (validRegex!8426 (h!72693 (t!380112 (exprs!6574 lt!2457391)))))))

(declare-fun m!7595432 () Bool)

(assert (=> bs!1833522 m!7595432))

(assert (=> b!6860850 d!2155631))

(push 1)

(assert (not b_lambda!259221))

(assert (not bs!1833521))

(assert tp_is_empty!42633)

(assert (not b!6860977))

(assert (not b!6861010))

(assert (not b!6860952))

(assert (not b!6860922))

(assert (not b!6860682))

(assert (not b!6860898))

(assert (not b!6860906))

(assert (not b_lambda!259213))

(assert (not b!6860979))

(assert (not b!6860943))

(assert (not b!6860962))

(assert (not b_lambda!259227))

(assert (not d!2155607))

(assert (not d!2155575))

(assert (not b!6860993))

(assert (not b!6860757))

(assert (not d!2155531))

(assert (not b!6861008))

(assert (not b!6860901))

(assert (not b!6860847))

(assert (not b!6860954))

(assert (not bm!624895))

(assert (not b!6860926))

(assert (not d!2155519))

(assert (not b!6860848))

(assert (not b!6860939))

(assert (not b!6860919))

(assert (not b!6860698))

(assert (not b!6860690))

(assert (not b!6860862))

(assert (not b!6860671))

(assert (not d!2155551))

(assert (not b!6860941))

(assert (not b!6860925))

(assert (not b!6860892))

(assert (not b_lambda!259209))

(assert (not b!6860984))

(assert (not b!6860900))

(assert (not b!6860745))

(assert (not b!6860930))

(assert (not b!6860969))

(assert (not b_lambda!259225))

(assert (not b_lambda!259179))

(assert (not d!2155529))

(assert (not b!6860927))

(assert (not b!6860959))

(assert (not b!6860905))

(assert (not b!6861001))

(assert (not b_lambda!259219))

(assert (not bm!624878))

(assert (not d!2155581))

(assert (not b!6860693))

(assert (not d!2155523))

(assert (not b!6860964))

(assert (not b!6860853))

(assert (not b!6860933))

(assert (not d!2155591))

(assert (not b!6860676))

(assert (not b_lambda!259175))

(assert (not b!6860775))

(assert (not b!6860904))

(assert (not d!2155537))

(assert (not d!2155525))

(assert (not b!6860965))

(assert (not b!6860976))

(assert (not b!6860995))

(assert (not b!6860973))

(assert (not b!6860991))

(assert (not bm!624879))

(assert (not b!6860971))

(assert (not d!2155563))

(assert (not b!6860989))

(assert (not bs!1833513))

(assert (not bm!624897))

(assert (not b!6860771))

(assert (not b!6860744))

(assert (not b!6860859))

(assert (not b!6860907))

(assert (not b!6860980))

(assert (not b!6860692))

(assert (not bs!1833518))

(assert (not b!6860947))

(assert (not b!6860950))

(assert (not b!6860929))

(assert (not b!6860999))

(assert (not b!6861004))

(assert (not b!6861000))

(assert (not b!6860911))

(assert (not b!6860851))

(assert (not bs!1833522))

(assert (not b!6860938))

(assert (not b!6860750))

(assert (not b!6860902))

(assert (not d!2155587))

(assert (not b_lambda!259211))

(assert (not b!6860839))

(assert (not d!2155521))

(assert (not b!6860695))

(assert (not b!6860664))

(assert (not b_lambda!259177))

(assert (not b!6860843))

(assert (not d!2155571))

(assert (not d!2155567))

(assert (not b!6860948))

(assert (not bm!624894))

(assert (not b!6860968))

(assert (not bs!1833519))

(assert (not b!6860987))

(assert (not b!6860992))

(assert (not d!2155557))

(assert (not b!6860920))

(assert (not b!6860963))

(assert (not b!6860772))

(assert (not b!6861009))

(assert (not b!6860699))

(assert (not b!6860988))

(assert (not d!2155547))

(assert (not b!6860958))

(assert (not b!6860955))

(assert (not b!6860841))

(assert (not b!6860702))

(assert (not bm!624892))

(assert (not b!6860945))

(assert (not bm!624876))

(assert (not d!2155549))

(assert (not b!6860879))

(assert (not b!6860704))

(assert (not b!6860706))

(assert (not b!6860917))

(assert (not b!6860897))

(assert (not b!6860738))

(assert (not b!6860665))

(assert (not b!6860983))

(assert (not b!6860785))

(assert (not b!6860910))

(assert (not b_lambda!259229))

(assert (not bm!624899))

(assert (not b!6860743))

(assert (not d!2155553))

(assert (not d!2155579))

(assert (not b!6860884))

(assert (not b_lambda!259207))

(assert (not b!6861006))

(assert (not b_lambda!259215))

(assert (not b!6860913))

(assert (not b!6860842))

(assert (not b!6861005))

(assert (not b!6860887))

(assert (not b!6860956))

(assert (not b!6860960))

(assert (not b!6860909))

(assert (not b!6860924))

(assert (not b!6860675))

(assert (not b!6860741))

(assert (not b!6860787))

(assert (not bm!624877))

(assert (not bm!624873))

(assert (not b_lambda!259223))

(assert (not bs!1833515))

(assert (not b!6860783))

(assert (not b!6860981))

(assert (not b!6860844))

(assert (not b!6860935))

(assert (not b!6860915))

(assert (not b!6860709))

(assert (not b!6860997))

(assert (not b_lambda!259217))

(assert (not b!6860946))

(assert (not b!6860896))

(assert (not b!6860972))

(assert (not b!6860753))

(assert (not b!6860921))

(assert (not b!6860931))

(assert (not b!6860764))

(assert (not b!6860677))

(assert (not b!6860773))

(assert (not b!6860894))

(assert (not b!6860937))

(assert (not b!6860774))

(assert (not d!2155585))

(assert (not b!6860934))

(assert (not b!6860951))

(assert (not d!2155609))

(assert (not b!6860758))

(assert (not b!6860942))

(assert (not d!2155535))

(assert (not bm!624898))

(assert (not b!6860777))

(assert (not bs!1833516))

(assert (not bm!624871))

(assert (not b!6860914))

(assert (not b!6861003))

(assert (not b!6860838))

(assert (not b!6860975))

(assert (not b!6860694))

(assert (not bm!624891))

(assert (not b!6860871))

(assert (not bm!624890))

(assert (not b!6860742))

(assert (not b!6860817))

(assert (not b!6860967))

(assert (not bm!624874))

(assert (not b!6860763))

(assert (not b!6860985))

(assert (not d!2155583))

(assert (not b!6860996))

(assert (not setNonEmpty!47188))

(assert (not bs!1833514))

(assert (not b!6860739))

(assert (not b!6860916))

(assert (not d!2155543))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!259275 () Bool)

(assert (= b_lambda!259227 (or b!6860114 b_lambda!259275)))

(declare-fun bs!1833664 () Bool)

(declare-fun d!2155751 () Bool)

(assert (= bs!1833664 (and d!2155751 b!6860114)))

(declare-fun res!2799641 () Bool)

(declare-fun e!4136707 () Bool)

(assert (=> bs!1833664 (=> (not res!2799641) (not e!4136707))))

(assert (=> bs!1833664 (= res!2799641 (validRegex!8426 (h!72693 lt!2457393)))))

(assert (=> bs!1833664 (= (dynLambda!26503 lambda!388028 (h!72693 lt!2457393)) e!4136707)))

(declare-fun b!6861358 () Bool)

(assert (=> b!6861358 (= e!4136707 (matchR!8873 (h!72693 lt!2457393) s!2326))))

(assert (= (and bs!1833664 res!2799641) b!6861358))

(assert (=> bs!1833664 m!7595430))

(declare-fun m!7595680 () Bool)

(assert (=> b!6861358 m!7595680))

(assert (=> bs!1833517 d!2155751))

(declare-fun b_lambda!259277 () Bool)

(assert (= b_lambda!259229 (or b!6860130 b_lambda!259277)))

(assert (=> bs!1833520 d!2155481))

(push 1)

(assert (not b_lambda!259221))

(assert (not bs!1833521))

(assert tp_is_empty!42633)

(assert (not b!6860977))

(assert (not b!6861010))

(assert (not b!6860952))

(assert (not b!6860922))

(assert (not b!6860682))

(assert (not b!6860898))

(assert (not b!6860906))

(assert (not b_lambda!259213))

(assert (not b!6860979))

(assert (not b!6860943))

(assert (not b!6860962))

(assert (not d!2155607))

(assert (not d!2155575))

(assert (not b!6860993))

(assert (not b!6860757))

(assert (not d!2155531))

(assert (not b!6861008))

(assert (not b!6860901))

(assert (not b!6860847))

(assert (not b!6860954))

(assert (not bm!624895))

(assert (not b!6860926))

(assert (not d!2155519))

(assert (not b!6860848))

(assert (not b!6860939))

(assert (not b!6860919))

(assert (not b!6860698))

(assert (not b!6860690))

(assert (not b!6860862))

(assert (not b!6860671))

(assert (not d!2155551))

(assert (not b!6860941))

(assert (not b!6860925))

(assert (not b!6860892))

(assert (not b_lambda!259209))

(assert (not b!6860984))

(assert (not b!6860900))

(assert (not b!6860745))

(assert (not b!6860930))

(assert (not b!6860969))

(assert (not b_lambda!259225))

(assert (not b_lambda!259179))

(assert (not d!2155529))

(assert (not b!6860927))

(assert (not b!6860959))

(assert (not b!6860905))

(assert (not b!6861001))

(assert (not b_lambda!259275))

(assert (not b_lambda!259219))

(assert (not bm!624878))

(assert (not d!2155581))

(assert (not b!6860693))

(assert (not d!2155523))

(assert (not b!6860964))

(assert (not b!6860853))

(assert (not b!6860933))

(assert (not d!2155591))

(assert (not b!6860676))

(assert (not b_lambda!259175))

(assert (not b!6860775))

(assert (not b!6860904))

(assert (not d!2155537))

(assert (not d!2155525))

(assert (not b!6860965))

(assert (not b!6860976))

(assert (not b!6860995))

(assert (not b!6860973))

(assert (not b!6860991))

(assert (not bs!1833664))

(assert (not bm!624879))

(assert (not b!6860971))

(assert (not d!2155563))

(assert (not b!6860989))

(assert (not bs!1833513))

(assert (not bm!624897))

(assert (not b!6860771))

(assert (not b!6860744))

(assert (not b!6860859))

(assert (not b!6860907))

(assert (not b!6860980))

(assert (not b!6860692))

(assert (not bs!1833518))

(assert (not b!6860947))

(assert (not b!6860950))

(assert (not b!6860929))

(assert (not b!6860999))

(assert (not b!6861004))

(assert (not b!6861000))

(assert (not b!6860911))

(assert (not b!6860851))

(assert (not bs!1833522))

(assert (not b!6860938))

(assert (not b!6860750))

(assert (not b!6861358))

(assert (not b!6860902))

(assert (not d!2155587))

(assert (not b_lambda!259211))

(assert (not b!6860839))

(assert (not d!2155521))

(assert (not b!6860695))

(assert (not b!6860664))

(assert (not b_lambda!259177))

(assert (not b!6860843))

(assert (not d!2155571))

(assert (not d!2155567))

(assert (not b!6860948))

(assert (not bm!624894))

(assert (not b!6860968))

(assert (not bs!1833519))

(assert (not b!6860987))

(assert (not b!6860992))

(assert (not d!2155557))

(assert (not b!6860920))

(assert (not b!6860963))

(assert (not b!6860772))

(assert (not b!6861009))

(assert (not b!6860699))

(assert (not b!6860988))

(assert (not d!2155547))

(assert (not b!6860958))

(assert (not b!6860955))

(assert (not b!6860841))

(assert (not b!6860702))

(assert (not bm!624892))

(assert (not b!6860945))

(assert (not bm!624876))

(assert (not d!2155549))

(assert (not b!6860879))

(assert (not b!6860704))

(assert (not b!6860706))

(assert (not b!6860917))

(assert (not b!6860897))

(assert (not b!6860738))

(assert (not b!6860665))

(assert (not b!6860983))

(assert (not b!6860785))

(assert (not b!6860910))

(assert (not bm!624899))

(assert (not b!6860743))

(assert (not d!2155553))

(assert (not d!2155579))

(assert (not b!6860884))

(assert (not b_lambda!259207))

(assert (not b!6861006))

(assert (not b_lambda!259215))

(assert (not b!6860913))

(assert (not b!6860842))

(assert (not b!6861005))

(assert (not b!6860887))

(assert (not b!6860956))

(assert (not b!6860960))

(assert (not b!6860909))

(assert (not b!6860924))

(assert (not b!6860675))

(assert (not b!6860741))

(assert (not b!6860787))

(assert (not bm!624877))

(assert (not bm!624873))

(assert (not b_lambda!259223))

(assert (not bs!1833515))

(assert (not b!6860783))

(assert (not b!6860981))

(assert (not b!6860844))

(assert (not b!6860935))

(assert (not b!6860915))

(assert (not b!6860709))

(assert (not b!6860997))

(assert (not b_lambda!259217))

(assert (not b!6860946))

(assert (not b!6860896))

(assert (not b!6860972))

(assert (not b!6860753))

(assert (not b!6860921))

(assert (not b!6860931))

(assert (not b!6860764))

(assert (not b!6860677))

(assert (not b!6860773))

(assert (not b!6860894))

(assert (not b!6860937))

(assert (not b!6860774))

(assert (not d!2155585))

(assert (not b!6860934))

(assert (not b!6860951))

(assert (not d!2155609))

(assert (not b!6860758))

(assert (not b!6860942))

(assert (not d!2155535))

(assert (not bm!624898))

(assert (not b!6860777))

(assert (not bs!1833516))

(assert (not b_lambda!259277))

(assert (not bm!624871))

(assert (not b!6860914))

(assert (not b!6861003))

(assert (not b!6860838))

(assert (not b!6860975))

(assert (not b!6860694))

(assert (not bm!624891))

(assert (not b!6860871))

(assert (not bm!624890))

(assert (not b!6860742))

(assert (not b!6860817))

(assert (not b!6860967))

(assert (not bm!624874))

(assert (not b!6860763))

(assert (not b!6860985))

(assert (not d!2155583))

(assert (not b!6860996))

(assert (not setNonEmpty!47188))

(assert (not bs!1833514))

(assert (not b!6860739))

(assert (not b!6860916))

(assert (not d!2155543))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2155753 () Bool)

(assert (=> d!2155753 (= (head!13759 (tail!12822 s!2326)) (h!72694 (tail!12822 s!2326)))))

(assert (=> b!6860787 d!2155753))

(declare-fun bs!1833665 () Bool)

(declare-fun b!6861365 () Bool)

(assert (= bs!1833665 (and b!6861365 b!6860886)))

(declare-fun lambda!388170 () Int)

(assert (=> bs!1833665 (= (and (= (reg!17019 (regOne!33893 (regOne!33893 r!7292))) (reg!17019 (regOne!33893 r!7292))) (= (regOne!33893 (regOne!33893 r!7292)) (regOne!33893 r!7292))) (= lambda!388170 lambda!388138))))

(declare-fun bs!1833666 () Bool)

(assert (= bs!1833666 (and b!6861365 b!6860248)))

(assert (=> bs!1833666 (= (and (= (reg!17019 (regOne!33893 (regOne!33893 r!7292))) (reg!17019 r!7292)) (= (regOne!33893 (regOne!33893 r!7292)) r!7292)) (= lambda!388170 lambda!388052))))

(declare-fun bs!1833667 () Bool)

(assert (= bs!1833667 (and b!6861365 b!6860751)))

(assert (=> bs!1833667 (not (= lambda!388170 lambda!388132))))

(declare-fun bs!1833668 () Bool)

(assert (= bs!1833668 (and b!6861365 b!6860247)))

(assert (=> bs!1833668 (not (= lambda!388170 lambda!388053))))

(declare-fun bs!1833669 () Bool)

(assert (= bs!1833669 (and b!6861365 b!6860885)))

(assert (=> bs!1833669 (not (= lambda!388170 lambda!388139))))

(declare-fun bs!1833670 () Bool)

(assert (= bs!1833670 (and b!6861365 b!6860752)))

(assert (=> bs!1833670 (= (and (= (reg!17019 (regOne!33893 (regOne!33893 r!7292))) (reg!17019 (regTwo!33893 r!7292))) (= (regOne!33893 (regOne!33893 r!7292)) (regTwo!33893 r!7292))) (= lambda!388170 lambda!388131))))

(assert (=> b!6861365 true))

(assert (=> b!6861365 true))

(declare-fun bs!1833671 () Bool)

(declare-fun b!6861364 () Bool)

(assert (= bs!1833671 (and b!6861364 b!6860886)))

(declare-fun lambda!388171 () Int)

(assert (=> bs!1833671 (not (= lambda!388171 lambda!388138))))

(declare-fun bs!1833672 () Bool)

(assert (= bs!1833672 (and b!6861364 b!6860248)))

(assert (=> bs!1833672 (not (= lambda!388171 lambda!388052))))

(declare-fun bs!1833673 () Bool)

(assert (= bs!1833673 (and b!6861364 b!6860751)))

(assert (=> bs!1833673 (= (and (= (regOne!33892 (regOne!33893 (regOne!33893 r!7292))) (regOne!33892 (regTwo!33893 r!7292))) (= (regTwo!33892 (regOne!33893 (regOne!33893 r!7292))) (regTwo!33892 (regTwo!33893 r!7292)))) (= lambda!388171 lambda!388132))))

(declare-fun bs!1833674 () Bool)

(assert (= bs!1833674 (and b!6861364 b!6861365)))

(assert (=> bs!1833674 (not (= lambda!388171 lambda!388170))))

(declare-fun bs!1833675 () Bool)

(assert (= bs!1833675 (and b!6861364 b!6860247)))

(assert (=> bs!1833675 (= (and (= (regOne!33892 (regOne!33893 (regOne!33893 r!7292))) (regOne!33892 r!7292)) (= (regTwo!33892 (regOne!33893 (regOne!33893 r!7292))) (regTwo!33892 r!7292))) (= lambda!388171 lambda!388053))))

(declare-fun bs!1833676 () Bool)

(assert (= bs!1833676 (and b!6861364 b!6860885)))

(assert (=> bs!1833676 (= (and (= (regOne!33892 (regOne!33893 (regOne!33893 r!7292))) (regOne!33892 (regOne!33893 r!7292))) (= (regTwo!33892 (regOne!33893 (regOne!33893 r!7292))) (regTwo!33892 (regOne!33893 r!7292)))) (= lambda!388171 lambda!388139))))

(declare-fun bs!1833677 () Bool)

(assert (= bs!1833677 (and b!6861364 b!6860752)))

(assert (=> bs!1833677 (not (= lambda!388171 lambda!388131))))

(assert (=> b!6861364 true))

(assert (=> b!6861364 true))

(declare-fun bm!624929 () Bool)

(declare-fun call!624935 () Bool)

(assert (=> bm!624929 (= call!624935 (isEmpty!38608 s!2326))))

(declare-fun b!6861359 () Bool)

(declare-fun e!4136709 () Bool)

(declare-fun e!4136712 () Bool)

(assert (=> b!6861359 (= e!4136709 e!4136712)))

(declare-fun res!2799644 () Bool)

(assert (=> b!6861359 (= res!2799644 (not (is-EmptyLang!16690 (regOne!33893 (regOne!33893 r!7292)))))))

(assert (=> b!6861359 (=> (not res!2799644) (not e!4136712))))

(declare-fun b!6861360 () Bool)

(declare-fun res!2799643 () Bool)

(declare-fun e!4136710 () Bool)

(assert (=> b!6861360 (=> res!2799643 e!4136710)))

(assert (=> b!6861360 (= res!2799643 call!624935)))

(declare-fun e!4136713 () Bool)

(assert (=> b!6861360 (= e!4136713 e!4136710)))

(declare-fun b!6861361 () Bool)

(assert (=> b!6861361 (= e!4136709 call!624935)))

(declare-fun b!6861362 () Bool)

(declare-fun e!4136708 () Bool)

(assert (=> b!6861362 (= e!4136708 (= s!2326 (Cons!66246 (c!1276936 (regOne!33893 (regOne!33893 r!7292))) Nil!66246)))))

(declare-fun b!6861363 () Bool)

(declare-fun e!4136711 () Bool)

(assert (=> b!6861363 (= e!4136711 (matchRSpec!3791 (regTwo!33893 (regOne!33893 (regOne!33893 r!7292))) s!2326))))

(declare-fun call!624934 () Bool)

(assert (=> b!6861364 (= e!4136713 call!624934)))

(declare-fun d!2155755 () Bool)

(declare-fun c!1277186 () Bool)

(assert (=> d!2155755 (= c!1277186 (is-EmptyExpr!16690 (regOne!33893 (regOne!33893 r!7292))))))

(assert (=> d!2155755 (= (matchRSpec!3791 (regOne!33893 (regOne!33893 r!7292)) s!2326) e!4136709)))

(assert (=> b!6861365 (= e!4136710 call!624934)))

(declare-fun b!6861366 () Bool)

(declare-fun e!4136714 () Bool)

(assert (=> b!6861366 (= e!4136714 e!4136711)))

(declare-fun res!2799642 () Bool)

(assert (=> b!6861366 (= res!2799642 (matchRSpec!3791 (regOne!33893 (regOne!33893 (regOne!33893 r!7292))) s!2326))))

(assert (=> b!6861366 (=> res!2799642 e!4136711)))

(declare-fun c!1277185 () Bool)

(declare-fun bm!624930 () Bool)

(assert (=> bm!624930 (= call!624934 (Exists!3750 (ite c!1277185 lambda!388170 lambda!388171)))))

(declare-fun b!6861367 () Bool)

(assert (=> b!6861367 (= e!4136714 e!4136713)))

(assert (=> b!6861367 (= c!1277185 (is-Star!16690 (regOne!33893 (regOne!33893 r!7292))))))

(declare-fun b!6861368 () Bool)

(declare-fun c!1277187 () Bool)

(assert (=> b!6861368 (= c!1277187 (is-Union!16690 (regOne!33893 (regOne!33893 r!7292))))))

(assert (=> b!6861368 (= e!4136708 e!4136714)))

(declare-fun b!6861369 () Bool)

(declare-fun c!1277184 () Bool)

(assert (=> b!6861369 (= c!1277184 (is-ElementMatch!16690 (regOne!33893 (regOne!33893 r!7292))))))

(assert (=> b!6861369 (= e!4136712 e!4136708)))

(assert (= (and d!2155755 c!1277186) b!6861361))

(assert (= (and d!2155755 (not c!1277186)) b!6861359))

(assert (= (and b!6861359 res!2799644) b!6861369))

(assert (= (and b!6861369 c!1277184) b!6861362))

(assert (= (and b!6861369 (not c!1277184)) b!6861368))

(assert (= (and b!6861368 c!1277187) b!6861366))

(assert (= (and b!6861368 (not c!1277187)) b!6861367))

(assert (= (and b!6861366 (not res!2799642)) b!6861363))

(assert (= (and b!6861367 c!1277185) b!6861360))

(assert (= (and b!6861367 (not c!1277185)) b!6861364))

(assert (= (and b!6861360 (not res!2799643)) b!6861365))

(assert (= (or b!6861365 b!6861364) bm!624930))

(assert (= (or b!6861361 b!6861360) bm!624929))

(assert (=> bm!624929 m!7594968))

(declare-fun m!7595682 () Bool)

(assert (=> b!6861363 m!7595682))

(declare-fun m!7595684 () Bool)

(assert (=> b!6861366 m!7595684))

(declare-fun m!7595686 () Bool)

(assert (=> bm!624930 m!7595686))

(assert (=> b!6860887 d!2155755))

(declare-fun d!2155757 () Bool)

(declare-fun res!2799645 () Bool)

(declare-fun e!4136717 () Bool)

(assert (=> d!2155757 (=> res!2799645 e!4136717)))

(assert (=> d!2155757 (= res!2799645 (is-ElementMatch!16690 lt!2457498))))

(assert (=> d!2155757 (= (validRegex!8426 lt!2457498) e!4136717)))

(declare-fun b!6861370 () Bool)

(declare-fun e!4136716 () Bool)

(declare-fun e!4136720 () Bool)

(assert (=> b!6861370 (= e!4136716 e!4136720)))

(declare-fun c!1277189 () Bool)

(assert (=> b!6861370 (= c!1277189 (is-Union!16690 lt!2457498))))

(declare-fun b!6861371 () Bool)

(declare-fun e!4136718 () Bool)

(declare-fun e!4136721 () Bool)

(assert (=> b!6861371 (= e!4136718 e!4136721)))

(declare-fun res!2799647 () Bool)

(assert (=> b!6861371 (=> (not res!2799647) (not e!4136721))))

(declare-fun call!624936 () Bool)

(assert (=> b!6861371 (= res!2799647 call!624936)))

(declare-fun b!6861372 () Bool)

(declare-fun e!4136719 () Bool)

(assert (=> b!6861372 (= e!4136716 e!4136719)))

(declare-fun res!2799646 () Bool)

(assert (=> b!6861372 (= res!2799646 (not (nullable!6651 (reg!17019 lt!2457498))))))

(assert (=> b!6861372 (=> (not res!2799646) (not e!4136719))))

(declare-fun b!6861373 () Bool)

(assert (=> b!6861373 (= e!4136717 e!4136716)))

(declare-fun c!1277188 () Bool)

(assert (=> b!6861373 (= c!1277188 (is-Star!16690 lt!2457498))))

(declare-fun b!6861374 () Bool)

(declare-fun res!2799649 () Bool)

(assert (=> b!6861374 (=> res!2799649 e!4136718)))

(assert (=> b!6861374 (= res!2799649 (not (is-Concat!25535 lt!2457498)))))

(assert (=> b!6861374 (= e!4136720 e!4136718)))

(declare-fun bm!624931 () Bool)

(declare-fun call!624937 () Bool)

(assert (=> bm!624931 (= call!624937 (validRegex!8426 (ite c!1277189 (regTwo!33893 lt!2457498) (regTwo!33892 lt!2457498))))))

(declare-fun b!6861375 () Bool)

(declare-fun call!624938 () Bool)

(assert (=> b!6861375 (= e!4136719 call!624938)))

(declare-fun bm!624932 () Bool)

(assert (=> bm!624932 (= call!624936 call!624938)))

(declare-fun b!6861376 () Bool)

(declare-fun e!4136715 () Bool)

(assert (=> b!6861376 (= e!4136715 call!624937)))

(declare-fun b!6861377 () Bool)

(assert (=> b!6861377 (= e!4136721 call!624937)))

(declare-fun bm!624933 () Bool)

(assert (=> bm!624933 (= call!624938 (validRegex!8426 (ite c!1277188 (reg!17019 lt!2457498) (ite c!1277189 (regOne!33893 lt!2457498) (regOne!33892 lt!2457498)))))))

(declare-fun b!6861378 () Bool)

(declare-fun res!2799648 () Bool)

(assert (=> b!6861378 (=> (not res!2799648) (not e!4136715))))

(assert (=> b!6861378 (= res!2799648 call!624936)))

(assert (=> b!6861378 (= e!4136720 e!4136715)))

(assert (= (and d!2155757 (not res!2799645)) b!6861373))

(assert (= (and b!6861373 c!1277188) b!6861372))

(assert (= (and b!6861373 (not c!1277188)) b!6861370))

(assert (= (and b!6861372 res!2799646) b!6861375))

(assert (= (and b!6861370 c!1277189) b!6861378))

(assert (= (and b!6861370 (not c!1277189)) b!6861374))

(assert (= (and b!6861378 res!2799648) b!6861376))

(assert (= (and b!6861374 (not res!2799649)) b!6861371))

(assert (= (and b!6861371 res!2799647) b!6861377))

(assert (= (or b!6861376 b!6861377) bm!624931))

(assert (= (or b!6861378 b!6861371) bm!624932))

(assert (= (or b!6861375 bm!624932) bm!624933))

(declare-fun m!7595688 () Bool)

(assert (=> b!6861372 m!7595688))

(declare-fun m!7595690 () Bool)

(assert (=> bm!624931 m!7595690))

(declare-fun m!7595692 () Bool)

(assert (=> bm!624933 m!7595692))

(assert (=> d!2155571 d!2155757))

(declare-fun d!2155759 () Bool)

(declare-fun res!2799650 () Bool)

(declare-fun e!4136722 () Bool)

(assert (=> d!2155759 (=> res!2799650 e!4136722)))

(assert (=> d!2155759 (= res!2799650 (is-Nil!66245 (unfocusZipperList!2107 zl!343)))))

(assert (=> d!2155759 (= (forall!15877 (unfocusZipperList!2107 zl!343) lambda!388130) e!4136722)))

(declare-fun b!6861379 () Bool)

(declare-fun e!4136723 () Bool)

(assert (=> b!6861379 (= e!4136722 e!4136723)))

(declare-fun res!2799651 () Bool)

(assert (=> b!6861379 (=> (not res!2799651) (not e!4136723))))

(assert (=> b!6861379 (= res!2799651 (dynLambda!26503 lambda!388130 (h!72693 (unfocusZipperList!2107 zl!343))))))

(declare-fun b!6861380 () Bool)

(assert (=> b!6861380 (= e!4136723 (forall!15877 (t!380112 (unfocusZipperList!2107 zl!343)) lambda!388130))))

(assert (= (and d!2155759 (not res!2799650)) b!6861379))

(assert (= (and b!6861379 res!2799651) b!6861380))

(declare-fun b_lambda!259279 () Bool)

(assert (=> (not b_lambda!259279) (not b!6861379)))

(declare-fun m!7595694 () Bool)

(assert (=> b!6861379 m!7595694))

(declare-fun m!7595696 () Bool)

(assert (=> b!6861380 m!7595696))

(assert (=> d!2155571 d!2155759))

(declare-fun d!2155761 () Bool)

(declare-fun lt!2457523 () Bool)

(assert (=> d!2155761 (= lt!2457523 (set.member lt!2457391 (content!13003 (t!380114 (t!380114 zl!343)))))))

(declare-fun e!4136725 () Bool)

(assert (=> d!2155761 (= lt!2457523 e!4136725)))

(declare-fun res!2799652 () Bool)

(assert (=> d!2155761 (=> (not res!2799652) (not e!4136725))))

(assert (=> d!2155761 (= res!2799652 (is-Cons!66247 (t!380114 (t!380114 zl!343))))))

(assert (=> d!2155761 (= (contains!20348 (t!380114 (t!380114 zl!343)) lt!2457391) lt!2457523)))

(declare-fun b!6861381 () Bool)

(declare-fun e!4136724 () Bool)

(assert (=> b!6861381 (= e!4136725 e!4136724)))

(declare-fun res!2799653 () Bool)

(assert (=> b!6861381 (=> res!2799653 e!4136724)))

(assert (=> b!6861381 (= res!2799653 (= (h!72695 (t!380114 (t!380114 zl!343))) lt!2457391))))

(declare-fun b!6861382 () Bool)

(assert (=> b!6861382 (= e!4136724 (contains!20348 (t!380114 (t!380114 (t!380114 zl!343))) lt!2457391))))

(assert (= (and d!2155761 res!2799652) b!6861381))

(assert (= (and b!6861381 (not res!2799653)) b!6861382))

(declare-fun m!7595698 () Bool)

(assert (=> d!2155761 m!7595698))

(declare-fun m!7595700 () Bool)

(assert (=> d!2155761 m!7595700))

(declare-fun m!7595702 () Bool)

(assert (=> b!6861382 m!7595702))

(assert (=> b!6860692 d!2155761))

(declare-fun d!2155763 () Bool)

(declare-fun lt!2457526 () Bool)

(assert (=> d!2155763 (= lt!2457526 (exists!2811 (toList!10474 z!1189) lambda!388112))))

(declare-fun choose!51140 ((Set Context!12148) Int) Bool)

(assert (=> d!2155763 (= lt!2457526 (choose!51140 z!1189 lambda!388112))))

(assert (=> d!2155763 (= (exists!2814 z!1189 lambda!388112) lt!2457526)))

(declare-fun bs!1833678 () Bool)

(assert (= bs!1833678 d!2155763))

(assert (=> bs!1833678 m!7594910))

(assert (=> bs!1833678 m!7594910))

(declare-fun m!7595704 () Bool)

(assert (=> bs!1833678 m!7595704))

(declare-fun m!7595706 () Bool)

(assert (=> bs!1833678 m!7595706))

(assert (=> d!2155519 d!2155763))

(declare-fun d!2155765 () Bool)

(declare-fun res!2799654 () Bool)

(declare-fun e!4136728 () Bool)

(assert (=> d!2155765 (=> res!2799654 e!4136728)))

(assert (=> d!2155765 (= res!2799654 (is-ElementMatch!16690 (h!72693 (exprs!6574 (h!72695 zl!343)))))))

(assert (=> d!2155765 (= (validRegex!8426 (h!72693 (exprs!6574 (h!72695 zl!343)))) e!4136728)))

(declare-fun b!6861383 () Bool)

(declare-fun e!4136727 () Bool)

(declare-fun e!4136731 () Bool)

(assert (=> b!6861383 (= e!4136727 e!4136731)))

(declare-fun c!1277191 () Bool)

(assert (=> b!6861383 (= c!1277191 (is-Union!16690 (h!72693 (exprs!6574 (h!72695 zl!343)))))))

(declare-fun b!6861384 () Bool)

(declare-fun e!4136729 () Bool)

(declare-fun e!4136732 () Bool)

(assert (=> b!6861384 (= e!4136729 e!4136732)))

(declare-fun res!2799656 () Bool)

(assert (=> b!6861384 (=> (not res!2799656) (not e!4136732))))

(declare-fun call!624939 () Bool)

(assert (=> b!6861384 (= res!2799656 call!624939)))

(declare-fun b!6861385 () Bool)

(declare-fun e!4136730 () Bool)

(assert (=> b!6861385 (= e!4136727 e!4136730)))

(declare-fun res!2799655 () Bool)

(assert (=> b!6861385 (= res!2799655 (not (nullable!6651 (reg!17019 (h!72693 (exprs!6574 (h!72695 zl!343)))))))))

(assert (=> b!6861385 (=> (not res!2799655) (not e!4136730))))

(declare-fun b!6861386 () Bool)

(assert (=> b!6861386 (= e!4136728 e!4136727)))

(declare-fun c!1277190 () Bool)

(assert (=> b!6861386 (= c!1277190 (is-Star!16690 (h!72693 (exprs!6574 (h!72695 zl!343)))))))

(declare-fun b!6861387 () Bool)

(declare-fun res!2799658 () Bool)

(assert (=> b!6861387 (=> res!2799658 e!4136729)))

(assert (=> b!6861387 (= res!2799658 (not (is-Concat!25535 (h!72693 (exprs!6574 (h!72695 zl!343))))))))

(assert (=> b!6861387 (= e!4136731 e!4136729)))

(declare-fun bm!624934 () Bool)

(declare-fun call!624940 () Bool)

(assert (=> bm!624934 (= call!624940 (validRegex!8426 (ite c!1277191 (regTwo!33893 (h!72693 (exprs!6574 (h!72695 zl!343)))) (regTwo!33892 (h!72693 (exprs!6574 (h!72695 zl!343)))))))))

(declare-fun b!6861388 () Bool)

(declare-fun call!624941 () Bool)

(assert (=> b!6861388 (= e!4136730 call!624941)))

(declare-fun bm!624935 () Bool)

(assert (=> bm!624935 (= call!624939 call!624941)))

(declare-fun b!6861389 () Bool)

(declare-fun e!4136726 () Bool)

(assert (=> b!6861389 (= e!4136726 call!624940)))

(declare-fun b!6861390 () Bool)

(assert (=> b!6861390 (= e!4136732 call!624940)))

(declare-fun bm!624936 () Bool)

(assert (=> bm!624936 (= call!624941 (validRegex!8426 (ite c!1277190 (reg!17019 (h!72693 (exprs!6574 (h!72695 zl!343)))) (ite c!1277191 (regOne!33893 (h!72693 (exprs!6574 (h!72695 zl!343)))) (regOne!33892 (h!72693 (exprs!6574 (h!72695 zl!343))))))))))

(declare-fun b!6861391 () Bool)

(declare-fun res!2799657 () Bool)

(assert (=> b!6861391 (=> (not res!2799657) (not e!4136726))))

(assert (=> b!6861391 (= res!2799657 call!624939)))

(assert (=> b!6861391 (= e!4136731 e!4136726)))

(assert (= (and d!2155765 (not res!2799654)) b!6861386))

(assert (= (and b!6861386 c!1277190) b!6861385))

(assert (= (and b!6861386 (not c!1277190)) b!6861383))

(assert (= (and b!6861385 res!2799655) b!6861388))

(assert (= (and b!6861383 c!1277191) b!6861391))

(assert (= (and b!6861383 (not c!1277191)) b!6861387))

(assert (= (and b!6861391 res!2799657) b!6861389))

(assert (= (and b!6861387 (not res!2799658)) b!6861384))

(assert (= (and b!6861384 res!2799656) b!6861390))

(assert (= (or b!6861389 b!6861390) bm!624934))

(assert (= (or b!6861391 b!6861384) bm!624935))

(assert (= (or b!6861388 bm!624935) bm!624936))

(declare-fun m!7595708 () Bool)

(assert (=> b!6861385 m!7595708))

(declare-fun m!7595710 () Bool)

(assert (=> bm!624934 m!7595710))

(declare-fun m!7595712 () Bool)

(assert (=> bm!624936 m!7595712))

(assert (=> bs!1833516 d!2155765))

(assert (=> bm!624877 d!2155545))

(declare-fun d!2155767 () Bool)

(assert (=> d!2155767 (= (nullable!6651 (reg!17019 lt!2457457)) (nullableFct!2527 (reg!17019 lt!2457457)))))

(declare-fun bs!1833679 () Bool)

(assert (= bs!1833679 d!2155767))

(declare-fun m!7595714 () Bool)

(assert (=> bs!1833679 m!7595714))

(assert (=> b!6860709 d!2155767))

(declare-fun d!2155769 () Bool)

(assert (=> d!2155769 (= (nullable!6651 (derivativeStep!5333 r!7292 (head!13759 s!2326))) (nullableFct!2527 (derivativeStep!5333 r!7292 (head!13759 s!2326))))))

(declare-fun bs!1833680 () Bool)

(assert (= bs!1833680 d!2155769))

(assert (=> bs!1833680 m!7594986))

(declare-fun m!7595716 () Bool)

(assert (=> bs!1833680 m!7595716))

(assert (=> b!6860775 d!2155769))

(declare-fun d!2155771 () Bool)

(declare-fun c!1277192 () Bool)

(assert (=> d!2155771 (= c!1277192 (isEmpty!38608 s!2326))))

(declare-fun e!4136733 () Bool)

(assert (=> d!2155771 (= (matchZipper!2656 (set.insert (h!72695 (t!380114 zl!343)) (as set.empty (Set Context!12148))) s!2326) e!4136733)))

(declare-fun b!6861392 () Bool)

(assert (=> b!6861392 (= e!4136733 (nullableZipper!2364 (set.insert (h!72695 (t!380114 zl!343)) (as set.empty (Set Context!12148)))))))

(declare-fun b!6861393 () Bool)

(assert (=> b!6861393 (= e!4136733 (matchZipper!2656 (derivationStepZipper!2611 (set.insert (h!72695 (t!380114 zl!343)) (as set.empty (Set Context!12148))) (head!13759 s!2326)) (tail!12822 s!2326)))))

(assert (= (and d!2155771 c!1277192) b!6861392))

(assert (= (and d!2155771 (not c!1277192)) b!6861393))

(assert (=> d!2155771 m!7594968))

(assert (=> b!6861392 m!7595414))

(declare-fun m!7595718 () Bool)

(assert (=> b!6861392 m!7595718))

(assert (=> b!6861393 m!7594978))

(assert (=> b!6861393 m!7595414))

(assert (=> b!6861393 m!7594978))

(declare-fun m!7595720 () Bool)

(assert (=> b!6861393 m!7595720))

(assert (=> b!6861393 m!7594980))

(assert (=> b!6861393 m!7595720))

(assert (=> b!6861393 m!7594980))

(declare-fun m!7595722 () Bool)

(assert (=> b!6861393 m!7595722))

(assert (=> bs!1833513 d!2155771))

(declare-fun bs!1833681 () Bool)

(declare-fun d!2155773 () Bool)

(assert (= bs!1833681 (and d!2155773 b!6860119)))

(declare-fun lambda!388172 () Int)

(assert (=> bs!1833681 (= lambda!388172 lambda!388030)))

(declare-fun bs!1833682 () Bool)

(assert (= bs!1833682 (and d!2155773 d!2155563)))

(assert (=> bs!1833682 (= lambda!388172 lambda!388127)))

(declare-fun bs!1833683 () Bool)

(assert (= bs!1833683 (and d!2155773 d!2155445)))

(assert (=> bs!1833683 (not (= lambda!388172 lambda!388068))))

(declare-fun bs!1833684 () Bool)

(assert (= bs!1833684 (and d!2155773 d!2155437)))

(assert (=> bs!1833684 (not (= lambda!388172 lambda!388059))))

(declare-fun bs!1833685 () Bool)

(assert (= bs!1833685 (and d!2155773 d!2155475)))

(assert (=> bs!1833685 (= lambda!388172 lambda!388084)))

(assert (=> bs!1833683 (= lambda!388172 lambda!388067)))

(declare-fun bs!1833686 () Bool)

(assert (= bs!1833686 (and d!2155773 b!6860114)))

(assert (=> bs!1833686 (not (= lambda!388172 lambda!388028))))

(declare-fun bs!1833687 () Bool)

(assert (= bs!1833687 (and d!2155773 d!2155587)))

(assert (=> bs!1833687 (= lambda!388172 lambda!388136)))

(declare-fun bs!1833688 () Bool)

(assert (= bs!1833688 (and d!2155773 d!2155447)))

(assert (=> bs!1833688 (= lambda!388172 lambda!388071)))

(declare-fun bs!1833689 () Bool)

(assert (= bs!1833689 (and d!2155773 d!2155571)))

(assert (=> bs!1833689 (= lambda!388172 lambda!388130)))

(declare-fun bs!1833690 () Bool)

(assert (= bs!1833690 (and d!2155773 d!2155591)))

(assert (=> bs!1833690 (= lambda!388172 lambda!388137)))

(declare-fun bs!1833691 () Bool)

(assert (= bs!1833691 (and d!2155773 d!2155529)))

(assert (=> bs!1833691 (not (= lambda!388172 lambda!388117))))

(declare-fun bs!1833692 () Bool)

(assert (= bs!1833692 (and d!2155773 d!2155531)))

(assert (=> bs!1833692 (not (= lambda!388172 lambda!388120))))

(declare-fun bs!1833693 () Bool)

(assert (= bs!1833693 (and d!2155773 d!2155557)))

(assert (=> bs!1833693 (= lambda!388172 lambda!388124)))

(declare-fun bs!1833694 () Bool)

(assert (= bs!1833694 (and d!2155773 d!2155453)))

(assert (=> bs!1833694 (= lambda!388172 lambda!388074)))

(declare-fun bs!1833695 () Bool)

(assert (= bs!1833695 (and d!2155773 d!2155461)))

(assert (=> bs!1833695 (= lambda!388172 lambda!388081)))

(declare-fun bs!1833696 () Bool)

(assert (= bs!1833696 (and d!2155773 d!2155585)))

(assert (=> bs!1833696 (= lambda!388172 lambda!388135)))

(assert (=> d!2155773 (= (inv!84973 (h!72695 (t!380114 (t!380114 zl!343)))) (forall!15877 (exprs!6574 (h!72695 (t!380114 (t!380114 zl!343)))) lambda!388172))))

(declare-fun bs!1833697 () Bool)

(assert (= bs!1833697 d!2155773))

(declare-fun m!7595724 () Bool)

(assert (=> bs!1833697 m!7595724))

(assert (=> b!6860916 d!2155773))

(declare-fun d!2155775 () Bool)

(declare-fun res!2799659 () Bool)

(declare-fun e!4136734 () Bool)

(assert (=> d!2155775 (=> res!2799659 e!4136734)))

(assert (=> d!2155775 (= res!2799659 (is-Nil!66245 (t!380112 (exprs!6574 lt!2457391))))))

(assert (=> d!2155775 (= (forall!15877 (t!380112 (exprs!6574 lt!2457391)) lambda!388084) e!4136734)))

(declare-fun b!6861394 () Bool)

(declare-fun e!4136735 () Bool)

(assert (=> b!6861394 (= e!4136734 e!4136735)))

(declare-fun res!2799660 () Bool)

(assert (=> b!6861394 (=> (not res!2799660) (not e!4136735))))

(assert (=> b!6861394 (= res!2799660 (dynLambda!26503 lambda!388084 (h!72693 (t!380112 (exprs!6574 lt!2457391)))))))

(declare-fun b!6861395 () Bool)

(assert (=> b!6861395 (= e!4136735 (forall!15877 (t!380112 (t!380112 (exprs!6574 lt!2457391))) lambda!388084))))

(assert (= (and d!2155775 (not res!2799659)) b!6861394))

(assert (= (and b!6861394 res!2799660) b!6861395))

(declare-fun b_lambda!259281 () Bool)

(assert (=> (not b_lambda!259281) (not b!6861394)))

(declare-fun m!7595726 () Bool)

(assert (=> b!6861394 m!7595726))

(declare-fun m!7595728 () Bool)

(assert (=> b!6861395 m!7595728))

(assert (=> b!6860704 d!2155775))

(declare-fun d!2155777 () Bool)

(declare-fun res!2799661 () Bool)

(declare-fun e!4136736 () Bool)

(assert (=> d!2155777 (=> res!2799661 e!4136736)))

(assert (=> d!2155777 (= res!2799661 (is-Nil!66247 res!2799513))))

(assert (=> d!2155777 (= (noDuplicate!2454 res!2799513) e!4136736)))

(declare-fun b!6861396 () Bool)

(declare-fun e!4136737 () Bool)

(assert (=> b!6861396 (= e!4136736 e!4136737)))

(declare-fun res!2799662 () Bool)

(assert (=> b!6861396 (=> (not res!2799662) (not e!4136737))))

(assert (=> b!6861396 (= res!2799662 (not (contains!20348 (t!380114 res!2799513) (h!72695 res!2799513))))))

(declare-fun b!6861397 () Bool)

(assert (=> b!6861397 (= e!4136737 (noDuplicate!2454 (t!380114 res!2799513)))))

(assert (= (and d!2155777 (not res!2799661)) b!6861396))

(assert (= (and b!6861396 res!2799662) b!6861397))

(declare-fun m!7595730 () Bool)

(assert (=> b!6861396 m!7595730))

(declare-fun m!7595732 () Bool)

(assert (=> b!6861397 m!7595732))

(assert (=> d!2155579 d!2155777))

(declare-fun d!2155779 () Bool)

(declare-fun res!2799663 () Bool)

(declare-fun e!4136738 () Bool)

(assert (=> d!2155779 (=> res!2799663 e!4136738)))

(assert (=> d!2155779 (= res!2799663 (is-Nil!66245 (t!380112 (exprs!6574 setElem!47178))))))

(assert (=> d!2155779 (= (forall!15877 (t!380112 (exprs!6574 setElem!47178)) lambda!388081) e!4136738)))

(declare-fun b!6861398 () Bool)

(declare-fun e!4136739 () Bool)

(assert (=> b!6861398 (= e!4136738 e!4136739)))

(declare-fun res!2799664 () Bool)

(assert (=> b!6861398 (=> (not res!2799664) (not e!4136739))))

(assert (=> b!6861398 (= res!2799664 (dynLambda!26503 lambda!388081 (h!72693 (t!380112 (exprs!6574 setElem!47178)))))))

(declare-fun b!6861399 () Bool)

(assert (=> b!6861399 (= e!4136739 (forall!15877 (t!380112 (t!380112 (exprs!6574 setElem!47178))) lambda!388081))))

(assert (= (and d!2155779 (not res!2799663)) b!6861398))

(assert (= (and b!6861398 res!2799664) b!6861399))

(declare-fun b_lambda!259283 () Bool)

(assert (=> (not b_lambda!259283) (not b!6861398)))

(declare-fun m!7595734 () Bool)

(assert (=> b!6861398 m!7595734))

(declare-fun m!7595736 () Bool)

(assert (=> b!6861399 m!7595736))

(assert (=> b!6860706 d!2155779))

(assert (=> d!2155531 d!2155425))

(declare-fun bs!1833698 () Bool)

(declare-fun d!2155781 () Bool)

(assert (= bs!1833698 (and d!2155781 b!6860119)))

(declare-fun lambda!388173 () Int)

(assert (=> bs!1833698 (not (= lambda!388173 lambda!388030))))

(declare-fun bs!1833699 () Bool)

(assert (= bs!1833699 (and d!2155781 d!2155563)))

(assert (=> bs!1833699 (not (= lambda!388173 lambda!388127))))

(declare-fun bs!1833700 () Bool)

(assert (= bs!1833700 (and d!2155781 d!2155445)))

(assert (=> bs!1833700 (not (= lambda!388173 lambda!388068))))

(declare-fun bs!1833701 () Bool)

(assert (= bs!1833701 (and d!2155781 d!2155437)))

(assert (=> bs!1833701 (= (= lambda!388120 lambda!388028) (= lambda!388173 lambda!388059))))

(assert (=> bs!1833700 (not (= lambda!388173 lambda!388067))))

(declare-fun bs!1833702 () Bool)

(assert (= bs!1833702 (and d!2155781 b!6860114)))

(assert (=> bs!1833702 (not (= lambda!388173 lambda!388028))))

(declare-fun bs!1833703 () Bool)

(assert (= bs!1833703 (and d!2155781 d!2155587)))

(assert (=> bs!1833703 (not (= lambda!388173 lambda!388136))))

(declare-fun bs!1833704 () Bool)

(assert (= bs!1833704 (and d!2155781 d!2155447)))

(assert (=> bs!1833704 (not (= lambda!388173 lambda!388071))))

(declare-fun bs!1833705 () Bool)

(assert (= bs!1833705 (and d!2155781 d!2155571)))

(assert (=> bs!1833705 (not (= lambda!388173 lambda!388130))))

(declare-fun bs!1833706 () Bool)

(assert (= bs!1833706 (and d!2155781 d!2155591)))

(assert (=> bs!1833706 (not (= lambda!388173 lambda!388137))))

(declare-fun bs!1833707 () Bool)

(assert (= bs!1833707 (and d!2155781 d!2155475)))

(assert (=> bs!1833707 (not (= lambda!388173 lambda!388084))))

(declare-fun bs!1833708 () Bool)

(assert (= bs!1833708 (and d!2155781 d!2155773)))

(assert (=> bs!1833708 (not (= lambda!388173 lambda!388172))))

(declare-fun bs!1833709 () Bool)

(assert (= bs!1833709 (and d!2155781 d!2155529)))

(assert (=> bs!1833709 (= (= lambda!388120 lambda!388068) (= lambda!388173 lambda!388117))))

(declare-fun bs!1833710 () Bool)

(assert (= bs!1833710 (and d!2155781 d!2155531)))

(assert (=> bs!1833710 (not (= lambda!388173 lambda!388120))))

(declare-fun bs!1833711 () Bool)

(assert (= bs!1833711 (and d!2155781 d!2155557)))

(assert (=> bs!1833711 (not (= lambda!388173 lambda!388124))))

(declare-fun bs!1833712 () Bool)

(assert (= bs!1833712 (and d!2155781 d!2155453)))

(assert (=> bs!1833712 (not (= lambda!388173 lambda!388074))))

(declare-fun bs!1833713 () Bool)

(assert (= bs!1833713 (and d!2155781 d!2155461)))

(assert (=> bs!1833713 (not (= lambda!388173 lambda!388081))))

(declare-fun bs!1833714 () Bool)

(assert (= bs!1833714 (and d!2155781 d!2155585)))

(assert (=> bs!1833714 (not (= lambda!388173 lambda!388135))))

(assert (=> d!2155781 true))

(assert (=> d!2155781 (< (dynLambda!26501 order!27703 lambda!388120) (dynLambda!26501 order!27703 lambda!388173))))

(assert (=> d!2155781 (= (exists!2810 lt!2457393 lambda!388120) (not (forall!15877 lt!2457393 lambda!388173)))))

(declare-fun bs!1833715 () Bool)

(assert (= bs!1833715 d!2155781))

(declare-fun m!7595738 () Bool)

(assert (=> bs!1833715 m!7595738))

(assert (=> d!2155531 d!2155781))

(declare-fun bs!1833716 () Bool)

(declare-fun b!6861406 () Bool)

(assert (= bs!1833716 (and b!6861406 b!6861364)))

(declare-fun lambda!388174 () Int)

(assert (=> bs!1833716 (not (= lambda!388174 lambda!388171))))

(declare-fun bs!1833717 () Bool)

(assert (= bs!1833717 (and b!6861406 b!6860886)))

(assert (=> bs!1833717 (= (and (= (reg!17019 (regOne!33893 (regTwo!33893 r!7292))) (reg!17019 (regOne!33893 r!7292))) (= (regOne!33893 (regTwo!33893 r!7292)) (regOne!33893 r!7292))) (= lambda!388174 lambda!388138))))

(declare-fun bs!1833718 () Bool)

(assert (= bs!1833718 (and b!6861406 b!6860248)))

(assert (=> bs!1833718 (= (and (= (reg!17019 (regOne!33893 (regTwo!33893 r!7292))) (reg!17019 r!7292)) (= (regOne!33893 (regTwo!33893 r!7292)) r!7292)) (= lambda!388174 lambda!388052))))

(declare-fun bs!1833719 () Bool)

(assert (= bs!1833719 (and b!6861406 b!6860751)))

(assert (=> bs!1833719 (not (= lambda!388174 lambda!388132))))

(declare-fun bs!1833720 () Bool)

(assert (= bs!1833720 (and b!6861406 b!6861365)))

(assert (=> bs!1833720 (= (and (= (reg!17019 (regOne!33893 (regTwo!33893 r!7292))) (reg!17019 (regOne!33893 (regOne!33893 r!7292)))) (= (regOne!33893 (regTwo!33893 r!7292)) (regOne!33893 (regOne!33893 r!7292)))) (= lambda!388174 lambda!388170))))

(declare-fun bs!1833721 () Bool)

(assert (= bs!1833721 (and b!6861406 b!6860247)))

(assert (=> bs!1833721 (not (= lambda!388174 lambda!388053))))

(declare-fun bs!1833722 () Bool)

(assert (= bs!1833722 (and b!6861406 b!6860885)))

(assert (=> bs!1833722 (not (= lambda!388174 lambda!388139))))

(declare-fun bs!1833723 () Bool)

(assert (= bs!1833723 (and b!6861406 b!6860752)))

(assert (=> bs!1833723 (= (and (= (reg!17019 (regOne!33893 (regTwo!33893 r!7292))) (reg!17019 (regTwo!33893 r!7292))) (= (regOne!33893 (regTwo!33893 r!7292)) (regTwo!33893 r!7292))) (= lambda!388174 lambda!388131))))

(assert (=> b!6861406 true))

(assert (=> b!6861406 true))

(declare-fun bs!1833724 () Bool)

(declare-fun b!6861405 () Bool)

(assert (= bs!1833724 (and b!6861405 b!6861364)))

(declare-fun lambda!388175 () Int)

(assert (=> bs!1833724 (= (and (= (regOne!33892 (regOne!33893 (regTwo!33893 r!7292))) (regOne!33892 (regOne!33893 (regOne!33893 r!7292)))) (= (regTwo!33892 (regOne!33893 (regTwo!33893 r!7292))) (regTwo!33892 (regOne!33893 (regOne!33893 r!7292))))) (= lambda!388175 lambda!388171))))

(declare-fun bs!1833725 () Bool)

(assert (= bs!1833725 (and b!6861405 b!6860886)))

(assert (=> bs!1833725 (not (= lambda!388175 lambda!388138))))

(declare-fun bs!1833726 () Bool)

(assert (= bs!1833726 (and b!6861405 b!6860248)))

(assert (=> bs!1833726 (not (= lambda!388175 lambda!388052))))

(declare-fun bs!1833727 () Bool)

(assert (= bs!1833727 (and b!6861405 b!6860751)))

(assert (=> bs!1833727 (= (and (= (regOne!33892 (regOne!33893 (regTwo!33893 r!7292))) (regOne!33892 (regTwo!33893 r!7292))) (= (regTwo!33892 (regOne!33893 (regTwo!33893 r!7292))) (regTwo!33892 (regTwo!33893 r!7292)))) (= lambda!388175 lambda!388132))))

(declare-fun bs!1833728 () Bool)

(assert (= bs!1833728 (and b!6861405 b!6861365)))

(assert (=> bs!1833728 (not (= lambda!388175 lambda!388170))))

(declare-fun bs!1833729 () Bool)

(assert (= bs!1833729 (and b!6861405 b!6860247)))

(assert (=> bs!1833729 (= (and (= (regOne!33892 (regOne!33893 (regTwo!33893 r!7292))) (regOne!33892 r!7292)) (= (regTwo!33892 (regOne!33893 (regTwo!33893 r!7292))) (regTwo!33892 r!7292))) (= lambda!388175 lambda!388053))))

(declare-fun bs!1833730 () Bool)

(assert (= bs!1833730 (and b!6861405 b!6860885)))

(assert (=> bs!1833730 (= (and (= (regOne!33892 (regOne!33893 (regTwo!33893 r!7292))) (regOne!33892 (regOne!33893 r!7292))) (= (regTwo!33892 (regOne!33893 (regTwo!33893 r!7292))) (regTwo!33892 (regOne!33893 r!7292)))) (= lambda!388175 lambda!388139))))

(declare-fun bs!1833731 () Bool)

(assert (= bs!1833731 (and b!6861405 b!6860752)))

(assert (=> bs!1833731 (not (= lambda!388175 lambda!388131))))

(declare-fun bs!1833732 () Bool)

(assert (= bs!1833732 (and b!6861405 b!6861406)))

(assert (=> bs!1833732 (not (= lambda!388175 lambda!388174))))

(assert (=> b!6861405 true))

(assert (=> b!6861405 true))

(declare-fun bm!624937 () Bool)

(declare-fun call!624943 () Bool)

(assert (=> bm!624937 (= call!624943 (isEmpty!38608 s!2326))))

(declare-fun b!6861400 () Bool)

(declare-fun e!4136741 () Bool)

(declare-fun e!4136744 () Bool)

(assert (=> b!6861400 (= e!4136741 e!4136744)))

(declare-fun res!2799667 () Bool)

(assert (=> b!6861400 (= res!2799667 (not (is-EmptyLang!16690 (regOne!33893 (regTwo!33893 r!7292)))))))

(assert (=> b!6861400 (=> (not res!2799667) (not e!4136744))))

(declare-fun b!6861401 () Bool)

(declare-fun res!2799666 () Bool)

(declare-fun e!4136742 () Bool)

(assert (=> b!6861401 (=> res!2799666 e!4136742)))

(assert (=> b!6861401 (= res!2799666 call!624943)))

(declare-fun e!4136745 () Bool)

(assert (=> b!6861401 (= e!4136745 e!4136742)))

(declare-fun b!6861402 () Bool)

(assert (=> b!6861402 (= e!4136741 call!624943)))

(declare-fun b!6861403 () Bool)

(declare-fun e!4136740 () Bool)

(assert (=> b!6861403 (= e!4136740 (= s!2326 (Cons!66246 (c!1276936 (regOne!33893 (regTwo!33893 r!7292))) Nil!66246)))))

(declare-fun b!6861404 () Bool)

(declare-fun e!4136743 () Bool)

(assert (=> b!6861404 (= e!4136743 (matchRSpec!3791 (regTwo!33893 (regOne!33893 (regTwo!33893 r!7292))) s!2326))))

(declare-fun call!624942 () Bool)

(assert (=> b!6861405 (= e!4136745 call!624942)))

(declare-fun d!2155783 () Bool)

(declare-fun c!1277195 () Bool)

(assert (=> d!2155783 (= c!1277195 (is-EmptyExpr!16690 (regOne!33893 (regTwo!33893 r!7292))))))

(assert (=> d!2155783 (= (matchRSpec!3791 (regOne!33893 (regTwo!33893 r!7292)) s!2326) e!4136741)))

(assert (=> b!6861406 (= e!4136742 call!624942)))

(declare-fun b!6861407 () Bool)

(declare-fun e!4136746 () Bool)

(assert (=> b!6861407 (= e!4136746 e!4136743)))

(declare-fun res!2799665 () Bool)

(assert (=> b!6861407 (= res!2799665 (matchRSpec!3791 (regOne!33893 (regOne!33893 (regTwo!33893 r!7292))) s!2326))))

(assert (=> b!6861407 (=> res!2799665 e!4136743)))

(declare-fun c!1277194 () Bool)

(declare-fun bm!624938 () Bool)

(assert (=> bm!624938 (= call!624942 (Exists!3750 (ite c!1277194 lambda!388174 lambda!388175)))))

(declare-fun b!6861408 () Bool)

(assert (=> b!6861408 (= e!4136746 e!4136745)))

(assert (=> b!6861408 (= c!1277194 (is-Star!16690 (regOne!33893 (regTwo!33893 r!7292))))))

(declare-fun b!6861409 () Bool)

(declare-fun c!1277196 () Bool)

(assert (=> b!6861409 (= c!1277196 (is-Union!16690 (regOne!33893 (regTwo!33893 r!7292))))))

(assert (=> b!6861409 (= e!4136740 e!4136746)))

(declare-fun b!6861410 () Bool)

(declare-fun c!1277193 () Bool)

(assert (=> b!6861410 (= c!1277193 (is-ElementMatch!16690 (regOne!33893 (regTwo!33893 r!7292))))))

(assert (=> b!6861410 (= e!4136744 e!4136740)))

(assert (= (and d!2155783 c!1277195) b!6861402))

(assert (= (and d!2155783 (not c!1277195)) b!6861400))

(assert (= (and b!6861400 res!2799667) b!6861410))

(assert (= (and b!6861410 c!1277193) b!6861403))

(assert (= (and b!6861410 (not c!1277193)) b!6861409))

(assert (= (and b!6861409 c!1277196) b!6861407))

(assert (= (and b!6861409 (not c!1277196)) b!6861408))

(assert (= (and b!6861407 (not res!2799665)) b!6861404))

(assert (= (and b!6861408 c!1277194) b!6861401))

(assert (= (and b!6861408 (not c!1277194)) b!6861405))

(assert (= (and b!6861401 (not res!2799666)) b!6861406))

(assert (= (or b!6861406 b!6861405) bm!624938))

(assert (= (or b!6861402 b!6861401) bm!624937))

(assert (=> bm!624937 m!7594968))

(declare-fun m!7595740 () Bool)

(assert (=> b!6861404 m!7595740))

(declare-fun m!7595742 () Bool)

(assert (=> b!6861407 m!7595742))

(declare-fun m!7595744 () Bool)

(assert (=> bm!624938 m!7595744))

(assert (=> b!6860753 d!2155783))

(declare-fun d!2155785 () Bool)

(assert (=> d!2155785 (= (isEmpty!38610 (t!380112 (exprs!6574 (h!72695 zl!343)))) (is-Nil!66245 (t!380112 (exprs!6574 (h!72695 zl!343)))))))

(assert (=> b!6860839 d!2155785))

(declare-fun d!2155787 () Bool)

(declare-fun res!2799668 () Bool)

(declare-fun e!4136749 () Bool)

(assert (=> d!2155787 (=> res!2799668 e!4136749)))

(assert (=> d!2155787 (= res!2799668 (is-ElementMatch!16690 (ite c!1277048 (reg!17019 lt!2457457) (ite c!1277049 (regOne!33893 lt!2457457) (regOne!33892 lt!2457457)))))))

(assert (=> d!2155787 (= (validRegex!8426 (ite c!1277048 (reg!17019 lt!2457457) (ite c!1277049 (regOne!33893 lt!2457457) (regOne!33892 lt!2457457)))) e!4136749)))

(declare-fun b!6861411 () Bool)

(declare-fun e!4136748 () Bool)

(declare-fun e!4136752 () Bool)

(assert (=> b!6861411 (= e!4136748 e!4136752)))

(declare-fun c!1277198 () Bool)

(assert (=> b!6861411 (= c!1277198 (is-Union!16690 (ite c!1277048 (reg!17019 lt!2457457) (ite c!1277049 (regOne!33893 lt!2457457) (regOne!33892 lt!2457457)))))))

(declare-fun b!6861412 () Bool)

(declare-fun e!4136750 () Bool)

(declare-fun e!4136753 () Bool)

(assert (=> b!6861412 (= e!4136750 e!4136753)))

(declare-fun res!2799670 () Bool)

(assert (=> b!6861412 (=> (not res!2799670) (not e!4136753))))

(declare-fun call!624944 () Bool)

(assert (=> b!6861412 (= res!2799670 call!624944)))

(declare-fun b!6861413 () Bool)

(declare-fun e!4136751 () Bool)

(assert (=> b!6861413 (= e!4136748 e!4136751)))

(declare-fun res!2799669 () Bool)

(assert (=> b!6861413 (= res!2799669 (not (nullable!6651 (reg!17019 (ite c!1277048 (reg!17019 lt!2457457) (ite c!1277049 (regOne!33893 lt!2457457) (regOne!33892 lt!2457457)))))))))

(assert (=> b!6861413 (=> (not res!2799669) (not e!4136751))))

(declare-fun b!6861414 () Bool)

(assert (=> b!6861414 (= e!4136749 e!4136748)))

(declare-fun c!1277197 () Bool)

(assert (=> b!6861414 (= c!1277197 (is-Star!16690 (ite c!1277048 (reg!17019 lt!2457457) (ite c!1277049 (regOne!33893 lt!2457457) (regOne!33892 lt!2457457)))))))

(declare-fun b!6861415 () Bool)

(declare-fun res!2799672 () Bool)

(assert (=> b!6861415 (=> res!2799672 e!4136750)))

(assert (=> b!6861415 (= res!2799672 (not (is-Concat!25535 (ite c!1277048 (reg!17019 lt!2457457) (ite c!1277049 (regOne!33893 lt!2457457) (regOne!33892 lt!2457457))))))))

(assert (=> b!6861415 (= e!4136752 e!4136750)))

(declare-fun bm!624939 () Bool)

(declare-fun call!624945 () Bool)

(assert (=> bm!624939 (= call!624945 (validRegex!8426 (ite c!1277198 (regTwo!33893 (ite c!1277048 (reg!17019 lt!2457457) (ite c!1277049 (regOne!33893 lt!2457457) (regOne!33892 lt!2457457)))) (regTwo!33892 (ite c!1277048 (reg!17019 lt!2457457) (ite c!1277049 (regOne!33893 lt!2457457) (regOne!33892 lt!2457457)))))))))

(declare-fun b!6861416 () Bool)

(declare-fun call!624946 () Bool)

(assert (=> b!6861416 (= e!4136751 call!624946)))

(declare-fun bm!624940 () Bool)

(assert (=> bm!624940 (= call!624944 call!624946)))

(declare-fun b!6861417 () Bool)

(declare-fun e!4136747 () Bool)

(assert (=> b!6861417 (= e!4136747 call!624945)))

(declare-fun b!6861418 () Bool)

(assert (=> b!6861418 (= e!4136753 call!624945)))

(declare-fun bm!624941 () Bool)

(assert (=> bm!624941 (= call!624946 (validRegex!8426 (ite c!1277197 (reg!17019 (ite c!1277048 (reg!17019 lt!2457457) (ite c!1277049 (regOne!33893 lt!2457457) (regOne!33892 lt!2457457)))) (ite c!1277198 (regOne!33893 (ite c!1277048 (reg!17019 lt!2457457) (ite c!1277049 (regOne!33893 lt!2457457) (regOne!33892 lt!2457457)))) (regOne!33892 (ite c!1277048 (reg!17019 lt!2457457) (ite c!1277049 (regOne!33893 lt!2457457) (regOne!33892 lt!2457457))))))))))

(declare-fun b!6861419 () Bool)

(declare-fun res!2799671 () Bool)

(assert (=> b!6861419 (=> (not res!2799671) (not e!4136747))))

(assert (=> b!6861419 (= res!2799671 call!624944)))

(assert (=> b!6861419 (= e!4136752 e!4136747)))

(assert (= (and d!2155787 (not res!2799668)) b!6861414))

(assert (= (and b!6861414 c!1277197) b!6861413))

(assert (= (and b!6861414 (not c!1277197)) b!6861411))

(assert (= (and b!6861413 res!2799669) b!6861416))

(assert (= (and b!6861411 c!1277198) b!6861419))

(assert (= (and b!6861411 (not c!1277198)) b!6861415))

(assert (= (and b!6861419 res!2799671) b!6861417))

(assert (= (and b!6861415 (not res!2799672)) b!6861412))

(assert (= (and b!6861412 res!2799670) b!6861418))

(assert (= (or b!6861417 b!6861418) bm!624939))

(assert (= (or b!6861419 b!6861412) bm!624940))

(assert (= (or b!6861416 bm!624940) bm!624941))

(declare-fun m!7595746 () Bool)

(assert (=> b!6861413 m!7595746))

(declare-fun m!7595748 () Bool)

(assert (=> bm!624939 m!7595748))

(declare-fun m!7595750 () Bool)

(assert (=> bm!624941 m!7595750))

(assert (=> bm!624876 d!2155787))

(declare-fun d!2155789 () Bool)

(declare-fun res!2799673 () Bool)

(declare-fun e!4136756 () Bool)

(assert (=> d!2155789 (=> res!2799673 e!4136756)))

(assert (=> d!2155789 (= res!2799673 (is-ElementMatch!16690 lt!2457502))))

(assert (=> d!2155789 (= (validRegex!8426 lt!2457502) e!4136756)))

(declare-fun b!6861420 () Bool)

(declare-fun e!4136755 () Bool)

(declare-fun e!4136759 () Bool)

(assert (=> b!6861420 (= e!4136755 e!4136759)))

(declare-fun c!1277200 () Bool)

(assert (=> b!6861420 (= c!1277200 (is-Union!16690 lt!2457502))))

(declare-fun b!6861421 () Bool)

(declare-fun e!4136757 () Bool)

(declare-fun e!4136760 () Bool)

(assert (=> b!6861421 (= e!4136757 e!4136760)))

(declare-fun res!2799675 () Bool)

(assert (=> b!6861421 (=> (not res!2799675) (not e!4136760))))

(declare-fun call!624947 () Bool)

(assert (=> b!6861421 (= res!2799675 call!624947)))

(declare-fun b!6861422 () Bool)

(declare-fun e!4136758 () Bool)

(assert (=> b!6861422 (= e!4136755 e!4136758)))

(declare-fun res!2799674 () Bool)

(assert (=> b!6861422 (= res!2799674 (not (nullable!6651 (reg!17019 lt!2457502))))))

(assert (=> b!6861422 (=> (not res!2799674) (not e!4136758))))

(declare-fun b!6861423 () Bool)

(assert (=> b!6861423 (= e!4136756 e!4136755)))

(declare-fun c!1277199 () Bool)

(assert (=> b!6861423 (= c!1277199 (is-Star!16690 lt!2457502))))

(declare-fun b!6861424 () Bool)

(declare-fun res!2799677 () Bool)

(assert (=> b!6861424 (=> res!2799677 e!4136757)))

(assert (=> b!6861424 (= res!2799677 (not (is-Concat!25535 lt!2457502)))))

(assert (=> b!6861424 (= e!4136759 e!4136757)))

(declare-fun bm!624942 () Bool)

(declare-fun call!624948 () Bool)

(assert (=> bm!624942 (= call!624948 (validRegex!8426 (ite c!1277200 (regTwo!33893 lt!2457502) (regTwo!33892 lt!2457502))))))

(declare-fun b!6861425 () Bool)

(declare-fun call!624949 () Bool)

(assert (=> b!6861425 (= e!4136758 call!624949)))

(declare-fun bm!624943 () Bool)

(assert (=> bm!624943 (= call!624947 call!624949)))

(declare-fun b!6861426 () Bool)

(declare-fun e!4136754 () Bool)

(assert (=> b!6861426 (= e!4136754 call!624948)))

(declare-fun b!6861427 () Bool)

(assert (=> b!6861427 (= e!4136760 call!624948)))

(declare-fun bm!624944 () Bool)

(assert (=> bm!624944 (= call!624949 (validRegex!8426 (ite c!1277199 (reg!17019 lt!2457502) (ite c!1277200 (regOne!33893 lt!2457502) (regOne!33892 lt!2457502)))))))

(declare-fun b!6861428 () Bool)

(declare-fun res!2799676 () Bool)

(assert (=> b!6861428 (=> (not res!2799676) (not e!4136754))))

(assert (=> b!6861428 (= res!2799676 call!624947)))

(assert (=> b!6861428 (= e!4136759 e!4136754)))

(assert (= (and d!2155789 (not res!2799673)) b!6861423))

(assert (= (and b!6861423 c!1277199) b!6861422))

(assert (= (and b!6861423 (not c!1277199)) b!6861420))

(assert (= (and b!6861422 res!2799674) b!6861425))

(assert (= (and b!6861420 c!1277200) b!6861428))

(assert (= (and b!6861420 (not c!1277200)) b!6861424))

(assert (= (and b!6861428 res!2799676) b!6861426))

(assert (= (and b!6861424 (not res!2799677)) b!6861421))

(assert (= (and b!6861421 res!2799675) b!6861427))

(assert (= (or b!6861426 b!6861427) bm!624942))

(assert (= (or b!6861428 b!6861421) bm!624943))

(assert (= (or b!6861425 bm!624943) bm!624944))

(declare-fun m!7595752 () Bool)

(assert (=> b!6861422 m!7595752))

(declare-fun m!7595754 () Bool)

(assert (=> bm!624942 m!7595754))

(declare-fun m!7595756 () Bool)

(assert (=> bm!624944 m!7595756))

(assert (=> d!2155583 d!2155789))

(assert (=> d!2155583 d!2155465))

(declare-fun b!6861443 () Bool)

(declare-fun e!4136777 () Bool)

(declare-fun e!4136774 () Bool)

(assert (=> b!6861443 (= e!4136777 e!4136774)))

(declare-fun res!2799688 () Bool)

(declare-fun call!624954 () Bool)

(assert (=> b!6861443 (= res!2799688 call!624954)))

(assert (=> b!6861443 (=> (not res!2799688) (not e!4136774))))

(declare-fun bm!624949 () Bool)

(declare-fun c!1277203 () Bool)

(assert (=> bm!624949 (= call!624954 (nullable!6651 (ite c!1277203 (regOne!33893 (reg!17019 r!7292)) (regOne!33892 (reg!17019 r!7292)))))))

(declare-fun b!6861444 () Bool)

(declare-fun e!4136773 () Bool)

(declare-fun e!4136775 () Bool)

(assert (=> b!6861444 (= e!4136773 e!4136775)))

(declare-fun res!2799691 () Bool)

(assert (=> b!6861444 (=> (not res!2799691) (not e!4136775))))

(assert (=> b!6861444 (= res!2799691 (and (not (is-EmptyLang!16690 (reg!17019 r!7292))) (not (is-ElementMatch!16690 (reg!17019 r!7292)))))))

(declare-fun b!6861446 () Bool)

(declare-fun e!4136778 () Bool)

(assert (=> b!6861446 (= e!4136778 e!4136777)))

(assert (=> b!6861446 (= c!1277203 (is-Union!16690 (reg!17019 r!7292)))))

(declare-fun b!6861447 () Bool)

(declare-fun call!624955 () Bool)

(assert (=> b!6861447 (= e!4136774 call!624955)))

(declare-fun b!6861448 () Bool)

(declare-fun e!4136776 () Bool)

(assert (=> b!6861448 (= e!4136777 e!4136776)))

(declare-fun res!2799690 () Bool)

(assert (=> b!6861448 (= res!2799690 call!624954)))

(assert (=> b!6861448 (=> res!2799690 e!4136776)))

(declare-fun b!6861449 () Bool)

(assert (=> b!6861449 (= e!4136775 e!4136778)))

(declare-fun res!2799689 () Bool)

(assert (=> b!6861449 (=> res!2799689 e!4136778)))

(assert (=> b!6861449 (= res!2799689 (is-Star!16690 (reg!17019 r!7292)))))

(declare-fun bm!624950 () Bool)

(assert (=> bm!624950 (= call!624955 (nullable!6651 (ite c!1277203 (regTwo!33893 (reg!17019 r!7292)) (regTwo!33892 (reg!17019 r!7292)))))))

(declare-fun b!6861445 () Bool)

(assert (=> b!6861445 (= e!4136776 call!624955)))

(declare-fun d!2155791 () Bool)

(declare-fun res!2799692 () Bool)

(assert (=> d!2155791 (=> res!2799692 e!4136773)))

(assert (=> d!2155791 (= res!2799692 (is-EmptyExpr!16690 (reg!17019 r!7292)))))

(assert (=> d!2155791 (= (nullableFct!2527 (reg!17019 r!7292)) e!4136773)))

(assert (= (and d!2155791 (not res!2799692)) b!6861444))

(assert (= (and b!6861444 res!2799691) b!6861449))

(assert (= (and b!6861449 (not res!2799689)) b!6861446))

(assert (= (and b!6861446 c!1277203) b!6861448))

(assert (= (and b!6861446 (not c!1277203)) b!6861443))

(assert (= (and b!6861448 (not res!2799690)) b!6861445))

(assert (= (and b!6861443 res!2799688) b!6861447))

(assert (= (or b!6861445 b!6861447) bm!624950))

(assert (= (or b!6861448 b!6861443) bm!624949))

(declare-fun m!7595758 () Bool)

(assert (=> bm!624949 m!7595758))

(declare-fun m!7595760 () Bool)

(assert (=> bm!624950 m!7595760))

(assert (=> d!2155607 d!2155791))

(assert (=> b!6860783 d!2155753))

(declare-fun bs!1833733 () Bool)

(declare-fun d!2155793 () Bool)

(assert (= bs!1833733 (and d!2155793 b!6860119)))

(declare-fun lambda!388176 () Int)

(assert (=> bs!1833733 (= lambda!388176 lambda!388030)))

(declare-fun bs!1833734 () Bool)

(assert (= bs!1833734 (and d!2155793 d!2155563)))

(assert (=> bs!1833734 (= lambda!388176 lambda!388127)))

(declare-fun bs!1833735 () Bool)

(assert (= bs!1833735 (and d!2155793 d!2155445)))

(assert (=> bs!1833735 (not (= lambda!388176 lambda!388068))))

(declare-fun bs!1833736 () Bool)

(assert (= bs!1833736 (and d!2155793 d!2155437)))

(assert (=> bs!1833736 (not (= lambda!388176 lambda!388059))))

(assert (=> bs!1833735 (= lambda!388176 lambda!388067)))

(declare-fun bs!1833737 () Bool)

(assert (= bs!1833737 (and d!2155793 b!6860114)))

(assert (=> bs!1833737 (not (= lambda!388176 lambda!388028))))

(declare-fun bs!1833738 () Bool)

(assert (= bs!1833738 (and d!2155793 d!2155587)))

(assert (=> bs!1833738 (= lambda!388176 lambda!388136)))

(declare-fun bs!1833739 () Bool)

(assert (= bs!1833739 (and d!2155793 d!2155447)))

(assert (=> bs!1833739 (= lambda!388176 lambda!388071)))

(declare-fun bs!1833740 () Bool)

(assert (= bs!1833740 (and d!2155793 d!2155571)))

(assert (=> bs!1833740 (= lambda!388176 lambda!388130)))

(declare-fun bs!1833741 () Bool)

(assert (= bs!1833741 (and d!2155793 d!2155591)))

(assert (=> bs!1833741 (= lambda!388176 lambda!388137)))

(declare-fun bs!1833742 () Bool)

(assert (= bs!1833742 (and d!2155793 d!2155781)))

(assert (=> bs!1833742 (not (= lambda!388176 lambda!388173))))

(declare-fun bs!1833743 () Bool)

(assert (= bs!1833743 (and d!2155793 d!2155475)))

(assert (=> bs!1833743 (= lambda!388176 lambda!388084)))

(declare-fun bs!1833744 () Bool)

(assert (= bs!1833744 (and d!2155793 d!2155773)))

(assert (=> bs!1833744 (= lambda!388176 lambda!388172)))

(declare-fun bs!1833745 () Bool)

(assert (= bs!1833745 (and d!2155793 d!2155529)))

(assert (=> bs!1833745 (not (= lambda!388176 lambda!388117))))

(declare-fun bs!1833746 () Bool)

(assert (= bs!1833746 (and d!2155793 d!2155531)))

(assert (=> bs!1833746 (not (= lambda!388176 lambda!388120))))

(declare-fun bs!1833747 () Bool)

(assert (= bs!1833747 (and d!2155793 d!2155557)))

(assert (=> bs!1833747 (= lambda!388176 lambda!388124)))

(declare-fun bs!1833748 () Bool)

(assert (= bs!1833748 (and d!2155793 d!2155453)))

(assert (=> bs!1833748 (= lambda!388176 lambda!388074)))

(declare-fun bs!1833749 () Bool)

(assert (= bs!1833749 (and d!2155793 d!2155461)))

(assert (=> bs!1833749 (= lambda!388176 lambda!388081)))

(declare-fun bs!1833750 () Bool)

(assert (= bs!1833750 (and d!2155793 d!2155585)))

(assert (=> bs!1833750 (= lambda!388176 lambda!388135)))

(declare-fun e!4136780 () Bool)

(assert (=> d!2155793 e!4136780))

(declare-fun res!2799693 () Bool)

(assert (=> d!2155793 (=> (not res!2799693) (not e!4136780))))

(declare-fun lt!2457527 () Regex!16690)

(assert (=> d!2155793 (= res!2799693 (validRegex!8426 lt!2457527))))

(declare-fun e!4136783 () Regex!16690)

(assert (=> d!2155793 (= lt!2457527 e!4136783)))

(declare-fun c!1277207 () Bool)

(declare-fun e!4136779 () Bool)

(assert (=> d!2155793 (= c!1277207 e!4136779)))

(declare-fun res!2799694 () Bool)

(assert (=> d!2155793 (=> (not res!2799694) (not e!4136779))))

(assert (=> d!2155793 (= res!2799694 (is-Cons!66245 (t!380112 (unfocusZipperList!2107 zl!343))))))

(assert (=> d!2155793 (forall!15877 (t!380112 (unfocusZipperList!2107 zl!343)) lambda!388176)))

(assert (=> d!2155793 (= (generalisedUnion!2526 (t!380112 (unfocusZipperList!2107 zl!343))) lt!2457527)))

(declare-fun b!6861450 () Bool)

(assert (=> b!6861450 (= e!4136783 (h!72693 (t!380112 (unfocusZipperList!2107 zl!343))))))

(declare-fun b!6861451 () Bool)

(declare-fun e!4136782 () Regex!16690)

(assert (=> b!6861451 (= e!4136782 EmptyLang!16690)))

(declare-fun b!6861452 () Bool)

(declare-fun e!4136781 () Bool)

(assert (=> b!6861452 (= e!4136780 e!4136781)))

(declare-fun c!1277204 () Bool)

(assert (=> b!6861452 (= c!1277204 (isEmpty!38610 (t!380112 (unfocusZipperList!2107 zl!343))))))

(declare-fun b!6861453 () Bool)

(assert (=> b!6861453 (= e!4136779 (isEmpty!38610 (t!380112 (t!380112 (unfocusZipperList!2107 zl!343)))))))

(declare-fun b!6861454 () Bool)

(assert (=> b!6861454 (= e!4136783 e!4136782)))

(declare-fun c!1277206 () Bool)

(assert (=> b!6861454 (= c!1277206 (is-Cons!66245 (t!380112 (unfocusZipperList!2107 zl!343))))))

(declare-fun b!6861455 () Bool)

(assert (=> b!6861455 (= e!4136781 (isEmptyLang!2022 lt!2457527))))

(declare-fun b!6861456 () Bool)

(declare-fun e!4136784 () Bool)

(assert (=> b!6861456 (= e!4136784 (= lt!2457527 (head!13763 (t!380112 (unfocusZipperList!2107 zl!343)))))))

(declare-fun b!6861457 () Bool)

(assert (=> b!6861457 (= e!4136781 e!4136784)))

(declare-fun c!1277205 () Bool)

(assert (=> b!6861457 (= c!1277205 (isEmpty!38610 (tail!12824 (t!380112 (unfocusZipperList!2107 zl!343)))))))

(declare-fun b!6861458 () Bool)

(assert (=> b!6861458 (= e!4136782 (Union!16690 (h!72693 (t!380112 (unfocusZipperList!2107 zl!343))) (generalisedUnion!2526 (t!380112 (t!380112 (unfocusZipperList!2107 zl!343))))))))

(declare-fun b!6861459 () Bool)

(assert (=> b!6861459 (= e!4136784 (isUnion!1452 lt!2457527))))

(assert (= (and d!2155793 res!2799694) b!6861453))

(assert (= (and d!2155793 c!1277207) b!6861450))

(assert (= (and d!2155793 (not c!1277207)) b!6861454))

(assert (= (and b!6861454 c!1277206) b!6861458))

(assert (= (and b!6861454 (not c!1277206)) b!6861451))

(assert (= (and d!2155793 res!2799693) b!6861452))

(assert (= (and b!6861452 c!1277204) b!6861455))

(assert (= (and b!6861452 (not c!1277204)) b!6861457))

(assert (= (and b!6861457 c!1277205) b!6861456))

(assert (= (and b!6861457 (not c!1277205)) b!6861459))

(declare-fun m!7595762 () Bool)

(assert (=> b!6861457 m!7595762))

(assert (=> b!6861457 m!7595762))

(declare-fun m!7595764 () Bool)

(assert (=> b!6861457 m!7595764))

(declare-fun m!7595766 () Bool)

(assert (=> d!2155793 m!7595766))

(declare-fun m!7595768 () Bool)

(assert (=> d!2155793 m!7595768))

(declare-fun m!7595770 () Bool)

(assert (=> b!6861458 m!7595770))

(assert (=> b!6861452 m!7595294))

(declare-fun m!7595772 () Bool)

(assert (=> b!6861456 m!7595772))

(declare-fun m!7595774 () Bool)

(assert (=> b!6861455 m!7595774))

(declare-fun m!7595776 () Bool)

(assert (=> b!6861459 m!7595776))

(declare-fun m!7595778 () Bool)

(assert (=> b!6861453 m!7595778))

(assert (=> b!6860744 d!2155793))

(declare-fun d!2155795 () Bool)

(declare-fun res!2799695 () Bool)

(declare-fun e!4136787 () Bool)

(assert (=> d!2155795 (=> res!2799695 e!4136787)))

(assert (=> d!2155795 (= res!2799695 (is-ElementMatch!16690 (h!72693 (exprs!6574 setElem!47178))))))

(assert (=> d!2155795 (= (validRegex!8426 (h!72693 (exprs!6574 setElem!47178))) e!4136787)))

(declare-fun b!6861460 () Bool)

(declare-fun e!4136786 () Bool)

(declare-fun e!4136790 () Bool)

(assert (=> b!6861460 (= e!4136786 e!4136790)))

(declare-fun c!1277209 () Bool)

(assert (=> b!6861460 (= c!1277209 (is-Union!16690 (h!72693 (exprs!6574 setElem!47178))))))

(declare-fun b!6861461 () Bool)

(declare-fun e!4136788 () Bool)

(declare-fun e!4136791 () Bool)

(assert (=> b!6861461 (= e!4136788 e!4136791)))

(declare-fun res!2799697 () Bool)

(assert (=> b!6861461 (=> (not res!2799697) (not e!4136791))))

(declare-fun call!624956 () Bool)

(assert (=> b!6861461 (= res!2799697 call!624956)))

(declare-fun b!6861462 () Bool)

(declare-fun e!4136789 () Bool)

(assert (=> b!6861462 (= e!4136786 e!4136789)))

(declare-fun res!2799696 () Bool)

(assert (=> b!6861462 (= res!2799696 (not (nullable!6651 (reg!17019 (h!72693 (exprs!6574 setElem!47178))))))))

(assert (=> b!6861462 (=> (not res!2799696) (not e!4136789))))

(declare-fun b!6861463 () Bool)

(assert (=> b!6861463 (= e!4136787 e!4136786)))

(declare-fun c!1277208 () Bool)

(assert (=> b!6861463 (= c!1277208 (is-Star!16690 (h!72693 (exprs!6574 setElem!47178))))))

(declare-fun b!6861464 () Bool)

(declare-fun res!2799699 () Bool)

(assert (=> b!6861464 (=> res!2799699 e!4136788)))

(assert (=> b!6861464 (= res!2799699 (not (is-Concat!25535 (h!72693 (exprs!6574 setElem!47178)))))))

(assert (=> b!6861464 (= e!4136790 e!4136788)))

(declare-fun bm!624951 () Bool)

(declare-fun call!624957 () Bool)

(assert (=> bm!624951 (= call!624957 (validRegex!8426 (ite c!1277209 (regTwo!33893 (h!72693 (exprs!6574 setElem!47178))) (regTwo!33892 (h!72693 (exprs!6574 setElem!47178))))))))

(declare-fun b!6861465 () Bool)

(declare-fun call!624958 () Bool)

(assert (=> b!6861465 (= e!4136789 call!624958)))

(declare-fun bm!624952 () Bool)

(assert (=> bm!624952 (= call!624956 call!624958)))

(declare-fun b!6861466 () Bool)

(declare-fun e!4136785 () Bool)

(assert (=> b!6861466 (= e!4136785 call!624957)))

(declare-fun b!6861467 () Bool)

(assert (=> b!6861467 (= e!4136791 call!624957)))

(declare-fun bm!624953 () Bool)

(assert (=> bm!624953 (= call!624958 (validRegex!8426 (ite c!1277208 (reg!17019 (h!72693 (exprs!6574 setElem!47178))) (ite c!1277209 (regOne!33893 (h!72693 (exprs!6574 setElem!47178))) (regOne!33892 (h!72693 (exprs!6574 setElem!47178)))))))))

(declare-fun b!6861468 () Bool)

(declare-fun res!2799698 () Bool)

(assert (=> b!6861468 (=> (not res!2799698) (not e!4136785))))

(assert (=> b!6861468 (= res!2799698 call!624956)))

(assert (=> b!6861468 (= e!4136790 e!4136785)))

(assert (= (and d!2155795 (not res!2799695)) b!6861463))

(assert (= (and b!6861463 c!1277208) b!6861462))

(assert (= (and b!6861463 (not c!1277208)) b!6861460))

(assert (= (and b!6861462 res!2799696) b!6861465))

(assert (= (and b!6861460 c!1277209) b!6861468))

(assert (= (and b!6861460 (not c!1277209)) b!6861464))

(assert (= (and b!6861468 res!2799698) b!6861466))

(assert (= (and b!6861464 (not res!2799699)) b!6861461))

(assert (= (and b!6861461 res!2799697) b!6861467))

(assert (= (or b!6861466 b!6861467) bm!624951))

(assert (= (or b!6861468 b!6861461) bm!624952))

(assert (= (or b!6861465 bm!624952) bm!624953))

(declare-fun m!7595780 () Bool)

(assert (=> b!6861462 m!7595780))

(declare-fun m!7595782 () Bool)

(assert (=> bm!624951 m!7595782))

(declare-fun m!7595784 () Bool)

(assert (=> bm!624953 m!7595784))

(assert (=> bs!1833518 d!2155795))

(declare-fun d!2155797 () Bool)

(assert (=> d!2155797 (= (nullable!6651 (reg!17019 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292)))) (nullableFct!2527 (reg!17019 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292)))))))

(declare-fun bs!1833751 () Bool)

(assert (= bs!1833751 d!2155797))

(declare-fun m!7595786 () Bool)

(assert (=> bs!1833751 m!7595786))

(assert (=> b!6860862 d!2155797))

(declare-fun bs!1833752 () Bool)

(declare-fun d!2155799 () Bool)

(assert (= bs!1833752 (and d!2155799 d!2155519)))

(declare-fun lambda!388177 () Int)

(assert (=> bs!1833752 (= lambda!388177 lambda!388112)))

(declare-fun bs!1833753 () Bool)

(assert (= bs!1833753 (and d!2155799 d!2155457)))

(assert (=> bs!1833753 (not (= lambda!388177 lambda!388077))))

(declare-fun bs!1833754 () Bool)

(assert (= bs!1833754 (and d!2155799 d!2155459)))

(assert (=> bs!1833754 (not (= lambda!388177 lambda!388080))))

(declare-fun bs!1833755 () Bool)

(assert (= bs!1833755 (and d!2155799 d!2155523)))

(assert (=> bs!1833755 (not (= lambda!388177 lambda!388116))))

(declare-fun bs!1833756 () Bool)

(assert (= bs!1833756 (and d!2155799 d!2155521)))

(assert (=> bs!1833756 (not (= lambda!388177 lambda!388113))))

(declare-fun bs!1833757 () Bool)

(assert (= bs!1833757 (and d!2155799 b!6860130)))

(assert (=> bs!1833757 (not (= lambda!388177 lambda!388029))))

(assert (=> d!2155799 (= (nullableZipper!2364 (content!13003 zl!343)) (exists!2814 (content!13003 zl!343) lambda!388177))))

(declare-fun bs!1833758 () Bool)

(assert (= bs!1833758 d!2155799))

(assert (=> bs!1833758 m!7595046))

(declare-fun m!7595788 () Bool)

(assert (=> bs!1833758 m!7595788))

(assert (=> b!6860664 d!2155799))

(declare-fun d!2155801 () Bool)

(declare-fun lt!2457528 () Bool)

(assert (=> d!2155801 (= lt!2457528 (set.member lt!2457494 (content!13003 (t!380114 zl!343))))))

(declare-fun e!4136793 () Bool)

(assert (=> d!2155801 (= lt!2457528 e!4136793)))

(declare-fun res!2799700 () Bool)

(assert (=> d!2155801 (=> (not res!2799700) (not e!4136793))))

(assert (=> d!2155801 (= res!2799700 (is-Cons!66247 (t!380114 zl!343)))))

(assert (=> d!2155801 (= (contains!20348 (t!380114 zl!343) lt!2457494) lt!2457528)))

(declare-fun b!6861469 () Bool)

(declare-fun e!4136792 () Bool)

(assert (=> b!6861469 (= e!4136793 e!4136792)))

(declare-fun res!2799701 () Bool)

(assert (=> b!6861469 (=> res!2799701 e!4136792)))

(assert (=> b!6861469 (= res!2799701 (= (h!72695 (t!380114 zl!343)) lt!2457494))))

(declare-fun b!6861470 () Bool)

(assert (=> b!6861470 (= e!4136792 (contains!20348 (t!380114 (t!380114 zl!343)) lt!2457494))))

(assert (= (and d!2155801 res!2799700) b!6861469))

(assert (= (and b!6861469 (not res!2799701)) b!6861470))

(assert (=> d!2155801 m!7595200))

(declare-fun m!7595790 () Bool)

(assert (=> d!2155801 m!7595790))

(declare-fun m!7595792 () Bool)

(assert (=> b!6861470 m!7595792))

(assert (=> b!6860695 d!2155801))

(declare-fun d!2155803 () Bool)

(declare-fun res!2799702 () Bool)

(declare-fun e!4136794 () Bool)

(assert (=> d!2155803 (=> res!2799702 e!4136794)))

(assert (=> d!2155803 (= res!2799702 (is-Nil!66247 zl!343))))

(assert (=> d!2155803 (= (forall!15879 zl!343 lambda!388113) e!4136794)))

(declare-fun b!6861471 () Bool)

(declare-fun e!4136795 () Bool)

(assert (=> b!6861471 (= e!4136794 e!4136795)))

(declare-fun res!2799703 () Bool)

(assert (=> b!6861471 (=> (not res!2799703) (not e!4136795))))

(assert (=> b!6861471 (= res!2799703 (dynLambda!26504 lambda!388113 (h!72695 zl!343)))))

(declare-fun b!6861472 () Bool)

(assert (=> b!6861472 (= e!4136795 (forall!15879 (t!380114 zl!343) lambda!388113))))

(assert (= (and d!2155803 (not res!2799702)) b!6861471))

(assert (= (and b!6861471 res!2799703) b!6861472))

(declare-fun b_lambda!259285 () Bool)

(assert (=> (not b_lambda!259285) (not b!6861471)))

(declare-fun m!7595794 () Bool)

(assert (=> b!6861471 m!7595794))

(declare-fun m!7595796 () Bool)

(assert (=> b!6861472 m!7595796))

(assert (=> d!2155521 d!2155803))

(declare-fun d!2155805 () Bool)

(declare-fun res!2799704 () Bool)

(declare-fun e!4136796 () Bool)

(assert (=> d!2155805 (=> res!2799704 e!4136796)))

(assert (=> d!2155805 (= res!2799704 (is-Nil!66245 (t!380112 lt!2457443)))))

(assert (=> d!2155805 (= (forall!15877 (t!380112 lt!2457443) lambda!388071) e!4136796)))

(declare-fun b!6861473 () Bool)

(declare-fun e!4136797 () Bool)

(assert (=> b!6861473 (= e!4136796 e!4136797)))

(declare-fun res!2799705 () Bool)

(assert (=> b!6861473 (=> (not res!2799705) (not e!4136797))))

(assert (=> b!6861473 (= res!2799705 (dynLambda!26503 lambda!388071 (h!72693 (t!380112 lt!2457443))))))

(declare-fun b!6861474 () Bool)

(assert (=> b!6861474 (= e!4136797 (forall!15877 (t!380112 (t!380112 lt!2457443)) lambda!388071))))

(assert (= (and d!2155805 (not res!2799704)) b!6861473))

(assert (= (and b!6861473 res!2799705) b!6861474))

(declare-fun b_lambda!259287 () Bool)

(assert (=> (not b_lambda!259287) (not b!6861473)))

(declare-fun m!7595798 () Bool)

(assert (=> b!6861473 m!7595798))

(declare-fun m!7595800 () Bool)

(assert (=> b!6861474 m!7595800))

(assert (=> b!6860853 d!2155805))

(declare-fun b!6861475 () Bool)

(declare-fun e!4136801 () Regex!16690)

(assert (=> b!6861475 (= e!4136801 EmptyLang!16690)))

(declare-fun b!6861476 () Bool)

(declare-fun call!624962 () Regex!16690)

(declare-fun call!624960 () Regex!16690)

(declare-fun e!4136802 () Regex!16690)

(assert (=> b!6861476 (= e!4136802 (Union!16690 (Concat!25535 call!624960 (regTwo!33892 (ite c!1277080 (regTwo!33893 r!7292) (ite c!1277083 (reg!17019 r!7292) (ite c!1277082 (regTwo!33892 r!7292) (regOne!33892 r!7292)))))) call!624962))))

(declare-fun bm!624954 () Bool)

(declare-fun call!624959 () Regex!16690)

(assert (=> bm!624954 (= call!624962 call!624959)))

(declare-fun b!6861477 () Bool)

(assert (=> b!6861477 (= e!4136802 (Union!16690 (Concat!25535 call!624962 (regTwo!33892 (ite c!1277080 (regTwo!33893 r!7292) (ite c!1277083 (reg!17019 r!7292) (ite c!1277082 (regTwo!33892 r!7292) (regOne!33892 r!7292)))))) EmptyLang!16690))))

(declare-fun d!2155807 () Bool)

(declare-fun lt!2457529 () Regex!16690)

(assert (=> d!2155807 (validRegex!8426 lt!2457529)))

(assert (=> d!2155807 (= lt!2457529 e!4136801)))

(declare-fun c!1277211 () Bool)

(assert (=> d!2155807 (= c!1277211 (or (is-EmptyExpr!16690 (ite c!1277080 (regTwo!33893 r!7292) (ite c!1277083 (reg!17019 r!7292) (ite c!1277082 (regTwo!33892 r!7292) (regOne!33892 r!7292))))) (is-EmptyLang!16690 (ite c!1277080 (regTwo!33893 r!7292) (ite c!1277083 (reg!17019 r!7292) (ite c!1277082 (regTwo!33892 r!7292) (regOne!33892 r!7292)))))))))

(assert (=> d!2155807 (validRegex!8426 (ite c!1277080 (regTwo!33893 r!7292) (ite c!1277083 (reg!17019 r!7292) (ite c!1277082 (regTwo!33892 r!7292) (regOne!33892 r!7292)))))))

(assert (=> d!2155807 (= (derivativeStep!5333 (ite c!1277080 (regTwo!33893 r!7292) (ite c!1277083 (reg!17019 r!7292) (ite c!1277082 (regTwo!33892 r!7292) (regOne!33892 r!7292)))) (head!13759 s!2326)) lt!2457529)))

(declare-fun b!6861478 () Bool)

(declare-fun e!4136800 () Regex!16690)

(assert (=> b!6861478 (= e!4136800 (Concat!25535 call!624959 (ite c!1277080 (regTwo!33893 r!7292) (ite c!1277083 (reg!17019 r!7292) (ite c!1277082 (regTwo!33892 r!7292) (regOne!33892 r!7292))))))))

(declare-fun b!6861479 () Bool)

(declare-fun e!4136798 () Regex!16690)

(declare-fun call!624961 () Regex!16690)

(assert (=> b!6861479 (= e!4136798 (Union!16690 call!624960 call!624961))))

(declare-fun bm!624955 () Bool)

(assert (=> bm!624955 (= call!624959 call!624961)))

(declare-fun bm!624956 () Bool)

(declare-fun c!1277210 () Bool)

(assert (=> bm!624956 (= call!624960 (derivativeStep!5333 (ite c!1277210 (regOne!33893 (ite c!1277080 (regTwo!33893 r!7292) (ite c!1277083 (reg!17019 r!7292) (ite c!1277082 (regTwo!33892 r!7292) (regOne!33892 r!7292))))) (regOne!33892 (ite c!1277080 (regTwo!33893 r!7292) (ite c!1277083 (reg!17019 r!7292) (ite c!1277082 (regTwo!33892 r!7292) (regOne!33892 r!7292)))))) (head!13759 s!2326)))))

(declare-fun b!6861480 () Bool)

(assert (=> b!6861480 (= e!4136798 e!4136800)))

(declare-fun c!1277213 () Bool)

(assert (=> b!6861480 (= c!1277213 (is-Star!16690 (ite c!1277080 (regTwo!33893 r!7292) (ite c!1277083 (reg!17019 r!7292) (ite c!1277082 (regTwo!33892 r!7292) (regOne!33892 r!7292))))))))

(declare-fun b!6861481 () Bool)

(assert (=> b!6861481 (= c!1277210 (is-Union!16690 (ite c!1277080 (regTwo!33893 r!7292) (ite c!1277083 (reg!17019 r!7292) (ite c!1277082 (regTwo!33892 r!7292) (regOne!33892 r!7292))))))))

(declare-fun e!4136799 () Regex!16690)

(assert (=> b!6861481 (= e!4136799 e!4136798)))

(declare-fun b!6861482 () Bool)

(assert (=> b!6861482 (= e!4136801 e!4136799)))

(declare-fun c!1277214 () Bool)

(assert (=> b!6861482 (= c!1277214 (is-ElementMatch!16690 (ite c!1277080 (regTwo!33893 r!7292) (ite c!1277083 (reg!17019 r!7292) (ite c!1277082 (regTwo!33892 r!7292) (regOne!33892 r!7292))))))))

(declare-fun b!6861483 () Bool)

(assert (=> b!6861483 (= e!4136799 (ite (= (head!13759 s!2326) (c!1276936 (ite c!1277080 (regTwo!33893 r!7292) (ite c!1277083 (reg!17019 r!7292) (ite c!1277082 (regTwo!33892 r!7292) (regOne!33892 r!7292)))))) EmptyExpr!16690 EmptyLang!16690))))

(declare-fun bm!624957 () Bool)

(declare-fun c!1277212 () Bool)

(assert (=> bm!624957 (= call!624961 (derivativeStep!5333 (ite c!1277210 (regTwo!33893 (ite c!1277080 (regTwo!33893 r!7292) (ite c!1277083 (reg!17019 r!7292) (ite c!1277082 (regTwo!33892 r!7292) (regOne!33892 r!7292))))) (ite c!1277213 (reg!17019 (ite c!1277080 (regTwo!33893 r!7292) (ite c!1277083 (reg!17019 r!7292) (ite c!1277082 (regTwo!33892 r!7292) (regOne!33892 r!7292))))) (ite c!1277212 (regTwo!33892 (ite c!1277080 (regTwo!33893 r!7292) (ite c!1277083 (reg!17019 r!7292) (ite c!1277082 (regTwo!33892 r!7292) (regOne!33892 r!7292))))) (regOne!33892 (ite c!1277080 (regTwo!33893 r!7292) (ite c!1277083 (reg!17019 r!7292) (ite c!1277082 (regTwo!33892 r!7292) (regOne!33892 r!7292)))))))) (head!13759 s!2326)))))

(declare-fun b!6861484 () Bool)

(assert (=> b!6861484 (= c!1277212 (nullable!6651 (regOne!33892 (ite c!1277080 (regTwo!33893 r!7292) (ite c!1277083 (reg!17019 r!7292) (ite c!1277082 (regTwo!33892 r!7292) (regOne!33892 r!7292)))))))))

(assert (=> b!6861484 (= e!4136800 e!4136802)))

(assert (= (and d!2155807 c!1277211) b!6861475))

(assert (= (and d!2155807 (not c!1277211)) b!6861482))

(assert (= (and b!6861482 c!1277214) b!6861483))

(assert (= (and b!6861482 (not c!1277214)) b!6861481))

(assert (= (and b!6861481 c!1277210) b!6861479))

(assert (= (and b!6861481 (not c!1277210)) b!6861480))

(assert (= (and b!6861480 c!1277213) b!6861478))

(assert (= (and b!6861480 (not c!1277213)) b!6861484))

(assert (= (and b!6861484 c!1277212) b!6861476))

(assert (= (and b!6861484 (not c!1277212)) b!6861477))

(assert (= (or b!6861476 b!6861477) bm!624954))

(assert (= (or b!6861478 bm!624954) bm!624955))

(assert (= (or b!6861479 bm!624955) bm!624957))

(assert (= (or b!6861479 b!6861476) bm!624956))

(declare-fun m!7595802 () Bool)

(assert (=> d!2155807 m!7595802))

(declare-fun m!7595804 () Bool)

(assert (=> d!2155807 m!7595804))

(assert (=> bm!624956 m!7594978))

(declare-fun m!7595806 () Bool)

(assert (=> bm!624956 m!7595806))

(assert (=> bm!624957 m!7594978))

(declare-fun m!7595808 () Bool)

(assert (=> bm!624957 m!7595808))

(declare-fun m!7595810 () Bool)

(assert (=> b!6861484 m!7595810))

(assert (=> bm!624891 d!2155807))

(declare-fun d!2155809 () Bool)

(assert (=> d!2155809 (= (head!13760 (t!380114 zl!343)) (h!72695 (t!380114 zl!343)))))

(assert (=> b!6860699 d!2155809))

(declare-fun d!2155811 () Bool)

(declare-fun res!2799706 () Bool)

(declare-fun e!4136803 () Bool)

(assert (=> d!2155811 (=> res!2799706 e!4136803)))

(assert (=> d!2155811 (= res!2799706 (is-Nil!66245 (exprs!6574 lt!2457391)))))

(assert (=> d!2155811 (= (forall!15877 (exprs!6574 lt!2457391) lambda!388127) e!4136803)))

(declare-fun b!6861485 () Bool)

(declare-fun e!4136804 () Bool)

(assert (=> b!6861485 (= e!4136803 e!4136804)))

(declare-fun res!2799707 () Bool)

(assert (=> b!6861485 (=> (not res!2799707) (not e!4136804))))

(assert (=> b!6861485 (= res!2799707 (dynLambda!26503 lambda!388127 (h!72693 (exprs!6574 lt!2457391))))))

(declare-fun b!6861486 () Bool)

(assert (=> b!6861486 (= e!4136804 (forall!15877 (t!380112 (exprs!6574 lt!2457391)) lambda!388127))))

(assert (= (and d!2155811 (not res!2799706)) b!6861485))

(assert (= (and b!6861485 res!2799707) b!6861486))

(declare-fun b_lambda!259289 () Bool)

(assert (=> (not b_lambda!259289) (not b!6861485)))

(declare-fun m!7595812 () Bool)

(assert (=> b!6861485 m!7595812))

(declare-fun m!7595814 () Bool)

(assert (=> b!6861486 m!7595814))

(assert (=> d!2155563 d!2155811))

(declare-fun d!2155813 () Bool)

(assert (=> d!2155813 (= (isEmptyExpr!2011 lt!2457505) (is-EmptyExpr!16690 lt!2457505))))

(assert (=> b!6860843 d!2155813))

(assert (=> d!2155567 d!2155425))

(assert (=> d!2155567 d!2155423))

(assert (=> bs!1833515 d!2155599))

(declare-fun bs!1833759 () Bool)

(declare-fun d!2155815 () Bool)

(assert (= bs!1833759 (and d!2155815 d!2155519)))

(declare-fun lambda!388178 () Int)

(assert (=> bs!1833759 (= lambda!388178 lambda!388112)))

(declare-fun bs!1833760 () Bool)

(assert (= bs!1833760 (and d!2155815 d!2155457)))

(assert (=> bs!1833760 (not (= lambda!388178 lambda!388077))))

(declare-fun bs!1833761 () Bool)

(assert (= bs!1833761 (and d!2155815 d!2155799)))

(assert (=> bs!1833761 (= lambda!388178 lambda!388177)))

(declare-fun bs!1833762 () Bool)

(assert (= bs!1833762 (and d!2155815 d!2155459)))

(assert (=> bs!1833762 (not (= lambda!388178 lambda!388080))))

(declare-fun bs!1833763 () Bool)

(assert (= bs!1833763 (and d!2155815 d!2155523)))

(assert (=> bs!1833763 (not (= lambda!388178 lambda!388116))))

(declare-fun bs!1833764 () Bool)

(assert (= bs!1833764 (and d!2155815 d!2155521)))

(assert (=> bs!1833764 (not (= lambda!388178 lambda!388113))))

(declare-fun bs!1833765 () Bool)

(assert (= bs!1833765 (and d!2155815 b!6860130)))

(assert (=> bs!1833765 (not (= lambda!388178 lambda!388029))))

(assert (=> d!2155815 (= (nullableZipper!2364 (derivationStepZipper!2611 z!1189 (head!13759 s!2326))) (exists!2814 (derivationStepZipper!2611 z!1189 (head!13759 s!2326)) lambda!388178))))

(declare-fun bs!1833766 () Bool)

(assert (= bs!1833766 d!2155815))

(assert (=> bs!1833766 m!7595034))

(declare-fun m!7595816 () Bool)

(assert (=> bs!1833766 m!7595816))

(assert (=> b!6860676 d!2155815))

(declare-fun d!2155817 () Bool)

(declare-fun lt!2457530 () Bool)

(assert (=> d!2155817 (= lt!2457530 (set.member (h!72695 lt!2457433) (content!13003 (t!380114 lt!2457433))))))

(declare-fun e!4136806 () Bool)

(assert (=> d!2155817 (= lt!2457530 e!4136806)))

(declare-fun res!2799708 () Bool)

(assert (=> d!2155817 (=> (not res!2799708) (not e!4136806))))

(assert (=> d!2155817 (= res!2799708 (is-Cons!66247 (t!380114 lt!2457433)))))

(assert (=> d!2155817 (= (contains!20348 (t!380114 lt!2457433) (h!72695 lt!2457433)) lt!2457530)))

(declare-fun b!6861487 () Bool)

(declare-fun e!4136805 () Bool)

(assert (=> b!6861487 (= e!4136806 e!4136805)))

(declare-fun res!2799709 () Bool)

(assert (=> b!6861487 (=> res!2799709 e!4136805)))

(assert (=> b!6861487 (= res!2799709 (= (h!72695 (t!380114 lt!2457433)) (h!72695 lt!2457433)))))

(declare-fun b!6861488 () Bool)

(assert (=> b!6861488 (= e!4136805 (contains!20348 (t!380114 (t!380114 lt!2457433)) (h!72695 lt!2457433)))))

(assert (= (and d!2155817 res!2799708) b!6861487))

(assert (= (and b!6861487 (not res!2799709)) b!6861488))

(assert (=> d!2155817 m!7595400))

(declare-fun m!7595818 () Bool)

(assert (=> d!2155817 m!7595818))

(declare-fun m!7595820 () Bool)

(assert (=> b!6861488 m!7595820))

(assert (=> b!6860763 d!2155817))

(declare-fun d!2155819 () Bool)

(assert (=> d!2155819 (= (Exists!3750 (ite c!1277103 lambda!388138 lambda!388139)) (choose!51138 (ite c!1277103 lambda!388138 lambda!388139)))))

(declare-fun bs!1833767 () Bool)

(assert (= bs!1833767 d!2155819))

(declare-fun m!7595822 () Bool)

(assert (=> bs!1833767 m!7595822))

(assert (=> bm!624899 d!2155819))

(declare-fun bs!1833768 () Bool)

(declare-fun d!2155821 () Bool)

(assert (= bs!1833768 (and d!2155821 d!2155519)))

(declare-fun lambda!388179 () Int)

(assert (=> bs!1833768 (not (= lambda!388179 lambda!388112))))

(declare-fun bs!1833769 () Bool)

(assert (= bs!1833769 (and d!2155821 d!2155457)))

(assert (=> bs!1833769 (= lambda!388179 lambda!388077)))

(declare-fun bs!1833770 () Bool)

(assert (= bs!1833770 (and d!2155821 d!2155799)))

(assert (=> bs!1833770 (not (= lambda!388179 lambda!388177))))

(declare-fun bs!1833771 () Bool)

(assert (= bs!1833771 (and d!2155821 d!2155459)))

(assert (=> bs!1833771 (not (= lambda!388179 lambda!388080))))

(declare-fun bs!1833772 () Bool)

(assert (= bs!1833772 (and d!2155821 d!2155521)))

(assert (=> bs!1833772 (= (= lambda!388029 lambda!388080) (= lambda!388179 lambda!388113))))

(declare-fun bs!1833773 () Bool)

(assert (= bs!1833773 (and d!2155821 b!6860130)))

(assert (=> bs!1833773 (not (= lambda!388179 lambda!388029))))

(declare-fun bs!1833774 () Bool)

(assert (= bs!1833774 (and d!2155821 d!2155523)))

(assert (=> bs!1833774 (not (= lambda!388179 lambda!388116))))

(declare-fun bs!1833775 () Bool)

(assert (= bs!1833775 (and d!2155821 d!2155815)))

(assert (=> bs!1833775 (not (= lambda!388179 lambda!388178))))

(assert (=> d!2155821 true))

(assert (=> d!2155821 (< (dynLambda!26502 order!27705 lambda!388029) (dynLambda!26502 order!27705 lambda!388179))))

(assert (=> d!2155821 (= (exists!2811 (t!380114 zl!343) lambda!388029) (not (forall!15879 (t!380114 zl!343) lambda!388179)))))

(declare-fun bs!1833776 () Bool)

(assert (= bs!1833776 d!2155821))

(declare-fun m!7595824 () Bool)

(assert (=> bs!1833776 m!7595824))

(assert (=> d!2155553 d!2155821))

(declare-fun d!2155823 () Bool)

(declare-fun res!2799710 () Bool)

(declare-fun e!4136807 () Bool)

(assert (=> d!2155823 (=> res!2799710 e!4136807)))

(assert (=> d!2155823 (= res!2799710 (is-Nil!66247 (t!380114 zl!343)))))

(assert (=> d!2155823 (= (forall!15879 (t!380114 zl!343) lambda!388077) e!4136807)))

(declare-fun b!6861489 () Bool)

(declare-fun e!4136808 () Bool)

(assert (=> b!6861489 (= e!4136807 e!4136808)))

(declare-fun res!2799711 () Bool)

(assert (=> b!6861489 (=> (not res!2799711) (not e!4136808))))

(assert (=> b!6861489 (= res!2799711 (dynLambda!26504 lambda!388077 (h!72695 (t!380114 zl!343))))))

(declare-fun b!6861490 () Bool)

(assert (=> b!6861490 (= e!4136808 (forall!15879 (t!380114 (t!380114 zl!343)) lambda!388077))))

(assert (= (and d!2155823 (not res!2799710)) b!6861489))

(assert (= (and b!6861489 res!2799711) b!6861490))

(declare-fun b_lambda!259291 () Bool)

(assert (=> (not b_lambda!259291) (not b!6861489)))

(declare-fun m!7595826 () Bool)

(assert (=> b!6861489 m!7595826))

(declare-fun m!7595828 () Bool)

(assert (=> b!6861490 m!7595828))

(assert (=> b!6860859 d!2155823))

(declare-fun bs!1833777 () Bool)

(declare-fun d!2155825 () Bool)

(assert (= bs!1833777 (and d!2155825 d!2155821)))

(declare-fun lambda!388180 () Int)

(assert (=> bs!1833777 (= (= lambda!388116 lambda!388029) (= lambda!388180 lambda!388179))))

(declare-fun bs!1833778 () Bool)

(assert (= bs!1833778 (and d!2155825 d!2155519)))

(assert (=> bs!1833778 (not (= lambda!388180 lambda!388112))))

(declare-fun bs!1833779 () Bool)

(assert (= bs!1833779 (and d!2155825 d!2155457)))

(assert (=> bs!1833779 (= (= lambda!388116 lambda!388029) (= lambda!388180 lambda!388077))))

(declare-fun bs!1833780 () Bool)

(assert (= bs!1833780 (and d!2155825 d!2155799)))

(assert (=> bs!1833780 (not (= lambda!388180 lambda!388177))))

(declare-fun bs!1833781 () Bool)

(assert (= bs!1833781 (and d!2155825 d!2155459)))

(assert (=> bs!1833781 (not (= lambda!388180 lambda!388080))))

(declare-fun bs!1833782 () Bool)

(assert (= bs!1833782 (and d!2155825 d!2155521)))

(assert (=> bs!1833782 (= (= lambda!388116 lambda!388080) (= lambda!388180 lambda!388113))))

(declare-fun bs!1833783 () Bool)

(assert (= bs!1833783 (and d!2155825 b!6860130)))

(assert (=> bs!1833783 (not (= lambda!388180 lambda!388029))))

(declare-fun bs!1833784 () Bool)

(assert (= bs!1833784 (and d!2155825 d!2155523)))

(assert (=> bs!1833784 (not (= lambda!388180 lambda!388116))))

(declare-fun bs!1833785 () Bool)

(assert (= bs!1833785 (and d!2155825 d!2155815)))

(assert (=> bs!1833785 (not (= lambda!388180 lambda!388178))))

(assert (=> d!2155825 true))

(assert (=> d!2155825 (< (dynLambda!26502 order!27705 lambda!388116) (dynLambda!26502 order!27705 lambda!388180))))

(assert (=> d!2155825 (= (exists!2811 zl!343 lambda!388116) (not (forall!15879 zl!343 lambda!388180)))))

(declare-fun bs!1833786 () Bool)

(assert (= bs!1833786 d!2155825))

(declare-fun m!7595830 () Bool)

(assert (=> bs!1833786 m!7595830))

(assert (=> d!2155523 d!2155825))

(declare-fun bs!1833787 () Bool)

(declare-fun d!2155827 () Bool)

(assert (= bs!1833787 (and d!2155827 d!2155821)))

(declare-fun lambda!388181 () Int)

(assert (=> bs!1833787 (not (= lambda!388181 lambda!388179))))

(declare-fun bs!1833788 () Bool)

(assert (= bs!1833788 (and d!2155827 d!2155519)))

(assert (=> bs!1833788 (= lambda!388181 lambda!388112)))

(declare-fun bs!1833789 () Bool)

(assert (= bs!1833789 (and d!2155827 d!2155457)))

(assert (=> bs!1833789 (not (= lambda!388181 lambda!388077))))

(declare-fun bs!1833790 () Bool)

(assert (= bs!1833790 (and d!2155827 d!2155799)))

(assert (=> bs!1833790 (= lambda!388181 lambda!388177)))

(declare-fun bs!1833791 () Bool)

(assert (= bs!1833791 (and d!2155827 d!2155825)))

(assert (=> bs!1833791 (not (= lambda!388181 lambda!388180))))

(declare-fun bs!1833792 () Bool)

(assert (= bs!1833792 (and d!2155827 d!2155459)))

(assert (=> bs!1833792 (not (= lambda!388181 lambda!388080))))

(declare-fun bs!1833793 () Bool)

(assert (= bs!1833793 (and d!2155827 d!2155521)))

(assert (=> bs!1833793 (not (= lambda!388181 lambda!388113))))

(declare-fun bs!1833794 () Bool)

(assert (= bs!1833794 (and d!2155827 b!6860130)))

(assert (=> bs!1833794 (not (= lambda!388181 lambda!388029))))

(declare-fun bs!1833795 () Bool)

(assert (= bs!1833795 (and d!2155827 d!2155523)))

(assert (=> bs!1833795 (not (= lambda!388181 lambda!388116))))

(declare-fun bs!1833796 () Bool)

(assert (= bs!1833796 (and d!2155827 d!2155815)))

(assert (=> bs!1833796 (= lambda!388181 lambda!388178)))

(assert (=> d!2155827 (= (nullableZipper!2364 (set.insert (h!72695 zl!343) (as set.empty (Set Context!12148)))) (exists!2814 (set.insert (h!72695 zl!343) (as set.empty (Set Context!12148))) lambda!388181))))

(declare-fun bs!1833797 () Bool)

(assert (= bs!1833797 d!2155827))

(assert (=> bs!1833797 m!7595100))

(declare-fun m!7595832 () Bool)

(assert (=> bs!1833797 m!7595832))

(assert (=> b!6860693 d!2155827))

(assert (=> d!2155525 d!2155545))

(declare-fun bs!1833798 () Bool)

(declare-fun b!6861497 () Bool)

(assert (= bs!1833798 (and b!6861497 b!6861364)))

(declare-fun lambda!388182 () Int)

(assert (=> bs!1833798 (not (= lambda!388182 lambda!388171))))

(declare-fun bs!1833799 () Bool)

(assert (= bs!1833799 (and b!6861497 b!6860886)))

(assert (=> bs!1833799 (= (and (= (reg!17019 (regTwo!33893 (regTwo!33893 r!7292))) (reg!17019 (regOne!33893 r!7292))) (= (regTwo!33893 (regTwo!33893 r!7292)) (regOne!33893 r!7292))) (= lambda!388182 lambda!388138))))

(declare-fun bs!1833800 () Bool)

(assert (= bs!1833800 (and b!6861497 b!6860248)))

(assert (=> bs!1833800 (= (and (= (reg!17019 (regTwo!33893 (regTwo!33893 r!7292))) (reg!17019 r!7292)) (= (regTwo!33893 (regTwo!33893 r!7292)) r!7292)) (= lambda!388182 lambda!388052))))

(declare-fun bs!1833801 () Bool)

(assert (= bs!1833801 (and b!6861497 b!6860751)))

(assert (=> bs!1833801 (not (= lambda!388182 lambda!388132))))

(declare-fun bs!1833802 () Bool)

(assert (= bs!1833802 (and b!6861497 b!6861365)))

(assert (=> bs!1833802 (= (and (= (reg!17019 (regTwo!33893 (regTwo!33893 r!7292))) (reg!17019 (regOne!33893 (regOne!33893 r!7292)))) (= (regTwo!33893 (regTwo!33893 r!7292)) (regOne!33893 (regOne!33893 r!7292)))) (= lambda!388182 lambda!388170))))

(declare-fun bs!1833803 () Bool)

(assert (= bs!1833803 (and b!6861497 b!6860247)))

(assert (=> bs!1833803 (not (= lambda!388182 lambda!388053))))

(declare-fun bs!1833804 () Bool)

(assert (= bs!1833804 (and b!6861497 b!6860885)))

(assert (=> bs!1833804 (not (= lambda!388182 lambda!388139))))

(declare-fun bs!1833805 () Bool)

(assert (= bs!1833805 (and b!6861497 b!6861405)))

(assert (=> bs!1833805 (not (= lambda!388182 lambda!388175))))

(declare-fun bs!1833806 () Bool)

(assert (= bs!1833806 (and b!6861497 b!6860752)))

(assert (=> bs!1833806 (= (and (= (reg!17019 (regTwo!33893 (regTwo!33893 r!7292))) (reg!17019 (regTwo!33893 r!7292))) (= (regTwo!33893 (regTwo!33893 r!7292)) (regTwo!33893 r!7292))) (= lambda!388182 lambda!388131))))

(declare-fun bs!1833807 () Bool)

(assert (= bs!1833807 (and b!6861497 b!6861406)))

(assert (=> bs!1833807 (= (and (= (reg!17019 (regTwo!33893 (regTwo!33893 r!7292))) (reg!17019 (regOne!33893 (regTwo!33893 r!7292)))) (= (regTwo!33893 (regTwo!33893 r!7292)) (regOne!33893 (regTwo!33893 r!7292)))) (= lambda!388182 lambda!388174))))

(assert (=> b!6861497 true))

(assert (=> b!6861497 true))

(declare-fun bs!1833808 () Bool)

(declare-fun b!6861496 () Bool)

(assert (= bs!1833808 (and b!6861496 b!6861364)))

(declare-fun lambda!388183 () Int)

(assert (=> bs!1833808 (= (and (= (regOne!33892 (regTwo!33893 (regTwo!33893 r!7292))) (regOne!33892 (regOne!33893 (regOne!33893 r!7292)))) (= (regTwo!33892 (regTwo!33893 (regTwo!33893 r!7292))) (regTwo!33892 (regOne!33893 (regOne!33893 r!7292))))) (= lambda!388183 lambda!388171))))

(declare-fun bs!1833809 () Bool)

(assert (= bs!1833809 (and b!6861496 b!6860886)))

(assert (=> bs!1833809 (not (= lambda!388183 lambda!388138))))

(declare-fun bs!1833810 () Bool)

(assert (= bs!1833810 (and b!6861496 b!6861497)))

(assert (=> bs!1833810 (not (= lambda!388183 lambda!388182))))

(declare-fun bs!1833811 () Bool)

(assert (= bs!1833811 (and b!6861496 b!6860248)))

(assert (=> bs!1833811 (not (= lambda!388183 lambda!388052))))

(declare-fun bs!1833812 () Bool)

(assert (= bs!1833812 (and b!6861496 b!6860751)))

(assert (=> bs!1833812 (= (and (= (regOne!33892 (regTwo!33893 (regTwo!33893 r!7292))) (regOne!33892 (regTwo!33893 r!7292))) (= (regTwo!33892 (regTwo!33893 (regTwo!33893 r!7292))) (regTwo!33892 (regTwo!33893 r!7292)))) (= lambda!388183 lambda!388132))))

(declare-fun bs!1833813 () Bool)

(assert (= bs!1833813 (and b!6861496 b!6861365)))

(assert (=> bs!1833813 (not (= lambda!388183 lambda!388170))))

(declare-fun bs!1833814 () Bool)

(assert (= bs!1833814 (and b!6861496 b!6860247)))

(assert (=> bs!1833814 (= (and (= (regOne!33892 (regTwo!33893 (regTwo!33893 r!7292))) (regOne!33892 r!7292)) (= (regTwo!33892 (regTwo!33893 (regTwo!33893 r!7292))) (regTwo!33892 r!7292))) (= lambda!388183 lambda!388053))))

(declare-fun bs!1833815 () Bool)

(assert (= bs!1833815 (and b!6861496 b!6860885)))

(assert (=> bs!1833815 (= (and (= (regOne!33892 (regTwo!33893 (regTwo!33893 r!7292))) (regOne!33892 (regOne!33893 r!7292))) (= (regTwo!33892 (regTwo!33893 (regTwo!33893 r!7292))) (regTwo!33892 (regOne!33893 r!7292)))) (= lambda!388183 lambda!388139))))

(declare-fun bs!1833816 () Bool)

(assert (= bs!1833816 (and b!6861496 b!6861405)))

(assert (=> bs!1833816 (= (and (= (regOne!33892 (regTwo!33893 (regTwo!33893 r!7292))) (regOne!33892 (regOne!33893 (regTwo!33893 r!7292)))) (= (regTwo!33892 (regTwo!33893 (regTwo!33893 r!7292))) (regTwo!33892 (regOne!33893 (regTwo!33893 r!7292))))) (= lambda!388183 lambda!388175))))

(declare-fun bs!1833817 () Bool)

(assert (= bs!1833817 (and b!6861496 b!6860752)))

(assert (=> bs!1833817 (not (= lambda!388183 lambda!388131))))

(declare-fun bs!1833818 () Bool)

(assert (= bs!1833818 (and b!6861496 b!6861406)))

(assert (=> bs!1833818 (not (= lambda!388183 lambda!388174))))

(assert (=> b!6861496 true))

(assert (=> b!6861496 true))

(declare-fun bm!624958 () Bool)

(declare-fun call!624964 () Bool)

(assert (=> bm!624958 (= call!624964 (isEmpty!38608 s!2326))))

(declare-fun b!6861491 () Bool)

(declare-fun e!4136810 () Bool)

(declare-fun e!4136813 () Bool)

(assert (=> b!6861491 (= e!4136810 e!4136813)))

(declare-fun res!2799714 () Bool)

(assert (=> b!6861491 (= res!2799714 (not (is-EmptyLang!16690 (regTwo!33893 (regTwo!33893 r!7292)))))))

(assert (=> b!6861491 (=> (not res!2799714) (not e!4136813))))

(declare-fun b!6861492 () Bool)

(declare-fun res!2799713 () Bool)

(declare-fun e!4136811 () Bool)

(assert (=> b!6861492 (=> res!2799713 e!4136811)))

(assert (=> b!6861492 (= res!2799713 call!624964)))

(declare-fun e!4136814 () Bool)

(assert (=> b!6861492 (= e!4136814 e!4136811)))

(declare-fun b!6861493 () Bool)

(assert (=> b!6861493 (= e!4136810 call!624964)))

(declare-fun b!6861494 () Bool)

(declare-fun e!4136809 () Bool)

(assert (=> b!6861494 (= e!4136809 (= s!2326 (Cons!66246 (c!1276936 (regTwo!33893 (regTwo!33893 r!7292))) Nil!66246)))))

(declare-fun b!6861495 () Bool)

(declare-fun e!4136812 () Bool)

(assert (=> b!6861495 (= e!4136812 (matchRSpec!3791 (regTwo!33893 (regTwo!33893 (regTwo!33893 r!7292))) s!2326))))

(declare-fun call!624963 () Bool)

(assert (=> b!6861496 (= e!4136814 call!624963)))

(declare-fun d!2155829 () Bool)

(declare-fun c!1277217 () Bool)

(assert (=> d!2155829 (= c!1277217 (is-EmptyExpr!16690 (regTwo!33893 (regTwo!33893 r!7292))))))

(assert (=> d!2155829 (= (matchRSpec!3791 (regTwo!33893 (regTwo!33893 r!7292)) s!2326) e!4136810)))

(assert (=> b!6861497 (= e!4136811 call!624963)))

(declare-fun b!6861498 () Bool)

(declare-fun e!4136815 () Bool)

(assert (=> b!6861498 (= e!4136815 e!4136812)))

(declare-fun res!2799712 () Bool)

(assert (=> b!6861498 (= res!2799712 (matchRSpec!3791 (regOne!33893 (regTwo!33893 (regTwo!33893 r!7292))) s!2326))))

(assert (=> b!6861498 (=> res!2799712 e!4136812)))

(declare-fun c!1277216 () Bool)

(declare-fun bm!624959 () Bool)

(assert (=> bm!624959 (= call!624963 (Exists!3750 (ite c!1277216 lambda!388182 lambda!388183)))))

(declare-fun b!6861499 () Bool)

(assert (=> b!6861499 (= e!4136815 e!4136814)))

(assert (=> b!6861499 (= c!1277216 (is-Star!16690 (regTwo!33893 (regTwo!33893 r!7292))))))

(declare-fun b!6861500 () Bool)

(declare-fun c!1277218 () Bool)

(assert (=> b!6861500 (= c!1277218 (is-Union!16690 (regTwo!33893 (regTwo!33893 r!7292))))))

(assert (=> b!6861500 (= e!4136809 e!4136815)))

(declare-fun b!6861501 () Bool)

(declare-fun c!1277215 () Bool)

(assert (=> b!6861501 (= c!1277215 (is-ElementMatch!16690 (regTwo!33893 (regTwo!33893 r!7292))))))

(assert (=> b!6861501 (= e!4136813 e!4136809)))

(assert (= (and d!2155829 c!1277217) b!6861493))

(assert (= (and d!2155829 (not c!1277217)) b!6861491))

(assert (= (and b!6861491 res!2799714) b!6861501))

(assert (= (and b!6861501 c!1277215) b!6861494))

(assert (= (and b!6861501 (not c!1277215)) b!6861500))

(assert (= (and b!6861500 c!1277218) b!6861498))

(assert (= (and b!6861500 (not c!1277218)) b!6861499))

(assert (= (and b!6861498 (not res!2799712)) b!6861495))

(assert (= (and b!6861499 c!1277216) b!6861492))

(assert (= (and b!6861499 (not c!1277216)) b!6861496))

(assert (= (and b!6861492 (not res!2799713)) b!6861497))

(assert (= (or b!6861497 b!6861496) bm!624959))

(assert (= (or b!6861493 b!6861492) bm!624958))

(assert (=> bm!624958 m!7594968))

(declare-fun m!7595834 () Bool)

(assert (=> b!6861495 m!7595834))

(declare-fun m!7595836 () Bool)

(assert (=> b!6861498 m!7595836))

(declare-fun m!7595838 () Bool)

(assert (=> bm!624959 m!7595838))

(assert (=> b!6860750 d!2155829))

(declare-fun d!2155831 () Bool)

(declare-fun res!2799715 () Bool)

(declare-fun e!4136816 () Bool)

(assert (=> d!2155831 (=> res!2799715 e!4136816)))

(assert (=> d!2155831 (= res!2799715 (is-Nil!66245 (t!380112 lt!2457393)))))

(assert (=> d!2155831 (= (forall!15877 (t!380112 lt!2457393) lambda!388059) e!4136816)))

(declare-fun b!6861502 () Bool)

(declare-fun e!4136817 () Bool)

(assert (=> b!6861502 (= e!4136816 e!4136817)))

(declare-fun res!2799716 () Bool)

(assert (=> b!6861502 (=> (not res!2799716) (not e!4136817))))

(assert (=> b!6861502 (= res!2799716 (dynLambda!26503 lambda!388059 (h!72693 (t!380112 lt!2457393))))))

(declare-fun b!6861503 () Bool)

(assert (=> b!6861503 (= e!4136817 (forall!15877 (t!380112 (t!380112 lt!2457393)) lambda!388059))))

(assert (= (and d!2155831 (not res!2799715)) b!6861502))

(assert (= (and b!6861502 res!2799716) b!6861503))

(declare-fun b_lambda!259293 () Bool)

(assert (=> (not b_lambda!259293) (not b!6861502)))

(declare-fun m!7595840 () Bool)

(assert (=> b!6861502 m!7595840))

(declare-fun m!7595842 () Bool)

(assert (=> b!6861503 m!7595842))

(assert (=> b!6860879 d!2155831))

(declare-fun b!6861504 () Bool)

(declare-fun res!2799723 () Bool)

(declare-fun e!4136823 () Bool)

(assert (=> b!6861504 (=> res!2799723 e!4136823)))

(assert (=> b!6861504 (= res!2799723 (not (isEmpty!38608 (tail!12822 s!2326))))))

(declare-fun b!6861505 () Bool)

(declare-fun e!4136822 () Bool)

(assert (=> b!6861505 (= e!4136822 (nullable!6651 (h!72693 lt!2457393)))))

(declare-fun b!6861506 () Bool)

(declare-fun res!2799724 () Bool)

(declare-fun e!4136819 () Bool)

(assert (=> b!6861506 (=> res!2799724 e!4136819)))

(declare-fun e!4136820 () Bool)

(assert (=> b!6861506 (= res!2799724 e!4136820)))

(declare-fun res!2799722 () Bool)

(assert (=> b!6861506 (=> (not res!2799722) (not e!4136820))))

(declare-fun lt!2457531 () Bool)

(assert (=> b!6861506 (= res!2799722 lt!2457531)))

(declare-fun b!6861507 () Bool)

(declare-fun res!2799719 () Bool)

(assert (=> b!6861507 (=> (not res!2799719) (not e!4136820))))

(assert (=> b!6861507 (= res!2799719 (isEmpty!38608 (tail!12822 s!2326)))))

(declare-fun b!6861509 () Bool)

(declare-fun e!4136821 () Bool)

(declare-fun call!624965 () Bool)

(assert (=> b!6861509 (= e!4136821 (= lt!2457531 call!624965))))

(declare-fun b!6861510 () Bool)

(declare-fun res!2799720 () Bool)

(assert (=> b!6861510 (=> (not res!2799720) (not e!4136820))))

(assert (=> b!6861510 (= res!2799720 (not call!624965))))

(declare-fun b!6861511 () Bool)

(declare-fun e!4136818 () Bool)

(assert (=> b!6861511 (= e!4136819 e!4136818)))

(declare-fun res!2799721 () Bool)

(assert (=> b!6861511 (=> (not res!2799721) (not e!4136818))))

(assert (=> b!6861511 (= res!2799721 (not lt!2457531))))

(declare-fun b!6861512 () Bool)

(declare-fun e!4136824 () Bool)

(assert (=> b!6861512 (= e!4136821 e!4136824)))

(declare-fun c!1277221 () Bool)

(assert (=> b!6861512 (= c!1277221 (is-EmptyLang!16690 (h!72693 lt!2457393)))))

(declare-fun b!6861513 () Bool)

(assert (=> b!6861513 (= e!4136820 (= (head!13759 s!2326) (c!1276936 (h!72693 lt!2457393))))))

(declare-fun b!6861514 () Bool)

(declare-fun res!2799718 () Bool)

(assert (=> b!6861514 (=> res!2799718 e!4136819)))

(assert (=> b!6861514 (= res!2799718 (not (is-ElementMatch!16690 (h!72693 lt!2457393))))))

(assert (=> b!6861514 (= e!4136824 e!4136819)))

(declare-fun d!2155833 () Bool)

(assert (=> d!2155833 e!4136821))

(declare-fun c!1277219 () Bool)

(assert (=> d!2155833 (= c!1277219 (is-EmptyExpr!16690 (h!72693 lt!2457393)))))

(assert (=> d!2155833 (= lt!2457531 e!4136822)))

(declare-fun c!1277220 () Bool)

(assert (=> d!2155833 (= c!1277220 (isEmpty!38608 s!2326))))

(assert (=> d!2155833 (validRegex!8426 (h!72693 lt!2457393))))

(assert (=> d!2155833 (= (matchR!8873 (h!72693 lt!2457393) s!2326) lt!2457531)))

(declare-fun b!6861508 () Bool)

(assert (=> b!6861508 (= e!4136818 e!4136823)))

(declare-fun res!2799717 () Bool)

(assert (=> b!6861508 (=> res!2799717 e!4136823)))

(assert (=> b!6861508 (= res!2799717 call!624965)))

(declare-fun b!6861515 () Bool)

(assert (=> b!6861515 (= e!4136822 (matchR!8873 (derivativeStep!5333 (h!72693 lt!2457393) (head!13759 s!2326)) (tail!12822 s!2326)))))

(declare-fun bm!624960 () Bool)

(assert (=> bm!624960 (= call!624965 (isEmpty!38608 s!2326))))

(declare-fun b!6861516 () Bool)

(assert (=> b!6861516 (= e!4136824 (not lt!2457531))))

(declare-fun b!6861517 () Bool)

(assert (=> b!6861517 (= e!4136823 (not (= (head!13759 s!2326) (c!1276936 (h!72693 lt!2457393)))))))

(assert (= (and d!2155833 c!1277220) b!6861505))

(assert (= (and d!2155833 (not c!1277220)) b!6861515))

(assert (= (and d!2155833 c!1277219) b!6861509))

(assert (= (and d!2155833 (not c!1277219)) b!6861512))

(assert (= (and b!6861512 c!1277221) b!6861516))

(assert (= (and b!6861512 (not c!1277221)) b!6861514))

(assert (= (and b!6861514 (not res!2799718)) b!6861506))

(assert (= (and b!6861506 res!2799722) b!6861510))

(assert (= (and b!6861510 res!2799720) b!6861507))

(assert (= (and b!6861507 res!2799719) b!6861513))

(assert (= (and b!6861506 (not res!2799724)) b!6861511))

(assert (= (and b!6861511 res!2799721) b!6861508))

(assert (= (and b!6861508 (not res!2799717)) b!6861504))

(assert (= (and b!6861504 (not res!2799723)) b!6861517))

(assert (= (or b!6861509 b!6861508 b!6861510) bm!624960))

(assert (=> b!6861513 m!7594978))

(assert (=> b!6861507 m!7594980))

(assert (=> b!6861507 m!7594980))

(assert (=> b!6861507 m!7594982))

(declare-fun m!7595844 () Bool)

(assert (=> b!6861505 m!7595844))

(assert (=> b!6861517 m!7594978))

(assert (=> b!6861515 m!7594978))

(assert (=> b!6861515 m!7594978))

(declare-fun m!7595846 () Bool)

(assert (=> b!6861515 m!7595846))

(assert (=> b!6861515 m!7594980))

(assert (=> b!6861515 m!7595846))

(assert (=> b!6861515 m!7594980))

(declare-fun m!7595848 () Bool)

(assert (=> b!6861515 m!7595848))

(assert (=> d!2155833 m!7594968))

(assert (=> d!2155833 m!7595430))

(assert (=> b!6861504 m!7594980))

(assert (=> b!6861504 m!7594980))

(assert (=> b!6861504 m!7594982))

(assert (=> bm!624960 m!7594968))

(assert (=> b!6861358 d!2155833))

(assert (=> bm!624898 d!2155545))

(declare-fun d!2155835 () Bool)

(assert (=> d!2155835 (= (isEmptyLang!2022 lt!2457498) (is-EmptyLang!16690 lt!2457498))))

(assert (=> b!6860741 d!2155835))

(declare-fun d!2155837 () Bool)

(assert (=> d!2155837 (= (isUnion!1452 lt!2457498) (is-Union!16690 lt!2457498))))

(assert (=> b!6860745 d!2155837))

(declare-fun d!2155839 () Bool)

(declare-fun c!1277222 () Bool)

(assert (=> d!2155839 (= c!1277222 (isEmpty!38608 (tail!12822 s!2326)))))

(declare-fun e!4136825 () Bool)

(assert (=> d!2155839 (= (matchZipper!2656 (derivationStepZipper!2611 (content!13003 zl!343) (head!13759 s!2326)) (tail!12822 s!2326)) e!4136825)))

(declare-fun b!6861518 () Bool)

(assert (=> b!6861518 (= e!4136825 (nullableZipper!2364 (derivationStepZipper!2611 (content!13003 zl!343) (head!13759 s!2326))))))

(declare-fun b!6861519 () Bool)

(assert (=> b!6861519 (= e!4136825 (matchZipper!2656 (derivationStepZipper!2611 (derivationStepZipper!2611 (content!13003 zl!343) (head!13759 s!2326)) (head!13759 (tail!12822 s!2326))) (tail!12822 (tail!12822 s!2326))))))

(assert (= (and d!2155839 c!1277222) b!6861518))

(assert (= (and d!2155839 (not c!1277222)) b!6861519))

(assert (=> d!2155839 m!7594980))

(assert (=> d!2155839 m!7594982))

(assert (=> b!6861518 m!7595196))

(declare-fun m!7595850 () Bool)

(assert (=> b!6861518 m!7595850))

(assert (=> b!6861519 m!7594980))

(assert (=> b!6861519 m!7595212))

(assert (=> b!6861519 m!7595196))

(assert (=> b!6861519 m!7595212))

(declare-fun m!7595852 () Bool)

(assert (=> b!6861519 m!7595852))

(assert (=> b!6861519 m!7594980))

(assert (=> b!6861519 m!7595216))

(assert (=> b!6861519 m!7595852))

(assert (=> b!6861519 m!7595216))

(declare-fun m!7595854 () Bool)

(assert (=> b!6861519 m!7595854))

(assert (=> b!6860665 d!2155839))

(declare-fun bs!1833819 () Bool)

(declare-fun d!2155841 () Bool)

(assert (= bs!1833819 (and d!2155841 d!2155537)))

(declare-fun lambda!388184 () Int)

(assert (=> bs!1833819 (= lambda!388184 lambda!388123)))

(assert (=> d!2155841 true))

(assert (=> d!2155841 (= (derivationStepZipper!2611 (content!13003 zl!343) (head!13759 s!2326)) (flatMap!2139 (content!13003 zl!343) lambda!388184))))

(declare-fun bs!1833820 () Bool)

(assert (= bs!1833820 d!2155841))

(assert (=> bs!1833820 m!7595046))

(declare-fun m!7595856 () Bool)

(assert (=> bs!1833820 m!7595856))

(assert (=> b!6860665 d!2155841))

(assert (=> b!6860665 d!2155539))

(assert (=> b!6860665 d!2155517))

(declare-fun d!2155843 () Bool)

(assert (=> d!2155843 (= (Exists!3750 (ite c!1277063 lambda!388131 lambda!388132)) (choose!51138 (ite c!1277063 lambda!388131 lambda!388132)))))

(declare-fun bs!1833821 () Bool)

(assert (= bs!1833821 d!2155843))

(declare-fun m!7595858 () Bool)

(assert (=> bs!1833821 m!7595858))

(assert (=> bm!624878 d!2155843))

(declare-fun bs!1833822 () Bool)

(declare-fun d!2155845 () Bool)

(assert (= bs!1833822 (and d!2155845 d!2155821)))

(declare-fun lambda!388185 () Int)

(assert (=> bs!1833822 (not (= lambda!388185 lambda!388179))))

(declare-fun bs!1833823 () Bool)

(assert (= bs!1833823 (and d!2155845 d!2155519)))

(assert (=> bs!1833823 (= lambda!388185 lambda!388112)))

(declare-fun bs!1833824 () Bool)

(assert (= bs!1833824 (and d!2155845 d!2155457)))

(assert (=> bs!1833824 (not (= lambda!388185 lambda!388077))))

(declare-fun bs!1833825 () Bool)

(assert (= bs!1833825 (and d!2155845 d!2155799)))

(assert (=> bs!1833825 (= lambda!388185 lambda!388177)))

(declare-fun bs!1833826 () Bool)

(assert (= bs!1833826 (and d!2155845 d!2155459)))

(assert (=> bs!1833826 (not (= lambda!388185 lambda!388080))))

(declare-fun bs!1833827 () Bool)

(assert (= bs!1833827 (and d!2155845 d!2155825)))

(assert (=> bs!1833827 (not (= lambda!388185 lambda!388180))))

(declare-fun bs!1833828 () Bool)

(assert (= bs!1833828 (and d!2155845 d!2155827)))

(assert (=> bs!1833828 (= lambda!388185 lambda!388181)))

(declare-fun bs!1833829 () Bool)

(assert (= bs!1833829 (and d!2155845 d!2155521)))

(assert (=> bs!1833829 (not (= lambda!388185 lambda!388113))))

(declare-fun bs!1833830 () Bool)

(assert (= bs!1833830 (and d!2155845 b!6860130)))

(assert (=> bs!1833830 (not (= lambda!388185 lambda!388029))))

(declare-fun bs!1833831 () Bool)

(assert (= bs!1833831 (and d!2155845 d!2155523)))

(assert (=> bs!1833831 (not (= lambda!388185 lambda!388116))))

(declare-fun bs!1833832 () Bool)

(assert (= bs!1833832 (and d!2155845 d!2155815)))

(assert (=> bs!1833832 (= lambda!388185 lambda!388178)))

(assert (=> d!2155845 (= (nullableZipper!2364 (set.insert lt!2457466 (as set.empty (Set Context!12148)))) (exists!2814 (set.insert lt!2457466 (as set.empty (Set Context!12148))) lambda!388185))))

(declare-fun bs!1833833 () Bool)

(assert (= bs!1833833 d!2155845))

(assert (=> bs!1833833 m!7595104))

(declare-fun m!7595860 () Bool)

(assert (=> bs!1833833 m!7595860))

(assert (=> b!6860757 d!2155845))

(declare-fun d!2155847 () Bool)

(assert (=> d!2155847 (= (nullable!6651 (regOne!33892 r!7292)) (nullableFct!2527 (regOne!33892 r!7292)))))

(declare-fun bs!1833834 () Bool)

(assert (= bs!1833834 d!2155847))

(declare-fun m!7595862 () Bool)

(assert (=> bs!1833834 m!7595862))

(assert (=> b!6860817 d!2155847))

(declare-fun d!2155849 () Bool)

(declare-fun res!2799725 () Bool)

(declare-fun e!4136828 () Bool)

(assert (=> d!2155849 (=> res!2799725 e!4136828)))

(assert (=> d!2155849 (= res!2799725 (is-ElementMatch!16690 (h!72693 lt!2457443)))))

(assert (=> d!2155849 (= (validRegex!8426 (h!72693 lt!2457443)) e!4136828)))

(declare-fun b!6861520 () Bool)

(declare-fun e!4136827 () Bool)

(declare-fun e!4136831 () Bool)

(assert (=> b!6861520 (= e!4136827 e!4136831)))

(declare-fun c!1277224 () Bool)

(assert (=> b!6861520 (= c!1277224 (is-Union!16690 (h!72693 lt!2457443)))))

(declare-fun b!6861521 () Bool)

(declare-fun e!4136829 () Bool)

(declare-fun e!4136832 () Bool)

(assert (=> b!6861521 (= e!4136829 e!4136832)))

(declare-fun res!2799727 () Bool)

(assert (=> b!6861521 (=> (not res!2799727) (not e!4136832))))

(declare-fun call!624966 () Bool)

(assert (=> b!6861521 (= res!2799727 call!624966)))

(declare-fun b!6861522 () Bool)

(declare-fun e!4136830 () Bool)

(assert (=> b!6861522 (= e!4136827 e!4136830)))

(declare-fun res!2799726 () Bool)

(assert (=> b!6861522 (= res!2799726 (not (nullable!6651 (reg!17019 (h!72693 lt!2457443)))))))

(assert (=> b!6861522 (=> (not res!2799726) (not e!4136830))))

(declare-fun b!6861523 () Bool)

(assert (=> b!6861523 (= e!4136828 e!4136827)))

(declare-fun c!1277223 () Bool)

(assert (=> b!6861523 (= c!1277223 (is-Star!16690 (h!72693 lt!2457443)))))

(declare-fun b!6861524 () Bool)

(declare-fun res!2799729 () Bool)

(assert (=> b!6861524 (=> res!2799729 e!4136829)))

(assert (=> b!6861524 (= res!2799729 (not (is-Concat!25535 (h!72693 lt!2457443))))))

(assert (=> b!6861524 (= e!4136831 e!4136829)))

(declare-fun bm!624961 () Bool)

(declare-fun call!624967 () Bool)

(assert (=> bm!624961 (= call!624967 (validRegex!8426 (ite c!1277224 (regTwo!33893 (h!72693 lt!2457443)) (regTwo!33892 (h!72693 lt!2457443)))))))

(declare-fun b!6861525 () Bool)

(declare-fun call!624968 () Bool)

(assert (=> b!6861525 (= e!4136830 call!624968)))

(declare-fun bm!624962 () Bool)

(assert (=> bm!624962 (= call!624966 call!624968)))

(declare-fun b!6861526 () Bool)

(declare-fun e!4136826 () Bool)

(assert (=> b!6861526 (= e!4136826 call!624967)))

(declare-fun b!6861527 () Bool)

(assert (=> b!6861527 (= e!4136832 call!624967)))

(declare-fun bm!624963 () Bool)

(assert (=> bm!624963 (= call!624968 (validRegex!8426 (ite c!1277223 (reg!17019 (h!72693 lt!2457443)) (ite c!1277224 (regOne!33893 (h!72693 lt!2457443)) (regOne!33892 (h!72693 lt!2457443))))))))

(declare-fun b!6861528 () Bool)

(declare-fun res!2799728 () Bool)

(assert (=> b!6861528 (=> (not res!2799728) (not e!4136826))))

(assert (=> b!6861528 (= res!2799728 call!624966)))

(assert (=> b!6861528 (= e!4136831 e!4136826)))

(assert (= (and d!2155849 (not res!2799725)) b!6861523))

(assert (= (and b!6861523 c!1277223) b!6861522))

(assert (= (and b!6861523 (not c!1277223)) b!6861520))

(assert (= (and b!6861522 res!2799726) b!6861525))

(assert (= (and b!6861520 c!1277224) b!6861528))

(assert (= (and b!6861520 (not c!1277224)) b!6861524))

(assert (= (and b!6861528 res!2799728) b!6861526))

(assert (= (and b!6861524 (not res!2799729)) b!6861521))

(assert (= (and b!6861521 res!2799727) b!6861527))

(assert (= (or b!6861526 b!6861527) bm!624961))

(assert (= (or b!6861528 b!6861521) bm!624962))

(assert (= (or b!6861525 bm!624962) bm!624963))

(declare-fun m!7595864 () Bool)

(assert (=> b!6861522 m!7595864))

(declare-fun m!7595866 () Bool)

(assert (=> bm!624961 m!7595866))

(declare-fun m!7595868 () Bool)

(assert (=> bm!624963 m!7595868))

(assert (=> bs!1833519 d!2155849))

(declare-fun d!2155851 () Bool)

(assert (=> d!2155851 true))

(assert (=> d!2155851 true))

(declare-fun res!2799732 () Bool)

(assert (=> d!2155851 (= (choose!51138 (ite c!1276949 lambda!388052 lambda!388053)) res!2799732)))

(assert (=> d!2155609 d!2155851))

(declare-fun bs!1833835 () Bool)

(declare-fun d!2155853 () Bool)

(assert (= bs!1833835 (and d!2155853 b!6860119)))

(declare-fun lambda!388186 () Int)

(assert (=> bs!1833835 (= lambda!388186 lambda!388030)))

(declare-fun bs!1833836 () Bool)

(assert (= bs!1833836 (and d!2155853 d!2155563)))

(assert (=> bs!1833836 (= lambda!388186 lambda!388127)))

(declare-fun bs!1833837 () Bool)

(assert (= bs!1833837 (and d!2155853 d!2155445)))

(assert (=> bs!1833837 (not (= lambda!388186 lambda!388068))))

(declare-fun bs!1833838 () Bool)

(assert (= bs!1833838 (and d!2155853 d!2155437)))

(assert (=> bs!1833838 (not (= lambda!388186 lambda!388059))))

(declare-fun bs!1833839 () Bool)

(assert (= bs!1833839 (and d!2155853 d!2155793)))

(assert (=> bs!1833839 (= lambda!388186 lambda!388176)))

(assert (=> bs!1833837 (= lambda!388186 lambda!388067)))

(declare-fun bs!1833840 () Bool)

(assert (= bs!1833840 (and d!2155853 b!6860114)))

(assert (=> bs!1833840 (not (= lambda!388186 lambda!388028))))

(declare-fun bs!1833841 () Bool)

(assert (= bs!1833841 (and d!2155853 d!2155587)))

(assert (=> bs!1833841 (= lambda!388186 lambda!388136)))

(declare-fun bs!1833842 () Bool)

(assert (= bs!1833842 (and d!2155853 d!2155447)))

(assert (=> bs!1833842 (= lambda!388186 lambda!388071)))

(declare-fun bs!1833843 () Bool)

(assert (= bs!1833843 (and d!2155853 d!2155571)))

(assert (=> bs!1833843 (= lambda!388186 lambda!388130)))

(declare-fun bs!1833844 () Bool)

(assert (= bs!1833844 (and d!2155853 d!2155591)))

(assert (=> bs!1833844 (= lambda!388186 lambda!388137)))

(declare-fun bs!1833845 () Bool)

(assert (= bs!1833845 (and d!2155853 d!2155781)))

(assert (=> bs!1833845 (not (= lambda!388186 lambda!388173))))

(declare-fun bs!1833846 () Bool)

(assert (= bs!1833846 (and d!2155853 d!2155475)))

(assert (=> bs!1833846 (= lambda!388186 lambda!388084)))

(declare-fun bs!1833847 () Bool)

(assert (= bs!1833847 (and d!2155853 d!2155773)))

(assert (=> bs!1833847 (= lambda!388186 lambda!388172)))

(declare-fun bs!1833848 () Bool)

(assert (= bs!1833848 (and d!2155853 d!2155529)))

(assert (=> bs!1833848 (not (= lambda!388186 lambda!388117))))

(declare-fun bs!1833849 () Bool)

(assert (= bs!1833849 (and d!2155853 d!2155531)))

(assert (=> bs!1833849 (not (= lambda!388186 lambda!388120))))

(declare-fun bs!1833850 () Bool)

(assert (= bs!1833850 (and d!2155853 d!2155557)))

(assert (=> bs!1833850 (= lambda!388186 lambda!388124)))

(declare-fun bs!1833851 () Bool)

(assert (= bs!1833851 (and d!2155853 d!2155453)))

(assert (=> bs!1833851 (= lambda!388186 lambda!388074)))

(declare-fun bs!1833852 () Bool)

(assert (= bs!1833852 (and d!2155853 d!2155461)))

(assert (=> bs!1833852 (= lambda!388186 lambda!388081)))

(declare-fun bs!1833853 () Bool)

(assert (= bs!1833853 (and d!2155853 d!2155585)))

(assert (=> bs!1833853 (= lambda!388186 lambda!388135)))

(declare-fun b!6861529 () Bool)

(declare-fun e!4136836 () Bool)

(declare-fun lt!2457532 () Regex!16690)

(assert (=> b!6861529 (= e!4136836 (isConcat!1534 lt!2457532))))

(declare-fun b!6861530 () Bool)

(declare-fun e!4136833 () Bool)

(assert (=> b!6861530 (= e!4136833 (isEmpty!38610 (t!380112 (t!380112 (exprs!6574 (h!72695 zl!343))))))))

(declare-fun b!6861531 () Bool)

(declare-fun e!4136835 () Regex!16690)

(assert (=> b!6861531 (= e!4136835 (h!72693 (t!380112 (exprs!6574 (h!72695 zl!343)))))))

(declare-fun b!6861533 () Bool)

(assert (=> b!6861533 (= e!4136836 (= lt!2457532 (head!13763 (t!380112 (exprs!6574 (h!72695 zl!343))))))))

(declare-fun b!6861534 () Bool)

(declare-fun e!4136837 () Bool)

(assert (=> b!6861534 (= e!4136837 (isEmptyExpr!2011 lt!2457532))))

(declare-fun b!6861535 () Bool)

(declare-fun e!4136834 () Regex!16690)

(assert (=> b!6861535 (= e!4136834 (Concat!25535 (h!72693 (t!380112 (exprs!6574 (h!72695 zl!343)))) (generalisedConcat!2278 (t!380112 (t!380112 (exprs!6574 (h!72695 zl!343)))))))))

(declare-fun b!6861536 () Bool)

(assert (=> b!6861536 (= e!4136835 e!4136834)))

(declare-fun c!1277228 () Bool)

(assert (=> b!6861536 (= c!1277228 (is-Cons!66245 (t!380112 (exprs!6574 (h!72695 zl!343)))))))

(declare-fun e!4136838 () Bool)

(assert (=> d!2155853 e!4136838))

(declare-fun res!2799734 () Bool)

(assert (=> d!2155853 (=> (not res!2799734) (not e!4136838))))

(assert (=> d!2155853 (= res!2799734 (validRegex!8426 lt!2457532))))

(assert (=> d!2155853 (= lt!2457532 e!4136835)))

(declare-fun c!1277225 () Bool)

(assert (=> d!2155853 (= c!1277225 e!4136833)))

(declare-fun res!2799733 () Bool)

(assert (=> d!2155853 (=> (not res!2799733) (not e!4136833))))

(assert (=> d!2155853 (= res!2799733 (is-Cons!66245 (t!380112 (exprs!6574 (h!72695 zl!343)))))))

(assert (=> d!2155853 (forall!15877 (t!380112 (exprs!6574 (h!72695 zl!343))) lambda!388186)))

(assert (=> d!2155853 (= (generalisedConcat!2278 (t!380112 (exprs!6574 (h!72695 zl!343)))) lt!2457532)))

(declare-fun b!6861532 () Bool)

(assert (=> b!6861532 (= e!4136838 e!4136837)))

(declare-fun c!1277227 () Bool)

(assert (=> b!6861532 (= c!1277227 (isEmpty!38610 (t!380112 (exprs!6574 (h!72695 zl!343)))))))

(declare-fun b!6861537 () Bool)

(assert (=> b!6861537 (= e!4136834 EmptyExpr!16690)))

(declare-fun b!6861538 () Bool)

(assert (=> b!6861538 (= e!4136837 e!4136836)))

(declare-fun c!1277226 () Bool)

(assert (=> b!6861538 (= c!1277226 (isEmpty!38610 (tail!12824 (t!380112 (exprs!6574 (h!72695 zl!343))))))))

(assert (= (and d!2155853 res!2799733) b!6861530))

(assert (= (and d!2155853 c!1277225) b!6861531))

(assert (= (and d!2155853 (not c!1277225)) b!6861536))

(assert (= (and b!6861536 c!1277228) b!6861535))

(assert (= (and b!6861536 (not c!1277228)) b!6861537))

(assert (= (and d!2155853 res!2799734) b!6861532))

(assert (= (and b!6861532 c!1277227) b!6861534))

(assert (= (and b!6861532 (not c!1277227)) b!6861538))

(assert (= (and b!6861538 c!1277226) b!6861533))

(assert (= (and b!6861538 (not c!1277226)) b!6861529))

(declare-fun m!7595870 () Bool)

(assert (=> b!6861530 m!7595870))

(declare-fun m!7595872 () Bool)

(assert (=> b!6861535 m!7595872))

(declare-fun m!7595874 () Bool)

(assert (=> b!6861533 m!7595874))

(declare-fun m!7595876 () Bool)

(assert (=> b!6861534 m!7595876))

(declare-fun m!7595878 () Bool)

(assert (=> b!6861529 m!7595878))

(declare-fun m!7595880 () Bool)

(assert (=> b!6861538 m!7595880))

(assert (=> b!6861538 m!7595880))

(declare-fun m!7595882 () Bool)

(assert (=> b!6861538 m!7595882))

(assert (=> b!6861532 m!7595336))

(declare-fun m!7595884 () Bool)

(assert (=> d!2155853 m!7595884))

(declare-fun m!7595886 () Bool)

(assert (=> d!2155853 m!7595886))

(assert (=> b!6860844 d!2155853))

(declare-fun d!2155855 () Bool)

(declare-fun lt!2457533 () Int)

(assert (=> d!2155855 (>= lt!2457533 0)))

(declare-fun e!4136839 () Int)

(assert (=> d!2155855 (= lt!2457533 e!4136839)))

(declare-fun c!1277229 () Bool)

(assert (=> d!2155855 (= c!1277229 (is-Nil!66247 (t!380114 (t!380114 zl!343))))))

(assert (=> d!2155855 (= (size!40712 (t!380114 (t!380114 zl!343))) lt!2457533)))

(declare-fun b!6861539 () Bool)

(assert (=> b!6861539 (= e!4136839 0)))

(declare-fun b!6861540 () Bool)

(assert (=> b!6861540 (= e!4136839 (+ 1 (size!40712 (t!380114 (t!380114 (t!380114 zl!343))))))))

(assert (= (and d!2155855 c!1277229) b!6861539))

(assert (= (and d!2155855 (not c!1277229)) b!6861540))

(declare-fun m!7595888 () Bool)

(assert (=> b!6861540 m!7595888))

(assert (=> b!6860702 d!2155855))

(declare-fun d!2155857 () Bool)

(declare-fun res!2799735 () Bool)

(declare-fun e!4136840 () Bool)

(assert (=> d!2155857 (=> res!2799735 e!4136840)))

(assert (=> d!2155857 (= res!2799735 (is-Nil!66245 lt!2457393))))

(assert (=> d!2155857 (= (forall!15877 lt!2457393 lambda!388117) e!4136840)))

(declare-fun b!6861541 () Bool)

(declare-fun e!4136841 () Bool)

(assert (=> b!6861541 (= e!4136840 e!4136841)))

(declare-fun res!2799736 () Bool)

(assert (=> b!6861541 (=> (not res!2799736) (not e!4136841))))

(assert (=> b!6861541 (= res!2799736 (dynLambda!26503 lambda!388117 (h!72693 lt!2457393)))))

(declare-fun b!6861542 () Bool)

(assert (=> b!6861542 (= e!4136841 (forall!15877 (t!380112 lt!2457393) lambda!388117))))

(assert (= (and d!2155857 (not res!2799735)) b!6861541))

(assert (= (and b!6861541 res!2799736) b!6861542))

(declare-fun b_lambda!259295 () Bool)

(assert (=> (not b_lambda!259295) (not b!6861541)))

(declare-fun m!7595890 () Bool)

(assert (=> b!6861541 m!7595890))

(declare-fun m!7595892 () Bool)

(assert (=> b!6861542 m!7595892))

(assert (=> d!2155529 d!2155857))

(declare-fun d!2155859 () Bool)

(declare-fun res!2799737 () Bool)

(declare-fun e!4136842 () Bool)

(assert (=> d!2155859 (=> res!2799737 e!4136842)))

(assert (=> d!2155859 (= res!2799737 (is-Nil!66245 (exprs!6574 (h!72695 (t!380114 zl!343)))))))

(assert (=> d!2155859 (= (forall!15877 (exprs!6574 (h!72695 (t!380114 zl!343))) lambda!388124) e!4136842)))

(declare-fun b!6861543 () Bool)

(declare-fun e!4136843 () Bool)

(assert (=> b!6861543 (= e!4136842 e!4136843)))

(declare-fun res!2799738 () Bool)

(assert (=> b!6861543 (=> (not res!2799738) (not e!4136843))))

(assert (=> b!6861543 (= res!2799738 (dynLambda!26503 lambda!388124 (h!72693 (exprs!6574 (h!72695 (t!380114 zl!343))))))))

(declare-fun b!6861544 () Bool)

(assert (=> b!6861544 (= e!4136843 (forall!15877 (t!380112 (exprs!6574 (h!72695 (t!380114 zl!343)))) lambda!388124))))

(assert (= (and d!2155859 (not res!2799737)) b!6861543))

(assert (= (and b!6861543 res!2799738) b!6861544))

(declare-fun b_lambda!259297 () Bool)

(assert (=> (not b_lambda!259297) (not b!6861543)))

(declare-fun m!7595894 () Bool)

(assert (=> b!6861543 m!7595894))

(declare-fun m!7595896 () Bool)

(assert (=> b!6861544 m!7595896))

(assert (=> d!2155557 d!2155859))

(assert (=> d!2155535 d!2155515))

(declare-fun d!2155861 () Bool)

(declare-fun res!2799739 () Bool)

(declare-fun e!4136844 () Bool)

(assert (=> d!2155861 (=> res!2799739 e!4136844)))

(assert (=> d!2155861 (= res!2799739 (is-Nil!66247 (t!380114 lt!2457433)))))

(assert (=> d!2155861 (= (noDuplicate!2454 (t!380114 lt!2457433)) e!4136844)))

(declare-fun b!6861545 () Bool)

(declare-fun e!4136845 () Bool)

(assert (=> b!6861545 (= e!4136844 e!4136845)))

(declare-fun res!2799740 () Bool)

(assert (=> b!6861545 (=> (not res!2799740) (not e!4136845))))

(assert (=> b!6861545 (= res!2799740 (not (contains!20348 (t!380114 (t!380114 lt!2457433)) (h!72695 (t!380114 lt!2457433)))))))

(declare-fun b!6861546 () Bool)

(assert (=> b!6861546 (= e!4136845 (noDuplicate!2454 (t!380114 (t!380114 lt!2457433))))))

(assert (= (and d!2155861 (not res!2799739)) b!6861545))

(assert (= (and b!6861545 res!2799740) b!6861546))

(declare-fun m!7595898 () Bool)

(assert (=> b!6861545 m!7595898))

(declare-fun m!7595900 () Bool)

(assert (=> b!6861546 m!7595900))

(assert (=> b!6860764 d!2155861))

(declare-fun d!2155863 () Bool)

(declare-fun c!1277230 () Bool)

(assert (=> d!2155863 (= c!1277230 (isEmpty!38608 (tail!12822 (tail!12822 s!2326))))))

(declare-fun e!4136846 () Bool)

(assert (=> d!2155863 (= (matchZipper!2656 (derivationStepZipper!2611 (derivationStepZipper!2611 z!1189 (head!13759 s!2326)) (head!13759 (tail!12822 s!2326))) (tail!12822 (tail!12822 s!2326))) e!4136846)))

(declare-fun b!6861547 () Bool)

(assert (=> b!6861547 (= e!4136846 (nullableZipper!2364 (derivationStepZipper!2611 (derivationStepZipper!2611 z!1189 (head!13759 s!2326)) (head!13759 (tail!12822 s!2326)))))))

(declare-fun b!6861548 () Bool)

(assert (=> b!6861548 (= e!4136846 (matchZipper!2656 (derivationStepZipper!2611 (derivationStepZipper!2611 (derivationStepZipper!2611 z!1189 (head!13759 s!2326)) (head!13759 (tail!12822 s!2326))) (head!13759 (tail!12822 (tail!12822 s!2326)))) (tail!12822 (tail!12822 (tail!12822 s!2326)))))))

(assert (= (and d!2155863 c!1277230) b!6861547))

(assert (= (and d!2155863 (not c!1277230)) b!6861548))

(assert (=> d!2155863 m!7595216))

(assert (=> d!2155863 m!7595318))

(assert (=> b!6861547 m!7595214))

(declare-fun m!7595902 () Bool)

(assert (=> b!6861547 m!7595902))

(assert (=> b!6861548 m!7595216))

(declare-fun m!7595904 () Bool)

(assert (=> b!6861548 m!7595904))

(assert (=> b!6861548 m!7595214))

(assert (=> b!6861548 m!7595904))

(declare-fun m!7595906 () Bool)

(assert (=> b!6861548 m!7595906))

(assert (=> b!6861548 m!7595216))

(declare-fun m!7595908 () Bool)

(assert (=> b!6861548 m!7595908))

(assert (=> b!6861548 m!7595906))

(assert (=> b!6861548 m!7595908))

(declare-fun m!7595910 () Bool)

(assert (=> b!6861548 m!7595910))

(assert (=> b!6860677 d!2155863))

(declare-fun bs!1833854 () Bool)

(declare-fun d!2155865 () Bool)

(assert (= bs!1833854 (and d!2155865 d!2155537)))

(declare-fun lambda!388187 () Int)

(assert (=> bs!1833854 (= (= (head!13759 (tail!12822 s!2326)) (head!13759 s!2326)) (= lambda!388187 lambda!388123))))

(declare-fun bs!1833855 () Bool)

(assert (= bs!1833855 (and d!2155865 d!2155841)))

(assert (=> bs!1833855 (= (= (head!13759 (tail!12822 s!2326)) (head!13759 s!2326)) (= lambda!388187 lambda!388184))))

(assert (=> d!2155865 true))

(assert (=> d!2155865 (= (derivationStepZipper!2611 (derivationStepZipper!2611 z!1189 (head!13759 s!2326)) (head!13759 (tail!12822 s!2326))) (flatMap!2139 (derivationStepZipper!2611 z!1189 (head!13759 s!2326)) lambda!388187))))

(declare-fun bs!1833856 () Bool)

(assert (= bs!1833856 d!2155865))

(assert (=> bs!1833856 m!7595034))

(declare-fun m!7595912 () Bool)

(assert (=> bs!1833856 m!7595912))

(assert (=> b!6860677 d!2155865))

(assert (=> b!6860677 d!2155753))

(declare-fun d!2155867 () Bool)

(assert (=> d!2155867 (= (tail!12822 (tail!12822 s!2326)) (t!380113 (tail!12822 s!2326)))))

(assert (=> b!6860677 d!2155867))

(declare-fun d!2155869 () Bool)

(declare-fun res!2799741 () Bool)

(declare-fun e!4136847 () Bool)

(assert (=> d!2155869 (=> res!2799741 e!4136847)))

(assert (=> d!2155869 (= res!2799741 (is-Nil!66245 (t!380112 (t!380112 (exprs!6574 lt!2457391)))))))

(assert (=> d!2155869 (= (forall!15877 (t!380112 (t!380112 (exprs!6574 lt!2457391))) lambda!388030) e!4136847)))

(declare-fun b!6861549 () Bool)

(declare-fun e!4136848 () Bool)

(assert (=> b!6861549 (= e!4136847 e!4136848)))

(declare-fun res!2799742 () Bool)

(assert (=> b!6861549 (=> (not res!2799742) (not e!4136848))))

(assert (=> b!6861549 (= res!2799742 (dynLambda!26503 lambda!388030 (h!72693 (t!380112 (t!380112 (exprs!6574 lt!2457391))))))))

(declare-fun b!6861550 () Bool)

(assert (=> b!6861550 (= e!4136848 (forall!15877 (t!380112 (t!380112 (t!380112 (exprs!6574 lt!2457391)))) lambda!388030))))

(assert (= (and d!2155869 (not res!2799741)) b!6861549))

(assert (= (and b!6861549 res!2799742) b!6861550))

(declare-fun b_lambda!259299 () Bool)

(assert (=> (not b_lambda!259299) (not b!6861549)))

(declare-fun m!7595914 () Bool)

(assert (=> b!6861549 m!7595914))

(declare-fun m!7595916 () Bool)

(assert (=> b!6861550 m!7595916))

(assert (=> b!6860851 d!2155869))

(declare-fun d!2155871 () Bool)

(declare-fun res!2799743 () Bool)

(declare-fun e!4136851 () Bool)

(assert (=> d!2155871 (=> res!2799743 e!4136851)))

(assert (=> d!2155871 (= res!2799743 (is-ElementMatch!16690 (ite c!1277042 (regTwo!33893 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (regTwo!33892 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))))))))

(assert (=> d!2155871 (= (validRegex!8426 (ite c!1277042 (regTwo!33893 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (regTwo!33892 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))))) e!4136851)))

(declare-fun b!6861551 () Bool)

(declare-fun e!4136850 () Bool)

(declare-fun e!4136854 () Bool)

(assert (=> b!6861551 (= e!4136850 e!4136854)))

(declare-fun c!1277232 () Bool)

(assert (=> b!6861551 (= c!1277232 (is-Union!16690 (ite c!1277042 (regTwo!33893 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (regTwo!33892 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))))))))

(declare-fun b!6861552 () Bool)

(declare-fun e!4136852 () Bool)

(declare-fun e!4136855 () Bool)

(assert (=> b!6861552 (= e!4136852 e!4136855)))

(declare-fun res!2799745 () Bool)

(assert (=> b!6861552 (=> (not res!2799745) (not e!4136855))))

(declare-fun call!624969 () Bool)

(assert (=> b!6861552 (= res!2799745 call!624969)))

(declare-fun b!6861553 () Bool)

(declare-fun e!4136853 () Bool)

(assert (=> b!6861553 (= e!4136850 e!4136853)))

(declare-fun res!2799744 () Bool)

(assert (=> b!6861553 (= res!2799744 (not (nullable!6651 (reg!17019 (ite c!1277042 (regTwo!33893 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (regTwo!33892 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))))))))))

(assert (=> b!6861553 (=> (not res!2799744) (not e!4136853))))

(declare-fun b!6861554 () Bool)

(assert (=> b!6861554 (= e!4136851 e!4136850)))

(declare-fun c!1277231 () Bool)

(assert (=> b!6861554 (= c!1277231 (is-Star!16690 (ite c!1277042 (regTwo!33893 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (regTwo!33892 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))))))))

(declare-fun b!6861555 () Bool)

(declare-fun res!2799747 () Bool)

(assert (=> b!6861555 (=> res!2799747 e!4136852)))

(assert (=> b!6861555 (= res!2799747 (not (is-Concat!25535 (ite c!1277042 (regTwo!33893 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (regTwo!33892 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292))))))))))

(assert (=> b!6861555 (= e!4136854 e!4136852)))

(declare-fun call!624970 () Bool)

(declare-fun bm!624964 () Bool)

(assert (=> bm!624964 (= call!624970 (validRegex!8426 (ite c!1277232 (regTwo!33893 (ite c!1277042 (regTwo!33893 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (regTwo!33892 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))))) (regTwo!33892 (ite c!1277042 (regTwo!33893 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (regTwo!33892 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))))))))))

(declare-fun b!6861556 () Bool)

(declare-fun call!624971 () Bool)

(assert (=> b!6861556 (= e!4136853 call!624971)))

(declare-fun bm!624965 () Bool)

(assert (=> bm!624965 (= call!624969 call!624971)))

(declare-fun b!6861557 () Bool)

(declare-fun e!4136849 () Bool)

(assert (=> b!6861557 (= e!4136849 call!624970)))

(declare-fun b!6861558 () Bool)

(assert (=> b!6861558 (= e!4136855 call!624970)))

(declare-fun bm!624966 () Bool)

(assert (=> bm!624966 (= call!624971 (validRegex!8426 (ite c!1277231 (reg!17019 (ite c!1277042 (regTwo!33893 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (regTwo!33892 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))))) (ite c!1277232 (regOne!33893 (ite c!1277042 (regTwo!33893 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (regTwo!33892 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))))) (regOne!33892 (ite c!1277042 (regTwo!33893 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (regTwo!33892 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292))))))))))))

(declare-fun b!6861559 () Bool)

(declare-fun res!2799746 () Bool)

(assert (=> b!6861559 (=> (not res!2799746) (not e!4136849))))

(assert (=> b!6861559 (= res!2799746 call!624969)))

(assert (=> b!6861559 (= e!4136854 e!4136849)))

(assert (= (and d!2155871 (not res!2799743)) b!6861554))

(assert (= (and b!6861554 c!1277231) b!6861553))

(assert (= (and b!6861554 (not c!1277231)) b!6861551))

(assert (= (and b!6861553 res!2799744) b!6861556))

(assert (= (and b!6861551 c!1277232) b!6861559))

(assert (= (and b!6861551 (not c!1277232)) b!6861555))

(assert (= (and b!6861559 res!2799746) b!6861557))

(assert (= (and b!6861555 (not res!2799747)) b!6861552))

(assert (= (and b!6861552 res!2799745) b!6861558))

(assert (= (or b!6861557 b!6861558) bm!624964))

(assert (= (or b!6861559 b!6861552) bm!624965))

(assert (= (or b!6861556 bm!624965) bm!624966))

(declare-fun m!7595918 () Bool)

(assert (=> b!6861553 m!7595918))

(declare-fun m!7595920 () Bool)

(assert (=> bm!624964 m!7595920))

(declare-fun m!7595922 () Bool)

(assert (=> bm!624966 m!7595922))

(assert (=> bm!624871 d!2155871))

(assert (=> d!2155549 d!2155545))

(declare-fun d!2155873 () Bool)

(declare-fun lt!2457534 () Bool)

(assert (=> d!2155873 (= lt!2457534 (set.member lt!2457466 (content!13003 (t!380114 zl!343))))))

(declare-fun e!4136857 () Bool)

(assert (=> d!2155873 (= lt!2457534 e!4136857)))

(declare-fun res!2799748 () Bool)

(assert (=> d!2155873 (=> (not res!2799748) (not e!4136857))))

(assert (=> d!2155873 (= res!2799748 (is-Cons!66247 (t!380114 zl!343)))))

(assert (=> d!2155873 (= (contains!20348 (t!380114 zl!343) lt!2457466) lt!2457534)))

(declare-fun b!6861560 () Bool)

(declare-fun e!4136856 () Bool)

(assert (=> b!6861560 (= e!4136857 e!4136856)))

(declare-fun res!2799749 () Bool)

(assert (=> b!6861560 (=> res!2799749 e!4136856)))

(assert (=> b!6861560 (= res!2799749 (= (h!72695 (t!380114 zl!343)) lt!2457466))))

(declare-fun b!6861561 () Bool)

(assert (=> b!6861561 (= e!4136856 (contains!20348 (t!380114 (t!380114 zl!343)) lt!2457466))))

(assert (= (and d!2155873 res!2799748) b!6861560))

(assert (= (and b!6861560 (not res!2799749)) b!6861561))

(assert (=> d!2155873 m!7595200))

(declare-fun m!7595924 () Bool)

(assert (=> d!2155873 m!7595924))

(declare-fun m!7595926 () Bool)

(assert (=> b!6861561 m!7595926))

(assert (=> b!6860690 d!2155873))

(declare-fun d!2155875 () Bool)

(declare-fun res!2799750 () Bool)

(declare-fun e!4136860 () Bool)

(assert (=> d!2155875 (=> res!2799750 e!4136860)))

(assert (=> d!2155875 (= res!2799750 (is-ElementMatch!16690 (h!72693 lt!2457393)))))

(assert (=> d!2155875 (= (validRegex!8426 (h!72693 lt!2457393)) e!4136860)))

(declare-fun b!6861562 () Bool)

(declare-fun e!4136859 () Bool)

(declare-fun e!4136863 () Bool)

(assert (=> b!6861562 (= e!4136859 e!4136863)))

(declare-fun c!1277234 () Bool)

(assert (=> b!6861562 (= c!1277234 (is-Union!16690 (h!72693 lt!2457393)))))

(declare-fun b!6861563 () Bool)

(declare-fun e!4136861 () Bool)

(declare-fun e!4136864 () Bool)

(assert (=> b!6861563 (= e!4136861 e!4136864)))

(declare-fun res!2799752 () Bool)

(assert (=> b!6861563 (=> (not res!2799752) (not e!4136864))))

(declare-fun call!624972 () Bool)

(assert (=> b!6861563 (= res!2799752 call!624972)))

(declare-fun b!6861564 () Bool)

(declare-fun e!4136862 () Bool)

(assert (=> b!6861564 (= e!4136859 e!4136862)))

(declare-fun res!2799751 () Bool)

(assert (=> b!6861564 (= res!2799751 (not (nullable!6651 (reg!17019 (h!72693 lt!2457393)))))))

(assert (=> b!6861564 (=> (not res!2799751) (not e!4136862))))

(declare-fun b!6861565 () Bool)

(assert (=> b!6861565 (= e!4136860 e!4136859)))

(declare-fun c!1277233 () Bool)

(assert (=> b!6861565 (= c!1277233 (is-Star!16690 (h!72693 lt!2457393)))))

(declare-fun b!6861566 () Bool)

(declare-fun res!2799754 () Bool)

(assert (=> b!6861566 (=> res!2799754 e!4136861)))

(assert (=> b!6861566 (= res!2799754 (not (is-Concat!25535 (h!72693 lt!2457393))))))

(assert (=> b!6861566 (= e!4136863 e!4136861)))

(declare-fun bm!624967 () Bool)

(declare-fun call!624973 () Bool)

(assert (=> bm!624967 (= call!624973 (validRegex!8426 (ite c!1277234 (regTwo!33893 (h!72693 lt!2457393)) (regTwo!33892 (h!72693 lt!2457393)))))))

(declare-fun b!6861567 () Bool)

(declare-fun call!624974 () Bool)

(assert (=> b!6861567 (= e!4136862 call!624974)))

(declare-fun bm!624968 () Bool)

(assert (=> bm!624968 (= call!624972 call!624974)))

(declare-fun b!6861568 () Bool)

(declare-fun e!4136858 () Bool)

(assert (=> b!6861568 (= e!4136858 call!624973)))

(declare-fun b!6861569 () Bool)

(assert (=> b!6861569 (= e!4136864 call!624973)))

(declare-fun bm!624969 () Bool)

(assert (=> bm!624969 (= call!624974 (validRegex!8426 (ite c!1277233 (reg!17019 (h!72693 lt!2457393)) (ite c!1277234 (regOne!33893 (h!72693 lt!2457393)) (regOne!33892 (h!72693 lt!2457393))))))))

(declare-fun b!6861570 () Bool)

(declare-fun res!2799753 () Bool)

(assert (=> b!6861570 (=> (not res!2799753) (not e!4136858))))

(assert (=> b!6861570 (= res!2799753 call!624972)))

(assert (=> b!6861570 (= e!4136863 e!4136858)))

(assert (= (and d!2155875 (not res!2799750)) b!6861565))

(assert (= (and b!6861565 c!1277233) b!6861564))

(assert (= (and b!6861565 (not c!1277233)) b!6861562))

(assert (= (and b!6861564 res!2799751) b!6861567))

(assert (= (and b!6861562 c!1277234) b!6861570))

(assert (= (and b!6861562 (not c!1277234)) b!6861566))

(assert (= (and b!6861570 res!2799753) b!6861568))

(assert (= (and b!6861566 (not res!2799754)) b!6861563))

(assert (= (and b!6861563 res!2799752) b!6861569))

(assert (= (or b!6861568 b!6861569) bm!624967))

(assert (= (or b!6861570 b!6861563) bm!624968))

(assert (= (or b!6861567 bm!624968) bm!624969))

(declare-fun m!7595928 () Bool)

(assert (=> b!6861564 m!7595928))

(declare-fun m!7595930 () Bool)

(assert (=> bm!624967 m!7595930))

(declare-fun m!7595932 () Bool)

(assert (=> bm!624969 m!7595932))

(assert (=> bs!1833521 d!2155875))

(declare-fun d!2155877 () Bool)

(declare-fun res!2799755 () Bool)

(declare-fun e!4136867 () Bool)

(assert (=> d!2155877 (=> res!2799755 e!4136867)))

(assert (=> d!2155877 (= res!2799755 (is-ElementMatch!16690 lt!2457505))))

(assert (=> d!2155877 (= (validRegex!8426 lt!2457505) e!4136867)))

(declare-fun b!6861571 () Bool)

(declare-fun e!4136866 () Bool)

(declare-fun e!4136870 () Bool)

(assert (=> b!6861571 (= e!4136866 e!4136870)))

(declare-fun c!1277236 () Bool)

(assert (=> b!6861571 (= c!1277236 (is-Union!16690 lt!2457505))))

(declare-fun b!6861572 () Bool)

(declare-fun e!4136868 () Bool)

(declare-fun e!4136871 () Bool)

(assert (=> b!6861572 (= e!4136868 e!4136871)))

(declare-fun res!2799757 () Bool)

(assert (=> b!6861572 (=> (not res!2799757) (not e!4136871))))

(declare-fun call!624975 () Bool)

(assert (=> b!6861572 (= res!2799757 call!624975)))

(declare-fun b!6861573 () Bool)

(declare-fun e!4136869 () Bool)

(assert (=> b!6861573 (= e!4136866 e!4136869)))

(declare-fun res!2799756 () Bool)

(assert (=> b!6861573 (= res!2799756 (not (nullable!6651 (reg!17019 lt!2457505))))))

(assert (=> b!6861573 (=> (not res!2799756) (not e!4136869))))

(declare-fun b!6861574 () Bool)

(assert (=> b!6861574 (= e!4136867 e!4136866)))

(declare-fun c!1277235 () Bool)

(assert (=> b!6861574 (= c!1277235 (is-Star!16690 lt!2457505))))

(declare-fun b!6861575 () Bool)

(declare-fun res!2799759 () Bool)

(assert (=> b!6861575 (=> res!2799759 e!4136868)))

(assert (=> b!6861575 (= res!2799759 (not (is-Concat!25535 lt!2457505)))))

(assert (=> b!6861575 (= e!4136870 e!4136868)))

(declare-fun bm!624970 () Bool)

(declare-fun call!624976 () Bool)

(assert (=> bm!624970 (= call!624976 (validRegex!8426 (ite c!1277236 (regTwo!33893 lt!2457505) (regTwo!33892 lt!2457505))))))

(declare-fun b!6861576 () Bool)

(declare-fun call!624977 () Bool)

(assert (=> b!6861576 (= e!4136869 call!624977)))

(declare-fun bm!624971 () Bool)

(assert (=> bm!624971 (= call!624975 call!624977)))

(declare-fun b!6861577 () Bool)

(declare-fun e!4136865 () Bool)

(assert (=> b!6861577 (= e!4136865 call!624976)))

(declare-fun b!6861578 () Bool)

(assert (=> b!6861578 (= e!4136871 call!624976)))

(declare-fun bm!624972 () Bool)

(assert (=> bm!624972 (= call!624977 (validRegex!8426 (ite c!1277235 (reg!17019 lt!2457505) (ite c!1277236 (regOne!33893 lt!2457505) (regOne!33892 lt!2457505)))))))

(declare-fun b!6861579 () Bool)

(declare-fun res!2799758 () Bool)

(assert (=> b!6861579 (=> (not res!2799758) (not e!4136865))))

(assert (=> b!6861579 (= res!2799758 call!624975)))

(assert (=> b!6861579 (= e!4136870 e!4136865)))

(assert (= (and d!2155877 (not res!2799755)) b!6861574))

(assert (= (and b!6861574 c!1277235) b!6861573))

(assert (= (and b!6861574 (not c!1277235)) b!6861571))

(assert (= (and b!6861573 res!2799756) b!6861576))

(assert (= (and b!6861571 c!1277236) b!6861579))

(assert (= (and b!6861571 (not c!1277236)) b!6861575))

(assert (= (and b!6861579 res!2799758) b!6861577))

(assert (= (and b!6861575 (not res!2799759)) b!6861572))

(assert (= (and b!6861572 res!2799757) b!6861578))

(assert (= (or b!6861577 b!6861578) bm!624970))

(assert (= (or b!6861579 b!6861572) bm!624971))

(assert (= (or b!6861576 bm!624971) bm!624972))

(declare-fun m!7595934 () Bool)

(assert (=> b!6861573 m!7595934))

(declare-fun m!7595936 () Bool)

(assert (=> bm!624970 m!7595936))

(declare-fun m!7595938 () Bool)

(assert (=> bm!624972 m!7595938))

(assert (=> d!2155585 d!2155877))

(declare-fun d!2155879 () Bool)

(declare-fun res!2799760 () Bool)

(declare-fun e!4136872 () Bool)

(assert (=> d!2155879 (=> res!2799760 e!4136872)))

(assert (=> d!2155879 (= res!2799760 (is-Nil!66245 (exprs!6574 (h!72695 zl!343))))))

(assert (=> d!2155879 (= (forall!15877 (exprs!6574 (h!72695 zl!343)) lambda!388135) e!4136872)))

(declare-fun b!6861580 () Bool)

(declare-fun e!4136873 () Bool)

(assert (=> b!6861580 (= e!4136872 e!4136873)))

(declare-fun res!2799761 () Bool)

(assert (=> b!6861580 (=> (not res!2799761) (not e!4136873))))

(assert (=> b!6861580 (= res!2799761 (dynLambda!26503 lambda!388135 (h!72693 (exprs!6574 (h!72695 zl!343)))))))

(declare-fun b!6861581 () Bool)

(assert (=> b!6861581 (= e!4136873 (forall!15877 (t!380112 (exprs!6574 (h!72695 zl!343))) lambda!388135))))

(assert (= (and d!2155879 (not res!2799760)) b!6861580))

(assert (= (and b!6861580 res!2799761) b!6861581))

(declare-fun b_lambda!259301 () Bool)

(assert (=> (not b_lambda!259301) (not b!6861580)))

(declare-fun m!7595940 () Bool)

(assert (=> b!6861580 m!7595940))

(declare-fun m!7595942 () Bool)

(assert (=> b!6861581 m!7595942))

(assert (=> d!2155585 d!2155879))

(declare-fun d!2155881 () Bool)

(declare-fun c!1277237 () Bool)

(assert (=> d!2155881 (= c!1277237 (is-Nil!66247 (t!380114 lt!2457433)))))

(declare-fun e!4136874 () (Set Context!12148))

(assert (=> d!2155881 (= (content!13003 (t!380114 lt!2457433)) e!4136874)))

(declare-fun b!6861582 () Bool)

(assert (=> b!6861582 (= e!4136874 (as set.empty (Set Context!12148)))))

(declare-fun b!6861583 () Bool)

(assert (=> b!6861583 (= e!4136874 (set.union (set.insert (h!72695 (t!380114 lt!2457433)) (as set.empty (Set Context!12148))) (content!13003 (t!380114 (t!380114 lt!2457433)))))))

(assert (= (and d!2155881 c!1277237) b!6861582))

(assert (= (and d!2155881 (not c!1277237)) b!6861583))

(declare-fun m!7595944 () Bool)

(assert (=> b!6861583 m!7595944))

(declare-fun m!7595946 () Bool)

(assert (=> b!6861583 m!7595946))

(assert (=> b!6860892 d!2155881))

(assert (=> bs!1833664 d!2155875))

(declare-fun d!2155883 () Bool)

(assert (=> d!2155883 (= (isEmpty!38608 (tail!12822 (tail!12822 s!2326))) (is-Nil!66246 (tail!12822 (tail!12822 s!2326))))))

(assert (=> b!6860777 d!2155883))

(assert (=> b!6860777 d!2155867))

(declare-fun d!2155885 () Bool)

(declare-fun c!1277238 () Bool)

(assert (=> d!2155885 (= c!1277238 (isEmpty!38608 (tail!12822 s!2326)))))

(declare-fun e!4136875 () Bool)

(assert (=> d!2155885 (= (matchZipper!2656 (derivationStepZipper!2611 (set.insert (h!72695 zl!343) (as set.empty (Set Context!12148))) (head!13759 s!2326)) (tail!12822 s!2326)) e!4136875)))

(declare-fun b!6861584 () Bool)

(assert (=> b!6861584 (= e!4136875 (nullableZipper!2364 (derivationStepZipper!2611 (set.insert (h!72695 zl!343) (as set.empty (Set Context!12148))) (head!13759 s!2326))))))

(declare-fun b!6861585 () Bool)

(assert (=> b!6861585 (= e!4136875 (matchZipper!2656 (derivationStepZipper!2611 (derivationStepZipper!2611 (set.insert (h!72695 zl!343) (as set.empty (Set Context!12148))) (head!13759 s!2326)) (head!13759 (tail!12822 s!2326))) (tail!12822 (tail!12822 s!2326))))))

(assert (= (and d!2155885 c!1277238) b!6861584))

(assert (= (and d!2155885 (not c!1277238)) b!6861585))

(assert (=> d!2155885 m!7594980))

(assert (=> d!2155885 m!7594982))

(assert (=> b!6861584 m!7595238))

(declare-fun m!7595948 () Bool)

(assert (=> b!6861584 m!7595948))

(assert (=> b!6861585 m!7594980))

(assert (=> b!6861585 m!7595212))

(assert (=> b!6861585 m!7595238))

(assert (=> b!6861585 m!7595212))

(declare-fun m!7595950 () Bool)

(assert (=> b!6861585 m!7595950))

(assert (=> b!6861585 m!7594980))

(assert (=> b!6861585 m!7595216))

(assert (=> b!6861585 m!7595950))

(assert (=> b!6861585 m!7595216))

(declare-fun m!7595952 () Bool)

(assert (=> b!6861585 m!7595952))

(assert (=> b!6860694 d!2155885))

(declare-fun bs!1833857 () Bool)

(declare-fun d!2155887 () Bool)

(assert (= bs!1833857 (and d!2155887 d!2155537)))

(declare-fun lambda!388188 () Int)

(assert (=> bs!1833857 (= lambda!388188 lambda!388123)))

(declare-fun bs!1833858 () Bool)

(assert (= bs!1833858 (and d!2155887 d!2155841)))

(assert (=> bs!1833858 (= lambda!388188 lambda!388184)))

(declare-fun bs!1833859 () Bool)

(assert (= bs!1833859 (and d!2155887 d!2155865)))

(assert (=> bs!1833859 (= (= (head!13759 s!2326) (head!13759 (tail!12822 s!2326))) (= lambda!388188 lambda!388187))))

(assert (=> d!2155887 true))

(assert (=> d!2155887 (= (derivationStepZipper!2611 (set.insert (h!72695 zl!343) (as set.empty (Set Context!12148))) (head!13759 s!2326)) (flatMap!2139 (set.insert (h!72695 zl!343) (as set.empty (Set Context!12148))) lambda!388188))))

(declare-fun bs!1833860 () Bool)

(assert (= bs!1833860 d!2155887))

(assert (=> bs!1833860 m!7595100))

(declare-fun m!7595954 () Bool)

(assert (=> bs!1833860 m!7595954))

(assert (=> b!6860694 d!2155887))

(assert (=> b!6860694 d!2155539))

(assert (=> b!6860694 d!2155517))

(declare-fun d!2155889 () Bool)

(assert (=> d!2155889 (= (isEmpty!38610 (unfocusZipperList!2107 zl!343)) (is-Nil!66245 (unfocusZipperList!2107 zl!343)))))

(assert (=> b!6860738 d!2155889))

(declare-fun d!2155891 () Bool)

(declare-fun res!2799762 () Bool)

(declare-fun e!4136876 () Bool)

(assert (=> d!2155891 (=> res!2799762 e!4136876)))

(assert (=> d!2155891 (= res!2799762 (is-Nil!66245 (t!380112 (exprs!6574 (h!72695 zl!343)))))))

(assert (=> d!2155891 (= (forall!15877 (t!380112 (exprs!6574 (h!72695 zl!343))) lambda!388074) e!4136876)))

(declare-fun b!6861586 () Bool)

(declare-fun e!4136877 () Bool)

(assert (=> b!6861586 (= e!4136876 e!4136877)))

(declare-fun res!2799763 () Bool)

(assert (=> b!6861586 (=> (not res!2799763) (not e!4136877))))

(assert (=> b!6861586 (= res!2799763 (dynLambda!26503 lambda!388074 (h!72693 (t!380112 (exprs!6574 (h!72695 zl!343))))))))

(declare-fun b!6861587 () Bool)

(assert (=> b!6861587 (= e!4136877 (forall!15877 (t!380112 (t!380112 (exprs!6574 (h!72695 zl!343)))) lambda!388074))))

(assert (= (and d!2155891 (not res!2799762)) b!6861586))

(assert (= (and b!6861586 res!2799763) b!6861587))

(declare-fun b_lambda!259303 () Bool)

(assert (=> (not b_lambda!259303) (not b!6861586)))

(declare-fun m!7595956 () Bool)

(assert (=> b!6861586 m!7595956))

(declare-fun m!7595958 () Bool)

(assert (=> b!6861587 m!7595958))

(assert (=> b!6860894 d!2155891))

(declare-fun d!2155893 () Bool)

(declare-fun res!2799764 () Bool)

(declare-fun e!4136878 () Bool)

(assert (=> d!2155893 (=> res!2799764 e!4136878)))

(assert (=> d!2155893 (= res!2799764 (is-Nil!66245 (exprs!6574 setElem!47184)))))

(assert (=> d!2155893 (= (forall!15877 (exprs!6574 setElem!47184) lambda!388137) e!4136878)))

(declare-fun b!6861588 () Bool)

(declare-fun e!4136879 () Bool)

(assert (=> b!6861588 (= e!4136878 e!4136879)))

(declare-fun res!2799765 () Bool)

(assert (=> b!6861588 (=> (not res!2799765) (not e!4136879))))

(assert (=> b!6861588 (= res!2799765 (dynLambda!26503 lambda!388137 (h!72693 (exprs!6574 setElem!47184))))))

(declare-fun b!6861589 () Bool)

(assert (=> b!6861589 (= e!4136879 (forall!15877 (t!380112 (exprs!6574 setElem!47184)) lambda!388137))))

(assert (= (and d!2155893 (not res!2799764)) b!6861588))

(assert (= (and b!6861588 res!2799765) b!6861589))

(declare-fun b_lambda!259305 () Bool)

(assert (=> (not b_lambda!259305) (not b!6861588)))

(declare-fun m!7595960 () Bool)

(assert (=> b!6861588 m!7595960))

(declare-fun m!7595962 () Bool)

(assert (=> b!6861589 m!7595962))

(assert (=> d!2155591 d!2155893))

(declare-fun d!2155895 () Bool)

(assert (=> d!2155895 (= (head!13763 (unfocusZipperList!2107 zl!343)) (h!72693 (unfocusZipperList!2107 zl!343)))))

(assert (=> b!6860742 d!2155895))

(declare-fun d!2155897 () Bool)

(declare-fun c!1277239 () Bool)

(assert (=> d!2155897 (= c!1277239 (is-Nil!66247 (t!380114 zl!343)))))

(declare-fun e!4136880 () (Set Context!12148))

(assert (=> d!2155897 (= (content!13003 (t!380114 zl!343)) e!4136880)))

(declare-fun b!6861590 () Bool)

(assert (=> b!6861590 (= e!4136880 (as set.empty (Set Context!12148)))))

(declare-fun b!6861591 () Bool)

(assert (=> b!6861591 (= e!4136880 (set.union (set.insert (h!72695 (t!380114 zl!343)) (as set.empty (Set Context!12148))) (content!13003 (t!380114 (t!380114 zl!343)))))))

(assert (= (and d!2155897 c!1277239) b!6861590))

(assert (= (and d!2155897 (not c!1277239)) b!6861591))

(assert (=> b!6861591 m!7595414))

(assert (=> b!6861591 m!7595698))

(assert (=> d!2155547 d!2155897))

(declare-fun d!2155899 () Bool)

(declare-fun res!2799766 () Bool)

(declare-fun e!4136883 () Bool)

(assert (=> d!2155899 (=> res!2799766 e!4136883)))

(assert (=> d!2155899 (= res!2799766 (is-ElementMatch!16690 (ite c!1277101 (regTwo!33893 (h!72693 (exprs!6574 lt!2457391))) (regTwo!33892 (h!72693 (exprs!6574 lt!2457391))))))))

(assert (=> d!2155899 (= (validRegex!8426 (ite c!1277101 (regTwo!33893 (h!72693 (exprs!6574 lt!2457391))) (regTwo!33892 (h!72693 (exprs!6574 lt!2457391))))) e!4136883)))

(declare-fun b!6861592 () Bool)

(declare-fun e!4136882 () Bool)

(declare-fun e!4136886 () Bool)

(assert (=> b!6861592 (= e!4136882 e!4136886)))

(declare-fun c!1277241 () Bool)

(assert (=> b!6861592 (= c!1277241 (is-Union!16690 (ite c!1277101 (regTwo!33893 (h!72693 (exprs!6574 lt!2457391))) (regTwo!33892 (h!72693 (exprs!6574 lt!2457391))))))))

(declare-fun b!6861593 () Bool)

(declare-fun e!4136884 () Bool)

(declare-fun e!4136887 () Bool)

(assert (=> b!6861593 (= e!4136884 e!4136887)))

(declare-fun res!2799768 () Bool)

(assert (=> b!6861593 (=> (not res!2799768) (not e!4136887))))

(declare-fun call!624978 () Bool)

(assert (=> b!6861593 (= res!2799768 call!624978)))

(declare-fun b!6861594 () Bool)

(declare-fun e!4136885 () Bool)

(assert (=> b!6861594 (= e!4136882 e!4136885)))

(declare-fun res!2799767 () Bool)

(assert (=> b!6861594 (= res!2799767 (not (nullable!6651 (reg!17019 (ite c!1277101 (regTwo!33893 (h!72693 (exprs!6574 lt!2457391))) (regTwo!33892 (h!72693 (exprs!6574 lt!2457391))))))))))

(assert (=> b!6861594 (=> (not res!2799767) (not e!4136885))))

(declare-fun b!6861595 () Bool)

(assert (=> b!6861595 (= e!4136883 e!4136882)))

(declare-fun c!1277240 () Bool)

(assert (=> b!6861595 (= c!1277240 (is-Star!16690 (ite c!1277101 (regTwo!33893 (h!72693 (exprs!6574 lt!2457391))) (regTwo!33892 (h!72693 (exprs!6574 lt!2457391))))))))

(declare-fun b!6861596 () Bool)

(declare-fun res!2799770 () Bool)

(assert (=> b!6861596 (=> res!2799770 e!4136884)))

(assert (=> b!6861596 (= res!2799770 (not (is-Concat!25535 (ite c!1277101 (regTwo!33893 (h!72693 (exprs!6574 lt!2457391))) (regTwo!33892 (h!72693 (exprs!6574 lt!2457391)))))))))

(assert (=> b!6861596 (= e!4136886 e!4136884)))

(declare-fun call!624979 () Bool)

(declare-fun bm!624973 () Bool)

(assert (=> bm!624973 (= call!624979 (validRegex!8426 (ite c!1277241 (regTwo!33893 (ite c!1277101 (regTwo!33893 (h!72693 (exprs!6574 lt!2457391))) (regTwo!33892 (h!72693 (exprs!6574 lt!2457391))))) (regTwo!33892 (ite c!1277101 (regTwo!33893 (h!72693 (exprs!6574 lt!2457391))) (regTwo!33892 (h!72693 (exprs!6574 lt!2457391))))))))))

(declare-fun b!6861597 () Bool)

(declare-fun call!624980 () Bool)

(assert (=> b!6861597 (= e!4136885 call!624980)))

(declare-fun bm!624974 () Bool)

(assert (=> bm!624974 (= call!624978 call!624980)))

(declare-fun b!6861598 () Bool)

(declare-fun e!4136881 () Bool)

(assert (=> b!6861598 (= e!4136881 call!624979)))

(declare-fun b!6861599 () Bool)

(assert (=> b!6861599 (= e!4136887 call!624979)))

(declare-fun bm!624975 () Bool)

(assert (=> bm!624975 (= call!624980 (validRegex!8426 (ite c!1277240 (reg!17019 (ite c!1277101 (regTwo!33893 (h!72693 (exprs!6574 lt!2457391))) (regTwo!33892 (h!72693 (exprs!6574 lt!2457391))))) (ite c!1277241 (regOne!33893 (ite c!1277101 (regTwo!33893 (h!72693 (exprs!6574 lt!2457391))) (regTwo!33892 (h!72693 (exprs!6574 lt!2457391))))) (regOne!33892 (ite c!1277101 (regTwo!33893 (h!72693 (exprs!6574 lt!2457391))) (regTwo!33892 (h!72693 (exprs!6574 lt!2457391)))))))))))

(declare-fun b!6861600 () Bool)

(declare-fun res!2799769 () Bool)

(assert (=> b!6861600 (=> (not res!2799769) (not e!4136881))))

(assert (=> b!6861600 (= res!2799769 call!624978)))

(assert (=> b!6861600 (= e!4136886 e!4136881)))

(assert (= (and d!2155899 (not res!2799766)) b!6861595))

(assert (= (and b!6861595 c!1277240) b!6861594))

(assert (= (and b!6861595 (not c!1277240)) b!6861592))

(assert (= (and b!6861594 res!2799767) b!6861597))

(assert (= (and b!6861592 c!1277241) b!6861600))

(assert (= (and b!6861592 (not c!1277241)) b!6861596))

(assert (= (and b!6861600 res!2799769) b!6861598))

(assert (= (and b!6861596 (not res!2799770)) b!6861593))

(assert (= (and b!6861593 res!2799768) b!6861599))

(assert (= (or b!6861598 b!6861599) bm!624973))

(assert (= (or b!6861600 b!6861593) bm!624974))

(assert (= (or b!6861597 bm!624974) bm!624975))

(declare-fun m!7595964 () Bool)

(assert (=> b!6861594 m!7595964))

(declare-fun m!7595966 () Bool)

(assert (=> bm!624973 m!7595966))

(declare-fun m!7595968 () Bool)

(assert (=> bm!624975 m!7595968))

(assert (=> bm!624895 d!2155899))

(assert (=> d!2155575 d!2155545))

(declare-fun d!2155901 () Bool)

(declare-fun c!1277242 () Bool)

(assert (=> d!2155901 (= c!1277242 (isEmpty!38608 (tail!12822 s!2326)))))

(declare-fun e!4136888 () Bool)

(assert (=> d!2155901 (= (matchZipper!2656 (derivationStepZipper!2611 (set.insert lt!2457466 (as set.empty (Set Context!12148))) (head!13759 s!2326)) (tail!12822 s!2326)) e!4136888)))

(declare-fun b!6861601 () Bool)

(assert (=> b!6861601 (= e!4136888 (nullableZipper!2364 (derivationStepZipper!2611 (set.insert lt!2457466 (as set.empty (Set Context!12148))) (head!13759 s!2326))))))

(declare-fun b!6861602 () Bool)

(assert (=> b!6861602 (= e!4136888 (matchZipper!2656 (derivationStepZipper!2611 (derivationStepZipper!2611 (set.insert lt!2457466 (as set.empty (Set Context!12148))) (head!13759 s!2326)) (head!13759 (tail!12822 s!2326))) (tail!12822 (tail!12822 s!2326))))))

(assert (= (and d!2155901 c!1277242) b!6861601))

(assert (= (and d!2155901 (not c!1277242)) b!6861602))

(assert (=> d!2155901 m!7594980))

(assert (=> d!2155901 m!7594982))

(assert (=> b!6861601 m!7595304))

(declare-fun m!7595970 () Bool)

(assert (=> b!6861601 m!7595970))

(assert (=> b!6861602 m!7594980))

(assert (=> b!6861602 m!7595212))

(assert (=> b!6861602 m!7595304))

(assert (=> b!6861602 m!7595212))

(declare-fun m!7595972 () Bool)

(assert (=> b!6861602 m!7595972))

(assert (=> b!6861602 m!7594980))

(assert (=> b!6861602 m!7595216))

(assert (=> b!6861602 m!7595972))

(assert (=> b!6861602 m!7595216))

(declare-fun m!7595974 () Bool)

(assert (=> b!6861602 m!7595974))

(assert (=> b!6860758 d!2155901))

(declare-fun bs!1833861 () Bool)

(declare-fun d!2155903 () Bool)

(assert (= bs!1833861 (and d!2155903 d!2155537)))

(declare-fun lambda!388189 () Int)

(assert (=> bs!1833861 (= lambda!388189 lambda!388123)))

(declare-fun bs!1833862 () Bool)

(assert (= bs!1833862 (and d!2155903 d!2155841)))

(assert (=> bs!1833862 (= lambda!388189 lambda!388184)))

(declare-fun bs!1833863 () Bool)

(assert (= bs!1833863 (and d!2155903 d!2155865)))

(assert (=> bs!1833863 (= (= (head!13759 s!2326) (head!13759 (tail!12822 s!2326))) (= lambda!388189 lambda!388187))))

(declare-fun bs!1833864 () Bool)

(assert (= bs!1833864 (and d!2155903 d!2155887)))

(assert (=> bs!1833864 (= lambda!388189 lambda!388188)))

(assert (=> d!2155903 true))

(assert (=> d!2155903 (= (derivationStepZipper!2611 (set.insert lt!2457466 (as set.empty (Set Context!12148))) (head!13759 s!2326)) (flatMap!2139 (set.insert lt!2457466 (as set.empty (Set Context!12148))) lambda!388189))))

(declare-fun bs!1833865 () Bool)

(assert (= bs!1833865 d!2155903))

(assert (=> bs!1833865 m!7595104))

(declare-fun m!7595976 () Bool)

(assert (=> bs!1833865 m!7595976))

(assert (=> b!6860758 d!2155903))

(assert (=> b!6860758 d!2155539))

(assert (=> b!6860758 d!2155517))

(declare-fun d!2155905 () Bool)

(assert (=> d!2155905 (= (isEmpty!38610 (exprs!6574 (h!72695 zl!343))) (is-Nil!66245 (exprs!6574 (h!72695 zl!343))))))

(assert (=> b!6860841 d!2155905))

(declare-fun d!2155907 () Bool)

(declare-fun res!2799771 () Bool)

(declare-fun e!4136889 () Bool)

(assert (=> d!2155907 (=> res!2799771 e!4136889)))

(assert (=> d!2155907 (= res!2799771 (is-Nil!66245 lt!2457506))))

(assert (=> d!2155907 (= (forall!15877 lt!2457506 lambda!388136) e!4136889)))

(declare-fun b!6861603 () Bool)

(declare-fun e!4136890 () Bool)

(assert (=> b!6861603 (= e!4136889 e!4136890)))

(declare-fun res!2799772 () Bool)

(assert (=> b!6861603 (=> (not res!2799772) (not e!4136890))))

(assert (=> b!6861603 (= res!2799772 (dynLambda!26503 lambda!388136 (h!72693 lt!2457506)))))

(declare-fun b!6861604 () Bool)

(assert (=> b!6861604 (= e!4136890 (forall!15877 (t!380112 lt!2457506) lambda!388136))))

(assert (= (and d!2155907 (not res!2799771)) b!6861603))

(assert (= (and b!6861603 res!2799772) b!6861604))

(declare-fun b_lambda!259307 () Bool)

(assert (=> (not b_lambda!259307) (not b!6861603)))

(declare-fun m!7595978 () Bool)

(assert (=> b!6861603 m!7595978))

(declare-fun m!7595980 () Bool)

(assert (=> b!6861604 m!7595980))

(assert (=> d!2155587 d!2155907))

(declare-fun d!2155909 () Bool)

(declare-fun choose!51141 ((Set Context!12148) Int) (Set Context!12148))

(assert (=> d!2155909 (= (flatMap!2139 z!1189 lambda!388123) (choose!51141 z!1189 lambda!388123))))

(declare-fun bs!1833866 () Bool)

(assert (= bs!1833866 d!2155909))

(declare-fun m!7595982 () Bool)

(assert (=> bs!1833866 m!7595982))

(assert (=> d!2155537 d!2155909))

(declare-fun bs!1833867 () Bool)

(declare-fun d!2155911 () Bool)

(assert (= bs!1833867 (and d!2155911 b!6860119)))

(declare-fun lambda!388190 () Int)

(assert (=> bs!1833867 (= lambda!388190 lambda!388030)))

(declare-fun bs!1833868 () Bool)

(assert (= bs!1833868 (and d!2155911 d!2155563)))

(assert (=> bs!1833868 (= lambda!388190 lambda!388127)))

(declare-fun bs!1833869 () Bool)

(assert (= bs!1833869 (and d!2155911 d!2155445)))

(assert (=> bs!1833869 (not (= lambda!388190 lambda!388068))))

(declare-fun bs!1833870 () Bool)

(assert (= bs!1833870 (and d!2155911 d!2155437)))

(assert (=> bs!1833870 (not (= lambda!388190 lambda!388059))))

(declare-fun bs!1833871 () Bool)

(assert (= bs!1833871 (and d!2155911 d!2155793)))

(assert (=> bs!1833871 (= lambda!388190 lambda!388176)))

(assert (=> bs!1833869 (= lambda!388190 lambda!388067)))

(declare-fun bs!1833872 () Bool)

(assert (= bs!1833872 (and d!2155911 b!6860114)))

(assert (=> bs!1833872 (not (= lambda!388190 lambda!388028))))

(declare-fun bs!1833873 () Bool)

(assert (= bs!1833873 (and d!2155911 d!2155447)))

(assert (=> bs!1833873 (= lambda!388190 lambda!388071)))

(declare-fun bs!1833874 () Bool)

(assert (= bs!1833874 (and d!2155911 d!2155571)))

(assert (=> bs!1833874 (= lambda!388190 lambda!388130)))

(declare-fun bs!1833875 () Bool)

(assert (= bs!1833875 (and d!2155911 d!2155591)))

(assert (=> bs!1833875 (= lambda!388190 lambda!388137)))

(declare-fun bs!1833876 () Bool)

(assert (= bs!1833876 (and d!2155911 d!2155781)))

(assert (=> bs!1833876 (not (= lambda!388190 lambda!388173))))

(declare-fun bs!1833877 () Bool)

(assert (= bs!1833877 (and d!2155911 d!2155475)))

(assert (=> bs!1833877 (= lambda!388190 lambda!388084)))

(declare-fun bs!1833878 () Bool)

(assert (= bs!1833878 (and d!2155911 d!2155773)))

(assert (=> bs!1833878 (= lambda!388190 lambda!388172)))

(declare-fun bs!1833879 () Bool)

(assert (= bs!1833879 (and d!2155911 d!2155529)))

(assert (=> bs!1833879 (not (= lambda!388190 lambda!388117))))

(declare-fun bs!1833880 () Bool)

(assert (= bs!1833880 (and d!2155911 d!2155531)))

(assert (=> bs!1833880 (not (= lambda!388190 lambda!388120))))

(declare-fun bs!1833881 () Bool)

(assert (= bs!1833881 (and d!2155911 d!2155557)))

(assert (=> bs!1833881 (= lambda!388190 lambda!388124)))

(declare-fun bs!1833882 () Bool)

(assert (= bs!1833882 (and d!2155911 d!2155453)))

(assert (=> bs!1833882 (= lambda!388190 lambda!388074)))

(declare-fun bs!1833883 () Bool)

(assert (= bs!1833883 (and d!2155911 d!2155587)))

(assert (=> bs!1833883 (= lambda!388190 lambda!388136)))

(declare-fun bs!1833884 () Bool)

(assert (= bs!1833884 (and d!2155911 d!2155853)))

(assert (=> bs!1833884 (= lambda!388190 lambda!388186)))

(declare-fun bs!1833885 () Bool)

(assert (= bs!1833885 (and d!2155911 d!2155461)))

(assert (=> bs!1833885 (= lambda!388190 lambda!388081)))

(declare-fun bs!1833886 () Bool)

(assert (= bs!1833886 (and d!2155911 d!2155585)))

(assert (=> bs!1833886 (= lambda!388190 lambda!388135)))

(declare-fun b!6861605 () Bool)

(declare-fun e!4136894 () Bool)

(declare-fun lt!2457535 () Regex!16690)

(assert (=> b!6861605 (= e!4136894 (isConcat!1534 lt!2457535))))

(declare-fun b!6861606 () Bool)

(declare-fun e!4136891 () Bool)

(assert (=> b!6861606 (= e!4136891 (isEmpty!38610 (t!380112 (exprs!6574 (h!72695 (t!380114 zl!343))))))))

(declare-fun b!6861607 () Bool)

(declare-fun e!4136893 () Regex!16690)

(assert (=> b!6861607 (= e!4136893 (h!72693 (exprs!6574 (h!72695 (t!380114 zl!343)))))))

(declare-fun b!6861609 () Bool)

(assert (=> b!6861609 (= e!4136894 (= lt!2457535 (head!13763 (exprs!6574 (h!72695 (t!380114 zl!343))))))))

(declare-fun b!6861610 () Bool)

(declare-fun e!4136895 () Bool)

(assert (=> b!6861610 (= e!4136895 (isEmptyExpr!2011 lt!2457535))))

(declare-fun b!6861611 () Bool)

(declare-fun e!4136892 () Regex!16690)

(assert (=> b!6861611 (= e!4136892 (Concat!25535 (h!72693 (exprs!6574 (h!72695 (t!380114 zl!343)))) (generalisedConcat!2278 (t!380112 (exprs!6574 (h!72695 (t!380114 zl!343)))))))))

(declare-fun b!6861612 () Bool)

(assert (=> b!6861612 (= e!4136893 e!4136892)))

(declare-fun c!1277246 () Bool)

(assert (=> b!6861612 (= c!1277246 (is-Cons!66245 (exprs!6574 (h!72695 (t!380114 zl!343)))))))

(declare-fun e!4136896 () Bool)

(assert (=> d!2155911 e!4136896))

(declare-fun res!2799774 () Bool)

(assert (=> d!2155911 (=> (not res!2799774) (not e!4136896))))

(assert (=> d!2155911 (= res!2799774 (validRegex!8426 lt!2457535))))

(assert (=> d!2155911 (= lt!2457535 e!4136893)))

(declare-fun c!1277243 () Bool)

(assert (=> d!2155911 (= c!1277243 e!4136891)))

(declare-fun res!2799773 () Bool)

(assert (=> d!2155911 (=> (not res!2799773) (not e!4136891))))

(assert (=> d!2155911 (= res!2799773 (is-Cons!66245 (exprs!6574 (h!72695 (t!380114 zl!343)))))))

(assert (=> d!2155911 (forall!15877 (exprs!6574 (h!72695 (t!380114 zl!343))) lambda!388190)))

(assert (=> d!2155911 (= (generalisedConcat!2278 (exprs!6574 (h!72695 (t!380114 zl!343)))) lt!2457535)))

(declare-fun b!6861608 () Bool)

(assert (=> b!6861608 (= e!4136896 e!4136895)))

(declare-fun c!1277245 () Bool)

(assert (=> b!6861608 (= c!1277245 (isEmpty!38610 (exprs!6574 (h!72695 (t!380114 zl!343)))))))

(declare-fun b!6861613 () Bool)

(assert (=> b!6861613 (= e!4136892 EmptyExpr!16690)))

(declare-fun b!6861614 () Bool)

(assert (=> b!6861614 (= e!4136895 e!4136894)))

(declare-fun c!1277244 () Bool)

(assert (=> b!6861614 (= c!1277244 (isEmpty!38610 (tail!12824 (exprs!6574 (h!72695 (t!380114 zl!343))))))))

(assert (= (and d!2155911 res!2799773) b!6861606))

(assert (= (and d!2155911 c!1277243) b!6861607))

(assert (= (and d!2155911 (not c!1277243)) b!6861612))

(assert (= (and b!6861612 c!1277246) b!6861611))

(assert (= (and b!6861612 (not c!1277246)) b!6861613))

(assert (= (and d!2155911 res!2799774) b!6861608))

(assert (= (and b!6861608 c!1277245) b!6861610))

(assert (= (and b!6861608 (not c!1277245)) b!6861614))

(assert (= (and b!6861614 c!1277244) b!6861609))

(assert (= (and b!6861614 (not c!1277244)) b!6861605))

(declare-fun m!7595984 () Bool)

(assert (=> b!6861606 m!7595984))

(declare-fun m!7595986 () Bool)

(assert (=> b!6861611 m!7595986))

(declare-fun m!7595988 () Bool)

(assert (=> b!6861609 m!7595988))

(declare-fun m!7595990 () Bool)

(assert (=> b!6861610 m!7595990))

(declare-fun m!7595992 () Bool)

(assert (=> b!6861605 m!7595992))

(declare-fun m!7595994 () Bool)

(assert (=> b!6861614 m!7595994))

(assert (=> b!6861614 m!7595994))

(declare-fun m!7595996 () Bool)

(assert (=> b!6861614 m!7595996))

(declare-fun m!7595998 () Bool)

(assert (=> b!6861608 m!7595998))

(declare-fun m!7596000 () Bool)

(assert (=> d!2155911 m!7596000))

(declare-fun m!7596002 () Bool)

(assert (=> d!2155911 m!7596002))

(assert (=> b!6860848 d!2155911))

(declare-fun bs!1833887 () Bool)

(declare-fun d!2155913 () Bool)

(assert (= bs!1833887 (and d!2155913 b!6860119)))

(declare-fun lambda!388191 () Int)

(assert (=> bs!1833887 (= lambda!388191 lambda!388030)))

(declare-fun bs!1833888 () Bool)

(assert (= bs!1833888 (and d!2155913 d!2155563)))

(assert (=> bs!1833888 (= lambda!388191 lambda!388127)))

(declare-fun bs!1833889 () Bool)

(assert (= bs!1833889 (and d!2155913 d!2155445)))

(assert (=> bs!1833889 (not (= lambda!388191 lambda!388068))))

(declare-fun bs!1833890 () Bool)

(assert (= bs!1833890 (and d!2155913 d!2155437)))

(assert (=> bs!1833890 (not (= lambda!388191 lambda!388059))))

(declare-fun bs!1833891 () Bool)

(assert (= bs!1833891 (and d!2155913 d!2155793)))

(assert (=> bs!1833891 (= lambda!388191 lambda!388176)))

(assert (=> bs!1833889 (= lambda!388191 lambda!388067)))

(declare-fun bs!1833892 () Bool)

(assert (= bs!1833892 (and d!2155913 b!6860114)))

(assert (=> bs!1833892 (not (= lambda!388191 lambda!388028))))

(declare-fun bs!1833893 () Bool)

(assert (= bs!1833893 (and d!2155913 d!2155447)))

(assert (=> bs!1833893 (= lambda!388191 lambda!388071)))

(declare-fun bs!1833894 () Bool)

(assert (= bs!1833894 (and d!2155913 d!2155571)))

(assert (=> bs!1833894 (= lambda!388191 lambda!388130)))

(declare-fun bs!1833895 () Bool)

(assert (= bs!1833895 (and d!2155913 d!2155591)))

(assert (=> bs!1833895 (= lambda!388191 lambda!388137)))

(declare-fun bs!1833896 () Bool)

(assert (= bs!1833896 (and d!2155913 d!2155781)))

(assert (=> bs!1833896 (not (= lambda!388191 lambda!388173))))

(declare-fun bs!1833897 () Bool)

(assert (= bs!1833897 (and d!2155913 d!2155911)))

(assert (=> bs!1833897 (= lambda!388191 lambda!388190)))

(declare-fun bs!1833898 () Bool)

(assert (= bs!1833898 (and d!2155913 d!2155475)))

(assert (=> bs!1833898 (= lambda!388191 lambda!388084)))

(declare-fun bs!1833899 () Bool)

(assert (= bs!1833899 (and d!2155913 d!2155773)))

(assert (=> bs!1833899 (= lambda!388191 lambda!388172)))

(declare-fun bs!1833900 () Bool)

(assert (= bs!1833900 (and d!2155913 d!2155529)))

(assert (=> bs!1833900 (not (= lambda!388191 lambda!388117))))

(declare-fun bs!1833901 () Bool)

(assert (= bs!1833901 (and d!2155913 d!2155531)))

(assert (=> bs!1833901 (not (= lambda!388191 lambda!388120))))

(declare-fun bs!1833902 () Bool)

(assert (= bs!1833902 (and d!2155913 d!2155557)))

(assert (=> bs!1833902 (= lambda!388191 lambda!388124)))

(declare-fun bs!1833903 () Bool)

(assert (= bs!1833903 (and d!2155913 d!2155453)))

(assert (=> bs!1833903 (= lambda!388191 lambda!388074)))

(declare-fun bs!1833904 () Bool)

(assert (= bs!1833904 (and d!2155913 d!2155587)))

(assert (=> bs!1833904 (= lambda!388191 lambda!388136)))

(declare-fun bs!1833905 () Bool)

(assert (= bs!1833905 (and d!2155913 d!2155853)))

(assert (=> bs!1833905 (= lambda!388191 lambda!388186)))

(declare-fun bs!1833906 () Bool)

(assert (= bs!1833906 (and d!2155913 d!2155461)))

(assert (=> bs!1833906 (= lambda!388191 lambda!388081)))

(declare-fun bs!1833907 () Bool)

(assert (= bs!1833907 (and d!2155913 d!2155585)))

(assert (=> bs!1833907 (= lambda!388191 lambda!388135)))

(declare-fun lt!2457536 () List!66369)

(assert (=> d!2155913 (forall!15877 lt!2457536 lambda!388191)))

(declare-fun e!4136897 () List!66369)

(assert (=> d!2155913 (= lt!2457536 e!4136897)))

(declare-fun c!1277247 () Bool)

(assert (=> d!2155913 (= c!1277247 (is-Cons!66247 (t!380114 (t!380114 zl!343))))))

(assert (=> d!2155913 (= (unfocusZipperList!2107 (t!380114 (t!380114 zl!343))) lt!2457536)))

(declare-fun b!6861615 () Bool)

(assert (=> b!6861615 (= e!4136897 (Cons!66245 (generalisedConcat!2278 (exprs!6574 (h!72695 (t!380114 (t!380114 zl!343))))) (unfocusZipperList!2107 (t!380114 (t!380114 (t!380114 zl!343))))))))

(declare-fun b!6861616 () Bool)

(assert (=> b!6861616 (= e!4136897 Nil!66245)))

(assert (= (and d!2155913 c!1277247) b!6861615))

(assert (= (and d!2155913 (not c!1277247)) b!6861616))

(declare-fun m!7596004 () Bool)

(assert (=> d!2155913 m!7596004))

(declare-fun m!7596006 () Bool)

(assert (=> b!6861615 m!7596006))

(declare-fun m!7596008 () Bool)

(assert (=> b!6861615 m!7596008))

(assert (=> b!6860848 d!2155913))

(declare-fun bs!1833908 () Bool)

(declare-fun d!2155915 () Bool)

(assert (= bs!1833908 (and d!2155915 b!6860119)))

(declare-fun lambda!388192 () Int)

(assert (=> bs!1833908 (= lambda!388192 lambda!388030)))

(declare-fun bs!1833909 () Bool)

(assert (= bs!1833909 (and d!2155915 d!2155563)))

(assert (=> bs!1833909 (= lambda!388192 lambda!388127)))

(declare-fun bs!1833910 () Bool)

(assert (= bs!1833910 (and d!2155915 d!2155445)))

(assert (=> bs!1833910 (not (= lambda!388192 lambda!388068))))

(declare-fun bs!1833911 () Bool)

(assert (= bs!1833911 (and d!2155915 d!2155437)))

(assert (=> bs!1833911 (not (= lambda!388192 lambda!388059))))

(declare-fun bs!1833912 () Bool)

(assert (= bs!1833912 (and d!2155915 d!2155793)))

(assert (=> bs!1833912 (= lambda!388192 lambda!388176)))

(assert (=> bs!1833910 (= lambda!388192 lambda!388067)))

(declare-fun bs!1833913 () Bool)

(assert (= bs!1833913 (and d!2155915 b!6860114)))

(assert (=> bs!1833913 (not (= lambda!388192 lambda!388028))))

(declare-fun bs!1833914 () Bool)

(assert (= bs!1833914 (and d!2155915 d!2155571)))

(assert (=> bs!1833914 (= lambda!388192 lambda!388130)))

(declare-fun bs!1833915 () Bool)

(assert (= bs!1833915 (and d!2155915 d!2155591)))

(assert (=> bs!1833915 (= lambda!388192 lambda!388137)))

(declare-fun bs!1833916 () Bool)

(assert (= bs!1833916 (and d!2155915 d!2155781)))

(assert (=> bs!1833916 (not (= lambda!388192 lambda!388173))))

(declare-fun bs!1833917 () Bool)

(assert (= bs!1833917 (and d!2155915 d!2155911)))

(assert (=> bs!1833917 (= lambda!388192 lambda!388190)))

(declare-fun bs!1833918 () Bool)

(assert (= bs!1833918 (and d!2155915 d!2155475)))

(assert (=> bs!1833918 (= lambda!388192 lambda!388084)))

(declare-fun bs!1833919 () Bool)

(assert (= bs!1833919 (and d!2155915 d!2155773)))

(assert (=> bs!1833919 (= lambda!388192 lambda!388172)))

(declare-fun bs!1833920 () Bool)

(assert (= bs!1833920 (and d!2155915 d!2155529)))

(assert (=> bs!1833920 (not (= lambda!388192 lambda!388117))))

(declare-fun bs!1833921 () Bool)

(assert (= bs!1833921 (and d!2155915 d!2155531)))

(assert (=> bs!1833921 (not (= lambda!388192 lambda!388120))))

(declare-fun bs!1833922 () Bool)

(assert (= bs!1833922 (and d!2155915 d!2155557)))

(assert (=> bs!1833922 (= lambda!388192 lambda!388124)))

(declare-fun bs!1833923 () Bool)

(assert (= bs!1833923 (and d!2155915 d!2155453)))

(assert (=> bs!1833923 (= lambda!388192 lambda!388074)))

(declare-fun bs!1833924 () Bool)

(assert (= bs!1833924 (and d!2155915 d!2155587)))

(assert (=> bs!1833924 (= lambda!388192 lambda!388136)))

(declare-fun bs!1833925 () Bool)

(assert (= bs!1833925 (and d!2155915 d!2155853)))

(assert (=> bs!1833925 (= lambda!388192 lambda!388186)))

(declare-fun bs!1833926 () Bool)

(assert (= bs!1833926 (and d!2155915 d!2155461)))

(assert (=> bs!1833926 (= lambda!388192 lambda!388081)))

(declare-fun bs!1833927 () Bool)

(assert (= bs!1833927 (and d!2155915 d!2155585)))

(assert (=> bs!1833927 (= lambda!388192 lambda!388135)))

(declare-fun bs!1833928 () Bool)

(assert (= bs!1833928 (and d!2155915 d!2155913)))

(assert (=> bs!1833928 (= lambda!388192 lambda!388191)))

(declare-fun bs!1833929 () Bool)

(assert (= bs!1833929 (and d!2155915 d!2155447)))

(assert (=> bs!1833929 (= lambda!388192 lambda!388071)))

(assert (=> d!2155915 (= (inv!84973 (h!72695 res!2799513)) (forall!15877 (exprs!6574 (h!72695 res!2799513)) lambda!388192))))

(declare-fun bs!1833930 () Bool)

(assert (= bs!1833930 d!2155915))

(declare-fun m!7596010 () Bool)

(assert (=> bs!1833930 m!7596010))

(assert (=> b!6860771 d!2155915))

(declare-fun bs!1833931 () Bool)

(declare-fun b!6861623 () Bool)

(assert (= bs!1833931 (and b!6861623 b!6861364)))

(declare-fun lambda!388193 () Int)

(assert (=> bs!1833931 (not (= lambda!388193 lambda!388171))))

(declare-fun bs!1833932 () Bool)

(assert (= bs!1833932 (and b!6861623 b!6860886)))

(assert (=> bs!1833932 (= (and (= (reg!17019 (regTwo!33893 (regOne!33893 r!7292))) (reg!17019 (regOne!33893 r!7292))) (= (regTwo!33893 (regOne!33893 r!7292)) (regOne!33893 r!7292))) (= lambda!388193 lambda!388138))))

(declare-fun bs!1833933 () Bool)

(assert (= bs!1833933 (and b!6861623 b!6861497)))

(assert (=> bs!1833933 (= (and (= (reg!17019 (regTwo!33893 (regOne!33893 r!7292))) (reg!17019 (regTwo!33893 (regTwo!33893 r!7292)))) (= (regTwo!33893 (regOne!33893 r!7292)) (regTwo!33893 (regTwo!33893 r!7292)))) (= lambda!388193 lambda!388182))))

(declare-fun bs!1833934 () Bool)

(assert (= bs!1833934 (and b!6861623 b!6860751)))

(assert (=> bs!1833934 (not (= lambda!388193 lambda!388132))))

(declare-fun bs!1833935 () Bool)

(assert (= bs!1833935 (and b!6861623 b!6861365)))

(assert (=> bs!1833935 (= (and (= (reg!17019 (regTwo!33893 (regOne!33893 r!7292))) (reg!17019 (regOne!33893 (regOne!33893 r!7292)))) (= (regTwo!33893 (regOne!33893 r!7292)) (regOne!33893 (regOne!33893 r!7292)))) (= lambda!388193 lambda!388170))))

(declare-fun bs!1833936 () Bool)

(assert (= bs!1833936 (and b!6861623 b!6860247)))

(assert (=> bs!1833936 (not (= lambda!388193 lambda!388053))))

(declare-fun bs!1833937 () Bool)

(assert (= bs!1833937 (and b!6861623 b!6860885)))

(assert (=> bs!1833937 (not (= lambda!388193 lambda!388139))))

(declare-fun bs!1833938 () Bool)

(assert (= bs!1833938 (and b!6861623 b!6861405)))

(assert (=> bs!1833938 (not (= lambda!388193 lambda!388175))))

(declare-fun bs!1833939 () Bool)

(assert (= bs!1833939 (and b!6861623 b!6860752)))

(assert (=> bs!1833939 (= (and (= (reg!17019 (regTwo!33893 (regOne!33893 r!7292))) (reg!17019 (regTwo!33893 r!7292))) (= (regTwo!33893 (regOne!33893 r!7292)) (regTwo!33893 r!7292))) (= lambda!388193 lambda!388131))))

(declare-fun bs!1833940 () Bool)

(assert (= bs!1833940 (and b!6861623 b!6861406)))

(assert (=> bs!1833940 (= (and (= (reg!17019 (regTwo!33893 (regOne!33893 r!7292))) (reg!17019 (regOne!33893 (regTwo!33893 r!7292)))) (= (regTwo!33893 (regOne!33893 r!7292)) (regOne!33893 (regTwo!33893 r!7292)))) (= lambda!388193 lambda!388174))))

(declare-fun bs!1833941 () Bool)

(assert (= bs!1833941 (and b!6861623 b!6860248)))

(assert (=> bs!1833941 (= (and (= (reg!17019 (regTwo!33893 (regOne!33893 r!7292))) (reg!17019 r!7292)) (= (regTwo!33893 (regOne!33893 r!7292)) r!7292)) (= lambda!388193 lambda!388052))))

(declare-fun bs!1833942 () Bool)

(assert (= bs!1833942 (and b!6861623 b!6861496)))

(assert (=> bs!1833942 (not (= lambda!388193 lambda!388183))))

(assert (=> b!6861623 true))

(assert (=> b!6861623 true))

(declare-fun bs!1833943 () Bool)

(declare-fun b!6861622 () Bool)

(assert (= bs!1833943 (and b!6861622 b!6861364)))

(declare-fun lambda!388194 () Int)

(assert (=> bs!1833943 (= (and (= (regOne!33892 (regTwo!33893 (regOne!33893 r!7292))) (regOne!33892 (regOne!33893 (regOne!33893 r!7292)))) (= (regTwo!33892 (regTwo!33893 (regOne!33893 r!7292))) (regTwo!33892 (regOne!33893 (regOne!33893 r!7292))))) (= lambda!388194 lambda!388171))))

(declare-fun bs!1833944 () Bool)

(assert (= bs!1833944 (and b!6861622 b!6860886)))

(assert (=> bs!1833944 (not (= lambda!388194 lambda!388138))))

(declare-fun bs!1833945 () Bool)

(assert (= bs!1833945 (and b!6861622 b!6861497)))

(assert (=> bs!1833945 (not (= lambda!388194 lambda!388182))))

(declare-fun bs!1833946 () Bool)

(assert (= bs!1833946 (and b!6861622 b!6860751)))

(assert (=> bs!1833946 (= (and (= (regOne!33892 (regTwo!33893 (regOne!33893 r!7292))) (regOne!33892 (regTwo!33893 r!7292))) (= (regTwo!33892 (regTwo!33893 (regOne!33893 r!7292))) (regTwo!33892 (regTwo!33893 r!7292)))) (= lambda!388194 lambda!388132))))

(declare-fun bs!1833947 () Bool)

(assert (= bs!1833947 (and b!6861622 b!6861365)))

(assert (=> bs!1833947 (not (= lambda!388194 lambda!388170))))

(declare-fun bs!1833948 () Bool)

(assert (= bs!1833948 (and b!6861622 b!6860247)))

(assert (=> bs!1833948 (= (and (= (regOne!33892 (regTwo!33893 (regOne!33893 r!7292))) (regOne!33892 r!7292)) (= (regTwo!33892 (regTwo!33893 (regOne!33893 r!7292))) (regTwo!33892 r!7292))) (= lambda!388194 lambda!388053))))

(declare-fun bs!1833949 () Bool)

(assert (= bs!1833949 (and b!6861622 b!6860885)))

(assert (=> bs!1833949 (= (and (= (regOne!33892 (regTwo!33893 (regOne!33893 r!7292))) (regOne!33892 (regOne!33893 r!7292))) (= (regTwo!33892 (regTwo!33893 (regOne!33893 r!7292))) (regTwo!33892 (regOne!33893 r!7292)))) (= lambda!388194 lambda!388139))))

(declare-fun bs!1833950 () Bool)

(assert (= bs!1833950 (and b!6861622 b!6860752)))

(assert (=> bs!1833950 (not (= lambda!388194 lambda!388131))))

(declare-fun bs!1833951 () Bool)

(assert (= bs!1833951 (and b!6861622 b!6861406)))

(assert (=> bs!1833951 (not (= lambda!388194 lambda!388174))))

(declare-fun bs!1833952 () Bool)

(assert (= bs!1833952 (and b!6861622 b!6860248)))

(assert (=> bs!1833952 (not (= lambda!388194 lambda!388052))))

(declare-fun bs!1833953 () Bool)

(assert (= bs!1833953 (and b!6861622 b!6861496)))

(assert (=> bs!1833953 (= (and (= (regOne!33892 (regTwo!33893 (regOne!33893 r!7292))) (regOne!33892 (regTwo!33893 (regTwo!33893 r!7292)))) (= (regTwo!33892 (regTwo!33893 (regOne!33893 r!7292))) (regTwo!33892 (regTwo!33893 (regTwo!33893 r!7292))))) (= lambda!388194 lambda!388183))))

(declare-fun bs!1833954 () Bool)

(assert (= bs!1833954 (and b!6861622 b!6861405)))

(assert (=> bs!1833954 (= (and (= (regOne!33892 (regTwo!33893 (regOne!33893 r!7292))) (regOne!33892 (regOne!33893 (regTwo!33893 r!7292)))) (= (regTwo!33892 (regTwo!33893 (regOne!33893 r!7292))) (regTwo!33892 (regOne!33893 (regTwo!33893 r!7292))))) (= lambda!388194 lambda!388175))))

(declare-fun bs!1833955 () Bool)

(assert (= bs!1833955 (and b!6861622 b!6861623)))

(assert (=> bs!1833955 (not (= lambda!388194 lambda!388193))))

(assert (=> b!6861622 true))

(assert (=> b!6861622 true))

(declare-fun bm!624976 () Bool)

(declare-fun call!624982 () Bool)

(assert (=> bm!624976 (= call!624982 (isEmpty!38608 s!2326))))

(declare-fun b!6861617 () Bool)

(declare-fun e!4136899 () Bool)

(declare-fun e!4136902 () Bool)

(assert (=> b!6861617 (= e!4136899 e!4136902)))

(declare-fun res!2799777 () Bool)

(assert (=> b!6861617 (= res!2799777 (not (is-EmptyLang!16690 (regTwo!33893 (regOne!33893 r!7292)))))))

(assert (=> b!6861617 (=> (not res!2799777) (not e!4136902))))

(declare-fun b!6861618 () Bool)

(declare-fun res!2799776 () Bool)

(declare-fun e!4136900 () Bool)

(assert (=> b!6861618 (=> res!2799776 e!4136900)))

(assert (=> b!6861618 (= res!2799776 call!624982)))

(declare-fun e!4136903 () Bool)

(assert (=> b!6861618 (= e!4136903 e!4136900)))

(declare-fun b!6861619 () Bool)

(assert (=> b!6861619 (= e!4136899 call!624982)))

(declare-fun b!6861620 () Bool)

(declare-fun e!4136898 () Bool)

(assert (=> b!6861620 (= e!4136898 (= s!2326 (Cons!66246 (c!1276936 (regTwo!33893 (regOne!33893 r!7292))) Nil!66246)))))

(declare-fun b!6861621 () Bool)

(declare-fun e!4136901 () Bool)

(assert (=> b!6861621 (= e!4136901 (matchRSpec!3791 (regTwo!33893 (regTwo!33893 (regOne!33893 r!7292))) s!2326))))

(declare-fun call!624981 () Bool)

(assert (=> b!6861622 (= e!4136903 call!624981)))

(declare-fun d!2155917 () Bool)

(declare-fun c!1277250 () Bool)

(assert (=> d!2155917 (= c!1277250 (is-EmptyExpr!16690 (regTwo!33893 (regOne!33893 r!7292))))))

(assert (=> d!2155917 (= (matchRSpec!3791 (regTwo!33893 (regOne!33893 r!7292)) s!2326) e!4136899)))

(assert (=> b!6861623 (= e!4136900 call!624981)))

(declare-fun b!6861624 () Bool)

(declare-fun e!4136904 () Bool)

(assert (=> b!6861624 (= e!4136904 e!4136901)))

(declare-fun res!2799775 () Bool)

(assert (=> b!6861624 (= res!2799775 (matchRSpec!3791 (regOne!33893 (regTwo!33893 (regOne!33893 r!7292))) s!2326))))

(assert (=> b!6861624 (=> res!2799775 e!4136901)))

(declare-fun c!1277249 () Bool)

(declare-fun bm!624977 () Bool)

(assert (=> bm!624977 (= call!624981 (Exists!3750 (ite c!1277249 lambda!388193 lambda!388194)))))

(declare-fun b!6861625 () Bool)

(assert (=> b!6861625 (= e!4136904 e!4136903)))

(assert (=> b!6861625 (= c!1277249 (is-Star!16690 (regTwo!33893 (regOne!33893 r!7292))))))

(declare-fun b!6861626 () Bool)

(declare-fun c!1277251 () Bool)

(assert (=> b!6861626 (= c!1277251 (is-Union!16690 (regTwo!33893 (regOne!33893 r!7292))))))

(assert (=> b!6861626 (= e!4136898 e!4136904)))

(declare-fun b!6861627 () Bool)

(declare-fun c!1277248 () Bool)

(assert (=> b!6861627 (= c!1277248 (is-ElementMatch!16690 (regTwo!33893 (regOne!33893 r!7292))))))

(assert (=> b!6861627 (= e!4136902 e!4136898)))

(assert (= (and d!2155917 c!1277250) b!6861619))

(assert (= (and d!2155917 (not c!1277250)) b!6861617))

(assert (= (and b!6861617 res!2799777) b!6861627))

(assert (= (and b!6861627 c!1277248) b!6861620))

(assert (= (and b!6861627 (not c!1277248)) b!6861626))

(assert (= (and b!6861626 c!1277251) b!6861624))

(assert (= (and b!6861626 (not c!1277251)) b!6861625))

(assert (= (and b!6861624 (not res!2799775)) b!6861621))

(assert (= (and b!6861625 c!1277249) b!6861618))

(assert (= (and b!6861625 (not c!1277249)) b!6861622))

(assert (= (and b!6861618 (not res!2799776)) b!6861623))

(assert (= (or b!6861623 b!6861622) bm!624977))

(assert (= (or b!6861619 b!6861618) bm!624976))

(assert (=> bm!624976 m!7594968))

(declare-fun m!7596012 () Bool)

(assert (=> b!6861621 m!7596012))

(declare-fun m!7596014 () Bool)

(assert (=> b!6861624 m!7596014))

(declare-fun m!7596016 () Bool)

(assert (=> bm!624977 m!7596016))

(assert (=> b!6860884 d!2155917))

(declare-fun b!6861628 () Bool)

(declare-fun res!2799784 () Bool)

(declare-fun e!4136910 () Bool)

(assert (=> b!6861628 (=> res!2799784 e!4136910)))

(assert (=> b!6861628 (= res!2799784 (not (isEmpty!38608 (tail!12822 (tail!12822 (tail!12822 s!2326))))))))

(declare-fun b!6861629 () Bool)

(declare-fun e!4136909 () Bool)

(assert (=> b!6861629 (= e!4136909 (nullable!6651 (derivativeStep!5333 (derivativeStep!5333 r!7292 (head!13759 s!2326)) (head!13759 (tail!12822 s!2326)))))))

(declare-fun b!6861630 () Bool)

(declare-fun res!2799785 () Bool)

(declare-fun e!4136906 () Bool)

(assert (=> b!6861630 (=> res!2799785 e!4136906)))

(declare-fun e!4136907 () Bool)

(assert (=> b!6861630 (= res!2799785 e!4136907)))

(declare-fun res!2799783 () Bool)

(assert (=> b!6861630 (=> (not res!2799783) (not e!4136907))))

(declare-fun lt!2457537 () Bool)

(assert (=> b!6861630 (= res!2799783 lt!2457537)))

(declare-fun b!6861631 () Bool)

(declare-fun res!2799780 () Bool)

(assert (=> b!6861631 (=> (not res!2799780) (not e!4136907))))

(assert (=> b!6861631 (= res!2799780 (isEmpty!38608 (tail!12822 (tail!12822 (tail!12822 s!2326)))))))

(declare-fun b!6861633 () Bool)

(declare-fun e!4136908 () Bool)

(declare-fun call!624983 () Bool)

(assert (=> b!6861633 (= e!4136908 (= lt!2457537 call!624983))))

(declare-fun b!6861634 () Bool)

(declare-fun res!2799781 () Bool)

(assert (=> b!6861634 (=> (not res!2799781) (not e!4136907))))

(assert (=> b!6861634 (= res!2799781 (not call!624983))))

(declare-fun b!6861635 () Bool)

(declare-fun e!4136905 () Bool)

(assert (=> b!6861635 (= e!4136906 e!4136905)))

(declare-fun res!2799782 () Bool)

(assert (=> b!6861635 (=> (not res!2799782) (not e!4136905))))

(assert (=> b!6861635 (= res!2799782 (not lt!2457537))))

(declare-fun b!6861636 () Bool)

(declare-fun e!4136911 () Bool)

(assert (=> b!6861636 (= e!4136908 e!4136911)))

(declare-fun c!1277254 () Bool)

(assert (=> b!6861636 (= c!1277254 (is-EmptyLang!16690 (derivativeStep!5333 (derivativeStep!5333 r!7292 (head!13759 s!2326)) (head!13759 (tail!12822 s!2326)))))))

(declare-fun b!6861637 () Bool)

(assert (=> b!6861637 (= e!4136907 (= (head!13759 (tail!12822 (tail!12822 s!2326))) (c!1276936 (derivativeStep!5333 (derivativeStep!5333 r!7292 (head!13759 s!2326)) (head!13759 (tail!12822 s!2326))))))))

(declare-fun b!6861638 () Bool)

(declare-fun res!2799779 () Bool)

(assert (=> b!6861638 (=> res!2799779 e!4136906)))

(assert (=> b!6861638 (= res!2799779 (not (is-ElementMatch!16690 (derivativeStep!5333 (derivativeStep!5333 r!7292 (head!13759 s!2326)) (head!13759 (tail!12822 s!2326))))))))

(assert (=> b!6861638 (= e!4136911 e!4136906)))

(declare-fun d!2155919 () Bool)

(assert (=> d!2155919 e!4136908))

(declare-fun c!1277252 () Bool)

(assert (=> d!2155919 (= c!1277252 (is-EmptyExpr!16690 (derivativeStep!5333 (derivativeStep!5333 r!7292 (head!13759 s!2326)) (head!13759 (tail!12822 s!2326)))))))

(assert (=> d!2155919 (= lt!2457537 e!4136909)))

(declare-fun c!1277253 () Bool)

(assert (=> d!2155919 (= c!1277253 (isEmpty!38608 (tail!12822 (tail!12822 s!2326))))))

(assert (=> d!2155919 (validRegex!8426 (derivativeStep!5333 (derivativeStep!5333 r!7292 (head!13759 s!2326)) (head!13759 (tail!12822 s!2326))))))

(assert (=> d!2155919 (= (matchR!8873 (derivativeStep!5333 (derivativeStep!5333 r!7292 (head!13759 s!2326)) (head!13759 (tail!12822 s!2326))) (tail!12822 (tail!12822 s!2326))) lt!2457537)))

(declare-fun b!6861632 () Bool)

(assert (=> b!6861632 (= e!4136905 e!4136910)))

(declare-fun res!2799778 () Bool)

(assert (=> b!6861632 (=> res!2799778 e!4136910)))

(assert (=> b!6861632 (= res!2799778 call!624983)))

(declare-fun b!6861639 () Bool)

(assert (=> b!6861639 (= e!4136909 (matchR!8873 (derivativeStep!5333 (derivativeStep!5333 (derivativeStep!5333 r!7292 (head!13759 s!2326)) (head!13759 (tail!12822 s!2326))) (head!13759 (tail!12822 (tail!12822 s!2326)))) (tail!12822 (tail!12822 (tail!12822 s!2326)))))))

(declare-fun bm!624978 () Bool)

(assert (=> bm!624978 (= call!624983 (isEmpty!38608 (tail!12822 (tail!12822 s!2326))))))

(declare-fun b!6861640 () Bool)

(assert (=> b!6861640 (= e!4136911 (not lt!2457537))))

(declare-fun b!6861641 () Bool)

(assert (=> b!6861641 (= e!4136910 (not (= (head!13759 (tail!12822 (tail!12822 s!2326))) (c!1276936 (derivativeStep!5333 (derivativeStep!5333 r!7292 (head!13759 s!2326)) (head!13759 (tail!12822 s!2326)))))))))

(assert (= (and d!2155919 c!1277253) b!6861629))

(assert (= (and d!2155919 (not c!1277253)) b!6861639))

(assert (= (and d!2155919 c!1277252) b!6861633))

(assert (= (and d!2155919 (not c!1277252)) b!6861636))

(assert (= (and b!6861636 c!1277254) b!6861640))

(assert (= (and b!6861636 (not c!1277254)) b!6861638))

(assert (= (and b!6861638 (not res!2799779)) b!6861630))

(assert (= (and b!6861630 res!2799783) b!6861634))

(assert (= (and b!6861634 res!2799781) b!6861631))

(assert (= (and b!6861631 res!2799780) b!6861637))

(assert (= (and b!6861630 (not res!2799785)) b!6861635))

(assert (= (and b!6861635 res!2799782) b!6861632))

(assert (= (and b!6861632 (not res!2799778)) b!6861628))

(assert (= (and b!6861628 (not res!2799784)) b!6861641))

(assert (= (or b!6861633 b!6861632 b!6861634) bm!624978))

(assert (=> b!6861637 m!7595216))

(assert (=> b!6861637 m!7595904))

(assert (=> b!6861631 m!7595216))

(assert (=> b!6861631 m!7595908))

(assert (=> b!6861631 m!7595908))

(declare-fun m!7596018 () Bool)

(assert (=> b!6861631 m!7596018))

(assert (=> b!6861629 m!7595322))

(declare-fun m!7596020 () Bool)

(assert (=> b!6861629 m!7596020))

(assert (=> b!6861641 m!7595216))

(assert (=> b!6861641 m!7595904))

(assert (=> b!6861639 m!7595216))

(assert (=> b!6861639 m!7595904))

(assert (=> b!6861639 m!7595322))

(assert (=> b!6861639 m!7595904))

(declare-fun m!7596022 () Bool)

(assert (=> b!6861639 m!7596022))

(assert (=> b!6861639 m!7595216))

(assert (=> b!6861639 m!7595908))

(assert (=> b!6861639 m!7596022))

(assert (=> b!6861639 m!7595908))

(declare-fun m!7596024 () Bool)

(assert (=> b!6861639 m!7596024))

(assert (=> d!2155919 m!7595216))

(assert (=> d!2155919 m!7595318))

(assert (=> d!2155919 m!7595322))

(declare-fun m!7596026 () Bool)

(assert (=> d!2155919 m!7596026))

(assert (=> b!6861628 m!7595216))

(assert (=> b!6861628 m!7595908))

(assert (=> b!6861628 m!7595908))

(assert (=> b!6861628 m!7596018))

(assert (=> bm!624978 m!7595216))

(assert (=> bm!624978 m!7595318))

(assert (=> b!6860785 d!2155919))

(declare-fun b!6861642 () Bool)

(declare-fun e!4136915 () Regex!16690)

(assert (=> b!6861642 (= e!4136915 EmptyLang!16690)))

(declare-fun call!624987 () Regex!16690)

(declare-fun e!4136916 () Regex!16690)

(declare-fun call!624985 () Regex!16690)

(declare-fun b!6861643 () Bool)

(assert (=> b!6861643 (= e!4136916 (Union!16690 (Concat!25535 call!624985 (regTwo!33892 (derivativeStep!5333 r!7292 (head!13759 s!2326)))) call!624987))))

(declare-fun bm!624979 () Bool)

(declare-fun call!624984 () Regex!16690)

(assert (=> bm!624979 (= call!624987 call!624984)))

(declare-fun b!6861644 () Bool)

(assert (=> b!6861644 (= e!4136916 (Union!16690 (Concat!25535 call!624987 (regTwo!33892 (derivativeStep!5333 r!7292 (head!13759 s!2326)))) EmptyLang!16690))))

(declare-fun d!2155921 () Bool)

(declare-fun lt!2457538 () Regex!16690)

(assert (=> d!2155921 (validRegex!8426 lt!2457538)))

(assert (=> d!2155921 (= lt!2457538 e!4136915)))

(declare-fun c!1277256 () Bool)

(assert (=> d!2155921 (= c!1277256 (or (is-EmptyExpr!16690 (derivativeStep!5333 r!7292 (head!13759 s!2326))) (is-EmptyLang!16690 (derivativeStep!5333 r!7292 (head!13759 s!2326)))))))

(assert (=> d!2155921 (validRegex!8426 (derivativeStep!5333 r!7292 (head!13759 s!2326)))))

(assert (=> d!2155921 (= (derivativeStep!5333 (derivativeStep!5333 r!7292 (head!13759 s!2326)) (head!13759 (tail!12822 s!2326))) lt!2457538)))

(declare-fun e!4136914 () Regex!16690)

(declare-fun b!6861645 () Bool)

(assert (=> b!6861645 (= e!4136914 (Concat!25535 call!624984 (derivativeStep!5333 r!7292 (head!13759 s!2326))))))

(declare-fun b!6861646 () Bool)

(declare-fun e!4136912 () Regex!16690)

(declare-fun call!624986 () Regex!16690)

(assert (=> b!6861646 (= e!4136912 (Union!16690 call!624985 call!624986))))

(declare-fun bm!624980 () Bool)

(assert (=> bm!624980 (= call!624984 call!624986)))

(declare-fun c!1277255 () Bool)

(declare-fun bm!624981 () Bool)

(assert (=> bm!624981 (= call!624985 (derivativeStep!5333 (ite c!1277255 (regOne!33893 (derivativeStep!5333 r!7292 (head!13759 s!2326))) (regOne!33892 (derivativeStep!5333 r!7292 (head!13759 s!2326)))) (head!13759 (tail!12822 s!2326))))))

(declare-fun b!6861647 () Bool)

(assert (=> b!6861647 (= e!4136912 e!4136914)))

(declare-fun c!1277258 () Bool)

(assert (=> b!6861647 (= c!1277258 (is-Star!16690 (derivativeStep!5333 r!7292 (head!13759 s!2326))))))

(declare-fun b!6861648 () Bool)

(assert (=> b!6861648 (= c!1277255 (is-Union!16690 (derivativeStep!5333 r!7292 (head!13759 s!2326))))))

(declare-fun e!4136913 () Regex!16690)

(assert (=> b!6861648 (= e!4136913 e!4136912)))

(declare-fun b!6861649 () Bool)

(assert (=> b!6861649 (= e!4136915 e!4136913)))

(declare-fun c!1277259 () Bool)

(assert (=> b!6861649 (= c!1277259 (is-ElementMatch!16690 (derivativeStep!5333 r!7292 (head!13759 s!2326))))))

(declare-fun b!6861650 () Bool)

(assert (=> b!6861650 (= e!4136913 (ite (= (head!13759 (tail!12822 s!2326)) (c!1276936 (derivativeStep!5333 r!7292 (head!13759 s!2326)))) EmptyExpr!16690 EmptyLang!16690))))

(declare-fun c!1277257 () Bool)

(declare-fun bm!624982 () Bool)

(assert (=> bm!624982 (= call!624986 (derivativeStep!5333 (ite c!1277255 (regTwo!33893 (derivativeStep!5333 r!7292 (head!13759 s!2326))) (ite c!1277258 (reg!17019 (derivativeStep!5333 r!7292 (head!13759 s!2326))) (ite c!1277257 (regTwo!33892 (derivativeStep!5333 r!7292 (head!13759 s!2326))) (regOne!33892 (derivativeStep!5333 r!7292 (head!13759 s!2326)))))) (head!13759 (tail!12822 s!2326))))))

(declare-fun b!6861651 () Bool)

(assert (=> b!6861651 (= c!1277257 (nullable!6651 (regOne!33892 (derivativeStep!5333 r!7292 (head!13759 s!2326)))))))

(assert (=> b!6861651 (= e!4136914 e!4136916)))

(assert (= (and d!2155921 c!1277256) b!6861642))

(assert (= (and d!2155921 (not c!1277256)) b!6861649))

(assert (= (and b!6861649 c!1277259) b!6861650))

(assert (= (and b!6861649 (not c!1277259)) b!6861648))

(assert (= (and b!6861648 c!1277255) b!6861646))

(assert (= (and b!6861648 (not c!1277255)) b!6861647))

(assert (= (and b!6861647 c!1277258) b!6861645))

(assert (= (and b!6861647 (not c!1277258)) b!6861651))

(assert (= (and b!6861651 c!1277257) b!6861643))

(assert (= (and b!6861651 (not c!1277257)) b!6861644))

(assert (= (or b!6861643 b!6861644) bm!624979))

(assert (= (or b!6861645 bm!624979) bm!624980))

(assert (= (or b!6861646 bm!624980) bm!624982))

(assert (= (or b!6861646 b!6861643) bm!624981))

(declare-fun m!7596028 () Bool)

(assert (=> d!2155921 m!7596028))

(assert (=> d!2155921 m!7594986))

(assert (=> d!2155921 m!7595326))

(assert (=> bm!624981 m!7595212))

(declare-fun m!7596030 () Bool)

(assert (=> bm!624981 m!7596030))

(assert (=> bm!624982 m!7595212))

(declare-fun m!7596032 () Bool)

(assert (=> bm!624982 m!7596032))

(declare-fun m!7596034 () Bool)

(assert (=> b!6861651 m!7596034))

(assert (=> b!6860785 d!2155921))

(assert (=> b!6860785 d!2155753))

(assert (=> b!6860785 d!2155867))

(declare-fun b!6861652 () Bool)

(declare-fun e!4136921 () Bool)

(declare-fun e!4136918 () Bool)

(assert (=> b!6861652 (= e!4136921 e!4136918)))

(declare-fun res!2799786 () Bool)

(declare-fun call!624988 () Bool)

(assert (=> b!6861652 (= res!2799786 call!624988)))

(assert (=> b!6861652 (=> (not res!2799786) (not e!4136918))))

(declare-fun bm!624983 () Bool)

(declare-fun c!1277260 () Bool)

(assert (=> bm!624983 (= call!624988 (nullable!6651 (ite c!1277260 (regOne!33893 r!7292) (regOne!33892 r!7292))))))

(declare-fun b!6861653 () Bool)

(declare-fun e!4136917 () Bool)

(declare-fun e!4136919 () Bool)

(assert (=> b!6861653 (= e!4136917 e!4136919)))

(declare-fun res!2799789 () Bool)

(assert (=> b!6861653 (=> (not res!2799789) (not e!4136919))))

(assert (=> b!6861653 (= res!2799789 (and (not (is-EmptyLang!16690 r!7292)) (not (is-ElementMatch!16690 r!7292))))))

(declare-fun b!6861655 () Bool)

(declare-fun e!4136922 () Bool)

(assert (=> b!6861655 (= e!4136922 e!4136921)))

(assert (=> b!6861655 (= c!1277260 (is-Union!16690 r!7292))))

(declare-fun b!6861656 () Bool)

(declare-fun call!624989 () Bool)

(assert (=> b!6861656 (= e!4136918 call!624989)))

(declare-fun b!6861657 () Bool)

(declare-fun e!4136920 () Bool)

(assert (=> b!6861657 (= e!4136921 e!4136920)))

(declare-fun res!2799788 () Bool)

(assert (=> b!6861657 (= res!2799788 call!624988)))

(assert (=> b!6861657 (=> res!2799788 e!4136920)))

(declare-fun b!6861658 () Bool)

(assert (=> b!6861658 (= e!4136919 e!4136922)))

(declare-fun res!2799787 () Bool)

(assert (=> b!6861658 (=> res!2799787 e!4136922)))

(assert (=> b!6861658 (= res!2799787 (is-Star!16690 r!7292))))

(declare-fun bm!624984 () Bool)

(assert (=> bm!624984 (= call!624989 (nullable!6651 (ite c!1277260 (regTwo!33893 r!7292) (regTwo!33892 r!7292))))))

(declare-fun b!6861654 () Bool)

(assert (=> b!6861654 (= e!4136920 call!624989)))

(declare-fun d!2155923 () Bool)

(declare-fun res!2799790 () Bool)

(assert (=> d!2155923 (=> res!2799790 e!4136917)))

(assert (=> d!2155923 (= res!2799790 (is-EmptyExpr!16690 r!7292))))

(assert (=> d!2155923 (= (nullableFct!2527 r!7292) e!4136917)))

(assert (= (and d!2155923 (not res!2799790)) b!6861653))

(assert (= (and b!6861653 res!2799789) b!6861658))

(assert (= (and b!6861658 (not res!2799787)) b!6861655))

(assert (= (and b!6861655 c!1277260) b!6861657))

(assert (= (and b!6861655 (not c!1277260)) b!6861652))

(assert (= (and b!6861657 (not res!2799788)) b!6861654))

(assert (= (and b!6861652 res!2799786) b!6861656))

(assert (= (or b!6861654 b!6861656) bm!624984))

(assert (= (or b!6861657 b!6861652) bm!624983))

(declare-fun m!7596036 () Bool)

(assert (=> bm!624983 m!7596036))

(declare-fun m!7596038 () Bool)

(assert (=> bm!624984 m!7596038))

(assert (=> d!2155551 d!2155923))

(declare-fun d!2155925 () Bool)

(assert (=> d!2155925 (= (isEmpty!38610 (tail!12824 (exprs!6574 (h!72695 zl!343)))) (is-Nil!66245 (tail!12824 (exprs!6574 (h!72695 zl!343)))))))

(assert (=> b!6860847 d!2155925))

(declare-fun d!2155927 () Bool)

(assert (=> d!2155927 (= (tail!12824 (exprs!6574 (h!72695 zl!343))) (t!380112 (exprs!6574 (h!72695 zl!343))))))

(assert (=> b!6860847 d!2155927))

(declare-fun d!2155929 () Bool)

(declare-fun c!1277261 () Bool)

(assert (=> d!2155929 (= c!1277261 (is-Nil!66247 res!2799513))))

(declare-fun e!4136923 () (Set Context!12148))

(assert (=> d!2155929 (= (content!13003 res!2799513) e!4136923)))

(declare-fun b!6861659 () Bool)

(assert (=> b!6861659 (= e!4136923 (as set.empty (Set Context!12148)))))

(declare-fun b!6861660 () Bool)

(assert (=> b!6861660 (= e!4136923 (set.union (set.insert (h!72695 res!2799513) (as set.empty (Set Context!12148))) (content!13003 (t!380114 res!2799513))))))

(assert (= (and d!2155929 c!1277261) b!6861659))

(assert (= (and d!2155929 (not c!1277261)) b!6861660))

(declare-fun m!7596040 () Bool)

(assert (=> b!6861660 m!7596040))

(declare-fun m!7596042 () Bool)

(assert (=> b!6861660 m!7596042))

(assert (=> b!6860773 d!2155929))

(assert (=> d!2155543 d!2155527))

(declare-fun d!2155931 () Bool)

(assert (=> d!2155931 (= (nullable!6651 (reg!17019 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292))))) (nullableFct!2527 (reg!17019 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292))))))))

(declare-fun bs!1833956 () Bool)

(assert (= bs!1833956 d!2155931))

(declare-fun m!7596044 () Bool)

(assert (=> bs!1833956 m!7596044))

(assert (=> b!6860682 d!2155931))

(declare-fun d!2155933 () Bool)

(declare-fun res!2799791 () Bool)

(declare-fun e!4136926 () Bool)

(assert (=> d!2155933 (=> res!2799791 e!4136926)))

(assert (=> d!2155933 (= res!2799791 (is-ElementMatch!16690 (ite c!1277098 (reg!17019 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (ite c!1277099 (regOne!33893 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (regOne!33892 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292)))))))))

(assert (=> d!2155933 (= (validRegex!8426 (ite c!1277098 (reg!17019 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (ite c!1277099 (regOne!33893 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (regOne!33892 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292)))))) e!4136926)))

(declare-fun b!6861661 () Bool)

(declare-fun e!4136925 () Bool)

(declare-fun e!4136929 () Bool)

(assert (=> b!6861661 (= e!4136925 e!4136929)))

(declare-fun c!1277263 () Bool)

(assert (=> b!6861661 (= c!1277263 (is-Union!16690 (ite c!1277098 (reg!17019 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (ite c!1277099 (regOne!33893 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (regOne!33892 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292)))))))))

(declare-fun b!6861662 () Bool)

(declare-fun e!4136927 () Bool)

(declare-fun e!4136930 () Bool)

(assert (=> b!6861662 (= e!4136927 e!4136930)))

(declare-fun res!2799793 () Bool)

(assert (=> b!6861662 (=> (not res!2799793) (not e!4136930))))

(declare-fun call!624990 () Bool)

(assert (=> b!6861662 (= res!2799793 call!624990)))

(declare-fun b!6861663 () Bool)

(declare-fun e!4136928 () Bool)

(assert (=> b!6861663 (= e!4136925 e!4136928)))

(declare-fun res!2799792 () Bool)

(assert (=> b!6861663 (= res!2799792 (not (nullable!6651 (reg!17019 (ite c!1277098 (reg!17019 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (ite c!1277099 (regOne!33893 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (regOne!33892 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292)))))))))))

(assert (=> b!6861663 (=> (not res!2799792) (not e!4136928))))

(declare-fun b!6861664 () Bool)

(assert (=> b!6861664 (= e!4136926 e!4136925)))

(declare-fun c!1277262 () Bool)

(assert (=> b!6861664 (= c!1277262 (is-Star!16690 (ite c!1277098 (reg!17019 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (ite c!1277099 (regOne!33893 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (regOne!33892 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292)))))))))

(declare-fun b!6861665 () Bool)

(declare-fun res!2799795 () Bool)

(assert (=> b!6861665 (=> res!2799795 e!4136927)))

(assert (=> b!6861665 (= res!2799795 (not (is-Concat!25535 (ite c!1277098 (reg!17019 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (ite c!1277099 (regOne!33893 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (regOne!33892 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))))))))))

(assert (=> b!6861665 (= e!4136929 e!4136927)))

(declare-fun bm!624985 () Bool)

(declare-fun call!624991 () Bool)

(assert (=> bm!624985 (= call!624991 (validRegex!8426 (ite c!1277263 (regTwo!33893 (ite c!1277098 (reg!17019 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (ite c!1277099 (regOne!33893 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (regOne!33892 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292)))))) (regTwo!33892 (ite c!1277098 (reg!17019 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (ite c!1277099 (regOne!33893 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (regOne!33892 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292)))))))))))

(declare-fun b!6861666 () Bool)

(declare-fun call!624992 () Bool)

(assert (=> b!6861666 (= e!4136928 call!624992)))

(declare-fun bm!624986 () Bool)

(assert (=> bm!624986 (= call!624990 call!624992)))

(declare-fun b!6861667 () Bool)

(declare-fun e!4136924 () Bool)

(assert (=> b!6861667 (= e!4136924 call!624991)))

(declare-fun b!6861668 () Bool)

(assert (=> b!6861668 (= e!4136930 call!624991)))

(declare-fun bm!624987 () Bool)

(assert (=> bm!624987 (= call!624992 (validRegex!8426 (ite c!1277262 (reg!17019 (ite c!1277098 (reg!17019 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (ite c!1277099 (regOne!33893 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (regOne!33892 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292)))))) (ite c!1277263 (regOne!33893 (ite c!1277098 (reg!17019 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (ite c!1277099 (regOne!33893 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (regOne!33892 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292)))))) (regOne!33892 (ite c!1277098 (reg!17019 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (ite c!1277099 (regOne!33893 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (regOne!33892 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))))))))))))

(declare-fun b!6861669 () Bool)

(declare-fun res!2799794 () Bool)

(assert (=> b!6861669 (=> (not res!2799794) (not e!4136924))))

(assert (=> b!6861669 (= res!2799794 call!624990)))

(assert (=> b!6861669 (= e!4136929 e!4136924)))

(assert (= (and d!2155933 (not res!2799791)) b!6861664))

(assert (= (and b!6861664 c!1277262) b!6861663))

(assert (= (and b!6861664 (not c!1277262)) b!6861661))

(assert (= (and b!6861663 res!2799792) b!6861666))

(assert (= (and b!6861661 c!1277263) b!6861669))

(assert (= (and b!6861661 (not c!1277263)) b!6861665))

(assert (= (and b!6861669 res!2799794) b!6861667))

(assert (= (and b!6861665 (not res!2799795)) b!6861662))

(assert (= (and b!6861662 res!2799793) b!6861668))

(assert (= (or b!6861667 b!6861668) bm!624985))

(assert (= (or b!6861669 b!6861662) bm!624986))

(assert (= (or b!6861666 bm!624986) bm!624987))

(declare-fun m!7596046 () Bool)

(assert (=> b!6861663 m!7596046))

(declare-fun m!7596048 () Bool)

(assert (=> bm!624985 m!7596048))

(declare-fun m!7596050 () Bool)

(assert (=> bm!624987 m!7596050))

(assert (=> bm!624894 d!2155933))

(declare-fun d!2155935 () Bool)

(assert (=> d!2155935 (= (nullable!6651 (reg!17019 (h!72693 (exprs!6574 lt!2457391)))) (nullableFct!2527 (reg!17019 (h!72693 (exprs!6574 lt!2457391)))))))

(declare-fun bs!1833957 () Bool)

(assert (= bs!1833957 d!2155935))

(declare-fun m!7596052 () Bool)

(assert (=> bs!1833957 m!7596052))

(assert (=> b!6860871 d!2155935))

(assert (=> b!6860774 d!2155883))

(assert (=> b!6860774 d!2155867))

(assert (=> d!2155581 d!2155515))

(declare-fun d!2155937 () Bool)

(declare-fun res!2799796 () Bool)

(declare-fun e!4136933 () Bool)

(assert (=> d!2155937 (=> res!2799796 e!4136933)))

(assert (=> d!2155937 (= res!2799796 (is-ElementMatch!16690 (derivativeStep!5333 r!7292 (head!13759 s!2326))))))

(assert (=> d!2155937 (= (validRegex!8426 (derivativeStep!5333 r!7292 (head!13759 s!2326))) e!4136933)))

(declare-fun b!6861670 () Bool)

(declare-fun e!4136932 () Bool)

(declare-fun e!4136936 () Bool)

(assert (=> b!6861670 (= e!4136932 e!4136936)))

(declare-fun c!1277265 () Bool)

(assert (=> b!6861670 (= c!1277265 (is-Union!16690 (derivativeStep!5333 r!7292 (head!13759 s!2326))))))

(declare-fun b!6861671 () Bool)

(declare-fun e!4136934 () Bool)

(declare-fun e!4136937 () Bool)

(assert (=> b!6861671 (= e!4136934 e!4136937)))

(declare-fun res!2799798 () Bool)

(assert (=> b!6861671 (=> (not res!2799798) (not e!4136937))))

(declare-fun call!624993 () Bool)

(assert (=> b!6861671 (= res!2799798 call!624993)))

(declare-fun b!6861672 () Bool)

(declare-fun e!4136935 () Bool)

(assert (=> b!6861672 (= e!4136932 e!4136935)))

(declare-fun res!2799797 () Bool)

(assert (=> b!6861672 (= res!2799797 (not (nullable!6651 (reg!17019 (derivativeStep!5333 r!7292 (head!13759 s!2326))))))))

(assert (=> b!6861672 (=> (not res!2799797) (not e!4136935))))

(declare-fun b!6861673 () Bool)

(assert (=> b!6861673 (= e!4136933 e!4136932)))

(declare-fun c!1277264 () Bool)

(assert (=> b!6861673 (= c!1277264 (is-Star!16690 (derivativeStep!5333 r!7292 (head!13759 s!2326))))))

(declare-fun b!6861674 () Bool)

(declare-fun res!2799800 () Bool)

(assert (=> b!6861674 (=> res!2799800 e!4136934)))

(assert (=> b!6861674 (= res!2799800 (not (is-Concat!25535 (derivativeStep!5333 r!7292 (head!13759 s!2326)))))))

(assert (=> b!6861674 (= e!4136936 e!4136934)))

(declare-fun bm!624988 () Bool)

(declare-fun call!624994 () Bool)

(assert (=> bm!624988 (= call!624994 (validRegex!8426 (ite c!1277265 (regTwo!33893 (derivativeStep!5333 r!7292 (head!13759 s!2326))) (regTwo!33892 (derivativeStep!5333 r!7292 (head!13759 s!2326))))))))

(declare-fun b!6861675 () Bool)

(declare-fun call!624995 () Bool)

(assert (=> b!6861675 (= e!4136935 call!624995)))

(declare-fun bm!624989 () Bool)

(assert (=> bm!624989 (= call!624993 call!624995)))

(declare-fun b!6861676 () Bool)

(declare-fun e!4136931 () Bool)

(assert (=> b!6861676 (= e!4136931 call!624994)))

(declare-fun b!6861677 () Bool)

(assert (=> b!6861677 (= e!4136937 call!624994)))

(declare-fun bm!624990 () Bool)

(assert (=> bm!624990 (= call!624995 (validRegex!8426 (ite c!1277264 (reg!17019 (derivativeStep!5333 r!7292 (head!13759 s!2326))) (ite c!1277265 (regOne!33893 (derivativeStep!5333 r!7292 (head!13759 s!2326))) (regOne!33892 (derivativeStep!5333 r!7292 (head!13759 s!2326)))))))))

(declare-fun b!6861678 () Bool)

(declare-fun res!2799799 () Bool)

(assert (=> b!6861678 (=> (not res!2799799) (not e!4136931))))

(assert (=> b!6861678 (= res!2799799 call!624993)))

(assert (=> b!6861678 (= e!4136936 e!4136931)))

(assert (= (and d!2155937 (not res!2799796)) b!6861673))

(assert (= (and b!6861673 c!1277264) b!6861672))

(assert (= (and b!6861673 (not c!1277264)) b!6861670))

(assert (= (and b!6861672 res!2799797) b!6861675))

(assert (= (and b!6861670 c!1277265) b!6861678))

(assert (= (and b!6861670 (not c!1277265)) b!6861674))

(assert (= (and b!6861678 res!2799799) b!6861676))

(assert (= (and b!6861674 (not res!2799800)) b!6861671))

(assert (= (and b!6861671 res!2799798) b!6861677))

(assert (= (or b!6861676 b!6861677) bm!624988))

(assert (= (or b!6861678 b!6861671) bm!624989))

(assert (= (or b!6861675 bm!624989) bm!624990))

(declare-fun m!7596054 () Bool)

(assert (=> b!6861672 m!7596054))

(declare-fun m!7596056 () Bool)

(assert (=> bm!624988 m!7596056))

(declare-fun m!7596058 () Bool)

(assert (=> bm!624990 m!7596058))

(assert (=> d!2155581 d!2155937))

(declare-fun d!2155939 () Bool)

(declare-fun res!2799801 () Bool)

(declare-fun e!4136940 () Bool)

(assert (=> d!2155939 (=> res!2799801 e!4136940)))

(assert (=> d!2155939 (= res!2799801 (is-ElementMatch!16690 (ite c!1277049 (regTwo!33893 lt!2457457) (regTwo!33892 lt!2457457))))))

(assert (=> d!2155939 (= (validRegex!8426 (ite c!1277049 (regTwo!33893 lt!2457457) (regTwo!33892 lt!2457457))) e!4136940)))

(declare-fun b!6861679 () Bool)

(declare-fun e!4136939 () Bool)

(declare-fun e!4136943 () Bool)

(assert (=> b!6861679 (= e!4136939 e!4136943)))

(declare-fun c!1277267 () Bool)

(assert (=> b!6861679 (= c!1277267 (is-Union!16690 (ite c!1277049 (regTwo!33893 lt!2457457) (regTwo!33892 lt!2457457))))))

(declare-fun b!6861680 () Bool)

(declare-fun e!4136941 () Bool)

(declare-fun e!4136944 () Bool)

(assert (=> b!6861680 (= e!4136941 e!4136944)))

(declare-fun res!2799803 () Bool)

(assert (=> b!6861680 (=> (not res!2799803) (not e!4136944))))

(declare-fun call!624996 () Bool)

(assert (=> b!6861680 (= res!2799803 call!624996)))

(declare-fun b!6861681 () Bool)

(declare-fun e!4136942 () Bool)

(assert (=> b!6861681 (= e!4136939 e!4136942)))

(declare-fun res!2799802 () Bool)

(assert (=> b!6861681 (= res!2799802 (not (nullable!6651 (reg!17019 (ite c!1277049 (regTwo!33893 lt!2457457) (regTwo!33892 lt!2457457))))))))

(assert (=> b!6861681 (=> (not res!2799802) (not e!4136942))))

(declare-fun b!6861682 () Bool)

(assert (=> b!6861682 (= e!4136940 e!4136939)))

(declare-fun c!1277266 () Bool)

(assert (=> b!6861682 (= c!1277266 (is-Star!16690 (ite c!1277049 (regTwo!33893 lt!2457457) (regTwo!33892 lt!2457457))))))

(declare-fun b!6861683 () Bool)

(declare-fun res!2799805 () Bool)

(assert (=> b!6861683 (=> res!2799805 e!4136941)))

(assert (=> b!6861683 (= res!2799805 (not (is-Concat!25535 (ite c!1277049 (regTwo!33893 lt!2457457) (regTwo!33892 lt!2457457)))))))

(assert (=> b!6861683 (= e!4136943 e!4136941)))

(declare-fun bm!624991 () Bool)

(declare-fun call!624997 () Bool)

(assert (=> bm!624991 (= call!624997 (validRegex!8426 (ite c!1277267 (regTwo!33893 (ite c!1277049 (regTwo!33893 lt!2457457) (regTwo!33892 lt!2457457))) (regTwo!33892 (ite c!1277049 (regTwo!33893 lt!2457457) (regTwo!33892 lt!2457457))))))))

(declare-fun b!6861684 () Bool)

(declare-fun call!624998 () Bool)

(assert (=> b!6861684 (= e!4136942 call!624998)))

(declare-fun bm!624992 () Bool)

(assert (=> bm!624992 (= call!624996 call!624998)))

(declare-fun b!6861685 () Bool)

(declare-fun e!4136938 () Bool)

(assert (=> b!6861685 (= e!4136938 call!624997)))

(declare-fun b!6861686 () Bool)

(assert (=> b!6861686 (= e!4136944 call!624997)))

(declare-fun bm!624993 () Bool)

(assert (=> bm!624993 (= call!624998 (validRegex!8426 (ite c!1277266 (reg!17019 (ite c!1277049 (regTwo!33893 lt!2457457) (regTwo!33892 lt!2457457))) (ite c!1277267 (regOne!33893 (ite c!1277049 (regTwo!33893 lt!2457457) (regTwo!33892 lt!2457457))) (regOne!33892 (ite c!1277049 (regTwo!33893 lt!2457457) (regTwo!33892 lt!2457457)))))))))

(declare-fun b!6861687 () Bool)

(declare-fun res!2799804 () Bool)

(assert (=> b!6861687 (=> (not res!2799804) (not e!4136938))))

(assert (=> b!6861687 (= res!2799804 call!624996)))

(assert (=> b!6861687 (= e!4136943 e!4136938)))

(assert (= (and d!2155939 (not res!2799801)) b!6861682))

(assert (= (and b!6861682 c!1277266) b!6861681))

(assert (= (and b!6861682 (not c!1277266)) b!6861679))

(assert (= (and b!6861681 res!2799802) b!6861684))

(assert (= (and b!6861679 c!1277267) b!6861687))

(assert (= (and b!6861679 (not c!1277267)) b!6861683))

(assert (= (and b!6861687 res!2799804) b!6861685))

(assert (= (and b!6861683 (not res!2799805)) b!6861680))

(assert (= (and b!6861680 res!2799803) b!6861686))

(assert (= (or b!6861685 b!6861686) bm!624991))

(assert (= (or b!6861687 b!6861680) bm!624992))

(assert (= (or b!6861684 bm!624992) bm!624993))

(declare-fun m!7596060 () Bool)

(assert (=> b!6861681 m!7596060))

(declare-fun m!7596062 () Bool)

(assert (=> bm!624991 m!7596062))

(declare-fun m!7596064 () Bool)

(assert (=> bm!624993 m!7596064))

(assert (=> bm!624874 d!2155939))

(declare-fun d!2155941 () Bool)

(declare-fun res!2799806 () Bool)

(declare-fun e!4136947 () Bool)

(assert (=> d!2155941 (=> res!2799806 e!4136947)))

(assert (=> d!2155941 (= res!2799806 (is-ElementMatch!16690 (ite c!1277041 (reg!17019 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (ite c!1277042 (regOne!33893 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (regOne!33892 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292))))))))))

(assert (=> d!2155941 (= (validRegex!8426 (ite c!1277041 (reg!17019 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (ite c!1277042 (regOne!33893 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (regOne!33892 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292))))))) e!4136947)))

(declare-fun b!6861688 () Bool)

(declare-fun e!4136946 () Bool)

(declare-fun e!4136950 () Bool)

(assert (=> b!6861688 (= e!4136946 e!4136950)))

(declare-fun c!1277269 () Bool)

(assert (=> b!6861688 (= c!1277269 (is-Union!16690 (ite c!1277041 (reg!17019 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (ite c!1277042 (regOne!33893 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (regOne!33892 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292))))))))))

(declare-fun b!6861689 () Bool)

(declare-fun e!4136948 () Bool)

(declare-fun e!4136951 () Bool)

(assert (=> b!6861689 (= e!4136948 e!4136951)))

(declare-fun res!2799808 () Bool)

(assert (=> b!6861689 (=> (not res!2799808) (not e!4136951))))

(declare-fun call!624999 () Bool)

(assert (=> b!6861689 (= res!2799808 call!624999)))

(declare-fun b!6861690 () Bool)

(declare-fun e!4136949 () Bool)

(assert (=> b!6861690 (= e!4136946 e!4136949)))

(declare-fun res!2799807 () Bool)

(assert (=> b!6861690 (= res!2799807 (not (nullable!6651 (reg!17019 (ite c!1277041 (reg!17019 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (ite c!1277042 (regOne!33893 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (regOne!33892 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292))))))))))))

(assert (=> b!6861690 (=> (not res!2799807) (not e!4136949))))

(declare-fun b!6861691 () Bool)

(assert (=> b!6861691 (= e!4136947 e!4136946)))

(declare-fun c!1277268 () Bool)

(assert (=> b!6861691 (= c!1277268 (is-Star!16690 (ite c!1277041 (reg!17019 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (ite c!1277042 (regOne!33893 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (regOne!33892 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292))))))))))

(declare-fun b!6861692 () Bool)

(declare-fun res!2799810 () Bool)

(assert (=> b!6861692 (=> res!2799810 e!4136948)))

(assert (=> b!6861692 (= res!2799810 (not (is-Concat!25535 (ite c!1277041 (reg!17019 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (ite c!1277042 (regOne!33893 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (regOne!33892 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))))))))))

(assert (=> b!6861692 (= e!4136950 e!4136948)))

(declare-fun call!625000 () Bool)

(declare-fun bm!624994 () Bool)

(assert (=> bm!624994 (= call!625000 (validRegex!8426 (ite c!1277269 (regTwo!33893 (ite c!1277041 (reg!17019 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (ite c!1277042 (regOne!33893 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (regOne!33892 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292))))))) (regTwo!33892 (ite c!1277041 (reg!17019 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (ite c!1277042 (regOne!33893 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (regOne!33892 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292))))))))))))

(declare-fun b!6861693 () Bool)

(declare-fun call!625001 () Bool)

(assert (=> b!6861693 (= e!4136949 call!625001)))

(declare-fun bm!624995 () Bool)

(assert (=> bm!624995 (= call!624999 call!625001)))

(declare-fun b!6861694 () Bool)

(declare-fun e!4136945 () Bool)

(assert (=> b!6861694 (= e!4136945 call!625000)))

(declare-fun b!6861695 () Bool)

(assert (=> b!6861695 (= e!4136951 call!625000)))

(declare-fun bm!624996 () Bool)

(assert (=> bm!624996 (= call!625001 (validRegex!8426 (ite c!1277268 (reg!17019 (ite c!1277041 (reg!17019 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (ite c!1277042 (regOne!33893 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (regOne!33892 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292))))))) (ite c!1277269 (regOne!33893 (ite c!1277041 (reg!17019 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (ite c!1277042 (regOne!33893 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (regOne!33892 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292))))))) (regOne!33892 (ite c!1277041 (reg!17019 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (ite c!1277042 (regOne!33893 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (regOne!33892 (ite c!1276989 (reg!17019 r!7292) (ite c!1276990 (regOne!33893 r!7292) (regOne!33892 r!7292)))))))))))))

(declare-fun b!6861696 () Bool)

(declare-fun res!2799809 () Bool)

(assert (=> b!6861696 (=> (not res!2799809) (not e!4136945))))

(assert (=> b!6861696 (= res!2799809 call!624999)))

(assert (=> b!6861696 (= e!4136950 e!4136945)))

(assert (= (and d!2155941 (not res!2799806)) b!6861691))

(assert (= (and b!6861691 c!1277268) b!6861690))

(assert (= (and b!6861691 (not c!1277268)) b!6861688))

(assert (= (and b!6861690 res!2799807) b!6861693))

(assert (= (and b!6861688 c!1277269) b!6861696))

(assert (= (and b!6861688 (not c!1277269)) b!6861692))

(assert (= (and b!6861696 res!2799809) b!6861694))

(assert (= (and b!6861692 (not res!2799810)) b!6861689))

(assert (= (and b!6861689 res!2799808) b!6861695))

(assert (= (or b!6861694 b!6861695) bm!624994))

(assert (= (or b!6861696 b!6861689) bm!624995))

(assert (= (or b!6861693 bm!624995) bm!624996))

(declare-fun m!7596066 () Bool)

(assert (=> b!6861690 m!7596066))

(declare-fun m!7596068 () Bool)

(assert (=> bm!624994 m!7596068))

(declare-fun m!7596070 () Bool)

(assert (=> bm!624996 m!7596070))

(assert (=> bm!624873 d!2155941))

(declare-fun d!2155943 () Bool)

(assert (=> d!2155943 (= (isEmpty!38610 (t!380112 (unfocusZipperList!2107 zl!343))) (is-Nil!66245 (t!380112 (unfocusZipperList!2107 zl!343))))))

(assert (=> b!6860739 d!2155943))

(declare-fun d!2155945 () Bool)

(assert (=> d!2155945 (= (isEmpty!38610 (tail!12824 (unfocusZipperList!2107 zl!343))) (is-Nil!66245 (tail!12824 (unfocusZipperList!2107 zl!343))))))

(assert (=> b!6860743 d!2155945))

(declare-fun d!2155947 () Bool)

(assert (=> d!2155947 (= (tail!12824 (unfocusZipperList!2107 zl!343)) (t!380112 (unfocusZipperList!2107 zl!343)))))

(assert (=> b!6860743 d!2155947))

(declare-fun d!2155949 () Bool)

(declare-fun res!2799811 () Bool)

(declare-fun e!4136954 () Bool)

(assert (=> d!2155949 (=> res!2799811 e!4136954)))

(assert (=> d!2155949 (= res!2799811 (is-ElementMatch!16690 (h!72693 (t!380112 (exprs!6574 lt!2457391)))))))

(assert (=> d!2155949 (= (validRegex!8426 (h!72693 (t!380112 (exprs!6574 lt!2457391)))) e!4136954)))

(declare-fun b!6861697 () Bool)

(declare-fun e!4136953 () Bool)

(declare-fun e!4136957 () Bool)

(assert (=> b!6861697 (= e!4136953 e!4136957)))

(declare-fun c!1277271 () Bool)

(assert (=> b!6861697 (= c!1277271 (is-Union!16690 (h!72693 (t!380112 (exprs!6574 lt!2457391)))))))

(declare-fun b!6861698 () Bool)

(declare-fun e!4136955 () Bool)

(declare-fun e!4136958 () Bool)

(assert (=> b!6861698 (= e!4136955 e!4136958)))

(declare-fun res!2799813 () Bool)

(assert (=> b!6861698 (=> (not res!2799813) (not e!4136958))))

(declare-fun call!625002 () Bool)

(assert (=> b!6861698 (= res!2799813 call!625002)))

(declare-fun b!6861699 () Bool)

(declare-fun e!4136956 () Bool)

(assert (=> b!6861699 (= e!4136953 e!4136956)))

(declare-fun res!2799812 () Bool)

(assert (=> b!6861699 (= res!2799812 (not (nullable!6651 (reg!17019 (h!72693 (t!380112 (exprs!6574 lt!2457391)))))))))

(assert (=> b!6861699 (=> (not res!2799812) (not e!4136956))))

(declare-fun b!6861700 () Bool)

(assert (=> b!6861700 (= e!4136954 e!4136953)))

(declare-fun c!1277270 () Bool)

(assert (=> b!6861700 (= c!1277270 (is-Star!16690 (h!72693 (t!380112 (exprs!6574 lt!2457391)))))))

(declare-fun b!6861701 () Bool)

(declare-fun res!2799815 () Bool)

(assert (=> b!6861701 (=> res!2799815 e!4136955)))

(assert (=> b!6861701 (= res!2799815 (not (is-Concat!25535 (h!72693 (t!380112 (exprs!6574 lt!2457391))))))))

(assert (=> b!6861701 (= e!4136957 e!4136955)))

(declare-fun bm!624997 () Bool)

(declare-fun call!625003 () Bool)

(assert (=> bm!624997 (= call!625003 (validRegex!8426 (ite c!1277271 (regTwo!33893 (h!72693 (t!380112 (exprs!6574 lt!2457391)))) (regTwo!33892 (h!72693 (t!380112 (exprs!6574 lt!2457391)))))))))

(declare-fun b!6861702 () Bool)

(declare-fun call!625004 () Bool)

(assert (=> b!6861702 (= e!4136956 call!625004)))

(declare-fun bm!624998 () Bool)

(assert (=> bm!624998 (= call!625002 call!625004)))

(declare-fun b!6861703 () Bool)

(declare-fun e!4136952 () Bool)

(assert (=> b!6861703 (= e!4136952 call!625003)))

(declare-fun b!6861704 () Bool)

(assert (=> b!6861704 (= e!4136958 call!625003)))

(declare-fun bm!624999 () Bool)

(assert (=> bm!624999 (= call!625004 (validRegex!8426 (ite c!1277270 (reg!17019 (h!72693 (t!380112 (exprs!6574 lt!2457391)))) (ite c!1277271 (regOne!33893 (h!72693 (t!380112 (exprs!6574 lt!2457391)))) (regOne!33892 (h!72693 (t!380112 (exprs!6574 lt!2457391))))))))))

(declare-fun b!6861705 () Bool)

(declare-fun res!2799814 () Bool)

(assert (=> b!6861705 (=> (not res!2799814) (not e!4136952))))

(assert (=> b!6861705 (= res!2799814 call!625002)))

(assert (=> b!6861705 (= e!4136957 e!4136952)))

(assert (= (and d!2155949 (not res!2799811)) b!6861700))

(assert (= (and b!6861700 c!1277270) b!6861699))

(assert (= (and b!6861700 (not c!1277270)) b!6861697))

(assert (= (and b!6861699 res!2799812) b!6861702))

(assert (= (and b!6861697 c!1277271) b!6861705))

(assert (= (and b!6861697 (not c!1277271)) b!6861701))

(assert (= (and b!6861705 res!2799814) b!6861703))

(assert (= (and b!6861701 (not res!2799815)) b!6861698))

(assert (= (and b!6861698 res!2799813) b!6861704))

(assert (= (or b!6861703 b!6861704) bm!624997))

(assert (= (or b!6861705 b!6861698) bm!624998))

(assert (= (or b!6861702 bm!624998) bm!624999))

(declare-fun m!7596072 () Bool)

(assert (=> b!6861699 m!7596072))

(declare-fun m!7596074 () Bool)

(assert (=> bm!624997 m!7596074))

(declare-fun m!7596076 () Bool)

(assert (=> bm!624999 m!7596076))

(assert (=> bs!1833522 d!2155949))

(declare-fun b!6861706 () Bool)

(declare-fun e!4136962 () Regex!16690)

(assert (=> b!6861706 (= e!4136962 EmptyLang!16690)))

(declare-fun call!625008 () Regex!16690)

(declare-fun call!625006 () Regex!16690)

(declare-fun e!4136963 () Regex!16690)

(declare-fun b!6861707 () Bool)

(assert (=> b!6861707 (= e!4136963 (Union!16690 (Concat!25535 call!625006 (regTwo!33892 (ite c!1277080 (regOne!33893 r!7292) (regOne!33892 r!7292)))) call!625008))))

(declare-fun bm!625000 () Bool)

(declare-fun call!625005 () Regex!16690)

(assert (=> bm!625000 (= call!625008 call!625005)))

(declare-fun b!6861708 () Bool)

(assert (=> b!6861708 (= e!4136963 (Union!16690 (Concat!25535 call!625008 (regTwo!33892 (ite c!1277080 (regOne!33893 r!7292) (regOne!33892 r!7292)))) EmptyLang!16690))))

(declare-fun d!2155951 () Bool)

(declare-fun lt!2457539 () Regex!16690)

(assert (=> d!2155951 (validRegex!8426 lt!2457539)))

(assert (=> d!2155951 (= lt!2457539 e!4136962)))

(declare-fun c!1277273 () Bool)

(assert (=> d!2155951 (= c!1277273 (or (is-EmptyExpr!16690 (ite c!1277080 (regOne!33893 r!7292) (regOne!33892 r!7292))) (is-EmptyLang!16690 (ite c!1277080 (regOne!33893 r!7292) (regOne!33892 r!7292)))))))

(assert (=> d!2155951 (validRegex!8426 (ite c!1277080 (regOne!33893 r!7292) (regOne!33892 r!7292)))))

(assert (=> d!2155951 (= (derivativeStep!5333 (ite c!1277080 (regOne!33893 r!7292) (regOne!33892 r!7292)) (head!13759 s!2326)) lt!2457539)))

(declare-fun e!4136961 () Regex!16690)

(declare-fun b!6861709 () Bool)

(assert (=> b!6861709 (= e!4136961 (Concat!25535 call!625005 (ite c!1277080 (regOne!33893 r!7292) (regOne!33892 r!7292))))))

(declare-fun b!6861710 () Bool)

(declare-fun e!4136959 () Regex!16690)

(declare-fun call!625007 () Regex!16690)

(assert (=> b!6861710 (= e!4136959 (Union!16690 call!625006 call!625007))))

(declare-fun bm!625001 () Bool)

(assert (=> bm!625001 (= call!625005 call!625007)))

(declare-fun bm!625002 () Bool)

(declare-fun c!1277272 () Bool)

(assert (=> bm!625002 (= call!625006 (derivativeStep!5333 (ite c!1277272 (regOne!33893 (ite c!1277080 (regOne!33893 r!7292) (regOne!33892 r!7292))) (regOne!33892 (ite c!1277080 (regOne!33893 r!7292) (regOne!33892 r!7292)))) (head!13759 s!2326)))))

(declare-fun b!6861711 () Bool)

(assert (=> b!6861711 (= e!4136959 e!4136961)))

(declare-fun c!1277275 () Bool)

(assert (=> b!6861711 (= c!1277275 (is-Star!16690 (ite c!1277080 (regOne!33893 r!7292) (regOne!33892 r!7292))))))

(declare-fun b!6861712 () Bool)

(assert (=> b!6861712 (= c!1277272 (is-Union!16690 (ite c!1277080 (regOne!33893 r!7292) (regOne!33892 r!7292))))))

(declare-fun e!4136960 () Regex!16690)

(assert (=> b!6861712 (= e!4136960 e!4136959)))

(declare-fun b!6861713 () Bool)

(assert (=> b!6861713 (= e!4136962 e!4136960)))

(declare-fun c!1277276 () Bool)

(assert (=> b!6861713 (= c!1277276 (is-ElementMatch!16690 (ite c!1277080 (regOne!33893 r!7292) (regOne!33892 r!7292))))))

(declare-fun b!6861714 () Bool)

(assert (=> b!6861714 (= e!4136960 (ite (= (head!13759 s!2326) (c!1276936 (ite c!1277080 (regOne!33893 r!7292) (regOne!33892 r!7292)))) EmptyExpr!16690 EmptyLang!16690))))

(declare-fun bm!625003 () Bool)

(declare-fun c!1277274 () Bool)

(assert (=> bm!625003 (= call!625007 (derivativeStep!5333 (ite c!1277272 (regTwo!33893 (ite c!1277080 (regOne!33893 r!7292) (regOne!33892 r!7292))) (ite c!1277275 (reg!17019 (ite c!1277080 (regOne!33893 r!7292) (regOne!33892 r!7292))) (ite c!1277274 (regTwo!33892 (ite c!1277080 (regOne!33893 r!7292) (regOne!33892 r!7292))) (regOne!33892 (ite c!1277080 (regOne!33893 r!7292) (regOne!33892 r!7292)))))) (head!13759 s!2326)))))

(declare-fun b!6861715 () Bool)

(assert (=> b!6861715 (= c!1277274 (nullable!6651 (regOne!33892 (ite c!1277080 (regOne!33893 r!7292) (regOne!33892 r!7292)))))))

(assert (=> b!6861715 (= e!4136961 e!4136963)))

(assert (= (and d!2155951 c!1277273) b!6861706))

(assert (= (and d!2155951 (not c!1277273)) b!6861713))

(assert (= (and b!6861713 c!1277276) b!6861714))

(assert (= (and b!6861713 (not c!1277276)) b!6861712))

(assert (= (and b!6861712 c!1277272) b!6861710))

(assert (= (and b!6861712 (not c!1277272)) b!6861711))

(assert (= (and b!6861711 c!1277275) b!6861709))

(assert (= (and b!6861711 (not c!1277275)) b!6861715))

(assert (= (and b!6861715 c!1277274) b!6861707))

(assert (= (and b!6861715 (not c!1277274)) b!6861708))

(assert (= (or b!6861707 b!6861708) bm!625000))

(assert (= (or b!6861709 bm!625000) bm!625001))

(assert (= (or b!6861710 bm!625001) bm!625003))

(assert (= (or b!6861710 b!6861707) bm!625002))

(declare-fun m!7596078 () Bool)

(assert (=> d!2155951 m!7596078))

(declare-fun m!7596080 () Bool)

(assert (=> d!2155951 m!7596080))

(assert (=> bm!625002 m!7594978))

(declare-fun m!7596082 () Bool)

(assert (=> bm!625002 m!7596082))

(assert (=> bm!625003 m!7594978))

(declare-fun m!7596084 () Bool)

(assert (=> bm!625003 m!7596084))

(declare-fun m!7596086 () Bool)

(assert (=> b!6861715 m!7596086))

(assert (=> bm!624890 d!2155951))

(declare-fun d!2155953 () Bool)

(declare-fun c!1277277 () Bool)

(assert (=> d!2155953 (= c!1277277 (isEmpty!38608 s!2326))))

(declare-fun e!4136964 () Bool)

(assert (=> d!2155953 (= (matchZipper!2656 (set.insert lt!2457494 (as set.empty (Set Context!12148))) s!2326) e!4136964)))

(declare-fun b!6861716 () Bool)

(assert (=> b!6861716 (= e!4136964 (nullableZipper!2364 (set.insert lt!2457494 (as set.empty (Set Context!12148)))))))

(declare-fun b!6861717 () Bool)

(assert (=> b!6861717 (= e!4136964 (matchZipper!2656 (derivationStepZipper!2611 (set.insert lt!2457494 (as set.empty (Set Context!12148))) (head!13759 s!2326)) (tail!12822 s!2326)))))

(assert (= (and d!2155953 c!1277277) b!6861716))

(assert (= (and d!2155953 (not c!1277277)) b!6861717))

(assert (=> d!2155953 m!7594968))

(assert (=> b!6861716 m!7595418))

(declare-fun m!7596088 () Bool)

(assert (=> b!6861716 m!7596088))

(assert (=> b!6861717 m!7594978))

(assert (=> b!6861717 m!7595418))

(assert (=> b!6861717 m!7594978))

(declare-fun m!7596090 () Bool)

(assert (=> b!6861717 m!7596090))

(assert (=> b!6861717 m!7594980))

(assert (=> b!6861717 m!7596090))

(assert (=> b!6861717 m!7594980))

(declare-fun m!7596092 () Bool)

(assert (=> b!6861717 m!7596092))

(assert (=> bs!1833514 d!2155953))

(declare-fun d!2155955 () Bool)

(assert (=> d!2155955 (= (isConcat!1534 lt!2457505) (is-Concat!25535 lt!2457505))))

(assert (=> b!6860838 d!2155955))

(declare-fun d!2155957 () Bool)

(declare-fun res!2799816 () Bool)

(declare-fun e!4136965 () Bool)

(assert (=> d!2155957 (=> res!2799816 e!4136965)))

(assert (=> d!2155957 (= res!2799816 (is-Nil!66245 (t!380112 lt!2457393)))))

(assert (=> d!2155957 (= (forall!15877 (t!380112 lt!2457393) lambda!388067) e!4136965)))

(declare-fun b!6861718 () Bool)

(declare-fun e!4136966 () Bool)

(assert (=> b!6861718 (= e!4136965 e!4136966)))

(declare-fun res!2799817 () Bool)

(assert (=> b!6861718 (=> (not res!2799817) (not e!4136966))))

(assert (=> b!6861718 (= res!2799817 (dynLambda!26503 lambda!388067 (h!72693 (t!380112 lt!2457393))))))

(declare-fun b!6861719 () Bool)

(assert (=> b!6861719 (= e!4136966 (forall!15877 (t!380112 (t!380112 lt!2457393)) lambda!388067))))

(assert (= (and d!2155957 (not res!2799816)) b!6861718))

(assert (= (and b!6861718 res!2799817) b!6861719))

(declare-fun b_lambda!259309 () Bool)

(assert (=> (not b_lambda!259309) (not b!6861718)))

(declare-fun m!7596094 () Bool)

(assert (=> b!6861718 m!7596094))

(declare-fun m!7596096 () Bool)

(assert (=> b!6861719 m!7596096))

(assert (=> b!6860675 d!2155957))

(declare-fun bs!1833958 () Bool)

(declare-fun d!2155959 () Bool)

(assert (= bs!1833958 (and d!2155959 b!6860119)))

(declare-fun lambda!388195 () Int)

(assert (=> bs!1833958 (= lambda!388195 lambda!388030)))

(declare-fun bs!1833959 () Bool)

(assert (= bs!1833959 (and d!2155959 d!2155563)))

(assert (=> bs!1833959 (= lambda!388195 lambda!388127)))

(declare-fun bs!1833960 () Bool)

(assert (= bs!1833960 (and d!2155959 d!2155445)))

(assert (=> bs!1833960 (not (= lambda!388195 lambda!388068))))

(declare-fun bs!1833961 () Bool)

(assert (= bs!1833961 (and d!2155959 d!2155437)))

(assert (=> bs!1833961 (not (= lambda!388195 lambda!388059))))

(declare-fun bs!1833962 () Bool)

(assert (= bs!1833962 (and d!2155959 d!2155793)))

(assert (=> bs!1833962 (= lambda!388195 lambda!388176)))

(assert (=> bs!1833960 (= lambda!388195 lambda!388067)))

(declare-fun bs!1833963 () Bool)

(assert (= bs!1833963 (and d!2155959 b!6860114)))

(assert (=> bs!1833963 (not (= lambda!388195 lambda!388028))))

(declare-fun bs!1833964 () Bool)

(assert (= bs!1833964 (and d!2155959 d!2155915)))

(assert (=> bs!1833964 (= lambda!388195 lambda!388192)))

(declare-fun bs!1833965 () Bool)

(assert (= bs!1833965 (and d!2155959 d!2155571)))

(assert (=> bs!1833965 (= lambda!388195 lambda!388130)))

(declare-fun bs!1833966 () Bool)

(assert (= bs!1833966 (and d!2155959 d!2155591)))

(assert (=> bs!1833966 (= lambda!388195 lambda!388137)))

(declare-fun bs!1833967 () Bool)

(assert (= bs!1833967 (and d!2155959 d!2155781)))

(assert (=> bs!1833967 (not (= lambda!388195 lambda!388173))))

(declare-fun bs!1833968 () Bool)

(assert (= bs!1833968 (and d!2155959 d!2155911)))

(assert (=> bs!1833968 (= lambda!388195 lambda!388190)))

(declare-fun bs!1833969 () Bool)

(assert (= bs!1833969 (and d!2155959 d!2155475)))

(assert (=> bs!1833969 (= lambda!388195 lambda!388084)))

(declare-fun bs!1833970 () Bool)

(assert (= bs!1833970 (and d!2155959 d!2155773)))

(assert (=> bs!1833970 (= lambda!388195 lambda!388172)))

(declare-fun bs!1833971 () Bool)

(assert (= bs!1833971 (and d!2155959 d!2155529)))

(assert (=> bs!1833971 (not (= lambda!388195 lambda!388117))))

(declare-fun bs!1833972 () Bool)

(assert (= bs!1833972 (and d!2155959 d!2155531)))

(assert (=> bs!1833972 (not (= lambda!388195 lambda!388120))))

(declare-fun bs!1833973 () Bool)

(assert (= bs!1833973 (and d!2155959 d!2155557)))

(assert (=> bs!1833973 (= lambda!388195 lambda!388124)))

(declare-fun bs!1833974 () Bool)

(assert (= bs!1833974 (and d!2155959 d!2155453)))

(assert (=> bs!1833974 (= lambda!388195 lambda!388074)))

(declare-fun bs!1833975 () Bool)

(assert (= bs!1833975 (and d!2155959 d!2155587)))

(assert (=> bs!1833975 (= lambda!388195 lambda!388136)))

(declare-fun bs!1833976 () Bool)

(assert (= bs!1833976 (and d!2155959 d!2155853)))

(assert (=> bs!1833976 (= lambda!388195 lambda!388186)))

(declare-fun bs!1833977 () Bool)

(assert (= bs!1833977 (and d!2155959 d!2155461)))

(assert (=> bs!1833977 (= lambda!388195 lambda!388081)))

(declare-fun bs!1833978 () Bool)

(assert (= bs!1833978 (and d!2155959 d!2155585)))

(assert (=> bs!1833978 (= lambda!388195 lambda!388135)))

(declare-fun bs!1833979 () Bool)

(assert (= bs!1833979 (and d!2155959 d!2155913)))

(assert (=> bs!1833979 (= lambda!388195 lambda!388191)))

(declare-fun bs!1833980 () Bool)

(assert (= bs!1833980 (and d!2155959 d!2155447)))

(assert (=> bs!1833980 (= lambda!388195 lambda!388071)))

(assert (=> d!2155959 (= (inv!84973 setElem!47188) (forall!15877 (exprs!6574 setElem!47188) lambda!388195))))

(declare-fun bs!1833981 () Bool)

(assert (= bs!1833981 d!2155959))

(declare-fun m!7596098 () Bool)

(assert (=> bs!1833981 m!7596098))

(assert (=> setNonEmpty!47188 d!2155959))

(declare-fun d!2155961 () Bool)

(declare-fun res!2799818 () Bool)

(declare-fun e!4136969 () Bool)

(assert (=> d!2155961 (=> res!2799818 e!4136969)))

(assert (=> d!2155961 (= res!2799818 (is-ElementMatch!16690 (ite c!1277100 (reg!17019 (h!72693 (exprs!6574 lt!2457391))) (ite c!1277101 (regOne!33893 (h!72693 (exprs!6574 lt!2457391))) (regOne!33892 (h!72693 (exprs!6574 lt!2457391)))))))))

(assert (=> d!2155961 (= (validRegex!8426 (ite c!1277100 (reg!17019 (h!72693 (exprs!6574 lt!2457391))) (ite c!1277101 (regOne!33893 (h!72693 (exprs!6574 lt!2457391))) (regOne!33892 (h!72693 (exprs!6574 lt!2457391)))))) e!4136969)))

(declare-fun b!6861720 () Bool)

(declare-fun e!4136968 () Bool)

(declare-fun e!4136972 () Bool)

(assert (=> b!6861720 (= e!4136968 e!4136972)))

(declare-fun c!1277279 () Bool)

(assert (=> b!6861720 (= c!1277279 (is-Union!16690 (ite c!1277100 (reg!17019 (h!72693 (exprs!6574 lt!2457391))) (ite c!1277101 (regOne!33893 (h!72693 (exprs!6574 lt!2457391))) (regOne!33892 (h!72693 (exprs!6574 lt!2457391)))))))))

(declare-fun b!6861721 () Bool)

(declare-fun e!4136970 () Bool)

(declare-fun e!4136973 () Bool)

(assert (=> b!6861721 (= e!4136970 e!4136973)))

(declare-fun res!2799820 () Bool)

(assert (=> b!6861721 (=> (not res!2799820) (not e!4136973))))

(declare-fun call!625009 () Bool)

(assert (=> b!6861721 (= res!2799820 call!625009)))

(declare-fun b!6861722 () Bool)

(declare-fun e!4136971 () Bool)

(assert (=> b!6861722 (= e!4136968 e!4136971)))

(declare-fun res!2799819 () Bool)

(assert (=> b!6861722 (= res!2799819 (not (nullable!6651 (reg!17019 (ite c!1277100 (reg!17019 (h!72693 (exprs!6574 lt!2457391))) (ite c!1277101 (regOne!33893 (h!72693 (exprs!6574 lt!2457391))) (regOne!33892 (h!72693 (exprs!6574 lt!2457391)))))))))))

(assert (=> b!6861722 (=> (not res!2799819) (not e!4136971))))

(declare-fun b!6861723 () Bool)

(assert (=> b!6861723 (= e!4136969 e!4136968)))

(declare-fun c!1277278 () Bool)

(assert (=> b!6861723 (= c!1277278 (is-Star!16690 (ite c!1277100 (reg!17019 (h!72693 (exprs!6574 lt!2457391))) (ite c!1277101 (regOne!33893 (h!72693 (exprs!6574 lt!2457391))) (regOne!33892 (h!72693 (exprs!6574 lt!2457391)))))))))

(declare-fun b!6861724 () Bool)

(declare-fun res!2799822 () Bool)

(assert (=> b!6861724 (=> res!2799822 e!4136970)))

(assert (=> b!6861724 (= res!2799822 (not (is-Concat!25535 (ite c!1277100 (reg!17019 (h!72693 (exprs!6574 lt!2457391))) (ite c!1277101 (regOne!33893 (h!72693 (exprs!6574 lt!2457391))) (regOne!33892 (h!72693 (exprs!6574 lt!2457391))))))))))

(assert (=> b!6861724 (= e!4136972 e!4136970)))

(declare-fun bm!625004 () Bool)

(declare-fun call!625010 () Bool)

(assert (=> bm!625004 (= call!625010 (validRegex!8426 (ite c!1277279 (regTwo!33893 (ite c!1277100 (reg!17019 (h!72693 (exprs!6574 lt!2457391))) (ite c!1277101 (regOne!33893 (h!72693 (exprs!6574 lt!2457391))) (regOne!33892 (h!72693 (exprs!6574 lt!2457391)))))) (regTwo!33892 (ite c!1277100 (reg!17019 (h!72693 (exprs!6574 lt!2457391))) (ite c!1277101 (regOne!33893 (h!72693 (exprs!6574 lt!2457391))) (regOne!33892 (h!72693 (exprs!6574 lt!2457391)))))))))))

(declare-fun b!6861725 () Bool)

(declare-fun call!625011 () Bool)

(assert (=> b!6861725 (= e!4136971 call!625011)))

(declare-fun bm!625005 () Bool)

(assert (=> bm!625005 (= call!625009 call!625011)))

(declare-fun b!6861726 () Bool)

(declare-fun e!4136967 () Bool)

(assert (=> b!6861726 (= e!4136967 call!625010)))

(declare-fun b!6861727 () Bool)

(assert (=> b!6861727 (= e!4136973 call!625010)))

(declare-fun bm!625006 () Bool)

(assert (=> bm!625006 (= call!625011 (validRegex!8426 (ite c!1277278 (reg!17019 (ite c!1277100 (reg!17019 (h!72693 (exprs!6574 lt!2457391))) (ite c!1277101 (regOne!33893 (h!72693 (exprs!6574 lt!2457391))) (regOne!33892 (h!72693 (exprs!6574 lt!2457391)))))) (ite c!1277279 (regOne!33893 (ite c!1277100 (reg!17019 (h!72693 (exprs!6574 lt!2457391))) (ite c!1277101 (regOne!33893 (h!72693 (exprs!6574 lt!2457391))) (regOne!33892 (h!72693 (exprs!6574 lt!2457391)))))) (regOne!33892 (ite c!1277100 (reg!17019 (h!72693 (exprs!6574 lt!2457391))) (ite c!1277101 (regOne!33893 (h!72693 (exprs!6574 lt!2457391))) (regOne!33892 (h!72693 (exprs!6574 lt!2457391))))))))))))

(declare-fun b!6861728 () Bool)

(declare-fun res!2799821 () Bool)

(assert (=> b!6861728 (=> (not res!2799821) (not e!4136967))))

(assert (=> b!6861728 (= res!2799821 call!625009)))

(assert (=> b!6861728 (= e!4136972 e!4136967)))

(assert (= (and d!2155961 (not res!2799818)) b!6861723))

(assert (= (and b!6861723 c!1277278) b!6861722))

(assert (= (and b!6861723 (not c!1277278)) b!6861720))

(assert (= (and b!6861722 res!2799819) b!6861725))

(assert (= (and b!6861720 c!1277279) b!6861728))

(assert (= (and b!6861720 (not c!1277279)) b!6861724))

(assert (= (and b!6861728 res!2799821) b!6861726))

(assert (= (and b!6861724 (not res!2799822)) b!6861721))

(assert (= (and b!6861721 res!2799820) b!6861727))

(assert (= (or b!6861726 b!6861727) bm!625004))

(assert (= (or b!6861728 b!6861721) bm!625005))

(assert (= (or b!6861725 bm!625005) bm!625006))

(declare-fun m!7596100 () Bool)

(assert (=> b!6861722 m!7596100))

(declare-fun m!7596102 () Bool)

(assert (=> bm!625004 m!7596102))

(declare-fun m!7596104 () Bool)

(assert (=> bm!625006 m!7596104))

(assert (=> bm!624897 d!2155961))

(declare-fun d!2155963 () Bool)

(assert (=> d!2155963 (= (head!13763 (exprs!6574 (h!72695 zl!343))) (h!72693 (exprs!6574 (h!72695 zl!343))))))

(assert (=> b!6860842 d!2155963))

(assert (=> bm!624879 d!2155515))

(declare-fun b!6861729 () Bool)

(declare-fun e!4136976 () Bool)

(declare-fun lt!2457541 () Context!12148)

(assert (=> b!6861729 (= e!4136976 (contains!20348 (t!380114 (t!380114 zl!343)) lt!2457541))))

(declare-fun b!6861730 () Bool)

(declare-fun e!4136974 () Bool)

(assert (=> b!6861730 (= e!4136974 (dynLambda!26504 lambda!388029 (h!72695 (t!380114 (t!380114 zl!343)))))))

(declare-fun d!2155965 () Bool)

(assert (=> d!2155965 e!4136976))

(declare-fun res!2799823 () Bool)

(assert (=> d!2155965 (=> (not res!2799823) (not e!4136976))))

(assert (=> d!2155965 (= res!2799823 (dynLambda!26504 lambda!388029 lt!2457541))))

(declare-fun e!4136975 () Context!12148)

(assert (=> d!2155965 (= lt!2457541 e!4136975)))

(declare-fun c!1277281 () Bool)

(assert (=> d!2155965 (= c!1277281 e!4136974)))

(declare-fun res!2799824 () Bool)

(assert (=> d!2155965 (=> (not res!2799824) (not e!4136974))))

(assert (=> d!2155965 (= res!2799824 (is-Cons!66247 (t!380114 (t!380114 zl!343))))))

(assert (=> d!2155965 (exists!2811 (t!380114 (t!380114 zl!343)) lambda!388029)))

(assert (=> d!2155965 (= (getWitness!969 (t!380114 (t!380114 zl!343)) lambda!388029) lt!2457541)))

(declare-fun b!6861731 () Bool)

(assert (=> b!6861731 (= e!4136975 (h!72695 (t!380114 (t!380114 zl!343))))))

(declare-fun b!6861732 () Bool)

(declare-fun e!4136977 () Context!12148)

(assert (=> b!6861732 (= e!4136977 (getWitness!969 (t!380114 (t!380114 (t!380114 zl!343))) lambda!388029))))

(declare-fun b!6861733 () Bool)

(declare-fun lt!2457540 () Unit!160137)

(declare-fun Unit!160145 () Unit!160137)

(assert (=> b!6861733 (= lt!2457540 Unit!160145)))

(assert (=> b!6861733 false))

(assert (=> b!6861733 (= e!4136977 (head!13760 (t!380114 (t!380114 zl!343))))))

(declare-fun b!6861734 () Bool)

(assert (=> b!6861734 (= e!4136975 e!4136977)))

(declare-fun c!1277280 () Bool)

(assert (=> b!6861734 (= c!1277280 (is-Cons!66247 (t!380114 (t!380114 zl!343))))))

(assert (= (and d!2155965 res!2799824) b!6861730))

(assert (= (and d!2155965 c!1277281) b!6861731))

(assert (= (and d!2155965 (not c!1277281)) b!6861734))

(assert (= (and b!6861734 c!1277280) b!6861732))

(assert (= (and b!6861734 (not c!1277280)) b!6861733))

(assert (= (and d!2155965 res!2799823) b!6861729))

(declare-fun b_lambda!259311 () Bool)

(assert (=> (not b_lambda!259311) (not b!6861730)))

(declare-fun b_lambda!259313 () Bool)

(assert (=> (not b_lambda!259313) (not d!2155965)))

(declare-fun m!7596106 () Bool)

(assert (=> d!2155965 m!7596106))

(declare-fun m!7596108 () Bool)

(assert (=> d!2155965 m!7596108))

(declare-fun m!7596110 () Bool)

(assert (=> b!6861732 m!7596110))

(declare-fun m!7596112 () Bool)

(assert (=> b!6861730 m!7596112))

(declare-fun m!7596114 () Bool)

(assert (=> b!6861733 m!7596114))

(declare-fun m!7596116 () Bool)

(assert (=> b!6861729 m!7596116))

(assert (=> b!6860698 d!2155965))

(assert (=> b!6860671 d!2155897))

(declare-fun d!2155967 () Bool)

(declare-fun res!2799825 () Bool)

(declare-fun e!4136980 () Bool)

(assert (=> d!2155967 (=> res!2799825 e!4136980)))

(assert (=> d!2155967 (= res!2799825 (is-ElementMatch!16690 (ite c!1277099 (regTwo!33893 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (regTwo!33892 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))))))))

(assert (=> d!2155967 (= (validRegex!8426 (ite c!1277099 (regTwo!33893 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (regTwo!33892 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))))) e!4136980)))

(declare-fun b!6861735 () Bool)

(declare-fun e!4136979 () Bool)

(declare-fun e!4136983 () Bool)

(assert (=> b!6861735 (= e!4136979 e!4136983)))

(declare-fun c!1277283 () Bool)

(assert (=> b!6861735 (= c!1277283 (is-Union!16690 (ite c!1277099 (regTwo!33893 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (regTwo!33892 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))))))))

(declare-fun b!6861736 () Bool)

(declare-fun e!4136981 () Bool)

(declare-fun e!4136984 () Bool)

(assert (=> b!6861736 (= e!4136981 e!4136984)))

(declare-fun res!2799827 () Bool)

(assert (=> b!6861736 (=> (not res!2799827) (not e!4136984))))

(declare-fun call!625012 () Bool)

(assert (=> b!6861736 (= res!2799827 call!625012)))

(declare-fun b!6861737 () Bool)

(declare-fun e!4136982 () Bool)

(assert (=> b!6861737 (= e!4136979 e!4136982)))

(declare-fun res!2799826 () Bool)

(assert (=> b!6861737 (= res!2799826 (not (nullable!6651 (reg!17019 (ite c!1277099 (regTwo!33893 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (regTwo!33892 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))))))))))

(assert (=> b!6861737 (=> (not res!2799826) (not e!4136982))))

(declare-fun b!6861738 () Bool)

(assert (=> b!6861738 (= e!4136980 e!4136979)))

(declare-fun c!1277282 () Bool)

(assert (=> b!6861738 (= c!1277282 (is-Star!16690 (ite c!1277099 (regTwo!33893 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (regTwo!33892 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))))))))

(declare-fun b!6861739 () Bool)

(declare-fun res!2799829 () Bool)

(assert (=> b!6861739 (=> res!2799829 e!4136981)))

(assert (=> b!6861739 (= res!2799829 (not (is-Concat!25535 (ite c!1277099 (regTwo!33893 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (regTwo!33892 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292)))))))))

(assert (=> b!6861739 (= e!4136983 e!4136981)))

(declare-fun bm!625007 () Bool)

(declare-fun call!625013 () Bool)

(assert (=> bm!625007 (= call!625013 (validRegex!8426 (ite c!1277283 (regTwo!33893 (ite c!1277099 (regTwo!33893 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (regTwo!33892 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))))) (regTwo!33892 (ite c!1277099 (regTwo!33893 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (regTwo!33892 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))))))))))

(declare-fun b!6861740 () Bool)

(declare-fun call!625014 () Bool)

(assert (=> b!6861740 (= e!4136982 call!625014)))

(declare-fun bm!625008 () Bool)

(assert (=> bm!625008 (= call!625012 call!625014)))

(declare-fun b!6861741 () Bool)

(declare-fun e!4136978 () Bool)

(assert (=> b!6861741 (= e!4136978 call!625013)))

(declare-fun b!6861742 () Bool)

(assert (=> b!6861742 (= e!4136984 call!625013)))

(declare-fun bm!625009 () Bool)

(assert (=> bm!625009 (= call!625014 (validRegex!8426 (ite c!1277282 (reg!17019 (ite c!1277099 (regTwo!33893 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (regTwo!33892 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))))) (ite c!1277283 (regOne!33893 (ite c!1277099 (regTwo!33893 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (regTwo!33892 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))))) (regOne!33892 (ite c!1277099 (regTwo!33893 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292))) (regTwo!33892 (ite c!1276990 (regTwo!33893 r!7292) (regTwo!33892 r!7292)))))))))))

(declare-fun b!6861743 () Bool)

(declare-fun res!2799828 () Bool)

(assert (=> b!6861743 (=> (not res!2799828) (not e!4136978))))

(assert (=> b!6861743 (= res!2799828 call!625012)))

(assert (=> b!6861743 (= e!4136983 e!4136978)))

(assert (= (and d!2155967 (not res!2799825)) b!6861738))

(assert (= (and b!6861738 c!1277282) b!6861737))

(assert (= (and b!6861738 (not c!1277282)) b!6861735))

(assert (= (and b!6861737 res!2799826) b!6861740))

(assert (= (and b!6861735 c!1277283) b!6861743))

(assert (= (and b!6861735 (not c!1277283)) b!6861739))

(assert (= (and b!6861743 res!2799828) b!6861741))

(assert (= (and b!6861739 (not res!2799829)) b!6861736))

(assert (= (and b!6861736 res!2799827) b!6861742))

(assert (= (or b!6861741 b!6861742) bm!625007))

(assert (= (or b!6861743 b!6861736) bm!625008))

(assert (= (or b!6861740 bm!625008) bm!625009))

(declare-fun m!7596118 () Bool)

(assert (=> b!6861737 m!7596118))

(declare-fun m!7596120 () Bool)

(assert (=> bm!625007 m!7596120))

(declare-fun m!7596122 () Bool)

(assert (=> bm!625009 m!7596122))

(assert (=> bm!624892 d!2155967))

(declare-fun b!6861747 () Bool)

(declare-fun e!4136985 () Bool)

(declare-fun tp!1881710 () Bool)

(declare-fun tp!1881711 () Bool)

(assert (=> b!6861747 (= e!4136985 (and tp!1881710 tp!1881711))))

(declare-fun b!6861746 () Bool)

(declare-fun tp!1881709 () Bool)

(assert (=> b!6861746 (= e!4136985 tp!1881709)))

(declare-fun b!6861744 () Bool)

(assert (=> b!6861744 (= e!4136985 tp_is_empty!42633)))

(assert (=> b!6860919 (= tp!1881439 e!4136985)))

(declare-fun b!6861745 () Bool)

(declare-fun tp!1881712 () Bool)

(declare-fun tp!1881708 () Bool)

(assert (=> b!6861745 (= e!4136985 (and tp!1881712 tp!1881708))))

(assert (= (and b!6860919 (is-ElementMatch!16690 (regOne!33892 (h!72693 (exprs!6574 (h!72695 zl!343)))))) b!6861744))

(assert (= (and b!6860919 (is-Concat!25535 (regOne!33892 (h!72693 (exprs!6574 (h!72695 zl!343)))))) b!6861745))

(assert (= (and b!6860919 (is-Star!16690 (regOne!33892 (h!72693 (exprs!6574 (h!72695 zl!343)))))) b!6861746))

(assert (= (and b!6860919 (is-Union!16690 (regOne!33892 (h!72693 (exprs!6574 (h!72695 zl!343)))))) b!6861747))

(declare-fun b!6861751 () Bool)

(declare-fun e!4136986 () Bool)

(declare-fun tp!1881715 () Bool)

(declare-fun tp!1881716 () Bool)

(assert (=> b!6861751 (= e!4136986 (and tp!1881715 tp!1881716))))

(declare-fun b!6861750 () Bool)

(declare-fun tp!1881714 () Bool)

(assert (=> b!6861750 (= e!4136986 tp!1881714)))

(declare-fun b!6861748 () Bool)

(assert (=> b!6861748 (= e!4136986 tp_is_empty!42633)))

(assert (=> b!6860919 (= tp!1881435 e!4136986)))

(declare-fun b!6861749 () Bool)

(declare-fun tp!1881717 () Bool)

(declare-fun tp!1881713 () Bool)

(assert (=> b!6861749 (= e!4136986 (and tp!1881717 tp!1881713))))

(assert (= (and b!6860919 (is-ElementMatch!16690 (regTwo!33892 (h!72693 (exprs!6574 (h!72695 zl!343)))))) b!6861748))

(assert (= (and b!6860919 (is-Concat!25535 (regTwo!33892 (h!72693 (exprs!6574 (h!72695 zl!343)))))) b!6861749))

(assert (= (and b!6860919 (is-Star!16690 (regTwo!33892 (h!72693 (exprs!6574 (h!72695 zl!343)))))) b!6861750))

(assert (= (and b!6860919 (is-Union!16690 (regTwo!33892 (h!72693 (exprs!6574 (h!72695 zl!343)))))) b!6861751))

(declare-fun b!6861752 () Bool)

(declare-fun e!4136987 () Bool)

(declare-fun tp!1881718 () Bool)

(declare-fun tp!1881719 () Bool)

(assert (=> b!6861752 (= e!4136987 (and tp!1881718 tp!1881719))))

(assert (=> b!6860772 (= tp!1881404 e!4136987)))

(assert (= (and b!6860772 (is-Cons!66245 (exprs!6574 (h!72695 res!2799513)))) b!6861752))

(declare-fun b!6861756 () Bool)

(declare-fun e!4136988 () Bool)

(declare-fun tp!1881722 () Bool)

(declare-fun tp!1881723 () Bool)

(assert (=> b!6861756 (= e!4136988 (and tp!1881722 tp!1881723))))

(declare-fun b!6861755 () Bool)

(declare-fun tp!1881721 () Bool)

(assert (=> b!6861755 (= e!4136988 tp!1881721)))

(declare-fun b!6861753 () Bool)

(assert (=> b!6861753 (= e!4136988 tp_is_empty!42633)))

(assert (=> b!6860921 (= tp!1881437 e!4136988)))

(declare-fun b!6861754 () Bool)

(declare-fun tp!1881724 () Bool)

(declare-fun tp!1881720 () Bool)

(assert (=> b!6861754 (= e!4136988 (and tp!1881724 tp!1881720))))

(assert (= (and b!6860921 (is-ElementMatch!16690 (regOne!33893 (h!72693 (exprs!6574 (h!72695 zl!343)))))) b!6861753))

(assert (= (and b!6860921 (is-Concat!25535 (regOne!33893 (h!72693 (exprs!6574 (h!72695 zl!343)))))) b!6861754))

(assert (= (and b!6860921 (is-Star!16690 (regOne!33893 (h!72693 (exprs!6574 (h!72695 zl!343)))))) b!6861755))

(assert (= (and b!6860921 (is-Union!16690 (regOne!33893 (h!72693 (exprs!6574 (h!72695 zl!343)))))) b!6861756))

(declare-fun b!6861760 () Bool)

(declare-fun e!4136989 () Bool)

(declare-fun tp!1881727 () Bool)

(declare-fun tp!1881728 () Bool)

(assert (=> b!6861760 (= e!4136989 (and tp!1881727 tp!1881728))))

(declare-fun b!6861759 () Bool)

(declare-fun tp!1881726 () Bool)

(assert (=> b!6861759 (= e!4136989 tp!1881726)))

(declare-fun b!6861757 () Bool)

(assert (=> b!6861757 (= e!4136989 tp_is_empty!42633)))

(assert (=> b!6860921 (= tp!1881438 e!4136989)))

(declare-fun b!6861758 () Bool)

(declare-fun tp!1881729 () Bool)

(declare-fun tp!1881725 () Bool)

(assert (=> b!6861758 (= e!4136989 (and tp!1881729 tp!1881725))))

(assert (= (and b!6860921 (is-ElementMatch!16690 (regTwo!33893 (h!72693 (exprs!6574 (h!72695 zl!343)))))) b!6861757))

(assert (= (and b!6860921 (is-Concat!25535 (regTwo!33893 (h!72693 (exprs!6574 (h!72695 zl!343)))))) b!6861758))

(assert (= (and b!6860921 (is-Star!16690 (regTwo!33893 (h!72693 (exprs!6574 (h!72695 zl!343)))))) b!6861759))

(assert (= (and b!6860921 (is-Union!16690 (regTwo!33893 (h!72693 (exprs!6574 (h!72695 zl!343)))))) b!6861760))

(declare-fun b!6861764 () Bool)

(declare-fun e!4136990 () Bool)

(declare-fun tp!1881732 () Bool)

(declare-fun tp!1881733 () Bool)

(assert (=> b!6861764 (= e!4136990 (and tp!1881732 tp!1881733))))

(declare-fun b!6861763 () Bool)

(declare-fun tp!1881731 () Bool)

(assert (=> b!6861763 (= e!4136990 tp!1881731)))

(declare-fun b!6861761 () Bool)

(assert (=> b!6861761 (= e!4136990 tp_is_empty!42633)))

(assert (=> b!6860906 (= tp!1881418 e!4136990)))

(declare-fun b!6861762 () Bool)

(declare-fun tp!1881734 () Bool)

(declare-fun tp!1881730 () Bool)

(assert (=> b!6861762 (= e!4136990 (and tp!1881734 tp!1881730))))

(assert (= (and b!6860906 (is-ElementMatch!16690 (regOne!33893 (reg!17019 (regOne!33893 r!7292))))) b!6861761))

(assert (= (and b!6860906 (is-Concat!25535 (regOne!33893 (reg!17019 (regOne!33893 r!7292))))) b!6861762))

(assert (= (and b!6860906 (is-Star!16690 (regOne!33893 (reg!17019 (regOne!33893 r!7292))))) b!6861763))

(assert (= (and b!6860906 (is-Union!16690 (regOne!33893 (reg!17019 (regOne!33893 r!7292))))) b!6861764))

(declare-fun b!6861768 () Bool)

(declare-fun e!4136991 () Bool)

(declare-fun tp!1881737 () Bool)

(declare-fun tp!1881738 () Bool)

(assert (=> b!6861768 (= e!4136991 (and tp!1881737 tp!1881738))))

(declare-fun b!6861767 () Bool)

(declare-fun tp!1881736 () Bool)

(assert (=> b!6861767 (= e!4136991 tp!1881736)))

(declare-fun b!6861765 () Bool)

(assert (=> b!6861765 (= e!4136991 tp_is_empty!42633)))

(assert (=> b!6860906 (= tp!1881419 e!4136991)))

(declare-fun b!6861766 () Bool)

(declare-fun tp!1881739 () Bool)

(declare-fun tp!1881735 () Bool)

(assert (=> b!6861766 (= e!4136991 (and tp!1881739 tp!1881735))))

(assert (= (and b!6860906 (is-ElementMatch!16690 (regTwo!33893 (reg!17019 (regOne!33893 r!7292))))) b!6861765))

(assert (= (and b!6860906 (is-Concat!25535 (regTwo!33893 (reg!17019 (regOne!33893 r!7292))))) b!6861766))

(assert (= (and b!6860906 (is-Star!16690 (regTwo!33893 (reg!17019 (regOne!33893 r!7292))))) b!6861767))

(assert (= (and b!6860906 (is-Union!16690 (regTwo!33893 (reg!17019 (regOne!33893 r!7292))))) b!6861768))

(declare-fun b!6861772 () Bool)

(declare-fun e!4136992 () Bool)

(declare-fun tp!1881742 () Bool)

(declare-fun tp!1881743 () Bool)

(assert (=> b!6861772 (= e!4136992 (and tp!1881742 tp!1881743))))

(declare-fun b!6861771 () Bool)

(declare-fun tp!1881741 () Bool)

(assert (=> b!6861771 (= e!4136992 tp!1881741)))

(declare-fun b!6861769 () Bool)

(assert (=> b!6861769 (= e!4136992 tp_is_empty!42633)))

(assert (=> b!6861008 (= tp!1881553 e!4136992)))

(declare-fun b!6861770 () Bool)

(declare-fun tp!1881744 () Bool)

(declare-fun tp!1881740 () Bool)

(assert (=> b!6861770 (= e!4136992 (and tp!1881744 tp!1881740))))

(assert (= (and b!6861008 (is-ElementMatch!16690 (regOne!33892 (reg!17019 (regTwo!33892 r!7292))))) b!6861769))

(assert (= (and b!6861008 (is-Concat!25535 (regOne!33892 (reg!17019 (regTwo!33892 r!7292))))) b!6861770))

(assert (= (and b!6861008 (is-Star!16690 (regOne!33892 (reg!17019 (regTwo!33892 r!7292))))) b!6861771))

(assert (= (and b!6861008 (is-Union!16690 (regOne!33892 (reg!17019 (regTwo!33892 r!7292))))) b!6861772))

(declare-fun b!6861776 () Bool)

(declare-fun e!4136993 () Bool)

(declare-fun tp!1881747 () Bool)

(declare-fun tp!1881748 () Bool)

(assert (=> b!6861776 (= e!4136993 (and tp!1881747 tp!1881748))))

(declare-fun b!6861775 () Bool)

(declare-fun tp!1881746 () Bool)

(assert (=> b!6861775 (= e!4136993 tp!1881746)))

(declare-fun b!6861773 () Bool)

(assert (=> b!6861773 (= e!4136993 tp_is_empty!42633)))

(assert (=> b!6861008 (= tp!1881549 e!4136993)))

(declare-fun b!6861774 () Bool)

(declare-fun tp!1881749 () Bool)

(declare-fun tp!1881745 () Bool)

(assert (=> b!6861774 (= e!4136993 (and tp!1881749 tp!1881745))))

(assert (= (and b!6861008 (is-ElementMatch!16690 (regTwo!33892 (reg!17019 (regTwo!33892 r!7292))))) b!6861773))

(assert (= (and b!6861008 (is-Concat!25535 (regTwo!33892 (reg!17019 (regTwo!33892 r!7292))))) b!6861774))

(assert (= (and b!6861008 (is-Star!16690 (regTwo!33892 (reg!17019 (regTwo!33892 r!7292))))) b!6861775))

(assert (= (and b!6861008 (is-Union!16690 (regTwo!33892 (reg!17019 (regTwo!33892 r!7292))))) b!6861776))

(declare-fun b!6861780 () Bool)

(declare-fun e!4136994 () Bool)

(declare-fun tp!1881752 () Bool)

(declare-fun tp!1881753 () Bool)

(assert (=> b!6861780 (= e!4136994 (and tp!1881752 tp!1881753))))

(declare-fun b!6861779 () Bool)

(declare-fun tp!1881751 () Bool)

(assert (=> b!6861779 (= e!4136994 tp!1881751)))

(declare-fun b!6861777 () Bool)

(assert (=> b!6861777 (= e!4136994 tp_is_empty!42633)))

(assert (=> b!6860904 (= tp!1881420 e!4136994)))

(declare-fun b!6861778 () Bool)

(declare-fun tp!1881754 () Bool)

(declare-fun tp!1881750 () Bool)

(assert (=> b!6861778 (= e!4136994 (and tp!1881754 tp!1881750))))

(assert (= (and b!6860904 (is-ElementMatch!16690 (regOne!33892 (reg!17019 (regOne!33893 r!7292))))) b!6861777))

(assert (= (and b!6860904 (is-Concat!25535 (regOne!33892 (reg!17019 (regOne!33893 r!7292))))) b!6861778))

(assert (= (and b!6860904 (is-Star!16690 (regOne!33892 (reg!17019 (regOne!33893 r!7292))))) b!6861779))

(assert (= (and b!6860904 (is-Union!16690 (regOne!33892 (reg!17019 (regOne!33893 r!7292))))) b!6861780))

(declare-fun b!6861784 () Bool)

(declare-fun e!4136995 () Bool)

(declare-fun tp!1881757 () Bool)

(declare-fun tp!1881758 () Bool)

(assert (=> b!6861784 (= e!4136995 (and tp!1881757 tp!1881758))))

(declare-fun b!6861783 () Bool)

(declare-fun tp!1881756 () Bool)

(assert (=> b!6861783 (= e!4136995 tp!1881756)))

(declare-fun b!6861781 () Bool)

(assert (=> b!6861781 (= e!4136995 tp_is_empty!42633)))

(assert (=> b!6860904 (= tp!1881416 e!4136995)))

(declare-fun b!6861782 () Bool)

(declare-fun tp!1881759 () Bool)

(declare-fun tp!1881755 () Bool)

(assert (=> b!6861782 (= e!4136995 (and tp!1881759 tp!1881755))))

(assert (= (and b!6860904 (is-ElementMatch!16690 (regTwo!33892 (reg!17019 (regOne!33893 r!7292))))) b!6861781))

(assert (= (and b!6860904 (is-Concat!25535 (regTwo!33892 (reg!17019 (regOne!33893 r!7292))))) b!6861782))

(assert (= (and b!6860904 (is-Star!16690 (regTwo!33892 (reg!17019 (regOne!33893 r!7292))))) b!6861783))

(assert (= (and b!6860904 (is-Union!16690 (regTwo!33892 (reg!17019 (regOne!33893 r!7292))))) b!6861784))

(declare-fun b!6861788 () Bool)

(declare-fun e!4136996 () Bool)

(declare-fun tp!1881762 () Bool)

(declare-fun tp!1881763 () Bool)

(assert (=> b!6861788 (= e!4136996 (and tp!1881762 tp!1881763))))

(declare-fun b!6861787 () Bool)

(declare-fun tp!1881761 () Bool)

(assert (=> b!6861787 (= e!4136996 tp!1881761)))

(declare-fun b!6861785 () Bool)

(assert (=> b!6861785 (= e!4136996 tp_is_empty!42633)))

(assert (=> b!6861000 (= tp!1881538 e!4136996)))

(declare-fun b!6861786 () Bool)

(declare-fun tp!1881764 () Bool)

(declare-fun tp!1881760 () Bool)

(assert (=> b!6861786 (= e!4136996 (and tp!1881764 tp!1881760))))

(assert (= (and b!6861000 (is-ElementMatch!16690 (reg!17019 (regTwo!33893 (regTwo!33892 r!7292))))) b!6861785))

(assert (= (and b!6861000 (is-Concat!25535 (reg!17019 (regTwo!33893 (regTwo!33892 r!7292))))) b!6861786))

(assert (= (and b!6861000 (is-Star!16690 (reg!17019 (regTwo!33893 (regTwo!33892 r!7292))))) b!6861787))

(assert (= (and b!6861000 (is-Union!16690 (reg!17019 (regTwo!33893 (regTwo!33892 r!7292))))) b!6861788))

(declare-fun b!6861792 () Bool)

(declare-fun e!4136997 () Bool)

(declare-fun tp!1881767 () Bool)

(declare-fun tp!1881768 () Bool)

(assert (=> b!6861792 (= e!4136997 (and tp!1881767 tp!1881768))))

(declare-fun b!6861791 () Bool)

(declare-fun tp!1881766 () Bool)

(assert (=> b!6861791 (= e!4136997 tp!1881766)))

(declare-fun b!6861789 () Bool)

(assert (=> b!6861789 (= e!4136997 tp_is_empty!42633)))

(assert (=> b!6860991 (= tp!1881531 e!4136997)))

(declare-fun b!6861790 () Bool)

(declare-fun tp!1881769 () Bool)

(declare-fun tp!1881765 () Bool)

(assert (=> b!6861790 (= e!4136997 (and tp!1881769 tp!1881765))))

(assert (= (and b!6860991 (is-ElementMatch!16690 (regOne!33892 (regTwo!33893 (reg!17019 r!7292))))) b!6861789))

(assert (= (and b!6860991 (is-Concat!25535 (regOne!33892 (regTwo!33893 (reg!17019 r!7292))))) b!6861790))

(assert (= (and b!6860991 (is-Star!16690 (regOne!33892 (regTwo!33893 (reg!17019 r!7292))))) b!6861791))

(assert (= (and b!6860991 (is-Union!16690 (regOne!33892 (regTwo!33893 (reg!17019 r!7292))))) b!6861792))

(declare-fun b!6861796 () Bool)

(declare-fun e!4136998 () Bool)

(declare-fun tp!1881772 () Bool)

(declare-fun tp!1881773 () Bool)

(assert (=> b!6861796 (= e!4136998 (and tp!1881772 tp!1881773))))

(declare-fun b!6861795 () Bool)

(declare-fun tp!1881771 () Bool)

(assert (=> b!6861795 (= e!4136998 tp!1881771)))

(declare-fun b!6861793 () Bool)

(assert (=> b!6861793 (= e!4136998 tp_is_empty!42633)))

(assert (=> b!6860991 (= tp!1881527 e!4136998)))

(declare-fun b!6861794 () Bool)

(declare-fun tp!1881774 () Bool)

(declare-fun tp!1881770 () Bool)

(assert (=> b!6861794 (= e!4136998 (and tp!1881774 tp!1881770))))

(assert (= (and b!6860991 (is-ElementMatch!16690 (regTwo!33892 (regTwo!33893 (reg!17019 r!7292))))) b!6861793))

(assert (= (and b!6860991 (is-Concat!25535 (regTwo!33892 (regTwo!33893 (reg!17019 r!7292))))) b!6861794))

(assert (= (and b!6860991 (is-Star!16690 (regTwo!33892 (regTwo!33893 (reg!17019 r!7292))))) b!6861795))

(assert (= (and b!6860991 (is-Union!16690 (regTwo!33892 (regTwo!33893 (reg!17019 r!7292))))) b!6861796))

(declare-fun b!6861800 () Bool)

(declare-fun e!4136999 () Bool)

(declare-fun tp!1881777 () Bool)

(declare-fun tp!1881778 () Bool)

(assert (=> b!6861800 (= e!4136999 (and tp!1881777 tp!1881778))))

(declare-fun b!6861799 () Bool)

(declare-fun tp!1881776 () Bool)

(assert (=> b!6861799 (= e!4136999 tp!1881776)))

(declare-fun b!6861797 () Bool)

(assert (=> b!6861797 (= e!4136999 tp_is_empty!42633)))

(assert (=> b!6860914 (= tp!1881429 e!4136999)))

(declare-fun b!6861798 () Bool)

(declare-fun tp!1881779 () Bool)

(declare-fun tp!1881775 () Bool)

(assert (=> b!6861798 (= e!4136999 (and tp!1881779 tp!1881775))))

(assert (= (and b!6860914 (is-ElementMatch!16690 (reg!17019 (regTwo!33892 (regOne!33893 r!7292))))) b!6861797))

(assert (= (and b!6860914 (is-Concat!25535 (reg!17019 (regTwo!33892 (regOne!33893 r!7292))))) b!6861798))

(assert (= (and b!6860914 (is-Star!16690 (reg!17019 (regTwo!33892 (regOne!33893 r!7292))))) b!6861799))

(assert (= (and b!6860914 (is-Union!16690 (reg!17019 (regTwo!33892 (regOne!33893 r!7292))))) b!6861800))

(declare-fun b!6861804 () Bool)

(declare-fun e!4137000 () Bool)

(declare-fun tp!1881782 () Bool)

(declare-fun tp!1881783 () Bool)

(assert (=> b!6861804 (= e!4137000 (and tp!1881782 tp!1881783))))

(declare-fun b!6861803 () Bool)

(declare-fun tp!1881781 () Bool)

(assert (=> b!6861803 (= e!4137000 tp!1881781)))

(declare-fun b!6861801 () Bool)

(assert (=> b!6861801 (= e!4137000 tp_is_empty!42633)))

(assert (=> b!6860962 (= tp!1881494 e!4137000)))

(declare-fun b!6861802 () Bool)

(declare-fun tp!1881784 () Bool)

(declare-fun tp!1881780 () Bool)

(assert (=> b!6861802 (= e!4137000 (and tp!1881784 tp!1881780))))

(assert (= (and b!6860962 (is-ElementMatch!16690 (regOne!33892 (regTwo!33892 (reg!17019 r!7292))))) b!6861801))

(assert (= (and b!6860962 (is-Concat!25535 (regOne!33892 (regTwo!33892 (reg!17019 r!7292))))) b!6861802))

(assert (= (and b!6860962 (is-Star!16690 (regOne!33892 (regTwo!33892 (reg!17019 r!7292))))) b!6861803))

(assert (= (and b!6860962 (is-Union!16690 (regOne!33892 (regTwo!33892 (reg!17019 r!7292))))) b!6861804))

(declare-fun b!6861808 () Bool)

(declare-fun e!4137001 () Bool)

(declare-fun tp!1881787 () Bool)

(declare-fun tp!1881788 () Bool)

(assert (=> b!6861808 (= e!4137001 (and tp!1881787 tp!1881788))))

(declare-fun b!6861807 () Bool)

(declare-fun tp!1881786 () Bool)

(assert (=> b!6861807 (= e!4137001 tp!1881786)))

(declare-fun b!6861805 () Bool)

(assert (=> b!6861805 (= e!4137001 tp_is_empty!42633)))

(assert (=> b!6860962 (= tp!1881490 e!4137001)))

(declare-fun b!6861806 () Bool)

(declare-fun tp!1881789 () Bool)

(declare-fun tp!1881785 () Bool)

(assert (=> b!6861806 (= e!4137001 (and tp!1881789 tp!1881785))))

(assert (= (and b!6860962 (is-ElementMatch!16690 (regTwo!33892 (regTwo!33892 (reg!17019 r!7292))))) b!6861805))

(assert (= (and b!6860962 (is-Concat!25535 (regTwo!33892 (regTwo!33892 (reg!17019 r!7292))))) b!6861806))

(assert (= (and b!6860962 (is-Star!16690 (regTwo!33892 (regTwo!33892 (reg!17019 r!7292))))) b!6861807))

(assert (= (and b!6860962 (is-Union!16690 (regTwo!33892 (regTwo!33892 (reg!17019 r!7292))))) b!6861808))

(declare-fun b!6861812 () Bool)

(declare-fun e!4137002 () Bool)

(declare-fun tp!1881792 () Bool)

(declare-fun tp!1881793 () Bool)

(assert (=> b!6861812 (= e!4137002 (and tp!1881792 tp!1881793))))

(declare-fun b!6861811 () Bool)

(declare-fun tp!1881791 () Bool)

(assert (=> b!6861811 (= e!4137002 tp!1881791)))

(declare-fun b!6861809 () Bool)

(assert (=> b!6861809 (= e!4137002 tp_is_empty!42633)))

(assert (=> b!6861010 (= tp!1881551 e!4137002)))

(declare-fun b!6861810 () Bool)

(declare-fun tp!1881794 () Bool)

(declare-fun tp!1881790 () Bool)

(assert (=> b!6861810 (= e!4137002 (and tp!1881794 tp!1881790))))

(assert (= (and b!6861010 (is-ElementMatch!16690 (regOne!33893 (reg!17019 (regTwo!33892 r!7292))))) b!6861809))

(assert (= (and b!6861010 (is-Concat!25535 (regOne!33893 (reg!17019 (regTwo!33892 r!7292))))) b!6861810))

(assert (= (and b!6861010 (is-Star!16690 (regOne!33893 (reg!17019 (regTwo!33892 r!7292))))) b!6861811))

(assert (= (and b!6861010 (is-Union!16690 (regOne!33893 (reg!17019 (regTwo!33892 r!7292))))) b!6861812))

(declare-fun b!6861816 () Bool)

(declare-fun e!4137003 () Bool)

(declare-fun tp!1881797 () Bool)

(declare-fun tp!1881798 () Bool)

(assert (=> b!6861816 (= e!4137003 (and tp!1881797 tp!1881798))))

(declare-fun b!6861815 () Bool)

(declare-fun tp!1881796 () Bool)

(assert (=> b!6861815 (= e!4137003 tp!1881796)))

(declare-fun b!6861813 () Bool)

(assert (=> b!6861813 (= e!4137003 tp_is_empty!42633)))

(assert (=> b!6861010 (= tp!1881552 e!4137003)))

(declare-fun b!6861814 () Bool)

(declare-fun tp!1881799 () Bool)

(declare-fun tp!1881795 () Bool)

(assert (=> b!6861814 (= e!4137003 (and tp!1881799 tp!1881795))))

(assert (= (and b!6861010 (is-ElementMatch!16690 (regTwo!33893 (reg!17019 (regTwo!33892 r!7292))))) b!6861813))

(assert (= (and b!6861010 (is-Concat!25535 (regTwo!33893 (reg!17019 (regTwo!33892 r!7292))))) b!6861814))

(assert (= (and b!6861010 (is-Star!16690 (regTwo!33893 (reg!17019 (regTwo!33892 r!7292))))) b!6861815))

(assert (= (and b!6861010 (is-Union!16690 (regTwo!33893 (reg!17019 (regTwo!33892 r!7292))))) b!6861816))

(declare-fun b!6861820 () Bool)

(declare-fun e!4137004 () Bool)

(declare-fun tp!1881802 () Bool)

(declare-fun tp!1881803 () Bool)

(assert (=> b!6861820 (= e!4137004 (and tp!1881802 tp!1881803))))

(declare-fun b!6861819 () Bool)

(declare-fun tp!1881801 () Bool)

(assert (=> b!6861819 (= e!4137004 tp!1881801)))

(declare-fun b!6861817 () Bool)

(assert (=> b!6861817 (= e!4137004 tp_is_empty!42633)))

(assert (=> b!6860937 (= tp!1881463 e!4137004)))

(declare-fun b!6861818 () Bool)

(declare-fun tp!1881804 () Bool)

(declare-fun tp!1881800 () Bool)

(assert (=> b!6861818 (= e!4137004 (and tp!1881804 tp!1881800))))

(assert (= (and b!6860937 (is-ElementMatch!16690 (regOne!33892 (reg!17019 (regOne!33892 r!7292))))) b!6861817))

(assert (= (and b!6860937 (is-Concat!25535 (regOne!33892 (reg!17019 (regOne!33892 r!7292))))) b!6861818))

(assert (= (and b!6860937 (is-Star!16690 (regOne!33892 (reg!17019 (regOne!33892 r!7292))))) b!6861819))

(assert (= (and b!6860937 (is-Union!16690 (regOne!33892 (reg!17019 (regOne!33892 r!7292))))) b!6861820))

(declare-fun b!6861824 () Bool)

(declare-fun e!4137005 () Bool)

(declare-fun tp!1881807 () Bool)

(declare-fun tp!1881808 () Bool)

(assert (=> b!6861824 (= e!4137005 (and tp!1881807 tp!1881808))))

(declare-fun b!6861823 () Bool)

(declare-fun tp!1881806 () Bool)

(assert (=> b!6861823 (= e!4137005 tp!1881806)))

(declare-fun b!6861821 () Bool)

(assert (=> b!6861821 (= e!4137005 tp_is_empty!42633)))

(assert (=> b!6860937 (= tp!1881459 e!4137005)))

(declare-fun b!6861822 () Bool)

(declare-fun tp!1881809 () Bool)

(declare-fun tp!1881805 () Bool)

(assert (=> b!6861822 (= e!4137005 (and tp!1881809 tp!1881805))))

(assert (= (and b!6860937 (is-ElementMatch!16690 (regTwo!33892 (reg!17019 (regOne!33892 r!7292))))) b!6861821))

(assert (= (and b!6860937 (is-Concat!25535 (regTwo!33892 (reg!17019 (regOne!33892 r!7292))))) b!6861822))

(assert (= (and b!6860937 (is-Star!16690 (regTwo!33892 (reg!17019 (regOne!33892 r!7292))))) b!6861823))

(assert (= (and b!6860937 (is-Union!16690 (regTwo!33892 (reg!17019 (regOne!33892 r!7292))))) b!6861824))

(declare-fun b!6861828 () Bool)

(declare-fun e!4137006 () Bool)

(declare-fun tp!1881812 () Bool)

(declare-fun tp!1881813 () Bool)

(assert (=> b!6861828 (= e!4137006 (and tp!1881812 tp!1881813))))

(declare-fun b!6861827 () Bool)

(declare-fun tp!1881811 () Bool)

(assert (=> b!6861827 (= e!4137006 tp!1881811)))

(declare-fun b!6861825 () Bool)

(assert (=> b!6861825 (= e!4137006 tp_is_empty!42633)))

(assert (=> b!6860946 (= tp!1881470 e!4137006)))

(declare-fun b!6861826 () Bool)

(declare-fun tp!1881814 () Bool)

(declare-fun tp!1881810 () Bool)

(assert (=> b!6861826 (= e!4137006 (and tp!1881814 tp!1881810))))

(assert (= (and b!6860946 (is-ElementMatch!16690 (reg!17019 (regTwo!33893 (regOne!33893 r!7292))))) b!6861825))

(assert (= (and b!6860946 (is-Concat!25535 (reg!17019 (regTwo!33893 (regOne!33893 r!7292))))) b!6861826))

(assert (= (and b!6860946 (is-Star!16690 (reg!17019 (regTwo!33893 (regOne!33893 r!7292))))) b!6861827))

(assert (= (and b!6860946 (is-Union!16690 (reg!17019 (regTwo!33893 (regOne!33893 r!7292))))) b!6861828))

(declare-fun b!6861832 () Bool)

(declare-fun e!4137007 () Bool)

(declare-fun tp!1881817 () Bool)

(declare-fun tp!1881818 () Bool)

(assert (=> b!6861832 (= e!4137007 (and tp!1881817 tp!1881818))))

(declare-fun b!6861831 () Bool)

(declare-fun tp!1881816 () Bool)

(assert (=> b!6861831 (= e!4137007 tp!1881816)))

(declare-fun b!6861829 () Bool)

(assert (=> b!6861829 (= e!4137007 tp_is_empty!42633)))

(assert (=> b!6860984 (= tp!1881518 e!4137007)))

(declare-fun b!6861830 () Bool)

(declare-fun tp!1881819 () Bool)

(declare-fun tp!1881815 () Bool)

(assert (=> b!6861830 (= e!4137007 (and tp!1881819 tp!1881815))))

(assert (= (and b!6860984 (is-ElementMatch!16690 (reg!17019 (regTwo!33892 (regTwo!33893 r!7292))))) b!6861829))

(assert (= (and b!6860984 (is-Concat!25535 (reg!17019 (regTwo!33892 (regTwo!33893 r!7292))))) b!6861830))

(assert (= (and b!6860984 (is-Star!16690 (reg!17019 (regTwo!33892 (regTwo!33893 r!7292))))) b!6861831))

(assert (= (and b!6860984 (is-Union!16690 (reg!17019 (regTwo!33892 (regTwo!33893 r!7292))))) b!6861832))

(declare-fun b!6861836 () Bool)

(declare-fun e!4137008 () Bool)

(declare-fun tp!1881822 () Bool)

(declare-fun tp!1881823 () Bool)

(assert (=> b!6861836 (= e!4137008 (and tp!1881822 tp!1881823))))

(declare-fun b!6861835 () Bool)

(declare-fun tp!1881821 () Bool)

(assert (=> b!6861835 (= e!4137008 tp!1881821)))

(declare-fun b!6861833 () Bool)

(assert (=> b!6861833 (= e!4137008 tp_is_empty!42633)))

(assert (=> b!6860897 (= tp!1881407 e!4137008)))

(declare-fun b!6861834 () Bool)

(declare-fun tp!1881824 () Bool)

(declare-fun tp!1881820 () Bool)

(assert (=> b!6861834 (= e!4137008 (and tp!1881824 tp!1881820))))

(assert (= (and b!6860897 (is-ElementMatch!16690 (reg!17019 (regOne!33892 (regOne!33892 r!7292))))) b!6861833))

(assert (= (and b!6860897 (is-Concat!25535 (reg!17019 (regOne!33892 (regOne!33892 r!7292))))) b!6861834))

(assert (= (and b!6860897 (is-Star!16690 (reg!17019 (regOne!33892 (regOne!33892 r!7292))))) b!6861835))

(assert (= (and b!6860897 (is-Union!16690 (reg!17019 (regOne!33892 (regOne!33892 r!7292))))) b!6861836))

(declare-fun b!6861840 () Bool)

(declare-fun e!4137009 () Bool)

(declare-fun tp!1881827 () Bool)

(declare-fun tp!1881828 () Bool)

(assert (=> b!6861840 (= e!4137009 (and tp!1881827 tp!1881828))))

(declare-fun b!6861839 () Bool)

(declare-fun tp!1881826 () Bool)

(assert (=> b!6861839 (= e!4137009 tp!1881826)))

(declare-fun b!6861837 () Bool)

(assert (=> b!6861837 (= e!4137009 tp_is_empty!42633)))

(assert (=> b!6860993 (= tp!1881529 e!4137009)))

(declare-fun b!6861838 () Bool)

(declare-fun tp!1881829 () Bool)

(declare-fun tp!1881825 () Bool)

(assert (=> b!6861838 (= e!4137009 (and tp!1881829 tp!1881825))))

(assert (= (and b!6860993 (is-ElementMatch!16690 (regOne!33893 (regTwo!33893 (reg!17019 r!7292))))) b!6861837))

(assert (= (and b!6860993 (is-Concat!25535 (regOne!33893 (regTwo!33893 (reg!17019 r!7292))))) b!6861838))

(assert (= (and b!6860993 (is-Star!16690 (regOne!33893 (regTwo!33893 (reg!17019 r!7292))))) b!6861839))

(assert (= (and b!6860993 (is-Union!16690 (regOne!33893 (regTwo!33893 (reg!17019 r!7292))))) b!6861840))

(declare-fun b!6861844 () Bool)

(declare-fun e!4137010 () Bool)

(declare-fun tp!1881832 () Bool)

(declare-fun tp!1881833 () Bool)

(assert (=> b!6861844 (= e!4137010 (and tp!1881832 tp!1881833))))

(declare-fun b!6861843 () Bool)

(declare-fun tp!1881831 () Bool)

(assert (=> b!6861843 (= e!4137010 tp!1881831)))

(declare-fun b!6861841 () Bool)

(assert (=> b!6861841 (= e!4137010 tp_is_empty!42633)))

(assert (=> b!6860993 (= tp!1881530 e!4137010)))

(declare-fun b!6861842 () Bool)

(declare-fun tp!1881834 () Bool)

(declare-fun tp!1881830 () Bool)

(assert (=> b!6861842 (= e!4137010 (and tp!1881834 tp!1881830))))

(assert (= (and b!6860993 (is-ElementMatch!16690 (regTwo!33893 (regTwo!33893 (reg!17019 r!7292))))) b!6861841))

(assert (= (and b!6860993 (is-Concat!25535 (regTwo!33893 (regTwo!33893 (reg!17019 r!7292))))) b!6861842))

(assert (= (and b!6860993 (is-Star!16690 (regTwo!33893 (regTwo!33893 (reg!17019 r!7292))))) b!6861843))

(assert (= (and b!6860993 (is-Union!16690 (regTwo!33893 (regTwo!33893 (reg!17019 r!7292))))) b!6861844))

(declare-fun b!6861848 () Bool)

(declare-fun e!4137011 () Bool)

(declare-fun tp!1881837 () Bool)

(declare-fun tp!1881838 () Bool)

(assert (=> b!6861848 (= e!4137011 (and tp!1881837 tp!1881838))))

(declare-fun b!6861847 () Bool)

(declare-fun tp!1881836 () Bool)

(assert (=> b!6861847 (= e!4137011 tp!1881836)))

(declare-fun b!6861845 () Bool)

(assert (=> b!6861845 (= e!4137011 tp_is_empty!42633)))

(assert (=> b!6860975 (= tp!1881511 e!4137011)))

(declare-fun b!6861846 () Bool)

(declare-fun tp!1881839 () Bool)

(declare-fun tp!1881835 () Bool)

(assert (=> b!6861846 (= e!4137011 (and tp!1881839 tp!1881835))))

(assert (= (and b!6860975 (is-ElementMatch!16690 (regOne!33892 (reg!17019 (regTwo!33893 r!7292))))) b!6861845))

(assert (= (and b!6860975 (is-Concat!25535 (regOne!33892 (reg!17019 (regTwo!33893 r!7292))))) b!6861846))

(assert (= (and b!6860975 (is-Star!16690 (regOne!33892 (reg!17019 (regTwo!33893 r!7292))))) b!6861847))

(assert (= (and b!6860975 (is-Union!16690 (regOne!33892 (reg!17019 (regTwo!33893 r!7292))))) b!6861848))

(declare-fun b!6861852 () Bool)

(declare-fun e!4137012 () Bool)

(declare-fun tp!1881842 () Bool)

(declare-fun tp!1881843 () Bool)

(assert (=> b!6861852 (= e!4137012 (and tp!1881842 tp!1881843))))

(declare-fun b!6861851 () Bool)

(declare-fun tp!1881841 () Bool)

(assert (=> b!6861851 (= e!4137012 tp!1881841)))

(declare-fun b!6861849 () Bool)

(assert (=> b!6861849 (= e!4137012 tp_is_empty!42633)))

(assert (=> b!6860975 (= tp!1881507 e!4137012)))

(declare-fun b!6861850 () Bool)

(declare-fun tp!1881844 () Bool)

(declare-fun tp!1881840 () Bool)

(assert (=> b!6861850 (= e!4137012 (and tp!1881844 tp!1881840))))

(assert (= (and b!6860975 (is-ElementMatch!16690 (regTwo!33892 (reg!17019 (regTwo!33893 r!7292))))) b!6861849))

(assert (= (and b!6860975 (is-Concat!25535 (regTwo!33892 (reg!17019 (regTwo!33893 r!7292))))) b!6861850))

(assert (= (and b!6860975 (is-Star!16690 (regTwo!33892 (reg!17019 (regTwo!33893 r!7292))))) b!6861851))

(assert (= (and b!6860975 (is-Union!16690 (regTwo!33892 (reg!17019 (regTwo!33893 r!7292))))) b!6861852))

(declare-fun b!6861856 () Bool)

(declare-fun e!4137013 () Bool)

(declare-fun tp!1881847 () Bool)

(declare-fun tp!1881848 () Bool)

(assert (=> b!6861856 (= e!4137013 (and tp!1881847 tp!1881848))))

(declare-fun b!6861855 () Bool)

(declare-fun tp!1881846 () Bool)

(assert (=> b!6861855 (= e!4137013 tp!1881846)))

(declare-fun b!6861853 () Bool)

(assert (=> b!6861853 (= e!4137013 tp_is_empty!42633)))

(assert (=> b!6860939 (= tp!1881461 e!4137013)))

(declare-fun b!6861854 () Bool)

(declare-fun tp!1881849 () Bool)

(declare-fun tp!1881845 () Bool)

(assert (=> b!6861854 (= e!4137013 (and tp!1881849 tp!1881845))))

(assert (= (and b!6860939 (is-ElementMatch!16690 (regOne!33893 (reg!17019 (regOne!33892 r!7292))))) b!6861853))

(assert (= (and b!6860939 (is-Concat!25535 (regOne!33893 (reg!17019 (regOne!33892 r!7292))))) b!6861854))

(assert (= (and b!6860939 (is-Star!16690 (regOne!33893 (reg!17019 (regOne!33892 r!7292))))) b!6861855))

(assert (= (and b!6860939 (is-Union!16690 (regOne!33893 (reg!17019 (regOne!33892 r!7292))))) b!6861856))

(declare-fun b!6861860 () Bool)

(declare-fun e!4137014 () Bool)

(declare-fun tp!1881852 () Bool)

(declare-fun tp!1881853 () Bool)

(assert (=> b!6861860 (= e!4137014 (and tp!1881852 tp!1881853))))

(declare-fun b!6861859 () Bool)

(declare-fun tp!1881851 () Bool)

(assert (=> b!6861859 (= e!4137014 tp!1881851)))

(declare-fun b!6861857 () Bool)

(assert (=> b!6861857 (= e!4137014 tp_is_empty!42633)))

(assert (=> b!6860939 (= tp!1881462 e!4137014)))

(declare-fun b!6861858 () Bool)

(declare-fun tp!1881854 () Bool)

(declare-fun tp!1881850 () Bool)

(assert (=> b!6861858 (= e!4137014 (and tp!1881854 tp!1881850))))

(assert (= (and b!6860939 (is-ElementMatch!16690 (regTwo!33893 (reg!17019 (regOne!33892 r!7292))))) b!6861857))

(assert (= (and b!6860939 (is-Concat!25535 (regTwo!33893 (reg!17019 (regOne!33892 r!7292))))) b!6861858))

(assert (= (and b!6860939 (is-Star!16690 (regTwo!33893 (reg!17019 (regOne!33892 r!7292))))) b!6861859))

(assert (= (and b!6860939 (is-Union!16690 (regTwo!33893 (reg!17019 (regOne!33892 r!7292))))) b!6861860))

(declare-fun b!6861864 () Bool)

(declare-fun e!4137015 () Bool)

(declare-fun tp!1881857 () Bool)

(declare-fun tp!1881858 () Bool)

(assert (=> b!6861864 (= e!4137015 (and tp!1881857 tp!1881858))))

(declare-fun b!6861863 () Bool)

(declare-fun tp!1881856 () Bool)

(assert (=> b!6861863 (= e!4137015 tp!1881856)))

(declare-fun b!6861861 () Bool)

(assert (=> b!6861861 (= e!4137015 tp_is_empty!42633)))

(assert (=> b!6860930 (= tp!1881450 e!4137015)))

(declare-fun b!6861862 () Bool)

(declare-fun tp!1881859 () Bool)

(declare-fun tp!1881855 () Bool)

(assert (=> b!6861862 (= e!4137015 (and tp!1881859 tp!1881855))))

(assert (= (and b!6860930 (is-ElementMatch!16690 (reg!17019 (regOne!33893 (regOne!33892 r!7292))))) b!6861861))

(assert (= (and b!6860930 (is-Concat!25535 (reg!17019 (regOne!33893 (regOne!33892 r!7292))))) b!6861862))

(assert (= (and b!6860930 (is-Star!16690 (reg!17019 (regOne!33893 (regOne!33892 r!7292))))) b!6861863))

(assert (= (and b!6860930 (is-Union!16690 (reg!17019 (regOne!33893 (regOne!33892 r!7292))))) b!6861864))

(declare-fun b!6861868 () Bool)

(declare-fun e!4137016 () Bool)

(declare-fun tp!1881862 () Bool)

(declare-fun tp!1881863 () Bool)

(assert (=> b!6861868 (= e!4137016 (and tp!1881862 tp!1881863))))

(declare-fun b!6861867 () Bool)

(declare-fun tp!1881861 () Bool)

(assert (=> b!6861867 (= e!4137016 tp!1881861)))

(declare-fun b!6861865 () Bool)

(assert (=> b!6861865 (= e!4137016 tp_is_empty!42633)))

(assert (=> b!6860922 (= tp!1881440 e!4137016)))

(declare-fun b!6861866 () Bool)

(declare-fun tp!1881864 () Bool)

(declare-fun tp!1881860 () Bool)

(assert (=> b!6861866 (= e!4137016 (and tp!1881864 tp!1881860))))

(assert (= (and b!6860922 (is-ElementMatch!16690 (h!72693 (t!380112 (exprs!6574 (h!72695 zl!343)))))) b!6861865))

(assert (= (and b!6860922 (is-Concat!25535 (h!72693 (t!380112 (exprs!6574 (h!72695 zl!343)))))) b!6861866))

(assert (= (and b!6860922 (is-Star!16690 (h!72693 (t!380112 (exprs!6574 (h!72695 zl!343)))))) b!6861867))

(assert (= (and b!6860922 (is-Union!16690 (h!72693 (t!380112 (exprs!6574 (h!72695 zl!343)))))) b!6861868))

(declare-fun b!6861869 () Bool)

(declare-fun e!4137017 () Bool)

(declare-fun tp!1881865 () Bool)

(declare-fun tp!1881866 () Bool)

(assert (=> b!6861869 (= e!4137017 (and tp!1881865 tp!1881866))))

(assert (=> b!6860922 (= tp!1881441 e!4137017)))

(assert (= (and b!6860922 (is-Cons!66245 (t!380112 (t!380112 (exprs!6574 (h!72695 zl!343)))))) b!6861869))

(declare-fun b!6861873 () Bool)

(declare-fun e!4137018 () Bool)

(declare-fun tp!1881869 () Bool)

(declare-fun tp!1881870 () Bool)

(assert (=> b!6861873 (= e!4137018 (and tp!1881869 tp!1881870))))

(declare-fun b!6861872 () Bool)

(declare-fun tp!1881868 () Bool)

(assert (=> b!6861872 (= e!4137018 tp!1881868)))

(declare-fun b!6861870 () Bool)

(assert (=> b!6861870 (= e!4137018 tp_is_empty!42633)))

(assert (=> b!6860968 (= tp!1881498 e!4137018)))

(declare-fun b!6861871 () Bool)

(declare-fun tp!1881871 () Bool)

(declare-fun tp!1881867 () Bool)

(assert (=> b!6861871 (= e!4137018 (and tp!1881871 tp!1881867))))

(assert (= (and b!6860968 (is-ElementMatch!16690 (reg!17019 (regOne!33892 (regTwo!33892 r!7292))))) b!6861870))

(assert (= (and b!6860968 (is-Concat!25535 (reg!17019 (regOne!33892 (regTwo!33892 r!7292))))) b!6861871))

(assert (= (and b!6860968 (is-Star!16690 (reg!17019 (regOne!33892 (regTwo!33892 r!7292))))) b!6861872))

(assert (= (and b!6860968 (is-Union!16690 (reg!17019 (regOne!33892 (regTwo!33892 r!7292))))) b!6861873))

(declare-fun b!6861877 () Bool)

(declare-fun e!4137019 () Bool)

(declare-fun tp!1881874 () Bool)

(declare-fun tp!1881875 () Bool)

(assert (=> b!6861877 (= e!4137019 (and tp!1881874 tp!1881875))))

(declare-fun b!6861876 () Bool)

(declare-fun tp!1881873 () Bool)

(assert (=> b!6861876 (= e!4137019 tp!1881873)))

(declare-fun b!6861874 () Bool)

(assert (=> b!6861874 (= e!4137019 tp_is_empty!42633)))

(assert (=> b!6860977 (= tp!1881509 e!4137019)))

(declare-fun b!6861875 () Bool)

(declare-fun tp!1881876 () Bool)

(declare-fun tp!1881872 () Bool)

(assert (=> b!6861875 (= e!4137019 (and tp!1881876 tp!1881872))))

(assert (= (and b!6860977 (is-ElementMatch!16690 (regOne!33893 (reg!17019 (regTwo!33893 r!7292))))) b!6861874))

(assert (= (and b!6860977 (is-Concat!25535 (regOne!33893 (reg!17019 (regTwo!33893 r!7292))))) b!6861875))

(assert (= (and b!6860977 (is-Star!16690 (regOne!33893 (reg!17019 (regTwo!33893 r!7292))))) b!6861876))

(assert (= (and b!6860977 (is-Union!16690 (regOne!33893 (reg!17019 (regTwo!33893 r!7292))))) b!6861877))

(declare-fun b!6861881 () Bool)

(declare-fun e!4137020 () Bool)

(declare-fun tp!1881879 () Bool)

(declare-fun tp!1881880 () Bool)

(assert (=> b!6861881 (= e!4137020 (and tp!1881879 tp!1881880))))

(declare-fun b!6861880 () Bool)

(declare-fun tp!1881878 () Bool)

(assert (=> b!6861880 (= e!4137020 tp!1881878)))

(declare-fun b!6861878 () Bool)

(assert (=> b!6861878 (= e!4137020 tp_is_empty!42633)))

(assert (=> b!6860977 (= tp!1881510 e!4137020)))

(declare-fun b!6861879 () Bool)

(declare-fun tp!1881881 () Bool)

(declare-fun tp!1881877 () Bool)

(assert (=> b!6861879 (= e!4137020 (and tp!1881881 tp!1881877))))

(assert (= (and b!6860977 (is-ElementMatch!16690 (regTwo!33893 (reg!17019 (regTwo!33893 r!7292))))) b!6861878))

(assert (= (and b!6860977 (is-Concat!25535 (regTwo!33893 (reg!17019 (regTwo!33893 r!7292))))) b!6861879))

(assert (= (and b!6860977 (is-Star!16690 (regTwo!33893 (reg!17019 (regTwo!33893 r!7292))))) b!6861880))

(assert (= (and b!6860977 (is-Union!16690 (regTwo!33893 (reg!17019 (regTwo!33893 r!7292))))) b!6861881))

(declare-fun b!6861885 () Bool)

(declare-fun e!4137021 () Bool)

(declare-fun tp!1881884 () Bool)

(declare-fun tp!1881885 () Bool)

(assert (=> b!6861885 (= e!4137021 (and tp!1881884 tp!1881885))))

(declare-fun b!6861884 () Bool)

(declare-fun tp!1881883 () Bool)

(assert (=> b!6861884 (= e!4137021 tp!1881883)))

(declare-fun b!6861882 () Bool)

(assert (=> b!6861882 (= e!4137021 tp_is_empty!42633)))

(assert (=> b!6860907 (= tp!1881421 e!4137021)))

(declare-fun b!6861883 () Bool)

(declare-fun tp!1881886 () Bool)

(declare-fun tp!1881882 () Bool)

(assert (=> b!6861883 (= e!4137021 (and tp!1881886 tp!1881882))))

(assert (= (and b!6860907 (is-ElementMatch!16690 (h!72693 (exprs!6574 (h!72695 (t!380114 zl!343)))))) b!6861882))

(assert (= (and b!6860907 (is-Concat!25535 (h!72693 (exprs!6574 (h!72695 (t!380114 zl!343)))))) b!6861883))

(assert (= (and b!6860907 (is-Star!16690 (h!72693 (exprs!6574 (h!72695 (t!380114 zl!343)))))) b!6861884))

(assert (= (and b!6860907 (is-Union!16690 (h!72693 (exprs!6574 (h!72695 (t!380114 zl!343)))))) b!6861885))

(declare-fun b!6861886 () Bool)

(declare-fun e!4137022 () Bool)

(declare-fun tp!1881887 () Bool)

(declare-fun tp!1881888 () Bool)

(assert (=> b!6861886 (= e!4137022 (and tp!1881887 tp!1881888))))

(assert (=> b!6860907 (= tp!1881422 e!4137022)))

(assert (= (and b!6860907 (is-Cons!66245 (t!380112 (exprs!6574 (h!72695 (t!380114 zl!343)))))) b!6861886))

(declare-fun b!6861890 () Bool)

(declare-fun e!4137023 () Bool)

(declare-fun tp!1881891 () Bool)

(declare-fun tp!1881892 () Bool)

(assert (=> b!6861890 (= e!4137023 (and tp!1881891 tp!1881892))))

(declare-fun b!6861889 () Bool)

(declare-fun tp!1881890 () Bool)

(assert (=> b!6861889 (= e!4137023 tp!1881890)))

(declare-fun b!6861887 () Bool)

(assert (=> b!6861887 (= e!4137023 tp_is_empty!42633)))

(assert (=> b!6860955 (= tp!1881481 e!4137023)))

(declare-fun b!6861888 () Bool)

(declare-fun tp!1881893 () Bool)

(declare-fun tp!1881889 () Bool)

(assert (=> b!6861888 (= e!4137023 (and tp!1881893 tp!1881889))))

(assert (= (and b!6860955 (is-ElementMatch!16690 (reg!17019 (regTwo!33893 (regTwo!33893 r!7292))))) b!6861887))

(assert (= (and b!6860955 (is-Concat!25535 (reg!17019 (regTwo!33893 (regTwo!33893 r!7292))))) b!6861888))

(assert (= (and b!6860955 (is-Star!16690 (reg!17019 (regTwo!33893 (regTwo!33893 r!7292))))) b!6861889))

(assert (= (and b!6860955 (is-Union!16690 (reg!17019 (regTwo!33893 (regTwo!33893 r!7292))))) b!6861890))

(declare-fun b!6861894 () Bool)

(declare-fun e!4137024 () Bool)

(declare-fun tp!1881896 () Bool)

(declare-fun tp!1881897 () Bool)

(assert (=> b!6861894 (= e!4137024 (and tp!1881896 tp!1881897))))

(declare-fun b!6861893 () Bool)

(declare-fun tp!1881895 () Bool)

(assert (=> b!6861893 (= e!4137024 tp!1881895)))

(declare-fun b!6861891 () Bool)

(assert (=> b!6861891 (= e!4137024 tp_is_empty!42633)))

(assert (=> b!6860964 (= tp!1881492 e!4137024)))

(declare-fun b!6861892 () Bool)

(declare-fun tp!1881898 () Bool)

(declare-fun tp!1881894 () Bool)

(assert (=> b!6861892 (= e!4137024 (and tp!1881898 tp!1881894))))

(assert (= (and b!6860964 (is-ElementMatch!16690 (regOne!33893 (regTwo!33892 (reg!17019 r!7292))))) b!6861891))

(assert (= (and b!6860964 (is-Concat!25535 (regOne!33893 (regTwo!33892 (reg!17019 r!7292))))) b!6861892))

(assert (= (and b!6860964 (is-Star!16690 (regOne!33893 (regTwo!33892 (reg!17019 r!7292))))) b!6861893))

(assert (= (and b!6860964 (is-Union!16690 (regOne!33893 (regTwo!33892 (reg!17019 r!7292))))) b!6861894))

(declare-fun b!6861898 () Bool)

(declare-fun e!4137025 () Bool)

(declare-fun tp!1881901 () Bool)

(declare-fun tp!1881902 () Bool)

(assert (=> b!6861898 (= e!4137025 (and tp!1881901 tp!1881902))))

(declare-fun b!6861897 () Bool)

(declare-fun tp!1881900 () Bool)

(assert (=> b!6861897 (= e!4137025 tp!1881900)))

(declare-fun b!6861895 () Bool)

(assert (=> b!6861895 (= e!4137025 tp_is_empty!42633)))

(assert (=> b!6860964 (= tp!1881493 e!4137025)))

(declare-fun b!6861896 () Bool)

(declare-fun tp!1881903 () Bool)

(declare-fun tp!1881899 () Bool)

(assert (=> b!6861896 (= e!4137025 (and tp!1881903 tp!1881899))))

(assert (= (and b!6860964 (is-ElementMatch!16690 (regTwo!33893 (regTwo!33892 (reg!17019 r!7292))))) b!6861895))

(assert (= (and b!6860964 (is-Concat!25535 (regTwo!33893 (regTwo!33892 (reg!17019 r!7292))))) b!6861896))

(assert (= (and b!6860964 (is-Star!16690 (regTwo!33893 (regTwo!33892 (reg!17019 r!7292))))) b!6861897))

(assert (= (and b!6860964 (is-Union!16690 (regTwo!33893 (regTwo!33892 (reg!17019 r!7292))))) b!6861898))

(declare-fun b!6861902 () Bool)

(declare-fun e!4137026 () Bool)

(declare-fun tp!1881906 () Bool)

(declare-fun tp!1881907 () Bool)

(assert (=> b!6861902 (= e!4137026 (and tp!1881906 tp!1881907))))

(declare-fun b!6861901 () Bool)

(declare-fun tp!1881905 () Bool)

(assert (=> b!6861901 (= e!4137026 tp!1881905)))

(declare-fun b!6861899 () Bool)

(assert (=> b!6861899 (= e!4137026 tp_is_empty!42633)))

(assert (=> b!6861004 (= tp!1881543 e!4137026)))

(declare-fun b!6861900 () Bool)

(declare-fun tp!1881908 () Bool)

(declare-fun tp!1881904 () Bool)

(assert (=> b!6861900 (= e!4137026 (and tp!1881908 tp!1881904))))

(assert (= (and b!6861004 (is-ElementMatch!16690 (reg!17019 (reg!17019 (reg!17019 r!7292))))) b!6861899))

(assert (= (and b!6861004 (is-Concat!25535 (reg!17019 (reg!17019 (reg!17019 r!7292))))) b!6861900))

(assert (= (and b!6861004 (is-Star!16690 (reg!17019 (reg!17019 (reg!17019 r!7292))))) b!6861901))

(assert (= (and b!6861004 (is-Union!16690 (reg!17019 (reg!17019 (reg!17019 r!7292))))) b!6861902))

(declare-fun b!6861904 () Bool)

(declare-fun e!4137028 () Bool)

(declare-fun tp!1881909 () Bool)

(assert (=> b!6861904 (= e!4137028 tp!1881909)))

(declare-fun e!4137027 () Bool)

(declare-fun b!6861903 () Bool)

(declare-fun tp!1881910 () Bool)

(assert (=> b!6861903 (= e!4137027 (and (inv!84973 (h!72695 (t!380114 (t!380114 (t!380114 zl!343))))) e!4137028 tp!1881910))))

(assert (=> b!6860916 (= tp!1881434 e!4137027)))

(assert (= b!6861903 b!6861904))

(assert (= (and b!6860916 (is-Cons!66247 (t!380114 (t!380114 (t!380114 zl!343))))) b!6861903))

(declare-fun m!7596124 () Bool)

(assert (=> b!6861903 m!7596124))

(declare-fun b!6861905 () Bool)

(declare-fun e!4137029 () Bool)

(declare-fun tp!1881911 () Bool)

(assert (=> b!6861905 (= e!4137029 (and tp_is_empty!42633 tp!1881911))))

(assert (=> b!6860948 (= tp!1881474 e!4137029)))

(assert (= (and b!6860948 (is-Cons!66246 (t!380113 (t!380113 (t!380113 s!2326))))) b!6861905))

(declare-fun b!6861909 () Bool)

(declare-fun e!4137030 () Bool)

(declare-fun tp!1881914 () Bool)

(declare-fun tp!1881915 () Bool)

(assert (=> b!6861909 (= e!4137030 (and tp!1881914 tp!1881915))))

(declare-fun b!6861908 () Bool)

(declare-fun tp!1881913 () Bool)

(assert (=> b!6861908 (= e!4137030 tp!1881913)))

(declare-fun b!6861906 () Bool)

(assert (=> b!6861906 (= e!4137030 tp_is_empty!42633)))

(assert (=> b!6860988 (= tp!1881523 e!4137030)))

(declare-fun b!6861907 () Bool)

(declare-fun tp!1881916 () Bool)

(declare-fun tp!1881912 () Bool)

(assert (=> b!6861907 (= e!4137030 (and tp!1881916 tp!1881912))))

(assert (= (and b!6860988 (is-ElementMatch!16690 (reg!17019 (regOne!33893 (reg!17019 r!7292))))) b!6861906))

(assert (= (and b!6860988 (is-Concat!25535 (reg!17019 (regOne!33893 (reg!17019 r!7292))))) b!6861907))

(assert (= (and b!6860988 (is-Star!16690 (reg!17019 (regOne!33893 (reg!17019 r!7292))))) b!6861908))

(assert (= (and b!6860988 (is-Union!16690 (reg!17019 (regOne!33893 (reg!17019 r!7292))))) b!6861909))

(declare-fun b!6861913 () Bool)

(declare-fun e!4137031 () Bool)

(declare-fun tp!1881919 () Bool)

(declare-fun tp!1881920 () Bool)

(assert (=> b!6861913 (= e!4137031 (and tp!1881919 tp!1881920))))

(declare-fun b!6861912 () Bool)

(declare-fun tp!1881918 () Bool)

(assert (=> b!6861912 (= e!4137031 tp!1881918)))

(declare-fun b!6861910 () Bool)

(assert (=> b!6861910 (= e!4137031 tp_is_empty!42633)))

(assert (=> b!6860901 (= tp!1881412 e!4137031)))

(declare-fun b!6861911 () Bool)

(declare-fun tp!1881921 () Bool)

(declare-fun tp!1881917 () Bool)

(assert (=> b!6861911 (= e!4137031 (and tp!1881921 tp!1881917))))

(assert (= (and b!6860901 (is-ElementMatch!16690 (reg!17019 (regTwo!33892 (regOne!33892 r!7292))))) b!6861910))

(assert (= (and b!6860901 (is-Concat!25535 (reg!17019 (regTwo!33892 (regOne!33892 r!7292))))) b!6861911))

(assert (= (and b!6860901 (is-Star!16690 (reg!17019 (regTwo!33892 (regOne!33892 r!7292))))) b!6861912))

(assert (= (and b!6860901 (is-Union!16690 (reg!17019 (regTwo!33892 (regOne!33892 r!7292))))) b!6861913))

(declare-fun b!6861917 () Bool)

(declare-fun e!4137032 () Bool)

(declare-fun tp!1881924 () Bool)

(declare-fun tp!1881925 () Bool)

(assert (=> b!6861917 (= e!4137032 (and tp!1881924 tp!1881925))))

(declare-fun b!6861916 () Bool)

(declare-fun tp!1881923 () Bool)

(assert (=> b!6861916 (= e!4137032 tp!1881923)))

(declare-fun b!6861914 () Bool)

(assert (=> b!6861914 (= e!4137032 tp_is_empty!42633)))

(assert (=> b!6860997 (= tp!1881534 e!4137032)))

(declare-fun b!6861915 () Bool)

(declare-fun tp!1881926 () Bool)

(declare-fun tp!1881922 () Bool)

(assert (=> b!6861915 (= e!4137032 (and tp!1881926 tp!1881922))))

(assert (= (and b!6860997 (is-ElementMatch!16690 (regOne!33893 (regOne!33893 (regTwo!33892 r!7292))))) b!6861914))

(assert (= (and b!6860997 (is-Concat!25535 (regOne!33893 (regOne!33893 (regTwo!33892 r!7292))))) b!6861915))

(assert (= (and b!6860997 (is-Star!16690 (regOne!33893 (regOne!33893 (regTwo!33892 r!7292))))) b!6861916))

(assert (= (and b!6860997 (is-Union!16690 (regOne!33893 (regOne!33893 (regTwo!33892 r!7292))))) b!6861917))

(declare-fun b!6861921 () Bool)

(declare-fun e!4137033 () Bool)

(declare-fun tp!1881929 () Bool)

(declare-fun tp!1881930 () Bool)

(assert (=> b!6861921 (= e!4137033 (and tp!1881929 tp!1881930))))

(declare-fun b!6861920 () Bool)

(declare-fun tp!1881928 () Bool)

(assert (=> b!6861920 (= e!4137033 tp!1881928)))

(declare-fun b!6861918 () Bool)

(assert (=> b!6861918 (= e!4137033 tp_is_empty!42633)))

(assert (=> b!6860997 (= tp!1881535 e!4137033)))

(declare-fun b!6861919 () Bool)

(declare-fun tp!1881931 () Bool)

(declare-fun tp!1881927 () Bool)

(assert (=> b!6861919 (= e!4137033 (and tp!1881931 tp!1881927))))

(assert (= (and b!6860997 (is-ElementMatch!16690 (regTwo!33893 (regOne!33893 (regTwo!33892 r!7292))))) b!6861918))

(assert (= (and b!6860997 (is-Concat!25535 (regTwo!33893 (regOne!33893 (regTwo!33892 r!7292))))) b!6861919))

(assert (= (and b!6860997 (is-Star!16690 (regTwo!33893 (regOne!33893 (regTwo!33892 r!7292))))) b!6861920))

(assert (= (and b!6860997 (is-Union!16690 (regTwo!33893 (regOne!33893 (regTwo!33892 r!7292))))) b!6861921))

(declare-fun b!6861925 () Bool)

(declare-fun e!4137034 () Bool)

(declare-fun tp!1881934 () Bool)

(declare-fun tp!1881935 () Bool)

(assert (=> b!6861925 (= e!4137034 (and tp!1881934 tp!1881935))))

(declare-fun b!6861924 () Bool)

(declare-fun tp!1881933 () Bool)

(assert (=> b!6861924 (= e!4137034 tp!1881933)))

(declare-fun b!6861922 () Bool)

(assert (=> b!6861922 (= e!4137034 tp_is_empty!42633)))

(assert (=> b!6860995 (= tp!1881536 e!4137034)))

(declare-fun b!6861923 () Bool)

(declare-fun tp!1881936 () Bool)

(declare-fun tp!1881932 () Bool)

(assert (=> b!6861923 (= e!4137034 (and tp!1881936 tp!1881932))))

(assert (= (and b!6860995 (is-ElementMatch!16690 (regOne!33892 (regOne!33893 (regTwo!33892 r!7292))))) b!6861922))

(assert (= (and b!6860995 (is-Concat!25535 (regOne!33892 (regOne!33893 (regTwo!33892 r!7292))))) b!6861923))

(assert (= (and b!6860995 (is-Star!16690 (regOne!33892 (regOne!33893 (regTwo!33892 r!7292))))) b!6861924))

(assert (= (and b!6860995 (is-Union!16690 (regOne!33892 (regOne!33893 (regTwo!33892 r!7292))))) b!6861925))

(declare-fun b!6861929 () Bool)

(declare-fun e!4137035 () Bool)

(declare-fun tp!1881939 () Bool)

(declare-fun tp!1881940 () Bool)

(assert (=> b!6861929 (= e!4137035 (and tp!1881939 tp!1881940))))

(declare-fun b!6861928 () Bool)

(declare-fun tp!1881938 () Bool)

(assert (=> b!6861928 (= e!4137035 tp!1881938)))

(declare-fun b!6861926 () Bool)

(assert (=> b!6861926 (= e!4137035 tp_is_empty!42633)))

(assert (=> b!6860995 (= tp!1881532 e!4137035)))

(declare-fun b!6861927 () Bool)

(declare-fun tp!1881941 () Bool)

(declare-fun tp!1881937 () Bool)

(assert (=> b!6861927 (= e!4137035 (and tp!1881941 tp!1881937))))

(assert (= (and b!6860995 (is-ElementMatch!16690 (regTwo!33892 (regOne!33893 (regTwo!33892 r!7292))))) b!6861926))

(assert (= (and b!6860995 (is-Concat!25535 (regTwo!33892 (regOne!33893 (regTwo!33892 r!7292))))) b!6861927))

(assert (= (and b!6860995 (is-Star!16690 (regTwo!33892 (regOne!33893 (regTwo!33892 r!7292))))) b!6861928))

(assert (= (and b!6860995 (is-Union!16690 (regTwo!33892 (regOne!33893 (regTwo!33892 r!7292))))) b!6861929))

(declare-fun b!6861933 () Bool)

(declare-fun e!4137036 () Bool)

(declare-fun tp!1881944 () Bool)

(declare-fun tp!1881945 () Bool)

(assert (=> b!6861933 (= e!4137036 (and tp!1881944 tp!1881945))))

(declare-fun b!6861932 () Bool)

(declare-fun tp!1881943 () Bool)

(assert (=> b!6861932 (= e!4137036 tp!1881943)))

(declare-fun b!6861930 () Bool)

(assert (=> b!6861930 (= e!4137036 tp_is_empty!42633)))

(assert (=> b!6860941 (= tp!1881468 e!4137036)))

(declare-fun b!6861931 () Bool)

(declare-fun tp!1881946 () Bool)

(declare-fun tp!1881942 () Bool)

(assert (=> b!6861931 (= e!4137036 (and tp!1881946 tp!1881942))))

(assert (= (and b!6860941 (is-ElementMatch!16690 (regOne!33892 (regOne!33893 (regOne!33893 r!7292))))) b!6861930))

(assert (= (and b!6860941 (is-Concat!25535 (regOne!33892 (regOne!33893 (regOne!33893 r!7292))))) b!6861931))

(assert (= (and b!6860941 (is-Star!16690 (regOne!33892 (regOne!33893 (regOne!33893 r!7292))))) b!6861932))

(assert (= (and b!6860941 (is-Union!16690 (regOne!33892 (regOne!33893 (regOne!33893 r!7292))))) b!6861933))

(declare-fun b!6861937 () Bool)

(declare-fun e!4137037 () Bool)

(declare-fun tp!1881949 () Bool)

(declare-fun tp!1881950 () Bool)

(assert (=> b!6861937 (= e!4137037 (and tp!1881949 tp!1881950))))

(declare-fun b!6861936 () Bool)

(declare-fun tp!1881948 () Bool)

(assert (=> b!6861936 (= e!4137037 tp!1881948)))

(declare-fun b!6861934 () Bool)

(assert (=> b!6861934 (= e!4137037 tp_is_empty!42633)))

(assert (=> b!6860941 (= tp!1881464 e!4137037)))

(declare-fun b!6861935 () Bool)

(declare-fun tp!1881951 () Bool)

(declare-fun tp!1881947 () Bool)

(assert (=> b!6861935 (= e!4137037 (and tp!1881951 tp!1881947))))

(assert (= (and b!6860941 (is-ElementMatch!16690 (regTwo!33892 (regOne!33893 (regOne!33893 r!7292))))) b!6861934))

(assert (= (and b!6860941 (is-Concat!25535 (regTwo!33892 (regOne!33893 (regOne!33893 r!7292))))) b!6861935))

(assert (= (and b!6860941 (is-Star!16690 (regTwo!33892 (regOne!33893 (regOne!33893 r!7292))))) b!6861936))

(assert (= (and b!6860941 (is-Union!16690 (regTwo!33892 (regOne!33893 (regOne!33893 r!7292))))) b!6861937))

(declare-fun b!6861941 () Bool)

(declare-fun e!4137038 () Bool)

(declare-fun tp!1881954 () Bool)

(declare-fun tp!1881955 () Bool)

(assert (=> b!6861941 (= e!4137038 (and tp!1881954 tp!1881955))))

(declare-fun b!6861940 () Bool)

(declare-fun tp!1881953 () Bool)

(assert (=> b!6861940 (= e!4137038 tp!1881953)))

(declare-fun b!6861938 () Bool)

(assert (=> b!6861938 (= e!4137038 tp_is_empty!42633)))

(assert (=> b!6860926 (= tp!1881444 e!4137038)))

(declare-fun b!6861939 () Bool)

(declare-fun tp!1881956 () Bool)

(declare-fun tp!1881952 () Bool)

(assert (=> b!6861939 (= e!4137038 (and tp!1881956 tp!1881952))))

(assert (= (and b!6860926 (is-ElementMatch!16690 (regOne!33893 (h!72693 (exprs!6574 setElem!47178))))) b!6861938))

(assert (= (and b!6860926 (is-Concat!25535 (regOne!33893 (h!72693 (exprs!6574 setElem!47178))))) b!6861939))

(assert (= (and b!6860926 (is-Star!16690 (regOne!33893 (h!72693 (exprs!6574 setElem!47178))))) b!6861940))

(assert (= (and b!6860926 (is-Union!16690 (regOne!33893 (h!72693 (exprs!6574 setElem!47178))))) b!6861941))

(declare-fun b!6861945 () Bool)

(declare-fun e!4137039 () Bool)

(declare-fun tp!1881959 () Bool)

(declare-fun tp!1881960 () Bool)

(assert (=> b!6861945 (= e!4137039 (and tp!1881959 tp!1881960))))

(declare-fun b!6861944 () Bool)

(declare-fun tp!1881958 () Bool)

(assert (=> b!6861944 (= e!4137039 tp!1881958)))

(declare-fun b!6861942 () Bool)

(assert (=> b!6861942 (= e!4137039 tp_is_empty!42633)))

(assert (=> b!6860926 (= tp!1881445 e!4137039)))

(declare-fun b!6861943 () Bool)

(declare-fun tp!1881961 () Bool)

(declare-fun tp!1881957 () Bool)

(assert (=> b!6861943 (= e!4137039 (and tp!1881961 tp!1881957))))

(assert (= (and b!6860926 (is-ElementMatch!16690 (regTwo!33893 (h!72693 (exprs!6574 setElem!47178))))) b!6861942))

(assert (= (and b!6860926 (is-Concat!25535 (regTwo!33893 (h!72693 (exprs!6574 setElem!47178))))) b!6861943))

(assert (= (and b!6860926 (is-Star!16690 (regTwo!33893 (h!72693 (exprs!6574 setElem!47178))))) b!6861944))

(assert (= (and b!6860926 (is-Union!16690 (regTwo!33893 (h!72693 (exprs!6574 setElem!47178))))) b!6861945))

(declare-fun b!6861949 () Bool)

(declare-fun e!4137040 () Bool)

(declare-fun tp!1881964 () Bool)

(declare-fun tp!1881965 () Bool)

(assert (=> b!6861949 (= e!4137040 (and tp!1881964 tp!1881965))))

(declare-fun b!6861948 () Bool)

(declare-fun tp!1881963 () Bool)

(assert (=> b!6861948 (= e!4137040 tp!1881963)))

(declare-fun b!6861946 () Bool)

(assert (=> b!6861946 (= e!4137040 tp_is_empty!42633)))

(assert (=> b!6860972 (= tp!1881503 e!4137040)))

(declare-fun b!6861947 () Bool)

(declare-fun tp!1881966 () Bool)

(declare-fun tp!1881962 () Bool)

(assert (=> b!6861947 (= e!4137040 (and tp!1881966 tp!1881962))))

(assert (= (and b!6860972 (is-ElementMatch!16690 (reg!17019 (regTwo!33892 (regTwo!33892 r!7292))))) b!6861946))

(assert (= (and b!6860972 (is-Concat!25535 (reg!17019 (regTwo!33892 (regTwo!33892 r!7292))))) b!6861947))

(assert (= (and b!6860972 (is-Star!16690 (reg!17019 (regTwo!33892 (regTwo!33892 r!7292))))) b!6861948))

(assert (= (and b!6860972 (is-Union!16690 (reg!17019 (regTwo!33892 (regTwo!33892 r!7292))))) b!6861949))

(declare-fun b!6861953 () Bool)

(declare-fun e!4137041 () Bool)

(declare-fun tp!1881969 () Bool)

(declare-fun tp!1881970 () Bool)

(assert (=> b!6861953 (= e!4137041 (and tp!1881969 tp!1881970))))

(declare-fun b!6861952 () Bool)

(declare-fun tp!1881968 () Bool)

(assert (=> b!6861952 (= e!4137041 tp!1881968)))

(declare-fun b!6861950 () Bool)

(assert (=> b!6861950 (= e!4137041 tp_is_empty!42633)))

(assert (=> b!6860981 (= tp!1881514 e!4137041)))

(declare-fun b!6861951 () Bool)

(declare-fun tp!1881971 () Bool)

(declare-fun tp!1881967 () Bool)

(assert (=> b!6861951 (= e!4137041 (and tp!1881971 tp!1881967))))

(assert (= (and b!6860981 (is-ElementMatch!16690 (regOne!33893 (regOne!33892 (regTwo!33893 r!7292))))) b!6861950))

(assert (= (and b!6860981 (is-Concat!25535 (regOne!33893 (regOne!33892 (regTwo!33893 r!7292))))) b!6861951))

(assert (= (and b!6860981 (is-Star!16690 (regOne!33893 (regOne!33892 (regTwo!33893 r!7292))))) b!6861952))

(assert (= (and b!6860981 (is-Union!16690 (regOne!33893 (regOne!33892 (regTwo!33893 r!7292))))) b!6861953))

(declare-fun b!6861957 () Bool)

(declare-fun e!4137042 () Bool)

(declare-fun tp!1881974 () Bool)

(declare-fun tp!1881975 () Bool)

(assert (=> b!6861957 (= e!4137042 (and tp!1881974 tp!1881975))))

(declare-fun b!6861956 () Bool)

(declare-fun tp!1881973 () Bool)

(assert (=> b!6861956 (= e!4137042 tp!1881973)))

(declare-fun b!6861954 () Bool)

(assert (=> b!6861954 (= e!4137042 tp_is_empty!42633)))

(assert (=> b!6860981 (= tp!1881515 e!4137042)))

(declare-fun b!6861955 () Bool)

(declare-fun tp!1881976 () Bool)

(declare-fun tp!1881972 () Bool)

(assert (=> b!6861955 (= e!4137042 (and tp!1881976 tp!1881972))))

(assert (= (and b!6860981 (is-ElementMatch!16690 (regTwo!33893 (regOne!33892 (regTwo!33893 r!7292))))) b!6861954))

(assert (= (and b!6860981 (is-Concat!25535 (regTwo!33893 (regOne!33892 (regTwo!33893 r!7292))))) b!6861955))

(assert (= (and b!6860981 (is-Star!16690 (regTwo!33893 (regOne!33892 (regTwo!33893 r!7292))))) b!6861956))

(assert (= (and b!6860981 (is-Union!16690 (regTwo!33893 (regOne!33892 (regTwo!33893 r!7292))))) b!6861957))

(declare-fun b!6861961 () Bool)

(declare-fun e!4137043 () Bool)

(declare-fun tp!1881979 () Bool)

(declare-fun tp!1881980 () Bool)

(assert (=> b!6861961 (= e!4137043 (and tp!1881979 tp!1881980))))

(declare-fun b!6861960 () Bool)

(declare-fun tp!1881978 () Bool)

(assert (=> b!6861960 (= e!4137043 tp!1881978)))

(declare-fun b!6861958 () Bool)

(assert (=> b!6861958 (= e!4137043 tp_is_empty!42633)))

(assert (=> b!6860924 (= tp!1881446 e!4137043)))

(declare-fun b!6861959 () Bool)

(declare-fun tp!1881981 () Bool)

(declare-fun tp!1881977 () Bool)

(assert (=> b!6861959 (= e!4137043 (and tp!1881981 tp!1881977))))

(assert (= (and b!6860924 (is-ElementMatch!16690 (regOne!33892 (h!72693 (exprs!6574 setElem!47178))))) b!6861958))

(assert (= (and b!6860924 (is-Concat!25535 (regOne!33892 (h!72693 (exprs!6574 setElem!47178))))) b!6861959))

(assert (= (and b!6860924 (is-Star!16690 (regOne!33892 (h!72693 (exprs!6574 setElem!47178))))) b!6861960))

(assert (= (and b!6860924 (is-Union!16690 (regOne!33892 (h!72693 (exprs!6574 setElem!47178))))) b!6861961))

(declare-fun b!6861965 () Bool)

(declare-fun e!4137044 () Bool)

(declare-fun tp!1881984 () Bool)

(declare-fun tp!1881985 () Bool)

(assert (=> b!6861965 (= e!4137044 (and tp!1881984 tp!1881985))))

(declare-fun b!6861964 () Bool)

(declare-fun tp!1881983 () Bool)

(assert (=> b!6861964 (= e!4137044 tp!1881983)))

(declare-fun b!6861962 () Bool)

(assert (=> b!6861962 (= e!4137044 tp_is_empty!42633)))

(assert (=> b!6860924 (= tp!1881442 e!4137044)))

(declare-fun b!6861963 () Bool)

(declare-fun tp!1881986 () Bool)

(declare-fun tp!1881982 () Bool)

(assert (=> b!6861963 (= e!4137044 (and tp!1881986 tp!1881982))))

(assert (= (and b!6860924 (is-ElementMatch!16690 (regTwo!33892 (h!72693 (exprs!6574 setElem!47178))))) b!6861962))

(assert (= (and b!6860924 (is-Concat!25535 (regTwo!33892 (h!72693 (exprs!6574 setElem!47178))))) b!6861963))

(assert (= (and b!6860924 (is-Star!16690 (regTwo!33892 (h!72693 (exprs!6574 setElem!47178))))) b!6861964))

(assert (= (and b!6860924 (is-Union!16690 (regTwo!33892 (h!72693 (exprs!6574 setElem!47178))))) b!6861965))

(declare-fun b!6861969 () Bool)

(declare-fun e!4137045 () Bool)

(declare-fun tp!1881989 () Bool)

(declare-fun tp!1881990 () Bool)

(assert (=> b!6861969 (= e!4137045 (and tp!1881989 tp!1881990))))

(declare-fun b!6861968 () Bool)

(declare-fun tp!1881988 () Bool)

(assert (=> b!6861968 (= e!4137045 tp!1881988)))

(declare-fun b!6861966 () Bool)

(assert (=> b!6861966 (= e!4137045 tp_is_empty!42633)))

(assert (=> b!6860979 (= tp!1881516 e!4137045)))

(declare-fun b!6861967 () Bool)

(declare-fun tp!1881991 () Bool)

(declare-fun tp!1881987 () Bool)

(assert (=> b!6861967 (= e!4137045 (and tp!1881991 tp!1881987))))

(assert (= (and b!6860979 (is-ElementMatch!16690 (regOne!33892 (regOne!33892 (regTwo!33893 r!7292))))) b!6861966))

(assert (= (and b!6860979 (is-Concat!25535 (regOne!33892 (regOne!33892 (regTwo!33893 r!7292))))) b!6861967))

(assert (= (and b!6860979 (is-Star!16690 (regOne!33892 (regOne!33892 (regTwo!33893 r!7292))))) b!6861968))

(assert (= (and b!6860979 (is-Union!16690 (regOne!33892 (regOne!33892 (regTwo!33893 r!7292))))) b!6861969))

(declare-fun b!6861973 () Bool)

(declare-fun e!4137046 () Bool)

(declare-fun tp!1881994 () Bool)

(declare-fun tp!1881995 () Bool)

(assert (=> b!6861973 (= e!4137046 (and tp!1881994 tp!1881995))))

(declare-fun b!6861972 () Bool)

(declare-fun tp!1881993 () Bool)

(assert (=> b!6861972 (= e!4137046 tp!1881993)))

(declare-fun b!6861970 () Bool)

(assert (=> b!6861970 (= e!4137046 tp_is_empty!42633)))

(assert (=> b!6860979 (= tp!1881512 e!4137046)))

(declare-fun b!6861971 () Bool)

(declare-fun tp!1881996 () Bool)

(declare-fun tp!1881992 () Bool)

(assert (=> b!6861971 (= e!4137046 (and tp!1881996 tp!1881992))))

(assert (= (and b!6860979 (is-ElementMatch!16690 (regTwo!33892 (regOne!33892 (regTwo!33893 r!7292))))) b!6861970))

(assert (= (and b!6860979 (is-Concat!25535 (regTwo!33892 (regOne!33892 (regTwo!33893 r!7292))))) b!6861971))

(assert (= (and b!6860979 (is-Star!16690 (regTwo!33892 (regOne!33892 (regTwo!33893 r!7292))))) b!6861972))

(assert (= (and b!6860979 (is-Union!16690 (regTwo!33892 (regOne!33892 (regTwo!33893 r!7292))))) b!6861973))

(declare-fun b!6861977 () Bool)

(declare-fun e!4137047 () Bool)

(declare-fun tp!1881999 () Bool)

(declare-fun tp!1882000 () Bool)

(assert (=> b!6861977 (= e!4137047 (and tp!1881999 tp!1882000))))

(declare-fun b!6861976 () Bool)

(declare-fun tp!1881998 () Bool)

(assert (=> b!6861976 (= e!4137047 tp!1881998)))

(declare-fun b!6861974 () Bool)

(assert (=> b!6861974 (= e!4137047 tp_is_empty!42633)))

(assert (=> b!6860909 (= tp!1881427 e!4137047)))

(declare-fun b!6861975 () Bool)

(declare-fun tp!1882001 () Bool)

(declare-fun tp!1881997 () Bool)

(assert (=> b!6861975 (= e!4137047 (and tp!1882001 tp!1881997))))

(assert (= (and b!6860909 (is-ElementMatch!16690 (regOne!33892 (regOne!33892 (regOne!33893 r!7292))))) b!6861974))

(assert (= (and b!6860909 (is-Concat!25535 (regOne!33892 (regOne!33892 (regOne!33893 r!7292))))) b!6861975))

(assert (= (and b!6860909 (is-Star!16690 (regOne!33892 (regOne!33892 (regOne!33893 r!7292))))) b!6861976))

(assert (= (and b!6860909 (is-Union!16690 (regOne!33892 (regOne!33892 (regOne!33893 r!7292))))) b!6861977))

(declare-fun b!6861981 () Bool)

(declare-fun e!4137048 () Bool)

(declare-fun tp!1882004 () Bool)

(declare-fun tp!1882005 () Bool)

(assert (=> b!6861981 (= e!4137048 (and tp!1882004 tp!1882005))))

(declare-fun b!6861980 () Bool)

(declare-fun tp!1882003 () Bool)

(assert (=> b!6861980 (= e!4137048 tp!1882003)))

(declare-fun b!6861978 () Bool)

(assert (=> b!6861978 (= e!4137048 tp_is_empty!42633)))

(assert (=> b!6860909 (= tp!1881423 e!4137048)))

(declare-fun b!6861979 () Bool)

(declare-fun tp!1882006 () Bool)

(declare-fun tp!1882002 () Bool)

(assert (=> b!6861979 (= e!4137048 (and tp!1882006 tp!1882002))))

(assert (= (and b!6860909 (is-ElementMatch!16690 (regTwo!33892 (regOne!33892 (regOne!33893 r!7292))))) b!6861978))

(assert (= (and b!6860909 (is-Concat!25535 (regTwo!33892 (regOne!33892 (regOne!33893 r!7292))))) b!6861979))

(assert (= (and b!6860909 (is-Star!16690 (regTwo!33892 (regOne!33892 (regOne!33893 r!7292))))) b!6861980))

(assert (= (and b!6860909 (is-Union!16690 (regTwo!33892 (regOne!33892 (regOne!33893 r!7292))))) b!6861981))

(declare-fun b!6861985 () Bool)

(declare-fun e!4137049 () Bool)

(declare-fun tp!1882009 () Bool)

(declare-fun tp!1882010 () Bool)

(assert (=> b!6861985 (= e!4137049 (and tp!1882009 tp!1882010))))

(declare-fun b!6861984 () Bool)

(declare-fun tp!1882008 () Bool)

(assert (=> b!6861984 (= e!4137049 tp!1882008)))

(declare-fun b!6861982 () Bool)

(assert (=> b!6861982 (= e!4137049 tp_is_empty!42633)))

(assert (=> b!6860934 (= tp!1881455 e!4137049)))

(declare-fun b!6861983 () Bool)

(declare-fun tp!1882011 () Bool)

(declare-fun tp!1882007 () Bool)

(assert (=> b!6861983 (= e!4137049 (and tp!1882011 tp!1882007))))

(assert (= (and b!6860934 (is-ElementMatch!16690 (reg!17019 (regTwo!33893 (regOne!33892 r!7292))))) b!6861982))

(assert (= (and b!6860934 (is-Concat!25535 (reg!17019 (regTwo!33893 (regOne!33892 r!7292))))) b!6861983))

(assert (= (and b!6860934 (is-Star!16690 (reg!17019 (regTwo!33893 (regOne!33892 r!7292))))) b!6861984))

(assert (= (and b!6860934 (is-Union!16690 (reg!17019 (regTwo!33893 (regOne!33892 r!7292))))) b!6861985))

(declare-fun b!6861987 () Bool)

(declare-fun e!4137051 () Bool)

(declare-fun tp!1882012 () Bool)

(assert (=> b!6861987 (= e!4137051 tp!1882012)))

(declare-fun tp!1882013 () Bool)

(declare-fun b!6861986 () Bool)

(declare-fun e!4137050 () Bool)

(assert (=> b!6861986 (= e!4137050 (and (inv!84973 (h!72695 (t!380114 res!2799513))) e!4137051 tp!1882013))))

(assert (=> b!6860771 (= tp!1881405 e!4137050)))

(assert (= b!6861986 b!6861987))

(assert (= (and b!6860771 (is-Cons!66247 (t!380114 res!2799513))) b!6861986))

(declare-fun m!7596126 () Bool)

(assert (=> b!6861986 m!7596126))

(declare-fun b!6861991 () Bool)

(declare-fun e!4137052 () Bool)

(declare-fun tp!1882016 () Bool)

(declare-fun tp!1882017 () Bool)

(assert (=> b!6861991 (= e!4137052 (and tp!1882016 tp!1882017))))

(declare-fun b!6861990 () Bool)

(declare-fun tp!1882015 () Bool)

(assert (=> b!6861990 (= e!4137052 tp!1882015)))

(declare-fun b!6861988 () Bool)

(assert (=> b!6861988 (= e!4137052 tp_is_empty!42633)))

(assert (=> b!6860911 (= tp!1881425 e!4137052)))

(declare-fun b!6861989 () Bool)

(declare-fun tp!1882018 () Bool)

(declare-fun tp!1882014 () Bool)

(assert (=> b!6861989 (= e!4137052 (and tp!1882018 tp!1882014))))

(assert (= (and b!6860911 (is-ElementMatch!16690 (regOne!33893 (regOne!33892 (regOne!33893 r!7292))))) b!6861988))

(assert (= (and b!6860911 (is-Concat!25535 (regOne!33893 (regOne!33892 (regOne!33893 r!7292))))) b!6861989))

(assert (= (and b!6860911 (is-Star!16690 (regOne!33893 (regOne!33892 (regOne!33893 r!7292))))) b!6861990))

(assert (= (and b!6860911 (is-Union!16690 (regOne!33893 (regOne!33892 (regOne!33893 r!7292))))) b!6861991))

(declare-fun b!6861995 () Bool)

(declare-fun e!4137053 () Bool)

(declare-fun tp!1882021 () Bool)

(declare-fun tp!1882022 () Bool)

(assert (=> b!6861995 (= e!4137053 (and tp!1882021 tp!1882022))))

(declare-fun b!6861994 () Bool)

(declare-fun tp!1882020 () Bool)

(assert (=> b!6861994 (= e!4137053 tp!1882020)))

(declare-fun b!6861992 () Bool)

(assert (=> b!6861992 (= e!4137053 tp_is_empty!42633)))

(assert (=> b!6860911 (= tp!1881426 e!4137053)))

(declare-fun b!6861993 () Bool)

(declare-fun tp!1882023 () Bool)

(declare-fun tp!1882019 () Bool)

(assert (=> b!6861993 (= e!4137053 (and tp!1882023 tp!1882019))))

(assert (= (and b!6860911 (is-ElementMatch!16690 (regTwo!33893 (regOne!33892 (regOne!33893 r!7292))))) b!6861992))

(assert (= (and b!6860911 (is-Concat!25535 (regTwo!33893 (regOne!33892 (regOne!33893 r!7292))))) b!6861993))

(assert (= (and b!6860911 (is-Star!16690 (regTwo!33893 (regOne!33892 (regOne!33893 r!7292))))) b!6861994))

(assert (= (and b!6860911 (is-Union!16690 (regTwo!33893 (regOne!33892 (regOne!33893 r!7292))))) b!6861995))

(declare-fun b!6861999 () Bool)

(declare-fun e!4137054 () Bool)

(declare-fun tp!1882026 () Bool)

(declare-fun tp!1882027 () Bool)

(assert (=> b!6861999 (= e!4137054 (and tp!1882026 tp!1882027))))

(declare-fun b!6861998 () Bool)

(declare-fun tp!1882025 () Bool)

(assert (=> b!6861998 (= e!4137054 tp!1882025)))

(declare-fun b!6861996 () Bool)

(assert (=> b!6861996 (= e!4137054 tp_is_empty!42633)))

(assert (=> b!6860959 (= tp!1881486 e!4137054)))

(declare-fun b!6861997 () Bool)

(declare-fun tp!1882028 () Bool)

(declare-fun tp!1882024 () Bool)

(assert (=> b!6861997 (= e!4137054 (and tp!1882028 tp!1882024))))

(assert (= (and b!6860959 (is-ElementMatch!16690 (reg!17019 (regOne!33892 (reg!17019 r!7292))))) b!6861996))

(assert (= (and b!6860959 (is-Concat!25535 (reg!17019 (regOne!33892 (reg!17019 r!7292))))) b!6861997))

(assert (= (and b!6860959 (is-Star!16690 (reg!17019 (regOne!33892 (reg!17019 r!7292))))) b!6861998))

(assert (= (and b!6860959 (is-Union!16690 (reg!17019 (regOne!33892 (reg!17019 r!7292))))) b!6861999))

(declare-fun b!6862000 () Bool)

(declare-fun e!4137055 () Bool)

(declare-fun tp!1882029 () Bool)

(declare-fun tp!1882030 () Bool)

(assert (=> b!6862000 (= e!4137055 (and tp!1882029 tp!1882030))))

(assert (=> b!6860965 (= tp!1881495 e!4137055)))

(assert (= (and b!6860965 (is-Cons!66245 (exprs!6574 setElem!47188))) b!6862000))

(declare-fun b!6862004 () Bool)

(declare-fun e!4137056 () Bool)

(declare-fun tp!1882033 () Bool)

(declare-fun tp!1882034 () Bool)

(assert (=> b!6862004 (= e!4137056 (and tp!1882033 tp!1882034))))

(declare-fun b!6862003 () Bool)

(declare-fun tp!1882032 () Bool)

(assert (=> b!6862003 (= e!4137056 tp!1882032)))

(declare-fun b!6862001 () Bool)

(assert (=> b!6862001 (= e!4137056 tp_is_empty!42633)))

(assert (=> b!6860943 (= tp!1881466 e!4137056)))

(declare-fun b!6862002 () Bool)

(declare-fun tp!1882035 () Bool)

(declare-fun tp!1882031 () Bool)

(assert (=> b!6862002 (= e!4137056 (and tp!1882035 tp!1882031))))

(assert (= (and b!6860943 (is-ElementMatch!16690 (regOne!33893 (regOne!33893 (regOne!33893 r!7292))))) b!6862001))

(assert (= (and b!6860943 (is-Concat!25535 (regOne!33893 (regOne!33893 (regOne!33893 r!7292))))) b!6862002))

(assert (= (and b!6860943 (is-Star!16690 (regOne!33893 (regOne!33893 (regOne!33893 r!7292))))) b!6862003))

(assert (= (and b!6860943 (is-Union!16690 (regOne!33893 (regOne!33893 (regOne!33893 r!7292))))) b!6862004))

(declare-fun b!6862008 () Bool)

(declare-fun e!4137057 () Bool)

(declare-fun tp!1882038 () Bool)

(declare-fun tp!1882039 () Bool)

(assert (=> b!6862008 (= e!4137057 (and tp!1882038 tp!1882039))))

(declare-fun b!6862007 () Bool)

(declare-fun tp!1882037 () Bool)

(assert (=> b!6862007 (= e!4137057 tp!1882037)))

(declare-fun b!6862005 () Bool)

(assert (=> b!6862005 (= e!4137057 tp_is_empty!42633)))

(assert (=> b!6860943 (= tp!1881467 e!4137057)))

(declare-fun b!6862006 () Bool)

(declare-fun tp!1882040 () Bool)

(declare-fun tp!1882036 () Bool)

(assert (=> b!6862006 (= e!4137057 (and tp!1882040 tp!1882036))))

(assert (= (and b!6860943 (is-ElementMatch!16690 (regTwo!33893 (regOne!33893 (regOne!33893 r!7292))))) b!6862005))

(assert (= (and b!6860943 (is-Concat!25535 (regTwo!33893 (regOne!33893 (regOne!33893 r!7292))))) b!6862006))

(assert (= (and b!6860943 (is-Star!16690 (regTwo!33893 (regOne!33893 (regOne!33893 r!7292))))) b!6862007))

(assert (= (and b!6860943 (is-Union!16690 (regTwo!33893 (regOne!33893 (regOne!33893 r!7292))))) b!6862008))

(declare-fun b!6862012 () Bool)

(declare-fun e!4137058 () Bool)

(declare-fun tp!1882043 () Bool)

(declare-fun tp!1882044 () Bool)

(assert (=> b!6862012 (= e!4137058 (and tp!1882043 tp!1882044))))

(declare-fun b!6862011 () Bool)

(declare-fun tp!1882042 () Bool)

(assert (=> b!6862011 (= e!4137058 tp!1882042)))

(declare-fun b!6862009 () Bool)

(assert (=> b!6862009 (= e!4137058 tp_is_empty!42633)))

(assert (=> b!6860950 (= tp!1881479 e!4137058)))

(declare-fun b!6862010 () Bool)

(declare-fun tp!1882045 () Bool)

(declare-fun tp!1882041 () Bool)

(assert (=> b!6862010 (= e!4137058 (and tp!1882045 tp!1882041))))

(assert (= (and b!6860950 (is-ElementMatch!16690 (regOne!33892 (regOne!33893 (regTwo!33893 r!7292))))) b!6862009))

(assert (= (and b!6860950 (is-Concat!25535 (regOne!33892 (regOne!33893 (regTwo!33893 r!7292))))) b!6862010))

(assert (= (and b!6860950 (is-Star!16690 (regOne!33892 (regOne!33893 (regTwo!33893 r!7292))))) b!6862011))

(assert (= (and b!6860950 (is-Union!16690 (regOne!33892 (regOne!33893 (regTwo!33893 r!7292))))) b!6862012))

(declare-fun b!6862016 () Bool)

(declare-fun e!4137059 () Bool)

(declare-fun tp!1882048 () Bool)

(declare-fun tp!1882049 () Bool)

(assert (=> b!6862016 (= e!4137059 (and tp!1882048 tp!1882049))))

(declare-fun b!6862015 () Bool)

(declare-fun tp!1882047 () Bool)

(assert (=> b!6862015 (= e!4137059 tp!1882047)))

(declare-fun b!6862013 () Bool)

(assert (=> b!6862013 (= e!4137059 tp_is_empty!42633)))

(assert (=> b!6860950 (= tp!1881475 e!4137059)))

(declare-fun b!6862014 () Bool)

(declare-fun tp!1882050 () Bool)

(declare-fun tp!1882046 () Bool)

(assert (=> b!6862014 (= e!4137059 (and tp!1882050 tp!1882046))))

(assert (= (and b!6860950 (is-ElementMatch!16690 (regTwo!33892 (regOne!33893 (regTwo!33893 r!7292))))) b!6862013))

(assert (= (and b!6860950 (is-Concat!25535 (regTwo!33892 (regOne!33893 (regTwo!33893 r!7292))))) b!6862014))

(assert (= (and b!6860950 (is-Star!16690 (regTwo!33892 (regOne!33893 (regTwo!33893 r!7292))))) b!6862015))

(assert (= (and b!6860950 (is-Union!16690 (regTwo!33892 (regOne!33893 (regTwo!33893 r!7292))))) b!6862016))

(declare-fun b!6862020 () Bool)

(declare-fun e!4137060 () Bool)

(declare-fun tp!1882053 () Bool)

(declare-fun tp!1882054 () Bool)

(assert (=> b!6862020 (= e!4137060 (and tp!1882053 tp!1882054))))

(declare-fun b!6862019 () Bool)

(declare-fun tp!1882052 () Bool)

(assert (=> b!6862019 (= e!4137060 tp!1882052)))

(declare-fun b!6862017 () Bool)

(assert (=> b!6862017 (= e!4137060 tp_is_empty!42633)))

(assert (=> b!6860999 (= tp!1881541 e!4137060)))

(declare-fun b!6862018 () Bool)

(declare-fun tp!1882055 () Bool)

(declare-fun tp!1882051 () Bool)

(assert (=> b!6862018 (= e!4137060 (and tp!1882055 tp!1882051))))

(assert (= (and b!6860999 (is-ElementMatch!16690 (regOne!33892 (regTwo!33893 (regTwo!33892 r!7292))))) b!6862017))

(assert (= (and b!6860999 (is-Concat!25535 (regOne!33892 (regTwo!33893 (regTwo!33892 r!7292))))) b!6862018))

(assert (= (and b!6860999 (is-Star!16690 (regOne!33892 (regTwo!33893 (regTwo!33892 r!7292))))) b!6862019))

(assert (= (and b!6860999 (is-Union!16690 (regOne!33892 (regTwo!33893 (regTwo!33892 r!7292))))) b!6862020))

(declare-fun b!6862024 () Bool)

(declare-fun e!4137061 () Bool)

(declare-fun tp!1882058 () Bool)

(declare-fun tp!1882059 () Bool)

(assert (=> b!6862024 (= e!4137061 (and tp!1882058 tp!1882059))))

(declare-fun b!6862023 () Bool)

(declare-fun tp!1882057 () Bool)

(assert (=> b!6862023 (= e!4137061 tp!1882057)))

(declare-fun b!6862021 () Bool)

(assert (=> b!6862021 (= e!4137061 tp_is_empty!42633)))

(assert (=> b!6860999 (= tp!1881537 e!4137061)))

(declare-fun b!6862022 () Bool)

(declare-fun tp!1882060 () Bool)

(declare-fun tp!1882056 () Bool)

(assert (=> b!6862022 (= e!4137061 (and tp!1882060 tp!1882056))))

(assert (= (and b!6860999 (is-ElementMatch!16690 (regTwo!33892 (regTwo!33893 (regTwo!33892 r!7292))))) b!6862021))

(assert (= (and b!6860999 (is-Concat!25535 (regTwo!33892 (regTwo!33893 (regTwo!33892 r!7292))))) b!6862022))

(assert (= (and b!6860999 (is-Star!16690 (regTwo!33892 (regTwo!33893 (regTwo!33892 r!7292))))) b!6862023))

(assert (= (and b!6860999 (is-Union!16690 (regTwo!33892 (regTwo!33893 (regTwo!33892 r!7292))))) b!6862024))

(declare-fun b!6862028 () Bool)

(declare-fun e!4137062 () Bool)

(declare-fun tp!1882063 () Bool)

(declare-fun tp!1882064 () Bool)

(assert (=> b!6862028 (= e!4137062 (and tp!1882063 tp!1882064))))

(declare-fun b!6862027 () Bool)

(declare-fun tp!1882062 () Bool)

(assert (=> b!6862027 (= e!4137062 tp!1882062)))

(declare-fun b!6862025 () Bool)

(assert (=> b!6862025 (= e!4137062 tp_is_empty!42633)))

(assert (=> b!6860952 (= tp!1881477 e!4137062)))

(declare-fun b!6862026 () Bool)

(declare-fun tp!1882065 () Bool)

(declare-fun tp!1882061 () Bool)

(assert (=> b!6862026 (= e!4137062 (and tp!1882065 tp!1882061))))

(assert (= (and b!6860952 (is-ElementMatch!16690 (regOne!33893 (regOne!33893 (regTwo!33893 r!7292))))) b!6862025))

(assert (= (and b!6860952 (is-Concat!25535 (regOne!33893 (regOne!33893 (regTwo!33893 r!7292))))) b!6862026))

(assert (= (and b!6860952 (is-Star!16690 (regOne!33893 (regOne!33893 (regTwo!33893 r!7292))))) b!6862027))

(assert (= (and b!6860952 (is-Union!16690 (regOne!33893 (regOne!33893 (regTwo!33893 r!7292))))) b!6862028))

(declare-fun b!6862032 () Bool)

(declare-fun e!4137063 () Bool)

(declare-fun tp!1882068 () Bool)

(declare-fun tp!1882069 () Bool)

(assert (=> b!6862032 (= e!4137063 (and tp!1882068 tp!1882069))))

(declare-fun b!6862031 () Bool)

(declare-fun tp!1882067 () Bool)

(assert (=> b!6862031 (= e!4137063 tp!1882067)))

(declare-fun b!6862029 () Bool)

(assert (=> b!6862029 (= e!4137063 tp_is_empty!42633)))

(assert (=> b!6860952 (= tp!1881478 e!4137063)))

(declare-fun b!6862030 () Bool)

(declare-fun tp!1882070 () Bool)

(declare-fun tp!1882066 () Bool)

(assert (=> b!6862030 (= e!4137063 (and tp!1882070 tp!1882066))))

(assert (= (and b!6860952 (is-ElementMatch!16690 (regTwo!33893 (regOne!33893 (regTwo!33893 r!7292))))) b!6862029))

(assert (= (and b!6860952 (is-Concat!25535 (regTwo!33893 (regOne!33893 (regTwo!33893 r!7292))))) b!6862030))

(assert (= (and b!6860952 (is-Star!16690 (regTwo!33893 (regOne!33893 (regTwo!33893 r!7292))))) b!6862031))

(assert (= (and b!6860952 (is-Union!16690 (regTwo!33893 (regOne!33893 (regTwo!33893 r!7292))))) b!6862032))

(declare-fun b!6862036 () Bool)

(declare-fun e!4137064 () Bool)

(declare-fun tp!1882073 () Bool)

(declare-fun tp!1882074 () Bool)

(assert (=> b!6862036 (= e!4137064 (and tp!1882073 tp!1882074))))

(declare-fun b!6862035 () Bool)

(declare-fun tp!1882072 () Bool)

(assert (=> b!6862035 (= e!4137064 tp!1882072)))

(declare-fun b!6862033 () Bool)

(assert (=> b!6862033 (= e!4137064 tp_is_empty!42633)))

(assert (=> b!6860927 (= tp!1881447 e!4137064)))

(declare-fun b!6862034 () Bool)

(declare-fun tp!1882075 () Bool)

(declare-fun tp!1882071 () Bool)

(assert (=> b!6862034 (= e!4137064 (and tp!1882075 tp!1882071))))

(assert (= (and b!6860927 (is-ElementMatch!16690 (h!72693 (t!380112 (exprs!6574 setElem!47178))))) b!6862033))

(assert (= (and b!6860927 (is-Concat!25535 (h!72693 (t!380112 (exprs!6574 setElem!47178))))) b!6862034))

(assert (= (and b!6860927 (is-Star!16690 (h!72693 (t!380112 (exprs!6574 setElem!47178))))) b!6862035))

(assert (= (and b!6860927 (is-Union!16690 (h!72693 (t!380112 (exprs!6574 setElem!47178))))) b!6862036))

(declare-fun b!6862037 () Bool)

(declare-fun e!4137065 () Bool)

(declare-fun tp!1882076 () Bool)

(declare-fun tp!1882077 () Bool)

(assert (=> b!6862037 (= e!4137065 (and tp!1882076 tp!1882077))))

(assert (=> b!6860927 (= tp!1881448 e!4137065)))

(assert (= (and b!6860927 (is-Cons!66245 (t!380112 (t!380112 (exprs!6574 setElem!47178))))) b!6862037))

(declare-fun b!6862041 () Bool)

(declare-fun e!4137066 () Bool)

(declare-fun tp!1882080 () Bool)

(declare-fun tp!1882081 () Bool)

(assert (=> b!6862041 (= e!4137066 (and tp!1882080 tp!1882081))))

(declare-fun b!6862040 () Bool)

(declare-fun tp!1882079 () Bool)

(assert (=> b!6862040 (= e!4137066 tp!1882079)))

(declare-fun b!6862038 () Bool)

(assert (=> b!6862038 (= e!4137066 tp_is_empty!42633)))

(assert (=> b!6860896 (= tp!1881410 e!4137066)))

(declare-fun b!6862039 () Bool)

(declare-fun tp!1882082 () Bool)

(declare-fun tp!1882078 () Bool)

(assert (=> b!6862039 (= e!4137066 (and tp!1882082 tp!1882078))))

(assert (= (and b!6860896 (is-ElementMatch!16690 (regOne!33892 (regOne!33892 (regOne!33892 r!7292))))) b!6862038))

(assert (= (and b!6860896 (is-Concat!25535 (regOne!33892 (regOne!33892 (regOne!33892 r!7292))))) b!6862039))

(assert (= (and b!6860896 (is-Star!16690 (regOne!33892 (regOne!33892 (regOne!33892 r!7292))))) b!6862040))

(assert (= (and b!6860896 (is-Union!16690 (regOne!33892 (regOne!33892 (regOne!33892 r!7292))))) b!6862041))

(declare-fun b!6862045 () Bool)

(declare-fun e!4137067 () Bool)

(declare-fun tp!1882085 () Bool)

(declare-fun tp!1882086 () Bool)

(assert (=> b!6862045 (= e!4137067 (and tp!1882085 tp!1882086))))

(declare-fun b!6862044 () Bool)

(declare-fun tp!1882084 () Bool)

(assert (=> b!6862044 (= e!4137067 tp!1882084)))

(declare-fun b!6862042 () Bool)

(assert (=> b!6862042 (= e!4137067 tp_is_empty!42633)))

(assert (=> b!6860896 (= tp!1881406 e!4137067)))

(declare-fun b!6862043 () Bool)

(declare-fun tp!1882087 () Bool)

(declare-fun tp!1882083 () Bool)

(assert (=> b!6862043 (= e!4137067 (and tp!1882087 tp!1882083))))

(assert (= (and b!6860896 (is-ElementMatch!16690 (regTwo!33892 (regOne!33892 (regOne!33892 r!7292))))) b!6862042))

(assert (= (and b!6860896 (is-Concat!25535 (regTwo!33892 (regOne!33892 (regOne!33892 r!7292))))) b!6862043))

(assert (= (and b!6860896 (is-Star!16690 (regTwo!33892 (regOne!33892 (regOne!33892 r!7292))))) b!6862044))

(assert (= (and b!6860896 (is-Union!16690 (regTwo!33892 (regOne!33892 (regOne!33892 r!7292))))) b!6862045))

(declare-fun b!6862049 () Bool)

(declare-fun e!4137068 () Bool)

(declare-fun tp!1882090 () Bool)

(declare-fun tp!1882091 () Bool)

(assert (=> b!6862049 (= e!4137068 (and tp!1882090 tp!1882091))))

(declare-fun b!6862048 () Bool)

(declare-fun tp!1882089 () Bool)

(assert (=> b!6862048 (= e!4137068 tp!1882089)))

(declare-fun b!6862046 () Bool)

(assert (=> b!6862046 (= e!4137068 tp_is_empty!42633)))

(assert (=> b!6860992 (= tp!1881528 e!4137068)))

(declare-fun b!6862047 () Bool)

(declare-fun tp!1882092 () Bool)

(declare-fun tp!1882088 () Bool)

(assert (=> b!6862047 (= e!4137068 (and tp!1882092 tp!1882088))))

(assert (= (and b!6860992 (is-ElementMatch!16690 (reg!17019 (regTwo!33893 (reg!17019 r!7292))))) b!6862046))

(assert (= (and b!6860992 (is-Concat!25535 (reg!17019 (regTwo!33893 (reg!17019 r!7292))))) b!6862047))

(assert (= (and b!6860992 (is-Star!16690 (reg!17019 (regTwo!33893 (reg!17019 r!7292))))) b!6862048))

(assert (= (and b!6860992 (is-Union!16690 (reg!17019 (regTwo!33893 (reg!17019 r!7292))))) b!6862049))

(declare-fun b!6862053 () Bool)

(declare-fun e!4137069 () Bool)

(declare-fun tp!1882095 () Bool)

(declare-fun tp!1882096 () Bool)

(assert (=> b!6862053 (= e!4137069 (and tp!1882095 tp!1882096))))

(declare-fun b!6862052 () Bool)

(declare-fun tp!1882094 () Bool)

(assert (=> b!6862052 (= e!4137069 tp!1882094)))

(declare-fun b!6862050 () Bool)

(assert (=> b!6862050 (= e!4137069 tp_is_empty!42633)))

(assert (=> b!6860905 (= tp!1881417 e!4137069)))

(declare-fun b!6862051 () Bool)

(declare-fun tp!1882097 () Bool)

(declare-fun tp!1882093 () Bool)

(assert (=> b!6862051 (= e!4137069 (and tp!1882097 tp!1882093))))

(assert (= (and b!6860905 (is-ElementMatch!16690 (reg!17019 (reg!17019 (regOne!33893 r!7292))))) b!6862050))

(assert (= (and b!6860905 (is-Concat!25535 (reg!17019 (reg!17019 (regOne!33893 r!7292))))) b!6862051))

(assert (= (and b!6860905 (is-Star!16690 (reg!17019 (reg!17019 (regOne!33893 r!7292))))) b!6862052))

(assert (= (and b!6860905 (is-Union!16690 (reg!17019 (reg!17019 (regOne!33893 r!7292))))) b!6862053))

(declare-fun b!6862057 () Bool)

(declare-fun e!4137070 () Bool)

(declare-fun tp!1882100 () Bool)

(declare-fun tp!1882101 () Bool)

(assert (=> b!6862057 (= e!4137070 (and tp!1882100 tp!1882101))))

(declare-fun b!6862056 () Bool)

(declare-fun tp!1882099 () Bool)

(assert (=> b!6862056 (= e!4137070 tp!1882099)))

(declare-fun b!6862054 () Bool)

(assert (=> b!6862054 (= e!4137070 tp_is_empty!42633)))

(assert (=> b!6861001 (= tp!1881539 e!4137070)))

(declare-fun b!6862055 () Bool)

(declare-fun tp!1882102 () Bool)

(declare-fun tp!1882098 () Bool)

(assert (=> b!6862055 (= e!4137070 (and tp!1882102 tp!1882098))))

(assert (= (and b!6861001 (is-ElementMatch!16690 (regOne!33893 (regTwo!33893 (regTwo!33892 r!7292))))) b!6862054))

(assert (= (and b!6861001 (is-Concat!25535 (regOne!33893 (regTwo!33893 (regTwo!33892 r!7292))))) b!6862055))

(assert (= (and b!6861001 (is-Star!16690 (regOne!33893 (regTwo!33893 (regTwo!33892 r!7292))))) b!6862056))

(assert (= (and b!6861001 (is-Union!16690 (regOne!33893 (regTwo!33893 (regTwo!33892 r!7292))))) b!6862057))

(declare-fun b!6862061 () Bool)

(declare-fun e!4137071 () Bool)

(declare-fun tp!1882105 () Bool)

(declare-fun tp!1882106 () Bool)

(assert (=> b!6862061 (= e!4137071 (and tp!1882105 tp!1882106))))

(declare-fun b!6862060 () Bool)

(declare-fun tp!1882104 () Bool)

(assert (=> b!6862060 (= e!4137071 tp!1882104)))

(declare-fun b!6862058 () Bool)

(assert (=> b!6862058 (= e!4137071 tp_is_empty!42633)))

(assert (=> b!6861001 (= tp!1881540 e!4137071)))

(declare-fun b!6862059 () Bool)

(declare-fun tp!1882107 () Bool)

(declare-fun tp!1882103 () Bool)

(assert (=> b!6862059 (= e!4137071 (and tp!1882107 tp!1882103))))

(assert (= (and b!6861001 (is-ElementMatch!16690 (regTwo!33893 (regTwo!33893 (regTwo!33892 r!7292))))) b!6862058))

(assert (= (and b!6861001 (is-Concat!25535 (regTwo!33893 (regTwo!33893 (regTwo!33892 r!7292))))) b!6862059))

(assert (= (and b!6861001 (is-Star!16690 (regTwo!33893 (regTwo!33893 (regTwo!33892 r!7292))))) b!6862060))

(assert (= (and b!6861001 (is-Union!16690 (regTwo!33893 (regTwo!33893 (regTwo!33892 r!7292))))) b!6862061))

(declare-fun b!6862065 () Bool)

(declare-fun e!4137072 () Bool)

(declare-fun tp!1882110 () Bool)

(declare-fun tp!1882111 () Bool)

(assert (=> b!6862065 (= e!4137072 (and tp!1882110 tp!1882111))))

(declare-fun b!6862064 () Bool)

(declare-fun tp!1882109 () Bool)

(assert (=> b!6862064 (= e!4137072 tp!1882109)))

(declare-fun b!6862062 () Bool)

(assert (=> b!6862062 (= e!4137072 tp_is_empty!42633)))

(assert (=> b!6860983 (= tp!1881521 e!4137072)))

(declare-fun b!6862063 () Bool)

(declare-fun tp!1882112 () Bool)

(declare-fun tp!1882108 () Bool)

(assert (=> b!6862063 (= e!4137072 (and tp!1882112 tp!1882108))))

(assert (= (and b!6860983 (is-ElementMatch!16690 (regOne!33892 (regTwo!33892 (regTwo!33893 r!7292))))) b!6862062))

(assert (= (and b!6860983 (is-Concat!25535 (regOne!33892 (regTwo!33892 (regTwo!33893 r!7292))))) b!6862063))

(assert (= (and b!6860983 (is-Star!16690 (regOne!33892 (regTwo!33892 (regTwo!33893 r!7292))))) b!6862064))

(assert (= (and b!6860983 (is-Union!16690 (regOne!33892 (regTwo!33892 (regTwo!33893 r!7292))))) b!6862065))

(declare-fun b!6862069 () Bool)

(declare-fun e!4137073 () Bool)

(declare-fun tp!1882115 () Bool)

(declare-fun tp!1882116 () Bool)

(assert (=> b!6862069 (= e!4137073 (and tp!1882115 tp!1882116))))

(declare-fun b!6862068 () Bool)

(declare-fun tp!1882114 () Bool)

(assert (=> b!6862068 (= e!4137073 tp!1882114)))

(declare-fun b!6862066 () Bool)

(assert (=> b!6862066 (= e!4137073 tp_is_empty!42633)))

(assert (=> b!6860983 (= tp!1881517 e!4137073)))

(declare-fun b!6862067 () Bool)

(declare-fun tp!1882117 () Bool)

(declare-fun tp!1882113 () Bool)

(assert (=> b!6862067 (= e!4137073 (and tp!1882117 tp!1882113))))

(assert (= (and b!6860983 (is-ElementMatch!16690 (regTwo!33892 (regTwo!33892 (regTwo!33893 r!7292))))) b!6862066))

(assert (= (and b!6860983 (is-Concat!25535 (regTwo!33892 (regTwo!33892 (regTwo!33893 r!7292))))) b!6862067))

(assert (= (and b!6860983 (is-Star!16690 (regTwo!33892 (regTwo!33892 (regTwo!33893 r!7292))))) b!6862068))

(assert (= (and b!6860983 (is-Union!16690 (regTwo!33892 (regTwo!33892 (regTwo!33893 r!7292))))) b!6862069))

(declare-fun b!6862073 () Bool)

(declare-fun e!4137074 () Bool)

(declare-fun tp!1882120 () Bool)

(declare-fun tp!1882121 () Bool)

(assert (=> b!6862073 (= e!4137074 (and tp!1882120 tp!1882121))))

(declare-fun b!6862072 () Bool)

(declare-fun tp!1882119 () Bool)

(assert (=> b!6862072 (= e!4137074 tp!1882119)))

(declare-fun b!6862070 () Bool)

(assert (=> b!6862070 (= e!4137074 tp_is_empty!42633)))

(assert (=> b!6860920 (= tp!1881436 e!4137074)))

(declare-fun b!6862071 () Bool)

(declare-fun tp!1882122 () Bool)

(declare-fun tp!1882118 () Bool)

(assert (=> b!6862071 (= e!4137074 (and tp!1882122 tp!1882118))))

(assert (= (and b!6860920 (is-ElementMatch!16690 (reg!17019 (h!72693 (exprs!6574 (h!72695 zl!343)))))) b!6862070))

(assert (= (and b!6860920 (is-Concat!25535 (reg!17019 (h!72693 (exprs!6574 (h!72695 zl!343)))))) b!6862071))

(assert (= (and b!6860920 (is-Star!16690 (reg!17019 (h!72693 (exprs!6574 (h!72695 zl!343)))))) b!6862072))

(assert (= (and b!6860920 (is-Union!16690 (reg!17019 (h!72693 (exprs!6574 (h!72695 zl!343)))))) b!6862073))

(declare-fun b!6862077 () Bool)

(declare-fun e!4137075 () Bool)

(declare-fun tp!1882125 () Bool)

(declare-fun tp!1882126 () Bool)

(assert (=> b!6862077 (= e!4137075 (and tp!1882125 tp!1882126))))

(declare-fun b!6862076 () Bool)

(declare-fun tp!1882124 () Bool)

(assert (=> b!6862076 (= e!4137075 tp!1882124)))

(declare-fun b!6862074 () Bool)

(assert (=> b!6862074 (= e!4137075 tp_is_empty!42633)))

(assert (=> b!6860976 (= tp!1881508 e!4137075)))

(declare-fun b!6862075 () Bool)

(declare-fun tp!1882127 () Bool)

(declare-fun tp!1882123 () Bool)

(assert (=> b!6862075 (= e!4137075 (and tp!1882127 tp!1882123))))

(assert (= (and b!6860976 (is-ElementMatch!16690 (reg!17019 (reg!17019 (regTwo!33893 r!7292))))) b!6862074))

(assert (= (and b!6860976 (is-Concat!25535 (reg!17019 (reg!17019 (regTwo!33893 r!7292))))) b!6862075))

(assert (= (and b!6860976 (is-Star!16690 (reg!17019 (reg!17019 (regTwo!33893 r!7292))))) b!6862076))

(assert (= (and b!6860976 (is-Union!16690 (reg!17019 (reg!17019 (regTwo!33893 r!7292))))) b!6862077))

(declare-fun b!6862081 () Bool)

(declare-fun e!4137076 () Bool)

(declare-fun tp!1882130 () Bool)

(declare-fun tp!1882131 () Bool)

(assert (=> b!6862081 (= e!4137076 (and tp!1882130 tp!1882131))))

(declare-fun b!6862080 () Bool)

(declare-fun tp!1882129 () Bool)

(assert (=> b!6862080 (= e!4137076 tp!1882129)))

(declare-fun b!6862078 () Bool)

(assert (=> b!6862078 (= e!4137076 tp_is_empty!42633)))

(assert (=> b!6860985 (= tp!1881519 e!4137076)))

(declare-fun b!6862079 () Bool)

(declare-fun tp!1882132 () Bool)

(declare-fun tp!1882128 () Bool)

(assert (=> b!6862079 (= e!4137076 (and tp!1882132 tp!1882128))))

(assert (= (and b!6860985 (is-ElementMatch!16690 (regOne!33893 (regTwo!33892 (regTwo!33893 r!7292))))) b!6862078))

(assert (= (and b!6860985 (is-Concat!25535 (regOne!33893 (regTwo!33892 (regTwo!33893 r!7292))))) b!6862079))

(assert (= (and b!6860985 (is-Star!16690 (regOne!33893 (regTwo!33892 (regTwo!33893 r!7292))))) b!6862080))

(assert (= (and b!6860985 (is-Union!16690 (regOne!33893 (regTwo!33892 (regTwo!33893 r!7292))))) b!6862081))

(declare-fun b!6862085 () Bool)

(declare-fun e!4137077 () Bool)

(declare-fun tp!1882135 () Bool)

(declare-fun tp!1882136 () Bool)

(assert (=> b!6862085 (= e!4137077 (and tp!1882135 tp!1882136))))

(declare-fun b!6862084 () Bool)

(declare-fun tp!1882134 () Bool)

(assert (=> b!6862084 (= e!4137077 tp!1882134)))

(declare-fun b!6862082 () Bool)

(assert (=> b!6862082 (= e!4137077 tp_is_empty!42633)))

(assert (=> b!6860985 (= tp!1881520 e!4137077)))

(declare-fun b!6862083 () Bool)

(declare-fun tp!1882137 () Bool)

(declare-fun tp!1882133 () Bool)

(assert (=> b!6862083 (= e!4137077 (and tp!1882137 tp!1882133))))

(assert (= (and b!6860985 (is-ElementMatch!16690 (regTwo!33893 (regTwo!33892 (regTwo!33893 r!7292))))) b!6862082))

(assert (= (and b!6860985 (is-Concat!25535 (regTwo!33893 (regTwo!33892 (regTwo!33893 r!7292))))) b!6862083))

(assert (= (and b!6860985 (is-Star!16690 (regTwo!33893 (regTwo!33892 (regTwo!33893 r!7292))))) b!6862084))

(assert (= (and b!6860985 (is-Union!16690 (regTwo!33893 (regTwo!33892 (regTwo!33893 r!7292))))) b!6862085))

(declare-fun b!6862089 () Bool)

(declare-fun e!4137078 () Bool)

(declare-fun tp!1882140 () Bool)

(declare-fun tp!1882141 () Bool)

(assert (=> b!6862089 (= e!4137078 (and tp!1882140 tp!1882141))))

(declare-fun b!6862088 () Bool)

(declare-fun tp!1882139 () Bool)

(assert (=> b!6862088 (= e!4137078 tp!1882139)))

(declare-fun b!6862086 () Bool)

(assert (=> b!6862086 (= e!4137078 tp_is_empty!42633)))

(assert (=> b!6860915 (= tp!1881430 e!4137078)))

(declare-fun b!6862087 () Bool)

(declare-fun tp!1882142 () Bool)

(declare-fun tp!1882138 () Bool)

(assert (=> b!6862087 (= e!4137078 (and tp!1882142 tp!1882138))))

(assert (= (and b!6860915 (is-ElementMatch!16690 (regOne!33893 (regTwo!33892 (regOne!33893 r!7292))))) b!6862086))

(assert (= (and b!6860915 (is-Concat!25535 (regOne!33893 (regTwo!33892 (regOne!33893 r!7292))))) b!6862087))

(assert (= (and b!6860915 (is-Star!16690 (regOne!33893 (regTwo!33892 (regOne!33893 r!7292))))) b!6862088))

(assert (= (and b!6860915 (is-Union!16690 (regOne!33893 (regTwo!33892 (regOne!33893 r!7292))))) b!6862089))

(declare-fun b!6862093 () Bool)

(declare-fun e!4137079 () Bool)

(declare-fun tp!1882145 () Bool)

(declare-fun tp!1882146 () Bool)

(assert (=> b!6862093 (= e!4137079 (and tp!1882145 tp!1882146))))

(declare-fun b!6862092 () Bool)

(declare-fun tp!1882144 () Bool)

(assert (=> b!6862092 (= e!4137079 tp!1882144)))

(declare-fun b!6862090 () Bool)

(assert (=> b!6862090 (= e!4137079 tp_is_empty!42633)))

(assert (=> b!6860915 (= tp!1881431 e!4137079)))

(declare-fun b!6862091 () Bool)

(declare-fun tp!1882147 () Bool)

(declare-fun tp!1882143 () Bool)

(assert (=> b!6862091 (= e!4137079 (and tp!1882147 tp!1882143))))

(assert (= (and b!6860915 (is-ElementMatch!16690 (regTwo!33893 (regTwo!33892 (regOne!33893 r!7292))))) b!6862090))

(assert (= (and b!6860915 (is-Concat!25535 (regTwo!33893 (regTwo!33892 (regOne!33893 r!7292))))) b!6862091))

(assert (= (and b!6860915 (is-Star!16690 (regTwo!33893 (regTwo!33892 (regOne!33893 r!7292))))) b!6862092))

(assert (= (and b!6860915 (is-Union!16690 (regTwo!33893 (regTwo!33892 (regOne!33893 r!7292))))) b!6862093))

(declare-fun b!6862097 () Bool)

(declare-fun e!4137080 () Bool)

(declare-fun tp!1882150 () Bool)

(declare-fun tp!1882151 () Bool)

(assert (=> b!6862097 (= e!4137080 (and tp!1882150 tp!1882151))))

(declare-fun b!6862096 () Bool)

(declare-fun tp!1882149 () Bool)

(assert (=> b!6862096 (= e!4137080 tp!1882149)))

(declare-fun b!6862094 () Bool)

(assert (=> b!6862094 (= e!4137080 tp_is_empty!42633)))

(assert (=> b!6860963 (= tp!1881491 e!4137080)))

(declare-fun b!6862095 () Bool)

(declare-fun tp!1882152 () Bool)

(declare-fun tp!1882148 () Bool)

(assert (=> b!6862095 (= e!4137080 (and tp!1882152 tp!1882148))))

(assert (= (and b!6860963 (is-ElementMatch!16690 (reg!17019 (regTwo!33892 (reg!17019 r!7292))))) b!6862094))

(assert (= (and b!6860963 (is-Concat!25535 (reg!17019 (regTwo!33892 (reg!17019 r!7292))))) b!6862095))

(assert (= (and b!6860963 (is-Star!16690 (reg!17019 (regTwo!33892 (reg!17019 r!7292))))) b!6862096))

(assert (= (and b!6860963 (is-Union!16690 (reg!17019 (regTwo!33892 (reg!17019 r!7292))))) b!6862097))

(declare-fun b!6862101 () Bool)

(declare-fun e!4137081 () Bool)

(declare-fun tp!1882155 () Bool)

(declare-fun tp!1882156 () Bool)

(assert (=> b!6862101 (= e!4137081 (and tp!1882155 tp!1882156))))

(declare-fun b!6862100 () Bool)

(declare-fun tp!1882154 () Bool)

(assert (=> b!6862100 (= e!4137081 tp!1882154)))

(declare-fun b!6862098 () Bool)

(assert (=> b!6862098 (= e!4137081 tp_is_empty!42633)))

(assert (=> b!6860967 (= tp!1881501 e!4137081)))

(declare-fun b!6862099 () Bool)

(declare-fun tp!1882157 () Bool)

(declare-fun tp!1882153 () Bool)

(assert (=> b!6862099 (= e!4137081 (and tp!1882157 tp!1882153))))

(assert (= (and b!6860967 (is-ElementMatch!16690 (regOne!33892 (regOne!33892 (regTwo!33892 r!7292))))) b!6862098))

(assert (= (and b!6860967 (is-Concat!25535 (regOne!33892 (regOne!33892 (regTwo!33892 r!7292))))) b!6862099))

(assert (= (and b!6860967 (is-Star!16690 (regOne!33892 (regOne!33892 (regTwo!33892 r!7292))))) b!6862100))

(assert (= (and b!6860967 (is-Union!16690 (regOne!33892 (regOne!33892 (regTwo!33892 r!7292))))) b!6862101))

(declare-fun b!6862105 () Bool)

(declare-fun e!4137082 () Bool)

(declare-fun tp!1882160 () Bool)

(declare-fun tp!1882161 () Bool)

(assert (=> b!6862105 (= e!4137082 (and tp!1882160 tp!1882161))))

(declare-fun b!6862104 () Bool)

(declare-fun tp!1882159 () Bool)

(assert (=> b!6862104 (= e!4137082 tp!1882159)))

(declare-fun b!6862102 () Bool)

(assert (=> b!6862102 (= e!4137082 tp_is_empty!42633)))

(assert (=> b!6860967 (= tp!1881497 e!4137082)))

(declare-fun b!6862103 () Bool)

(declare-fun tp!1882162 () Bool)

(declare-fun tp!1882158 () Bool)

(assert (=> b!6862103 (= e!4137082 (and tp!1882162 tp!1882158))))

(assert (= (and b!6860967 (is-ElementMatch!16690 (regTwo!33892 (regOne!33892 (regTwo!33892 r!7292))))) b!6862102))

(assert (= (and b!6860967 (is-Concat!25535 (regTwo!33892 (regOne!33892 (regTwo!33892 r!7292))))) b!6862103))

(assert (= (and b!6860967 (is-Star!16690 (regTwo!33892 (regOne!33892 (regTwo!33892 r!7292))))) b!6862104))

(assert (= (and b!6860967 (is-Union!16690 (regTwo!33892 (regOne!33892 (regTwo!33892 r!7292))))) b!6862105))

(declare-fun b!6862109 () Bool)

(declare-fun e!4137083 () Bool)

(declare-fun tp!1882165 () Bool)

(declare-fun tp!1882166 () Bool)

(assert (=> b!6862109 (= e!4137083 (and tp!1882165 tp!1882166))))

(declare-fun b!6862108 () Bool)

(declare-fun tp!1882164 () Bool)

(assert (=> b!6862108 (= e!4137083 tp!1882164)))

(declare-fun b!6862106 () Bool)

(assert (=> b!6862106 (= e!4137083 tp_is_empty!42633)))

(assert (=> b!6860913 (= tp!1881432 e!4137083)))

(declare-fun b!6862107 () Bool)

(declare-fun tp!1882167 () Bool)

(declare-fun tp!1882163 () Bool)

(assert (=> b!6862107 (= e!4137083 (and tp!1882167 tp!1882163))))

(assert (= (and b!6860913 (is-ElementMatch!16690 (regOne!33892 (regTwo!33892 (regOne!33893 r!7292))))) b!6862106))

(assert (= (and b!6860913 (is-Concat!25535 (regOne!33892 (regTwo!33892 (regOne!33893 r!7292))))) b!6862107))

(assert (= (and b!6860913 (is-Star!16690 (regOne!33892 (regTwo!33892 (regOne!33893 r!7292))))) b!6862108))

(assert (= (and b!6860913 (is-Union!16690 (regOne!33892 (regTwo!33892 (regOne!33893 r!7292))))) b!6862109))

(declare-fun b!6862113 () Bool)

(declare-fun e!4137084 () Bool)

(declare-fun tp!1882170 () Bool)

(declare-fun tp!1882171 () Bool)

(assert (=> b!6862113 (= e!4137084 (and tp!1882170 tp!1882171))))

(declare-fun b!6862112 () Bool)

(declare-fun tp!1882169 () Bool)

(assert (=> b!6862112 (= e!4137084 tp!1882169)))

(declare-fun b!6862110 () Bool)

(assert (=> b!6862110 (= e!4137084 tp_is_empty!42633)))

(assert (=> b!6860913 (= tp!1881428 e!4137084)))

(declare-fun b!6862111 () Bool)

(declare-fun tp!1882172 () Bool)

(declare-fun tp!1882168 () Bool)

(assert (=> b!6862111 (= e!4137084 (and tp!1882172 tp!1882168))))

(assert (= (and b!6860913 (is-ElementMatch!16690 (regTwo!33892 (regTwo!33892 (regOne!33893 r!7292))))) b!6862110))

(assert (= (and b!6860913 (is-Concat!25535 (regTwo!33892 (regTwo!33892 (regOne!33893 r!7292))))) b!6862111))

(assert (= (and b!6860913 (is-Star!16690 (regTwo!33892 (regTwo!33892 (regOne!33893 r!7292))))) b!6862112))

(assert (= (and b!6860913 (is-Union!16690 (regTwo!33892 (regTwo!33892 (regOne!33893 r!7292))))) b!6862113))

(declare-fun b!6862117 () Bool)

(declare-fun e!4137085 () Bool)

(declare-fun tp!1882175 () Bool)

(declare-fun tp!1882176 () Bool)

(assert (=> b!6862117 (= e!4137085 (and tp!1882175 tp!1882176))))

(declare-fun b!6862116 () Bool)

(declare-fun tp!1882174 () Bool)

(assert (=> b!6862116 (= e!4137085 tp!1882174)))

(declare-fun b!6862114 () Bool)

(assert (=> b!6862114 (= e!4137085 tp_is_empty!42633)))

(assert (=> b!6861009 (= tp!1881550 e!4137085)))

(declare-fun b!6862115 () Bool)

(declare-fun tp!1882177 () Bool)

(declare-fun tp!1882173 () Bool)

(assert (=> b!6862115 (= e!4137085 (and tp!1882177 tp!1882173))))

(assert (= (and b!6861009 (is-ElementMatch!16690 (reg!17019 (reg!17019 (regTwo!33892 r!7292))))) b!6862114))

(assert (= (and b!6861009 (is-Concat!25535 (reg!17019 (reg!17019 (regTwo!33892 r!7292))))) b!6862115))

(assert (= (and b!6861009 (is-Star!16690 (reg!17019 (reg!17019 (regTwo!33892 r!7292))))) b!6862116))

(assert (= (and b!6861009 (is-Union!16690 (reg!17019 (reg!17019 (regTwo!33892 r!7292))))) b!6862117))

(declare-fun b!6862121 () Bool)

(declare-fun e!4137086 () Bool)

(declare-fun tp!1882180 () Bool)

(declare-fun tp!1882181 () Bool)

(assert (=> b!6862121 (= e!4137086 (and tp!1882180 tp!1882181))))

(declare-fun b!6862120 () Bool)

(declare-fun tp!1882179 () Bool)

(assert (=> b!6862120 (= e!4137086 tp!1882179)))

(declare-fun b!6862118 () Bool)

(assert (=> b!6862118 (= e!4137086 tp_is_empty!42633)))

(assert (=> b!6860898 (= tp!1881408 e!4137086)))

(declare-fun b!6862119 () Bool)

(declare-fun tp!1882182 () Bool)

(declare-fun tp!1882178 () Bool)

(assert (=> b!6862119 (= e!4137086 (and tp!1882182 tp!1882178))))

(assert (= (and b!6860898 (is-ElementMatch!16690 (regOne!33893 (regOne!33892 (regOne!33892 r!7292))))) b!6862118))

(assert (= (and b!6860898 (is-Concat!25535 (regOne!33893 (regOne!33892 (regOne!33892 r!7292))))) b!6862119))

(assert (= (and b!6860898 (is-Star!16690 (regOne!33893 (regOne!33892 (regOne!33892 r!7292))))) b!6862120))

(assert (= (and b!6860898 (is-Union!16690 (regOne!33893 (regOne!33892 (regOne!33892 r!7292))))) b!6862121))

(declare-fun b!6862125 () Bool)

(declare-fun e!4137087 () Bool)

(declare-fun tp!1882185 () Bool)

(declare-fun tp!1882186 () Bool)

(assert (=> b!6862125 (= e!4137087 (and tp!1882185 tp!1882186))))

(declare-fun b!6862124 () Bool)

(declare-fun tp!1882184 () Bool)

(assert (=> b!6862124 (= e!4137087 tp!1882184)))

(declare-fun b!6862122 () Bool)

(assert (=> b!6862122 (= e!4137087 tp_is_empty!42633)))

(assert (=> b!6860898 (= tp!1881409 e!4137087)))

(declare-fun b!6862123 () Bool)

(declare-fun tp!1882187 () Bool)

(declare-fun tp!1882183 () Bool)

(assert (=> b!6862123 (= e!4137087 (and tp!1882187 tp!1882183))))

(assert (= (and b!6860898 (is-ElementMatch!16690 (regTwo!33893 (regOne!33892 (regOne!33892 r!7292))))) b!6862122))

(assert (= (and b!6860898 (is-Concat!25535 (regTwo!33893 (regOne!33892 (regOne!33892 r!7292))))) b!6862123))

(assert (= (and b!6860898 (is-Star!16690 (regTwo!33893 (regOne!33892 (regOne!33892 r!7292))))) b!6862124))

(assert (= (and b!6860898 (is-Union!16690 (regTwo!33893 (regOne!33892 (regOne!33892 r!7292))))) b!6862125))

(declare-fun b!6862129 () Bool)

(declare-fun e!4137088 () Bool)

(declare-fun tp!1882190 () Bool)

(declare-fun tp!1882191 () Bool)

(assert (=> b!6862129 (= e!4137088 (and tp!1882190 tp!1882191))))

(declare-fun b!6862128 () Bool)

(declare-fun tp!1882189 () Bool)

(assert (=> b!6862128 (= e!4137088 tp!1882189)))

(declare-fun b!6862126 () Bool)

(assert (=> b!6862126 (= e!4137088 tp_is_empty!42633)))

(assert (=> b!6860945 (= tp!1881473 e!4137088)))

(declare-fun b!6862127 () Bool)

(declare-fun tp!1882192 () Bool)

(declare-fun tp!1882188 () Bool)

(assert (=> b!6862127 (= e!4137088 (and tp!1882192 tp!1882188))))

(assert (= (and b!6860945 (is-ElementMatch!16690 (regOne!33892 (regTwo!33893 (regOne!33893 r!7292))))) b!6862126))

(assert (= (and b!6860945 (is-Concat!25535 (regOne!33892 (regTwo!33893 (regOne!33893 r!7292))))) b!6862127))

(assert (= (and b!6860945 (is-Star!16690 (regOne!33892 (regTwo!33893 (regOne!33893 r!7292))))) b!6862128))

(assert (= (and b!6860945 (is-Union!16690 (regOne!33892 (regTwo!33893 (regOne!33893 r!7292))))) b!6862129))

(declare-fun b!6862133 () Bool)

(declare-fun e!4137089 () Bool)

(declare-fun tp!1882195 () Bool)

(declare-fun tp!1882196 () Bool)

(assert (=> b!6862133 (= e!4137089 (and tp!1882195 tp!1882196))))

(declare-fun b!6862132 () Bool)

(declare-fun tp!1882194 () Bool)

(assert (=> b!6862132 (= e!4137089 tp!1882194)))

(declare-fun b!6862130 () Bool)

(assert (=> b!6862130 (= e!4137089 tp_is_empty!42633)))

(assert (=> b!6860945 (= tp!1881469 e!4137089)))

(declare-fun b!6862131 () Bool)

(declare-fun tp!1882197 () Bool)

(declare-fun tp!1882193 () Bool)

(assert (=> b!6862131 (= e!4137089 (and tp!1882197 tp!1882193))))

(assert (= (and b!6860945 (is-ElementMatch!16690 (regTwo!33892 (regTwo!33893 (regOne!33893 r!7292))))) b!6862130))

(assert (= (and b!6860945 (is-Concat!25535 (regTwo!33892 (regTwo!33893 (regOne!33893 r!7292))))) b!6862131))

(assert (= (and b!6860945 (is-Star!16690 (regTwo!33892 (regTwo!33893 (regOne!33893 r!7292))))) b!6862132))

(assert (= (and b!6860945 (is-Union!16690 (regTwo!33892 (regTwo!33893 (regOne!33893 r!7292))))) b!6862133))

(declare-fun b!6862137 () Bool)

(declare-fun e!4137090 () Bool)

(declare-fun tp!1882200 () Bool)

(declare-fun tp!1882201 () Bool)

(assert (=> b!6862137 (= e!4137090 (and tp!1882200 tp!1882201))))

(declare-fun b!6862136 () Bool)

(declare-fun tp!1882199 () Bool)

(assert (=> b!6862136 (= e!4137090 tp!1882199)))

(declare-fun b!6862134 () Bool)

(assert (=> b!6862134 (= e!4137090 tp_is_empty!42633)))

(assert (=> b!6860969 (= tp!1881499 e!4137090)))

(declare-fun b!6862135 () Bool)

(declare-fun tp!1882202 () Bool)

(declare-fun tp!1882198 () Bool)

(assert (=> b!6862135 (= e!4137090 (and tp!1882202 tp!1882198))))

(assert (= (and b!6860969 (is-ElementMatch!16690 (regOne!33893 (regOne!33892 (regTwo!33892 r!7292))))) b!6862134))

(assert (= (and b!6860969 (is-Concat!25535 (regOne!33893 (regOne!33892 (regTwo!33892 r!7292))))) b!6862135))

(assert (= (and b!6860969 (is-Star!16690 (regOne!33893 (regOne!33892 (regTwo!33892 r!7292))))) b!6862136))

(assert (= (and b!6860969 (is-Union!16690 (regOne!33893 (regOne!33892 (regTwo!33892 r!7292))))) b!6862137))

(declare-fun b!6862141 () Bool)

(declare-fun e!4137091 () Bool)

(declare-fun tp!1882205 () Bool)

(declare-fun tp!1882206 () Bool)

(assert (=> b!6862141 (= e!4137091 (and tp!1882205 tp!1882206))))

(declare-fun b!6862140 () Bool)

(declare-fun tp!1882204 () Bool)

(assert (=> b!6862140 (= e!4137091 tp!1882204)))

(declare-fun b!6862138 () Bool)

(assert (=> b!6862138 (= e!4137091 tp_is_empty!42633)))

(assert (=> b!6860969 (= tp!1881500 e!4137091)))

(declare-fun b!6862139 () Bool)

(declare-fun tp!1882207 () Bool)

(declare-fun tp!1882203 () Bool)

(assert (=> b!6862139 (= e!4137091 (and tp!1882207 tp!1882203))))

(assert (= (and b!6860969 (is-ElementMatch!16690 (regTwo!33893 (regOne!33892 (regTwo!33892 r!7292))))) b!6862138))

(assert (= (and b!6860969 (is-Concat!25535 (regTwo!33893 (regOne!33892 (regTwo!33892 r!7292))))) b!6862139))

(assert (= (and b!6860969 (is-Star!16690 (regTwo!33893 (regOne!33892 (regTwo!33892 r!7292))))) b!6862140))

(assert (= (and b!6860969 (is-Union!16690 (regTwo!33893 (regOne!33892 (regTwo!33892 r!7292))))) b!6862141))

(declare-fun b!6862145 () Bool)

(declare-fun e!4137092 () Bool)

(declare-fun tp!1882210 () Bool)

(declare-fun tp!1882211 () Bool)

(assert (=> b!6862145 (= e!4137092 (and tp!1882210 tp!1882211))))

(declare-fun b!6862144 () Bool)

(declare-fun tp!1882209 () Bool)

(assert (=> b!6862144 (= e!4137092 tp!1882209)))

(declare-fun b!6862142 () Bool)

(assert (=> b!6862142 (= e!4137092 tp_is_empty!42633)))

(assert (=> b!6860956 (= tp!1881482 e!4137092)))

(declare-fun b!6862143 () Bool)

(declare-fun tp!1882212 () Bool)

(declare-fun tp!1882208 () Bool)

(assert (=> b!6862143 (= e!4137092 (and tp!1882212 tp!1882208))))

(assert (= (and b!6860956 (is-ElementMatch!16690 (regOne!33893 (regTwo!33893 (regTwo!33893 r!7292))))) b!6862142))

(assert (= (and b!6860956 (is-Concat!25535 (regOne!33893 (regTwo!33893 (regTwo!33893 r!7292))))) b!6862143))

(assert (= (and b!6860956 (is-Star!16690 (regOne!33893 (regTwo!33893 (regTwo!33893 r!7292))))) b!6862144))

(assert (= (and b!6860956 (is-Union!16690 (regOne!33893 (regTwo!33893 (regTwo!33893 r!7292))))) b!6862145))

(declare-fun b!6862149 () Bool)

(declare-fun e!4137093 () Bool)

(declare-fun tp!1882215 () Bool)

(declare-fun tp!1882216 () Bool)

(assert (=> b!6862149 (= e!4137093 (and tp!1882215 tp!1882216))))

(declare-fun b!6862148 () Bool)

(declare-fun tp!1882214 () Bool)

(assert (=> b!6862148 (= e!4137093 tp!1882214)))

(declare-fun b!6862146 () Bool)

(assert (=> b!6862146 (= e!4137093 tp_is_empty!42633)))

(assert (=> b!6860956 (= tp!1881483 e!4137093)))

(declare-fun b!6862147 () Bool)

(declare-fun tp!1882217 () Bool)

(declare-fun tp!1882213 () Bool)

(assert (=> b!6862147 (= e!4137093 (and tp!1882217 tp!1882213))))

(assert (= (and b!6860956 (is-ElementMatch!16690 (regTwo!33893 (regTwo!33893 (regTwo!33893 r!7292))))) b!6862146))

(assert (= (and b!6860956 (is-Concat!25535 (regTwo!33893 (regTwo!33893 (regTwo!33893 r!7292))))) b!6862147))

(assert (= (and b!6860956 (is-Star!16690 (regTwo!33893 (regTwo!33893 (regTwo!33893 r!7292))))) b!6862148))

(assert (= (and b!6860956 (is-Union!16690 (regTwo!33893 (regTwo!33893 (regTwo!33893 r!7292))))) b!6862149))

(declare-fun b!6862153 () Bool)

(declare-fun e!4137094 () Bool)

(declare-fun tp!1882220 () Bool)

(declare-fun tp!1882221 () Bool)

(assert (=> b!6862153 (= e!4137094 (and tp!1882220 tp!1882221))))

(declare-fun b!6862152 () Bool)

(declare-fun tp!1882219 () Bool)

(assert (=> b!6862152 (= e!4137094 tp!1882219)))

(declare-fun b!6862150 () Bool)

(assert (=> b!6862150 (= e!4137094 tp_is_empty!42633)))

(assert (=> b!6860947 (= tp!1881471 e!4137094)))

(declare-fun b!6862151 () Bool)

(declare-fun tp!1882222 () Bool)

(declare-fun tp!1882218 () Bool)

(assert (=> b!6862151 (= e!4137094 (and tp!1882222 tp!1882218))))

(assert (= (and b!6860947 (is-ElementMatch!16690 (regOne!33893 (regTwo!33893 (regOne!33893 r!7292))))) b!6862150))

(assert (= (and b!6860947 (is-Concat!25535 (regOne!33893 (regTwo!33893 (regOne!33893 r!7292))))) b!6862151))

(assert (= (and b!6860947 (is-Star!16690 (regOne!33893 (regTwo!33893 (regOne!33893 r!7292))))) b!6862152))

(assert (= (and b!6860947 (is-Union!16690 (regOne!33893 (regTwo!33893 (regOne!33893 r!7292))))) b!6862153))

(declare-fun b!6862157 () Bool)

(declare-fun e!4137095 () Bool)

(declare-fun tp!1882225 () Bool)

(declare-fun tp!1882226 () Bool)

(assert (=> b!6862157 (= e!4137095 (and tp!1882225 tp!1882226))))

(declare-fun b!6862156 () Bool)

(declare-fun tp!1882224 () Bool)

(assert (=> b!6862156 (= e!4137095 tp!1882224)))

(declare-fun b!6862154 () Bool)

(assert (=> b!6862154 (= e!4137095 tp_is_empty!42633)))

(assert (=> b!6860947 (= tp!1881472 e!4137095)))

(declare-fun b!6862155 () Bool)

(declare-fun tp!1882227 () Bool)

(declare-fun tp!1882223 () Bool)

(assert (=> b!6862155 (= e!4137095 (and tp!1882227 tp!1882223))))

(assert (= (and b!6860947 (is-ElementMatch!16690 (regTwo!33893 (regTwo!33893 (regOne!33893 r!7292))))) b!6862154))

(assert (= (and b!6860947 (is-Concat!25535 (regTwo!33893 (regTwo!33893 (regOne!33893 r!7292))))) b!6862155))

(assert (= (and b!6860947 (is-Star!16690 (regTwo!33893 (regTwo!33893 (regOne!33893 r!7292))))) b!6862156))

(assert (= (and b!6860947 (is-Union!16690 (regTwo!33893 (regTwo!33893 (regOne!33893 r!7292))))) b!6862157))

(declare-fun b!6862161 () Bool)

(declare-fun e!4137096 () Bool)

(declare-fun tp!1882230 () Bool)

(declare-fun tp!1882231 () Bool)

(assert (=> b!6862161 (= e!4137096 (and tp!1882230 tp!1882231))))

(declare-fun b!6862160 () Bool)

(declare-fun tp!1882229 () Bool)

(assert (=> b!6862160 (= e!4137096 tp!1882229)))

(declare-fun b!6862158 () Bool)

(assert (=> b!6862158 (= e!4137096 tp_is_empty!42633)))

(assert (=> b!6860954 (= tp!1881484 e!4137096)))

(declare-fun b!6862159 () Bool)

(declare-fun tp!1882232 () Bool)

(declare-fun tp!1882228 () Bool)

(assert (=> b!6862159 (= e!4137096 (and tp!1882232 tp!1882228))))

(assert (= (and b!6860954 (is-ElementMatch!16690 (regOne!33892 (regTwo!33893 (regTwo!33893 r!7292))))) b!6862158))

(assert (= (and b!6860954 (is-Concat!25535 (regOne!33892 (regTwo!33893 (regTwo!33893 r!7292))))) b!6862159))

(assert (= (and b!6860954 (is-Star!16690 (regOne!33892 (regTwo!33893 (regTwo!33893 r!7292))))) b!6862160))

(assert (= (and b!6860954 (is-Union!16690 (regOne!33892 (regTwo!33893 (regTwo!33893 r!7292))))) b!6862161))

(declare-fun b!6862165 () Bool)

(declare-fun e!4137097 () Bool)

(declare-fun tp!1882235 () Bool)

(declare-fun tp!1882236 () Bool)

(assert (=> b!6862165 (= e!4137097 (and tp!1882235 tp!1882236))))

(declare-fun b!6862164 () Bool)

(declare-fun tp!1882234 () Bool)

(assert (=> b!6862164 (= e!4137097 tp!1882234)))

(declare-fun b!6862162 () Bool)

(assert (=> b!6862162 (= e!4137097 tp_is_empty!42633)))

(assert (=> b!6860954 (= tp!1881480 e!4137097)))

(declare-fun b!6862163 () Bool)

(declare-fun tp!1882237 () Bool)

(declare-fun tp!1882233 () Bool)

(assert (=> b!6862163 (= e!4137097 (and tp!1882237 tp!1882233))))

(assert (= (and b!6860954 (is-ElementMatch!16690 (regTwo!33892 (regTwo!33893 (regTwo!33893 r!7292))))) b!6862162))

(assert (= (and b!6860954 (is-Concat!25535 (regTwo!33892 (regTwo!33893 (regTwo!33893 r!7292))))) b!6862163))

(assert (= (and b!6860954 (is-Star!16690 (regTwo!33892 (regTwo!33893 (regTwo!33893 r!7292))))) b!6862164))

(assert (= (and b!6860954 (is-Union!16690 (regTwo!33892 (regTwo!33893 (regTwo!33893 r!7292))))) b!6862165))

(declare-fun b!6862169 () Bool)

(declare-fun e!4137098 () Bool)

(declare-fun tp!1882240 () Bool)

(declare-fun tp!1882241 () Bool)

(assert (=> b!6862169 (= e!4137098 (and tp!1882240 tp!1882241))))

(declare-fun b!6862168 () Bool)

(declare-fun tp!1882239 () Bool)

(assert (=> b!6862168 (= e!4137098 tp!1882239)))

(declare-fun b!6862166 () Bool)

(assert (=> b!6862166 (= e!4137098 tp_is_empty!42633)))

(assert (=> b!6860929 (= tp!1881453 e!4137098)))

(declare-fun b!6862167 () Bool)

(declare-fun tp!1882242 () Bool)

(declare-fun tp!1882238 () Bool)

(assert (=> b!6862167 (= e!4137098 (and tp!1882242 tp!1882238))))

(assert (= (and b!6860929 (is-ElementMatch!16690 (regOne!33892 (regOne!33893 (regOne!33892 r!7292))))) b!6862166))

(assert (= (and b!6860929 (is-Concat!25535 (regOne!33892 (regOne!33893 (regOne!33892 r!7292))))) b!6862167))

(assert (= (and b!6860929 (is-Star!16690 (regOne!33892 (regOne!33893 (regOne!33892 r!7292))))) b!6862168))

(assert (= (and b!6860929 (is-Union!16690 (regOne!33892 (regOne!33893 (regOne!33892 r!7292))))) b!6862169))

(declare-fun b!6862173 () Bool)

(declare-fun e!4137099 () Bool)

(declare-fun tp!1882245 () Bool)

(declare-fun tp!1882246 () Bool)

(assert (=> b!6862173 (= e!4137099 (and tp!1882245 tp!1882246))))

(declare-fun b!6862172 () Bool)

(declare-fun tp!1882244 () Bool)

(assert (=> b!6862172 (= e!4137099 tp!1882244)))

(declare-fun b!6862170 () Bool)

(assert (=> b!6862170 (= e!4137099 tp_is_empty!42633)))

(assert (=> b!6860929 (= tp!1881449 e!4137099)))

(declare-fun b!6862171 () Bool)

(declare-fun tp!1882247 () Bool)

(declare-fun tp!1882243 () Bool)

(assert (=> b!6862171 (= e!4137099 (and tp!1882247 tp!1882243))))

(assert (= (and b!6860929 (is-ElementMatch!16690 (regTwo!33892 (regOne!33893 (regOne!33892 r!7292))))) b!6862170))

(assert (= (and b!6860929 (is-Concat!25535 (regTwo!33892 (regOne!33893 (regOne!33892 r!7292))))) b!6862171))

(assert (= (and b!6860929 (is-Star!16690 (regTwo!33892 (regOne!33893 (regOne!33892 r!7292))))) b!6862172))

(assert (= (and b!6860929 (is-Union!16690 (regTwo!33892 (regOne!33893 (regOne!33892 r!7292))))) b!6862173))

(declare-fun b!6862177 () Bool)

(declare-fun e!4137100 () Bool)

(declare-fun tp!1882250 () Bool)

(declare-fun tp!1882251 () Bool)

(assert (=> b!6862177 (= e!4137100 (and tp!1882250 tp!1882251))))

(declare-fun b!6862176 () Bool)

(declare-fun tp!1882249 () Bool)

(assert (=> b!6862176 (= e!4137100 tp!1882249)))

(declare-fun b!6862174 () Bool)

(assert (=> b!6862174 (= e!4137100 tp_is_empty!42633)))

(assert (=> b!6860938 (= tp!1881460 e!4137100)))

(declare-fun b!6862175 () Bool)

(declare-fun tp!1882252 () Bool)

(declare-fun tp!1882248 () Bool)

(assert (=> b!6862175 (= e!4137100 (and tp!1882252 tp!1882248))))

(assert (= (and b!6860938 (is-ElementMatch!16690 (reg!17019 (reg!17019 (regOne!33892 r!7292))))) b!6862174))

(assert (= (and b!6860938 (is-Concat!25535 (reg!17019 (reg!17019 (regOne!33892 r!7292))))) b!6862175))

(assert (= (and b!6860938 (is-Star!16690 (reg!17019 (reg!17019 (regOne!33892 r!7292))))) b!6862176))

(assert (= (and b!6860938 (is-Union!16690 (reg!17019 (reg!17019 (regOne!33892 r!7292))))) b!6862177))

(declare-fun b!6862181 () Bool)

(declare-fun e!4137101 () Bool)

(declare-fun tp!1882255 () Bool)

(declare-fun tp!1882256 () Bool)

(assert (=> b!6862181 (= e!4137101 (and tp!1882255 tp!1882256))))

(declare-fun b!6862180 () Bool)

(declare-fun tp!1882254 () Bool)

(assert (=> b!6862180 (= e!4137101 tp!1882254)))

(declare-fun b!6862178 () Bool)

(assert (=> b!6862178 (= e!4137101 tp_is_empty!42633)))

(assert (=> b!6861003 (= tp!1881546 e!4137101)))

(declare-fun b!6862179 () Bool)

(declare-fun tp!1882257 () Bool)

(declare-fun tp!1882253 () Bool)

(assert (=> b!6862179 (= e!4137101 (and tp!1882257 tp!1882253))))

(assert (= (and b!6861003 (is-ElementMatch!16690 (regOne!33892 (reg!17019 (reg!17019 r!7292))))) b!6862178))

(assert (= (and b!6861003 (is-Concat!25535 (regOne!33892 (reg!17019 (reg!17019 r!7292))))) b!6862179))

(assert (= (and b!6861003 (is-Star!16690 (regOne!33892 (reg!17019 (reg!17019 r!7292))))) b!6862180))

(assert (= (and b!6861003 (is-Union!16690 (regOne!33892 (reg!17019 (reg!17019 r!7292))))) b!6862181))

(declare-fun b!6862185 () Bool)

(declare-fun e!4137102 () Bool)

(declare-fun tp!1882260 () Bool)

(declare-fun tp!1882261 () Bool)

(assert (=> b!6862185 (= e!4137102 (and tp!1882260 tp!1882261))))

(declare-fun b!6862184 () Bool)

(declare-fun tp!1882259 () Bool)

(assert (=> b!6862184 (= e!4137102 tp!1882259)))

(declare-fun b!6862182 () Bool)

(assert (=> b!6862182 (= e!4137102 tp_is_empty!42633)))

(assert (=> b!6861003 (= tp!1881542 e!4137102)))

(declare-fun b!6862183 () Bool)

(declare-fun tp!1882262 () Bool)

(declare-fun tp!1882258 () Bool)

(assert (=> b!6862183 (= e!4137102 (and tp!1882262 tp!1882258))))

(assert (= (and b!6861003 (is-ElementMatch!16690 (regTwo!33892 (reg!17019 (reg!17019 r!7292))))) b!6862182))

(assert (= (and b!6861003 (is-Concat!25535 (regTwo!33892 (reg!17019 (reg!17019 r!7292))))) b!6862183))

(assert (= (and b!6861003 (is-Star!16690 (regTwo!33892 (reg!17019 (reg!17019 r!7292))))) b!6862184))

(assert (= (and b!6861003 (is-Union!16690 (regTwo!33892 (reg!17019 (reg!17019 r!7292))))) b!6862185))

(declare-fun b!6862189 () Bool)

(declare-fun e!4137103 () Bool)

(declare-fun tp!1882265 () Bool)

(declare-fun tp!1882266 () Bool)

(assert (=> b!6862189 (= e!4137103 (and tp!1882265 tp!1882266))))

(declare-fun b!6862188 () Bool)

(declare-fun tp!1882264 () Bool)

(assert (=> b!6862188 (= e!4137103 tp!1882264)))

(declare-fun b!6862186 () Bool)

(assert (=> b!6862186 (= e!4137103 tp_is_empty!42633)))

(assert (=> b!6860931 (= tp!1881451 e!4137103)))

(declare-fun b!6862187 () Bool)

(declare-fun tp!1882267 () Bool)

(declare-fun tp!1882263 () Bool)

(assert (=> b!6862187 (= e!4137103 (and tp!1882267 tp!1882263))))

(assert (= (and b!6860931 (is-ElementMatch!16690 (regOne!33893 (regOne!33893 (regOne!33892 r!7292))))) b!6862186))

(assert (= (and b!6860931 (is-Concat!25535 (regOne!33893 (regOne!33893 (regOne!33892 r!7292))))) b!6862187))

(assert (= (and b!6860931 (is-Star!16690 (regOne!33893 (regOne!33893 (regOne!33892 r!7292))))) b!6862188))

(assert (= (and b!6860931 (is-Union!16690 (regOne!33893 (regOne!33893 (regOne!33892 r!7292))))) b!6862189))

(declare-fun b!6862193 () Bool)

(declare-fun e!4137104 () Bool)

(declare-fun tp!1882270 () Bool)

(declare-fun tp!1882271 () Bool)

(assert (=> b!6862193 (= e!4137104 (and tp!1882270 tp!1882271))))

(declare-fun b!6862192 () Bool)

(declare-fun tp!1882269 () Bool)

(assert (=> b!6862192 (= e!4137104 tp!1882269)))

(declare-fun b!6862190 () Bool)

(assert (=> b!6862190 (= e!4137104 tp_is_empty!42633)))

(assert (=> b!6860931 (= tp!1881452 e!4137104)))

(declare-fun b!6862191 () Bool)

(declare-fun tp!1882272 () Bool)

(declare-fun tp!1882268 () Bool)

(assert (=> b!6862191 (= e!4137104 (and tp!1882272 tp!1882268))))

(assert (= (and b!6860931 (is-ElementMatch!16690 (regTwo!33893 (regOne!33893 (regOne!33892 r!7292))))) b!6862190))

(assert (= (and b!6860931 (is-Concat!25535 (regTwo!33893 (regOne!33893 (regOne!33892 r!7292))))) b!6862191))

(assert (= (and b!6860931 (is-Star!16690 (regTwo!33893 (regOne!33893 (regOne!33892 r!7292))))) b!6862192))

(assert (= (and b!6860931 (is-Union!16690 (regTwo!33893 (regOne!33893 (regOne!33892 r!7292))))) b!6862193))

(declare-fun b!6862197 () Bool)

(declare-fun e!4137105 () Bool)

(declare-fun tp!1882275 () Bool)

(declare-fun tp!1882276 () Bool)

(assert (=> b!6862197 (= e!4137105 (and tp!1882275 tp!1882276))))

(declare-fun b!6862196 () Bool)

(declare-fun tp!1882274 () Bool)

(assert (=> b!6862196 (= e!4137105 tp!1882274)))

(declare-fun b!6862194 () Bool)

(assert (=> b!6862194 (= e!4137105 tp_is_empty!42633)))

(assert (=> b!6860987 (= tp!1881526 e!4137105)))

(declare-fun b!6862195 () Bool)

(declare-fun tp!1882277 () Bool)

(declare-fun tp!1882273 () Bool)

(assert (=> b!6862195 (= e!4137105 (and tp!1882277 tp!1882273))))

(assert (= (and b!6860987 (is-ElementMatch!16690 (regOne!33892 (regOne!33893 (reg!17019 r!7292))))) b!6862194))

(assert (= (and b!6860987 (is-Concat!25535 (regOne!33892 (regOne!33893 (reg!17019 r!7292))))) b!6862195))

(assert (= (and b!6860987 (is-Star!16690 (regOne!33892 (regOne!33893 (reg!17019 r!7292))))) b!6862196))

(assert (= (and b!6860987 (is-Union!16690 (regOne!33892 (regOne!33893 (reg!17019 r!7292))))) b!6862197))

(declare-fun b!6862201 () Bool)

(declare-fun e!4137106 () Bool)

(declare-fun tp!1882280 () Bool)

(declare-fun tp!1882281 () Bool)

(assert (=> b!6862201 (= e!4137106 (and tp!1882280 tp!1882281))))

(declare-fun b!6862200 () Bool)

(declare-fun tp!1882279 () Bool)

(assert (=> b!6862200 (= e!4137106 tp!1882279)))

(declare-fun b!6862198 () Bool)

(assert (=> b!6862198 (= e!4137106 tp_is_empty!42633)))

(assert (=> b!6860987 (= tp!1881522 e!4137106)))

(declare-fun b!6862199 () Bool)

(declare-fun tp!1882282 () Bool)

(declare-fun tp!1882278 () Bool)

(assert (=> b!6862199 (= e!4137106 (and tp!1882282 tp!1882278))))

(assert (= (and b!6860987 (is-ElementMatch!16690 (regTwo!33892 (regOne!33893 (reg!17019 r!7292))))) b!6862198))

(assert (= (and b!6860987 (is-Concat!25535 (regTwo!33892 (regOne!33893 (reg!17019 r!7292))))) b!6862199))

(assert (= (and b!6860987 (is-Star!16690 (regTwo!33892 (regOne!33893 (reg!17019 r!7292))))) b!6862200))

(assert (= (and b!6860987 (is-Union!16690 (regTwo!33892 (regOne!33893 (reg!17019 r!7292))))) b!6862201))

(declare-fun b!6862202 () Bool)

(declare-fun e!4137107 () Bool)

(declare-fun tp!1882283 () Bool)

(declare-fun tp!1882284 () Bool)

(assert (=> b!6862202 (= e!4137107 (and tp!1882283 tp!1882284))))

(assert (=> b!6860917 (= tp!1881433 e!4137107)))

(assert (= (and b!6860917 (is-Cons!66245 (exprs!6574 (h!72695 (t!380114 (t!380114 zl!343)))))) b!6862202))

(declare-fun b!6862206 () Bool)

(declare-fun e!4137108 () Bool)

(declare-fun tp!1882287 () Bool)

(declare-fun tp!1882288 () Bool)

(assert (=> b!6862206 (= e!4137108 (and tp!1882287 tp!1882288))))

(declare-fun b!6862205 () Bool)

(declare-fun tp!1882286 () Bool)

(assert (=> b!6862205 (= e!4137108 tp!1882286)))

(declare-fun b!6862203 () Bool)

(assert (=> b!6862203 (= e!4137108 tp_is_empty!42633)))

(assert (=> b!6860900 (= tp!1881415 e!4137108)))

(declare-fun b!6862204 () Bool)

(declare-fun tp!1882289 () Bool)

(declare-fun tp!1882285 () Bool)

(assert (=> b!6862204 (= e!4137108 (and tp!1882289 tp!1882285))))

(assert (= (and b!6860900 (is-ElementMatch!16690 (regOne!33892 (regTwo!33892 (regOne!33892 r!7292))))) b!6862203))

(assert (= (and b!6860900 (is-Concat!25535 (regOne!33892 (regTwo!33892 (regOne!33892 r!7292))))) b!6862204))

(assert (= (and b!6860900 (is-Star!16690 (regOne!33892 (regTwo!33892 (regOne!33892 r!7292))))) b!6862205))

(assert (= (and b!6860900 (is-Union!16690 (regOne!33892 (regTwo!33892 (regOne!33892 r!7292))))) b!6862206))

(declare-fun b!6862210 () Bool)

(declare-fun e!4137109 () Bool)

(declare-fun tp!1882292 () Bool)

(declare-fun tp!1882293 () Bool)

(assert (=> b!6862210 (= e!4137109 (and tp!1882292 tp!1882293))))

(declare-fun b!6862209 () Bool)

(declare-fun tp!1882291 () Bool)

(assert (=> b!6862209 (= e!4137109 tp!1882291)))

(declare-fun b!6862207 () Bool)

(assert (=> b!6862207 (= e!4137109 tp_is_empty!42633)))

(assert (=> b!6860900 (= tp!1881411 e!4137109)))

(declare-fun b!6862208 () Bool)

(declare-fun tp!1882294 () Bool)

(declare-fun tp!1882290 () Bool)

(assert (=> b!6862208 (= e!4137109 (and tp!1882294 tp!1882290))))

(assert (= (and b!6860900 (is-ElementMatch!16690 (regTwo!33892 (regTwo!33892 (regOne!33892 r!7292))))) b!6862207))

(assert (= (and b!6860900 (is-Concat!25535 (regTwo!33892 (regTwo!33892 (regOne!33892 r!7292))))) b!6862208))

(assert (= (and b!6860900 (is-Star!16690 (regTwo!33892 (regTwo!33892 (regOne!33892 r!7292))))) b!6862209))

(assert (= (and b!6860900 (is-Union!16690 (regTwo!33892 (regTwo!33892 (regOne!33892 r!7292))))) b!6862210))

(declare-fun b!6862214 () Bool)

(declare-fun e!4137110 () Bool)

(declare-fun tp!1882297 () Bool)

(declare-fun tp!1882298 () Bool)

(assert (=> b!6862214 (= e!4137110 (and tp!1882297 tp!1882298))))

(declare-fun b!6862213 () Bool)

(declare-fun tp!1882296 () Bool)

(assert (=> b!6862213 (= e!4137110 tp!1882296)))

(declare-fun b!6862211 () Bool)

(assert (=> b!6862211 (= e!4137110 tp_is_empty!42633)))

(assert (=> b!6860996 (= tp!1881533 e!4137110)))

(declare-fun b!6862212 () Bool)

(declare-fun tp!1882299 () Bool)

(declare-fun tp!1882295 () Bool)

(assert (=> b!6862212 (= e!4137110 (and tp!1882299 tp!1882295))))

(assert (= (and b!6860996 (is-ElementMatch!16690 (reg!17019 (regOne!33893 (regTwo!33892 r!7292))))) b!6862211))

(assert (= (and b!6860996 (is-Concat!25535 (reg!17019 (regOne!33893 (regTwo!33892 r!7292))))) b!6862212))

(assert (= (and b!6860996 (is-Star!16690 (reg!17019 (regOne!33893 (regTwo!33892 r!7292))))) b!6862213))

(assert (= (and b!6860996 (is-Union!16690 (reg!17019 (regOne!33893 (regTwo!33892 r!7292))))) b!6862214))

(declare-fun b!6862218 () Bool)

(declare-fun e!4137111 () Bool)

(declare-fun tp!1882302 () Bool)

(declare-fun tp!1882303 () Bool)

(assert (=> b!6862218 (= e!4137111 (and tp!1882302 tp!1882303))))

(declare-fun b!6862217 () Bool)

(declare-fun tp!1882301 () Bool)

(assert (=> b!6862217 (= e!4137111 tp!1882301)))

(declare-fun b!6862215 () Bool)

(assert (=> b!6862215 (= e!4137111 tp_is_empty!42633)))

(assert (=> b!6861005 (= tp!1881544 e!4137111)))

(declare-fun b!6862216 () Bool)

(declare-fun tp!1882304 () Bool)

(declare-fun tp!1882300 () Bool)

(assert (=> b!6862216 (= e!4137111 (and tp!1882304 tp!1882300))))

(assert (= (and b!6861005 (is-ElementMatch!16690 (regOne!33893 (reg!17019 (reg!17019 r!7292))))) b!6862215))

(assert (= (and b!6861005 (is-Concat!25535 (regOne!33893 (reg!17019 (reg!17019 r!7292))))) b!6862216))

(assert (= (and b!6861005 (is-Star!16690 (regOne!33893 (reg!17019 (reg!17019 r!7292))))) b!6862217))

(assert (= (and b!6861005 (is-Union!16690 (regOne!33893 (reg!17019 (reg!17019 r!7292))))) b!6862218))

(declare-fun b!6862222 () Bool)

(declare-fun e!4137112 () Bool)

(declare-fun tp!1882307 () Bool)

(declare-fun tp!1882308 () Bool)

(assert (=> b!6862222 (= e!4137112 (and tp!1882307 tp!1882308))))

(declare-fun b!6862221 () Bool)

(declare-fun tp!1882306 () Bool)

(assert (=> b!6862221 (= e!4137112 tp!1882306)))

(declare-fun b!6862219 () Bool)

(assert (=> b!6862219 (= e!4137112 tp_is_empty!42633)))

(assert (=> b!6861005 (= tp!1881545 e!4137112)))

(declare-fun b!6862220 () Bool)

(declare-fun tp!1882309 () Bool)

(declare-fun tp!1882305 () Bool)

(assert (=> b!6862220 (= e!4137112 (and tp!1882309 tp!1882305))))

(assert (= (and b!6861005 (is-ElementMatch!16690 (regTwo!33893 (reg!17019 (reg!17019 r!7292))))) b!6862219))

(assert (= (and b!6861005 (is-Concat!25535 (regTwo!33893 (reg!17019 (reg!17019 r!7292))))) b!6862220))

(assert (= (and b!6861005 (is-Star!16690 (regTwo!33893 (reg!17019 (reg!17019 r!7292))))) b!6862221))

(assert (= (and b!6861005 (is-Union!16690 (regTwo!33893 (reg!17019 (reg!17019 r!7292))))) b!6862222))

(declare-fun condSetEmpty!47190 () Bool)

(assert (=> setNonEmpty!47188 (= condSetEmpty!47190 (= setRest!47188 (as set.empty (Set Context!12148))))))

(declare-fun setRes!47190 () Bool)

(assert (=> setNonEmpty!47188 (= tp!1881496 setRes!47190)))

(declare-fun setIsEmpty!47190 () Bool)

(assert (=> setIsEmpty!47190 setRes!47190))

(declare-fun setElem!47190 () Context!12148)

(declare-fun setNonEmpty!47190 () Bool)

(declare-fun tp!1882311 () Bool)

(declare-fun e!4137113 () Bool)

(assert (=> setNonEmpty!47190 (= setRes!47190 (and tp!1882311 (inv!84973 setElem!47190) e!4137113))))

(declare-fun setRest!47190 () (Set Context!12148))

(assert (=> setNonEmpty!47190 (= setRest!47188 (set.union (set.insert setElem!47190 (as set.empty (Set Context!12148))) setRest!47190))))

(declare-fun b!6862223 () Bool)

(declare-fun tp!1882310 () Bool)

(assert (=> b!6862223 (= e!4137113 tp!1882310)))

(assert (= (and setNonEmpty!47188 condSetEmpty!47190) setIsEmpty!47190))

(assert (= (and setNonEmpty!47188 (not condSetEmpty!47190)) setNonEmpty!47190))

(assert (= setNonEmpty!47190 b!6862223))

(declare-fun m!7596128 () Bool)

(assert (=> setNonEmpty!47190 m!7596128))

(declare-fun b!6862227 () Bool)

(declare-fun e!4137114 () Bool)

(declare-fun tp!1882314 () Bool)

(declare-fun tp!1882315 () Bool)

(assert (=> b!6862227 (= e!4137114 (and tp!1882314 tp!1882315))))

(declare-fun b!6862226 () Bool)

(declare-fun tp!1882313 () Bool)

(assert (=> b!6862226 (= e!4137114 tp!1882313)))

(declare-fun b!6862224 () Bool)

(assert (=> b!6862224 (= e!4137114 tp_is_empty!42633)))

(assert (=> b!6860925 (= tp!1881443 e!4137114)))

(declare-fun b!6862225 () Bool)

(declare-fun tp!1882316 () Bool)

(declare-fun tp!1882312 () Bool)

(assert (=> b!6862225 (= e!4137114 (and tp!1882316 tp!1882312))))

(assert (= (and b!6860925 (is-ElementMatch!16690 (reg!17019 (h!72693 (exprs!6574 setElem!47178))))) b!6862224))

(assert (= (and b!6860925 (is-Concat!25535 (reg!17019 (h!72693 (exprs!6574 setElem!47178))))) b!6862225))

(assert (= (and b!6860925 (is-Star!16690 (reg!17019 (h!72693 (exprs!6574 setElem!47178))))) b!6862226))

(assert (= (and b!6860925 (is-Union!16690 (reg!17019 (h!72693 (exprs!6574 setElem!47178))))) b!6862227))

(declare-fun b!6862231 () Bool)

(declare-fun e!4137115 () Bool)

(declare-fun tp!1882319 () Bool)

(declare-fun tp!1882320 () Bool)

(assert (=> b!6862231 (= e!4137115 (and tp!1882319 tp!1882320))))

(declare-fun b!6862230 () Bool)

(declare-fun tp!1882318 () Bool)

(assert (=> b!6862230 (= e!4137115 tp!1882318)))

(declare-fun b!6862228 () Bool)

(assert (=> b!6862228 (= e!4137115 tp_is_empty!42633)))

(assert (=> b!6860971 (= tp!1881506 e!4137115)))

(declare-fun b!6862229 () Bool)

(declare-fun tp!1882321 () Bool)

(declare-fun tp!1882317 () Bool)

(assert (=> b!6862229 (= e!4137115 (and tp!1882321 tp!1882317))))

(assert (= (and b!6860971 (is-ElementMatch!16690 (regOne!33892 (regTwo!33892 (regTwo!33892 r!7292))))) b!6862228))

(assert (= (and b!6860971 (is-Concat!25535 (regOne!33892 (regTwo!33892 (regTwo!33892 r!7292))))) b!6862229))

(assert (= (and b!6860971 (is-Star!16690 (regOne!33892 (regTwo!33892 (regTwo!33892 r!7292))))) b!6862230))

(assert (= (and b!6860971 (is-Union!16690 (regOne!33892 (regTwo!33892 (regTwo!33892 r!7292))))) b!6862231))

(declare-fun b!6862235 () Bool)

(declare-fun e!4137116 () Bool)

(declare-fun tp!1882324 () Bool)

(declare-fun tp!1882325 () Bool)

(assert (=> b!6862235 (= e!4137116 (and tp!1882324 tp!1882325))))

(declare-fun b!6862234 () Bool)

(declare-fun tp!1882323 () Bool)

(assert (=> b!6862234 (= e!4137116 tp!1882323)))

(declare-fun b!6862232 () Bool)

(assert (=> b!6862232 (= e!4137116 tp_is_empty!42633)))

(assert (=> b!6860971 (= tp!1881502 e!4137116)))

(declare-fun b!6862233 () Bool)

(declare-fun tp!1882326 () Bool)

(declare-fun tp!1882322 () Bool)

(assert (=> b!6862233 (= e!4137116 (and tp!1882326 tp!1882322))))

(assert (= (and b!6860971 (is-ElementMatch!16690 (regTwo!33892 (regTwo!33892 (regTwo!33892 r!7292))))) b!6862232))

(assert (= (and b!6860971 (is-Concat!25535 (regTwo!33892 (regTwo!33892 (regTwo!33892 r!7292))))) b!6862233))

(assert (= (and b!6860971 (is-Star!16690 (regTwo!33892 (regTwo!33892 (regTwo!33892 r!7292))))) b!6862234))

(assert (= (and b!6860971 (is-Union!16690 (regTwo!33892 (regTwo!33892 (regTwo!33892 r!7292))))) b!6862235))

(declare-fun b!6862239 () Bool)

(declare-fun e!4137117 () Bool)

(declare-fun tp!1882329 () Bool)

(declare-fun tp!1882330 () Bool)

(assert (=> b!6862239 (= e!4137117 (and tp!1882329 tp!1882330))))

(declare-fun b!6862238 () Bool)

(declare-fun tp!1882328 () Bool)

(assert (=> b!6862238 (= e!4137117 tp!1882328)))

(declare-fun b!6862236 () Bool)

(assert (=> b!6862236 (= e!4137117 tp_is_empty!42633)))

(assert (=> b!6860910 (= tp!1881424 e!4137117)))

(declare-fun b!6862237 () Bool)

(declare-fun tp!1882331 () Bool)

(declare-fun tp!1882327 () Bool)

(assert (=> b!6862237 (= e!4137117 (and tp!1882331 tp!1882327))))

(assert (= (and b!6860910 (is-ElementMatch!16690 (reg!17019 (regOne!33892 (regOne!33893 r!7292))))) b!6862236))

(assert (= (and b!6860910 (is-Concat!25535 (reg!17019 (regOne!33892 (regOne!33893 r!7292))))) b!6862237))

(assert (= (and b!6860910 (is-Star!16690 (reg!17019 (regOne!33892 (regOne!33893 r!7292))))) b!6862238))

(assert (= (and b!6860910 (is-Union!16690 (reg!17019 (regOne!33892 (regOne!33893 r!7292))))) b!6862239))

(declare-fun b!6862243 () Bool)

(declare-fun e!4137118 () Bool)

(declare-fun tp!1882334 () Bool)

(declare-fun tp!1882335 () Bool)

(assert (=> b!6862243 (= e!4137118 (and tp!1882334 tp!1882335))))

(declare-fun b!6862242 () Bool)

(declare-fun tp!1882333 () Bool)

(assert (=> b!6862242 (= e!4137118 tp!1882333)))

(declare-fun b!6862240 () Bool)

(assert (=> b!6862240 (= e!4137118 tp_is_empty!42633)))

(assert (=> b!6860958 (= tp!1881489 e!4137118)))

(declare-fun b!6862241 () Bool)

(declare-fun tp!1882336 () Bool)

(declare-fun tp!1882332 () Bool)

(assert (=> b!6862241 (= e!4137118 (and tp!1882336 tp!1882332))))

(assert (= (and b!6860958 (is-ElementMatch!16690 (regOne!33892 (regOne!33892 (reg!17019 r!7292))))) b!6862240))

(assert (= (and b!6860958 (is-Concat!25535 (regOne!33892 (regOne!33892 (reg!17019 r!7292))))) b!6862241))

(assert (= (and b!6860958 (is-Star!16690 (regOne!33892 (regOne!33892 (reg!17019 r!7292))))) b!6862242))

(assert (= (and b!6860958 (is-Union!16690 (regOne!33892 (regOne!33892 (reg!17019 r!7292))))) b!6862243))

(declare-fun b!6862247 () Bool)

(declare-fun e!4137119 () Bool)

(declare-fun tp!1882339 () Bool)

(declare-fun tp!1882340 () Bool)

(assert (=> b!6862247 (= e!4137119 (and tp!1882339 tp!1882340))))

(declare-fun b!6862246 () Bool)

(declare-fun tp!1882338 () Bool)

(assert (=> b!6862246 (= e!4137119 tp!1882338)))

(declare-fun b!6862244 () Bool)

(assert (=> b!6862244 (= e!4137119 tp_is_empty!42633)))

(assert (=> b!6860958 (= tp!1881485 e!4137119)))

(declare-fun b!6862245 () Bool)

(declare-fun tp!1882341 () Bool)

(declare-fun tp!1882337 () Bool)

(assert (=> b!6862245 (= e!4137119 (and tp!1882341 tp!1882337))))

(assert (= (and b!6860958 (is-ElementMatch!16690 (regTwo!33892 (regOne!33892 (reg!17019 r!7292))))) b!6862244))

(assert (= (and b!6860958 (is-Concat!25535 (regTwo!33892 (regOne!33892 (reg!17019 r!7292))))) b!6862245))

(assert (= (and b!6860958 (is-Star!16690 (regTwo!33892 (regOne!33892 (reg!17019 r!7292))))) b!6862246))

(assert (= (and b!6860958 (is-Union!16690 (regTwo!33892 (regOne!33892 (reg!17019 r!7292))))) b!6862247))

(declare-fun b!6862251 () Bool)

(declare-fun e!4137120 () Bool)

(declare-fun tp!1882344 () Bool)

(declare-fun tp!1882345 () Bool)

(assert (=> b!6862251 (= e!4137120 (and tp!1882344 tp!1882345))))

(declare-fun b!6862250 () Bool)

(declare-fun tp!1882343 () Bool)

(assert (=> b!6862250 (= e!4137120 tp!1882343)))

(declare-fun b!6862248 () Bool)

(assert (=> b!6862248 (= e!4137120 tp_is_empty!42633)))

(assert (=> b!6861006 (= tp!1881547 e!4137120)))

(declare-fun b!6862249 () Bool)

(declare-fun tp!1882346 () Bool)

(declare-fun tp!1882342 () Bool)

(assert (=> b!6862249 (= e!4137120 (and tp!1882346 tp!1882342))))

(assert (= (and b!6861006 (is-ElementMatch!16690 (h!72693 (exprs!6574 setElem!47184)))) b!6862248))

(assert (= (and b!6861006 (is-Concat!25535 (h!72693 (exprs!6574 setElem!47184)))) b!6862249))

(assert (= (and b!6861006 (is-Star!16690 (h!72693 (exprs!6574 setElem!47184)))) b!6862250))

(assert (= (and b!6861006 (is-Union!16690 (h!72693 (exprs!6574 setElem!47184)))) b!6862251))

(declare-fun b!6862252 () Bool)

(declare-fun e!4137121 () Bool)

(declare-fun tp!1882347 () Bool)

(declare-fun tp!1882348 () Bool)

(assert (=> b!6862252 (= e!4137121 (and tp!1882347 tp!1882348))))

(assert (=> b!6861006 (= tp!1881548 e!4137121)))

(assert (= (and b!6861006 (is-Cons!66245 (t!380112 (exprs!6574 setElem!47184)))) b!6862252))

(declare-fun b!6862256 () Bool)

(declare-fun e!4137122 () Bool)

(declare-fun tp!1882351 () Bool)

(declare-fun tp!1882352 () Bool)

(assert (=> b!6862256 (= e!4137122 (and tp!1882351 tp!1882352))))

(declare-fun b!6862255 () Bool)

(declare-fun tp!1882350 () Bool)

(assert (=> b!6862255 (= e!4137122 tp!1882350)))

(declare-fun b!6862253 () Bool)

(assert (=> b!6862253 (= e!4137122 tp_is_empty!42633)))

(assert (=> b!6860902 (= tp!1881413 e!4137122)))

(declare-fun b!6862254 () Bool)

(declare-fun tp!1882353 () Bool)

(declare-fun tp!1882349 () Bool)

(assert (=> b!6862254 (= e!4137122 (and tp!1882353 tp!1882349))))

(assert (= (and b!6860902 (is-ElementMatch!16690 (regOne!33893 (regTwo!33892 (regOne!33892 r!7292))))) b!6862253))

(assert (= (and b!6860902 (is-Concat!25535 (regOne!33893 (regTwo!33892 (regOne!33892 r!7292))))) b!6862254))

(assert (= (and b!6860902 (is-Star!16690 (regOne!33893 (regTwo!33892 (regOne!33892 r!7292))))) b!6862255))

(assert (= (and b!6860902 (is-Union!16690 (regOne!33893 (regTwo!33892 (regOne!33892 r!7292))))) b!6862256))

(declare-fun b!6862260 () Bool)

(declare-fun e!4137123 () Bool)

(declare-fun tp!1882356 () Bool)

(declare-fun tp!1882357 () Bool)

(assert (=> b!6862260 (= e!4137123 (and tp!1882356 tp!1882357))))

(declare-fun b!6862259 () Bool)

(declare-fun tp!1882355 () Bool)

(assert (=> b!6862259 (= e!4137123 tp!1882355)))

(declare-fun b!6862257 () Bool)

(assert (=> b!6862257 (= e!4137123 tp_is_empty!42633)))

(assert (=> b!6860902 (= tp!1881414 e!4137123)))

(declare-fun b!6862258 () Bool)

(declare-fun tp!1882358 () Bool)

(declare-fun tp!1882354 () Bool)

(assert (=> b!6862258 (= e!4137123 (and tp!1882358 tp!1882354))))

(assert (= (and b!6860902 (is-ElementMatch!16690 (regTwo!33893 (regTwo!33892 (regOne!33892 r!7292))))) b!6862257))

(assert (= (and b!6860902 (is-Concat!25535 (regTwo!33893 (regTwo!33892 (regOne!33892 r!7292))))) b!6862258))

(assert (= (and b!6860902 (is-Star!16690 (regTwo!33893 (regTwo!33892 (regOne!33892 r!7292))))) b!6862259))

(assert (= (and b!6860902 (is-Union!16690 (regTwo!33893 (regTwo!33892 (regOne!33892 r!7292))))) b!6862260))

(declare-fun b!6862264 () Bool)

(declare-fun e!4137124 () Bool)

(declare-fun tp!1882361 () Bool)

(declare-fun tp!1882362 () Bool)

(assert (=> b!6862264 (= e!4137124 (and tp!1882361 tp!1882362))))

(declare-fun b!6862263 () Bool)

(declare-fun tp!1882360 () Bool)

(assert (=> b!6862263 (= e!4137124 tp!1882360)))

(declare-fun b!6862261 () Bool)

(assert (=> b!6862261 (= e!4137124 tp_is_empty!42633)))

(assert (=> b!6860980 (= tp!1881513 e!4137124)))

(declare-fun b!6862262 () Bool)

(declare-fun tp!1882363 () Bool)

(declare-fun tp!1882359 () Bool)

(assert (=> b!6862262 (= e!4137124 (and tp!1882363 tp!1882359))))

(assert (= (and b!6860980 (is-ElementMatch!16690 (reg!17019 (regOne!33892 (regTwo!33893 r!7292))))) b!6862261))

(assert (= (and b!6860980 (is-Concat!25535 (reg!17019 (regOne!33892 (regTwo!33893 r!7292))))) b!6862262))

(assert (= (and b!6860980 (is-Star!16690 (reg!17019 (regOne!33892 (regTwo!33893 r!7292))))) b!6862263))

(assert (= (and b!6860980 (is-Union!16690 (reg!17019 (regOne!33892 (regTwo!33893 r!7292))))) b!6862264))

(declare-fun b!6862268 () Bool)

(declare-fun e!4137125 () Bool)

(declare-fun tp!1882366 () Bool)

(declare-fun tp!1882367 () Bool)

(assert (=> b!6862268 (= e!4137125 (and tp!1882366 tp!1882367))))

(declare-fun b!6862267 () Bool)

(declare-fun tp!1882365 () Bool)

(assert (=> b!6862267 (= e!4137125 tp!1882365)))

(declare-fun b!6862265 () Bool)

(assert (=> b!6862265 (= e!4137125 tp_is_empty!42633)))

(assert (=> b!6860989 (= tp!1881524 e!4137125)))

(declare-fun b!6862266 () Bool)

(declare-fun tp!1882368 () Bool)

(declare-fun tp!1882364 () Bool)

(assert (=> b!6862266 (= e!4137125 (and tp!1882368 tp!1882364))))

(assert (= (and b!6860989 (is-ElementMatch!16690 (regOne!33893 (regOne!33893 (reg!17019 r!7292))))) b!6862265))

(assert (= (and b!6860989 (is-Concat!25535 (regOne!33893 (regOne!33893 (reg!17019 r!7292))))) b!6862266))

(assert (= (and b!6860989 (is-Star!16690 (regOne!33893 (regOne!33893 (reg!17019 r!7292))))) b!6862267))

(assert (= (and b!6860989 (is-Union!16690 (regOne!33893 (regOne!33893 (reg!17019 r!7292))))) b!6862268))

(declare-fun b!6862272 () Bool)

(declare-fun e!4137126 () Bool)

(declare-fun tp!1882371 () Bool)

(declare-fun tp!1882372 () Bool)

(assert (=> b!6862272 (= e!4137126 (and tp!1882371 tp!1882372))))

(declare-fun b!6862271 () Bool)

(declare-fun tp!1882370 () Bool)

(assert (=> b!6862271 (= e!4137126 tp!1882370)))

(declare-fun b!6862269 () Bool)

(assert (=> b!6862269 (= e!4137126 tp_is_empty!42633)))

(assert (=> b!6860989 (= tp!1881525 e!4137126)))

(declare-fun b!6862270 () Bool)

(declare-fun tp!1882373 () Bool)

(declare-fun tp!1882369 () Bool)

(assert (=> b!6862270 (= e!4137126 (and tp!1882373 tp!1882369))))

(assert (= (and b!6860989 (is-ElementMatch!16690 (regTwo!33893 (regOne!33893 (reg!17019 r!7292))))) b!6862269))

(assert (= (and b!6860989 (is-Concat!25535 (regTwo!33893 (regOne!33893 (reg!17019 r!7292))))) b!6862270))

(assert (= (and b!6860989 (is-Star!16690 (regTwo!33893 (regOne!33893 (reg!17019 r!7292))))) b!6862271))

(assert (= (and b!6860989 (is-Union!16690 (regTwo!33893 (regOne!33893 (reg!17019 r!7292))))) b!6862272))

(declare-fun b!6862276 () Bool)

(declare-fun e!4137127 () Bool)

(declare-fun tp!1882376 () Bool)

(declare-fun tp!1882377 () Bool)

(assert (=> b!6862276 (= e!4137127 (and tp!1882376 tp!1882377))))

(declare-fun b!6862275 () Bool)

(declare-fun tp!1882375 () Bool)

(assert (=> b!6862275 (= e!4137127 tp!1882375)))

(declare-fun b!6862273 () Bool)

(assert (=> b!6862273 (= e!4137127 tp_is_empty!42633)))

(assert (=> b!6860951 (= tp!1881476 e!4137127)))

(declare-fun b!6862274 () Bool)

(declare-fun tp!1882378 () Bool)

(declare-fun tp!1882374 () Bool)

(assert (=> b!6862274 (= e!4137127 (and tp!1882378 tp!1882374))))

(assert (= (and b!6860951 (is-ElementMatch!16690 (reg!17019 (regOne!33893 (regTwo!33893 r!7292))))) b!6862273))

(assert (= (and b!6860951 (is-Concat!25535 (reg!17019 (regOne!33893 (regTwo!33893 r!7292))))) b!6862274))

(assert (= (and b!6860951 (is-Star!16690 (reg!17019 (regOne!33893 (regTwo!33893 r!7292))))) b!6862275))

(assert (= (and b!6860951 (is-Union!16690 (reg!17019 (regOne!33893 (regTwo!33893 r!7292))))) b!6862276))

(declare-fun b!6862280 () Bool)

(declare-fun e!4137128 () Bool)

(declare-fun tp!1882381 () Bool)

(declare-fun tp!1882382 () Bool)

(assert (=> b!6862280 (= e!4137128 (and tp!1882381 tp!1882382))))

(declare-fun b!6862279 () Bool)

(declare-fun tp!1882380 () Bool)

(assert (=> b!6862279 (= e!4137128 tp!1882380)))

(declare-fun b!6862277 () Bool)

(assert (=> b!6862277 (= e!4137128 tp_is_empty!42633)))

(assert (=> b!6860960 (= tp!1881487 e!4137128)))

(declare-fun b!6862278 () Bool)

(declare-fun tp!1882383 () Bool)

(declare-fun tp!1882379 () Bool)

(assert (=> b!6862278 (= e!4137128 (and tp!1882383 tp!1882379))))

(assert (= (and b!6860960 (is-ElementMatch!16690 (regOne!33893 (regOne!33892 (reg!17019 r!7292))))) b!6862277))

(assert (= (and b!6860960 (is-Concat!25535 (regOne!33893 (regOne!33892 (reg!17019 r!7292))))) b!6862278))

(assert (= (and b!6860960 (is-Star!16690 (regOne!33893 (regOne!33892 (reg!17019 r!7292))))) b!6862279))

(assert (= (and b!6860960 (is-Union!16690 (regOne!33893 (regOne!33892 (reg!17019 r!7292))))) b!6862280))

(declare-fun b!6862284 () Bool)

(declare-fun e!4137129 () Bool)

(declare-fun tp!1882386 () Bool)

(declare-fun tp!1882387 () Bool)

(assert (=> b!6862284 (= e!4137129 (and tp!1882386 tp!1882387))))

(declare-fun b!6862283 () Bool)

(declare-fun tp!1882385 () Bool)

(assert (=> b!6862283 (= e!4137129 tp!1882385)))

(declare-fun b!6862281 () Bool)

(assert (=> b!6862281 (= e!4137129 tp_is_empty!42633)))

(assert (=> b!6860960 (= tp!1881488 e!4137129)))

(declare-fun b!6862282 () Bool)

(declare-fun tp!1882388 () Bool)

(declare-fun tp!1882384 () Bool)

(assert (=> b!6862282 (= e!4137129 (and tp!1882388 tp!1882384))))

(assert (= (and b!6860960 (is-ElementMatch!16690 (regTwo!33893 (regOne!33892 (reg!17019 r!7292))))) b!6862281))

(assert (= (and b!6860960 (is-Concat!25535 (regTwo!33893 (regOne!33892 (reg!17019 r!7292))))) b!6862282))

(assert (= (and b!6860960 (is-Star!16690 (regTwo!33893 (regOne!33892 (reg!17019 r!7292))))) b!6862283))

(assert (= (and b!6860960 (is-Union!16690 (regTwo!33893 (regOne!33892 (reg!17019 r!7292))))) b!6862284))

(declare-fun b!6862288 () Bool)

(declare-fun e!4137130 () Bool)

(declare-fun tp!1882391 () Bool)

(declare-fun tp!1882392 () Bool)

(assert (=> b!6862288 (= e!4137130 (and tp!1882391 tp!1882392))))

(declare-fun b!6862287 () Bool)

(declare-fun tp!1882390 () Bool)

(assert (=> b!6862287 (= e!4137130 tp!1882390)))

(declare-fun b!6862285 () Bool)

(assert (=> b!6862285 (= e!4137130 tp_is_empty!42633)))

(assert (=> b!6860935 (= tp!1881456 e!4137130)))

(declare-fun b!6862286 () Bool)

(declare-fun tp!1882393 () Bool)

(declare-fun tp!1882389 () Bool)

(assert (=> b!6862286 (= e!4137130 (and tp!1882393 tp!1882389))))

(assert (= (and b!6860935 (is-ElementMatch!16690 (regOne!33893 (regTwo!33893 (regOne!33892 r!7292))))) b!6862285))

(assert (= (and b!6860935 (is-Concat!25535 (regOne!33893 (regTwo!33893 (regOne!33892 r!7292))))) b!6862286))

(assert (= (and b!6860935 (is-Star!16690 (regOne!33893 (regTwo!33893 (regOne!33892 r!7292))))) b!6862287))

(assert (= (and b!6860935 (is-Union!16690 (regOne!33893 (regTwo!33893 (regOne!33892 r!7292))))) b!6862288))

(declare-fun b!6862292 () Bool)

(declare-fun e!4137131 () Bool)

(declare-fun tp!1882396 () Bool)

(declare-fun tp!1882397 () Bool)

(assert (=> b!6862292 (= e!4137131 (and tp!1882396 tp!1882397))))

(declare-fun b!6862291 () Bool)

(declare-fun tp!1882395 () Bool)

(assert (=> b!6862291 (= e!4137131 tp!1882395)))

(declare-fun b!6862289 () Bool)

(assert (=> b!6862289 (= e!4137131 tp_is_empty!42633)))

(assert (=> b!6860935 (= tp!1881457 e!4137131)))

(declare-fun b!6862290 () Bool)

(declare-fun tp!1882398 () Bool)

(declare-fun tp!1882394 () Bool)

(assert (=> b!6862290 (= e!4137131 (and tp!1882398 tp!1882394))))

(assert (= (and b!6860935 (is-ElementMatch!16690 (regTwo!33893 (regTwo!33893 (regOne!33892 r!7292))))) b!6862289))

(assert (= (and b!6860935 (is-Concat!25535 (regTwo!33893 (regTwo!33893 (regOne!33892 r!7292))))) b!6862290))

(assert (= (and b!6860935 (is-Star!16690 (regTwo!33893 (regTwo!33893 (regOne!33892 r!7292))))) b!6862291))

(assert (= (and b!6860935 (is-Union!16690 (regTwo!33893 (regTwo!33893 (regOne!33892 r!7292))))) b!6862292))

(declare-fun b!6862296 () Bool)

(declare-fun e!4137132 () Bool)

(declare-fun tp!1882401 () Bool)

(declare-fun tp!1882402 () Bool)

(assert (=> b!6862296 (= e!4137132 (and tp!1882401 tp!1882402))))

(declare-fun b!6862295 () Bool)

(declare-fun tp!1882400 () Bool)

(assert (=> b!6862295 (= e!4137132 tp!1882400)))

(declare-fun b!6862293 () Bool)

(assert (=> b!6862293 (= e!4137132 tp_is_empty!42633)))

(assert (=> b!6860933 (= tp!1881458 e!4137132)))

(declare-fun b!6862294 () Bool)

(declare-fun tp!1882403 () Bool)

(declare-fun tp!1882399 () Bool)

(assert (=> b!6862294 (= e!4137132 (and tp!1882403 tp!1882399))))

(assert (= (and b!6860933 (is-ElementMatch!16690 (regOne!33892 (regTwo!33893 (regOne!33892 r!7292))))) b!6862293))

(assert (= (and b!6860933 (is-Concat!25535 (regOne!33892 (regTwo!33893 (regOne!33892 r!7292))))) b!6862294))

(assert (= (and b!6860933 (is-Star!16690 (regOne!33892 (regTwo!33893 (regOne!33892 r!7292))))) b!6862295))

(assert (= (and b!6860933 (is-Union!16690 (regOne!33892 (regTwo!33893 (regOne!33892 r!7292))))) b!6862296))

(declare-fun b!6862300 () Bool)

(declare-fun e!4137133 () Bool)

(declare-fun tp!1882406 () Bool)

(declare-fun tp!1882407 () Bool)

(assert (=> b!6862300 (= e!4137133 (and tp!1882406 tp!1882407))))

(declare-fun b!6862299 () Bool)

(declare-fun tp!1882405 () Bool)

(assert (=> b!6862299 (= e!4137133 tp!1882405)))

(declare-fun b!6862297 () Bool)

(assert (=> b!6862297 (= e!4137133 tp_is_empty!42633)))

(assert (=> b!6860933 (= tp!1881454 e!4137133)))

(declare-fun b!6862298 () Bool)

(declare-fun tp!1882408 () Bool)

(declare-fun tp!1882404 () Bool)

(assert (=> b!6862298 (= e!4137133 (and tp!1882408 tp!1882404))))

(assert (= (and b!6860933 (is-ElementMatch!16690 (regTwo!33892 (regTwo!33893 (regOne!33892 r!7292))))) b!6862297))

(assert (= (and b!6860933 (is-Concat!25535 (regTwo!33892 (regTwo!33893 (regOne!33892 r!7292))))) b!6862298))

(assert (= (and b!6860933 (is-Star!16690 (regTwo!33892 (regTwo!33893 (regOne!33892 r!7292))))) b!6862299))

(assert (= (and b!6860933 (is-Union!16690 (regTwo!33892 (regTwo!33893 (regOne!33892 r!7292))))) b!6862300))

(declare-fun b!6862304 () Bool)

(declare-fun e!4137134 () Bool)

(declare-fun tp!1882411 () Bool)

(declare-fun tp!1882412 () Bool)

(assert (=> b!6862304 (= e!4137134 (and tp!1882411 tp!1882412))))

(declare-fun b!6862303 () Bool)

(declare-fun tp!1882410 () Bool)

(assert (=> b!6862303 (= e!4137134 tp!1882410)))

(declare-fun b!6862301 () Bool)

(assert (=> b!6862301 (= e!4137134 tp_is_empty!42633)))

(assert (=> b!6860942 (= tp!1881465 e!4137134)))

(declare-fun b!6862302 () Bool)

(declare-fun tp!1882413 () Bool)

(declare-fun tp!1882409 () Bool)

(assert (=> b!6862302 (= e!4137134 (and tp!1882413 tp!1882409))))

(assert (= (and b!6860942 (is-ElementMatch!16690 (reg!17019 (regOne!33893 (regOne!33893 r!7292))))) b!6862301))

(assert (= (and b!6860942 (is-Concat!25535 (reg!17019 (regOne!33893 (regOne!33893 r!7292))))) b!6862302))

(assert (= (and b!6860942 (is-Star!16690 (reg!17019 (regOne!33893 (regOne!33893 r!7292))))) b!6862303))

(assert (= (and b!6860942 (is-Union!16690 (reg!17019 (regOne!33893 (regOne!33893 r!7292))))) b!6862304))

(declare-fun b!6862308 () Bool)

(declare-fun e!4137135 () Bool)

(declare-fun tp!1882416 () Bool)

(declare-fun tp!1882417 () Bool)

(assert (=> b!6862308 (= e!4137135 (and tp!1882416 tp!1882417))))

(declare-fun b!6862307 () Bool)

(declare-fun tp!1882415 () Bool)

(assert (=> b!6862307 (= e!4137135 tp!1882415)))

(declare-fun b!6862305 () Bool)

(assert (=> b!6862305 (= e!4137135 tp_is_empty!42633)))

(assert (=> b!6860973 (= tp!1881504 e!4137135)))

(declare-fun b!6862306 () Bool)

(declare-fun tp!1882418 () Bool)

(declare-fun tp!1882414 () Bool)

(assert (=> b!6862306 (= e!4137135 (and tp!1882418 tp!1882414))))

(assert (= (and b!6860973 (is-ElementMatch!16690 (regOne!33893 (regTwo!33892 (regTwo!33892 r!7292))))) b!6862305))

(assert (= (and b!6860973 (is-Concat!25535 (regOne!33893 (regTwo!33892 (regTwo!33892 r!7292))))) b!6862306))

(assert (= (and b!6860973 (is-Star!16690 (regOne!33893 (regTwo!33892 (regTwo!33892 r!7292))))) b!6862307))

(assert (= (and b!6860973 (is-Union!16690 (regOne!33893 (regTwo!33892 (regTwo!33892 r!7292))))) b!6862308))

(declare-fun b!6862312 () Bool)

(declare-fun e!4137136 () Bool)

(declare-fun tp!1882421 () Bool)

(declare-fun tp!1882422 () Bool)

(assert (=> b!6862312 (= e!4137136 (and tp!1882421 tp!1882422))))

(declare-fun b!6862311 () Bool)

(declare-fun tp!1882420 () Bool)

(assert (=> b!6862311 (= e!4137136 tp!1882420)))

(declare-fun b!6862309 () Bool)

(assert (=> b!6862309 (= e!4137136 tp_is_empty!42633)))

(assert (=> b!6860973 (= tp!1881505 e!4137136)))

(declare-fun b!6862310 () Bool)

(declare-fun tp!1882423 () Bool)

(declare-fun tp!1882419 () Bool)

(assert (=> b!6862310 (= e!4137136 (and tp!1882423 tp!1882419))))

(assert (= (and b!6860973 (is-ElementMatch!16690 (regTwo!33893 (regTwo!33892 (regTwo!33892 r!7292))))) b!6862309))

(assert (= (and b!6860973 (is-Concat!25535 (regTwo!33893 (regTwo!33892 (regTwo!33892 r!7292))))) b!6862310))

(assert (= (and b!6860973 (is-Star!16690 (regTwo!33893 (regTwo!33892 (regTwo!33892 r!7292))))) b!6862311))

(assert (= (and b!6860973 (is-Union!16690 (regTwo!33893 (regTwo!33892 (regTwo!33892 r!7292))))) b!6862312))

(declare-fun b_lambda!259315 () Bool)

(assert (= b_lambda!259309 (or d!2155445 b_lambda!259315)))

(declare-fun bs!1833982 () Bool)

(declare-fun d!2155969 () Bool)

(assert (= bs!1833982 (and d!2155969 d!2155445)))

(assert (=> bs!1833982 (= (dynLambda!26503 lambda!388067 (h!72693 (t!380112 lt!2457393))) (validRegex!8426 (h!72693 (t!380112 lt!2457393))))))

(declare-fun m!7596130 () Bool)

(assert (=> bs!1833982 m!7596130))

(assert (=> b!6861718 d!2155969))

(declare-fun b_lambda!259317 () Bool)

(assert (= b_lambda!259305 (or d!2155591 b_lambda!259317)))

(declare-fun bs!1833983 () Bool)

(declare-fun d!2155971 () Bool)

(assert (= bs!1833983 (and d!2155971 d!2155591)))

(assert (=> bs!1833983 (= (dynLambda!26503 lambda!388137 (h!72693 (exprs!6574 setElem!47184))) (validRegex!8426 (h!72693 (exprs!6574 setElem!47184))))))

(declare-fun m!7596132 () Bool)

(assert (=> bs!1833983 m!7596132))

(assert (=> b!6861588 d!2155971))

(declare-fun b_lambda!259319 () Bool)

(assert (= b_lambda!259295 (or d!2155529 b_lambda!259319)))

(declare-fun bs!1833984 () Bool)

(declare-fun d!2155973 () Bool)

(assert (= bs!1833984 (and d!2155973 d!2155529)))

(assert (=> bs!1833984 (= (dynLambda!26503 lambda!388117 (h!72693 lt!2457393)) (not (dynLambda!26503 lambda!388068 (h!72693 lt!2457393))))))

(declare-fun b_lambda!259351 () Bool)

(assert (=> (not b_lambda!259351) (not bs!1833984)))

(declare-fun m!7596134 () Bool)

(assert (=> bs!1833984 m!7596134))

(assert (=> b!6861541 d!2155973))

(declare-fun b_lambda!259321 () Bool)

(assert (= b_lambda!259287 (or d!2155447 b_lambda!259321)))

(declare-fun bs!1833985 () Bool)

(declare-fun d!2155975 () Bool)

(assert (= bs!1833985 (and d!2155975 d!2155447)))

(assert (=> bs!1833985 (= (dynLambda!26503 lambda!388071 (h!72693 (t!380112 lt!2457443))) (validRegex!8426 (h!72693 (t!380112 lt!2457443))))))

(declare-fun m!7596136 () Bool)

(assert (=> bs!1833985 m!7596136))

(assert (=> b!6861473 d!2155975))

(declare-fun b_lambda!259323 () Bool)

(assert (= b_lambda!259281 (or d!2155475 b_lambda!259323)))

(declare-fun bs!1833986 () Bool)

(declare-fun d!2155977 () Bool)

(assert (= bs!1833986 (and d!2155977 d!2155475)))

(assert (=> bs!1833986 (= (dynLambda!26503 lambda!388084 (h!72693 (t!380112 (exprs!6574 lt!2457391)))) (validRegex!8426 (h!72693 (t!380112 (exprs!6574 lt!2457391)))))))

(assert (=> bs!1833986 m!7595432))

(assert (=> b!6861394 d!2155977))

(declare-fun b_lambda!259325 () Bool)

(assert (= b_lambda!259311 (or b!6860130 b_lambda!259325)))

(declare-fun bs!1833987 () Bool)

(declare-fun d!2155979 () Bool)

(assert (= bs!1833987 (and d!2155979 b!6860130)))

(assert (=> bs!1833987 (= (dynLambda!26504 lambda!388029 (h!72695 (t!380114 (t!380114 zl!343)))) (matchZipper!2656 (set.insert (h!72695 (t!380114 (t!380114 zl!343))) (as set.empty (Set Context!12148))) s!2326))))

(declare-fun m!7596138 () Bool)

(assert (=> bs!1833987 m!7596138))

(assert (=> bs!1833987 m!7596138))

(declare-fun m!7596140 () Bool)

(assert (=> bs!1833987 m!7596140))

(assert (=> b!6861730 d!2155979))

(declare-fun b_lambda!259327 () Bool)

(assert (= b_lambda!259289 (or d!2155563 b_lambda!259327)))

(declare-fun bs!1833988 () Bool)

(declare-fun d!2155981 () Bool)

(assert (= bs!1833988 (and d!2155981 d!2155563)))

(assert (=> bs!1833988 (= (dynLambda!26503 lambda!388127 (h!72693 (exprs!6574 lt!2457391))) (validRegex!8426 (h!72693 (exprs!6574 lt!2457391))))))

(assert (=> bs!1833988 m!7595098))

(assert (=> b!6861485 d!2155981))

(declare-fun b_lambda!259329 () Bool)

(assert (= b_lambda!259297 (or d!2155557 b_lambda!259329)))

(declare-fun bs!1833989 () Bool)

(declare-fun d!2155983 () Bool)

(assert (= bs!1833989 (and d!2155983 d!2155557)))

(assert (=> bs!1833989 (= (dynLambda!26503 lambda!388124 (h!72693 (exprs!6574 (h!72695 (t!380114 zl!343))))) (validRegex!8426 (h!72693 (exprs!6574 (h!72695 (t!380114 zl!343))))))))

(declare-fun m!7596142 () Bool)

(assert (=> bs!1833989 m!7596142))

(assert (=> b!6861543 d!2155983))

(declare-fun b_lambda!259331 () Bool)

(assert (= b_lambda!259291 (or d!2155457 b_lambda!259331)))

(declare-fun bs!1833990 () Bool)

(declare-fun d!2155985 () Bool)

(assert (= bs!1833990 (and d!2155985 d!2155457)))

(assert (=> bs!1833990 (= (dynLambda!26504 lambda!388077 (h!72695 (t!380114 zl!343))) (not (dynLambda!26504 lambda!388029 (h!72695 (t!380114 zl!343)))))))

(declare-fun b_lambda!259353 () Bool)

(assert (=> (not b_lambda!259353) (not bs!1833990)))

(assert (=> bs!1833990 m!7595250))

(assert (=> b!6861489 d!2155985))

(declare-fun b_lambda!259333 () Bool)

(assert (= b_lambda!259283 (or d!2155461 b_lambda!259333)))

(declare-fun bs!1833991 () Bool)

(declare-fun d!2155987 () Bool)

(assert (= bs!1833991 (and d!2155987 d!2155461)))

(assert (=> bs!1833991 (= (dynLambda!26503 lambda!388081 (h!72693 (t!380112 (exprs!6574 setElem!47178)))) (validRegex!8426 (h!72693 (t!380112 (exprs!6574 setElem!47178)))))))

(declare-fun m!7596144 () Bool)

(assert (=> bs!1833991 m!7596144))

(assert (=> b!6861398 d!2155987))

(declare-fun b_lambda!259335 () Bool)

(assert (= b_lambda!259313 (or b!6860130 b_lambda!259335)))

(declare-fun bs!1833992 () Bool)

(declare-fun d!2155989 () Bool)

(assert (= bs!1833992 (and d!2155989 b!6860130)))

(assert (=> bs!1833992 (= (dynLambda!26504 lambda!388029 lt!2457541) (matchZipper!2656 (set.insert lt!2457541 (as set.empty (Set Context!12148))) s!2326))))

(declare-fun m!7596146 () Bool)

(assert (=> bs!1833992 m!7596146))

(assert (=> bs!1833992 m!7596146))

(declare-fun m!7596148 () Bool)

(assert (=> bs!1833992 m!7596148))

(assert (=> d!2155965 d!2155989))

(declare-fun b_lambda!259337 () Bool)

(assert (= b_lambda!259303 (or d!2155453 b_lambda!259337)))

(declare-fun bs!1833993 () Bool)

(declare-fun d!2155991 () Bool)

(assert (= bs!1833993 (and d!2155991 d!2155453)))

(assert (=> bs!1833993 (= (dynLambda!26503 lambda!388074 (h!72693 (t!380112 (exprs!6574 (h!72695 zl!343))))) (validRegex!8426 (h!72693 (t!380112 (exprs!6574 (h!72695 zl!343))))))))

(declare-fun m!7596150 () Bool)

(assert (=> bs!1833993 m!7596150))

(assert (=> b!6861586 d!2155991))

(declare-fun b_lambda!259339 () Bool)

(assert (= b_lambda!259279 (or d!2155571 b_lambda!259339)))

(declare-fun bs!1833994 () Bool)

(declare-fun d!2155993 () Bool)

(assert (= bs!1833994 (and d!2155993 d!2155571)))

(assert (=> bs!1833994 (= (dynLambda!26503 lambda!388130 (h!72693 (unfocusZipperList!2107 zl!343))) (validRegex!8426 (h!72693 (unfocusZipperList!2107 zl!343))))))

(declare-fun m!7596152 () Bool)

(assert (=> bs!1833994 m!7596152))

(assert (=> b!6861379 d!2155993))

(declare-fun b_lambda!259341 () Bool)

(assert (= b_lambda!259307 (or d!2155587 b_lambda!259341)))

(declare-fun bs!1833995 () Bool)

(declare-fun d!2155995 () Bool)

(assert (= bs!1833995 (and d!2155995 d!2155587)))

(assert (=> bs!1833995 (= (dynLambda!26503 lambda!388136 (h!72693 lt!2457506)) (validRegex!8426 (h!72693 lt!2457506)))))

(declare-fun m!7596154 () Bool)

(assert (=> bs!1833995 m!7596154))

(assert (=> b!6861603 d!2155995))

(declare-fun b_lambda!259343 () Bool)

(assert (= b_lambda!259299 (or b!6860119 b_lambda!259343)))

(declare-fun bs!1833996 () Bool)

(declare-fun d!2155997 () Bool)

(assert (= bs!1833996 (and d!2155997 b!6860119)))

(assert (=> bs!1833996 (= (dynLambda!26503 lambda!388030 (h!72693 (t!380112 (t!380112 (exprs!6574 lt!2457391))))) (validRegex!8426 (h!72693 (t!380112 (t!380112 (exprs!6574 lt!2457391))))))))

(declare-fun m!7596156 () Bool)

(assert (=> bs!1833996 m!7596156))

(assert (=> b!6861549 d!2155997))

(declare-fun b_lambda!259345 () Bool)

(assert (= b_lambda!259285 (or d!2155521 b_lambda!259345)))

(declare-fun bs!1833997 () Bool)

(declare-fun d!2155999 () Bool)

(assert (= bs!1833997 (and d!2155999 d!2155521)))

(assert (=> bs!1833997 (= (dynLambda!26504 lambda!388113 (h!72695 zl!343)) (not (dynLambda!26504 lambda!388080 (h!72695 zl!343))))))

(declare-fun b_lambda!259355 () Bool)

(assert (=> (not b_lambda!259355) (not bs!1833997)))

(declare-fun m!7596158 () Bool)

(assert (=> bs!1833997 m!7596158))

(assert (=> b!6861471 d!2155999))

(declare-fun b_lambda!259347 () Bool)

(assert (= b_lambda!259301 (or d!2155585 b_lambda!259347)))

(declare-fun bs!1833998 () Bool)

(declare-fun d!2156001 () Bool)

(assert (= bs!1833998 (and d!2156001 d!2155585)))

(assert (=> bs!1833998 (= (dynLambda!26503 lambda!388135 (h!72693 (exprs!6574 (h!72695 zl!343)))) (validRegex!8426 (h!72693 (exprs!6574 (h!72695 zl!343)))))))

(assert (=> bs!1833998 m!7595422))

(assert (=> b!6861580 d!2156001))

(declare-fun b_lambda!259349 () Bool)

(assert (= b_lambda!259293 (or d!2155437 b_lambda!259349)))

(declare-fun bs!1833999 () Bool)

(declare-fun d!2156003 () Bool)

(assert (= bs!1833999 (and d!2156003 d!2155437)))

(assert (=> bs!1833999 (= (dynLambda!26503 lambda!388059 (h!72693 (t!380112 lt!2457393))) (not (dynLambda!26503 lambda!388028 (h!72693 (t!380112 lt!2457393)))))))

(declare-fun b_lambda!259357 () Bool)

(assert (=> (not b_lambda!259357) (not bs!1833999)))

(declare-fun m!7596160 () Bool)

(assert (=> bs!1833999 m!7596160))

(assert (=> b!6861502 d!2156003))

(push 1)

(assert (not b!6861396))

(assert (not b!6862073))

(assert tp_is_empty!42633)

(assert (not b!6861815))

(assert (not b!6861749))

(assert (not b_lambda!259213))

(assert (not b_lambda!259355))

(assert (not b!6861810))

(assert (not b!6862197))

(assert (not b!6862077))

(assert (not b!6861518))

(assert (not b!6861834))

(assert (not b!6861973))

(assert (not bm!624950))

(assert (not d!2155953))

(assert (not d!2155915))

(assert (not b!6862308))

(assert (not b!6861363))

(assert (not b!6861791))

(assert (not d!2155793))

(assert (not b!6861637))

(assert (not b!6861904))

(assert (not b!6861413))

(assert (not b!6862026))

(assert (not b!6862076))

(assert (not b!6861550))

(assert (not b!6862108))

(assert (not b!6862137))

(assert (not b!6862234))

(assert (not b!6861884))

(assert (not b!6862067))

(assert (not b!6862140))

(assert (not b!6862218))

(assert (not b!6861591))

(assert (not b!6861754))

(assert (not b!6861854))

(assert (not b!6862189))

(assert (not b!6861782))

(assert (not b!6861546))

(assert (not b!6861867))

(assert (not b!6862310))

(assert (not bm!624941))

(assert (not d!2155761))

(assert (not d!2155807))

(assert (not b!6861589))

(assert (not b!6861989))

(assert (not bm!624933))

(assert (not b!6861397))

(assert (not b!6861788))

(assert (not b!6862011))

(assert (not bm!624967))

(assert (not b!6861835))

(assert (not b!6861795))

(assert (not d!2155887))

(assert (not b!6861601))

(assert (not b!6862214))

(assert (not b_lambda!259323))

(assert (not bm!624953))

(assert (not b!6861819))

(assert (not b!6861986))

(assert (not b!6861830))

(assert (not b!6862105))

(assert (not b!6861931))

(assert (not b!6862230))

(assert (not b!6862091))

(assert (not b!6861850))

(assert (not b!6861606))

(assert (not d!2155873))

(assert (not bm!624972))

(assert (not b!6861961))

(assert (not b!6862109))

(assert (not b!6861584))

(assert (not b!6861869))

(assert (not b!6861624))

(assert (not b!6861457))

(assert (not b!6862193))

(assert (not bm!624976))

(assert (not d!2155825))

(assert (not b!6862045))

(assert (not b!6862113))

(assert (not bm!624988))

(assert (not b!6861823))

(assert (not b!6862304))

(assert (not b!6861804))

(assert (not bm!625006))

(assert (not b!6861860))

(assert (not b!6861905))

(assert (not b!6861863))

(assert (not b!6862068))

(assert (not b!6861663))

(assert (not bm!624997))

(assert (not b!6861787))

(assert (not b!6861681))

(assert (not b!6861462))

(assert (not b!6861856))

(assert (not b!6862124))

(assert (not b!6861470))

(assert (not bs!1833992))

(assert (not b!6861594))

(assert (not b!6862303))

(assert (not b!6861629))

(assert (not b!6861503))

(assert (not b!6862020))

(assert (not d!2155841))

(assert (not b!6861956))

(assert (not b!6861977))

(assert (not b!6861628))

(assert (not b!6861372))

(assert (not b!6861660))

(assert (not bm!624984))

(assert (not b!6861631))

(assert (not b!6861790))

(assert (not b!6862298))

(assert (not b!6861932))

(assert (not b!6861583))

(assert (not b!6861770))

(assert (not d!2155911))

(assert (not d!2155865))

(assert (not b!6861605))

(assert (not b!6861994))

(assert (not b!6861611))

(assert (not b!6862151))

(assert (not b!6862279))

(assert (not b!6862307))

(assert (not b!6862041))

(assert (not b_lambda!259335))

(assert (not bm!624944))

(assert (not b!6861921))

(assert (not b_lambda!259209))

(assert (not b!6862284))

(assert (not b!6861808))

(assert (not b_lambda!259333))

(assert (not b_lambda!259341))

(assert (not b!6861535))

(assert (not b!6862226))

(assert (not b!6862034))

(assert (not bm!624942))

(assert (not b!6862012))

(assert (not b_lambda!259179))

(assert (not b!6862089))

(assert (not b!6862222))

(assert (not b!6861900))

(assert (not b!6861780))

(assert (not b_lambda!259225))

(assert (not b!6861615))

(assert (not b!6861843))

(assert (not b!6862129))

(assert (not b!6862168))

(assert (not b!6861897))

(assert (not b!6862276))

(assert (not b!6861385))

(assert (not b!6861984))

(assert (not b!6862266))

(assert (not b!6861393))

(assert (not b!6861392))

(assert (not d!2155909))

(assert (not b!6861587))

(assert (not b!6862223))

(assert (not b!6862052))

(assert (not b!6862092))

(assert (not b!6861585))

(assert (not b!6862087))

(assert (not b!6861762))

(assert (not b!6862201))

(assert (not b!6862049))

(assert (not b_lambda!259345))

(assert (not b_lambda!259219))

(assert (not b!6861404))

(assert (not b!6861737))

(assert (not b!6862160))

(assert (not b_lambda!259275))

(assert (not b!6861772))

(assert (not b!6862055))

(assert (not b!6861717))

(assert (not b!6862145))

(assert (not b!6861474))

(assert (not d!2155903))

(assert (not b!6862175))

(assert (not b!6861840))

(assert (not b!6861747))

(assert (not b!6862161))

(assert (not b!6861545))

(assert (not b!6861898))

(assert (not b!6861760))

(assert (not bm!624960))

(assert (not b!6862036))

(assert (not b!6862243))

(assert (not b!6861722))

(assert (not b!6861838))

(assert (not bm!624983))

(assert (not b!6862249))

(assert (not b!6862103))

(assert (not b!6861513))

(assert (not b!6862312))

(assert (not b!6861894))

(assert (not b!6861876))

(assert (not b!6862183))

(assert (not b_lambda!259175))

(assert (not b!6862002))

(assert (not b!6861824))

(assert (not d!2155847))

(assert (not b!6861920))

(assert (not b!6861796))

(assert (not b!6861828))

(assert (not b!6862177))

(assert (not b!6861983))

(assert (not bm!624963))

(assert (not b!6862043))

(assert (not b!6861581))

(assert (not b!6862235))

(assert (not b!6862032))

(assert (not b!6862014))

(assert (not bs!1833986))

(assert (not b!6862132))

(assert (not b!6862267))

(assert (not b!6861544))

(assert (not b!6861690))

(assert (not d!2155773))

(assert (not b!6862035))

(assert (not b!6861803))

(assert (not b!6861842))

(assert (not bm!624981))

(assert (not b!6862306))

(assert (not b!6861936))

(assert (not b!6862278))

(assert (not b!6861948))

(assert (not b!6861641))

(assert (not b!6861941))

(assert (not b!6861604))

(assert (not b!6861888))

(assert (not b!6861608))

(assert (not b!6861807))

(assert (not b!6862069))

(assert (not b!6861547))

(assert (not bm!624993))

(assert (not bm!624994))

(assert (not d!2155959))

(assert (not b!6862294))

(assert (not b!6861851))

(assert (not bm!624957))

(assert (not b!6861811))

(assert (not b!6861963))

(assert (not b!6861651))

(assert (not d!2155781))

(assert (not b!6861952))

(assert (not b!6861908))

(assert (not b!6861940))

(assert (not d!2155815))

(assert (not b!6862028))

(assert (not b!6862141))

(assert (not b!6862075))

(assert (not b!6861758))

(assert (not d!2155863))

(assert (not b!6862143))

(assert (not b!6861490))

(assert (not b!6861919))

(assert (not b!6862291))

(assert (not bm!624938))

(assert (not bm!625003))

(assert (not b!6861969))

(assert (not b!6862260))

(assert (not b!6862206))

(assert (not bm!624951))

(assert (not b!6861548))

(assert (not d!2155901))

(assert (not b!6861975))

(assert (not bm!624931))

(assert (not b!6861504))

(assert (not b!6862084))

(assert (not b!6861981))

(assert (not b!6862287))

(assert (not b!6861968))

(assert (not bm!624959))

(assert (not b!6861602))

(assert (not b!6862080))

(assert (not d!2155833))

(assert (not b!6861880))

(assert (not b!6861522))

(assert (not b!6861864))

(assert (not b!6862107))

(assert (not b!6861453))

(assert (not b!6861733))

(assert (not b!6861784))

(assert (not b!6861776))

(assert (not b!6861532))

(assert (not b!6862187))

(assert (not b!6862093))

(assert (not b!6862264))

(assert (not b!6861965))

(assert (not b!6861915))

(assert (not d!2155845))

(assert (not b!6862239))

(assert (not b!6862191))

(assert (not b_lambda!259319))

(assert (not b!6861883))

(assert (not b!6861947))

(assert (not b!6862125))

(assert (not b!6861719))

(assert (not b!6862302))

(assert (not bm!625002))

(assert (not b_lambda!259211))

(assert (not b_lambda!259353))

(assert (not b!6862188))

(assert (not b!6862209))

(assert (not b_lambda!259339))

(assert (not b!6861945))

(assert (not b!6861812))

(assert (not bm!624937))

(assert (not b!6861456))

(assert (not b!6861868))

(assert (not b_lambda!259325))

(assert (not b!6862148))

(assert (not b!6862136))

(assert (not b!6862024))

(assert (not b_lambda!259321))

(assert (not b!6862254))

(assert (not b!6862311))

(assert (not b!6861980))

(assert (not b!6861794))

(assert (not bm!624999))

(assert (not d!2155771))

(assert (not b!6861395))

(assert (not b!6861459))

(assert (not b_lambda!259177))

(assert (not b!6861955))

(assert (not b!6862133))

(assert (not b!6861909))

(assert (not b!6861990))

(assert (not b!6862072))

(assert (not b!6862079))

(assert (not b_lambda!259351))

(assert (not b!6861610))

(assert (not b!6862192))

(assert (not b!6861452))

(assert (not b!6862295))

(assert (not b!6861745))

(assert (not b!6861928))

(assert (not b!6861756))

(assert (not b!6861498))

(assert (not b!6861907))

(assert (not b!6862063))

(assert (not b!6861911))

(assert (not b!6861529))

(assert (not bm!624929))

(assert (not b!6862023))

(assert (not b!6861515))

(assert (not b!6862216))

(assert (not b!6861422))

(assert (not b!6862256))

(assert (not b!6862263))

(assert (not b!6862221))

(assert (not b!6861519))

(assert (not b!6862242))

(assert (not b_lambda!259221))

(assert (not b!6862071))

(assert (not bs!1833991))

(assert (not b!6862167))

(assert (not b!6862213))

(assert (not b!6862008))

(assert (not b!6861458))

(assert (not b!6862179))

(assert (not b!6862270))

(assert (not b!6861822))

(assert (not b!6862116))

(assert (not b!6861399))

(assert (not bm!624966))

(assert (not b!6862292))

(assert (not b!6861672))

(assert (not b!6862164))

(assert (not b!6862000))

(assert (not b!6861798))

(assert (not b!6861875))

(assert (not b!6861799))

(assert (not b_lambda!259347))

(assert (not b!6861953))

(assert (not b_lambda!259327))

(assert (not b!6861929))

(assert (not bm!624936))

(assert (not b!6862006))

(assert (not bs!1833994))

(assert (not b!6861505))

(assert (not b!6861844))

(assert (not b!6861818))

(assert (not b!6861382))

(assert (not b!6861872))

(assert (not b!6862039))

(assert (not b!6862031))

(assert (not bm!624978))

(assert (not b!6861732))

(assert (not b!6862247))

(assert (not b!6862246))

(assert (not b!6861800))

(assert (not b!6862252))

(assert (not b!6862128))

(assert (not b!6861971))

(assert (not bm!624990))

(assert (not bm!624969))

(assert (not b!6861538))

(assert (not b!6862144))

(assert (not b!6862205))

(assert (not b!6862184))

(assert (not bm!624949))

(assert (not b!6862004))

(assert (not d!2155819))

(assert (not b!6862152))

(assert (not b!6861771))

(assert (not b!6862208))

(assert (not b!6862120))

(assert (not bs!1833983))

(assert (not bm!624973))

(assert (not b!6861542))

(assert (not b!6862275))

(assert (not b!6862112))

(assert (not b_lambda!259337))

(assert (not b_lambda!259331))

(assert (not bm!624964))

(assert (not bs!1833996))

(assert (not bm!624930))

(assert (not b!6861859))

(assert (not b!6862157))

(assert (not b!6861967))

(assert (not b!6862131))

(assert (not b!6862044))

(assert (not d!2155885))

(assert (not b!6861997))

(assert (not d!2155919))

(assert (not b!6861862))

(assert (not b!6861925))

(assert (not d!2155843))

(assert (not b!6861455))

(assert (not b!6861985))

(assert (not b!6862096))

(assert (not b!6862217))

(assert (not b!6861806))

(assert (not b!6862119))

(assert (not b!6861407))

(assert (not b!6861896))

(assert (not b!6861495))

(assert (not b!6862251))

(assert (not b!6861917))

(assert (not b!6862139))

(assert (not b!6862127))

(assert (not b!6862169))

(assert (not b!6861488))

(assert (not b!6862282))

(assert (not b!6861751))

(assert (not b!6861774))

(assert (not b!6861766))

(assert (not b_lambda!259315))

(assert (not b!6862053))

(assert (not b!6862111))

(assert (not b_lambda!259207))

(assert (not d!2155821))

(assert (not b!6862241))

(assert (not b!6861786))

(assert (not b!6861885))

(assert (not b!6862296))

(assert (not b!6861964))

(assert (not bm!624991))

(assert (not b!6861933))

(assert (not b!6861832))

(assert (not b!6862225))

(assert (not b!6861573))

(assert (not b!6861699))

(assert (not b!6862227))

(assert (not b!6862010))

(assert (not b_lambda!259215))

(assert (not b!6861923))

(assert (not b!6862016))

(assert (not b!6862185))

(assert (not b!6862085))

(assert (not b!6861939))

(assert (not b!6861999))

(assert (not b!6862065))

(assert (not b!6862059))

(assert (not b!6861957))

(assert (not b!6861890))

(assert (not b!6861561))

(assert (not b!6861768))

(assert (not b!6861903))

(assert (not b!6861877))

(assert (not b!6861564))

(assert (not d!2155965))

(assert (not b!6861998))

(assert (not b!6861767))

(assert (not b!6862123))

(assert (not d!2155921))

(assert (not b!6862196))

(assert (not b!6862165))

(assert (not b!6861855))

(assert (not b!6862262))

(assert (not b!6861839))

(assert (not bs!1833987))

(assert (not b!6861366))

(assert (not b!6861836))

(assert (not b!6861937))

(assert (not b!6862153))

(assert (not d!2155931))

(assert (not b!6862064))

(assert (not b!6861943))

(assert (not b!6862212))

(assert (not b!6862081))

(assert (not b!6861621))

(assert (not setNonEmpty!47190))

(assert (not b!6862180))

(assert (not b!6861802))

(assert (not bs!1833989))

(assert (not b!6861886))

(assert (not b!6862268))

(assert (not b!6862288))

(assert (not b!6862272))

(assert (not b!6861814))

(assert (not b!6861540))

(assert (not b_lambda!259223))

(assert (not b!6862274))

(assert (not b_lambda!259329))

(assert (not b!6861949))

(assert (not b!6861927))

(assert (not b!6861507))

(assert (not b!6862048))

(assert (not b!6862172))

(assert (not b!6861530))

(assert (not bm!624975))

(assert (not d!2155799))

(assert (not b_lambda!259357))

(assert (not b_lambda!259317))

(assert (not b!6862286))

(assert (not b!6861944))

(assert (not b!6862220))

(assert (not b!6862099))

(assert (not b!6861901))

(assert (not b!6862176))

(assert (not b!6862007))

(assert (not b_lambda!259343))

(assert (not b!6861866))

(assert (not b!6862245))

(assert (not d!2155853))

(assert (not bm!624934))

(assert (not b!6862101))

(assert (not b!6861715))

(assert (not b!6861846))

(assert (not b!6862037))

(assert (not b!6861879))

(assert (not b!6861614))

(assert (not b!6862083))

(assert (not bm!624987))

(assert (not d!2155827))

(assert (not b!6861995))

(assert (not b!6862200))

(assert (not b!6862057))

(assert (not b!6862018))

(assert (not bs!1833988))

(assert (not b!6861779))

(assert (not b!6862233))

(assert (not b!6861848))

(assert (not b_lambda!259217))

(assert (not b!6861979))

(assert (not b!6861826))

(assert (not b!6862300))

(assert (not b!6862003))

(assert (not b!6862117))

(assert (not b!6861533))

(assert (not b!6861871))

(assert (not b!6861991))

(assert (not b!6862271))

(assert (not b!6861716))

(assert (not bm!624956))

(assert (not b!6861912))

(assert (not b!6862022))

(assert (not bs!1833993))

(assert (not b!6861639))

(assert (not b!6862259))

(assert (not b!6862088))

(assert (not b!6861892))

(assert (not b!6861831))

(assert (not b!6861729))

(assert (not b!6862135))

(assert (not b!6861759))

(assert (not b!6862238))

(assert (not b!6862231))

(assert (not b!6862229))

(assert (not b!6862115))

(assert (not b!6862060))

(assert (not b!6861913))

(assert (not b!6861763))

(assert (not bs!1833985))

(assert (not bs!1833982))

(assert (not b!6862280))

(assert (not b!6862121))

(assert (not b!6861752))

(assert (not b!6862258))

(assert (not bm!624970))

(assert (not b!6861993))

(assert (not b!6861951))

(assert (not d!2155935))

(assert (not b!6862100))

(assert (not b!6861924))

(assert (not b!6862290))

(assert (not b!6861755))

(assert (not b!6862163))

(assert (not b!6862171))

(assert (not b!6861609))

(assert (not b!6862047))

(assert (not b!6862202))

(assert (not b!6861484))

(assert (not b!6862204))

(assert (not b!6862210))

(assert (not b!6861852))

(assert (not b!6862237))

(assert (not b!6862255))

(assert (not b!6862250))

(assert (not b!6861380))

(assert (not b!6862149))

(assert (not d!2155817))

(assert (not d!2155913))

(assert (not b!6861517))

(assert (not b!6861778))

(assert (not bm!624977))

(assert (not b_lambda!259277))

(assert (not b!6861486))

(assert (not bm!624996))

(assert (not d!2155801))

(assert (not b!6861858))

(assert (not d!2155951))

(assert (not b!6861775))

(assert (not bs!1833998))

(assert (not d!2155839))

(assert (not b!6861792))

(assert (not bm!624985))

(assert (not b!6861472))

(assert (not b!6861935))

(assert (not b!6862095))

(assert (not bm!625009))

(assert (not b!6861827))

(assert (not b!6861746))

(assert (not b!6862019))

(assert (not d!2155769))

(assert (not bm!625007))

(assert (not bs!1833995))

(assert (not b!6862056))

(assert (not bm!624961))

(assert (not b!6861893))

(assert (not b_lambda!259349))

(assert (not b!6861889))

(assert (not b!6861764))

(assert (not b!6862027))

(assert (not b!6861972))

(assert (not b!6862155))

(assert (not b!6861960))

(assert (not b!6862199))

(assert (not b!6862104))

(assert (not b!6861820))

(assert (not b!6862299))

(assert (not d!2155767))

(assert (not bm!624958))

(assert (not b!6861881))

(assert (not b!6862156))

(assert (not b!6861847))

(assert (not b!6861750))

(assert (not b!6862283))

(assert (not bm!625004))

(assert (not b!6862147))

(assert (not b!6861916))

(assert (not b!6861902))

(assert (not b!6861783))

(assert (not b!6861534))

(assert (not b!6862015))

(assert (not b!6861976))

(assert (not d!2155763))

(assert (not b!6862061))

(assert (not b!6862159))

(assert (not d!2155797))

(assert (not b!6861553))

(assert (not b!6862030))

(assert (not b!6861959))

(assert (not b!6862195))

(assert (not bm!624939))

(assert (not b!6861873))

(assert (not bm!624982))

(assert (not b!6862173))

(assert (not b!6861816))

(assert (not b!6862051))

(assert (not b!6862097))

(assert (not b!6862181))

(assert (not b!6862040))

(assert (not b!6861987))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

