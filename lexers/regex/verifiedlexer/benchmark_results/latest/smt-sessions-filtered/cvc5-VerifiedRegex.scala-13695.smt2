; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733086 () Bool)

(assert start!733086)

(declare-fun b!7605140 () Bool)

(assert (=> b!7605140 true))

(assert (=> b!7605140 true))

(assert (=> b!7605140 true))

(declare-fun bs!1942615 () Bool)

(declare-fun b!7605148 () Bool)

(assert (= bs!1942615 (and b!7605148 b!7605140)))

(declare-fun lambda!467981 () Int)

(declare-fun lambda!467980 () Int)

(assert (=> bs!1942615 (not (= lambda!467981 lambda!467980))))

(assert (=> b!7605148 true))

(assert (=> b!7605148 true))

(assert (=> b!7605148 true))

(declare-fun b!7605138 () Bool)

(declare-fun e!4523889 () Bool)

(declare-fun tp!2218000 () Bool)

(declare-fun tp!2218008 () Bool)

(assert (=> b!7605138 (= e!4523889 (and tp!2218000 tp!2218008))))

(declare-fun b!7605139 () Bool)

(declare-fun res!3045179 () Bool)

(declare-fun e!4523891 () Bool)

(assert (=> b!7605139 (=> (not res!3045179) (not e!4523891))))

(declare-fun Exists!4412 (Int) Bool)

(assert (=> b!7605139 (= res!3045179 (not (Exists!4412 lambda!467980)))))

(declare-fun res!3045182 () Bool)

(assert (=> b!7605140 (=> (not res!3045182) (not e!4523891))))

(assert (=> b!7605140 (= res!3045182 (not (Exists!4412 lambda!467980)))))

(declare-fun res!3045180 () Bool)

(assert (=> start!733086 (=> (not res!3045180) (not e!4523891))))

(declare-datatypes ((C!40694 0))(
  ( (C!40695 (val!30787 Int)) )
))
(declare-datatypes ((Regex!20184 0))(
  ( (ElementMatch!20184 (c!1402607 C!40694)) (Concat!29029 (regOne!40880 Regex!20184) (regTwo!40880 Regex!20184)) (EmptyExpr!20184) (Star!20184 (reg!20513 Regex!20184)) (EmptyLang!20184) (Union!20184 (regOne!40881 Regex!20184) (regTwo!40881 Regex!20184)) )
))
(declare-fun r1!3349 () Regex!20184)

(declare-fun validRegex!10612 (Regex!20184) Bool)

(assert (=> start!733086 (= res!3045180 (validRegex!10612 r1!3349))))

(assert (=> start!733086 e!4523891))

(declare-fun e!4523890 () Bool)

(assert (=> start!733086 e!4523890))

(assert (=> start!733086 e!4523889))

(declare-fun e!4523892 () Bool)

(assert (=> start!733086 e!4523892))

(declare-fun b!7605141 () Bool)

(declare-fun tp_is_empty!50723 () Bool)

(assert (=> b!7605141 (= e!4523890 tp_is_empty!50723)))

(declare-fun b!7605142 () Bool)

(declare-fun e!4523888 () Bool)

(declare-fun lt!2654739 () Bool)

(declare-fun lt!2654735 () Bool)

(assert (=> b!7605142 (= e!4523888 (or (not lt!2654739) lt!2654735))))

(declare-fun b!7605143 () Bool)

(declare-fun tp!2218007 () Bool)

(assert (=> b!7605143 (= e!4523892 (and tp_is_empty!50723 tp!2218007))))

(declare-fun b!7605144 () Bool)

(assert (=> b!7605144 (= e!4523889 tp_is_empty!50723)))

(declare-fun b!7605145 () Bool)

(declare-fun tp!2218003 () Bool)

(declare-fun tp!2218004 () Bool)

(assert (=> b!7605145 (= e!4523889 (and tp!2218003 tp!2218004))))

(declare-fun b!7605146 () Bool)

(declare-fun tp!2218005 () Bool)

(declare-fun tp!2218009 () Bool)

(assert (=> b!7605146 (= e!4523890 (and tp!2218005 tp!2218009))))

(declare-fun b!7605147 () Bool)

(assert (=> b!7605147 (= e!4523891 (not e!4523888))))

(declare-fun res!3045177 () Bool)

(assert (=> b!7605147 (=> res!3045177 e!4523888)))

(declare-datatypes ((List!73067 0))(
  ( (Nil!72943) (Cons!72943 (h!79391 C!40694) (t!387802 List!73067)) )
))
(declare-datatypes ((tuple2!69078 0))(
  ( (tuple2!69079 (_1!37842 List!73067) (_2!37842 List!73067)) )
))
(declare-fun lt!2654738 () tuple2!69078)

(declare-fun s!10235 () List!73067)

(declare-fun ++!17582 (List!73067 List!73067) List!73067)

(assert (=> b!7605147 (= res!3045177 (not (= (++!17582 (_1!37842 lt!2654738) (_2!37842 lt!2654738)) s!10235)))))

(declare-fun r2!3249 () Regex!20184)

(declare-fun matchRSpec!4459 (Regex!20184 List!73067) Bool)

(assert (=> b!7605147 (= lt!2654735 (matchRSpec!4459 r2!3249 (_2!37842 lt!2654738)))))

(declare-fun matchR!9747 (Regex!20184 List!73067) Bool)

(assert (=> b!7605147 (= lt!2654735 (matchR!9747 r2!3249 (_2!37842 lt!2654738)))))

(declare-datatypes ((Unit!167248 0))(
  ( (Unit!167249) )
))
(declare-fun lt!2654736 () Unit!167248)

(declare-fun mainMatchTheorem!4453 (Regex!20184 List!73067) Unit!167248)

(assert (=> b!7605147 (= lt!2654736 (mainMatchTheorem!4453 r2!3249 (_2!37842 lt!2654738)))))

(assert (=> b!7605147 (= lt!2654739 (matchRSpec!4459 r1!3349 (_1!37842 lt!2654738)))))

(assert (=> b!7605147 (= lt!2654739 (matchR!9747 r1!3349 (_1!37842 lt!2654738)))))

(declare-fun lt!2654737 () Unit!167248)

(assert (=> b!7605147 (= lt!2654737 (mainMatchTheorem!4453 r1!3349 (_1!37842 lt!2654738)))))

(declare-fun pickWitness!427 (Int) tuple2!69078)

(assert (=> b!7605147 (= lt!2654738 (pickWitness!427 lambda!467981))))

(declare-fun res!3045181 () Bool)

(assert (=> b!7605148 (=> (not res!3045181) (not e!4523891))))

(assert (=> b!7605148 (= res!3045181 (Exists!4412 lambda!467981))))

(declare-fun b!7605149 () Bool)

(declare-fun tp!2218001 () Bool)

(assert (=> b!7605149 (= e!4523889 tp!2218001)))

(declare-fun b!7605150 () Bool)

(declare-fun tp!2218006 () Bool)

(declare-fun tp!2218002 () Bool)

(assert (=> b!7605150 (= e!4523890 (and tp!2218006 tp!2218002))))

(declare-fun b!7605151 () Bool)

(declare-fun tp!2218010 () Bool)

(assert (=> b!7605151 (= e!4523890 tp!2218010)))

(declare-fun b!7605152 () Bool)

(declare-fun res!3045178 () Bool)

(assert (=> b!7605152 (=> (not res!3045178) (not e!4523891))))

(assert (=> b!7605152 (= res!3045178 (validRegex!10612 r2!3249))))

(assert (= (and start!733086 res!3045180) b!7605152))

(assert (= (and b!7605152 res!3045178) b!7605140))

(assert (= (and b!7605140 res!3045182) b!7605139))

(assert (= (and b!7605139 res!3045179) b!7605148))

(assert (= (and b!7605148 res!3045181) b!7605147))

(assert (= (and b!7605147 (not res!3045177)) b!7605142))

(assert (= (and start!733086 (is-ElementMatch!20184 r1!3349)) b!7605141))

(assert (= (and start!733086 (is-Concat!29029 r1!3349)) b!7605146))

(assert (= (and start!733086 (is-Star!20184 r1!3349)) b!7605151))

(assert (= (and start!733086 (is-Union!20184 r1!3349)) b!7605150))

(assert (= (and start!733086 (is-ElementMatch!20184 r2!3249)) b!7605144))

(assert (= (and start!733086 (is-Concat!29029 r2!3249)) b!7605138))

(assert (= (and start!733086 (is-Star!20184 r2!3249)) b!7605149))

(assert (= (and start!733086 (is-Union!20184 r2!3249)) b!7605145))

(assert (= (and start!733086 (is-Cons!72943 s!10235)) b!7605143))

(declare-fun m!8146410 () Bool)

(assert (=> b!7605147 m!8146410))

(declare-fun m!8146412 () Bool)

(assert (=> b!7605147 m!8146412))

(declare-fun m!8146414 () Bool)

(assert (=> b!7605147 m!8146414))

(declare-fun m!8146416 () Bool)

(assert (=> b!7605147 m!8146416))

(declare-fun m!8146418 () Bool)

(assert (=> b!7605147 m!8146418))

(declare-fun m!8146420 () Bool)

(assert (=> b!7605147 m!8146420))

(declare-fun m!8146422 () Bool)

(assert (=> b!7605147 m!8146422))

(declare-fun m!8146424 () Bool)

(assert (=> b!7605147 m!8146424))

(declare-fun m!8146426 () Bool)

(assert (=> b!7605148 m!8146426))

(declare-fun m!8146428 () Bool)

(assert (=> b!7605140 m!8146428))

(declare-fun m!8146430 () Bool)

(assert (=> start!733086 m!8146430))

(assert (=> b!7605139 m!8146428))

(declare-fun m!8146432 () Bool)

(assert (=> b!7605152 m!8146432))

(push 1)

(assert (not b!7605145))

(assert (not b!7605148))

(assert (not b!7605151))

(assert (not b!7605138))

(assert (not b!7605140))

(assert (not start!733086))

(assert (not b!7605149))

(assert (not b!7605147))

(assert (not b!7605152))

(assert (not b!7605143))

(assert (not b!7605146))

(assert (not b!7605139))

(assert tp_is_empty!50723)

(assert (not b!7605150))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7605240 () Bool)

(declare-fun res!3045230 () Bool)

(declare-fun e!4523930 () Bool)

(assert (=> b!7605240 (=> (not res!3045230) (not e!4523930))))

(declare-fun call!698267 () Bool)

(assert (=> b!7605240 (= res!3045230 call!698267)))

(declare-fun e!4523933 () Bool)

(assert (=> b!7605240 (= e!4523933 e!4523930)))

(declare-fun b!7605241 () Bool)

(declare-fun res!3045231 () Bool)

(declare-fun e!4523936 () Bool)

(assert (=> b!7605241 (=> res!3045231 e!4523936)))

(assert (=> b!7605241 (= res!3045231 (not (is-Concat!29029 r1!3349)))))

(assert (=> b!7605241 (= e!4523933 e!4523936)))

(declare-fun b!7605242 () Bool)

(declare-fun e!4523934 () Bool)

(declare-fun call!698268 () Bool)

(assert (=> b!7605242 (= e!4523934 call!698268)))

(declare-fun b!7605243 () Bool)

(declare-fun call!698269 () Bool)

(assert (=> b!7605243 (= e!4523930 call!698269)))

(declare-fun b!7605244 () Bool)

(declare-fun e!4523935 () Bool)

(assert (=> b!7605244 (= e!4523935 e!4523933)))

(declare-fun c!1402614 () Bool)

(assert (=> b!7605244 (= c!1402614 (is-Union!20184 r1!3349))))

(declare-fun c!1402613 () Bool)

(declare-fun bm!698262 () Bool)

(assert (=> bm!698262 (= call!698268 (validRegex!10612 (ite c!1402613 (reg!20513 r1!3349) (ite c!1402614 (regOne!40881 r1!3349) (regTwo!40880 r1!3349)))))))

(declare-fun b!7605245 () Bool)

(declare-fun e!4523932 () Bool)

(assert (=> b!7605245 (= e!4523936 e!4523932)))

(declare-fun res!3045228 () Bool)

(assert (=> b!7605245 (=> (not res!3045228) (not e!4523932))))

(assert (=> b!7605245 (= res!3045228 call!698269)))

(declare-fun d!2321740 () Bool)

(declare-fun res!3045227 () Bool)

(declare-fun e!4523931 () Bool)

(assert (=> d!2321740 (=> res!3045227 e!4523931)))

(assert (=> d!2321740 (= res!3045227 (is-ElementMatch!20184 r1!3349))))

(assert (=> d!2321740 (= (validRegex!10612 r1!3349) e!4523931)))

(declare-fun b!7605246 () Bool)

(assert (=> b!7605246 (= e!4523935 e!4523934)))

(declare-fun res!3045229 () Bool)

(declare-fun nullable!8813 (Regex!20184) Bool)

(assert (=> b!7605246 (= res!3045229 (not (nullable!8813 (reg!20513 r1!3349))))))

(assert (=> b!7605246 (=> (not res!3045229) (not e!4523934))))

(declare-fun bm!698263 () Bool)

(assert (=> bm!698263 (= call!698267 call!698268)))

(declare-fun bm!698264 () Bool)

(assert (=> bm!698264 (= call!698269 (validRegex!10612 (ite c!1402614 (regTwo!40881 r1!3349) (regOne!40880 r1!3349))))))

(declare-fun b!7605247 () Bool)

(assert (=> b!7605247 (= e!4523931 e!4523935)))

(assert (=> b!7605247 (= c!1402613 (is-Star!20184 r1!3349))))

(declare-fun b!7605248 () Bool)

(assert (=> b!7605248 (= e!4523932 call!698267)))

(assert (= (and d!2321740 (not res!3045227)) b!7605247))

(assert (= (and b!7605247 c!1402613) b!7605246))

(assert (= (and b!7605247 (not c!1402613)) b!7605244))

(assert (= (and b!7605246 res!3045229) b!7605242))

(assert (= (and b!7605244 c!1402614) b!7605240))

(assert (= (and b!7605244 (not c!1402614)) b!7605241))

(assert (= (and b!7605240 res!3045230) b!7605243))

(assert (= (and b!7605241 (not res!3045231)) b!7605245))

(assert (= (and b!7605245 res!3045228) b!7605248))

(assert (= (or b!7605243 b!7605245) bm!698264))

(assert (= (or b!7605240 b!7605248) bm!698263))

(assert (= (or b!7605242 bm!698263) bm!698262))

(declare-fun m!8146458 () Bool)

(assert (=> bm!698262 m!8146458))

(declare-fun m!8146460 () Bool)

(assert (=> b!7605246 m!8146460))

(declare-fun m!8146462 () Bool)

(assert (=> bm!698264 m!8146462))

(assert (=> start!733086 d!2321740))

(declare-fun d!2321742 () Bool)

(declare-fun choose!58716 (Int) Bool)

(assert (=> d!2321742 (= (Exists!4412 lambda!467980) (choose!58716 lambda!467980))))

(declare-fun bs!1942617 () Bool)

(assert (= bs!1942617 d!2321742))

(declare-fun m!8146464 () Bool)

(assert (=> bs!1942617 m!8146464))

(assert (=> b!7605139 d!2321742))

(declare-fun d!2321744 () Bool)

(assert (=> d!2321744 (= (Exists!4412 lambda!467981) (choose!58716 lambda!467981))))

(declare-fun bs!1942618 () Bool)

(assert (= bs!1942618 d!2321744))

(declare-fun m!8146466 () Bool)

(assert (=> bs!1942618 m!8146466))

(assert (=> b!7605148 d!2321744))

(declare-fun b!7605249 () Bool)

(declare-fun res!3045235 () Bool)

(declare-fun e!4523937 () Bool)

(assert (=> b!7605249 (=> (not res!3045235) (not e!4523937))))

(declare-fun call!698270 () Bool)

(assert (=> b!7605249 (= res!3045235 call!698270)))

(declare-fun e!4523940 () Bool)

(assert (=> b!7605249 (= e!4523940 e!4523937)))

(declare-fun b!7605250 () Bool)

(declare-fun res!3045236 () Bool)

(declare-fun e!4523943 () Bool)

(assert (=> b!7605250 (=> res!3045236 e!4523943)))

(assert (=> b!7605250 (= res!3045236 (not (is-Concat!29029 r2!3249)))))

(assert (=> b!7605250 (= e!4523940 e!4523943)))

(declare-fun b!7605251 () Bool)

(declare-fun e!4523941 () Bool)

(declare-fun call!698271 () Bool)

(assert (=> b!7605251 (= e!4523941 call!698271)))

(declare-fun b!7605252 () Bool)

(declare-fun call!698272 () Bool)

(assert (=> b!7605252 (= e!4523937 call!698272)))

(declare-fun b!7605253 () Bool)

(declare-fun e!4523942 () Bool)

(assert (=> b!7605253 (= e!4523942 e!4523940)))

(declare-fun c!1402616 () Bool)

(assert (=> b!7605253 (= c!1402616 (is-Union!20184 r2!3249))))

(declare-fun c!1402615 () Bool)

(declare-fun bm!698265 () Bool)

(assert (=> bm!698265 (= call!698271 (validRegex!10612 (ite c!1402615 (reg!20513 r2!3249) (ite c!1402616 (regOne!40881 r2!3249) (regTwo!40880 r2!3249)))))))

(declare-fun b!7605254 () Bool)

(declare-fun e!4523939 () Bool)

(assert (=> b!7605254 (= e!4523943 e!4523939)))

(declare-fun res!3045233 () Bool)

(assert (=> b!7605254 (=> (not res!3045233) (not e!4523939))))

(assert (=> b!7605254 (= res!3045233 call!698272)))

(declare-fun d!2321746 () Bool)

(declare-fun res!3045232 () Bool)

(declare-fun e!4523938 () Bool)

(assert (=> d!2321746 (=> res!3045232 e!4523938)))

(assert (=> d!2321746 (= res!3045232 (is-ElementMatch!20184 r2!3249))))

(assert (=> d!2321746 (= (validRegex!10612 r2!3249) e!4523938)))

(declare-fun b!7605255 () Bool)

(assert (=> b!7605255 (= e!4523942 e!4523941)))

(declare-fun res!3045234 () Bool)

(assert (=> b!7605255 (= res!3045234 (not (nullable!8813 (reg!20513 r2!3249))))))

(assert (=> b!7605255 (=> (not res!3045234) (not e!4523941))))

(declare-fun bm!698266 () Bool)

(assert (=> bm!698266 (= call!698270 call!698271)))

(declare-fun bm!698267 () Bool)

(assert (=> bm!698267 (= call!698272 (validRegex!10612 (ite c!1402616 (regTwo!40881 r2!3249) (regOne!40880 r2!3249))))))

(declare-fun b!7605256 () Bool)

(assert (=> b!7605256 (= e!4523938 e!4523942)))

(assert (=> b!7605256 (= c!1402615 (is-Star!20184 r2!3249))))

(declare-fun b!7605257 () Bool)

(assert (=> b!7605257 (= e!4523939 call!698270)))

(assert (= (and d!2321746 (not res!3045232)) b!7605256))

(assert (= (and b!7605256 c!1402615) b!7605255))

(assert (= (and b!7605256 (not c!1402615)) b!7605253))

(assert (= (and b!7605255 res!3045234) b!7605251))

(assert (= (and b!7605253 c!1402616) b!7605249))

(assert (= (and b!7605253 (not c!1402616)) b!7605250))

(assert (= (and b!7605249 res!3045235) b!7605252))

(assert (= (and b!7605250 (not res!3045236)) b!7605254))

(assert (= (and b!7605254 res!3045233) b!7605257))

(assert (= (or b!7605252 b!7605254) bm!698267))

(assert (= (or b!7605249 b!7605257) bm!698266))

(assert (= (or b!7605251 bm!698266) bm!698265))

(declare-fun m!8146468 () Bool)

(assert (=> bm!698265 m!8146468))

(declare-fun m!8146470 () Bool)

(assert (=> b!7605255 m!8146470))

(declare-fun m!8146472 () Bool)

(assert (=> bm!698267 m!8146472))

(assert (=> b!7605152 d!2321746))

(declare-fun bs!1942619 () Bool)

(declare-fun b!7605305 () Bool)

(assert (= bs!1942619 (and b!7605305 b!7605140)))

(declare-fun lambda!467996 () Int)

(assert (=> bs!1942619 (not (= lambda!467996 lambda!467980))))

(declare-fun bs!1942620 () Bool)

(assert (= bs!1942620 (and b!7605305 b!7605148)))

(assert (=> bs!1942620 (not (= lambda!467996 lambda!467981))))

(assert (=> b!7605305 true))

(assert (=> b!7605305 true))

(declare-fun bs!1942621 () Bool)

(declare-fun b!7605307 () Bool)

(assert (= bs!1942621 (and b!7605307 b!7605140)))

(declare-fun lambda!467997 () Int)

(assert (=> bs!1942621 (not (= lambda!467997 lambda!467980))))

(declare-fun bs!1942622 () Bool)

(assert (= bs!1942622 (and b!7605307 b!7605148)))

(assert (=> bs!1942622 (= (and (= (_1!37842 lt!2654738) s!10235) (= (regOne!40880 r1!3349) r1!3349) (= (regTwo!40880 r1!3349) r2!3249)) (= lambda!467997 lambda!467981))))

(declare-fun bs!1942623 () Bool)

(assert (= bs!1942623 (and b!7605307 b!7605305)))

(assert (=> bs!1942623 (not (= lambda!467997 lambda!467996))))

(assert (=> b!7605307 true))

(assert (=> b!7605307 true))

(declare-fun b!7605302 () Bool)

(declare-fun e!4523969 () Bool)

(declare-fun e!4523974 () Bool)

(assert (=> b!7605302 (= e!4523969 e!4523974)))

(declare-fun c!1402628 () Bool)

(assert (=> b!7605302 (= c!1402628 (is-Star!20184 r1!3349))))

(declare-fun b!7605303 () Bool)

(declare-fun res!3045259 () Bool)

(declare-fun e!4523968 () Bool)

(assert (=> b!7605303 (=> res!3045259 e!4523968)))

(declare-fun call!698278 () Bool)

(assert (=> b!7605303 (= res!3045259 call!698278)))

(assert (=> b!7605303 (= e!4523974 e!4523968)))

(declare-fun bm!698272 () Bool)

(declare-fun isEmpty!41574 (List!73067) Bool)

(assert (=> bm!698272 (= call!698278 (isEmpty!41574 (_1!37842 lt!2654738)))))

(declare-fun b!7605304 () Bool)

(declare-fun e!4523972 () Bool)

(assert (=> b!7605304 (= e!4523972 call!698278)))

(declare-fun call!698277 () Bool)

(assert (=> b!7605305 (= e!4523968 call!698277)))

(declare-fun b!7605306 () Bool)

(declare-fun e!4523970 () Bool)

(assert (=> b!7605306 (= e!4523969 e!4523970)))

(declare-fun res!3045260 () Bool)

(assert (=> b!7605306 (= res!3045260 (matchRSpec!4459 (regOne!40881 r1!3349) (_1!37842 lt!2654738)))))

(assert (=> b!7605306 (=> res!3045260 e!4523970)))

(assert (=> b!7605307 (= e!4523974 call!698277)))

(declare-fun b!7605308 () Bool)

(assert (=> b!7605308 (= e!4523970 (matchRSpec!4459 (regTwo!40881 r1!3349) (_1!37842 lt!2654738)))))

(declare-fun b!7605309 () Bool)

(declare-fun c!1402630 () Bool)

(assert (=> b!7605309 (= c!1402630 (is-Union!20184 r1!3349))))

(declare-fun e!4523971 () Bool)

(assert (=> b!7605309 (= e!4523971 e!4523969)))

(declare-fun d!2321748 () Bool)

(declare-fun c!1402631 () Bool)

(assert (=> d!2321748 (= c!1402631 (is-EmptyExpr!20184 r1!3349))))

(assert (=> d!2321748 (= (matchRSpec!4459 r1!3349 (_1!37842 lt!2654738)) e!4523972)))

(declare-fun b!7605310 () Bool)

(declare-fun c!1402629 () Bool)

(assert (=> b!7605310 (= c!1402629 (is-ElementMatch!20184 r1!3349))))

(declare-fun e!4523973 () Bool)

(assert (=> b!7605310 (= e!4523973 e!4523971)))

(declare-fun bm!698273 () Bool)

(assert (=> bm!698273 (= call!698277 (Exists!4412 (ite c!1402628 lambda!467996 lambda!467997)))))

(declare-fun b!7605311 () Bool)

(assert (=> b!7605311 (= e!4523971 (= (_1!37842 lt!2654738) (Cons!72943 (c!1402607 r1!3349) Nil!72943)))))

(declare-fun b!7605312 () Bool)

(assert (=> b!7605312 (= e!4523972 e!4523973)))

(declare-fun res!3045261 () Bool)

(assert (=> b!7605312 (= res!3045261 (not (is-EmptyLang!20184 r1!3349)))))

(assert (=> b!7605312 (=> (not res!3045261) (not e!4523973))))

(assert (= (and d!2321748 c!1402631) b!7605304))

(assert (= (and d!2321748 (not c!1402631)) b!7605312))

(assert (= (and b!7605312 res!3045261) b!7605310))

(assert (= (and b!7605310 c!1402629) b!7605311))

(assert (= (and b!7605310 (not c!1402629)) b!7605309))

(assert (= (and b!7605309 c!1402630) b!7605306))

(assert (= (and b!7605309 (not c!1402630)) b!7605302))

(assert (= (and b!7605306 (not res!3045260)) b!7605308))

(assert (= (and b!7605302 c!1402628) b!7605303))

(assert (= (and b!7605302 (not c!1402628)) b!7605307))

(assert (= (and b!7605303 (not res!3045259)) b!7605305))

(assert (= (or b!7605305 b!7605307) bm!698273))

(assert (= (or b!7605304 b!7605303) bm!698272))

(declare-fun m!8146488 () Bool)

(assert (=> bm!698272 m!8146488))

(declare-fun m!8146490 () Bool)

(assert (=> b!7605306 m!8146490))

(declare-fun m!8146492 () Bool)

(assert (=> b!7605308 m!8146492))

(declare-fun m!8146494 () Bool)

(assert (=> bm!698273 m!8146494))

(assert (=> b!7605147 d!2321748))

(declare-fun b!7605341 () Bool)

(declare-fun e!4523994 () Bool)

(assert (=> b!7605341 (= e!4523994 (nullable!8813 r1!3349))))

(declare-fun b!7605342 () Bool)

(declare-fun e!4523992 () Bool)

(declare-fun e!4523991 () Bool)

(assert (=> b!7605342 (= e!4523992 e!4523991)))

(declare-fun c!1402638 () Bool)

(assert (=> b!7605342 (= c!1402638 (is-EmptyLang!20184 r1!3349))))

(declare-fun b!7605343 () Bool)

(declare-fun e!4523990 () Bool)

(declare-fun e!4523995 () Bool)

(assert (=> b!7605343 (= e!4523990 e!4523995)))

(declare-fun res!3045281 () Bool)

(assert (=> b!7605343 (=> (not res!3045281) (not e!4523995))))

(declare-fun lt!2654763 () Bool)

(assert (=> b!7605343 (= res!3045281 (not lt!2654763))))

(declare-fun b!7605344 () Bool)

(declare-fun derivativeStep!5837 (Regex!20184 C!40694) Regex!20184)

(declare-fun head!15637 (List!73067) C!40694)

(declare-fun tail!15177 (List!73067) List!73067)

(assert (=> b!7605344 (= e!4523994 (matchR!9747 (derivativeStep!5837 r1!3349 (head!15637 (_1!37842 lt!2654738))) (tail!15177 (_1!37842 lt!2654738))))))

(declare-fun b!7605345 () Bool)

(declare-fun res!3045278 () Bool)

(declare-fun e!4523989 () Bool)

(assert (=> b!7605345 (=> res!3045278 e!4523989)))

(assert (=> b!7605345 (= res!3045278 (not (isEmpty!41574 (tail!15177 (_1!37842 lt!2654738)))))))

(declare-fun b!7605346 () Bool)

(assert (=> b!7605346 (= e!4523991 (not lt!2654763))))

(declare-fun b!7605347 () Bool)

(declare-fun res!3045279 () Bool)

(declare-fun e!4523993 () Bool)

(assert (=> b!7605347 (=> (not res!3045279) (not e!4523993))))

(assert (=> b!7605347 (= res!3045279 (isEmpty!41574 (tail!15177 (_1!37842 lt!2654738))))))

(declare-fun b!7605348 () Bool)

(declare-fun call!698281 () Bool)

(assert (=> b!7605348 (= e!4523992 (= lt!2654763 call!698281))))

(declare-fun bm!698276 () Bool)

(assert (=> bm!698276 (= call!698281 (isEmpty!41574 (_1!37842 lt!2654738)))))

(declare-fun b!7605349 () Bool)

(assert (=> b!7605349 (= e!4523993 (= (head!15637 (_1!37842 lt!2654738)) (c!1402607 r1!3349)))))

(declare-fun b!7605350 () Bool)

(declare-fun res!3045282 () Bool)

(assert (=> b!7605350 (=> res!3045282 e!4523990)))

(assert (=> b!7605350 (= res!3045282 (not (is-ElementMatch!20184 r1!3349)))))

(assert (=> b!7605350 (= e!4523991 e!4523990)))

(declare-fun b!7605351 () Bool)

(declare-fun res!3045284 () Bool)

(assert (=> b!7605351 (=> (not res!3045284) (not e!4523993))))

(assert (=> b!7605351 (= res!3045284 (not call!698281))))

(declare-fun b!7605352 () Bool)

(assert (=> b!7605352 (= e!4523989 (not (= (head!15637 (_1!37842 lt!2654738)) (c!1402607 r1!3349))))))

(declare-fun b!7605353 () Bool)

(declare-fun res!3045285 () Bool)

(assert (=> b!7605353 (=> res!3045285 e!4523990)))

(assert (=> b!7605353 (= res!3045285 e!4523993)))

(declare-fun res!3045280 () Bool)

(assert (=> b!7605353 (=> (not res!3045280) (not e!4523993))))

(assert (=> b!7605353 (= res!3045280 lt!2654763)))

(declare-fun d!2321754 () Bool)

(assert (=> d!2321754 e!4523992))

(declare-fun c!1402639 () Bool)

(assert (=> d!2321754 (= c!1402639 (is-EmptyExpr!20184 r1!3349))))

(assert (=> d!2321754 (= lt!2654763 e!4523994)))

(declare-fun c!1402640 () Bool)

(assert (=> d!2321754 (= c!1402640 (isEmpty!41574 (_1!37842 lt!2654738)))))

(assert (=> d!2321754 (validRegex!10612 r1!3349)))

(assert (=> d!2321754 (= (matchR!9747 r1!3349 (_1!37842 lt!2654738)) lt!2654763)))

(declare-fun b!7605354 () Bool)

(assert (=> b!7605354 (= e!4523995 e!4523989)))

(declare-fun res!3045283 () Bool)

(assert (=> b!7605354 (=> res!3045283 e!4523989)))

(assert (=> b!7605354 (= res!3045283 call!698281)))

(assert (= (and d!2321754 c!1402640) b!7605341))

(assert (= (and d!2321754 (not c!1402640)) b!7605344))

(assert (= (and d!2321754 c!1402639) b!7605348))

(assert (= (and d!2321754 (not c!1402639)) b!7605342))

(assert (= (and b!7605342 c!1402638) b!7605346))

(assert (= (and b!7605342 (not c!1402638)) b!7605350))

(assert (= (and b!7605350 (not res!3045282)) b!7605353))

(assert (= (and b!7605353 res!3045280) b!7605351))

(assert (= (and b!7605351 res!3045284) b!7605347))

(assert (= (and b!7605347 res!3045279) b!7605349))

(assert (= (and b!7605353 (not res!3045285)) b!7605343))

(assert (= (and b!7605343 res!3045281) b!7605354))

(assert (= (and b!7605354 (not res!3045283)) b!7605345))

(assert (= (and b!7605345 (not res!3045278)) b!7605352))

(assert (= (or b!7605348 b!7605351 b!7605354) bm!698276))

(declare-fun m!8146498 () Bool)

(assert (=> b!7605349 m!8146498))

(declare-fun m!8146500 () Bool)

(assert (=> b!7605347 m!8146500))

(assert (=> b!7605347 m!8146500))

(declare-fun m!8146502 () Bool)

(assert (=> b!7605347 m!8146502))

(assert (=> d!2321754 m!8146488))

(assert (=> d!2321754 m!8146430))

(assert (=> bm!698276 m!8146488))

(declare-fun m!8146504 () Bool)

(assert (=> b!7605341 m!8146504))

(assert (=> b!7605352 m!8146498))

(assert (=> b!7605344 m!8146498))

(assert (=> b!7605344 m!8146498))

(declare-fun m!8146506 () Bool)

(assert (=> b!7605344 m!8146506))

(assert (=> b!7605344 m!8146500))

(assert (=> b!7605344 m!8146506))

(assert (=> b!7605344 m!8146500))

(declare-fun m!8146508 () Bool)

(assert (=> b!7605344 m!8146508))

(assert (=> b!7605345 m!8146500))

(assert (=> b!7605345 m!8146500))

(assert (=> b!7605345 m!8146502))

(assert (=> b!7605147 d!2321754))

(declare-fun d!2321758 () Bool)

(assert (=> d!2321758 (= (matchR!9747 r1!3349 (_1!37842 lt!2654738)) (matchRSpec!4459 r1!3349 (_1!37842 lt!2654738)))))

(declare-fun lt!2654766 () Unit!167248)

(declare-fun choose!58717 (Regex!20184 List!73067) Unit!167248)

(assert (=> d!2321758 (= lt!2654766 (choose!58717 r1!3349 (_1!37842 lt!2654738)))))

(assert (=> d!2321758 (validRegex!10612 r1!3349)))

(assert (=> d!2321758 (= (mainMatchTheorem!4453 r1!3349 (_1!37842 lt!2654738)) lt!2654766)))

(declare-fun bs!1942625 () Bool)

(assert (= bs!1942625 d!2321758))

(assert (=> bs!1942625 m!8146416))

(assert (=> bs!1942625 m!8146424))

(declare-fun m!8146510 () Bool)

(assert (=> bs!1942625 m!8146510))

(assert (=> bs!1942625 m!8146430))

(assert (=> b!7605147 d!2321758))

(declare-fun d!2321760 () Bool)

(declare-fun lt!2654769 () tuple2!69078)

(declare-fun dynLambda!29907 (Int tuple2!69078) Bool)

(assert (=> d!2321760 (dynLambda!29907 lambda!467981 lt!2654769)))

(declare-fun choose!58718 (Int) tuple2!69078)

(assert (=> d!2321760 (= lt!2654769 (choose!58718 lambda!467981))))

(assert (=> d!2321760 (Exists!4412 lambda!467981)))

(assert (=> d!2321760 (= (pickWitness!427 lambda!467981) lt!2654769)))

(declare-fun b_lambda!288947 () Bool)

(assert (=> (not b_lambda!288947) (not d!2321760)))

(declare-fun bs!1942626 () Bool)

(assert (= bs!1942626 d!2321760))

(declare-fun m!8146512 () Bool)

(assert (=> bs!1942626 m!8146512))

(declare-fun m!8146514 () Bool)

(assert (=> bs!1942626 m!8146514))

(assert (=> bs!1942626 m!8146426))

(assert (=> b!7605147 d!2321760))

(declare-fun bs!1942627 () Bool)

(declare-fun b!7605358 () Bool)

(assert (= bs!1942627 (and b!7605358 b!7605140)))

(declare-fun lambda!467998 () Int)

(assert (=> bs!1942627 (not (= lambda!467998 lambda!467980))))

(declare-fun bs!1942628 () Bool)

(assert (= bs!1942628 (and b!7605358 b!7605148)))

(assert (=> bs!1942628 (not (= lambda!467998 lambda!467981))))

(declare-fun bs!1942629 () Bool)

(assert (= bs!1942629 (and b!7605358 b!7605305)))

(assert (=> bs!1942629 (= (and (= (_2!37842 lt!2654738) (_1!37842 lt!2654738)) (= (reg!20513 r2!3249) (reg!20513 r1!3349)) (= r2!3249 r1!3349)) (= lambda!467998 lambda!467996))))

(declare-fun bs!1942630 () Bool)

(assert (= bs!1942630 (and b!7605358 b!7605307)))

(assert (=> bs!1942630 (not (= lambda!467998 lambda!467997))))

(assert (=> b!7605358 true))

(assert (=> b!7605358 true))

(declare-fun bs!1942631 () Bool)

(declare-fun b!7605360 () Bool)

(assert (= bs!1942631 (and b!7605360 b!7605358)))

(declare-fun lambda!467999 () Int)

(assert (=> bs!1942631 (not (= lambda!467999 lambda!467998))))

(declare-fun bs!1942632 () Bool)

(assert (= bs!1942632 (and b!7605360 b!7605140)))

(assert (=> bs!1942632 (not (= lambda!467999 lambda!467980))))

(declare-fun bs!1942633 () Bool)

(assert (= bs!1942633 (and b!7605360 b!7605148)))

(assert (=> bs!1942633 (= (and (= (_2!37842 lt!2654738) s!10235) (= (regOne!40880 r2!3249) r1!3349) (= (regTwo!40880 r2!3249) r2!3249)) (= lambda!467999 lambda!467981))))

(declare-fun bs!1942634 () Bool)

(assert (= bs!1942634 (and b!7605360 b!7605305)))

(assert (=> bs!1942634 (not (= lambda!467999 lambda!467996))))

(declare-fun bs!1942635 () Bool)

(assert (= bs!1942635 (and b!7605360 b!7605307)))

(assert (=> bs!1942635 (= (and (= (_2!37842 lt!2654738) (_1!37842 lt!2654738)) (= (regOne!40880 r2!3249) (regOne!40880 r1!3349)) (= (regTwo!40880 r2!3249) (regTwo!40880 r1!3349))) (= lambda!467999 lambda!467997))))

(assert (=> b!7605360 true))

(assert (=> b!7605360 true))

(declare-fun b!7605355 () Bool)

(declare-fun e!4523997 () Bool)

(declare-fun e!4524002 () Bool)

(assert (=> b!7605355 (= e!4523997 e!4524002)))

(declare-fun c!1402641 () Bool)

(assert (=> b!7605355 (= c!1402641 (is-Star!20184 r2!3249))))

(declare-fun b!7605356 () Bool)

(declare-fun res!3045286 () Bool)

(declare-fun e!4523996 () Bool)

(assert (=> b!7605356 (=> res!3045286 e!4523996)))

(declare-fun call!698283 () Bool)

(assert (=> b!7605356 (= res!3045286 call!698283)))

(assert (=> b!7605356 (= e!4524002 e!4523996)))

(declare-fun bm!698277 () Bool)

(assert (=> bm!698277 (= call!698283 (isEmpty!41574 (_2!37842 lt!2654738)))))

(declare-fun b!7605357 () Bool)

(declare-fun e!4524000 () Bool)

(assert (=> b!7605357 (= e!4524000 call!698283)))

(declare-fun call!698282 () Bool)

(assert (=> b!7605358 (= e!4523996 call!698282)))

(declare-fun b!7605359 () Bool)

(declare-fun e!4523998 () Bool)

(assert (=> b!7605359 (= e!4523997 e!4523998)))

(declare-fun res!3045287 () Bool)

(assert (=> b!7605359 (= res!3045287 (matchRSpec!4459 (regOne!40881 r2!3249) (_2!37842 lt!2654738)))))

(assert (=> b!7605359 (=> res!3045287 e!4523998)))

(assert (=> b!7605360 (= e!4524002 call!698282)))

(declare-fun b!7605361 () Bool)

(assert (=> b!7605361 (= e!4523998 (matchRSpec!4459 (regTwo!40881 r2!3249) (_2!37842 lt!2654738)))))

(declare-fun b!7605362 () Bool)

(declare-fun c!1402643 () Bool)

(assert (=> b!7605362 (= c!1402643 (is-Union!20184 r2!3249))))

(declare-fun e!4523999 () Bool)

(assert (=> b!7605362 (= e!4523999 e!4523997)))

(declare-fun d!2321762 () Bool)

(declare-fun c!1402644 () Bool)

(assert (=> d!2321762 (= c!1402644 (is-EmptyExpr!20184 r2!3249))))

(assert (=> d!2321762 (= (matchRSpec!4459 r2!3249 (_2!37842 lt!2654738)) e!4524000)))

(declare-fun b!7605363 () Bool)

(declare-fun c!1402642 () Bool)

(assert (=> b!7605363 (= c!1402642 (is-ElementMatch!20184 r2!3249))))

(declare-fun e!4524001 () Bool)

(assert (=> b!7605363 (= e!4524001 e!4523999)))

(declare-fun bm!698278 () Bool)

(assert (=> bm!698278 (= call!698282 (Exists!4412 (ite c!1402641 lambda!467998 lambda!467999)))))

(declare-fun b!7605364 () Bool)

(assert (=> b!7605364 (= e!4523999 (= (_2!37842 lt!2654738) (Cons!72943 (c!1402607 r2!3249) Nil!72943)))))

(declare-fun b!7605365 () Bool)

(assert (=> b!7605365 (= e!4524000 e!4524001)))

(declare-fun res!3045288 () Bool)

(assert (=> b!7605365 (= res!3045288 (not (is-EmptyLang!20184 r2!3249)))))

(assert (=> b!7605365 (=> (not res!3045288) (not e!4524001))))

(assert (= (and d!2321762 c!1402644) b!7605357))

(assert (= (and d!2321762 (not c!1402644)) b!7605365))

(assert (= (and b!7605365 res!3045288) b!7605363))

(assert (= (and b!7605363 c!1402642) b!7605364))

(assert (= (and b!7605363 (not c!1402642)) b!7605362))

(assert (= (and b!7605362 c!1402643) b!7605359))

(assert (= (and b!7605362 (not c!1402643)) b!7605355))

(assert (= (and b!7605359 (not res!3045287)) b!7605361))

(assert (= (and b!7605355 c!1402641) b!7605356))

(assert (= (and b!7605355 (not c!1402641)) b!7605360))

(assert (= (and b!7605356 (not res!3045286)) b!7605358))

(assert (= (or b!7605358 b!7605360) bm!698278))

(assert (= (or b!7605357 b!7605356) bm!698277))

(declare-fun m!8146516 () Bool)

(assert (=> bm!698277 m!8146516))

(declare-fun m!8146518 () Bool)

(assert (=> b!7605359 m!8146518))

(declare-fun m!8146520 () Bool)

(assert (=> b!7605361 m!8146520))

(declare-fun m!8146522 () Bool)

(assert (=> bm!698278 m!8146522))

(assert (=> b!7605147 d!2321762))

(declare-fun b!7605372 () Bool)

(declare-fun e!4524010 () Bool)

(assert (=> b!7605372 (= e!4524010 (nullable!8813 r2!3249))))

(declare-fun b!7605373 () Bool)

(declare-fun e!4524008 () Bool)

(declare-fun e!4524007 () Bool)

(assert (=> b!7605373 (= e!4524008 e!4524007)))

(declare-fun c!1402647 () Bool)

(assert (=> b!7605373 (= c!1402647 (is-EmptyLang!20184 r2!3249))))

(declare-fun b!7605374 () Bool)

(declare-fun e!4524006 () Bool)

(declare-fun e!4524011 () Bool)

(assert (=> b!7605374 (= e!4524006 e!4524011)))

(declare-fun res!3045292 () Bool)

(assert (=> b!7605374 (=> (not res!3045292) (not e!4524011))))

(declare-fun lt!2654772 () Bool)

(assert (=> b!7605374 (= res!3045292 (not lt!2654772))))

(declare-fun b!7605375 () Bool)

(assert (=> b!7605375 (= e!4524010 (matchR!9747 (derivativeStep!5837 r2!3249 (head!15637 (_2!37842 lt!2654738))) (tail!15177 (_2!37842 lt!2654738))))))

(declare-fun b!7605376 () Bool)

(declare-fun res!3045289 () Bool)

(declare-fun e!4524005 () Bool)

(assert (=> b!7605376 (=> res!3045289 e!4524005)))

(assert (=> b!7605376 (= res!3045289 (not (isEmpty!41574 (tail!15177 (_2!37842 lt!2654738)))))))

(declare-fun b!7605377 () Bool)

(assert (=> b!7605377 (= e!4524007 (not lt!2654772))))

(declare-fun b!7605378 () Bool)

(declare-fun res!3045290 () Bool)

(declare-fun e!4524009 () Bool)

(assert (=> b!7605378 (=> (not res!3045290) (not e!4524009))))

(assert (=> b!7605378 (= res!3045290 (isEmpty!41574 (tail!15177 (_2!37842 lt!2654738))))))

(declare-fun b!7605379 () Bool)

(declare-fun call!698284 () Bool)

(assert (=> b!7605379 (= e!4524008 (= lt!2654772 call!698284))))

(declare-fun bm!698279 () Bool)

(assert (=> bm!698279 (= call!698284 (isEmpty!41574 (_2!37842 lt!2654738)))))

(declare-fun b!7605380 () Bool)

(assert (=> b!7605380 (= e!4524009 (= (head!15637 (_2!37842 lt!2654738)) (c!1402607 r2!3249)))))

(declare-fun b!7605381 () Bool)

(declare-fun res!3045293 () Bool)

(assert (=> b!7605381 (=> res!3045293 e!4524006)))

(assert (=> b!7605381 (= res!3045293 (not (is-ElementMatch!20184 r2!3249)))))

(assert (=> b!7605381 (= e!4524007 e!4524006)))

(declare-fun b!7605382 () Bool)

(declare-fun res!3045295 () Bool)

(assert (=> b!7605382 (=> (not res!3045295) (not e!4524009))))

(assert (=> b!7605382 (= res!3045295 (not call!698284))))

(declare-fun b!7605383 () Bool)

(assert (=> b!7605383 (= e!4524005 (not (= (head!15637 (_2!37842 lt!2654738)) (c!1402607 r2!3249))))))

(declare-fun b!7605384 () Bool)

(declare-fun res!3045296 () Bool)

(assert (=> b!7605384 (=> res!3045296 e!4524006)))

(assert (=> b!7605384 (= res!3045296 e!4524009)))

(declare-fun res!3045291 () Bool)

(assert (=> b!7605384 (=> (not res!3045291) (not e!4524009))))

(assert (=> b!7605384 (= res!3045291 lt!2654772)))

(declare-fun d!2321764 () Bool)

(assert (=> d!2321764 e!4524008))

(declare-fun c!1402648 () Bool)

(assert (=> d!2321764 (= c!1402648 (is-EmptyExpr!20184 r2!3249))))

(assert (=> d!2321764 (= lt!2654772 e!4524010)))

(declare-fun c!1402649 () Bool)

(assert (=> d!2321764 (= c!1402649 (isEmpty!41574 (_2!37842 lt!2654738)))))

(assert (=> d!2321764 (validRegex!10612 r2!3249)))

(assert (=> d!2321764 (= (matchR!9747 r2!3249 (_2!37842 lt!2654738)) lt!2654772)))

(declare-fun b!7605385 () Bool)

(assert (=> b!7605385 (= e!4524011 e!4524005)))

(declare-fun res!3045294 () Bool)

(assert (=> b!7605385 (=> res!3045294 e!4524005)))

(assert (=> b!7605385 (= res!3045294 call!698284)))

(assert (= (and d!2321764 c!1402649) b!7605372))

(assert (= (and d!2321764 (not c!1402649)) b!7605375))

(assert (= (and d!2321764 c!1402648) b!7605379))

(assert (= (and d!2321764 (not c!1402648)) b!7605373))

(assert (= (and b!7605373 c!1402647) b!7605377))

(assert (= (and b!7605373 (not c!1402647)) b!7605381))

(assert (= (and b!7605381 (not res!3045293)) b!7605384))

(assert (= (and b!7605384 res!3045291) b!7605382))

(assert (= (and b!7605382 res!3045295) b!7605378))

(assert (= (and b!7605378 res!3045290) b!7605380))

(assert (= (and b!7605384 (not res!3045296)) b!7605374))

(assert (= (and b!7605374 res!3045292) b!7605385))

(assert (= (and b!7605385 (not res!3045294)) b!7605376))

(assert (= (and b!7605376 (not res!3045289)) b!7605383))

(assert (= (or b!7605379 b!7605382 b!7605385) bm!698279))

(declare-fun m!8146524 () Bool)

(assert (=> b!7605380 m!8146524))

(declare-fun m!8146526 () Bool)

(assert (=> b!7605378 m!8146526))

(assert (=> b!7605378 m!8146526))

(declare-fun m!8146528 () Bool)

(assert (=> b!7605378 m!8146528))

(assert (=> d!2321764 m!8146516))

(assert (=> d!2321764 m!8146432))

(assert (=> bm!698279 m!8146516))

(declare-fun m!8146530 () Bool)

(assert (=> b!7605372 m!8146530))

(assert (=> b!7605383 m!8146524))

(assert (=> b!7605375 m!8146524))

(assert (=> b!7605375 m!8146524))

(declare-fun m!8146532 () Bool)

(assert (=> b!7605375 m!8146532))

(assert (=> b!7605375 m!8146526))

(assert (=> b!7605375 m!8146532))

(assert (=> b!7605375 m!8146526))

(declare-fun m!8146534 () Bool)

(assert (=> b!7605375 m!8146534))

(assert (=> b!7605376 m!8146526))

(assert (=> b!7605376 m!8146526))

(assert (=> b!7605376 m!8146528))

(assert (=> b!7605147 d!2321764))

(declare-fun b!7605418 () Bool)

(declare-fun res!3045318 () Bool)

(declare-fun e!4524028 () Bool)

(assert (=> b!7605418 (=> (not res!3045318) (not e!4524028))))

(declare-fun lt!2654775 () List!73067)

(declare-fun size!42519 (List!73067) Int)

(assert (=> b!7605418 (= res!3045318 (= (size!42519 lt!2654775) (+ (size!42519 (_1!37842 lt!2654738)) (size!42519 (_2!37842 lt!2654738)))))))

(declare-fun b!7605416 () Bool)

(declare-fun e!4524029 () List!73067)

(assert (=> b!7605416 (= e!4524029 (_2!37842 lt!2654738))))

(declare-fun b!7605417 () Bool)

(assert (=> b!7605417 (= e!4524029 (Cons!72943 (h!79391 (_1!37842 lt!2654738)) (++!17582 (t!387802 (_1!37842 lt!2654738)) (_2!37842 lt!2654738))))))

(declare-fun b!7605419 () Bool)

(assert (=> b!7605419 (= e!4524028 (or (not (= (_2!37842 lt!2654738) Nil!72943)) (= lt!2654775 (_1!37842 lt!2654738))))))

(declare-fun d!2321766 () Bool)

(assert (=> d!2321766 e!4524028))

(declare-fun res!3045317 () Bool)

(assert (=> d!2321766 (=> (not res!3045317) (not e!4524028))))

(declare-fun content!15426 (List!73067) (Set C!40694))

(assert (=> d!2321766 (= res!3045317 (= (content!15426 lt!2654775) (set.union (content!15426 (_1!37842 lt!2654738)) (content!15426 (_2!37842 lt!2654738)))))))

(assert (=> d!2321766 (= lt!2654775 e!4524029)))

(declare-fun c!1402656 () Bool)

(assert (=> d!2321766 (= c!1402656 (is-Nil!72943 (_1!37842 lt!2654738)))))

(assert (=> d!2321766 (= (++!17582 (_1!37842 lt!2654738) (_2!37842 lt!2654738)) lt!2654775)))

(assert (= (and d!2321766 c!1402656) b!7605416))

(assert (= (and d!2321766 (not c!1402656)) b!7605417))

(assert (= (and d!2321766 res!3045317) b!7605418))

(assert (= (and b!7605418 res!3045318) b!7605419))

(declare-fun m!8146536 () Bool)

(assert (=> b!7605418 m!8146536))

(declare-fun m!8146538 () Bool)

(assert (=> b!7605418 m!8146538))

(declare-fun m!8146540 () Bool)

(assert (=> b!7605418 m!8146540))

(declare-fun m!8146542 () Bool)

(assert (=> b!7605417 m!8146542))

(declare-fun m!8146544 () Bool)

(assert (=> d!2321766 m!8146544))

(declare-fun m!8146546 () Bool)

(assert (=> d!2321766 m!8146546))

(declare-fun m!8146548 () Bool)

(assert (=> d!2321766 m!8146548))

(assert (=> b!7605147 d!2321766))

(declare-fun d!2321768 () Bool)

(assert (=> d!2321768 (= (matchR!9747 r2!3249 (_2!37842 lt!2654738)) (matchRSpec!4459 r2!3249 (_2!37842 lt!2654738)))))

(declare-fun lt!2654776 () Unit!167248)

(assert (=> d!2321768 (= lt!2654776 (choose!58717 r2!3249 (_2!37842 lt!2654738)))))

(assert (=> d!2321768 (validRegex!10612 r2!3249)))

(assert (=> d!2321768 (= (mainMatchTheorem!4453 r2!3249 (_2!37842 lt!2654738)) lt!2654776)))

(declare-fun bs!1942636 () Bool)

(assert (= bs!1942636 d!2321768))

(assert (=> bs!1942636 m!8146418))

(assert (=> bs!1942636 m!8146410))

(declare-fun m!8146550 () Bool)

(assert (=> bs!1942636 m!8146550))

(assert (=> bs!1942636 m!8146432))

(assert (=> b!7605147 d!2321768))

(assert (=> b!7605140 d!2321742))

(declare-fun e!4524032 () Bool)

(assert (=> b!7605150 (= tp!2218006 e!4524032)))

(declare-fun b!7605433 () Bool)

(declare-fun tp!2218055 () Bool)

(declare-fun tp!2218054 () Bool)

(assert (=> b!7605433 (= e!4524032 (and tp!2218055 tp!2218054))))

(declare-fun b!7605430 () Bool)

(assert (=> b!7605430 (= e!4524032 tp_is_empty!50723)))

(declare-fun b!7605432 () Bool)

(declare-fun tp!2218057 () Bool)

(assert (=> b!7605432 (= e!4524032 tp!2218057)))

(declare-fun b!7605431 () Bool)

(declare-fun tp!2218058 () Bool)

(declare-fun tp!2218056 () Bool)

(assert (=> b!7605431 (= e!4524032 (and tp!2218058 tp!2218056))))

(assert (= (and b!7605150 (is-ElementMatch!20184 (regOne!40881 r1!3349))) b!7605430))

(assert (= (and b!7605150 (is-Concat!29029 (regOne!40881 r1!3349))) b!7605431))

(assert (= (and b!7605150 (is-Star!20184 (regOne!40881 r1!3349))) b!7605432))

(assert (= (and b!7605150 (is-Union!20184 (regOne!40881 r1!3349))) b!7605433))

(declare-fun e!4524033 () Bool)

(assert (=> b!7605150 (= tp!2218002 e!4524033)))

(declare-fun b!7605437 () Bool)

(declare-fun tp!2218060 () Bool)

(declare-fun tp!2218059 () Bool)

(assert (=> b!7605437 (= e!4524033 (and tp!2218060 tp!2218059))))

(declare-fun b!7605434 () Bool)

(assert (=> b!7605434 (= e!4524033 tp_is_empty!50723)))

(declare-fun b!7605436 () Bool)

(declare-fun tp!2218062 () Bool)

(assert (=> b!7605436 (= e!4524033 tp!2218062)))

(declare-fun b!7605435 () Bool)

(declare-fun tp!2218063 () Bool)

(declare-fun tp!2218061 () Bool)

(assert (=> b!7605435 (= e!4524033 (and tp!2218063 tp!2218061))))

(assert (= (and b!7605150 (is-ElementMatch!20184 (regTwo!40881 r1!3349))) b!7605434))

(assert (= (and b!7605150 (is-Concat!29029 (regTwo!40881 r1!3349))) b!7605435))

(assert (= (and b!7605150 (is-Star!20184 (regTwo!40881 r1!3349))) b!7605436))

(assert (= (and b!7605150 (is-Union!20184 (regTwo!40881 r1!3349))) b!7605437))

(declare-fun e!4524034 () Bool)

(assert (=> b!7605145 (= tp!2218003 e!4524034)))

(declare-fun b!7605441 () Bool)

(declare-fun tp!2218065 () Bool)

(declare-fun tp!2218064 () Bool)

(assert (=> b!7605441 (= e!4524034 (and tp!2218065 tp!2218064))))

(declare-fun b!7605438 () Bool)

(assert (=> b!7605438 (= e!4524034 tp_is_empty!50723)))

(declare-fun b!7605440 () Bool)

(declare-fun tp!2218067 () Bool)

(assert (=> b!7605440 (= e!4524034 tp!2218067)))

(declare-fun b!7605439 () Bool)

(declare-fun tp!2218068 () Bool)

(declare-fun tp!2218066 () Bool)

(assert (=> b!7605439 (= e!4524034 (and tp!2218068 tp!2218066))))

(assert (= (and b!7605145 (is-ElementMatch!20184 (regOne!40881 r2!3249))) b!7605438))

(assert (= (and b!7605145 (is-Concat!29029 (regOne!40881 r2!3249))) b!7605439))

(assert (= (and b!7605145 (is-Star!20184 (regOne!40881 r2!3249))) b!7605440))

(assert (= (and b!7605145 (is-Union!20184 (regOne!40881 r2!3249))) b!7605441))

(declare-fun e!4524035 () Bool)

(assert (=> b!7605145 (= tp!2218004 e!4524035)))

(declare-fun b!7605445 () Bool)

(declare-fun tp!2218070 () Bool)

(declare-fun tp!2218069 () Bool)

(assert (=> b!7605445 (= e!4524035 (and tp!2218070 tp!2218069))))

(declare-fun b!7605442 () Bool)

(assert (=> b!7605442 (= e!4524035 tp_is_empty!50723)))

(declare-fun b!7605444 () Bool)

(declare-fun tp!2218072 () Bool)

(assert (=> b!7605444 (= e!4524035 tp!2218072)))

(declare-fun b!7605443 () Bool)

(declare-fun tp!2218073 () Bool)

(declare-fun tp!2218071 () Bool)

(assert (=> b!7605443 (= e!4524035 (and tp!2218073 tp!2218071))))

(assert (= (and b!7605145 (is-ElementMatch!20184 (regTwo!40881 r2!3249))) b!7605442))

(assert (= (and b!7605145 (is-Concat!29029 (regTwo!40881 r2!3249))) b!7605443))

(assert (= (and b!7605145 (is-Star!20184 (regTwo!40881 r2!3249))) b!7605444))

(assert (= (and b!7605145 (is-Union!20184 (regTwo!40881 r2!3249))) b!7605445))

(declare-fun b!7605450 () Bool)

(declare-fun e!4524038 () Bool)

(declare-fun tp!2218076 () Bool)

(assert (=> b!7605450 (= e!4524038 (and tp_is_empty!50723 tp!2218076))))

(assert (=> b!7605143 (= tp!2218007 e!4524038)))

(assert (= (and b!7605143 (is-Cons!72943 (t!387802 s!10235))) b!7605450))

(declare-fun e!4524039 () Bool)

(assert (=> b!7605138 (= tp!2218000 e!4524039)))

(declare-fun b!7605454 () Bool)

(declare-fun tp!2218078 () Bool)

(declare-fun tp!2218077 () Bool)

(assert (=> b!7605454 (= e!4524039 (and tp!2218078 tp!2218077))))

(declare-fun b!7605451 () Bool)

(assert (=> b!7605451 (= e!4524039 tp_is_empty!50723)))

(declare-fun b!7605453 () Bool)

(declare-fun tp!2218080 () Bool)

(assert (=> b!7605453 (= e!4524039 tp!2218080)))

(declare-fun b!7605452 () Bool)

(declare-fun tp!2218081 () Bool)

(declare-fun tp!2218079 () Bool)

(assert (=> b!7605452 (= e!4524039 (and tp!2218081 tp!2218079))))

(assert (= (and b!7605138 (is-ElementMatch!20184 (regOne!40880 r2!3249))) b!7605451))

(assert (= (and b!7605138 (is-Concat!29029 (regOne!40880 r2!3249))) b!7605452))

(assert (= (and b!7605138 (is-Star!20184 (regOne!40880 r2!3249))) b!7605453))

(assert (= (and b!7605138 (is-Union!20184 (regOne!40880 r2!3249))) b!7605454))

(declare-fun e!4524040 () Bool)

(assert (=> b!7605138 (= tp!2218008 e!4524040)))

(declare-fun b!7605458 () Bool)

(declare-fun tp!2218083 () Bool)

(declare-fun tp!2218082 () Bool)

(assert (=> b!7605458 (= e!4524040 (and tp!2218083 tp!2218082))))

(declare-fun b!7605455 () Bool)

(assert (=> b!7605455 (= e!4524040 tp_is_empty!50723)))

(declare-fun b!7605457 () Bool)

(declare-fun tp!2218085 () Bool)

(assert (=> b!7605457 (= e!4524040 tp!2218085)))

(declare-fun b!7605456 () Bool)

(declare-fun tp!2218086 () Bool)

(declare-fun tp!2218084 () Bool)

(assert (=> b!7605456 (= e!4524040 (and tp!2218086 tp!2218084))))

(assert (= (and b!7605138 (is-ElementMatch!20184 (regTwo!40880 r2!3249))) b!7605455))

(assert (= (and b!7605138 (is-Concat!29029 (regTwo!40880 r2!3249))) b!7605456))

(assert (= (and b!7605138 (is-Star!20184 (regTwo!40880 r2!3249))) b!7605457))

(assert (= (and b!7605138 (is-Union!20184 (regTwo!40880 r2!3249))) b!7605458))

(declare-fun e!4524041 () Bool)

(assert (=> b!7605149 (= tp!2218001 e!4524041)))

(declare-fun b!7605462 () Bool)

(declare-fun tp!2218088 () Bool)

(declare-fun tp!2218087 () Bool)

(assert (=> b!7605462 (= e!4524041 (and tp!2218088 tp!2218087))))

(declare-fun b!7605459 () Bool)

(assert (=> b!7605459 (= e!4524041 tp_is_empty!50723)))

(declare-fun b!7605461 () Bool)

(declare-fun tp!2218090 () Bool)

(assert (=> b!7605461 (= e!4524041 tp!2218090)))

(declare-fun b!7605460 () Bool)

(declare-fun tp!2218091 () Bool)

(declare-fun tp!2218089 () Bool)

(assert (=> b!7605460 (= e!4524041 (and tp!2218091 tp!2218089))))

(assert (= (and b!7605149 (is-ElementMatch!20184 (reg!20513 r2!3249))) b!7605459))

(assert (= (and b!7605149 (is-Concat!29029 (reg!20513 r2!3249))) b!7605460))

(assert (= (and b!7605149 (is-Star!20184 (reg!20513 r2!3249))) b!7605461))

(assert (= (and b!7605149 (is-Union!20184 (reg!20513 r2!3249))) b!7605462))

(declare-fun e!4524042 () Bool)

(assert (=> b!7605151 (= tp!2218010 e!4524042)))

(declare-fun b!7605466 () Bool)

(declare-fun tp!2218093 () Bool)

(declare-fun tp!2218092 () Bool)

(assert (=> b!7605466 (= e!4524042 (and tp!2218093 tp!2218092))))

(declare-fun b!7605463 () Bool)

(assert (=> b!7605463 (= e!4524042 tp_is_empty!50723)))

(declare-fun b!7605465 () Bool)

(declare-fun tp!2218095 () Bool)

(assert (=> b!7605465 (= e!4524042 tp!2218095)))

(declare-fun b!7605464 () Bool)

(declare-fun tp!2218096 () Bool)

(declare-fun tp!2218094 () Bool)

(assert (=> b!7605464 (= e!4524042 (and tp!2218096 tp!2218094))))

(assert (= (and b!7605151 (is-ElementMatch!20184 (reg!20513 r1!3349))) b!7605463))

(assert (= (and b!7605151 (is-Concat!29029 (reg!20513 r1!3349))) b!7605464))

(assert (= (and b!7605151 (is-Star!20184 (reg!20513 r1!3349))) b!7605465))

(assert (= (and b!7605151 (is-Union!20184 (reg!20513 r1!3349))) b!7605466))

(declare-fun e!4524043 () Bool)

(assert (=> b!7605146 (= tp!2218005 e!4524043)))

(declare-fun b!7605470 () Bool)

(declare-fun tp!2218098 () Bool)

(declare-fun tp!2218097 () Bool)

(assert (=> b!7605470 (= e!4524043 (and tp!2218098 tp!2218097))))

(declare-fun b!7605467 () Bool)

(assert (=> b!7605467 (= e!4524043 tp_is_empty!50723)))

(declare-fun b!7605469 () Bool)

(declare-fun tp!2218100 () Bool)

(assert (=> b!7605469 (= e!4524043 tp!2218100)))

(declare-fun b!7605468 () Bool)

(declare-fun tp!2218101 () Bool)

(declare-fun tp!2218099 () Bool)

(assert (=> b!7605468 (= e!4524043 (and tp!2218101 tp!2218099))))

(assert (= (and b!7605146 (is-ElementMatch!20184 (regOne!40880 r1!3349))) b!7605467))

(assert (= (and b!7605146 (is-Concat!29029 (regOne!40880 r1!3349))) b!7605468))

(assert (= (and b!7605146 (is-Star!20184 (regOne!40880 r1!3349))) b!7605469))

(assert (= (and b!7605146 (is-Union!20184 (regOne!40880 r1!3349))) b!7605470))

(declare-fun e!4524044 () Bool)

(assert (=> b!7605146 (= tp!2218009 e!4524044)))

(declare-fun b!7605474 () Bool)

(declare-fun tp!2218103 () Bool)

(declare-fun tp!2218102 () Bool)

(assert (=> b!7605474 (= e!4524044 (and tp!2218103 tp!2218102))))

(declare-fun b!7605471 () Bool)

(assert (=> b!7605471 (= e!4524044 tp_is_empty!50723)))

(declare-fun b!7605473 () Bool)

(declare-fun tp!2218105 () Bool)

(assert (=> b!7605473 (= e!4524044 tp!2218105)))

(declare-fun b!7605472 () Bool)

(declare-fun tp!2218106 () Bool)

(declare-fun tp!2218104 () Bool)

(assert (=> b!7605472 (= e!4524044 (and tp!2218106 tp!2218104))))

(assert (= (and b!7605146 (is-ElementMatch!20184 (regTwo!40880 r1!3349))) b!7605471))

(assert (= (and b!7605146 (is-Concat!29029 (regTwo!40880 r1!3349))) b!7605472))

(assert (= (and b!7605146 (is-Star!20184 (regTwo!40880 r1!3349))) b!7605473))

(assert (= (and b!7605146 (is-Union!20184 (regTwo!40880 r1!3349))) b!7605474))

(declare-fun b_lambda!288949 () Bool)

(assert (= b_lambda!288947 (or b!7605148 b_lambda!288949)))

(declare-fun bs!1942637 () Bool)

(declare-fun d!2321770 () Bool)

(assert (= bs!1942637 (and d!2321770 b!7605148)))

(declare-fun res!3045319 () Bool)

(declare-fun e!4524045 () Bool)

(assert (=> bs!1942637 (=> (not res!3045319) (not e!4524045))))

(assert (=> bs!1942637 (= res!3045319 (= (++!17582 (_1!37842 lt!2654769) (_2!37842 lt!2654769)) s!10235))))

(assert (=> bs!1942637 (= (dynLambda!29907 lambda!467981 lt!2654769) e!4524045)))

(declare-fun b!7605475 () Bool)

(declare-fun res!3045320 () Bool)

(assert (=> b!7605475 (=> (not res!3045320) (not e!4524045))))

(assert (=> b!7605475 (= res!3045320 (matchRSpec!4459 r1!3349 (_1!37842 lt!2654769)))))

(declare-fun b!7605476 () Bool)

(assert (=> b!7605476 (= e!4524045 (matchRSpec!4459 r2!3249 (_2!37842 lt!2654769)))))

(assert (= (and bs!1942637 res!3045319) b!7605475))

(assert (= (and b!7605475 res!3045320) b!7605476))

(declare-fun m!8146552 () Bool)

(assert (=> bs!1942637 m!8146552))

(declare-fun m!8146554 () Bool)

(assert (=> b!7605475 m!8146554))

(declare-fun m!8146556 () Bool)

(assert (=> b!7605476 m!8146556))

(assert (=> d!2321760 d!2321770))

(push 1)

(assert (not b!7605457))

(assert (not d!2321742))

(assert (not d!2321768))

(assert (not bm!698267))

(assert (not b_lambda!288949))

(assert (not d!2321764))

(assert (not b!7605450))

(assert (not b!7605431))

(assert (not b!7605417))

(assert (not b!7605468))

(assert (not b!7605341))

(assert (not b!7605462))

(assert (not b!7605246))

(assert (not d!2321744))

(assert (not b!7605441))

(assert (not b!7605461))

(assert (not b!7605359))

(assert (not bs!1942637))

(assert (not b!7605474))

(assert (not b!7605443))

(assert (not b!7605473))

(assert (not b!7605440))

(assert (not d!2321754))

(assert (not b!7605344))

(assert (not b!7605383))

(assert (not b!7605255))

(assert (not b!7605472))

(assert (not b!7605465))

(assert (not bm!698272))

(assert (not b!7605469))

(assert (not b!7605375))

(assert (not b!7605349))

(assert (not bm!698279))

(assert (not b!7605470))

(assert (not b!7605437))

(assert (not b!7605453))

(assert (not b!7605466))

(assert (not bm!698276))

(assert (not b!7605454))

(assert (not d!2321758))

(assert (not b!7605372))

(assert (not b!7605475))

(assert (not b!7605433))

(assert (not b!7605444))

(assert (not b!7605345))

(assert (not b!7605435))

(assert (not b!7605347))

(assert (not bm!698277))

(assert (not b!7605476))

(assert (not b!7605418))

(assert (not bm!698262))

(assert (not bm!698264))

(assert (not d!2321766))

(assert (not b!7605376))

(assert (not b!7605361))

(assert (not bm!698265))

(assert (not b!7605436))

(assert (not b!7605452))

(assert (not d!2321760))

(assert (not b!7605456))

(assert (not b!7605308))

(assert (not b!7605439))

(assert (not b!7605380))

(assert (not bm!698273))

(assert tp_is_empty!50723)

(assert (not b!7605378))

(assert (not b!7605460))

(assert (not bm!698278))

(assert (not b!7605445))

(assert (not b!7605306))

(assert (not b!7605352))

(assert (not b!7605432))

(assert (not b!7605464))

(assert (not b!7605458))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

