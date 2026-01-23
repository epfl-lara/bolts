; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187518 () Bool)

(assert start!187518)

(declare-fun b!1872260 () Bool)

(declare-fun res!837930 () Bool)

(declare-fun e!1194417 () Bool)

(assert (=> b!1872260 (=> (not res!837930) (not e!1194417))))

(declare-datatypes ((B!1625 0))(
  ( (B!1626 (val!6002 Int)) )
))
(declare-datatypes ((List!20819 0))(
  ( (Nil!20737) (Cons!20737 (h!26138 B!1625) (t!173036 List!20819)) )
))
(declare-fun l1!1293 () List!20819)

(get-info :version)

(assert (=> b!1872260 (= res!837930 ((_ is Cons!20737) l1!1293))))

(declare-fun b!1872261 () Bool)

(declare-fun e!1194416 () Bool)

(declare-fun tp_is_empty!8783 () Bool)

(declare-fun tp!532441 () Bool)

(assert (=> b!1872261 (= e!1194416 (and tp_is_empty!8783 tp!532441))))

(declare-fun b!1872262 () Bool)

(declare-fun res!837931 () Bool)

(assert (=> b!1872262 (=> (not res!837931) (not e!1194417))))

(declare-fun isEmpty!12943 (List!20819) Bool)

(assert (=> b!1872262 (= res!837931 (not (isEmpty!12943 (t!173036 l1!1293))))))

(declare-fun res!837929 () Bool)

(assert (=> start!187518 (=> (not res!837929) (not e!1194417))))

(assert (=> start!187518 (= res!837929 (not (isEmpty!12943 l1!1293)))))

(assert (=> start!187518 e!1194417))

(assert (=> start!187518 e!1194416))

(declare-fun e!1194415 () Bool)

(assert (=> start!187518 e!1194415))

(declare-fun b!1872263 () Bool)

(declare-fun l2!1262 () List!20819)

(declare-fun ++!5626 (List!20819 List!20819) List!20819)

(assert (=> b!1872263 (= e!1194417 (not (not (= (++!5626 l1!1293 l2!1262) Nil!20737))))))

(declare-fun tail!2873 (List!20819) List!20819)

(assert (=> b!1872263 (= (tail!2873 (++!5626 (t!173036 l1!1293) l2!1262)) (++!5626 (tail!2873 (t!173036 l1!1293)) l2!1262))))

(declare-datatypes ((Unit!35331 0))(
  ( (Unit!35332) )
))
(declare-fun lt!719643 () Unit!35331)

(declare-fun lemmaTailOfConcatIsTailConcat!46 (List!20819 List!20819) Unit!35331)

(assert (=> b!1872263 (= lt!719643 (lemmaTailOfConcatIsTailConcat!46 (t!173036 l1!1293) l2!1262))))

(declare-fun b!1872264 () Bool)

(declare-fun tp!532440 () Bool)

(assert (=> b!1872264 (= e!1194415 (and tp_is_empty!8783 tp!532440))))

(assert (= (and start!187518 res!837929) b!1872260))

(assert (= (and b!1872260 res!837930) b!1872262))

(assert (= (and b!1872262 res!837931) b!1872263))

(assert (= (and start!187518 ((_ is Cons!20737) l1!1293)) b!1872261))

(assert (= (and start!187518 ((_ is Cons!20737) l2!1262)) b!1872264))

(declare-fun m!2298053 () Bool)

(assert (=> b!1872262 m!2298053))

(declare-fun m!2298055 () Bool)

(assert (=> start!187518 m!2298055))

(declare-fun m!2298057 () Bool)

(assert (=> b!1872263 m!2298057))

(declare-fun m!2298059 () Bool)

(assert (=> b!1872263 m!2298059))

(assert (=> b!1872263 m!2298057))

(declare-fun m!2298061 () Bool)

(assert (=> b!1872263 m!2298061))

(declare-fun m!2298063 () Bool)

(assert (=> b!1872263 m!2298063))

(declare-fun m!2298065 () Bool)

(assert (=> b!1872263 m!2298065))

(assert (=> b!1872263 m!2298059))

(declare-fun m!2298067 () Bool)

(assert (=> b!1872263 m!2298067))

(check-sat (not b!1872263) (not start!187518) (not b!1872261) tp_is_empty!8783 (not b!1872264) (not b!1872262))
(check-sat)
(get-model)

(declare-fun d!572388 () Bool)

(assert (=> d!572388 (= (isEmpty!12943 (t!173036 l1!1293)) ((_ is Nil!20737) (t!173036 l1!1293)))))

(assert (=> b!1872262 d!572388))

(declare-fun b!1872274 () Bool)

(declare-fun e!1194422 () List!20819)

(assert (=> b!1872274 (= e!1194422 (Cons!20737 (h!26138 l1!1293) (++!5626 (t!173036 l1!1293) l2!1262)))))

(declare-fun b!1872276 () Bool)

(declare-fun lt!719646 () List!20819)

(declare-fun e!1194423 () Bool)

(assert (=> b!1872276 (= e!1194423 (or (not (= l2!1262 Nil!20737)) (= lt!719646 l1!1293)))))

(declare-fun d!572390 () Bool)

(assert (=> d!572390 e!1194423))

(declare-fun res!837937 () Bool)

(assert (=> d!572390 (=> (not res!837937) (not e!1194423))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3094 (List!20819) (InoxSet B!1625))

(assert (=> d!572390 (= res!837937 (= (content!3094 lt!719646) ((_ map or) (content!3094 l1!1293) (content!3094 l2!1262))))))

(assert (=> d!572390 (= lt!719646 e!1194422)))

(declare-fun c!305246 () Bool)

(assert (=> d!572390 (= c!305246 ((_ is Nil!20737) l1!1293))))

(assert (=> d!572390 (= (++!5626 l1!1293 l2!1262) lt!719646)))

(declare-fun b!1872273 () Bool)

(assert (=> b!1872273 (= e!1194422 l2!1262)))

(declare-fun b!1872275 () Bool)

(declare-fun res!837936 () Bool)

(assert (=> b!1872275 (=> (not res!837936) (not e!1194423))))

(declare-fun size!16469 (List!20819) Int)

(assert (=> b!1872275 (= res!837936 (= (size!16469 lt!719646) (+ (size!16469 l1!1293) (size!16469 l2!1262))))))

(assert (= (and d!572390 c!305246) b!1872273))

(assert (= (and d!572390 (not c!305246)) b!1872274))

(assert (= (and d!572390 res!837937) b!1872275))

(assert (= (and b!1872275 res!837936) b!1872276))

(assert (=> b!1872274 m!2298059))

(declare-fun m!2298069 () Bool)

(assert (=> d!572390 m!2298069))

(declare-fun m!2298071 () Bool)

(assert (=> d!572390 m!2298071))

(declare-fun m!2298073 () Bool)

(assert (=> d!572390 m!2298073))

(declare-fun m!2298075 () Bool)

(assert (=> b!1872275 m!2298075))

(declare-fun m!2298077 () Bool)

(assert (=> b!1872275 m!2298077))

(declare-fun m!2298079 () Bool)

(assert (=> b!1872275 m!2298079))

(assert (=> b!1872263 d!572390))

(declare-fun b!1872278 () Bool)

(declare-fun e!1194424 () List!20819)

(assert (=> b!1872278 (= e!1194424 (Cons!20737 (h!26138 (tail!2873 (t!173036 l1!1293))) (++!5626 (t!173036 (tail!2873 (t!173036 l1!1293))) l2!1262)))))

(declare-fun e!1194425 () Bool)

(declare-fun b!1872280 () Bool)

(declare-fun lt!719647 () List!20819)

(assert (=> b!1872280 (= e!1194425 (or (not (= l2!1262 Nil!20737)) (= lt!719647 (tail!2873 (t!173036 l1!1293)))))))

(declare-fun d!572394 () Bool)

(assert (=> d!572394 e!1194425))

(declare-fun res!837939 () Bool)

(assert (=> d!572394 (=> (not res!837939) (not e!1194425))))

(assert (=> d!572394 (= res!837939 (= (content!3094 lt!719647) ((_ map or) (content!3094 (tail!2873 (t!173036 l1!1293))) (content!3094 l2!1262))))))

(assert (=> d!572394 (= lt!719647 e!1194424)))

(declare-fun c!305247 () Bool)

(assert (=> d!572394 (= c!305247 ((_ is Nil!20737) (tail!2873 (t!173036 l1!1293))))))

(assert (=> d!572394 (= (++!5626 (tail!2873 (t!173036 l1!1293)) l2!1262) lt!719647)))

(declare-fun b!1872277 () Bool)

(assert (=> b!1872277 (= e!1194424 l2!1262)))

(declare-fun b!1872279 () Bool)

(declare-fun res!837938 () Bool)

(assert (=> b!1872279 (=> (not res!837938) (not e!1194425))))

(assert (=> b!1872279 (= res!837938 (= (size!16469 lt!719647) (+ (size!16469 (tail!2873 (t!173036 l1!1293))) (size!16469 l2!1262))))))

(assert (= (and d!572394 c!305247) b!1872277))

(assert (= (and d!572394 (not c!305247)) b!1872278))

(assert (= (and d!572394 res!837939) b!1872279))

(assert (= (and b!1872279 res!837938) b!1872280))

(declare-fun m!2298081 () Bool)

(assert (=> b!1872278 m!2298081))

(declare-fun m!2298083 () Bool)

(assert (=> d!572394 m!2298083))

(assert (=> d!572394 m!2298057))

(declare-fun m!2298085 () Bool)

(assert (=> d!572394 m!2298085))

(assert (=> d!572394 m!2298073))

(declare-fun m!2298087 () Bool)

(assert (=> b!1872279 m!2298087))

(assert (=> b!1872279 m!2298057))

(declare-fun m!2298089 () Bool)

(assert (=> b!1872279 m!2298089))

(assert (=> b!1872279 m!2298079))

(assert (=> b!1872263 d!572394))

(declare-fun d!572396 () Bool)

(assert (=> d!572396 (= (tail!2873 (++!5626 (t!173036 l1!1293) l2!1262)) (t!173036 (++!5626 (t!173036 l1!1293) l2!1262)))))

(assert (=> b!1872263 d!572396))

(declare-fun d!572398 () Bool)

(assert (=> d!572398 (= (tail!2873 (++!5626 (t!173036 l1!1293) l2!1262)) (++!5626 (tail!2873 (t!173036 l1!1293)) l2!1262))))

(declare-fun lt!719652 () Unit!35331)

(declare-fun choose!11754 (List!20819 List!20819) Unit!35331)

(assert (=> d!572398 (= lt!719652 (choose!11754 (t!173036 l1!1293) l2!1262))))

(assert (=> d!572398 (not (isEmpty!12943 (t!173036 l1!1293)))))

(assert (=> d!572398 (= (lemmaTailOfConcatIsTailConcat!46 (t!173036 l1!1293) l2!1262) lt!719652)))

(declare-fun bs!412044 () Bool)

(assert (= bs!412044 d!572398))

(assert (=> bs!412044 m!2298053))

(assert (=> bs!412044 m!2298059))

(assert (=> bs!412044 m!2298067))

(assert (=> bs!412044 m!2298057))

(assert (=> bs!412044 m!2298057))

(assert (=> bs!412044 m!2298061))

(declare-fun m!2298091 () Bool)

(assert (=> bs!412044 m!2298091))

(assert (=> bs!412044 m!2298059))

(assert (=> b!1872263 d!572398))

(declare-fun d!572400 () Bool)

(assert (=> d!572400 (= (tail!2873 (t!173036 l1!1293)) (t!173036 (t!173036 l1!1293)))))

(assert (=> b!1872263 d!572400))

(declare-fun b!1872290 () Bool)

(declare-fun e!1194430 () List!20819)

(assert (=> b!1872290 (= e!1194430 (Cons!20737 (h!26138 (t!173036 l1!1293)) (++!5626 (t!173036 (t!173036 l1!1293)) l2!1262)))))

(declare-fun e!1194431 () Bool)

(declare-fun b!1872292 () Bool)

(declare-fun lt!719653 () List!20819)

(assert (=> b!1872292 (= e!1194431 (or (not (= l2!1262 Nil!20737)) (= lt!719653 (t!173036 l1!1293))))))

(declare-fun d!572402 () Bool)

(assert (=> d!572402 e!1194431))

(declare-fun res!837945 () Bool)

(assert (=> d!572402 (=> (not res!837945) (not e!1194431))))

(assert (=> d!572402 (= res!837945 (= (content!3094 lt!719653) ((_ map or) (content!3094 (t!173036 l1!1293)) (content!3094 l2!1262))))))

(assert (=> d!572402 (= lt!719653 e!1194430)))

(declare-fun c!305250 () Bool)

(assert (=> d!572402 (= c!305250 ((_ is Nil!20737) (t!173036 l1!1293)))))

(assert (=> d!572402 (= (++!5626 (t!173036 l1!1293) l2!1262) lt!719653)))

(declare-fun b!1872289 () Bool)

(assert (=> b!1872289 (= e!1194430 l2!1262)))

(declare-fun b!1872291 () Bool)

(declare-fun res!837944 () Bool)

(assert (=> b!1872291 (=> (not res!837944) (not e!1194431))))

(assert (=> b!1872291 (= res!837944 (= (size!16469 lt!719653) (+ (size!16469 (t!173036 l1!1293)) (size!16469 l2!1262))))))

(assert (= (and d!572402 c!305250) b!1872289))

(assert (= (and d!572402 (not c!305250)) b!1872290))

(assert (= (and d!572402 res!837945) b!1872291))

(assert (= (and b!1872291 res!837944) b!1872292))

(declare-fun m!2298093 () Bool)

(assert (=> b!1872290 m!2298093))

(declare-fun m!2298095 () Bool)

(assert (=> d!572402 m!2298095))

(declare-fun m!2298097 () Bool)

(assert (=> d!572402 m!2298097))

(assert (=> d!572402 m!2298073))

(declare-fun m!2298099 () Bool)

(assert (=> b!1872291 m!2298099))

(declare-fun m!2298101 () Bool)

(assert (=> b!1872291 m!2298101))

(assert (=> b!1872291 m!2298079))

(assert (=> b!1872263 d!572402))

(declare-fun d!572404 () Bool)

(assert (=> d!572404 (= (isEmpty!12943 l1!1293) ((_ is Nil!20737) l1!1293))))

(assert (=> start!187518 d!572404))

(declare-fun b!1872297 () Bool)

(declare-fun e!1194434 () Bool)

(declare-fun tp!532444 () Bool)

(assert (=> b!1872297 (= e!1194434 (and tp_is_empty!8783 tp!532444))))

(assert (=> b!1872261 (= tp!532441 e!1194434)))

(assert (= (and b!1872261 ((_ is Cons!20737) (t!173036 l1!1293))) b!1872297))

(declare-fun b!1872298 () Bool)

(declare-fun e!1194435 () Bool)

(declare-fun tp!532445 () Bool)

(assert (=> b!1872298 (= e!1194435 (and tp_is_empty!8783 tp!532445))))

(assert (=> b!1872264 (= tp!532440 e!1194435)))

(assert (= (and b!1872264 ((_ is Cons!20737) (t!173036 l2!1262))) b!1872298))

(check-sat (not d!572402) (not b!1872297) (not d!572398) (not b!1872290) (not b!1872298) (not d!572390) (not b!1872278) (not b!1872275) (not d!572394) (not b!1872274) (not b!1872279) tp_is_empty!8783 (not b!1872291))
(check-sat)
