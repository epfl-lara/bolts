; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534514 () Bool)

(assert start!534514)

(declare-fun res!2152140 () Bool)

(declare-fun e!3155239 () Bool)

(assert (=> start!534514 (=> (not res!2152140) (not e!3155239))))

(declare-datatypes ((T!104964 0))(
  ( (T!104965 (val!23626 Int)) )
))
(declare-datatypes ((List!58536 0))(
  ( (Nil!58412) (Cons!58412 (h!64860 T!104964) (t!371189 List!58536)) )
))
(declare-datatypes ((IArray!31145 0))(
  ( (IArray!31146 (innerList!15630 List!58536)) )
))
(declare-datatypes ((Conc!15542 0))(
  ( (Node!15542 (left!42783 Conc!15542) (right!43113 Conc!15542) (csize!31314 Int) (cheight!15753 Int)) (Leaf!25818 (xs!18872 IArray!31145) (csize!31315 Int)) (Empty!15542) )
))
(declare-fun xs!286 () Conc!15542)

(declare-fun isBalanced!4404 (Conc!15542) Bool)

(assert (=> start!534514 (= res!2152140 (isBalanced!4404 xs!286))))

(assert (=> start!534514 e!3155239))

(declare-fun e!3155240 () Bool)

(declare-fun inv!77434 (Conc!15542) Bool)

(assert (=> start!534514 (and (inv!77434 xs!286) e!3155240)))

(declare-fun ys!41 () Conc!15542)

(declare-fun e!3155242 () Bool)

(assert (=> start!534514 (and (inv!77434 ys!41) e!3155242)))

(declare-fun b!5054242 () Bool)

(declare-fun res!2152138 () Bool)

(declare-fun e!3155238 () Bool)

(assert (=> b!5054242 (=> (not res!2152138) (not e!3155238))))

(get-info :version)

(assert (=> b!5054242 (= res!2152138 ((_ is Node!15542) (left!42783 ys!41)))))

(declare-fun b!5054243 () Bool)

(declare-fun e!3155241 () Bool)

(declare-fun tp!1412748 () Bool)

(assert (=> b!5054243 (= e!3155241 tp!1412748)))

(declare-fun tp!1412749 () Bool)

(declare-fun tp!1412746 () Bool)

(declare-fun b!5054244 () Bool)

(assert (=> b!5054244 (= e!3155240 (and (inv!77434 (left!42783 xs!286)) tp!1412746 (inv!77434 (right!43113 xs!286)) tp!1412749))))

(declare-fun tp!1412747 () Bool)

(declare-fun tp!1412744 () Bool)

(declare-fun b!5054245 () Bool)

(assert (=> b!5054245 (= e!3155242 (and (inv!77434 (left!42783 ys!41)) tp!1412747 (inv!77434 (right!43113 ys!41)) tp!1412744))))

(declare-fun b!5054246 () Bool)

(declare-fun inv!77435 (IArray!31145) Bool)

(assert (=> b!5054246 (= e!3155240 (and (inv!77435 (xs!18872 xs!286)) e!3155241))))

(declare-fun b!5054247 () Bool)

(assert (=> b!5054247 (= e!3155238 (not (isBalanced!4404 (left!42783 (left!42783 ys!41)))))))

(declare-fun b!5054248 () Bool)

(declare-fun e!3155237 () Bool)

(assert (=> b!5054248 (= e!3155242 (and (inv!77435 (xs!18872 ys!41)) e!3155237))))

(declare-fun b!5054249 () Bool)

(declare-fun res!2152136 () Bool)

(assert (=> b!5054249 (=> (not res!2152136) (not e!3155238))))

(declare-fun height!2119 (Conc!15542) Int)

(assert (=> b!5054249 (= res!2152136 (< (height!2119 (right!43113 ys!41)) (height!2119 (left!42783 ys!41))))))

(declare-fun b!5054250 () Bool)

(declare-fun tp!1412745 () Bool)

(assert (=> b!5054250 (= e!3155237 tp!1412745)))

(declare-fun b!5054251 () Bool)

(assert (=> b!5054251 (= e!3155239 e!3155238)))

(declare-fun res!2152137 () Bool)

(assert (=> b!5054251 (=> (not res!2152137) (not e!3155238))))

(declare-fun lt!2087291 () Int)

(assert (=> b!5054251 (= res!2152137 (and (or (> (- 1) lt!2087291) (> lt!2087291 1)) (>= lt!2087291 (- 1)) ((_ is Node!15542) ys!41)))))

(assert (=> b!5054251 (= lt!2087291 (- (height!2119 ys!41) (height!2119 xs!286)))))

(declare-fun b!5054252 () Bool)

(declare-fun res!2152139 () Bool)

(assert (=> b!5054252 (=> (not res!2152139) (not e!3155239))))

(assert (=> b!5054252 (= res!2152139 (isBalanced!4404 ys!41))))

(declare-fun b!5054253 () Bool)

(declare-fun res!2152141 () Bool)

(assert (=> b!5054253 (=> (not res!2152141) (not e!3155239))))

(assert (=> b!5054253 (= res!2152141 (and (not (= xs!286 Empty!15542)) (not (= ys!41 Empty!15542))))))

(assert (= (and start!534514 res!2152140) b!5054252))

(assert (= (and b!5054252 res!2152139) b!5054253))

(assert (= (and b!5054253 res!2152141) b!5054251))

(assert (= (and b!5054251 res!2152137) b!5054249))

(assert (= (and b!5054249 res!2152136) b!5054242))

(assert (= (and b!5054242 res!2152138) b!5054247))

(assert (= (and start!534514 ((_ is Node!15542) xs!286)) b!5054244))

(assert (= b!5054246 b!5054243))

(assert (= (and start!534514 ((_ is Leaf!25818) xs!286)) b!5054246))

(assert (= (and start!534514 ((_ is Node!15542) ys!41)) b!5054245))

(assert (= b!5054248 b!5054250))

(assert (= (and start!534514 ((_ is Leaf!25818) ys!41)) b!5054248))

(declare-fun m!6088488 () Bool)

(assert (=> b!5054249 m!6088488))

(declare-fun m!6088490 () Bool)

(assert (=> b!5054249 m!6088490))

(declare-fun m!6088492 () Bool)

(assert (=> b!5054244 m!6088492))

(declare-fun m!6088494 () Bool)

(assert (=> b!5054244 m!6088494))

(declare-fun m!6088496 () Bool)

(assert (=> b!5054252 m!6088496))

(declare-fun m!6088498 () Bool)

(assert (=> b!5054245 m!6088498))

(declare-fun m!6088500 () Bool)

(assert (=> b!5054245 m!6088500))

(declare-fun m!6088502 () Bool)

(assert (=> b!5054246 m!6088502))

(declare-fun m!6088504 () Bool)

(assert (=> b!5054248 m!6088504))

(declare-fun m!6088506 () Bool)

(assert (=> b!5054247 m!6088506))

(declare-fun m!6088508 () Bool)

(assert (=> b!5054251 m!6088508))

(declare-fun m!6088510 () Bool)

(assert (=> b!5054251 m!6088510))

(declare-fun m!6088512 () Bool)

(assert (=> start!534514 m!6088512))

(declare-fun m!6088514 () Bool)

(assert (=> start!534514 m!6088514))

(declare-fun m!6088516 () Bool)

(assert (=> start!534514 m!6088516))

(check-sat (not b!5054245) (not b!5054249) (not b!5054246) (not start!534514) (not b!5054248) (not b!5054251) (not b!5054247) (not b!5054250) (not b!5054252) (not b!5054244) (not b!5054243))
(check-sat)
(get-model)

(declare-fun d!1626416 () Bool)

(declare-fun c!867202 () Bool)

(assert (=> d!1626416 (= c!867202 ((_ is Node!15542) (left!42783 xs!286)))))

(declare-fun e!3155247 () Bool)

(assert (=> d!1626416 (= (inv!77434 (left!42783 xs!286)) e!3155247)))

(declare-fun b!5054260 () Bool)

(declare-fun inv!77436 (Conc!15542) Bool)

(assert (=> b!5054260 (= e!3155247 (inv!77436 (left!42783 xs!286)))))

(declare-fun b!5054261 () Bool)

(declare-fun e!3155248 () Bool)

(assert (=> b!5054261 (= e!3155247 e!3155248)))

(declare-fun res!2152144 () Bool)

(assert (=> b!5054261 (= res!2152144 (not ((_ is Leaf!25818) (left!42783 xs!286))))))

(assert (=> b!5054261 (=> res!2152144 e!3155248)))

(declare-fun b!5054262 () Bool)

(declare-fun inv!77437 (Conc!15542) Bool)

(assert (=> b!5054262 (= e!3155248 (inv!77437 (left!42783 xs!286)))))

(assert (= (and d!1626416 c!867202) b!5054260))

(assert (= (and d!1626416 (not c!867202)) b!5054261))

(assert (= (and b!5054261 (not res!2152144)) b!5054262))

(declare-fun m!6088518 () Bool)

(assert (=> b!5054260 m!6088518))

(declare-fun m!6088520 () Bool)

(assert (=> b!5054262 m!6088520))

(assert (=> b!5054244 d!1626416))

(declare-fun d!1626418 () Bool)

(declare-fun c!867203 () Bool)

(assert (=> d!1626418 (= c!867203 ((_ is Node!15542) (right!43113 xs!286)))))

(declare-fun e!3155249 () Bool)

(assert (=> d!1626418 (= (inv!77434 (right!43113 xs!286)) e!3155249)))

(declare-fun b!5054263 () Bool)

(assert (=> b!5054263 (= e!3155249 (inv!77436 (right!43113 xs!286)))))

(declare-fun b!5054264 () Bool)

(declare-fun e!3155250 () Bool)

(assert (=> b!5054264 (= e!3155249 e!3155250)))

(declare-fun res!2152145 () Bool)

(assert (=> b!5054264 (= res!2152145 (not ((_ is Leaf!25818) (right!43113 xs!286))))))

(assert (=> b!5054264 (=> res!2152145 e!3155250)))

(declare-fun b!5054265 () Bool)

(assert (=> b!5054265 (= e!3155250 (inv!77437 (right!43113 xs!286)))))

(assert (= (and d!1626418 c!867203) b!5054263))

(assert (= (and d!1626418 (not c!867203)) b!5054264))

(assert (= (and b!5054264 (not res!2152145)) b!5054265))

(declare-fun m!6088522 () Bool)

(assert (=> b!5054263 m!6088522))

(declare-fun m!6088524 () Bool)

(assert (=> b!5054265 m!6088524))

(assert (=> b!5054244 d!1626418))

(declare-fun d!1626420 () Bool)

(declare-fun c!867204 () Bool)

(assert (=> d!1626420 (= c!867204 ((_ is Node!15542) (left!42783 ys!41)))))

(declare-fun e!3155251 () Bool)

(assert (=> d!1626420 (= (inv!77434 (left!42783 ys!41)) e!3155251)))

(declare-fun b!5054266 () Bool)

(assert (=> b!5054266 (= e!3155251 (inv!77436 (left!42783 ys!41)))))

(declare-fun b!5054267 () Bool)

(declare-fun e!3155252 () Bool)

(assert (=> b!5054267 (= e!3155251 e!3155252)))

(declare-fun res!2152146 () Bool)

(assert (=> b!5054267 (= res!2152146 (not ((_ is Leaf!25818) (left!42783 ys!41))))))

(assert (=> b!5054267 (=> res!2152146 e!3155252)))

(declare-fun b!5054268 () Bool)

(assert (=> b!5054268 (= e!3155252 (inv!77437 (left!42783 ys!41)))))

(assert (= (and d!1626420 c!867204) b!5054266))

(assert (= (and d!1626420 (not c!867204)) b!5054267))

(assert (= (and b!5054267 (not res!2152146)) b!5054268))

(declare-fun m!6088526 () Bool)

(assert (=> b!5054266 m!6088526))

(declare-fun m!6088528 () Bool)

(assert (=> b!5054268 m!6088528))

(assert (=> b!5054245 d!1626420))

(declare-fun d!1626422 () Bool)

(declare-fun c!867205 () Bool)

(assert (=> d!1626422 (= c!867205 ((_ is Node!15542) (right!43113 ys!41)))))

(declare-fun e!3155253 () Bool)

(assert (=> d!1626422 (= (inv!77434 (right!43113 ys!41)) e!3155253)))

(declare-fun b!5054269 () Bool)

(assert (=> b!5054269 (= e!3155253 (inv!77436 (right!43113 ys!41)))))

(declare-fun b!5054270 () Bool)

(declare-fun e!3155254 () Bool)

(assert (=> b!5054270 (= e!3155253 e!3155254)))

(declare-fun res!2152147 () Bool)

(assert (=> b!5054270 (= res!2152147 (not ((_ is Leaf!25818) (right!43113 ys!41))))))

(assert (=> b!5054270 (=> res!2152147 e!3155254)))

(declare-fun b!5054271 () Bool)

(assert (=> b!5054271 (= e!3155254 (inv!77437 (right!43113 ys!41)))))

(assert (= (and d!1626422 c!867205) b!5054269))

(assert (= (and d!1626422 (not c!867205)) b!5054270))

(assert (= (and b!5054270 (not res!2152147)) b!5054271))

(declare-fun m!6088530 () Bool)

(assert (=> b!5054269 m!6088530))

(declare-fun m!6088532 () Bool)

(assert (=> b!5054271 m!6088532))

(assert (=> b!5054245 d!1626422))

(declare-fun d!1626424 () Bool)

(assert (=> d!1626424 (= (height!2119 ys!41) (ite ((_ is Empty!15542) ys!41) 0 (ite ((_ is Leaf!25818) ys!41) 1 (cheight!15753 ys!41))))))

(assert (=> b!5054251 d!1626424))

(declare-fun d!1626428 () Bool)

(assert (=> d!1626428 (= (height!2119 xs!286) (ite ((_ is Empty!15542) xs!286) 0 (ite ((_ is Leaf!25818) xs!286) 1 (cheight!15753 xs!286))))))

(assert (=> b!5054251 d!1626428))

(declare-fun b!5054302 () Bool)

(declare-fun res!2152183 () Bool)

(declare-fun e!3155265 () Bool)

(assert (=> b!5054302 (=> (not res!2152183) (not e!3155265))))

(assert (=> b!5054302 (= res!2152183 (isBalanced!4404 (right!43113 xs!286)))))

(declare-fun d!1626430 () Bool)

(declare-fun res!2152179 () Bool)

(declare-fun e!3155266 () Bool)

(assert (=> d!1626430 (=> res!2152179 e!3155266)))

(assert (=> d!1626430 (= res!2152179 (not ((_ is Node!15542) xs!286)))))

(assert (=> d!1626430 (= (isBalanced!4404 xs!286) e!3155266)))

(declare-fun b!5054303 () Bool)

(declare-fun res!2152180 () Bool)

(assert (=> b!5054303 (=> (not res!2152180) (not e!3155265))))

(assert (=> b!5054303 (= res!2152180 (isBalanced!4404 (left!42783 xs!286)))))

(declare-fun b!5054304 () Bool)

(declare-fun res!2152178 () Bool)

(assert (=> b!5054304 (=> (not res!2152178) (not e!3155265))))

(declare-fun isEmpty!31593 (Conc!15542) Bool)

(assert (=> b!5054304 (= res!2152178 (not (isEmpty!31593 (left!42783 xs!286))))))

(declare-fun b!5054305 () Bool)

(assert (=> b!5054305 (= e!3155266 e!3155265)))

(declare-fun res!2152182 () Bool)

(assert (=> b!5054305 (=> (not res!2152182) (not e!3155265))))

(assert (=> b!5054305 (= res!2152182 (<= (- 1) (- (height!2119 (left!42783 xs!286)) (height!2119 (right!43113 xs!286)))))))

(declare-fun b!5054306 () Bool)

(assert (=> b!5054306 (= e!3155265 (not (isEmpty!31593 (right!43113 xs!286))))))

(declare-fun b!5054307 () Bool)

(declare-fun res!2152181 () Bool)

(assert (=> b!5054307 (=> (not res!2152181) (not e!3155265))))

(assert (=> b!5054307 (= res!2152181 (<= (- (height!2119 (left!42783 xs!286)) (height!2119 (right!43113 xs!286))) 1))))

(assert (= (and d!1626430 (not res!2152179)) b!5054305))

(assert (= (and b!5054305 res!2152182) b!5054307))

(assert (= (and b!5054307 res!2152181) b!5054303))

(assert (= (and b!5054303 res!2152180) b!5054302))

(assert (= (and b!5054302 res!2152183) b!5054304))

(assert (= (and b!5054304 res!2152178) b!5054306))

(declare-fun m!6088542 () Bool)

(assert (=> b!5054307 m!6088542))

(declare-fun m!6088544 () Bool)

(assert (=> b!5054307 m!6088544))

(declare-fun m!6088546 () Bool)

(assert (=> b!5054306 m!6088546))

(declare-fun m!6088548 () Bool)

(assert (=> b!5054303 m!6088548))

(declare-fun m!6088550 () Bool)

(assert (=> b!5054304 m!6088550))

(declare-fun m!6088552 () Bool)

(assert (=> b!5054302 m!6088552))

(assert (=> b!5054305 m!6088542))

(assert (=> b!5054305 m!6088544))

(assert (=> start!534514 d!1626430))

(declare-fun d!1626434 () Bool)

(declare-fun c!867206 () Bool)

(assert (=> d!1626434 (= c!867206 ((_ is Node!15542) xs!286))))

(declare-fun e!3155269 () Bool)

(assert (=> d!1626434 (= (inv!77434 xs!286) e!3155269)))

(declare-fun b!5054314 () Bool)

(assert (=> b!5054314 (= e!3155269 (inv!77436 xs!286))))

(declare-fun b!5054315 () Bool)

(declare-fun e!3155270 () Bool)

(assert (=> b!5054315 (= e!3155269 e!3155270)))

(declare-fun res!2152190 () Bool)

(assert (=> b!5054315 (= res!2152190 (not ((_ is Leaf!25818) xs!286)))))

(assert (=> b!5054315 (=> res!2152190 e!3155270)))

(declare-fun b!5054316 () Bool)

(assert (=> b!5054316 (= e!3155270 (inv!77437 xs!286))))

(assert (= (and d!1626434 c!867206) b!5054314))

(assert (= (and d!1626434 (not c!867206)) b!5054315))

(assert (= (and b!5054315 (not res!2152190)) b!5054316))

(declare-fun m!6088566 () Bool)

(assert (=> b!5054314 m!6088566))

(declare-fun m!6088568 () Bool)

(assert (=> b!5054316 m!6088568))

(assert (=> start!534514 d!1626434))

(declare-fun d!1626438 () Bool)

(declare-fun c!867207 () Bool)

(assert (=> d!1626438 (= c!867207 ((_ is Node!15542) ys!41))))

(declare-fun e!3155273 () Bool)

(assert (=> d!1626438 (= (inv!77434 ys!41) e!3155273)))

(declare-fun b!5054323 () Bool)

(assert (=> b!5054323 (= e!3155273 (inv!77436 ys!41))))

(declare-fun b!5054324 () Bool)

(declare-fun e!3155274 () Bool)

(assert (=> b!5054324 (= e!3155273 e!3155274)))

(declare-fun res!2152197 () Bool)

(assert (=> b!5054324 (= res!2152197 (not ((_ is Leaf!25818) ys!41)))))

(assert (=> b!5054324 (=> res!2152197 e!3155274)))

(declare-fun b!5054325 () Bool)

(assert (=> b!5054325 (= e!3155274 (inv!77437 ys!41))))

(assert (= (and d!1626438 c!867207) b!5054323))

(assert (= (and d!1626438 (not c!867207)) b!5054324))

(assert (= (and b!5054324 (not res!2152197)) b!5054325))

(declare-fun m!6088570 () Bool)

(assert (=> b!5054323 m!6088570))

(declare-fun m!6088572 () Bool)

(assert (=> b!5054325 m!6088572))

(assert (=> start!534514 d!1626438))

(declare-fun d!1626440 () Bool)

(declare-fun size!39036 (List!58536) Int)

(assert (=> d!1626440 (= (inv!77435 (xs!18872 xs!286)) (<= (size!39036 (innerList!15630 (xs!18872 xs!286))) 2147483647))))

(declare-fun bs!1189322 () Bool)

(assert (= bs!1189322 d!1626440))

(declare-fun m!6088586 () Bool)

(assert (=> bs!1189322 m!6088586))

(assert (=> b!5054246 d!1626440))

(declare-fun b!5054326 () Bool)

(declare-fun res!2152203 () Bool)

(declare-fun e!3155275 () Bool)

(assert (=> b!5054326 (=> (not res!2152203) (not e!3155275))))

(assert (=> b!5054326 (= res!2152203 (isBalanced!4404 (right!43113 (left!42783 (left!42783 ys!41)))))))

(declare-fun d!1626444 () Bool)

(declare-fun res!2152199 () Bool)

(declare-fun e!3155276 () Bool)

(assert (=> d!1626444 (=> res!2152199 e!3155276)))

(assert (=> d!1626444 (= res!2152199 (not ((_ is Node!15542) (left!42783 (left!42783 ys!41)))))))

(assert (=> d!1626444 (= (isBalanced!4404 (left!42783 (left!42783 ys!41))) e!3155276)))

(declare-fun b!5054327 () Bool)

(declare-fun res!2152200 () Bool)

(assert (=> b!5054327 (=> (not res!2152200) (not e!3155275))))

(assert (=> b!5054327 (= res!2152200 (isBalanced!4404 (left!42783 (left!42783 (left!42783 ys!41)))))))

(declare-fun b!5054328 () Bool)

(declare-fun res!2152198 () Bool)

(assert (=> b!5054328 (=> (not res!2152198) (not e!3155275))))

(assert (=> b!5054328 (= res!2152198 (not (isEmpty!31593 (left!42783 (left!42783 (left!42783 ys!41))))))))

(declare-fun b!5054329 () Bool)

(assert (=> b!5054329 (= e!3155276 e!3155275)))

(declare-fun res!2152202 () Bool)

(assert (=> b!5054329 (=> (not res!2152202) (not e!3155275))))

(assert (=> b!5054329 (= res!2152202 (<= (- 1) (- (height!2119 (left!42783 (left!42783 (left!42783 ys!41)))) (height!2119 (right!43113 (left!42783 (left!42783 ys!41)))))))))

(declare-fun b!5054330 () Bool)

(assert (=> b!5054330 (= e!3155275 (not (isEmpty!31593 (right!43113 (left!42783 (left!42783 ys!41))))))))

(declare-fun b!5054331 () Bool)

(declare-fun res!2152201 () Bool)

(assert (=> b!5054331 (=> (not res!2152201) (not e!3155275))))

(assert (=> b!5054331 (= res!2152201 (<= (- (height!2119 (left!42783 (left!42783 (left!42783 ys!41)))) (height!2119 (right!43113 (left!42783 (left!42783 ys!41))))) 1))))

(assert (= (and d!1626444 (not res!2152199)) b!5054329))

(assert (= (and b!5054329 res!2152202) b!5054331))

(assert (= (and b!5054331 res!2152201) b!5054327))

(assert (= (and b!5054327 res!2152200) b!5054326))

(assert (= (and b!5054326 res!2152203) b!5054328))

(assert (= (and b!5054328 res!2152198) b!5054330))

(declare-fun m!6088588 () Bool)

(assert (=> b!5054331 m!6088588))

(declare-fun m!6088590 () Bool)

(assert (=> b!5054331 m!6088590))

(declare-fun m!6088592 () Bool)

(assert (=> b!5054330 m!6088592))

(declare-fun m!6088594 () Bool)

(assert (=> b!5054327 m!6088594))

(declare-fun m!6088596 () Bool)

(assert (=> b!5054328 m!6088596))

(declare-fun m!6088598 () Bool)

(assert (=> b!5054326 m!6088598))

(assert (=> b!5054329 m!6088588))

(assert (=> b!5054329 m!6088590))

(assert (=> b!5054247 d!1626444))

(declare-fun b!5054332 () Bool)

(declare-fun res!2152209 () Bool)

(declare-fun e!3155277 () Bool)

(assert (=> b!5054332 (=> (not res!2152209) (not e!3155277))))

(assert (=> b!5054332 (= res!2152209 (isBalanced!4404 (right!43113 ys!41)))))

(declare-fun d!1626446 () Bool)

(declare-fun res!2152205 () Bool)

(declare-fun e!3155278 () Bool)

(assert (=> d!1626446 (=> res!2152205 e!3155278)))

(assert (=> d!1626446 (= res!2152205 (not ((_ is Node!15542) ys!41)))))

(assert (=> d!1626446 (= (isBalanced!4404 ys!41) e!3155278)))

(declare-fun b!5054333 () Bool)

(declare-fun res!2152206 () Bool)

(assert (=> b!5054333 (=> (not res!2152206) (not e!3155277))))

(assert (=> b!5054333 (= res!2152206 (isBalanced!4404 (left!42783 ys!41)))))

(declare-fun b!5054334 () Bool)

(declare-fun res!2152204 () Bool)

(assert (=> b!5054334 (=> (not res!2152204) (not e!3155277))))

(assert (=> b!5054334 (= res!2152204 (not (isEmpty!31593 (left!42783 ys!41))))))

(declare-fun b!5054335 () Bool)

(assert (=> b!5054335 (= e!3155278 e!3155277)))

(declare-fun res!2152208 () Bool)

(assert (=> b!5054335 (=> (not res!2152208) (not e!3155277))))

(assert (=> b!5054335 (= res!2152208 (<= (- 1) (- (height!2119 (left!42783 ys!41)) (height!2119 (right!43113 ys!41)))))))

(declare-fun b!5054336 () Bool)

(assert (=> b!5054336 (= e!3155277 (not (isEmpty!31593 (right!43113 ys!41))))))

(declare-fun b!5054337 () Bool)

(declare-fun res!2152207 () Bool)

(assert (=> b!5054337 (=> (not res!2152207) (not e!3155277))))

(assert (=> b!5054337 (= res!2152207 (<= (- (height!2119 (left!42783 ys!41)) (height!2119 (right!43113 ys!41))) 1))))

(assert (= (and d!1626446 (not res!2152205)) b!5054335))

(assert (= (and b!5054335 res!2152208) b!5054337))

(assert (= (and b!5054337 res!2152207) b!5054333))

(assert (= (and b!5054333 res!2152206) b!5054332))

(assert (= (and b!5054332 res!2152209) b!5054334))

(assert (= (and b!5054334 res!2152204) b!5054336))

(assert (=> b!5054337 m!6088490))

(assert (=> b!5054337 m!6088488))

(declare-fun m!6088600 () Bool)

(assert (=> b!5054336 m!6088600))

(declare-fun m!6088602 () Bool)

(assert (=> b!5054333 m!6088602))

(declare-fun m!6088604 () Bool)

(assert (=> b!5054334 m!6088604))

(declare-fun m!6088606 () Bool)

(assert (=> b!5054332 m!6088606))

(assert (=> b!5054335 m!6088490))

(assert (=> b!5054335 m!6088488))

(assert (=> b!5054252 d!1626446))

(declare-fun d!1626448 () Bool)

(assert (=> d!1626448 (= (inv!77435 (xs!18872 ys!41)) (<= (size!39036 (innerList!15630 (xs!18872 ys!41))) 2147483647))))

(declare-fun bs!1189323 () Bool)

(assert (= bs!1189323 d!1626448))

(declare-fun m!6088608 () Bool)

(assert (=> bs!1189323 m!6088608))

(assert (=> b!5054248 d!1626448))

(declare-fun d!1626450 () Bool)

(assert (=> d!1626450 (= (height!2119 (right!43113 ys!41)) (ite ((_ is Empty!15542) (right!43113 ys!41)) 0 (ite ((_ is Leaf!25818) (right!43113 ys!41)) 1 (cheight!15753 (right!43113 ys!41)))))))

(assert (=> b!5054249 d!1626450))

(declare-fun d!1626452 () Bool)

(assert (=> d!1626452 (= (height!2119 (left!42783 ys!41)) (ite ((_ is Empty!15542) (left!42783 ys!41)) 0 (ite ((_ is Leaf!25818) (left!42783 ys!41)) 1 (cheight!15753 (left!42783 ys!41)))))))

(assert (=> b!5054249 d!1626452))

(declare-fun e!3155291 () Bool)

(declare-fun b!5054358 () Bool)

(declare-fun tp!1412758 () Bool)

(declare-fun tp!1412757 () Bool)

(assert (=> b!5054358 (= e!3155291 (and (inv!77434 (left!42783 (left!42783 xs!286))) tp!1412758 (inv!77434 (right!43113 (left!42783 xs!286))) tp!1412757))))

(declare-fun b!5054360 () Bool)

(declare-fun e!3155292 () Bool)

(declare-fun tp!1412756 () Bool)

(assert (=> b!5054360 (= e!3155292 tp!1412756)))

(declare-fun b!5054359 () Bool)

(assert (=> b!5054359 (= e!3155291 (and (inv!77435 (xs!18872 (left!42783 xs!286))) e!3155292))))

(assert (=> b!5054244 (= tp!1412746 (and (inv!77434 (left!42783 xs!286)) e!3155291))))

(assert (= (and b!5054244 ((_ is Node!15542) (left!42783 xs!286))) b!5054358))

(assert (= b!5054359 b!5054360))

(assert (= (and b!5054244 ((_ is Leaf!25818) (left!42783 xs!286))) b!5054359))

(declare-fun m!6088618 () Bool)

(assert (=> b!5054358 m!6088618))

(declare-fun m!6088620 () Bool)

(assert (=> b!5054358 m!6088620))

(declare-fun m!6088622 () Bool)

(assert (=> b!5054359 m!6088622))

(assert (=> b!5054244 m!6088492))

(declare-fun tp!1412761 () Bool)

(declare-fun e!3155295 () Bool)

(declare-fun b!5054364 () Bool)

(declare-fun tp!1412760 () Bool)

(assert (=> b!5054364 (= e!3155295 (and (inv!77434 (left!42783 (right!43113 xs!286))) tp!1412761 (inv!77434 (right!43113 (right!43113 xs!286))) tp!1412760))))

(declare-fun b!5054366 () Bool)

(declare-fun e!3155296 () Bool)

(declare-fun tp!1412759 () Bool)

(assert (=> b!5054366 (= e!3155296 tp!1412759)))

(declare-fun b!5054365 () Bool)

(assert (=> b!5054365 (= e!3155295 (and (inv!77435 (xs!18872 (right!43113 xs!286))) e!3155296))))

(assert (=> b!5054244 (= tp!1412749 (and (inv!77434 (right!43113 xs!286)) e!3155295))))

(assert (= (and b!5054244 ((_ is Node!15542) (right!43113 xs!286))) b!5054364))

(assert (= b!5054365 b!5054366))

(assert (= (and b!5054244 ((_ is Leaf!25818) (right!43113 xs!286))) b!5054365))

(declare-fun m!6088628 () Bool)

(assert (=> b!5054364 m!6088628))

(declare-fun m!6088632 () Bool)

(assert (=> b!5054364 m!6088632))

(declare-fun m!6088636 () Bool)

(assert (=> b!5054365 m!6088636))

(assert (=> b!5054244 m!6088494))

(declare-fun tp!1412763 () Bool)

(declare-fun e!3155299 () Bool)

(declare-fun tp!1412764 () Bool)

(declare-fun b!5054370 () Bool)

(assert (=> b!5054370 (= e!3155299 (and (inv!77434 (left!42783 (left!42783 ys!41))) tp!1412764 (inv!77434 (right!43113 (left!42783 ys!41))) tp!1412763))))

(declare-fun b!5054372 () Bool)

(declare-fun e!3155300 () Bool)

(declare-fun tp!1412762 () Bool)

(assert (=> b!5054372 (= e!3155300 tp!1412762)))

(declare-fun b!5054371 () Bool)

(assert (=> b!5054371 (= e!3155299 (and (inv!77435 (xs!18872 (left!42783 ys!41))) e!3155300))))

(assert (=> b!5054245 (= tp!1412747 (and (inv!77434 (left!42783 ys!41)) e!3155299))))

(assert (= (and b!5054245 ((_ is Node!15542) (left!42783 ys!41))) b!5054370))

(assert (= b!5054371 b!5054372))

(assert (= (and b!5054245 ((_ is Leaf!25818) (left!42783 ys!41))) b!5054371))

(declare-fun m!6088638 () Bool)

(assert (=> b!5054370 m!6088638))

(declare-fun m!6088640 () Bool)

(assert (=> b!5054370 m!6088640))

(declare-fun m!6088642 () Bool)

(assert (=> b!5054371 m!6088642))

(assert (=> b!5054245 m!6088498))

(declare-fun tp!1412766 () Bool)

(declare-fun b!5054373 () Bool)

(declare-fun tp!1412767 () Bool)

(declare-fun e!3155301 () Bool)

(assert (=> b!5054373 (= e!3155301 (and (inv!77434 (left!42783 (right!43113 ys!41))) tp!1412767 (inv!77434 (right!43113 (right!43113 ys!41))) tp!1412766))))

(declare-fun b!5054375 () Bool)

(declare-fun e!3155302 () Bool)

(declare-fun tp!1412765 () Bool)

(assert (=> b!5054375 (= e!3155302 tp!1412765)))

(declare-fun b!5054374 () Bool)

(assert (=> b!5054374 (= e!3155301 (and (inv!77435 (xs!18872 (right!43113 ys!41))) e!3155302))))

(assert (=> b!5054245 (= tp!1412744 (and (inv!77434 (right!43113 ys!41)) e!3155301))))

(assert (= (and b!5054245 ((_ is Node!15542) (right!43113 ys!41))) b!5054373))

(assert (= b!5054374 b!5054375))

(assert (= (and b!5054245 ((_ is Leaf!25818) (right!43113 ys!41))) b!5054374))

(declare-fun m!6088644 () Bool)

(assert (=> b!5054373 m!6088644))

(declare-fun m!6088646 () Bool)

(assert (=> b!5054373 m!6088646))

(declare-fun m!6088648 () Bool)

(assert (=> b!5054374 m!6088648))

(assert (=> b!5054245 m!6088500))

(declare-fun b!5054380 () Bool)

(declare-fun e!3155305 () Bool)

(declare-fun tp_is_empty!37005 () Bool)

(declare-fun tp!1412770 () Bool)

(assert (=> b!5054380 (= e!3155305 (and tp_is_empty!37005 tp!1412770))))

(assert (=> b!5054250 (= tp!1412745 e!3155305)))

(assert (= (and b!5054250 ((_ is Cons!58412) (innerList!15630 (xs!18872 ys!41)))) b!5054380))

(declare-fun b!5054381 () Bool)

(declare-fun e!3155306 () Bool)

(declare-fun tp!1412771 () Bool)

(assert (=> b!5054381 (= e!3155306 (and tp_is_empty!37005 tp!1412771))))

(assert (=> b!5054243 (= tp!1412748 e!3155306)))

(assert (= (and b!5054243 ((_ is Cons!58412) (innerList!15630 (xs!18872 xs!286)))) b!5054381))

(check-sat (not b!5054305) (not b!5054358) (not b!5054325) tp_is_empty!37005 (not b!5054262) (not b!5054260) (not b!5054337) (not b!5054266) (not b!5054360) (not b!5054265) (not b!5054373) (not b!5054269) (not b!5054374) (not b!5054370) (not b!5054328) (not b!5054245) (not b!5054364) (not b!5054244) (not b!5054332) (not b!5054330) (not b!5054327) (not b!5054302) (not b!5054371) (not b!5054336) (not b!5054306) (not b!5054268) (not b!5054372) (not b!5054366) (not b!5054380) (not b!5054334) (not b!5054331) (not d!1626448) (not b!5054365) (not d!1626440) (not b!5054307) (not b!5054271) (not b!5054375) (not b!5054329) (not b!5054316) (not b!5054326) (not b!5054381) (not b!5054335) (not b!5054314) (not b!5054359) (not b!5054303) (not b!5054333) (not b!5054323) (not b!5054304) (not b!5054263))
(check-sat)
(get-model)

(declare-fun d!1626476 () Bool)

(declare-fun lt!2087294 () Int)

(assert (=> d!1626476 (>= lt!2087294 0)))

(declare-fun e!3155329 () Int)

(assert (=> d!1626476 (= lt!2087294 e!3155329)))

(declare-fun c!867218 () Bool)

(assert (=> d!1626476 (= c!867218 ((_ is Nil!58412) (innerList!15630 (xs!18872 ys!41))))))

(assert (=> d!1626476 (= (size!39036 (innerList!15630 (xs!18872 ys!41))) lt!2087294)))

(declare-fun b!5054418 () Bool)

(assert (=> b!5054418 (= e!3155329 0)))

(declare-fun b!5054419 () Bool)

(assert (=> b!5054419 (= e!3155329 (+ 1 (size!39036 (t!371189 (innerList!15630 (xs!18872 ys!41))))))))

(assert (= (and d!1626476 c!867218) b!5054418))

(assert (= (and d!1626476 (not c!867218)) b!5054419))

(declare-fun m!6088686 () Bool)

(assert (=> b!5054419 m!6088686))

(assert (=> d!1626448 d!1626476))

(declare-fun b!5054420 () Bool)

(declare-fun res!2152223 () Bool)

(declare-fun e!3155330 () Bool)

(assert (=> b!5054420 (=> (not res!2152223) (not e!3155330))))

(assert (=> b!5054420 (= res!2152223 (isBalanced!4404 (right!43113 (left!42783 (left!42783 (left!42783 ys!41))))))))

(declare-fun d!1626478 () Bool)

(declare-fun res!2152219 () Bool)

(declare-fun e!3155331 () Bool)

(assert (=> d!1626478 (=> res!2152219 e!3155331)))

(assert (=> d!1626478 (= res!2152219 (not ((_ is Node!15542) (left!42783 (left!42783 (left!42783 ys!41))))))))

(assert (=> d!1626478 (= (isBalanced!4404 (left!42783 (left!42783 (left!42783 ys!41)))) e!3155331)))

(declare-fun b!5054421 () Bool)

(declare-fun res!2152220 () Bool)

(assert (=> b!5054421 (=> (not res!2152220) (not e!3155330))))

(assert (=> b!5054421 (= res!2152220 (isBalanced!4404 (left!42783 (left!42783 (left!42783 (left!42783 ys!41))))))))

(declare-fun b!5054422 () Bool)

(declare-fun res!2152218 () Bool)

(assert (=> b!5054422 (=> (not res!2152218) (not e!3155330))))

(assert (=> b!5054422 (= res!2152218 (not (isEmpty!31593 (left!42783 (left!42783 (left!42783 (left!42783 ys!41)))))))))

(declare-fun b!5054423 () Bool)

(assert (=> b!5054423 (= e!3155331 e!3155330)))

(declare-fun res!2152222 () Bool)

(assert (=> b!5054423 (=> (not res!2152222) (not e!3155330))))

(assert (=> b!5054423 (= res!2152222 (<= (- 1) (- (height!2119 (left!42783 (left!42783 (left!42783 (left!42783 ys!41))))) (height!2119 (right!43113 (left!42783 (left!42783 (left!42783 ys!41))))))))))

(declare-fun b!5054424 () Bool)

(assert (=> b!5054424 (= e!3155330 (not (isEmpty!31593 (right!43113 (left!42783 (left!42783 (left!42783 ys!41)))))))))

(declare-fun b!5054425 () Bool)

(declare-fun res!2152221 () Bool)

(assert (=> b!5054425 (=> (not res!2152221) (not e!3155330))))

(assert (=> b!5054425 (= res!2152221 (<= (- (height!2119 (left!42783 (left!42783 (left!42783 (left!42783 ys!41))))) (height!2119 (right!43113 (left!42783 (left!42783 (left!42783 ys!41)))))) 1))))

(assert (= (and d!1626478 (not res!2152219)) b!5054423))

(assert (= (and b!5054423 res!2152222) b!5054425))

(assert (= (and b!5054425 res!2152221) b!5054421))

(assert (= (and b!5054421 res!2152220) b!5054420))

(assert (= (and b!5054420 res!2152223) b!5054422))

(assert (= (and b!5054422 res!2152218) b!5054424))

(declare-fun m!6088688 () Bool)

(assert (=> b!5054425 m!6088688))

(declare-fun m!6088690 () Bool)

(assert (=> b!5054425 m!6088690))

(declare-fun m!6088692 () Bool)

(assert (=> b!5054424 m!6088692))

(declare-fun m!6088694 () Bool)

(assert (=> b!5054421 m!6088694))

(declare-fun m!6088696 () Bool)

(assert (=> b!5054422 m!6088696))

(declare-fun m!6088698 () Bool)

(assert (=> b!5054420 m!6088698))

(assert (=> b!5054423 m!6088688))

(assert (=> b!5054423 m!6088690))

(assert (=> b!5054327 d!1626478))

(declare-fun b!5054426 () Bool)

(declare-fun res!2152229 () Bool)

(declare-fun e!3155332 () Bool)

(assert (=> b!5054426 (=> (not res!2152229) (not e!3155332))))

(assert (=> b!5054426 (= res!2152229 (isBalanced!4404 (right!43113 (left!42783 xs!286))))))

(declare-fun d!1626480 () Bool)

(declare-fun res!2152225 () Bool)

(declare-fun e!3155333 () Bool)

(assert (=> d!1626480 (=> res!2152225 e!3155333)))

(assert (=> d!1626480 (= res!2152225 (not ((_ is Node!15542) (left!42783 xs!286))))))

(assert (=> d!1626480 (= (isBalanced!4404 (left!42783 xs!286)) e!3155333)))

(declare-fun b!5054427 () Bool)

(declare-fun res!2152226 () Bool)

(assert (=> b!5054427 (=> (not res!2152226) (not e!3155332))))

(assert (=> b!5054427 (= res!2152226 (isBalanced!4404 (left!42783 (left!42783 xs!286))))))

(declare-fun b!5054428 () Bool)

(declare-fun res!2152224 () Bool)

(assert (=> b!5054428 (=> (not res!2152224) (not e!3155332))))

(assert (=> b!5054428 (= res!2152224 (not (isEmpty!31593 (left!42783 (left!42783 xs!286)))))))

(declare-fun b!5054429 () Bool)

(assert (=> b!5054429 (= e!3155333 e!3155332)))

(declare-fun res!2152228 () Bool)

(assert (=> b!5054429 (=> (not res!2152228) (not e!3155332))))

(assert (=> b!5054429 (= res!2152228 (<= (- 1) (- (height!2119 (left!42783 (left!42783 xs!286))) (height!2119 (right!43113 (left!42783 xs!286))))))))

(declare-fun b!5054430 () Bool)

(assert (=> b!5054430 (= e!3155332 (not (isEmpty!31593 (right!43113 (left!42783 xs!286)))))))

(declare-fun b!5054431 () Bool)

(declare-fun res!2152227 () Bool)

(assert (=> b!5054431 (=> (not res!2152227) (not e!3155332))))

(assert (=> b!5054431 (= res!2152227 (<= (- (height!2119 (left!42783 (left!42783 xs!286))) (height!2119 (right!43113 (left!42783 xs!286)))) 1))))

(assert (= (and d!1626480 (not res!2152225)) b!5054429))

(assert (= (and b!5054429 res!2152228) b!5054431))

(assert (= (and b!5054431 res!2152227) b!5054427))

(assert (= (and b!5054427 res!2152226) b!5054426))

(assert (= (and b!5054426 res!2152229) b!5054428))

(assert (= (and b!5054428 res!2152224) b!5054430))

(declare-fun m!6088700 () Bool)

(assert (=> b!5054431 m!6088700))

(declare-fun m!6088702 () Bool)

(assert (=> b!5054431 m!6088702))

(declare-fun m!6088704 () Bool)

(assert (=> b!5054430 m!6088704))

(declare-fun m!6088706 () Bool)

(assert (=> b!5054427 m!6088706))

(declare-fun m!6088708 () Bool)

(assert (=> b!5054428 m!6088708))

(declare-fun m!6088710 () Bool)

(assert (=> b!5054426 m!6088710))

(assert (=> b!5054429 m!6088700))

(assert (=> b!5054429 m!6088702))

(assert (=> b!5054303 d!1626480))

(declare-fun d!1626482 () Bool)

(declare-fun lt!2087297 () Bool)

(declare-fun isEmpty!31594 (List!58536) Bool)

(declare-fun list!18956 (Conc!15542) List!58536)

(assert (=> d!1626482 (= lt!2087297 (isEmpty!31594 (list!18956 (left!42783 (left!42783 (left!42783 ys!41))))))))

(declare-fun size!39038 (Conc!15542) Int)

(assert (=> d!1626482 (= lt!2087297 (= (size!39038 (left!42783 (left!42783 (left!42783 ys!41)))) 0))))

(assert (=> d!1626482 (= (isEmpty!31593 (left!42783 (left!42783 (left!42783 ys!41)))) lt!2087297)))

(declare-fun bs!1189326 () Bool)

(assert (= bs!1189326 d!1626482))

(declare-fun m!6088712 () Bool)

(assert (=> bs!1189326 m!6088712))

(assert (=> bs!1189326 m!6088712))

(declare-fun m!6088714 () Bool)

(assert (=> bs!1189326 m!6088714))

(declare-fun m!6088716 () Bool)

(assert (=> bs!1189326 m!6088716))

(assert (=> b!5054328 d!1626482))

(declare-fun d!1626484 () Bool)

(declare-fun lt!2087298 () Bool)

(assert (=> d!1626484 (= lt!2087298 (isEmpty!31594 (list!18956 (left!42783 xs!286))))))

(assert (=> d!1626484 (= lt!2087298 (= (size!39038 (left!42783 xs!286)) 0))))

(assert (=> d!1626484 (= (isEmpty!31593 (left!42783 xs!286)) lt!2087298)))

(declare-fun bs!1189327 () Bool)

(assert (= bs!1189327 d!1626484))

(declare-fun m!6088718 () Bool)

(assert (=> bs!1189327 m!6088718))

(assert (=> bs!1189327 m!6088718))

(declare-fun m!6088720 () Bool)

(assert (=> bs!1189327 m!6088720))

(declare-fun m!6088722 () Bool)

(assert (=> bs!1189327 m!6088722))

(assert (=> b!5054304 d!1626484))

(declare-fun d!1626486 () Bool)

(declare-fun res!2152234 () Bool)

(declare-fun e!3155336 () Bool)

(assert (=> d!1626486 (=> (not res!2152234) (not e!3155336))))

(declare-fun list!18957 (IArray!31145) List!58536)

(assert (=> d!1626486 (= res!2152234 (<= (size!39036 (list!18957 (xs!18872 (right!43113 xs!286)))) 512))))

(assert (=> d!1626486 (= (inv!77437 (right!43113 xs!286)) e!3155336)))

(declare-fun b!5054436 () Bool)

(declare-fun res!2152235 () Bool)

(assert (=> b!5054436 (=> (not res!2152235) (not e!3155336))))

(assert (=> b!5054436 (= res!2152235 (= (csize!31315 (right!43113 xs!286)) (size!39036 (list!18957 (xs!18872 (right!43113 xs!286))))))))

(declare-fun b!5054437 () Bool)

(assert (=> b!5054437 (= e!3155336 (and (> (csize!31315 (right!43113 xs!286)) 0) (<= (csize!31315 (right!43113 xs!286)) 512)))))

(assert (= (and d!1626486 res!2152234) b!5054436))

(assert (= (and b!5054436 res!2152235) b!5054437))

(declare-fun m!6088724 () Bool)

(assert (=> d!1626486 m!6088724))

(assert (=> d!1626486 m!6088724))

(declare-fun m!6088726 () Bool)

(assert (=> d!1626486 m!6088726))

(assert (=> b!5054436 m!6088724))

(assert (=> b!5054436 m!6088724))

(assert (=> b!5054436 m!6088726))

(assert (=> b!5054265 d!1626486))

(declare-fun d!1626488 () Bool)

(assert (=> d!1626488 (= (inv!77435 (xs!18872 (right!43113 ys!41))) (<= (size!39036 (innerList!15630 (xs!18872 (right!43113 ys!41)))) 2147483647))))

(declare-fun bs!1189328 () Bool)

(assert (= bs!1189328 d!1626488))

(declare-fun m!6088728 () Bool)

(assert (=> bs!1189328 m!6088728))

(assert (=> b!5054374 d!1626488))

(declare-fun b!5054438 () Bool)

(declare-fun res!2152241 () Bool)

(declare-fun e!3155337 () Bool)

(assert (=> b!5054438 (=> (not res!2152241) (not e!3155337))))

(assert (=> b!5054438 (= res!2152241 (isBalanced!4404 (right!43113 (right!43113 (left!42783 (left!42783 ys!41))))))))

(declare-fun d!1626490 () Bool)

(declare-fun res!2152237 () Bool)

(declare-fun e!3155338 () Bool)

(assert (=> d!1626490 (=> res!2152237 e!3155338)))

(assert (=> d!1626490 (= res!2152237 (not ((_ is Node!15542) (right!43113 (left!42783 (left!42783 ys!41))))))))

(assert (=> d!1626490 (= (isBalanced!4404 (right!43113 (left!42783 (left!42783 ys!41)))) e!3155338)))

(declare-fun b!5054439 () Bool)

(declare-fun res!2152238 () Bool)

(assert (=> b!5054439 (=> (not res!2152238) (not e!3155337))))

(assert (=> b!5054439 (= res!2152238 (isBalanced!4404 (left!42783 (right!43113 (left!42783 (left!42783 ys!41))))))))

(declare-fun b!5054440 () Bool)

(declare-fun res!2152236 () Bool)

(assert (=> b!5054440 (=> (not res!2152236) (not e!3155337))))

(assert (=> b!5054440 (= res!2152236 (not (isEmpty!31593 (left!42783 (right!43113 (left!42783 (left!42783 ys!41)))))))))

(declare-fun b!5054441 () Bool)

(assert (=> b!5054441 (= e!3155338 e!3155337)))

(declare-fun res!2152240 () Bool)

(assert (=> b!5054441 (=> (not res!2152240) (not e!3155337))))

(assert (=> b!5054441 (= res!2152240 (<= (- 1) (- (height!2119 (left!42783 (right!43113 (left!42783 (left!42783 ys!41))))) (height!2119 (right!43113 (right!43113 (left!42783 (left!42783 ys!41))))))))))

(declare-fun b!5054442 () Bool)

(assert (=> b!5054442 (= e!3155337 (not (isEmpty!31593 (right!43113 (right!43113 (left!42783 (left!42783 ys!41)))))))))

(declare-fun b!5054443 () Bool)

(declare-fun res!2152239 () Bool)

(assert (=> b!5054443 (=> (not res!2152239) (not e!3155337))))

(assert (=> b!5054443 (= res!2152239 (<= (- (height!2119 (left!42783 (right!43113 (left!42783 (left!42783 ys!41))))) (height!2119 (right!43113 (right!43113 (left!42783 (left!42783 ys!41)))))) 1))))

(assert (= (and d!1626490 (not res!2152237)) b!5054441))

(assert (= (and b!5054441 res!2152240) b!5054443))

(assert (= (and b!5054443 res!2152239) b!5054439))

(assert (= (and b!5054439 res!2152238) b!5054438))

(assert (= (and b!5054438 res!2152241) b!5054440))

(assert (= (and b!5054440 res!2152236) b!5054442))

(declare-fun m!6088730 () Bool)

(assert (=> b!5054443 m!6088730))

(declare-fun m!6088732 () Bool)

(assert (=> b!5054443 m!6088732))

(declare-fun m!6088734 () Bool)

(assert (=> b!5054442 m!6088734))

(declare-fun m!6088736 () Bool)

(assert (=> b!5054439 m!6088736))

(declare-fun m!6088738 () Bool)

(assert (=> b!5054440 m!6088738))

(declare-fun m!6088740 () Bool)

(assert (=> b!5054438 m!6088740))

(assert (=> b!5054441 m!6088730))

(assert (=> b!5054441 m!6088732))

(assert (=> b!5054326 d!1626490))

(declare-fun b!5054444 () Bool)

(declare-fun res!2152247 () Bool)

(declare-fun e!3155339 () Bool)

(assert (=> b!5054444 (=> (not res!2152247) (not e!3155339))))

(assert (=> b!5054444 (= res!2152247 (isBalanced!4404 (right!43113 (right!43113 xs!286))))))

(declare-fun d!1626492 () Bool)

(declare-fun res!2152243 () Bool)

(declare-fun e!3155340 () Bool)

(assert (=> d!1626492 (=> res!2152243 e!3155340)))

(assert (=> d!1626492 (= res!2152243 (not ((_ is Node!15542) (right!43113 xs!286))))))

(assert (=> d!1626492 (= (isBalanced!4404 (right!43113 xs!286)) e!3155340)))

(declare-fun b!5054445 () Bool)

(declare-fun res!2152244 () Bool)

(assert (=> b!5054445 (=> (not res!2152244) (not e!3155339))))

(assert (=> b!5054445 (= res!2152244 (isBalanced!4404 (left!42783 (right!43113 xs!286))))))

(declare-fun b!5054446 () Bool)

(declare-fun res!2152242 () Bool)

(assert (=> b!5054446 (=> (not res!2152242) (not e!3155339))))

(assert (=> b!5054446 (= res!2152242 (not (isEmpty!31593 (left!42783 (right!43113 xs!286)))))))

(declare-fun b!5054447 () Bool)

(assert (=> b!5054447 (= e!3155340 e!3155339)))

(declare-fun res!2152246 () Bool)

(assert (=> b!5054447 (=> (not res!2152246) (not e!3155339))))

(assert (=> b!5054447 (= res!2152246 (<= (- 1) (- (height!2119 (left!42783 (right!43113 xs!286))) (height!2119 (right!43113 (right!43113 xs!286))))))))

(declare-fun b!5054448 () Bool)

(assert (=> b!5054448 (= e!3155339 (not (isEmpty!31593 (right!43113 (right!43113 xs!286)))))))

(declare-fun b!5054449 () Bool)

(declare-fun res!2152245 () Bool)

(assert (=> b!5054449 (=> (not res!2152245) (not e!3155339))))

(assert (=> b!5054449 (= res!2152245 (<= (- (height!2119 (left!42783 (right!43113 xs!286))) (height!2119 (right!43113 (right!43113 xs!286)))) 1))))

(assert (= (and d!1626492 (not res!2152243)) b!5054447))

(assert (= (and b!5054447 res!2152246) b!5054449))

(assert (= (and b!5054449 res!2152245) b!5054445))

(assert (= (and b!5054445 res!2152244) b!5054444))

(assert (= (and b!5054444 res!2152247) b!5054446))

(assert (= (and b!5054446 res!2152242) b!5054448))

(declare-fun m!6088742 () Bool)

(assert (=> b!5054449 m!6088742))

(declare-fun m!6088744 () Bool)

(assert (=> b!5054449 m!6088744))

(declare-fun m!6088746 () Bool)

(assert (=> b!5054448 m!6088746))

(declare-fun m!6088748 () Bool)

(assert (=> b!5054445 m!6088748))

(declare-fun m!6088750 () Bool)

(assert (=> b!5054446 m!6088750))

(declare-fun m!6088752 () Bool)

(assert (=> b!5054444 m!6088752))

(assert (=> b!5054447 m!6088742))

(assert (=> b!5054447 m!6088744))

(assert (=> b!5054302 d!1626492))

(declare-fun d!1626494 () Bool)

(declare-fun res!2152254 () Bool)

(declare-fun e!3155343 () Bool)

(assert (=> d!1626494 (=> (not res!2152254) (not e!3155343))))

(assert (=> d!1626494 (= res!2152254 (= (csize!31314 (right!43113 xs!286)) (+ (size!39038 (left!42783 (right!43113 xs!286))) (size!39038 (right!43113 (right!43113 xs!286))))))))

(assert (=> d!1626494 (= (inv!77436 (right!43113 xs!286)) e!3155343)))

(declare-fun b!5054456 () Bool)

(declare-fun res!2152255 () Bool)

(assert (=> b!5054456 (=> (not res!2152255) (not e!3155343))))

(assert (=> b!5054456 (= res!2152255 (and (not (= (left!42783 (right!43113 xs!286)) Empty!15542)) (not (= (right!43113 (right!43113 xs!286)) Empty!15542))))))

(declare-fun b!5054457 () Bool)

(declare-fun res!2152256 () Bool)

(assert (=> b!5054457 (=> (not res!2152256) (not e!3155343))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5054457 (= res!2152256 (= (cheight!15753 (right!43113 xs!286)) (+ (max!0 (height!2119 (left!42783 (right!43113 xs!286))) (height!2119 (right!43113 (right!43113 xs!286)))) 1)))))

(declare-fun b!5054458 () Bool)

(assert (=> b!5054458 (= e!3155343 (<= 0 (cheight!15753 (right!43113 xs!286))))))

(assert (= (and d!1626494 res!2152254) b!5054456))

(assert (= (and b!5054456 res!2152255) b!5054457))

(assert (= (and b!5054457 res!2152256) b!5054458))

(declare-fun m!6088754 () Bool)

(assert (=> d!1626494 m!6088754))

(declare-fun m!6088756 () Bool)

(assert (=> d!1626494 m!6088756))

(assert (=> b!5054457 m!6088742))

(assert (=> b!5054457 m!6088744))

(assert (=> b!5054457 m!6088742))

(assert (=> b!5054457 m!6088744))

(declare-fun m!6088758 () Bool)

(assert (=> b!5054457 m!6088758))

(assert (=> b!5054263 d!1626494))

(declare-fun d!1626496 () Bool)

(declare-fun c!867219 () Bool)

(assert (=> d!1626496 (= c!867219 ((_ is Node!15542) (left!42783 (right!43113 ys!41))))))

(declare-fun e!3155344 () Bool)

(assert (=> d!1626496 (= (inv!77434 (left!42783 (right!43113 ys!41))) e!3155344)))

(declare-fun b!5054459 () Bool)

(assert (=> b!5054459 (= e!3155344 (inv!77436 (left!42783 (right!43113 ys!41))))))

(declare-fun b!5054460 () Bool)

(declare-fun e!3155345 () Bool)

(assert (=> b!5054460 (= e!3155344 e!3155345)))

(declare-fun res!2152257 () Bool)

(assert (=> b!5054460 (= res!2152257 (not ((_ is Leaf!25818) (left!42783 (right!43113 ys!41)))))))

(assert (=> b!5054460 (=> res!2152257 e!3155345)))

(declare-fun b!5054461 () Bool)

(assert (=> b!5054461 (= e!3155345 (inv!77437 (left!42783 (right!43113 ys!41))))))

(assert (= (and d!1626496 c!867219) b!5054459))

(assert (= (and d!1626496 (not c!867219)) b!5054460))

(assert (= (and b!5054460 (not res!2152257)) b!5054461))

(declare-fun m!6088760 () Bool)

(assert (=> b!5054459 m!6088760))

(declare-fun m!6088762 () Bool)

(assert (=> b!5054461 m!6088762))

(assert (=> b!5054373 d!1626496))

(declare-fun d!1626498 () Bool)

(declare-fun c!867220 () Bool)

(assert (=> d!1626498 (= c!867220 ((_ is Node!15542) (right!43113 (right!43113 ys!41))))))

(declare-fun e!3155346 () Bool)

(assert (=> d!1626498 (= (inv!77434 (right!43113 (right!43113 ys!41))) e!3155346)))

(declare-fun b!5054462 () Bool)

(assert (=> b!5054462 (= e!3155346 (inv!77436 (right!43113 (right!43113 ys!41))))))

(declare-fun b!5054463 () Bool)

(declare-fun e!3155347 () Bool)

(assert (=> b!5054463 (= e!3155346 e!3155347)))

(declare-fun res!2152258 () Bool)

(assert (=> b!5054463 (= res!2152258 (not ((_ is Leaf!25818) (right!43113 (right!43113 ys!41)))))))

(assert (=> b!5054463 (=> res!2152258 e!3155347)))

(declare-fun b!5054464 () Bool)

(assert (=> b!5054464 (= e!3155347 (inv!77437 (right!43113 (right!43113 ys!41))))))

(assert (= (and d!1626498 c!867220) b!5054462))

(assert (= (and d!1626498 (not c!867220)) b!5054463))

(assert (= (and b!5054463 (not res!2152258)) b!5054464))

(declare-fun m!6088764 () Bool)

(assert (=> b!5054462 m!6088764))

(declare-fun m!6088766 () Bool)

(assert (=> b!5054464 m!6088766))

(assert (=> b!5054373 d!1626498))

(declare-fun d!1626500 () Bool)

(declare-fun c!867221 () Bool)

(assert (=> d!1626500 (= c!867221 ((_ is Node!15542) (left!42783 (right!43113 xs!286))))))

(declare-fun e!3155348 () Bool)

(assert (=> d!1626500 (= (inv!77434 (left!42783 (right!43113 xs!286))) e!3155348)))

(declare-fun b!5054465 () Bool)

(assert (=> b!5054465 (= e!3155348 (inv!77436 (left!42783 (right!43113 xs!286))))))

(declare-fun b!5054466 () Bool)

(declare-fun e!3155349 () Bool)

(assert (=> b!5054466 (= e!3155348 e!3155349)))

(declare-fun res!2152259 () Bool)

(assert (=> b!5054466 (= res!2152259 (not ((_ is Leaf!25818) (left!42783 (right!43113 xs!286)))))))

(assert (=> b!5054466 (=> res!2152259 e!3155349)))

(declare-fun b!5054467 () Bool)

(assert (=> b!5054467 (= e!3155349 (inv!77437 (left!42783 (right!43113 xs!286))))))

(assert (= (and d!1626500 c!867221) b!5054465))

(assert (= (and d!1626500 (not c!867221)) b!5054466))

(assert (= (and b!5054466 (not res!2152259)) b!5054467))

(declare-fun m!6088768 () Bool)

(assert (=> b!5054465 m!6088768))

(declare-fun m!6088770 () Bool)

(assert (=> b!5054467 m!6088770))

(assert (=> b!5054364 d!1626500))

(declare-fun d!1626502 () Bool)

(declare-fun c!867222 () Bool)

(assert (=> d!1626502 (= c!867222 ((_ is Node!15542) (right!43113 (right!43113 xs!286))))))

(declare-fun e!3155350 () Bool)

(assert (=> d!1626502 (= (inv!77434 (right!43113 (right!43113 xs!286))) e!3155350)))

(declare-fun b!5054468 () Bool)

(assert (=> b!5054468 (= e!3155350 (inv!77436 (right!43113 (right!43113 xs!286))))))

(declare-fun b!5054469 () Bool)

(declare-fun e!3155351 () Bool)

(assert (=> b!5054469 (= e!3155350 e!3155351)))

(declare-fun res!2152260 () Bool)

(assert (=> b!5054469 (= res!2152260 (not ((_ is Leaf!25818) (right!43113 (right!43113 xs!286)))))))

(assert (=> b!5054469 (=> res!2152260 e!3155351)))

(declare-fun b!5054470 () Bool)

(assert (=> b!5054470 (= e!3155351 (inv!77437 (right!43113 (right!43113 xs!286))))))

(assert (= (and d!1626502 c!867222) b!5054468))

(assert (= (and d!1626502 (not c!867222)) b!5054469))

(assert (= (and b!5054469 (not res!2152260)) b!5054470))

(declare-fun m!6088772 () Bool)

(assert (=> b!5054468 m!6088772))

(declare-fun m!6088774 () Bool)

(assert (=> b!5054470 m!6088774))

(assert (=> b!5054364 d!1626502))

(declare-fun d!1626504 () Bool)

(assert (=> d!1626504 (= (inv!77435 (xs!18872 (right!43113 xs!286))) (<= (size!39036 (innerList!15630 (xs!18872 (right!43113 xs!286)))) 2147483647))))

(declare-fun bs!1189329 () Bool)

(assert (= bs!1189329 d!1626504))

(declare-fun m!6088776 () Bool)

(assert (=> bs!1189329 m!6088776))

(assert (=> b!5054365 d!1626504))

(declare-fun d!1626506 () Bool)

(declare-fun res!2152261 () Bool)

(declare-fun e!3155352 () Bool)

(assert (=> d!1626506 (=> (not res!2152261) (not e!3155352))))

(assert (=> d!1626506 (= res!2152261 (<= (size!39036 (list!18957 (xs!18872 (left!42783 ys!41)))) 512))))

(assert (=> d!1626506 (= (inv!77437 (left!42783 ys!41)) e!3155352)))

(declare-fun b!5054471 () Bool)

(declare-fun res!2152262 () Bool)

(assert (=> b!5054471 (=> (not res!2152262) (not e!3155352))))

(assert (=> b!5054471 (= res!2152262 (= (csize!31315 (left!42783 ys!41)) (size!39036 (list!18957 (xs!18872 (left!42783 ys!41))))))))

(declare-fun b!5054472 () Bool)

(assert (=> b!5054472 (= e!3155352 (and (> (csize!31315 (left!42783 ys!41)) 0) (<= (csize!31315 (left!42783 ys!41)) 512)))))

(assert (= (and d!1626506 res!2152261) b!5054471))

(assert (= (and b!5054471 res!2152262) b!5054472))

(declare-fun m!6088778 () Bool)

(assert (=> d!1626506 m!6088778))

(assert (=> d!1626506 m!6088778))

(declare-fun m!6088780 () Bool)

(assert (=> d!1626506 m!6088780))

(assert (=> b!5054471 m!6088778))

(assert (=> b!5054471 m!6088778))

(assert (=> b!5054471 m!6088780))

(assert (=> b!5054268 d!1626506))

(assert (=> b!5054337 d!1626452))

(assert (=> b!5054337 d!1626450))

(declare-fun d!1626508 () Bool)

(declare-fun lt!2087299 () Int)

(assert (=> d!1626508 (>= lt!2087299 0)))

(declare-fun e!3155353 () Int)

(assert (=> d!1626508 (= lt!2087299 e!3155353)))

(declare-fun c!867223 () Bool)

(assert (=> d!1626508 (= c!867223 ((_ is Nil!58412) (innerList!15630 (xs!18872 xs!286))))))

(assert (=> d!1626508 (= (size!39036 (innerList!15630 (xs!18872 xs!286))) lt!2087299)))

(declare-fun b!5054473 () Bool)

(assert (=> b!5054473 (= e!3155353 0)))

(declare-fun b!5054474 () Bool)

(assert (=> b!5054474 (= e!3155353 (+ 1 (size!39036 (t!371189 (innerList!15630 (xs!18872 xs!286))))))))

(assert (= (and d!1626508 c!867223) b!5054473))

(assert (= (and d!1626508 (not c!867223)) b!5054474))

(declare-fun m!6088782 () Bool)

(assert (=> b!5054474 m!6088782))

(assert (=> d!1626440 d!1626508))

(declare-fun d!1626510 () Bool)

(declare-fun res!2152263 () Bool)

(declare-fun e!3155354 () Bool)

(assert (=> d!1626510 (=> (not res!2152263) (not e!3155354))))

(assert (=> d!1626510 (= res!2152263 (= (csize!31314 (left!42783 ys!41)) (+ (size!39038 (left!42783 (left!42783 ys!41))) (size!39038 (right!43113 (left!42783 ys!41))))))))

(assert (=> d!1626510 (= (inv!77436 (left!42783 ys!41)) e!3155354)))

(declare-fun b!5054475 () Bool)

(declare-fun res!2152264 () Bool)

(assert (=> b!5054475 (=> (not res!2152264) (not e!3155354))))

(assert (=> b!5054475 (= res!2152264 (and (not (= (left!42783 (left!42783 ys!41)) Empty!15542)) (not (= (right!43113 (left!42783 ys!41)) Empty!15542))))))

(declare-fun b!5054476 () Bool)

(declare-fun res!2152265 () Bool)

(assert (=> b!5054476 (=> (not res!2152265) (not e!3155354))))

(assert (=> b!5054476 (= res!2152265 (= (cheight!15753 (left!42783 ys!41)) (+ (max!0 (height!2119 (left!42783 (left!42783 ys!41))) (height!2119 (right!43113 (left!42783 ys!41)))) 1)))))

(declare-fun b!5054477 () Bool)

(assert (=> b!5054477 (= e!3155354 (<= 0 (cheight!15753 (left!42783 ys!41))))))

(assert (= (and d!1626510 res!2152263) b!5054475))

(assert (= (and b!5054475 res!2152264) b!5054476))

(assert (= (and b!5054476 res!2152265) b!5054477))

(declare-fun m!6088784 () Bool)

(assert (=> d!1626510 m!6088784))

(declare-fun m!6088786 () Bool)

(assert (=> d!1626510 m!6088786))

(declare-fun m!6088788 () Bool)

(assert (=> b!5054476 m!6088788))

(declare-fun m!6088790 () Bool)

(assert (=> b!5054476 m!6088790))

(assert (=> b!5054476 m!6088788))

(assert (=> b!5054476 m!6088790))

(declare-fun m!6088792 () Bool)

(assert (=> b!5054476 m!6088792))

(assert (=> b!5054266 d!1626510))

(declare-fun d!1626512 () Bool)

(declare-fun lt!2087300 () Bool)

(assert (=> d!1626512 (= lt!2087300 (isEmpty!31594 (list!18956 (left!42783 ys!41))))))

(assert (=> d!1626512 (= lt!2087300 (= (size!39038 (left!42783 ys!41)) 0))))

(assert (=> d!1626512 (= (isEmpty!31593 (left!42783 ys!41)) lt!2087300)))

(declare-fun bs!1189330 () Bool)

(assert (= bs!1189330 d!1626512))

(declare-fun m!6088794 () Bool)

(assert (=> bs!1189330 m!6088794))

(assert (=> bs!1189330 m!6088794))

(declare-fun m!6088796 () Bool)

(assert (=> bs!1189330 m!6088796))

(declare-fun m!6088798 () Bool)

(assert (=> bs!1189330 m!6088798))

(assert (=> b!5054334 d!1626512))

(declare-fun d!1626514 () Bool)

(declare-fun c!867224 () Bool)

(assert (=> d!1626514 (= c!867224 ((_ is Node!15542) (left!42783 (left!42783 xs!286))))))

(declare-fun e!3155355 () Bool)

(assert (=> d!1626514 (= (inv!77434 (left!42783 (left!42783 xs!286))) e!3155355)))

(declare-fun b!5054478 () Bool)

(assert (=> b!5054478 (= e!3155355 (inv!77436 (left!42783 (left!42783 xs!286))))))

(declare-fun b!5054479 () Bool)

(declare-fun e!3155356 () Bool)

(assert (=> b!5054479 (= e!3155355 e!3155356)))

(declare-fun res!2152266 () Bool)

(assert (=> b!5054479 (= res!2152266 (not ((_ is Leaf!25818) (left!42783 (left!42783 xs!286)))))))

(assert (=> b!5054479 (=> res!2152266 e!3155356)))

(declare-fun b!5054480 () Bool)

(assert (=> b!5054480 (= e!3155356 (inv!77437 (left!42783 (left!42783 xs!286))))))

(assert (= (and d!1626514 c!867224) b!5054478))

(assert (= (and d!1626514 (not c!867224)) b!5054479))

(assert (= (and b!5054479 (not res!2152266)) b!5054480))

(declare-fun m!6088800 () Bool)

(assert (=> b!5054478 m!6088800))

(declare-fun m!6088802 () Bool)

(assert (=> b!5054480 m!6088802))

(assert (=> b!5054358 d!1626514))

(declare-fun d!1626516 () Bool)

(declare-fun c!867225 () Bool)

(assert (=> d!1626516 (= c!867225 ((_ is Node!15542) (right!43113 (left!42783 xs!286))))))

(declare-fun e!3155357 () Bool)

(assert (=> d!1626516 (= (inv!77434 (right!43113 (left!42783 xs!286))) e!3155357)))

(declare-fun b!5054481 () Bool)

(assert (=> b!5054481 (= e!3155357 (inv!77436 (right!43113 (left!42783 xs!286))))))

(declare-fun b!5054482 () Bool)

(declare-fun e!3155358 () Bool)

(assert (=> b!5054482 (= e!3155357 e!3155358)))

(declare-fun res!2152267 () Bool)

(assert (=> b!5054482 (= res!2152267 (not ((_ is Leaf!25818) (right!43113 (left!42783 xs!286)))))))

(assert (=> b!5054482 (=> res!2152267 e!3155358)))

(declare-fun b!5054483 () Bool)

(assert (=> b!5054483 (= e!3155358 (inv!77437 (right!43113 (left!42783 xs!286))))))

(assert (= (and d!1626516 c!867225) b!5054481))

(assert (= (and d!1626516 (not c!867225)) b!5054482))

(assert (= (and b!5054482 (not res!2152267)) b!5054483))

(declare-fun m!6088804 () Bool)

(assert (=> b!5054481 m!6088804))

(declare-fun m!6088806 () Bool)

(assert (=> b!5054483 m!6088806))

(assert (=> b!5054358 d!1626516))

(declare-fun d!1626518 () Bool)

(declare-fun res!2152268 () Bool)

(declare-fun e!3155359 () Bool)

(assert (=> d!1626518 (=> (not res!2152268) (not e!3155359))))

(assert (=> d!1626518 (= res!2152268 (= (csize!31314 (left!42783 xs!286)) (+ (size!39038 (left!42783 (left!42783 xs!286))) (size!39038 (right!43113 (left!42783 xs!286))))))))

(assert (=> d!1626518 (= (inv!77436 (left!42783 xs!286)) e!3155359)))

(declare-fun b!5054484 () Bool)

(declare-fun res!2152269 () Bool)

(assert (=> b!5054484 (=> (not res!2152269) (not e!3155359))))

(assert (=> b!5054484 (= res!2152269 (and (not (= (left!42783 (left!42783 xs!286)) Empty!15542)) (not (= (right!43113 (left!42783 xs!286)) Empty!15542))))))

(declare-fun b!5054485 () Bool)

(declare-fun res!2152270 () Bool)

(assert (=> b!5054485 (=> (not res!2152270) (not e!3155359))))

(assert (=> b!5054485 (= res!2152270 (= (cheight!15753 (left!42783 xs!286)) (+ (max!0 (height!2119 (left!42783 (left!42783 xs!286))) (height!2119 (right!43113 (left!42783 xs!286)))) 1)))))

(declare-fun b!5054486 () Bool)

(assert (=> b!5054486 (= e!3155359 (<= 0 (cheight!15753 (left!42783 xs!286))))))

(assert (= (and d!1626518 res!2152268) b!5054484))

(assert (= (and b!5054484 res!2152269) b!5054485))

(assert (= (and b!5054485 res!2152270) b!5054486))

(declare-fun m!6088808 () Bool)

(assert (=> d!1626518 m!6088808))

(declare-fun m!6088810 () Bool)

(assert (=> d!1626518 m!6088810))

(assert (=> b!5054485 m!6088700))

(assert (=> b!5054485 m!6088702))

(assert (=> b!5054485 m!6088700))

(assert (=> b!5054485 m!6088702))

(declare-fun m!6088812 () Bool)

(assert (=> b!5054485 m!6088812))

(assert (=> b!5054260 d!1626518))

(declare-fun d!1626520 () Bool)

(assert (=> d!1626520 (= (inv!77435 (xs!18872 (left!42783 xs!286))) (<= (size!39036 (innerList!15630 (xs!18872 (left!42783 xs!286)))) 2147483647))))

(declare-fun bs!1189331 () Bool)

(assert (= bs!1189331 d!1626520))

(declare-fun m!6088814 () Bool)

(assert (=> bs!1189331 m!6088814))

(assert (=> b!5054359 d!1626520))

(assert (=> b!5054335 d!1626452))

(assert (=> b!5054335 d!1626450))

(declare-fun d!1626522 () Bool)

(declare-fun lt!2087301 () Bool)

(assert (=> d!1626522 (= lt!2087301 (isEmpty!31594 (list!18956 (right!43113 ys!41))))))

(assert (=> d!1626522 (= lt!2087301 (= (size!39038 (right!43113 ys!41)) 0))))

(assert (=> d!1626522 (= (isEmpty!31593 (right!43113 ys!41)) lt!2087301)))

(declare-fun bs!1189332 () Bool)

(assert (= bs!1189332 d!1626522))

(declare-fun m!6088816 () Bool)

(assert (=> bs!1189332 m!6088816))

(assert (=> bs!1189332 m!6088816))

(declare-fun m!6088818 () Bool)

(assert (=> bs!1189332 m!6088818))

(declare-fun m!6088820 () Bool)

(assert (=> bs!1189332 m!6088820))

(assert (=> b!5054336 d!1626522))

(declare-fun d!1626524 () Bool)

(declare-fun res!2152271 () Bool)

(declare-fun e!3155360 () Bool)

(assert (=> d!1626524 (=> (not res!2152271) (not e!3155360))))

(assert (=> d!1626524 (= res!2152271 (<= (size!39036 (list!18957 (xs!18872 (left!42783 xs!286)))) 512))))

(assert (=> d!1626524 (= (inv!77437 (left!42783 xs!286)) e!3155360)))

(declare-fun b!5054487 () Bool)

(declare-fun res!2152272 () Bool)

(assert (=> b!5054487 (=> (not res!2152272) (not e!3155360))))

(assert (=> b!5054487 (= res!2152272 (= (csize!31315 (left!42783 xs!286)) (size!39036 (list!18957 (xs!18872 (left!42783 xs!286))))))))

(declare-fun b!5054488 () Bool)

(assert (=> b!5054488 (= e!3155360 (and (> (csize!31315 (left!42783 xs!286)) 0) (<= (csize!31315 (left!42783 xs!286)) 512)))))

(assert (= (and d!1626524 res!2152271) b!5054487))

(assert (= (and b!5054487 res!2152272) b!5054488))

(declare-fun m!6088822 () Bool)

(assert (=> d!1626524 m!6088822))

(assert (=> d!1626524 m!6088822))

(declare-fun m!6088824 () Bool)

(assert (=> d!1626524 m!6088824))

(assert (=> b!5054487 m!6088822))

(assert (=> b!5054487 m!6088822))

(assert (=> b!5054487 m!6088824))

(assert (=> b!5054262 d!1626524))

(declare-fun d!1626526 () Bool)

(declare-fun res!2152273 () Bool)

(declare-fun e!3155361 () Bool)

(assert (=> d!1626526 (=> (not res!2152273) (not e!3155361))))

(assert (=> d!1626526 (= res!2152273 (<= (size!39036 (list!18957 (xs!18872 ys!41))) 512))))

(assert (=> d!1626526 (= (inv!77437 ys!41) e!3155361)))

(declare-fun b!5054489 () Bool)

(declare-fun res!2152274 () Bool)

(assert (=> b!5054489 (=> (not res!2152274) (not e!3155361))))

(assert (=> b!5054489 (= res!2152274 (= (csize!31315 ys!41) (size!39036 (list!18957 (xs!18872 ys!41)))))))

(declare-fun b!5054490 () Bool)

(assert (=> b!5054490 (= e!3155361 (and (> (csize!31315 ys!41) 0) (<= (csize!31315 ys!41) 512)))))

(assert (= (and d!1626526 res!2152273) b!5054489))

(assert (= (and b!5054489 res!2152274) b!5054490))

(declare-fun m!6088826 () Bool)

(assert (=> d!1626526 m!6088826))

(assert (=> d!1626526 m!6088826))

(declare-fun m!6088828 () Bool)

(assert (=> d!1626526 m!6088828))

(assert (=> b!5054489 m!6088826))

(assert (=> b!5054489 m!6088826))

(assert (=> b!5054489 m!6088828))

(assert (=> b!5054325 d!1626526))

(assert (=> b!5054244 d!1626416))

(assert (=> b!5054244 d!1626418))

(declare-fun b!5054491 () Bool)

(declare-fun res!2152280 () Bool)

(declare-fun e!3155362 () Bool)

(assert (=> b!5054491 (=> (not res!2152280) (not e!3155362))))

(assert (=> b!5054491 (= res!2152280 (isBalanced!4404 (right!43113 (right!43113 ys!41))))))

(declare-fun d!1626528 () Bool)

(declare-fun res!2152276 () Bool)

(declare-fun e!3155363 () Bool)

(assert (=> d!1626528 (=> res!2152276 e!3155363)))

(assert (=> d!1626528 (= res!2152276 (not ((_ is Node!15542) (right!43113 ys!41))))))

(assert (=> d!1626528 (= (isBalanced!4404 (right!43113 ys!41)) e!3155363)))

(declare-fun b!5054492 () Bool)

(declare-fun res!2152277 () Bool)

(assert (=> b!5054492 (=> (not res!2152277) (not e!3155362))))

(assert (=> b!5054492 (= res!2152277 (isBalanced!4404 (left!42783 (right!43113 ys!41))))))

(declare-fun b!5054493 () Bool)

(declare-fun res!2152275 () Bool)

(assert (=> b!5054493 (=> (not res!2152275) (not e!3155362))))

(assert (=> b!5054493 (= res!2152275 (not (isEmpty!31593 (left!42783 (right!43113 ys!41)))))))

(declare-fun b!5054494 () Bool)

(assert (=> b!5054494 (= e!3155363 e!3155362)))

(declare-fun res!2152279 () Bool)

(assert (=> b!5054494 (=> (not res!2152279) (not e!3155362))))

(assert (=> b!5054494 (= res!2152279 (<= (- 1) (- (height!2119 (left!42783 (right!43113 ys!41))) (height!2119 (right!43113 (right!43113 ys!41))))))))

(declare-fun b!5054495 () Bool)

(assert (=> b!5054495 (= e!3155362 (not (isEmpty!31593 (right!43113 (right!43113 ys!41)))))))

(declare-fun b!5054496 () Bool)

(declare-fun res!2152278 () Bool)

(assert (=> b!5054496 (=> (not res!2152278) (not e!3155362))))

(assert (=> b!5054496 (= res!2152278 (<= (- (height!2119 (left!42783 (right!43113 ys!41))) (height!2119 (right!43113 (right!43113 ys!41)))) 1))))

(assert (= (and d!1626528 (not res!2152276)) b!5054494))

(assert (= (and b!5054494 res!2152279) b!5054496))

(assert (= (and b!5054496 res!2152278) b!5054492))

(assert (= (and b!5054492 res!2152277) b!5054491))

(assert (= (and b!5054491 res!2152280) b!5054493))

(assert (= (and b!5054493 res!2152275) b!5054495))

(declare-fun m!6088830 () Bool)

(assert (=> b!5054496 m!6088830))

(declare-fun m!6088832 () Bool)

(assert (=> b!5054496 m!6088832))

(declare-fun m!6088834 () Bool)

(assert (=> b!5054495 m!6088834))

(declare-fun m!6088836 () Bool)

(assert (=> b!5054492 m!6088836))

(declare-fun m!6088838 () Bool)

(assert (=> b!5054493 m!6088838))

(declare-fun m!6088840 () Bool)

(assert (=> b!5054491 m!6088840))

(assert (=> b!5054494 m!6088830))

(assert (=> b!5054494 m!6088832))

(assert (=> b!5054332 d!1626528))

(declare-fun d!1626530 () Bool)

(declare-fun res!2152281 () Bool)

(declare-fun e!3155364 () Bool)

(assert (=> d!1626530 (=> (not res!2152281) (not e!3155364))))

(assert (=> d!1626530 (= res!2152281 (<= (size!39036 (list!18957 (xs!18872 (right!43113 ys!41)))) 512))))

(assert (=> d!1626530 (= (inv!77437 (right!43113 ys!41)) e!3155364)))

(declare-fun b!5054497 () Bool)

(declare-fun res!2152282 () Bool)

(assert (=> b!5054497 (=> (not res!2152282) (not e!3155364))))

(assert (=> b!5054497 (= res!2152282 (= (csize!31315 (right!43113 ys!41)) (size!39036 (list!18957 (xs!18872 (right!43113 ys!41))))))))

(declare-fun b!5054498 () Bool)

(assert (=> b!5054498 (= e!3155364 (and (> (csize!31315 (right!43113 ys!41)) 0) (<= (csize!31315 (right!43113 ys!41)) 512)))))

(assert (= (and d!1626530 res!2152281) b!5054497))

(assert (= (and b!5054497 res!2152282) b!5054498))

(declare-fun m!6088842 () Bool)

(assert (=> d!1626530 m!6088842))

(assert (=> d!1626530 m!6088842))

(declare-fun m!6088844 () Bool)

(assert (=> d!1626530 m!6088844))

(assert (=> b!5054497 m!6088842))

(assert (=> b!5054497 m!6088842))

(assert (=> b!5054497 m!6088844))

(assert (=> b!5054271 d!1626530))

(assert (=> b!5054245 d!1626420))

(assert (=> b!5054245 d!1626422))

(declare-fun d!1626532 () Bool)

(declare-fun res!2152283 () Bool)

(declare-fun e!3155365 () Bool)

(assert (=> d!1626532 (=> (not res!2152283) (not e!3155365))))

(assert (=> d!1626532 (= res!2152283 (<= (size!39036 (list!18957 (xs!18872 xs!286))) 512))))

(assert (=> d!1626532 (= (inv!77437 xs!286) e!3155365)))

(declare-fun b!5054499 () Bool)

(declare-fun res!2152284 () Bool)

(assert (=> b!5054499 (=> (not res!2152284) (not e!3155365))))

(assert (=> b!5054499 (= res!2152284 (= (csize!31315 xs!286) (size!39036 (list!18957 (xs!18872 xs!286)))))))

(declare-fun b!5054500 () Bool)

(assert (=> b!5054500 (= e!3155365 (and (> (csize!31315 xs!286) 0) (<= (csize!31315 xs!286) 512)))))

(assert (= (and d!1626532 res!2152283) b!5054499))

(assert (= (and b!5054499 res!2152284) b!5054500))

(declare-fun m!6088846 () Bool)

(assert (=> d!1626532 m!6088846))

(assert (=> d!1626532 m!6088846))

(declare-fun m!6088848 () Bool)

(assert (=> d!1626532 m!6088848))

(assert (=> b!5054499 m!6088846))

(assert (=> b!5054499 m!6088846))

(assert (=> b!5054499 m!6088848))

(assert (=> b!5054316 d!1626532))

(declare-fun b!5054501 () Bool)

(declare-fun res!2152290 () Bool)

(declare-fun e!3155366 () Bool)

(assert (=> b!5054501 (=> (not res!2152290) (not e!3155366))))

(assert (=> b!5054501 (= res!2152290 (isBalanced!4404 (right!43113 (left!42783 ys!41))))))

(declare-fun d!1626534 () Bool)

(declare-fun res!2152286 () Bool)

(declare-fun e!3155367 () Bool)

(assert (=> d!1626534 (=> res!2152286 e!3155367)))

(assert (=> d!1626534 (= res!2152286 (not ((_ is Node!15542) (left!42783 ys!41))))))

(assert (=> d!1626534 (= (isBalanced!4404 (left!42783 ys!41)) e!3155367)))

(declare-fun b!5054502 () Bool)

(declare-fun res!2152287 () Bool)

(assert (=> b!5054502 (=> (not res!2152287) (not e!3155366))))

(assert (=> b!5054502 (= res!2152287 (isBalanced!4404 (left!42783 (left!42783 ys!41))))))

(declare-fun b!5054503 () Bool)

(declare-fun res!2152285 () Bool)

(assert (=> b!5054503 (=> (not res!2152285) (not e!3155366))))

(assert (=> b!5054503 (= res!2152285 (not (isEmpty!31593 (left!42783 (left!42783 ys!41)))))))

(declare-fun b!5054504 () Bool)

(assert (=> b!5054504 (= e!3155367 e!3155366)))

(declare-fun res!2152289 () Bool)

(assert (=> b!5054504 (=> (not res!2152289) (not e!3155366))))

(assert (=> b!5054504 (= res!2152289 (<= (- 1) (- (height!2119 (left!42783 (left!42783 ys!41))) (height!2119 (right!43113 (left!42783 ys!41))))))))

(declare-fun b!5054505 () Bool)

(assert (=> b!5054505 (= e!3155366 (not (isEmpty!31593 (right!43113 (left!42783 ys!41)))))))

(declare-fun b!5054506 () Bool)

(declare-fun res!2152288 () Bool)

(assert (=> b!5054506 (=> (not res!2152288) (not e!3155366))))

(assert (=> b!5054506 (= res!2152288 (<= (- (height!2119 (left!42783 (left!42783 ys!41))) (height!2119 (right!43113 (left!42783 ys!41)))) 1))))

(assert (= (and d!1626534 (not res!2152286)) b!5054504))

(assert (= (and b!5054504 res!2152289) b!5054506))

(assert (= (and b!5054506 res!2152288) b!5054502))

(assert (= (and b!5054502 res!2152287) b!5054501))

(assert (= (and b!5054501 res!2152290) b!5054503))

(assert (= (and b!5054503 res!2152285) b!5054505))

(assert (=> b!5054506 m!6088788))

(assert (=> b!5054506 m!6088790))

(declare-fun m!6088850 () Bool)

(assert (=> b!5054505 m!6088850))

(assert (=> b!5054502 m!6088506))

(declare-fun m!6088852 () Bool)

(assert (=> b!5054503 m!6088852))

(declare-fun m!6088854 () Bool)

(assert (=> b!5054501 m!6088854))

(assert (=> b!5054504 m!6088788))

(assert (=> b!5054504 m!6088790))

(assert (=> b!5054333 d!1626534))

(declare-fun d!1626536 () Bool)

(assert (=> d!1626536 (= (height!2119 (left!42783 (left!42783 (left!42783 ys!41)))) (ite ((_ is Empty!15542) (left!42783 (left!42783 (left!42783 ys!41)))) 0 (ite ((_ is Leaf!25818) (left!42783 (left!42783 (left!42783 ys!41)))) 1 (cheight!15753 (left!42783 (left!42783 (left!42783 ys!41)))))))))

(assert (=> b!5054329 d!1626536))

(declare-fun d!1626538 () Bool)

(assert (=> d!1626538 (= (height!2119 (right!43113 (left!42783 (left!42783 ys!41)))) (ite ((_ is Empty!15542) (right!43113 (left!42783 (left!42783 ys!41)))) 0 (ite ((_ is Leaf!25818) (right!43113 (left!42783 (left!42783 ys!41)))) 1 (cheight!15753 (right!43113 (left!42783 (left!42783 ys!41)))))))))

(assert (=> b!5054329 d!1626538))

(declare-fun d!1626540 () Bool)

(assert (=> d!1626540 (= (height!2119 (left!42783 xs!286)) (ite ((_ is Empty!15542) (left!42783 xs!286)) 0 (ite ((_ is Leaf!25818) (left!42783 xs!286)) 1 (cheight!15753 (left!42783 xs!286)))))))

(assert (=> b!5054305 d!1626540))

(declare-fun d!1626542 () Bool)

(assert (=> d!1626542 (= (height!2119 (right!43113 xs!286)) (ite ((_ is Empty!15542) (right!43113 xs!286)) 0 (ite ((_ is Leaf!25818) (right!43113 xs!286)) 1 (cheight!15753 (right!43113 xs!286)))))))

(assert (=> b!5054305 d!1626542))

(declare-fun d!1626544 () Bool)

(declare-fun lt!2087302 () Bool)

(assert (=> d!1626544 (= lt!2087302 (isEmpty!31594 (list!18956 (right!43113 (left!42783 (left!42783 ys!41))))))))

(assert (=> d!1626544 (= lt!2087302 (= (size!39038 (right!43113 (left!42783 (left!42783 ys!41)))) 0))))

(assert (=> d!1626544 (= (isEmpty!31593 (right!43113 (left!42783 (left!42783 ys!41)))) lt!2087302)))

(declare-fun bs!1189333 () Bool)

(assert (= bs!1189333 d!1626544))

(declare-fun m!6088856 () Bool)

(assert (=> bs!1189333 m!6088856))

(assert (=> bs!1189333 m!6088856))

(declare-fun m!6088858 () Bool)

(assert (=> bs!1189333 m!6088858))

(declare-fun m!6088860 () Bool)

(assert (=> bs!1189333 m!6088860))

(assert (=> b!5054330 d!1626544))

(declare-fun d!1626546 () Bool)

(declare-fun lt!2087303 () Bool)

(assert (=> d!1626546 (= lt!2087303 (isEmpty!31594 (list!18956 (right!43113 xs!286))))))

(assert (=> d!1626546 (= lt!2087303 (= (size!39038 (right!43113 xs!286)) 0))))

(assert (=> d!1626546 (= (isEmpty!31593 (right!43113 xs!286)) lt!2087303)))

(declare-fun bs!1189334 () Bool)

(assert (= bs!1189334 d!1626546))

(declare-fun m!6088862 () Bool)

(assert (=> bs!1189334 m!6088862))

(assert (=> bs!1189334 m!6088862))

(declare-fun m!6088864 () Bool)

(assert (=> bs!1189334 m!6088864))

(declare-fun m!6088866 () Bool)

(assert (=> bs!1189334 m!6088866))

(assert (=> b!5054306 d!1626546))

(declare-fun d!1626548 () Bool)

(declare-fun res!2152291 () Bool)

(declare-fun e!3155368 () Bool)

(assert (=> d!1626548 (=> (not res!2152291) (not e!3155368))))

(assert (=> d!1626548 (= res!2152291 (= (csize!31314 ys!41) (+ (size!39038 (left!42783 ys!41)) (size!39038 (right!43113 ys!41)))))))

(assert (=> d!1626548 (= (inv!77436 ys!41) e!3155368)))

(declare-fun b!5054507 () Bool)

(declare-fun res!2152292 () Bool)

(assert (=> b!5054507 (=> (not res!2152292) (not e!3155368))))

(assert (=> b!5054507 (= res!2152292 (and (not (= (left!42783 ys!41) Empty!15542)) (not (= (right!43113 ys!41) Empty!15542))))))

(declare-fun b!5054508 () Bool)

(declare-fun res!2152293 () Bool)

(assert (=> b!5054508 (=> (not res!2152293) (not e!3155368))))

(assert (=> b!5054508 (= res!2152293 (= (cheight!15753 ys!41) (+ (max!0 (height!2119 (left!42783 ys!41)) (height!2119 (right!43113 ys!41))) 1)))))

(declare-fun b!5054509 () Bool)

(assert (=> b!5054509 (= e!3155368 (<= 0 (cheight!15753 ys!41)))))

(assert (= (and d!1626548 res!2152291) b!5054507))

(assert (= (and b!5054507 res!2152292) b!5054508))

(assert (= (and b!5054508 res!2152293) b!5054509))

(assert (=> d!1626548 m!6088798))

(assert (=> d!1626548 m!6088820))

(assert (=> b!5054508 m!6088490))

(assert (=> b!5054508 m!6088488))

(assert (=> b!5054508 m!6088490))

(assert (=> b!5054508 m!6088488))

(declare-fun m!6088868 () Bool)

(assert (=> b!5054508 m!6088868))

(assert (=> b!5054323 d!1626548))

(declare-fun d!1626550 () Bool)

(declare-fun res!2152294 () Bool)

(declare-fun e!3155369 () Bool)

(assert (=> d!1626550 (=> (not res!2152294) (not e!3155369))))

(assert (=> d!1626550 (= res!2152294 (= (csize!31314 (right!43113 ys!41)) (+ (size!39038 (left!42783 (right!43113 ys!41))) (size!39038 (right!43113 (right!43113 ys!41))))))))

(assert (=> d!1626550 (= (inv!77436 (right!43113 ys!41)) e!3155369)))

(declare-fun b!5054510 () Bool)

(declare-fun res!2152295 () Bool)

(assert (=> b!5054510 (=> (not res!2152295) (not e!3155369))))

(assert (=> b!5054510 (= res!2152295 (and (not (= (left!42783 (right!43113 ys!41)) Empty!15542)) (not (= (right!43113 (right!43113 ys!41)) Empty!15542))))))

(declare-fun b!5054511 () Bool)

(declare-fun res!2152296 () Bool)

(assert (=> b!5054511 (=> (not res!2152296) (not e!3155369))))

(assert (=> b!5054511 (= res!2152296 (= (cheight!15753 (right!43113 ys!41)) (+ (max!0 (height!2119 (left!42783 (right!43113 ys!41))) (height!2119 (right!43113 (right!43113 ys!41)))) 1)))))

(declare-fun b!5054512 () Bool)

(assert (=> b!5054512 (= e!3155369 (<= 0 (cheight!15753 (right!43113 ys!41))))))

(assert (= (and d!1626550 res!2152294) b!5054510))

(assert (= (and b!5054510 res!2152295) b!5054511))

(assert (= (and b!5054511 res!2152296) b!5054512))

(declare-fun m!6088870 () Bool)

(assert (=> d!1626550 m!6088870))

(declare-fun m!6088872 () Bool)

(assert (=> d!1626550 m!6088872))

(assert (=> b!5054511 m!6088830))

(assert (=> b!5054511 m!6088832))

(assert (=> b!5054511 m!6088830))

(assert (=> b!5054511 m!6088832))

(declare-fun m!6088874 () Bool)

(assert (=> b!5054511 m!6088874))

(assert (=> b!5054269 d!1626550))

(declare-fun d!1626552 () Bool)

(declare-fun c!867226 () Bool)

(assert (=> d!1626552 (= c!867226 ((_ is Node!15542) (left!42783 (left!42783 ys!41))))))

(declare-fun e!3155370 () Bool)

(assert (=> d!1626552 (= (inv!77434 (left!42783 (left!42783 ys!41))) e!3155370)))

(declare-fun b!5054513 () Bool)

(assert (=> b!5054513 (= e!3155370 (inv!77436 (left!42783 (left!42783 ys!41))))))

(declare-fun b!5054514 () Bool)

(declare-fun e!3155371 () Bool)

(assert (=> b!5054514 (= e!3155370 e!3155371)))

(declare-fun res!2152297 () Bool)

(assert (=> b!5054514 (= res!2152297 (not ((_ is Leaf!25818) (left!42783 (left!42783 ys!41)))))))

(assert (=> b!5054514 (=> res!2152297 e!3155371)))

(declare-fun b!5054515 () Bool)

(assert (=> b!5054515 (= e!3155371 (inv!77437 (left!42783 (left!42783 ys!41))))))

(assert (= (and d!1626552 c!867226) b!5054513))

(assert (= (and d!1626552 (not c!867226)) b!5054514))

(assert (= (and b!5054514 (not res!2152297)) b!5054515))

(declare-fun m!6088876 () Bool)

(assert (=> b!5054513 m!6088876))

(declare-fun m!6088878 () Bool)

(assert (=> b!5054515 m!6088878))

(assert (=> b!5054370 d!1626552))

(declare-fun d!1626554 () Bool)

(declare-fun c!867227 () Bool)

(assert (=> d!1626554 (= c!867227 ((_ is Node!15542) (right!43113 (left!42783 ys!41))))))

(declare-fun e!3155372 () Bool)

(assert (=> d!1626554 (= (inv!77434 (right!43113 (left!42783 ys!41))) e!3155372)))

(declare-fun b!5054516 () Bool)

(assert (=> b!5054516 (= e!3155372 (inv!77436 (right!43113 (left!42783 ys!41))))))

(declare-fun b!5054517 () Bool)

(declare-fun e!3155373 () Bool)

(assert (=> b!5054517 (= e!3155372 e!3155373)))

(declare-fun res!2152298 () Bool)

(assert (=> b!5054517 (= res!2152298 (not ((_ is Leaf!25818) (right!43113 (left!42783 ys!41)))))))

(assert (=> b!5054517 (=> res!2152298 e!3155373)))

(declare-fun b!5054518 () Bool)

(assert (=> b!5054518 (= e!3155373 (inv!77437 (right!43113 (left!42783 ys!41))))))

(assert (= (and d!1626554 c!867227) b!5054516))

(assert (= (and d!1626554 (not c!867227)) b!5054517))

(assert (= (and b!5054517 (not res!2152298)) b!5054518))

(declare-fun m!6088880 () Bool)

(assert (=> b!5054516 m!6088880))

(declare-fun m!6088882 () Bool)

(assert (=> b!5054518 m!6088882))

(assert (=> b!5054370 d!1626554))

(declare-fun d!1626556 () Bool)

(declare-fun res!2152299 () Bool)

(declare-fun e!3155374 () Bool)

(assert (=> d!1626556 (=> (not res!2152299) (not e!3155374))))

(assert (=> d!1626556 (= res!2152299 (= (csize!31314 xs!286) (+ (size!39038 (left!42783 xs!286)) (size!39038 (right!43113 xs!286)))))))

(assert (=> d!1626556 (= (inv!77436 xs!286) e!3155374)))

(declare-fun b!5054519 () Bool)

(declare-fun res!2152300 () Bool)

(assert (=> b!5054519 (=> (not res!2152300) (not e!3155374))))

(assert (=> b!5054519 (= res!2152300 (and (not (= (left!42783 xs!286) Empty!15542)) (not (= (right!43113 xs!286) Empty!15542))))))

(declare-fun b!5054520 () Bool)

(declare-fun res!2152301 () Bool)

(assert (=> b!5054520 (=> (not res!2152301) (not e!3155374))))

(assert (=> b!5054520 (= res!2152301 (= (cheight!15753 xs!286) (+ (max!0 (height!2119 (left!42783 xs!286)) (height!2119 (right!43113 xs!286))) 1)))))

(declare-fun b!5054521 () Bool)

(assert (=> b!5054521 (= e!3155374 (<= 0 (cheight!15753 xs!286)))))

(assert (= (and d!1626556 res!2152299) b!5054519))

(assert (= (and b!5054519 res!2152300) b!5054520))

(assert (= (and b!5054520 res!2152301) b!5054521))

(assert (=> d!1626556 m!6088722))

(assert (=> d!1626556 m!6088866))

(assert (=> b!5054520 m!6088542))

(assert (=> b!5054520 m!6088544))

(assert (=> b!5054520 m!6088542))

(assert (=> b!5054520 m!6088544))

(declare-fun m!6088884 () Bool)

(assert (=> b!5054520 m!6088884))

(assert (=> b!5054314 d!1626556))

(assert (=> b!5054331 d!1626536))

(assert (=> b!5054331 d!1626538))

(assert (=> b!5054307 d!1626540))

(assert (=> b!5054307 d!1626542))

(declare-fun d!1626558 () Bool)

(assert (=> d!1626558 (= (inv!77435 (xs!18872 (left!42783 ys!41))) (<= (size!39036 (innerList!15630 (xs!18872 (left!42783 ys!41)))) 2147483647))))

(declare-fun bs!1189335 () Bool)

(assert (= bs!1189335 d!1626558))

(declare-fun m!6088886 () Bool)

(assert (=> bs!1189335 m!6088886))

(assert (=> b!5054371 d!1626558))

(declare-fun b!5054522 () Bool)

(declare-fun e!3155375 () Bool)

(declare-fun tp!1412794 () Bool)

(assert (=> b!5054522 (= e!3155375 (and tp_is_empty!37005 tp!1412794))))

(assert (=> b!5054372 (= tp!1412762 e!3155375)))

(assert (= (and b!5054372 ((_ is Cons!58412) (innerList!15630 (xs!18872 (left!42783 ys!41))))) b!5054522))

(declare-fun b!5054523 () Bool)

(declare-fun tp!1412797 () Bool)

(declare-fun e!3155376 () Bool)

(declare-fun tp!1412796 () Bool)

(assert (=> b!5054523 (= e!3155376 (and (inv!77434 (left!42783 (left!42783 (right!43113 ys!41)))) tp!1412797 (inv!77434 (right!43113 (left!42783 (right!43113 ys!41)))) tp!1412796))))

(declare-fun b!5054525 () Bool)

(declare-fun e!3155377 () Bool)

(declare-fun tp!1412795 () Bool)

(assert (=> b!5054525 (= e!3155377 tp!1412795)))

(declare-fun b!5054524 () Bool)

(assert (=> b!5054524 (= e!3155376 (and (inv!77435 (xs!18872 (left!42783 (right!43113 ys!41)))) e!3155377))))

(assert (=> b!5054373 (= tp!1412767 (and (inv!77434 (left!42783 (right!43113 ys!41))) e!3155376))))

(assert (= (and b!5054373 ((_ is Node!15542) (left!42783 (right!43113 ys!41)))) b!5054523))

(assert (= b!5054524 b!5054525))

(assert (= (and b!5054373 ((_ is Leaf!25818) (left!42783 (right!43113 ys!41)))) b!5054524))

(declare-fun m!6088888 () Bool)

(assert (=> b!5054523 m!6088888))

(declare-fun m!6088890 () Bool)

(assert (=> b!5054523 m!6088890))

(declare-fun m!6088892 () Bool)

(assert (=> b!5054524 m!6088892))

(assert (=> b!5054373 m!6088644))

(declare-fun b!5054526 () Bool)

(declare-fun tp!1412799 () Bool)

(declare-fun tp!1412800 () Bool)

(declare-fun e!3155378 () Bool)

(assert (=> b!5054526 (= e!3155378 (and (inv!77434 (left!42783 (right!43113 (right!43113 ys!41)))) tp!1412800 (inv!77434 (right!43113 (right!43113 (right!43113 ys!41)))) tp!1412799))))

(declare-fun b!5054528 () Bool)

(declare-fun e!3155379 () Bool)

(declare-fun tp!1412798 () Bool)

(assert (=> b!5054528 (= e!3155379 tp!1412798)))

(declare-fun b!5054527 () Bool)

(assert (=> b!5054527 (= e!3155378 (and (inv!77435 (xs!18872 (right!43113 (right!43113 ys!41)))) e!3155379))))

(assert (=> b!5054373 (= tp!1412766 (and (inv!77434 (right!43113 (right!43113 ys!41))) e!3155378))))

(assert (= (and b!5054373 ((_ is Node!15542) (right!43113 (right!43113 ys!41)))) b!5054526))

(assert (= b!5054527 b!5054528))

(assert (= (and b!5054373 ((_ is Leaf!25818) (right!43113 (right!43113 ys!41)))) b!5054527))

(declare-fun m!6088894 () Bool)

(assert (=> b!5054526 m!6088894))

(declare-fun m!6088896 () Bool)

(assert (=> b!5054526 m!6088896))

(declare-fun m!6088898 () Bool)

(assert (=> b!5054527 m!6088898))

(assert (=> b!5054373 m!6088646))

(declare-fun b!5054529 () Bool)

(declare-fun e!3155380 () Bool)

(declare-fun tp!1412801 () Bool)

(assert (=> b!5054529 (= e!3155380 (and tp_is_empty!37005 tp!1412801))))

(assert (=> b!5054380 (= tp!1412770 e!3155380)))

(assert (= (and b!5054380 ((_ is Cons!58412) (t!371189 (innerList!15630 (xs!18872 ys!41))))) b!5054529))

(declare-fun tp!1412804 () Bool)

(declare-fun e!3155381 () Bool)

(declare-fun b!5054530 () Bool)

(declare-fun tp!1412803 () Bool)

(assert (=> b!5054530 (= e!3155381 (and (inv!77434 (left!42783 (left!42783 (right!43113 xs!286)))) tp!1412804 (inv!77434 (right!43113 (left!42783 (right!43113 xs!286)))) tp!1412803))))

(declare-fun b!5054532 () Bool)

(declare-fun e!3155382 () Bool)

(declare-fun tp!1412802 () Bool)

(assert (=> b!5054532 (= e!3155382 tp!1412802)))

(declare-fun b!5054531 () Bool)

(assert (=> b!5054531 (= e!3155381 (and (inv!77435 (xs!18872 (left!42783 (right!43113 xs!286)))) e!3155382))))

(assert (=> b!5054364 (= tp!1412761 (and (inv!77434 (left!42783 (right!43113 xs!286))) e!3155381))))

(assert (= (and b!5054364 ((_ is Node!15542) (left!42783 (right!43113 xs!286)))) b!5054530))

(assert (= b!5054531 b!5054532))

(assert (= (and b!5054364 ((_ is Leaf!25818) (left!42783 (right!43113 xs!286)))) b!5054531))

(declare-fun m!6088900 () Bool)

(assert (=> b!5054530 m!6088900))

(declare-fun m!6088902 () Bool)

(assert (=> b!5054530 m!6088902))

(declare-fun m!6088904 () Bool)

(assert (=> b!5054531 m!6088904))

(assert (=> b!5054364 m!6088628))

(declare-fun tp!1412806 () Bool)

(declare-fun b!5054533 () Bool)

(declare-fun tp!1412807 () Bool)

(declare-fun e!3155383 () Bool)

(assert (=> b!5054533 (= e!3155383 (and (inv!77434 (left!42783 (right!43113 (right!43113 xs!286)))) tp!1412807 (inv!77434 (right!43113 (right!43113 (right!43113 xs!286)))) tp!1412806))))

(declare-fun b!5054535 () Bool)

(declare-fun e!3155384 () Bool)

(declare-fun tp!1412805 () Bool)

(assert (=> b!5054535 (= e!3155384 tp!1412805)))

(declare-fun b!5054534 () Bool)

(assert (=> b!5054534 (= e!3155383 (and (inv!77435 (xs!18872 (right!43113 (right!43113 xs!286)))) e!3155384))))

(assert (=> b!5054364 (= tp!1412760 (and (inv!77434 (right!43113 (right!43113 xs!286))) e!3155383))))

(assert (= (and b!5054364 ((_ is Node!15542) (right!43113 (right!43113 xs!286)))) b!5054533))

(assert (= b!5054534 b!5054535))

(assert (= (and b!5054364 ((_ is Leaf!25818) (right!43113 (right!43113 xs!286)))) b!5054534))

(declare-fun m!6088906 () Bool)

(assert (=> b!5054533 m!6088906))

(declare-fun m!6088908 () Bool)

(assert (=> b!5054533 m!6088908))

(declare-fun m!6088910 () Bool)

(assert (=> b!5054534 m!6088910))

(assert (=> b!5054364 m!6088632))

(declare-fun tp!1412810 () Bool)

(declare-fun e!3155385 () Bool)

(declare-fun b!5054536 () Bool)

(declare-fun tp!1412809 () Bool)

(assert (=> b!5054536 (= e!3155385 (and (inv!77434 (left!42783 (left!42783 (left!42783 xs!286)))) tp!1412810 (inv!77434 (right!43113 (left!42783 (left!42783 xs!286)))) tp!1412809))))

(declare-fun b!5054538 () Bool)

(declare-fun e!3155386 () Bool)

(declare-fun tp!1412808 () Bool)

(assert (=> b!5054538 (= e!3155386 tp!1412808)))

(declare-fun b!5054537 () Bool)

(assert (=> b!5054537 (= e!3155385 (and (inv!77435 (xs!18872 (left!42783 (left!42783 xs!286)))) e!3155386))))

(assert (=> b!5054358 (= tp!1412758 (and (inv!77434 (left!42783 (left!42783 xs!286))) e!3155385))))

(assert (= (and b!5054358 ((_ is Node!15542) (left!42783 (left!42783 xs!286)))) b!5054536))

(assert (= b!5054537 b!5054538))

(assert (= (and b!5054358 ((_ is Leaf!25818) (left!42783 (left!42783 xs!286)))) b!5054537))

(declare-fun m!6088912 () Bool)

(assert (=> b!5054536 m!6088912))

(declare-fun m!6088914 () Bool)

(assert (=> b!5054536 m!6088914))

(declare-fun m!6088916 () Bool)

(assert (=> b!5054537 m!6088916))

(assert (=> b!5054358 m!6088618))

(declare-fun tp!1412812 () Bool)

(declare-fun e!3155387 () Bool)

(declare-fun b!5054539 () Bool)

(declare-fun tp!1412813 () Bool)

(assert (=> b!5054539 (= e!3155387 (and (inv!77434 (left!42783 (right!43113 (left!42783 xs!286)))) tp!1412813 (inv!77434 (right!43113 (right!43113 (left!42783 xs!286)))) tp!1412812))))

(declare-fun b!5054541 () Bool)

(declare-fun e!3155388 () Bool)

(declare-fun tp!1412811 () Bool)

(assert (=> b!5054541 (= e!3155388 tp!1412811)))

(declare-fun b!5054540 () Bool)

(assert (=> b!5054540 (= e!3155387 (and (inv!77435 (xs!18872 (right!43113 (left!42783 xs!286)))) e!3155388))))

(assert (=> b!5054358 (= tp!1412757 (and (inv!77434 (right!43113 (left!42783 xs!286))) e!3155387))))

(assert (= (and b!5054358 ((_ is Node!15542) (right!43113 (left!42783 xs!286)))) b!5054539))

(assert (= b!5054540 b!5054541))

(assert (= (and b!5054358 ((_ is Leaf!25818) (right!43113 (left!42783 xs!286)))) b!5054540))

(declare-fun m!6088918 () Bool)

(assert (=> b!5054539 m!6088918))

(declare-fun m!6088920 () Bool)

(assert (=> b!5054539 m!6088920))

(declare-fun m!6088922 () Bool)

(assert (=> b!5054540 m!6088922))

(assert (=> b!5054358 m!6088620))

(declare-fun b!5054542 () Bool)

(declare-fun e!3155389 () Bool)

(declare-fun tp!1412816 () Bool)

(declare-fun tp!1412815 () Bool)

(assert (=> b!5054542 (= e!3155389 (and (inv!77434 (left!42783 (left!42783 (left!42783 ys!41)))) tp!1412816 (inv!77434 (right!43113 (left!42783 (left!42783 ys!41)))) tp!1412815))))

(declare-fun b!5054544 () Bool)

(declare-fun e!3155390 () Bool)

(declare-fun tp!1412814 () Bool)

(assert (=> b!5054544 (= e!3155390 tp!1412814)))

(declare-fun b!5054543 () Bool)

(assert (=> b!5054543 (= e!3155389 (and (inv!77435 (xs!18872 (left!42783 (left!42783 ys!41)))) e!3155390))))

(assert (=> b!5054370 (= tp!1412764 (and (inv!77434 (left!42783 (left!42783 ys!41))) e!3155389))))

(assert (= (and b!5054370 ((_ is Node!15542) (left!42783 (left!42783 ys!41)))) b!5054542))

(assert (= b!5054543 b!5054544))

(assert (= (and b!5054370 ((_ is Leaf!25818) (left!42783 (left!42783 ys!41)))) b!5054543))

(declare-fun m!6088924 () Bool)

(assert (=> b!5054542 m!6088924))

(declare-fun m!6088926 () Bool)

(assert (=> b!5054542 m!6088926))

(declare-fun m!6088928 () Bool)

(assert (=> b!5054543 m!6088928))

(assert (=> b!5054370 m!6088638))

(declare-fun tp!1412818 () Bool)

(declare-fun tp!1412819 () Bool)

(declare-fun b!5054545 () Bool)

(declare-fun e!3155391 () Bool)

(assert (=> b!5054545 (= e!3155391 (and (inv!77434 (left!42783 (right!43113 (left!42783 ys!41)))) tp!1412819 (inv!77434 (right!43113 (right!43113 (left!42783 ys!41)))) tp!1412818))))

(declare-fun b!5054547 () Bool)

(declare-fun e!3155392 () Bool)

(declare-fun tp!1412817 () Bool)

(assert (=> b!5054547 (= e!3155392 tp!1412817)))

(declare-fun b!5054546 () Bool)

(assert (=> b!5054546 (= e!3155391 (and (inv!77435 (xs!18872 (right!43113 (left!42783 ys!41)))) e!3155392))))

(assert (=> b!5054370 (= tp!1412763 (and (inv!77434 (right!43113 (left!42783 ys!41))) e!3155391))))

(assert (= (and b!5054370 ((_ is Node!15542) (right!43113 (left!42783 ys!41)))) b!5054545))

(assert (= b!5054546 b!5054547))

(assert (= (and b!5054370 ((_ is Leaf!25818) (right!43113 (left!42783 ys!41)))) b!5054546))

(declare-fun m!6088930 () Bool)

(assert (=> b!5054545 m!6088930))

(declare-fun m!6088932 () Bool)

(assert (=> b!5054545 m!6088932))

(declare-fun m!6088934 () Bool)

(assert (=> b!5054546 m!6088934))

(assert (=> b!5054370 m!6088640))

(declare-fun b!5054548 () Bool)

(declare-fun e!3155393 () Bool)

(declare-fun tp!1412820 () Bool)

(assert (=> b!5054548 (= e!3155393 (and tp_is_empty!37005 tp!1412820))))

(assert (=> b!5054375 (= tp!1412765 e!3155393)))

(assert (= (and b!5054375 ((_ is Cons!58412) (innerList!15630 (xs!18872 (right!43113 ys!41))))) b!5054548))

(declare-fun b!5054549 () Bool)

(declare-fun e!3155394 () Bool)

(declare-fun tp!1412821 () Bool)

(assert (=> b!5054549 (= e!3155394 (and tp_is_empty!37005 tp!1412821))))

(assert (=> b!5054366 (= tp!1412759 e!3155394)))

(assert (= (and b!5054366 ((_ is Cons!58412) (innerList!15630 (xs!18872 (right!43113 xs!286))))) b!5054549))

(declare-fun b!5054550 () Bool)

(declare-fun e!3155395 () Bool)

(declare-fun tp!1412822 () Bool)

(assert (=> b!5054550 (= e!3155395 (and tp_is_empty!37005 tp!1412822))))

(assert (=> b!5054360 (= tp!1412756 e!3155395)))

(assert (= (and b!5054360 ((_ is Cons!58412) (innerList!15630 (xs!18872 (left!42783 xs!286))))) b!5054550))

(declare-fun b!5054551 () Bool)

(declare-fun e!3155396 () Bool)

(declare-fun tp!1412823 () Bool)

(assert (=> b!5054551 (= e!3155396 (and tp_is_empty!37005 tp!1412823))))

(assert (=> b!5054381 (= tp!1412771 e!3155396)))

(assert (= (and b!5054381 ((_ is Cons!58412) (t!371189 (innerList!15630 (xs!18872 xs!286))))) b!5054551))

(check-sat (not b!5054468) (not b!5054429) (not b!5054533) (not b!5054522) (not d!1626526) (not b!5054364) (not b!5054524) (not b!5054508) (not d!1626504) (not b!5054440) (not b!5054474) (not b!5054443) (not b!5054513) (not d!1626556) (not b!5054442) (not b!5054540) (not b!5054549) (not b!5054471) (not b!5054358) (not b!5054483) (not d!1626482) (not b!5054431) (not b!5054551) tp_is_empty!37005 (not b!5054494) (not b!5054423) (not b!5054528) (not b!5054459) (not b!5054489) (not b!5054430) (not b!5054445) (not d!1626522) (not b!5054492) (not b!5054548) (not b!5054545) (not d!1626548) (not b!5054499) (not b!5054438) (not b!5054518) (not b!5054464) (not b!5054547) (not b!5054481) (not d!1626510) (not b!5054531) (not b!5054457) (not b!5054487) (not b!5054504) (not d!1626486) (not b!5054536) (not b!5054543) (not b!5054421) (not b!5054529) (not d!1626524) (not b!5054467) (not d!1626550) (not b!5054465) (not b!5054436) (not b!5054501) (not b!5054447) (not b!5054446) (not d!1626544) (not b!5054485) (not b!5054497) (not b!5054444) (not b!5054480) (not b!5054539) (not b!5054373) (not b!5054523) (not d!1626512) (not b!5054491) (not b!5054503) (not b!5054505) (not b!5054544) (not b!5054526) (not b!5054546) (not b!5054427) (not d!1626488) (not b!5054538) (not b!5054478) (not d!1626494) (not b!5054439) (not b!5054495) (not b!5054535) (not b!5054448) (not d!1626546) (not b!5054525) (not b!5054461) (not d!1626484) (not b!5054462) (not b!5054511) (not b!5054426) (not d!1626520) (not b!5054428) (not b!5054534) (not b!5054425) (not b!5054542) (not d!1626506) (not b!5054493) (not b!5054496) (not b!5054532) (not b!5054550) (not b!5054476) (not b!5054502) (not b!5054370) (not b!5054424) (not b!5054515) (not b!5054441) (not b!5054422) (not b!5054419) (not b!5054527) (not d!1626530) (not b!5054537) (not b!5054520) (not d!1626532) (not b!5054530) (not b!5054541) (not d!1626558) (not b!5054506) (not d!1626518) (not b!5054470) (not b!5054449) (not b!5054516) (not b!5054420))
(check-sat)
