; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!349870 () Bool)

(assert start!349870)

(declare-fun res!1509124 () Bool)

(declare-fun e!2298154 () Bool)

(assert (=> start!349870 (=> (not res!1509124) (not e!2298154))))

(declare-datatypes ((C!21872 0))(
  ( (C!21873 (val!12984 Int)) )
))
(declare-datatypes ((Regex!10843 0))(
  ( (ElementMatch!10843 (c!640987 C!21872)) (Concat!17114 (regOne!22198 Regex!10843) (regTwo!22198 Regex!10843)) (EmptyExpr!10843) (Star!10843 (reg!11172 Regex!10843)) (EmptyLang!10843) (Union!10843 (regOne!22199 Regex!10843) (regTwo!22199 Regex!10843)) )
))
(declare-fun r!26326 () Regex!10843)

(declare-fun validRegex!4950 (Regex!10843) Bool)

(assert (=> start!349870 (= res!1509124 (validRegex!4950 r!26326))))

(assert (=> start!349870 e!2298154))

(declare-fun e!2298155 () Bool)

(assert (=> start!349870 e!2298155))

(declare-fun tp_is_empty!18701 () Bool)

(assert (=> start!349870 tp_is_empty!18701))

(declare-fun e!2298156 () Bool)

(assert (=> start!349870 e!2298156))

(declare-fun b!3710849 () Bool)

(declare-fun tp!1129330 () Bool)

(declare-fun tp!1129332 () Bool)

(assert (=> b!3710849 (= e!2298155 (and tp!1129330 tp!1129332))))

(declare-fun b!3710850 () Bool)

(declare-fun res!1509122 () Bool)

(declare-fun e!2298153 () Bool)

(assert (=> b!3710850 (=> (not res!1509122) (not e!2298153))))

(declare-datatypes ((List!39724 0))(
  ( (Nil!39600) (Cons!39600 (h!45020 C!21872) (t!302407 List!39724)) )
))
(declare-fun tl!3933 () List!39724)

(declare-fun isEmpty!23498 (List!39724) Bool)

(assert (=> b!3710850 (= res!1509122 (isEmpty!23498 tl!3933))))

(declare-fun b!3710851 () Bool)

(declare-fun lt!1296832 () Regex!10843)

(assert (=> b!3710851 (= e!2298153 (not (validRegex!4950 lt!1296832)))))

(declare-fun b!3710852 () Bool)

(declare-fun tp!1129329 () Bool)

(assert (=> b!3710852 (= e!2298155 tp!1129329)))

(declare-fun b!3710853 () Bool)

(declare-fun tp!1129328 () Bool)

(assert (=> b!3710853 (= e!2298156 (and tp_is_empty!18701 tp!1129328))))

(declare-fun b!3710854 () Bool)

(assert (=> b!3710854 (= e!2298155 tp_is_empty!18701)))

(declare-fun b!3710855 () Bool)

(declare-fun res!1509125 () Bool)

(assert (=> b!3710855 (=> (not res!1509125) (not e!2298153))))

(declare-fun c!13576 () C!21872)

(get-info :version)

(assert (=> b!3710855 (= res!1509125 (and (not ((_ is EmptyExpr!10843) r!26326)) (not ((_ is EmptyLang!10843) r!26326)) ((_ is ElementMatch!10843) r!26326) (= c!13576 (c!640987 r!26326)) (= lt!1296832 EmptyExpr!10843)))))

(declare-fun b!3710856 () Bool)

(declare-fun tp!1129331 () Bool)

(declare-fun tp!1129327 () Bool)

(assert (=> b!3710856 (= e!2298155 (and tp!1129331 tp!1129327))))

(declare-fun b!3710857 () Bool)

(declare-fun res!1509126 () Bool)

(assert (=> b!3710857 (=> (not res!1509126) (not e!2298153))))

(declare-fun contains!7936 (List!39724 C!21872) Bool)

(declare-fun usedCharacters!1106 (Regex!10843) List!39724)

(assert (=> b!3710857 (= res!1509126 (contains!7936 (usedCharacters!1106 r!26326) c!13576))))

(declare-fun b!3710858 () Bool)

(assert (=> b!3710858 (= e!2298154 e!2298153)))

(declare-fun res!1509123 () Bool)

(assert (=> b!3710858 (=> (not res!1509123) (not e!2298153))))

(declare-fun nullable!3766 (Regex!10843) Bool)

(declare-fun derivative!357 (Regex!10843 List!39724) Regex!10843)

(assert (=> b!3710858 (= res!1509123 (nullable!3766 (derivative!357 lt!1296832 tl!3933)))))

(declare-fun derivativeStep!3308 (Regex!10843 C!21872) Regex!10843)

(assert (=> b!3710858 (= lt!1296832 (derivativeStep!3308 r!26326 c!13576))))

(assert (= (and start!349870 res!1509124) b!3710858))

(assert (= (and b!3710858 res!1509123) b!3710855))

(assert (= (and b!3710855 res!1509125) b!3710850))

(assert (= (and b!3710850 res!1509122) b!3710857))

(assert (= (and b!3710857 res!1509126) b!3710851))

(assert (= (and start!349870 ((_ is ElementMatch!10843) r!26326)) b!3710854))

(assert (= (and start!349870 ((_ is Concat!17114) r!26326)) b!3710849))

(assert (= (and start!349870 ((_ is Star!10843) r!26326)) b!3710852))

(assert (= (and start!349870 ((_ is Union!10843) r!26326)) b!3710856))

(assert (= (and start!349870 ((_ is Cons!39600) tl!3933)) b!3710853))

(declare-fun m!4218445 () Bool)

(assert (=> b!3710851 m!4218445))

(declare-fun m!4218447 () Bool)

(assert (=> b!3710857 m!4218447))

(assert (=> b!3710857 m!4218447))

(declare-fun m!4218449 () Bool)

(assert (=> b!3710857 m!4218449))

(declare-fun m!4218451 () Bool)

(assert (=> b!3710850 m!4218451))

(declare-fun m!4218453 () Bool)

(assert (=> start!349870 m!4218453))

(declare-fun m!4218455 () Bool)

(assert (=> b!3710858 m!4218455))

(assert (=> b!3710858 m!4218455))

(declare-fun m!4218457 () Bool)

(assert (=> b!3710858 m!4218457))

(declare-fun m!4218459 () Bool)

(assert (=> b!3710858 m!4218459))

(check-sat (not b!3710858) (not start!349870) (not b!3710850) (not b!3710853) (not b!3710852) (not b!3710849) (not b!3710856) (not b!3710857) tp_is_empty!18701 (not b!3710851))
(check-sat)
(get-model)

(declare-fun bm!268314 () Bool)

(declare-fun call!268320 () Bool)

(declare-fun call!268319 () Bool)

(assert (=> bm!268314 (= call!268320 call!268319)))

(declare-fun d!1087101 () Bool)

(declare-fun res!1509137 () Bool)

(declare-fun e!2298174 () Bool)

(assert (=> d!1087101 (=> res!1509137 e!2298174)))

(assert (=> d!1087101 (= res!1509137 ((_ is ElementMatch!10843) r!26326))))

(assert (=> d!1087101 (= (validRegex!4950 r!26326) e!2298174)))

(declare-fun b!3710883 () Bool)

(declare-fun e!2298178 () Bool)

(declare-fun e!2298176 () Bool)

(assert (=> b!3710883 (= e!2298178 e!2298176)))

(declare-fun c!640995 () Bool)

(assert (=> b!3710883 (= c!640995 ((_ is Union!10843) r!26326))))

(declare-fun bm!268315 () Bool)

(declare-fun call!268321 () Bool)

(assert (=> bm!268315 (= call!268321 (validRegex!4950 (ite c!640995 (regTwo!22199 r!26326) (regOne!22198 r!26326))))))

(declare-fun bm!268316 () Bool)

(declare-fun c!640996 () Bool)

(assert (=> bm!268316 (= call!268319 (validRegex!4950 (ite c!640996 (reg!11172 r!26326) (ite c!640995 (regOne!22199 r!26326) (regTwo!22198 r!26326)))))))

(declare-fun b!3710884 () Bool)

(declare-fun e!2298180 () Bool)

(declare-fun e!2298179 () Bool)

(assert (=> b!3710884 (= e!2298180 e!2298179)))

(declare-fun res!1509141 () Bool)

(assert (=> b!3710884 (=> (not res!1509141) (not e!2298179))))

(assert (=> b!3710884 (= res!1509141 call!268321)))

(declare-fun b!3710885 () Bool)

(declare-fun res!1509138 () Bool)

(declare-fun e!2298177 () Bool)

(assert (=> b!3710885 (=> (not res!1509138) (not e!2298177))))

(assert (=> b!3710885 (= res!1509138 call!268320)))

(assert (=> b!3710885 (= e!2298176 e!2298177)))

(declare-fun b!3710886 () Bool)

(assert (=> b!3710886 (= e!2298174 e!2298178)))

(assert (=> b!3710886 (= c!640996 ((_ is Star!10843) r!26326))))

(declare-fun b!3710887 () Bool)

(declare-fun e!2298175 () Bool)

(assert (=> b!3710887 (= e!2298175 call!268319)))

(declare-fun b!3710888 () Bool)

(assert (=> b!3710888 (= e!2298179 call!268320)))

(declare-fun b!3710889 () Bool)

(declare-fun res!1509139 () Bool)

(assert (=> b!3710889 (=> res!1509139 e!2298180)))

(assert (=> b!3710889 (= res!1509139 (not ((_ is Concat!17114) r!26326)))))

(assert (=> b!3710889 (= e!2298176 e!2298180)))

(declare-fun b!3710890 () Bool)

(assert (=> b!3710890 (= e!2298178 e!2298175)))

(declare-fun res!1509140 () Bool)

(assert (=> b!3710890 (= res!1509140 (not (nullable!3766 (reg!11172 r!26326))))))

(assert (=> b!3710890 (=> (not res!1509140) (not e!2298175))))

(declare-fun b!3710891 () Bool)

(assert (=> b!3710891 (= e!2298177 call!268321)))

(assert (= (and d!1087101 (not res!1509137)) b!3710886))

(assert (= (and b!3710886 c!640996) b!3710890))

(assert (= (and b!3710886 (not c!640996)) b!3710883))

(assert (= (and b!3710890 res!1509140) b!3710887))

(assert (= (and b!3710883 c!640995) b!3710885))

(assert (= (and b!3710883 (not c!640995)) b!3710889))

(assert (= (and b!3710885 res!1509138) b!3710891))

(assert (= (and b!3710889 (not res!1509139)) b!3710884))

(assert (= (and b!3710884 res!1509141) b!3710888))

(assert (= (or b!3710891 b!3710884) bm!268315))

(assert (= (or b!3710885 b!3710888) bm!268314))

(assert (= (or b!3710887 bm!268314) bm!268316))

(declare-fun m!4218469 () Bool)

(assert (=> bm!268315 m!4218469))

(declare-fun m!4218471 () Bool)

(assert (=> bm!268316 m!4218471))

(declare-fun m!4218473 () Bool)

(assert (=> b!3710890 m!4218473))

(assert (=> start!349870 d!1087101))

(declare-fun d!1087107 () Bool)

(declare-fun nullableFct!1056 (Regex!10843) Bool)

(assert (=> d!1087107 (= (nullable!3766 (derivative!357 lt!1296832 tl!3933)) (nullableFct!1056 (derivative!357 lt!1296832 tl!3933)))))

(declare-fun bs!574741 () Bool)

(assert (= bs!574741 d!1087107))

(assert (=> bs!574741 m!4218455))

(declare-fun m!4218475 () Bool)

(assert (=> bs!574741 m!4218475))

(assert (=> b!3710858 d!1087107))

(declare-fun d!1087109 () Bool)

(declare-fun lt!1296840 () Regex!10843)

(assert (=> d!1087109 (validRegex!4950 lt!1296840)))

(declare-fun e!2298193 () Regex!10843)

(assert (=> d!1087109 (= lt!1296840 e!2298193)))

(declare-fun c!641009 () Bool)

(assert (=> d!1087109 (= c!641009 ((_ is Cons!39600) tl!3933))))

(assert (=> d!1087109 (validRegex!4950 lt!1296832)))

(assert (=> d!1087109 (= (derivative!357 lt!1296832 tl!3933) lt!1296840)))

(declare-fun b!3710916 () Bool)

(assert (=> b!3710916 (= e!2298193 (derivative!357 (derivativeStep!3308 lt!1296832 (h!45020 tl!3933)) (t!302407 tl!3933)))))

(declare-fun b!3710917 () Bool)

(assert (=> b!3710917 (= e!2298193 lt!1296832)))

(assert (= (and d!1087109 c!641009) b!3710916))

(assert (= (and d!1087109 (not c!641009)) b!3710917))

(declare-fun m!4218477 () Bool)

(assert (=> d!1087109 m!4218477))

(assert (=> d!1087109 m!4218445))

(declare-fun m!4218479 () Bool)

(assert (=> b!3710916 m!4218479))

(assert (=> b!3710916 m!4218479))

(declare-fun m!4218481 () Bool)

(assert (=> b!3710916 m!4218481))

(assert (=> b!3710858 d!1087109))

(declare-fun b!3710975 () Bool)

(declare-fun c!641034 () Bool)

(assert (=> b!3710975 (= c!641034 ((_ is Union!10843) r!26326))))

(declare-fun e!2298230 () Regex!10843)

(declare-fun e!2298234 () Regex!10843)

(assert (=> b!3710975 (= e!2298230 e!2298234)))

(declare-fun b!3710976 () Bool)

(declare-fun e!2298232 () Regex!10843)

(assert (=> b!3710976 (= e!2298232 EmptyLang!10843)))

(declare-fun bm!268346 () Bool)

(declare-fun call!268354 () Regex!10843)

(declare-fun call!268353 () Regex!10843)

(assert (=> bm!268346 (= call!268354 call!268353)))

(declare-fun d!1087111 () Bool)

(declare-fun lt!1296844 () Regex!10843)

(assert (=> d!1087111 (validRegex!4950 lt!1296844)))

(assert (=> d!1087111 (= lt!1296844 e!2298232)))

(declare-fun c!641032 () Bool)

(assert (=> d!1087111 (= c!641032 (or ((_ is EmptyExpr!10843) r!26326) ((_ is EmptyLang!10843) r!26326)))))

(assert (=> d!1087111 (validRegex!4950 r!26326)))

(assert (=> d!1087111 (= (derivativeStep!3308 r!26326 c!13576) lt!1296844)))

(declare-fun b!3710977 () Bool)

(declare-fun c!641033 () Bool)

(assert (=> b!3710977 (= c!641033 (nullable!3766 (regOne!22198 r!26326)))))

(declare-fun e!2298231 () Regex!10843)

(declare-fun e!2298233 () Regex!10843)

(assert (=> b!3710977 (= e!2298231 e!2298233)))

(declare-fun bm!268347 () Bool)

(declare-fun call!268351 () Regex!10843)

(declare-fun call!268352 () Regex!10843)

(assert (=> bm!268347 (= call!268351 call!268352)))

(declare-fun b!3710978 () Bool)

(assert (=> b!3710978 (= e!2298231 (Concat!17114 call!268354 r!26326))))

(declare-fun b!3710979 () Bool)

(assert (=> b!3710979 (= e!2298233 (Union!10843 (Concat!17114 call!268351 (regTwo!22198 r!26326)) EmptyLang!10843))))

(declare-fun bm!268348 () Bool)

(declare-fun c!641035 () Bool)

(assert (=> bm!268348 (= call!268353 (derivativeStep!3308 (ite c!641034 (regTwo!22199 r!26326) (ite c!641035 (reg!11172 r!26326) (regTwo!22198 r!26326))) c!13576))))

(declare-fun bm!268349 () Bool)

(assert (=> bm!268349 (= call!268352 (derivativeStep!3308 (ite c!641034 (regOne!22199 r!26326) (regOne!22198 r!26326)) c!13576))))

(declare-fun b!3710980 () Bool)

(assert (=> b!3710980 (= e!2298230 (ite (= c!13576 (c!640987 r!26326)) EmptyExpr!10843 EmptyLang!10843))))

(declare-fun b!3710981 () Bool)

(assert (=> b!3710981 (= e!2298234 e!2298231)))

(assert (=> b!3710981 (= c!641035 ((_ is Star!10843) r!26326))))

(declare-fun b!3710982 () Bool)

(assert (=> b!3710982 (= e!2298233 (Union!10843 (Concat!17114 call!268351 (regTwo!22198 r!26326)) call!268354))))

(declare-fun b!3710983 () Bool)

(assert (=> b!3710983 (= e!2298234 (Union!10843 call!268352 call!268353))))

(declare-fun b!3710984 () Bool)

(assert (=> b!3710984 (= e!2298232 e!2298230)))

(declare-fun c!641031 () Bool)

(assert (=> b!3710984 (= c!641031 ((_ is ElementMatch!10843) r!26326))))

(assert (= (and d!1087111 c!641032) b!3710976))

(assert (= (and d!1087111 (not c!641032)) b!3710984))

(assert (= (and b!3710984 c!641031) b!3710980))

(assert (= (and b!3710984 (not c!641031)) b!3710975))

(assert (= (and b!3710975 c!641034) b!3710983))

(assert (= (and b!3710975 (not c!641034)) b!3710981))

(assert (= (and b!3710981 c!641035) b!3710978))

(assert (= (and b!3710981 (not c!641035)) b!3710977))

(assert (= (and b!3710977 c!641033) b!3710982))

(assert (= (and b!3710977 (not c!641033)) b!3710979))

(assert (= (or b!3710982 b!3710979) bm!268347))

(assert (= (or b!3710978 b!3710982) bm!268346))

(assert (= (or b!3710983 bm!268346) bm!268348))

(assert (= (or b!3710983 bm!268347) bm!268349))

(declare-fun m!4218497 () Bool)

(assert (=> d!1087111 m!4218497))

(assert (=> d!1087111 m!4218453))

(declare-fun m!4218499 () Bool)

(assert (=> b!3710977 m!4218499))

(declare-fun m!4218501 () Bool)

(assert (=> bm!268348 m!4218501))

(declare-fun m!4218503 () Bool)

(assert (=> bm!268349 m!4218503))

(assert (=> b!3710858 d!1087111))

(declare-fun bm!268353 () Bool)

(declare-fun call!268359 () Bool)

(declare-fun call!268358 () Bool)

(assert (=> bm!268353 (= call!268359 call!268358)))

(declare-fun d!1087119 () Bool)

(declare-fun res!1509162 () Bool)

(declare-fun e!2298242 () Bool)

(assert (=> d!1087119 (=> res!1509162 e!2298242)))

(assert (=> d!1087119 (= res!1509162 ((_ is ElementMatch!10843) lt!1296832))))

(assert (=> d!1087119 (= (validRegex!4950 lt!1296832) e!2298242)))

(declare-fun b!3710994 () Bool)

(declare-fun e!2298246 () Bool)

(declare-fun e!2298244 () Bool)

(assert (=> b!3710994 (= e!2298246 e!2298244)))

(declare-fun c!641038 () Bool)

(assert (=> b!3710994 (= c!641038 ((_ is Union!10843) lt!1296832))))

(declare-fun bm!268354 () Bool)

(declare-fun call!268360 () Bool)

(assert (=> bm!268354 (= call!268360 (validRegex!4950 (ite c!641038 (regTwo!22199 lt!1296832) (regOne!22198 lt!1296832))))))

(declare-fun bm!268355 () Bool)

(declare-fun c!641039 () Bool)

(assert (=> bm!268355 (= call!268358 (validRegex!4950 (ite c!641039 (reg!11172 lt!1296832) (ite c!641038 (regOne!22199 lt!1296832) (regTwo!22198 lt!1296832)))))))

(declare-fun b!3710995 () Bool)

(declare-fun e!2298248 () Bool)

(declare-fun e!2298247 () Bool)

(assert (=> b!3710995 (= e!2298248 e!2298247)))

(declare-fun res!1509166 () Bool)

(assert (=> b!3710995 (=> (not res!1509166) (not e!2298247))))

(assert (=> b!3710995 (= res!1509166 call!268360)))

(declare-fun b!3710996 () Bool)

(declare-fun res!1509163 () Bool)

(declare-fun e!2298245 () Bool)

(assert (=> b!3710996 (=> (not res!1509163) (not e!2298245))))

(assert (=> b!3710996 (= res!1509163 call!268359)))

(assert (=> b!3710996 (= e!2298244 e!2298245)))

(declare-fun b!3710997 () Bool)

(assert (=> b!3710997 (= e!2298242 e!2298246)))

(assert (=> b!3710997 (= c!641039 ((_ is Star!10843) lt!1296832))))

(declare-fun b!3710998 () Bool)

(declare-fun e!2298243 () Bool)

(assert (=> b!3710998 (= e!2298243 call!268358)))

(declare-fun b!3710999 () Bool)

(assert (=> b!3710999 (= e!2298247 call!268359)))

(declare-fun b!3711000 () Bool)

(declare-fun res!1509164 () Bool)

(assert (=> b!3711000 (=> res!1509164 e!2298248)))

(assert (=> b!3711000 (= res!1509164 (not ((_ is Concat!17114) lt!1296832)))))

(assert (=> b!3711000 (= e!2298244 e!2298248)))

(declare-fun b!3711001 () Bool)

(assert (=> b!3711001 (= e!2298246 e!2298243)))

(declare-fun res!1509165 () Bool)

(assert (=> b!3711001 (= res!1509165 (not (nullable!3766 (reg!11172 lt!1296832))))))

(assert (=> b!3711001 (=> (not res!1509165) (not e!2298243))))

(declare-fun b!3711002 () Bool)

(assert (=> b!3711002 (= e!2298245 call!268360)))

(assert (= (and d!1087119 (not res!1509162)) b!3710997))

(assert (= (and b!3710997 c!641039) b!3711001))

(assert (= (and b!3710997 (not c!641039)) b!3710994))

(assert (= (and b!3711001 res!1509165) b!3710998))

(assert (= (and b!3710994 c!641038) b!3710996))

(assert (= (and b!3710994 (not c!641038)) b!3711000))

(assert (= (and b!3710996 res!1509163) b!3711002))

(assert (= (and b!3711000 (not res!1509164)) b!3710995))

(assert (= (and b!3710995 res!1509166) b!3710999))

(assert (= (or b!3711002 b!3710995) bm!268354))

(assert (= (or b!3710996 b!3710999) bm!268353))

(assert (= (or b!3710998 bm!268353) bm!268355))

(declare-fun m!4218511 () Bool)

(assert (=> bm!268354 m!4218511))

(declare-fun m!4218513 () Bool)

(assert (=> bm!268355 m!4218513))

(declare-fun m!4218515 () Bool)

(assert (=> b!3711001 m!4218515))

(assert (=> b!3710851 d!1087119))

(declare-fun d!1087123 () Bool)

(declare-fun lt!1296850 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5727 (List!39724) (InoxSet C!21872))

(assert (=> d!1087123 (= lt!1296850 (select (content!5727 (usedCharacters!1106 r!26326)) c!13576))))

(declare-fun e!2298259 () Bool)

(assert (=> d!1087123 (= lt!1296850 e!2298259)))

(declare-fun res!1509178 () Bool)

(assert (=> d!1087123 (=> (not res!1509178) (not e!2298259))))

(assert (=> d!1087123 (= res!1509178 ((_ is Cons!39600) (usedCharacters!1106 r!26326)))))

(assert (=> d!1087123 (= (contains!7936 (usedCharacters!1106 r!26326) c!13576) lt!1296850)))

(declare-fun b!3711013 () Bool)

(declare-fun e!2298260 () Bool)

(assert (=> b!3711013 (= e!2298259 e!2298260)))

(declare-fun res!1509177 () Bool)

(assert (=> b!3711013 (=> res!1509177 e!2298260)))

(assert (=> b!3711013 (= res!1509177 (= (h!45020 (usedCharacters!1106 r!26326)) c!13576))))

(declare-fun b!3711014 () Bool)

(assert (=> b!3711014 (= e!2298260 (contains!7936 (t!302407 (usedCharacters!1106 r!26326)) c!13576))))

(assert (= (and d!1087123 res!1509178) b!3711013))

(assert (= (and b!3711013 (not res!1509177)) b!3711014))

(assert (=> d!1087123 m!4218447))

(declare-fun m!4218523 () Bool)

(assert (=> d!1087123 m!4218523))

(declare-fun m!4218525 () Bool)

(assert (=> d!1087123 m!4218525))

(declare-fun m!4218527 () Bool)

(assert (=> b!3711014 m!4218527))

(assert (=> b!3710857 d!1087123))

(declare-fun bm!268376 () Bool)

(declare-fun call!268384 () List!39724)

(declare-fun call!268382 () List!39724)

(assert (=> bm!268376 (= call!268384 call!268382)))

(declare-fun b!3711055 () Bool)

(declare-fun c!641061 () Bool)

(assert (=> b!3711055 (= c!641061 ((_ is Star!10843) r!26326))))

(declare-fun e!2298282 () List!39724)

(declare-fun e!2298284 () List!39724)

(assert (=> b!3711055 (= e!2298282 e!2298284)))

(declare-fun b!3711056 () Bool)

(assert (=> b!3711056 (= e!2298282 (Cons!39600 (c!640987 r!26326) Nil!39600))))

(declare-fun b!3711057 () Bool)

(declare-fun e!2298283 () List!39724)

(assert (=> b!3711057 (= e!2298284 e!2298283)))

(declare-fun c!641060 () Bool)

(assert (=> b!3711057 (= c!641060 ((_ is Union!10843) r!26326))))

(declare-fun b!3711058 () Bool)

(declare-fun e!2298281 () List!39724)

(assert (=> b!3711058 (= e!2298281 Nil!39600)))

(declare-fun b!3711059 () Bool)

(assert (=> b!3711059 (= e!2298284 call!268382)))

(declare-fun d!1087127 () Bool)

(declare-fun c!641063 () Bool)

(assert (=> d!1087127 (= c!641063 (or ((_ is EmptyExpr!10843) r!26326) ((_ is EmptyLang!10843) r!26326)))))

(assert (=> d!1087127 (= (usedCharacters!1106 r!26326) e!2298281)))

(declare-fun bm!268377 () Bool)

(declare-fun call!268383 () List!39724)

(assert (=> bm!268377 (= call!268383 (usedCharacters!1106 (ite c!641060 (regTwo!22199 r!26326) (regTwo!22198 r!26326))))))

(declare-fun b!3711060 () Bool)

(assert (=> b!3711060 (= e!2298281 e!2298282)))

(declare-fun c!641062 () Bool)

(assert (=> b!3711060 (= c!641062 ((_ is ElementMatch!10843) r!26326))))

(declare-fun bm!268378 () Bool)

(assert (=> bm!268378 (= call!268382 (usedCharacters!1106 (ite c!641061 (reg!11172 r!26326) (ite c!641060 (regOne!22199 r!26326) (regOne!22198 r!26326)))))))

(declare-fun b!3711061 () Bool)

(declare-fun call!268381 () List!39724)

(assert (=> b!3711061 (= e!2298283 call!268381)))

(declare-fun bm!268379 () Bool)

(declare-fun ++!9790 (List!39724 List!39724) List!39724)

(assert (=> bm!268379 (= call!268381 (++!9790 call!268384 call!268383))))

(declare-fun b!3711062 () Bool)

(assert (=> b!3711062 (= e!2298283 call!268381)))

(assert (= (and d!1087127 c!641063) b!3711058))

(assert (= (and d!1087127 (not c!641063)) b!3711060))

(assert (= (and b!3711060 c!641062) b!3711056))

(assert (= (and b!3711060 (not c!641062)) b!3711055))

(assert (= (and b!3711055 c!641061) b!3711059))

(assert (= (and b!3711055 (not c!641061)) b!3711057))

(assert (= (and b!3711057 c!641060) b!3711061))

(assert (= (and b!3711057 (not c!641060)) b!3711062))

(assert (= (or b!3711061 b!3711062) bm!268376))

(assert (= (or b!3711061 b!3711062) bm!268377))

(assert (= (or b!3711061 b!3711062) bm!268379))

(assert (= (or b!3711059 bm!268376) bm!268378))

(declare-fun m!4218535 () Bool)

(assert (=> bm!268377 m!4218535))

(declare-fun m!4218537 () Bool)

(assert (=> bm!268378 m!4218537))

(declare-fun m!4218539 () Bool)

(assert (=> bm!268379 m!4218539))

(assert (=> b!3710857 d!1087127))

(declare-fun d!1087129 () Bool)

(assert (=> d!1087129 (= (isEmpty!23498 tl!3933) ((_ is Nil!39600) tl!3933))))

(assert (=> b!3710850 d!1087129))

(declare-fun b!3711109 () Bool)

(declare-fun e!2298297 () Bool)

(declare-fun tp!1129385 () Bool)

(declare-fun tp!1129383 () Bool)

(assert (=> b!3711109 (= e!2298297 (and tp!1129385 tp!1129383))))

(declare-fun b!3711111 () Bool)

(declare-fun tp!1129381 () Bool)

(declare-fun tp!1129384 () Bool)

(assert (=> b!3711111 (= e!2298297 (and tp!1129381 tp!1129384))))

(declare-fun b!3711110 () Bool)

(declare-fun tp!1129382 () Bool)

(assert (=> b!3711110 (= e!2298297 tp!1129382)))

(declare-fun b!3711108 () Bool)

(assert (=> b!3711108 (= e!2298297 tp_is_empty!18701)))

(assert (=> b!3710849 (= tp!1129330 e!2298297)))

(assert (= (and b!3710849 ((_ is ElementMatch!10843) (regOne!22198 r!26326))) b!3711108))

(assert (= (and b!3710849 ((_ is Concat!17114) (regOne!22198 r!26326))) b!3711109))

(assert (= (and b!3710849 ((_ is Star!10843) (regOne!22198 r!26326))) b!3711110))

(assert (= (and b!3710849 ((_ is Union!10843) (regOne!22198 r!26326))) b!3711111))

(declare-fun b!3711113 () Bool)

(declare-fun e!2298298 () Bool)

(declare-fun tp!1129390 () Bool)

(declare-fun tp!1129388 () Bool)

(assert (=> b!3711113 (= e!2298298 (and tp!1129390 tp!1129388))))

(declare-fun b!3711115 () Bool)

(declare-fun tp!1129386 () Bool)

(declare-fun tp!1129389 () Bool)

(assert (=> b!3711115 (= e!2298298 (and tp!1129386 tp!1129389))))

(declare-fun b!3711114 () Bool)

(declare-fun tp!1129387 () Bool)

(assert (=> b!3711114 (= e!2298298 tp!1129387)))

(declare-fun b!3711112 () Bool)

(assert (=> b!3711112 (= e!2298298 tp_is_empty!18701)))

(assert (=> b!3710849 (= tp!1129332 e!2298298)))

(assert (= (and b!3710849 ((_ is ElementMatch!10843) (regTwo!22198 r!26326))) b!3711112))

(assert (= (and b!3710849 ((_ is Concat!17114) (regTwo!22198 r!26326))) b!3711113))

(assert (= (and b!3710849 ((_ is Star!10843) (regTwo!22198 r!26326))) b!3711114))

(assert (= (and b!3710849 ((_ is Union!10843) (regTwo!22198 r!26326))) b!3711115))

(declare-fun b!3711117 () Bool)

(declare-fun e!2298299 () Bool)

(declare-fun tp!1129395 () Bool)

(declare-fun tp!1129393 () Bool)

(assert (=> b!3711117 (= e!2298299 (and tp!1129395 tp!1129393))))

(declare-fun b!3711119 () Bool)

(declare-fun tp!1129391 () Bool)

(declare-fun tp!1129394 () Bool)

(assert (=> b!3711119 (= e!2298299 (and tp!1129391 tp!1129394))))

(declare-fun b!3711118 () Bool)

(declare-fun tp!1129392 () Bool)

(assert (=> b!3711118 (= e!2298299 tp!1129392)))

(declare-fun b!3711116 () Bool)

(assert (=> b!3711116 (= e!2298299 tp_is_empty!18701)))

(assert (=> b!3710852 (= tp!1129329 e!2298299)))

(assert (= (and b!3710852 ((_ is ElementMatch!10843) (reg!11172 r!26326))) b!3711116))

(assert (= (and b!3710852 ((_ is Concat!17114) (reg!11172 r!26326))) b!3711117))

(assert (= (and b!3710852 ((_ is Star!10843) (reg!11172 r!26326))) b!3711118))

(assert (= (and b!3710852 ((_ is Union!10843) (reg!11172 r!26326))) b!3711119))

(declare-fun b!3711124 () Bool)

(declare-fun e!2298302 () Bool)

(declare-fun tp!1129398 () Bool)

(assert (=> b!3711124 (= e!2298302 (and tp_is_empty!18701 tp!1129398))))

(assert (=> b!3710853 (= tp!1129328 e!2298302)))

(assert (= (and b!3710853 ((_ is Cons!39600) (t!302407 tl!3933))) b!3711124))

(declare-fun b!3711126 () Bool)

(declare-fun e!2298303 () Bool)

(declare-fun tp!1129403 () Bool)

(declare-fun tp!1129401 () Bool)

(assert (=> b!3711126 (= e!2298303 (and tp!1129403 tp!1129401))))

(declare-fun b!3711128 () Bool)

(declare-fun tp!1129399 () Bool)

(declare-fun tp!1129402 () Bool)

(assert (=> b!3711128 (= e!2298303 (and tp!1129399 tp!1129402))))

(declare-fun b!3711127 () Bool)

(declare-fun tp!1129400 () Bool)

(assert (=> b!3711127 (= e!2298303 tp!1129400)))

(declare-fun b!3711125 () Bool)

(assert (=> b!3711125 (= e!2298303 tp_is_empty!18701)))

(assert (=> b!3710856 (= tp!1129331 e!2298303)))

(assert (= (and b!3710856 ((_ is ElementMatch!10843) (regOne!22199 r!26326))) b!3711125))

(assert (= (and b!3710856 ((_ is Concat!17114) (regOne!22199 r!26326))) b!3711126))

(assert (= (and b!3710856 ((_ is Star!10843) (regOne!22199 r!26326))) b!3711127))

(assert (= (and b!3710856 ((_ is Union!10843) (regOne!22199 r!26326))) b!3711128))

(declare-fun b!3711130 () Bool)

(declare-fun e!2298304 () Bool)

(declare-fun tp!1129408 () Bool)

(declare-fun tp!1129406 () Bool)

(assert (=> b!3711130 (= e!2298304 (and tp!1129408 tp!1129406))))

(declare-fun b!3711132 () Bool)

(declare-fun tp!1129404 () Bool)

(declare-fun tp!1129407 () Bool)

(assert (=> b!3711132 (= e!2298304 (and tp!1129404 tp!1129407))))

(declare-fun b!3711131 () Bool)

(declare-fun tp!1129405 () Bool)

(assert (=> b!3711131 (= e!2298304 tp!1129405)))

(declare-fun b!3711129 () Bool)

(assert (=> b!3711129 (= e!2298304 tp_is_empty!18701)))

(assert (=> b!3710856 (= tp!1129327 e!2298304)))

(assert (= (and b!3710856 ((_ is ElementMatch!10843) (regTwo!22199 r!26326))) b!3711129))

(assert (= (and b!3710856 ((_ is Concat!17114) (regTwo!22199 r!26326))) b!3711130))

(assert (= (and b!3710856 ((_ is Star!10843) (regTwo!22199 r!26326))) b!3711131))

(assert (= (and b!3710856 ((_ is Union!10843) (regTwo!22199 r!26326))) b!3711132))

(check-sat (not b!3710890) (not b!3711131) (not b!3711124) (not b!3710916) (not b!3711132) (not b!3711127) (not d!1087111) (not bm!268355) (not d!1087109) (not bm!268379) (not bm!268348) (not bm!268316) (not b!3711126) (not b!3711109) (not b!3711014) (not d!1087123) (not bm!268315) (not bm!268377) (not bm!268349) (not b!3711115) (not d!1087107) (not b!3710977) tp_is_empty!18701 (not b!3711119) (not bm!268378) (not bm!268354) (not b!3711118) (not b!3711001) (not b!3711128) (not b!3711113) (not b!3711114) (not b!3711111) (not b!3711130) (not b!3711110) (not b!3711117))
(check-sat)
