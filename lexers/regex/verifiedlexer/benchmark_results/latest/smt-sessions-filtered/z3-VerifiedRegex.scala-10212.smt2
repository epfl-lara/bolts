; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!532886 () Bool)

(assert start!532886)

(declare-fun b!5037177 () Bool)

(declare-fun e!3146139 () Bool)

(declare-datatypes ((T!104082 0))(
  ( (T!104083 (val!23500 Int)) )
))
(declare-datatypes ((List!58410 0))(
  ( (Nil!58286) (Cons!58286 (h!64734 T!104082) (t!370909 List!58410)) )
))
(declare-datatypes ((IArray!31057 0))(
  ( (IArray!31058 (innerList!15586 List!58410)) )
))
(declare-datatypes ((Conc!15498 0))(
  ( (Node!15498 (left!42676 Conc!15498) (right!43006 Conc!15498) (csize!31226 Int) (cheight!15709 Int)) (Leaf!25711 (xs!18824 IArray!31057) (csize!31227 Int)) (Empty!15498) )
))
(declare-fun t!4198 () Conc!15498)

(declare-fun e!3146142 () Bool)

(declare-fun inv!77073 (IArray!31057) Bool)

(assert (=> b!5037177 (= e!3146139 (and (inv!77073 (xs!18824 t!4198)) e!3146142))))

(declare-fun b!5037178 () Bool)

(declare-fun res!2146255 () Bool)

(declare-fun e!3146140 () Bool)

(assert (=> b!5037178 (=> (not res!2146255) (not e!3146140))))

(declare-fun i!618 () Int)

(assert (=> b!5037178 (= res!2146255 (<= 0 i!618))))

(declare-fun b!5037179 () Bool)

(declare-fun res!2146257 () Bool)

(assert (=> b!5037179 (=> (not res!2146257) (not e!3146140))))

(get-info :version)

(assert (=> b!5037179 (= res!2146257 (and (not ((_ is Empty!15498) t!4198)) ((_ is Leaf!25711) t!4198) (> i!618 0) (not (= i!618 (csize!31227 t!4198)))))))

(declare-fun e!3146141 () Bool)

(declare-fun b!5037180 () Bool)

(declare-fun lt!2083821 () List!58410)

(declare-datatypes ((tuple2!63218 0))(
  ( (tuple2!63219 (_1!34912 List!58410) (_2!34912 List!58410)) )
))
(declare-fun lt!2083822 () tuple2!63218)

(declare-fun drop!2622 (List!58410 Int) List!58410)

(assert (=> b!5037180 (= e!3146141 (not (= (_2!34912 lt!2083822) (drop!2622 lt!2083821 i!618))))))

(declare-fun res!2146256 () Bool)

(assert (=> start!532886 (=> (not res!2146256) (not e!3146140))))

(declare-fun isBalanced!4360 (Conc!15498) Bool)

(assert (=> start!532886 (= res!2146256 (isBalanced!4360 t!4198))))

(assert (=> start!532886 e!3146140))

(declare-fun inv!77074 (Conc!15498) Bool)

(assert (=> start!532886 (and (inv!77074 t!4198) e!3146139)))

(assert (=> start!532886 true))

(declare-fun b!5037181 () Bool)

(assert (=> b!5037181 (= e!3146140 e!3146141)))

(declare-fun res!2146253 () Bool)

(assert (=> b!5037181 (=> (not res!2146253) (not e!3146141))))

(declare-fun take!815 (List!58410 Int) List!58410)

(assert (=> b!5037181 (= res!2146253 (= (_1!34912 lt!2083822) (take!815 lt!2083821 i!618)))))

(declare-fun splitAtIndex!199 (List!58410 Int) tuple2!63218)

(assert (=> b!5037181 (= lt!2083822 (splitAtIndex!199 lt!2083821 i!618))))

(declare-fun list!18887 (IArray!31057) List!58410)

(assert (=> b!5037181 (= lt!2083821 (list!18887 (xs!18824 t!4198)))))

(declare-fun b!5037182 () Bool)

(declare-fun res!2146254 () Bool)

(assert (=> b!5037182 (=> (not res!2146254) (not e!3146140))))

(declare-fun size!38869 (Conc!15498) Int)

(assert (=> b!5037182 (= res!2146254 (<= i!618 (size!38869 t!4198)))))

(declare-fun tp!1410452 () Bool)

(declare-fun b!5037183 () Bool)

(declare-fun tp!1410451 () Bool)

(assert (=> b!5037183 (= e!3146139 (and (inv!77074 (left!42676 t!4198)) tp!1410451 (inv!77074 (right!43006 t!4198)) tp!1410452))))

(declare-fun b!5037184 () Bool)

(declare-fun tp!1410450 () Bool)

(assert (=> b!5037184 (= e!3146142 tp!1410450)))

(assert (= (and start!532886 res!2146256) b!5037178))

(assert (= (and b!5037178 res!2146255) b!5037182))

(assert (= (and b!5037182 res!2146254) b!5037179))

(assert (= (and b!5037179 res!2146257) b!5037181))

(assert (= (and b!5037181 res!2146253) b!5037180))

(assert (= (and start!532886 ((_ is Node!15498) t!4198)) b!5037183))

(assert (= b!5037177 b!5037184))

(assert (= (and start!532886 ((_ is Leaf!25711) t!4198)) b!5037177))

(declare-fun m!6071192 () Bool)

(assert (=> b!5037180 m!6071192))

(declare-fun m!6071194 () Bool)

(assert (=> start!532886 m!6071194))

(declare-fun m!6071196 () Bool)

(assert (=> start!532886 m!6071196))

(declare-fun m!6071198 () Bool)

(assert (=> b!5037183 m!6071198))

(declare-fun m!6071200 () Bool)

(assert (=> b!5037183 m!6071200))

(declare-fun m!6071202 () Bool)

(assert (=> b!5037181 m!6071202))

(declare-fun m!6071204 () Bool)

(assert (=> b!5037181 m!6071204))

(declare-fun m!6071206 () Bool)

(assert (=> b!5037181 m!6071206))

(declare-fun m!6071208 () Bool)

(assert (=> b!5037177 m!6071208))

(declare-fun m!6071210 () Bool)

(assert (=> b!5037182 m!6071210))

(check-sat (not b!5037184) (not b!5037182) (not b!5037183) (not b!5037181) (not start!532886) (not b!5037180) (not b!5037177))
(check-sat)
(get-model)

(declare-fun b!5037211 () Bool)

(declare-fun e!3146161 () List!58410)

(assert (=> b!5037211 (= e!3146161 (Cons!58286 (h!64734 lt!2083821) (take!815 (t!370909 lt!2083821) (- i!618 1))))))

(declare-fun b!5037212 () Bool)

(declare-fun e!3146159 () Int)

(assert (=> b!5037212 (= e!3146159 i!618)))

(declare-fun b!5037213 () Bool)

(assert (=> b!5037213 (= e!3146161 Nil!58286)))

(declare-fun b!5037214 () Bool)

(declare-fun e!3146162 () Int)

(assert (=> b!5037214 (= e!3146162 0)))

(declare-fun b!5037215 () Bool)

(assert (=> b!5037215 (= e!3146162 e!3146159)))

(declare-fun c!862895 () Bool)

(declare-fun size!38870 (List!58410) Int)

(assert (=> b!5037215 (= c!862895 (>= i!618 (size!38870 lt!2083821)))))

(declare-fun d!1620269 () Bool)

(declare-fun e!3146160 () Bool)

(assert (=> d!1620269 e!3146160))

(declare-fun res!2146264 () Bool)

(assert (=> d!1620269 (=> (not res!2146264) (not e!3146160))))

(declare-fun lt!2083825 () List!58410)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10348 (List!58410) (InoxSet T!104082))

(assert (=> d!1620269 (= res!2146264 (= ((_ map implies) (content!10348 lt!2083825) (content!10348 lt!2083821)) ((as const (InoxSet T!104082)) true)))))

(assert (=> d!1620269 (= lt!2083825 e!3146161)))

(declare-fun c!862894 () Bool)

(assert (=> d!1620269 (= c!862894 (or ((_ is Nil!58286) lt!2083821) (<= i!618 0)))))

(assert (=> d!1620269 (= (take!815 lt!2083821 i!618) lt!2083825)))

(declare-fun b!5037216 () Bool)

(assert (=> b!5037216 (= e!3146159 (size!38870 lt!2083821))))

(declare-fun b!5037217 () Bool)

(assert (=> b!5037217 (= e!3146160 (= (size!38870 lt!2083825) e!3146162))))

(declare-fun c!862896 () Bool)

(assert (=> b!5037217 (= c!862896 (<= i!618 0))))

(assert (= (and d!1620269 c!862894) b!5037213))

(assert (= (and d!1620269 (not c!862894)) b!5037211))

(assert (= (and d!1620269 res!2146264) b!5037217))

(assert (= (and b!5037217 c!862896) b!5037214))

(assert (= (and b!5037217 (not c!862896)) b!5037215))

(assert (= (and b!5037215 c!862895) b!5037216))

(assert (= (and b!5037215 (not c!862895)) b!5037212))

(declare-fun m!6071220 () Bool)

(assert (=> b!5037217 m!6071220))

(declare-fun m!6071222 () Bool)

(assert (=> d!1620269 m!6071222))

(declare-fun m!6071224 () Bool)

(assert (=> d!1620269 m!6071224))

(declare-fun m!6071226 () Bool)

(assert (=> b!5037216 m!6071226))

(assert (=> b!5037215 m!6071226))

(declare-fun m!6071228 () Bool)

(assert (=> b!5037211 m!6071228))

(assert (=> b!5037181 d!1620269))

(declare-fun b!5037257 () Bool)

(declare-fun e!3146185 () tuple2!63218)

(assert (=> b!5037257 (= e!3146185 (tuple2!63219 Nil!58286 lt!2083821))))

(declare-fun b!5037258 () Bool)

(declare-fun e!3146186 () tuple2!63218)

(assert (=> b!5037258 (= e!3146186 e!3146185)))

(declare-fun c!862914 () Bool)

(assert (=> b!5037258 (= c!862914 (<= i!618 0))))

(declare-fun b!5037259 () Bool)

(declare-fun res!2146273 () Bool)

(declare-fun e!3146184 () Bool)

(assert (=> b!5037259 (=> (not res!2146273) (not e!3146184))))

(declare-fun lt!2083837 () tuple2!63218)

(assert (=> b!5037259 (= res!2146273 (= (_1!34912 lt!2083837) (take!815 lt!2083821 i!618)))))

(declare-fun b!5037261 () Bool)

(declare-fun lt!2083836 () tuple2!63218)

(assert (=> b!5037261 (= lt!2083836 (splitAtIndex!199 (t!370909 lt!2083821) (- i!618 1)))))

(assert (=> b!5037261 (= e!3146185 (tuple2!63219 (Cons!58286 (h!64734 lt!2083821) (_1!34912 lt!2083836)) (_2!34912 lt!2083836)))))

(declare-fun b!5037262 () Bool)

(assert (=> b!5037262 (= e!3146184 (= (_2!34912 lt!2083837) (drop!2622 lt!2083821 i!618)))))

(declare-fun b!5037260 () Bool)

(assert (=> b!5037260 (= e!3146186 (tuple2!63219 Nil!58286 Nil!58286))))

(declare-fun d!1620277 () Bool)

(assert (=> d!1620277 e!3146184))

(declare-fun res!2146272 () Bool)

(assert (=> d!1620277 (=> (not res!2146272) (not e!3146184))))

(declare-fun ++!12716 (List!58410 List!58410) List!58410)

(assert (=> d!1620277 (= res!2146272 (= (++!12716 (_1!34912 lt!2083837) (_2!34912 lt!2083837)) lt!2083821))))

(assert (=> d!1620277 (= lt!2083837 e!3146186)))

(declare-fun c!862913 () Bool)

(assert (=> d!1620277 (= c!862913 ((_ is Nil!58286) lt!2083821))))

(assert (=> d!1620277 (= (splitAtIndex!199 lt!2083821 i!618) lt!2083837)))

(assert (= (and d!1620277 c!862913) b!5037260))

(assert (= (and d!1620277 (not c!862913)) b!5037258))

(assert (= (and b!5037258 c!862914) b!5037257))

(assert (= (and b!5037258 (not c!862914)) b!5037261))

(assert (= (and d!1620277 res!2146272) b!5037259))

(assert (= (and b!5037259 res!2146273) b!5037262))

(assert (=> b!5037259 m!6071202))

(declare-fun m!6071244 () Bool)

(assert (=> b!5037261 m!6071244))

(assert (=> b!5037262 m!6071192))

(declare-fun m!6071246 () Bool)

(assert (=> d!1620277 m!6071246))

(assert (=> b!5037181 d!1620277))

(declare-fun d!1620283 () Bool)

(assert (=> d!1620283 (= (list!18887 (xs!18824 t!4198)) (innerList!15586 (xs!18824 t!4198)))))

(assert (=> b!5037181 d!1620283))

(declare-fun b!5037302 () Bool)

(declare-fun e!3146207 () Int)

(assert (=> b!5037302 (= e!3146207 0)))

(declare-fun b!5037303 () Bool)

(declare-fun e!3146205 () List!58410)

(assert (=> b!5037303 (= e!3146205 (drop!2622 (t!370909 lt!2083821) (- i!618 1)))))

(declare-fun b!5037304 () Bool)

(declare-fun e!3146206 () Int)

(declare-fun call!351374 () Int)

(assert (=> b!5037304 (= e!3146206 call!351374)))

(declare-fun b!5037305 () Bool)

(assert (=> b!5037305 (= e!3146206 e!3146207)))

(declare-fun c!862926 () Bool)

(assert (=> b!5037305 (= c!862926 (>= i!618 call!351374))))

(declare-fun bm!351369 () Bool)

(assert (=> bm!351369 (= call!351374 (size!38870 lt!2083821))))

(declare-fun b!5037307 () Bool)

(declare-fun e!3146208 () List!58410)

(assert (=> b!5037307 (= e!3146208 Nil!58286)))

(declare-fun b!5037308 () Bool)

(assert (=> b!5037308 (= e!3146208 e!3146205)))

(declare-fun c!862924 () Bool)

(assert (=> b!5037308 (= c!862924 (<= i!618 0))))

(declare-fun b!5037309 () Bool)

(assert (=> b!5037309 (= e!3146205 lt!2083821)))

(declare-fun b!5037310 () Bool)

(assert (=> b!5037310 (= e!3146207 (- call!351374 i!618))))

(declare-fun d!1620285 () Bool)

(declare-fun e!3146209 () Bool)

(assert (=> d!1620285 e!3146209))

(declare-fun res!2146295 () Bool)

(assert (=> d!1620285 (=> (not res!2146295) (not e!3146209))))

(declare-fun lt!2083840 () List!58410)

(assert (=> d!1620285 (= res!2146295 (= ((_ map implies) (content!10348 lt!2083840) (content!10348 lt!2083821)) ((as const (InoxSet T!104082)) true)))))

(assert (=> d!1620285 (= lt!2083840 e!3146208)))

(declare-fun c!862927 () Bool)

(assert (=> d!1620285 (= c!862927 ((_ is Nil!58286) lt!2083821))))

(assert (=> d!1620285 (= (drop!2622 lt!2083821 i!618) lt!2083840)))

(declare-fun b!5037306 () Bool)

(assert (=> b!5037306 (= e!3146209 (= (size!38870 lt!2083840) e!3146206))))

(declare-fun c!862925 () Bool)

(assert (=> b!5037306 (= c!862925 (<= i!618 0))))

(assert (= (and d!1620285 c!862927) b!5037307))

(assert (= (and d!1620285 (not c!862927)) b!5037308))

(assert (= (and b!5037308 c!862924) b!5037309))

(assert (= (and b!5037308 (not c!862924)) b!5037303))

(assert (= (and d!1620285 res!2146295) b!5037306))

(assert (= (and b!5037306 c!862925) b!5037304))

(assert (= (and b!5037306 (not c!862925)) b!5037305))

(assert (= (and b!5037305 c!862926) b!5037302))

(assert (= (and b!5037305 (not c!862926)) b!5037310))

(assert (= (or b!5037304 b!5037305 b!5037310) bm!351369))

(declare-fun m!6071264 () Bool)

(assert (=> b!5037303 m!6071264))

(assert (=> bm!351369 m!6071226))

(declare-fun m!6071266 () Bool)

(assert (=> d!1620285 m!6071266))

(assert (=> d!1620285 m!6071224))

(declare-fun m!6071268 () Bool)

(assert (=> b!5037306 m!6071268))

(assert (=> b!5037180 d!1620285))

(declare-fun b!5037344 () Bool)

(declare-fun e!3146226 () Bool)

(declare-fun isEmpty!31514 (Conc!15498) Bool)

(assert (=> b!5037344 (= e!3146226 (not (isEmpty!31514 (right!43006 t!4198))))))

(declare-fun b!5037345 () Bool)

(declare-fun res!2146314 () Bool)

(assert (=> b!5037345 (=> (not res!2146314) (not e!3146226))))

(assert (=> b!5037345 (= res!2146314 (isBalanced!4360 (right!43006 t!4198)))))

(declare-fun b!5037346 () Bool)

(declare-fun res!2146315 () Bool)

(assert (=> b!5037346 (=> (not res!2146315) (not e!3146226))))

(assert (=> b!5037346 (= res!2146315 (not (isEmpty!31514 (left!42676 t!4198))))))

(declare-fun b!5037347 () Bool)

(declare-fun res!2146316 () Bool)

(assert (=> b!5037347 (=> (not res!2146316) (not e!3146226))))

(assert (=> b!5037347 (= res!2146316 (isBalanced!4360 (left!42676 t!4198)))))

(declare-fun d!1620291 () Bool)

(declare-fun res!2146313 () Bool)

(declare-fun e!3146227 () Bool)

(assert (=> d!1620291 (=> res!2146313 e!3146227)))

(assert (=> d!1620291 (= res!2146313 (not ((_ is Node!15498) t!4198)))))

(assert (=> d!1620291 (= (isBalanced!4360 t!4198) e!3146227)))

(declare-fun b!5037348 () Bool)

(assert (=> b!5037348 (= e!3146227 e!3146226)))

(declare-fun res!2146312 () Bool)

(assert (=> b!5037348 (=> (not res!2146312) (not e!3146226))))

(declare-fun height!2077 (Conc!15498) Int)

(assert (=> b!5037348 (= res!2146312 (<= (- 1) (- (height!2077 (left!42676 t!4198)) (height!2077 (right!43006 t!4198)))))))

(declare-fun b!5037349 () Bool)

(declare-fun res!2146311 () Bool)

(assert (=> b!5037349 (=> (not res!2146311) (not e!3146226))))

(assert (=> b!5037349 (= res!2146311 (<= (- (height!2077 (left!42676 t!4198)) (height!2077 (right!43006 t!4198))) 1))))

(assert (= (and d!1620291 (not res!2146313)) b!5037348))

(assert (= (and b!5037348 res!2146312) b!5037349))

(assert (= (and b!5037349 res!2146311) b!5037347))

(assert (= (and b!5037347 res!2146316) b!5037345))

(assert (= (and b!5037345 res!2146314) b!5037346))

(assert (= (and b!5037346 res!2146315) b!5037344))

(declare-fun m!6071276 () Bool)

(assert (=> b!5037349 m!6071276))

(declare-fun m!6071278 () Bool)

(assert (=> b!5037349 m!6071278))

(declare-fun m!6071280 () Bool)

(assert (=> b!5037345 m!6071280))

(assert (=> b!5037348 m!6071276))

(assert (=> b!5037348 m!6071278))

(declare-fun m!6071282 () Bool)

(assert (=> b!5037344 m!6071282))

(declare-fun m!6071284 () Bool)

(assert (=> b!5037347 m!6071284))

(declare-fun m!6071286 () Bool)

(assert (=> b!5037346 m!6071286))

(assert (=> start!532886 d!1620291))

(declare-fun d!1620295 () Bool)

(declare-fun c!862943 () Bool)

(assert (=> d!1620295 (= c!862943 ((_ is Node!15498) t!4198))))

(declare-fun e!3146236 () Bool)

(assert (=> d!1620295 (= (inv!77074 t!4198) e!3146236)))

(declare-fun b!5037364 () Bool)

(declare-fun inv!77077 (Conc!15498) Bool)

(assert (=> b!5037364 (= e!3146236 (inv!77077 t!4198))))

(declare-fun b!5037365 () Bool)

(declare-fun e!3146239 () Bool)

(assert (=> b!5037365 (= e!3146236 e!3146239)))

(declare-fun res!2146320 () Bool)

(assert (=> b!5037365 (= res!2146320 (not ((_ is Leaf!25711) t!4198)))))

(assert (=> b!5037365 (=> res!2146320 e!3146239)))

(declare-fun b!5037366 () Bool)

(declare-fun inv!77078 (Conc!15498) Bool)

(assert (=> b!5037366 (= e!3146239 (inv!77078 t!4198))))

(assert (= (and d!1620295 c!862943) b!5037364))

(assert (= (and d!1620295 (not c!862943)) b!5037365))

(assert (= (and b!5037365 (not res!2146320)) b!5037366))

(declare-fun m!6071288 () Bool)

(assert (=> b!5037364 m!6071288))

(declare-fun m!6071290 () Bool)

(assert (=> b!5037366 m!6071290))

(assert (=> start!532886 d!1620295))

(declare-fun d!1620297 () Bool)

(declare-fun lt!2083852 () Int)

(declare-fun list!18889 (Conc!15498) List!58410)

(assert (=> d!1620297 (= lt!2083852 (size!38870 (list!18889 t!4198)))))

(assert (=> d!1620297 (= lt!2083852 (ite ((_ is Empty!15498) t!4198) 0 (ite ((_ is Leaf!25711) t!4198) (csize!31227 t!4198) (csize!31226 t!4198))))))

(assert (=> d!1620297 (= (size!38869 t!4198) lt!2083852)))

(declare-fun bs!1188785 () Bool)

(assert (= bs!1188785 d!1620297))

(declare-fun m!6071292 () Bool)

(assert (=> bs!1188785 m!6071292))

(assert (=> bs!1188785 m!6071292))

(declare-fun m!6071294 () Bool)

(assert (=> bs!1188785 m!6071294))

(assert (=> b!5037182 d!1620297))

(declare-fun d!1620299 () Bool)

(assert (=> d!1620299 (= (inv!77073 (xs!18824 t!4198)) (<= (size!38870 (innerList!15586 (xs!18824 t!4198))) 2147483647))))

(declare-fun bs!1188786 () Bool)

(assert (= bs!1188786 d!1620299))

(declare-fun m!6071300 () Bool)

(assert (=> bs!1188786 m!6071300))

(assert (=> b!5037177 d!1620299))

(declare-fun d!1620305 () Bool)

(declare-fun c!862946 () Bool)

(assert (=> d!1620305 (= c!862946 ((_ is Node!15498) (left!42676 t!4198)))))

(declare-fun e!3146243 () Bool)

(assert (=> d!1620305 (= (inv!77074 (left!42676 t!4198)) e!3146243)))

(declare-fun b!5037377 () Bool)

(assert (=> b!5037377 (= e!3146243 (inv!77077 (left!42676 t!4198)))))

(declare-fun b!5037378 () Bool)

(declare-fun e!3146244 () Bool)

(assert (=> b!5037378 (= e!3146243 e!3146244)))

(declare-fun res!2146326 () Bool)

(assert (=> b!5037378 (= res!2146326 (not ((_ is Leaf!25711) (left!42676 t!4198))))))

(assert (=> b!5037378 (=> res!2146326 e!3146244)))

(declare-fun b!5037379 () Bool)

(assert (=> b!5037379 (= e!3146244 (inv!77078 (left!42676 t!4198)))))

(assert (= (and d!1620305 c!862946) b!5037377))

(assert (= (and d!1620305 (not c!862946)) b!5037378))

(assert (= (and b!5037378 (not res!2146326)) b!5037379))

(declare-fun m!6071302 () Bool)

(assert (=> b!5037377 m!6071302))

(declare-fun m!6071304 () Bool)

(assert (=> b!5037379 m!6071304))

(assert (=> b!5037183 d!1620305))

(declare-fun d!1620307 () Bool)

(declare-fun c!862947 () Bool)

(assert (=> d!1620307 (= c!862947 ((_ is Node!15498) (right!43006 t!4198)))))

(declare-fun e!3146245 () Bool)

(assert (=> d!1620307 (= (inv!77074 (right!43006 t!4198)) e!3146245)))

(declare-fun b!5037380 () Bool)

(assert (=> b!5037380 (= e!3146245 (inv!77077 (right!43006 t!4198)))))

(declare-fun b!5037381 () Bool)

(declare-fun e!3146246 () Bool)

(assert (=> b!5037381 (= e!3146245 e!3146246)))

(declare-fun res!2146327 () Bool)

(assert (=> b!5037381 (= res!2146327 (not ((_ is Leaf!25711) (right!43006 t!4198))))))

(assert (=> b!5037381 (=> res!2146327 e!3146246)))

(declare-fun b!5037382 () Bool)

(assert (=> b!5037382 (= e!3146246 (inv!77078 (right!43006 t!4198)))))

(assert (= (and d!1620307 c!862947) b!5037380))

(assert (= (and d!1620307 (not c!862947)) b!5037381))

(assert (= (and b!5037381 (not res!2146327)) b!5037382))

(declare-fun m!6071306 () Bool)

(assert (=> b!5037380 m!6071306))

(declare-fun m!6071308 () Bool)

(assert (=> b!5037382 m!6071308))

(assert (=> b!5037183 d!1620307))

(declare-fun b!5037393 () Bool)

(declare-fun e!3146251 () Bool)

(declare-fun tp_is_empty!36757 () Bool)

(declare-fun tp!1410459 () Bool)

(assert (=> b!5037393 (= e!3146251 (and tp_is_empty!36757 tp!1410459))))

(assert (=> b!5037184 (= tp!1410450 e!3146251)))

(assert (= (and b!5037184 ((_ is Cons!58286) (innerList!15586 (xs!18824 t!4198)))) b!5037393))

(declare-fun b!5037407 () Bool)

(declare-fun tp!1410471 () Bool)

(declare-fun tp!1410473 () Bool)

(declare-fun e!3146260 () Bool)

(assert (=> b!5037407 (= e!3146260 (and (inv!77074 (left!42676 (left!42676 t!4198))) tp!1410471 (inv!77074 (right!43006 (left!42676 t!4198))) tp!1410473))))

(declare-fun b!5037409 () Bool)

(declare-fun e!3146261 () Bool)

(declare-fun tp!1410472 () Bool)

(assert (=> b!5037409 (= e!3146261 tp!1410472)))

(declare-fun b!5037408 () Bool)

(assert (=> b!5037408 (= e!3146260 (and (inv!77073 (xs!18824 (left!42676 t!4198))) e!3146261))))

(assert (=> b!5037183 (= tp!1410451 (and (inv!77074 (left!42676 t!4198)) e!3146260))))

(assert (= (and b!5037183 ((_ is Node!15498) (left!42676 t!4198))) b!5037407))

(assert (= b!5037408 b!5037409))

(assert (= (and b!5037183 ((_ is Leaf!25711) (left!42676 t!4198))) b!5037408))

(declare-fun m!6071320 () Bool)

(assert (=> b!5037407 m!6071320))

(declare-fun m!6071324 () Bool)

(assert (=> b!5037407 m!6071324))

(declare-fun m!6071328 () Bool)

(assert (=> b!5037408 m!6071328))

(assert (=> b!5037183 m!6071198))

(declare-fun e!3146266 () Bool)

(declare-fun tp!1410481 () Bool)

(declare-fun b!5037417 () Bool)

(declare-fun tp!1410477 () Bool)

(assert (=> b!5037417 (= e!3146266 (and (inv!77074 (left!42676 (right!43006 t!4198))) tp!1410477 (inv!77074 (right!43006 (right!43006 t!4198))) tp!1410481))))

(declare-fun b!5037419 () Bool)

(declare-fun e!3146267 () Bool)

(declare-fun tp!1410478 () Bool)

(assert (=> b!5037419 (= e!3146267 tp!1410478)))

(declare-fun b!5037418 () Bool)

(assert (=> b!5037418 (= e!3146266 (and (inv!77073 (xs!18824 (right!43006 t!4198))) e!3146267))))

(assert (=> b!5037183 (= tp!1410452 (and (inv!77074 (right!43006 t!4198)) e!3146266))))

(assert (= (and b!5037183 ((_ is Node!15498) (right!43006 t!4198))) b!5037417))

(assert (= b!5037418 b!5037419))

(assert (= (and b!5037183 ((_ is Leaf!25711) (right!43006 t!4198))) b!5037418))

(declare-fun m!6071330 () Bool)

(assert (=> b!5037417 m!6071330))

(declare-fun m!6071332 () Bool)

(assert (=> b!5037417 m!6071332))

(declare-fun m!6071334 () Bool)

(assert (=> b!5037418 m!6071334))

(assert (=> b!5037183 m!6071200))

(check-sat (not b!5037259) (not b!5037349) (not b!5037380) (not b!5037347) (not d!1620297) (not b!5037377) (not b!5037261) (not d!1620299) (not b!5037409) (not b!5037417) (not b!5037211) (not d!1620277) tp_is_empty!36757 (not d!1620269) (not b!5037262) (not b!5037346) (not b!5037303) (not b!5037217) (not b!5037408) (not b!5037382) (not b!5037364) (not b!5037345) (not b!5037379) (not b!5037306) (not b!5037393) (not b!5037183) (not b!5037419) (not b!5037215) (not b!5037348) (not b!5037418) (not bm!351369) (not d!1620285) (not b!5037344) (not b!5037216) (not b!5037366) (not b!5037407))
(check-sat)
