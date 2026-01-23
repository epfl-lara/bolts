; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!291888 () Bool)

(assert start!291888)

(declare-fun b!3056168 () Bool)

(declare-fun e!1914176 () Bool)

(declare-fun e!1914175 () Bool)

(assert (=> b!3056168 (= e!1914176 e!1914175)))

(declare-fun res!1255075 () Bool)

(assert (=> b!3056168 (=> res!1255075 e!1914175)))

(declare-datatypes ((C!19132 0))(
  ( (C!19133 (val!11602 Int)) )
))
(declare-datatypes ((Regex!9473 0))(
  ( (ElementMatch!9473 (c!506895 C!19132)) (Concat!14794 (regOne!19458 Regex!9473) (regTwo!19458 Regex!9473)) (EmptyExpr!9473) (Star!9473 (reg!9802 Regex!9473)) (EmptyLang!9473) (Union!9473 (regOne!19459 Regex!9473) (regTwo!19459 Regex!9473)) )
))
(declare-fun lt!1049119 () Regex!9473)

(declare-fun isEmptyLang!524 (Regex!9473) Bool)

(assert (=> b!3056168 (= res!1255075 (isEmptyLang!524 lt!1049119))))

(declare-fun lt!1049120 () Regex!9473)

(declare-fun r!17423 () Regex!9473)

(declare-fun simplify!428 (Regex!9473) Regex!9473)

(assert (=> b!3056168 (= lt!1049120 (simplify!428 (regTwo!19458 r!17423)))))

(assert (=> b!3056168 (= lt!1049119 (simplify!428 (regOne!19458 r!17423)))))

(declare-fun res!1255076 () Bool)

(declare-fun e!1914179 () Bool)

(assert (=> start!291888 (=> (not res!1255076) (not e!1914179))))

(declare-fun validRegex!4206 (Regex!9473) Bool)

(assert (=> start!291888 (= res!1255076 (validRegex!4206 r!17423))))

(assert (=> start!291888 e!1914179))

(declare-fun e!1914177 () Bool)

(assert (=> start!291888 e!1914177))

(declare-fun e!1914178 () Bool)

(assert (=> start!291888 e!1914178))

(declare-fun b!3056169 () Bool)

(declare-fun tp!966541 () Bool)

(declare-fun tp!966543 () Bool)

(assert (=> b!3056169 (= e!1914177 (and tp!966541 tp!966543))))

(declare-fun b!3056170 () Bool)

(declare-fun res!1255074 () Bool)

(assert (=> b!3056170 (=> res!1255074 e!1914175)))

(assert (=> b!3056170 (= res!1255074 (not (isEmptyLang!524 lt!1049120)))))

(declare-fun b!3056171 () Bool)

(assert (=> b!3056171 (= e!1914175 (validRegex!4206 (regTwo!19458 r!17423)))))

(declare-fun b!3056172 () Bool)

(assert (=> b!3056172 (= e!1914179 (not e!1914176))))

(declare-fun res!1255072 () Bool)

(assert (=> b!3056172 (=> res!1255072 e!1914176)))

(declare-fun lt!1049117 () Bool)

(get-info :version)

(assert (=> b!3056172 (= res!1255072 (or lt!1049117 (not ((_ is Concat!14794) r!17423))))))

(declare-datatypes ((List!35338 0))(
  ( (Nil!35214) (Cons!35214 (h!40634 C!19132) (t!234403 List!35338)) )
))
(declare-fun s!11993 () List!35338)

(declare-fun matchRSpec!1610 (Regex!9473 List!35338) Bool)

(assert (=> b!3056172 (= lt!1049117 (matchRSpec!1610 r!17423 s!11993))))

(declare-fun matchR!4355 (Regex!9473 List!35338) Bool)

(assert (=> b!3056172 (= lt!1049117 (matchR!4355 r!17423 s!11993))))

(declare-datatypes ((Unit!49385 0))(
  ( (Unit!49386) )
))
(declare-fun lt!1049118 () Unit!49385)

(declare-fun mainMatchTheorem!1610 (Regex!9473 List!35338) Unit!49385)

(assert (=> b!3056172 (= lt!1049118 (mainMatchTheorem!1610 r!17423 s!11993))))

(declare-fun b!3056173 () Bool)

(declare-fun tp_is_empty!16509 () Bool)

(declare-fun tp!966542 () Bool)

(assert (=> b!3056173 (= e!1914178 (and tp_is_empty!16509 tp!966542))))

(declare-fun b!3056174 () Bool)

(assert (=> b!3056174 (= e!1914177 tp_is_empty!16509)))

(declare-fun b!3056175 () Bool)

(declare-fun res!1255073 () Bool)

(assert (=> b!3056175 (=> res!1255073 e!1914176)))

(declare-fun isEmpty!19529 (List!35338) Bool)

(assert (=> b!3056175 (= res!1255073 (isEmpty!19529 s!11993))))

(declare-fun b!3056176 () Bool)

(declare-fun tp!966545 () Bool)

(assert (=> b!3056176 (= e!1914177 tp!966545)))

(declare-fun b!3056177 () Bool)

(declare-fun tp!966544 () Bool)

(declare-fun tp!966540 () Bool)

(assert (=> b!3056177 (= e!1914177 (and tp!966544 tp!966540))))

(assert (= (and start!291888 res!1255076) b!3056172))

(assert (= (and b!3056172 (not res!1255072)) b!3056175))

(assert (= (and b!3056175 (not res!1255073)) b!3056168))

(assert (= (and b!3056168 (not res!1255075)) b!3056170))

(assert (= (and b!3056170 (not res!1255074)) b!3056171))

(assert (= (and start!291888 ((_ is ElementMatch!9473) r!17423)) b!3056174))

(assert (= (and start!291888 ((_ is Concat!14794) r!17423)) b!3056169))

(assert (= (and start!291888 ((_ is Star!9473) r!17423)) b!3056176))

(assert (= (and start!291888 ((_ is Union!9473) r!17423)) b!3056177))

(assert (= (and start!291888 ((_ is Cons!35214) s!11993)) b!3056173))

(declare-fun m!3379897 () Bool)

(assert (=> b!3056172 m!3379897))

(declare-fun m!3379899 () Bool)

(assert (=> b!3056172 m!3379899))

(declare-fun m!3379901 () Bool)

(assert (=> b!3056172 m!3379901))

(declare-fun m!3379903 () Bool)

(assert (=> b!3056170 m!3379903))

(declare-fun m!3379905 () Bool)

(assert (=> b!3056175 m!3379905))

(declare-fun m!3379907 () Bool)

(assert (=> b!3056171 m!3379907))

(declare-fun m!3379909 () Bool)

(assert (=> b!3056168 m!3379909))

(declare-fun m!3379911 () Bool)

(assert (=> b!3056168 m!3379911))

(declare-fun m!3379913 () Bool)

(assert (=> b!3056168 m!3379913))

(declare-fun m!3379915 () Bool)

(assert (=> start!291888 m!3379915))

(check-sat (not b!3056168) (not b!3056176) tp_is_empty!16509 (not b!3056169) (not b!3056170) (not b!3056171) (not b!3056175) (not b!3056177) (not start!291888) (not b!3056173) (not b!3056172))
(check-sat)
(get-model)

(declare-fun b!3056214 () Bool)

(declare-fun e!1914209 () Bool)

(declare-fun call!210884 () Bool)

(assert (=> b!3056214 (= e!1914209 call!210884)))

(declare-fun b!3056215 () Bool)

(declare-fun res!1255100 () Bool)

(declare-fun e!1914212 () Bool)

(assert (=> b!3056215 (=> res!1255100 e!1914212)))

(assert (=> b!3056215 (= res!1255100 (not ((_ is Concat!14794) (regTwo!19458 r!17423))))))

(declare-fun e!1914211 () Bool)

(assert (=> b!3056215 (= e!1914211 e!1914212)))

(declare-fun d!854844 () Bool)

(declare-fun res!1255097 () Bool)

(declare-fun e!1914214 () Bool)

(assert (=> d!854844 (=> res!1255097 e!1914214)))

(assert (=> d!854844 (= res!1255097 ((_ is ElementMatch!9473) (regTwo!19458 r!17423)))))

(assert (=> d!854844 (= (validRegex!4206 (regTwo!19458 r!17423)) e!1914214)))

(declare-fun b!3056216 () Bool)

(declare-fun e!1914213 () Bool)

(declare-fun call!210883 () Bool)

(assert (=> b!3056216 (= e!1914213 call!210883)))

(declare-fun bm!210878 () Bool)

(assert (=> bm!210878 (= call!210883 call!210884)))

(declare-fun b!3056217 () Bool)

(declare-fun res!1255101 () Bool)

(assert (=> b!3056217 (=> (not res!1255101) (not e!1914213))))

(declare-fun call!210885 () Bool)

(assert (=> b!3056217 (= res!1255101 call!210885)))

(assert (=> b!3056217 (= e!1914211 e!1914213)))

(declare-fun bm!210879 () Bool)

(declare-fun c!506905 () Bool)

(assert (=> bm!210879 (= call!210885 (validRegex!4206 (ite c!506905 (regOne!19459 (regTwo!19458 r!17423)) (regTwo!19458 (regTwo!19458 r!17423)))))))

(declare-fun b!3056218 () Bool)

(declare-fun e!1914208 () Bool)

(assert (=> b!3056218 (= e!1914212 e!1914208)))

(declare-fun res!1255099 () Bool)

(assert (=> b!3056218 (=> (not res!1255099) (not e!1914208))))

(assert (=> b!3056218 (= res!1255099 call!210883)))

(declare-fun c!506904 () Bool)

(declare-fun bm!210880 () Bool)

(assert (=> bm!210880 (= call!210884 (validRegex!4206 (ite c!506904 (reg!9802 (regTwo!19458 r!17423)) (ite c!506905 (regTwo!19459 (regTwo!19458 r!17423)) (regOne!19458 (regTwo!19458 r!17423))))))))

(declare-fun b!3056219 () Bool)

(assert (=> b!3056219 (= e!1914208 call!210885)))

(declare-fun b!3056220 () Bool)

(declare-fun e!1914210 () Bool)

(assert (=> b!3056220 (= e!1914210 e!1914211)))

(assert (=> b!3056220 (= c!506905 ((_ is Union!9473) (regTwo!19458 r!17423)))))

(declare-fun b!3056221 () Bool)

(assert (=> b!3056221 (= e!1914214 e!1914210)))

(assert (=> b!3056221 (= c!506904 ((_ is Star!9473) (regTwo!19458 r!17423)))))

(declare-fun b!3056222 () Bool)

(assert (=> b!3056222 (= e!1914210 e!1914209)))

(declare-fun res!1255098 () Bool)

(declare-fun nullable!3118 (Regex!9473) Bool)

(assert (=> b!3056222 (= res!1255098 (not (nullable!3118 (reg!9802 (regTwo!19458 r!17423)))))))

(assert (=> b!3056222 (=> (not res!1255098) (not e!1914209))))

(assert (= (and d!854844 (not res!1255097)) b!3056221))

(assert (= (and b!3056221 c!506904) b!3056222))

(assert (= (and b!3056221 (not c!506904)) b!3056220))

(assert (= (and b!3056222 res!1255098) b!3056214))

(assert (= (and b!3056220 c!506905) b!3056217))

(assert (= (and b!3056220 (not c!506905)) b!3056215))

(assert (= (and b!3056217 res!1255101) b!3056216))

(assert (= (and b!3056215 (not res!1255100)) b!3056218))

(assert (= (and b!3056218 res!1255099) b!3056219))

(assert (= (or b!3056217 b!3056219) bm!210879))

(assert (= (or b!3056216 b!3056218) bm!210878))

(assert (= (or b!3056214 bm!210878) bm!210880))

(declare-fun m!3379917 () Bool)

(assert (=> bm!210879 m!3379917))

(declare-fun m!3379919 () Bool)

(assert (=> bm!210880 m!3379919))

(declare-fun m!3379921 () Bool)

(assert (=> b!3056222 m!3379921))

(assert (=> b!3056171 d!854844))

(declare-fun b!3056223 () Bool)

(declare-fun e!1914216 () Bool)

(declare-fun call!210891 () Bool)

(assert (=> b!3056223 (= e!1914216 call!210891)))

(declare-fun b!3056224 () Bool)

(declare-fun res!1255105 () Bool)

(declare-fun e!1914219 () Bool)

(assert (=> b!3056224 (=> res!1255105 e!1914219)))

(assert (=> b!3056224 (= res!1255105 (not ((_ is Concat!14794) r!17423)))))

(declare-fun e!1914218 () Bool)

(assert (=> b!3056224 (= e!1914218 e!1914219)))

(declare-fun d!854848 () Bool)

(declare-fun res!1255102 () Bool)

(declare-fun e!1914221 () Bool)

(assert (=> d!854848 (=> res!1255102 e!1914221)))

(assert (=> d!854848 (= res!1255102 ((_ is ElementMatch!9473) r!17423))))

(assert (=> d!854848 (= (validRegex!4206 r!17423) e!1914221)))

(declare-fun b!3056225 () Bool)

(declare-fun e!1914220 () Bool)

(declare-fun call!210890 () Bool)

(assert (=> b!3056225 (= e!1914220 call!210890)))

(declare-fun bm!210885 () Bool)

(assert (=> bm!210885 (= call!210890 call!210891)))

(declare-fun b!3056226 () Bool)

(declare-fun res!1255106 () Bool)

(assert (=> b!3056226 (=> (not res!1255106) (not e!1914220))))

(declare-fun call!210892 () Bool)

(assert (=> b!3056226 (= res!1255106 call!210892)))

(assert (=> b!3056226 (= e!1914218 e!1914220)))

(declare-fun bm!210886 () Bool)

(declare-fun c!506907 () Bool)

(assert (=> bm!210886 (= call!210892 (validRegex!4206 (ite c!506907 (regOne!19459 r!17423) (regTwo!19458 r!17423))))))

(declare-fun b!3056227 () Bool)

(declare-fun e!1914215 () Bool)

(assert (=> b!3056227 (= e!1914219 e!1914215)))

(declare-fun res!1255104 () Bool)

(assert (=> b!3056227 (=> (not res!1255104) (not e!1914215))))

(assert (=> b!3056227 (= res!1255104 call!210890)))

(declare-fun c!506906 () Bool)

(declare-fun bm!210887 () Bool)

(assert (=> bm!210887 (= call!210891 (validRegex!4206 (ite c!506906 (reg!9802 r!17423) (ite c!506907 (regTwo!19459 r!17423) (regOne!19458 r!17423)))))))

(declare-fun b!3056228 () Bool)

(assert (=> b!3056228 (= e!1914215 call!210892)))

(declare-fun b!3056229 () Bool)

(declare-fun e!1914217 () Bool)

(assert (=> b!3056229 (= e!1914217 e!1914218)))

(assert (=> b!3056229 (= c!506907 ((_ is Union!9473) r!17423))))

(declare-fun b!3056230 () Bool)

(assert (=> b!3056230 (= e!1914221 e!1914217)))

(assert (=> b!3056230 (= c!506906 ((_ is Star!9473) r!17423))))

(declare-fun b!3056231 () Bool)

(assert (=> b!3056231 (= e!1914217 e!1914216)))

(declare-fun res!1255103 () Bool)

(assert (=> b!3056231 (= res!1255103 (not (nullable!3118 (reg!9802 r!17423))))))

(assert (=> b!3056231 (=> (not res!1255103) (not e!1914216))))

(assert (= (and d!854848 (not res!1255102)) b!3056230))

(assert (= (and b!3056230 c!506906) b!3056231))

(assert (= (and b!3056230 (not c!506906)) b!3056229))

(assert (= (and b!3056231 res!1255103) b!3056223))

(assert (= (and b!3056229 c!506907) b!3056226))

(assert (= (and b!3056229 (not c!506907)) b!3056224))

(assert (= (and b!3056226 res!1255106) b!3056225))

(assert (= (and b!3056224 (not res!1255105)) b!3056227))

(assert (= (and b!3056227 res!1255104) b!3056228))

(assert (= (or b!3056226 b!3056228) bm!210886))

(assert (= (or b!3056225 b!3056227) bm!210885))

(assert (= (or b!3056223 bm!210885) bm!210887))

(declare-fun m!3379923 () Bool)

(assert (=> bm!210886 m!3379923))

(declare-fun m!3379925 () Bool)

(assert (=> bm!210887 m!3379925))

(declare-fun m!3379927 () Bool)

(assert (=> b!3056231 m!3379927))

(assert (=> start!291888 d!854848))

(declare-fun d!854850 () Bool)

(assert (=> d!854850 (= (isEmpty!19529 s!11993) ((_ is Nil!35214) s!11993))))

(assert (=> b!3056175 d!854850))

(declare-fun d!854852 () Bool)

(assert (=> d!854852 (= (isEmptyLang!524 lt!1049120) ((_ is EmptyLang!9473) lt!1049120))))

(assert (=> b!3056170 d!854852))

(declare-fun d!854854 () Bool)

(assert (=> d!854854 (= (isEmptyLang!524 lt!1049119) ((_ is EmptyLang!9473) lt!1049119))))

(assert (=> b!3056168 d!854854))

(declare-fun lt!1049133 () Regex!9473)

(declare-fun lt!1049138 () Regex!9473)

(declare-fun bm!210910 () Bool)

(declare-fun c!506938 () Bool)

(declare-fun c!506940 () Bool)

(declare-fun lt!1049134 () Regex!9473)

(declare-fun call!210919 () Bool)

(assert (=> bm!210910 (= call!210919 (isEmptyLang!524 (ite c!506940 lt!1049134 (ite c!506938 lt!1049133 lt!1049138))))))

(declare-fun b!3056304 () Bool)

(declare-fun e!1914274 () Regex!9473)

(assert (=> b!3056304 (= e!1914274 (regTwo!19458 r!17423))))

(declare-fun b!3056305 () Bool)

(declare-fun e!1914273 () Regex!9473)

(assert (=> b!3056305 (= e!1914273 EmptyLang!9473)))

(declare-fun b!3056306 () Bool)

(declare-fun c!506945 () Bool)

(declare-fun call!210920 () Bool)

(assert (=> b!3056306 (= c!506945 call!210920)))

(declare-fun e!1914270 () Regex!9473)

(declare-fun e!1914272 () Regex!9473)

(assert (=> b!3056306 (= e!1914270 e!1914272)))

(declare-fun b!3056307 () Bool)

(assert (=> b!3056307 (= c!506938 ((_ is Union!9473) (regTwo!19458 r!17423)))))

(declare-fun e!1914269 () Regex!9473)

(declare-fun e!1914275 () Regex!9473)

(assert (=> b!3056307 (= e!1914269 e!1914275)))

(declare-fun b!3056308 () Bool)

(declare-fun e!1914267 () Regex!9473)

(declare-fun lt!1049137 () Regex!9473)

(assert (=> b!3056308 (= e!1914267 (Concat!14794 lt!1049138 lt!1049137))))

(declare-fun b!3056309 () Bool)

(declare-fun e!1914279 () Regex!9473)

(assert (=> b!3056309 (= e!1914279 EmptyExpr!9473)))

(declare-fun bm!210911 () Bool)

(declare-fun call!210917 () Regex!9473)

(declare-fun call!210915 () Regex!9473)

(assert (=> bm!210911 (= call!210917 call!210915)))

(declare-fun bm!210912 () Bool)

(declare-fun isEmptyExpr!529 (Regex!9473) Bool)

(assert (=> bm!210912 (= call!210920 (isEmptyExpr!529 (ite c!506940 lt!1049134 lt!1049138)))))

(declare-fun call!210918 () Bool)

(declare-fun lt!1049136 () Regex!9473)

(declare-fun bm!210913 () Bool)

(assert (=> bm!210913 (= call!210918 (isEmptyLang!524 (ite c!506938 lt!1049136 lt!1049137)))))

(declare-fun b!3056310 () Bool)

(assert (=> b!3056310 (= e!1914273 e!1914274)))

(declare-fun c!506936 () Bool)

(assert (=> b!3056310 (= c!506936 ((_ is ElementMatch!9473) (regTwo!19458 r!17423)))))

(declare-fun b!3056311 () Bool)

(declare-fun e!1914276 () Regex!9473)

(assert (=> b!3056311 (= e!1914276 lt!1049136)))

(declare-fun b!3056312 () Bool)

(declare-fun e!1914268 () Bool)

(declare-fun lt!1049135 () Regex!9473)

(assert (=> b!3056312 (= e!1914268 (= (nullable!3118 lt!1049135) (nullable!3118 (regTwo!19458 r!17423))))))

(declare-fun b!3056313 () Bool)

(assert (=> b!3056313 (= e!1914275 e!1914270)))

(declare-fun call!210921 () Regex!9473)

(assert (=> b!3056313 (= lt!1049138 call!210921)))

(assert (=> b!3056313 (= lt!1049137 call!210917)))

(declare-fun res!1255123 () Bool)

(declare-fun call!210916 () Bool)

(assert (=> b!3056313 (= res!1255123 call!210916)))

(declare-fun e!1914266 () Bool)

(assert (=> b!3056313 (=> res!1255123 e!1914266)))

(declare-fun c!506944 () Bool)

(assert (=> b!3056313 (= c!506944 e!1914266)))

(declare-fun b!3056314 () Bool)

(assert (=> b!3056314 (= e!1914272 lt!1049137)))

(declare-fun b!3056315 () Bool)

(declare-fun c!506942 () Bool)

(assert (=> b!3056315 (= c!506942 ((_ is EmptyExpr!9473) (regTwo!19458 r!17423)))))

(declare-fun e!1914271 () Regex!9473)

(assert (=> b!3056315 (= e!1914274 e!1914271)))

(declare-fun b!3056316 () Bool)

(declare-fun e!1914277 () Regex!9473)

(assert (=> b!3056316 (= e!1914275 e!1914277)))

(assert (=> b!3056316 (= lt!1049136 call!210917)))

(assert (=> b!3056316 (= lt!1049133 call!210921)))

(declare-fun c!506946 () Bool)

(assert (=> b!3056316 (= c!506946 call!210918)))

(declare-fun b!3056317 () Bool)

(assert (=> b!3056317 (= e!1914267 lt!1049138)))

(declare-fun bm!210914 () Bool)

(assert (=> bm!210914 (= call!210921 (simplify!428 (ite c!506938 (regTwo!19459 (regTwo!19458 r!17423)) (regOne!19458 (regTwo!19458 r!17423)))))))

(declare-fun b!3056318 () Bool)

(declare-fun c!506943 () Bool)

(declare-fun e!1914278 () Bool)

(assert (=> b!3056318 (= c!506943 e!1914278)))

(declare-fun res!1255124 () Bool)

(assert (=> b!3056318 (=> res!1255124 e!1914278)))

(assert (=> b!3056318 (= res!1255124 call!210919)))

(assert (=> b!3056318 (= lt!1049134 call!210915)))

(assert (=> b!3056318 (= e!1914269 e!1914279)))

(declare-fun b!3056319 () Bool)

(assert (=> b!3056319 (= e!1914271 e!1914269)))

(assert (=> b!3056319 (= c!506940 ((_ is Star!9473) (regTwo!19458 r!17423)))))

(declare-fun b!3056320 () Bool)

(declare-fun c!506937 () Bool)

(assert (=> b!3056320 (= c!506937 call!210916)))

(assert (=> b!3056320 (= e!1914277 e!1914276)))

(declare-fun d!854856 () Bool)

(assert (=> d!854856 e!1914268))

(declare-fun res!1255125 () Bool)

(assert (=> d!854856 (=> (not res!1255125) (not e!1914268))))

(assert (=> d!854856 (= res!1255125 (validRegex!4206 lt!1049135))))

(assert (=> d!854856 (= lt!1049135 e!1914273)))

(declare-fun c!506941 () Bool)

(assert (=> d!854856 (= c!506941 ((_ is EmptyLang!9473) (regTwo!19458 r!17423)))))

(assert (=> d!854856 (validRegex!4206 (regTwo!19458 r!17423))))

(assert (=> d!854856 (= (simplify!428 (regTwo!19458 r!17423)) lt!1049135)))

(declare-fun b!3056321 () Bool)

(assert (=> b!3056321 (= e!1914270 EmptyLang!9473)))

(declare-fun b!3056322 () Bool)

(assert (=> b!3056322 (= e!1914276 (Union!9473 lt!1049136 lt!1049133))))

(declare-fun bm!210915 () Bool)

(assert (=> bm!210915 (= call!210916 call!210919)))

(declare-fun b!3056323 () Bool)

(assert (=> b!3056323 (= e!1914266 call!210918)))

(declare-fun b!3056324 () Bool)

(assert (=> b!3056324 (= e!1914278 call!210920)))

(declare-fun bm!210916 () Bool)

(assert (=> bm!210916 (= call!210915 (simplify!428 (ite c!506940 (reg!9802 (regTwo!19458 r!17423)) (ite c!506938 (regOne!19459 (regTwo!19458 r!17423)) (regTwo!19458 (regTwo!19458 r!17423))))))))

(declare-fun b!3056325 () Bool)

(assert (=> b!3056325 (= e!1914271 EmptyExpr!9473)))

(declare-fun b!3056326 () Bool)

(assert (=> b!3056326 (= e!1914277 lt!1049133)))

(declare-fun b!3056327 () Bool)

(assert (=> b!3056327 (= e!1914272 e!1914267)))

(declare-fun c!506939 () Bool)

(assert (=> b!3056327 (= c!506939 (isEmptyExpr!529 lt!1049137))))

(declare-fun b!3056328 () Bool)

(assert (=> b!3056328 (= e!1914279 (Star!9473 lt!1049134))))

(assert (= (and d!854856 c!506941) b!3056305))

(assert (= (and d!854856 (not c!506941)) b!3056310))

(assert (= (and b!3056310 c!506936) b!3056304))

(assert (= (and b!3056310 (not c!506936)) b!3056315))

(assert (= (and b!3056315 c!506942) b!3056325))

(assert (= (and b!3056315 (not c!506942)) b!3056319))

(assert (= (and b!3056319 c!506940) b!3056318))

(assert (= (and b!3056319 (not c!506940)) b!3056307))

(assert (= (and b!3056318 (not res!1255124)) b!3056324))

(assert (= (and b!3056318 c!506943) b!3056309))

(assert (= (and b!3056318 (not c!506943)) b!3056328))

(assert (= (and b!3056307 c!506938) b!3056316))

(assert (= (and b!3056307 (not c!506938)) b!3056313))

(assert (= (and b!3056316 c!506946) b!3056326))

(assert (= (and b!3056316 (not c!506946)) b!3056320))

(assert (= (and b!3056320 c!506937) b!3056311))

(assert (= (and b!3056320 (not c!506937)) b!3056322))

(assert (= (and b!3056313 (not res!1255123)) b!3056323))

(assert (= (and b!3056313 c!506944) b!3056321))

(assert (= (and b!3056313 (not c!506944)) b!3056306))

(assert (= (and b!3056306 c!506945) b!3056314))

(assert (= (and b!3056306 (not c!506945)) b!3056327))

(assert (= (and b!3056327 c!506939) b!3056317))

(assert (= (and b!3056327 (not c!506939)) b!3056308))

(assert (= (or b!3056316 b!3056313) bm!210911))

(assert (= (or b!3056316 b!3056313) bm!210914))

(assert (= (or b!3056320 b!3056313) bm!210915))

(assert (= (or b!3056316 b!3056323) bm!210913))

(assert (= (or b!3056324 b!3056306) bm!210912))

(assert (= (or b!3056318 bm!210911) bm!210916))

(assert (= (or b!3056318 bm!210915) bm!210910))

(assert (= (and d!854856 res!1255125) b!3056312))

(declare-fun m!3379941 () Bool)

(assert (=> b!3056327 m!3379941))

(declare-fun m!3379943 () Bool)

(assert (=> d!854856 m!3379943))

(assert (=> d!854856 m!3379907))

(declare-fun m!3379945 () Bool)

(assert (=> bm!210910 m!3379945))

(declare-fun m!3379947 () Bool)

(assert (=> bm!210912 m!3379947))

(declare-fun m!3379949 () Bool)

(assert (=> b!3056312 m!3379949))

(declare-fun m!3379951 () Bool)

(assert (=> b!3056312 m!3379951))

(declare-fun m!3379953 () Bool)

(assert (=> bm!210916 m!3379953))

(declare-fun m!3379955 () Bool)

(assert (=> bm!210914 m!3379955))

(declare-fun m!3379957 () Bool)

(assert (=> bm!210913 m!3379957))

(assert (=> b!3056168 d!854856))

(declare-fun c!506955 () Bool)

(declare-fun lt!1049140 () Regex!9473)

(declare-fun call!210926 () Bool)

(declare-fun c!506957 () Bool)

(declare-fun bm!210917 () Bool)

(declare-fun lt!1049144 () Regex!9473)

(declare-fun lt!1049139 () Regex!9473)

(assert (=> bm!210917 (= call!210926 (isEmptyLang!524 (ite c!506957 lt!1049140 (ite c!506955 lt!1049139 lt!1049144))))))

(declare-fun b!3056347 () Bool)

(declare-fun e!1914300 () Regex!9473)

(assert (=> b!3056347 (= e!1914300 (regOne!19458 r!17423))))

(declare-fun b!3056348 () Bool)

(declare-fun e!1914299 () Regex!9473)

(assert (=> b!3056348 (= e!1914299 EmptyLang!9473)))

(declare-fun b!3056349 () Bool)

(declare-fun c!506962 () Bool)

(declare-fun call!210927 () Bool)

(assert (=> b!3056349 (= c!506962 call!210927)))

(declare-fun e!1914296 () Regex!9473)

(declare-fun e!1914298 () Regex!9473)

(assert (=> b!3056349 (= e!1914296 e!1914298)))

(declare-fun b!3056350 () Bool)

(assert (=> b!3056350 (= c!506955 ((_ is Union!9473) (regOne!19458 r!17423)))))

(declare-fun e!1914295 () Regex!9473)

(declare-fun e!1914301 () Regex!9473)

(assert (=> b!3056350 (= e!1914295 e!1914301)))

(declare-fun b!3056351 () Bool)

(declare-fun e!1914293 () Regex!9473)

(declare-fun lt!1049143 () Regex!9473)

(assert (=> b!3056351 (= e!1914293 (Concat!14794 lt!1049144 lt!1049143))))

(declare-fun b!3056352 () Bool)

(declare-fun e!1914305 () Regex!9473)

(assert (=> b!3056352 (= e!1914305 EmptyExpr!9473)))

(declare-fun bm!210918 () Bool)

(declare-fun call!210924 () Regex!9473)

(declare-fun call!210922 () Regex!9473)

(assert (=> bm!210918 (= call!210924 call!210922)))

(declare-fun bm!210919 () Bool)

(assert (=> bm!210919 (= call!210927 (isEmptyExpr!529 (ite c!506957 lt!1049140 lt!1049144)))))

(declare-fun bm!210920 () Bool)

(declare-fun call!210925 () Bool)

(declare-fun lt!1049142 () Regex!9473)

(assert (=> bm!210920 (= call!210925 (isEmptyLang!524 (ite c!506955 lt!1049142 lt!1049143)))))

(declare-fun b!3056353 () Bool)

(assert (=> b!3056353 (= e!1914299 e!1914300)))

(declare-fun c!506953 () Bool)

(assert (=> b!3056353 (= c!506953 ((_ is ElementMatch!9473) (regOne!19458 r!17423)))))

(declare-fun b!3056354 () Bool)

(declare-fun e!1914302 () Regex!9473)

(assert (=> b!3056354 (= e!1914302 lt!1049142)))

(declare-fun b!3056355 () Bool)

(declare-fun e!1914294 () Bool)

(declare-fun lt!1049141 () Regex!9473)

(assert (=> b!3056355 (= e!1914294 (= (nullable!3118 lt!1049141) (nullable!3118 (regOne!19458 r!17423))))))

(declare-fun b!3056356 () Bool)

(assert (=> b!3056356 (= e!1914301 e!1914296)))

(declare-fun call!210928 () Regex!9473)

(assert (=> b!3056356 (= lt!1049144 call!210928)))

(assert (=> b!3056356 (= lt!1049143 call!210924)))

(declare-fun res!1255132 () Bool)

(declare-fun call!210923 () Bool)

(assert (=> b!3056356 (= res!1255132 call!210923)))

(declare-fun e!1914292 () Bool)

(assert (=> b!3056356 (=> res!1255132 e!1914292)))

(declare-fun c!506961 () Bool)

(assert (=> b!3056356 (= c!506961 e!1914292)))

(declare-fun b!3056357 () Bool)

(assert (=> b!3056357 (= e!1914298 lt!1049143)))

(declare-fun b!3056358 () Bool)

(declare-fun c!506959 () Bool)

(assert (=> b!3056358 (= c!506959 ((_ is EmptyExpr!9473) (regOne!19458 r!17423)))))

(declare-fun e!1914297 () Regex!9473)

(assert (=> b!3056358 (= e!1914300 e!1914297)))

(declare-fun b!3056359 () Bool)

(declare-fun e!1914303 () Regex!9473)

(assert (=> b!3056359 (= e!1914301 e!1914303)))

(assert (=> b!3056359 (= lt!1049142 call!210924)))

(assert (=> b!3056359 (= lt!1049139 call!210928)))

(declare-fun c!506963 () Bool)

(assert (=> b!3056359 (= c!506963 call!210925)))

(declare-fun b!3056360 () Bool)

(assert (=> b!3056360 (= e!1914293 lt!1049144)))

(declare-fun bm!210921 () Bool)

(assert (=> bm!210921 (= call!210928 (simplify!428 (ite c!506955 (regTwo!19459 (regOne!19458 r!17423)) (regOne!19458 (regOne!19458 r!17423)))))))

(declare-fun b!3056361 () Bool)

(declare-fun c!506960 () Bool)

(declare-fun e!1914304 () Bool)

(assert (=> b!3056361 (= c!506960 e!1914304)))

(declare-fun res!1255133 () Bool)

(assert (=> b!3056361 (=> res!1255133 e!1914304)))

(assert (=> b!3056361 (= res!1255133 call!210926)))

(assert (=> b!3056361 (= lt!1049140 call!210922)))

(assert (=> b!3056361 (= e!1914295 e!1914305)))

(declare-fun b!3056362 () Bool)

(assert (=> b!3056362 (= e!1914297 e!1914295)))

(assert (=> b!3056362 (= c!506957 ((_ is Star!9473) (regOne!19458 r!17423)))))

(declare-fun b!3056363 () Bool)

(declare-fun c!506954 () Bool)

(assert (=> b!3056363 (= c!506954 call!210923)))

(assert (=> b!3056363 (= e!1914303 e!1914302)))

(declare-fun d!854862 () Bool)

(assert (=> d!854862 e!1914294))

(declare-fun res!1255134 () Bool)

(assert (=> d!854862 (=> (not res!1255134) (not e!1914294))))

(assert (=> d!854862 (= res!1255134 (validRegex!4206 lt!1049141))))

(assert (=> d!854862 (= lt!1049141 e!1914299)))

(declare-fun c!506958 () Bool)

(assert (=> d!854862 (= c!506958 ((_ is EmptyLang!9473) (regOne!19458 r!17423)))))

(assert (=> d!854862 (validRegex!4206 (regOne!19458 r!17423))))

(assert (=> d!854862 (= (simplify!428 (regOne!19458 r!17423)) lt!1049141)))

(declare-fun b!3056364 () Bool)

(assert (=> b!3056364 (= e!1914296 EmptyLang!9473)))

(declare-fun b!3056365 () Bool)

(assert (=> b!3056365 (= e!1914302 (Union!9473 lt!1049142 lt!1049139))))

(declare-fun bm!210922 () Bool)

(assert (=> bm!210922 (= call!210923 call!210926)))

(declare-fun b!3056366 () Bool)

(assert (=> b!3056366 (= e!1914292 call!210925)))

(declare-fun b!3056367 () Bool)

(assert (=> b!3056367 (= e!1914304 call!210927)))

(declare-fun bm!210923 () Bool)

(assert (=> bm!210923 (= call!210922 (simplify!428 (ite c!506957 (reg!9802 (regOne!19458 r!17423)) (ite c!506955 (regOne!19459 (regOne!19458 r!17423)) (regTwo!19458 (regOne!19458 r!17423))))))))

(declare-fun b!3056368 () Bool)

(assert (=> b!3056368 (= e!1914297 EmptyExpr!9473)))

(declare-fun b!3056369 () Bool)

(assert (=> b!3056369 (= e!1914303 lt!1049139)))

(declare-fun b!3056370 () Bool)

(assert (=> b!3056370 (= e!1914298 e!1914293)))

(declare-fun c!506956 () Bool)

(assert (=> b!3056370 (= c!506956 (isEmptyExpr!529 lt!1049143))))

(declare-fun b!3056371 () Bool)

(assert (=> b!3056371 (= e!1914305 (Star!9473 lt!1049140))))

(assert (= (and d!854862 c!506958) b!3056348))

(assert (= (and d!854862 (not c!506958)) b!3056353))

(assert (= (and b!3056353 c!506953) b!3056347))

(assert (= (and b!3056353 (not c!506953)) b!3056358))

(assert (= (and b!3056358 c!506959) b!3056368))

(assert (= (and b!3056358 (not c!506959)) b!3056362))

(assert (= (and b!3056362 c!506957) b!3056361))

(assert (= (and b!3056362 (not c!506957)) b!3056350))

(assert (= (and b!3056361 (not res!1255133)) b!3056367))

(assert (= (and b!3056361 c!506960) b!3056352))

(assert (= (and b!3056361 (not c!506960)) b!3056371))

(assert (= (and b!3056350 c!506955) b!3056359))

(assert (= (and b!3056350 (not c!506955)) b!3056356))

(assert (= (and b!3056359 c!506963) b!3056369))

(assert (= (and b!3056359 (not c!506963)) b!3056363))

(assert (= (and b!3056363 c!506954) b!3056354))

(assert (= (and b!3056363 (not c!506954)) b!3056365))

(assert (= (and b!3056356 (not res!1255132)) b!3056366))

(assert (= (and b!3056356 c!506961) b!3056364))

(assert (= (and b!3056356 (not c!506961)) b!3056349))

(assert (= (and b!3056349 c!506962) b!3056357))

(assert (= (and b!3056349 (not c!506962)) b!3056370))

(assert (= (and b!3056370 c!506956) b!3056360))

(assert (= (and b!3056370 (not c!506956)) b!3056351))

(assert (= (or b!3056359 b!3056356) bm!210918))

(assert (= (or b!3056359 b!3056356) bm!210921))

(assert (= (or b!3056363 b!3056356) bm!210922))

(assert (= (or b!3056359 b!3056366) bm!210920))

(assert (= (or b!3056367 b!3056349) bm!210919))

(assert (= (or b!3056361 bm!210918) bm!210923))

(assert (= (or b!3056361 bm!210922) bm!210917))

(assert (= (and d!854862 res!1255134) b!3056355))

(declare-fun m!3379959 () Bool)

(assert (=> b!3056370 m!3379959))

(declare-fun m!3379961 () Bool)

(assert (=> d!854862 m!3379961))

(declare-fun m!3379963 () Bool)

(assert (=> d!854862 m!3379963))

(declare-fun m!3379965 () Bool)

(assert (=> bm!210917 m!3379965))

(declare-fun m!3379967 () Bool)

(assert (=> bm!210919 m!3379967))

(declare-fun m!3379969 () Bool)

(assert (=> b!3056355 m!3379969))

(declare-fun m!3379971 () Bool)

(assert (=> b!3056355 m!3379971))

(declare-fun m!3379973 () Bool)

(assert (=> bm!210923 m!3379973))

(declare-fun m!3379975 () Bool)

(assert (=> bm!210921 m!3379975))

(declare-fun m!3379977 () Bool)

(assert (=> bm!210920 m!3379977))

(assert (=> b!3056168 d!854862))

(declare-fun b!3056410 () Bool)

(assert (=> b!3056410 true))

(assert (=> b!3056410 true))

(declare-fun bs!532402 () Bool)

(declare-fun b!3056404 () Bool)

(assert (= bs!532402 (and b!3056404 b!3056410)))

(declare-fun lambda!113796 () Int)

(declare-fun lambda!113795 () Int)

(assert (=> bs!532402 (not (= lambda!113796 lambda!113795))))

(assert (=> b!3056404 true))

(assert (=> b!3056404 true))

(declare-fun bm!210928 () Bool)

(declare-fun call!210934 () Bool)

(assert (=> bm!210928 (= call!210934 (isEmpty!19529 s!11993))))

(declare-fun e!1914327 () Bool)

(declare-fun call!210933 () Bool)

(assert (=> b!3056404 (= e!1914327 call!210933)))

(declare-fun b!3056405 () Bool)

(declare-fun e!1914329 () Bool)

(declare-fun e!1914328 () Bool)

(assert (=> b!3056405 (= e!1914329 e!1914328)))

(declare-fun res!1255153 () Bool)

(assert (=> b!3056405 (= res!1255153 (matchRSpec!1610 (regOne!19459 r!17423) s!11993))))

(assert (=> b!3056405 (=> res!1255153 e!1914328)))

(declare-fun b!3056406 () Bool)

(declare-fun e!1914324 () Bool)

(declare-fun e!1914326 () Bool)

(assert (=> b!3056406 (= e!1914324 e!1914326)))

(declare-fun res!1255152 () Bool)

(assert (=> b!3056406 (= res!1255152 (not ((_ is EmptyLang!9473) r!17423)))))

(assert (=> b!3056406 (=> (not res!1255152) (not e!1914326))))

(declare-fun b!3056407 () Bool)

(declare-fun res!1255151 () Bool)

(declare-fun e!1914330 () Bool)

(assert (=> b!3056407 (=> res!1255151 e!1914330)))

(assert (=> b!3056407 (= res!1255151 call!210934)))

(assert (=> b!3056407 (= e!1914327 e!1914330)))

(declare-fun b!3056408 () Bool)

(assert (=> b!3056408 (= e!1914329 e!1914327)))

(declare-fun c!506975 () Bool)

(assert (=> b!3056408 (= c!506975 ((_ is Star!9473) r!17423))))

(declare-fun b!3056409 () Bool)

(declare-fun c!506974 () Bool)

(assert (=> b!3056409 (= c!506974 ((_ is Union!9473) r!17423))))

(declare-fun e!1914325 () Bool)

(assert (=> b!3056409 (= e!1914325 e!1914329)))

(assert (=> b!3056410 (= e!1914330 call!210933)))

(declare-fun b!3056411 () Bool)

(assert (=> b!3056411 (= e!1914328 (matchRSpec!1610 (regTwo!19459 r!17423) s!11993))))

(declare-fun b!3056412 () Bool)

(assert (=> b!3056412 (= e!1914324 call!210934)))

(declare-fun b!3056413 () Bool)

(assert (=> b!3056413 (= e!1914325 (= s!11993 (Cons!35214 (c!506895 r!17423) Nil!35214)))))

(declare-fun b!3056414 () Bool)

(declare-fun c!506972 () Bool)

(assert (=> b!3056414 (= c!506972 ((_ is ElementMatch!9473) r!17423))))

(assert (=> b!3056414 (= e!1914326 e!1914325)))

(declare-fun d!854864 () Bool)

(declare-fun c!506973 () Bool)

(assert (=> d!854864 (= c!506973 ((_ is EmptyExpr!9473) r!17423))))

(assert (=> d!854864 (= (matchRSpec!1610 r!17423 s!11993) e!1914324)))

(declare-fun bm!210929 () Bool)

(declare-fun Exists!1735 (Int) Bool)

(assert (=> bm!210929 (= call!210933 (Exists!1735 (ite c!506975 lambda!113795 lambda!113796)))))

(assert (= (and d!854864 c!506973) b!3056412))

(assert (= (and d!854864 (not c!506973)) b!3056406))

(assert (= (and b!3056406 res!1255152) b!3056414))

(assert (= (and b!3056414 c!506972) b!3056413))

(assert (= (and b!3056414 (not c!506972)) b!3056409))

(assert (= (and b!3056409 c!506974) b!3056405))

(assert (= (and b!3056409 (not c!506974)) b!3056408))

(assert (= (and b!3056405 (not res!1255153)) b!3056411))

(assert (= (and b!3056408 c!506975) b!3056407))

(assert (= (and b!3056408 (not c!506975)) b!3056404))

(assert (= (and b!3056407 (not res!1255151)) b!3056410))

(assert (= (or b!3056410 b!3056404) bm!210929))

(assert (= (or b!3056412 b!3056407) bm!210928))

(assert (=> bm!210928 m!3379905))

(declare-fun m!3379979 () Bool)

(assert (=> b!3056405 m!3379979))

(declare-fun m!3379981 () Bool)

(assert (=> b!3056411 m!3379981))

(declare-fun m!3379983 () Bool)

(assert (=> bm!210929 m!3379983))

(assert (=> b!3056172 d!854864))

(declare-fun b!3056447 () Bool)

(declare-fun res!1255175 () Bool)

(declare-fun e!1914351 () Bool)

(assert (=> b!3056447 (=> (not res!1255175) (not e!1914351))))

(declare-fun tail!4999 (List!35338) List!35338)

(assert (=> b!3056447 (= res!1255175 (isEmpty!19529 (tail!4999 s!11993)))))

(declare-fun b!3056448 () Bool)

(declare-fun e!1914347 () Bool)

(declare-fun e!1914345 () Bool)

(assert (=> b!3056448 (= e!1914347 e!1914345)))

(declare-fun c!506982 () Bool)

(assert (=> b!3056448 (= c!506982 ((_ is EmptyLang!9473) r!17423))))

(declare-fun b!3056449 () Bool)

(declare-fun head!6773 (List!35338) C!19132)

(assert (=> b!3056449 (= e!1914351 (= (head!6773 s!11993) (c!506895 r!17423)))))

(declare-fun b!3056450 () Bool)

(declare-fun res!1255174 () Bool)

(declare-fun e!1914350 () Bool)

(assert (=> b!3056450 (=> res!1255174 e!1914350)))

(assert (=> b!3056450 (= res!1255174 (not ((_ is ElementMatch!9473) r!17423)))))

(assert (=> b!3056450 (= e!1914345 e!1914350)))

(declare-fun b!3056451 () Bool)

(declare-fun e!1914348 () Bool)

(assert (=> b!3056451 (= e!1914350 e!1914348)))

(declare-fun res!1255171 () Bool)

(assert (=> b!3056451 (=> (not res!1255171) (not e!1914348))))

(declare-fun lt!1049147 () Bool)

(assert (=> b!3056451 (= res!1255171 (not lt!1049147))))

(declare-fun d!854866 () Bool)

(assert (=> d!854866 e!1914347))

(declare-fun c!506984 () Bool)

(assert (=> d!854866 (= c!506984 ((_ is EmptyExpr!9473) r!17423))))

(declare-fun e!1914346 () Bool)

(assert (=> d!854866 (= lt!1049147 e!1914346)))

(declare-fun c!506983 () Bool)

(assert (=> d!854866 (= c!506983 (isEmpty!19529 s!11993))))

(assert (=> d!854866 (validRegex!4206 r!17423)))

(assert (=> d!854866 (= (matchR!4355 r!17423 s!11993) lt!1049147)))

(declare-fun b!3056452 () Bool)

(declare-fun call!210937 () Bool)

(assert (=> b!3056452 (= e!1914347 (= lt!1049147 call!210937))))

(declare-fun b!3056453 () Bool)

(declare-fun e!1914349 () Bool)

(assert (=> b!3056453 (= e!1914349 (not (= (head!6773 s!11993) (c!506895 r!17423))))))

(declare-fun b!3056454 () Bool)

(assert (=> b!3056454 (= e!1914346 (nullable!3118 r!17423))))

(declare-fun b!3056455 () Bool)

(declare-fun res!1255170 () Bool)

(assert (=> b!3056455 (=> (not res!1255170) (not e!1914351))))

(assert (=> b!3056455 (= res!1255170 (not call!210937))))

(declare-fun b!3056456 () Bool)

(assert (=> b!3056456 (= e!1914348 e!1914349)))

(declare-fun res!1255172 () Bool)

(assert (=> b!3056456 (=> res!1255172 e!1914349)))

(assert (=> b!3056456 (= res!1255172 call!210937)))

(declare-fun b!3056457 () Bool)

(assert (=> b!3056457 (= e!1914345 (not lt!1049147))))

(declare-fun bm!210932 () Bool)

(assert (=> bm!210932 (= call!210937 (isEmpty!19529 s!11993))))

(declare-fun b!3056458 () Bool)

(declare-fun res!1255177 () Bool)

(assert (=> b!3056458 (=> res!1255177 e!1914350)))

(assert (=> b!3056458 (= res!1255177 e!1914351)))

(declare-fun res!1255176 () Bool)

(assert (=> b!3056458 (=> (not res!1255176) (not e!1914351))))

(assert (=> b!3056458 (= res!1255176 lt!1049147)))

(declare-fun b!3056459 () Bool)

(declare-fun res!1255173 () Bool)

(assert (=> b!3056459 (=> res!1255173 e!1914349)))

(assert (=> b!3056459 (= res!1255173 (not (isEmpty!19529 (tail!4999 s!11993))))))

(declare-fun b!3056460 () Bool)

(declare-fun derivativeStep!2714 (Regex!9473 C!19132) Regex!9473)

(assert (=> b!3056460 (= e!1914346 (matchR!4355 (derivativeStep!2714 r!17423 (head!6773 s!11993)) (tail!4999 s!11993)))))

(assert (= (and d!854866 c!506983) b!3056454))

(assert (= (and d!854866 (not c!506983)) b!3056460))

(assert (= (and d!854866 c!506984) b!3056452))

(assert (= (and d!854866 (not c!506984)) b!3056448))

(assert (= (and b!3056448 c!506982) b!3056457))

(assert (= (and b!3056448 (not c!506982)) b!3056450))

(assert (= (and b!3056450 (not res!1255174)) b!3056458))

(assert (= (and b!3056458 res!1255176) b!3056455))

(assert (= (and b!3056455 res!1255170) b!3056447))

(assert (= (and b!3056447 res!1255175) b!3056449))

(assert (= (and b!3056458 (not res!1255177)) b!3056451))

(assert (= (and b!3056451 res!1255171) b!3056456))

(assert (= (and b!3056456 (not res!1255172)) b!3056459))

(assert (= (and b!3056459 (not res!1255173)) b!3056453))

(assert (= (or b!3056452 b!3056455 b!3056456) bm!210932))

(declare-fun m!3379985 () Bool)

(assert (=> b!3056459 m!3379985))

(assert (=> b!3056459 m!3379985))

(declare-fun m!3379987 () Bool)

(assert (=> b!3056459 m!3379987))

(declare-fun m!3379989 () Bool)

(assert (=> b!3056449 m!3379989))

(assert (=> b!3056460 m!3379989))

(assert (=> b!3056460 m!3379989))

(declare-fun m!3379991 () Bool)

(assert (=> b!3056460 m!3379991))

(assert (=> b!3056460 m!3379985))

(assert (=> b!3056460 m!3379991))

(assert (=> b!3056460 m!3379985))

(declare-fun m!3379993 () Bool)

(assert (=> b!3056460 m!3379993))

(assert (=> d!854866 m!3379905))

(assert (=> d!854866 m!3379915))

(assert (=> b!3056447 m!3379985))

(assert (=> b!3056447 m!3379985))

(assert (=> b!3056447 m!3379987))

(assert (=> b!3056453 m!3379989))

(assert (=> bm!210932 m!3379905))

(declare-fun m!3379995 () Bool)

(assert (=> b!3056454 m!3379995))

(assert (=> b!3056172 d!854866))

(declare-fun d!854868 () Bool)

(assert (=> d!854868 (= (matchR!4355 r!17423 s!11993) (matchRSpec!1610 r!17423 s!11993))))

(declare-fun lt!1049150 () Unit!49385)

(declare-fun choose!18104 (Regex!9473 List!35338) Unit!49385)

(assert (=> d!854868 (= lt!1049150 (choose!18104 r!17423 s!11993))))

(assert (=> d!854868 (validRegex!4206 r!17423)))

(assert (=> d!854868 (= (mainMatchTheorem!1610 r!17423 s!11993) lt!1049150)))

(declare-fun bs!532403 () Bool)

(assert (= bs!532403 d!854868))

(assert (=> bs!532403 m!3379899))

(assert (=> bs!532403 m!3379897))

(declare-fun m!3379997 () Bool)

(assert (=> bs!532403 m!3379997))

(assert (=> bs!532403 m!3379915))

(assert (=> b!3056172 d!854868))

(declare-fun b!3056471 () Bool)

(declare-fun e!1914354 () Bool)

(assert (=> b!3056471 (= e!1914354 tp_is_empty!16509)))

(declare-fun b!3056472 () Bool)

(declare-fun tp!966556 () Bool)

(declare-fun tp!966558 () Bool)

(assert (=> b!3056472 (= e!1914354 (and tp!966556 tp!966558))))

(assert (=> b!3056176 (= tp!966545 e!1914354)))

(declare-fun b!3056473 () Bool)

(declare-fun tp!966560 () Bool)

(assert (=> b!3056473 (= e!1914354 tp!966560)))

(declare-fun b!3056474 () Bool)

(declare-fun tp!966559 () Bool)

(declare-fun tp!966557 () Bool)

(assert (=> b!3056474 (= e!1914354 (and tp!966559 tp!966557))))

(assert (= (and b!3056176 ((_ is ElementMatch!9473) (reg!9802 r!17423))) b!3056471))

(assert (= (and b!3056176 ((_ is Concat!14794) (reg!9802 r!17423))) b!3056472))

(assert (= (and b!3056176 ((_ is Star!9473) (reg!9802 r!17423))) b!3056473))

(assert (= (and b!3056176 ((_ is Union!9473) (reg!9802 r!17423))) b!3056474))

(declare-fun b!3056475 () Bool)

(declare-fun e!1914355 () Bool)

(assert (=> b!3056475 (= e!1914355 tp_is_empty!16509)))

(declare-fun b!3056476 () Bool)

(declare-fun tp!966561 () Bool)

(declare-fun tp!966563 () Bool)

(assert (=> b!3056476 (= e!1914355 (and tp!966561 tp!966563))))

(assert (=> b!3056169 (= tp!966541 e!1914355)))

(declare-fun b!3056477 () Bool)

(declare-fun tp!966565 () Bool)

(assert (=> b!3056477 (= e!1914355 tp!966565)))

(declare-fun b!3056478 () Bool)

(declare-fun tp!966564 () Bool)

(declare-fun tp!966562 () Bool)

(assert (=> b!3056478 (= e!1914355 (and tp!966564 tp!966562))))

(assert (= (and b!3056169 ((_ is ElementMatch!9473) (regOne!19458 r!17423))) b!3056475))

(assert (= (and b!3056169 ((_ is Concat!14794) (regOne!19458 r!17423))) b!3056476))

(assert (= (and b!3056169 ((_ is Star!9473) (regOne!19458 r!17423))) b!3056477))

(assert (= (and b!3056169 ((_ is Union!9473) (regOne!19458 r!17423))) b!3056478))

(declare-fun b!3056479 () Bool)

(declare-fun e!1914358 () Bool)

(assert (=> b!3056479 (= e!1914358 tp_is_empty!16509)))

(declare-fun b!3056480 () Bool)

(declare-fun tp!966566 () Bool)

(declare-fun tp!966568 () Bool)

(assert (=> b!3056480 (= e!1914358 (and tp!966566 tp!966568))))

(assert (=> b!3056169 (= tp!966543 e!1914358)))

(declare-fun b!3056481 () Bool)

(declare-fun tp!966570 () Bool)

(assert (=> b!3056481 (= e!1914358 tp!966570)))

(declare-fun b!3056482 () Bool)

(declare-fun tp!966569 () Bool)

(declare-fun tp!966567 () Bool)

(assert (=> b!3056482 (= e!1914358 (and tp!966569 tp!966567))))

(assert (= (and b!3056169 ((_ is ElementMatch!9473) (regTwo!19458 r!17423))) b!3056479))

(assert (= (and b!3056169 ((_ is Concat!14794) (regTwo!19458 r!17423))) b!3056480))

(assert (= (and b!3056169 ((_ is Star!9473) (regTwo!19458 r!17423))) b!3056481))

(assert (= (and b!3056169 ((_ is Union!9473) (regTwo!19458 r!17423))) b!3056482))

(declare-fun b!3056493 () Bool)

(declare-fun e!1914361 () Bool)

(declare-fun tp!966573 () Bool)

(assert (=> b!3056493 (= e!1914361 (and tp_is_empty!16509 tp!966573))))

(assert (=> b!3056173 (= tp!966542 e!1914361)))

(assert (= (and b!3056173 ((_ is Cons!35214) (t!234403 s!11993))) b!3056493))

(declare-fun b!3056494 () Bool)

(declare-fun e!1914362 () Bool)

(assert (=> b!3056494 (= e!1914362 tp_is_empty!16509)))

(declare-fun b!3056495 () Bool)

(declare-fun tp!966574 () Bool)

(declare-fun tp!966576 () Bool)

(assert (=> b!3056495 (= e!1914362 (and tp!966574 tp!966576))))

(assert (=> b!3056177 (= tp!966544 e!1914362)))

(declare-fun b!3056496 () Bool)

(declare-fun tp!966578 () Bool)

(assert (=> b!3056496 (= e!1914362 tp!966578)))

(declare-fun b!3056497 () Bool)

(declare-fun tp!966577 () Bool)

(declare-fun tp!966575 () Bool)

(assert (=> b!3056497 (= e!1914362 (and tp!966577 tp!966575))))

(assert (= (and b!3056177 ((_ is ElementMatch!9473) (regOne!19459 r!17423))) b!3056494))

(assert (= (and b!3056177 ((_ is Concat!14794) (regOne!19459 r!17423))) b!3056495))

(assert (= (and b!3056177 ((_ is Star!9473) (regOne!19459 r!17423))) b!3056496))

(assert (= (and b!3056177 ((_ is Union!9473) (regOne!19459 r!17423))) b!3056497))

(declare-fun b!3056498 () Bool)

(declare-fun e!1914363 () Bool)

(assert (=> b!3056498 (= e!1914363 tp_is_empty!16509)))

(declare-fun b!3056499 () Bool)

(declare-fun tp!966579 () Bool)

(declare-fun tp!966581 () Bool)

(assert (=> b!3056499 (= e!1914363 (and tp!966579 tp!966581))))

(assert (=> b!3056177 (= tp!966540 e!1914363)))

(declare-fun b!3056500 () Bool)

(declare-fun tp!966583 () Bool)

(assert (=> b!3056500 (= e!1914363 tp!966583)))

(declare-fun b!3056501 () Bool)

(declare-fun tp!966582 () Bool)

(declare-fun tp!966580 () Bool)

(assert (=> b!3056501 (= e!1914363 (and tp!966582 tp!966580))))

(assert (= (and b!3056177 ((_ is ElementMatch!9473) (regTwo!19459 r!17423))) b!3056498))

(assert (= (and b!3056177 ((_ is Concat!14794) (regTwo!19459 r!17423))) b!3056499))

(assert (= (and b!3056177 ((_ is Star!9473) (regTwo!19459 r!17423))) b!3056500))

(assert (= (and b!3056177 ((_ is Union!9473) (regTwo!19459 r!17423))) b!3056501))

(check-sat (not b!3056473) tp_is_empty!16509 (not bm!210929) (not bm!210920) (not b!3056312) (not d!854868) (not b!3056495) (not b!3056447) (not bm!210880) (not bm!210879) (not bm!210917) (not b!3056493) (not b!3056405) (not b!3056460) (not b!3056500) (not bm!210913) (not b!3056482) (not b!3056222) (not b!3056474) (not d!854866) (not bm!210910) (not bm!210916) (not b!3056478) (not b!3056476) (not b!3056499) (not b!3056411) (not b!3056501) (not b!3056370) (not bm!210932) (not b!3056355) (not bm!210923) (not b!3056231) (not b!3056327) (not b!3056453) (not bm!210921) (not bm!210928) (not b!3056454) (not bm!210912) (not b!3056472) (not bm!210914) (not bm!210887) (not b!3056497) (not d!854862) (not b!3056477) (not b!3056496) (not bm!210886) (not b!3056481) (not d!854856) (not b!3056459) (not b!3056480) (not b!3056449) (not bm!210919))
(check-sat)
