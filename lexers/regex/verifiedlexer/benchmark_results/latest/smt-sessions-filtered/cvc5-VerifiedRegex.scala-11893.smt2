; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667236 () Bool)

(assert start!667236)

(declare-fun b!6952151 () Bool)

(assert (=> b!6952151 true))

(assert (=> b!6952151 true))

(declare-fun bs!1857772 () Bool)

(declare-fun b!6952161 () Bool)

(assert (= bs!1857772 (and b!6952161 b!6952151)))

(declare-fun lambda!396528 () Int)

(declare-fun lambda!396527 () Int)

(assert (=> bs!1857772 (not (= lambda!396528 lambda!396527))))

(assert (=> b!6952161 true))

(assert (=> b!6952161 true))

(declare-fun b!6952146 () Bool)

(declare-fun e!4180993 () Bool)

(declare-fun tp!1916510 () Bool)

(assert (=> b!6952146 (= e!4180993 tp!1916510)))

(declare-fun b!6952147 () Bool)

(declare-fun e!4180992 () Bool)

(declare-fun tp_is_empty!43289 () Bool)

(declare-fun tp!1916511 () Bool)

(assert (=> b!6952147 (= e!4180992 (and tp_is_empty!43289 tp!1916511))))

(declare-fun b!6952148 () Bool)

(assert (=> b!6952148 (= e!4180993 tp_is_empty!43289)))

(declare-fun b!6952149 () Bool)

(declare-fun e!4180994 () Bool)

(declare-datatypes ((C!34334 0))(
  ( (C!34335 (val!26869 Int)) )
))
(declare-datatypes ((Regex!17032 0))(
  ( (ElementMatch!17032 (c!1289434 C!34334)) (Concat!25877 (regOne!34576 Regex!17032) (regTwo!34576 Regex!17032)) (EmptyExpr!17032) (Star!17032 (reg!17361 Regex!17032)) (EmptyLang!17032) (Union!17032 (regOne!34577 Regex!17032) (regTwo!34577 Regex!17032)) )
))
(declare-fun lt!2478074 () Regex!17032)

(declare-fun validRegex!8738 (Regex!17032) Bool)

(assert (=> b!6952149 (= e!4180994 (validRegex!8738 lt!2478074))))

(declare-fun b!6952150 () Bool)

(declare-fun res!2836481 () Bool)

(assert (=> b!6952150 (=> res!2836481 e!4180994)))

(declare-fun rInner!765 () Regex!17032)

(declare-datatypes ((List!66785 0))(
  ( (Nil!66661) (Cons!66661 (h!73109 C!34334) (t!380528 List!66785)) )
))
(declare-datatypes ((tuple2!67770 0))(
  ( (tuple2!67771 (_1!37188 List!66785) (_2!37188 List!66785)) )
))
(declare-fun cut!51 () tuple2!67770)

(declare-fun matchR!9149 (Regex!17032 List!66785) Bool)

(assert (=> b!6952150 (= res!2836481 (not (matchR!9149 rInner!765 (_1!37188 cut!51))))))

(declare-fun res!2836482 () Bool)

(declare-fun e!4180990 () Bool)

(assert (=> b!6952151 (=> (not res!2836482) (not e!4180990))))

(declare-fun Exists!4028 (Int) Bool)

(assert (=> b!6952151 (= res!2836482 (not (Exists!4028 lambda!396527)))))

(declare-fun b!6952152 () Bool)

(declare-fun e!4180991 () Bool)

(declare-fun tp!1916514 () Bool)

(assert (=> b!6952152 (= e!4180991 (and tp_is_empty!43289 tp!1916514))))

(declare-fun b!6952153 () Bool)

(declare-fun e!4180989 () Bool)

(declare-fun tp!1916516 () Bool)

(assert (=> b!6952153 (= e!4180989 (and tp_is_empty!43289 tp!1916516))))

(declare-fun res!2836485 () Bool)

(assert (=> start!667236 (=> (not res!2836485) (not e!4180990))))

(assert (=> start!667236 (= res!2836485 (validRegex!8738 rInner!765))))

(assert (=> start!667236 e!4180990))

(assert (=> start!667236 e!4180993))

(assert (=> start!667236 e!4180991))

(assert (=> start!667236 (and e!4180992 e!4180989)))

(declare-fun b!6952154 () Bool)

(declare-fun res!2836487 () Bool)

(assert (=> b!6952154 (=> res!2836487 e!4180994)))

(declare-fun lt!2478073 () Bool)

(declare-fun lt!2478075 () Bool)

(assert (=> b!6952154 (= res!2836487 (or (not lt!2478073) (not lt!2478075)))))

(declare-fun b!6952155 () Bool)

(declare-fun tp!1916515 () Bool)

(declare-fun tp!1916513 () Bool)

(assert (=> b!6952155 (= e!4180993 (and tp!1916515 tp!1916513))))

(declare-fun b!6952156 () Bool)

(assert (=> b!6952156 (= e!4180990 (not e!4180994))))

(declare-fun res!2836480 () Bool)

(assert (=> b!6952156 (=> res!2836480 e!4180994)))

(declare-fun lt!2478070 () tuple2!67770)

(declare-fun s!10388 () List!66785)

(declare-fun ++!15063 (List!66785 List!66785) List!66785)

(assert (=> b!6952156 (= res!2836480 (not (= (++!15063 (_1!37188 lt!2478070) (_2!37188 lt!2478070)) s!10388)))))

(declare-fun matchRSpec!4065 (Regex!17032 List!66785) Bool)

(assert (=> b!6952156 (= lt!2478075 (matchRSpec!4065 lt!2478074 (_2!37188 lt!2478070)))))

(assert (=> b!6952156 (= lt!2478075 (matchR!9149 lt!2478074 (_2!37188 lt!2478070)))))

(declare-datatypes ((Unit!160752 0))(
  ( (Unit!160753) )
))
(declare-fun lt!2478072 () Unit!160752)

(declare-fun mainMatchTheorem!4061 (Regex!17032 List!66785) Unit!160752)

(assert (=> b!6952156 (= lt!2478072 (mainMatchTheorem!4061 lt!2478074 (_2!37188 lt!2478070)))))

(assert (=> b!6952156 (= lt!2478074 (Star!17032 rInner!765))))

(assert (=> b!6952156 (= lt!2478073 (matchRSpec!4065 rInner!765 (_1!37188 lt!2478070)))))

(assert (=> b!6952156 (= lt!2478073 (matchR!9149 rInner!765 (_1!37188 lt!2478070)))))

(declare-fun lt!2478071 () Unit!160752)

(assert (=> b!6952156 (= lt!2478071 (mainMatchTheorem!4061 rInner!765 (_1!37188 lt!2478070)))))

(declare-fun pickWitness!363 (Int) tuple2!67770)

(assert (=> b!6952156 (= lt!2478070 (pickWitness!363 lambda!396528))))

(declare-fun b!6952157 () Bool)

(declare-fun res!2836486 () Bool)

(assert (=> b!6952157 (=> res!2836486 e!4180994)))

(assert (=> b!6952157 (= res!2836486 (not (= (++!15063 (_1!37188 cut!51) (_2!37188 cut!51)) s!10388)))))

(declare-fun b!6952158 () Bool)

(declare-fun res!2836483 () Bool)

(assert (=> b!6952158 (=> (not res!2836483) (not e!4180990))))

(declare-fun nullable!6845 (Regex!17032) Bool)

(assert (=> b!6952158 (= res!2836483 (not (nullable!6845 rInner!765)))))

(declare-fun b!6952159 () Bool)

(declare-fun tp!1916517 () Bool)

(declare-fun tp!1916512 () Bool)

(assert (=> b!6952159 (= e!4180993 (and tp!1916517 tp!1916512))))

(declare-fun b!6952160 () Bool)

(declare-fun res!2836484 () Bool)

(assert (=> b!6952160 (=> (not res!2836484) (not e!4180990))))

(assert (=> b!6952160 (= res!2836484 (not (Exists!4028 lambda!396527)))))

(declare-fun res!2836479 () Bool)

(assert (=> b!6952161 (=> (not res!2836479) (not e!4180990))))

(assert (=> b!6952161 (= res!2836479 (Exists!4028 lambda!396528))))

(assert (= (and start!667236 res!2836485) b!6952158))

(assert (= (and b!6952158 res!2836483) b!6952151))

(assert (= (and b!6952151 res!2836482) b!6952160))

(assert (= (and b!6952160 res!2836484) b!6952161))

(assert (= (and b!6952161 res!2836479) b!6952156))

(assert (= (and b!6952156 (not res!2836480)) b!6952154))

(assert (= (and b!6952154 (not res!2836487)) b!6952157))

(assert (= (and b!6952157 (not res!2836486)) b!6952150))

(assert (= (and b!6952150 (not res!2836481)) b!6952149))

(assert (= (and start!667236 (is-ElementMatch!17032 rInner!765)) b!6952148))

(assert (= (and start!667236 (is-Concat!25877 rInner!765)) b!6952159))

(assert (= (and start!667236 (is-Star!17032 rInner!765)) b!6952146))

(assert (= (and start!667236 (is-Union!17032 rInner!765)) b!6952155))

(assert (= (and start!667236 (is-Cons!66661 s!10388)) b!6952152))

(assert (= (and start!667236 (is-Cons!66661 (_1!37188 cut!51))) b!6952147))

(assert (= (and start!667236 (is-Cons!66661 (_2!37188 cut!51))) b!6952153))

(declare-fun m!7652736 () Bool)

(assert (=> b!6952157 m!7652736))

(declare-fun m!7652738 () Bool)

(assert (=> b!6952150 m!7652738))

(declare-fun m!7652740 () Bool)

(assert (=> b!6952156 m!7652740))

(declare-fun m!7652742 () Bool)

(assert (=> b!6952156 m!7652742))

(declare-fun m!7652744 () Bool)

(assert (=> b!6952156 m!7652744))

(declare-fun m!7652746 () Bool)

(assert (=> b!6952156 m!7652746))

(declare-fun m!7652748 () Bool)

(assert (=> b!6952156 m!7652748))

(declare-fun m!7652750 () Bool)

(assert (=> b!6952156 m!7652750))

(declare-fun m!7652752 () Bool)

(assert (=> b!6952156 m!7652752))

(declare-fun m!7652754 () Bool)

(assert (=> b!6952156 m!7652754))

(declare-fun m!7652756 () Bool)

(assert (=> b!6952149 m!7652756))

(declare-fun m!7652758 () Bool)

(assert (=> b!6952158 m!7652758))

(declare-fun m!7652760 () Bool)

(assert (=> b!6952151 m!7652760))

(assert (=> b!6952160 m!7652760))

(declare-fun m!7652762 () Bool)

(assert (=> b!6952161 m!7652762))

(declare-fun m!7652764 () Bool)

(assert (=> start!667236 m!7652764))

(push 1)

(assert (not b!6952158))

(assert tp_is_empty!43289)

(assert (not b!6952149))

(assert (not start!667236))

(assert (not b!6952157))

(assert (not b!6952155))

(assert (not b!6952152))

(assert (not b!6952156))

(assert (not b!6952160))

(assert (not b!6952147))

(assert (not b!6952159))

(assert (not b!6952151))

(assert (not b!6952161))

(assert (not b!6952153))

(assert (not b!6952146))

(assert (not b!6952150))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2169184 () Bool)

(declare-fun choose!51804 (Int) Bool)

(assert (=> d!2169184 (= (Exists!4028 lambda!396527) (choose!51804 lambda!396527))))

(declare-fun bs!1857774 () Bool)

(assert (= bs!1857774 d!2169184))

(declare-fun m!7652796 () Bool)

(assert (=> bs!1857774 m!7652796))

(assert (=> b!6952151 d!2169184))

(declare-fun d!2169186 () Bool)

(assert (=> d!2169186 (= (Exists!4028 lambda!396528) (choose!51804 lambda!396528))))

(declare-fun bs!1857775 () Bool)

(assert (= bs!1857775 d!2169186))

(declare-fun m!7652798 () Bool)

(assert (=> bs!1857775 m!7652798))

(assert (=> b!6952161 d!2169186))

(declare-fun b!6952248 () Bool)

(declare-fun res!2836540 () Bool)

(declare-fun e!4181026 () Bool)

(assert (=> b!6952248 (=> (not res!2836540) (not e!4181026))))

(declare-fun lt!2478096 () List!66785)

(declare-fun size!40830 (List!66785) Int)

(assert (=> b!6952248 (= res!2836540 (= (size!40830 lt!2478096) (+ (size!40830 (_1!37188 lt!2478070)) (size!40830 (_2!37188 lt!2478070)))))))

(declare-fun b!6952249 () Bool)

(assert (=> b!6952249 (= e!4181026 (or (not (= (_2!37188 lt!2478070) Nil!66661)) (= lt!2478096 (_1!37188 lt!2478070))))))

(declare-fun b!6952247 () Bool)

(declare-fun e!4181025 () List!66785)

(assert (=> b!6952247 (= e!4181025 (Cons!66661 (h!73109 (_1!37188 lt!2478070)) (++!15063 (t!380528 (_1!37188 lt!2478070)) (_2!37188 lt!2478070))))))

(declare-fun b!6952246 () Bool)

(assert (=> b!6952246 (= e!4181025 (_2!37188 lt!2478070))))

(declare-fun d!2169188 () Bool)

(assert (=> d!2169188 e!4181026))

(declare-fun res!2836539 () Bool)

(assert (=> d!2169188 (=> (not res!2836539) (not e!4181026))))

(declare-fun content!13133 (List!66785) (Set C!34334))

(assert (=> d!2169188 (= res!2836539 (= (content!13133 lt!2478096) (set.union (content!13133 (_1!37188 lt!2478070)) (content!13133 (_2!37188 lt!2478070)))))))

(assert (=> d!2169188 (= lt!2478096 e!4181025)))

(declare-fun c!1289438 () Bool)

(assert (=> d!2169188 (= c!1289438 (is-Nil!66661 (_1!37188 lt!2478070)))))

(assert (=> d!2169188 (= (++!15063 (_1!37188 lt!2478070) (_2!37188 lt!2478070)) lt!2478096)))

(assert (= (and d!2169188 c!1289438) b!6952246))

(assert (= (and d!2169188 (not c!1289438)) b!6952247))

(assert (= (and d!2169188 res!2836539) b!6952248))

(assert (= (and b!6952248 res!2836540) b!6952249))

(declare-fun m!7652800 () Bool)

(assert (=> b!6952248 m!7652800))

(declare-fun m!7652802 () Bool)

(assert (=> b!6952248 m!7652802))

(declare-fun m!7652804 () Bool)

(assert (=> b!6952248 m!7652804))

(declare-fun m!7652806 () Bool)

(assert (=> b!6952247 m!7652806))

(declare-fun m!7652808 () Bool)

(assert (=> d!2169188 m!7652808))

(declare-fun m!7652810 () Bool)

(assert (=> d!2169188 m!7652810))

(declare-fun m!7652812 () Bool)

(assert (=> d!2169188 m!7652812))

(assert (=> b!6952156 d!2169188))

(declare-fun d!2169190 () Bool)

(assert (=> d!2169190 (= (matchR!9149 lt!2478074 (_2!37188 lt!2478070)) (matchRSpec!4065 lt!2478074 (_2!37188 lt!2478070)))))

(declare-fun lt!2478099 () Unit!160752)

(declare-fun choose!51805 (Regex!17032 List!66785) Unit!160752)

(assert (=> d!2169190 (= lt!2478099 (choose!51805 lt!2478074 (_2!37188 lt!2478070)))))

(assert (=> d!2169190 (validRegex!8738 lt!2478074)))

(assert (=> d!2169190 (= (mainMatchTheorem!4061 lt!2478074 (_2!37188 lt!2478070)) lt!2478099)))

(declare-fun bs!1857776 () Bool)

(assert (= bs!1857776 d!2169190))

(assert (=> bs!1857776 m!7652750))

(assert (=> bs!1857776 m!7652744))

(declare-fun m!7652814 () Bool)

(assert (=> bs!1857776 m!7652814))

(assert (=> bs!1857776 m!7652756))

(assert (=> b!6952156 d!2169190))

(declare-fun b!6952296 () Bool)

(declare-fun e!4181056 () Bool)

(declare-fun derivativeStep!5483 (Regex!17032 C!34334) Regex!17032)

(declare-fun head!13936 (List!66785) C!34334)

(declare-fun tail!12988 (List!66785) List!66785)

(assert (=> b!6952296 (= e!4181056 (matchR!9149 (derivativeStep!5483 rInner!765 (head!13936 (_1!37188 lt!2478070))) (tail!12988 (_1!37188 lt!2478070))))))

(declare-fun b!6952297 () Bool)

(declare-fun e!4181058 () Bool)

(declare-fun lt!2478102 () Bool)

(assert (=> b!6952297 (= e!4181058 (not lt!2478102))))

(declare-fun b!6952298 () Bool)

(assert (=> b!6952298 (= e!4181056 (nullable!6845 rInner!765))))

(declare-fun b!6952299 () Bool)

(declare-fun res!2836570 () Bool)

(declare-fun e!4181061 () Bool)

(assert (=> b!6952299 (=> (not res!2836570) (not e!4181061))))

(declare-fun call!631382 () Bool)

(assert (=> b!6952299 (= res!2836570 (not call!631382))))

(declare-fun b!6952300 () Bool)

(declare-fun e!4181059 () Bool)

(declare-fun e!4181055 () Bool)

(assert (=> b!6952300 (= e!4181059 e!4181055)))

(declare-fun res!2836569 () Bool)

(assert (=> b!6952300 (=> res!2836569 e!4181055)))

(assert (=> b!6952300 (= res!2836569 call!631382)))

(declare-fun b!6952301 () Bool)

(assert (=> b!6952301 (= e!4181055 (not (= (head!13936 (_1!37188 lt!2478070)) (c!1289434 rInner!765))))))

(declare-fun b!6952302 () Bool)

(declare-fun e!4181057 () Bool)

(assert (=> b!6952302 (= e!4181057 e!4181058)))

(declare-fun c!1289449 () Bool)

(assert (=> b!6952302 (= c!1289449 (is-EmptyLang!17032 rInner!765))))

(declare-fun b!6952303 () Bool)

(declare-fun res!2836573 () Bool)

(assert (=> b!6952303 (=> (not res!2836573) (not e!4181061))))

(declare-fun isEmpty!38905 (List!66785) Bool)

(assert (=> b!6952303 (= res!2836573 (isEmpty!38905 (tail!12988 (_1!37188 lt!2478070))))))

(declare-fun b!6952304 () Bool)

(assert (=> b!6952304 (= e!4181061 (= (head!13936 (_1!37188 lt!2478070)) (c!1289434 rInner!765)))))

(declare-fun b!6952305 () Bool)

(declare-fun res!2836568 () Bool)

(declare-fun e!4181060 () Bool)

(assert (=> b!6952305 (=> res!2836568 e!4181060)))

(assert (=> b!6952305 (= res!2836568 e!4181061)))

(declare-fun res!2836574 () Bool)

(assert (=> b!6952305 (=> (not res!2836574) (not e!4181061))))

(assert (=> b!6952305 (= res!2836574 lt!2478102)))

(declare-fun b!6952306 () Bool)

(declare-fun res!2836571 () Bool)

(assert (=> b!6952306 (=> res!2836571 e!4181055)))

(assert (=> b!6952306 (= res!2836571 (not (isEmpty!38905 (tail!12988 (_1!37188 lt!2478070)))))))

(declare-fun b!6952307 () Bool)

(declare-fun res!2836567 () Bool)

(assert (=> b!6952307 (=> res!2836567 e!4181060)))

(assert (=> b!6952307 (= res!2836567 (not (is-ElementMatch!17032 rInner!765)))))

(assert (=> b!6952307 (= e!4181058 e!4181060)))

(declare-fun b!6952308 () Bool)

(assert (=> b!6952308 (= e!4181060 e!4181059)))

(declare-fun res!2836572 () Bool)

(assert (=> b!6952308 (=> (not res!2836572) (not e!4181059))))

(assert (=> b!6952308 (= res!2836572 (not lt!2478102))))

(declare-fun b!6952309 () Bool)

(assert (=> b!6952309 (= e!4181057 (= lt!2478102 call!631382))))

(declare-fun bm!631377 () Bool)

(assert (=> bm!631377 (= call!631382 (isEmpty!38905 (_1!37188 lt!2478070)))))

(declare-fun d!2169192 () Bool)

(assert (=> d!2169192 e!4181057))

(declare-fun c!1289450 () Bool)

(assert (=> d!2169192 (= c!1289450 (is-EmptyExpr!17032 rInner!765))))

(assert (=> d!2169192 (= lt!2478102 e!4181056)))

(declare-fun c!1289451 () Bool)

(assert (=> d!2169192 (= c!1289451 (isEmpty!38905 (_1!37188 lt!2478070)))))

(assert (=> d!2169192 (validRegex!8738 rInner!765)))

(assert (=> d!2169192 (= (matchR!9149 rInner!765 (_1!37188 lt!2478070)) lt!2478102)))

(assert (= (and d!2169192 c!1289451) b!6952298))

(assert (= (and d!2169192 (not c!1289451)) b!6952296))

(assert (= (and d!2169192 c!1289450) b!6952309))

(assert (= (and d!2169192 (not c!1289450)) b!6952302))

(assert (= (and b!6952302 c!1289449) b!6952297))

(assert (= (and b!6952302 (not c!1289449)) b!6952307))

(assert (= (and b!6952307 (not res!2836567)) b!6952305))

(assert (= (and b!6952305 res!2836574) b!6952299))

(assert (= (and b!6952299 res!2836570) b!6952303))

(assert (= (and b!6952303 res!2836573) b!6952304))

(assert (= (and b!6952305 (not res!2836568)) b!6952308))

(assert (= (and b!6952308 res!2836572) b!6952300))

(assert (= (and b!6952300 (not res!2836569)) b!6952306))

(assert (= (and b!6952306 (not res!2836571)) b!6952301))

(assert (= (or b!6952309 b!6952299 b!6952300) bm!631377))

(declare-fun m!7652816 () Bool)

(assert (=> b!6952296 m!7652816))

(assert (=> b!6952296 m!7652816))

(declare-fun m!7652818 () Bool)

(assert (=> b!6952296 m!7652818))

(declare-fun m!7652820 () Bool)

(assert (=> b!6952296 m!7652820))

(assert (=> b!6952296 m!7652818))

(assert (=> b!6952296 m!7652820))

(declare-fun m!7652822 () Bool)

(assert (=> b!6952296 m!7652822))

(assert (=> b!6952304 m!7652816))

(assert (=> b!6952303 m!7652820))

(assert (=> b!6952303 m!7652820))

(declare-fun m!7652824 () Bool)

(assert (=> b!6952303 m!7652824))

(declare-fun m!7652826 () Bool)

(assert (=> d!2169192 m!7652826))

(assert (=> d!2169192 m!7652764))

(assert (=> b!6952298 m!7652758))

(assert (=> b!6952306 m!7652820))

(assert (=> b!6952306 m!7652820))

(assert (=> b!6952306 m!7652824))

(assert (=> b!6952301 m!7652816))

(assert (=> bm!631377 m!7652826))

(assert (=> b!6952156 d!2169192))

(declare-fun d!2169196 () Bool)

(assert (=> d!2169196 (= (matchR!9149 rInner!765 (_1!37188 lt!2478070)) (matchRSpec!4065 rInner!765 (_1!37188 lt!2478070)))))

(declare-fun lt!2478103 () Unit!160752)

(assert (=> d!2169196 (= lt!2478103 (choose!51805 rInner!765 (_1!37188 lt!2478070)))))

(assert (=> d!2169196 (validRegex!8738 rInner!765)))

(assert (=> d!2169196 (= (mainMatchTheorem!4061 rInner!765 (_1!37188 lt!2478070)) lt!2478103)))

(declare-fun bs!1857777 () Bool)

(assert (= bs!1857777 d!2169196))

(assert (=> bs!1857777 m!7652748))

(assert (=> bs!1857777 m!7652746))

(declare-fun m!7652828 () Bool)

(assert (=> bs!1857777 m!7652828))

(assert (=> bs!1857777 m!7652764))

(assert (=> b!6952156 d!2169196))

(declare-fun d!2169198 () Bool)

(declare-fun lt!2478106 () tuple2!67770)

(declare-fun dynLambda!26582 (Int tuple2!67770) Bool)

(assert (=> d!2169198 (dynLambda!26582 lambda!396528 lt!2478106)))

(declare-fun choose!51806 (Int) tuple2!67770)

(assert (=> d!2169198 (= lt!2478106 (choose!51806 lambda!396528))))

(assert (=> d!2169198 (Exists!4028 lambda!396528)))

(assert (=> d!2169198 (= (pickWitness!363 lambda!396528) lt!2478106)))

(declare-fun b_lambda!260409 () Bool)

(assert (=> (not b_lambda!260409) (not d!2169198)))

(declare-fun bs!1857778 () Bool)

(assert (= bs!1857778 d!2169198))

(declare-fun m!7652830 () Bool)

(assert (=> bs!1857778 m!7652830))

(declare-fun m!7652832 () Bool)

(assert (=> bs!1857778 m!7652832))

(assert (=> bs!1857778 m!7652762))

(assert (=> b!6952156 d!2169198))

(declare-fun bs!1857782 () Bool)

(declare-fun b!6952355 () Bool)

(assert (= bs!1857782 (and b!6952355 b!6952151)))

(declare-fun lambda!396543 () Int)

(assert (=> bs!1857782 (not (= lambda!396543 lambda!396527))))

(declare-fun bs!1857783 () Bool)

(assert (= bs!1857783 (and b!6952355 b!6952161)))

(assert (=> bs!1857783 (= (and (= (_2!37188 lt!2478070) s!10388) (= (reg!17361 lt!2478074) rInner!765) (= lt!2478074 (Star!17032 rInner!765))) (= lambda!396543 lambda!396528))))

(assert (=> b!6952355 true))

(assert (=> b!6952355 true))

(declare-fun bs!1857784 () Bool)

(declare-fun b!6952351 () Bool)

(assert (= bs!1857784 (and b!6952351 b!6952151)))

(declare-fun lambda!396544 () Int)

(assert (=> bs!1857784 (not (= lambda!396544 lambda!396527))))

(declare-fun bs!1857785 () Bool)

(assert (= bs!1857785 (and b!6952351 b!6952161)))

(assert (=> bs!1857785 (not (= lambda!396544 lambda!396528))))

(declare-fun bs!1857786 () Bool)

(assert (= bs!1857786 (and b!6952351 b!6952355)))

(assert (=> bs!1857786 (not (= lambda!396544 lambda!396543))))

(assert (=> b!6952351 true))

(assert (=> b!6952351 true))

(declare-fun e!4181087 () Bool)

(declare-fun call!631396 () Bool)

(assert (=> b!6952351 (= e!4181087 call!631396)))

(declare-fun b!6952352 () Bool)

(declare-fun e!4181092 () Bool)

(declare-fun e!4181089 () Bool)

(assert (=> b!6952352 (= e!4181092 e!4181089)))

(declare-fun res!2836598 () Bool)

(assert (=> b!6952352 (= res!2836598 (matchRSpec!4065 (regOne!34577 lt!2478074) (_2!37188 lt!2478070)))))

(assert (=> b!6952352 (=> res!2836598 e!4181089)))

(declare-fun b!6952353 () Bool)

(assert (=> b!6952353 (= e!4181092 e!4181087)))

(declare-fun c!1289462 () Bool)

(assert (=> b!6952353 (= c!1289462 (is-Star!17032 lt!2478074))))

(declare-fun bm!631391 () Bool)

(declare-fun call!631397 () Bool)

(assert (=> bm!631391 (= call!631397 (isEmpty!38905 (_2!37188 lt!2478070)))))

(declare-fun b!6952354 () Bool)

(declare-fun c!1289465 () Bool)

(assert (=> b!6952354 (= c!1289465 (is-Union!17032 lt!2478074))))

(declare-fun e!4181093 () Bool)

(assert (=> b!6952354 (= e!4181093 e!4181092)))

(declare-fun e!4181090 () Bool)

(assert (=> b!6952355 (= e!4181090 call!631396)))

(declare-fun b!6952356 () Bool)

(declare-fun res!2836596 () Bool)

(assert (=> b!6952356 (=> res!2836596 e!4181090)))

(assert (=> b!6952356 (= res!2836596 call!631397)))

(assert (=> b!6952356 (= e!4181087 e!4181090)))

(declare-fun b!6952357 () Bool)

(declare-fun c!1289463 () Bool)

(assert (=> b!6952357 (= c!1289463 (is-ElementMatch!17032 lt!2478074))))

(declare-fun e!4181088 () Bool)

(assert (=> b!6952357 (= e!4181088 e!4181093)))

(declare-fun d!2169200 () Bool)

(declare-fun c!1289464 () Bool)

(assert (=> d!2169200 (= c!1289464 (is-EmptyExpr!17032 lt!2478074))))

(declare-fun e!4181091 () Bool)

(assert (=> d!2169200 (= (matchRSpec!4065 lt!2478074 (_2!37188 lt!2478070)) e!4181091)))

(declare-fun b!6952358 () Bool)

(assert (=> b!6952358 (= e!4181091 call!631397)))

(declare-fun b!6952359 () Bool)

(assert (=> b!6952359 (= e!4181091 e!4181088)))

(declare-fun res!2836597 () Bool)

(assert (=> b!6952359 (= res!2836597 (not (is-EmptyLang!17032 lt!2478074)))))

(assert (=> b!6952359 (=> (not res!2836597) (not e!4181088))))

(declare-fun b!6952360 () Bool)

(assert (=> b!6952360 (= e!4181093 (= (_2!37188 lt!2478070) (Cons!66661 (c!1289434 lt!2478074) Nil!66661)))))

(declare-fun bm!631392 () Bool)

(assert (=> bm!631392 (= call!631396 (Exists!4028 (ite c!1289462 lambda!396543 lambda!396544)))))

(declare-fun b!6952361 () Bool)

(assert (=> b!6952361 (= e!4181089 (matchRSpec!4065 (regTwo!34577 lt!2478074) (_2!37188 lt!2478070)))))

(assert (= (and d!2169200 c!1289464) b!6952358))

(assert (= (and d!2169200 (not c!1289464)) b!6952359))

(assert (= (and b!6952359 res!2836597) b!6952357))

(assert (= (and b!6952357 c!1289463) b!6952360))

(assert (= (and b!6952357 (not c!1289463)) b!6952354))

(assert (= (and b!6952354 c!1289465) b!6952352))

(assert (= (and b!6952354 (not c!1289465)) b!6952353))

(assert (= (and b!6952352 (not res!2836598)) b!6952361))

(assert (= (and b!6952353 c!1289462) b!6952356))

(assert (= (and b!6952353 (not c!1289462)) b!6952351))

(assert (= (and b!6952356 (not res!2836596)) b!6952355))

(assert (= (or b!6952355 b!6952351) bm!631392))

(assert (= (or b!6952358 b!6952356) bm!631391))

(declare-fun m!7652846 () Bool)

(assert (=> b!6952352 m!7652846))

(declare-fun m!7652848 () Bool)

(assert (=> bm!631391 m!7652848))

(declare-fun m!7652850 () Bool)

(assert (=> bm!631392 m!7652850))

(declare-fun m!7652852 () Bool)

(assert (=> b!6952361 m!7652852))

(assert (=> b!6952156 d!2169200))

(declare-fun b!6952366 () Bool)

(declare-fun e!4181097 () Bool)

(assert (=> b!6952366 (= e!4181097 (matchR!9149 (derivativeStep!5483 lt!2478074 (head!13936 (_2!37188 lt!2478070))) (tail!12988 (_2!37188 lt!2478070))))))

(declare-fun b!6952367 () Bool)

(declare-fun e!4181099 () Bool)

(declare-fun lt!2478109 () Bool)

(assert (=> b!6952367 (= e!4181099 (not lt!2478109))))

(declare-fun b!6952368 () Bool)

(assert (=> b!6952368 (= e!4181097 (nullable!6845 lt!2478074))))

(declare-fun b!6952369 () Bool)

(declare-fun res!2836602 () Bool)

(declare-fun e!4181102 () Bool)

(assert (=> b!6952369 (=> (not res!2836602) (not e!4181102))))

(declare-fun call!631398 () Bool)

(assert (=> b!6952369 (= res!2836602 (not call!631398))))

(declare-fun b!6952370 () Bool)

(declare-fun e!4181100 () Bool)

(declare-fun e!4181096 () Bool)

(assert (=> b!6952370 (= e!4181100 e!4181096)))

(declare-fun res!2836601 () Bool)

(assert (=> b!6952370 (=> res!2836601 e!4181096)))

(assert (=> b!6952370 (= res!2836601 call!631398)))

(declare-fun b!6952371 () Bool)

(assert (=> b!6952371 (= e!4181096 (not (= (head!13936 (_2!37188 lt!2478070)) (c!1289434 lt!2478074))))))

(declare-fun b!6952372 () Bool)

(declare-fun e!4181098 () Bool)

(assert (=> b!6952372 (= e!4181098 e!4181099)))

(declare-fun c!1289468 () Bool)

(assert (=> b!6952372 (= c!1289468 (is-EmptyLang!17032 lt!2478074))))

(declare-fun b!6952373 () Bool)

(declare-fun res!2836605 () Bool)

(assert (=> b!6952373 (=> (not res!2836605) (not e!4181102))))

(assert (=> b!6952373 (= res!2836605 (isEmpty!38905 (tail!12988 (_2!37188 lt!2478070))))))

(declare-fun b!6952374 () Bool)

(assert (=> b!6952374 (= e!4181102 (= (head!13936 (_2!37188 lt!2478070)) (c!1289434 lt!2478074)))))

(declare-fun b!6952375 () Bool)

(declare-fun res!2836600 () Bool)

(declare-fun e!4181101 () Bool)

(assert (=> b!6952375 (=> res!2836600 e!4181101)))

(assert (=> b!6952375 (= res!2836600 e!4181102)))

(declare-fun res!2836606 () Bool)

(assert (=> b!6952375 (=> (not res!2836606) (not e!4181102))))

(assert (=> b!6952375 (= res!2836606 lt!2478109)))

(declare-fun b!6952376 () Bool)

(declare-fun res!2836603 () Bool)

(assert (=> b!6952376 (=> res!2836603 e!4181096)))

(assert (=> b!6952376 (= res!2836603 (not (isEmpty!38905 (tail!12988 (_2!37188 lt!2478070)))))))

(declare-fun b!6952377 () Bool)

(declare-fun res!2836599 () Bool)

(assert (=> b!6952377 (=> res!2836599 e!4181101)))

(assert (=> b!6952377 (= res!2836599 (not (is-ElementMatch!17032 lt!2478074)))))

(assert (=> b!6952377 (= e!4181099 e!4181101)))

(declare-fun b!6952378 () Bool)

(assert (=> b!6952378 (= e!4181101 e!4181100)))

(declare-fun res!2836604 () Bool)

(assert (=> b!6952378 (=> (not res!2836604) (not e!4181100))))

(assert (=> b!6952378 (= res!2836604 (not lt!2478109))))

(declare-fun b!6952379 () Bool)

(assert (=> b!6952379 (= e!4181098 (= lt!2478109 call!631398))))

(declare-fun bm!631393 () Bool)

(assert (=> bm!631393 (= call!631398 (isEmpty!38905 (_2!37188 lt!2478070)))))

(declare-fun d!2169210 () Bool)

(assert (=> d!2169210 e!4181098))

(declare-fun c!1289469 () Bool)

(assert (=> d!2169210 (= c!1289469 (is-EmptyExpr!17032 lt!2478074))))

(assert (=> d!2169210 (= lt!2478109 e!4181097)))

(declare-fun c!1289470 () Bool)

(assert (=> d!2169210 (= c!1289470 (isEmpty!38905 (_2!37188 lt!2478070)))))

(assert (=> d!2169210 (validRegex!8738 lt!2478074)))

(assert (=> d!2169210 (= (matchR!9149 lt!2478074 (_2!37188 lt!2478070)) lt!2478109)))

(assert (= (and d!2169210 c!1289470) b!6952368))

(assert (= (and d!2169210 (not c!1289470)) b!6952366))

(assert (= (and d!2169210 c!1289469) b!6952379))

(assert (= (and d!2169210 (not c!1289469)) b!6952372))

(assert (= (and b!6952372 c!1289468) b!6952367))

(assert (= (and b!6952372 (not c!1289468)) b!6952377))

(assert (= (and b!6952377 (not res!2836599)) b!6952375))

(assert (= (and b!6952375 res!2836606) b!6952369))

(assert (= (and b!6952369 res!2836602) b!6952373))

(assert (= (and b!6952373 res!2836605) b!6952374))

(assert (= (and b!6952375 (not res!2836600)) b!6952378))

(assert (= (and b!6952378 res!2836604) b!6952370))

(assert (= (and b!6952370 (not res!2836601)) b!6952376))

(assert (= (and b!6952376 (not res!2836603)) b!6952371))

(assert (= (or b!6952379 b!6952369 b!6952370) bm!631393))

(declare-fun m!7652854 () Bool)

(assert (=> b!6952366 m!7652854))

(assert (=> b!6952366 m!7652854))

(declare-fun m!7652856 () Bool)

(assert (=> b!6952366 m!7652856))

(declare-fun m!7652858 () Bool)

(assert (=> b!6952366 m!7652858))

(assert (=> b!6952366 m!7652856))

(assert (=> b!6952366 m!7652858))

(declare-fun m!7652860 () Bool)

(assert (=> b!6952366 m!7652860))

(assert (=> b!6952374 m!7652854))

(assert (=> b!6952373 m!7652858))

(assert (=> b!6952373 m!7652858))

(declare-fun m!7652862 () Bool)

(assert (=> b!6952373 m!7652862))

(assert (=> d!2169210 m!7652848))

(assert (=> d!2169210 m!7652756))

(declare-fun m!7652864 () Bool)

(assert (=> b!6952368 m!7652864))

(assert (=> b!6952376 m!7652858))

(assert (=> b!6952376 m!7652858))

(assert (=> b!6952376 m!7652862))

(assert (=> b!6952371 m!7652854))

(assert (=> bm!631393 m!7652848))

(assert (=> b!6952156 d!2169210))

(declare-fun bs!1857787 () Bool)

(declare-fun b!6952388 () Bool)

(assert (= bs!1857787 (and b!6952388 b!6952151)))

(declare-fun lambda!396545 () Int)

(assert (=> bs!1857787 (not (= lambda!396545 lambda!396527))))

(declare-fun bs!1857788 () Bool)

(assert (= bs!1857788 (and b!6952388 b!6952161)))

(assert (=> bs!1857788 (= (and (= (_1!37188 lt!2478070) s!10388) (= (reg!17361 rInner!765) rInner!765) (= rInner!765 (Star!17032 rInner!765))) (= lambda!396545 lambda!396528))))

(declare-fun bs!1857789 () Bool)

(assert (= bs!1857789 (and b!6952388 b!6952355)))

(assert (=> bs!1857789 (= (and (= (_1!37188 lt!2478070) (_2!37188 lt!2478070)) (= (reg!17361 rInner!765) (reg!17361 lt!2478074)) (= rInner!765 lt!2478074)) (= lambda!396545 lambda!396543))))

(declare-fun bs!1857790 () Bool)

(assert (= bs!1857790 (and b!6952388 b!6952351)))

(assert (=> bs!1857790 (not (= lambda!396545 lambda!396544))))

(assert (=> b!6952388 true))

(assert (=> b!6952388 true))

(declare-fun bs!1857791 () Bool)

(declare-fun b!6952384 () Bool)

(assert (= bs!1857791 (and b!6952384 b!6952388)))

(declare-fun lambda!396546 () Int)

(assert (=> bs!1857791 (not (= lambda!396546 lambda!396545))))

(declare-fun bs!1857792 () Bool)

(assert (= bs!1857792 (and b!6952384 b!6952355)))

(assert (=> bs!1857792 (not (= lambda!396546 lambda!396543))))

(declare-fun bs!1857793 () Bool)

(assert (= bs!1857793 (and b!6952384 b!6952151)))

(assert (=> bs!1857793 (not (= lambda!396546 lambda!396527))))

(declare-fun bs!1857794 () Bool)

(assert (= bs!1857794 (and b!6952384 b!6952351)))

(assert (=> bs!1857794 (= (and (= (_1!37188 lt!2478070) (_2!37188 lt!2478070)) (= (regOne!34576 rInner!765) (regOne!34576 lt!2478074)) (= (regTwo!34576 rInner!765) (regTwo!34576 lt!2478074))) (= lambda!396546 lambda!396544))))

(declare-fun bs!1857795 () Bool)

(assert (= bs!1857795 (and b!6952384 b!6952161)))

(assert (=> bs!1857795 (not (= lambda!396546 lambda!396528))))

(assert (=> b!6952384 true))

(assert (=> b!6952384 true))

(declare-fun e!4181105 () Bool)

(declare-fun call!631399 () Bool)

(assert (=> b!6952384 (= e!4181105 call!631399)))

(declare-fun b!6952385 () Bool)

(declare-fun e!4181110 () Bool)

(declare-fun e!4181107 () Bool)

(assert (=> b!6952385 (= e!4181110 e!4181107)))

(declare-fun res!2836613 () Bool)

(assert (=> b!6952385 (= res!2836613 (matchRSpec!4065 (regOne!34577 rInner!765) (_1!37188 lt!2478070)))))

(assert (=> b!6952385 (=> res!2836613 e!4181107)))

(declare-fun b!6952386 () Bool)

(assert (=> b!6952386 (= e!4181110 e!4181105)))

(declare-fun c!1289471 () Bool)

(assert (=> b!6952386 (= c!1289471 (is-Star!17032 rInner!765))))

(declare-fun bm!631394 () Bool)

(declare-fun call!631400 () Bool)

(assert (=> bm!631394 (= call!631400 (isEmpty!38905 (_1!37188 lt!2478070)))))

(declare-fun b!6952387 () Bool)

(declare-fun c!1289474 () Bool)

(assert (=> b!6952387 (= c!1289474 (is-Union!17032 rInner!765))))

(declare-fun e!4181111 () Bool)

(assert (=> b!6952387 (= e!4181111 e!4181110)))

(declare-fun e!4181108 () Bool)

(assert (=> b!6952388 (= e!4181108 call!631399)))

(declare-fun b!6952389 () Bool)

(declare-fun res!2836611 () Bool)

(assert (=> b!6952389 (=> res!2836611 e!4181108)))

(assert (=> b!6952389 (= res!2836611 call!631400)))

(assert (=> b!6952389 (= e!4181105 e!4181108)))

(declare-fun b!6952390 () Bool)

(declare-fun c!1289472 () Bool)

(assert (=> b!6952390 (= c!1289472 (is-ElementMatch!17032 rInner!765))))

(declare-fun e!4181106 () Bool)

(assert (=> b!6952390 (= e!4181106 e!4181111)))

(declare-fun d!2169212 () Bool)

(declare-fun c!1289473 () Bool)

(assert (=> d!2169212 (= c!1289473 (is-EmptyExpr!17032 rInner!765))))

(declare-fun e!4181109 () Bool)

(assert (=> d!2169212 (= (matchRSpec!4065 rInner!765 (_1!37188 lt!2478070)) e!4181109)))

(declare-fun b!6952391 () Bool)

(assert (=> b!6952391 (= e!4181109 call!631400)))

(declare-fun b!6952392 () Bool)

(assert (=> b!6952392 (= e!4181109 e!4181106)))

(declare-fun res!2836612 () Bool)

(assert (=> b!6952392 (= res!2836612 (not (is-EmptyLang!17032 rInner!765)))))

(assert (=> b!6952392 (=> (not res!2836612) (not e!4181106))))

(declare-fun b!6952393 () Bool)

(assert (=> b!6952393 (= e!4181111 (= (_1!37188 lt!2478070) (Cons!66661 (c!1289434 rInner!765) Nil!66661)))))

(declare-fun bm!631395 () Bool)

(assert (=> bm!631395 (= call!631399 (Exists!4028 (ite c!1289471 lambda!396545 lambda!396546)))))

(declare-fun b!6952394 () Bool)

(assert (=> b!6952394 (= e!4181107 (matchRSpec!4065 (regTwo!34577 rInner!765) (_1!37188 lt!2478070)))))

(assert (= (and d!2169212 c!1289473) b!6952391))

(assert (= (and d!2169212 (not c!1289473)) b!6952392))

(assert (= (and b!6952392 res!2836612) b!6952390))

(assert (= (and b!6952390 c!1289472) b!6952393))

(assert (= (and b!6952390 (not c!1289472)) b!6952387))

(assert (= (and b!6952387 c!1289474) b!6952385))

(assert (= (and b!6952387 (not c!1289474)) b!6952386))

(assert (= (and b!6952385 (not res!2836613)) b!6952394))

(assert (= (and b!6952386 c!1289471) b!6952389))

(assert (= (and b!6952386 (not c!1289471)) b!6952384))

(assert (= (and b!6952389 (not res!2836611)) b!6952388))

(assert (= (or b!6952388 b!6952384) bm!631395))

(assert (= (or b!6952391 b!6952389) bm!631394))

(declare-fun m!7652866 () Bool)

(assert (=> b!6952385 m!7652866))

(assert (=> bm!631394 m!7652826))

(declare-fun m!7652868 () Bool)

(assert (=> bm!631395 m!7652868))

(declare-fun m!7652870 () Bool)

(assert (=> b!6952394 m!7652870))

(assert (=> b!6952156 d!2169212))

(declare-fun d!2169214 () Bool)

(declare-fun nullableFct!2561 (Regex!17032) Bool)

(assert (=> d!2169214 (= (nullable!6845 rInner!765) (nullableFct!2561 rInner!765))))

(declare-fun bs!1857796 () Bool)

(assert (= bs!1857796 d!2169214))

(declare-fun m!7652878 () Bool)

(assert (=> bs!1857796 m!7652878))

(assert (=> b!6952158 d!2169214))

(declare-fun b!6952401 () Bool)

(declare-fun res!2836617 () Bool)

(declare-fun e!4181115 () Bool)

(assert (=> b!6952401 (=> (not res!2836617) (not e!4181115))))

(declare-fun lt!2478111 () List!66785)

(assert (=> b!6952401 (= res!2836617 (= (size!40830 lt!2478111) (+ (size!40830 (_1!37188 cut!51)) (size!40830 (_2!37188 cut!51)))))))

(declare-fun b!6952402 () Bool)

(assert (=> b!6952402 (= e!4181115 (or (not (= (_2!37188 cut!51) Nil!66661)) (= lt!2478111 (_1!37188 cut!51))))))

(declare-fun b!6952400 () Bool)

(declare-fun e!4181114 () List!66785)

(assert (=> b!6952400 (= e!4181114 (Cons!66661 (h!73109 (_1!37188 cut!51)) (++!15063 (t!380528 (_1!37188 cut!51)) (_2!37188 cut!51))))))

(declare-fun b!6952399 () Bool)

(assert (=> b!6952399 (= e!4181114 (_2!37188 cut!51))))

(declare-fun d!2169216 () Bool)

(assert (=> d!2169216 e!4181115))

(declare-fun res!2836616 () Bool)

(assert (=> d!2169216 (=> (not res!2836616) (not e!4181115))))

(assert (=> d!2169216 (= res!2836616 (= (content!13133 lt!2478111) (set.union (content!13133 (_1!37188 cut!51)) (content!13133 (_2!37188 cut!51)))))))

(assert (=> d!2169216 (= lt!2478111 e!4181114)))

(declare-fun c!1289476 () Bool)

(assert (=> d!2169216 (= c!1289476 (is-Nil!66661 (_1!37188 cut!51)))))

(assert (=> d!2169216 (= (++!15063 (_1!37188 cut!51) (_2!37188 cut!51)) lt!2478111)))

(assert (= (and d!2169216 c!1289476) b!6952399))

(assert (= (and d!2169216 (not c!1289476)) b!6952400))

(assert (= (and d!2169216 res!2836616) b!6952401))

(assert (= (and b!6952401 res!2836617) b!6952402))

(declare-fun m!7652888 () Bool)

(assert (=> b!6952401 m!7652888))

(declare-fun m!7652890 () Bool)

(assert (=> b!6952401 m!7652890))

(declare-fun m!7652892 () Bool)

(assert (=> b!6952401 m!7652892))

(declare-fun m!7652894 () Bool)

(assert (=> b!6952400 m!7652894))

(declare-fun m!7652896 () Bool)

(assert (=> d!2169216 m!7652896))

(declare-fun m!7652898 () Bool)

(assert (=> d!2169216 m!7652898))

(declare-fun m!7652900 () Bool)

(assert (=> d!2169216 m!7652900))

(assert (=> b!6952157 d!2169216))

(declare-fun b!6952425 () Bool)

(declare-fun res!2836632 () Bool)

(declare-fun e!4181134 () Bool)

(assert (=> b!6952425 (=> (not res!2836632) (not e!4181134))))

(declare-fun call!631409 () Bool)

(assert (=> b!6952425 (= res!2836632 call!631409)))

(declare-fun e!4181137 () Bool)

(assert (=> b!6952425 (= e!4181137 e!4181134)))

(declare-fun bm!631402 () Bool)

(declare-fun c!1289483 () Bool)

(assert (=> bm!631402 (= call!631409 (validRegex!8738 (ite c!1289483 (regOne!34577 rInner!765) (regTwo!34576 rInner!765))))))

(declare-fun b!6952427 () Bool)

(declare-fun e!4181135 () Bool)

(declare-fun e!4181132 () Bool)

(assert (=> b!6952427 (= e!4181135 e!4181132)))

(declare-fun c!1289482 () Bool)

(assert (=> b!6952427 (= c!1289482 (is-Star!17032 rInner!765))))

(declare-fun b!6952428 () Bool)

(assert (=> b!6952428 (= e!4181132 e!4181137)))

(assert (=> b!6952428 (= c!1289483 (is-Union!17032 rInner!765))))

(declare-fun bm!631403 () Bool)

(declare-fun call!631407 () Bool)

(declare-fun call!631408 () Bool)

(assert (=> bm!631403 (= call!631407 call!631408)))

(declare-fun b!6952429 () Bool)

(declare-fun e!4181136 () Bool)

(assert (=> b!6952429 (= e!4181136 call!631408)))

(declare-fun bm!631404 () Bool)

(assert (=> bm!631404 (= call!631408 (validRegex!8738 (ite c!1289482 (reg!17361 rInner!765) (ite c!1289483 (regTwo!34577 rInner!765) (regOne!34576 rInner!765)))))))

(declare-fun b!6952430 () Bool)

(declare-fun e!4181133 () Bool)

(assert (=> b!6952430 (= e!4181133 call!631409)))

(declare-fun b!6952431 () Bool)

(assert (=> b!6952431 (= e!4181132 e!4181136)))

(declare-fun res!2836630 () Bool)

(assert (=> b!6952431 (= res!2836630 (not (nullable!6845 (reg!17361 rInner!765))))))

(assert (=> b!6952431 (=> (not res!2836630) (not e!4181136))))

(declare-fun b!6952426 () Bool)

(assert (=> b!6952426 (= e!4181134 call!631407)))

(declare-fun d!2169220 () Bool)

(declare-fun res!2836631 () Bool)

(assert (=> d!2169220 (=> res!2836631 e!4181135)))

(assert (=> d!2169220 (= res!2836631 (is-ElementMatch!17032 rInner!765))))

(assert (=> d!2169220 (= (validRegex!8738 rInner!765) e!4181135)))

(declare-fun b!6952432 () Bool)

(declare-fun res!2836633 () Bool)

(declare-fun e!4181138 () Bool)

(assert (=> b!6952432 (=> res!2836633 e!4181138)))

(assert (=> b!6952432 (= res!2836633 (not (is-Concat!25877 rInner!765)))))

(assert (=> b!6952432 (= e!4181137 e!4181138)))

(declare-fun b!6952433 () Bool)

(assert (=> b!6952433 (= e!4181138 e!4181133)))

(declare-fun res!2836634 () Bool)

(assert (=> b!6952433 (=> (not res!2836634) (not e!4181133))))

(assert (=> b!6952433 (= res!2836634 call!631407)))

(assert (= (and d!2169220 (not res!2836631)) b!6952427))

(assert (= (and b!6952427 c!1289482) b!6952431))

(assert (= (and b!6952427 (not c!1289482)) b!6952428))

(assert (= (and b!6952431 res!2836630) b!6952429))

(assert (= (and b!6952428 c!1289483) b!6952425))

(assert (= (and b!6952428 (not c!1289483)) b!6952432))

(assert (= (and b!6952425 res!2836632) b!6952426))

(assert (= (and b!6952432 (not res!2836633)) b!6952433))

(assert (= (and b!6952433 res!2836634) b!6952430))

(assert (= (or b!6952425 b!6952430) bm!631402))

(assert (= (or b!6952426 b!6952433) bm!631403))

(assert (= (or b!6952429 bm!631403) bm!631404))

(declare-fun m!7652916 () Bool)

(assert (=> bm!631402 m!7652916))

(declare-fun m!7652918 () Bool)

(assert (=> bm!631404 m!7652918))

(declare-fun m!7652920 () Bool)

(assert (=> b!6952431 m!7652920))

(assert (=> start!667236 d!2169220))

(declare-fun b!6952434 () Bool)

(declare-fun e!4181140 () Bool)

(assert (=> b!6952434 (= e!4181140 (matchR!9149 (derivativeStep!5483 rInner!765 (head!13936 (_1!37188 cut!51))) (tail!12988 (_1!37188 cut!51))))))

(declare-fun b!6952435 () Bool)

(declare-fun e!4181142 () Bool)

(declare-fun lt!2478113 () Bool)

(assert (=> b!6952435 (= e!4181142 (not lt!2478113))))

(declare-fun b!6952436 () Bool)

(assert (=> b!6952436 (= e!4181140 (nullable!6845 rInner!765))))

(declare-fun b!6952437 () Bool)

(declare-fun res!2836638 () Bool)

(declare-fun e!4181145 () Bool)

(assert (=> b!6952437 (=> (not res!2836638) (not e!4181145))))

(declare-fun call!631410 () Bool)

(assert (=> b!6952437 (= res!2836638 (not call!631410))))

(declare-fun b!6952438 () Bool)

(declare-fun e!4181143 () Bool)

(declare-fun e!4181139 () Bool)

(assert (=> b!6952438 (= e!4181143 e!4181139)))

(declare-fun res!2836637 () Bool)

(assert (=> b!6952438 (=> res!2836637 e!4181139)))

(assert (=> b!6952438 (= res!2836637 call!631410)))

(declare-fun b!6952439 () Bool)

(assert (=> b!6952439 (= e!4181139 (not (= (head!13936 (_1!37188 cut!51)) (c!1289434 rInner!765))))))

(declare-fun b!6952440 () Bool)

(declare-fun e!4181141 () Bool)

(assert (=> b!6952440 (= e!4181141 e!4181142)))

(declare-fun c!1289484 () Bool)

(assert (=> b!6952440 (= c!1289484 (is-EmptyLang!17032 rInner!765))))

(declare-fun b!6952441 () Bool)

(declare-fun res!2836641 () Bool)

(assert (=> b!6952441 (=> (not res!2836641) (not e!4181145))))

(assert (=> b!6952441 (= res!2836641 (isEmpty!38905 (tail!12988 (_1!37188 cut!51))))))

(declare-fun b!6952442 () Bool)

(assert (=> b!6952442 (= e!4181145 (= (head!13936 (_1!37188 cut!51)) (c!1289434 rInner!765)))))

(declare-fun b!6952443 () Bool)

(declare-fun res!2836636 () Bool)

(declare-fun e!4181144 () Bool)

(assert (=> b!6952443 (=> res!2836636 e!4181144)))

(assert (=> b!6952443 (= res!2836636 e!4181145)))

(declare-fun res!2836642 () Bool)

(assert (=> b!6952443 (=> (not res!2836642) (not e!4181145))))

(assert (=> b!6952443 (= res!2836642 lt!2478113)))

(declare-fun b!6952444 () Bool)

(declare-fun res!2836639 () Bool)

(assert (=> b!6952444 (=> res!2836639 e!4181139)))

(assert (=> b!6952444 (= res!2836639 (not (isEmpty!38905 (tail!12988 (_1!37188 cut!51)))))))

(declare-fun b!6952445 () Bool)

(declare-fun res!2836635 () Bool)

(assert (=> b!6952445 (=> res!2836635 e!4181144)))

(assert (=> b!6952445 (= res!2836635 (not (is-ElementMatch!17032 rInner!765)))))

(assert (=> b!6952445 (= e!4181142 e!4181144)))

(declare-fun b!6952446 () Bool)

(assert (=> b!6952446 (= e!4181144 e!4181143)))

(declare-fun res!2836640 () Bool)

(assert (=> b!6952446 (=> (not res!2836640) (not e!4181143))))

(assert (=> b!6952446 (= res!2836640 (not lt!2478113))))

(declare-fun b!6952447 () Bool)

(assert (=> b!6952447 (= e!4181141 (= lt!2478113 call!631410))))

(declare-fun bm!631405 () Bool)

(assert (=> bm!631405 (= call!631410 (isEmpty!38905 (_1!37188 cut!51)))))

(declare-fun d!2169224 () Bool)

(assert (=> d!2169224 e!4181141))

(declare-fun c!1289485 () Bool)

(assert (=> d!2169224 (= c!1289485 (is-EmptyExpr!17032 rInner!765))))

(assert (=> d!2169224 (= lt!2478113 e!4181140)))

(declare-fun c!1289486 () Bool)

(assert (=> d!2169224 (= c!1289486 (isEmpty!38905 (_1!37188 cut!51)))))

(assert (=> d!2169224 (validRegex!8738 rInner!765)))

(assert (=> d!2169224 (= (matchR!9149 rInner!765 (_1!37188 cut!51)) lt!2478113)))

(assert (= (and d!2169224 c!1289486) b!6952436))

(assert (= (and d!2169224 (not c!1289486)) b!6952434))

(assert (= (and d!2169224 c!1289485) b!6952447))

(assert (= (and d!2169224 (not c!1289485)) b!6952440))

(assert (= (and b!6952440 c!1289484) b!6952435))

(assert (= (and b!6952440 (not c!1289484)) b!6952445))

(assert (= (and b!6952445 (not res!2836635)) b!6952443))

(assert (= (and b!6952443 res!2836642) b!6952437))

(assert (= (and b!6952437 res!2836638) b!6952441))

(assert (= (and b!6952441 res!2836641) b!6952442))

(assert (= (and b!6952443 (not res!2836636)) b!6952446))

(assert (= (and b!6952446 res!2836640) b!6952438))

(assert (= (and b!6952438 (not res!2836637)) b!6952444))

(assert (= (and b!6952444 (not res!2836639)) b!6952439))

(assert (= (or b!6952447 b!6952437 b!6952438) bm!631405))

(declare-fun m!7652922 () Bool)

(assert (=> b!6952434 m!7652922))

(assert (=> b!6952434 m!7652922))

(declare-fun m!7652924 () Bool)

(assert (=> b!6952434 m!7652924))

(declare-fun m!7652926 () Bool)

(assert (=> b!6952434 m!7652926))

(assert (=> b!6952434 m!7652924))

(assert (=> b!6952434 m!7652926))

(declare-fun m!7652928 () Bool)

(assert (=> b!6952434 m!7652928))

(assert (=> b!6952442 m!7652922))

(assert (=> b!6952441 m!7652926))

(assert (=> b!6952441 m!7652926))

(declare-fun m!7652930 () Bool)

(assert (=> b!6952441 m!7652930))

(declare-fun m!7652932 () Bool)

(assert (=> d!2169224 m!7652932))

(assert (=> d!2169224 m!7652764))

(assert (=> b!6952436 m!7652758))

(assert (=> b!6952444 m!7652926))

(assert (=> b!6952444 m!7652926))

(assert (=> b!6952444 m!7652930))

(assert (=> b!6952439 m!7652922))

(assert (=> bm!631405 m!7652932))

(assert (=> b!6952150 d!2169224))

(declare-fun b!6952448 () Bool)

(declare-fun res!2836645 () Bool)

(declare-fun e!4181148 () Bool)

(assert (=> b!6952448 (=> (not res!2836645) (not e!4181148))))

(declare-fun call!631413 () Bool)

(assert (=> b!6952448 (= res!2836645 call!631413)))

(declare-fun e!4181151 () Bool)

(assert (=> b!6952448 (= e!4181151 e!4181148)))

(declare-fun bm!631406 () Bool)

(declare-fun c!1289488 () Bool)

(assert (=> bm!631406 (= call!631413 (validRegex!8738 (ite c!1289488 (regOne!34577 lt!2478074) (regTwo!34576 lt!2478074))))))

(declare-fun b!6952450 () Bool)

(declare-fun e!4181149 () Bool)

(declare-fun e!4181146 () Bool)

(assert (=> b!6952450 (= e!4181149 e!4181146)))

(declare-fun c!1289487 () Bool)

(assert (=> b!6952450 (= c!1289487 (is-Star!17032 lt!2478074))))

(declare-fun b!6952451 () Bool)

(assert (=> b!6952451 (= e!4181146 e!4181151)))

(assert (=> b!6952451 (= c!1289488 (is-Union!17032 lt!2478074))))

(declare-fun bm!631407 () Bool)

(declare-fun call!631411 () Bool)

(declare-fun call!631412 () Bool)

(assert (=> bm!631407 (= call!631411 call!631412)))

(declare-fun b!6952452 () Bool)

(declare-fun e!4181150 () Bool)

(assert (=> b!6952452 (= e!4181150 call!631412)))

(declare-fun bm!631408 () Bool)

(assert (=> bm!631408 (= call!631412 (validRegex!8738 (ite c!1289487 (reg!17361 lt!2478074) (ite c!1289488 (regTwo!34577 lt!2478074) (regOne!34576 lt!2478074)))))))

(declare-fun b!6952453 () Bool)

(declare-fun e!4181147 () Bool)

(assert (=> b!6952453 (= e!4181147 call!631413)))

(declare-fun b!6952454 () Bool)

(assert (=> b!6952454 (= e!4181146 e!4181150)))

(declare-fun res!2836643 () Bool)

(assert (=> b!6952454 (= res!2836643 (not (nullable!6845 (reg!17361 lt!2478074))))))

(assert (=> b!6952454 (=> (not res!2836643) (not e!4181150))))

(declare-fun b!6952449 () Bool)

(assert (=> b!6952449 (= e!4181148 call!631411)))

(declare-fun d!2169226 () Bool)

(declare-fun res!2836644 () Bool)

(assert (=> d!2169226 (=> res!2836644 e!4181149)))

(assert (=> d!2169226 (= res!2836644 (is-ElementMatch!17032 lt!2478074))))

(assert (=> d!2169226 (= (validRegex!8738 lt!2478074) e!4181149)))

(declare-fun b!6952455 () Bool)

(declare-fun res!2836646 () Bool)

(declare-fun e!4181152 () Bool)

(assert (=> b!6952455 (=> res!2836646 e!4181152)))

(assert (=> b!6952455 (= res!2836646 (not (is-Concat!25877 lt!2478074)))))

(assert (=> b!6952455 (= e!4181151 e!4181152)))

(declare-fun b!6952456 () Bool)

(assert (=> b!6952456 (= e!4181152 e!4181147)))

(declare-fun res!2836647 () Bool)

(assert (=> b!6952456 (=> (not res!2836647) (not e!4181147))))

(assert (=> b!6952456 (= res!2836647 call!631411)))

(assert (= (and d!2169226 (not res!2836644)) b!6952450))

(assert (= (and b!6952450 c!1289487) b!6952454))

(assert (= (and b!6952450 (not c!1289487)) b!6952451))

(assert (= (and b!6952454 res!2836643) b!6952452))

(assert (= (and b!6952451 c!1289488) b!6952448))

(assert (= (and b!6952451 (not c!1289488)) b!6952455))

(assert (= (and b!6952448 res!2836645) b!6952449))

(assert (= (and b!6952455 (not res!2836646)) b!6952456))

(assert (= (and b!6952456 res!2836647) b!6952453))

(assert (= (or b!6952448 b!6952453) bm!631406))

(assert (= (or b!6952449 b!6952456) bm!631407))

(assert (= (or b!6952452 bm!631407) bm!631408))

(declare-fun m!7652934 () Bool)

(assert (=> bm!631406 m!7652934))

(declare-fun m!7652936 () Bool)

(assert (=> bm!631408 m!7652936))

(declare-fun m!7652938 () Bool)

(assert (=> b!6952454 m!7652938))

(assert (=> b!6952149 d!2169226))

(assert (=> b!6952160 d!2169184))

(declare-fun b!6952469 () Bool)

(declare-fun e!4181155 () Bool)

(declare-fun tp!1916555 () Bool)

(assert (=> b!6952469 (= e!4181155 tp!1916555)))

(declare-fun b!6952467 () Bool)

(assert (=> b!6952467 (= e!4181155 tp_is_empty!43289)))

(declare-fun b!6952468 () Bool)

(declare-fun tp!1916556 () Bool)

(declare-fun tp!1916554 () Bool)

(assert (=> b!6952468 (= e!4181155 (and tp!1916556 tp!1916554))))

(assert (=> b!6952146 (= tp!1916510 e!4181155)))

(declare-fun b!6952470 () Bool)

(declare-fun tp!1916552 () Bool)

(declare-fun tp!1916553 () Bool)

(assert (=> b!6952470 (= e!4181155 (and tp!1916552 tp!1916553))))

(assert (= (and b!6952146 (is-ElementMatch!17032 (reg!17361 rInner!765))) b!6952467))

(assert (= (and b!6952146 (is-Concat!25877 (reg!17361 rInner!765))) b!6952468))

(assert (= (and b!6952146 (is-Star!17032 (reg!17361 rInner!765))) b!6952469))

(assert (= (and b!6952146 (is-Union!17032 (reg!17361 rInner!765))) b!6952470))

(declare-fun b!6952475 () Bool)

(declare-fun e!4181158 () Bool)

(declare-fun tp!1916559 () Bool)

(assert (=> b!6952475 (= e!4181158 (and tp_is_empty!43289 tp!1916559))))

(assert (=> b!6952147 (= tp!1916511 e!4181158)))

(assert (= (and b!6952147 (is-Cons!66661 (t!380528 (_1!37188 cut!51)))) b!6952475))

(declare-fun b!6952476 () Bool)

(declare-fun e!4181159 () Bool)

(declare-fun tp!1916560 () Bool)

(assert (=> b!6952476 (= e!4181159 (and tp_is_empty!43289 tp!1916560))))

(assert (=> b!6952152 (= tp!1916514 e!4181159)))

(assert (= (and b!6952152 (is-Cons!66661 (t!380528 s!10388))) b!6952476))

(declare-fun b!6952479 () Bool)

(declare-fun e!4181160 () Bool)

(declare-fun tp!1916564 () Bool)

(assert (=> b!6952479 (= e!4181160 tp!1916564)))

(declare-fun b!6952477 () Bool)

(assert (=> b!6952477 (= e!4181160 tp_is_empty!43289)))

(declare-fun b!6952478 () Bool)

(declare-fun tp!1916565 () Bool)

(declare-fun tp!1916563 () Bool)

(assert (=> b!6952478 (= e!4181160 (and tp!1916565 tp!1916563))))

(assert (=> b!6952159 (= tp!1916517 e!4181160)))

(declare-fun b!6952480 () Bool)

(declare-fun tp!1916561 () Bool)

(declare-fun tp!1916562 () Bool)

(assert (=> b!6952480 (= e!4181160 (and tp!1916561 tp!1916562))))

(assert (= (and b!6952159 (is-ElementMatch!17032 (regOne!34576 rInner!765))) b!6952477))

(assert (= (and b!6952159 (is-Concat!25877 (regOne!34576 rInner!765))) b!6952478))

(assert (= (and b!6952159 (is-Star!17032 (regOne!34576 rInner!765))) b!6952479))

(assert (= (and b!6952159 (is-Union!17032 (regOne!34576 rInner!765))) b!6952480))

(declare-fun b!6952483 () Bool)

(declare-fun e!4181161 () Bool)

(declare-fun tp!1916569 () Bool)

(assert (=> b!6952483 (= e!4181161 tp!1916569)))

(declare-fun b!6952481 () Bool)

(assert (=> b!6952481 (= e!4181161 tp_is_empty!43289)))

(declare-fun b!6952482 () Bool)

(declare-fun tp!1916570 () Bool)

(declare-fun tp!1916568 () Bool)

(assert (=> b!6952482 (= e!4181161 (and tp!1916570 tp!1916568))))

(assert (=> b!6952159 (= tp!1916512 e!4181161)))

(declare-fun b!6952484 () Bool)

(declare-fun tp!1916566 () Bool)

(declare-fun tp!1916567 () Bool)

(assert (=> b!6952484 (= e!4181161 (and tp!1916566 tp!1916567))))

(assert (= (and b!6952159 (is-ElementMatch!17032 (regTwo!34576 rInner!765))) b!6952481))

(assert (= (and b!6952159 (is-Concat!25877 (regTwo!34576 rInner!765))) b!6952482))

(assert (= (and b!6952159 (is-Star!17032 (regTwo!34576 rInner!765))) b!6952483))

(assert (= (and b!6952159 (is-Union!17032 (regTwo!34576 rInner!765))) b!6952484))

(declare-fun b!6952485 () Bool)

(declare-fun e!4181162 () Bool)

(declare-fun tp!1916571 () Bool)

(assert (=> b!6952485 (= e!4181162 (and tp_is_empty!43289 tp!1916571))))

(assert (=> b!6952153 (= tp!1916516 e!4181162)))

(assert (= (and b!6952153 (is-Cons!66661 (t!380528 (_2!37188 cut!51)))) b!6952485))

(declare-fun b!6952488 () Bool)

(declare-fun e!4181163 () Bool)

(declare-fun tp!1916575 () Bool)

(assert (=> b!6952488 (= e!4181163 tp!1916575)))

(declare-fun b!6952486 () Bool)

(assert (=> b!6952486 (= e!4181163 tp_is_empty!43289)))

(declare-fun b!6952487 () Bool)

(declare-fun tp!1916576 () Bool)

(declare-fun tp!1916574 () Bool)

(assert (=> b!6952487 (= e!4181163 (and tp!1916576 tp!1916574))))

(assert (=> b!6952155 (= tp!1916515 e!4181163)))

(declare-fun b!6952489 () Bool)

(declare-fun tp!1916572 () Bool)

(declare-fun tp!1916573 () Bool)

(assert (=> b!6952489 (= e!4181163 (and tp!1916572 tp!1916573))))

(assert (= (and b!6952155 (is-ElementMatch!17032 (regOne!34577 rInner!765))) b!6952486))

(assert (= (and b!6952155 (is-Concat!25877 (regOne!34577 rInner!765))) b!6952487))

(assert (= (and b!6952155 (is-Star!17032 (regOne!34577 rInner!765))) b!6952488))

(assert (= (and b!6952155 (is-Union!17032 (regOne!34577 rInner!765))) b!6952489))

(declare-fun b!6952492 () Bool)

(declare-fun e!4181164 () Bool)

(declare-fun tp!1916580 () Bool)

(assert (=> b!6952492 (= e!4181164 tp!1916580)))

(declare-fun b!6952490 () Bool)

(assert (=> b!6952490 (= e!4181164 tp_is_empty!43289)))

(declare-fun b!6952491 () Bool)

(declare-fun tp!1916581 () Bool)

(declare-fun tp!1916579 () Bool)

(assert (=> b!6952491 (= e!4181164 (and tp!1916581 tp!1916579))))

(assert (=> b!6952155 (= tp!1916513 e!4181164)))

(declare-fun b!6952493 () Bool)

(declare-fun tp!1916577 () Bool)

(declare-fun tp!1916578 () Bool)

(assert (=> b!6952493 (= e!4181164 (and tp!1916577 tp!1916578))))

(assert (= (and b!6952155 (is-ElementMatch!17032 (regTwo!34577 rInner!765))) b!6952490))

(assert (= (and b!6952155 (is-Concat!25877 (regTwo!34577 rInner!765))) b!6952491))

(assert (= (and b!6952155 (is-Star!17032 (regTwo!34577 rInner!765))) b!6952492))

(assert (= (and b!6952155 (is-Union!17032 (regTwo!34577 rInner!765))) b!6952493))

(declare-fun b_lambda!260411 () Bool)

(assert (= b_lambda!260409 (or b!6952161 b_lambda!260411)))

(declare-fun bs!1857799 () Bool)

(declare-fun d!2169232 () Bool)

(assert (= bs!1857799 (and d!2169232 b!6952161)))

(declare-fun res!2836648 () Bool)

(declare-fun e!4181165 () Bool)

(assert (=> bs!1857799 (=> (not res!2836648) (not e!4181165))))

(assert (=> bs!1857799 (= res!2836648 (= (++!15063 (_1!37188 lt!2478106) (_2!37188 lt!2478106)) s!10388))))

(assert (=> bs!1857799 (= (dynLambda!26582 lambda!396528 lt!2478106) e!4181165)))

(declare-fun b!6952494 () Bool)

(declare-fun res!2836649 () Bool)

(assert (=> b!6952494 (=> (not res!2836649) (not e!4181165))))

(assert (=> b!6952494 (= res!2836649 (not (isEmpty!38905 (_1!37188 lt!2478106))))))

(declare-fun b!6952495 () Bool)

(declare-fun res!2836650 () Bool)

(assert (=> b!6952495 (=> (not res!2836650) (not e!4181165))))

(assert (=> b!6952495 (= res!2836650 (matchRSpec!4065 rInner!765 (_1!37188 lt!2478106)))))

(declare-fun b!6952496 () Bool)

(assert (=> b!6952496 (= e!4181165 (matchRSpec!4065 (Star!17032 rInner!765) (_2!37188 lt!2478106)))))

(assert (= (and bs!1857799 res!2836648) b!6952494))

(assert (= (and b!6952494 res!2836649) b!6952495))

(assert (= (and b!6952495 res!2836650) b!6952496))

(declare-fun m!7652944 () Bool)

(assert (=> bs!1857799 m!7652944))

(declare-fun m!7652946 () Bool)

(assert (=> b!6952494 m!7652946))

(declare-fun m!7652948 () Bool)

(assert (=> b!6952495 m!7652948))

(declare-fun m!7652950 () Bool)

(assert (=> b!6952496 m!7652950))

(assert (=> d!2169198 d!2169232))

(push 1)

(assert (not d!2169192))

(assert (not b!6952400))

(assert (not b!6952454))

(assert (not b!6952442))

(assert (not b!6952296))

(assert (not b_lambda!260411))

(assert (not b!6952401))

(assert (not b!6952373))

(assert (not b!6952480))

(assert (not b!6952468))

(assert tp_is_empty!43289)

(assert (not bm!631391))

(assert (not bm!631405))

(assert (not b!6952366))

(assert (not b!6952301))

(assert (not b!6952304))

(assert (not b!6952495))

(assert (not d!2169210))

(assert (not d!2169186))

(assert (not bm!631392))

(assert (not bm!631393))

(assert (not b!6952385))

(assert (not b!6952482))

(assert (not b!6952489))

(assert (not d!2169188))

(assert (not b!6952303))

(assert (not b!6952488))

(assert (not b!6952492))

(assert (not bm!631406))

(assert (not bm!631402))

(assert (not d!2169224))

(assert (not b!6952479))

(assert (not bm!631377))

(assert (not b!6952483))

(assert (not b!6952478))

(assert (not b!6952247))

(assert (not bs!1857799))

(assert (not bm!631395))

(assert (not b!6952496))

(assert (not b!6952441))

(assert (not b!6952431))

(assert (not b!6952361))

(assert (not b!6952434))

(assert (not b!6952469))

(assert (not d!2169216))

(assert (not d!2169190))

(assert (not b!6952436))

(assert (not b!6952394))

(assert (not b!6952476))

(assert (not b!6952368))

(assert (not b!6952493))

(assert (not b!6952439))

(assert (not bm!631408))

(assert (not b!6952371))

(assert (not b!6952484))

(assert (not b!6952374))

(assert (not bm!631404))

(assert (not d!2169196))

(assert (not b!6952352))

(assert (not b!6952376))

(assert (not b!6952306))

(assert (not bm!631394))

(assert (not b!6952485))

(assert (not d!2169214))

(assert (not b!6952470))

(assert (not b!6952248))

(assert (not b!6952487))

(assert (not b!6952494))

(assert (not d!2169198))

(assert (not b!6952491))

(assert (not b!6952475))

(assert (not b!6952298))

(assert (not d!2169184))

(assert (not b!6952444))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

