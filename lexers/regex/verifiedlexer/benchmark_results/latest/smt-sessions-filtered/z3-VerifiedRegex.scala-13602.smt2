; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!731016 () Bool)

(assert start!731016)

(declare-fun b!7568986 () Bool)

(declare-fun res!3032202 () Bool)

(declare-fun e!4506352 () Bool)

(assert (=> b!7568986 (=> (not res!3032202) (not e!4506352))))

(declare-datatypes ((C!40324 0))(
  ( (C!40325 (val!30602 Int)) )
))
(declare-datatypes ((List!72882 0))(
  ( (Nil!72758) (Cons!72758 (h!79206 C!40324) (t!387617 List!72882)) )
))
(declare-fun testedP!418 () List!72882)

(declare-fun input!7855 () List!72882)

(declare-fun isPrefix!6205 (List!72882 List!72882) Bool)

(assert (=> b!7568986 (= res!3032202 (isPrefix!6205 testedP!418 input!7855))))

(declare-fun b!7568987 () Bool)

(declare-fun e!4506351 () Bool)

(declare-fun tp_is_empty!50353 () Bool)

(declare-fun tp!2204829 () Bool)

(assert (=> b!7568987 (= e!4506351 (and tp_is_empty!50353 tp!2204829))))

(declare-fun b!7568988 () Bool)

(declare-fun e!4506355 () Bool)

(declare-fun tp!2204822 () Bool)

(declare-fun tp!2204820 () Bool)

(assert (=> b!7568988 (= e!4506355 (and tp!2204822 tp!2204820))))

(declare-fun b!7568989 () Bool)

(declare-fun e!4506354 () Bool)

(declare-fun tp!2204825 () Bool)

(declare-fun tp!2204827 () Bool)

(assert (=> b!7568989 (= e!4506354 (and tp!2204825 tp!2204827))))

(declare-fun b!7568990 () Bool)

(declare-fun e!4506350 () Bool)

(declare-fun e!4506353 () Bool)

(assert (=> b!7568990 (= e!4506350 (not e!4506353))))

(declare-fun res!3032196 () Bool)

(assert (=> b!7568990 (=> res!3032196 e!4506353)))

(declare-datatypes ((Regex!19999 0))(
  ( (ElementMatch!19999 (c!1396634 C!40324)) (Concat!28844 (regOne!40510 Regex!19999) (regTwo!40510 Regex!19999)) (EmptyExpr!19999) (Star!19999 (reg!20328 Regex!19999)) (EmptyLang!19999) (Union!19999 (regOne!40511 Regex!19999) (regTwo!40511 Regex!19999)) )
))
(declare-fun r!24129 () Regex!19999)

(declare-fun matchR!9599 (Regex!19999 List!72882) Bool)

(assert (=> b!7568990 (= res!3032196 (not (matchR!9599 r!24129 Nil!72758)))))

(declare-fun lt!2650938 () Regex!19999)

(assert (=> b!7568990 (matchR!9599 lt!2650938 Nil!72758)))

(declare-datatypes ((Unit!166950 0))(
  ( (Unit!166951) )
))
(declare-fun lt!2650937 () Unit!166950)

(declare-fun baseR!100 () Regex!19999)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!268 (Regex!19999 List!72882) Unit!166950)

(assert (=> b!7568990 (= lt!2650937 (lemmaMatchRIsSameAsWholeDerivativeAndNil!268 baseR!100 testedP!418))))

(declare-fun res!3032195 () Bool)

(assert (=> start!731016 (=> (not res!3032195) (not e!4506352))))

(declare-fun validRegex!10427 (Regex!19999) Bool)

(assert (=> start!731016 (= res!3032195 (validRegex!10427 baseR!100))))

(assert (=> start!731016 e!4506352))

(assert (=> start!731016 e!4506354))

(assert (=> start!731016 e!4506355))

(declare-fun e!4506349 () Bool)

(assert (=> start!731016 e!4506349))

(assert (=> start!731016 e!4506351))

(declare-fun b!7568991 () Bool)

(declare-fun tp!2204819 () Bool)

(assert (=> b!7568991 (= e!4506354 tp!2204819)))

(declare-fun b!7568992 () Bool)

(declare-fun size!42483 (List!72882) Int)

(assert (=> b!7568992 (= e!4506353 (>= (size!42483 input!7855) (size!42483 testedP!418)))))

(declare-fun b!7568993 () Bool)

(assert (=> b!7568993 (= e!4506355 tp_is_empty!50353)))

(declare-fun b!7568994 () Bool)

(declare-fun res!3032200 () Bool)

(assert (=> b!7568994 (=> (not res!3032200) (not e!4506352))))

(assert (=> b!7568994 (= res!3032200 (validRegex!10427 r!24129))))

(declare-fun b!7568995 () Bool)

(declare-fun res!3032197 () Bool)

(assert (=> b!7568995 (=> (not res!3032197) (not e!4506352))))

(assert (=> b!7568995 (= res!3032197 (matchR!9599 baseR!100 testedP!418))))

(declare-fun b!7568996 () Bool)

(assert (=> b!7568996 (= e!4506354 tp_is_empty!50353)))

(declare-fun b!7568997 () Bool)

(declare-fun res!3032199 () Bool)

(assert (=> b!7568997 (=> res!3032199 e!4506353)))

(declare-fun nullable!8725 (Regex!19999) Bool)

(assert (=> b!7568997 (= res!3032199 (not (nullable!8725 r!24129)))))

(declare-fun b!7568998 () Bool)

(declare-fun tp!2204828 () Bool)

(declare-fun tp!2204823 () Bool)

(assert (=> b!7568998 (= e!4506355 (and tp!2204828 tp!2204823))))

(declare-fun b!7568999 () Bool)

(assert (=> b!7568999 (= e!4506352 e!4506350)))

(declare-fun res!3032201 () Bool)

(assert (=> b!7568999 (=> (not res!3032201) (not e!4506350))))

(assert (=> b!7568999 (= res!3032201 (= lt!2650938 r!24129))))

(declare-fun derivative!525 (Regex!19999 List!72882) Regex!19999)

(assert (=> b!7568999 (= lt!2650938 (derivative!525 baseR!100 testedP!418))))

(declare-fun b!7569000 () Bool)

(declare-fun tp!2204821 () Bool)

(declare-fun tp!2204818 () Bool)

(assert (=> b!7569000 (= e!4506354 (and tp!2204821 tp!2204818))))

(declare-fun b!7569001 () Bool)

(declare-fun tp!2204826 () Bool)

(assert (=> b!7569001 (= e!4506349 (and tp_is_empty!50353 tp!2204826))))

(declare-fun b!7569002 () Bool)

(declare-fun tp!2204824 () Bool)

(assert (=> b!7569002 (= e!4506355 tp!2204824)))

(declare-fun b!7569003 () Bool)

(declare-fun res!3032198 () Bool)

(assert (=> b!7569003 (=> res!3032198 e!4506353)))

(declare-fun lostCause!1779 (Regex!19999) Bool)

(assert (=> b!7569003 (= res!3032198 (lostCause!1779 r!24129))))

(assert (= (and start!731016 res!3032195) b!7568994))

(assert (= (and b!7568994 res!3032200) b!7568986))

(assert (= (and b!7568986 res!3032202) b!7568995))

(assert (= (and b!7568995 res!3032197) b!7568999))

(assert (= (and b!7568999 res!3032201) b!7568990))

(assert (= (and b!7568990 (not res!3032196)) b!7568997))

(assert (= (and b!7568997 (not res!3032199)) b!7569003))

(assert (= (and b!7569003 (not res!3032198)) b!7568992))

(get-info :version)

(assert (= (and start!731016 ((_ is ElementMatch!19999) baseR!100)) b!7568996))

(assert (= (and start!731016 ((_ is Concat!28844) baseR!100)) b!7569000))

(assert (= (and start!731016 ((_ is Star!19999) baseR!100)) b!7568991))

(assert (= (and start!731016 ((_ is Union!19999) baseR!100)) b!7568989))

(assert (= (and start!731016 ((_ is ElementMatch!19999) r!24129)) b!7568993))

(assert (= (and start!731016 ((_ is Concat!28844) r!24129)) b!7568998))

(assert (= (and start!731016 ((_ is Star!19999) r!24129)) b!7569002))

(assert (= (and start!731016 ((_ is Union!19999) r!24129)) b!7568988))

(assert (= (and start!731016 ((_ is Cons!72758) testedP!418)) b!7569001))

(assert (= (and start!731016 ((_ is Cons!72758) input!7855)) b!7568987))

(declare-fun m!8131078 () Bool)

(assert (=> b!7569003 m!8131078))

(declare-fun m!8131080 () Bool)

(assert (=> b!7568986 m!8131080))

(declare-fun m!8131082 () Bool)

(assert (=> b!7568994 m!8131082))

(declare-fun m!8131084 () Bool)

(assert (=> b!7568992 m!8131084))

(declare-fun m!8131086 () Bool)

(assert (=> b!7568992 m!8131086))

(declare-fun m!8131088 () Bool)

(assert (=> b!7568990 m!8131088))

(declare-fun m!8131090 () Bool)

(assert (=> b!7568990 m!8131090))

(declare-fun m!8131092 () Bool)

(assert (=> b!7568990 m!8131092))

(declare-fun m!8131094 () Bool)

(assert (=> b!7568997 m!8131094))

(declare-fun m!8131096 () Bool)

(assert (=> start!731016 m!8131096))

(declare-fun m!8131098 () Bool)

(assert (=> b!7568999 m!8131098))

(declare-fun m!8131100 () Bool)

(assert (=> b!7568995 m!8131100))

(check-sat (not b!7568998) (not b!7568999) (not b!7569002) (not b!7569000) (not b!7568988) (not b!7568986) (not b!7568990) (not b!7568994) (not b!7569003) (not b!7568995) (not b!7568991) tp_is_empty!50353 (not b!7568989) (not b!7568997) (not start!731016) (not b!7569001) (not b!7568992) (not b!7568987))
(check-sat)
(get-model)

(declare-fun b!7569049 () Bool)

(declare-fun res!3032228 () Bool)

(declare-fun e!4506391 () Bool)

(assert (=> b!7569049 (=> res!3032228 e!4506391)))

(assert (=> b!7569049 (= res!3032228 (not ((_ is Concat!28844) r!24129)))))

(declare-fun e!4506396 () Bool)

(assert (=> b!7569049 (= e!4506396 e!4506391)))

(declare-fun b!7569050 () Bool)

(declare-fun res!3032229 () Bool)

(declare-fun e!4506395 () Bool)

(assert (=> b!7569050 (=> (not res!3032229) (not e!4506395))))

(declare-fun call!693950 () Bool)

(assert (=> b!7569050 (= res!3032229 call!693950)))

(assert (=> b!7569050 (= e!4506396 e!4506395)))

(declare-fun bm!693945 () Bool)

(declare-fun call!693952 () Bool)

(declare-fun call!693951 () Bool)

(assert (=> bm!693945 (= call!693952 call!693951)))

(declare-fun bm!693946 () Bool)

(declare-fun c!1396645 () Bool)

(assert (=> bm!693946 (= call!693950 (validRegex!10427 (ite c!1396645 (regOne!40511 r!24129) (regTwo!40510 r!24129))))))

(declare-fun b!7569051 () Bool)

(declare-fun e!4506397 () Bool)

(declare-fun e!4506392 () Bool)

(assert (=> b!7569051 (= e!4506397 e!4506392)))

(declare-fun c!1396646 () Bool)

(assert (=> b!7569051 (= c!1396646 ((_ is Star!19999) r!24129))))

(declare-fun bm!693947 () Bool)

(assert (=> bm!693947 (= call!693951 (validRegex!10427 (ite c!1396646 (reg!20328 r!24129) (ite c!1396645 (regTwo!40511 r!24129) (regOne!40510 r!24129)))))))

(declare-fun b!7569052 () Bool)

(declare-fun e!4506393 () Bool)

(assert (=> b!7569052 (= e!4506391 e!4506393)))

(declare-fun res!3032231 () Bool)

(assert (=> b!7569052 (=> (not res!3032231) (not e!4506393))))

(assert (=> b!7569052 (= res!3032231 call!693952)))

(declare-fun b!7569053 () Bool)

(assert (=> b!7569053 (= e!4506393 call!693950)))

(declare-fun b!7569054 () Bool)

(declare-fun e!4506394 () Bool)

(assert (=> b!7569054 (= e!4506392 e!4506394)))

(declare-fun res!3032232 () Bool)

(assert (=> b!7569054 (= res!3032232 (not (nullable!8725 (reg!20328 r!24129))))))

(assert (=> b!7569054 (=> (not res!3032232) (not e!4506394))))

(declare-fun d!2317267 () Bool)

(declare-fun res!3032230 () Bool)

(assert (=> d!2317267 (=> res!3032230 e!4506397)))

(assert (=> d!2317267 (= res!3032230 ((_ is ElementMatch!19999) r!24129))))

(assert (=> d!2317267 (= (validRegex!10427 r!24129) e!4506397)))

(declare-fun b!7569055 () Bool)

(assert (=> b!7569055 (= e!4506395 call!693952)))

(declare-fun b!7569056 () Bool)

(assert (=> b!7569056 (= e!4506392 e!4506396)))

(assert (=> b!7569056 (= c!1396645 ((_ is Union!19999) r!24129))))

(declare-fun b!7569057 () Bool)

(assert (=> b!7569057 (= e!4506394 call!693951)))

(assert (= (and d!2317267 (not res!3032230)) b!7569051))

(assert (= (and b!7569051 c!1396646) b!7569054))

(assert (= (and b!7569051 (not c!1396646)) b!7569056))

(assert (= (and b!7569054 res!3032232) b!7569057))

(assert (= (and b!7569056 c!1396645) b!7569050))

(assert (= (and b!7569056 (not c!1396645)) b!7569049))

(assert (= (and b!7569050 res!3032229) b!7569055))

(assert (= (and b!7569049 (not res!3032228)) b!7569052))

(assert (= (and b!7569052 res!3032231) b!7569053))

(assert (= (or b!7569055 b!7569052) bm!693945))

(assert (= (or b!7569050 b!7569053) bm!693946))

(assert (= (or b!7569057 bm!693945) bm!693947))

(declare-fun m!8131110 () Bool)

(assert (=> bm!693946 m!8131110))

(declare-fun m!8131112 () Bool)

(assert (=> bm!693947 m!8131112))

(declare-fun m!8131114 () Bool)

(assert (=> b!7569054 m!8131114))

(assert (=> b!7568994 d!2317267))

(declare-fun d!2317271 () Bool)

(declare-fun lt!2650944 () Regex!19999)

(assert (=> d!2317271 (validRegex!10427 lt!2650944)))

(declare-fun e!4506409 () Regex!19999)

(assert (=> d!2317271 (= lt!2650944 e!4506409)))

(declare-fun c!1396649 () Bool)

(assert (=> d!2317271 (= c!1396649 ((_ is Cons!72758) testedP!418))))

(assert (=> d!2317271 (validRegex!10427 baseR!100)))

(assert (=> d!2317271 (= (derivative!525 baseR!100 testedP!418) lt!2650944)))

(declare-fun b!7569074 () Bool)

(declare-fun derivativeStep!5764 (Regex!19999 C!40324) Regex!19999)

(assert (=> b!7569074 (= e!4506409 (derivative!525 (derivativeStep!5764 baseR!100 (h!79206 testedP!418)) (t!387617 testedP!418)))))

(declare-fun b!7569075 () Bool)

(assert (=> b!7569075 (= e!4506409 baseR!100)))

(assert (= (and d!2317271 c!1396649) b!7569074))

(assert (= (and d!2317271 (not c!1396649)) b!7569075))

(declare-fun m!8131126 () Bool)

(assert (=> d!2317271 m!8131126))

(assert (=> d!2317271 m!8131096))

(declare-fun m!8131128 () Bool)

(assert (=> b!7569074 m!8131128))

(assert (=> b!7569074 m!8131128))

(declare-fun m!8131130 () Bool)

(assert (=> b!7569074 m!8131130))

(assert (=> b!7568999 d!2317271))

(declare-fun b!7569076 () Bool)

(declare-fun res!3032245 () Bool)

(declare-fun e!4506410 () Bool)

(assert (=> b!7569076 (=> res!3032245 e!4506410)))

(assert (=> b!7569076 (= res!3032245 (not ((_ is Concat!28844) baseR!100)))))

(declare-fun e!4506415 () Bool)

(assert (=> b!7569076 (= e!4506415 e!4506410)))

(declare-fun b!7569077 () Bool)

(declare-fun res!3032246 () Bool)

(declare-fun e!4506414 () Bool)

(assert (=> b!7569077 (=> (not res!3032246) (not e!4506414))))

(declare-fun call!693953 () Bool)

(assert (=> b!7569077 (= res!3032246 call!693953)))

(assert (=> b!7569077 (= e!4506415 e!4506414)))

(declare-fun bm!693948 () Bool)

(declare-fun call!693955 () Bool)

(declare-fun call!693954 () Bool)

(assert (=> bm!693948 (= call!693955 call!693954)))

(declare-fun bm!693949 () Bool)

(declare-fun c!1396650 () Bool)

(assert (=> bm!693949 (= call!693953 (validRegex!10427 (ite c!1396650 (regOne!40511 baseR!100) (regTwo!40510 baseR!100))))))

(declare-fun b!7569078 () Bool)

(declare-fun e!4506416 () Bool)

(declare-fun e!4506411 () Bool)

(assert (=> b!7569078 (= e!4506416 e!4506411)))

(declare-fun c!1396651 () Bool)

(assert (=> b!7569078 (= c!1396651 ((_ is Star!19999) baseR!100))))

(declare-fun bm!693950 () Bool)

(assert (=> bm!693950 (= call!693954 (validRegex!10427 (ite c!1396651 (reg!20328 baseR!100) (ite c!1396650 (regTwo!40511 baseR!100) (regOne!40510 baseR!100)))))))

(declare-fun b!7569079 () Bool)

(declare-fun e!4506412 () Bool)

(assert (=> b!7569079 (= e!4506410 e!4506412)))

(declare-fun res!3032248 () Bool)

(assert (=> b!7569079 (=> (not res!3032248) (not e!4506412))))

(assert (=> b!7569079 (= res!3032248 call!693955)))

(declare-fun b!7569080 () Bool)

(assert (=> b!7569080 (= e!4506412 call!693953)))

(declare-fun b!7569081 () Bool)

(declare-fun e!4506413 () Bool)

(assert (=> b!7569081 (= e!4506411 e!4506413)))

(declare-fun res!3032249 () Bool)

(assert (=> b!7569081 (= res!3032249 (not (nullable!8725 (reg!20328 baseR!100))))))

(assert (=> b!7569081 (=> (not res!3032249) (not e!4506413))))

(declare-fun d!2317275 () Bool)

(declare-fun res!3032247 () Bool)

(assert (=> d!2317275 (=> res!3032247 e!4506416)))

(assert (=> d!2317275 (= res!3032247 ((_ is ElementMatch!19999) baseR!100))))

(assert (=> d!2317275 (= (validRegex!10427 baseR!100) e!4506416)))

(declare-fun b!7569082 () Bool)

(assert (=> b!7569082 (= e!4506414 call!693955)))

(declare-fun b!7569083 () Bool)

(assert (=> b!7569083 (= e!4506411 e!4506415)))

(assert (=> b!7569083 (= c!1396650 ((_ is Union!19999) baseR!100))))

(declare-fun b!7569084 () Bool)

(assert (=> b!7569084 (= e!4506413 call!693954)))

(assert (= (and d!2317275 (not res!3032247)) b!7569078))

(assert (= (and b!7569078 c!1396651) b!7569081))

(assert (= (and b!7569078 (not c!1396651)) b!7569083))

(assert (= (and b!7569081 res!3032249) b!7569084))

(assert (= (and b!7569083 c!1396650) b!7569077))

(assert (= (and b!7569083 (not c!1396650)) b!7569076))

(assert (= (and b!7569077 res!3032246) b!7569082))

(assert (= (and b!7569076 (not res!3032245)) b!7569079))

(assert (= (and b!7569079 res!3032248) b!7569080))

(assert (= (or b!7569082 b!7569079) bm!693948))

(assert (= (or b!7569077 b!7569080) bm!693949))

(assert (= (or b!7569084 bm!693948) bm!693950))

(declare-fun m!8131132 () Bool)

(assert (=> bm!693949 m!8131132))

(declare-fun m!8131134 () Bool)

(assert (=> bm!693950 m!8131134))

(declare-fun m!8131136 () Bool)

(assert (=> b!7569081 m!8131136))

(assert (=> start!731016 d!2317275))

(declare-fun b!7569155 () Bool)

(declare-fun res!3032296 () Bool)

(declare-fun e!4506458 () Bool)

(assert (=> b!7569155 (=> (not res!3032296) (not e!4506458))))

(declare-fun isEmpty!41427 (List!72882) Bool)

(declare-fun tail!15105 (List!72882) List!72882)

(assert (=> b!7569155 (= res!3032296 (isEmpty!41427 (tail!15105 Nil!72758)))))

(declare-fun b!7569156 () Bool)

(declare-fun e!4506455 () Bool)

(declare-fun e!4506453 () Bool)

(assert (=> b!7569156 (= e!4506455 e!4506453)))

(declare-fun res!3032295 () Bool)

(assert (=> b!7569156 (=> res!3032295 e!4506453)))

(declare-fun call!693961 () Bool)

(assert (=> b!7569156 (= res!3032295 call!693961)))

(declare-fun b!7569157 () Bool)

(declare-fun e!4506457 () Bool)

(assert (=> b!7569157 (= e!4506457 e!4506455)))

(declare-fun res!3032293 () Bool)

(assert (=> b!7569157 (=> (not res!3032293) (not e!4506455))))

(declare-fun lt!2650950 () Bool)

(assert (=> b!7569157 (= res!3032293 (not lt!2650950))))

(declare-fun b!7569158 () Bool)

(declare-fun head!15565 (List!72882) C!40324)

(assert (=> b!7569158 (= e!4506453 (not (= (head!15565 Nil!72758) (c!1396634 r!24129))))))

(declare-fun d!2317277 () Bool)

(declare-fun e!4506452 () Bool)

(assert (=> d!2317277 e!4506452))

(declare-fun c!1396669 () Bool)

(assert (=> d!2317277 (= c!1396669 ((_ is EmptyExpr!19999) r!24129))))

(declare-fun e!4506456 () Bool)

(assert (=> d!2317277 (= lt!2650950 e!4506456)))

(declare-fun c!1396668 () Bool)

(assert (=> d!2317277 (= c!1396668 (isEmpty!41427 Nil!72758))))

(assert (=> d!2317277 (validRegex!10427 r!24129)))

(assert (=> d!2317277 (= (matchR!9599 r!24129 Nil!72758) lt!2650950)))

(declare-fun b!7569159 () Bool)

(assert (=> b!7569159 (= e!4506456 (matchR!9599 (derivativeStep!5764 r!24129 (head!15565 Nil!72758)) (tail!15105 Nil!72758)))))

(declare-fun bm!693956 () Bool)

(assert (=> bm!693956 (= call!693961 (isEmpty!41427 Nil!72758))))

(declare-fun b!7569160 () Bool)

(declare-fun e!4506454 () Bool)

(assert (=> b!7569160 (= e!4506452 e!4506454)))

(declare-fun c!1396667 () Bool)

(assert (=> b!7569160 (= c!1396667 ((_ is EmptyLang!19999) r!24129))))

(declare-fun b!7569161 () Bool)

(assert (=> b!7569161 (= e!4506458 (= (head!15565 Nil!72758) (c!1396634 r!24129)))))

(declare-fun b!7569162 () Bool)

(declare-fun res!3032297 () Bool)

(assert (=> b!7569162 (=> res!3032297 e!4506453)))

(assert (=> b!7569162 (= res!3032297 (not (isEmpty!41427 (tail!15105 Nil!72758))))))

(declare-fun b!7569163 () Bool)

(assert (=> b!7569163 (= e!4506456 (nullable!8725 r!24129))))

(declare-fun b!7569164 () Bool)

(declare-fun res!3032292 () Bool)

(assert (=> b!7569164 (=> res!3032292 e!4506457)))

(assert (=> b!7569164 (= res!3032292 e!4506458)))

(declare-fun res!3032290 () Bool)

(assert (=> b!7569164 (=> (not res!3032290) (not e!4506458))))

(assert (=> b!7569164 (= res!3032290 lt!2650950)))

(declare-fun b!7569165 () Bool)

(assert (=> b!7569165 (= e!4506452 (= lt!2650950 call!693961))))

(declare-fun b!7569166 () Bool)

(declare-fun res!3032291 () Bool)

(assert (=> b!7569166 (=> (not res!3032291) (not e!4506458))))

(assert (=> b!7569166 (= res!3032291 (not call!693961))))

(declare-fun b!7569167 () Bool)

(declare-fun res!3032294 () Bool)

(assert (=> b!7569167 (=> res!3032294 e!4506457)))

(assert (=> b!7569167 (= res!3032294 (not ((_ is ElementMatch!19999) r!24129)))))

(assert (=> b!7569167 (= e!4506454 e!4506457)))

(declare-fun b!7569168 () Bool)

(assert (=> b!7569168 (= e!4506454 (not lt!2650950))))

(assert (= (and d!2317277 c!1396668) b!7569163))

(assert (= (and d!2317277 (not c!1396668)) b!7569159))

(assert (= (and d!2317277 c!1396669) b!7569165))

(assert (= (and d!2317277 (not c!1396669)) b!7569160))

(assert (= (and b!7569160 c!1396667) b!7569168))

(assert (= (and b!7569160 (not c!1396667)) b!7569167))

(assert (= (and b!7569167 (not res!3032294)) b!7569164))

(assert (= (and b!7569164 res!3032290) b!7569166))

(assert (= (and b!7569166 res!3032291) b!7569155))

(assert (= (and b!7569155 res!3032296) b!7569161))

(assert (= (and b!7569164 (not res!3032292)) b!7569157))

(assert (= (and b!7569157 res!3032293) b!7569156))

(assert (= (and b!7569156 (not res!3032295)) b!7569162))

(assert (= (and b!7569162 (not res!3032297)) b!7569158))

(assert (= (or b!7569165 b!7569156 b!7569166) bm!693956))

(declare-fun m!8131148 () Bool)

(assert (=> b!7569162 m!8131148))

(assert (=> b!7569162 m!8131148))

(declare-fun m!8131150 () Bool)

(assert (=> b!7569162 m!8131150))

(declare-fun m!8131152 () Bool)

(assert (=> bm!693956 m!8131152))

(declare-fun m!8131154 () Bool)

(assert (=> b!7569161 m!8131154))

(assert (=> b!7569155 m!8131148))

(assert (=> b!7569155 m!8131148))

(assert (=> b!7569155 m!8131150))

(assert (=> b!7569163 m!8131094))

(assert (=> d!2317277 m!8131152))

(assert (=> d!2317277 m!8131082))

(assert (=> b!7569159 m!8131154))

(assert (=> b!7569159 m!8131154))

(declare-fun m!8131156 () Bool)

(assert (=> b!7569159 m!8131156))

(assert (=> b!7569159 m!8131148))

(assert (=> b!7569159 m!8131156))

(assert (=> b!7569159 m!8131148))

(declare-fun m!8131158 () Bool)

(assert (=> b!7569159 m!8131158))

(assert (=> b!7569158 m!8131154))

(assert (=> b!7568990 d!2317277))

(declare-fun b!7569173 () Bool)

(declare-fun res!3032304 () Bool)

(declare-fun e!4506467 () Bool)

(assert (=> b!7569173 (=> (not res!3032304) (not e!4506467))))

(assert (=> b!7569173 (= res!3032304 (isEmpty!41427 (tail!15105 Nil!72758)))))

(declare-fun b!7569174 () Bool)

(declare-fun e!4506464 () Bool)

(declare-fun e!4506462 () Bool)

(assert (=> b!7569174 (= e!4506464 e!4506462)))

(declare-fun res!3032303 () Bool)

(assert (=> b!7569174 (=> res!3032303 e!4506462)))

(declare-fun call!693962 () Bool)

(assert (=> b!7569174 (= res!3032303 call!693962)))

(declare-fun b!7569175 () Bool)

(declare-fun e!4506466 () Bool)

(assert (=> b!7569175 (= e!4506466 e!4506464)))

(declare-fun res!3032301 () Bool)

(assert (=> b!7569175 (=> (not res!3032301) (not e!4506464))))

(declare-fun lt!2650953 () Bool)

(assert (=> b!7569175 (= res!3032301 (not lt!2650953))))

(declare-fun b!7569176 () Bool)

(assert (=> b!7569176 (= e!4506462 (not (= (head!15565 Nil!72758) (c!1396634 lt!2650938))))))

(declare-fun d!2317281 () Bool)

(declare-fun e!4506461 () Bool)

(assert (=> d!2317281 e!4506461))

(declare-fun c!1396674 () Bool)

(assert (=> d!2317281 (= c!1396674 ((_ is EmptyExpr!19999) lt!2650938))))

(declare-fun e!4506465 () Bool)

(assert (=> d!2317281 (= lt!2650953 e!4506465)))

(declare-fun c!1396673 () Bool)

(assert (=> d!2317281 (= c!1396673 (isEmpty!41427 Nil!72758))))

(assert (=> d!2317281 (validRegex!10427 lt!2650938)))

(assert (=> d!2317281 (= (matchR!9599 lt!2650938 Nil!72758) lt!2650953)))

(declare-fun b!7569177 () Bool)

(assert (=> b!7569177 (= e!4506465 (matchR!9599 (derivativeStep!5764 lt!2650938 (head!15565 Nil!72758)) (tail!15105 Nil!72758)))))

(declare-fun bm!693957 () Bool)

(assert (=> bm!693957 (= call!693962 (isEmpty!41427 Nil!72758))))

(declare-fun b!7569178 () Bool)

(declare-fun e!4506463 () Bool)

(assert (=> b!7569178 (= e!4506461 e!4506463)))

(declare-fun c!1396672 () Bool)

(assert (=> b!7569178 (= c!1396672 ((_ is EmptyLang!19999) lt!2650938))))

(declare-fun b!7569179 () Bool)

(assert (=> b!7569179 (= e!4506467 (= (head!15565 Nil!72758) (c!1396634 lt!2650938)))))

(declare-fun b!7569180 () Bool)

(declare-fun res!3032305 () Bool)

(assert (=> b!7569180 (=> res!3032305 e!4506462)))

(assert (=> b!7569180 (= res!3032305 (not (isEmpty!41427 (tail!15105 Nil!72758))))))

(declare-fun b!7569181 () Bool)

(assert (=> b!7569181 (= e!4506465 (nullable!8725 lt!2650938))))

(declare-fun b!7569182 () Bool)

(declare-fun res!3032300 () Bool)

(assert (=> b!7569182 (=> res!3032300 e!4506466)))

(assert (=> b!7569182 (= res!3032300 e!4506467)))

(declare-fun res!3032298 () Bool)

(assert (=> b!7569182 (=> (not res!3032298) (not e!4506467))))

(assert (=> b!7569182 (= res!3032298 lt!2650953)))

(declare-fun b!7569183 () Bool)

(assert (=> b!7569183 (= e!4506461 (= lt!2650953 call!693962))))

(declare-fun b!7569184 () Bool)

(declare-fun res!3032299 () Bool)

(assert (=> b!7569184 (=> (not res!3032299) (not e!4506467))))

(assert (=> b!7569184 (= res!3032299 (not call!693962))))

(declare-fun b!7569185 () Bool)

(declare-fun res!3032302 () Bool)

(assert (=> b!7569185 (=> res!3032302 e!4506466)))

(assert (=> b!7569185 (= res!3032302 (not ((_ is ElementMatch!19999) lt!2650938)))))

(assert (=> b!7569185 (= e!4506463 e!4506466)))

(declare-fun b!7569186 () Bool)

(assert (=> b!7569186 (= e!4506463 (not lt!2650953))))

(assert (= (and d!2317281 c!1396673) b!7569181))

(assert (= (and d!2317281 (not c!1396673)) b!7569177))

(assert (= (and d!2317281 c!1396674) b!7569183))

(assert (= (and d!2317281 (not c!1396674)) b!7569178))

(assert (= (and b!7569178 c!1396672) b!7569186))

(assert (= (and b!7569178 (not c!1396672)) b!7569185))

(assert (= (and b!7569185 (not res!3032302)) b!7569182))

(assert (= (and b!7569182 res!3032298) b!7569184))

(assert (= (and b!7569184 res!3032299) b!7569173))

(assert (= (and b!7569173 res!3032304) b!7569179))

(assert (= (and b!7569182 (not res!3032300)) b!7569175))

(assert (= (and b!7569175 res!3032301) b!7569174))

(assert (= (and b!7569174 (not res!3032303)) b!7569180))

(assert (= (and b!7569180 (not res!3032305)) b!7569176))

(assert (= (or b!7569183 b!7569174 b!7569184) bm!693957))

(assert (=> b!7569180 m!8131148))

(assert (=> b!7569180 m!8131148))

(assert (=> b!7569180 m!8131150))

(assert (=> bm!693957 m!8131152))

(assert (=> b!7569179 m!8131154))

(assert (=> b!7569173 m!8131148))

(assert (=> b!7569173 m!8131148))

(assert (=> b!7569173 m!8131150))

(declare-fun m!8131164 () Bool)

(assert (=> b!7569181 m!8131164))

(assert (=> d!2317281 m!8131152))

(declare-fun m!8131166 () Bool)

(assert (=> d!2317281 m!8131166))

(assert (=> b!7569177 m!8131154))

(assert (=> b!7569177 m!8131154))

(declare-fun m!8131168 () Bool)

(assert (=> b!7569177 m!8131168))

(assert (=> b!7569177 m!8131148))

(assert (=> b!7569177 m!8131168))

(assert (=> b!7569177 m!8131148))

(declare-fun m!8131170 () Bool)

(assert (=> b!7569177 m!8131170))

(assert (=> b!7569176 m!8131154))

(assert (=> b!7568990 d!2317281))

(declare-fun d!2317287 () Bool)

(assert (=> d!2317287 (= (matchR!9599 baseR!100 testedP!418) (matchR!9599 (derivative!525 baseR!100 testedP!418) Nil!72758))))

(declare-fun lt!2650960 () Unit!166950)

(declare-fun choose!58534 (Regex!19999 List!72882) Unit!166950)

(assert (=> d!2317287 (= lt!2650960 (choose!58534 baseR!100 testedP!418))))

(assert (=> d!2317287 (validRegex!10427 baseR!100)))

(assert (=> d!2317287 (= (lemmaMatchRIsSameAsWholeDerivativeAndNil!268 baseR!100 testedP!418) lt!2650960)))

(declare-fun bs!1940561 () Bool)

(assert (= bs!1940561 d!2317287))

(assert (=> bs!1940561 m!8131098))

(declare-fun m!8131194 () Bool)

(assert (=> bs!1940561 m!8131194))

(assert (=> bs!1940561 m!8131100))

(assert (=> bs!1940561 m!8131098))

(assert (=> bs!1940561 m!8131096))

(declare-fun m!8131196 () Bool)

(assert (=> bs!1940561 m!8131196))

(assert (=> b!7568990 d!2317287))

(declare-fun b!7569219 () Bool)

(declare-fun res!3032328 () Bool)

(declare-fun e!4506490 () Bool)

(assert (=> b!7569219 (=> (not res!3032328) (not e!4506490))))

(assert (=> b!7569219 (= res!3032328 (isEmpty!41427 (tail!15105 testedP!418)))))

(declare-fun b!7569220 () Bool)

(declare-fun e!4506487 () Bool)

(declare-fun e!4506485 () Bool)

(assert (=> b!7569220 (= e!4506487 e!4506485)))

(declare-fun res!3032327 () Bool)

(assert (=> b!7569220 (=> res!3032327 e!4506485)))

(declare-fun call!693965 () Bool)

(assert (=> b!7569220 (= res!3032327 call!693965)))

(declare-fun b!7569221 () Bool)

(declare-fun e!4506489 () Bool)

(assert (=> b!7569221 (= e!4506489 e!4506487)))

(declare-fun res!3032325 () Bool)

(assert (=> b!7569221 (=> (not res!3032325) (not e!4506487))))

(declare-fun lt!2650961 () Bool)

(assert (=> b!7569221 (= res!3032325 (not lt!2650961))))

(declare-fun b!7569222 () Bool)

(assert (=> b!7569222 (= e!4506485 (not (= (head!15565 testedP!418) (c!1396634 baseR!100))))))

(declare-fun d!2317295 () Bool)

(declare-fun e!4506484 () Bool)

(assert (=> d!2317295 e!4506484))

(declare-fun c!1396685 () Bool)

(assert (=> d!2317295 (= c!1396685 ((_ is EmptyExpr!19999) baseR!100))))

(declare-fun e!4506488 () Bool)

(assert (=> d!2317295 (= lt!2650961 e!4506488)))

(declare-fun c!1396684 () Bool)

(assert (=> d!2317295 (= c!1396684 (isEmpty!41427 testedP!418))))

(assert (=> d!2317295 (validRegex!10427 baseR!100)))

(assert (=> d!2317295 (= (matchR!9599 baseR!100 testedP!418) lt!2650961)))

(declare-fun b!7569223 () Bool)

(assert (=> b!7569223 (= e!4506488 (matchR!9599 (derivativeStep!5764 baseR!100 (head!15565 testedP!418)) (tail!15105 testedP!418)))))

(declare-fun bm!693960 () Bool)

(assert (=> bm!693960 (= call!693965 (isEmpty!41427 testedP!418))))

(declare-fun b!7569224 () Bool)

(declare-fun e!4506486 () Bool)

(assert (=> b!7569224 (= e!4506484 e!4506486)))

(declare-fun c!1396683 () Bool)

(assert (=> b!7569224 (= c!1396683 ((_ is EmptyLang!19999) baseR!100))))

(declare-fun b!7569225 () Bool)

(assert (=> b!7569225 (= e!4506490 (= (head!15565 testedP!418) (c!1396634 baseR!100)))))

(declare-fun b!7569226 () Bool)

(declare-fun res!3032329 () Bool)

(assert (=> b!7569226 (=> res!3032329 e!4506485)))

(assert (=> b!7569226 (= res!3032329 (not (isEmpty!41427 (tail!15105 testedP!418))))))

(declare-fun b!7569227 () Bool)

(assert (=> b!7569227 (= e!4506488 (nullable!8725 baseR!100))))

(declare-fun b!7569228 () Bool)

(declare-fun res!3032324 () Bool)

(assert (=> b!7569228 (=> res!3032324 e!4506489)))

(assert (=> b!7569228 (= res!3032324 e!4506490)))

(declare-fun res!3032322 () Bool)

(assert (=> b!7569228 (=> (not res!3032322) (not e!4506490))))

(assert (=> b!7569228 (= res!3032322 lt!2650961)))

(declare-fun b!7569229 () Bool)

(assert (=> b!7569229 (= e!4506484 (= lt!2650961 call!693965))))

(declare-fun b!7569230 () Bool)

(declare-fun res!3032323 () Bool)

(assert (=> b!7569230 (=> (not res!3032323) (not e!4506490))))

(assert (=> b!7569230 (= res!3032323 (not call!693965))))

(declare-fun b!7569231 () Bool)

(declare-fun res!3032326 () Bool)

(assert (=> b!7569231 (=> res!3032326 e!4506489)))

(assert (=> b!7569231 (= res!3032326 (not ((_ is ElementMatch!19999) baseR!100)))))

(assert (=> b!7569231 (= e!4506486 e!4506489)))

(declare-fun b!7569232 () Bool)

(assert (=> b!7569232 (= e!4506486 (not lt!2650961))))

(assert (= (and d!2317295 c!1396684) b!7569227))

(assert (= (and d!2317295 (not c!1396684)) b!7569223))

(assert (= (and d!2317295 c!1396685) b!7569229))

(assert (= (and d!2317295 (not c!1396685)) b!7569224))

(assert (= (and b!7569224 c!1396683) b!7569232))

(assert (= (and b!7569224 (not c!1396683)) b!7569231))

(assert (= (and b!7569231 (not res!3032326)) b!7569228))

(assert (= (and b!7569228 res!3032322) b!7569230))

(assert (= (and b!7569230 res!3032323) b!7569219))

(assert (= (and b!7569219 res!3032328) b!7569225))

(assert (= (and b!7569228 (not res!3032324)) b!7569221))

(assert (= (and b!7569221 res!3032325) b!7569220))

(assert (= (and b!7569220 (not res!3032327)) b!7569226))

(assert (= (and b!7569226 (not res!3032329)) b!7569222))

(assert (= (or b!7569229 b!7569220 b!7569230) bm!693960))

(declare-fun m!8131198 () Bool)

(assert (=> b!7569226 m!8131198))

(assert (=> b!7569226 m!8131198))

(declare-fun m!8131200 () Bool)

(assert (=> b!7569226 m!8131200))

(declare-fun m!8131202 () Bool)

(assert (=> bm!693960 m!8131202))

(declare-fun m!8131204 () Bool)

(assert (=> b!7569225 m!8131204))

(assert (=> b!7569219 m!8131198))

(assert (=> b!7569219 m!8131198))

(assert (=> b!7569219 m!8131200))

(declare-fun m!8131206 () Bool)

(assert (=> b!7569227 m!8131206))

(assert (=> d!2317295 m!8131202))

(assert (=> d!2317295 m!8131096))

(assert (=> b!7569223 m!8131204))

(assert (=> b!7569223 m!8131204))

(declare-fun m!8131208 () Bool)

(assert (=> b!7569223 m!8131208))

(assert (=> b!7569223 m!8131198))

(assert (=> b!7569223 m!8131208))

(assert (=> b!7569223 m!8131198))

(declare-fun m!8131210 () Bool)

(assert (=> b!7569223 m!8131210))

(assert (=> b!7569222 m!8131204))

(assert (=> b!7568995 d!2317295))

(declare-fun b!7569250 () Bool)

(declare-fun e!4506506 () Bool)

(declare-fun e!4506505 () Bool)

(assert (=> b!7569250 (= e!4506506 e!4506505)))

(declare-fun res!3032343 () Bool)

(assert (=> b!7569250 (=> (not res!3032343) (not e!4506505))))

(assert (=> b!7569250 (= res!3032343 (not ((_ is Nil!72758) input!7855)))))

(declare-fun b!7569253 () Bool)

(declare-fun e!4506504 () Bool)

(assert (=> b!7569253 (= e!4506504 (>= (size!42483 input!7855) (size!42483 testedP!418)))))

(declare-fun d!2317297 () Bool)

(assert (=> d!2317297 e!4506504))

(declare-fun res!3032345 () Bool)

(assert (=> d!2317297 (=> res!3032345 e!4506504)))

(declare-fun lt!2650967 () Bool)

(assert (=> d!2317297 (= res!3032345 (not lt!2650967))))

(assert (=> d!2317297 (= lt!2650967 e!4506506)))

(declare-fun res!3032346 () Bool)

(assert (=> d!2317297 (=> res!3032346 e!4506506)))

(assert (=> d!2317297 (= res!3032346 ((_ is Nil!72758) testedP!418))))

(assert (=> d!2317297 (= (isPrefix!6205 testedP!418 input!7855) lt!2650967)))

(declare-fun b!7569252 () Bool)

(assert (=> b!7569252 (= e!4506505 (isPrefix!6205 (tail!15105 testedP!418) (tail!15105 input!7855)))))

(declare-fun b!7569251 () Bool)

(declare-fun res!3032344 () Bool)

(assert (=> b!7569251 (=> (not res!3032344) (not e!4506505))))

(assert (=> b!7569251 (= res!3032344 (= (head!15565 testedP!418) (head!15565 input!7855)))))

(assert (= (and d!2317297 (not res!3032346)) b!7569250))

(assert (= (and b!7569250 res!3032343) b!7569251))

(assert (= (and b!7569251 res!3032344) b!7569252))

(assert (= (and d!2317297 (not res!3032345)) b!7569253))

(assert (=> b!7569253 m!8131084))

(assert (=> b!7569253 m!8131086))

(assert (=> b!7569252 m!8131198))

(declare-fun m!8131222 () Bool)

(assert (=> b!7569252 m!8131222))

(assert (=> b!7569252 m!8131198))

(assert (=> b!7569252 m!8131222))

(declare-fun m!8131224 () Bool)

(assert (=> b!7569252 m!8131224))

(assert (=> b!7569251 m!8131204))

(declare-fun m!8131226 () Bool)

(assert (=> b!7569251 m!8131226))

(assert (=> b!7568986 d!2317297))

(declare-fun d!2317303 () Bool)

(declare-fun lostCauseFct!474 (Regex!19999) Bool)

(assert (=> d!2317303 (= (lostCause!1779 r!24129) (lostCauseFct!474 r!24129))))

(declare-fun bs!1940563 () Bool)

(assert (= bs!1940563 d!2317303))

(declare-fun m!8131228 () Bool)

(assert (=> bs!1940563 m!8131228))

(assert (=> b!7569003 d!2317303))

(declare-fun d!2317305 () Bool)

(declare-fun lt!2650973 () Int)

(assert (=> d!2317305 (>= lt!2650973 0)))

(declare-fun e!4506516 () Int)

(assert (=> d!2317305 (= lt!2650973 e!4506516)))

(declare-fun c!1396693 () Bool)

(assert (=> d!2317305 (= c!1396693 ((_ is Nil!72758) input!7855))))

(assert (=> d!2317305 (= (size!42483 input!7855) lt!2650973)))

(declare-fun b!7569282 () Bool)

(assert (=> b!7569282 (= e!4506516 0)))

(declare-fun b!7569283 () Bool)

(assert (=> b!7569283 (= e!4506516 (+ 1 (size!42483 (t!387617 input!7855))))))

(assert (= (and d!2317305 c!1396693) b!7569282))

(assert (= (and d!2317305 (not c!1396693)) b!7569283))

(declare-fun m!8131236 () Bool)

(assert (=> b!7569283 m!8131236))

(assert (=> b!7568992 d!2317305))

(declare-fun d!2317307 () Bool)

(declare-fun lt!2650974 () Int)

(assert (=> d!2317307 (>= lt!2650974 0)))

(declare-fun e!4506519 () Int)

(assert (=> d!2317307 (= lt!2650974 e!4506519)))

(declare-fun c!1396694 () Bool)

(assert (=> d!2317307 (= c!1396694 ((_ is Nil!72758) testedP!418))))

(assert (=> d!2317307 (= (size!42483 testedP!418) lt!2650974)))

(declare-fun b!7569292 () Bool)

(assert (=> b!7569292 (= e!4506519 0)))

(declare-fun b!7569293 () Bool)

(assert (=> b!7569293 (= e!4506519 (+ 1 (size!42483 (t!387617 testedP!418))))))

(assert (= (and d!2317307 c!1396694) b!7569292))

(assert (= (and d!2317307 (not c!1396694)) b!7569293))

(declare-fun m!8131238 () Bool)

(assert (=> b!7569293 m!8131238))

(assert (=> b!7568992 d!2317307))

(declare-fun d!2317309 () Bool)

(declare-fun nullableFct!3482 (Regex!19999) Bool)

(assert (=> d!2317309 (= (nullable!8725 r!24129) (nullableFct!3482 r!24129))))

(declare-fun bs!1940564 () Bool)

(assert (= bs!1940564 d!2317309))

(declare-fun m!8131240 () Bool)

(assert (=> bs!1940564 m!8131240))

(assert (=> b!7568997 d!2317309))

(declare-fun b!7569336 () Bool)

(declare-fun e!4506532 () Bool)

(declare-fun tp!2204907 () Bool)

(assert (=> b!7569336 (= e!4506532 tp!2204907)))

(declare-fun b!7569335 () Bool)

(declare-fun tp!2204904 () Bool)

(declare-fun tp!2204908 () Bool)

(assert (=> b!7569335 (= e!4506532 (and tp!2204904 tp!2204908))))

(assert (=> b!7568988 (= tp!2204822 e!4506532)))

(declare-fun b!7569337 () Bool)

(declare-fun tp!2204906 () Bool)

(declare-fun tp!2204905 () Bool)

(assert (=> b!7569337 (= e!4506532 (and tp!2204906 tp!2204905))))

(declare-fun b!7569334 () Bool)

(assert (=> b!7569334 (= e!4506532 tp_is_empty!50353)))

(assert (= (and b!7568988 ((_ is ElementMatch!19999) (regOne!40511 r!24129))) b!7569334))

(assert (= (and b!7568988 ((_ is Concat!28844) (regOne!40511 r!24129))) b!7569335))

(assert (= (and b!7568988 ((_ is Star!19999) (regOne!40511 r!24129))) b!7569336))

(assert (= (and b!7568988 ((_ is Union!19999) (regOne!40511 r!24129))) b!7569337))

(declare-fun b!7569340 () Bool)

(declare-fun e!4506533 () Bool)

(declare-fun tp!2204912 () Bool)

(assert (=> b!7569340 (= e!4506533 tp!2204912)))

(declare-fun b!7569339 () Bool)

(declare-fun tp!2204909 () Bool)

(declare-fun tp!2204913 () Bool)

(assert (=> b!7569339 (= e!4506533 (and tp!2204909 tp!2204913))))

(assert (=> b!7568988 (= tp!2204820 e!4506533)))

(declare-fun b!7569341 () Bool)

(declare-fun tp!2204911 () Bool)

(declare-fun tp!2204910 () Bool)

(assert (=> b!7569341 (= e!4506533 (and tp!2204911 tp!2204910))))

(declare-fun b!7569338 () Bool)

(assert (=> b!7569338 (= e!4506533 tp_is_empty!50353)))

(assert (= (and b!7568988 ((_ is ElementMatch!19999) (regTwo!40511 r!24129))) b!7569338))

(assert (= (and b!7568988 ((_ is Concat!28844) (regTwo!40511 r!24129))) b!7569339))

(assert (= (and b!7568988 ((_ is Star!19999) (regTwo!40511 r!24129))) b!7569340))

(assert (= (and b!7568988 ((_ is Union!19999) (regTwo!40511 r!24129))) b!7569341))

(declare-fun b!7569344 () Bool)

(declare-fun e!4506534 () Bool)

(declare-fun tp!2204917 () Bool)

(assert (=> b!7569344 (= e!4506534 tp!2204917)))

(declare-fun b!7569343 () Bool)

(declare-fun tp!2204914 () Bool)

(declare-fun tp!2204918 () Bool)

(assert (=> b!7569343 (= e!4506534 (and tp!2204914 tp!2204918))))

(assert (=> b!7569000 (= tp!2204821 e!4506534)))

(declare-fun b!7569345 () Bool)

(declare-fun tp!2204916 () Bool)

(declare-fun tp!2204915 () Bool)

(assert (=> b!7569345 (= e!4506534 (and tp!2204916 tp!2204915))))

(declare-fun b!7569342 () Bool)

(assert (=> b!7569342 (= e!4506534 tp_is_empty!50353)))

(assert (= (and b!7569000 ((_ is ElementMatch!19999) (regOne!40510 baseR!100))) b!7569342))

(assert (= (and b!7569000 ((_ is Concat!28844) (regOne!40510 baseR!100))) b!7569343))

(assert (= (and b!7569000 ((_ is Star!19999) (regOne!40510 baseR!100))) b!7569344))

(assert (= (and b!7569000 ((_ is Union!19999) (regOne!40510 baseR!100))) b!7569345))

(declare-fun b!7569348 () Bool)

(declare-fun e!4506535 () Bool)

(declare-fun tp!2204922 () Bool)

(assert (=> b!7569348 (= e!4506535 tp!2204922)))

(declare-fun b!7569347 () Bool)

(declare-fun tp!2204919 () Bool)

(declare-fun tp!2204923 () Bool)

(assert (=> b!7569347 (= e!4506535 (and tp!2204919 tp!2204923))))

(assert (=> b!7569000 (= tp!2204818 e!4506535)))

(declare-fun b!7569349 () Bool)

(declare-fun tp!2204921 () Bool)

(declare-fun tp!2204920 () Bool)

(assert (=> b!7569349 (= e!4506535 (and tp!2204921 tp!2204920))))

(declare-fun b!7569346 () Bool)

(assert (=> b!7569346 (= e!4506535 tp_is_empty!50353)))

(assert (= (and b!7569000 ((_ is ElementMatch!19999) (regTwo!40510 baseR!100))) b!7569346))

(assert (= (and b!7569000 ((_ is Concat!28844) (regTwo!40510 baseR!100))) b!7569347))

(assert (= (and b!7569000 ((_ is Star!19999) (regTwo!40510 baseR!100))) b!7569348))

(assert (= (and b!7569000 ((_ is Union!19999) (regTwo!40510 baseR!100))) b!7569349))

(declare-fun b!7569352 () Bool)

(declare-fun e!4506536 () Bool)

(declare-fun tp!2204927 () Bool)

(assert (=> b!7569352 (= e!4506536 tp!2204927)))

(declare-fun b!7569351 () Bool)

(declare-fun tp!2204924 () Bool)

(declare-fun tp!2204928 () Bool)

(assert (=> b!7569351 (= e!4506536 (and tp!2204924 tp!2204928))))

(assert (=> b!7568989 (= tp!2204825 e!4506536)))

(declare-fun b!7569353 () Bool)

(declare-fun tp!2204926 () Bool)

(declare-fun tp!2204925 () Bool)

(assert (=> b!7569353 (= e!4506536 (and tp!2204926 tp!2204925))))

(declare-fun b!7569350 () Bool)

(assert (=> b!7569350 (= e!4506536 tp_is_empty!50353)))

(assert (= (and b!7568989 ((_ is ElementMatch!19999) (regOne!40511 baseR!100))) b!7569350))

(assert (= (and b!7568989 ((_ is Concat!28844) (regOne!40511 baseR!100))) b!7569351))

(assert (= (and b!7568989 ((_ is Star!19999) (regOne!40511 baseR!100))) b!7569352))

(assert (= (and b!7568989 ((_ is Union!19999) (regOne!40511 baseR!100))) b!7569353))

(declare-fun b!7569356 () Bool)

(declare-fun e!4506537 () Bool)

(declare-fun tp!2204932 () Bool)

(assert (=> b!7569356 (= e!4506537 tp!2204932)))

(declare-fun b!7569355 () Bool)

(declare-fun tp!2204929 () Bool)

(declare-fun tp!2204933 () Bool)

(assert (=> b!7569355 (= e!4506537 (and tp!2204929 tp!2204933))))

(assert (=> b!7568989 (= tp!2204827 e!4506537)))

(declare-fun b!7569357 () Bool)

(declare-fun tp!2204931 () Bool)

(declare-fun tp!2204930 () Bool)

(assert (=> b!7569357 (= e!4506537 (and tp!2204931 tp!2204930))))

(declare-fun b!7569354 () Bool)

(assert (=> b!7569354 (= e!4506537 tp_is_empty!50353)))

(assert (= (and b!7568989 ((_ is ElementMatch!19999) (regTwo!40511 baseR!100))) b!7569354))

(assert (= (and b!7568989 ((_ is Concat!28844) (regTwo!40511 baseR!100))) b!7569355))

(assert (= (and b!7568989 ((_ is Star!19999) (regTwo!40511 baseR!100))) b!7569356))

(assert (= (and b!7568989 ((_ is Union!19999) (regTwo!40511 baseR!100))) b!7569357))

(declare-fun b!7569360 () Bool)

(declare-fun e!4506538 () Bool)

(declare-fun tp!2204937 () Bool)

(assert (=> b!7569360 (= e!4506538 tp!2204937)))

(declare-fun b!7569359 () Bool)

(declare-fun tp!2204934 () Bool)

(declare-fun tp!2204938 () Bool)

(assert (=> b!7569359 (= e!4506538 (and tp!2204934 tp!2204938))))

(assert (=> b!7569002 (= tp!2204824 e!4506538)))

(declare-fun b!7569361 () Bool)

(declare-fun tp!2204936 () Bool)

(declare-fun tp!2204935 () Bool)

(assert (=> b!7569361 (= e!4506538 (and tp!2204936 tp!2204935))))

(declare-fun b!7569358 () Bool)

(assert (=> b!7569358 (= e!4506538 tp_is_empty!50353)))

(assert (= (and b!7569002 ((_ is ElementMatch!19999) (reg!20328 r!24129))) b!7569358))

(assert (= (and b!7569002 ((_ is Concat!28844) (reg!20328 r!24129))) b!7569359))

(assert (= (and b!7569002 ((_ is Star!19999) (reg!20328 r!24129))) b!7569360))

(assert (= (and b!7569002 ((_ is Union!19999) (reg!20328 r!24129))) b!7569361))

(declare-fun b!7569364 () Bool)

(declare-fun e!4506539 () Bool)

(declare-fun tp!2204942 () Bool)

(assert (=> b!7569364 (= e!4506539 tp!2204942)))

(declare-fun b!7569363 () Bool)

(declare-fun tp!2204939 () Bool)

(declare-fun tp!2204943 () Bool)

(assert (=> b!7569363 (= e!4506539 (and tp!2204939 tp!2204943))))

(assert (=> b!7568991 (= tp!2204819 e!4506539)))

(declare-fun b!7569365 () Bool)

(declare-fun tp!2204941 () Bool)

(declare-fun tp!2204940 () Bool)

(assert (=> b!7569365 (= e!4506539 (and tp!2204941 tp!2204940))))

(declare-fun b!7569362 () Bool)

(assert (=> b!7569362 (= e!4506539 tp_is_empty!50353)))

(assert (= (and b!7568991 ((_ is ElementMatch!19999) (reg!20328 baseR!100))) b!7569362))

(assert (= (and b!7568991 ((_ is Concat!28844) (reg!20328 baseR!100))) b!7569363))

(assert (= (and b!7568991 ((_ is Star!19999) (reg!20328 baseR!100))) b!7569364))

(assert (= (and b!7568991 ((_ is Union!19999) (reg!20328 baseR!100))) b!7569365))

(declare-fun b!7569370 () Bool)

(declare-fun e!4506542 () Bool)

(declare-fun tp!2204946 () Bool)

(assert (=> b!7569370 (= e!4506542 (and tp_is_empty!50353 tp!2204946))))

(assert (=> b!7569001 (= tp!2204826 e!4506542)))

(assert (= (and b!7569001 ((_ is Cons!72758) (t!387617 testedP!418))) b!7569370))

(declare-fun b!7569373 () Bool)

(declare-fun e!4506543 () Bool)

(declare-fun tp!2204950 () Bool)

(assert (=> b!7569373 (= e!4506543 tp!2204950)))

(declare-fun b!7569372 () Bool)

(declare-fun tp!2204947 () Bool)

(declare-fun tp!2204951 () Bool)

(assert (=> b!7569372 (= e!4506543 (and tp!2204947 tp!2204951))))

(assert (=> b!7568998 (= tp!2204828 e!4506543)))

(declare-fun b!7569374 () Bool)

(declare-fun tp!2204949 () Bool)

(declare-fun tp!2204948 () Bool)

(assert (=> b!7569374 (= e!4506543 (and tp!2204949 tp!2204948))))

(declare-fun b!7569371 () Bool)

(assert (=> b!7569371 (= e!4506543 tp_is_empty!50353)))

(assert (= (and b!7568998 ((_ is ElementMatch!19999) (regOne!40510 r!24129))) b!7569371))

(assert (= (and b!7568998 ((_ is Concat!28844) (regOne!40510 r!24129))) b!7569372))

(assert (= (and b!7568998 ((_ is Star!19999) (regOne!40510 r!24129))) b!7569373))

(assert (= (and b!7568998 ((_ is Union!19999) (regOne!40510 r!24129))) b!7569374))

(declare-fun b!7569377 () Bool)

(declare-fun e!4506544 () Bool)

(declare-fun tp!2204955 () Bool)

(assert (=> b!7569377 (= e!4506544 tp!2204955)))

(declare-fun b!7569376 () Bool)

(declare-fun tp!2204952 () Bool)

(declare-fun tp!2204956 () Bool)

(assert (=> b!7569376 (= e!4506544 (and tp!2204952 tp!2204956))))

(assert (=> b!7568998 (= tp!2204823 e!4506544)))

(declare-fun b!7569378 () Bool)

(declare-fun tp!2204954 () Bool)

(declare-fun tp!2204953 () Bool)

(assert (=> b!7569378 (= e!4506544 (and tp!2204954 tp!2204953))))

(declare-fun b!7569375 () Bool)

(assert (=> b!7569375 (= e!4506544 tp_is_empty!50353)))

(assert (= (and b!7568998 ((_ is ElementMatch!19999) (regTwo!40510 r!24129))) b!7569375))

(assert (= (and b!7568998 ((_ is Concat!28844) (regTwo!40510 r!24129))) b!7569376))

(assert (= (and b!7568998 ((_ is Star!19999) (regTwo!40510 r!24129))) b!7569377))

(assert (= (and b!7568998 ((_ is Union!19999) (regTwo!40510 r!24129))) b!7569378))

(declare-fun b!7569379 () Bool)

(declare-fun e!4506545 () Bool)

(declare-fun tp!2204957 () Bool)

(assert (=> b!7569379 (= e!4506545 (and tp_is_empty!50353 tp!2204957))))

(assert (=> b!7568987 (= tp!2204829 e!4506545)))

(assert (= (and b!7568987 ((_ is Cons!72758) (t!387617 input!7855))) b!7569379))

(check-sat (not b!7569345) (not b!7569222) (not b!7569373) (not b!7569177) (not b!7569163) (not b!7569351) (not b!7569159) (not bm!693956) (not b!7569336) (not b!7569081) (not d!2317271) (not b!7569359) (not b!7569349) (not bm!693946) (not b!7569054) (not b!7569227) (not b!7569293) (not b!7569162) (not bm!693949) (not b!7569226) (not b!7569180) (not b!7569365) (not b!7569340) (not b!7569337) (not bm!693960) (not b!7569173) (not b!7569364) (not b!7569370) (not b!7569376) (not b!7569360) (not b!7569357) (not b!7569348) (not b!7569361) (not b!7569379) (not b!7569353) (not b!7569377) (not b!7569355) (not b!7569219) (not d!2317281) (not b!7569344) (not b!7569179) (not b!7569372) (not b!7569341) (not b!7569339) (not b!7569251) (not b!7569176) (not b!7569253) (not d!2317303) (not b!7569356) (not d!2317287) (not b!7569252) (not b!7569074) (not b!7569374) (not b!7569378) (not b!7569343) (not d!2317309) (not b!7569363) (not bm!693950) tp_is_empty!50353 (not b!7569223) (not b!7569352) (not d!2317295) (not b!7569161) (not b!7569347) (not b!7569155) (not b!7569283) (not b!7569335) (not bm!693957) (not d!2317277) (not b!7569225) (not b!7569181) (not b!7569158) (not bm!693947))
(check-sat)
