; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!570878 () Bool)

(assert start!570878)

(declare-fun b!5446036 () Bool)

(assert (=> b!5446036 true))

(assert (=> b!5446036 true))

(declare-fun lambda!287179 () Int)

(declare-fun lambda!287178 () Int)

(assert (=> b!5446036 (not (= lambda!287179 lambda!287178))))

(assert (=> b!5446036 true))

(assert (=> b!5446036 true))

(declare-fun b!5446025 () Bool)

(assert (=> b!5446025 true))

(declare-fun bs!1256290 () Bool)

(declare-fun b!5446028 () Bool)

(assert (= bs!1256290 (and b!5446028 b!5446036)))

(declare-datatypes ((C!30824 0))(
  ( (C!30825 (val!25114 Int)) )
))
(declare-datatypes ((Regex!15277 0))(
  ( (ElementMatch!15277 (c!950421 C!30824)) (Concat!24122 (regOne!31066 Regex!15277) (regTwo!31066 Regex!15277)) (EmptyExpr!15277) (Star!15277 (reg!15606 Regex!15277)) (EmptyLang!15277) (Union!15277 (regOne!31067 Regex!15277) (regTwo!31067 Regex!15277)) )
))
(declare-fun r!7292 () Regex!15277)

(declare-fun lt!2222146 () Regex!15277)

(declare-fun lambda!287181 () Int)

(assert (=> bs!1256290 (= (and (= (regOne!31066 (regOne!31066 r!7292)) (regOne!31066 r!7292)) (= lt!2222146 (regTwo!31066 r!7292))) (= lambda!287181 lambda!287178))))

(assert (=> bs!1256290 (not (= lambda!287181 lambda!287179))))

(assert (=> b!5446028 true))

(assert (=> b!5446028 true))

(assert (=> b!5446028 true))

(declare-fun lambda!287182 () Int)

(assert (=> bs!1256290 (not (= lambda!287182 lambda!287178))))

(assert (=> bs!1256290 (= (and (= (regOne!31066 (regOne!31066 r!7292)) (regOne!31066 r!7292)) (= lt!2222146 (regTwo!31066 r!7292))) (= lambda!287182 lambda!287179))))

(assert (=> b!5446028 (not (= lambda!287182 lambda!287181))))

(assert (=> b!5446028 true))

(assert (=> b!5446028 true))

(assert (=> b!5446028 true))

(declare-fun lt!2222240 () Regex!15277)

(declare-fun lambda!287183 () Int)

(assert (=> bs!1256290 (= (and (= (regTwo!31066 (regOne!31066 r!7292)) (regOne!31066 r!7292)) (= lt!2222240 (regTwo!31066 r!7292))) (= lambda!287183 lambda!287178))))

(assert (=> bs!1256290 (not (= lambda!287183 lambda!287179))))

(assert (=> b!5446028 (= (and (= (regTwo!31066 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292))) (= lt!2222240 lt!2222146)) (= lambda!287183 lambda!287181))))

(assert (=> b!5446028 (not (= lambda!287183 lambda!287182))))

(assert (=> b!5446028 true))

(assert (=> b!5446028 true))

(assert (=> b!5446028 true))

(declare-fun lambda!287184 () Int)

(assert (=> b!5446028 (not (= lambda!287184 lambda!287183))))

(assert (=> bs!1256290 (not (= lambda!287184 lambda!287178))))

(assert (=> b!5446028 (not (= lambda!287184 lambda!287181))))

(assert (=> b!5446028 (= (and (= (regTwo!31066 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292))) (= lt!2222240 lt!2222146)) (= lambda!287184 lambda!287182))))

(assert (=> bs!1256290 (= (and (= (regTwo!31066 (regOne!31066 r!7292)) (regOne!31066 r!7292)) (= lt!2222240 (regTwo!31066 r!7292))) (= lambda!287184 lambda!287179))))

(assert (=> b!5446028 true))

(assert (=> b!5446028 true))

(assert (=> b!5446028 true))

(declare-fun bs!1256291 () Bool)

(declare-fun b!5446005 () Bool)

(assert (= bs!1256291 (and b!5446005 b!5446028)))

(declare-fun lt!2222299 () Regex!15277)

(declare-fun lambda!287185 () Int)

(assert (=> bs!1256291 (= (and (= (regOne!31066 (regOne!31066 r!7292)) (regTwo!31066 (regOne!31066 r!7292))) (= lt!2222299 lt!2222240)) (= lambda!287185 lambda!287183))))

(assert (=> bs!1256291 (= (= lt!2222299 lt!2222146) (= lambda!287185 lambda!287181))))

(assert (=> bs!1256291 (not (= lambda!287185 lambda!287182))))

(declare-fun bs!1256292 () Bool)

(assert (= bs!1256292 (and b!5446005 b!5446036)))

(assert (=> bs!1256292 (not (= lambda!287185 lambda!287179))))

(assert (=> bs!1256291 (not (= lambda!287185 lambda!287184))))

(assert (=> bs!1256292 (= (and (= (regOne!31066 (regOne!31066 r!7292)) (regOne!31066 r!7292)) (= lt!2222299 (regTwo!31066 r!7292))) (= lambda!287185 lambda!287178))))

(assert (=> b!5446005 true))

(assert (=> b!5446005 true))

(assert (=> b!5446005 true))

(declare-fun lambda!287186 () Int)

(assert (=> bs!1256291 (not (= lambda!287186 lambda!287183))))

(assert (=> bs!1256291 (not (= lambda!287186 lambda!287181))))

(assert (=> bs!1256291 (= (= lt!2222299 lt!2222146) (= lambda!287186 lambda!287182))))

(assert (=> bs!1256292 (= (and (= (regOne!31066 (regOne!31066 r!7292)) (regOne!31066 r!7292)) (= lt!2222299 (regTwo!31066 r!7292))) (= lambda!287186 lambda!287179))))

(assert (=> b!5446005 (not (= lambda!287186 lambda!287185))))

(assert (=> bs!1256291 (= (and (= (regOne!31066 (regOne!31066 r!7292)) (regTwo!31066 (regOne!31066 r!7292))) (= lt!2222299 lt!2222240)) (= lambda!287186 lambda!287184))))

(assert (=> bs!1256292 (not (= lambda!287186 lambda!287178))))

(assert (=> b!5446005 true))

(assert (=> b!5446005 true))

(assert (=> b!5446005 true))

(declare-fun lt!2222211 () Regex!15277)

(declare-fun lambda!287187 () Int)

(assert (=> bs!1256291 (= (= lt!2222211 lt!2222240) (= lambda!287187 lambda!287183))))

(assert (=> b!5446005 (not (= lambda!287187 lambda!287186))))

(assert (=> bs!1256291 (= (and (= (regTwo!31066 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292))) (= lt!2222211 lt!2222146)) (= lambda!287187 lambda!287181))))

(assert (=> bs!1256291 (not (= lambda!287187 lambda!287182))))

(assert (=> bs!1256292 (not (= lambda!287187 lambda!287179))))

(assert (=> b!5446005 (= (and (= (regTwo!31066 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292))) (= lt!2222211 lt!2222299)) (= lambda!287187 lambda!287185))))

(assert (=> bs!1256291 (not (= lambda!287187 lambda!287184))))

(assert (=> bs!1256292 (= (and (= (regTwo!31066 (regOne!31066 r!7292)) (regOne!31066 r!7292)) (= lt!2222211 (regTwo!31066 r!7292))) (= lambda!287187 lambda!287178))))

(assert (=> b!5446005 true))

(assert (=> b!5446005 true))

(assert (=> b!5446005 true))

(declare-fun lambda!287188 () Int)

(assert (=> bs!1256291 (not (= lambda!287188 lambda!287183))))

(assert (=> b!5446005 (= (and (= (regTwo!31066 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292))) (= lt!2222211 lt!2222299)) (= lambda!287188 lambda!287186))))

(assert (=> bs!1256291 (not (= lambda!287188 lambda!287181))))

(assert (=> bs!1256291 (= (and (= (regTwo!31066 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292))) (= lt!2222211 lt!2222146)) (= lambda!287188 lambda!287182))))

(assert (=> bs!1256292 (= (and (= (regTwo!31066 (regOne!31066 r!7292)) (regOne!31066 r!7292)) (= lt!2222211 (regTwo!31066 r!7292))) (= lambda!287188 lambda!287179))))

(assert (=> b!5446005 (not (= lambda!287188 lambda!287185))))

(assert (=> b!5446005 (not (= lambda!287188 lambda!287187))))

(assert (=> bs!1256291 (= (= lt!2222211 lt!2222240) (= lambda!287188 lambda!287184))))

(assert (=> bs!1256292 (not (= lambda!287188 lambda!287178))))

(assert (=> b!5446005 true))

(assert (=> b!5446005 true))

(assert (=> b!5446005 true))

(declare-fun bs!1256293 () Bool)

(declare-fun b!5446010 () Bool)

(assert (= bs!1256293 (and b!5446010 b!5446005)))

(declare-fun lambda!287189 () Int)

(assert (=> bs!1256293 (not (= lambda!287189 lambda!287188))))

(declare-fun bs!1256294 () Bool)

(assert (= bs!1256294 (and b!5446010 b!5446028)))

(declare-fun lt!2222247 () Regex!15277)

(assert (=> bs!1256294 (= (and (= lt!2222247 (regTwo!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222240)) (= lambda!287189 lambda!287183))))

(assert (=> bs!1256293 (not (= lambda!287189 lambda!287186))))

(assert (=> bs!1256294 (= (and (= lt!2222247 (regOne!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222146)) (= lambda!287189 lambda!287181))))

(assert (=> bs!1256294 (not (= lambda!287189 lambda!287182))))

(declare-fun bs!1256295 () Bool)

(assert (= bs!1256295 (and b!5446010 b!5446036)))

(assert (=> bs!1256295 (not (= lambda!287189 lambda!287179))))

(assert (=> bs!1256293 (= (and (= lt!2222247 (regOne!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222299)) (= lambda!287189 lambda!287185))))

(assert (=> bs!1256293 (= (and (= lt!2222247 (regTwo!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222211)) (= lambda!287189 lambda!287187))))

(assert (=> bs!1256294 (not (= lambda!287189 lambda!287184))))

(assert (=> bs!1256295 (= (= lt!2222247 (regOne!31066 r!7292)) (= lambda!287189 lambda!287178))))

(assert (=> b!5446010 true))

(assert (=> b!5446010 true))

(assert (=> b!5446010 true))

(declare-fun lambda!287190 () Int)

(assert (=> bs!1256293 (= (and (= lt!2222247 (regTwo!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222211)) (= lambda!287190 lambda!287188))))

(assert (=> bs!1256294 (not (= lambda!287190 lambda!287183))))

(assert (=> bs!1256293 (= (and (= lt!2222247 (regOne!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222299)) (= lambda!287190 lambda!287186))))

(assert (=> bs!1256294 (not (= lambda!287190 lambda!287181))))

(assert (=> bs!1256294 (= (and (= lt!2222247 (regOne!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222146)) (= lambda!287190 lambda!287182))))

(assert (=> b!5446010 (not (= lambda!287190 lambda!287189))))

(assert (=> bs!1256295 (= (= lt!2222247 (regOne!31066 r!7292)) (= lambda!287190 lambda!287179))))

(assert (=> bs!1256293 (not (= lambda!287190 lambda!287185))))

(assert (=> bs!1256293 (not (= lambda!287190 lambda!287187))))

(assert (=> bs!1256294 (= (and (= lt!2222247 (regTwo!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222240)) (= lambda!287190 lambda!287184))))

(assert (=> bs!1256295 (not (= lambda!287190 lambda!287178))))

(assert (=> b!5446010 true))

(assert (=> b!5446010 true))

(assert (=> b!5446010 true))

(declare-fun bs!1256296 () Bool)

(declare-fun b!5445993 () Bool)

(assert (= bs!1256296 (and b!5445993 b!5446005)))

(declare-fun lambda!287191 () Int)

(assert (=> bs!1256296 (not (= lambda!287191 lambda!287188))))

(declare-fun bs!1256297 () Bool)

(assert (= bs!1256297 (and b!5445993 b!5446028)))

(declare-datatypes ((List!62130 0))(
  ( (Nil!62006) (Cons!62006 (h!68454 C!30824) (t!375357 List!62130)) )
))
(declare-fun s!2326 () List!62130)

(declare-datatypes ((tuple2!64952 0))(
  ( (tuple2!64953 (_1!35779 List!62130) (_2!35779 List!62130)) )
))
(declare-fun lt!2222282 () tuple2!64952)

(assert (=> bs!1256297 (= (and (= (_1!35779 lt!2222282) s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regTwo!31066 (regOne!31066 r!7292))) (= lt!2222247 lt!2222240)) (= lambda!287191 lambda!287183))))

(assert (=> bs!1256296 (not (= lambda!287191 lambda!287186))))

(assert (=> bs!1256297 (= (and (= (_1!35779 lt!2222282) s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292))) (= lt!2222247 lt!2222146)) (= lambda!287191 lambda!287181))))

(assert (=> bs!1256297 (not (= lambda!287191 lambda!287182))))

(declare-fun bs!1256298 () Bool)

(assert (= bs!1256298 (and b!5445993 b!5446010)))

(assert (=> bs!1256298 (not (= lambda!287191 lambda!287190))))

(assert (=> bs!1256298 (= (and (= (_1!35779 lt!2222282) s!2326) (= (reg!15606 (regOne!31066 r!7292)) lt!2222247) (= lt!2222247 (regTwo!31066 r!7292))) (= lambda!287191 lambda!287189))))

(declare-fun bs!1256299 () Bool)

(assert (= bs!1256299 (and b!5445993 b!5446036)))

(assert (=> bs!1256299 (not (= lambda!287191 lambda!287179))))

(assert (=> bs!1256296 (= (and (= (_1!35779 lt!2222282) s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292))) (= lt!2222247 lt!2222299)) (= lambda!287191 lambda!287185))))

(assert (=> bs!1256296 (= (and (= (_1!35779 lt!2222282) s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regTwo!31066 (regOne!31066 r!7292))) (= lt!2222247 lt!2222211)) (= lambda!287191 lambda!287187))))

(assert (=> bs!1256297 (not (= lambda!287191 lambda!287184))))

(assert (=> bs!1256299 (= (and (= (_1!35779 lt!2222282) s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regOne!31066 r!7292)) (= lt!2222247 (regTwo!31066 r!7292))) (= lambda!287191 lambda!287178))))

(assert (=> b!5445993 true))

(assert (=> b!5445993 true))

(assert (=> b!5445993 true))

(declare-fun lambda!287192 () Int)

(assert (=> bs!1256296 (not (= lambda!287192 lambda!287188))))

(assert (=> bs!1256297 (not (= lambda!287192 lambda!287183))))

(assert (=> bs!1256296 (not (= lambda!287192 lambda!287186))))

(assert (=> bs!1256297 (not (= lambda!287192 lambda!287181))))

(assert (=> bs!1256297 (not (= lambda!287192 lambda!287182))))

(assert (=> bs!1256298 (not (= lambda!287192 lambda!287190))))

(assert (=> bs!1256299 (not (= lambda!287192 lambda!287179))))

(assert (=> bs!1256296 (not (= lambda!287192 lambda!287185))))

(assert (=> bs!1256296 (not (= lambda!287192 lambda!287187))))

(assert (=> bs!1256297 (not (= lambda!287192 lambda!287184))))

(assert (=> bs!1256299 (not (= lambda!287192 lambda!287178))))

(assert (=> b!5445993 (not (= lambda!287192 lambda!287191))))

(assert (=> bs!1256298 (not (= lambda!287192 lambda!287189))))

(assert (=> b!5445993 true))

(assert (=> b!5445993 true))

(assert (=> b!5445993 true))

(declare-fun lambda!287193 () Int)

(assert (=> bs!1256296 (= (and (= (_1!35779 lt!2222282) s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regTwo!31066 (regOne!31066 r!7292))) (= lt!2222247 lt!2222211)) (= lambda!287193 lambda!287188))))

(assert (=> b!5445993 (not (= lambda!287193 lambda!287192))))

(assert (=> bs!1256297 (not (= lambda!287193 lambda!287183))))

(assert (=> bs!1256296 (= (and (= (_1!35779 lt!2222282) s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292))) (= lt!2222247 lt!2222299)) (= lambda!287193 lambda!287186))))

(assert (=> bs!1256297 (not (= lambda!287193 lambda!287181))))

(assert (=> bs!1256297 (= (and (= (_1!35779 lt!2222282) s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292))) (= lt!2222247 lt!2222146)) (= lambda!287193 lambda!287182))))

(assert (=> bs!1256298 (= (and (= (_1!35779 lt!2222282) s!2326) (= (reg!15606 (regOne!31066 r!7292)) lt!2222247) (= lt!2222247 (regTwo!31066 r!7292))) (= lambda!287193 lambda!287190))))

(assert (=> bs!1256299 (= (and (= (_1!35779 lt!2222282) s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regOne!31066 r!7292)) (= lt!2222247 (regTwo!31066 r!7292))) (= lambda!287193 lambda!287179))))

(assert (=> bs!1256296 (not (= lambda!287193 lambda!287185))))

(assert (=> bs!1256296 (not (= lambda!287193 lambda!287187))))

(assert (=> bs!1256297 (= (and (= (_1!35779 lt!2222282) s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regTwo!31066 (regOne!31066 r!7292))) (= lt!2222247 lt!2222240)) (= lambda!287193 lambda!287184))))

(assert (=> bs!1256299 (not (= lambda!287193 lambda!287178))))

(assert (=> b!5445993 (not (= lambda!287193 lambda!287191))))

(assert (=> bs!1256298 (not (= lambda!287193 lambda!287189))))

(assert (=> b!5445993 true))

(assert (=> b!5445993 true))

(assert (=> b!5445993 true))

(declare-fun b!5446006 () Bool)

(assert (=> b!5446006 true))

(declare-fun bs!1256300 () Bool)

(assert (= bs!1256300 (and b!5446006 b!5445993)))

(declare-fun lambda!287196 () Int)

(declare-fun lambda!287194 () Int)

(assert (=> bs!1256300 (= lambda!287196 lambda!287194)))

(declare-fun bs!1256301 () Bool)

(assert (= bs!1256301 (and b!5446006 b!5446005)))

(declare-fun lambda!287197 () Int)

(assert (=> bs!1256301 (not (= lambda!287197 lambda!287188))))

(assert (=> bs!1256300 (not (= lambda!287197 lambda!287192))))

(declare-fun bs!1256302 () Bool)

(assert (= bs!1256302 (and b!5446006 b!5446028)))

(declare-fun lt!2222184 () Regex!15277)

(assert (=> bs!1256302 (= (and (= lt!2222184 (regTwo!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222240)) (= lambda!287197 lambda!287183))))

(assert (=> bs!1256301 (not (= lambda!287197 lambda!287186))))

(assert (=> bs!1256300 (not (= lambda!287197 lambda!287193))))

(assert (=> bs!1256302 (= (and (= lt!2222184 (regOne!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222146)) (= lambda!287197 lambda!287181))))

(assert (=> bs!1256302 (not (= lambda!287197 lambda!287182))))

(declare-fun bs!1256303 () Bool)

(assert (= bs!1256303 (and b!5446006 b!5446010)))

(assert (=> bs!1256303 (not (= lambda!287197 lambda!287190))))

(declare-fun bs!1256304 () Bool)

(assert (= bs!1256304 (and b!5446006 b!5446036)))

(assert (=> bs!1256304 (not (= lambda!287197 lambda!287179))))

(assert (=> bs!1256301 (= (and (= lt!2222184 (regOne!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222299)) (= lambda!287197 lambda!287185))))

(assert (=> bs!1256301 (= (and (= lt!2222184 (regTwo!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222211)) (= lambda!287197 lambda!287187))))

(assert (=> bs!1256302 (not (= lambda!287197 lambda!287184))))

(assert (=> bs!1256304 (= (= lt!2222184 (regOne!31066 r!7292)) (= lambda!287197 lambda!287178))))

(assert (=> bs!1256300 (= (and (= s!2326 (_1!35779 lt!2222282)) (= lt!2222184 (reg!15606 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222247)) (= lambda!287197 lambda!287191))))

(assert (=> bs!1256303 (= (= lt!2222184 lt!2222247) (= lambda!287197 lambda!287189))))

(assert (=> b!5446006 true))

(assert (=> b!5446006 true))

(assert (=> b!5446006 true))

(declare-fun lambda!287198 () Int)

(assert (=> bs!1256301 (= (and (= lt!2222184 (regTwo!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222211)) (= lambda!287198 lambda!287188))))

(assert (=> bs!1256300 (not (= lambda!287198 lambda!287192))))

(assert (=> bs!1256302 (not (= lambda!287198 lambda!287183))))

(assert (=> bs!1256301 (= (and (= lt!2222184 (regOne!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222299)) (= lambda!287198 lambda!287186))))

(assert (=> bs!1256300 (= (and (= s!2326 (_1!35779 lt!2222282)) (= lt!2222184 (reg!15606 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222247)) (= lambda!287198 lambda!287193))))

(assert (=> bs!1256302 (not (= lambda!287198 lambda!287181))))

(assert (=> bs!1256302 (= (and (= lt!2222184 (regOne!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222146)) (= lambda!287198 lambda!287182))))

(assert (=> bs!1256303 (= (= lt!2222184 lt!2222247) (= lambda!287198 lambda!287190))))

(assert (=> bs!1256304 (= (= lt!2222184 (regOne!31066 r!7292)) (= lambda!287198 lambda!287179))))

(assert (=> bs!1256301 (not (= lambda!287198 lambda!287185))))

(assert (=> b!5446006 (not (= lambda!287198 lambda!287197))))

(assert (=> bs!1256301 (not (= lambda!287198 lambda!287187))))

(assert (=> bs!1256302 (= (and (= lt!2222184 (regTwo!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222240)) (= lambda!287198 lambda!287184))))

(assert (=> bs!1256304 (not (= lambda!287198 lambda!287178))))

(assert (=> bs!1256300 (not (= lambda!287198 lambda!287191))))

(assert (=> bs!1256303 (not (= lambda!287198 lambda!287189))))

(assert (=> b!5446006 true))

(assert (=> b!5446006 true))

(assert (=> b!5446006 true))

(declare-fun lambda!287199 () Int)

(assert (=> bs!1256301 (not (= lambda!287199 lambda!287188))))

(assert (=> bs!1256300 (not (= lambda!287199 lambda!287192))))

(declare-fun lt!2222148 () tuple2!64952)

(assert (=> bs!1256302 (= (and (= (_1!35779 lt!2222148) s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regTwo!31066 (regOne!31066 r!7292))) (= lt!2222247 lt!2222240)) (= lambda!287199 lambda!287183))))

(assert (=> b!5446006 (not (= lambda!287199 lambda!287198))))

(assert (=> bs!1256301 (not (= lambda!287199 lambda!287186))))

(assert (=> bs!1256300 (not (= lambda!287199 lambda!287193))))

(assert (=> bs!1256302 (= (and (= (_1!35779 lt!2222148) s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292))) (= lt!2222247 lt!2222146)) (= lambda!287199 lambda!287181))))

(assert (=> bs!1256302 (not (= lambda!287199 lambda!287182))))

(assert (=> bs!1256303 (not (= lambda!287199 lambda!287190))))

(assert (=> bs!1256304 (not (= lambda!287199 lambda!287179))))

(assert (=> bs!1256301 (= (and (= (_1!35779 lt!2222148) s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292))) (= lt!2222247 lt!2222299)) (= lambda!287199 lambda!287185))))

(assert (=> b!5446006 (= (and (= (_1!35779 lt!2222148) s!2326) (= (reg!15606 (regOne!31066 r!7292)) lt!2222184) (= lt!2222247 (regTwo!31066 r!7292))) (= lambda!287199 lambda!287197))))

(assert (=> bs!1256301 (= (and (= (_1!35779 lt!2222148) s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regTwo!31066 (regOne!31066 r!7292))) (= lt!2222247 lt!2222211)) (= lambda!287199 lambda!287187))))

(assert (=> bs!1256302 (not (= lambda!287199 lambda!287184))))

(assert (=> bs!1256304 (= (and (= (_1!35779 lt!2222148) s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regOne!31066 r!7292)) (= lt!2222247 (regTwo!31066 r!7292))) (= lambda!287199 lambda!287178))))

(assert (=> bs!1256300 (= (= (_1!35779 lt!2222148) (_1!35779 lt!2222282)) (= lambda!287199 lambda!287191))))

(assert (=> bs!1256303 (= (and (= (_1!35779 lt!2222148) s!2326) (= (reg!15606 (regOne!31066 r!7292)) lt!2222247) (= lt!2222247 (regTwo!31066 r!7292))) (= lambda!287199 lambda!287189))))

(assert (=> b!5446006 true))

(assert (=> b!5446006 true))

(assert (=> b!5446006 true))

(declare-fun lambda!287200 () Int)

(assert (=> bs!1256301 (= (and (= (_1!35779 lt!2222148) s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regTwo!31066 (regOne!31066 r!7292))) (= lt!2222247 lt!2222211)) (= lambda!287200 lambda!287188))))

(assert (=> bs!1256300 (not (= lambda!287200 lambda!287192))))

(assert (=> bs!1256302 (not (= lambda!287200 lambda!287183))))

(assert (=> b!5446006 (= (and (= (_1!35779 lt!2222148) s!2326) (= (reg!15606 (regOne!31066 r!7292)) lt!2222184) (= lt!2222247 (regTwo!31066 r!7292))) (= lambda!287200 lambda!287198))))

(assert (=> b!5446006 (not (= lambda!287200 lambda!287199))))

(assert (=> bs!1256301 (= (and (= (_1!35779 lt!2222148) s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292))) (= lt!2222247 lt!2222299)) (= lambda!287200 lambda!287186))))

(assert (=> bs!1256300 (= (= (_1!35779 lt!2222148) (_1!35779 lt!2222282)) (= lambda!287200 lambda!287193))))

(assert (=> bs!1256302 (not (= lambda!287200 lambda!287181))))

(assert (=> bs!1256302 (= (and (= (_1!35779 lt!2222148) s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292))) (= lt!2222247 lt!2222146)) (= lambda!287200 lambda!287182))))

(assert (=> bs!1256303 (= (and (= (_1!35779 lt!2222148) s!2326) (= (reg!15606 (regOne!31066 r!7292)) lt!2222247) (= lt!2222247 (regTwo!31066 r!7292))) (= lambda!287200 lambda!287190))))

(assert (=> bs!1256304 (= (and (= (_1!35779 lt!2222148) s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regOne!31066 r!7292)) (= lt!2222247 (regTwo!31066 r!7292))) (= lambda!287200 lambda!287179))))

(assert (=> bs!1256301 (not (= lambda!287200 lambda!287185))))

(assert (=> b!5446006 (not (= lambda!287200 lambda!287197))))

(assert (=> bs!1256301 (not (= lambda!287200 lambda!287187))))

(assert (=> bs!1256302 (= (and (= (_1!35779 lt!2222148) s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regTwo!31066 (regOne!31066 r!7292))) (= lt!2222247 lt!2222240)) (= lambda!287200 lambda!287184))))

(assert (=> bs!1256304 (not (= lambda!287200 lambda!287178))))

(assert (=> bs!1256300 (not (= lambda!287200 lambda!287191))))

(assert (=> bs!1256303 (not (= lambda!287200 lambda!287189))))

(assert (=> b!5446006 true))

(assert (=> b!5446006 true))

(assert (=> b!5446006 true))

(declare-fun lambda!287201 () Int)

(assert (=> bs!1256301 (not (= lambda!287201 lambda!287188))))

(assert (=> bs!1256300 (= (= (_1!35779 lt!2222148) (_1!35779 lt!2222282)) (= lambda!287201 lambda!287192))))

(assert (=> bs!1256302 (not (= lambda!287201 lambda!287183))))

(assert (=> b!5446006 (not (= lambda!287201 lambda!287198))))

(assert (=> b!5446006 (not (= lambda!287201 lambda!287199))))

(assert (=> bs!1256301 (not (= lambda!287201 lambda!287186))))

(assert (=> bs!1256300 (not (= lambda!287201 lambda!287193))))

(assert (=> bs!1256302 (not (= lambda!287201 lambda!287181))))

(assert (=> bs!1256302 (not (= lambda!287201 lambda!287182))))

(assert (=> bs!1256304 (not (= lambda!287201 lambda!287179))))

(assert (=> bs!1256301 (not (= lambda!287201 lambda!287185))))

(assert (=> b!5446006 (not (= lambda!287201 lambda!287197))))

(assert (=> bs!1256301 (not (= lambda!287201 lambda!287187))))

(assert (=> bs!1256302 (not (= lambda!287201 lambda!287184))))

(assert (=> bs!1256304 (not (= lambda!287201 lambda!287178))))

(assert (=> bs!1256303 (not (= lambda!287201 lambda!287190))))

(assert (=> b!5446006 (not (= lambda!287201 lambda!287200))))

(assert (=> bs!1256300 (not (= lambda!287201 lambda!287191))))

(assert (=> bs!1256303 (not (= lambda!287201 lambda!287189))))

(assert (=> b!5446006 true))

(assert (=> b!5446006 true))

(assert (=> b!5446006 true))

(declare-fun bs!1256305 () Bool)

(declare-fun b!5445995 () Bool)

(assert (= bs!1256305 (and b!5445995 b!5446005)))

(declare-fun lambda!287202 () Int)

(assert (=> bs!1256305 (not (= lambda!287202 lambda!287188))))

(declare-fun bs!1256306 () Bool)

(assert (= bs!1256306 (and b!5445995 b!5445993)))

(assert (=> bs!1256306 (not (= lambda!287202 lambda!287192))))

(declare-fun bs!1256307 () Bool)

(assert (= bs!1256307 (and b!5445995 b!5446028)))

(assert (=> bs!1256307 (= (and (= Nil!62006 s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regTwo!31066 (regOne!31066 r!7292))) (= lt!2222247 lt!2222240)) (= lambda!287202 lambda!287183))))

(declare-fun bs!1256308 () Bool)

(assert (= bs!1256308 (and b!5445995 b!5446006)))

(assert (=> bs!1256308 (not (= lambda!287202 lambda!287198))))

(assert (=> bs!1256308 (= (= Nil!62006 (_1!35779 lt!2222148)) (= lambda!287202 lambda!287199))))

(assert (=> bs!1256305 (not (= lambda!287202 lambda!287186))))

(assert (=> bs!1256306 (not (= lambda!287202 lambda!287193))))

(assert (=> bs!1256307 (= (and (= Nil!62006 s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292))) (= lt!2222247 lt!2222146)) (= lambda!287202 lambda!287181))))

(assert (=> bs!1256307 (not (= lambda!287202 lambda!287182))))

(assert (=> bs!1256308 (not (= lambda!287202 lambda!287201))))

(declare-fun bs!1256309 () Bool)

(assert (= bs!1256309 (and b!5445995 b!5446036)))

(assert (=> bs!1256309 (not (= lambda!287202 lambda!287179))))

(assert (=> bs!1256305 (= (and (= Nil!62006 s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292))) (= lt!2222247 lt!2222299)) (= lambda!287202 lambda!287185))))

(assert (=> bs!1256308 (= (and (= Nil!62006 s!2326) (= (reg!15606 (regOne!31066 r!7292)) lt!2222184) (= lt!2222247 (regTwo!31066 r!7292))) (= lambda!287202 lambda!287197))))

(assert (=> bs!1256305 (= (and (= Nil!62006 s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regTwo!31066 (regOne!31066 r!7292))) (= lt!2222247 lt!2222211)) (= lambda!287202 lambda!287187))))

(assert (=> bs!1256307 (not (= lambda!287202 lambda!287184))))

(assert (=> bs!1256309 (= (and (= Nil!62006 s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regOne!31066 r!7292)) (= lt!2222247 (regTwo!31066 r!7292))) (= lambda!287202 lambda!287178))))

(declare-fun bs!1256310 () Bool)

(assert (= bs!1256310 (and b!5445995 b!5446010)))

(assert (=> bs!1256310 (not (= lambda!287202 lambda!287190))))

(assert (=> bs!1256308 (not (= lambda!287202 lambda!287200))))

(assert (=> bs!1256306 (= (= Nil!62006 (_1!35779 lt!2222282)) (= lambda!287202 lambda!287191))))

(assert (=> bs!1256310 (= (and (= Nil!62006 s!2326) (= (reg!15606 (regOne!31066 r!7292)) lt!2222247) (= lt!2222247 (regTwo!31066 r!7292))) (= lambda!287202 lambda!287189))))

(assert (=> b!5445995 true))

(assert (=> b!5445995 true))

(declare-fun lambda!287203 () Int)

(assert (=> bs!1256305 (= (and (= Nil!62006 s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regTwo!31066 (regOne!31066 r!7292))) (= lt!2222247 lt!2222211)) (= lambda!287203 lambda!287188))))

(assert (=> bs!1256306 (not (= lambda!287203 lambda!287192))))

(assert (=> bs!1256307 (not (= lambda!287203 lambda!287183))))

(assert (=> bs!1256308 (not (= lambda!287203 lambda!287199))))

(assert (=> bs!1256305 (= (and (= Nil!62006 s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292))) (= lt!2222247 lt!2222299)) (= lambda!287203 lambda!287186))))

(assert (=> bs!1256306 (= (= Nil!62006 (_1!35779 lt!2222282)) (= lambda!287203 lambda!287193))))

(assert (=> bs!1256307 (not (= lambda!287203 lambda!287181))))

(assert (=> bs!1256307 (= (and (= Nil!62006 s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292))) (= lt!2222247 lt!2222146)) (= lambda!287203 lambda!287182))))

(assert (=> bs!1256308 (not (= lambda!287203 lambda!287201))))

(assert (=> bs!1256309 (= (and (= Nil!62006 s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regOne!31066 r!7292)) (= lt!2222247 (regTwo!31066 r!7292))) (= lambda!287203 lambda!287179))))

(assert (=> bs!1256305 (not (= lambda!287203 lambda!287185))))

(assert (=> bs!1256308 (not (= lambda!287203 lambda!287197))))

(assert (=> bs!1256305 (not (= lambda!287203 lambda!287187))))

(assert (=> bs!1256308 (= (and (= Nil!62006 s!2326) (= (reg!15606 (regOne!31066 r!7292)) lt!2222184) (= lt!2222247 (regTwo!31066 r!7292))) (= lambda!287203 lambda!287198))))

(assert (=> b!5445995 (not (= lambda!287203 lambda!287202))))

(assert (=> bs!1256307 (= (and (= Nil!62006 s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regTwo!31066 (regOne!31066 r!7292))) (= lt!2222247 lt!2222240)) (= lambda!287203 lambda!287184))))

(assert (=> bs!1256309 (not (= lambda!287203 lambda!287178))))

(assert (=> bs!1256310 (= (and (= Nil!62006 s!2326) (= (reg!15606 (regOne!31066 r!7292)) lt!2222247) (= lt!2222247 (regTwo!31066 r!7292))) (= lambda!287203 lambda!287190))))

(assert (=> bs!1256308 (= (= Nil!62006 (_1!35779 lt!2222148)) (= lambda!287203 lambda!287200))))

(assert (=> bs!1256306 (not (= lambda!287203 lambda!287191))))

(assert (=> bs!1256310 (not (= lambda!287203 lambda!287189))))

(assert (=> b!5445995 true))

(assert (=> b!5445995 true))

(declare-fun lambda!287204 () Int)

(assert (=> bs!1256305 (not (= lambda!287204 lambda!287188))))

(assert (=> bs!1256306 (= (= Nil!62006 (_1!35779 lt!2222282)) (= lambda!287204 lambda!287192))))

(assert (=> bs!1256308 (not (= lambda!287204 lambda!287199))))

(assert (=> bs!1256305 (not (= lambda!287204 lambda!287186))))

(assert (=> bs!1256306 (not (= lambda!287204 lambda!287193))))

(assert (=> bs!1256307 (not (= lambda!287204 lambda!287181))))

(assert (=> bs!1256307 (not (= lambda!287204 lambda!287182))))

(assert (=> bs!1256308 (= (= Nil!62006 (_1!35779 lt!2222148)) (= lambda!287204 lambda!287201))))

(assert (=> bs!1256309 (not (= lambda!287204 lambda!287179))))

(assert (=> bs!1256305 (not (= lambda!287204 lambda!287185))))

(assert (=> bs!1256308 (not (= lambda!287204 lambda!287197))))

(assert (=> bs!1256305 (not (= lambda!287204 lambda!287187))))

(assert (=> b!5445995 (not (= lambda!287204 lambda!287203))))

(assert (=> bs!1256307 (not (= lambda!287204 lambda!287183))))

(assert (=> bs!1256308 (not (= lambda!287204 lambda!287198))))

(assert (=> b!5445995 (not (= lambda!287204 lambda!287202))))

(assert (=> bs!1256307 (not (= lambda!287204 lambda!287184))))

(assert (=> bs!1256309 (not (= lambda!287204 lambda!287178))))

(assert (=> bs!1256310 (not (= lambda!287204 lambda!287190))))

(assert (=> bs!1256308 (not (= lambda!287204 lambda!287200))))

(assert (=> bs!1256306 (not (= lambda!287204 lambda!287191))))

(assert (=> bs!1256310 (not (= lambda!287204 lambda!287189))))

(assert (=> b!5445995 true))

(assert (=> b!5445995 true))

(declare-fun bs!1256311 () Bool)

(declare-fun b!5446022 () Bool)

(assert (= bs!1256311 (and b!5446022 b!5445993)))

(declare-fun lambda!287205 () Int)

(assert (=> bs!1256311 (= lambda!287205 lambda!287194)))

(declare-fun bs!1256312 () Bool)

(assert (= bs!1256312 (and b!5446022 b!5446006)))

(assert (=> bs!1256312 (= lambda!287205 lambda!287196)))

(declare-fun c!950414 () Bool)

(declare-fun lt!2222202 () Regex!15277)

(declare-fun lt!2222270 () Regex!15277)

(declare-fun c!950411 () Bool)

(declare-fun lt!2222195 () Regex!15277)

(declare-fun c!950409 () Bool)

(declare-fun c!950418 () Bool)

(declare-fun c!950415 () Bool)

(declare-fun call!392930 () Bool)

(declare-fun bm!392758 () Bool)

(declare-fun matchRSpec!2380 (Regex!15277 List!62130) Bool)

(assert (=> bm!392758 (= call!392930 (matchRSpec!2380 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292)))) (ite (or c!950418 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326))))))

(declare-datatypes ((List!62131 0))(
  ( (Nil!62007) (Cons!62007 (h!68455 Regex!15277) (t!375358 List!62131)) )
))
(declare-fun lt!2222162 () List!62131)

(declare-fun c!950413 () Bool)

(declare-fun lt!2222205 () List!62131)

(declare-datatypes ((Context!9322 0))(
  ( (Context!9323 (exprs!5161 List!62131)) )
))
(declare-datatypes ((List!62132 0))(
  ( (Nil!62008) (Cons!62008 (h!68456 Context!9322) (t!375359 List!62132)) )
))
(declare-fun zl!343 () List!62132)

(declare-fun call!392886 () Regex!15277)

(declare-fun c!950410 () Bool)

(declare-fun bm!392760 () Bool)

(declare-fun lt!2222194 () List!62131)

(declare-fun generalisedConcat!946 (List!62131) Regex!15277)

(assert (=> bm!392760 (= call!392886 (generalisedConcat!946 (ite c!950413 (t!375358 (exprs!5161 (h!68456 zl!343))) (ite c!950418 lt!2222205 (ite c!950410 lt!2222194 (ite c!950414 lt!2222162 (t!375358 (exprs!5161 (h!68456 zl!343)))))))))))

(declare-fun bm!392761 () Bool)

(declare-fun call!392874 () Bool)

(declare-fun call!392840 () Bool)

(assert (=> bm!392761 (= call!392874 call!392840)))

(declare-fun call!392833 () Bool)

(declare-fun bm!392762 () Bool)

(declare-fun Exists!2458 (Int) Bool)

(assert (=> bm!392762 (= call!392833 (Exists!2458 (ite c!950410 lambda!287183 (ite c!950414 lambda!287187 (ite c!950409 lambda!287189 (ite c!950415 lambda!287201 lambda!287202))))))))

(declare-fun bm!392763 () Bool)

(declare-datatypes ((Unit!154704 0))(
  ( (Unit!154705) )
))
(declare-fun call!392877 () Unit!154704)

(declare-fun call!392818 () Unit!154704)

(assert (=> bm!392763 (= call!392877 call!392818)))

(declare-fun bm!392764 () Bool)

(declare-fun call!392868 () Unit!154704)

(declare-fun call!392780 () Unit!154704)

(assert (=> bm!392764 (= call!392868 call!392780)))

(declare-fun call!392961 () Unit!154704)

(declare-fun lt!2222301 () Regex!15277)

(declare-fun bm!392759 () Bool)

(declare-fun lt!2222221 () Regex!15277)

(declare-fun mainMatchTheorem!2380 (Regex!15277 List!62130) Unit!154704)

(assert (=> bm!392759 (= call!392961 (mainMatchTheorem!2380 (ite c!950418 lt!2222301 (ite c!950410 lt!2222146 (ite c!950414 lt!2222270 (ite c!950411 lt!2222221 (regOne!31066 r!7292))))) s!2326))))

(declare-fun res!2319098 () Bool)

(declare-fun e!3373227 () Bool)

(assert (=> start!570878 (=> (not res!2319098) (not e!3373227))))

(declare-fun validRegex!7013 (Regex!15277) Bool)

(assert (=> start!570878 (= res!2319098 (validRegex!7013 r!7292))))

(assert (=> start!570878 e!3373227))

(declare-fun e!3373233 () Bool)

(assert (=> start!570878 e!3373233))

(declare-fun condSetEmpty!35641 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9322))

(assert (=> start!570878 (= condSetEmpty!35641 (= z!1189 ((as const (Array Context!9322 Bool)) false)))))

(declare-fun setRes!35641 () Bool)

(assert (=> start!570878 setRes!35641))

(declare-fun e!3373250 () Bool)

(assert (=> start!570878 e!3373250))

(declare-fun e!3373225 () Bool)

(assert (=> start!570878 e!3373225))

(declare-fun bm!392765 () Bool)

(declare-fun call!392804 () Bool)

(declare-fun call!392915 () Bool)

(assert (=> bm!392765 (= call!392804 call!392915)))

(declare-fun b!5445982 () Bool)

(declare-fun res!2319096 () Bool)

(declare-fun e!3373218 () Bool)

(assert (=> b!5445982 (=> res!2319096 e!3373218)))

(assert (=> b!5445982 (= res!2319096 (not (= r!7292 (generalisedConcat!946 (exprs!5161 (h!68456 zl!343))))))))

(declare-fun bm!392766 () Bool)

(declare-fun call!392919 () Bool)

(declare-fun call!392895 () Bool)

(assert (=> bm!392766 (= call!392919 call!392895)))

(declare-fun b!5445983 () Bool)

(declare-fun e!3373231 () Bool)

(declare-fun lt!2222204 () Bool)

(assert (=> b!5445983 (= e!3373231 lt!2222204)))

(declare-fun bm!392767 () Bool)

(declare-fun call!392922 () Unit!154704)

(declare-fun call!392848 () Unit!154704)

(assert (=> bm!392767 (= call!392922 call!392848)))

(declare-fun bm!392768 () Bool)

(declare-fun call!392823 () Unit!154704)

(assert (=> bm!392768 (= call!392823 call!392961)))

(declare-fun bm!392769 () Bool)

(declare-fun call!392837 () Unit!154704)

(declare-fun call!392861 () Unit!154704)

(assert (=> bm!392769 (= call!392837 call!392861)))

(declare-fun b!5445984 () Bool)

(declare-fun e!3373222 () Unit!154704)

(declare-fun Unit!154706 () Unit!154704)

(assert (=> b!5445984 (= e!3373222 Unit!154706)))

(declare-fun lt!2222245 () (InoxSet Context!9322))

(declare-fun lt!2222248 () Context!9322)

(assert (=> b!5445984 (= lt!2222245 (store ((as const (Array Context!9322 Bool)) false) lt!2222248 true))))

(declare-fun lt!2222197 () Regex!15277)

(assert (=> b!5445984 (= lt!2222197 call!392886)))

(declare-fun lt!2222287 () Unit!154704)

(declare-fun call!392865 () Unit!154704)

(assert (=> b!5445984 (= lt!2222287 call!392865)))

(declare-fun call!392817 () Bool)

(declare-fun call!392802 () Bool)

(assert (=> b!5445984 (= call!392817 call!392802)))

(declare-fun b!5445985 () Bool)

(declare-fun e!3373249 () Bool)

(assert (=> b!5445985 e!3373249))

(declare-fun res!2319085 () Bool)

(assert (=> b!5445985 (=> (not res!2319085) (not e!3373249))))

(declare-fun lt!2222208 () Bool)

(declare-fun call!392774 () Bool)

(assert (=> b!5445985 (= res!2319085 (= lt!2222208 call!392774))))

(declare-fun lt!2222219 () Unit!154704)

(declare-fun call!392881 () Unit!154704)

(assert (=> b!5445985 (= lt!2222219 call!392881)))

(declare-fun lt!2222254 () Bool)

(assert (=> b!5445985 (= lt!2222254 call!392930)))

(declare-fun lt!2222241 () Unit!154704)

(declare-fun call!392822 () Unit!154704)

(assert (=> b!5445985 (= lt!2222241 call!392822)))

(assert (=> b!5445985 (= lt!2222208 lt!2222254)))

(declare-fun call!392957 () Bool)

(assert (=> b!5445985 (= lt!2222254 call!392957)))

(declare-fun call!392803 () Bool)

(assert (=> b!5445985 (= lt!2222208 call!392803)))

(assert (=> b!5445985 (= lt!2222195 (Union!15277 (Concat!24122 (regOne!31067 (regOne!31066 r!7292)) (regTwo!31066 r!7292)) (Concat!24122 (regTwo!31067 (regOne!31066 r!7292)) (regTwo!31066 r!7292))))))

(declare-fun lt!2222267 () Regex!15277)

(assert (=> b!5445985 (= lt!2222267 (Concat!24122 (regOne!31066 r!7292) (regTwo!31066 r!7292)))))

(declare-fun lt!2222229 () Unit!154704)

(declare-fun lemmaConcatDistributesInUnion!24 (Regex!15277 Regex!15277 Regex!15277 List!62130) Unit!154704)

(assert (=> b!5445985 (= lt!2222229 (lemmaConcatDistributesInUnion!24 (regOne!31067 (regOne!31066 r!7292)) (regTwo!31067 (regOne!31066 r!7292)) (regTwo!31066 r!7292) s!2326))))

(declare-fun lt!2222244 () Bool)

(declare-fun lt!2222302 () Regex!15277)

(assert (=> b!5445985 (= lt!2222244 (matchRSpec!2380 lt!2222302 s!2326))))

(declare-fun lt!2222206 () Unit!154704)

(assert (=> b!5445985 (= lt!2222206 (mainMatchTheorem!2380 lt!2222302 s!2326))))

(declare-fun lt!2222222 () Bool)

(declare-fun call!392944 () Bool)

(assert (=> b!5445985 (= lt!2222222 call!392944)))

(declare-fun lt!2222185 () Unit!154704)

(assert (=> b!5445985 (= lt!2222185 call!392961)))

(declare-fun lt!2222196 () (InoxSet Context!9322))

(declare-fun matchZipper!1521 ((InoxSet Context!9322) List!62130) Bool)

(assert (=> b!5445985 (= lt!2222244 (matchZipper!1521 lt!2222196 s!2326))))

(declare-fun call!392809 () Bool)

(assert (=> b!5445985 (= lt!2222244 call!392809)))

(declare-fun lt!2222255 () Unit!154704)

(declare-fun call!392835 () Unit!154704)

(assert (=> b!5445985 (= lt!2222255 call!392835)))

(declare-fun call!392857 () Regex!15277)

(assert (=> b!5445985 (= lt!2222302 call!392857)))

(declare-fun call!392935 () Bool)

(assert (=> b!5445985 (= lt!2222222 call!392935)))

(declare-fun call!392900 () Bool)

(assert (=> b!5445985 (= lt!2222222 call!392900)))

(declare-fun lt!2222300 () Unit!154704)

(declare-fun call!392918 () Unit!154704)

(assert (=> b!5445985 (= lt!2222300 call!392918)))

(declare-fun call!392794 () Regex!15277)

(assert (=> b!5445985 (= lt!2222301 call!392794)))

(declare-fun lt!2222192 () Unit!154704)

(declare-fun e!3373239 () Unit!154704)

(assert (=> b!5445985 (= lt!2222192 e!3373239)))

(declare-fun c!950416 () Bool)

(declare-fun call!392967 () Bool)

(assert (=> b!5445985 (= c!950416 call!392967)))

(declare-fun call!392962 () (InoxSet Context!9322))

(declare-fun call!392827 () (InoxSet Context!9322))

(assert (=> b!5445985 (= call!392962 call!392827)))

(declare-fun lt!2222231 () Unit!154704)

(assert (=> b!5445985 (= lt!2222231 call!392780)))

(declare-fun lt!2222188 () (InoxSet Context!9322))

(assert (=> b!5445985 (= lt!2222188 call!392827)))

(declare-fun lt!2222285 () Unit!154704)

(declare-fun e!3373214 () Unit!154704)

(assert (=> b!5445985 (= lt!2222285 e!3373214)))

(declare-fun c!950408 () Bool)

(declare-fun nullable!5446 (Regex!15277) Bool)

(assert (=> b!5445985 (= c!950408 (nullable!5446 (regOne!31067 (regOne!31066 r!7292))))))

(declare-fun call!392966 () (InoxSet Context!9322))

(declare-fun call!392908 () (InoxSet Context!9322))

(assert (=> b!5445985 (= call!392966 call!392908)))

(declare-fun lt!2222174 () Unit!154704)

(declare-fun call!392838 () Unit!154704)

(assert (=> b!5445985 (= lt!2222174 call!392838)))

(declare-fun lt!2222186 () (InoxSet Context!9322))

(assert (=> b!5445985 (= lt!2222186 call!392908)))

(declare-fun lt!2222175 () Context!9322)

(assert (=> b!5445985 (= lt!2222196 (store ((as const (Array Context!9322 Bool)) false) lt!2222175 true))))

(declare-fun lt!2222134 () List!62131)

(assert (=> b!5445985 (= lt!2222175 (Context!9323 lt!2222134))))

(assert (=> b!5445985 (= lt!2222134 (Cons!62007 (regTwo!31067 (regOne!31066 r!7292)) (t!375358 (exprs!5161 (h!68456 zl!343)))))))

(declare-fun lt!2222265 () (InoxSet Context!9322))

(declare-fun lt!2222140 () Context!9322)

(assert (=> b!5445985 (= lt!2222265 (store ((as const (Array Context!9322 Bool)) false) lt!2222140 true))))

(assert (=> b!5445985 (= lt!2222140 (Context!9323 lt!2222205))))

(assert (=> b!5445985 (= lt!2222205 (Cons!62007 (regOne!31067 (regOne!31066 r!7292)) (t!375358 (exprs!5161 (h!68456 zl!343)))))))

(declare-fun call!392896 () Bool)

(declare-fun e!3373220 () Bool)

(assert (=> b!5445985 (= call!392896 e!3373220)))

(declare-fun res!2319086 () Bool)

(assert (=> b!5445985 (=> res!2319086 e!3373220)))

(declare-fun lt!2222201 () Bool)

(assert (=> b!5445985 (= res!2319086 lt!2222201)))

(declare-fun call!392871 () Bool)

(assert (=> b!5445985 (= lt!2222201 call!392871)))

(declare-fun lt!2222168 () Unit!154704)

(declare-fun call!392904 () Unit!154704)

(assert (=> b!5445985 (= lt!2222168 call!392904)))

(declare-fun lt!2222289 () (InoxSet Context!9322))

(declare-fun call!392945 () (InoxSet Context!9322))

(assert (=> b!5445985 (= lt!2222289 call!392945)))

(declare-fun lt!2222142 () (InoxSet Context!9322))

(declare-fun call!392964 () (InoxSet Context!9322))

(assert (=> b!5445985 (= lt!2222142 call!392964)))

(declare-fun e!3373229 () Unit!154704)

(declare-fun Unit!154707 () Unit!154704)

(assert (=> b!5445985 (= e!3373229 Unit!154707)))

(declare-fun bm!392770 () Bool)

(declare-fun call!392829 () Unit!154704)

(declare-fun call!392799 () Unit!154704)

(assert (=> bm!392770 (= call!392829 call!392799)))

(declare-fun b!5445986 () Bool)

(declare-fun tp!1500996 () Bool)

(assert (=> b!5445986 (= e!3373233 tp!1500996)))

(declare-fun bm!392771 () Bool)

(declare-fun call!392763 () (InoxSet Context!9322))

(declare-fun call!392928 () (InoxSet Context!9322))

(assert (=> bm!392771 (= call!392763 call!392928)))

(declare-fun bm!392772 () Bool)

(assert (=> bm!392772 (= call!392794 call!392886)))

(declare-fun b!5445987 () Bool)

(declare-fun Unit!154708 () Unit!154704)

(assert (=> b!5445987 (= e!3373239 Unit!154708)))

(declare-fun bm!392773 () Bool)

(declare-fun call!392801 () Unit!154704)

(declare-fun call!392941 () Unit!154704)

(assert (=> bm!392773 (= call!392801 call!392941)))

(declare-fun bm!392774 () Bool)

(declare-fun call!392805 () Unit!154704)

(declare-fun call!392796 () Unit!154704)

(assert (=> bm!392774 (= call!392805 call!392796)))

(declare-fun bm!392775 () Bool)

(declare-fun call!392810 () Bool)

(assert (=> bm!392775 (= call!392810 call!392809)))

(declare-fun b!5445988 () Bool)

(declare-fun e!3373228 () Bool)

(declare-fun lt!2222274 () Bool)

(declare-fun lt!2222214 () Bool)

(assert (=> b!5445988 (= e!3373228 (or (not lt!2222274) lt!2222214))))

(declare-fun bm!392776 () Bool)

(declare-fun call!392800 () Unit!154704)

(assert (=> bm!392776 (= call!392800 call!392904)))

(declare-fun lt!2222251 () (InoxSet Context!9322))

(declare-fun lt!2222169 () (InoxSet Context!9322))

(declare-fun lambda!287180 () Int)

(declare-fun bm!392777 () Bool)

(declare-fun flatMap!1004 ((InoxSet Context!9322) Int) (InoxSet Context!9322))

(assert (=> bm!392777 (= call!392966 (flatMap!1004 (ite c!950418 lt!2222265 (ite c!950410 lt!2222251 lt!2222169)) (ite c!950418 lambda!287180 (ite c!950410 lambda!287180 lambda!287180))))))

(declare-fun b!5445989 () Bool)

(declare-fun e!3373242 () Unit!154704)

(declare-fun Unit!154709 () Unit!154704)

(assert (=> b!5445989 (= e!3373242 Unit!154709)))

(declare-fun lt!2222132 () (InoxSet Context!9322))

(assert (=> b!5445989 (= lt!2222132 (store ((as const (Array Context!9322 Bool)) false) lt!2222248 true))))

(declare-fun lt!2222263 () Unit!154704)

(declare-fun call!392947 () Unit!154704)

(assert (=> b!5445989 (= lt!2222263 call!392947)))

(declare-fun call!392790 () (InoxSet Context!9322))

(assert (=> b!5445989 (= call!392763 call!392790)))

(declare-fun lt!2222180 () Regex!15277)

(declare-fun call!392893 () Regex!15277)

(assert (=> b!5445989 (= lt!2222180 call!392893)))

(declare-fun lt!2222203 () Unit!154704)

(declare-fun call!392798 () Unit!154704)

(assert (=> b!5445989 (= lt!2222203 call!392798)))

(declare-fun res!2319101 () Bool)

(declare-fun call!392882 () Bool)

(declare-fun call!392807 () Bool)

(assert (=> b!5445989 (= res!2319101 (= call!392882 call!392807))))

(declare-fun e!3373244 () Bool)

(assert (=> b!5445989 (=> (not res!2319101) (not e!3373244))))

(assert (=> b!5445989 e!3373244))

(declare-fun bm!392778 () Bool)

(declare-fun call!392875 () Bool)

(declare-fun call!392890 () Bool)

(assert (=> bm!392778 (= call!392875 call!392890)))

(declare-fun lt!2222226 () tuple2!64952)

(declare-fun bm!392779 () Bool)

(declare-fun lt!2222152 () List!62130)

(declare-fun call!392813 () Unit!154704)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!244 (Regex!15277 Regex!15277 List!62130 List!62130) Unit!154704)

(assert (=> bm!392779 (= call!392813 (lemmaTwoRegexMatchThenConcatMatchesConcatString!244 lt!2222247 (regTwo!31066 r!7292) (ite c!950409 (_2!35779 lt!2222226) lt!2222152) (ite c!950409 (_2!35779 lt!2222282) (_2!35779 lt!2222148))))))

(declare-fun bm!392780 () Bool)

(declare-fun call!392926 () Unit!154704)

(declare-fun lemmaConcatAssociative!72 (Regex!15277 Regex!15277 Regex!15277 List!62130) Unit!154704)

(assert (=> bm!392780 (= call!392926 (lemmaConcatAssociative!72 (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) lt!2222247) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))) s!2326))))

(declare-fun bm!392781 () Bool)

(declare-fun call!392768 () Bool)

(declare-fun call!392842 () Bool)

(assert (=> bm!392781 (= call!392768 call!392842)))

(declare-fun b!5445990 () Bool)

(declare-fun Unit!154710 () Unit!154704)

(assert (=> b!5445990 (= e!3373214 Unit!154710)))

(declare-fun lt!2222122 () (InoxSet Context!9322))

(declare-fun lt!2222217 () Unit!154704)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!514 ((InoxSet Context!9322) (InoxSet Context!9322) List!62130) Unit!154704)

(assert (=> b!5445990 (= lt!2222217 (lemmaZipperConcatMatchesSameAsBothZippers!514 lt!2222142 lt!2222122 (t!375357 s!2326)))))

(declare-fun res!2319092 () Bool)

(assert (=> b!5445990 (= res!2319092 lt!2222201)))

(declare-fun e!3373223 () Bool)

(assert (=> b!5445990 (=> res!2319092 e!3373223)))

(declare-fun call!392914 () Bool)

(assert (=> b!5445990 (= call!392914 e!3373223)))

(declare-fun b!5445991 () Bool)

(declare-fun e!3373247 () Unit!154704)

(declare-fun Unit!154711 () Unit!154704)

(assert (=> b!5445991 (= e!3373247 Unit!154711)))

(declare-fun bm!392782 () Bool)

(declare-fun call!392906 () Bool)

(declare-fun call!392765 () Bool)

(assert (=> bm!392782 (= call!392906 call!392765)))

(declare-fun bm!392783 () Bool)

(declare-datatypes ((Option!15388 0))(
  ( (None!15387) (Some!15387 (v!51416 tuple2!64952)) )
))
(declare-fun call!392905 () Option!15388)

(declare-fun findConcatSeparation!1802 (Regex!15277 Regex!15277 List!62130 List!62130 List!62130) Option!15388)

(assert (=> bm!392783 (= call!392905 (findConcatSeparation!1802 (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 (reg!15606 (regOne!31066 r!7292)))) (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 (ite c!950409 (regTwo!31066 r!7292) lt!2222247))) Nil!62006 (ite (or c!950410 c!950414 c!950409) s!2326 (_1!35779 lt!2222148)) (ite (or c!950410 c!950414 c!950409) s!2326 (_1!35779 lt!2222148))))))

(declare-fun bm!392784 () Bool)

(declare-fun call!392891 () Unit!154704)

(assert (=> bm!392784 (= call!392818 call!392891)))

(declare-fun b!5445992 () Bool)

(declare-fun e!3373215 () Bool)

(declare-fun call!392791 () Bool)

(assert (=> b!5445992 (= e!3373215 call!392791)))

(declare-fun bm!392785 () Bool)

(declare-fun call!392960 () Bool)

(assert (=> bm!392785 (= call!392960 call!392957)))

(declare-fun bm!392786 () Bool)

(declare-fun call!392793 () List!62130)

(declare-fun call!392880 () List!62130)

(assert (=> bm!392786 (= call!392793 call!392880)))

(declare-fun Unit!154712 () Unit!154704)

(assert (=> b!5445993 (= e!3373242 Unit!154712)))

(declare-fun lt!2222283 () Unit!154704)

(declare-fun call!392869 () Unit!154704)

(assert (=> b!5445993 (= lt!2222283 call!392869)))

(declare-fun call!392892 () Bool)

(assert (=> b!5445993 (= call!392882 call!392892)))

(declare-fun lt!2222144 () Unit!154704)

(assert (=> b!5445993 (= lt!2222144 call!392922)))

(declare-fun lt!2222138 () Option!15388)

(declare-fun call!392872 () Option!15388)

(assert (=> b!5445993 (= lt!2222138 call!392872)))

(declare-fun call!392917 () Bool)

(declare-fun call!392854 () Bool)

(assert (=> b!5445993 (= call!392917 call!392854)))

(declare-fun lt!2222266 () Unit!154704)

(declare-fun call!392767 () Unit!154704)

(assert (=> b!5445993 (= lt!2222266 call!392767)))

(declare-fun call!392855 () Bool)

(declare-fun call!392826 () Bool)

(assert (=> b!5445993 (= call!392855 call!392826)))

(declare-fun lt!2222160 () Unit!154704)

(assert (=> b!5445993 (= lt!2222160 call!392837)))

(declare-fun call!392955 () Bool)

(declare-fun call!392771 () Bool)

(assert (=> b!5445993 (= call!392955 call!392771)))

(declare-fun call!392939 () tuple2!64952)

(assert (=> b!5445993 (= lt!2222226 call!392939)))

(declare-fun lt!2222199 () Unit!154704)

(declare-fun call!392884 () Unit!154704)

(assert (=> b!5445993 (= lt!2222199 call!392884)))

(declare-fun lt!2222215 () List!62130)

(assert (=> b!5445993 (= lt!2222215 call!392880)))

(declare-fun lt!2222286 () List!62130)

(declare-fun call!392924 () List!62130)

(assert (=> b!5445993 (= lt!2222286 call!392924)))

(declare-fun lt!2222130 () List!62130)

(declare-fun call!392777 () List!62130)

(assert (=> b!5445993 (= lt!2222130 call!392777)))

(declare-fun lt!2222190 () List!62130)

(declare-fun call!392783 () List!62130)

(assert (=> b!5445993 (= lt!2222190 call!392783)))

(assert (=> b!5445993 (= lt!2222130 lt!2222190)))

(declare-fun lt!2222308 () Unit!154704)

(declare-fun call!392859 () Unit!154704)

(assert (=> b!5445993 (= lt!2222308 call!392859)))

(declare-fun call!392862 () Bool)

(assert (=> b!5445993 call!392862))

(declare-fun lt!2222147 () Unit!154704)

(assert (=> b!5445993 (= lt!2222147 call!392813)))

(declare-fun call!392936 () Bool)

(assert (=> b!5445993 call!392936))

(declare-fun lt!2222249 () Unit!154704)

(declare-fun call!392912 () Unit!154704)

(assert (=> b!5445993 (= lt!2222249 call!392912)))

(declare-fun call!392843 () Bool)

(assert (=> b!5445993 (= call!392874 call!392843)))

(declare-fun lt!2222165 () Unit!154704)

(assert (=> b!5445993 (= lt!2222165 call!392798)))

(declare-fun call!392931 () Bool)

(assert (=> b!5445993 call!392931))

(declare-fun lt!2222307 () Unit!154704)

(declare-fun call!392851 () Unit!154704)

(assert (=> b!5445993 (= lt!2222307 call!392851)))

(declare-fun lt!2222164 () Unit!154704)

(declare-fun call!392897 () Unit!154704)

(assert (=> b!5445993 (= lt!2222164 call!392897)))

(declare-fun call!392773 () Bool)

(assert (=> b!5445993 call!392773))

(declare-fun lt!2222187 () Unit!154704)

(assert (=> b!5445993 (= lt!2222187 call!392799)))

(declare-fun res!2319103 () Bool)

(declare-fun call!392772 () Bool)

(assert (=> b!5445993 (= res!2319103 call!392772)))

(assert (=> b!5445993 (=> (not res!2319103) (not e!3373231))))

(assert (=> b!5445993 e!3373231))

(declare-fun lt!2222143 () Unit!154704)

(declare-fun call!392792 () Unit!154704)

(assert (=> b!5445993 (= lt!2222143 call!392792)))

(assert (=> b!5445993 call!392807))

(declare-fun lt!2222155 () Regex!15277)

(declare-fun bm!392787 () Bool)

(assert (=> bm!392787 (= call!392944 (matchRSpec!2380 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221))) s!2326))))

(declare-fun bm!392788 () Bool)

(declare-fun call!392925 () Unit!154704)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1112 (Regex!15277 Regex!15277 List!62130) Unit!154704)

(assert (=> bm!392788 (= call!392925 (lemmaExistCutMatchRandMatchRSpecEquivalent!1112 (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006)))))))

(declare-fun bm!392789 () Bool)

(declare-fun call!392797 () Option!15388)

(assert (=> bm!392789 (= call!392797 (findConcatSeparation!1802 (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 (reg!15606 (regOne!31066 r!7292)) (ite c!950415 lt!2222184 (reg!15606 (regOne!31066 r!7292))))) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (ite c!950409 lt!2222247 (ite c!950415 (regTwo!31066 r!7292) lt!2222247)))) Nil!62006 (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006))) (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)))))))

(declare-fun bm!392790 () Bool)

(declare-fun lt!2222297 () Context!9322)

(declare-fun lt!2222123 () (InoxSet Context!9322))

(declare-fun lt!2222157 () Context!9322)

(declare-fun lt!2222292 () Regex!15277)

(declare-fun lt!2222158 () (InoxSet Context!9322))

(declare-fun lt!2222304 () Regex!15277)

(declare-fun lt!2222213 () Regex!15277)

(declare-fun lt!2222119 () (InoxSet Context!9322))

(declare-fun c!950420 () Bool)

(declare-fun lt!2222128 () (InoxSet Context!9322))

(declare-fun lt!2222313 () Context!9322)

(declare-fun lt!2222314 () (InoxSet Context!9322))

(declare-fun lt!2222305 () tuple2!64952)

(declare-fun theoremZipperRegexEquiv!557 ((InoxSet Context!9322) List!62132 Regex!15277 List!62130) Unit!154704)

(assert (=> bm!392790 (= call!392835 (theoremZipperRegexEquiv!557 (ite c!950418 lt!2222196 (ite c!950410 lt!2222123 (ite c!950414 lt!2222128 (ite c!950411 (ite c!950409 (ite c!950420 lt!2222132 lt!2222119) (ite c!950415 lt!2222119 lt!2222158)) lt!2222314)))) (ite c!950418 (Cons!62008 lt!2222175 Nil!62008) (ite c!950410 (Cons!62008 lt!2222297 Nil!62008) (ite c!950414 (Cons!62008 lt!2222157 Nil!62008) (ite c!950411 (ite c!950409 (ite c!950420 (Cons!62008 lt!2222248 Nil!62008) (Cons!62008 lt!2222313 Nil!62008)) (ite c!950415 (Cons!62008 lt!2222313 Nil!62008) (Cons!62008 lt!2222248 Nil!62008))) (Cons!62008 lt!2222248 Nil!62008))))) (ite c!950418 lt!2222302 (ite c!950410 lt!2222146 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 (ite c!950420 lt!2222180 lt!2222304) (ite c!950415 lt!2222304 lt!2222292)) lt!2222213)))) (ite (or c!950418 c!950410 c!950414) s!2326 (ite c!950411 (ite c!950409 (ite c!950420 s!2326 lt!2222286) (ite c!950415 (_2!35779 lt!2222305) s!2326)) s!2326))))))

(declare-fun bm!392791 () Bool)

(declare-fun call!392849 () Bool)

(declare-fun call!392907 () Bool)

(assert (=> bm!392791 (= call!392849 call!392907)))

(declare-fun call!392867 () Unit!154704)

(declare-fun bm!392792 () Bool)

(declare-fun lemmaFlatMapOnSingletonSet!536 ((InoxSet Context!9322) Context!9322 Int) Unit!154704)

(assert (=> bm!392792 (= call!392867 (lemmaFlatMapOnSingletonSet!536 (ite c!950411 (ite c!950409 lt!2222132 lt!2222158) lt!2222314) lt!2222248 (ite c!950411 (ite c!950409 lambda!287180 lambda!287180) lambda!287180)))))

(declare-fun setIsEmpty!35641 () Bool)

(assert (=> setIsEmpty!35641 setRes!35641))

(declare-fun b!5445994 () Bool)

(declare-fun e!3373243 () Unit!154704)

(declare-fun Unit!154713 () Unit!154704)

(assert (=> b!5445994 (= e!3373243 Unit!154713)))

(assert (=> b!5445994 (= lt!2222247 (regOne!31066 r!7292))))

(declare-fun lt!2222227 () List!62131)

(assert (=> b!5445994 (= lt!2222227 (Cons!62007 lt!2222247 (t!375358 (exprs!5161 (h!68456 zl!343)))))))

(declare-fun lt!2222232 () Context!9322)

(assert (=> b!5445994 (= lt!2222232 (Context!9323 (Cons!62007 (reg!15606 (regOne!31066 r!7292)) lt!2222227)))))

(declare-fun lt!2222163 () (InoxSet Context!9322))

(assert (=> b!5445994 (= lt!2222163 (store ((as const (Array Context!9322 Bool)) false) lt!2222232 true))))

(declare-fun lt!2222189 () (InoxSet Context!9322))

(assert (=> b!5445994 (= lt!2222189 call!392908)))

(declare-fun lt!2222133 () Unit!154704)

(declare-fun call!392878 () Unit!154704)

(assert (=> b!5445994 (= lt!2222133 call!392878)))

(assert (=> b!5445994 (= (flatMap!1004 lt!2222163 lambda!287180) call!392908)))

(assert (=> b!5445994 (= lt!2222313 (Context!9323 lt!2222227))))

(declare-fun lt!2222291 () (InoxSet Context!9322))

(declare-fun call!392934 () (InoxSet Context!9322))

(assert (=> b!5445994 (= lt!2222291 call!392934)))

(assert (=> b!5445994 (= lt!2222304 (Concat!24122 lt!2222247 (regTwo!31066 r!7292)))))

(assert (=> b!5445994 (= lt!2222221 (Concat!24122 (reg!15606 (regOne!31066 r!7292)) lt!2222304))))

(declare-fun lt!2222317 () List!62131)

(assert (=> b!5445994 (= lt!2222317 (Cons!62007 (reg!15606 (regOne!31066 r!7292)) Nil!62007))))

(declare-fun lt!2222124 () Context!9322)

(assert (=> b!5445994 (= lt!2222124 (Context!9323 lt!2222317))))

(assert (=> b!5445994 (= lt!2222169 (store ((as const (Array Context!9322 Bool)) false) lt!2222124 true))))

(assert (=> b!5445994 (= lt!2222119 (store ((as const (Array Context!9322 Bool)) false) lt!2222313 true))))

(declare-fun lt!2222269 () (InoxSet Context!9322))

(declare-fun call!392870 () (InoxSet Context!9322))

(assert (=> b!5445994 (= lt!2222269 call!392870)))

(declare-fun lt!2222288 () (InoxSet Context!9322))

(declare-fun call!392821 () (InoxSet Context!9322))

(assert (=> b!5445994 (= lt!2222288 call!392821)))

(declare-fun lt!2222141 () Unit!154704)

(assert (=> b!5445994 (= lt!2222141 call!392868)))

(declare-fun call!392909 () (InoxSet Context!9322))

(assert (=> b!5445994 (= call!392909 call!392870)))

(declare-fun lt!2222172 () Unit!154704)

(assert (=> b!5445994 (= lt!2222172 (lemmaFlatMapOnSingletonSet!536 lt!2222119 lt!2222313 lambda!287180))))

(declare-fun call!392943 () (InoxSet Context!9322))

(assert (=> b!5445994 (= call!392943 call!392821)))

(declare-fun lt!2222183 () Unit!154704)

(assert (=> b!5445994 (= lt!2222183 call!392818)))

(declare-fun call!392820 () Bool)

(assert (=> b!5445994 (= lt!2222204 call!392820)))

(declare-fun res!2319099 () Bool)

(declare-fun call!392824 () Bool)

(assert (=> b!5445994 (= res!2319099 (= lt!2222204 call!392824))))

(assert (=> b!5445994 (=> (not res!2319099) (not e!3373228))))

(assert (=> b!5445994 e!3373228))

(assert (=> b!5445994 (= c!950409 lt!2222274)))

(declare-fun lt!2222136 () Unit!154704)

(declare-fun e!3373248 () Unit!154704)

(assert (=> b!5445994 (= lt!2222136 e!3373248)))

(assert (=> b!5445994 (= lt!2222274 call!392915)))

(declare-fun bm!392793 () Bool)

(declare-fun call!392812 () Bool)

(assert (=> bm!392793 (= call!392791 call!392812)))

(declare-fun bm!392794 () Bool)

(declare-fun call!392828 () (InoxSet Context!9322))

(declare-fun call!392808 () (InoxSet Context!9322))

(assert (=> bm!392794 (= call!392828 call!392808)))

(declare-fun bm!392795 () Bool)

(assert (=> bm!392795 (= call!392870 call!392828)))

(declare-fun bm!392796 () Bool)

(assert (=> bm!392796 (= call!392947 call!392867)))

(declare-fun bm!392797 () Bool)

(declare-fun call!392910 () Bool)

(assert (=> bm!392797 (= call!392915 call!392910)))

(declare-fun bm!392798 () Bool)

(assert (=> bm!392798 (= call!392840 call!392803)))

(declare-fun bm!392799 () Bool)

(assert (=> bm!392799 (= call!392857 (generalisedConcat!946 (ite c!950418 lt!2222134 (t!375358 (exprs!5161 (h!68456 zl!343))))))))

(declare-fun bm!392800 () Bool)

(declare-fun call!392788 () (InoxSet Context!9322))

(assert (=> bm!392800 (= call!392788 (flatMap!1004 (ite c!950414 lt!2222128 (ite c!950411 lt!2222119 lt!2222314)) (ite c!950414 lambda!287180 (ite c!950411 lambda!287180 lambda!287180))))))

(declare-fun bm!392801 () Bool)

(declare-fun derivationStepZipperUp!649 (Context!9322 C!30824) (InoxSet Context!9322))

(assert (=> bm!392801 (= call!392821 (derivationStepZipperUp!649 (ite c!950410 lt!2222297 lt!2222313) (h!68454 s!2326)))))

(declare-fun e!3373221 () Bool)

(assert (=> b!5445995 e!3373221))

(declare-fun res!2319095 () Bool)

(assert (=> b!5445995 (=> (not res!2319095) (not e!3373221))))

(declare-fun call!392858 () Bool)

(assert (=> b!5445995 (= res!2319095 call!392858)))

(declare-fun lt!2222298 () Unit!154704)

(assert (=> b!5445995 (= lt!2222298 call!392829)))

(declare-fun call!392856 () Bool)

(declare-fun call!392889 () Bool)

(assert (=> b!5445995 (= call!392856 call!392889)))

(declare-fun lt!2222258 () Unit!154704)

(declare-fun call!392940 () Unit!154704)

(assert (=> b!5445995 (= lt!2222258 call!392940)))

(declare-fun call!392852 () Bool)

(assert (=> b!5445995 (= call!392919 call!392852)))

(declare-fun lt!2222173 () Unit!154704)

(declare-fun call!392969 () Unit!154704)

(assert (=> b!5445995 (= lt!2222173 call!392969)))

(declare-fun call!392903 () Bool)

(declare-fun call!392948 () Bool)

(assert (=> b!5445995 (= call!392903 call!392948)))

(declare-fun lt!2222306 () Unit!154704)

(assert (=> b!5445995 (= lt!2222306 call!392801)))

(declare-fun call!392782 () Bool)

(declare-fun call!392929 () Bool)

(assert (=> b!5445995 (= call!392782 call!392929)))

(declare-fun lt!2222166 () Unit!154704)

(declare-fun call!392814 () Unit!154704)

(assert (=> b!5445995 (= lt!2222166 call!392814)))

(declare-fun call!392911 () Bool)

(declare-fun call!392933 () Bool)

(assert (=> b!5445995 (= call!392911 call!392933)))

(declare-fun lt!2222218 () Unit!154704)

(declare-fun call!392879 () Unit!154704)

(assert (=> b!5445995 (= lt!2222218 call!392879)))

(assert (=> b!5445995 (= lt!2222292 call!392893)))

(assert (=> b!5445995 (= call!392763 call!392790)))

(declare-fun lt!2222120 () Unit!154704)

(assert (=> b!5445995 (= lt!2222120 call!392947)))

(assert (=> b!5445995 (= lt!2222158 (store ((as const (Array Context!9322 Bool)) false) lt!2222248 true))))

(declare-fun e!3373241 () Unit!154704)

(declare-fun Unit!154714 () Unit!154704)

(assert (=> b!5445995 (= e!3373241 Unit!154714)))

(declare-fun b!5445996 () Bool)

(declare-fun e!3373240 () Bool)

(declare-fun call!392937 () Bool)

(assert (=> b!5445996 (= e!3373240 call!392937)))

(declare-fun bm!392802 () Bool)

(declare-fun call!392832 () Bool)

(assert (=> bm!392802 (= call!392832 call!392849)))

(declare-fun call!392894 () Unit!154704)

(declare-fun lt!2222318 () (InoxSet Context!9322))

(declare-fun bm!392803 () Bool)

(declare-fun lt!2222256 () (InoxSet Context!9322))

(assert (=> bm!392803 (= call!392894 (lemmaZipperConcatMatchesSameAsBothZippers!514 (ite c!950418 lt!2222289 lt!2222318) (ite c!950418 lt!2222122 lt!2222256) (t!375357 s!2326)))))

(declare-fun bm!392804 () Bool)

(declare-fun call!392921 () Bool)

(assert (=> bm!392804 (= call!392824 call!392921)))

(declare-fun lt!2222290 () List!62130)

(declare-fun bm!392805 () Bool)

(declare-fun lt!2222200 () tuple2!64952)

(declare-fun ++!13633 (List!62130 List!62130) List!62130)

(assert (=> bm!392805 (= call!392880 (++!13633 (ite c!950409 (_1!35779 lt!2222226) (ite c!950415 (_1!35779 lt!2222200) Nil!62006)) (ite c!950409 (_2!35779 lt!2222226) (ite c!950415 lt!2222290 s!2326))))))

(declare-fun bm!392806 () Bool)

(assert (=> bm!392806 (= call!392889 call!392906)))

(declare-fun bm!392807 () Bool)

(declare-fun call!392887 () (InoxSet Context!9322))

(assert (=> bm!392807 (= call!392934 call!392887)))

(declare-fun bm!392808 () Bool)

(declare-fun call!392847 () Bool)

(declare-fun call!392789 () Bool)

(assert (=> bm!392808 (= call!392847 call!392789)))

(declare-fun bm!392809 () Bool)

(assert (=> bm!392809 (= call!392852 call!392826)))

(declare-fun call!392764 () Bool)

(declare-fun bm!392810 () Bool)

(assert (=> bm!392810 (= call!392764 (Exists!2458 (ite c!950410 lambda!287184 (ite c!950414 lambda!287188 (ite c!950409 lambda!287190 (ite c!950415 lambda!287199 lambda!287204))))))))

(declare-fun bm!392811 () Bool)

(declare-fun call!392958 () Option!15388)

(assert (=> bm!392811 (= call!392958 call!392872)))

(declare-fun bm!392812 () Bool)

(assert (=> bm!392812 (= call!392802 (matchZipper!1521 (ite c!950413 lt!2222245 (ite c!950418 ((_ map or) lt!2222142 lt!2222289) (ite c!950410 lt!2222123 (ite c!950411 (ite c!950409 (ite c!950420 lt!2222132 z!1189) lt!2222119) z!1189)))) (ite (or c!950413 c!950418) (t!375357 s!2326) (ite c!950410 s!2326 (ite c!950411 (ite c!950409 s!2326 (_2!35779 lt!2222305)) s!2326)))))))

(declare-fun bm!392813 () Bool)

(declare-fun call!392949 () Bool)

(assert (=> bm!392813 (= call!392949 call!392810)))

(declare-fun bm!392814 () Bool)

(declare-fun lt!2222179 () List!62130)

(declare-fun call!392815 () List!62131)

(declare-fun lt!2222235 () List!62131)

(assert (=> bm!392814 (= call!392812 (matchZipper!1521 (ite c!950418 z!1189 (ite c!950410 lt!2222256 (ite c!950414 z!1189 (ite c!950411 (ite c!950409 (store ((as const (Array Context!9322 Bool)) false) (Context!9323 call!392815) true) (ite c!950415 (store ((as const (Array Context!9322 Bool)) false) (Context!9323 lt!2222235) true) lt!2222158)) lt!2222122)))) (ite c!950418 s!2326 (ite c!950410 (t!375357 s!2326) (ite c!950414 s!2326 (ite c!950411 (ite c!950409 lt!2222190 (ite c!950415 lt!2222179 s!2326)) (t!375357 s!2326)))))))))

(declare-fun b!5445997 () Bool)

(declare-fun Unit!154715 () Unit!154704)

(assert (=> b!5445997 (= e!3373239 Unit!154715)))

(declare-fun lt!2222239 () Unit!154704)

(assert (=> b!5445997 (= lt!2222239 call!392894)))

(declare-fun res!2319104 () Bool)

(declare-fun call!392888 () Bool)

(assert (=> b!5445997 (= res!2319104 call!392888)))

(assert (=> b!5445997 (=> res!2319104 e!3373240)))

(declare-fun call!392898 () Bool)

(assert (=> b!5445997 (= call!392898 e!3373240)))

(declare-fun lt!2222127 () Context!9322)

(declare-fun bm!392815 () Bool)

(assert (=> bm!392815 (= call!392838 (lemmaFlatMapOnSingletonSet!536 (ite c!950418 lt!2222265 (ite c!950410 lt!2222251 (ite c!950414 lt!2222128 lt!2222163))) (ite c!950418 lt!2222140 (ite c!950410 lt!2222127 (ite c!950414 lt!2222157 lt!2222232))) (ite c!950418 lambda!287180 (ite c!950410 lambda!287180 (ite c!950414 lambda!287180 lambda!287180)))))))

(declare-fun bm!392816 () Bool)

(declare-fun call!392864 () Bool)

(declare-fun call!392860 () Bool)

(assert (=> bm!392816 (= call!392864 call!392860)))

(declare-fun bm!392817 () Bool)

(assert (=> bm!392817 (= call!392908 (derivationStepZipperUp!649 (ite c!950418 lt!2222140 lt!2222232) (h!68454 s!2326)))))

(declare-fun bm!392818 () Bool)

(declare-fun call!392786 () Bool)

(assert (=> bm!392818 (= call!392786 call!392888)))

(declare-fun bm!392819 () Bool)

(declare-fun call!392770 () Unit!154704)

(assert (=> bm!392819 (= call!392796 call!392770)))

(declare-fun b!5445998 () Bool)

(assert (=> b!5445998 (= e!3373249 (= lt!2222274 call!392812))))

(declare-fun b!5445999 () Bool)

(assert (=> b!5445999 (= e!3373247 e!3373241)))

(assert (=> b!5445999 (= c!950415 call!392843)))

(declare-fun bm!392820 () Bool)

(declare-fun lt!2222210 () (InoxSet Context!9322))

(assert (=> bm!392820 (= call!392937 (matchZipper!1521 (ite c!950418 lt!2222122 (ite c!950410 lt!2222318 (ite c!950414 lt!2222128 (ite (and c!950411 c!950409) lt!2222169 lt!2222210)))) (ite (or c!950418 c!950410) (t!375357 s!2326) (ite c!950414 s!2326 (ite (and c!950411 c!950409) (_1!35779 lt!2222226) (t!375357 s!2326))))))))

(declare-fun bm!392821 () Bool)

(assert (=> bm!392821 (= call!392780 (lemmaFlatMapOnSingletonSet!536 (ite c!950418 lt!2222196 (ite c!950410 lt!2222123 lt!2222169)) (ite c!950418 lt!2222175 (ite c!950410 lt!2222297 lt!2222124)) (ite c!950418 lambda!287180 (ite c!950410 lambda!287180 lambda!287180))))))

(declare-fun bm!392822 () Bool)

(declare-fun call!392776 () Bool)

(declare-fun c!950417 () Bool)

(declare-fun matchR!7462 (Regex!15277 List!62130) Bool)

(assert (=> bm!392822 (= call!392776 (matchR!7462 (ite c!950414 lt!2222299 (ite c!950411 lt!2222221 (ite c!950417 (regOne!31066 r!7292) (regTwo!31066 r!7292)))) s!2326))))

(declare-fun bm!392823 () Bool)

(assert (=> bm!392823 (= call!392860 call!392896)))

(declare-fun bm!392824 () Bool)

(declare-fun call!392844 () Bool)

(declare-fun call!392766 () Bool)

(assert (=> bm!392824 (= call!392844 call!392766)))

(declare-fun bm!392825 () Bool)

(declare-fun call!392845 () Bool)

(assert (=> bm!392825 (= call!392936 call!392845)))

(declare-fun bm!392826 () Bool)

(declare-fun lemmaStarApp!72 (Regex!15277 List!62130 List!62130) Unit!154704)

(assert (=> bm!392826 (= call!392859 (lemmaStarApp!72 (reg!15606 (regOne!31066 r!7292)) (ite c!950409 (_1!35779 lt!2222226) (_1!35779 lt!2222200)) (ite c!950409 (_2!35779 lt!2222226) (_2!35779 lt!2222200))))))

(declare-fun b!5446000 () Bool)

(declare-fun e!3373238 () Unit!154704)

(declare-fun e!3373219 () Unit!154704)

(assert (=> b!5446000 (= e!3373238 e!3373219)))

(get-info :version)

(assert (=> b!5446000 (= c!950414 ((_ is Concat!24122) (regOne!31066 r!7292)))))

(declare-fun bm!392827 () Bool)

(declare-fun call!392853 () Bool)

(assert (=> bm!392827 (= call!392917 call!392853)))

(declare-fun bm!392828 () Bool)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!92 (Context!9322 Context!9322 List!62130 List!62130) Unit!154704)

(assert (=> bm!392828 (= call!392851 (lemmaConcatenateContextMatchesConcatOfStrings!92 lt!2222124 lt!2222313 (ite c!950409 (_1!35779 lt!2222226) (_1!35779 lt!2222305)) (ite c!950409 lt!2222286 (_2!35779 lt!2222305))))))

(declare-fun bm!392829 () Bool)

(assert (=> bm!392829 (= call!392887 call!392945)))

(declare-fun bm!392830 () Bool)

(declare-fun call!392965 () Bool)

(assert (=> bm!392830 (= call!392965 call!392900)))

(declare-fun b!5446001 () Bool)

(declare-fun lt!2222272 () Bool)

(assert (=> b!5446001 (not lt!2222272)))

(declare-fun lt!2222262 () Unit!154704)

(assert (=> b!5446001 (= lt!2222262 e!3373247)))

(declare-fun c!950412 () Bool)

(assert (=> b!5446001 (= c!950412 lt!2222272)))

(assert (=> b!5446001 (= lt!2222272 call!392804)))

(declare-fun Unit!154716 () Unit!154704)

(assert (=> b!5446001 (= e!3373248 Unit!154716)))

(declare-fun call!392950 () Bool)

(declare-fun call!392913 () Option!15388)

(declare-fun bm!392831 () Bool)

(declare-fun lt!2222296 () Option!15388)

(declare-fun isDefined!12091 (Option!15388) Bool)

(assert (=> bm!392831 (= call!392950 (isDefined!12091 (ite c!950414 call!392913 lt!2222296)))))

(declare-fun b!5446002 () Bool)

(declare-fun e!3373236 () Bool)

(assert (=> b!5446002 (= e!3373236 (matchZipper!1521 lt!2222122 (t!375357 s!2326)))))

(declare-fun bm!392832 () Bool)

(declare-fun call!392779 () Bool)

(assert (=> bm!392832 (= call!392855 call!392779)))

(declare-fun bm!392833 () Bool)

(declare-fun call!392795 () Option!15388)

(assert (=> bm!392833 (= call!392795 call!392797)))

(declare-fun bm!392834 () Bool)

(assert (=> bm!392834 (= call!392940 call!392767)))

(declare-fun b!5446003 () Bool)

(declare-fun tp_is_empty!39807 () Bool)

(declare-fun tp!1501001 () Bool)

(assert (=> b!5446003 (= e!3373225 (and tp_is_empty!39807 tp!1501001))))

(declare-fun bm!392835 () Bool)

(declare-fun lemmaConcatAssociativity!2854 (List!62130 List!62130 List!62130) Unit!154704)

(assert (=> bm!392835 (= call!392884 (lemmaConcatAssociativity!2854 (ite c!950409 (_1!35779 lt!2222226) (_1!35779 lt!2222200)) (ite c!950409 (_2!35779 lt!2222226) (_2!35779 lt!2222200)) (ite c!950409 (_2!35779 lt!2222282) (_2!35779 lt!2222148))))))

(declare-fun bm!392836 () Bool)

(declare-fun call!392883 () Regex!15277)

(declare-fun call!392959 () Regex!15277)

(assert (=> bm!392836 (= call!392883 call!392959)))

(declare-fun bm!392837 () Bool)

(declare-fun call!392784 () Bool)

(declare-fun call!392819 () Bool)

(assert (=> bm!392837 (= call!392784 call!392819)))

(declare-fun lt!2222153 () Option!15388)

(declare-fun bm!392838 () Bool)

(declare-fun lt!2222154 () Option!15388)

(declare-fun call!392901 () Bool)

(assert (=> bm!392838 (= call!392901 (isDefined!12091 (ite c!950410 call!392797 (ite c!950414 call!392795 (ite c!950409 lt!2222154 (ite c!950415 lt!2222153 call!392958))))))))

(declare-fun bm!392839 () Bool)

(assert (=> bm!392839 (= call!392924 (++!13633 (ite c!950409 (_2!35779 lt!2222226) (_2!35779 lt!2222200)) (ite c!950409 (_2!35779 lt!2222282) (_2!35779 lt!2222148))))))

(declare-fun lt!2222209 () List!62131)

(declare-fun bm!392840 () Bool)

(declare-fun derivationStepZipperDown!725 (Regex!15277 Context!9322 C!30824) (InoxSet Context!9322))

(assert (=> bm!392840 (= call!392945 (derivationStepZipperDown!725 (ite c!950418 (regTwo!31067 (regOne!31066 r!7292)) (ite c!950410 (regTwo!31066 (regOne!31066 r!7292)) (ite c!950414 (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))))) (ite (or c!950418 c!950410) lt!2222248 (ite c!950414 (Context!9323 lt!2222209) lt!2222313)) (h!68454 s!2326)))))

(declare-fun b!5446004 () Bool)

(declare-fun e!3373252 () Bool)

(assert (=> b!5446004 (= e!3373252 call!392967)))

(declare-fun bm!392841 () Bool)

(declare-fun call!392946 () Bool)

(assert (=> bm!392841 (= call!392895 call!392946)))

(declare-fun bm!392842 () Bool)

(assert (=> bm!392842 (= call!392910 call!392871)))

(declare-fun lt!2222225 () List!62130)

(declare-fun bm!392843 () Bool)

(assert (=> bm!392843 (= call!392803 (matchR!7462 (ite c!950418 lt!2222267 (ite c!950410 lt!2222155 (ite c!950409 (reg!15606 (regOne!31066 r!7292)) lt!2222304))) (ite (or c!950418 c!950410) s!2326 (ite c!950409 (_1!35779 lt!2222226) lt!2222225))))))

(declare-fun bm!392844 () Bool)

(assert (=> bm!392844 (= call!392903 call!392784)))

(declare-fun bm!392845 () Bool)

(declare-fun call!392923 () Unit!154704)

(assert (=> bm!392845 (= call!392923 call!392881)))

(declare-fun e!3373237 () Bool)

(assert (=> b!5446005 e!3373237))

(declare-fun res!2319091 () Bool)

(assert (=> b!5446005 (=> (not res!2319091) (not e!3373237))))

(assert (=> b!5446005 (= res!2319091 (= call!392789 call!392965))))

(declare-fun lt!2222176 () Unit!154704)

(declare-fun call!392876 () Unit!154704)

(assert (=> b!5446005 (= lt!2222176 call!392876)))

(declare-fun call!392920 () Bool)

(assert (=> b!5446005 (= call!392920 call!392765)))

(declare-fun lt!2222177 () Unit!154704)

(declare-fun call!392816 () Unit!154704)

(assert (=> b!5446005 (= lt!2222177 call!392816)))

(assert (=> b!5446005 (= call!392819 call!392779)))

(declare-fun lt!2222268 () Unit!154704)

(assert (=> b!5446005 (= lt!2222268 call!392848)))

(declare-fun call!392952 () Regex!15277)

(assert (=> b!5446005 (= lt!2222211 call!392952)))

(assert (=> b!5446005 (= call!392776 call!392824)))

(declare-fun lt!2222156 () Unit!154704)

(declare-fun call!392863 () Unit!154704)

(assert (=> b!5446005 (= lt!2222156 call!392863)))

(declare-fun call!392927 () Bool)

(assert (=> b!5446005 (= call!392946 call!392927)))

(declare-fun lt!2222234 () Unit!154704)

(assert (=> b!5446005 (= lt!2222234 call!392861)))

(declare-fun call!392951 () Bool)

(assert (=> b!5446005 (= call!392950 call!392951)))

(declare-fun lt!2222243 () Unit!154704)

(declare-fun call!392830 () Unit!154704)

(assert (=> b!5446005 (= lt!2222243 call!392830)))

(declare-fun call!392866 () Regex!15277)

(assert (=> b!5446005 (= lt!2222299 call!392866)))

(declare-fun lt!2222230 () Bool)

(assert (=> b!5446005 (= lt!2222230 call!392907)))

(declare-fun lt!2222224 () Unit!154704)

(assert (=> b!5446005 (= lt!2222224 call!392891)))

(declare-fun call!392932 () Bool)

(assert (=> b!5446005 (= lt!2222230 call!392932)))

(assert (=> b!5446005 (= lt!2222230 call!392949)))

(declare-fun lt!2222198 () Unit!154704)

(assert (=> b!5446005 (= lt!2222198 call!392796)))

(assert (=> b!5446005 (= lt!2222270 call!392883)))

(assert (=> b!5446005 (= call!392788 call!392828)))

(declare-fun lt!2222137 () Unit!154704)

(assert (=> b!5446005 (= lt!2222137 call!392878)))

(declare-fun lt!2222167 () (InoxSet Context!9322))

(assert (=> b!5446005 (= lt!2222167 call!392828)))

(assert (=> b!5446005 (= lt!2222128 (store ((as const (Array Context!9322 Bool)) false) lt!2222157 true))))

(assert (=> b!5446005 (= lt!2222157 (Context!9323 lt!2222162))))

(assert (=> b!5446005 (= lt!2222162 (Cons!62007 (regOne!31066 (regOne!31066 r!7292)) lt!2222209))))

(declare-fun lt!2222151 () (InoxSet Context!9322))

(assert (=> b!5446005 (= lt!2222151 call!392934)))

(assert (=> b!5446005 (= lt!2222209 (Cons!62007 (regTwo!31066 (regOne!31066 r!7292)) (t!375358 (exprs!5161 (h!68456 zl!343)))))))

(declare-fun Unit!154717 () Unit!154704)

(assert (=> b!5446005 (= e!3373219 Unit!154717)))

(declare-fun bm!392846 () Bool)

(assert (=> bm!392846 (= call!392913 call!392905)))

(declare-fun e!3373245 () Bool)

(assert (=> b!5446006 e!3373245))

(declare-fun res!2319107 () Bool)

(assert (=> b!5446006 (=> (not res!2319107) (not e!3373245))))

(assert (=> b!5446006 (= res!2319107 call!392874)))

(declare-fun lt!2222193 () Unit!154704)

(assert (=> b!5446006 (= lt!2222193 call!392813)))

(assert (=> b!5446006 call!392782))

(declare-fun lt!2222250 () Unit!154704)

(assert (=> b!5446006 (= lt!2222250 call!392859)))

(assert (=> b!5446006 (= lt!2222225 call!392793)))

(assert (=> b!5446006 (= lt!2222225 (++!13633 lt!2222152 (_2!35779 lt!2222148)))))

(assert (=> b!5446006 (= lt!2222290 call!392924)))

(assert (=> b!5446006 (= lt!2222152 call!392783)))

(declare-fun lt!2222315 () Unit!154704)

(assert (=> b!5446006 (= lt!2222315 call!392884)))

(declare-fun call!392846 () tuple2!64952)

(assert (=> b!5446006 (= lt!2222200 call!392846)))

(assert (=> b!5446006 (= call!392771 call!392856)))

(declare-fun lt!2222181 () Unit!154704)

(assert (=> b!5446006 (= lt!2222181 call!392940)))

(assert (=> b!5446006 (= call!392919 call!392948)))

(declare-fun lt!2222159 () Unit!154704)

(assert (=> b!5446006 (= lt!2222159 call!392969)))

(assert (=> b!5446006 (= call!392917 call!392889)))

(declare-fun lt!2222278 () Option!15388)

(declare-fun call!392916 () Option!15388)

(assert (=> b!5446006 (= lt!2222278 call!392916)))

(declare-fun lt!2222178 () Unit!154704)

(assert (=> b!5446006 (= lt!2222178 call!392922)))

(declare-fun call!392778 () Bool)

(assert (=> b!5446006 (= call!392847 call!392778)))

(declare-fun lt!2222281 () Unit!154704)

(assert (=> b!5446006 (= lt!2222281 call!392822)))

(assert (=> b!5446006 (= lt!2222148 call!392939)))

(assert (=> b!5446006 (= call!392955 call!392852)))

(declare-fun lt!2222259 () Unit!154704)

(declare-fun call!392781 () Unit!154704)

(assert (=> b!5446006 (= lt!2222259 call!392781)))

(assert (=> b!5446006 (= call!392903 call!392855)))

(assert (=> b!5446006 (= lt!2222153 call!392958)))

(declare-fun lt!2222271 () Unit!154704)

(assert (=> b!5446006 (= lt!2222271 call!392801)))

(assert (=> b!5446006 call!392929))

(declare-fun lt!2222311 () Unit!154704)

(assert (=> b!5446006 (= lt!2222311 call!392814)))

(assert (=> b!5446006 call!392965))

(assert (=> b!5446006 (= lt!2222202 (Concat!24122 lt!2222184 (regTwo!31066 r!7292)))))

(assert (=> b!5446006 (= lt!2222184 (Concat!24122 (reg!15606 (regOne!31066 r!7292)) lt!2222247))))

(declare-fun lt!2222149 () Unit!154704)

(assert (=> b!5446006 (= lt!2222149 call!392876)))

(declare-fun e!3373217 () Bool)

(assert (=> b!5446006 e!3373217))

(declare-fun res!2319088 () Bool)

(assert (=> b!5446006 (=> (not res!2319088) (not e!3373217))))

(assert (=> b!5446006 (= res!2319088 call!392858)))

(declare-fun lt!2222191 () Unit!154704)

(assert (=> b!5446006 (= lt!2222191 call!392829)))

(declare-fun call!392834 () Bool)

(assert (=> b!5446006 (= call!392911 call!392834)))

(declare-fun lt!2222284 () Unit!154704)

(assert (=> b!5446006 (= lt!2222284 call!392879)))

(declare-fun call!392839 () Bool)

(assert (=> b!5446006 (= (matchR!7462 (reg!15606 (regOne!31066 r!7292)) (_1!35779 lt!2222305)) call!392839)))

(declare-fun lt!2222118 () Unit!154704)

(assert (=> b!5446006 (= lt!2222118 call!392912)))

(assert (=> b!5446006 call!392933))

(assert (=> b!5446006 (= lt!2222179 call!392777)))

(assert (=> b!5446006 (= lt!2222235 call!392815)))

(declare-fun lt!2222319 () Unit!154704)

(assert (=> b!5446006 (= lt!2222319 call!392897)))

(declare-fun lt!2222121 () Unit!154704)

(assert (=> b!5446006 (= lt!2222121 call!392851)))

(declare-fun get!21380 (Option!15388) tuple2!64952)

(assert (=> b!5446006 (= lt!2222305 (get!21380 lt!2222296))))

(assert (=> b!5446006 call!392950))

(declare-fun findConcatSeparationZippers!76 ((InoxSet Context!9322) (InoxSet Context!9322) List!62130 List!62130 List!62130) Option!15388)

(assert (=> b!5446006 (= lt!2222296 (findConcatSeparationZippers!76 lt!2222169 lt!2222119 Nil!62006 s!2326 s!2326))))

(declare-fun lt!2222310 () Unit!154704)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!76 ((InoxSet Context!9322) Context!9322 List!62130) Unit!154704)

(assert (=> b!5446006 (= lt!2222310 (lemmaConcatZipperMatchesStringThenFindConcatDefined!76 lt!2222169 lt!2222313 s!2326))))

(declare-fun lambda!287195 () Int)

(declare-fun map!14242 ((InoxSet Context!9322) Int) (InoxSet Context!9322))

(assert (=> b!5446006 (= (map!14242 lt!2222169 lambda!287195) (store ((as const (Array Context!9322 Bool)) false) (Context!9323 call!392815) true))))

(declare-fun lt!2222280 () Unit!154704)

(assert (=> b!5446006 (= lt!2222280 call!392792)))

(declare-fun lt!2222275 () Unit!154704)

(declare-fun lemmaMapOnSingletonSet!78 ((InoxSet Context!9322) Context!9322 Int) Unit!154704)

(assert (=> b!5446006 (= lt!2222275 (lemmaMapOnSingletonSet!78 lt!2222169 lt!2222124 lambda!287195))))

(declare-fun Unit!154718 () Unit!154704)

(assert (=> b!5446006 (= e!3373241 Unit!154718)))

(declare-fun bm!392847 () Bool)

(declare-fun call!392775 () Bool)

(assert (=> bm!392847 (= call!392775 call!392774)))

(declare-fun bm!392848 () Bool)

(assert (=> bm!392848 (= call!392834 call!392864)))

(declare-fun b!5446007 () Bool)

(assert (=> b!5446007 (= e!3373237 (= lt!2222274 call!392766))))

(declare-fun bm!392849 () Bool)

(declare-fun call!392899 () Bool)

(assert (=> bm!392849 (= call!392899 (Exists!2458 (ite c!950410 lambda!287181 (ite c!950414 lambda!287185 (ite c!950409 lambda!287189 (ite c!950415 lambda!287199 lambda!287202))))))))

(declare-fun call!392850 () Bool)

(declare-fun bm!392850 () Bool)

(assert (=> bm!392850 (= call!392850 (Exists!2458 (ite c!950410 lambda!287183 (ite c!950414 lambda!287187 (ite c!950409 lambda!287191 lambda!287197)))))))

(declare-fun bm!392851 () Bool)

(declare-fun call!392954 () Bool)

(assert (=> bm!392851 (= call!392951 call!392954)))

(declare-fun bm!392852 () Bool)

(declare-fun call!392873 () Unit!154704)

(assert (=> bm!392852 (= call!392879 call!392873)))

(declare-fun b!5446008 () Bool)

(declare-fun tp!1501000 () Bool)

(declare-fun tp!1500992 () Bool)

(assert (=> b!5446008 (= e!3373233 (and tp!1501000 tp!1500992))))

(declare-fun bm!392853 () Bool)

(assert (=> bm!392853 (= call!392948 call!392854)))

(declare-fun bm!392854 () Bool)

(declare-fun call!392902 () Unit!154704)

(assert (=> bm!392854 (= call!392912 call!392902)))

(declare-fun b!5446009 () Bool)

(assert (=> b!5446009 (= e!3373244 call!392931)))

(declare-fun bm!392855 () Bool)

(assert (=> bm!392855 (= call!392962 (flatMap!1004 (ite c!950418 lt!2222196 (ite c!950410 lt!2222123 (ite c!950409 lt!2222132 lt!2222158))) (ite c!950418 lambda!287180 (ite c!950410 lambda!287180 (ite c!950409 lambda!287180 lambda!287180)))))))

(declare-fun bm!392856 () Bool)

(assert (=> bm!392856 (= call!392939 (get!21380 (ite c!950409 lt!2222138 lt!2222153)))))

(declare-fun bm!392857 () Bool)

(assert (=> bm!392857 (= call!392933 call!392773)))

(assert (=> b!5446010 call!392804))

(declare-fun lt!2222320 () Unit!154704)

(assert (=> b!5446010 (= lt!2222320 e!3373242)))

(declare-fun isEmpty!33985 (List!62130) Bool)

(assert (=> b!5446010 (= c!950420 (isEmpty!33985 (_1!35779 lt!2222282)))))

(assert (=> b!5446010 (= lt!2222282 call!392846)))

(assert (=> b!5446010 (= call!392895 call!392906)))

(declare-fun lt!2222257 () Unit!154704)

(assert (=> b!5446010 (= lt!2222257 call!392781)))

(declare-fun call!392885 () Bool)

(assert (=> b!5446010 (= call!392784 call!392885)))

(assert (=> b!5446010 (= lt!2222154 call!392916)))

(declare-fun lt!2222135 () Unit!154704)

(assert (=> b!5446010 (= lt!2222135 call!392941)))

(declare-fun Unit!154719 () Unit!154704)

(assert (=> b!5446010 (= e!3373248 Unit!154719)))

(declare-fun bm!392858 () Bool)

(assert (=> bm!392858 (= call!392822 (mainMatchTheorem!2380 (ite c!950418 lt!2222195 lt!2222184) (ite c!950418 s!2326 (_1!35779 lt!2222148))))))

(declare-fun bm!392859 () Bool)

(declare-fun call!392825 () Bool)

(assert (=> bm!392859 (= call!392825 call!392786)))

(declare-fun bm!392860 () Bool)

(assert (=> bm!392860 (= call!392790 call!392827)))

(declare-fun b!5446011 () Bool)

(declare-fun e!3373230 () Bool)

(assert (=> b!5446011 e!3373230))

(declare-fun res!2319083 () Bool)

(assert (=> b!5446011 (=> (not res!2319083) (not e!3373230))))

(assert (=> b!5446011 (= res!2319083 (= call!392845 call!392825))))

(declare-fun lt!2222171 () Unit!154704)

(assert (=> b!5446011 (= lt!2222171 call!392805)))

(declare-fun call!392953 () Regex!15277)

(assert (=> b!5446011 (= lt!2222213 call!392953)))

(declare-fun call!392963 () Bool)

(assert (=> b!5446011 (= call!392963 call!392844)))

(declare-fun lt!2222273 () Unit!154704)

(assert (=> b!5446011 (= lt!2222273 call!392800)))

(assert (=> b!5446011 (= call!392943 call!392870)))

(declare-fun lt!2222236 () Unit!154704)

(assert (=> b!5446011 (= lt!2222236 call!392867)))

(assert (=> b!5446011 (= lt!2222314 (store ((as const (Array Context!9322 Bool)) false) lt!2222248 true))))

(assert (=> b!5446011 (= call!392768 call!392832)))

(declare-fun lt!2222253 () Unit!154704)

(declare-fun call!392811 () Unit!154704)

(assert (=> b!5446011 (= lt!2222253 call!392811)))

(declare-fun call!392785 () Bool)

(declare-fun call!392787 () Bool)

(assert (=> b!5446011 (= call!392785 call!392787)))

(declare-fun lt!2222246 () Unit!154704)

(assert (=> b!5446011 (= lt!2222246 call!392877)))

(assert (=> b!5446011 (not call!392875)))

(declare-fun lt!2222139 () Unit!154704)

(declare-fun call!392968 () Unit!154704)

(assert (=> b!5446011 (= lt!2222139 call!392968)))

(declare-fun e!3373232 () Unit!154704)

(declare-fun Unit!154720 () Unit!154704)

(assert (=> b!5446011 (= e!3373232 Unit!154720)))

(declare-fun bm!392861 () Bool)

(assert (=> bm!392861 (= call!392928 call!392962)))

(declare-fun bm!392862 () Bool)

(assert (=> bm!392862 (= call!392783 (++!13633 (ite c!950409 (_1!35779 lt!2222226) (_1!35779 lt!2222200)) (ite c!950409 lt!2222286 (_2!35779 lt!2222200))))))

(declare-fun bm!392863 () Bool)

(assert (=> bm!392863 (= call!392785 call!392820)))

(declare-fun bm!392864 () Bool)

(assert (=> bm!392864 (= call!392969 call!392837)))

(declare-fun bm!392865 () Bool)

(declare-fun call!392841 () Unit!154704)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1566 (Regex!15277 Regex!15277 List!62130) Unit!154704)

(assert (=> bm!392865 (= call!392841 (lemmaFindConcatSeparationEquivalentToExists!1566 (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 lt!2222247)) (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (_1!35779 lt!2222148)))))))

(declare-fun b!5446012 () Bool)

(declare-fun e!3373234 () Unit!154704)

(declare-fun Unit!154721 () Unit!154704)

(assert (=> b!5446012 (= e!3373234 Unit!154721)))

(declare-fun lt!2222316 () Unit!154704)

(assert (=> b!5446012 (= lt!2222316 (lemmaZipperConcatMatchesSameAsBothZippers!514 lt!2222210 lt!2222122 (t!375357 s!2326)))))

(declare-fun res!2319109 () Bool)

(assert (=> b!5446012 (= res!2319109 (matchZipper!1521 lt!2222210 (t!375357 s!2326)))))

(assert (=> b!5446012 (=> res!2319109 e!3373236)))

(assert (=> b!5446012 (= (matchZipper!1521 ((_ map or) lt!2222210 lt!2222122) (t!375357 s!2326)) e!3373236)))

(declare-fun bm!392866 () Bool)

(declare-fun call!392769 () Unit!154704)

(assert (=> bm!392866 (= call!392769 call!392838)))

(declare-fun e!3373213 () Bool)

(declare-fun b!5446013 () Bool)

(declare-fun tp!1500994 () Bool)

(declare-fun inv!81439 (Context!9322) Bool)

(assert (=> b!5446013 (= e!3373250 (and (inv!81439 (h!68456 zl!343)) e!3373213 tp!1500994))))

(declare-fun b!5446014 () Bool)

(declare-fun e!3373246 () Bool)

(assert (=> b!5446014 (= e!3373246 (= lt!2222274 call!392910))))

(declare-fun bm!392867 () Bool)

(assert (=> bm!392867 (= call!392858 call!392936)))

(declare-fun bm!392868 () Bool)

(assert (=> bm!392868 (= call!392873 call!392805)))

(declare-fun b!5446015 () Bool)

(declare-fun res!2319082 () Bool)

(assert (=> b!5446015 (=> res!2319082 e!3373218)))

(assert (=> b!5446015 (= res!2319082 (or ((_ is EmptyExpr!15277) r!7292) ((_ is EmptyLang!15277) r!7292) ((_ is ElementMatch!15277) r!7292) ((_ is Union!15277) r!7292) (not ((_ is Concat!24122) r!7292))))))

(declare-fun b!5446016 () Bool)

(assert (=> b!5446016 (= e!3373233 tp_is_empty!39807)))

(declare-fun b!5446017 () Bool)

(assert (=> b!5446017 (= e!3373223 call!392937)))

(declare-fun bm!392869 () Bool)

(assert (=> bm!392869 (= call!392862 call!392949)))

(declare-fun b!5446018 () Bool)

(assert (=> b!5446018 (= c!950411 ((_ is Star!15277) (regOne!31066 r!7292)))))

(assert (=> b!5446018 (= e!3373219 e!3373243)))

(declare-fun bm!392870 () Bool)

(assert (=> bm!392870 (= call!392921 call!392944)))

(declare-fun bm!392871 () Bool)

(assert (=> bm!392871 (= call!392789 call!392960)))

(declare-fun bm!392872 () Bool)

(assert (=> bm!392872 (= call!392885 call!392920)))

(declare-fun bm!392873 () Bool)

(assert (=> bm!392873 (= call!392839 call!392825)))

(declare-fun call!392938 () Bool)

(declare-fun bm!392874 () Bool)

(assert (=> bm!392874 (= call!392938 (matchR!7462 (ite c!950410 (Concat!24122 (Concat!24122 (regOne!31066 (regOne!31066 r!7292)) (regTwo!31066 (regOne!31066 r!7292))) lt!2222240) (ite c!950411 (ite c!950409 lt!2222304 (ite c!950415 lt!2222221 lt!2222304)) lt!2222213)) (ite c!950410 s!2326 (ite c!950411 (ite c!950409 lt!2222286 (ite c!950415 lt!2222179 call!392793)) s!2326))))))

(declare-fun b!5446019 () Bool)

(assert (=> b!5446019 (= e!3373243 e!3373232)))

(assert (=> b!5446019 (= c!950417 ((_ is EmptyExpr!15277) (regOne!31066 r!7292)))))

(declare-fun bm!392875 () Bool)

(assert (=> bm!392875 (= call!392765 call!392764)))

(declare-fun b!5446020 () Bool)

(declare-fun Unit!154722 () Unit!154704)

(assert (=> b!5446020 (= e!3373234 Unit!154722)))

(declare-fun bm!392876 () Bool)

(assert (=> bm!392876 (= call!392787 call!392778)))

(declare-fun bm!392877 () Bool)

(assert (=> bm!392877 (= call!392773 call!392844)))

(declare-fun bm!392878 () Bool)

(assert (=> bm!392878 (= call!392842 (matchR!7462 (ite c!950411 (ite c!950409 lt!2222221 lt!2222247) (ite c!950417 (regTwo!31066 r!7292) (regOne!31066 r!7292))) (ite c!950411 (ite c!950409 lt!2222190 (ite c!950415 lt!2222152 Nil!62006)) s!2326)))))

(declare-fun bm!392879 () Bool)

(assert (=> bm!392879 (= call!392892 call!392849)))

(declare-fun bm!392880 () Bool)

(declare-fun call!392956 () Bool)

(assert (=> bm!392880 (= call!392927 call!392956)))

(declare-fun bm!392881 () Bool)

(assert (=> bm!392881 (= call!392902 call!392918)))

(declare-fun bm!392882 () Bool)

(assert (=> bm!392882 (= call!392861 call!392925)))

(declare-fun call!392806 () Unit!154704)

(declare-fun bm!392883 () Bool)

(assert (=> bm!392883 (= call!392806 (lemmaExistCutMatchRandMatchRSpecEquivalent!1112 (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184)) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))) s!2326))))

(declare-fun bm!392884 () Bool)

(declare-fun lemmaConcatPreservesForall!244 (List!62131 List!62131 Int) Unit!154704)

(assert (=> bm!392884 (= call!392792 (lemmaConcatPreservesForall!244 lt!2222317 lt!2222227 (ite c!950409 lambda!287194 lambda!287196)))))

(declare-fun b!5446021 () Bool)

(declare-fun e!3373235 () Bool)

(assert (=> b!5446021 (= e!3373235 (= lt!2222274 call!392963))))

(declare-fun bm!392885 () Bool)

(assert (=> bm!392885 (= call!392891 call!392823)))

(declare-fun bm!392886 () Bool)

(assert (=> bm!392886 (= call!392916 call!392913)))

(declare-fun bm!392887 () Bool)

(assert (=> bm!392887 (= call!392896 call!392802)))

(declare-fun bm!392888 () Bool)

(assert (=> bm!392888 (= call!392865 (theoremZipperRegexEquiv!557 (ite c!950413 lt!2222245 (ite c!950418 lt!2222265 (ite c!950410 lt!2222251 lt!2222169))) (ite c!950413 (Cons!62008 lt!2222248 Nil!62008) (ite c!950418 (Cons!62008 lt!2222140 Nil!62008) (ite c!950410 (Cons!62008 lt!2222127 Nil!62008) (Cons!62008 lt!2222124 Nil!62008)))) (ite c!950413 lt!2222197 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (reg!15606 (regOne!31066 r!7292))))) (ite c!950413 (t!375357 s!2326) (ite (or c!950418 c!950410) s!2326 (ite c!950409 (_1!35779 lt!2222226) (_1!35779 lt!2222305))))))))

(declare-fun bm!392889 () Bool)

(assert (=> bm!392889 (= call!392856 call!392885)))

(declare-fun bm!392890 () Bool)

(assert (=> bm!392890 (= call!392918 call!392865)))

(declare-fun bm!392891 () Bool)

(assert (=> bm!392891 (= call!392820 call!392776)))

(declare-fun bm!392892 () Bool)

(assert (=> bm!392892 (= call!392929 call!392892)))

(declare-fun e!3373251 () Bool)

(declare-fun forall!14580 (List!62131 Int) Bool)

(assert (=> b!5446022 (= e!3373251 (forall!14580 (exprs!5161 (h!68456 zl!343)) lambda!287205))))

(declare-fun bm!392893 () Bool)

(assert (=> bm!392893 (= call!392909 call!392966)))

(declare-fun bm!392894 () Bool)

(assert (=> bm!392894 (= call!392817 (matchR!7462 (ite c!950413 lt!2222197 (ite c!950418 lt!2222195 (ite c!950410 (Concat!24122 (regOne!31066 (regOne!31066 r!7292)) (Concat!24122 (regTwo!31066 (regOne!31066 r!7292)) lt!2222240)) (ite c!950414 (Concat!24122 (regOne!31066 r!7292) lt!2222211) (ite c!950409 (ite c!950420 lt!2222180 lt!2222247) lt!2222184))))) (ite c!950413 (t!375357 s!2326) (ite (or c!950418 c!950410 c!950414) s!2326 (ite c!950409 (ite c!950420 s!2326 (_1!35779 lt!2222282)) (_1!35779 lt!2222148))))))))

(declare-fun b!5446023 () Bool)

(declare-fun res!2319110 () Bool)

(assert (=> b!5446023 (=> (not res!2319110) (not e!3373227))))

(declare-fun unfocusZipper!1019 (List!62132) Regex!15277)

(assert (=> b!5446023 (= res!2319110 (= r!7292 (unfocusZipper!1019 zl!343)))))

(declare-fun bm!392895 () Bool)

(assert (=> bm!392895 (= call!392935 (matchZipper!1521 (ite c!950418 lt!2222265 lt!2222251) s!2326))))

(declare-fun bm!392896 () Bool)

(assert (=> bm!392896 (= call!392854 (Exists!2458 (ite c!950409 lambda!287191 (ite c!950415 lambda!287200 lambda!287202))))))

(declare-fun bm!392897 () Bool)

(assert (=> bm!392897 (= call!392826 call!392951)))

(declare-fun bm!392898 () Bool)

(declare-fun call!392942 () Bool)

(assert (=> bm!392898 (= call!392942 call!392937)))

(declare-fun bm!392899 () Bool)

(assert (=> bm!392899 (= call!392807 call!392834)))

(declare-fun e!3373226 () Bool)

(declare-fun setNonEmpty!35641 () Bool)

(declare-fun setElem!35641 () Context!9322)

(declare-fun tp!1500993 () Bool)

(assert (=> setNonEmpty!35641 (= setRes!35641 (and tp!1500993 (inv!81439 setElem!35641) e!3373226))))

(declare-fun setRest!35641 () (InoxSet Context!9322))

(assert (=> setNonEmpty!35641 (= z!1189 ((_ map or) (store ((as const (Array Context!9322 Bool)) false) setElem!35641 true) setRest!35641))))

(declare-fun bm!392900 () Bool)

(assert (=> bm!392900 (= call!392774 (matchRSpec!2380 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292)))) (ite (or c!950418 c!950410) s!2326 (ite c!950411 (_1!35779 lt!2222148) s!2326))))))

(declare-fun b!5446024 () Bool)

(assert (=> b!5446024 (= e!3373245 false)))

(declare-fun bm!392901 () Bool)

(assert (=> bm!392901 (= call!392781 call!392816)))

(declare-fun e!3373224 () Bool)

(assert (=> b!5446025 (= e!3373224 e!3373251)))

(declare-fun res!2319108 () Bool)

(assert (=> b!5446025 (=> res!2319108 e!3373251)))

(declare-fun lt!2222170 () (InoxSet Context!9322))

(declare-fun derivationStepZipper!1496 ((InoxSet Context!9322) C!30824) (InoxSet Context!9322))

(assert (=> b!5446025 (= res!2319108 (not (= lt!2222122 (derivationStepZipper!1496 lt!2222170 (h!68454 s!2326)))))))

(assert (=> b!5446025 (= (flatMap!1004 lt!2222170 lambda!287180) (derivationStepZipperUp!649 lt!2222248 (h!68454 s!2326)))))

(declare-fun lt!2222150 () Unit!154704)

(assert (=> b!5446025 (= lt!2222150 (lemmaFlatMapOnSingletonSet!536 lt!2222170 lt!2222248 lambda!287180))))

(assert (=> b!5446025 (= lt!2222170 (store ((as const (Array Context!9322 Bool)) false) lt!2222248 true))))

(declare-fun lt!2222145 () Unit!154704)

(assert (=> b!5446025 (= lt!2222145 e!3373222)))

(assert (=> b!5446025 (= c!950413 (and ((_ is ElementMatch!15277) (regOne!31066 r!7292)) (= (c!950421 (regOne!31066 r!7292)) (h!68454 s!2326))))))

(declare-fun lt!2222207 () Unit!154704)

(assert (=> b!5446025 (= lt!2222207 e!3373234)))

(declare-fun c!950419 () Bool)

(assert (=> b!5446025 (= c!950419 (nullable!5446 (h!68455 (exprs!5161 (h!68456 zl!343)))))))

(assert (=> b!5446025 (= (flatMap!1004 z!1189 lambda!287180) (derivationStepZipperUp!649 (h!68456 zl!343) (h!68454 s!2326)))))

(declare-fun lt!2222294 () Unit!154704)

(assert (=> b!5446025 (= lt!2222294 (lemmaFlatMapOnSingletonSet!536 z!1189 (h!68456 zl!343) lambda!287180))))

(assert (=> b!5446025 (= lt!2222122 (derivationStepZipperUp!649 lt!2222248 (h!68454 s!2326)))))

(assert (=> b!5446025 (= lt!2222210 (derivationStepZipperDown!725 (h!68455 (exprs!5161 (h!68456 zl!343))) lt!2222248 (h!68454 s!2326)))))

(assert (=> b!5446025 (= lt!2222248 (Context!9323 (t!375358 (exprs!5161 (h!68456 zl!343)))))))

(declare-fun lt!2222309 () (InoxSet Context!9322))

(assert (=> b!5446025 (= lt!2222309 (derivationStepZipperUp!649 (Context!9323 (Cons!62007 (h!68455 (exprs!5161 (h!68456 zl!343))) (t!375358 (exprs!5161 (h!68456 zl!343))))) (h!68454 s!2326)))))

(declare-fun bm!392902 () Bool)

(assert (=> bm!392902 (= call!392954 (Exists!2458 (ite c!950410 lambda!287182 (ite c!950414 lambda!287185 (ite c!950409 lambda!287192 (ite c!950415 lambda!287198 lambda!287203))))))))

(declare-fun b!5446026 () Bool)

(assert (=> b!5446026 (= e!3373227 (not e!3373218))))

(declare-fun res!2319093 () Bool)

(assert (=> b!5446026 (=> res!2319093 e!3373218)))

(assert (=> b!5446026 (= res!2319093 (not ((_ is Cons!62008) zl!343)))))

(assert (=> b!5446026 (= lt!2222274 lt!2222214)))

(assert (=> b!5446026 (= lt!2222214 (matchRSpec!2380 r!7292 s!2326))))

(assert (=> b!5446026 (= lt!2222274 (matchR!7462 r!7292 s!2326))))

(declare-fun lt!2222312 () Unit!154704)

(assert (=> b!5446026 (= lt!2222312 (mainMatchTheorem!2380 r!7292 s!2326))))

(declare-fun bm!392903 () Bool)

(assert (=> bm!392903 (= call!392798 call!392873)))

(declare-fun bm!392904 () Bool)

(assert (=> bm!392904 (= call!392778 call!392775)))

(declare-fun bm!392905 () Bool)

(assert (=> bm!392905 (= call!392771 call!392927)))

(declare-fun bm!392906 () Bool)

(assert (=> bm!392906 (= call!392890 call!392932)))

(declare-fun bm!392907 () Bool)

(declare-fun ++!13634 (List!62131 List!62131) List!62131)

(assert (=> bm!392907 (= call!392815 (++!13634 lt!2222317 lt!2222227))))

(declare-fun bm!392908 () Bool)

(assert (=> bm!392908 (= call!392964 (derivationStepZipperDown!725 (ite c!950418 (regOne!31067 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292))) (ite c!950418 lt!2222248 lt!2222297) (h!68454 s!2326)))))

(declare-fun bm!392909 () Bool)

(assert (=> bm!392909 (= call!392777 (++!13633 (ite c!950409 lt!2222215 (_1!35779 lt!2222305)) (ite c!950409 (_2!35779 lt!2222282) (_2!35779 lt!2222305))))))

(declare-fun bm!392910 () Bool)

(assert (=> bm!392910 (= call!392853 (isDefined!12091 (ite c!950410 call!392905 (ite c!950409 lt!2222138 lt!2222278))))))

(declare-fun bm!392911 () Bool)

(assert (=> bm!392911 (= call!392782 call!392772)))

(declare-fun b!5446027 () Bool)

(assert (=> b!5446027 (= c!950410 e!3373252)))

(declare-fun res!2319087 () Bool)

(assert (=> b!5446027 (=> (not res!2319087) (not e!3373252))))

(assert (=> b!5446027 (= res!2319087 ((_ is Concat!24122) (regOne!31066 r!7292)))))

(assert (=> b!5446027 (= e!3373229 e!3373238)))

(declare-fun bm!392912 () Bool)

(assert (=> bm!392912 (= call!392882 call!392847)))

(declare-fun Unit!154723 () Unit!154704)

(assert (=> b!5446028 (= e!3373238 Unit!154723)))

(assert (=> b!5446028 (= lt!2222194 (Cons!62007 (regTwo!31066 (regOne!31066 r!7292)) (t!375358 (exprs!5161 (h!68456 zl!343)))))))

(assert (=> b!5446028 (= lt!2222297 (Context!9323 lt!2222194))))

(assert (=> b!5446028 (= lt!2222318 call!392964)))

(declare-fun lt!2222228 () (InoxSet Context!9322))

(assert (=> b!5446028 (= lt!2222228 call!392887)))

(declare-fun lt!2222276 () Unit!154704)

(assert (=> b!5446028 (= lt!2222276 call!392800)))

(declare-fun lt!2222252 () Bool)

(assert (=> b!5446028 (= lt!2222252 call!392942)))

(declare-fun res!2319089 () Bool)

(assert (=> b!5446028 (= res!2319089 lt!2222252)))

(declare-fun e!3373216 () Bool)

(assert (=> b!5446028 (=> res!2319089 e!3373216)))

(assert (=> b!5446028 (= call!392914 e!3373216)))

(declare-fun lt!2222264 () List!62131)

(assert (=> b!5446028 (= lt!2222264 (Cons!62007 (regOne!31066 (regOne!31066 r!7292)) lt!2222194))))

(assert (=> b!5446028 (= lt!2222127 (Context!9323 lt!2222264))))

(assert (=> b!5446028 (= lt!2222251 (store ((as const (Array Context!9322 Bool)) false) lt!2222127 true))))

(assert (=> b!5446028 (= lt!2222123 (store ((as const (Array Context!9322 Bool)) false) lt!2222297 true))))

(declare-fun lt!2222261 () (InoxSet Context!9322))

(assert (=> b!5446028 (= lt!2222261 call!392808)))

(declare-fun lt!2222220 () Unit!154704)

(assert (=> b!5446028 (= lt!2222220 call!392769)))

(assert (=> b!5446028 (= call!392909 call!392808)))

(assert (=> b!5446028 (= lt!2222256 call!392821)))

(declare-fun lt!2222182 () Unit!154704)

(assert (=> b!5446028 (= lt!2222182 call!392868)))

(assert (=> b!5446028 (= call!392928 call!392821)))

(declare-fun lt!2222293 () Unit!154704)

(assert (=> b!5446028 (= lt!2222293 call!392894)))

(declare-fun res!2319105 () Bool)

(assert (=> b!5446028 (= res!2319105 lt!2222252)))

(assert (=> b!5446028 (=> res!2319105 e!3373215)))

(assert (=> b!5446028 (= call!392786 e!3373215)))

(assert (=> b!5446028 (= lt!2222155 call!392866)))

(declare-fun lt!2222295 () Unit!154704)

(assert (=> b!5446028 (= lt!2222295 call!392902)))

(declare-fun lt!2222161 () Bool)

(assert (=> b!5446028 (= lt!2222161 call!392840)))

(assert (=> b!5446028 (= lt!2222161 call!392935)))

(assert (=> b!5446028 (= lt!2222146 call!392959)))

(declare-fun lt!2222303 () Unit!154704)

(assert (=> b!5446028 (= lt!2222303 call!392770)))

(declare-fun lt!2222129 () Bool)

(assert (=> b!5446028 (= lt!2222129 call!392810)))

(assert (=> b!5446028 (= lt!2222129 call!392860)))

(declare-fun lt!2222242 () Unit!154704)

(assert (=> b!5446028 (= lt!2222242 call!392923)))

(assert (=> b!5446028 (= lt!2222161 call!392921)))

(declare-fun lt!2222216 () Unit!154704)

(declare-fun call!392831 () Unit!154704)

(assert (=> b!5446028 (= lt!2222216 call!392831)))

(assert (=> b!5446028 (= call!392853 call!392956)))

(declare-fun lt!2222260 () Unit!154704)

(assert (=> b!5446028 (= lt!2222260 call!392925)))

(assert (=> b!5446028 (= call!392899 call!392954)))

(declare-fun lt!2222131 () Unit!154704)

(assert (=> b!5446028 (= lt!2222131 call!392823)))

(assert (=> b!5446028 (= lt!2222129 call!392775)))

(assert (=> b!5446028 (= lt!2222240 call!392952)))

(declare-fun lt!2222126 () Unit!154704)

(assert (=> b!5446028 (= lt!2222126 call!392841)))

(assert (=> b!5446028 (= call!392901 call!392850)))

(declare-fun lt!2222212 () Unit!154704)

(assert (=> b!5446028 (= lt!2222212 call!392806)))

(assert (=> b!5446028 (= call!392833 call!392764)))

(declare-fun lt!2222237 () Unit!154704)

(assert (=> b!5446028 (= lt!2222237 call!392926)))

(declare-fun res!2319090 () Bool)

(assert (=> b!5446028 (= res!2319090 (= call!392938 call!392960))))

(assert (=> b!5446028 (=> (not res!2319090) (not e!3373246))))

(assert (=> b!5446028 e!3373246))

(declare-fun bm!392913 () Bool)

(assert (=> bm!392913 (= call!392963 call!392915)))

(declare-fun b!5446029 () Bool)

(assert (=> b!5446029 e!3373235))

(declare-fun res!2319102 () Bool)

(assert (=> b!5446029 (=> (not res!2319102) (not e!3373235))))

(assert (=> b!5446029 (= res!2319102 (= call!392785 call!392832))))

(declare-fun lt!2222277 () Unit!154704)

(assert (=> b!5446029 (= lt!2222277 call!392811)))

(assert (=> b!5446029 (= call!392768 call!392787)))

(declare-fun lt!2222125 () Unit!154704)

(assert (=> b!5446029 (= lt!2222125 call!392877)))

(assert (=> b!5446029 (not call!392875)))

(declare-fun lt!2222233 () Unit!154704)

(assert (=> b!5446029 (= lt!2222233 call!392968)))

(declare-fun Unit!154724 () Unit!154704)

(assert (=> b!5446029 (= e!3373232 Unit!154724)))

(declare-fun bm!392914 () Bool)

(assert (=> bm!392914 (= call!392946 call!392899)))

(declare-fun bm!392915 () Bool)

(assert (=> bm!392915 (= call!392955 (Exists!2458 (ite c!950409 lambda!287191 lambda!287197)))))

(declare-fun bm!392916 () Bool)

(assert (=> bm!392916 (= call!392888 (matchZipper!1521 (ite c!950418 lt!2222289 (ite c!950410 ((_ map or) lt!2222318 lt!2222256) (ite c!950411 (ite c!950409 (ite c!950420 z!1189 lt!2222119) lt!2222169) lt!2222314))) (ite (or c!950418 c!950410) (t!375357 s!2326) (ite c!950411 (ite c!950409 (ite c!950420 s!2326 lt!2222286) (_1!35779 lt!2222305)) s!2326))))))

(declare-fun bm!392917 () Bool)

(assert (=> bm!392917 (= call!392911 call!392862)))

(declare-fun b!5446030 () Bool)

(declare-fun Unit!154725 () Unit!154704)

(assert (=> b!5446030 (= e!3373214 Unit!154725)))

(declare-fun bm!392918 () Bool)

(assert (=> bm!392918 (= call!392772 call!392842)))

(declare-fun bm!392919 () Bool)

(assert (=> bm!392919 (= call!392904 (lemmaZipperConcatMatchesSameAsBothZippers!514 (ite c!950418 lt!2222142 (ite c!950410 lt!2222318 lt!2222210)) (ite c!950418 lt!2222289 (ite c!950410 lt!2222228 lt!2222122)) (t!375357 s!2326)))))

(declare-fun bm!392920 () Bool)

(assert (=> bm!392920 (= call!392799 (lemmaTwoRegexMatchThenConcatMatchesConcatString!244 (ite (or c!950409 c!950415) (reg!15606 (regOne!31066 r!7292)) lt!2222247) (ite (or c!950409 c!950415) lt!2222304 (regTwo!31066 r!7292)) (ite c!950409 (_1!35779 lt!2222226) (ite c!950415 (_1!35779 lt!2222305) Nil!62006)) (ite c!950409 lt!2222286 (ite c!950415 (_2!35779 lt!2222305) s!2326))))))

(declare-fun bm!392921 () Bool)

(assert (=> bm!392921 (= call!392819 call!392901)))

(declare-fun bm!392922 () Bool)

(assert (=> bm!392922 (= call!392863 call!392923)))

(declare-fun bm!392923 () Bool)

(assert (=> bm!392923 (= call!392831 (lemmaFindConcatSeparationEquivalentToExists!1566 (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 (ite c!950415 lt!2222184 (reg!15606 (regOne!31066 r!7292))))) (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 (ite (or c!950409 c!950415) (regTwo!31066 r!7292) lt!2222247))) (ite (or c!950410 c!950414 c!950409 c!950415) s!2326 Nil!62006)))))

(declare-fun bm!392924 () Bool)

(assert (=> bm!392924 (= call!392876 call!392926)))

(declare-fun bm!392925 () Bool)

(assert (=> bm!392925 (= call!392907 call!392930)))

(declare-fun b!5446031 () Bool)

(assert (=> b!5446031 (= e!3373222 e!3373229)))

(assert (=> b!5446031 (= c!950418 ((_ is Union!15277) (regOne!31066 r!7292)))))

(declare-fun bm!392926 () Bool)

(assert (=> bm!392926 (= call!392900 (matchR!7462 (ite c!950418 lt!2222301 (ite c!950414 (Concat!24122 (regOne!31066 (regOne!31066 r!7292)) (Concat!24122 (regTwo!31066 (regOne!31066 r!7292)) lt!2222211)) lt!2222202)) s!2326))))

(declare-fun bm!392927 () Bool)

(assert (=> bm!392927 (= call!392878 call!392769)))

(declare-fun b!5446032 () Bool)

(assert (=> b!5446032 (= e!3373220 call!392888)))

(declare-fun b!5446033 () Bool)

(assert (=> b!5446033 (= e!3373221 false)))

(declare-fun bm!392928 () Bool)

(assert (=> bm!392928 (= call!392897 (lemmaConcatPreservesForall!244 lt!2222317 lt!2222227 (ite c!950409 lambda!287194 lambda!287196)))))

(declare-fun b!5446034 () Bool)

(declare-fun res!2319084 () Bool)

(assert (=> b!5446034 (=> (not res!2319084) (not e!3373227))))

(declare-fun toList!9061 ((InoxSet Context!9322)) List!62132)

(assert (=> b!5446034 (= res!2319084 (= (toList!9061 z!1189) zl!343))))

(declare-fun bm!392929 () Bool)

(assert (=> bm!392929 (= call!392957 call!392817)))

(declare-fun bm!392930 () Bool)

(declare-fun lemmaEmptyZipperMatchesNothing!32 ((InoxSet Context!9322) List!62130) Unit!154704)

(assert (=> bm!392930 (= call!392968 (lemmaEmptyZipperMatchesNothing!32 lt!2222210 (t!375357 s!2326)))))

(declare-fun bm!392931 () Bool)

(assert (=> bm!392931 (= call!392843 call!392890)))

(declare-fun bm!392932 () Bool)

(assert (=> bm!392932 (= call!392952 call!392857)))

(declare-fun bm!392933 () Bool)

(assert (=> bm!392933 (= call!392827 (derivationStepZipperUp!649 (ite c!950418 lt!2222175 lt!2222248) (h!68454 s!2326)))))

(declare-fun bm!392934 () Bool)

(assert (=> bm!392934 (= call!392914 (matchZipper!1521 (ite c!950418 ((_ map or) lt!2222142 lt!2222122) ((_ map or) lt!2222318 lt!2222228)) (t!375357 s!2326)))))

(declare-fun bm!392935 () Bool)

(assert (=> bm!392935 (= call!392770 call!392835)))

(declare-fun b!5446035 () Bool)

(declare-fun res!2319094 () Bool)

(assert (=> b!5446035 (=> res!2319094 e!3373218)))

(declare-fun isEmpty!33986 (List!62132) Bool)

(assert (=> b!5446035 (= res!2319094 (not (isEmpty!33986 (t!375359 zl!343))))))

(declare-fun bm!392936 () Bool)

(assert (=> bm!392936 (= call!392846 (get!21380 (ite c!950409 lt!2222154 lt!2222278)))))

(declare-fun bm!392937 () Bool)

(assert (=> bm!392937 (= call!392814 call!392869)))

(declare-fun bm!392938 () Bool)

(assert (=> bm!392938 (= call!392920 call!392833)))

(assert (=> b!5446036 (= e!3373218 e!3373224)))

(declare-fun res!2319111 () Bool)

(assert (=> b!5446036 (=> res!2319111 e!3373224)))

(declare-fun lt!2222279 () Bool)

(assert (=> b!5446036 (= res!2319111 (or (not (= lt!2222274 lt!2222279)) ((_ is Nil!62006) s!2326)))))

(assert (=> b!5446036 (= (Exists!2458 lambda!287178) (Exists!2458 lambda!287179))))

(declare-fun lt!2222223 () Unit!154704)

(assert (=> b!5446036 (= lt!2222223 (lemmaExistCutMatchRandMatchRSpecEquivalent!1112 (regOne!31066 r!7292) (regTwo!31066 r!7292) s!2326))))

(assert (=> b!5446036 (= lt!2222279 (Exists!2458 lambda!287178))))

(assert (=> b!5446036 (= lt!2222279 (isDefined!12091 (findConcatSeparation!1802 (regOne!31066 r!7292) (regTwo!31066 r!7292) Nil!62006 s!2326 s!2326)))))

(declare-fun lt!2222238 () Unit!154704)

(assert (=> b!5446036 (= lt!2222238 (lemmaFindConcatSeparationEquivalentToExists!1566 (regOne!31066 r!7292) (regTwo!31066 r!7292) s!2326))))

(declare-fun bm!392939 () Bool)

(assert (=> bm!392939 (= call!392932 call!392942)))

(declare-fun bm!392940 () Bool)

(assert (=> bm!392940 (= call!392893 call!392953)))

(declare-fun b!5446037 () Bool)

(declare-fun res!2319106 () Bool)

(assert (=> b!5446037 (=> res!2319106 e!3373218)))

(declare-fun generalisedUnion!1206 (List!62131) Regex!15277)

(declare-fun unfocusZipperList!719 (List!62132) List!62131)

(assert (=> b!5446037 (= res!2319106 (not (= r!7292 (generalisedUnion!1206 (unfocusZipperList!719 zl!343)))))))

(declare-fun bm!392941 () Bool)

(assert (=> bm!392941 (= call!392816 call!392806)))

(declare-fun bm!392942 () Bool)

(assert (=> bm!392942 (= call!392830 call!392831)))

(declare-fun bm!392943 () Bool)

(declare-fun call!392836 () Unit!154704)

(assert (=> bm!392943 (= call!392811 call!392836)))

(declare-fun b!5446038 () Bool)

(assert (=> b!5446038 (= e!3373216 call!392898)))

(declare-fun bm!392944 () Bool)

(assert (=> bm!392944 (= call!392941 call!392830)))

(declare-fun bm!392945 () Bool)

(assert (=> bm!392945 (= call!392848 call!392841)))

(declare-fun b!5446039 () Bool)

(declare-fun tp!1500997 () Bool)

(declare-fun tp!1500999 () Bool)

(assert (=> b!5446039 (= e!3373233 (and tp!1500997 tp!1500999))))

(declare-fun bm!392946 () Bool)

(assert (=> bm!392946 (= call!392766 call!392791)))

(declare-fun b!5446040 () Bool)

(declare-fun res!2319097 () Bool)

(assert (=> b!5446040 (=> res!2319097 e!3373224)))

(declare-fun isEmpty!33987 (List!62131) Bool)

(assert (=> b!5446040 (= res!2319097 (isEmpty!33987 (t!375358 (exprs!5161 (h!68456 zl!343)))))))

(declare-fun bm!392947 () Bool)

(assert (=> bm!392947 (= call!392808 (derivationStepZipperUp!649 (ite c!950410 lt!2222127 (ite c!950414 lt!2222157 (ite c!950411 lt!2222124 lt!2222248))) (h!68454 s!2326)))))

(declare-fun b!5446041 () Bool)

(declare-fun res!2319100 () Bool)

(assert (=> b!5446041 (=> res!2319100 e!3373218)))

(assert (=> b!5446041 (= res!2319100 (not ((_ is Cons!62007) (exprs!5161 (h!68456 zl!343)))))))

(declare-fun bm!392948 () Bool)

(assert (=> bm!392948 (= call!392959 call!392794)))

(declare-fun bm!392949 () Bool)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!434 (Regex!15277 List!62130) Unit!154704)

(assert (=> bm!392949 (= call!392767 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!434 (reg!15606 (regOne!31066 r!7292)) (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))))))

(declare-fun bm!392950 () Bool)

(assert (=> bm!392950 (= call!392956 (Exists!2458 (ite c!950410 lambda!287181 (ite c!950414 lambda!287186 (ite c!950409 lambda!287193 lambda!287199)))))))

(declare-fun b!5446042 () Bool)

(assert (=> b!5446042 (= e!3373230 (= lt!2222274 call!392864))))

(declare-fun b!5446043 () Bool)

(declare-fun tp!1500995 () Bool)

(assert (=> b!5446043 (= e!3373226 tp!1500995)))

(declare-fun bm!392951 () Bool)

(assert (=> bm!392951 (= call!392779 call!392850)))

(declare-fun bm!392952 () Bool)

(assert (=> bm!392952 (= call!392871 (matchZipper!1521 (ite c!950418 lt!2222142 (ite (or c!950410 c!950411) z!1189 (ite c!950417 ((_ map or) lt!2222210 lt!2222122) z!1189))) (ite c!950418 (t!375357 s!2326) (ite (or c!950410 c!950411) s!2326 (ite c!950417 (t!375357 s!2326) s!2326)))))))

(declare-fun bm!392953 () Bool)

(assert (=> bm!392953 (= call!392967 (nullable!5446 (ite c!950418 (regTwo!31067 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292)))))))

(declare-fun bm!392954 () Bool)

(assert (=> bm!392954 (= call!392953 call!392883)))

(declare-fun bm!392955 () Bool)

(assert (=> bm!392955 (= call!392836 call!392863)))

(declare-fun b!5446044 () Bool)

(declare-fun tp!1500998 () Bool)

(assert (=> b!5446044 (= e!3373213 tp!1500998)))

(declare-fun bm!392956 () Bool)

(assert (=> bm!392956 (= call!392809 (matchR!7462 (ite c!950418 lt!2222302 (ite c!950410 lt!2222146 (ite c!950414 lt!2222270 (ite c!950409 lt!2222247 (ite c!950415 lt!2222304 lt!2222292))))) (ite (or c!950418 c!950410 c!950414) s!2326 (ite c!950409 lt!2222215 (ite c!950415 (_2!35779 lt!2222305) s!2326)))))))

(declare-fun bm!392957 () Bool)

(assert (=> bm!392957 (= call!392931 call!392839)))

(declare-fun bm!392958 () Bool)

(assert (=> bm!392958 (= call!392943 call!392788)))

(declare-fun bm!392959 () Bool)

(assert (=> bm!392959 (= call!392881 (mainMatchTheorem!2380 (ite c!950418 lt!2222267 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) (ite (or c!950418 c!950410 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326))))))

(declare-fun bm!392960 () Bool)

(assert (=> bm!392960 (= call!392872 call!392795)))

(declare-fun b!5446045 () Bool)

(assert (=> b!5446045 (= e!3373217 lt!2222204)))

(declare-fun bm!392961 () Bool)

(assert (=> bm!392961 (= call!392866 (generalisedConcat!946 (ite c!950410 lt!2222264 lt!2222209)))))

(declare-fun bm!392962 () Bool)

(assert (=> bm!392962 (= call!392869 call!392836)))

(declare-fun bm!392963 () Bool)

(assert (=> bm!392963 (= call!392898 (matchZipper!1521 (ite c!950418 ((_ map or) lt!2222289 lt!2222122) lt!2222228) (t!375357 s!2326)))))

(declare-fun bm!392964 () Bool)

(assert (=> bm!392964 (= call!392845 call!392938)))

(assert (= (and start!570878 res!2319098) b!5446034))

(assert (= (and b!5446034 res!2319084) b!5446023))

(assert (= (and b!5446023 res!2319110) b!5446026))

(assert (= (and b!5446026 (not res!2319093)) b!5446035))

(assert (= (and b!5446035 (not res!2319094)) b!5445982))

(assert (= (and b!5445982 (not res!2319096)) b!5446041))

(assert (= (and b!5446041 (not res!2319100)) b!5446037))

(assert (= (and b!5446037 (not res!2319106)) b!5446015))

(assert (= (and b!5446015 (not res!2319082)) b!5446036))

(assert (= (and b!5446036 (not res!2319111)) b!5446040))

(assert (= (and b!5446040 (not res!2319097)) b!5446025))

(assert (= (and b!5446025 c!950419) b!5446012))

(assert (= (and b!5446025 (not c!950419)) b!5446020))

(assert (= (and b!5446012 (not res!2319109)) b!5446002))

(assert (= (and b!5446025 c!950413) b!5445984))

(assert (= (and b!5446025 (not c!950413)) b!5446031))

(assert (= (and b!5446031 c!950418) b!5445985))

(assert (= (and b!5446031 (not c!950418)) b!5446027))

(assert (= (and b!5445985 (not res!2319086)) b!5446032))

(assert (= (and b!5445985 c!950408) b!5445990))

(assert (= (and b!5445985 (not c!950408)) b!5446030))

(assert (= (and b!5445990 (not res!2319092)) b!5446017))

(assert (= (and b!5445985 c!950416) b!5445997))

(assert (= (and b!5445985 (not c!950416)) b!5445987))

(assert (= (and b!5445997 (not res!2319104)) b!5445996))

(assert (= (and b!5445985 res!2319085) b!5445998))

(assert (= (and b!5446027 res!2319087) b!5446004))

(assert (= (and b!5446027 c!950410) b!5446028))

(assert (= (and b!5446027 (not c!950410)) b!5446000))

(assert (= (and b!5446028 (not res!2319089)) b!5446038))

(assert (= (and b!5446028 (not res!2319105)) b!5445992))

(assert (= (and b!5446028 res!2319090) b!5446014))

(assert (= (and b!5446000 c!950414) b!5446005))

(assert (= (and b!5446000 (not c!950414)) b!5446018))

(assert (= (and b!5446005 res!2319091) b!5446007))

(assert (= (and b!5446018 c!950411) b!5445994))

(assert (= (and b!5446018 (not c!950411)) b!5446019))

(assert (= (and b!5445994 res!2319099) b!5445988))

(assert (= (and b!5445994 c!950409) b!5446010))

(assert (= (and b!5445994 (not c!950409)) b!5446001))

(assert (= (and b!5446010 c!950420) b!5445989))

(assert (= (and b!5446010 (not c!950420)) b!5445993))

(assert (= (and b!5445989 res!2319101) b!5446009))

(assert (= (and b!5445993 res!2319103) b!5445983))

(assert (= (or b!5445989 b!5445993) bm!392912))

(assert (= (or b!5445989 b!5445993) bm!392903))

(assert (= (or b!5446009 b!5445993) bm!392957))

(assert (= (or b!5445989 b!5445993) bm!392899))

(assert (= (and b!5446001 c!950412) b!5445999))

(assert (= (and b!5446001 (not c!950412)) b!5445991))

(assert (= (and b!5445999 c!950415) b!5446006))

(assert (= (and b!5445999 (not c!950415)) b!5445995))

(assert (= (and b!5446006 res!2319088) b!5446045))

(assert (= (and b!5446006 res!2319107) b!5446024))

(assert (= (and b!5445995 res!2319095) b!5446033))

(assert (= (or b!5446006 b!5445995) bm!392853))

(assert (= (or b!5446006 b!5445995) bm!392889))

(assert (= (or b!5446006 b!5445995) bm!392811))

(assert (= (or b!5446006 b!5445995) bm!392917))

(assert (= (or b!5446006 b!5445995) bm!392770))

(assert (= (or b!5446006 b!5445995) bm!392911))

(assert (= (or b!5446006 b!5445995) bm!392864))

(assert (= (or b!5446006 b!5445995) bm!392834))

(assert (= (or b!5446006 b!5445995) bm!392937))

(assert (= (or b!5446006 b!5445995) bm!392773))

(assert (= (or b!5446006 b!5445995) bm!392809))

(assert (= (or b!5446006 b!5445995) bm!392852))

(assert (= (or b!5446006 b!5445995) bm!392786))

(assert (= (or b!5446006 b!5445995) bm!392806))

(assert (= (or b!5446006 b!5445995) bm!392857))

(assert (= (or b!5446006 b!5445995) bm!392766))

(assert (= (or b!5446006 b!5445995) bm!392892))

(assert (= (or b!5446006 b!5445995) bm!392867))

(assert (= (or b!5446006 b!5445995) bm!392844))

(assert (= (or b!5446010 bm!392844) bm!392837))

(assert (= (or b!5445989 b!5445995) bm!392860))

(assert (= (or b!5446010 bm!392806) bm!392782))

(assert (= (or b!5445989 b!5445995) bm!392940))

(assert (= (or b!5446010 bm!392766) bm!392841))

(assert (= (or b!5445989 b!5445995) bm!392796))

(assert (= (or b!5445993 b!5446006) bm!392767))

(assert (= (or b!5445993 bm!392853) bm!392896))

(assert (= (or b!5445993 bm!392867) bm!392825))

(assert (= (or b!5445993 b!5446006) bm!392835))

(assert (= (or b!5446010 b!5446006) bm!392901))

(assert (= (or b!5445993 bm!392811) bm!392960))

(assert (= (or b!5445993 b!5446006) bm!392761))

(assert (= (or b!5446010 b!5446006) bm!392886))

(assert (= (or b!5445993 b!5446006) bm!392828))

(assert (= (or b!5446010 bm!392889) bm!392872))

(assert (= (or b!5445993 b!5446006) bm!392856))

(assert (= (or b!5445993 bm!392770) bm!392920))

(assert (= (or b!5445993 b!5446006) bm!392905))

(assert (= (or b!5445993 b!5446006) bm!392884))

(assert (= (or b!5445993 b!5446006) bm!392832))

(assert (= (or bm!392899 b!5446006) bm!392848))

(assert (= (or b!5445993 b!5446006) bm!392839))

(assert (= (or b!5445993 b!5446006) bm!392826))

(assert (= (or b!5445993 bm!392809) bm!392897))

(assert (= (or b!5445993 bm!392911) bm!392918))

(assert (= (or b!5445993 b!5446006) bm!392909))

(assert (= (or b!5446010 bm!392773) bm!392944))

(assert (= (or b!5446010 b!5446001) bm!392765))

(assert (= (or b!5445993 bm!392834) bm!392949))

(assert (= (or b!5445993 b!5446006) bm!392854))

(assert (= (or bm!392912 b!5446006) bm!392808))

(assert (= (or b!5445993 b!5445999) bm!392931))

(assert (= (or bm!392957 b!5446006) bm!392873))

(assert (= (or b!5445993 b!5446006) bm!392907))

(assert (= (or b!5445989 b!5445995) bm!392771))

(assert (= (or b!5445993 b!5446006) bm!392928))

(assert (= (or b!5445993 bm!392937) bm!392962))

(assert (= (or b!5445993 b!5446006) bm!392862))

(assert (= (or b!5445993 b!5446006) bm!392915))

(assert (= (or b!5445993 bm!392917) bm!392869))

(assert (= (or b!5445993 bm!392892) bm!392879))

(assert (= (or b!5445993 b!5446006) bm!392827))

(assert (= (or b!5445993 bm!392786) bm!392805))

(assert (= (or b!5446010 b!5446006) bm!392936))

(assert (= (or bm!392903 bm!392852) bm!392868))

(assert (= (or b!5445993 b!5446006) bm!392779))

(assert (= (or b!5445993 bm!392864) bm!392769))

(assert (= (or b!5445993 bm!392857) bm!392877))

(assert (= (and b!5446019 c!950417) b!5446011))

(assert (= (and b!5446019 (not c!950417)) b!5446029))

(assert (= (and b!5446011 res!2319083) b!5446042))

(assert (= (and b!5446029 res!2319102) b!5446021))

(assert (= (or b!5446011 b!5446021) bm!392913))

(assert (= (or b!5446011 b!5446029) bm!392802))

(assert (= (or b!5446011 b!5446029) bm!392763))

(assert (= (or b!5446011 b!5446029) bm!392943))

(assert (= (or b!5446011 b!5446029) bm!392863))

(assert (= (or b!5446011 b!5446029) bm!392781))

(assert (= (or b!5446011 b!5446029) bm!392778))

(assert (= (or b!5446011 b!5446029) bm!392930))

(assert (= (or b!5446011 b!5446029) bm!392876))

(assert (= (or bm!392877 b!5446011) bm!392824))

(assert (= (or bm!392848 b!5446042) bm!392816))

(assert (= (or bm!392879 bm!392802) bm!392791))

(assert (= (or bm!392931 bm!392778) bm!392906))

(assert (= (or bm!392873 b!5446011) bm!392859))

(assert (= (or bm!392962 bm!392943) bm!392955))

(assert (= (or bm!392868 b!5446011) bm!392774))

(assert (= (or b!5445994 bm!392863) bm!392891))

(assert (= (or b!5445994 b!5446011) bm!392958))

(assert (= (or b!5446006 bm!392876) bm!392904))

(assert (= (or b!5445994 bm!392763) bm!392784))

(assert (= (or bm!392765 b!5445994 bm!392913) bm!392797))

(assert (= (or b!5445994 b!5446011) bm!392795))

(assert (= (or bm!392918 bm!392781) bm!392878))

(assert (= (or bm!392796 b!5446011) bm!392792))

(assert (= (or bm!392825 b!5446011) bm!392964))

(assert (= (or bm!392940 b!5446011) bm!392954))

(assert (= (or b!5446005 bm!392767) bm!392945))

(assert (= (or b!5446005 bm!392905) bm!392880))

(assert (= (or b!5446005 bm!392795) bm!392794))

(assert (= (or b!5446005 b!5445994) bm!392807))

(assert (= (or b!5446005 bm!392784) bm!392885))

(assert (= (or b!5446005 bm!392886) bm!392846))

(assert (= (or b!5446005 b!5445994) bm!392804))

(assert (= (or b!5446005 bm!392872) bm!392938))

(assert (= (or b!5446005 bm!392944) bm!392942))

(assert (= (or b!5446005 bm!392841) bm!392914))

(assert (= (or b!5446007 bm!392824) bm!392946))

(assert (= (or b!5446005 bm!392901) bm!392941))

(assert (= (or b!5446005 bm!392808) bm!392871))

(assert (= (or b!5446005 bm!392958) bm!392800))

(assert (= (or b!5446005 bm!392960) bm!392833))

(assert (= (or b!5446005 bm!392954) bm!392836))

(assert (= (or b!5446005 b!5446006) bm!392830))

(assert (= (or b!5446005 bm!392897) bm!392851))

(assert (= (or b!5446005 b!5446006) bm!392924))

(assert (= (or b!5446005 bm!392782) bm!392875))

(assert (= (or b!5446005 bm!392891) bm!392822))

(assert (= (or b!5446005 bm!392955) bm!392922))

(assert (= (or b!5446005 bm!392769) bm!392882))

(assert (= (or b!5446005 bm!392774) bm!392819))

(assert (= (or b!5446005 bm!392906) bm!392939))

(assert (= (or b!5446005 bm!392869) bm!392813))

(assert (= (or b!5446005 bm!392832) bm!392951))

(assert (= (or b!5446005 bm!392791) bm!392925))

(assert (= (or b!5446005 b!5445994) bm!392927))

(assert (= (or b!5446005 b!5446006) bm!392831))

(assert (= (or b!5446005 bm!392837) bm!392921))

(assert (= (or b!5446028 bm!392882) bm!392788))

(assert (= (or b!5446028 bm!392880) bm!392950))

(assert (= (or b!5446028 bm!392941) bm!392883))

(assert (= (or b!5446028 bm!392804) bm!392870))

(assert (= (or b!5446028 b!5445994) bm!392764))

(assert (= (or b!5446028 bm!392964) bm!392874))

(assert (= (or b!5446028 bm!392945) bm!392865))

(assert (= (or b!5446028 bm!392859) bm!392818))

(assert (= (or b!5446028 bm!392922) bm!392845))

(assert (= (or b!5446028 bm!392833) bm!392789))

(assert (= (or b!5446028 bm!392871) bm!392785))

(assert (= (or b!5446028 bm!392939) bm!392898))

(assert (= (or b!5446028 bm!392761) bm!392798))

(assert (= (or b!5446014 bm!392797) bm!392842))

(assert (= (or b!5446028 bm!392813) bm!392775))

(assert (= (or b!5446028 bm!392951) bm!392850))

(assert (= (or b!5446028 bm!392836) bm!392948))

(assert (= (or b!5445992 bm!392946) bm!392793))

(assert (= (or b!5446028 bm!392875) bm!392810))

(assert (= (or b!5446028 bm!392819) bm!392935))

(assert (= (or b!5446028 bm!392938) bm!392762))

(assert (= (or b!5446028 bm!392914) bm!392849))

(assert (= (or b!5446028 bm!392927) bm!392866))

(assert (= (or b!5446028 bm!392807) bm!392829))

(assert (= (or b!5446028 bm!392846) bm!392783))

(assert (= (or b!5446028 bm!392924) bm!392780))

(assert (= (or b!5446028 b!5446005) bm!392932))

(assert (= (or b!5446028 bm!392851) bm!392902))

(assert (= (or b!5446028 bm!392904) bm!392847))

(assert (= (or b!5446028 b!5446011) bm!392776))

(assert (= (or b!5446028 bm!392854) bm!392881))

(assert (= (or b!5446028 bm!392794) bm!392947))

(assert (= (or b!5446028 bm!392771) bm!392861))

(assert (= (or b!5446028 b!5445994) bm!392801))

(assert (= (or b!5446028 b!5445994) bm!392893))

(assert (= (or b!5446028 bm!392942) bm!392923))

(assert (= (or b!5446028 bm!392885) bm!392768))

(assert (= (or b!5446028 bm!392816) bm!392823))

(assert (= (or b!5446028 b!5446005) bm!392961))

(assert (= (or b!5446028 bm!392827) bm!392910))

(assert (= (or b!5446028 bm!392921) bm!392838))

(assert (= (or b!5445985 bm!392842) bm!392952))

(assert (= (or b!5445985 bm!392823) bm!392887))

(assert (= (or b!5445997 b!5446038) bm!392963))

(assert (= (or b!5445985 bm!392798) bm!392843))

(assert (= (or b!5445985 bm!392775) bm!392956))

(assert (= (or b!5445985 bm!392830) bm!392926))

(assert (= (or b!5445997 b!5446032 bm!392818) bm!392916))

(assert (= (or b!5445985 bm!392861) bm!392855))

(assert (= (or b!5445997 b!5446028) bm!392803))

(assert (= (or b!5445985 bm!392881) bm!392890))

(assert (= (or b!5445985 bm!392768) bm!392759))

(assert (= (or b!5445985 bm!392935) bm!392790))

(assert (= (or b!5445985 bm!392893) bm!392777))

(assert (= (or b!5445998 bm!392793) bm!392814))

(assert (= (or b!5445985 bm!392764) bm!392821))

(assert (= (or b!5445985 bm!392932) bm!392799))

(assert (= (or b!5445990 b!5446028) bm!392934))

(assert (= (or b!5445985 b!5446004) bm!392953))

(assert (= (or b!5445985 bm!392785) bm!392929))

(assert (= (or b!5445985 bm!392860) bm!392933))

(assert (= (or b!5445985 b!5446006) bm!392858))

(assert (= (or b!5445985 bm!392847) bm!392900))

(assert (= (or b!5445985 bm!392948) bm!392772))

(assert (= (or b!5445985 bm!392866) bm!392815))

(assert (= (or b!5445996 b!5446017 bm!392898) bm!392820))

(assert (= (or b!5445985 b!5445994) bm!392817))

(assert (= (or b!5445985 b!5446028) bm!392895))

(assert (= (or b!5445985 bm!392845) bm!392959))

(assert (= (or b!5445985 bm!392925) bm!392758))

(assert (= (or b!5445985 bm!392776) bm!392919))

(assert (= (or b!5445985 bm!392870) bm!392787))

(assert (= (or b!5445985 bm!392829) bm!392840))

(assert (= (or b!5445985 b!5446028) bm!392908))

(assert (= (or b!5445984 bm!392929) bm!392894))

(assert (= (or b!5445984 bm!392772) bm!392760))

(assert (= (or b!5445984 bm!392890) bm!392888))

(assert (= (or b!5445984 bm!392887) bm!392812))

(assert (= (and b!5446025 (not res!2319108)) b!5446022))

(assert (= (and start!570878 ((_ is ElementMatch!15277) r!7292)) b!5446016))

(assert (= (and start!570878 ((_ is Concat!24122) r!7292)) b!5446039))

(assert (= (and start!570878 ((_ is Star!15277) r!7292)) b!5445986))

(assert (= (and start!570878 ((_ is Union!15277) r!7292)) b!5446008))

(assert (= (and start!570878 condSetEmpty!35641) setIsEmpty!35641))

(assert (= (and start!570878 (not condSetEmpty!35641)) setNonEmpty!35641))

(assert (= setNonEmpty!35641 b!5446043))

(assert (= b!5446013 b!5446044))

(assert (= (and start!570878 ((_ is Cons!62008) zl!343)) b!5446013))

(assert (= (and start!570878 ((_ is Cons!62006) s!2326)) b!5446003))

(declare-fun m!6465350 () Bool)

(assert (=> setNonEmpty!35641 m!6465350))

(declare-fun m!6465352 () Bool)

(assert (=> bm!392792 m!6465352))

(declare-fun m!6465354 () Bool)

(assert (=> b!5446013 m!6465354))

(declare-fun m!6465356 () Bool)

(assert (=> bm!392915 m!6465356))

(declare-fun m!6465358 () Bool)

(assert (=> b!5446040 m!6465358))

(declare-fun m!6465360 () Bool)

(assert (=> bm!392839 m!6465360))

(declare-fun m!6465362 () Bool)

(assert (=> bm!392758 m!6465362))

(declare-fun m!6465364 () Bool)

(assert (=> b!5446026 m!6465364))

(declare-fun m!6465366 () Bool)

(assert (=> b!5446026 m!6465366))

(declare-fun m!6465368 () Bool)

(assert (=> b!5446026 m!6465368))

(declare-fun m!6465370 () Bool)

(assert (=> b!5446010 m!6465370))

(declare-fun m!6465372 () Bool)

(assert (=> bm!392920 m!6465372))

(declare-fun m!6465374 () Bool)

(assert (=> bm!392779 m!6465374))

(declare-fun m!6465376 () Bool)

(assert (=> bm!392858 m!6465376))

(declare-fun m!6465378 () Bool)

(assert (=> bm!392884 m!6465378))

(declare-fun m!6465380 () Bool)

(assert (=> bm!392790 m!6465380))

(declare-fun m!6465382 () Bool)

(assert (=> bm!392799 m!6465382))

(declare-fun m!6465384 () Bool)

(assert (=> bm!392950 m!6465384))

(declare-fun m!6465386 () Bool)

(assert (=> bm!392908 m!6465386))

(declare-fun m!6465388 () Bool)

(assert (=> bm!392900 m!6465388))

(declare-fun m!6465390 () Bool)

(assert (=> bm!392910 m!6465390))

(declare-fun m!6465392 () Bool)

(assert (=> bm!392826 m!6465392))

(declare-fun m!6465394 () Bool)

(assert (=> b!5445984 m!6465394))

(declare-fun m!6465396 () Bool)

(assert (=> b!5445994 m!6465396))

(declare-fun m!6465398 () Bool)

(assert (=> b!5445994 m!6465398))

(declare-fun m!6465400 () Bool)

(assert (=> b!5445994 m!6465400))

(declare-fun m!6465402 () Bool)

(assert (=> b!5445994 m!6465402))

(declare-fun m!6465404 () Bool)

(assert (=> b!5445994 m!6465404))

(declare-fun m!6465406 () Bool)

(assert (=> start!570878 m!6465406))

(declare-fun m!6465408 () Bool)

(assert (=> bm!392777 m!6465408))

(declare-fun m!6465410 () Bool)

(assert (=> bm!392894 m!6465410))

(declare-fun m!6465412 () Bool)

(assert (=> bm!392828 m!6465412))

(declare-fun m!6465414 () Bool)

(assert (=> bm!392801 m!6465414))

(declare-fun m!6465416 () Bool)

(assert (=> bm!392780 m!6465416))

(declare-fun m!6465418 () Bool)

(assert (=> bm!392961 m!6465418))

(declare-fun m!6465420 () Bool)

(assert (=> bm!392760 m!6465420))

(declare-fun m!6465422 () Bool)

(assert (=> bm!392909 m!6465422))

(declare-fun m!6465424 () Bool)

(assert (=> bm!392956 m!6465424))

(declare-fun m!6465426 () Bool)

(assert (=> bm!392855 m!6465426))

(declare-fun m!6465428 () Bool)

(assert (=> bm!392821 m!6465428))

(declare-fun m!6465430 () Bool)

(assert (=> bm!392923 m!6465430))

(declare-fun m!6465432 () Bool)

(assert (=> bm!392934 m!6465432))

(declare-fun m!6465434 () Bool)

(assert (=> bm!392953 m!6465434))

(declare-fun m!6465436 () Bool)

(assert (=> b!5446037 m!6465436))

(assert (=> b!5446037 m!6465436))

(declare-fun m!6465438 () Bool)

(assert (=> b!5446037 m!6465438))

(declare-fun m!6465440 () Bool)

(assert (=> b!5446005 m!6465440))

(declare-fun m!6465442 () Bool)

(assert (=> bm!392907 m!6465442))

(declare-fun m!6465444 () Bool)

(assert (=> bm!392926 m!6465444))

(declare-fun m!6465446 () Bool)

(assert (=> bm!392838 m!6465446))

(declare-fun m!6465448 () Bool)

(assert (=> bm!392949 m!6465448))

(declare-fun m!6465450 () Bool)

(assert (=> bm!392787 m!6465450))

(declare-fun m!6465452 () Bool)

(assert (=> bm!392919 m!6465452))

(declare-fun m!6465454 () Bool)

(assert (=> b!5446028 m!6465454))

(declare-fun m!6465456 () Bool)

(assert (=> b!5446028 m!6465456))

(declare-fun m!6465458 () Bool)

(assert (=> bm!392822 m!6465458))

(declare-fun m!6465460 () Bool)

(assert (=> bm!392916 m!6465460))

(declare-fun m!6465462 () Bool)

(assert (=> bm!392843 m!6465462))

(declare-fun m!6465464 () Bool)

(assert (=> bm!392789 m!6465464))

(declare-fun m!6465466 () Bool)

(assert (=> bm!392888 m!6465466))

(declare-fun m!6465468 () Bool)

(assert (=> bm!392783 m!6465468))

(declare-fun m!6465470 () Bool)

(assert (=> bm!392936 m!6465470))

(declare-fun m!6465472 () Bool)

(assert (=> bm!392930 m!6465472))

(declare-fun m!6465474 () Bool)

(assert (=> b!5446023 m!6465474))

(declare-fun m!6465476 () Bool)

(assert (=> bm!392762 m!6465476))

(declare-fun m!6465478 () Bool)

(assert (=> bm!392817 m!6465478))

(declare-fun m!6465480 () Bool)

(assert (=> bm!392883 m!6465480))

(declare-fun m!6465482 () Bool)

(assert (=> bm!392850 m!6465482))

(declare-fun m!6465484 () Bool)

(assert (=> bm!392815 m!6465484))

(declare-fun m!6465486 () Bool)

(assert (=> bm!392862 m!6465486))

(assert (=> b!5446011 m!6465394))

(assert (=> b!5445995 m!6465394))

(declare-fun m!6465488 () Bool)

(assert (=> bm!392865 m!6465488))

(declare-fun m!6465490 () Bool)

(assert (=> bm!392840 m!6465490))

(declare-fun m!6465492 () Bool)

(assert (=> b!5445985 m!6465492))

(declare-fun m!6465494 () Bool)

(assert (=> b!5445985 m!6465494))

(declare-fun m!6465496 () Bool)

(assert (=> b!5445985 m!6465496))

(declare-fun m!6465498 () Bool)

(assert (=> b!5445985 m!6465498))

(declare-fun m!6465500 () Bool)

(assert (=> b!5445985 m!6465500))

(declare-fun m!6465502 () Bool)

(assert (=> b!5445985 m!6465502))

(declare-fun m!6465504 () Bool)

(assert (=> b!5445985 m!6465504))

(declare-fun m!6465506 () Bool)

(assert (=> b!5445990 m!6465506))

(declare-fun m!6465508 () Bool)

(assert (=> bm!392800 m!6465508))

(declare-fun m!6465510 () Bool)

(assert (=> b!5446006 m!6465510))

(declare-fun m!6465512 () Bool)

(assert (=> b!5446006 m!6465512))

(declare-fun m!6465514 () Bool)

(assert (=> b!5446006 m!6465514))

(declare-fun m!6465516 () Bool)

(assert (=> b!5446006 m!6465516))

(declare-fun m!6465518 () Bool)

(assert (=> b!5446006 m!6465518))

(declare-fun m!6465520 () Bool)

(assert (=> b!5446006 m!6465520))

(declare-fun m!6465522 () Bool)

(assert (=> b!5446006 m!6465522))

(declare-fun m!6465524 () Bool)

(assert (=> b!5446006 m!6465524))

(declare-fun m!6465526 () Bool)

(assert (=> bm!392933 m!6465526))

(declare-fun m!6465528 () Bool)

(assert (=> bm!392902 m!6465528))

(declare-fun m!6465530 () Bool)

(assert (=> bm!392831 m!6465530))

(declare-fun m!6465532 () Bool)

(assert (=> b!5446036 m!6465532))

(declare-fun m!6465534 () Bool)

(assert (=> b!5446036 m!6465534))

(declare-fun m!6465536 () Bool)

(assert (=> b!5446036 m!6465536))

(assert (=> b!5446036 m!6465532))

(declare-fun m!6465538 () Bool)

(assert (=> b!5446036 m!6465538))

(declare-fun m!6465540 () Bool)

(assert (=> b!5446036 m!6465540))

(assert (=> b!5446036 m!6465540))

(declare-fun m!6465542 () Bool)

(assert (=> b!5446036 m!6465542))

(declare-fun m!6465544 () Bool)

(assert (=> bm!392759 m!6465544))

(declare-fun m!6465546 () Bool)

(assert (=> b!5446034 m!6465546))

(declare-fun m!6465548 () Bool)

(assert (=> bm!392856 m!6465548))

(declare-fun m!6465550 () Bool)

(assert (=> b!5446022 m!6465550))

(declare-fun m!6465552 () Bool)

(assert (=> b!5445982 m!6465552))

(assert (=> bm!392814 m!6465524))

(declare-fun m!6465554 () Bool)

(assert (=> bm!392814 m!6465554))

(declare-fun m!6465556 () Bool)

(assert (=> bm!392814 m!6465556))

(assert (=> b!5445989 m!6465394))

(declare-fun m!6465558 () Bool)

(assert (=> bm!392788 m!6465558))

(assert (=> bm!392928 m!6465378))

(declare-fun m!6465560 () Bool)

(assert (=> bm!392959 m!6465560))

(declare-fun m!6465562 () Bool)

(assert (=> bm!392947 m!6465562))

(declare-fun m!6465564 () Bool)

(assert (=> b!5446035 m!6465564))

(declare-fun m!6465566 () Bool)

(assert (=> bm!392895 m!6465566))

(declare-fun m!6465568 () Bool)

(assert (=> bm!392812 m!6465568))

(declare-fun m!6465570 () Bool)

(assert (=> bm!392874 m!6465570))

(declare-fun m!6465572 () Bool)

(assert (=> bm!392810 m!6465572))

(declare-fun m!6465574 () Bool)

(assert (=> bm!392878 m!6465574))

(declare-fun m!6465576 () Bool)

(assert (=> bm!392896 m!6465576))

(declare-fun m!6465578 () Bool)

(assert (=> bm!392803 m!6465578))

(declare-fun m!6465580 () Bool)

(assert (=> b!5446025 m!6465580))

(declare-fun m!6465582 () Bool)

(assert (=> b!5446025 m!6465582))

(declare-fun m!6465584 () Bool)

(assert (=> b!5446025 m!6465584))

(assert (=> b!5446025 m!6465394))

(declare-fun m!6465586 () Bool)

(assert (=> b!5446025 m!6465586))

(declare-fun m!6465588 () Bool)

(assert (=> b!5446025 m!6465588))

(declare-fun m!6465590 () Bool)

(assert (=> b!5446025 m!6465590))

(declare-fun m!6465592 () Bool)

(assert (=> b!5446025 m!6465592))

(declare-fun m!6465594 () Bool)

(assert (=> b!5446025 m!6465594))

(declare-fun m!6465596 () Bool)

(assert (=> b!5446025 m!6465596))

(declare-fun m!6465598 () Bool)

(assert (=> b!5446025 m!6465598))

(declare-fun m!6465600 () Bool)

(assert (=> b!5446012 m!6465600))

(declare-fun m!6465602 () Bool)

(assert (=> b!5446012 m!6465602))

(declare-fun m!6465604 () Bool)

(assert (=> b!5446012 m!6465604))

(declare-fun m!6465606 () Bool)

(assert (=> bm!392952 m!6465606))

(declare-fun m!6465608 () Bool)

(assert (=> bm!392835 m!6465608))

(declare-fun m!6465610 () Bool)

(assert (=> bm!392820 m!6465610))

(declare-fun m!6465612 () Bool)

(assert (=> b!5446002 m!6465612))

(declare-fun m!6465614 () Bool)

(assert (=> bm!392963 m!6465614))

(declare-fun m!6465616 () Bool)

(assert (=> bm!392805 m!6465616))

(declare-fun m!6465618 () Bool)

(assert (=> bm!392849 m!6465618))

(check-sat (not bm!392814) (not bm!392926) (not bm!392923) (not bm!392838) (not bm!392760) (not b!5446025) (not bm!392865) (not bm!392840) (not bm!392758) (not bm!392789) (not bm!392839) (not bm!392961) (not b!5446039) (not bm!392817) (not bm!392878) (not bm!392780) (not bm!392799) (not b!5446022) (not bm!392800) (not bm!392856) (not bm!392933) (not bm!392928) (not bm!392828) (not bm!392821) (not b!5445986) (not bm!392963) (not b!5446010) (not bm!392952) (not bm!392900) (not b!5446003) (not bm!392883) (not bm!392895) (not bm!392910) (not b!5446034) (not bm!392907) (not bm!392787) (not b!5446008) (not bm!392874) (not b!5446002) (not bm!392759) (not bm!392947) (not b!5446037) (not bm!392909) (not bm!392835) (not bm!392862) (not bm!392822) (not bm!392915) (not bm!392934) (not b!5446044) (not b!5445994) (not bm!392908) (not b!5446012) (not b!5445982) (not b!5446035) (not bm!392896) tp_is_empty!39807 (not bm!392902) (not bm!392779) (not bm!392815) (not bm!392936) (not bm!392810) (not bm!392916) (not bm!392949) (not bm!392850) (not bm!392888) (not b!5446040) (not bm!392959) (not b!5446036) (not bm!392812) (not bm!392956) (not bm!392805) (not bm!392826) (not bm!392930) (not bm!392788) (not bm!392849) (not bm!392894) (not bm!392950) (not b!5446013) (not b!5445990) (not bm!392801) (not bm!392843) (not bm!392820) (not b!5446023) (not bm!392790) (not bm!392792) (not bm!392803) (not bm!392783) (not start!570878) (not setNonEmpty!35641) (not bm!392953) (not b!5446006) (not b!5446043) (not b!5446026) (not bm!392762) (not bm!392920) (not bm!392831) (not bm!392884) (not bm!392855) (not b!5445985) (not bm!392858) (not bm!392777) (not bm!392919))
(check-sat)
(get-model)

(declare-fun b!5446346 () Bool)

(declare-fun e!3373415 () (InoxSet Context!9322))

(declare-fun e!3373414 () (InoxSet Context!9322))

(assert (=> b!5446346 (= e!3373415 e!3373414)))

(declare-fun c!950498 () Bool)

(assert (=> b!5446346 (= c!950498 ((_ is Cons!62007) (exprs!5161 (ite c!950418 lt!2222175 lt!2222248))))))

(declare-fun b!5446347 () Bool)

(declare-fun call!392988 () (InoxSet Context!9322))

(assert (=> b!5446347 (= e!3373414 call!392988)))

(declare-fun e!3373413 () Bool)

(declare-fun b!5446349 () Bool)

(assert (=> b!5446349 (= e!3373413 (nullable!5446 (h!68455 (exprs!5161 (ite c!950418 lt!2222175 lt!2222248)))))))

(declare-fun b!5446350 () Bool)

(assert (=> b!5446350 (= e!3373415 ((_ map or) call!392988 (derivationStepZipperUp!649 (Context!9323 (t!375358 (exprs!5161 (ite c!950418 lt!2222175 lt!2222248)))) (h!68454 s!2326))))))

(declare-fun bm!392983 () Bool)

(assert (=> bm!392983 (= call!392988 (derivationStepZipperDown!725 (h!68455 (exprs!5161 (ite c!950418 lt!2222175 lt!2222248))) (Context!9323 (t!375358 (exprs!5161 (ite c!950418 lt!2222175 lt!2222248)))) (h!68454 s!2326)))))

(declare-fun b!5446348 () Bool)

(assert (=> b!5446348 (= e!3373414 ((as const (Array Context!9322 Bool)) false))))

(declare-fun d!1733696 () Bool)

(declare-fun c!950499 () Bool)

(assert (=> d!1733696 (= c!950499 e!3373413)))

(declare-fun res!2319252 () Bool)

(assert (=> d!1733696 (=> (not res!2319252) (not e!3373413))))

(assert (=> d!1733696 (= res!2319252 ((_ is Cons!62007) (exprs!5161 (ite c!950418 lt!2222175 lt!2222248))))))

(assert (=> d!1733696 (= (derivationStepZipperUp!649 (ite c!950418 lt!2222175 lt!2222248) (h!68454 s!2326)) e!3373415)))

(assert (= (and d!1733696 res!2319252) b!5446349))

(assert (= (and d!1733696 c!950499) b!5446350))

(assert (= (and d!1733696 (not c!950499)) b!5446346))

(assert (= (and b!5446346 c!950498) b!5446347))

(assert (= (and b!5446346 (not c!950498)) b!5446348))

(assert (= (or b!5446350 b!5446347) bm!392983))

(declare-fun m!6465996 () Bool)

(assert (=> b!5446349 m!6465996))

(declare-fun m!6465998 () Bool)

(assert (=> b!5446350 m!6465998))

(declare-fun m!6466000 () Bool)

(assert (=> bm!392983 m!6466000))

(assert (=> bm!392933 d!1733696))

(declare-fun bs!1256413 () Bool)

(declare-fun d!1733706 () Bool)

(assert (= bs!1256413 (and d!1733706 b!5446005)))

(declare-fun lambda!287237 () Int)

(assert (=> bs!1256413 (not (= lambda!287237 lambda!287188))))

(declare-fun bs!1256414 () Bool)

(assert (= bs!1256414 (and d!1733706 b!5445993)))

(assert (=> bs!1256414 (not (= lambda!287237 lambda!287192))))

(declare-fun bs!1256415 () Bool)

(assert (= bs!1256415 (and d!1733706 b!5446006)))

(assert (=> bs!1256415 (= (and (= s!2326 (_1!35779 lt!2222148)) (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184)) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))) lt!2222247)) (= lambda!287237 lambda!287199))))

(assert (=> bs!1256413 (not (= lambda!287237 lambda!287186))))

(assert (=> bs!1256414 (not (= lambda!287237 lambda!287193))))

(declare-fun bs!1256416 () Bool)

(assert (= bs!1256416 (and d!1733706 b!5446028)))

(assert (=> bs!1256416 (= (and (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184)) (regOne!31066 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))) lt!2222146)) (= lambda!287237 lambda!287181))))

(assert (=> bs!1256416 (not (= lambda!287237 lambda!287182))))

(declare-fun bs!1256417 () Bool)

(assert (= bs!1256417 (and d!1733706 b!5445995)))

(assert (=> bs!1256417 (not (= lambda!287237 lambda!287204))))

(assert (=> bs!1256415 (not (= lambda!287237 lambda!287201))))

(declare-fun bs!1256418 () Bool)

(assert (= bs!1256418 (and d!1733706 b!5446036)))

(assert (=> bs!1256418 (not (= lambda!287237 lambda!287179))))

(assert (=> bs!1256413 (= (and (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184)) (regOne!31066 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))) lt!2222299)) (= lambda!287237 lambda!287185))))

(assert (=> bs!1256415 (= (and (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184)) lt!2222184) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))) (regTwo!31066 r!7292))) (= lambda!287237 lambda!287197))))

(assert (=> bs!1256413 (= (and (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184)) (regTwo!31066 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))) lt!2222211)) (= lambda!287237 lambda!287187))))

(assert (=> bs!1256417 (not (= lambda!287237 lambda!287203))))

(assert (=> bs!1256416 (= (and (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184)) (regTwo!31066 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))) lt!2222240)) (= lambda!287237 lambda!287183))))

(assert (=> bs!1256415 (not (= lambda!287237 lambda!287198))))

(assert (=> bs!1256417 (= (and (= s!2326 Nil!62006) (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184)) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))) lt!2222247)) (= lambda!287237 lambda!287202))))

(assert (=> bs!1256416 (not (= lambda!287237 lambda!287184))))

(assert (=> bs!1256418 (= (and (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184)) (regOne!31066 r!7292)) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))) (regTwo!31066 r!7292))) (= lambda!287237 lambda!287178))))

(declare-fun bs!1256419 () Bool)

(assert (= bs!1256419 (and d!1733706 b!5446010)))

(assert (=> bs!1256419 (not (= lambda!287237 lambda!287190))))

(assert (=> bs!1256415 (not (= lambda!287237 lambda!287200))))

(assert (=> bs!1256414 (= (and (= s!2326 (_1!35779 lt!2222282)) (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184)) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))) lt!2222247)) (= lambda!287237 lambda!287191))))

(assert (=> bs!1256419 (= (and (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184)) lt!2222247) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))) (regTwo!31066 r!7292))) (= lambda!287237 lambda!287189))))

(assert (=> d!1733706 true))

(assert (=> d!1733706 true))

(assert (=> d!1733706 true))

(declare-fun lambda!287238 () Int)

(assert (=> bs!1256413 (= (and (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184)) (regTwo!31066 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))) lt!2222211)) (= lambda!287238 lambda!287188))))

(assert (=> bs!1256414 (not (= lambda!287238 lambda!287192))))

(assert (=> bs!1256415 (not (= lambda!287238 lambda!287199))))

(declare-fun bs!1256423 () Bool)

(assert (= bs!1256423 d!1733706))

(assert (=> bs!1256423 (not (= lambda!287238 lambda!287237))))

(assert (=> bs!1256413 (= (and (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184)) (regOne!31066 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))) lt!2222299)) (= lambda!287238 lambda!287186))))

(assert (=> bs!1256414 (= (and (= s!2326 (_1!35779 lt!2222282)) (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184)) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))) lt!2222247)) (= lambda!287238 lambda!287193))))

(assert (=> bs!1256416 (not (= lambda!287238 lambda!287181))))

(assert (=> bs!1256416 (= (and (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184)) (regOne!31066 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))) lt!2222146)) (= lambda!287238 lambda!287182))))

(assert (=> bs!1256417 (not (= lambda!287238 lambda!287204))))

(assert (=> bs!1256415 (not (= lambda!287238 lambda!287201))))

(assert (=> bs!1256418 (= (and (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184)) (regOne!31066 r!7292)) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))) (regTwo!31066 r!7292))) (= lambda!287238 lambda!287179))))

(assert (=> bs!1256413 (not (= lambda!287238 lambda!287185))))

(assert (=> bs!1256415 (not (= lambda!287238 lambda!287197))))

(assert (=> bs!1256413 (not (= lambda!287238 lambda!287187))))

(assert (=> bs!1256417 (= (and (= s!2326 Nil!62006) (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184)) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))) lt!2222247)) (= lambda!287238 lambda!287203))))

(assert (=> bs!1256416 (not (= lambda!287238 lambda!287183))))

(assert (=> bs!1256415 (= (and (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184)) lt!2222184) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))) (regTwo!31066 r!7292))) (= lambda!287238 lambda!287198))))

(assert (=> bs!1256417 (not (= lambda!287238 lambda!287202))))

(assert (=> bs!1256416 (= (and (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184)) (regTwo!31066 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))) lt!2222240)) (= lambda!287238 lambda!287184))))

(assert (=> bs!1256418 (not (= lambda!287238 lambda!287178))))

(assert (=> bs!1256419 (= (and (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184)) lt!2222247) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))) (regTwo!31066 r!7292))) (= lambda!287238 lambda!287190))))

(assert (=> bs!1256415 (= (and (= s!2326 (_1!35779 lt!2222148)) (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184)) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))) lt!2222247)) (= lambda!287238 lambda!287200))))

(assert (=> bs!1256414 (not (= lambda!287238 lambda!287191))))

(assert (=> bs!1256419 (not (= lambda!287238 lambda!287189))))

(assert (=> d!1733706 true))

(assert (=> d!1733706 true))

(assert (=> d!1733706 true))

(assert (=> d!1733706 (= (Exists!2458 lambda!287237) (Exists!2458 lambda!287238))))

(declare-fun lt!2222385 () Unit!154704)

(declare-fun choose!41323 (Regex!15277 Regex!15277 List!62130) Unit!154704)

(assert (=> d!1733706 (= lt!2222385 (choose!41323 (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184)) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))) s!2326))))

(assert (=> d!1733706 (validRegex!7013 (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184)))))

(assert (=> d!1733706 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1112 (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184)) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))) s!2326) lt!2222385)))

(declare-fun m!6466030 () Bool)

(assert (=> bs!1256423 m!6466030))

(declare-fun m!6466032 () Bool)

(assert (=> bs!1256423 m!6466032))

(declare-fun m!6466034 () Bool)

(assert (=> bs!1256423 m!6466034))

(declare-fun m!6466036 () Bool)

(assert (=> bs!1256423 m!6466036))

(assert (=> bm!392883 d!1733706))

(declare-fun d!1733714 () Bool)

(declare-fun c!950517 () Bool)

(assert (=> d!1733714 (= c!950517 (isEmpty!33985 (ite (or c!950418 c!950410) (t!375357 s!2326) (ite c!950414 s!2326 (ite (and c!950411 c!950409) (_1!35779 lt!2222226) (t!375357 s!2326))))))))

(declare-fun e!3373444 () Bool)

(assert (=> d!1733714 (= (matchZipper!1521 (ite c!950418 lt!2222122 (ite c!950410 lt!2222318 (ite c!950414 lt!2222128 (ite (and c!950411 c!950409) lt!2222169 lt!2222210)))) (ite (or c!950418 c!950410) (t!375357 s!2326) (ite c!950414 s!2326 (ite (and c!950411 c!950409) (_1!35779 lt!2222226) (t!375357 s!2326))))) e!3373444)))

(declare-fun b!5446403 () Bool)

(declare-fun nullableZipper!1480 ((InoxSet Context!9322)) Bool)

(assert (=> b!5446403 (= e!3373444 (nullableZipper!1480 (ite c!950418 lt!2222122 (ite c!950410 lt!2222318 (ite c!950414 lt!2222128 (ite (and c!950411 c!950409) lt!2222169 lt!2222210))))))))

(declare-fun b!5446404 () Bool)

(declare-fun head!11677 (List!62130) C!30824)

(declare-fun tail!10774 (List!62130) List!62130)

(assert (=> b!5446404 (= e!3373444 (matchZipper!1521 (derivationStepZipper!1496 (ite c!950418 lt!2222122 (ite c!950410 lt!2222318 (ite c!950414 lt!2222128 (ite (and c!950411 c!950409) lt!2222169 lt!2222210)))) (head!11677 (ite (or c!950418 c!950410) (t!375357 s!2326) (ite c!950414 s!2326 (ite (and c!950411 c!950409) (_1!35779 lt!2222226) (t!375357 s!2326)))))) (tail!10774 (ite (or c!950418 c!950410) (t!375357 s!2326) (ite c!950414 s!2326 (ite (and c!950411 c!950409) (_1!35779 lt!2222226) (t!375357 s!2326)))))))))

(assert (= (and d!1733714 c!950517) b!5446403))

(assert (= (and d!1733714 (not c!950517)) b!5446404))

(declare-fun m!6466038 () Bool)

(assert (=> d!1733714 m!6466038))

(declare-fun m!6466040 () Bool)

(assert (=> b!5446403 m!6466040))

(declare-fun m!6466042 () Bool)

(assert (=> b!5446404 m!6466042))

(assert (=> b!5446404 m!6466042))

(declare-fun m!6466044 () Bool)

(assert (=> b!5446404 m!6466044))

(declare-fun m!6466046 () Bool)

(assert (=> b!5446404 m!6466046))

(assert (=> b!5446404 m!6466044))

(assert (=> b!5446404 m!6466046))

(declare-fun m!6466048 () Bool)

(assert (=> b!5446404 m!6466048))

(assert (=> bm!392820 d!1733714))

(declare-fun b!5446444 () Bool)

(declare-fun res!2319290 () Bool)

(declare-fun e!3373468 () Bool)

(assert (=> b!5446444 (=> res!2319290 e!3373468)))

(assert (=> b!5446444 (= res!2319290 (not ((_ is ElementMatch!15277) (ite c!950414 lt!2222299 (ite c!950411 lt!2222221 (ite c!950417 (regOne!31066 r!7292) (regTwo!31066 r!7292)))))))))

(declare-fun e!3373469 () Bool)

(assert (=> b!5446444 (= e!3373469 e!3373468)))

(declare-fun b!5446445 () Bool)

(declare-fun res!2319293 () Bool)

(declare-fun e!3373471 () Bool)

(assert (=> b!5446445 (=> (not res!2319293) (not e!3373471))))

(declare-fun call!393011 () Bool)

(assert (=> b!5446445 (= res!2319293 (not call!393011))))

(declare-fun b!5446446 () Bool)

(declare-fun e!3373472 () Bool)

(declare-fun e!3373466 () Bool)

(assert (=> b!5446446 (= e!3373472 e!3373466)))

(declare-fun res!2319292 () Bool)

(assert (=> b!5446446 (=> res!2319292 e!3373466)))

(assert (=> b!5446446 (= res!2319292 call!393011)))

(declare-fun b!5446447 () Bool)

(declare-fun res!2319297 () Bool)

(assert (=> b!5446447 (=> (not res!2319297) (not e!3373471))))

(assert (=> b!5446447 (= res!2319297 (isEmpty!33985 (tail!10774 s!2326)))))

(declare-fun b!5446448 () Bool)

(declare-fun e!3373467 () Bool)

(assert (=> b!5446448 (= e!3373467 e!3373469)))

(declare-fun c!950530 () Bool)

(assert (=> b!5446448 (= c!950530 ((_ is EmptyLang!15277) (ite c!950414 lt!2222299 (ite c!950411 lt!2222221 (ite c!950417 (regOne!31066 r!7292) (regTwo!31066 r!7292))))))))

(declare-fun b!5446449 () Bool)

(assert (=> b!5446449 (= e!3373466 (not (= (head!11677 s!2326) (c!950421 (ite c!950414 lt!2222299 (ite c!950411 lt!2222221 (ite c!950417 (regOne!31066 r!7292) (regTwo!31066 r!7292))))))))))

(declare-fun b!5446450 () Bool)

(declare-fun e!3373470 () Bool)

(declare-fun derivativeStep!4301 (Regex!15277 C!30824) Regex!15277)

(assert (=> b!5446450 (= e!3373470 (matchR!7462 (derivativeStep!4301 (ite c!950414 lt!2222299 (ite c!950411 lt!2222221 (ite c!950417 (regOne!31066 r!7292) (regTwo!31066 r!7292)))) (head!11677 s!2326)) (tail!10774 s!2326)))))

(declare-fun b!5446451 () Bool)

(declare-fun res!2319291 () Bool)

(assert (=> b!5446451 (=> res!2319291 e!3373466)))

(assert (=> b!5446451 (= res!2319291 (not (isEmpty!33985 (tail!10774 s!2326))))))

(declare-fun b!5446453 () Bool)

(declare-fun lt!2222393 () Bool)

(assert (=> b!5446453 (= e!3373469 (not lt!2222393))))

(declare-fun bm!393006 () Bool)

(assert (=> bm!393006 (= call!393011 (isEmpty!33985 s!2326))))

(declare-fun b!5446454 () Bool)

(assert (=> b!5446454 (= e!3373471 (= (head!11677 s!2326) (c!950421 (ite c!950414 lt!2222299 (ite c!950411 lt!2222221 (ite c!950417 (regOne!31066 r!7292) (regTwo!31066 r!7292)))))))))

(declare-fun b!5446455 () Bool)

(assert (=> b!5446455 (= e!3373468 e!3373472)))

(declare-fun res!2319296 () Bool)

(assert (=> b!5446455 (=> (not res!2319296) (not e!3373472))))

(assert (=> b!5446455 (= res!2319296 (not lt!2222393))))

(declare-fun b!5446456 () Bool)

(declare-fun res!2319294 () Bool)

(assert (=> b!5446456 (=> res!2319294 e!3373468)))

(assert (=> b!5446456 (= res!2319294 e!3373471)))

(declare-fun res!2319295 () Bool)

(assert (=> b!5446456 (=> (not res!2319295) (not e!3373471))))

(assert (=> b!5446456 (= res!2319295 lt!2222393)))

(declare-fun b!5446457 () Bool)

(assert (=> b!5446457 (= e!3373470 (nullable!5446 (ite c!950414 lt!2222299 (ite c!950411 lt!2222221 (ite c!950417 (regOne!31066 r!7292) (regTwo!31066 r!7292))))))))

(declare-fun b!5446452 () Bool)

(assert (=> b!5446452 (= e!3373467 (= lt!2222393 call!393011))))

(declare-fun d!1733716 () Bool)

(assert (=> d!1733716 e!3373467))

(declare-fun c!950529 () Bool)

(assert (=> d!1733716 (= c!950529 ((_ is EmptyExpr!15277) (ite c!950414 lt!2222299 (ite c!950411 lt!2222221 (ite c!950417 (regOne!31066 r!7292) (regTwo!31066 r!7292))))))))

(assert (=> d!1733716 (= lt!2222393 e!3373470)))

(declare-fun c!950528 () Bool)

(assert (=> d!1733716 (= c!950528 (isEmpty!33985 s!2326))))

(assert (=> d!1733716 (validRegex!7013 (ite c!950414 lt!2222299 (ite c!950411 lt!2222221 (ite c!950417 (regOne!31066 r!7292) (regTwo!31066 r!7292)))))))

(assert (=> d!1733716 (= (matchR!7462 (ite c!950414 lt!2222299 (ite c!950411 lt!2222221 (ite c!950417 (regOne!31066 r!7292) (regTwo!31066 r!7292)))) s!2326) lt!2222393)))

(assert (= (and d!1733716 c!950528) b!5446457))

(assert (= (and d!1733716 (not c!950528)) b!5446450))

(assert (= (and d!1733716 c!950529) b!5446452))

(assert (= (and d!1733716 (not c!950529)) b!5446448))

(assert (= (and b!5446448 c!950530) b!5446453))

(assert (= (and b!5446448 (not c!950530)) b!5446444))

(assert (= (and b!5446444 (not res!2319290)) b!5446456))

(assert (= (and b!5446456 res!2319295) b!5446445))

(assert (= (and b!5446445 res!2319293) b!5446447))

(assert (= (and b!5446447 res!2319297) b!5446454))

(assert (= (and b!5446456 (not res!2319294)) b!5446455))

(assert (= (and b!5446455 res!2319296) b!5446446))

(assert (= (and b!5446446 (not res!2319292)) b!5446451))

(assert (= (and b!5446451 (not res!2319291)) b!5446449))

(assert (= (or b!5446452 b!5446445 b!5446446) bm!393006))

(declare-fun m!6466062 () Bool)

(assert (=> d!1733716 m!6466062))

(declare-fun m!6466064 () Bool)

(assert (=> d!1733716 m!6466064))

(declare-fun m!6466066 () Bool)

(assert (=> b!5446449 m!6466066))

(assert (=> b!5446450 m!6466066))

(assert (=> b!5446450 m!6466066))

(declare-fun m!6466068 () Bool)

(assert (=> b!5446450 m!6466068))

(declare-fun m!6466070 () Bool)

(assert (=> b!5446450 m!6466070))

(assert (=> b!5446450 m!6466068))

(assert (=> b!5446450 m!6466070))

(declare-fun m!6466072 () Bool)

(assert (=> b!5446450 m!6466072))

(declare-fun m!6466074 () Bool)

(assert (=> b!5446457 m!6466074))

(assert (=> b!5446451 m!6466070))

(assert (=> b!5446451 m!6466070))

(declare-fun m!6466076 () Bool)

(assert (=> b!5446451 m!6466076))

(assert (=> b!5446454 m!6466066))

(assert (=> b!5446447 m!6466070))

(assert (=> b!5446447 m!6466070))

(assert (=> b!5446447 m!6466076))

(assert (=> bm!393006 m!6466062))

(assert (=> bm!392822 d!1733716))

(declare-fun d!1733724 () Bool)

(declare-fun choose!41324 (Int) Bool)

(assert (=> d!1733724 (= (Exists!2458 (ite c!950410 lambda!287182 (ite c!950414 lambda!287185 (ite c!950409 lambda!287192 (ite c!950415 lambda!287198 lambda!287203))))) (choose!41324 (ite c!950410 lambda!287182 (ite c!950414 lambda!287185 (ite c!950409 lambda!287192 (ite c!950415 lambda!287198 lambda!287203))))))))

(declare-fun bs!1256469 () Bool)

(assert (= bs!1256469 d!1733724))

(declare-fun m!6466084 () Bool)

(assert (=> bs!1256469 m!6466084))

(assert (=> bm!392902 d!1733724))

(declare-fun bs!1256479 () Bool)

(declare-fun d!1733728 () Bool)

(assert (= bs!1256479 (and d!1733728 b!5446005)))

(declare-fun lambda!287250 () Int)

(assert (=> bs!1256479 (not (= lambda!287250 lambda!287188))))

(declare-fun bs!1256480 () Bool)

(assert (= bs!1256480 (and d!1733728 b!5445993)))

(assert (=> bs!1256480 (not (= lambda!287250 lambda!287192))))

(declare-fun bs!1256481 () Bool)

(assert (= bs!1256481 (and d!1733728 b!5446006)))

(assert (=> bs!1256481 (= (and (= (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006)) (_1!35779 lt!2222148)) (= (Star!15277 (reg!15606 (regOne!31066 r!7292))) lt!2222247)) (= lambda!287250 lambda!287199))))

(declare-fun bs!1256482 () Bool)

(assert (= bs!1256482 (and d!1733728 d!1733706)))

(assert (=> bs!1256482 (= (and (= (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006)) s!2326) (= (reg!15606 (regOne!31066 r!7292)) (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184))) (= (Star!15277 (reg!15606 (regOne!31066 r!7292))) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))))) (= lambda!287250 lambda!287237))))

(assert (=> bs!1256479 (not (= lambda!287250 lambda!287186))))

(assert (=> bs!1256482 (not (= lambda!287250 lambda!287238))))

(assert (=> bs!1256480 (not (= lambda!287250 lambda!287193))))

(declare-fun bs!1256483 () Bool)

(assert (= bs!1256483 (and d!1733728 b!5446028)))

(assert (=> bs!1256483 (= (and (= (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006)) s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292))) (= (Star!15277 (reg!15606 (regOne!31066 r!7292))) lt!2222146)) (= lambda!287250 lambda!287181))))

(assert (=> bs!1256483 (not (= lambda!287250 lambda!287182))))

(declare-fun bs!1256484 () Bool)

(assert (= bs!1256484 (and d!1733728 b!5445995)))

(assert (=> bs!1256484 (not (= lambda!287250 lambda!287204))))

(assert (=> bs!1256481 (not (= lambda!287250 lambda!287201))))

(declare-fun bs!1256485 () Bool)

(assert (= bs!1256485 (and d!1733728 b!5446036)))

(assert (=> bs!1256485 (not (= lambda!287250 lambda!287179))))

(assert (=> bs!1256479 (= (and (= (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006)) s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292))) (= (Star!15277 (reg!15606 (regOne!31066 r!7292))) lt!2222299)) (= lambda!287250 lambda!287185))))

(assert (=> bs!1256481 (= (and (= (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006)) s!2326) (= (reg!15606 (regOne!31066 r!7292)) lt!2222184) (= (Star!15277 (reg!15606 (regOne!31066 r!7292))) (regTwo!31066 r!7292))) (= lambda!287250 lambda!287197))))

(assert (=> bs!1256479 (= (and (= (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006)) s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regTwo!31066 (regOne!31066 r!7292))) (= (Star!15277 (reg!15606 (regOne!31066 r!7292))) lt!2222211)) (= lambda!287250 lambda!287187))))

(assert (=> bs!1256484 (not (= lambda!287250 lambda!287203))))

(assert (=> bs!1256483 (= (and (= (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006)) s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regTwo!31066 (regOne!31066 r!7292))) (= (Star!15277 (reg!15606 (regOne!31066 r!7292))) lt!2222240)) (= lambda!287250 lambda!287183))))

(assert (=> bs!1256481 (not (= lambda!287250 lambda!287198))))

(assert (=> bs!1256484 (= (and (= (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006)) Nil!62006) (= (Star!15277 (reg!15606 (regOne!31066 r!7292))) lt!2222247)) (= lambda!287250 lambda!287202))))

(assert (=> bs!1256483 (not (= lambda!287250 lambda!287184))))

(assert (=> bs!1256485 (= (and (= (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006)) s!2326) (= (reg!15606 (regOne!31066 r!7292)) (regOne!31066 r!7292)) (= (Star!15277 (reg!15606 (regOne!31066 r!7292))) (regTwo!31066 r!7292))) (= lambda!287250 lambda!287178))))

(declare-fun bs!1256486 () Bool)

(assert (= bs!1256486 (and d!1733728 b!5446010)))

(assert (=> bs!1256486 (not (= lambda!287250 lambda!287190))))

(assert (=> bs!1256481 (not (= lambda!287250 lambda!287200))))

(assert (=> bs!1256480 (= (and (= (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006)) (_1!35779 lt!2222282)) (= (Star!15277 (reg!15606 (regOne!31066 r!7292))) lt!2222247)) (= lambda!287250 lambda!287191))))

(assert (=> bs!1256486 (= (and (= (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006)) s!2326) (= (reg!15606 (regOne!31066 r!7292)) lt!2222247) (= (Star!15277 (reg!15606 (regOne!31066 r!7292))) (regTwo!31066 r!7292))) (= lambda!287250 lambda!287189))))

(assert (=> d!1733728 true))

(assert (=> d!1733728 true))

(declare-fun lambda!287251 () Int)

(assert (=> bs!1256479 (not (= lambda!287251 lambda!287188))))

(assert (=> bs!1256480 (= (and (= (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006)) (_1!35779 lt!2222282)) (= (Star!15277 (reg!15606 (regOne!31066 r!7292))) lt!2222247)) (= lambda!287251 lambda!287192))))

(assert (=> bs!1256481 (not (= lambda!287251 lambda!287199))))

(assert (=> bs!1256482 (not (= lambda!287251 lambda!287237))))

(assert (=> bs!1256479 (not (= lambda!287251 lambda!287186))))

(assert (=> bs!1256482 (not (= lambda!287251 lambda!287238))))

(assert (=> bs!1256483 (not (= lambda!287251 lambda!287181))))

(assert (=> bs!1256483 (not (= lambda!287251 lambda!287182))))

(assert (=> bs!1256484 (= (and (= (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006)) Nil!62006) (= (Star!15277 (reg!15606 (regOne!31066 r!7292))) lt!2222247)) (= lambda!287251 lambda!287204))))

(assert (=> bs!1256481 (= (and (= (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006)) (_1!35779 lt!2222148)) (= (Star!15277 (reg!15606 (regOne!31066 r!7292))) lt!2222247)) (= lambda!287251 lambda!287201))))

(assert (=> bs!1256485 (not (= lambda!287251 lambda!287179))))

(assert (=> bs!1256479 (not (= lambda!287251 lambda!287185))))

(assert (=> bs!1256481 (not (= lambda!287251 lambda!287197))))

(assert (=> bs!1256479 (not (= lambda!287251 lambda!287187))))

(assert (=> bs!1256484 (not (= lambda!287251 lambda!287203))))

(assert (=> bs!1256483 (not (= lambda!287251 lambda!287183))))

(assert (=> bs!1256481 (not (= lambda!287251 lambda!287198))))

(assert (=> bs!1256484 (not (= lambda!287251 lambda!287202))))

(assert (=> bs!1256483 (not (= lambda!287251 lambda!287184))))

(assert (=> bs!1256485 (not (= lambda!287251 lambda!287178))))

(declare-fun bs!1256487 () Bool)

(assert (= bs!1256487 d!1733728))

(assert (=> bs!1256487 (not (= lambda!287251 lambda!287250))))

(assert (=> bs!1256480 (not (= lambda!287251 lambda!287193))))

(assert (=> bs!1256486 (not (= lambda!287251 lambda!287190))))

(assert (=> bs!1256481 (not (= lambda!287251 lambda!287200))))

(assert (=> bs!1256480 (not (= lambda!287251 lambda!287191))))

(assert (=> bs!1256486 (not (= lambda!287251 lambda!287189))))

(assert (=> d!1733728 true))

(assert (=> d!1733728 true))

(assert (=> d!1733728 (= (Exists!2458 lambda!287250) (Exists!2458 lambda!287251))))

(declare-fun lt!2222400 () Unit!154704)

(declare-fun choose!41325 (Regex!15277 List!62130) Unit!154704)

(assert (=> d!1733728 (= lt!2222400 (choose!41325 (reg!15606 (regOne!31066 r!7292)) (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))))))

(assert (=> d!1733728 (validRegex!7013 (reg!15606 (regOne!31066 r!7292)))))

(assert (=> d!1733728 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!434 (reg!15606 (regOne!31066 r!7292)) (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) lt!2222400)))

(declare-fun m!6466100 () Bool)

(assert (=> bs!1256487 m!6466100))

(declare-fun m!6466102 () Bool)

(assert (=> bs!1256487 m!6466102))

(declare-fun m!6466104 () Bool)

(assert (=> bs!1256487 m!6466104))

(declare-fun m!6466106 () Bool)

(assert (=> bs!1256487 m!6466106))

(assert (=> bm!392949 d!1733728))

(declare-fun b!5446504 () Bool)

(declare-fun e!3373496 () List!62130)

(assert (=> b!5446504 (= e!3373496 (Cons!62006 (h!68454 (ite c!950409 (_2!35779 lt!2222226) (_2!35779 lt!2222200))) (++!13633 (t!375357 (ite c!950409 (_2!35779 lt!2222226) (_2!35779 lt!2222200))) (ite c!950409 (_2!35779 lt!2222282) (_2!35779 lt!2222148)))))))

(declare-fun b!5446503 () Bool)

(assert (=> b!5446503 (= e!3373496 (ite c!950409 (_2!35779 lt!2222282) (_2!35779 lt!2222148)))))

(declare-fun b!5446506 () Bool)

(declare-fun e!3373497 () Bool)

(declare-fun lt!2222412 () List!62130)

(assert (=> b!5446506 (= e!3373497 (or (not (= (ite c!950409 (_2!35779 lt!2222282) (_2!35779 lt!2222148)) Nil!62006)) (= lt!2222412 (ite c!950409 (_2!35779 lt!2222226) (_2!35779 lt!2222200)))))))

(declare-fun d!1733738 () Bool)

(assert (=> d!1733738 e!3373497))

(declare-fun res!2319328 () Bool)

(assert (=> d!1733738 (=> (not res!2319328) (not e!3373497))))

(declare-fun content!11149 (List!62130) (InoxSet C!30824))

(assert (=> d!1733738 (= res!2319328 (= (content!11149 lt!2222412) ((_ map or) (content!11149 (ite c!950409 (_2!35779 lt!2222226) (_2!35779 lt!2222200))) (content!11149 (ite c!950409 (_2!35779 lt!2222282) (_2!35779 lt!2222148))))))))

(assert (=> d!1733738 (= lt!2222412 e!3373496)))

(declare-fun c!950539 () Bool)

(assert (=> d!1733738 (= c!950539 ((_ is Nil!62006) (ite c!950409 (_2!35779 lt!2222226) (_2!35779 lt!2222200))))))

(assert (=> d!1733738 (= (++!13633 (ite c!950409 (_2!35779 lt!2222226) (_2!35779 lt!2222200)) (ite c!950409 (_2!35779 lt!2222282) (_2!35779 lt!2222148))) lt!2222412)))

(declare-fun b!5446505 () Bool)

(declare-fun res!2319327 () Bool)

(assert (=> b!5446505 (=> (not res!2319327) (not e!3373497))))

(declare-fun size!39890 (List!62130) Int)

(assert (=> b!5446505 (= res!2319327 (= (size!39890 lt!2222412) (+ (size!39890 (ite c!950409 (_2!35779 lt!2222226) (_2!35779 lt!2222200))) (size!39890 (ite c!950409 (_2!35779 lt!2222282) (_2!35779 lt!2222148))))))))

(assert (= (and d!1733738 c!950539) b!5446503))

(assert (= (and d!1733738 (not c!950539)) b!5446504))

(assert (= (and d!1733738 res!2319328) b!5446505))

(assert (= (and b!5446505 res!2319327) b!5446506))

(declare-fun m!6466124 () Bool)

(assert (=> b!5446504 m!6466124))

(declare-fun m!6466128 () Bool)

(assert (=> d!1733738 m!6466128))

(declare-fun m!6466130 () Bool)

(assert (=> d!1733738 m!6466130))

(declare-fun m!6466132 () Bool)

(assert (=> d!1733738 m!6466132))

(declare-fun m!6466134 () Bool)

(assert (=> b!5446505 m!6466134))

(declare-fun m!6466136 () Bool)

(assert (=> b!5446505 m!6466136))

(declare-fun m!6466138 () Bool)

(assert (=> b!5446505 m!6466138))

(assert (=> bm!392839 d!1733738))

(declare-fun d!1733742 () Bool)

(assert (=> d!1733742 (= (get!21380 (ite c!950409 lt!2222138 lt!2222153)) (v!51416 (ite c!950409 lt!2222138 lt!2222153)))))

(assert (=> bm!392856 d!1733742))

(declare-fun d!1733746 () Bool)

(assert (=> d!1733746 (= (get!21380 (ite c!950409 lt!2222154 lt!2222278)) (v!51416 (ite c!950409 lt!2222154 lt!2222278)))))

(assert (=> bm!392936 d!1733746))

(declare-fun bs!1256492 () Bool)

(declare-fun b!5446575 () Bool)

(assert (= bs!1256492 (and b!5446575 b!5446005)))

(declare-fun lambda!287256 () Int)

(assert (=> bs!1256492 (not (= lambda!287256 lambda!287188))))

(declare-fun bs!1256493 () Bool)

(assert (= bs!1256493 (and b!5446575 b!5445993)))

(assert (=> bs!1256493 (= (and (= s!2326 (_1!35779 lt!2222282)) (= (reg!15606 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221))) lt!2222247)) (= lambda!287256 lambda!287192))))

(declare-fun bs!1256494 () Bool)

(assert (= bs!1256494 (and b!5446575 b!5446006)))

(assert (=> bs!1256494 (not (= lambda!287256 lambda!287199))))

(declare-fun bs!1256495 () Bool)

(assert (= bs!1256495 (and b!5446575 d!1733706)))

(assert (=> bs!1256495 (not (= lambda!287256 lambda!287237))))

(assert (=> bs!1256492 (not (= lambda!287256 lambda!287186))))

(declare-fun bs!1256496 () Bool)

(assert (= bs!1256496 (and b!5446575 d!1733728)))

(assert (=> bs!1256496 (= (and (= s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) (= (reg!15606 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221))) (Star!15277 (reg!15606 (regOne!31066 r!7292))))) (= lambda!287256 lambda!287251))))

(assert (=> bs!1256495 (not (= lambda!287256 lambda!287238))))

(declare-fun bs!1256497 () Bool)

(assert (= bs!1256497 (and b!5446575 b!5446028)))

(assert (=> bs!1256497 (not (= lambda!287256 lambda!287181))))

(assert (=> bs!1256497 (not (= lambda!287256 lambda!287182))))

(declare-fun bs!1256498 () Bool)

(assert (= bs!1256498 (and b!5446575 b!5445995)))

(assert (=> bs!1256498 (= (and (= s!2326 Nil!62006) (= (reg!15606 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221))) lt!2222247)) (= lambda!287256 lambda!287204))))

(assert (=> bs!1256494 (= (and (= s!2326 (_1!35779 lt!2222148)) (= (reg!15606 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221))) lt!2222247)) (= lambda!287256 lambda!287201))))

(declare-fun bs!1256499 () Bool)

(assert (= bs!1256499 (and b!5446575 b!5446036)))

(assert (=> bs!1256499 (not (= lambda!287256 lambda!287179))))

(assert (=> bs!1256492 (not (= lambda!287256 lambda!287185))))

(assert (=> bs!1256494 (not (= lambda!287256 lambda!287197))))

(assert (=> bs!1256492 (not (= lambda!287256 lambda!287187))))

(assert (=> bs!1256498 (not (= lambda!287256 lambda!287203))))

(assert (=> bs!1256497 (not (= lambda!287256 lambda!287183))))

(assert (=> bs!1256494 (not (= lambda!287256 lambda!287198))))

(assert (=> bs!1256498 (not (= lambda!287256 lambda!287202))))

(assert (=> bs!1256497 (not (= lambda!287256 lambda!287184))))

(assert (=> bs!1256499 (not (= lambda!287256 lambda!287178))))

(assert (=> bs!1256496 (not (= lambda!287256 lambda!287250))))

(assert (=> bs!1256493 (not (= lambda!287256 lambda!287193))))

(declare-fun bs!1256500 () Bool)

(assert (= bs!1256500 (and b!5446575 b!5446010)))

(assert (=> bs!1256500 (not (= lambda!287256 lambda!287190))))

(assert (=> bs!1256494 (not (= lambda!287256 lambda!287200))))

(assert (=> bs!1256493 (not (= lambda!287256 lambda!287191))))

(assert (=> bs!1256500 (not (= lambda!287256 lambda!287189))))

(assert (=> b!5446575 true))

(assert (=> b!5446575 true))

(declare-fun bs!1256501 () Bool)

(declare-fun b!5446578 () Bool)

(assert (= bs!1256501 (and b!5446578 b!5446005)))

(declare-fun lambda!287257 () Int)

(assert (=> bs!1256501 (= (and (= (regOne!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))) (regTwo!31066 (regOne!31066 r!7292))) (= (regTwo!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))) lt!2222211)) (= lambda!287257 lambda!287188))))

(declare-fun bs!1256502 () Bool)

(assert (= bs!1256502 (and b!5446578 b!5445993)))

(assert (=> bs!1256502 (not (= lambda!287257 lambda!287192))))

(declare-fun bs!1256503 () Bool)

(assert (= bs!1256503 (and b!5446578 b!5446006)))

(assert (=> bs!1256503 (not (= lambda!287257 lambda!287199))))

(assert (=> bs!1256501 (= (and (= (regOne!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))) (regOne!31066 (regOne!31066 r!7292))) (= (regTwo!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))) lt!2222299)) (= lambda!287257 lambda!287186))))

(declare-fun bs!1256504 () Bool)

(assert (= bs!1256504 (and b!5446578 d!1733728)))

(assert (=> bs!1256504 (not (= lambda!287257 lambda!287251))))

(declare-fun bs!1256506 () Bool)

(assert (= bs!1256506 (and b!5446578 d!1733706)))

(assert (=> bs!1256506 (= (and (= (regOne!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))) (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184))) (= (regTwo!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))))) (= lambda!287257 lambda!287238))))

(declare-fun bs!1256508 () Bool)

(assert (= bs!1256508 (and b!5446578 b!5446028)))

(assert (=> bs!1256508 (not (= lambda!287257 lambda!287181))))

(assert (=> bs!1256508 (= (and (= (regOne!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))) (regOne!31066 (regOne!31066 r!7292))) (= (regTwo!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))) lt!2222146)) (= lambda!287257 lambda!287182))))

(declare-fun bs!1256509 () Bool)

(assert (= bs!1256509 (and b!5446578 b!5445995)))

(assert (=> bs!1256509 (not (= lambda!287257 lambda!287204))))

(assert (=> bs!1256503 (not (= lambda!287257 lambda!287201))))

(declare-fun bs!1256510 () Bool)

(assert (= bs!1256510 (and b!5446578 b!5446036)))

(assert (=> bs!1256510 (= (and (= (regOne!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))) (regOne!31066 r!7292)) (= (regTwo!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))) (regTwo!31066 r!7292))) (= lambda!287257 lambda!287179))))

(assert (=> bs!1256501 (not (= lambda!287257 lambda!287185))))

(assert (=> bs!1256503 (not (= lambda!287257 lambda!287197))))

(assert (=> bs!1256501 (not (= lambda!287257 lambda!287187))))

(assert (=> bs!1256509 (= (and (= s!2326 Nil!62006) (= (regOne!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))) (reg!15606 (regOne!31066 r!7292))) (= (regTwo!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))) lt!2222247)) (= lambda!287257 lambda!287203))))

(assert (=> bs!1256508 (not (= lambda!287257 lambda!287183))))

(assert (=> bs!1256503 (= (and (= (regOne!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))) lt!2222184) (= (regTwo!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))) (regTwo!31066 r!7292))) (= lambda!287257 lambda!287198))))

(assert (=> bs!1256509 (not (= lambda!287257 lambda!287202))))

(assert (=> bs!1256506 (not (= lambda!287257 lambda!287237))))

(declare-fun bs!1256511 () Bool)

(assert (= bs!1256511 (and b!5446578 b!5446575)))

(assert (=> bs!1256511 (not (= lambda!287257 lambda!287256))))

(assert (=> bs!1256508 (= (and (= (regOne!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))) (regTwo!31066 (regOne!31066 r!7292))) (= (regTwo!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))) lt!2222240)) (= lambda!287257 lambda!287184))))

(assert (=> bs!1256510 (not (= lambda!287257 lambda!287178))))

(assert (=> bs!1256504 (not (= lambda!287257 lambda!287250))))

(assert (=> bs!1256502 (= (and (= s!2326 (_1!35779 lt!2222282)) (= (regOne!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))) (reg!15606 (regOne!31066 r!7292))) (= (regTwo!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))) lt!2222247)) (= lambda!287257 lambda!287193))))

(declare-fun bs!1256518 () Bool)

(assert (= bs!1256518 (and b!5446578 b!5446010)))

(assert (=> bs!1256518 (= (and (= (regOne!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))) lt!2222247) (= (regTwo!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))) (regTwo!31066 r!7292))) (= lambda!287257 lambda!287190))))

(assert (=> bs!1256503 (= (and (= s!2326 (_1!35779 lt!2222148)) (= (regOne!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))) (reg!15606 (regOne!31066 r!7292))) (= (regTwo!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))) lt!2222247)) (= lambda!287257 lambda!287200))))

(assert (=> bs!1256502 (not (= lambda!287257 lambda!287191))))

(assert (=> bs!1256518 (not (= lambda!287257 lambda!287189))))

(assert (=> b!5446578 true))

(assert (=> b!5446578 true))

(declare-fun call!393023 () Bool)

(declare-fun bm!393018 () Bool)

(declare-fun c!950561 () Bool)

(assert (=> bm!393018 (= call!393023 (Exists!2458 (ite c!950561 lambda!287256 lambda!287257)))))

(declare-fun d!1733748 () Bool)

(declare-fun c!950560 () Bool)

(assert (=> d!1733748 (= c!950560 ((_ is EmptyExpr!15277) (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))))))

(declare-fun e!3373533 () Bool)

(assert (=> d!1733748 (= (matchRSpec!2380 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221))) s!2326) e!3373533)))

(declare-fun e!3373539 () Bool)

(declare-fun b!5446571 () Bool)

(assert (=> b!5446571 (= e!3373539 (= s!2326 (Cons!62006 (c!950421 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))) Nil!62006)))))

(declare-fun b!5446572 () Bool)

(declare-fun call!393024 () Bool)

(assert (=> b!5446572 (= e!3373533 call!393024)))

(declare-fun b!5446573 () Bool)

(declare-fun c!950558 () Bool)

(assert (=> b!5446573 (= c!950558 ((_ is Union!15277) (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))))))

(declare-fun e!3373538 () Bool)

(assert (=> b!5446573 (= e!3373539 e!3373538)))

(declare-fun b!5446574 () Bool)

(declare-fun e!3373537 () Bool)

(assert (=> b!5446574 (= e!3373533 e!3373537)))

(declare-fun res!2319358 () Bool)

(assert (=> b!5446574 (= res!2319358 (not ((_ is EmptyLang!15277) (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221))))))))

(assert (=> b!5446574 (=> (not res!2319358) (not e!3373537))))

(declare-fun e!3373536 () Bool)

(assert (=> b!5446575 (= e!3373536 call!393023)))

(declare-fun e!3373535 () Bool)

(declare-fun b!5446576 () Bool)

(assert (=> b!5446576 (= e!3373535 (matchRSpec!2380 (regTwo!31067 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))) s!2326))))

(declare-fun b!5446577 () Bool)

(declare-fun res!2319357 () Bool)

(assert (=> b!5446577 (=> res!2319357 e!3373536)))

(assert (=> b!5446577 (= res!2319357 call!393024)))

(declare-fun e!3373534 () Bool)

(assert (=> b!5446577 (= e!3373534 e!3373536)))

(assert (=> b!5446578 (= e!3373534 call!393023)))

(declare-fun b!5446579 () Bool)

(declare-fun c!950559 () Bool)

(assert (=> b!5446579 (= c!950559 ((_ is ElementMatch!15277) (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))))))

(assert (=> b!5446579 (= e!3373537 e!3373539)))

(declare-fun b!5446580 () Bool)

(assert (=> b!5446580 (= e!3373538 e!3373535)))

(declare-fun res!2319359 () Bool)

(assert (=> b!5446580 (= res!2319359 (matchRSpec!2380 (regOne!31067 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))) s!2326))))

(assert (=> b!5446580 (=> res!2319359 e!3373535)))

(declare-fun bm!393019 () Bool)

(assert (=> bm!393019 (= call!393024 (isEmpty!33985 s!2326))))

(declare-fun b!5446581 () Bool)

(assert (=> b!5446581 (= e!3373538 e!3373534)))

(assert (=> b!5446581 (= c!950561 ((_ is Star!15277) (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))))))

(assert (= (and d!1733748 c!950560) b!5446572))

(assert (= (and d!1733748 (not c!950560)) b!5446574))

(assert (= (and b!5446574 res!2319358) b!5446579))

(assert (= (and b!5446579 c!950559) b!5446571))

(assert (= (and b!5446579 (not c!950559)) b!5446573))

(assert (= (and b!5446573 c!950558) b!5446580))

(assert (= (and b!5446573 (not c!950558)) b!5446581))

(assert (= (and b!5446580 (not res!2319359)) b!5446576))

(assert (= (and b!5446581 c!950561) b!5446577))

(assert (= (and b!5446581 (not c!950561)) b!5446578))

(assert (= (and b!5446577 (not res!2319357)) b!5446575))

(assert (= (or b!5446575 b!5446578) bm!393018))

(assert (= (or b!5446572 b!5446577) bm!393019))

(declare-fun m!6466306 () Bool)

(assert (=> bm!393018 m!6466306))

(declare-fun m!6466308 () Bool)

(assert (=> b!5446576 m!6466308))

(declare-fun m!6466310 () Bool)

(assert (=> b!5446580 m!6466310))

(assert (=> bm!393019 m!6466062))

(assert (=> bm!392787 d!1733748))

(declare-fun d!1733790 () Bool)

(assert (=> d!1733790 (forall!14580 (++!13634 lt!2222317 lt!2222227) (ite c!950409 lambda!287194 lambda!287196))))

(declare-fun lt!2222430 () Unit!154704)

(declare-fun choose!41326 (List!62131 List!62131 Int) Unit!154704)

(assert (=> d!1733790 (= lt!2222430 (choose!41326 lt!2222317 lt!2222227 (ite c!950409 lambda!287194 lambda!287196)))))

(assert (=> d!1733790 (forall!14580 lt!2222317 (ite c!950409 lambda!287194 lambda!287196))))

(assert (=> d!1733790 (= (lemmaConcatPreservesForall!244 lt!2222317 lt!2222227 (ite c!950409 lambda!287194 lambda!287196)) lt!2222430)))

(declare-fun bs!1256519 () Bool)

(assert (= bs!1256519 d!1733790))

(assert (=> bs!1256519 m!6465442))

(assert (=> bs!1256519 m!6465442))

(declare-fun m!6466312 () Bool)

(assert (=> bs!1256519 m!6466312))

(declare-fun m!6466314 () Bool)

(assert (=> bs!1256519 m!6466314))

(declare-fun m!6466316 () Bool)

(assert (=> bs!1256519 m!6466316))

(assert (=> bm!392928 d!1733790))

(declare-fun d!1733792 () Bool)

(assert (=> d!1733792 (= (Exists!2458 (ite c!950410 lambda!287183 (ite c!950414 lambda!287187 (ite c!950409 lambda!287191 lambda!287197)))) (choose!41324 (ite c!950410 lambda!287183 (ite c!950414 lambda!287187 (ite c!950409 lambda!287191 lambda!287197)))))))

(declare-fun bs!1256520 () Bool)

(assert (= bs!1256520 d!1733792))

(declare-fun m!6466318 () Bool)

(assert (=> bs!1256520 m!6466318))

(assert (=> bm!392850 d!1733792))

(declare-fun b!5446679 () Bool)

(declare-fun lt!2222445 () Unit!154704)

(declare-fun lt!2222444 () Unit!154704)

(assert (=> b!5446679 (= lt!2222445 lt!2222444)))

(assert (=> b!5446679 (= (++!13633 (++!13633 Nil!62006 (Cons!62006 (h!68454 (ite (or c!950410 c!950414 c!950409) s!2326 (_1!35779 lt!2222148))) Nil!62006)) (t!375357 (ite (or c!950410 c!950414 c!950409) s!2326 (_1!35779 lt!2222148)))) (ite (or c!950410 c!950414 c!950409) s!2326 (_1!35779 lt!2222148)))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1875 (List!62130 C!30824 List!62130 List!62130) Unit!154704)

(assert (=> b!5446679 (= lt!2222444 (lemmaMoveElementToOtherListKeepsConcatEq!1875 Nil!62006 (h!68454 (ite (or c!950410 c!950414 c!950409) s!2326 (_1!35779 lt!2222148))) (t!375357 (ite (or c!950410 c!950414 c!950409) s!2326 (_1!35779 lt!2222148))) (ite (or c!950410 c!950414 c!950409) s!2326 (_1!35779 lt!2222148))))))

(declare-fun e!3373600 () Option!15388)

(assert (=> b!5446679 (= e!3373600 (findConcatSeparation!1802 (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 (reg!15606 (regOne!31066 r!7292)))) (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 (ite c!950409 (regTwo!31066 r!7292) lt!2222247))) (++!13633 Nil!62006 (Cons!62006 (h!68454 (ite (or c!950410 c!950414 c!950409) s!2326 (_1!35779 lt!2222148))) Nil!62006)) (t!375357 (ite (or c!950410 c!950414 c!950409) s!2326 (_1!35779 lt!2222148))) (ite (or c!950410 c!950414 c!950409) s!2326 (_1!35779 lt!2222148))))))

(declare-fun d!1733794 () Bool)

(declare-fun e!3373596 () Bool)

(assert (=> d!1733794 e!3373596))

(declare-fun res!2319390 () Bool)

(assert (=> d!1733794 (=> res!2319390 e!3373596)))

(declare-fun e!3373597 () Bool)

(assert (=> d!1733794 (= res!2319390 e!3373597)))

(declare-fun res!2319392 () Bool)

(assert (=> d!1733794 (=> (not res!2319392) (not e!3373597))))

(declare-fun lt!2222446 () Option!15388)

(assert (=> d!1733794 (= res!2319392 (isDefined!12091 lt!2222446))))

(declare-fun e!3373599 () Option!15388)

(assert (=> d!1733794 (= lt!2222446 e!3373599)))

(declare-fun c!950596 () Bool)

(declare-fun e!3373598 () Bool)

(assert (=> d!1733794 (= c!950596 e!3373598)))

(declare-fun res!2319393 () Bool)

(assert (=> d!1733794 (=> (not res!2319393) (not e!3373598))))

(assert (=> d!1733794 (= res!2319393 (matchR!7462 (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 (reg!15606 (regOne!31066 r!7292)))) Nil!62006))))

(assert (=> d!1733794 (validRegex!7013 (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 (reg!15606 (regOne!31066 r!7292)))))))

(assert (=> d!1733794 (= (findConcatSeparation!1802 (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 (reg!15606 (regOne!31066 r!7292)))) (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 (ite c!950409 (regTwo!31066 r!7292) lt!2222247))) Nil!62006 (ite (or c!950410 c!950414 c!950409) s!2326 (_1!35779 lt!2222148)) (ite (or c!950410 c!950414 c!950409) s!2326 (_1!35779 lt!2222148))) lt!2222446)))

(declare-fun b!5446680 () Bool)

(declare-fun res!2319391 () Bool)

(assert (=> b!5446680 (=> (not res!2319391) (not e!3373597))))

(assert (=> b!5446680 (= res!2319391 (matchR!7462 (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 (ite c!950409 (regTwo!31066 r!7292) lt!2222247))) (_2!35779 (get!21380 lt!2222446))))))

(declare-fun b!5446681 () Bool)

(assert (=> b!5446681 (= e!3373600 None!15387)))

(declare-fun b!5446682 () Bool)

(declare-fun res!2319389 () Bool)

(assert (=> b!5446682 (=> (not res!2319389) (not e!3373597))))

(assert (=> b!5446682 (= res!2319389 (matchR!7462 (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 (reg!15606 (regOne!31066 r!7292)))) (_1!35779 (get!21380 lt!2222446))))))

(declare-fun b!5446683 () Bool)

(assert (=> b!5446683 (= e!3373598 (matchR!7462 (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 (ite c!950409 (regTwo!31066 r!7292) lt!2222247))) (ite (or c!950410 c!950414 c!950409) s!2326 (_1!35779 lt!2222148))))))

(declare-fun b!5446684 () Bool)

(assert (=> b!5446684 (= e!3373596 (not (isDefined!12091 lt!2222446)))))

(declare-fun b!5446685 () Bool)

(assert (=> b!5446685 (= e!3373599 e!3373600)))

(declare-fun c!950597 () Bool)

(assert (=> b!5446685 (= c!950597 ((_ is Nil!62006) (ite (or c!950410 c!950414 c!950409) s!2326 (_1!35779 lt!2222148))))))

(declare-fun b!5446686 () Bool)

(assert (=> b!5446686 (= e!3373597 (= (++!13633 (_1!35779 (get!21380 lt!2222446)) (_2!35779 (get!21380 lt!2222446))) (ite (or c!950410 c!950414 c!950409) s!2326 (_1!35779 lt!2222148))))))

(declare-fun b!5446687 () Bool)

(assert (=> b!5446687 (= e!3373599 (Some!15387 (tuple2!64953 Nil!62006 (ite (or c!950410 c!950414 c!950409) s!2326 (_1!35779 lt!2222148)))))))

(assert (= (and d!1733794 res!2319393) b!5446683))

(assert (= (and d!1733794 c!950596) b!5446687))

(assert (= (and d!1733794 (not c!950596)) b!5446685))

(assert (= (and b!5446685 c!950597) b!5446681))

(assert (= (and b!5446685 (not c!950597)) b!5446679))

(assert (= (and d!1733794 res!2319392) b!5446682))

(assert (= (and b!5446682 res!2319389) b!5446680))

(assert (= (and b!5446680 res!2319391) b!5446686))

(assert (= (and d!1733794 (not res!2319390)) b!5446684))

(declare-fun m!6466358 () Bool)

(assert (=> b!5446679 m!6466358))

(assert (=> b!5446679 m!6466358))

(declare-fun m!6466360 () Bool)

(assert (=> b!5446679 m!6466360))

(declare-fun m!6466362 () Bool)

(assert (=> b!5446679 m!6466362))

(assert (=> b!5446679 m!6466358))

(declare-fun m!6466364 () Bool)

(assert (=> b!5446679 m!6466364))

(declare-fun m!6466366 () Bool)

(assert (=> b!5446683 m!6466366))

(declare-fun m!6466368 () Bool)

(assert (=> b!5446686 m!6466368))

(declare-fun m!6466370 () Bool)

(assert (=> b!5446686 m!6466370))

(assert (=> b!5446682 m!6466368))

(declare-fun m!6466372 () Bool)

(assert (=> b!5446682 m!6466372))

(declare-fun m!6466374 () Bool)

(assert (=> d!1733794 m!6466374))

(declare-fun m!6466376 () Bool)

(assert (=> d!1733794 m!6466376))

(declare-fun m!6466378 () Bool)

(assert (=> d!1733794 m!6466378))

(assert (=> b!5446680 m!6466368))

(declare-fun m!6466380 () Bool)

(assert (=> b!5446680 m!6466380))

(assert (=> b!5446684 m!6466374))

(assert (=> bm!392783 d!1733794))

(declare-fun d!1733802 () Bool)

(declare-fun choose!41327 ((InoxSet Context!9322) Int) (InoxSet Context!9322))

(assert (=> d!1733802 (= (flatMap!1004 (ite c!950414 lt!2222128 (ite c!950411 lt!2222119 lt!2222314)) (ite c!950414 lambda!287180 (ite c!950411 lambda!287180 lambda!287180))) (choose!41327 (ite c!950414 lt!2222128 (ite c!950411 lt!2222119 lt!2222314)) (ite c!950414 lambda!287180 (ite c!950411 lambda!287180 lambda!287180))))))

(declare-fun bs!1256553 () Bool)

(assert (= bs!1256553 d!1733802))

(declare-fun m!6466382 () Bool)

(assert (=> bs!1256553 m!6466382))

(assert (=> bm!392800 d!1733802))

(declare-fun d!1733804 () Bool)

(assert (=> d!1733804 (= (Exists!2458 (ite c!950409 lambda!287191 lambda!287197)) (choose!41324 (ite c!950409 lambda!287191 lambda!287197)))))

(declare-fun bs!1256554 () Bool)

(assert (= bs!1256554 d!1733804))

(declare-fun m!6466384 () Bool)

(assert (=> bs!1256554 m!6466384))

(assert (=> bm!392915 d!1733804))

(declare-fun bs!1256563 () Bool)

(declare-fun b!5446692 () Bool)

(assert (= bs!1256563 (and b!5446692 b!5446005)))

(declare-fun lambda!287267 () Int)

(assert (=> bs!1256563 (not (= lambda!287267 lambda!287188))))

(declare-fun bs!1256565 () Bool)

(assert (= bs!1256565 (and b!5446692 b!5445993)))

(assert (=> bs!1256565 (= (and (= (ite (or c!950418 c!950410) s!2326 (ite c!950411 (_1!35779 lt!2222148) s!2326)) (_1!35779 lt!2222282)) (= (reg!15606 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292)))) lt!2222247)) (= lambda!287267 lambda!287192))))

(declare-fun bs!1256567 () Bool)

(assert (= bs!1256567 (and b!5446692 b!5446006)))

(assert (=> bs!1256567 (not (= lambda!287267 lambda!287199))))

(assert (=> bs!1256563 (not (= lambda!287267 lambda!287186))))

(declare-fun bs!1256569 () Bool)

(assert (= bs!1256569 (and b!5446692 d!1733728)))

(assert (=> bs!1256569 (= (and (= (ite (or c!950418 c!950410) s!2326 (ite c!950411 (_1!35779 lt!2222148) s!2326)) (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) (= (reg!15606 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292)))) (Star!15277 (reg!15606 (regOne!31066 r!7292))))) (= lambda!287267 lambda!287251))))

(declare-fun bs!1256571 () Bool)

(assert (= bs!1256571 (and b!5446692 d!1733706)))

(assert (=> bs!1256571 (not (= lambda!287267 lambda!287238))))

(declare-fun bs!1256573 () Bool)

(assert (= bs!1256573 (and b!5446692 b!5446028)))

(assert (=> bs!1256573 (not (= lambda!287267 lambda!287181))))

(assert (=> bs!1256573 (not (= lambda!287267 lambda!287182))))

(declare-fun bs!1256574 () Bool)

(assert (= bs!1256574 (and b!5446692 b!5445995)))

(assert (=> bs!1256574 (= (and (= (ite (or c!950418 c!950410) s!2326 (ite c!950411 (_1!35779 lt!2222148) s!2326)) Nil!62006) (= (reg!15606 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292)))) lt!2222247)) (= lambda!287267 lambda!287204))))

(assert (=> bs!1256567 (= (and (= (ite (or c!950418 c!950410) s!2326 (ite c!950411 (_1!35779 lt!2222148) s!2326)) (_1!35779 lt!2222148)) (= (reg!15606 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292)))) lt!2222247)) (= lambda!287267 lambda!287201))))

(declare-fun bs!1256576 () Bool)

(assert (= bs!1256576 (and b!5446692 b!5446036)))

(assert (=> bs!1256576 (not (= lambda!287267 lambda!287179))))

(assert (=> bs!1256563 (not (= lambda!287267 lambda!287185))))

(assert (=> bs!1256567 (not (= lambda!287267 lambda!287197))))

(declare-fun bs!1256578 () Bool)

(assert (= bs!1256578 (and b!5446692 b!5446578)))

(assert (=> bs!1256578 (not (= lambda!287267 lambda!287257))))

(assert (=> bs!1256563 (not (= lambda!287267 lambda!287187))))

(assert (=> bs!1256574 (not (= lambda!287267 lambda!287203))))

(assert (=> bs!1256573 (not (= lambda!287267 lambda!287183))))

(assert (=> bs!1256567 (not (= lambda!287267 lambda!287198))))

(assert (=> bs!1256574 (not (= lambda!287267 lambda!287202))))

(assert (=> bs!1256571 (not (= lambda!287267 lambda!287237))))

(declare-fun bs!1256581 () Bool)

(assert (= bs!1256581 (and b!5446692 b!5446575)))

(assert (=> bs!1256581 (= (and (= (ite (or c!950418 c!950410) s!2326 (ite c!950411 (_1!35779 lt!2222148) s!2326)) s!2326) (= (reg!15606 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) (reg!15606 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221))))) (= (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292)))) (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221))))) (= lambda!287267 lambda!287256))))

(assert (=> bs!1256573 (not (= lambda!287267 lambda!287184))))

(assert (=> bs!1256576 (not (= lambda!287267 lambda!287178))))

(assert (=> bs!1256569 (not (= lambda!287267 lambda!287250))))

(assert (=> bs!1256565 (not (= lambda!287267 lambda!287193))))

(declare-fun bs!1256583 () Bool)

(assert (= bs!1256583 (and b!5446692 b!5446010)))

(assert (=> bs!1256583 (not (= lambda!287267 lambda!287190))))

(assert (=> bs!1256567 (not (= lambda!287267 lambda!287200))))

(assert (=> bs!1256565 (not (= lambda!287267 lambda!287191))))

(assert (=> bs!1256583 (not (= lambda!287267 lambda!287189))))

(assert (=> b!5446692 true))

(assert (=> b!5446692 true))

(declare-fun bs!1256584 () Bool)

(declare-fun b!5446695 () Bool)

(assert (= bs!1256584 (and b!5446695 b!5446005)))

(declare-fun lambda!287268 () Int)

(assert (=> bs!1256584 (= (and (= (ite (or c!950418 c!950410) s!2326 (ite c!950411 (_1!35779 lt!2222148) s!2326)) s!2326) (= (regOne!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) (regTwo!31066 (regOne!31066 r!7292))) (= (regTwo!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) lt!2222211)) (= lambda!287268 lambda!287188))))

(declare-fun bs!1256585 () Bool)

(assert (= bs!1256585 (and b!5446695 b!5445993)))

(assert (=> bs!1256585 (not (= lambda!287268 lambda!287192))))

(declare-fun bs!1256586 () Bool)

(assert (= bs!1256586 (and b!5446695 b!5446006)))

(assert (=> bs!1256586 (not (= lambda!287268 lambda!287199))))

(assert (=> bs!1256584 (= (and (= (ite (or c!950418 c!950410) s!2326 (ite c!950411 (_1!35779 lt!2222148) s!2326)) s!2326) (= (regOne!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) (regOne!31066 (regOne!31066 r!7292))) (= (regTwo!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) lt!2222299)) (= lambda!287268 lambda!287186))))

(declare-fun bs!1256587 () Bool)

(assert (= bs!1256587 (and b!5446695 d!1733728)))

(assert (=> bs!1256587 (not (= lambda!287268 lambda!287251))))

(declare-fun bs!1256588 () Bool)

(assert (= bs!1256588 (and b!5446695 d!1733706)))

(assert (=> bs!1256588 (= (and (= (ite (or c!950418 c!950410) s!2326 (ite c!950411 (_1!35779 lt!2222148) s!2326)) s!2326) (= (regOne!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184))) (= (regTwo!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))))) (= lambda!287268 lambda!287238))))

(declare-fun bs!1256590 () Bool)

(assert (= bs!1256590 (and b!5446695 b!5446028)))

(assert (=> bs!1256590 (not (= lambda!287268 lambda!287181))))

(assert (=> bs!1256590 (= (and (= (ite (or c!950418 c!950410) s!2326 (ite c!950411 (_1!35779 lt!2222148) s!2326)) s!2326) (= (regOne!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) (regOne!31066 (regOne!31066 r!7292))) (= (regTwo!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) lt!2222146)) (= lambda!287268 lambda!287182))))

(declare-fun bs!1256591 () Bool)

(assert (= bs!1256591 (and b!5446695 b!5445995)))

(assert (=> bs!1256591 (not (= lambda!287268 lambda!287204))))

(assert (=> bs!1256586 (not (= lambda!287268 lambda!287201))))

(declare-fun bs!1256592 () Bool)

(assert (= bs!1256592 (and b!5446695 b!5446692)))

(assert (=> bs!1256592 (not (= lambda!287268 lambda!287267))))

(declare-fun bs!1256593 () Bool)

(assert (= bs!1256593 (and b!5446695 b!5446036)))

(assert (=> bs!1256593 (= (and (= (ite (or c!950418 c!950410) s!2326 (ite c!950411 (_1!35779 lt!2222148) s!2326)) s!2326) (= (regOne!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) (regOne!31066 r!7292)) (= (regTwo!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) (regTwo!31066 r!7292))) (= lambda!287268 lambda!287179))))

(assert (=> bs!1256584 (not (= lambda!287268 lambda!287185))))

(assert (=> bs!1256586 (not (= lambda!287268 lambda!287197))))

(declare-fun bs!1256594 () Bool)

(assert (= bs!1256594 (and b!5446695 b!5446578)))

(assert (=> bs!1256594 (= (and (= (ite (or c!950418 c!950410) s!2326 (ite c!950411 (_1!35779 lt!2222148) s!2326)) s!2326) (= (regOne!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) (regOne!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221))))) (= (regTwo!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) (regTwo!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))))) (= lambda!287268 lambda!287257))))

(assert (=> bs!1256584 (not (= lambda!287268 lambda!287187))))

(assert (=> bs!1256591 (= (and (= (ite (or c!950418 c!950410) s!2326 (ite c!950411 (_1!35779 lt!2222148) s!2326)) Nil!62006) (= (regOne!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) (reg!15606 (regOne!31066 r!7292))) (= (regTwo!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) lt!2222247)) (= lambda!287268 lambda!287203))))

(assert (=> bs!1256590 (not (= lambda!287268 lambda!287183))))

(assert (=> bs!1256586 (= (and (= (ite (or c!950418 c!950410) s!2326 (ite c!950411 (_1!35779 lt!2222148) s!2326)) s!2326) (= (regOne!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) lt!2222184) (= (regTwo!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) (regTwo!31066 r!7292))) (= lambda!287268 lambda!287198))))

(assert (=> bs!1256591 (not (= lambda!287268 lambda!287202))))

(assert (=> bs!1256588 (not (= lambda!287268 lambda!287237))))

(declare-fun bs!1256595 () Bool)

(assert (= bs!1256595 (and b!5446695 b!5446575)))

(assert (=> bs!1256595 (not (= lambda!287268 lambda!287256))))

(assert (=> bs!1256590 (= (and (= (ite (or c!950418 c!950410) s!2326 (ite c!950411 (_1!35779 lt!2222148) s!2326)) s!2326) (= (regOne!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) (regTwo!31066 (regOne!31066 r!7292))) (= (regTwo!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) lt!2222240)) (= lambda!287268 lambda!287184))))

(assert (=> bs!1256593 (not (= lambda!287268 lambda!287178))))

(assert (=> bs!1256587 (not (= lambda!287268 lambda!287250))))

(assert (=> bs!1256585 (= (and (= (ite (or c!950418 c!950410) s!2326 (ite c!950411 (_1!35779 lt!2222148) s!2326)) (_1!35779 lt!2222282)) (= (regOne!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) (reg!15606 (regOne!31066 r!7292))) (= (regTwo!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) lt!2222247)) (= lambda!287268 lambda!287193))))

(declare-fun bs!1256596 () Bool)

(assert (= bs!1256596 (and b!5446695 b!5446010)))

(assert (=> bs!1256596 (= (and (= (ite (or c!950418 c!950410) s!2326 (ite c!950411 (_1!35779 lt!2222148) s!2326)) s!2326) (= (regOne!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) lt!2222247) (= (regTwo!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) (regTwo!31066 r!7292))) (= lambda!287268 lambda!287190))))

(assert (=> bs!1256586 (= (and (= (ite (or c!950418 c!950410) s!2326 (ite c!950411 (_1!35779 lt!2222148) s!2326)) (_1!35779 lt!2222148)) (= (regOne!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) (reg!15606 (regOne!31066 r!7292))) (= (regTwo!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) lt!2222247)) (= lambda!287268 lambda!287200))))

(assert (=> bs!1256585 (not (= lambda!287268 lambda!287191))))

(assert (=> bs!1256596 (not (= lambda!287268 lambda!287189))))

(assert (=> b!5446695 true))

(assert (=> b!5446695 true))

(declare-fun bm!393022 () Bool)

(declare-fun call!393027 () Bool)

(declare-fun c!950601 () Bool)

(assert (=> bm!393022 (= call!393027 (Exists!2458 (ite c!950601 lambda!287267 lambda!287268)))))

(declare-fun d!1733806 () Bool)

(declare-fun c!950600 () Bool)

(assert (=> d!1733806 (= c!950600 ((_ is EmptyExpr!15277) (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))))))

(declare-fun e!3373601 () Bool)

(assert (=> d!1733806 (= (matchRSpec!2380 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292)))) (ite (or c!950418 c!950410) s!2326 (ite c!950411 (_1!35779 lt!2222148) s!2326))) e!3373601)))

(declare-fun e!3373607 () Bool)

(declare-fun b!5446688 () Bool)

(assert (=> b!5446688 (= e!3373607 (= (ite (or c!950418 c!950410) s!2326 (ite c!950411 (_1!35779 lt!2222148) s!2326)) (Cons!62006 (c!950421 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) Nil!62006)))))

(declare-fun b!5446689 () Bool)

(declare-fun call!393028 () Bool)

(assert (=> b!5446689 (= e!3373601 call!393028)))

(declare-fun c!950598 () Bool)

(declare-fun b!5446690 () Bool)

(assert (=> b!5446690 (= c!950598 ((_ is Union!15277) (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))))))

(declare-fun e!3373606 () Bool)

(assert (=> b!5446690 (= e!3373607 e!3373606)))

(declare-fun b!5446691 () Bool)

(declare-fun e!3373605 () Bool)

(assert (=> b!5446691 (= e!3373601 e!3373605)))

(declare-fun res!2319395 () Bool)

(assert (=> b!5446691 (= res!2319395 (not ((_ is EmptyLang!15277) (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292)))))))))

(assert (=> b!5446691 (=> (not res!2319395) (not e!3373605))))

(declare-fun e!3373604 () Bool)

(assert (=> b!5446692 (= e!3373604 call!393027)))

(declare-fun b!5446693 () Bool)

(declare-fun e!3373603 () Bool)

(assert (=> b!5446693 (= e!3373603 (matchRSpec!2380 (regTwo!31067 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) (ite (or c!950418 c!950410) s!2326 (ite c!950411 (_1!35779 lt!2222148) s!2326))))))

(declare-fun b!5446694 () Bool)

(declare-fun res!2319394 () Bool)

(assert (=> b!5446694 (=> res!2319394 e!3373604)))

(assert (=> b!5446694 (= res!2319394 call!393028)))

(declare-fun e!3373602 () Bool)

(assert (=> b!5446694 (= e!3373602 e!3373604)))

(assert (=> b!5446695 (= e!3373602 call!393027)))

(declare-fun b!5446696 () Bool)

(declare-fun c!950599 () Bool)

(assert (=> b!5446696 (= c!950599 ((_ is ElementMatch!15277) (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))))))

(assert (=> b!5446696 (= e!3373605 e!3373607)))

(declare-fun b!5446697 () Bool)

(assert (=> b!5446697 (= e!3373606 e!3373603)))

(declare-fun res!2319396 () Bool)

(assert (=> b!5446697 (= res!2319396 (matchRSpec!2380 (regOne!31067 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))) (ite (or c!950418 c!950410) s!2326 (ite c!950411 (_1!35779 lt!2222148) s!2326))))))

(assert (=> b!5446697 (=> res!2319396 e!3373603)))

(declare-fun bm!393023 () Bool)

(assert (=> bm!393023 (= call!393028 (isEmpty!33985 (ite (or c!950418 c!950410) s!2326 (ite c!950411 (_1!35779 lt!2222148) s!2326))))))

(declare-fun b!5446698 () Bool)

(assert (=> b!5446698 (= e!3373606 e!3373602)))

(assert (=> b!5446698 (= c!950601 ((_ is Star!15277) (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))))))

(assert (= (and d!1733806 c!950600) b!5446689))

(assert (= (and d!1733806 (not c!950600)) b!5446691))

(assert (= (and b!5446691 res!2319395) b!5446696))

(assert (= (and b!5446696 c!950599) b!5446688))

(assert (= (and b!5446696 (not c!950599)) b!5446690))

(assert (= (and b!5446690 c!950598) b!5446697))

(assert (= (and b!5446690 (not c!950598)) b!5446698))

(assert (= (and b!5446697 (not res!2319396)) b!5446693))

(assert (= (and b!5446698 c!950601) b!5446694))

(assert (= (and b!5446698 (not c!950601)) b!5446695))

(assert (= (and b!5446694 (not res!2319394)) b!5446692))

(assert (= (or b!5446692 b!5446695) bm!393022))

(assert (= (or b!5446689 b!5446694) bm!393023))

(declare-fun m!6466406 () Bool)

(assert (=> bm!393022 m!6466406))

(declare-fun m!6466408 () Bool)

(assert (=> b!5446693 m!6466408))

(declare-fun m!6466410 () Bool)

(assert (=> b!5446697 m!6466410))

(declare-fun m!6466412 () Bool)

(assert (=> bm!393023 m!6466412))

(assert (=> bm!392900 d!1733806))

(declare-fun d!1733818 () Bool)

(assert (=> d!1733818 (= (isEmpty!33987 (t!375358 (exprs!5161 (h!68456 zl!343)))) ((_ is Nil!62007) (t!375358 (exprs!5161 (h!68456 zl!343)))))))

(assert (=> b!5446040 d!1733818))

(declare-fun d!1733822 () Bool)

(assert (=> d!1733822 (= (++!13633 (++!13633 (ite c!950409 (_1!35779 lt!2222226) (_1!35779 lt!2222200)) (ite c!950409 (_2!35779 lt!2222226) (_2!35779 lt!2222200))) (ite c!950409 (_2!35779 lt!2222282) (_2!35779 lt!2222148))) (++!13633 (ite c!950409 (_1!35779 lt!2222226) (_1!35779 lt!2222200)) (++!13633 (ite c!950409 (_2!35779 lt!2222226) (_2!35779 lt!2222200)) (ite c!950409 (_2!35779 lt!2222282) (_2!35779 lt!2222148)))))))

(declare-fun lt!2222452 () Unit!154704)

(declare-fun choose!41329 (List!62130 List!62130 List!62130) Unit!154704)

(assert (=> d!1733822 (= lt!2222452 (choose!41329 (ite c!950409 (_1!35779 lt!2222226) (_1!35779 lt!2222200)) (ite c!950409 (_2!35779 lt!2222226) (_2!35779 lt!2222200)) (ite c!950409 (_2!35779 lt!2222282) (_2!35779 lt!2222148))))))

(assert (=> d!1733822 (= (lemmaConcatAssociativity!2854 (ite c!950409 (_1!35779 lt!2222226) (_1!35779 lt!2222200)) (ite c!950409 (_2!35779 lt!2222226) (_2!35779 lt!2222200)) (ite c!950409 (_2!35779 lt!2222282) (_2!35779 lt!2222148))) lt!2222452)))

(declare-fun bs!1256608 () Bool)

(assert (= bs!1256608 d!1733822))

(assert (=> bs!1256608 m!6465360))

(declare-fun m!6466444 () Bool)

(assert (=> bs!1256608 m!6466444))

(declare-fun m!6466446 () Bool)

(assert (=> bs!1256608 m!6466446))

(assert (=> bs!1256608 m!6465360))

(declare-fun m!6466448 () Bool)

(assert (=> bs!1256608 m!6466448))

(assert (=> bs!1256608 m!6466448))

(declare-fun m!6466450 () Bool)

(assert (=> bs!1256608 m!6466450))

(assert (=> bm!392835 d!1733822))

(declare-fun c!950630 () Bool)

(declare-fun d!1733830 () Bool)

(assert (=> d!1733830 (= c!950630 (and ((_ is ElementMatch!15277) (ite c!950418 (regOne!31067 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292)))) (= (c!950421 (ite c!950418 (regOne!31067 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292)))) (h!68454 s!2326))))))

(declare-fun e!3373654 () (InoxSet Context!9322))

(assert (=> d!1733830 (= (derivationStepZipperDown!725 (ite c!950418 (regOne!31067 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292))) (ite c!950418 lt!2222248 lt!2222297) (h!68454 s!2326)) e!3373654)))

(declare-fun b!5446775 () Bool)

(declare-fun e!3373655 () (InoxSet Context!9322))

(declare-fun e!3373652 () (InoxSet Context!9322))

(assert (=> b!5446775 (= e!3373655 e!3373652)))

(declare-fun c!950627 () Bool)

(assert (=> b!5446775 (= c!950627 ((_ is Concat!24122) (ite c!950418 (regOne!31067 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292)))))))

(declare-fun bm!393041 () Bool)

(declare-fun call!393046 () (InoxSet Context!9322))

(declare-fun call!393048 () List!62131)

(declare-fun c!950628 () Bool)

(assert (=> bm!393041 (= call!393046 (derivationStepZipperDown!725 (ite c!950628 (regTwo!31067 (ite c!950418 (regOne!31067 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292)))) (regOne!31066 (ite c!950418 (regOne!31067 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292))))) (ite c!950628 (ite c!950418 lt!2222248 lt!2222297) (Context!9323 call!393048)) (h!68454 s!2326)))))

(declare-fun call!393047 () (InoxSet Context!9322))

(declare-fun call!393051 () List!62131)

(declare-fun c!950629 () Bool)

(declare-fun bm!393042 () Bool)

(assert (=> bm!393042 (= call!393047 (derivationStepZipperDown!725 (ite c!950628 (regOne!31067 (ite c!950418 (regOne!31067 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292)))) (ite c!950629 (regTwo!31066 (ite c!950418 (regOne!31067 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292)))) (ite c!950627 (regOne!31066 (ite c!950418 (regOne!31067 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292)))) (reg!15606 (ite c!950418 (regOne!31067 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292))))))) (ite (or c!950628 c!950629) (ite c!950418 lt!2222248 lt!2222297) (Context!9323 call!393051)) (h!68454 s!2326)))))

(declare-fun b!5446776 () Bool)

(declare-fun e!3373657 () (InoxSet Context!9322))

(assert (=> b!5446776 (= e!3373654 e!3373657)))

(assert (=> b!5446776 (= c!950628 ((_ is Union!15277) (ite c!950418 (regOne!31067 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292)))))))

(declare-fun bm!393043 () Bool)

(declare-fun call!393049 () (InoxSet Context!9322))

(assert (=> bm!393043 (= call!393049 call!393047)))

(declare-fun b!5446777 () Bool)

(declare-fun e!3373653 () Bool)

(assert (=> b!5446777 (= c!950629 e!3373653)))

(declare-fun res!2319425 () Bool)

(assert (=> b!5446777 (=> (not res!2319425) (not e!3373653))))

(assert (=> b!5446777 (= res!2319425 ((_ is Concat!24122) (ite c!950418 (regOne!31067 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292)))))))

(assert (=> b!5446777 (= e!3373657 e!3373655)))

(declare-fun bm!393044 () Bool)

(declare-fun call!393050 () (InoxSet Context!9322))

(assert (=> bm!393044 (= call!393050 call!393049)))

(declare-fun bm!393045 () Bool)

(assert (=> bm!393045 (= call!393051 call!393048)))

(declare-fun b!5446778 () Bool)

(assert (=> b!5446778 (= e!3373654 (store ((as const (Array Context!9322 Bool)) false) (ite c!950418 lt!2222248 lt!2222297) true))))

(declare-fun b!5446779 () Bool)

(assert (=> b!5446779 (= e!3373653 (nullable!5446 (regOne!31066 (ite c!950418 (regOne!31067 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292))))))))

(declare-fun b!5446780 () Bool)

(assert (=> b!5446780 (= e!3373655 ((_ map or) call!393046 call!393049))))

(declare-fun bm!393046 () Bool)

(declare-fun $colon$colon!1530 (List!62131 Regex!15277) List!62131)

(assert (=> bm!393046 (= call!393048 ($colon$colon!1530 (exprs!5161 (ite c!950418 lt!2222248 lt!2222297)) (ite (or c!950629 c!950627) (regTwo!31066 (ite c!950418 (regOne!31067 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292)))) (ite c!950418 (regOne!31067 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292))))))))

(declare-fun b!5446781 () Bool)

(assert (=> b!5446781 (= e!3373652 call!393050)))

(declare-fun b!5446782 () Bool)

(assert (=> b!5446782 (= e!3373657 ((_ map or) call!393047 call!393046))))

(declare-fun b!5446783 () Bool)

(declare-fun e!3373656 () (InoxSet Context!9322))

(assert (=> b!5446783 (= e!3373656 ((as const (Array Context!9322 Bool)) false))))

(declare-fun b!5446784 () Bool)

(declare-fun c!950626 () Bool)

(assert (=> b!5446784 (= c!950626 ((_ is Star!15277) (ite c!950418 (regOne!31067 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292)))))))

(assert (=> b!5446784 (= e!3373652 e!3373656)))

(declare-fun b!5446785 () Bool)

(assert (=> b!5446785 (= e!3373656 call!393050)))

(assert (= (and d!1733830 c!950630) b!5446778))

(assert (= (and d!1733830 (not c!950630)) b!5446776))

(assert (= (and b!5446776 c!950628) b!5446782))

(assert (= (and b!5446776 (not c!950628)) b!5446777))

(assert (= (and b!5446777 res!2319425) b!5446779))

(assert (= (and b!5446777 c!950629) b!5446780))

(assert (= (and b!5446777 (not c!950629)) b!5446775))

(assert (= (and b!5446775 c!950627) b!5446781))

(assert (= (and b!5446775 (not c!950627)) b!5446784))

(assert (= (and b!5446784 c!950626) b!5446785))

(assert (= (and b!5446784 (not c!950626)) b!5446783))

(assert (= (or b!5446781 b!5446785) bm!393045))

(assert (= (or b!5446781 b!5446785) bm!393044))

(assert (= (or b!5446780 bm!393045) bm!393046))

(assert (= (or b!5446780 bm!393044) bm!393043))

(assert (= (or b!5446782 b!5446780) bm!393041))

(assert (= (or b!5446782 bm!393043) bm!393042))

(declare-fun m!6466470 () Bool)

(assert (=> bm!393042 m!6466470))

(declare-fun m!6466472 () Bool)

(assert (=> b!5446778 m!6466472))

(declare-fun m!6466474 () Bool)

(assert (=> b!5446779 m!6466474))

(declare-fun m!6466476 () Bool)

(assert (=> bm!393041 m!6466476))

(declare-fun m!6466478 () Bool)

(assert (=> bm!393046 m!6466478))

(assert (=> bm!392908 d!1733830))

(declare-fun d!1733838 () Bool)

(declare-fun res!2319430 () Bool)

(declare-fun e!3373662 () Bool)

(assert (=> d!1733838 (=> res!2319430 e!3373662)))

(assert (=> d!1733838 (= res!2319430 ((_ is Nil!62007) (exprs!5161 (h!68456 zl!343))))))

(assert (=> d!1733838 (= (forall!14580 (exprs!5161 (h!68456 zl!343)) lambda!287205) e!3373662)))

(declare-fun b!5446790 () Bool)

(declare-fun e!3373663 () Bool)

(assert (=> b!5446790 (= e!3373662 e!3373663)))

(declare-fun res!2319431 () Bool)

(assert (=> b!5446790 (=> (not res!2319431) (not e!3373663))))

(declare-fun dynLambda!24389 (Int Regex!15277) Bool)

(assert (=> b!5446790 (= res!2319431 (dynLambda!24389 lambda!287205 (h!68455 (exprs!5161 (h!68456 zl!343)))))))

(declare-fun b!5446791 () Bool)

(assert (=> b!5446791 (= e!3373663 (forall!14580 (t!375358 (exprs!5161 (h!68456 zl!343))) lambda!287205))))

(assert (= (and d!1733838 (not res!2319430)) b!5446790))

(assert (= (and b!5446790 res!2319431) b!5446791))

(declare-fun b_lambda!207495 () Bool)

(assert (=> (not b_lambda!207495) (not b!5446790)))

(declare-fun m!6466480 () Bool)

(assert (=> b!5446790 m!6466480))

(declare-fun m!6466482 () Bool)

(assert (=> b!5446791 m!6466482))

(assert (=> b!5446022 d!1733838))

(declare-fun d!1733840 () Bool)

(assert (=> d!1733840 (= (flatMap!1004 lt!2222163 lambda!287180) (choose!41327 lt!2222163 lambda!287180))))

(declare-fun bs!1256649 () Bool)

(assert (= bs!1256649 d!1733840))

(declare-fun m!6466484 () Bool)

(assert (=> bs!1256649 m!6466484))

(assert (=> b!5445994 d!1733840))

(declare-fun d!1733842 () Bool)

(declare-fun dynLambda!24390 (Int Context!9322) (InoxSet Context!9322))

(assert (=> d!1733842 (= (flatMap!1004 lt!2222119 lambda!287180) (dynLambda!24390 lambda!287180 lt!2222313))))

(declare-fun lt!2222459 () Unit!154704)

(declare-fun choose!41331 ((InoxSet Context!9322) Context!9322 Int) Unit!154704)

(assert (=> d!1733842 (= lt!2222459 (choose!41331 lt!2222119 lt!2222313 lambda!287180))))

(assert (=> d!1733842 (= lt!2222119 (store ((as const (Array Context!9322 Bool)) false) lt!2222313 true))))

(assert (=> d!1733842 (= (lemmaFlatMapOnSingletonSet!536 lt!2222119 lt!2222313 lambda!287180) lt!2222459)))

(declare-fun b_lambda!207497 () Bool)

(assert (=> (not b_lambda!207497) (not d!1733842)))

(declare-fun bs!1256652 () Bool)

(assert (= bs!1256652 d!1733842))

(declare-fun m!6466508 () Bool)

(assert (=> bs!1256652 m!6466508))

(declare-fun m!6466510 () Bool)

(assert (=> bs!1256652 m!6466510))

(declare-fun m!6466512 () Bool)

(assert (=> bs!1256652 m!6466512))

(assert (=> bs!1256652 m!6465402))

(assert (=> b!5445994 d!1733842))

(declare-fun d!1733850 () Bool)

(declare-fun isEmpty!33989 (Option!15388) Bool)

(assert (=> d!1733850 (= (isDefined!12091 (ite c!950410 call!392905 (ite c!950409 lt!2222138 lt!2222278))) (not (isEmpty!33989 (ite c!950410 call!392905 (ite c!950409 lt!2222138 lt!2222278)))))))

(declare-fun bs!1256653 () Bool)

(assert (= bs!1256653 d!1733850))

(declare-fun m!6466514 () Bool)

(assert (=> bs!1256653 m!6466514))

(assert (=> bm!392910 d!1733850))

(declare-fun b!5446794 () Bool)

(declare-fun res!2319432 () Bool)

(declare-fun e!3373667 () Bool)

(assert (=> b!5446794 (=> res!2319432 e!3373667)))

(assert (=> b!5446794 (= res!2319432 (not ((_ is ElementMatch!15277) (ite c!950413 lt!2222197 (ite c!950418 lt!2222195 (ite c!950410 (Concat!24122 (regOne!31066 (regOne!31066 r!7292)) (Concat!24122 (regTwo!31066 (regOne!31066 r!7292)) lt!2222240)) (ite c!950414 (Concat!24122 (regOne!31066 r!7292) lt!2222211) (ite c!950409 (ite c!950420 lt!2222180 lt!2222247) lt!2222184))))))))))

(declare-fun e!3373668 () Bool)

(assert (=> b!5446794 (= e!3373668 e!3373667)))

(declare-fun b!5446795 () Bool)

(declare-fun res!2319435 () Bool)

(declare-fun e!3373670 () Bool)

(assert (=> b!5446795 (=> (not res!2319435) (not e!3373670))))

(declare-fun call!393052 () Bool)

(assert (=> b!5446795 (= res!2319435 (not call!393052))))

(declare-fun b!5446796 () Bool)

(declare-fun e!3373671 () Bool)

(declare-fun e!3373665 () Bool)

(assert (=> b!5446796 (= e!3373671 e!3373665)))

(declare-fun res!2319434 () Bool)

(assert (=> b!5446796 (=> res!2319434 e!3373665)))

(assert (=> b!5446796 (= res!2319434 call!393052)))

(declare-fun b!5446797 () Bool)

(declare-fun res!2319439 () Bool)

(assert (=> b!5446797 (=> (not res!2319439) (not e!3373670))))

(assert (=> b!5446797 (= res!2319439 (isEmpty!33985 (tail!10774 (ite c!950413 (t!375357 s!2326) (ite (or c!950418 c!950410 c!950414) s!2326 (ite c!950409 (ite c!950420 s!2326 (_1!35779 lt!2222282)) (_1!35779 lt!2222148)))))))))

(declare-fun b!5446798 () Bool)

(declare-fun e!3373666 () Bool)

(assert (=> b!5446798 (= e!3373666 e!3373668)))

(declare-fun c!950634 () Bool)

(assert (=> b!5446798 (= c!950634 ((_ is EmptyLang!15277) (ite c!950413 lt!2222197 (ite c!950418 lt!2222195 (ite c!950410 (Concat!24122 (regOne!31066 (regOne!31066 r!7292)) (Concat!24122 (regTwo!31066 (regOne!31066 r!7292)) lt!2222240)) (ite c!950414 (Concat!24122 (regOne!31066 r!7292) lt!2222211) (ite c!950409 (ite c!950420 lt!2222180 lt!2222247) lt!2222184)))))))))

(declare-fun b!5446799 () Bool)

(assert (=> b!5446799 (= e!3373665 (not (= (head!11677 (ite c!950413 (t!375357 s!2326) (ite (or c!950418 c!950410 c!950414) s!2326 (ite c!950409 (ite c!950420 s!2326 (_1!35779 lt!2222282)) (_1!35779 lt!2222148))))) (c!950421 (ite c!950413 lt!2222197 (ite c!950418 lt!2222195 (ite c!950410 (Concat!24122 (regOne!31066 (regOne!31066 r!7292)) (Concat!24122 (regTwo!31066 (regOne!31066 r!7292)) lt!2222240)) (ite c!950414 (Concat!24122 (regOne!31066 r!7292) lt!2222211) (ite c!950409 (ite c!950420 lt!2222180 lt!2222247) lt!2222184)))))))))))

(declare-fun b!5446800 () Bool)

(declare-fun e!3373669 () Bool)

(assert (=> b!5446800 (= e!3373669 (matchR!7462 (derivativeStep!4301 (ite c!950413 lt!2222197 (ite c!950418 lt!2222195 (ite c!950410 (Concat!24122 (regOne!31066 (regOne!31066 r!7292)) (Concat!24122 (regTwo!31066 (regOne!31066 r!7292)) lt!2222240)) (ite c!950414 (Concat!24122 (regOne!31066 r!7292) lt!2222211) (ite c!950409 (ite c!950420 lt!2222180 lt!2222247) lt!2222184))))) (head!11677 (ite c!950413 (t!375357 s!2326) (ite (or c!950418 c!950410 c!950414) s!2326 (ite c!950409 (ite c!950420 s!2326 (_1!35779 lt!2222282)) (_1!35779 lt!2222148)))))) (tail!10774 (ite c!950413 (t!375357 s!2326) (ite (or c!950418 c!950410 c!950414) s!2326 (ite c!950409 (ite c!950420 s!2326 (_1!35779 lt!2222282)) (_1!35779 lt!2222148)))))))))

(declare-fun b!5446801 () Bool)

(declare-fun res!2319433 () Bool)

(assert (=> b!5446801 (=> res!2319433 e!3373665)))

(assert (=> b!5446801 (= res!2319433 (not (isEmpty!33985 (tail!10774 (ite c!950413 (t!375357 s!2326) (ite (or c!950418 c!950410 c!950414) s!2326 (ite c!950409 (ite c!950420 s!2326 (_1!35779 lt!2222282)) (_1!35779 lt!2222148))))))))))

(declare-fun b!5446803 () Bool)

(declare-fun lt!2222460 () Bool)

(assert (=> b!5446803 (= e!3373668 (not lt!2222460))))

(declare-fun bm!393047 () Bool)

(assert (=> bm!393047 (= call!393052 (isEmpty!33985 (ite c!950413 (t!375357 s!2326) (ite (or c!950418 c!950410 c!950414) s!2326 (ite c!950409 (ite c!950420 s!2326 (_1!35779 lt!2222282)) (_1!35779 lt!2222148))))))))

(declare-fun b!5446804 () Bool)

(assert (=> b!5446804 (= e!3373670 (= (head!11677 (ite c!950413 (t!375357 s!2326) (ite (or c!950418 c!950410 c!950414) s!2326 (ite c!950409 (ite c!950420 s!2326 (_1!35779 lt!2222282)) (_1!35779 lt!2222148))))) (c!950421 (ite c!950413 lt!2222197 (ite c!950418 lt!2222195 (ite c!950410 (Concat!24122 (regOne!31066 (regOne!31066 r!7292)) (Concat!24122 (regTwo!31066 (regOne!31066 r!7292)) lt!2222240)) (ite c!950414 (Concat!24122 (regOne!31066 r!7292) lt!2222211) (ite c!950409 (ite c!950420 lt!2222180 lt!2222247) lt!2222184))))))))))

(declare-fun b!5446805 () Bool)

(assert (=> b!5446805 (= e!3373667 e!3373671)))

(declare-fun res!2319438 () Bool)

(assert (=> b!5446805 (=> (not res!2319438) (not e!3373671))))

(assert (=> b!5446805 (= res!2319438 (not lt!2222460))))

(declare-fun b!5446806 () Bool)

(declare-fun res!2319436 () Bool)

(assert (=> b!5446806 (=> res!2319436 e!3373667)))

(assert (=> b!5446806 (= res!2319436 e!3373670)))

(declare-fun res!2319437 () Bool)

(assert (=> b!5446806 (=> (not res!2319437) (not e!3373670))))

(assert (=> b!5446806 (= res!2319437 lt!2222460)))

(declare-fun b!5446807 () Bool)

(assert (=> b!5446807 (= e!3373669 (nullable!5446 (ite c!950413 lt!2222197 (ite c!950418 lt!2222195 (ite c!950410 (Concat!24122 (regOne!31066 (regOne!31066 r!7292)) (Concat!24122 (regTwo!31066 (regOne!31066 r!7292)) lt!2222240)) (ite c!950414 (Concat!24122 (regOne!31066 r!7292) lt!2222211) (ite c!950409 (ite c!950420 lt!2222180 lt!2222247) lt!2222184)))))))))

(declare-fun b!5446802 () Bool)

(assert (=> b!5446802 (= e!3373666 (= lt!2222460 call!393052))))

(declare-fun d!1733852 () Bool)

(assert (=> d!1733852 e!3373666))

(declare-fun c!950633 () Bool)

(assert (=> d!1733852 (= c!950633 ((_ is EmptyExpr!15277) (ite c!950413 lt!2222197 (ite c!950418 lt!2222195 (ite c!950410 (Concat!24122 (regOne!31066 (regOne!31066 r!7292)) (Concat!24122 (regTwo!31066 (regOne!31066 r!7292)) lt!2222240)) (ite c!950414 (Concat!24122 (regOne!31066 r!7292) lt!2222211) (ite c!950409 (ite c!950420 lt!2222180 lt!2222247) lt!2222184)))))))))

(assert (=> d!1733852 (= lt!2222460 e!3373669)))

(declare-fun c!950632 () Bool)

(assert (=> d!1733852 (= c!950632 (isEmpty!33985 (ite c!950413 (t!375357 s!2326) (ite (or c!950418 c!950410 c!950414) s!2326 (ite c!950409 (ite c!950420 s!2326 (_1!35779 lt!2222282)) (_1!35779 lt!2222148))))))))

(assert (=> d!1733852 (validRegex!7013 (ite c!950413 lt!2222197 (ite c!950418 lt!2222195 (ite c!950410 (Concat!24122 (regOne!31066 (regOne!31066 r!7292)) (Concat!24122 (regTwo!31066 (regOne!31066 r!7292)) lt!2222240)) (ite c!950414 (Concat!24122 (regOne!31066 r!7292) lt!2222211) (ite c!950409 (ite c!950420 lt!2222180 lt!2222247) lt!2222184))))))))

(assert (=> d!1733852 (= (matchR!7462 (ite c!950413 lt!2222197 (ite c!950418 lt!2222195 (ite c!950410 (Concat!24122 (regOne!31066 (regOne!31066 r!7292)) (Concat!24122 (regTwo!31066 (regOne!31066 r!7292)) lt!2222240)) (ite c!950414 (Concat!24122 (regOne!31066 r!7292) lt!2222211) (ite c!950409 (ite c!950420 lt!2222180 lt!2222247) lt!2222184))))) (ite c!950413 (t!375357 s!2326) (ite (or c!950418 c!950410 c!950414) s!2326 (ite c!950409 (ite c!950420 s!2326 (_1!35779 lt!2222282)) (_1!35779 lt!2222148))))) lt!2222460)))

(assert (= (and d!1733852 c!950632) b!5446807))

(assert (= (and d!1733852 (not c!950632)) b!5446800))

(assert (= (and d!1733852 c!950633) b!5446802))

(assert (= (and d!1733852 (not c!950633)) b!5446798))

(assert (= (and b!5446798 c!950634) b!5446803))

(assert (= (and b!5446798 (not c!950634)) b!5446794))

(assert (= (and b!5446794 (not res!2319432)) b!5446806))

(assert (= (and b!5446806 res!2319437) b!5446795))

(assert (= (and b!5446795 res!2319435) b!5446797))

(assert (= (and b!5446797 res!2319439) b!5446804))

(assert (= (and b!5446806 (not res!2319436)) b!5446805))

(assert (= (and b!5446805 res!2319438) b!5446796))

(assert (= (and b!5446796 (not res!2319434)) b!5446801))

(assert (= (and b!5446801 (not res!2319433)) b!5446799))

(assert (= (or b!5446802 b!5446795 b!5446796) bm!393047))

(declare-fun m!6466516 () Bool)

(assert (=> d!1733852 m!6466516))

(declare-fun m!6466518 () Bool)

(assert (=> d!1733852 m!6466518))

(declare-fun m!6466520 () Bool)

(assert (=> b!5446799 m!6466520))

(assert (=> b!5446800 m!6466520))

(assert (=> b!5446800 m!6466520))

(declare-fun m!6466522 () Bool)

(assert (=> b!5446800 m!6466522))

(declare-fun m!6466524 () Bool)

(assert (=> b!5446800 m!6466524))

(assert (=> b!5446800 m!6466522))

(assert (=> b!5446800 m!6466524))

(declare-fun m!6466528 () Bool)

(assert (=> b!5446800 m!6466528))

(declare-fun m!6466532 () Bool)

(assert (=> b!5446807 m!6466532))

(assert (=> b!5446801 m!6466524))

(assert (=> b!5446801 m!6466524))

(declare-fun m!6466538 () Bool)

(assert (=> b!5446801 m!6466538))

(assert (=> b!5446804 m!6466520))

(assert (=> b!5446797 m!6466524))

(assert (=> b!5446797 m!6466524))

(assert (=> b!5446797 m!6466538))

(assert (=> bm!393047 m!6466516))

(assert (=> bm!392894 d!1733852))

(declare-fun c!950642 () Bool)

(declare-fun bm!393054 () Bool)

(declare-fun c!950643 () Bool)

(declare-fun call!393060 () Bool)

(assert (=> bm!393054 (= call!393060 (validRegex!7013 (ite c!950642 (reg!15606 r!7292) (ite c!950643 (regOne!31067 r!7292) (regOne!31066 r!7292)))))))

(declare-fun b!5446838 () Bool)

(declare-fun e!3373693 () Bool)

(assert (=> b!5446838 (= e!3373693 call!393060)))

(declare-fun b!5446839 () Bool)

(declare-fun e!3373697 () Bool)

(declare-fun e!3373695 () Bool)

(assert (=> b!5446839 (= e!3373697 e!3373695)))

(assert (=> b!5446839 (= c!950642 ((_ is Star!15277) r!7292))))

(declare-fun d!1733856 () Bool)

(declare-fun res!2319459 () Bool)

(assert (=> d!1733856 (=> res!2319459 e!3373697)))

(assert (=> d!1733856 (= res!2319459 ((_ is ElementMatch!15277) r!7292))))

(assert (=> d!1733856 (= (validRegex!7013 r!7292) e!3373697)))

(declare-fun b!5446840 () Bool)

(declare-fun e!3373694 () Bool)

(declare-fun call!393061 () Bool)

(assert (=> b!5446840 (= e!3373694 call!393061)))

(declare-fun b!5446841 () Bool)

(declare-fun e!3373698 () Bool)

(assert (=> b!5446841 (= e!3373695 e!3373698)))

(assert (=> b!5446841 (= c!950643 ((_ is Union!15277) r!7292))))

(declare-fun b!5446842 () Bool)

(declare-fun res!2319458 () Bool)

(assert (=> b!5446842 (=> (not res!2319458) (not e!3373694))))

(declare-fun call!393059 () Bool)

(assert (=> b!5446842 (= res!2319458 call!393059)))

(assert (=> b!5446842 (= e!3373698 e!3373694)))

(declare-fun b!5446843 () Bool)

(declare-fun e!3373692 () Bool)

(assert (=> b!5446843 (= e!3373692 call!393061)))

(declare-fun bm!393055 () Bool)

(assert (=> bm!393055 (= call!393061 (validRegex!7013 (ite c!950643 (regTwo!31067 r!7292) (regTwo!31066 r!7292))))))

(declare-fun bm!393056 () Bool)

(assert (=> bm!393056 (= call!393059 call!393060)))

(declare-fun b!5446844 () Bool)

(assert (=> b!5446844 (= e!3373695 e!3373693)))

(declare-fun res!2319457 () Bool)

(assert (=> b!5446844 (= res!2319457 (not (nullable!5446 (reg!15606 r!7292))))))

(assert (=> b!5446844 (=> (not res!2319457) (not e!3373693))))

(declare-fun b!5446845 () Bool)

(declare-fun e!3373696 () Bool)

(assert (=> b!5446845 (= e!3373696 e!3373692)))

(declare-fun res!2319456 () Bool)

(assert (=> b!5446845 (=> (not res!2319456) (not e!3373692))))

(assert (=> b!5446845 (= res!2319456 call!393059)))

(declare-fun b!5446846 () Bool)

(declare-fun res!2319460 () Bool)

(assert (=> b!5446846 (=> res!2319460 e!3373696)))

(assert (=> b!5446846 (= res!2319460 (not ((_ is Concat!24122) r!7292)))))

(assert (=> b!5446846 (= e!3373698 e!3373696)))

(assert (= (and d!1733856 (not res!2319459)) b!5446839))

(assert (= (and b!5446839 c!950642) b!5446844))

(assert (= (and b!5446839 (not c!950642)) b!5446841))

(assert (= (and b!5446844 res!2319457) b!5446838))

(assert (= (and b!5446841 c!950643) b!5446842))

(assert (= (and b!5446841 (not c!950643)) b!5446846))

(assert (= (and b!5446842 res!2319458) b!5446840))

(assert (= (and b!5446846 (not res!2319460)) b!5446845))

(assert (= (and b!5446845 res!2319456) b!5446843))

(assert (= (or b!5446840 b!5446843) bm!393055))

(assert (= (or b!5446842 b!5446845) bm!393056))

(assert (= (or b!5446838 bm!393056) bm!393054))

(declare-fun m!6466564 () Bool)

(assert (=> bm!393054 m!6466564))

(declare-fun m!6466566 () Bool)

(assert (=> bm!393055 m!6466566))

(declare-fun m!6466568 () Bool)

(assert (=> b!5446844 m!6466568))

(assert (=> start!570878 d!1733856))

(declare-fun b!5446847 () Bool)

(declare-fun res!2319461 () Bool)

(declare-fun e!3373701 () Bool)

(assert (=> b!5446847 (=> res!2319461 e!3373701)))

(assert (=> b!5446847 (= res!2319461 (not ((_ is ElementMatch!15277) (ite c!950418 lt!2222301 (ite c!950414 (Concat!24122 (regOne!31066 (regOne!31066 r!7292)) (Concat!24122 (regTwo!31066 (regOne!31066 r!7292)) lt!2222211)) lt!2222202)))))))

(declare-fun e!3373702 () Bool)

(assert (=> b!5446847 (= e!3373702 e!3373701)))

(declare-fun b!5446848 () Bool)

(declare-fun res!2319464 () Bool)

(declare-fun e!3373704 () Bool)

(assert (=> b!5446848 (=> (not res!2319464) (not e!3373704))))

(declare-fun call!393062 () Bool)

(assert (=> b!5446848 (= res!2319464 (not call!393062))))

(declare-fun b!5446849 () Bool)

(declare-fun e!3373705 () Bool)

(declare-fun e!3373699 () Bool)

(assert (=> b!5446849 (= e!3373705 e!3373699)))

(declare-fun res!2319463 () Bool)

(assert (=> b!5446849 (=> res!2319463 e!3373699)))

(assert (=> b!5446849 (= res!2319463 call!393062)))

(declare-fun b!5446850 () Bool)

(declare-fun res!2319468 () Bool)

(assert (=> b!5446850 (=> (not res!2319468) (not e!3373704))))

(assert (=> b!5446850 (= res!2319468 (isEmpty!33985 (tail!10774 s!2326)))))

(declare-fun b!5446851 () Bool)

(declare-fun e!3373700 () Bool)

(assert (=> b!5446851 (= e!3373700 e!3373702)))

(declare-fun c!950646 () Bool)

(assert (=> b!5446851 (= c!950646 ((_ is EmptyLang!15277) (ite c!950418 lt!2222301 (ite c!950414 (Concat!24122 (regOne!31066 (regOne!31066 r!7292)) (Concat!24122 (regTwo!31066 (regOne!31066 r!7292)) lt!2222211)) lt!2222202))))))

(declare-fun b!5446852 () Bool)

(assert (=> b!5446852 (= e!3373699 (not (= (head!11677 s!2326) (c!950421 (ite c!950418 lt!2222301 (ite c!950414 (Concat!24122 (regOne!31066 (regOne!31066 r!7292)) (Concat!24122 (regTwo!31066 (regOne!31066 r!7292)) lt!2222211)) lt!2222202))))))))

(declare-fun e!3373703 () Bool)

(declare-fun b!5446853 () Bool)

(assert (=> b!5446853 (= e!3373703 (matchR!7462 (derivativeStep!4301 (ite c!950418 lt!2222301 (ite c!950414 (Concat!24122 (regOne!31066 (regOne!31066 r!7292)) (Concat!24122 (regTwo!31066 (regOne!31066 r!7292)) lt!2222211)) lt!2222202)) (head!11677 s!2326)) (tail!10774 s!2326)))))

(declare-fun b!5446854 () Bool)

(declare-fun res!2319462 () Bool)

(assert (=> b!5446854 (=> res!2319462 e!3373699)))

(assert (=> b!5446854 (= res!2319462 (not (isEmpty!33985 (tail!10774 s!2326))))))

(declare-fun b!5446856 () Bool)

(declare-fun lt!2222468 () Bool)

(assert (=> b!5446856 (= e!3373702 (not lt!2222468))))

(declare-fun bm!393057 () Bool)

(assert (=> bm!393057 (= call!393062 (isEmpty!33985 s!2326))))

(declare-fun b!5446857 () Bool)

(assert (=> b!5446857 (= e!3373704 (= (head!11677 s!2326) (c!950421 (ite c!950418 lt!2222301 (ite c!950414 (Concat!24122 (regOne!31066 (regOne!31066 r!7292)) (Concat!24122 (regTwo!31066 (regOne!31066 r!7292)) lt!2222211)) lt!2222202)))))))

(declare-fun b!5446858 () Bool)

(assert (=> b!5446858 (= e!3373701 e!3373705)))

(declare-fun res!2319467 () Bool)

(assert (=> b!5446858 (=> (not res!2319467) (not e!3373705))))

(assert (=> b!5446858 (= res!2319467 (not lt!2222468))))

(declare-fun b!5446859 () Bool)

(declare-fun res!2319465 () Bool)

(assert (=> b!5446859 (=> res!2319465 e!3373701)))

(assert (=> b!5446859 (= res!2319465 e!3373704)))

(declare-fun res!2319466 () Bool)

(assert (=> b!5446859 (=> (not res!2319466) (not e!3373704))))

(assert (=> b!5446859 (= res!2319466 lt!2222468)))

(declare-fun b!5446860 () Bool)

(assert (=> b!5446860 (= e!3373703 (nullable!5446 (ite c!950418 lt!2222301 (ite c!950414 (Concat!24122 (regOne!31066 (regOne!31066 r!7292)) (Concat!24122 (regTwo!31066 (regOne!31066 r!7292)) lt!2222211)) lt!2222202))))))

(declare-fun b!5446855 () Bool)

(assert (=> b!5446855 (= e!3373700 (= lt!2222468 call!393062))))

(declare-fun d!1733866 () Bool)

(assert (=> d!1733866 e!3373700))

(declare-fun c!950645 () Bool)

(assert (=> d!1733866 (= c!950645 ((_ is EmptyExpr!15277) (ite c!950418 lt!2222301 (ite c!950414 (Concat!24122 (regOne!31066 (regOne!31066 r!7292)) (Concat!24122 (regTwo!31066 (regOne!31066 r!7292)) lt!2222211)) lt!2222202))))))

(assert (=> d!1733866 (= lt!2222468 e!3373703)))

(declare-fun c!950644 () Bool)

(assert (=> d!1733866 (= c!950644 (isEmpty!33985 s!2326))))

(assert (=> d!1733866 (validRegex!7013 (ite c!950418 lt!2222301 (ite c!950414 (Concat!24122 (regOne!31066 (regOne!31066 r!7292)) (Concat!24122 (regTwo!31066 (regOne!31066 r!7292)) lt!2222211)) lt!2222202)))))

(assert (=> d!1733866 (= (matchR!7462 (ite c!950418 lt!2222301 (ite c!950414 (Concat!24122 (regOne!31066 (regOne!31066 r!7292)) (Concat!24122 (regTwo!31066 (regOne!31066 r!7292)) lt!2222211)) lt!2222202)) s!2326) lt!2222468)))

(assert (= (and d!1733866 c!950644) b!5446860))

(assert (= (and d!1733866 (not c!950644)) b!5446853))

(assert (= (and d!1733866 c!950645) b!5446855))

(assert (= (and d!1733866 (not c!950645)) b!5446851))

(assert (= (and b!5446851 c!950646) b!5446856))

(assert (= (and b!5446851 (not c!950646)) b!5446847))

(assert (= (and b!5446847 (not res!2319461)) b!5446859))

(assert (= (and b!5446859 res!2319466) b!5446848))

(assert (= (and b!5446848 res!2319464) b!5446850))

(assert (= (and b!5446850 res!2319468) b!5446857))

(assert (= (and b!5446859 (not res!2319465)) b!5446858))

(assert (= (and b!5446858 res!2319467) b!5446849))

(assert (= (and b!5446849 (not res!2319463)) b!5446854))

(assert (= (and b!5446854 (not res!2319462)) b!5446852))

(assert (= (or b!5446855 b!5446848 b!5446849) bm!393057))

(assert (=> d!1733866 m!6466062))

(declare-fun m!6466570 () Bool)

(assert (=> d!1733866 m!6466570))

(assert (=> b!5446852 m!6466066))

(assert (=> b!5446853 m!6466066))

(assert (=> b!5446853 m!6466066))

(declare-fun m!6466572 () Bool)

(assert (=> b!5446853 m!6466572))

(assert (=> b!5446853 m!6466070))

(assert (=> b!5446853 m!6466572))

(assert (=> b!5446853 m!6466070))

(declare-fun m!6466574 () Bool)

(assert (=> b!5446853 m!6466574))

(declare-fun m!6466576 () Bool)

(assert (=> b!5446860 m!6466576))

(assert (=> b!5446854 m!6466070))

(assert (=> b!5446854 m!6466070))

(assert (=> b!5446854 m!6466076))

(assert (=> b!5446857 m!6466066))

(assert (=> b!5446850 m!6466070))

(assert (=> b!5446850 m!6466070))

(assert (=> b!5446850 m!6466076))

(assert (=> bm!393057 m!6466062))

(assert (=> bm!392926 d!1733866))

(declare-fun d!1733868 () Bool)

(assert (=> d!1733868 (= (isDefined!12091 (ite c!950414 call!392913 lt!2222296)) (not (isEmpty!33989 (ite c!950414 call!392913 lt!2222296))))))

(declare-fun bs!1256657 () Bool)

(assert (= bs!1256657 d!1733868))

(declare-fun m!6466578 () Bool)

(assert (=> bs!1256657 m!6466578))

(assert (=> bm!392831 d!1733868))

(declare-fun d!1733870 () Bool)

(assert (=> d!1733870 (matchR!7462 (Concat!24122 lt!2222247 (regTwo!31066 r!7292)) (++!13633 (ite c!950409 (_2!35779 lt!2222226) lt!2222152) (ite c!950409 (_2!35779 lt!2222282) (_2!35779 lt!2222148))))))

(declare-fun lt!2222476 () Unit!154704)

(declare-fun choose!41332 (Regex!15277 Regex!15277 List!62130 List!62130) Unit!154704)

(assert (=> d!1733870 (= lt!2222476 (choose!41332 lt!2222247 (regTwo!31066 r!7292) (ite c!950409 (_2!35779 lt!2222226) lt!2222152) (ite c!950409 (_2!35779 lt!2222282) (_2!35779 lt!2222148))))))

(declare-fun e!3373721 () Bool)

(assert (=> d!1733870 e!3373721))

(declare-fun res!2319481 () Bool)

(assert (=> d!1733870 (=> (not res!2319481) (not e!3373721))))

(assert (=> d!1733870 (= res!2319481 (validRegex!7013 lt!2222247))))

(assert (=> d!1733870 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!244 lt!2222247 (regTwo!31066 r!7292) (ite c!950409 (_2!35779 lt!2222226) lt!2222152) (ite c!950409 (_2!35779 lt!2222282) (_2!35779 lt!2222148))) lt!2222476)))

(declare-fun b!5446887 () Bool)

(assert (=> b!5446887 (= e!3373721 (validRegex!7013 (regTwo!31066 r!7292)))))

(assert (= (and d!1733870 res!2319481) b!5446887))

(declare-fun m!6466624 () Bool)

(assert (=> d!1733870 m!6466624))

(assert (=> d!1733870 m!6466624))

(declare-fun m!6466626 () Bool)

(assert (=> d!1733870 m!6466626))

(declare-fun m!6466628 () Bool)

(assert (=> d!1733870 m!6466628))

(declare-fun m!6466630 () Bool)

(assert (=> d!1733870 m!6466630))

(declare-fun m!6466632 () Bool)

(assert (=> b!5446887 m!6466632))

(assert (=> bm!392779 d!1733870))

(declare-fun bs!1256686 () Bool)

(declare-fun d!1733880 () Bool)

(assert (= bs!1256686 (and d!1733880 b!5445993)))

(declare-fun lambda!287279 () Int)

(assert (=> bs!1256686 (= lambda!287279 lambda!287194)))

(declare-fun bs!1256688 () Bool)

(assert (= bs!1256688 (and d!1733880 b!5446006)))

(assert (=> bs!1256688 (= lambda!287279 lambda!287196)))

(declare-fun bs!1256689 () Bool)

(assert (= bs!1256689 (and d!1733880 b!5446022)))

(assert (=> bs!1256689 (= lambda!287279 lambda!287205)))

(declare-fun b!5446936 () Bool)

(declare-fun e!3373750 () Bool)

(declare-fun e!3373754 () Bool)

(assert (=> b!5446936 (= e!3373750 e!3373754)))

(declare-fun c!950677 () Bool)

(declare-fun tail!10775 (List!62131) List!62131)

(assert (=> b!5446936 (= c!950677 (isEmpty!33987 (tail!10775 (exprs!5161 (h!68456 zl!343)))))))

(declare-fun b!5446937 () Bool)

(declare-fun lt!2222482 () Regex!15277)

(declare-fun isEmptyExpr!1012 (Regex!15277) Bool)

(assert (=> b!5446937 (= e!3373750 (isEmptyExpr!1012 lt!2222482))))

(declare-fun b!5446938 () Bool)

(declare-fun e!3373751 () Regex!15277)

(assert (=> b!5446938 (= e!3373751 (Concat!24122 (h!68455 (exprs!5161 (h!68456 zl!343))) (generalisedConcat!946 (t!375358 (exprs!5161 (h!68456 zl!343))))))))

(declare-fun b!5446939 () Bool)

(declare-fun e!3373749 () Regex!15277)

(assert (=> b!5446939 (= e!3373749 e!3373751)))

(declare-fun c!950676 () Bool)

(assert (=> b!5446939 (= c!950676 ((_ is Cons!62007) (exprs!5161 (h!68456 zl!343))))))

(declare-fun e!3373752 () Bool)

(assert (=> d!1733880 e!3373752))

(declare-fun res!2319491 () Bool)

(assert (=> d!1733880 (=> (not res!2319491) (not e!3373752))))

(assert (=> d!1733880 (= res!2319491 (validRegex!7013 lt!2222482))))

(assert (=> d!1733880 (= lt!2222482 e!3373749)))

(declare-fun c!950675 () Bool)

(declare-fun e!3373753 () Bool)

(assert (=> d!1733880 (= c!950675 e!3373753)))

(declare-fun res!2319490 () Bool)

(assert (=> d!1733880 (=> (not res!2319490) (not e!3373753))))

(assert (=> d!1733880 (= res!2319490 ((_ is Cons!62007) (exprs!5161 (h!68456 zl!343))))))

(assert (=> d!1733880 (forall!14580 (exprs!5161 (h!68456 zl!343)) lambda!287279)))

(assert (=> d!1733880 (= (generalisedConcat!946 (exprs!5161 (h!68456 zl!343))) lt!2222482)))

(declare-fun b!5446940 () Bool)

(declare-fun head!11678 (List!62131) Regex!15277)

(assert (=> b!5446940 (= e!3373754 (= lt!2222482 (head!11678 (exprs!5161 (h!68456 zl!343)))))))

(declare-fun b!5446941 () Bool)

(declare-fun isConcat!535 (Regex!15277) Bool)

(assert (=> b!5446941 (= e!3373754 (isConcat!535 lt!2222482))))

(declare-fun b!5446942 () Bool)

(assert (=> b!5446942 (= e!3373753 (isEmpty!33987 (t!375358 (exprs!5161 (h!68456 zl!343)))))))

(declare-fun b!5446943 () Bool)

(assert (=> b!5446943 (= e!3373751 EmptyExpr!15277)))

(declare-fun b!5446944 () Bool)

(assert (=> b!5446944 (= e!3373752 e!3373750)))

(declare-fun c!950678 () Bool)

(assert (=> b!5446944 (= c!950678 (isEmpty!33987 (exprs!5161 (h!68456 zl!343))))))

(declare-fun b!5446945 () Bool)

(assert (=> b!5446945 (= e!3373749 (h!68455 (exprs!5161 (h!68456 zl!343))))))

(assert (= (and d!1733880 res!2319490) b!5446942))

(assert (= (and d!1733880 c!950675) b!5446945))

(assert (= (and d!1733880 (not c!950675)) b!5446939))

(assert (= (and b!5446939 c!950676) b!5446938))

(assert (= (and b!5446939 (not c!950676)) b!5446943))

(assert (= (and d!1733880 res!2319491) b!5446944))

(assert (= (and b!5446944 c!950678) b!5446937))

(assert (= (and b!5446944 (not c!950678)) b!5446936))

(assert (= (and b!5446936 c!950677) b!5446940))

(assert (= (and b!5446936 (not c!950677)) b!5446941))

(declare-fun m!6466674 () Bool)

(assert (=> d!1733880 m!6466674))

(declare-fun m!6466676 () Bool)

(assert (=> d!1733880 m!6466676))

(declare-fun m!6466678 () Bool)

(assert (=> b!5446937 m!6466678))

(declare-fun m!6466680 () Bool)

(assert (=> b!5446941 m!6466680))

(declare-fun m!6466682 () Bool)

(assert (=> b!5446944 m!6466682))

(declare-fun m!6466684 () Bool)

(assert (=> b!5446936 m!6466684))

(assert (=> b!5446936 m!6466684))

(declare-fun m!6466686 () Bool)

(assert (=> b!5446936 m!6466686))

(declare-fun m!6466688 () Bool)

(assert (=> b!5446938 m!6466688))

(assert (=> b!5446942 m!6465358))

(declare-fun m!6466690 () Bool)

(assert (=> b!5446940 m!6466690))

(assert (=> b!5445982 d!1733880))

(declare-fun d!1733900 () Bool)

(assert (=> d!1733900 (= (matchR!7462 (ite c!950418 lt!2222267 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) (ite (or c!950418 c!950410 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326))) (matchRSpec!2380 (ite c!950418 lt!2222267 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) (ite (or c!950418 c!950410 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326))))))

(declare-fun lt!2222485 () Unit!154704)

(declare-fun choose!41333 (Regex!15277 List!62130) Unit!154704)

(assert (=> d!1733900 (= lt!2222485 (choose!41333 (ite c!950418 lt!2222267 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) (ite (or c!950418 c!950410 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326))))))

(assert (=> d!1733900 (validRegex!7013 (ite c!950418 lt!2222267 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))))))

(assert (=> d!1733900 (= (mainMatchTheorem!2380 (ite c!950418 lt!2222267 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) (ite (or c!950418 c!950410 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326))) lt!2222485)))

(declare-fun bs!1256700 () Bool)

(assert (= bs!1256700 d!1733900))

(declare-fun m!6466692 () Bool)

(assert (=> bs!1256700 m!6466692))

(declare-fun m!6466694 () Bool)

(assert (=> bs!1256700 m!6466694))

(declare-fun m!6466696 () Bool)

(assert (=> bs!1256700 m!6466696))

(declare-fun m!6466698 () Bool)

(assert (=> bs!1256700 m!6466698))

(assert (=> bm!392959 d!1733900))

(declare-fun bs!1256718 () Bool)

(declare-fun d!1733902 () Bool)

(assert (= bs!1256718 (and d!1733902 b!5446005)))

(declare-fun lambda!287284 () Int)

(assert (=> bs!1256718 (not (= lambda!287284 lambda!287188))))

(declare-fun bs!1256721 () Bool)

(assert (= bs!1256721 (and d!1733902 b!5445993)))

(assert (=> bs!1256721 (not (= lambda!287284 lambda!287192))))

(declare-fun bs!1256723 () Bool)

(assert (= bs!1256723 (and d!1733902 b!5446006)))

(assert (=> bs!1256723 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (_1!35779 lt!2222148))) (_1!35779 lt!2222148)) (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 lt!2222247)) lt!2222247)) (= lambda!287284 lambda!287199))))

(assert (=> bs!1256718 (not (= lambda!287284 lambda!287186))))

(declare-fun bs!1256724 () Bool)

(assert (= bs!1256724 (and d!1733902 d!1733728)))

(assert (=> bs!1256724 (not (= lambda!287284 lambda!287251))))

(declare-fun bs!1256725 () Bool)

(assert (= bs!1256725 (and d!1733902 d!1733706)))

(assert (=> bs!1256725 (not (= lambda!287284 lambda!287238))))

(declare-fun bs!1256727 () Bool)

(assert (= bs!1256727 (and d!1733902 b!5446028)))

(assert (=> bs!1256727 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (_1!35779 lt!2222148))) s!2326) (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (regOne!31066 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 lt!2222247)) lt!2222146)) (= lambda!287284 lambda!287181))))

(declare-fun bs!1256728 () Bool)

(assert (= bs!1256728 (and d!1733902 b!5446695)))

(assert (=> bs!1256728 (not (= lambda!287284 lambda!287268))))

(assert (=> bs!1256727 (not (= lambda!287284 lambda!287182))))

(declare-fun bs!1256730 () Bool)

(assert (= bs!1256730 (and d!1733902 b!5445995)))

(assert (=> bs!1256730 (not (= lambda!287284 lambda!287204))))

(assert (=> bs!1256723 (not (= lambda!287284 lambda!287201))))

(declare-fun bs!1256731 () Bool)

(assert (= bs!1256731 (and d!1733902 b!5446692)))

(assert (=> bs!1256731 (not (= lambda!287284 lambda!287267))))

(declare-fun bs!1256732 () Bool)

(assert (= bs!1256732 (and d!1733902 b!5446036)))

(assert (=> bs!1256732 (not (= lambda!287284 lambda!287179))))

(assert (=> bs!1256718 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (_1!35779 lt!2222148))) s!2326) (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (regOne!31066 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 lt!2222247)) lt!2222299)) (= lambda!287284 lambda!287185))))

(assert (=> bs!1256723 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (_1!35779 lt!2222148))) s!2326) (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) lt!2222184) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 lt!2222247)) (regTwo!31066 r!7292))) (= lambda!287284 lambda!287197))))

(declare-fun bs!1256734 () Bool)

(assert (= bs!1256734 (and d!1733902 b!5446578)))

(assert (=> bs!1256734 (not (= lambda!287284 lambda!287257))))

(assert (=> bs!1256718 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (_1!35779 lt!2222148))) s!2326) (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (regTwo!31066 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 lt!2222247)) lt!2222211)) (= lambda!287284 lambda!287187))))

(assert (=> bs!1256730 (not (= lambda!287284 lambda!287203))))

(assert (=> bs!1256727 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (_1!35779 lt!2222148))) s!2326) (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (regTwo!31066 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 lt!2222247)) lt!2222240)) (= lambda!287284 lambda!287183))))

(assert (=> bs!1256723 (not (= lambda!287284 lambda!287198))))

(assert (=> bs!1256730 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (_1!35779 lt!2222148))) Nil!62006) (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 lt!2222247)) lt!2222247)) (= lambda!287284 lambda!287202))))

(assert (=> bs!1256725 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (_1!35779 lt!2222148))) s!2326) (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184))) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 lt!2222247)) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))))) (= lambda!287284 lambda!287237))))

(declare-fun bs!1256737 () Bool)

(assert (= bs!1256737 (and d!1733902 b!5446575)))

(assert (=> bs!1256737 (not (= lambda!287284 lambda!287256))))

(assert (=> bs!1256727 (not (= lambda!287284 lambda!287184))))

(assert (=> bs!1256732 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (_1!35779 lt!2222148))) s!2326) (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (regOne!31066 r!7292)) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 lt!2222247)) (regTwo!31066 r!7292))) (= lambda!287284 lambda!287178))))

(assert (=> bs!1256724 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (_1!35779 lt!2222148))) (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 lt!2222247)) (Star!15277 (reg!15606 (regOne!31066 r!7292))))) (= lambda!287284 lambda!287250))))

(assert (=> bs!1256721 (not (= lambda!287284 lambda!287193))))

(declare-fun bs!1256741 () Bool)

(assert (= bs!1256741 (and d!1733902 b!5446010)))

(assert (=> bs!1256741 (not (= lambda!287284 lambda!287190))))

(assert (=> bs!1256723 (not (= lambda!287284 lambda!287200))))

(assert (=> bs!1256721 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (_1!35779 lt!2222148))) (_1!35779 lt!2222282)) (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 lt!2222247)) lt!2222247)) (= lambda!287284 lambda!287191))))

(assert (=> bs!1256741 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (_1!35779 lt!2222148))) s!2326) (= (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) lt!2222247) (= (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 lt!2222247)) (regTwo!31066 r!7292))) (= lambda!287284 lambda!287189))))

(assert (=> d!1733902 true))

(assert (=> d!1733902 true))

(assert (=> d!1733902 true))

(assert (=> d!1733902 (= (isDefined!12091 (findConcatSeparation!1802 (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 lt!2222247)) Nil!62006 (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (_1!35779 lt!2222148))) (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (_1!35779 lt!2222148))))) (Exists!2458 lambda!287284))))

(declare-fun lt!2222488 () Unit!154704)

(declare-fun choose!41335 (Regex!15277 Regex!15277 List!62130) Unit!154704)

(assert (=> d!1733902 (= lt!2222488 (choose!41335 (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 lt!2222247)) (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (_1!35779 lt!2222148)))))))

(assert (=> d!1733902 (validRegex!7013 (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))))))

(assert (=> d!1733902 (= (lemmaFindConcatSeparationEquivalentToExists!1566 (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 lt!2222247)) (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (_1!35779 lt!2222148)))) lt!2222488)))

(declare-fun bs!1256747 () Bool)

(assert (= bs!1256747 d!1733902))

(declare-fun m!6466706 () Bool)

(assert (=> bs!1256747 m!6466706))

(declare-fun m!6466708 () Bool)

(assert (=> bs!1256747 m!6466708))

(declare-fun m!6466710 () Bool)

(assert (=> bs!1256747 m!6466710))

(declare-fun m!6466712 () Bool)

(assert (=> bs!1256747 m!6466712))

(declare-fun m!6466714 () Bool)

(assert (=> bs!1256747 m!6466714))

(assert (=> bs!1256747 m!6466708))

(assert (=> bm!392865 d!1733902))

(declare-fun d!1733906 () Bool)

(declare-fun c!950683 () Bool)

(assert (=> d!1733906 (= c!950683 (isEmpty!33985 s!2326))))

(declare-fun e!3373764 () Bool)

(assert (=> d!1733906 (= (matchZipper!1521 (ite c!950418 lt!2222265 lt!2222251) s!2326) e!3373764)))

(declare-fun b!5446961 () Bool)

(assert (=> b!5446961 (= e!3373764 (nullableZipper!1480 (ite c!950418 lt!2222265 lt!2222251)))))

(declare-fun b!5446962 () Bool)

(assert (=> b!5446962 (= e!3373764 (matchZipper!1521 (derivationStepZipper!1496 (ite c!950418 lt!2222265 lt!2222251) (head!11677 s!2326)) (tail!10774 s!2326)))))

(assert (= (and d!1733906 c!950683) b!5446961))

(assert (= (and d!1733906 (not c!950683)) b!5446962))

(assert (=> d!1733906 m!6466062))

(declare-fun m!6466716 () Bool)

(assert (=> b!5446961 m!6466716))

(assert (=> b!5446962 m!6466066))

(assert (=> b!5446962 m!6466066))

(declare-fun m!6466718 () Bool)

(assert (=> b!5446962 m!6466718))

(assert (=> b!5446962 m!6466070))

(assert (=> b!5446962 m!6466718))

(assert (=> b!5446962 m!6466070))

(declare-fun m!6466720 () Bool)

(assert (=> b!5446962 m!6466720))

(assert (=> bm!392895 d!1733906))

(declare-fun bs!1256758 () Bool)

(declare-fun b!5446967 () Bool)

(assert (= bs!1256758 (and b!5446967 b!5446005)))

(declare-fun lambda!287286 () Int)

(assert (=> bs!1256758 (not (= lambda!287286 lambda!287188))))

(declare-fun bs!1256759 () Bool)

(assert (= bs!1256759 (and b!5446967 b!5445993)))

(assert (=> bs!1256759 (= (and (= (ite (or c!950418 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326)) (_1!35779 lt!2222282)) (= (reg!15606 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292)))) lt!2222247)) (= lambda!287286 lambda!287192))))

(declare-fun bs!1256761 () Bool)

(assert (= bs!1256761 (and b!5446967 b!5446006)))

(assert (=> bs!1256761 (not (= lambda!287286 lambda!287199))))

(assert (=> bs!1256758 (not (= lambda!287286 lambda!287186))))

(declare-fun bs!1256763 () Bool)

(assert (= bs!1256763 (and b!5446967 d!1733728)))

(assert (=> bs!1256763 (= (and (= (ite (or c!950418 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326)) (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) (= (reg!15606 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292)))) (Star!15277 (reg!15606 (regOne!31066 r!7292))))) (= lambda!287286 lambda!287251))))

(declare-fun bs!1256764 () Bool)

(assert (= bs!1256764 (and b!5446967 b!5446028)))

(assert (=> bs!1256764 (not (= lambda!287286 lambda!287181))))

(declare-fun bs!1256765 () Bool)

(assert (= bs!1256765 (and b!5446967 b!5446695)))

(assert (=> bs!1256765 (not (= lambda!287286 lambda!287268))))

(assert (=> bs!1256764 (not (= lambda!287286 lambda!287182))))

(declare-fun bs!1256766 () Bool)

(assert (= bs!1256766 (and b!5446967 b!5445995)))

(assert (=> bs!1256766 (= (and (= (ite (or c!950418 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326)) Nil!62006) (= (reg!15606 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292)))) lt!2222247)) (= lambda!287286 lambda!287204))))

(assert (=> bs!1256761 (= (and (= (ite (or c!950418 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326)) (_1!35779 lt!2222148)) (= (reg!15606 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292)))) lt!2222247)) (= lambda!287286 lambda!287201))))

(declare-fun bs!1256768 () Bool)

(assert (= bs!1256768 (and b!5446967 b!5446692)))

(assert (=> bs!1256768 (= (and (= (ite (or c!950418 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326)) (ite (or c!950418 c!950410) s!2326 (ite c!950411 (_1!35779 lt!2222148) s!2326))) (= (reg!15606 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) (reg!15606 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292)))))) (= (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292)))) (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292)))))) (= lambda!287286 lambda!287267))))

(declare-fun bs!1256769 () Bool)

(assert (= bs!1256769 (and b!5446967 b!5446036)))

(assert (=> bs!1256769 (not (= lambda!287286 lambda!287179))))

(assert (=> bs!1256758 (not (= lambda!287286 lambda!287185))))

(assert (=> bs!1256761 (not (= lambda!287286 lambda!287197))))

(declare-fun bs!1256770 () Bool)

(assert (= bs!1256770 (and b!5446967 b!5446578)))

(assert (=> bs!1256770 (not (= lambda!287286 lambda!287257))))

(assert (=> bs!1256758 (not (= lambda!287286 lambda!287187))))

(assert (=> bs!1256766 (not (= lambda!287286 lambda!287203))))

(assert (=> bs!1256764 (not (= lambda!287286 lambda!287183))))

(assert (=> bs!1256761 (not (= lambda!287286 lambda!287198))))

(assert (=> bs!1256766 (not (= lambda!287286 lambda!287202))))

(declare-fun bs!1256771 () Bool)

(assert (= bs!1256771 (and b!5446967 d!1733706)))

(assert (=> bs!1256771 (not (= lambda!287286 lambda!287237))))

(declare-fun bs!1256772 () Bool)

(assert (= bs!1256772 (and b!5446967 b!5446575)))

(assert (=> bs!1256772 (= (and (= (ite (or c!950418 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326)) s!2326) (= (reg!15606 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) (reg!15606 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221))))) (= (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292)))) (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221))))) (= lambda!287286 lambda!287256))))

(assert (=> bs!1256764 (not (= lambda!287286 lambda!287184))))

(assert (=> bs!1256769 (not (= lambda!287286 lambda!287178))))

(assert (=> bs!1256771 (not (= lambda!287286 lambda!287238))))

(declare-fun bs!1256773 () Bool)

(assert (= bs!1256773 (and b!5446967 d!1733902)))

(assert (=> bs!1256773 (not (= lambda!287286 lambda!287284))))

(assert (=> bs!1256763 (not (= lambda!287286 lambda!287250))))

(assert (=> bs!1256759 (not (= lambda!287286 lambda!287193))))

(declare-fun bs!1256774 () Bool)

(assert (= bs!1256774 (and b!5446967 b!5446010)))

(assert (=> bs!1256774 (not (= lambda!287286 lambda!287190))))

(assert (=> bs!1256761 (not (= lambda!287286 lambda!287200))))

(assert (=> bs!1256759 (not (= lambda!287286 lambda!287191))))

(assert (=> bs!1256774 (not (= lambda!287286 lambda!287189))))

(assert (=> b!5446967 true))

(assert (=> b!5446967 true))

(declare-fun bs!1256776 () Bool)

(declare-fun b!5446970 () Bool)

(assert (= bs!1256776 (and b!5446970 b!5446005)))

(declare-fun lambda!287287 () Int)

(assert (=> bs!1256776 (= (and (= (ite (or c!950418 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326)) s!2326) (= (regOne!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) (regTwo!31066 (regOne!31066 r!7292))) (= (regTwo!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) lt!2222211)) (= lambda!287287 lambda!287188))))

(declare-fun bs!1256777 () Bool)

(assert (= bs!1256777 (and b!5446970 b!5445993)))

(assert (=> bs!1256777 (not (= lambda!287287 lambda!287192))))

(declare-fun bs!1256778 () Bool)

(assert (= bs!1256778 (and b!5446970 b!5446006)))

(assert (=> bs!1256778 (not (= lambda!287287 lambda!287199))))

(assert (=> bs!1256776 (= (and (= (ite (or c!950418 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326)) s!2326) (= (regOne!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) (regOne!31066 (regOne!31066 r!7292))) (= (regTwo!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) lt!2222299)) (= lambda!287287 lambda!287186))))

(declare-fun bs!1256779 () Bool)

(assert (= bs!1256779 (and b!5446970 d!1733728)))

(assert (=> bs!1256779 (not (= lambda!287287 lambda!287251))))

(declare-fun bs!1256780 () Bool)

(assert (= bs!1256780 (and b!5446970 b!5446028)))

(assert (=> bs!1256780 (not (= lambda!287287 lambda!287181))))

(declare-fun bs!1256781 () Bool)

(assert (= bs!1256781 (and b!5446970 b!5446695)))

(assert (=> bs!1256781 (= (and (= (ite (or c!950418 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326)) (ite (or c!950418 c!950410) s!2326 (ite c!950411 (_1!35779 lt!2222148) s!2326))) (= (regOne!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) (regOne!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292)))))) (= (regTwo!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) (regTwo!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))))) (= lambda!287287 lambda!287268))))

(assert (=> bs!1256780 (= (and (= (ite (or c!950418 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326)) s!2326) (= (regOne!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) (regOne!31066 (regOne!31066 r!7292))) (= (regTwo!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) lt!2222146)) (= lambda!287287 lambda!287182))))

(declare-fun bs!1256782 () Bool)

(assert (= bs!1256782 (and b!5446970 b!5446967)))

(assert (=> bs!1256782 (not (= lambda!287287 lambda!287286))))

(declare-fun bs!1256783 () Bool)

(assert (= bs!1256783 (and b!5446970 b!5445995)))

(assert (=> bs!1256783 (not (= lambda!287287 lambda!287204))))

(assert (=> bs!1256778 (not (= lambda!287287 lambda!287201))))

(declare-fun bs!1256784 () Bool)

(assert (= bs!1256784 (and b!5446970 b!5446692)))

(assert (=> bs!1256784 (not (= lambda!287287 lambda!287267))))

(declare-fun bs!1256785 () Bool)

(assert (= bs!1256785 (and b!5446970 b!5446036)))

(assert (=> bs!1256785 (= (and (= (ite (or c!950418 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326)) s!2326) (= (regOne!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) (regOne!31066 r!7292)) (= (regTwo!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) (regTwo!31066 r!7292))) (= lambda!287287 lambda!287179))))

(assert (=> bs!1256776 (not (= lambda!287287 lambda!287185))))

(assert (=> bs!1256778 (not (= lambda!287287 lambda!287197))))

(declare-fun bs!1256786 () Bool)

(assert (= bs!1256786 (and b!5446970 b!5446578)))

(assert (=> bs!1256786 (= (and (= (ite (or c!950418 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326)) s!2326) (= (regOne!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) (regOne!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221))))) (= (regTwo!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) (regTwo!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))))) (= lambda!287287 lambda!287257))))

(assert (=> bs!1256776 (not (= lambda!287287 lambda!287187))))

(assert (=> bs!1256783 (= (and (= (ite (or c!950418 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326)) Nil!62006) (= (regOne!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) (reg!15606 (regOne!31066 r!7292))) (= (regTwo!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) lt!2222247)) (= lambda!287287 lambda!287203))))

(assert (=> bs!1256780 (not (= lambda!287287 lambda!287183))))

(assert (=> bs!1256778 (= (and (= (ite (or c!950418 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326)) s!2326) (= (regOne!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) lt!2222184) (= (regTwo!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) (regTwo!31066 r!7292))) (= lambda!287287 lambda!287198))))

(assert (=> bs!1256783 (not (= lambda!287287 lambda!287202))))

(declare-fun bs!1256787 () Bool)

(assert (= bs!1256787 (and b!5446970 d!1733706)))

(assert (=> bs!1256787 (not (= lambda!287287 lambda!287237))))

(declare-fun bs!1256788 () Bool)

(assert (= bs!1256788 (and b!5446970 b!5446575)))

(assert (=> bs!1256788 (not (= lambda!287287 lambda!287256))))

(assert (=> bs!1256780 (= (and (= (ite (or c!950418 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326)) s!2326) (= (regOne!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) (regTwo!31066 (regOne!31066 r!7292))) (= (regTwo!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) lt!2222240)) (= lambda!287287 lambda!287184))))

(assert (=> bs!1256785 (not (= lambda!287287 lambda!287178))))

(assert (=> bs!1256787 (= (and (= (ite (or c!950418 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326)) s!2326) (= (regOne!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184))) (= (regTwo!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))))) (= lambda!287287 lambda!287238))))

(declare-fun bs!1256789 () Bool)

(assert (= bs!1256789 (and b!5446970 d!1733902)))

(assert (=> bs!1256789 (not (= lambda!287287 lambda!287284))))

(assert (=> bs!1256779 (not (= lambda!287287 lambda!287250))))

(assert (=> bs!1256777 (= (and (= (ite (or c!950418 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326)) (_1!35779 lt!2222282)) (= (regOne!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) (reg!15606 (regOne!31066 r!7292))) (= (regTwo!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) lt!2222247)) (= lambda!287287 lambda!287193))))

(declare-fun bs!1256790 () Bool)

(assert (= bs!1256790 (and b!5446970 b!5446010)))

(assert (=> bs!1256790 (= (and (= (ite (or c!950418 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326)) s!2326) (= (regOne!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) lt!2222247) (= (regTwo!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) (regTwo!31066 r!7292))) (= lambda!287287 lambda!287190))))

(assert (=> bs!1256778 (= (and (= (ite (or c!950418 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326)) (_1!35779 lt!2222148)) (= (regOne!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) (reg!15606 (regOne!31066 r!7292))) (= (regTwo!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) lt!2222247)) (= lambda!287287 lambda!287200))))

(assert (=> bs!1256777 (not (= lambda!287287 lambda!287191))))

(assert (=> bs!1256790 (not (= lambda!287287 lambda!287189))))

(assert (=> b!5446970 true))

(assert (=> b!5446970 true))

(declare-fun c!950687 () Bool)

(declare-fun call!393075 () Bool)

(declare-fun bm!393070 () Bool)

(assert (=> bm!393070 (= call!393075 (Exists!2458 (ite c!950687 lambda!287286 lambda!287287)))))

(declare-fun c!950686 () Bool)

(declare-fun d!1733908 () Bool)

(assert (=> d!1733908 (= c!950686 ((_ is EmptyExpr!15277) (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))))))

(declare-fun e!3373765 () Bool)

(assert (=> d!1733908 (= (matchRSpec!2380 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292)))) (ite (or c!950418 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326))) e!3373765)))

(declare-fun e!3373771 () Bool)

(declare-fun b!5446963 () Bool)

(assert (=> b!5446963 (= e!3373771 (= (ite (or c!950418 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326)) (Cons!62006 (c!950421 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) Nil!62006)))))

(declare-fun b!5446964 () Bool)

(declare-fun call!393076 () Bool)

(assert (=> b!5446964 (= e!3373765 call!393076)))

(declare-fun c!950684 () Bool)

(declare-fun b!5446965 () Bool)

(assert (=> b!5446965 (= c!950684 ((_ is Union!15277) (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))))))

(declare-fun e!3373770 () Bool)

(assert (=> b!5446965 (= e!3373771 e!3373770)))

(declare-fun b!5446966 () Bool)

(declare-fun e!3373769 () Bool)

(assert (=> b!5446966 (= e!3373765 e!3373769)))

(declare-fun res!2319500 () Bool)

(assert (=> b!5446966 (= res!2319500 (not ((_ is EmptyLang!15277) (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292)))))))))

(assert (=> b!5446966 (=> (not res!2319500) (not e!3373769))))

(declare-fun e!3373768 () Bool)

(assert (=> b!5446967 (= e!3373768 call!393075)))

(declare-fun b!5446968 () Bool)

(declare-fun e!3373767 () Bool)

(assert (=> b!5446968 (= e!3373767 (matchRSpec!2380 (regTwo!31067 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) (ite (or c!950418 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326))))))

(declare-fun b!5446969 () Bool)

(declare-fun res!2319499 () Bool)

(assert (=> b!5446969 (=> res!2319499 e!3373768)))

(assert (=> b!5446969 (= res!2319499 call!393076)))

(declare-fun e!3373766 () Bool)

(assert (=> b!5446969 (= e!3373766 e!3373768)))

(assert (=> b!5446970 (= e!3373766 call!393075)))

(declare-fun c!950685 () Bool)

(declare-fun b!5446971 () Bool)

(assert (=> b!5446971 (= c!950685 ((_ is ElementMatch!15277) (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))))))

(assert (=> b!5446971 (= e!3373769 e!3373771)))

(declare-fun b!5446972 () Bool)

(assert (=> b!5446972 (= e!3373770 e!3373767)))

(declare-fun res!2319501 () Bool)

(assert (=> b!5446972 (= res!2319501 (matchRSpec!2380 (regOne!31067 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))) (ite (or c!950418 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326))))))

(assert (=> b!5446972 (=> res!2319501 e!3373767)))

(declare-fun bm!393071 () Bool)

(assert (=> bm!393071 (= call!393076 (isEmpty!33985 (ite (or c!950418 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326))))))

(declare-fun b!5446973 () Bool)

(assert (=> b!5446973 (= e!3373770 e!3373766)))

(assert (=> b!5446973 (= c!950687 ((_ is Star!15277) (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))))))

(assert (= (and d!1733908 c!950686) b!5446964))

(assert (= (and d!1733908 (not c!950686)) b!5446966))

(assert (= (and b!5446966 res!2319500) b!5446971))

(assert (= (and b!5446971 c!950685) b!5446963))

(assert (= (and b!5446971 (not c!950685)) b!5446965))

(assert (= (and b!5446965 c!950684) b!5446972))

(assert (= (and b!5446965 (not c!950684)) b!5446973))

(assert (= (and b!5446972 (not res!2319501)) b!5446968))

(assert (= (and b!5446973 c!950687) b!5446969))

(assert (= (and b!5446973 (not c!950687)) b!5446970))

(assert (= (and b!5446969 (not res!2319499)) b!5446967))

(assert (= (or b!5446967 b!5446970) bm!393070))

(assert (= (or b!5446964 b!5446969) bm!393071))

(declare-fun m!6466748 () Bool)

(assert (=> bm!393070 m!6466748))

(declare-fun m!6466750 () Bool)

(assert (=> b!5446968 m!6466750))

(declare-fun m!6466752 () Bool)

(assert (=> b!5446972 m!6466752))

(declare-fun m!6466754 () Bool)

(assert (=> bm!393071 m!6466754))

(assert (=> bm!392758 d!1733908))

(declare-fun c!950697 () Bool)

(declare-fun d!1733916 () Bool)

(assert (=> d!1733916 (= c!950697 (isEmpty!33985 (ite c!950418 (t!375357 s!2326) (ite (or c!950410 c!950411) s!2326 (ite c!950417 (t!375357 s!2326) s!2326)))))))

(declare-fun e!3373800 () Bool)

(assert (=> d!1733916 (= (matchZipper!1521 (ite c!950418 lt!2222142 (ite (or c!950410 c!950411) z!1189 (ite c!950417 ((_ map or) lt!2222210 lt!2222122) z!1189))) (ite c!950418 (t!375357 s!2326) (ite (or c!950410 c!950411) s!2326 (ite c!950417 (t!375357 s!2326) s!2326)))) e!3373800)))

(declare-fun b!5447015 () Bool)

(assert (=> b!5447015 (= e!3373800 (nullableZipper!1480 (ite c!950418 lt!2222142 (ite (or c!950410 c!950411) z!1189 (ite c!950417 ((_ map or) lt!2222210 lt!2222122) z!1189)))))))

(declare-fun b!5447016 () Bool)

(assert (=> b!5447016 (= e!3373800 (matchZipper!1521 (derivationStepZipper!1496 (ite c!950418 lt!2222142 (ite (or c!950410 c!950411) z!1189 (ite c!950417 ((_ map or) lt!2222210 lt!2222122) z!1189))) (head!11677 (ite c!950418 (t!375357 s!2326) (ite (or c!950410 c!950411) s!2326 (ite c!950417 (t!375357 s!2326) s!2326))))) (tail!10774 (ite c!950418 (t!375357 s!2326) (ite (or c!950410 c!950411) s!2326 (ite c!950417 (t!375357 s!2326) s!2326))))))))

(assert (= (and d!1733916 c!950697) b!5447015))

(assert (= (and d!1733916 (not c!950697)) b!5447016))

(declare-fun m!6466756 () Bool)

(assert (=> d!1733916 m!6466756))

(declare-fun m!6466758 () Bool)

(assert (=> b!5447015 m!6466758))

(declare-fun m!6466760 () Bool)

(assert (=> b!5447016 m!6466760))

(assert (=> b!5447016 m!6466760))

(declare-fun m!6466764 () Bool)

(assert (=> b!5447016 m!6466764))

(declare-fun m!6466768 () Bool)

(assert (=> b!5447016 m!6466768))

(assert (=> b!5447016 m!6466764))

(assert (=> b!5447016 m!6466768))

(declare-fun m!6466772 () Bool)

(assert (=> b!5447016 m!6466772))

(assert (=> bm!392952 d!1733916))

(declare-fun d!1733920 () Bool)

(assert (=> d!1733920 (= (matchR!7462 (ite c!950418 lt!2222195 lt!2222184) (ite c!950418 s!2326 (_1!35779 lt!2222148))) (matchRSpec!2380 (ite c!950418 lt!2222195 lt!2222184) (ite c!950418 s!2326 (_1!35779 lt!2222148))))))

(declare-fun lt!2222490 () Unit!154704)

(assert (=> d!1733920 (= lt!2222490 (choose!41333 (ite c!950418 lt!2222195 lt!2222184) (ite c!950418 s!2326 (_1!35779 lt!2222148))))))

(assert (=> d!1733920 (validRegex!7013 (ite c!950418 lt!2222195 lt!2222184))))

(assert (=> d!1733920 (= (mainMatchTheorem!2380 (ite c!950418 lt!2222195 lt!2222184) (ite c!950418 s!2326 (_1!35779 lt!2222148))) lt!2222490)))

(declare-fun bs!1256792 () Bool)

(assert (= bs!1256792 d!1733920))

(declare-fun m!6466776 () Bool)

(assert (=> bs!1256792 m!6466776))

(declare-fun m!6466778 () Bool)

(assert (=> bs!1256792 m!6466778))

(declare-fun m!6466780 () Bool)

(assert (=> bs!1256792 m!6466780))

(declare-fun m!6466782 () Bool)

(assert (=> bs!1256792 m!6466782))

(assert (=> bm!392858 d!1733920))

(declare-fun bs!1256793 () Bool)

(declare-fun d!1733924 () Bool)

(assert (= bs!1256793 (and d!1733924 b!5445993)))

(declare-fun lambda!287288 () Int)

(assert (=> bs!1256793 (= lambda!287288 lambda!287194)))

(declare-fun bs!1256794 () Bool)

(assert (= bs!1256794 (and d!1733924 b!5446006)))

(assert (=> bs!1256794 (= lambda!287288 lambda!287196)))

(declare-fun bs!1256795 () Bool)

(assert (= bs!1256795 (and d!1733924 b!5446022)))

(assert (=> bs!1256795 (= lambda!287288 lambda!287205)))

(declare-fun bs!1256796 () Bool)

(assert (= bs!1256796 (and d!1733924 d!1733880)))

(assert (=> bs!1256796 (= lambda!287288 lambda!287279)))

(declare-fun b!5447017 () Bool)

(declare-fun e!3373802 () Bool)

(declare-fun e!3373806 () Bool)

(assert (=> b!5447017 (= e!3373802 e!3373806)))

(declare-fun c!950700 () Bool)

(assert (=> b!5447017 (= c!950700 (isEmpty!33987 (tail!10775 (ite c!950413 (t!375358 (exprs!5161 (h!68456 zl!343))) (ite c!950418 lt!2222205 (ite c!950410 lt!2222194 (ite c!950414 lt!2222162 (t!375358 (exprs!5161 (h!68456 zl!343))))))))))))

(declare-fun b!5447018 () Bool)

(declare-fun lt!2222491 () Regex!15277)

(assert (=> b!5447018 (= e!3373802 (isEmptyExpr!1012 lt!2222491))))

(declare-fun b!5447019 () Bool)

(declare-fun e!3373803 () Regex!15277)

(assert (=> b!5447019 (= e!3373803 (Concat!24122 (h!68455 (ite c!950413 (t!375358 (exprs!5161 (h!68456 zl!343))) (ite c!950418 lt!2222205 (ite c!950410 lt!2222194 (ite c!950414 lt!2222162 (t!375358 (exprs!5161 (h!68456 zl!343)))))))) (generalisedConcat!946 (t!375358 (ite c!950413 (t!375358 (exprs!5161 (h!68456 zl!343))) (ite c!950418 lt!2222205 (ite c!950410 lt!2222194 (ite c!950414 lt!2222162 (t!375358 (exprs!5161 (h!68456 zl!343)))))))))))))

(declare-fun b!5447020 () Bool)

(declare-fun e!3373801 () Regex!15277)

(assert (=> b!5447020 (= e!3373801 e!3373803)))

(declare-fun c!950699 () Bool)

(assert (=> b!5447020 (= c!950699 ((_ is Cons!62007) (ite c!950413 (t!375358 (exprs!5161 (h!68456 zl!343))) (ite c!950418 lt!2222205 (ite c!950410 lt!2222194 (ite c!950414 lt!2222162 (t!375358 (exprs!5161 (h!68456 zl!343)))))))))))

(declare-fun e!3373804 () Bool)

(assert (=> d!1733924 e!3373804))

(declare-fun res!2319526 () Bool)

(assert (=> d!1733924 (=> (not res!2319526) (not e!3373804))))

(assert (=> d!1733924 (= res!2319526 (validRegex!7013 lt!2222491))))

(assert (=> d!1733924 (= lt!2222491 e!3373801)))

(declare-fun c!950698 () Bool)

(declare-fun e!3373805 () Bool)

(assert (=> d!1733924 (= c!950698 e!3373805)))

(declare-fun res!2319525 () Bool)

(assert (=> d!1733924 (=> (not res!2319525) (not e!3373805))))

(assert (=> d!1733924 (= res!2319525 ((_ is Cons!62007) (ite c!950413 (t!375358 (exprs!5161 (h!68456 zl!343))) (ite c!950418 lt!2222205 (ite c!950410 lt!2222194 (ite c!950414 lt!2222162 (t!375358 (exprs!5161 (h!68456 zl!343)))))))))))

(assert (=> d!1733924 (forall!14580 (ite c!950413 (t!375358 (exprs!5161 (h!68456 zl!343))) (ite c!950418 lt!2222205 (ite c!950410 lt!2222194 (ite c!950414 lt!2222162 (t!375358 (exprs!5161 (h!68456 zl!343))))))) lambda!287288)))

(assert (=> d!1733924 (= (generalisedConcat!946 (ite c!950413 (t!375358 (exprs!5161 (h!68456 zl!343))) (ite c!950418 lt!2222205 (ite c!950410 lt!2222194 (ite c!950414 lt!2222162 (t!375358 (exprs!5161 (h!68456 zl!343)))))))) lt!2222491)))

(declare-fun b!5447021 () Bool)

(assert (=> b!5447021 (= e!3373806 (= lt!2222491 (head!11678 (ite c!950413 (t!375358 (exprs!5161 (h!68456 zl!343))) (ite c!950418 lt!2222205 (ite c!950410 lt!2222194 (ite c!950414 lt!2222162 (t!375358 (exprs!5161 (h!68456 zl!343))))))))))))

(declare-fun b!5447022 () Bool)

(assert (=> b!5447022 (= e!3373806 (isConcat!535 lt!2222491))))

(declare-fun b!5447023 () Bool)

(assert (=> b!5447023 (= e!3373805 (isEmpty!33987 (t!375358 (ite c!950413 (t!375358 (exprs!5161 (h!68456 zl!343))) (ite c!950418 lt!2222205 (ite c!950410 lt!2222194 (ite c!950414 lt!2222162 (t!375358 (exprs!5161 (h!68456 zl!343))))))))))))

(declare-fun b!5447024 () Bool)

(assert (=> b!5447024 (= e!3373803 EmptyExpr!15277)))

(declare-fun b!5447025 () Bool)

(assert (=> b!5447025 (= e!3373804 e!3373802)))

(declare-fun c!950701 () Bool)

(assert (=> b!5447025 (= c!950701 (isEmpty!33987 (ite c!950413 (t!375358 (exprs!5161 (h!68456 zl!343))) (ite c!950418 lt!2222205 (ite c!950410 lt!2222194 (ite c!950414 lt!2222162 (t!375358 (exprs!5161 (h!68456 zl!343)))))))))))

(declare-fun b!5447026 () Bool)

(assert (=> b!5447026 (= e!3373801 (h!68455 (ite c!950413 (t!375358 (exprs!5161 (h!68456 zl!343))) (ite c!950418 lt!2222205 (ite c!950410 lt!2222194 (ite c!950414 lt!2222162 (t!375358 (exprs!5161 (h!68456 zl!343)))))))))))

(assert (= (and d!1733924 res!2319525) b!5447023))

(assert (= (and d!1733924 c!950698) b!5447026))

(assert (= (and d!1733924 (not c!950698)) b!5447020))

(assert (= (and b!5447020 c!950699) b!5447019))

(assert (= (and b!5447020 (not c!950699)) b!5447024))

(assert (= (and d!1733924 res!2319526) b!5447025))

(assert (= (and b!5447025 c!950701) b!5447018))

(assert (= (and b!5447025 (not c!950701)) b!5447017))

(assert (= (and b!5447017 c!950700) b!5447021))

(assert (= (and b!5447017 (not c!950700)) b!5447022))

(declare-fun m!6466784 () Bool)

(assert (=> d!1733924 m!6466784))

(declare-fun m!6466786 () Bool)

(assert (=> d!1733924 m!6466786))

(declare-fun m!6466788 () Bool)

(assert (=> b!5447018 m!6466788))

(declare-fun m!6466790 () Bool)

(assert (=> b!5447022 m!6466790))

(declare-fun m!6466792 () Bool)

(assert (=> b!5447025 m!6466792))

(declare-fun m!6466794 () Bool)

(assert (=> b!5447017 m!6466794))

(assert (=> b!5447017 m!6466794))

(declare-fun m!6466796 () Bool)

(assert (=> b!5447017 m!6466796))

(declare-fun m!6466798 () Bool)

(assert (=> b!5447019 m!6466798))

(declare-fun m!6466800 () Bool)

(assert (=> b!5447023 m!6466800))

(declare-fun m!6466802 () Bool)

(assert (=> b!5447021 m!6466802))

(assert (=> bm!392760 d!1733924))

(declare-fun d!1733928 () Bool)

(assert (=> d!1733928 (= (matchR!7462 (ite c!950418 lt!2222302 (ite c!950410 lt!2222146 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 (ite c!950420 lt!2222180 lt!2222304) (ite c!950415 lt!2222304 lt!2222292)) lt!2222213)))) (ite (or c!950418 c!950410 c!950414) s!2326 (ite c!950411 (ite c!950409 (ite c!950420 s!2326 lt!2222286) (ite c!950415 (_2!35779 lt!2222305) s!2326)) s!2326))) (matchZipper!1521 (ite c!950418 lt!2222196 (ite c!950410 lt!2222123 (ite c!950414 lt!2222128 (ite c!950411 (ite c!950409 (ite c!950420 lt!2222132 lt!2222119) (ite c!950415 lt!2222119 lt!2222158)) lt!2222314)))) (ite (or c!950418 c!950410 c!950414) s!2326 (ite c!950411 (ite c!950409 (ite c!950420 s!2326 lt!2222286) (ite c!950415 (_2!35779 lt!2222305) s!2326)) s!2326))))))

(declare-fun lt!2222497 () Unit!154704)

(declare-fun choose!41339 ((InoxSet Context!9322) List!62132 Regex!15277 List!62130) Unit!154704)

(assert (=> d!1733928 (= lt!2222497 (choose!41339 (ite c!950418 lt!2222196 (ite c!950410 lt!2222123 (ite c!950414 lt!2222128 (ite c!950411 (ite c!950409 (ite c!950420 lt!2222132 lt!2222119) (ite c!950415 lt!2222119 lt!2222158)) lt!2222314)))) (ite c!950418 (Cons!62008 lt!2222175 Nil!62008) (ite c!950410 (Cons!62008 lt!2222297 Nil!62008) (ite c!950414 (Cons!62008 lt!2222157 Nil!62008) (ite c!950411 (ite c!950409 (ite c!950420 (Cons!62008 lt!2222248 Nil!62008) (Cons!62008 lt!2222313 Nil!62008)) (ite c!950415 (Cons!62008 lt!2222313 Nil!62008) (Cons!62008 lt!2222248 Nil!62008))) (Cons!62008 lt!2222248 Nil!62008))))) (ite c!950418 lt!2222302 (ite c!950410 lt!2222146 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 (ite c!950420 lt!2222180 lt!2222304) (ite c!950415 lt!2222304 lt!2222292)) lt!2222213)))) (ite (or c!950418 c!950410 c!950414) s!2326 (ite c!950411 (ite c!950409 (ite c!950420 s!2326 lt!2222286) (ite c!950415 (_2!35779 lt!2222305) s!2326)) s!2326))))))

(assert (=> d!1733928 (validRegex!7013 (ite c!950418 lt!2222302 (ite c!950410 lt!2222146 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 (ite c!950420 lt!2222180 lt!2222304) (ite c!950415 lt!2222304 lt!2222292)) lt!2222213)))))))

(assert (=> d!1733928 (= (theoremZipperRegexEquiv!557 (ite c!950418 lt!2222196 (ite c!950410 lt!2222123 (ite c!950414 lt!2222128 (ite c!950411 (ite c!950409 (ite c!950420 lt!2222132 lt!2222119) (ite c!950415 lt!2222119 lt!2222158)) lt!2222314)))) (ite c!950418 (Cons!62008 lt!2222175 Nil!62008) (ite c!950410 (Cons!62008 lt!2222297 Nil!62008) (ite c!950414 (Cons!62008 lt!2222157 Nil!62008) (ite c!950411 (ite c!950409 (ite c!950420 (Cons!62008 lt!2222248 Nil!62008) (Cons!62008 lt!2222313 Nil!62008)) (ite c!950415 (Cons!62008 lt!2222313 Nil!62008) (Cons!62008 lt!2222248 Nil!62008))) (Cons!62008 lt!2222248 Nil!62008))))) (ite c!950418 lt!2222302 (ite c!950410 lt!2222146 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 (ite c!950420 lt!2222180 lt!2222304) (ite c!950415 lt!2222304 lt!2222292)) lt!2222213)))) (ite (or c!950418 c!950410 c!950414) s!2326 (ite c!950411 (ite c!950409 (ite c!950420 s!2326 lt!2222286) (ite c!950415 (_2!35779 lt!2222305) s!2326)) s!2326))) lt!2222497)))

(declare-fun bs!1256797 () Bool)

(assert (= bs!1256797 d!1733928))

(declare-fun m!6466816 () Bool)

(assert (=> bs!1256797 m!6466816))

(declare-fun m!6466818 () Bool)

(assert (=> bs!1256797 m!6466818))

(declare-fun m!6466820 () Bool)

(assert (=> bs!1256797 m!6466820))

(declare-fun m!6466822 () Bool)

(assert (=> bs!1256797 m!6466822))

(assert (=> bm!392790 d!1733928))

(declare-fun d!1733934 () Bool)

(assert (=> d!1733934 (= (flatMap!1004 (ite c!950411 (ite c!950409 lt!2222132 lt!2222158) lt!2222314) (ite c!950411 (ite c!950409 lambda!287180 lambda!287180) lambda!287180)) (dynLambda!24390 (ite c!950411 (ite c!950409 lambda!287180 lambda!287180) lambda!287180) lt!2222248))))

(declare-fun lt!2222498 () Unit!154704)

(assert (=> d!1733934 (= lt!2222498 (choose!41331 (ite c!950411 (ite c!950409 lt!2222132 lt!2222158) lt!2222314) lt!2222248 (ite c!950411 (ite c!950409 lambda!287180 lambda!287180) lambda!287180)))))

(assert (=> d!1733934 (= (ite c!950411 (ite c!950409 lt!2222132 lt!2222158) lt!2222314) (store ((as const (Array Context!9322 Bool)) false) lt!2222248 true))))

(assert (=> d!1733934 (= (lemmaFlatMapOnSingletonSet!536 (ite c!950411 (ite c!950409 lt!2222132 lt!2222158) lt!2222314) lt!2222248 (ite c!950411 (ite c!950409 lambda!287180 lambda!287180) lambda!287180)) lt!2222498)))

(declare-fun b_lambda!207505 () Bool)

(assert (=> (not b_lambda!207505) (not d!1733934)))

(declare-fun bs!1256798 () Bool)

(assert (= bs!1256798 d!1733934))

(declare-fun m!6466824 () Bool)

(assert (=> bs!1256798 m!6466824))

(declare-fun m!6466826 () Bool)

(assert (=> bs!1256798 m!6466826))

(declare-fun m!6466828 () Bool)

(assert (=> bs!1256798 m!6466828))

(assert (=> bs!1256798 m!6465394))

(assert (=> bm!392792 d!1733934))

(declare-fun b!5447035 () Bool)

(declare-fun lt!2222502 () Unit!154704)

(declare-fun lt!2222501 () Unit!154704)

(assert (=> b!5447035 (= lt!2222502 lt!2222501)))

(assert (=> b!5447035 (= (++!13633 (++!13633 Nil!62006 (Cons!62006 (h!68454 s!2326) Nil!62006)) (t!375357 s!2326)) s!2326)))

(assert (=> b!5447035 (= lt!2222501 (lemmaMoveElementToOtherListKeepsConcatEq!1875 Nil!62006 (h!68454 s!2326) (t!375357 s!2326) s!2326))))

(declare-fun e!3373817 () Option!15388)

(assert (=> b!5447035 (= e!3373817 (findConcatSeparation!1802 (regOne!31066 r!7292) (regTwo!31066 r!7292) (++!13633 Nil!62006 (Cons!62006 (h!68454 s!2326) Nil!62006)) (t!375357 s!2326) s!2326))))

(declare-fun d!1733936 () Bool)

(declare-fun e!3373813 () Bool)

(assert (=> d!1733936 e!3373813))

(declare-fun res!2319532 () Bool)

(assert (=> d!1733936 (=> res!2319532 e!3373813)))

(declare-fun e!3373814 () Bool)

(assert (=> d!1733936 (= res!2319532 e!3373814)))

(declare-fun res!2319534 () Bool)

(assert (=> d!1733936 (=> (not res!2319534) (not e!3373814))))

(declare-fun lt!2222503 () Option!15388)

(assert (=> d!1733936 (= res!2319534 (isDefined!12091 lt!2222503))))

(declare-fun e!3373816 () Option!15388)

(assert (=> d!1733936 (= lt!2222503 e!3373816)))

(declare-fun c!950704 () Bool)

(declare-fun e!3373815 () Bool)

(assert (=> d!1733936 (= c!950704 e!3373815)))

(declare-fun res!2319535 () Bool)

(assert (=> d!1733936 (=> (not res!2319535) (not e!3373815))))

(assert (=> d!1733936 (= res!2319535 (matchR!7462 (regOne!31066 r!7292) Nil!62006))))

(assert (=> d!1733936 (validRegex!7013 (regOne!31066 r!7292))))

(assert (=> d!1733936 (= (findConcatSeparation!1802 (regOne!31066 r!7292) (regTwo!31066 r!7292) Nil!62006 s!2326 s!2326) lt!2222503)))

(declare-fun b!5447036 () Bool)

(declare-fun res!2319533 () Bool)

(assert (=> b!5447036 (=> (not res!2319533) (not e!3373814))))

(assert (=> b!5447036 (= res!2319533 (matchR!7462 (regTwo!31066 r!7292) (_2!35779 (get!21380 lt!2222503))))))

(declare-fun b!5447037 () Bool)

(assert (=> b!5447037 (= e!3373817 None!15387)))

(declare-fun b!5447038 () Bool)

(declare-fun res!2319531 () Bool)

(assert (=> b!5447038 (=> (not res!2319531) (not e!3373814))))

(assert (=> b!5447038 (= res!2319531 (matchR!7462 (regOne!31066 r!7292) (_1!35779 (get!21380 lt!2222503))))))

(declare-fun b!5447039 () Bool)

(assert (=> b!5447039 (= e!3373815 (matchR!7462 (regTwo!31066 r!7292) s!2326))))

(declare-fun b!5447040 () Bool)

(assert (=> b!5447040 (= e!3373813 (not (isDefined!12091 lt!2222503)))))

(declare-fun b!5447041 () Bool)

(assert (=> b!5447041 (= e!3373816 e!3373817)))

(declare-fun c!950705 () Bool)

(assert (=> b!5447041 (= c!950705 ((_ is Nil!62006) s!2326))))

(declare-fun b!5447042 () Bool)

(assert (=> b!5447042 (= e!3373814 (= (++!13633 (_1!35779 (get!21380 lt!2222503)) (_2!35779 (get!21380 lt!2222503))) s!2326))))

(declare-fun b!5447043 () Bool)

(assert (=> b!5447043 (= e!3373816 (Some!15387 (tuple2!64953 Nil!62006 s!2326)))))

(assert (= (and d!1733936 res!2319535) b!5447039))

(assert (= (and d!1733936 c!950704) b!5447043))

(assert (= (and d!1733936 (not c!950704)) b!5447041))

(assert (= (and b!5447041 c!950705) b!5447037))

(assert (= (and b!5447041 (not c!950705)) b!5447035))

(assert (= (and d!1733936 res!2319534) b!5447038))

(assert (= (and b!5447038 res!2319531) b!5447036))

(assert (= (and b!5447036 res!2319533) b!5447042))

(assert (= (and d!1733936 (not res!2319532)) b!5447040))

(declare-fun m!6466830 () Bool)

(assert (=> b!5447035 m!6466830))

(assert (=> b!5447035 m!6466830))

(declare-fun m!6466832 () Bool)

(assert (=> b!5447035 m!6466832))

(declare-fun m!6466834 () Bool)

(assert (=> b!5447035 m!6466834))

(assert (=> b!5447035 m!6466830))

(declare-fun m!6466836 () Bool)

(assert (=> b!5447035 m!6466836))

(declare-fun m!6466838 () Bool)

(assert (=> b!5447039 m!6466838))

(declare-fun m!6466840 () Bool)

(assert (=> b!5447042 m!6466840))

(declare-fun m!6466842 () Bool)

(assert (=> b!5447042 m!6466842))

(assert (=> b!5447038 m!6466840))

(declare-fun m!6466844 () Bool)

(assert (=> b!5447038 m!6466844))

(declare-fun m!6466846 () Bool)

(assert (=> d!1733936 m!6466846))

(declare-fun m!6466848 () Bool)

(assert (=> d!1733936 m!6466848))

(declare-fun m!6466850 () Bool)

(assert (=> d!1733936 m!6466850))

(assert (=> b!5447036 m!6466840))

(declare-fun m!6466852 () Bool)

(assert (=> b!5447036 m!6466852))

(assert (=> b!5447040 m!6466846))

(assert (=> b!5446036 d!1733936))

(declare-fun d!1733938 () Bool)

(assert (=> d!1733938 (= (Exists!2458 lambda!287179) (choose!41324 lambda!287179))))

(declare-fun bs!1256799 () Bool)

(assert (= bs!1256799 d!1733938))

(declare-fun m!6466854 () Bool)

(assert (=> bs!1256799 m!6466854))

(assert (=> b!5446036 d!1733938))

(declare-fun d!1733940 () Bool)

(assert (=> d!1733940 (= (Exists!2458 lambda!287178) (choose!41324 lambda!287178))))

(declare-fun bs!1256800 () Bool)

(assert (= bs!1256800 d!1733940))

(declare-fun m!6466856 () Bool)

(assert (=> bs!1256800 m!6466856))

(assert (=> b!5446036 d!1733940))

(declare-fun bs!1256809 () Bool)

(declare-fun d!1733942 () Bool)

(assert (= bs!1256809 (and d!1733942 b!5446005)))

(declare-fun lambda!287292 () Int)

(assert (=> bs!1256809 (not (= lambda!287292 lambda!287188))))

(declare-fun bs!1256813 () Bool)

(assert (= bs!1256813 (and d!1733942 b!5445993)))

(assert (=> bs!1256813 (not (= lambda!287292 lambda!287192))))

(declare-fun bs!1256814 () Bool)

(assert (= bs!1256814 (and d!1733942 b!5446006)))

(assert (=> bs!1256814 (= (and (= s!2326 (_1!35779 lt!2222148)) (= (regOne!31066 r!7292) (reg!15606 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222247)) (= lambda!287292 lambda!287199))))

(assert (=> bs!1256809 (not (= lambda!287292 lambda!287186))))

(declare-fun bs!1256815 () Bool)

(assert (= bs!1256815 (and d!1733942 d!1733728)))

(assert (=> bs!1256815 (not (= lambda!287292 lambda!287251))))

(declare-fun bs!1256817 () Bool)

(assert (= bs!1256817 (and d!1733942 b!5446028)))

(assert (=> bs!1256817 (= (and (= (regOne!31066 r!7292) (regOne!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222146)) (= lambda!287292 lambda!287181))))

(declare-fun bs!1256818 () Bool)

(assert (= bs!1256818 (and d!1733942 b!5446695)))

(assert (=> bs!1256818 (not (= lambda!287292 lambda!287268))))

(assert (=> bs!1256817 (not (= lambda!287292 lambda!287182))))

(declare-fun bs!1256819 () Bool)

(assert (= bs!1256819 (and d!1733942 b!5446967)))

(assert (=> bs!1256819 (not (= lambda!287292 lambda!287286))))

(declare-fun bs!1256820 () Bool)

(assert (= bs!1256820 (and d!1733942 b!5445995)))

(assert (=> bs!1256820 (not (= lambda!287292 lambda!287204))))

(assert (=> bs!1256814 (not (= lambda!287292 lambda!287201))))

(declare-fun bs!1256821 () Bool)

(assert (= bs!1256821 (and d!1733942 b!5446692)))

(assert (=> bs!1256821 (not (= lambda!287292 lambda!287267))))

(declare-fun bs!1256822 () Bool)

(assert (= bs!1256822 (and d!1733942 b!5446036)))

(assert (=> bs!1256822 (not (= lambda!287292 lambda!287179))))

(assert (=> bs!1256809 (= (and (= (regOne!31066 r!7292) (regOne!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222299)) (= lambda!287292 lambda!287185))))

(assert (=> bs!1256814 (= (= (regOne!31066 r!7292) lt!2222184) (= lambda!287292 lambda!287197))))

(declare-fun bs!1256823 () Bool)

(assert (= bs!1256823 (and d!1733942 b!5446578)))

(assert (=> bs!1256823 (not (= lambda!287292 lambda!287257))))

(assert (=> bs!1256809 (= (and (= (regOne!31066 r!7292) (regTwo!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222211)) (= lambda!287292 lambda!287187))))

(assert (=> bs!1256820 (not (= lambda!287292 lambda!287203))))

(assert (=> bs!1256817 (= (and (= (regOne!31066 r!7292) (regTwo!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222240)) (= lambda!287292 lambda!287183))))

(assert (=> bs!1256814 (not (= lambda!287292 lambda!287198))))

(assert (=> bs!1256820 (= (and (= s!2326 Nil!62006) (= (regOne!31066 r!7292) (reg!15606 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222247)) (= lambda!287292 lambda!287202))))

(declare-fun bs!1256824 () Bool)

(assert (= bs!1256824 (and d!1733942 d!1733706)))

(assert (=> bs!1256824 (= (and (= (regOne!31066 r!7292) (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184))) (= (regTwo!31066 r!7292) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))))) (= lambda!287292 lambda!287237))))

(declare-fun bs!1256825 () Bool)

(assert (= bs!1256825 (and d!1733942 b!5446575)))

(assert (=> bs!1256825 (not (= lambda!287292 lambda!287256))))

(assert (=> bs!1256817 (not (= lambda!287292 lambda!287184))))

(assert (=> bs!1256822 (= lambda!287292 lambda!287178)))

(assert (=> bs!1256824 (not (= lambda!287292 lambda!287238))))

(declare-fun bs!1256826 () Bool)

(assert (= bs!1256826 (and d!1733942 d!1733902)))

(assert (=> bs!1256826 (= (and (= s!2326 (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (_1!35779 lt!2222148)))) (= (regOne!31066 r!7292) (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292)))) (= (regTwo!31066 r!7292) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 lt!2222247)))) (= lambda!287292 lambda!287284))))

(assert (=> bs!1256815 (= (and (= s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) (= (regOne!31066 r!7292) (reg!15606 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) (Star!15277 (reg!15606 (regOne!31066 r!7292))))) (= lambda!287292 lambda!287250))))

(assert (=> bs!1256813 (not (= lambda!287292 lambda!287193))))

(declare-fun bs!1256827 () Bool)

(assert (= bs!1256827 (and d!1733942 b!5446970)))

(assert (=> bs!1256827 (not (= lambda!287292 lambda!287287))))

(declare-fun bs!1256828 () Bool)

(assert (= bs!1256828 (and d!1733942 b!5446010)))

(assert (=> bs!1256828 (not (= lambda!287292 lambda!287190))))

(assert (=> bs!1256814 (not (= lambda!287292 lambda!287200))))

(assert (=> bs!1256813 (= (and (= s!2326 (_1!35779 lt!2222282)) (= (regOne!31066 r!7292) (reg!15606 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222247)) (= lambda!287292 lambda!287191))))

(assert (=> bs!1256828 (= (= (regOne!31066 r!7292) lt!2222247) (= lambda!287292 lambda!287189))))

(assert (=> d!1733942 true))

(assert (=> d!1733942 true))

(assert (=> d!1733942 true))

(assert (=> d!1733942 (= (isDefined!12091 (findConcatSeparation!1802 (regOne!31066 r!7292) (regTwo!31066 r!7292) Nil!62006 s!2326 s!2326)) (Exists!2458 lambda!287292))))

(declare-fun lt!2222508 () Unit!154704)

(assert (=> d!1733942 (= lt!2222508 (choose!41335 (regOne!31066 r!7292) (regTwo!31066 r!7292) s!2326))))

(assert (=> d!1733942 (validRegex!7013 (regOne!31066 r!7292))))

(assert (=> d!1733942 (= (lemmaFindConcatSeparationEquivalentToExists!1566 (regOne!31066 r!7292) (regTwo!31066 r!7292) s!2326) lt!2222508)))

(declare-fun bs!1256829 () Bool)

(assert (= bs!1256829 d!1733942))

(declare-fun m!6466884 () Bool)

(assert (=> bs!1256829 m!6466884))

(assert (=> bs!1256829 m!6465532))

(assert (=> bs!1256829 m!6465534))

(declare-fun m!6466886 () Bool)

(assert (=> bs!1256829 m!6466886))

(assert (=> bs!1256829 m!6466850))

(assert (=> bs!1256829 m!6465532))

(assert (=> b!5446036 d!1733942))

(declare-fun bs!1256830 () Bool)

(declare-fun d!1733946 () Bool)

(assert (= bs!1256830 (and d!1733946 b!5446005)))

(declare-fun lambda!287293 () Int)

(assert (=> bs!1256830 (not (= lambda!287293 lambda!287188))))

(declare-fun bs!1256831 () Bool)

(assert (= bs!1256831 (and d!1733946 b!5445993)))

(assert (=> bs!1256831 (not (= lambda!287293 lambda!287192))))

(declare-fun bs!1256832 () Bool)

(assert (= bs!1256832 (and d!1733946 d!1733942)))

(assert (=> bs!1256832 (= lambda!287293 lambda!287292)))

(declare-fun bs!1256833 () Bool)

(assert (= bs!1256833 (and d!1733946 b!5446006)))

(assert (=> bs!1256833 (= (and (= s!2326 (_1!35779 lt!2222148)) (= (regOne!31066 r!7292) (reg!15606 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222247)) (= lambda!287293 lambda!287199))))

(assert (=> bs!1256830 (not (= lambda!287293 lambda!287186))))

(declare-fun bs!1256834 () Bool)

(assert (= bs!1256834 (and d!1733946 d!1733728)))

(assert (=> bs!1256834 (not (= lambda!287293 lambda!287251))))

(declare-fun bs!1256835 () Bool)

(assert (= bs!1256835 (and d!1733946 b!5446028)))

(assert (=> bs!1256835 (= (and (= (regOne!31066 r!7292) (regOne!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222146)) (= lambda!287293 lambda!287181))))

(declare-fun bs!1256836 () Bool)

(assert (= bs!1256836 (and d!1733946 b!5446695)))

(assert (=> bs!1256836 (not (= lambda!287293 lambda!287268))))

(assert (=> bs!1256835 (not (= lambda!287293 lambda!287182))))

(declare-fun bs!1256837 () Bool)

(assert (= bs!1256837 (and d!1733946 b!5446967)))

(assert (=> bs!1256837 (not (= lambda!287293 lambda!287286))))

(declare-fun bs!1256838 () Bool)

(assert (= bs!1256838 (and d!1733946 b!5445995)))

(assert (=> bs!1256838 (not (= lambda!287293 lambda!287204))))

(assert (=> bs!1256833 (not (= lambda!287293 lambda!287201))))

(declare-fun bs!1256839 () Bool)

(assert (= bs!1256839 (and d!1733946 b!5446692)))

(assert (=> bs!1256839 (not (= lambda!287293 lambda!287267))))

(declare-fun bs!1256840 () Bool)

(assert (= bs!1256840 (and d!1733946 b!5446036)))

(assert (=> bs!1256840 (not (= lambda!287293 lambda!287179))))

(assert (=> bs!1256830 (= (and (= (regOne!31066 r!7292) (regOne!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222299)) (= lambda!287293 lambda!287185))))

(assert (=> bs!1256833 (= (= (regOne!31066 r!7292) lt!2222184) (= lambda!287293 lambda!287197))))

(declare-fun bs!1256841 () Bool)

(assert (= bs!1256841 (and d!1733946 b!5446578)))

(assert (=> bs!1256841 (not (= lambda!287293 lambda!287257))))

(assert (=> bs!1256830 (= (and (= (regOne!31066 r!7292) (regTwo!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222211)) (= lambda!287293 lambda!287187))))

(assert (=> bs!1256838 (not (= lambda!287293 lambda!287203))))

(assert (=> bs!1256835 (= (and (= (regOne!31066 r!7292) (regTwo!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222240)) (= lambda!287293 lambda!287183))))

(assert (=> bs!1256833 (not (= lambda!287293 lambda!287198))))

(assert (=> bs!1256838 (= (and (= s!2326 Nil!62006) (= (regOne!31066 r!7292) (reg!15606 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222247)) (= lambda!287293 lambda!287202))))

(declare-fun bs!1256844 () Bool)

(assert (= bs!1256844 (and d!1733946 d!1733706)))

(assert (=> bs!1256844 (= (and (= (regOne!31066 r!7292) (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184))) (= (regTwo!31066 r!7292) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))))) (= lambda!287293 lambda!287237))))

(declare-fun bs!1256846 () Bool)

(assert (= bs!1256846 (and d!1733946 b!5446575)))

(assert (=> bs!1256846 (not (= lambda!287293 lambda!287256))))

(assert (=> bs!1256835 (not (= lambda!287293 lambda!287184))))

(assert (=> bs!1256840 (= lambda!287293 lambda!287178)))

(assert (=> bs!1256844 (not (= lambda!287293 lambda!287238))))

(declare-fun bs!1256849 () Bool)

(assert (= bs!1256849 (and d!1733946 d!1733902)))

(assert (=> bs!1256849 (= (and (= s!2326 (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (_1!35779 lt!2222148)))) (= (regOne!31066 r!7292) (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292)))) (= (regTwo!31066 r!7292) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 lt!2222247)))) (= lambda!287293 lambda!287284))))

(assert (=> bs!1256834 (= (and (= s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) (= (regOne!31066 r!7292) (reg!15606 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) (Star!15277 (reg!15606 (regOne!31066 r!7292))))) (= lambda!287293 lambda!287250))))

(assert (=> bs!1256831 (not (= lambda!287293 lambda!287193))))

(declare-fun bs!1256851 () Bool)

(assert (= bs!1256851 (and d!1733946 b!5446970)))

(assert (=> bs!1256851 (not (= lambda!287293 lambda!287287))))

(declare-fun bs!1256852 () Bool)

(assert (= bs!1256852 (and d!1733946 b!5446010)))

(assert (=> bs!1256852 (not (= lambda!287293 lambda!287190))))

(assert (=> bs!1256833 (not (= lambda!287293 lambda!287200))))

(assert (=> bs!1256831 (= (and (= s!2326 (_1!35779 lt!2222282)) (= (regOne!31066 r!7292) (reg!15606 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222247)) (= lambda!287293 lambda!287191))))

(assert (=> bs!1256852 (= (= (regOne!31066 r!7292) lt!2222247) (= lambda!287293 lambda!287189))))

(assert (=> d!1733946 true))

(assert (=> d!1733946 true))

(assert (=> d!1733946 true))

(declare-fun lambda!287294 () Int)

(assert (=> bs!1256830 (= (and (= (regOne!31066 r!7292) (regTwo!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222211)) (= lambda!287294 lambda!287188))))

(assert (=> bs!1256831 (not (= lambda!287294 lambda!287192))))

(declare-fun bs!1256853 () Bool)

(assert (= bs!1256853 d!1733946))

(assert (=> bs!1256853 (not (= lambda!287294 lambda!287293))))

(assert (=> bs!1256832 (not (= lambda!287294 lambda!287292))))

(assert (=> bs!1256833 (not (= lambda!287294 lambda!287199))))

(assert (=> bs!1256830 (= (and (= (regOne!31066 r!7292) (regOne!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222299)) (= lambda!287294 lambda!287186))))

(assert (=> bs!1256834 (not (= lambda!287294 lambda!287251))))

(assert (=> bs!1256835 (not (= lambda!287294 lambda!287181))))

(assert (=> bs!1256836 (= (and (= s!2326 (ite (or c!950418 c!950410) s!2326 (ite c!950411 (_1!35779 lt!2222148) s!2326))) (= (regOne!31066 r!7292) (regOne!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292)))))) (= (regTwo!31066 r!7292) (regTwo!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))))) (= lambda!287294 lambda!287268))))

(assert (=> bs!1256835 (= (and (= (regOne!31066 r!7292) (regOne!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222146)) (= lambda!287294 lambda!287182))))

(assert (=> bs!1256837 (not (= lambda!287294 lambda!287286))))

(assert (=> bs!1256838 (not (= lambda!287294 lambda!287204))))

(assert (=> bs!1256833 (not (= lambda!287294 lambda!287201))))

(assert (=> bs!1256839 (not (= lambda!287294 lambda!287267))))

(assert (=> bs!1256840 (= lambda!287294 lambda!287179)))

(assert (=> bs!1256830 (not (= lambda!287294 lambda!287185))))

(assert (=> bs!1256833 (not (= lambda!287294 lambda!287197))))

(assert (=> bs!1256841 (= (and (= (regOne!31066 r!7292) (regOne!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221))))) (= (regTwo!31066 r!7292) (regTwo!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))))) (= lambda!287294 lambda!287257))))

(assert (=> bs!1256830 (not (= lambda!287294 lambda!287187))))

(assert (=> bs!1256838 (= (and (= s!2326 Nil!62006) (= (regOne!31066 r!7292) (reg!15606 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222247)) (= lambda!287294 lambda!287203))))

(assert (=> bs!1256835 (not (= lambda!287294 lambda!287183))))

(assert (=> bs!1256833 (= (= (regOne!31066 r!7292) lt!2222184) (= lambda!287294 lambda!287198))))

(assert (=> bs!1256838 (not (= lambda!287294 lambda!287202))))

(assert (=> bs!1256844 (not (= lambda!287294 lambda!287237))))

(assert (=> bs!1256846 (not (= lambda!287294 lambda!287256))))

(assert (=> bs!1256835 (= (and (= (regOne!31066 r!7292) (regTwo!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222240)) (= lambda!287294 lambda!287184))))

(assert (=> bs!1256840 (not (= lambda!287294 lambda!287178))))

(assert (=> bs!1256844 (= (and (= (regOne!31066 r!7292) (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184))) (= (regTwo!31066 r!7292) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))))) (= lambda!287294 lambda!287238))))

(assert (=> bs!1256849 (not (= lambda!287294 lambda!287284))))

(assert (=> bs!1256834 (not (= lambda!287294 lambda!287250))))

(assert (=> bs!1256831 (= (and (= s!2326 (_1!35779 lt!2222282)) (= (regOne!31066 r!7292) (reg!15606 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222247)) (= lambda!287294 lambda!287193))))

(assert (=> bs!1256851 (= (and (= s!2326 (ite (or c!950418 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326))) (= (regOne!31066 r!7292) (regOne!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292)))))) (= (regTwo!31066 r!7292) (regTwo!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))))) (= lambda!287294 lambda!287287))))

(assert (=> bs!1256852 (= (= (regOne!31066 r!7292) lt!2222247) (= lambda!287294 lambda!287190))))

(assert (=> bs!1256833 (= (and (= s!2326 (_1!35779 lt!2222148)) (= (regOne!31066 r!7292) (reg!15606 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222247)) (= lambda!287294 lambda!287200))))

(assert (=> bs!1256831 (not (= lambda!287294 lambda!287191))))

(assert (=> bs!1256852 (not (= lambda!287294 lambda!287189))))

(assert (=> d!1733946 true))

(assert (=> d!1733946 true))

(assert (=> d!1733946 true))

(assert (=> d!1733946 (= (Exists!2458 lambda!287293) (Exists!2458 lambda!287294))))

(declare-fun lt!2222510 () Unit!154704)

(assert (=> d!1733946 (= lt!2222510 (choose!41323 (regOne!31066 r!7292) (regTwo!31066 r!7292) s!2326))))

(assert (=> d!1733946 (validRegex!7013 (regOne!31066 r!7292))))

(assert (=> d!1733946 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1112 (regOne!31066 r!7292) (regTwo!31066 r!7292) s!2326) lt!2222510)))

(declare-fun m!6466900 () Bool)

(assert (=> bs!1256853 m!6466900))

(declare-fun m!6466902 () Bool)

(assert (=> bs!1256853 m!6466902))

(declare-fun m!6466904 () Bool)

(assert (=> bs!1256853 m!6466904))

(assert (=> bs!1256853 m!6466850))

(assert (=> b!5446036 d!1733946))

(declare-fun d!1733960 () Bool)

(assert (=> d!1733960 (= (isDefined!12091 (findConcatSeparation!1802 (regOne!31066 r!7292) (regTwo!31066 r!7292) Nil!62006 s!2326 s!2326)) (not (isEmpty!33989 (findConcatSeparation!1802 (regOne!31066 r!7292) (regTwo!31066 r!7292) Nil!62006 s!2326 s!2326))))))

(declare-fun bs!1256854 () Bool)

(assert (= bs!1256854 d!1733960))

(assert (=> bs!1256854 m!6465532))

(declare-fun m!6466906 () Bool)

(assert (=> bs!1256854 m!6466906))

(assert (=> b!5446036 d!1733960))

(declare-fun b!5447102 () Bool)

(declare-fun res!2319538 () Bool)

(declare-fun e!3373845 () Bool)

(assert (=> b!5447102 (=> res!2319538 e!3373845)))

(assert (=> b!5447102 (= res!2319538 (not ((_ is ElementMatch!15277) (ite c!950418 lt!2222267 (ite c!950410 lt!2222155 (ite c!950409 (reg!15606 (regOne!31066 r!7292)) lt!2222304))))))))

(declare-fun e!3373846 () Bool)

(assert (=> b!5447102 (= e!3373846 e!3373845)))

(declare-fun b!5447103 () Bool)

(declare-fun res!2319541 () Bool)

(declare-fun e!3373848 () Bool)

(assert (=> b!5447103 (=> (not res!2319541) (not e!3373848))))

(declare-fun call!393088 () Bool)

(assert (=> b!5447103 (= res!2319541 (not call!393088))))

(declare-fun b!5447104 () Bool)

(declare-fun e!3373849 () Bool)

(declare-fun e!3373843 () Bool)

(assert (=> b!5447104 (= e!3373849 e!3373843)))

(declare-fun res!2319540 () Bool)

(assert (=> b!5447104 (=> res!2319540 e!3373843)))

(assert (=> b!5447104 (= res!2319540 call!393088)))

(declare-fun b!5447105 () Bool)

(declare-fun res!2319545 () Bool)

(assert (=> b!5447105 (=> (not res!2319545) (not e!3373848))))

(assert (=> b!5447105 (= res!2319545 (isEmpty!33985 (tail!10774 (ite (or c!950418 c!950410) s!2326 (ite c!950409 (_1!35779 lt!2222226) lt!2222225)))))))

(declare-fun b!5447106 () Bool)

(declare-fun e!3373844 () Bool)

(assert (=> b!5447106 (= e!3373844 e!3373846)))

(declare-fun c!950709 () Bool)

(assert (=> b!5447106 (= c!950709 ((_ is EmptyLang!15277) (ite c!950418 lt!2222267 (ite c!950410 lt!2222155 (ite c!950409 (reg!15606 (regOne!31066 r!7292)) lt!2222304)))))))

(declare-fun b!5447107 () Bool)

(assert (=> b!5447107 (= e!3373843 (not (= (head!11677 (ite (or c!950418 c!950410) s!2326 (ite c!950409 (_1!35779 lt!2222226) lt!2222225))) (c!950421 (ite c!950418 lt!2222267 (ite c!950410 lt!2222155 (ite c!950409 (reg!15606 (regOne!31066 r!7292)) lt!2222304)))))))))

(declare-fun e!3373847 () Bool)

(declare-fun b!5447108 () Bool)

(assert (=> b!5447108 (= e!3373847 (matchR!7462 (derivativeStep!4301 (ite c!950418 lt!2222267 (ite c!950410 lt!2222155 (ite c!950409 (reg!15606 (regOne!31066 r!7292)) lt!2222304))) (head!11677 (ite (or c!950418 c!950410) s!2326 (ite c!950409 (_1!35779 lt!2222226) lt!2222225)))) (tail!10774 (ite (or c!950418 c!950410) s!2326 (ite c!950409 (_1!35779 lt!2222226) lt!2222225)))))))

(declare-fun b!5447109 () Bool)

(declare-fun res!2319539 () Bool)

(assert (=> b!5447109 (=> res!2319539 e!3373843)))

(assert (=> b!5447109 (= res!2319539 (not (isEmpty!33985 (tail!10774 (ite (or c!950418 c!950410) s!2326 (ite c!950409 (_1!35779 lt!2222226) lt!2222225))))))))

(declare-fun b!5447111 () Bool)

(declare-fun lt!2222512 () Bool)

(assert (=> b!5447111 (= e!3373846 (not lt!2222512))))

(declare-fun bm!393083 () Bool)

(assert (=> bm!393083 (= call!393088 (isEmpty!33985 (ite (or c!950418 c!950410) s!2326 (ite c!950409 (_1!35779 lt!2222226) lt!2222225))))))

(declare-fun b!5447112 () Bool)

(assert (=> b!5447112 (= e!3373848 (= (head!11677 (ite (or c!950418 c!950410) s!2326 (ite c!950409 (_1!35779 lt!2222226) lt!2222225))) (c!950421 (ite c!950418 lt!2222267 (ite c!950410 lt!2222155 (ite c!950409 (reg!15606 (regOne!31066 r!7292)) lt!2222304))))))))

(declare-fun b!5447113 () Bool)

(assert (=> b!5447113 (= e!3373845 e!3373849)))

(declare-fun res!2319544 () Bool)

(assert (=> b!5447113 (=> (not res!2319544) (not e!3373849))))

(assert (=> b!5447113 (= res!2319544 (not lt!2222512))))

(declare-fun b!5447114 () Bool)

(declare-fun res!2319542 () Bool)

(assert (=> b!5447114 (=> res!2319542 e!3373845)))

(assert (=> b!5447114 (= res!2319542 e!3373848)))

(declare-fun res!2319543 () Bool)

(assert (=> b!5447114 (=> (not res!2319543) (not e!3373848))))

(assert (=> b!5447114 (= res!2319543 lt!2222512)))

(declare-fun b!5447115 () Bool)

(assert (=> b!5447115 (= e!3373847 (nullable!5446 (ite c!950418 lt!2222267 (ite c!950410 lt!2222155 (ite c!950409 (reg!15606 (regOne!31066 r!7292)) lt!2222304)))))))

(declare-fun b!5447110 () Bool)

(assert (=> b!5447110 (= e!3373844 (= lt!2222512 call!393088))))

(declare-fun d!1733962 () Bool)

(assert (=> d!1733962 e!3373844))

(declare-fun c!950708 () Bool)

(assert (=> d!1733962 (= c!950708 ((_ is EmptyExpr!15277) (ite c!950418 lt!2222267 (ite c!950410 lt!2222155 (ite c!950409 (reg!15606 (regOne!31066 r!7292)) lt!2222304)))))))

(assert (=> d!1733962 (= lt!2222512 e!3373847)))

(declare-fun c!950707 () Bool)

(assert (=> d!1733962 (= c!950707 (isEmpty!33985 (ite (or c!950418 c!950410) s!2326 (ite c!950409 (_1!35779 lt!2222226) lt!2222225))))))

(assert (=> d!1733962 (validRegex!7013 (ite c!950418 lt!2222267 (ite c!950410 lt!2222155 (ite c!950409 (reg!15606 (regOne!31066 r!7292)) lt!2222304))))))

(assert (=> d!1733962 (= (matchR!7462 (ite c!950418 lt!2222267 (ite c!950410 lt!2222155 (ite c!950409 (reg!15606 (regOne!31066 r!7292)) lt!2222304))) (ite (or c!950418 c!950410) s!2326 (ite c!950409 (_1!35779 lt!2222226) lt!2222225))) lt!2222512)))

(assert (= (and d!1733962 c!950707) b!5447115))

(assert (= (and d!1733962 (not c!950707)) b!5447108))

(assert (= (and d!1733962 c!950708) b!5447110))

(assert (= (and d!1733962 (not c!950708)) b!5447106))

(assert (= (and b!5447106 c!950709) b!5447111))

(assert (= (and b!5447106 (not c!950709)) b!5447102))

(assert (= (and b!5447102 (not res!2319538)) b!5447114))

(assert (= (and b!5447114 res!2319543) b!5447103))

(assert (= (and b!5447103 res!2319541) b!5447105))

(assert (= (and b!5447105 res!2319545) b!5447112))

(assert (= (and b!5447114 (not res!2319542)) b!5447113))

(assert (= (and b!5447113 res!2319544) b!5447104))

(assert (= (and b!5447104 (not res!2319540)) b!5447109))

(assert (= (and b!5447109 (not res!2319539)) b!5447107))

(assert (= (or b!5447110 b!5447103 b!5447104) bm!393083))

(declare-fun m!6466908 () Bool)

(assert (=> d!1733962 m!6466908))

(declare-fun m!6466910 () Bool)

(assert (=> d!1733962 m!6466910))

(declare-fun m!6466912 () Bool)

(assert (=> b!5447107 m!6466912))

(assert (=> b!5447108 m!6466912))

(assert (=> b!5447108 m!6466912))

(declare-fun m!6466914 () Bool)

(assert (=> b!5447108 m!6466914))

(declare-fun m!6466916 () Bool)

(assert (=> b!5447108 m!6466916))

(assert (=> b!5447108 m!6466914))

(assert (=> b!5447108 m!6466916))

(declare-fun m!6466918 () Bool)

(assert (=> b!5447108 m!6466918))

(declare-fun m!6466920 () Bool)

(assert (=> b!5447115 m!6466920))

(assert (=> b!5447109 m!6466916))

(assert (=> b!5447109 m!6466916))

(declare-fun m!6466922 () Bool)

(assert (=> b!5447109 m!6466922))

(assert (=> b!5447112 m!6466912))

(assert (=> b!5447105 m!6466916))

(assert (=> b!5447105 m!6466916))

(assert (=> b!5447105 m!6466922))

(assert (=> bm!393083 m!6466908))

(assert (=> bm!392843 d!1733962))

(declare-fun bs!1256855 () Bool)

(declare-fun d!1733964 () Bool)

(assert (= bs!1256855 (and d!1733964 b!5446005)))

(declare-fun lambda!287295 () Int)

(assert (=> bs!1256855 (not (= lambda!287295 lambda!287188))))

(declare-fun bs!1256856 () Bool)

(assert (= bs!1256856 (and d!1733964 b!5445993)))

(assert (=> bs!1256856 (not (= lambda!287295 lambda!287192))))

(declare-fun bs!1256857 () Bool)

(assert (= bs!1256857 (and d!1733964 d!1733946)))

(assert (=> bs!1256857 (= (and (= (ite (or c!950410 c!950414 c!950409 c!950415) s!2326 Nil!62006) s!2326) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 (ite c!950415 lt!2222184 (reg!15606 (regOne!31066 r!7292))))) (regOne!31066 r!7292)) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 (ite (or c!950409 c!950415) (regTwo!31066 r!7292) lt!2222247))) (regTwo!31066 r!7292))) (= lambda!287295 lambda!287293))))

(declare-fun bs!1256858 () Bool)

(assert (= bs!1256858 (and d!1733964 d!1733942)))

(assert (=> bs!1256858 (= (and (= (ite (or c!950410 c!950414 c!950409 c!950415) s!2326 Nil!62006) s!2326) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 (ite c!950415 lt!2222184 (reg!15606 (regOne!31066 r!7292))))) (regOne!31066 r!7292)) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 (ite (or c!950409 c!950415) (regTwo!31066 r!7292) lt!2222247))) (regTwo!31066 r!7292))) (= lambda!287295 lambda!287292))))

(declare-fun bs!1256859 () Bool)

(assert (= bs!1256859 (and d!1733964 b!5446006)))

(assert (=> bs!1256859 (= (and (= (ite (or c!950410 c!950414 c!950409 c!950415) s!2326 Nil!62006) (_1!35779 lt!2222148)) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 (ite c!950415 lt!2222184 (reg!15606 (regOne!31066 r!7292))))) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 (ite (or c!950409 c!950415) (regTwo!31066 r!7292) lt!2222247))) lt!2222247)) (= lambda!287295 lambda!287199))))

(assert (=> bs!1256855 (not (= lambda!287295 lambda!287186))))

(declare-fun bs!1256860 () Bool)

(assert (= bs!1256860 (and d!1733964 d!1733728)))

(assert (=> bs!1256860 (not (= lambda!287295 lambda!287251))))

(declare-fun bs!1256861 () Bool)

(assert (= bs!1256861 (and d!1733964 b!5446028)))

(assert (=> bs!1256861 (= (and (= (ite (or c!950410 c!950414 c!950409 c!950415) s!2326 Nil!62006) s!2326) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 (ite c!950415 lt!2222184 (reg!15606 (regOne!31066 r!7292))))) (regOne!31066 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 (ite (or c!950409 c!950415) (regTwo!31066 r!7292) lt!2222247))) lt!2222146)) (= lambda!287295 lambda!287181))))

(declare-fun bs!1256862 () Bool)

(assert (= bs!1256862 (and d!1733964 b!5446695)))

(assert (=> bs!1256862 (not (= lambda!287295 lambda!287268))))

(assert (=> bs!1256861 (not (= lambda!287295 lambda!287182))))

(declare-fun bs!1256863 () Bool)

(assert (= bs!1256863 (and d!1733964 b!5446967)))

(assert (=> bs!1256863 (not (= lambda!287295 lambda!287286))))

(declare-fun bs!1256864 () Bool)

(assert (= bs!1256864 (and d!1733964 b!5445995)))

(assert (=> bs!1256864 (not (= lambda!287295 lambda!287204))))

(assert (=> bs!1256859 (not (= lambda!287295 lambda!287201))))

(declare-fun bs!1256865 () Bool)

(assert (= bs!1256865 (and d!1733964 b!5446692)))

(assert (=> bs!1256865 (not (= lambda!287295 lambda!287267))))

(declare-fun bs!1256866 () Bool)

(assert (= bs!1256866 (and d!1733964 b!5446036)))

(assert (=> bs!1256866 (not (= lambda!287295 lambda!287179))))

(assert (=> bs!1256859 (= (and (= (ite (or c!950410 c!950414 c!950409 c!950415) s!2326 Nil!62006) s!2326) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 (ite c!950415 lt!2222184 (reg!15606 (regOne!31066 r!7292))))) lt!2222184) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 (ite (or c!950409 c!950415) (regTwo!31066 r!7292) lt!2222247))) (regTwo!31066 r!7292))) (= lambda!287295 lambda!287197))))

(declare-fun bs!1256867 () Bool)

(assert (= bs!1256867 (and d!1733964 b!5446578)))

(assert (=> bs!1256867 (not (= lambda!287295 lambda!287257))))

(assert (=> bs!1256855 (= (and (= (ite (or c!950410 c!950414 c!950409 c!950415) s!2326 Nil!62006) s!2326) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 (ite c!950415 lt!2222184 (reg!15606 (regOne!31066 r!7292))))) (regTwo!31066 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 (ite (or c!950409 c!950415) (regTwo!31066 r!7292) lt!2222247))) lt!2222211)) (= lambda!287295 lambda!287187))))

(assert (=> bs!1256864 (not (= lambda!287295 lambda!287203))))

(assert (=> bs!1256861 (= (and (= (ite (or c!950410 c!950414 c!950409 c!950415) s!2326 Nil!62006) s!2326) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 (ite c!950415 lt!2222184 (reg!15606 (regOne!31066 r!7292))))) (regTwo!31066 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 (ite (or c!950409 c!950415) (regTwo!31066 r!7292) lt!2222247))) lt!2222240)) (= lambda!287295 lambda!287183))))

(assert (=> bs!1256859 (not (= lambda!287295 lambda!287198))))

(assert (=> bs!1256864 (= (and (= (ite (or c!950410 c!950414 c!950409 c!950415) s!2326 Nil!62006) Nil!62006) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 (ite c!950415 lt!2222184 (reg!15606 (regOne!31066 r!7292))))) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 (ite (or c!950409 c!950415) (regTwo!31066 r!7292) lt!2222247))) lt!2222247)) (= lambda!287295 lambda!287202))))

(declare-fun bs!1256868 () Bool)

(assert (= bs!1256868 (and d!1733964 d!1733706)))

(assert (=> bs!1256868 (= (and (= (ite (or c!950410 c!950414 c!950409 c!950415) s!2326 Nil!62006) s!2326) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 (ite c!950415 lt!2222184 (reg!15606 (regOne!31066 r!7292))))) (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 (ite (or c!950409 c!950415) (regTwo!31066 r!7292) lt!2222247))) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))))) (= lambda!287295 lambda!287237))))

(declare-fun bs!1256869 () Bool)

(assert (= bs!1256869 (and d!1733964 b!5446575)))

(assert (=> bs!1256869 (not (= lambda!287295 lambda!287256))))

(assert (=> bs!1256861 (not (= lambda!287295 lambda!287184))))

(assert (=> bs!1256866 (= (and (= (ite (or c!950410 c!950414 c!950409 c!950415) s!2326 Nil!62006) s!2326) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 (ite c!950415 lt!2222184 (reg!15606 (regOne!31066 r!7292))))) (regOne!31066 r!7292)) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 (ite (or c!950409 c!950415) (regTwo!31066 r!7292) lt!2222247))) (regTwo!31066 r!7292))) (= lambda!287295 lambda!287178))))

(assert (=> bs!1256868 (not (= lambda!287295 lambda!287238))))

(declare-fun bs!1256870 () Bool)

(assert (= bs!1256870 (and d!1733964 d!1733902)))

(assert (=> bs!1256870 (= (and (= (ite (or c!950410 c!950414 c!950409 c!950415) s!2326 Nil!62006) (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (_1!35779 lt!2222148)))) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 (ite c!950415 lt!2222184 (reg!15606 (regOne!31066 r!7292))))) (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292)))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 (ite (or c!950409 c!950415) (regTwo!31066 r!7292) lt!2222247))) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 lt!2222247)))) (= lambda!287295 lambda!287284))))

(assert (=> bs!1256860 (= (and (= (ite (or c!950410 c!950414 c!950409 c!950415) s!2326 Nil!62006) (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 (ite c!950415 lt!2222184 (reg!15606 (regOne!31066 r!7292))))) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 (ite (or c!950409 c!950415) (regTwo!31066 r!7292) lt!2222247))) (Star!15277 (reg!15606 (regOne!31066 r!7292))))) (= lambda!287295 lambda!287250))))

(assert (=> bs!1256856 (not (= lambda!287295 lambda!287193))))

(declare-fun bs!1256871 () Bool)

(assert (= bs!1256871 (and d!1733964 b!5446970)))

(assert (=> bs!1256871 (not (= lambda!287295 lambda!287287))))

(declare-fun bs!1256872 () Bool)

(assert (= bs!1256872 (and d!1733964 b!5446010)))

(assert (=> bs!1256872 (not (= lambda!287295 lambda!287190))))

(assert (=> bs!1256859 (not (= lambda!287295 lambda!287200))))

(assert (=> bs!1256856 (= (and (= (ite (or c!950410 c!950414 c!950409 c!950415) s!2326 Nil!62006) (_1!35779 lt!2222282)) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 (ite c!950415 lt!2222184 (reg!15606 (regOne!31066 r!7292))))) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 (ite (or c!950409 c!950415) (regTwo!31066 r!7292) lt!2222247))) lt!2222247)) (= lambda!287295 lambda!287191))))

(assert (=> bs!1256872 (= (and (= (ite (or c!950410 c!950414 c!950409 c!950415) s!2326 Nil!62006) s!2326) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 (ite c!950415 lt!2222184 (reg!15606 (regOne!31066 r!7292))))) lt!2222247) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 (ite (or c!950409 c!950415) (regTwo!31066 r!7292) lt!2222247))) (regTwo!31066 r!7292))) (= lambda!287295 lambda!287189))))

(assert (=> bs!1256855 (= (and (= (ite (or c!950410 c!950414 c!950409 c!950415) s!2326 Nil!62006) s!2326) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 (ite c!950415 lt!2222184 (reg!15606 (regOne!31066 r!7292))))) (regOne!31066 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 (ite (or c!950409 c!950415) (regTwo!31066 r!7292) lt!2222247))) lt!2222299)) (= lambda!287295 lambda!287185))))

(assert (=> bs!1256857 (not (= lambda!287295 lambda!287294))))

(assert (=> d!1733964 true))

(assert (=> d!1733964 true))

(assert (=> d!1733964 true))

(assert (=> d!1733964 (= (isDefined!12091 (findConcatSeparation!1802 (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 (ite c!950415 lt!2222184 (reg!15606 (regOne!31066 r!7292))))) (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 (ite (or c!950409 c!950415) (regTwo!31066 r!7292) lt!2222247))) Nil!62006 (ite (or c!950410 c!950414 c!950409 c!950415) s!2326 Nil!62006) (ite (or c!950410 c!950414 c!950409 c!950415) s!2326 Nil!62006))) (Exists!2458 lambda!287295))))

(declare-fun lt!2222513 () Unit!154704)

(assert (=> d!1733964 (= lt!2222513 (choose!41335 (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 (ite c!950415 lt!2222184 (reg!15606 (regOne!31066 r!7292))))) (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 (ite (or c!950409 c!950415) (regTwo!31066 r!7292) lt!2222247))) (ite (or c!950410 c!950414 c!950409 c!950415) s!2326 Nil!62006)))))

(assert (=> d!1733964 (validRegex!7013 (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 (ite c!950415 lt!2222184 (reg!15606 (regOne!31066 r!7292))))))))

(assert (=> d!1733964 (= (lemmaFindConcatSeparationEquivalentToExists!1566 (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 (ite c!950415 lt!2222184 (reg!15606 (regOne!31066 r!7292))))) (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 (ite (or c!950409 c!950415) (regTwo!31066 r!7292) lt!2222247))) (ite (or c!950410 c!950414 c!950409 c!950415) s!2326 Nil!62006)) lt!2222513)))

(declare-fun bs!1256873 () Bool)

(assert (= bs!1256873 d!1733964))

(declare-fun m!6466924 () Bool)

(assert (=> bs!1256873 m!6466924))

(declare-fun m!6466926 () Bool)

(assert (=> bs!1256873 m!6466926))

(declare-fun m!6466928 () Bool)

(assert (=> bs!1256873 m!6466928))

(declare-fun m!6466930 () Bool)

(assert (=> bs!1256873 m!6466930))

(declare-fun m!6466932 () Bool)

(assert (=> bs!1256873 m!6466932))

(assert (=> bs!1256873 m!6466926))

(assert (=> bm!392923 d!1733964))

(declare-fun bs!1256874 () Bool)

(declare-fun d!1733966 () Bool)

(assert (= bs!1256874 (and d!1733966 d!1733880)))

(declare-fun lambda!287298 () Int)

(assert (=> bs!1256874 (= lambda!287298 lambda!287279)))

(declare-fun bs!1256875 () Bool)

(assert (= bs!1256875 (and d!1733966 d!1733924)))

(assert (=> bs!1256875 (= lambda!287298 lambda!287288)))

(declare-fun bs!1256876 () Bool)

(assert (= bs!1256876 (and d!1733966 b!5445993)))

(assert (=> bs!1256876 (= lambda!287298 lambda!287194)))

(declare-fun bs!1256877 () Bool)

(assert (= bs!1256877 (and d!1733966 b!5446022)))

(assert (=> bs!1256877 (= lambda!287298 lambda!287205)))

(declare-fun bs!1256878 () Bool)

(assert (= bs!1256878 (and d!1733966 b!5446006)))

(assert (=> bs!1256878 (= lambda!287298 lambda!287196)))

(assert (=> d!1733966 (matchZipper!1521 (store ((as const (Array Context!9322 Bool)) false) (Context!9323 (++!13634 (exprs!5161 lt!2222124) (exprs!5161 lt!2222313))) true) (++!13633 (ite c!950409 (_1!35779 lt!2222226) (_1!35779 lt!2222305)) (ite c!950409 lt!2222286 (_2!35779 lt!2222305))))))

(declare-fun lt!2222519 () Unit!154704)

(assert (=> d!1733966 (= lt!2222519 (lemmaConcatPreservesForall!244 (exprs!5161 lt!2222124) (exprs!5161 lt!2222313) lambda!287298))))

(declare-fun lt!2222518 () Unit!154704)

(declare-fun choose!41340 (Context!9322 Context!9322 List!62130 List!62130) Unit!154704)

(assert (=> d!1733966 (= lt!2222518 (choose!41340 lt!2222124 lt!2222313 (ite c!950409 (_1!35779 lt!2222226) (_1!35779 lt!2222305)) (ite c!950409 lt!2222286 (_2!35779 lt!2222305))))))

(assert (=> d!1733966 (matchZipper!1521 (store ((as const (Array Context!9322 Bool)) false) lt!2222124 true) (ite c!950409 (_1!35779 lt!2222226) (_1!35779 lt!2222305)))))

(assert (=> d!1733966 (= (lemmaConcatenateContextMatchesConcatOfStrings!92 lt!2222124 lt!2222313 (ite c!950409 (_1!35779 lt!2222226) (_1!35779 lt!2222305)) (ite c!950409 lt!2222286 (_2!35779 lt!2222305))) lt!2222518)))

(declare-fun bs!1256879 () Bool)

(assert (= bs!1256879 d!1733966))

(declare-fun m!6466934 () Bool)

(assert (=> bs!1256879 m!6466934))

(declare-fun m!6466936 () Bool)

(assert (=> bs!1256879 m!6466936))

(declare-fun m!6466938 () Bool)

(assert (=> bs!1256879 m!6466938))

(assert (=> bs!1256879 m!6466938))

(assert (=> bs!1256879 m!6466936))

(declare-fun m!6466940 () Bool)

(assert (=> bs!1256879 m!6466940))

(declare-fun m!6466942 () Bool)

(assert (=> bs!1256879 m!6466942))

(assert (=> bs!1256879 m!6465398))

(declare-fun m!6466944 () Bool)

(assert (=> bs!1256879 m!6466944))

(assert (=> bs!1256879 m!6465398))

(declare-fun m!6466946 () Bool)

(assert (=> bs!1256879 m!6466946))

(assert (=> bm!392828 d!1733966))

(declare-fun d!1733968 () Bool)

(assert (=> d!1733968 (= (Exists!2458 (ite c!950410 lambda!287183 (ite c!950414 lambda!287187 (ite c!950409 lambda!287189 (ite c!950415 lambda!287201 lambda!287202))))) (choose!41324 (ite c!950410 lambda!287183 (ite c!950414 lambda!287187 (ite c!950409 lambda!287189 (ite c!950415 lambda!287201 lambda!287202))))))))

(declare-fun bs!1256880 () Bool)

(assert (= bs!1256880 d!1733968))

(declare-fun m!6466948 () Bool)

(assert (=> bs!1256880 m!6466948))

(assert (=> bm!392762 d!1733968))

(assert (=> bm!392884 d!1733790))

(declare-fun d!1733970 () Bool)

(declare-fun c!950710 () Bool)

(assert (=> d!1733970 (= c!950710 (isEmpty!33985 (ite (or c!950418 c!950410) (t!375357 s!2326) (ite c!950411 (ite c!950409 (ite c!950420 s!2326 lt!2222286) (_1!35779 lt!2222305)) s!2326))))))

(declare-fun e!3373850 () Bool)

(assert (=> d!1733970 (= (matchZipper!1521 (ite c!950418 lt!2222289 (ite c!950410 ((_ map or) lt!2222318 lt!2222256) (ite c!950411 (ite c!950409 (ite c!950420 z!1189 lt!2222119) lt!2222169) lt!2222314))) (ite (or c!950418 c!950410) (t!375357 s!2326) (ite c!950411 (ite c!950409 (ite c!950420 s!2326 lt!2222286) (_1!35779 lt!2222305)) s!2326))) e!3373850)))

(declare-fun b!5447116 () Bool)

(assert (=> b!5447116 (= e!3373850 (nullableZipper!1480 (ite c!950418 lt!2222289 (ite c!950410 ((_ map or) lt!2222318 lt!2222256) (ite c!950411 (ite c!950409 (ite c!950420 z!1189 lt!2222119) lt!2222169) lt!2222314)))))))

(declare-fun b!5447117 () Bool)

(assert (=> b!5447117 (= e!3373850 (matchZipper!1521 (derivationStepZipper!1496 (ite c!950418 lt!2222289 (ite c!950410 ((_ map or) lt!2222318 lt!2222256) (ite c!950411 (ite c!950409 (ite c!950420 z!1189 lt!2222119) lt!2222169) lt!2222314))) (head!11677 (ite (or c!950418 c!950410) (t!375357 s!2326) (ite c!950411 (ite c!950409 (ite c!950420 s!2326 lt!2222286) (_1!35779 lt!2222305)) s!2326)))) (tail!10774 (ite (or c!950418 c!950410) (t!375357 s!2326) (ite c!950411 (ite c!950409 (ite c!950420 s!2326 lt!2222286) (_1!35779 lt!2222305)) s!2326)))))))

(assert (= (and d!1733970 c!950710) b!5447116))

(assert (= (and d!1733970 (not c!950710)) b!5447117))

(declare-fun m!6466950 () Bool)

(assert (=> d!1733970 m!6466950))

(declare-fun m!6466952 () Bool)

(assert (=> b!5447116 m!6466952))

(declare-fun m!6466954 () Bool)

(assert (=> b!5447117 m!6466954))

(assert (=> b!5447117 m!6466954))

(declare-fun m!6466956 () Bool)

(assert (=> b!5447117 m!6466956))

(declare-fun m!6466958 () Bool)

(assert (=> b!5447117 m!6466958))

(assert (=> b!5447117 m!6466956))

(assert (=> b!5447117 m!6466958))

(declare-fun m!6466960 () Bool)

(assert (=> b!5447117 m!6466960))

(assert (=> bm!392916 d!1733970))

(declare-fun d!1733972 () Bool)

(declare-fun c!950711 () Bool)

(assert (=> d!1733972 (= c!950711 (isEmpty!33985 (t!375357 s!2326)))))

(declare-fun e!3373851 () Bool)

(assert (=> d!1733972 (= (matchZipper!1521 (ite c!950418 ((_ map or) lt!2222142 lt!2222122) ((_ map or) lt!2222318 lt!2222228)) (t!375357 s!2326)) e!3373851)))

(declare-fun b!5447118 () Bool)

(assert (=> b!5447118 (= e!3373851 (nullableZipper!1480 (ite c!950418 ((_ map or) lt!2222142 lt!2222122) ((_ map or) lt!2222318 lt!2222228))))))

(declare-fun b!5447119 () Bool)

(assert (=> b!5447119 (= e!3373851 (matchZipper!1521 (derivationStepZipper!1496 (ite c!950418 ((_ map or) lt!2222142 lt!2222122) ((_ map or) lt!2222318 lt!2222228)) (head!11677 (t!375357 s!2326))) (tail!10774 (t!375357 s!2326))))))

(assert (= (and d!1733972 c!950711) b!5447118))

(assert (= (and d!1733972 (not c!950711)) b!5447119))

(declare-fun m!6466962 () Bool)

(assert (=> d!1733972 m!6466962))

(declare-fun m!6466964 () Bool)

(assert (=> b!5447118 m!6466964))

(declare-fun m!6466966 () Bool)

(assert (=> b!5447119 m!6466966))

(assert (=> b!5447119 m!6466966))

(declare-fun m!6466968 () Bool)

(assert (=> b!5447119 m!6466968))

(declare-fun m!6466970 () Bool)

(assert (=> b!5447119 m!6466970))

(assert (=> b!5447119 m!6466968))

(assert (=> b!5447119 m!6466970))

(declare-fun m!6466972 () Bool)

(assert (=> b!5447119 m!6466972))

(assert (=> bm!392934 d!1733972))

(declare-fun d!1733974 () Bool)

(assert (=> d!1733974 (= (isDefined!12091 (ite c!950410 call!392797 (ite c!950414 call!392795 (ite c!950409 lt!2222154 (ite c!950415 lt!2222153 call!392958))))) (not (isEmpty!33989 (ite c!950410 call!392797 (ite c!950414 call!392795 (ite c!950409 lt!2222154 (ite c!950415 lt!2222153 call!392958)))))))))

(declare-fun bs!1256881 () Bool)

(assert (= bs!1256881 d!1733974))

(declare-fun m!6466974 () Bool)

(assert (=> bs!1256881 m!6466974))

(assert (=> bm!392838 d!1733974))

(declare-fun d!1733976 () Bool)

(assert (=> d!1733976 (= (flatMap!1004 (ite c!950418 lt!2222196 (ite c!950410 lt!2222123 lt!2222169)) (ite c!950418 lambda!287180 (ite c!950410 lambda!287180 lambda!287180))) (dynLambda!24390 (ite c!950418 lambda!287180 (ite c!950410 lambda!287180 lambda!287180)) (ite c!950418 lt!2222175 (ite c!950410 lt!2222297 lt!2222124))))))

(declare-fun lt!2222520 () Unit!154704)

(assert (=> d!1733976 (= lt!2222520 (choose!41331 (ite c!950418 lt!2222196 (ite c!950410 lt!2222123 lt!2222169)) (ite c!950418 lt!2222175 (ite c!950410 lt!2222297 lt!2222124)) (ite c!950418 lambda!287180 (ite c!950410 lambda!287180 lambda!287180))))))

(assert (=> d!1733976 (= (ite c!950418 lt!2222196 (ite c!950410 lt!2222123 lt!2222169)) (store ((as const (Array Context!9322 Bool)) false) (ite c!950418 lt!2222175 (ite c!950410 lt!2222297 lt!2222124)) true))))

(assert (=> d!1733976 (= (lemmaFlatMapOnSingletonSet!536 (ite c!950418 lt!2222196 (ite c!950410 lt!2222123 lt!2222169)) (ite c!950418 lt!2222175 (ite c!950410 lt!2222297 lt!2222124)) (ite c!950418 lambda!287180 (ite c!950410 lambda!287180 lambda!287180))) lt!2222520)))

(declare-fun b_lambda!207519 () Bool)

(assert (=> (not b_lambda!207519) (not d!1733976)))

(declare-fun bs!1256882 () Bool)

(assert (= bs!1256882 d!1733976))

(declare-fun m!6466976 () Bool)

(assert (=> bs!1256882 m!6466976))

(declare-fun m!6466978 () Bool)

(assert (=> bs!1256882 m!6466978))

(declare-fun m!6466980 () Bool)

(assert (=> bs!1256882 m!6466980))

(declare-fun m!6466982 () Bool)

(assert (=> bs!1256882 m!6466982))

(assert (=> bm!392821 d!1733976))

(declare-fun d!1733978 () Bool)

(assert (=> d!1733978 (= (Exists!2458 (ite c!950410 lambda!287181 (ite c!950414 lambda!287186 (ite c!950409 lambda!287193 lambda!287199)))) (choose!41324 (ite c!950410 lambda!287181 (ite c!950414 lambda!287186 (ite c!950409 lambda!287193 lambda!287199)))))))

(declare-fun bs!1256883 () Bool)

(assert (= bs!1256883 d!1733978))

(declare-fun m!6466984 () Bool)

(assert (=> bs!1256883 m!6466984))

(assert (=> bm!392950 d!1733978))

(declare-fun d!1733980 () Bool)

(assert (=> d!1733980 (= (flatMap!1004 (ite c!950418 lt!2222196 (ite c!950410 lt!2222123 (ite c!950409 lt!2222132 lt!2222158))) (ite c!950418 lambda!287180 (ite c!950410 lambda!287180 (ite c!950409 lambda!287180 lambda!287180)))) (choose!41327 (ite c!950418 lt!2222196 (ite c!950410 lt!2222123 (ite c!950409 lt!2222132 lt!2222158))) (ite c!950418 lambda!287180 (ite c!950410 lambda!287180 (ite c!950409 lambda!287180 lambda!287180)))))))

(declare-fun bs!1256884 () Bool)

(assert (= bs!1256884 d!1733980))

(declare-fun m!6466986 () Bool)

(assert (=> bs!1256884 m!6466986))

(assert (=> bm!392855 d!1733980))

(declare-fun b!5447120 () Bool)

(declare-fun e!3373854 () (InoxSet Context!9322))

(declare-fun e!3373853 () (InoxSet Context!9322))

(assert (=> b!5447120 (= e!3373854 e!3373853)))

(declare-fun c!950712 () Bool)

(assert (=> b!5447120 (= c!950712 ((_ is Cons!62007) (exprs!5161 (Context!9323 (Cons!62007 (h!68455 (exprs!5161 (h!68456 zl!343))) (t!375358 (exprs!5161 (h!68456 zl!343))))))))))

(declare-fun b!5447121 () Bool)

(declare-fun call!393089 () (InoxSet Context!9322))

(assert (=> b!5447121 (= e!3373853 call!393089)))

(declare-fun b!5447123 () Bool)

(declare-fun e!3373852 () Bool)

(assert (=> b!5447123 (= e!3373852 (nullable!5446 (h!68455 (exprs!5161 (Context!9323 (Cons!62007 (h!68455 (exprs!5161 (h!68456 zl!343))) (t!375358 (exprs!5161 (h!68456 zl!343)))))))))))

(declare-fun b!5447124 () Bool)

(assert (=> b!5447124 (= e!3373854 ((_ map or) call!393089 (derivationStepZipperUp!649 (Context!9323 (t!375358 (exprs!5161 (Context!9323 (Cons!62007 (h!68455 (exprs!5161 (h!68456 zl!343))) (t!375358 (exprs!5161 (h!68456 zl!343)))))))) (h!68454 s!2326))))))

(declare-fun bm!393084 () Bool)

(assert (=> bm!393084 (= call!393089 (derivationStepZipperDown!725 (h!68455 (exprs!5161 (Context!9323 (Cons!62007 (h!68455 (exprs!5161 (h!68456 zl!343))) (t!375358 (exprs!5161 (h!68456 zl!343))))))) (Context!9323 (t!375358 (exprs!5161 (Context!9323 (Cons!62007 (h!68455 (exprs!5161 (h!68456 zl!343))) (t!375358 (exprs!5161 (h!68456 zl!343)))))))) (h!68454 s!2326)))))

(declare-fun b!5447122 () Bool)

(assert (=> b!5447122 (= e!3373853 ((as const (Array Context!9322 Bool)) false))))

(declare-fun d!1733982 () Bool)

(declare-fun c!950713 () Bool)

(assert (=> d!1733982 (= c!950713 e!3373852)))

(declare-fun res!2319546 () Bool)

(assert (=> d!1733982 (=> (not res!2319546) (not e!3373852))))

(assert (=> d!1733982 (= res!2319546 ((_ is Cons!62007) (exprs!5161 (Context!9323 (Cons!62007 (h!68455 (exprs!5161 (h!68456 zl!343))) (t!375358 (exprs!5161 (h!68456 zl!343))))))))))

(assert (=> d!1733982 (= (derivationStepZipperUp!649 (Context!9323 (Cons!62007 (h!68455 (exprs!5161 (h!68456 zl!343))) (t!375358 (exprs!5161 (h!68456 zl!343))))) (h!68454 s!2326)) e!3373854)))

(assert (= (and d!1733982 res!2319546) b!5447123))

(assert (= (and d!1733982 c!950713) b!5447124))

(assert (= (and d!1733982 (not c!950713)) b!5447120))

(assert (= (and b!5447120 c!950712) b!5447121))

(assert (= (and b!5447120 (not c!950712)) b!5447122))

(assert (= (or b!5447124 b!5447121) bm!393084))

(declare-fun m!6466988 () Bool)

(assert (=> b!5447123 m!6466988))

(declare-fun m!6466990 () Bool)

(assert (=> b!5447124 m!6466990))

(declare-fun m!6466992 () Bool)

(assert (=> bm!393084 m!6466992))

(assert (=> b!5446025 d!1733982))

(declare-fun d!1733984 () Bool)

(assert (=> d!1733984 (= (flatMap!1004 lt!2222170 lambda!287180) (dynLambda!24390 lambda!287180 lt!2222248))))

(declare-fun lt!2222521 () Unit!154704)

(assert (=> d!1733984 (= lt!2222521 (choose!41331 lt!2222170 lt!2222248 lambda!287180))))

(assert (=> d!1733984 (= lt!2222170 (store ((as const (Array Context!9322 Bool)) false) lt!2222248 true))))

(assert (=> d!1733984 (= (lemmaFlatMapOnSingletonSet!536 lt!2222170 lt!2222248 lambda!287180) lt!2222521)))

(declare-fun b_lambda!207521 () Bool)

(assert (=> (not b_lambda!207521) (not d!1733984)))

(declare-fun bs!1256885 () Bool)

(assert (= bs!1256885 d!1733984))

(assert (=> bs!1256885 m!6465592))

(declare-fun m!6466994 () Bool)

(assert (=> bs!1256885 m!6466994))

(declare-fun m!6466996 () Bool)

(assert (=> bs!1256885 m!6466996))

(assert (=> bs!1256885 m!6465394))

(assert (=> b!5446025 d!1733984))

(declare-fun b!5447125 () Bool)

(declare-fun e!3373857 () (InoxSet Context!9322))

(declare-fun e!3373856 () (InoxSet Context!9322))

(assert (=> b!5447125 (= e!3373857 e!3373856)))

(declare-fun c!950714 () Bool)

(assert (=> b!5447125 (= c!950714 ((_ is Cons!62007) (exprs!5161 lt!2222248)))))

(declare-fun b!5447126 () Bool)

(declare-fun call!393090 () (InoxSet Context!9322))

(assert (=> b!5447126 (= e!3373856 call!393090)))

(declare-fun b!5447128 () Bool)

(declare-fun e!3373855 () Bool)

(assert (=> b!5447128 (= e!3373855 (nullable!5446 (h!68455 (exprs!5161 lt!2222248))))))

(declare-fun b!5447129 () Bool)

(assert (=> b!5447129 (= e!3373857 ((_ map or) call!393090 (derivationStepZipperUp!649 (Context!9323 (t!375358 (exprs!5161 lt!2222248))) (h!68454 s!2326))))))

(declare-fun bm!393085 () Bool)

(assert (=> bm!393085 (= call!393090 (derivationStepZipperDown!725 (h!68455 (exprs!5161 lt!2222248)) (Context!9323 (t!375358 (exprs!5161 lt!2222248))) (h!68454 s!2326)))))

(declare-fun b!5447127 () Bool)

(assert (=> b!5447127 (= e!3373856 ((as const (Array Context!9322 Bool)) false))))

(declare-fun d!1733986 () Bool)

(declare-fun c!950715 () Bool)

(assert (=> d!1733986 (= c!950715 e!3373855)))

(declare-fun res!2319547 () Bool)

(assert (=> d!1733986 (=> (not res!2319547) (not e!3373855))))

(assert (=> d!1733986 (= res!2319547 ((_ is Cons!62007) (exprs!5161 lt!2222248)))))

(assert (=> d!1733986 (= (derivationStepZipperUp!649 lt!2222248 (h!68454 s!2326)) e!3373857)))

(assert (= (and d!1733986 res!2319547) b!5447128))

(assert (= (and d!1733986 c!950715) b!5447129))

(assert (= (and d!1733986 (not c!950715)) b!5447125))

(assert (= (and b!5447125 c!950714) b!5447126))

(assert (= (and b!5447125 (not c!950714)) b!5447127))

(assert (= (or b!5447129 b!5447126) bm!393085))

(declare-fun m!6466998 () Bool)

(assert (=> b!5447128 m!6466998))

(declare-fun m!6467000 () Bool)

(assert (=> b!5447129 m!6467000))

(declare-fun m!6467002 () Bool)

(assert (=> bm!393085 m!6467002))

(assert (=> b!5446025 d!1733986))

(declare-fun b!5447130 () Bool)

(declare-fun e!3373860 () (InoxSet Context!9322))

(declare-fun e!3373859 () (InoxSet Context!9322))

(assert (=> b!5447130 (= e!3373860 e!3373859)))

(declare-fun c!950716 () Bool)

(assert (=> b!5447130 (= c!950716 ((_ is Cons!62007) (exprs!5161 (h!68456 zl!343))))))

(declare-fun b!5447131 () Bool)

(declare-fun call!393091 () (InoxSet Context!9322))

(assert (=> b!5447131 (= e!3373859 call!393091)))

(declare-fun b!5447133 () Bool)

(declare-fun e!3373858 () Bool)

(assert (=> b!5447133 (= e!3373858 (nullable!5446 (h!68455 (exprs!5161 (h!68456 zl!343)))))))

(declare-fun b!5447134 () Bool)

(assert (=> b!5447134 (= e!3373860 ((_ map or) call!393091 (derivationStepZipperUp!649 (Context!9323 (t!375358 (exprs!5161 (h!68456 zl!343)))) (h!68454 s!2326))))))

(declare-fun bm!393086 () Bool)

(assert (=> bm!393086 (= call!393091 (derivationStepZipperDown!725 (h!68455 (exprs!5161 (h!68456 zl!343))) (Context!9323 (t!375358 (exprs!5161 (h!68456 zl!343)))) (h!68454 s!2326)))))

(declare-fun b!5447132 () Bool)

(assert (=> b!5447132 (= e!3373859 ((as const (Array Context!9322 Bool)) false))))

(declare-fun d!1733988 () Bool)

(declare-fun c!950717 () Bool)

(assert (=> d!1733988 (= c!950717 e!3373858)))

(declare-fun res!2319548 () Bool)

(assert (=> d!1733988 (=> (not res!2319548) (not e!3373858))))

(assert (=> d!1733988 (= res!2319548 ((_ is Cons!62007) (exprs!5161 (h!68456 zl!343))))))

(assert (=> d!1733988 (= (derivationStepZipperUp!649 (h!68456 zl!343) (h!68454 s!2326)) e!3373860)))

(assert (= (and d!1733988 res!2319548) b!5447133))

(assert (= (and d!1733988 c!950717) b!5447134))

(assert (= (and d!1733988 (not c!950717)) b!5447130))

(assert (= (and b!5447130 c!950716) b!5447131))

(assert (= (and b!5447130 (not c!950716)) b!5447132))

(assert (= (or b!5447134 b!5447131) bm!393086))

(assert (=> b!5447133 m!6465596))

(declare-fun m!6467004 () Bool)

(assert (=> b!5447134 m!6467004))

(declare-fun m!6467006 () Bool)

(assert (=> bm!393086 m!6467006))

(assert (=> b!5446025 d!1733988))

(declare-fun d!1733990 () Bool)

(declare-fun c!950722 () Bool)

(assert (=> d!1733990 (= c!950722 (and ((_ is ElementMatch!15277) (h!68455 (exprs!5161 (h!68456 zl!343)))) (= (c!950421 (h!68455 (exprs!5161 (h!68456 zl!343)))) (h!68454 s!2326))))))

(declare-fun e!3373863 () (InoxSet Context!9322))

(assert (=> d!1733990 (= (derivationStepZipperDown!725 (h!68455 (exprs!5161 (h!68456 zl!343))) lt!2222248 (h!68454 s!2326)) e!3373863)))

(declare-fun b!5447135 () Bool)

(declare-fun e!3373864 () (InoxSet Context!9322))

(declare-fun e!3373861 () (InoxSet Context!9322))

(assert (=> b!5447135 (= e!3373864 e!3373861)))

(declare-fun c!950719 () Bool)

(assert (=> b!5447135 (= c!950719 ((_ is Concat!24122) (h!68455 (exprs!5161 (h!68456 zl!343)))))))

(declare-fun c!950720 () Bool)

(declare-fun call!393094 () List!62131)

(declare-fun call!393092 () (InoxSet Context!9322))

(declare-fun bm!393087 () Bool)

(assert (=> bm!393087 (= call!393092 (derivationStepZipperDown!725 (ite c!950720 (regTwo!31067 (h!68455 (exprs!5161 (h!68456 zl!343)))) (regOne!31066 (h!68455 (exprs!5161 (h!68456 zl!343))))) (ite c!950720 lt!2222248 (Context!9323 call!393094)) (h!68454 s!2326)))))

(declare-fun call!393093 () (InoxSet Context!9322))

(declare-fun call!393097 () List!62131)

(declare-fun bm!393088 () Bool)

(declare-fun c!950721 () Bool)

(assert (=> bm!393088 (= call!393093 (derivationStepZipperDown!725 (ite c!950720 (regOne!31067 (h!68455 (exprs!5161 (h!68456 zl!343)))) (ite c!950721 (regTwo!31066 (h!68455 (exprs!5161 (h!68456 zl!343)))) (ite c!950719 (regOne!31066 (h!68455 (exprs!5161 (h!68456 zl!343)))) (reg!15606 (h!68455 (exprs!5161 (h!68456 zl!343))))))) (ite (or c!950720 c!950721) lt!2222248 (Context!9323 call!393097)) (h!68454 s!2326)))))

(declare-fun b!5447136 () Bool)

(declare-fun e!3373866 () (InoxSet Context!9322))

(assert (=> b!5447136 (= e!3373863 e!3373866)))

(assert (=> b!5447136 (= c!950720 ((_ is Union!15277) (h!68455 (exprs!5161 (h!68456 zl!343)))))))

(declare-fun bm!393089 () Bool)

(declare-fun call!393095 () (InoxSet Context!9322))

(assert (=> bm!393089 (= call!393095 call!393093)))

(declare-fun b!5447137 () Bool)

(declare-fun e!3373862 () Bool)

(assert (=> b!5447137 (= c!950721 e!3373862)))

(declare-fun res!2319549 () Bool)

(assert (=> b!5447137 (=> (not res!2319549) (not e!3373862))))

(assert (=> b!5447137 (= res!2319549 ((_ is Concat!24122) (h!68455 (exprs!5161 (h!68456 zl!343)))))))

(assert (=> b!5447137 (= e!3373866 e!3373864)))

(declare-fun bm!393090 () Bool)

(declare-fun call!393096 () (InoxSet Context!9322))

(assert (=> bm!393090 (= call!393096 call!393095)))

(declare-fun bm!393091 () Bool)

(assert (=> bm!393091 (= call!393097 call!393094)))

(declare-fun b!5447138 () Bool)

(assert (=> b!5447138 (= e!3373863 (store ((as const (Array Context!9322 Bool)) false) lt!2222248 true))))

(declare-fun b!5447139 () Bool)

(assert (=> b!5447139 (= e!3373862 (nullable!5446 (regOne!31066 (h!68455 (exprs!5161 (h!68456 zl!343))))))))

(declare-fun b!5447140 () Bool)

(assert (=> b!5447140 (= e!3373864 ((_ map or) call!393092 call!393095))))

(declare-fun bm!393092 () Bool)

(assert (=> bm!393092 (= call!393094 ($colon$colon!1530 (exprs!5161 lt!2222248) (ite (or c!950721 c!950719) (regTwo!31066 (h!68455 (exprs!5161 (h!68456 zl!343)))) (h!68455 (exprs!5161 (h!68456 zl!343))))))))

(declare-fun b!5447141 () Bool)

(assert (=> b!5447141 (= e!3373861 call!393096)))

(declare-fun b!5447142 () Bool)

(assert (=> b!5447142 (= e!3373866 ((_ map or) call!393093 call!393092))))

(declare-fun b!5447143 () Bool)

(declare-fun e!3373865 () (InoxSet Context!9322))

(assert (=> b!5447143 (= e!3373865 ((as const (Array Context!9322 Bool)) false))))

(declare-fun b!5447144 () Bool)

(declare-fun c!950718 () Bool)

(assert (=> b!5447144 (= c!950718 ((_ is Star!15277) (h!68455 (exprs!5161 (h!68456 zl!343)))))))

(assert (=> b!5447144 (= e!3373861 e!3373865)))

(declare-fun b!5447145 () Bool)

(assert (=> b!5447145 (= e!3373865 call!393096)))

(assert (= (and d!1733990 c!950722) b!5447138))

(assert (= (and d!1733990 (not c!950722)) b!5447136))

(assert (= (and b!5447136 c!950720) b!5447142))

(assert (= (and b!5447136 (not c!950720)) b!5447137))

(assert (= (and b!5447137 res!2319549) b!5447139))

(assert (= (and b!5447137 c!950721) b!5447140))

(assert (= (and b!5447137 (not c!950721)) b!5447135))

(assert (= (and b!5447135 c!950719) b!5447141))

(assert (= (and b!5447135 (not c!950719)) b!5447144))

(assert (= (and b!5447144 c!950718) b!5447145))

(assert (= (and b!5447144 (not c!950718)) b!5447143))

(assert (= (or b!5447141 b!5447145) bm!393091))

(assert (= (or b!5447141 b!5447145) bm!393090))

(assert (= (or b!5447140 bm!393091) bm!393092))

(assert (= (or b!5447140 bm!393090) bm!393089))

(assert (= (or b!5447142 b!5447140) bm!393087))

(assert (= (or b!5447142 bm!393089) bm!393088))

(declare-fun m!6467008 () Bool)

(assert (=> bm!393088 m!6467008))

(assert (=> b!5447138 m!6465394))

(declare-fun m!6467010 () Bool)

(assert (=> b!5447139 m!6467010))

(declare-fun m!6467012 () Bool)

(assert (=> bm!393087 m!6467012))

(declare-fun m!6467014 () Bool)

(assert (=> bm!393092 m!6467014))

(assert (=> b!5446025 d!1733990))

(declare-fun d!1733992 () Bool)

(assert (=> d!1733992 (= (flatMap!1004 z!1189 lambda!287180) (dynLambda!24390 lambda!287180 (h!68456 zl!343)))))

(declare-fun lt!2222522 () Unit!154704)

(assert (=> d!1733992 (= lt!2222522 (choose!41331 z!1189 (h!68456 zl!343) lambda!287180))))

(assert (=> d!1733992 (= z!1189 (store ((as const (Array Context!9322 Bool)) false) (h!68456 zl!343) true))))

(assert (=> d!1733992 (= (lemmaFlatMapOnSingletonSet!536 z!1189 (h!68456 zl!343) lambda!287180) lt!2222522)))

(declare-fun b_lambda!207523 () Bool)

(assert (=> (not b_lambda!207523) (not d!1733992)))

(declare-fun bs!1256886 () Bool)

(assert (= bs!1256886 d!1733992))

(assert (=> bs!1256886 m!6465584))

(declare-fun m!6467016 () Bool)

(assert (=> bs!1256886 m!6467016))

(declare-fun m!6467018 () Bool)

(assert (=> bs!1256886 m!6467018))

(declare-fun m!6467020 () Bool)

(assert (=> bs!1256886 m!6467020))

(assert (=> b!5446025 d!1733992))

(declare-fun d!1733994 () Bool)

(declare-fun nullableFct!1631 (Regex!15277) Bool)

(assert (=> d!1733994 (= (nullable!5446 (h!68455 (exprs!5161 (h!68456 zl!343)))) (nullableFct!1631 (h!68455 (exprs!5161 (h!68456 zl!343)))))))

(declare-fun bs!1256887 () Bool)

(assert (= bs!1256887 d!1733994))

(declare-fun m!6467022 () Bool)

(assert (=> bs!1256887 m!6467022))

(assert (=> b!5446025 d!1733994))

(declare-fun d!1733996 () Bool)

(assert (=> d!1733996 (= (flatMap!1004 z!1189 lambda!287180) (choose!41327 z!1189 lambda!287180))))

(declare-fun bs!1256888 () Bool)

(assert (= bs!1256888 d!1733996))

(declare-fun m!6467024 () Bool)

(assert (=> bs!1256888 m!6467024))

(assert (=> b!5446025 d!1733996))

(declare-fun d!1733998 () Bool)

(assert (=> d!1733998 (= (flatMap!1004 lt!2222170 lambda!287180) (choose!41327 lt!2222170 lambda!287180))))

(declare-fun bs!1256889 () Bool)

(assert (= bs!1256889 d!1733998))

(declare-fun m!6467026 () Bool)

(assert (=> bs!1256889 m!6467026))

(assert (=> b!5446025 d!1733998))

(declare-fun bs!1256890 () Bool)

(declare-fun d!1734000 () Bool)

(assert (= bs!1256890 (and d!1734000 b!5446025)))

(declare-fun lambda!287301 () Int)

(assert (=> bs!1256890 (= lambda!287301 lambda!287180)))

(assert (=> d!1734000 true))

(assert (=> d!1734000 (= (derivationStepZipper!1496 lt!2222170 (h!68454 s!2326)) (flatMap!1004 lt!2222170 lambda!287301))))

(declare-fun bs!1256891 () Bool)

(assert (= bs!1256891 d!1734000))

(declare-fun m!6467028 () Bool)

(assert (=> bs!1256891 m!6467028))

(assert (=> b!5446025 d!1734000))

(declare-fun e!3373869 () Bool)

(declare-fun d!1734002 () Bool)

(assert (=> d!1734002 (= (matchZipper!1521 ((_ map or) (ite c!950418 lt!2222289 lt!2222318) (ite c!950418 lt!2222122 lt!2222256)) (t!375357 s!2326)) e!3373869)))

(declare-fun res!2319552 () Bool)

(assert (=> d!1734002 (=> res!2319552 e!3373869)))

(assert (=> d!1734002 (= res!2319552 (matchZipper!1521 (ite c!950418 lt!2222289 lt!2222318) (t!375357 s!2326)))))

(declare-fun lt!2222525 () Unit!154704)

(declare-fun choose!41341 ((InoxSet Context!9322) (InoxSet Context!9322) List!62130) Unit!154704)

(assert (=> d!1734002 (= lt!2222525 (choose!41341 (ite c!950418 lt!2222289 lt!2222318) (ite c!950418 lt!2222122 lt!2222256) (t!375357 s!2326)))))

(assert (=> d!1734002 (= (lemmaZipperConcatMatchesSameAsBothZippers!514 (ite c!950418 lt!2222289 lt!2222318) (ite c!950418 lt!2222122 lt!2222256) (t!375357 s!2326)) lt!2222525)))

(declare-fun b!5447150 () Bool)

(assert (=> b!5447150 (= e!3373869 (matchZipper!1521 (ite c!950418 lt!2222122 lt!2222256) (t!375357 s!2326)))))

(assert (= (and d!1734002 (not res!2319552)) b!5447150))

(declare-fun m!6467030 () Bool)

(assert (=> d!1734002 m!6467030))

(declare-fun m!6467032 () Bool)

(assert (=> d!1734002 m!6467032))

(declare-fun m!6467034 () Bool)

(assert (=> d!1734002 m!6467034))

(declare-fun m!6467036 () Bool)

(assert (=> b!5447150 m!6467036))

(assert (=> bm!392803 d!1734002))

(declare-fun bs!1256892 () Bool)

(declare-fun b!5447155 () Bool)

(assert (= bs!1256892 (and b!5447155 b!5446005)))

(declare-fun lambda!287302 () Int)

(assert (=> bs!1256892 (not (= lambda!287302 lambda!287188))))

(declare-fun bs!1256893 () Bool)

(assert (= bs!1256893 (and b!5447155 d!1733964)))

(assert (=> bs!1256893 (not (= lambda!287302 lambda!287295))))

(declare-fun bs!1256894 () Bool)

(assert (= bs!1256894 (and b!5447155 b!5445993)))

(assert (=> bs!1256894 (= (and (= s!2326 (_1!35779 lt!2222282)) (= (reg!15606 r!7292) (reg!15606 (regOne!31066 r!7292))) (= r!7292 lt!2222247)) (= lambda!287302 lambda!287192))))

(declare-fun bs!1256895 () Bool)

(assert (= bs!1256895 (and b!5447155 d!1733946)))

(assert (=> bs!1256895 (not (= lambda!287302 lambda!287293))))

(declare-fun bs!1256896 () Bool)

(assert (= bs!1256896 (and b!5447155 d!1733942)))

(assert (=> bs!1256896 (not (= lambda!287302 lambda!287292))))

(declare-fun bs!1256897 () Bool)

(assert (= bs!1256897 (and b!5447155 b!5446006)))

(assert (=> bs!1256897 (not (= lambda!287302 lambda!287199))))

(assert (=> bs!1256892 (not (= lambda!287302 lambda!287186))))

(declare-fun bs!1256898 () Bool)

(assert (= bs!1256898 (and b!5447155 d!1733728)))

(assert (=> bs!1256898 (= (and (= s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) (= (reg!15606 r!7292) (reg!15606 (regOne!31066 r!7292))) (= r!7292 (Star!15277 (reg!15606 (regOne!31066 r!7292))))) (= lambda!287302 lambda!287251))))

(declare-fun bs!1256899 () Bool)

(assert (= bs!1256899 (and b!5447155 b!5446028)))

(assert (=> bs!1256899 (not (= lambda!287302 lambda!287181))))

(declare-fun bs!1256900 () Bool)

(assert (= bs!1256900 (and b!5447155 b!5446695)))

(assert (=> bs!1256900 (not (= lambda!287302 lambda!287268))))

(assert (=> bs!1256899 (not (= lambda!287302 lambda!287182))))

(declare-fun bs!1256901 () Bool)

(assert (= bs!1256901 (and b!5447155 b!5446967)))

(assert (=> bs!1256901 (= (and (= s!2326 (ite (or c!950418 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326))) (= (reg!15606 r!7292) (reg!15606 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292)))))) (= r!7292 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292)))))) (= lambda!287302 lambda!287286))))

(declare-fun bs!1256902 () Bool)

(assert (= bs!1256902 (and b!5447155 b!5445995)))

(assert (=> bs!1256902 (= (and (= s!2326 Nil!62006) (= (reg!15606 r!7292) (reg!15606 (regOne!31066 r!7292))) (= r!7292 lt!2222247)) (= lambda!287302 lambda!287204))))

(assert (=> bs!1256897 (= (and (= s!2326 (_1!35779 lt!2222148)) (= (reg!15606 r!7292) (reg!15606 (regOne!31066 r!7292))) (= r!7292 lt!2222247)) (= lambda!287302 lambda!287201))))

(declare-fun bs!1256903 () Bool)

(assert (= bs!1256903 (and b!5447155 b!5446692)))

(assert (=> bs!1256903 (= (and (= s!2326 (ite (or c!950418 c!950410) s!2326 (ite c!950411 (_1!35779 lt!2222148) s!2326))) (= (reg!15606 r!7292) (reg!15606 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292)))))) (= r!7292 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292)))))) (= lambda!287302 lambda!287267))))

(declare-fun bs!1256904 () Bool)

(assert (= bs!1256904 (and b!5447155 b!5446036)))

(assert (=> bs!1256904 (not (= lambda!287302 lambda!287179))))

(assert (=> bs!1256897 (not (= lambda!287302 lambda!287197))))

(declare-fun bs!1256905 () Bool)

(assert (= bs!1256905 (and b!5447155 b!5446578)))

(assert (=> bs!1256905 (not (= lambda!287302 lambda!287257))))

(assert (=> bs!1256892 (not (= lambda!287302 lambda!287187))))

(assert (=> bs!1256902 (not (= lambda!287302 lambda!287203))))

(assert (=> bs!1256899 (not (= lambda!287302 lambda!287183))))

(assert (=> bs!1256897 (not (= lambda!287302 lambda!287198))))

(assert (=> bs!1256902 (not (= lambda!287302 lambda!287202))))

(declare-fun bs!1256906 () Bool)

(assert (= bs!1256906 (and b!5447155 d!1733706)))

(assert (=> bs!1256906 (not (= lambda!287302 lambda!287237))))

(declare-fun bs!1256907 () Bool)

(assert (= bs!1256907 (and b!5447155 b!5446575)))

(assert (=> bs!1256907 (= (and (= (reg!15606 r!7292) (reg!15606 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221))))) (= r!7292 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221))))) (= lambda!287302 lambda!287256))))

(assert (=> bs!1256899 (not (= lambda!287302 lambda!287184))))

(assert (=> bs!1256904 (not (= lambda!287302 lambda!287178))))

(assert (=> bs!1256906 (not (= lambda!287302 lambda!287238))))

(declare-fun bs!1256908 () Bool)

(assert (= bs!1256908 (and b!5447155 d!1733902)))

(assert (=> bs!1256908 (not (= lambda!287302 lambda!287284))))

(assert (=> bs!1256898 (not (= lambda!287302 lambda!287250))))

(assert (=> bs!1256894 (not (= lambda!287302 lambda!287193))))

(declare-fun bs!1256909 () Bool)

(assert (= bs!1256909 (and b!5447155 b!5446970)))

(assert (=> bs!1256909 (not (= lambda!287302 lambda!287287))))

(declare-fun bs!1256910 () Bool)

(assert (= bs!1256910 (and b!5447155 b!5446010)))

(assert (=> bs!1256910 (not (= lambda!287302 lambda!287190))))

(assert (=> bs!1256897 (not (= lambda!287302 lambda!287200))))

(assert (=> bs!1256894 (not (= lambda!287302 lambda!287191))))

(assert (=> bs!1256910 (not (= lambda!287302 lambda!287189))))

(assert (=> bs!1256892 (not (= lambda!287302 lambda!287185))))

(assert (=> bs!1256895 (not (= lambda!287302 lambda!287294))))

(assert (=> b!5447155 true))

(assert (=> b!5447155 true))

(declare-fun bs!1256911 () Bool)

(declare-fun b!5447158 () Bool)

(assert (= bs!1256911 (and b!5447158 b!5446005)))

(declare-fun lambda!287303 () Int)

(assert (=> bs!1256911 (= (and (= (regOne!31066 r!7292) (regTwo!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222211)) (= lambda!287303 lambda!287188))))

(declare-fun bs!1256912 () Bool)

(assert (= bs!1256912 (and b!5447158 d!1733964)))

(assert (=> bs!1256912 (not (= lambda!287303 lambda!287295))))

(declare-fun bs!1256913 () Bool)

(assert (= bs!1256913 (and b!5447158 b!5445993)))

(assert (=> bs!1256913 (not (= lambda!287303 lambda!287192))))

(declare-fun bs!1256914 () Bool)

(assert (= bs!1256914 (and b!5447158 d!1733946)))

(assert (=> bs!1256914 (not (= lambda!287303 lambda!287293))))

(declare-fun bs!1256915 () Bool)

(assert (= bs!1256915 (and b!5447158 d!1733942)))

(assert (=> bs!1256915 (not (= lambda!287303 lambda!287292))))

(declare-fun bs!1256916 () Bool)

(assert (= bs!1256916 (and b!5447158 b!5446006)))

(assert (=> bs!1256916 (not (= lambda!287303 lambda!287199))))

(assert (=> bs!1256911 (= (and (= (regOne!31066 r!7292) (regOne!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222299)) (= lambda!287303 lambda!287186))))

(declare-fun bs!1256917 () Bool)

(assert (= bs!1256917 (and b!5447158 d!1733728)))

(assert (=> bs!1256917 (not (= lambda!287303 lambda!287251))))

(declare-fun bs!1256918 () Bool)

(assert (= bs!1256918 (and b!5447158 b!5446028)))

(assert (=> bs!1256918 (not (= lambda!287303 lambda!287181))))

(declare-fun bs!1256919 () Bool)

(assert (= bs!1256919 (and b!5447158 b!5446695)))

(assert (=> bs!1256919 (= (and (= s!2326 (ite (or c!950418 c!950410) s!2326 (ite c!950411 (_1!35779 lt!2222148) s!2326))) (= (regOne!31066 r!7292) (regOne!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292)))))) (= (regTwo!31066 r!7292) (regTwo!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))))) (= lambda!287303 lambda!287268))))

(assert (=> bs!1256918 (= (and (= (regOne!31066 r!7292) (regOne!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222146)) (= lambda!287303 lambda!287182))))

(declare-fun bs!1256920 () Bool)

(assert (= bs!1256920 (and b!5447158 b!5446967)))

(assert (=> bs!1256920 (not (= lambda!287303 lambda!287286))))

(declare-fun bs!1256921 () Bool)

(assert (= bs!1256921 (and b!5447158 b!5447155)))

(assert (=> bs!1256921 (not (= lambda!287303 lambda!287302))))

(declare-fun bs!1256922 () Bool)

(assert (= bs!1256922 (and b!5447158 b!5445995)))

(assert (=> bs!1256922 (not (= lambda!287303 lambda!287204))))

(assert (=> bs!1256916 (not (= lambda!287303 lambda!287201))))

(declare-fun bs!1256923 () Bool)

(assert (= bs!1256923 (and b!5447158 b!5446692)))

(assert (=> bs!1256923 (not (= lambda!287303 lambda!287267))))

(declare-fun bs!1256924 () Bool)

(assert (= bs!1256924 (and b!5447158 b!5446036)))

(assert (=> bs!1256924 (= lambda!287303 lambda!287179)))

(assert (=> bs!1256916 (not (= lambda!287303 lambda!287197))))

(declare-fun bs!1256925 () Bool)

(assert (= bs!1256925 (and b!5447158 b!5446578)))

(assert (=> bs!1256925 (= (and (= (regOne!31066 r!7292) (regOne!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221))))) (= (regTwo!31066 r!7292) (regTwo!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))))) (= lambda!287303 lambda!287257))))

(assert (=> bs!1256911 (not (= lambda!287303 lambda!287187))))

(assert (=> bs!1256922 (= (and (= s!2326 Nil!62006) (= (regOne!31066 r!7292) (reg!15606 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222247)) (= lambda!287303 lambda!287203))))

(assert (=> bs!1256918 (not (= lambda!287303 lambda!287183))))

(assert (=> bs!1256916 (= (= (regOne!31066 r!7292) lt!2222184) (= lambda!287303 lambda!287198))))

(assert (=> bs!1256922 (not (= lambda!287303 lambda!287202))))

(declare-fun bs!1256926 () Bool)

(assert (= bs!1256926 (and b!5447158 d!1733706)))

(assert (=> bs!1256926 (not (= lambda!287303 lambda!287237))))

(declare-fun bs!1256927 () Bool)

(assert (= bs!1256927 (and b!5447158 b!5446575)))

(assert (=> bs!1256927 (not (= lambda!287303 lambda!287256))))

(assert (=> bs!1256918 (= (and (= (regOne!31066 r!7292) (regTwo!31066 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222240)) (= lambda!287303 lambda!287184))))

(assert (=> bs!1256924 (not (= lambda!287303 lambda!287178))))

(assert (=> bs!1256926 (= (and (= (regOne!31066 r!7292) (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184))) (= (regTwo!31066 r!7292) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))))) (= lambda!287303 lambda!287238))))

(declare-fun bs!1256928 () Bool)

(assert (= bs!1256928 (and b!5447158 d!1733902)))

(assert (=> bs!1256928 (not (= lambda!287303 lambda!287284))))

(assert (=> bs!1256917 (not (= lambda!287303 lambda!287250))))

(assert (=> bs!1256913 (= (and (= s!2326 (_1!35779 lt!2222282)) (= (regOne!31066 r!7292) (reg!15606 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222247)) (= lambda!287303 lambda!287193))))

(declare-fun bs!1256929 () Bool)

(assert (= bs!1256929 (and b!5447158 b!5446970)))

(assert (=> bs!1256929 (= (and (= s!2326 (ite (or c!950418 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326))) (= (regOne!31066 r!7292) (regOne!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292)))))) (= (regTwo!31066 r!7292) (regTwo!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))))) (= lambda!287303 lambda!287287))))

(declare-fun bs!1256930 () Bool)

(assert (= bs!1256930 (and b!5447158 b!5446010)))

(assert (=> bs!1256930 (= (= (regOne!31066 r!7292) lt!2222247) (= lambda!287303 lambda!287190))))

(assert (=> bs!1256916 (= (and (= s!2326 (_1!35779 lt!2222148)) (= (regOne!31066 r!7292) (reg!15606 (regOne!31066 r!7292))) (= (regTwo!31066 r!7292) lt!2222247)) (= lambda!287303 lambda!287200))))

(assert (=> bs!1256913 (not (= lambda!287303 lambda!287191))))

(assert (=> bs!1256930 (not (= lambda!287303 lambda!287189))))

(assert (=> bs!1256911 (not (= lambda!287303 lambda!287185))))

(assert (=> bs!1256914 (= lambda!287303 lambda!287294)))

(assert (=> b!5447158 true))

(assert (=> b!5447158 true))

(declare-fun c!950728 () Bool)

(declare-fun call!393098 () Bool)

(declare-fun bm!393093 () Bool)

(assert (=> bm!393093 (= call!393098 (Exists!2458 (ite c!950728 lambda!287302 lambda!287303)))))

(declare-fun d!1734004 () Bool)

(declare-fun c!950727 () Bool)

(assert (=> d!1734004 (= c!950727 ((_ is EmptyExpr!15277) r!7292))))

(declare-fun e!3373870 () Bool)

(assert (=> d!1734004 (= (matchRSpec!2380 r!7292 s!2326) e!3373870)))

(declare-fun b!5447151 () Bool)

(declare-fun e!3373876 () Bool)

(assert (=> b!5447151 (= e!3373876 (= s!2326 (Cons!62006 (c!950421 r!7292) Nil!62006)))))

(declare-fun b!5447152 () Bool)

(declare-fun call!393099 () Bool)

(assert (=> b!5447152 (= e!3373870 call!393099)))

(declare-fun b!5447153 () Bool)

(declare-fun c!950725 () Bool)

(assert (=> b!5447153 (= c!950725 ((_ is Union!15277) r!7292))))

(declare-fun e!3373875 () Bool)

(assert (=> b!5447153 (= e!3373876 e!3373875)))

(declare-fun b!5447154 () Bool)

(declare-fun e!3373874 () Bool)

(assert (=> b!5447154 (= e!3373870 e!3373874)))

(declare-fun res!2319554 () Bool)

(assert (=> b!5447154 (= res!2319554 (not ((_ is EmptyLang!15277) r!7292)))))

(assert (=> b!5447154 (=> (not res!2319554) (not e!3373874))))

(declare-fun e!3373873 () Bool)

(assert (=> b!5447155 (= e!3373873 call!393098)))

(declare-fun b!5447156 () Bool)

(declare-fun e!3373872 () Bool)

(assert (=> b!5447156 (= e!3373872 (matchRSpec!2380 (regTwo!31067 r!7292) s!2326))))

(declare-fun b!5447157 () Bool)

(declare-fun res!2319553 () Bool)

(assert (=> b!5447157 (=> res!2319553 e!3373873)))

(assert (=> b!5447157 (= res!2319553 call!393099)))

(declare-fun e!3373871 () Bool)

(assert (=> b!5447157 (= e!3373871 e!3373873)))

(assert (=> b!5447158 (= e!3373871 call!393098)))

(declare-fun b!5447159 () Bool)

(declare-fun c!950726 () Bool)

(assert (=> b!5447159 (= c!950726 ((_ is ElementMatch!15277) r!7292))))

(assert (=> b!5447159 (= e!3373874 e!3373876)))

(declare-fun b!5447160 () Bool)

(assert (=> b!5447160 (= e!3373875 e!3373872)))

(declare-fun res!2319555 () Bool)

(assert (=> b!5447160 (= res!2319555 (matchRSpec!2380 (regOne!31067 r!7292) s!2326))))

(assert (=> b!5447160 (=> res!2319555 e!3373872)))

(declare-fun bm!393094 () Bool)

(assert (=> bm!393094 (= call!393099 (isEmpty!33985 s!2326))))

(declare-fun b!5447161 () Bool)

(assert (=> b!5447161 (= e!3373875 e!3373871)))

(assert (=> b!5447161 (= c!950728 ((_ is Star!15277) r!7292))))

(assert (= (and d!1734004 c!950727) b!5447152))

(assert (= (and d!1734004 (not c!950727)) b!5447154))

(assert (= (and b!5447154 res!2319554) b!5447159))

(assert (= (and b!5447159 c!950726) b!5447151))

(assert (= (and b!5447159 (not c!950726)) b!5447153))

(assert (= (and b!5447153 c!950725) b!5447160))

(assert (= (and b!5447153 (not c!950725)) b!5447161))

(assert (= (and b!5447160 (not res!2319555)) b!5447156))

(assert (= (and b!5447161 c!950728) b!5447157))

(assert (= (and b!5447161 (not c!950728)) b!5447158))

(assert (= (and b!5447157 (not res!2319553)) b!5447155))

(assert (= (or b!5447155 b!5447158) bm!393093))

(assert (= (or b!5447152 b!5447157) bm!393094))

(declare-fun m!6467038 () Bool)

(assert (=> bm!393093 m!6467038))

(declare-fun m!6467040 () Bool)

(assert (=> b!5447156 m!6467040))

(declare-fun m!6467042 () Bool)

(assert (=> b!5447160 m!6467042))

(assert (=> bm!393094 m!6466062))

(assert (=> b!5446026 d!1734004))

(declare-fun b!5447162 () Bool)

(declare-fun res!2319556 () Bool)

(declare-fun e!3373879 () Bool)

(assert (=> b!5447162 (=> res!2319556 e!3373879)))

(assert (=> b!5447162 (= res!2319556 (not ((_ is ElementMatch!15277) r!7292)))))

(declare-fun e!3373880 () Bool)

(assert (=> b!5447162 (= e!3373880 e!3373879)))

(declare-fun b!5447163 () Bool)

(declare-fun res!2319559 () Bool)

(declare-fun e!3373882 () Bool)

(assert (=> b!5447163 (=> (not res!2319559) (not e!3373882))))

(declare-fun call!393100 () Bool)

(assert (=> b!5447163 (= res!2319559 (not call!393100))))

(declare-fun b!5447164 () Bool)

(declare-fun e!3373883 () Bool)

(declare-fun e!3373877 () Bool)

(assert (=> b!5447164 (= e!3373883 e!3373877)))

(declare-fun res!2319558 () Bool)

(assert (=> b!5447164 (=> res!2319558 e!3373877)))

(assert (=> b!5447164 (= res!2319558 call!393100)))

(declare-fun b!5447165 () Bool)

(declare-fun res!2319563 () Bool)

(assert (=> b!5447165 (=> (not res!2319563) (not e!3373882))))

(assert (=> b!5447165 (= res!2319563 (isEmpty!33985 (tail!10774 s!2326)))))

(declare-fun b!5447166 () Bool)

(declare-fun e!3373878 () Bool)

(assert (=> b!5447166 (= e!3373878 e!3373880)))

(declare-fun c!950731 () Bool)

(assert (=> b!5447166 (= c!950731 ((_ is EmptyLang!15277) r!7292))))

(declare-fun b!5447167 () Bool)

(assert (=> b!5447167 (= e!3373877 (not (= (head!11677 s!2326) (c!950421 r!7292))))))

(declare-fun b!5447168 () Bool)

(declare-fun e!3373881 () Bool)

(assert (=> b!5447168 (= e!3373881 (matchR!7462 (derivativeStep!4301 r!7292 (head!11677 s!2326)) (tail!10774 s!2326)))))

(declare-fun b!5447169 () Bool)

(declare-fun res!2319557 () Bool)

(assert (=> b!5447169 (=> res!2319557 e!3373877)))

(assert (=> b!5447169 (= res!2319557 (not (isEmpty!33985 (tail!10774 s!2326))))))

(declare-fun b!5447171 () Bool)

(declare-fun lt!2222526 () Bool)

(assert (=> b!5447171 (= e!3373880 (not lt!2222526))))

(declare-fun bm!393095 () Bool)

(assert (=> bm!393095 (= call!393100 (isEmpty!33985 s!2326))))

(declare-fun b!5447172 () Bool)

(assert (=> b!5447172 (= e!3373882 (= (head!11677 s!2326) (c!950421 r!7292)))))

(declare-fun b!5447173 () Bool)

(assert (=> b!5447173 (= e!3373879 e!3373883)))

(declare-fun res!2319562 () Bool)

(assert (=> b!5447173 (=> (not res!2319562) (not e!3373883))))

(assert (=> b!5447173 (= res!2319562 (not lt!2222526))))

(declare-fun b!5447174 () Bool)

(declare-fun res!2319560 () Bool)

(assert (=> b!5447174 (=> res!2319560 e!3373879)))

(assert (=> b!5447174 (= res!2319560 e!3373882)))

(declare-fun res!2319561 () Bool)

(assert (=> b!5447174 (=> (not res!2319561) (not e!3373882))))

(assert (=> b!5447174 (= res!2319561 lt!2222526)))

(declare-fun b!5447175 () Bool)

(assert (=> b!5447175 (= e!3373881 (nullable!5446 r!7292))))

(declare-fun b!5447170 () Bool)

(assert (=> b!5447170 (= e!3373878 (= lt!2222526 call!393100))))

(declare-fun d!1734006 () Bool)

(assert (=> d!1734006 e!3373878))

(declare-fun c!950730 () Bool)

(assert (=> d!1734006 (= c!950730 ((_ is EmptyExpr!15277) r!7292))))

(assert (=> d!1734006 (= lt!2222526 e!3373881)))

(declare-fun c!950729 () Bool)

(assert (=> d!1734006 (= c!950729 (isEmpty!33985 s!2326))))

(assert (=> d!1734006 (validRegex!7013 r!7292)))

(assert (=> d!1734006 (= (matchR!7462 r!7292 s!2326) lt!2222526)))

(assert (= (and d!1734006 c!950729) b!5447175))

(assert (= (and d!1734006 (not c!950729)) b!5447168))

(assert (= (and d!1734006 c!950730) b!5447170))

(assert (= (and d!1734006 (not c!950730)) b!5447166))

(assert (= (and b!5447166 c!950731) b!5447171))

(assert (= (and b!5447166 (not c!950731)) b!5447162))

(assert (= (and b!5447162 (not res!2319556)) b!5447174))

(assert (= (and b!5447174 res!2319561) b!5447163))

(assert (= (and b!5447163 res!2319559) b!5447165))

(assert (= (and b!5447165 res!2319563) b!5447172))

(assert (= (and b!5447174 (not res!2319560)) b!5447173))

(assert (= (and b!5447173 res!2319562) b!5447164))

(assert (= (and b!5447164 (not res!2319558)) b!5447169))

(assert (= (and b!5447169 (not res!2319557)) b!5447167))

(assert (= (or b!5447170 b!5447163 b!5447164) bm!393095))

(assert (=> d!1734006 m!6466062))

(assert (=> d!1734006 m!6465406))

(assert (=> b!5447167 m!6466066))

(assert (=> b!5447168 m!6466066))

(assert (=> b!5447168 m!6466066))

(declare-fun m!6467044 () Bool)

(assert (=> b!5447168 m!6467044))

(assert (=> b!5447168 m!6466070))

(assert (=> b!5447168 m!6467044))

(assert (=> b!5447168 m!6466070))

(declare-fun m!6467046 () Bool)

(assert (=> b!5447168 m!6467046))

(declare-fun m!6467048 () Bool)

(assert (=> b!5447175 m!6467048))

(assert (=> b!5447169 m!6466070))

(assert (=> b!5447169 m!6466070))

(assert (=> b!5447169 m!6466076))

(assert (=> b!5447172 m!6466066))

(assert (=> b!5447165 m!6466070))

(assert (=> b!5447165 m!6466070))

(assert (=> b!5447165 m!6466076))

(assert (=> bm!393095 m!6466062))

(assert (=> b!5446026 d!1734006))

(declare-fun d!1734008 () Bool)

(assert (=> d!1734008 (= (matchR!7462 r!7292 s!2326) (matchRSpec!2380 r!7292 s!2326))))

(declare-fun lt!2222527 () Unit!154704)

(assert (=> d!1734008 (= lt!2222527 (choose!41333 r!7292 s!2326))))

(assert (=> d!1734008 (validRegex!7013 r!7292)))

(assert (=> d!1734008 (= (mainMatchTheorem!2380 r!7292 s!2326) lt!2222527)))

(declare-fun bs!1256931 () Bool)

(assert (= bs!1256931 d!1734008))

(assert (=> bs!1256931 m!6465366))

(assert (=> bs!1256931 m!6465364))

(declare-fun m!6467050 () Bool)

(assert (=> bs!1256931 m!6467050))

(assert (=> bs!1256931 m!6465406))

(assert (=> b!5446026 d!1734008))

(declare-fun e!3373884 () List!62130)

(declare-fun b!5447177 () Bool)

(assert (=> b!5447177 (= e!3373884 (Cons!62006 (h!68454 (ite c!950409 (_1!35779 lt!2222226) (ite c!950415 (_1!35779 lt!2222200) Nil!62006))) (++!13633 (t!375357 (ite c!950409 (_1!35779 lt!2222226) (ite c!950415 (_1!35779 lt!2222200) Nil!62006))) (ite c!950409 (_2!35779 lt!2222226) (ite c!950415 lt!2222290 s!2326)))))))

(declare-fun b!5447176 () Bool)

(assert (=> b!5447176 (= e!3373884 (ite c!950409 (_2!35779 lt!2222226) (ite c!950415 lt!2222290 s!2326)))))

(declare-fun b!5447179 () Bool)

(declare-fun e!3373885 () Bool)

(declare-fun lt!2222528 () List!62130)

(assert (=> b!5447179 (= e!3373885 (or (not (= (ite c!950409 (_2!35779 lt!2222226) (ite c!950415 lt!2222290 s!2326)) Nil!62006)) (= lt!2222528 (ite c!950409 (_1!35779 lt!2222226) (ite c!950415 (_1!35779 lt!2222200) Nil!62006)))))))

(declare-fun d!1734010 () Bool)

(assert (=> d!1734010 e!3373885))

(declare-fun res!2319565 () Bool)

(assert (=> d!1734010 (=> (not res!2319565) (not e!3373885))))

(assert (=> d!1734010 (= res!2319565 (= (content!11149 lt!2222528) ((_ map or) (content!11149 (ite c!950409 (_1!35779 lt!2222226) (ite c!950415 (_1!35779 lt!2222200) Nil!62006))) (content!11149 (ite c!950409 (_2!35779 lt!2222226) (ite c!950415 lt!2222290 s!2326))))))))

(assert (=> d!1734010 (= lt!2222528 e!3373884)))

(declare-fun c!950732 () Bool)

(assert (=> d!1734010 (= c!950732 ((_ is Nil!62006) (ite c!950409 (_1!35779 lt!2222226) (ite c!950415 (_1!35779 lt!2222200) Nil!62006))))))

(assert (=> d!1734010 (= (++!13633 (ite c!950409 (_1!35779 lt!2222226) (ite c!950415 (_1!35779 lt!2222200) Nil!62006)) (ite c!950409 (_2!35779 lt!2222226) (ite c!950415 lt!2222290 s!2326))) lt!2222528)))

(declare-fun b!5447178 () Bool)

(declare-fun res!2319564 () Bool)

(assert (=> b!5447178 (=> (not res!2319564) (not e!3373885))))

(assert (=> b!5447178 (= res!2319564 (= (size!39890 lt!2222528) (+ (size!39890 (ite c!950409 (_1!35779 lt!2222226) (ite c!950415 (_1!35779 lt!2222200) Nil!62006))) (size!39890 (ite c!950409 (_2!35779 lt!2222226) (ite c!950415 lt!2222290 s!2326))))))))

(assert (= (and d!1734010 c!950732) b!5447176))

(assert (= (and d!1734010 (not c!950732)) b!5447177))

(assert (= (and d!1734010 res!2319565) b!5447178))

(assert (= (and b!5447178 res!2319564) b!5447179))

(declare-fun m!6467052 () Bool)

(assert (=> b!5447177 m!6467052))

(declare-fun m!6467054 () Bool)

(assert (=> d!1734010 m!6467054))

(declare-fun m!6467056 () Bool)

(assert (=> d!1734010 m!6467056))

(declare-fun m!6467058 () Bool)

(assert (=> d!1734010 m!6467058))

(declare-fun m!6467060 () Bool)

(assert (=> b!5447178 m!6467060))

(declare-fun m!6467062 () Bool)

(assert (=> b!5447178 m!6467062))

(declare-fun m!6467064 () Bool)

(assert (=> b!5447178 m!6467064))

(assert (=> bm!392805 d!1734010))

(declare-fun bs!1256932 () Bool)

(declare-fun d!1734012 () Bool)

(assert (= bs!1256932 (and d!1734012 b!5446005)))

(declare-fun lambda!287304 () Int)

(assert (=> bs!1256932 (not (= lambda!287304 lambda!287188))))

(declare-fun bs!1256933 () Bool)

(assert (= bs!1256933 (and d!1734012 d!1733964)))

(assert (=> bs!1256933 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) (ite (or c!950410 c!950414 c!950409 c!950415) s!2326 Nil!62006)) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 (ite c!950415 lt!2222184 (reg!15606 (regOne!31066 r!7292)))))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 (ite (or c!950409 c!950415) (regTwo!31066 r!7292) lt!2222247))))) (= lambda!287304 lambda!287295))))

(declare-fun bs!1256934 () Bool)

(assert (= bs!1256934 (and d!1734012 b!5445993)))

(assert (=> bs!1256934 (not (= lambda!287304 lambda!287192))))

(declare-fun bs!1256935 () Bool)

(assert (= bs!1256935 (and d!1734012 d!1733946)))

(assert (=> bs!1256935 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) s!2326) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (regOne!31066 r!7292)) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) (regTwo!31066 r!7292))) (= lambda!287304 lambda!287293))))

(declare-fun bs!1256936 () Bool)

(assert (= bs!1256936 (and d!1734012 d!1733942)))

(assert (=> bs!1256936 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) s!2326) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (regOne!31066 r!7292)) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) (regTwo!31066 r!7292))) (= lambda!287304 lambda!287292))))

(declare-fun bs!1256937 () Bool)

(assert (= bs!1256937 (and d!1734012 b!5446006)))

(assert (=> bs!1256937 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) (_1!35779 lt!2222148)) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) lt!2222247)) (= lambda!287304 lambda!287199))))

(assert (=> bs!1256932 (not (= lambda!287304 lambda!287186))))

(declare-fun bs!1256938 () Bool)

(assert (= bs!1256938 (and d!1734012 d!1733728)))

(assert (=> bs!1256938 (not (= lambda!287304 lambda!287251))))

(declare-fun bs!1256939 () Bool)

(assert (= bs!1256939 (and d!1734012 b!5446028)))

(assert (=> bs!1256939 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) s!2326) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (regOne!31066 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) lt!2222146)) (= lambda!287304 lambda!287181))))

(declare-fun bs!1256940 () Bool)

(assert (= bs!1256940 (and d!1734012 b!5446695)))

(assert (=> bs!1256940 (not (= lambda!287304 lambda!287268))))

(assert (=> bs!1256939 (not (= lambda!287304 lambda!287182))))

(declare-fun bs!1256941 () Bool)

(assert (= bs!1256941 (and d!1734012 b!5446967)))

(assert (=> bs!1256941 (not (= lambda!287304 lambda!287286))))

(declare-fun bs!1256942 () Bool)

(assert (= bs!1256942 (and d!1734012 b!5447155)))

(assert (=> bs!1256942 (not (= lambda!287304 lambda!287302))))

(declare-fun bs!1256943 () Bool)

(assert (= bs!1256943 (and d!1734012 b!5445995)))

(assert (=> bs!1256943 (not (= lambda!287304 lambda!287204))))

(declare-fun bs!1256944 () Bool)

(assert (= bs!1256944 (and d!1734012 b!5446692)))

(assert (=> bs!1256944 (not (= lambda!287304 lambda!287267))))

(declare-fun bs!1256945 () Bool)

(assert (= bs!1256945 (and d!1734012 b!5446036)))

(assert (=> bs!1256945 (not (= lambda!287304 lambda!287179))))

(assert (=> bs!1256937 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) s!2326) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) lt!2222184) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) (regTwo!31066 r!7292))) (= lambda!287304 lambda!287197))))

(declare-fun bs!1256946 () Bool)

(assert (= bs!1256946 (and d!1734012 b!5446578)))

(assert (=> bs!1256946 (not (= lambda!287304 lambda!287257))))

(assert (=> bs!1256932 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) s!2326) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (regTwo!31066 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) lt!2222211)) (= lambda!287304 lambda!287187))))

(assert (=> bs!1256943 (not (= lambda!287304 lambda!287203))))

(assert (=> bs!1256939 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) s!2326) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (regTwo!31066 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) lt!2222240)) (= lambda!287304 lambda!287183))))

(assert (=> bs!1256937 (not (= lambda!287304 lambda!287198))))

(assert (=> bs!1256943 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) Nil!62006) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) lt!2222247)) (= lambda!287304 lambda!287202))))

(declare-fun bs!1256947 () Bool)

(assert (= bs!1256947 (and d!1734012 d!1733706)))

(assert (=> bs!1256947 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) s!2326) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))))) (= lambda!287304 lambda!287237))))

(declare-fun bs!1256948 () Bool)

(assert (= bs!1256948 (and d!1734012 b!5446575)))

(assert (=> bs!1256948 (not (= lambda!287304 lambda!287256))))

(assert (=> bs!1256939 (not (= lambda!287304 lambda!287184))))

(assert (=> bs!1256945 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) s!2326) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (regOne!31066 r!7292)) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) (regTwo!31066 r!7292))) (= lambda!287304 lambda!287178))))

(assert (=> bs!1256947 (not (= lambda!287304 lambda!287238))))

(declare-fun bs!1256949 () Bool)

(assert (= bs!1256949 (and d!1734012 d!1733902)))

(assert (=> bs!1256949 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (_1!35779 lt!2222148)))) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292)))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 lt!2222247)))) (= lambda!287304 lambda!287284))))

(assert (=> bs!1256938 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) (Star!15277 (reg!15606 (regOne!31066 r!7292))))) (= lambda!287304 lambda!287250))))

(assert (=> bs!1256934 (not (= lambda!287304 lambda!287193))))

(declare-fun bs!1256950 () Bool)

(assert (= bs!1256950 (and d!1734012 b!5446970)))

(assert (=> bs!1256950 (not (= lambda!287304 lambda!287287))))

(declare-fun bs!1256951 () Bool)

(assert (= bs!1256951 (and d!1734012 b!5447158)))

(assert (=> bs!1256951 (not (= lambda!287304 lambda!287303))))

(assert (=> bs!1256937 (not (= lambda!287304 lambda!287201))))

(declare-fun bs!1256952 () Bool)

(assert (= bs!1256952 (and d!1734012 b!5446010)))

(assert (=> bs!1256952 (not (= lambda!287304 lambda!287190))))

(assert (=> bs!1256937 (not (= lambda!287304 lambda!287200))))

(assert (=> bs!1256934 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) (_1!35779 lt!2222282)) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) lt!2222247)) (= lambda!287304 lambda!287191))))

(assert (=> bs!1256952 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) s!2326) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) lt!2222247) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) (regTwo!31066 r!7292))) (= lambda!287304 lambda!287189))))

(assert (=> bs!1256932 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) s!2326) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (regOne!31066 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) lt!2222299)) (= lambda!287304 lambda!287185))))

(assert (=> bs!1256935 (not (= lambda!287304 lambda!287294))))

(assert (=> d!1734012 true))

(assert (=> d!1734012 true))

(assert (=> d!1734012 true))

(declare-fun lambda!287305 () Int)

(assert (=> bs!1256932 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) s!2326) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (regTwo!31066 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) lt!2222211)) (= lambda!287305 lambda!287188))))

(assert (=> bs!1256933 (not (= lambda!287305 lambda!287295))))

(assert (=> bs!1256934 (not (= lambda!287305 lambda!287192))))

(assert (=> bs!1256935 (not (= lambda!287305 lambda!287293))))

(assert (=> bs!1256936 (not (= lambda!287305 lambda!287292))))

(assert (=> bs!1256937 (not (= lambda!287305 lambda!287199))))

(assert (=> bs!1256932 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) s!2326) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (regOne!31066 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) lt!2222299)) (= lambda!287305 lambda!287186))))

(assert (=> bs!1256938 (not (= lambda!287305 lambda!287251))))

(assert (=> bs!1256939 (not (= lambda!287305 lambda!287181))))

(assert (=> bs!1256940 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) (ite (or c!950418 c!950410) s!2326 (ite c!950411 (_1!35779 lt!2222148) s!2326))) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (regOne!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292)))))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) (regTwo!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))))) (= lambda!287305 lambda!287268))))

(assert (=> bs!1256939 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) s!2326) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (regOne!31066 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) lt!2222146)) (= lambda!287305 lambda!287182))))

(assert (=> bs!1256941 (not (= lambda!287305 lambda!287286))))

(assert (=> bs!1256942 (not (= lambda!287305 lambda!287302))))

(assert (=> bs!1256943 (not (= lambda!287305 lambda!287204))))

(assert (=> bs!1256944 (not (= lambda!287305 lambda!287267))))

(assert (=> bs!1256945 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) s!2326) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (regOne!31066 r!7292)) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) (regTwo!31066 r!7292))) (= lambda!287305 lambda!287179))))

(assert (=> bs!1256937 (not (= lambda!287305 lambda!287197))))

(assert (=> bs!1256946 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) s!2326) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (regOne!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221))))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) (regTwo!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))))) (= lambda!287305 lambda!287257))))

(assert (=> bs!1256932 (not (= lambda!287305 lambda!287187))))

(assert (=> bs!1256943 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) Nil!62006) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) lt!2222247)) (= lambda!287305 lambda!287203))))

(assert (=> bs!1256939 (not (= lambda!287305 lambda!287183))))

(assert (=> bs!1256937 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) s!2326) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) lt!2222184) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) (regTwo!31066 r!7292))) (= lambda!287305 lambda!287198))))

(assert (=> bs!1256943 (not (= lambda!287305 lambda!287202))))

(assert (=> bs!1256947 (not (= lambda!287305 lambda!287237))))

(assert (=> bs!1256948 (not (= lambda!287305 lambda!287256))))

(assert (=> bs!1256939 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) s!2326) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (regTwo!31066 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) lt!2222240)) (= lambda!287305 lambda!287184))))

(assert (=> bs!1256945 (not (= lambda!287305 lambda!287178))))

(assert (=> bs!1256947 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) s!2326) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))))) (= lambda!287305 lambda!287238))))

(assert (=> bs!1256949 (not (= lambda!287305 lambda!287284))))

(declare-fun bs!1256953 () Bool)

(assert (= bs!1256953 d!1734012))

(assert (=> bs!1256953 (not (= lambda!287305 lambda!287304))))

(assert (=> bs!1256938 (not (= lambda!287305 lambda!287250))))

(assert (=> bs!1256934 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) (_1!35779 lt!2222282)) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) lt!2222247)) (= lambda!287305 lambda!287193))))

(assert (=> bs!1256950 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) (ite (or c!950418 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326))) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (regOne!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292)))))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) (regTwo!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))))) (= lambda!287305 lambda!287287))))

(assert (=> bs!1256951 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) s!2326) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (regOne!31066 r!7292)) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) (regTwo!31066 r!7292))) (= lambda!287305 lambda!287303))))

(assert (=> bs!1256937 (not (= lambda!287305 lambda!287201))))

(assert (=> bs!1256952 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) s!2326) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) lt!2222247) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) (regTwo!31066 r!7292))) (= lambda!287305 lambda!287190))))

(assert (=> bs!1256937 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) (_1!35779 lt!2222148)) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (reg!15606 (regOne!31066 r!7292))) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) lt!2222247)) (= lambda!287305 lambda!287200))))

(assert (=> bs!1256934 (not (= lambda!287305 lambda!287191))))

(assert (=> bs!1256952 (not (= lambda!287305 lambda!287189))))

(assert (=> bs!1256932 (not (= lambda!287305 lambda!287185))))

(assert (=> bs!1256935 (= (and (= (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) s!2326) (= (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (regOne!31066 r!7292)) (= (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) (regTwo!31066 r!7292))) (= lambda!287305 lambda!287294))))

(assert (=> d!1734012 true))

(assert (=> d!1734012 true))

(assert (=> d!1734012 true))

(assert (=> d!1734012 (= (Exists!2458 lambda!287304) (Exists!2458 lambda!287305))))

(declare-fun lt!2222529 () Unit!154704)

(assert (=> d!1734012 (= lt!2222529 (choose!41323 (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006)))))))

(assert (=> d!1734012 (validRegex!7013 (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))))))

(assert (=> d!1734012 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1112 (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)) (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006)))) lt!2222529)))

(declare-fun m!6467066 () Bool)

(assert (=> bs!1256953 m!6467066))

(declare-fun m!6467068 () Bool)

(assert (=> bs!1256953 m!6467068))

(declare-fun m!6467070 () Bool)

(assert (=> bs!1256953 m!6467070))

(declare-fun m!6467072 () Bool)

(assert (=> bs!1256953 m!6467072))

(assert (=> bm!392788 d!1734012))

(declare-fun d!1734014 () Bool)

(assert (=> d!1734014 (= (isEmpty!33986 (t!375359 zl!343)) ((_ is Nil!62008) (t!375359 zl!343)))))

(assert (=> b!5446035 d!1734014))

(declare-fun d!1734016 () Bool)

(declare-fun c!950737 () Bool)

(assert (=> d!1734016 (= c!950737 (and ((_ is ElementMatch!15277) (ite c!950418 (regTwo!31067 (regOne!31066 r!7292)) (ite c!950410 (regTwo!31066 (regOne!31066 r!7292)) (ite c!950414 (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292)))))) (= (c!950421 (ite c!950418 (regTwo!31067 (regOne!31066 r!7292)) (ite c!950410 (regTwo!31066 (regOne!31066 r!7292)) (ite c!950414 (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292)))))) (h!68454 s!2326))))))

(declare-fun e!3373888 () (InoxSet Context!9322))

(assert (=> d!1734016 (= (derivationStepZipperDown!725 (ite c!950418 (regTwo!31067 (regOne!31066 r!7292)) (ite c!950410 (regTwo!31066 (regOne!31066 r!7292)) (ite c!950414 (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))))) (ite (or c!950418 c!950410) lt!2222248 (ite c!950414 (Context!9323 lt!2222209) lt!2222313)) (h!68454 s!2326)) e!3373888)))

(declare-fun b!5447180 () Bool)

(declare-fun e!3373889 () (InoxSet Context!9322))

(declare-fun e!3373886 () (InoxSet Context!9322))

(assert (=> b!5447180 (= e!3373889 e!3373886)))

(declare-fun c!950734 () Bool)

(assert (=> b!5447180 (= c!950734 ((_ is Concat!24122) (ite c!950418 (regTwo!31067 (regOne!31066 r!7292)) (ite c!950410 (regTwo!31066 (regOne!31066 r!7292)) (ite c!950414 (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292)))))))))

(declare-fun bm!393096 () Bool)

(declare-fun c!950735 () Bool)

(declare-fun call!393103 () List!62131)

(declare-fun call!393101 () (InoxSet Context!9322))

(assert (=> bm!393096 (= call!393101 (derivationStepZipperDown!725 (ite c!950735 (regTwo!31067 (ite c!950418 (regTwo!31067 (regOne!31066 r!7292)) (ite c!950410 (regTwo!31066 (regOne!31066 r!7292)) (ite c!950414 (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292)))))) (regOne!31066 (ite c!950418 (regTwo!31067 (regOne!31066 r!7292)) (ite c!950410 (regTwo!31066 (regOne!31066 r!7292)) (ite c!950414 (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))))))) (ite c!950735 (ite (or c!950418 c!950410) lt!2222248 (ite c!950414 (Context!9323 lt!2222209) lt!2222313)) (Context!9323 call!393103)) (h!68454 s!2326)))))

(declare-fun call!393102 () (InoxSet Context!9322))

(declare-fun c!950736 () Bool)

(declare-fun call!393106 () List!62131)

(declare-fun bm!393097 () Bool)

(assert (=> bm!393097 (= call!393102 (derivationStepZipperDown!725 (ite c!950735 (regOne!31067 (ite c!950418 (regTwo!31067 (regOne!31066 r!7292)) (ite c!950410 (regTwo!31066 (regOne!31066 r!7292)) (ite c!950414 (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292)))))) (ite c!950736 (regTwo!31066 (ite c!950418 (regTwo!31067 (regOne!31066 r!7292)) (ite c!950410 (regTwo!31066 (regOne!31066 r!7292)) (ite c!950414 (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292)))))) (ite c!950734 (regOne!31066 (ite c!950418 (regTwo!31067 (regOne!31066 r!7292)) (ite c!950410 (regTwo!31066 (regOne!31066 r!7292)) (ite c!950414 (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292)))))) (reg!15606 (ite c!950418 (regTwo!31067 (regOne!31066 r!7292)) (ite c!950410 (regTwo!31066 (regOne!31066 r!7292)) (ite c!950414 (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))))))))) (ite (or c!950735 c!950736) (ite (or c!950418 c!950410) lt!2222248 (ite c!950414 (Context!9323 lt!2222209) lt!2222313)) (Context!9323 call!393106)) (h!68454 s!2326)))))

(declare-fun b!5447181 () Bool)

(declare-fun e!3373891 () (InoxSet Context!9322))

(assert (=> b!5447181 (= e!3373888 e!3373891)))

(assert (=> b!5447181 (= c!950735 ((_ is Union!15277) (ite c!950418 (regTwo!31067 (regOne!31066 r!7292)) (ite c!950410 (regTwo!31066 (regOne!31066 r!7292)) (ite c!950414 (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292)))))))))

(declare-fun bm!393098 () Bool)

(declare-fun call!393104 () (InoxSet Context!9322))

(assert (=> bm!393098 (= call!393104 call!393102)))

(declare-fun b!5447182 () Bool)

(declare-fun e!3373887 () Bool)

(assert (=> b!5447182 (= c!950736 e!3373887)))

(declare-fun res!2319566 () Bool)

(assert (=> b!5447182 (=> (not res!2319566) (not e!3373887))))

(assert (=> b!5447182 (= res!2319566 ((_ is Concat!24122) (ite c!950418 (regTwo!31067 (regOne!31066 r!7292)) (ite c!950410 (regTwo!31066 (regOne!31066 r!7292)) (ite c!950414 (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292)))))))))

(assert (=> b!5447182 (= e!3373891 e!3373889)))

(declare-fun bm!393099 () Bool)

(declare-fun call!393105 () (InoxSet Context!9322))

(assert (=> bm!393099 (= call!393105 call!393104)))

(declare-fun bm!393100 () Bool)

(assert (=> bm!393100 (= call!393106 call!393103)))

(declare-fun b!5447183 () Bool)

(assert (=> b!5447183 (= e!3373888 (store ((as const (Array Context!9322 Bool)) false) (ite (or c!950418 c!950410) lt!2222248 (ite c!950414 (Context!9323 lt!2222209) lt!2222313)) true))))

(declare-fun b!5447184 () Bool)

(assert (=> b!5447184 (= e!3373887 (nullable!5446 (regOne!31066 (ite c!950418 (regTwo!31067 (regOne!31066 r!7292)) (ite c!950410 (regTwo!31066 (regOne!31066 r!7292)) (ite c!950414 (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))))))))))

(declare-fun b!5447185 () Bool)

(assert (=> b!5447185 (= e!3373889 ((_ map or) call!393101 call!393104))))

(declare-fun bm!393101 () Bool)

(assert (=> bm!393101 (= call!393103 ($colon$colon!1530 (exprs!5161 (ite (or c!950418 c!950410) lt!2222248 (ite c!950414 (Context!9323 lt!2222209) lt!2222313))) (ite (or c!950736 c!950734) (regTwo!31066 (ite c!950418 (regTwo!31067 (regOne!31066 r!7292)) (ite c!950410 (regTwo!31066 (regOne!31066 r!7292)) (ite c!950414 (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292)))))) (ite c!950418 (regTwo!31067 (regOne!31066 r!7292)) (ite c!950410 (regTwo!31066 (regOne!31066 r!7292)) (ite c!950414 (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))))))))))

(declare-fun b!5447186 () Bool)

(assert (=> b!5447186 (= e!3373886 call!393105)))

(declare-fun b!5447187 () Bool)

(assert (=> b!5447187 (= e!3373891 ((_ map or) call!393102 call!393101))))

(declare-fun b!5447188 () Bool)

(declare-fun e!3373890 () (InoxSet Context!9322))

(assert (=> b!5447188 (= e!3373890 ((as const (Array Context!9322 Bool)) false))))

(declare-fun c!950733 () Bool)

(declare-fun b!5447189 () Bool)

(assert (=> b!5447189 (= c!950733 ((_ is Star!15277) (ite c!950418 (regTwo!31067 (regOne!31066 r!7292)) (ite c!950410 (regTwo!31066 (regOne!31066 r!7292)) (ite c!950414 (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292)))))))))

(assert (=> b!5447189 (= e!3373886 e!3373890)))

(declare-fun b!5447190 () Bool)

(assert (=> b!5447190 (= e!3373890 call!393105)))

(assert (= (and d!1734016 c!950737) b!5447183))

(assert (= (and d!1734016 (not c!950737)) b!5447181))

(assert (= (and b!5447181 c!950735) b!5447187))

(assert (= (and b!5447181 (not c!950735)) b!5447182))

(assert (= (and b!5447182 res!2319566) b!5447184))

(assert (= (and b!5447182 c!950736) b!5447185))

(assert (= (and b!5447182 (not c!950736)) b!5447180))

(assert (= (and b!5447180 c!950734) b!5447186))

(assert (= (and b!5447180 (not c!950734)) b!5447189))

(assert (= (and b!5447189 c!950733) b!5447190))

(assert (= (and b!5447189 (not c!950733)) b!5447188))

(assert (= (or b!5447186 b!5447190) bm!393100))

(assert (= (or b!5447186 b!5447190) bm!393099))

(assert (= (or b!5447185 bm!393100) bm!393101))

(assert (= (or b!5447185 bm!393099) bm!393098))

(assert (= (or b!5447187 b!5447185) bm!393096))

(assert (= (or b!5447187 bm!393098) bm!393097))

(declare-fun m!6467074 () Bool)

(assert (=> bm!393097 m!6467074))

(declare-fun m!6467076 () Bool)

(assert (=> b!5447183 m!6467076))

(declare-fun m!6467078 () Bool)

(assert (=> b!5447184 m!6467078))

(declare-fun m!6467080 () Bool)

(assert (=> bm!393096 m!6467080))

(declare-fun m!6467082 () Bool)

(assert (=> bm!393101 m!6467082))

(assert (=> bm!392840 d!1734016))

(declare-fun d!1734018 () Bool)

(declare-fun e!3373892 () Bool)

(assert (=> d!1734018 (= (matchZipper!1521 ((_ map or) (ite c!950418 lt!2222142 (ite c!950410 lt!2222318 lt!2222210)) (ite c!950418 lt!2222289 (ite c!950410 lt!2222228 lt!2222122))) (t!375357 s!2326)) e!3373892)))

(declare-fun res!2319567 () Bool)

(assert (=> d!1734018 (=> res!2319567 e!3373892)))

(assert (=> d!1734018 (= res!2319567 (matchZipper!1521 (ite c!950418 lt!2222142 (ite c!950410 lt!2222318 lt!2222210)) (t!375357 s!2326)))))

(declare-fun lt!2222530 () Unit!154704)

(assert (=> d!1734018 (= lt!2222530 (choose!41341 (ite c!950418 lt!2222142 (ite c!950410 lt!2222318 lt!2222210)) (ite c!950418 lt!2222289 (ite c!950410 lt!2222228 lt!2222122)) (t!375357 s!2326)))))

(assert (=> d!1734018 (= (lemmaZipperConcatMatchesSameAsBothZippers!514 (ite c!950418 lt!2222142 (ite c!950410 lt!2222318 lt!2222210)) (ite c!950418 lt!2222289 (ite c!950410 lt!2222228 lt!2222122)) (t!375357 s!2326)) lt!2222530)))

(declare-fun b!5447191 () Bool)

(assert (=> b!5447191 (= e!3373892 (matchZipper!1521 (ite c!950418 lt!2222289 (ite c!950410 lt!2222228 lt!2222122)) (t!375357 s!2326)))))

(assert (= (and d!1734018 (not res!2319567)) b!5447191))

(declare-fun m!6467084 () Bool)

(assert (=> d!1734018 m!6467084))

(declare-fun m!6467086 () Bool)

(assert (=> d!1734018 m!6467086))

(declare-fun m!6467088 () Bool)

(assert (=> d!1734018 m!6467088))

(declare-fun m!6467090 () Bool)

(assert (=> b!5447191 m!6467090))

(assert (=> bm!392919 d!1734018))

(declare-fun d!1734020 () Bool)

(declare-fun e!3373893 () Bool)

(assert (=> d!1734020 (= (matchZipper!1521 ((_ map or) lt!2222210 lt!2222122) (t!375357 s!2326)) e!3373893)))

(declare-fun res!2319568 () Bool)

(assert (=> d!1734020 (=> res!2319568 e!3373893)))

(assert (=> d!1734020 (= res!2319568 (matchZipper!1521 lt!2222210 (t!375357 s!2326)))))

(declare-fun lt!2222531 () Unit!154704)

(assert (=> d!1734020 (= lt!2222531 (choose!41341 lt!2222210 lt!2222122 (t!375357 s!2326)))))

(assert (=> d!1734020 (= (lemmaZipperConcatMatchesSameAsBothZippers!514 lt!2222210 lt!2222122 (t!375357 s!2326)) lt!2222531)))

(declare-fun b!5447192 () Bool)

(assert (=> b!5447192 (= e!3373893 (matchZipper!1521 lt!2222122 (t!375357 s!2326)))))

(assert (= (and d!1734020 (not res!2319568)) b!5447192))

(assert (=> d!1734020 m!6465604))

(assert (=> d!1734020 m!6465602))

(declare-fun m!6467092 () Bool)

(assert (=> d!1734020 m!6467092))

(assert (=> b!5447192 m!6465612))

(assert (=> b!5446012 d!1734020))

(declare-fun d!1734022 () Bool)

(declare-fun c!950738 () Bool)

(assert (=> d!1734022 (= c!950738 (isEmpty!33985 (t!375357 s!2326)))))

(declare-fun e!3373894 () Bool)

(assert (=> d!1734022 (= (matchZipper!1521 lt!2222210 (t!375357 s!2326)) e!3373894)))

(declare-fun b!5447193 () Bool)

(assert (=> b!5447193 (= e!3373894 (nullableZipper!1480 lt!2222210))))

(declare-fun b!5447194 () Bool)

(assert (=> b!5447194 (= e!3373894 (matchZipper!1521 (derivationStepZipper!1496 lt!2222210 (head!11677 (t!375357 s!2326))) (tail!10774 (t!375357 s!2326))))))

(assert (= (and d!1734022 c!950738) b!5447193))

(assert (= (and d!1734022 (not c!950738)) b!5447194))

(assert (=> d!1734022 m!6466962))

(declare-fun m!6467094 () Bool)

(assert (=> b!5447193 m!6467094))

(assert (=> b!5447194 m!6466966))

(assert (=> b!5447194 m!6466966))

(declare-fun m!6467096 () Bool)

(assert (=> b!5447194 m!6467096))

(assert (=> b!5447194 m!6466970))

(assert (=> b!5447194 m!6467096))

(assert (=> b!5447194 m!6466970))

(declare-fun m!6467098 () Bool)

(assert (=> b!5447194 m!6467098))

(assert (=> b!5446012 d!1734022))

(declare-fun d!1734024 () Bool)

(declare-fun c!950739 () Bool)

(assert (=> d!1734024 (= c!950739 (isEmpty!33985 (t!375357 s!2326)))))

(declare-fun e!3373895 () Bool)

(assert (=> d!1734024 (= (matchZipper!1521 ((_ map or) lt!2222210 lt!2222122) (t!375357 s!2326)) e!3373895)))

(declare-fun b!5447195 () Bool)

(assert (=> b!5447195 (= e!3373895 (nullableZipper!1480 ((_ map or) lt!2222210 lt!2222122)))))

(declare-fun b!5447196 () Bool)

(assert (=> b!5447196 (= e!3373895 (matchZipper!1521 (derivationStepZipper!1496 ((_ map or) lt!2222210 lt!2222122) (head!11677 (t!375357 s!2326))) (tail!10774 (t!375357 s!2326))))))

(assert (= (and d!1734024 c!950739) b!5447195))

(assert (= (and d!1734024 (not c!950739)) b!5447196))

(assert (=> d!1734024 m!6466962))

(declare-fun m!6467100 () Bool)

(assert (=> b!5447195 m!6467100))

(assert (=> b!5447196 m!6466966))

(assert (=> b!5447196 m!6466966))

(declare-fun m!6467102 () Bool)

(assert (=> b!5447196 m!6467102))

(assert (=> b!5447196 m!6466970))

(assert (=> b!5447196 m!6467102))

(assert (=> b!5447196 m!6466970))

(declare-fun m!6467104 () Bool)

(assert (=> b!5447196 m!6467104))

(assert (=> b!5446012 d!1734024))

(declare-fun d!1734026 () Bool)

(assert (=> d!1734026 (= (Exists!2458 (ite c!950410 lambda!287181 (ite c!950414 lambda!287185 (ite c!950409 lambda!287189 (ite c!950415 lambda!287199 lambda!287202))))) (choose!41324 (ite c!950410 lambda!287181 (ite c!950414 lambda!287185 (ite c!950409 lambda!287189 (ite c!950415 lambda!287199 lambda!287202))))))))

(declare-fun bs!1256954 () Bool)

(assert (= bs!1256954 d!1734026))

(declare-fun m!6467106 () Bool)

(assert (=> bs!1256954 m!6467106))

(assert (=> bm!392849 d!1734026))

(declare-fun d!1734028 () Bool)

(assert (=> d!1734028 (= (Exists!2458 (ite c!950409 lambda!287191 (ite c!950415 lambda!287200 lambda!287202))) (choose!41324 (ite c!950409 lambda!287191 (ite c!950415 lambda!287200 lambda!287202))))))

(declare-fun bs!1256955 () Bool)

(assert (= bs!1256955 d!1734028))

(declare-fun m!6467108 () Bool)

(assert (=> bs!1256955 m!6467108))

(assert (=> bm!392896 d!1734028))

(declare-fun b!5447197 () Bool)

(declare-fun res!2319569 () Bool)

(declare-fun e!3373898 () Bool)

(assert (=> b!5447197 (=> res!2319569 e!3373898)))

(assert (=> b!5447197 (= res!2319569 (not ((_ is ElementMatch!15277) (ite c!950411 (ite c!950409 lt!2222221 lt!2222247) (ite c!950417 (regTwo!31066 r!7292) (regOne!31066 r!7292))))))))

(declare-fun e!3373899 () Bool)

(assert (=> b!5447197 (= e!3373899 e!3373898)))

(declare-fun b!5447198 () Bool)

(declare-fun res!2319572 () Bool)

(declare-fun e!3373901 () Bool)

(assert (=> b!5447198 (=> (not res!2319572) (not e!3373901))))

(declare-fun call!393107 () Bool)

(assert (=> b!5447198 (= res!2319572 (not call!393107))))

(declare-fun b!5447199 () Bool)

(declare-fun e!3373902 () Bool)

(declare-fun e!3373896 () Bool)

(assert (=> b!5447199 (= e!3373902 e!3373896)))

(declare-fun res!2319571 () Bool)

(assert (=> b!5447199 (=> res!2319571 e!3373896)))

(assert (=> b!5447199 (= res!2319571 call!393107)))

(declare-fun b!5447200 () Bool)

(declare-fun res!2319576 () Bool)

(assert (=> b!5447200 (=> (not res!2319576) (not e!3373901))))

(assert (=> b!5447200 (= res!2319576 (isEmpty!33985 (tail!10774 (ite c!950411 (ite c!950409 lt!2222190 (ite c!950415 lt!2222152 Nil!62006)) s!2326))))))

(declare-fun b!5447201 () Bool)

(declare-fun e!3373897 () Bool)

(assert (=> b!5447201 (= e!3373897 e!3373899)))

(declare-fun c!950742 () Bool)

(assert (=> b!5447201 (= c!950742 ((_ is EmptyLang!15277) (ite c!950411 (ite c!950409 lt!2222221 lt!2222247) (ite c!950417 (regTwo!31066 r!7292) (regOne!31066 r!7292)))))))

(declare-fun b!5447202 () Bool)

(assert (=> b!5447202 (= e!3373896 (not (= (head!11677 (ite c!950411 (ite c!950409 lt!2222190 (ite c!950415 lt!2222152 Nil!62006)) s!2326)) (c!950421 (ite c!950411 (ite c!950409 lt!2222221 lt!2222247) (ite c!950417 (regTwo!31066 r!7292) (regOne!31066 r!7292)))))))))

(declare-fun b!5447203 () Bool)

(declare-fun e!3373900 () Bool)

(assert (=> b!5447203 (= e!3373900 (matchR!7462 (derivativeStep!4301 (ite c!950411 (ite c!950409 lt!2222221 lt!2222247) (ite c!950417 (regTwo!31066 r!7292) (regOne!31066 r!7292))) (head!11677 (ite c!950411 (ite c!950409 lt!2222190 (ite c!950415 lt!2222152 Nil!62006)) s!2326))) (tail!10774 (ite c!950411 (ite c!950409 lt!2222190 (ite c!950415 lt!2222152 Nil!62006)) s!2326))))))

(declare-fun b!5447204 () Bool)

(declare-fun res!2319570 () Bool)

(assert (=> b!5447204 (=> res!2319570 e!3373896)))

(assert (=> b!5447204 (= res!2319570 (not (isEmpty!33985 (tail!10774 (ite c!950411 (ite c!950409 lt!2222190 (ite c!950415 lt!2222152 Nil!62006)) s!2326)))))))

(declare-fun b!5447206 () Bool)

(declare-fun lt!2222532 () Bool)

(assert (=> b!5447206 (= e!3373899 (not lt!2222532))))

(declare-fun bm!393102 () Bool)

(assert (=> bm!393102 (= call!393107 (isEmpty!33985 (ite c!950411 (ite c!950409 lt!2222190 (ite c!950415 lt!2222152 Nil!62006)) s!2326)))))

(declare-fun b!5447207 () Bool)

(assert (=> b!5447207 (= e!3373901 (= (head!11677 (ite c!950411 (ite c!950409 lt!2222190 (ite c!950415 lt!2222152 Nil!62006)) s!2326)) (c!950421 (ite c!950411 (ite c!950409 lt!2222221 lt!2222247) (ite c!950417 (regTwo!31066 r!7292) (regOne!31066 r!7292))))))))

(declare-fun b!5447208 () Bool)

(assert (=> b!5447208 (= e!3373898 e!3373902)))

(declare-fun res!2319575 () Bool)

(assert (=> b!5447208 (=> (not res!2319575) (not e!3373902))))

(assert (=> b!5447208 (= res!2319575 (not lt!2222532))))

(declare-fun b!5447209 () Bool)

(declare-fun res!2319573 () Bool)

(assert (=> b!5447209 (=> res!2319573 e!3373898)))

(assert (=> b!5447209 (= res!2319573 e!3373901)))

(declare-fun res!2319574 () Bool)

(assert (=> b!5447209 (=> (not res!2319574) (not e!3373901))))

(assert (=> b!5447209 (= res!2319574 lt!2222532)))

(declare-fun b!5447210 () Bool)

(assert (=> b!5447210 (= e!3373900 (nullable!5446 (ite c!950411 (ite c!950409 lt!2222221 lt!2222247) (ite c!950417 (regTwo!31066 r!7292) (regOne!31066 r!7292)))))))

(declare-fun b!5447205 () Bool)

(assert (=> b!5447205 (= e!3373897 (= lt!2222532 call!393107))))

(declare-fun d!1734030 () Bool)

(assert (=> d!1734030 e!3373897))

(declare-fun c!950741 () Bool)

(assert (=> d!1734030 (= c!950741 ((_ is EmptyExpr!15277) (ite c!950411 (ite c!950409 lt!2222221 lt!2222247) (ite c!950417 (regTwo!31066 r!7292) (regOne!31066 r!7292)))))))

(assert (=> d!1734030 (= lt!2222532 e!3373900)))

(declare-fun c!950740 () Bool)

(assert (=> d!1734030 (= c!950740 (isEmpty!33985 (ite c!950411 (ite c!950409 lt!2222190 (ite c!950415 lt!2222152 Nil!62006)) s!2326)))))

(assert (=> d!1734030 (validRegex!7013 (ite c!950411 (ite c!950409 lt!2222221 lt!2222247) (ite c!950417 (regTwo!31066 r!7292) (regOne!31066 r!7292))))))

(assert (=> d!1734030 (= (matchR!7462 (ite c!950411 (ite c!950409 lt!2222221 lt!2222247) (ite c!950417 (regTwo!31066 r!7292) (regOne!31066 r!7292))) (ite c!950411 (ite c!950409 lt!2222190 (ite c!950415 lt!2222152 Nil!62006)) s!2326)) lt!2222532)))

(assert (= (and d!1734030 c!950740) b!5447210))

(assert (= (and d!1734030 (not c!950740)) b!5447203))

(assert (= (and d!1734030 c!950741) b!5447205))

(assert (= (and d!1734030 (not c!950741)) b!5447201))

(assert (= (and b!5447201 c!950742) b!5447206))

(assert (= (and b!5447201 (not c!950742)) b!5447197))

(assert (= (and b!5447197 (not res!2319569)) b!5447209))

(assert (= (and b!5447209 res!2319574) b!5447198))

(assert (= (and b!5447198 res!2319572) b!5447200))

(assert (= (and b!5447200 res!2319576) b!5447207))

(assert (= (and b!5447209 (not res!2319573)) b!5447208))

(assert (= (and b!5447208 res!2319575) b!5447199))

(assert (= (and b!5447199 (not res!2319571)) b!5447204))

(assert (= (and b!5447204 (not res!2319570)) b!5447202))

(assert (= (or b!5447205 b!5447198 b!5447199) bm!393102))

(declare-fun m!6467110 () Bool)

(assert (=> d!1734030 m!6467110))

(declare-fun m!6467112 () Bool)

(assert (=> d!1734030 m!6467112))

(declare-fun m!6467114 () Bool)

(assert (=> b!5447202 m!6467114))

(assert (=> b!5447203 m!6467114))

(assert (=> b!5447203 m!6467114))

(declare-fun m!6467116 () Bool)

(assert (=> b!5447203 m!6467116))

(declare-fun m!6467118 () Bool)

(assert (=> b!5447203 m!6467118))

(assert (=> b!5447203 m!6467116))

(assert (=> b!5447203 m!6467118))

(declare-fun m!6467120 () Bool)

(assert (=> b!5447203 m!6467120))

(declare-fun m!6467122 () Bool)

(assert (=> b!5447210 m!6467122))

(assert (=> b!5447204 m!6467118))

(assert (=> b!5447204 m!6467118))

(declare-fun m!6467124 () Bool)

(assert (=> b!5447204 m!6467124))

(assert (=> b!5447207 m!6467114))

(assert (=> b!5447200 m!6467118))

(assert (=> b!5447200 m!6467118))

(assert (=> b!5447200 m!6467124))

(assert (=> bm!393102 m!6467110))

(assert (=> bm!392878 d!1734030))

(declare-fun d!1734032 () Bool)

(declare-fun e!3373903 () Bool)

(assert (=> d!1734032 (= (matchZipper!1521 ((_ map or) lt!2222142 lt!2222122) (t!375357 s!2326)) e!3373903)))

(declare-fun res!2319577 () Bool)

(assert (=> d!1734032 (=> res!2319577 e!3373903)))

(assert (=> d!1734032 (= res!2319577 (matchZipper!1521 lt!2222142 (t!375357 s!2326)))))

(declare-fun lt!2222533 () Unit!154704)

(assert (=> d!1734032 (= lt!2222533 (choose!41341 lt!2222142 lt!2222122 (t!375357 s!2326)))))

(assert (=> d!1734032 (= (lemmaZipperConcatMatchesSameAsBothZippers!514 lt!2222142 lt!2222122 (t!375357 s!2326)) lt!2222533)))

(declare-fun b!5447211 () Bool)

(assert (=> b!5447211 (= e!3373903 (matchZipper!1521 lt!2222122 (t!375357 s!2326)))))

(assert (= (and d!1734032 (not res!2319577)) b!5447211))

(declare-fun m!6467126 () Bool)

(assert (=> d!1734032 m!6467126))

(declare-fun m!6467128 () Bool)

(assert (=> d!1734032 m!6467128))

(declare-fun m!6467130 () Bool)

(assert (=> d!1734032 m!6467130))

(assert (=> b!5447211 m!6465612))

(assert (=> b!5445990 d!1734032))

(declare-fun bs!1256956 () Bool)

(declare-fun d!1734034 () Bool)

(assert (= bs!1256956 (and d!1734034 d!1733880)))

(declare-fun lambda!287306 () Int)

(assert (=> bs!1256956 (= lambda!287306 lambda!287279)))

(declare-fun bs!1256957 () Bool)

(assert (= bs!1256957 (and d!1734034 d!1733924)))

(assert (=> bs!1256957 (= lambda!287306 lambda!287288)))

(declare-fun bs!1256958 () Bool)

(assert (= bs!1256958 (and d!1734034 b!5445993)))

(assert (=> bs!1256958 (= lambda!287306 lambda!287194)))

(declare-fun bs!1256959 () Bool)

(assert (= bs!1256959 (and d!1734034 b!5446022)))

(assert (=> bs!1256959 (= lambda!287306 lambda!287205)))

(declare-fun bs!1256960 () Bool)

(assert (= bs!1256960 (and d!1734034 d!1733966)))

(assert (=> bs!1256960 (= lambda!287306 lambda!287298)))

(declare-fun bs!1256961 () Bool)

(assert (= bs!1256961 (and d!1734034 b!5446006)))

(assert (=> bs!1256961 (= lambda!287306 lambda!287196)))

(declare-fun b!5447212 () Bool)

(declare-fun e!3373905 () Bool)

(declare-fun e!3373909 () Bool)

(assert (=> b!5447212 (= e!3373905 e!3373909)))

(declare-fun c!950745 () Bool)

(assert (=> b!5447212 (= c!950745 (isEmpty!33987 (tail!10775 (ite c!950418 lt!2222134 (t!375358 (exprs!5161 (h!68456 zl!343)))))))))

(declare-fun b!5447213 () Bool)

(declare-fun lt!2222534 () Regex!15277)

(assert (=> b!5447213 (= e!3373905 (isEmptyExpr!1012 lt!2222534))))

(declare-fun e!3373906 () Regex!15277)

(declare-fun b!5447214 () Bool)

(assert (=> b!5447214 (= e!3373906 (Concat!24122 (h!68455 (ite c!950418 lt!2222134 (t!375358 (exprs!5161 (h!68456 zl!343))))) (generalisedConcat!946 (t!375358 (ite c!950418 lt!2222134 (t!375358 (exprs!5161 (h!68456 zl!343))))))))))

(declare-fun b!5447215 () Bool)

(declare-fun e!3373904 () Regex!15277)

(assert (=> b!5447215 (= e!3373904 e!3373906)))

(declare-fun c!950744 () Bool)

(assert (=> b!5447215 (= c!950744 ((_ is Cons!62007) (ite c!950418 lt!2222134 (t!375358 (exprs!5161 (h!68456 zl!343))))))))

(declare-fun e!3373907 () Bool)

(assert (=> d!1734034 e!3373907))

(declare-fun res!2319579 () Bool)

(assert (=> d!1734034 (=> (not res!2319579) (not e!3373907))))

(assert (=> d!1734034 (= res!2319579 (validRegex!7013 lt!2222534))))

(assert (=> d!1734034 (= lt!2222534 e!3373904)))

(declare-fun c!950743 () Bool)

(declare-fun e!3373908 () Bool)

(assert (=> d!1734034 (= c!950743 e!3373908)))

(declare-fun res!2319578 () Bool)

(assert (=> d!1734034 (=> (not res!2319578) (not e!3373908))))

(assert (=> d!1734034 (= res!2319578 ((_ is Cons!62007) (ite c!950418 lt!2222134 (t!375358 (exprs!5161 (h!68456 zl!343))))))))

(assert (=> d!1734034 (forall!14580 (ite c!950418 lt!2222134 (t!375358 (exprs!5161 (h!68456 zl!343)))) lambda!287306)))

(assert (=> d!1734034 (= (generalisedConcat!946 (ite c!950418 lt!2222134 (t!375358 (exprs!5161 (h!68456 zl!343))))) lt!2222534)))

(declare-fun b!5447216 () Bool)

(assert (=> b!5447216 (= e!3373909 (= lt!2222534 (head!11678 (ite c!950418 lt!2222134 (t!375358 (exprs!5161 (h!68456 zl!343)))))))))

(declare-fun b!5447217 () Bool)

(assert (=> b!5447217 (= e!3373909 (isConcat!535 lt!2222534))))

(declare-fun b!5447218 () Bool)

(assert (=> b!5447218 (= e!3373908 (isEmpty!33987 (t!375358 (ite c!950418 lt!2222134 (t!375358 (exprs!5161 (h!68456 zl!343)))))))))

(declare-fun b!5447219 () Bool)

(assert (=> b!5447219 (= e!3373906 EmptyExpr!15277)))

(declare-fun b!5447220 () Bool)

(assert (=> b!5447220 (= e!3373907 e!3373905)))

(declare-fun c!950746 () Bool)

(assert (=> b!5447220 (= c!950746 (isEmpty!33987 (ite c!950418 lt!2222134 (t!375358 (exprs!5161 (h!68456 zl!343))))))))

(declare-fun b!5447221 () Bool)

(assert (=> b!5447221 (= e!3373904 (h!68455 (ite c!950418 lt!2222134 (t!375358 (exprs!5161 (h!68456 zl!343))))))))

(assert (= (and d!1734034 res!2319578) b!5447218))

(assert (= (and d!1734034 c!950743) b!5447221))

(assert (= (and d!1734034 (not c!950743)) b!5447215))

(assert (= (and b!5447215 c!950744) b!5447214))

(assert (= (and b!5447215 (not c!950744)) b!5447219))

(assert (= (and d!1734034 res!2319579) b!5447220))

(assert (= (and b!5447220 c!950746) b!5447213))

(assert (= (and b!5447220 (not c!950746)) b!5447212))

(assert (= (and b!5447212 c!950745) b!5447216))

(assert (= (and b!5447212 (not c!950745)) b!5447217))

(declare-fun m!6467132 () Bool)

(assert (=> d!1734034 m!6467132))

(declare-fun m!6467134 () Bool)

(assert (=> d!1734034 m!6467134))

(declare-fun m!6467136 () Bool)

(assert (=> b!5447213 m!6467136))

(declare-fun m!6467138 () Bool)

(assert (=> b!5447217 m!6467138))

(declare-fun m!6467140 () Bool)

(assert (=> b!5447220 m!6467140))

(declare-fun m!6467142 () Bool)

(assert (=> b!5447212 m!6467142))

(assert (=> b!5447212 m!6467142))

(declare-fun m!6467144 () Bool)

(assert (=> b!5447212 m!6467144))

(declare-fun m!6467146 () Bool)

(assert (=> b!5447214 m!6467146))

(declare-fun m!6467148 () Bool)

(assert (=> b!5447218 m!6467148))

(declare-fun m!6467150 () Bool)

(assert (=> b!5447216 m!6467150))

(assert (=> bm!392799 d!1734034))

(declare-fun d!1734036 () Bool)

(declare-fun e!3373912 () Bool)

(assert (=> d!1734036 e!3373912))

(declare-fun res!2319582 () Bool)

(assert (=> d!1734036 (=> (not res!2319582) (not e!3373912))))

(declare-fun lt!2222537 () List!62132)

(declare-fun noDuplicate!1429 (List!62132) Bool)

(assert (=> d!1734036 (= res!2319582 (noDuplicate!1429 lt!2222537))))

(declare-fun choose!41345 ((InoxSet Context!9322)) List!62132)

(assert (=> d!1734036 (= lt!2222537 (choose!41345 z!1189))))

(assert (=> d!1734036 (= (toList!9061 z!1189) lt!2222537)))

(declare-fun b!5447224 () Bool)

(declare-fun content!11151 (List!62132) (InoxSet Context!9322))

(assert (=> b!5447224 (= e!3373912 (= (content!11151 lt!2222537) z!1189))))

(assert (= (and d!1734036 res!2319582) b!5447224))

(declare-fun m!6467152 () Bool)

(assert (=> d!1734036 m!6467152))

(declare-fun m!6467154 () Bool)

(assert (=> d!1734036 m!6467154))

(declare-fun m!6467156 () Bool)

(assert (=> b!5447224 m!6467156))

(assert (=> b!5446034 d!1734036))

(declare-fun b!5447225 () Bool)

(declare-fun e!3373915 () (InoxSet Context!9322))

(declare-fun e!3373914 () (InoxSet Context!9322))

(assert (=> b!5447225 (= e!3373915 e!3373914)))

(declare-fun c!950747 () Bool)

(assert (=> b!5447225 (= c!950747 ((_ is Cons!62007) (exprs!5161 (ite c!950418 lt!2222140 lt!2222232))))))

(declare-fun b!5447226 () Bool)

(declare-fun call!393108 () (InoxSet Context!9322))

(assert (=> b!5447226 (= e!3373914 call!393108)))

(declare-fun b!5447228 () Bool)

(declare-fun e!3373913 () Bool)

(assert (=> b!5447228 (= e!3373913 (nullable!5446 (h!68455 (exprs!5161 (ite c!950418 lt!2222140 lt!2222232)))))))

(declare-fun b!5447229 () Bool)

(assert (=> b!5447229 (= e!3373915 ((_ map or) call!393108 (derivationStepZipperUp!649 (Context!9323 (t!375358 (exprs!5161 (ite c!950418 lt!2222140 lt!2222232)))) (h!68454 s!2326))))))

(declare-fun bm!393103 () Bool)

(assert (=> bm!393103 (= call!393108 (derivationStepZipperDown!725 (h!68455 (exprs!5161 (ite c!950418 lt!2222140 lt!2222232))) (Context!9323 (t!375358 (exprs!5161 (ite c!950418 lt!2222140 lt!2222232)))) (h!68454 s!2326)))))

(declare-fun b!5447227 () Bool)

(assert (=> b!5447227 (= e!3373914 ((as const (Array Context!9322 Bool)) false))))

(declare-fun d!1734038 () Bool)

(declare-fun c!950748 () Bool)

(assert (=> d!1734038 (= c!950748 e!3373913)))

(declare-fun res!2319583 () Bool)

(assert (=> d!1734038 (=> (not res!2319583) (not e!3373913))))

(assert (=> d!1734038 (= res!2319583 ((_ is Cons!62007) (exprs!5161 (ite c!950418 lt!2222140 lt!2222232))))))

(assert (=> d!1734038 (= (derivationStepZipperUp!649 (ite c!950418 lt!2222140 lt!2222232) (h!68454 s!2326)) e!3373915)))

(assert (= (and d!1734038 res!2319583) b!5447228))

(assert (= (and d!1734038 c!950748) b!5447229))

(assert (= (and d!1734038 (not c!950748)) b!5447225))

(assert (= (and b!5447225 c!950747) b!5447226))

(assert (= (and b!5447225 (not c!950747)) b!5447227))

(assert (= (or b!5447229 b!5447226) bm!393103))

(declare-fun m!6467158 () Bool)

(assert (=> b!5447228 m!6467158))

(declare-fun m!6467160 () Bool)

(assert (=> b!5447229 m!6467160))

(declare-fun m!6467162 () Bool)

(assert (=> bm!393103 m!6467162))

(assert (=> bm!392817 d!1734038))

(declare-fun d!1734040 () Bool)

(assert (=> d!1734040 (not (matchZipper!1521 lt!2222210 (t!375357 s!2326)))))

(declare-fun lt!2222540 () Unit!154704)

(declare-fun choose!41346 ((InoxSet Context!9322) List!62130) Unit!154704)

(assert (=> d!1734040 (= lt!2222540 (choose!41346 lt!2222210 (t!375357 s!2326)))))

(assert (=> d!1734040 (= lt!2222210 ((as const (Array Context!9322 Bool)) false))))

(assert (=> d!1734040 (= (lemmaEmptyZipperMatchesNothing!32 lt!2222210 (t!375357 s!2326)) lt!2222540)))

(declare-fun bs!1256962 () Bool)

(assert (= bs!1256962 d!1734040))

(assert (=> bs!1256962 m!6465602))

(declare-fun m!6467164 () Bool)

(assert (=> bs!1256962 m!6467164))

(assert (=> bm!392930 d!1734040))

(declare-fun bs!1256963 () Bool)

(declare-fun d!1734042 () Bool)

(assert (= bs!1256963 (and d!1734042 d!1733880)))

(declare-fun lambda!287307 () Int)

(assert (=> bs!1256963 (= lambda!287307 lambda!287279)))

(declare-fun bs!1256964 () Bool)

(assert (= bs!1256964 (and d!1734042 d!1733924)))

(assert (=> bs!1256964 (= lambda!287307 lambda!287288)))

(declare-fun bs!1256965 () Bool)

(assert (= bs!1256965 (and d!1734042 b!5445993)))

(assert (=> bs!1256965 (= lambda!287307 lambda!287194)))

(declare-fun bs!1256966 () Bool)

(assert (= bs!1256966 (and d!1734042 b!5446022)))

(assert (=> bs!1256966 (= lambda!287307 lambda!287205)))

(declare-fun bs!1256967 () Bool)

(assert (= bs!1256967 (and d!1734042 d!1734034)))

(assert (=> bs!1256967 (= lambda!287307 lambda!287306)))

(declare-fun bs!1256968 () Bool)

(assert (= bs!1256968 (and d!1734042 d!1733966)))

(assert (=> bs!1256968 (= lambda!287307 lambda!287298)))

(declare-fun bs!1256969 () Bool)

(assert (= bs!1256969 (and d!1734042 b!5446006)))

(assert (=> bs!1256969 (= lambda!287307 lambda!287196)))

(declare-fun b!5447230 () Bool)

(declare-fun e!3373917 () Bool)

(declare-fun e!3373921 () Bool)

(assert (=> b!5447230 (= e!3373917 e!3373921)))

(declare-fun c!950751 () Bool)

(assert (=> b!5447230 (= c!950751 (isEmpty!33987 (tail!10775 (ite c!950410 lt!2222264 lt!2222209))))))

(declare-fun b!5447231 () Bool)

(declare-fun lt!2222541 () Regex!15277)

(assert (=> b!5447231 (= e!3373917 (isEmptyExpr!1012 lt!2222541))))

(declare-fun b!5447232 () Bool)

(declare-fun e!3373918 () Regex!15277)

(assert (=> b!5447232 (= e!3373918 (Concat!24122 (h!68455 (ite c!950410 lt!2222264 lt!2222209)) (generalisedConcat!946 (t!375358 (ite c!950410 lt!2222264 lt!2222209)))))))

(declare-fun b!5447233 () Bool)

(declare-fun e!3373916 () Regex!15277)

(assert (=> b!5447233 (= e!3373916 e!3373918)))

(declare-fun c!950750 () Bool)

(assert (=> b!5447233 (= c!950750 ((_ is Cons!62007) (ite c!950410 lt!2222264 lt!2222209)))))

(declare-fun e!3373919 () Bool)

(assert (=> d!1734042 e!3373919))

(declare-fun res!2319585 () Bool)

(assert (=> d!1734042 (=> (not res!2319585) (not e!3373919))))

(assert (=> d!1734042 (= res!2319585 (validRegex!7013 lt!2222541))))

(assert (=> d!1734042 (= lt!2222541 e!3373916)))

(declare-fun c!950749 () Bool)

(declare-fun e!3373920 () Bool)

(assert (=> d!1734042 (= c!950749 e!3373920)))

(declare-fun res!2319584 () Bool)

(assert (=> d!1734042 (=> (not res!2319584) (not e!3373920))))

(assert (=> d!1734042 (= res!2319584 ((_ is Cons!62007) (ite c!950410 lt!2222264 lt!2222209)))))

(assert (=> d!1734042 (forall!14580 (ite c!950410 lt!2222264 lt!2222209) lambda!287307)))

(assert (=> d!1734042 (= (generalisedConcat!946 (ite c!950410 lt!2222264 lt!2222209)) lt!2222541)))

(declare-fun b!5447234 () Bool)

(assert (=> b!5447234 (= e!3373921 (= lt!2222541 (head!11678 (ite c!950410 lt!2222264 lt!2222209))))))

(declare-fun b!5447235 () Bool)

(assert (=> b!5447235 (= e!3373921 (isConcat!535 lt!2222541))))

(declare-fun b!5447236 () Bool)

(assert (=> b!5447236 (= e!3373920 (isEmpty!33987 (t!375358 (ite c!950410 lt!2222264 lt!2222209))))))

(declare-fun b!5447237 () Bool)

(assert (=> b!5447237 (= e!3373918 EmptyExpr!15277)))

(declare-fun b!5447238 () Bool)

(assert (=> b!5447238 (= e!3373919 e!3373917)))

(declare-fun c!950752 () Bool)

(assert (=> b!5447238 (= c!950752 (isEmpty!33987 (ite c!950410 lt!2222264 lt!2222209)))))

(declare-fun b!5447239 () Bool)

(assert (=> b!5447239 (= e!3373916 (h!68455 (ite c!950410 lt!2222264 lt!2222209)))))

(assert (= (and d!1734042 res!2319584) b!5447236))

(assert (= (and d!1734042 c!950749) b!5447239))

(assert (= (and d!1734042 (not c!950749)) b!5447233))

(assert (= (and b!5447233 c!950750) b!5447232))

(assert (= (and b!5447233 (not c!950750)) b!5447237))

(assert (= (and d!1734042 res!2319585) b!5447238))

(assert (= (and b!5447238 c!950752) b!5447231))

(assert (= (and b!5447238 (not c!950752)) b!5447230))

(assert (= (and b!5447230 c!950751) b!5447234))

(assert (= (and b!5447230 (not c!950751)) b!5447235))

(declare-fun m!6467166 () Bool)

(assert (=> d!1734042 m!6467166))

(declare-fun m!6467168 () Bool)

(assert (=> d!1734042 m!6467168))

(declare-fun m!6467170 () Bool)

(assert (=> b!5447231 m!6467170))

(declare-fun m!6467172 () Bool)

(assert (=> b!5447235 m!6467172))

(declare-fun m!6467174 () Bool)

(assert (=> b!5447238 m!6467174))

(declare-fun m!6467176 () Bool)

(assert (=> b!5447230 m!6467176))

(assert (=> b!5447230 m!6467176))

(declare-fun m!6467178 () Bool)

(assert (=> b!5447230 m!6467178))

(declare-fun m!6467180 () Bool)

(assert (=> b!5447232 m!6467180))

(declare-fun m!6467182 () Bool)

(assert (=> b!5447236 m!6467182))

(declare-fun m!6467184 () Bool)

(assert (=> b!5447234 m!6467184))

(assert (=> bm!392961 d!1734042))

(declare-fun bs!1256970 () Bool)

(declare-fun d!1734044 () Bool)

(assert (= bs!1256970 (and d!1734044 d!1733880)))

(declare-fun lambda!287310 () Int)

(assert (=> bs!1256970 (= lambda!287310 lambda!287279)))

(declare-fun bs!1256971 () Bool)

(assert (= bs!1256971 (and d!1734044 d!1733924)))

(assert (=> bs!1256971 (= lambda!287310 lambda!287288)))

(declare-fun bs!1256972 () Bool)

(assert (= bs!1256972 (and d!1734044 b!5446022)))

(assert (=> bs!1256972 (= lambda!287310 lambda!287205)))

(declare-fun bs!1256973 () Bool)

(assert (= bs!1256973 (and d!1734044 d!1734034)))

(assert (=> bs!1256973 (= lambda!287310 lambda!287306)))

(declare-fun bs!1256974 () Bool)

(assert (= bs!1256974 (and d!1734044 d!1733966)))

(assert (=> bs!1256974 (= lambda!287310 lambda!287298)))

(declare-fun bs!1256975 () Bool)

(assert (= bs!1256975 (and d!1734044 b!5446006)))

(assert (=> bs!1256975 (= lambda!287310 lambda!287196)))

(declare-fun bs!1256976 () Bool)

(assert (= bs!1256976 (and d!1734044 b!5445993)))

(assert (=> bs!1256976 (= lambda!287310 lambda!287194)))

(declare-fun bs!1256977 () Bool)

(assert (= bs!1256977 (and d!1734044 d!1734042)))

(assert (=> bs!1256977 (= lambda!287310 lambda!287307)))

(assert (=> d!1734044 (= (inv!81439 (h!68456 zl!343)) (forall!14580 (exprs!5161 (h!68456 zl!343)) lambda!287310))))

(declare-fun bs!1256978 () Bool)

(assert (= bs!1256978 d!1734044))

(declare-fun m!6467186 () Bool)

(assert (=> bs!1256978 m!6467186))

(assert (=> b!5446013 d!1734044))

(declare-fun d!1734046 () Bool)

(declare-fun c!950753 () Bool)

(assert (=> d!1734046 (= c!950753 (isEmpty!33985 (t!375357 s!2326)))))

(declare-fun e!3373922 () Bool)

(assert (=> d!1734046 (= (matchZipper!1521 (ite c!950418 ((_ map or) lt!2222289 lt!2222122) lt!2222228) (t!375357 s!2326)) e!3373922)))

(declare-fun b!5447240 () Bool)

(assert (=> b!5447240 (= e!3373922 (nullableZipper!1480 (ite c!950418 ((_ map or) lt!2222289 lt!2222122) lt!2222228)))))

(declare-fun b!5447241 () Bool)

(assert (=> b!5447241 (= e!3373922 (matchZipper!1521 (derivationStepZipper!1496 (ite c!950418 ((_ map or) lt!2222289 lt!2222122) lt!2222228) (head!11677 (t!375357 s!2326))) (tail!10774 (t!375357 s!2326))))))

(assert (= (and d!1734046 c!950753) b!5447240))

(assert (= (and d!1734046 (not c!950753)) b!5447241))

(assert (=> d!1734046 m!6466962))

(declare-fun m!6467188 () Bool)

(assert (=> b!5447240 m!6467188))

(assert (=> b!5447241 m!6466966))

(assert (=> b!5447241 m!6466966))

(declare-fun m!6467190 () Bool)

(assert (=> b!5447241 m!6467190))

(assert (=> b!5447241 m!6466970))

(assert (=> b!5447241 m!6467190))

(assert (=> b!5447241 m!6466970))

(declare-fun m!6467192 () Bool)

(assert (=> b!5447241 m!6467192))

(assert (=> bm!392963 d!1734046))

(declare-fun d!1734048 () Bool)

(assert (=> d!1734048 (= (matchR!7462 (Concat!24122 (Union!15277 (regOne!31067 (regOne!31066 r!7292)) (regTwo!31067 (regOne!31066 r!7292))) (regTwo!31066 r!7292)) s!2326) (matchR!7462 (Union!15277 (Concat!24122 (regOne!31067 (regOne!31066 r!7292)) (regTwo!31066 r!7292)) (Concat!24122 (regTwo!31067 (regOne!31066 r!7292)) (regTwo!31066 r!7292))) s!2326))))

(declare-fun lt!2222544 () Unit!154704)

(declare-fun choose!41347 (Regex!15277 Regex!15277 Regex!15277 List!62130) Unit!154704)

(assert (=> d!1734048 (= lt!2222544 (choose!41347 (regOne!31067 (regOne!31066 r!7292)) (regTwo!31067 (regOne!31066 r!7292)) (regTwo!31066 r!7292) s!2326))))

(assert (=> d!1734048 (validRegex!7013 (regOne!31067 (regOne!31066 r!7292)))))

(assert (=> d!1734048 (= (lemmaConcatDistributesInUnion!24 (regOne!31067 (regOne!31066 r!7292)) (regTwo!31067 (regOne!31066 r!7292)) (regTwo!31066 r!7292) s!2326) lt!2222544)))

(declare-fun bs!1256979 () Bool)

(assert (= bs!1256979 d!1734048))

(declare-fun m!6467194 () Bool)

(assert (=> bs!1256979 m!6467194))

(declare-fun m!6467196 () Bool)

(assert (=> bs!1256979 m!6467196))

(declare-fun m!6467198 () Bool)

(assert (=> bs!1256979 m!6467198))

(declare-fun m!6467200 () Bool)

(assert (=> bs!1256979 m!6467200))

(assert (=> b!5445985 d!1734048))

(declare-fun bs!1256980 () Bool)

(declare-fun b!5447246 () Bool)

(assert (= bs!1256980 (and b!5447246 b!5446005)))

(declare-fun lambda!287311 () Int)

(assert (=> bs!1256980 (not (= lambda!287311 lambda!287188))))

(declare-fun bs!1256981 () Bool)

(assert (= bs!1256981 (and b!5447246 d!1733964)))

(assert (=> bs!1256981 (not (= lambda!287311 lambda!287295))))

(declare-fun bs!1256982 () Bool)

(assert (= bs!1256982 (and b!5447246 b!5445993)))

(assert (=> bs!1256982 (= (and (= s!2326 (_1!35779 lt!2222282)) (= (reg!15606 lt!2222302) (reg!15606 (regOne!31066 r!7292))) (= lt!2222302 lt!2222247)) (= lambda!287311 lambda!287192))))

(declare-fun bs!1256983 () Bool)

(assert (= bs!1256983 (and b!5447246 d!1733946)))

(assert (=> bs!1256983 (not (= lambda!287311 lambda!287293))))

(declare-fun bs!1256984 () Bool)

(assert (= bs!1256984 (and b!5447246 d!1733942)))

(assert (=> bs!1256984 (not (= lambda!287311 lambda!287292))))

(declare-fun bs!1256985 () Bool)

(assert (= bs!1256985 (and b!5447246 b!5446006)))

(assert (=> bs!1256985 (not (= lambda!287311 lambda!287199))))

(assert (=> bs!1256980 (not (= lambda!287311 lambda!287186))))

(declare-fun bs!1256986 () Bool)

(assert (= bs!1256986 (and b!5447246 d!1733728)))

(assert (=> bs!1256986 (= (and (= s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006))) (= (reg!15606 lt!2222302) (reg!15606 (regOne!31066 r!7292))) (= lt!2222302 (Star!15277 (reg!15606 (regOne!31066 r!7292))))) (= lambda!287311 lambda!287251))))

(declare-fun bs!1256987 () Bool)

(assert (= bs!1256987 (and b!5447246 b!5446028)))

(assert (=> bs!1256987 (not (= lambda!287311 lambda!287181))))

(declare-fun bs!1256988 () Bool)

(assert (= bs!1256988 (and b!5447246 b!5446695)))

(assert (=> bs!1256988 (not (= lambda!287311 lambda!287268))))

(assert (=> bs!1256987 (not (= lambda!287311 lambda!287182))))

(declare-fun bs!1256989 () Bool)

(assert (= bs!1256989 (and b!5447246 b!5446967)))

(assert (=> bs!1256989 (= (and (= s!2326 (ite (or c!950418 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326))) (= (reg!15606 lt!2222302) (reg!15606 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292)))))) (= lt!2222302 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292)))))) (= lambda!287311 lambda!287286))))

(declare-fun bs!1256990 () Bool)

(assert (= bs!1256990 (and b!5447246 b!5447155)))

(assert (=> bs!1256990 (= (and (= (reg!15606 lt!2222302) (reg!15606 r!7292)) (= lt!2222302 r!7292)) (= lambda!287311 lambda!287302))))

(declare-fun bs!1256991 () Bool)

(assert (= bs!1256991 (and b!5447246 b!5445995)))

(assert (=> bs!1256991 (= (and (= s!2326 Nil!62006) (= (reg!15606 lt!2222302) (reg!15606 (regOne!31066 r!7292))) (= lt!2222302 lt!2222247)) (= lambda!287311 lambda!287204))))

(declare-fun bs!1256992 () Bool)

(assert (= bs!1256992 (and b!5447246 b!5446692)))

(assert (=> bs!1256992 (= (and (= s!2326 (ite (or c!950418 c!950410) s!2326 (ite c!950411 (_1!35779 lt!2222148) s!2326))) (= (reg!15606 lt!2222302) (reg!15606 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292)))))) (= lt!2222302 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292)))))) (= lambda!287311 lambda!287267))))

(declare-fun bs!1256993 () Bool)

(assert (= bs!1256993 (and b!5447246 b!5446036)))

(assert (=> bs!1256993 (not (= lambda!287311 lambda!287179))))

(assert (=> bs!1256985 (not (= lambda!287311 lambda!287197))))

(declare-fun bs!1256994 () Bool)

(assert (= bs!1256994 (and b!5447246 b!5446578)))

(assert (=> bs!1256994 (not (= lambda!287311 lambda!287257))))

(assert (=> bs!1256980 (not (= lambda!287311 lambda!287187))))

(assert (=> bs!1256991 (not (= lambda!287311 lambda!287203))))

(assert (=> bs!1256987 (not (= lambda!287311 lambda!287183))))

(assert (=> bs!1256985 (not (= lambda!287311 lambda!287198))))

(assert (=> bs!1256991 (not (= lambda!287311 lambda!287202))))

(declare-fun bs!1256995 () Bool)

(assert (= bs!1256995 (and b!5447246 d!1733706)))

(assert (=> bs!1256995 (not (= lambda!287311 lambda!287237))))

(declare-fun bs!1256996 () Bool)

(assert (= bs!1256996 (and b!5447246 b!5446575)))

(assert (=> bs!1256996 (= (and (= (reg!15606 lt!2222302) (reg!15606 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221))))) (= lt!2222302 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221))))) (= lambda!287311 lambda!287256))))

(assert (=> bs!1256987 (not (= lambda!287311 lambda!287184))))

(assert (=> bs!1256993 (not (= lambda!287311 lambda!287178))))

(assert (=> bs!1256995 (not (= lambda!287311 lambda!287238))))

(declare-fun bs!1256997 () Bool)

(assert (= bs!1256997 (and b!5447246 d!1733902)))

(assert (=> bs!1256997 (not (= lambda!287311 lambda!287284))))

(declare-fun bs!1256998 () Bool)

(assert (= bs!1256998 (and b!5447246 d!1734012)))

(assert (=> bs!1256998 (not (= lambda!287311 lambda!287304))))

(assert (=> bs!1256986 (not (= lambda!287311 lambda!287250))))

(assert (=> bs!1256982 (not (= lambda!287311 lambda!287193))))

(declare-fun bs!1256999 () Bool)

(assert (= bs!1256999 (and b!5447246 b!5446970)))

(assert (=> bs!1256999 (not (= lambda!287311 lambda!287287))))

(declare-fun bs!1257000 () Bool)

(assert (= bs!1257000 (and b!5447246 b!5447158)))

(assert (=> bs!1257000 (not (= lambda!287311 lambda!287303))))

(assert (=> bs!1256985 (= (and (= s!2326 (_1!35779 lt!2222148)) (= (reg!15606 lt!2222302) (reg!15606 (regOne!31066 r!7292))) (= lt!2222302 lt!2222247)) (= lambda!287311 lambda!287201))))

(declare-fun bs!1257001 () Bool)

(assert (= bs!1257001 (and b!5447246 b!5446010)))

(assert (=> bs!1257001 (not (= lambda!287311 lambda!287190))))

(assert (=> bs!1256998 (not (= lambda!287311 lambda!287305))))

(assert (=> bs!1256985 (not (= lambda!287311 lambda!287200))))

(assert (=> bs!1256982 (not (= lambda!287311 lambda!287191))))

(assert (=> bs!1257001 (not (= lambda!287311 lambda!287189))))

(assert (=> bs!1256980 (not (= lambda!287311 lambda!287185))))

(assert (=> bs!1256983 (not (= lambda!287311 lambda!287294))))

(assert (=> b!5447246 true))

(assert (=> b!5447246 true))

(declare-fun bs!1257002 () Bool)

(declare-fun b!5447249 () Bool)

(assert (= bs!1257002 (and b!5447249 b!5446005)))

(declare-fun lambda!287312 () Int)

(assert (=> bs!1257002 (= (and (= (regOne!31066 lt!2222302) (regTwo!31066 (regOne!31066 r!7292))) (= (regTwo!31066 lt!2222302) lt!2222211)) (= lambda!287312 lambda!287188))))

(declare-fun bs!1257003 () Bool)

(assert (= bs!1257003 (and b!5447249 d!1733964)))

(assert (=> bs!1257003 (not (= lambda!287312 lambda!287295))))

(declare-fun bs!1257004 () Bool)

(assert (= bs!1257004 (and b!5447249 b!5445993)))

(assert (=> bs!1257004 (not (= lambda!287312 lambda!287192))))

(declare-fun bs!1257005 () Bool)

(assert (= bs!1257005 (and b!5447249 d!1733946)))

(assert (=> bs!1257005 (not (= lambda!287312 lambda!287293))))

(declare-fun bs!1257006 () Bool)

(assert (= bs!1257006 (and b!5447249 d!1733942)))

(assert (=> bs!1257006 (not (= lambda!287312 lambda!287292))))

(declare-fun bs!1257007 () Bool)

(assert (= bs!1257007 (and b!5447249 b!5446006)))

(assert (=> bs!1257007 (not (= lambda!287312 lambda!287199))))

(assert (=> bs!1257002 (= (and (= (regOne!31066 lt!2222302) (regOne!31066 (regOne!31066 r!7292))) (= (regTwo!31066 lt!2222302) lt!2222299)) (= lambda!287312 lambda!287186))))

(declare-fun bs!1257008 () Bool)

(assert (= bs!1257008 (and b!5447249 d!1733728)))

(assert (=> bs!1257008 (not (= lambda!287312 lambda!287251))))

(declare-fun bs!1257009 () Bool)

(assert (= bs!1257009 (and b!5447249 b!5446695)))

(assert (=> bs!1257009 (= (and (= s!2326 (ite (or c!950418 c!950410) s!2326 (ite c!950411 (_1!35779 lt!2222148) s!2326))) (= (regOne!31066 lt!2222302) (regOne!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292)))))) (= (regTwo!31066 lt!2222302) (regTwo!31066 (ite c!950418 lt!2222267 (ite c!950410 lt!2222146 (ite c!950411 lt!2222184 (regOne!31066 r!7292))))))) (= lambda!287312 lambda!287268))))

(declare-fun bs!1257010 () Bool)

(assert (= bs!1257010 (and b!5447249 b!5446028)))

(assert (=> bs!1257010 (= (and (= (regOne!31066 lt!2222302) (regOne!31066 (regOne!31066 r!7292))) (= (regTwo!31066 lt!2222302) lt!2222146)) (= lambda!287312 lambda!287182))))

(declare-fun bs!1257011 () Bool)

(assert (= bs!1257011 (and b!5447249 b!5446967)))

(assert (=> bs!1257011 (not (= lambda!287312 lambda!287286))))

(declare-fun bs!1257012 () Bool)

(assert (= bs!1257012 (and b!5447249 b!5447155)))

(assert (=> bs!1257012 (not (= lambda!287312 lambda!287302))))

(declare-fun bs!1257013 () Bool)

(assert (= bs!1257013 (and b!5447249 b!5445995)))

(assert (=> bs!1257013 (not (= lambda!287312 lambda!287204))))

(declare-fun bs!1257014 () Bool)

(assert (= bs!1257014 (and b!5447249 b!5446692)))

(assert (=> bs!1257014 (not (= lambda!287312 lambda!287267))))

(declare-fun bs!1257015 () Bool)

(assert (= bs!1257015 (and b!5447249 b!5446036)))

(assert (=> bs!1257015 (= (and (= (regOne!31066 lt!2222302) (regOne!31066 r!7292)) (= (regTwo!31066 lt!2222302) (regTwo!31066 r!7292))) (= lambda!287312 lambda!287179))))

(assert (=> bs!1257007 (not (= lambda!287312 lambda!287197))))

(declare-fun bs!1257016 () Bool)

(assert (= bs!1257016 (and b!5447249 b!5446578)))

(assert (=> bs!1257016 (= (and (= (regOne!31066 lt!2222302) (regOne!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221))))) (= (regTwo!31066 lt!2222302) (regTwo!31066 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (ite c!950414 lt!2222299 lt!2222221)))))) (= lambda!287312 lambda!287257))))

(assert (=> bs!1257002 (not (= lambda!287312 lambda!287187))))

(assert (=> bs!1257013 (= (and (= s!2326 Nil!62006) (= (regOne!31066 lt!2222302) (reg!15606 (regOne!31066 r!7292))) (= (regTwo!31066 lt!2222302) lt!2222247)) (= lambda!287312 lambda!287203))))

(assert (=> bs!1257010 (not (= lambda!287312 lambda!287183))))

(assert (=> bs!1257007 (= (and (= (regOne!31066 lt!2222302) lt!2222184) (= (regTwo!31066 lt!2222302) (regTwo!31066 r!7292))) (= lambda!287312 lambda!287198))))

(assert (=> bs!1257013 (not (= lambda!287312 lambda!287202))))

(declare-fun bs!1257017 () Bool)

(assert (= bs!1257017 (and b!5447249 d!1733706)))

(assert (=> bs!1257017 (not (= lambda!287312 lambda!287237))))

(declare-fun bs!1257018 () Bool)

(assert (= bs!1257018 (and b!5447249 b!5446575)))

(assert (=> bs!1257018 (not (= lambda!287312 lambda!287256))))

(assert (=> bs!1257010 (= (and (= (regOne!31066 lt!2222302) (regTwo!31066 (regOne!31066 r!7292))) (= (regTwo!31066 lt!2222302) lt!2222240)) (= lambda!287312 lambda!287184))))

(assert (=> bs!1257015 (not (= lambda!287312 lambda!287178))))

(assert (=> bs!1257017 (= (and (= (regOne!31066 lt!2222302) (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 lt!2222247 lt!2222184))) (= (regTwo!31066 lt!2222302) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))))) (= lambda!287312 lambda!287238))))

(declare-fun bs!1257019 () Bool)

(assert (= bs!1257019 (and b!5447249 d!1733902)))

(assert (=> bs!1257019 (not (= lambda!287312 lambda!287284))))

(declare-fun bs!1257020 () Bool)

(assert (= bs!1257020 (and b!5447249 d!1734012)))

(assert (=> bs!1257020 (not (= lambda!287312 lambda!287304))))

(assert (=> bs!1257008 (not (= lambda!287312 lambda!287250))))

(assert (=> bs!1257004 (= (and (= s!2326 (_1!35779 lt!2222282)) (= (regOne!31066 lt!2222302) (reg!15606 (regOne!31066 r!7292))) (= (regTwo!31066 lt!2222302) lt!2222247)) (= lambda!287312 lambda!287193))))

(declare-fun bs!1257021 () Bool)

(assert (= bs!1257021 (and b!5447249 b!5446970)))

(assert (=> bs!1257021 (= (and (= s!2326 (ite (or c!950418 c!950414) s!2326 (ite c!950411 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)) s!2326))) (= (regOne!31066 lt!2222302) (regOne!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292)))))) (= (regTwo!31066 lt!2222302) (regTwo!31066 (ite c!950418 lt!2222195 (ite c!950414 lt!2222270 (ite c!950411 (ite c!950409 lt!2222247 (ite c!950415 lt!2222202 lt!2222247)) (regTwo!31066 r!7292))))))) (= lambda!287312 lambda!287287))))

(declare-fun bs!1257022 () Bool)

(assert (= bs!1257022 (and b!5447249 b!5447246)))

(assert (=> bs!1257022 (not (= lambda!287312 lambda!287311))))

(assert (=> bs!1257010 (not (= lambda!287312 lambda!287181))))

(declare-fun bs!1257023 () Bool)

(assert (= bs!1257023 (and b!5447249 b!5447158)))

(assert (=> bs!1257023 (= (and (= (regOne!31066 lt!2222302) (regOne!31066 r!7292)) (= (regTwo!31066 lt!2222302) (regTwo!31066 r!7292))) (= lambda!287312 lambda!287303))))

(assert (=> bs!1257007 (not (= lambda!287312 lambda!287201))))

(declare-fun bs!1257024 () Bool)

(assert (= bs!1257024 (and b!5447249 b!5446010)))

(assert (=> bs!1257024 (= (and (= (regOne!31066 lt!2222302) lt!2222247) (= (regTwo!31066 lt!2222302) (regTwo!31066 r!7292))) (= lambda!287312 lambda!287190))))

(assert (=> bs!1257020 (= (and (= s!2326 (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 (_1!35779 lt!2222148) Nil!62006)))) (= (regOne!31066 lt!2222302) (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292)))) (= (regTwo!31066 lt!2222302) (ite c!950410 lt!2222146 (ite c!950414 lt!2222299 lt!2222247)))) (= lambda!287312 lambda!287305))))

(assert (=> bs!1257007 (= (and (= s!2326 (_1!35779 lt!2222148)) (= (regOne!31066 lt!2222302) (reg!15606 (regOne!31066 r!7292))) (= (regTwo!31066 lt!2222302) lt!2222247)) (= lambda!287312 lambda!287200))))

(assert (=> bs!1257004 (not (= lambda!287312 lambda!287191))))

(assert (=> bs!1257024 (not (= lambda!287312 lambda!287189))))

(assert (=> bs!1257002 (not (= lambda!287312 lambda!287185))))

(assert (=> bs!1257005 (= (and (= (regOne!31066 lt!2222302) (regOne!31066 r!7292)) (= (regTwo!31066 lt!2222302) (regTwo!31066 r!7292))) (= lambda!287312 lambda!287294))))

(assert (=> b!5447249 true))

(assert (=> b!5447249 true))

(declare-fun c!950757 () Bool)

(declare-fun bm!393104 () Bool)

(declare-fun call!393109 () Bool)

(assert (=> bm!393104 (= call!393109 (Exists!2458 (ite c!950757 lambda!287311 lambda!287312)))))

(declare-fun d!1734050 () Bool)

(declare-fun c!950756 () Bool)

(assert (=> d!1734050 (= c!950756 ((_ is EmptyExpr!15277) lt!2222302))))

(declare-fun e!3373923 () Bool)

(assert (=> d!1734050 (= (matchRSpec!2380 lt!2222302 s!2326) e!3373923)))

(declare-fun b!5447242 () Bool)

(declare-fun e!3373929 () Bool)

(assert (=> b!5447242 (= e!3373929 (= s!2326 (Cons!62006 (c!950421 lt!2222302) Nil!62006)))))

(declare-fun b!5447243 () Bool)

(declare-fun call!393110 () Bool)

(assert (=> b!5447243 (= e!3373923 call!393110)))

(declare-fun b!5447244 () Bool)

(declare-fun c!950754 () Bool)

(assert (=> b!5447244 (= c!950754 ((_ is Union!15277) lt!2222302))))

(declare-fun e!3373928 () Bool)

(assert (=> b!5447244 (= e!3373929 e!3373928)))

(declare-fun b!5447245 () Bool)

(declare-fun e!3373927 () Bool)

(assert (=> b!5447245 (= e!3373923 e!3373927)))

(declare-fun res!2319587 () Bool)

(assert (=> b!5447245 (= res!2319587 (not ((_ is EmptyLang!15277) lt!2222302)))))

(assert (=> b!5447245 (=> (not res!2319587) (not e!3373927))))

(declare-fun e!3373926 () Bool)

(assert (=> b!5447246 (= e!3373926 call!393109)))

(declare-fun b!5447247 () Bool)

(declare-fun e!3373925 () Bool)

(assert (=> b!5447247 (= e!3373925 (matchRSpec!2380 (regTwo!31067 lt!2222302) s!2326))))

(declare-fun b!5447248 () Bool)

(declare-fun res!2319586 () Bool)

(assert (=> b!5447248 (=> res!2319586 e!3373926)))

(assert (=> b!5447248 (= res!2319586 call!393110)))

(declare-fun e!3373924 () Bool)

(assert (=> b!5447248 (= e!3373924 e!3373926)))

(assert (=> b!5447249 (= e!3373924 call!393109)))

(declare-fun b!5447250 () Bool)

(declare-fun c!950755 () Bool)

(assert (=> b!5447250 (= c!950755 ((_ is ElementMatch!15277) lt!2222302))))

(assert (=> b!5447250 (= e!3373927 e!3373929)))

(declare-fun b!5447251 () Bool)

(assert (=> b!5447251 (= e!3373928 e!3373925)))

(declare-fun res!2319588 () Bool)

(assert (=> b!5447251 (= res!2319588 (matchRSpec!2380 (regOne!31067 lt!2222302) s!2326))))

(assert (=> b!5447251 (=> res!2319588 e!3373925)))

(declare-fun bm!393105 () Bool)

(assert (=> bm!393105 (= call!393110 (isEmpty!33985 s!2326))))

(declare-fun b!5447252 () Bool)

(assert (=> b!5447252 (= e!3373928 e!3373924)))

(assert (=> b!5447252 (= c!950757 ((_ is Star!15277) lt!2222302))))

(assert (= (and d!1734050 c!950756) b!5447243))

(assert (= (and d!1734050 (not c!950756)) b!5447245))

(assert (= (and b!5447245 res!2319587) b!5447250))

(assert (= (and b!5447250 c!950755) b!5447242))

(assert (= (and b!5447250 (not c!950755)) b!5447244))

(assert (= (and b!5447244 c!950754) b!5447251))

(assert (= (and b!5447244 (not c!950754)) b!5447252))

(assert (= (and b!5447251 (not res!2319588)) b!5447247))

(assert (= (and b!5447252 c!950757) b!5447248))

(assert (= (and b!5447252 (not c!950757)) b!5447249))

(assert (= (and b!5447248 (not res!2319586)) b!5447246))

(assert (= (or b!5447246 b!5447249) bm!393104))

(assert (= (or b!5447243 b!5447248) bm!393105))

(declare-fun m!6467202 () Bool)

(assert (=> bm!393104 m!6467202))

(declare-fun m!6467204 () Bool)

(assert (=> b!5447247 m!6467204))

(declare-fun m!6467206 () Bool)

(assert (=> b!5447251 m!6467206))

(assert (=> bm!393105 m!6466062))

(assert (=> b!5445985 d!1734050))

(declare-fun d!1734052 () Bool)

(assert (=> d!1734052 (= (matchR!7462 lt!2222302 s!2326) (matchRSpec!2380 lt!2222302 s!2326))))

(declare-fun lt!2222545 () Unit!154704)

(assert (=> d!1734052 (= lt!2222545 (choose!41333 lt!2222302 s!2326))))

(assert (=> d!1734052 (validRegex!7013 lt!2222302)))

(assert (=> d!1734052 (= (mainMatchTheorem!2380 lt!2222302 s!2326) lt!2222545)))

(declare-fun bs!1257025 () Bool)

(assert (= bs!1257025 d!1734052))

(declare-fun m!6467208 () Bool)

(assert (=> bs!1257025 m!6467208))

(assert (=> bs!1257025 m!6465498))

(declare-fun m!6467210 () Bool)

(assert (=> bs!1257025 m!6467210))

(declare-fun m!6467212 () Bool)

(assert (=> bs!1257025 m!6467212))

(assert (=> b!5445985 d!1734052))

(declare-fun d!1734054 () Bool)

(assert (=> d!1734054 (= (nullable!5446 (regOne!31067 (regOne!31066 r!7292))) (nullableFct!1631 (regOne!31067 (regOne!31066 r!7292))))))

(declare-fun bs!1257026 () Bool)

(assert (= bs!1257026 d!1734054))

(declare-fun m!6467214 () Bool)

(assert (=> bs!1257026 m!6467214))

(assert (=> b!5445985 d!1734054))

(declare-fun d!1734056 () Bool)

(declare-fun c!950758 () Bool)

(assert (=> d!1734056 (= c!950758 (isEmpty!33985 s!2326))))

(declare-fun e!3373930 () Bool)

(assert (=> d!1734056 (= (matchZipper!1521 lt!2222196 s!2326) e!3373930)))

(declare-fun b!5447253 () Bool)

(assert (=> b!5447253 (= e!3373930 (nullableZipper!1480 lt!2222196))))

(declare-fun b!5447254 () Bool)

(assert (=> b!5447254 (= e!3373930 (matchZipper!1521 (derivationStepZipper!1496 lt!2222196 (head!11677 s!2326)) (tail!10774 s!2326)))))

(assert (= (and d!1734056 c!950758) b!5447253))

(assert (= (and d!1734056 (not c!950758)) b!5447254))

(assert (=> d!1734056 m!6466062))

(declare-fun m!6467216 () Bool)

(assert (=> b!5447253 m!6467216))

(assert (=> b!5447254 m!6466066))

(assert (=> b!5447254 m!6466066))

(declare-fun m!6467218 () Bool)

(assert (=> b!5447254 m!6467218))

(assert (=> b!5447254 m!6466070))

(assert (=> b!5447254 m!6467218))

(assert (=> b!5447254 m!6466070))

(declare-fun m!6467220 () Bool)

(assert (=> b!5447254 m!6467220))

(assert (=> b!5445985 d!1734056))

(declare-fun b!5447255 () Bool)

(declare-fun e!3373933 () (InoxSet Context!9322))

(declare-fun e!3373932 () (InoxSet Context!9322))

(assert (=> b!5447255 (= e!3373933 e!3373932)))

(declare-fun c!950759 () Bool)

(assert (=> b!5447255 (= c!950759 ((_ is Cons!62007) (exprs!5161 (ite c!950410 lt!2222127 (ite c!950414 lt!2222157 (ite c!950411 lt!2222124 lt!2222248))))))))

(declare-fun b!5447256 () Bool)

(declare-fun call!393111 () (InoxSet Context!9322))

(assert (=> b!5447256 (= e!3373932 call!393111)))

(declare-fun b!5447258 () Bool)

(declare-fun e!3373931 () Bool)

(assert (=> b!5447258 (= e!3373931 (nullable!5446 (h!68455 (exprs!5161 (ite c!950410 lt!2222127 (ite c!950414 lt!2222157 (ite c!950411 lt!2222124 lt!2222248)))))))))

(declare-fun b!5447259 () Bool)

(assert (=> b!5447259 (= e!3373933 ((_ map or) call!393111 (derivationStepZipperUp!649 (Context!9323 (t!375358 (exprs!5161 (ite c!950410 lt!2222127 (ite c!950414 lt!2222157 (ite c!950411 lt!2222124 lt!2222248)))))) (h!68454 s!2326))))))

(declare-fun bm!393106 () Bool)

(assert (=> bm!393106 (= call!393111 (derivationStepZipperDown!725 (h!68455 (exprs!5161 (ite c!950410 lt!2222127 (ite c!950414 lt!2222157 (ite c!950411 lt!2222124 lt!2222248))))) (Context!9323 (t!375358 (exprs!5161 (ite c!950410 lt!2222127 (ite c!950414 lt!2222157 (ite c!950411 lt!2222124 lt!2222248)))))) (h!68454 s!2326)))))

(declare-fun b!5447257 () Bool)

(assert (=> b!5447257 (= e!3373932 ((as const (Array Context!9322 Bool)) false))))

(declare-fun d!1734058 () Bool)

(declare-fun c!950760 () Bool)

(assert (=> d!1734058 (= c!950760 e!3373931)))

(declare-fun res!2319589 () Bool)

(assert (=> d!1734058 (=> (not res!2319589) (not e!3373931))))

(assert (=> d!1734058 (= res!2319589 ((_ is Cons!62007) (exprs!5161 (ite c!950410 lt!2222127 (ite c!950414 lt!2222157 (ite c!950411 lt!2222124 lt!2222248))))))))

(assert (=> d!1734058 (= (derivationStepZipperUp!649 (ite c!950410 lt!2222127 (ite c!950414 lt!2222157 (ite c!950411 lt!2222124 lt!2222248))) (h!68454 s!2326)) e!3373933)))

(assert (= (and d!1734058 res!2319589) b!5447258))

(assert (= (and d!1734058 c!950760) b!5447259))

(assert (= (and d!1734058 (not c!950760)) b!5447255))

(assert (= (and b!5447255 c!950759) b!5447256))

(assert (= (and b!5447255 (not c!950759)) b!5447257))

(assert (= (or b!5447259 b!5447256) bm!393106))

(declare-fun m!6467222 () Bool)

(assert (=> b!5447258 m!6467222))

(declare-fun m!6467224 () Bool)

(assert (=> b!5447259 m!6467224))

(declare-fun m!6467226 () Bool)

(assert (=> bm!393106 m!6467226))

(assert (=> bm!392947 d!1734058))

(declare-fun bs!1257027 () Bool)

(declare-fun d!1734060 () Bool)

(assert (= bs!1257027 (and d!1734060 d!1733880)))

(declare-fun lambda!287313 () Int)

(assert (=> bs!1257027 (= lambda!287313 lambda!287279)))

(declare-fun bs!1257028 () Bool)

(assert (= bs!1257028 (and d!1734060 d!1733924)))

(assert (=> bs!1257028 (= lambda!287313 lambda!287288)))

(declare-fun bs!1257029 () Bool)

(assert (= bs!1257029 (and d!1734060 b!5446022)))

(assert (=> bs!1257029 (= lambda!287313 lambda!287205)))

(declare-fun bs!1257030 () Bool)

(assert (= bs!1257030 (and d!1734060 d!1734034)))

(assert (=> bs!1257030 (= lambda!287313 lambda!287306)))

(declare-fun bs!1257031 () Bool)

(assert (= bs!1257031 (and d!1734060 d!1733966)))

(assert (=> bs!1257031 (= lambda!287313 lambda!287298)))

(declare-fun bs!1257032 () Bool)

(assert (= bs!1257032 (and d!1734060 b!5446006)))

(assert (=> bs!1257032 (= lambda!287313 lambda!287196)))

(declare-fun bs!1257033 () Bool)

(assert (= bs!1257033 (and d!1734060 d!1734044)))

(assert (=> bs!1257033 (= lambda!287313 lambda!287310)))

(declare-fun bs!1257034 () Bool)

(assert (= bs!1257034 (and d!1734060 b!5445993)))

(assert (=> bs!1257034 (= lambda!287313 lambda!287194)))

(declare-fun bs!1257035 () Bool)

(assert (= bs!1257035 (and d!1734060 d!1734042)))

(assert (=> bs!1257035 (= lambda!287313 lambda!287307)))

(assert (=> d!1734060 (= (inv!81439 setElem!35641) (forall!14580 (exprs!5161 setElem!35641) lambda!287313))))

(declare-fun bs!1257036 () Bool)

(assert (= bs!1257036 d!1734060))

(declare-fun m!6467228 () Bool)

(assert (=> bs!1257036 m!6467228))

(assert (=> setNonEmpty!35641 d!1734060))

(declare-fun b!5447260 () Bool)

(declare-fun e!3373936 () (InoxSet Context!9322))

(declare-fun e!3373935 () (InoxSet Context!9322))

(assert (=> b!5447260 (= e!3373936 e!3373935)))

(declare-fun c!950761 () Bool)

(assert (=> b!5447260 (= c!950761 ((_ is Cons!62007) (exprs!5161 (ite c!950410 lt!2222297 lt!2222313))))))

(declare-fun b!5447261 () Bool)

(declare-fun call!393112 () (InoxSet Context!9322))

(assert (=> b!5447261 (= e!3373935 call!393112)))

(declare-fun e!3373934 () Bool)

(declare-fun b!5447263 () Bool)

(assert (=> b!5447263 (= e!3373934 (nullable!5446 (h!68455 (exprs!5161 (ite c!950410 lt!2222297 lt!2222313)))))))

(declare-fun b!5447264 () Bool)

(assert (=> b!5447264 (= e!3373936 ((_ map or) call!393112 (derivationStepZipperUp!649 (Context!9323 (t!375358 (exprs!5161 (ite c!950410 lt!2222297 lt!2222313)))) (h!68454 s!2326))))))

(declare-fun bm!393107 () Bool)

(assert (=> bm!393107 (= call!393112 (derivationStepZipperDown!725 (h!68455 (exprs!5161 (ite c!950410 lt!2222297 lt!2222313))) (Context!9323 (t!375358 (exprs!5161 (ite c!950410 lt!2222297 lt!2222313)))) (h!68454 s!2326)))))

(declare-fun b!5447262 () Bool)

(assert (=> b!5447262 (= e!3373935 ((as const (Array Context!9322 Bool)) false))))

(declare-fun d!1734062 () Bool)

(declare-fun c!950762 () Bool)

(assert (=> d!1734062 (= c!950762 e!3373934)))

(declare-fun res!2319590 () Bool)

(assert (=> d!1734062 (=> (not res!2319590) (not e!3373934))))

(assert (=> d!1734062 (= res!2319590 ((_ is Cons!62007) (exprs!5161 (ite c!950410 lt!2222297 lt!2222313))))))

(assert (=> d!1734062 (= (derivationStepZipperUp!649 (ite c!950410 lt!2222297 lt!2222313) (h!68454 s!2326)) e!3373936)))

(assert (= (and d!1734062 res!2319590) b!5447263))

(assert (= (and d!1734062 c!950762) b!5447264))

(assert (= (and d!1734062 (not c!950762)) b!5447260))

(assert (= (and b!5447260 c!950761) b!5447261))

(assert (= (and b!5447260 (not c!950761)) b!5447262))

(assert (= (or b!5447264 b!5447261) bm!393107))

(declare-fun m!6467230 () Bool)

(assert (=> b!5447263 m!6467230))

(declare-fun m!6467232 () Bool)

(assert (=> b!5447264 m!6467232))

(declare-fun m!6467234 () Bool)

(assert (=> bm!393107 m!6467234))

(assert (=> bm!392801 d!1734062))

(declare-fun b!5447266 () Bool)

(declare-fun e!3373937 () List!62130)

(assert (=> b!5447266 (= e!3373937 (Cons!62006 (h!68454 (ite c!950409 lt!2222215 (_1!35779 lt!2222305))) (++!13633 (t!375357 (ite c!950409 lt!2222215 (_1!35779 lt!2222305))) (ite c!950409 (_2!35779 lt!2222282) (_2!35779 lt!2222305)))))))

(declare-fun b!5447265 () Bool)

(assert (=> b!5447265 (= e!3373937 (ite c!950409 (_2!35779 lt!2222282) (_2!35779 lt!2222305)))))

(declare-fun b!5447268 () Bool)

(declare-fun e!3373938 () Bool)

(declare-fun lt!2222546 () List!62130)

(assert (=> b!5447268 (= e!3373938 (or (not (= (ite c!950409 (_2!35779 lt!2222282) (_2!35779 lt!2222305)) Nil!62006)) (= lt!2222546 (ite c!950409 lt!2222215 (_1!35779 lt!2222305)))))))

(declare-fun d!1734064 () Bool)

(assert (=> d!1734064 e!3373938))

(declare-fun res!2319592 () Bool)

(assert (=> d!1734064 (=> (not res!2319592) (not e!3373938))))

(assert (=> d!1734064 (= res!2319592 (= (content!11149 lt!2222546) ((_ map or) (content!11149 (ite c!950409 lt!2222215 (_1!35779 lt!2222305))) (content!11149 (ite c!950409 (_2!35779 lt!2222282) (_2!35779 lt!2222305))))))))

(assert (=> d!1734064 (= lt!2222546 e!3373937)))

(declare-fun c!950763 () Bool)

(assert (=> d!1734064 (= c!950763 ((_ is Nil!62006) (ite c!950409 lt!2222215 (_1!35779 lt!2222305))))))

(assert (=> d!1734064 (= (++!13633 (ite c!950409 lt!2222215 (_1!35779 lt!2222305)) (ite c!950409 (_2!35779 lt!2222282) (_2!35779 lt!2222305))) lt!2222546)))

(declare-fun b!5447267 () Bool)

(declare-fun res!2319591 () Bool)

(assert (=> b!5447267 (=> (not res!2319591) (not e!3373938))))

(assert (=> b!5447267 (= res!2319591 (= (size!39890 lt!2222546) (+ (size!39890 (ite c!950409 lt!2222215 (_1!35779 lt!2222305))) (size!39890 (ite c!950409 (_2!35779 lt!2222282) (_2!35779 lt!2222305))))))))

(assert (= (and d!1734064 c!950763) b!5447265))

(assert (= (and d!1734064 (not c!950763)) b!5447266))

(assert (= (and d!1734064 res!2319592) b!5447267))

(assert (= (and b!5447267 res!2319591) b!5447268))

(declare-fun m!6467236 () Bool)

(assert (=> b!5447266 m!6467236))

(declare-fun m!6467238 () Bool)

(assert (=> d!1734064 m!6467238))

(declare-fun m!6467240 () Bool)

(assert (=> d!1734064 m!6467240))

(declare-fun m!6467242 () Bool)

(assert (=> d!1734064 m!6467242))

(declare-fun m!6467244 () Bool)

(assert (=> b!5447267 m!6467244))

(declare-fun m!6467246 () Bool)

(assert (=> b!5447267 m!6467246))

(declare-fun m!6467248 () Bool)

(assert (=> b!5447267 m!6467248))

(assert (=> bm!392909 d!1734064))

(declare-fun d!1734066 () Bool)

(declare-fun c!950764 () Bool)

(assert (=> d!1734066 (= c!950764 (isEmpty!33985 (ite (or c!950413 c!950418) (t!375357 s!2326) (ite c!950410 s!2326 (ite c!950411 (ite c!950409 s!2326 (_2!35779 lt!2222305)) s!2326)))))))

(declare-fun e!3373939 () Bool)

(assert (=> d!1734066 (= (matchZipper!1521 (ite c!950413 lt!2222245 (ite c!950418 ((_ map or) lt!2222142 lt!2222289) (ite c!950410 lt!2222123 (ite c!950411 (ite c!950409 (ite c!950420 lt!2222132 z!1189) lt!2222119) z!1189)))) (ite (or c!950413 c!950418) (t!375357 s!2326) (ite c!950410 s!2326 (ite c!950411 (ite c!950409 s!2326 (_2!35779 lt!2222305)) s!2326)))) e!3373939)))

(declare-fun b!5447269 () Bool)

(assert (=> b!5447269 (= e!3373939 (nullableZipper!1480 (ite c!950413 lt!2222245 (ite c!950418 ((_ map or) lt!2222142 lt!2222289) (ite c!950410 lt!2222123 (ite c!950411 (ite c!950409 (ite c!950420 lt!2222132 z!1189) lt!2222119) z!1189))))))))

(declare-fun b!5447270 () Bool)

(assert (=> b!5447270 (= e!3373939 (matchZipper!1521 (derivationStepZipper!1496 (ite c!950413 lt!2222245 (ite c!950418 ((_ map or) lt!2222142 lt!2222289) (ite c!950410 lt!2222123 (ite c!950411 (ite c!950409 (ite c!950420 lt!2222132 z!1189) lt!2222119) z!1189)))) (head!11677 (ite (or c!950413 c!950418) (t!375357 s!2326) (ite c!950410 s!2326 (ite c!950411 (ite c!950409 s!2326 (_2!35779 lt!2222305)) s!2326))))) (tail!10774 (ite (or c!950413 c!950418) (t!375357 s!2326) (ite c!950410 s!2326 (ite c!950411 (ite c!950409 s!2326 (_2!35779 lt!2222305)) s!2326))))))))

(assert (= (and d!1734066 c!950764) b!5447269))

(assert (= (and d!1734066 (not c!950764)) b!5447270))

(declare-fun m!6467250 () Bool)

(assert (=> d!1734066 m!6467250))

(declare-fun m!6467252 () Bool)

(assert (=> b!5447269 m!6467252))

(declare-fun m!6467254 () Bool)

(assert (=> b!5447270 m!6467254))

(assert (=> b!5447270 m!6467254))

(declare-fun m!6467256 () Bool)

(assert (=> b!5447270 m!6467256))

(declare-fun m!6467258 () Bool)

(assert (=> b!5447270 m!6467258))

(assert (=> b!5447270 m!6467256))

(assert (=> b!5447270 m!6467258))

(declare-fun m!6467260 () Bool)

(assert (=> b!5447270 m!6467260))

(assert (=> bm!392812 d!1734066))

(declare-fun bs!1257037 () Bool)

(declare-fun d!1734068 () Bool)

(assert (= bs!1257037 (and d!1734068 d!1733880)))

(declare-fun lambda!287316 () Int)

(assert (=> bs!1257037 (= lambda!287316 lambda!287279)))

(declare-fun bs!1257038 () Bool)

(assert (= bs!1257038 (and d!1734068 d!1733924)))

(assert (=> bs!1257038 (= lambda!287316 lambda!287288)))

(declare-fun bs!1257039 () Bool)

(assert (= bs!1257039 (and d!1734068 b!5446022)))

(assert (=> bs!1257039 (= lambda!287316 lambda!287205)))

(declare-fun bs!1257040 () Bool)

(assert (= bs!1257040 (and d!1734068 d!1734034)))

(assert (=> bs!1257040 (= lambda!287316 lambda!287306)))

(declare-fun bs!1257041 () Bool)

(assert (= bs!1257041 (and d!1734068 d!1733966)))

(assert (=> bs!1257041 (= lambda!287316 lambda!287298)))

(declare-fun bs!1257042 () Bool)

(assert (= bs!1257042 (and d!1734068 b!5446006)))

(assert (=> bs!1257042 (= lambda!287316 lambda!287196)))

(declare-fun bs!1257043 () Bool)

(assert (= bs!1257043 (and d!1734068 d!1734060)))

(assert (=> bs!1257043 (= lambda!287316 lambda!287313)))

(declare-fun bs!1257044 () Bool)

(assert (= bs!1257044 (and d!1734068 d!1734044)))

(assert (=> bs!1257044 (= lambda!287316 lambda!287310)))

(declare-fun bs!1257045 () Bool)

(assert (= bs!1257045 (and d!1734068 b!5445993)))

(assert (=> bs!1257045 (= lambda!287316 lambda!287194)))

(declare-fun bs!1257046 () Bool)

(assert (= bs!1257046 (and d!1734068 d!1734042)))

(assert (=> bs!1257046 (= lambda!287316 lambda!287307)))

(declare-fun b!5447291 () Bool)

(declare-fun e!3373956 () Bool)

(declare-fun lt!2222549 () Regex!15277)

(declare-fun isEmptyLang!1021 (Regex!15277) Bool)

(assert (=> b!5447291 (= e!3373956 (isEmptyLang!1021 lt!2222549))))

(declare-fun e!3373952 () Bool)

(assert (=> d!1734068 e!3373952))

(declare-fun res!2319597 () Bool)

(assert (=> d!1734068 (=> (not res!2319597) (not e!3373952))))

(assert (=> d!1734068 (= res!2319597 (validRegex!7013 lt!2222549))))

(declare-fun e!3373953 () Regex!15277)

(assert (=> d!1734068 (= lt!2222549 e!3373953)))

(declare-fun c!950774 () Bool)

(declare-fun e!3373957 () Bool)

(assert (=> d!1734068 (= c!950774 e!3373957)))

(declare-fun res!2319598 () Bool)

(assert (=> d!1734068 (=> (not res!2319598) (not e!3373957))))

(assert (=> d!1734068 (= res!2319598 ((_ is Cons!62007) (unfocusZipperList!719 zl!343)))))

(assert (=> d!1734068 (forall!14580 (unfocusZipperList!719 zl!343) lambda!287316)))

(assert (=> d!1734068 (= (generalisedUnion!1206 (unfocusZipperList!719 zl!343)) lt!2222549)))

(declare-fun b!5447292 () Bool)

(assert (=> b!5447292 (= e!3373953 (h!68455 (unfocusZipperList!719 zl!343)))))

(declare-fun b!5447293 () Bool)

(declare-fun e!3373955 () Bool)

(assert (=> b!5447293 (= e!3373956 e!3373955)))

(declare-fun c!950776 () Bool)

(assert (=> b!5447293 (= c!950776 (isEmpty!33987 (tail!10775 (unfocusZipperList!719 zl!343))))))

(declare-fun b!5447294 () Bool)

(assert (=> b!5447294 (= e!3373955 (= lt!2222549 (head!11678 (unfocusZipperList!719 zl!343))))))

(declare-fun b!5447295 () Bool)

(declare-fun e!3373954 () Regex!15277)

(assert (=> b!5447295 (= e!3373954 EmptyLang!15277)))

(declare-fun b!5447296 () Bool)

(assert (=> b!5447296 (= e!3373957 (isEmpty!33987 (t!375358 (unfocusZipperList!719 zl!343))))))

(declare-fun b!5447297 () Bool)

(declare-fun isUnion!453 (Regex!15277) Bool)

(assert (=> b!5447297 (= e!3373955 (isUnion!453 lt!2222549))))

(declare-fun b!5447298 () Bool)

(assert (=> b!5447298 (= e!3373952 e!3373956)))

(declare-fun c!950773 () Bool)

(assert (=> b!5447298 (= c!950773 (isEmpty!33987 (unfocusZipperList!719 zl!343)))))

(declare-fun b!5447299 () Bool)

(assert (=> b!5447299 (= e!3373953 e!3373954)))

(declare-fun c!950775 () Bool)

(assert (=> b!5447299 (= c!950775 ((_ is Cons!62007) (unfocusZipperList!719 zl!343)))))

(declare-fun b!5447300 () Bool)

(assert (=> b!5447300 (= e!3373954 (Union!15277 (h!68455 (unfocusZipperList!719 zl!343)) (generalisedUnion!1206 (t!375358 (unfocusZipperList!719 zl!343)))))))

(assert (= (and d!1734068 res!2319598) b!5447296))

(assert (= (and d!1734068 c!950774) b!5447292))

(assert (= (and d!1734068 (not c!950774)) b!5447299))

(assert (= (and b!5447299 c!950775) b!5447300))

(assert (= (and b!5447299 (not c!950775)) b!5447295))

(assert (= (and d!1734068 res!2319597) b!5447298))

(assert (= (and b!5447298 c!950773) b!5447291))

(assert (= (and b!5447298 (not c!950773)) b!5447293))

(assert (= (and b!5447293 c!950776) b!5447294))

(assert (= (and b!5447293 (not c!950776)) b!5447297))

(assert (=> b!5447294 m!6465436))

(declare-fun m!6467262 () Bool)

(assert (=> b!5447294 m!6467262))

(assert (=> b!5447293 m!6465436))

(declare-fun m!6467264 () Bool)

(assert (=> b!5447293 m!6467264))

(assert (=> b!5447293 m!6467264))

(declare-fun m!6467266 () Bool)

(assert (=> b!5447293 m!6467266))

(declare-fun m!6467268 () Bool)

(assert (=> b!5447300 m!6467268))

(declare-fun m!6467270 () Bool)

(assert (=> b!5447291 m!6467270))

(declare-fun m!6467272 () Bool)

(assert (=> d!1734068 m!6467272))

(assert (=> d!1734068 m!6465436))

(declare-fun m!6467274 () Bool)

(assert (=> d!1734068 m!6467274))

(declare-fun m!6467276 () Bool)

(assert (=> b!5447296 m!6467276))

(assert (=> b!5447298 m!6465436))

(declare-fun m!6467278 () Bool)

(assert (=> b!5447298 m!6467278))

(declare-fun m!6467280 () Bool)

(assert (=> b!5447297 m!6467280))

(assert (=> b!5446037 d!1734068))

(declare-fun bs!1257047 () Bool)

(declare-fun d!1734070 () Bool)

(assert (= bs!1257047 (and d!1734070 d!1733880)))

(declare-fun lambda!287319 () Int)

(assert (=> bs!1257047 (= lambda!287319 lambda!287279)))

(declare-fun bs!1257048 () Bool)

(assert (= bs!1257048 (and d!1734070 d!1733924)))

(assert (=> bs!1257048 (= lambda!287319 lambda!287288)))

(declare-fun bs!1257049 () Bool)

(assert (= bs!1257049 (and d!1734070 b!5446022)))

(assert (=> bs!1257049 (= lambda!287319 lambda!287205)))

(declare-fun bs!1257050 () Bool)

(assert (= bs!1257050 (and d!1734070 d!1734034)))

(assert (=> bs!1257050 (= lambda!287319 lambda!287306)))

(declare-fun bs!1257051 () Bool)

(assert (= bs!1257051 (and d!1734070 d!1733966)))

(assert (=> bs!1257051 (= lambda!287319 lambda!287298)))

(declare-fun bs!1257052 () Bool)

(assert (= bs!1257052 (and d!1734070 b!5446006)))

(assert (=> bs!1257052 (= lambda!287319 lambda!287196)))

(declare-fun bs!1257053 () Bool)

(assert (= bs!1257053 (and d!1734070 d!1734068)))

(assert (=> bs!1257053 (= lambda!287319 lambda!287316)))

(declare-fun bs!1257054 () Bool)

(assert (= bs!1257054 (and d!1734070 d!1734060)))

(assert (=> bs!1257054 (= lambda!287319 lambda!287313)))

(declare-fun bs!1257055 () Bool)

(assert (= bs!1257055 (and d!1734070 d!1734044)))

(assert (=> bs!1257055 (= lambda!287319 lambda!287310)))

(declare-fun bs!1257056 () Bool)

(assert (= bs!1257056 (and d!1734070 b!5445993)))

(assert (=> bs!1257056 (= lambda!287319 lambda!287194)))

(declare-fun bs!1257057 () Bool)

(assert (= bs!1257057 (and d!1734070 d!1734042)))

(assert (=> bs!1257057 (= lambda!287319 lambda!287307)))

(declare-fun lt!2222552 () List!62131)

(assert (=> d!1734070 (forall!14580 lt!2222552 lambda!287319)))

(declare-fun e!3373960 () List!62131)

(assert (=> d!1734070 (= lt!2222552 e!3373960)))

(declare-fun c!950779 () Bool)

(assert (=> d!1734070 (= c!950779 ((_ is Cons!62008) zl!343))))

(assert (=> d!1734070 (= (unfocusZipperList!719 zl!343) lt!2222552)))

(declare-fun b!5447305 () Bool)

(assert (=> b!5447305 (= e!3373960 (Cons!62007 (generalisedConcat!946 (exprs!5161 (h!68456 zl!343))) (unfocusZipperList!719 (t!375359 zl!343))))))

(declare-fun b!5447306 () Bool)

(assert (=> b!5447306 (= e!3373960 Nil!62007)))

(assert (= (and d!1734070 c!950779) b!5447305))

(assert (= (and d!1734070 (not c!950779)) b!5447306))

(declare-fun m!6467282 () Bool)

(assert (=> d!1734070 m!6467282))

(assert (=> b!5447305 m!6465552))

(declare-fun m!6467284 () Bool)

(assert (=> b!5447305 m!6467284))

(assert (=> b!5446037 d!1734070))

(declare-fun b!5447307 () Bool)

(declare-fun res!2319599 () Bool)

(declare-fun e!3373963 () Bool)

(assert (=> b!5447307 (=> res!2319599 e!3373963)))

(assert (=> b!5447307 (= res!2319599 (not ((_ is ElementMatch!15277) (ite c!950418 lt!2222302 (ite c!950410 lt!2222146 (ite c!950414 lt!2222270 (ite c!950409 lt!2222247 (ite c!950415 lt!2222304 lt!2222292))))))))))

(declare-fun e!3373964 () Bool)

(assert (=> b!5447307 (= e!3373964 e!3373963)))

(declare-fun b!5447308 () Bool)

(declare-fun res!2319602 () Bool)

(declare-fun e!3373966 () Bool)

(assert (=> b!5447308 (=> (not res!2319602) (not e!3373966))))

(declare-fun call!393113 () Bool)

(assert (=> b!5447308 (= res!2319602 (not call!393113))))

(declare-fun b!5447309 () Bool)

(declare-fun e!3373967 () Bool)

(declare-fun e!3373961 () Bool)

(assert (=> b!5447309 (= e!3373967 e!3373961)))

(declare-fun res!2319601 () Bool)

(assert (=> b!5447309 (=> res!2319601 e!3373961)))

(assert (=> b!5447309 (= res!2319601 call!393113)))

(declare-fun b!5447310 () Bool)

(declare-fun res!2319606 () Bool)

(assert (=> b!5447310 (=> (not res!2319606) (not e!3373966))))

(assert (=> b!5447310 (= res!2319606 (isEmpty!33985 (tail!10774 (ite (or c!950418 c!950410 c!950414) s!2326 (ite c!950409 lt!2222215 (ite c!950415 (_2!35779 lt!2222305) s!2326))))))))

(declare-fun b!5447311 () Bool)

(declare-fun e!3373962 () Bool)

(assert (=> b!5447311 (= e!3373962 e!3373964)))

(declare-fun c!950782 () Bool)

(assert (=> b!5447311 (= c!950782 ((_ is EmptyLang!15277) (ite c!950418 lt!2222302 (ite c!950410 lt!2222146 (ite c!950414 lt!2222270 (ite c!950409 lt!2222247 (ite c!950415 lt!2222304 lt!2222292)))))))))

(declare-fun b!5447312 () Bool)

(assert (=> b!5447312 (= e!3373961 (not (= (head!11677 (ite (or c!950418 c!950410 c!950414) s!2326 (ite c!950409 lt!2222215 (ite c!950415 (_2!35779 lt!2222305) s!2326)))) (c!950421 (ite c!950418 lt!2222302 (ite c!950410 lt!2222146 (ite c!950414 lt!2222270 (ite c!950409 lt!2222247 (ite c!950415 lt!2222304 lt!2222292)))))))))))

(declare-fun b!5447313 () Bool)

(declare-fun e!3373965 () Bool)

(assert (=> b!5447313 (= e!3373965 (matchR!7462 (derivativeStep!4301 (ite c!950418 lt!2222302 (ite c!950410 lt!2222146 (ite c!950414 lt!2222270 (ite c!950409 lt!2222247 (ite c!950415 lt!2222304 lt!2222292))))) (head!11677 (ite (or c!950418 c!950410 c!950414) s!2326 (ite c!950409 lt!2222215 (ite c!950415 (_2!35779 lt!2222305) s!2326))))) (tail!10774 (ite (or c!950418 c!950410 c!950414) s!2326 (ite c!950409 lt!2222215 (ite c!950415 (_2!35779 lt!2222305) s!2326))))))))

(declare-fun b!5447314 () Bool)

(declare-fun res!2319600 () Bool)

(assert (=> b!5447314 (=> res!2319600 e!3373961)))

(assert (=> b!5447314 (= res!2319600 (not (isEmpty!33985 (tail!10774 (ite (or c!950418 c!950410 c!950414) s!2326 (ite c!950409 lt!2222215 (ite c!950415 (_2!35779 lt!2222305) s!2326)))))))))

(declare-fun b!5447316 () Bool)

(declare-fun lt!2222553 () Bool)

(assert (=> b!5447316 (= e!3373964 (not lt!2222553))))

(declare-fun bm!393108 () Bool)

(assert (=> bm!393108 (= call!393113 (isEmpty!33985 (ite (or c!950418 c!950410 c!950414) s!2326 (ite c!950409 lt!2222215 (ite c!950415 (_2!35779 lt!2222305) s!2326)))))))

(declare-fun b!5447317 () Bool)

(assert (=> b!5447317 (= e!3373966 (= (head!11677 (ite (or c!950418 c!950410 c!950414) s!2326 (ite c!950409 lt!2222215 (ite c!950415 (_2!35779 lt!2222305) s!2326)))) (c!950421 (ite c!950418 lt!2222302 (ite c!950410 lt!2222146 (ite c!950414 lt!2222270 (ite c!950409 lt!2222247 (ite c!950415 lt!2222304 lt!2222292))))))))))

(declare-fun b!5447318 () Bool)

(assert (=> b!5447318 (= e!3373963 e!3373967)))

(declare-fun res!2319605 () Bool)

(assert (=> b!5447318 (=> (not res!2319605) (not e!3373967))))

(assert (=> b!5447318 (= res!2319605 (not lt!2222553))))

(declare-fun b!5447319 () Bool)

(declare-fun res!2319603 () Bool)

(assert (=> b!5447319 (=> res!2319603 e!3373963)))

(assert (=> b!5447319 (= res!2319603 e!3373966)))

(declare-fun res!2319604 () Bool)

(assert (=> b!5447319 (=> (not res!2319604) (not e!3373966))))

(assert (=> b!5447319 (= res!2319604 lt!2222553)))

(declare-fun b!5447320 () Bool)

(assert (=> b!5447320 (= e!3373965 (nullable!5446 (ite c!950418 lt!2222302 (ite c!950410 lt!2222146 (ite c!950414 lt!2222270 (ite c!950409 lt!2222247 (ite c!950415 lt!2222304 lt!2222292)))))))))

(declare-fun b!5447315 () Bool)

(assert (=> b!5447315 (= e!3373962 (= lt!2222553 call!393113))))

(declare-fun d!1734072 () Bool)

(assert (=> d!1734072 e!3373962))

(declare-fun c!950781 () Bool)

(assert (=> d!1734072 (= c!950781 ((_ is EmptyExpr!15277) (ite c!950418 lt!2222302 (ite c!950410 lt!2222146 (ite c!950414 lt!2222270 (ite c!950409 lt!2222247 (ite c!950415 lt!2222304 lt!2222292)))))))))

(assert (=> d!1734072 (= lt!2222553 e!3373965)))

(declare-fun c!950780 () Bool)

(assert (=> d!1734072 (= c!950780 (isEmpty!33985 (ite (or c!950418 c!950410 c!950414) s!2326 (ite c!950409 lt!2222215 (ite c!950415 (_2!35779 lt!2222305) s!2326)))))))

(assert (=> d!1734072 (validRegex!7013 (ite c!950418 lt!2222302 (ite c!950410 lt!2222146 (ite c!950414 lt!2222270 (ite c!950409 lt!2222247 (ite c!950415 lt!2222304 lt!2222292))))))))

(assert (=> d!1734072 (= (matchR!7462 (ite c!950418 lt!2222302 (ite c!950410 lt!2222146 (ite c!950414 lt!2222270 (ite c!950409 lt!2222247 (ite c!950415 lt!2222304 lt!2222292))))) (ite (or c!950418 c!950410 c!950414) s!2326 (ite c!950409 lt!2222215 (ite c!950415 (_2!35779 lt!2222305) s!2326)))) lt!2222553)))

(assert (= (and d!1734072 c!950780) b!5447320))

(assert (= (and d!1734072 (not c!950780)) b!5447313))

(assert (= (and d!1734072 c!950781) b!5447315))

(assert (= (and d!1734072 (not c!950781)) b!5447311))

(assert (= (and b!5447311 c!950782) b!5447316))

(assert (= (and b!5447311 (not c!950782)) b!5447307))

(assert (= (and b!5447307 (not res!2319599)) b!5447319))

(assert (= (and b!5447319 res!2319604) b!5447308))

(assert (= (and b!5447308 res!2319602) b!5447310))

(assert (= (and b!5447310 res!2319606) b!5447317))

(assert (= (and b!5447319 (not res!2319603)) b!5447318))

(assert (= (and b!5447318 res!2319605) b!5447309))

(assert (= (and b!5447309 (not res!2319601)) b!5447314))

(assert (= (and b!5447314 (not res!2319600)) b!5447312))

(assert (= (or b!5447315 b!5447308 b!5447309) bm!393108))

(declare-fun m!6467286 () Bool)

(assert (=> d!1734072 m!6467286))

(declare-fun m!6467288 () Bool)

(assert (=> d!1734072 m!6467288))

(declare-fun m!6467290 () Bool)

(assert (=> b!5447312 m!6467290))

(assert (=> b!5447313 m!6467290))

(assert (=> b!5447313 m!6467290))

(declare-fun m!6467292 () Bool)

(assert (=> b!5447313 m!6467292))

(declare-fun m!6467294 () Bool)

(assert (=> b!5447313 m!6467294))

(assert (=> b!5447313 m!6467292))

(assert (=> b!5447313 m!6467294))

(declare-fun m!6467296 () Bool)

(assert (=> b!5447313 m!6467296))

(declare-fun m!6467298 () Bool)

(assert (=> b!5447320 m!6467298))

(assert (=> b!5447314 m!6467294))

(assert (=> b!5447314 m!6467294))

(declare-fun m!6467300 () Bool)

(assert (=> b!5447314 m!6467300))

(assert (=> b!5447317 m!6467290))

(assert (=> b!5447310 m!6467294))

(assert (=> b!5447310 m!6467294))

(assert (=> b!5447310 m!6467300))

(assert (=> bm!393108 m!6467286))

(assert (=> bm!392956 d!1734072))

(declare-fun e!3373968 () List!62130)

(declare-fun b!5447322 () Bool)

(assert (=> b!5447322 (= e!3373968 (Cons!62006 (h!68454 (ite c!950409 (_1!35779 lt!2222226) (_1!35779 lt!2222200))) (++!13633 (t!375357 (ite c!950409 (_1!35779 lt!2222226) (_1!35779 lt!2222200))) (ite c!950409 lt!2222286 (_2!35779 lt!2222200)))))))

(declare-fun b!5447321 () Bool)

(assert (=> b!5447321 (= e!3373968 (ite c!950409 lt!2222286 (_2!35779 lt!2222200)))))

(declare-fun b!5447324 () Bool)

(declare-fun e!3373969 () Bool)

(declare-fun lt!2222554 () List!62130)

(assert (=> b!5447324 (= e!3373969 (or (not (= (ite c!950409 lt!2222286 (_2!35779 lt!2222200)) Nil!62006)) (= lt!2222554 (ite c!950409 (_1!35779 lt!2222226) (_1!35779 lt!2222200)))))))

(declare-fun d!1734074 () Bool)

(assert (=> d!1734074 e!3373969))

(declare-fun res!2319608 () Bool)

(assert (=> d!1734074 (=> (not res!2319608) (not e!3373969))))

(assert (=> d!1734074 (= res!2319608 (= (content!11149 lt!2222554) ((_ map or) (content!11149 (ite c!950409 (_1!35779 lt!2222226) (_1!35779 lt!2222200))) (content!11149 (ite c!950409 lt!2222286 (_2!35779 lt!2222200))))))))

(assert (=> d!1734074 (= lt!2222554 e!3373968)))

(declare-fun c!950783 () Bool)

(assert (=> d!1734074 (= c!950783 ((_ is Nil!62006) (ite c!950409 (_1!35779 lt!2222226) (_1!35779 lt!2222200))))))

(assert (=> d!1734074 (= (++!13633 (ite c!950409 (_1!35779 lt!2222226) (_1!35779 lt!2222200)) (ite c!950409 lt!2222286 (_2!35779 lt!2222200))) lt!2222554)))

(declare-fun b!5447323 () Bool)

(declare-fun res!2319607 () Bool)

(assert (=> b!5447323 (=> (not res!2319607) (not e!3373969))))

(assert (=> b!5447323 (= res!2319607 (= (size!39890 lt!2222554) (+ (size!39890 (ite c!950409 (_1!35779 lt!2222226) (_1!35779 lt!2222200))) (size!39890 (ite c!950409 lt!2222286 (_2!35779 lt!2222200))))))))

(assert (= (and d!1734074 c!950783) b!5447321))

(assert (= (and d!1734074 (not c!950783)) b!5447322))

(assert (= (and d!1734074 res!2319608) b!5447323))

(assert (= (and b!5447323 res!2319607) b!5447324))

(declare-fun m!6467302 () Bool)

(assert (=> b!5447322 m!6467302))

(declare-fun m!6467304 () Bool)

(assert (=> d!1734074 m!6467304))

(declare-fun m!6467306 () Bool)

(assert (=> d!1734074 m!6467306))

(declare-fun m!6467308 () Bool)

(assert (=> d!1734074 m!6467308))

(declare-fun m!6467310 () Bool)

(assert (=> b!5447323 m!6467310))

(declare-fun m!6467312 () Bool)

(assert (=> b!5447323 m!6467312))

(declare-fun m!6467314 () Bool)

(assert (=> b!5447323 m!6467314))

(assert (=> bm!392862 d!1734074))

(declare-fun d!1734076 () Bool)

(declare-fun dynLambda!24393 (Int Context!9322) Context!9322)

(assert (=> d!1734076 (= (map!14242 lt!2222169 lambda!287195) (store ((as const (Array Context!9322 Bool)) false) (dynLambda!24393 lambda!287195 lt!2222124) true))))

(declare-fun lt!2222557 () Unit!154704)

(declare-fun choose!41348 ((InoxSet Context!9322) Context!9322 Int) Unit!154704)

(assert (=> d!1734076 (= lt!2222557 (choose!41348 lt!2222169 lt!2222124 lambda!287195))))

(assert (=> d!1734076 (= lt!2222169 (store ((as const (Array Context!9322 Bool)) false) lt!2222124 true))))

(assert (=> d!1734076 (= (lemmaMapOnSingletonSet!78 lt!2222169 lt!2222124 lambda!287195) lt!2222557)))

(declare-fun b_lambda!207525 () Bool)

(assert (=> (not b_lambda!207525) (not d!1734076)))

(declare-fun bs!1257058 () Bool)

(assert (= bs!1257058 d!1734076))

(declare-fun m!6467316 () Bool)

(assert (=> bs!1257058 m!6467316))

(assert (=> bs!1257058 m!6465516))

(assert (=> bs!1257058 m!6465398))

(declare-fun m!6467318 () Bool)

(assert (=> bs!1257058 m!6467318))

(assert (=> bs!1257058 m!6467316))

(declare-fun m!6467320 () Bool)

(assert (=> bs!1257058 m!6467320))

(assert (=> b!5446006 d!1734076))

(declare-fun d!1734078 () Bool)

(declare-fun choose!41349 ((InoxSet Context!9322) Int) (InoxSet Context!9322))

(assert (=> d!1734078 (= (map!14242 lt!2222169 lambda!287195) (choose!41349 lt!2222169 lambda!287195))))

(declare-fun bs!1257059 () Bool)

(assert (= bs!1257059 d!1734078))

(declare-fun m!6467322 () Bool)

(assert (=> bs!1257059 m!6467322))

(assert (=> b!5446006 d!1734078))

(declare-fun b!5447325 () Bool)

(declare-fun res!2319609 () Bool)

(declare-fun e!3373972 () Bool)

(assert (=> b!5447325 (=> res!2319609 e!3373972)))

(assert (=> b!5447325 (= res!2319609 (not ((_ is ElementMatch!15277) (reg!15606 (regOne!31066 r!7292)))))))

(declare-fun e!3373973 () Bool)

(assert (=> b!5447325 (= e!3373973 e!3373972)))

(declare-fun b!5447326 () Bool)

(declare-fun res!2319612 () Bool)

(declare-fun e!3373975 () Bool)

(assert (=> b!5447326 (=> (not res!2319612) (not e!3373975))))

(declare-fun call!393114 () Bool)

(assert (=> b!5447326 (= res!2319612 (not call!393114))))

(declare-fun b!5447327 () Bool)

(declare-fun e!3373976 () Bool)

(declare-fun e!3373970 () Bool)

(assert (=> b!5447327 (= e!3373976 e!3373970)))

(declare-fun res!2319611 () Bool)

(assert (=> b!5447327 (=> res!2319611 e!3373970)))

(assert (=> b!5447327 (= res!2319611 call!393114)))

(declare-fun b!5447328 () Bool)

(declare-fun res!2319616 () Bool)

(assert (=> b!5447328 (=> (not res!2319616) (not e!3373975))))

(assert (=> b!5447328 (= res!2319616 (isEmpty!33985 (tail!10774 (_1!35779 lt!2222305))))))

(declare-fun b!5447329 () Bool)

(declare-fun e!3373971 () Bool)

(assert (=> b!5447329 (= e!3373971 e!3373973)))

(declare-fun c!950786 () Bool)

(assert (=> b!5447329 (= c!950786 ((_ is EmptyLang!15277) (reg!15606 (regOne!31066 r!7292))))))

(declare-fun b!5447330 () Bool)

(assert (=> b!5447330 (= e!3373970 (not (= (head!11677 (_1!35779 lt!2222305)) (c!950421 (reg!15606 (regOne!31066 r!7292))))))))

(declare-fun b!5447331 () Bool)

(declare-fun e!3373974 () Bool)

(assert (=> b!5447331 (= e!3373974 (matchR!7462 (derivativeStep!4301 (reg!15606 (regOne!31066 r!7292)) (head!11677 (_1!35779 lt!2222305))) (tail!10774 (_1!35779 lt!2222305))))))

(declare-fun b!5447332 () Bool)

(declare-fun res!2319610 () Bool)

(assert (=> b!5447332 (=> res!2319610 e!3373970)))

(assert (=> b!5447332 (= res!2319610 (not (isEmpty!33985 (tail!10774 (_1!35779 lt!2222305)))))))

(declare-fun b!5447334 () Bool)

(declare-fun lt!2222558 () Bool)

(assert (=> b!5447334 (= e!3373973 (not lt!2222558))))

(declare-fun bm!393109 () Bool)

(assert (=> bm!393109 (= call!393114 (isEmpty!33985 (_1!35779 lt!2222305)))))

(declare-fun b!5447335 () Bool)

(assert (=> b!5447335 (= e!3373975 (= (head!11677 (_1!35779 lt!2222305)) (c!950421 (reg!15606 (regOne!31066 r!7292)))))))

(declare-fun b!5447336 () Bool)

(assert (=> b!5447336 (= e!3373972 e!3373976)))

(declare-fun res!2319615 () Bool)

(assert (=> b!5447336 (=> (not res!2319615) (not e!3373976))))

(assert (=> b!5447336 (= res!2319615 (not lt!2222558))))

(declare-fun b!5447337 () Bool)

(declare-fun res!2319613 () Bool)

(assert (=> b!5447337 (=> res!2319613 e!3373972)))

(assert (=> b!5447337 (= res!2319613 e!3373975)))

(declare-fun res!2319614 () Bool)

(assert (=> b!5447337 (=> (not res!2319614) (not e!3373975))))

(assert (=> b!5447337 (= res!2319614 lt!2222558)))

(declare-fun b!5447338 () Bool)

(assert (=> b!5447338 (= e!3373974 (nullable!5446 (reg!15606 (regOne!31066 r!7292))))))

(declare-fun b!5447333 () Bool)

(assert (=> b!5447333 (= e!3373971 (= lt!2222558 call!393114))))

(declare-fun d!1734080 () Bool)

(assert (=> d!1734080 e!3373971))

(declare-fun c!950785 () Bool)

(assert (=> d!1734080 (= c!950785 ((_ is EmptyExpr!15277) (reg!15606 (regOne!31066 r!7292))))))

(assert (=> d!1734080 (= lt!2222558 e!3373974)))

(declare-fun c!950784 () Bool)

(assert (=> d!1734080 (= c!950784 (isEmpty!33985 (_1!35779 lt!2222305)))))

(assert (=> d!1734080 (validRegex!7013 (reg!15606 (regOne!31066 r!7292)))))

(assert (=> d!1734080 (= (matchR!7462 (reg!15606 (regOne!31066 r!7292)) (_1!35779 lt!2222305)) lt!2222558)))

(assert (= (and d!1734080 c!950784) b!5447338))

(assert (= (and d!1734080 (not c!950784)) b!5447331))

(assert (= (and d!1734080 c!950785) b!5447333))

(assert (= (and d!1734080 (not c!950785)) b!5447329))

(assert (= (and b!5447329 c!950786) b!5447334))

(assert (= (and b!5447329 (not c!950786)) b!5447325))

(assert (= (and b!5447325 (not res!2319609)) b!5447337))

(assert (= (and b!5447337 res!2319614) b!5447326))

(assert (= (and b!5447326 res!2319612) b!5447328))

(assert (= (and b!5447328 res!2319616) b!5447335))

(assert (= (and b!5447337 (not res!2319613)) b!5447336))

(assert (= (and b!5447336 res!2319615) b!5447327))

(assert (= (and b!5447327 (not res!2319611)) b!5447332))

(assert (= (and b!5447332 (not res!2319610)) b!5447330))

(assert (= (or b!5447333 b!5447326 b!5447327) bm!393109))

(declare-fun m!6467324 () Bool)

(assert (=> d!1734080 m!6467324))

(assert (=> d!1734080 m!6466106))

(declare-fun m!6467326 () Bool)

(assert (=> b!5447330 m!6467326))

(assert (=> b!5447331 m!6467326))

(assert (=> b!5447331 m!6467326))

(declare-fun m!6467328 () Bool)

(assert (=> b!5447331 m!6467328))

(declare-fun m!6467330 () Bool)

(assert (=> b!5447331 m!6467330))

(assert (=> b!5447331 m!6467328))

(assert (=> b!5447331 m!6467330))

(declare-fun m!6467332 () Bool)

(assert (=> b!5447331 m!6467332))

(declare-fun m!6467334 () Bool)

(assert (=> b!5447338 m!6467334))

(assert (=> b!5447332 m!6467330))

(assert (=> b!5447332 m!6467330))

(declare-fun m!6467336 () Bool)

(assert (=> b!5447332 m!6467336))

(assert (=> b!5447335 m!6467326))

(assert (=> b!5447328 m!6467330))

(assert (=> b!5447328 m!6467330))

(assert (=> b!5447328 m!6467336))

(assert (=> bm!393109 m!6467324))

(assert (=> b!5446006 d!1734080))

(declare-fun d!1734082 () Bool)

(assert (=> d!1734082 (= (get!21380 lt!2222296) (v!51416 lt!2222296))))

(assert (=> b!5446006 d!1734082))

(declare-fun d!1734084 () Bool)

(assert (=> d!1734084 (isDefined!12091 (findConcatSeparationZippers!76 lt!2222169 (store ((as const (Array Context!9322 Bool)) false) lt!2222313 true) Nil!62006 s!2326 s!2326))))

(declare-fun lt!2222561 () Unit!154704)

(declare-fun choose!41351 ((InoxSet Context!9322) Context!9322 List!62130) Unit!154704)

(assert (=> d!1734084 (= lt!2222561 (choose!41351 lt!2222169 lt!2222313 s!2326))))

(declare-fun appendTo!72 ((InoxSet Context!9322) Context!9322) (InoxSet Context!9322))

(assert (=> d!1734084 (matchZipper!1521 (appendTo!72 lt!2222169 lt!2222313) s!2326)))

(assert (=> d!1734084 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!76 lt!2222169 lt!2222313 s!2326) lt!2222561)))

(declare-fun bs!1257060 () Bool)

(assert (= bs!1257060 d!1734084))

(declare-fun m!6467338 () Bool)

(assert (=> bs!1257060 m!6467338))

(declare-fun m!6467340 () Bool)

(assert (=> bs!1257060 m!6467340))

(assert (=> bs!1257060 m!6465402))

(assert (=> bs!1257060 m!6467338))

(assert (=> bs!1257060 m!6465402))

(declare-fun m!6467342 () Bool)

(assert (=> bs!1257060 m!6467342))

(declare-fun m!6467344 () Bool)

(assert (=> bs!1257060 m!6467344))

(declare-fun m!6467346 () Bool)

(assert (=> bs!1257060 m!6467346))

(assert (=> bs!1257060 m!6467342))

(assert (=> b!5446006 d!1734084))

(declare-fun b!5447357 () Bool)

(declare-fun e!3373987 () Option!15388)

(assert (=> b!5447357 (= e!3373987 None!15387)))

(declare-fun b!5447358 () Bool)

(declare-fun e!3373989 () Bool)

(declare-fun lt!2222569 () Option!15388)

(assert (=> b!5447358 (= e!3373989 (not (isDefined!12091 lt!2222569)))))

(declare-fun b!5447359 () Bool)

(declare-fun e!3373990 () Bool)

(assert (=> b!5447359 (= e!3373990 (matchZipper!1521 lt!2222119 s!2326))))

(declare-fun b!5447360 () Bool)

(declare-fun e!3373991 () Bool)

(assert (=> b!5447360 (= e!3373991 (= (++!13633 (_1!35779 (get!21380 lt!2222569)) (_2!35779 (get!21380 lt!2222569))) s!2326))))

(declare-fun d!1734086 () Bool)

(assert (=> d!1734086 e!3373989))

(declare-fun res!2319627 () Bool)

(assert (=> d!1734086 (=> res!2319627 e!3373989)))

(assert (=> d!1734086 (= res!2319627 e!3373991)))

(declare-fun res!2319630 () Bool)

(assert (=> d!1734086 (=> (not res!2319630) (not e!3373991))))

(assert (=> d!1734086 (= res!2319630 (isDefined!12091 lt!2222569))))

(declare-fun e!3373988 () Option!15388)

(assert (=> d!1734086 (= lt!2222569 e!3373988)))

(declare-fun c!950791 () Bool)

(assert (=> d!1734086 (= c!950791 e!3373990)))

(declare-fun res!2319629 () Bool)

(assert (=> d!1734086 (=> (not res!2319629) (not e!3373990))))

(assert (=> d!1734086 (= res!2319629 (matchZipper!1521 lt!2222169 Nil!62006))))

(assert (=> d!1734086 (= (++!13633 Nil!62006 s!2326) s!2326)))

(assert (=> d!1734086 (= (findConcatSeparationZippers!76 lt!2222169 lt!2222119 Nil!62006 s!2326 s!2326) lt!2222569)))

(declare-fun b!5447361 () Bool)

(assert (=> b!5447361 (= e!3373988 (Some!15387 (tuple2!64953 Nil!62006 s!2326)))))

(declare-fun b!5447362 () Bool)

(declare-fun lt!2222568 () Unit!154704)

(declare-fun lt!2222570 () Unit!154704)

(assert (=> b!5447362 (= lt!2222568 lt!2222570)))

(assert (=> b!5447362 (= (++!13633 (++!13633 Nil!62006 (Cons!62006 (h!68454 s!2326) Nil!62006)) (t!375357 s!2326)) s!2326)))

(assert (=> b!5447362 (= lt!2222570 (lemmaMoveElementToOtherListKeepsConcatEq!1875 Nil!62006 (h!68454 s!2326) (t!375357 s!2326) s!2326))))

(assert (=> b!5447362 (= e!3373987 (findConcatSeparationZippers!76 lt!2222169 lt!2222119 (++!13633 Nil!62006 (Cons!62006 (h!68454 s!2326) Nil!62006)) (t!375357 s!2326) s!2326))))

(declare-fun b!5447363 () Bool)

(declare-fun res!2319628 () Bool)

(assert (=> b!5447363 (=> (not res!2319628) (not e!3373991))))

(assert (=> b!5447363 (= res!2319628 (matchZipper!1521 lt!2222169 (_1!35779 (get!21380 lt!2222569))))))

(declare-fun b!5447364 () Bool)

(declare-fun res!2319631 () Bool)

(assert (=> b!5447364 (=> (not res!2319631) (not e!3373991))))

(assert (=> b!5447364 (= res!2319631 (matchZipper!1521 lt!2222119 (_2!35779 (get!21380 lt!2222569))))))

(declare-fun b!5447365 () Bool)

(assert (=> b!5447365 (= e!3373988 e!3373987)))

(declare-fun c!950792 () Bool)

(assert (=> b!5447365 (= c!950792 ((_ is Nil!62006) s!2326))))

(assert (= (and d!1734086 res!2319629) b!5447359))

(assert (= (and d!1734086 c!950791) b!5447361))

(assert (= (and d!1734086 (not c!950791)) b!5447365))

(assert (= (and b!5447365 c!950792) b!5447357))

(assert (= (and b!5447365 (not c!950792)) b!5447362))

(assert (= (and d!1734086 res!2319630) b!5447363))

(assert (= (and b!5447363 res!2319628) b!5447364))

(assert (= (and b!5447364 res!2319631) b!5447360))

(assert (= (and d!1734086 (not res!2319627)) b!5447358))

(declare-fun m!6467348 () Bool)

(assert (=> b!5447360 m!6467348))

(declare-fun m!6467350 () Bool)

(assert (=> b!5447360 m!6467350))

(declare-fun m!6467352 () Bool)

(assert (=> b!5447358 m!6467352))

(assert (=> b!5447364 m!6467348))

(declare-fun m!6467354 () Bool)

(assert (=> b!5447364 m!6467354))

(assert (=> b!5447362 m!6466830))

(assert (=> b!5447362 m!6466830))

(assert (=> b!5447362 m!6466832))

(assert (=> b!5447362 m!6466834))

(assert (=> b!5447362 m!6466830))

(declare-fun m!6467356 () Bool)

(assert (=> b!5447362 m!6467356))

(declare-fun m!6467358 () Bool)

(assert (=> b!5447359 m!6467358))

(assert (=> d!1734086 m!6467352))

(declare-fun m!6467360 () Bool)

(assert (=> d!1734086 m!6467360))

(declare-fun m!6467362 () Bool)

(assert (=> d!1734086 m!6467362))

(assert (=> b!5447363 m!6467348))

(declare-fun m!6467364 () Bool)

(assert (=> b!5447363 m!6467364))

(assert (=> b!5446006 d!1734086))

(declare-fun b!5447367 () Bool)

(declare-fun e!3373992 () List!62130)

(assert (=> b!5447367 (= e!3373992 (Cons!62006 (h!68454 lt!2222152) (++!13633 (t!375357 lt!2222152) (_2!35779 lt!2222148))))))

(declare-fun b!5447366 () Bool)

(assert (=> b!5447366 (= e!3373992 (_2!35779 lt!2222148))))

(declare-fun lt!2222571 () List!62130)

(declare-fun e!3373993 () Bool)

(declare-fun b!5447369 () Bool)

(assert (=> b!5447369 (= e!3373993 (or (not (= (_2!35779 lt!2222148) Nil!62006)) (= lt!2222571 lt!2222152)))))

(declare-fun d!1734088 () Bool)

(assert (=> d!1734088 e!3373993))

(declare-fun res!2319633 () Bool)

(assert (=> d!1734088 (=> (not res!2319633) (not e!3373993))))

(assert (=> d!1734088 (= res!2319633 (= (content!11149 lt!2222571) ((_ map or) (content!11149 lt!2222152) (content!11149 (_2!35779 lt!2222148)))))))

(assert (=> d!1734088 (= lt!2222571 e!3373992)))

(declare-fun c!950793 () Bool)

(assert (=> d!1734088 (= c!950793 ((_ is Nil!62006) lt!2222152))))

(assert (=> d!1734088 (= (++!13633 lt!2222152 (_2!35779 lt!2222148)) lt!2222571)))

(declare-fun b!5447368 () Bool)

(declare-fun res!2319632 () Bool)

(assert (=> b!5447368 (=> (not res!2319632) (not e!3373993))))

(assert (=> b!5447368 (= res!2319632 (= (size!39890 lt!2222571) (+ (size!39890 lt!2222152) (size!39890 (_2!35779 lt!2222148)))))))

(assert (= (and d!1734088 c!950793) b!5447366))

(assert (= (and d!1734088 (not c!950793)) b!5447367))

(assert (= (and d!1734088 res!2319633) b!5447368))

(assert (= (and b!5447368 res!2319632) b!5447369))

(declare-fun m!6467366 () Bool)

(assert (=> b!5447367 m!6467366))

(declare-fun m!6467368 () Bool)

(assert (=> d!1734088 m!6467368))

(declare-fun m!6467370 () Bool)

(assert (=> d!1734088 m!6467370))

(declare-fun m!6467372 () Bool)

(assert (=> d!1734088 m!6467372))

(declare-fun m!6467374 () Bool)

(assert (=> b!5447368 m!6467374))

(declare-fun m!6467376 () Bool)

(assert (=> b!5447368 m!6467376))

(declare-fun m!6467378 () Bool)

(assert (=> b!5447368 m!6467378))

(assert (=> b!5446006 d!1734088))

(declare-fun d!1734090 () Bool)

(declare-fun lt!2222574 () Regex!15277)

(assert (=> d!1734090 (validRegex!7013 lt!2222574)))

(assert (=> d!1734090 (= lt!2222574 (generalisedUnion!1206 (unfocusZipperList!719 zl!343)))))

(assert (=> d!1734090 (= (unfocusZipper!1019 zl!343) lt!2222574)))

(declare-fun bs!1257061 () Bool)

(assert (= bs!1257061 d!1734090))

(declare-fun m!6467380 () Bool)

(assert (=> bs!1257061 m!6467380))

(assert (=> bs!1257061 m!6465436))

(assert (=> bs!1257061 m!6465436))

(assert (=> bs!1257061 m!6465438))

(assert (=> b!5446023 d!1734090))

(declare-fun d!1734092 () Bool)

(assert (=> d!1734092 (= (matchR!7462 (Concat!24122 (Concat!24122 (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) lt!2222247)) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292)))) s!2326) (matchR!7462 (Concat!24122 (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (Concat!24122 (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) lt!2222247) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))))) s!2326))))

(declare-fun lt!2222577 () Unit!154704)

(declare-fun choose!41353 (Regex!15277 Regex!15277 Regex!15277 List!62130) Unit!154704)

(assert (=> d!1734092 (= lt!2222577 (choose!41353 (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) lt!2222247) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))) s!2326))))

(declare-fun e!3373996 () Bool)

(assert (=> d!1734092 e!3373996))

(declare-fun res!2319638 () Bool)

(assert (=> d!1734092 (=> (not res!2319638) (not e!3373996))))

(assert (=> d!1734092 (= res!2319638 (validRegex!7013 (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292)))))))

(assert (=> d!1734092 (= (lemmaConcatAssociative!72 (ite (or c!950410 c!950414) (regOne!31066 (regOne!31066 r!7292)) (reg!15606 (regOne!31066 r!7292))) (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) lt!2222247) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292))) s!2326) lt!2222577)))

(declare-fun b!5447374 () Bool)

(declare-fun res!2319639 () Bool)

(assert (=> b!5447374 (=> (not res!2319639) (not e!3373996))))

(assert (=> b!5447374 (= res!2319639 (validRegex!7013 (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) lt!2222247)))))

(declare-fun b!5447375 () Bool)

(assert (=> b!5447375 (= e!3373996 (validRegex!7013 (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (regTwo!31066 r!7292)))))))

(assert (= (and d!1734092 res!2319638) b!5447374))

(assert (= (and b!5447374 res!2319639) b!5447375))

(declare-fun m!6467382 () Bool)

(assert (=> d!1734092 m!6467382))

(declare-fun m!6467384 () Bool)

(assert (=> d!1734092 m!6467384))

(declare-fun m!6467386 () Bool)

(assert (=> d!1734092 m!6467386))

(assert (=> d!1734092 m!6467072))

(declare-fun m!6467388 () Bool)

(assert (=> b!5447374 m!6467388))

(declare-fun m!6467390 () Bool)

(assert (=> b!5447375 m!6467390))

(assert (=> bm!392780 d!1734092))

(declare-fun d!1734094 () Bool)

(declare-fun c!950794 () Bool)

(assert (=> d!1734094 (= c!950794 (isEmpty!33985 (ite c!950418 s!2326 (ite c!950410 (t!375357 s!2326) (ite c!950414 s!2326 (ite c!950411 (ite c!950409 lt!2222190 (ite c!950415 lt!2222179 s!2326)) (t!375357 s!2326)))))))))

(declare-fun e!3373997 () Bool)

(assert (=> d!1734094 (= (matchZipper!1521 (ite c!950418 z!1189 (ite c!950410 lt!2222256 (ite c!950414 z!1189 (ite c!950411 (ite c!950409 (store ((as const (Array Context!9322 Bool)) false) (Context!9323 call!392815) true) (ite c!950415 (store ((as const (Array Context!9322 Bool)) false) (Context!9323 lt!2222235) true) lt!2222158)) lt!2222122)))) (ite c!950418 s!2326 (ite c!950410 (t!375357 s!2326) (ite c!950414 s!2326 (ite c!950411 (ite c!950409 lt!2222190 (ite c!950415 lt!2222179 s!2326)) (t!375357 s!2326)))))) e!3373997)))

(declare-fun b!5447376 () Bool)

(assert (=> b!5447376 (= e!3373997 (nullableZipper!1480 (ite c!950418 z!1189 (ite c!950410 lt!2222256 (ite c!950414 z!1189 (ite c!950411 (ite c!950409 (store ((as const (Array Context!9322 Bool)) false) (Context!9323 call!392815) true) (ite c!950415 (store ((as const (Array Context!9322 Bool)) false) (Context!9323 lt!2222235) true) lt!2222158)) lt!2222122))))))))

(declare-fun b!5447377 () Bool)

(assert (=> b!5447377 (= e!3373997 (matchZipper!1521 (derivationStepZipper!1496 (ite c!950418 z!1189 (ite c!950410 lt!2222256 (ite c!950414 z!1189 (ite c!950411 (ite c!950409 (store ((as const (Array Context!9322 Bool)) false) (Context!9323 call!392815) true) (ite c!950415 (store ((as const (Array Context!9322 Bool)) false) (Context!9323 lt!2222235) true) lt!2222158)) lt!2222122)))) (head!11677 (ite c!950418 s!2326 (ite c!950410 (t!375357 s!2326) (ite c!950414 s!2326 (ite c!950411 (ite c!950409 lt!2222190 (ite c!950415 lt!2222179 s!2326)) (t!375357 s!2326))))))) (tail!10774 (ite c!950418 s!2326 (ite c!950410 (t!375357 s!2326) (ite c!950414 s!2326 (ite c!950411 (ite c!950409 lt!2222190 (ite c!950415 lt!2222179 s!2326)) (t!375357 s!2326))))))))))

(assert (= (and d!1734094 c!950794) b!5447376))

(assert (= (and d!1734094 (not c!950794)) b!5447377))

(declare-fun m!6467392 () Bool)

(assert (=> d!1734094 m!6467392))

(declare-fun m!6467394 () Bool)

(assert (=> b!5447376 m!6467394))

(declare-fun m!6467396 () Bool)

(assert (=> b!5447377 m!6467396))

(assert (=> b!5447377 m!6467396))

(declare-fun m!6467398 () Bool)

(assert (=> b!5447377 m!6467398))

(declare-fun m!6467400 () Bool)

(assert (=> b!5447377 m!6467400))

(assert (=> b!5447377 m!6467398))

(assert (=> b!5447377 m!6467400))

(declare-fun m!6467402 () Bool)

(assert (=> b!5447377 m!6467402))

(assert (=> bm!392814 d!1734094))

(declare-fun d!1734096 () Bool)

(declare-fun c!950795 () Bool)

(assert (=> d!1734096 (= c!950795 (isEmpty!33985 (t!375357 s!2326)))))

(declare-fun e!3373998 () Bool)

(assert (=> d!1734096 (= (matchZipper!1521 lt!2222122 (t!375357 s!2326)) e!3373998)))

(declare-fun b!5447378 () Bool)

(assert (=> b!5447378 (= e!3373998 (nullableZipper!1480 lt!2222122))))

(declare-fun b!5447379 () Bool)

(assert (=> b!5447379 (= e!3373998 (matchZipper!1521 (derivationStepZipper!1496 lt!2222122 (head!11677 (t!375357 s!2326))) (tail!10774 (t!375357 s!2326))))))

(assert (= (and d!1734096 c!950795) b!5447378))

(assert (= (and d!1734096 (not c!950795)) b!5447379))

(assert (=> d!1734096 m!6466962))

(declare-fun m!6467404 () Bool)

(assert (=> b!5447378 m!6467404))

(assert (=> b!5447379 m!6466966))

(assert (=> b!5447379 m!6466966))

(declare-fun m!6467406 () Bool)

(assert (=> b!5447379 m!6467406))

(assert (=> b!5447379 m!6466970))

(assert (=> b!5447379 m!6467406))

(assert (=> b!5447379 m!6466970))

(declare-fun m!6467408 () Bool)

(assert (=> b!5447379 m!6467408))

(assert (=> b!5446002 d!1734096))

(declare-fun d!1734098 () Bool)

(assert (=> d!1734098 (= (flatMap!1004 (ite c!950418 lt!2222265 (ite c!950410 lt!2222251 (ite c!950414 lt!2222128 lt!2222163))) (ite c!950418 lambda!287180 (ite c!950410 lambda!287180 (ite c!950414 lambda!287180 lambda!287180)))) (dynLambda!24390 (ite c!950418 lambda!287180 (ite c!950410 lambda!287180 (ite c!950414 lambda!287180 lambda!287180))) (ite c!950418 lt!2222140 (ite c!950410 lt!2222127 (ite c!950414 lt!2222157 lt!2222232)))))))

(declare-fun lt!2222578 () Unit!154704)

(assert (=> d!1734098 (= lt!2222578 (choose!41331 (ite c!950418 lt!2222265 (ite c!950410 lt!2222251 (ite c!950414 lt!2222128 lt!2222163))) (ite c!950418 lt!2222140 (ite c!950410 lt!2222127 (ite c!950414 lt!2222157 lt!2222232))) (ite c!950418 lambda!287180 (ite c!950410 lambda!287180 (ite c!950414 lambda!287180 lambda!287180)))))))

(assert (=> d!1734098 (= (ite c!950418 lt!2222265 (ite c!950410 lt!2222251 (ite c!950414 lt!2222128 lt!2222163))) (store ((as const (Array Context!9322 Bool)) false) (ite c!950418 lt!2222140 (ite c!950410 lt!2222127 (ite c!950414 lt!2222157 lt!2222232))) true))))

(assert (=> d!1734098 (= (lemmaFlatMapOnSingletonSet!536 (ite c!950418 lt!2222265 (ite c!950410 lt!2222251 (ite c!950414 lt!2222128 lt!2222163))) (ite c!950418 lt!2222140 (ite c!950410 lt!2222127 (ite c!950414 lt!2222157 lt!2222232))) (ite c!950418 lambda!287180 (ite c!950410 lambda!287180 (ite c!950414 lambda!287180 lambda!287180)))) lt!2222578)))

(declare-fun b_lambda!207527 () Bool)

(assert (=> (not b_lambda!207527) (not d!1734098)))

(declare-fun bs!1257062 () Bool)

(assert (= bs!1257062 d!1734098))

(declare-fun m!6467410 () Bool)

(assert (=> bs!1257062 m!6467410))

(declare-fun m!6467412 () Bool)

(assert (=> bs!1257062 m!6467412))

(declare-fun m!6467414 () Bool)

(assert (=> bs!1257062 m!6467414))

(declare-fun m!6467416 () Bool)

(assert (=> bs!1257062 m!6467416))

(assert (=> bm!392815 d!1734098))

(declare-fun d!1734100 () Bool)

(assert (=> d!1734100 (= (matchR!7462 (ite c!950413 lt!2222197 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (reg!15606 (regOne!31066 r!7292))))) (ite c!950413 (t!375357 s!2326) (ite (or c!950418 c!950410) s!2326 (ite c!950409 (_1!35779 lt!2222226) (_1!35779 lt!2222305))))) (matchZipper!1521 (ite c!950413 lt!2222245 (ite c!950418 lt!2222265 (ite c!950410 lt!2222251 lt!2222169))) (ite c!950413 (t!375357 s!2326) (ite (or c!950418 c!950410) s!2326 (ite c!950409 (_1!35779 lt!2222226) (_1!35779 lt!2222305))))))))

(declare-fun lt!2222579 () Unit!154704)

(assert (=> d!1734100 (= lt!2222579 (choose!41339 (ite c!950413 lt!2222245 (ite c!950418 lt!2222265 (ite c!950410 lt!2222251 lt!2222169))) (ite c!950413 (Cons!62008 lt!2222248 Nil!62008) (ite c!950418 (Cons!62008 lt!2222140 Nil!62008) (ite c!950410 (Cons!62008 lt!2222127 Nil!62008) (Cons!62008 lt!2222124 Nil!62008)))) (ite c!950413 lt!2222197 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (reg!15606 (regOne!31066 r!7292))))) (ite c!950413 (t!375357 s!2326) (ite (or c!950418 c!950410) s!2326 (ite c!950409 (_1!35779 lt!2222226) (_1!35779 lt!2222305))))))))

(assert (=> d!1734100 (validRegex!7013 (ite c!950413 lt!2222197 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (reg!15606 (regOne!31066 r!7292))))))))

(assert (=> d!1734100 (= (theoremZipperRegexEquiv!557 (ite c!950413 lt!2222245 (ite c!950418 lt!2222265 (ite c!950410 lt!2222251 lt!2222169))) (ite c!950413 (Cons!62008 lt!2222248 Nil!62008) (ite c!950418 (Cons!62008 lt!2222140 Nil!62008) (ite c!950410 (Cons!62008 lt!2222127 Nil!62008) (Cons!62008 lt!2222124 Nil!62008)))) (ite c!950413 lt!2222197 (ite c!950418 lt!2222301 (ite c!950410 lt!2222155 (reg!15606 (regOne!31066 r!7292))))) (ite c!950413 (t!375357 s!2326) (ite (or c!950418 c!950410) s!2326 (ite c!950409 (_1!35779 lt!2222226) (_1!35779 lt!2222305))))) lt!2222579)))

(declare-fun bs!1257063 () Bool)

(assert (= bs!1257063 d!1734100))

(declare-fun m!6467418 () Bool)

(assert (=> bs!1257063 m!6467418))

(declare-fun m!6467420 () Bool)

(assert (=> bs!1257063 m!6467420))

(declare-fun m!6467422 () Bool)

(assert (=> bs!1257063 m!6467422))

(declare-fun m!6467424 () Bool)

(assert (=> bs!1257063 m!6467424))

(assert (=> bm!392888 d!1734100))

(declare-fun b!5447380 () Bool)

(declare-fun lt!2222581 () Unit!154704)

(declare-fun lt!2222580 () Unit!154704)

(assert (=> b!5447380 (= lt!2222581 lt!2222580)))

(assert (=> b!5447380 (= (++!13633 (++!13633 Nil!62006 (Cons!62006 (h!68454 (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)))) Nil!62006)) (t!375357 (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006))))) (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006))))))

(assert (=> b!5447380 (= lt!2222580 (lemmaMoveElementToOtherListKeepsConcatEq!1875 Nil!62006 (h!68454 (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)))) (t!375357 (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)))) (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)))))))

(declare-fun e!3374003 () Option!15388)

(assert (=> b!5447380 (= e!3374003 (findConcatSeparation!1802 (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 (reg!15606 (regOne!31066 r!7292)) (ite c!950415 lt!2222184 (reg!15606 (regOne!31066 r!7292))))) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (ite c!950409 lt!2222247 (ite c!950415 (regTwo!31066 r!7292) lt!2222247)))) (++!13633 Nil!62006 (Cons!62006 (h!68454 (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)))) Nil!62006)) (t!375357 (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)))) (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)))))))

(declare-fun d!1734102 () Bool)

(declare-fun e!3373999 () Bool)

(assert (=> d!1734102 e!3373999))

(declare-fun res!2319641 () Bool)

(assert (=> d!1734102 (=> res!2319641 e!3373999)))

(declare-fun e!3374000 () Bool)

(assert (=> d!1734102 (= res!2319641 e!3374000)))

(declare-fun res!2319643 () Bool)

(assert (=> d!1734102 (=> (not res!2319643) (not e!3374000))))

(declare-fun lt!2222582 () Option!15388)

(assert (=> d!1734102 (= res!2319643 (isDefined!12091 lt!2222582))))

(declare-fun e!3374002 () Option!15388)

(assert (=> d!1734102 (= lt!2222582 e!3374002)))

(declare-fun c!950796 () Bool)

(declare-fun e!3374001 () Bool)

(assert (=> d!1734102 (= c!950796 e!3374001)))

(declare-fun res!2319644 () Bool)

(assert (=> d!1734102 (=> (not res!2319644) (not e!3374001))))

(assert (=> d!1734102 (= res!2319644 (matchR!7462 (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 (reg!15606 (regOne!31066 r!7292)) (ite c!950415 lt!2222184 (reg!15606 (regOne!31066 r!7292))))) Nil!62006))))

(assert (=> d!1734102 (validRegex!7013 (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 (reg!15606 (regOne!31066 r!7292)) (ite c!950415 lt!2222184 (reg!15606 (regOne!31066 r!7292))))))))

(assert (=> d!1734102 (= (findConcatSeparation!1802 (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 (reg!15606 (regOne!31066 r!7292)) (ite c!950415 lt!2222184 (reg!15606 (regOne!31066 r!7292))))) (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (ite c!950409 lt!2222247 (ite c!950415 (regTwo!31066 r!7292) lt!2222247)))) Nil!62006 (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006))) (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)))) lt!2222582)))

(declare-fun b!5447381 () Bool)

(declare-fun res!2319642 () Bool)

(assert (=> b!5447381 (=> (not res!2319642) (not e!3374000))))

(assert (=> b!5447381 (= res!2319642 (matchR!7462 (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (ite c!950409 lt!2222247 (ite c!950415 (regTwo!31066 r!7292) lt!2222247)))) (_2!35779 (get!21380 lt!2222582))))))

(declare-fun b!5447382 () Bool)

(assert (=> b!5447382 (= e!3374003 None!15387)))

(declare-fun b!5447383 () Bool)

(declare-fun res!2319640 () Bool)

(assert (=> b!5447383 (=> (not res!2319640) (not e!3374000))))

(assert (=> b!5447383 (= res!2319640 (matchR!7462 (ite (or c!950410 c!950414) (regTwo!31066 (regOne!31066 r!7292)) (ite c!950409 (reg!15606 (regOne!31066 r!7292)) (ite c!950415 lt!2222184 (reg!15606 (regOne!31066 r!7292))))) (_1!35779 (get!21380 lt!2222582))))))

(declare-fun b!5447384 () Bool)

(assert (=> b!5447384 (= e!3374001 (matchR!7462 (ite c!950410 lt!2222240 (ite c!950414 lt!2222211 (ite c!950409 lt!2222247 (ite c!950415 (regTwo!31066 r!7292) lt!2222247)))) (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)))))))

(declare-fun b!5447385 () Bool)

(assert (=> b!5447385 (= e!3373999 (not (isDefined!12091 lt!2222582)))))

(declare-fun b!5447386 () Bool)

(assert (=> b!5447386 (= e!3374002 e!3374003)))

(declare-fun c!950797 () Bool)

(assert (=> b!5447386 (= c!950797 ((_ is Nil!62006) (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)))))))

(declare-fun b!5447387 () Bool)

(assert (=> b!5447387 (= e!3374000 (= (++!13633 (_1!35779 (get!21380 lt!2222582)) (_2!35779 (get!21380 lt!2222582))) (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006)))))))

(declare-fun b!5447388 () Bool)

(assert (=> b!5447388 (= e!3374002 (Some!15387 (tuple2!64953 Nil!62006 (ite (or c!950410 c!950414) s!2326 (ite c!950409 (_1!35779 lt!2222282) (ite c!950415 s!2326 Nil!62006))))))))

(assert (= (and d!1734102 res!2319644) b!5447384))

(assert (= (and d!1734102 c!950796) b!5447388))

(assert (= (and d!1734102 (not c!950796)) b!5447386))

(assert (= (and b!5447386 c!950797) b!5447382))

(assert (= (and b!5447386 (not c!950797)) b!5447380))

(assert (= (and d!1734102 res!2319643) b!5447383))

(assert (= (and b!5447383 res!2319640) b!5447381))

(assert (= (and b!5447381 res!2319642) b!5447387))

(assert (= (and d!1734102 (not res!2319641)) b!5447385))

(declare-fun m!6467426 () Bool)

(assert (=> b!5447380 m!6467426))

(assert (=> b!5447380 m!6467426))

(declare-fun m!6467428 () Bool)

(assert (=> b!5447380 m!6467428))

(declare-fun m!6467430 () Bool)

(assert (=> b!5447380 m!6467430))

(assert (=> b!5447380 m!6467426))

(declare-fun m!6467432 () Bool)

(assert (=> b!5447380 m!6467432))

(declare-fun m!6467434 () Bool)

(assert (=> b!5447384 m!6467434))

(declare-fun m!6467436 () Bool)

(assert (=> b!5447387 m!6467436))

(declare-fun m!6467438 () Bool)

(assert (=> b!5447387 m!6467438))

(assert (=> b!5447383 m!6467436))

(declare-fun m!6467440 () Bool)

(assert (=> b!5447383 m!6467440))

(declare-fun m!6467442 () Bool)

(assert (=> d!1734102 m!6467442))

(declare-fun m!6467444 () Bool)

(assert (=> d!1734102 m!6467444))

(declare-fun m!6467446 () Bool)

(assert (=> d!1734102 m!6467446))

(assert (=> b!5447381 m!6467436))

(declare-fun m!6467448 () Bool)

(assert (=> b!5447381 m!6467448))

(assert (=> b!5447385 m!6467442))

(assert (=> bm!392789 d!1734102))

(declare-fun d!1734104 () Bool)

(assert (=> d!1734104 (matchR!7462 (Concat!24122 (ite (or c!950409 c!950415) (reg!15606 (regOne!31066 r!7292)) lt!2222247) (ite (or c!950409 c!950415) lt!2222304 (regTwo!31066 r!7292))) (++!13633 (ite c!950409 (_1!35779 lt!2222226) (ite c!950415 (_1!35779 lt!2222305) Nil!62006)) (ite c!950409 lt!2222286 (ite c!950415 (_2!35779 lt!2222305) s!2326))))))

(declare-fun lt!2222583 () Unit!154704)

(assert (=> d!1734104 (= lt!2222583 (choose!41332 (ite (or c!950409 c!950415) (reg!15606 (regOne!31066 r!7292)) lt!2222247) (ite (or c!950409 c!950415) lt!2222304 (regTwo!31066 r!7292)) (ite c!950409 (_1!35779 lt!2222226) (ite c!950415 (_1!35779 lt!2222305) Nil!62006)) (ite c!950409 lt!2222286 (ite c!950415 (_2!35779 lt!2222305) s!2326))))))

(declare-fun e!3374004 () Bool)

(assert (=> d!1734104 e!3374004))

(declare-fun res!2319645 () Bool)

(assert (=> d!1734104 (=> (not res!2319645) (not e!3374004))))

(assert (=> d!1734104 (= res!2319645 (validRegex!7013 (ite (or c!950409 c!950415) (reg!15606 (regOne!31066 r!7292)) lt!2222247)))))

(assert (=> d!1734104 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!244 (ite (or c!950409 c!950415) (reg!15606 (regOne!31066 r!7292)) lt!2222247) (ite (or c!950409 c!950415) lt!2222304 (regTwo!31066 r!7292)) (ite c!950409 (_1!35779 lt!2222226) (ite c!950415 (_1!35779 lt!2222305) Nil!62006)) (ite c!950409 lt!2222286 (ite c!950415 (_2!35779 lt!2222305) s!2326))) lt!2222583)))

(declare-fun b!5447389 () Bool)

(assert (=> b!5447389 (= e!3374004 (validRegex!7013 (ite (or c!950409 c!950415) lt!2222304 (regTwo!31066 r!7292))))))

(assert (= (and d!1734104 res!2319645) b!5447389))

(declare-fun m!6467450 () Bool)

(assert (=> d!1734104 m!6467450))

(assert (=> d!1734104 m!6467450))

(declare-fun m!6467452 () Bool)

(assert (=> d!1734104 m!6467452))

(declare-fun m!6467454 () Bool)

(assert (=> d!1734104 m!6467454))

(declare-fun m!6467456 () Bool)

(assert (=> d!1734104 m!6467456))

(declare-fun m!6467458 () Bool)

(assert (=> b!5447389 m!6467458))

(assert (=> bm!392920 d!1734104))

(declare-fun d!1734106 () Bool)

(assert (=> d!1734106 (matchR!7462 (Star!15277 (reg!15606 (regOne!31066 r!7292))) (++!13633 (ite c!950409 (_1!35779 lt!2222226) (_1!35779 lt!2222200)) (ite c!950409 (_2!35779 lt!2222226) (_2!35779 lt!2222200))))))

(declare-fun lt!2222586 () Unit!154704)

(declare-fun choose!41354 (Regex!15277 List!62130 List!62130) Unit!154704)

(assert (=> d!1734106 (= lt!2222586 (choose!41354 (reg!15606 (regOne!31066 r!7292)) (ite c!950409 (_1!35779 lt!2222226) (_1!35779 lt!2222200)) (ite c!950409 (_2!35779 lt!2222226) (_2!35779 lt!2222200))))))

(assert (=> d!1734106 (validRegex!7013 (Star!15277 (reg!15606 (regOne!31066 r!7292))))))

(assert (=> d!1734106 (= (lemmaStarApp!72 (reg!15606 (regOne!31066 r!7292)) (ite c!950409 (_1!35779 lt!2222226) (_1!35779 lt!2222200)) (ite c!950409 (_2!35779 lt!2222226) (_2!35779 lt!2222200))) lt!2222586)))

(declare-fun bs!1257064 () Bool)

(assert (= bs!1257064 d!1734106))

(assert (=> bs!1257064 m!6466448))

(assert (=> bs!1257064 m!6466448))

(declare-fun m!6467460 () Bool)

(assert (=> bs!1257064 m!6467460))

(declare-fun m!6467462 () Bool)

(assert (=> bs!1257064 m!6467462))

(declare-fun m!6467464 () Bool)

(assert (=> bs!1257064 m!6467464))

(assert (=> bm!392826 d!1734106))

(declare-fun d!1734108 () Bool)

(assert (=> d!1734108 (= (isEmpty!33985 (_1!35779 lt!2222282)) ((_ is Nil!62006) (_1!35779 lt!2222282)))))

(assert (=> b!5446010 d!1734108))

(declare-fun d!1734110 () Bool)

(assert (=> d!1734110 (= (matchR!7462 (ite c!950418 lt!2222301 (ite c!950410 lt!2222146 (ite c!950414 lt!2222270 (ite c!950411 lt!2222221 (regOne!31066 r!7292))))) s!2326) (matchRSpec!2380 (ite c!950418 lt!2222301 (ite c!950410 lt!2222146 (ite c!950414 lt!2222270 (ite c!950411 lt!2222221 (regOne!31066 r!7292))))) s!2326))))

(declare-fun lt!2222587 () Unit!154704)

(assert (=> d!1734110 (= lt!2222587 (choose!41333 (ite c!950418 lt!2222301 (ite c!950410 lt!2222146 (ite c!950414 lt!2222270 (ite c!950411 lt!2222221 (regOne!31066 r!7292))))) s!2326))))

(assert (=> d!1734110 (validRegex!7013 (ite c!950418 lt!2222301 (ite c!950410 lt!2222146 (ite c!950414 lt!2222270 (ite c!950411 lt!2222221 (regOne!31066 r!7292))))))))

(assert (=> d!1734110 (= (mainMatchTheorem!2380 (ite c!950418 lt!2222301 (ite c!950410 lt!2222146 (ite c!950414 lt!2222270 (ite c!950411 lt!2222221 (regOne!31066 r!7292))))) s!2326) lt!2222587)))

(declare-fun bs!1257065 () Bool)

(assert (= bs!1257065 d!1734110))

(declare-fun m!6467466 () Bool)

(assert (=> bs!1257065 m!6467466))

(declare-fun m!6467468 () Bool)

(assert (=> bs!1257065 m!6467468))

(declare-fun m!6467470 () Bool)

(assert (=> bs!1257065 m!6467470))

(declare-fun m!6467472 () Bool)

(assert (=> bs!1257065 m!6467472))

(assert (=> bm!392759 d!1734110))

(declare-fun d!1734112 () Bool)

(assert (=> d!1734112 (= (nullable!5446 (ite c!950418 (regTwo!31067 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292)))) (nullableFct!1631 (ite c!950418 (regTwo!31067 (regOne!31066 r!7292)) (regOne!31066 (regOne!31066 r!7292)))))))

(declare-fun bs!1257066 () Bool)

(assert (= bs!1257066 d!1734112))

(declare-fun m!6467474 () Bool)

(assert (=> bs!1257066 m!6467474))

(assert (=> bm!392953 d!1734112))

(declare-fun b!5447390 () Bool)

(declare-fun res!2319646 () Bool)

(declare-fun e!3374007 () Bool)

(assert (=> b!5447390 (=> res!2319646 e!3374007)))

(assert (=> b!5447390 (= res!2319646 (not ((_ is ElementMatch!15277) (ite c!950410 (Concat!24122 (Concat!24122 (regOne!31066 (regOne!31066 r!7292)) (regTwo!31066 (regOne!31066 r!7292))) lt!2222240) (ite c!950411 (ite c!950409 lt!2222304 (ite c!950415 lt!2222221 lt!2222304)) lt!2222213)))))))

(declare-fun e!3374008 () Bool)

(assert (=> b!5447390 (= e!3374008 e!3374007)))

(declare-fun b!5447391 () Bool)

(declare-fun res!2319649 () Bool)

(declare-fun e!3374010 () Bool)

(assert (=> b!5447391 (=> (not res!2319649) (not e!3374010))))

(declare-fun call!393115 () Bool)

(assert (=> b!5447391 (= res!2319649 (not call!393115))))

(declare-fun b!5447392 () Bool)

(declare-fun e!3374011 () Bool)

(declare-fun e!3374005 () Bool)

(assert (=> b!5447392 (= e!3374011 e!3374005)))

(declare-fun res!2319648 () Bool)

(assert (=> b!5447392 (=> res!2319648 e!3374005)))

(assert (=> b!5447392 (= res!2319648 call!393115)))

(declare-fun b!5447393 () Bool)

(declare-fun res!2319653 () Bool)

(assert (=> b!5447393 (=> (not res!2319653) (not e!3374010))))

(assert (=> b!5447393 (= res!2319653 (isEmpty!33985 (tail!10774 (ite c!950410 s!2326 (ite c!950411 (ite c!950409 lt!2222286 (ite c!950415 lt!2222179 call!392793)) s!2326)))))))

(declare-fun b!5447394 () Bool)

(declare-fun e!3374006 () Bool)

(assert (=> b!5447394 (= e!3374006 e!3374008)))

(declare-fun c!950800 () Bool)

(assert (=> b!5447394 (= c!950800 ((_ is EmptyLang!15277) (ite c!950410 (Concat!24122 (Concat!24122 (regOne!31066 (regOne!31066 r!7292)) (regTwo!31066 (regOne!31066 r!7292))) lt!2222240) (ite c!950411 (ite c!950409 lt!2222304 (ite c!950415 lt!2222221 lt!2222304)) lt!2222213))))))

(declare-fun b!5447395 () Bool)

(assert (=> b!5447395 (= e!3374005 (not (= (head!11677 (ite c!950410 s!2326 (ite c!950411 (ite c!950409 lt!2222286 (ite c!950415 lt!2222179 call!392793)) s!2326))) (c!950421 (ite c!950410 (Concat!24122 (Concat!24122 (regOne!31066 (regOne!31066 r!7292)) (regTwo!31066 (regOne!31066 r!7292))) lt!2222240) (ite c!950411 (ite c!950409 lt!2222304 (ite c!950415 lt!2222221 lt!2222304)) lt!2222213))))))))

(declare-fun e!3374009 () Bool)

(declare-fun b!5447396 () Bool)

(assert (=> b!5447396 (= e!3374009 (matchR!7462 (derivativeStep!4301 (ite c!950410 (Concat!24122 (Concat!24122 (regOne!31066 (regOne!31066 r!7292)) (regTwo!31066 (regOne!31066 r!7292))) lt!2222240) (ite c!950411 (ite c!950409 lt!2222304 (ite c!950415 lt!2222221 lt!2222304)) lt!2222213)) (head!11677 (ite c!950410 s!2326 (ite c!950411 (ite c!950409 lt!2222286 (ite c!950415 lt!2222179 call!392793)) s!2326)))) (tail!10774 (ite c!950410 s!2326 (ite c!950411 (ite c!950409 lt!2222286 (ite c!950415 lt!2222179 call!392793)) s!2326)))))))

(declare-fun b!5447397 () Bool)

(declare-fun res!2319647 () Bool)

(assert (=> b!5447397 (=> res!2319647 e!3374005)))

(assert (=> b!5447397 (= res!2319647 (not (isEmpty!33985 (tail!10774 (ite c!950410 s!2326 (ite c!950411 (ite c!950409 lt!2222286 (ite c!950415 lt!2222179 call!392793)) s!2326))))))))

(declare-fun b!5447399 () Bool)

(declare-fun lt!2222588 () Bool)

(assert (=> b!5447399 (= e!3374008 (not lt!2222588))))

(declare-fun bm!393110 () Bool)

(assert (=> bm!393110 (= call!393115 (isEmpty!33985 (ite c!950410 s!2326 (ite c!950411 (ite c!950409 lt!2222286 (ite c!950415 lt!2222179 call!392793)) s!2326))))))

(declare-fun b!5447400 () Bool)

(assert (=> b!5447400 (= e!3374010 (= (head!11677 (ite c!950410 s!2326 (ite c!950411 (ite c!950409 lt!2222286 (ite c!950415 lt!2222179 call!392793)) s!2326))) (c!950421 (ite c!950410 (Concat!24122 (Concat!24122 (regOne!31066 (regOne!31066 r!7292)) (regTwo!31066 (regOne!31066 r!7292))) lt!2222240) (ite c!950411 (ite c!950409 lt!2222304 (ite c!950415 lt!2222221 lt!2222304)) lt!2222213)))))))

(declare-fun b!5447401 () Bool)

(assert (=> b!5447401 (= e!3374007 e!3374011)))

(declare-fun res!2319652 () Bool)

(assert (=> b!5447401 (=> (not res!2319652) (not e!3374011))))

(assert (=> b!5447401 (= res!2319652 (not lt!2222588))))

(declare-fun b!5447402 () Bool)

(declare-fun res!2319650 () Bool)

(assert (=> b!5447402 (=> res!2319650 e!3374007)))

(assert (=> b!5447402 (= res!2319650 e!3374010)))

(declare-fun res!2319651 () Bool)

(assert (=> b!5447402 (=> (not res!2319651) (not e!3374010))))

(assert (=> b!5447402 (= res!2319651 lt!2222588)))

(declare-fun b!5447403 () Bool)

(assert (=> b!5447403 (= e!3374009 (nullable!5446 (ite c!950410 (Concat!24122 (Concat!24122 (regOne!31066 (regOne!31066 r!7292)) (regTwo!31066 (regOne!31066 r!7292))) lt!2222240) (ite c!950411 (ite c!950409 lt!2222304 (ite c!950415 lt!2222221 lt!2222304)) lt!2222213))))))

(declare-fun b!5447398 () Bool)

(assert (=> b!5447398 (= e!3374006 (= lt!2222588 call!393115))))

(declare-fun d!1734114 () Bool)

(assert (=> d!1734114 e!3374006))

(declare-fun c!950799 () Bool)

(assert (=> d!1734114 (= c!950799 ((_ is EmptyExpr!15277) (ite c!950410 (Concat!24122 (Concat!24122 (regOne!31066 (regOne!31066 r!7292)) (regTwo!31066 (regOne!31066 r!7292))) lt!2222240) (ite c!950411 (ite c!950409 lt!2222304 (ite c!950415 lt!2222221 lt!2222304)) lt!2222213))))))

(assert (=> d!1734114 (= lt!2222588 e!3374009)))

(declare-fun c!950798 () Bool)

(assert (=> d!1734114 (= c!950798 (isEmpty!33985 (ite c!950410 s!2326 (ite c!950411 (ite c!950409 lt!2222286 (ite c!950415 lt!2222179 call!392793)) s!2326))))))

(assert (=> d!1734114 (validRegex!7013 (ite c!950410 (Concat!24122 (Concat!24122 (regOne!31066 (regOne!31066 r!7292)) (regTwo!31066 (regOne!31066 r!7292))) lt!2222240) (ite c!950411 (ite c!950409 lt!2222304 (ite c!950415 lt!2222221 lt!2222304)) lt!2222213)))))

(assert (=> d!1734114 (= (matchR!7462 (ite c!950410 (Concat!24122 (Concat!24122 (regOne!31066 (regOne!31066 r!7292)) (regTwo!31066 (regOne!31066 r!7292))) lt!2222240) (ite c!950411 (ite c!950409 lt!2222304 (ite c!950415 lt!2222221 lt!2222304)) lt!2222213)) (ite c!950410 s!2326 (ite c!950411 (ite c!950409 lt!2222286 (ite c!950415 lt!2222179 call!392793)) s!2326))) lt!2222588)))

(assert (= (and d!1734114 c!950798) b!5447403))

(assert (= (and d!1734114 (not c!950798)) b!5447396))

(assert (= (and d!1734114 c!950799) b!5447398))

(assert (= (and d!1734114 (not c!950799)) b!5447394))

(assert (= (and b!5447394 c!950800) b!5447399))

(assert (= (and b!5447394 (not c!950800)) b!5447390))

(assert (= (and b!5447390 (not res!2319646)) b!5447402))

(assert (= (and b!5447402 res!2319651) b!5447391))

(assert (= (and b!5447391 res!2319649) b!5447393))

(assert (= (and b!5447393 res!2319653) b!5447400))

(assert (= (and b!5447402 (not res!2319650)) b!5447401))

(assert (= (and b!5447401 res!2319652) b!5447392))

(assert (= (and b!5447392 (not res!2319648)) b!5447397))

(assert (= (and b!5447397 (not res!2319647)) b!5447395))

(assert (= (or b!5447398 b!5447391 b!5447392) bm!393110))

(declare-fun m!6467476 () Bool)

(assert (=> d!1734114 m!6467476))

(declare-fun m!6467478 () Bool)

(assert (=> d!1734114 m!6467478))

(declare-fun m!6467480 () Bool)

(assert (=> b!5447395 m!6467480))

(assert (=> b!5447396 m!6467480))

(assert (=> b!5447396 m!6467480))

(declare-fun m!6467482 () Bool)

(assert (=> b!5447396 m!6467482))

(declare-fun m!6467484 () Bool)

(assert (=> b!5447396 m!6467484))

(assert (=> b!5447396 m!6467482))

(assert (=> b!5447396 m!6467484))

(declare-fun m!6467486 () Bool)

(assert (=> b!5447396 m!6467486))

(declare-fun m!6467488 () Bool)

(assert (=> b!5447403 m!6467488))

(assert (=> b!5447397 m!6467484))

(assert (=> b!5447397 m!6467484))

(declare-fun m!6467490 () Bool)

(assert (=> b!5447397 m!6467490))

(assert (=> b!5447400 m!6467480))

(assert (=> b!5447393 m!6467484))

(assert (=> b!5447393 m!6467484))

(assert (=> b!5447393 m!6467490))

(assert (=> bm!393110 m!6467476))

(assert (=> bm!392874 d!1734114))

(declare-fun d!1734116 () Bool)

(assert (=> d!1734116 (= (flatMap!1004 (ite c!950418 lt!2222265 (ite c!950410 lt!2222251 lt!2222169)) (ite c!950418 lambda!287180 (ite c!950410 lambda!287180 lambda!287180))) (choose!41327 (ite c!950418 lt!2222265 (ite c!950410 lt!2222251 lt!2222169)) (ite c!950418 lambda!287180 (ite c!950410 lambda!287180 lambda!287180))))))

(declare-fun bs!1257067 () Bool)

(assert (= bs!1257067 d!1734116))

(declare-fun m!6467492 () Bool)

(assert (=> bs!1257067 m!6467492))

(assert (=> bm!392777 d!1734116))

(declare-fun b!5447412 () Bool)

(declare-fun e!3374016 () List!62131)

(assert (=> b!5447412 (= e!3374016 lt!2222227)))

(declare-fun d!1734118 () Bool)

(declare-fun e!3374017 () Bool)

(assert (=> d!1734118 e!3374017))

(declare-fun res!2319658 () Bool)

(assert (=> d!1734118 (=> (not res!2319658) (not e!3374017))))

(declare-fun lt!2222591 () List!62131)

(declare-fun content!11153 (List!62131) (InoxSet Regex!15277))

(assert (=> d!1734118 (= res!2319658 (= (content!11153 lt!2222591) ((_ map or) (content!11153 lt!2222317) (content!11153 lt!2222227))))))

(assert (=> d!1734118 (= lt!2222591 e!3374016)))

(declare-fun c!950803 () Bool)

(assert (=> d!1734118 (= c!950803 ((_ is Nil!62007) lt!2222317))))

(assert (=> d!1734118 (= (++!13634 lt!2222317 lt!2222227) lt!2222591)))

(declare-fun b!5447414 () Bool)

(declare-fun res!2319659 () Bool)

(assert (=> b!5447414 (=> (not res!2319659) (not e!3374017))))

(declare-fun size!39892 (List!62131) Int)

(assert (=> b!5447414 (= res!2319659 (= (size!39892 lt!2222591) (+ (size!39892 lt!2222317) (size!39892 lt!2222227))))))

(declare-fun b!5447415 () Bool)

(assert (=> b!5447415 (= e!3374017 (or (not (= lt!2222227 Nil!62007)) (= lt!2222591 lt!2222317)))))

(declare-fun b!5447413 () Bool)

(assert (=> b!5447413 (= e!3374016 (Cons!62007 (h!68455 lt!2222317) (++!13634 (t!375358 lt!2222317) lt!2222227)))))

(assert (= (and d!1734118 c!950803) b!5447412))

(assert (= (and d!1734118 (not c!950803)) b!5447413))

(assert (= (and d!1734118 res!2319658) b!5447414))

(assert (= (and b!5447414 res!2319659) b!5447415))

(declare-fun m!6467494 () Bool)

(assert (=> d!1734118 m!6467494))

(declare-fun m!6467496 () Bool)

(assert (=> d!1734118 m!6467496))

(declare-fun m!6467498 () Bool)

(assert (=> d!1734118 m!6467498))

(declare-fun m!6467500 () Bool)

(assert (=> b!5447414 m!6467500))

(declare-fun m!6467502 () Bool)

(assert (=> b!5447414 m!6467502))

(declare-fun m!6467504 () Bool)

(assert (=> b!5447414 m!6467504))

(declare-fun m!6467506 () Bool)

(assert (=> b!5447413 m!6467506))

(assert (=> bm!392907 d!1734118))

(declare-fun d!1734120 () Bool)

(assert (=> d!1734120 (= (Exists!2458 (ite c!950410 lambda!287184 (ite c!950414 lambda!287188 (ite c!950409 lambda!287190 (ite c!950415 lambda!287199 lambda!287204))))) (choose!41324 (ite c!950410 lambda!287184 (ite c!950414 lambda!287188 (ite c!950409 lambda!287190 (ite c!950415 lambda!287199 lambda!287204))))))))

(declare-fun bs!1257068 () Bool)

(assert (= bs!1257068 d!1734120))

(declare-fun m!6467508 () Bool)

(assert (=> bs!1257068 m!6467508))

(assert (=> bm!392810 d!1734120))

(declare-fun b!5447420 () Bool)

(declare-fun e!3374020 () Bool)

(declare-fun tp!1501064 () Bool)

(declare-fun tp!1501065 () Bool)

(assert (=> b!5447420 (= e!3374020 (and tp!1501064 tp!1501065))))

(assert (=> b!5446044 (= tp!1500998 e!3374020)))

(assert (= (and b!5446044 ((_ is Cons!62007) (exprs!5161 (h!68456 zl!343)))) b!5447420))

(declare-fun b!5447421 () Bool)

(declare-fun e!3374021 () Bool)

(declare-fun tp!1501066 () Bool)

(declare-fun tp!1501067 () Bool)

(assert (=> b!5447421 (= e!3374021 (and tp!1501066 tp!1501067))))

(assert (=> b!5446043 (= tp!1500995 e!3374021)))

(assert (= (and b!5446043 ((_ is Cons!62007) (exprs!5161 setElem!35641))) b!5447421))

(declare-fun b!5447434 () Bool)

(declare-fun e!3374024 () Bool)

(declare-fun tp!1501080 () Bool)

(assert (=> b!5447434 (= e!3374024 tp!1501080)))

(declare-fun b!5447432 () Bool)

(assert (=> b!5447432 (= e!3374024 tp_is_empty!39807)))

(declare-fun b!5447433 () Bool)

(declare-fun tp!1501081 () Bool)

(declare-fun tp!1501078 () Bool)

(assert (=> b!5447433 (= e!3374024 (and tp!1501081 tp!1501078))))

(assert (=> b!5446039 (= tp!1500997 e!3374024)))

(declare-fun b!5447435 () Bool)

(declare-fun tp!1501082 () Bool)

(declare-fun tp!1501079 () Bool)

(assert (=> b!5447435 (= e!3374024 (and tp!1501082 tp!1501079))))

(assert (= (and b!5446039 ((_ is ElementMatch!15277) (regOne!31066 r!7292))) b!5447432))

(assert (= (and b!5446039 ((_ is Concat!24122) (regOne!31066 r!7292))) b!5447433))

(assert (= (and b!5446039 ((_ is Star!15277) (regOne!31066 r!7292))) b!5447434))

(assert (= (and b!5446039 ((_ is Union!15277) (regOne!31066 r!7292))) b!5447435))

(declare-fun b!5447438 () Bool)

(declare-fun e!3374025 () Bool)

(declare-fun tp!1501085 () Bool)

(assert (=> b!5447438 (= e!3374025 tp!1501085)))

(declare-fun b!5447436 () Bool)

(assert (=> b!5447436 (= e!3374025 tp_is_empty!39807)))

(declare-fun b!5447437 () Bool)

(declare-fun tp!1501086 () Bool)

(declare-fun tp!1501083 () Bool)

(assert (=> b!5447437 (= e!3374025 (and tp!1501086 tp!1501083))))

(assert (=> b!5446039 (= tp!1500999 e!3374025)))

(declare-fun b!5447439 () Bool)

(declare-fun tp!1501087 () Bool)

(declare-fun tp!1501084 () Bool)

(assert (=> b!5447439 (= e!3374025 (and tp!1501087 tp!1501084))))

(assert (= (and b!5446039 ((_ is ElementMatch!15277) (regTwo!31066 r!7292))) b!5447436))

(assert (= (and b!5446039 ((_ is Concat!24122) (regTwo!31066 r!7292))) b!5447437))

(assert (= (and b!5446039 ((_ is Star!15277) (regTwo!31066 r!7292))) b!5447438))

(assert (= (and b!5446039 ((_ is Union!15277) (regTwo!31066 r!7292))) b!5447439))

(declare-fun b!5447442 () Bool)

(declare-fun e!3374026 () Bool)

(declare-fun tp!1501090 () Bool)

(assert (=> b!5447442 (= e!3374026 tp!1501090)))

(declare-fun b!5447440 () Bool)

(assert (=> b!5447440 (= e!3374026 tp_is_empty!39807)))

(declare-fun b!5447441 () Bool)

(declare-fun tp!1501091 () Bool)

(declare-fun tp!1501088 () Bool)

(assert (=> b!5447441 (= e!3374026 (and tp!1501091 tp!1501088))))

(assert (=> b!5445986 (= tp!1500996 e!3374026)))

(declare-fun b!5447443 () Bool)

(declare-fun tp!1501092 () Bool)

(declare-fun tp!1501089 () Bool)

(assert (=> b!5447443 (= e!3374026 (and tp!1501092 tp!1501089))))

(assert (= (and b!5445986 ((_ is ElementMatch!15277) (reg!15606 r!7292))) b!5447440))

(assert (= (and b!5445986 ((_ is Concat!24122) (reg!15606 r!7292))) b!5447441))

(assert (= (and b!5445986 ((_ is Star!15277) (reg!15606 r!7292))) b!5447442))

(assert (= (and b!5445986 ((_ is Union!15277) (reg!15606 r!7292))) b!5447443))

(declare-fun b!5447448 () Bool)

(declare-fun e!3374029 () Bool)

(declare-fun tp!1501095 () Bool)

(assert (=> b!5447448 (= e!3374029 (and tp_is_empty!39807 tp!1501095))))

(assert (=> b!5446003 (= tp!1501001 e!3374029)))

(assert (= (and b!5446003 ((_ is Cons!62006) (t!375357 s!2326))) b!5447448))

(declare-fun b!5447456 () Bool)

(declare-fun e!3374035 () Bool)

(declare-fun tp!1501100 () Bool)

(assert (=> b!5447456 (= e!3374035 tp!1501100)))

(declare-fun b!5447455 () Bool)

(declare-fun tp!1501101 () Bool)

(declare-fun e!3374034 () Bool)

(assert (=> b!5447455 (= e!3374034 (and (inv!81439 (h!68456 (t!375359 zl!343))) e!3374035 tp!1501101))))

(assert (=> b!5446013 (= tp!1500994 e!3374034)))

(assert (= b!5447455 b!5447456))

(assert (= (and b!5446013 ((_ is Cons!62008) (t!375359 zl!343))) b!5447455))

(declare-fun m!6467510 () Bool)

(assert (=> b!5447455 m!6467510))

(declare-fun b!5447459 () Bool)

(declare-fun e!3374036 () Bool)

(declare-fun tp!1501104 () Bool)

(assert (=> b!5447459 (= e!3374036 tp!1501104)))

(declare-fun b!5447457 () Bool)

(assert (=> b!5447457 (= e!3374036 tp_is_empty!39807)))

(declare-fun b!5447458 () Bool)

(declare-fun tp!1501105 () Bool)

(declare-fun tp!1501102 () Bool)

(assert (=> b!5447458 (= e!3374036 (and tp!1501105 tp!1501102))))

(assert (=> b!5446008 (= tp!1501000 e!3374036)))

(declare-fun b!5447460 () Bool)

(declare-fun tp!1501106 () Bool)

(declare-fun tp!1501103 () Bool)

(assert (=> b!5447460 (= e!3374036 (and tp!1501106 tp!1501103))))

(assert (= (and b!5446008 ((_ is ElementMatch!15277) (regOne!31067 r!7292))) b!5447457))

(assert (= (and b!5446008 ((_ is Concat!24122) (regOne!31067 r!7292))) b!5447458))

(assert (= (and b!5446008 ((_ is Star!15277) (regOne!31067 r!7292))) b!5447459))

(assert (= (and b!5446008 ((_ is Union!15277) (regOne!31067 r!7292))) b!5447460))

(declare-fun b!5447463 () Bool)

(declare-fun e!3374037 () Bool)

(declare-fun tp!1501109 () Bool)

(assert (=> b!5447463 (= e!3374037 tp!1501109)))

(declare-fun b!5447461 () Bool)

(assert (=> b!5447461 (= e!3374037 tp_is_empty!39807)))

(declare-fun b!5447462 () Bool)

(declare-fun tp!1501110 () Bool)

(declare-fun tp!1501107 () Bool)

(assert (=> b!5447462 (= e!3374037 (and tp!1501110 tp!1501107))))

(assert (=> b!5446008 (= tp!1500992 e!3374037)))

(declare-fun b!5447464 () Bool)

(declare-fun tp!1501111 () Bool)

(declare-fun tp!1501108 () Bool)

(assert (=> b!5447464 (= e!3374037 (and tp!1501111 tp!1501108))))

(assert (= (and b!5446008 ((_ is ElementMatch!15277) (regTwo!31067 r!7292))) b!5447461))

(assert (= (and b!5446008 ((_ is Concat!24122) (regTwo!31067 r!7292))) b!5447462))

(assert (= (and b!5446008 ((_ is Star!15277) (regTwo!31067 r!7292))) b!5447463))

(assert (= (and b!5446008 ((_ is Union!15277) (regTwo!31067 r!7292))) b!5447464))

(declare-fun condSetEmpty!35647 () Bool)

(assert (=> setNonEmpty!35641 (= condSetEmpty!35647 (= setRest!35641 ((as const (Array Context!9322 Bool)) false)))))

(declare-fun setRes!35647 () Bool)

(assert (=> setNonEmpty!35641 (= tp!1500993 setRes!35647)))

(declare-fun setIsEmpty!35647 () Bool)

(assert (=> setIsEmpty!35647 setRes!35647))

(declare-fun setNonEmpty!35647 () Bool)

(declare-fun e!3374040 () Bool)

(declare-fun tp!1501116 () Bool)

(declare-fun setElem!35647 () Context!9322)

(assert (=> setNonEmpty!35647 (= setRes!35647 (and tp!1501116 (inv!81439 setElem!35647) e!3374040))))

(declare-fun setRest!35647 () (InoxSet Context!9322))

(assert (=> setNonEmpty!35647 (= setRest!35641 ((_ map or) (store ((as const (Array Context!9322 Bool)) false) setElem!35647 true) setRest!35647))))

(declare-fun b!5447469 () Bool)

(declare-fun tp!1501117 () Bool)

(assert (=> b!5447469 (= e!3374040 tp!1501117)))

(assert (= (and setNonEmpty!35641 condSetEmpty!35647) setIsEmpty!35647))

(assert (= (and setNonEmpty!35641 (not condSetEmpty!35647)) setNonEmpty!35647))

(assert (= setNonEmpty!35647 b!5447469))

(declare-fun m!6467512 () Bool)

(assert (=> setNonEmpty!35647 m!6467512))

(declare-fun b_lambda!207529 () Bool)

(assert (= b_lambda!207521 (or b!5446025 b_lambda!207529)))

(declare-fun bs!1257069 () Bool)

(declare-fun d!1734122 () Bool)

(assert (= bs!1257069 (and d!1734122 b!5446025)))

(assert (=> bs!1257069 (= (dynLambda!24390 lambda!287180 lt!2222248) (derivationStepZipperUp!649 lt!2222248 (h!68454 s!2326)))))

(assert (=> bs!1257069 m!6465590))

(assert (=> d!1733984 d!1734122))

(declare-fun b_lambda!207531 () Bool)

(assert (= b_lambda!207497 (or b!5446025 b_lambda!207531)))

(declare-fun bs!1257070 () Bool)

(declare-fun d!1734124 () Bool)

(assert (= bs!1257070 (and d!1734124 b!5446025)))

(assert (=> bs!1257070 (= (dynLambda!24390 lambda!287180 lt!2222313) (derivationStepZipperUp!649 lt!2222313 (h!68454 s!2326)))))

(declare-fun m!6467514 () Bool)

(assert (=> bs!1257070 m!6467514))

(assert (=> d!1733842 d!1734124))

(declare-fun b_lambda!207533 () Bool)

(assert (= b_lambda!207495 (or b!5446022 b_lambda!207533)))

(declare-fun bs!1257071 () Bool)

(declare-fun d!1734126 () Bool)

(assert (= bs!1257071 (and d!1734126 b!5446022)))

(assert (=> bs!1257071 (= (dynLambda!24389 lambda!287205 (h!68455 (exprs!5161 (h!68456 zl!343)))) (validRegex!7013 (h!68455 (exprs!5161 (h!68456 zl!343)))))))

(declare-fun m!6467516 () Bool)

(assert (=> bs!1257071 m!6467516))

(assert (=> b!5446790 d!1734126))

(declare-fun b_lambda!207535 () Bool)

(assert (= b_lambda!207525 (or b!5446006 b_lambda!207535)))

(declare-fun bs!1257072 () Bool)

(declare-fun d!1734128 () Bool)

(assert (= bs!1257072 (and d!1734128 b!5446006)))

(declare-fun lt!2222592 () Unit!154704)

(assert (=> bs!1257072 (= lt!2222592 (lemmaConcatPreservesForall!244 (exprs!5161 lt!2222124) lt!2222227 lambda!287196))))

(assert (=> bs!1257072 (= (dynLambda!24393 lambda!287195 lt!2222124) (Context!9323 (++!13634 (exprs!5161 lt!2222124) lt!2222227)))))

(declare-fun m!6467518 () Bool)

(assert (=> bs!1257072 m!6467518))

(declare-fun m!6467520 () Bool)

(assert (=> bs!1257072 m!6467520))

(assert (=> d!1734076 d!1734128))

(declare-fun b_lambda!207537 () Bool)

(assert (= b_lambda!207523 (or b!5446025 b_lambda!207537)))

(declare-fun bs!1257073 () Bool)

(declare-fun d!1734130 () Bool)

(assert (= bs!1257073 (and d!1734130 b!5446025)))

(assert (=> bs!1257073 (= (dynLambda!24390 lambda!287180 (h!68456 zl!343)) (derivationStepZipperUp!649 (h!68456 zl!343) (h!68454 s!2326)))))

(assert (=> bs!1257073 m!6465582))

(assert (=> d!1733992 d!1734130))

(check-sat (not b!5447251) (not d!1733994) (not b!5447434) (not b!5446580) (not d!1734086) (not b!5447115) (not d!1733880) (not b!5447116) (not d!1734046) (not d!1734044) (not b!5447259) (not b!5447039) (not bm!393085) (not d!1734112) (not d!1733934) (not d!1734022) (not bm!393023) (not b!5447396) (not b!5447456) (not b!5446457) (not b!5447314) (not d!1734072) (not d!1734064) (not b_lambda!207527) (not b!5447218) (not d!1733738) (not b!5447298) (not d!1733984) (not b!5447023) (not setNonEmpty!35647) (not d!1733902) (not b!5446403) (not b!5447385) (not d!1733724) (not b!5447335) (not b!5446404) (not b!5447238) (not b_lambda!207537) (not b!5447124) (not b_lambda!207519) (not bm!393092) (not b!5446505) (not b!5447305) (not b!5447258) (not d!1733790) (not b!5447134) (not b!5447253) (not b!5447191) (not b_lambda!207529) (not d!1734104) (not b!5447211) (not b!5446684) (not b!5447312) (not b!5447184) (not bm!393070) (not b!5446799) (not b!5447036) (not d!1733852) (not b!5447293) (not d!1733916) (not bm!393071) (not b!5447443) (not d!1733970) (not bm!393093) (not b!5447021) (not d!1734006) (not b!5447207) (not b!5447212) (not b!5447377) (not d!1734076) (not b!5447156) (not bm!393006) (not b!5447139) (not b!5447435) (not b!5447117) (not b!5447421) (not b!5447175) (not b!5447165) (not d!1734114) (not d!1734018) (not b!5447433) (not b_lambda!207533) (not b!5447441) (not b!5446972) (not bm!393110) (not d!1734094) (not b!5446449) (not d!1733966) (not bm!393104) (not bm!393105) (not b!5447266) (not b!5447017) (not b!5447203) (not d!1733802) (not b!5447380) (not bm!393041) (not b!5447220) (not d!1734008) (not b!5447291) (not b!5446804) (not d!1733960) (not b!5447320) (not b!5446937) (not b!5447192) (not b!5447459) (not b!5447228) (not b!5447294) (not b!5446680) (not d!1733714) (not bm!393096) (not d!1733792) (not d!1733866) (not b!5446940) (not b!5447363) (not d!1733976) (not b!5447462) (not bm!393019) (not bm!393042) (not b!5447196) (not b!5447389) (not b!5447168) (not d!1733936) (not b!5447375) (not d!1734106) (not b!5446944) (not b!5447455) (not b!5447322) (not b!5446683) (not b!5446962) (not b!5446860) (not b!5447040) (not b!5447297) (not d!1734066) (not b!5446450) (not d!1734048) (not d!1733942) (not d!1734010) (not b!5447413) (not d!1733870) (not b!5447193) (not d!1733974) (not b!5446857) (not bm!393046) (not b!5447328) (not b!5446854) (not d!1733946) (not d!1733998) (not b!5447119) (not b!5446852) (not b!5447442) (not b!5447397) (not b!5447374) (not b!5447437) (not b!5447300) (not d!1733924) (not b!5446844) (not d!1734054) (not d!1734028) (not d!1734098) (not b!5447169) (not b!5447235) (not bm!393083) (not b!5447364) (not b!5447395) (not b!5447367) (not b!5447420) (not d!1733964) (not d!1733992) (not b!5446349) (not d!1733794) (not d!1734118) (not b!5447018) (not b!5447463) (not d!1734060) (not b!5447448) (not bs!1257070) (not d!1734102) (not b!5446968) (not b!5447359) (not b!5447172) (not b!5447236) (not b!5447025) (not b!5447022) (not b!5447240) (not b!5447393) (not bm!393084) (not b!5447123) (not b!5447231) (not d!1734100) (not b!5447108) (not b!5447129) (not b!5446801) (not d!1734070) (not b!5447232) (not bm!393102) (not d!1734020) (not b!5447167) (not b!5447160) (not b!5447035) (not b!5447270) (not b!5447458) (not d!1734080) (not b!5447133) (not b!5447234) (not bm!393097) (not d!1733804) (not b!5446942) (not b!5447376) (not d!1733706) (not d!1734042) (not b!5447216) (not b!5447118) (not d!1734002) (not b!5447378) (not b!5446451) (not b!5447109) (not b!5447217) tp_is_empty!39807 (not b!5447400) (not b!5447112) (not b!5446447) (not b!5446454) (not b!5446576) (not bm!393018) (not b!5446679) (not d!1733962) (not b!5446682) (not d!1734036) (not b!5446936) (not d!1734032) (not b!5447331) (not b!5447360) (not b!5447105) (not bm!393106) (not d!1734056) (not b!5446941) (not d!1733906) (not b!5447128) (not b!5446697) (not d!1734000) (not d!1733972) (not b!5447338) (not bm!393054) (not d!1734040) (not d!1733968) (not b!5447379) (not b!5447204) (not b!5446807) (not d!1733840) (not b!5447178) (not b!5447107) (not b!5447254) (not b!5447323) (not b!5446850) (not b!5447332) (not d!1733900) (not b!5447438) (not b_lambda!207505) (not bs!1257072) (not b!5447358) (not bm!393095) (not bm!393094) (not d!1734026) (not b!5447015) (not d!1734078) (not b!5447150) (not b!5447016) (not d!1734116) (not bm!393086) (not b_lambda!207531) (not b!5447414) (not b!5446938) (not b!5446887) (not d!1733980) (not bs!1257073) (not b!5447177) (not d!1733850) (not d!1734052) (not d!1734090) (not d!1733728) (not b_lambda!207535) (not b!5447383) (not b!5447241) (not d!1734068) (not b!5447313) (not d!1733716) (not b!5447247) (not d!1734030) (not b!5447317) (not bm!393101) (not b!5446800) (not d!1733928) (not d!1734110) (not b!5447269) (not b!5447202) (not d!1734088) (not bm!393055) (not b!5447194) (not b!5447439) (not d!1733822) (not b!5447464) (not b!5447200) (not d!1733940) (not d!1733996) (not b!5447224) (not b!5447229) (not d!1734012) (not d!1734034) (not b!5447310) (not bm!393107) (not b!5447362) (not b!5447296) (not b!5447469) (not b!5446791) (not b!5447460) (not d!1734024) (not bm!393103) (not b!5447214) (not b!5447384) (not d!1733978) (not bm!392983) (not b!5447263) (not bm!393057) (not d!1733920) (not b!5446350) (not b!5446504) (not b!5447264) (not bs!1257069) (not b!5447368) (not b!5446961) (not d!1734074) (not b!5447330) (not b!5446693) (not bm!393087) (not bm!393108) (not bm!393088) (not bm!393022) (not b!5447195) (not b!5447230) (not b!5447042) (not b!5447210) (not d!1734084) (not b!5446797) (not b!5447403) (not bm!393109) (not b!5446779) (not d!1733842) (not d!1734092) (not b!5447267) (not d!1733868) (not b!5447381) (not b!5446853) (not b!5447213) (not b!5447387) (not bm!393047) (not b!5447019) (not d!1733938) (not d!1734096) (not b!5446686) (not d!1734120) (not b!5447038) (not bs!1257071))
(check-sat)
