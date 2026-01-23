; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!411442 () Bool)

(assert start!411442)

(declare-fun b!4281959 () Bool)

(declare-fun res!1757454 () Bool)

(declare-fun e!2658236 () Bool)

(assert (=> b!4281959 (=> (not res!1757454) (not e!2658236))))

(declare-datatypes ((B!2891 0))(
  ( (B!2892 (val!15315 Int)) )
))
(declare-datatypes ((List!47524 0))(
  ( (Nil!47400) (Cons!47400 (h!52820 B!2891) (t!354113 List!47524)) )
))
(declare-fun l!2982 () List!47524)

(declare-fun i!813 () Int)

(assert (=> b!4281959 (= res!1757454 (and (not (is-Nil!47400 l!2982)) (= i!813 0)))))

(declare-fun b!4281958 () Bool)

(declare-fun res!1757453 () Bool)

(assert (=> b!4281958 (=> (not res!1757453) (not e!2658236))))

(declare-fun size!34736 (List!47524) Int)

(assert (=> b!4281958 (= res!1757453 (< i!813 (size!34736 l!2982)))))

(declare-fun res!1757452 () Bool)

(assert (=> start!411442 (=> (not res!1757452) (not e!2658236))))

(assert (=> start!411442 (= res!1757452 (>= i!813 0))))

(assert (=> start!411442 e!2658236))

(assert (=> start!411442 true))

(declare-fun e!2658237 () Bool)

(assert (=> start!411442 e!2658237))

(declare-fun b!4281960 () Bool)

(declare-fun tail!6885 (List!47524) List!47524)

(declare-fun drop!2178 (List!47524 Int) List!47524)

(assert (=> b!4281960 (= e!2658236 (not (= (tail!6885 (drop!2178 l!2982 i!813)) (drop!2178 l!2982 (+ 1 i!813)))))))

(declare-fun b!4281961 () Bool)

(declare-fun tp_is_empty!23039 () Bool)

(declare-fun tp!1309499 () Bool)

(assert (=> b!4281961 (= e!2658237 (and tp_is_empty!23039 tp!1309499))))

(assert (= (and start!411442 res!1757452) b!4281958))

(assert (= (and b!4281958 res!1757453) b!4281959))

(assert (= (and b!4281959 res!1757454) b!4281960))

(assert (= (and start!411442 (is-Cons!47400 l!2982)) b!4281961))

(declare-fun m!4879199 () Bool)

(assert (=> b!4281958 m!4879199))

(declare-fun m!4879201 () Bool)

(assert (=> b!4281960 m!4879201))

(assert (=> b!4281960 m!4879201))

(declare-fun m!4879203 () Bool)

(assert (=> b!4281960 m!4879203))

(declare-fun m!4879205 () Bool)

(assert (=> b!4281960 m!4879205))

(push 1)

(assert (not b!4281960))

(assert (not b!4281958))

(assert (not b!4281961))

(assert tp_is_empty!23039)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1264831 () Bool)

(assert (=> d!1264831 (= (tail!6885 (drop!2178 l!2982 i!813)) (t!354113 (drop!2178 l!2982 i!813)))))

(assert (=> b!4281960 d!1264831))

(declare-fun b!4281992 () Bool)

(declare-fun e!2658257 () List!47524)

(assert (=> b!4281992 (= e!2658257 Nil!47400)))

(declare-fun b!4281993 () Bool)

(declare-fun e!2658254 () Int)

(declare-fun call!294392 () Int)

(assert (=> b!4281993 (= e!2658254 call!294392)))

(declare-fun b!4281994 () Bool)

(declare-fun e!2658258 () Int)

(assert (=> b!4281994 (= e!2658258 (- call!294392 i!813))))

(declare-fun b!4281995 () Bool)

(declare-fun e!2658256 () List!47524)

(assert (=> b!4281995 (= e!2658256 (drop!2178 (t!354113 l!2982) (- i!813 1)))))

(declare-fun bm!294387 () Bool)

(assert (=> bm!294387 (= call!294392 (size!34736 l!2982))))

(declare-fun b!4281996 () Bool)

(assert (=> b!4281996 (= e!2658254 e!2658258)))

(declare-fun c!729839 () Bool)

(assert (=> b!4281996 (= c!729839 (>= i!813 call!294392))))

(declare-fun b!4281997 () Bool)

(assert (=> b!4281997 (= e!2658257 e!2658256)))

(declare-fun c!729838 () Bool)

(assert (=> b!4281997 (= c!729838 (<= i!813 0))))

(declare-fun d!1264833 () Bool)

(declare-fun e!2658255 () Bool)

(assert (=> d!1264833 e!2658255))

(declare-fun res!1757466 () Bool)

(assert (=> d!1264833 (=> (not res!1757466) (not e!2658255))))

(declare-fun lt!1515306 () List!47524)

(declare-fun content!7514 (List!47524) (Set B!2891))

(assert (=> d!1264833 (= res!1757466 (set.subset (content!7514 lt!1515306) (content!7514 l!2982)))))

(assert (=> d!1264833 (= lt!1515306 e!2658257)))

(declare-fun c!729840 () Bool)

(assert (=> d!1264833 (= c!729840 (is-Nil!47400 l!2982))))

(assert (=> d!1264833 (= (drop!2178 l!2982 i!813) lt!1515306)))

(declare-fun b!4281999 () Bool)

(assert (=> b!4281999 (= e!2658255 (= (size!34736 lt!1515306) e!2658254))))

(declare-fun c!729837 () Bool)

(assert (=> b!4281999 (= c!729837 (<= i!813 0))))

(declare-fun b!4282001 () Bool)

(assert (=> b!4282001 (= e!2658258 0)))

(declare-fun b!4282002 () Bool)

(assert (=> b!4282002 (= e!2658256 l!2982)))

(assert (= (and d!1264833 c!729840) b!4281992))

(assert (= (and d!1264833 (not c!729840)) b!4281997))

(assert (= (and b!4281997 c!729838) b!4282002))

(assert (= (and b!4281997 (not c!729838)) b!4281995))

(assert (= (and d!1264833 res!1757466) b!4281999))

(assert (= (and b!4281999 c!729837) b!4281993))

(assert (= (and b!4281999 (not c!729837)) b!4281996))

(assert (= (and b!4281996 c!729839) b!4282001))

(assert (= (and b!4281996 (not c!729839)) b!4281994))

(assert (= (or b!4281993 b!4281996 b!4281994) bm!294387))

(declare-fun m!4879215 () Bool)

(assert (=> b!4281995 m!4879215))

(assert (=> bm!294387 m!4879199))

(declare-fun m!4879217 () Bool)

(assert (=> d!1264833 m!4879217))

(declare-fun m!4879219 () Bool)

(assert (=> d!1264833 m!4879219))

(declare-fun m!4879221 () Bool)

(assert (=> b!4281999 m!4879221))

(assert (=> b!4281960 d!1264833))

(declare-fun b!4282005 () Bool)

(declare-fun e!2658264 () List!47524)

(assert (=> b!4282005 (= e!2658264 Nil!47400)))

(declare-fun b!4282006 () Bool)

(declare-fun e!2658261 () Int)

(declare-fun call!294393 () Int)

(assert (=> b!4282006 (= e!2658261 call!294393)))

(declare-fun b!4282007 () Bool)

(declare-fun e!2658265 () Int)

(assert (=> b!4282007 (= e!2658265 (- call!294393 (+ 1 i!813)))))

(declare-fun b!4282008 () Bool)

(declare-fun e!2658263 () List!47524)

(assert (=> b!4282008 (= e!2658263 (drop!2178 (t!354113 l!2982) (- (+ 1 i!813) 1)))))

(declare-fun bm!294388 () Bool)

(assert (=> bm!294388 (= call!294393 (size!34736 l!2982))))

(declare-fun b!4282009 () Bool)

(assert (=> b!4282009 (= e!2658261 e!2658265)))

(declare-fun c!729845 () Bool)

(assert (=> b!4282009 (= c!729845 (>= (+ 1 i!813) call!294393))))

(declare-fun b!4282010 () Bool)

(assert (=> b!4282010 (= e!2658264 e!2658263)))

(declare-fun c!729844 () Bool)

(assert (=> b!4282010 (= c!729844 (<= (+ 1 i!813) 0))))

(declare-fun d!1264837 () Bool)

(declare-fun e!2658262 () Bool)

(assert (=> d!1264837 e!2658262))

(declare-fun res!1757467 () Bool)

(assert (=> d!1264837 (=> (not res!1757467) (not e!2658262))))

(declare-fun lt!1515307 () List!47524)

(assert (=> d!1264837 (= res!1757467 (set.subset (content!7514 lt!1515307) (content!7514 l!2982)))))

(assert (=> d!1264837 (= lt!1515307 e!2658264)))

(declare-fun c!729846 () Bool)

(assert (=> d!1264837 (= c!729846 (is-Nil!47400 l!2982))))

(assert (=> d!1264837 (= (drop!2178 l!2982 (+ 1 i!813)) lt!1515307)))

(declare-fun b!4282011 () Bool)

(assert (=> b!4282011 (= e!2658262 (= (size!34736 lt!1515307) e!2658261))))

(declare-fun c!729843 () Bool)

(assert (=> b!4282011 (= c!729843 (<= (+ 1 i!813) 0))))

(declare-fun b!4282012 () Bool)

(assert (=> b!4282012 (= e!2658265 0)))

(declare-fun b!4282013 () Bool)

(assert (=> b!4282013 (= e!2658263 l!2982)))

(assert (= (and d!1264837 c!729846) b!4282005))

(assert (= (and d!1264837 (not c!729846)) b!4282010))

(assert (= (and b!4282010 c!729844) b!4282013))

(assert (= (and b!4282010 (not c!729844)) b!4282008))

(assert (= (and d!1264837 res!1757467) b!4282011))

(assert (= (and b!4282011 c!729843) b!4282006))

(assert (= (and b!4282011 (not c!729843)) b!4282009))

(assert (= (and b!4282009 c!729845) b!4282012))

(assert (= (and b!4282009 (not c!729845)) b!4282007))

(assert (= (or b!4282006 b!4282009 b!4282007) bm!294388))

(declare-fun m!4879223 () Bool)

(assert (=> b!4282008 m!4879223))

(assert (=> bm!294388 m!4879199))

(declare-fun m!4879225 () Bool)

(assert (=> d!1264837 m!4879225))

(assert (=> d!1264837 m!4879219))

(declare-fun m!4879227 () Bool)

(assert (=> b!4282011 m!4879227))

(assert (=> b!4281960 d!1264837))

(declare-fun d!1264839 () Bool)

(declare-fun lt!1515311 () Int)

(assert (=> d!1264839 (>= lt!1515311 0)))

(declare-fun e!2658269 () Int)

(assert (=> d!1264839 (= lt!1515311 e!2658269)))

(declare-fun c!729850 () Bool)

(assert (=> d!1264839 (= c!729850 (is-Nil!47400 l!2982))))

(assert (=> d!1264839 (= (size!34736 l!2982) lt!1515311)))

(declare-fun b!4282020 () Bool)

(assert (=> b!4282020 (= e!2658269 0)))

(declare-fun b!4282021 () Bool)

(assert (=> b!4282021 (= e!2658269 (+ 1 (size!34736 (t!354113 l!2982))))))

(assert (= (and d!1264839 c!729850) b!4282020))

(assert (= (and d!1264839 (not c!729850)) b!4282021))

(declare-fun m!4879231 () Bool)

(assert (=> b!4282021 m!4879231))

(assert (=> b!4281958 d!1264839))

(declare-fun b!4282026 () Bool)

(declare-fun e!2658272 () Bool)

(declare-fun tp!1309505 () Bool)

(assert (=> b!4282026 (= e!2658272 (and tp_is_empty!23039 tp!1309505))))

(assert (=> b!4281961 (= tp!1309499 e!2658272)))

(assert (= (and b!4281961 (is-Cons!47400 (t!354113 l!2982))) b!4282026))

(push 1)

(assert (not d!1264837))

(assert (not bm!294387))

(assert (not b!4281995))

(assert (not b!4281999))

(assert (not b!4282008))

(assert tp_is_empty!23039)

(assert (not d!1264833))

(assert (not b!4282021))

(assert (not b!4282026))

(assert (not bm!294388))

(assert (not b!4282011))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1264847 () Bool)

(declare-fun lt!1515316 () Int)

(assert (=> d!1264847 (>= lt!1515316 0)))

(declare-fun e!2658296 () Int)

(assert (=> d!1264847 (= lt!1515316 e!2658296)))

(declare-fun c!729867 () Bool)

(assert (=> d!1264847 (= c!729867 (is-Nil!47400 lt!1515307))))

(assert (=> d!1264847 (= (size!34736 lt!1515307) lt!1515316)))

(declare-fun b!4282068 () Bool)

(assert (=> b!4282068 (= e!2658296 0)))

(declare-fun b!4282069 () Bool)

(assert (=> b!4282069 (= e!2658296 (+ 1 (size!34736 (t!354113 lt!1515307))))))

(assert (= (and d!1264847 c!729867) b!4282068))

(assert (= (and d!1264847 (not c!729867)) b!4282069))

(declare-fun m!4879247 () Bool)

(assert (=> b!4282069 m!4879247))

(assert (=> b!4282011 d!1264847))

(assert (=> bm!294387 d!1264839))

(declare-fun d!1264849 () Bool)

(declare-fun lt!1515317 () Int)

(assert (=> d!1264849 (>= lt!1515317 0)))

(declare-fun e!2658297 () Int)

(assert (=> d!1264849 (= lt!1515317 e!2658297)))

(declare-fun c!729868 () Bool)

(assert (=> d!1264849 (= c!729868 (is-Nil!47400 (t!354113 l!2982)))))

(assert (=> d!1264849 (= (size!34736 (t!354113 l!2982)) lt!1515317)))

(declare-fun b!4282070 () Bool)

(assert (=> b!4282070 (= e!2658297 0)))

(declare-fun b!4282071 () Bool)

(assert (=> b!4282071 (= e!2658297 (+ 1 (size!34736 (t!354113 (t!354113 l!2982)))))))

(assert (= (and d!1264849 c!729868) b!4282070))

(assert (= (and d!1264849 (not c!729868)) b!4282071))

(declare-fun m!4879249 () Bool)

(assert (=> b!4282071 m!4879249))

(assert (=> b!4282021 d!1264849))

(declare-fun b!4282072 () Bool)

(declare-fun e!2658301 () List!47524)

(assert (=> b!4282072 (= e!2658301 Nil!47400)))

(declare-fun b!4282073 () Bool)

(declare-fun e!2658298 () Int)

(declare-fun call!294398 () Int)

(assert (=> b!4282073 (= e!2658298 call!294398)))

(declare-fun b!4282074 () Bool)

(declare-fun e!2658302 () Int)

(assert (=> b!4282074 (= e!2658302 (- call!294398 (- i!813 1)))))

(declare-fun b!4282075 () Bool)

(declare-fun e!2658300 () List!47524)

(assert (=> b!4282075 (= e!2658300 (drop!2178 (t!354113 (t!354113 l!2982)) (- (- i!813 1) 1)))))

(declare-fun bm!294393 () Bool)

(assert (=> bm!294393 (= call!294398 (size!34736 (t!354113 l!2982)))))

(declare-fun b!4282076 () Bool)

(assert (=> b!4282076 (= e!2658298 e!2658302)))

(declare-fun c!729871 () Bool)

(assert (=> b!4282076 (= c!729871 (>= (- i!813 1) call!294398))))

(declare-fun b!4282077 () Bool)

(assert (=> b!4282077 (= e!2658301 e!2658300)))

(declare-fun c!729870 () Bool)

(assert (=> b!4282077 (= c!729870 (<= (- i!813 1) 0))))

(declare-fun d!1264851 () Bool)

(declare-fun e!2658299 () Bool)

(assert (=> d!1264851 e!2658299))

(declare-fun res!1757472 () Bool)

(assert (=> d!1264851 (=> (not res!1757472) (not e!2658299))))

(declare-fun lt!1515318 () List!47524)

(assert (=> d!1264851 (= res!1757472 (set.subset (content!7514 lt!1515318) (content!7514 (t!354113 l!2982))))))

(assert (=> d!1264851 (= lt!1515318 e!2658301)))

(declare-fun c!729872 () Bool)

(assert (=> d!1264851 (= c!729872 (is-Nil!47400 (t!354113 l!2982)))))

(assert (=> d!1264851 (= (drop!2178 (t!354113 l!2982) (- i!813 1)) lt!1515318)))

(declare-fun b!4282078 () Bool)

(assert (=> b!4282078 (= e!2658299 (= (size!34736 lt!1515318) e!2658298))))

(declare-fun c!729869 () Bool)

(assert (=> b!4282078 (= c!729869 (<= (- i!813 1) 0))))

(declare-fun b!4282079 () Bool)

(assert (=> b!4282079 (= e!2658302 0)))

(declare-fun b!4282080 () Bool)

(assert (=> b!4282080 (= e!2658300 (t!354113 l!2982))))

(assert (= (and d!1264851 c!729872) b!4282072))

(assert (= (and d!1264851 (not c!729872)) b!4282077))

(assert (= (and b!4282077 c!729870) b!4282080))

(assert (= (and b!4282077 (not c!729870)) b!4282075))

(assert (= (and d!1264851 res!1757472) b!4282078))

(assert (= (and b!4282078 c!729869) b!4282073))

(assert (= (and b!4282078 (not c!729869)) b!4282076))

(assert (= (and b!4282076 c!729871) b!4282079))

(assert (= (and b!4282076 (not c!729871)) b!4282074))

(assert (= (or b!4282073 b!4282076 b!4282074) bm!294393))

(declare-fun m!4879251 () Bool)

(assert (=> b!4282075 m!4879251))

(assert (=> bm!294393 m!4879231))

(declare-fun m!4879253 () Bool)

(assert (=> d!1264851 m!4879253))

(declare-fun m!4879255 () Bool)

(assert (=> d!1264851 m!4879255))

(declare-fun m!4879257 () Bool)

(assert (=> b!4282078 m!4879257))

(assert (=> b!4281995 d!1264851))

(declare-fun d!1264853 () Bool)

(declare-fun lt!1515319 () Int)

(assert (=> d!1264853 (>= lt!1515319 0)))

(declare-fun e!2658303 () Int)

(assert (=> d!1264853 (= lt!1515319 e!2658303)))

(declare-fun c!729873 () Bool)

(assert (=> d!1264853 (= c!729873 (is-Nil!47400 lt!1515306))))

(assert (=> d!1264853 (= (size!34736 lt!1515306) lt!1515319)))

(declare-fun b!4282081 () Bool)

(assert (=> b!4282081 (= e!2658303 0)))

(declare-fun b!4282082 () Bool)

(assert (=> b!4282082 (= e!2658303 (+ 1 (size!34736 (t!354113 lt!1515306))))))

(assert (= (and d!1264853 c!729873) b!4282081))

(assert (= (and d!1264853 (not c!729873)) b!4282082))

(declare-fun m!4879259 () Bool)

(assert (=> b!4282082 m!4879259))

(assert (=> b!4281999 d!1264853))

(declare-fun d!1264855 () Bool)

(declare-fun c!729876 () Bool)

(assert (=> d!1264855 (= c!729876 (is-Nil!47400 lt!1515306))))

(declare-fun e!2658306 () (Set B!2891))

(assert (=> d!1264855 (= (content!7514 lt!1515306) e!2658306)))

(declare-fun b!4282087 () Bool)

(assert (=> b!4282087 (= e!2658306 (as set.empty (Set B!2891)))))

(declare-fun b!4282088 () Bool)

(assert (=> b!4282088 (= e!2658306 (set.union (set.insert (h!52820 lt!1515306) (as set.empty (Set B!2891))) (content!7514 (t!354113 lt!1515306))))))

(assert (= (and d!1264855 c!729876) b!4282087))

(assert (= (and d!1264855 (not c!729876)) b!4282088))

(declare-fun m!4879261 () Bool)

(assert (=> b!4282088 m!4879261))

(declare-fun m!4879263 () Bool)

(assert (=> b!4282088 m!4879263))

(assert (=> d!1264833 d!1264855))

(declare-fun d!1264857 () Bool)

(declare-fun c!729877 () Bool)

(assert (=> d!1264857 (= c!729877 (is-Nil!47400 l!2982))))

(declare-fun e!2658307 () (Set B!2891))

(assert (=> d!1264857 (= (content!7514 l!2982) e!2658307)))

(declare-fun b!4282089 () Bool)

(assert (=> b!4282089 (= e!2658307 (as set.empty (Set B!2891)))))

(declare-fun b!4282090 () Bool)

(assert (=> b!4282090 (= e!2658307 (set.union (set.insert (h!52820 l!2982) (as set.empty (Set B!2891))) (content!7514 (t!354113 l!2982))))))

(assert (= (and d!1264857 c!729877) b!4282089))

(assert (= (and d!1264857 (not c!729877)) b!4282090))

(declare-fun m!4879265 () Bool)

(assert (=> b!4282090 m!4879265))

(assert (=> b!4282090 m!4879255))

(assert (=> d!1264833 d!1264857))

(assert (=> bm!294388 d!1264839))

(declare-fun b!4282091 () Bool)

(declare-fun e!2658311 () List!47524)

(assert (=> b!4282091 (= e!2658311 Nil!47400)))

(declare-fun b!4282092 () Bool)

(declare-fun e!2658308 () Int)

(declare-fun call!294399 () Int)

(assert (=> b!4282092 (= e!2658308 call!294399)))

(declare-fun b!4282093 () Bool)

(declare-fun e!2658312 () Int)

(assert (=> b!4282093 (= e!2658312 (- call!294399 (- (+ 1 i!813) 1)))))

(declare-fun b!4282094 () Bool)

(declare-fun e!2658310 () List!47524)

(assert (=> b!4282094 (= e!2658310 (drop!2178 (t!354113 (t!354113 l!2982)) (- (- (+ 1 i!813) 1) 1)))))

(declare-fun bm!294394 () Bool)

(assert (=> bm!294394 (= call!294399 (size!34736 (t!354113 l!2982)))))

(declare-fun b!4282095 () Bool)

(assert (=> b!4282095 (= e!2658308 e!2658312)))

(declare-fun c!729880 () Bool)

(assert (=> b!4282095 (= c!729880 (>= (- (+ 1 i!813) 1) call!294399))))

(declare-fun b!4282096 () Bool)

(assert (=> b!4282096 (= e!2658311 e!2658310)))

(declare-fun c!729879 () Bool)

(assert (=> b!4282096 (= c!729879 (<= (- (+ 1 i!813) 1) 0))))

(declare-fun d!1264859 () Bool)

(declare-fun e!2658309 () Bool)

(assert (=> d!1264859 e!2658309))

(declare-fun res!1757473 () Bool)

(assert (=> d!1264859 (=> (not res!1757473) (not e!2658309))))

(declare-fun lt!1515320 () List!47524)

(assert (=> d!1264859 (= res!1757473 (set.subset (content!7514 lt!1515320) (content!7514 (t!354113 l!2982))))))

(assert (=> d!1264859 (= lt!1515320 e!2658311)))

(declare-fun c!729881 () Bool)

(assert (=> d!1264859 (= c!729881 (is-Nil!47400 (t!354113 l!2982)))))

(assert (=> d!1264859 (= (drop!2178 (t!354113 l!2982) (- (+ 1 i!813) 1)) lt!1515320)))

(declare-fun b!4282097 () Bool)

(assert (=> b!4282097 (= e!2658309 (= (size!34736 lt!1515320) e!2658308))))

(declare-fun c!729878 () Bool)

(assert (=> b!4282097 (= c!729878 (<= (- (+ 1 i!813) 1) 0))))

(declare-fun b!4282098 () Bool)

(assert (=> b!4282098 (= e!2658312 0)))

(declare-fun b!4282099 () Bool)

(assert (=> b!4282099 (= e!2658310 (t!354113 l!2982))))

(assert (= (and d!1264859 c!729881) b!4282091))

(assert (= (and d!1264859 (not c!729881)) b!4282096))

(assert (= (and b!4282096 c!729879) b!4282099))

(assert (= (and b!4282096 (not c!729879)) b!4282094))

(assert (= (and d!1264859 res!1757473) b!4282097))

(assert (= (and b!4282097 c!729878) b!4282092))

(assert (= (and b!4282097 (not c!729878)) b!4282095))

(assert (= (and b!4282095 c!729880) b!4282098))

(assert (= (and b!4282095 (not c!729880)) b!4282093))

(assert (= (or b!4282092 b!4282095 b!4282093) bm!294394))

(declare-fun m!4879267 () Bool)

(assert (=> b!4282094 m!4879267))

(assert (=> bm!294394 m!4879231))

(declare-fun m!4879269 () Bool)

(assert (=> d!1264859 m!4879269))

(assert (=> d!1264859 m!4879255))

(declare-fun m!4879271 () Bool)

(assert (=> b!4282097 m!4879271))

(assert (=> b!4282008 d!1264859))

(declare-fun d!1264861 () Bool)

(declare-fun c!729882 () Bool)

(assert (=> d!1264861 (= c!729882 (is-Nil!47400 lt!1515307))))

(declare-fun e!2658313 () (Set B!2891))

(assert (=> d!1264861 (= (content!7514 lt!1515307) e!2658313)))

(declare-fun b!4282100 () Bool)

(assert (=> b!4282100 (= e!2658313 (as set.empty (Set B!2891)))))

(declare-fun b!4282101 () Bool)

(assert (=> b!4282101 (= e!2658313 (set.union (set.insert (h!52820 lt!1515307) (as set.empty (Set B!2891))) (content!7514 (t!354113 lt!1515307))))))

(assert (= (and d!1264861 c!729882) b!4282100))

(assert (= (and d!1264861 (not c!729882)) b!4282101))

(declare-fun m!4879273 () Bool)

(assert (=> b!4282101 m!4879273))

(declare-fun m!4879275 () Bool)

(assert (=> b!4282101 m!4879275))

(assert (=> d!1264837 d!1264861))

(assert (=> d!1264837 d!1264857))

(declare-fun b!4282102 () Bool)

(declare-fun e!2658314 () Bool)

(declare-fun tp!1309509 () Bool)

(assert (=> b!4282102 (= e!2658314 (and tp_is_empty!23039 tp!1309509))))

(assert (=> b!4282026 (= tp!1309505 e!2658314)))

(assert (= (and b!4282026 (is-Cons!47400 (t!354113 (t!354113 l!2982)))) b!4282102))

(push 1)

(assert (not b!4282097))

(assert (not b!4282082))

(assert (not bm!294394))

(assert (not b!4282069))

(assert (not b!4282088))

(assert (not bm!294393))

(assert (not b!4282071))

(assert (not d!1264851))

(assert (not b!4282094))

(assert tp_is_empty!23039)

(assert (not b!4282102))

(assert (not b!4282078))

(assert (not b!4282075))

(assert (not b!4282101))

(assert (not b!4282090))

(assert (not d!1264859))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

