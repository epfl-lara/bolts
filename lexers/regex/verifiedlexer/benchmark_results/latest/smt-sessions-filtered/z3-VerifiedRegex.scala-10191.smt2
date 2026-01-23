; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!532140 () Bool)

(assert start!532140)

(declare-fun b!5031106 () Bool)

(declare-fun e!3142931 () Bool)

(declare-fun tp_is_empty!36715 () Bool)

(declare-fun tp!1409520 () Bool)

(assert (=> b!5031106 (= e!3142931 (and tp_is_empty!36715 tp!1409520))))

(declare-fun b!5031107 () Bool)

(declare-fun e!3142934 () Bool)

(declare-fun e!3142932 () Bool)

(assert (=> b!5031107 (= e!3142934 e!3142932)))

(declare-fun res!2144159 () Bool)

(assert (=> b!5031107 (=> (not res!2144159) (not e!3142932))))

(declare-fun i!879 () Int)

(declare-fun j!102 () Int)

(declare-fun lt!2082079 () Int)

(assert (=> b!5031107 (= res!2144159 (and (< (- i!879 1) lt!2082079) (<= j!102 (- (- lt!2082079 (- i!879 1)) 1))))))

(declare-datatypes ((B!3093 0))(
  ( (B!3094 (val!23458 Int)) )
))
(declare-datatypes ((List!58361 0))(
  ( (Nil!58237) (Cons!58237 (h!64685 B!3093) (t!370777 List!58361)) )
))
(declare-fun lt!2082081 () List!58361)

(declare-fun size!38776 (List!58361) Int)

(assert (=> b!5031107 (= lt!2082079 (size!38776 lt!2082081))))

(declare-fun b!5031108 () Bool)

(declare-fun e!3142933 () Bool)

(assert (=> b!5031108 (= e!3142933 e!3142934)))

(declare-fun res!2144156 () Bool)

(assert (=> b!5031108 (=> (not res!2144156) (not e!3142934))))

(assert (=> b!5031108 (= res!2144156 (>= (- i!879 1) 0))))

(declare-fun l!2999 () List!58361)

(declare-fun tail!9938 (List!58361) List!58361)

(assert (=> b!5031108 (= lt!2082081 (tail!9938 l!2999))))

(declare-fun b!5031109 () Bool)

(declare-fun apply!14214 (List!58361 Int) B!3093)

(declare-fun take!790 (List!58361 Int) List!58361)

(declare-fun drop!2590 (List!58361 Int) List!58361)

(assert (=> b!5031109 (= e!3142932 (not (= (Cons!58237 (apply!14214 l!2999 i!879) (take!790 (drop!2590 l!2999 (+ 1 i!879)) j!102)) (take!790 (drop!2590 l!2999 i!879) (+ 1 j!102)))))))

(assert (=> b!5031109 (= (Cons!58237 (apply!14214 lt!2082081 (- i!879 1)) (take!790 (drop!2590 lt!2082081 (+ 1 (- i!879 1))) j!102)) (take!790 (drop!2590 lt!2082081 (- i!879 1)) (+ 1 j!102)))))

(declare-datatypes ((Unit!149429 0))(
  ( (Unit!149430) )
))
(declare-fun lt!2082080 () Unit!149429)

(declare-fun lemmaDropTakeAddOneLeft!104 (List!58361 Int Int) Unit!149429)

(assert (=> b!5031109 (= lt!2082080 (lemmaDropTakeAddOneLeft!104 lt!2082081 (- i!879 1) j!102))))

(declare-fun res!2144157 () Bool)

(declare-fun e!3142935 () Bool)

(assert (=> start!532140 (=> (not res!2144157) (not e!3142935))))

(assert (=> start!532140 (= res!2144157 (>= i!879 0))))

(assert (=> start!532140 e!3142935))

(assert (=> start!532140 true))

(assert (=> start!532140 e!3142931))

(declare-fun b!5031110 () Bool)

(assert (=> b!5031110 (= e!3142935 e!3142933)))

(declare-fun res!2144158 () Bool)

(assert (=> b!5031110 (=> (not res!2144158) (not e!3142933))))

(declare-fun lt!2082078 () Int)

(assert (=> b!5031110 (= res!2144158 (and (< i!879 lt!2082078) (>= j!102 0) (<= j!102 (- (- lt!2082078 i!879) 1)) (not (= i!879 0))))))

(assert (=> b!5031110 (= lt!2082078 (size!38776 l!2999))))

(assert (= (and start!532140 res!2144157) b!5031110))

(assert (= (and b!5031110 res!2144158) b!5031108))

(assert (= (and b!5031108 res!2144156) b!5031107))

(assert (= (and b!5031107 res!2144159) b!5031109))

(get-info :version)

(assert (= (and start!532140 ((_ is Cons!58237) l!2999)) b!5031106))

(declare-fun m!6066238 () Bool)

(assert (=> b!5031107 m!6066238))

(declare-fun m!6066240 () Bool)

(assert (=> b!5031108 m!6066240))

(declare-fun m!6066242 () Bool)

(assert (=> b!5031109 m!6066242))

(declare-fun m!6066244 () Bool)

(assert (=> b!5031109 m!6066244))

(assert (=> b!5031109 m!6066242))

(declare-fun m!6066246 () Bool)

(assert (=> b!5031109 m!6066246))

(declare-fun m!6066248 () Bool)

(assert (=> b!5031109 m!6066248))

(declare-fun m!6066250 () Bool)

(assert (=> b!5031109 m!6066250))

(declare-fun m!6066252 () Bool)

(assert (=> b!5031109 m!6066252))

(declare-fun m!6066254 () Bool)

(assert (=> b!5031109 m!6066254))

(declare-fun m!6066256 () Bool)

(assert (=> b!5031109 m!6066256))

(declare-fun m!6066258 () Bool)

(assert (=> b!5031109 m!6066258))

(declare-fun m!6066260 () Bool)

(assert (=> b!5031109 m!6066260))

(declare-fun m!6066262 () Bool)

(assert (=> b!5031109 m!6066262))

(assert (=> b!5031109 m!6066248))

(assert (=> b!5031109 m!6066258))

(assert (=> b!5031109 m!6066254))

(declare-fun m!6066264 () Bool)

(assert (=> b!5031110 m!6066264))

(check-sat (not b!5031106) tp_is_empty!36715 (not b!5031107) (not b!5031110) (not b!5031109) (not b!5031108))
(check-sat)
(get-model)

(declare-fun d!1619076 () Bool)

(declare-fun lt!2082084 () Int)

(assert (=> d!1619076 (>= lt!2082084 0)))

(declare-fun e!3142938 () Int)

(assert (=> d!1619076 (= lt!2082084 e!3142938)))

(declare-fun c!861355 () Bool)

(assert (=> d!1619076 (= c!861355 ((_ is Nil!58237) l!2999))))

(assert (=> d!1619076 (= (size!38776 l!2999) lt!2082084)))

(declare-fun b!5031115 () Bool)

(assert (=> b!5031115 (= e!3142938 0)))

(declare-fun b!5031116 () Bool)

(assert (=> b!5031116 (= e!3142938 (+ 1 (size!38776 (t!370777 l!2999))))))

(assert (= (and d!1619076 c!861355) b!5031115))

(assert (= (and d!1619076 (not c!861355)) b!5031116))

(declare-fun m!6066266 () Bool)

(assert (=> b!5031116 m!6066266))

(assert (=> b!5031110 d!1619076))

(declare-fun d!1619078 () Bool)

(assert (=> d!1619078 (= (tail!9938 l!2999) (t!370777 l!2999))))

(assert (=> b!5031108 d!1619078))

(declare-fun d!1619080 () Bool)

(declare-fun lt!2082090 () B!3093)

(declare-fun contains!19583 (List!58361 B!3093) Bool)

(assert (=> d!1619080 (contains!19583 l!2999 lt!2082090)))

(declare-fun e!3142956 () B!3093)

(assert (=> d!1619080 (= lt!2082090 e!3142956)))

(declare-fun c!861367 () Bool)

(assert (=> d!1619080 (= c!861367 (= i!879 0))))

(declare-fun e!3142955 () Bool)

(assert (=> d!1619080 e!3142955))

(declare-fun res!2144165 () Bool)

(assert (=> d!1619080 (=> (not res!2144165) (not e!3142955))))

(assert (=> d!1619080 (= res!2144165 (<= 0 i!879))))

(assert (=> d!1619080 (= (apply!14214 l!2999 i!879) lt!2082090)))

(declare-fun b!5031144 () Bool)

(assert (=> b!5031144 (= e!3142955 (< i!879 (size!38776 l!2999)))))

(declare-fun b!5031145 () Bool)

(declare-fun head!10794 (List!58361) B!3093)

(assert (=> b!5031145 (= e!3142956 (head!10794 l!2999))))

(declare-fun b!5031146 () Bool)

(assert (=> b!5031146 (= e!3142956 (apply!14214 (tail!9938 l!2999) (- i!879 1)))))

(assert (= (and d!1619080 res!2144165) b!5031144))

(assert (= (and d!1619080 c!861367) b!5031145))

(assert (= (and d!1619080 (not c!861367)) b!5031146))

(declare-fun m!6066278 () Bool)

(assert (=> d!1619080 m!6066278))

(assert (=> b!5031144 m!6066264))

(declare-fun m!6066280 () Bool)

(assert (=> b!5031145 m!6066280))

(assert (=> b!5031146 m!6066240))

(assert (=> b!5031146 m!6066240))

(declare-fun m!6066282 () Bool)

(assert (=> b!5031146 m!6066282))

(assert (=> b!5031109 d!1619080))

(declare-fun e!3142977 () List!58361)

(declare-fun b!5031179 () Bool)

(assert (=> b!5031179 (= e!3142977 (Cons!58237 (h!64685 (drop!2590 l!2999 (+ 1 i!879))) (take!790 (t!370777 (drop!2590 l!2999 (+ 1 i!879))) (- j!102 1))))))

(declare-fun b!5031181 () Bool)

(assert (=> b!5031181 (= e!3142977 Nil!58237)))

(declare-fun b!5031182 () Bool)

(declare-fun e!3142975 () Bool)

(declare-fun lt!2082095 () List!58361)

(declare-fun e!3142976 () Int)

(assert (=> b!5031182 (= e!3142975 (= (size!38776 lt!2082095) e!3142976))))

(declare-fun c!861382 () Bool)

(assert (=> b!5031182 (= c!861382 (<= j!102 0))))

(declare-fun b!5031183 () Bool)

(assert (=> b!5031183 (= e!3142976 0)))

(declare-fun b!5031184 () Bool)

(declare-fun e!3142978 () Int)

(assert (=> b!5031184 (= e!3142978 (size!38776 (drop!2590 l!2999 (+ 1 i!879))))))

(declare-fun b!5031185 () Bool)

(assert (=> b!5031185 (= e!3142976 e!3142978)))

(declare-fun c!861384 () Bool)

(assert (=> b!5031185 (= c!861384 (>= j!102 (size!38776 (drop!2590 l!2999 (+ 1 i!879)))))))

(declare-fun d!1619084 () Bool)

(assert (=> d!1619084 e!3142975))

(declare-fun res!2144170 () Bool)

(assert (=> d!1619084 (=> (not res!2144170) (not e!3142975))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10328 (List!58361) (InoxSet B!3093))

(assert (=> d!1619084 (= res!2144170 (= ((_ map implies) (content!10328 lt!2082095) (content!10328 (drop!2590 l!2999 (+ 1 i!879)))) ((as const (InoxSet B!3093)) true)))))

(assert (=> d!1619084 (= lt!2082095 e!3142977)))

(declare-fun c!861383 () Bool)

(assert (=> d!1619084 (= c!861383 (or ((_ is Nil!58237) (drop!2590 l!2999 (+ 1 i!879))) (<= j!102 0)))))

(assert (=> d!1619084 (= (take!790 (drop!2590 l!2999 (+ 1 i!879)) j!102) lt!2082095)))

(declare-fun b!5031180 () Bool)

(assert (=> b!5031180 (= e!3142978 j!102)))

(assert (= (and d!1619084 c!861383) b!5031181))

(assert (= (and d!1619084 (not c!861383)) b!5031179))

(assert (= (and d!1619084 res!2144170) b!5031182))

(assert (= (and b!5031182 c!861382) b!5031183))

(assert (= (and b!5031182 (not c!861382)) b!5031185))

(assert (= (and b!5031185 c!861384) b!5031184))

(assert (= (and b!5031185 (not c!861384)) b!5031180))

(declare-fun m!6066284 () Bool)

(assert (=> b!5031182 m!6066284))

(assert (=> b!5031184 m!6066254))

(declare-fun m!6066286 () Bool)

(assert (=> b!5031184 m!6066286))

(assert (=> b!5031185 m!6066254))

(assert (=> b!5031185 m!6066286))

(declare-fun m!6066288 () Bool)

(assert (=> b!5031179 m!6066288))

(declare-fun m!6066290 () Bool)

(assert (=> d!1619084 m!6066290))

(assert (=> d!1619084 m!6066254))

(declare-fun m!6066292 () Bool)

(assert (=> d!1619084 m!6066292))

(assert (=> b!5031109 d!1619084))

(declare-fun b!5031254 () Bool)

(declare-fun e!3143022 () List!58361)

(assert (=> b!5031254 (= e!3143022 Nil!58237)))

(declare-fun b!5031255 () Bool)

(declare-fun e!3143018 () Int)

(declare-fun call!350976 () Int)

(assert (=> b!5031255 (= e!3143018 call!350976)))

(declare-fun b!5031257 () Bool)

(declare-fun e!3143020 () Bool)

(declare-fun lt!2082106 () List!58361)

(assert (=> b!5031257 (= e!3143020 (= (size!38776 lt!2082106) e!3143018))))

(declare-fun c!861417 () Bool)

(assert (=> b!5031257 (= c!861417 (<= (+ 1 i!879) 0))))

(declare-fun b!5031258 () Bool)

(declare-fun e!3143021 () Int)

(assert (=> b!5031258 (= e!3143021 0)))

(declare-fun b!5031259 () Bool)

(assert (=> b!5031259 (= e!3143021 (- call!350976 (+ 1 i!879)))))

(declare-fun b!5031256 () Bool)

(declare-fun e!3143019 () List!58361)

(assert (=> b!5031256 (= e!3143019 l!2999)))

(declare-fun d!1619086 () Bool)

(assert (=> d!1619086 e!3143020))

(declare-fun res!2144181 () Bool)

(assert (=> d!1619086 (=> (not res!2144181) (not e!3143020))))

(assert (=> d!1619086 (= res!2144181 (= ((_ map implies) (content!10328 lt!2082106) (content!10328 l!2999)) ((as const (InoxSet B!3093)) true)))))

(assert (=> d!1619086 (= lt!2082106 e!3143022)))

(declare-fun c!861415 () Bool)

(assert (=> d!1619086 (= c!861415 ((_ is Nil!58237) l!2999))))

(assert (=> d!1619086 (= (drop!2590 l!2999 (+ 1 i!879)) lt!2082106)))

(declare-fun b!5031260 () Bool)

(assert (=> b!5031260 (= e!3143019 (drop!2590 (t!370777 l!2999) (- (+ 1 i!879) 1)))))

(declare-fun bm!350971 () Bool)

(assert (=> bm!350971 (= call!350976 (size!38776 l!2999))))

(declare-fun b!5031261 () Bool)

(assert (=> b!5031261 (= e!3143022 e!3143019)))

(declare-fun c!861416 () Bool)

(assert (=> b!5031261 (= c!861416 (<= (+ 1 i!879) 0))))

(declare-fun b!5031262 () Bool)

(assert (=> b!5031262 (= e!3143018 e!3143021)))

(declare-fun c!861414 () Bool)

(assert (=> b!5031262 (= c!861414 (>= (+ 1 i!879) call!350976))))

(assert (= (and d!1619086 c!861415) b!5031254))

(assert (= (and d!1619086 (not c!861415)) b!5031261))

(assert (= (and b!5031261 c!861416) b!5031256))

(assert (= (and b!5031261 (not c!861416)) b!5031260))

(assert (= (and d!1619086 res!2144181) b!5031257))

(assert (= (and b!5031257 c!861417) b!5031255))

(assert (= (and b!5031257 (not c!861417)) b!5031262))

(assert (= (and b!5031262 c!861414) b!5031258))

(assert (= (and b!5031262 (not c!861414)) b!5031259))

(assert (= (or b!5031255 b!5031262 b!5031259) bm!350971))

(declare-fun m!6066344 () Bool)

(assert (=> b!5031257 m!6066344))

(declare-fun m!6066346 () Bool)

(assert (=> d!1619086 m!6066346))

(declare-fun m!6066348 () Bool)

(assert (=> d!1619086 m!6066348))

(declare-fun m!6066350 () Bool)

(assert (=> b!5031260 m!6066350))

(assert (=> bm!350971 m!6066264))

(assert (=> b!5031109 d!1619086))

(declare-fun e!3143029 () List!58361)

(declare-fun b!5031270 () Bool)

(assert (=> b!5031270 (= e!3143029 (Cons!58237 (h!64685 (drop!2590 lt!2082081 (+ 1 (- i!879 1)))) (take!790 (t!370777 (drop!2590 lt!2082081 (+ 1 (- i!879 1)))) (- j!102 1))))))

(declare-fun b!5031272 () Bool)

(assert (=> b!5031272 (= e!3143029 Nil!58237)))

(declare-fun b!5031273 () Bool)

(declare-fun e!3143027 () Bool)

(declare-fun lt!2082108 () List!58361)

(declare-fun e!3143028 () Int)

(assert (=> b!5031273 (= e!3143027 (= (size!38776 lt!2082108) e!3143028))))

(declare-fun c!861421 () Bool)

(assert (=> b!5031273 (= c!861421 (<= j!102 0))))

(declare-fun b!5031274 () Bool)

(assert (=> b!5031274 (= e!3143028 0)))

(declare-fun b!5031275 () Bool)

(declare-fun e!3143030 () Int)

(assert (=> b!5031275 (= e!3143030 (size!38776 (drop!2590 lt!2082081 (+ 1 (- i!879 1)))))))

(declare-fun b!5031276 () Bool)

(assert (=> b!5031276 (= e!3143028 e!3143030)))

(declare-fun c!861423 () Bool)

(assert (=> b!5031276 (= c!861423 (>= j!102 (size!38776 (drop!2590 lt!2082081 (+ 1 (- i!879 1))))))))

(declare-fun d!1619100 () Bool)

(assert (=> d!1619100 e!3143027))

(declare-fun res!2144183 () Bool)

(assert (=> d!1619100 (=> (not res!2144183) (not e!3143027))))

(assert (=> d!1619100 (= res!2144183 (= ((_ map implies) (content!10328 lt!2082108) (content!10328 (drop!2590 lt!2082081 (+ 1 (- i!879 1))))) ((as const (InoxSet B!3093)) true)))))

(assert (=> d!1619100 (= lt!2082108 e!3143029)))

(declare-fun c!861422 () Bool)

(assert (=> d!1619100 (= c!861422 (or ((_ is Nil!58237) (drop!2590 lt!2082081 (+ 1 (- i!879 1)))) (<= j!102 0)))))

(assert (=> d!1619100 (= (take!790 (drop!2590 lt!2082081 (+ 1 (- i!879 1))) j!102) lt!2082108)))

(declare-fun b!5031271 () Bool)

(assert (=> b!5031271 (= e!3143030 j!102)))

(assert (= (and d!1619100 c!861422) b!5031272))

(assert (= (and d!1619100 (not c!861422)) b!5031270))

(assert (= (and d!1619100 res!2144183) b!5031273))

(assert (= (and b!5031273 c!861421) b!5031274))

(assert (= (and b!5031273 (not c!861421)) b!5031276))

(assert (= (and b!5031276 c!861423) b!5031275))

(assert (= (and b!5031276 (not c!861423)) b!5031271))

(declare-fun m!6066362 () Bool)

(assert (=> b!5031273 m!6066362))

(assert (=> b!5031275 m!6066248))

(declare-fun m!6066364 () Bool)

(assert (=> b!5031275 m!6066364))

(assert (=> b!5031276 m!6066248))

(assert (=> b!5031276 m!6066364))

(declare-fun m!6066366 () Bool)

(assert (=> b!5031270 m!6066366))

(declare-fun m!6066368 () Bool)

(assert (=> d!1619100 m!6066368))

(assert (=> d!1619100 m!6066248))

(declare-fun m!6066370 () Bool)

(assert (=> d!1619100 m!6066370))

(assert (=> b!5031109 d!1619100))

(declare-fun b!5031277 () Bool)

(declare-fun e!3143035 () List!58361)

(assert (=> b!5031277 (= e!3143035 Nil!58237)))

(declare-fun b!5031278 () Bool)

(declare-fun e!3143031 () Int)

(declare-fun call!350977 () Int)

(assert (=> b!5031278 (= e!3143031 call!350977)))

(declare-fun b!5031280 () Bool)

(declare-fun e!3143033 () Bool)

(declare-fun lt!2082109 () List!58361)

(assert (=> b!5031280 (= e!3143033 (= (size!38776 lt!2082109) e!3143031))))

(declare-fun c!861427 () Bool)

(assert (=> b!5031280 (= c!861427 (<= (+ 1 (- i!879 1)) 0))))

(declare-fun b!5031281 () Bool)

(declare-fun e!3143034 () Int)

(assert (=> b!5031281 (= e!3143034 0)))

(declare-fun b!5031282 () Bool)

(assert (=> b!5031282 (= e!3143034 (- call!350977 (+ 1 (- i!879 1))))))

(declare-fun b!5031279 () Bool)

(declare-fun e!3143032 () List!58361)

(assert (=> b!5031279 (= e!3143032 lt!2082081)))

(declare-fun d!1619104 () Bool)

(assert (=> d!1619104 e!3143033))

(declare-fun res!2144184 () Bool)

(assert (=> d!1619104 (=> (not res!2144184) (not e!3143033))))

(assert (=> d!1619104 (= res!2144184 (= ((_ map implies) (content!10328 lt!2082109) (content!10328 lt!2082081)) ((as const (InoxSet B!3093)) true)))))

(assert (=> d!1619104 (= lt!2082109 e!3143035)))

(declare-fun c!861425 () Bool)

(assert (=> d!1619104 (= c!861425 ((_ is Nil!58237) lt!2082081))))

(assert (=> d!1619104 (= (drop!2590 lt!2082081 (+ 1 (- i!879 1))) lt!2082109)))

(declare-fun b!5031283 () Bool)

(assert (=> b!5031283 (= e!3143032 (drop!2590 (t!370777 lt!2082081) (- (+ 1 (- i!879 1)) 1)))))

(declare-fun bm!350972 () Bool)

(assert (=> bm!350972 (= call!350977 (size!38776 lt!2082081))))

(declare-fun b!5031284 () Bool)

(assert (=> b!5031284 (= e!3143035 e!3143032)))

(declare-fun c!861426 () Bool)

(assert (=> b!5031284 (= c!861426 (<= (+ 1 (- i!879 1)) 0))))

(declare-fun b!5031285 () Bool)

(assert (=> b!5031285 (= e!3143031 e!3143034)))

(declare-fun c!861424 () Bool)

(assert (=> b!5031285 (= c!861424 (>= (+ 1 (- i!879 1)) call!350977))))

(assert (= (and d!1619104 c!861425) b!5031277))

(assert (= (and d!1619104 (not c!861425)) b!5031284))

(assert (= (and b!5031284 c!861426) b!5031279))

(assert (= (and b!5031284 (not c!861426)) b!5031283))

(assert (= (and d!1619104 res!2144184) b!5031280))

(assert (= (and b!5031280 c!861427) b!5031278))

(assert (= (and b!5031280 (not c!861427)) b!5031285))

(assert (= (and b!5031285 c!861424) b!5031281))

(assert (= (and b!5031285 (not c!861424)) b!5031282))

(assert (= (or b!5031278 b!5031285 b!5031282) bm!350972))

(declare-fun m!6066372 () Bool)

(assert (=> b!5031280 m!6066372))

(declare-fun m!6066374 () Bool)

(assert (=> d!1619104 m!6066374))

(declare-fun m!6066376 () Bool)

(assert (=> d!1619104 m!6066376))

(declare-fun m!6066378 () Bool)

(assert (=> b!5031283 m!6066378))

(assert (=> bm!350972 m!6066238))

(assert (=> b!5031109 d!1619104))

(declare-fun e!3143038 () List!58361)

(declare-fun b!5031286 () Bool)

(assert (=> b!5031286 (= e!3143038 (Cons!58237 (h!64685 (drop!2590 lt!2082081 (- i!879 1))) (take!790 (t!370777 (drop!2590 lt!2082081 (- i!879 1))) (- (+ 1 j!102) 1))))))

(declare-fun b!5031288 () Bool)

(assert (=> b!5031288 (= e!3143038 Nil!58237)))

(declare-fun b!5031289 () Bool)

(declare-fun e!3143036 () Bool)

(declare-fun lt!2082110 () List!58361)

(declare-fun e!3143037 () Int)

(assert (=> b!5031289 (= e!3143036 (= (size!38776 lt!2082110) e!3143037))))

(declare-fun c!861428 () Bool)

(assert (=> b!5031289 (= c!861428 (<= (+ 1 j!102) 0))))

(declare-fun b!5031290 () Bool)

(assert (=> b!5031290 (= e!3143037 0)))

(declare-fun b!5031291 () Bool)

(declare-fun e!3143039 () Int)

(assert (=> b!5031291 (= e!3143039 (size!38776 (drop!2590 lt!2082081 (- i!879 1))))))

(declare-fun b!5031292 () Bool)

(assert (=> b!5031292 (= e!3143037 e!3143039)))

(declare-fun c!861430 () Bool)

(assert (=> b!5031292 (= c!861430 (>= (+ 1 j!102) (size!38776 (drop!2590 lt!2082081 (- i!879 1)))))))

(declare-fun d!1619106 () Bool)

(assert (=> d!1619106 e!3143036))

(declare-fun res!2144185 () Bool)

(assert (=> d!1619106 (=> (not res!2144185) (not e!3143036))))

(assert (=> d!1619106 (= res!2144185 (= ((_ map implies) (content!10328 lt!2082110) (content!10328 (drop!2590 lt!2082081 (- i!879 1)))) ((as const (InoxSet B!3093)) true)))))

(assert (=> d!1619106 (= lt!2082110 e!3143038)))

(declare-fun c!861429 () Bool)

(assert (=> d!1619106 (= c!861429 (or ((_ is Nil!58237) (drop!2590 lt!2082081 (- i!879 1))) (<= (+ 1 j!102) 0)))))

(assert (=> d!1619106 (= (take!790 (drop!2590 lt!2082081 (- i!879 1)) (+ 1 j!102)) lt!2082110)))

(declare-fun b!5031287 () Bool)

(assert (=> b!5031287 (= e!3143039 (+ 1 j!102))))

(assert (= (and d!1619106 c!861429) b!5031288))

(assert (= (and d!1619106 (not c!861429)) b!5031286))

(assert (= (and d!1619106 res!2144185) b!5031289))

(assert (= (and b!5031289 c!861428) b!5031290))

(assert (= (and b!5031289 (not c!861428)) b!5031292))

(assert (= (and b!5031292 c!861430) b!5031291))

(assert (= (and b!5031292 (not c!861430)) b!5031287))

(declare-fun m!6066380 () Bool)

(assert (=> b!5031289 m!6066380))

(assert (=> b!5031291 m!6066242))

(declare-fun m!6066382 () Bool)

(assert (=> b!5031291 m!6066382))

(assert (=> b!5031292 m!6066242))

(assert (=> b!5031292 m!6066382))

(declare-fun m!6066384 () Bool)

(assert (=> b!5031286 m!6066384))

(declare-fun m!6066386 () Bool)

(assert (=> d!1619106 m!6066386))

(assert (=> d!1619106 m!6066242))

(declare-fun m!6066388 () Bool)

(assert (=> d!1619106 m!6066388))

(assert (=> b!5031109 d!1619106))

(declare-fun b!5031293 () Bool)

(declare-fun e!3143044 () List!58361)

(assert (=> b!5031293 (= e!3143044 Nil!58237)))

(declare-fun b!5031294 () Bool)

(declare-fun e!3143040 () Int)

(declare-fun call!350978 () Int)

(assert (=> b!5031294 (= e!3143040 call!350978)))

(declare-fun b!5031296 () Bool)

(declare-fun e!3143042 () Bool)

(declare-fun lt!2082111 () List!58361)

(assert (=> b!5031296 (= e!3143042 (= (size!38776 lt!2082111) e!3143040))))

(declare-fun c!861434 () Bool)

(assert (=> b!5031296 (= c!861434 (<= (- i!879 1) 0))))

(declare-fun b!5031297 () Bool)

(declare-fun e!3143043 () Int)

(assert (=> b!5031297 (= e!3143043 0)))

(declare-fun b!5031298 () Bool)

(assert (=> b!5031298 (= e!3143043 (- call!350978 (- i!879 1)))))

(declare-fun b!5031295 () Bool)

(declare-fun e!3143041 () List!58361)

(assert (=> b!5031295 (= e!3143041 lt!2082081)))

(declare-fun d!1619108 () Bool)

(assert (=> d!1619108 e!3143042))

(declare-fun res!2144186 () Bool)

(assert (=> d!1619108 (=> (not res!2144186) (not e!3143042))))

(assert (=> d!1619108 (= res!2144186 (= ((_ map implies) (content!10328 lt!2082111) (content!10328 lt!2082081)) ((as const (InoxSet B!3093)) true)))))

(assert (=> d!1619108 (= lt!2082111 e!3143044)))

(declare-fun c!861432 () Bool)

(assert (=> d!1619108 (= c!861432 ((_ is Nil!58237) lt!2082081))))

(assert (=> d!1619108 (= (drop!2590 lt!2082081 (- i!879 1)) lt!2082111)))

(declare-fun b!5031299 () Bool)

(assert (=> b!5031299 (= e!3143041 (drop!2590 (t!370777 lt!2082081) (- (- i!879 1) 1)))))

(declare-fun bm!350973 () Bool)

(assert (=> bm!350973 (= call!350978 (size!38776 lt!2082081))))

(declare-fun b!5031300 () Bool)

(assert (=> b!5031300 (= e!3143044 e!3143041)))

(declare-fun c!861433 () Bool)

(assert (=> b!5031300 (= c!861433 (<= (- i!879 1) 0))))

(declare-fun b!5031301 () Bool)

(assert (=> b!5031301 (= e!3143040 e!3143043)))

(declare-fun c!861431 () Bool)

(assert (=> b!5031301 (= c!861431 (>= (- i!879 1) call!350978))))

(assert (= (and d!1619108 c!861432) b!5031293))

(assert (= (and d!1619108 (not c!861432)) b!5031300))

(assert (= (and b!5031300 c!861433) b!5031295))

(assert (= (and b!5031300 (not c!861433)) b!5031299))

(assert (= (and d!1619108 res!2144186) b!5031296))

(assert (= (and b!5031296 c!861434) b!5031294))

(assert (= (and b!5031296 (not c!861434)) b!5031301))

(assert (= (and b!5031301 c!861431) b!5031297))

(assert (= (and b!5031301 (not c!861431)) b!5031298))

(assert (= (or b!5031294 b!5031301 b!5031298) bm!350973))

(declare-fun m!6066390 () Bool)

(assert (=> b!5031296 m!6066390))

(declare-fun m!6066392 () Bool)

(assert (=> d!1619108 m!6066392))

(assert (=> d!1619108 m!6066376))

(declare-fun m!6066394 () Bool)

(assert (=> b!5031299 m!6066394))

(assert (=> bm!350973 m!6066238))

(assert (=> b!5031109 d!1619108))

(declare-fun d!1619110 () Bool)

(declare-fun lt!2082112 () B!3093)

(assert (=> d!1619110 (contains!19583 lt!2082081 lt!2082112)))

(declare-fun e!3143046 () B!3093)

(assert (=> d!1619110 (= lt!2082112 e!3143046)))

(declare-fun c!861435 () Bool)

(assert (=> d!1619110 (= c!861435 (= (- i!879 1) 0))))

(declare-fun e!3143045 () Bool)

(assert (=> d!1619110 e!3143045))

(declare-fun res!2144187 () Bool)

(assert (=> d!1619110 (=> (not res!2144187) (not e!3143045))))

(assert (=> d!1619110 (= res!2144187 (<= 0 (- i!879 1)))))

(assert (=> d!1619110 (= (apply!14214 lt!2082081 (- i!879 1)) lt!2082112)))

(declare-fun b!5031302 () Bool)

(assert (=> b!5031302 (= e!3143045 (< (- i!879 1) (size!38776 lt!2082081)))))

(declare-fun b!5031303 () Bool)

(assert (=> b!5031303 (= e!3143046 (head!10794 lt!2082081))))

(declare-fun b!5031304 () Bool)

(assert (=> b!5031304 (= e!3143046 (apply!14214 (tail!9938 lt!2082081) (- (- i!879 1) 1)))))

(assert (= (and d!1619110 res!2144187) b!5031302))

(assert (= (and d!1619110 c!861435) b!5031303))

(assert (= (and d!1619110 (not c!861435)) b!5031304))

(declare-fun m!6066396 () Bool)

(assert (=> d!1619110 m!6066396))

(assert (=> b!5031302 m!6066238))

(declare-fun m!6066398 () Bool)

(assert (=> b!5031303 m!6066398))

(declare-fun m!6066400 () Bool)

(assert (=> b!5031304 m!6066400))

(assert (=> b!5031304 m!6066400))

(declare-fun m!6066402 () Bool)

(assert (=> b!5031304 m!6066402))

(assert (=> b!5031109 d!1619110))

(declare-fun e!3143049 () List!58361)

(declare-fun b!5031305 () Bool)

(assert (=> b!5031305 (= e!3143049 (Cons!58237 (h!64685 (drop!2590 l!2999 i!879)) (take!790 (t!370777 (drop!2590 l!2999 i!879)) (- (+ 1 j!102) 1))))))

(declare-fun b!5031307 () Bool)

(assert (=> b!5031307 (= e!3143049 Nil!58237)))

(declare-fun b!5031308 () Bool)

(declare-fun e!3143047 () Bool)

(declare-fun lt!2082113 () List!58361)

(declare-fun e!3143048 () Int)

(assert (=> b!5031308 (= e!3143047 (= (size!38776 lt!2082113) e!3143048))))

(declare-fun c!861436 () Bool)

(assert (=> b!5031308 (= c!861436 (<= (+ 1 j!102) 0))))

(declare-fun b!5031309 () Bool)

(assert (=> b!5031309 (= e!3143048 0)))

(declare-fun b!5031310 () Bool)

(declare-fun e!3143050 () Int)

(assert (=> b!5031310 (= e!3143050 (size!38776 (drop!2590 l!2999 i!879)))))

(declare-fun b!5031311 () Bool)

(assert (=> b!5031311 (= e!3143048 e!3143050)))

(declare-fun c!861438 () Bool)

(assert (=> b!5031311 (= c!861438 (>= (+ 1 j!102) (size!38776 (drop!2590 l!2999 i!879))))))

(declare-fun d!1619112 () Bool)

(assert (=> d!1619112 e!3143047))

(declare-fun res!2144188 () Bool)

(assert (=> d!1619112 (=> (not res!2144188) (not e!3143047))))

(assert (=> d!1619112 (= res!2144188 (= ((_ map implies) (content!10328 lt!2082113) (content!10328 (drop!2590 l!2999 i!879))) ((as const (InoxSet B!3093)) true)))))

(assert (=> d!1619112 (= lt!2082113 e!3143049)))

(declare-fun c!861437 () Bool)

(assert (=> d!1619112 (= c!861437 (or ((_ is Nil!58237) (drop!2590 l!2999 i!879)) (<= (+ 1 j!102) 0)))))

(assert (=> d!1619112 (= (take!790 (drop!2590 l!2999 i!879) (+ 1 j!102)) lt!2082113)))

(declare-fun b!5031306 () Bool)

(assert (=> b!5031306 (= e!3143050 (+ 1 j!102))))

(assert (= (and d!1619112 c!861437) b!5031307))

(assert (= (and d!1619112 (not c!861437)) b!5031305))

(assert (= (and d!1619112 res!2144188) b!5031308))

(assert (= (and b!5031308 c!861436) b!5031309))

(assert (= (and b!5031308 (not c!861436)) b!5031311))

(assert (= (and b!5031311 c!861438) b!5031310))

(assert (= (and b!5031311 (not c!861438)) b!5031306))

(declare-fun m!6066404 () Bool)

(assert (=> b!5031308 m!6066404))

(assert (=> b!5031310 m!6066258))

(declare-fun m!6066406 () Bool)

(assert (=> b!5031310 m!6066406))

(assert (=> b!5031311 m!6066258))

(assert (=> b!5031311 m!6066406))

(declare-fun m!6066408 () Bool)

(assert (=> b!5031305 m!6066408))

(declare-fun m!6066410 () Bool)

(assert (=> d!1619112 m!6066410))

(assert (=> d!1619112 m!6066258))

(declare-fun m!6066412 () Bool)

(assert (=> d!1619112 m!6066412))

(assert (=> b!5031109 d!1619112))

(declare-fun d!1619114 () Bool)

(assert (=> d!1619114 (= (Cons!58237 (apply!14214 lt!2082081 (- i!879 1)) (take!790 (drop!2590 lt!2082081 (+ (- i!879 1) 1)) j!102)) (take!790 (drop!2590 lt!2082081 (- i!879 1)) (+ j!102 1)))))

(declare-fun lt!2082123 () Unit!149429)

(declare-fun choose!37231 (List!58361 Int Int) Unit!149429)

(assert (=> d!1619114 (= lt!2082123 (choose!37231 lt!2082081 (- i!879 1) j!102))))

(declare-fun e!3143065 () Bool)

(assert (=> d!1619114 e!3143065))

(declare-fun res!2144196 () Bool)

(assert (=> d!1619114 (=> (not res!2144196) (not e!3143065))))

(assert (=> d!1619114 (= res!2144196 (>= (- i!879 1) 0))))

(assert (=> d!1619114 (= (lemmaDropTakeAddOneLeft!104 lt!2082081 (- i!879 1) j!102) lt!2082123)))

(declare-fun b!5031333 () Bool)

(assert (=> b!5031333 (= e!3143065 (< (- i!879 1) (size!38776 lt!2082081)))))

(assert (= (and d!1619114 res!2144196) b!5031333))

(assert (=> d!1619114 m!6066252))

(declare-fun m!6066434 () Bool)

(assert (=> d!1619114 m!6066434))

(declare-fun m!6066436 () Bool)

(assert (=> d!1619114 m!6066436))

(assert (=> d!1619114 m!6066434))

(declare-fun m!6066438 () Bool)

(assert (=> d!1619114 m!6066438))

(assert (=> d!1619114 m!6066242))

(assert (=> d!1619114 m!6066242))

(declare-fun m!6066440 () Bool)

(assert (=> d!1619114 m!6066440))

(assert (=> b!5031333 m!6066238))

(assert (=> b!5031109 d!1619114))

(declare-fun b!5031338 () Bool)

(declare-fun e!3143072 () List!58361)

(assert (=> b!5031338 (= e!3143072 Nil!58237)))

(declare-fun b!5031339 () Bool)

(declare-fun e!3143068 () Int)

(declare-fun call!350980 () Int)

(assert (=> b!5031339 (= e!3143068 call!350980)))

(declare-fun b!5031341 () Bool)

(declare-fun e!3143070 () Bool)

(declare-fun lt!2082126 () List!58361)

(assert (=> b!5031341 (= e!3143070 (= (size!38776 lt!2082126) e!3143068))))

(declare-fun c!861451 () Bool)

(assert (=> b!5031341 (= c!861451 (<= i!879 0))))

(declare-fun b!5031342 () Bool)

(declare-fun e!3143071 () Int)

(assert (=> b!5031342 (= e!3143071 0)))

(declare-fun b!5031343 () Bool)

(assert (=> b!5031343 (= e!3143071 (- call!350980 i!879))))

(declare-fun b!5031340 () Bool)

(declare-fun e!3143069 () List!58361)

(assert (=> b!5031340 (= e!3143069 l!2999)))

(declare-fun d!1619126 () Bool)

(assert (=> d!1619126 e!3143070))

(declare-fun res!2144197 () Bool)

(assert (=> d!1619126 (=> (not res!2144197) (not e!3143070))))

(assert (=> d!1619126 (= res!2144197 (= ((_ map implies) (content!10328 lt!2082126) (content!10328 l!2999)) ((as const (InoxSet B!3093)) true)))))

(assert (=> d!1619126 (= lt!2082126 e!3143072)))

(declare-fun c!861449 () Bool)

(assert (=> d!1619126 (= c!861449 ((_ is Nil!58237) l!2999))))

(assert (=> d!1619126 (= (drop!2590 l!2999 i!879) lt!2082126)))

(declare-fun b!5031344 () Bool)

(assert (=> b!5031344 (= e!3143069 (drop!2590 (t!370777 l!2999) (- i!879 1)))))

(declare-fun bm!350975 () Bool)

(assert (=> bm!350975 (= call!350980 (size!38776 l!2999))))

(declare-fun b!5031345 () Bool)

(assert (=> b!5031345 (= e!3143072 e!3143069)))

(declare-fun c!861450 () Bool)

(assert (=> b!5031345 (= c!861450 (<= i!879 0))))

(declare-fun b!5031346 () Bool)

(assert (=> b!5031346 (= e!3143068 e!3143071)))

(declare-fun c!861448 () Bool)

(assert (=> b!5031346 (= c!861448 (>= i!879 call!350980))))

(assert (= (and d!1619126 c!861449) b!5031338))

(assert (= (and d!1619126 (not c!861449)) b!5031345))

(assert (= (and b!5031345 c!861450) b!5031340))

(assert (= (and b!5031345 (not c!861450)) b!5031344))

(assert (= (and d!1619126 res!2144197) b!5031341))

(assert (= (and b!5031341 c!861451) b!5031339))

(assert (= (and b!5031341 (not c!861451)) b!5031346))

(assert (= (and b!5031346 c!861448) b!5031342))

(assert (= (and b!5031346 (not c!861448)) b!5031343))

(assert (= (or b!5031339 b!5031346 b!5031343) bm!350975))

(declare-fun m!6066446 () Bool)

(assert (=> b!5031341 m!6066446))

(declare-fun m!6066448 () Bool)

(assert (=> d!1619126 m!6066448))

(assert (=> d!1619126 m!6066348))

(declare-fun m!6066450 () Bool)

(assert (=> b!5031344 m!6066450))

(assert (=> bm!350975 m!6066264))

(assert (=> b!5031109 d!1619126))

(declare-fun d!1619128 () Bool)

(declare-fun lt!2082127 () Int)

(assert (=> d!1619128 (>= lt!2082127 0)))

(declare-fun e!3143076 () Int)

(assert (=> d!1619128 (= lt!2082127 e!3143076)))

(declare-fun c!861452 () Bool)

(assert (=> d!1619128 (= c!861452 ((_ is Nil!58237) lt!2082081))))

(assert (=> d!1619128 (= (size!38776 lt!2082081) lt!2082127)))

(declare-fun b!5031352 () Bool)

(assert (=> b!5031352 (= e!3143076 0)))

(declare-fun b!5031353 () Bool)

(assert (=> b!5031353 (= e!3143076 (+ 1 (size!38776 (t!370777 lt!2082081))))))

(assert (= (and d!1619128 c!861452) b!5031352))

(assert (= (and d!1619128 (not c!861452)) b!5031353))

(declare-fun m!6066452 () Bool)

(assert (=> b!5031353 m!6066452))

(assert (=> b!5031107 d!1619128))

(declare-fun b!5031358 () Bool)

(declare-fun e!3143079 () Bool)

(declare-fun tp!1409526 () Bool)

(assert (=> b!5031358 (= e!3143079 (and tp_is_empty!36715 tp!1409526))))

(assert (=> b!5031106 (= tp!1409520 e!3143079)))

(assert (= (and b!5031106 ((_ is Cons!58237) (t!370777 l!2999))) b!5031358))

(check-sat (not b!5031286) (not d!1619106) (not b!5031341) (not d!1619080) (not b!5031179) (not b!5031311) (not b!5031302) tp_is_empty!36715 (not d!1619126) (not b!5031275) (not b!5031182) (not b!5031304) (not bm!350971) (not b!5031145) (not b!5031283) (not b!5031333) (not b!5031270) (not b!5031292) (not d!1619100) (not b!5031299) (not b!5031144) (not b!5031303) (not d!1619104) (not b!5031310) (not b!5031116) (not bm!350972) (not d!1619086) (not bm!350975) (not b!5031260) (not b!5031146) (not d!1619112) (not b!5031184) (not b!5031305) (not d!1619108) (not d!1619114) (not b!5031280) (not b!5031257) (not b!5031289) (not d!1619110) (not b!5031273) (not d!1619084) (not b!5031291) (not b!5031185) (not b!5031353) (not b!5031358) (not b!5031276) (not bm!350973) (not b!5031296) (not b!5031344) (not b!5031308))
(check-sat)
