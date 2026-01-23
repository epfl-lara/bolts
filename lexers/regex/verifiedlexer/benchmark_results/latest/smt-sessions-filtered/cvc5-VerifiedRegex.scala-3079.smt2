; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!183188 () Bool)

(assert start!183188)

(declare-fun b!1840325 () Bool)

(declare-fun e!1176071 () Bool)

(declare-fun tp_is_empty!8315 () Bool)

(declare-fun tp!520383 () Bool)

(assert (=> b!1840325 (= e!1176071 (and tp_is_empty!8315 tp!520383))))

(declare-fun b!1840326 () Bool)

(declare-fun res!827080 () Bool)

(declare-fun e!1176070 () Bool)

(assert (=> b!1840326 (=> (not res!827080) (not e!1176070))))

(declare-datatypes ((B!1567 0))(
  ( (B!1568 (val!5731 Int)) )
))
(declare-datatypes ((List!20331 0))(
  ( (Nil!20261) (Cons!20261 (h!25662 B!1567) (t!171760 List!20331)) )
))
(declare-fun p!2031 () List!20331)

(declare-fun l!3477 () List!20331)

(declare-fun size!16061 (List!20331) Int)

(assert (=> b!1840326 (= res!827080 (<= (+ 1 (size!16061 p!2031)) (size!16061 l!3477)))))

(declare-fun b!1840327 () Bool)

(declare-fun e!1176069 () Bool)

(assert (=> b!1840327 (= e!1176070 e!1176069)))

(declare-fun res!827077 () Bool)

(assert (=> b!1840327 (=> (not res!827077) (not e!1176069))))

(declare-fun lt!714087 () List!20331)

(declare-fun isPrefix!1870 (List!20331 List!20331) Bool)

(assert (=> b!1840327 (= res!827077 (isPrefix!1870 (t!171760 p!2031) lt!714087))))

(declare-fun tail!2778 (List!20331) List!20331)

(assert (=> b!1840327 (= lt!714087 (tail!2778 l!3477))))

(declare-fun b!1840329 () Bool)

(declare-fun e!1176072 () Bool)

(declare-fun tp!520384 () Bool)

(assert (=> b!1840329 (= e!1176072 (and tp_is_empty!8315 tp!520384))))

(declare-fun b!1840330 () Bool)

(assert (=> b!1840330 (= e!1176069 (> (+ 1 (size!16061 (t!171760 p!2031))) (size!16061 lt!714087)))))

(declare-fun b!1840328 () Bool)

(declare-fun res!827079 () Bool)

(assert (=> b!1840328 (=> (not res!827079) (not e!1176070))))

(assert (=> b!1840328 (= res!827079 (is-Cons!20261 p!2031))))

(declare-fun res!827078 () Bool)

(assert (=> start!183188 (=> (not res!827078) (not e!1176070))))

(assert (=> start!183188 (= res!827078 (isPrefix!1870 p!2031 l!3477))))

(assert (=> start!183188 e!1176070))

(assert (=> start!183188 e!1176072))

(assert (=> start!183188 e!1176071))

(assert (= (and start!183188 res!827078) b!1840326))

(assert (= (and b!1840326 res!827080) b!1840328))

(assert (= (and b!1840328 res!827079) b!1840327))

(assert (= (and b!1840327 res!827077) b!1840330))

(assert (= (and start!183188 (is-Cons!20261 p!2031)) b!1840329))

(assert (= (and start!183188 (is-Cons!20261 l!3477)) b!1840325))

(declare-fun m!2267857 () Bool)

(assert (=> b!1840326 m!2267857))

(declare-fun m!2267859 () Bool)

(assert (=> b!1840326 m!2267859))

(declare-fun m!2267861 () Bool)

(assert (=> b!1840327 m!2267861))

(declare-fun m!2267863 () Bool)

(assert (=> b!1840327 m!2267863))

(declare-fun m!2267865 () Bool)

(assert (=> b!1840330 m!2267865))

(declare-fun m!2267867 () Bool)

(assert (=> b!1840330 m!2267867))

(declare-fun m!2267869 () Bool)

(assert (=> start!183188 m!2267869))

(push 1)

(assert (not b!1840325))

(assert (not b!1840329))

(assert tp_is_empty!8315)

(assert (not b!1840327))

(assert (not start!183188))

(assert (not b!1840326))

(assert (not b!1840330))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!562754 () Bool)

(declare-fun lt!714093 () Int)

(assert (=> d!562754 (>= lt!714093 0)))

(declare-fun e!1176087 () Int)

(assert (=> d!562754 (= lt!714093 e!1176087)))

(declare-fun c!300358 () Bool)

(assert (=> d!562754 (= c!300358 (is-Nil!20261 (t!171760 p!2031)))))

(assert (=> d!562754 (= (size!16061 (t!171760 p!2031)) lt!714093)))

(declare-fun b!1840353 () Bool)

(assert (=> b!1840353 (= e!1176087 0)))

(declare-fun b!1840354 () Bool)

(assert (=> b!1840354 (= e!1176087 (+ 1 (size!16061 (t!171760 (t!171760 p!2031)))))))

(assert (= (and d!562754 c!300358) b!1840353))

(assert (= (and d!562754 (not c!300358)) b!1840354))

(declare-fun m!2267885 () Bool)

(assert (=> b!1840354 m!2267885))

(assert (=> b!1840330 d!562754))

(declare-fun d!562758 () Bool)

(declare-fun lt!714094 () Int)

(assert (=> d!562758 (>= lt!714094 0)))

(declare-fun e!1176088 () Int)

(assert (=> d!562758 (= lt!714094 e!1176088)))

(declare-fun c!300359 () Bool)

(assert (=> d!562758 (= c!300359 (is-Nil!20261 lt!714087))))

(assert (=> d!562758 (= (size!16061 lt!714087) lt!714094)))

(declare-fun b!1840355 () Bool)

(assert (=> b!1840355 (= e!1176088 0)))

(declare-fun b!1840356 () Bool)

(assert (=> b!1840356 (= e!1176088 (+ 1 (size!16061 (t!171760 lt!714087))))))

(assert (= (and d!562758 c!300359) b!1840355))

(assert (= (and d!562758 (not c!300359)) b!1840356))

(declare-fun m!2267887 () Bool)

(assert (=> b!1840356 m!2267887))

(assert (=> b!1840330 d!562758))

(declare-fun b!1840376 () Bool)

(declare-fun e!1176100 () Bool)

(assert (=> b!1840376 (= e!1176100 (>= (size!16061 l!3477) (size!16061 p!2031)))))

(declare-fun b!1840374 () Bool)

(declare-fun res!827101 () Bool)

(declare-fun e!1176099 () Bool)

(assert (=> b!1840374 (=> (not res!827101) (not e!1176099))))

(declare-fun head!4314 (List!20331) B!1567)

(assert (=> b!1840374 (= res!827101 (= (head!4314 p!2031) (head!4314 l!3477)))))

(declare-fun b!1840375 () Bool)

(assert (=> b!1840375 (= e!1176099 (isPrefix!1870 (tail!2778 p!2031) (tail!2778 l!3477)))))

(declare-fun b!1840373 () Bool)

(declare-fun e!1176101 () Bool)

(assert (=> b!1840373 (= e!1176101 e!1176099)))

(declare-fun res!827103 () Bool)

(assert (=> b!1840373 (=> (not res!827103) (not e!1176099))))

(assert (=> b!1840373 (= res!827103 (not (is-Nil!20261 l!3477)))))

(declare-fun d!562760 () Bool)

(assert (=> d!562760 e!1176100))

(declare-fun res!827102 () Bool)

(assert (=> d!562760 (=> res!827102 e!1176100)))

(declare-fun lt!714101 () Bool)

(assert (=> d!562760 (= res!827102 (not lt!714101))))

(assert (=> d!562760 (= lt!714101 e!1176101)))

(declare-fun res!827104 () Bool)

(assert (=> d!562760 (=> res!827104 e!1176101)))

(assert (=> d!562760 (= res!827104 (is-Nil!20261 p!2031))))

(assert (=> d!562760 (= (isPrefix!1870 p!2031 l!3477) lt!714101)))

(assert (= (and d!562760 (not res!827104)) b!1840373))

(assert (= (and b!1840373 res!827103) b!1840374))

(assert (= (and b!1840374 res!827101) b!1840375))

(assert (= (and d!562760 (not res!827102)) b!1840376))

(assert (=> b!1840376 m!2267859))

(assert (=> b!1840376 m!2267857))

(declare-fun m!2267891 () Bool)

(assert (=> b!1840374 m!2267891))

(declare-fun m!2267893 () Bool)

(assert (=> b!1840374 m!2267893))

(declare-fun m!2267895 () Bool)

(assert (=> b!1840375 m!2267895))

(assert (=> b!1840375 m!2267863))

(assert (=> b!1840375 m!2267895))

(assert (=> b!1840375 m!2267863))

(declare-fun m!2267897 () Bool)

(assert (=> b!1840375 m!2267897))

(assert (=> start!183188 d!562760))

(declare-fun b!1840380 () Bool)

(declare-fun e!1176103 () Bool)

(assert (=> b!1840380 (= e!1176103 (>= (size!16061 lt!714087) (size!16061 (t!171760 p!2031))))))

(declare-fun b!1840378 () Bool)

(declare-fun res!827105 () Bool)

(declare-fun e!1176102 () Bool)

(assert (=> b!1840378 (=> (not res!827105) (not e!1176102))))

(assert (=> b!1840378 (= res!827105 (= (head!4314 (t!171760 p!2031)) (head!4314 lt!714087)))))

(declare-fun b!1840379 () Bool)

(assert (=> b!1840379 (= e!1176102 (isPrefix!1870 (tail!2778 (t!171760 p!2031)) (tail!2778 lt!714087)))))

(declare-fun b!1840377 () Bool)

(declare-fun e!1176104 () Bool)

(assert (=> b!1840377 (= e!1176104 e!1176102)))

(declare-fun res!827107 () Bool)

(assert (=> b!1840377 (=> (not res!827107) (not e!1176102))))

(assert (=> b!1840377 (= res!827107 (not (is-Nil!20261 lt!714087)))))

(declare-fun d!562766 () Bool)

(assert (=> d!562766 e!1176103))

(declare-fun res!827106 () Bool)

(assert (=> d!562766 (=> res!827106 e!1176103)))

(declare-fun lt!714102 () Bool)

(assert (=> d!562766 (= res!827106 (not lt!714102))))

(assert (=> d!562766 (= lt!714102 e!1176104)))

(declare-fun res!827108 () Bool)

(assert (=> d!562766 (=> res!827108 e!1176104)))

(assert (=> d!562766 (= res!827108 (is-Nil!20261 (t!171760 p!2031)))))

(assert (=> d!562766 (= (isPrefix!1870 (t!171760 p!2031) lt!714087) lt!714102)))

(assert (= (and d!562766 (not res!827108)) b!1840377))

(assert (= (and b!1840377 res!827107) b!1840378))

(assert (= (and b!1840378 res!827105) b!1840379))

(assert (= (and d!562766 (not res!827106)) b!1840380))

(assert (=> b!1840380 m!2267867))

(assert (=> b!1840380 m!2267865))

(declare-fun m!2267899 () Bool)

(assert (=> b!1840378 m!2267899))

(declare-fun m!2267901 () Bool)

(assert (=> b!1840378 m!2267901))

(declare-fun m!2267903 () Bool)

(assert (=> b!1840379 m!2267903))

(declare-fun m!2267905 () Bool)

(assert (=> b!1840379 m!2267905))

(assert (=> b!1840379 m!2267903))

(assert (=> b!1840379 m!2267905))

(declare-fun m!2267907 () Bool)

(assert (=> b!1840379 m!2267907))

(assert (=> b!1840327 d!562766))

(declare-fun d!562768 () Bool)

(assert (=> d!562768 (= (tail!2778 l!3477) (t!171760 l!3477))))

(assert (=> b!1840327 d!562768))

(declare-fun d!562770 () Bool)

(declare-fun lt!714105 () Int)

(assert (=> d!562770 (>= lt!714105 0)))

(declare-fun e!1176111 () Int)

(assert (=> d!562770 (= lt!714105 e!1176111)))

(declare-fun c!300364 () Bool)

(assert (=> d!562770 (= c!300364 (is-Nil!20261 p!2031))))

(assert (=> d!562770 (= (size!16061 p!2031) lt!714105)))

(declare-fun b!1840387 () Bool)

(assert (=> b!1840387 (= e!1176111 0)))

(declare-fun b!1840388 () Bool)

(assert (=> b!1840388 (= e!1176111 (+ 1 (size!16061 (t!171760 p!2031))))))

(assert (= (and d!562770 c!300364) b!1840387))

(assert (= (and d!562770 (not c!300364)) b!1840388))

(assert (=> b!1840388 m!2267865))

(assert (=> b!1840326 d!562770))

(declare-fun d!562772 () Bool)

(declare-fun lt!714106 () Int)

(assert (=> d!562772 (>= lt!714106 0)))

(declare-fun e!1176112 () Int)

(assert (=> d!562772 (= lt!714106 e!1176112)))

(declare-fun c!300365 () Bool)

(assert (=> d!562772 (= c!300365 (is-Nil!20261 l!3477))))

(assert (=> d!562772 (= (size!16061 l!3477) lt!714106)))

(declare-fun b!1840391 () Bool)

(assert (=> b!1840391 (= e!1176112 0)))

(declare-fun b!1840392 () Bool)

(assert (=> b!1840392 (= e!1176112 (+ 1 (size!16061 (t!171760 l!3477))))))

(assert (= (and d!562772 c!300365) b!1840391))

(assert (= (and d!562772 (not c!300365)) b!1840392))

(declare-fun m!2267909 () Bool)

(assert (=> b!1840392 m!2267909))

(assert (=> b!1840326 d!562772))

(declare-fun b!1840397 () Bool)

(declare-fun e!1176115 () Bool)

(declare-fun tp!520393 () Bool)

(assert (=> b!1840397 (= e!1176115 (and tp_is_empty!8315 tp!520393))))

(assert (=> b!1840329 (= tp!520384 e!1176115)))

(assert (= (and b!1840329 (is-Cons!20261 (t!171760 p!2031))) b!1840397))

(declare-fun b!1840398 () Bool)

(declare-fun e!1176116 () Bool)

(declare-fun tp!520394 () Bool)

(assert (=> b!1840398 (= e!1176116 (and tp_is_empty!8315 tp!520394))))

(assert (=> b!1840325 (= tp!520383 e!1176116)))

(assert (= (and b!1840325 (is-Cons!20261 (t!171760 l!3477))) b!1840398))

(push 1)

(assert (not b!1840397))

(assert tp_is_empty!8315)

(assert (not b!1840379))

(assert (not b!1840378))

(assert (not b!1840376))

(assert (not b!1840374))

(assert (not b!1840375))

(assert (not b!1840356))

(assert (not b!1840380))

(assert (not b!1840354))

(assert (not b!1840392))

(assert (not b!1840398))

(assert (not b!1840388))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

