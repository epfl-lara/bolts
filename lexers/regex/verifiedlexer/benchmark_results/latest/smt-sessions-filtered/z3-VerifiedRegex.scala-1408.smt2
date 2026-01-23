; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73998 () Bool)

(assert start!73998)

(declare-fun b!830174 () Bool)

(declare-fun e!547016 () Bool)

(declare-datatypes ((C!4720 0))(
  ( (C!4721 (val!2608 Int)) )
))
(declare-datatypes ((Regex!2075 0))(
  ( (ElementMatch!2075 (c!135132 C!4720)) (Concat!3806 (regOne!4662 Regex!2075) (regTwo!4662 Regex!2075)) (EmptyExpr!2075) (Star!2075 (reg!2404 Regex!2075)) (EmptyLang!2075) (Union!2075 (regOne!4663 Regex!2075) (regTwo!4663 Regex!2075)) )
))
(declare-fun r!27177 () Regex!2075)

(declare-fun RegexPrimitiveSize!94 (Regex!2075) Int)

(assert (=> b!830174 (= e!547016 (>= (RegexPrimitiveSize!94 (regOne!4662 r!27177)) (RegexPrimitiveSize!94 r!27177)))))

(declare-fun b!830175 () Bool)

(declare-fun res!381267 () Bool)

(assert (=> b!830175 (=> (not res!381267) (not e!547016))))

(get-info :version)

(assert (=> b!830175 (= res!381267 (and (not ((_ is EmptyExpr!2075) r!27177)) (not ((_ is EmptyLang!2075) r!27177)) (not ((_ is ElementMatch!2075) r!27177)) (not ((_ is Star!2075) r!27177)) (not ((_ is Union!2075) r!27177))))))

(declare-fun b!830176 () Bool)

(declare-fun res!381263 () Bool)

(assert (=> b!830176 (=> (not res!381263) (not e!547016))))

(declare-fun validRegex!628 (Regex!2075) Bool)

(assert (=> b!830176 (= res!381263 (validRegex!628 (regOne!4662 r!27177)))))

(declare-fun b!830177 () Bool)

(declare-fun e!547017 () Bool)

(declare-fun tp!259911 () Bool)

(declare-fun tp!259912 () Bool)

(assert (=> b!830177 (= e!547017 (and tp!259911 tp!259912))))

(declare-fun b!830178 () Bool)

(declare-fun tp_is_empty!3873 () Bool)

(assert (=> b!830178 (= e!547017 tp_is_empty!3873)))

(declare-fun b!830179 () Bool)

(declare-fun res!381264 () Bool)

(assert (=> b!830179 (=> (not res!381264) (not e!547016))))

(declare-fun c!13916 () C!4720)

(declare-datatypes ((List!8901 0))(
  ( (Nil!8885) (Cons!8885 (h!14286 C!4720) (t!93193 List!8901)) )
))
(declare-fun contains!1666 (List!8901 C!4720) Bool)

(declare-fun firstChars!46 (Regex!2075) List!8901)

(assert (=> b!830179 (= res!381264 (contains!1666 (firstChars!46 (regOne!4662 r!27177)) c!13916))))

(declare-fun res!381262 () Bool)

(assert (=> start!73998 (=> (not res!381262) (not e!547016))))

(assert (=> start!73998 (= res!381262 (validRegex!628 r!27177))))

(assert (=> start!73998 e!547016))

(assert (=> start!73998 e!547017))

(assert (=> start!73998 tp_is_empty!3873))

(declare-fun b!830180 () Bool)

(declare-fun res!381265 () Bool)

(assert (=> b!830180 (=> (not res!381265) (not e!547016))))

(declare-fun nullable!526 (Regex!2075) Bool)

(assert (=> b!830180 (= res!381265 (nullable!526 (regOne!4662 r!27177)))))

(declare-fun b!830181 () Bool)

(declare-fun tp!259910 () Bool)

(assert (=> b!830181 (= e!547017 tp!259910)))

(declare-fun b!830182 () Bool)

(declare-fun tp!259914 () Bool)

(declare-fun tp!259913 () Bool)

(assert (=> b!830182 (= e!547017 (and tp!259914 tp!259913))))

(declare-fun b!830183 () Bool)

(declare-fun res!381266 () Bool)

(assert (=> b!830183 (=> (not res!381266) (not e!547016))))

(assert (=> b!830183 (= res!381266 (contains!1666 (firstChars!46 r!27177) c!13916))))

(assert (= (and start!73998 res!381262) b!830183))

(assert (= (and b!830183 res!381266) b!830175))

(assert (= (and b!830175 res!381267) b!830180))

(assert (= (and b!830180 res!381265) b!830179))

(assert (= (and b!830179 res!381264) b!830176))

(assert (= (and b!830176 res!381263) b!830174))

(assert (= (and start!73998 ((_ is ElementMatch!2075) r!27177)) b!830178))

(assert (= (and start!73998 ((_ is Concat!3806) r!27177)) b!830177))

(assert (= (and start!73998 ((_ is Star!2075) r!27177)) b!830181))

(assert (= (and start!73998 ((_ is Union!2075) r!27177)) b!830182))

(declare-fun m!1067295 () Bool)

(assert (=> b!830180 m!1067295))

(declare-fun m!1067297 () Bool)

(assert (=> b!830174 m!1067297))

(declare-fun m!1067299 () Bool)

(assert (=> b!830174 m!1067299))

(declare-fun m!1067301 () Bool)

(assert (=> b!830176 m!1067301))

(declare-fun m!1067303 () Bool)

(assert (=> b!830183 m!1067303))

(assert (=> b!830183 m!1067303))

(declare-fun m!1067305 () Bool)

(assert (=> b!830183 m!1067305))

(declare-fun m!1067307 () Bool)

(assert (=> b!830179 m!1067307))

(assert (=> b!830179 m!1067307))

(declare-fun m!1067309 () Bool)

(assert (=> b!830179 m!1067309))

(declare-fun m!1067311 () Bool)

(assert (=> start!73998 m!1067311))

(check-sat (not b!830183) (not b!830174) tp_is_empty!3873 (not b!830179) (not b!830182) (not start!73998) (not b!830176) (not b!830181) (not b!830180) (not b!830177))
(check-sat)
(get-model)

(declare-fun bm!48823 () Bool)

(declare-fun call!48829 () Bool)

(declare-fun call!48830 () Bool)

(assert (=> bm!48823 (= call!48829 call!48830)))

(declare-fun bm!48824 () Bool)

(declare-fun c!135137 () Bool)

(declare-fun c!135138 () Bool)

(assert (=> bm!48824 (= call!48830 (validRegex!628 (ite c!135137 (reg!2404 (regOne!4662 r!27177)) (ite c!135138 (regTwo!4663 (regOne!4662 r!27177)) (regOne!4662 (regOne!4662 r!27177))))))))

(declare-fun b!830208 () Bool)

(declare-fun e!547043 () Bool)

(declare-fun e!547039 () Bool)

(assert (=> b!830208 (= e!547043 e!547039)))

(declare-fun res!381284 () Bool)

(assert (=> b!830208 (=> (not res!381284) (not e!547039))))

(assert (=> b!830208 (= res!381284 call!48829)))

(declare-fun b!830209 () Bool)

(declare-fun e!547042 () Bool)

(assert (=> b!830209 (= e!547042 call!48829)))

(declare-fun b!830210 () Bool)

(declare-fun e!547038 () Bool)

(declare-fun e!547040 () Bool)

(assert (=> b!830210 (= e!547038 e!547040)))

(declare-fun res!381288 () Bool)

(assert (=> b!830210 (= res!381288 (not (nullable!526 (reg!2404 (regOne!4662 r!27177)))))))

(assert (=> b!830210 (=> (not res!381288) (not e!547040))))

(declare-fun b!830211 () Bool)

(declare-fun call!48828 () Bool)

(assert (=> b!830211 (= e!547039 call!48828)))

(declare-fun d!260045 () Bool)

(declare-fun res!381285 () Bool)

(declare-fun e!547044 () Bool)

(assert (=> d!260045 (=> res!381285 e!547044)))

(assert (=> d!260045 (= res!381285 ((_ is ElementMatch!2075) (regOne!4662 r!27177)))))

(assert (=> d!260045 (= (validRegex!628 (regOne!4662 r!27177)) e!547044)))

(declare-fun b!830212 () Bool)

(declare-fun e!547041 () Bool)

(assert (=> b!830212 (= e!547038 e!547041)))

(assert (=> b!830212 (= c!135138 ((_ is Union!2075) (regOne!4662 r!27177)))))

(declare-fun b!830213 () Bool)

(declare-fun res!381287 () Bool)

(assert (=> b!830213 (=> (not res!381287) (not e!547042))))

(assert (=> b!830213 (= res!381287 call!48828)))

(assert (=> b!830213 (= e!547041 e!547042)))

(declare-fun b!830214 () Bool)

(declare-fun res!381286 () Bool)

(assert (=> b!830214 (=> res!381286 e!547043)))

(assert (=> b!830214 (= res!381286 (not ((_ is Concat!3806) (regOne!4662 r!27177))))))

(assert (=> b!830214 (= e!547041 e!547043)))

(declare-fun bm!48825 () Bool)

(assert (=> bm!48825 (= call!48828 (validRegex!628 (ite c!135138 (regOne!4663 (regOne!4662 r!27177)) (regTwo!4662 (regOne!4662 r!27177)))))))

(declare-fun b!830215 () Bool)

(assert (=> b!830215 (= e!547040 call!48830)))

(declare-fun b!830216 () Bool)

(assert (=> b!830216 (= e!547044 e!547038)))

(assert (=> b!830216 (= c!135137 ((_ is Star!2075) (regOne!4662 r!27177)))))

(assert (= (and d!260045 (not res!381285)) b!830216))

(assert (= (and b!830216 c!135137) b!830210))

(assert (= (and b!830216 (not c!135137)) b!830212))

(assert (= (and b!830210 res!381288) b!830215))

(assert (= (and b!830212 c!135138) b!830213))

(assert (= (and b!830212 (not c!135138)) b!830214))

(assert (= (and b!830213 res!381287) b!830209))

(assert (= (and b!830214 (not res!381286)) b!830208))

(assert (= (and b!830208 res!381284) b!830211))

(assert (= (or b!830213 b!830211) bm!48825))

(assert (= (or b!830209 b!830208) bm!48823))

(assert (= (or b!830215 bm!48823) bm!48824))

(declare-fun m!1067319 () Bool)

(assert (=> bm!48824 m!1067319))

(declare-fun m!1067321 () Bool)

(assert (=> b!830210 m!1067321))

(declare-fun m!1067323 () Bool)

(assert (=> bm!48825 m!1067323))

(assert (=> b!830176 d!260045))

(declare-fun bm!48828 () Bool)

(declare-fun call!48834 () Bool)

(declare-fun call!48835 () Bool)

(assert (=> bm!48828 (= call!48834 call!48835)))

(declare-fun c!135150 () Bool)

(declare-fun c!135149 () Bool)

(declare-fun bm!48829 () Bool)

(assert (=> bm!48829 (= call!48835 (validRegex!628 (ite c!135149 (reg!2404 r!27177) (ite c!135150 (regTwo!4663 r!27177) (regOne!4662 r!27177)))))))

(declare-fun b!830237 () Bool)

(declare-fun e!547060 () Bool)

(declare-fun e!547056 () Bool)

(assert (=> b!830237 (= e!547060 e!547056)))

(declare-fun res!381289 () Bool)

(assert (=> b!830237 (=> (not res!381289) (not e!547056))))

(assert (=> b!830237 (= res!381289 call!48834)))

(declare-fun b!830238 () Bool)

(declare-fun e!547059 () Bool)

(assert (=> b!830238 (= e!547059 call!48834)))

(declare-fun b!830239 () Bool)

(declare-fun e!547055 () Bool)

(declare-fun e!547057 () Bool)

(assert (=> b!830239 (= e!547055 e!547057)))

(declare-fun res!381293 () Bool)

(assert (=> b!830239 (= res!381293 (not (nullable!526 (reg!2404 r!27177))))))

(assert (=> b!830239 (=> (not res!381293) (not e!547057))))

(declare-fun b!830240 () Bool)

(declare-fun call!48833 () Bool)

(assert (=> b!830240 (= e!547056 call!48833)))

(declare-fun d!260051 () Bool)

(declare-fun res!381290 () Bool)

(declare-fun e!547061 () Bool)

(assert (=> d!260051 (=> res!381290 e!547061)))

(assert (=> d!260051 (= res!381290 ((_ is ElementMatch!2075) r!27177))))

(assert (=> d!260051 (= (validRegex!628 r!27177) e!547061)))

(declare-fun b!830241 () Bool)

(declare-fun e!547058 () Bool)

(assert (=> b!830241 (= e!547055 e!547058)))

(assert (=> b!830241 (= c!135150 ((_ is Union!2075) r!27177))))

(declare-fun b!830242 () Bool)

(declare-fun res!381292 () Bool)

(assert (=> b!830242 (=> (not res!381292) (not e!547059))))

(assert (=> b!830242 (= res!381292 call!48833)))

(assert (=> b!830242 (= e!547058 e!547059)))

(declare-fun b!830243 () Bool)

(declare-fun res!381291 () Bool)

(assert (=> b!830243 (=> res!381291 e!547060)))

(assert (=> b!830243 (= res!381291 (not ((_ is Concat!3806) r!27177)))))

(assert (=> b!830243 (= e!547058 e!547060)))

(declare-fun bm!48830 () Bool)

(assert (=> bm!48830 (= call!48833 (validRegex!628 (ite c!135150 (regOne!4663 r!27177) (regTwo!4662 r!27177))))))

(declare-fun b!830244 () Bool)

(assert (=> b!830244 (= e!547057 call!48835)))

(declare-fun b!830245 () Bool)

(assert (=> b!830245 (= e!547061 e!547055)))

(assert (=> b!830245 (= c!135149 ((_ is Star!2075) r!27177))))

(assert (= (and d!260051 (not res!381290)) b!830245))

(assert (= (and b!830245 c!135149) b!830239))

(assert (= (and b!830245 (not c!135149)) b!830241))

(assert (= (and b!830239 res!381293) b!830244))

(assert (= (and b!830241 c!135150) b!830242))

(assert (= (and b!830241 (not c!135150)) b!830243))

(assert (= (and b!830242 res!381292) b!830238))

(assert (= (and b!830243 (not res!381291)) b!830237))

(assert (= (and b!830237 res!381289) b!830240))

(assert (= (or b!830242 b!830240) bm!48830))

(assert (= (or b!830238 b!830237) bm!48828))

(assert (= (or b!830244 bm!48828) bm!48829))

(declare-fun m!1067325 () Bool)

(assert (=> bm!48829 m!1067325))

(declare-fun m!1067327 () Bool)

(assert (=> b!830239 m!1067327))

(declare-fun m!1067329 () Bool)

(assert (=> bm!48830 m!1067329))

(assert (=> start!73998 d!260051))

(declare-fun d!260053 () Bool)

(declare-fun nullableFct!163 (Regex!2075) Bool)

(assert (=> d!260053 (= (nullable!526 (regOne!4662 r!27177)) (nullableFct!163 (regOne!4662 r!27177)))))

(declare-fun bs!229644 () Bool)

(assert (= bs!229644 d!260053))

(declare-fun m!1067331 () Bool)

(assert (=> bs!229644 m!1067331))

(assert (=> b!830180 d!260053))

(declare-fun d!260055 () Bool)

(declare-fun lt!317693 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1314 (List!8901) (InoxSet C!4720))

(assert (=> d!260055 (= lt!317693 (select (content!1314 (firstChars!46 (regOne!4662 r!27177))) c!13916))))

(declare-fun e!547066 () Bool)

(assert (=> d!260055 (= lt!317693 e!547066)))

(declare-fun res!381299 () Bool)

(assert (=> d!260055 (=> (not res!381299) (not e!547066))))

(assert (=> d!260055 (= res!381299 ((_ is Cons!8885) (firstChars!46 (regOne!4662 r!27177))))))

(assert (=> d!260055 (= (contains!1666 (firstChars!46 (regOne!4662 r!27177)) c!13916) lt!317693)))

(declare-fun b!830250 () Bool)

(declare-fun e!547067 () Bool)

(assert (=> b!830250 (= e!547066 e!547067)))

(declare-fun res!381298 () Bool)

(assert (=> b!830250 (=> res!381298 e!547067)))

(assert (=> b!830250 (= res!381298 (= (h!14286 (firstChars!46 (regOne!4662 r!27177))) c!13916))))

(declare-fun b!830251 () Bool)

(assert (=> b!830251 (= e!547067 (contains!1666 (t!93193 (firstChars!46 (regOne!4662 r!27177))) c!13916))))

(assert (= (and d!260055 res!381299) b!830250))

(assert (= (and b!830250 (not res!381298)) b!830251))

(assert (=> d!260055 m!1067307))

(declare-fun m!1067333 () Bool)

(assert (=> d!260055 m!1067333))

(declare-fun m!1067335 () Bool)

(assert (=> d!260055 m!1067335))

(declare-fun m!1067337 () Bool)

(assert (=> b!830251 m!1067337))

(assert (=> b!830179 d!260055))

(declare-fun bm!48863 () Bool)

(declare-fun call!48872 () List!8901)

(declare-fun call!48868 () List!8901)

(assert (=> bm!48863 (= call!48872 call!48868)))

(declare-fun bm!48864 () Bool)

(declare-fun call!48870 () List!8901)

(declare-fun c!135175 () Bool)

(assert (=> bm!48864 (= call!48870 (firstChars!46 (ite c!135175 (regOne!4663 (regOne!4662 r!27177)) (regTwo!4662 (regOne!4662 r!27177)))))))

(declare-fun b!830309 () Bool)

(declare-fun c!135176 () Bool)

(assert (=> b!830309 (= c!135176 ((_ is Star!2075) (regOne!4662 r!27177)))))

(declare-fun e!547108 () List!8901)

(declare-fun e!547107 () List!8901)

(assert (=> b!830309 (= e!547108 e!547107)))

(declare-fun b!830310 () Bool)

(declare-fun e!547104 () List!8901)

(assert (=> b!830310 (= e!547104 e!547108)))

(declare-fun c!135172 () Bool)

(assert (=> b!830310 (= c!135172 ((_ is ElementMatch!2075) (regOne!4662 r!27177)))))

(declare-fun b!830311 () Bool)

(assert (=> b!830311 (= e!547104 Nil!8885)))

(declare-fun b!830312 () Bool)

(assert (=> b!830312 (= e!547108 (Cons!8885 (c!135132 (regOne!4662 r!27177)) Nil!8885))))

(declare-fun d!260057 () Bool)

(declare-fun c!135174 () Bool)

(assert (=> d!260057 (= c!135174 (or ((_ is EmptyExpr!2075) (regOne!4662 r!27177)) ((_ is EmptyLang!2075) (regOne!4662 r!27177))))))

(assert (=> d!260057 (= (firstChars!46 (regOne!4662 r!27177)) e!547104)))

(declare-fun b!830313 () Bool)

(assert (=> b!830313 (= e!547107 call!48868)))

(declare-fun bm!48865 () Bool)

(declare-fun call!48871 () List!8901)

(declare-fun call!48869 () List!8901)

(declare-fun ++!2302 (List!8901 List!8901) List!8901)

(assert (=> bm!48865 (= call!48871 (++!2302 (ite c!135175 call!48870 call!48869) (ite c!135175 call!48872 call!48870)))))

(declare-fun b!830314 () Bool)

(declare-fun e!547106 () List!8901)

(assert (=> b!830314 (= e!547106 call!48869)))

(declare-fun b!830315 () Bool)

(assert (=> b!830315 (= e!547106 call!48871)))

(declare-fun b!830316 () Bool)

(declare-fun c!135173 () Bool)

(assert (=> b!830316 (= c!135173 (nullable!526 (regOne!4662 (regOne!4662 r!27177))))))

(declare-fun e!547105 () List!8901)

(assert (=> b!830316 (= e!547105 e!547106)))

(declare-fun bm!48866 () Bool)

(assert (=> bm!48866 (= call!48869 call!48872)))

(declare-fun b!830317 () Bool)

(assert (=> b!830317 (= e!547107 e!547105)))

(assert (=> b!830317 (= c!135175 ((_ is Union!2075) (regOne!4662 r!27177)))))

(declare-fun b!830318 () Bool)

(assert (=> b!830318 (= e!547105 call!48871)))

(declare-fun bm!48867 () Bool)

(assert (=> bm!48867 (= call!48868 (firstChars!46 (ite c!135176 (reg!2404 (regOne!4662 r!27177)) (ite c!135175 (regTwo!4663 (regOne!4662 r!27177)) (regOne!4662 (regOne!4662 r!27177))))))))

(assert (= (and d!260057 c!135174) b!830311))

(assert (= (and d!260057 (not c!135174)) b!830310))

(assert (= (and b!830310 c!135172) b!830312))

(assert (= (and b!830310 (not c!135172)) b!830309))

(assert (= (and b!830309 c!135176) b!830313))

(assert (= (and b!830309 (not c!135176)) b!830317))

(assert (= (and b!830317 c!135175) b!830318))

(assert (= (and b!830317 (not c!135175)) b!830316))

(assert (= (and b!830316 c!135173) b!830315))

(assert (= (and b!830316 (not c!135173)) b!830314))

(assert (= (or b!830315 b!830314) bm!48866))

(assert (= (or b!830318 bm!48866) bm!48863))

(assert (= (or b!830318 b!830315) bm!48864))

(assert (= (or b!830318 b!830315) bm!48865))

(assert (= (or b!830313 bm!48863) bm!48867))

(declare-fun m!1067351 () Bool)

(assert (=> bm!48864 m!1067351))

(declare-fun m!1067353 () Bool)

(assert (=> bm!48865 m!1067353))

(declare-fun m!1067355 () Bool)

(assert (=> b!830316 m!1067355))

(declare-fun m!1067357 () Bool)

(assert (=> bm!48867 m!1067357))

(assert (=> b!830179 d!260057))

(declare-fun b!830369 () Bool)

(declare-fun e!547136 () Int)

(declare-fun call!48888 () Int)

(declare-fun call!48890 () Int)

(assert (=> b!830369 (= e!547136 (+ 1 call!48888 call!48890))))

(declare-fun b!830370 () Bool)

(declare-fun e!547138 () Int)

(declare-fun e!547134 () Int)

(assert (=> b!830370 (= e!547138 e!547134)))

(declare-fun c!135205 () Bool)

(assert (=> b!830370 (= c!135205 ((_ is Concat!3806) (regOne!4662 r!27177)))))

(declare-fun b!830371 () Bool)

(declare-fun c!135203 () Bool)

(assert (=> b!830371 (= c!135203 ((_ is EmptyExpr!2075) (regOne!4662 r!27177)))))

(declare-fun e!547137 () Int)

(assert (=> b!830371 (= e!547134 e!547137)))

(declare-fun bm!48883 () Bool)

(declare-fun c!135202 () Bool)

(declare-fun call!48889 () Int)

(assert (=> bm!48883 (= call!48889 (RegexPrimitiveSize!94 (ite c!135205 (regOne!4662 (regOne!4662 r!27177)) (ite c!135202 (reg!2404 (regOne!4662 r!27177)) (regOne!4663 (regOne!4662 r!27177))))))))

(declare-fun bm!48884 () Bool)

(assert (=> bm!48884 (= call!48888 call!48889)))

(declare-fun bm!48885 () Bool)

(assert (=> bm!48885 (= call!48890 (RegexPrimitiveSize!94 (ite c!135205 (regTwo!4662 (regOne!4662 r!27177)) (regTwo!4663 (regOne!4662 r!27177)))))))

(declare-fun b!830372 () Bool)

(declare-fun e!547135 () Int)

(assert (=> b!830372 (= e!547135 (+ 1 call!48888))))

(declare-fun b!830373 () Bool)

(assert (=> b!830373 (= e!547136 0)))

(declare-fun d!260063 () Bool)

(declare-fun lt!317699 () Int)

(assert (=> d!260063 (>= lt!317699 0)))

(assert (=> d!260063 (= lt!317699 e!547138)))

(declare-fun c!135204 () Bool)

(assert (=> d!260063 (= c!135204 ((_ is ElementMatch!2075) (regOne!4662 r!27177)))))

(assert (=> d!260063 (= (RegexPrimitiveSize!94 (regOne!4662 r!27177)) lt!317699)))

(declare-fun b!830374 () Bool)

(declare-fun c!135206 () Bool)

(assert (=> b!830374 (= c!135206 ((_ is EmptyLang!2075) (regOne!4662 r!27177)))))

(assert (=> b!830374 (= e!547135 e!547136)))

(declare-fun b!830375 () Bool)

(assert (=> b!830375 (= e!547134 (+ 1 call!48889 call!48890))))

(declare-fun b!830376 () Bool)

(assert (=> b!830376 (= e!547138 1)))

(declare-fun b!830377 () Bool)

(assert (=> b!830377 (= e!547137 0)))

(declare-fun b!830378 () Bool)

(assert (=> b!830378 (= e!547137 e!547135)))

(assert (=> b!830378 (= c!135202 ((_ is Star!2075) (regOne!4662 r!27177)))))

(assert (= (and d!260063 c!135204) b!830376))

(assert (= (and d!260063 (not c!135204)) b!830370))

(assert (= (and b!830370 c!135205) b!830375))

(assert (= (and b!830370 (not c!135205)) b!830371))

(assert (= (and b!830371 c!135203) b!830377))

(assert (= (and b!830371 (not c!135203)) b!830378))

(assert (= (and b!830378 c!135202) b!830372))

(assert (= (and b!830378 (not c!135202)) b!830374))

(assert (= (and b!830374 c!135206) b!830373))

(assert (= (and b!830374 (not c!135206)) b!830369))

(assert (= (or b!830372 b!830369) bm!48884))

(assert (= (or b!830375 bm!48884) bm!48883))

(assert (= (or b!830375 b!830369) bm!48885))

(declare-fun m!1067365 () Bool)

(assert (=> bm!48883 m!1067365))

(declare-fun m!1067369 () Bool)

(assert (=> bm!48885 m!1067369))

(assert (=> b!830174 d!260063))

(declare-fun b!830389 () Bool)

(declare-fun e!547146 () Int)

(declare-fun call!48894 () Int)

(declare-fun call!48896 () Int)

(assert (=> b!830389 (= e!547146 (+ 1 call!48894 call!48896))))

(declare-fun b!830390 () Bool)

(declare-fun e!547148 () Int)

(declare-fun e!547144 () Int)

(assert (=> b!830390 (= e!547148 e!547144)))

(declare-fun c!135215 () Bool)

(assert (=> b!830390 (= c!135215 ((_ is Concat!3806) r!27177))))

(declare-fun b!830391 () Bool)

(declare-fun c!135213 () Bool)

(assert (=> b!830391 (= c!135213 ((_ is EmptyExpr!2075) r!27177))))

(declare-fun e!547147 () Int)

(assert (=> b!830391 (= e!547144 e!547147)))

(declare-fun bm!48889 () Bool)

(declare-fun c!135212 () Bool)

(declare-fun call!48895 () Int)

(assert (=> bm!48889 (= call!48895 (RegexPrimitiveSize!94 (ite c!135215 (regOne!4662 r!27177) (ite c!135212 (reg!2404 r!27177) (regOne!4663 r!27177)))))))

(declare-fun bm!48890 () Bool)

(assert (=> bm!48890 (= call!48894 call!48895)))

(declare-fun bm!48891 () Bool)

(assert (=> bm!48891 (= call!48896 (RegexPrimitiveSize!94 (ite c!135215 (regTwo!4662 r!27177) (regTwo!4663 r!27177))))))

(declare-fun b!830392 () Bool)

(declare-fun e!547145 () Int)

(assert (=> b!830392 (= e!547145 (+ 1 call!48894))))

(declare-fun b!830393 () Bool)

(assert (=> b!830393 (= e!547146 0)))

(declare-fun d!260069 () Bool)

(declare-fun lt!317701 () Int)

(assert (=> d!260069 (>= lt!317701 0)))

(assert (=> d!260069 (= lt!317701 e!547148)))

(declare-fun c!135214 () Bool)

(assert (=> d!260069 (= c!135214 ((_ is ElementMatch!2075) r!27177))))

(assert (=> d!260069 (= (RegexPrimitiveSize!94 r!27177) lt!317701)))

(declare-fun b!830394 () Bool)

(declare-fun c!135216 () Bool)

(assert (=> b!830394 (= c!135216 ((_ is EmptyLang!2075) r!27177))))

(assert (=> b!830394 (= e!547145 e!547146)))

(declare-fun b!830395 () Bool)

(assert (=> b!830395 (= e!547144 (+ 1 call!48895 call!48896))))

(declare-fun b!830396 () Bool)

(assert (=> b!830396 (= e!547148 1)))

(declare-fun b!830397 () Bool)

(assert (=> b!830397 (= e!547147 0)))

(declare-fun b!830398 () Bool)

(assert (=> b!830398 (= e!547147 e!547145)))

(assert (=> b!830398 (= c!135212 ((_ is Star!2075) r!27177))))

(assert (= (and d!260069 c!135214) b!830396))

(assert (= (and d!260069 (not c!135214)) b!830390))

(assert (= (and b!830390 c!135215) b!830395))

(assert (= (and b!830390 (not c!135215)) b!830391))

(assert (= (and b!830391 c!135213) b!830397))

(assert (= (and b!830391 (not c!135213)) b!830398))

(assert (= (and b!830398 c!135212) b!830392))

(assert (= (and b!830398 (not c!135212)) b!830394))

(assert (= (and b!830394 c!135216) b!830393))

(assert (= (and b!830394 (not c!135216)) b!830389))

(assert (= (or b!830392 b!830389) bm!48890))

(assert (= (or b!830395 bm!48890) bm!48889))

(assert (= (or b!830395 b!830389) bm!48891))

(declare-fun m!1067371 () Bool)

(assert (=> bm!48889 m!1067371))

(declare-fun m!1067375 () Bool)

(assert (=> bm!48891 m!1067375))

(assert (=> b!830174 d!260069))

(declare-fun d!260071 () Bool)

(declare-fun lt!317702 () Bool)

(assert (=> d!260071 (= lt!317702 (select (content!1314 (firstChars!46 r!27177)) c!13916))))

(declare-fun e!547150 () Bool)

(assert (=> d!260071 (= lt!317702 e!547150)))

(declare-fun res!381318 () Bool)

(assert (=> d!260071 (=> (not res!381318) (not e!547150))))

(assert (=> d!260071 (= res!381318 ((_ is Cons!8885) (firstChars!46 r!27177)))))

(assert (=> d!260071 (= (contains!1666 (firstChars!46 r!27177) c!13916) lt!317702)))

(declare-fun b!830399 () Bool)

(declare-fun e!547153 () Bool)

(assert (=> b!830399 (= e!547150 e!547153)))

(declare-fun res!381316 () Bool)

(assert (=> b!830399 (=> res!381316 e!547153)))

(assert (=> b!830399 (= res!381316 (= (h!14286 (firstChars!46 r!27177)) c!13916))))

(declare-fun b!830400 () Bool)

(assert (=> b!830400 (= e!547153 (contains!1666 (t!93193 (firstChars!46 r!27177)) c!13916))))

(assert (= (and d!260071 res!381318) b!830399))

(assert (= (and b!830399 (not res!381316)) b!830400))

(assert (=> d!260071 m!1067303))

(declare-fun m!1067377 () Bool)

(assert (=> d!260071 m!1067377))

(declare-fun m!1067379 () Bool)

(assert (=> d!260071 m!1067379))

(declare-fun m!1067381 () Bool)

(assert (=> b!830400 m!1067381))

(assert (=> b!830183 d!260071))

(declare-fun bm!48895 () Bool)

(declare-fun call!48904 () List!8901)

(declare-fun call!48900 () List!8901)

(assert (=> bm!48895 (= call!48904 call!48900)))

(declare-fun bm!48896 () Bool)

(declare-fun call!48902 () List!8901)

(declare-fun c!135222 () Bool)

(assert (=> bm!48896 (= call!48902 (firstChars!46 (ite c!135222 (regOne!4663 r!27177) (regTwo!4662 r!27177))))))

(declare-fun b!830410 () Bool)

(declare-fun c!135223 () Bool)

(assert (=> b!830410 (= c!135223 ((_ is Star!2075) r!27177))))

(declare-fun e!547162 () List!8901)

(declare-fun e!547161 () List!8901)

(assert (=> b!830410 (= e!547162 e!547161)))

(declare-fun b!830411 () Bool)

(declare-fun e!547158 () List!8901)

(assert (=> b!830411 (= e!547158 e!547162)))

(declare-fun c!135219 () Bool)

(assert (=> b!830411 (= c!135219 ((_ is ElementMatch!2075) r!27177))))

(declare-fun b!830412 () Bool)

(assert (=> b!830412 (= e!547158 Nil!8885)))

(declare-fun b!830413 () Bool)

(assert (=> b!830413 (= e!547162 (Cons!8885 (c!135132 r!27177) Nil!8885))))

(declare-fun d!260075 () Bool)

(declare-fun c!135221 () Bool)

(assert (=> d!260075 (= c!135221 (or ((_ is EmptyExpr!2075) r!27177) ((_ is EmptyLang!2075) r!27177)))))

(assert (=> d!260075 (= (firstChars!46 r!27177) e!547158)))

(declare-fun b!830414 () Bool)

(assert (=> b!830414 (= e!547161 call!48900)))

(declare-fun call!48901 () List!8901)

(declare-fun call!48903 () List!8901)

(declare-fun bm!48897 () Bool)

(assert (=> bm!48897 (= call!48903 (++!2302 (ite c!135222 call!48902 call!48901) (ite c!135222 call!48904 call!48902)))))

(declare-fun b!830415 () Bool)

(declare-fun e!547160 () List!8901)

(assert (=> b!830415 (= e!547160 call!48901)))

(declare-fun b!830416 () Bool)

(assert (=> b!830416 (= e!547160 call!48903)))

(declare-fun b!830417 () Bool)

(declare-fun c!135220 () Bool)

(assert (=> b!830417 (= c!135220 (nullable!526 (regOne!4662 r!27177)))))

(declare-fun e!547159 () List!8901)

(assert (=> b!830417 (= e!547159 e!547160)))

(declare-fun bm!48898 () Bool)

(assert (=> bm!48898 (= call!48901 call!48904)))

(declare-fun b!830418 () Bool)

(assert (=> b!830418 (= e!547161 e!547159)))

(assert (=> b!830418 (= c!135222 ((_ is Union!2075) r!27177))))

(declare-fun b!830419 () Bool)

(assert (=> b!830419 (= e!547159 call!48903)))

(declare-fun bm!48899 () Bool)

(assert (=> bm!48899 (= call!48900 (firstChars!46 (ite c!135223 (reg!2404 r!27177) (ite c!135222 (regTwo!4663 r!27177) (regOne!4662 r!27177)))))))

(assert (= (and d!260075 c!135221) b!830412))

(assert (= (and d!260075 (not c!135221)) b!830411))

(assert (= (and b!830411 c!135219) b!830413))

(assert (= (and b!830411 (not c!135219)) b!830410))

(assert (= (and b!830410 c!135223) b!830414))

(assert (= (and b!830410 (not c!135223)) b!830418))

(assert (= (and b!830418 c!135222) b!830419))

(assert (= (and b!830418 (not c!135222)) b!830417))

(assert (= (and b!830417 c!135220) b!830416))

(assert (= (and b!830417 (not c!135220)) b!830415))

(assert (= (or b!830416 b!830415) bm!48898))

(assert (= (or b!830419 bm!48898) bm!48895))

(assert (= (or b!830419 b!830416) bm!48896))

(assert (= (or b!830419 b!830416) bm!48897))

(assert (= (or b!830414 bm!48895) bm!48899))

(declare-fun m!1067391 () Bool)

(assert (=> bm!48896 m!1067391))

(declare-fun m!1067397 () Bool)

(assert (=> bm!48897 m!1067397))

(assert (=> b!830417 m!1067295))

(declare-fun m!1067399 () Bool)

(assert (=> bm!48899 m!1067399))

(assert (=> b!830183 d!260075))

(declare-fun e!547174 () Bool)

(assert (=> b!830181 (= tp!259910 e!547174)))

(declare-fun b!830453 () Bool)

(declare-fun tp!259934 () Bool)

(declare-fun tp!259932 () Bool)

(assert (=> b!830453 (= e!547174 (and tp!259934 tp!259932))))

(declare-fun b!830452 () Bool)

(assert (=> b!830452 (= e!547174 tp_is_empty!3873)))

(declare-fun b!830455 () Bool)

(declare-fun tp!259933 () Bool)

(declare-fun tp!259931 () Bool)

(assert (=> b!830455 (= e!547174 (and tp!259933 tp!259931))))

(declare-fun b!830454 () Bool)

(declare-fun tp!259935 () Bool)

(assert (=> b!830454 (= e!547174 tp!259935)))

(assert (= (and b!830181 ((_ is ElementMatch!2075) (reg!2404 r!27177))) b!830452))

(assert (= (and b!830181 ((_ is Concat!3806) (reg!2404 r!27177))) b!830453))

(assert (= (and b!830181 ((_ is Star!2075) (reg!2404 r!27177))) b!830454))

(assert (= (and b!830181 ((_ is Union!2075) (reg!2404 r!27177))) b!830455))

(declare-fun e!547175 () Bool)

(assert (=> b!830182 (= tp!259914 e!547175)))

(declare-fun b!830457 () Bool)

(declare-fun tp!259943 () Bool)

(declare-fun tp!259941 () Bool)

(assert (=> b!830457 (= e!547175 (and tp!259943 tp!259941))))

(declare-fun b!830456 () Bool)

(assert (=> b!830456 (= e!547175 tp_is_empty!3873)))

(declare-fun b!830459 () Bool)

(declare-fun tp!259942 () Bool)

(declare-fun tp!259940 () Bool)

(assert (=> b!830459 (= e!547175 (and tp!259942 tp!259940))))

(declare-fun b!830458 () Bool)

(declare-fun tp!259944 () Bool)

(assert (=> b!830458 (= e!547175 tp!259944)))

(assert (= (and b!830182 ((_ is ElementMatch!2075) (regOne!4663 r!27177))) b!830456))

(assert (= (and b!830182 ((_ is Concat!3806) (regOne!4663 r!27177))) b!830457))

(assert (= (and b!830182 ((_ is Star!2075) (regOne!4663 r!27177))) b!830458))

(assert (= (and b!830182 ((_ is Union!2075) (regOne!4663 r!27177))) b!830459))

(declare-fun e!547176 () Bool)

(assert (=> b!830182 (= tp!259913 e!547176)))

(declare-fun b!830461 () Bool)

(declare-fun tp!259948 () Bool)

(declare-fun tp!259946 () Bool)

(assert (=> b!830461 (= e!547176 (and tp!259948 tp!259946))))

(declare-fun b!830460 () Bool)

(assert (=> b!830460 (= e!547176 tp_is_empty!3873)))

(declare-fun b!830463 () Bool)

(declare-fun tp!259947 () Bool)

(declare-fun tp!259945 () Bool)

(assert (=> b!830463 (= e!547176 (and tp!259947 tp!259945))))

(declare-fun b!830462 () Bool)

(declare-fun tp!259949 () Bool)

(assert (=> b!830462 (= e!547176 tp!259949)))

(assert (= (and b!830182 ((_ is ElementMatch!2075) (regTwo!4663 r!27177))) b!830460))

(assert (= (and b!830182 ((_ is Concat!3806) (regTwo!4663 r!27177))) b!830461))

(assert (= (and b!830182 ((_ is Star!2075) (regTwo!4663 r!27177))) b!830462))

(assert (= (and b!830182 ((_ is Union!2075) (regTwo!4663 r!27177))) b!830463))

(declare-fun e!547177 () Bool)

(assert (=> b!830177 (= tp!259911 e!547177)))

(declare-fun b!830465 () Bool)

(declare-fun tp!259953 () Bool)

(declare-fun tp!259951 () Bool)

(assert (=> b!830465 (= e!547177 (and tp!259953 tp!259951))))

(declare-fun b!830464 () Bool)

(assert (=> b!830464 (= e!547177 tp_is_empty!3873)))

(declare-fun b!830467 () Bool)

(declare-fun tp!259952 () Bool)

(declare-fun tp!259950 () Bool)

(assert (=> b!830467 (= e!547177 (and tp!259952 tp!259950))))

(declare-fun b!830466 () Bool)

(declare-fun tp!259954 () Bool)

(assert (=> b!830466 (= e!547177 tp!259954)))

(assert (= (and b!830177 ((_ is ElementMatch!2075) (regOne!4662 r!27177))) b!830464))

(assert (= (and b!830177 ((_ is Concat!3806) (regOne!4662 r!27177))) b!830465))

(assert (= (and b!830177 ((_ is Star!2075) (regOne!4662 r!27177))) b!830466))

(assert (= (and b!830177 ((_ is Union!2075) (regOne!4662 r!27177))) b!830467))

(declare-fun e!547179 () Bool)

(assert (=> b!830177 (= tp!259912 e!547179)))

(declare-fun b!830473 () Bool)

(declare-fun tp!259963 () Bool)

(declare-fun tp!259961 () Bool)

(assert (=> b!830473 (= e!547179 (and tp!259963 tp!259961))))

(declare-fun b!830472 () Bool)

(assert (=> b!830472 (= e!547179 tp_is_empty!3873)))

(declare-fun b!830475 () Bool)

(declare-fun tp!259962 () Bool)

(declare-fun tp!259960 () Bool)

(assert (=> b!830475 (= e!547179 (and tp!259962 tp!259960))))

(declare-fun b!830474 () Bool)

(declare-fun tp!259964 () Bool)

(assert (=> b!830474 (= e!547179 tp!259964)))

(assert (= (and b!830177 ((_ is ElementMatch!2075) (regTwo!4662 r!27177))) b!830472))

(assert (= (and b!830177 ((_ is Concat!3806) (regTwo!4662 r!27177))) b!830473))

(assert (= (and b!830177 ((_ is Star!2075) (regTwo!4662 r!27177))) b!830474))

(assert (= (and b!830177 ((_ is Union!2075) (regTwo!4662 r!27177))) b!830475))

(check-sat (not b!830467) (not b!830465) (not bm!48897) (not bm!48830) (not b!830316) (not bm!48896) (not b!830473) (not b!830210) (not b!830461) (not b!830457) (not b!830462) (not b!830455) (not b!830239) (not bm!48885) (not bm!48864) (not bm!48824) (not b!830474) (not b!830466) tp_is_empty!3873 (not bm!48825) (not b!830400) (not b!830251) (not b!830475) (not bm!48883) (not bm!48829) (not b!830454) (not d!260071) (not d!260053) (not b!830458) (not bm!48899) (not bm!48891) (not b!830463) (not b!830459) (not bm!48865) (not bm!48889) (not b!830453) (not d!260055) (not b!830417) (not bm!48867))
(check-sat)
(get-model)

(declare-fun b!830492 () Bool)

(declare-fun e!547186 () Int)

(declare-fun call!48910 () Int)

(declare-fun call!48912 () Int)

(assert (=> b!830492 (= e!547186 (+ 1 call!48910 call!48912))))

(declare-fun b!830493 () Bool)

(declare-fun e!547188 () Int)

(declare-fun e!547184 () Int)

(assert (=> b!830493 (= e!547188 e!547184)))

(declare-fun c!135232 () Bool)

(assert (=> b!830493 (= c!135232 ((_ is Concat!3806) (ite c!135215 (regTwo!4662 r!27177) (regTwo!4663 r!27177))))))

(declare-fun b!830494 () Bool)

(declare-fun c!135230 () Bool)

(assert (=> b!830494 (= c!135230 ((_ is EmptyExpr!2075) (ite c!135215 (regTwo!4662 r!27177) (regTwo!4663 r!27177))))))

(declare-fun e!547187 () Int)

(assert (=> b!830494 (= e!547184 e!547187)))

(declare-fun bm!48905 () Bool)

(declare-fun c!135229 () Bool)

(declare-fun call!48911 () Int)

(assert (=> bm!48905 (= call!48911 (RegexPrimitiveSize!94 (ite c!135232 (regOne!4662 (ite c!135215 (regTwo!4662 r!27177) (regTwo!4663 r!27177))) (ite c!135229 (reg!2404 (ite c!135215 (regTwo!4662 r!27177) (regTwo!4663 r!27177))) (regOne!4663 (ite c!135215 (regTwo!4662 r!27177) (regTwo!4663 r!27177)))))))))

(declare-fun bm!48906 () Bool)

(assert (=> bm!48906 (= call!48910 call!48911)))

(declare-fun bm!48907 () Bool)

(assert (=> bm!48907 (= call!48912 (RegexPrimitiveSize!94 (ite c!135232 (regTwo!4662 (ite c!135215 (regTwo!4662 r!27177) (regTwo!4663 r!27177))) (regTwo!4663 (ite c!135215 (regTwo!4662 r!27177) (regTwo!4663 r!27177))))))))

(declare-fun b!830495 () Bool)

(declare-fun e!547185 () Int)

(assert (=> b!830495 (= e!547185 (+ 1 call!48910))))

(declare-fun b!830496 () Bool)

(assert (=> b!830496 (= e!547186 0)))

(declare-fun d!260081 () Bool)

(declare-fun lt!317704 () Int)

(assert (=> d!260081 (>= lt!317704 0)))

(assert (=> d!260081 (= lt!317704 e!547188)))

(declare-fun c!135231 () Bool)

(assert (=> d!260081 (= c!135231 ((_ is ElementMatch!2075) (ite c!135215 (regTwo!4662 r!27177) (regTwo!4663 r!27177))))))

(assert (=> d!260081 (= (RegexPrimitiveSize!94 (ite c!135215 (regTwo!4662 r!27177) (regTwo!4663 r!27177))) lt!317704)))

(declare-fun b!830497 () Bool)

(declare-fun c!135233 () Bool)

(assert (=> b!830497 (= c!135233 ((_ is EmptyLang!2075) (ite c!135215 (regTwo!4662 r!27177) (regTwo!4663 r!27177))))))

(assert (=> b!830497 (= e!547185 e!547186)))

(declare-fun b!830498 () Bool)

(assert (=> b!830498 (= e!547184 (+ 1 call!48911 call!48912))))

(declare-fun b!830499 () Bool)

(assert (=> b!830499 (= e!547188 1)))

(declare-fun b!830500 () Bool)

(assert (=> b!830500 (= e!547187 0)))

(declare-fun b!830501 () Bool)

(assert (=> b!830501 (= e!547187 e!547185)))

(assert (=> b!830501 (= c!135229 ((_ is Star!2075) (ite c!135215 (regTwo!4662 r!27177) (regTwo!4663 r!27177))))))

(assert (= (and d!260081 c!135231) b!830499))

(assert (= (and d!260081 (not c!135231)) b!830493))

(assert (= (and b!830493 c!135232) b!830498))

(assert (= (and b!830493 (not c!135232)) b!830494))

(assert (= (and b!830494 c!135230) b!830500))

(assert (= (and b!830494 (not c!135230)) b!830501))

(assert (= (and b!830501 c!135229) b!830495))

(assert (= (and b!830501 (not c!135229)) b!830497))

(assert (= (and b!830497 c!135233) b!830496))

(assert (= (and b!830497 (not c!135233)) b!830492))

(assert (= (or b!830495 b!830492) bm!48906))

(assert (= (or b!830498 bm!48906) bm!48905))

(assert (= (or b!830498 b!830492) bm!48907))

(declare-fun m!1067409 () Bool)

(assert (=> bm!48905 m!1067409))

(declare-fun m!1067411 () Bool)

(assert (=> bm!48907 m!1067411))

(assert (=> bm!48891 d!260081))

(declare-fun d!260083 () Bool)

(declare-fun lt!317705 () Bool)

(assert (=> d!260083 (= lt!317705 (select (content!1314 (t!93193 (firstChars!46 (regOne!4662 r!27177)))) c!13916))))

(declare-fun e!547189 () Bool)

(assert (=> d!260083 (= lt!317705 e!547189)))

(declare-fun res!381325 () Bool)

(assert (=> d!260083 (=> (not res!381325) (not e!547189))))

(assert (=> d!260083 (= res!381325 ((_ is Cons!8885) (t!93193 (firstChars!46 (regOne!4662 r!27177)))))))

(assert (=> d!260083 (= (contains!1666 (t!93193 (firstChars!46 (regOne!4662 r!27177))) c!13916) lt!317705)))

(declare-fun b!830502 () Bool)

(declare-fun e!547190 () Bool)

(assert (=> b!830502 (= e!547189 e!547190)))

(declare-fun res!381324 () Bool)

(assert (=> b!830502 (=> res!381324 e!547190)))

(assert (=> b!830502 (= res!381324 (= (h!14286 (t!93193 (firstChars!46 (regOne!4662 r!27177)))) c!13916))))

(declare-fun b!830503 () Bool)

(assert (=> b!830503 (= e!547190 (contains!1666 (t!93193 (t!93193 (firstChars!46 (regOne!4662 r!27177)))) c!13916))))

(assert (= (and d!260083 res!381325) b!830502))

(assert (= (and b!830502 (not res!381324)) b!830503))

(declare-fun m!1067413 () Bool)

(assert (=> d!260083 m!1067413))

(declare-fun m!1067415 () Bool)

(assert (=> d!260083 m!1067415))

(declare-fun m!1067417 () Bool)

(assert (=> b!830503 m!1067417))

(assert (=> b!830251 d!260083))

(declare-fun d!260085 () Bool)

(assert (=> d!260085 (= (nullable!526 (reg!2404 (regOne!4662 r!27177))) (nullableFct!163 (reg!2404 (regOne!4662 r!27177))))))

(declare-fun bs!229646 () Bool)

(assert (= bs!229646 d!260085))

(declare-fun m!1067419 () Bool)

(assert (=> bs!229646 m!1067419))

(assert (=> b!830210 d!260085))

(declare-fun d!260087 () Bool)

(assert (=> d!260087 (= (nullable!526 (reg!2404 r!27177)) (nullableFct!163 (reg!2404 r!27177)))))

(declare-fun bs!229647 () Bool)

(assert (= bs!229647 d!260087))

(declare-fun m!1067421 () Bool)

(assert (=> bs!229647 m!1067421))

(assert (=> b!830239 d!260087))

(declare-fun d!260089 () Bool)

(assert (=> d!260089 (= (nullable!526 (regOne!4662 (regOne!4662 r!27177))) (nullableFct!163 (regOne!4662 (regOne!4662 r!27177))))))

(declare-fun bs!229648 () Bool)

(assert (= bs!229648 d!260089))

(declare-fun m!1067423 () Bool)

(assert (=> bs!229648 m!1067423))

(assert (=> b!830316 d!260089))

(declare-fun d!260091 () Bool)

(declare-fun c!135236 () Bool)

(assert (=> d!260091 (= c!135236 ((_ is Nil!8885) (firstChars!46 r!27177)))))

(declare-fun e!547193 () (InoxSet C!4720))

(assert (=> d!260091 (= (content!1314 (firstChars!46 r!27177)) e!547193)))

(declare-fun b!830508 () Bool)

(assert (=> b!830508 (= e!547193 ((as const (Array C!4720 Bool)) false))))

(declare-fun b!830509 () Bool)

(assert (=> b!830509 (= e!547193 ((_ map or) (store ((as const (Array C!4720 Bool)) false) (h!14286 (firstChars!46 r!27177)) true) (content!1314 (t!93193 (firstChars!46 r!27177)))))))

(assert (= (and d!260091 c!135236) b!830508))

(assert (= (and d!260091 (not c!135236)) b!830509))

(declare-fun m!1067425 () Bool)

(assert (=> b!830509 m!1067425))

(declare-fun m!1067427 () Bool)

(assert (=> b!830509 m!1067427))

(assert (=> d!260071 d!260091))

(declare-fun bm!48908 () Bool)

(declare-fun call!48914 () Bool)

(declare-fun call!48915 () Bool)

(assert (=> bm!48908 (= call!48914 call!48915)))

(declare-fun bm!48909 () Bool)

(declare-fun c!135238 () Bool)

(declare-fun c!135237 () Bool)

(assert (=> bm!48909 (= call!48915 (validRegex!628 (ite c!135237 (reg!2404 (ite c!135137 (reg!2404 (regOne!4662 r!27177)) (ite c!135138 (regTwo!4663 (regOne!4662 r!27177)) (regOne!4662 (regOne!4662 r!27177))))) (ite c!135238 (regTwo!4663 (ite c!135137 (reg!2404 (regOne!4662 r!27177)) (ite c!135138 (regTwo!4663 (regOne!4662 r!27177)) (regOne!4662 (regOne!4662 r!27177))))) (regOne!4662 (ite c!135137 (reg!2404 (regOne!4662 r!27177)) (ite c!135138 (regTwo!4663 (regOne!4662 r!27177)) (regOne!4662 (regOne!4662 r!27177)))))))))))

(declare-fun b!830510 () Bool)

(declare-fun e!547199 () Bool)

(declare-fun e!547195 () Bool)

(assert (=> b!830510 (= e!547199 e!547195)))

(declare-fun res!381326 () Bool)

(assert (=> b!830510 (=> (not res!381326) (not e!547195))))

(assert (=> b!830510 (= res!381326 call!48914)))

(declare-fun b!830511 () Bool)

(declare-fun e!547198 () Bool)

(assert (=> b!830511 (= e!547198 call!48914)))

(declare-fun b!830512 () Bool)

(declare-fun e!547194 () Bool)

(declare-fun e!547196 () Bool)

(assert (=> b!830512 (= e!547194 e!547196)))

(declare-fun res!381330 () Bool)

(assert (=> b!830512 (= res!381330 (not (nullable!526 (reg!2404 (ite c!135137 (reg!2404 (regOne!4662 r!27177)) (ite c!135138 (regTwo!4663 (regOne!4662 r!27177)) (regOne!4662 (regOne!4662 r!27177))))))))))

(assert (=> b!830512 (=> (not res!381330) (not e!547196))))

(declare-fun b!830513 () Bool)

(declare-fun call!48913 () Bool)

(assert (=> b!830513 (= e!547195 call!48913)))

(declare-fun d!260093 () Bool)

(declare-fun res!381327 () Bool)

(declare-fun e!547200 () Bool)

(assert (=> d!260093 (=> res!381327 e!547200)))

(assert (=> d!260093 (= res!381327 ((_ is ElementMatch!2075) (ite c!135137 (reg!2404 (regOne!4662 r!27177)) (ite c!135138 (regTwo!4663 (regOne!4662 r!27177)) (regOne!4662 (regOne!4662 r!27177))))))))

(assert (=> d!260093 (= (validRegex!628 (ite c!135137 (reg!2404 (regOne!4662 r!27177)) (ite c!135138 (regTwo!4663 (regOne!4662 r!27177)) (regOne!4662 (regOne!4662 r!27177))))) e!547200)))

(declare-fun b!830514 () Bool)

(declare-fun e!547197 () Bool)

(assert (=> b!830514 (= e!547194 e!547197)))

(assert (=> b!830514 (= c!135238 ((_ is Union!2075) (ite c!135137 (reg!2404 (regOne!4662 r!27177)) (ite c!135138 (regTwo!4663 (regOne!4662 r!27177)) (regOne!4662 (regOne!4662 r!27177))))))))

(declare-fun b!830515 () Bool)

(declare-fun res!381329 () Bool)

(assert (=> b!830515 (=> (not res!381329) (not e!547198))))

(assert (=> b!830515 (= res!381329 call!48913)))

(assert (=> b!830515 (= e!547197 e!547198)))

(declare-fun b!830516 () Bool)

(declare-fun res!381328 () Bool)

(assert (=> b!830516 (=> res!381328 e!547199)))

(assert (=> b!830516 (= res!381328 (not ((_ is Concat!3806) (ite c!135137 (reg!2404 (regOne!4662 r!27177)) (ite c!135138 (regTwo!4663 (regOne!4662 r!27177)) (regOne!4662 (regOne!4662 r!27177)))))))))

(assert (=> b!830516 (= e!547197 e!547199)))

(declare-fun bm!48910 () Bool)

(assert (=> bm!48910 (= call!48913 (validRegex!628 (ite c!135238 (regOne!4663 (ite c!135137 (reg!2404 (regOne!4662 r!27177)) (ite c!135138 (regTwo!4663 (regOne!4662 r!27177)) (regOne!4662 (regOne!4662 r!27177))))) (regTwo!4662 (ite c!135137 (reg!2404 (regOne!4662 r!27177)) (ite c!135138 (regTwo!4663 (regOne!4662 r!27177)) (regOne!4662 (regOne!4662 r!27177))))))))))

(declare-fun b!830517 () Bool)

(assert (=> b!830517 (= e!547196 call!48915)))

(declare-fun b!830518 () Bool)

(assert (=> b!830518 (= e!547200 e!547194)))

(assert (=> b!830518 (= c!135237 ((_ is Star!2075) (ite c!135137 (reg!2404 (regOne!4662 r!27177)) (ite c!135138 (regTwo!4663 (regOne!4662 r!27177)) (regOne!4662 (regOne!4662 r!27177))))))))

(assert (= (and d!260093 (not res!381327)) b!830518))

(assert (= (and b!830518 c!135237) b!830512))

(assert (= (and b!830518 (not c!135237)) b!830514))

(assert (= (and b!830512 res!381330) b!830517))

(assert (= (and b!830514 c!135238) b!830515))

(assert (= (and b!830514 (not c!135238)) b!830516))

(assert (= (and b!830515 res!381329) b!830511))

(assert (= (and b!830516 (not res!381328)) b!830510))

(assert (= (and b!830510 res!381326) b!830513))

(assert (= (or b!830515 b!830513) bm!48910))

(assert (= (or b!830511 b!830510) bm!48908))

(assert (= (or b!830517 bm!48908) bm!48909))

(declare-fun m!1067429 () Bool)

(assert (=> bm!48909 m!1067429))

(declare-fun m!1067431 () Bool)

(assert (=> b!830512 m!1067431))

(declare-fun m!1067433 () Bool)

(assert (=> bm!48910 m!1067433))

(assert (=> bm!48824 d!260093))

(declare-fun bm!48911 () Bool)

(declare-fun call!48920 () List!8901)

(declare-fun call!48916 () List!8901)

(assert (=> bm!48911 (= call!48920 call!48916)))

(declare-fun call!48918 () List!8901)

(declare-fun c!135242 () Bool)

(declare-fun bm!48912 () Bool)

(assert (=> bm!48912 (= call!48918 (firstChars!46 (ite c!135242 (regOne!4663 (ite c!135222 (regOne!4663 r!27177) (regTwo!4662 r!27177))) (regTwo!4662 (ite c!135222 (regOne!4663 r!27177) (regTwo!4662 r!27177))))))))

(declare-fun b!830519 () Bool)

(declare-fun c!135243 () Bool)

(assert (=> b!830519 (= c!135243 ((_ is Star!2075) (ite c!135222 (regOne!4663 r!27177) (regTwo!4662 r!27177))))))

(declare-fun e!547205 () List!8901)

(declare-fun e!547204 () List!8901)

(assert (=> b!830519 (= e!547205 e!547204)))

(declare-fun b!830520 () Bool)

(declare-fun e!547201 () List!8901)

(assert (=> b!830520 (= e!547201 e!547205)))

(declare-fun c!135239 () Bool)

(assert (=> b!830520 (= c!135239 ((_ is ElementMatch!2075) (ite c!135222 (regOne!4663 r!27177) (regTwo!4662 r!27177))))))

(declare-fun b!830521 () Bool)

(assert (=> b!830521 (= e!547201 Nil!8885)))

(declare-fun b!830522 () Bool)

(assert (=> b!830522 (= e!547205 (Cons!8885 (c!135132 (ite c!135222 (regOne!4663 r!27177) (regTwo!4662 r!27177))) Nil!8885))))

(declare-fun d!260095 () Bool)

(declare-fun c!135241 () Bool)

(assert (=> d!260095 (= c!135241 (or ((_ is EmptyExpr!2075) (ite c!135222 (regOne!4663 r!27177) (regTwo!4662 r!27177))) ((_ is EmptyLang!2075) (ite c!135222 (regOne!4663 r!27177) (regTwo!4662 r!27177)))))))

(assert (=> d!260095 (= (firstChars!46 (ite c!135222 (regOne!4663 r!27177) (regTwo!4662 r!27177))) e!547201)))

(declare-fun b!830523 () Bool)

(assert (=> b!830523 (= e!547204 call!48916)))

(declare-fun bm!48913 () Bool)

(declare-fun call!48917 () List!8901)

(declare-fun call!48919 () List!8901)

(assert (=> bm!48913 (= call!48919 (++!2302 (ite c!135242 call!48918 call!48917) (ite c!135242 call!48920 call!48918)))))

(declare-fun b!830524 () Bool)

(declare-fun e!547203 () List!8901)

(assert (=> b!830524 (= e!547203 call!48917)))

(declare-fun b!830525 () Bool)

(assert (=> b!830525 (= e!547203 call!48919)))

(declare-fun b!830526 () Bool)

(declare-fun c!135240 () Bool)

(assert (=> b!830526 (= c!135240 (nullable!526 (regOne!4662 (ite c!135222 (regOne!4663 r!27177) (regTwo!4662 r!27177)))))))

(declare-fun e!547202 () List!8901)

(assert (=> b!830526 (= e!547202 e!547203)))

(declare-fun bm!48914 () Bool)

(assert (=> bm!48914 (= call!48917 call!48920)))

(declare-fun b!830527 () Bool)

(assert (=> b!830527 (= e!547204 e!547202)))

(assert (=> b!830527 (= c!135242 ((_ is Union!2075) (ite c!135222 (regOne!4663 r!27177) (regTwo!4662 r!27177))))))

(declare-fun b!830528 () Bool)

(assert (=> b!830528 (= e!547202 call!48919)))

(declare-fun bm!48915 () Bool)

(assert (=> bm!48915 (= call!48916 (firstChars!46 (ite c!135243 (reg!2404 (ite c!135222 (regOne!4663 r!27177) (regTwo!4662 r!27177))) (ite c!135242 (regTwo!4663 (ite c!135222 (regOne!4663 r!27177) (regTwo!4662 r!27177))) (regOne!4662 (ite c!135222 (regOne!4663 r!27177) (regTwo!4662 r!27177)))))))))

(assert (= (and d!260095 c!135241) b!830521))

(assert (= (and d!260095 (not c!135241)) b!830520))

(assert (= (and b!830520 c!135239) b!830522))

(assert (= (and b!830520 (not c!135239)) b!830519))

(assert (= (and b!830519 c!135243) b!830523))

(assert (= (and b!830519 (not c!135243)) b!830527))

(assert (= (and b!830527 c!135242) b!830528))

(assert (= (and b!830527 (not c!135242)) b!830526))

(assert (= (and b!830526 c!135240) b!830525))

(assert (= (and b!830526 (not c!135240)) b!830524))

(assert (= (or b!830525 b!830524) bm!48914))

(assert (= (or b!830528 bm!48914) bm!48911))

(assert (= (or b!830528 b!830525) bm!48912))

(assert (= (or b!830528 b!830525) bm!48913))

(assert (= (or b!830523 bm!48911) bm!48915))

(declare-fun m!1067435 () Bool)

(assert (=> bm!48912 m!1067435))

(declare-fun m!1067437 () Bool)

(assert (=> bm!48913 m!1067437))

(declare-fun m!1067439 () Bool)

(assert (=> b!830526 m!1067439))

(declare-fun m!1067441 () Bool)

(assert (=> bm!48915 m!1067441))

(assert (=> bm!48896 d!260095))

(declare-fun bm!48916 () Bool)

(declare-fun call!48925 () List!8901)

(declare-fun call!48921 () List!8901)

(assert (=> bm!48916 (= call!48925 call!48921)))

(declare-fun bm!48917 () Bool)

(declare-fun c!135247 () Bool)

(declare-fun call!48923 () List!8901)

(assert (=> bm!48917 (= call!48923 (firstChars!46 (ite c!135247 (regOne!4663 (ite c!135223 (reg!2404 r!27177) (ite c!135222 (regTwo!4663 r!27177) (regOne!4662 r!27177)))) (regTwo!4662 (ite c!135223 (reg!2404 r!27177) (ite c!135222 (regTwo!4663 r!27177) (regOne!4662 r!27177)))))))))

(declare-fun b!830529 () Bool)

(declare-fun c!135248 () Bool)

(assert (=> b!830529 (= c!135248 ((_ is Star!2075) (ite c!135223 (reg!2404 r!27177) (ite c!135222 (regTwo!4663 r!27177) (regOne!4662 r!27177)))))))

(declare-fun e!547210 () List!8901)

(declare-fun e!547209 () List!8901)

(assert (=> b!830529 (= e!547210 e!547209)))

(declare-fun b!830530 () Bool)

(declare-fun e!547206 () List!8901)

(assert (=> b!830530 (= e!547206 e!547210)))

(declare-fun c!135244 () Bool)

(assert (=> b!830530 (= c!135244 ((_ is ElementMatch!2075) (ite c!135223 (reg!2404 r!27177) (ite c!135222 (regTwo!4663 r!27177) (regOne!4662 r!27177)))))))

(declare-fun b!830531 () Bool)

(assert (=> b!830531 (= e!547206 Nil!8885)))

(declare-fun b!830532 () Bool)

(assert (=> b!830532 (= e!547210 (Cons!8885 (c!135132 (ite c!135223 (reg!2404 r!27177) (ite c!135222 (regTwo!4663 r!27177) (regOne!4662 r!27177)))) Nil!8885))))

(declare-fun c!135246 () Bool)

(declare-fun d!260097 () Bool)

(assert (=> d!260097 (= c!135246 (or ((_ is EmptyExpr!2075) (ite c!135223 (reg!2404 r!27177) (ite c!135222 (regTwo!4663 r!27177) (regOne!4662 r!27177)))) ((_ is EmptyLang!2075) (ite c!135223 (reg!2404 r!27177) (ite c!135222 (regTwo!4663 r!27177) (regOne!4662 r!27177))))))))

(assert (=> d!260097 (= (firstChars!46 (ite c!135223 (reg!2404 r!27177) (ite c!135222 (regTwo!4663 r!27177) (regOne!4662 r!27177)))) e!547206)))

(declare-fun b!830533 () Bool)

(assert (=> b!830533 (= e!547209 call!48921)))

(declare-fun bm!48918 () Bool)

(declare-fun call!48924 () List!8901)

(declare-fun call!48922 () List!8901)

(assert (=> bm!48918 (= call!48924 (++!2302 (ite c!135247 call!48923 call!48922) (ite c!135247 call!48925 call!48923)))))

(declare-fun b!830534 () Bool)

(declare-fun e!547208 () List!8901)

(assert (=> b!830534 (= e!547208 call!48922)))

(declare-fun b!830535 () Bool)

(assert (=> b!830535 (= e!547208 call!48924)))

(declare-fun c!135245 () Bool)

(declare-fun b!830536 () Bool)

(assert (=> b!830536 (= c!135245 (nullable!526 (regOne!4662 (ite c!135223 (reg!2404 r!27177) (ite c!135222 (regTwo!4663 r!27177) (regOne!4662 r!27177))))))))

(declare-fun e!547207 () List!8901)

(assert (=> b!830536 (= e!547207 e!547208)))

(declare-fun bm!48919 () Bool)

(assert (=> bm!48919 (= call!48922 call!48925)))

(declare-fun b!830537 () Bool)

(assert (=> b!830537 (= e!547209 e!547207)))

(assert (=> b!830537 (= c!135247 ((_ is Union!2075) (ite c!135223 (reg!2404 r!27177) (ite c!135222 (regTwo!4663 r!27177) (regOne!4662 r!27177)))))))

(declare-fun b!830538 () Bool)

(assert (=> b!830538 (= e!547207 call!48924)))

(declare-fun bm!48920 () Bool)

(assert (=> bm!48920 (= call!48921 (firstChars!46 (ite c!135248 (reg!2404 (ite c!135223 (reg!2404 r!27177) (ite c!135222 (regTwo!4663 r!27177) (regOne!4662 r!27177)))) (ite c!135247 (regTwo!4663 (ite c!135223 (reg!2404 r!27177) (ite c!135222 (regTwo!4663 r!27177) (regOne!4662 r!27177)))) (regOne!4662 (ite c!135223 (reg!2404 r!27177) (ite c!135222 (regTwo!4663 r!27177) (regOne!4662 r!27177))))))))))

(assert (= (and d!260097 c!135246) b!830531))

(assert (= (and d!260097 (not c!135246)) b!830530))

(assert (= (and b!830530 c!135244) b!830532))

(assert (= (and b!830530 (not c!135244)) b!830529))

(assert (= (and b!830529 c!135248) b!830533))

(assert (= (and b!830529 (not c!135248)) b!830537))

(assert (= (and b!830537 c!135247) b!830538))

(assert (= (and b!830537 (not c!135247)) b!830536))

(assert (= (and b!830536 c!135245) b!830535))

(assert (= (and b!830536 (not c!135245)) b!830534))

(assert (= (or b!830535 b!830534) bm!48919))

(assert (= (or b!830538 bm!48919) bm!48916))

(assert (= (or b!830538 b!830535) bm!48917))

(assert (= (or b!830538 b!830535) bm!48918))

(assert (= (or b!830533 bm!48916) bm!48920))

(declare-fun m!1067443 () Bool)

(assert (=> bm!48917 m!1067443))

(declare-fun m!1067445 () Bool)

(assert (=> bm!48918 m!1067445))

(declare-fun m!1067447 () Bool)

(assert (=> b!830536 m!1067447))

(declare-fun m!1067449 () Bool)

(assert (=> bm!48920 m!1067449))

(assert (=> bm!48899 d!260097))

(declare-fun bm!48921 () Bool)

(declare-fun call!48927 () Bool)

(declare-fun call!48928 () Bool)

(assert (=> bm!48921 (= call!48927 call!48928)))

(declare-fun bm!48922 () Bool)

(declare-fun c!135250 () Bool)

(declare-fun c!135249 () Bool)

(assert (=> bm!48922 (= call!48928 (validRegex!628 (ite c!135249 (reg!2404 (ite c!135149 (reg!2404 r!27177) (ite c!135150 (regTwo!4663 r!27177) (regOne!4662 r!27177)))) (ite c!135250 (regTwo!4663 (ite c!135149 (reg!2404 r!27177) (ite c!135150 (regTwo!4663 r!27177) (regOne!4662 r!27177)))) (regOne!4662 (ite c!135149 (reg!2404 r!27177) (ite c!135150 (regTwo!4663 r!27177) (regOne!4662 r!27177))))))))))

(declare-fun b!830539 () Bool)

(declare-fun e!547216 () Bool)

(declare-fun e!547212 () Bool)

(assert (=> b!830539 (= e!547216 e!547212)))

(declare-fun res!381331 () Bool)

(assert (=> b!830539 (=> (not res!381331) (not e!547212))))

(assert (=> b!830539 (= res!381331 call!48927)))

(declare-fun b!830540 () Bool)

(declare-fun e!547215 () Bool)

(assert (=> b!830540 (= e!547215 call!48927)))

(declare-fun b!830541 () Bool)

(declare-fun e!547211 () Bool)

(declare-fun e!547213 () Bool)

(assert (=> b!830541 (= e!547211 e!547213)))

(declare-fun res!381335 () Bool)

(assert (=> b!830541 (= res!381335 (not (nullable!526 (reg!2404 (ite c!135149 (reg!2404 r!27177) (ite c!135150 (regTwo!4663 r!27177) (regOne!4662 r!27177)))))))))

(assert (=> b!830541 (=> (not res!381335) (not e!547213))))

(declare-fun b!830542 () Bool)

(declare-fun call!48926 () Bool)

(assert (=> b!830542 (= e!547212 call!48926)))

(declare-fun d!260099 () Bool)

(declare-fun res!381332 () Bool)

(declare-fun e!547217 () Bool)

(assert (=> d!260099 (=> res!381332 e!547217)))

(assert (=> d!260099 (= res!381332 ((_ is ElementMatch!2075) (ite c!135149 (reg!2404 r!27177) (ite c!135150 (regTwo!4663 r!27177) (regOne!4662 r!27177)))))))

(assert (=> d!260099 (= (validRegex!628 (ite c!135149 (reg!2404 r!27177) (ite c!135150 (regTwo!4663 r!27177) (regOne!4662 r!27177)))) e!547217)))

(declare-fun b!830543 () Bool)

(declare-fun e!547214 () Bool)

(assert (=> b!830543 (= e!547211 e!547214)))

(assert (=> b!830543 (= c!135250 ((_ is Union!2075) (ite c!135149 (reg!2404 r!27177) (ite c!135150 (regTwo!4663 r!27177) (regOne!4662 r!27177)))))))

(declare-fun b!830544 () Bool)

(declare-fun res!381334 () Bool)

(assert (=> b!830544 (=> (not res!381334) (not e!547215))))

(assert (=> b!830544 (= res!381334 call!48926)))

(assert (=> b!830544 (= e!547214 e!547215)))

(declare-fun b!830545 () Bool)

(declare-fun res!381333 () Bool)

(assert (=> b!830545 (=> res!381333 e!547216)))

(assert (=> b!830545 (= res!381333 (not ((_ is Concat!3806) (ite c!135149 (reg!2404 r!27177) (ite c!135150 (regTwo!4663 r!27177) (regOne!4662 r!27177))))))))

(assert (=> b!830545 (= e!547214 e!547216)))

(declare-fun bm!48923 () Bool)

(assert (=> bm!48923 (= call!48926 (validRegex!628 (ite c!135250 (regOne!4663 (ite c!135149 (reg!2404 r!27177) (ite c!135150 (regTwo!4663 r!27177) (regOne!4662 r!27177)))) (regTwo!4662 (ite c!135149 (reg!2404 r!27177) (ite c!135150 (regTwo!4663 r!27177) (regOne!4662 r!27177)))))))))

(declare-fun b!830546 () Bool)

(assert (=> b!830546 (= e!547213 call!48928)))

(declare-fun b!830547 () Bool)

(assert (=> b!830547 (= e!547217 e!547211)))

(assert (=> b!830547 (= c!135249 ((_ is Star!2075) (ite c!135149 (reg!2404 r!27177) (ite c!135150 (regTwo!4663 r!27177) (regOne!4662 r!27177)))))))

(assert (= (and d!260099 (not res!381332)) b!830547))

(assert (= (and b!830547 c!135249) b!830541))

(assert (= (and b!830547 (not c!135249)) b!830543))

(assert (= (and b!830541 res!381335) b!830546))

(assert (= (and b!830543 c!135250) b!830544))

(assert (= (and b!830543 (not c!135250)) b!830545))

(assert (= (and b!830544 res!381334) b!830540))

(assert (= (and b!830545 (not res!381333)) b!830539))

(assert (= (and b!830539 res!381331) b!830542))

(assert (= (or b!830544 b!830542) bm!48923))

(assert (= (or b!830540 b!830539) bm!48921))

(assert (= (or b!830546 bm!48921) bm!48922))

(declare-fun m!1067451 () Bool)

(assert (=> bm!48922 m!1067451))

(declare-fun m!1067453 () Bool)

(assert (=> b!830541 m!1067453))

(declare-fun m!1067455 () Bool)

(assert (=> bm!48923 m!1067455))

(assert (=> bm!48829 d!260099))

(declare-fun b!830548 () Bool)

(declare-fun e!547220 () Int)

(declare-fun call!48929 () Int)

(declare-fun call!48931 () Int)

(assert (=> b!830548 (= e!547220 (+ 1 call!48929 call!48931))))

(declare-fun b!830549 () Bool)

(declare-fun e!547222 () Int)

(declare-fun e!547218 () Int)

(assert (=> b!830549 (= e!547222 e!547218)))

(declare-fun c!135254 () Bool)

(assert (=> b!830549 (= c!135254 ((_ is Concat!3806) (ite c!135215 (regOne!4662 r!27177) (ite c!135212 (reg!2404 r!27177) (regOne!4663 r!27177)))))))

(declare-fun c!135252 () Bool)

(declare-fun b!830550 () Bool)

(assert (=> b!830550 (= c!135252 ((_ is EmptyExpr!2075) (ite c!135215 (regOne!4662 r!27177) (ite c!135212 (reg!2404 r!27177) (regOne!4663 r!27177)))))))

(declare-fun e!547221 () Int)

(assert (=> b!830550 (= e!547218 e!547221)))

(declare-fun c!135251 () Bool)

(declare-fun bm!48924 () Bool)

(declare-fun call!48930 () Int)

(assert (=> bm!48924 (= call!48930 (RegexPrimitiveSize!94 (ite c!135254 (regOne!4662 (ite c!135215 (regOne!4662 r!27177) (ite c!135212 (reg!2404 r!27177) (regOne!4663 r!27177)))) (ite c!135251 (reg!2404 (ite c!135215 (regOne!4662 r!27177) (ite c!135212 (reg!2404 r!27177) (regOne!4663 r!27177)))) (regOne!4663 (ite c!135215 (regOne!4662 r!27177) (ite c!135212 (reg!2404 r!27177) (regOne!4663 r!27177))))))))))

(declare-fun bm!48925 () Bool)

(assert (=> bm!48925 (= call!48929 call!48930)))

(declare-fun bm!48926 () Bool)

(assert (=> bm!48926 (= call!48931 (RegexPrimitiveSize!94 (ite c!135254 (regTwo!4662 (ite c!135215 (regOne!4662 r!27177) (ite c!135212 (reg!2404 r!27177) (regOne!4663 r!27177)))) (regTwo!4663 (ite c!135215 (regOne!4662 r!27177) (ite c!135212 (reg!2404 r!27177) (regOne!4663 r!27177)))))))))

(declare-fun b!830551 () Bool)

(declare-fun e!547219 () Int)

(assert (=> b!830551 (= e!547219 (+ 1 call!48929))))

(declare-fun b!830552 () Bool)

(assert (=> b!830552 (= e!547220 0)))

(declare-fun d!260101 () Bool)

(declare-fun lt!317706 () Int)

(assert (=> d!260101 (>= lt!317706 0)))

(assert (=> d!260101 (= lt!317706 e!547222)))

(declare-fun c!135253 () Bool)

(assert (=> d!260101 (= c!135253 ((_ is ElementMatch!2075) (ite c!135215 (regOne!4662 r!27177) (ite c!135212 (reg!2404 r!27177) (regOne!4663 r!27177)))))))

(assert (=> d!260101 (= (RegexPrimitiveSize!94 (ite c!135215 (regOne!4662 r!27177) (ite c!135212 (reg!2404 r!27177) (regOne!4663 r!27177)))) lt!317706)))

(declare-fun c!135255 () Bool)

(declare-fun b!830553 () Bool)

(assert (=> b!830553 (= c!135255 ((_ is EmptyLang!2075) (ite c!135215 (regOne!4662 r!27177) (ite c!135212 (reg!2404 r!27177) (regOne!4663 r!27177)))))))

(assert (=> b!830553 (= e!547219 e!547220)))

(declare-fun b!830554 () Bool)

(assert (=> b!830554 (= e!547218 (+ 1 call!48930 call!48931))))

(declare-fun b!830555 () Bool)

(assert (=> b!830555 (= e!547222 1)))

(declare-fun b!830556 () Bool)

(assert (=> b!830556 (= e!547221 0)))

(declare-fun b!830557 () Bool)

(assert (=> b!830557 (= e!547221 e!547219)))

(assert (=> b!830557 (= c!135251 ((_ is Star!2075) (ite c!135215 (regOne!4662 r!27177) (ite c!135212 (reg!2404 r!27177) (regOne!4663 r!27177)))))))

(assert (= (and d!260101 c!135253) b!830555))

(assert (= (and d!260101 (not c!135253)) b!830549))

(assert (= (and b!830549 c!135254) b!830554))

(assert (= (and b!830549 (not c!135254)) b!830550))

(assert (= (and b!830550 c!135252) b!830556))

(assert (= (and b!830550 (not c!135252)) b!830557))

(assert (= (and b!830557 c!135251) b!830551))

(assert (= (and b!830557 (not c!135251)) b!830553))

(assert (= (and b!830553 c!135255) b!830552))

(assert (= (and b!830553 (not c!135255)) b!830548))

(assert (= (or b!830551 b!830548) bm!48925))

(assert (= (or b!830554 bm!48925) bm!48924))

(assert (= (or b!830554 b!830548) bm!48926))

(declare-fun m!1067457 () Bool)

(assert (=> bm!48924 m!1067457))

(declare-fun m!1067459 () Bool)

(assert (=> bm!48926 m!1067459))

(assert (=> bm!48889 d!260101))

(declare-fun lt!317709 () List!8901)

(declare-fun e!547228 () Bool)

(declare-fun b!830569 () Bool)

(assert (=> b!830569 (= e!547228 (or (not (= (ite c!135175 call!48872 call!48870) Nil!8885)) (= lt!317709 (ite c!135175 call!48870 call!48869))))))

(declare-fun d!260103 () Bool)

(assert (=> d!260103 e!547228))

(declare-fun res!381340 () Bool)

(assert (=> d!260103 (=> (not res!381340) (not e!547228))))

(assert (=> d!260103 (= res!381340 (= (content!1314 lt!317709) ((_ map or) (content!1314 (ite c!135175 call!48870 call!48869)) (content!1314 (ite c!135175 call!48872 call!48870)))))))

(declare-fun e!547227 () List!8901)

(assert (=> d!260103 (= lt!317709 e!547227)))

(declare-fun c!135258 () Bool)

(assert (=> d!260103 (= c!135258 ((_ is Nil!8885) (ite c!135175 call!48870 call!48869)))))

(assert (=> d!260103 (= (++!2302 (ite c!135175 call!48870 call!48869) (ite c!135175 call!48872 call!48870)) lt!317709)))

(declare-fun b!830567 () Bool)

(assert (=> b!830567 (= e!547227 (Cons!8885 (h!14286 (ite c!135175 call!48870 call!48869)) (++!2302 (t!93193 (ite c!135175 call!48870 call!48869)) (ite c!135175 call!48872 call!48870))))))

(declare-fun b!830568 () Bool)

(declare-fun res!381341 () Bool)

(assert (=> b!830568 (=> (not res!381341) (not e!547228))))

(declare-fun size!7479 (List!8901) Int)

(assert (=> b!830568 (= res!381341 (= (size!7479 lt!317709) (+ (size!7479 (ite c!135175 call!48870 call!48869)) (size!7479 (ite c!135175 call!48872 call!48870)))))))

(declare-fun b!830566 () Bool)

(assert (=> b!830566 (= e!547227 (ite c!135175 call!48872 call!48870))))

(assert (= (and d!260103 c!135258) b!830566))

(assert (= (and d!260103 (not c!135258)) b!830567))

(assert (= (and d!260103 res!381340) b!830568))

(assert (= (and b!830568 res!381341) b!830569))

(declare-fun m!1067461 () Bool)

(assert (=> d!260103 m!1067461))

(declare-fun m!1067463 () Bool)

(assert (=> d!260103 m!1067463))

(declare-fun m!1067465 () Bool)

(assert (=> d!260103 m!1067465))

(declare-fun m!1067467 () Bool)

(assert (=> b!830567 m!1067467))

(declare-fun m!1067469 () Bool)

(assert (=> b!830568 m!1067469))

(declare-fun m!1067471 () Bool)

(assert (=> b!830568 m!1067471))

(declare-fun m!1067473 () Bool)

(assert (=> b!830568 m!1067473))

(assert (=> bm!48865 d!260103))

(assert (=> b!830417 d!260053))

(declare-fun bm!48927 () Bool)

(declare-fun call!48933 () Bool)

(declare-fun call!48934 () Bool)

(assert (=> bm!48927 (= call!48933 call!48934)))

(declare-fun bm!48928 () Bool)

(declare-fun c!135259 () Bool)

(declare-fun c!135260 () Bool)

(assert (=> bm!48928 (= call!48934 (validRegex!628 (ite c!135259 (reg!2404 (ite c!135138 (regOne!4663 (regOne!4662 r!27177)) (regTwo!4662 (regOne!4662 r!27177)))) (ite c!135260 (regTwo!4663 (ite c!135138 (regOne!4663 (regOne!4662 r!27177)) (regTwo!4662 (regOne!4662 r!27177)))) (regOne!4662 (ite c!135138 (regOne!4663 (regOne!4662 r!27177)) (regTwo!4662 (regOne!4662 r!27177))))))))))

(declare-fun b!830570 () Bool)

(declare-fun e!547234 () Bool)

(declare-fun e!547230 () Bool)

(assert (=> b!830570 (= e!547234 e!547230)))

(declare-fun res!381342 () Bool)

(assert (=> b!830570 (=> (not res!381342) (not e!547230))))

(assert (=> b!830570 (= res!381342 call!48933)))

(declare-fun b!830571 () Bool)

(declare-fun e!547233 () Bool)

(assert (=> b!830571 (= e!547233 call!48933)))

(declare-fun b!830572 () Bool)

(declare-fun e!547229 () Bool)

(declare-fun e!547231 () Bool)

(assert (=> b!830572 (= e!547229 e!547231)))

(declare-fun res!381346 () Bool)

(assert (=> b!830572 (= res!381346 (not (nullable!526 (reg!2404 (ite c!135138 (regOne!4663 (regOne!4662 r!27177)) (regTwo!4662 (regOne!4662 r!27177)))))))))

(assert (=> b!830572 (=> (not res!381346) (not e!547231))))

(declare-fun b!830573 () Bool)

(declare-fun call!48932 () Bool)

(assert (=> b!830573 (= e!547230 call!48932)))

(declare-fun d!260105 () Bool)

(declare-fun res!381343 () Bool)

(declare-fun e!547235 () Bool)

(assert (=> d!260105 (=> res!381343 e!547235)))

(assert (=> d!260105 (= res!381343 ((_ is ElementMatch!2075) (ite c!135138 (regOne!4663 (regOne!4662 r!27177)) (regTwo!4662 (regOne!4662 r!27177)))))))

(assert (=> d!260105 (= (validRegex!628 (ite c!135138 (regOne!4663 (regOne!4662 r!27177)) (regTwo!4662 (regOne!4662 r!27177)))) e!547235)))

(declare-fun b!830574 () Bool)

(declare-fun e!547232 () Bool)

(assert (=> b!830574 (= e!547229 e!547232)))

(assert (=> b!830574 (= c!135260 ((_ is Union!2075) (ite c!135138 (regOne!4663 (regOne!4662 r!27177)) (regTwo!4662 (regOne!4662 r!27177)))))))

(declare-fun b!830575 () Bool)

(declare-fun res!381345 () Bool)

(assert (=> b!830575 (=> (not res!381345) (not e!547233))))

(assert (=> b!830575 (= res!381345 call!48932)))

(assert (=> b!830575 (= e!547232 e!547233)))

(declare-fun b!830576 () Bool)

(declare-fun res!381344 () Bool)

(assert (=> b!830576 (=> res!381344 e!547234)))

(assert (=> b!830576 (= res!381344 (not ((_ is Concat!3806) (ite c!135138 (regOne!4663 (regOne!4662 r!27177)) (regTwo!4662 (regOne!4662 r!27177))))))))

(assert (=> b!830576 (= e!547232 e!547234)))

(declare-fun bm!48929 () Bool)

(assert (=> bm!48929 (= call!48932 (validRegex!628 (ite c!135260 (regOne!4663 (ite c!135138 (regOne!4663 (regOne!4662 r!27177)) (regTwo!4662 (regOne!4662 r!27177)))) (regTwo!4662 (ite c!135138 (regOne!4663 (regOne!4662 r!27177)) (regTwo!4662 (regOne!4662 r!27177)))))))))

(declare-fun b!830577 () Bool)

(assert (=> b!830577 (= e!547231 call!48934)))

(declare-fun b!830578 () Bool)

(assert (=> b!830578 (= e!547235 e!547229)))

(assert (=> b!830578 (= c!135259 ((_ is Star!2075) (ite c!135138 (regOne!4663 (regOne!4662 r!27177)) (regTwo!4662 (regOne!4662 r!27177)))))))

(assert (= (and d!260105 (not res!381343)) b!830578))

(assert (= (and b!830578 c!135259) b!830572))

(assert (= (and b!830578 (not c!135259)) b!830574))

(assert (= (and b!830572 res!381346) b!830577))

(assert (= (and b!830574 c!135260) b!830575))

(assert (= (and b!830574 (not c!135260)) b!830576))

(assert (= (and b!830575 res!381345) b!830571))

(assert (= (and b!830576 (not res!381344)) b!830570))

(assert (= (and b!830570 res!381342) b!830573))

(assert (= (or b!830575 b!830573) bm!48929))

(assert (= (or b!830571 b!830570) bm!48927))

(assert (= (or b!830577 bm!48927) bm!48928))

(declare-fun m!1067475 () Bool)

(assert (=> bm!48928 m!1067475))

(declare-fun m!1067477 () Bool)

(assert (=> b!830572 m!1067477))

(declare-fun m!1067479 () Bool)

(assert (=> bm!48929 m!1067479))

(assert (=> bm!48825 d!260105))

(declare-fun d!260107 () Bool)

(declare-fun lt!317710 () Bool)

(assert (=> d!260107 (= lt!317710 (select (content!1314 (t!93193 (firstChars!46 r!27177))) c!13916))))

(declare-fun e!547236 () Bool)

(assert (=> d!260107 (= lt!317710 e!547236)))

(declare-fun res!381348 () Bool)

(assert (=> d!260107 (=> (not res!381348) (not e!547236))))

(assert (=> d!260107 (= res!381348 ((_ is Cons!8885) (t!93193 (firstChars!46 r!27177))))))

(assert (=> d!260107 (= (contains!1666 (t!93193 (firstChars!46 r!27177)) c!13916) lt!317710)))

(declare-fun b!830579 () Bool)

(declare-fun e!547237 () Bool)

(assert (=> b!830579 (= e!547236 e!547237)))

(declare-fun res!381347 () Bool)

(assert (=> b!830579 (=> res!381347 e!547237)))

(assert (=> b!830579 (= res!381347 (= (h!14286 (t!93193 (firstChars!46 r!27177))) c!13916))))

(declare-fun b!830580 () Bool)

(assert (=> b!830580 (= e!547237 (contains!1666 (t!93193 (t!93193 (firstChars!46 r!27177))) c!13916))))

(assert (= (and d!260107 res!381348) b!830579))

(assert (= (and b!830579 (not res!381347)) b!830580))

(assert (=> d!260107 m!1067427))

(declare-fun m!1067481 () Bool)

(assert (=> d!260107 m!1067481))

(declare-fun m!1067483 () Bool)

(assert (=> b!830580 m!1067483))

(assert (=> b!830400 d!260107))

(declare-fun bm!48930 () Bool)

(declare-fun call!48939 () List!8901)

(declare-fun call!48935 () List!8901)

(assert (=> bm!48930 (= call!48939 call!48935)))

(declare-fun c!135264 () Bool)

(declare-fun call!48937 () List!8901)

(declare-fun bm!48931 () Bool)

(assert (=> bm!48931 (= call!48937 (firstChars!46 (ite c!135264 (regOne!4663 (ite c!135176 (reg!2404 (regOne!4662 r!27177)) (ite c!135175 (regTwo!4663 (regOne!4662 r!27177)) (regOne!4662 (regOne!4662 r!27177))))) (regTwo!4662 (ite c!135176 (reg!2404 (regOne!4662 r!27177)) (ite c!135175 (regTwo!4663 (regOne!4662 r!27177)) (regOne!4662 (regOne!4662 r!27177))))))))))

(declare-fun c!135265 () Bool)

(declare-fun b!830581 () Bool)

(assert (=> b!830581 (= c!135265 ((_ is Star!2075) (ite c!135176 (reg!2404 (regOne!4662 r!27177)) (ite c!135175 (regTwo!4663 (regOne!4662 r!27177)) (regOne!4662 (regOne!4662 r!27177))))))))

(declare-fun e!547242 () List!8901)

(declare-fun e!547241 () List!8901)

(assert (=> b!830581 (= e!547242 e!547241)))

(declare-fun b!830582 () Bool)

(declare-fun e!547238 () List!8901)

(assert (=> b!830582 (= e!547238 e!547242)))

(declare-fun c!135261 () Bool)

(assert (=> b!830582 (= c!135261 ((_ is ElementMatch!2075) (ite c!135176 (reg!2404 (regOne!4662 r!27177)) (ite c!135175 (regTwo!4663 (regOne!4662 r!27177)) (regOne!4662 (regOne!4662 r!27177))))))))

(declare-fun b!830583 () Bool)

(assert (=> b!830583 (= e!547238 Nil!8885)))

(declare-fun b!830584 () Bool)

(assert (=> b!830584 (= e!547242 (Cons!8885 (c!135132 (ite c!135176 (reg!2404 (regOne!4662 r!27177)) (ite c!135175 (regTwo!4663 (regOne!4662 r!27177)) (regOne!4662 (regOne!4662 r!27177))))) Nil!8885))))

(declare-fun c!135263 () Bool)

(declare-fun d!260109 () Bool)

(assert (=> d!260109 (= c!135263 (or ((_ is EmptyExpr!2075) (ite c!135176 (reg!2404 (regOne!4662 r!27177)) (ite c!135175 (regTwo!4663 (regOne!4662 r!27177)) (regOne!4662 (regOne!4662 r!27177))))) ((_ is EmptyLang!2075) (ite c!135176 (reg!2404 (regOne!4662 r!27177)) (ite c!135175 (regTwo!4663 (regOne!4662 r!27177)) (regOne!4662 (regOne!4662 r!27177)))))))))

(assert (=> d!260109 (= (firstChars!46 (ite c!135176 (reg!2404 (regOne!4662 r!27177)) (ite c!135175 (regTwo!4663 (regOne!4662 r!27177)) (regOne!4662 (regOne!4662 r!27177))))) e!547238)))

(declare-fun b!830585 () Bool)

(assert (=> b!830585 (= e!547241 call!48935)))

(declare-fun bm!48932 () Bool)

(declare-fun call!48936 () List!8901)

(declare-fun call!48938 () List!8901)

(assert (=> bm!48932 (= call!48938 (++!2302 (ite c!135264 call!48937 call!48936) (ite c!135264 call!48939 call!48937)))))

(declare-fun b!830586 () Bool)

(declare-fun e!547240 () List!8901)

(assert (=> b!830586 (= e!547240 call!48936)))

(declare-fun b!830587 () Bool)

(assert (=> b!830587 (= e!547240 call!48938)))

(declare-fun c!135262 () Bool)

(declare-fun b!830588 () Bool)

(assert (=> b!830588 (= c!135262 (nullable!526 (regOne!4662 (ite c!135176 (reg!2404 (regOne!4662 r!27177)) (ite c!135175 (regTwo!4663 (regOne!4662 r!27177)) (regOne!4662 (regOne!4662 r!27177)))))))))

(declare-fun e!547239 () List!8901)

(assert (=> b!830588 (= e!547239 e!547240)))

(declare-fun bm!48933 () Bool)

(assert (=> bm!48933 (= call!48936 call!48939)))

(declare-fun b!830589 () Bool)

(assert (=> b!830589 (= e!547241 e!547239)))

(assert (=> b!830589 (= c!135264 ((_ is Union!2075) (ite c!135176 (reg!2404 (regOne!4662 r!27177)) (ite c!135175 (regTwo!4663 (regOne!4662 r!27177)) (regOne!4662 (regOne!4662 r!27177))))))))

(declare-fun b!830590 () Bool)

(assert (=> b!830590 (= e!547239 call!48938)))

(declare-fun bm!48934 () Bool)

(assert (=> bm!48934 (= call!48935 (firstChars!46 (ite c!135265 (reg!2404 (ite c!135176 (reg!2404 (regOne!4662 r!27177)) (ite c!135175 (regTwo!4663 (regOne!4662 r!27177)) (regOne!4662 (regOne!4662 r!27177))))) (ite c!135264 (regTwo!4663 (ite c!135176 (reg!2404 (regOne!4662 r!27177)) (ite c!135175 (regTwo!4663 (regOne!4662 r!27177)) (regOne!4662 (regOne!4662 r!27177))))) (regOne!4662 (ite c!135176 (reg!2404 (regOne!4662 r!27177)) (ite c!135175 (regTwo!4663 (regOne!4662 r!27177)) (regOne!4662 (regOne!4662 r!27177)))))))))))

(assert (= (and d!260109 c!135263) b!830583))

(assert (= (and d!260109 (not c!135263)) b!830582))

(assert (= (and b!830582 c!135261) b!830584))

(assert (= (and b!830582 (not c!135261)) b!830581))

(assert (= (and b!830581 c!135265) b!830585))

(assert (= (and b!830581 (not c!135265)) b!830589))

(assert (= (and b!830589 c!135264) b!830590))

(assert (= (and b!830589 (not c!135264)) b!830588))

(assert (= (and b!830588 c!135262) b!830587))

(assert (= (and b!830588 (not c!135262)) b!830586))

(assert (= (or b!830587 b!830586) bm!48933))

(assert (= (or b!830590 bm!48933) bm!48930))

(assert (= (or b!830590 b!830587) bm!48931))

(assert (= (or b!830590 b!830587) bm!48932))

(assert (= (or b!830585 bm!48930) bm!48934))

(declare-fun m!1067485 () Bool)

(assert (=> bm!48931 m!1067485))

(declare-fun m!1067487 () Bool)

(assert (=> bm!48932 m!1067487))

(declare-fun m!1067489 () Bool)

(assert (=> b!830588 m!1067489))

(declare-fun m!1067491 () Bool)

(assert (=> bm!48934 m!1067491))

(assert (=> bm!48867 d!260109))

(declare-fun d!260111 () Bool)

(declare-fun c!135266 () Bool)

(assert (=> d!260111 (= c!135266 ((_ is Nil!8885) (firstChars!46 (regOne!4662 r!27177))))))

(declare-fun e!547243 () (InoxSet C!4720))

(assert (=> d!260111 (= (content!1314 (firstChars!46 (regOne!4662 r!27177))) e!547243)))

(declare-fun b!830591 () Bool)

(assert (=> b!830591 (= e!547243 ((as const (Array C!4720 Bool)) false))))

(declare-fun b!830592 () Bool)

(assert (=> b!830592 (= e!547243 ((_ map or) (store ((as const (Array C!4720 Bool)) false) (h!14286 (firstChars!46 (regOne!4662 r!27177))) true) (content!1314 (t!93193 (firstChars!46 (regOne!4662 r!27177))))))))

(assert (= (and d!260111 c!135266) b!830591))

(assert (= (and d!260111 (not c!135266)) b!830592))

(declare-fun m!1067493 () Bool)

(assert (=> b!830592 m!1067493))

(assert (=> b!830592 m!1067413))

(assert (=> d!260055 d!260111))

(declare-fun b!830593 () Bool)

(declare-fun e!547246 () Int)

(declare-fun call!48940 () Int)

(declare-fun call!48942 () Int)

(assert (=> b!830593 (= e!547246 (+ 1 call!48940 call!48942))))

(declare-fun b!830594 () Bool)

(declare-fun e!547248 () Int)

(declare-fun e!547244 () Int)

(assert (=> b!830594 (= e!547248 e!547244)))

(declare-fun c!135270 () Bool)

(assert (=> b!830594 (= c!135270 ((_ is Concat!3806) (ite c!135205 (regOne!4662 (regOne!4662 r!27177)) (ite c!135202 (reg!2404 (regOne!4662 r!27177)) (regOne!4663 (regOne!4662 r!27177))))))))

(declare-fun c!135268 () Bool)

(declare-fun b!830595 () Bool)

(assert (=> b!830595 (= c!135268 ((_ is EmptyExpr!2075) (ite c!135205 (regOne!4662 (regOne!4662 r!27177)) (ite c!135202 (reg!2404 (regOne!4662 r!27177)) (regOne!4663 (regOne!4662 r!27177))))))))

(declare-fun e!547247 () Int)

(assert (=> b!830595 (= e!547244 e!547247)))

(declare-fun call!48941 () Int)

(declare-fun c!135267 () Bool)

(declare-fun bm!48935 () Bool)

(assert (=> bm!48935 (= call!48941 (RegexPrimitiveSize!94 (ite c!135270 (regOne!4662 (ite c!135205 (regOne!4662 (regOne!4662 r!27177)) (ite c!135202 (reg!2404 (regOne!4662 r!27177)) (regOne!4663 (regOne!4662 r!27177))))) (ite c!135267 (reg!2404 (ite c!135205 (regOne!4662 (regOne!4662 r!27177)) (ite c!135202 (reg!2404 (regOne!4662 r!27177)) (regOne!4663 (regOne!4662 r!27177))))) (regOne!4663 (ite c!135205 (regOne!4662 (regOne!4662 r!27177)) (ite c!135202 (reg!2404 (regOne!4662 r!27177)) (regOne!4663 (regOne!4662 r!27177)))))))))))

(declare-fun bm!48936 () Bool)

(assert (=> bm!48936 (= call!48940 call!48941)))

(declare-fun bm!48937 () Bool)

(assert (=> bm!48937 (= call!48942 (RegexPrimitiveSize!94 (ite c!135270 (regTwo!4662 (ite c!135205 (regOne!4662 (regOne!4662 r!27177)) (ite c!135202 (reg!2404 (regOne!4662 r!27177)) (regOne!4663 (regOne!4662 r!27177))))) (regTwo!4663 (ite c!135205 (regOne!4662 (regOne!4662 r!27177)) (ite c!135202 (reg!2404 (regOne!4662 r!27177)) (regOne!4663 (regOne!4662 r!27177))))))))))

(declare-fun b!830596 () Bool)

(declare-fun e!547245 () Int)

(assert (=> b!830596 (= e!547245 (+ 1 call!48940))))

(declare-fun b!830597 () Bool)

(assert (=> b!830597 (= e!547246 0)))

(declare-fun d!260113 () Bool)

(declare-fun lt!317711 () Int)

(assert (=> d!260113 (>= lt!317711 0)))

(assert (=> d!260113 (= lt!317711 e!547248)))

(declare-fun c!135269 () Bool)

(assert (=> d!260113 (= c!135269 ((_ is ElementMatch!2075) (ite c!135205 (regOne!4662 (regOne!4662 r!27177)) (ite c!135202 (reg!2404 (regOne!4662 r!27177)) (regOne!4663 (regOne!4662 r!27177))))))))

(assert (=> d!260113 (= (RegexPrimitiveSize!94 (ite c!135205 (regOne!4662 (regOne!4662 r!27177)) (ite c!135202 (reg!2404 (regOne!4662 r!27177)) (regOne!4663 (regOne!4662 r!27177))))) lt!317711)))

(declare-fun c!135271 () Bool)

(declare-fun b!830598 () Bool)

(assert (=> b!830598 (= c!135271 ((_ is EmptyLang!2075) (ite c!135205 (regOne!4662 (regOne!4662 r!27177)) (ite c!135202 (reg!2404 (regOne!4662 r!27177)) (regOne!4663 (regOne!4662 r!27177))))))))

(assert (=> b!830598 (= e!547245 e!547246)))

(declare-fun b!830599 () Bool)

(assert (=> b!830599 (= e!547244 (+ 1 call!48941 call!48942))))

(declare-fun b!830600 () Bool)

(assert (=> b!830600 (= e!547248 1)))

(declare-fun b!830601 () Bool)

(assert (=> b!830601 (= e!547247 0)))

(declare-fun b!830602 () Bool)

(assert (=> b!830602 (= e!547247 e!547245)))

(assert (=> b!830602 (= c!135267 ((_ is Star!2075) (ite c!135205 (regOne!4662 (regOne!4662 r!27177)) (ite c!135202 (reg!2404 (regOne!4662 r!27177)) (regOne!4663 (regOne!4662 r!27177))))))))

(assert (= (and d!260113 c!135269) b!830600))

(assert (= (and d!260113 (not c!135269)) b!830594))

(assert (= (and b!830594 c!135270) b!830599))

(assert (= (and b!830594 (not c!135270)) b!830595))

(assert (= (and b!830595 c!135268) b!830601))

(assert (= (and b!830595 (not c!135268)) b!830602))

(assert (= (and b!830602 c!135267) b!830596))

(assert (= (and b!830602 (not c!135267)) b!830598))

(assert (= (and b!830598 c!135271) b!830597))

(assert (= (and b!830598 (not c!135271)) b!830593))

(assert (= (or b!830596 b!830593) bm!48936))

(assert (= (or b!830599 bm!48936) bm!48935))

(assert (= (or b!830599 b!830593) bm!48937))

(declare-fun m!1067495 () Bool)

(assert (=> bm!48935 m!1067495))

(declare-fun m!1067497 () Bool)

(assert (=> bm!48937 m!1067497))

(assert (=> bm!48883 d!260113))

(declare-fun bm!48938 () Bool)

(declare-fun call!48944 () Bool)

(declare-fun call!48945 () Bool)

(assert (=> bm!48938 (= call!48944 call!48945)))

(declare-fun c!135272 () Bool)

(declare-fun c!135273 () Bool)

(declare-fun bm!48939 () Bool)

(assert (=> bm!48939 (= call!48945 (validRegex!628 (ite c!135272 (reg!2404 (ite c!135150 (regOne!4663 r!27177) (regTwo!4662 r!27177))) (ite c!135273 (regTwo!4663 (ite c!135150 (regOne!4663 r!27177) (regTwo!4662 r!27177))) (regOne!4662 (ite c!135150 (regOne!4663 r!27177) (regTwo!4662 r!27177)))))))))

(declare-fun b!830603 () Bool)

(declare-fun e!547254 () Bool)

(declare-fun e!547250 () Bool)

(assert (=> b!830603 (= e!547254 e!547250)))

(declare-fun res!381349 () Bool)

(assert (=> b!830603 (=> (not res!381349) (not e!547250))))

(assert (=> b!830603 (= res!381349 call!48944)))

(declare-fun b!830604 () Bool)

(declare-fun e!547253 () Bool)

(assert (=> b!830604 (= e!547253 call!48944)))

(declare-fun b!830605 () Bool)

(declare-fun e!547249 () Bool)

(declare-fun e!547251 () Bool)

(assert (=> b!830605 (= e!547249 e!547251)))

(declare-fun res!381353 () Bool)

(assert (=> b!830605 (= res!381353 (not (nullable!526 (reg!2404 (ite c!135150 (regOne!4663 r!27177) (regTwo!4662 r!27177))))))))

(assert (=> b!830605 (=> (not res!381353) (not e!547251))))

(declare-fun b!830606 () Bool)

(declare-fun call!48943 () Bool)

(assert (=> b!830606 (= e!547250 call!48943)))

(declare-fun d!260115 () Bool)

(declare-fun res!381350 () Bool)

(declare-fun e!547255 () Bool)

(assert (=> d!260115 (=> res!381350 e!547255)))

(assert (=> d!260115 (= res!381350 ((_ is ElementMatch!2075) (ite c!135150 (regOne!4663 r!27177) (regTwo!4662 r!27177))))))

(assert (=> d!260115 (= (validRegex!628 (ite c!135150 (regOne!4663 r!27177) (regTwo!4662 r!27177))) e!547255)))

(declare-fun b!830607 () Bool)

(declare-fun e!547252 () Bool)

(assert (=> b!830607 (= e!547249 e!547252)))

(assert (=> b!830607 (= c!135273 ((_ is Union!2075) (ite c!135150 (regOne!4663 r!27177) (regTwo!4662 r!27177))))))

(declare-fun b!830608 () Bool)

(declare-fun res!381352 () Bool)

(assert (=> b!830608 (=> (not res!381352) (not e!547253))))

(assert (=> b!830608 (= res!381352 call!48943)))

(assert (=> b!830608 (= e!547252 e!547253)))

(declare-fun b!830609 () Bool)

(declare-fun res!381351 () Bool)

(assert (=> b!830609 (=> res!381351 e!547254)))

(assert (=> b!830609 (= res!381351 (not ((_ is Concat!3806) (ite c!135150 (regOne!4663 r!27177) (regTwo!4662 r!27177)))))))

(assert (=> b!830609 (= e!547252 e!547254)))

(declare-fun bm!48940 () Bool)

(assert (=> bm!48940 (= call!48943 (validRegex!628 (ite c!135273 (regOne!4663 (ite c!135150 (regOne!4663 r!27177) (regTwo!4662 r!27177))) (regTwo!4662 (ite c!135150 (regOne!4663 r!27177) (regTwo!4662 r!27177))))))))

(declare-fun b!830610 () Bool)

(assert (=> b!830610 (= e!547251 call!48945)))

(declare-fun b!830611 () Bool)

(assert (=> b!830611 (= e!547255 e!547249)))

(assert (=> b!830611 (= c!135272 ((_ is Star!2075) (ite c!135150 (regOne!4663 r!27177) (regTwo!4662 r!27177))))))

(assert (= (and d!260115 (not res!381350)) b!830611))

(assert (= (and b!830611 c!135272) b!830605))

(assert (= (and b!830611 (not c!135272)) b!830607))

(assert (= (and b!830605 res!381353) b!830610))

(assert (= (and b!830607 c!135273) b!830608))

(assert (= (and b!830607 (not c!135273)) b!830609))

(assert (= (and b!830608 res!381352) b!830604))

(assert (= (and b!830609 (not res!381351)) b!830603))

(assert (= (and b!830603 res!381349) b!830606))

(assert (= (or b!830608 b!830606) bm!48940))

(assert (= (or b!830604 b!830603) bm!48938))

(assert (= (or b!830610 bm!48938) bm!48939))

(declare-fun m!1067499 () Bool)

(assert (=> bm!48939 m!1067499))

(declare-fun m!1067501 () Bool)

(assert (=> b!830605 m!1067501))

(declare-fun m!1067503 () Bool)

(assert (=> bm!48940 m!1067503))

(assert (=> bm!48830 d!260115))

(declare-fun b!830612 () Bool)

(declare-fun e!547258 () Int)

(declare-fun call!48946 () Int)

(declare-fun call!48948 () Int)

(assert (=> b!830612 (= e!547258 (+ 1 call!48946 call!48948))))

(declare-fun b!830613 () Bool)

(declare-fun e!547260 () Int)

(declare-fun e!547256 () Int)

(assert (=> b!830613 (= e!547260 e!547256)))

(declare-fun c!135277 () Bool)

(assert (=> b!830613 (= c!135277 ((_ is Concat!3806) (ite c!135205 (regTwo!4662 (regOne!4662 r!27177)) (regTwo!4663 (regOne!4662 r!27177)))))))

(declare-fun b!830614 () Bool)

(declare-fun c!135275 () Bool)

(assert (=> b!830614 (= c!135275 ((_ is EmptyExpr!2075) (ite c!135205 (regTwo!4662 (regOne!4662 r!27177)) (regTwo!4663 (regOne!4662 r!27177)))))))

(declare-fun e!547259 () Int)

(assert (=> b!830614 (= e!547256 e!547259)))

(declare-fun bm!48941 () Bool)

(declare-fun call!48947 () Int)

(declare-fun c!135274 () Bool)

(assert (=> bm!48941 (= call!48947 (RegexPrimitiveSize!94 (ite c!135277 (regOne!4662 (ite c!135205 (regTwo!4662 (regOne!4662 r!27177)) (regTwo!4663 (regOne!4662 r!27177)))) (ite c!135274 (reg!2404 (ite c!135205 (regTwo!4662 (regOne!4662 r!27177)) (regTwo!4663 (regOne!4662 r!27177)))) (regOne!4663 (ite c!135205 (regTwo!4662 (regOne!4662 r!27177)) (regTwo!4663 (regOne!4662 r!27177))))))))))

(declare-fun bm!48942 () Bool)

(assert (=> bm!48942 (= call!48946 call!48947)))

(declare-fun bm!48943 () Bool)

(assert (=> bm!48943 (= call!48948 (RegexPrimitiveSize!94 (ite c!135277 (regTwo!4662 (ite c!135205 (regTwo!4662 (regOne!4662 r!27177)) (regTwo!4663 (regOne!4662 r!27177)))) (regTwo!4663 (ite c!135205 (regTwo!4662 (regOne!4662 r!27177)) (regTwo!4663 (regOne!4662 r!27177)))))))))

(declare-fun b!830615 () Bool)

(declare-fun e!547257 () Int)

(assert (=> b!830615 (= e!547257 (+ 1 call!48946))))

(declare-fun b!830616 () Bool)

(assert (=> b!830616 (= e!547258 0)))

(declare-fun d!260117 () Bool)

(declare-fun lt!317712 () Int)

(assert (=> d!260117 (>= lt!317712 0)))

(assert (=> d!260117 (= lt!317712 e!547260)))

(declare-fun c!135276 () Bool)

(assert (=> d!260117 (= c!135276 ((_ is ElementMatch!2075) (ite c!135205 (regTwo!4662 (regOne!4662 r!27177)) (regTwo!4663 (regOne!4662 r!27177)))))))

(assert (=> d!260117 (= (RegexPrimitiveSize!94 (ite c!135205 (regTwo!4662 (regOne!4662 r!27177)) (regTwo!4663 (regOne!4662 r!27177)))) lt!317712)))

(declare-fun b!830617 () Bool)

(declare-fun c!135278 () Bool)

(assert (=> b!830617 (= c!135278 ((_ is EmptyLang!2075) (ite c!135205 (regTwo!4662 (regOne!4662 r!27177)) (regTwo!4663 (regOne!4662 r!27177)))))))

(assert (=> b!830617 (= e!547257 e!547258)))

(declare-fun b!830618 () Bool)

(assert (=> b!830618 (= e!547256 (+ 1 call!48947 call!48948))))

(declare-fun b!830619 () Bool)

(assert (=> b!830619 (= e!547260 1)))

(declare-fun b!830620 () Bool)

(assert (=> b!830620 (= e!547259 0)))

(declare-fun b!830621 () Bool)

(assert (=> b!830621 (= e!547259 e!547257)))

(assert (=> b!830621 (= c!135274 ((_ is Star!2075) (ite c!135205 (regTwo!4662 (regOne!4662 r!27177)) (regTwo!4663 (regOne!4662 r!27177)))))))

(assert (= (and d!260117 c!135276) b!830619))

(assert (= (and d!260117 (not c!135276)) b!830613))

(assert (= (and b!830613 c!135277) b!830618))

(assert (= (and b!830613 (not c!135277)) b!830614))

(assert (= (and b!830614 c!135275) b!830620))

(assert (= (and b!830614 (not c!135275)) b!830621))

(assert (= (and b!830621 c!135274) b!830615))

(assert (= (and b!830621 (not c!135274)) b!830617))

(assert (= (and b!830617 c!135278) b!830616))

(assert (= (and b!830617 (not c!135278)) b!830612))

(assert (= (or b!830615 b!830612) bm!48942))

(assert (= (or b!830618 bm!48942) bm!48941))

(assert (= (or b!830618 b!830612) bm!48943))

(declare-fun m!1067505 () Bool)

(assert (=> bm!48941 m!1067505))

(declare-fun m!1067507 () Bool)

(assert (=> bm!48943 m!1067507))

(assert (=> bm!48885 d!260117))

(declare-fun b!830636 () Bool)

(declare-fun e!547275 () Bool)

(declare-fun e!547274 () Bool)

(assert (=> b!830636 (= e!547275 e!547274)))

(declare-fun res!381367 () Bool)

(declare-fun call!48954 () Bool)

(assert (=> b!830636 (= res!381367 call!48954)))

(assert (=> b!830636 (=> res!381367 e!547274)))

(declare-fun bm!48948 () Bool)

(declare-fun c!135281 () Bool)

(assert (=> bm!48948 (= call!48954 (nullable!526 (ite c!135281 (regOne!4663 (regOne!4662 r!27177)) (regTwo!4662 (regOne!4662 r!27177)))))))

(declare-fun b!830637 () Bool)

(declare-fun e!547273 () Bool)

(declare-fun e!547278 () Bool)

(assert (=> b!830637 (= e!547273 e!547278)))

(declare-fun res!381366 () Bool)

(assert (=> b!830637 (=> res!381366 e!547278)))

(assert (=> b!830637 (= res!381366 ((_ is Star!2075) (regOne!4662 r!27177)))))

(declare-fun b!830638 () Bool)

(declare-fun call!48953 () Bool)

(assert (=> b!830638 (= e!547274 call!48953)))

(declare-fun b!830639 () Bool)

(assert (=> b!830639 (= e!547278 e!547275)))

(assert (=> b!830639 (= c!135281 ((_ is Union!2075) (regOne!4662 r!27177)))))

(declare-fun b!830640 () Bool)

(declare-fun e!547276 () Bool)

(assert (=> b!830640 (= e!547276 call!48954)))

(declare-fun d!260119 () Bool)

(declare-fun res!381368 () Bool)

(declare-fun e!547277 () Bool)

(assert (=> d!260119 (=> res!381368 e!547277)))

(assert (=> d!260119 (= res!381368 ((_ is EmptyExpr!2075) (regOne!4662 r!27177)))))

(assert (=> d!260119 (= (nullableFct!163 (regOne!4662 r!27177)) e!547277)))

(declare-fun b!830641 () Bool)

(assert (=> b!830641 (= e!547275 e!547276)))

(declare-fun res!381364 () Bool)

(assert (=> b!830641 (= res!381364 call!48953)))

(assert (=> b!830641 (=> (not res!381364) (not e!547276))))

(declare-fun bm!48949 () Bool)

(assert (=> bm!48949 (= call!48953 (nullable!526 (ite c!135281 (regTwo!4663 (regOne!4662 r!27177)) (regOne!4662 (regOne!4662 r!27177)))))))

(declare-fun b!830642 () Bool)

(assert (=> b!830642 (= e!547277 e!547273)))

(declare-fun res!381365 () Bool)

(assert (=> b!830642 (=> (not res!381365) (not e!547273))))

(assert (=> b!830642 (= res!381365 (and (not ((_ is EmptyLang!2075) (regOne!4662 r!27177))) (not ((_ is ElementMatch!2075) (regOne!4662 r!27177)))))))

(assert (= (and d!260119 (not res!381368)) b!830642))

(assert (= (and b!830642 res!381365) b!830637))

(assert (= (and b!830637 (not res!381366)) b!830639))

(assert (= (and b!830639 c!135281) b!830636))

(assert (= (and b!830639 (not c!135281)) b!830641))

(assert (= (and b!830636 (not res!381367)) b!830638))

(assert (= (and b!830641 res!381364) b!830640))

(assert (= (or b!830636 b!830640) bm!48948))

(assert (= (or b!830638 b!830641) bm!48949))

(declare-fun m!1067509 () Bool)

(assert (=> bm!48948 m!1067509))

(declare-fun m!1067511 () Bool)

(assert (=> bm!48949 m!1067511))

(assert (=> d!260053 d!260119))

(declare-fun b!830646 () Bool)

(declare-fun lt!317713 () List!8901)

(declare-fun e!547280 () Bool)

(assert (=> b!830646 (= e!547280 (or (not (= (ite c!135222 call!48904 call!48902) Nil!8885)) (= lt!317713 (ite c!135222 call!48902 call!48901))))))

(declare-fun d!260121 () Bool)

(assert (=> d!260121 e!547280))

(declare-fun res!381369 () Bool)

(assert (=> d!260121 (=> (not res!381369) (not e!547280))))

(assert (=> d!260121 (= res!381369 (= (content!1314 lt!317713) ((_ map or) (content!1314 (ite c!135222 call!48902 call!48901)) (content!1314 (ite c!135222 call!48904 call!48902)))))))

(declare-fun e!547279 () List!8901)

(assert (=> d!260121 (= lt!317713 e!547279)))

(declare-fun c!135282 () Bool)

(assert (=> d!260121 (= c!135282 ((_ is Nil!8885) (ite c!135222 call!48902 call!48901)))))

(assert (=> d!260121 (= (++!2302 (ite c!135222 call!48902 call!48901) (ite c!135222 call!48904 call!48902)) lt!317713)))

(declare-fun b!830644 () Bool)

(assert (=> b!830644 (= e!547279 (Cons!8885 (h!14286 (ite c!135222 call!48902 call!48901)) (++!2302 (t!93193 (ite c!135222 call!48902 call!48901)) (ite c!135222 call!48904 call!48902))))))

(declare-fun b!830645 () Bool)

(declare-fun res!381370 () Bool)

(assert (=> b!830645 (=> (not res!381370) (not e!547280))))

(assert (=> b!830645 (= res!381370 (= (size!7479 lt!317713) (+ (size!7479 (ite c!135222 call!48902 call!48901)) (size!7479 (ite c!135222 call!48904 call!48902)))))))

(declare-fun b!830643 () Bool)

(assert (=> b!830643 (= e!547279 (ite c!135222 call!48904 call!48902))))

(assert (= (and d!260121 c!135282) b!830643))

(assert (= (and d!260121 (not c!135282)) b!830644))

(assert (= (and d!260121 res!381369) b!830645))

(assert (= (and b!830645 res!381370) b!830646))

(declare-fun m!1067513 () Bool)

(assert (=> d!260121 m!1067513))

(declare-fun m!1067515 () Bool)

(assert (=> d!260121 m!1067515))

(declare-fun m!1067517 () Bool)

(assert (=> d!260121 m!1067517))

(declare-fun m!1067519 () Bool)

(assert (=> b!830644 m!1067519))

(declare-fun m!1067521 () Bool)

(assert (=> b!830645 m!1067521))

(declare-fun m!1067523 () Bool)

(assert (=> b!830645 m!1067523))

(declare-fun m!1067525 () Bool)

(assert (=> b!830645 m!1067525))

(assert (=> bm!48897 d!260121))

(declare-fun bm!48950 () Bool)

(declare-fun call!48959 () List!8901)

(declare-fun call!48955 () List!8901)

(assert (=> bm!48950 (= call!48959 call!48955)))

(declare-fun call!48957 () List!8901)

(declare-fun c!135286 () Bool)

(declare-fun bm!48951 () Bool)

(assert (=> bm!48951 (= call!48957 (firstChars!46 (ite c!135286 (regOne!4663 (ite c!135175 (regOne!4663 (regOne!4662 r!27177)) (regTwo!4662 (regOne!4662 r!27177)))) (regTwo!4662 (ite c!135175 (regOne!4663 (regOne!4662 r!27177)) (regTwo!4662 (regOne!4662 r!27177)))))))))

(declare-fun b!830647 () Bool)

(declare-fun c!135287 () Bool)

(assert (=> b!830647 (= c!135287 ((_ is Star!2075) (ite c!135175 (regOne!4663 (regOne!4662 r!27177)) (regTwo!4662 (regOne!4662 r!27177)))))))

(declare-fun e!547285 () List!8901)

(declare-fun e!547284 () List!8901)

(assert (=> b!830647 (= e!547285 e!547284)))

(declare-fun b!830648 () Bool)

(declare-fun e!547281 () List!8901)

(assert (=> b!830648 (= e!547281 e!547285)))

(declare-fun c!135283 () Bool)

(assert (=> b!830648 (= c!135283 ((_ is ElementMatch!2075) (ite c!135175 (regOne!4663 (regOne!4662 r!27177)) (regTwo!4662 (regOne!4662 r!27177)))))))

(declare-fun b!830649 () Bool)

(assert (=> b!830649 (= e!547281 Nil!8885)))

(declare-fun b!830650 () Bool)

(assert (=> b!830650 (= e!547285 (Cons!8885 (c!135132 (ite c!135175 (regOne!4663 (regOne!4662 r!27177)) (regTwo!4662 (regOne!4662 r!27177)))) Nil!8885))))

(declare-fun d!260123 () Bool)

(declare-fun c!135285 () Bool)

(assert (=> d!260123 (= c!135285 (or ((_ is EmptyExpr!2075) (ite c!135175 (regOne!4663 (regOne!4662 r!27177)) (regTwo!4662 (regOne!4662 r!27177)))) ((_ is EmptyLang!2075) (ite c!135175 (regOne!4663 (regOne!4662 r!27177)) (regTwo!4662 (regOne!4662 r!27177))))))))

(assert (=> d!260123 (= (firstChars!46 (ite c!135175 (regOne!4663 (regOne!4662 r!27177)) (regTwo!4662 (regOne!4662 r!27177)))) e!547281)))

(declare-fun b!830651 () Bool)

(assert (=> b!830651 (= e!547284 call!48955)))

(declare-fun call!48958 () List!8901)

(declare-fun call!48956 () List!8901)

(declare-fun bm!48952 () Bool)

(assert (=> bm!48952 (= call!48958 (++!2302 (ite c!135286 call!48957 call!48956) (ite c!135286 call!48959 call!48957)))))

(declare-fun b!830652 () Bool)

(declare-fun e!547283 () List!8901)

(assert (=> b!830652 (= e!547283 call!48956)))

(declare-fun b!830653 () Bool)

(assert (=> b!830653 (= e!547283 call!48958)))

(declare-fun b!830654 () Bool)

(declare-fun c!135284 () Bool)

(assert (=> b!830654 (= c!135284 (nullable!526 (regOne!4662 (ite c!135175 (regOne!4663 (regOne!4662 r!27177)) (regTwo!4662 (regOne!4662 r!27177))))))))

(declare-fun e!547282 () List!8901)

(assert (=> b!830654 (= e!547282 e!547283)))

(declare-fun bm!48953 () Bool)

(assert (=> bm!48953 (= call!48956 call!48959)))

(declare-fun b!830655 () Bool)

(assert (=> b!830655 (= e!547284 e!547282)))

(assert (=> b!830655 (= c!135286 ((_ is Union!2075) (ite c!135175 (regOne!4663 (regOne!4662 r!27177)) (regTwo!4662 (regOne!4662 r!27177)))))))

(declare-fun b!830656 () Bool)

(assert (=> b!830656 (= e!547282 call!48958)))

(declare-fun bm!48954 () Bool)

(assert (=> bm!48954 (= call!48955 (firstChars!46 (ite c!135287 (reg!2404 (ite c!135175 (regOne!4663 (regOne!4662 r!27177)) (regTwo!4662 (regOne!4662 r!27177)))) (ite c!135286 (regTwo!4663 (ite c!135175 (regOne!4663 (regOne!4662 r!27177)) (regTwo!4662 (regOne!4662 r!27177)))) (regOne!4662 (ite c!135175 (regOne!4663 (regOne!4662 r!27177)) (regTwo!4662 (regOne!4662 r!27177))))))))))

(assert (= (and d!260123 c!135285) b!830649))

(assert (= (and d!260123 (not c!135285)) b!830648))

(assert (= (and b!830648 c!135283) b!830650))

(assert (= (and b!830648 (not c!135283)) b!830647))

(assert (= (and b!830647 c!135287) b!830651))

(assert (= (and b!830647 (not c!135287)) b!830655))

(assert (= (and b!830655 c!135286) b!830656))

(assert (= (and b!830655 (not c!135286)) b!830654))

(assert (= (and b!830654 c!135284) b!830653))

(assert (= (and b!830654 (not c!135284)) b!830652))

(assert (= (or b!830653 b!830652) bm!48953))

(assert (= (or b!830656 bm!48953) bm!48950))

(assert (= (or b!830656 b!830653) bm!48951))

(assert (= (or b!830656 b!830653) bm!48952))

(assert (= (or b!830651 bm!48950) bm!48954))

(declare-fun m!1067527 () Bool)

(assert (=> bm!48951 m!1067527))

(declare-fun m!1067529 () Bool)

(assert (=> bm!48952 m!1067529))

(declare-fun m!1067531 () Bool)

(assert (=> b!830654 m!1067531))

(declare-fun m!1067533 () Bool)

(assert (=> bm!48954 m!1067533))

(assert (=> bm!48864 d!260123))

(declare-fun e!547286 () Bool)

(assert (=> b!830459 (= tp!259942 e!547286)))

(declare-fun b!830658 () Bool)

(declare-fun tp!259988 () Bool)

(declare-fun tp!259986 () Bool)

(assert (=> b!830658 (= e!547286 (and tp!259988 tp!259986))))

(declare-fun b!830657 () Bool)

(assert (=> b!830657 (= e!547286 tp_is_empty!3873)))

(declare-fun b!830660 () Bool)

(declare-fun tp!259987 () Bool)

(declare-fun tp!259985 () Bool)

(assert (=> b!830660 (= e!547286 (and tp!259987 tp!259985))))

(declare-fun b!830659 () Bool)

(declare-fun tp!259989 () Bool)

(assert (=> b!830659 (= e!547286 tp!259989)))

(assert (= (and b!830459 ((_ is ElementMatch!2075) (regOne!4663 (regOne!4663 r!27177)))) b!830657))

(assert (= (and b!830459 ((_ is Concat!3806) (regOne!4663 (regOne!4663 r!27177)))) b!830658))

(assert (= (and b!830459 ((_ is Star!2075) (regOne!4663 (regOne!4663 r!27177)))) b!830659))

(assert (= (and b!830459 ((_ is Union!2075) (regOne!4663 (regOne!4663 r!27177)))) b!830660))

(declare-fun e!547287 () Bool)

(assert (=> b!830459 (= tp!259940 e!547287)))

(declare-fun b!830662 () Bool)

(declare-fun tp!259993 () Bool)

(declare-fun tp!259991 () Bool)

(assert (=> b!830662 (= e!547287 (and tp!259993 tp!259991))))

(declare-fun b!830661 () Bool)

(assert (=> b!830661 (= e!547287 tp_is_empty!3873)))

(declare-fun b!830664 () Bool)

(declare-fun tp!259992 () Bool)

(declare-fun tp!259990 () Bool)

(assert (=> b!830664 (= e!547287 (and tp!259992 tp!259990))))

(declare-fun b!830663 () Bool)

(declare-fun tp!259994 () Bool)

(assert (=> b!830663 (= e!547287 tp!259994)))

(assert (= (and b!830459 ((_ is ElementMatch!2075) (regTwo!4663 (regOne!4663 r!27177)))) b!830661))

(assert (= (and b!830459 ((_ is Concat!3806) (regTwo!4663 (regOne!4663 r!27177)))) b!830662))

(assert (= (and b!830459 ((_ is Star!2075) (regTwo!4663 (regOne!4663 r!27177)))) b!830663))

(assert (= (and b!830459 ((_ is Union!2075) (regTwo!4663 (regOne!4663 r!27177)))) b!830664))

(declare-fun e!547288 () Bool)

(assert (=> b!830462 (= tp!259949 e!547288)))

(declare-fun b!830666 () Bool)

(declare-fun tp!259998 () Bool)

(declare-fun tp!259996 () Bool)

(assert (=> b!830666 (= e!547288 (and tp!259998 tp!259996))))

(declare-fun b!830665 () Bool)

(assert (=> b!830665 (= e!547288 tp_is_empty!3873)))

(declare-fun b!830668 () Bool)

(declare-fun tp!259997 () Bool)

(declare-fun tp!259995 () Bool)

(assert (=> b!830668 (= e!547288 (and tp!259997 tp!259995))))

(declare-fun b!830667 () Bool)

(declare-fun tp!259999 () Bool)

(assert (=> b!830667 (= e!547288 tp!259999)))

(assert (= (and b!830462 ((_ is ElementMatch!2075) (reg!2404 (regTwo!4663 r!27177)))) b!830665))

(assert (= (and b!830462 ((_ is Concat!3806) (reg!2404 (regTwo!4663 r!27177)))) b!830666))

(assert (= (and b!830462 ((_ is Star!2075) (reg!2404 (regTwo!4663 r!27177)))) b!830667))

(assert (= (and b!830462 ((_ is Union!2075) (reg!2404 (regTwo!4663 r!27177)))) b!830668))

(declare-fun e!547289 () Bool)

(assert (=> b!830457 (= tp!259943 e!547289)))

(declare-fun b!830670 () Bool)

(declare-fun tp!260003 () Bool)

(declare-fun tp!260001 () Bool)

(assert (=> b!830670 (= e!547289 (and tp!260003 tp!260001))))

(declare-fun b!830669 () Bool)

(assert (=> b!830669 (= e!547289 tp_is_empty!3873)))

(declare-fun b!830672 () Bool)

(declare-fun tp!260002 () Bool)

(declare-fun tp!260000 () Bool)

(assert (=> b!830672 (= e!547289 (and tp!260002 tp!260000))))

(declare-fun b!830671 () Bool)

(declare-fun tp!260004 () Bool)

(assert (=> b!830671 (= e!547289 tp!260004)))

(assert (= (and b!830457 ((_ is ElementMatch!2075) (regOne!4662 (regOne!4663 r!27177)))) b!830669))

(assert (= (and b!830457 ((_ is Concat!3806) (regOne!4662 (regOne!4663 r!27177)))) b!830670))

(assert (= (and b!830457 ((_ is Star!2075) (regOne!4662 (regOne!4663 r!27177)))) b!830671))

(assert (= (and b!830457 ((_ is Union!2075) (regOne!4662 (regOne!4663 r!27177)))) b!830672))

(declare-fun e!547290 () Bool)

(assert (=> b!830457 (= tp!259941 e!547290)))

(declare-fun b!830674 () Bool)

(declare-fun tp!260008 () Bool)

(declare-fun tp!260006 () Bool)

(assert (=> b!830674 (= e!547290 (and tp!260008 tp!260006))))

(declare-fun b!830673 () Bool)

(assert (=> b!830673 (= e!547290 tp_is_empty!3873)))

(declare-fun b!830676 () Bool)

(declare-fun tp!260007 () Bool)

(declare-fun tp!260005 () Bool)

(assert (=> b!830676 (= e!547290 (and tp!260007 tp!260005))))

(declare-fun b!830675 () Bool)

(declare-fun tp!260009 () Bool)

(assert (=> b!830675 (= e!547290 tp!260009)))

(assert (= (and b!830457 ((_ is ElementMatch!2075) (regTwo!4662 (regOne!4663 r!27177)))) b!830673))

(assert (= (and b!830457 ((_ is Concat!3806) (regTwo!4662 (regOne!4663 r!27177)))) b!830674))

(assert (= (and b!830457 ((_ is Star!2075) (regTwo!4662 (regOne!4663 r!27177)))) b!830675))

(assert (= (and b!830457 ((_ is Union!2075) (regTwo!4662 (regOne!4663 r!27177)))) b!830676))

(declare-fun e!547291 () Bool)

(assert (=> b!830466 (= tp!259954 e!547291)))

(declare-fun b!830678 () Bool)

(declare-fun tp!260013 () Bool)

(declare-fun tp!260011 () Bool)

(assert (=> b!830678 (= e!547291 (and tp!260013 tp!260011))))

(declare-fun b!830677 () Bool)

(assert (=> b!830677 (= e!547291 tp_is_empty!3873)))

(declare-fun b!830680 () Bool)

(declare-fun tp!260012 () Bool)

(declare-fun tp!260010 () Bool)

(assert (=> b!830680 (= e!547291 (and tp!260012 tp!260010))))

(declare-fun b!830679 () Bool)

(declare-fun tp!260014 () Bool)

(assert (=> b!830679 (= e!547291 tp!260014)))

(assert (= (and b!830466 ((_ is ElementMatch!2075) (reg!2404 (regOne!4662 r!27177)))) b!830677))

(assert (= (and b!830466 ((_ is Concat!3806) (reg!2404 (regOne!4662 r!27177)))) b!830678))

(assert (= (and b!830466 ((_ is Star!2075) (reg!2404 (regOne!4662 r!27177)))) b!830679))

(assert (= (and b!830466 ((_ is Union!2075) (reg!2404 (regOne!4662 r!27177)))) b!830680))

(declare-fun e!547292 () Bool)

(assert (=> b!830454 (= tp!259935 e!547292)))

(declare-fun b!830682 () Bool)

(declare-fun tp!260018 () Bool)

(declare-fun tp!260016 () Bool)

(assert (=> b!830682 (= e!547292 (and tp!260018 tp!260016))))

(declare-fun b!830681 () Bool)

(assert (=> b!830681 (= e!547292 tp_is_empty!3873)))

(declare-fun b!830684 () Bool)

(declare-fun tp!260017 () Bool)

(declare-fun tp!260015 () Bool)

(assert (=> b!830684 (= e!547292 (and tp!260017 tp!260015))))

(declare-fun b!830683 () Bool)

(declare-fun tp!260019 () Bool)

(assert (=> b!830683 (= e!547292 tp!260019)))

(assert (= (and b!830454 ((_ is ElementMatch!2075) (reg!2404 (reg!2404 r!27177)))) b!830681))

(assert (= (and b!830454 ((_ is Concat!3806) (reg!2404 (reg!2404 r!27177)))) b!830682))

(assert (= (and b!830454 ((_ is Star!2075) (reg!2404 (reg!2404 r!27177)))) b!830683))

(assert (= (and b!830454 ((_ is Union!2075) (reg!2404 (reg!2404 r!27177)))) b!830684))

(declare-fun e!547293 () Bool)

(assert (=> b!830475 (= tp!259962 e!547293)))

(declare-fun b!830686 () Bool)

(declare-fun tp!260023 () Bool)

(declare-fun tp!260021 () Bool)

(assert (=> b!830686 (= e!547293 (and tp!260023 tp!260021))))

(declare-fun b!830685 () Bool)

(assert (=> b!830685 (= e!547293 tp_is_empty!3873)))

(declare-fun b!830688 () Bool)

(declare-fun tp!260022 () Bool)

(declare-fun tp!260020 () Bool)

(assert (=> b!830688 (= e!547293 (and tp!260022 tp!260020))))

(declare-fun b!830687 () Bool)

(declare-fun tp!260024 () Bool)

(assert (=> b!830687 (= e!547293 tp!260024)))

(assert (= (and b!830475 ((_ is ElementMatch!2075) (regOne!4663 (regTwo!4662 r!27177)))) b!830685))

(assert (= (and b!830475 ((_ is Concat!3806) (regOne!4663 (regTwo!4662 r!27177)))) b!830686))

(assert (= (and b!830475 ((_ is Star!2075) (regOne!4663 (regTwo!4662 r!27177)))) b!830687))

(assert (= (and b!830475 ((_ is Union!2075) (regOne!4663 (regTwo!4662 r!27177)))) b!830688))

(declare-fun e!547294 () Bool)

(assert (=> b!830475 (= tp!259960 e!547294)))

(declare-fun b!830690 () Bool)

(declare-fun tp!260028 () Bool)

(declare-fun tp!260026 () Bool)

(assert (=> b!830690 (= e!547294 (and tp!260028 tp!260026))))

(declare-fun b!830689 () Bool)

(assert (=> b!830689 (= e!547294 tp_is_empty!3873)))

(declare-fun b!830692 () Bool)

(declare-fun tp!260027 () Bool)

(declare-fun tp!260025 () Bool)

(assert (=> b!830692 (= e!547294 (and tp!260027 tp!260025))))

(declare-fun b!830691 () Bool)

(declare-fun tp!260029 () Bool)

(assert (=> b!830691 (= e!547294 tp!260029)))

(assert (= (and b!830475 ((_ is ElementMatch!2075) (regTwo!4663 (regTwo!4662 r!27177)))) b!830689))

(assert (= (and b!830475 ((_ is Concat!3806) (regTwo!4663 (regTwo!4662 r!27177)))) b!830690))

(assert (= (and b!830475 ((_ is Star!2075) (regTwo!4663 (regTwo!4662 r!27177)))) b!830691))

(assert (= (and b!830475 ((_ is Union!2075) (regTwo!4663 (regTwo!4662 r!27177)))) b!830692))

(declare-fun e!547295 () Bool)

(assert (=> b!830461 (= tp!259948 e!547295)))

(declare-fun b!830694 () Bool)

(declare-fun tp!260033 () Bool)

(declare-fun tp!260031 () Bool)

(assert (=> b!830694 (= e!547295 (and tp!260033 tp!260031))))

(declare-fun b!830693 () Bool)

(assert (=> b!830693 (= e!547295 tp_is_empty!3873)))

(declare-fun b!830696 () Bool)

(declare-fun tp!260032 () Bool)

(declare-fun tp!260030 () Bool)

(assert (=> b!830696 (= e!547295 (and tp!260032 tp!260030))))

(declare-fun b!830695 () Bool)

(declare-fun tp!260034 () Bool)

(assert (=> b!830695 (= e!547295 tp!260034)))

(assert (= (and b!830461 ((_ is ElementMatch!2075) (regOne!4662 (regTwo!4663 r!27177)))) b!830693))

(assert (= (and b!830461 ((_ is Concat!3806) (regOne!4662 (regTwo!4663 r!27177)))) b!830694))

(assert (= (and b!830461 ((_ is Star!2075) (regOne!4662 (regTwo!4663 r!27177)))) b!830695))

(assert (= (and b!830461 ((_ is Union!2075) (regOne!4662 (regTwo!4663 r!27177)))) b!830696))

(declare-fun e!547296 () Bool)

(assert (=> b!830461 (= tp!259946 e!547296)))

(declare-fun b!830698 () Bool)

(declare-fun tp!260038 () Bool)

(declare-fun tp!260036 () Bool)

(assert (=> b!830698 (= e!547296 (and tp!260038 tp!260036))))

(declare-fun b!830697 () Bool)

(assert (=> b!830697 (= e!547296 tp_is_empty!3873)))

(declare-fun b!830700 () Bool)

(declare-fun tp!260037 () Bool)

(declare-fun tp!260035 () Bool)

(assert (=> b!830700 (= e!547296 (and tp!260037 tp!260035))))

(declare-fun b!830699 () Bool)

(declare-fun tp!260039 () Bool)

(assert (=> b!830699 (= e!547296 tp!260039)))

(assert (= (and b!830461 ((_ is ElementMatch!2075) (regTwo!4662 (regTwo!4663 r!27177)))) b!830697))

(assert (= (and b!830461 ((_ is Concat!3806) (regTwo!4662 (regTwo!4663 r!27177)))) b!830698))

(assert (= (and b!830461 ((_ is Star!2075) (regTwo!4662 (regTwo!4663 r!27177)))) b!830699))

(assert (= (and b!830461 ((_ is Union!2075) (regTwo!4662 (regTwo!4663 r!27177)))) b!830700))

(declare-fun e!547297 () Bool)

(assert (=> b!830463 (= tp!259947 e!547297)))

(declare-fun b!830702 () Bool)

(declare-fun tp!260043 () Bool)

(declare-fun tp!260041 () Bool)

(assert (=> b!830702 (= e!547297 (and tp!260043 tp!260041))))

(declare-fun b!830701 () Bool)

(assert (=> b!830701 (= e!547297 tp_is_empty!3873)))

(declare-fun b!830704 () Bool)

(declare-fun tp!260042 () Bool)

(declare-fun tp!260040 () Bool)

(assert (=> b!830704 (= e!547297 (and tp!260042 tp!260040))))

(declare-fun b!830703 () Bool)

(declare-fun tp!260044 () Bool)

(assert (=> b!830703 (= e!547297 tp!260044)))

(assert (= (and b!830463 ((_ is ElementMatch!2075) (regOne!4663 (regTwo!4663 r!27177)))) b!830701))

(assert (= (and b!830463 ((_ is Concat!3806) (regOne!4663 (regTwo!4663 r!27177)))) b!830702))

(assert (= (and b!830463 ((_ is Star!2075) (regOne!4663 (regTwo!4663 r!27177)))) b!830703))

(assert (= (and b!830463 ((_ is Union!2075) (regOne!4663 (regTwo!4663 r!27177)))) b!830704))

(declare-fun e!547298 () Bool)

(assert (=> b!830463 (= tp!259945 e!547298)))

(declare-fun b!830706 () Bool)

(declare-fun tp!260048 () Bool)

(declare-fun tp!260046 () Bool)

(assert (=> b!830706 (= e!547298 (and tp!260048 tp!260046))))

(declare-fun b!830705 () Bool)

(assert (=> b!830705 (= e!547298 tp_is_empty!3873)))

(declare-fun b!830708 () Bool)

(declare-fun tp!260047 () Bool)

(declare-fun tp!260045 () Bool)

(assert (=> b!830708 (= e!547298 (and tp!260047 tp!260045))))

(declare-fun b!830707 () Bool)

(declare-fun tp!260049 () Bool)

(assert (=> b!830707 (= e!547298 tp!260049)))

(assert (= (and b!830463 ((_ is ElementMatch!2075) (regTwo!4663 (regTwo!4663 r!27177)))) b!830705))

(assert (= (and b!830463 ((_ is Concat!3806) (regTwo!4663 (regTwo!4663 r!27177)))) b!830706))

(assert (= (and b!830463 ((_ is Star!2075) (regTwo!4663 (regTwo!4663 r!27177)))) b!830707))

(assert (= (and b!830463 ((_ is Union!2075) (regTwo!4663 (regTwo!4663 r!27177)))) b!830708))

(declare-fun e!547299 () Bool)

(assert (=> b!830458 (= tp!259944 e!547299)))

(declare-fun b!830710 () Bool)

(declare-fun tp!260053 () Bool)

(declare-fun tp!260051 () Bool)

(assert (=> b!830710 (= e!547299 (and tp!260053 tp!260051))))

(declare-fun b!830709 () Bool)

(assert (=> b!830709 (= e!547299 tp_is_empty!3873)))

(declare-fun b!830712 () Bool)

(declare-fun tp!260052 () Bool)

(declare-fun tp!260050 () Bool)

(assert (=> b!830712 (= e!547299 (and tp!260052 tp!260050))))

(declare-fun b!830711 () Bool)

(declare-fun tp!260054 () Bool)

(assert (=> b!830711 (= e!547299 tp!260054)))

(assert (= (and b!830458 ((_ is ElementMatch!2075) (reg!2404 (regOne!4663 r!27177)))) b!830709))

(assert (= (and b!830458 ((_ is Concat!3806) (reg!2404 (regOne!4663 r!27177)))) b!830710))

(assert (= (and b!830458 ((_ is Star!2075) (reg!2404 (regOne!4663 r!27177)))) b!830711))

(assert (= (and b!830458 ((_ is Union!2075) (reg!2404 (regOne!4663 r!27177)))) b!830712))

(declare-fun e!547300 () Bool)

(assert (=> b!830467 (= tp!259952 e!547300)))

(declare-fun b!830714 () Bool)

(declare-fun tp!260058 () Bool)

(declare-fun tp!260056 () Bool)

(assert (=> b!830714 (= e!547300 (and tp!260058 tp!260056))))

(declare-fun b!830713 () Bool)

(assert (=> b!830713 (= e!547300 tp_is_empty!3873)))

(declare-fun b!830716 () Bool)

(declare-fun tp!260057 () Bool)

(declare-fun tp!260055 () Bool)

(assert (=> b!830716 (= e!547300 (and tp!260057 tp!260055))))

(declare-fun b!830715 () Bool)

(declare-fun tp!260059 () Bool)

(assert (=> b!830715 (= e!547300 tp!260059)))

(assert (= (and b!830467 ((_ is ElementMatch!2075) (regOne!4663 (regOne!4662 r!27177)))) b!830713))

(assert (= (and b!830467 ((_ is Concat!3806) (regOne!4663 (regOne!4662 r!27177)))) b!830714))

(assert (= (and b!830467 ((_ is Star!2075) (regOne!4663 (regOne!4662 r!27177)))) b!830715))

(assert (= (and b!830467 ((_ is Union!2075) (regOne!4663 (regOne!4662 r!27177)))) b!830716))

(declare-fun e!547301 () Bool)

(assert (=> b!830467 (= tp!259950 e!547301)))

(declare-fun b!830718 () Bool)

(declare-fun tp!260063 () Bool)

(declare-fun tp!260061 () Bool)

(assert (=> b!830718 (= e!547301 (and tp!260063 tp!260061))))

(declare-fun b!830717 () Bool)

(assert (=> b!830717 (= e!547301 tp_is_empty!3873)))

(declare-fun b!830720 () Bool)

(declare-fun tp!260062 () Bool)

(declare-fun tp!260060 () Bool)

(assert (=> b!830720 (= e!547301 (and tp!260062 tp!260060))))

(declare-fun b!830719 () Bool)

(declare-fun tp!260064 () Bool)

(assert (=> b!830719 (= e!547301 tp!260064)))

(assert (= (and b!830467 ((_ is ElementMatch!2075) (regTwo!4663 (regOne!4662 r!27177)))) b!830717))

(assert (= (and b!830467 ((_ is Concat!3806) (regTwo!4663 (regOne!4662 r!27177)))) b!830718))

(assert (= (and b!830467 ((_ is Star!2075) (regTwo!4663 (regOne!4662 r!27177)))) b!830719))

(assert (= (and b!830467 ((_ is Union!2075) (regTwo!4663 (regOne!4662 r!27177)))) b!830720))

(declare-fun e!547302 () Bool)

(assert (=> b!830455 (= tp!259933 e!547302)))

(declare-fun b!830722 () Bool)

(declare-fun tp!260068 () Bool)

(declare-fun tp!260066 () Bool)

(assert (=> b!830722 (= e!547302 (and tp!260068 tp!260066))))

(declare-fun b!830721 () Bool)

(assert (=> b!830721 (= e!547302 tp_is_empty!3873)))

(declare-fun b!830724 () Bool)

(declare-fun tp!260067 () Bool)

(declare-fun tp!260065 () Bool)

(assert (=> b!830724 (= e!547302 (and tp!260067 tp!260065))))

(declare-fun b!830723 () Bool)

(declare-fun tp!260069 () Bool)

(assert (=> b!830723 (= e!547302 tp!260069)))

(assert (= (and b!830455 ((_ is ElementMatch!2075) (regOne!4663 (reg!2404 r!27177)))) b!830721))

(assert (= (and b!830455 ((_ is Concat!3806) (regOne!4663 (reg!2404 r!27177)))) b!830722))

(assert (= (and b!830455 ((_ is Star!2075) (regOne!4663 (reg!2404 r!27177)))) b!830723))

(assert (= (and b!830455 ((_ is Union!2075) (regOne!4663 (reg!2404 r!27177)))) b!830724))

(declare-fun e!547303 () Bool)

(assert (=> b!830455 (= tp!259931 e!547303)))

(declare-fun b!830726 () Bool)

(declare-fun tp!260073 () Bool)

(declare-fun tp!260071 () Bool)

(assert (=> b!830726 (= e!547303 (and tp!260073 tp!260071))))

(declare-fun b!830725 () Bool)

(assert (=> b!830725 (= e!547303 tp_is_empty!3873)))

(declare-fun b!830728 () Bool)

(declare-fun tp!260072 () Bool)

(declare-fun tp!260070 () Bool)

(assert (=> b!830728 (= e!547303 (and tp!260072 tp!260070))))

(declare-fun b!830727 () Bool)

(declare-fun tp!260074 () Bool)

(assert (=> b!830727 (= e!547303 tp!260074)))

(assert (= (and b!830455 ((_ is ElementMatch!2075) (regTwo!4663 (reg!2404 r!27177)))) b!830725))

(assert (= (and b!830455 ((_ is Concat!3806) (regTwo!4663 (reg!2404 r!27177)))) b!830726))

(assert (= (and b!830455 ((_ is Star!2075) (regTwo!4663 (reg!2404 r!27177)))) b!830727))

(assert (= (and b!830455 ((_ is Union!2075) (regTwo!4663 (reg!2404 r!27177)))) b!830728))

(declare-fun e!547304 () Bool)

(assert (=> b!830473 (= tp!259963 e!547304)))

(declare-fun b!830730 () Bool)

(declare-fun tp!260078 () Bool)

(declare-fun tp!260076 () Bool)

(assert (=> b!830730 (= e!547304 (and tp!260078 tp!260076))))

(declare-fun b!830729 () Bool)

(assert (=> b!830729 (= e!547304 tp_is_empty!3873)))

(declare-fun b!830732 () Bool)

(declare-fun tp!260077 () Bool)

(declare-fun tp!260075 () Bool)

(assert (=> b!830732 (= e!547304 (and tp!260077 tp!260075))))

(declare-fun b!830731 () Bool)

(declare-fun tp!260079 () Bool)

(assert (=> b!830731 (= e!547304 tp!260079)))

(assert (= (and b!830473 ((_ is ElementMatch!2075) (regOne!4662 (regTwo!4662 r!27177)))) b!830729))

(assert (= (and b!830473 ((_ is Concat!3806) (regOne!4662 (regTwo!4662 r!27177)))) b!830730))

(assert (= (and b!830473 ((_ is Star!2075) (regOne!4662 (regTwo!4662 r!27177)))) b!830731))

(assert (= (and b!830473 ((_ is Union!2075) (regOne!4662 (regTwo!4662 r!27177)))) b!830732))

(declare-fun e!547305 () Bool)

(assert (=> b!830473 (= tp!259961 e!547305)))

(declare-fun b!830734 () Bool)

(declare-fun tp!260083 () Bool)

(declare-fun tp!260081 () Bool)

(assert (=> b!830734 (= e!547305 (and tp!260083 tp!260081))))

(declare-fun b!830733 () Bool)

(assert (=> b!830733 (= e!547305 tp_is_empty!3873)))

(declare-fun b!830736 () Bool)

(declare-fun tp!260082 () Bool)

(declare-fun tp!260080 () Bool)

(assert (=> b!830736 (= e!547305 (and tp!260082 tp!260080))))

(declare-fun b!830735 () Bool)

(declare-fun tp!260084 () Bool)

(assert (=> b!830735 (= e!547305 tp!260084)))

(assert (= (and b!830473 ((_ is ElementMatch!2075) (regTwo!4662 (regTwo!4662 r!27177)))) b!830733))

(assert (= (and b!830473 ((_ is Concat!3806) (regTwo!4662 (regTwo!4662 r!27177)))) b!830734))

(assert (= (and b!830473 ((_ is Star!2075) (regTwo!4662 (regTwo!4662 r!27177)))) b!830735))

(assert (= (and b!830473 ((_ is Union!2075) (regTwo!4662 (regTwo!4662 r!27177)))) b!830736))

(declare-fun e!547306 () Bool)

(assert (=> b!830465 (= tp!259953 e!547306)))

(declare-fun b!830738 () Bool)

(declare-fun tp!260088 () Bool)

(declare-fun tp!260086 () Bool)

(assert (=> b!830738 (= e!547306 (and tp!260088 tp!260086))))

(declare-fun b!830737 () Bool)

(assert (=> b!830737 (= e!547306 tp_is_empty!3873)))

(declare-fun b!830740 () Bool)

(declare-fun tp!260087 () Bool)

(declare-fun tp!260085 () Bool)

(assert (=> b!830740 (= e!547306 (and tp!260087 tp!260085))))

(declare-fun b!830739 () Bool)

(declare-fun tp!260089 () Bool)

(assert (=> b!830739 (= e!547306 tp!260089)))

(assert (= (and b!830465 ((_ is ElementMatch!2075) (regOne!4662 (regOne!4662 r!27177)))) b!830737))

(assert (= (and b!830465 ((_ is Concat!3806) (regOne!4662 (regOne!4662 r!27177)))) b!830738))

(assert (= (and b!830465 ((_ is Star!2075) (regOne!4662 (regOne!4662 r!27177)))) b!830739))

(assert (= (and b!830465 ((_ is Union!2075) (regOne!4662 (regOne!4662 r!27177)))) b!830740))

(declare-fun e!547307 () Bool)

(assert (=> b!830465 (= tp!259951 e!547307)))

(declare-fun b!830742 () Bool)

(declare-fun tp!260093 () Bool)

(declare-fun tp!260091 () Bool)

(assert (=> b!830742 (= e!547307 (and tp!260093 tp!260091))))

(declare-fun b!830741 () Bool)

(assert (=> b!830741 (= e!547307 tp_is_empty!3873)))

(declare-fun b!830744 () Bool)

(declare-fun tp!260092 () Bool)

(declare-fun tp!260090 () Bool)

(assert (=> b!830744 (= e!547307 (and tp!260092 tp!260090))))

(declare-fun b!830743 () Bool)

(declare-fun tp!260094 () Bool)

(assert (=> b!830743 (= e!547307 tp!260094)))

(assert (= (and b!830465 ((_ is ElementMatch!2075) (regTwo!4662 (regOne!4662 r!27177)))) b!830741))

(assert (= (and b!830465 ((_ is Concat!3806) (regTwo!4662 (regOne!4662 r!27177)))) b!830742))

(assert (= (and b!830465 ((_ is Star!2075) (regTwo!4662 (regOne!4662 r!27177)))) b!830743))

(assert (= (and b!830465 ((_ is Union!2075) (regTwo!4662 (regOne!4662 r!27177)))) b!830744))

(declare-fun e!547308 () Bool)

(assert (=> b!830453 (= tp!259934 e!547308)))

(declare-fun b!830746 () Bool)

(declare-fun tp!260098 () Bool)

(declare-fun tp!260096 () Bool)

(assert (=> b!830746 (= e!547308 (and tp!260098 tp!260096))))

(declare-fun b!830745 () Bool)

(assert (=> b!830745 (= e!547308 tp_is_empty!3873)))

(declare-fun b!830748 () Bool)

(declare-fun tp!260097 () Bool)

(declare-fun tp!260095 () Bool)

(assert (=> b!830748 (= e!547308 (and tp!260097 tp!260095))))

(declare-fun b!830747 () Bool)

(declare-fun tp!260099 () Bool)

(assert (=> b!830747 (= e!547308 tp!260099)))

(assert (= (and b!830453 ((_ is ElementMatch!2075) (regOne!4662 (reg!2404 r!27177)))) b!830745))

(assert (= (and b!830453 ((_ is Concat!3806) (regOne!4662 (reg!2404 r!27177)))) b!830746))

(assert (= (and b!830453 ((_ is Star!2075) (regOne!4662 (reg!2404 r!27177)))) b!830747))

(assert (= (and b!830453 ((_ is Union!2075) (regOne!4662 (reg!2404 r!27177)))) b!830748))

(declare-fun e!547309 () Bool)

(assert (=> b!830453 (= tp!259932 e!547309)))

(declare-fun b!830750 () Bool)

(declare-fun tp!260103 () Bool)

(declare-fun tp!260101 () Bool)

(assert (=> b!830750 (= e!547309 (and tp!260103 tp!260101))))

(declare-fun b!830749 () Bool)

(assert (=> b!830749 (= e!547309 tp_is_empty!3873)))

(declare-fun b!830752 () Bool)

(declare-fun tp!260102 () Bool)

(declare-fun tp!260100 () Bool)

(assert (=> b!830752 (= e!547309 (and tp!260102 tp!260100))))

(declare-fun b!830751 () Bool)

(declare-fun tp!260104 () Bool)

(assert (=> b!830751 (= e!547309 tp!260104)))

(assert (= (and b!830453 ((_ is ElementMatch!2075) (regTwo!4662 (reg!2404 r!27177)))) b!830749))

(assert (= (and b!830453 ((_ is Concat!3806) (regTwo!4662 (reg!2404 r!27177)))) b!830750))

(assert (= (and b!830453 ((_ is Star!2075) (regTwo!4662 (reg!2404 r!27177)))) b!830751))

(assert (= (and b!830453 ((_ is Union!2075) (regTwo!4662 (reg!2404 r!27177)))) b!830752))

(declare-fun e!547310 () Bool)

(assert (=> b!830474 (= tp!259964 e!547310)))

(declare-fun b!830754 () Bool)

(declare-fun tp!260108 () Bool)

(declare-fun tp!260106 () Bool)

(assert (=> b!830754 (= e!547310 (and tp!260108 tp!260106))))

(declare-fun b!830753 () Bool)

(assert (=> b!830753 (= e!547310 tp_is_empty!3873)))

(declare-fun b!830756 () Bool)

(declare-fun tp!260107 () Bool)

(declare-fun tp!260105 () Bool)

(assert (=> b!830756 (= e!547310 (and tp!260107 tp!260105))))

(declare-fun b!830755 () Bool)

(declare-fun tp!260109 () Bool)

(assert (=> b!830755 (= e!547310 tp!260109)))

(assert (= (and b!830474 ((_ is ElementMatch!2075) (reg!2404 (regTwo!4662 r!27177)))) b!830753))

(assert (= (and b!830474 ((_ is Concat!3806) (reg!2404 (regTwo!4662 r!27177)))) b!830754))

(assert (= (and b!830474 ((_ is Star!2075) (reg!2404 (regTwo!4662 r!27177)))) b!830755))

(assert (= (and b!830474 ((_ is Union!2075) (reg!2404 (regTwo!4662 r!27177)))) b!830756))

(check-sat (not b!830719) (not b!830692) (not b!830746) (not bm!48920) (not bm!48954) (not bm!48932) (not b!830541) (not b!830668) (not b!830747) (not b!830748) (not d!260089) (not b!830714) (not b!830751) (not b!830716) (not b!830736) (not d!260103) (not b!830509) (not b!830715) (not b!830744) (not b!830526) (not b!830718) (not b!830672) (not d!260083) (not b!830739) (not b!830696) (not b!830752) (not b!830740) tp_is_empty!3873 (not b!830588) (not b!830567) (not bm!48940) (not b!830658) (not b!830605) (not b!830702) (not b!830756) (not bm!48923) (not bm!48948) (not bm!48917) (not b!830662) (not b!830676) (not b!830684) (not bm!48924) (not b!830742) (not d!260121) (not b!830710) (not bm!48934) (not b!830690) (not b!830750) (not b!830724) (not d!260107) (not bm!48922) (not b!830728) (not b!830678) (not b!830679) (not b!830503) (not bm!48928) (not b!830698) (not d!260087) (not b!830707) (not d!260085) (not b!830686) (not b!830688) (not bm!48943) (not b!830704) (not b!830732) (not b!830664) (not b!830743) (not b!830671) (not b!830723) (not b!830735) (not bm!48913) (not b!830680) (not bm!48915) (not b!830703) (not bm!48929) (not bm!48909) (not b!830694) (not b!830687) (not b!830754) (not bm!48939) (not b!830727) (not b!830580) (not b!830654) (not b!830572) (not bm!48941) (not b!830512) (not bm!48935) (not b!830670) (not b!830734) (not bm!48912) (not bm!48931) (not b!830675) (not b!830695) (not b!830722) (not b!830568) (not b!830683) (not b!830755) (not b!830691) (not bm!48910) (not bm!48907) (not b!830592) (not b!830726) (not b!830536) (not b!830720) (not b!830674) (not bm!48918) (not b!830663) (not bm!48905) (not b!830659) (not bm!48926) (not b!830699) (not bm!48937) (not bm!48951) (not b!830706) (not b!830700) (not bm!48949) (not b!830644) (not bm!48952) (not b!830711) (not b!830708) (not b!830645) (not b!830731) (not b!830682) (not b!830666) (not b!830712) (not b!830667) (not b!830730) (not b!830660) (not b!830738))
(check-sat)
