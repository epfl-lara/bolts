; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664162 () Bool)

(assert start!664162)

(declare-fun b!6888290 () Bool)

(assert (=> b!6888290 true))

(assert (=> b!6888290 true))

(assert (=> b!6888290 true))

(declare-fun lambda!390351 () Int)

(declare-fun lambda!390350 () Int)

(assert (=> b!6888290 (not (= lambda!390351 lambda!390350))))

(assert (=> b!6888290 true))

(assert (=> b!6888290 true))

(assert (=> b!6888290 true))

(declare-fun bs!1839124 () Bool)

(declare-fun b!6888310 () Bool)

(assert (= bs!1839124 (and b!6888310 b!6888290)))

(declare-datatypes ((C!33872 0))(
  ( (C!33873 (val!26638 Int)) )
))
(declare-datatypes ((Regex!16801 0))(
  ( (ElementMatch!16801 (c!1280805 C!33872)) (Concat!25646 (regOne!34114 Regex!16801) (regTwo!34114 Regex!16801)) (EmptyExpr!16801) (Star!16801 (reg!17130 Regex!16801)) (EmptyLang!16801) (Union!16801 (regOne!34115 Regex!16801) (regTwo!34115 Regex!16801)) )
))
(declare-fun r1!6342 () Regex!16801)

(declare-fun r3!135 () Regex!16801)

(declare-datatypes ((List!66558 0))(
  ( (Nil!66434) (Cons!66434 (h!72882 C!33872) (t!380301 List!66558)) )
))
(declare-fun s!14361 () List!66558)

(declare-datatypes ((tuple2!67348 0))(
  ( (tuple2!67349 (_1!36977 List!66558) (_2!36977 List!66558)) )
))
(declare-fun lt!2462187 () tuple2!67348)

(declare-fun lambda!390352 () Int)

(declare-fun lt!2462214 () Regex!16801)

(declare-fun r2!6280 () Regex!16801)

(assert (=> bs!1839124 (= (and (= (_1!36977 lt!2462187) s!14361) (= r1!6342 lt!2462214) (= r2!6280 r3!135)) (= lambda!390352 lambda!390350))))

(assert (=> bs!1839124 (not (= lambda!390352 lambda!390351))))

(assert (=> b!6888310 true))

(assert (=> b!6888310 true))

(assert (=> b!6888310 true))

(declare-fun lambda!390353 () Int)

(assert (=> bs!1839124 (not (= lambda!390353 lambda!390350))))

(assert (=> bs!1839124 (= (and (= (_1!36977 lt!2462187) s!14361) (= r1!6342 lt!2462214) (= r2!6280 r3!135)) (= lambda!390353 lambda!390351))))

(assert (=> b!6888310 (not (= lambda!390353 lambda!390352))))

(assert (=> b!6888310 true))

(assert (=> b!6888310 true))

(assert (=> b!6888310 true))

(declare-fun bs!1839125 () Bool)

(declare-fun b!6888293 () Bool)

(assert (= bs!1839125 (and b!6888293 b!6888290)))

(declare-fun lambda!390354 () Int)

(declare-fun lt!2462192 () List!66558)

(assert (=> bs!1839125 (= (and (= lt!2462192 s!14361) (= r2!6280 lt!2462214)) (= lambda!390354 lambda!390350))))

(assert (=> bs!1839125 (not (= lambda!390354 lambda!390351))))

(declare-fun bs!1839126 () Bool)

(assert (= bs!1839126 (and b!6888293 b!6888310)))

(assert (=> bs!1839126 (= (and (= lt!2462192 (_1!36977 lt!2462187)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390354 lambda!390352))))

(assert (=> bs!1839126 (not (= lambda!390354 lambda!390353))))

(assert (=> b!6888293 true))

(assert (=> b!6888293 true))

(assert (=> b!6888293 true))

(declare-fun lambda!390355 () Int)

(assert (=> bs!1839126 (not (= lambda!390355 lambda!390352))))

(assert (=> bs!1839126 (= (and (= lt!2462192 (_1!36977 lt!2462187)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!390355 lambda!390353))))

(assert (=> bs!1839125 (= (and (= lt!2462192 s!14361) (= r2!6280 lt!2462214)) (= lambda!390355 lambda!390351))))

(assert (=> bs!1839125 (not (= lambda!390355 lambda!390350))))

(assert (=> b!6888293 (not (= lambda!390355 lambda!390354))))

(assert (=> b!6888293 true))

(assert (=> b!6888293 true))

(assert (=> b!6888293 true))

(declare-fun bs!1839127 () Bool)

(declare-fun b!6888291 () Bool)

(assert (= bs!1839127 (and b!6888291 b!6888293)))

(declare-fun lambda!390356 () Int)

(assert (=> bs!1839127 (not (= lambda!390356 lambda!390355))))

(declare-fun bs!1839128 () Bool)

(assert (= bs!1839128 (and b!6888291 b!6888310)))

(declare-fun lt!2462186 () Regex!16801)

(assert (=> bs!1839128 (= (and (= s!14361 (_1!36977 lt!2462187)) (= lt!2462186 r2!6280)) (= lambda!390356 lambda!390352))))

(assert (=> bs!1839128 (not (= lambda!390356 lambda!390353))))

(declare-fun bs!1839129 () Bool)

(assert (= bs!1839129 (and b!6888291 b!6888290)))

(assert (=> bs!1839129 (not (= lambda!390356 lambda!390351))))

(assert (=> bs!1839129 (= (and (= r1!6342 lt!2462214) (= lt!2462186 r3!135)) (= lambda!390356 lambda!390350))))

(assert (=> bs!1839127 (= (and (= s!14361 lt!2462192) (= r1!6342 r2!6280) (= lt!2462186 r3!135)) (= lambda!390356 lambda!390354))))

(assert (=> b!6888291 true))

(assert (=> b!6888291 true))

(assert (=> b!6888291 true))

(declare-fun e!4149983 () Bool)

(declare-fun e!4149980 () Bool)

(assert (=> b!6888290 (= e!4149983 e!4149980)))

(declare-fun res!2808348 () Bool)

(assert (=> b!6888290 (=> res!2808348 e!4149980)))

(declare-fun lt!2462206 () Bool)

(assert (=> b!6888290 (= res!2808348 (not lt!2462206))))

(declare-fun matchRSpec!3864 (Regex!16801 List!66558) Bool)

(assert (=> b!6888290 (= lt!2462206 (matchRSpec!3864 lt!2462214 (_1!36977 lt!2462187)))))

(declare-fun matchR!8946 (Regex!16801 List!66558) Bool)

(assert (=> b!6888290 (= lt!2462206 (matchR!8946 lt!2462214 (_1!36977 lt!2462187)))))

(declare-datatypes ((Unit!160322 0))(
  ( (Unit!160323) )
))
(declare-fun lt!2462196 () Unit!160322)

(declare-fun mainMatchTheorem!3864 (Regex!16801 List!66558) Unit!160322)

(assert (=> b!6888290 (= lt!2462196 (mainMatchTheorem!3864 lt!2462214 (_1!36977 lt!2462187)))))

(declare-datatypes ((Option!16586 0))(
  ( (None!16585) (Some!16585 (v!52857 tuple2!67348)) )
))
(declare-fun lt!2462189 () Option!16586)

(declare-fun get!23164 (Option!16586) tuple2!67348)

(assert (=> b!6888290 (= lt!2462187 (get!23164 lt!2462189))))

(declare-fun Exists!3813 (Int) Bool)

(assert (=> b!6888290 (= (Exists!3813 lambda!390350) (Exists!3813 lambda!390351))))

(declare-fun lt!2462185 () Unit!160322)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2292 (Regex!16801 Regex!16801 List!66558) Unit!160322)

(assert (=> b!6888290 (= lt!2462185 (lemmaExistCutMatchRandMatchRSpecEquivalent!2292 lt!2462214 r3!135 s!14361))))

(declare-fun isDefined!13289 (Option!16586) Bool)

(assert (=> b!6888290 (= (isDefined!13289 lt!2462189) (Exists!3813 lambda!390350))))

(declare-fun findConcatSeparation!3000 (Regex!16801 Regex!16801 List!66558 List!66558 List!66558) Option!16586)

(assert (=> b!6888290 (= lt!2462189 (findConcatSeparation!3000 lt!2462214 r3!135 Nil!66434 s!14361 s!14361))))

(declare-fun lt!2462194 () Unit!160322)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2764 (Regex!16801 Regex!16801 List!66558) Unit!160322)

(assert (=> b!6888290 (= lt!2462194 (lemmaFindConcatSeparationEquivalentToExists!2764 lt!2462214 r3!135 s!14361))))

(declare-fun e!4149986 () Bool)

(assert (=> b!6888291 (= e!4149986 true)))

(assert (=> b!6888291 (Exists!3813 lambda!390356)))

(declare-fun lt!2462201 () Unit!160322)

(assert (=> b!6888291 (= lt!2462201 (lemmaFindConcatSeparationEquivalentToExists!2764 r1!6342 lt!2462186 s!14361))))

(assert (=> b!6888291 (isDefined!13289 (findConcatSeparation!3000 r1!6342 lt!2462186 Nil!66434 s!14361 s!14361))))

(declare-fun lt!2462208 () Unit!160322)

(declare-fun lt!2462190 () tuple2!67348)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!48 (Regex!16801 Regex!16801 List!66558 List!66558 List!66558 List!66558 List!66558) Unit!160322)

(assert (=> b!6888291 (= lt!2462208 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!48 r1!6342 lt!2462186 (_1!36977 lt!2462190) lt!2462192 s!14361 Nil!66434 s!14361))))

(declare-fun b!6888292 () Bool)

(declare-fun e!4149984 () Bool)

(declare-fun tp!1895194 () Bool)

(declare-fun tp!1895206 () Bool)

(assert (=> b!6888292 (= e!4149984 (and tp!1895194 tp!1895206))))

(declare-fun e!4149978 () Bool)

(declare-fun e!4149976 () Bool)

(assert (=> b!6888293 (= e!4149978 e!4149976)))

(declare-fun res!2808345 () Bool)

(assert (=> b!6888293 (=> res!2808345 e!4149976)))

(declare-fun lt!2462202 () Bool)

(assert (=> b!6888293 (= res!2808345 (not lt!2462202))))

(declare-fun lt!2462188 () Bool)

(assert (=> b!6888293 lt!2462188))

(declare-fun lt!2462209 () Unit!160322)

(assert (=> b!6888293 (= lt!2462209 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!48 r2!6280 r3!135 (_2!36977 lt!2462190) (_2!36977 lt!2462187) lt!2462192 Nil!66434 lt!2462192))))

(assert (=> b!6888293 (= (Exists!3813 lambda!390354) (Exists!3813 lambda!390355))))

(declare-fun lt!2462204 () Unit!160322)

(assert (=> b!6888293 (= lt!2462204 (lemmaExistCutMatchRandMatchRSpecEquivalent!2292 r2!6280 r3!135 lt!2462192))))

(assert (=> b!6888293 (= lt!2462188 (Exists!3813 lambda!390354))))

(assert (=> b!6888293 (= lt!2462188 (isDefined!13289 (findConcatSeparation!3000 r2!6280 r3!135 Nil!66434 lt!2462192 lt!2462192)))))

(declare-fun lt!2462200 () Unit!160322)

(assert (=> b!6888293 (= lt!2462200 (lemmaFindConcatSeparationEquivalentToExists!2764 r2!6280 r3!135 lt!2462192))))

(assert (=> b!6888293 (= lt!2462202 (matchRSpec!3864 lt!2462186 lt!2462192))))

(assert (=> b!6888293 (= lt!2462202 (matchR!8946 lt!2462186 lt!2462192))))

(declare-fun lt!2462191 () Unit!160322)

(assert (=> b!6888293 (= lt!2462191 (mainMatchTheorem!3864 lt!2462186 lt!2462192))))

(declare-fun ++!14880 (List!66558 List!66558) List!66558)

(assert (=> b!6888293 (= lt!2462192 (++!14880 (_2!36977 lt!2462190) (_2!36977 lt!2462187)))))

(declare-fun b!6888294 () Bool)

(declare-fun tp!1895197 () Bool)

(declare-fun tp!1895192 () Bool)

(assert (=> b!6888294 (= e!4149984 (and tp!1895197 tp!1895192))))

(declare-fun b!6888295 () Bool)

(declare-fun e!4149981 () Bool)

(declare-fun tp!1895200 () Bool)

(declare-fun tp!1895202 () Bool)

(assert (=> b!6888295 (= e!4149981 (and tp!1895200 tp!1895202))))

(declare-fun b!6888296 () Bool)

(declare-fun tp_is_empty!42827 () Bool)

(assert (=> b!6888296 (= e!4149981 tp_is_empty!42827)))

(declare-fun b!6888297 () Bool)

(declare-fun tp!1895196 () Bool)

(declare-fun tp!1895203 () Bool)

(assert (=> b!6888297 (= e!4149981 (and tp!1895196 tp!1895203))))

(declare-fun b!6888298 () Bool)

(assert (=> b!6888298 (= e!4149976 e!4149986)))

(declare-fun res!2808344 () Bool)

(assert (=> b!6888298 (=> res!2808344 e!4149986)))

(declare-fun lt!2462207 () List!66558)

(assert (=> b!6888298 (= res!2808344 (not (= lt!2462207 s!14361)))))

(declare-fun lt!2462215 () List!66558)

(assert (=> b!6888298 (= lt!2462215 lt!2462207)))

(assert (=> b!6888298 (= lt!2462207 (++!14880 (_1!36977 lt!2462190) lt!2462192))))

(declare-fun lt!2462203 () Unit!160322)

(declare-fun lemmaConcatAssociativity!2972 (List!66558 List!66558 List!66558) Unit!160322)

(assert (=> b!6888298 (= lt!2462203 (lemmaConcatAssociativity!2972 (_1!36977 lt!2462190) (_2!36977 lt!2462190) (_2!36977 lt!2462187)))))

(declare-fun b!6888299 () Bool)

(declare-fun e!4149985 () Bool)

(declare-fun tp!1895205 () Bool)

(declare-fun tp!1895198 () Bool)

(assert (=> b!6888299 (= e!4149985 (and tp!1895205 tp!1895198))))

(declare-fun b!6888300 () Bool)

(declare-fun res!2808346 () Bool)

(assert (=> b!6888300 (=> res!2808346 e!4149980)))

(assert (=> b!6888300 (= res!2808346 (not (matchR!8946 r3!135 (_2!36977 lt!2462187))))))

(declare-fun b!6888301 () Bool)

(declare-fun tp!1895207 () Bool)

(assert (=> b!6888301 (= e!4149981 tp!1895207)))

(declare-fun b!6888303 () Bool)

(declare-fun res!2808349 () Bool)

(declare-fun e!4149979 () Bool)

(assert (=> b!6888303 (=> (not res!2808349) (not e!4149979))))

(declare-fun validRegex!8509 (Regex!16801) Bool)

(assert (=> b!6888303 (= res!2808349 (validRegex!8509 r3!135))))

(declare-fun b!6888304 () Bool)

(declare-fun res!2808351 () Bool)

(assert (=> b!6888304 (=> (not res!2808351) (not e!4149979))))

(assert (=> b!6888304 (= res!2808351 (validRegex!8509 r2!6280))))

(declare-fun b!6888305 () Bool)

(declare-fun e!4149982 () Bool)

(declare-fun tp!1895195 () Bool)

(assert (=> b!6888305 (= e!4149982 (and tp_is_empty!42827 tp!1895195))))

(declare-fun b!6888306 () Bool)

(declare-fun res!2808350 () Bool)

(declare-fun e!4149977 () Bool)

(assert (=> b!6888306 (=> res!2808350 e!4149977)))

(assert (=> b!6888306 (= res!2808350 (not (matchR!8946 r2!6280 (_2!36977 lt!2462190))))))

(declare-fun b!6888307 () Bool)

(assert (=> b!6888307 (= e!4149977 e!4149978)))

(declare-fun res!2808353 () Bool)

(assert (=> b!6888307 (=> res!2808353 e!4149978)))

(assert (=> b!6888307 (= res!2808353 (not (= lt!2462215 s!14361)))))

(assert (=> b!6888307 (= lt!2462215 (++!14880 (++!14880 (_1!36977 lt!2462190) (_2!36977 lt!2462190)) (_2!36977 lt!2462187)))))

(assert (=> b!6888307 (matchRSpec!3864 r2!6280 (_2!36977 lt!2462190))))

(declare-fun lt!2462197 () Unit!160322)

(assert (=> b!6888307 (= lt!2462197 (mainMatchTheorem!3864 r2!6280 (_2!36977 lt!2462190)))))

(assert (=> b!6888307 (matchRSpec!3864 r1!6342 (_1!36977 lt!2462190))))

(declare-fun lt!2462199 () Unit!160322)

(assert (=> b!6888307 (= lt!2462199 (mainMatchTheorem!3864 r1!6342 (_1!36977 lt!2462190)))))

(declare-fun b!6888308 () Bool)

(assert (=> b!6888308 (= e!4149984 tp_is_empty!42827)))

(declare-fun b!6888309 () Bool)

(declare-fun tp!1895201 () Bool)

(assert (=> b!6888309 (= e!4149984 tp!1895201)))

(assert (=> b!6888310 (= e!4149980 e!4149977)))

(declare-fun res!2808352 () Bool)

(assert (=> b!6888310 (=> res!2808352 e!4149977)))

(assert (=> b!6888310 (= res!2808352 (not (matchR!8946 r1!6342 (_1!36977 lt!2462190))))))

(declare-fun lt!2462193 () Option!16586)

(assert (=> b!6888310 (= lt!2462190 (get!23164 lt!2462193))))

(assert (=> b!6888310 (= (Exists!3813 lambda!390352) (Exists!3813 lambda!390353))))

(declare-fun lt!2462212 () Unit!160322)

(assert (=> b!6888310 (= lt!2462212 (lemmaExistCutMatchRandMatchRSpecEquivalent!2292 r1!6342 r2!6280 (_1!36977 lt!2462187)))))

(assert (=> b!6888310 (= (isDefined!13289 lt!2462193) (Exists!3813 lambda!390352))))

(assert (=> b!6888310 (= lt!2462193 (findConcatSeparation!3000 r1!6342 r2!6280 Nil!66434 (_1!36977 lt!2462187) (_1!36977 lt!2462187)))))

(declare-fun lt!2462195 () Unit!160322)

(assert (=> b!6888310 (= lt!2462195 (lemmaFindConcatSeparationEquivalentToExists!2764 r1!6342 r2!6280 (_1!36977 lt!2462187)))))

(declare-fun b!6888311 () Bool)

(assert (=> b!6888311 (= e!4149985 tp_is_empty!42827)))

(declare-fun b!6888312 () Bool)

(declare-fun tp!1895193 () Bool)

(assert (=> b!6888312 (= e!4149985 tp!1895193)))

(declare-fun b!6888313 () Bool)

(assert (=> b!6888313 (= e!4149979 (not e!4149983))))

(declare-fun res!2808347 () Bool)

(assert (=> b!6888313 (=> res!2808347 e!4149983)))

(declare-fun lt!2462210 () Bool)

(assert (=> b!6888313 (= res!2808347 (not lt!2462210))))

(declare-fun lt!2462213 () Regex!16801)

(assert (=> b!6888313 (= (matchR!8946 lt!2462213 s!14361) (matchRSpec!3864 lt!2462213 s!14361))))

(declare-fun lt!2462211 () Unit!160322)

(assert (=> b!6888313 (= lt!2462211 (mainMatchTheorem!3864 lt!2462213 s!14361))))

(declare-fun lt!2462205 () Regex!16801)

(assert (=> b!6888313 (= lt!2462210 (matchRSpec!3864 lt!2462205 s!14361))))

(assert (=> b!6888313 (= lt!2462210 (matchR!8946 lt!2462205 s!14361))))

(declare-fun lt!2462198 () Unit!160322)

(assert (=> b!6888313 (= lt!2462198 (mainMatchTheorem!3864 lt!2462205 s!14361))))

(assert (=> b!6888313 (= lt!2462213 (Concat!25646 r1!6342 lt!2462186))))

(assert (=> b!6888313 (= lt!2462186 (Concat!25646 r2!6280 r3!135))))

(assert (=> b!6888313 (= lt!2462205 (Concat!25646 lt!2462214 r3!135))))

(assert (=> b!6888313 (= lt!2462214 (Concat!25646 r1!6342 r2!6280))))

(declare-fun b!6888302 () Bool)

(declare-fun tp!1895204 () Bool)

(declare-fun tp!1895199 () Bool)

(assert (=> b!6888302 (= e!4149985 (and tp!1895204 tp!1895199))))

(declare-fun res!2808354 () Bool)

(assert (=> start!664162 (=> (not res!2808354) (not e!4149979))))

(assert (=> start!664162 (= res!2808354 (validRegex!8509 r1!6342))))

(assert (=> start!664162 e!4149979))

(assert (=> start!664162 e!4149984))

(assert (=> start!664162 e!4149985))

(assert (=> start!664162 e!4149981))

(assert (=> start!664162 e!4149982))

(assert (= (and start!664162 res!2808354) b!6888304))

(assert (= (and b!6888304 res!2808351) b!6888303))

(assert (= (and b!6888303 res!2808349) b!6888313))

(assert (= (and b!6888313 (not res!2808347)) b!6888290))

(assert (= (and b!6888290 (not res!2808348)) b!6888300))

(assert (= (and b!6888300 (not res!2808346)) b!6888310))

(assert (= (and b!6888310 (not res!2808352)) b!6888306))

(assert (= (and b!6888306 (not res!2808350)) b!6888307))

(assert (= (and b!6888307 (not res!2808353)) b!6888293))

(assert (= (and b!6888293 (not res!2808345)) b!6888298))

(assert (= (and b!6888298 (not res!2808344)) b!6888291))

(get-info :version)

(assert (= (and start!664162 ((_ is ElementMatch!16801) r1!6342)) b!6888308))

(assert (= (and start!664162 ((_ is Concat!25646) r1!6342)) b!6888294))

(assert (= (and start!664162 ((_ is Star!16801) r1!6342)) b!6888309))

(assert (= (and start!664162 ((_ is Union!16801) r1!6342)) b!6888292))

(assert (= (and start!664162 ((_ is ElementMatch!16801) r2!6280)) b!6888311))

(assert (= (and start!664162 ((_ is Concat!25646) r2!6280)) b!6888302))

(assert (= (and start!664162 ((_ is Star!16801) r2!6280)) b!6888312))

(assert (= (and start!664162 ((_ is Union!16801) r2!6280)) b!6888299))

(assert (= (and start!664162 ((_ is ElementMatch!16801) r3!135)) b!6888296))

(assert (= (and start!664162 ((_ is Concat!25646) r3!135)) b!6888295))

(assert (= (and start!664162 ((_ is Star!16801) r3!135)) b!6888301))

(assert (= (and start!664162 ((_ is Union!16801) r3!135)) b!6888297))

(assert (= (and start!664162 ((_ is Cons!66434) s!14361)) b!6888305))

(declare-fun m!7610798 () Bool)

(assert (=> b!6888291 m!7610798))

(declare-fun m!7610800 () Bool)

(assert (=> b!6888291 m!7610800))

(assert (=> b!6888291 m!7610798))

(declare-fun m!7610802 () Bool)

(assert (=> b!6888291 m!7610802))

(declare-fun m!7610804 () Bool)

(assert (=> b!6888291 m!7610804))

(declare-fun m!7610806 () Bool)

(assert (=> b!6888291 m!7610806))

(declare-fun m!7610808 () Bool)

(assert (=> b!6888304 m!7610808))

(declare-fun m!7610810 () Bool)

(assert (=> start!664162 m!7610810))

(declare-fun m!7610812 () Bool)

(assert (=> b!6888303 m!7610812))

(declare-fun m!7610814 () Bool)

(assert (=> b!6888306 m!7610814))

(declare-fun m!7610816 () Bool)

(assert (=> b!6888290 m!7610816))

(declare-fun m!7610818 () Bool)

(assert (=> b!6888290 m!7610818))

(declare-fun m!7610820 () Bool)

(assert (=> b!6888290 m!7610820))

(declare-fun m!7610822 () Bool)

(assert (=> b!6888290 m!7610822))

(declare-fun m!7610824 () Bool)

(assert (=> b!6888290 m!7610824))

(assert (=> b!6888290 m!7610822))

(declare-fun m!7610826 () Bool)

(assert (=> b!6888290 m!7610826))

(declare-fun m!7610828 () Bool)

(assert (=> b!6888290 m!7610828))

(declare-fun m!7610830 () Bool)

(assert (=> b!6888290 m!7610830))

(declare-fun m!7610832 () Bool)

(assert (=> b!6888290 m!7610832))

(declare-fun m!7610834 () Bool)

(assert (=> b!6888290 m!7610834))

(declare-fun m!7610836 () Bool)

(assert (=> b!6888310 m!7610836))

(declare-fun m!7610838 () Bool)

(assert (=> b!6888310 m!7610838))

(declare-fun m!7610840 () Bool)

(assert (=> b!6888310 m!7610840))

(declare-fun m!7610842 () Bool)

(assert (=> b!6888310 m!7610842))

(assert (=> b!6888310 m!7610836))

(declare-fun m!7610844 () Bool)

(assert (=> b!6888310 m!7610844))

(declare-fun m!7610846 () Bool)

(assert (=> b!6888310 m!7610846))

(declare-fun m!7610848 () Bool)

(assert (=> b!6888310 m!7610848))

(declare-fun m!7610850 () Bool)

(assert (=> b!6888310 m!7610850))

(declare-fun m!7610852 () Bool)

(assert (=> b!6888293 m!7610852))

(declare-fun m!7610854 () Bool)

(assert (=> b!6888293 m!7610854))

(declare-fun m!7610856 () Bool)

(assert (=> b!6888293 m!7610856))

(declare-fun m!7610858 () Bool)

(assert (=> b!6888293 m!7610858))

(declare-fun m!7610860 () Bool)

(assert (=> b!6888293 m!7610860))

(declare-fun m!7610862 () Bool)

(assert (=> b!6888293 m!7610862))

(declare-fun m!7610864 () Bool)

(assert (=> b!6888293 m!7610864))

(declare-fun m!7610866 () Bool)

(assert (=> b!6888293 m!7610866))

(declare-fun m!7610868 () Bool)

(assert (=> b!6888293 m!7610868))

(declare-fun m!7610870 () Bool)

(assert (=> b!6888293 m!7610870))

(assert (=> b!6888293 m!7610856))

(declare-fun m!7610872 () Bool)

(assert (=> b!6888293 m!7610872))

(assert (=> b!6888293 m!7610864))

(declare-fun m!7610874 () Bool)

(assert (=> b!6888307 m!7610874))

(declare-fun m!7610876 () Bool)

(assert (=> b!6888307 m!7610876))

(declare-fun m!7610878 () Bool)

(assert (=> b!6888307 m!7610878))

(declare-fun m!7610880 () Bool)

(assert (=> b!6888307 m!7610880))

(assert (=> b!6888307 m!7610878))

(declare-fun m!7610882 () Bool)

(assert (=> b!6888307 m!7610882))

(declare-fun m!7610884 () Bool)

(assert (=> b!6888307 m!7610884))

(declare-fun m!7610886 () Bool)

(assert (=> b!6888300 m!7610886))

(declare-fun m!7610888 () Bool)

(assert (=> b!6888313 m!7610888))

(declare-fun m!7610890 () Bool)

(assert (=> b!6888313 m!7610890))

(declare-fun m!7610892 () Bool)

(assert (=> b!6888313 m!7610892))

(declare-fun m!7610894 () Bool)

(assert (=> b!6888313 m!7610894))

(declare-fun m!7610896 () Bool)

(assert (=> b!6888313 m!7610896))

(declare-fun m!7610898 () Bool)

(assert (=> b!6888313 m!7610898))

(declare-fun m!7610900 () Bool)

(assert (=> b!6888298 m!7610900))

(declare-fun m!7610902 () Bool)

(assert (=> b!6888298 m!7610902))

(check-sat (not start!664162) (not b!6888301) (not b!6888313) (not b!6888294) (not b!6888293) (not b!6888312) (not b!6888291) (not b!6888292) (not b!6888302) (not b!6888298) (not b!6888299) (not b!6888306) (not b!6888310) (not b!6888305) (not b!6888290) (not b!6888309) (not b!6888304) (not b!6888295) tp_is_empty!42827 (not b!6888300) (not b!6888307) (not b!6888297) (not b!6888303))
(check-sat)
