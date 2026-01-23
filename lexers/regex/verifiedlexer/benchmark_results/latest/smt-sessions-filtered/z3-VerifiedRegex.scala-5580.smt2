; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!279788 () Bool)

(assert start!279788)

(declare-fun b!2866971 () Bool)

(declare-fun e!1814939 () Bool)

(declare-fun e!1814937 () Bool)

(assert (=> b!2866971 (= e!1814939 e!1814937)))

(declare-fun res!1190143 () Bool)

(assert (=> b!2866971 (=> (not res!1190143) (not e!1814937))))

(declare-datatypes ((C!17612 0))(
  ( (C!17613 (val!10840 Int)) )
))
(declare-datatypes ((List!34455 0))(
  ( (Nil!34331) (Cons!34331 (h!39751 C!17612) (t!233498 List!34455)) )
))
(declare-datatypes ((Option!6392 0))(
  ( (None!6391) (Some!6391 (v!34513 List!34455)) )
))
(declare-fun lt!1017124 () Option!6392)

(get-info :version)

(assert (=> b!2866971 (= res!1190143 ((_ is Some!6391) lt!1017124))))

(declare-datatypes ((Regex!8715 0))(
  ( (ElementMatch!8715 (c!463052 C!17612)) (Concat!14036 (regOne!17942 Regex!8715) (regTwo!17942 Regex!8715)) (EmptyExpr!8715) (Star!8715 (reg!9044 Regex!8715)) (EmptyLang!8715) (Union!8715 (regOne!17943 Regex!8715) (regTwo!17943 Regex!8715)) )
))
(declare-datatypes ((List!34456 0))(
  ( (Nil!34332) (Cons!34332 (h!39752 Regex!8715) (t!233499 List!34456)) )
))
(declare-datatypes ((Context!5350 0))(
  ( (Context!5351 (exprs!3175 List!34456)) )
))
(declare-fun lt!1017127 () Context!5350)

(declare-fun getLanguageWitness!387 (Context!5350) Option!6392)

(assert (=> b!2866971 (= lt!1017124 (getLanguageWitness!387 lt!1017127))))

(declare-fun c!7184 () Context!5350)

(assert (=> b!2866971 (= lt!1017127 (Context!5351 (t!233499 (exprs!3175 c!7184))))))

(declare-fun b!2866973 () Bool)

(declare-fun res!1190140 () Bool)

(declare-fun e!1814936 () Bool)

(assert (=> b!2866973 (=> (not res!1190140) (not e!1814936))))

(assert (=> b!2866973 (= res!1190140 ((_ is Cons!34332) (exprs!3175 c!7184)))))

(declare-fun b!2866974 () Bool)

(declare-fun e!1814938 () Bool)

(declare-fun tp!923016 () Bool)

(assert (=> b!2866974 (= e!1814938 tp!923016)))

(declare-fun b!2866975 () Bool)

(assert (=> b!2866975 (= e!1814936 e!1814939)))

(declare-fun res!1190142 () Bool)

(assert (=> b!2866975 (=> (not res!1190142) (not e!1814939))))

(declare-fun lt!1017123 () Option!6392)

(assert (=> b!2866975 (= res!1190142 ((_ is Some!6391) lt!1017123))))

(declare-fun getLanguageWitness!388 (Regex!8715) Option!6392)

(assert (=> b!2866975 (= lt!1017123 (getLanguageWitness!388 (h!39752 (exprs!3175 c!7184))))))

(declare-fun b!2866972 () Bool)

(declare-fun matchR!3723 (Regex!8715 List!34455) Bool)

(assert (=> b!2866972 (= e!1814937 (not (matchR!3723 (h!39752 (exprs!3175 c!7184)) (v!34513 lt!1017123))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun matchZipper!471 ((InoxSet Context!5350) List!34455) Bool)

(declare-fun get!10307 (Option!6392) List!34455)

(assert (=> b!2866972 (matchZipper!471 (store ((as const (Array Context!5350 Bool)) false) lt!1017127 true) (get!10307 lt!1017124))))

(declare-datatypes ((Unit!47947 0))(
  ( (Unit!47948) )
))
(declare-fun lt!1017125 () Unit!47947)

(declare-fun lemmaGetWitnessMatchesContext!28 (Context!5350) Unit!47947)

(assert (=> b!2866972 (= lt!1017125 (lemmaGetWitnessMatchesContext!28 lt!1017127))))

(assert (=> b!2866972 (matchR!3723 (h!39752 (exprs!3175 c!7184)) (get!10307 lt!1017123))))

(declare-fun lt!1017126 () Unit!47947)

(declare-fun lemmaGetWitnessMatches!30 (Regex!8715) Unit!47947)

(assert (=> b!2866972 (= lt!1017126 (lemmaGetWitnessMatches!30 (h!39752 (exprs!3175 c!7184))))))

(declare-fun res!1190141 () Bool)

(assert (=> start!279788 (=> (not res!1190141) (not e!1814936))))

(declare-fun lostCause!807 (Context!5350) Bool)

(assert (=> start!279788 (= res!1190141 (not (lostCause!807 c!7184)))))

(assert (=> start!279788 e!1814936))

(declare-fun inv!46374 (Context!5350) Bool)

(assert (=> start!279788 (and (inv!46374 c!7184) e!1814938)))

(assert (= (and start!279788 res!1190141) b!2866973))

(assert (= (and b!2866973 res!1190140) b!2866975))

(assert (= (and b!2866975 res!1190142) b!2866971))

(assert (= (and b!2866971 res!1190143) b!2866972))

(assert (= start!279788 b!2866974))

(declare-fun m!3287135 () Bool)

(assert (=> b!2866971 m!3287135))

(declare-fun m!3287137 () Bool)

(assert (=> b!2866975 m!3287137))

(declare-fun m!3287139 () Bool)

(assert (=> b!2866972 m!3287139))

(declare-fun m!3287141 () Bool)

(assert (=> b!2866972 m!3287141))

(declare-fun m!3287143 () Bool)

(assert (=> b!2866972 m!3287143))

(declare-fun m!3287145 () Bool)

(assert (=> b!2866972 m!3287145))

(assert (=> b!2866972 m!3287143))

(declare-fun m!3287147 () Bool)

(assert (=> b!2866972 m!3287147))

(declare-fun m!3287149 () Bool)

(assert (=> b!2866972 m!3287149))

(assert (=> b!2866972 m!3287147))

(declare-fun m!3287151 () Bool)

(assert (=> b!2866972 m!3287151))

(assert (=> b!2866972 m!3287139))

(declare-fun m!3287153 () Bool)

(assert (=> b!2866972 m!3287153))

(declare-fun m!3287155 () Bool)

(assert (=> start!279788 m!3287155))

(declare-fun m!3287157 () Bool)

(assert (=> start!279788 m!3287157))

(check-sat (not b!2866975) (not b!2866972) (not start!279788) (not b!2866971) (not b!2866974))
(check-sat)
(get-model)

(declare-fun b!2867004 () Bool)

(declare-fun e!1814956 () Bool)

(declare-fun e!1814955 () Bool)

(assert (=> b!2867004 (= e!1814956 e!1814955)))

(declare-fun res!1190166 () Bool)

(assert (=> b!2867004 (=> res!1190166 e!1814955)))

(declare-fun call!184961 () Bool)

(assert (=> b!2867004 (= res!1190166 call!184961)))

(declare-fun b!2867005 () Bool)

(declare-fun res!1190163 () Bool)

(declare-fun e!1814960 () Bool)

(assert (=> b!2867005 (=> (not res!1190163) (not e!1814960))))

(assert (=> b!2867005 (= res!1190163 (not call!184961))))

(declare-fun b!2867006 () Bool)

(declare-fun res!1190162 () Bool)

(declare-fun e!1814958 () Bool)

(assert (=> b!2867006 (=> res!1190162 e!1814958)))

(assert (=> b!2867006 (= res!1190162 e!1814960)))

(declare-fun res!1190167 () Bool)

(assert (=> b!2867006 (=> (not res!1190167) (not e!1814960))))

(declare-fun lt!1017130 () Bool)

(assert (=> b!2867006 (= res!1190167 lt!1017130)))

(declare-fun b!2867007 () Bool)

(declare-fun e!1814957 () Bool)

(declare-fun nullable!2671 (Regex!8715) Bool)

(assert (=> b!2867007 (= e!1814957 (nullable!2671 (h!39752 (exprs!3175 c!7184))))))

(declare-fun b!2867008 () Bool)

(declare-fun derivativeStep!2308 (Regex!8715 C!17612) Regex!8715)

(declare-fun head!6330 (List!34455) C!17612)

(declare-fun tail!4555 (List!34455) List!34455)

(assert (=> b!2867008 (= e!1814957 (matchR!3723 (derivativeStep!2308 (h!39752 (exprs!3175 c!7184)) (head!6330 (get!10307 lt!1017123))) (tail!4555 (get!10307 lt!1017123))))))

(declare-fun b!2867009 () Bool)

(declare-fun e!1814954 () Bool)

(assert (=> b!2867009 (= e!1814954 (= lt!1017130 call!184961))))

(declare-fun b!2867010 () Bool)

(declare-fun res!1190164 () Bool)

(assert (=> b!2867010 (=> res!1190164 e!1814955)))

(declare-fun isEmpty!18687 (List!34455) Bool)

(assert (=> b!2867010 (= res!1190164 (not (isEmpty!18687 (tail!4555 (get!10307 lt!1017123)))))))

(declare-fun b!2867011 () Bool)

(assert (=> b!2867011 (= e!1814955 (not (= (head!6330 (get!10307 lt!1017123)) (c!463052 (h!39752 (exprs!3175 c!7184))))))))

(declare-fun b!2867012 () Bool)

(declare-fun e!1814959 () Bool)

(assert (=> b!2867012 (= e!1814954 e!1814959)))

(declare-fun c!463060 () Bool)

(assert (=> b!2867012 (= c!463060 ((_ is EmptyLang!8715) (h!39752 (exprs!3175 c!7184))))))

(declare-fun d!828857 () Bool)

(assert (=> d!828857 e!1814954))

(declare-fun c!463061 () Bool)

(assert (=> d!828857 (= c!463061 ((_ is EmptyExpr!8715) (h!39752 (exprs!3175 c!7184))))))

(assert (=> d!828857 (= lt!1017130 e!1814957)))

(declare-fun c!463059 () Bool)

(assert (=> d!828857 (= c!463059 (isEmpty!18687 (get!10307 lt!1017123)))))

(declare-fun validRegex!3498 (Regex!8715) Bool)

(assert (=> d!828857 (validRegex!3498 (h!39752 (exprs!3175 c!7184)))))

(assert (=> d!828857 (= (matchR!3723 (h!39752 (exprs!3175 c!7184)) (get!10307 lt!1017123)) lt!1017130)))

(declare-fun b!2867013 () Bool)

(assert (=> b!2867013 (= e!1814958 e!1814956)))

(declare-fun res!1190165 () Bool)

(assert (=> b!2867013 (=> (not res!1190165) (not e!1814956))))

(assert (=> b!2867013 (= res!1190165 (not lt!1017130))))

(declare-fun b!2867014 () Bool)

(declare-fun res!1190161 () Bool)

(assert (=> b!2867014 (=> res!1190161 e!1814958)))

(assert (=> b!2867014 (= res!1190161 (not ((_ is ElementMatch!8715) (h!39752 (exprs!3175 c!7184)))))))

(assert (=> b!2867014 (= e!1814959 e!1814958)))

(declare-fun b!2867015 () Bool)

(assert (=> b!2867015 (= e!1814959 (not lt!1017130))))

(declare-fun b!2867016 () Bool)

(declare-fun res!1190160 () Bool)

(assert (=> b!2867016 (=> (not res!1190160) (not e!1814960))))

(assert (=> b!2867016 (= res!1190160 (isEmpty!18687 (tail!4555 (get!10307 lt!1017123))))))

(declare-fun bm!184956 () Bool)

(assert (=> bm!184956 (= call!184961 (isEmpty!18687 (get!10307 lt!1017123)))))

(declare-fun b!2867017 () Bool)

(assert (=> b!2867017 (= e!1814960 (= (head!6330 (get!10307 lt!1017123)) (c!463052 (h!39752 (exprs!3175 c!7184)))))))

(assert (= (and d!828857 c!463059) b!2867007))

(assert (= (and d!828857 (not c!463059)) b!2867008))

(assert (= (and d!828857 c!463061) b!2867009))

(assert (= (and d!828857 (not c!463061)) b!2867012))

(assert (= (and b!2867012 c!463060) b!2867015))

(assert (= (and b!2867012 (not c!463060)) b!2867014))

(assert (= (and b!2867014 (not res!1190161)) b!2867006))

(assert (= (and b!2867006 res!1190167) b!2867005))

(assert (= (and b!2867005 res!1190163) b!2867016))

(assert (= (and b!2867016 res!1190160) b!2867017))

(assert (= (and b!2867006 (not res!1190162)) b!2867013))

(assert (= (and b!2867013 res!1190165) b!2867004))

(assert (= (and b!2867004 (not res!1190166)) b!2867010))

(assert (= (and b!2867010 (not res!1190164)) b!2867011))

(assert (= (or b!2867009 b!2867004 b!2867005) bm!184956))

(assert (=> b!2867016 m!3287139))

(declare-fun m!3287159 () Bool)

(assert (=> b!2867016 m!3287159))

(assert (=> b!2867016 m!3287159))

(declare-fun m!3287161 () Bool)

(assert (=> b!2867016 m!3287161))

(assert (=> bm!184956 m!3287139))

(declare-fun m!3287163 () Bool)

(assert (=> bm!184956 m!3287163))

(assert (=> d!828857 m!3287139))

(assert (=> d!828857 m!3287163))

(declare-fun m!3287165 () Bool)

(assert (=> d!828857 m!3287165))

(assert (=> b!2867017 m!3287139))

(declare-fun m!3287167 () Bool)

(assert (=> b!2867017 m!3287167))

(declare-fun m!3287169 () Bool)

(assert (=> b!2867007 m!3287169))

(assert (=> b!2867008 m!3287139))

(assert (=> b!2867008 m!3287167))

(assert (=> b!2867008 m!3287167))

(declare-fun m!3287171 () Bool)

(assert (=> b!2867008 m!3287171))

(assert (=> b!2867008 m!3287139))

(assert (=> b!2867008 m!3287159))

(assert (=> b!2867008 m!3287171))

(assert (=> b!2867008 m!3287159))

(declare-fun m!3287173 () Bool)

(assert (=> b!2867008 m!3287173))

(assert (=> b!2867011 m!3287139))

(assert (=> b!2867011 m!3287167))

(assert (=> b!2867010 m!3287139))

(assert (=> b!2867010 m!3287159))

(assert (=> b!2867010 m!3287159))

(assert (=> b!2867010 m!3287161))

(assert (=> b!2866972 d!828857))

(declare-fun d!828861 () Bool)

(assert (=> d!828861 (matchZipper!471 (store ((as const (Array Context!5350 Bool)) false) lt!1017127 true) (get!10307 (getLanguageWitness!387 lt!1017127)))))

(declare-fun lt!1017133 () Unit!47947)

(declare-fun choose!16957 (Context!5350) Unit!47947)

(assert (=> d!828861 (= lt!1017133 (choose!16957 lt!1017127))))

(assert (=> d!828861 (not (lostCause!807 lt!1017127))))

(assert (=> d!828861 (= (lemmaGetWitnessMatchesContext!28 lt!1017127) lt!1017133)))

(declare-fun bs!521658 () Bool)

(assert (= bs!521658 d!828861))

(assert (=> bs!521658 m!3287143))

(declare-fun m!3287175 () Bool)

(assert (=> bs!521658 m!3287175))

(declare-fun m!3287177 () Bool)

(assert (=> bs!521658 m!3287177))

(assert (=> bs!521658 m!3287143))

(declare-fun m!3287179 () Bool)

(assert (=> bs!521658 m!3287179))

(assert (=> bs!521658 m!3287135))

(assert (=> bs!521658 m!3287175))

(declare-fun m!3287181 () Bool)

(assert (=> bs!521658 m!3287181))

(assert (=> bs!521658 m!3287135))

(assert (=> b!2866972 d!828861))

(declare-fun b!2867018 () Bool)

(declare-fun e!1814963 () Bool)

(declare-fun e!1814962 () Bool)

(assert (=> b!2867018 (= e!1814963 e!1814962)))

(declare-fun res!1190174 () Bool)

(assert (=> b!2867018 (=> res!1190174 e!1814962)))

(declare-fun call!184962 () Bool)

(assert (=> b!2867018 (= res!1190174 call!184962)))

(declare-fun b!2867019 () Bool)

(declare-fun res!1190171 () Bool)

(declare-fun e!1814967 () Bool)

(assert (=> b!2867019 (=> (not res!1190171) (not e!1814967))))

(assert (=> b!2867019 (= res!1190171 (not call!184962))))

(declare-fun b!2867020 () Bool)

(declare-fun res!1190170 () Bool)

(declare-fun e!1814965 () Bool)

(assert (=> b!2867020 (=> res!1190170 e!1814965)))

(assert (=> b!2867020 (= res!1190170 e!1814967)))

(declare-fun res!1190175 () Bool)

(assert (=> b!2867020 (=> (not res!1190175) (not e!1814967))))

(declare-fun lt!1017134 () Bool)

(assert (=> b!2867020 (= res!1190175 lt!1017134)))

(declare-fun b!2867021 () Bool)

(declare-fun e!1814964 () Bool)

(assert (=> b!2867021 (= e!1814964 (nullable!2671 (h!39752 (exprs!3175 c!7184))))))

(declare-fun b!2867022 () Bool)

(assert (=> b!2867022 (= e!1814964 (matchR!3723 (derivativeStep!2308 (h!39752 (exprs!3175 c!7184)) (head!6330 (v!34513 lt!1017123))) (tail!4555 (v!34513 lt!1017123))))))

(declare-fun b!2867023 () Bool)

(declare-fun e!1814961 () Bool)

(assert (=> b!2867023 (= e!1814961 (= lt!1017134 call!184962))))

(declare-fun b!2867024 () Bool)

(declare-fun res!1190172 () Bool)

(assert (=> b!2867024 (=> res!1190172 e!1814962)))

(assert (=> b!2867024 (= res!1190172 (not (isEmpty!18687 (tail!4555 (v!34513 lt!1017123)))))))

(declare-fun b!2867025 () Bool)

(assert (=> b!2867025 (= e!1814962 (not (= (head!6330 (v!34513 lt!1017123)) (c!463052 (h!39752 (exprs!3175 c!7184))))))))

(declare-fun b!2867026 () Bool)

(declare-fun e!1814966 () Bool)

(assert (=> b!2867026 (= e!1814961 e!1814966)))

(declare-fun c!463064 () Bool)

(assert (=> b!2867026 (= c!463064 ((_ is EmptyLang!8715) (h!39752 (exprs!3175 c!7184))))))

(declare-fun d!828863 () Bool)

(assert (=> d!828863 e!1814961))

(declare-fun c!463065 () Bool)

(assert (=> d!828863 (= c!463065 ((_ is EmptyExpr!8715) (h!39752 (exprs!3175 c!7184))))))

(assert (=> d!828863 (= lt!1017134 e!1814964)))

(declare-fun c!463063 () Bool)

(assert (=> d!828863 (= c!463063 (isEmpty!18687 (v!34513 lt!1017123)))))

(assert (=> d!828863 (validRegex!3498 (h!39752 (exprs!3175 c!7184)))))

(assert (=> d!828863 (= (matchR!3723 (h!39752 (exprs!3175 c!7184)) (v!34513 lt!1017123)) lt!1017134)))

(declare-fun b!2867027 () Bool)

(assert (=> b!2867027 (= e!1814965 e!1814963)))

(declare-fun res!1190173 () Bool)

(assert (=> b!2867027 (=> (not res!1190173) (not e!1814963))))

(assert (=> b!2867027 (= res!1190173 (not lt!1017134))))

(declare-fun b!2867028 () Bool)

(declare-fun res!1190169 () Bool)

(assert (=> b!2867028 (=> res!1190169 e!1814965)))

(assert (=> b!2867028 (= res!1190169 (not ((_ is ElementMatch!8715) (h!39752 (exprs!3175 c!7184)))))))

(assert (=> b!2867028 (= e!1814966 e!1814965)))

(declare-fun b!2867029 () Bool)

(assert (=> b!2867029 (= e!1814966 (not lt!1017134))))

(declare-fun b!2867030 () Bool)

(declare-fun res!1190168 () Bool)

(assert (=> b!2867030 (=> (not res!1190168) (not e!1814967))))

(assert (=> b!2867030 (= res!1190168 (isEmpty!18687 (tail!4555 (v!34513 lt!1017123))))))

(declare-fun bm!184957 () Bool)

(assert (=> bm!184957 (= call!184962 (isEmpty!18687 (v!34513 lt!1017123)))))

(declare-fun b!2867031 () Bool)

(assert (=> b!2867031 (= e!1814967 (= (head!6330 (v!34513 lt!1017123)) (c!463052 (h!39752 (exprs!3175 c!7184)))))))

(assert (= (and d!828863 c!463063) b!2867021))

(assert (= (and d!828863 (not c!463063)) b!2867022))

(assert (= (and d!828863 c!463065) b!2867023))

(assert (= (and d!828863 (not c!463065)) b!2867026))

(assert (= (and b!2867026 c!463064) b!2867029))

(assert (= (and b!2867026 (not c!463064)) b!2867028))

(assert (= (and b!2867028 (not res!1190169)) b!2867020))

(assert (= (and b!2867020 res!1190175) b!2867019))

(assert (= (and b!2867019 res!1190171) b!2867030))

(assert (= (and b!2867030 res!1190168) b!2867031))

(assert (= (and b!2867020 (not res!1190170)) b!2867027))

(assert (= (and b!2867027 res!1190173) b!2867018))

(assert (= (and b!2867018 (not res!1190174)) b!2867024))

(assert (= (and b!2867024 (not res!1190172)) b!2867025))

(assert (= (or b!2867023 b!2867018 b!2867019) bm!184957))

(declare-fun m!3287183 () Bool)

(assert (=> b!2867030 m!3287183))

(assert (=> b!2867030 m!3287183))

(declare-fun m!3287185 () Bool)

(assert (=> b!2867030 m!3287185))

(declare-fun m!3287187 () Bool)

(assert (=> bm!184957 m!3287187))

(assert (=> d!828863 m!3287187))

(assert (=> d!828863 m!3287165))

(declare-fun m!3287189 () Bool)

(assert (=> b!2867031 m!3287189))

(assert (=> b!2867021 m!3287169))

(assert (=> b!2867022 m!3287189))

(assert (=> b!2867022 m!3287189))

(declare-fun m!3287191 () Bool)

(assert (=> b!2867022 m!3287191))

(assert (=> b!2867022 m!3287183))

(assert (=> b!2867022 m!3287191))

(assert (=> b!2867022 m!3287183))

(declare-fun m!3287193 () Bool)

(assert (=> b!2867022 m!3287193))

(assert (=> b!2867025 m!3287189))

(assert (=> b!2867024 m!3287183))

(assert (=> b!2867024 m!3287183))

(assert (=> b!2867024 m!3287185))

(assert (=> b!2866972 d!828863))

(declare-fun d!828865 () Bool)

(assert (=> d!828865 (matchR!3723 (h!39752 (exprs!3175 c!7184)) (get!10307 (getLanguageWitness!388 (h!39752 (exprs!3175 c!7184)))))))

(declare-fun lt!1017137 () Unit!47947)

(declare-fun choose!16959 (Regex!8715) Unit!47947)

(assert (=> d!828865 (= lt!1017137 (choose!16959 (h!39752 (exprs!3175 c!7184))))))

(assert (=> d!828865 (validRegex!3498 (h!39752 (exprs!3175 c!7184)))))

(assert (=> d!828865 (= (lemmaGetWitnessMatches!30 (h!39752 (exprs!3175 c!7184))) lt!1017137)))

(declare-fun bs!521659 () Bool)

(assert (= bs!521659 d!828865))

(assert (=> bs!521659 m!3287137))

(declare-fun m!3287195 () Bool)

(assert (=> bs!521659 m!3287195))

(assert (=> bs!521659 m!3287195))

(declare-fun m!3287197 () Bool)

(assert (=> bs!521659 m!3287197))

(assert (=> bs!521659 m!3287165))

(declare-fun m!3287199 () Bool)

(assert (=> bs!521659 m!3287199))

(assert (=> bs!521659 m!3287137))

(assert (=> b!2866972 d!828865))

(declare-fun d!828867 () Bool)

(assert (=> d!828867 (= (get!10307 lt!1017124) (v!34513 lt!1017124))))

(assert (=> b!2866972 d!828867))

(declare-fun d!828869 () Bool)

(assert (=> d!828869 (= (get!10307 lt!1017123) (v!34513 lt!1017123))))

(assert (=> b!2866972 d!828869))

(declare-fun d!828871 () Bool)

(declare-fun c!463068 () Bool)

(assert (=> d!828871 (= c!463068 (isEmpty!18687 (get!10307 lt!1017124)))))

(declare-fun e!1814970 () Bool)

(assert (=> d!828871 (= (matchZipper!471 (store ((as const (Array Context!5350 Bool)) false) lt!1017127 true) (get!10307 lt!1017124)) e!1814970)))

(declare-fun b!2867036 () Bool)

(declare-fun nullableZipper!709 ((InoxSet Context!5350)) Bool)

(assert (=> b!2867036 (= e!1814970 (nullableZipper!709 (store ((as const (Array Context!5350 Bool)) false) lt!1017127 true)))))

(declare-fun b!2867037 () Bool)

(declare-fun derivationStepZipper!465 ((InoxSet Context!5350) C!17612) (InoxSet Context!5350))

(assert (=> b!2867037 (= e!1814970 (matchZipper!471 (derivationStepZipper!465 (store ((as const (Array Context!5350 Bool)) false) lt!1017127 true) (head!6330 (get!10307 lt!1017124))) (tail!4555 (get!10307 lt!1017124))))))

(assert (= (and d!828871 c!463068) b!2867036))

(assert (= (and d!828871 (not c!463068)) b!2867037))

(assert (=> d!828871 m!3287147))

(declare-fun m!3287201 () Bool)

(assert (=> d!828871 m!3287201))

(assert (=> b!2867036 m!3287143))

(declare-fun m!3287203 () Bool)

(assert (=> b!2867036 m!3287203))

(assert (=> b!2867037 m!3287147))

(declare-fun m!3287205 () Bool)

(assert (=> b!2867037 m!3287205))

(assert (=> b!2867037 m!3287143))

(assert (=> b!2867037 m!3287205))

(declare-fun m!3287207 () Bool)

(assert (=> b!2867037 m!3287207))

(assert (=> b!2867037 m!3287147))

(declare-fun m!3287209 () Bool)

(assert (=> b!2867037 m!3287209))

(assert (=> b!2867037 m!3287207))

(assert (=> b!2867037 m!3287209))

(declare-fun m!3287211 () Bool)

(assert (=> b!2867037 m!3287211))

(assert (=> b!2866972 d!828871))

(declare-fun b!2867183 () Bool)

(declare-fun e!1815044 () Option!6392)

(declare-fun lt!1017174 () Option!6392)

(declare-fun lt!1017172 () Option!6392)

(declare-fun ++!8156 (List!34455 List!34455) List!34455)

(assert (=> b!2867183 (= e!1815044 (Some!6391 (++!8156 (v!34513 lt!1017174) (v!34513 lt!1017172))))))

(declare-fun b!2867184 () Bool)

(declare-fun e!1815046 () Option!6392)

(assert (=> b!2867184 (= e!1815046 (Some!6391 Nil!34331))))

(declare-fun b!2867185 () Bool)

(declare-fun c!463127 () Bool)

(assert (=> b!2867185 (= c!463127 ((_ is Some!6391) lt!1017172))))

(assert (=> b!2867185 (= lt!1017172 (getLanguageWitness!387 (Context!5351 (t!233499 (exprs!3175 lt!1017127)))))))

(declare-fun e!1815045 () Option!6392)

(assert (=> b!2867185 (= e!1815045 e!1815044)))

(declare-fun b!2867186 () Bool)

(assert (=> b!2867186 (= e!1815045 None!6391)))

(declare-fun b!2867187 () Bool)

(assert (=> b!2867187 (= e!1815046 e!1815045)))

(assert (=> b!2867187 (= lt!1017174 (getLanguageWitness!388 (h!39752 (exprs!3175 lt!1017127))))))

(declare-fun c!463128 () Bool)

(assert (=> b!2867187 (= c!463128 ((_ is Some!6391) lt!1017174))))

(declare-fun b!2867188 () Bool)

(assert (=> b!2867188 (= e!1815044 None!6391)))

(declare-fun d!828873 () Bool)

(declare-fun lt!1017173 () Option!6392)

(declare-fun lambda!106860 () Int)

(declare-fun isEmpty!18689 (Option!6392) Bool)

(declare-fun exists!1136 (List!34456 Int) Bool)

(assert (=> d!828873 (= (isEmpty!18689 lt!1017173) (exists!1136 (exprs!3175 lt!1017127) lambda!106860))))

(assert (=> d!828873 (= lt!1017173 e!1815046)))

(declare-fun c!463126 () Bool)

(assert (=> d!828873 (= c!463126 ((_ is Cons!34332) (exprs!3175 lt!1017127)))))

(assert (=> d!828873 (= (getLanguageWitness!387 lt!1017127) lt!1017173)))

(assert (= (and d!828873 c!463126) b!2867187))

(assert (= (and d!828873 (not c!463126)) b!2867184))

(assert (= (and b!2867187 c!463128) b!2867185))

(assert (= (and b!2867187 (not c!463128)) b!2867186))

(assert (= (and b!2867185 c!463127) b!2867183))

(assert (= (and b!2867185 (not c!463127)) b!2867188))

(declare-fun m!3287287 () Bool)

(assert (=> b!2867183 m!3287287))

(declare-fun m!3287289 () Bool)

(assert (=> b!2867185 m!3287289))

(declare-fun m!3287291 () Bool)

(assert (=> b!2867187 m!3287291))

(declare-fun m!3287293 () Bool)

(assert (=> d!828873 m!3287293))

(declare-fun m!3287295 () Bool)

(assert (=> d!828873 m!3287295))

(assert (=> b!2866971 d!828873))

(declare-fun bs!521667 () Bool)

(declare-fun d!828895 () Bool)

(assert (= bs!521667 (and d!828895 d!828873)))

(declare-fun lambda!106863 () Int)

(assert (=> bs!521667 (= lambda!106863 lambda!106860)))

(assert (=> d!828895 (= (lostCause!807 c!7184) (exists!1136 (exprs!3175 c!7184) lambda!106863))))

(declare-fun bs!521668 () Bool)

(assert (= bs!521668 d!828895))

(declare-fun m!3287297 () Bool)

(assert (=> bs!521668 m!3287297))

(assert (=> start!279788 d!828895))

(declare-fun bs!521669 () Bool)

(declare-fun d!828897 () Bool)

(assert (= bs!521669 (and d!828897 d!828873)))

(declare-fun lambda!106866 () Int)

(assert (=> bs!521669 (not (= lambda!106866 lambda!106860))))

(declare-fun bs!521670 () Bool)

(assert (= bs!521670 (and d!828897 d!828895)))

(assert (=> bs!521670 (not (= lambda!106866 lambda!106863))))

(declare-fun forall!7063 (List!34456 Int) Bool)

(assert (=> d!828897 (= (inv!46374 c!7184) (forall!7063 (exprs!3175 c!7184) lambda!106866))))

(declare-fun bs!521671 () Bool)

(assert (= bs!521671 d!828897))

(declare-fun m!3287299 () Bool)

(assert (=> bs!521671 m!3287299))

(assert (=> start!279788 d!828897))

(declare-fun d!828899 () Bool)

(declare-fun c!463152 () Bool)

(assert (=> d!828899 (= c!463152 ((_ is EmptyExpr!8715) (h!39752 (exprs!3175 c!7184))))))

(declare-fun e!1815063 () Option!6392)

(assert (=> d!828899 (= (getLanguageWitness!388 (h!39752 (exprs!3175 c!7184))) e!1815063)))

(declare-fun b!2867221 () Bool)

(declare-fun e!1815069 () Option!6392)

(assert (=> b!2867221 (= e!1815069 (Some!6391 (Cons!34331 (c!463052 (h!39752 (exprs!3175 c!7184))) Nil!34331)))))

(declare-fun bm!184972 () Bool)

(declare-fun call!184977 () Option!6392)

(declare-fun c!463146 () Bool)

(assert (=> bm!184972 (= call!184977 (getLanguageWitness!388 (ite c!463146 (regOne!17943 (h!39752 (exprs!3175 c!7184))) (regOne!17942 (h!39752 (exprs!3175 c!7184))))))))

(declare-fun b!2867222 () Bool)

(assert (=> b!2867222 (= e!1815063 (Some!6391 Nil!34331))))

(declare-fun b!2867223 () Bool)

(declare-fun e!1815067 () Option!6392)

(assert (=> b!2867223 (= e!1815063 e!1815067)))

(declare-fun c!463149 () Bool)

(assert (=> b!2867223 (= c!463149 ((_ is EmptyLang!8715) (h!39752 (exprs!3175 c!7184))))))

(declare-fun b!2867224 () Bool)

(assert (=> b!2867224 (= e!1815067 None!6391)))

(declare-fun b!2867225 () Bool)

(declare-fun e!1815065 () Option!6392)

(declare-fun call!184978 () Option!6392)

(assert (=> b!2867225 (= e!1815065 call!184978)))

(declare-fun b!2867226 () Bool)

(declare-fun e!1815070 () Option!6392)

(assert (=> b!2867226 (= e!1815070 (Some!6391 Nil!34331))))

(declare-fun b!2867227 () Bool)

(assert (=> b!2867227 (= e!1815069 e!1815070)))

(declare-fun c!463145 () Bool)

(assert (=> b!2867227 (= c!463145 ((_ is Star!8715) (h!39752 (exprs!3175 c!7184))))))

(declare-fun bm!184973 () Bool)

(assert (=> bm!184973 (= call!184978 (getLanguageWitness!388 (ite c!463146 (regTwo!17943 (h!39752 (exprs!3175 c!7184))) (regTwo!17942 (h!39752 (exprs!3175 c!7184))))))))

(declare-fun b!2867228 () Bool)

(declare-fun e!1815068 () Option!6392)

(declare-fun lt!1017183 () Option!6392)

(declare-fun lt!1017181 () Option!6392)

(assert (=> b!2867228 (= e!1815068 (Some!6391 (++!8156 (v!34513 lt!1017183) (v!34513 lt!1017181))))))

(declare-fun b!2867229 () Bool)

(declare-fun e!1815066 () Option!6392)

(assert (=> b!2867229 (= e!1815066 None!6391)))

(declare-fun b!2867230 () Bool)

(assert (=> b!2867230 (= c!463146 ((_ is Union!8715) (h!39752 (exprs!3175 c!7184))))))

(declare-fun e!1815064 () Option!6392)

(assert (=> b!2867230 (= e!1815070 e!1815064)))

(declare-fun b!2867231 () Bool)

(declare-fun c!463148 () Bool)

(assert (=> b!2867231 (= c!463148 ((_ is Some!6391) lt!1017181))))

(assert (=> b!2867231 (= lt!1017181 call!184978)))

(assert (=> b!2867231 (= e!1815066 e!1815068)))

(declare-fun b!2867232 () Bool)

(assert (=> b!2867232 (= e!1815064 e!1815065)))

(declare-fun lt!1017182 () Option!6392)

(assert (=> b!2867232 (= lt!1017182 call!184977)))

(declare-fun c!463151 () Bool)

(assert (=> b!2867232 (= c!463151 ((_ is Some!6391) lt!1017182))))

(declare-fun b!2867233 () Bool)

(declare-fun c!463150 () Bool)

(assert (=> b!2867233 (= c!463150 ((_ is ElementMatch!8715) (h!39752 (exprs!3175 c!7184))))))

(assert (=> b!2867233 (= e!1815067 e!1815069)))

(declare-fun b!2867234 () Bool)

(assert (=> b!2867234 (= e!1815065 lt!1017182)))

(declare-fun b!2867235 () Bool)

(assert (=> b!2867235 (= e!1815064 e!1815066)))

(assert (=> b!2867235 (= lt!1017183 call!184977)))

(declare-fun c!463147 () Bool)

(assert (=> b!2867235 (= c!463147 ((_ is Some!6391) lt!1017183))))

(declare-fun b!2867236 () Bool)

(assert (=> b!2867236 (= e!1815068 None!6391)))

(assert (= (and d!828899 c!463152) b!2867222))

(assert (= (and d!828899 (not c!463152)) b!2867223))

(assert (= (and b!2867223 c!463149) b!2867224))

(assert (= (and b!2867223 (not c!463149)) b!2867233))

(assert (= (and b!2867233 c!463150) b!2867221))

(assert (= (and b!2867233 (not c!463150)) b!2867227))

(assert (= (and b!2867227 c!463145) b!2867226))

(assert (= (and b!2867227 (not c!463145)) b!2867230))

(assert (= (and b!2867230 c!463146) b!2867232))

(assert (= (and b!2867230 (not c!463146)) b!2867235))

(assert (= (and b!2867232 c!463151) b!2867234))

(assert (= (and b!2867232 (not c!463151)) b!2867225))

(assert (= (and b!2867235 c!463147) b!2867231))

(assert (= (and b!2867235 (not c!463147)) b!2867229))

(assert (= (and b!2867231 c!463148) b!2867228))

(assert (= (and b!2867231 (not c!463148)) b!2867236))

(assert (= (or b!2867225 b!2867231) bm!184973))

(assert (= (or b!2867232 b!2867235) bm!184972))

(declare-fun m!3287301 () Bool)

(assert (=> bm!184972 m!3287301))

(declare-fun m!3287303 () Bool)

(assert (=> bm!184973 m!3287303))

(declare-fun m!3287305 () Bool)

(assert (=> b!2867228 m!3287305))

(assert (=> b!2866975 d!828899))

(declare-fun b!2867241 () Bool)

(declare-fun e!1815073 () Bool)

(declare-fun tp!923027 () Bool)

(declare-fun tp!923028 () Bool)

(assert (=> b!2867241 (= e!1815073 (and tp!923027 tp!923028))))

(assert (=> b!2866974 (= tp!923016 e!1815073)))

(assert (= (and b!2866974 ((_ is Cons!34332) (exprs!3175 c!7184))) b!2867241))

(check-sat (not d!828873) (not bm!184957) (not b!2867031) (not bm!184972) (not d!828865) (not b!2867241) (not b!2867025) (not b!2867021) (not d!828863) (not b!2867017) (not b!2867008) (not b!2867022) (not b!2867037) (not b!2867228) (not d!828871) (not d!828861) (not b!2867030) (not d!828857) (not b!2867016) (not d!828897) (not b!2867007) (not b!2867187) (not b!2867024) (not b!2867010) (not d!828895) (not b!2867185) (not bm!184956) (not bm!184973) (not b!2867036) (not b!2867011) (not b!2867183))
(check-sat)
