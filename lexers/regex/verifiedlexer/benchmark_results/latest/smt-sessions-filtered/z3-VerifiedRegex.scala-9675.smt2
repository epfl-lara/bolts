; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!507334 () Bool)

(assert start!507334)

(declare-fun b!4856414 () Bool)

(declare-fun res!2073193 () Bool)

(declare-fun e!3036251 () Bool)

(assert (=> b!4856414 (=> (not res!2073193) (not e!3036251))))

(declare-datatypes ((T!98588 0))(
  ( (T!98589 (val!22398 Int)) )
))
(declare-datatypes ((List!55866 0))(
  ( (Nil!55742) (Cons!55742 (h!62190 T!98588) (t!363418 List!55866)) )
))
(declare-datatypes ((IArray!29105 0))(
  ( (IArray!29106 (innerList!14610 List!55866)) )
))
(declare-datatypes ((Conc!14522 0))(
  ( (Node!14522 (left!40503 Conc!14522) (right!40833 Conc!14522) (csize!29274 Int) (cheight!14733 Int)) (Leaf!24198 (xs!17828 IArray!29105) (csize!29275 Int)) (Empty!14522) )
))
(declare-fun t!4677 () Conc!14522)

(declare-fun isEmpty!29816 (Conc!14522) Bool)

(assert (=> b!4856414 (= res!2073193 (not (isEmpty!29816 t!4677)))))

(declare-fun b!4856415 () Bool)

(declare-fun e!3036248 () Bool)

(assert (=> b!4856415 (= e!3036248 (not (isEmpty!29816 (right!40833 t!4677))))))

(declare-fun b!4856416 () Bool)

(assert (=> b!4856416 (= e!3036251 (not e!3036248))))

(declare-fun res!2073197 () Bool)

(assert (=> b!4856416 (=> res!2073197 e!3036248)))

(declare-fun isBalanced!3928 (Conc!14522) Bool)

(assert (=> b!4856416 (= res!2073197 (not (isBalanced!3928 (right!40833 t!4677))))))

(declare-fun e!3036252 () Bool)

(assert (=> b!4856416 e!3036252))

(declare-fun res!2073192 () Bool)

(assert (=> b!4856416 (=> res!2073192 e!3036252)))

(declare-fun e!3036249 () Bool)

(assert (=> b!4856416 (= res!2073192 e!3036249)))

(declare-fun res!2073191 () Bool)

(assert (=> b!4856416 (=> (not res!2073191) (not e!3036249))))

(declare-fun lt!1991455 () Bool)

(assert (=> b!4856416 (= res!2073191 lt!1991455)))

(declare-fun lt!1991456 () List!55866)

(declare-fun isEmpty!29817 (List!55866) Bool)

(assert (=> b!4856416 (= lt!1991455 (isEmpty!29817 lt!1991456))))

(declare-datatypes ((Unit!145847 0))(
  ( (Unit!145848) )
))
(declare-fun lt!1991457 () Unit!145847)

(declare-fun lt!1991454 () List!55866)

(declare-fun lemmaLastOfConcatIsLastOfRhs!30 (List!55866 List!55866) Unit!145847)

(assert (=> b!4856416 (= lt!1991457 (lemmaLastOfConcatIsLastOfRhs!30 lt!1991454 lt!1991456))))

(declare-fun list!17404 (Conc!14522) List!55866)

(assert (=> b!4856416 (= lt!1991456 (list!17404 (right!40833 t!4677)))))

(assert (=> b!4856416 (= lt!1991454 (list!17404 (left!40503 t!4677)))))

(declare-fun b!4856417 () Bool)

(declare-fun last!390 (List!55866) T!98588)

(declare-fun ++!12127 (List!55866 List!55866) List!55866)

(assert (=> b!4856417 (= e!3036249 (= (last!390 (++!12127 lt!1991454 lt!1991456)) (last!390 lt!1991454)))))

(declare-fun b!4856418 () Bool)

(declare-fun e!3036247 () Bool)

(declare-fun tp!1366341 () Bool)

(assert (=> b!4856418 (= e!3036247 tp!1366341)))

(declare-fun b!4856419 () Bool)

(declare-fun e!3036250 () Bool)

(assert (=> b!4856419 (= e!3036252 e!3036250)))

(declare-fun res!2073194 () Bool)

(assert (=> b!4856419 (=> (not res!2073194) (not e!3036250))))

(assert (=> b!4856419 (= res!2073194 (not lt!1991455))))

(declare-fun tp!1366342 () Bool)

(declare-fun tp!1366343 () Bool)

(declare-fun e!3036246 () Bool)

(declare-fun b!4856420 () Bool)

(declare-fun inv!71541 (Conc!14522) Bool)

(assert (=> b!4856420 (= e!3036246 (and (inv!71541 (left!40503 t!4677)) tp!1366342 (inv!71541 (right!40833 t!4677)) tp!1366343))))

(declare-fun b!4856421 () Bool)

(declare-fun res!2073195 () Bool)

(assert (=> b!4856421 (=> (not res!2073195) (not e!3036251))))

(get-info :version)

(assert (=> b!4856421 (= res!2073195 (and (not ((_ is Leaf!24198) t!4677)) ((_ is Node!14522) t!4677)))))

(declare-fun b!4856422 () Bool)

(assert (=> b!4856422 (= e!3036250 (= (last!390 (++!12127 lt!1991454 lt!1991456)) (last!390 lt!1991456)))))

(declare-fun res!2073196 () Bool)

(assert (=> start!507334 (=> (not res!2073196) (not e!3036251))))

(assert (=> start!507334 (= res!2073196 (isBalanced!3928 t!4677))))

(assert (=> start!507334 e!3036251))

(assert (=> start!507334 (and (inv!71541 t!4677) e!3036246)))

(declare-fun b!4856423 () Bool)

(declare-fun inv!71542 (IArray!29105) Bool)

(assert (=> b!4856423 (= e!3036246 (and (inv!71542 (xs!17828 t!4677)) e!3036247))))

(assert (= (and start!507334 res!2073196) b!4856414))

(assert (= (and b!4856414 res!2073193) b!4856421))

(assert (= (and b!4856421 res!2073195) b!4856416))

(assert (= (and b!4856416 res!2073191) b!4856417))

(assert (= (and b!4856416 (not res!2073192)) b!4856419))

(assert (= (and b!4856419 res!2073194) b!4856422))

(assert (= (and b!4856416 (not res!2073197)) b!4856415))

(assert (= (and start!507334 ((_ is Node!14522) t!4677)) b!4856420))

(assert (= b!4856423 b!4856418))

(assert (= (and start!507334 ((_ is Leaf!24198) t!4677)) b!4856423))

(declare-fun m!5854190 () Bool)

(assert (=> b!4856422 m!5854190))

(assert (=> b!4856422 m!5854190))

(declare-fun m!5854192 () Bool)

(assert (=> b!4856422 m!5854192))

(declare-fun m!5854194 () Bool)

(assert (=> b!4856422 m!5854194))

(declare-fun m!5854196 () Bool)

(assert (=> b!4856414 m!5854196))

(declare-fun m!5854198 () Bool)

(assert (=> b!4856420 m!5854198))

(declare-fun m!5854200 () Bool)

(assert (=> b!4856420 m!5854200))

(assert (=> b!4856417 m!5854190))

(assert (=> b!4856417 m!5854190))

(assert (=> b!4856417 m!5854192))

(declare-fun m!5854202 () Bool)

(assert (=> b!4856417 m!5854202))

(declare-fun m!5854204 () Bool)

(assert (=> b!4856423 m!5854204))

(declare-fun m!5854206 () Bool)

(assert (=> start!507334 m!5854206))

(declare-fun m!5854208 () Bool)

(assert (=> start!507334 m!5854208))

(declare-fun m!5854210 () Bool)

(assert (=> b!4856415 m!5854210))

(declare-fun m!5854212 () Bool)

(assert (=> b!4856416 m!5854212))

(declare-fun m!5854214 () Bool)

(assert (=> b!4856416 m!5854214))

(declare-fun m!5854216 () Bool)

(assert (=> b!4856416 m!5854216))

(declare-fun m!5854218 () Bool)

(assert (=> b!4856416 m!5854218))

(declare-fun m!5854220 () Bool)

(assert (=> b!4856416 m!5854220))

(check-sat (not b!4856420) (not b!4856415) (not b!4856418) (not b!4856422) (not b!4856416) (not b!4856414) (not b!4856423) (not b!4856417) (not start!507334))
(check-sat)
(get-model)

(declare-fun b!4856442 () Bool)

(declare-fun res!2073217 () Bool)

(declare-fun e!3036264 () Bool)

(assert (=> b!4856442 (=> (not res!2073217) (not e!3036264))))

(assert (=> b!4856442 (= res!2073217 (not (isEmpty!29816 (left!40503 (right!40833 t!4677)))))))

(declare-fun b!4856443 () Bool)

(declare-fun res!2073218 () Bool)

(assert (=> b!4856443 (=> (not res!2073218) (not e!3036264))))

(assert (=> b!4856443 (= res!2073218 (isBalanced!3928 (left!40503 (right!40833 t!4677))))))

(declare-fun b!4856444 () Bool)

(assert (=> b!4856444 (= e!3036264 (not (isEmpty!29816 (right!40833 (right!40833 t!4677)))))))

(declare-fun b!4856445 () Bool)

(declare-fun res!2073221 () Bool)

(assert (=> b!4856445 (=> (not res!2073221) (not e!3036264))))

(assert (=> b!4856445 (= res!2073221 (isBalanced!3928 (right!40833 (right!40833 t!4677))))))

(declare-fun b!4856446 () Bool)

(declare-fun e!3036263 () Bool)

(assert (=> b!4856446 (= e!3036263 e!3036264)))

(declare-fun res!2073216 () Bool)

(assert (=> b!4856446 (=> (not res!2073216) (not e!3036264))))

(declare-fun height!1900 (Conc!14522) Int)

(assert (=> b!4856446 (= res!2073216 (<= (- 1) (- (height!1900 (left!40503 (right!40833 t!4677))) (height!1900 (right!40833 (right!40833 t!4677))))))))

(declare-fun d!1558786 () Bool)

(declare-fun res!2073220 () Bool)

(assert (=> d!1558786 (=> res!2073220 e!3036263)))

(assert (=> d!1558786 (= res!2073220 (not ((_ is Node!14522) (right!40833 t!4677))))))

(assert (=> d!1558786 (= (isBalanced!3928 (right!40833 t!4677)) e!3036263)))

(declare-fun b!4856447 () Bool)

(declare-fun res!2073219 () Bool)

(assert (=> b!4856447 (=> (not res!2073219) (not e!3036264))))

(assert (=> b!4856447 (= res!2073219 (<= (- (height!1900 (left!40503 (right!40833 t!4677))) (height!1900 (right!40833 (right!40833 t!4677)))) 1))))

(assert (= (and d!1558786 (not res!2073220)) b!4856446))

(assert (= (and b!4856446 res!2073216) b!4856447))

(assert (= (and b!4856447 res!2073219) b!4856443))

(assert (= (and b!4856443 res!2073218) b!4856445))

(assert (= (and b!4856445 res!2073221) b!4856442))

(assert (= (and b!4856442 res!2073217) b!4856444))

(declare-fun m!5854228 () Bool)

(assert (=> b!4856446 m!5854228))

(declare-fun m!5854230 () Bool)

(assert (=> b!4856446 m!5854230))

(declare-fun m!5854234 () Bool)

(assert (=> b!4856442 m!5854234))

(assert (=> b!4856447 m!5854228))

(assert (=> b!4856447 m!5854230))

(declare-fun m!5854236 () Bool)

(assert (=> b!4856444 m!5854236))

(declare-fun m!5854238 () Bool)

(assert (=> b!4856443 m!5854238))

(declare-fun m!5854240 () Bool)

(assert (=> b!4856445 m!5854240))

(assert (=> b!4856416 d!1558786))

(declare-fun d!1558790 () Bool)

(declare-fun e!3036279 () Bool)

(assert (=> d!1558790 e!3036279))

(declare-fun res!2073245 () Bool)

(assert (=> d!1558790 (=> res!2073245 e!3036279)))

(declare-fun e!3036280 () Bool)

(assert (=> d!1558790 (= res!2073245 e!3036280)))

(declare-fun res!2073243 () Bool)

(assert (=> d!1558790 (=> (not res!2073243) (not e!3036280))))

(assert (=> d!1558790 (= res!2073243 (isEmpty!29817 lt!1991456))))

(declare-fun lt!1991466 () Unit!145847)

(declare-fun choose!35556 (List!55866 List!55866) Unit!145847)

(assert (=> d!1558790 (= lt!1991466 (choose!35556 lt!1991454 lt!1991456))))

(assert (=> d!1558790 (not (isEmpty!29817 (++!12127 lt!1991454 lt!1991456)))))

(assert (=> d!1558790 (= (lemmaLastOfConcatIsLastOfRhs!30 lt!1991454 lt!1991456) lt!1991466)))

(declare-fun b!4856469 () Bool)

(assert (=> b!4856469 (= e!3036280 (= (last!390 (++!12127 lt!1991454 lt!1991456)) (last!390 lt!1991454)))))

(declare-fun b!4856470 () Bool)

(declare-fun e!3036278 () Bool)

(assert (=> b!4856470 (= e!3036279 e!3036278)))

(declare-fun res!2073244 () Bool)

(assert (=> b!4856470 (=> (not res!2073244) (not e!3036278))))

(assert (=> b!4856470 (= res!2073244 (not (isEmpty!29817 lt!1991456)))))

(declare-fun b!4856471 () Bool)

(assert (=> b!4856471 (= e!3036278 (= (last!390 (++!12127 lt!1991454 lt!1991456)) (last!390 lt!1991456)))))

(assert (= (and d!1558790 res!2073243) b!4856469))

(assert (= (and d!1558790 (not res!2073245)) b!4856470))

(assert (= (and b!4856470 res!2073244) b!4856471))

(assert (=> d!1558790 m!5854214))

(declare-fun m!5854242 () Bool)

(assert (=> d!1558790 m!5854242))

(assert (=> d!1558790 m!5854190))

(assert (=> d!1558790 m!5854190))

(declare-fun m!5854244 () Bool)

(assert (=> d!1558790 m!5854244))

(assert (=> b!4856469 m!5854190))

(assert (=> b!4856469 m!5854190))

(assert (=> b!4856469 m!5854192))

(assert (=> b!4856469 m!5854202))

(assert (=> b!4856470 m!5854214))

(assert (=> b!4856471 m!5854190))

(assert (=> b!4856471 m!5854190))

(assert (=> b!4856471 m!5854192))

(assert (=> b!4856471 m!5854194))

(assert (=> b!4856416 d!1558790))

(declare-fun d!1558794 () Bool)

(assert (=> d!1558794 (= (isEmpty!29817 lt!1991456) ((_ is Nil!55742) lt!1991456))))

(assert (=> b!4856416 d!1558794))

(declare-fun d!1558796 () Bool)

(declare-fun c!826138 () Bool)

(assert (=> d!1558796 (= c!826138 ((_ is Empty!14522) (right!40833 t!4677)))))

(declare-fun e!3036291 () List!55866)

(assert (=> d!1558796 (= (list!17404 (right!40833 t!4677)) e!3036291)))

(declare-fun b!4856494 () Bool)

(assert (=> b!4856494 (= e!3036291 Nil!55742)))

(declare-fun b!4856495 () Bool)

(declare-fun e!3036292 () List!55866)

(assert (=> b!4856495 (= e!3036291 e!3036292)))

(declare-fun c!826139 () Bool)

(assert (=> b!4856495 (= c!826139 ((_ is Leaf!24198) (right!40833 t!4677)))))

(declare-fun b!4856496 () Bool)

(declare-fun list!17405 (IArray!29105) List!55866)

(assert (=> b!4856496 (= e!3036292 (list!17405 (xs!17828 (right!40833 t!4677))))))

(declare-fun b!4856497 () Bool)

(assert (=> b!4856497 (= e!3036292 (++!12127 (list!17404 (left!40503 (right!40833 t!4677))) (list!17404 (right!40833 (right!40833 t!4677)))))))

(assert (= (and d!1558796 c!826138) b!4856494))

(assert (= (and d!1558796 (not c!826138)) b!4856495))

(assert (= (and b!4856495 c!826139) b!4856496))

(assert (= (and b!4856495 (not c!826139)) b!4856497))

(declare-fun m!5854258 () Bool)

(assert (=> b!4856496 m!5854258))

(declare-fun m!5854260 () Bool)

(assert (=> b!4856497 m!5854260))

(declare-fun m!5854262 () Bool)

(assert (=> b!4856497 m!5854262))

(assert (=> b!4856497 m!5854260))

(assert (=> b!4856497 m!5854262))

(declare-fun m!5854264 () Bool)

(assert (=> b!4856497 m!5854264))

(assert (=> b!4856416 d!1558796))

(declare-fun d!1558802 () Bool)

(declare-fun c!826140 () Bool)

(assert (=> d!1558802 (= c!826140 ((_ is Empty!14522) (left!40503 t!4677)))))

(declare-fun e!3036293 () List!55866)

(assert (=> d!1558802 (= (list!17404 (left!40503 t!4677)) e!3036293)))

(declare-fun b!4856498 () Bool)

(assert (=> b!4856498 (= e!3036293 Nil!55742)))

(declare-fun b!4856499 () Bool)

(declare-fun e!3036294 () List!55866)

(assert (=> b!4856499 (= e!3036293 e!3036294)))

(declare-fun c!826141 () Bool)

(assert (=> b!4856499 (= c!826141 ((_ is Leaf!24198) (left!40503 t!4677)))))

(declare-fun b!4856500 () Bool)

(assert (=> b!4856500 (= e!3036294 (list!17405 (xs!17828 (left!40503 t!4677))))))

(declare-fun b!4856501 () Bool)

(assert (=> b!4856501 (= e!3036294 (++!12127 (list!17404 (left!40503 (left!40503 t!4677))) (list!17404 (right!40833 (left!40503 t!4677)))))))

(assert (= (and d!1558802 c!826140) b!4856498))

(assert (= (and d!1558802 (not c!826140)) b!4856499))

(assert (= (and b!4856499 c!826141) b!4856500))

(assert (= (and b!4856499 (not c!826141)) b!4856501))

(declare-fun m!5854266 () Bool)

(assert (=> b!4856500 m!5854266))

(declare-fun m!5854268 () Bool)

(assert (=> b!4856501 m!5854268))

(declare-fun m!5854270 () Bool)

(assert (=> b!4856501 m!5854270))

(assert (=> b!4856501 m!5854268))

(assert (=> b!4856501 m!5854270))

(declare-fun m!5854272 () Bool)

(assert (=> b!4856501 m!5854272))

(assert (=> b!4856416 d!1558802))

(declare-fun b!4856502 () Bool)

(declare-fun res!2073253 () Bool)

(declare-fun e!3036296 () Bool)

(assert (=> b!4856502 (=> (not res!2073253) (not e!3036296))))

(assert (=> b!4856502 (= res!2073253 (not (isEmpty!29816 (left!40503 t!4677))))))

(declare-fun b!4856503 () Bool)

(declare-fun res!2073254 () Bool)

(assert (=> b!4856503 (=> (not res!2073254) (not e!3036296))))

(assert (=> b!4856503 (= res!2073254 (isBalanced!3928 (left!40503 t!4677)))))

(declare-fun b!4856504 () Bool)

(assert (=> b!4856504 (= e!3036296 (not (isEmpty!29816 (right!40833 t!4677))))))

(declare-fun b!4856505 () Bool)

(declare-fun res!2073257 () Bool)

(assert (=> b!4856505 (=> (not res!2073257) (not e!3036296))))

(assert (=> b!4856505 (= res!2073257 (isBalanced!3928 (right!40833 t!4677)))))

(declare-fun b!4856506 () Bool)

(declare-fun e!3036295 () Bool)

(assert (=> b!4856506 (= e!3036295 e!3036296)))

(declare-fun res!2073252 () Bool)

(assert (=> b!4856506 (=> (not res!2073252) (not e!3036296))))

(assert (=> b!4856506 (= res!2073252 (<= (- 1) (- (height!1900 (left!40503 t!4677)) (height!1900 (right!40833 t!4677)))))))

(declare-fun d!1558804 () Bool)

(declare-fun res!2073256 () Bool)

(assert (=> d!1558804 (=> res!2073256 e!3036295)))

(assert (=> d!1558804 (= res!2073256 (not ((_ is Node!14522) t!4677)))))

(assert (=> d!1558804 (= (isBalanced!3928 t!4677) e!3036295)))

(declare-fun b!4856507 () Bool)

(declare-fun res!2073255 () Bool)

(assert (=> b!4856507 (=> (not res!2073255) (not e!3036296))))

(assert (=> b!4856507 (= res!2073255 (<= (- (height!1900 (left!40503 t!4677)) (height!1900 (right!40833 t!4677))) 1))))

(assert (= (and d!1558804 (not res!2073256)) b!4856506))

(assert (= (and b!4856506 res!2073252) b!4856507))

(assert (= (and b!4856507 res!2073255) b!4856503))

(assert (= (and b!4856503 res!2073254) b!4856505))

(assert (= (and b!4856505 res!2073257) b!4856502))

(assert (= (and b!4856502 res!2073253) b!4856504))

(declare-fun m!5854280 () Bool)

(assert (=> b!4856506 m!5854280))

(declare-fun m!5854284 () Bool)

(assert (=> b!4856506 m!5854284))

(declare-fun m!5854286 () Bool)

(assert (=> b!4856502 m!5854286))

(assert (=> b!4856507 m!5854280))

(assert (=> b!4856507 m!5854284))

(assert (=> b!4856504 m!5854210))

(declare-fun m!5854288 () Bool)

(assert (=> b!4856503 m!5854288))

(assert (=> b!4856505 m!5854218))

(assert (=> start!507334 d!1558804))

(declare-fun d!1558808 () Bool)

(declare-fun c!826151 () Bool)

(assert (=> d!1558808 (= c!826151 ((_ is Node!14522) t!4677))))

(declare-fun e!3036308 () Bool)

(assert (=> d!1558808 (= (inv!71541 t!4677) e!3036308)))

(declare-fun b!4856528 () Bool)

(declare-fun inv!71543 (Conc!14522) Bool)

(assert (=> b!4856528 (= e!3036308 (inv!71543 t!4677))))

(declare-fun b!4856529 () Bool)

(declare-fun e!3036309 () Bool)

(assert (=> b!4856529 (= e!3036308 e!3036309)))

(declare-fun res!2073260 () Bool)

(assert (=> b!4856529 (= res!2073260 (not ((_ is Leaf!24198) t!4677)))))

(assert (=> b!4856529 (=> res!2073260 e!3036309)))

(declare-fun b!4856530 () Bool)

(declare-fun inv!71544 (Conc!14522) Bool)

(assert (=> b!4856530 (= e!3036309 (inv!71544 t!4677))))

(assert (= (and d!1558808 c!826151) b!4856528))

(assert (= (and d!1558808 (not c!826151)) b!4856529))

(assert (= (and b!4856529 (not res!2073260)) b!4856530))

(declare-fun m!5854302 () Bool)

(assert (=> b!4856528 m!5854302))

(declare-fun m!5854304 () Bool)

(assert (=> b!4856530 m!5854304))

(assert (=> start!507334 d!1558808))

(declare-fun d!1558814 () Bool)

(declare-fun lt!1991472 () Bool)

(assert (=> d!1558814 (= lt!1991472 (isEmpty!29817 (list!17404 (right!40833 t!4677))))))

(declare-fun size!36711 (Conc!14522) Int)

(assert (=> d!1558814 (= lt!1991472 (= (size!36711 (right!40833 t!4677)) 0))))

(assert (=> d!1558814 (= (isEmpty!29816 (right!40833 t!4677)) lt!1991472)))

(declare-fun bs!1173749 () Bool)

(assert (= bs!1173749 d!1558814))

(assert (=> bs!1173749 m!5854212))

(assert (=> bs!1173749 m!5854212))

(declare-fun m!5854306 () Bool)

(assert (=> bs!1173749 m!5854306))

(declare-fun m!5854308 () Bool)

(assert (=> bs!1173749 m!5854308))

(assert (=> b!4856415 d!1558814))

(declare-fun d!1558816 () Bool)

(declare-fun c!826152 () Bool)

(assert (=> d!1558816 (= c!826152 ((_ is Node!14522) (left!40503 t!4677)))))

(declare-fun e!3036310 () Bool)

(assert (=> d!1558816 (= (inv!71541 (left!40503 t!4677)) e!3036310)))

(declare-fun b!4856531 () Bool)

(assert (=> b!4856531 (= e!3036310 (inv!71543 (left!40503 t!4677)))))

(declare-fun b!4856532 () Bool)

(declare-fun e!3036311 () Bool)

(assert (=> b!4856532 (= e!3036310 e!3036311)))

(declare-fun res!2073261 () Bool)

(assert (=> b!4856532 (= res!2073261 (not ((_ is Leaf!24198) (left!40503 t!4677))))))

(assert (=> b!4856532 (=> res!2073261 e!3036311)))

(declare-fun b!4856533 () Bool)

(assert (=> b!4856533 (= e!3036311 (inv!71544 (left!40503 t!4677)))))

(assert (= (and d!1558816 c!826152) b!4856531))

(assert (= (and d!1558816 (not c!826152)) b!4856532))

(assert (= (and b!4856532 (not res!2073261)) b!4856533))

(declare-fun m!5854310 () Bool)

(assert (=> b!4856531 m!5854310))

(declare-fun m!5854312 () Bool)

(assert (=> b!4856533 m!5854312))

(assert (=> b!4856420 d!1558816))

(declare-fun d!1558818 () Bool)

(declare-fun c!826153 () Bool)

(assert (=> d!1558818 (= c!826153 ((_ is Node!14522) (right!40833 t!4677)))))

(declare-fun e!3036312 () Bool)

(assert (=> d!1558818 (= (inv!71541 (right!40833 t!4677)) e!3036312)))

(declare-fun b!4856534 () Bool)

(assert (=> b!4856534 (= e!3036312 (inv!71543 (right!40833 t!4677)))))

(declare-fun b!4856535 () Bool)

(declare-fun e!3036313 () Bool)

(assert (=> b!4856535 (= e!3036312 e!3036313)))

(declare-fun res!2073262 () Bool)

(assert (=> b!4856535 (= res!2073262 (not ((_ is Leaf!24198) (right!40833 t!4677))))))

(assert (=> b!4856535 (=> res!2073262 e!3036313)))

(declare-fun b!4856536 () Bool)

(assert (=> b!4856536 (= e!3036313 (inv!71544 (right!40833 t!4677)))))

(assert (= (and d!1558818 c!826153) b!4856534))

(assert (= (and d!1558818 (not c!826153)) b!4856535))

(assert (= (and b!4856535 (not res!2073262)) b!4856536))

(declare-fun m!5854314 () Bool)

(assert (=> b!4856534 m!5854314))

(declare-fun m!5854316 () Bool)

(assert (=> b!4856536 m!5854316))

(assert (=> b!4856420 d!1558818))

(declare-fun d!1558820 () Bool)

(declare-fun lt!1991475 () Bool)

(assert (=> d!1558820 (= lt!1991475 (isEmpty!29817 (list!17404 t!4677)))))

(assert (=> d!1558820 (= lt!1991475 (= (size!36711 t!4677) 0))))

(assert (=> d!1558820 (= (isEmpty!29816 t!4677) lt!1991475)))

(declare-fun bs!1173750 () Bool)

(assert (= bs!1173750 d!1558820))

(declare-fun m!5854318 () Bool)

(assert (=> bs!1173750 m!5854318))

(assert (=> bs!1173750 m!5854318))

(declare-fun m!5854320 () Bool)

(assert (=> bs!1173750 m!5854320))

(declare-fun m!5854322 () Bool)

(assert (=> bs!1173750 m!5854322))

(assert (=> b!4856414 d!1558820))

(declare-fun d!1558822 () Bool)

(declare-fun size!36713 (List!55866) Int)

(assert (=> d!1558822 (= (inv!71542 (xs!17828 t!4677)) (<= (size!36713 (innerList!14610 (xs!17828 t!4677))) 2147483647))))

(declare-fun bs!1173751 () Bool)

(assert (= bs!1173751 d!1558822))

(declare-fun m!5854324 () Bool)

(assert (=> bs!1173751 m!5854324))

(assert (=> b!4856423 d!1558822))

(declare-fun d!1558824 () Bool)

(declare-fun lt!1991481 () T!98588)

(declare-fun contains!19359 (List!55866 T!98588) Bool)

(assert (=> d!1558824 (contains!19359 (++!12127 lt!1991454 lt!1991456) lt!1991481)))

(declare-fun e!3036323 () T!98588)

(assert (=> d!1558824 (= lt!1991481 e!3036323)))

(declare-fun c!826160 () Bool)

(assert (=> d!1558824 (= c!826160 (and ((_ is Cons!55742) (++!12127 lt!1991454 lt!1991456)) ((_ is Nil!55742) (t!363418 (++!12127 lt!1991454 lt!1991456)))))))

(assert (=> d!1558824 (not (isEmpty!29817 (++!12127 lt!1991454 lt!1991456)))))

(assert (=> d!1558824 (= (last!390 (++!12127 lt!1991454 lt!1991456)) lt!1991481)))

(declare-fun b!4856555 () Bool)

(assert (=> b!4856555 (= e!3036323 (h!62190 (++!12127 lt!1991454 lt!1991456)))))

(declare-fun b!4856556 () Bool)

(assert (=> b!4856556 (= e!3036323 (last!390 (t!363418 (++!12127 lt!1991454 lt!1991456))))))

(assert (= (and d!1558824 c!826160) b!4856555))

(assert (= (and d!1558824 (not c!826160)) b!4856556))

(assert (=> d!1558824 m!5854190))

(declare-fun m!5854352 () Bool)

(assert (=> d!1558824 m!5854352))

(assert (=> d!1558824 m!5854190))

(assert (=> d!1558824 m!5854244))

(declare-fun m!5854354 () Bool)

(assert (=> b!4856556 m!5854354))

(assert (=> b!4856417 d!1558824))

(declare-fun b!4856594 () Bool)

(declare-fun res!2073284 () Bool)

(declare-fun e!3036343 () Bool)

(assert (=> b!4856594 (=> (not res!2073284) (not e!3036343))))

(declare-fun lt!1991485 () List!55866)

(assert (=> b!4856594 (= res!2073284 (= (size!36713 lt!1991485) (+ (size!36713 lt!1991454) (size!36713 lt!1991456))))))

(declare-fun b!4856593 () Bool)

(declare-fun e!3036344 () List!55866)

(assert (=> b!4856593 (= e!3036344 (Cons!55742 (h!62190 lt!1991454) (++!12127 (t!363418 lt!1991454) lt!1991456)))))

(declare-fun b!4856592 () Bool)

(assert (=> b!4856592 (= e!3036344 lt!1991456)))

(declare-fun d!1558834 () Bool)

(assert (=> d!1558834 e!3036343))

(declare-fun res!2073285 () Bool)

(assert (=> d!1558834 (=> (not res!2073285) (not e!3036343))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9931 (List!55866) (InoxSet T!98588))

(assert (=> d!1558834 (= res!2073285 (= (content!9931 lt!1991485) ((_ map or) (content!9931 lt!1991454) (content!9931 lt!1991456))))))

(assert (=> d!1558834 (= lt!1991485 e!3036344)))

(declare-fun c!826169 () Bool)

(assert (=> d!1558834 (= c!826169 ((_ is Nil!55742) lt!1991454))))

(assert (=> d!1558834 (= (++!12127 lt!1991454 lt!1991456) lt!1991485)))

(declare-fun b!4856595 () Bool)

(assert (=> b!4856595 (= e!3036343 (or (not (= lt!1991456 Nil!55742)) (= lt!1991485 lt!1991454)))))

(assert (= (and d!1558834 c!826169) b!4856592))

(assert (= (and d!1558834 (not c!826169)) b!4856593))

(assert (= (and d!1558834 res!2073285) b!4856594))

(assert (= (and b!4856594 res!2073284) b!4856595))

(declare-fun m!5854382 () Bool)

(assert (=> b!4856594 m!5854382))

(declare-fun m!5854384 () Bool)

(assert (=> b!4856594 m!5854384))

(declare-fun m!5854386 () Bool)

(assert (=> b!4856594 m!5854386))

(declare-fun m!5854388 () Bool)

(assert (=> b!4856593 m!5854388))

(declare-fun m!5854390 () Bool)

(assert (=> d!1558834 m!5854390))

(declare-fun m!5854392 () Bool)

(assert (=> d!1558834 m!5854392))

(declare-fun m!5854394 () Bool)

(assert (=> d!1558834 m!5854394))

(assert (=> b!4856417 d!1558834))

(declare-fun d!1558844 () Bool)

(declare-fun lt!1991486 () T!98588)

(assert (=> d!1558844 (contains!19359 lt!1991454 lt!1991486)))

(declare-fun e!3036350 () T!98588)

(assert (=> d!1558844 (= lt!1991486 e!3036350)))

(declare-fun c!826170 () Bool)

(assert (=> d!1558844 (= c!826170 (and ((_ is Cons!55742) lt!1991454) ((_ is Nil!55742) (t!363418 lt!1991454))))))

(assert (=> d!1558844 (not (isEmpty!29817 lt!1991454))))

(assert (=> d!1558844 (= (last!390 lt!1991454) lt!1991486)))

(declare-fun b!4856605 () Bool)

(assert (=> b!4856605 (= e!3036350 (h!62190 lt!1991454))))

(declare-fun b!4856606 () Bool)

(assert (=> b!4856606 (= e!3036350 (last!390 (t!363418 lt!1991454)))))

(assert (= (and d!1558844 c!826170) b!4856605))

(assert (= (and d!1558844 (not c!826170)) b!4856606))

(declare-fun m!5854396 () Bool)

(assert (=> d!1558844 m!5854396))

(declare-fun m!5854398 () Bool)

(assert (=> d!1558844 m!5854398))

(declare-fun m!5854400 () Bool)

(assert (=> b!4856606 m!5854400))

(assert (=> b!4856417 d!1558844))

(assert (=> b!4856422 d!1558824))

(assert (=> b!4856422 d!1558834))

(declare-fun d!1558846 () Bool)

(declare-fun lt!1991487 () T!98588)

(assert (=> d!1558846 (contains!19359 lt!1991456 lt!1991487)))

(declare-fun e!3036351 () T!98588)

(assert (=> d!1558846 (= lt!1991487 e!3036351)))

(declare-fun c!826171 () Bool)

(assert (=> d!1558846 (= c!826171 (and ((_ is Cons!55742) lt!1991456) ((_ is Nil!55742) (t!363418 lt!1991456))))))

(assert (=> d!1558846 (not (isEmpty!29817 lt!1991456))))

(assert (=> d!1558846 (= (last!390 lt!1991456) lt!1991487)))

(declare-fun b!4856607 () Bool)

(assert (=> b!4856607 (= e!3036351 (h!62190 lt!1991456))))

(declare-fun b!4856608 () Bool)

(assert (=> b!4856608 (= e!3036351 (last!390 (t!363418 lt!1991456)))))

(assert (= (and d!1558846 c!826171) b!4856607))

(assert (= (and d!1558846 (not c!826171)) b!4856608))

(declare-fun m!5854402 () Bool)

(assert (=> d!1558846 m!5854402))

(assert (=> d!1558846 m!5854214))

(declare-fun m!5854404 () Bool)

(assert (=> b!4856608 m!5854404))

(assert (=> b!4856422 d!1558846))

(declare-fun tp!1366367 () Bool)

(declare-fun tp!1366366 () Bool)

(declare-fun b!4856623 () Bool)

(declare-fun e!3036360 () Bool)

(assert (=> b!4856623 (= e!3036360 (and (inv!71541 (left!40503 (left!40503 t!4677))) tp!1366367 (inv!71541 (right!40833 (left!40503 t!4677))) tp!1366366))))

(declare-fun b!4856625 () Bool)

(declare-fun e!3036361 () Bool)

(declare-fun tp!1366365 () Bool)

(assert (=> b!4856625 (= e!3036361 tp!1366365)))

(declare-fun b!4856624 () Bool)

(assert (=> b!4856624 (= e!3036360 (and (inv!71542 (xs!17828 (left!40503 t!4677))) e!3036361))))

(assert (=> b!4856420 (= tp!1366342 (and (inv!71541 (left!40503 t!4677)) e!3036360))))

(assert (= (and b!4856420 ((_ is Node!14522) (left!40503 t!4677))) b!4856623))

(assert (= b!4856624 b!4856625))

(assert (= (and b!4856420 ((_ is Leaf!24198) (left!40503 t!4677))) b!4856624))

(declare-fun m!5854418 () Bool)

(assert (=> b!4856623 m!5854418))

(declare-fun m!5854420 () Bool)

(assert (=> b!4856623 m!5854420))

(declare-fun m!5854422 () Bool)

(assert (=> b!4856624 m!5854422))

(assert (=> b!4856420 m!5854198))

(declare-fun b!4856626 () Bool)

(declare-fun tp!1366369 () Bool)

(declare-fun e!3036362 () Bool)

(declare-fun tp!1366370 () Bool)

(assert (=> b!4856626 (= e!3036362 (and (inv!71541 (left!40503 (right!40833 t!4677))) tp!1366370 (inv!71541 (right!40833 (right!40833 t!4677))) tp!1366369))))

(declare-fun b!4856628 () Bool)

(declare-fun e!3036363 () Bool)

(declare-fun tp!1366368 () Bool)

(assert (=> b!4856628 (= e!3036363 tp!1366368)))

(declare-fun b!4856627 () Bool)

(assert (=> b!4856627 (= e!3036362 (and (inv!71542 (xs!17828 (right!40833 t!4677))) e!3036363))))

(assert (=> b!4856420 (= tp!1366343 (and (inv!71541 (right!40833 t!4677)) e!3036362))))

(assert (= (and b!4856420 ((_ is Node!14522) (right!40833 t!4677))) b!4856626))

(assert (= b!4856627 b!4856628))

(assert (= (and b!4856420 ((_ is Leaf!24198) (right!40833 t!4677))) b!4856627))

(declare-fun m!5854424 () Bool)

(assert (=> b!4856626 m!5854424))

(declare-fun m!5854426 () Bool)

(assert (=> b!4856626 m!5854426))

(declare-fun m!5854428 () Bool)

(assert (=> b!4856627 m!5854428))

(assert (=> b!4856420 m!5854200))

(declare-fun b!4856633 () Bool)

(declare-fun e!3036366 () Bool)

(declare-fun tp_is_empty!35503 () Bool)

(declare-fun tp!1366373 () Bool)

(assert (=> b!4856633 (= e!3036366 (and tp_is_empty!35503 tp!1366373))))

(assert (=> b!4856418 (= tp!1366341 e!3036366)))

(assert (= (and b!4856418 ((_ is Cons!55742) (innerList!14610 (xs!17828 t!4677)))) b!4856633))

(check-sat (not b!4856626) (not d!1558814) (not b!4856633) (not b!4856533) (not d!1558822) (not b!4856496) (not d!1558790) (not b!4856504) (not b!4856444) (not b!4856446) (not d!1558844) (not b!4856502) (not d!1558820) (not b!4856443) (not b!4856497) (not b!4856530) (not b!4856420) (not b!4856627) (not b!4856503) (not b!4856608) (not b!4856442) (not b!4856501) (not b!4856606) tp_is_empty!35503 (not b!4856445) (not d!1558834) (not b!4856528) (not b!4856471) (not b!4856624) (not d!1558824) (not d!1558846) (not b!4856505) (not b!4856500) (not b!4856623) (not b!4856534) (not b!4856469) (not b!4856531) (not b!4856625) (not b!4856536) (not b!4856556) (not b!4856628) (not b!4856447) (not b!4856593) (not b!4856470) (not b!4856506) (not b!4856594) (not b!4856507))
(check-sat)
