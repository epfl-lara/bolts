; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13694 () Bool)

(assert start!13694)

(declare-fun b!132142 () Bool)

(declare-fun res!61448 () Bool)

(declare-fun e!76340 () Bool)

(assert (=> b!132142 (=> (not res!61448) (not e!76340))))

(declare-fun e!76343 () Bool)

(assert (=> b!132142 (= res!61448 e!76343)))

(declare-fun res!61446 () Bool)

(assert (=> b!132142 (=> res!61446 e!76343)))

(declare-datatypes ((B!769 0))(
  ( (B!770 (val!870 Int)) )
))
(declare-datatypes ((List!2188 0))(
  ( (Nil!2182) (Cons!2182 (h!7579 B!769) (t!22774 List!2188)) )
))
(declare-fun newList!20 () List!2188)

(get-info :version)

(assert (=> b!132142 (= res!61446 (not ((_ is Cons!2182) newList!20)))))

(declare-fun b!132143 () Bool)

(declare-fun baseList!9 () List!2188)

(declare-fun contains!362 (List!2188 B!769) Bool)

(assert (=> b!132143 (= e!76343 (not (contains!362 baseList!9 (h!7579 newList!20))))))

(declare-fun b!132144 () Bool)

(declare-fun ListPrimitiveSize!24 (List!2188) Int)

(assert (=> b!132144 (= e!76340 (not (< (ListPrimitiveSize!24 (t!22774 newList!20)) (ListPrimitiveSize!24 newList!20))))))

(declare-fun lt!39884 () List!2188)

(declare-fun noDuplicate!78 (List!2188) Bool)

(assert (=> b!132144 (noDuplicate!78 lt!39884)))

(declare-datatypes ((Unit!1744 0))(
  ( (Unit!1745) )
))
(declare-fun lt!39886 () Unit!1744)

(declare-fun lemmaAppendNewElementElementPreserves!18 (List!2188 B!769) Unit!1744)

(assert (=> b!132144 (= lt!39886 (lemmaAppendNewElementElementPreserves!18 baseList!9 (h!7579 newList!20)))))

(declare-fun isPrefix!177 (List!2188 List!2188) Bool)

(assert (=> b!132144 (isPrefix!177 baseList!9 lt!39884)))

(declare-fun lt!39883 () List!2188)

(declare-fun ++!458 (List!2188 List!2188) List!2188)

(assert (=> b!132144 (= lt!39884 (++!458 baseList!9 lt!39883))))

(declare-fun lt!39885 () Unit!1744)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!100 (List!2188 List!2188) Unit!1744)

(assert (=> b!132144 (= lt!39885 (lemmaConcatTwoListThenFirstIsPrefix!100 baseList!9 lt!39883))))

(assert (=> b!132144 (= lt!39883 (Cons!2182 (h!7579 newList!20) Nil!2182))))

(declare-fun b!132145 () Bool)

(declare-fun res!61445 () Bool)

(assert (=> b!132145 (=> (not res!61445) (not e!76340))))

(assert (=> b!132145 (= res!61445 (not (contains!362 baseList!9 (h!7579 newList!20))))))

(declare-fun b!132146 () Bool)

(declare-fun res!61447 () Bool)

(assert (=> b!132146 (=> (not res!61447) (not e!76340))))

(assert (=> b!132146 (= res!61447 ((_ is Cons!2182) newList!20))))

(declare-fun b!132147 () Bool)

(declare-fun e!76342 () Bool)

(declare-fun tp_is_empty!1413 () Bool)

(declare-fun tp!70444 () Bool)

(assert (=> b!132147 (= e!76342 (and tp_is_empty!1413 tp!70444))))

(declare-fun res!61444 () Bool)

(assert (=> start!13694 (=> (not res!61444) (not e!76340))))

(assert (=> start!13694 (= res!61444 (noDuplicate!78 baseList!9))))

(assert (=> start!13694 e!76340))

(declare-fun e!76341 () Bool)

(assert (=> start!13694 e!76341))

(assert (=> start!13694 e!76342))

(declare-fun b!132148 () Bool)

(declare-fun tp!70443 () Bool)

(assert (=> b!132148 (= e!76341 (and tp_is_empty!1413 tp!70443))))

(assert (= (and start!13694 res!61444) b!132142))

(assert (= (and b!132142 (not res!61446)) b!132143))

(assert (= (and b!132142 res!61448) b!132146))

(assert (= (and b!132146 res!61447) b!132145))

(assert (= (and b!132145 res!61445) b!132144))

(assert (= (and start!13694 ((_ is Cons!2182) baseList!9)) b!132148))

(assert (= (and start!13694 ((_ is Cons!2182) newList!20)) b!132147))

(declare-fun m!116963 () Bool)

(assert (=> b!132143 m!116963))

(declare-fun m!116965 () Bool)

(assert (=> b!132144 m!116965))

(declare-fun m!116967 () Bool)

(assert (=> b!132144 m!116967))

(declare-fun m!116969 () Bool)

(assert (=> b!132144 m!116969))

(declare-fun m!116971 () Bool)

(assert (=> b!132144 m!116971))

(declare-fun m!116973 () Bool)

(assert (=> b!132144 m!116973))

(declare-fun m!116975 () Bool)

(assert (=> b!132144 m!116975))

(declare-fun m!116977 () Bool)

(assert (=> b!132144 m!116977))

(assert (=> b!132145 m!116963))

(declare-fun m!116979 () Bool)

(assert (=> start!13694 m!116979))

(check-sat tp_is_empty!1413 (not b!132143) (not b!132144) (not b!132147) (not start!13694) (not b!132148) (not b!132145))
(check-sat)
(get-model)

(declare-fun d!31388 () Bool)

(declare-fun lt!39889 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!294 (List!2188) (InoxSet B!769))

(assert (=> d!31388 (= lt!39889 (select (content!294 baseList!9) (h!7579 newList!20)))))

(declare-fun e!76353 () Bool)

(assert (=> d!31388 (= lt!39889 e!76353)))

(declare-fun res!61458 () Bool)

(assert (=> d!31388 (=> (not res!61458) (not e!76353))))

(assert (=> d!31388 (= res!61458 ((_ is Cons!2182) baseList!9))))

(assert (=> d!31388 (= (contains!362 baseList!9 (h!7579 newList!20)) lt!39889)))

(declare-fun b!132157 () Bool)

(declare-fun e!76352 () Bool)

(assert (=> b!132157 (= e!76353 e!76352)))

(declare-fun res!61457 () Bool)

(assert (=> b!132157 (=> res!61457 e!76352)))

(assert (=> b!132157 (= res!61457 (= (h!7579 baseList!9) (h!7579 newList!20)))))

(declare-fun b!132158 () Bool)

(assert (=> b!132158 (= e!76352 (contains!362 (t!22774 baseList!9) (h!7579 newList!20)))))

(assert (= (and d!31388 res!61458) b!132157))

(assert (= (and b!132157 (not res!61457)) b!132158))

(declare-fun m!116981 () Bool)

(assert (=> d!31388 m!116981))

(declare-fun m!116983 () Bool)

(assert (=> d!31388 m!116983))

(declare-fun m!116985 () Bool)

(assert (=> b!132158 m!116985))

(assert (=> b!132145 d!31388))

(assert (=> b!132143 d!31388))

(declare-fun d!31392 () Bool)

(declare-fun res!61468 () Bool)

(declare-fun e!76364 () Bool)

(assert (=> d!31392 (=> res!61468 e!76364)))

(assert (=> d!31392 (= res!61468 ((_ is Nil!2182) baseList!9))))

(assert (=> d!31392 (= (noDuplicate!78 baseList!9) e!76364)))

(declare-fun b!132167 () Bool)

(declare-fun e!76365 () Bool)

(assert (=> b!132167 (= e!76364 e!76365)))

(declare-fun res!61470 () Bool)

(assert (=> b!132167 (=> (not res!61470) (not e!76365))))

(assert (=> b!132167 (= res!61470 (not (contains!362 (t!22774 baseList!9) (h!7579 baseList!9))))))

(declare-fun b!132168 () Bool)

(assert (=> b!132168 (= e!76365 (noDuplicate!78 (t!22774 baseList!9)))))

(assert (= (and d!31392 (not res!61468)) b!132167))

(assert (= (and b!132167 res!61470) b!132168))

(declare-fun m!116991 () Bool)

(assert (=> b!132167 m!116991))

(declare-fun m!116993 () Bool)

(assert (=> b!132168 m!116993))

(assert (=> start!13694 d!31392))

(declare-fun d!31396 () Bool)

(declare-fun e!76379 () Bool)

(assert (=> d!31396 e!76379))

(declare-fun res!61482 () Bool)

(assert (=> d!31396 (=> res!61482 e!76379)))

(declare-fun lt!39899 () Bool)

(assert (=> d!31396 (= res!61482 (not lt!39899))))

(declare-fun e!76380 () Bool)

(assert (=> d!31396 (= lt!39899 e!76380)))

(declare-fun res!61481 () Bool)

(assert (=> d!31396 (=> res!61481 e!76380)))

(assert (=> d!31396 (= res!61481 ((_ is Nil!2182) baseList!9))))

(assert (=> d!31396 (= (isPrefix!177 baseList!9 lt!39884) lt!39899)))

(declare-fun b!132192 () Bool)

(declare-fun size!1984 (List!2188) Int)

(assert (=> b!132192 (= e!76379 (>= (size!1984 lt!39884) (size!1984 baseList!9)))))

(declare-fun b!132190 () Bool)

(declare-fun res!61483 () Bool)

(declare-fun e!76378 () Bool)

(assert (=> b!132190 (=> (not res!61483) (not e!76378))))

(declare-fun head!523 (List!2188) B!769)

(assert (=> b!132190 (= res!61483 (= (head!523 baseList!9) (head!523 lt!39884)))))

(declare-fun b!132191 () Bool)

(declare-fun tail!269 (List!2188) List!2188)

(assert (=> b!132191 (= e!76378 (isPrefix!177 (tail!269 baseList!9) (tail!269 lt!39884)))))

(declare-fun b!132189 () Bool)

(assert (=> b!132189 (= e!76380 e!76378)))

(declare-fun res!61484 () Bool)

(assert (=> b!132189 (=> (not res!61484) (not e!76378))))

(assert (=> b!132189 (= res!61484 (not ((_ is Nil!2182) lt!39884)))))

(assert (= (and d!31396 (not res!61481)) b!132189))

(assert (= (and b!132189 res!61484) b!132190))

(assert (= (and b!132190 res!61483) b!132191))

(assert (= (and d!31396 (not res!61482)) b!132192))

(declare-fun m!117003 () Bool)

(assert (=> b!132192 m!117003))

(declare-fun m!117005 () Bool)

(assert (=> b!132192 m!117005))

(declare-fun m!117007 () Bool)

(assert (=> b!132190 m!117007))

(declare-fun m!117009 () Bool)

(assert (=> b!132190 m!117009))

(declare-fun m!117011 () Bool)

(assert (=> b!132191 m!117011))

(declare-fun m!117013 () Bool)

(assert (=> b!132191 m!117013))

(assert (=> b!132191 m!117011))

(assert (=> b!132191 m!117013))

(declare-fun m!117015 () Bool)

(assert (=> b!132191 m!117015))

(assert (=> b!132144 d!31396))

(declare-fun d!31404 () Bool)

(declare-fun lt!39905 () Int)

(assert (=> d!31404 (>= lt!39905 0)))

(declare-fun e!76385 () Int)

(assert (=> d!31404 (= lt!39905 e!76385)))

(declare-fun c!28473 () Bool)

(assert (=> d!31404 (= c!28473 ((_ is Nil!2182) (t!22774 newList!20)))))

(assert (=> d!31404 (= (ListPrimitiveSize!24 (t!22774 newList!20)) lt!39905)))

(declare-fun b!132199 () Bool)

(assert (=> b!132199 (= e!76385 0)))

(declare-fun b!132200 () Bool)

(assert (=> b!132200 (= e!76385 (+ 1 (ListPrimitiveSize!24 (t!22774 (t!22774 newList!20)))))))

(assert (= (and d!31404 c!28473) b!132199))

(assert (= (and d!31404 (not c!28473)) b!132200))

(declare-fun m!117025 () Bool)

(assert (=> b!132200 m!117025))

(assert (=> b!132144 d!31404))

(declare-fun d!31410 () Bool)

(declare-fun lt!39906 () Int)

(assert (=> d!31410 (>= lt!39906 0)))

(declare-fun e!76386 () Int)

(assert (=> d!31410 (= lt!39906 e!76386)))

(declare-fun c!28474 () Bool)

(assert (=> d!31410 (= c!28474 ((_ is Nil!2182) newList!20))))

(assert (=> d!31410 (= (ListPrimitiveSize!24 newList!20) lt!39906)))

(declare-fun b!132201 () Bool)

(assert (=> b!132201 (= e!76386 0)))

(declare-fun b!132202 () Bool)

(assert (=> b!132202 (= e!76386 (+ 1 (ListPrimitiveSize!24 (t!22774 newList!20))))))

(assert (= (and d!31410 c!28474) b!132201))

(assert (= (and d!31410 (not c!28474)) b!132202))

(assert (=> b!132202 m!116975))

(assert (=> b!132144 d!31410))

(declare-fun d!31412 () Bool)

(assert (=> d!31412 (isPrefix!177 baseList!9 (++!458 baseList!9 lt!39883))))

(declare-fun lt!39911 () Unit!1744)

(declare-fun choose!1675 (List!2188 List!2188) Unit!1744)

(assert (=> d!31412 (= lt!39911 (choose!1675 baseList!9 lt!39883))))

(assert (=> d!31412 (= (lemmaConcatTwoListThenFirstIsPrefix!100 baseList!9 lt!39883) lt!39911)))

(declare-fun bs!12645 () Bool)

(assert (= bs!12645 d!31412))

(assert (=> bs!12645 m!116967))

(assert (=> bs!12645 m!116967))

(declare-fun m!117027 () Bool)

(assert (=> bs!12645 m!117027))

(declare-fun m!117029 () Bool)

(assert (=> bs!12645 m!117029))

(assert (=> b!132144 d!31412))

(declare-fun d!31414 () Bool)

(declare-fun res!61491 () Bool)

(declare-fun e!76391 () Bool)

(assert (=> d!31414 (=> res!61491 e!76391)))

(assert (=> d!31414 (= res!61491 ((_ is Nil!2182) lt!39884))))

(assert (=> d!31414 (= (noDuplicate!78 lt!39884) e!76391)))

(declare-fun b!132211 () Bool)

(declare-fun e!76392 () Bool)

(assert (=> b!132211 (= e!76391 e!76392)))

(declare-fun res!61492 () Bool)

(assert (=> b!132211 (=> (not res!61492) (not e!76392))))

(assert (=> b!132211 (= res!61492 (not (contains!362 (t!22774 lt!39884) (h!7579 lt!39884))))))

(declare-fun b!132212 () Bool)

(assert (=> b!132212 (= e!76392 (noDuplicate!78 (t!22774 lt!39884)))))

(assert (= (and d!31414 (not res!61491)) b!132211))

(assert (= (and b!132211 res!61492) b!132212))

(declare-fun m!117031 () Bool)

(assert (=> b!132211 m!117031))

(declare-fun m!117033 () Bool)

(assert (=> b!132212 m!117033))

(assert (=> b!132144 d!31414))

(declare-fun b!132236 () Bool)

(declare-fun lt!39917 () List!2188)

(declare-fun e!76405 () Bool)

(assert (=> b!132236 (= e!76405 (or (not (= lt!39883 Nil!2182)) (= lt!39917 baseList!9)))))

(declare-fun b!132235 () Bool)

(declare-fun res!61508 () Bool)

(assert (=> b!132235 (=> (not res!61508) (not e!76405))))

(assert (=> b!132235 (= res!61508 (= (size!1984 lt!39917) (+ (size!1984 baseList!9) (size!1984 lt!39883))))))

(declare-fun d!31416 () Bool)

(assert (=> d!31416 e!76405))

(declare-fun res!61507 () Bool)

(assert (=> d!31416 (=> (not res!61507) (not e!76405))))

(assert (=> d!31416 (= res!61507 (= (content!294 lt!39917) ((_ map or) (content!294 baseList!9) (content!294 lt!39883))))))

(declare-fun e!76406 () List!2188)

(assert (=> d!31416 (= lt!39917 e!76406)))

(declare-fun c!28480 () Bool)

(assert (=> d!31416 (= c!28480 ((_ is Nil!2182) baseList!9))))

(assert (=> d!31416 (= (++!458 baseList!9 lt!39883) lt!39917)))

(declare-fun b!132233 () Bool)

(assert (=> b!132233 (= e!76406 lt!39883)))

(declare-fun b!132234 () Bool)

(assert (=> b!132234 (= e!76406 (Cons!2182 (h!7579 baseList!9) (++!458 (t!22774 baseList!9) lt!39883)))))

(assert (= (and d!31416 c!28480) b!132233))

(assert (= (and d!31416 (not c!28480)) b!132234))

(assert (= (and d!31416 res!61507) b!132235))

(assert (= (and b!132235 res!61508) b!132236))

(declare-fun m!117047 () Bool)

(assert (=> b!132235 m!117047))

(assert (=> b!132235 m!117005))

(declare-fun m!117049 () Bool)

(assert (=> b!132235 m!117049))

(declare-fun m!117051 () Bool)

(assert (=> d!31416 m!117051))

(assert (=> d!31416 m!116981))

(declare-fun m!117053 () Bool)

(assert (=> d!31416 m!117053))

(declare-fun m!117055 () Bool)

(assert (=> b!132234 m!117055))

(assert (=> b!132144 d!31416))

(declare-fun d!31420 () Bool)

(assert (=> d!31420 (noDuplicate!78 (++!458 baseList!9 (Cons!2182 (h!7579 newList!20) Nil!2182)))))

(declare-fun lt!39921 () Unit!1744)

(declare-fun choose!1676 (List!2188 B!769) Unit!1744)

(assert (=> d!31420 (= lt!39921 (choose!1676 baseList!9 (h!7579 newList!20)))))

(assert (=> d!31420 (noDuplicate!78 baseList!9)))

(assert (=> d!31420 (= (lemmaAppendNewElementElementPreserves!18 baseList!9 (h!7579 newList!20)) lt!39921)))

(declare-fun bs!12646 () Bool)

(assert (= bs!12646 d!31420))

(declare-fun m!117069 () Bool)

(assert (=> bs!12646 m!117069))

(assert (=> bs!12646 m!117069))

(declare-fun m!117071 () Bool)

(assert (=> bs!12646 m!117071))

(declare-fun m!117073 () Bool)

(assert (=> bs!12646 m!117073))

(assert (=> bs!12646 m!116979))

(assert (=> b!132144 d!31420))

(declare-fun b!132245 () Bool)

(declare-fun e!76412 () Bool)

(declare-fun tp!70447 () Bool)

(assert (=> b!132245 (= e!76412 (and tp_is_empty!1413 tp!70447))))

(assert (=> b!132147 (= tp!70444 e!76412)))

(assert (= (and b!132147 ((_ is Cons!2182) (t!22774 newList!20))) b!132245))

(declare-fun b!132246 () Bool)

(declare-fun e!76413 () Bool)

(declare-fun tp!70448 () Bool)

(assert (=> b!132246 (= e!76413 (and tp_is_empty!1413 tp!70448))))

(assert (=> b!132148 (= tp!70443 e!76413)))

(assert (= (and b!132148 ((_ is Cons!2182) (t!22774 baseList!9))) b!132246))

(check-sat (not b!132200) (not d!31416) (not b!132167) tp_is_empty!1413 (not b!132234) (not b!132158) (not b!132211) (not b!132168) (not b!132192) (not b!132245) (not b!132212) (not b!132191) (not b!132246) (not d!31388) (not b!132235) (not b!132202) (not b!132190) (not d!31420) (not d!31412))
(check-sat)
