; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694160 () Bool)

(assert start!694160)

(declare-fun b!7124896 () Bool)

(declare-fun e!4281621 () Bool)

(declare-datatypes ((C!36268 0))(
  ( (C!36269 (val!28060 Int)) )
))
(declare-datatypes ((Regex!17999 0))(
  ( (ElementMatch!17999 (c!1329289 C!36268)) (Concat!26844 (regOne!36510 Regex!17999) (regTwo!36510 Regex!17999)) (EmptyExpr!17999) (Star!17999 (reg!18328 Regex!17999)) (EmptyLang!17999) (Union!17999 (regOne!36511 Regex!17999) (regTwo!36511 Regex!17999)) )
))
(declare-datatypes ((List!69049 0))(
  ( (Nil!68925) (Cons!68925 (h!75373 Regex!17999) (t!383026 List!69049)) )
))
(declare-datatypes ((Context!13986 0))(
  ( (Context!13987 (exprs!7493 List!69049)) )
))
(declare-fun c!9962 () Context!13986)

(declare-datatypes ((List!69050 0))(
  ( (Nil!68926) (Cons!68926 (h!75374 Context!13986) (t!383027 List!69050)) )
))
(declare-fun zl!1616 () List!69050)

(declare-fun contextDepthTotal!563 (Context!13986) Int)

(declare-fun zipperDepthTotal!592 (List!69050) Int)

(assert (=> b!7124896 (= e!4281621 (> (contextDepthTotal!563 c!9962) (zipperDepthTotal!592 zl!1616)))))

(declare-fun b!7124897 () Bool)

(declare-fun res!2907231 () Bool)

(assert (=> b!7124897 (=> (not res!2907231) (not e!4281621))))

(declare-fun contains!20541 (List!69050 Context!13986) Bool)

(assert (=> b!7124897 (= res!2907231 (not (contains!20541 (t!383027 zl!1616) c!9962)))))

(declare-fun b!7124898 () Bool)

(declare-fun e!4281619 () Bool)

(declare-fun tp!1962367 () Bool)

(assert (=> b!7124898 (= e!4281619 tp!1962367)))

(declare-fun b!7124899 () Bool)

(declare-fun res!2907232 () Bool)

(assert (=> b!7124899 (=> (not res!2907232) (not e!4281621))))

(get-info :version)

(assert (=> b!7124899 (= res!2907232 ((_ is Cons!68926) zl!1616))))

(declare-fun tp!1962366 () Bool)

(declare-fun e!4281620 () Bool)

(declare-fun e!4281618 () Bool)

(declare-fun b!7124900 () Bool)

(declare-fun inv!88025 (Context!13986) Bool)

(assert (=> b!7124900 (= e!4281618 (and (inv!88025 (h!75374 zl!1616)) e!4281620 tp!1962366))))

(declare-fun res!2907233 () Bool)

(assert (=> start!694160 (=> (not res!2907233) (not e!4281621))))

(assert (=> start!694160 (= res!2907233 (contains!20541 zl!1616 c!9962))))

(assert (=> start!694160 e!4281621))

(assert (=> start!694160 e!4281618))

(assert (=> start!694160 (and (inv!88025 c!9962) e!4281619)))

(declare-fun b!7124901 () Bool)

(declare-fun tp!1962365 () Bool)

(assert (=> b!7124901 (= e!4281620 tp!1962365)))

(assert (= (and start!694160 res!2907233) b!7124899))

(assert (= (and b!7124899 res!2907232) b!7124897))

(assert (= (and b!7124897 res!2907231) b!7124896))

(assert (= b!7124900 b!7124901))

(assert (= (and start!694160 ((_ is Cons!68926) zl!1616)) b!7124900))

(assert (= start!694160 b!7124898))

(declare-fun m!7842258 () Bool)

(assert (=> b!7124896 m!7842258))

(declare-fun m!7842260 () Bool)

(assert (=> b!7124896 m!7842260))

(declare-fun m!7842262 () Bool)

(assert (=> b!7124897 m!7842262))

(declare-fun m!7842264 () Bool)

(assert (=> b!7124900 m!7842264))

(declare-fun m!7842266 () Bool)

(assert (=> start!694160 m!7842266))

(declare-fun m!7842268 () Bool)

(assert (=> start!694160 m!7842268))

(check-sat (not start!694160) (not b!7124901) (not b!7124896) (not b!7124900) (not b!7124897) (not b!7124898))
(check-sat)
(get-model)

(declare-fun d!2223466 () Bool)

(declare-fun lambda!432985 () Int)

(declare-fun forall!16907 (List!69049 Int) Bool)

(assert (=> d!2223466 (= (inv!88025 (h!75374 zl!1616)) (forall!16907 (exprs!7493 (h!75374 zl!1616)) lambda!432985))))

(declare-fun bs!1886299 () Bool)

(assert (= bs!1886299 d!2223466))

(declare-fun m!7842280 () Bool)

(assert (=> bs!1886299 m!7842280))

(assert (=> b!7124900 d!2223466))

(declare-fun d!2223472 () Bool)

(declare-fun lt!2563017 () Int)

(assert (=> d!2223472 (>= lt!2563017 0)))

(declare-fun e!4281632 () Int)

(assert (=> d!2223472 (= lt!2563017 e!4281632)))

(declare-fun c!1329293 () Bool)

(assert (=> d!2223472 (= c!1329293 ((_ is Cons!68925) (exprs!7493 c!9962)))))

(assert (=> d!2223472 (= (contextDepthTotal!563 c!9962) lt!2563017)))

(declare-fun b!7124914 () Bool)

(declare-fun regexDepthTotal!333 (Regex!17999) Int)

(assert (=> b!7124914 (= e!4281632 (+ (regexDepthTotal!333 (h!75373 (exprs!7493 c!9962))) (contextDepthTotal!563 (Context!13987 (t!383026 (exprs!7493 c!9962))))))))

(declare-fun b!7124915 () Bool)

(assert (=> b!7124915 (= e!4281632 1)))

(assert (= (and d!2223472 c!1329293) b!7124914))

(assert (= (and d!2223472 (not c!1329293)) b!7124915))

(declare-fun m!7842284 () Bool)

(assert (=> b!7124914 m!7842284))

(declare-fun m!7842286 () Bool)

(assert (=> b!7124914 m!7842286))

(assert (=> b!7124896 d!2223472))

(declare-fun d!2223476 () Bool)

(declare-fun lt!2563020 () Int)

(assert (=> d!2223476 (>= lt!2563020 0)))

(declare-fun e!4281635 () Int)

(assert (=> d!2223476 (= lt!2563020 e!4281635)))

(declare-fun c!1329296 () Bool)

(assert (=> d!2223476 (= c!1329296 ((_ is Cons!68926) zl!1616))))

(assert (=> d!2223476 (= (zipperDepthTotal!592 zl!1616) lt!2563020)))

(declare-fun b!7124920 () Bool)

(assert (=> b!7124920 (= e!4281635 (+ (contextDepthTotal!563 (h!75374 zl!1616)) (zipperDepthTotal!592 (t!383027 zl!1616))))))

(declare-fun b!7124921 () Bool)

(assert (=> b!7124921 (= e!4281635 0)))

(assert (= (and d!2223476 c!1329296) b!7124920))

(assert (= (and d!2223476 (not c!1329296)) b!7124921))

(declare-fun m!7842288 () Bool)

(assert (=> b!7124920 m!7842288))

(declare-fun m!7842290 () Bool)

(assert (=> b!7124920 m!7842290))

(assert (=> b!7124896 d!2223476))

(declare-fun d!2223478 () Bool)

(declare-fun lt!2563028 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!14108 (List!69050) (InoxSet Context!13986))

(assert (=> d!2223478 (= lt!2563028 (select (content!14108 zl!1616) c!9962))))

(declare-fun e!4281645 () Bool)

(assert (=> d!2223478 (= lt!2563028 e!4281645)))

(declare-fun res!2907246 () Bool)

(assert (=> d!2223478 (=> (not res!2907246) (not e!4281645))))

(assert (=> d!2223478 (= res!2907246 ((_ is Cons!68926) zl!1616))))

(assert (=> d!2223478 (= (contains!20541 zl!1616 c!9962) lt!2563028)))

(declare-fun b!7124936 () Bool)

(declare-fun e!4281646 () Bool)

(assert (=> b!7124936 (= e!4281645 e!4281646)))

(declare-fun res!2907247 () Bool)

(assert (=> b!7124936 (=> res!2907247 e!4281646)))

(assert (=> b!7124936 (= res!2907247 (= (h!75374 zl!1616) c!9962))))

(declare-fun b!7124937 () Bool)

(assert (=> b!7124937 (= e!4281646 (contains!20541 (t!383027 zl!1616) c!9962))))

(assert (= (and d!2223478 res!2907246) b!7124936))

(assert (= (and b!7124936 (not res!2907247)) b!7124937))

(declare-fun m!7842296 () Bool)

(assert (=> d!2223478 m!7842296))

(declare-fun m!7842298 () Bool)

(assert (=> d!2223478 m!7842298))

(assert (=> b!7124937 m!7842262))

(assert (=> start!694160 d!2223478))

(declare-fun bs!1886301 () Bool)

(declare-fun d!2223482 () Bool)

(assert (= bs!1886301 (and d!2223482 d!2223466)))

(declare-fun lambda!432989 () Int)

(assert (=> bs!1886301 (= lambda!432989 lambda!432985)))

(assert (=> d!2223482 (= (inv!88025 c!9962) (forall!16907 (exprs!7493 c!9962) lambda!432989))))

(declare-fun bs!1886302 () Bool)

(assert (= bs!1886302 d!2223482))

(declare-fun m!7842300 () Bool)

(assert (=> bs!1886302 m!7842300))

(assert (=> start!694160 d!2223482))

(declare-fun d!2223484 () Bool)

(declare-fun lt!2563030 () Bool)

(assert (=> d!2223484 (= lt!2563030 (select (content!14108 (t!383027 zl!1616)) c!9962))))

(declare-fun e!4281648 () Bool)

(assert (=> d!2223484 (= lt!2563030 e!4281648)))

(declare-fun res!2907248 () Bool)

(assert (=> d!2223484 (=> (not res!2907248) (not e!4281648))))

(assert (=> d!2223484 (= res!2907248 ((_ is Cons!68926) (t!383027 zl!1616)))))

(assert (=> d!2223484 (= (contains!20541 (t!383027 zl!1616) c!9962) lt!2563030)))

(declare-fun b!7124940 () Bool)

(declare-fun e!4281649 () Bool)

(assert (=> b!7124940 (= e!4281648 e!4281649)))

(declare-fun res!2907249 () Bool)

(assert (=> b!7124940 (=> res!2907249 e!4281649)))

(assert (=> b!7124940 (= res!2907249 (= (h!75374 (t!383027 zl!1616)) c!9962))))

(declare-fun b!7124941 () Bool)

(assert (=> b!7124941 (= e!4281649 (contains!20541 (t!383027 (t!383027 zl!1616)) c!9962))))

(assert (= (and d!2223484 res!2907248) b!7124940))

(assert (= (and b!7124940 (not res!2907249)) b!7124941))

(declare-fun m!7842306 () Bool)

(assert (=> d!2223484 m!7842306))

(declare-fun m!7842308 () Bool)

(assert (=> d!2223484 m!7842308))

(declare-fun m!7842310 () Bool)

(assert (=> b!7124941 m!7842310))

(assert (=> b!7124897 d!2223484))

(declare-fun b!7124954 () Bool)

(declare-fun e!4281658 () Bool)

(declare-fun tp!1962378 () Bool)

(assert (=> b!7124954 (= e!4281658 tp!1962378)))

(declare-fun tp!1962379 () Bool)

(declare-fun e!4281657 () Bool)

(declare-fun b!7124953 () Bool)

(assert (=> b!7124953 (= e!4281657 (and (inv!88025 (h!75374 (t!383027 zl!1616))) e!4281658 tp!1962379))))

(assert (=> b!7124900 (= tp!1962366 e!4281657)))

(assert (= b!7124953 b!7124954))

(assert (= (and b!7124900 ((_ is Cons!68926) (t!383027 zl!1616))) b!7124953))

(declare-fun m!7842314 () Bool)

(assert (=> b!7124953 m!7842314))

(declare-fun b!7124966 () Bool)

(declare-fun e!4281666 () Bool)

(declare-fun tp!1962390 () Bool)

(declare-fun tp!1962391 () Bool)

(assert (=> b!7124966 (= e!4281666 (and tp!1962390 tp!1962391))))

(assert (=> b!7124901 (= tp!1962365 e!4281666)))

(assert (= (and b!7124901 ((_ is Cons!68925) (exprs!7493 (h!75374 zl!1616)))) b!7124966))

(declare-fun b!7124967 () Bool)

(declare-fun e!4281667 () Bool)

(declare-fun tp!1962392 () Bool)

(declare-fun tp!1962393 () Bool)

(assert (=> b!7124967 (= e!4281667 (and tp!1962392 tp!1962393))))

(assert (=> b!7124898 (= tp!1962367 e!4281667)))

(assert (= (and b!7124898 ((_ is Cons!68925) (exprs!7493 c!9962))) b!7124967))

(check-sat (not b!7124937) (not b!7124941) (not b!7124920) (not d!2223478) (not b!7124914) (not b!7124966) (not d!2223484) (not b!7124967) (not d!2223482) (not b!7124954) (not d!2223466) (not b!7124953))
(check-sat)
(get-model)

(declare-fun d!2223488 () Bool)

(declare-fun lt!2563031 () Bool)

(assert (=> d!2223488 (= lt!2563031 (select (content!14108 (t!383027 (t!383027 zl!1616))) c!9962))))

(declare-fun e!4281670 () Bool)

(assert (=> d!2223488 (= lt!2563031 e!4281670)))

(declare-fun res!2907250 () Bool)

(assert (=> d!2223488 (=> (not res!2907250) (not e!4281670))))

(assert (=> d!2223488 (= res!2907250 ((_ is Cons!68926) (t!383027 (t!383027 zl!1616))))))

(assert (=> d!2223488 (= (contains!20541 (t!383027 (t!383027 zl!1616)) c!9962) lt!2563031)))

(declare-fun b!7124970 () Bool)

(declare-fun e!4281671 () Bool)

(assert (=> b!7124970 (= e!4281670 e!4281671)))

(declare-fun res!2907251 () Bool)

(assert (=> b!7124970 (=> res!2907251 e!4281671)))

(assert (=> b!7124970 (= res!2907251 (= (h!75374 (t!383027 (t!383027 zl!1616))) c!9962))))

(declare-fun b!7124971 () Bool)

(assert (=> b!7124971 (= e!4281671 (contains!20541 (t!383027 (t!383027 (t!383027 zl!1616))) c!9962))))

(assert (= (and d!2223488 res!2907250) b!7124970))

(assert (= (and b!7124970 (not res!2907251)) b!7124971))

(declare-fun m!7842318 () Bool)

(assert (=> d!2223488 m!7842318))

(declare-fun m!7842320 () Bool)

(assert (=> d!2223488 m!7842320))

(declare-fun m!7842322 () Bool)

(assert (=> b!7124971 m!7842322))

(assert (=> b!7124941 d!2223488))

(declare-fun d!2223490 () Bool)

(declare-fun c!1329306 () Bool)

(assert (=> d!2223490 (= c!1329306 ((_ is Nil!68926) zl!1616))))

(declare-fun e!4281674 () (InoxSet Context!13986))

(assert (=> d!2223490 (= (content!14108 zl!1616) e!4281674)))

(declare-fun b!7124976 () Bool)

(assert (=> b!7124976 (= e!4281674 ((as const (Array Context!13986 Bool)) false))))

(declare-fun b!7124977 () Bool)

(assert (=> b!7124977 (= e!4281674 ((_ map or) (store ((as const (Array Context!13986 Bool)) false) (h!75374 zl!1616) true) (content!14108 (t!383027 zl!1616))))))

(assert (= (and d!2223490 c!1329306) b!7124976))

(assert (= (and d!2223490 (not c!1329306)) b!7124977))

(declare-fun m!7842324 () Bool)

(assert (=> b!7124977 m!7842324))

(assert (=> b!7124977 m!7842306))

(assert (=> d!2223478 d!2223490))

(assert (=> b!7124937 d!2223484))

(declare-fun d!2223492 () Bool)

(declare-fun lt!2563032 () Int)

(assert (=> d!2223492 (>= lt!2563032 0)))

(declare-fun e!4281675 () Int)

(assert (=> d!2223492 (= lt!2563032 e!4281675)))

(declare-fun c!1329307 () Bool)

(assert (=> d!2223492 (= c!1329307 ((_ is Cons!68925) (exprs!7493 (h!75374 zl!1616))))))

(assert (=> d!2223492 (= (contextDepthTotal!563 (h!75374 zl!1616)) lt!2563032)))

(declare-fun b!7124978 () Bool)

(assert (=> b!7124978 (= e!4281675 (+ (regexDepthTotal!333 (h!75373 (exprs!7493 (h!75374 zl!1616)))) (contextDepthTotal!563 (Context!13987 (t!383026 (exprs!7493 (h!75374 zl!1616)))))))))

(declare-fun b!7124979 () Bool)

(assert (=> b!7124979 (= e!4281675 1)))

(assert (= (and d!2223492 c!1329307) b!7124978))

(assert (= (and d!2223492 (not c!1329307)) b!7124979))

(declare-fun m!7842326 () Bool)

(assert (=> b!7124978 m!7842326))

(declare-fun m!7842328 () Bool)

(assert (=> b!7124978 m!7842328))

(assert (=> b!7124920 d!2223492))

(declare-fun d!2223494 () Bool)

(declare-fun lt!2563033 () Int)

(assert (=> d!2223494 (>= lt!2563033 0)))

(declare-fun e!4281676 () Int)

(assert (=> d!2223494 (= lt!2563033 e!4281676)))

(declare-fun c!1329308 () Bool)

(assert (=> d!2223494 (= c!1329308 ((_ is Cons!68926) (t!383027 zl!1616)))))

(assert (=> d!2223494 (= (zipperDepthTotal!592 (t!383027 zl!1616)) lt!2563033)))

(declare-fun b!7124980 () Bool)

(assert (=> b!7124980 (= e!4281676 (+ (contextDepthTotal!563 (h!75374 (t!383027 zl!1616))) (zipperDepthTotal!592 (t!383027 (t!383027 zl!1616)))))))

(declare-fun b!7124981 () Bool)

(assert (=> b!7124981 (= e!4281676 0)))

(assert (= (and d!2223494 c!1329308) b!7124980))

(assert (= (and d!2223494 (not c!1329308)) b!7124981))

(declare-fun m!7842330 () Bool)

(assert (=> b!7124980 m!7842330))

(declare-fun m!7842332 () Bool)

(assert (=> b!7124980 m!7842332))

(assert (=> b!7124920 d!2223494))

(declare-fun d!2223496 () Bool)

(declare-fun res!2907256 () Bool)

(declare-fun e!4281681 () Bool)

(assert (=> d!2223496 (=> res!2907256 e!4281681)))

(assert (=> d!2223496 (= res!2907256 ((_ is Nil!68925) (exprs!7493 c!9962)))))

(assert (=> d!2223496 (= (forall!16907 (exprs!7493 c!9962) lambda!432989) e!4281681)))

(declare-fun b!7124986 () Bool)

(declare-fun e!4281682 () Bool)

(assert (=> b!7124986 (= e!4281681 e!4281682)))

(declare-fun res!2907257 () Bool)

(assert (=> b!7124986 (=> (not res!2907257) (not e!4281682))))

(declare-fun dynLambda!28107 (Int Regex!17999) Bool)

(assert (=> b!7124986 (= res!2907257 (dynLambda!28107 lambda!432989 (h!75373 (exprs!7493 c!9962))))))

(declare-fun b!7124987 () Bool)

(assert (=> b!7124987 (= e!4281682 (forall!16907 (t!383026 (exprs!7493 c!9962)) lambda!432989))))

(assert (= (and d!2223496 (not res!2907256)) b!7124986))

(assert (= (and b!7124986 res!2907257) b!7124987))

(declare-fun b_lambda!271933 () Bool)

(assert (=> (not b_lambda!271933) (not b!7124986)))

(declare-fun m!7842334 () Bool)

(assert (=> b!7124986 m!7842334))

(declare-fun m!7842336 () Bool)

(assert (=> b!7124987 m!7842336))

(assert (=> d!2223482 d!2223496))

(declare-fun d!2223498 () Bool)

(declare-fun res!2907258 () Bool)

(declare-fun e!4281683 () Bool)

(assert (=> d!2223498 (=> res!2907258 e!4281683)))

(assert (=> d!2223498 (= res!2907258 ((_ is Nil!68925) (exprs!7493 (h!75374 zl!1616))))))

(assert (=> d!2223498 (= (forall!16907 (exprs!7493 (h!75374 zl!1616)) lambda!432985) e!4281683)))

(declare-fun b!7124988 () Bool)

(declare-fun e!4281684 () Bool)

(assert (=> b!7124988 (= e!4281683 e!4281684)))

(declare-fun res!2907259 () Bool)

(assert (=> b!7124988 (=> (not res!2907259) (not e!4281684))))

(assert (=> b!7124988 (= res!2907259 (dynLambda!28107 lambda!432985 (h!75373 (exprs!7493 (h!75374 zl!1616)))))))

(declare-fun b!7124989 () Bool)

(assert (=> b!7124989 (= e!4281684 (forall!16907 (t!383026 (exprs!7493 (h!75374 zl!1616))) lambda!432985))))

(assert (= (and d!2223498 (not res!2907258)) b!7124988))

(assert (= (and b!7124988 res!2907259) b!7124989))

(declare-fun b_lambda!271935 () Bool)

(assert (=> (not b_lambda!271935) (not b!7124988)))

(declare-fun m!7842338 () Bool)

(assert (=> b!7124988 m!7842338))

(declare-fun m!7842340 () Bool)

(assert (=> b!7124989 m!7842340))

(assert (=> d!2223466 d!2223498))

(declare-fun d!2223500 () Bool)

(declare-fun c!1329309 () Bool)

(assert (=> d!2223500 (= c!1329309 ((_ is Nil!68926) (t!383027 zl!1616)))))

(declare-fun e!4281685 () (InoxSet Context!13986))

(assert (=> d!2223500 (= (content!14108 (t!383027 zl!1616)) e!4281685)))

(declare-fun b!7124990 () Bool)

(assert (=> b!7124990 (= e!4281685 ((as const (Array Context!13986 Bool)) false))))

(declare-fun b!7124991 () Bool)

(assert (=> b!7124991 (= e!4281685 ((_ map or) (store ((as const (Array Context!13986 Bool)) false) (h!75374 (t!383027 zl!1616)) true) (content!14108 (t!383027 (t!383027 zl!1616)))))))

(assert (= (and d!2223500 c!1329309) b!7124990))

(assert (= (and d!2223500 (not c!1329309)) b!7124991))

(declare-fun m!7842342 () Bool)

(assert (=> b!7124991 m!7842342))

(assert (=> b!7124991 m!7842318))

(assert (=> d!2223484 d!2223500))

(declare-fun bs!1886305 () Bool)

(declare-fun d!2223502 () Bool)

(assert (= bs!1886305 (and d!2223502 d!2223466)))

(declare-fun lambda!432991 () Int)

(assert (=> bs!1886305 (= lambda!432991 lambda!432985)))

(declare-fun bs!1886306 () Bool)

(assert (= bs!1886306 (and d!2223502 d!2223482)))

(assert (=> bs!1886306 (= lambda!432991 lambda!432989)))

(assert (=> d!2223502 (= (inv!88025 (h!75374 (t!383027 zl!1616))) (forall!16907 (exprs!7493 (h!75374 (t!383027 zl!1616))) lambda!432991))))

(declare-fun bs!1886307 () Bool)

(assert (= bs!1886307 d!2223502))

(declare-fun m!7842344 () Bool)

(assert (=> bs!1886307 m!7842344))

(assert (=> b!7124953 d!2223502))

(declare-fun bm!650828 () Bool)

(declare-fun call!650833 () Int)

(declare-fun c!1329321 () Bool)

(assert (=> bm!650828 (= call!650833 (regexDepthTotal!333 (ite c!1329321 (regTwo!36511 (h!75373 (exprs!7493 c!9962))) (regOne!36510 (h!75373 (exprs!7493 c!9962))))))))

(declare-fun d!2223504 () Bool)

(declare-fun lt!2563036 () Int)

(assert (=> d!2223504 (> lt!2563036 0)))

(declare-fun e!4281694 () Int)

(assert (=> d!2223504 (= lt!2563036 e!4281694)))

(declare-fun c!1329319 () Bool)

(assert (=> d!2223504 (= c!1329319 ((_ is ElementMatch!17999) (h!75373 (exprs!7493 c!9962))))))

(assert (=> d!2223504 (= (regexDepthTotal!333 (h!75373 (exprs!7493 c!9962))) lt!2563036)))

(declare-fun b!7125008 () Bool)

(declare-fun e!4281695 () Int)

(declare-fun e!4281696 () Int)

(assert (=> b!7125008 (= e!4281695 e!4281696)))

(declare-fun c!1329318 () Bool)

(assert (=> b!7125008 (= c!1329318 ((_ is Concat!26844) (h!75373 (exprs!7493 c!9962))))))

(declare-fun b!7125009 () Bool)

(declare-fun call!650834 () Int)

(assert (=> b!7125009 (= e!4281696 (+ 1 call!650833 call!650834))))

(declare-fun b!7125010 () Bool)

(assert (=> b!7125010 (= e!4281694 1)))

(declare-fun b!7125011 () Bool)

(assert (=> b!7125011 (= e!4281696 1)))

(declare-fun b!7125012 () Bool)

(assert (=> b!7125012 (= e!4281695 (+ 1 call!650834 call!650833))))

(declare-fun bm!650829 () Bool)

(declare-fun call!650835 () Int)

(assert (=> bm!650829 (= call!650834 call!650835)))

(declare-fun bm!650830 () Bool)

(declare-fun c!1329320 () Bool)

(assert (=> bm!650830 (= call!650835 (regexDepthTotal!333 (ite c!1329320 (reg!18328 (h!75373 (exprs!7493 c!9962))) (ite c!1329321 (regOne!36511 (h!75373 (exprs!7493 c!9962))) (regTwo!36510 (h!75373 (exprs!7493 c!9962)))))))))

(declare-fun b!7125013 () Bool)

(assert (=> b!7125013 (= c!1329321 ((_ is Union!17999) (h!75373 (exprs!7493 c!9962))))))

(declare-fun e!4281697 () Int)

(assert (=> b!7125013 (= e!4281697 e!4281695)))

(declare-fun b!7125014 () Bool)

(assert (=> b!7125014 (= e!4281694 e!4281697)))

(assert (=> b!7125014 (= c!1329320 ((_ is Star!17999) (h!75373 (exprs!7493 c!9962))))))

(declare-fun b!7125015 () Bool)

(assert (=> b!7125015 (= e!4281697 (+ 1 call!650835))))

(assert (= (and d!2223504 c!1329319) b!7125010))

(assert (= (and d!2223504 (not c!1329319)) b!7125014))

(assert (= (and b!7125014 c!1329320) b!7125015))

(assert (= (and b!7125014 (not c!1329320)) b!7125013))

(assert (= (and b!7125013 c!1329321) b!7125012))

(assert (= (and b!7125013 (not c!1329321)) b!7125008))

(assert (= (and b!7125008 c!1329318) b!7125009))

(assert (= (and b!7125008 (not c!1329318)) b!7125011))

(assert (= (or b!7125012 b!7125009) bm!650828))

(assert (= (or b!7125012 b!7125009) bm!650829))

(assert (= (or b!7125015 bm!650829) bm!650830))

(declare-fun m!7842346 () Bool)

(assert (=> bm!650828 m!7842346))

(declare-fun m!7842348 () Bool)

(assert (=> bm!650830 m!7842348))

(assert (=> b!7124914 d!2223504))

(declare-fun d!2223506 () Bool)

(declare-fun lt!2563037 () Int)

(assert (=> d!2223506 (>= lt!2563037 0)))

(declare-fun e!4281698 () Int)

(assert (=> d!2223506 (= lt!2563037 e!4281698)))

(declare-fun c!1329322 () Bool)

(assert (=> d!2223506 (= c!1329322 ((_ is Cons!68925) (exprs!7493 (Context!13987 (t!383026 (exprs!7493 c!9962))))))))

(assert (=> d!2223506 (= (contextDepthTotal!563 (Context!13987 (t!383026 (exprs!7493 c!9962)))) lt!2563037)))

(declare-fun b!7125016 () Bool)

(assert (=> b!7125016 (= e!4281698 (+ (regexDepthTotal!333 (h!75373 (exprs!7493 (Context!13987 (t!383026 (exprs!7493 c!9962)))))) (contextDepthTotal!563 (Context!13987 (t!383026 (exprs!7493 (Context!13987 (t!383026 (exprs!7493 c!9962)))))))))))

(declare-fun b!7125017 () Bool)

(assert (=> b!7125017 (= e!4281698 1)))

(assert (= (and d!2223506 c!1329322) b!7125016))

(assert (= (and d!2223506 (not c!1329322)) b!7125017))

(declare-fun m!7842350 () Bool)

(assert (=> b!7125016 m!7842350))

(declare-fun m!7842352 () Bool)

(assert (=> b!7125016 m!7842352))

(assert (=> b!7124914 d!2223506))

(declare-fun b!7125018 () Bool)

(declare-fun e!4281699 () Bool)

(declare-fun tp!1962396 () Bool)

(declare-fun tp!1962397 () Bool)

(assert (=> b!7125018 (= e!4281699 (and tp!1962396 tp!1962397))))

(assert (=> b!7124954 (= tp!1962378 e!4281699)))

(assert (= (and b!7124954 ((_ is Cons!68925) (exprs!7493 (h!75374 (t!383027 zl!1616))))) b!7125018))

(declare-fun b!7125031 () Bool)

(declare-fun e!4281702 () Bool)

(declare-fun tp!1962408 () Bool)

(assert (=> b!7125031 (= e!4281702 tp!1962408)))

(declare-fun b!7125032 () Bool)

(declare-fun tp!1962409 () Bool)

(declare-fun tp!1962412 () Bool)

(assert (=> b!7125032 (= e!4281702 (and tp!1962409 tp!1962412))))

(declare-fun b!7125029 () Bool)

(declare-fun tp_is_empty!45605 () Bool)

(assert (=> b!7125029 (= e!4281702 tp_is_empty!45605)))

(declare-fun b!7125030 () Bool)

(declare-fun tp!1962410 () Bool)

(declare-fun tp!1962411 () Bool)

(assert (=> b!7125030 (= e!4281702 (and tp!1962410 tp!1962411))))

(assert (=> b!7124967 (= tp!1962392 e!4281702)))

(assert (= (and b!7124967 ((_ is ElementMatch!17999) (h!75373 (exprs!7493 c!9962)))) b!7125029))

(assert (= (and b!7124967 ((_ is Concat!26844) (h!75373 (exprs!7493 c!9962)))) b!7125030))

(assert (= (and b!7124967 ((_ is Star!17999) (h!75373 (exprs!7493 c!9962)))) b!7125031))

(assert (= (and b!7124967 ((_ is Union!17999) (h!75373 (exprs!7493 c!9962)))) b!7125032))

(declare-fun b!7125033 () Bool)

(declare-fun e!4281703 () Bool)

(declare-fun tp!1962413 () Bool)

(declare-fun tp!1962414 () Bool)

(assert (=> b!7125033 (= e!4281703 (and tp!1962413 tp!1962414))))

(assert (=> b!7124967 (= tp!1962393 e!4281703)))

(assert (= (and b!7124967 ((_ is Cons!68925) (t!383026 (exprs!7493 c!9962)))) b!7125033))

(declare-fun b!7125035 () Bool)

(declare-fun e!4281705 () Bool)

(declare-fun tp!1962415 () Bool)

(assert (=> b!7125035 (= e!4281705 tp!1962415)))

(declare-fun b!7125034 () Bool)

(declare-fun tp!1962416 () Bool)

(declare-fun e!4281704 () Bool)

(assert (=> b!7125034 (= e!4281704 (and (inv!88025 (h!75374 (t!383027 (t!383027 zl!1616)))) e!4281705 tp!1962416))))

(assert (=> b!7124953 (= tp!1962379 e!4281704)))

(assert (= b!7125034 b!7125035))

(assert (= (and b!7124953 ((_ is Cons!68926) (t!383027 (t!383027 zl!1616)))) b!7125034))

(declare-fun m!7842354 () Bool)

(assert (=> b!7125034 m!7842354))

(declare-fun b!7125038 () Bool)

(declare-fun e!4281706 () Bool)

(declare-fun tp!1962417 () Bool)

(assert (=> b!7125038 (= e!4281706 tp!1962417)))

(declare-fun b!7125039 () Bool)

(declare-fun tp!1962418 () Bool)

(declare-fun tp!1962421 () Bool)

(assert (=> b!7125039 (= e!4281706 (and tp!1962418 tp!1962421))))

(declare-fun b!7125036 () Bool)

(assert (=> b!7125036 (= e!4281706 tp_is_empty!45605)))

(declare-fun b!7125037 () Bool)

(declare-fun tp!1962419 () Bool)

(declare-fun tp!1962420 () Bool)

(assert (=> b!7125037 (= e!4281706 (and tp!1962419 tp!1962420))))

(assert (=> b!7124966 (= tp!1962390 e!4281706)))

(assert (= (and b!7124966 ((_ is ElementMatch!17999) (h!75373 (exprs!7493 (h!75374 zl!1616))))) b!7125036))

(assert (= (and b!7124966 ((_ is Concat!26844) (h!75373 (exprs!7493 (h!75374 zl!1616))))) b!7125037))

(assert (= (and b!7124966 ((_ is Star!17999) (h!75373 (exprs!7493 (h!75374 zl!1616))))) b!7125038))

(assert (= (and b!7124966 ((_ is Union!17999) (h!75373 (exprs!7493 (h!75374 zl!1616))))) b!7125039))

(declare-fun b!7125040 () Bool)

(declare-fun e!4281707 () Bool)

(declare-fun tp!1962422 () Bool)

(declare-fun tp!1962423 () Bool)

(assert (=> b!7125040 (= e!4281707 (and tp!1962422 tp!1962423))))

(assert (=> b!7124966 (= tp!1962391 e!4281707)))

(assert (= (and b!7124966 ((_ is Cons!68925) (t!383026 (exprs!7493 (h!75374 zl!1616))))) b!7125040))

(declare-fun b_lambda!271937 () Bool)

(assert (= b_lambda!271933 (or d!2223482 b_lambda!271937)))

(declare-fun bs!1886308 () Bool)

(declare-fun d!2223508 () Bool)

(assert (= bs!1886308 (and d!2223508 d!2223482)))

(declare-fun validRegex!9264 (Regex!17999) Bool)

(assert (=> bs!1886308 (= (dynLambda!28107 lambda!432989 (h!75373 (exprs!7493 c!9962))) (validRegex!9264 (h!75373 (exprs!7493 c!9962))))))

(declare-fun m!7842356 () Bool)

(assert (=> bs!1886308 m!7842356))

(assert (=> b!7124986 d!2223508))

(declare-fun b_lambda!271939 () Bool)

(assert (= b_lambda!271935 (or d!2223466 b_lambda!271939)))

(declare-fun bs!1886309 () Bool)

(declare-fun d!2223510 () Bool)

(assert (= bs!1886309 (and d!2223510 d!2223466)))

(assert (=> bs!1886309 (= (dynLambda!28107 lambda!432985 (h!75373 (exprs!7493 (h!75374 zl!1616)))) (validRegex!9264 (h!75373 (exprs!7493 (h!75374 zl!1616)))))))

(declare-fun m!7842358 () Bool)

(assert (=> bs!1886309 m!7842358))

(assert (=> b!7124988 d!2223510))

(check-sat (not bs!1886308) (not b!7125031) (not b!7124971) (not b!7125035) (not b!7125033) (not b!7124989) (not b!7124978) (not b!7125018) (not b!7124980) (not b!7125038) (not bm!650828) (not b!7124987) (not b!7124977) (not d!2223488) (not bs!1886309) (not b!7125040) (not d!2223502) (not b!7125016) tp_is_empty!45605 (not b!7125034) (not b_lambda!271937) (not b!7124991) (not bm!650830) (not b_lambda!271939) (not b!7125030) (not b!7125039) (not b!7125032) (not b!7125037))
(check-sat)
