; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!519568 () Bool)

(assert start!519568)

(declare-fun setIsEmpty!27882 () Bool)

(declare-fun setRes!27882 () Bool)

(assert (=> setIsEmpty!27882 setRes!27882))

(declare-fun b!4939348 () Bool)

(declare-fun e!3086241 () Bool)

(declare-datatypes ((C!27132 0))(
  ( (C!27133 (val!22900 Int)) )
))
(declare-datatypes ((List!57009 0))(
  ( (Nil!56885) (Cons!56885 (h!63333 C!27132) (t!367509 List!57009)) )
))
(declare-datatypes ((IArray!29981 0))(
  ( (IArray!29982 (innerList!15048 List!57009)) )
))
(declare-datatypes ((Conc!14960 0))(
  ( (Node!14960 (left!41494 Conc!14960) (right!41824 Conc!14960) (csize!30150 Int) (cheight!15171 Int)) (Leaf!24873 (xs!18284 IArray!29981) (csize!30151 Int)) (Empty!14960) )
))
(declare-datatypes ((BalanceConc!29350 0))(
  ( (BalanceConc!29351 (c!842298 Conc!14960)) )
))
(declare-fun totalInput!685 () BalanceConc!29350)

(declare-fun tp!1386000 () Bool)

(declare-fun inv!73972 (Conc!14960) Bool)

(assert (=> b!4939348 (= e!3086241 (and (inv!73972 (c!842298 totalInput!685)) tp!1386000))))

(declare-fun b!4939349 () Bool)

(declare-fun e!3086247 () Bool)

(declare-fun e!3086244 () Bool)

(assert (=> b!4939349 (= e!3086247 e!3086244)))

(declare-fun res!2107950 () Bool)

(assert (=> b!4939349 (=> res!2107950 e!3086244)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13449 0))(
  ( (ElementMatch!13449 (c!842299 C!27132)) (Concat!22022 (regOne!27410 Regex!13449) (regTwo!27410 Regex!13449)) (EmptyExpr!13449) (Star!13449 (reg!13778 Regex!13449)) (EmptyLang!13449) (Union!13449 (regOne!27411 Regex!13449) (regTwo!27411 Regex!13449)) )
))
(declare-datatypes ((List!57010 0))(
  ( (Nil!56886) (Cons!56886 (h!63334 Regex!13449) (t!367510 List!57010)) )
))
(declare-datatypes ((Context!6182 0))(
  ( (Context!6183 (exprs!3591 List!57010)) )
))
(declare-fun z!3568 () (InoxSet Context!6182))

(declare-fun lostCauseZipper!767 ((InoxSet Context!6182)) Bool)

(assert (=> b!4939349 (= res!2107950 (lostCauseZipper!767 z!3568))))

(declare-fun testedSuffix!70 () List!57009)

(declare-fun lt!2036189 () List!57009)

(assert (=> b!4939349 (and (= testedSuffix!70 lt!2036189) (= lt!2036189 testedSuffix!70))))

(declare-fun testedP!110 () List!57009)

(declare-fun lt!2036193 () List!57009)

(declare-datatypes ((Unit!147633 0))(
  ( (Unit!147634) )
))
(declare-fun lt!2036191 () Unit!147633)

(declare-fun lemmaSamePrefixThenSameSuffix!2445 (List!57009 List!57009 List!57009 List!57009 List!57009) Unit!147633)

(assert (=> b!4939349 (= lt!2036191 (lemmaSamePrefixThenSameSuffix!2445 testedP!110 testedSuffix!70 testedP!110 lt!2036189 lt!2036193))))

(declare-fun getSuffix!3031 (List!57009 List!57009) List!57009)

(assert (=> b!4939349 (= lt!2036189 (getSuffix!3031 lt!2036193 testedP!110))))

(declare-fun b!4939350 () Bool)

(declare-fun res!2107954 () Bool)

(assert (=> b!4939350 (=> res!2107954 e!3086244)))

(declare-fun testedPSize!70 () Int)

(declare-fun totalInputSize!132 () Int)

(assert (=> b!4939350 (= res!2107954 (= testedPSize!70 totalInputSize!132))))

(declare-fun b!4939351 () Bool)

(declare-fun res!2107952 () Bool)

(declare-fun e!3086246 () Bool)

(assert (=> b!4939351 (=> (not res!2107952) (not e!3086246))))

(declare-fun size!37697 (List!57009) Int)

(assert (=> b!4939351 (= res!2107952 (= testedPSize!70 (size!37697 testedP!110)))))

(declare-fun res!2107953 () Bool)

(assert (=> start!519568 (=> (not res!2107953) (not e!3086246))))

(declare-fun lt!2036190 () List!57009)

(assert (=> start!519568 (= res!2107953 (= lt!2036190 lt!2036193))))

(declare-fun list!18087 (BalanceConc!29350) List!57009)

(assert (=> start!519568 (= lt!2036193 (list!18087 totalInput!685))))

(declare-fun ++!12420 (List!57009 List!57009) List!57009)

(assert (=> start!519568 (= lt!2036190 (++!12420 testedP!110 testedSuffix!70))))

(assert (=> start!519568 e!3086246))

(declare-fun e!3086243 () Bool)

(assert (=> start!519568 e!3086243))

(declare-fun condSetEmpty!27882 () Bool)

(assert (=> start!519568 (= condSetEmpty!27882 (= z!3568 ((as const (Array Context!6182 Bool)) false)))))

(assert (=> start!519568 setRes!27882))

(assert (=> start!519568 true))

(declare-fun inv!73973 (BalanceConc!29350) Bool)

(assert (=> start!519568 (and (inv!73973 totalInput!685) e!3086241)))

(declare-fun e!3086245 () Bool)

(assert (=> start!519568 e!3086245))

(declare-fun b!4939352 () Bool)

(declare-fun e!3086242 () Bool)

(declare-fun tp!1385997 () Bool)

(assert (=> b!4939352 (= e!3086242 tp!1385997)))

(declare-fun b!4939353 () Bool)

(declare-fun tp_is_empty!36079 () Bool)

(declare-fun tp!1385999 () Bool)

(assert (=> b!4939353 (= e!3086245 (and tp_is_empty!36079 tp!1385999))))

(declare-fun b!4939354 () Bool)

(declare-fun tp!1386001 () Bool)

(assert (=> b!4939354 (= e!3086243 (and tp_is_empty!36079 tp!1386001))))

(declare-fun b!4939355 () Bool)

(declare-datatypes ((tuple2!61416 0))(
  ( (tuple2!61417 (_1!34011 BalanceConc!29350) (_2!34011 BalanceConc!29350)) )
))
(declare-fun lt!2036188 () tuple2!61416)

(assert (=> b!4939355 (= e!3086244 (= (++!12420 (list!18087 (_1!34011 lt!2036188)) (list!18087 (_2!34011 lt!2036188))) lt!2036193))))

(declare-fun splitAt!360 (BalanceConc!29350 Int) tuple2!61416)

(assert (=> b!4939355 (= lt!2036188 (splitAt!360 totalInput!685 testedPSize!70))))

(declare-fun b!4939356 () Bool)

(declare-fun res!2107949 () Bool)

(assert (=> b!4939356 (=> (not res!2107949) (not e!3086246))))

(declare-fun size!37698 (BalanceConc!29350) Int)

(assert (=> b!4939356 (= res!2107949 (= totalInputSize!132 (size!37698 totalInput!685)))))

(declare-fun b!4939357 () Bool)

(assert (=> b!4939357 (= e!3086246 (not e!3086247))))

(declare-fun res!2107951 () Bool)

(assert (=> b!4939357 (=> res!2107951 e!3086247)))

(declare-fun isPrefix!5049 (List!57009 List!57009) Bool)

(assert (=> b!4939357 (= res!2107951 (not (isPrefix!5049 testedP!110 lt!2036193)))))

(assert (=> b!4939357 (isPrefix!5049 testedP!110 lt!2036190)))

(declare-fun lt!2036192 () Unit!147633)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3273 (List!57009 List!57009) Unit!147633)

(assert (=> b!4939357 (= lt!2036192 (lemmaConcatTwoListThenFirstIsPrefix!3273 testedP!110 testedSuffix!70))))

(declare-fun setElem!27882 () Context!6182)

(declare-fun tp!1385998 () Bool)

(declare-fun setNonEmpty!27882 () Bool)

(declare-fun inv!73974 (Context!6182) Bool)

(assert (=> setNonEmpty!27882 (= setRes!27882 (and tp!1385998 (inv!73974 setElem!27882) e!3086242))))

(declare-fun setRest!27882 () (InoxSet Context!6182))

(assert (=> setNonEmpty!27882 (= z!3568 ((_ map or) (store ((as const (Array Context!6182 Bool)) false) setElem!27882 true) setRest!27882))))

(assert (= (and start!519568 res!2107953) b!4939351))

(assert (= (and b!4939351 res!2107952) b!4939356))

(assert (= (and b!4939356 res!2107949) b!4939357))

(assert (= (and b!4939357 (not res!2107951)) b!4939349))

(assert (= (and b!4939349 (not res!2107950)) b!4939350))

(assert (= (and b!4939350 (not res!2107954)) b!4939355))

(get-info :version)

(assert (= (and start!519568 ((_ is Cons!56885) testedP!110)) b!4939354))

(assert (= (and start!519568 condSetEmpty!27882) setIsEmpty!27882))

(assert (= (and start!519568 (not condSetEmpty!27882)) setNonEmpty!27882))

(assert (= setNonEmpty!27882 b!4939352))

(assert (= start!519568 b!4939348))

(assert (= (and start!519568 ((_ is Cons!56885) testedSuffix!70)) b!4939353))

(declare-fun m!5961794 () Bool)

(assert (=> setNonEmpty!27882 m!5961794))

(declare-fun m!5961796 () Bool)

(assert (=> b!4939356 m!5961796))

(declare-fun m!5961798 () Bool)

(assert (=> b!4939348 m!5961798))

(declare-fun m!5961800 () Bool)

(assert (=> start!519568 m!5961800))

(declare-fun m!5961802 () Bool)

(assert (=> start!519568 m!5961802))

(declare-fun m!5961804 () Bool)

(assert (=> start!519568 m!5961804))

(declare-fun m!5961806 () Bool)

(assert (=> b!4939351 m!5961806))

(declare-fun m!5961808 () Bool)

(assert (=> b!4939355 m!5961808))

(declare-fun m!5961810 () Bool)

(assert (=> b!4939355 m!5961810))

(assert (=> b!4939355 m!5961808))

(assert (=> b!4939355 m!5961810))

(declare-fun m!5961812 () Bool)

(assert (=> b!4939355 m!5961812))

(declare-fun m!5961814 () Bool)

(assert (=> b!4939355 m!5961814))

(declare-fun m!5961816 () Bool)

(assert (=> b!4939349 m!5961816))

(declare-fun m!5961818 () Bool)

(assert (=> b!4939349 m!5961818))

(declare-fun m!5961820 () Bool)

(assert (=> b!4939349 m!5961820))

(declare-fun m!5961822 () Bool)

(assert (=> b!4939357 m!5961822))

(declare-fun m!5961824 () Bool)

(assert (=> b!4939357 m!5961824))

(declare-fun m!5961826 () Bool)

(assert (=> b!4939357 m!5961826))

(check-sat (not b!4939355) (not b!4939354) (not b!4939356) (not start!519568) (not b!4939349) (not b!4939357) tp_is_empty!36079 (not b!4939353) (not b!4939348) (not b!4939352) (not b!4939351) (not setNonEmpty!27882))
(check-sat)
(get-model)

(declare-fun b!4939372 () Bool)

(declare-fun e!3086257 () Bool)

(declare-fun e!3086259 () Bool)

(assert (=> b!4939372 (= e!3086257 e!3086259)))

(declare-fun res!2107966 () Bool)

(assert (=> b!4939372 (=> (not res!2107966) (not e!3086259))))

(assert (=> b!4939372 (= res!2107966 (not ((_ is Nil!56885) lt!2036193)))))

(declare-fun b!4939374 () Bool)

(declare-fun tail!9723 (List!57009) List!57009)

(assert (=> b!4939374 (= e!3086259 (isPrefix!5049 (tail!9723 testedP!110) (tail!9723 lt!2036193)))))

(declare-fun d!1590193 () Bool)

(declare-fun e!3086258 () Bool)

(assert (=> d!1590193 e!3086258))

(declare-fun res!2107964 () Bool)

(assert (=> d!1590193 (=> res!2107964 e!3086258)))

(declare-fun lt!2036199 () Bool)

(assert (=> d!1590193 (= res!2107964 (not lt!2036199))))

(assert (=> d!1590193 (= lt!2036199 e!3086257)))

(declare-fun res!2107963 () Bool)

(assert (=> d!1590193 (=> res!2107963 e!3086257)))

(assert (=> d!1590193 (= res!2107963 ((_ is Nil!56885) testedP!110))))

(assert (=> d!1590193 (= (isPrefix!5049 testedP!110 lt!2036193) lt!2036199)))

(declare-fun b!4939373 () Bool)

(declare-fun res!2107965 () Bool)

(assert (=> b!4939373 (=> (not res!2107965) (not e!3086259))))

(declare-fun head!10584 (List!57009) C!27132)

(assert (=> b!4939373 (= res!2107965 (= (head!10584 testedP!110) (head!10584 lt!2036193)))))

(declare-fun b!4939375 () Bool)

(assert (=> b!4939375 (= e!3086258 (>= (size!37697 lt!2036193) (size!37697 testedP!110)))))

(assert (= (and d!1590193 (not res!2107963)) b!4939372))

(assert (= (and b!4939372 res!2107966) b!4939373))

(assert (= (and b!4939373 res!2107965) b!4939374))

(assert (= (and d!1590193 (not res!2107964)) b!4939375))

(declare-fun m!5961830 () Bool)

(assert (=> b!4939374 m!5961830))

(declare-fun m!5961832 () Bool)

(assert (=> b!4939374 m!5961832))

(assert (=> b!4939374 m!5961830))

(assert (=> b!4939374 m!5961832))

(declare-fun m!5961834 () Bool)

(assert (=> b!4939374 m!5961834))

(declare-fun m!5961836 () Bool)

(assert (=> b!4939373 m!5961836))

(declare-fun m!5961838 () Bool)

(assert (=> b!4939373 m!5961838))

(declare-fun m!5961840 () Bool)

(assert (=> b!4939375 m!5961840))

(assert (=> b!4939375 m!5961806))

(assert (=> b!4939357 d!1590193))

(declare-fun b!4939384 () Bool)

(declare-fun e!3086266 () Bool)

(declare-fun e!3086268 () Bool)

(assert (=> b!4939384 (= e!3086266 e!3086268)))

(declare-fun res!2107978 () Bool)

(assert (=> b!4939384 (=> (not res!2107978) (not e!3086268))))

(assert (=> b!4939384 (= res!2107978 (not ((_ is Nil!56885) lt!2036190)))))

(declare-fun b!4939386 () Bool)

(assert (=> b!4939386 (= e!3086268 (isPrefix!5049 (tail!9723 testedP!110) (tail!9723 lt!2036190)))))

(declare-fun d!1590199 () Bool)

(declare-fun e!3086267 () Bool)

(assert (=> d!1590199 e!3086267))

(declare-fun res!2107976 () Bool)

(assert (=> d!1590199 (=> res!2107976 e!3086267)))

(declare-fun lt!2036202 () Bool)

(assert (=> d!1590199 (= res!2107976 (not lt!2036202))))

(assert (=> d!1590199 (= lt!2036202 e!3086266)))

(declare-fun res!2107975 () Bool)

(assert (=> d!1590199 (=> res!2107975 e!3086266)))

(assert (=> d!1590199 (= res!2107975 ((_ is Nil!56885) testedP!110))))

(assert (=> d!1590199 (= (isPrefix!5049 testedP!110 lt!2036190) lt!2036202)))

(declare-fun b!4939385 () Bool)

(declare-fun res!2107977 () Bool)

(assert (=> b!4939385 (=> (not res!2107977) (not e!3086268))))

(assert (=> b!4939385 (= res!2107977 (= (head!10584 testedP!110) (head!10584 lt!2036190)))))

(declare-fun b!4939387 () Bool)

(assert (=> b!4939387 (= e!3086267 (>= (size!37697 lt!2036190) (size!37697 testedP!110)))))

(assert (= (and d!1590199 (not res!2107975)) b!4939384))

(assert (= (and b!4939384 res!2107978) b!4939385))

(assert (= (and b!4939385 res!2107977) b!4939386))

(assert (= (and d!1590199 (not res!2107976)) b!4939387))

(assert (=> b!4939386 m!5961830))

(declare-fun m!5961842 () Bool)

(assert (=> b!4939386 m!5961842))

(assert (=> b!4939386 m!5961830))

(assert (=> b!4939386 m!5961842))

(declare-fun m!5961844 () Bool)

(assert (=> b!4939386 m!5961844))

(assert (=> b!4939385 m!5961836))

(declare-fun m!5961846 () Bool)

(assert (=> b!4939385 m!5961846))

(declare-fun m!5961848 () Bool)

(assert (=> b!4939387 m!5961848))

(assert (=> b!4939387 m!5961806))

(assert (=> b!4939357 d!1590199))

(declare-fun d!1590201 () Bool)

(assert (=> d!1590201 (isPrefix!5049 testedP!110 (++!12420 testedP!110 testedSuffix!70))))

(declare-fun lt!2036207 () Unit!147633)

(declare-fun choose!36363 (List!57009 List!57009) Unit!147633)

(assert (=> d!1590201 (= lt!2036207 (choose!36363 testedP!110 testedSuffix!70))))

(assert (=> d!1590201 (= (lemmaConcatTwoListThenFirstIsPrefix!3273 testedP!110 testedSuffix!70) lt!2036207)))

(declare-fun bs!1181067 () Bool)

(assert (= bs!1181067 d!1590201))

(assert (=> bs!1181067 m!5961802))

(assert (=> bs!1181067 m!5961802))

(declare-fun m!5961864 () Bool)

(assert (=> bs!1181067 m!5961864))

(declare-fun m!5961866 () Bool)

(assert (=> bs!1181067 m!5961866))

(assert (=> b!4939357 d!1590201))

(declare-fun d!1590205 () Bool)

(declare-fun lt!2036213 () Int)

(assert (=> d!1590205 (>= lt!2036213 0)))

(declare-fun e!3086277 () Int)

(assert (=> d!1590205 (= lt!2036213 e!3086277)))

(declare-fun c!842305 () Bool)

(assert (=> d!1590205 (= c!842305 ((_ is Nil!56885) testedP!110))))

(assert (=> d!1590205 (= (size!37697 testedP!110) lt!2036213)))

(declare-fun b!4939400 () Bool)

(assert (=> b!4939400 (= e!3086277 0)))

(declare-fun b!4939401 () Bool)

(assert (=> b!4939401 (= e!3086277 (+ 1 (size!37697 (t!367509 testedP!110))))))

(assert (= (and d!1590205 c!842305) b!4939400))

(assert (= (and d!1590205 (not c!842305)) b!4939401))

(declare-fun m!5961878 () Bool)

(assert (=> b!4939401 m!5961878))

(assert (=> b!4939351 d!1590205))

(declare-fun d!1590211 () Bool)

(declare-fun lt!2036216 () Int)

(assert (=> d!1590211 (= lt!2036216 (size!37697 (list!18087 totalInput!685)))))

(declare-fun size!37700 (Conc!14960) Int)

(assert (=> d!1590211 (= lt!2036216 (size!37700 (c!842298 totalInput!685)))))

(assert (=> d!1590211 (= (size!37698 totalInput!685) lt!2036216)))

(declare-fun bs!1181069 () Bool)

(assert (= bs!1181069 d!1590211))

(assert (=> bs!1181069 m!5961800))

(assert (=> bs!1181069 m!5961800))

(declare-fun m!5961880 () Bool)

(assert (=> bs!1181069 m!5961880))

(declare-fun m!5961882 () Bool)

(assert (=> bs!1181069 m!5961882))

(assert (=> b!4939356 d!1590211))

(declare-fun b!4939411 () Bool)

(declare-fun e!3086282 () List!57009)

(assert (=> b!4939411 (= e!3086282 (Cons!56885 (h!63333 (list!18087 (_1!34011 lt!2036188))) (++!12420 (t!367509 (list!18087 (_1!34011 lt!2036188))) (list!18087 (_2!34011 lt!2036188)))))))

(declare-fun b!4939413 () Bool)

(declare-fun e!3086283 () Bool)

(declare-fun lt!2036219 () List!57009)

(assert (=> b!4939413 (= e!3086283 (or (not (= (list!18087 (_2!34011 lt!2036188)) Nil!56885)) (= lt!2036219 (list!18087 (_1!34011 lt!2036188)))))))

(declare-fun d!1590213 () Bool)

(assert (=> d!1590213 e!3086283))

(declare-fun res!2107992 () Bool)

(assert (=> d!1590213 (=> (not res!2107992) (not e!3086283))))

(declare-fun content!10118 (List!57009) (InoxSet C!27132))

(assert (=> d!1590213 (= res!2107992 (= (content!10118 lt!2036219) ((_ map or) (content!10118 (list!18087 (_1!34011 lt!2036188))) (content!10118 (list!18087 (_2!34011 lt!2036188))))))))

(assert (=> d!1590213 (= lt!2036219 e!3086282)))

(declare-fun c!842308 () Bool)

(assert (=> d!1590213 (= c!842308 ((_ is Nil!56885) (list!18087 (_1!34011 lt!2036188))))))

(assert (=> d!1590213 (= (++!12420 (list!18087 (_1!34011 lt!2036188)) (list!18087 (_2!34011 lt!2036188))) lt!2036219)))

(declare-fun b!4939410 () Bool)

(assert (=> b!4939410 (= e!3086282 (list!18087 (_2!34011 lt!2036188)))))

(declare-fun b!4939412 () Bool)

(declare-fun res!2107991 () Bool)

(assert (=> b!4939412 (=> (not res!2107991) (not e!3086283))))

(assert (=> b!4939412 (= res!2107991 (= (size!37697 lt!2036219) (+ (size!37697 (list!18087 (_1!34011 lt!2036188))) (size!37697 (list!18087 (_2!34011 lt!2036188))))))))

(assert (= (and d!1590213 c!842308) b!4939410))

(assert (= (and d!1590213 (not c!842308)) b!4939411))

(assert (= (and d!1590213 res!2107992) b!4939412))

(assert (= (and b!4939412 res!2107991) b!4939413))

(assert (=> b!4939411 m!5961810))

(declare-fun m!5961884 () Bool)

(assert (=> b!4939411 m!5961884))

(declare-fun m!5961886 () Bool)

(assert (=> d!1590213 m!5961886))

(assert (=> d!1590213 m!5961808))

(declare-fun m!5961888 () Bool)

(assert (=> d!1590213 m!5961888))

(assert (=> d!1590213 m!5961810))

(declare-fun m!5961890 () Bool)

(assert (=> d!1590213 m!5961890))

(declare-fun m!5961892 () Bool)

(assert (=> b!4939412 m!5961892))

(assert (=> b!4939412 m!5961808))

(declare-fun m!5961894 () Bool)

(assert (=> b!4939412 m!5961894))

(assert (=> b!4939412 m!5961810))

(declare-fun m!5961896 () Bool)

(assert (=> b!4939412 m!5961896))

(assert (=> b!4939355 d!1590213))

(declare-fun d!1590215 () Bool)

(declare-fun list!18089 (Conc!14960) List!57009)

(assert (=> d!1590215 (= (list!18087 (_1!34011 lt!2036188)) (list!18089 (c!842298 (_1!34011 lt!2036188))))))

(declare-fun bs!1181070 () Bool)

(assert (= bs!1181070 d!1590215))

(declare-fun m!5961898 () Bool)

(assert (=> bs!1181070 m!5961898))

(assert (=> b!4939355 d!1590215))

(declare-fun d!1590217 () Bool)

(assert (=> d!1590217 (= (list!18087 (_2!34011 lt!2036188)) (list!18089 (c!842298 (_2!34011 lt!2036188))))))

(declare-fun bs!1181071 () Bool)

(assert (= bs!1181071 d!1590217))

(declare-fun m!5961900 () Bool)

(assert (=> bs!1181071 m!5961900))

(assert (=> b!4939355 d!1590217))

(declare-fun d!1590219 () Bool)

(declare-fun e!3086288 () Bool)

(assert (=> d!1590219 e!3086288))

(declare-fun res!2107998 () Bool)

(assert (=> d!1590219 (=> (not res!2107998) (not e!3086288))))

(declare-fun lt!2036228 () tuple2!61416)

(declare-fun isBalanced!4128 (Conc!14960) Bool)

(assert (=> d!1590219 (= res!2107998 (isBalanced!4128 (c!842298 (_1!34011 lt!2036228))))))

(declare-datatypes ((tuple2!61422 0))(
  ( (tuple2!61423 (_1!34014 Conc!14960) (_2!34014 Conc!14960)) )
))
(declare-fun lt!2036229 () tuple2!61422)

(assert (=> d!1590219 (= lt!2036228 (tuple2!61417 (BalanceConc!29351 (_1!34014 lt!2036229)) (BalanceConc!29351 (_2!34014 lt!2036229))))))

(declare-fun splitAt!362 (Conc!14960 Int) tuple2!61422)

(assert (=> d!1590219 (= lt!2036229 (splitAt!362 (c!842298 totalInput!685) testedPSize!70))))

(assert (=> d!1590219 (isBalanced!4128 (c!842298 totalInput!685))))

(assert (=> d!1590219 (= (splitAt!360 totalInput!685 testedPSize!70) lt!2036228)))

(declare-fun b!4939422 () Bool)

(declare-fun res!2107997 () Bool)

(assert (=> b!4939422 (=> (not res!2107997) (not e!3086288))))

(assert (=> b!4939422 (= res!2107997 (isBalanced!4128 (c!842298 (_2!34011 lt!2036228))))))

(declare-fun b!4939423 () Bool)

(declare-datatypes ((tuple2!61424 0))(
  ( (tuple2!61425 (_1!34015 List!57009) (_2!34015 List!57009)) )
))
(declare-fun splitAtIndex!134 (List!57009 Int) tuple2!61424)

(assert (=> b!4939423 (= e!3086288 (= (tuple2!61425 (list!18087 (_1!34011 lt!2036228)) (list!18087 (_2!34011 lt!2036228))) (splitAtIndex!134 (list!18087 totalInput!685) testedPSize!70)))))

(assert (= (and d!1590219 res!2107998) b!4939422))

(assert (= (and b!4939422 res!2107997) b!4939423))

(declare-fun m!5961902 () Bool)

(assert (=> d!1590219 m!5961902))

(declare-fun m!5961904 () Bool)

(assert (=> d!1590219 m!5961904))

(declare-fun m!5961906 () Bool)

(assert (=> d!1590219 m!5961906))

(declare-fun m!5961908 () Bool)

(assert (=> b!4939422 m!5961908))

(declare-fun m!5961910 () Bool)

(assert (=> b!4939423 m!5961910))

(declare-fun m!5961912 () Bool)

(assert (=> b!4939423 m!5961912))

(assert (=> b!4939423 m!5961800))

(assert (=> b!4939423 m!5961800))

(declare-fun m!5961914 () Bool)

(assert (=> b!4939423 m!5961914))

(assert (=> b!4939355 d!1590219))

(declare-fun bs!1181082 () Bool)

(declare-fun b!4939494 () Bool)

(declare-fun d!1590221 () Bool)

(assert (= bs!1181082 (and b!4939494 d!1590221)))

(declare-fun lambda!246140 () Int)

(declare-fun lambda!246139 () Int)

(assert (=> bs!1181082 (not (= lambda!246140 lambda!246139))))

(declare-fun bs!1181083 () Bool)

(declare-fun b!4939495 () Bool)

(assert (= bs!1181083 (and b!4939495 d!1590221)))

(declare-fun lambda!246141 () Int)

(assert (=> bs!1181083 (not (= lambda!246141 lambda!246139))))

(declare-fun bs!1181084 () Bool)

(assert (= bs!1181084 (and b!4939495 b!4939494)))

(assert (=> bs!1181084 (= lambda!246141 lambda!246140)))

(declare-fun c!842340 () Bool)

(declare-datatypes ((List!57012 0))(
  ( (Nil!56888) (Cons!56888 (h!63336 Context!6182) (t!367512 List!57012)) )
))
(declare-fun lt!2036288 () List!57012)

(declare-fun lt!2036289 () List!57012)

(declare-fun bm!344656 () Bool)

(declare-fun call!344661 () Bool)

(declare-fun exists!1303 (List!57012 Int) Bool)

(assert (=> bm!344656 (= call!344661 (exists!1303 (ite c!842340 lt!2036288 lt!2036289) (ite c!842340 lambda!246140 lambda!246141)))))

(declare-fun e!3086336 () Unit!147633)

(declare-fun Unit!147637 () Unit!147633)

(assert (=> b!4939495 (= e!3086336 Unit!147637)))

(declare-fun call!344662 () List!57012)

(assert (=> b!4939495 (= lt!2036289 call!344662)))

(declare-fun lt!2036290 () Unit!147633)

(declare-fun lemmaForallThenNotExists!199 (List!57012 Int) Unit!147633)

(assert (=> b!4939495 (= lt!2036290 (lemmaForallThenNotExists!199 lt!2036289 lambda!246139))))

(assert (=> b!4939495 (not call!344661)))

(declare-fun lt!2036286 () Unit!147633)

(assert (=> b!4939495 (= lt!2036286 lt!2036290)))

(declare-fun lt!2036287 () Bool)

(declare-datatypes ((Option!14196 0))(
  ( (None!14195) (Some!14195 (v!50169 List!57009)) )
))
(declare-fun isEmpty!30625 (Option!14196) Bool)

(declare-fun getLanguageWitness!658 ((InoxSet Context!6182)) Option!14196)

(assert (=> d!1590221 (= lt!2036287 (isEmpty!30625 (getLanguageWitness!658 z!3568)))))

(declare-fun forall!13215 ((InoxSet Context!6182) Int) Bool)

(assert (=> d!1590221 (= lt!2036287 (forall!13215 z!3568 lambda!246139))))

(declare-fun lt!2036285 () Unit!147633)

(assert (=> d!1590221 (= lt!2036285 e!3086336)))

(assert (=> d!1590221 (= c!842340 (not (forall!13215 z!3568 lambda!246139)))))

(assert (=> d!1590221 (= (lostCauseZipper!767 z!3568) lt!2036287)))

(declare-fun Unit!147638 () Unit!147633)

(assert (=> b!4939494 (= e!3086336 Unit!147638)))

(assert (=> b!4939494 (= lt!2036288 call!344662)))

(declare-fun lt!2036292 () Unit!147633)

(declare-fun lemmaNotForallThenExists!216 (List!57012 Int) Unit!147633)

(assert (=> b!4939494 (= lt!2036292 (lemmaNotForallThenExists!216 lt!2036288 lambda!246139))))

(assert (=> b!4939494 call!344661))

(declare-fun lt!2036291 () Unit!147633)

(assert (=> b!4939494 (= lt!2036291 lt!2036292)))

(declare-fun bm!344657 () Bool)

(declare-fun toList!7978 ((InoxSet Context!6182)) List!57012)

(assert (=> bm!344657 (= call!344662 (toList!7978 z!3568))))

(assert (= (and d!1590221 c!842340) b!4939494))

(assert (= (and d!1590221 (not c!842340)) b!4939495))

(assert (= (or b!4939494 b!4939495) bm!344656))

(assert (= (or b!4939494 b!4939495) bm!344657))

(declare-fun m!5962000 () Bool)

(assert (=> b!4939494 m!5962000))

(declare-fun m!5962002 () Bool)

(assert (=> b!4939495 m!5962002))

(declare-fun m!5962004 () Bool)

(assert (=> bm!344656 m!5962004))

(declare-fun m!5962006 () Bool)

(assert (=> d!1590221 m!5962006))

(assert (=> d!1590221 m!5962006))

(declare-fun m!5962008 () Bool)

(assert (=> d!1590221 m!5962008))

(declare-fun m!5962010 () Bool)

(assert (=> d!1590221 m!5962010))

(assert (=> d!1590221 m!5962010))

(declare-fun m!5962012 () Bool)

(assert (=> bm!344657 m!5962012))

(assert (=> b!4939349 d!1590221))

(declare-fun d!1590247 () Bool)

(assert (=> d!1590247 (= testedSuffix!70 lt!2036189)))

(declare-fun lt!2036295 () Unit!147633)

(declare-fun choose!36364 (List!57009 List!57009 List!57009 List!57009 List!57009) Unit!147633)

(assert (=> d!1590247 (= lt!2036295 (choose!36364 testedP!110 testedSuffix!70 testedP!110 lt!2036189 lt!2036193))))

(assert (=> d!1590247 (isPrefix!5049 testedP!110 lt!2036193)))

(assert (=> d!1590247 (= (lemmaSamePrefixThenSameSuffix!2445 testedP!110 testedSuffix!70 testedP!110 lt!2036189 lt!2036193) lt!2036295)))

(declare-fun bs!1181085 () Bool)

(assert (= bs!1181085 d!1590247))

(declare-fun m!5962014 () Bool)

(assert (=> bs!1181085 m!5962014))

(assert (=> bs!1181085 m!5961822))

(assert (=> b!4939349 d!1590247))

(declare-fun d!1590249 () Bool)

(declare-fun lt!2036298 () List!57009)

(assert (=> d!1590249 (= (++!12420 testedP!110 lt!2036298) lt!2036193)))

(declare-fun e!3086339 () List!57009)

(assert (=> d!1590249 (= lt!2036298 e!3086339)))

(declare-fun c!842343 () Bool)

(assert (=> d!1590249 (= c!842343 ((_ is Cons!56885) testedP!110))))

(assert (=> d!1590249 (>= (size!37697 lt!2036193) (size!37697 testedP!110))))

(assert (=> d!1590249 (= (getSuffix!3031 lt!2036193 testedP!110) lt!2036298)))

(declare-fun b!4939500 () Bool)

(assert (=> b!4939500 (= e!3086339 (getSuffix!3031 (tail!9723 lt!2036193) (t!367509 testedP!110)))))

(declare-fun b!4939501 () Bool)

(assert (=> b!4939501 (= e!3086339 lt!2036193)))

(assert (= (and d!1590249 c!842343) b!4939500))

(assert (= (and d!1590249 (not c!842343)) b!4939501))

(declare-fun m!5962016 () Bool)

(assert (=> d!1590249 m!5962016))

(assert (=> d!1590249 m!5961840))

(assert (=> d!1590249 m!5961806))

(assert (=> b!4939500 m!5961832))

(assert (=> b!4939500 m!5961832))

(declare-fun m!5962018 () Bool)

(assert (=> b!4939500 m!5962018))

(assert (=> b!4939349 d!1590249))

(declare-fun d!1590251 () Bool)

(declare-fun c!842346 () Bool)

(assert (=> d!1590251 (= c!842346 ((_ is Node!14960) (c!842298 totalInput!685)))))

(declare-fun e!3086344 () Bool)

(assert (=> d!1590251 (= (inv!73972 (c!842298 totalInput!685)) e!3086344)))

(declare-fun b!4939508 () Bool)

(declare-fun inv!73978 (Conc!14960) Bool)

(assert (=> b!4939508 (= e!3086344 (inv!73978 (c!842298 totalInput!685)))))

(declare-fun b!4939509 () Bool)

(declare-fun e!3086345 () Bool)

(assert (=> b!4939509 (= e!3086344 e!3086345)))

(declare-fun res!2108018 () Bool)

(assert (=> b!4939509 (= res!2108018 (not ((_ is Leaf!24873) (c!842298 totalInput!685))))))

(assert (=> b!4939509 (=> res!2108018 e!3086345)))

(declare-fun b!4939510 () Bool)

(declare-fun inv!73979 (Conc!14960) Bool)

(assert (=> b!4939510 (= e!3086345 (inv!73979 (c!842298 totalInput!685)))))

(assert (= (and d!1590251 c!842346) b!4939508))

(assert (= (and d!1590251 (not c!842346)) b!4939509))

(assert (= (and b!4939509 (not res!2108018)) b!4939510))

(declare-fun m!5962020 () Bool)

(assert (=> b!4939508 m!5962020))

(declare-fun m!5962022 () Bool)

(assert (=> b!4939510 m!5962022))

(assert (=> b!4939348 d!1590251))

(declare-fun d!1590253 () Bool)

(assert (=> d!1590253 (= (list!18087 totalInput!685) (list!18089 (c!842298 totalInput!685)))))

(declare-fun bs!1181086 () Bool)

(assert (= bs!1181086 d!1590253))

(declare-fun m!5962024 () Bool)

(assert (=> bs!1181086 m!5962024))

(assert (=> start!519568 d!1590253))

(declare-fun b!4939512 () Bool)

(declare-fun e!3086346 () List!57009)

(assert (=> b!4939512 (= e!3086346 (Cons!56885 (h!63333 testedP!110) (++!12420 (t!367509 testedP!110) testedSuffix!70)))))

(declare-fun e!3086347 () Bool)

(declare-fun lt!2036299 () List!57009)

(declare-fun b!4939514 () Bool)

(assert (=> b!4939514 (= e!3086347 (or (not (= testedSuffix!70 Nil!56885)) (= lt!2036299 testedP!110)))))

(declare-fun d!1590255 () Bool)

(assert (=> d!1590255 e!3086347))

(declare-fun res!2108020 () Bool)

(assert (=> d!1590255 (=> (not res!2108020) (not e!3086347))))

(assert (=> d!1590255 (= res!2108020 (= (content!10118 lt!2036299) ((_ map or) (content!10118 testedP!110) (content!10118 testedSuffix!70))))))

(assert (=> d!1590255 (= lt!2036299 e!3086346)))

(declare-fun c!842347 () Bool)

(assert (=> d!1590255 (= c!842347 ((_ is Nil!56885) testedP!110))))

(assert (=> d!1590255 (= (++!12420 testedP!110 testedSuffix!70) lt!2036299)))

(declare-fun b!4939511 () Bool)

(assert (=> b!4939511 (= e!3086346 testedSuffix!70)))

(declare-fun b!4939513 () Bool)

(declare-fun res!2108019 () Bool)

(assert (=> b!4939513 (=> (not res!2108019) (not e!3086347))))

(assert (=> b!4939513 (= res!2108019 (= (size!37697 lt!2036299) (+ (size!37697 testedP!110) (size!37697 testedSuffix!70))))))

(assert (= (and d!1590255 c!842347) b!4939511))

(assert (= (and d!1590255 (not c!842347)) b!4939512))

(assert (= (and d!1590255 res!2108020) b!4939513))

(assert (= (and b!4939513 res!2108019) b!4939514))

(declare-fun m!5962026 () Bool)

(assert (=> b!4939512 m!5962026))

(declare-fun m!5962028 () Bool)

(assert (=> d!1590255 m!5962028))

(declare-fun m!5962030 () Bool)

(assert (=> d!1590255 m!5962030))

(declare-fun m!5962032 () Bool)

(assert (=> d!1590255 m!5962032))

(declare-fun m!5962034 () Bool)

(assert (=> b!4939513 m!5962034))

(assert (=> b!4939513 m!5961806))

(declare-fun m!5962036 () Bool)

(assert (=> b!4939513 m!5962036))

(assert (=> start!519568 d!1590255))

(declare-fun d!1590257 () Bool)

(assert (=> d!1590257 (= (inv!73973 totalInput!685) (isBalanced!4128 (c!842298 totalInput!685)))))

(declare-fun bs!1181087 () Bool)

(assert (= bs!1181087 d!1590257))

(assert (=> bs!1181087 m!5961906))

(assert (=> start!519568 d!1590257))

(declare-fun d!1590259 () Bool)

(declare-fun lambda!246144 () Int)

(declare-fun forall!13216 (List!57010 Int) Bool)

(assert (=> d!1590259 (= (inv!73974 setElem!27882) (forall!13216 (exprs!3591 setElem!27882) lambda!246144))))

(declare-fun bs!1181088 () Bool)

(assert (= bs!1181088 d!1590259))

(declare-fun m!5962038 () Bool)

(assert (=> bs!1181088 m!5962038))

(assert (=> setNonEmpty!27882 d!1590259))

(declare-fun b!4939519 () Bool)

(declare-fun e!3086350 () Bool)

(declare-fun tp!1386031 () Bool)

(declare-fun tp!1386032 () Bool)

(assert (=> b!4939519 (= e!3086350 (and tp!1386031 tp!1386032))))

(assert (=> b!4939352 (= tp!1385997 e!3086350)))

(assert (= (and b!4939352 ((_ is Cons!56886) (exprs!3591 setElem!27882))) b!4939519))

(declare-fun b!4939524 () Bool)

(declare-fun e!3086353 () Bool)

(declare-fun tp!1386035 () Bool)

(assert (=> b!4939524 (= e!3086353 (and tp_is_empty!36079 tp!1386035))))

(assert (=> b!4939354 (= tp!1386001 e!3086353)))

(assert (= (and b!4939354 ((_ is Cons!56885) (t!367509 testedP!110))) b!4939524))

(declare-fun b!4939525 () Bool)

(declare-fun e!3086354 () Bool)

(declare-fun tp!1386036 () Bool)

(assert (=> b!4939525 (= e!3086354 (and tp_is_empty!36079 tp!1386036))))

(assert (=> b!4939353 (= tp!1385999 e!3086354)))

(assert (= (and b!4939353 ((_ is Cons!56885) (t!367509 testedSuffix!70))) b!4939525))

(declare-fun tp!1386045 () Bool)

(declare-fun e!3086360 () Bool)

(declare-fun tp!1386043 () Bool)

(declare-fun b!4939534 () Bool)

(assert (=> b!4939534 (= e!3086360 (and (inv!73972 (left!41494 (c!842298 totalInput!685))) tp!1386045 (inv!73972 (right!41824 (c!842298 totalInput!685))) tp!1386043))))

(declare-fun b!4939536 () Bool)

(declare-fun e!3086359 () Bool)

(declare-fun tp!1386044 () Bool)

(assert (=> b!4939536 (= e!3086359 tp!1386044)))

(declare-fun b!4939535 () Bool)

(declare-fun inv!73980 (IArray!29981) Bool)

(assert (=> b!4939535 (= e!3086360 (and (inv!73980 (xs!18284 (c!842298 totalInput!685))) e!3086359))))

(assert (=> b!4939348 (= tp!1386000 (and (inv!73972 (c!842298 totalInput!685)) e!3086360))))

(assert (= (and b!4939348 ((_ is Node!14960) (c!842298 totalInput!685))) b!4939534))

(assert (= b!4939535 b!4939536))

(assert (= (and b!4939348 ((_ is Leaf!24873) (c!842298 totalInput!685))) b!4939535))

(declare-fun m!5962040 () Bool)

(assert (=> b!4939534 m!5962040))

(declare-fun m!5962042 () Bool)

(assert (=> b!4939534 m!5962042))

(declare-fun m!5962044 () Bool)

(assert (=> b!4939535 m!5962044))

(assert (=> b!4939348 m!5961798))

(declare-fun condSetEmpty!27888 () Bool)

(assert (=> setNonEmpty!27882 (= condSetEmpty!27888 (= setRest!27882 ((as const (Array Context!6182 Bool)) false)))))

(declare-fun setRes!27888 () Bool)

(assert (=> setNonEmpty!27882 (= tp!1385998 setRes!27888)))

(declare-fun setIsEmpty!27888 () Bool)

(assert (=> setIsEmpty!27888 setRes!27888))

(declare-fun e!3086363 () Bool)

(declare-fun tp!1386050 () Bool)

(declare-fun setNonEmpty!27888 () Bool)

(declare-fun setElem!27888 () Context!6182)

(assert (=> setNonEmpty!27888 (= setRes!27888 (and tp!1386050 (inv!73974 setElem!27888) e!3086363))))

(declare-fun setRest!27888 () (InoxSet Context!6182))

(assert (=> setNonEmpty!27888 (= setRest!27882 ((_ map or) (store ((as const (Array Context!6182 Bool)) false) setElem!27888 true) setRest!27888))))

(declare-fun b!4939541 () Bool)

(declare-fun tp!1386051 () Bool)

(assert (=> b!4939541 (= e!3086363 tp!1386051)))

(assert (= (and setNonEmpty!27882 condSetEmpty!27888) setIsEmpty!27888))

(assert (= (and setNonEmpty!27882 (not condSetEmpty!27888)) setNonEmpty!27888))

(assert (= setNonEmpty!27888 b!4939541))

(declare-fun m!5962046 () Bool)

(assert (=> setNonEmpty!27888 m!5962046))

(check-sat (not b!4939411) (not b!4939513) (not b!4939401) (not bm!344656) (not b!4939494) (not b!4939348) (not b!4939525) (not b!4939375) (not b!4939500) (not b!4939534) (not d!1590219) (not b!4939508) (not d!1590253) (not d!1590255) (not b!4939510) (not d!1590257) (not b!4939512) (not b!4939412) (not d!1590215) (not b!4939536) (not b!4939541) (not b!4939422) (not b!4939373) (not b!4939385) (not d!1590217) (not b!4939524) (not d!1590201) (not d!1590213) (not b!4939423) (not b!4939519) (not d!1590259) (not b!4939374) (not b!4939387) (not bm!344657) (not b!4939535) (not b!4939386) tp_is_empty!36079 (not d!1590247) (not setNonEmpty!27888) (not d!1590211) (not d!1590221) (not d!1590249) (not b!4939495))
(check-sat)
(get-model)

(declare-fun b!4939568 () Bool)

(declare-fun e!3086381 () Bool)

(declare-fun e!3086383 () Bool)

(assert (=> b!4939568 (= e!3086381 e!3086383)))

(declare-fun res!2108028 () Bool)

(assert (=> b!4939568 (=> (not res!2108028) (not e!3086383))))

(assert (=> b!4939568 (= res!2108028 (not ((_ is Nil!56885) (tail!9723 lt!2036190))))))

(declare-fun b!4939570 () Bool)

(assert (=> b!4939570 (= e!3086383 (isPrefix!5049 (tail!9723 (tail!9723 testedP!110)) (tail!9723 (tail!9723 lt!2036190))))))

(declare-fun d!1590285 () Bool)

(declare-fun e!3086382 () Bool)

(assert (=> d!1590285 e!3086382))

(declare-fun res!2108026 () Bool)

(assert (=> d!1590285 (=> res!2108026 e!3086382)))

(declare-fun lt!2036313 () Bool)

(assert (=> d!1590285 (= res!2108026 (not lt!2036313))))

(assert (=> d!1590285 (= lt!2036313 e!3086381)))

(declare-fun res!2108025 () Bool)

(assert (=> d!1590285 (=> res!2108025 e!3086381)))

(assert (=> d!1590285 (= res!2108025 ((_ is Nil!56885) (tail!9723 testedP!110)))))

(assert (=> d!1590285 (= (isPrefix!5049 (tail!9723 testedP!110) (tail!9723 lt!2036190)) lt!2036313)))

(declare-fun b!4939569 () Bool)

(declare-fun res!2108027 () Bool)

(assert (=> b!4939569 (=> (not res!2108027) (not e!3086383))))

(assert (=> b!4939569 (= res!2108027 (= (head!10584 (tail!9723 testedP!110)) (head!10584 (tail!9723 lt!2036190))))))

(declare-fun b!4939571 () Bool)

(assert (=> b!4939571 (= e!3086382 (>= (size!37697 (tail!9723 lt!2036190)) (size!37697 (tail!9723 testedP!110))))))

(assert (= (and d!1590285 (not res!2108025)) b!4939568))

(assert (= (and b!4939568 res!2108028) b!4939569))

(assert (= (and b!4939569 res!2108027) b!4939570))

(assert (= (and d!1590285 (not res!2108026)) b!4939571))

(assert (=> b!4939570 m!5961830))

(declare-fun m!5962088 () Bool)

(assert (=> b!4939570 m!5962088))

(assert (=> b!4939570 m!5961842))

(declare-fun m!5962090 () Bool)

(assert (=> b!4939570 m!5962090))

(assert (=> b!4939570 m!5962088))

(assert (=> b!4939570 m!5962090))

(declare-fun m!5962092 () Bool)

(assert (=> b!4939570 m!5962092))

(assert (=> b!4939569 m!5961830))

(declare-fun m!5962094 () Bool)

(assert (=> b!4939569 m!5962094))

(assert (=> b!4939569 m!5961842))

(declare-fun m!5962096 () Bool)

(assert (=> b!4939569 m!5962096))

(assert (=> b!4939571 m!5961842))

(declare-fun m!5962098 () Bool)

(assert (=> b!4939571 m!5962098))

(assert (=> b!4939571 m!5961830))

(declare-fun m!5962100 () Bool)

(assert (=> b!4939571 m!5962100))

(assert (=> b!4939386 d!1590285))

(declare-fun d!1590287 () Bool)

(assert (=> d!1590287 (= (tail!9723 testedP!110) (t!367509 testedP!110))))

(assert (=> b!4939386 d!1590287))

(declare-fun d!1590291 () Bool)

(assert (=> d!1590291 (= (tail!9723 lt!2036190) (t!367509 lt!2036190))))

(assert (=> b!4939386 d!1590291))

(declare-fun b!4939595 () Bool)

(declare-fun res!2108051 () Bool)

(declare-fun e!3086393 () Bool)

(assert (=> b!4939595 (=> (not res!2108051) (not e!3086393))))

(declare-fun isEmpty!30626 (Conc!14960) Bool)

(assert (=> b!4939595 (= res!2108051 (not (isEmpty!30626 (left!41494 (c!842298 totalInput!685)))))))

(declare-fun b!4939596 () Bool)

(assert (=> b!4939596 (= e!3086393 (not (isEmpty!30626 (right!41824 (c!842298 totalInput!685)))))))

(declare-fun b!4939597 () Bool)

(declare-fun res!2108053 () Bool)

(assert (=> b!4939597 (=> (not res!2108053) (not e!3086393))))

(assert (=> b!4939597 (= res!2108053 (isBalanced!4128 (right!41824 (c!842298 totalInput!685))))))

(declare-fun b!4939598 () Bool)

(declare-fun res!2108049 () Bool)

(assert (=> b!4939598 (=> (not res!2108049) (not e!3086393))))

(assert (=> b!4939598 (= res!2108049 (isBalanced!4128 (left!41494 (c!842298 totalInput!685))))))

(declare-fun b!4939599 () Bool)

(declare-fun res!2108054 () Bool)

(assert (=> b!4939599 (=> (not res!2108054) (not e!3086393))))

(declare-fun height!1995 (Conc!14960) Int)

(assert (=> b!4939599 (= res!2108054 (<= (- (height!1995 (left!41494 (c!842298 totalInput!685))) (height!1995 (right!41824 (c!842298 totalInput!685)))) 1))))

(declare-fun b!4939594 () Bool)

(declare-fun e!3086392 () Bool)

(assert (=> b!4939594 (= e!3086392 e!3086393)))

(declare-fun res!2108052 () Bool)

(assert (=> b!4939594 (=> (not res!2108052) (not e!3086393))))

(assert (=> b!4939594 (= res!2108052 (<= (- 1) (- (height!1995 (left!41494 (c!842298 totalInput!685))) (height!1995 (right!41824 (c!842298 totalInput!685))))))))

(declare-fun d!1590293 () Bool)

(declare-fun res!2108050 () Bool)

(assert (=> d!1590293 (=> res!2108050 e!3086392)))

(assert (=> d!1590293 (= res!2108050 (not ((_ is Node!14960) (c!842298 totalInput!685))))))

(assert (=> d!1590293 (= (isBalanced!4128 (c!842298 totalInput!685)) e!3086392)))

(assert (= (and d!1590293 (not res!2108050)) b!4939594))

(assert (= (and b!4939594 res!2108052) b!4939599))

(assert (= (and b!4939599 res!2108054) b!4939598))

(assert (= (and b!4939598 res!2108049) b!4939597))

(assert (= (and b!4939597 res!2108053) b!4939595))

(assert (= (and b!4939595 res!2108051) b!4939596))

(declare-fun m!5962124 () Bool)

(assert (=> b!4939595 m!5962124))

(declare-fun m!5962128 () Bool)

(assert (=> b!4939599 m!5962128))

(declare-fun m!5962130 () Bool)

(assert (=> b!4939599 m!5962130))

(declare-fun m!5962132 () Bool)

(assert (=> b!4939596 m!5962132))

(assert (=> b!4939594 m!5962128))

(assert (=> b!4939594 m!5962130))

(declare-fun m!5962134 () Bool)

(assert (=> b!4939597 m!5962134))

(declare-fun m!5962136 () Bool)

(assert (=> b!4939598 m!5962136))

(assert (=> d!1590257 d!1590293))

(declare-fun d!1590305 () Bool)

(declare-fun lt!2036317 () Int)

(assert (=> d!1590305 (>= lt!2036317 0)))

(declare-fun e!3086396 () Int)

(assert (=> d!1590305 (= lt!2036317 e!3086396)))

(declare-fun c!842360 () Bool)

(assert (=> d!1590305 (= c!842360 ((_ is Nil!56885) lt!2036190))))

(assert (=> d!1590305 (= (size!37697 lt!2036190) lt!2036317)))

(declare-fun b!4939605 () Bool)

(assert (=> b!4939605 (= e!3086396 0)))

(declare-fun b!4939606 () Bool)

(assert (=> b!4939606 (= e!3086396 (+ 1 (size!37697 (t!367509 lt!2036190))))))

(assert (= (and d!1590305 c!842360) b!4939605))

(assert (= (and d!1590305 (not c!842360)) b!4939606))

(declare-fun m!5962140 () Bool)

(assert (=> b!4939606 m!5962140))

(assert (=> b!4939387 d!1590305))

(assert (=> b!4939387 d!1590205))

(declare-fun d!1590309 () Bool)

(assert (=> d!1590309 (= testedSuffix!70 lt!2036189)))

(assert (=> d!1590309 true))

(declare-fun _$63!1207 () Unit!147633)

(assert (=> d!1590309 (= (choose!36364 testedP!110 testedSuffix!70 testedP!110 lt!2036189 lt!2036193) _$63!1207)))

(assert (=> d!1590247 d!1590309))

(assert (=> d!1590247 d!1590193))

(declare-fun d!1590313 () Bool)

(assert (=> d!1590313 (= (head!10584 testedP!110) (h!63333 testedP!110))))

(assert (=> b!4939385 d!1590313))

(declare-fun d!1590315 () Bool)

(assert (=> d!1590315 (= (head!10584 lt!2036190) (h!63333 lt!2036190))))

(assert (=> b!4939385 d!1590315))

(declare-fun d!1590317 () Bool)

(declare-fun c!842363 () Bool)

(assert (=> d!1590317 (= c!842363 ((_ is Node!14960) (left!41494 (c!842298 totalInput!685))))))

(declare-fun e!3086399 () Bool)

(assert (=> d!1590317 (= (inv!73972 (left!41494 (c!842298 totalInput!685))) e!3086399)))

(declare-fun b!4939611 () Bool)

(assert (=> b!4939611 (= e!3086399 (inv!73978 (left!41494 (c!842298 totalInput!685))))))

(declare-fun b!4939612 () Bool)

(declare-fun e!3086400 () Bool)

(assert (=> b!4939612 (= e!3086399 e!3086400)))

(declare-fun res!2108058 () Bool)

(assert (=> b!4939612 (= res!2108058 (not ((_ is Leaf!24873) (left!41494 (c!842298 totalInput!685)))))))

(assert (=> b!4939612 (=> res!2108058 e!3086400)))

(declare-fun b!4939613 () Bool)

(assert (=> b!4939613 (= e!3086400 (inv!73979 (left!41494 (c!842298 totalInput!685))))))

(assert (= (and d!1590317 c!842363) b!4939611))

(assert (= (and d!1590317 (not c!842363)) b!4939612))

(assert (= (and b!4939612 (not res!2108058)) b!4939613))

(declare-fun m!5962150 () Bool)

(assert (=> b!4939611 m!5962150))

(declare-fun m!5962152 () Bool)

(assert (=> b!4939613 m!5962152))

(assert (=> b!4939534 d!1590317))

(declare-fun d!1590319 () Bool)

(declare-fun c!842364 () Bool)

(assert (=> d!1590319 (= c!842364 ((_ is Node!14960) (right!41824 (c!842298 totalInput!685))))))

(declare-fun e!3086401 () Bool)

(assert (=> d!1590319 (= (inv!73972 (right!41824 (c!842298 totalInput!685))) e!3086401)))

(declare-fun b!4939614 () Bool)

(assert (=> b!4939614 (= e!3086401 (inv!73978 (right!41824 (c!842298 totalInput!685))))))

(declare-fun b!4939615 () Bool)

(declare-fun e!3086402 () Bool)

(assert (=> b!4939615 (= e!3086401 e!3086402)))

(declare-fun res!2108059 () Bool)

(assert (=> b!4939615 (= res!2108059 (not ((_ is Leaf!24873) (right!41824 (c!842298 totalInput!685)))))))

(assert (=> b!4939615 (=> res!2108059 e!3086402)))

(declare-fun b!4939616 () Bool)

(assert (=> b!4939616 (= e!3086402 (inv!73979 (right!41824 (c!842298 totalInput!685))))))

(assert (= (and d!1590319 c!842364) b!4939614))

(assert (= (and d!1590319 (not c!842364)) b!4939615))

(assert (= (and b!4939615 (not res!2108059)) b!4939616))

(declare-fun m!5962154 () Bool)

(assert (=> b!4939614 m!5962154))

(declare-fun m!5962156 () Bool)

(assert (=> b!4939616 m!5962156))

(assert (=> b!4939534 d!1590319))

(declare-fun d!1590321 () Bool)

(assert (=> d!1590321 (= (inv!73980 (xs!18284 (c!842298 totalInput!685))) (<= (size!37697 (innerList!15048 (xs!18284 (c!842298 totalInput!685)))) 2147483647))))

(declare-fun bs!1181105 () Bool)

(assert (= bs!1181105 d!1590321))

(declare-fun m!5962158 () Bool)

(assert (=> bs!1181105 m!5962158))

(assert (=> b!4939535 d!1590321))

(declare-fun b!4939634 () Bool)

(declare-fun e!3086413 () List!57009)

(assert (=> b!4939634 (= e!3086413 Nil!56885)))

(declare-fun b!4939636 () Bool)

(declare-fun e!3086414 () List!57009)

(declare-fun list!18091 (IArray!29981) List!57009)

(assert (=> b!4939636 (= e!3086414 (list!18091 (xs!18284 (c!842298 (_1!34011 lt!2036188)))))))

(declare-fun d!1590323 () Bool)

(declare-fun c!842369 () Bool)

(assert (=> d!1590323 (= c!842369 ((_ is Empty!14960) (c!842298 (_1!34011 lt!2036188))))))

(assert (=> d!1590323 (= (list!18089 (c!842298 (_1!34011 lt!2036188))) e!3086413)))

(declare-fun b!4939635 () Bool)

(assert (=> b!4939635 (= e!3086413 e!3086414)))

(declare-fun c!842370 () Bool)

(assert (=> b!4939635 (= c!842370 ((_ is Leaf!24873) (c!842298 (_1!34011 lt!2036188))))))

(declare-fun b!4939637 () Bool)

(assert (=> b!4939637 (= e!3086414 (++!12420 (list!18089 (left!41494 (c!842298 (_1!34011 lt!2036188)))) (list!18089 (right!41824 (c!842298 (_1!34011 lt!2036188))))))))

(assert (= (and d!1590323 c!842369) b!4939634))

(assert (= (and d!1590323 (not c!842369)) b!4939635))

(assert (= (and b!4939635 c!842370) b!4939636))

(assert (= (and b!4939635 (not c!842370)) b!4939637))

(declare-fun m!5962170 () Bool)

(assert (=> b!4939636 m!5962170))

(declare-fun m!5962172 () Bool)

(assert (=> b!4939637 m!5962172))

(declare-fun m!5962174 () Bool)

(assert (=> b!4939637 m!5962174))

(assert (=> b!4939637 m!5962172))

(assert (=> b!4939637 m!5962174))

(declare-fun m!5962176 () Bool)

(assert (=> b!4939637 m!5962176))

(assert (=> d!1590215 d!1590323))

(declare-fun d!1590331 () Bool)

(declare-fun lt!2036321 () Int)

(assert (=> d!1590331 (>= lt!2036321 0)))

(declare-fun e!3086415 () Int)

(assert (=> d!1590331 (= lt!2036321 e!3086415)))

(declare-fun c!842371 () Bool)

(assert (=> d!1590331 (= c!842371 ((_ is Nil!56885) (list!18087 totalInput!685)))))

(assert (=> d!1590331 (= (size!37697 (list!18087 totalInput!685)) lt!2036321)))

(declare-fun b!4939638 () Bool)

(assert (=> b!4939638 (= e!3086415 0)))

(declare-fun b!4939639 () Bool)

(assert (=> b!4939639 (= e!3086415 (+ 1 (size!37697 (t!367509 (list!18087 totalInput!685)))))))

(assert (= (and d!1590331 c!842371) b!4939638))

(assert (= (and d!1590331 (not c!842371)) b!4939639))

(declare-fun m!5962178 () Bool)

(assert (=> b!4939639 m!5962178))

(assert (=> d!1590211 d!1590331))

(assert (=> d!1590211 d!1590253))

(declare-fun d!1590333 () Bool)

(declare-fun lt!2036324 () Int)

(assert (=> d!1590333 (= lt!2036324 (size!37697 (list!18089 (c!842298 totalInput!685))))))

(assert (=> d!1590333 (= lt!2036324 (ite ((_ is Empty!14960) (c!842298 totalInput!685)) 0 (ite ((_ is Leaf!24873) (c!842298 totalInput!685)) (csize!30151 (c!842298 totalInput!685)) (csize!30150 (c!842298 totalInput!685)))))))

(assert (=> d!1590333 (= (size!37700 (c!842298 totalInput!685)) lt!2036324)))

(declare-fun bs!1181108 () Bool)

(assert (= bs!1181108 d!1590333))

(assert (=> bs!1181108 m!5962024))

(assert (=> bs!1181108 m!5962024))

(declare-fun m!5962180 () Bool)

(assert (=> bs!1181108 m!5962180))

(assert (=> d!1590211 d!1590333))

(declare-fun d!1590335 () Bool)

(declare-fun lt!2036325 () Int)

(assert (=> d!1590335 (>= lt!2036325 0)))

(declare-fun e!3086416 () Int)

(assert (=> d!1590335 (= lt!2036325 e!3086416)))

(declare-fun c!842372 () Bool)

(assert (=> d!1590335 (= c!842372 ((_ is Nil!56885) lt!2036219))))

(assert (=> d!1590335 (= (size!37697 lt!2036219) lt!2036325)))

(declare-fun b!4939640 () Bool)

(assert (=> b!4939640 (= e!3086416 0)))

(declare-fun b!4939641 () Bool)

(assert (=> b!4939641 (= e!3086416 (+ 1 (size!37697 (t!367509 lt!2036219))))))

(assert (= (and d!1590335 c!842372) b!4939640))

(assert (= (and d!1590335 (not c!842372)) b!4939641))

(declare-fun m!5962182 () Bool)

(assert (=> b!4939641 m!5962182))

(assert (=> b!4939412 d!1590335))

(declare-fun d!1590337 () Bool)

(declare-fun lt!2036326 () Int)

(assert (=> d!1590337 (>= lt!2036326 0)))

(declare-fun e!3086417 () Int)

(assert (=> d!1590337 (= lt!2036326 e!3086417)))

(declare-fun c!842373 () Bool)

(assert (=> d!1590337 (= c!842373 ((_ is Nil!56885) (list!18087 (_1!34011 lt!2036188))))))

(assert (=> d!1590337 (= (size!37697 (list!18087 (_1!34011 lt!2036188))) lt!2036326)))

(declare-fun b!4939642 () Bool)

(assert (=> b!4939642 (= e!3086417 0)))

(declare-fun b!4939643 () Bool)

(assert (=> b!4939643 (= e!3086417 (+ 1 (size!37697 (t!367509 (list!18087 (_1!34011 lt!2036188))))))))

(assert (= (and d!1590337 c!842373) b!4939642))

(assert (= (and d!1590337 (not c!842373)) b!4939643))

(declare-fun m!5962184 () Bool)

(assert (=> b!4939643 m!5962184))

(assert (=> b!4939412 d!1590337))

(declare-fun d!1590339 () Bool)

(declare-fun lt!2036327 () Int)

(assert (=> d!1590339 (>= lt!2036327 0)))

(declare-fun e!3086418 () Int)

(assert (=> d!1590339 (= lt!2036327 e!3086418)))

(declare-fun c!842374 () Bool)

(assert (=> d!1590339 (= c!842374 ((_ is Nil!56885) (list!18087 (_2!34011 lt!2036188))))))

(assert (=> d!1590339 (= (size!37697 (list!18087 (_2!34011 lt!2036188))) lt!2036327)))

(declare-fun b!4939644 () Bool)

(assert (=> b!4939644 (= e!3086418 0)))

(declare-fun b!4939645 () Bool)

(assert (=> b!4939645 (= e!3086418 (+ 1 (size!37697 (t!367509 (list!18087 (_2!34011 lt!2036188))))))))

(assert (= (and d!1590339 c!842374) b!4939644))

(assert (= (and d!1590339 (not c!842374)) b!4939645))

(declare-fun m!5962186 () Bool)

(assert (=> b!4939645 m!5962186))

(assert (=> b!4939412 d!1590339))

(declare-fun d!1590341 () Bool)

(declare-fun res!2108093 () Bool)

(declare-fun e!3086427 () Bool)

(assert (=> d!1590341 (=> (not res!2108093) (not e!3086427))))

(assert (=> d!1590341 (= res!2108093 (= (csize!30150 (c!842298 totalInput!685)) (+ (size!37700 (left!41494 (c!842298 totalInput!685))) (size!37700 (right!41824 (c!842298 totalInput!685))))))))

(assert (=> d!1590341 (= (inv!73978 (c!842298 totalInput!685)) e!3086427)))

(declare-fun b!4939670 () Bool)

(declare-fun res!2108094 () Bool)

(assert (=> b!4939670 (=> (not res!2108094) (not e!3086427))))

(assert (=> b!4939670 (= res!2108094 (and (not (= (left!41494 (c!842298 totalInput!685)) Empty!14960)) (not (= (right!41824 (c!842298 totalInput!685)) Empty!14960))))))

(declare-fun b!4939671 () Bool)

(declare-fun res!2108095 () Bool)

(assert (=> b!4939671 (=> (not res!2108095) (not e!3086427))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4939671 (= res!2108095 (= (cheight!15171 (c!842298 totalInput!685)) (+ (max!0 (height!1995 (left!41494 (c!842298 totalInput!685))) (height!1995 (right!41824 (c!842298 totalInput!685)))) 1)))))

(declare-fun b!4939672 () Bool)

(assert (=> b!4939672 (= e!3086427 (<= 0 (cheight!15171 (c!842298 totalInput!685))))))

(assert (= (and d!1590341 res!2108093) b!4939670))

(assert (= (and b!4939670 res!2108094) b!4939671))

(assert (= (and b!4939671 res!2108095) b!4939672))

(declare-fun m!5962200 () Bool)

(assert (=> d!1590341 m!5962200))

(declare-fun m!5962202 () Bool)

(assert (=> d!1590341 m!5962202))

(assert (=> b!4939671 m!5962128))

(assert (=> b!4939671 m!5962130))

(assert (=> b!4939671 m!5962128))

(assert (=> b!4939671 m!5962130))

(declare-fun m!5962204 () Bool)

(assert (=> b!4939671 m!5962204))

(assert (=> b!4939508 d!1590341))

(declare-fun b!4939674 () Bool)

(declare-fun e!3086428 () List!57009)

(assert (=> b!4939674 (= e!3086428 (Cons!56885 (h!63333 (t!367509 testedP!110)) (++!12420 (t!367509 (t!367509 testedP!110)) testedSuffix!70)))))

(declare-fun b!4939676 () Bool)

(declare-fun e!3086429 () Bool)

(declare-fun lt!2036328 () List!57009)

(assert (=> b!4939676 (= e!3086429 (or (not (= testedSuffix!70 Nil!56885)) (= lt!2036328 (t!367509 testedP!110))))))

(declare-fun d!1590345 () Bool)

(assert (=> d!1590345 e!3086429))

(declare-fun res!2108097 () Bool)

(assert (=> d!1590345 (=> (not res!2108097) (not e!3086429))))

(assert (=> d!1590345 (= res!2108097 (= (content!10118 lt!2036328) ((_ map or) (content!10118 (t!367509 testedP!110)) (content!10118 testedSuffix!70))))))

(assert (=> d!1590345 (= lt!2036328 e!3086428)))

(declare-fun c!842375 () Bool)

(assert (=> d!1590345 (= c!842375 ((_ is Nil!56885) (t!367509 testedP!110)))))

(assert (=> d!1590345 (= (++!12420 (t!367509 testedP!110) testedSuffix!70) lt!2036328)))

(declare-fun b!4939673 () Bool)

(assert (=> b!4939673 (= e!3086428 testedSuffix!70)))

(declare-fun b!4939675 () Bool)

(declare-fun res!2108096 () Bool)

(assert (=> b!4939675 (=> (not res!2108096) (not e!3086429))))

(assert (=> b!4939675 (= res!2108096 (= (size!37697 lt!2036328) (+ (size!37697 (t!367509 testedP!110)) (size!37697 testedSuffix!70))))))

(assert (= (and d!1590345 c!842375) b!4939673))

(assert (= (and d!1590345 (not c!842375)) b!4939674))

(assert (= (and d!1590345 res!2108097) b!4939675))

(assert (= (and b!4939675 res!2108096) b!4939676))

(declare-fun m!5962206 () Bool)

(assert (=> b!4939674 m!5962206))

(declare-fun m!5962208 () Bool)

(assert (=> d!1590345 m!5962208))

(declare-fun m!5962210 () Bool)

(assert (=> d!1590345 m!5962210))

(assert (=> d!1590345 m!5962032))

(declare-fun m!5962212 () Bool)

(assert (=> b!4939675 m!5962212))

(assert (=> b!4939675 m!5961878))

(assert (=> b!4939675 m!5962036))

(assert (=> b!4939512 d!1590345))

(declare-fun d!1590347 () Bool)

(declare-fun lt!2036329 () Int)

(assert (=> d!1590347 (>= lt!2036329 0)))

(declare-fun e!3086430 () Int)

(assert (=> d!1590347 (= lt!2036329 e!3086430)))

(declare-fun c!842376 () Bool)

(assert (=> d!1590347 (= c!842376 ((_ is Nil!56885) lt!2036299))))

(assert (=> d!1590347 (= (size!37697 lt!2036299) lt!2036329)))

(declare-fun b!4939677 () Bool)

(assert (=> b!4939677 (= e!3086430 0)))

(declare-fun b!4939678 () Bool)

(assert (=> b!4939678 (= e!3086430 (+ 1 (size!37697 (t!367509 lt!2036299))))))

(assert (= (and d!1590347 c!842376) b!4939677))

(assert (= (and d!1590347 (not c!842376)) b!4939678))

(declare-fun m!5962214 () Bool)

(assert (=> b!4939678 m!5962214))

(assert (=> b!4939513 d!1590347))

(assert (=> b!4939513 d!1590205))

(declare-fun d!1590349 () Bool)

(declare-fun lt!2036330 () Int)

(assert (=> d!1590349 (>= lt!2036330 0)))

(declare-fun e!3086431 () Int)

(assert (=> d!1590349 (= lt!2036330 e!3086431)))

(declare-fun c!842377 () Bool)

(assert (=> d!1590349 (= c!842377 ((_ is Nil!56885) testedSuffix!70))))

(assert (=> d!1590349 (= (size!37697 testedSuffix!70) lt!2036330)))

(declare-fun b!4939679 () Bool)

(assert (=> b!4939679 (= e!3086431 0)))

(declare-fun b!4939680 () Bool)

(assert (=> b!4939680 (= e!3086431 (+ 1 (size!37697 (t!367509 testedSuffix!70))))))

(assert (= (and d!1590349 c!842377) b!4939679))

(assert (= (and d!1590349 (not c!842377)) b!4939680))

(declare-fun m!5962216 () Bool)

(assert (=> b!4939680 m!5962216))

(assert (=> b!4939513 d!1590349))

(declare-fun bs!1181109 () Bool)

(declare-fun d!1590351 () Bool)

(assert (= bs!1181109 (and d!1590351 d!1590259)))

(declare-fun lambda!246155 () Int)

(assert (=> bs!1181109 (= lambda!246155 lambda!246144)))

(assert (=> d!1590351 (= (inv!73974 setElem!27888) (forall!13216 (exprs!3591 setElem!27888) lambda!246155))))

(declare-fun bs!1181110 () Bool)

(assert (= bs!1181110 d!1590351))

(declare-fun m!5962218 () Bool)

(assert (=> bs!1181110 m!5962218))

(assert (=> setNonEmpty!27888 d!1590351))

(declare-fun b!4939681 () Bool)

(declare-fun e!3086432 () List!57009)

(assert (=> b!4939681 (= e!3086432 Nil!56885)))

(declare-fun b!4939683 () Bool)

(declare-fun e!3086433 () List!57009)

(assert (=> b!4939683 (= e!3086433 (list!18091 (xs!18284 (c!842298 (_2!34011 lt!2036188)))))))

(declare-fun d!1590353 () Bool)

(declare-fun c!842378 () Bool)

(assert (=> d!1590353 (= c!842378 ((_ is Empty!14960) (c!842298 (_2!34011 lt!2036188))))))

(assert (=> d!1590353 (= (list!18089 (c!842298 (_2!34011 lt!2036188))) e!3086432)))

(declare-fun b!4939682 () Bool)

(assert (=> b!4939682 (= e!3086432 e!3086433)))

(declare-fun c!842379 () Bool)

(assert (=> b!4939682 (= c!842379 ((_ is Leaf!24873) (c!842298 (_2!34011 lt!2036188))))))

(declare-fun b!4939684 () Bool)

(assert (=> b!4939684 (= e!3086433 (++!12420 (list!18089 (left!41494 (c!842298 (_2!34011 lt!2036188)))) (list!18089 (right!41824 (c!842298 (_2!34011 lt!2036188))))))))

(assert (= (and d!1590353 c!842378) b!4939681))

(assert (= (and d!1590353 (not c!842378)) b!4939682))

(assert (= (and b!4939682 c!842379) b!4939683))

(assert (= (and b!4939682 (not c!842379)) b!4939684))

(declare-fun m!5962220 () Bool)

(assert (=> b!4939683 m!5962220))

(declare-fun m!5962222 () Bool)

(assert (=> b!4939684 m!5962222))

(declare-fun m!5962224 () Bool)

(assert (=> b!4939684 m!5962224))

(assert (=> b!4939684 m!5962222))

(assert (=> b!4939684 m!5962224))

(declare-fun m!5962226 () Bool)

(assert (=> b!4939684 m!5962226))

(assert (=> d!1590217 d!1590353))

(declare-fun b!4939686 () Bool)

(declare-fun e!3086434 () List!57009)

(assert (=> b!4939686 (= e!3086434 (Cons!56885 (h!63333 (t!367509 (list!18087 (_1!34011 lt!2036188)))) (++!12420 (t!367509 (t!367509 (list!18087 (_1!34011 lt!2036188)))) (list!18087 (_2!34011 lt!2036188)))))))

(declare-fun b!4939688 () Bool)

(declare-fun e!3086435 () Bool)

(declare-fun lt!2036331 () List!57009)

(assert (=> b!4939688 (= e!3086435 (or (not (= (list!18087 (_2!34011 lt!2036188)) Nil!56885)) (= lt!2036331 (t!367509 (list!18087 (_1!34011 lt!2036188))))))))

(declare-fun d!1590355 () Bool)

(assert (=> d!1590355 e!3086435))

(declare-fun res!2108099 () Bool)

(assert (=> d!1590355 (=> (not res!2108099) (not e!3086435))))

(assert (=> d!1590355 (= res!2108099 (= (content!10118 lt!2036331) ((_ map or) (content!10118 (t!367509 (list!18087 (_1!34011 lt!2036188)))) (content!10118 (list!18087 (_2!34011 lt!2036188))))))))

(assert (=> d!1590355 (= lt!2036331 e!3086434)))

(declare-fun c!842380 () Bool)

(assert (=> d!1590355 (= c!842380 ((_ is Nil!56885) (t!367509 (list!18087 (_1!34011 lt!2036188)))))))

(assert (=> d!1590355 (= (++!12420 (t!367509 (list!18087 (_1!34011 lt!2036188))) (list!18087 (_2!34011 lt!2036188))) lt!2036331)))

(declare-fun b!4939685 () Bool)

(assert (=> b!4939685 (= e!3086434 (list!18087 (_2!34011 lt!2036188)))))

(declare-fun b!4939687 () Bool)

(declare-fun res!2108098 () Bool)

(assert (=> b!4939687 (=> (not res!2108098) (not e!3086435))))

(assert (=> b!4939687 (= res!2108098 (= (size!37697 lt!2036331) (+ (size!37697 (t!367509 (list!18087 (_1!34011 lt!2036188)))) (size!37697 (list!18087 (_2!34011 lt!2036188))))))))

(assert (= (and d!1590355 c!842380) b!4939685))

(assert (= (and d!1590355 (not c!842380)) b!4939686))

(assert (= (and d!1590355 res!2108099) b!4939687))

(assert (= (and b!4939687 res!2108098) b!4939688))

(assert (=> b!4939686 m!5961810))

(declare-fun m!5962228 () Bool)

(assert (=> b!4939686 m!5962228))

(declare-fun m!5962230 () Bool)

(assert (=> d!1590355 m!5962230))

(declare-fun m!5962232 () Bool)

(assert (=> d!1590355 m!5962232))

(assert (=> d!1590355 m!5961810))

(assert (=> d!1590355 m!5961890))

(declare-fun m!5962234 () Bool)

(assert (=> b!4939687 m!5962234))

(assert (=> b!4939687 m!5962184))

(assert (=> b!4939687 m!5961810))

(assert (=> b!4939687 m!5961896))

(assert (=> b!4939411 d!1590355))

(declare-fun d!1590357 () Bool)

(assert (=> d!1590357 (= (isEmpty!30625 (getLanguageWitness!658 z!3568)) (not ((_ is Some!14195) (getLanguageWitness!658 z!3568))))))

(assert (=> d!1590221 d!1590357))

(declare-fun bs!1181111 () Bool)

(declare-fun d!1590359 () Bool)

(assert (= bs!1181111 (and d!1590359 d!1590221)))

(declare-fun lambda!246162 () Int)

(assert (=> bs!1181111 (not (= lambda!246162 lambda!246139))))

(declare-fun bs!1181112 () Bool)

(assert (= bs!1181112 (and d!1590359 b!4939494)))

(assert (=> bs!1181112 (= lambda!246162 lambda!246140)))

(declare-fun bs!1181113 () Bool)

(assert (= bs!1181113 (and d!1590359 b!4939495)))

(assert (=> bs!1181113 (= lambda!246162 lambda!246141)))

(declare-fun lt!2036334 () Option!14196)

(declare-fun isDefined!11174 (Option!14196) Bool)

(declare-fun exists!1304 ((InoxSet Context!6182) Int) Bool)

(assert (=> d!1590359 (= (isDefined!11174 lt!2036334) (exists!1304 z!3568 lambda!246162))))

(declare-fun e!3086438 () Option!14196)

(assert (=> d!1590359 (= lt!2036334 e!3086438)))

(declare-fun c!842389 () Bool)

(assert (=> d!1590359 (= c!842389 (exists!1304 z!3568 lambda!246162))))

(assert (=> d!1590359 (= (getLanguageWitness!658 z!3568) lt!2036334)))

(declare-fun b!4939693 () Bool)

(declare-fun getLanguageWitness!659 (Context!6182) Option!14196)

(declare-fun getWitness!639 ((InoxSet Context!6182) Int) Context!6182)

(assert (=> b!4939693 (= e!3086438 (getLanguageWitness!659 (getWitness!639 z!3568 lambda!246162)))))

(declare-fun b!4939694 () Bool)

(assert (=> b!4939694 (= e!3086438 None!14195)))

(assert (= (and d!1590359 c!842389) b!4939693))

(assert (= (and d!1590359 (not c!842389)) b!4939694))

(declare-fun m!5962236 () Bool)

(assert (=> d!1590359 m!5962236))

(declare-fun m!5962238 () Bool)

(assert (=> d!1590359 m!5962238))

(assert (=> d!1590359 m!5962238))

(declare-fun m!5962240 () Bool)

(assert (=> b!4939693 m!5962240))

(assert (=> b!4939693 m!5962240))

(declare-fun m!5962242 () Bool)

(assert (=> b!4939693 m!5962242))

(assert (=> d!1590221 d!1590359))

(declare-fun d!1590361 () Bool)

(declare-fun lt!2036337 () Bool)

(declare-fun forall!13218 (List!57012 Int) Bool)

(assert (=> d!1590361 (= lt!2036337 (forall!13218 (toList!7978 z!3568) lambda!246139))))

(declare-fun choose!36368 ((InoxSet Context!6182) Int) Bool)

(assert (=> d!1590361 (= lt!2036337 (choose!36368 z!3568 lambda!246139))))

(assert (=> d!1590361 (= (forall!13215 z!3568 lambda!246139) lt!2036337)))

(declare-fun bs!1181114 () Bool)

(assert (= bs!1181114 d!1590361))

(assert (=> bs!1181114 m!5962012))

(assert (=> bs!1181114 m!5962012))

(declare-fun m!5962244 () Bool)

(assert (=> bs!1181114 m!5962244))

(declare-fun m!5962246 () Bool)

(assert (=> bs!1181114 m!5962246))

(assert (=> d!1590221 d!1590361))

(assert (=> b!4939373 d!1590313))

(declare-fun d!1590363 () Bool)

(assert (=> d!1590363 (= (head!10584 lt!2036193) (h!63333 lt!2036193))))

(assert (=> b!4939373 d!1590363))

(declare-fun d!1590365 () Bool)

(declare-fun res!2108104 () Bool)

(declare-fun e!3086443 () Bool)

(assert (=> d!1590365 (=> res!2108104 e!3086443)))

(assert (=> d!1590365 (= res!2108104 ((_ is Nil!56886) (exprs!3591 setElem!27882)))))

(assert (=> d!1590365 (= (forall!13216 (exprs!3591 setElem!27882) lambda!246144) e!3086443)))

(declare-fun b!4939699 () Bool)

(declare-fun e!3086444 () Bool)

(assert (=> b!4939699 (= e!3086443 e!3086444)))

(declare-fun res!2108105 () Bool)

(assert (=> b!4939699 (=> (not res!2108105) (not e!3086444))))

(declare-fun dynLambda!23023 (Int Regex!13449) Bool)

(assert (=> b!4939699 (= res!2108105 (dynLambda!23023 lambda!246144 (h!63334 (exprs!3591 setElem!27882))))))

(declare-fun b!4939700 () Bool)

(assert (=> b!4939700 (= e!3086444 (forall!13216 (t!367510 (exprs!3591 setElem!27882)) lambda!246144))))

(assert (= (and d!1590365 (not res!2108104)) b!4939699))

(assert (= (and b!4939699 res!2108105) b!4939700))

(declare-fun b_lambda!196337 () Bool)

(assert (=> (not b_lambda!196337) (not b!4939699)))

(declare-fun m!5962248 () Bool)

(assert (=> b!4939699 m!5962248))

(declare-fun m!5962250 () Bool)

(assert (=> b!4939700 m!5962250))

(assert (=> d!1590259 d!1590365))

(assert (=> b!4939348 d!1590251))

(declare-fun d!1590367 () Bool)

(declare-fun res!2108110 () Bool)

(declare-fun e!3086447 () Bool)

(assert (=> d!1590367 (=> (not res!2108110) (not e!3086447))))

(assert (=> d!1590367 (= res!2108110 (<= (size!37697 (list!18091 (xs!18284 (c!842298 totalInput!685)))) 512))))

(assert (=> d!1590367 (= (inv!73979 (c!842298 totalInput!685)) e!3086447)))

(declare-fun b!4939705 () Bool)

(declare-fun res!2108111 () Bool)

(assert (=> b!4939705 (=> (not res!2108111) (not e!3086447))))

(assert (=> b!4939705 (= res!2108111 (= (csize!30151 (c!842298 totalInput!685)) (size!37697 (list!18091 (xs!18284 (c!842298 totalInput!685))))))))

(declare-fun b!4939706 () Bool)

(assert (=> b!4939706 (= e!3086447 (and (> (csize!30151 (c!842298 totalInput!685)) 0) (<= (csize!30151 (c!842298 totalInput!685)) 512)))))

(assert (= (and d!1590367 res!2108110) b!4939705))

(assert (= (and b!4939705 res!2108111) b!4939706))

(declare-fun m!5962252 () Bool)

(assert (=> d!1590367 m!5962252))

(assert (=> d!1590367 m!5962252))

(declare-fun m!5962254 () Bool)

(assert (=> d!1590367 m!5962254))

(assert (=> b!4939705 m!5962252))

(assert (=> b!4939705 m!5962252))

(assert (=> b!4939705 m!5962254))

(assert (=> b!4939510 d!1590367))

(declare-fun b!4939707 () Bool)

(declare-fun e!3086448 () Bool)

(declare-fun e!3086450 () Bool)

(assert (=> b!4939707 (= e!3086448 e!3086450)))

(declare-fun res!2108115 () Bool)

(assert (=> b!4939707 (=> (not res!2108115) (not e!3086450))))

(assert (=> b!4939707 (= res!2108115 (not ((_ is Nil!56885) (++!12420 testedP!110 testedSuffix!70))))))

(declare-fun b!4939709 () Bool)

(assert (=> b!4939709 (= e!3086450 (isPrefix!5049 (tail!9723 testedP!110) (tail!9723 (++!12420 testedP!110 testedSuffix!70))))))

(declare-fun d!1590369 () Bool)

(declare-fun e!3086449 () Bool)

(assert (=> d!1590369 e!3086449))

(declare-fun res!2108113 () Bool)

(assert (=> d!1590369 (=> res!2108113 e!3086449)))

(declare-fun lt!2036338 () Bool)

(assert (=> d!1590369 (= res!2108113 (not lt!2036338))))

(assert (=> d!1590369 (= lt!2036338 e!3086448)))

(declare-fun res!2108112 () Bool)

(assert (=> d!1590369 (=> res!2108112 e!3086448)))

(assert (=> d!1590369 (= res!2108112 ((_ is Nil!56885) testedP!110))))

(assert (=> d!1590369 (= (isPrefix!5049 testedP!110 (++!12420 testedP!110 testedSuffix!70)) lt!2036338)))

(declare-fun b!4939708 () Bool)

(declare-fun res!2108114 () Bool)

(assert (=> b!4939708 (=> (not res!2108114) (not e!3086450))))

(assert (=> b!4939708 (= res!2108114 (= (head!10584 testedP!110) (head!10584 (++!12420 testedP!110 testedSuffix!70))))))

(declare-fun b!4939710 () Bool)

(assert (=> b!4939710 (= e!3086449 (>= (size!37697 (++!12420 testedP!110 testedSuffix!70)) (size!37697 testedP!110)))))

(assert (= (and d!1590369 (not res!2108112)) b!4939707))

(assert (= (and b!4939707 res!2108115) b!4939708))

(assert (= (and b!4939708 res!2108114) b!4939709))

(assert (= (and d!1590369 (not res!2108113)) b!4939710))

(assert (=> b!4939709 m!5961830))

(assert (=> b!4939709 m!5961802))

(declare-fun m!5962256 () Bool)

(assert (=> b!4939709 m!5962256))

(assert (=> b!4939709 m!5961830))

(assert (=> b!4939709 m!5962256))

(declare-fun m!5962258 () Bool)

(assert (=> b!4939709 m!5962258))

(assert (=> b!4939708 m!5961836))

(assert (=> b!4939708 m!5961802))

(declare-fun m!5962260 () Bool)

(assert (=> b!4939708 m!5962260))

(assert (=> b!4939710 m!5961802))

(declare-fun m!5962262 () Bool)

(assert (=> b!4939710 m!5962262))

(assert (=> b!4939710 m!5961806))

(assert (=> d!1590201 d!1590369))

(assert (=> d!1590201 d!1590255))

(declare-fun d!1590371 () Bool)

(assert (=> d!1590371 (isPrefix!5049 testedP!110 (++!12420 testedP!110 testedSuffix!70))))

(assert (=> d!1590371 true))

(declare-fun _$46!1900 () Unit!147633)

(assert (=> d!1590371 (= (choose!36363 testedP!110 testedSuffix!70) _$46!1900)))

(declare-fun bs!1181115 () Bool)

(assert (= bs!1181115 d!1590371))

(assert (=> bs!1181115 m!5961802))

(assert (=> bs!1181115 m!5961802))

(assert (=> bs!1181115 m!5961864))

(assert (=> d!1590201 d!1590371))

(declare-fun d!1590373 () Bool)

(declare-fun lt!2036339 () Int)

(assert (=> d!1590373 (>= lt!2036339 0)))

(declare-fun e!3086451 () Int)

(assert (=> d!1590373 (= lt!2036339 e!3086451)))

(declare-fun c!842390 () Bool)

(assert (=> d!1590373 (= c!842390 ((_ is Nil!56885) lt!2036193))))

(assert (=> d!1590373 (= (size!37697 lt!2036193) lt!2036339)))

(declare-fun b!4939711 () Bool)

(assert (=> b!4939711 (= e!3086451 0)))

(declare-fun b!4939712 () Bool)

(assert (=> b!4939712 (= e!3086451 (+ 1 (size!37697 (t!367509 lt!2036193))))))

(assert (= (and d!1590373 c!842390) b!4939711))

(assert (= (and d!1590373 (not c!842390)) b!4939712))

(declare-fun m!5962264 () Bool)

(assert (=> b!4939712 m!5962264))

(assert (=> b!4939375 d!1590373))

(assert (=> b!4939375 d!1590205))

(declare-fun b!4939714 () Bool)

(declare-fun res!2108118 () Bool)

(declare-fun e!3086453 () Bool)

(assert (=> b!4939714 (=> (not res!2108118) (not e!3086453))))

(assert (=> b!4939714 (= res!2108118 (not (isEmpty!30626 (left!41494 (c!842298 (_1!34011 lt!2036228))))))))

(declare-fun b!4939715 () Bool)

(assert (=> b!4939715 (= e!3086453 (not (isEmpty!30626 (right!41824 (c!842298 (_1!34011 lt!2036228))))))))

(declare-fun b!4939716 () Bool)

(declare-fun res!2108120 () Bool)

(assert (=> b!4939716 (=> (not res!2108120) (not e!3086453))))

(assert (=> b!4939716 (= res!2108120 (isBalanced!4128 (right!41824 (c!842298 (_1!34011 lt!2036228)))))))

(declare-fun b!4939717 () Bool)

(declare-fun res!2108116 () Bool)

(assert (=> b!4939717 (=> (not res!2108116) (not e!3086453))))

(assert (=> b!4939717 (= res!2108116 (isBalanced!4128 (left!41494 (c!842298 (_1!34011 lt!2036228)))))))

(declare-fun b!4939718 () Bool)

(declare-fun res!2108121 () Bool)

(assert (=> b!4939718 (=> (not res!2108121) (not e!3086453))))

(assert (=> b!4939718 (= res!2108121 (<= (- (height!1995 (left!41494 (c!842298 (_1!34011 lt!2036228)))) (height!1995 (right!41824 (c!842298 (_1!34011 lt!2036228))))) 1))))

(declare-fun b!4939713 () Bool)

(declare-fun e!3086452 () Bool)

(assert (=> b!4939713 (= e!3086452 e!3086453)))

(declare-fun res!2108119 () Bool)

(assert (=> b!4939713 (=> (not res!2108119) (not e!3086453))))

(assert (=> b!4939713 (= res!2108119 (<= (- 1) (- (height!1995 (left!41494 (c!842298 (_1!34011 lt!2036228)))) (height!1995 (right!41824 (c!842298 (_1!34011 lt!2036228)))))))))

(declare-fun d!1590375 () Bool)

(declare-fun res!2108117 () Bool)

(assert (=> d!1590375 (=> res!2108117 e!3086452)))

(assert (=> d!1590375 (= res!2108117 (not ((_ is Node!14960) (c!842298 (_1!34011 lt!2036228)))))))

(assert (=> d!1590375 (= (isBalanced!4128 (c!842298 (_1!34011 lt!2036228))) e!3086452)))

(assert (= (and d!1590375 (not res!2108117)) b!4939713))

(assert (= (and b!4939713 res!2108119) b!4939718))

(assert (= (and b!4939718 res!2108121) b!4939717))

(assert (= (and b!4939717 res!2108116) b!4939716))

(assert (= (and b!4939716 res!2108120) b!4939714))

(assert (= (and b!4939714 res!2108118) b!4939715))

(declare-fun m!5962266 () Bool)

(assert (=> b!4939714 m!5962266))

(declare-fun m!5962268 () Bool)

(assert (=> b!4939718 m!5962268))

(declare-fun m!5962270 () Bool)

(assert (=> b!4939718 m!5962270))

(declare-fun m!5962272 () Bool)

(assert (=> b!4939715 m!5962272))

(assert (=> b!4939713 m!5962268))

(assert (=> b!4939713 m!5962270))

(declare-fun m!5962274 () Bool)

(assert (=> b!4939716 m!5962274))

(declare-fun m!5962276 () Bool)

(assert (=> b!4939717 m!5962276))

(assert (=> d!1590219 d!1590375))

(declare-fun b!4939909 () Bool)

(declare-fun e!3086559 () tuple2!61422)

(assert (=> b!4939909 (= e!3086559 (tuple2!61423 (c!842298 totalInput!685) (c!842298 totalInput!685)))))

(declare-fun b!4939910 () Bool)

(declare-fun lt!2036425 () Unit!147633)

(declare-fun lt!2036426 () Unit!147633)

(assert (=> b!4939910 (= lt!2036425 lt!2036426)))

(declare-fun lt!2036416 () List!57009)

(declare-fun call!344694 () Int)

(declare-fun drop!2278 (List!57009 Int) List!57009)

(declare-fun slice!788 (List!57009 Int Int) List!57009)

(assert (=> b!4939910 (= (drop!2278 lt!2036416 testedPSize!70) (slice!788 lt!2036416 testedPSize!70 call!344694))))

(declare-fun dropLemma!36 (List!57009 Int) Unit!147633)

(assert (=> b!4939910 (= lt!2036426 (dropLemma!36 lt!2036416 testedPSize!70))))

(assert (=> b!4939910 (= lt!2036416 (list!18091 (xs!18284 (c!842298 totalInput!685))))))

(declare-fun lt!2036427 () tuple2!61424)

(declare-fun call!344696 () tuple2!61424)

(assert (=> b!4939910 (= lt!2036427 call!344696)))

(declare-fun e!3086562 () tuple2!61422)

(declare-fun slice!789 (IArray!29981 Int Int) IArray!29981)

(assert (=> b!4939910 (= e!3086562 (tuple2!61423 (Leaf!24873 (slice!789 (xs!18284 (c!842298 totalInput!685)) 0 testedPSize!70) testedPSize!70) (Leaf!24873 (slice!789 (xs!18284 (c!842298 totalInput!685)) testedPSize!70 (csize!30151 (c!842298 totalInput!685))) (- (csize!30151 (c!842298 totalInput!685)) testedPSize!70))))))

(declare-fun lt!2036417 () List!57009)

(declare-fun bm!344688 () Bool)

(declare-fun lt!2036428 () List!57009)

(declare-fun c!842472 () Bool)

(declare-fun lt!2036420 () tuple2!61424)

(declare-fun call!344695 () List!57009)

(declare-fun lt!2036418 () tuple2!61424)

(assert (=> bm!344688 (= call!344695 (++!12420 (ite c!842472 (_2!34015 lt!2036418) lt!2036428) (ite c!842472 lt!2036417 (_1!34015 lt!2036420))))))

(declare-fun bm!344689 () Bool)

(declare-fun c!842463 () Bool)

(assert (=> bm!344689 (= c!842463 c!842472)))

(declare-fun call!344693 () tuple2!61424)

(assert (=> bm!344689 (= call!344693 call!344696)))

(declare-fun b!4939911 () Bool)

(declare-fun e!3086555 () tuple2!61422)

(declare-fun e!3086560 () tuple2!61422)

(assert (=> b!4939911 (= e!3086555 e!3086560)))

(declare-fun c!842470 () Bool)

(assert (=> b!4939911 (= c!842470 (< testedPSize!70 (size!37700 (left!41494 (c!842298 totalInput!685)))))))

(declare-fun b!4939912 () Bool)

(declare-fun e!3086556 () tuple2!61422)

(assert (=> b!4939912 (= e!3086559 e!3086556)))

(declare-fun c!842467 () Bool)

(assert (=> b!4939912 (= c!842467 ((_ is Leaf!24873) (c!842298 totalInput!685)))))

(declare-fun b!4939913 () Bool)

(declare-fun e!3086553 () Int)

(assert (=> b!4939913 (= e!3086553 testedPSize!70)))

(declare-fun b!4939914 () Bool)

(assert (=> b!4939914 (= lt!2036418 call!344693)))

(declare-fun e!3086561 () tuple2!61424)

(assert (=> b!4939914 (= e!3086561 (tuple2!61425 (_1!34015 lt!2036418) call!344695))))

(declare-fun lt!2036424 () tuple2!61422)

(declare-fun e!3086558 () Bool)

(declare-fun b!4939915 () Bool)

(assert (=> b!4939915 (= e!3086558 (= (tuple2!61425 (list!18089 (_1!34014 lt!2036424)) (list!18089 (_2!34014 lt!2036424))) (splitAtIndex!134 (list!18089 (c!842298 totalInput!685)) testedPSize!70)))))

(declare-fun bm!344690 () Bool)

(assert (=> bm!344690 (= call!344694 (size!37697 (ite c!842467 lt!2036416 lt!2036428)))))

(declare-fun b!4939916 () Bool)

(assert (=> b!4939916 (= e!3086555 (tuple2!61423 (left!41494 (c!842298 totalInput!685)) (right!41824 (c!842298 totalInput!685))))))

(declare-fun b!4939917 () Bool)

(declare-fun e!3086554 () tuple2!61422)

(assert (=> b!4939917 (= e!3086554 e!3086562)))

(declare-fun c!842464 () Bool)

(assert (=> b!4939917 (= c!842464 (= testedPSize!70 (csize!30151 (c!842298 totalInput!685))))))

(declare-fun b!4939918 () Bool)

(declare-fun e!3086564 () Int)

(assert (=> b!4939918 (= e!3086564 testedPSize!70)))

(declare-fun b!4939919 () Bool)

(declare-fun c!842471 () Bool)

(assert (=> b!4939919 (= c!842471 (<= testedPSize!70 0))))

(assert (=> b!4939919 (= e!3086556 e!3086554)))

(declare-fun b!4939920 () Bool)

(declare-fun c!842473 () Bool)

(assert (=> b!4939920 (= c!842473 (= (size!37700 (left!41494 (c!842298 totalInput!685))) testedPSize!70))))

(declare-fun lt!2036421 () Unit!147633)

(declare-fun lt!2036423 () Unit!147633)

(assert (=> b!4939920 (= lt!2036421 lt!2036423)))

(declare-fun e!3086557 () tuple2!61424)

(assert (=> b!4939920 (= (splitAtIndex!134 (++!12420 lt!2036428 lt!2036417) testedPSize!70) e!3086557)))

(declare-fun c!842474 () Bool)

(assert (=> b!4939920 (= c!842474 (= call!344694 testedPSize!70))))

(declare-fun splitAtLemma!36 (List!57009 List!57009 Int) Unit!147633)

(assert (=> b!4939920 (= lt!2036423 (splitAtLemma!36 lt!2036428 lt!2036417 testedPSize!70))))

(assert (=> b!4939920 (= lt!2036417 (list!18089 (right!41824 (c!842298 totalInput!685))))))

(assert (=> b!4939920 (= lt!2036428 (list!18089 (left!41494 (c!842298 totalInput!685))))))

(assert (=> b!4939920 (= e!3086556 e!3086555)))

(declare-fun b!4939921 () Bool)

(assert (=> b!4939921 (= e!3086557 e!3086561)))

(assert (=> b!4939921 (= c!842472 (< testedPSize!70 call!344694))))

(declare-fun b!4939922 () Bool)

(declare-fun e!3086563 () List!57009)

(assert (=> b!4939922 (= e!3086563 (list!18091 (xs!18284 (c!842298 totalInput!685))))))

(declare-fun b!4939924 () Bool)

(declare-fun lt!2036419 () tuple2!61422)

(declare-fun call!344697 () tuple2!61422)

(assert (=> b!4939924 (= lt!2036419 call!344697)))

(declare-fun call!344698 () Conc!14960)

(assert (=> b!4939924 (= e!3086560 (tuple2!61423 call!344698 (_2!34014 lt!2036419)))))

(declare-fun b!4939925 () Bool)

(assert (=> b!4939925 (= e!3086554 (tuple2!61423 Empty!14960 (c!842298 totalInput!685)))))

(declare-fun bm!344691 () Bool)

(declare-fun lt!2036422 () tuple2!61422)

(declare-fun ++!12422 (Conc!14960 Conc!14960) Conc!14960)

(assert (=> bm!344691 (= call!344698 (++!12422 (ite c!842470 (_2!34014 lt!2036422) (left!41494 (c!842298 totalInput!685))) (ite c!842470 (right!41824 (c!842298 totalInput!685)) (_1!34014 lt!2036419))))))

(declare-fun b!4939926 () Bool)

(assert (=> b!4939926 (= e!3086553 (- testedPSize!70 (size!37700 (left!41494 (c!842298 totalInput!685)))))))

(declare-fun b!4939927 () Bool)

(assert (=> b!4939927 (= lt!2036422 call!344697)))

(assert (=> b!4939927 (= e!3086560 (tuple2!61423 (_1!34014 lt!2036422) call!344698))))

(declare-fun b!4939928 () Bool)

(assert (=> b!4939928 (= lt!2036420 call!344693)))

(assert (=> b!4939928 (= e!3086561 (tuple2!61425 call!344695 (_2!34015 lt!2036420)))))

(declare-fun bm!344692 () Bool)

(declare-fun c!842469 () Bool)

(assert (=> bm!344692 (= c!842469 c!842470)))

(assert (=> bm!344692 (= call!344697 (splitAt!362 (ite c!842470 (left!41494 (c!842298 totalInput!685)) (right!41824 (c!842298 totalInput!685))) e!3086553))))

(declare-fun b!4939929 () Bool)

(assert (=> b!4939929 (= e!3086562 (tuple2!61423 (c!842298 totalInput!685) Empty!14960))))

(declare-fun bm!344693 () Bool)

(declare-fun c!842468 () Bool)

(assert (=> bm!344693 (= c!842468 c!842467)))

(assert (=> bm!344693 (= call!344696 (splitAtIndex!134 e!3086563 (ite c!842467 testedPSize!70 e!3086564)))))

(declare-fun b!4939930 () Bool)

(assert (=> b!4939930 (= e!3086564 (- testedPSize!70 call!344694))))

(declare-fun b!4939931 () Bool)

(declare-fun res!2108166 () Bool)

(assert (=> b!4939931 (=> (not res!2108166) (not e!3086558))))

(assert (=> b!4939931 (= res!2108166 (isBalanced!4128 (_2!34014 lt!2036424)))))

(declare-fun b!4939932 () Bool)

(assert (=> b!4939932 (= e!3086563 (ite c!842472 lt!2036428 lt!2036417))))

(declare-fun b!4939923 () Bool)

(assert (=> b!4939923 (= e!3086557 (tuple2!61425 lt!2036428 lt!2036417))))

(declare-fun d!1590377 () Bool)

(assert (=> d!1590377 e!3086558))

(declare-fun res!2108167 () Bool)

(assert (=> d!1590377 (=> (not res!2108167) (not e!3086558))))

(assert (=> d!1590377 (= res!2108167 (isBalanced!4128 (_1!34014 lt!2036424)))))

(assert (=> d!1590377 (= lt!2036424 e!3086559)))

(declare-fun c!842466 () Bool)

(assert (=> d!1590377 (= c!842466 ((_ is Empty!14960) (c!842298 totalInput!685)))))

(assert (=> d!1590377 (isBalanced!4128 (c!842298 totalInput!685))))

(assert (=> d!1590377 (= (splitAt!362 (c!842298 totalInput!685) testedPSize!70) lt!2036424)))

(assert (= (and d!1590377 c!842466) b!4939909))

(assert (= (and d!1590377 (not c!842466)) b!4939912))

(assert (= (and b!4939912 c!842467) b!4939919))

(assert (= (and b!4939912 (not c!842467)) b!4939920))

(assert (= (and b!4939919 c!842471) b!4939925))

(assert (= (and b!4939919 (not c!842471)) b!4939917))

(assert (= (and b!4939917 c!842464) b!4939929))

(assert (= (and b!4939917 (not c!842464)) b!4939910))

(assert (= (and b!4939920 c!842474) b!4939923))

(assert (= (and b!4939920 (not c!842474)) b!4939921))

(assert (= (and b!4939921 c!842472) b!4939914))

(assert (= (and b!4939921 (not c!842472)) b!4939928))

(assert (= (or b!4939914 b!4939928) bm!344688))

(assert (= (or b!4939914 b!4939928) bm!344689))

(assert (= (and bm!344689 c!842463) b!4939918))

(assert (= (and bm!344689 (not c!842463)) b!4939930))

(assert (= (and b!4939920 c!842473) b!4939916))

(assert (= (and b!4939920 (not c!842473)) b!4939911))

(assert (= (and b!4939911 c!842470) b!4939927))

(assert (= (and b!4939911 (not c!842470)) b!4939924))

(assert (= (or b!4939927 b!4939924) bm!344691))

(assert (= (or b!4939927 b!4939924) bm!344692))

(assert (= (and bm!344692 c!842469) b!4939913))

(assert (= (and bm!344692 (not c!842469)) b!4939926))

(assert (= (or b!4939910 b!4939920 b!4939921 b!4939930) bm!344690))

(assert (= (or b!4939910 bm!344689) bm!344693))

(assert (= (and bm!344693 c!842468) b!4939922))

(assert (= (and bm!344693 (not c!842468)) b!4939932))

(assert (= (and d!1590377 res!2108167) b!4939931))

(assert (= (and b!4939931 res!2108166) b!4939915))

(assert (=> b!4939926 m!5962200))

(declare-fun m!5962412 () Bool)

(assert (=> b!4939920 m!5962412))

(assert (=> b!4939920 m!5962200))

(declare-fun m!5962414 () Bool)

(assert (=> b!4939920 m!5962414))

(declare-fun m!5962416 () Bool)

(assert (=> b!4939920 m!5962416))

(assert (=> b!4939920 m!5962414))

(declare-fun m!5962418 () Bool)

(assert (=> b!4939920 m!5962418))

(declare-fun m!5962420 () Bool)

(assert (=> b!4939920 m!5962420))

(declare-fun m!5962422 () Bool)

(assert (=> bm!344690 m!5962422))

(declare-fun m!5962424 () Bool)

(assert (=> bm!344691 m!5962424))

(assert (=> b!4939911 m!5962200))

(declare-fun m!5962426 () Bool)

(assert (=> bm!344692 m!5962426))

(assert (=> b!4939922 m!5962252))

(declare-fun m!5962428 () Bool)

(assert (=> b!4939931 m!5962428))

(declare-fun m!5962430 () Bool)

(assert (=> d!1590377 m!5962430))

(assert (=> d!1590377 m!5961906))

(declare-fun m!5962432 () Bool)

(assert (=> bm!344693 m!5962432))

(declare-fun m!5962434 () Bool)

(assert (=> b!4939910 m!5962434))

(declare-fun m!5962436 () Bool)

(assert (=> b!4939910 m!5962436))

(assert (=> b!4939910 m!5962252))

(declare-fun m!5962438 () Bool)

(assert (=> b!4939910 m!5962438))

(declare-fun m!5962440 () Bool)

(assert (=> b!4939910 m!5962440))

(declare-fun m!5962442 () Bool)

(assert (=> b!4939910 m!5962442))

(declare-fun m!5962444 () Bool)

(assert (=> b!4939915 m!5962444))

(declare-fun m!5962446 () Bool)

(assert (=> b!4939915 m!5962446))

(assert (=> b!4939915 m!5962024))

(assert (=> b!4939915 m!5962024))

(declare-fun m!5962448 () Bool)

(assert (=> b!4939915 m!5962448))

(declare-fun m!5962450 () Bool)

(assert (=> bm!344688 m!5962450))

(assert (=> d!1590219 d!1590377))

(assert (=> d!1590219 d!1590293))

(declare-fun b!4939939 () Bool)

(declare-fun e!3086568 () Bool)

(declare-fun e!3086570 () Bool)

(assert (=> b!4939939 (= e!3086568 e!3086570)))

(declare-fun res!2108173 () Bool)

(assert (=> b!4939939 (=> (not res!2108173) (not e!3086570))))

(assert (=> b!4939939 (= res!2108173 (not ((_ is Nil!56885) (tail!9723 lt!2036193))))))

(declare-fun b!4939941 () Bool)

(assert (=> b!4939941 (= e!3086570 (isPrefix!5049 (tail!9723 (tail!9723 testedP!110)) (tail!9723 (tail!9723 lt!2036193))))))

(declare-fun d!1590431 () Bool)

(declare-fun e!3086569 () Bool)

(assert (=> d!1590431 e!3086569))

(declare-fun res!2108171 () Bool)

(assert (=> d!1590431 (=> res!2108171 e!3086569)))

(declare-fun lt!2036430 () Bool)

(assert (=> d!1590431 (= res!2108171 (not lt!2036430))))

(assert (=> d!1590431 (= lt!2036430 e!3086568)))

(declare-fun res!2108170 () Bool)

(assert (=> d!1590431 (=> res!2108170 e!3086568)))

(assert (=> d!1590431 (= res!2108170 ((_ is Nil!56885) (tail!9723 testedP!110)))))

(assert (=> d!1590431 (= (isPrefix!5049 (tail!9723 testedP!110) (tail!9723 lt!2036193)) lt!2036430)))

(declare-fun b!4939940 () Bool)

(declare-fun res!2108172 () Bool)

(assert (=> b!4939940 (=> (not res!2108172) (not e!3086570))))

(assert (=> b!4939940 (= res!2108172 (= (head!10584 (tail!9723 testedP!110)) (head!10584 (tail!9723 lt!2036193))))))

(declare-fun b!4939942 () Bool)

(assert (=> b!4939942 (= e!3086569 (>= (size!37697 (tail!9723 lt!2036193)) (size!37697 (tail!9723 testedP!110))))))

(assert (= (and d!1590431 (not res!2108170)) b!4939939))

(assert (= (and b!4939939 res!2108173) b!4939940))

(assert (= (and b!4939940 res!2108172) b!4939941))

(assert (= (and d!1590431 (not res!2108171)) b!4939942))

(assert (=> b!4939941 m!5961830))

(assert (=> b!4939941 m!5962088))

(assert (=> b!4939941 m!5961832))

(declare-fun m!5962452 () Bool)

(assert (=> b!4939941 m!5962452))

(assert (=> b!4939941 m!5962088))

(assert (=> b!4939941 m!5962452))

(declare-fun m!5962454 () Bool)

(assert (=> b!4939941 m!5962454))

(assert (=> b!4939940 m!5961830))

(assert (=> b!4939940 m!5962094))

(assert (=> b!4939940 m!5961832))

(declare-fun m!5962456 () Bool)

(assert (=> b!4939940 m!5962456))

(assert (=> b!4939942 m!5961832))

(declare-fun m!5962458 () Bool)

(assert (=> b!4939942 m!5962458))

(assert (=> b!4939942 m!5961830))

(assert (=> b!4939942 m!5962100))

(assert (=> b!4939374 d!1590431))

(assert (=> b!4939374 d!1590287))

(declare-fun d!1590433 () Bool)

(assert (=> d!1590433 (= (tail!9723 lt!2036193) (t!367509 lt!2036193))))

(assert (=> b!4939374 d!1590433))

(declare-fun d!1590435 () Bool)

(assert (=> d!1590435 (= (list!18087 (_1!34011 lt!2036228)) (list!18089 (c!842298 (_1!34011 lt!2036228))))))

(declare-fun bs!1181120 () Bool)

(assert (= bs!1181120 d!1590435))

(declare-fun m!5962460 () Bool)

(assert (=> bs!1181120 m!5962460))

(assert (=> b!4939423 d!1590435))

(declare-fun d!1590437 () Bool)

(assert (=> d!1590437 (= (list!18087 (_2!34011 lt!2036228)) (list!18089 (c!842298 (_2!34011 lt!2036228))))))

(declare-fun bs!1181121 () Bool)

(assert (= bs!1181121 d!1590437))

(declare-fun m!5962462 () Bool)

(assert (=> bs!1181121 m!5962462))

(assert (=> b!4939423 d!1590437))

(declare-fun b!4939961 () Bool)

(declare-fun e!3086582 () tuple2!61424)

(assert (=> b!4939961 (= e!3086582 (tuple2!61425 Nil!56885 Nil!56885))))

(declare-fun b!4939962 () Bool)

(declare-fun e!3086580 () tuple2!61424)

(assert (=> b!4939962 (= e!3086580 (tuple2!61425 Nil!56885 (list!18087 totalInput!685)))))

(declare-fun b!4939963 () Bool)

(assert (=> b!4939963 (= e!3086582 e!3086580)))

(declare-fun c!842491 () Bool)

(assert (=> b!4939963 (= c!842491 (<= testedPSize!70 0))))

(declare-fun b!4939964 () Bool)

(declare-fun res!2108179 () Bool)

(declare-fun e!3086581 () Bool)

(assert (=> b!4939964 (=> (not res!2108179) (not e!3086581))))

(declare-fun lt!2036442 () tuple2!61424)

(declare-fun take!585 (List!57009 Int) List!57009)

(assert (=> b!4939964 (= res!2108179 (= (_1!34015 lt!2036442) (take!585 (list!18087 totalInput!685) testedPSize!70)))))

(declare-fun b!4939965 () Bool)

(declare-fun lt!2036441 () tuple2!61424)

(assert (=> b!4939965 (= lt!2036441 (splitAtIndex!134 (t!367509 (list!18087 totalInput!685)) (- testedPSize!70 1)))))

(assert (=> b!4939965 (= e!3086580 (tuple2!61425 (Cons!56885 (h!63333 (list!18087 totalInput!685)) (_1!34015 lt!2036441)) (_2!34015 lt!2036441)))))

(declare-fun d!1590439 () Bool)

(assert (=> d!1590439 e!3086581))

(declare-fun res!2108178 () Bool)

(assert (=> d!1590439 (=> (not res!2108178) (not e!3086581))))

(assert (=> d!1590439 (= res!2108178 (= (++!12420 (_1!34015 lt!2036442) (_2!34015 lt!2036442)) (list!18087 totalInput!685)))))

(assert (=> d!1590439 (= lt!2036442 e!3086582)))

(declare-fun c!842490 () Bool)

(assert (=> d!1590439 (= c!842490 ((_ is Nil!56885) (list!18087 totalInput!685)))))

(assert (=> d!1590439 (= (splitAtIndex!134 (list!18087 totalInput!685) testedPSize!70) lt!2036442)))

(declare-fun b!4939966 () Bool)

(assert (=> b!4939966 (= e!3086581 (= (_2!34015 lt!2036442) (drop!2278 (list!18087 totalInput!685) testedPSize!70)))))

(assert (= (and d!1590439 c!842490) b!4939961))

(assert (= (and d!1590439 (not c!842490)) b!4939963))

(assert (= (and b!4939963 c!842491) b!4939962))

(assert (= (and b!4939963 (not c!842491)) b!4939965))

(assert (= (and d!1590439 res!2108178) b!4939964))

(assert (= (and b!4939964 res!2108179) b!4939966))

(assert (=> b!4939964 m!5961800))

(declare-fun m!5962480 () Bool)

(assert (=> b!4939964 m!5962480))

(declare-fun m!5962482 () Bool)

(assert (=> b!4939965 m!5962482))

(declare-fun m!5962484 () Bool)

(assert (=> d!1590439 m!5962484))

(assert (=> b!4939966 m!5961800))

(declare-fun m!5962486 () Bool)

(assert (=> b!4939966 m!5962486))

(assert (=> b!4939423 d!1590439))

(assert (=> b!4939423 d!1590253))

(declare-fun b!4939975 () Bool)

(declare-fun e!3086587 () List!57009)

(assert (=> b!4939975 (= e!3086587 Nil!56885)))

(declare-fun b!4939977 () Bool)

(declare-fun e!3086588 () List!57009)

(assert (=> b!4939977 (= e!3086588 (list!18091 (xs!18284 (c!842298 totalInput!685))))))

(declare-fun d!1590449 () Bool)

(declare-fun c!842495 () Bool)

(assert (=> d!1590449 (= c!842495 ((_ is Empty!14960) (c!842298 totalInput!685)))))

(assert (=> d!1590449 (= (list!18089 (c!842298 totalInput!685)) e!3086587)))

(declare-fun b!4939976 () Bool)

(assert (=> b!4939976 (= e!3086587 e!3086588)))

(declare-fun c!842496 () Bool)

(assert (=> b!4939976 (= c!842496 ((_ is Leaf!24873) (c!842298 totalInput!685)))))

(declare-fun b!4939978 () Bool)

(assert (=> b!4939978 (= e!3086588 (++!12420 (list!18089 (left!41494 (c!842298 totalInput!685))) (list!18089 (right!41824 (c!842298 totalInput!685)))))))

(assert (= (and d!1590449 c!842495) b!4939975))

(assert (= (and d!1590449 (not c!842495)) b!4939976))

(assert (= (and b!4939976 c!842496) b!4939977))

(assert (= (and b!4939976 (not c!842496)) b!4939978))

(assert (=> b!4939977 m!5962252))

(assert (=> b!4939978 m!5962416))

(assert (=> b!4939978 m!5962420))

(assert (=> b!4939978 m!5962416))

(assert (=> b!4939978 m!5962420))

(declare-fun m!5962498 () Bool)

(assert (=> b!4939978 m!5962498))

(assert (=> d!1590253 d!1590449))

(declare-fun bs!1181129 () Bool)

(declare-fun d!1590453 () Bool)

(assert (= bs!1181129 (and d!1590453 d!1590221)))

(declare-fun lambda!246172 () Int)

(assert (=> bs!1181129 (not (= lambda!246172 lambda!246139))))

(declare-fun bs!1181130 () Bool)

(assert (= bs!1181130 (and d!1590453 b!4939494)))

(assert (=> bs!1181130 (not (= lambda!246172 lambda!246140))))

(declare-fun bs!1181132 () Bool)

(assert (= bs!1181132 (and d!1590453 b!4939495)))

(assert (=> bs!1181132 (not (= lambda!246172 lambda!246141))))

(declare-fun bs!1181133 () Bool)

(assert (= bs!1181133 (and d!1590453 d!1590359)))

(assert (=> bs!1181133 (not (= lambda!246172 lambda!246162))))

(assert (=> d!1590453 true))

(declare-fun order!25993 () Int)

(declare-fun dynLambda!23025 (Int Int) Int)

(assert (=> d!1590453 (< (dynLambda!23025 order!25993 lambda!246139) (dynLambda!23025 order!25993 lambda!246172))))

(assert (=> d!1590453 (not (exists!1303 lt!2036289 lambda!246172))))

(declare-fun lt!2036448 () Unit!147633)

(declare-fun choose!36369 (List!57012 Int) Unit!147633)

(assert (=> d!1590453 (= lt!2036448 (choose!36369 lt!2036289 lambda!246139))))

(assert (=> d!1590453 (forall!13218 lt!2036289 lambda!246139)))

(assert (=> d!1590453 (= (lemmaForallThenNotExists!199 lt!2036289 lambda!246139) lt!2036448)))

(declare-fun bs!1181134 () Bool)

(assert (= bs!1181134 d!1590453))

(declare-fun m!5962524 () Bool)

(assert (=> bs!1181134 m!5962524))

(declare-fun m!5962526 () Bool)

(assert (=> bs!1181134 m!5962526))

(declare-fun m!5962528 () Bool)

(assert (=> bs!1181134 m!5962528))

(assert (=> b!4939495 d!1590453))

(declare-fun bs!1181135 () Bool)

(declare-fun d!1590457 () Bool)

(assert (= bs!1181135 (and d!1590457 d!1590453)))

(declare-fun lambda!246175 () Int)

(assert (=> bs!1181135 (= (= (ite c!842340 lambda!246140 lambda!246141) lambda!246139) (= lambda!246175 lambda!246172))))

(declare-fun bs!1181136 () Bool)

(assert (= bs!1181136 (and d!1590457 d!1590359)))

(assert (=> bs!1181136 (not (= lambda!246175 lambda!246162))))

(declare-fun bs!1181137 () Bool)

(assert (= bs!1181137 (and d!1590457 d!1590221)))

(assert (=> bs!1181137 (not (= lambda!246175 lambda!246139))))

(declare-fun bs!1181138 () Bool)

(assert (= bs!1181138 (and d!1590457 b!4939494)))

(assert (=> bs!1181138 (not (= lambda!246175 lambda!246140))))

(declare-fun bs!1181139 () Bool)

(assert (= bs!1181139 (and d!1590457 b!4939495)))

(assert (=> bs!1181139 (not (= lambda!246175 lambda!246141))))

(assert (=> d!1590457 true))

(assert (=> d!1590457 (< (dynLambda!23025 order!25993 (ite c!842340 lambda!246140 lambda!246141)) (dynLambda!23025 order!25993 lambda!246175))))

(assert (=> d!1590457 (= (exists!1303 (ite c!842340 lt!2036288 lt!2036289) (ite c!842340 lambda!246140 lambda!246141)) (not (forall!13218 (ite c!842340 lt!2036288 lt!2036289) lambda!246175)))))

(declare-fun bs!1181140 () Bool)

(assert (= bs!1181140 d!1590457))

(declare-fun m!5962530 () Bool)

(assert (=> bs!1181140 m!5962530))

(assert (=> bm!344656 d!1590457))

(declare-fun bs!1181141 () Bool)

(declare-fun d!1590459 () Bool)

(assert (= bs!1181141 (and d!1590459 d!1590453)))

(declare-fun lambda!246178 () Int)

(assert (=> bs!1181141 (= lambda!246178 lambda!246172)))

(declare-fun bs!1181142 () Bool)

(assert (= bs!1181142 (and d!1590459 d!1590457)))

(assert (=> bs!1181142 (= (= lambda!246139 (ite c!842340 lambda!246140 lambda!246141)) (= lambda!246178 lambda!246175))))

(declare-fun bs!1181143 () Bool)

(assert (= bs!1181143 (and d!1590459 d!1590359)))

(assert (=> bs!1181143 (not (= lambda!246178 lambda!246162))))

(declare-fun bs!1181144 () Bool)

(assert (= bs!1181144 (and d!1590459 d!1590221)))

(assert (=> bs!1181144 (not (= lambda!246178 lambda!246139))))

(declare-fun bs!1181145 () Bool)

(assert (= bs!1181145 (and d!1590459 b!4939494)))

(assert (=> bs!1181145 (not (= lambda!246178 lambda!246140))))

(declare-fun bs!1181146 () Bool)

(assert (= bs!1181146 (and d!1590459 b!4939495)))

(assert (=> bs!1181146 (not (= lambda!246178 lambda!246141))))

(assert (=> d!1590459 true))

(assert (=> d!1590459 (< (dynLambda!23025 order!25993 lambda!246139) (dynLambda!23025 order!25993 lambda!246178))))

(assert (=> d!1590459 (exists!1303 lt!2036288 lambda!246178)))

(declare-fun lt!2036451 () Unit!147633)

(declare-fun choose!36370 (List!57012 Int) Unit!147633)

(assert (=> d!1590459 (= lt!2036451 (choose!36370 lt!2036288 lambda!246139))))

(assert (=> d!1590459 (not (forall!13218 lt!2036288 lambda!246139))))

(assert (=> d!1590459 (= (lemmaNotForallThenExists!216 lt!2036288 lambda!246139) lt!2036451)))

(declare-fun bs!1181147 () Bool)

(assert (= bs!1181147 d!1590459))

(declare-fun m!5962532 () Bool)

(assert (=> bs!1181147 m!5962532))

(declare-fun m!5962534 () Bool)

(assert (=> bs!1181147 m!5962534))

(declare-fun m!5962536 () Bool)

(assert (=> bs!1181147 m!5962536))

(assert (=> b!4939494 d!1590459))

(declare-fun b!4940012 () Bool)

(declare-fun res!2108184 () Bool)

(declare-fun e!3086609 () Bool)

(assert (=> b!4940012 (=> (not res!2108184) (not e!3086609))))

(assert (=> b!4940012 (= res!2108184 (not (isEmpty!30626 (left!41494 (c!842298 (_2!34011 lt!2036228))))))))

(declare-fun b!4940013 () Bool)

(assert (=> b!4940013 (= e!3086609 (not (isEmpty!30626 (right!41824 (c!842298 (_2!34011 lt!2036228))))))))

(declare-fun b!4940014 () Bool)

(declare-fun res!2108186 () Bool)

(assert (=> b!4940014 (=> (not res!2108186) (not e!3086609))))

(assert (=> b!4940014 (= res!2108186 (isBalanced!4128 (right!41824 (c!842298 (_2!34011 lt!2036228)))))))

(declare-fun b!4940015 () Bool)

(declare-fun res!2108182 () Bool)

(assert (=> b!4940015 (=> (not res!2108182) (not e!3086609))))

(assert (=> b!4940015 (= res!2108182 (isBalanced!4128 (left!41494 (c!842298 (_2!34011 lt!2036228)))))))

(declare-fun b!4940016 () Bool)

(declare-fun res!2108187 () Bool)

(assert (=> b!4940016 (=> (not res!2108187) (not e!3086609))))

(assert (=> b!4940016 (= res!2108187 (<= (- (height!1995 (left!41494 (c!842298 (_2!34011 lt!2036228)))) (height!1995 (right!41824 (c!842298 (_2!34011 lt!2036228))))) 1))))

(declare-fun b!4940011 () Bool)

(declare-fun e!3086608 () Bool)

(assert (=> b!4940011 (= e!3086608 e!3086609)))

(declare-fun res!2108185 () Bool)

(assert (=> b!4940011 (=> (not res!2108185) (not e!3086609))))

(assert (=> b!4940011 (= res!2108185 (<= (- 1) (- (height!1995 (left!41494 (c!842298 (_2!34011 lt!2036228)))) (height!1995 (right!41824 (c!842298 (_2!34011 lt!2036228)))))))))

(declare-fun d!1590461 () Bool)

(declare-fun res!2108183 () Bool)

(assert (=> d!1590461 (=> res!2108183 e!3086608)))

(assert (=> d!1590461 (= res!2108183 (not ((_ is Node!14960) (c!842298 (_2!34011 lt!2036228)))))))

(assert (=> d!1590461 (= (isBalanced!4128 (c!842298 (_2!34011 lt!2036228))) e!3086608)))

(assert (= (and d!1590461 (not res!2108183)) b!4940011))

(assert (= (and b!4940011 res!2108185) b!4940016))

(assert (= (and b!4940016 res!2108187) b!4940015))

(assert (= (and b!4940015 res!2108182) b!4940014))

(assert (= (and b!4940014 res!2108186) b!4940012))

(assert (= (and b!4940012 res!2108184) b!4940013))

(declare-fun m!5962538 () Bool)

(assert (=> b!4940012 m!5962538))

(declare-fun m!5962540 () Bool)

(assert (=> b!4940016 m!5962540))

(declare-fun m!5962542 () Bool)

(assert (=> b!4940016 m!5962542))

(declare-fun m!5962544 () Bool)

(assert (=> b!4940013 m!5962544))

(assert (=> b!4940011 m!5962540))

(assert (=> b!4940011 m!5962542))

(declare-fun m!5962546 () Bool)

(assert (=> b!4940014 m!5962546))

(declare-fun m!5962548 () Bool)

(assert (=> b!4940015 m!5962548))

(assert (=> b!4939422 d!1590461))

(declare-fun d!1590463 () Bool)

(declare-fun lt!2036452 () Int)

(assert (=> d!1590463 (>= lt!2036452 0)))

(declare-fun e!3086610 () Int)

(assert (=> d!1590463 (= lt!2036452 e!3086610)))

(declare-fun c!842499 () Bool)

(assert (=> d!1590463 (= c!842499 ((_ is Nil!56885) (t!367509 testedP!110)))))

(assert (=> d!1590463 (= (size!37697 (t!367509 testedP!110)) lt!2036452)))

(declare-fun b!4940017 () Bool)

(assert (=> b!4940017 (= e!3086610 0)))

(declare-fun b!4940018 () Bool)

(assert (=> b!4940018 (= e!3086610 (+ 1 (size!37697 (t!367509 (t!367509 testedP!110)))))))

(assert (= (and d!1590463 c!842499) b!4940017))

(assert (= (and d!1590463 (not c!842499)) b!4940018))

(declare-fun m!5962550 () Bool)

(assert (=> b!4940018 m!5962550))

(assert (=> b!4939401 d!1590463))

(declare-fun d!1590465 () Bool)

(declare-fun c!842502 () Bool)

(assert (=> d!1590465 (= c!842502 ((_ is Nil!56885) lt!2036219))))

(declare-fun e!3086613 () (InoxSet C!27132))

(assert (=> d!1590465 (= (content!10118 lt!2036219) e!3086613)))

(declare-fun b!4940023 () Bool)

(assert (=> b!4940023 (= e!3086613 ((as const (Array C!27132 Bool)) false))))

(declare-fun b!4940024 () Bool)

(assert (=> b!4940024 (= e!3086613 ((_ map or) (store ((as const (Array C!27132 Bool)) false) (h!63333 lt!2036219) true) (content!10118 (t!367509 lt!2036219))))))

(assert (= (and d!1590465 c!842502) b!4940023))

(assert (= (and d!1590465 (not c!842502)) b!4940024))

(declare-fun m!5962552 () Bool)

(assert (=> b!4940024 m!5962552))

(declare-fun m!5962554 () Bool)

(assert (=> b!4940024 m!5962554))

(assert (=> d!1590213 d!1590465))

(declare-fun d!1590467 () Bool)

(declare-fun c!842503 () Bool)

(assert (=> d!1590467 (= c!842503 ((_ is Nil!56885) (list!18087 (_1!34011 lt!2036188))))))

(declare-fun e!3086614 () (InoxSet C!27132))

(assert (=> d!1590467 (= (content!10118 (list!18087 (_1!34011 lt!2036188))) e!3086614)))

(declare-fun b!4940025 () Bool)

(assert (=> b!4940025 (= e!3086614 ((as const (Array C!27132 Bool)) false))))

(declare-fun b!4940026 () Bool)

(assert (=> b!4940026 (= e!3086614 ((_ map or) (store ((as const (Array C!27132 Bool)) false) (h!63333 (list!18087 (_1!34011 lt!2036188))) true) (content!10118 (t!367509 (list!18087 (_1!34011 lt!2036188))))))))

(assert (= (and d!1590467 c!842503) b!4940025))

(assert (= (and d!1590467 (not c!842503)) b!4940026))

(declare-fun m!5962556 () Bool)

(assert (=> b!4940026 m!5962556))

(assert (=> b!4940026 m!5962232))

(assert (=> d!1590213 d!1590467))

(declare-fun d!1590469 () Bool)

(declare-fun c!842504 () Bool)

(assert (=> d!1590469 (= c!842504 ((_ is Nil!56885) (list!18087 (_2!34011 lt!2036188))))))

(declare-fun e!3086615 () (InoxSet C!27132))

(assert (=> d!1590469 (= (content!10118 (list!18087 (_2!34011 lt!2036188))) e!3086615)))

(declare-fun b!4940027 () Bool)

(assert (=> b!4940027 (= e!3086615 ((as const (Array C!27132 Bool)) false))))

(declare-fun b!4940028 () Bool)

(assert (=> b!4940028 (= e!3086615 ((_ map or) (store ((as const (Array C!27132 Bool)) false) (h!63333 (list!18087 (_2!34011 lt!2036188))) true) (content!10118 (t!367509 (list!18087 (_2!34011 lt!2036188))))))))

(assert (= (and d!1590469 c!842504) b!4940027))

(assert (= (and d!1590469 (not c!842504)) b!4940028))

(declare-fun m!5962558 () Bool)

(assert (=> b!4940028 m!5962558))

(declare-fun m!5962560 () Bool)

(assert (=> b!4940028 m!5962560))

(assert (=> d!1590213 d!1590469))

(declare-fun d!1590471 () Bool)

(declare-fun e!3086618 () Bool)

(assert (=> d!1590471 e!3086618))

(declare-fun res!2108190 () Bool)

(assert (=> d!1590471 (=> (not res!2108190) (not e!3086618))))

(declare-fun lt!2036455 () List!57012)

(declare-fun noDuplicate!997 (List!57012) Bool)

(assert (=> d!1590471 (= res!2108190 (noDuplicate!997 lt!2036455))))

(declare-fun choose!36372 ((InoxSet Context!6182)) List!57012)

(assert (=> d!1590471 (= lt!2036455 (choose!36372 z!3568))))

(assert (=> d!1590471 (= (toList!7978 z!3568) lt!2036455)))

(declare-fun b!4940031 () Bool)

(declare-fun content!10120 (List!57012) (InoxSet Context!6182))

(assert (=> b!4940031 (= e!3086618 (= (content!10120 lt!2036455) z!3568))))

(assert (= (and d!1590471 res!2108190) b!4940031))

(declare-fun m!5962562 () Bool)

(assert (=> d!1590471 m!5962562))

(declare-fun m!5962564 () Bool)

(assert (=> d!1590471 m!5962564))

(declare-fun m!5962566 () Bool)

(assert (=> b!4940031 m!5962566))

(assert (=> bm!344657 d!1590471))

(declare-fun d!1590473 () Bool)

(declare-fun c!842505 () Bool)

(assert (=> d!1590473 (= c!842505 ((_ is Nil!56885) lt!2036299))))

(declare-fun e!3086619 () (InoxSet C!27132))

(assert (=> d!1590473 (= (content!10118 lt!2036299) e!3086619)))

(declare-fun b!4940032 () Bool)

(assert (=> b!4940032 (= e!3086619 ((as const (Array C!27132 Bool)) false))))

(declare-fun b!4940033 () Bool)

(assert (=> b!4940033 (= e!3086619 ((_ map or) (store ((as const (Array C!27132 Bool)) false) (h!63333 lt!2036299) true) (content!10118 (t!367509 lt!2036299))))))

(assert (= (and d!1590473 c!842505) b!4940032))

(assert (= (and d!1590473 (not c!842505)) b!4940033))

(declare-fun m!5962568 () Bool)

(assert (=> b!4940033 m!5962568))

(declare-fun m!5962570 () Bool)

(assert (=> b!4940033 m!5962570))

(assert (=> d!1590255 d!1590473))

(declare-fun d!1590475 () Bool)

(declare-fun c!842506 () Bool)

(assert (=> d!1590475 (= c!842506 ((_ is Nil!56885) testedP!110))))

(declare-fun e!3086620 () (InoxSet C!27132))

(assert (=> d!1590475 (= (content!10118 testedP!110) e!3086620)))

(declare-fun b!4940034 () Bool)

(assert (=> b!4940034 (= e!3086620 ((as const (Array C!27132 Bool)) false))))

(declare-fun b!4940035 () Bool)

(assert (=> b!4940035 (= e!3086620 ((_ map or) (store ((as const (Array C!27132 Bool)) false) (h!63333 testedP!110) true) (content!10118 (t!367509 testedP!110))))))

(assert (= (and d!1590475 c!842506) b!4940034))

(assert (= (and d!1590475 (not c!842506)) b!4940035))

(declare-fun m!5962572 () Bool)

(assert (=> b!4940035 m!5962572))

(assert (=> b!4940035 m!5962210))

(assert (=> d!1590255 d!1590475))

(declare-fun d!1590477 () Bool)

(declare-fun c!842507 () Bool)

(assert (=> d!1590477 (= c!842507 ((_ is Nil!56885) testedSuffix!70))))

(declare-fun e!3086621 () (InoxSet C!27132))

(assert (=> d!1590477 (= (content!10118 testedSuffix!70) e!3086621)))

(declare-fun b!4940036 () Bool)

(assert (=> b!4940036 (= e!3086621 ((as const (Array C!27132 Bool)) false))))

(declare-fun b!4940037 () Bool)

(assert (=> b!4940037 (= e!3086621 ((_ map or) (store ((as const (Array C!27132 Bool)) false) (h!63333 testedSuffix!70) true) (content!10118 (t!367509 testedSuffix!70))))))

(assert (= (and d!1590477 c!842507) b!4940036))

(assert (= (and d!1590477 (not c!842507)) b!4940037))

(declare-fun m!5962574 () Bool)

(assert (=> b!4940037 m!5962574))

(declare-fun m!5962576 () Bool)

(assert (=> b!4940037 m!5962576))

(assert (=> d!1590255 d!1590477))

(declare-fun b!4940039 () Bool)

(declare-fun e!3086622 () List!57009)

(assert (=> b!4940039 (= e!3086622 (Cons!56885 (h!63333 testedP!110) (++!12420 (t!367509 testedP!110) lt!2036298)))))

(declare-fun lt!2036456 () List!57009)

(declare-fun e!3086623 () Bool)

(declare-fun b!4940041 () Bool)

(assert (=> b!4940041 (= e!3086623 (or (not (= lt!2036298 Nil!56885)) (= lt!2036456 testedP!110)))))

(declare-fun d!1590479 () Bool)

(assert (=> d!1590479 e!3086623))

(declare-fun res!2108192 () Bool)

(assert (=> d!1590479 (=> (not res!2108192) (not e!3086623))))

(assert (=> d!1590479 (= res!2108192 (= (content!10118 lt!2036456) ((_ map or) (content!10118 testedP!110) (content!10118 lt!2036298))))))

(assert (=> d!1590479 (= lt!2036456 e!3086622)))

(declare-fun c!842508 () Bool)

(assert (=> d!1590479 (= c!842508 ((_ is Nil!56885) testedP!110))))

(assert (=> d!1590479 (= (++!12420 testedP!110 lt!2036298) lt!2036456)))

(declare-fun b!4940038 () Bool)

(assert (=> b!4940038 (= e!3086622 lt!2036298)))

(declare-fun b!4940040 () Bool)

(declare-fun res!2108191 () Bool)

(assert (=> b!4940040 (=> (not res!2108191) (not e!3086623))))

(assert (=> b!4940040 (= res!2108191 (= (size!37697 lt!2036456) (+ (size!37697 testedP!110) (size!37697 lt!2036298))))))

(assert (= (and d!1590479 c!842508) b!4940038))

(assert (= (and d!1590479 (not c!842508)) b!4940039))

(assert (= (and d!1590479 res!2108192) b!4940040))

(assert (= (and b!4940040 res!2108191) b!4940041))

(declare-fun m!5962578 () Bool)

(assert (=> b!4940039 m!5962578))

(declare-fun m!5962580 () Bool)

(assert (=> d!1590479 m!5962580))

(assert (=> d!1590479 m!5962030))

(declare-fun m!5962582 () Bool)

(assert (=> d!1590479 m!5962582))

(declare-fun m!5962584 () Bool)

(assert (=> b!4940040 m!5962584))

(assert (=> b!4940040 m!5961806))

(declare-fun m!5962586 () Bool)

(assert (=> b!4940040 m!5962586))

(assert (=> d!1590249 d!1590479))

(assert (=> d!1590249 d!1590373))

(assert (=> d!1590249 d!1590205))

(declare-fun d!1590481 () Bool)

(declare-fun lt!2036457 () List!57009)

(assert (=> d!1590481 (= (++!12420 (t!367509 testedP!110) lt!2036457) (tail!9723 lt!2036193))))

(declare-fun e!3086624 () List!57009)

(assert (=> d!1590481 (= lt!2036457 e!3086624)))

(declare-fun c!842509 () Bool)

(assert (=> d!1590481 (= c!842509 ((_ is Cons!56885) (t!367509 testedP!110)))))

(assert (=> d!1590481 (>= (size!37697 (tail!9723 lt!2036193)) (size!37697 (t!367509 testedP!110)))))

(assert (=> d!1590481 (= (getSuffix!3031 (tail!9723 lt!2036193) (t!367509 testedP!110)) lt!2036457)))

(declare-fun b!4940042 () Bool)

(assert (=> b!4940042 (= e!3086624 (getSuffix!3031 (tail!9723 (tail!9723 lt!2036193)) (t!367509 (t!367509 testedP!110))))))

(declare-fun b!4940043 () Bool)

(assert (=> b!4940043 (= e!3086624 (tail!9723 lt!2036193))))

(assert (= (and d!1590481 c!842509) b!4940042))

(assert (= (and d!1590481 (not c!842509)) b!4940043))

(declare-fun m!5962588 () Bool)

(assert (=> d!1590481 m!5962588))

(assert (=> d!1590481 m!5961832))

(assert (=> d!1590481 m!5962458))

(assert (=> d!1590481 m!5961878))

(assert (=> b!4940042 m!5961832))

(assert (=> b!4940042 m!5962452))

(assert (=> b!4940042 m!5962452))

(declare-fun m!5962590 () Bool)

(assert (=> b!4940042 m!5962590))

(assert (=> b!4939500 d!1590481))

(assert (=> b!4939500 d!1590433))

(declare-fun b!4940044 () Bool)

(declare-fun e!3086625 () Bool)

(declare-fun tp!1386082 () Bool)

(assert (=> b!4940044 (= e!3086625 (and tp_is_empty!36079 tp!1386082))))

(assert (=> b!4939525 (= tp!1386036 e!3086625)))

(assert (= (and b!4939525 ((_ is Cons!56885) (t!367509 (t!367509 testedSuffix!70)))) b!4940044))

(declare-fun condSetEmpty!27890 () Bool)

(assert (=> setNonEmpty!27888 (= condSetEmpty!27890 (= setRest!27888 ((as const (Array Context!6182 Bool)) false)))))

(declare-fun setRes!27890 () Bool)

(assert (=> setNonEmpty!27888 (= tp!1386050 setRes!27890)))

(declare-fun setIsEmpty!27890 () Bool)

(assert (=> setIsEmpty!27890 setRes!27890))

(declare-fun setElem!27890 () Context!6182)

(declare-fun e!3086626 () Bool)

(declare-fun tp!1386083 () Bool)

(declare-fun setNonEmpty!27890 () Bool)

(assert (=> setNonEmpty!27890 (= setRes!27890 (and tp!1386083 (inv!73974 setElem!27890) e!3086626))))

(declare-fun setRest!27890 () (InoxSet Context!6182))

(assert (=> setNonEmpty!27890 (= setRest!27888 ((_ map or) (store ((as const (Array Context!6182 Bool)) false) setElem!27890 true) setRest!27890))))

(declare-fun b!4940045 () Bool)

(declare-fun tp!1386084 () Bool)

(assert (=> b!4940045 (= e!3086626 tp!1386084)))

(assert (= (and setNonEmpty!27888 condSetEmpty!27890) setIsEmpty!27890))

(assert (= (and setNonEmpty!27888 (not condSetEmpty!27890)) setNonEmpty!27890))

(assert (= setNonEmpty!27890 b!4940045))

(declare-fun m!5962592 () Bool)

(assert (=> setNonEmpty!27890 m!5962592))

(declare-fun b!4940046 () Bool)

(declare-fun e!3086627 () Bool)

(declare-fun tp!1386085 () Bool)

(assert (=> b!4940046 (= e!3086627 (and tp_is_empty!36079 tp!1386085))))

(assert (=> b!4939536 (= tp!1386044 e!3086627)))

(assert (= (and b!4939536 ((_ is Cons!56885) (innerList!15048 (xs!18284 (c!842298 totalInput!685))))) b!4940046))

(declare-fun b!4940047 () Bool)

(declare-fun e!3086628 () Bool)

(declare-fun tp!1386086 () Bool)

(declare-fun tp!1386087 () Bool)

(assert (=> b!4940047 (= e!3086628 (and tp!1386086 tp!1386087))))

(assert (=> b!4939541 (= tp!1386051 e!3086628)))

(assert (= (and b!4939541 ((_ is Cons!56886) (exprs!3591 setElem!27888))) b!4940047))

(declare-fun b!4940048 () Bool)

(declare-fun e!3086629 () Bool)

(declare-fun tp!1386088 () Bool)

(assert (=> b!4940048 (= e!3086629 (and tp_is_empty!36079 tp!1386088))))

(assert (=> b!4939524 (= tp!1386035 e!3086629)))

(assert (= (and b!4939524 ((_ is Cons!56885) (t!367509 (t!367509 testedP!110)))) b!4940048))

(declare-fun tp!1386091 () Bool)

(declare-fun b!4940049 () Bool)

(declare-fun tp!1386089 () Bool)

(declare-fun e!3086631 () Bool)

(assert (=> b!4940049 (= e!3086631 (and (inv!73972 (left!41494 (left!41494 (c!842298 totalInput!685)))) tp!1386091 (inv!73972 (right!41824 (left!41494 (c!842298 totalInput!685)))) tp!1386089))))

(declare-fun b!4940051 () Bool)

(declare-fun e!3086630 () Bool)

(declare-fun tp!1386090 () Bool)

(assert (=> b!4940051 (= e!3086630 tp!1386090)))

(declare-fun b!4940050 () Bool)

(assert (=> b!4940050 (= e!3086631 (and (inv!73980 (xs!18284 (left!41494 (c!842298 totalInput!685)))) e!3086630))))

(assert (=> b!4939534 (= tp!1386045 (and (inv!73972 (left!41494 (c!842298 totalInput!685))) e!3086631))))

(assert (= (and b!4939534 ((_ is Node!14960) (left!41494 (c!842298 totalInput!685)))) b!4940049))

(assert (= b!4940050 b!4940051))

(assert (= (and b!4939534 ((_ is Leaf!24873) (left!41494 (c!842298 totalInput!685)))) b!4940050))

(declare-fun m!5962594 () Bool)

(assert (=> b!4940049 m!5962594))

(declare-fun m!5962596 () Bool)

(assert (=> b!4940049 m!5962596))

(declare-fun m!5962598 () Bool)

(assert (=> b!4940050 m!5962598))

(assert (=> b!4939534 m!5962040))

(declare-fun tp!1386094 () Bool)

(declare-fun tp!1386092 () Bool)

(declare-fun b!4940052 () Bool)

(declare-fun e!3086633 () Bool)

(assert (=> b!4940052 (= e!3086633 (and (inv!73972 (left!41494 (right!41824 (c!842298 totalInput!685)))) tp!1386094 (inv!73972 (right!41824 (right!41824 (c!842298 totalInput!685)))) tp!1386092))))

(declare-fun b!4940054 () Bool)

(declare-fun e!3086632 () Bool)

(declare-fun tp!1386093 () Bool)

(assert (=> b!4940054 (= e!3086632 tp!1386093)))

(declare-fun b!4940053 () Bool)

(assert (=> b!4940053 (= e!3086633 (and (inv!73980 (xs!18284 (right!41824 (c!842298 totalInput!685)))) e!3086632))))

(assert (=> b!4939534 (= tp!1386043 (and (inv!73972 (right!41824 (c!842298 totalInput!685))) e!3086633))))

(assert (= (and b!4939534 ((_ is Node!14960) (right!41824 (c!842298 totalInput!685)))) b!4940052))

(assert (= b!4940053 b!4940054))

(assert (= (and b!4939534 ((_ is Leaf!24873) (right!41824 (c!842298 totalInput!685)))) b!4940053))

(declare-fun m!5962600 () Bool)

(assert (=> b!4940052 m!5962600))

(declare-fun m!5962602 () Bool)

(assert (=> b!4940052 m!5962602))

(declare-fun m!5962604 () Bool)

(assert (=> b!4940053 m!5962604))

(assert (=> b!4939534 m!5962042))

(declare-fun b!4940068 () Bool)

(declare-fun e!3086636 () Bool)

(declare-fun tp!1386108 () Bool)

(declare-fun tp!1386107 () Bool)

(assert (=> b!4940068 (= e!3086636 (and tp!1386108 tp!1386107))))

(assert (=> b!4939519 (= tp!1386031 e!3086636)))

(declare-fun b!4940067 () Bool)

(declare-fun tp!1386106 () Bool)

(assert (=> b!4940067 (= e!3086636 tp!1386106)))

(declare-fun b!4940065 () Bool)

(assert (=> b!4940065 (= e!3086636 tp_is_empty!36079)))

(declare-fun b!4940066 () Bool)

(declare-fun tp!1386105 () Bool)

(declare-fun tp!1386109 () Bool)

(assert (=> b!4940066 (= e!3086636 (and tp!1386105 tp!1386109))))

(assert (= (and b!4939519 ((_ is ElementMatch!13449) (h!63334 (exprs!3591 setElem!27882)))) b!4940065))

(assert (= (and b!4939519 ((_ is Concat!22022) (h!63334 (exprs!3591 setElem!27882)))) b!4940066))

(assert (= (and b!4939519 ((_ is Star!13449) (h!63334 (exprs!3591 setElem!27882)))) b!4940067))

(assert (= (and b!4939519 ((_ is Union!13449) (h!63334 (exprs!3591 setElem!27882)))) b!4940068))

(declare-fun b!4940069 () Bool)

(declare-fun e!3086637 () Bool)

(declare-fun tp!1386110 () Bool)

(declare-fun tp!1386111 () Bool)

(assert (=> b!4940069 (= e!3086637 (and tp!1386110 tp!1386111))))

(assert (=> b!4939519 (= tp!1386032 e!3086637)))

(assert (= (and b!4939519 ((_ is Cons!56886) (t!367510 (exprs!3591 setElem!27882)))) b!4940069))

(declare-fun b_lambda!196343 () Bool)

(assert (= b_lambda!196337 (or d!1590259 b_lambda!196343)))

(declare-fun bs!1181148 () Bool)

(declare-fun d!1590483 () Bool)

(assert (= bs!1181148 (and d!1590483 d!1590259)))

(declare-fun validRegex!5951 (Regex!13449) Bool)

(assert (=> bs!1181148 (= (dynLambda!23023 lambda!246144 (h!63334 (exprs!3591 setElem!27882))) (validRegex!5951 (h!63334 (exprs!3591 setElem!27882))))))

(declare-fun m!5962606 () Bool)

(assert (=> bs!1181148 m!5962606))

(assert (=> b!4939699 d!1590483))

(check-sat (not b!4940044) (not b!4939911) (not b!4939680) (not d!1590437) (not bm!344690) (not b!4939710) (not b!4939606) (not d!1590481) (not b!4940024) (not d!1590459) (not d!1590479) (not b!4939941) (not b!4939715) (not b!4939931) (not bm!344691) (not b!4939714) (not b!4939597) (not setNonEmpty!27890) (not d!1590351) (not b!4940031) (not b!4939639) (not b!4940049) (not b!4939716) (not b!4940048) (not d!1590435) (not b!4940052) (not b!4939922) (not b!4940042) (not b!4939705) (not bm!344688) (not d!1590453) (not b!4939645) (not b!4939613) (not b!4940053) (not b!4939709) (not b!4939611) (not b!4939678) (not d!1590321) (not b!4939594) (not b!4939920) (not b!4940066) (not b!4939534) (not b!4939915) (not b!4939683) (not b!4940045) (not b!4939966) (not d!1590457) (not b_lambda!196343) (not b!4939571) (not b!4940026) (not b!4939671) (not b!4939693) (not b!4940028) (not b!4940046) (not b!4939978) (not b!4940039) (not b!4940015) (not d!1590359) (not b!4940067) (not b!4939713) (not b!4939637) (not d!1590377) (not b!4939700) (not b!4939614) (not b!4939910) (not b!4939684) (not b!4939712) (not b!4940047) (not bm!344693) (not b!4939965) (not b!4940014) (not d!1590355) (not b!4940054) (not b!4940018) (not d!1590367) (not b!4939569) (not b!4939674) (not b!4939596) (not d!1590341) (not b!4939718) (not b!4940050) (not b!4939595) (not d!1590361) (not d!1590439) (not d!1590333) (not bm!344692) (not b!4940035) (not b!4939940) (not b!4939641) (not b!4939686) (not bs!1181148) (not b!4940016) (not b!4939675) (not b!4940011) (not d!1590471) (not b!4939599) (not b!4939964) (not b!4939926) (not b!4939616) (not d!1590371) (not b!4940033) tp_is_empty!36079 (not b!4940013) (not b!4939598) (not b!4939687) (not b!4939977) (not b!4939636) (not b!4939570) (not b!4940068) (not b!4939717) (not b!4940012) (not d!1590345) (not b!4940040) (not b!4939708) (not b!4939942) (not b!4940037) (not b!4940051) (not b!4939643) (not b!4940069))
(check-sat)
