; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!182952 () Bool)

(assert start!182952)

(declare-fun res!826389 () Bool)

(declare-fun e!1175090 () Bool)

(assert (=> start!182952 (=> (not res!826389) (not e!1175090))))

(declare-datatypes ((B!1503 0))(
  ( (B!1504 (val!5699 Int)) )
))
(declare-datatypes ((List!20299 0))(
  ( (Nil!20229) (Cons!20229 (h!25630 B!1503) (t!171728 List!20299)) )
))
(declare-fun l!3679 () List!20299)

(declare-fun elmt!176 () B!1503)

(assert (=> start!182952 (= res!826389 (and (not (is-Nil!20229 l!3679)) (= (h!25630 l!3679) elmt!176)))))

(assert (=> start!182952 e!1175090))

(declare-fun e!1175089 () Bool)

(assert (=> start!182952 e!1175089))

(declare-fun tp_is_empty!8251 () Bool)

(assert (=> start!182952 tp_is_empty!8251))

(declare-fun b!1838989 () Bool)

(declare-fun subseq!380 (List!20299 List!20299) Bool)

(assert (=> b!1838989 (= e!1175090 (not (subseq!380 (t!171728 l!3679) l!3679)))))

(declare-datatypes ((Unit!34937 0))(
  ( (Unit!34938) )
))
(declare-fun lt!713673 () Unit!34937)

(declare-fun subseqTail!13 (List!20299 List!20299) Unit!34937)

(assert (=> b!1838989 (= lt!713673 (subseqTail!13 l!3679 l!3679))))

(assert (=> b!1838989 (subseq!380 l!3679 l!3679)))

(declare-fun lt!713674 () Unit!34937)

(declare-fun lemmaSubseqRefl!44 (List!20299) Unit!34937)

(assert (=> b!1838989 (= lt!713674 (lemmaSubseqRefl!44 l!3679))))

(declare-fun b!1838990 () Bool)

(declare-fun tp!520123 () Bool)

(assert (=> b!1838990 (= e!1175089 (and tp_is_empty!8251 tp!520123))))

(assert (= (and start!182952 res!826389) b!1838989))

(assert (= (and start!182952 (is-Cons!20229 l!3679)) b!1838990))

(declare-fun m!2266797 () Bool)

(assert (=> b!1838989 m!2266797))

(declare-fun m!2266799 () Bool)

(assert (=> b!1838989 m!2266799))

(declare-fun m!2266801 () Bool)

(assert (=> b!1838989 m!2266801))

(declare-fun m!2266803 () Bool)

(assert (=> b!1838989 m!2266803))

(push 1)

(assert (not b!1838989))

(assert (not b!1838990))

(assert tp_is_empty!8251)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1839007 () Bool)

(declare-fun e!1175107 () Bool)

(assert (=> b!1839007 (= e!1175107 (subseq!380 (t!171728 (t!171728 l!3679)) (t!171728 l!3679)))))

(declare-fun b!1839006 () Bool)

(declare-fun e!1175108 () Bool)

(declare-fun e!1175105 () Bool)

(assert (=> b!1839006 (= e!1175108 e!1175105)))

(declare-fun res!826404 () Bool)

(assert (=> b!1839006 (=> res!826404 e!1175105)))

(assert (=> b!1839006 (= res!826404 e!1175107)))

(declare-fun res!826401 () Bool)

(assert (=> b!1839006 (=> (not res!826401) (not e!1175107))))

(assert (=> b!1839006 (= res!826401 (= (h!25630 (t!171728 l!3679)) (h!25630 l!3679)))))

(declare-fun b!1839008 () Bool)

(assert (=> b!1839008 (= e!1175105 (subseq!380 (t!171728 l!3679) (t!171728 l!3679)))))

(declare-fun d!562354 () Bool)

(declare-fun res!826402 () Bool)

(declare-fun e!1175106 () Bool)

(assert (=> d!562354 (=> res!826402 e!1175106)))

(assert (=> d!562354 (= res!826402 (is-Nil!20229 (t!171728 l!3679)))))

(assert (=> d!562354 (= (subseq!380 (t!171728 l!3679) l!3679) e!1175106)))

(declare-fun b!1839005 () Bool)

(assert (=> b!1839005 (= e!1175106 e!1175108)))

(declare-fun res!826403 () Bool)

(assert (=> b!1839005 (=> (not res!826403) (not e!1175108))))

(assert (=> b!1839005 (= res!826403 (is-Cons!20229 l!3679))))

(assert (= (and d!562354 (not res!826402)) b!1839005))

(assert (= (and b!1839005 res!826403) b!1839006))

(assert (= (and b!1839006 res!826401) b!1839007))

(assert (= (and b!1839006 (not res!826404)) b!1839008))

(declare-fun m!2266813 () Bool)

(assert (=> b!1839007 m!2266813))

(declare-fun m!2266815 () Bool)

(assert (=> b!1839008 m!2266815))

(assert (=> b!1838989 d!562354))

(declare-fun b!1839031 () Bool)

(declare-fun e!1175128 () Unit!34937)

(declare-fun call!115083 () Unit!34937)

(assert (=> b!1839031 (= e!1175128 call!115083)))

(declare-fun b!1839032 () Bool)

(declare-fun e!1175125 () Unit!34937)

(assert (=> b!1839032 (= e!1175125 call!115083)))

(declare-fun bm!115078 () Bool)

(declare-fun c!300191 () Bool)

(assert (=> bm!115078 (= call!115083 (subseqTail!13 (ite c!300191 l!3679 (t!171728 l!3679)) (t!171728 l!3679)))))

(declare-fun b!1839033 () Bool)

(declare-fun e!1175127 () Bool)

(assert (=> b!1839033 (= e!1175127 (subseq!380 l!3679 l!3679))))

(declare-fun d!562356 () Bool)

(declare-fun tail!2756 (List!20299) List!20299)

(assert (=> d!562356 (subseq!380 (tail!2756 l!3679) l!3679)))

(declare-fun lt!713683 () Unit!34937)

(declare-fun e!1175126 () Unit!34937)

(assert (=> d!562356 (= lt!713683 e!1175126)))

(declare-fun c!300190 () Bool)

(assert (=> d!562356 (= c!300190 (and (is-Cons!20229 l!3679) (is-Cons!20229 l!3679)))))

(assert (=> d!562356 e!1175127))

(declare-fun res!826415 () Bool)

(assert (=> d!562356 (=> (not res!826415) (not e!1175127))))

(declare-fun isEmpty!12758 (List!20299) Bool)

(assert (=> d!562356 (= res!826415 (not (isEmpty!12758 l!3679)))))

(assert (=> d!562356 (= (subseqTail!13 l!3679 l!3679) lt!713683)))

(declare-fun b!1839034 () Bool)

(assert (=> b!1839034 (= e!1175126 e!1175128)))

(assert (=> b!1839034 (= c!300191 (subseq!380 l!3679 (t!171728 l!3679)))))

(declare-fun b!1839035 () Bool)

(declare-fun Unit!34941 () Unit!34937)

(assert (=> b!1839035 (= e!1175125 Unit!34941)))

(declare-fun b!1839036 () Bool)

(declare-fun Unit!34942 () Unit!34937)

(assert (=> b!1839036 (= e!1175126 Unit!34942)))

(declare-fun b!1839037 () Bool)

(declare-fun c!300192 () Bool)

(assert (=> b!1839037 (= c!300192 (not (isEmpty!12758 (t!171728 l!3679))))))

(assert (=> b!1839037 (= e!1175128 e!1175125)))

(assert (= (and d!562356 res!826415) b!1839033))

(assert (= (and d!562356 c!300190) b!1839034))

(assert (= (and d!562356 (not c!300190)) b!1839036))

(assert (= (and b!1839034 c!300191) b!1839031))

(assert (= (and b!1839034 (not c!300191)) b!1839037))

(assert (= (and b!1839037 c!300192) b!1839032))

(assert (= (and b!1839037 (not c!300192)) b!1839035))

(assert (= (or b!1839031 b!1839032) bm!115078))

(declare-fun m!2266817 () Bool)

(assert (=> d!562356 m!2266817))

(assert (=> d!562356 m!2266817))

(declare-fun m!2266819 () Bool)

(assert (=> d!562356 m!2266819))

(declare-fun m!2266821 () Bool)

(assert (=> d!562356 m!2266821))

(declare-fun m!2266823 () Bool)

(assert (=> b!1839034 m!2266823))

(assert (=> b!1839033 m!2266801))

(declare-fun m!2266825 () Bool)

(assert (=> bm!115078 m!2266825))

(declare-fun m!2266827 () Bool)

(assert (=> b!1839037 m!2266827))

(assert (=> b!1838989 d!562356))

(declare-fun b!1839040 () Bool)

(declare-fun e!1175131 () Bool)

(assert (=> b!1839040 (= e!1175131 (subseq!380 (t!171728 l!3679) (t!171728 l!3679)))))

(declare-fun b!1839039 () Bool)

(declare-fun e!1175132 () Bool)

(declare-fun e!1175129 () Bool)

(assert (=> b!1839039 (= e!1175132 e!1175129)))

(declare-fun res!826419 () Bool)

(assert (=> b!1839039 (=> res!826419 e!1175129)))

(assert (=> b!1839039 (= res!826419 e!1175131)))

(declare-fun res!826416 () Bool)

(assert (=> b!1839039 (=> (not res!826416) (not e!1175131))))

(assert (=> b!1839039 (= res!826416 (= (h!25630 l!3679) (h!25630 l!3679)))))

(declare-fun b!1839041 () Bool)

(assert (=> b!1839041 (= e!1175129 (subseq!380 l!3679 (t!171728 l!3679)))))

(declare-fun d!562360 () Bool)

(declare-fun res!826417 () Bool)

(declare-fun e!1175130 () Bool)

(assert (=> d!562360 (=> res!826417 e!1175130)))

(assert (=> d!562360 (= res!826417 (is-Nil!20229 l!3679))))

(assert (=> d!562360 (= (subseq!380 l!3679 l!3679) e!1175130)))

(declare-fun b!1839038 () Bool)

(assert (=> b!1839038 (= e!1175130 e!1175132)))

(declare-fun res!826418 () Bool)

(assert (=> b!1839038 (=> (not res!826418) (not e!1175132))))

(assert (=> b!1839038 (= res!826418 (is-Cons!20229 l!3679))))

(assert (= (and d!562360 (not res!826417)) b!1839038))

(assert (= (and b!1839038 res!826418) b!1839039))

(assert (= (and b!1839039 res!826416) b!1839040))

(assert (= (and b!1839039 (not res!826419)) b!1839041))

(assert (=> b!1839040 m!2266815))

(assert (=> b!1839041 m!2266823))

(assert (=> b!1838989 d!562360))

(declare-fun d!562362 () Bool)

(assert (=> d!562362 (subseq!380 l!3679 l!3679)))

(declare-fun lt!713686 () Unit!34937)

(declare-fun choose!11567 (List!20299) Unit!34937)

(assert (=> d!562362 (= lt!713686 (choose!11567 l!3679))))

(assert (=> d!562362 (= (lemmaSubseqRefl!44 l!3679) lt!713686)))

(declare-fun bs!408528 () Bool)

(assert (= bs!408528 d!562362))

(assert (=> bs!408528 m!2266801))

(declare-fun m!2266829 () Bool)

(assert (=> bs!408528 m!2266829))

(assert (=> b!1838989 d!562362))

(declare-fun b!1839050 () Bool)

(declare-fun e!1175139 () Bool)

(declare-fun tp!520129 () Bool)

(assert (=> b!1839050 (= e!1175139 (and tp_is_empty!8251 tp!520129))))

(assert (=> b!1838990 (= tp!520123 e!1175139)))

(assert (= (and b!1838990 (is-Cons!20229 (t!171728 l!3679))) b!1839050))

(push 1)

(assert (not b!1839033))

(assert (not d!562362))

(assert (not d!562356))

(assert (not b!1839034))

(assert (not bm!115078))

(assert tp_is_empty!8251)

(assert (not b!1839037))

(assert (not b!1839007))

(assert (not b!1839040))

(assert (not b!1839041))

(assert (not b!1839050))

(assert (not b!1839008))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1839081 () Bool)

(declare-fun e!1175162 () Unit!34937)

(declare-fun call!115087 () Unit!34937)

(assert (=> b!1839081 (= e!1175162 call!115087)))

(declare-fun b!1839082 () Bool)

(declare-fun e!1175159 () Unit!34937)

(assert (=> b!1839082 (= e!1175159 call!115087)))

(declare-fun c!300203 () Bool)

(declare-fun bm!115082 () Bool)

(assert (=> bm!115082 (= call!115087 (subseqTail!13 (ite c!300203 (ite c!300191 l!3679 (t!171728 l!3679)) (t!171728 (ite c!300191 l!3679 (t!171728 l!3679)))) (t!171728 (t!171728 l!3679))))))

(declare-fun b!1839083 () Bool)

(declare-fun e!1175161 () Bool)

(assert (=> b!1839083 (= e!1175161 (subseq!380 (ite c!300191 l!3679 (t!171728 l!3679)) (t!171728 l!3679)))))

(declare-fun d!562370 () Bool)

(assert (=> d!562370 (subseq!380 (tail!2756 (ite c!300191 l!3679 (t!171728 l!3679))) (t!171728 l!3679))))

(declare-fun lt!713693 () Unit!34937)

(declare-fun e!1175160 () Unit!34937)

(assert (=> d!562370 (= lt!713693 e!1175160)))

(declare-fun c!300202 () Bool)

(assert (=> d!562370 (= c!300202 (and (is-Cons!20229 (ite c!300191 l!3679 (t!171728 l!3679))) (is-Cons!20229 (t!171728 l!3679))))))

(assert (=> d!562370 e!1175161))

(declare-fun res!826431 () Bool)

(assert (=> d!562370 (=> (not res!826431) (not e!1175161))))

(assert (=> d!562370 (= res!826431 (not (isEmpty!12758 (ite c!300191 l!3679 (t!171728 l!3679)))))))

(assert (=> d!562370 (= (subseqTail!13 (ite c!300191 l!3679 (t!171728 l!3679)) (t!171728 l!3679)) lt!713693)))

(declare-fun b!1839084 () Bool)

(assert (=> b!1839084 (= e!1175160 e!1175162)))

(assert (=> b!1839084 (= c!300203 (subseq!380 (ite c!300191 l!3679 (t!171728 l!3679)) (t!171728 (t!171728 l!3679))))))

(declare-fun b!1839085 () Bool)

(declare-fun Unit!34945 () Unit!34937)

(assert (=> b!1839085 (= e!1175159 Unit!34945)))

(declare-fun b!1839086 () Bool)

(declare-fun Unit!34946 () Unit!34937)

(assert (=> b!1839086 (= e!1175160 Unit!34946)))

(declare-fun b!1839087 () Bool)

(declare-fun c!300204 () Bool)

(assert (=> b!1839087 (= c!300204 (not (isEmpty!12758 (t!171728 (ite c!300191 l!3679 (t!171728 l!3679))))))))

(assert (=> b!1839087 (= e!1175162 e!1175159)))

(assert (= (and d!562370 res!826431) b!1839083))

(assert (= (and d!562370 c!300202) b!1839084))

(assert (= (and d!562370 (not c!300202)) b!1839086))

(assert (= (and b!1839084 c!300203) b!1839081))

(assert (= (and b!1839084 (not c!300203)) b!1839087))

(assert (= (and b!1839087 c!300204) b!1839082))

(assert (= (and b!1839087 (not c!300204)) b!1839085))

(assert (= (or b!1839081 b!1839082) bm!115082))

(declare-fun m!2266849 () Bool)

(assert (=> d!562370 m!2266849))

(assert (=> d!562370 m!2266849))

(declare-fun m!2266851 () Bool)

(assert (=> d!562370 m!2266851))

(declare-fun m!2266853 () Bool)

(assert (=> d!562370 m!2266853))

(declare-fun m!2266855 () Bool)

(assert (=> b!1839084 m!2266855))

(declare-fun m!2266857 () Bool)

(assert (=> b!1839083 m!2266857))

(declare-fun m!2266859 () Bool)

(assert (=> bm!115082 m!2266859))

(declare-fun m!2266861 () Bool)

(assert (=> b!1839087 m!2266861))

(assert (=> bm!115078 d!562370))

(declare-fun d!562372 () Bool)

(assert (=> d!562372 (= (isEmpty!12758 (t!171728 l!3679)) (is-Nil!20229 (t!171728 l!3679)))))

(assert (=> b!1839037 d!562372))

(declare-fun b!1839090 () Bool)

(declare-fun e!1175165 () Bool)

(assert (=> b!1839090 (= e!1175165 (subseq!380 (t!171728 (t!171728 (t!171728 l!3679))) (t!171728 (t!171728 l!3679))))))

(declare-fun b!1839089 () Bool)

(declare-fun e!1175166 () Bool)

(declare-fun e!1175163 () Bool)

(assert (=> b!1839089 (= e!1175166 e!1175163)))

(declare-fun res!826435 () Bool)

(assert (=> b!1839089 (=> res!826435 e!1175163)))

(assert (=> b!1839089 (= res!826435 e!1175165)))

(declare-fun res!826432 () Bool)

(assert (=> b!1839089 (=> (not res!826432) (not e!1175165))))

(assert (=> b!1839089 (= res!826432 (= (h!25630 (t!171728 (t!171728 l!3679))) (h!25630 (t!171728 l!3679))))))

(declare-fun b!1839091 () Bool)

(assert (=> b!1839091 (= e!1175163 (subseq!380 (t!171728 (t!171728 l!3679)) (t!171728 (t!171728 l!3679))))))

(declare-fun d!562374 () Bool)

(declare-fun res!826433 () Bool)

(declare-fun e!1175164 () Bool)

(assert (=> d!562374 (=> res!826433 e!1175164)))

(assert (=> d!562374 (= res!826433 (is-Nil!20229 (t!171728 (t!171728 l!3679))))))

(assert (=> d!562374 (= (subseq!380 (t!171728 (t!171728 l!3679)) (t!171728 l!3679)) e!1175164)))

(declare-fun b!1839088 () Bool)

(assert (=> b!1839088 (= e!1175164 e!1175166)))

(declare-fun res!826434 () Bool)

(assert (=> b!1839088 (=> (not res!826434) (not e!1175166))))

(assert (=> b!1839088 (= res!826434 (is-Cons!20229 (t!171728 l!3679)))))

(assert (= (and d!562374 (not res!826433)) b!1839088))

(assert (= (and b!1839088 res!826434) b!1839089))

(assert (= (and b!1839089 res!826432) b!1839090))

(assert (= (and b!1839089 (not res!826435)) b!1839091))

(declare-fun m!2266863 () Bool)

(assert (=> b!1839090 m!2266863))

(declare-fun m!2266865 () Bool)

(assert (=> b!1839091 m!2266865))

(assert (=> b!1839007 d!562374))

(assert (=> d!562362 d!562360))

(declare-fun d!562376 () Bool)

(assert (=> d!562376 (subseq!380 l!3679 l!3679)))

(assert (=> d!562376 true))

(declare-fun _$75!309 () Unit!34937)

(assert (=> d!562376 (= (choose!11567 l!3679) _$75!309)))

(declare-fun bs!408530 () Bool)

(assert (= bs!408530 d!562376))

(assert (=> bs!408530 m!2266801))

(assert (=> d!562362 d!562376))

(assert (=> b!1839033 d!562360))

(declare-fun b!1839094 () Bool)

(declare-fun e!1175169 () Bool)

(assert (=> b!1839094 (= e!1175169 (subseq!380 (t!171728 l!3679) (t!171728 (t!171728 l!3679))))))

(declare-fun b!1839093 () Bool)

(declare-fun e!1175170 () Bool)

(declare-fun e!1175167 () Bool)

(assert (=> b!1839093 (= e!1175170 e!1175167)))

(declare-fun res!826439 () Bool)

(assert (=> b!1839093 (=> res!826439 e!1175167)))

(assert (=> b!1839093 (= res!826439 e!1175169)))

(declare-fun res!826436 () Bool)

(assert (=> b!1839093 (=> (not res!826436) (not e!1175169))))

(assert (=> b!1839093 (= res!826436 (= (h!25630 l!3679) (h!25630 (t!171728 l!3679))))))

(declare-fun b!1839095 () Bool)

(assert (=> b!1839095 (= e!1175167 (subseq!380 l!3679 (t!171728 (t!171728 l!3679))))))

(declare-fun d!562378 () Bool)

(declare-fun res!826437 () Bool)

(declare-fun e!1175168 () Bool)

(assert (=> d!562378 (=> res!826437 e!1175168)))

(assert (=> d!562378 (= res!826437 (is-Nil!20229 l!3679))))

(assert (=> d!562378 (= (subseq!380 l!3679 (t!171728 l!3679)) e!1175168)))

(declare-fun b!1839092 () Bool)

(assert (=> b!1839092 (= e!1175168 e!1175170)))

(declare-fun res!826438 () Bool)

(assert (=> b!1839092 (=> (not res!826438) (not e!1175170))))

(assert (=> b!1839092 (= res!826438 (is-Cons!20229 (t!171728 l!3679)))))

(assert (= (and d!562378 (not res!826437)) b!1839092))

(assert (= (and b!1839092 res!826438) b!1839093))

(assert (= (and b!1839093 res!826436) b!1839094))

(assert (= (and b!1839093 (not res!826439)) b!1839095))

(declare-fun m!2266867 () Bool)

(assert (=> b!1839094 m!2266867))

(declare-fun m!2266869 () Bool)

(assert (=> b!1839095 m!2266869))

(assert (=> b!1839034 d!562378))

(declare-fun b!1839098 () Bool)

(declare-fun e!1175173 () Bool)

(assert (=> b!1839098 (= e!1175173 (subseq!380 (t!171728 (t!171728 l!3679)) (t!171728 (t!171728 l!3679))))))

(declare-fun b!1839097 () Bool)

(declare-fun e!1175174 () Bool)

(declare-fun e!1175171 () Bool)

(assert (=> b!1839097 (= e!1175174 e!1175171)))

(declare-fun res!826443 () Bool)

(assert (=> b!1839097 (=> res!826443 e!1175171)))

(assert (=> b!1839097 (= res!826443 e!1175173)))

(declare-fun res!826440 () Bool)

(assert (=> b!1839097 (=> (not res!826440) (not e!1175173))))

(assert (=> b!1839097 (= res!826440 (= (h!25630 (t!171728 l!3679)) (h!25630 (t!171728 l!3679))))))

(declare-fun b!1839099 () Bool)

(assert (=> b!1839099 (= e!1175171 (subseq!380 (t!171728 l!3679) (t!171728 (t!171728 l!3679))))))

(declare-fun d!562380 () Bool)

(declare-fun res!826441 () Bool)

(declare-fun e!1175172 () Bool)

(assert (=> d!562380 (=> res!826441 e!1175172)))

(assert (=> d!562380 (= res!826441 (is-Nil!20229 (t!171728 l!3679)))))

(assert (=> d!562380 (= (subseq!380 (t!171728 l!3679) (t!171728 l!3679)) e!1175172)))

(declare-fun b!1839096 () Bool)

(assert (=> b!1839096 (= e!1175172 e!1175174)))

(declare-fun res!826442 () Bool)

(assert (=> b!1839096 (=> (not res!826442) (not e!1175174))))

(assert (=> b!1839096 (= res!826442 (is-Cons!20229 (t!171728 l!3679)))))

(assert (= (and d!562380 (not res!826441)) b!1839096))

(assert (= (and b!1839096 res!826442) b!1839097))

(assert (= (and b!1839097 res!826440) b!1839098))

(assert (= (and b!1839097 (not res!826443)) b!1839099))

(assert (=> b!1839098 m!2266865))

(assert (=> b!1839099 m!2266867))

(assert (=> b!1839008 d!562380))

(declare-fun b!1839102 () Bool)

(declare-fun e!1175177 () Bool)

(assert (=> b!1839102 (= e!1175177 (subseq!380 (t!171728 (tail!2756 l!3679)) (t!171728 l!3679)))))

(declare-fun b!1839101 () Bool)

(declare-fun e!1175178 () Bool)

(declare-fun e!1175175 () Bool)

(assert (=> b!1839101 (= e!1175178 e!1175175)))

(declare-fun res!826447 () Bool)

(assert (=> b!1839101 (=> res!826447 e!1175175)))

(assert (=> b!1839101 (= res!826447 e!1175177)))

(declare-fun res!826444 () Bool)

(assert (=> b!1839101 (=> (not res!826444) (not e!1175177))))

(assert (=> b!1839101 (= res!826444 (= (h!25630 (tail!2756 l!3679)) (h!25630 l!3679)))))

(declare-fun b!1839103 () Bool)

(assert (=> b!1839103 (= e!1175175 (subseq!380 (tail!2756 l!3679) (t!171728 l!3679)))))

(declare-fun d!562382 () Bool)

(declare-fun res!826445 () Bool)

(declare-fun e!1175176 () Bool)

(assert (=> d!562382 (=> res!826445 e!1175176)))

(assert (=> d!562382 (= res!826445 (is-Nil!20229 (tail!2756 l!3679)))))

(assert (=> d!562382 (= (subseq!380 (tail!2756 l!3679) l!3679) e!1175176)))

(declare-fun b!1839100 () Bool)

(assert (=> b!1839100 (= e!1175176 e!1175178)))

(declare-fun res!826446 () Bool)

(assert (=> b!1839100 (=> (not res!826446) (not e!1175178))))

(assert (=> b!1839100 (= res!826446 (is-Cons!20229 l!3679))))

(assert (= (and d!562382 (not res!826445)) b!1839100))

(assert (= (and b!1839100 res!826446) b!1839101))

(assert (= (and b!1839101 res!826444) b!1839102))

(assert (= (and b!1839101 (not res!826447)) b!1839103))

(declare-fun m!2266871 () Bool)

(assert (=> b!1839102 m!2266871))

(assert (=> b!1839103 m!2266817))

(declare-fun m!2266873 () Bool)

(assert (=> b!1839103 m!2266873))

(assert (=> d!562356 d!562382))

(declare-fun d!562384 () Bool)

(assert (=> d!562384 (= (tail!2756 l!3679) (t!171728 l!3679))))

(assert (=> d!562356 d!562384))

(declare-fun d!562386 () Bool)

(assert (=> d!562386 (= (isEmpty!12758 l!3679) (is-Nil!20229 l!3679))))

(assert (=> d!562356 d!562386))

(assert (=> b!1839040 d!562380))

(assert (=> b!1839041 d!562378))

(declare-fun b!1839104 () Bool)

(declare-fun e!1175179 () Bool)

(declare-fun tp!520133 () Bool)

(assert (=> b!1839104 (= e!1175179 (and tp_is_empty!8251 tp!520133))))

(assert (=> b!1839050 (= tp!520129 e!1175179)))

(assert (= (and b!1839050 (is-Cons!20229 (t!171728 (t!171728 l!3679)))) b!1839104))

(push 1)

(assert (not b!1839084))

(assert (not d!562376))

(assert (not b!1839102))

(assert (not d!562370))

(assert (not b!1839094))

(assert (not b!1839083))

(assert (not b!1839099))

(assert (not bm!115082))

(assert (not b!1839087))

(assert (not b!1839098))

(assert (not b!1839103))

(assert tp_is_empty!8251)

(assert (not b!1839090))

(assert (not b!1839104))

(assert (not b!1839091))

(assert (not b!1839095))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

