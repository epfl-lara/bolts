; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!535010 () Bool)

(assert start!535010)

(declare-fun res!2155976 () Bool)

(declare-fun e!3160077 () Bool)

(assert (=> start!535010 (=> (not res!2155976) (not e!3160077))))

(declare-datatypes ((T!105104 0))(
  ( (T!105105 (val!23646 Int)) )
))
(declare-datatypes ((List!58556 0))(
  ( (Nil!58432) (Cons!58432 (h!64880 T!105104) (t!371279 List!58556)) )
))
(declare-datatypes ((IArray!31185 0))(
  ( (IArray!31186 (innerList!15650 List!58556)) )
))
(declare-datatypes ((Conc!15562 0))(
  ( (Node!15562 (left!42813 Conc!15562) (right!43143 Conc!15562) (csize!31354 Int) (cheight!15773 Int)) (Leaf!25848 (xs!18906 IArray!31185) (csize!31355 Int)) (Empty!15562) )
))
(declare-fun xs!286 () Conc!15562)

(declare-fun isBalanced!4424 (Conc!15562) Bool)

(assert (=> start!535010 (= res!2155976 (isBalanced!4424 xs!286))))

(assert (=> start!535010 e!3160077))

(declare-fun e!3160071 () Bool)

(declare-fun inv!77544 (Conc!15562) Bool)

(assert (=> start!535010 (and (inv!77544 xs!286) e!3160071)))

(declare-fun ys!41 () Conc!15562)

(declare-fun e!3160078 () Bool)

(assert (=> start!535010 (and (inv!77544 ys!41) e!3160078)))

(declare-fun lt!2088442 () Conc!15562)

(declare-fun b!5063250 () Bool)

(declare-fun e!3160072 () Bool)

(declare-fun list!18985 (Conc!15562) List!58556)

(declare-fun ++!12784 (List!58556 List!58556) List!58556)

(assert (=> b!5063250 (= e!3160072 (not (= (list!18985 lt!2088442) (++!12784 (list!18985 xs!286) (list!18985 ys!41)))))))

(declare-fun b!5063251 () Bool)

(declare-fun res!2155971 () Bool)

(assert (=> b!5063251 (=> (not res!2155971) (not e!3160077))))

(assert (=> b!5063251 (= res!2155971 (isBalanced!4424 ys!41))))

(declare-fun tp!1414464 () Bool)

(declare-fun b!5063252 () Bool)

(declare-fun tp!1414465 () Bool)

(assert (=> b!5063252 (= e!3160071 (and (inv!77544 (left!42813 xs!286)) tp!1414464 (inv!77544 (right!43143 xs!286)) tp!1414465))))

(declare-fun b!5063253 () Bool)

(declare-fun res!2155973 () Bool)

(assert (=> b!5063253 (=> (not res!2155973) (not e!3160077))))

(assert (=> b!5063253 (= res!2155973 (and (not (= xs!286 Empty!15562)) (not (= ys!41 Empty!15562))))))

(declare-fun b!5063254 () Bool)

(declare-fun e!3160074 () Bool)

(declare-fun tp!1414462 () Bool)

(assert (=> b!5063254 (= e!3160074 tp!1414462)))

(declare-fun b!5063255 () Bool)

(declare-fun e!3160070 () Bool)

(assert (=> b!5063255 (= e!3160070 e!3160072)))

(declare-fun res!2155972 () Bool)

(assert (=> b!5063255 (=> res!2155972 e!3160072)))

(declare-fun lt!2088439 () Int)

(declare-fun lt!2088441 () Int)

(assert (=> b!5063255 (= res!2155972 (or (> lt!2088439 (+ 1 lt!2088441)) (< lt!2088439 lt!2088441)))))

(declare-fun height!2139 (Conc!15562) Int)

(assert (=> b!5063255 (= lt!2088439 (height!2139 lt!2088442))))

(declare-fun lt!2088444 () Int)

(declare-fun lt!2088443 () Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5063255 (= lt!2088441 (max!0 lt!2088444 lt!2088443))))

(declare-fun b!5063256 () Bool)

(declare-fun e!3160075 () Bool)

(declare-fun tp!1414460 () Bool)

(assert (=> b!5063256 (= e!3160075 tp!1414460)))

(declare-fun b!5063257 () Bool)

(declare-fun e!3160073 () Bool)

(declare-fun e!3160076 () Bool)

(assert (=> b!5063257 (= e!3160073 e!3160076)))

(declare-fun res!2155974 () Bool)

(assert (=> b!5063257 (=> (not res!2155974) (not e!3160076))))

(declare-fun lt!2088445 () Conc!15562)

(assert (=> b!5063257 (= res!2155974 (= (height!2139 lt!2088445) (- lt!2088444 3)))))

(declare-fun ++!12785 (Conc!15562 Conc!15562) Conc!15562)

(assert (=> b!5063257 (= lt!2088445 (++!12785 (right!43143 (right!43143 xs!286)) ys!41))))

(declare-fun b!5063258 () Bool)

(declare-fun inv!77545 (IArray!31185) Bool)

(assert (=> b!5063258 (= e!3160078 (and (inv!77545 (xs!18906 ys!41)) e!3160075))))

(declare-fun tp!1414463 () Bool)

(declare-fun b!5063259 () Bool)

(declare-fun tp!1414461 () Bool)

(assert (=> b!5063259 (= e!3160078 (and (inv!77544 (left!42813 ys!41)) tp!1414461 (inv!77544 (right!43143 ys!41)) tp!1414463))))

(declare-fun b!5063260 () Bool)

(assert (=> b!5063260 (= e!3160071 (and (inv!77545 (xs!18906 xs!286)) e!3160074))))

(declare-fun b!5063261 () Bool)

(declare-fun res!2155975 () Bool)

(assert (=> b!5063261 (=> res!2155975 e!3160070)))

(assert (=> b!5063261 (= res!2155975 (not (isBalanced!4424 lt!2088442)))))

(declare-fun b!5063262 () Bool)

(assert (=> b!5063262 (= e!3160077 e!3160073)))

(declare-fun res!2155969 () Bool)

(assert (=> b!5063262 (=> (not res!2155969) (not e!3160073))))

(declare-fun lt!2088440 () Int)

(get-info :version)

(assert (=> b!5063262 (= res!2155969 (and (or (> (- 1) lt!2088440) (> lt!2088440 1)) (< lt!2088440 (- 1)) ((_ is Node!15562) xs!286)))))

(assert (=> b!5063262 (= lt!2088440 (- lt!2088443 lt!2088444))))

(assert (=> b!5063262 (= lt!2088444 (height!2139 xs!286))))

(assert (=> b!5063262 (= lt!2088443 (height!2139 ys!41))))

(declare-fun b!5063263 () Bool)

(declare-fun res!2155968 () Bool)

(assert (=> b!5063263 (=> (not res!2155968) (not e!3160073))))

(assert (=> b!5063263 (= res!2155968 (< (height!2139 (left!42813 xs!286)) (height!2139 (right!43143 xs!286))))))

(declare-fun b!5063264 () Bool)

(declare-fun res!2155970 () Bool)

(assert (=> b!5063264 (=> (not res!2155970) (not e!3160073))))

(assert (=> b!5063264 (= res!2155970 ((_ is Node!15562) (right!43143 xs!286)))))

(declare-fun b!5063265 () Bool)

(assert (=> b!5063265 (= e!3160076 e!3160070)))

(declare-fun res!2155977 () Bool)

(assert (=> b!5063265 (=> res!2155977 e!3160070)))

(declare-fun appendAssocInst!908 (Conc!15562 Conc!15562) Bool)

(assert (=> b!5063265 (= res!2155977 (not (appendAssocInst!908 xs!286 ys!41)))))

(declare-fun <>!394 (Conc!15562 Conc!15562) Conc!15562)

(assert (=> b!5063265 (= lt!2088442 (<>!394 (left!42813 xs!286) (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)))))

(assert (= (and start!535010 res!2155976) b!5063251))

(assert (= (and b!5063251 res!2155971) b!5063253))

(assert (= (and b!5063253 res!2155973) b!5063262))

(assert (= (and b!5063262 res!2155969) b!5063263))

(assert (= (and b!5063263 res!2155968) b!5063264))

(assert (= (and b!5063264 res!2155970) b!5063257))

(assert (= (and b!5063257 res!2155974) b!5063265))

(assert (= (and b!5063265 (not res!2155977)) b!5063261))

(assert (= (and b!5063261 (not res!2155975)) b!5063255))

(assert (= (and b!5063255 (not res!2155972)) b!5063250))

(assert (= (and start!535010 ((_ is Node!15562) xs!286)) b!5063252))

(assert (= b!5063260 b!5063254))

(assert (= (and start!535010 ((_ is Leaf!25848) xs!286)) b!5063260))

(assert (= (and start!535010 ((_ is Node!15562) ys!41)) b!5063259))

(assert (= b!5063258 b!5063256))

(assert (= (and start!535010 ((_ is Leaf!25848) ys!41)) b!5063258))

(declare-fun m!6103058 () Bool)

(assert (=> b!5063260 m!6103058))

(declare-fun m!6103060 () Bool)

(assert (=> b!5063261 m!6103060))

(declare-fun m!6103062 () Bool)

(assert (=> b!5063263 m!6103062))

(declare-fun m!6103064 () Bool)

(assert (=> b!5063263 m!6103064))

(declare-fun m!6103066 () Bool)

(assert (=> b!5063265 m!6103066))

(declare-fun m!6103068 () Bool)

(assert (=> b!5063265 m!6103068))

(assert (=> b!5063265 m!6103068))

(declare-fun m!6103070 () Bool)

(assert (=> b!5063265 m!6103070))

(declare-fun m!6103072 () Bool)

(assert (=> b!5063257 m!6103072))

(declare-fun m!6103074 () Bool)

(assert (=> b!5063257 m!6103074))

(declare-fun m!6103076 () Bool)

(assert (=> b!5063258 m!6103076))

(declare-fun m!6103078 () Bool)

(assert (=> b!5063250 m!6103078))

(declare-fun m!6103080 () Bool)

(assert (=> b!5063250 m!6103080))

(declare-fun m!6103082 () Bool)

(assert (=> b!5063250 m!6103082))

(assert (=> b!5063250 m!6103080))

(assert (=> b!5063250 m!6103082))

(declare-fun m!6103084 () Bool)

(assert (=> b!5063250 m!6103084))

(declare-fun m!6103086 () Bool)

(assert (=> start!535010 m!6103086))

(declare-fun m!6103088 () Bool)

(assert (=> start!535010 m!6103088))

(declare-fun m!6103090 () Bool)

(assert (=> start!535010 m!6103090))

(declare-fun m!6103092 () Bool)

(assert (=> b!5063262 m!6103092))

(declare-fun m!6103094 () Bool)

(assert (=> b!5063262 m!6103094))

(declare-fun m!6103096 () Bool)

(assert (=> b!5063255 m!6103096))

(declare-fun m!6103098 () Bool)

(assert (=> b!5063255 m!6103098))

(declare-fun m!6103100 () Bool)

(assert (=> b!5063252 m!6103100))

(declare-fun m!6103102 () Bool)

(assert (=> b!5063252 m!6103102))

(declare-fun m!6103104 () Bool)

(assert (=> b!5063251 m!6103104))

(declare-fun m!6103106 () Bool)

(assert (=> b!5063259 m!6103106))

(declare-fun m!6103108 () Bool)

(assert (=> b!5063259 m!6103108))

(check-sat (not b!5063261) (not b!5063255) (not start!535010) (not b!5063258) (not b!5063260) (not b!5063257) (not b!5063259) (not b!5063252) (not b!5063263) (not b!5063256) (not b!5063262) (not b!5063254) (not b!5063251) (not b!5063265) (not b!5063250))
(check-sat)
(get-model)

(declare-fun d!1631598 () Bool)

(assert (=> d!1631598 (= (height!2139 (left!42813 xs!286)) (ite ((_ is Empty!15562) (left!42813 xs!286)) 0 (ite ((_ is Leaf!25848) (left!42813 xs!286)) 1 (cheight!15773 (left!42813 xs!286)))))))

(assert (=> b!5063263 d!1631598))

(declare-fun d!1631600 () Bool)

(assert (=> d!1631600 (= (height!2139 (right!43143 xs!286)) (ite ((_ is Empty!15562) (right!43143 xs!286)) 0 (ite ((_ is Leaf!25848) (right!43143 xs!286)) 1 (cheight!15773 (right!43143 xs!286)))))))

(assert (=> b!5063263 d!1631600))

(declare-fun d!1631602 () Bool)

(declare-fun c!868892 () Bool)

(assert (=> d!1631602 (= c!868892 ((_ is Node!15562) (left!42813 xs!286)))))

(declare-fun e!3160083 () Bool)

(assert (=> d!1631602 (= (inv!77544 (left!42813 xs!286)) e!3160083)))

(declare-fun b!5063272 () Bool)

(declare-fun inv!77548 (Conc!15562) Bool)

(assert (=> b!5063272 (= e!3160083 (inv!77548 (left!42813 xs!286)))))

(declare-fun b!5063273 () Bool)

(declare-fun e!3160084 () Bool)

(assert (=> b!5063273 (= e!3160083 e!3160084)))

(declare-fun res!2155980 () Bool)

(assert (=> b!5063273 (= res!2155980 (not ((_ is Leaf!25848) (left!42813 xs!286))))))

(assert (=> b!5063273 (=> res!2155980 e!3160084)))

(declare-fun b!5063274 () Bool)

(declare-fun inv!77549 (Conc!15562) Bool)

(assert (=> b!5063274 (= e!3160084 (inv!77549 (left!42813 xs!286)))))

(assert (= (and d!1631602 c!868892) b!5063272))

(assert (= (and d!1631602 (not c!868892)) b!5063273))

(assert (= (and b!5063273 (not res!2155980)) b!5063274))

(declare-fun m!6103110 () Bool)

(assert (=> b!5063272 m!6103110))

(declare-fun m!6103112 () Bool)

(assert (=> b!5063274 m!6103112))

(assert (=> b!5063252 d!1631602))

(declare-fun d!1631606 () Bool)

(declare-fun c!868893 () Bool)

(assert (=> d!1631606 (= c!868893 ((_ is Node!15562) (right!43143 xs!286)))))

(declare-fun e!3160085 () Bool)

(assert (=> d!1631606 (= (inv!77544 (right!43143 xs!286)) e!3160085)))

(declare-fun b!5063275 () Bool)

(assert (=> b!5063275 (= e!3160085 (inv!77548 (right!43143 xs!286)))))

(declare-fun b!5063276 () Bool)

(declare-fun e!3160086 () Bool)

(assert (=> b!5063276 (= e!3160085 e!3160086)))

(declare-fun res!2155981 () Bool)

(assert (=> b!5063276 (= res!2155981 (not ((_ is Leaf!25848) (right!43143 xs!286))))))

(assert (=> b!5063276 (=> res!2155981 e!3160086)))

(declare-fun b!5063277 () Bool)

(assert (=> b!5063277 (= e!3160086 (inv!77549 (right!43143 xs!286)))))

(assert (= (and d!1631606 c!868893) b!5063275))

(assert (= (and d!1631606 (not c!868893)) b!5063276))

(assert (= (and b!5063276 (not res!2155981)) b!5063277))

(declare-fun m!6103114 () Bool)

(assert (=> b!5063275 m!6103114))

(declare-fun m!6103116 () Bool)

(assert (=> b!5063277 m!6103116))

(assert (=> b!5063252 d!1631606))

(declare-fun b!5063308 () Bool)

(declare-fun res!2156002 () Bool)

(declare-fun e!3160103 () Bool)

(assert (=> b!5063308 (=> (not res!2156002) (not e!3160103))))

(declare-fun isEmpty!31626 (Conc!15562) Bool)

(assert (=> b!5063308 (= res!2156002 (not (isEmpty!31626 (left!42813 ys!41))))))

(declare-fun b!5063309 () Bool)

(declare-fun res!2156005 () Bool)

(assert (=> b!5063309 (=> (not res!2156005) (not e!3160103))))

(assert (=> b!5063309 (= res!2156005 (<= (- (height!2139 (left!42813 ys!41)) (height!2139 (right!43143 ys!41))) 1))))

(declare-fun b!5063310 () Bool)

(declare-fun e!3160104 () Bool)

(assert (=> b!5063310 (= e!3160104 e!3160103)))

(declare-fun res!2156004 () Bool)

(assert (=> b!5063310 (=> (not res!2156004) (not e!3160103))))

(assert (=> b!5063310 (= res!2156004 (<= (- 1) (- (height!2139 (left!42813 ys!41)) (height!2139 (right!43143 ys!41)))))))

(declare-fun d!1631608 () Bool)

(declare-fun res!2156001 () Bool)

(assert (=> d!1631608 (=> res!2156001 e!3160104)))

(assert (=> d!1631608 (= res!2156001 (not ((_ is Node!15562) ys!41)))))

(assert (=> d!1631608 (= (isBalanced!4424 ys!41) e!3160104)))

(declare-fun b!5063311 () Bool)

(assert (=> b!5063311 (= e!3160103 (not (isEmpty!31626 (right!43143 ys!41))))))

(declare-fun b!5063312 () Bool)

(declare-fun res!2156000 () Bool)

(assert (=> b!5063312 (=> (not res!2156000) (not e!3160103))))

(assert (=> b!5063312 (= res!2156000 (isBalanced!4424 (left!42813 ys!41)))))

(declare-fun b!5063313 () Bool)

(declare-fun res!2156003 () Bool)

(assert (=> b!5063313 (=> (not res!2156003) (not e!3160103))))

(assert (=> b!5063313 (= res!2156003 (isBalanced!4424 (right!43143 ys!41)))))

(assert (= (and d!1631608 (not res!2156001)) b!5063310))

(assert (= (and b!5063310 res!2156004) b!5063309))

(assert (= (and b!5063309 res!2156005) b!5063312))

(assert (= (and b!5063312 res!2156000) b!5063313))

(assert (= (and b!5063313 res!2156003) b!5063308))

(assert (= (and b!5063308 res!2156002) b!5063311))

(declare-fun m!6103136 () Bool)

(assert (=> b!5063312 m!6103136))

(declare-fun m!6103138 () Bool)

(assert (=> b!5063311 m!6103138))

(declare-fun m!6103140 () Bool)

(assert (=> b!5063308 m!6103140))

(declare-fun m!6103142 () Bool)

(assert (=> b!5063309 m!6103142))

(declare-fun m!6103144 () Bool)

(assert (=> b!5063309 m!6103144))

(declare-fun m!6103146 () Bool)

(assert (=> b!5063313 m!6103146))

(assert (=> b!5063310 m!6103142))

(assert (=> b!5063310 m!6103144))

(assert (=> b!5063251 d!1631608))

(declare-fun d!1631626 () Bool)

(assert (=> d!1631626 (= (height!2139 xs!286) (ite ((_ is Empty!15562) xs!286) 0 (ite ((_ is Leaf!25848) xs!286) 1 (cheight!15773 xs!286))))))

(assert (=> b!5063262 d!1631626))

(declare-fun d!1631628 () Bool)

(assert (=> d!1631628 (= (height!2139 ys!41) (ite ((_ is Empty!15562) ys!41) 0 (ite ((_ is Leaf!25848) ys!41) 1 (cheight!15773 ys!41))))))

(assert (=> b!5063262 d!1631628))

(declare-fun b!5063314 () Bool)

(declare-fun res!2156008 () Bool)

(declare-fun e!3160105 () Bool)

(assert (=> b!5063314 (=> (not res!2156008) (not e!3160105))))

(assert (=> b!5063314 (= res!2156008 (not (isEmpty!31626 (left!42813 lt!2088442))))))

(declare-fun b!5063315 () Bool)

(declare-fun res!2156011 () Bool)

(assert (=> b!5063315 (=> (not res!2156011) (not e!3160105))))

(assert (=> b!5063315 (= res!2156011 (<= (- (height!2139 (left!42813 lt!2088442)) (height!2139 (right!43143 lt!2088442))) 1))))

(declare-fun b!5063316 () Bool)

(declare-fun e!3160106 () Bool)

(assert (=> b!5063316 (= e!3160106 e!3160105)))

(declare-fun res!2156010 () Bool)

(assert (=> b!5063316 (=> (not res!2156010) (not e!3160105))))

(assert (=> b!5063316 (= res!2156010 (<= (- 1) (- (height!2139 (left!42813 lt!2088442)) (height!2139 (right!43143 lt!2088442)))))))

(declare-fun d!1631630 () Bool)

(declare-fun res!2156007 () Bool)

(assert (=> d!1631630 (=> res!2156007 e!3160106)))

(assert (=> d!1631630 (= res!2156007 (not ((_ is Node!15562) lt!2088442)))))

(assert (=> d!1631630 (= (isBalanced!4424 lt!2088442) e!3160106)))

(declare-fun b!5063317 () Bool)

(assert (=> b!5063317 (= e!3160105 (not (isEmpty!31626 (right!43143 lt!2088442))))))

(declare-fun b!5063318 () Bool)

(declare-fun res!2156006 () Bool)

(assert (=> b!5063318 (=> (not res!2156006) (not e!3160105))))

(assert (=> b!5063318 (= res!2156006 (isBalanced!4424 (left!42813 lt!2088442)))))

(declare-fun b!5063319 () Bool)

(declare-fun res!2156009 () Bool)

(assert (=> b!5063319 (=> (not res!2156009) (not e!3160105))))

(assert (=> b!5063319 (= res!2156009 (isBalanced!4424 (right!43143 lt!2088442)))))

(assert (= (and d!1631630 (not res!2156007)) b!5063316))

(assert (= (and b!5063316 res!2156010) b!5063315))

(assert (= (and b!5063315 res!2156011) b!5063318))

(assert (= (and b!5063318 res!2156006) b!5063319))

(assert (= (and b!5063319 res!2156009) b!5063314))

(assert (= (and b!5063314 res!2156008) b!5063317))

(declare-fun m!6103148 () Bool)

(assert (=> b!5063318 m!6103148))

(declare-fun m!6103150 () Bool)

(assert (=> b!5063317 m!6103150))

(declare-fun m!6103152 () Bool)

(assert (=> b!5063314 m!6103152))

(declare-fun m!6103154 () Bool)

(assert (=> b!5063315 m!6103154))

(declare-fun m!6103156 () Bool)

(assert (=> b!5063315 m!6103156))

(declare-fun m!6103158 () Bool)

(assert (=> b!5063319 m!6103158))

(assert (=> b!5063316 m!6103154))

(assert (=> b!5063316 m!6103156))

(assert (=> b!5063261 d!1631630))

(declare-fun d!1631632 () Bool)

(declare-fun c!868904 () Bool)

(assert (=> d!1631632 (= c!868904 ((_ is Empty!15562) lt!2088442))))

(declare-fun e!3160111 () List!58556)

(assert (=> d!1631632 (= (list!18985 lt!2088442) e!3160111)))

(declare-fun b!5063331 () Bool)

(declare-fun e!3160112 () List!58556)

(assert (=> b!5063331 (= e!3160112 (++!12784 (list!18985 (left!42813 lt!2088442)) (list!18985 (right!43143 lt!2088442))))))

(declare-fun b!5063328 () Bool)

(assert (=> b!5063328 (= e!3160111 Nil!58432)))

(declare-fun b!5063330 () Bool)

(declare-fun list!18986 (IArray!31185) List!58556)

(assert (=> b!5063330 (= e!3160112 (list!18986 (xs!18906 lt!2088442)))))

(declare-fun b!5063329 () Bool)

(assert (=> b!5063329 (= e!3160111 e!3160112)))

(declare-fun c!868905 () Bool)

(assert (=> b!5063329 (= c!868905 ((_ is Leaf!25848) lt!2088442))))

(assert (= (and d!1631632 c!868904) b!5063328))

(assert (= (and d!1631632 (not c!868904)) b!5063329))

(assert (= (and b!5063329 c!868905) b!5063330))

(assert (= (and b!5063329 (not c!868905)) b!5063331))

(declare-fun m!6103160 () Bool)

(assert (=> b!5063331 m!6103160))

(declare-fun m!6103162 () Bool)

(assert (=> b!5063331 m!6103162))

(assert (=> b!5063331 m!6103160))

(assert (=> b!5063331 m!6103162))

(declare-fun m!6103164 () Bool)

(assert (=> b!5063331 m!6103164))

(declare-fun m!6103166 () Bool)

(assert (=> b!5063330 m!6103166))

(assert (=> b!5063250 d!1631632))

(declare-fun d!1631634 () Bool)

(declare-fun e!3160118 () Bool)

(assert (=> d!1631634 e!3160118))

(declare-fun res!2156016 () Bool)

(assert (=> d!1631634 (=> (not res!2156016) (not e!3160118))))

(declare-fun lt!2088448 () List!58556)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10415 (List!58556) (InoxSet T!105104))

(assert (=> d!1631634 (= res!2156016 (= (content!10415 lt!2088448) ((_ map or) (content!10415 (list!18985 xs!286)) (content!10415 (list!18985 ys!41)))))))

(declare-fun e!3160117 () List!58556)

(assert (=> d!1631634 (= lt!2088448 e!3160117)))

(declare-fun c!868908 () Bool)

(assert (=> d!1631634 (= c!868908 ((_ is Nil!58432) (list!18985 xs!286)))))

(assert (=> d!1631634 (= (++!12784 (list!18985 xs!286) (list!18985 ys!41)) lt!2088448)))

(declare-fun b!5063341 () Bool)

(assert (=> b!5063341 (= e!3160117 (Cons!58432 (h!64880 (list!18985 xs!286)) (++!12784 (t!371279 (list!18985 xs!286)) (list!18985 ys!41))))))

(declare-fun b!5063343 () Bool)

(assert (=> b!5063343 (= e!3160118 (or (not (= (list!18985 ys!41) Nil!58432)) (= lt!2088448 (list!18985 xs!286))))))

(declare-fun b!5063340 () Bool)

(assert (=> b!5063340 (= e!3160117 (list!18985 ys!41))))

(declare-fun b!5063342 () Bool)

(declare-fun res!2156017 () Bool)

(assert (=> b!5063342 (=> (not res!2156017) (not e!3160118))))

(declare-fun size!39071 (List!58556) Int)

(assert (=> b!5063342 (= res!2156017 (= (size!39071 lt!2088448) (+ (size!39071 (list!18985 xs!286)) (size!39071 (list!18985 ys!41)))))))

(assert (= (and d!1631634 c!868908) b!5063340))

(assert (= (and d!1631634 (not c!868908)) b!5063341))

(assert (= (and d!1631634 res!2156016) b!5063342))

(assert (= (and b!5063342 res!2156017) b!5063343))

(declare-fun m!6103168 () Bool)

(assert (=> d!1631634 m!6103168))

(assert (=> d!1631634 m!6103080))

(declare-fun m!6103170 () Bool)

(assert (=> d!1631634 m!6103170))

(assert (=> d!1631634 m!6103082))

(declare-fun m!6103172 () Bool)

(assert (=> d!1631634 m!6103172))

(assert (=> b!5063341 m!6103082))

(declare-fun m!6103174 () Bool)

(assert (=> b!5063341 m!6103174))

(declare-fun m!6103176 () Bool)

(assert (=> b!5063342 m!6103176))

(assert (=> b!5063342 m!6103080))

(declare-fun m!6103178 () Bool)

(assert (=> b!5063342 m!6103178))

(assert (=> b!5063342 m!6103082))

(declare-fun m!6103180 () Bool)

(assert (=> b!5063342 m!6103180))

(assert (=> b!5063250 d!1631634))

(declare-fun d!1631636 () Bool)

(declare-fun c!868909 () Bool)

(assert (=> d!1631636 (= c!868909 ((_ is Empty!15562) xs!286))))

(declare-fun e!3160119 () List!58556)

(assert (=> d!1631636 (= (list!18985 xs!286) e!3160119)))

(declare-fun b!5063347 () Bool)

(declare-fun e!3160120 () List!58556)

(assert (=> b!5063347 (= e!3160120 (++!12784 (list!18985 (left!42813 xs!286)) (list!18985 (right!43143 xs!286))))))

(declare-fun b!5063344 () Bool)

(assert (=> b!5063344 (= e!3160119 Nil!58432)))

(declare-fun b!5063346 () Bool)

(assert (=> b!5063346 (= e!3160120 (list!18986 (xs!18906 xs!286)))))

(declare-fun b!5063345 () Bool)

(assert (=> b!5063345 (= e!3160119 e!3160120)))

(declare-fun c!868910 () Bool)

(assert (=> b!5063345 (= c!868910 ((_ is Leaf!25848) xs!286))))

(assert (= (and d!1631636 c!868909) b!5063344))

(assert (= (and d!1631636 (not c!868909)) b!5063345))

(assert (= (and b!5063345 c!868910) b!5063346))

(assert (= (and b!5063345 (not c!868910)) b!5063347))

(declare-fun m!6103182 () Bool)

(assert (=> b!5063347 m!6103182))

(declare-fun m!6103184 () Bool)

(assert (=> b!5063347 m!6103184))

(assert (=> b!5063347 m!6103182))

(assert (=> b!5063347 m!6103184))

(declare-fun m!6103186 () Bool)

(assert (=> b!5063347 m!6103186))

(declare-fun m!6103188 () Bool)

(assert (=> b!5063346 m!6103188))

(assert (=> b!5063250 d!1631636))

(declare-fun d!1631638 () Bool)

(declare-fun c!868911 () Bool)

(assert (=> d!1631638 (= c!868911 ((_ is Empty!15562) ys!41))))

(declare-fun e!3160121 () List!58556)

(assert (=> d!1631638 (= (list!18985 ys!41) e!3160121)))

(declare-fun b!5063351 () Bool)

(declare-fun e!3160122 () List!58556)

(assert (=> b!5063351 (= e!3160122 (++!12784 (list!18985 (left!42813 ys!41)) (list!18985 (right!43143 ys!41))))))

(declare-fun b!5063348 () Bool)

(assert (=> b!5063348 (= e!3160121 Nil!58432)))

(declare-fun b!5063350 () Bool)

(assert (=> b!5063350 (= e!3160122 (list!18986 (xs!18906 ys!41)))))

(declare-fun b!5063349 () Bool)

(assert (=> b!5063349 (= e!3160121 e!3160122)))

(declare-fun c!868912 () Bool)

(assert (=> b!5063349 (= c!868912 ((_ is Leaf!25848) ys!41))))

(assert (= (and d!1631638 c!868911) b!5063348))

(assert (= (and d!1631638 (not c!868911)) b!5063349))

(assert (= (and b!5063349 c!868912) b!5063350))

(assert (= (and b!5063349 (not c!868912)) b!5063351))

(declare-fun m!6103190 () Bool)

(assert (=> b!5063351 m!6103190))

(declare-fun m!6103192 () Bool)

(assert (=> b!5063351 m!6103192))

(assert (=> b!5063351 m!6103190))

(assert (=> b!5063351 m!6103192))

(declare-fun m!6103194 () Bool)

(assert (=> b!5063351 m!6103194))

(declare-fun m!6103196 () Bool)

(assert (=> b!5063350 m!6103196))

(assert (=> b!5063250 d!1631638))

(declare-fun b!5063352 () Bool)

(declare-fun res!2156020 () Bool)

(declare-fun e!3160123 () Bool)

(assert (=> b!5063352 (=> (not res!2156020) (not e!3160123))))

(assert (=> b!5063352 (= res!2156020 (not (isEmpty!31626 (left!42813 xs!286))))))

(declare-fun b!5063353 () Bool)

(declare-fun res!2156023 () Bool)

(assert (=> b!5063353 (=> (not res!2156023) (not e!3160123))))

(assert (=> b!5063353 (= res!2156023 (<= (- (height!2139 (left!42813 xs!286)) (height!2139 (right!43143 xs!286))) 1))))

(declare-fun b!5063354 () Bool)

(declare-fun e!3160124 () Bool)

(assert (=> b!5063354 (= e!3160124 e!3160123)))

(declare-fun res!2156022 () Bool)

(assert (=> b!5063354 (=> (not res!2156022) (not e!3160123))))

(assert (=> b!5063354 (= res!2156022 (<= (- 1) (- (height!2139 (left!42813 xs!286)) (height!2139 (right!43143 xs!286)))))))

(declare-fun d!1631640 () Bool)

(declare-fun res!2156019 () Bool)

(assert (=> d!1631640 (=> res!2156019 e!3160124)))

(assert (=> d!1631640 (= res!2156019 (not ((_ is Node!15562) xs!286)))))

(assert (=> d!1631640 (= (isBalanced!4424 xs!286) e!3160124)))

(declare-fun b!5063355 () Bool)

(assert (=> b!5063355 (= e!3160123 (not (isEmpty!31626 (right!43143 xs!286))))))

(declare-fun b!5063356 () Bool)

(declare-fun res!2156018 () Bool)

(assert (=> b!5063356 (=> (not res!2156018) (not e!3160123))))

(assert (=> b!5063356 (= res!2156018 (isBalanced!4424 (left!42813 xs!286)))))

(declare-fun b!5063357 () Bool)

(declare-fun res!2156021 () Bool)

(assert (=> b!5063357 (=> (not res!2156021) (not e!3160123))))

(assert (=> b!5063357 (= res!2156021 (isBalanced!4424 (right!43143 xs!286)))))

(assert (= (and d!1631640 (not res!2156019)) b!5063354))

(assert (= (and b!5063354 res!2156022) b!5063353))

(assert (= (and b!5063353 res!2156023) b!5063356))

(assert (= (and b!5063356 res!2156018) b!5063357))

(assert (= (and b!5063357 res!2156021) b!5063352))

(assert (= (and b!5063352 res!2156020) b!5063355))

(declare-fun m!6103198 () Bool)

(assert (=> b!5063356 m!6103198))

(declare-fun m!6103200 () Bool)

(assert (=> b!5063355 m!6103200))

(declare-fun m!6103202 () Bool)

(assert (=> b!5063352 m!6103202))

(assert (=> b!5063353 m!6103062))

(assert (=> b!5063353 m!6103064))

(declare-fun m!6103204 () Bool)

(assert (=> b!5063357 m!6103204))

(assert (=> b!5063354 m!6103062))

(assert (=> b!5063354 m!6103064))

(assert (=> start!535010 d!1631640))

(declare-fun d!1631642 () Bool)

(declare-fun c!868913 () Bool)

(assert (=> d!1631642 (= c!868913 ((_ is Node!15562) xs!286))))

(declare-fun e!3160125 () Bool)

(assert (=> d!1631642 (= (inv!77544 xs!286) e!3160125)))

(declare-fun b!5063358 () Bool)

(assert (=> b!5063358 (= e!3160125 (inv!77548 xs!286))))

(declare-fun b!5063359 () Bool)

(declare-fun e!3160126 () Bool)

(assert (=> b!5063359 (= e!3160125 e!3160126)))

(declare-fun res!2156024 () Bool)

(assert (=> b!5063359 (= res!2156024 (not ((_ is Leaf!25848) xs!286)))))

(assert (=> b!5063359 (=> res!2156024 e!3160126)))

(declare-fun b!5063360 () Bool)

(assert (=> b!5063360 (= e!3160126 (inv!77549 xs!286))))

(assert (= (and d!1631642 c!868913) b!5063358))

(assert (= (and d!1631642 (not c!868913)) b!5063359))

(assert (= (and b!5063359 (not res!2156024)) b!5063360))

(declare-fun m!6103206 () Bool)

(assert (=> b!5063358 m!6103206))

(declare-fun m!6103208 () Bool)

(assert (=> b!5063360 m!6103208))

(assert (=> start!535010 d!1631642))

(declare-fun d!1631644 () Bool)

(declare-fun c!868914 () Bool)

(assert (=> d!1631644 (= c!868914 ((_ is Node!15562) ys!41))))

(declare-fun e!3160127 () Bool)

(assert (=> d!1631644 (= (inv!77544 ys!41) e!3160127)))

(declare-fun b!5063361 () Bool)

(assert (=> b!5063361 (= e!3160127 (inv!77548 ys!41))))

(declare-fun b!5063362 () Bool)

(declare-fun e!3160128 () Bool)

(assert (=> b!5063362 (= e!3160127 e!3160128)))

(declare-fun res!2156025 () Bool)

(assert (=> b!5063362 (= res!2156025 (not ((_ is Leaf!25848) ys!41)))))

(assert (=> b!5063362 (=> res!2156025 e!3160128)))

(declare-fun b!5063363 () Bool)

(assert (=> b!5063363 (= e!3160128 (inv!77549 ys!41))))

(assert (= (and d!1631644 c!868914) b!5063361))

(assert (= (and d!1631644 (not c!868914)) b!5063362))

(assert (= (and b!5063362 (not res!2156025)) b!5063363))

(declare-fun m!6103210 () Bool)

(assert (=> b!5063361 m!6103210))

(declare-fun m!6103212 () Bool)

(assert (=> b!5063363 m!6103212))

(assert (=> start!535010 d!1631644))

(declare-fun d!1631646 () Bool)

(assert (=> d!1631646 (= (inv!77545 (xs!18906 xs!286)) (<= (size!39071 (innerList!15650 (xs!18906 xs!286))) 2147483647))))

(declare-fun bs!1189773 () Bool)

(assert (= bs!1189773 d!1631646))

(declare-fun m!6103214 () Bool)

(assert (=> bs!1189773 m!6103214))

(assert (=> b!5063260 d!1631646))

(declare-fun d!1631648 () Bool)

(declare-fun c!868915 () Bool)

(assert (=> d!1631648 (= c!868915 ((_ is Node!15562) (left!42813 ys!41)))))

(declare-fun e!3160129 () Bool)

(assert (=> d!1631648 (= (inv!77544 (left!42813 ys!41)) e!3160129)))

(declare-fun b!5063364 () Bool)

(assert (=> b!5063364 (= e!3160129 (inv!77548 (left!42813 ys!41)))))

(declare-fun b!5063365 () Bool)

(declare-fun e!3160130 () Bool)

(assert (=> b!5063365 (= e!3160129 e!3160130)))

(declare-fun res!2156026 () Bool)

(assert (=> b!5063365 (= res!2156026 (not ((_ is Leaf!25848) (left!42813 ys!41))))))

(assert (=> b!5063365 (=> res!2156026 e!3160130)))

(declare-fun b!5063366 () Bool)

(assert (=> b!5063366 (= e!3160130 (inv!77549 (left!42813 ys!41)))))

(assert (= (and d!1631648 c!868915) b!5063364))

(assert (= (and d!1631648 (not c!868915)) b!5063365))

(assert (= (and b!5063365 (not res!2156026)) b!5063366))

(declare-fun m!6103216 () Bool)

(assert (=> b!5063364 m!6103216))

(declare-fun m!6103218 () Bool)

(assert (=> b!5063366 m!6103218))

(assert (=> b!5063259 d!1631648))

(declare-fun d!1631650 () Bool)

(declare-fun c!868916 () Bool)

(assert (=> d!1631650 (= c!868916 ((_ is Node!15562) (right!43143 ys!41)))))

(declare-fun e!3160131 () Bool)

(assert (=> d!1631650 (= (inv!77544 (right!43143 ys!41)) e!3160131)))

(declare-fun b!5063367 () Bool)

(assert (=> b!5063367 (= e!3160131 (inv!77548 (right!43143 ys!41)))))

(declare-fun b!5063368 () Bool)

(declare-fun e!3160132 () Bool)

(assert (=> b!5063368 (= e!3160131 e!3160132)))

(declare-fun res!2156027 () Bool)

(assert (=> b!5063368 (= res!2156027 (not ((_ is Leaf!25848) (right!43143 ys!41))))))

(assert (=> b!5063368 (=> res!2156027 e!3160132)))

(declare-fun b!5063369 () Bool)

(assert (=> b!5063369 (= e!3160132 (inv!77549 (right!43143 ys!41)))))

(assert (= (and d!1631650 c!868916) b!5063367))

(assert (= (and d!1631650 (not c!868916)) b!5063368))

(assert (= (and b!5063368 (not res!2156027)) b!5063369))

(declare-fun m!6103220 () Bool)

(assert (=> b!5063367 m!6103220))

(declare-fun m!6103222 () Bool)

(assert (=> b!5063369 m!6103222))

(assert (=> b!5063259 d!1631650))

(declare-fun d!1631652 () Bool)

(assert (=> d!1631652 (= (inv!77545 (xs!18906 ys!41)) (<= (size!39071 (innerList!15650 (xs!18906 ys!41))) 2147483647))))

(declare-fun bs!1189774 () Bool)

(assert (= bs!1189774 d!1631652))

(declare-fun m!6103224 () Bool)

(assert (=> bs!1189774 m!6103224))

(assert (=> b!5063258 d!1631652))

(declare-fun d!1631654 () Bool)

(assert (=> d!1631654 (= (height!2139 lt!2088445) (ite ((_ is Empty!15562) lt!2088445) 0 (ite ((_ is Leaf!25848) lt!2088445) 1 (cheight!15773 lt!2088445))))))

(assert (=> b!5063257 d!1631654))

(declare-fun b!5063562 () Bool)

(declare-fun e!3160238 () Conc!15562)

(declare-fun e!3160243 () Conc!15562)

(assert (=> b!5063562 (= e!3160238 e!3160243)))

(declare-fun lt!2088475 () Conc!15562)

(declare-fun call!352671 () Conc!15562)

(assert (=> b!5063562 (= lt!2088475 call!352671)))

(declare-fun c!868976 () Bool)

(declare-fun call!352674 () Int)

(declare-fun call!352679 () Int)

(assert (=> b!5063562 (= c!868976 (= call!352674 (- call!352679 3)))))

(declare-fun b!5063563 () Bool)

(declare-fun c!868978 () Bool)

(declare-fun call!352683 () Int)

(declare-fun call!352673 () Int)

(assert (=> b!5063563 (= c!868978 (>= call!352683 call!352673))))

(declare-fun e!3160240 () Conc!15562)

(assert (=> b!5063563 (= e!3160240 e!3160238)))

(declare-fun b!5063564 () Bool)

(declare-fun call!352677 () Conc!15562)

(assert (=> b!5063564 (= e!3160238 call!352677)))

(declare-fun b!5063565 () Bool)

(declare-fun c!868977 () Bool)

(assert (=> b!5063565 (= c!868977 (>= call!352683 call!352673))))

(declare-fun e!3160241 () Conc!15562)

(assert (=> b!5063565 (= e!3160240 e!3160241)))

(declare-fun b!5063566 () Bool)

(declare-fun e!3160242 () Conc!15562)

(declare-fun e!3160237 () Conc!15562)

(assert (=> b!5063566 (= e!3160242 e!3160237)))

(declare-fun c!868971 () Bool)

(assert (=> b!5063566 (= c!868971 (= ys!41 Empty!15562))))

(declare-fun b!5063567 () Bool)

(declare-fun call!352681 () Conc!15562)

(assert (=> b!5063567 (= e!3160243 call!352681)))

(declare-fun b!5063568 () Bool)

(declare-fun e!3160245 () Conc!15562)

(declare-fun call!352684 () Conc!15562)

(assert (=> b!5063568 (= e!3160245 call!352684)))

(declare-fun b!5063569 () Bool)

(assert (=> b!5063569 (= e!3160245 e!3160240)))

(declare-fun c!868975 () Bool)

(declare-fun lt!2088473 () Int)

(assert (=> b!5063569 (= c!868975 (< lt!2088473 (- 1)))))

(declare-fun bm!352665 () Bool)

(declare-fun call!352685 () Conc!15562)

(declare-fun call!352680 () Conc!15562)

(assert (=> bm!352665 (= call!352685 call!352680)))

(declare-fun bm!352666 () Bool)

(assert (=> bm!352666 (= call!352680 (++!12785 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))) (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))

(declare-fun d!1631656 () Bool)

(declare-fun e!3160236 () Bool)

(assert (=> d!1631656 e!3160236))

(declare-fun res!2156112 () Bool)

(assert (=> d!1631656 (=> (not res!2156112) (not e!3160236))))

(assert (=> d!1631656 (= res!2156112 (appendAssocInst!908 (right!43143 (right!43143 xs!286)) ys!41))))

(declare-fun lt!2088474 () Conc!15562)

(assert (=> d!1631656 (= lt!2088474 e!3160242)))

(declare-fun c!868974 () Bool)

(assert (=> d!1631656 (= c!868974 (= (right!43143 (right!43143 xs!286)) Empty!15562))))

(declare-fun e!3160239 () Bool)

(assert (=> d!1631656 e!3160239))

(declare-fun res!2156115 () Bool)

(assert (=> d!1631656 (=> (not res!2156115) (not e!3160239))))

(assert (=> d!1631656 (= res!2156115 (isBalanced!4424 (right!43143 (right!43143 xs!286))))))

(assert (=> d!1631656 (= (++!12785 (right!43143 (right!43143 xs!286)) ys!41) lt!2088474)))

(declare-fun b!5063570 () Bool)

(declare-fun e!3160244 () Conc!15562)

(declare-fun call!352675 () Conc!15562)

(assert (=> b!5063570 (= e!3160244 call!352675)))

(declare-fun bm!352667 () Bool)

(declare-fun call!352672 () Conc!15562)

(assert (=> bm!352667 (= call!352675 call!352672)))

(declare-fun bm!352668 () Bool)

(declare-fun call!352670 () Conc!15562)

(assert (=> bm!352668 (= call!352677 call!352670)))

(declare-fun b!5063571 () Bool)

(assert (=> b!5063571 (= e!3160244 call!352675)))

(declare-fun bm!352669 () Bool)

(assert (=> bm!352669 (= call!352681 call!352677)))

(declare-fun b!5063572 () Bool)

(assert (=> b!5063572 (= e!3160243 call!352681)))

(declare-fun b!5063573 () Bool)

(declare-fun res!2156113 () Bool)

(assert (=> b!5063573 (=> (not res!2156113) (not e!3160236))))

(assert (=> b!5063573 (= res!2156113 (>= (height!2139 lt!2088474) (max!0 (height!2139 (right!43143 (right!43143 xs!286))) (height!2139 ys!41))))))

(declare-fun b!5063574 () Bool)

(assert (=> b!5063574 (= e!3160237 (right!43143 (right!43143 xs!286)))))

(declare-fun b!5063575 () Bool)

(assert (=> b!5063575 (= e!3160241 call!352672)))

(declare-fun c!868972 () Bool)

(declare-fun bm!352670 () Bool)

(declare-fun c!868973 () Bool)

(declare-fun lt!2088476 () Conc!15562)

(assert (=> bm!352670 (= call!352684 (<>!394 (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41))))) (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41))))))))

(declare-fun bm!352671 () Bool)

(assert (=> bm!352671 (= call!352673 (height!2139 (ite c!868975 (right!43143 (right!43143 (right!43143 xs!286))) (left!42813 ys!41))))))

(declare-fun bm!352672 () Bool)

(assert (=> bm!352672 (= call!352674 (height!2139 (ite c!868975 lt!2088475 ys!41)))))

(declare-fun b!5063576 () Bool)

(assert (=> b!5063576 (= c!868972 (and (<= (- 1) lt!2088473) (<= lt!2088473 1)))))

(assert (=> b!5063576 (= lt!2088473 (- (height!2139 ys!41) (height!2139 (right!43143 (right!43143 xs!286)))))))

(assert (=> b!5063576 (= e!3160237 e!3160245)))

(declare-fun bm!352673 () Bool)

(declare-fun call!352676 () Conc!15562)

(assert (=> bm!352673 (= call!352676 call!352684)))

(declare-fun bm!352674 () Bool)

(assert (=> bm!352674 (= call!352683 (height!2139 (ite c!868975 (left!42813 (right!43143 (right!43143 xs!286))) (right!43143 ys!41))))))

(declare-fun bm!352675 () Bool)

(declare-fun call!352682 () Conc!15562)

(assert (=> bm!352675 (= call!352682 call!352676)))

(declare-fun bm!352676 () Bool)

(assert (=> bm!352676 (= call!352672 call!352670)))

(declare-fun b!5063577 () Bool)

(declare-fun res!2156116 () Bool)

(assert (=> b!5063577 (=> (not res!2156116) (not e!3160236))))

(assert (=> b!5063577 (= res!2156116 (isBalanced!4424 lt!2088474))))

(declare-fun bm!352677 () Bool)

(assert (=> bm!352677 (= call!352671 call!352680)))

(declare-fun bm!352678 () Bool)

(assert (=> bm!352678 (= call!352679 (height!2139 (ite c!868975 (right!43143 (right!43143 xs!286)) lt!2088476)))))

(declare-fun b!5063578 () Bool)

(assert (=> b!5063578 (= e!3160242 ys!41)))

(declare-fun b!5063579 () Bool)

(declare-fun res!2156114 () Bool)

(assert (=> b!5063579 (=> (not res!2156114) (not e!3160236))))

(assert (=> b!5063579 (= res!2156114 (<= (height!2139 lt!2088474) (+ (max!0 (height!2139 (right!43143 (right!43143 xs!286))) (height!2139 ys!41)) 1)))))

(declare-fun bm!352679 () Bool)

(declare-fun call!352678 () Conc!15562)

(assert (=> bm!352679 (= call!352670 (<>!394 (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476))) (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678))))))

(declare-fun bm!352680 () Bool)

(assert (=> bm!352680 (= call!352678 call!352676)))

(declare-fun b!5063580 () Bool)

(assert (=> b!5063580 (= e!3160241 e!3160244)))

(assert (=> b!5063580 (= lt!2088476 call!352685)))

(assert (=> b!5063580 (= c!868973 (= call!352679 (- call!352674 3)))))

(declare-fun b!5063581 () Bool)

(assert (=> b!5063581 (= e!3160236 (= (list!18985 lt!2088474) (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 ys!41))))))

(declare-fun b!5063582 () Bool)

(assert (=> b!5063582 (= e!3160239 (isBalanced!4424 ys!41))))

(assert (= (and d!1631656 res!2156115) b!5063582))

(assert (= (and d!1631656 c!868974) b!5063578))

(assert (= (and d!1631656 (not c!868974)) b!5063566))

(assert (= (and b!5063566 c!868971) b!5063574))

(assert (= (and b!5063566 (not c!868971)) b!5063576))

(assert (= (and b!5063576 c!868972) b!5063568))

(assert (= (and b!5063576 (not c!868972)) b!5063569))

(assert (= (and b!5063569 c!868975) b!5063563))

(assert (= (and b!5063569 (not c!868975)) b!5063565))

(assert (= (and b!5063563 c!868978) b!5063564))

(assert (= (and b!5063563 (not c!868978)) b!5063562))

(assert (= (and b!5063562 c!868976) b!5063572))

(assert (= (and b!5063562 (not c!868976)) b!5063567))

(assert (= (or b!5063572 b!5063567) bm!352675))

(assert (= (or b!5063572 b!5063567) bm!352669))

(assert (= (or b!5063564 b!5063562) bm!352677))

(assert (= (or b!5063564 bm!352669) bm!352668))

(assert (= (and b!5063565 c!868977) b!5063575))

(assert (= (and b!5063565 (not c!868977)) b!5063580))

(assert (= (and b!5063580 c!868973) b!5063570))

(assert (= (and b!5063580 (not c!868973)) b!5063571))

(assert (= (or b!5063570 b!5063571) bm!352680))

(assert (= (or b!5063570 b!5063571) bm!352667))

(assert (= (or b!5063575 b!5063580) bm!352665))

(assert (= (or b!5063575 bm!352667) bm!352676))

(assert (= (or bm!352668 bm!352676) bm!352679))

(assert (= (or b!5063562 b!5063580) bm!352672))

(assert (= (or b!5063562 b!5063580) bm!352678))

(assert (= (or b!5063563 b!5063565) bm!352674))

(assert (= (or b!5063563 b!5063565) bm!352671))

(assert (= (or bm!352677 bm!352665) bm!352666))

(assert (= (or bm!352675 bm!352680) bm!352673))

(assert (= (or b!5063568 bm!352673) bm!352670))

(assert (= (and d!1631656 res!2156112) b!5063577))

(assert (= (and b!5063577 res!2156116) b!5063579))

(assert (= (and b!5063579 res!2156114) b!5063573))

(assert (= (and b!5063573 res!2156113) b!5063581))

(declare-fun m!6103362 () Bool)

(assert (=> b!5063581 m!6103362))

(declare-fun m!6103364 () Bool)

(assert (=> b!5063581 m!6103364))

(assert (=> b!5063581 m!6103082))

(assert (=> b!5063581 m!6103364))

(assert (=> b!5063581 m!6103082))

(declare-fun m!6103366 () Bool)

(assert (=> b!5063581 m!6103366))

(declare-fun m!6103368 () Bool)

(assert (=> b!5063573 m!6103368))

(declare-fun m!6103370 () Bool)

(assert (=> b!5063573 m!6103370))

(assert (=> b!5063573 m!6103094))

(assert (=> b!5063573 m!6103370))

(assert (=> b!5063573 m!6103094))

(declare-fun m!6103372 () Bool)

(assert (=> b!5063573 m!6103372))

(declare-fun m!6103374 () Bool)

(assert (=> bm!352679 m!6103374))

(declare-fun m!6103376 () Bool)

(assert (=> bm!352674 m!6103376))

(declare-fun m!6103378 () Bool)

(assert (=> bm!352666 m!6103378))

(assert (=> b!5063576 m!6103094))

(assert (=> b!5063576 m!6103370))

(declare-fun m!6103380 () Bool)

(assert (=> bm!352678 m!6103380))

(declare-fun m!6103382 () Bool)

(assert (=> d!1631656 m!6103382))

(declare-fun m!6103384 () Bool)

(assert (=> d!1631656 m!6103384))

(assert (=> b!5063579 m!6103368))

(assert (=> b!5063579 m!6103370))

(assert (=> b!5063579 m!6103094))

(assert (=> b!5063579 m!6103370))

(assert (=> b!5063579 m!6103094))

(assert (=> b!5063579 m!6103372))

(assert (=> b!5063582 m!6103104))

(declare-fun m!6103386 () Bool)

(assert (=> bm!352672 m!6103386))

(declare-fun m!6103388 () Bool)

(assert (=> bm!352671 m!6103388))

(declare-fun m!6103390 () Bool)

(assert (=> b!5063577 m!6103390))

(declare-fun m!6103392 () Bool)

(assert (=> bm!352670 m!6103392))

(assert (=> b!5063257 d!1631656))

(declare-fun d!1631686 () Bool)

(assert (=> d!1631686 (= (height!2139 lt!2088442) (ite ((_ is Empty!15562) lt!2088442) 0 (ite ((_ is Leaf!25848) lt!2088442) 1 (cheight!15773 lt!2088442))))))

(assert (=> b!5063255 d!1631686))

(declare-fun d!1631688 () Bool)

(assert (=> d!1631688 (= (max!0 lt!2088444 lt!2088443) (ite (< lt!2088444 lt!2088443) lt!2088443 lt!2088444))))

(assert (=> b!5063255 d!1631688))

(declare-fun b!5063651 () Bool)

(declare-fun e!3160296 () Bool)

(declare-fun appendAssoc!300 (List!58556 List!58556 List!58556) Bool)

(assert (=> b!5063651 (= e!3160296 (appendAssoc!300 (list!18985 (left!42813 xs!286)) (list!18985 (left!42813 (right!43143 xs!286))) (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 ys!41))))))

(declare-fun b!5063652 () Bool)

(declare-fun e!3160292 () Bool)

(assert (=> b!5063652 (= e!3160292 e!3160296)))

(declare-fun res!2156141 () Bool)

(assert (=> b!5063652 (=> (not res!2156141) (not e!3160296))))

(assert (=> b!5063652 (= res!2156141 (appendAssoc!300 (list!18985 (left!42813 (right!43143 xs!286))) (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 ys!41)))))

(declare-fun b!5063653 () Bool)

(declare-fun e!3160294 () Bool)

(declare-fun e!3160299 () Bool)

(assert (=> b!5063653 (= e!3160294 e!3160299)))

(declare-fun res!2156146 () Bool)

(assert (=> b!5063653 (=> (not res!2156146) (not e!3160299))))

(assert (=> b!5063653 (= res!2156146 (appendAssoc!300 (list!18985 (left!42813 xs!286)) (list!18985 (right!43143 xs!286)) (list!18985 ys!41)))))

(declare-fun b!5063654 () Bool)

(declare-fun e!3160300 () Bool)

(declare-fun e!3160297 () Bool)

(assert (=> b!5063654 (= e!3160300 e!3160297)))

(declare-fun res!2156149 () Bool)

(assert (=> b!5063654 (=> (not res!2156149) (not e!3160297))))

(assert (=> b!5063654 (= res!2156149 (appendAssoc!300 (list!18985 xs!286) (list!18985 (left!42813 ys!41)) (list!18985 (right!43143 ys!41))))))

(declare-fun b!5063655 () Bool)

(declare-fun e!3160295 () Bool)

(assert (=> b!5063655 (= e!3160297 e!3160295)))

(declare-fun res!2156144 () Bool)

(assert (=> b!5063655 (=> res!2156144 e!3160295)))

(assert (=> b!5063655 (= res!2156144 (not ((_ is Node!15562) (left!42813 ys!41))))))

(declare-fun b!5063656 () Bool)

(declare-fun e!3160298 () Bool)

(assert (=> b!5063656 (= e!3160298 e!3160300)))

(declare-fun res!2156147 () Bool)

(assert (=> b!5063656 (=> res!2156147 e!3160300)))

(assert (=> b!5063656 (= res!2156147 (not ((_ is Node!15562) ys!41)))))

(declare-fun b!5063657 () Bool)

(assert (=> b!5063657 (= e!3160299 e!3160292)))

(declare-fun res!2156143 () Bool)

(assert (=> b!5063657 (=> res!2156143 e!3160292)))

(assert (=> b!5063657 (= res!2156143 (not ((_ is Node!15562) (right!43143 xs!286))))))

(declare-fun d!1631694 () Bool)

(assert (=> d!1631694 e!3160298))

(declare-fun res!2156145 () Bool)

(assert (=> d!1631694 (=> (not res!2156145) (not e!3160298))))

(assert (=> d!1631694 (= res!2156145 e!3160294)))

(declare-fun res!2156142 () Bool)

(assert (=> d!1631694 (=> res!2156142 e!3160294)))

(assert (=> d!1631694 (= res!2156142 (not ((_ is Node!15562) xs!286)))))

(assert (=> d!1631694 (= (appendAssocInst!908 xs!286 ys!41) true)))

(declare-fun b!5063658 () Bool)

(declare-fun e!3160293 () Bool)

(assert (=> b!5063658 (= e!3160295 e!3160293)))

(declare-fun res!2156148 () Bool)

(assert (=> b!5063658 (=> (not res!2156148) (not e!3160293))))

(assert (=> b!5063658 (= res!2156148 (appendAssoc!300 (list!18985 xs!286) (list!18985 (left!42813 (left!42813 ys!41))) (list!18985 (right!43143 (left!42813 ys!41)))))))

(declare-fun b!5063659 () Bool)

(assert (=> b!5063659 (= e!3160293 (appendAssoc!300 (++!12784 (list!18985 xs!286) (list!18985 (left!42813 (left!42813 ys!41)))) (list!18985 (right!43143 (left!42813 ys!41))) (list!18985 (right!43143 ys!41))))))

(assert (= (and d!1631694 (not res!2156142)) b!5063653))

(assert (= (and b!5063653 res!2156146) b!5063657))

(assert (= (and b!5063657 (not res!2156143)) b!5063652))

(assert (= (and b!5063652 res!2156141) b!5063651))

(assert (= (and d!1631694 res!2156145) b!5063656))

(assert (= (and b!5063656 (not res!2156147)) b!5063654))

(assert (= (and b!5063654 res!2156149) b!5063655))

(assert (= (and b!5063655 (not res!2156144)) b!5063658))

(assert (= (and b!5063658 res!2156148) b!5063659))

(assert (=> b!5063658 m!6103080))

(declare-fun m!6103442 () Bool)

(assert (=> b!5063658 m!6103442))

(declare-fun m!6103444 () Bool)

(assert (=> b!5063658 m!6103444))

(assert (=> b!5063658 m!6103080))

(assert (=> b!5063658 m!6103442))

(assert (=> b!5063658 m!6103444))

(declare-fun m!6103446 () Bool)

(assert (=> b!5063658 m!6103446))

(declare-fun m!6103448 () Bool)

(assert (=> b!5063652 m!6103448))

(assert (=> b!5063652 m!6103364))

(assert (=> b!5063652 m!6103082))

(assert (=> b!5063652 m!6103448))

(assert (=> b!5063652 m!6103364))

(assert (=> b!5063652 m!6103082))

(declare-fun m!6103450 () Bool)

(assert (=> b!5063652 m!6103450))

(assert (=> b!5063659 m!6103080))

(assert (=> b!5063659 m!6103080))

(assert (=> b!5063659 m!6103442))

(declare-fun m!6103452 () Bool)

(assert (=> b!5063659 m!6103452))

(assert (=> b!5063659 m!6103192))

(assert (=> b!5063659 m!6103452))

(assert (=> b!5063659 m!6103444))

(assert (=> b!5063659 m!6103192))

(declare-fun m!6103454 () Bool)

(assert (=> b!5063659 m!6103454))

(assert (=> b!5063659 m!6103444))

(assert (=> b!5063659 m!6103442))

(assert (=> b!5063651 m!6103082))

(assert (=> b!5063651 m!6103364))

(assert (=> b!5063651 m!6103182))

(assert (=> b!5063651 m!6103364))

(assert (=> b!5063651 m!6103082))

(assert (=> b!5063651 m!6103366))

(assert (=> b!5063651 m!6103448))

(assert (=> b!5063651 m!6103182))

(assert (=> b!5063651 m!6103448))

(assert (=> b!5063651 m!6103366))

(declare-fun m!6103456 () Bool)

(assert (=> b!5063651 m!6103456))

(assert (=> b!5063653 m!6103182))

(assert (=> b!5063653 m!6103184))

(assert (=> b!5063653 m!6103082))

(assert (=> b!5063653 m!6103182))

(assert (=> b!5063653 m!6103184))

(assert (=> b!5063653 m!6103082))

(declare-fun m!6103458 () Bool)

(assert (=> b!5063653 m!6103458))

(assert (=> b!5063654 m!6103080))

(assert (=> b!5063654 m!6103190))

(assert (=> b!5063654 m!6103192))

(assert (=> b!5063654 m!6103080))

(assert (=> b!5063654 m!6103190))

(assert (=> b!5063654 m!6103192))

(declare-fun m!6103460 () Bool)

(assert (=> b!5063654 m!6103460))

(assert (=> b!5063265 d!1631694))

(declare-fun b!5063671 () Bool)

(declare-fun e!3160306 () Conc!15562)

(declare-fun size!39073 (Conc!15562) Int)

(assert (=> b!5063671 (= e!3160306 (Node!15562 (left!42813 xs!286) (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445) (+ (size!39073 (left!42813 xs!286)) (size!39073 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))) (+ (max!0 (height!2139 (left!42813 xs!286)) (height!2139 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))) 1)))))

(declare-fun d!1631698 () Bool)

(declare-fun lt!2088482 () Conc!15562)

(assert (=> d!1631698 (= (list!18985 lt!2088482) (++!12784 (list!18985 (left!42813 xs!286)) (list!18985 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))))))

(declare-fun e!3160305 () Conc!15562)

(assert (=> d!1631698 (= lt!2088482 e!3160305)))

(declare-fun c!868993 () Bool)

(assert (=> d!1631698 (= c!868993 (= (left!42813 xs!286) Empty!15562))))

(assert (=> d!1631698 (= (<>!394 (left!42813 xs!286) (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)) lt!2088482)))

(declare-fun b!5063668 () Bool)

(assert (=> b!5063668 (= e!3160305 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))))

(declare-fun b!5063670 () Bool)

(assert (=> b!5063670 (= e!3160306 (left!42813 xs!286))))

(declare-fun b!5063669 () Bool)

(assert (=> b!5063669 (= e!3160305 e!3160306)))

(declare-fun c!868992 () Bool)

(assert (=> b!5063669 (= c!868992 (= (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445) Empty!15562))))

(assert (= (and d!1631698 c!868993) b!5063668))

(assert (= (and d!1631698 (not c!868993)) b!5063669))

(assert (= (and b!5063669 c!868992) b!5063670))

(assert (= (and b!5063669 (not c!868992)) b!5063671))

(declare-fun m!6103462 () Bool)

(assert (=> b!5063671 m!6103462))

(assert (=> b!5063671 m!6103068))

(declare-fun m!6103464 () Bool)

(assert (=> b!5063671 m!6103464))

(assert (=> b!5063671 m!6103068))

(declare-fun m!6103466 () Bool)

(assert (=> b!5063671 m!6103466))

(assert (=> b!5063671 m!6103062))

(assert (=> b!5063671 m!6103466))

(declare-fun m!6103468 () Bool)

(assert (=> b!5063671 m!6103468))

(assert (=> b!5063671 m!6103062))

(declare-fun m!6103470 () Bool)

(assert (=> d!1631698 m!6103470))

(assert (=> d!1631698 m!6103182))

(assert (=> d!1631698 m!6103068))

(declare-fun m!6103472 () Bool)

(assert (=> d!1631698 m!6103472))

(assert (=> d!1631698 m!6103182))

(assert (=> d!1631698 m!6103472))

(declare-fun m!6103474 () Bool)

(assert (=> d!1631698 m!6103474))

(assert (=> b!5063265 d!1631698))

(declare-fun b!5063675 () Bool)

(declare-fun e!3160308 () Conc!15562)

(assert (=> b!5063675 (= e!3160308 (Node!15562 (left!42813 (right!43143 xs!286)) lt!2088445 (+ (size!39073 (left!42813 (right!43143 xs!286))) (size!39073 lt!2088445)) (+ (max!0 (height!2139 (left!42813 (right!43143 xs!286))) (height!2139 lt!2088445)) 1)))))

(declare-fun d!1631700 () Bool)

(declare-fun lt!2088483 () Conc!15562)

(assert (=> d!1631700 (= (list!18985 lt!2088483) (++!12784 (list!18985 (left!42813 (right!43143 xs!286))) (list!18985 lt!2088445)))))

(declare-fun e!3160307 () Conc!15562)

(assert (=> d!1631700 (= lt!2088483 e!3160307)))

(declare-fun c!868995 () Bool)

(assert (=> d!1631700 (= c!868995 (= (left!42813 (right!43143 xs!286)) Empty!15562))))

(assert (=> d!1631700 (= (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445) lt!2088483)))

(declare-fun b!5063672 () Bool)

(assert (=> b!5063672 (= e!3160307 lt!2088445)))

(declare-fun b!5063674 () Bool)

(assert (=> b!5063674 (= e!3160308 (left!42813 (right!43143 xs!286)))))

(declare-fun b!5063673 () Bool)

(assert (=> b!5063673 (= e!3160307 e!3160308)))

(declare-fun c!868994 () Bool)

(assert (=> b!5063673 (= c!868994 (= lt!2088445 Empty!15562))))

(assert (= (and d!1631700 c!868995) b!5063672))

(assert (= (and d!1631700 (not c!868995)) b!5063673))

(assert (= (and b!5063673 c!868994) b!5063674))

(assert (= (and b!5063673 (not c!868994)) b!5063675))

(declare-fun m!6103476 () Bool)

(assert (=> b!5063675 m!6103476))

(declare-fun m!6103478 () Bool)

(assert (=> b!5063675 m!6103478))

(assert (=> b!5063675 m!6103072))

(declare-fun m!6103480 () Bool)

(assert (=> b!5063675 m!6103480))

(assert (=> b!5063675 m!6103072))

(declare-fun m!6103482 () Bool)

(assert (=> b!5063675 m!6103482))

(assert (=> b!5063675 m!6103480))

(declare-fun m!6103484 () Bool)

(assert (=> d!1631700 m!6103484))

(assert (=> d!1631700 m!6103448))

(declare-fun m!6103486 () Bool)

(assert (=> d!1631700 m!6103486))

(assert (=> d!1631700 m!6103448))

(assert (=> d!1631700 m!6103486))

(declare-fun m!6103488 () Bool)

(assert (=> d!1631700 m!6103488))

(assert (=> b!5063265 d!1631700))

(declare-fun b!5063684 () Bool)

(declare-fun tp!1414494 () Bool)

(declare-fun tp!1414496 () Bool)

(declare-fun e!3160313 () Bool)

(assert (=> b!5063684 (= e!3160313 (and (inv!77544 (left!42813 (left!42813 ys!41))) tp!1414496 (inv!77544 (right!43143 (left!42813 ys!41))) tp!1414494))))

(declare-fun b!5063686 () Bool)

(declare-fun e!3160314 () Bool)

(declare-fun tp!1414495 () Bool)

(assert (=> b!5063686 (= e!3160314 tp!1414495)))

(declare-fun b!5063685 () Bool)

(assert (=> b!5063685 (= e!3160313 (and (inv!77545 (xs!18906 (left!42813 ys!41))) e!3160314))))

(assert (=> b!5063259 (= tp!1414461 (and (inv!77544 (left!42813 ys!41)) e!3160313))))

(assert (= (and b!5063259 ((_ is Node!15562) (left!42813 ys!41))) b!5063684))

(assert (= b!5063685 b!5063686))

(assert (= (and b!5063259 ((_ is Leaf!25848) (left!42813 ys!41))) b!5063685))

(declare-fun m!6103490 () Bool)

(assert (=> b!5063684 m!6103490))

(declare-fun m!6103492 () Bool)

(assert (=> b!5063684 m!6103492))

(declare-fun m!6103494 () Bool)

(assert (=> b!5063685 m!6103494))

(assert (=> b!5063259 m!6103106))

(declare-fun tp!1414499 () Bool)

(declare-fun b!5063687 () Bool)

(declare-fun tp!1414497 () Bool)

(declare-fun e!3160315 () Bool)

(assert (=> b!5063687 (= e!3160315 (and (inv!77544 (left!42813 (right!43143 ys!41))) tp!1414499 (inv!77544 (right!43143 (right!43143 ys!41))) tp!1414497))))

(declare-fun b!5063689 () Bool)

(declare-fun e!3160316 () Bool)

(declare-fun tp!1414498 () Bool)

(assert (=> b!5063689 (= e!3160316 tp!1414498)))

(declare-fun b!5063688 () Bool)

(assert (=> b!5063688 (= e!3160315 (and (inv!77545 (xs!18906 (right!43143 ys!41))) e!3160316))))

(assert (=> b!5063259 (= tp!1414463 (and (inv!77544 (right!43143 ys!41)) e!3160315))))

(assert (= (and b!5063259 ((_ is Node!15562) (right!43143 ys!41))) b!5063687))

(assert (= b!5063688 b!5063689))

(assert (= (and b!5063259 ((_ is Leaf!25848) (right!43143 ys!41))) b!5063688))

(declare-fun m!6103496 () Bool)

(assert (=> b!5063687 m!6103496))

(declare-fun m!6103498 () Bool)

(assert (=> b!5063687 m!6103498))

(declare-fun m!6103500 () Bool)

(assert (=> b!5063688 m!6103500))

(assert (=> b!5063259 m!6103108))

(declare-fun b!5063694 () Bool)

(declare-fun e!3160319 () Bool)

(declare-fun tp_is_empty!37047 () Bool)

(declare-fun tp!1414502 () Bool)

(assert (=> b!5063694 (= e!3160319 (and tp_is_empty!37047 tp!1414502))))

(assert (=> b!5063254 (= tp!1414462 e!3160319)))

(assert (= (and b!5063254 ((_ is Cons!58432) (innerList!15650 (xs!18906 xs!286)))) b!5063694))

(declare-fun tp!1414503 () Bool)

(declare-fun e!3160320 () Bool)

(declare-fun b!5063695 () Bool)

(declare-fun tp!1414505 () Bool)

(assert (=> b!5063695 (= e!3160320 (and (inv!77544 (left!42813 (left!42813 xs!286))) tp!1414505 (inv!77544 (right!43143 (left!42813 xs!286))) tp!1414503))))

(declare-fun b!5063697 () Bool)

(declare-fun e!3160321 () Bool)

(declare-fun tp!1414504 () Bool)

(assert (=> b!5063697 (= e!3160321 tp!1414504)))

(declare-fun b!5063696 () Bool)

(assert (=> b!5063696 (= e!3160320 (and (inv!77545 (xs!18906 (left!42813 xs!286))) e!3160321))))

(assert (=> b!5063252 (= tp!1414464 (and (inv!77544 (left!42813 xs!286)) e!3160320))))

(assert (= (and b!5063252 ((_ is Node!15562) (left!42813 xs!286))) b!5063695))

(assert (= b!5063696 b!5063697))

(assert (= (and b!5063252 ((_ is Leaf!25848) (left!42813 xs!286))) b!5063696))

(declare-fun m!6103502 () Bool)

(assert (=> b!5063695 m!6103502))

(declare-fun m!6103504 () Bool)

(assert (=> b!5063695 m!6103504))

(declare-fun m!6103506 () Bool)

(assert (=> b!5063696 m!6103506))

(assert (=> b!5063252 m!6103100))

(declare-fun b!5063698 () Bool)

(declare-fun tp!1414506 () Bool)

(declare-fun e!3160322 () Bool)

(declare-fun tp!1414508 () Bool)

(assert (=> b!5063698 (= e!3160322 (and (inv!77544 (left!42813 (right!43143 xs!286))) tp!1414508 (inv!77544 (right!43143 (right!43143 xs!286))) tp!1414506))))

(declare-fun b!5063700 () Bool)

(declare-fun e!3160323 () Bool)

(declare-fun tp!1414507 () Bool)

(assert (=> b!5063700 (= e!3160323 tp!1414507)))

(declare-fun b!5063699 () Bool)

(assert (=> b!5063699 (= e!3160322 (and (inv!77545 (xs!18906 (right!43143 xs!286))) e!3160323))))

(assert (=> b!5063252 (= tp!1414465 (and (inv!77544 (right!43143 xs!286)) e!3160322))))

(assert (= (and b!5063252 ((_ is Node!15562) (right!43143 xs!286))) b!5063698))

(assert (= b!5063699 b!5063700))

(assert (= (and b!5063252 ((_ is Leaf!25848) (right!43143 xs!286))) b!5063699))

(declare-fun m!6103508 () Bool)

(assert (=> b!5063698 m!6103508))

(declare-fun m!6103510 () Bool)

(assert (=> b!5063698 m!6103510))

(declare-fun m!6103512 () Bool)

(assert (=> b!5063699 m!6103512))

(assert (=> b!5063252 m!6103102))

(declare-fun b!5063701 () Bool)

(declare-fun e!3160324 () Bool)

(declare-fun tp!1414509 () Bool)

(assert (=> b!5063701 (= e!3160324 (and tp_is_empty!37047 tp!1414509))))

(assert (=> b!5063256 (= tp!1414460 e!3160324)))

(assert (= (and b!5063256 ((_ is Cons!58432) (innerList!15650 (xs!18906 ys!41)))) b!5063701))

(check-sat (not b!5063330) (not b!5063695) (not b!5063360) (not b!5063277) (not b!5063369) (not b!5063581) (not b!5063355) (not bm!352670) (not b!5063346) (not b!5063361) (not b!5063653) (not b!5063675) (not b!5063686) (not d!1631634) (not b!5063687) (not b!5063654) (not b!5063318) (not b!5063579) (not bm!352666) (not b!5063699) (not b!5063652) (not b!5063354) (not b!5063341) (not b!5063342) (not b!5063366) (not b!5063313) (not b!5063696) (not b!5063573) (not b!5063274) (not b!5063700) (not b!5063582) (not bm!352671) (not b!5063331) (not d!1631700) (not b!5063576) (not b!5063308) (not b!5063347) (not b!5063671) (not d!1631652) (not b!5063685) (not b!5063658) (not b!5063319) (not b!5063356) (not b!5063275) (not b!5063357) (not b!5063310) (not bm!352672) (not d!1631656) (not b!5063367) (not b!5063577) (not b!5063684) (not b!5063701) (not b!5063651) (not b!5063358) (not b!5063316) (not b!5063697) (not b!5063689) (not b!5063259) (not b!5063317) (not b!5063353) tp_is_empty!37047 (not b!5063309) (not b!5063688) (not b!5063364) (not b!5063311) (not b!5063312) (not b!5063694) (not d!1631646) (not bm!352679) (not b!5063350) (not bm!352674) (not b!5063363) (not b!5063351) (not d!1631698) (not b!5063698) (not b!5063352) (not b!5063315) (not b!5063659) (not b!5063252) (not bm!352678) (not b!5063314) (not b!5063272))
(check-sat)
(get-model)

(declare-fun d!1631730 () Bool)

(assert (=> d!1631730 (= (inv!77545 (xs!18906 (right!43143 ys!41))) (<= (size!39071 (innerList!15650 (xs!18906 (right!43143 ys!41)))) 2147483647))))

(declare-fun bs!1189779 () Bool)

(assert (= bs!1189779 d!1631730))

(declare-fun m!6103542 () Bool)

(assert (=> bs!1189779 m!6103542))

(assert (=> b!5063688 d!1631730))

(declare-fun d!1631732 () Bool)

(declare-fun lt!2088495 () Bool)

(declare-fun isEmpty!31628 (List!58556) Bool)

(assert (=> d!1631732 (= lt!2088495 (isEmpty!31628 (list!18985 (right!43143 ys!41))))))

(assert (=> d!1631732 (= lt!2088495 (= (size!39073 (right!43143 ys!41)) 0))))

(assert (=> d!1631732 (= (isEmpty!31626 (right!43143 ys!41)) lt!2088495)))

(declare-fun bs!1189781 () Bool)

(assert (= bs!1189781 d!1631732))

(assert (=> bs!1189781 m!6103192))

(assert (=> bs!1189781 m!6103192))

(declare-fun m!6103592 () Bool)

(assert (=> bs!1189781 m!6103592))

(declare-fun m!6103594 () Bool)

(assert (=> bs!1189781 m!6103594))

(assert (=> b!5063311 d!1631732))

(declare-fun d!1631746 () Bool)

(assert (=> d!1631746 (= (height!2139 (left!42813 ys!41)) (ite ((_ is Empty!15562) (left!42813 ys!41)) 0 (ite ((_ is Leaf!25848) (left!42813 ys!41)) 1 (cheight!15773 (left!42813 ys!41)))))))

(assert (=> b!5063309 d!1631746))

(declare-fun d!1631750 () Bool)

(assert (=> d!1631750 (= (height!2139 (right!43143 ys!41)) (ite ((_ is Empty!15562) (right!43143 ys!41)) 0 (ite ((_ is Leaf!25848) (right!43143 ys!41)) 1 (cheight!15773 (right!43143 ys!41)))))))

(assert (=> b!5063309 d!1631750))

(declare-fun d!1631754 () Bool)

(assert (=> d!1631754 (= (height!2139 (ite c!868975 (left!42813 (right!43143 (right!43143 xs!286))) (right!43143 ys!41))) (ite ((_ is Empty!15562) (ite c!868975 (left!42813 (right!43143 (right!43143 xs!286))) (right!43143 ys!41))) 0 (ite ((_ is Leaf!25848) (ite c!868975 (left!42813 (right!43143 (right!43143 xs!286))) (right!43143 ys!41))) 1 (cheight!15773 (ite c!868975 (left!42813 (right!43143 (right!43143 xs!286))) (right!43143 ys!41))))))))

(assert (=> bm!352674 d!1631754))

(assert (=> b!5063259 d!1631648))

(assert (=> b!5063259 d!1631650))

(declare-fun b!5063740 () Bool)

(declare-fun e!3160346 () Bool)

(assert (=> b!5063740 (= e!3160346 (appendAssoc!300 (list!18985 (left!42813 (right!43143 (right!43143 xs!286)))) (list!18985 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (++!12784 (list!18985 (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (list!18985 ys!41))))))

(declare-fun b!5063741 () Bool)

(declare-fun e!3160342 () Bool)

(assert (=> b!5063741 (= e!3160342 e!3160346)))

(declare-fun res!2156176 () Bool)

(assert (=> b!5063741 (=> (not res!2156176) (not e!3160346))))

(assert (=> b!5063741 (= res!2156176 (appendAssoc!300 (list!18985 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (list!18985 (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (list!18985 ys!41)))))

(declare-fun b!5063742 () Bool)

(declare-fun e!3160344 () Bool)

(declare-fun e!3160349 () Bool)

(assert (=> b!5063742 (= e!3160344 e!3160349)))

(declare-fun res!2156181 () Bool)

(assert (=> b!5063742 (=> (not res!2156181) (not e!3160349))))

(assert (=> b!5063742 (= res!2156181 (appendAssoc!300 (list!18985 (left!42813 (right!43143 (right!43143 xs!286)))) (list!18985 (right!43143 (right!43143 (right!43143 xs!286)))) (list!18985 ys!41)))))

(declare-fun b!5063743 () Bool)

(declare-fun e!3160350 () Bool)

(declare-fun e!3160347 () Bool)

(assert (=> b!5063743 (= e!3160350 e!3160347)))

(declare-fun res!2156184 () Bool)

(assert (=> b!5063743 (=> (not res!2156184) (not e!3160347))))

(assert (=> b!5063743 (= res!2156184 (appendAssoc!300 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 (left!42813 ys!41)) (list!18985 (right!43143 ys!41))))))

(declare-fun b!5063744 () Bool)

(declare-fun e!3160345 () Bool)

(assert (=> b!5063744 (= e!3160347 e!3160345)))

(declare-fun res!2156179 () Bool)

(assert (=> b!5063744 (=> res!2156179 e!3160345)))

(assert (=> b!5063744 (= res!2156179 (not ((_ is Node!15562) (left!42813 ys!41))))))

(declare-fun b!5063745 () Bool)

(declare-fun e!3160348 () Bool)

(assert (=> b!5063745 (= e!3160348 e!3160350)))

(declare-fun res!2156182 () Bool)

(assert (=> b!5063745 (=> res!2156182 e!3160350)))

(assert (=> b!5063745 (= res!2156182 (not ((_ is Node!15562) ys!41)))))

(declare-fun b!5063746 () Bool)

(assert (=> b!5063746 (= e!3160349 e!3160342)))

(declare-fun res!2156178 () Bool)

(assert (=> b!5063746 (=> res!2156178 e!3160342)))

(assert (=> b!5063746 (= res!2156178 (not ((_ is Node!15562) (right!43143 (right!43143 (right!43143 xs!286))))))))

(declare-fun d!1631756 () Bool)

(assert (=> d!1631756 e!3160348))

(declare-fun res!2156180 () Bool)

(assert (=> d!1631756 (=> (not res!2156180) (not e!3160348))))

(assert (=> d!1631756 (= res!2156180 e!3160344)))

(declare-fun res!2156177 () Bool)

(assert (=> d!1631756 (=> res!2156177 e!3160344)))

(assert (=> d!1631756 (= res!2156177 (not ((_ is Node!15562) (right!43143 (right!43143 xs!286)))))))

(assert (=> d!1631756 (= (appendAssocInst!908 (right!43143 (right!43143 xs!286)) ys!41) true)))

(declare-fun b!5063747 () Bool)

(declare-fun e!3160343 () Bool)

(assert (=> b!5063747 (= e!3160345 e!3160343)))

(declare-fun res!2156183 () Bool)

(assert (=> b!5063747 (=> (not res!2156183) (not e!3160343))))

(assert (=> b!5063747 (= res!2156183 (appendAssoc!300 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 (left!42813 (left!42813 ys!41))) (list!18985 (right!43143 (left!42813 ys!41)))))))

(declare-fun b!5063748 () Bool)

(assert (=> b!5063748 (= e!3160343 (appendAssoc!300 (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 (left!42813 (left!42813 ys!41)))) (list!18985 (right!43143 (left!42813 ys!41))) (list!18985 (right!43143 ys!41))))))

(assert (= (and d!1631756 (not res!2156177)) b!5063742))

(assert (= (and b!5063742 res!2156181) b!5063746))

(assert (= (and b!5063746 (not res!2156178)) b!5063741))

(assert (= (and b!5063741 res!2156176) b!5063740))

(assert (= (and d!1631756 res!2156180) b!5063745))

(assert (= (and b!5063745 (not res!2156182)) b!5063743))

(assert (= (and b!5063743 res!2156184) b!5063744))

(assert (= (and b!5063744 (not res!2156179)) b!5063747))

(assert (= (and b!5063747 res!2156183) b!5063748))

(assert (=> b!5063747 m!6103364))

(assert (=> b!5063747 m!6103442))

(assert (=> b!5063747 m!6103444))

(assert (=> b!5063747 m!6103364))

(assert (=> b!5063747 m!6103442))

(assert (=> b!5063747 m!6103444))

(declare-fun m!6103632 () Bool)

(assert (=> b!5063747 m!6103632))

(declare-fun m!6103634 () Bool)

(assert (=> b!5063741 m!6103634))

(declare-fun m!6103636 () Bool)

(assert (=> b!5063741 m!6103636))

(assert (=> b!5063741 m!6103082))

(assert (=> b!5063741 m!6103634))

(assert (=> b!5063741 m!6103636))

(assert (=> b!5063741 m!6103082))

(declare-fun m!6103638 () Bool)

(assert (=> b!5063741 m!6103638))

(assert (=> b!5063748 m!6103364))

(assert (=> b!5063748 m!6103364))

(assert (=> b!5063748 m!6103442))

(declare-fun m!6103640 () Bool)

(assert (=> b!5063748 m!6103640))

(assert (=> b!5063748 m!6103192))

(assert (=> b!5063748 m!6103640))

(assert (=> b!5063748 m!6103444))

(assert (=> b!5063748 m!6103192))

(declare-fun m!6103642 () Bool)

(assert (=> b!5063748 m!6103642))

(assert (=> b!5063748 m!6103444))

(assert (=> b!5063748 m!6103442))

(assert (=> b!5063740 m!6103082))

(assert (=> b!5063740 m!6103636))

(declare-fun m!6103644 () Bool)

(assert (=> b!5063740 m!6103644))

(assert (=> b!5063740 m!6103636))

(assert (=> b!5063740 m!6103082))

(declare-fun m!6103646 () Bool)

(assert (=> b!5063740 m!6103646))

(assert (=> b!5063740 m!6103634))

(assert (=> b!5063740 m!6103644))

(assert (=> b!5063740 m!6103634))

(assert (=> b!5063740 m!6103646))

(declare-fun m!6103648 () Bool)

(assert (=> b!5063740 m!6103648))

(assert (=> b!5063742 m!6103644))

(declare-fun m!6103650 () Bool)

(assert (=> b!5063742 m!6103650))

(assert (=> b!5063742 m!6103082))

(assert (=> b!5063742 m!6103644))

(assert (=> b!5063742 m!6103650))

(assert (=> b!5063742 m!6103082))

(declare-fun m!6103652 () Bool)

(assert (=> b!5063742 m!6103652))

(assert (=> b!5063743 m!6103364))

(assert (=> b!5063743 m!6103190))

(assert (=> b!5063743 m!6103192))

(assert (=> b!5063743 m!6103364))

(assert (=> b!5063743 m!6103190))

(assert (=> b!5063743 m!6103192))

(declare-fun m!6103654 () Bool)

(assert (=> b!5063743 m!6103654))

(assert (=> d!1631656 d!1631756))

(declare-fun b!5063782 () Bool)

(declare-fun res!2156194 () Bool)

(declare-fun e!3160367 () Bool)

(assert (=> b!5063782 (=> (not res!2156194) (not e!3160367))))

(assert (=> b!5063782 (= res!2156194 (not (isEmpty!31626 (left!42813 (right!43143 (right!43143 xs!286))))))))

(declare-fun b!5063783 () Bool)

(declare-fun res!2156197 () Bool)

(assert (=> b!5063783 (=> (not res!2156197) (not e!3160367))))

(assert (=> b!5063783 (= res!2156197 (<= (- (height!2139 (left!42813 (right!43143 (right!43143 xs!286)))) (height!2139 (right!43143 (right!43143 (right!43143 xs!286))))) 1))))

(declare-fun b!5063784 () Bool)

(declare-fun e!3160368 () Bool)

(assert (=> b!5063784 (= e!3160368 e!3160367)))

(declare-fun res!2156196 () Bool)

(assert (=> b!5063784 (=> (not res!2156196) (not e!3160367))))

(assert (=> b!5063784 (= res!2156196 (<= (- 1) (- (height!2139 (left!42813 (right!43143 (right!43143 xs!286)))) (height!2139 (right!43143 (right!43143 (right!43143 xs!286)))))))))

(declare-fun d!1631766 () Bool)

(declare-fun res!2156193 () Bool)

(assert (=> d!1631766 (=> res!2156193 e!3160368)))

(assert (=> d!1631766 (= res!2156193 (not ((_ is Node!15562) (right!43143 (right!43143 xs!286)))))))

(assert (=> d!1631766 (= (isBalanced!4424 (right!43143 (right!43143 xs!286))) e!3160368)))

(declare-fun b!5063785 () Bool)

(assert (=> b!5063785 (= e!3160367 (not (isEmpty!31626 (right!43143 (right!43143 (right!43143 xs!286))))))))

(declare-fun b!5063786 () Bool)

(declare-fun res!2156192 () Bool)

(assert (=> b!5063786 (=> (not res!2156192) (not e!3160367))))

(assert (=> b!5063786 (= res!2156192 (isBalanced!4424 (left!42813 (right!43143 (right!43143 xs!286)))))))

(declare-fun b!5063787 () Bool)

(declare-fun res!2156195 () Bool)

(assert (=> b!5063787 (=> (not res!2156195) (not e!3160367))))

(assert (=> b!5063787 (= res!2156195 (isBalanced!4424 (right!43143 (right!43143 (right!43143 xs!286)))))))

(assert (= (and d!1631766 (not res!2156193)) b!5063784))

(assert (= (and b!5063784 res!2156196) b!5063783))

(assert (= (and b!5063783 res!2156197) b!5063786))

(assert (= (and b!5063786 res!2156192) b!5063787))

(assert (= (and b!5063787 res!2156195) b!5063782))

(assert (= (and b!5063782 res!2156194) b!5063785))

(declare-fun m!6103656 () Bool)

(assert (=> b!5063786 m!6103656))

(declare-fun m!6103658 () Bool)

(assert (=> b!5063785 m!6103658))

(declare-fun m!6103660 () Bool)

(assert (=> b!5063782 m!6103660))

(declare-fun m!6103662 () Bool)

(assert (=> b!5063783 m!6103662))

(declare-fun m!6103664 () Bool)

(assert (=> b!5063783 m!6103664))

(declare-fun m!6103666 () Bool)

(assert (=> b!5063787 m!6103666))

(assert (=> b!5063784 m!6103662))

(assert (=> b!5063784 m!6103664))

(assert (=> d!1631656 d!1631766))

(assert (=> b!5063671 d!1631598))

(declare-fun d!1631768 () Bool)

(assert (=> d!1631768 (= (height!2139 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)) (ite ((_ is Empty!15562) (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)) 0 (ite ((_ is Leaf!25848) (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)) 1 (cheight!15773 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)))))))

(assert (=> b!5063671 d!1631768))

(declare-fun d!1631770 () Bool)

(declare-fun lt!2088504 () Int)

(assert (=> d!1631770 (= lt!2088504 (size!39071 (list!18985 (left!42813 xs!286))))))

(assert (=> d!1631770 (= lt!2088504 (ite ((_ is Empty!15562) (left!42813 xs!286)) 0 (ite ((_ is Leaf!25848) (left!42813 xs!286)) (csize!31355 (left!42813 xs!286)) (csize!31354 (left!42813 xs!286)))))))

(assert (=> d!1631770 (= (size!39073 (left!42813 xs!286)) lt!2088504)))

(declare-fun bs!1189784 () Bool)

(assert (= bs!1189784 d!1631770))

(assert (=> bs!1189784 m!6103182))

(assert (=> bs!1189784 m!6103182))

(declare-fun m!6103696 () Bool)

(assert (=> bs!1189784 m!6103696))

(assert (=> b!5063671 d!1631770))

(declare-fun d!1631772 () Bool)

(declare-fun lt!2088505 () Int)

(assert (=> d!1631772 (= lt!2088505 (size!39071 (list!18985 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))))))

(assert (=> d!1631772 (= lt!2088505 (ite ((_ is Empty!15562) (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)) 0 (ite ((_ is Leaf!25848) (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)) (csize!31355 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)) (csize!31354 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)))))))

(assert (=> d!1631772 (= (size!39073 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)) lt!2088505)))

(declare-fun bs!1189785 () Bool)

(assert (= bs!1189785 d!1631772))

(assert (=> bs!1189785 m!6103068))

(assert (=> bs!1189785 m!6103472))

(assert (=> bs!1189785 m!6103472))

(declare-fun m!6103700 () Bool)

(assert (=> bs!1189785 m!6103700))

(assert (=> b!5063671 d!1631772))

(declare-fun d!1631774 () Bool)

(assert (=> d!1631774 (= (max!0 (height!2139 (left!42813 xs!286)) (height!2139 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))) (ite (< (height!2139 (left!42813 xs!286)) (height!2139 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))) (height!2139 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)) (height!2139 (left!42813 xs!286))))))

(assert (=> b!5063671 d!1631774))

(declare-fun e!3160371 () Conc!15562)

(declare-fun b!5063793 () Bool)

(assert (=> b!5063793 (= e!3160371 (Node!15562 (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476))) (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678)) (+ (size!39073 (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476)))) (size!39073 (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678)))) (+ (max!0 (height!2139 (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476)))) (height!2139 (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678)))) 1)))))

(declare-fun lt!2088506 () Conc!15562)

(declare-fun d!1631776 () Bool)

(assert (=> d!1631776 (= (list!18985 lt!2088506) (++!12784 (list!18985 (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476)))) (list!18985 (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678)))))))

(declare-fun e!3160370 () Conc!15562)

(assert (=> d!1631776 (= lt!2088506 e!3160370)))

(declare-fun c!869016 () Bool)

(assert (=> d!1631776 (= c!869016 (= (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476))) Empty!15562))))

(assert (=> d!1631776 (= (<>!394 (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476))) (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678))) lt!2088506)))

(declare-fun b!5063790 () Bool)

(assert (=> b!5063790 (= e!3160370 (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678)))))

(declare-fun b!5063792 () Bool)

(assert (=> b!5063792 (= e!3160371 (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476))))))

(declare-fun b!5063791 () Bool)

(assert (=> b!5063791 (= e!3160370 e!3160371)))

(declare-fun c!869015 () Bool)

(assert (=> b!5063791 (= c!869015 (= (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678)) Empty!15562))))

(assert (= (and d!1631776 c!869016) b!5063790))

(assert (= (and d!1631776 (not c!869016)) b!5063791))

(assert (= (and b!5063791 c!869015) b!5063792))

(assert (= (and b!5063791 (not c!869015)) b!5063793))

(declare-fun m!6103712 () Bool)

(assert (=> b!5063793 m!6103712))

(declare-fun m!6103714 () Bool)

(assert (=> b!5063793 m!6103714))

(declare-fun m!6103716 () Bool)

(assert (=> b!5063793 m!6103716))

(declare-fun m!6103718 () Bool)

(assert (=> b!5063793 m!6103718))

(assert (=> b!5063793 m!6103716))

(declare-fun m!6103720 () Bool)

(assert (=> b!5063793 m!6103720))

(assert (=> b!5063793 m!6103718))

(declare-fun m!6103722 () Bool)

(assert (=> d!1631776 m!6103722))

(declare-fun m!6103724 () Bool)

(assert (=> d!1631776 m!6103724))

(declare-fun m!6103728 () Bool)

(assert (=> d!1631776 m!6103728))

(assert (=> d!1631776 m!6103724))

(assert (=> d!1631776 m!6103728))

(declare-fun m!6103738 () Bool)

(assert (=> d!1631776 m!6103738))

(assert (=> bm!352679 d!1631776))

(declare-fun b!5063802 () Bool)

(declare-fun e!3160378 () Conc!15562)

(declare-fun e!3160383 () Conc!15562)

(assert (=> b!5063802 (= e!3160378 e!3160383)))

(declare-fun lt!2088510 () Conc!15562)

(declare-fun call!352703 () Conc!15562)

(assert (=> b!5063802 (= lt!2088510 call!352703)))

(declare-fun c!869025 () Bool)

(declare-fun call!352706 () Int)

(declare-fun call!352711 () Int)

(assert (=> b!5063802 (= c!869025 (= call!352706 (- call!352711 3)))))

(declare-fun b!5063803 () Bool)

(declare-fun c!869027 () Bool)

(declare-fun call!352715 () Int)

(declare-fun call!352705 () Int)

(assert (=> b!5063803 (= c!869027 (>= call!352715 call!352705))))

(declare-fun e!3160380 () Conc!15562)

(assert (=> b!5063803 (= e!3160380 e!3160378)))

(declare-fun b!5063804 () Bool)

(declare-fun call!352709 () Conc!15562)

(assert (=> b!5063804 (= e!3160378 call!352709)))

(declare-fun b!5063805 () Bool)

(declare-fun c!869026 () Bool)

(assert (=> b!5063805 (= c!869026 (>= call!352715 call!352705))))

(declare-fun e!3160381 () Conc!15562)

(assert (=> b!5063805 (= e!3160380 e!3160381)))

(declare-fun b!5063806 () Bool)

(declare-fun e!3160382 () Conc!15562)

(declare-fun e!3160377 () Conc!15562)

(assert (=> b!5063806 (= e!3160382 e!3160377)))

(declare-fun c!869020 () Bool)

(assert (=> b!5063806 (= c!869020 (= (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))) Empty!15562))))

(declare-fun b!5063807 () Bool)

(declare-fun call!352713 () Conc!15562)

(assert (=> b!5063807 (= e!3160383 call!352713)))

(declare-fun b!5063808 () Bool)

(declare-fun e!3160385 () Conc!15562)

(declare-fun call!352716 () Conc!15562)

(assert (=> b!5063808 (= e!3160385 call!352716)))

(declare-fun b!5063809 () Bool)

(assert (=> b!5063809 (= e!3160385 e!3160380)))

(declare-fun c!869024 () Bool)

(declare-fun lt!2088508 () Int)

(assert (=> b!5063809 (= c!869024 (< lt!2088508 (- 1)))))

(declare-fun bm!352697 () Bool)

(declare-fun call!352717 () Conc!15562)

(declare-fun call!352712 () Conc!15562)

(assert (=> bm!352697 (= call!352717 call!352712)))

(declare-fun bm!352698 () Bool)

(assert (=> bm!352698 (= call!352712 (++!12785 (ite c!869024 (ite c!869027 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (right!43143 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (ite c!869024 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))) (ite c!869026 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) (left!42813 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))))))

(declare-fun d!1631784 () Bool)

(declare-fun e!3160376 () Bool)

(assert (=> d!1631784 e!3160376))

(declare-fun res!2156202 () Bool)

(assert (=> d!1631784 (=> (not res!2156202) (not e!3160376))))

(assert (=> d!1631784 (= res!2156202 (appendAssocInst!908 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))) (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))

(declare-fun lt!2088509 () Conc!15562)

(assert (=> d!1631784 (= lt!2088509 e!3160382)))

(declare-fun c!869023 () Bool)

(assert (=> d!1631784 (= c!869023 (= (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))) Empty!15562))))

(declare-fun e!3160379 () Bool)

(assert (=> d!1631784 e!3160379))

(declare-fun res!2156205 () Bool)

(assert (=> d!1631784 (=> (not res!2156205) (not e!3160379))))

(assert (=> d!1631784 (= res!2156205 (isBalanced!4424 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))))

(assert (=> d!1631784 (= (++!12785 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))) (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) lt!2088509)))

(declare-fun b!5063810 () Bool)

(declare-fun e!3160384 () Conc!15562)

(declare-fun call!352707 () Conc!15562)

(assert (=> b!5063810 (= e!3160384 call!352707)))

(declare-fun bm!352699 () Bool)

(declare-fun call!352704 () Conc!15562)

(assert (=> bm!352699 (= call!352707 call!352704)))

(declare-fun bm!352700 () Bool)

(declare-fun call!352702 () Conc!15562)

(assert (=> bm!352700 (= call!352709 call!352702)))

(declare-fun b!5063811 () Bool)

(assert (=> b!5063811 (= e!3160384 call!352707)))

(declare-fun bm!352701 () Bool)

(assert (=> bm!352701 (= call!352713 call!352709)))

(declare-fun b!5063812 () Bool)

(assert (=> b!5063812 (= e!3160383 call!352713)))

(declare-fun b!5063813 () Bool)

(declare-fun res!2156203 () Bool)

(assert (=> b!5063813 (=> (not res!2156203) (not e!3160376))))

(assert (=> b!5063813 (= res!2156203 (>= (height!2139 lt!2088509) (max!0 (height!2139 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (height!2139 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))))

(declare-fun b!5063814 () Bool)

(assert (=> b!5063814 (= e!3160377 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))))

(declare-fun b!5063815 () Bool)

(assert (=> b!5063815 (= e!3160381 call!352704)))

(declare-fun bm!352702 () Bool)

(declare-fun c!869022 () Bool)

(declare-fun c!869021 () Bool)

(declare-fun lt!2088511 () Conc!15562)

(assert (=> bm!352702 (= call!352716 (<>!394 (ite c!869021 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))) (ite c!869024 (ite c!869025 (left!42813 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (left!42813 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (ite c!869022 lt!2088511 (right!43143 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))) (ite c!869021 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))) (ite c!869024 (ite c!869025 lt!2088510 (left!42813 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (ite c!869022 (right!43143 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))) (right!43143 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))))))

(declare-fun bm!352703 () Bool)

(assert (=> bm!352703 (= call!352705 (height!2139 (ite c!869024 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))))

(declare-fun bm!352704 () Bool)

(assert (=> bm!352704 (= call!352706 (height!2139 (ite c!869024 lt!2088510 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))))))

(declare-fun b!5063816 () Bool)

(assert (=> b!5063816 (= c!869021 (and (<= (- 1) lt!2088508) (<= lt!2088508 1)))))

(assert (=> b!5063816 (= lt!2088508 (- (height!2139 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) (height!2139 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))))))

(assert (=> b!5063816 (= e!3160377 e!3160385)))

(declare-fun bm!352705 () Bool)

(declare-fun call!352708 () Conc!15562)

(assert (=> bm!352705 (= call!352708 call!352716)))

(declare-fun bm!352706 () Bool)

(assert (=> bm!352706 (= call!352715 (height!2139 (ite c!869024 (left!42813 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (right!43143 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))))

(declare-fun bm!352707 () Bool)

(declare-fun call!352714 () Conc!15562)

(assert (=> bm!352707 (= call!352714 call!352708)))

(declare-fun bm!352708 () Bool)

(assert (=> bm!352708 (= call!352704 call!352702)))

(declare-fun b!5063817 () Bool)

(declare-fun res!2156206 () Bool)

(assert (=> b!5063817 (=> (not res!2156206) (not e!3160376))))

(assert (=> b!5063817 (= res!2156206 (isBalanced!4424 lt!2088509))))

(declare-fun bm!352709 () Bool)

(assert (=> bm!352709 (= call!352703 call!352712)))

(declare-fun bm!352710 () Bool)

(assert (=> bm!352710 (= call!352711 (height!2139 (ite c!869024 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))) lt!2088511)))))

(declare-fun b!5063818 () Bool)

(assert (=> b!5063818 (= e!3160382 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))))

(declare-fun b!5063819 () Bool)

(declare-fun res!2156204 () Bool)

(assert (=> b!5063819 (=> (not res!2156204) (not e!3160376))))

(assert (=> b!5063819 (= res!2156204 (<= (height!2139 lt!2088509) (+ (max!0 (height!2139 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (height!2139 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))) 1)))))

(declare-fun bm!352711 () Bool)

(declare-fun call!352710 () Conc!15562)

(assert (=> bm!352711 (= call!352702 (<>!394 (ite c!869024 (ite (or c!869027 c!869025) (left!42813 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) call!352714) (ite c!869026 call!352717 (ite c!869022 call!352710 lt!2088511))) (ite c!869024 (ite c!869027 call!352703 (ite c!869025 call!352714 lt!2088510)) (ite (or c!869026 c!869022) (right!43143 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) call!352710))))))

(declare-fun bm!352712 () Bool)

(assert (=> bm!352712 (= call!352710 call!352708)))

(declare-fun b!5063820 () Bool)

(assert (=> b!5063820 (= e!3160381 e!3160384)))

(assert (=> b!5063820 (= lt!2088511 call!352717)))

(assert (=> b!5063820 (= c!869022 (= call!352711 (- call!352706 3)))))

(declare-fun b!5063821 () Bool)

(assert (=> b!5063821 (= e!3160376 (= (list!18985 lt!2088509) (++!12784 (list!18985 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (list!18985 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))))

(declare-fun b!5063822 () Bool)

(assert (=> b!5063822 (= e!3160379 (isBalanced!4424 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))

(assert (= (and d!1631784 res!2156205) b!5063822))

(assert (= (and d!1631784 c!869023) b!5063818))

(assert (= (and d!1631784 (not c!869023)) b!5063806))

(assert (= (and b!5063806 c!869020) b!5063814))

(assert (= (and b!5063806 (not c!869020)) b!5063816))

(assert (= (and b!5063816 c!869021) b!5063808))

(assert (= (and b!5063816 (not c!869021)) b!5063809))

(assert (= (and b!5063809 c!869024) b!5063803))

(assert (= (and b!5063809 (not c!869024)) b!5063805))

(assert (= (and b!5063803 c!869027) b!5063804))

(assert (= (and b!5063803 (not c!869027)) b!5063802))

(assert (= (and b!5063802 c!869025) b!5063812))

(assert (= (and b!5063802 (not c!869025)) b!5063807))

(assert (= (or b!5063812 b!5063807) bm!352707))

(assert (= (or b!5063812 b!5063807) bm!352701))

(assert (= (or b!5063804 b!5063802) bm!352709))

(assert (= (or b!5063804 bm!352701) bm!352700))

(assert (= (and b!5063805 c!869026) b!5063815))

(assert (= (and b!5063805 (not c!869026)) b!5063820))

(assert (= (and b!5063820 c!869022) b!5063810))

(assert (= (and b!5063820 (not c!869022)) b!5063811))

(assert (= (or b!5063810 b!5063811) bm!352712))

(assert (= (or b!5063810 b!5063811) bm!352699))

(assert (= (or b!5063815 b!5063820) bm!352697))

(assert (= (or b!5063815 bm!352699) bm!352708))

(assert (= (or bm!352700 bm!352708) bm!352711))

(assert (= (or b!5063802 b!5063820) bm!352704))

(assert (= (or b!5063802 b!5063820) bm!352710))

(assert (= (or b!5063803 b!5063805) bm!352706))

(assert (= (or b!5063803 b!5063805) bm!352703))

(assert (= (or bm!352709 bm!352697) bm!352698))

(assert (= (or bm!352707 bm!352712) bm!352705))

(assert (= (or b!5063808 bm!352705) bm!352702))

(assert (= (and d!1631784 res!2156202) b!5063817))

(assert (= (and b!5063817 res!2156206) b!5063819))

(assert (= (and b!5063819 res!2156204) b!5063813))

(assert (= (and b!5063813 res!2156203) b!5063821))

(declare-fun m!6103754 () Bool)

(assert (=> b!5063821 m!6103754))

(declare-fun m!6103756 () Bool)

(assert (=> b!5063821 m!6103756))

(declare-fun m!6103758 () Bool)

(assert (=> b!5063821 m!6103758))

(assert (=> b!5063821 m!6103756))

(assert (=> b!5063821 m!6103758))

(declare-fun m!6103760 () Bool)

(assert (=> b!5063821 m!6103760))

(declare-fun m!6103762 () Bool)

(assert (=> b!5063813 m!6103762))

(declare-fun m!6103764 () Bool)

(assert (=> b!5063813 m!6103764))

(declare-fun m!6103766 () Bool)

(assert (=> b!5063813 m!6103766))

(assert (=> b!5063813 m!6103764))

(assert (=> b!5063813 m!6103766))

(declare-fun m!6103770 () Bool)

(assert (=> b!5063813 m!6103770))

(declare-fun m!6103772 () Bool)

(assert (=> bm!352711 m!6103772))

(declare-fun m!6103774 () Bool)

(assert (=> bm!352706 m!6103774))

(declare-fun m!6103778 () Bool)

(assert (=> bm!352698 m!6103778))

(assert (=> b!5063816 m!6103766))

(assert (=> b!5063816 m!6103764))

(declare-fun m!6103782 () Bool)

(assert (=> bm!352710 m!6103782))

(declare-fun m!6103784 () Bool)

(assert (=> d!1631784 m!6103784))

(declare-fun m!6103786 () Bool)

(assert (=> d!1631784 m!6103786))

(assert (=> b!5063819 m!6103762))

(assert (=> b!5063819 m!6103764))

(assert (=> b!5063819 m!6103766))

(assert (=> b!5063819 m!6103764))

(assert (=> b!5063819 m!6103766))

(assert (=> b!5063819 m!6103770))

(declare-fun m!6103792 () Bool)

(assert (=> b!5063822 m!6103792))

(declare-fun m!6103794 () Bool)

(assert (=> bm!352704 m!6103794))

(declare-fun m!6103796 () Bool)

(assert (=> bm!352703 m!6103796))

(declare-fun m!6103798 () Bool)

(assert (=> b!5063817 m!6103798))

(declare-fun m!6103800 () Bool)

(assert (=> bm!352702 m!6103800))

(assert (=> bm!352666 d!1631784))

(declare-fun d!1631800 () Bool)

(declare-fun c!869035 () Bool)

(assert (=> d!1631800 (= c!869035 ((_ is Node!15562) (left!42813 (right!43143 xs!286))))))

(declare-fun e!3160397 () Bool)

(assert (=> d!1631800 (= (inv!77544 (left!42813 (right!43143 xs!286))) e!3160397)))

(declare-fun b!5063845 () Bool)

(assert (=> b!5063845 (= e!3160397 (inv!77548 (left!42813 (right!43143 xs!286))))))

(declare-fun b!5063846 () Bool)

(declare-fun e!3160398 () Bool)

(assert (=> b!5063846 (= e!3160397 e!3160398)))

(declare-fun res!2156215 () Bool)

(assert (=> b!5063846 (= res!2156215 (not ((_ is Leaf!25848) (left!42813 (right!43143 xs!286)))))))

(assert (=> b!5063846 (=> res!2156215 e!3160398)))

(declare-fun b!5063847 () Bool)

(assert (=> b!5063847 (= e!3160398 (inv!77549 (left!42813 (right!43143 xs!286))))))

(assert (= (and d!1631800 c!869035) b!5063845))

(assert (= (and d!1631800 (not c!869035)) b!5063846))

(assert (= (and b!5063846 (not res!2156215)) b!5063847))

(declare-fun m!6103814 () Bool)

(assert (=> b!5063845 m!6103814))

(declare-fun m!6103816 () Bool)

(assert (=> b!5063847 m!6103816))

(assert (=> b!5063698 d!1631800))

(declare-fun d!1631804 () Bool)

(declare-fun c!869037 () Bool)

(assert (=> d!1631804 (= c!869037 ((_ is Node!15562) (right!43143 (right!43143 xs!286))))))

(declare-fun e!3160401 () Bool)

(assert (=> d!1631804 (= (inv!77544 (right!43143 (right!43143 xs!286))) e!3160401)))

(declare-fun b!5063852 () Bool)

(assert (=> b!5063852 (= e!3160401 (inv!77548 (right!43143 (right!43143 xs!286))))))

(declare-fun b!5063853 () Bool)

(declare-fun e!3160402 () Bool)

(assert (=> b!5063853 (= e!3160401 e!3160402)))

(declare-fun res!2156218 () Bool)

(assert (=> b!5063853 (= res!2156218 (not ((_ is Leaf!25848) (right!43143 (right!43143 xs!286)))))))

(assert (=> b!5063853 (=> res!2156218 e!3160402)))

(declare-fun b!5063854 () Bool)

(assert (=> b!5063854 (= e!3160402 (inv!77549 (right!43143 (right!43143 xs!286))))))

(assert (= (and d!1631804 c!869037) b!5063852))

(assert (= (and d!1631804 (not c!869037)) b!5063853))

(assert (= (and b!5063853 (not res!2156218)) b!5063854))

(declare-fun m!6103818 () Bool)

(assert (=> b!5063852 m!6103818))

(declare-fun m!6103820 () Bool)

(assert (=> b!5063854 m!6103820))

(assert (=> b!5063698 d!1631804))

(declare-fun b!5063855 () Bool)

(declare-fun res!2156221 () Bool)

(declare-fun e!3160403 () Bool)

(assert (=> b!5063855 (=> (not res!2156221) (not e!3160403))))

(assert (=> b!5063855 (= res!2156221 (not (isEmpty!31626 (left!42813 (right!43143 ys!41)))))))

(declare-fun b!5063856 () Bool)

(declare-fun res!2156224 () Bool)

(assert (=> b!5063856 (=> (not res!2156224) (not e!3160403))))

(assert (=> b!5063856 (= res!2156224 (<= (- (height!2139 (left!42813 (right!43143 ys!41))) (height!2139 (right!43143 (right!43143 ys!41)))) 1))))

(declare-fun b!5063857 () Bool)

(declare-fun e!3160404 () Bool)

(assert (=> b!5063857 (= e!3160404 e!3160403)))

(declare-fun res!2156223 () Bool)

(assert (=> b!5063857 (=> (not res!2156223) (not e!3160403))))

(assert (=> b!5063857 (= res!2156223 (<= (- 1) (- (height!2139 (left!42813 (right!43143 ys!41))) (height!2139 (right!43143 (right!43143 ys!41))))))))

(declare-fun d!1631806 () Bool)

(declare-fun res!2156220 () Bool)

(assert (=> d!1631806 (=> res!2156220 e!3160404)))

(assert (=> d!1631806 (= res!2156220 (not ((_ is Node!15562) (right!43143 ys!41))))))

(assert (=> d!1631806 (= (isBalanced!4424 (right!43143 ys!41)) e!3160404)))

(declare-fun b!5063858 () Bool)

(assert (=> b!5063858 (= e!3160403 (not (isEmpty!31626 (right!43143 (right!43143 ys!41)))))))

(declare-fun b!5063859 () Bool)

(declare-fun res!2156219 () Bool)

(assert (=> b!5063859 (=> (not res!2156219) (not e!3160403))))

(assert (=> b!5063859 (= res!2156219 (isBalanced!4424 (left!42813 (right!43143 ys!41))))))

(declare-fun b!5063860 () Bool)

(declare-fun res!2156222 () Bool)

(assert (=> b!5063860 (=> (not res!2156222) (not e!3160403))))

(assert (=> b!5063860 (= res!2156222 (isBalanced!4424 (right!43143 (right!43143 ys!41))))))

(assert (= (and d!1631806 (not res!2156220)) b!5063857))

(assert (= (and b!5063857 res!2156223) b!5063856))

(assert (= (and b!5063856 res!2156224) b!5063859))

(assert (= (and b!5063859 res!2156219) b!5063860))

(assert (= (and b!5063860 res!2156222) b!5063855))

(assert (= (and b!5063855 res!2156221) b!5063858))

(declare-fun m!6103832 () Bool)

(assert (=> b!5063859 m!6103832))

(declare-fun m!6103834 () Bool)

(assert (=> b!5063858 m!6103834))

(declare-fun m!6103836 () Bool)

(assert (=> b!5063855 m!6103836))

(declare-fun m!6103838 () Bool)

(assert (=> b!5063856 m!6103838))

(declare-fun m!6103840 () Bool)

(assert (=> b!5063856 m!6103840))

(declare-fun m!6103842 () Bool)

(assert (=> b!5063860 m!6103842))

(assert (=> b!5063857 m!6103838))

(assert (=> b!5063857 m!6103840))

(assert (=> b!5063313 d!1631806))

(declare-fun d!1631810 () Bool)

(declare-fun e!3160406 () Bool)

(assert (=> d!1631810 e!3160406))

(declare-fun res!2156225 () Bool)

(assert (=> d!1631810 (=> (not res!2156225) (not e!3160406))))

(declare-fun lt!2088516 () List!58556)

(assert (=> d!1631810 (= res!2156225 (= (content!10415 lt!2088516) ((_ map or) (content!10415 (list!18985 (left!42813 ys!41))) (content!10415 (list!18985 (right!43143 ys!41))))))))

(declare-fun e!3160405 () List!58556)

(assert (=> d!1631810 (= lt!2088516 e!3160405)))

(declare-fun c!869038 () Bool)

(assert (=> d!1631810 (= c!869038 ((_ is Nil!58432) (list!18985 (left!42813 ys!41))))))

(assert (=> d!1631810 (= (++!12784 (list!18985 (left!42813 ys!41)) (list!18985 (right!43143 ys!41))) lt!2088516)))

(declare-fun b!5063862 () Bool)

(assert (=> b!5063862 (= e!3160405 (Cons!58432 (h!64880 (list!18985 (left!42813 ys!41))) (++!12784 (t!371279 (list!18985 (left!42813 ys!41))) (list!18985 (right!43143 ys!41)))))))

(declare-fun b!5063864 () Bool)

(assert (=> b!5063864 (= e!3160406 (or (not (= (list!18985 (right!43143 ys!41)) Nil!58432)) (= lt!2088516 (list!18985 (left!42813 ys!41)))))))

(declare-fun b!5063861 () Bool)

(assert (=> b!5063861 (= e!3160405 (list!18985 (right!43143 ys!41)))))

(declare-fun b!5063863 () Bool)

(declare-fun res!2156226 () Bool)

(assert (=> b!5063863 (=> (not res!2156226) (not e!3160406))))

(assert (=> b!5063863 (= res!2156226 (= (size!39071 lt!2088516) (+ (size!39071 (list!18985 (left!42813 ys!41))) (size!39071 (list!18985 (right!43143 ys!41))))))))

(assert (= (and d!1631810 c!869038) b!5063861))

(assert (= (and d!1631810 (not c!869038)) b!5063862))

(assert (= (and d!1631810 res!2156225) b!5063863))

(assert (= (and b!5063863 res!2156226) b!5063864))

(declare-fun m!6103844 () Bool)

(assert (=> d!1631810 m!6103844))

(assert (=> d!1631810 m!6103190))

(declare-fun m!6103846 () Bool)

(assert (=> d!1631810 m!6103846))

(assert (=> d!1631810 m!6103192))

(declare-fun m!6103848 () Bool)

(assert (=> d!1631810 m!6103848))

(assert (=> b!5063862 m!6103192))

(declare-fun m!6103850 () Bool)

(assert (=> b!5063862 m!6103850))

(declare-fun m!6103852 () Bool)

(assert (=> b!5063863 m!6103852))

(assert (=> b!5063863 m!6103190))

(declare-fun m!6103854 () Bool)

(assert (=> b!5063863 m!6103854))

(assert (=> b!5063863 m!6103192))

(declare-fun m!6103856 () Bool)

(assert (=> b!5063863 m!6103856))

(assert (=> b!5063351 d!1631810))

(declare-fun d!1631812 () Bool)

(declare-fun c!869039 () Bool)

(assert (=> d!1631812 (= c!869039 ((_ is Empty!15562) (left!42813 ys!41)))))

(declare-fun e!3160407 () List!58556)

(assert (=> d!1631812 (= (list!18985 (left!42813 ys!41)) e!3160407)))

(declare-fun b!5063868 () Bool)

(declare-fun e!3160408 () List!58556)

(assert (=> b!5063868 (= e!3160408 (++!12784 (list!18985 (left!42813 (left!42813 ys!41))) (list!18985 (right!43143 (left!42813 ys!41)))))))

(declare-fun b!5063865 () Bool)

(assert (=> b!5063865 (= e!3160407 Nil!58432)))

(declare-fun b!5063867 () Bool)

(assert (=> b!5063867 (= e!3160408 (list!18986 (xs!18906 (left!42813 ys!41))))))

(declare-fun b!5063866 () Bool)

(assert (=> b!5063866 (= e!3160407 e!3160408)))

(declare-fun c!869040 () Bool)

(assert (=> b!5063866 (= c!869040 ((_ is Leaf!25848) (left!42813 ys!41)))))

(assert (= (and d!1631812 c!869039) b!5063865))

(assert (= (and d!1631812 (not c!869039)) b!5063866))

(assert (= (and b!5063866 c!869040) b!5063867))

(assert (= (and b!5063866 (not c!869040)) b!5063868))

(assert (=> b!5063868 m!6103442))

(assert (=> b!5063868 m!6103444))

(assert (=> b!5063868 m!6103442))

(assert (=> b!5063868 m!6103444))

(declare-fun m!6103858 () Bool)

(assert (=> b!5063868 m!6103858))

(declare-fun m!6103860 () Bool)

(assert (=> b!5063867 m!6103860))

(assert (=> b!5063351 d!1631812))

(declare-fun d!1631814 () Bool)

(declare-fun c!869041 () Bool)

(assert (=> d!1631814 (= c!869041 ((_ is Empty!15562) (right!43143 ys!41)))))

(declare-fun e!3160409 () List!58556)

(assert (=> d!1631814 (= (list!18985 (right!43143 ys!41)) e!3160409)))

(declare-fun b!5063872 () Bool)

(declare-fun e!3160410 () List!58556)

(assert (=> b!5063872 (= e!3160410 (++!12784 (list!18985 (left!42813 (right!43143 ys!41))) (list!18985 (right!43143 (right!43143 ys!41)))))))

(declare-fun b!5063869 () Bool)

(assert (=> b!5063869 (= e!3160409 Nil!58432)))

(declare-fun b!5063871 () Bool)

(assert (=> b!5063871 (= e!3160410 (list!18986 (xs!18906 (right!43143 ys!41))))))

(declare-fun b!5063870 () Bool)

(assert (=> b!5063870 (= e!3160409 e!3160410)))

(declare-fun c!869042 () Bool)

(assert (=> b!5063870 (= c!869042 ((_ is Leaf!25848) (right!43143 ys!41)))))

(assert (= (and d!1631814 c!869041) b!5063869))

(assert (= (and d!1631814 (not c!869041)) b!5063870))

(assert (= (and b!5063870 c!869042) b!5063871))

(assert (= (and b!5063870 (not c!869042)) b!5063872))

(declare-fun m!6103862 () Bool)

(assert (=> b!5063872 m!6103862))

(declare-fun m!6103864 () Bool)

(assert (=> b!5063872 m!6103864))

(assert (=> b!5063872 m!6103862))

(assert (=> b!5063872 m!6103864))

(declare-fun m!6103866 () Bool)

(assert (=> b!5063872 m!6103866))

(declare-fun m!6103868 () Bool)

(assert (=> b!5063871 m!6103868))

(assert (=> b!5063351 d!1631814))

(declare-fun b!5063873 () Bool)

(declare-fun res!2156229 () Bool)

(declare-fun e!3160411 () Bool)

(assert (=> b!5063873 (=> (not res!2156229) (not e!3160411))))

(assert (=> b!5063873 (= res!2156229 (not (isEmpty!31626 (left!42813 (left!42813 lt!2088442)))))))

(declare-fun b!5063874 () Bool)

(declare-fun res!2156232 () Bool)

(assert (=> b!5063874 (=> (not res!2156232) (not e!3160411))))

(assert (=> b!5063874 (= res!2156232 (<= (- (height!2139 (left!42813 (left!42813 lt!2088442))) (height!2139 (right!43143 (left!42813 lt!2088442)))) 1))))

(declare-fun b!5063875 () Bool)

(declare-fun e!3160412 () Bool)

(assert (=> b!5063875 (= e!3160412 e!3160411)))

(declare-fun res!2156231 () Bool)

(assert (=> b!5063875 (=> (not res!2156231) (not e!3160411))))

(assert (=> b!5063875 (= res!2156231 (<= (- 1) (- (height!2139 (left!42813 (left!42813 lt!2088442))) (height!2139 (right!43143 (left!42813 lt!2088442))))))))

(declare-fun d!1631816 () Bool)

(declare-fun res!2156228 () Bool)

(assert (=> d!1631816 (=> res!2156228 e!3160412)))

(assert (=> d!1631816 (= res!2156228 (not ((_ is Node!15562) (left!42813 lt!2088442))))))

(assert (=> d!1631816 (= (isBalanced!4424 (left!42813 lt!2088442)) e!3160412)))

(declare-fun b!5063876 () Bool)

(assert (=> b!5063876 (= e!3160411 (not (isEmpty!31626 (right!43143 (left!42813 lt!2088442)))))))

(declare-fun b!5063877 () Bool)

(declare-fun res!2156227 () Bool)

(assert (=> b!5063877 (=> (not res!2156227) (not e!3160411))))

(assert (=> b!5063877 (= res!2156227 (isBalanced!4424 (left!42813 (left!42813 lt!2088442))))))

(declare-fun b!5063878 () Bool)

(declare-fun res!2156230 () Bool)

(assert (=> b!5063878 (=> (not res!2156230) (not e!3160411))))

(assert (=> b!5063878 (= res!2156230 (isBalanced!4424 (right!43143 (left!42813 lt!2088442))))))

(assert (= (and d!1631816 (not res!2156228)) b!5063875))

(assert (= (and b!5063875 res!2156231) b!5063874))

(assert (= (and b!5063874 res!2156232) b!5063877))

(assert (= (and b!5063877 res!2156227) b!5063878))

(assert (= (and b!5063878 res!2156230) b!5063873))

(assert (= (and b!5063873 res!2156229) b!5063876))

(declare-fun m!6103870 () Bool)

(assert (=> b!5063877 m!6103870))

(declare-fun m!6103872 () Bool)

(assert (=> b!5063876 m!6103872))

(declare-fun m!6103874 () Bool)

(assert (=> b!5063873 m!6103874))

(declare-fun m!6103876 () Bool)

(assert (=> b!5063874 m!6103876))

(declare-fun m!6103878 () Bool)

(assert (=> b!5063874 m!6103878))

(declare-fun m!6103880 () Bool)

(assert (=> b!5063878 m!6103880))

(assert (=> b!5063875 m!6103876))

(assert (=> b!5063875 m!6103878))

(assert (=> b!5063318 d!1631816))

(declare-fun d!1631818 () Bool)

(declare-fun e!3160416 () Bool)

(assert (=> d!1631818 e!3160416))

(declare-fun res!2156239 () Bool)

(assert (=> d!1631818 (=> (not res!2156239) (not e!3160416))))

(declare-fun lt!2088517 () List!58556)

(assert (=> d!1631818 (= res!2156239 (= (content!10415 lt!2088517) ((_ map or) (content!10415 (list!18985 (left!42813 lt!2088442))) (content!10415 (list!18985 (right!43143 lt!2088442))))))))

(declare-fun e!3160415 () List!58556)

(assert (=> d!1631818 (= lt!2088517 e!3160415)))

(declare-fun c!869043 () Bool)

(assert (=> d!1631818 (= c!869043 ((_ is Nil!58432) (list!18985 (left!42813 lt!2088442))))))

(assert (=> d!1631818 (= (++!12784 (list!18985 (left!42813 lt!2088442)) (list!18985 (right!43143 lt!2088442))) lt!2088517)))

(declare-fun b!5063884 () Bool)

(assert (=> b!5063884 (= e!3160415 (Cons!58432 (h!64880 (list!18985 (left!42813 lt!2088442))) (++!12784 (t!371279 (list!18985 (left!42813 lt!2088442))) (list!18985 (right!43143 lt!2088442)))))))

(declare-fun b!5063886 () Bool)

(assert (=> b!5063886 (= e!3160416 (or (not (= (list!18985 (right!43143 lt!2088442)) Nil!58432)) (= lt!2088517 (list!18985 (left!42813 lt!2088442)))))))

(declare-fun b!5063883 () Bool)

(assert (=> b!5063883 (= e!3160415 (list!18985 (right!43143 lt!2088442)))))

(declare-fun b!5063885 () Bool)

(declare-fun res!2156240 () Bool)

(assert (=> b!5063885 (=> (not res!2156240) (not e!3160416))))

(assert (=> b!5063885 (= res!2156240 (= (size!39071 lt!2088517) (+ (size!39071 (list!18985 (left!42813 lt!2088442))) (size!39071 (list!18985 (right!43143 lt!2088442))))))))

(assert (= (and d!1631818 c!869043) b!5063883))

(assert (= (and d!1631818 (not c!869043)) b!5063884))

(assert (= (and d!1631818 res!2156239) b!5063885))

(assert (= (and b!5063885 res!2156240) b!5063886))

(declare-fun m!6103882 () Bool)

(assert (=> d!1631818 m!6103882))

(assert (=> d!1631818 m!6103160))

(declare-fun m!6103884 () Bool)

(assert (=> d!1631818 m!6103884))

(assert (=> d!1631818 m!6103162))

(declare-fun m!6103886 () Bool)

(assert (=> d!1631818 m!6103886))

(assert (=> b!5063884 m!6103162))

(declare-fun m!6103888 () Bool)

(assert (=> b!5063884 m!6103888))

(declare-fun m!6103890 () Bool)

(assert (=> b!5063885 m!6103890))

(assert (=> b!5063885 m!6103160))

(declare-fun m!6103892 () Bool)

(assert (=> b!5063885 m!6103892))

(assert (=> b!5063885 m!6103162))

(declare-fun m!6103894 () Bool)

(assert (=> b!5063885 m!6103894))

(assert (=> b!5063331 d!1631818))

(declare-fun d!1631820 () Bool)

(declare-fun c!869044 () Bool)

(assert (=> d!1631820 (= c!869044 ((_ is Empty!15562) (left!42813 lt!2088442)))))

(declare-fun e!3160417 () List!58556)

(assert (=> d!1631820 (= (list!18985 (left!42813 lt!2088442)) e!3160417)))

(declare-fun b!5063892 () Bool)

(declare-fun e!3160418 () List!58556)

(assert (=> b!5063892 (= e!3160418 (++!12784 (list!18985 (left!42813 (left!42813 lt!2088442))) (list!18985 (right!43143 (left!42813 lt!2088442)))))))

(declare-fun b!5063889 () Bool)

(assert (=> b!5063889 (= e!3160417 Nil!58432)))

(declare-fun b!5063891 () Bool)

(assert (=> b!5063891 (= e!3160418 (list!18986 (xs!18906 (left!42813 lt!2088442))))))

(declare-fun b!5063890 () Bool)

(assert (=> b!5063890 (= e!3160417 e!3160418)))

(declare-fun c!869045 () Bool)

(assert (=> b!5063890 (= c!869045 ((_ is Leaf!25848) (left!42813 lt!2088442)))))

(assert (= (and d!1631820 c!869044) b!5063889))

(assert (= (and d!1631820 (not c!869044)) b!5063890))

(assert (= (and b!5063890 c!869045) b!5063891))

(assert (= (and b!5063890 (not c!869045)) b!5063892))

(declare-fun m!6103896 () Bool)

(assert (=> b!5063892 m!6103896))

(declare-fun m!6103898 () Bool)

(assert (=> b!5063892 m!6103898))

(assert (=> b!5063892 m!6103896))

(assert (=> b!5063892 m!6103898))

(declare-fun m!6103900 () Bool)

(assert (=> b!5063892 m!6103900))

(declare-fun m!6103902 () Bool)

(assert (=> b!5063891 m!6103902))

(assert (=> b!5063331 d!1631820))

(declare-fun d!1631822 () Bool)

(declare-fun c!869046 () Bool)

(assert (=> d!1631822 (= c!869046 ((_ is Empty!15562) (right!43143 lt!2088442)))))

(declare-fun e!3160419 () List!58556)

(assert (=> d!1631822 (= (list!18985 (right!43143 lt!2088442)) e!3160419)))

(declare-fun b!5063896 () Bool)

(declare-fun e!3160420 () List!58556)

(assert (=> b!5063896 (= e!3160420 (++!12784 (list!18985 (left!42813 (right!43143 lt!2088442))) (list!18985 (right!43143 (right!43143 lt!2088442)))))))

(declare-fun b!5063893 () Bool)

(assert (=> b!5063893 (= e!3160419 Nil!58432)))

(declare-fun b!5063895 () Bool)

(assert (=> b!5063895 (= e!3160420 (list!18986 (xs!18906 (right!43143 lt!2088442))))))

(declare-fun b!5063894 () Bool)

(assert (=> b!5063894 (= e!3160419 e!3160420)))

(declare-fun c!869047 () Bool)

(assert (=> b!5063894 (= c!869047 ((_ is Leaf!25848) (right!43143 lt!2088442)))))

(assert (= (and d!1631822 c!869046) b!5063893))

(assert (= (and d!1631822 (not c!869046)) b!5063894))

(assert (= (and b!5063894 c!869047) b!5063895))

(assert (= (and b!5063894 (not c!869047)) b!5063896))

(declare-fun m!6103904 () Bool)

(assert (=> b!5063896 m!6103904))

(declare-fun m!6103906 () Bool)

(assert (=> b!5063896 m!6103906))

(assert (=> b!5063896 m!6103904))

(assert (=> b!5063896 m!6103906))

(declare-fun m!6103908 () Bool)

(assert (=> b!5063896 m!6103908))

(declare-fun m!6103910 () Bool)

(assert (=> b!5063895 m!6103910))

(assert (=> b!5063331 d!1631822))

(assert (=> b!5063354 d!1631598))

(assert (=> b!5063354 d!1631600))

(declare-fun d!1631824 () Bool)

(declare-fun e!3160422 () Bool)

(assert (=> d!1631824 e!3160422))

(declare-fun res!2156241 () Bool)

(assert (=> d!1631824 (=> (not res!2156241) (not e!3160422))))

(declare-fun lt!2088518 () List!58556)

(assert (=> d!1631824 (= res!2156241 (= (content!10415 lt!2088518) ((_ map or) (content!10415 (t!371279 (list!18985 xs!286))) (content!10415 (list!18985 ys!41)))))))

(declare-fun e!3160421 () List!58556)

(assert (=> d!1631824 (= lt!2088518 e!3160421)))

(declare-fun c!869048 () Bool)

(assert (=> d!1631824 (= c!869048 ((_ is Nil!58432) (t!371279 (list!18985 xs!286))))))

(assert (=> d!1631824 (= (++!12784 (t!371279 (list!18985 xs!286)) (list!18985 ys!41)) lt!2088518)))

(declare-fun b!5063898 () Bool)

(assert (=> b!5063898 (= e!3160421 (Cons!58432 (h!64880 (t!371279 (list!18985 xs!286))) (++!12784 (t!371279 (t!371279 (list!18985 xs!286))) (list!18985 ys!41))))))

(declare-fun b!5063900 () Bool)

(assert (=> b!5063900 (= e!3160422 (or (not (= (list!18985 ys!41) Nil!58432)) (= lt!2088518 (t!371279 (list!18985 xs!286)))))))

(declare-fun b!5063897 () Bool)

(assert (=> b!5063897 (= e!3160421 (list!18985 ys!41))))

(declare-fun b!5063899 () Bool)

(declare-fun res!2156242 () Bool)

(assert (=> b!5063899 (=> (not res!2156242) (not e!3160422))))

(assert (=> b!5063899 (= res!2156242 (= (size!39071 lt!2088518) (+ (size!39071 (t!371279 (list!18985 xs!286))) (size!39071 (list!18985 ys!41)))))))

(assert (= (and d!1631824 c!869048) b!5063897))

(assert (= (and d!1631824 (not c!869048)) b!5063898))

(assert (= (and d!1631824 res!2156241) b!5063899))

(assert (= (and b!5063899 res!2156242) b!5063900))

(declare-fun m!6103912 () Bool)

(assert (=> d!1631824 m!6103912))

(declare-fun m!6103914 () Bool)

(assert (=> d!1631824 m!6103914))

(assert (=> d!1631824 m!6103082))

(assert (=> d!1631824 m!6103172))

(assert (=> b!5063898 m!6103082))

(declare-fun m!6103916 () Bool)

(assert (=> b!5063898 m!6103916))

(declare-fun m!6103918 () Bool)

(assert (=> b!5063899 m!6103918))

(declare-fun m!6103920 () Bool)

(assert (=> b!5063899 m!6103920))

(assert (=> b!5063899 m!6103082))

(assert (=> b!5063899 m!6103180))

(assert (=> b!5063341 d!1631824))

(declare-fun d!1631826 () Bool)

(assert (=> d!1631826 (= (height!2139 (left!42813 lt!2088442)) (ite ((_ is Empty!15562) (left!42813 lt!2088442)) 0 (ite ((_ is Leaf!25848) (left!42813 lt!2088442)) 1 (cheight!15773 (left!42813 lt!2088442)))))))

(assert (=> b!5063316 d!1631826))

(declare-fun d!1631828 () Bool)

(assert (=> d!1631828 (= (height!2139 (right!43143 lt!2088442)) (ite ((_ is Empty!15562) (right!43143 lt!2088442)) 0 (ite ((_ is Leaf!25848) (right!43143 lt!2088442)) 1 (cheight!15773 (right!43143 lt!2088442)))))))

(assert (=> b!5063316 d!1631828))

(declare-fun d!1631830 () Bool)

(assert (=> d!1631830 (= (inv!77545 (xs!18906 (left!42813 xs!286))) (<= (size!39071 (innerList!15650 (xs!18906 (left!42813 xs!286)))) 2147483647))))

(declare-fun bs!1189786 () Bool)

(assert (= bs!1189786 d!1631830))

(declare-fun m!6103924 () Bool)

(assert (=> bs!1189786 m!6103924))

(assert (=> b!5063696 d!1631830))

(declare-fun d!1631832 () Bool)

(declare-fun lt!2088519 () Bool)

(assert (=> d!1631832 (= lt!2088519 (isEmpty!31628 (list!18985 (left!42813 xs!286))))))

(assert (=> d!1631832 (= lt!2088519 (= (size!39073 (left!42813 xs!286)) 0))))

(assert (=> d!1631832 (= (isEmpty!31626 (left!42813 xs!286)) lt!2088519)))

(declare-fun bs!1189787 () Bool)

(assert (= bs!1189787 d!1631832))

(assert (=> bs!1189787 m!6103182))

(assert (=> bs!1189787 m!6103182))

(declare-fun m!6103928 () Bool)

(assert (=> bs!1189787 m!6103928))

(assert (=> bs!1189787 m!6103462))

(assert (=> b!5063352 d!1631832))

(assert (=> b!5063582 d!1631608))

(declare-fun bm!352723 () Bool)

(declare-fun call!352731 () List!58556)

(declare-fun call!352729 () List!58556)

(assert (=> bm!352723 (= call!352731 (++!12784 call!352729 (list!18985 ys!41)))))

(declare-fun d!1631836 () Bool)

(declare-fun e!3160435 () Bool)

(assert (=> d!1631836 e!3160435))

(declare-fun c!869058 () Bool)

(assert (=> d!1631836 (= c!869058 ((_ is Nil!58432) (list!18985 (left!42813 xs!286))))))

(assert (=> d!1631836 (= (appendAssoc!300 (list!18985 (left!42813 xs!286)) (list!18985 (right!43143 xs!286)) (list!18985 ys!41)) true)))

(declare-fun bm!352724 () Bool)

(declare-fun call!352728 () List!58556)

(declare-fun call!352730 () List!58556)

(assert (=> bm!352724 (= call!352728 (++!12784 (list!18985 (left!42813 xs!286)) call!352730))))

(declare-fun bm!352725 () Bool)

(assert (=> bm!352725 (= call!352730 (++!12784 (list!18985 (right!43143 xs!286)) (list!18985 ys!41)))))

(declare-fun b!5063927 () Bool)

(assert (=> b!5063927 (= e!3160435 (= call!352731 call!352728))))

(declare-fun lt!2088525 () Bool)

(assert (=> b!5063927 (= lt!2088525 (appendAssoc!300 (t!371279 (list!18985 (left!42813 xs!286))) (list!18985 (right!43143 xs!286)) (list!18985 ys!41)))))

(declare-fun bm!352726 () Bool)

(assert (=> bm!352726 (= call!352729 (++!12784 (list!18985 (left!42813 xs!286)) (list!18985 (right!43143 xs!286))))))

(declare-fun b!5063928 () Bool)

(assert (=> b!5063928 (= e!3160435 (= call!352731 call!352728))))

(assert (= (and d!1631836 c!869058) b!5063928))

(assert (= (and d!1631836 (not c!869058)) b!5063927))

(assert (= (or b!5063928 b!5063927) bm!352726))

(assert (= (or b!5063928 b!5063927) bm!352725))

(assert (= (or b!5063928 b!5063927) bm!352724))

(assert (= (or b!5063928 b!5063927) bm!352723))

(assert (=> bm!352724 m!6103182))

(declare-fun m!6103964 () Bool)

(assert (=> bm!352724 m!6103964))

(assert (=> bm!352726 m!6103182))

(assert (=> bm!352726 m!6103184))

(assert (=> bm!352726 m!6103186))

(assert (=> b!5063927 m!6103184))

(assert (=> b!5063927 m!6103082))

(declare-fun m!6103966 () Bool)

(assert (=> b!5063927 m!6103966))

(assert (=> bm!352725 m!6103184))

(assert (=> bm!352725 m!6103082))

(declare-fun m!6103968 () Bool)

(assert (=> bm!352725 m!6103968))

(assert (=> bm!352723 m!6103082))

(declare-fun m!6103970 () Bool)

(assert (=> bm!352723 m!6103970))

(assert (=> b!5063653 d!1631836))

(declare-fun d!1631848 () Bool)

(declare-fun c!869059 () Bool)

(assert (=> d!1631848 (= c!869059 ((_ is Empty!15562) (left!42813 xs!286)))))

(declare-fun e!3160436 () List!58556)

(assert (=> d!1631848 (= (list!18985 (left!42813 xs!286)) e!3160436)))

(declare-fun b!5063932 () Bool)

(declare-fun e!3160437 () List!58556)

(assert (=> b!5063932 (= e!3160437 (++!12784 (list!18985 (left!42813 (left!42813 xs!286))) (list!18985 (right!43143 (left!42813 xs!286)))))))

(declare-fun b!5063929 () Bool)

(assert (=> b!5063929 (= e!3160436 Nil!58432)))

(declare-fun b!5063931 () Bool)

(assert (=> b!5063931 (= e!3160437 (list!18986 (xs!18906 (left!42813 xs!286))))))

(declare-fun b!5063930 () Bool)

(assert (=> b!5063930 (= e!3160436 e!3160437)))

(declare-fun c!869060 () Bool)

(assert (=> b!5063930 (= c!869060 ((_ is Leaf!25848) (left!42813 xs!286)))))

(assert (= (and d!1631848 c!869059) b!5063929))

(assert (= (and d!1631848 (not c!869059)) b!5063930))

(assert (= (and b!5063930 c!869060) b!5063931))

(assert (= (and b!5063930 (not c!869060)) b!5063932))

(declare-fun m!6103972 () Bool)

(assert (=> b!5063932 m!6103972))

(declare-fun m!6103974 () Bool)

(assert (=> b!5063932 m!6103974))

(assert (=> b!5063932 m!6103972))

(assert (=> b!5063932 m!6103974))

(declare-fun m!6103976 () Bool)

(assert (=> b!5063932 m!6103976))

(declare-fun m!6103978 () Bool)

(assert (=> b!5063931 m!6103978))

(assert (=> b!5063653 d!1631848))

(declare-fun d!1631850 () Bool)

(declare-fun c!869061 () Bool)

(assert (=> d!1631850 (= c!869061 ((_ is Empty!15562) (right!43143 xs!286)))))

(declare-fun e!3160438 () List!58556)

(assert (=> d!1631850 (= (list!18985 (right!43143 xs!286)) e!3160438)))

(declare-fun b!5063936 () Bool)

(declare-fun e!3160439 () List!58556)

(assert (=> b!5063936 (= e!3160439 (++!12784 (list!18985 (left!42813 (right!43143 xs!286))) (list!18985 (right!43143 (right!43143 xs!286)))))))

(declare-fun b!5063933 () Bool)

(assert (=> b!5063933 (= e!3160438 Nil!58432)))

(declare-fun b!5063935 () Bool)

(assert (=> b!5063935 (= e!3160439 (list!18986 (xs!18906 (right!43143 xs!286))))))

(declare-fun b!5063934 () Bool)

(assert (=> b!5063934 (= e!3160438 e!3160439)))

(declare-fun c!869062 () Bool)

(assert (=> b!5063934 (= c!869062 ((_ is Leaf!25848) (right!43143 xs!286)))))

(assert (= (and d!1631850 c!869061) b!5063933))

(assert (= (and d!1631850 (not c!869061)) b!5063934))

(assert (= (and b!5063934 c!869062) b!5063935))

(assert (= (and b!5063934 (not c!869062)) b!5063936))

(assert (=> b!5063936 m!6103448))

(assert (=> b!5063936 m!6103364))

(assert (=> b!5063936 m!6103448))

(assert (=> b!5063936 m!6103364))

(declare-fun m!6103980 () Bool)

(assert (=> b!5063936 m!6103980))

(declare-fun m!6103982 () Bool)

(assert (=> b!5063935 m!6103982))

(assert (=> b!5063653 d!1631850))

(assert (=> b!5063653 d!1631638))

(declare-fun d!1631852 () Bool)

(declare-fun lt!2088526 () Bool)

(assert (=> d!1631852 (= lt!2088526 (isEmpty!31628 (list!18985 (left!42813 lt!2088442))))))

(assert (=> d!1631852 (= lt!2088526 (= (size!39073 (left!42813 lt!2088442)) 0))))

(assert (=> d!1631852 (= (isEmpty!31626 (left!42813 lt!2088442)) lt!2088526)))

(declare-fun bs!1189789 () Bool)

(assert (= bs!1189789 d!1631852))

(assert (=> bs!1189789 m!6103160))

(assert (=> bs!1189789 m!6103160))

(declare-fun m!6103984 () Bool)

(assert (=> bs!1189789 m!6103984))

(declare-fun m!6103986 () Bool)

(assert (=> bs!1189789 m!6103986))

(assert (=> b!5063314 d!1631852))

(assert (=> b!5063651 d!1631638))

(assert (=> b!5063651 d!1631848))

(declare-fun d!1631854 () Bool)

(declare-fun c!869063 () Bool)

(assert (=> d!1631854 (= c!869063 ((_ is Empty!15562) (right!43143 (right!43143 xs!286))))))

(declare-fun e!3160440 () List!58556)

(assert (=> d!1631854 (= (list!18985 (right!43143 (right!43143 xs!286))) e!3160440)))

(declare-fun b!5063940 () Bool)

(declare-fun e!3160441 () List!58556)

(assert (=> b!5063940 (= e!3160441 (++!12784 (list!18985 (left!42813 (right!43143 (right!43143 xs!286)))) (list!18985 (right!43143 (right!43143 (right!43143 xs!286))))))))

(declare-fun b!5063937 () Bool)

(assert (=> b!5063937 (= e!3160440 Nil!58432)))

(declare-fun b!5063939 () Bool)

(assert (=> b!5063939 (= e!3160441 (list!18986 (xs!18906 (right!43143 (right!43143 xs!286)))))))

(declare-fun b!5063938 () Bool)

(assert (=> b!5063938 (= e!3160440 e!3160441)))

(declare-fun c!869064 () Bool)

(assert (=> b!5063938 (= c!869064 ((_ is Leaf!25848) (right!43143 (right!43143 xs!286))))))

(assert (= (and d!1631854 c!869063) b!5063937))

(assert (= (and d!1631854 (not c!869063)) b!5063938))

(assert (= (and b!5063938 c!869064) b!5063939))

(assert (= (and b!5063938 (not c!869064)) b!5063940))

(assert (=> b!5063940 m!6103644))

(assert (=> b!5063940 m!6103650))

(assert (=> b!5063940 m!6103644))

(assert (=> b!5063940 m!6103650))

(declare-fun m!6103988 () Bool)

(assert (=> b!5063940 m!6103988))

(declare-fun m!6103990 () Bool)

(assert (=> b!5063939 m!6103990))

(assert (=> b!5063651 d!1631854))

(declare-fun call!352745 () List!58556)

(declare-fun bm!352737 () Bool)

(declare-fun call!352743 () List!58556)

(assert (=> bm!352737 (= call!352745 (++!12784 call!352743 (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 ys!41))))))

(declare-fun d!1631856 () Bool)

(declare-fun e!3160443 () Bool)

(assert (=> d!1631856 e!3160443))

(declare-fun c!869066 () Bool)

(assert (=> d!1631856 (= c!869066 ((_ is Nil!58432) (list!18985 (left!42813 xs!286))))))

(assert (=> d!1631856 (= (appendAssoc!300 (list!18985 (left!42813 xs!286)) (list!18985 (left!42813 (right!43143 xs!286))) (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 ys!41))) true)))

(declare-fun bm!352738 () Bool)

(declare-fun call!352742 () List!58556)

(declare-fun call!352744 () List!58556)

(assert (=> bm!352738 (= call!352742 (++!12784 (list!18985 (left!42813 xs!286)) call!352744))))

(declare-fun bm!352739 () Bool)

(assert (=> bm!352739 (= call!352744 (++!12784 (list!18985 (left!42813 (right!43143 xs!286))) (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 ys!41))))))

(declare-fun b!5063943 () Bool)

(assert (=> b!5063943 (= e!3160443 (= call!352745 call!352742))))

(declare-fun lt!2088528 () Bool)

(assert (=> b!5063943 (= lt!2088528 (appendAssoc!300 (t!371279 (list!18985 (left!42813 xs!286))) (list!18985 (left!42813 (right!43143 xs!286))) (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 ys!41))))))

(declare-fun bm!352740 () Bool)

(assert (=> bm!352740 (= call!352743 (++!12784 (list!18985 (left!42813 xs!286)) (list!18985 (left!42813 (right!43143 xs!286)))))))

(declare-fun b!5063944 () Bool)

(assert (=> b!5063944 (= e!3160443 (= call!352745 call!352742))))

(assert (= (and d!1631856 c!869066) b!5063944))

(assert (= (and d!1631856 (not c!869066)) b!5063943))

(assert (= (or b!5063944 b!5063943) bm!352740))

(assert (= (or b!5063944 b!5063943) bm!352739))

(assert (= (or b!5063944 b!5063943) bm!352738))

(assert (= (or b!5063944 b!5063943) bm!352737))

(assert (=> bm!352738 m!6103182))

(declare-fun m!6103992 () Bool)

(assert (=> bm!352738 m!6103992))

(assert (=> bm!352740 m!6103182))

(assert (=> bm!352740 m!6103448))

(declare-fun m!6103996 () Bool)

(assert (=> bm!352740 m!6103996))

(assert (=> b!5063943 m!6103448))

(assert (=> b!5063943 m!6103366))

(declare-fun m!6103998 () Bool)

(assert (=> b!5063943 m!6103998))

(assert (=> bm!352739 m!6103448))

(assert (=> bm!352739 m!6103366))

(declare-fun m!6104004 () Bool)

(assert (=> bm!352739 m!6104004))

(assert (=> bm!352737 m!6103366))

(declare-fun m!6104008 () Bool)

(assert (=> bm!352737 m!6104008))

(assert (=> b!5063651 d!1631856))

(declare-fun d!1631858 () Bool)

(declare-fun c!869067 () Bool)

(assert (=> d!1631858 (= c!869067 ((_ is Empty!15562) (left!42813 (right!43143 xs!286))))))

(declare-fun e!3160444 () List!58556)

(assert (=> d!1631858 (= (list!18985 (left!42813 (right!43143 xs!286))) e!3160444)))

(declare-fun b!5063948 () Bool)

(declare-fun e!3160445 () List!58556)

(assert (=> b!5063948 (= e!3160445 (++!12784 (list!18985 (left!42813 (left!42813 (right!43143 xs!286)))) (list!18985 (right!43143 (left!42813 (right!43143 xs!286))))))))

(declare-fun b!5063945 () Bool)

(assert (=> b!5063945 (= e!3160444 Nil!58432)))

(declare-fun b!5063947 () Bool)

(assert (=> b!5063947 (= e!3160445 (list!18986 (xs!18906 (left!42813 (right!43143 xs!286)))))))

(declare-fun b!5063946 () Bool)

(assert (=> b!5063946 (= e!3160444 e!3160445)))

(declare-fun c!869068 () Bool)

(assert (=> b!5063946 (= c!869068 ((_ is Leaf!25848) (left!42813 (right!43143 xs!286))))))

(assert (= (and d!1631858 c!869067) b!5063945))

(assert (= (and d!1631858 (not c!869067)) b!5063946))

(assert (= (and b!5063946 c!869068) b!5063947))

(assert (= (and b!5063946 (not c!869068)) b!5063948))

(declare-fun m!6104010 () Bool)

(assert (=> b!5063948 m!6104010))

(declare-fun m!6104012 () Bool)

(assert (=> b!5063948 m!6104012))

(assert (=> b!5063948 m!6104010))

(assert (=> b!5063948 m!6104012))

(declare-fun m!6104014 () Bool)

(assert (=> b!5063948 m!6104014))

(declare-fun m!6104016 () Bool)

(assert (=> b!5063947 m!6104016))

(assert (=> b!5063651 d!1631858))

(declare-fun d!1631862 () Bool)

(declare-fun e!3160447 () Bool)

(assert (=> d!1631862 e!3160447))

(declare-fun res!2156251 () Bool)

(assert (=> d!1631862 (=> (not res!2156251) (not e!3160447))))

(declare-fun lt!2088529 () List!58556)

(assert (=> d!1631862 (= res!2156251 (= (content!10415 lt!2088529) ((_ map or) (content!10415 (list!18985 (right!43143 (right!43143 xs!286)))) (content!10415 (list!18985 ys!41)))))))

(declare-fun e!3160446 () List!58556)

(assert (=> d!1631862 (= lt!2088529 e!3160446)))

(declare-fun c!869069 () Bool)

(assert (=> d!1631862 (= c!869069 ((_ is Nil!58432) (list!18985 (right!43143 (right!43143 xs!286)))))))

(assert (=> d!1631862 (= (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 ys!41)) lt!2088529)))

(declare-fun b!5063950 () Bool)

(assert (=> b!5063950 (= e!3160446 (Cons!58432 (h!64880 (list!18985 (right!43143 (right!43143 xs!286)))) (++!12784 (t!371279 (list!18985 (right!43143 (right!43143 xs!286)))) (list!18985 ys!41))))))

(declare-fun b!5063952 () Bool)

(assert (=> b!5063952 (= e!3160447 (or (not (= (list!18985 ys!41) Nil!58432)) (= lt!2088529 (list!18985 (right!43143 (right!43143 xs!286))))))))

(declare-fun b!5063949 () Bool)

(assert (=> b!5063949 (= e!3160446 (list!18985 ys!41))))

(declare-fun b!5063951 () Bool)

(declare-fun res!2156252 () Bool)

(assert (=> b!5063951 (=> (not res!2156252) (not e!3160447))))

(assert (=> b!5063951 (= res!2156252 (= (size!39071 lt!2088529) (+ (size!39071 (list!18985 (right!43143 (right!43143 xs!286)))) (size!39071 (list!18985 ys!41)))))))

(assert (= (and d!1631862 c!869069) b!5063949))

(assert (= (and d!1631862 (not c!869069)) b!5063950))

(assert (= (and d!1631862 res!2156251) b!5063951))

(assert (= (and b!5063951 res!2156252) b!5063952))

(declare-fun m!6104018 () Bool)

(assert (=> d!1631862 m!6104018))

(assert (=> d!1631862 m!6103364))

(declare-fun m!6104022 () Bool)

(assert (=> d!1631862 m!6104022))

(assert (=> d!1631862 m!6103082))

(assert (=> d!1631862 m!6103172))

(assert (=> b!5063950 m!6103082))

(declare-fun m!6104028 () Bool)

(assert (=> b!5063950 m!6104028))

(declare-fun m!6104030 () Bool)

(assert (=> b!5063951 m!6104030))

(assert (=> b!5063951 m!6103364))

(declare-fun m!6104034 () Bool)

(assert (=> b!5063951 m!6104034))

(assert (=> b!5063951 m!6103082))

(assert (=> b!5063951 m!6103180))

(assert (=> b!5063651 d!1631862))

(declare-fun d!1631868 () Bool)

(declare-fun c!869072 () Bool)

(assert (=> d!1631868 (= c!869072 ((_ is Node!15562) (left!42813 (left!42813 ys!41))))))

(declare-fun e!3160450 () Bool)

(assert (=> d!1631868 (= (inv!77544 (left!42813 (left!42813 ys!41))) e!3160450)))

(declare-fun b!5063957 () Bool)

(assert (=> b!5063957 (= e!3160450 (inv!77548 (left!42813 (left!42813 ys!41))))))

(declare-fun b!5063958 () Bool)

(declare-fun e!3160451 () Bool)

(assert (=> b!5063958 (= e!3160450 e!3160451)))

(declare-fun res!2156253 () Bool)

(assert (=> b!5063958 (= res!2156253 (not ((_ is Leaf!25848) (left!42813 (left!42813 ys!41)))))))

(assert (=> b!5063958 (=> res!2156253 e!3160451)))

(declare-fun b!5063959 () Bool)

(assert (=> b!5063959 (= e!3160451 (inv!77549 (left!42813 (left!42813 ys!41))))))

(assert (= (and d!1631868 c!869072) b!5063957))

(assert (= (and d!1631868 (not c!869072)) b!5063958))

(assert (= (and b!5063958 (not res!2156253)) b!5063959))

(declare-fun m!6104036 () Bool)

(assert (=> b!5063957 m!6104036))

(declare-fun m!6104038 () Bool)

(assert (=> b!5063959 m!6104038))

(assert (=> b!5063684 d!1631868))

(declare-fun d!1631870 () Bool)

(declare-fun c!869074 () Bool)

(assert (=> d!1631870 (= c!869074 ((_ is Node!15562) (right!43143 (left!42813 ys!41))))))

(declare-fun e!3160453 () Bool)

(assert (=> d!1631870 (= (inv!77544 (right!43143 (left!42813 ys!41))) e!3160453)))

(declare-fun b!5063962 () Bool)

(assert (=> b!5063962 (= e!3160453 (inv!77548 (right!43143 (left!42813 ys!41))))))

(declare-fun b!5063963 () Bool)

(declare-fun e!3160454 () Bool)

(assert (=> b!5063963 (= e!3160453 e!3160454)))

(declare-fun res!2156254 () Bool)

(assert (=> b!5063963 (= res!2156254 (not ((_ is Leaf!25848) (right!43143 (left!42813 ys!41)))))))

(assert (=> b!5063963 (=> res!2156254 e!3160454)))

(declare-fun b!5063964 () Bool)

(assert (=> b!5063964 (= e!3160454 (inv!77549 (right!43143 (left!42813 ys!41))))))

(assert (= (and d!1631870 c!869074) b!5063962))

(assert (= (and d!1631870 (not c!869074)) b!5063963))

(assert (= (and b!5063963 (not res!2156254)) b!5063964))

(declare-fun m!6104040 () Bool)

(assert (=> b!5063962 m!6104040))

(declare-fun m!6104042 () Bool)

(assert (=> b!5063964 m!6104042))

(assert (=> b!5063684 d!1631870))

(declare-fun d!1631872 () Bool)

(assert (=> d!1631872 (= (height!2139 (left!42813 (right!43143 xs!286))) (ite ((_ is Empty!15562) (left!42813 (right!43143 xs!286))) 0 (ite ((_ is Leaf!25848) (left!42813 (right!43143 xs!286))) 1 (cheight!15773 (left!42813 (right!43143 xs!286))))))))

(assert (=> b!5063675 d!1631872))

(declare-fun d!1631874 () Bool)

(declare-fun lt!2088531 () Int)

(assert (=> d!1631874 (= lt!2088531 (size!39071 (list!18985 lt!2088445)))))

(assert (=> d!1631874 (= lt!2088531 (ite ((_ is Empty!15562) lt!2088445) 0 (ite ((_ is Leaf!25848) lt!2088445) (csize!31355 lt!2088445) (csize!31354 lt!2088445))))))

(assert (=> d!1631874 (= (size!39073 lt!2088445) lt!2088531)))

(declare-fun bs!1189790 () Bool)

(assert (= bs!1189790 d!1631874))

(assert (=> bs!1189790 m!6103486))

(assert (=> bs!1189790 m!6103486))

(declare-fun m!6104052 () Bool)

(assert (=> bs!1189790 m!6104052))

(assert (=> b!5063675 d!1631874))

(assert (=> b!5063675 d!1631654))

(declare-fun d!1631876 () Bool)

(assert (=> d!1631876 (= (max!0 (height!2139 (left!42813 (right!43143 xs!286))) (height!2139 lt!2088445)) (ite (< (height!2139 (left!42813 (right!43143 xs!286))) (height!2139 lt!2088445)) (height!2139 lt!2088445) (height!2139 (left!42813 (right!43143 xs!286)))))))

(assert (=> b!5063675 d!1631876))

(declare-fun d!1631880 () Bool)

(declare-fun lt!2088532 () Int)

(assert (=> d!1631880 (= lt!2088532 (size!39071 (list!18985 (left!42813 (right!43143 xs!286)))))))

(assert (=> d!1631880 (= lt!2088532 (ite ((_ is Empty!15562) (left!42813 (right!43143 xs!286))) 0 (ite ((_ is Leaf!25848) (left!42813 (right!43143 xs!286))) (csize!31355 (left!42813 (right!43143 xs!286))) (csize!31354 (left!42813 (right!43143 xs!286))))))))

(assert (=> d!1631880 (= (size!39073 (left!42813 (right!43143 xs!286))) lt!2088532)))

(declare-fun bs!1189791 () Bool)

(assert (= bs!1189791 d!1631880))

(assert (=> bs!1189791 m!6103448))

(assert (=> bs!1189791 m!6103448))

(declare-fun m!6104056 () Bool)

(assert (=> bs!1189791 m!6104056))

(assert (=> b!5063675 d!1631880))

(assert (=> b!5063659 d!1631636))

(assert (=> b!5063659 d!1631814))

(declare-fun d!1631882 () Bool)

(declare-fun c!869076 () Bool)

(assert (=> d!1631882 (= c!869076 ((_ is Empty!15562) (right!43143 (left!42813 ys!41))))))

(declare-fun e!3160457 () List!58556)

(assert (=> d!1631882 (= (list!18985 (right!43143 (left!42813 ys!41))) e!3160457)))

(declare-fun b!5063972 () Bool)

(declare-fun e!3160458 () List!58556)

(assert (=> b!5063972 (= e!3160458 (++!12784 (list!18985 (left!42813 (right!43143 (left!42813 ys!41)))) (list!18985 (right!43143 (right!43143 (left!42813 ys!41))))))))

(declare-fun b!5063969 () Bool)

(assert (=> b!5063969 (= e!3160457 Nil!58432)))

(declare-fun b!5063971 () Bool)

(assert (=> b!5063971 (= e!3160458 (list!18986 (xs!18906 (right!43143 (left!42813 ys!41)))))))

(declare-fun b!5063970 () Bool)

(assert (=> b!5063970 (= e!3160457 e!3160458)))

(declare-fun c!869077 () Bool)

(assert (=> b!5063970 (= c!869077 ((_ is Leaf!25848) (right!43143 (left!42813 ys!41))))))

(assert (= (and d!1631882 c!869076) b!5063969))

(assert (= (and d!1631882 (not c!869076)) b!5063970))

(assert (= (and b!5063970 c!869077) b!5063971))

(assert (= (and b!5063970 (not c!869077)) b!5063972))

(declare-fun m!6104062 () Bool)

(assert (=> b!5063972 m!6104062))

(declare-fun m!6104064 () Bool)

(assert (=> b!5063972 m!6104064))

(assert (=> b!5063972 m!6104062))

(assert (=> b!5063972 m!6104064))

(declare-fun m!6104068 () Bool)

(assert (=> b!5063972 m!6104068))

(declare-fun m!6104072 () Bool)

(assert (=> b!5063971 m!6104072))

(assert (=> b!5063659 d!1631882))

(declare-fun bm!352745 () Bool)

(declare-fun call!352753 () List!58556)

(declare-fun call!352751 () List!58556)

(assert (=> bm!352745 (= call!352753 (++!12784 call!352751 (list!18985 (right!43143 ys!41))))))

(declare-fun d!1631884 () Bool)

(declare-fun e!3160461 () Bool)

(assert (=> d!1631884 e!3160461))

(declare-fun c!869080 () Bool)

(assert (=> d!1631884 (= c!869080 ((_ is Nil!58432) (++!12784 (list!18985 xs!286) (list!18985 (left!42813 (left!42813 ys!41))))))))

(assert (=> d!1631884 (= (appendAssoc!300 (++!12784 (list!18985 xs!286) (list!18985 (left!42813 (left!42813 ys!41)))) (list!18985 (right!43143 (left!42813 ys!41))) (list!18985 (right!43143 ys!41))) true)))

(declare-fun call!352752 () List!58556)

(declare-fun bm!352746 () Bool)

(declare-fun call!352750 () List!58556)

(assert (=> bm!352746 (= call!352750 (++!12784 (++!12784 (list!18985 xs!286) (list!18985 (left!42813 (left!42813 ys!41)))) call!352752))))

(declare-fun bm!352747 () Bool)

(assert (=> bm!352747 (= call!352752 (++!12784 (list!18985 (right!43143 (left!42813 ys!41))) (list!18985 (right!43143 ys!41))))))

(declare-fun b!5063977 () Bool)

(assert (=> b!5063977 (= e!3160461 (= call!352753 call!352750))))

(declare-fun lt!2088534 () Bool)

(assert (=> b!5063977 (= lt!2088534 (appendAssoc!300 (t!371279 (++!12784 (list!18985 xs!286) (list!18985 (left!42813 (left!42813 ys!41))))) (list!18985 (right!43143 (left!42813 ys!41))) (list!18985 (right!43143 ys!41))))))

(declare-fun bm!352748 () Bool)

(assert (=> bm!352748 (= call!352751 (++!12784 (++!12784 (list!18985 xs!286) (list!18985 (left!42813 (left!42813 ys!41)))) (list!18985 (right!43143 (left!42813 ys!41)))))))

(declare-fun b!5063978 () Bool)

(assert (=> b!5063978 (= e!3160461 (= call!352753 call!352750))))

(assert (= (and d!1631884 c!869080) b!5063978))

(assert (= (and d!1631884 (not c!869080)) b!5063977))

(assert (= (or b!5063978 b!5063977) bm!352748))

(assert (= (or b!5063978 b!5063977) bm!352747))

(assert (= (or b!5063978 b!5063977) bm!352746))

(assert (= (or b!5063978 b!5063977) bm!352745))

(assert (=> bm!352746 m!6103452))

(declare-fun m!6104084 () Bool)

(assert (=> bm!352746 m!6104084))

(assert (=> bm!352748 m!6103452))

(assert (=> bm!352748 m!6103444))

(declare-fun m!6104086 () Bool)

(assert (=> bm!352748 m!6104086))

(assert (=> b!5063977 m!6103444))

(assert (=> b!5063977 m!6103192))

(declare-fun m!6104088 () Bool)

(assert (=> b!5063977 m!6104088))

(assert (=> bm!352747 m!6103444))

(assert (=> bm!352747 m!6103192))

(declare-fun m!6104090 () Bool)

(assert (=> bm!352747 m!6104090))

(assert (=> bm!352745 m!6103192))

(declare-fun m!6104092 () Bool)

(assert (=> bm!352745 m!6104092))

(assert (=> b!5063659 d!1631884))

(declare-fun d!1631890 () Bool)

(declare-fun e!3160464 () Bool)

(assert (=> d!1631890 e!3160464))

(declare-fun res!2156259 () Bool)

(assert (=> d!1631890 (=> (not res!2156259) (not e!3160464))))

(declare-fun lt!2088535 () List!58556)

(assert (=> d!1631890 (= res!2156259 (= (content!10415 lt!2088535) ((_ map or) (content!10415 (list!18985 xs!286)) (content!10415 (list!18985 (left!42813 (left!42813 ys!41)))))))))

(declare-fun e!3160463 () List!58556)

(assert (=> d!1631890 (= lt!2088535 e!3160463)))

(declare-fun c!869081 () Bool)

(assert (=> d!1631890 (= c!869081 ((_ is Nil!58432) (list!18985 xs!286)))))

(assert (=> d!1631890 (= (++!12784 (list!18985 xs!286) (list!18985 (left!42813 (left!42813 ys!41)))) lt!2088535)))

(declare-fun b!5063982 () Bool)

(assert (=> b!5063982 (= e!3160463 (Cons!58432 (h!64880 (list!18985 xs!286)) (++!12784 (t!371279 (list!18985 xs!286)) (list!18985 (left!42813 (left!42813 ys!41))))))))

(declare-fun b!5063984 () Bool)

(assert (=> b!5063984 (= e!3160464 (or (not (= (list!18985 (left!42813 (left!42813 ys!41))) Nil!58432)) (= lt!2088535 (list!18985 xs!286))))))

(declare-fun b!5063981 () Bool)

(assert (=> b!5063981 (= e!3160463 (list!18985 (left!42813 (left!42813 ys!41))))))

(declare-fun b!5063983 () Bool)

(declare-fun res!2156260 () Bool)

(assert (=> b!5063983 (=> (not res!2156260) (not e!3160464))))

(assert (=> b!5063983 (= res!2156260 (= (size!39071 lt!2088535) (+ (size!39071 (list!18985 xs!286)) (size!39071 (list!18985 (left!42813 (left!42813 ys!41)))))))))

(assert (= (and d!1631890 c!869081) b!5063981))

(assert (= (and d!1631890 (not c!869081)) b!5063982))

(assert (= (and d!1631890 res!2156259) b!5063983))

(assert (= (and b!5063983 res!2156260) b!5063984))

(declare-fun m!6104102 () Bool)

(assert (=> d!1631890 m!6104102))

(assert (=> d!1631890 m!6103080))

(assert (=> d!1631890 m!6103170))

(assert (=> d!1631890 m!6103442))

(declare-fun m!6104104 () Bool)

(assert (=> d!1631890 m!6104104))

(assert (=> b!5063982 m!6103442))

(declare-fun m!6104106 () Bool)

(assert (=> b!5063982 m!6104106))

(declare-fun m!6104108 () Bool)

(assert (=> b!5063983 m!6104108))

(assert (=> b!5063983 m!6103080))

(assert (=> b!5063983 m!6103178))

(assert (=> b!5063983 m!6103442))

(declare-fun m!6104110 () Bool)

(assert (=> b!5063983 m!6104110))

(assert (=> b!5063659 d!1631890))

(declare-fun d!1631898 () Bool)

(declare-fun c!869082 () Bool)

(assert (=> d!1631898 (= c!869082 ((_ is Empty!15562) (left!42813 (left!42813 ys!41))))))

(declare-fun e!3160467 () List!58556)

(assert (=> d!1631898 (= (list!18985 (left!42813 (left!42813 ys!41))) e!3160467)))

(declare-fun b!5063994 () Bool)

(declare-fun e!3160468 () List!58556)

(assert (=> b!5063994 (= e!3160468 (++!12784 (list!18985 (left!42813 (left!42813 (left!42813 ys!41)))) (list!18985 (right!43143 (left!42813 (left!42813 ys!41))))))))

(declare-fun b!5063991 () Bool)

(assert (=> b!5063991 (= e!3160467 Nil!58432)))

(declare-fun b!5063993 () Bool)

(assert (=> b!5063993 (= e!3160468 (list!18986 (xs!18906 (left!42813 (left!42813 ys!41)))))))

(declare-fun b!5063992 () Bool)

(assert (=> b!5063992 (= e!3160467 e!3160468)))

(declare-fun c!869083 () Bool)

(assert (=> b!5063992 (= c!869083 ((_ is Leaf!25848) (left!42813 (left!42813 ys!41))))))

(assert (= (and d!1631898 c!869082) b!5063991))

(assert (= (and d!1631898 (not c!869082)) b!5063992))

(assert (= (and b!5063992 c!869083) b!5063993))

(assert (= (and b!5063992 (not c!869083)) b!5063994))

(declare-fun m!6104112 () Bool)

(assert (=> b!5063994 m!6104112))

(declare-fun m!6104114 () Bool)

(assert (=> b!5063994 m!6104114))

(assert (=> b!5063994 m!6104112))

(assert (=> b!5063994 m!6104114))

(declare-fun m!6104118 () Bool)

(assert (=> b!5063994 m!6104118))

(declare-fun m!6104122 () Bool)

(assert (=> b!5063993 m!6104122))

(assert (=> b!5063659 d!1631898))

(declare-fun d!1631900 () Bool)

(declare-fun res!2156280 () Bool)

(declare-fun e!3160479 () Bool)

(assert (=> d!1631900 (=> (not res!2156280) (not e!3160479))))

(assert (=> d!1631900 (= res!2156280 (<= (size!39071 (list!18986 (xs!18906 (right!43143 xs!286)))) 512))))

(assert (=> d!1631900 (= (inv!77549 (right!43143 xs!286)) e!3160479)))

(declare-fun b!5064016 () Bool)

(declare-fun res!2156281 () Bool)

(assert (=> b!5064016 (=> (not res!2156281) (not e!3160479))))

(assert (=> b!5064016 (= res!2156281 (= (csize!31355 (right!43143 xs!286)) (size!39071 (list!18986 (xs!18906 (right!43143 xs!286))))))))

(declare-fun b!5064018 () Bool)

(assert (=> b!5064018 (= e!3160479 (and (> (csize!31355 (right!43143 xs!286)) 0) (<= (csize!31355 (right!43143 xs!286)) 512)))))

(assert (= (and d!1631900 res!2156280) b!5064016))

(assert (= (and b!5064016 res!2156281) b!5064018))

(assert (=> d!1631900 m!6103982))

(assert (=> d!1631900 m!6103982))

(declare-fun m!6104164 () Bool)

(assert (=> d!1631900 m!6104164))

(assert (=> b!5064016 m!6103982))

(assert (=> b!5064016 m!6103982))

(assert (=> b!5064016 m!6104164))

(assert (=> b!5063277 d!1631900))

(declare-fun d!1631912 () Bool)

(declare-fun res!2156282 () Bool)

(declare-fun e!3160480 () Bool)

(assert (=> d!1631912 (=> (not res!2156282) (not e!3160480))))

(assert (=> d!1631912 (= res!2156282 (<= (size!39071 (list!18986 (xs!18906 (right!43143 ys!41)))) 512))))

(assert (=> d!1631912 (= (inv!77549 (right!43143 ys!41)) e!3160480)))

(declare-fun b!5064020 () Bool)

(declare-fun res!2156283 () Bool)

(assert (=> b!5064020 (=> (not res!2156283) (not e!3160480))))

(assert (=> b!5064020 (= res!2156283 (= (csize!31355 (right!43143 ys!41)) (size!39071 (list!18986 (xs!18906 (right!43143 ys!41))))))))

(declare-fun b!5064021 () Bool)

(assert (=> b!5064021 (= e!3160480 (and (> (csize!31355 (right!43143 ys!41)) 0) (<= (csize!31355 (right!43143 ys!41)) 512)))))

(assert (= (and d!1631912 res!2156282) b!5064020))

(assert (= (and b!5064020 res!2156283) b!5064021))

(assert (=> d!1631912 m!6103868))

(assert (=> d!1631912 m!6103868))

(declare-fun m!6104168 () Bool)

(assert (=> d!1631912 m!6104168))

(assert (=> b!5064020 m!6103868))

(assert (=> b!5064020 m!6103868))

(assert (=> b!5064020 m!6104168))

(assert (=> b!5063369 d!1631912))

(declare-fun d!1631916 () Bool)

(assert (=> d!1631916 (= (height!2139 (ite c!868975 lt!2088475 ys!41)) (ite ((_ is Empty!15562) (ite c!868975 lt!2088475 ys!41)) 0 (ite ((_ is Leaf!25848) (ite c!868975 lt!2088475 ys!41)) 1 (cheight!15773 (ite c!868975 lt!2088475 ys!41)))))))

(assert (=> bm!352672 d!1631916))

(declare-fun d!1631920 () Bool)

(assert (=> d!1631920 (= (list!18986 (xs!18906 xs!286)) (innerList!15650 (xs!18906 xs!286)))))

(assert (=> b!5063346 d!1631920))

(declare-fun b!5064032 () Bool)

(declare-fun e!3160486 () Conc!15562)

(assert (=> b!5064032 (= e!3160486 (Node!15562 (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41))))) (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41)))) (+ (size!39073 (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41)))))) (size!39073 (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41)))))) (+ (max!0 (height!2139 (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41)))))) (height!2139 (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41)))))) 1)))))

(declare-fun d!1631926 () Bool)

(declare-fun lt!2088540 () Conc!15562)

(assert (=> d!1631926 (= (list!18985 lt!2088540) (++!12784 (list!18985 (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41)))))) (list!18985 (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41)))))))))

(declare-fun e!3160485 () Conc!15562)

(assert (=> d!1631926 (= lt!2088540 e!3160485)))

(declare-fun c!869092 () Bool)

(assert (=> d!1631926 (= c!869092 (= (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41))))) Empty!15562))))

(assert (=> d!1631926 (= (<>!394 (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41))))) (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41))))) lt!2088540)))

(declare-fun b!5064029 () Bool)

(assert (=> b!5064029 (= e!3160485 (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41)))))))

(declare-fun b!5064031 () Bool)

(assert (=> b!5064031 (= e!3160486 (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41))))))))

(declare-fun b!5064030 () Bool)

(assert (=> b!5064030 (= e!3160485 e!3160486)))

(declare-fun c!869091 () Bool)

(assert (=> b!5064030 (= c!869091 (= (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41)))) Empty!15562))))

(assert (= (and d!1631926 c!869092) b!5064029))

(assert (= (and d!1631926 (not c!869092)) b!5064030))

(assert (= (and b!5064030 c!869091) b!5064031))

(assert (= (and b!5064030 (not c!869091)) b!5064032))

(declare-fun m!6104184 () Bool)

(assert (=> b!5064032 m!6104184))

(declare-fun m!6104186 () Bool)

(assert (=> b!5064032 m!6104186))

(declare-fun m!6104188 () Bool)

(assert (=> b!5064032 m!6104188))

(declare-fun m!6104190 () Bool)

(assert (=> b!5064032 m!6104190))

(assert (=> b!5064032 m!6104188))

(declare-fun m!6104194 () Bool)

(assert (=> b!5064032 m!6104194))

(assert (=> b!5064032 m!6104190))

(declare-fun m!6104196 () Bool)

(assert (=> d!1631926 m!6104196))

(declare-fun m!6104198 () Bool)

(assert (=> d!1631926 m!6104198))

(declare-fun m!6104200 () Bool)

(assert (=> d!1631926 m!6104200))

(assert (=> d!1631926 m!6104198))

(assert (=> d!1631926 m!6104200))

(declare-fun m!6104202 () Bool)

(assert (=> d!1631926 m!6104202))

(assert (=> bm!352670 d!1631926))

(declare-fun b!5064038 () Bool)

(declare-fun res!2156292 () Bool)

(declare-fun e!3160490 () Bool)

(assert (=> b!5064038 (=> (not res!2156292) (not e!3160490))))

(assert (=> b!5064038 (= res!2156292 (not (isEmpty!31626 (left!42813 (left!42813 xs!286)))))))

(declare-fun b!5064039 () Bool)

(declare-fun res!2156295 () Bool)

(assert (=> b!5064039 (=> (not res!2156295) (not e!3160490))))

(assert (=> b!5064039 (= res!2156295 (<= (- (height!2139 (left!42813 (left!42813 xs!286))) (height!2139 (right!43143 (left!42813 xs!286)))) 1))))

(declare-fun b!5064040 () Bool)

(declare-fun e!3160491 () Bool)

(assert (=> b!5064040 (= e!3160491 e!3160490)))

(declare-fun res!2156294 () Bool)

(assert (=> b!5064040 (=> (not res!2156294) (not e!3160490))))

(assert (=> b!5064040 (= res!2156294 (<= (- 1) (- (height!2139 (left!42813 (left!42813 xs!286))) (height!2139 (right!43143 (left!42813 xs!286))))))))

(declare-fun d!1631936 () Bool)

(declare-fun res!2156291 () Bool)

(assert (=> d!1631936 (=> res!2156291 e!3160491)))

(assert (=> d!1631936 (= res!2156291 (not ((_ is Node!15562) (left!42813 xs!286))))))

(assert (=> d!1631936 (= (isBalanced!4424 (left!42813 xs!286)) e!3160491)))

(declare-fun b!5064041 () Bool)

(assert (=> b!5064041 (= e!3160490 (not (isEmpty!31626 (right!43143 (left!42813 xs!286)))))))

(declare-fun b!5064042 () Bool)

(declare-fun res!2156290 () Bool)

(assert (=> b!5064042 (=> (not res!2156290) (not e!3160490))))

(assert (=> b!5064042 (= res!2156290 (isBalanced!4424 (left!42813 (left!42813 xs!286))))))

(declare-fun b!5064043 () Bool)

(declare-fun res!2156293 () Bool)

(assert (=> b!5064043 (=> (not res!2156293) (not e!3160490))))

(assert (=> b!5064043 (= res!2156293 (isBalanced!4424 (right!43143 (left!42813 xs!286))))))

(assert (= (and d!1631936 (not res!2156291)) b!5064040))

(assert (= (and b!5064040 res!2156294) b!5064039))

(assert (= (and b!5064039 res!2156295) b!5064042))

(assert (= (and b!5064042 res!2156290) b!5064043))

(assert (= (and b!5064043 res!2156293) b!5064038))

(assert (= (and b!5064038 res!2156292) b!5064041))

(declare-fun m!6104204 () Bool)

(assert (=> b!5064042 m!6104204))

(declare-fun m!6104206 () Bool)

(assert (=> b!5064041 m!6104206))

(declare-fun m!6104208 () Bool)

(assert (=> b!5064038 m!6104208))

(declare-fun m!6104210 () Bool)

(assert (=> b!5064039 m!6104210))

(declare-fun m!6104212 () Bool)

(assert (=> b!5064039 m!6104212))

(declare-fun m!6104214 () Bool)

(assert (=> b!5064043 m!6104214))

(assert (=> b!5064040 m!6104210))

(assert (=> b!5064040 m!6104212))

(assert (=> b!5063356 d!1631936))

(declare-fun d!1631938 () Bool)

(declare-fun res!2156313 () Bool)

(declare-fun e!3160511 () Bool)

(assert (=> d!1631938 (=> (not res!2156313) (not e!3160511))))

(assert (=> d!1631938 (= res!2156313 (= (csize!31354 (right!43143 xs!286)) (+ (size!39073 (left!42813 (right!43143 xs!286))) (size!39073 (right!43143 (right!43143 xs!286))))))))

(assert (=> d!1631938 (= (inv!77548 (right!43143 xs!286)) e!3160511)))

(declare-fun b!5064085 () Bool)

(declare-fun res!2156314 () Bool)

(assert (=> b!5064085 (=> (not res!2156314) (not e!3160511))))

(assert (=> b!5064085 (= res!2156314 (and (not (= (left!42813 (right!43143 xs!286)) Empty!15562)) (not (= (right!43143 (right!43143 xs!286)) Empty!15562))))))

(declare-fun b!5064086 () Bool)

(declare-fun res!2156315 () Bool)

(assert (=> b!5064086 (=> (not res!2156315) (not e!3160511))))

(assert (=> b!5064086 (= res!2156315 (= (cheight!15773 (right!43143 xs!286)) (+ (max!0 (height!2139 (left!42813 (right!43143 xs!286))) (height!2139 (right!43143 (right!43143 xs!286)))) 1)))))

(declare-fun b!5064087 () Bool)

(assert (=> b!5064087 (= e!3160511 (<= 0 (cheight!15773 (right!43143 xs!286))))))

(assert (= (and d!1631938 res!2156313) b!5064085))

(assert (= (and b!5064085 res!2156314) b!5064086))

(assert (= (and b!5064086 res!2156315) b!5064087))

(assert (=> d!1631938 m!6103476))

(declare-fun m!6104288 () Bool)

(assert (=> d!1631938 m!6104288))

(assert (=> b!5064086 m!6103480))

(assert (=> b!5064086 m!6103370))

(assert (=> b!5064086 m!6103480))

(assert (=> b!5064086 m!6103370))

(declare-fun m!6104294 () Bool)

(assert (=> b!5064086 m!6104294))

(assert (=> b!5063275 d!1631938))

(declare-fun d!1631966 () Bool)

(declare-fun res!2156317 () Bool)

(declare-fun e!3160513 () Bool)

(assert (=> d!1631966 (=> (not res!2156317) (not e!3160513))))

(assert (=> d!1631966 (= res!2156317 (= (csize!31354 (right!43143 ys!41)) (+ (size!39073 (left!42813 (right!43143 ys!41))) (size!39073 (right!43143 (right!43143 ys!41))))))))

(assert (=> d!1631966 (= (inv!77548 (right!43143 ys!41)) e!3160513)))

(declare-fun b!5064089 () Bool)

(declare-fun res!2156318 () Bool)

(assert (=> b!5064089 (=> (not res!2156318) (not e!3160513))))

(assert (=> b!5064089 (= res!2156318 (and (not (= (left!42813 (right!43143 ys!41)) Empty!15562)) (not (= (right!43143 (right!43143 ys!41)) Empty!15562))))))

(declare-fun b!5064091 () Bool)

(declare-fun res!2156320 () Bool)

(assert (=> b!5064091 (=> (not res!2156320) (not e!3160513))))

(assert (=> b!5064091 (= res!2156320 (= (cheight!15773 (right!43143 ys!41)) (+ (max!0 (height!2139 (left!42813 (right!43143 ys!41))) (height!2139 (right!43143 (right!43143 ys!41)))) 1)))))

(declare-fun b!5064093 () Bool)

(assert (=> b!5064093 (= e!3160513 (<= 0 (cheight!15773 (right!43143 ys!41))))))

(assert (= (and d!1631966 res!2156317) b!5064089))

(assert (= (and b!5064089 res!2156318) b!5064091))

(assert (= (and b!5064091 res!2156320) b!5064093))

(declare-fun m!6104296 () Bool)

(assert (=> d!1631966 m!6104296))

(declare-fun m!6104298 () Bool)

(assert (=> d!1631966 m!6104298))

(assert (=> b!5064091 m!6103838))

(assert (=> b!5064091 m!6103840))

(assert (=> b!5064091 m!6103838))

(assert (=> b!5064091 m!6103840))

(declare-fun m!6104306 () Bool)

(assert (=> b!5064091 m!6104306))

(assert (=> b!5063367 d!1631966))

(declare-fun b!5064095 () Bool)

(declare-fun res!2156323 () Bool)

(declare-fun e!3160515 () Bool)

(assert (=> b!5064095 (=> (not res!2156323) (not e!3160515))))

(assert (=> b!5064095 (= res!2156323 (not (isEmpty!31626 (left!42813 (left!42813 ys!41)))))))

(declare-fun b!5064096 () Bool)

(declare-fun res!2156326 () Bool)

(assert (=> b!5064096 (=> (not res!2156326) (not e!3160515))))

(assert (=> b!5064096 (= res!2156326 (<= (- (height!2139 (left!42813 (left!42813 ys!41))) (height!2139 (right!43143 (left!42813 ys!41)))) 1))))

(declare-fun b!5064097 () Bool)

(declare-fun e!3160516 () Bool)

(assert (=> b!5064097 (= e!3160516 e!3160515)))

(declare-fun res!2156325 () Bool)

(assert (=> b!5064097 (=> (not res!2156325) (not e!3160515))))

(assert (=> b!5064097 (= res!2156325 (<= (- 1) (- (height!2139 (left!42813 (left!42813 ys!41))) (height!2139 (right!43143 (left!42813 ys!41))))))))

(declare-fun d!1631968 () Bool)

(declare-fun res!2156322 () Bool)

(assert (=> d!1631968 (=> res!2156322 e!3160516)))

(assert (=> d!1631968 (= res!2156322 (not ((_ is Node!15562) (left!42813 ys!41))))))

(assert (=> d!1631968 (= (isBalanced!4424 (left!42813 ys!41)) e!3160516)))

(declare-fun b!5064098 () Bool)

(assert (=> b!5064098 (= e!3160515 (not (isEmpty!31626 (right!43143 (left!42813 ys!41)))))))

(declare-fun b!5064099 () Bool)

(declare-fun res!2156321 () Bool)

(assert (=> b!5064099 (=> (not res!2156321) (not e!3160515))))

(assert (=> b!5064099 (= res!2156321 (isBalanced!4424 (left!42813 (left!42813 ys!41))))))

(declare-fun b!5064100 () Bool)

(declare-fun res!2156324 () Bool)

(assert (=> b!5064100 (=> (not res!2156324) (not e!3160515))))

(assert (=> b!5064100 (= res!2156324 (isBalanced!4424 (right!43143 (left!42813 ys!41))))))

(assert (= (and d!1631968 (not res!2156322)) b!5064097))

(assert (= (and b!5064097 res!2156325) b!5064096))

(assert (= (and b!5064096 res!2156326) b!5064099))

(assert (= (and b!5064099 res!2156321) b!5064100))

(assert (= (and b!5064100 res!2156324) b!5064095))

(assert (= (and b!5064095 res!2156323) b!5064098))

(declare-fun m!6104314 () Bool)

(assert (=> b!5064099 m!6104314))

(declare-fun m!6104318 () Bool)

(assert (=> b!5064098 m!6104318))

(declare-fun m!6104320 () Bool)

(assert (=> b!5064095 m!6104320))

(declare-fun m!6104322 () Bool)

(assert (=> b!5064096 m!6104322))

(declare-fun m!6104324 () Bool)

(assert (=> b!5064096 m!6104324))

(declare-fun m!6104326 () Bool)

(assert (=> b!5064100 m!6104326))

(assert (=> b!5064097 m!6104322))

(assert (=> b!5064097 m!6104324))

(assert (=> b!5063312 d!1631968))

(declare-fun d!1631976 () Bool)

(declare-fun res!2156329 () Bool)

(declare-fun e!3160520 () Bool)

(assert (=> d!1631976 (=> (not res!2156329) (not e!3160520))))

(assert (=> d!1631976 (= res!2156329 (<= (size!39071 (list!18986 (xs!18906 (left!42813 ys!41)))) 512))))

(assert (=> d!1631976 (= (inv!77549 (left!42813 ys!41)) e!3160520)))

(declare-fun b!5064107 () Bool)

(declare-fun res!2156330 () Bool)

(assert (=> b!5064107 (=> (not res!2156330) (not e!3160520))))

(assert (=> b!5064107 (= res!2156330 (= (csize!31355 (left!42813 ys!41)) (size!39071 (list!18986 (xs!18906 (left!42813 ys!41))))))))

(declare-fun b!5064108 () Bool)

(assert (=> b!5064108 (= e!3160520 (and (> (csize!31355 (left!42813 ys!41)) 0) (<= (csize!31355 (left!42813 ys!41)) 512)))))

(assert (= (and d!1631976 res!2156329) b!5064107))

(assert (= (and b!5064107 res!2156330) b!5064108))

(assert (=> d!1631976 m!6103860))

(assert (=> d!1631976 m!6103860))

(declare-fun m!6104336 () Bool)

(assert (=> d!1631976 m!6104336))

(assert (=> b!5064107 m!6103860))

(assert (=> b!5064107 m!6103860))

(assert (=> b!5064107 m!6104336))

(assert (=> b!5063366 d!1631976))

(declare-fun d!1631980 () Bool)

(assert (=> d!1631980 (= (height!2139 (ite c!868975 (right!43143 (right!43143 xs!286)) lt!2088476)) (ite ((_ is Empty!15562) (ite c!868975 (right!43143 (right!43143 xs!286)) lt!2088476)) 0 (ite ((_ is Leaf!25848) (ite c!868975 (right!43143 (right!43143 xs!286)) lt!2088476)) 1 (cheight!15773 (ite c!868975 (right!43143 (right!43143 xs!286)) lt!2088476)))))))

(assert (=> bm!352678 d!1631980))

(declare-fun d!1631982 () Bool)

(declare-fun res!2156340 () Bool)

(declare-fun e!3160530 () Bool)

(assert (=> d!1631982 (=> (not res!2156340) (not e!3160530))))

(assert (=> d!1631982 (= res!2156340 (= (csize!31354 ys!41) (+ (size!39073 (left!42813 ys!41)) (size!39073 (right!43143 ys!41)))))))

(assert (=> d!1631982 (= (inv!77548 ys!41) e!3160530)))

(declare-fun b!5064118 () Bool)

(declare-fun res!2156341 () Bool)

(assert (=> b!5064118 (=> (not res!2156341) (not e!3160530))))

(assert (=> b!5064118 (= res!2156341 (and (not (= (left!42813 ys!41) Empty!15562)) (not (= (right!43143 ys!41) Empty!15562))))))

(declare-fun b!5064119 () Bool)

(declare-fun res!2156342 () Bool)

(assert (=> b!5064119 (=> (not res!2156342) (not e!3160530))))

(assert (=> b!5064119 (= res!2156342 (= (cheight!15773 ys!41) (+ (max!0 (height!2139 (left!42813 ys!41)) (height!2139 (right!43143 ys!41))) 1)))))

(declare-fun b!5064120 () Bool)

(assert (=> b!5064120 (= e!3160530 (<= 0 (cheight!15773 ys!41)))))

(assert (= (and d!1631982 res!2156340) b!5064118))

(assert (= (and b!5064118 res!2156341) b!5064119))

(assert (= (and b!5064119 res!2156342) b!5064120))

(declare-fun m!6104338 () Bool)

(assert (=> d!1631982 m!6104338))

(assert (=> d!1631982 m!6103594))

(assert (=> b!5064119 m!6103142))

(assert (=> b!5064119 m!6103144))

(assert (=> b!5064119 m!6103142))

(assert (=> b!5064119 m!6103144))

(declare-fun m!6104340 () Bool)

(assert (=> b!5064119 m!6104340))

(assert (=> b!5063361 d!1631982))

(declare-fun d!1631984 () Bool)

(declare-fun c!869111 () Bool)

(assert (=> d!1631984 (= c!869111 ((_ is Nil!58432) lt!2088448))))

(declare-fun e!3160533 () (InoxSet T!105104))

(assert (=> d!1631984 (= (content!10415 lt!2088448) e!3160533)))

(declare-fun b!5064125 () Bool)

(assert (=> b!5064125 (= e!3160533 ((as const (Array T!105104 Bool)) false))))

(declare-fun b!5064126 () Bool)

(assert (=> b!5064126 (= e!3160533 ((_ map or) (store ((as const (Array T!105104 Bool)) false) (h!64880 lt!2088448) true) (content!10415 (t!371279 lt!2088448))))))

(assert (= (and d!1631984 c!869111) b!5064125))

(assert (= (and d!1631984 (not c!869111)) b!5064126))

(declare-fun m!6104360 () Bool)

(assert (=> b!5064126 m!6104360))

(declare-fun m!6104362 () Bool)

(assert (=> b!5064126 m!6104362))

(assert (=> d!1631634 d!1631984))

(declare-fun d!1631986 () Bool)

(declare-fun c!869112 () Bool)

(assert (=> d!1631986 (= c!869112 ((_ is Nil!58432) (list!18985 xs!286)))))

(declare-fun e!3160534 () (InoxSet T!105104))

(assert (=> d!1631986 (= (content!10415 (list!18985 xs!286)) e!3160534)))

(declare-fun b!5064127 () Bool)

(assert (=> b!5064127 (= e!3160534 ((as const (Array T!105104 Bool)) false))))

(declare-fun b!5064128 () Bool)

(assert (=> b!5064128 (= e!3160534 ((_ map or) (store ((as const (Array T!105104 Bool)) false) (h!64880 (list!18985 xs!286)) true) (content!10415 (t!371279 (list!18985 xs!286)))))))

(assert (= (and d!1631986 c!869112) b!5064127))

(assert (= (and d!1631986 (not c!869112)) b!5064128))

(declare-fun m!6104366 () Bool)

(assert (=> b!5064128 m!6104366))

(assert (=> b!5064128 m!6103914))

(assert (=> d!1631634 d!1631986))

(declare-fun d!1631990 () Bool)

(declare-fun c!869113 () Bool)

(assert (=> d!1631990 (= c!869113 ((_ is Nil!58432) (list!18985 ys!41)))))

(declare-fun e!3160537 () (InoxSet T!105104))

(assert (=> d!1631990 (= (content!10415 (list!18985 ys!41)) e!3160537)))

(declare-fun b!5064135 () Bool)

(assert (=> b!5064135 (= e!3160537 ((as const (Array T!105104 Bool)) false))))

(declare-fun b!5064136 () Bool)

(assert (=> b!5064136 (= e!3160537 ((_ map or) (store ((as const (Array T!105104 Bool)) false) (h!64880 (list!18985 ys!41)) true) (content!10415 (t!371279 (list!18985 ys!41)))))))

(assert (= (and d!1631990 c!869113) b!5064135))

(assert (= (and d!1631990 (not c!869113)) b!5064136))

(declare-fun m!6104368 () Bool)

(assert (=> b!5064136 m!6104368))

(declare-fun m!6104370 () Bool)

(assert (=> b!5064136 m!6104370))

(assert (=> d!1631634 d!1631990))

(declare-fun b!5064137 () Bool)

(declare-fun res!2156351 () Bool)

(declare-fun e!3160538 () Bool)

(assert (=> b!5064137 (=> (not res!2156351) (not e!3160538))))

(assert (=> b!5064137 (= res!2156351 (not (isEmpty!31626 (left!42813 lt!2088474))))))

(declare-fun b!5064138 () Bool)

(declare-fun res!2156354 () Bool)

(assert (=> b!5064138 (=> (not res!2156354) (not e!3160538))))

(assert (=> b!5064138 (= res!2156354 (<= (- (height!2139 (left!42813 lt!2088474)) (height!2139 (right!43143 lt!2088474))) 1))))

(declare-fun b!5064139 () Bool)

(declare-fun e!3160539 () Bool)

(assert (=> b!5064139 (= e!3160539 e!3160538)))

(declare-fun res!2156353 () Bool)

(assert (=> b!5064139 (=> (not res!2156353) (not e!3160538))))

(assert (=> b!5064139 (= res!2156353 (<= (- 1) (- (height!2139 (left!42813 lt!2088474)) (height!2139 (right!43143 lt!2088474)))))))

(declare-fun d!1631992 () Bool)

(declare-fun res!2156350 () Bool)

(assert (=> d!1631992 (=> res!2156350 e!3160539)))

(assert (=> d!1631992 (= res!2156350 (not ((_ is Node!15562) lt!2088474)))))

(assert (=> d!1631992 (= (isBalanced!4424 lt!2088474) e!3160539)))

(declare-fun b!5064140 () Bool)

(assert (=> b!5064140 (= e!3160538 (not (isEmpty!31626 (right!43143 lt!2088474))))))

(declare-fun b!5064141 () Bool)

(declare-fun res!2156349 () Bool)

(assert (=> b!5064141 (=> (not res!2156349) (not e!3160538))))

(assert (=> b!5064141 (= res!2156349 (isBalanced!4424 (left!42813 lt!2088474)))))

(declare-fun b!5064142 () Bool)

(declare-fun res!2156352 () Bool)

(assert (=> b!5064142 (=> (not res!2156352) (not e!3160538))))

(assert (=> b!5064142 (= res!2156352 (isBalanced!4424 (right!43143 lt!2088474)))))

(assert (= (and d!1631992 (not res!2156350)) b!5064139))

(assert (= (and b!5064139 res!2156353) b!5064138))

(assert (= (and b!5064138 res!2156354) b!5064141))

(assert (= (and b!5064141 res!2156349) b!5064142))

(assert (= (and b!5064142 res!2156352) b!5064137))

(assert (= (and b!5064137 res!2156351) b!5064140))

(declare-fun m!6104384 () Bool)

(assert (=> b!5064141 m!6104384))

(declare-fun m!6104386 () Bool)

(assert (=> b!5064140 m!6104386))

(declare-fun m!6104388 () Bool)

(assert (=> b!5064137 m!6104388))

(declare-fun m!6104390 () Bool)

(assert (=> b!5064138 m!6104390))

(declare-fun m!6104392 () Bool)

(assert (=> b!5064138 m!6104392))

(declare-fun m!6104394 () Bool)

(assert (=> b!5064142 m!6104394))

(assert (=> b!5064139 m!6104390))

(assert (=> b!5064139 m!6104392))

(assert (=> b!5063577 d!1631992))

(declare-fun d!1631998 () Bool)

(declare-fun c!869114 () Bool)

(assert (=> d!1631998 (= c!869114 ((_ is Empty!15562) lt!2088483))))

(declare-fun e!3160541 () List!58556)

(assert (=> d!1631998 (= (list!18985 lt!2088483) e!3160541)))

(declare-fun b!5064149 () Bool)

(declare-fun e!3160542 () List!58556)

(assert (=> b!5064149 (= e!3160542 (++!12784 (list!18985 (left!42813 lt!2088483)) (list!18985 (right!43143 lt!2088483))))))

(declare-fun b!5064146 () Bool)

(assert (=> b!5064146 (= e!3160541 Nil!58432)))

(declare-fun b!5064148 () Bool)

(assert (=> b!5064148 (= e!3160542 (list!18986 (xs!18906 lt!2088483)))))

(declare-fun b!5064147 () Bool)

(assert (=> b!5064147 (= e!3160541 e!3160542)))

(declare-fun c!869115 () Bool)

(assert (=> b!5064147 (= c!869115 ((_ is Leaf!25848) lt!2088483))))

(assert (= (and d!1631998 c!869114) b!5064146))

(assert (= (and d!1631998 (not c!869114)) b!5064147))

(assert (= (and b!5064147 c!869115) b!5064148))

(assert (= (and b!5064147 (not c!869115)) b!5064149))

(declare-fun m!6104402 () Bool)

(assert (=> b!5064149 m!6104402))

(declare-fun m!6104404 () Bool)

(assert (=> b!5064149 m!6104404))

(assert (=> b!5064149 m!6104402))

(assert (=> b!5064149 m!6104404))

(declare-fun m!6104406 () Bool)

(assert (=> b!5064149 m!6104406))

(declare-fun m!6104408 () Bool)

(assert (=> b!5064148 m!6104408))

(assert (=> d!1631700 d!1631998))

(declare-fun d!1632002 () Bool)

(declare-fun e!3160546 () Bool)

(assert (=> d!1632002 e!3160546))

(declare-fun res!2156358 () Bool)

(assert (=> d!1632002 (=> (not res!2156358) (not e!3160546))))

(declare-fun lt!2088545 () List!58556)

(assert (=> d!1632002 (= res!2156358 (= (content!10415 lt!2088545) ((_ map or) (content!10415 (list!18985 (left!42813 (right!43143 xs!286)))) (content!10415 (list!18985 lt!2088445)))))))

(declare-fun e!3160545 () List!58556)

(assert (=> d!1632002 (= lt!2088545 e!3160545)))

(declare-fun c!869118 () Bool)

(assert (=> d!1632002 (= c!869118 ((_ is Nil!58432) (list!18985 (left!42813 (right!43143 xs!286)))))))

(assert (=> d!1632002 (= (++!12784 (list!18985 (left!42813 (right!43143 xs!286))) (list!18985 lt!2088445)) lt!2088545)))

(declare-fun b!5064155 () Bool)

(assert (=> b!5064155 (= e!3160545 (Cons!58432 (h!64880 (list!18985 (left!42813 (right!43143 xs!286)))) (++!12784 (t!371279 (list!18985 (left!42813 (right!43143 xs!286)))) (list!18985 lt!2088445))))))

(declare-fun b!5064157 () Bool)

(assert (=> b!5064157 (= e!3160546 (or (not (= (list!18985 lt!2088445) Nil!58432)) (= lt!2088545 (list!18985 (left!42813 (right!43143 xs!286))))))))

(declare-fun b!5064154 () Bool)

(assert (=> b!5064154 (= e!3160545 (list!18985 lt!2088445))))

(declare-fun b!5064156 () Bool)

(declare-fun res!2156359 () Bool)

(assert (=> b!5064156 (=> (not res!2156359) (not e!3160546))))

(assert (=> b!5064156 (= res!2156359 (= (size!39071 lt!2088545) (+ (size!39071 (list!18985 (left!42813 (right!43143 xs!286)))) (size!39071 (list!18985 lt!2088445)))))))

(assert (= (and d!1632002 c!869118) b!5064154))

(assert (= (and d!1632002 (not c!869118)) b!5064155))

(assert (= (and d!1632002 res!2156358) b!5064156))

(assert (= (and b!5064156 res!2156359) b!5064157))

(declare-fun m!6104418 () Bool)

(assert (=> d!1632002 m!6104418))

(assert (=> d!1632002 m!6103448))

(declare-fun m!6104420 () Bool)

(assert (=> d!1632002 m!6104420))

(assert (=> d!1632002 m!6103486))

(declare-fun m!6104422 () Bool)

(assert (=> d!1632002 m!6104422))

(assert (=> b!5064155 m!6103486))

(declare-fun m!6104424 () Bool)

(assert (=> b!5064155 m!6104424))

(declare-fun m!6104426 () Bool)

(assert (=> b!5064156 m!6104426))

(assert (=> b!5064156 m!6103448))

(assert (=> b!5064156 m!6104056))

(assert (=> b!5064156 m!6103486))

(assert (=> b!5064156 m!6104052))

(assert (=> d!1631700 d!1632002))

(assert (=> d!1631700 d!1631858))

(declare-fun d!1632006 () Bool)

(declare-fun c!869120 () Bool)

(assert (=> d!1632006 (= c!869120 ((_ is Empty!15562) lt!2088445))))

(declare-fun e!3160549 () List!58556)

(assert (=> d!1632006 (= (list!18985 lt!2088445) e!3160549)))

(declare-fun b!5064165 () Bool)

(declare-fun e!3160550 () List!58556)

(assert (=> b!5064165 (= e!3160550 (++!12784 (list!18985 (left!42813 lt!2088445)) (list!18985 (right!43143 lt!2088445))))))

(declare-fun b!5064162 () Bool)

(assert (=> b!5064162 (= e!3160549 Nil!58432)))

(declare-fun b!5064164 () Bool)

(assert (=> b!5064164 (= e!3160550 (list!18986 (xs!18906 lt!2088445)))))

(declare-fun b!5064163 () Bool)

(assert (=> b!5064163 (= e!3160549 e!3160550)))

(declare-fun c!869121 () Bool)

(assert (=> b!5064163 (= c!869121 ((_ is Leaf!25848) lt!2088445))))

(assert (= (and d!1632006 c!869120) b!5064162))

(assert (= (and d!1632006 (not c!869120)) b!5064163))

(assert (= (and b!5064163 c!869121) b!5064164))

(assert (= (and b!5064163 (not c!869121)) b!5064165))

(declare-fun m!6104442 () Bool)

(assert (=> b!5064165 m!6104442))

(declare-fun m!6104444 () Bool)

(assert (=> b!5064165 m!6104444))

(assert (=> b!5064165 m!6104442))

(assert (=> b!5064165 m!6104444))

(declare-fun m!6104446 () Bool)

(assert (=> b!5064165 m!6104446))

(declare-fun m!6104448 () Bool)

(assert (=> b!5064164 m!6104448))

(assert (=> d!1631700 d!1632006))

(declare-fun d!1632010 () Bool)

(declare-fun lt!2088554 () Int)

(assert (=> d!1632010 (>= lt!2088554 0)))

(declare-fun e!3160559 () Int)

(assert (=> d!1632010 (= lt!2088554 e!3160559)))

(declare-fun c!869129 () Bool)

(assert (=> d!1632010 (= c!869129 ((_ is Nil!58432) (innerList!15650 (xs!18906 ys!41))))))

(assert (=> d!1632010 (= (size!39071 (innerList!15650 (xs!18906 ys!41))) lt!2088554)))

(declare-fun b!5064183 () Bool)

(assert (=> b!5064183 (= e!3160559 0)))

(declare-fun b!5064184 () Bool)

(assert (=> b!5064184 (= e!3160559 (+ 1 (size!39071 (t!371279 (innerList!15650 (xs!18906 ys!41))))))))

(assert (= (and d!1632010 c!869129) b!5064183))

(assert (= (and d!1632010 (not c!869129)) b!5064184))

(declare-fun m!6104468 () Bool)

(assert (=> b!5064184 m!6104468))

(assert (=> d!1631652 d!1632010))

(assert (=> b!5063310 d!1631746))

(assert (=> b!5063310 d!1631750))

(declare-fun d!1632032 () Bool)

(declare-fun res!2156365 () Bool)

(declare-fun e!3160561 () Bool)

(assert (=> d!1632032 (=> (not res!2156365) (not e!3160561))))

(assert (=> d!1632032 (= res!2156365 (<= (size!39071 (list!18986 (xs!18906 (left!42813 xs!286)))) 512))))

(assert (=> d!1632032 (= (inv!77549 (left!42813 xs!286)) e!3160561)))

(declare-fun b!5064187 () Bool)

(declare-fun res!2156366 () Bool)

(assert (=> b!5064187 (=> (not res!2156366) (not e!3160561))))

(assert (=> b!5064187 (= res!2156366 (= (csize!31355 (left!42813 xs!286)) (size!39071 (list!18986 (xs!18906 (left!42813 xs!286))))))))

(declare-fun b!5064188 () Bool)

(assert (=> b!5064188 (= e!3160561 (and (> (csize!31355 (left!42813 xs!286)) 0) (<= (csize!31355 (left!42813 xs!286)) 512)))))

(assert (= (and d!1632032 res!2156365) b!5064187))

(assert (= (and b!5064187 res!2156366) b!5064188))

(assert (=> d!1632032 m!6103978))

(assert (=> d!1632032 m!6103978))

(declare-fun m!6104470 () Bool)

(assert (=> d!1632032 m!6104470))

(assert (=> b!5064187 m!6103978))

(assert (=> b!5064187 m!6103978))

(assert (=> b!5064187 m!6104470))

(assert (=> b!5063274 d!1632032))

(assert (=> b!5063252 d!1631602))

(assert (=> b!5063252 d!1631606))

(declare-fun d!1632034 () Bool)

(declare-fun res!2156367 () Bool)

(declare-fun e!3160562 () Bool)

(assert (=> d!1632034 (=> (not res!2156367) (not e!3160562))))

(assert (=> d!1632034 (= res!2156367 (= (csize!31354 (left!42813 ys!41)) (+ (size!39073 (left!42813 (left!42813 ys!41))) (size!39073 (right!43143 (left!42813 ys!41))))))))

(assert (=> d!1632034 (= (inv!77548 (left!42813 ys!41)) e!3160562)))

(declare-fun b!5064189 () Bool)

(declare-fun res!2156368 () Bool)

(assert (=> b!5064189 (=> (not res!2156368) (not e!3160562))))

(assert (=> b!5064189 (= res!2156368 (and (not (= (left!42813 (left!42813 ys!41)) Empty!15562)) (not (= (right!43143 (left!42813 ys!41)) Empty!15562))))))

(declare-fun b!5064190 () Bool)

(declare-fun res!2156369 () Bool)

(assert (=> b!5064190 (=> (not res!2156369) (not e!3160562))))

(assert (=> b!5064190 (= res!2156369 (= (cheight!15773 (left!42813 ys!41)) (+ (max!0 (height!2139 (left!42813 (left!42813 ys!41))) (height!2139 (right!43143 (left!42813 ys!41)))) 1)))))

(declare-fun b!5064191 () Bool)

(assert (=> b!5064191 (= e!3160562 (<= 0 (cheight!15773 (left!42813 ys!41))))))

(assert (= (and d!1632034 res!2156367) b!5064189))

(assert (= (and b!5064189 res!2156368) b!5064190))

(assert (= (and b!5064190 res!2156369) b!5064191))

(declare-fun m!6104478 () Bool)

(assert (=> d!1632034 m!6104478))

(declare-fun m!6104480 () Bool)

(assert (=> d!1632034 m!6104480))

(assert (=> b!5064190 m!6104322))

(assert (=> b!5064190 m!6104324))

(assert (=> b!5064190 m!6104322))

(assert (=> b!5064190 m!6104324))

(declare-fun m!6104482 () Bool)

(assert (=> b!5064190 m!6104482))

(assert (=> b!5063364 d!1632034))

(declare-fun d!1632038 () Bool)

(declare-fun c!869132 () Bool)

(assert (=> d!1632038 (= c!869132 ((_ is Node!15562) (left!42813 (right!43143 ys!41))))))

(declare-fun e!3160564 () Bool)

(assert (=> d!1632038 (= (inv!77544 (left!42813 (right!43143 ys!41))) e!3160564)))

(declare-fun b!5064194 () Bool)

(assert (=> b!5064194 (= e!3160564 (inv!77548 (left!42813 (right!43143 ys!41))))))

(declare-fun b!5064195 () Bool)

(declare-fun e!3160565 () Bool)

(assert (=> b!5064195 (= e!3160564 e!3160565)))

(declare-fun res!2156370 () Bool)

(assert (=> b!5064195 (= res!2156370 (not ((_ is Leaf!25848) (left!42813 (right!43143 ys!41)))))))

(assert (=> b!5064195 (=> res!2156370 e!3160565)))

(declare-fun b!5064196 () Bool)

(assert (=> b!5064196 (= e!3160565 (inv!77549 (left!42813 (right!43143 ys!41))))))

(assert (= (and d!1632038 c!869132) b!5064194))

(assert (= (and d!1632038 (not c!869132)) b!5064195))

(assert (= (and b!5064195 (not res!2156370)) b!5064196))

(declare-fun m!6104486 () Bool)

(assert (=> b!5064194 m!6104486))

(declare-fun m!6104488 () Bool)

(assert (=> b!5064196 m!6104488))

(assert (=> b!5063687 d!1632038))

(declare-fun d!1632040 () Bool)

(declare-fun c!869133 () Bool)

(assert (=> d!1632040 (= c!869133 ((_ is Node!15562) (right!43143 (right!43143 ys!41))))))

(declare-fun e!3160566 () Bool)

(assert (=> d!1632040 (= (inv!77544 (right!43143 (right!43143 ys!41))) e!3160566)))

(declare-fun b!5064197 () Bool)

(assert (=> b!5064197 (= e!3160566 (inv!77548 (right!43143 (right!43143 ys!41))))))

(declare-fun b!5064198 () Bool)

(declare-fun e!3160567 () Bool)

(assert (=> b!5064198 (= e!3160566 e!3160567)))

(declare-fun res!2156371 () Bool)

(assert (=> b!5064198 (= res!2156371 (not ((_ is Leaf!25848) (right!43143 (right!43143 ys!41)))))))

(assert (=> b!5064198 (=> res!2156371 e!3160567)))

(declare-fun b!5064199 () Bool)

(assert (=> b!5064199 (= e!3160567 (inv!77549 (right!43143 (right!43143 ys!41))))))

(assert (= (and d!1632040 c!869133) b!5064197))

(assert (= (and d!1632040 (not c!869133)) b!5064198))

(assert (= (and b!5064198 (not res!2156371)) b!5064199))

(declare-fun m!6104494 () Bool)

(assert (=> b!5064197 m!6104494))

(declare-fun m!6104496 () Bool)

(assert (=> b!5064199 m!6104496))

(assert (=> b!5063687 d!1632040))

(declare-fun d!1632044 () Bool)

(declare-fun lt!2088558 () Bool)

(assert (=> d!1632044 (= lt!2088558 (isEmpty!31628 (list!18985 (left!42813 ys!41))))))

(assert (=> d!1632044 (= lt!2088558 (= (size!39073 (left!42813 ys!41)) 0))))

(assert (=> d!1632044 (= (isEmpty!31626 (left!42813 ys!41)) lt!2088558)))

(declare-fun bs!1189799 () Bool)

(assert (= bs!1189799 d!1632044))

(assert (=> bs!1189799 m!6103190))

(assert (=> bs!1189799 m!6103190))

(declare-fun m!6104498 () Bool)

(assert (=> bs!1189799 m!6104498))

(assert (=> bs!1189799 m!6104338))

(assert (=> b!5063308 d!1632044))

(declare-fun d!1632046 () Bool)

(declare-fun res!2156374 () Bool)

(declare-fun e!3160570 () Bool)

(assert (=> d!1632046 (=> (not res!2156374) (not e!3160570))))

(assert (=> d!1632046 (= res!2156374 (= (csize!31354 (left!42813 xs!286)) (+ (size!39073 (left!42813 (left!42813 xs!286))) (size!39073 (right!43143 (left!42813 xs!286))))))))

(assert (=> d!1632046 (= (inv!77548 (left!42813 xs!286)) e!3160570)))

(declare-fun b!5064204 () Bool)

(declare-fun res!2156375 () Bool)

(assert (=> b!5064204 (=> (not res!2156375) (not e!3160570))))

(assert (=> b!5064204 (= res!2156375 (and (not (= (left!42813 (left!42813 xs!286)) Empty!15562)) (not (= (right!43143 (left!42813 xs!286)) Empty!15562))))))

(declare-fun b!5064205 () Bool)

(declare-fun res!2156376 () Bool)

(assert (=> b!5064205 (=> (not res!2156376) (not e!3160570))))

(assert (=> b!5064205 (= res!2156376 (= (cheight!15773 (left!42813 xs!286)) (+ (max!0 (height!2139 (left!42813 (left!42813 xs!286))) (height!2139 (right!43143 (left!42813 xs!286)))) 1)))))

(declare-fun b!5064206 () Bool)

(assert (=> b!5064206 (= e!3160570 (<= 0 (cheight!15773 (left!42813 xs!286))))))

(assert (= (and d!1632046 res!2156374) b!5064204))

(assert (= (and b!5064204 res!2156375) b!5064205))

(assert (= (and b!5064205 res!2156376) b!5064206))

(declare-fun m!6104510 () Bool)

(assert (=> d!1632046 m!6104510))

(declare-fun m!6104512 () Bool)

(assert (=> d!1632046 m!6104512))

(assert (=> b!5064205 m!6104210))

(assert (=> b!5064205 m!6104212))

(assert (=> b!5064205 m!6104210))

(assert (=> b!5064205 m!6104212))

(declare-fun m!6104514 () Bool)

(assert (=> b!5064205 m!6104514))

(assert (=> b!5063272 d!1632046))

(declare-fun d!1632048 () Bool)

(assert (=> d!1632048 (= (height!2139 lt!2088474) (ite ((_ is Empty!15562) lt!2088474) 0 (ite ((_ is Leaf!25848) lt!2088474) 1 (cheight!15773 lt!2088474))))))

(assert (=> b!5063579 d!1632048))

(declare-fun d!1632050 () Bool)

(assert (=> d!1632050 (= (max!0 (height!2139 (right!43143 (right!43143 xs!286))) (height!2139 ys!41)) (ite (< (height!2139 (right!43143 (right!43143 xs!286))) (height!2139 ys!41)) (height!2139 ys!41) (height!2139 (right!43143 (right!43143 xs!286)))))))

(assert (=> b!5063579 d!1632050))

(declare-fun d!1632052 () Bool)

(assert (=> d!1632052 (= (height!2139 (right!43143 (right!43143 xs!286))) (ite ((_ is Empty!15562) (right!43143 (right!43143 xs!286))) 0 (ite ((_ is Leaf!25848) (right!43143 (right!43143 xs!286))) 1 (cheight!15773 (right!43143 (right!43143 xs!286))))))))

(assert (=> b!5063579 d!1632052))

(assert (=> b!5063579 d!1631628))

(declare-fun d!1632054 () Bool)

(assert (=> d!1632054 (= (inv!77545 (xs!18906 (right!43143 xs!286))) (<= (size!39071 (innerList!15650 (xs!18906 (right!43143 xs!286)))) 2147483647))))

(declare-fun bs!1189800 () Bool)

(assert (= bs!1189800 d!1632054))

(declare-fun m!6104516 () Bool)

(assert (=> bs!1189800 m!6104516))

(assert (=> b!5063699 d!1632054))

(declare-fun d!1632056 () Bool)

(declare-fun res!2156377 () Bool)

(declare-fun e!3160575 () Bool)

(assert (=> d!1632056 (=> (not res!2156377) (not e!3160575))))

(assert (=> d!1632056 (= res!2156377 (<= (size!39071 (list!18986 (xs!18906 ys!41))) 512))))

(assert (=> d!1632056 (= (inv!77549 ys!41) e!3160575)))

(declare-fun b!5064212 () Bool)

(declare-fun res!2156378 () Bool)

(assert (=> b!5064212 (=> (not res!2156378) (not e!3160575))))

(assert (=> b!5064212 (= res!2156378 (= (csize!31355 ys!41) (size!39071 (list!18986 (xs!18906 ys!41)))))))

(declare-fun b!5064213 () Bool)

(assert (=> b!5064213 (= e!3160575 (and (> (csize!31355 ys!41) 0) (<= (csize!31355 ys!41) 512)))))

(assert (= (and d!1632056 res!2156377) b!5064212))

(assert (= (and b!5064212 res!2156378) b!5064213))

(assert (=> d!1632056 m!6103196))

(assert (=> d!1632056 m!6103196))

(declare-fun m!6104518 () Bool)

(assert (=> d!1632056 m!6104518))

(assert (=> b!5064212 m!6103196))

(assert (=> b!5064212 m!6103196))

(assert (=> b!5064212 m!6104518))

(assert (=> b!5063363 d!1632056))

(declare-fun d!1632058 () Bool)

(declare-fun lt!2088559 () Int)

(assert (=> d!1632058 (>= lt!2088559 0)))

(declare-fun e!3160577 () Int)

(assert (=> d!1632058 (= lt!2088559 e!3160577)))

(declare-fun c!869135 () Bool)

(assert (=> d!1632058 (= c!869135 ((_ is Nil!58432) lt!2088448))))

(assert (=> d!1632058 (= (size!39071 lt!2088448) lt!2088559)))

(declare-fun b!5064214 () Bool)

(assert (=> b!5064214 (= e!3160577 0)))

(declare-fun b!5064215 () Bool)

(assert (=> b!5064215 (= e!3160577 (+ 1 (size!39071 (t!371279 lt!2088448))))))

(assert (= (and d!1632058 c!869135) b!5064214))

(assert (= (and d!1632058 (not c!869135)) b!5064215))

(declare-fun m!6104526 () Bool)

(assert (=> b!5064215 m!6104526))

(assert (=> b!5063342 d!1632058))

(declare-fun d!1632060 () Bool)

(declare-fun lt!2088560 () Int)

(assert (=> d!1632060 (>= lt!2088560 0)))

(declare-fun e!3160579 () Int)

(assert (=> d!1632060 (= lt!2088560 e!3160579)))

(declare-fun c!869136 () Bool)

(assert (=> d!1632060 (= c!869136 ((_ is Nil!58432) (list!18985 xs!286)))))

(assert (=> d!1632060 (= (size!39071 (list!18985 xs!286)) lt!2088560)))

(declare-fun b!5064219 () Bool)

(assert (=> b!5064219 (= e!3160579 0)))

(declare-fun b!5064220 () Bool)

(assert (=> b!5064220 (= e!3160579 (+ 1 (size!39071 (t!371279 (list!18985 xs!286)))))))

(assert (= (and d!1632060 c!869136) b!5064219))

(assert (= (and d!1632060 (not c!869136)) b!5064220))

(assert (=> b!5064220 m!6103920))

(assert (=> b!5063342 d!1632060))

(declare-fun d!1632062 () Bool)

(declare-fun lt!2088561 () Int)

(assert (=> d!1632062 (>= lt!2088561 0)))

(declare-fun e!3160582 () Int)

(assert (=> d!1632062 (= lt!2088561 e!3160582)))

(declare-fun c!869137 () Bool)

(assert (=> d!1632062 (= c!869137 ((_ is Nil!58432) (list!18985 ys!41)))))

(assert (=> d!1632062 (= (size!39071 (list!18985 ys!41)) lt!2088561)))

(declare-fun b!5064224 () Bool)

(assert (=> b!5064224 (= e!3160582 0)))

(declare-fun b!5064225 () Bool)

(assert (=> b!5064225 (= e!3160582 (+ 1 (size!39071 (t!371279 (list!18985 ys!41)))))))

(assert (= (and d!1632062 c!869137) b!5064224))

(assert (= (and d!1632062 (not c!869137)) b!5064225))

(declare-fun m!6104538 () Bool)

(assert (=> b!5064225 m!6104538))

(assert (=> b!5063342 d!1632062))

(assert (=> b!5063353 d!1631598))

(assert (=> b!5063353 d!1631600))

(declare-fun d!1632064 () Bool)

(declare-fun c!869138 () Bool)

(assert (=> d!1632064 (= c!869138 ((_ is Node!15562) (left!42813 (left!42813 xs!286))))))

(declare-fun e!3160585 () Bool)

(assert (=> d!1632064 (= (inv!77544 (left!42813 (left!42813 xs!286))) e!3160585)))

(declare-fun b!5064229 () Bool)

(assert (=> b!5064229 (= e!3160585 (inv!77548 (left!42813 (left!42813 xs!286))))))

(declare-fun b!5064230 () Bool)

(declare-fun e!3160586 () Bool)

(assert (=> b!5064230 (= e!3160585 e!3160586)))

(declare-fun res!2156379 () Bool)

(assert (=> b!5064230 (= res!2156379 (not ((_ is Leaf!25848) (left!42813 (left!42813 xs!286)))))))

(assert (=> b!5064230 (=> res!2156379 e!3160586)))

(declare-fun b!5064231 () Bool)

(assert (=> b!5064231 (= e!3160586 (inv!77549 (left!42813 (left!42813 xs!286))))))

(assert (= (and d!1632064 c!869138) b!5064229))

(assert (= (and d!1632064 (not c!869138)) b!5064230))

(assert (= (and b!5064230 (not res!2156379)) b!5064231))

(declare-fun m!6104542 () Bool)

(assert (=> b!5064229 m!6104542))

(declare-fun m!6104546 () Bool)

(assert (=> b!5064231 m!6104546))

(assert (=> b!5063695 d!1632064))

(declare-fun d!1632066 () Bool)

(declare-fun c!869139 () Bool)

(assert (=> d!1632066 (= c!869139 ((_ is Node!15562) (right!43143 (left!42813 xs!286))))))

(declare-fun e!3160587 () Bool)

(assert (=> d!1632066 (= (inv!77544 (right!43143 (left!42813 xs!286))) e!3160587)))

(declare-fun b!5064232 () Bool)

(assert (=> b!5064232 (= e!3160587 (inv!77548 (right!43143 (left!42813 xs!286))))))

(declare-fun b!5064233 () Bool)

(declare-fun e!3160588 () Bool)

(assert (=> b!5064233 (= e!3160587 e!3160588)))

(declare-fun res!2156380 () Bool)

(assert (=> b!5064233 (= res!2156380 (not ((_ is Leaf!25848) (right!43143 (left!42813 xs!286)))))))

(assert (=> b!5064233 (=> res!2156380 e!3160588)))

(declare-fun b!5064234 () Bool)

(assert (=> b!5064234 (= e!3160588 (inv!77549 (right!43143 (left!42813 xs!286))))))

(assert (= (and d!1632066 c!869139) b!5064232))

(assert (= (and d!1632066 (not c!869139)) b!5064233))

(assert (= (and b!5064233 (not res!2156380)) b!5064234))

(declare-fun m!6104552 () Bool)

(assert (=> b!5064232 m!6104552))

(declare-fun m!6104554 () Bool)

(assert (=> b!5064234 m!6104554))

(assert (=> b!5063695 d!1632066))

(declare-fun d!1632068 () Bool)

(assert (=> d!1632068 (= (list!18986 (xs!18906 ys!41)) (innerList!15650 (xs!18906 ys!41)))))

(assert (=> b!5063350 d!1632068))

(declare-fun d!1632070 () Bool)

(declare-fun lt!2088562 () Bool)

(assert (=> d!1632070 (= lt!2088562 (isEmpty!31628 (list!18985 (right!43143 lt!2088442))))))

(assert (=> d!1632070 (= lt!2088562 (= (size!39073 (right!43143 lt!2088442)) 0))))

(assert (=> d!1632070 (= (isEmpty!31626 (right!43143 lt!2088442)) lt!2088562)))

(declare-fun bs!1189801 () Bool)

(assert (= bs!1189801 d!1632070))

(assert (=> bs!1189801 m!6103162))

(assert (=> bs!1189801 m!6103162))

(declare-fun m!6104558 () Bool)

(assert (=> bs!1189801 m!6104558))

(declare-fun m!6104562 () Bool)

(assert (=> bs!1189801 m!6104562))

(assert (=> b!5063317 d!1632070))

(assert (=> b!5063573 d!1632048))

(assert (=> b!5063573 d!1632050))

(assert (=> b!5063573 d!1632052))

(assert (=> b!5063573 d!1631628))

(declare-fun d!1632072 () Bool)

(declare-fun res!2156381 () Bool)

(declare-fun e!3160595 () Bool)

(assert (=> d!1632072 (=> (not res!2156381) (not e!3160595))))

(assert (=> d!1632072 (= res!2156381 (<= (size!39071 (list!18986 (xs!18906 xs!286))) 512))))

(assert (=> d!1632072 (= (inv!77549 xs!286) e!3160595)))

(declare-fun b!5064243 () Bool)

(declare-fun res!2156382 () Bool)

(assert (=> b!5064243 (=> (not res!2156382) (not e!3160595))))

(assert (=> b!5064243 (= res!2156382 (= (csize!31355 xs!286) (size!39071 (list!18986 (xs!18906 xs!286)))))))

(declare-fun b!5064244 () Bool)

(assert (=> b!5064244 (= e!3160595 (and (> (csize!31355 xs!286) 0) (<= (csize!31355 xs!286) 512)))))

(assert (= (and d!1632072 res!2156381) b!5064243))

(assert (= (and b!5064243 res!2156382) b!5064244))

(assert (=> d!1632072 m!6103188))

(assert (=> d!1632072 m!6103188))

(declare-fun m!6104572 () Bool)

(assert (=> d!1632072 m!6104572))

(assert (=> b!5064243 m!6103188))

(assert (=> b!5064243 m!6103188))

(assert (=> b!5064243 m!6104572))

(assert (=> b!5063360 d!1632072))

(declare-fun d!1632074 () Bool)

(assert (=> d!1632074 (= (list!18986 (xs!18906 lt!2088442)) (innerList!15650 (xs!18906 lt!2088442)))))

(assert (=> b!5063330 d!1632074))

(declare-fun bm!352765 () Bool)

(declare-fun call!352773 () List!58556)

(declare-fun call!352771 () List!58556)

(assert (=> bm!352765 (= call!352773 (++!12784 call!352771 (list!18985 (right!43143 ys!41))))))

(declare-fun d!1632076 () Bool)

(declare-fun e!3160600 () Bool)

(assert (=> d!1632076 e!3160600))

(declare-fun c!869140 () Bool)

(assert (=> d!1632076 (= c!869140 ((_ is Nil!58432) (list!18985 xs!286)))))

(assert (=> d!1632076 (= (appendAssoc!300 (list!18985 xs!286) (list!18985 (left!42813 ys!41)) (list!18985 (right!43143 ys!41))) true)))

(declare-fun bm!352766 () Bool)

(declare-fun call!352770 () List!58556)

(declare-fun call!352772 () List!58556)

(assert (=> bm!352766 (= call!352770 (++!12784 (list!18985 xs!286) call!352772))))

(declare-fun bm!352767 () Bool)

(assert (=> bm!352767 (= call!352772 (++!12784 (list!18985 (left!42813 ys!41)) (list!18985 (right!43143 ys!41))))))

(declare-fun b!5064250 () Bool)

(assert (=> b!5064250 (= e!3160600 (= call!352773 call!352770))))

(declare-fun lt!2088563 () Bool)

(assert (=> b!5064250 (= lt!2088563 (appendAssoc!300 (t!371279 (list!18985 xs!286)) (list!18985 (left!42813 ys!41)) (list!18985 (right!43143 ys!41))))))

(declare-fun bm!352768 () Bool)

(assert (=> bm!352768 (= call!352771 (++!12784 (list!18985 xs!286) (list!18985 (left!42813 ys!41))))))

(declare-fun b!5064251 () Bool)

(assert (=> b!5064251 (= e!3160600 (= call!352773 call!352770))))

(assert (= (and d!1632076 c!869140) b!5064251))

(assert (= (and d!1632076 (not c!869140)) b!5064250))

(assert (= (or b!5064251 b!5064250) bm!352768))

(assert (= (or b!5064251 b!5064250) bm!352767))

(assert (= (or b!5064251 b!5064250) bm!352766))

(assert (= (or b!5064251 b!5064250) bm!352765))

(assert (=> bm!352766 m!6103080))

(declare-fun m!6104586 () Bool)

(assert (=> bm!352766 m!6104586))

(assert (=> bm!352768 m!6103080))

(assert (=> bm!352768 m!6103190))

(declare-fun m!6104588 () Bool)

(assert (=> bm!352768 m!6104588))

(assert (=> b!5064250 m!6103190))

(assert (=> b!5064250 m!6103192))

(declare-fun m!6104590 () Bool)

(assert (=> b!5064250 m!6104590))

(assert (=> bm!352767 m!6103190))

(assert (=> bm!352767 m!6103192))

(assert (=> bm!352767 m!6103194))

(assert (=> bm!352765 m!6103192))

(declare-fun m!6104592 () Bool)

(assert (=> bm!352765 m!6104592))

(assert (=> b!5063654 d!1632076))

(assert (=> b!5063654 d!1631636))

(assert (=> b!5063654 d!1631812))

(assert (=> b!5063654 d!1631814))

(declare-fun d!1632078 () Bool)

(assert (=> d!1632078 (= (inv!77545 (xs!18906 (left!42813 ys!41))) (<= (size!39071 (innerList!15650 (xs!18906 (left!42813 ys!41)))) 2147483647))))

(declare-fun bs!1189802 () Bool)

(assert (= bs!1189802 d!1632078))

(declare-fun m!6104594 () Bool)

(assert (=> bs!1189802 m!6104594))

(assert (=> b!5063685 d!1632078))

(declare-fun bm!352769 () Bool)

(declare-fun call!352777 () List!58556)

(declare-fun call!352775 () List!58556)

(assert (=> bm!352769 (= call!352777 (++!12784 call!352775 (list!18985 ys!41)))))

(declare-fun d!1632080 () Bool)

(declare-fun e!3160603 () Bool)

(assert (=> d!1632080 e!3160603))

(declare-fun c!869141 () Bool)

(assert (=> d!1632080 (= c!869141 ((_ is Nil!58432) (list!18985 (left!42813 (right!43143 xs!286)))))))

(assert (=> d!1632080 (= (appendAssoc!300 (list!18985 (left!42813 (right!43143 xs!286))) (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 ys!41)) true)))

(declare-fun bm!352770 () Bool)

(declare-fun call!352774 () List!58556)

(declare-fun call!352776 () List!58556)

(assert (=> bm!352770 (= call!352774 (++!12784 (list!18985 (left!42813 (right!43143 xs!286))) call!352776))))

(declare-fun bm!352771 () Bool)

(assert (=> bm!352771 (= call!352776 (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 ys!41)))))

(declare-fun b!5064255 () Bool)

(assert (=> b!5064255 (= e!3160603 (= call!352777 call!352774))))

(declare-fun lt!2088564 () Bool)

(assert (=> b!5064255 (= lt!2088564 (appendAssoc!300 (t!371279 (list!18985 (left!42813 (right!43143 xs!286)))) (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 ys!41)))))

(declare-fun bm!352772 () Bool)

(assert (=> bm!352772 (= call!352775 (++!12784 (list!18985 (left!42813 (right!43143 xs!286))) (list!18985 (right!43143 (right!43143 xs!286)))))))

(declare-fun b!5064256 () Bool)

(assert (=> b!5064256 (= e!3160603 (= call!352777 call!352774))))

(assert (= (and d!1632080 c!869141) b!5064256))

(assert (= (and d!1632080 (not c!869141)) b!5064255))

(assert (= (or b!5064256 b!5064255) bm!352772))

(assert (= (or b!5064256 b!5064255) bm!352771))

(assert (= (or b!5064256 b!5064255) bm!352770))

(assert (= (or b!5064256 b!5064255) bm!352769))

(assert (=> bm!352770 m!6103448))

(declare-fun m!6104596 () Bool)

(assert (=> bm!352770 m!6104596))

(assert (=> bm!352772 m!6103448))

(assert (=> bm!352772 m!6103364))

(assert (=> bm!352772 m!6103980))

(assert (=> b!5064255 m!6103364))

(assert (=> b!5064255 m!6103082))

(declare-fun m!6104598 () Bool)

(assert (=> b!5064255 m!6104598))

(assert (=> bm!352771 m!6103364))

(assert (=> bm!352771 m!6103082))

(assert (=> bm!352771 m!6103366))

(assert (=> bm!352769 m!6103082))

(declare-fun m!6104600 () Bool)

(assert (=> bm!352769 m!6104600))

(assert (=> b!5063652 d!1632080))

(assert (=> b!5063652 d!1631858))

(assert (=> b!5063652 d!1631854))

(assert (=> b!5063652 d!1631638))

(assert (=> b!5063315 d!1631826))

(assert (=> b!5063315 d!1631828))

(declare-fun d!1632082 () Bool)

(declare-fun lt!2088565 () Int)

(assert (=> d!1632082 (>= lt!2088565 0)))

(declare-fun e!3160604 () Int)

(assert (=> d!1632082 (= lt!2088565 e!3160604)))

(declare-fun c!869142 () Bool)

(assert (=> d!1632082 (= c!869142 ((_ is Nil!58432) (innerList!15650 (xs!18906 xs!286))))))

(assert (=> d!1632082 (= (size!39071 (innerList!15650 (xs!18906 xs!286))) lt!2088565)))

(declare-fun b!5064257 () Bool)

(assert (=> b!5064257 (= e!3160604 0)))

(declare-fun b!5064258 () Bool)

(assert (=> b!5064258 (= e!3160604 (+ 1 (size!39071 (t!371279 (innerList!15650 (xs!18906 xs!286))))))))

(assert (= (and d!1632082 c!869142) b!5064257))

(assert (= (and d!1632082 (not c!869142)) b!5064258))

(declare-fun m!6104602 () Bool)

(assert (=> b!5064258 m!6104602))

(assert (=> d!1631646 d!1632082))

(declare-fun d!1632084 () Bool)

(declare-fun c!869143 () Bool)

(assert (=> d!1632084 (= c!869143 ((_ is Empty!15562) lt!2088474))))

(declare-fun e!3160605 () List!58556)

(assert (=> d!1632084 (= (list!18985 lt!2088474) e!3160605)))

(declare-fun b!5064262 () Bool)

(declare-fun e!3160606 () List!58556)

(assert (=> b!5064262 (= e!3160606 (++!12784 (list!18985 (left!42813 lt!2088474)) (list!18985 (right!43143 lt!2088474))))))

(declare-fun b!5064259 () Bool)

(assert (=> b!5064259 (= e!3160605 Nil!58432)))

(declare-fun b!5064261 () Bool)

(assert (=> b!5064261 (= e!3160606 (list!18986 (xs!18906 lt!2088474)))))

(declare-fun b!5064260 () Bool)

(assert (=> b!5064260 (= e!3160605 e!3160606)))

(declare-fun c!869144 () Bool)

(assert (=> b!5064260 (= c!869144 ((_ is Leaf!25848) lt!2088474))))

(assert (= (and d!1632084 c!869143) b!5064259))

(assert (= (and d!1632084 (not c!869143)) b!5064260))

(assert (= (and b!5064260 c!869144) b!5064261))

(assert (= (and b!5064260 (not c!869144)) b!5064262))

(declare-fun m!6104604 () Bool)

(assert (=> b!5064262 m!6104604))

(declare-fun m!6104606 () Bool)

(assert (=> b!5064262 m!6104606))

(assert (=> b!5064262 m!6104604))

(assert (=> b!5064262 m!6104606))

(declare-fun m!6104608 () Bool)

(assert (=> b!5064262 m!6104608))

(declare-fun m!6104610 () Bool)

(assert (=> b!5064261 m!6104610))

(assert (=> b!5063581 d!1632084))

(assert (=> b!5063581 d!1631862))

(assert (=> b!5063581 d!1631854))

(assert (=> b!5063581 d!1631638))

(declare-fun d!1632086 () Bool)

(declare-fun res!2156383 () Bool)

(declare-fun e!3160607 () Bool)

(assert (=> d!1632086 (=> (not res!2156383) (not e!3160607))))

(assert (=> d!1632086 (= res!2156383 (= (csize!31354 xs!286) (+ (size!39073 (left!42813 xs!286)) (size!39073 (right!43143 xs!286)))))))

(assert (=> d!1632086 (= (inv!77548 xs!286) e!3160607)))

(declare-fun b!5064263 () Bool)

(declare-fun res!2156384 () Bool)

(assert (=> b!5064263 (=> (not res!2156384) (not e!3160607))))

(assert (=> b!5064263 (= res!2156384 (and (not (= (left!42813 xs!286) Empty!15562)) (not (= (right!43143 xs!286) Empty!15562))))))

(declare-fun b!5064264 () Bool)

(declare-fun res!2156385 () Bool)

(assert (=> b!5064264 (=> (not res!2156385) (not e!3160607))))

(assert (=> b!5064264 (= res!2156385 (= (cheight!15773 xs!286) (+ (max!0 (height!2139 (left!42813 xs!286)) (height!2139 (right!43143 xs!286))) 1)))))

(declare-fun b!5064265 () Bool)

(assert (=> b!5064265 (= e!3160607 (<= 0 (cheight!15773 xs!286)))))

(assert (= (and d!1632086 res!2156383) b!5064263))

(assert (= (and b!5064263 res!2156384) b!5064264))

(assert (= (and b!5064264 res!2156385) b!5064265))

(assert (=> d!1632086 m!6103462))

(declare-fun m!6104612 () Bool)

(assert (=> d!1632086 m!6104612))

(assert (=> b!5064264 m!6103062))

(assert (=> b!5064264 m!6103064))

(assert (=> b!5064264 m!6103062))

(assert (=> b!5064264 m!6103064))

(declare-fun m!6104614 () Bool)

(assert (=> b!5064264 m!6104614))

(assert (=> b!5063358 d!1632086))

(declare-fun d!1632088 () Bool)

(declare-fun e!3160609 () Bool)

(assert (=> d!1632088 e!3160609))

(declare-fun res!2156386 () Bool)

(assert (=> d!1632088 (=> (not res!2156386) (not e!3160609))))

(declare-fun lt!2088566 () List!58556)

(assert (=> d!1632088 (= res!2156386 (= (content!10415 lt!2088566) ((_ map or) (content!10415 (list!18985 (left!42813 xs!286))) (content!10415 (list!18985 (right!43143 xs!286))))))))

(declare-fun e!3160608 () List!58556)

(assert (=> d!1632088 (= lt!2088566 e!3160608)))

(declare-fun c!869145 () Bool)

(assert (=> d!1632088 (= c!869145 ((_ is Nil!58432) (list!18985 (left!42813 xs!286))))))

(assert (=> d!1632088 (= (++!12784 (list!18985 (left!42813 xs!286)) (list!18985 (right!43143 xs!286))) lt!2088566)))

(declare-fun b!5064267 () Bool)

(assert (=> b!5064267 (= e!3160608 (Cons!58432 (h!64880 (list!18985 (left!42813 xs!286))) (++!12784 (t!371279 (list!18985 (left!42813 xs!286))) (list!18985 (right!43143 xs!286)))))))

(declare-fun b!5064269 () Bool)

(assert (=> b!5064269 (= e!3160609 (or (not (= (list!18985 (right!43143 xs!286)) Nil!58432)) (= lt!2088566 (list!18985 (left!42813 xs!286)))))))

(declare-fun b!5064266 () Bool)

(assert (=> b!5064266 (= e!3160608 (list!18985 (right!43143 xs!286)))))

(declare-fun b!5064268 () Bool)

(declare-fun res!2156387 () Bool)

(assert (=> b!5064268 (=> (not res!2156387) (not e!3160609))))

(assert (=> b!5064268 (= res!2156387 (= (size!39071 lt!2088566) (+ (size!39071 (list!18985 (left!42813 xs!286))) (size!39071 (list!18985 (right!43143 xs!286))))))))

(assert (= (and d!1632088 c!869145) b!5064266))

(assert (= (and d!1632088 (not c!869145)) b!5064267))

(assert (= (and d!1632088 res!2156386) b!5064268))

(assert (= (and b!5064268 res!2156387) b!5064269))

(declare-fun m!6104616 () Bool)

(assert (=> d!1632088 m!6104616))

(assert (=> d!1632088 m!6103182))

(declare-fun m!6104618 () Bool)

(assert (=> d!1632088 m!6104618))

(assert (=> d!1632088 m!6103184))

(declare-fun m!6104620 () Bool)

(assert (=> d!1632088 m!6104620))

(assert (=> b!5064267 m!6103184))

(declare-fun m!6104622 () Bool)

(assert (=> b!5064267 m!6104622))

(declare-fun m!6104624 () Bool)

(assert (=> b!5064268 m!6104624))

(assert (=> b!5064268 m!6103182))

(assert (=> b!5064268 m!6103696))

(assert (=> b!5064268 m!6103184))

(declare-fun m!6104626 () Bool)

(assert (=> b!5064268 m!6104626))

(assert (=> b!5063347 d!1632088))

(assert (=> b!5063347 d!1631848))

(assert (=> b!5063347 d!1631850))

(declare-fun d!1632090 () Bool)

(declare-fun c!869146 () Bool)

(assert (=> d!1632090 (= c!869146 ((_ is Empty!15562) lt!2088482))))

(declare-fun e!3160610 () List!58556)

(assert (=> d!1632090 (= (list!18985 lt!2088482) e!3160610)))

(declare-fun b!5064273 () Bool)

(declare-fun e!3160611 () List!58556)

(assert (=> b!5064273 (= e!3160611 (++!12784 (list!18985 (left!42813 lt!2088482)) (list!18985 (right!43143 lt!2088482))))))

(declare-fun b!5064270 () Bool)

(assert (=> b!5064270 (= e!3160610 Nil!58432)))

(declare-fun b!5064272 () Bool)

(assert (=> b!5064272 (= e!3160611 (list!18986 (xs!18906 lt!2088482)))))

(declare-fun b!5064271 () Bool)

(assert (=> b!5064271 (= e!3160610 e!3160611)))

(declare-fun c!869147 () Bool)

(assert (=> b!5064271 (= c!869147 ((_ is Leaf!25848) lt!2088482))))

(assert (= (and d!1632090 c!869146) b!5064270))

(assert (= (and d!1632090 (not c!869146)) b!5064271))

(assert (= (and b!5064271 c!869147) b!5064272))

(assert (= (and b!5064271 (not c!869147)) b!5064273))

(declare-fun m!6104628 () Bool)

(assert (=> b!5064273 m!6104628))

(declare-fun m!6104630 () Bool)

(assert (=> b!5064273 m!6104630))

(assert (=> b!5064273 m!6104628))

(assert (=> b!5064273 m!6104630))

(declare-fun m!6104632 () Bool)

(assert (=> b!5064273 m!6104632))

(declare-fun m!6104634 () Bool)

(assert (=> b!5064272 m!6104634))

(assert (=> d!1631698 d!1632090))

(declare-fun d!1632092 () Bool)

(declare-fun e!3160613 () Bool)

(assert (=> d!1632092 e!3160613))

(declare-fun res!2156388 () Bool)

(assert (=> d!1632092 (=> (not res!2156388) (not e!3160613))))

(declare-fun lt!2088567 () List!58556)

(assert (=> d!1632092 (= res!2156388 (= (content!10415 lt!2088567) ((_ map or) (content!10415 (list!18985 (left!42813 xs!286))) (content!10415 (list!18985 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))))))))

(declare-fun e!3160612 () List!58556)

(assert (=> d!1632092 (= lt!2088567 e!3160612)))

(declare-fun c!869148 () Bool)

(assert (=> d!1632092 (= c!869148 ((_ is Nil!58432) (list!18985 (left!42813 xs!286))))))

(assert (=> d!1632092 (= (++!12784 (list!18985 (left!42813 xs!286)) (list!18985 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))) lt!2088567)))

(declare-fun b!5064275 () Bool)

(assert (=> b!5064275 (= e!3160612 (Cons!58432 (h!64880 (list!18985 (left!42813 xs!286))) (++!12784 (t!371279 (list!18985 (left!42813 xs!286))) (list!18985 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)))))))

(declare-fun b!5064277 () Bool)

(assert (=> b!5064277 (= e!3160613 (or (not (= (list!18985 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)) Nil!58432)) (= lt!2088567 (list!18985 (left!42813 xs!286)))))))

(declare-fun b!5064274 () Bool)

(assert (=> b!5064274 (= e!3160612 (list!18985 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)))))

(declare-fun b!5064276 () Bool)

(declare-fun res!2156389 () Bool)

(assert (=> b!5064276 (=> (not res!2156389) (not e!3160613))))

(assert (=> b!5064276 (= res!2156389 (= (size!39071 lt!2088567) (+ (size!39071 (list!18985 (left!42813 xs!286))) (size!39071 (list!18985 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))))))))

(assert (= (and d!1632092 c!869148) b!5064274))

(assert (= (and d!1632092 (not c!869148)) b!5064275))

(assert (= (and d!1632092 res!2156388) b!5064276))

(assert (= (and b!5064276 res!2156389) b!5064277))

(declare-fun m!6104636 () Bool)

(assert (=> d!1632092 m!6104636))

(assert (=> d!1632092 m!6103182))

(assert (=> d!1632092 m!6104618))

(assert (=> d!1632092 m!6103472))

(declare-fun m!6104638 () Bool)

(assert (=> d!1632092 m!6104638))

(assert (=> b!5064275 m!6103472))

(declare-fun m!6104640 () Bool)

(assert (=> b!5064275 m!6104640))

(declare-fun m!6104642 () Bool)

(assert (=> b!5064276 m!6104642))

(assert (=> b!5064276 m!6103182))

(assert (=> b!5064276 m!6103696))

(assert (=> b!5064276 m!6103472))

(assert (=> b!5064276 m!6103700))

(assert (=> d!1631698 d!1632092))

(assert (=> d!1631698 d!1631848))

(declare-fun d!1632094 () Bool)

(declare-fun c!869149 () Bool)

(assert (=> d!1632094 (= c!869149 ((_ is Empty!15562) (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)))))

(declare-fun e!3160614 () List!58556)

(assert (=> d!1632094 (= (list!18985 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)) e!3160614)))

(declare-fun b!5064281 () Bool)

(declare-fun e!3160615 () List!58556)

(assert (=> b!5064281 (= e!3160615 (++!12784 (list!18985 (left!42813 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))) (list!18985 (right!43143 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)))))))

(declare-fun b!5064278 () Bool)

(assert (=> b!5064278 (= e!3160614 Nil!58432)))

(declare-fun b!5064280 () Bool)

(assert (=> b!5064280 (= e!3160615 (list!18986 (xs!18906 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))))))

(declare-fun b!5064279 () Bool)

(assert (=> b!5064279 (= e!3160614 e!3160615)))

(declare-fun c!869150 () Bool)

(assert (=> b!5064279 (= c!869150 ((_ is Leaf!25848) (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)))))

(assert (= (and d!1632094 c!869149) b!5064278))

(assert (= (and d!1632094 (not c!869149)) b!5064279))

(assert (= (and b!5064279 c!869150) b!5064280))

(assert (= (and b!5064279 (not c!869150)) b!5064281))

(declare-fun m!6104644 () Bool)

(assert (=> b!5064281 m!6104644))

(declare-fun m!6104646 () Bool)

(assert (=> b!5064281 m!6104646))

(assert (=> b!5064281 m!6104644))

(assert (=> b!5064281 m!6104646))

(declare-fun m!6104648 () Bool)

(assert (=> b!5064281 m!6104648))

(declare-fun m!6104650 () Bool)

(assert (=> b!5064280 m!6104650))

(assert (=> d!1631698 d!1632094))

(assert (=> b!5063576 d!1631628))

(assert (=> b!5063576 d!1632052))

(declare-fun b!5064282 () Bool)

(declare-fun res!2156392 () Bool)

(declare-fun e!3160616 () Bool)

(assert (=> b!5064282 (=> (not res!2156392) (not e!3160616))))

(assert (=> b!5064282 (= res!2156392 (not (isEmpty!31626 (left!42813 (right!43143 xs!286)))))))

(declare-fun b!5064283 () Bool)

(declare-fun res!2156395 () Bool)

(assert (=> b!5064283 (=> (not res!2156395) (not e!3160616))))

(assert (=> b!5064283 (= res!2156395 (<= (- (height!2139 (left!42813 (right!43143 xs!286))) (height!2139 (right!43143 (right!43143 xs!286)))) 1))))

(declare-fun b!5064284 () Bool)

(declare-fun e!3160617 () Bool)

(assert (=> b!5064284 (= e!3160617 e!3160616)))

(declare-fun res!2156394 () Bool)

(assert (=> b!5064284 (=> (not res!2156394) (not e!3160616))))

(assert (=> b!5064284 (= res!2156394 (<= (- 1) (- (height!2139 (left!42813 (right!43143 xs!286))) (height!2139 (right!43143 (right!43143 xs!286))))))))

(declare-fun d!1632096 () Bool)

(declare-fun res!2156391 () Bool)

(assert (=> d!1632096 (=> res!2156391 e!3160617)))

(assert (=> d!1632096 (= res!2156391 (not ((_ is Node!15562) (right!43143 xs!286))))))

(assert (=> d!1632096 (= (isBalanced!4424 (right!43143 xs!286)) e!3160617)))

(declare-fun b!5064285 () Bool)

(assert (=> b!5064285 (= e!3160616 (not (isEmpty!31626 (right!43143 (right!43143 xs!286)))))))

(declare-fun b!5064286 () Bool)

(declare-fun res!2156390 () Bool)

(assert (=> b!5064286 (=> (not res!2156390) (not e!3160616))))

(assert (=> b!5064286 (= res!2156390 (isBalanced!4424 (left!42813 (right!43143 xs!286))))))

(declare-fun b!5064287 () Bool)

(declare-fun res!2156393 () Bool)

(assert (=> b!5064287 (=> (not res!2156393) (not e!3160616))))

(assert (=> b!5064287 (= res!2156393 (isBalanced!4424 (right!43143 (right!43143 xs!286))))))

(assert (= (and d!1632096 (not res!2156391)) b!5064284))

(assert (= (and b!5064284 res!2156394) b!5064283))

(assert (= (and b!5064283 res!2156395) b!5064286))

(assert (= (and b!5064286 res!2156390) b!5064287))

(assert (= (and b!5064287 res!2156393) b!5064282))

(assert (= (and b!5064282 res!2156392) b!5064285))

(declare-fun m!6104652 () Bool)

(assert (=> b!5064286 m!6104652))

(declare-fun m!6104654 () Bool)

(assert (=> b!5064285 m!6104654))

(declare-fun m!6104656 () Bool)

(assert (=> b!5064282 m!6104656))

(assert (=> b!5064283 m!6103480))

(assert (=> b!5064283 m!6103370))

(assert (=> b!5064287 m!6103384))

(assert (=> b!5064284 m!6103480))

(assert (=> b!5064284 m!6103370))

(assert (=> b!5063357 d!1632096))

(declare-fun d!1632098 () Bool)

(assert (=> d!1632098 (= (height!2139 (ite c!868975 (right!43143 (right!43143 (right!43143 xs!286))) (left!42813 ys!41))) (ite ((_ is Empty!15562) (ite c!868975 (right!43143 (right!43143 (right!43143 xs!286))) (left!42813 ys!41))) 0 (ite ((_ is Leaf!25848) (ite c!868975 (right!43143 (right!43143 (right!43143 xs!286))) (left!42813 ys!41))) 1 (cheight!15773 (ite c!868975 (right!43143 (right!43143 (right!43143 xs!286))) (left!42813 ys!41))))))))

(assert (=> bm!352671 d!1632098))

(declare-fun bm!352773 () Bool)

(declare-fun call!352781 () List!58556)

(declare-fun call!352779 () List!58556)

(assert (=> bm!352773 (= call!352781 (++!12784 call!352779 (list!18985 (right!43143 (left!42813 ys!41)))))))

(declare-fun d!1632100 () Bool)

(declare-fun e!3160618 () Bool)

(assert (=> d!1632100 e!3160618))

(declare-fun c!869151 () Bool)

(assert (=> d!1632100 (= c!869151 ((_ is Nil!58432) (list!18985 xs!286)))))

(assert (=> d!1632100 (= (appendAssoc!300 (list!18985 xs!286) (list!18985 (left!42813 (left!42813 ys!41))) (list!18985 (right!43143 (left!42813 ys!41)))) true)))

(declare-fun bm!352774 () Bool)

(declare-fun call!352778 () List!58556)

(declare-fun call!352780 () List!58556)

(assert (=> bm!352774 (= call!352778 (++!12784 (list!18985 xs!286) call!352780))))

(declare-fun bm!352775 () Bool)

(assert (=> bm!352775 (= call!352780 (++!12784 (list!18985 (left!42813 (left!42813 ys!41))) (list!18985 (right!43143 (left!42813 ys!41)))))))

(declare-fun b!5064288 () Bool)

(assert (=> b!5064288 (= e!3160618 (= call!352781 call!352778))))

(declare-fun lt!2088568 () Bool)

(assert (=> b!5064288 (= lt!2088568 (appendAssoc!300 (t!371279 (list!18985 xs!286)) (list!18985 (left!42813 (left!42813 ys!41))) (list!18985 (right!43143 (left!42813 ys!41)))))))

(declare-fun bm!352776 () Bool)

(assert (=> bm!352776 (= call!352779 (++!12784 (list!18985 xs!286) (list!18985 (left!42813 (left!42813 ys!41)))))))

(declare-fun b!5064289 () Bool)

(assert (=> b!5064289 (= e!3160618 (= call!352781 call!352778))))

(assert (= (and d!1632100 c!869151) b!5064289))

(assert (= (and d!1632100 (not c!869151)) b!5064288))

(assert (= (or b!5064289 b!5064288) bm!352776))

(assert (= (or b!5064289 b!5064288) bm!352775))

(assert (= (or b!5064289 b!5064288) bm!352774))

(assert (= (or b!5064289 b!5064288) bm!352773))

(assert (=> bm!352774 m!6103080))

(declare-fun m!6104658 () Bool)

(assert (=> bm!352774 m!6104658))

(assert (=> bm!352776 m!6103080))

(assert (=> bm!352776 m!6103442))

(assert (=> bm!352776 m!6103452))

(assert (=> b!5064288 m!6103442))

(assert (=> b!5064288 m!6103444))

(declare-fun m!6104660 () Bool)

(assert (=> b!5064288 m!6104660))

(assert (=> bm!352775 m!6103442))

(assert (=> bm!352775 m!6103444))

(assert (=> bm!352775 m!6103858))

(assert (=> bm!352773 m!6103444))

(declare-fun m!6104662 () Bool)

(assert (=> bm!352773 m!6104662))

(assert (=> b!5063658 d!1632100))

(assert (=> b!5063658 d!1631636))

(assert (=> b!5063658 d!1631898))

(assert (=> b!5063658 d!1631882))

(declare-fun d!1632102 () Bool)

(declare-fun lt!2088569 () Bool)

(assert (=> d!1632102 (= lt!2088569 (isEmpty!31628 (list!18985 (right!43143 xs!286))))))

(assert (=> d!1632102 (= lt!2088569 (= (size!39073 (right!43143 xs!286)) 0))))

(assert (=> d!1632102 (= (isEmpty!31626 (right!43143 xs!286)) lt!2088569)))

(declare-fun bs!1189803 () Bool)

(assert (= bs!1189803 d!1632102))

(assert (=> bs!1189803 m!6103184))

(assert (=> bs!1189803 m!6103184))

(declare-fun m!6104664 () Bool)

(assert (=> bs!1189803 m!6104664))

(assert (=> bs!1189803 m!6104612))

(assert (=> b!5063355 d!1632102))

(declare-fun b!5064290 () Bool)

(declare-fun res!2156398 () Bool)

(declare-fun e!3160619 () Bool)

(assert (=> b!5064290 (=> (not res!2156398) (not e!3160619))))

(assert (=> b!5064290 (= res!2156398 (not (isEmpty!31626 (left!42813 (right!43143 lt!2088442)))))))

(declare-fun b!5064291 () Bool)

(declare-fun res!2156401 () Bool)

(assert (=> b!5064291 (=> (not res!2156401) (not e!3160619))))

(assert (=> b!5064291 (= res!2156401 (<= (- (height!2139 (left!42813 (right!43143 lt!2088442))) (height!2139 (right!43143 (right!43143 lt!2088442)))) 1))))

(declare-fun b!5064292 () Bool)

(declare-fun e!3160620 () Bool)

(assert (=> b!5064292 (= e!3160620 e!3160619)))

(declare-fun res!2156400 () Bool)

(assert (=> b!5064292 (=> (not res!2156400) (not e!3160619))))

(assert (=> b!5064292 (= res!2156400 (<= (- 1) (- (height!2139 (left!42813 (right!43143 lt!2088442))) (height!2139 (right!43143 (right!43143 lt!2088442))))))))

(declare-fun d!1632104 () Bool)

(declare-fun res!2156397 () Bool)

(assert (=> d!1632104 (=> res!2156397 e!3160620)))

(assert (=> d!1632104 (= res!2156397 (not ((_ is Node!15562) (right!43143 lt!2088442))))))

(assert (=> d!1632104 (= (isBalanced!4424 (right!43143 lt!2088442)) e!3160620)))

(declare-fun b!5064293 () Bool)

(assert (=> b!5064293 (= e!3160619 (not (isEmpty!31626 (right!43143 (right!43143 lt!2088442)))))))

(declare-fun b!5064294 () Bool)

(declare-fun res!2156396 () Bool)

(assert (=> b!5064294 (=> (not res!2156396) (not e!3160619))))

(assert (=> b!5064294 (= res!2156396 (isBalanced!4424 (left!42813 (right!43143 lt!2088442))))))

(declare-fun b!5064295 () Bool)

(declare-fun res!2156399 () Bool)

(assert (=> b!5064295 (=> (not res!2156399) (not e!3160619))))

(assert (=> b!5064295 (= res!2156399 (isBalanced!4424 (right!43143 (right!43143 lt!2088442))))))

(assert (= (and d!1632104 (not res!2156397)) b!5064292))

(assert (= (and b!5064292 res!2156400) b!5064291))

(assert (= (and b!5064291 res!2156401) b!5064294))

(assert (= (and b!5064294 res!2156396) b!5064295))

(assert (= (and b!5064295 res!2156399) b!5064290))

(assert (= (and b!5064290 res!2156398) b!5064293))

(declare-fun m!6104666 () Bool)

(assert (=> b!5064294 m!6104666))

(declare-fun m!6104668 () Bool)

(assert (=> b!5064293 m!6104668))

(declare-fun m!6104670 () Bool)

(assert (=> b!5064290 m!6104670))

(declare-fun m!6104672 () Bool)

(assert (=> b!5064291 m!6104672))

(declare-fun m!6104674 () Bool)

(assert (=> b!5064291 m!6104674))

(declare-fun m!6104676 () Bool)

(assert (=> b!5064295 m!6104676))

(assert (=> b!5064292 m!6104672))

(assert (=> b!5064292 m!6104674))

(assert (=> b!5063319 d!1632104))

(declare-fun b!5064296 () Bool)

(declare-fun e!3160621 () Bool)

(declare-fun tp!1414540 () Bool)

(assert (=> b!5064296 (= e!3160621 (and tp_is_empty!37047 tp!1414540))))

(assert (=> b!5063697 (= tp!1414504 e!3160621)))

(assert (= (and b!5063697 ((_ is Cons!58432) (innerList!15650 (xs!18906 (left!42813 xs!286))))) b!5064296))

(declare-fun b!5064297 () Bool)

(declare-fun e!3160622 () Bool)

(declare-fun tp!1414541 () Bool)

(assert (=> b!5064297 (= e!3160622 (and tp_is_empty!37047 tp!1414541))))

(assert (=> b!5063700 (= tp!1414507 e!3160622)))

(assert (= (and b!5063700 ((_ is Cons!58432) (innerList!15650 (xs!18906 (right!43143 xs!286))))) b!5064297))

(declare-fun tp!1414542 () Bool)

(declare-fun tp!1414544 () Bool)

(declare-fun e!3160623 () Bool)

(declare-fun b!5064298 () Bool)

(assert (=> b!5064298 (= e!3160623 (and (inv!77544 (left!42813 (left!42813 (left!42813 xs!286)))) tp!1414544 (inv!77544 (right!43143 (left!42813 (left!42813 xs!286)))) tp!1414542))))

(declare-fun b!5064300 () Bool)

(declare-fun e!3160624 () Bool)

(declare-fun tp!1414543 () Bool)

(assert (=> b!5064300 (= e!3160624 tp!1414543)))

(declare-fun b!5064299 () Bool)

(assert (=> b!5064299 (= e!3160623 (and (inv!77545 (xs!18906 (left!42813 (left!42813 xs!286)))) e!3160624))))

(assert (=> b!5063695 (= tp!1414505 (and (inv!77544 (left!42813 (left!42813 xs!286))) e!3160623))))

(assert (= (and b!5063695 ((_ is Node!15562) (left!42813 (left!42813 xs!286)))) b!5064298))

(assert (= b!5064299 b!5064300))

(assert (= (and b!5063695 ((_ is Leaf!25848) (left!42813 (left!42813 xs!286)))) b!5064299))

(declare-fun m!6104678 () Bool)

(assert (=> b!5064298 m!6104678))

(declare-fun m!6104680 () Bool)

(assert (=> b!5064298 m!6104680))

(declare-fun m!6104682 () Bool)

(assert (=> b!5064299 m!6104682))

(assert (=> b!5063695 m!6103502))

(declare-fun b!5064301 () Bool)

(declare-fun tp!1414547 () Bool)

(declare-fun e!3160625 () Bool)

(declare-fun tp!1414545 () Bool)

(assert (=> b!5064301 (= e!3160625 (and (inv!77544 (left!42813 (right!43143 (left!42813 xs!286)))) tp!1414547 (inv!77544 (right!43143 (right!43143 (left!42813 xs!286)))) tp!1414545))))

(declare-fun b!5064303 () Bool)

(declare-fun e!3160626 () Bool)

(declare-fun tp!1414546 () Bool)

(assert (=> b!5064303 (= e!3160626 tp!1414546)))

(declare-fun b!5064302 () Bool)

(assert (=> b!5064302 (= e!3160625 (and (inv!77545 (xs!18906 (right!43143 (left!42813 xs!286)))) e!3160626))))

(assert (=> b!5063695 (= tp!1414503 (and (inv!77544 (right!43143 (left!42813 xs!286))) e!3160625))))

(assert (= (and b!5063695 ((_ is Node!15562) (right!43143 (left!42813 xs!286)))) b!5064301))

(assert (= b!5064302 b!5064303))

(assert (= (and b!5063695 ((_ is Leaf!25848) (right!43143 (left!42813 xs!286)))) b!5064302))

(declare-fun m!6104684 () Bool)

(assert (=> b!5064301 m!6104684))

(declare-fun m!6104686 () Bool)

(assert (=> b!5064301 m!6104686))

(declare-fun m!6104688 () Bool)

(assert (=> b!5064302 m!6104688))

(assert (=> b!5063695 m!6103504))

(declare-fun tp!1414550 () Bool)

(declare-fun b!5064304 () Bool)

(declare-fun e!3160627 () Bool)

(declare-fun tp!1414548 () Bool)

(assert (=> b!5064304 (= e!3160627 (and (inv!77544 (left!42813 (left!42813 (right!43143 ys!41)))) tp!1414550 (inv!77544 (right!43143 (left!42813 (right!43143 ys!41)))) tp!1414548))))

(declare-fun b!5064306 () Bool)

(declare-fun e!3160628 () Bool)

(declare-fun tp!1414549 () Bool)

(assert (=> b!5064306 (= e!3160628 tp!1414549)))

(declare-fun b!5064305 () Bool)

(assert (=> b!5064305 (= e!3160627 (and (inv!77545 (xs!18906 (left!42813 (right!43143 ys!41)))) e!3160628))))

(assert (=> b!5063687 (= tp!1414499 (and (inv!77544 (left!42813 (right!43143 ys!41))) e!3160627))))

(assert (= (and b!5063687 ((_ is Node!15562) (left!42813 (right!43143 ys!41)))) b!5064304))

(assert (= b!5064305 b!5064306))

(assert (= (and b!5063687 ((_ is Leaf!25848) (left!42813 (right!43143 ys!41)))) b!5064305))

(declare-fun m!6104690 () Bool)

(assert (=> b!5064304 m!6104690))

(declare-fun m!6104692 () Bool)

(assert (=> b!5064304 m!6104692))

(declare-fun m!6104694 () Bool)

(assert (=> b!5064305 m!6104694))

(assert (=> b!5063687 m!6103496))

(declare-fun tp!1414551 () Bool)

(declare-fun tp!1414553 () Bool)

(declare-fun b!5064307 () Bool)

(declare-fun e!3160629 () Bool)

(assert (=> b!5064307 (= e!3160629 (and (inv!77544 (left!42813 (right!43143 (right!43143 ys!41)))) tp!1414553 (inv!77544 (right!43143 (right!43143 (right!43143 ys!41)))) tp!1414551))))

(declare-fun b!5064309 () Bool)

(declare-fun e!3160630 () Bool)

(declare-fun tp!1414552 () Bool)

(assert (=> b!5064309 (= e!3160630 tp!1414552)))

(declare-fun b!5064308 () Bool)

(assert (=> b!5064308 (= e!3160629 (and (inv!77545 (xs!18906 (right!43143 (right!43143 ys!41)))) e!3160630))))

(assert (=> b!5063687 (= tp!1414497 (and (inv!77544 (right!43143 (right!43143 ys!41))) e!3160629))))

(assert (= (and b!5063687 ((_ is Node!15562) (right!43143 (right!43143 ys!41)))) b!5064307))

(assert (= b!5064308 b!5064309))

(assert (= (and b!5063687 ((_ is Leaf!25848) (right!43143 (right!43143 ys!41)))) b!5064308))

(declare-fun m!6104696 () Bool)

(assert (=> b!5064307 m!6104696))

(declare-fun m!6104698 () Bool)

(assert (=> b!5064307 m!6104698))

(declare-fun m!6104700 () Bool)

(assert (=> b!5064308 m!6104700))

(assert (=> b!5063687 m!6103498))

(declare-fun b!5064310 () Bool)

(declare-fun e!3160631 () Bool)

(declare-fun tp!1414554 () Bool)

(assert (=> b!5064310 (= e!3160631 (and tp_is_empty!37047 tp!1414554))))

(assert (=> b!5063694 (= tp!1414502 e!3160631)))

(assert (= (and b!5063694 ((_ is Cons!58432) (t!371279 (innerList!15650 (xs!18906 xs!286))))) b!5064310))

(declare-fun b!5064311 () Bool)

(declare-fun e!3160632 () Bool)

(declare-fun tp!1414555 () Bool)

(assert (=> b!5064311 (= e!3160632 (and tp_is_empty!37047 tp!1414555))))

(assert (=> b!5063686 (= tp!1414495 e!3160632)))

(assert (= (and b!5063686 ((_ is Cons!58432) (innerList!15650 (xs!18906 (left!42813 ys!41))))) b!5064311))

(declare-fun tp!1414558 () Bool)

(declare-fun b!5064312 () Bool)

(declare-fun e!3160633 () Bool)

(declare-fun tp!1414556 () Bool)

(assert (=> b!5064312 (= e!3160633 (and (inv!77544 (left!42813 (left!42813 (left!42813 ys!41)))) tp!1414558 (inv!77544 (right!43143 (left!42813 (left!42813 ys!41)))) tp!1414556))))

(declare-fun b!5064314 () Bool)

(declare-fun e!3160634 () Bool)

(declare-fun tp!1414557 () Bool)

(assert (=> b!5064314 (= e!3160634 tp!1414557)))

(declare-fun b!5064313 () Bool)

(assert (=> b!5064313 (= e!3160633 (and (inv!77545 (xs!18906 (left!42813 (left!42813 ys!41)))) e!3160634))))

(assert (=> b!5063684 (= tp!1414496 (and (inv!77544 (left!42813 (left!42813 ys!41))) e!3160633))))

(assert (= (and b!5063684 ((_ is Node!15562) (left!42813 (left!42813 ys!41)))) b!5064312))

(assert (= b!5064313 b!5064314))

(assert (= (and b!5063684 ((_ is Leaf!25848) (left!42813 (left!42813 ys!41)))) b!5064313))

(declare-fun m!6104702 () Bool)

(assert (=> b!5064312 m!6104702))

(declare-fun m!6104704 () Bool)

(assert (=> b!5064312 m!6104704))

(declare-fun m!6104706 () Bool)

(assert (=> b!5064313 m!6104706))

(assert (=> b!5063684 m!6103490))

(declare-fun tp!1414559 () Bool)

(declare-fun tp!1414561 () Bool)

(declare-fun e!3160635 () Bool)

(declare-fun b!5064315 () Bool)

(assert (=> b!5064315 (= e!3160635 (and (inv!77544 (left!42813 (right!43143 (left!42813 ys!41)))) tp!1414561 (inv!77544 (right!43143 (right!43143 (left!42813 ys!41)))) tp!1414559))))

(declare-fun b!5064317 () Bool)

(declare-fun e!3160636 () Bool)

(declare-fun tp!1414560 () Bool)

(assert (=> b!5064317 (= e!3160636 tp!1414560)))

(declare-fun b!5064316 () Bool)

(assert (=> b!5064316 (= e!3160635 (and (inv!77545 (xs!18906 (right!43143 (left!42813 ys!41)))) e!3160636))))

(assert (=> b!5063684 (= tp!1414494 (and (inv!77544 (right!43143 (left!42813 ys!41))) e!3160635))))

(assert (= (and b!5063684 ((_ is Node!15562) (right!43143 (left!42813 ys!41)))) b!5064315))

(assert (= b!5064316 b!5064317))

(assert (= (and b!5063684 ((_ is Leaf!25848) (right!43143 (left!42813 ys!41)))) b!5064316))

(declare-fun m!6104708 () Bool)

(assert (=> b!5064315 m!6104708))

(declare-fun m!6104710 () Bool)

(assert (=> b!5064315 m!6104710))

(declare-fun m!6104712 () Bool)

(assert (=> b!5064316 m!6104712))

(assert (=> b!5063684 m!6103492))

(declare-fun b!5064318 () Bool)

(declare-fun e!3160637 () Bool)

(declare-fun tp!1414562 () Bool)

(assert (=> b!5064318 (= e!3160637 (and tp_is_empty!37047 tp!1414562))))

(assert (=> b!5063689 (= tp!1414498 e!3160637)))

(assert (= (and b!5063689 ((_ is Cons!58432) (innerList!15650 (xs!18906 (right!43143 ys!41))))) b!5064318))

(declare-fun tp!1414563 () Bool)

(declare-fun tp!1414565 () Bool)

(declare-fun b!5064319 () Bool)

(declare-fun e!3160638 () Bool)

(assert (=> b!5064319 (= e!3160638 (and (inv!77544 (left!42813 (left!42813 (right!43143 xs!286)))) tp!1414565 (inv!77544 (right!43143 (left!42813 (right!43143 xs!286)))) tp!1414563))))

(declare-fun b!5064321 () Bool)

(declare-fun e!3160639 () Bool)

(declare-fun tp!1414564 () Bool)

(assert (=> b!5064321 (= e!3160639 tp!1414564)))

(declare-fun b!5064320 () Bool)

(assert (=> b!5064320 (= e!3160638 (and (inv!77545 (xs!18906 (left!42813 (right!43143 xs!286)))) e!3160639))))

(assert (=> b!5063698 (= tp!1414508 (and (inv!77544 (left!42813 (right!43143 xs!286))) e!3160638))))

(assert (= (and b!5063698 ((_ is Node!15562) (left!42813 (right!43143 xs!286)))) b!5064319))

(assert (= b!5064320 b!5064321))

(assert (= (and b!5063698 ((_ is Leaf!25848) (left!42813 (right!43143 xs!286)))) b!5064320))

(declare-fun m!6104714 () Bool)

(assert (=> b!5064319 m!6104714))

(declare-fun m!6104716 () Bool)

(assert (=> b!5064319 m!6104716))

(declare-fun m!6104718 () Bool)

(assert (=> b!5064320 m!6104718))

(assert (=> b!5063698 m!6103508))

(declare-fun e!3160640 () Bool)

(declare-fun tp!1414568 () Bool)

(declare-fun tp!1414566 () Bool)

(declare-fun b!5064322 () Bool)

(assert (=> b!5064322 (= e!3160640 (and (inv!77544 (left!42813 (right!43143 (right!43143 xs!286)))) tp!1414568 (inv!77544 (right!43143 (right!43143 (right!43143 xs!286)))) tp!1414566))))

(declare-fun b!5064324 () Bool)

(declare-fun e!3160641 () Bool)

(declare-fun tp!1414567 () Bool)

(assert (=> b!5064324 (= e!3160641 tp!1414567)))

(declare-fun b!5064323 () Bool)

(assert (=> b!5064323 (= e!3160640 (and (inv!77545 (xs!18906 (right!43143 (right!43143 xs!286)))) e!3160641))))

(assert (=> b!5063698 (= tp!1414506 (and (inv!77544 (right!43143 (right!43143 xs!286))) e!3160640))))

(assert (= (and b!5063698 ((_ is Node!15562) (right!43143 (right!43143 xs!286)))) b!5064322))

(assert (= b!5064323 b!5064324))

(assert (= (and b!5063698 ((_ is Leaf!25848) (right!43143 (right!43143 xs!286)))) b!5064323))

(declare-fun m!6104720 () Bool)

(assert (=> b!5064322 m!6104720))

(declare-fun m!6104722 () Bool)

(assert (=> b!5064322 m!6104722))

(declare-fun m!6104724 () Bool)

(assert (=> b!5064323 m!6104724))

(assert (=> b!5063698 m!6103510))

(declare-fun b!5064325 () Bool)

(declare-fun e!3160642 () Bool)

(declare-fun tp!1414569 () Bool)

(assert (=> b!5064325 (= e!3160642 (and tp_is_empty!37047 tp!1414569))))

(assert (=> b!5063701 (= tp!1414509 e!3160642)))

(assert (= (and b!5063701 ((_ is Cons!58432) (t!371279 (innerList!15650 (xs!18906 ys!41))))) b!5064325))

(check-sat (not b!5063931) (not b!5064287) (not d!1632092) (not b!5063858) (not b!5064300) (not d!1631890) (not b!5064128) (not d!1632070) (not bm!352739) (not bm!352748) (not b!5064320) (not b!5063845) (not d!1631770) (not b!5064020) (not b!5064275) (not b!5063871) (not d!1631880) (not b!5064309) (not b!5063885) (not b!5063940) (not b!5064325) (not b!5063896) (not b!5064016) (not b!5063687) (not d!1631772) (not b!5064148) (not bm!352765) (not b!5063741) (not b!5064165) (not b!5063982) (not b!5064281) (not b!5064234) (not b!5063784) (not b!5063867) (not b!5064262) (not d!1632086) (not d!1632072) (not d!1631938) (not d!1631912) (not b!5063895) (not b!5063854) (not b!5064317) (not b!5063742) (not bm!352772) (not b!5064250) (not b!5064139) (not d!1631862) (not b!5063863) (not b!5064141) (not b!5064232) (not b!5064225) (not b!5063743) (not bm!352747) (not d!1632054) (not b!5063964) (not b!5063787) (not bm!352724) (not b!5064296) (not b!5063939) (not d!1631818) (not bm!352771) (not d!1631874) (not b!5064032) (not b!5063857) (not b!5064099) (not bm!352767) (not d!1631966) (not b!5064280) (not b!5063927) (not b!5064304) (not b!5063819) (not b!5063962) (not b!5064164) (not b!5064138) (not b!5064091) (not b!5064312) (not b!5064295) (not bm!352773) (not bm!352704) (not b!5063959) (not b!5064284) (not b!5064303) (not b!5064156) (not b!5063860) (not d!1632032) (not b!5064187) (not b!5063821) (not b!5064298) (not b!5063862) (not b!5064096) (not b!5064140) (not b!5063932) (not bm!352766) (not bm!352702) (not b!5064310) (not b!5064229) (not bm!352740) (not b!5064039) (not b!5063813) (not b!5064299) (not d!1631976) (not b!5064318) (not d!1632102) (not b!5064197) (not d!1631776) (not b!5064196) (not b!5063935) (not b!5064293) (not b!5064302) (not b!5064283) (not b!5064126) (not b!5064264) (not b!5063748) (not b!5064286) (not b!5064137) (not bm!352725) (not b!5063852) (not b!5063972) (not bm!352738) (not bm!352769) (not b!5064324) (not b!5063898) (not d!1631982) (not b!5064255) (not b!5063884) (not b!5064294) (not bm!352737) (not b!5063856) (not b!5063684) (not b!5064311) (not d!1632046) (not b!5064316) (not b!5063957) (not b!5063899) (not b!5064319) (not b!5064268) (not bm!352711) tp_is_empty!37047 (not d!1631900) (not b!5064292) (not b!5064313) (not d!1631730) (not b!5063877) (not b!5063868) (not b!5064119) (not d!1631832) (not b!5063785) (not b!5063847) (not bm!352710) (not b!5063993) (not b!5063951) (not b!5064276) (not d!1632056) (not b!5064215) (not b!5063816) (not b!5064290) (not b!5064307) (not b!5064288) (not b!5064285) (not b!5063994) (not b!5063874) (not b!5064212) (not d!1631810) (not b!5063782) (not b!5063873) (not b!5063891) (not b!5064315) (not d!1631784) (not b!5064272) (not b!5064258) (not b!5064155) (not b!5063950) (not b!5064267) (not bm!352775) (not bm!352698) (not b!5064305) (not b!5063695) (not b!5064098) (not b!5063872) (not b!5064261) (not b!5064301) (not bm!352776) (not b!5064107) (not b!5064291) (not b!5064040) (not b!5063947) (not b!5064142) (not b!5063971) (not b!5064100) (not d!1632088) (not b!5063740) (not b!5063936) (not b!5063876) (not b!5064205) (not b!5064194) (not bm!352768) (not b!5064149) (not d!1632002) (not b!5064321) (not d!1631830) (not b!5063822) (not b!5063943) (not d!1632044) (not b!5064231) (not b!5063977) (not d!1631852) (not b!5064243) (not bm!352726) (not d!1631926) (not bm!352703) (not b!5064095) (not b!5063747) (not b!5063859) (not b!5063817) (not b!5064097) (not d!1631732) (not b!5063948) (not b!5064041) (not b!5064190) (not b!5064322) (not b!5064184) (not bm!352774) (not b!5064306) (not d!1632034) (not bm!352770) (not b!5063793) (not b!5064314) (not bm!352746) (not b!5063698) (not d!1631824) (not b!5063892) (not b!5063878) (not d!1632078) (not bm!352745) (not b!5064038) (not b!5063855) (not b!5064297) (not bm!352723) (not b!5063983) (not b!5063783) (not b!5064199) (not b!5064042) (not b!5064136) (not b!5064086) (not b!5064282) (not b!5064308) (not b!5064273) (not b!5064043) (not b!5063875) (not bm!352706) (not b!5063786) (not b!5064323) (not b!5064220))
(check-sat)
(get-model)

(declare-fun d!1632106 () Bool)

(declare-fun lt!2088570 () Int)

(assert (=> d!1632106 (>= lt!2088570 0)))

(declare-fun e!3160643 () Int)

(assert (=> d!1632106 (= lt!2088570 e!3160643)))

(declare-fun c!869152 () Bool)

(assert (=> d!1632106 (= c!869152 ((_ is Nil!58432) (list!18986 (xs!18906 (right!43143 xs!286)))))))

(assert (=> d!1632106 (= (size!39071 (list!18986 (xs!18906 (right!43143 xs!286)))) lt!2088570)))

(declare-fun b!5064326 () Bool)

(assert (=> b!5064326 (= e!3160643 0)))

(declare-fun b!5064327 () Bool)

(assert (=> b!5064327 (= e!3160643 (+ 1 (size!39071 (t!371279 (list!18986 (xs!18906 (right!43143 xs!286)))))))))

(assert (= (and d!1632106 c!869152) b!5064326))

(assert (= (and d!1632106 (not c!869152)) b!5064327))

(declare-fun m!6104726 () Bool)

(assert (=> b!5064327 m!6104726))

(assert (=> b!5064016 d!1632106))

(declare-fun d!1632108 () Bool)

(assert (=> d!1632108 (= (list!18986 (xs!18906 (right!43143 xs!286))) (innerList!15650 (xs!18906 (right!43143 xs!286))))))

(assert (=> b!5064016 d!1632108))

(declare-fun d!1632110 () Bool)

(declare-fun e!3160645 () Bool)

(assert (=> d!1632110 e!3160645))

(declare-fun res!2156402 () Bool)

(assert (=> d!1632110 (=> (not res!2156402) (not e!3160645))))

(declare-fun lt!2088571 () List!58556)

(assert (=> d!1632110 (= res!2156402 (= (content!10415 lt!2088571) ((_ map or) (content!10415 (list!18985 xs!286)) (content!10415 (list!18985 (left!42813 ys!41))))))))

(declare-fun e!3160644 () List!58556)

(assert (=> d!1632110 (= lt!2088571 e!3160644)))

(declare-fun c!869153 () Bool)

(assert (=> d!1632110 (= c!869153 ((_ is Nil!58432) (list!18985 xs!286)))))

(assert (=> d!1632110 (= (++!12784 (list!18985 xs!286) (list!18985 (left!42813 ys!41))) lt!2088571)))

(declare-fun b!5064329 () Bool)

(assert (=> b!5064329 (= e!3160644 (Cons!58432 (h!64880 (list!18985 xs!286)) (++!12784 (t!371279 (list!18985 xs!286)) (list!18985 (left!42813 ys!41)))))))

(declare-fun b!5064331 () Bool)

(assert (=> b!5064331 (= e!3160645 (or (not (= (list!18985 (left!42813 ys!41)) Nil!58432)) (= lt!2088571 (list!18985 xs!286))))))

(declare-fun b!5064328 () Bool)

(assert (=> b!5064328 (= e!3160644 (list!18985 (left!42813 ys!41)))))

(declare-fun b!5064330 () Bool)

(declare-fun res!2156403 () Bool)

(assert (=> b!5064330 (=> (not res!2156403) (not e!3160645))))

(assert (=> b!5064330 (= res!2156403 (= (size!39071 lt!2088571) (+ (size!39071 (list!18985 xs!286)) (size!39071 (list!18985 (left!42813 ys!41))))))))

(assert (= (and d!1632110 c!869153) b!5064328))

(assert (= (and d!1632110 (not c!869153)) b!5064329))

(assert (= (and d!1632110 res!2156402) b!5064330))

(assert (= (and b!5064330 res!2156403) b!5064331))

(declare-fun m!6104728 () Bool)

(assert (=> d!1632110 m!6104728))

(assert (=> d!1632110 m!6103080))

(assert (=> d!1632110 m!6103170))

(assert (=> d!1632110 m!6103190))

(assert (=> d!1632110 m!6103846))

(assert (=> b!5064329 m!6103190))

(declare-fun m!6104730 () Bool)

(assert (=> b!5064329 m!6104730))

(declare-fun m!6104732 () Bool)

(assert (=> b!5064330 m!6104732))

(assert (=> b!5064330 m!6103080))

(assert (=> b!5064330 m!6103178))

(assert (=> b!5064330 m!6103190))

(assert (=> b!5064330 m!6103854))

(assert (=> bm!352768 d!1632110))

(declare-fun d!1632112 () Bool)

(declare-fun lt!2088572 () Bool)

(assert (=> d!1632112 (= lt!2088572 (isEmpty!31628 (list!18985 (left!42813 (left!42813 xs!286)))))))

(assert (=> d!1632112 (= lt!2088572 (= (size!39073 (left!42813 (left!42813 xs!286))) 0))))

(assert (=> d!1632112 (= (isEmpty!31626 (left!42813 (left!42813 xs!286))) lt!2088572)))

(declare-fun bs!1189804 () Bool)

(assert (= bs!1189804 d!1632112))

(assert (=> bs!1189804 m!6103972))

(assert (=> bs!1189804 m!6103972))

(declare-fun m!6104734 () Bool)

(assert (=> bs!1189804 m!6104734))

(assert (=> bs!1189804 m!6104510))

(assert (=> b!5064038 d!1632112))

(declare-fun d!1632114 () Bool)

(declare-fun lt!2088573 () Int)

(assert (=> d!1632114 (>= lt!2088573 0)))

(declare-fun e!3160646 () Int)

(assert (=> d!1632114 (= lt!2088573 e!3160646)))

(declare-fun c!869154 () Bool)

(assert (=> d!1632114 (= c!869154 ((_ is Nil!58432) lt!2088545))))

(assert (=> d!1632114 (= (size!39071 lt!2088545) lt!2088573)))

(declare-fun b!5064332 () Bool)

(assert (=> b!5064332 (= e!3160646 0)))

(declare-fun b!5064333 () Bool)

(assert (=> b!5064333 (= e!3160646 (+ 1 (size!39071 (t!371279 lt!2088545))))))

(assert (= (and d!1632114 c!869154) b!5064332))

(assert (= (and d!1632114 (not c!869154)) b!5064333))

(declare-fun m!6104736 () Bool)

(assert (=> b!5064333 m!6104736))

(assert (=> b!5064156 d!1632114))

(declare-fun d!1632116 () Bool)

(declare-fun lt!2088574 () Int)

(assert (=> d!1632116 (>= lt!2088574 0)))

(declare-fun e!3160647 () Int)

(assert (=> d!1632116 (= lt!2088574 e!3160647)))

(declare-fun c!869155 () Bool)

(assert (=> d!1632116 (= c!869155 ((_ is Nil!58432) (list!18985 (left!42813 (right!43143 xs!286)))))))

(assert (=> d!1632116 (= (size!39071 (list!18985 (left!42813 (right!43143 xs!286)))) lt!2088574)))

(declare-fun b!5064334 () Bool)

(assert (=> b!5064334 (= e!3160647 0)))

(declare-fun b!5064335 () Bool)

(assert (=> b!5064335 (= e!3160647 (+ 1 (size!39071 (t!371279 (list!18985 (left!42813 (right!43143 xs!286)))))))))

(assert (= (and d!1632116 c!869155) b!5064334))

(assert (= (and d!1632116 (not c!869155)) b!5064335))

(declare-fun m!6104738 () Bool)

(assert (=> b!5064335 m!6104738))

(assert (=> b!5064156 d!1632116))

(declare-fun d!1632118 () Bool)

(declare-fun lt!2088575 () Int)

(assert (=> d!1632118 (>= lt!2088575 0)))

(declare-fun e!3160648 () Int)

(assert (=> d!1632118 (= lt!2088575 e!3160648)))

(declare-fun c!869156 () Bool)

(assert (=> d!1632118 (= c!869156 ((_ is Nil!58432) (list!18985 lt!2088445)))))

(assert (=> d!1632118 (= (size!39071 (list!18985 lt!2088445)) lt!2088575)))

(declare-fun b!5064336 () Bool)

(assert (=> b!5064336 (= e!3160648 0)))

(declare-fun b!5064337 () Bool)

(assert (=> b!5064337 (= e!3160648 (+ 1 (size!39071 (t!371279 (list!18985 lt!2088445)))))))

(assert (= (and d!1632118 c!869156) b!5064336))

(assert (= (and d!1632118 (not c!869156)) b!5064337))

(declare-fun m!6104740 () Bool)

(assert (=> b!5064337 m!6104740))

(assert (=> b!5064156 d!1632118))

(declare-fun d!1632120 () Bool)

(declare-fun lt!2088576 () Bool)

(assert (=> d!1632120 (= lt!2088576 (isEmpty!31628 (list!18985 (left!42813 (left!42813 ys!41)))))))

(assert (=> d!1632120 (= lt!2088576 (= (size!39073 (left!42813 (left!42813 ys!41))) 0))))

(assert (=> d!1632120 (= (isEmpty!31626 (left!42813 (left!42813 ys!41))) lt!2088576)))

(declare-fun bs!1189805 () Bool)

(assert (= bs!1189805 d!1632120))

(assert (=> bs!1189805 m!6103442))

(assert (=> bs!1189805 m!6103442))

(declare-fun m!6104742 () Bool)

(assert (=> bs!1189805 m!6104742))

(assert (=> bs!1189805 m!6104478))

(assert (=> b!5064095 d!1632120))

(declare-fun b!5064338 () Bool)

(declare-fun res!2156406 () Bool)

(declare-fun e!3160649 () Bool)

(assert (=> b!5064338 (=> (not res!2156406) (not e!3160649))))

(assert (=> b!5064338 (= res!2156406 (not (isEmpty!31626 (left!42813 (right!43143 lt!2088474)))))))

(declare-fun b!5064339 () Bool)

(declare-fun res!2156409 () Bool)

(assert (=> b!5064339 (=> (not res!2156409) (not e!3160649))))

(assert (=> b!5064339 (= res!2156409 (<= (- (height!2139 (left!42813 (right!43143 lt!2088474))) (height!2139 (right!43143 (right!43143 lt!2088474)))) 1))))

(declare-fun b!5064340 () Bool)

(declare-fun e!3160650 () Bool)

(assert (=> b!5064340 (= e!3160650 e!3160649)))

(declare-fun res!2156408 () Bool)

(assert (=> b!5064340 (=> (not res!2156408) (not e!3160649))))

(assert (=> b!5064340 (= res!2156408 (<= (- 1) (- (height!2139 (left!42813 (right!43143 lt!2088474))) (height!2139 (right!43143 (right!43143 lt!2088474))))))))

(declare-fun d!1632122 () Bool)

(declare-fun res!2156405 () Bool)

(assert (=> d!1632122 (=> res!2156405 e!3160650)))

(assert (=> d!1632122 (= res!2156405 (not ((_ is Node!15562) (right!43143 lt!2088474))))))

(assert (=> d!1632122 (= (isBalanced!4424 (right!43143 lt!2088474)) e!3160650)))

(declare-fun b!5064341 () Bool)

(assert (=> b!5064341 (= e!3160649 (not (isEmpty!31626 (right!43143 (right!43143 lt!2088474)))))))

(declare-fun b!5064342 () Bool)

(declare-fun res!2156404 () Bool)

(assert (=> b!5064342 (=> (not res!2156404) (not e!3160649))))

(assert (=> b!5064342 (= res!2156404 (isBalanced!4424 (left!42813 (right!43143 lt!2088474))))))

(declare-fun b!5064343 () Bool)

(declare-fun res!2156407 () Bool)

(assert (=> b!5064343 (=> (not res!2156407) (not e!3160649))))

(assert (=> b!5064343 (= res!2156407 (isBalanced!4424 (right!43143 (right!43143 lt!2088474))))))

(assert (= (and d!1632122 (not res!2156405)) b!5064340))

(assert (= (and b!5064340 res!2156408) b!5064339))

(assert (= (and b!5064339 res!2156409) b!5064342))

(assert (= (and b!5064342 res!2156404) b!5064343))

(assert (= (and b!5064343 res!2156407) b!5064338))

(assert (= (and b!5064338 res!2156406) b!5064341))

(declare-fun m!6104744 () Bool)

(assert (=> b!5064342 m!6104744))

(declare-fun m!6104746 () Bool)

(assert (=> b!5064341 m!6104746))

(declare-fun m!6104748 () Bool)

(assert (=> b!5064338 m!6104748))

(declare-fun m!6104750 () Bool)

(assert (=> b!5064339 m!6104750))

(declare-fun m!6104752 () Bool)

(assert (=> b!5064339 m!6104752))

(declare-fun m!6104754 () Bool)

(assert (=> b!5064343 m!6104754))

(assert (=> b!5064340 m!6104750))

(assert (=> b!5064340 m!6104752))

(assert (=> b!5064142 d!1632122))

(declare-fun b!5064344 () Bool)

(declare-fun res!2156412 () Bool)

(declare-fun e!3160651 () Bool)

(assert (=> b!5064344 (=> (not res!2156412) (not e!3160651))))

(assert (=> b!5064344 (= res!2156412 (not (isEmpty!31626 (left!42813 (left!42813 (right!43143 ys!41))))))))

(declare-fun b!5064345 () Bool)

(declare-fun res!2156415 () Bool)

(assert (=> b!5064345 (=> (not res!2156415) (not e!3160651))))

(assert (=> b!5064345 (= res!2156415 (<= (- (height!2139 (left!42813 (left!42813 (right!43143 ys!41)))) (height!2139 (right!43143 (left!42813 (right!43143 ys!41))))) 1))))

(declare-fun b!5064346 () Bool)

(declare-fun e!3160652 () Bool)

(assert (=> b!5064346 (= e!3160652 e!3160651)))

(declare-fun res!2156414 () Bool)

(assert (=> b!5064346 (=> (not res!2156414) (not e!3160651))))

(assert (=> b!5064346 (= res!2156414 (<= (- 1) (- (height!2139 (left!42813 (left!42813 (right!43143 ys!41)))) (height!2139 (right!43143 (left!42813 (right!43143 ys!41)))))))))

(declare-fun d!1632124 () Bool)

(declare-fun res!2156411 () Bool)

(assert (=> d!1632124 (=> res!2156411 e!3160652)))

(assert (=> d!1632124 (= res!2156411 (not ((_ is Node!15562) (left!42813 (right!43143 ys!41)))))))

(assert (=> d!1632124 (= (isBalanced!4424 (left!42813 (right!43143 ys!41))) e!3160652)))

(declare-fun b!5064347 () Bool)

(assert (=> b!5064347 (= e!3160651 (not (isEmpty!31626 (right!43143 (left!42813 (right!43143 ys!41))))))))

(declare-fun b!5064348 () Bool)

(declare-fun res!2156410 () Bool)

(assert (=> b!5064348 (=> (not res!2156410) (not e!3160651))))

(assert (=> b!5064348 (= res!2156410 (isBalanced!4424 (left!42813 (left!42813 (right!43143 ys!41)))))))

(declare-fun b!5064349 () Bool)

(declare-fun res!2156413 () Bool)

(assert (=> b!5064349 (=> (not res!2156413) (not e!3160651))))

(assert (=> b!5064349 (= res!2156413 (isBalanced!4424 (right!43143 (left!42813 (right!43143 ys!41)))))))

(assert (= (and d!1632124 (not res!2156411)) b!5064346))

(assert (= (and b!5064346 res!2156414) b!5064345))

(assert (= (and b!5064345 res!2156415) b!5064348))

(assert (= (and b!5064348 res!2156410) b!5064349))

(assert (= (and b!5064349 res!2156413) b!5064344))

(assert (= (and b!5064344 res!2156412) b!5064347))

(declare-fun m!6104756 () Bool)

(assert (=> b!5064348 m!6104756))

(declare-fun m!6104758 () Bool)

(assert (=> b!5064347 m!6104758))

(declare-fun m!6104760 () Bool)

(assert (=> b!5064344 m!6104760))

(declare-fun m!6104762 () Bool)

(assert (=> b!5064345 m!6104762))

(declare-fun m!6104764 () Bool)

(assert (=> b!5064345 m!6104764))

(declare-fun m!6104766 () Bool)

(assert (=> b!5064349 m!6104766))

(assert (=> b!5064346 m!6104762))

(assert (=> b!5064346 m!6104764))

(assert (=> b!5063859 d!1632124))

(declare-fun d!1632126 () Bool)

(declare-fun lt!2088577 () Int)

(assert (=> d!1632126 (>= lt!2088577 0)))

(declare-fun e!3160653 () Int)

(assert (=> d!1632126 (= lt!2088577 e!3160653)))

(declare-fun c!869157 () Bool)

(assert (=> d!1632126 (= c!869157 ((_ is Nil!58432) (list!18986 (xs!18906 ys!41))))))

(assert (=> d!1632126 (= (size!39071 (list!18986 (xs!18906 ys!41))) lt!2088577)))

(declare-fun b!5064350 () Bool)

(assert (=> b!5064350 (= e!3160653 0)))

(declare-fun b!5064351 () Bool)

(assert (=> b!5064351 (= e!3160653 (+ 1 (size!39071 (t!371279 (list!18986 (xs!18906 ys!41))))))))

(assert (= (and d!1632126 c!869157) b!5064350))

(assert (= (and d!1632126 (not c!869157)) b!5064351))

(declare-fun m!6104768 () Bool)

(assert (=> b!5064351 m!6104768))

(assert (=> b!5064212 d!1632126))

(assert (=> b!5064212 d!1632068))

(declare-fun d!1632128 () Bool)

(declare-fun lt!2088578 () Int)

(assert (=> d!1632128 (>= lt!2088578 0)))

(declare-fun e!3160654 () Int)

(assert (=> d!1632128 (= lt!2088578 e!3160654)))

(declare-fun c!869158 () Bool)

(assert (=> d!1632128 (= c!869158 ((_ is Nil!58432) lt!2088518))))

(assert (=> d!1632128 (= (size!39071 lt!2088518) lt!2088578)))

(declare-fun b!5064352 () Bool)

(assert (=> b!5064352 (= e!3160654 0)))

(declare-fun b!5064353 () Bool)

(assert (=> b!5064353 (= e!3160654 (+ 1 (size!39071 (t!371279 lt!2088518))))))

(assert (= (and d!1632128 c!869158) b!5064352))

(assert (= (and d!1632128 (not c!869158)) b!5064353))

(declare-fun m!6104770 () Bool)

(assert (=> b!5064353 m!6104770))

(assert (=> b!5063899 d!1632128))

(declare-fun d!1632130 () Bool)

(declare-fun lt!2088579 () Int)

(assert (=> d!1632130 (>= lt!2088579 0)))

(declare-fun e!3160655 () Int)

(assert (=> d!1632130 (= lt!2088579 e!3160655)))

(declare-fun c!869159 () Bool)

(assert (=> d!1632130 (= c!869159 ((_ is Nil!58432) (t!371279 (list!18985 xs!286))))))

(assert (=> d!1632130 (= (size!39071 (t!371279 (list!18985 xs!286))) lt!2088579)))

(declare-fun b!5064354 () Bool)

(assert (=> b!5064354 (= e!3160655 0)))

(declare-fun b!5064355 () Bool)

(assert (=> b!5064355 (= e!3160655 (+ 1 (size!39071 (t!371279 (t!371279 (list!18985 xs!286))))))))

(assert (= (and d!1632130 c!869159) b!5064354))

(assert (= (and d!1632130 (not c!869159)) b!5064355))

(declare-fun m!6104772 () Bool)

(assert (=> b!5064355 m!6104772))

(assert (=> b!5063899 d!1632130))

(assert (=> b!5063899 d!1632062))

(declare-fun d!1632132 () Bool)

(declare-fun lt!2088580 () Bool)

(assert (=> d!1632132 (= lt!2088580 (isEmpty!31628 (list!18985 (right!43143 (right!43143 (right!43143 xs!286))))))))

(assert (=> d!1632132 (= lt!2088580 (= (size!39073 (right!43143 (right!43143 (right!43143 xs!286)))) 0))))

(assert (=> d!1632132 (= (isEmpty!31626 (right!43143 (right!43143 (right!43143 xs!286)))) lt!2088580)))

(declare-fun bs!1189806 () Bool)

(assert (= bs!1189806 d!1632132))

(assert (=> bs!1189806 m!6103650))

(assert (=> bs!1189806 m!6103650))

(declare-fun m!6104774 () Bool)

(assert (=> bs!1189806 m!6104774))

(declare-fun m!6104776 () Bool)

(assert (=> bs!1189806 m!6104776))

(assert (=> b!5063785 d!1632132))

(declare-fun d!1632134 () Bool)

(declare-fun c!869160 () Bool)

(assert (=> d!1632134 (= c!869160 ((_ is Nil!58432) (t!371279 (list!18985 xs!286))))))

(declare-fun e!3160656 () (InoxSet T!105104))

(assert (=> d!1632134 (= (content!10415 (t!371279 (list!18985 xs!286))) e!3160656)))

(declare-fun b!5064356 () Bool)

(assert (=> b!5064356 (= e!3160656 ((as const (Array T!105104 Bool)) false))))

(declare-fun b!5064357 () Bool)

(assert (=> b!5064357 (= e!3160656 ((_ map or) (store ((as const (Array T!105104 Bool)) false) (h!64880 (t!371279 (list!18985 xs!286))) true) (content!10415 (t!371279 (t!371279 (list!18985 xs!286))))))))

(assert (= (and d!1632134 c!869160) b!5064356))

(assert (= (and d!1632134 (not c!869160)) b!5064357))

(declare-fun m!6104778 () Bool)

(assert (=> b!5064357 m!6104778))

(declare-fun m!6104780 () Bool)

(assert (=> b!5064357 m!6104780))

(assert (=> b!5064128 d!1632134))

(declare-fun d!1632136 () Bool)

(declare-fun e!3160658 () Bool)

(assert (=> d!1632136 e!3160658))

(declare-fun res!2156416 () Bool)

(assert (=> d!1632136 (=> (not res!2156416) (not e!3160658))))

(declare-fun lt!2088581 () List!58556)

(assert (=> d!1632136 (= res!2156416 (= (content!10415 lt!2088581) ((_ map or) (content!10415 (list!18985 (left!42813 (right!43143 (right!43143 xs!286))))) (content!10415 (list!18985 (right!43143 (right!43143 (right!43143 xs!286))))))))))

(declare-fun e!3160657 () List!58556)

(assert (=> d!1632136 (= lt!2088581 e!3160657)))

(declare-fun c!869161 () Bool)

(assert (=> d!1632136 (= c!869161 ((_ is Nil!58432) (list!18985 (left!42813 (right!43143 (right!43143 xs!286))))))))

(assert (=> d!1632136 (= (++!12784 (list!18985 (left!42813 (right!43143 (right!43143 xs!286)))) (list!18985 (right!43143 (right!43143 (right!43143 xs!286))))) lt!2088581)))

(declare-fun b!5064359 () Bool)

(assert (=> b!5064359 (= e!3160657 (Cons!58432 (h!64880 (list!18985 (left!42813 (right!43143 (right!43143 xs!286))))) (++!12784 (t!371279 (list!18985 (left!42813 (right!43143 (right!43143 xs!286))))) (list!18985 (right!43143 (right!43143 (right!43143 xs!286)))))))))

(declare-fun b!5064361 () Bool)

(assert (=> b!5064361 (= e!3160658 (or (not (= (list!18985 (right!43143 (right!43143 (right!43143 xs!286)))) Nil!58432)) (= lt!2088581 (list!18985 (left!42813 (right!43143 (right!43143 xs!286)))))))))

(declare-fun b!5064358 () Bool)

(assert (=> b!5064358 (= e!3160657 (list!18985 (right!43143 (right!43143 (right!43143 xs!286)))))))

(declare-fun b!5064360 () Bool)

(declare-fun res!2156417 () Bool)

(assert (=> b!5064360 (=> (not res!2156417) (not e!3160658))))

(assert (=> b!5064360 (= res!2156417 (= (size!39071 lt!2088581) (+ (size!39071 (list!18985 (left!42813 (right!43143 (right!43143 xs!286))))) (size!39071 (list!18985 (right!43143 (right!43143 (right!43143 xs!286))))))))))

(assert (= (and d!1632136 c!869161) b!5064358))

(assert (= (and d!1632136 (not c!869161)) b!5064359))

(assert (= (and d!1632136 res!2156416) b!5064360))

(assert (= (and b!5064360 res!2156417) b!5064361))

(declare-fun m!6104782 () Bool)

(assert (=> d!1632136 m!6104782))

(assert (=> d!1632136 m!6103644))

(declare-fun m!6104784 () Bool)

(assert (=> d!1632136 m!6104784))

(assert (=> d!1632136 m!6103650))

(declare-fun m!6104786 () Bool)

(assert (=> d!1632136 m!6104786))

(assert (=> b!5064359 m!6103650))

(declare-fun m!6104788 () Bool)

(assert (=> b!5064359 m!6104788))

(declare-fun m!6104790 () Bool)

(assert (=> b!5064360 m!6104790))

(assert (=> b!5064360 m!6103644))

(declare-fun m!6104792 () Bool)

(assert (=> b!5064360 m!6104792))

(assert (=> b!5064360 m!6103650))

(declare-fun m!6104794 () Bool)

(assert (=> b!5064360 m!6104794))

(assert (=> b!5063940 d!1632136))

(declare-fun d!1632138 () Bool)

(declare-fun c!869162 () Bool)

(assert (=> d!1632138 (= c!869162 ((_ is Empty!15562) (left!42813 (right!43143 (right!43143 xs!286)))))))

(declare-fun e!3160659 () List!58556)

(assert (=> d!1632138 (= (list!18985 (left!42813 (right!43143 (right!43143 xs!286)))) e!3160659)))

(declare-fun b!5064365 () Bool)

(declare-fun e!3160660 () List!58556)

(assert (=> b!5064365 (= e!3160660 (++!12784 (list!18985 (left!42813 (left!42813 (right!43143 (right!43143 xs!286))))) (list!18985 (right!43143 (left!42813 (right!43143 (right!43143 xs!286)))))))))

(declare-fun b!5064362 () Bool)

(assert (=> b!5064362 (= e!3160659 Nil!58432)))

(declare-fun b!5064364 () Bool)

(assert (=> b!5064364 (= e!3160660 (list!18986 (xs!18906 (left!42813 (right!43143 (right!43143 xs!286))))))))

(declare-fun b!5064363 () Bool)

(assert (=> b!5064363 (= e!3160659 e!3160660)))

(declare-fun c!869163 () Bool)

(assert (=> b!5064363 (= c!869163 ((_ is Leaf!25848) (left!42813 (right!43143 (right!43143 xs!286)))))))

(assert (= (and d!1632138 c!869162) b!5064362))

(assert (= (and d!1632138 (not c!869162)) b!5064363))

(assert (= (and b!5064363 c!869163) b!5064364))

(assert (= (and b!5064363 (not c!869163)) b!5064365))

(declare-fun m!6104796 () Bool)

(assert (=> b!5064365 m!6104796))

(declare-fun m!6104798 () Bool)

(assert (=> b!5064365 m!6104798))

(assert (=> b!5064365 m!6104796))

(assert (=> b!5064365 m!6104798))

(declare-fun m!6104800 () Bool)

(assert (=> b!5064365 m!6104800))

(declare-fun m!6104802 () Bool)

(assert (=> b!5064364 m!6104802))

(assert (=> b!5063940 d!1632138))

(declare-fun d!1632140 () Bool)

(declare-fun c!869164 () Bool)

(assert (=> d!1632140 (= c!869164 ((_ is Empty!15562) (right!43143 (right!43143 (right!43143 xs!286)))))))

(declare-fun e!3160661 () List!58556)

(assert (=> d!1632140 (= (list!18985 (right!43143 (right!43143 (right!43143 xs!286)))) e!3160661)))

(declare-fun b!5064369 () Bool)

(declare-fun e!3160662 () List!58556)

(assert (=> b!5064369 (= e!3160662 (++!12784 (list!18985 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (list!18985 (right!43143 (right!43143 (right!43143 (right!43143 xs!286)))))))))

(declare-fun b!5064366 () Bool)

(assert (=> b!5064366 (= e!3160661 Nil!58432)))

(declare-fun b!5064368 () Bool)

(assert (=> b!5064368 (= e!3160662 (list!18986 (xs!18906 (right!43143 (right!43143 (right!43143 xs!286))))))))

(declare-fun b!5064367 () Bool)

(assert (=> b!5064367 (= e!3160661 e!3160662)))

(declare-fun c!869165 () Bool)

(assert (=> b!5064367 (= c!869165 ((_ is Leaf!25848) (right!43143 (right!43143 (right!43143 xs!286)))))))

(assert (= (and d!1632140 c!869164) b!5064366))

(assert (= (and d!1632140 (not c!869164)) b!5064367))

(assert (= (and b!5064367 c!869165) b!5064368))

(assert (= (and b!5064367 (not c!869165)) b!5064369))

(assert (=> b!5064369 m!6103634))

(assert (=> b!5064369 m!6103636))

(assert (=> b!5064369 m!6103634))

(assert (=> b!5064369 m!6103636))

(declare-fun m!6104804 () Bool)

(assert (=> b!5064369 m!6104804))

(declare-fun m!6104806 () Bool)

(assert (=> b!5064368 m!6104806))

(assert (=> b!5063940 d!1632140))

(declare-fun bm!352777 () Bool)

(declare-fun call!352785 () List!58556)

(declare-fun call!352783 () List!58556)

(assert (=> bm!352777 (= call!352785 (++!12784 call!352783 (list!18985 ys!41)))))

(declare-fun d!1632142 () Bool)

(declare-fun e!3160663 () Bool)

(assert (=> d!1632142 e!3160663))

(declare-fun c!869166 () Bool)

(assert (=> d!1632142 (= c!869166 ((_ is Nil!58432) (list!18985 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))))))))

(assert (=> d!1632142 (= (appendAssoc!300 (list!18985 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (list!18985 (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (list!18985 ys!41)) true)))

(declare-fun bm!352778 () Bool)

(declare-fun call!352782 () List!58556)

(declare-fun call!352784 () List!58556)

(assert (=> bm!352778 (= call!352782 (++!12784 (list!18985 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) call!352784))))

(declare-fun bm!352779 () Bool)

(assert (=> bm!352779 (= call!352784 (++!12784 (list!18985 (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (list!18985 ys!41)))))

(declare-fun b!5064370 () Bool)

(assert (=> b!5064370 (= e!3160663 (= call!352785 call!352782))))

(declare-fun lt!2088582 () Bool)

(assert (=> b!5064370 (= lt!2088582 (appendAssoc!300 (t!371279 (list!18985 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))))) (list!18985 (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (list!18985 ys!41)))))

(declare-fun bm!352780 () Bool)

(assert (=> bm!352780 (= call!352783 (++!12784 (list!18985 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (list!18985 (right!43143 (right!43143 (right!43143 (right!43143 xs!286)))))))))

(declare-fun b!5064371 () Bool)

(assert (=> b!5064371 (= e!3160663 (= call!352785 call!352782))))

(assert (= (and d!1632142 c!869166) b!5064371))

(assert (= (and d!1632142 (not c!869166)) b!5064370))

(assert (= (or b!5064371 b!5064370) bm!352780))

(assert (= (or b!5064371 b!5064370) bm!352779))

(assert (= (or b!5064371 b!5064370) bm!352778))

(assert (= (or b!5064371 b!5064370) bm!352777))

(assert (=> bm!352778 m!6103634))

(declare-fun m!6104808 () Bool)

(assert (=> bm!352778 m!6104808))

(assert (=> bm!352780 m!6103634))

(assert (=> bm!352780 m!6103636))

(assert (=> bm!352780 m!6104804))

(assert (=> b!5064370 m!6103636))

(assert (=> b!5064370 m!6103082))

(declare-fun m!6104810 () Bool)

(assert (=> b!5064370 m!6104810))

(assert (=> bm!352779 m!6103636))

(assert (=> bm!352779 m!6103082))

(assert (=> bm!352779 m!6103646))

(assert (=> bm!352777 m!6103082))

(declare-fun m!6104812 () Bool)

(assert (=> bm!352777 m!6104812))

(assert (=> b!5063741 d!1632142))

(declare-fun d!1632144 () Bool)

(declare-fun c!869167 () Bool)

(assert (=> d!1632144 (= c!869167 ((_ is Empty!15562) (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))))))

(declare-fun e!3160664 () List!58556)

(assert (=> d!1632144 (= (list!18985 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) e!3160664)))

(declare-fun b!5064375 () Bool)

(declare-fun e!3160665 () List!58556)

(assert (=> b!5064375 (= e!3160665 (++!12784 (list!18985 (left!42813 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))))) (list!18985 (right!43143 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))))))))

(declare-fun b!5064372 () Bool)

(assert (=> b!5064372 (= e!3160664 Nil!58432)))

(declare-fun b!5064374 () Bool)

(assert (=> b!5064374 (= e!3160665 (list!18986 (xs!18906 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))))))))

(declare-fun b!5064373 () Bool)

(assert (=> b!5064373 (= e!3160664 e!3160665)))

(declare-fun c!869168 () Bool)

(assert (=> b!5064373 (= c!869168 ((_ is Leaf!25848) (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))))))

(assert (= (and d!1632144 c!869167) b!5064372))

(assert (= (and d!1632144 (not c!869167)) b!5064373))

(assert (= (and b!5064373 c!869168) b!5064374))

(assert (= (and b!5064373 (not c!869168)) b!5064375))

(declare-fun m!6104814 () Bool)

(assert (=> b!5064375 m!6104814))

(declare-fun m!6104816 () Bool)

(assert (=> b!5064375 m!6104816))

(assert (=> b!5064375 m!6104814))

(assert (=> b!5064375 m!6104816))

(declare-fun m!6104818 () Bool)

(assert (=> b!5064375 m!6104818))

(declare-fun m!6104820 () Bool)

(assert (=> b!5064374 m!6104820))

(assert (=> b!5063741 d!1632144))

(declare-fun d!1632146 () Bool)

(declare-fun c!869169 () Bool)

(assert (=> d!1632146 (= c!869169 ((_ is Empty!15562) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))))))

(declare-fun e!3160666 () List!58556)

(assert (=> d!1632146 (= (list!18985 (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) e!3160666)))

(declare-fun b!5064379 () Bool)

(declare-fun e!3160667 () List!58556)

(assert (=> b!5064379 (= e!3160667 (++!12784 (list!18985 (left!42813 (right!43143 (right!43143 (right!43143 (right!43143 xs!286)))))) (list!18985 (right!43143 (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))))))))

(declare-fun b!5064376 () Bool)

(assert (=> b!5064376 (= e!3160666 Nil!58432)))

(declare-fun b!5064378 () Bool)

(assert (=> b!5064378 (= e!3160667 (list!18986 (xs!18906 (right!43143 (right!43143 (right!43143 (right!43143 xs!286)))))))))

(declare-fun b!5064377 () Bool)

(assert (=> b!5064377 (= e!3160666 e!3160667)))

(declare-fun c!869170 () Bool)

(assert (=> b!5064377 (= c!869170 ((_ is Leaf!25848) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))))))

(assert (= (and d!1632146 c!869169) b!5064376))

(assert (= (and d!1632146 (not c!869169)) b!5064377))

(assert (= (and b!5064377 c!869170) b!5064378))

(assert (= (and b!5064377 (not c!869170)) b!5064379))

(declare-fun m!6104822 () Bool)

(assert (=> b!5064379 m!6104822))

(declare-fun m!6104824 () Bool)

(assert (=> b!5064379 m!6104824))

(assert (=> b!5064379 m!6104822))

(assert (=> b!5064379 m!6104824))

(declare-fun m!6104826 () Bool)

(assert (=> b!5064379 m!6104826))

(declare-fun m!6104828 () Bool)

(assert (=> b!5064378 m!6104828))

(assert (=> b!5063741 d!1632146))

(assert (=> b!5063741 d!1631638))

(declare-fun d!1632148 () Bool)

(declare-fun lt!2088583 () Int)

(assert (=> d!1632148 (>= lt!2088583 0)))

(declare-fun e!3160668 () Int)

(assert (=> d!1632148 (= lt!2088583 e!3160668)))

(declare-fun c!869171 () Bool)

(assert (=> d!1632148 (= c!869171 ((_ is Nil!58432) (innerList!15650 (xs!18906 (right!43143 xs!286)))))))

(assert (=> d!1632148 (= (size!39071 (innerList!15650 (xs!18906 (right!43143 xs!286)))) lt!2088583)))

(declare-fun b!5064380 () Bool)

(assert (=> b!5064380 (= e!3160668 0)))

(declare-fun b!5064381 () Bool)

(assert (=> b!5064381 (= e!3160668 (+ 1 (size!39071 (t!371279 (innerList!15650 (xs!18906 (right!43143 xs!286)))))))))

(assert (= (and d!1632148 c!869171) b!5064380))

(assert (= (and d!1632148 (not c!869171)) b!5064381))

(declare-fun m!6104830 () Bool)

(assert (=> b!5064381 m!6104830))

(assert (=> d!1632054 d!1632148))

(declare-fun d!1632150 () Bool)

(assert (=> d!1632150 (= (list!18986 (xs!18906 (right!43143 (left!42813 ys!41)))) (innerList!15650 (xs!18906 (right!43143 (left!42813 ys!41)))))))

(assert (=> b!5063971 d!1632150))

(assert (=> b!5064220 d!1632130))

(declare-fun bm!352781 () Bool)

(declare-fun call!352789 () List!58556)

(declare-fun call!352787 () List!58556)

(assert (=> bm!352781 (= call!352789 (++!12784 call!352787 (list!18985 (right!43143 ys!41))))))

(declare-fun d!1632152 () Bool)

(declare-fun e!3160669 () Bool)

(assert (=> d!1632152 e!3160669))

(declare-fun c!869172 () Bool)

(assert (=> d!1632152 (= c!869172 ((_ is Nil!58432) (t!371279 (++!12784 (list!18985 xs!286) (list!18985 (left!42813 (left!42813 ys!41)))))))))

(assert (=> d!1632152 (= (appendAssoc!300 (t!371279 (++!12784 (list!18985 xs!286) (list!18985 (left!42813 (left!42813 ys!41))))) (list!18985 (right!43143 (left!42813 ys!41))) (list!18985 (right!43143 ys!41))) true)))

(declare-fun bm!352782 () Bool)

(declare-fun call!352786 () List!58556)

(declare-fun call!352788 () List!58556)

(assert (=> bm!352782 (= call!352786 (++!12784 (t!371279 (++!12784 (list!18985 xs!286) (list!18985 (left!42813 (left!42813 ys!41))))) call!352788))))

(declare-fun bm!352783 () Bool)

(assert (=> bm!352783 (= call!352788 (++!12784 (list!18985 (right!43143 (left!42813 ys!41))) (list!18985 (right!43143 ys!41))))))

(declare-fun b!5064382 () Bool)

(assert (=> b!5064382 (= e!3160669 (= call!352789 call!352786))))

(declare-fun lt!2088584 () Bool)

(assert (=> b!5064382 (= lt!2088584 (appendAssoc!300 (t!371279 (t!371279 (++!12784 (list!18985 xs!286) (list!18985 (left!42813 (left!42813 ys!41)))))) (list!18985 (right!43143 (left!42813 ys!41))) (list!18985 (right!43143 ys!41))))))

(declare-fun bm!352784 () Bool)

(assert (=> bm!352784 (= call!352787 (++!12784 (t!371279 (++!12784 (list!18985 xs!286) (list!18985 (left!42813 (left!42813 ys!41))))) (list!18985 (right!43143 (left!42813 ys!41)))))))

(declare-fun b!5064383 () Bool)

(assert (=> b!5064383 (= e!3160669 (= call!352789 call!352786))))

(assert (= (and d!1632152 c!869172) b!5064383))

(assert (= (and d!1632152 (not c!869172)) b!5064382))

(assert (= (or b!5064383 b!5064382) bm!352784))

(assert (= (or b!5064383 b!5064382) bm!352783))

(assert (= (or b!5064383 b!5064382) bm!352782))

(assert (= (or b!5064383 b!5064382) bm!352781))

(declare-fun m!6104832 () Bool)

(assert (=> bm!352782 m!6104832))

(assert (=> bm!352784 m!6103444))

(declare-fun m!6104834 () Bool)

(assert (=> bm!352784 m!6104834))

(assert (=> b!5064382 m!6103444))

(assert (=> b!5064382 m!6103192))

(declare-fun m!6104836 () Bool)

(assert (=> b!5064382 m!6104836))

(assert (=> bm!352783 m!6103444))

(assert (=> bm!352783 m!6103192))

(assert (=> bm!352783 m!6104090))

(assert (=> bm!352781 m!6103192))

(declare-fun m!6104838 () Bool)

(assert (=> bm!352781 m!6104838))

(assert (=> b!5063977 d!1632152))

(declare-fun d!1632154 () Bool)

(assert (=> d!1632154 (= (inv!77545 (xs!18906 (left!42813 (right!43143 xs!286)))) (<= (size!39071 (innerList!15650 (xs!18906 (left!42813 (right!43143 xs!286))))) 2147483647))))

(declare-fun bs!1189807 () Bool)

(assert (= bs!1189807 d!1632154))

(declare-fun m!6104840 () Bool)

(assert (=> bs!1189807 m!6104840))

(assert (=> b!5064320 d!1632154))

(declare-fun bm!352785 () Bool)

(declare-fun call!352793 () List!58556)

(declare-fun call!352791 () List!58556)

(assert (=> bm!352785 (= call!352793 (++!12784 call!352791 (list!18985 (right!43143 ys!41))))))

(declare-fun d!1632156 () Bool)

(declare-fun e!3160670 () Bool)

(assert (=> d!1632156 e!3160670))

(declare-fun c!869173 () Bool)

(assert (=> d!1632156 (= c!869173 ((_ is Nil!58432) (t!371279 (list!18985 xs!286))))))

(assert (=> d!1632156 (= (appendAssoc!300 (t!371279 (list!18985 xs!286)) (list!18985 (left!42813 ys!41)) (list!18985 (right!43143 ys!41))) true)))

(declare-fun bm!352786 () Bool)

(declare-fun call!352790 () List!58556)

(declare-fun call!352792 () List!58556)

(assert (=> bm!352786 (= call!352790 (++!12784 (t!371279 (list!18985 xs!286)) call!352792))))

(declare-fun bm!352787 () Bool)

(assert (=> bm!352787 (= call!352792 (++!12784 (list!18985 (left!42813 ys!41)) (list!18985 (right!43143 ys!41))))))

(declare-fun b!5064384 () Bool)

(assert (=> b!5064384 (= e!3160670 (= call!352793 call!352790))))

(declare-fun lt!2088585 () Bool)

(assert (=> b!5064384 (= lt!2088585 (appendAssoc!300 (t!371279 (t!371279 (list!18985 xs!286))) (list!18985 (left!42813 ys!41)) (list!18985 (right!43143 ys!41))))))

(declare-fun bm!352788 () Bool)

(assert (=> bm!352788 (= call!352791 (++!12784 (t!371279 (list!18985 xs!286)) (list!18985 (left!42813 ys!41))))))

(declare-fun b!5064385 () Bool)

(assert (=> b!5064385 (= e!3160670 (= call!352793 call!352790))))

(assert (= (and d!1632156 c!869173) b!5064385))

(assert (= (and d!1632156 (not c!869173)) b!5064384))

(assert (= (or b!5064385 b!5064384) bm!352788))

(assert (= (or b!5064385 b!5064384) bm!352787))

(assert (= (or b!5064385 b!5064384) bm!352786))

(assert (= (or b!5064385 b!5064384) bm!352785))

(declare-fun m!6104842 () Bool)

(assert (=> bm!352786 m!6104842))

(assert (=> bm!352788 m!6103190))

(assert (=> bm!352788 m!6104730))

(assert (=> b!5064384 m!6103190))

(assert (=> b!5064384 m!6103192))

(declare-fun m!6104844 () Bool)

(assert (=> b!5064384 m!6104844))

(assert (=> bm!352787 m!6103190))

(assert (=> bm!352787 m!6103192))

(assert (=> bm!352787 m!6103194))

(assert (=> bm!352785 m!6103192))

(declare-fun m!6104846 () Bool)

(assert (=> bm!352785 m!6104846))

(assert (=> b!5064250 d!1632156))

(declare-fun bm!352789 () Bool)

(declare-fun call!352797 () List!58556)

(declare-fun call!352795 () List!58556)

(assert (=> bm!352789 (= call!352797 (++!12784 call!352795 (list!18985 (right!43143 (left!42813 ys!41)))))))

(declare-fun d!1632158 () Bool)

(declare-fun e!3160671 () Bool)

(assert (=> d!1632158 e!3160671))

(declare-fun c!869174 () Bool)

(assert (=> d!1632158 (= c!869174 ((_ is Nil!58432) (list!18985 (right!43143 (right!43143 xs!286)))))))

(assert (=> d!1632158 (= (appendAssoc!300 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 (left!42813 (left!42813 ys!41))) (list!18985 (right!43143 (left!42813 ys!41)))) true)))

(declare-fun bm!352790 () Bool)

(declare-fun call!352794 () List!58556)

(declare-fun call!352796 () List!58556)

(assert (=> bm!352790 (= call!352794 (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) call!352796))))

(declare-fun bm!352791 () Bool)

(assert (=> bm!352791 (= call!352796 (++!12784 (list!18985 (left!42813 (left!42813 ys!41))) (list!18985 (right!43143 (left!42813 ys!41)))))))

(declare-fun b!5064386 () Bool)

(assert (=> b!5064386 (= e!3160671 (= call!352797 call!352794))))

(declare-fun lt!2088586 () Bool)

(assert (=> b!5064386 (= lt!2088586 (appendAssoc!300 (t!371279 (list!18985 (right!43143 (right!43143 xs!286)))) (list!18985 (left!42813 (left!42813 ys!41))) (list!18985 (right!43143 (left!42813 ys!41)))))))

(declare-fun bm!352792 () Bool)

(assert (=> bm!352792 (= call!352795 (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 (left!42813 (left!42813 ys!41)))))))

(declare-fun b!5064387 () Bool)

(assert (=> b!5064387 (= e!3160671 (= call!352797 call!352794))))

(assert (= (and d!1632158 c!869174) b!5064387))

(assert (= (and d!1632158 (not c!869174)) b!5064386))

(assert (= (or b!5064387 b!5064386) bm!352792))

(assert (= (or b!5064387 b!5064386) bm!352791))

(assert (= (or b!5064387 b!5064386) bm!352790))

(assert (= (or b!5064387 b!5064386) bm!352789))

(assert (=> bm!352790 m!6103364))

(declare-fun m!6104848 () Bool)

(assert (=> bm!352790 m!6104848))

(assert (=> bm!352792 m!6103364))

(assert (=> bm!352792 m!6103442))

(assert (=> bm!352792 m!6103640))

(assert (=> b!5064386 m!6103442))

(assert (=> b!5064386 m!6103444))

(declare-fun m!6104850 () Bool)

(assert (=> b!5064386 m!6104850))

(assert (=> bm!352791 m!6103442))

(assert (=> bm!352791 m!6103444))

(assert (=> bm!352791 m!6103858))

(assert (=> bm!352789 m!6103444))

(declare-fun m!6104852 () Bool)

(assert (=> bm!352789 m!6104852))

(assert (=> b!5063747 d!1632158))

(assert (=> b!5063747 d!1631854))

(assert (=> b!5063747 d!1631898))

(assert (=> b!5063747 d!1631882))

(declare-fun d!1632160 () Bool)

(declare-fun lt!2088587 () Int)

(assert (=> d!1632160 (>= lt!2088587 0)))

(declare-fun e!3160672 () Int)

(assert (=> d!1632160 (= lt!2088587 e!3160672)))

(declare-fun c!869175 () Bool)

(assert (=> d!1632160 (= c!869175 ((_ is Nil!58432) lt!2088535))))

(assert (=> d!1632160 (= (size!39071 lt!2088535) lt!2088587)))

(declare-fun b!5064388 () Bool)

(assert (=> b!5064388 (= e!3160672 0)))

(declare-fun b!5064389 () Bool)

(assert (=> b!5064389 (= e!3160672 (+ 1 (size!39071 (t!371279 lt!2088535))))))

(assert (= (and d!1632160 c!869175) b!5064388))

(assert (= (and d!1632160 (not c!869175)) b!5064389))

(declare-fun m!6104854 () Bool)

(assert (=> b!5064389 m!6104854))

(assert (=> b!5063983 d!1632160))

(assert (=> b!5063983 d!1632060))

(declare-fun d!1632162 () Bool)

(declare-fun lt!2088588 () Int)

(assert (=> d!1632162 (>= lt!2088588 0)))

(declare-fun e!3160673 () Int)

(assert (=> d!1632162 (= lt!2088588 e!3160673)))

(declare-fun c!869176 () Bool)

(assert (=> d!1632162 (= c!869176 ((_ is Nil!58432) (list!18985 (left!42813 (left!42813 ys!41)))))))

(assert (=> d!1632162 (= (size!39071 (list!18985 (left!42813 (left!42813 ys!41)))) lt!2088588)))

(declare-fun b!5064390 () Bool)

(assert (=> b!5064390 (= e!3160673 0)))

(declare-fun b!5064391 () Bool)

(assert (=> b!5064391 (= e!3160673 (+ 1 (size!39071 (t!371279 (list!18985 (left!42813 (left!42813 ys!41)))))))))

(assert (= (and d!1632162 c!869176) b!5064390))

(assert (= (and d!1632162 (not c!869176)) b!5064391))

(declare-fun m!6104856 () Bool)

(assert (=> b!5064391 m!6104856))

(assert (=> b!5063983 d!1632162))

(declare-fun d!1632164 () Bool)

(declare-fun e!3160675 () Bool)

(assert (=> d!1632164 e!3160675))

(declare-fun res!2156418 () Bool)

(assert (=> d!1632164 (=> (not res!2156418) (not e!3160675))))

(declare-fun lt!2088589 () List!58556)

(assert (=> d!1632164 (= res!2156418 (= (content!10415 lt!2088589) ((_ map or) (content!10415 call!352779) (content!10415 (list!18985 (right!43143 (left!42813 ys!41)))))))))

(declare-fun e!3160674 () List!58556)

(assert (=> d!1632164 (= lt!2088589 e!3160674)))

(declare-fun c!869177 () Bool)

(assert (=> d!1632164 (= c!869177 ((_ is Nil!58432) call!352779))))

(assert (=> d!1632164 (= (++!12784 call!352779 (list!18985 (right!43143 (left!42813 ys!41)))) lt!2088589)))

(declare-fun b!5064393 () Bool)

(assert (=> b!5064393 (= e!3160674 (Cons!58432 (h!64880 call!352779) (++!12784 (t!371279 call!352779) (list!18985 (right!43143 (left!42813 ys!41))))))))

(declare-fun b!5064395 () Bool)

(assert (=> b!5064395 (= e!3160675 (or (not (= (list!18985 (right!43143 (left!42813 ys!41))) Nil!58432)) (= lt!2088589 call!352779)))))

(declare-fun b!5064392 () Bool)

(assert (=> b!5064392 (= e!3160674 (list!18985 (right!43143 (left!42813 ys!41))))))

(declare-fun b!5064394 () Bool)

(declare-fun res!2156419 () Bool)

(assert (=> b!5064394 (=> (not res!2156419) (not e!3160675))))

(assert (=> b!5064394 (= res!2156419 (= (size!39071 lt!2088589) (+ (size!39071 call!352779) (size!39071 (list!18985 (right!43143 (left!42813 ys!41)))))))))

(assert (= (and d!1632164 c!869177) b!5064392))

(assert (= (and d!1632164 (not c!869177)) b!5064393))

(assert (= (and d!1632164 res!2156418) b!5064394))

(assert (= (and b!5064394 res!2156419) b!5064395))

(declare-fun m!6104858 () Bool)

(assert (=> d!1632164 m!6104858))

(declare-fun m!6104860 () Bool)

(assert (=> d!1632164 m!6104860))

(assert (=> d!1632164 m!6103444))

(declare-fun m!6104862 () Bool)

(assert (=> d!1632164 m!6104862))

(assert (=> b!5064393 m!6103444))

(declare-fun m!6104864 () Bool)

(assert (=> b!5064393 m!6104864))

(declare-fun m!6104866 () Bool)

(assert (=> b!5064394 m!6104866))

(declare-fun m!6104868 () Bool)

(assert (=> b!5064394 m!6104868))

(assert (=> b!5064394 m!6103444))

(declare-fun m!6104870 () Bool)

(assert (=> b!5064394 m!6104870))

(assert (=> bm!352773 d!1632164))

(declare-fun d!1632166 () Bool)

(declare-fun e!3160677 () Bool)

(assert (=> d!1632166 e!3160677))

(declare-fun res!2156420 () Bool)

(assert (=> d!1632166 (=> (not res!2156420) (not e!3160677))))

(declare-fun lt!2088590 () List!58556)

(assert (=> d!1632166 (= res!2156420 (= (content!10415 lt!2088590) ((_ map or) (content!10415 (list!18985 (left!42813 (right!43143 ys!41)))) (content!10415 (list!18985 (right!43143 (right!43143 ys!41)))))))))

(declare-fun e!3160676 () List!58556)

(assert (=> d!1632166 (= lt!2088590 e!3160676)))

(declare-fun c!869178 () Bool)

(assert (=> d!1632166 (= c!869178 ((_ is Nil!58432) (list!18985 (left!42813 (right!43143 ys!41)))))))

(assert (=> d!1632166 (= (++!12784 (list!18985 (left!42813 (right!43143 ys!41))) (list!18985 (right!43143 (right!43143 ys!41)))) lt!2088590)))

(declare-fun b!5064397 () Bool)

(assert (=> b!5064397 (= e!3160676 (Cons!58432 (h!64880 (list!18985 (left!42813 (right!43143 ys!41)))) (++!12784 (t!371279 (list!18985 (left!42813 (right!43143 ys!41)))) (list!18985 (right!43143 (right!43143 ys!41))))))))

(declare-fun b!5064399 () Bool)

(assert (=> b!5064399 (= e!3160677 (or (not (= (list!18985 (right!43143 (right!43143 ys!41))) Nil!58432)) (= lt!2088590 (list!18985 (left!42813 (right!43143 ys!41))))))))

(declare-fun b!5064396 () Bool)

(assert (=> b!5064396 (= e!3160676 (list!18985 (right!43143 (right!43143 ys!41))))))

(declare-fun b!5064398 () Bool)

(declare-fun res!2156421 () Bool)

(assert (=> b!5064398 (=> (not res!2156421) (not e!3160677))))

(assert (=> b!5064398 (= res!2156421 (= (size!39071 lt!2088590) (+ (size!39071 (list!18985 (left!42813 (right!43143 ys!41)))) (size!39071 (list!18985 (right!43143 (right!43143 ys!41)))))))))

(assert (= (and d!1632166 c!869178) b!5064396))

(assert (= (and d!1632166 (not c!869178)) b!5064397))

(assert (= (and d!1632166 res!2156420) b!5064398))

(assert (= (and b!5064398 res!2156421) b!5064399))

(declare-fun m!6104872 () Bool)

(assert (=> d!1632166 m!6104872))

(assert (=> d!1632166 m!6103862))

(declare-fun m!6104874 () Bool)

(assert (=> d!1632166 m!6104874))

(assert (=> d!1632166 m!6103864))

(declare-fun m!6104876 () Bool)

(assert (=> d!1632166 m!6104876))

(assert (=> b!5064397 m!6103864))

(declare-fun m!6104878 () Bool)

(assert (=> b!5064397 m!6104878))

(declare-fun m!6104880 () Bool)

(assert (=> b!5064398 m!6104880))

(assert (=> b!5064398 m!6103862))

(declare-fun m!6104882 () Bool)

(assert (=> b!5064398 m!6104882))

(assert (=> b!5064398 m!6103864))

(declare-fun m!6104884 () Bool)

(assert (=> b!5064398 m!6104884))

(assert (=> b!5063872 d!1632166))

(declare-fun d!1632168 () Bool)

(declare-fun c!869179 () Bool)

(assert (=> d!1632168 (= c!869179 ((_ is Empty!15562) (left!42813 (right!43143 ys!41))))))

(declare-fun e!3160678 () List!58556)

(assert (=> d!1632168 (= (list!18985 (left!42813 (right!43143 ys!41))) e!3160678)))

(declare-fun b!5064403 () Bool)

(declare-fun e!3160679 () List!58556)

(assert (=> b!5064403 (= e!3160679 (++!12784 (list!18985 (left!42813 (left!42813 (right!43143 ys!41)))) (list!18985 (right!43143 (left!42813 (right!43143 ys!41))))))))

(declare-fun b!5064400 () Bool)

(assert (=> b!5064400 (= e!3160678 Nil!58432)))

(declare-fun b!5064402 () Bool)

(assert (=> b!5064402 (= e!3160679 (list!18986 (xs!18906 (left!42813 (right!43143 ys!41)))))))

(declare-fun b!5064401 () Bool)

(assert (=> b!5064401 (= e!3160678 e!3160679)))

(declare-fun c!869180 () Bool)

(assert (=> b!5064401 (= c!869180 ((_ is Leaf!25848) (left!42813 (right!43143 ys!41))))))

(assert (= (and d!1632168 c!869179) b!5064400))

(assert (= (and d!1632168 (not c!869179)) b!5064401))

(assert (= (and b!5064401 c!869180) b!5064402))

(assert (= (and b!5064401 (not c!869180)) b!5064403))

(declare-fun m!6104886 () Bool)

(assert (=> b!5064403 m!6104886))

(declare-fun m!6104888 () Bool)

(assert (=> b!5064403 m!6104888))

(assert (=> b!5064403 m!6104886))

(assert (=> b!5064403 m!6104888))

(declare-fun m!6104890 () Bool)

(assert (=> b!5064403 m!6104890))

(declare-fun m!6104892 () Bool)

(assert (=> b!5064402 m!6104892))

(assert (=> b!5063872 d!1632168))

(declare-fun d!1632170 () Bool)

(declare-fun c!869181 () Bool)

(assert (=> d!1632170 (= c!869181 ((_ is Empty!15562) (right!43143 (right!43143 ys!41))))))

(declare-fun e!3160680 () List!58556)

(assert (=> d!1632170 (= (list!18985 (right!43143 (right!43143 ys!41))) e!3160680)))

(declare-fun b!5064407 () Bool)

(declare-fun e!3160681 () List!58556)

(assert (=> b!5064407 (= e!3160681 (++!12784 (list!18985 (left!42813 (right!43143 (right!43143 ys!41)))) (list!18985 (right!43143 (right!43143 (right!43143 ys!41))))))))

(declare-fun b!5064404 () Bool)

(assert (=> b!5064404 (= e!3160680 Nil!58432)))

(declare-fun b!5064406 () Bool)

(assert (=> b!5064406 (= e!3160681 (list!18986 (xs!18906 (right!43143 (right!43143 ys!41)))))))

(declare-fun b!5064405 () Bool)

(assert (=> b!5064405 (= e!3160680 e!3160681)))

(declare-fun c!869182 () Bool)

(assert (=> b!5064405 (= c!869182 ((_ is Leaf!25848) (right!43143 (right!43143 ys!41))))))

(assert (= (and d!1632170 c!869181) b!5064404))

(assert (= (and d!1632170 (not c!869181)) b!5064405))

(assert (= (and b!5064405 c!869182) b!5064406))

(assert (= (and b!5064405 (not c!869182)) b!5064407))

(declare-fun m!6104894 () Bool)

(assert (=> b!5064407 m!6104894))

(declare-fun m!6104896 () Bool)

(assert (=> b!5064407 m!6104896))

(assert (=> b!5064407 m!6104894))

(assert (=> b!5064407 m!6104896))

(declare-fun m!6104898 () Bool)

(assert (=> b!5064407 m!6104898))

(declare-fun m!6104900 () Bool)

(assert (=> b!5064406 m!6104900))

(assert (=> b!5063872 d!1632170))

(declare-fun d!1632172 () Bool)

(declare-fun e!3160683 () Bool)

(assert (=> d!1632172 e!3160683))

(declare-fun res!2156422 () Bool)

(assert (=> d!1632172 (=> (not res!2156422) (not e!3160683))))

(declare-fun lt!2088591 () List!58556)

(assert (=> d!1632172 (= res!2156422 (= (content!10415 lt!2088591) ((_ map or) (content!10415 (list!18985 (left!42813 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)))) (content!10415 (list!18985 (right!43143 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)))))))))

(declare-fun e!3160682 () List!58556)

(assert (=> d!1632172 (= lt!2088591 e!3160682)))

(declare-fun c!869183 () Bool)

(assert (=> d!1632172 (= c!869183 ((_ is Nil!58432) (list!18985 (left!42813 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)))))))

(assert (=> d!1632172 (= (++!12784 (list!18985 (left!42813 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))) (list!18985 (right!43143 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)))) lt!2088591)))

(declare-fun b!5064409 () Bool)

(assert (=> b!5064409 (= e!3160682 (Cons!58432 (h!64880 (list!18985 (left!42813 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)))) (++!12784 (t!371279 (list!18985 (left!42813 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)))) (list!18985 (right!43143 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))))))))

(declare-fun b!5064411 () Bool)

(assert (=> b!5064411 (= e!3160683 (or (not (= (list!18985 (right!43143 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))) Nil!58432)) (= lt!2088591 (list!18985 (left!42813 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))))))))

(declare-fun b!5064408 () Bool)

(assert (=> b!5064408 (= e!3160682 (list!18985 (right!43143 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))))))

(declare-fun b!5064410 () Bool)

(declare-fun res!2156423 () Bool)

(assert (=> b!5064410 (=> (not res!2156423) (not e!3160683))))

(assert (=> b!5064410 (= res!2156423 (= (size!39071 lt!2088591) (+ (size!39071 (list!18985 (left!42813 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)))) (size!39071 (list!18985 (right!43143 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)))))))))

(assert (= (and d!1632172 c!869183) b!5064408))

(assert (= (and d!1632172 (not c!869183)) b!5064409))

(assert (= (and d!1632172 res!2156422) b!5064410))

(assert (= (and b!5064410 res!2156423) b!5064411))

(declare-fun m!6104902 () Bool)

(assert (=> d!1632172 m!6104902))

(assert (=> d!1632172 m!6104644))

(declare-fun m!6104904 () Bool)

(assert (=> d!1632172 m!6104904))

(assert (=> d!1632172 m!6104646))

(declare-fun m!6104906 () Bool)

(assert (=> d!1632172 m!6104906))

(assert (=> b!5064409 m!6104646))

(declare-fun m!6104908 () Bool)

(assert (=> b!5064409 m!6104908))

(declare-fun m!6104910 () Bool)

(assert (=> b!5064410 m!6104910))

(assert (=> b!5064410 m!6104644))

(declare-fun m!6104912 () Bool)

(assert (=> b!5064410 m!6104912))

(assert (=> b!5064410 m!6104646))

(declare-fun m!6104914 () Bool)

(assert (=> b!5064410 m!6104914))

(assert (=> b!5064281 d!1632172))

(declare-fun d!1632174 () Bool)

(declare-fun c!869184 () Bool)

(assert (=> d!1632174 (= c!869184 ((_ is Empty!15562) (left!42813 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))))))

(declare-fun e!3160684 () List!58556)

(assert (=> d!1632174 (= (list!18985 (left!42813 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))) e!3160684)))

(declare-fun b!5064415 () Bool)

(declare-fun e!3160685 () List!58556)

(assert (=> b!5064415 (= e!3160685 (++!12784 (list!18985 (left!42813 (left!42813 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)))) (list!18985 (right!43143 (left!42813 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))))))))

(declare-fun b!5064412 () Bool)

(assert (=> b!5064412 (= e!3160684 Nil!58432)))

(declare-fun b!5064414 () Bool)

(assert (=> b!5064414 (= e!3160685 (list!18986 (xs!18906 (left!42813 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)))))))

(declare-fun b!5064413 () Bool)

(assert (=> b!5064413 (= e!3160684 e!3160685)))

(declare-fun c!869185 () Bool)

(assert (=> b!5064413 (= c!869185 ((_ is Leaf!25848) (left!42813 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))))))

(assert (= (and d!1632174 c!869184) b!5064412))

(assert (= (and d!1632174 (not c!869184)) b!5064413))

(assert (= (and b!5064413 c!869185) b!5064414))

(assert (= (and b!5064413 (not c!869185)) b!5064415))

(declare-fun m!6104916 () Bool)

(assert (=> b!5064415 m!6104916))

(declare-fun m!6104918 () Bool)

(assert (=> b!5064415 m!6104918))

(assert (=> b!5064415 m!6104916))

(assert (=> b!5064415 m!6104918))

(declare-fun m!6104920 () Bool)

(assert (=> b!5064415 m!6104920))

(declare-fun m!6104922 () Bool)

(assert (=> b!5064414 m!6104922))

(assert (=> b!5064281 d!1632174))

(declare-fun d!1632176 () Bool)

(declare-fun c!869186 () Bool)

(assert (=> d!1632176 (= c!869186 ((_ is Empty!15562) (right!43143 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))))))

(declare-fun e!3160686 () List!58556)

(assert (=> d!1632176 (= (list!18985 (right!43143 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))) e!3160686)))

(declare-fun b!5064419 () Bool)

(declare-fun e!3160687 () List!58556)

(assert (=> b!5064419 (= e!3160687 (++!12784 (list!18985 (left!42813 (right!43143 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)))) (list!18985 (right!43143 (right!43143 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))))))))

(declare-fun b!5064416 () Bool)

(assert (=> b!5064416 (= e!3160686 Nil!58432)))

(declare-fun b!5064418 () Bool)

(assert (=> b!5064418 (= e!3160687 (list!18986 (xs!18906 (right!43143 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)))))))

(declare-fun b!5064417 () Bool)

(assert (=> b!5064417 (= e!3160686 e!3160687)))

(declare-fun c!869187 () Bool)

(assert (=> b!5064417 (= c!869187 ((_ is Leaf!25848) (right!43143 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))))))

(assert (= (and d!1632176 c!869186) b!5064416))

(assert (= (and d!1632176 (not c!869186)) b!5064417))

(assert (= (and b!5064417 c!869187) b!5064418))

(assert (= (and b!5064417 (not c!869187)) b!5064419))

(declare-fun m!6104924 () Bool)

(assert (=> b!5064419 m!6104924))

(declare-fun m!6104926 () Bool)

(assert (=> b!5064419 m!6104926))

(assert (=> b!5064419 m!6104924))

(assert (=> b!5064419 m!6104926))

(declare-fun m!6104928 () Bool)

(assert (=> b!5064419 m!6104928))

(declare-fun m!6104930 () Bool)

(assert (=> b!5064418 m!6104930))

(assert (=> b!5064281 d!1632176))

(declare-fun d!1632178 () Bool)

(declare-fun lt!2088592 () Bool)

(assert (=> d!1632178 (= lt!2088592 (isEmpty!31628 (list!18985 (right!43143 (right!43143 ys!41)))))))

(assert (=> d!1632178 (= lt!2088592 (= (size!39073 (right!43143 (right!43143 ys!41))) 0))))

(assert (=> d!1632178 (= (isEmpty!31626 (right!43143 (right!43143 ys!41))) lt!2088592)))

(declare-fun bs!1189808 () Bool)

(assert (= bs!1189808 d!1632178))

(assert (=> bs!1189808 m!6103864))

(assert (=> bs!1189808 m!6103864))

(declare-fun m!6104932 () Bool)

(assert (=> bs!1189808 m!6104932))

(assert (=> bs!1189808 m!6104298))

(assert (=> b!5063858 d!1632178))

(declare-fun d!1632180 () Bool)

(declare-fun c!869188 () Bool)

(assert (=> d!1632180 (= c!869188 ((_ is Empty!15562) lt!2088506))))

(declare-fun e!3160688 () List!58556)

(assert (=> d!1632180 (= (list!18985 lt!2088506) e!3160688)))

(declare-fun b!5064423 () Bool)

(declare-fun e!3160689 () List!58556)

(assert (=> b!5064423 (= e!3160689 (++!12784 (list!18985 (left!42813 lt!2088506)) (list!18985 (right!43143 lt!2088506))))))

(declare-fun b!5064420 () Bool)

(assert (=> b!5064420 (= e!3160688 Nil!58432)))

(declare-fun b!5064422 () Bool)

(assert (=> b!5064422 (= e!3160689 (list!18986 (xs!18906 lt!2088506)))))

(declare-fun b!5064421 () Bool)

(assert (=> b!5064421 (= e!3160688 e!3160689)))

(declare-fun c!869189 () Bool)

(assert (=> b!5064421 (= c!869189 ((_ is Leaf!25848) lt!2088506))))

(assert (= (and d!1632180 c!869188) b!5064420))

(assert (= (and d!1632180 (not c!869188)) b!5064421))

(assert (= (and b!5064421 c!869189) b!5064422))

(assert (= (and b!5064421 (not c!869189)) b!5064423))

(declare-fun m!6104934 () Bool)

(assert (=> b!5064423 m!6104934))

(declare-fun m!6104936 () Bool)

(assert (=> b!5064423 m!6104936))

(assert (=> b!5064423 m!6104934))

(assert (=> b!5064423 m!6104936))

(declare-fun m!6104938 () Bool)

(assert (=> b!5064423 m!6104938))

(declare-fun m!6104940 () Bool)

(assert (=> b!5064422 m!6104940))

(assert (=> d!1631776 d!1632180))

(declare-fun d!1632182 () Bool)

(declare-fun e!3160691 () Bool)

(assert (=> d!1632182 e!3160691))

(declare-fun res!2156424 () Bool)

(assert (=> d!1632182 (=> (not res!2156424) (not e!3160691))))

(declare-fun lt!2088593 () List!58556)

(assert (=> d!1632182 (= res!2156424 (= (content!10415 lt!2088593) ((_ map or) (content!10415 (list!18985 (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476))))) (content!10415 (list!18985 (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678)))))))))

(declare-fun e!3160690 () List!58556)

(assert (=> d!1632182 (= lt!2088593 e!3160690)))

(declare-fun c!869190 () Bool)

(assert (=> d!1632182 (= c!869190 ((_ is Nil!58432) (list!18985 (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476))))))))

(assert (=> d!1632182 (= (++!12784 (list!18985 (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476)))) (list!18985 (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678)))) lt!2088593)))

(declare-fun b!5064425 () Bool)

(assert (=> b!5064425 (= e!3160690 (Cons!58432 (h!64880 (list!18985 (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476))))) (++!12784 (t!371279 (list!18985 (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476))))) (list!18985 (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678))))))))

(declare-fun b!5064427 () Bool)

(assert (=> b!5064427 (= e!3160691 (or (not (= (list!18985 (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678))) Nil!58432)) (= lt!2088593 (list!18985 (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476)))))))))

(declare-fun b!5064424 () Bool)

(assert (=> b!5064424 (= e!3160690 (list!18985 (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678))))))

(declare-fun b!5064426 () Bool)

(declare-fun res!2156425 () Bool)

(assert (=> b!5064426 (=> (not res!2156425) (not e!3160691))))

(assert (=> b!5064426 (= res!2156425 (= (size!39071 lt!2088593) (+ (size!39071 (list!18985 (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476))))) (size!39071 (list!18985 (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678)))))))))

(assert (= (and d!1632182 c!869190) b!5064424))

(assert (= (and d!1632182 (not c!869190)) b!5064425))

(assert (= (and d!1632182 res!2156424) b!5064426))

(assert (= (and b!5064426 res!2156425) b!5064427))

(declare-fun m!6104942 () Bool)

(assert (=> d!1632182 m!6104942))

(assert (=> d!1632182 m!6103724))

(declare-fun m!6104944 () Bool)

(assert (=> d!1632182 m!6104944))

(assert (=> d!1632182 m!6103728))

(declare-fun m!6104946 () Bool)

(assert (=> d!1632182 m!6104946))

(assert (=> b!5064425 m!6103728))

(declare-fun m!6104948 () Bool)

(assert (=> b!5064425 m!6104948))

(declare-fun m!6104950 () Bool)

(assert (=> b!5064426 m!6104950))

(assert (=> b!5064426 m!6103724))

(declare-fun m!6104952 () Bool)

(assert (=> b!5064426 m!6104952))

(assert (=> b!5064426 m!6103728))

(declare-fun m!6104954 () Bool)

(assert (=> b!5064426 m!6104954))

(assert (=> d!1631776 d!1632182))

(declare-fun c!869191 () Bool)

(declare-fun d!1632184 () Bool)

(assert (=> d!1632184 (= c!869191 ((_ is Empty!15562) (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476)))))))

(declare-fun e!3160692 () List!58556)

(assert (=> d!1632184 (= (list!18985 (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476)))) e!3160692)))

(declare-fun b!5064431 () Bool)

(declare-fun e!3160693 () List!58556)

(assert (=> b!5064431 (= e!3160693 (++!12784 (list!18985 (left!42813 (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476))))) (list!18985 (right!43143 (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476)))))))))

(declare-fun b!5064428 () Bool)

(assert (=> b!5064428 (= e!3160692 Nil!58432)))

(declare-fun b!5064430 () Bool)

(assert (=> b!5064430 (= e!3160693 (list!18986 (xs!18906 (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476))))))))

(declare-fun b!5064429 () Bool)

(assert (=> b!5064429 (= e!3160692 e!3160693)))

(declare-fun c!869192 () Bool)

(assert (=> b!5064429 (= c!869192 ((_ is Leaf!25848) (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476)))))))

(assert (= (and d!1632184 c!869191) b!5064428))

(assert (= (and d!1632184 (not c!869191)) b!5064429))

(assert (= (and b!5064429 c!869192) b!5064430))

(assert (= (and b!5064429 (not c!869192)) b!5064431))

(declare-fun m!6104956 () Bool)

(assert (=> b!5064431 m!6104956))

(declare-fun m!6104958 () Bool)

(assert (=> b!5064431 m!6104958))

(assert (=> b!5064431 m!6104956))

(assert (=> b!5064431 m!6104958))

(declare-fun m!6104960 () Bool)

(assert (=> b!5064431 m!6104960))

(declare-fun m!6104962 () Bool)

(assert (=> b!5064430 m!6104962))

(assert (=> d!1631776 d!1632184))

(declare-fun c!869193 () Bool)

(declare-fun d!1632186 () Bool)

(assert (=> d!1632186 (= c!869193 ((_ is Empty!15562) (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678))))))

(declare-fun e!3160694 () List!58556)

(assert (=> d!1632186 (= (list!18985 (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678))) e!3160694)))

(declare-fun b!5064435 () Bool)

(declare-fun e!3160695 () List!58556)

(assert (=> b!5064435 (= e!3160695 (++!12784 (list!18985 (left!42813 (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678)))) (list!18985 (right!43143 (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678))))))))

(declare-fun b!5064432 () Bool)

(assert (=> b!5064432 (= e!3160694 Nil!58432)))

(declare-fun b!5064434 () Bool)

(assert (=> b!5064434 (= e!3160695 (list!18986 (xs!18906 (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678)))))))

(declare-fun b!5064433 () Bool)

(assert (=> b!5064433 (= e!3160694 e!3160695)))

(declare-fun c!869194 () Bool)

(assert (=> b!5064433 (= c!869194 ((_ is Leaf!25848) (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678))))))

(assert (= (and d!1632186 c!869193) b!5064432))

(assert (= (and d!1632186 (not c!869193)) b!5064433))

(assert (= (and b!5064433 c!869194) b!5064434))

(assert (= (and b!5064433 (not c!869194)) b!5064435))

(declare-fun m!6104964 () Bool)

(assert (=> b!5064435 m!6104964))

(declare-fun m!6104966 () Bool)

(assert (=> b!5064435 m!6104966))

(assert (=> b!5064435 m!6104964))

(assert (=> b!5064435 m!6104966))

(declare-fun m!6104968 () Bool)

(assert (=> b!5064435 m!6104968))

(declare-fun m!6104970 () Bool)

(assert (=> b!5064434 m!6104970))

(assert (=> d!1631776 d!1632186))

(declare-fun d!1632188 () Bool)

(declare-fun c!869195 () Bool)

(assert (=> d!1632188 (= c!869195 ((_ is Nil!58432) lt!2088529))))

(declare-fun e!3160696 () (InoxSet T!105104))

(assert (=> d!1632188 (= (content!10415 lt!2088529) e!3160696)))

(declare-fun b!5064436 () Bool)

(assert (=> b!5064436 (= e!3160696 ((as const (Array T!105104 Bool)) false))))

(declare-fun b!5064437 () Bool)

(assert (=> b!5064437 (= e!3160696 ((_ map or) (store ((as const (Array T!105104 Bool)) false) (h!64880 lt!2088529) true) (content!10415 (t!371279 lt!2088529))))))

(assert (= (and d!1632188 c!869195) b!5064436))

(assert (= (and d!1632188 (not c!869195)) b!5064437))

(declare-fun m!6104972 () Bool)

(assert (=> b!5064437 m!6104972))

(declare-fun m!6104974 () Bool)

(assert (=> b!5064437 m!6104974))

(assert (=> d!1631862 d!1632188))

(declare-fun d!1632190 () Bool)

(declare-fun c!869196 () Bool)

(assert (=> d!1632190 (= c!869196 ((_ is Nil!58432) (list!18985 (right!43143 (right!43143 xs!286)))))))

(declare-fun e!3160697 () (InoxSet T!105104))

(assert (=> d!1632190 (= (content!10415 (list!18985 (right!43143 (right!43143 xs!286)))) e!3160697)))

(declare-fun b!5064438 () Bool)

(assert (=> b!5064438 (= e!3160697 ((as const (Array T!105104 Bool)) false))))

(declare-fun b!5064439 () Bool)

(assert (=> b!5064439 (= e!3160697 ((_ map or) (store ((as const (Array T!105104 Bool)) false) (h!64880 (list!18985 (right!43143 (right!43143 xs!286)))) true) (content!10415 (t!371279 (list!18985 (right!43143 (right!43143 xs!286)))))))))

(assert (= (and d!1632190 c!869196) b!5064438))

(assert (= (and d!1632190 (not c!869196)) b!5064439))

(declare-fun m!6104976 () Bool)

(assert (=> b!5064439 m!6104976))

(declare-fun m!6104978 () Bool)

(assert (=> b!5064439 m!6104978))

(assert (=> d!1631862 d!1632190))

(assert (=> d!1631862 d!1631990))

(declare-fun d!1632192 () Bool)

(declare-fun lt!2088594 () Int)

(assert (=> d!1632192 (>= lt!2088594 0)))

(declare-fun e!3160698 () Int)

(assert (=> d!1632192 (= lt!2088594 e!3160698)))

(declare-fun c!869197 () Bool)

(assert (=> d!1632192 (= c!869197 ((_ is Nil!58432) (list!18986 (xs!18906 xs!286))))))

(assert (=> d!1632192 (= (size!39071 (list!18986 (xs!18906 xs!286))) lt!2088594)))

(declare-fun b!5064440 () Bool)

(assert (=> b!5064440 (= e!3160698 0)))

(declare-fun b!5064441 () Bool)

(assert (=> b!5064441 (= e!3160698 (+ 1 (size!39071 (t!371279 (list!18986 (xs!18906 xs!286))))))))

(assert (= (and d!1632192 c!869197) b!5064440))

(assert (= (and d!1632192 (not c!869197)) b!5064441))

(declare-fun m!6104980 () Bool)

(assert (=> b!5064441 m!6104980))

(assert (=> d!1632072 d!1632192))

(assert (=> d!1632072 d!1631920))

(declare-fun d!1632194 () Bool)

(assert (=> d!1632194 (= (isEmpty!31628 (list!18985 (right!43143 ys!41))) ((_ is Nil!58432) (list!18985 (right!43143 ys!41))))))

(assert (=> d!1631732 d!1632194))

(assert (=> d!1631732 d!1631814))

(declare-fun d!1632196 () Bool)

(declare-fun lt!2088595 () Int)

(assert (=> d!1632196 (= lt!2088595 (size!39071 (list!18985 (right!43143 ys!41))))))

(assert (=> d!1632196 (= lt!2088595 (ite ((_ is Empty!15562) (right!43143 ys!41)) 0 (ite ((_ is Leaf!25848) (right!43143 ys!41)) (csize!31355 (right!43143 ys!41)) (csize!31354 (right!43143 ys!41)))))))

(assert (=> d!1632196 (= (size!39073 (right!43143 ys!41)) lt!2088595)))

(declare-fun bs!1189809 () Bool)

(assert (= bs!1189809 d!1632196))

(assert (=> bs!1189809 m!6103192))

(assert (=> bs!1189809 m!6103192))

(assert (=> bs!1189809 m!6103856))

(assert (=> d!1631732 d!1632196))

(declare-fun d!1632198 () Bool)

(assert (=> d!1632198 (= (inv!77545 (xs!18906 (right!43143 (left!42813 ys!41)))) (<= (size!39071 (innerList!15650 (xs!18906 (right!43143 (left!42813 ys!41))))) 2147483647))))

(declare-fun bs!1189810 () Bool)

(assert (= bs!1189810 d!1632198))

(declare-fun m!6104982 () Bool)

(assert (=> bs!1189810 m!6104982))

(assert (=> b!5064316 d!1632198))

(declare-fun b!5064442 () Bool)

(declare-fun res!2156428 () Bool)

(declare-fun e!3160699 () Bool)

(assert (=> b!5064442 (=> (not res!2156428) (not e!3160699))))

(assert (=> b!5064442 (= res!2156428 (not (isEmpty!31626 (left!42813 (left!42813 lt!2088474)))))))

(declare-fun b!5064443 () Bool)

(declare-fun res!2156431 () Bool)

(assert (=> b!5064443 (=> (not res!2156431) (not e!3160699))))

(assert (=> b!5064443 (= res!2156431 (<= (- (height!2139 (left!42813 (left!42813 lt!2088474))) (height!2139 (right!43143 (left!42813 lt!2088474)))) 1))))

(declare-fun b!5064444 () Bool)

(declare-fun e!3160700 () Bool)

(assert (=> b!5064444 (= e!3160700 e!3160699)))

(declare-fun res!2156430 () Bool)

(assert (=> b!5064444 (=> (not res!2156430) (not e!3160699))))

(assert (=> b!5064444 (= res!2156430 (<= (- 1) (- (height!2139 (left!42813 (left!42813 lt!2088474))) (height!2139 (right!43143 (left!42813 lt!2088474))))))))

(declare-fun d!1632200 () Bool)

(declare-fun res!2156427 () Bool)

(assert (=> d!1632200 (=> res!2156427 e!3160700)))

(assert (=> d!1632200 (= res!2156427 (not ((_ is Node!15562) (left!42813 lt!2088474))))))

(assert (=> d!1632200 (= (isBalanced!4424 (left!42813 lt!2088474)) e!3160700)))

(declare-fun b!5064445 () Bool)

(assert (=> b!5064445 (= e!3160699 (not (isEmpty!31626 (right!43143 (left!42813 lt!2088474)))))))

(declare-fun b!5064446 () Bool)

(declare-fun res!2156426 () Bool)

(assert (=> b!5064446 (=> (not res!2156426) (not e!3160699))))

(assert (=> b!5064446 (= res!2156426 (isBalanced!4424 (left!42813 (left!42813 lt!2088474))))))

(declare-fun b!5064447 () Bool)

(declare-fun res!2156429 () Bool)

(assert (=> b!5064447 (=> (not res!2156429) (not e!3160699))))

(assert (=> b!5064447 (= res!2156429 (isBalanced!4424 (right!43143 (left!42813 lt!2088474))))))

(assert (= (and d!1632200 (not res!2156427)) b!5064444))

(assert (= (and b!5064444 res!2156430) b!5064443))

(assert (= (and b!5064443 res!2156431) b!5064446))

(assert (= (and b!5064446 res!2156426) b!5064447))

(assert (= (and b!5064447 res!2156429) b!5064442))

(assert (= (and b!5064442 res!2156428) b!5064445))

(declare-fun m!6104984 () Bool)

(assert (=> b!5064446 m!6104984))

(declare-fun m!6104986 () Bool)

(assert (=> b!5064445 m!6104986))

(declare-fun m!6104988 () Bool)

(assert (=> b!5064442 m!6104988))

(declare-fun m!6104990 () Bool)

(assert (=> b!5064443 m!6104990))

(declare-fun m!6104992 () Bool)

(assert (=> b!5064443 m!6104992))

(declare-fun m!6104994 () Bool)

(assert (=> b!5064447 m!6104994))

(assert (=> b!5064444 m!6104990))

(assert (=> b!5064444 m!6104992))

(assert (=> b!5064141 d!1632200))

(declare-fun b!5064448 () Bool)

(declare-fun res!2156434 () Bool)

(declare-fun e!3160701 () Bool)

(assert (=> b!5064448 (=> (not res!2156434) (not e!3160701))))

(assert (=> b!5064448 (= res!2156434 (not (isEmpty!31626 (left!42813 (right!43143 (right!43143 lt!2088442))))))))

(declare-fun b!5064449 () Bool)

(declare-fun res!2156437 () Bool)

(assert (=> b!5064449 (=> (not res!2156437) (not e!3160701))))

(assert (=> b!5064449 (= res!2156437 (<= (- (height!2139 (left!42813 (right!43143 (right!43143 lt!2088442)))) (height!2139 (right!43143 (right!43143 (right!43143 lt!2088442))))) 1))))

(declare-fun b!5064450 () Bool)

(declare-fun e!3160702 () Bool)

(assert (=> b!5064450 (= e!3160702 e!3160701)))

(declare-fun res!2156436 () Bool)

(assert (=> b!5064450 (=> (not res!2156436) (not e!3160701))))

(assert (=> b!5064450 (= res!2156436 (<= (- 1) (- (height!2139 (left!42813 (right!43143 (right!43143 lt!2088442)))) (height!2139 (right!43143 (right!43143 (right!43143 lt!2088442)))))))))

(declare-fun d!1632202 () Bool)

(declare-fun res!2156433 () Bool)

(assert (=> d!1632202 (=> res!2156433 e!3160702)))

(assert (=> d!1632202 (= res!2156433 (not ((_ is Node!15562) (right!43143 (right!43143 lt!2088442)))))))

(assert (=> d!1632202 (= (isBalanced!4424 (right!43143 (right!43143 lt!2088442))) e!3160702)))

(declare-fun b!5064451 () Bool)

(assert (=> b!5064451 (= e!3160701 (not (isEmpty!31626 (right!43143 (right!43143 (right!43143 lt!2088442))))))))

(declare-fun b!5064452 () Bool)

(declare-fun res!2156432 () Bool)

(assert (=> b!5064452 (=> (not res!2156432) (not e!3160701))))

(assert (=> b!5064452 (= res!2156432 (isBalanced!4424 (left!42813 (right!43143 (right!43143 lt!2088442)))))))

(declare-fun b!5064453 () Bool)

(declare-fun res!2156435 () Bool)

(assert (=> b!5064453 (=> (not res!2156435) (not e!3160701))))

(assert (=> b!5064453 (= res!2156435 (isBalanced!4424 (right!43143 (right!43143 (right!43143 lt!2088442)))))))

(assert (= (and d!1632202 (not res!2156433)) b!5064450))

(assert (= (and b!5064450 res!2156436) b!5064449))

(assert (= (and b!5064449 res!2156437) b!5064452))

(assert (= (and b!5064452 res!2156432) b!5064453))

(assert (= (and b!5064453 res!2156435) b!5064448))

(assert (= (and b!5064448 res!2156434) b!5064451))

(declare-fun m!6104996 () Bool)

(assert (=> b!5064452 m!6104996))

(declare-fun m!6104998 () Bool)

(assert (=> b!5064451 m!6104998))

(declare-fun m!6105000 () Bool)

(assert (=> b!5064448 m!6105000))

(declare-fun m!6105002 () Bool)

(assert (=> b!5064449 m!6105002))

(declare-fun m!6105004 () Bool)

(assert (=> b!5064449 m!6105004))

(declare-fun m!6105006 () Bool)

(assert (=> b!5064453 m!6105006))

(assert (=> b!5064450 m!6105002))

(assert (=> b!5064450 m!6105004))

(assert (=> b!5064295 d!1632202))

(assert (=> b!5063740 d!1631638))

(assert (=> b!5063740 d!1632144))

(declare-fun call!352799 () List!58556)

(declare-fun bm!352793 () Bool)

(declare-fun call!352801 () List!58556)

(assert (=> bm!352793 (= call!352801 (++!12784 call!352799 (++!12784 (list!18985 (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (list!18985 ys!41))))))

(declare-fun d!1632204 () Bool)

(declare-fun e!3160703 () Bool)

(assert (=> d!1632204 e!3160703))

(declare-fun c!869198 () Bool)

(assert (=> d!1632204 (= c!869198 ((_ is Nil!58432) (list!18985 (left!42813 (right!43143 (right!43143 xs!286))))))))

(assert (=> d!1632204 (= (appendAssoc!300 (list!18985 (left!42813 (right!43143 (right!43143 xs!286)))) (list!18985 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (++!12784 (list!18985 (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (list!18985 ys!41))) true)))

(declare-fun bm!352794 () Bool)

(declare-fun call!352798 () List!58556)

(declare-fun call!352800 () List!58556)

(assert (=> bm!352794 (= call!352798 (++!12784 (list!18985 (left!42813 (right!43143 (right!43143 xs!286)))) call!352800))))

(declare-fun bm!352795 () Bool)

(assert (=> bm!352795 (= call!352800 (++!12784 (list!18985 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (++!12784 (list!18985 (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (list!18985 ys!41))))))

(declare-fun b!5064454 () Bool)

(assert (=> b!5064454 (= e!3160703 (= call!352801 call!352798))))

(declare-fun lt!2088596 () Bool)

(assert (=> b!5064454 (= lt!2088596 (appendAssoc!300 (t!371279 (list!18985 (left!42813 (right!43143 (right!43143 xs!286))))) (list!18985 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (++!12784 (list!18985 (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (list!18985 ys!41))))))

(declare-fun bm!352796 () Bool)

(assert (=> bm!352796 (= call!352799 (++!12784 (list!18985 (left!42813 (right!43143 (right!43143 xs!286)))) (list!18985 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))))))))

(declare-fun b!5064455 () Bool)

(assert (=> b!5064455 (= e!3160703 (= call!352801 call!352798))))

(assert (= (and d!1632204 c!869198) b!5064455))

(assert (= (and d!1632204 (not c!869198)) b!5064454))

(assert (= (or b!5064455 b!5064454) bm!352796))

(assert (= (or b!5064455 b!5064454) bm!352795))

(assert (= (or b!5064455 b!5064454) bm!352794))

(assert (= (or b!5064455 b!5064454) bm!352793))

(assert (=> bm!352794 m!6103644))

(declare-fun m!6105008 () Bool)

(assert (=> bm!352794 m!6105008))

(assert (=> bm!352796 m!6103644))

(assert (=> bm!352796 m!6103634))

(declare-fun m!6105010 () Bool)

(assert (=> bm!352796 m!6105010))

(assert (=> b!5064454 m!6103634))

(assert (=> b!5064454 m!6103646))

(declare-fun m!6105012 () Bool)

(assert (=> b!5064454 m!6105012))

(assert (=> bm!352795 m!6103634))

(assert (=> bm!352795 m!6103646))

(declare-fun m!6105014 () Bool)

(assert (=> bm!352795 m!6105014))

(assert (=> bm!352793 m!6103646))

(declare-fun m!6105016 () Bool)

(assert (=> bm!352793 m!6105016))

(assert (=> b!5063740 d!1632204))

(declare-fun d!1632206 () Bool)

(declare-fun e!3160705 () Bool)

(assert (=> d!1632206 e!3160705))

(declare-fun res!2156438 () Bool)

(assert (=> d!1632206 (=> (not res!2156438) (not e!3160705))))

(declare-fun lt!2088597 () List!58556)

(assert (=> d!1632206 (= res!2156438 (= (content!10415 lt!2088597) ((_ map or) (content!10415 (list!18985 (right!43143 (right!43143 (right!43143 (right!43143 xs!286)))))) (content!10415 (list!18985 ys!41)))))))

(declare-fun e!3160704 () List!58556)

(assert (=> d!1632206 (= lt!2088597 e!3160704)))

(declare-fun c!869199 () Bool)

(assert (=> d!1632206 (= c!869199 ((_ is Nil!58432) (list!18985 (right!43143 (right!43143 (right!43143 (right!43143 xs!286)))))))))

(assert (=> d!1632206 (= (++!12784 (list!18985 (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (list!18985 ys!41)) lt!2088597)))

(declare-fun b!5064457 () Bool)

(assert (=> b!5064457 (= e!3160704 (Cons!58432 (h!64880 (list!18985 (right!43143 (right!43143 (right!43143 (right!43143 xs!286)))))) (++!12784 (t!371279 (list!18985 (right!43143 (right!43143 (right!43143 (right!43143 xs!286)))))) (list!18985 ys!41))))))

(declare-fun b!5064459 () Bool)

(assert (=> b!5064459 (= e!3160705 (or (not (= (list!18985 ys!41) Nil!58432)) (= lt!2088597 (list!18985 (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))))))))

(declare-fun b!5064456 () Bool)

(assert (=> b!5064456 (= e!3160704 (list!18985 ys!41))))

(declare-fun b!5064458 () Bool)

(declare-fun res!2156439 () Bool)

(assert (=> b!5064458 (=> (not res!2156439) (not e!3160705))))

(assert (=> b!5064458 (= res!2156439 (= (size!39071 lt!2088597) (+ (size!39071 (list!18985 (right!43143 (right!43143 (right!43143 (right!43143 xs!286)))))) (size!39071 (list!18985 ys!41)))))))

(assert (= (and d!1632206 c!869199) b!5064456))

(assert (= (and d!1632206 (not c!869199)) b!5064457))

(assert (= (and d!1632206 res!2156438) b!5064458))

(assert (= (and b!5064458 res!2156439) b!5064459))

(declare-fun m!6105018 () Bool)

(assert (=> d!1632206 m!6105018))

(assert (=> d!1632206 m!6103636))

(declare-fun m!6105020 () Bool)

(assert (=> d!1632206 m!6105020))

(assert (=> d!1632206 m!6103082))

(assert (=> d!1632206 m!6103172))

(assert (=> b!5064457 m!6103082))

(declare-fun m!6105022 () Bool)

(assert (=> b!5064457 m!6105022))

(declare-fun m!6105024 () Bool)

(assert (=> b!5064458 m!6105024))

(assert (=> b!5064458 m!6103636))

(declare-fun m!6105026 () Bool)

(assert (=> b!5064458 m!6105026))

(assert (=> b!5064458 m!6103082))

(assert (=> b!5064458 m!6103180))

(assert (=> b!5063740 d!1632206))

(assert (=> b!5063740 d!1632146))

(assert (=> b!5063740 d!1632138))

(declare-fun d!1632208 () Bool)

(assert (=> d!1632208 (= (list!18986 (xs!18906 (right!43143 (right!43143 xs!286)))) (innerList!15650 (xs!18906 (right!43143 (right!43143 xs!286)))))))

(assert (=> b!5063939 d!1632208))

(declare-fun d!1632210 () Bool)

(declare-fun c!869200 () Bool)

(assert (=> d!1632210 (= c!869200 ((_ is Nil!58432) lt!2088518))))

(declare-fun e!3160706 () (InoxSet T!105104))

(assert (=> d!1632210 (= (content!10415 lt!2088518) e!3160706)))

(declare-fun b!5064460 () Bool)

(assert (=> b!5064460 (= e!3160706 ((as const (Array T!105104 Bool)) false))))

(declare-fun b!5064461 () Bool)

(assert (=> b!5064461 (= e!3160706 ((_ map or) (store ((as const (Array T!105104 Bool)) false) (h!64880 lt!2088518) true) (content!10415 (t!371279 lt!2088518))))))

(assert (= (and d!1632210 c!869200) b!5064460))

(assert (= (and d!1632210 (not c!869200)) b!5064461))

(declare-fun m!6105028 () Bool)

(assert (=> b!5064461 m!6105028))

(declare-fun m!6105030 () Bool)

(assert (=> b!5064461 m!6105030))

(assert (=> d!1631824 d!1632210))

(assert (=> d!1631824 d!1632134))

(assert (=> d!1631824 d!1631990))

(declare-fun d!1632212 () Bool)

(declare-fun e!3160708 () Bool)

(assert (=> d!1632212 e!3160708))

(declare-fun res!2156440 () Bool)

(assert (=> d!1632212 (=> (not res!2156440) (not e!3160708))))

(declare-fun lt!2088598 () List!58556)

(assert (=> d!1632212 (= res!2156440 (= (content!10415 lt!2088598) ((_ map or) (content!10415 (t!371279 (list!18985 (left!42813 (right!43143 xs!286))))) (content!10415 (list!18985 lt!2088445)))))))

(declare-fun e!3160707 () List!58556)

(assert (=> d!1632212 (= lt!2088598 e!3160707)))

(declare-fun c!869201 () Bool)

(assert (=> d!1632212 (= c!869201 ((_ is Nil!58432) (t!371279 (list!18985 (left!42813 (right!43143 xs!286))))))))

(assert (=> d!1632212 (= (++!12784 (t!371279 (list!18985 (left!42813 (right!43143 xs!286)))) (list!18985 lt!2088445)) lt!2088598)))

(declare-fun b!5064463 () Bool)

(assert (=> b!5064463 (= e!3160707 (Cons!58432 (h!64880 (t!371279 (list!18985 (left!42813 (right!43143 xs!286))))) (++!12784 (t!371279 (t!371279 (list!18985 (left!42813 (right!43143 xs!286))))) (list!18985 lt!2088445))))))

(declare-fun b!5064465 () Bool)

(assert (=> b!5064465 (= e!3160708 (or (not (= (list!18985 lt!2088445) Nil!58432)) (= lt!2088598 (t!371279 (list!18985 (left!42813 (right!43143 xs!286)))))))))

(declare-fun b!5064462 () Bool)

(assert (=> b!5064462 (= e!3160707 (list!18985 lt!2088445))))

(declare-fun b!5064464 () Bool)

(declare-fun res!2156441 () Bool)

(assert (=> b!5064464 (=> (not res!2156441) (not e!3160708))))

(assert (=> b!5064464 (= res!2156441 (= (size!39071 lt!2088598) (+ (size!39071 (t!371279 (list!18985 (left!42813 (right!43143 xs!286))))) (size!39071 (list!18985 lt!2088445)))))))

(assert (= (and d!1632212 c!869201) b!5064462))

(assert (= (and d!1632212 (not c!869201)) b!5064463))

(assert (= (and d!1632212 res!2156440) b!5064464))

(assert (= (and b!5064464 res!2156441) b!5064465))

(declare-fun m!6105032 () Bool)

(assert (=> d!1632212 m!6105032))

(declare-fun m!6105034 () Bool)

(assert (=> d!1632212 m!6105034))

(assert (=> d!1632212 m!6103486))

(assert (=> d!1632212 m!6104422))

(assert (=> b!5064463 m!6103486))

(declare-fun m!6105036 () Bool)

(assert (=> b!5064463 m!6105036))

(declare-fun m!6105038 () Bool)

(assert (=> b!5064464 m!6105038))

(assert (=> b!5064464 m!6104738))

(assert (=> b!5064464 m!6103486))

(assert (=> b!5064464 m!6104052))

(assert (=> b!5064155 d!1632212))

(declare-fun d!1632214 () Bool)

(declare-fun e!3160710 () Bool)

(assert (=> d!1632214 e!3160710))

(declare-fun res!2156442 () Bool)

(assert (=> d!1632214 (=> (not res!2156442) (not e!3160710))))

(declare-fun lt!2088599 () List!58556)

(assert (=> d!1632214 (= res!2156442 (= (content!10415 lt!2088599) ((_ map or) (content!10415 (list!18985 (left!42813 lt!2088445))) (content!10415 (list!18985 (right!43143 lt!2088445))))))))

(declare-fun e!3160709 () List!58556)

(assert (=> d!1632214 (= lt!2088599 e!3160709)))

(declare-fun c!869202 () Bool)

(assert (=> d!1632214 (= c!869202 ((_ is Nil!58432) (list!18985 (left!42813 lt!2088445))))))

(assert (=> d!1632214 (= (++!12784 (list!18985 (left!42813 lt!2088445)) (list!18985 (right!43143 lt!2088445))) lt!2088599)))

(declare-fun b!5064467 () Bool)

(assert (=> b!5064467 (= e!3160709 (Cons!58432 (h!64880 (list!18985 (left!42813 lt!2088445))) (++!12784 (t!371279 (list!18985 (left!42813 lt!2088445))) (list!18985 (right!43143 lt!2088445)))))))

(declare-fun b!5064469 () Bool)

(assert (=> b!5064469 (= e!3160710 (or (not (= (list!18985 (right!43143 lt!2088445)) Nil!58432)) (= lt!2088599 (list!18985 (left!42813 lt!2088445)))))))

(declare-fun b!5064466 () Bool)

(assert (=> b!5064466 (= e!3160709 (list!18985 (right!43143 lt!2088445)))))

(declare-fun b!5064468 () Bool)

(declare-fun res!2156443 () Bool)

(assert (=> b!5064468 (=> (not res!2156443) (not e!3160710))))

(assert (=> b!5064468 (= res!2156443 (= (size!39071 lt!2088599) (+ (size!39071 (list!18985 (left!42813 lt!2088445))) (size!39071 (list!18985 (right!43143 lt!2088445))))))))

(assert (= (and d!1632214 c!869202) b!5064466))

(assert (= (and d!1632214 (not c!869202)) b!5064467))

(assert (= (and d!1632214 res!2156442) b!5064468))

(assert (= (and b!5064468 res!2156443) b!5064469))

(declare-fun m!6105040 () Bool)

(assert (=> d!1632214 m!6105040))

(assert (=> d!1632214 m!6104442))

(declare-fun m!6105042 () Bool)

(assert (=> d!1632214 m!6105042))

(assert (=> d!1632214 m!6104444))

(declare-fun m!6105044 () Bool)

(assert (=> d!1632214 m!6105044))

(assert (=> b!5064467 m!6104444))

(declare-fun m!6105046 () Bool)

(assert (=> b!5064467 m!6105046))

(declare-fun m!6105048 () Bool)

(assert (=> b!5064468 m!6105048))

(assert (=> b!5064468 m!6104442))

(declare-fun m!6105050 () Bool)

(assert (=> b!5064468 m!6105050))

(assert (=> b!5064468 m!6104444))

(declare-fun m!6105052 () Bool)

(assert (=> b!5064468 m!6105052))

(assert (=> b!5064165 d!1632214))

(declare-fun d!1632216 () Bool)

(declare-fun c!869203 () Bool)

(assert (=> d!1632216 (= c!869203 ((_ is Empty!15562) (left!42813 lt!2088445)))))

(declare-fun e!3160711 () List!58556)

(assert (=> d!1632216 (= (list!18985 (left!42813 lt!2088445)) e!3160711)))

(declare-fun b!5064473 () Bool)

(declare-fun e!3160712 () List!58556)

(assert (=> b!5064473 (= e!3160712 (++!12784 (list!18985 (left!42813 (left!42813 lt!2088445))) (list!18985 (right!43143 (left!42813 lt!2088445)))))))

(declare-fun b!5064470 () Bool)

(assert (=> b!5064470 (= e!3160711 Nil!58432)))

(declare-fun b!5064472 () Bool)

(assert (=> b!5064472 (= e!3160712 (list!18986 (xs!18906 (left!42813 lt!2088445))))))

(declare-fun b!5064471 () Bool)

(assert (=> b!5064471 (= e!3160711 e!3160712)))

(declare-fun c!869204 () Bool)

(assert (=> b!5064471 (= c!869204 ((_ is Leaf!25848) (left!42813 lt!2088445)))))

(assert (= (and d!1632216 c!869203) b!5064470))

(assert (= (and d!1632216 (not c!869203)) b!5064471))

(assert (= (and b!5064471 c!869204) b!5064472))

(assert (= (and b!5064471 (not c!869204)) b!5064473))

(declare-fun m!6105054 () Bool)

(assert (=> b!5064473 m!6105054))

(declare-fun m!6105056 () Bool)

(assert (=> b!5064473 m!6105056))

(assert (=> b!5064473 m!6105054))

(assert (=> b!5064473 m!6105056))

(declare-fun m!6105058 () Bool)

(assert (=> b!5064473 m!6105058))

(declare-fun m!6105060 () Bool)

(assert (=> b!5064472 m!6105060))

(assert (=> b!5064165 d!1632216))

(declare-fun d!1632218 () Bool)

(declare-fun c!869205 () Bool)

(assert (=> d!1632218 (= c!869205 ((_ is Empty!15562) (right!43143 lt!2088445)))))

(declare-fun e!3160713 () List!58556)

(assert (=> d!1632218 (= (list!18985 (right!43143 lt!2088445)) e!3160713)))

(declare-fun b!5064477 () Bool)

(declare-fun e!3160714 () List!58556)

(assert (=> b!5064477 (= e!3160714 (++!12784 (list!18985 (left!42813 (right!43143 lt!2088445))) (list!18985 (right!43143 (right!43143 lt!2088445)))))))

(declare-fun b!5064474 () Bool)

(assert (=> b!5064474 (= e!3160713 Nil!58432)))

(declare-fun b!5064476 () Bool)

(assert (=> b!5064476 (= e!3160714 (list!18986 (xs!18906 (right!43143 lt!2088445))))))

(declare-fun b!5064475 () Bool)

(assert (=> b!5064475 (= e!3160713 e!3160714)))

(declare-fun c!869206 () Bool)

(assert (=> b!5064475 (= c!869206 ((_ is Leaf!25848) (right!43143 lt!2088445)))))

(assert (= (and d!1632218 c!869205) b!5064474))

(assert (= (and d!1632218 (not c!869205)) b!5064475))

(assert (= (and b!5064475 c!869206) b!5064476))

(assert (= (and b!5064475 (not c!869206)) b!5064477))

(declare-fun m!6105062 () Bool)

(assert (=> b!5064477 m!6105062))

(declare-fun m!6105064 () Bool)

(assert (=> b!5064477 m!6105064))

(assert (=> b!5064477 m!6105062))

(assert (=> b!5064477 m!6105064))

(declare-fun m!6105066 () Bool)

(assert (=> b!5064477 m!6105066))

(declare-fun m!6105068 () Bool)

(assert (=> b!5064476 m!6105068))

(assert (=> b!5064165 d!1632218))

(declare-fun d!1632220 () Bool)

(declare-fun e!3160716 () Bool)

(assert (=> d!1632220 e!3160716))

(declare-fun res!2156444 () Bool)

(assert (=> d!1632220 (=> (not res!2156444) (not e!3160716))))

(declare-fun lt!2088600 () List!58556)

(assert (=> d!1632220 (= res!2156444 (= (content!10415 lt!2088600) ((_ map or) (content!10415 (t!371279 (t!371279 (list!18985 xs!286)))) (content!10415 (list!18985 ys!41)))))))

(declare-fun e!3160715 () List!58556)

(assert (=> d!1632220 (= lt!2088600 e!3160715)))

(declare-fun c!869207 () Bool)

(assert (=> d!1632220 (= c!869207 ((_ is Nil!58432) (t!371279 (t!371279 (list!18985 xs!286)))))))

(assert (=> d!1632220 (= (++!12784 (t!371279 (t!371279 (list!18985 xs!286))) (list!18985 ys!41)) lt!2088600)))

(declare-fun b!5064479 () Bool)

(assert (=> b!5064479 (= e!3160715 (Cons!58432 (h!64880 (t!371279 (t!371279 (list!18985 xs!286)))) (++!12784 (t!371279 (t!371279 (t!371279 (list!18985 xs!286)))) (list!18985 ys!41))))))

(declare-fun b!5064481 () Bool)

(assert (=> b!5064481 (= e!3160716 (or (not (= (list!18985 ys!41) Nil!58432)) (= lt!2088600 (t!371279 (t!371279 (list!18985 xs!286))))))))

(declare-fun b!5064478 () Bool)

(assert (=> b!5064478 (= e!3160715 (list!18985 ys!41))))

(declare-fun b!5064480 () Bool)

(declare-fun res!2156445 () Bool)

(assert (=> b!5064480 (=> (not res!2156445) (not e!3160716))))

(assert (=> b!5064480 (= res!2156445 (= (size!39071 lt!2088600) (+ (size!39071 (t!371279 (t!371279 (list!18985 xs!286)))) (size!39071 (list!18985 ys!41)))))))

(assert (= (and d!1632220 c!869207) b!5064478))

(assert (= (and d!1632220 (not c!869207)) b!5064479))

(assert (= (and d!1632220 res!2156444) b!5064480))

(assert (= (and b!5064480 res!2156445) b!5064481))

(declare-fun m!6105070 () Bool)

(assert (=> d!1632220 m!6105070))

(assert (=> d!1632220 m!6104780))

(assert (=> d!1632220 m!6103082))

(assert (=> d!1632220 m!6103172))

(assert (=> b!5064479 m!6103082))

(declare-fun m!6105072 () Bool)

(assert (=> b!5064479 m!6105072))

(declare-fun m!6105074 () Bool)

(assert (=> b!5064480 m!6105074))

(assert (=> b!5064480 m!6104772))

(assert (=> b!5064480 m!6103082))

(assert (=> b!5064480 m!6103180))

(assert (=> b!5063898 d!1632220))

(declare-fun d!1632222 () Bool)

(assert (=> d!1632222 (= (list!18986 (xs!18906 (right!43143 ys!41))) (innerList!15650 (xs!18906 (right!43143 ys!41))))))

(assert (=> b!5063871 d!1632222))

(declare-fun d!1632224 () Bool)

(declare-fun lt!2088601 () Int)

(assert (=> d!1632224 (= lt!2088601 (size!39071 (list!18985 (left!42813 ys!41))))))

(assert (=> d!1632224 (= lt!2088601 (ite ((_ is Empty!15562) (left!42813 ys!41)) 0 (ite ((_ is Leaf!25848) (left!42813 ys!41)) (csize!31355 (left!42813 ys!41)) (csize!31354 (left!42813 ys!41)))))))

(assert (=> d!1632224 (= (size!39073 (left!42813 ys!41)) lt!2088601)))

(declare-fun bs!1189811 () Bool)

(assert (= bs!1189811 d!1632224))

(assert (=> bs!1189811 m!6103190))

(assert (=> bs!1189811 m!6103190))

(assert (=> bs!1189811 m!6103854))

(assert (=> d!1631982 d!1632224))

(assert (=> d!1631982 d!1632196))

(declare-fun d!1632226 () Bool)

(assert (=> d!1632226 (= (inv!77545 (xs!18906 (right!43143 (right!43143 ys!41)))) (<= (size!39071 (innerList!15650 (xs!18906 (right!43143 (right!43143 ys!41))))) 2147483647))))

(declare-fun bs!1189812 () Bool)

(assert (= bs!1189812 d!1632226))

(declare-fun m!6105076 () Bool)

(assert (=> bs!1189812 m!6105076))

(assert (=> b!5064308 d!1632226))

(declare-fun d!1632228 () Bool)

(declare-fun res!2156446 () Bool)

(declare-fun e!3160717 () Bool)

(assert (=> d!1632228 (=> (not res!2156446) (not e!3160717))))

(assert (=> d!1632228 (= res!2156446 (<= (size!39071 (list!18986 (xs!18906 (right!43143 (left!42813 ys!41))))) 512))))

(assert (=> d!1632228 (= (inv!77549 (right!43143 (left!42813 ys!41))) e!3160717)))

(declare-fun b!5064482 () Bool)

(declare-fun res!2156447 () Bool)

(assert (=> b!5064482 (=> (not res!2156447) (not e!3160717))))

(assert (=> b!5064482 (= res!2156447 (= (csize!31355 (right!43143 (left!42813 ys!41))) (size!39071 (list!18986 (xs!18906 (right!43143 (left!42813 ys!41)))))))))

(declare-fun b!5064483 () Bool)

(assert (=> b!5064483 (= e!3160717 (and (> (csize!31355 (right!43143 (left!42813 ys!41))) 0) (<= (csize!31355 (right!43143 (left!42813 ys!41))) 512)))))

(assert (= (and d!1632228 res!2156446) b!5064482))

(assert (= (and b!5064482 res!2156447) b!5064483))

(assert (=> d!1632228 m!6104072))

(assert (=> d!1632228 m!6104072))

(declare-fun m!6105078 () Bool)

(assert (=> d!1632228 m!6105078))

(assert (=> b!5064482 m!6104072))

(assert (=> b!5064482 m!6104072))

(assert (=> b!5064482 m!6105078))

(assert (=> b!5063964 d!1632228))

(declare-fun d!1632230 () Bool)

(assert (=> d!1632230 (= (isEmpty!31628 (list!18985 (left!42813 ys!41))) ((_ is Nil!58432) (list!18985 (left!42813 ys!41))))))

(assert (=> d!1632044 d!1632230))

(assert (=> d!1632044 d!1631812))

(assert (=> d!1632044 d!1632224))

(declare-fun d!1632232 () Bool)

(declare-fun e!3160719 () Bool)

(assert (=> d!1632232 e!3160719))

(declare-fun res!2156448 () Bool)

(assert (=> d!1632232 (=> (not res!2156448) (not e!3160719))))

(declare-fun lt!2088602 () List!58556)

(assert (=> d!1632232 (= res!2156448 (= (content!10415 lt!2088602) ((_ map or) (content!10415 (list!18985 (left!42813 lt!2088474))) (content!10415 (list!18985 (right!43143 lt!2088474))))))))

(declare-fun e!3160718 () List!58556)

(assert (=> d!1632232 (= lt!2088602 e!3160718)))

(declare-fun c!869208 () Bool)

(assert (=> d!1632232 (= c!869208 ((_ is Nil!58432) (list!18985 (left!42813 lt!2088474))))))

(assert (=> d!1632232 (= (++!12784 (list!18985 (left!42813 lt!2088474)) (list!18985 (right!43143 lt!2088474))) lt!2088602)))

(declare-fun b!5064485 () Bool)

(assert (=> b!5064485 (= e!3160718 (Cons!58432 (h!64880 (list!18985 (left!42813 lt!2088474))) (++!12784 (t!371279 (list!18985 (left!42813 lt!2088474))) (list!18985 (right!43143 lt!2088474)))))))

(declare-fun b!5064487 () Bool)

(assert (=> b!5064487 (= e!3160719 (or (not (= (list!18985 (right!43143 lt!2088474)) Nil!58432)) (= lt!2088602 (list!18985 (left!42813 lt!2088474)))))))

(declare-fun b!5064484 () Bool)

(assert (=> b!5064484 (= e!3160718 (list!18985 (right!43143 lt!2088474)))))

(declare-fun b!5064486 () Bool)

(declare-fun res!2156449 () Bool)

(assert (=> b!5064486 (=> (not res!2156449) (not e!3160719))))

(assert (=> b!5064486 (= res!2156449 (= (size!39071 lt!2088602) (+ (size!39071 (list!18985 (left!42813 lt!2088474))) (size!39071 (list!18985 (right!43143 lt!2088474))))))))

(assert (= (and d!1632232 c!869208) b!5064484))

(assert (= (and d!1632232 (not c!869208)) b!5064485))

(assert (= (and d!1632232 res!2156448) b!5064486))

(assert (= (and b!5064486 res!2156449) b!5064487))

(declare-fun m!6105080 () Bool)

(assert (=> d!1632232 m!6105080))

(assert (=> d!1632232 m!6104604))

(declare-fun m!6105082 () Bool)

(assert (=> d!1632232 m!6105082))

(assert (=> d!1632232 m!6104606))

(declare-fun m!6105084 () Bool)

(assert (=> d!1632232 m!6105084))

(assert (=> b!5064485 m!6104606))

(declare-fun m!6105086 () Bool)

(assert (=> b!5064485 m!6105086))

(declare-fun m!6105088 () Bool)

(assert (=> b!5064486 m!6105088))

(assert (=> b!5064486 m!6104604))

(declare-fun m!6105090 () Bool)

(assert (=> b!5064486 m!6105090))

(assert (=> b!5064486 m!6104606))

(declare-fun m!6105092 () Bool)

(assert (=> b!5064486 m!6105092))

(assert (=> b!5064262 d!1632232))

(declare-fun d!1632234 () Bool)

(declare-fun c!869209 () Bool)

(assert (=> d!1632234 (= c!869209 ((_ is Empty!15562) (left!42813 lt!2088474)))))

(declare-fun e!3160720 () List!58556)

(assert (=> d!1632234 (= (list!18985 (left!42813 lt!2088474)) e!3160720)))

(declare-fun b!5064491 () Bool)

(declare-fun e!3160721 () List!58556)

(assert (=> b!5064491 (= e!3160721 (++!12784 (list!18985 (left!42813 (left!42813 lt!2088474))) (list!18985 (right!43143 (left!42813 lt!2088474)))))))

(declare-fun b!5064488 () Bool)

(assert (=> b!5064488 (= e!3160720 Nil!58432)))

(declare-fun b!5064490 () Bool)

(assert (=> b!5064490 (= e!3160721 (list!18986 (xs!18906 (left!42813 lt!2088474))))))

(declare-fun b!5064489 () Bool)

(assert (=> b!5064489 (= e!3160720 e!3160721)))

(declare-fun c!869210 () Bool)

(assert (=> b!5064489 (= c!869210 ((_ is Leaf!25848) (left!42813 lt!2088474)))))

(assert (= (and d!1632234 c!869209) b!5064488))

(assert (= (and d!1632234 (not c!869209)) b!5064489))

(assert (= (and b!5064489 c!869210) b!5064490))

(assert (= (and b!5064489 (not c!869210)) b!5064491))

(declare-fun m!6105094 () Bool)

(assert (=> b!5064491 m!6105094))

(declare-fun m!6105096 () Bool)

(assert (=> b!5064491 m!6105096))

(assert (=> b!5064491 m!6105094))

(assert (=> b!5064491 m!6105096))

(declare-fun m!6105098 () Bool)

(assert (=> b!5064491 m!6105098))

(declare-fun m!6105100 () Bool)

(assert (=> b!5064490 m!6105100))

(assert (=> b!5064262 d!1632234))

(declare-fun d!1632236 () Bool)

(declare-fun c!869211 () Bool)

(assert (=> d!1632236 (= c!869211 ((_ is Empty!15562) (right!43143 lt!2088474)))))

(declare-fun e!3160722 () List!58556)

(assert (=> d!1632236 (= (list!18985 (right!43143 lt!2088474)) e!3160722)))

(declare-fun b!5064495 () Bool)

(declare-fun e!3160723 () List!58556)

(assert (=> b!5064495 (= e!3160723 (++!12784 (list!18985 (left!42813 (right!43143 lt!2088474))) (list!18985 (right!43143 (right!43143 lt!2088474)))))))

(declare-fun b!5064492 () Bool)

(assert (=> b!5064492 (= e!3160722 Nil!58432)))

(declare-fun b!5064494 () Bool)

(assert (=> b!5064494 (= e!3160723 (list!18986 (xs!18906 (right!43143 lt!2088474))))))

(declare-fun b!5064493 () Bool)

(assert (=> b!5064493 (= e!3160722 e!3160723)))

(declare-fun c!869212 () Bool)

(assert (=> b!5064493 (= c!869212 ((_ is Leaf!25848) (right!43143 lt!2088474)))))

(assert (= (and d!1632236 c!869211) b!5064492))

(assert (= (and d!1632236 (not c!869211)) b!5064493))

(assert (= (and b!5064493 c!869212) b!5064494))

(assert (= (and b!5064493 (not c!869212)) b!5064495))

(declare-fun m!6105102 () Bool)

(assert (=> b!5064495 m!6105102))

(declare-fun m!6105104 () Bool)

(assert (=> b!5064495 m!6105104))

(assert (=> b!5064495 m!6105102))

(assert (=> b!5064495 m!6105104))

(declare-fun m!6105106 () Bool)

(assert (=> b!5064495 m!6105106))

(declare-fun m!6105108 () Bool)

(assert (=> b!5064494 m!6105108))

(assert (=> b!5064262 d!1632236))

(declare-fun d!1632238 () Bool)

(assert (=> d!1632238 (= (inv!77545 (xs!18906 (left!42813 (left!42813 xs!286)))) (<= (size!39071 (innerList!15650 (xs!18906 (left!42813 (left!42813 xs!286))))) 2147483647))))

(declare-fun bs!1189813 () Bool)

(assert (= bs!1189813 d!1632238))

(declare-fun m!6105110 () Bool)

(assert (=> bs!1189813 m!6105110))

(assert (=> b!5064299 d!1632238))

(declare-fun d!1632240 () Bool)

(assert (=> d!1632240 (= (height!2139 (left!42813 (right!43143 (right!43143 xs!286)))) (ite ((_ is Empty!15562) (left!42813 (right!43143 (right!43143 xs!286)))) 0 (ite ((_ is Leaf!25848) (left!42813 (right!43143 (right!43143 xs!286)))) 1 (cheight!15773 (left!42813 (right!43143 (right!43143 xs!286)))))))))

(assert (=> b!5063784 d!1632240))

(declare-fun d!1632242 () Bool)

(assert (=> d!1632242 (= (height!2139 (right!43143 (right!43143 (right!43143 xs!286)))) (ite ((_ is Empty!15562) (right!43143 (right!43143 (right!43143 xs!286)))) 0 (ite ((_ is Leaf!25848) (right!43143 (right!43143 (right!43143 xs!286)))) 1 (cheight!15773 (right!43143 (right!43143 (right!43143 xs!286)))))))))

(assert (=> b!5063784 d!1632242))

(assert (=> d!1631874 d!1632118))

(assert (=> d!1631874 d!1632006))

(declare-fun b!5064496 () Bool)

(declare-fun res!2156452 () Bool)

(declare-fun e!3160724 () Bool)

(assert (=> b!5064496 (=> (not res!2156452) (not e!3160724))))

(assert (=> b!5064496 (= res!2156452 (not (isEmpty!31626 (left!42813 (right!43143 (left!42813 lt!2088442))))))))

(declare-fun b!5064497 () Bool)

(declare-fun res!2156455 () Bool)

(assert (=> b!5064497 (=> (not res!2156455) (not e!3160724))))

(assert (=> b!5064497 (= res!2156455 (<= (- (height!2139 (left!42813 (right!43143 (left!42813 lt!2088442)))) (height!2139 (right!43143 (right!43143 (left!42813 lt!2088442))))) 1))))

(declare-fun b!5064498 () Bool)

(declare-fun e!3160725 () Bool)

(assert (=> b!5064498 (= e!3160725 e!3160724)))

(declare-fun res!2156454 () Bool)

(assert (=> b!5064498 (=> (not res!2156454) (not e!3160724))))

(assert (=> b!5064498 (= res!2156454 (<= (- 1) (- (height!2139 (left!42813 (right!43143 (left!42813 lt!2088442)))) (height!2139 (right!43143 (right!43143 (left!42813 lt!2088442)))))))))

(declare-fun d!1632244 () Bool)

(declare-fun res!2156451 () Bool)

(assert (=> d!1632244 (=> res!2156451 e!3160725)))

(assert (=> d!1632244 (= res!2156451 (not ((_ is Node!15562) (right!43143 (left!42813 lt!2088442)))))))

(assert (=> d!1632244 (= (isBalanced!4424 (right!43143 (left!42813 lt!2088442))) e!3160725)))

(declare-fun b!5064499 () Bool)

(assert (=> b!5064499 (= e!3160724 (not (isEmpty!31626 (right!43143 (right!43143 (left!42813 lt!2088442))))))))

(declare-fun b!5064500 () Bool)

(declare-fun res!2156450 () Bool)

(assert (=> b!5064500 (=> (not res!2156450) (not e!3160724))))

(assert (=> b!5064500 (= res!2156450 (isBalanced!4424 (left!42813 (right!43143 (left!42813 lt!2088442)))))))

(declare-fun b!5064501 () Bool)

(declare-fun res!2156453 () Bool)

(assert (=> b!5064501 (=> (not res!2156453) (not e!3160724))))

(assert (=> b!5064501 (= res!2156453 (isBalanced!4424 (right!43143 (right!43143 (left!42813 lt!2088442)))))))

(assert (= (and d!1632244 (not res!2156451)) b!5064498))

(assert (= (and b!5064498 res!2156454) b!5064497))

(assert (= (and b!5064497 res!2156455) b!5064500))

(assert (= (and b!5064500 res!2156450) b!5064501))

(assert (= (and b!5064501 res!2156453) b!5064496))

(assert (= (and b!5064496 res!2156452) b!5064499))

(declare-fun m!6105112 () Bool)

(assert (=> b!5064500 m!6105112))

(declare-fun m!6105114 () Bool)

(assert (=> b!5064499 m!6105114))

(declare-fun m!6105116 () Bool)

(assert (=> b!5064496 m!6105116))

(declare-fun m!6105118 () Bool)

(assert (=> b!5064497 m!6105118))

(declare-fun m!6105120 () Bool)

(assert (=> b!5064497 m!6105120))

(declare-fun m!6105122 () Bool)

(assert (=> b!5064501 m!6105122))

(assert (=> b!5064498 m!6105118))

(assert (=> b!5064498 m!6105120))

(assert (=> b!5063878 d!1632244))

(assert (=> bm!352767 d!1631810))

(assert (=> b!5064287 d!1631766))

(declare-fun d!1632246 () Bool)

(assert (=> d!1632246 (= (height!2139 (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678))) (ite ((_ is Empty!15562) (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678))) 0 (ite ((_ is Leaf!25848) (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678))) 1 (cheight!15773 (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678))))))))

(assert (=> b!5063793 d!1632246))

(declare-fun lt!2088603 () Int)

(declare-fun d!1632248 () Bool)

(assert (=> d!1632248 (= lt!2088603 (size!39071 (list!18985 (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678)))))))

(assert (=> d!1632248 (= lt!2088603 (ite ((_ is Empty!15562) (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678))) 0 (ite ((_ is Leaf!25848) (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678))) (csize!31355 (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678))) (csize!31354 (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678))))))))

(assert (=> d!1632248 (= (size!39073 (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678))) lt!2088603)))

(declare-fun bs!1189814 () Bool)

(assert (= bs!1189814 d!1632248))

(assert (=> bs!1189814 m!6103728))

(assert (=> bs!1189814 m!6103728))

(assert (=> bs!1189814 m!6104954))

(assert (=> b!5063793 d!1632248))

(declare-fun d!1632250 () Bool)

(assert (=> d!1632250 (= (height!2139 (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476)))) (ite ((_ is Empty!15562) (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476)))) 0 (ite ((_ is Leaf!25848) (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476)))) 1 (cheight!15773 (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476)))))))))

(assert (=> b!5063793 d!1632250))

(declare-fun d!1632252 () Bool)

(assert (=> d!1632252 (= (max!0 (height!2139 (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476)))) (height!2139 (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678)))) (ite (< (height!2139 (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476)))) (height!2139 (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678)))) (height!2139 (ite c!868975 (ite c!868978 call!352671 (ite c!868976 call!352682 lt!2088475)) (ite (or c!868977 c!868973) (right!43143 ys!41) call!352678))) (height!2139 (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476))))))))

(assert (=> b!5063793 d!1632252))

(declare-fun d!1632254 () Bool)

(declare-fun lt!2088604 () Int)

(assert (=> d!1632254 (= lt!2088604 (size!39071 (list!18985 (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476))))))))

(assert (=> d!1632254 (= lt!2088604 (ite ((_ is Empty!15562) (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476)))) 0 (ite ((_ is Leaf!25848) (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476)))) (csize!31355 (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476)))) (csize!31354 (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476)))))))))

(assert (=> d!1632254 (= (size!39073 (ite c!868975 (ite (or c!868978 c!868976) (left!42813 (right!43143 (right!43143 xs!286))) call!352682) (ite c!868977 call!352685 (ite c!868973 call!352678 lt!2088476)))) lt!2088604)))

(declare-fun bs!1189815 () Bool)

(assert (= bs!1189815 d!1632254))

(assert (=> bs!1189815 m!6103724))

(assert (=> bs!1189815 m!6103724))

(assert (=> bs!1189815 m!6104952))

(assert (=> b!5063793 d!1632254))

(declare-fun d!1632256 () Bool)

(assert (=> d!1632256 (= (height!2139 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) (ite ((_ is Empty!15562) (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) 0 (ite ((_ is Leaf!25848) (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) 1 (cheight!15773 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))))

(assert (=> b!5063816 d!1632256))

(declare-fun d!1632258 () Bool)

(assert (=> d!1632258 (= (height!2139 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (ite ((_ is Empty!15562) (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) 0 (ite ((_ is Leaf!25848) (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) 1 (cheight!15773 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))))))

(assert (=> b!5063816 d!1632258))

(declare-fun d!1632260 () Bool)

(declare-fun e!3160727 () Bool)

(assert (=> d!1632260 e!3160727))

(declare-fun res!2156456 () Bool)

(assert (=> d!1632260 (=> (not res!2156456) (not e!3160727))))

(declare-fun lt!2088605 () List!58556)

(assert (=> d!1632260 (= res!2156456 (= (content!10415 lt!2088605) ((_ map or) (content!10415 (list!18985 (right!43143 (left!42813 ys!41)))) (content!10415 (list!18985 (right!43143 ys!41))))))))

(declare-fun e!3160726 () List!58556)

(assert (=> d!1632260 (= lt!2088605 e!3160726)))

(declare-fun c!869213 () Bool)

(assert (=> d!1632260 (= c!869213 ((_ is Nil!58432) (list!18985 (right!43143 (left!42813 ys!41)))))))

(assert (=> d!1632260 (= (++!12784 (list!18985 (right!43143 (left!42813 ys!41))) (list!18985 (right!43143 ys!41))) lt!2088605)))

(declare-fun b!5064503 () Bool)

(assert (=> b!5064503 (= e!3160726 (Cons!58432 (h!64880 (list!18985 (right!43143 (left!42813 ys!41)))) (++!12784 (t!371279 (list!18985 (right!43143 (left!42813 ys!41)))) (list!18985 (right!43143 ys!41)))))))

(declare-fun b!5064505 () Bool)

(assert (=> b!5064505 (= e!3160727 (or (not (= (list!18985 (right!43143 ys!41)) Nil!58432)) (= lt!2088605 (list!18985 (right!43143 (left!42813 ys!41))))))))

(declare-fun b!5064502 () Bool)

(assert (=> b!5064502 (= e!3160726 (list!18985 (right!43143 ys!41)))))

(declare-fun b!5064504 () Bool)

(declare-fun res!2156457 () Bool)

(assert (=> b!5064504 (=> (not res!2156457) (not e!3160727))))

(assert (=> b!5064504 (= res!2156457 (= (size!39071 lt!2088605) (+ (size!39071 (list!18985 (right!43143 (left!42813 ys!41)))) (size!39071 (list!18985 (right!43143 ys!41))))))))

(assert (= (and d!1632260 c!869213) b!5064502))

(assert (= (and d!1632260 (not c!869213)) b!5064503))

(assert (= (and d!1632260 res!2156456) b!5064504))

(assert (= (and b!5064504 res!2156457) b!5064505))

(declare-fun m!6105124 () Bool)

(assert (=> d!1632260 m!6105124))

(assert (=> d!1632260 m!6103444))

(assert (=> d!1632260 m!6104862))

(assert (=> d!1632260 m!6103192))

(assert (=> d!1632260 m!6103848))

(assert (=> b!5064503 m!6103192))

(declare-fun m!6105126 () Bool)

(assert (=> b!5064503 m!6105126))

(declare-fun m!6105128 () Bool)

(assert (=> b!5064504 m!6105128))

(assert (=> b!5064504 m!6103444))

(assert (=> b!5064504 m!6104870))

(assert (=> b!5064504 m!6103192))

(assert (=> b!5064504 m!6103856))

(assert (=> bm!352747 d!1632260))

(declare-fun d!1632262 () Bool)

(assert (=> d!1632262 (= (list!18986 (xs!18906 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))) (innerList!15650 (xs!18906 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))))))

(assert (=> b!5064280 d!1632262))

(declare-fun d!1632264 () Bool)

(declare-fun c!869214 () Bool)

(assert (=> d!1632264 (= c!869214 ((_ is Node!15562) (left!42813 (left!42813 (right!43143 xs!286)))))))

(declare-fun e!3160728 () Bool)

(assert (=> d!1632264 (= (inv!77544 (left!42813 (left!42813 (right!43143 xs!286)))) e!3160728)))

(declare-fun b!5064506 () Bool)

(assert (=> b!5064506 (= e!3160728 (inv!77548 (left!42813 (left!42813 (right!43143 xs!286)))))))

(declare-fun b!5064507 () Bool)

(declare-fun e!3160729 () Bool)

(assert (=> b!5064507 (= e!3160728 e!3160729)))

(declare-fun res!2156458 () Bool)

(assert (=> b!5064507 (= res!2156458 (not ((_ is Leaf!25848) (left!42813 (left!42813 (right!43143 xs!286))))))))

(assert (=> b!5064507 (=> res!2156458 e!3160729)))

(declare-fun b!5064508 () Bool)

(assert (=> b!5064508 (= e!3160729 (inv!77549 (left!42813 (left!42813 (right!43143 xs!286)))))))

(assert (= (and d!1632264 c!869214) b!5064506))

(assert (= (and d!1632264 (not c!869214)) b!5064507))

(assert (= (and b!5064507 (not res!2156458)) b!5064508))

(declare-fun m!6105130 () Bool)

(assert (=> b!5064506 m!6105130))

(declare-fun m!6105132 () Bool)

(assert (=> b!5064508 m!6105132))

(assert (=> b!5064319 d!1632264))

(declare-fun d!1632266 () Bool)

(declare-fun c!869215 () Bool)

(assert (=> d!1632266 (= c!869215 ((_ is Node!15562) (right!43143 (left!42813 (right!43143 xs!286)))))))

(declare-fun e!3160730 () Bool)

(assert (=> d!1632266 (= (inv!77544 (right!43143 (left!42813 (right!43143 xs!286)))) e!3160730)))

(declare-fun b!5064509 () Bool)

(assert (=> b!5064509 (= e!3160730 (inv!77548 (right!43143 (left!42813 (right!43143 xs!286)))))))

(declare-fun b!5064510 () Bool)

(declare-fun e!3160731 () Bool)

(assert (=> b!5064510 (= e!3160730 e!3160731)))

(declare-fun res!2156459 () Bool)

(assert (=> b!5064510 (= res!2156459 (not ((_ is Leaf!25848) (right!43143 (left!42813 (right!43143 xs!286))))))))

(assert (=> b!5064510 (=> res!2156459 e!3160731)))

(declare-fun b!5064511 () Bool)

(assert (=> b!5064511 (= e!3160731 (inv!77549 (right!43143 (left!42813 (right!43143 xs!286)))))))

(assert (= (and d!1632266 c!869215) b!5064509))

(assert (= (and d!1632266 (not c!869215)) b!5064510))

(assert (= (and b!5064510 (not res!2156459)) b!5064511))

(declare-fun m!6105134 () Bool)

(assert (=> b!5064509 m!6105134))

(declare-fun m!6105136 () Bool)

(assert (=> b!5064511 m!6105136))

(assert (=> b!5064319 d!1632266))

(declare-fun d!1632268 () Bool)

(declare-fun lt!2088606 () Int)

(assert (=> d!1632268 (>= lt!2088606 0)))

(declare-fun e!3160732 () Int)

(assert (=> d!1632268 (= lt!2088606 e!3160732)))

(declare-fun c!869216 () Bool)

(assert (=> d!1632268 (= c!869216 ((_ is Nil!58432) (innerList!15650 (xs!18906 (left!42813 xs!286)))))))

(assert (=> d!1632268 (= (size!39071 (innerList!15650 (xs!18906 (left!42813 xs!286)))) lt!2088606)))

(declare-fun b!5064512 () Bool)

(assert (=> b!5064512 (= e!3160732 0)))

(declare-fun b!5064513 () Bool)

(assert (=> b!5064513 (= e!3160732 (+ 1 (size!39071 (t!371279 (innerList!15650 (xs!18906 (left!42813 xs!286)))))))))

(assert (= (and d!1632268 c!869216) b!5064512))

(assert (= (and d!1632268 (not c!869216)) b!5064513))

(declare-fun m!6105138 () Bool)

(assert (=> b!5064513 m!6105138))

(assert (=> d!1631830 d!1632268))

(declare-fun d!1632270 () Bool)

(declare-fun e!3160734 () Bool)

(assert (=> d!1632270 e!3160734))

(declare-fun res!2156460 () Bool)

(assert (=> d!1632270 (=> (not res!2156460) (not e!3160734))))

(declare-fun lt!2088607 () List!58556)

(assert (=> d!1632270 (= res!2156460 (= (content!10415 lt!2088607) ((_ map or) (content!10415 (t!371279 (list!18985 xs!286))) (content!10415 (list!18985 (left!42813 (left!42813 ys!41)))))))))

(declare-fun e!3160733 () List!58556)

(assert (=> d!1632270 (= lt!2088607 e!3160733)))

(declare-fun c!869217 () Bool)

(assert (=> d!1632270 (= c!869217 ((_ is Nil!58432) (t!371279 (list!18985 xs!286))))))

(assert (=> d!1632270 (= (++!12784 (t!371279 (list!18985 xs!286)) (list!18985 (left!42813 (left!42813 ys!41)))) lt!2088607)))

(declare-fun b!5064515 () Bool)

(assert (=> b!5064515 (= e!3160733 (Cons!58432 (h!64880 (t!371279 (list!18985 xs!286))) (++!12784 (t!371279 (t!371279 (list!18985 xs!286))) (list!18985 (left!42813 (left!42813 ys!41))))))))

(declare-fun b!5064517 () Bool)

(assert (=> b!5064517 (= e!3160734 (or (not (= (list!18985 (left!42813 (left!42813 ys!41))) Nil!58432)) (= lt!2088607 (t!371279 (list!18985 xs!286)))))))

(declare-fun b!5064514 () Bool)

(assert (=> b!5064514 (= e!3160733 (list!18985 (left!42813 (left!42813 ys!41))))))

(declare-fun b!5064516 () Bool)

(declare-fun res!2156461 () Bool)

(assert (=> b!5064516 (=> (not res!2156461) (not e!3160734))))

(assert (=> b!5064516 (= res!2156461 (= (size!39071 lt!2088607) (+ (size!39071 (t!371279 (list!18985 xs!286))) (size!39071 (list!18985 (left!42813 (left!42813 ys!41)))))))))

(assert (= (and d!1632270 c!869217) b!5064514))

(assert (= (and d!1632270 (not c!869217)) b!5064515))

(assert (= (and d!1632270 res!2156460) b!5064516))

(assert (= (and b!5064516 res!2156461) b!5064517))

(declare-fun m!6105140 () Bool)

(assert (=> d!1632270 m!6105140))

(assert (=> d!1632270 m!6103914))

(assert (=> d!1632270 m!6103442))

(assert (=> d!1632270 m!6104104))

(assert (=> b!5064515 m!6103442))

(declare-fun m!6105142 () Bool)

(assert (=> b!5064515 m!6105142))

(declare-fun m!6105144 () Bool)

(assert (=> b!5064516 m!6105144))

(assert (=> b!5064516 m!6103920))

(assert (=> b!5064516 m!6103442))

(assert (=> b!5064516 m!6104110))

(assert (=> b!5063982 d!1632270))

(declare-fun e!3160739 () Bool)

(declare-fun b!5064518 () Bool)

(assert (=> b!5064518 (= e!3160739 (appendAssoc!300 (list!18985 (left!42813 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (list!18985 (left!42813 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (++!12784 (list!18985 (right!43143 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (list!18985 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))))

(declare-fun b!5064519 () Bool)

(declare-fun e!3160735 () Bool)

(assert (=> b!5064519 (= e!3160735 e!3160739)))

(declare-fun res!2156462 () Bool)

(assert (=> b!5064519 (=> (not res!2156462) (not e!3160739))))

(assert (=> b!5064519 (= res!2156462 (appendAssoc!300 (list!18985 (left!42813 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (list!18985 (right!43143 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (list!18985 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))))))

(declare-fun b!5064520 () Bool)

(declare-fun e!3160737 () Bool)

(declare-fun e!3160742 () Bool)

(assert (=> b!5064520 (= e!3160737 e!3160742)))

(declare-fun res!2156467 () Bool)

(assert (=> b!5064520 (=> (not res!2156467) (not e!3160742))))

(assert (=> b!5064520 (= res!2156467 (appendAssoc!300 (list!18985 (left!42813 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (list!18985 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (list!18985 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))))))

(declare-fun b!5064521 () Bool)

(declare-fun e!3160743 () Bool)

(declare-fun e!3160740 () Bool)

(assert (=> b!5064521 (= e!3160743 e!3160740)))

(declare-fun res!2156470 () Bool)

(assert (=> b!5064521 (=> (not res!2156470) (not e!3160740))))

(assert (=> b!5064521 (= res!2156470 (appendAssoc!300 (list!18985 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (list!18985 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))) (list!18985 (right!43143 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))))

(declare-fun b!5064522 () Bool)

(declare-fun e!3160738 () Bool)

(assert (=> b!5064522 (= e!3160740 e!3160738)))

(declare-fun res!2156465 () Bool)

(assert (=> b!5064522 (=> res!2156465 e!3160738)))

(assert (=> b!5064522 (= res!2156465 (not ((_ is Node!15562) (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))))

(declare-fun b!5064523 () Bool)

(declare-fun e!3160741 () Bool)

(assert (=> b!5064523 (= e!3160741 e!3160743)))

(declare-fun res!2156468 () Bool)

(assert (=> b!5064523 (=> res!2156468 e!3160743)))

(assert (=> b!5064523 (= res!2156468 (not ((_ is Node!15562) (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))))))

(declare-fun b!5064524 () Bool)

(assert (=> b!5064524 (= e!3160742 e!3160735)))

(declare-fun res!2156464 () Bool)

(assert (=> b!5064524 (=> res!2156464 e!3160735)))

(assert (=> b!5064524 (= res!2156464 (not ((_ is Node!15562) (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))))))

(declare-fun d!1632272 () Bool)

(assert (=> d!1632272 e!3160741))

(declare-fun res!2156466 () Bool)

(assert (=> d!1632272 (=> (not res!2156466) (not e!3160741))))

(assert (=> d!1632272 (= res!2156466 e!3160737)))

(declare-fun res!2156463 () Bool)

(assert (=> d!1632272 (=> res!2156463 e!3160737)))

(assert (=> d!1632272 (= res!2156463 (not ((_ is Node!15562) (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))))))

(assert (=> d!1632272 (= (appendAssocInst!908 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))) (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) true)))

(declare-fun b!5064525 () Bool)

(declare-fun e!3160736 () Bool)

(assert (=> b!5064525 (= e!3160738 e!3160736)))

(declare-fun res!2156469 () Bool)

(assert (=> b!5064525 (=> (not res!2156469) (not e!3160736))))

(assert (=> b!5064525 (= res!2156469 (appendAssoc!300 (list!18985 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (list!18985 (left!42813 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))) (list!18985 (right!43143 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))))))))

(declare-fun b!5064526 () Bool)

(assert (=> b!5064526 (= e!3160736 (appendAssoc!300 (++!12784 (list!18985 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (list!18985 (left!42813 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))))) (list!18985 (right!43143 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))) (list!18985 (right!43143 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))))

(assert (= (and d!1632272 (not res!2156463)) b!5064520))

(assert (= (and b!5064520 res!2156467) b!5064524))

(assert (= (and b!5064524 (not res!2156464)) b!5064519))

(assert (= (and b!5064519 res!2156462) b!5064518))

(assert (= (and d!1632272 res!2156466) b!5064523))

(assert (= (and b!5064523 (not res!2156468)) b!5064521))

(assert (= (and b!5064521 res!2156470) b!5064522))

(assert (= (and b!5064522 (not res!2156465)) b!5064525))

(assert (= (and b!5064525 res!2156469) b!5064526))

(assert (=> b!5064525 m!6103756))

(declare-fun m!6105146 () Bool)

(assert (=> b!5064525 m!6105146))

(declare-fun m!6105148 () Bool)

(assert (=> b!5064525 m!6105148))

(assert (=> b!5064525 m!6103756))

(assert (=> b!5064525 m!6105146))

(assert (=> b!5064525 m!6105148))

(declare-fun m!6105150 () Bool)

(assert (=> b!5064525 m!6105150))

(declare-fun m!6105152 () Bool)

(assert (=> b!5064519 m!6105152))

(declare-fun m!6105154 () Bool)

(assert (=> b!5064519 m!6105154))

(assert (=> b!5064519 m!6103758))

(assert (=> b!5064519 m!6105152))

(assert (=> b!5064519 m!6105154))

(assert (=> b!5064519 m!6103758))

(declare-fun m!6105156 () Bool)

(assert (=> b!5064519 m!6105156))

(assert (=> b!5064526 m!6103756))

(assert (=> b!5064526 m!6103756))

(assert (=> b!5064526 m!6105146))

(declare-fun m!6105158 () Bool)

(assert (=> b!5064526 m!6105158))

(declare-fun m!6105160 () Bool)

(assert (=> b!5064526 m!6105160))

(assert (=> b!5064526 m!6105158))

(assert (=> b!5064526 m!6105148))

(assert (=> b!5064526 m!6105160))

(declare-fun m!6105162 () Bool)

(assert (=> b!5064526 m!6105162))

(assert (=> b!5064526 m!6105148))

(assert (=> b!5064526 m!6105146))

(assert (=> b!5064518 m!6103758))

(assert (=> b!5064518 m!6105154))

(declare-fun m!6105164 () Bool)

(assert (=> b!5064518 m!6105164))

(assert (=> b!5064518 m!6105154))

(assert (=> b!5064518 m!6103758))

(declare-fun m!6105166 () Bool)

(assert (=> b!5064518 m!6105166))

(assert (=> b!5064518 m!6105152))

(assert (=> b!5064518 m!6105164))

(assert (=> b!5064518 m!6105152))

(assert (=> b!5064518 m!6105166))

(declare-fun m!6105168 () Bool)

(assert (=> b!5064518 m!6105168))

(assert (=> b!5064520 m!6105164))

(declare-fun m!6105170 () Bool)

(assert (=> b!5064520 m!6105170))

(assert (=> b!5064520 m!6103758))

(assert (=> b!5064520 m!6105164))

(assert (=> b!5064520 m!6105170))

(assert (=> b!5064520 m!6103758))

(declare-fun m!6105172 () Bool)

(assert (=> b!5064520 m!6105172))

(assert (=> b!5064521 m!6103756))

(declare-fun m!6105174 () Bool)

(assert (=> b!5064521 m!6105174))

(assert (=> b!5064521 m!6105160))

(assert (=> b!5064521 m!6103756))

(assert (=> b!5064521 m!6105174))

(assert (=> b!5064521 m!6105160))

(declare-fun m!6105176 () Bool)

(assert (=> b!5064521 m!6105176))

(assert (=> d!1631784 d!1632272))

(declare-fun b!5064527 () Bool)

(declare-fun res!2156473 () Bool)

(declare-fun e!3160744 () Bool)

(assert (=> b!5064527 (=> (not res!2156473) (not e!3160744))))

(assert (=> b!5064527 (= res!2156473 (not (isEmpty!31626 (left!42813 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))))))

(declare-fun b!5064528 () Bool)

(declare-fun res!2156476 () Bool)

(assert (=> b!5064528 (=> (not res!2156476) (not e!3160744))))

(assert (=> b!5064528 (= res!2156476 (<= (- (height!2139 (left!42813 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (height!2139 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) 1))))

(declare-fun b!5064529 () Bool)

(declare-fun e!3160745 () Bool)

(assert (=> b!5064529 (= e!3160745 e!3160744)))

(declare-fun res!2156475 () Bool)

(assert (=> b!5064529 (=> (not res!2156475) (not e!3160744))))

(assert (=> b!5064529 (= res!2156475 (<= (- 1) (- (height!2139 (left!42813 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (height!2139 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))))))))

(declare-fun d!1632274 () Bool)

(declare-fun res!2156472 () Bool)

(assert (=> d!1632274 (=> res!2156472 e!3160745)))

(assert (=> d!1632274 (= res!2156472 (not ((_ is Node!15562) (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))))))

(assert (=> d!1632274 (= (isBalanced!4424 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) e!3160745)))

(declare-fun b!5064530 () Bool)

(assert (=> b!5064530 (= e!3160744 (not (isEmpty!31626 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))))))

(declare-fun b!5064531 () Bool)

(declare-fun res!2156471 () Bool)

(assert (=> b!5064531 (=> (not res!2156471) (not e!3160744))))

(assert (=> b!5064531 (= res!2156471 (isBalanced!4424 (left!42813 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))))))

(declare-fun b!5064532 () Bool)

(declare-fun res!2156474 () Bool)

(assert (=> b!5064532 (=> (not res!2156474) (not e!3160744))))

(assert (=> b!5064532 (= res!2156474 (isBalanced!4424 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))))))

(assert (= (and d!1632274 (not res!2156472)) b!5064529))

(assert (= (and b!5064529 res!2156475) b!5064528))

(assert (= (and b!5064528 res!2156476) b!5064531))

(assert (= (and b!5064531 res!2156471) b!5064532))

(assert (= (and b!5064532 res!2156474) b!5064527))

(assert (= (and b!5064527 res!2156473) b!5064530))

(declare-fun m!6105178 () Bool)

(assert (=> b!5064531 m!6105178))

(declare-fun m!6105180 () Bool)

(assert (=> b!5064530 m!6105180))

(declare-fun m!6105182 () Bool)

(assert (=> b!5064527 m!6105182))

(declare-fun m!6105184 () Bool)

(assert (=> b!5064528 m!6105184))

(declare-fun m!6105186 () Bool)

(assert (=> b!5064528 m!6105186))

(declare-fun m!6105188 () Bool)

(assert (=> b!5064532 m!6105188))

(assert (=> b!5064529 m!6105184))

(assert (=> b!5064529 m!6105186))

(assert (=> d!1631784 d!1632274))

(declare-fun d!1632276 () Bool)

(assert (=> d!1632276 (= (height!2139 (left!42813 (right!43143 ys!41))) (ite ((_ is Empty!15562) (left!42813 (right!43143 ys!41))) 0 (ite ((_ is Leaf!25848) (left!42813 (right!43143 ys!41))) 1 (cheight!15773 (left!42813 (right!43143 ys!41))))))))

(assert (=> b!5063857 d!1632276))

(declare-fun d!1632278 () Bool)

(assert (=> d!1632278 (= (height!2139 (right!43143 (right!43143 ys!41))) (ite ((_ is Empty!15562) (right!43143 (right!43143 ys!41))) 0 (ite ((_ is Leaf!25848) (right!43143 (right!43143 ys!41))) 1 (cheight!15773 (right!43143 (right!43143 ys!41))))))))

(assert (=> b!5063857 d!1632278))

(declare-fun d!1632280 () Bool)

(declare-fun c!869218 () Bool)

(assert (=> d!1632280 (= c!869218 ((_ is Node!15562) (left!42813 (right!43143 (left!42813 ys!41)))))))

(declare-fun e!3160746 () Bool)

(assert (=> d!1632280 (= (inv!77544 (left!42813 (right!43143 (left!42813 ys!41)))) e!3160746)))

(declare-fun b!5064533 () Bool)

(assert (=> b!5064533 (= e!3160746 (inv!77548 (left!42813 (right!43143 (left!42813 ys!41)))))))

(declare-fun b!5064534 () Bool)

(declare-fun e!3160747 () Bool)

(assert (=> b!5064534 (= e!3160746 e!3160747)))

(declare-fun res!2156477 () Bool)

(assert (=> b!5064534 (= res!2156477 (not ((_ is Leaf!25848) (left!42813 (right!43143 (left!42813 ys!41))))))))

(assert (=> b!5064534 (=> res!2156477 e!3160747)))

(declare-fun b!5064535 () Bool)

(assert (=> b!5064535 (= e!3160747 (inv!77549 (left!42813 (right!43143 (left!42813 ys!41)))))))

(assert (= (and d!1632280 c!869218) b!5064533))

(assert (= (and d!1632280 (not c!869218)) b!5064534))

(assert (= (and b!5064534 (not res!2156477)) b!5064535))

(declare-fun m!6105190 () Bool)

(assert (=> b!5064533 m!6105190))

(declare-fun m!6105192 () Bool)

(assert (=> b!5064535 m!6105192))

(assert (=> b!5064315 d!1632280))

(declare-fun d!1632282 () Bool)

(declare-fun c!869219 () Bool)

(assert (=> d!1632282 (= c!869219 ((_ is Node!15562) (right!43143 (right!43143 (left!42813 ys!41)))))))

(declare-fun e!3160748 () Bool)

(assert (=> d!1632282 (= (inv!77544 (right!43143 (right!43143 (left!42813 ys!41)))) e!3160748)))

(declare-fun b!5064536 () Bool)

(assert (=> b!5064536 (= e!3160748 (inv!77548 (right!43143 (right!43143 (left!42813 ys!41)))))))

(declare-fun b!5064537 () Bool)

(declare-fun e!3160749 () Bool)

(assert (=> b!5064537 (= e!3160748 e!3160749)))

(declare-fun res!2156478 () Bool)

(assert (=> b!5064537 (= res!2156478 (not ((_ is Leaf!25848) (right!43143 (right!43143 (left!42813 ys!41))))))))

(assert (=> b!5064537 (=> res!2156478 e!3160749)))

(declare-fun b!5064538 () Bool)

(assert (=> b!5064538 (= e!3160749 (inv!77549 (right!43143 (right!43143 (left!42813 ys!41)))))))

(assert (= (and d!1632282 c!869219) b!5064536))

(assert (= (and d!1632282 (not c!869219)) b!5064537))

(assert (= (and b!5064537 (not res!2156478)) b!5064538))

(declare-fun m!6105194 () Bool)

(assert (=> b!5064536 m!6105194))

(declare-fun m!6105196 () Bool)

(assert (=> b!5064538 m!6105196))

(assert (=> b!5064315 d!1632282))

(declare-fun d!1632284 () Bool)

(declare-fun c!869220 () Bool)

(assert (=> d!1632284 (= c!869220 ((_ is Nil!58432) lt!2088517))))

(declare-fun e!3160750 () (InoxSet T!105104))

(assert (=> d!1632284 (= (content!10415 lt!2088517) e!3160750)))

(declare-fun b!5064539 () Bool)

(assert (=> b!5064539 (= e!3160750 ((as const (Array T!105104 Bool)) false))))

(declare-fun b!5064540 () Bool)

(assert (=> b!5064540 (= e!3160750 ((_ map or) (store ((as const (Array T!105104 Bool)) false) (h!64880 lt!2088517) true) (content!10415 (t!371279 lt!2088517))))))

(assert (= (and d!1632284 c!869220) b!5064539))

(assert (= (and d!1632284 (not c!869220)) b!5064540))

(declare-fun m!6105198 () Bool)

(assert (=> b!5064540 m!6105198))

(declare-fun m!6105200 () Bool)

(assert (=> b!5064540 m!6105200))

(assert (=> d!1631818 d!1632284))

(declare-fun d!1632286 () Bool)

(declare-fun c!869221 () Bool)

(assert (=> d!1632286 (= c!869221 ((_ is Nil!58432) (list!18985 (left!42813 lt!2088442))))))

(declare-fun e!3160751 () (InoxSet T!105104))

(assert (=> d!1632286 (= (content!10415 (list!18985 (left!42813 lt!2088442))) e!3160751)))

(declare-fun b!5064541 () Bool)

(assert (=> b!5064541 (= e!3160751 ((as const (Array T!105104 Bool)) false))))

(declare-fun b!5064542 () Bool)

(assert (=> b!5064542 (= e!3160751 ((_ map or) (store ((as const (Array T!105104 Bool)) false) (h!64880 (list!18985 (left!42813 lt!2088442))) true) (content!10415 (t!371279 (list!18985 (left!42813 lt!2088442))))))))

(assert (= (and d!1632286 c!869221) b!5064541))

(assert (= (and d!1632286 (not c!869221)) b!5064542))

(declare-fun m!6105202 () Bool)

(assert (=> b!5064542 m!6105202))

(declare-fun m!6105204 () Bool)

(assert (=> b!5064542 m!6105204))

(assert (=> d!1631818 d!1632286))

(declare-fun d!1632288 () Bool)

(declare-fun c!869222 () Bool)

(assert (=> d!1632288 (= c!869222 ((_ is Nil!58432) (list!18985 (right!43143 lt!2088442))))))

(declare-fun e!3160752 () (InoxSet T!105104))

(assert (=> d!1632288 (= (content!10415 (list!18985 (right!43143 lt!2088442))) e!3160752)))

(declare-fun b!5064543 () Bool)

(assert (=> b!5064543 (= e!3160752 ((as const (Array T!105104 Bool)) false))))

(declare-fun b!5064544 () Bool)

(assert (=> b!5064544 (= e!3160752 ((_ map or) (store ((as const (Array T!105104 Bool)) false) (h!64880 (list!18985 (right!43143 lt!2088442))) true) (content!10415 (t!371279 (list!18985 (right!43143 lt!2088442))))))))

(assert (= (and d!1632288 c!869222) b!5064543))

(assert (= (and d!1632288 (not c!869222)) b!5064544))

(declare-fun m!6105206 () Bool)

(assert (=> b!5064544 m!6105206))

(declare-fun m!6105208 () Bool)

(assert (=> b!5064544 m!6105208))

(assert (=> d!1631818 d!1632288))

(declare-fun d!1632290 () Bool)

(declare-fun lt!2088608 () Bool)

(assert (=> d!1632290 (= lt!2088608 (isEmpty!31628 (list!18985 (right!43143 lt!2088474))))))

(assert (=> d!1632290 (= lt!2088608 (= (size!39073 (right!43143 lt!2088474)) 0))))

(assert (=> d!1632290 (= (isEmpty!31626 (right!43143 lt!2088474)) lt!2088608)))

(declare-fun bs!1189816 () Bool)

(assert (= bs!1189816 d!1632290))

(assert (=> bs!1189816 m!6104606))

(assert (=> bs!1189816 m!6104606))

(declare-fun m!6105210 () Bool)

(assert (=> bs!1189816 m!6105210))

(declare-fun m!6105212 () Bool)

(assert (=> bs!1189816 m!6105212))

(assert (=> b!5064140 d!1632290))

(assert (=> b!5063783 d!1632240))

(assert (=> b!5063783 d!1632242))

(declare-fun d!1632292 () Bool)

(declare-fun lt!2088609 () Int)

(assert (=> d!1632292 (>= lt!2088609 0)))

(declare-fun e!3160753 () Int)

(assert (=> d!1632292 (= lt!2088609 e!3160753)))

(declare-fun c!869223 () Bool)

(assert (=> d!1632292 (= c!869223 ((_ is Nil!58432) (t!371279 (innerList!15650 (xs!18906 ys!41)))))))

(assert (=> d!1632292 (= (size!39071 (t!371279 (innerList!15650 (xs!18906 ys!41)))) lt!2088609)))

(declare-fun b!5064545 () Bool)

(assert (=> b!5064545 (= e!3160753 0)))

(declare-fun b!5064546 () Bool)

(assert (=> b!5064546 (= e!3160753 (+ 1 (size!39071 (t!371279 (t!371279 (innerList!15650 (xs!18906 ys!41)))))))))

(assert (= (and d!1632292 c!869223) b!5064545))

(assert (= (and d!1632292 (not c!869223)) b!5064546))

(declare-fun m!6105214 () Bool)

(assert (=> b!5064546 m!6105214))

(assert (=> b!5064184 d!1632292))

(declare-fun d!1632294 () Bool)

(declare-fun res!2156479 () Bool)

(declare-fun e!3160754 () Bool)

(assert (=> d!1632294 (=> (not res!2156479) (not e!3160754))))

(assert (=> d!1632294 (= res!2156479 (<= (size!39071 (list!18986 (xs!18906 (right!43143 (right!43143 xs!286))))) 512))))

(assert (=> d!1632294 (= (inv!77549 (right!43143 (right!43143 xs!286))) e!3160754)))

(declare-fun b!5064547 () Bool)

(declare-fun res!2156480 () Bool)

(assert (=> b!5064547 (=> (not res!2156480) (not e!3160754))))

(assert (=> b!5064547 (= res!2156480 (= (csize!31355 (right!43143 (right!43143 xs!286))) (size!39071 (list!18986 (xs!18906 (right!43143 (right!43143 xs!286)))))))))

(declare-fun b!5064548 () Bool)

(assert (=> b!5064548 (= e!3160754 (and (> (csize!31355 (right!43143 (right!43143 xs!286))) 0) (<= (csize!31355 (right!43143 (right!43143 xs!286))) 512)))))

(assert (= (and d!1632294 res!2156479) b!5064547))

(assert (= (and b!5064547 res!2156480) b!5064548))

(assert (=> d!1632294 m!6103990))

(assert (=> d!1632294 m!6103990))

(declare-fun m!6105216 () Bool)

(assert (=> d!1632294 m!6105216))

(assert (=> b!5064547 m!6103990))

(assert (=> b!5064547 m!6103990))

(assert (=> b!5064547 m!6105216))

(assert (=> b!5063854 d!1632294))

(declare-fun d!1632296 () Bool)

(declare-fun lt!2088610 () Int)

(assert (=> d!1632296 (>= lt!2088610 0)))

(declare-fun e!3160755 () Int)

(assert (=> d!1632296 (= lt!2088610 e!3160755)))

(declare-fun c!869224 () Bool)

(assert (=> d!1632296 (= c!869224 ((_ is Nil!58432) (innerList!15650 (xs!18906 (left!42813 ys!41)))))))

(assert (=> d!1632296 (= (size!39071 (innerList!15650 (xs!18906 (left!42813 ys!41)))) lt!2088610)))

(declare-fun b!5064549 () Bool)

(assert (=> b!5064549 (= e!3160755 0)))

(declare-fun b!5064550 () Bool)

(assert (=> b!5064550 (= e!3160755 (+ 1 (size!39071 (t!371279 (innerList!15650 (xs!18906 (left!42813 ys!41)))))))))

(assert (= (and d!1632296 c!869224) b!5064549))

(assert (= (and d!1632296 (not c!869224)) b!5064550))

(declare-fun m!6105218 () Bool)

(assert (=> b!5064550 m!6105218))

(assert (=> d!1632078 d!1632296))

(declare-fun d!1632298 () Bool)

(assert (=> d!1632298 (= (list!18986 (xs!18906 lt!2088474)) (innerList!15650 (xs!18906 lt!2088474)))))

(assert (=> b!5064261 d!1632298))

(declare-fun d!1632300 () Bool)

(declare-fun c!869225 () Bool)

(assert (=> d!1632300 (= c!869225 ((_ is Node!15562) (left!42813 (right!43143 (right!43143 ys!41)))))))

(declare-fun e!3160756 () Bool)

(assert (=> d!1632300 (= (inv!77544 (left!42813 (right!43143 (right!43143 ys!41)))) e!3160756)))

(declare-fun b!5064551 () Bool)

(assert (=> b!5064551 (= e!3160756 (inv!77548 (left!42813 (right!43143 (right!43143 ys!41)))))))

(declare-fun b!5064552 () Bool)

(declare-fun e!3160757 () Bool)

(assert (=> b!5064552 (= e!3160756 e!3160757)))

(declare-fun res!2156481 () Bool)

(assert (=> b!5064552 (= res!2156481 (not ((_ is Leaf!25848) (left!42813 (right!43143 (right!43143 ys!41))))))))

(assert (=> b!5064552 (=> res!2156481 e!3160757)))

(declare-fun b!5064553 () Bool)

(assert (=> b!5064553 (= e!3160757 (inv!77549 (left!42813 (right!43143 (right!43143 ys!41)))))))

(assert (= (and d!1632300 c!869225) b!5064551))

(assert (= (and d!1632300 (not c!869225)) b!5064552))

(assert (= (and b!5064552 (not res!2156481)) b!5064553))

(declare-fun m!6105220 () Bool)

(assert (=> b!5064551 m!6105220))

(declare-fun m!6105222 () Bool)

(assert (=> b!5064553 m!6105222))

(assert (=> b!5064307 d!1632300))

(declare-fun d!1632302 () Bool)

(declare-fun c!869226 () Bool)

(assert (=> d!1632302 (= c!869226 ((_ is Node!15562) (right!43143 (right!43143 (right!43143 ys!41)))))))

(declare-fun e!3160758 () Bool)

(assert (=> d!1632302 (= (inv!77544 (right!43143 (right!43143 (right!43143 ys!41)))) e!3160758)))

(declare-fun b!5064554 () Bool)

(assert (=> b!5064554 (= e!3160758 (inv!77548 (right!43143 (right!43143 (right!43143 ys!41)))))))

(declare-fun b!5064555 () Bool)

(declare-fun e!3160759 () Bool)

(assert (=> b!5064555 (= e!3160758 e!3160759)))

(declare-fun res!2156482 () Bool)

(assert (=> b!5064555 (= res!2156482 (not ((_ is Leaf!25848) (right!43143 (right!43143 (right!43143 ys!41))))))))

(assert (=> b!5064555 (=> res!2156482 e!3160759)))

(declare-fun b!5064556 () Bool)

(assert (=> b!5064556 (= e!3160759 (inv!77549 (right!43143 (right!43143 (right!43143 ys!41)))))))

(assert (= (and d!1632302 c!869226) b!5064554))

(assert (= (and d!1632302 (not c!869226)) b!5064555))

(assert (= (and b!5064555 (not res!2156482)) b!5064556))

(declare-fun m!6105224 () Bool)

(assert (=> b!5064554 m!6105224))

(declare-fun m!6105226 () Bool)

(assert (=> b!5064556 m!6105226))

(assert (=> b!5064307 d!1632302))

(declare-fun d!1632304 () Bool)

(assert (=> d!1632304 (= (list!18986 (xs!18906 lt!2088445)) (innerList!15650 (xs!18906 lt!2088445)))))

(assert (=> b!5064164 d!1632304))

(declare-fun d!1632306 () Bool)

(declare-fun e!3160761 () Bool)

(assert (=> d!1632306 e!3160761))

(declare-fun res!2156483 () Bool)

(assert (=> d!1632306 (=> (not res!2156483) (not e!3160761))))

(declare-fun lt!2088611 () List!58556)

(assert (=> d!1632306 (= res!2156483 (= (content!10415 lt!2088611) ((_ map or) (content!10415 (list!18985 (left!42813 (right!43143 xs!286)))) (content!10415 (list!18985 (right!43143 (right!43143 xs!286)))))))))

(declare-fun e!3160760 () List!58556)

(assert (=> d!1632306 (= lt!2088611 e!3160760)))

(declare-fun c!869227 () Bool)

(assert (=> d!1632306 (= c!869227 ((_ is Nil!58432) (list!18985 (left!42813 (right!43143 xs!286)))))))

(assert (=> d!1632306 (= (++!12784 (list!18985 (left!42813 (right!43143 xs!286))) (list!18985 (right!43143 (right!43143 xs!286)))) lt!2088611)))

(declare-fun b!5064558 () Bool)

(assert (=> b!5064558 (= e!3160760 (Cons!58432 (h!64880 (list!18985 (left!42813 (right!43143 xs!286)))) (++!12784 (t!371279 (list!18985 (left!42813 (right!43143 xs!286)))) (list!18985 (right!43143 (right!43143 xs!286))))))))

(declare-fun b!5064560 () Bool)

(assert (=> b!5064560 (= e!3160761 (or (not (= (list!18985 (right!43143 (right!43143 xs!286))) Nil!58432)) (= lt!2088611 (list!18985 (left!42813 (right!43143 xs!286))))))))

(declare-fun b!5064557 () Bool)

(assert (=> b!5064557 (= e!3160760 (list!18985 (right!43143 (right!43143 xs!286))))))

(declare-fun b!5064559 () Bool)

(declare-fun res!2156484 () Bool)

(assert (=> b!5064559 (=> (not res!2156484) (not e!3160761))))

(assert (=> b!5064559 (= res!2156484 (= (size!39071 lt!2088611) (+ (size!39071 (list!18985 (left!42813 (right!43143 xs!286)))) (size!39071 (list!18985 (right!43143 (right!43143 xs!286)))))))))

(assert (= (and d!1632306 c!869227) b!5064557))

(assert (= (and d!1632306 (not c!869227)) b!5064558))

(assert (= (and d!1632306 res!2156483) b!5064559))

(assert (= (and b!5064559 res!2156484) b!5064560))

(declare-fun m!6105228 () Bool)

(assert (=> d!1632306 m!6105228))

(assert (=> d!1632306 m!6103448))

(assert (=> d!1632306 m!6104420))

(assert (=> d!1632306 m!6103364))

(assert (=> d!1632306 m!6104022))

(assert (=> b!5064558 m!6103364))

(declare-fun m!6105230 () Bool)

(assert (=> b!5064558 m!6105230))

(declare-fun m!6105232 () Bool)

(assert (=> b!5064559 m!6105232))

(assert (=> b!5064559 m!6103448))

(assert (=> b!5064559 m!6104056))

(assert (=> b!5064559 m!6103364))

(assert (=> b!5064559 m!6104034))

(assert (=> bm!352772 d!1632306))

(declare-fun d!1632308 () Bool)

(assert (=> d!1632308 (= (max!0 (height!2139 (left!42813 xs!286)) (height!2139 (right!43143 xs!286))) (ite (< (height!2139 (left!42813 xs!286)) (height!2139 (right!43143 xs!286))) (height!2139 (right!43143 xs!286)) (height!2139 (left!42813 xs!286))))))

(assert (=> b!5064264 d!1632308))

(assert (=> b!5064264 d!1631598))

(assert (=> b!5064264 d!1631600))

(declare-fun d!1632310 () Bool)

(declare-fun lt!2088612 () Int)

(assert (=> d!1632310 (>= lt!2088612 0)))

(declare-fun e!3160762 () Int)

(assert (=> d!1632310 (= lt!2088612 e!3160762)))

(declare-fun c!869228 () Bool)

(assert (=> d!1632310 (= c!869228 ((_ is Nil!58432) (list!18985 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))))))

(assert (=> d!1632310 (= (size!39071 (list!18985 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))) lt!2088612)))

(declare-fun b!5064561 () Bool)

(assert (=> b!5064561 (= e!3160762 0)))

(declare-fun b!5064562 () Bool)

(assert (=> b!5064562 (= e!3160762 (+ 1 (size!39071 (t!371279 (list!18985 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))))))))

(assert (= (and d!1632310 c!869228) b!5064561))

(assert (= (and d!1632310 (not c!869228)) b!5064562))

(declare-fun m!6105234 () Bool)

(assert (=> b!5064562 m!6105234))

(assert (=> d!1631772 d!1632310))

(assert (=> d!1631772 d!1632094))

(declare-fun b!5064563 () Bool)

(declare-fun res!2156487 () Bool)

(declare-fun e!3160763 () Bool)

(assert (=> b!5064563 (=> (not res!2156487) (not e!3160763))))

(assert (=> b!5064563 (= res!2156487 (not (isEmpty!31626 (left!42813 (left!42813 (right!43143 lt!2088442))))))))

(declare-fun b!5064564 () Bool)

(declare-fun res!2156490 () Bool)

(assert (=> b!5064564 (=> (not res!2156490) (not e!3160763))))

(assert (=> b!5064564 (= res!2156490 (<= (- (height!2139 (left!42813 (left!42813 (right!43143 lt!2088442)))) (height!2139 (right!43143 (left!42813 (right!43143 lt!2088442))))) 1))))

(declare-fun b!5064565 () Bool)

(declare-fun e!3160764 () Bool)

(assert (=> b!5064565 (= e!3160764 e!3160763)))

(declare-fun res!2156489 () Bool)

(assert (=> b!5064565 (=> (not res!2156489) (not e!3160763))))

(assert (=> b!5064565 (= res!2156489 (<= (- 1) (- (height!2139 (left!42813 (left!42813 (right!43143 lt!2088442)))) (height!2139 (right!43143 (left!42813 (right!43143 lt!2088442)))))))))

(declare-fun d!1632312 () Bool)

(declare-fun res!2156486 () Bool)

(assert (=> d!1632312 (=> res!2156486 e!3160764)))

(assert (=> d!1632312 (= res!2156486 (not ((_ is Node!15562) (left!42813 (right!43143 lt!2088442)))))))

(assert (=> d!1632312 (= (isBalanced!4424 (left!42813 (right!43143 lt!2088442))) e!3160764)))

(declare-fun b!5064566 () Bool)

(assert (=> b!5064566 (= e!3160763 (not (isEmpty!31626 (right!43143 (left!42813 (right!43143 lt!2088442))))))))

(declare-fun b!5064567 () Bool)

(declare-fun res!2156485 () Bool)

(assert (=> b!5064567 (=> (not res!2156485) (not e!3160763))))

(assert (=> b!5064567 (= res!2156485 (isBalanced!4424 (left!42813 (left!42813 (right!43143 lt!2088442)))))))

(declare-fun b!5064568 () Bool)

(declare-fun res!2156488 () Bool)

(assert (=> b!5064568 (=> (not res!2156488) (not e!3160763))))

(assert (=> b!5064568 (= res!2156488 (isBalanced!4424 (right!43143 (left!42813 (right!43143 lt!2088442)))))))

(assert (= (and d!1632312 (not res!2156486)) b!5064565))

(assert (= (and b!5064565 res!2156489) b!5064564))

(assert (= (and b!5064564 res!2156490) b!5064567))

(assert (= (and b!5064567 res!2156485) b!5064568))

(assert (= (and b!5064568 res!2156488) b!5064563))

(assert (= (and b!5064563 res!2156487) b!5064566))

(declare-fun m!6105236 () Bool)

(assert (=> b!5064567 m!6105236))

(declare-fun m!6105238 () Bool)

(assert (=> b!5064566 m!6105238))

(declare-fun m!6105240 () Bool)

(assert (=> b!5064563 m!6105240))

(declare-fun m!6105242 () Bool)

(assert (=> b!5064564 m!6105242))

(declare-fun m!6105244 () Bool)

(assert (=> b!5064564 m!6105244))

(declare-fun m!6105246 () Bool)

(assert (=> b!5064568 m!6105246))

(assert (=> b!5064565 m!6105242))

(assert (=> b!5064565 m!6105244))

(assert (=> b!5064294 d!1632312))

(declare-fun d!1632314 () Bool)

(declare-fun lt!2088613 () Int)

(assert (=> d!1632314 (= lt!2088613 (size!39071 (list!18985 (left!42813 (right!43143 ys!41)))))))

(assert (=> d!1632314 (= lt!2088613 (ite ((_ is Empty!15562) (left!42813 (right!43143 ys!41))) 0 (ite ((_ is Leaf!25848) (left!42813 (right!43143 ys!41))) (csize!31355 (left!42813 (right!43143 ys!41))) (csize!31354 (left!42813 (right!43143 ys!41))))))))

(assert (=> d!1632314 (= (size!39073 (left!42813 (right!43143 ys!41))) lt!2088613)))

(declare-fun bs!1189817 () Bool)

(assert (= bs!1189817 d!1632314))

(assert (=> bs!1189817 m!6103862))

(assert (=> bs!1189817 m!6103862))

(assert (=> bs!1189817 m!6104882))

(assert (=> d!1631966 d!1632314))

(declare-fun d!1632316 () Bool)

(declare-fun lt!2088614 () Int)

(assert (=> d!1632316 (= lt!2088614 (size!39071 (list!18985 (right!43143 (right!43143 ys!41)))))))

(assert (=> d!1632316 (= lt!2088614 (ite ((_ is Empty!15562) (right!43143 (right!43143 ys!41))) 0 (ite ((_ is Leaf!25848) (right!43143 (right!43143 ys!41))) (csize!31355 (right!43143 (right!43143 ys!41))) (csize!31354 (right!43143 (right!43143 ys!41))))))))

(assert (=> d!1632316 (= (size!39073 (right!43143 (right!43143 ys!41))) lt!2088614)))

(declare-fun bs!1189818 () Bool)

(assert (= bs!1189818 d!1632316))

(assert (=> bs!1189818 m!6103864))

(assert (=> bs!1189818 m!6103864))

(assert (=> bs!1189818 m!6104884))

(assert (=> d!1631966 d!1632316))

(assert (=> b!5063698 d!1631800))

(assert (=> b!5063698 d!1631804))

(declare-fun d!1632318 () Bool)

(declare-fun res!2156491 () Bool)

(declare-fun e!3160765 () Bool)

(assert (=> d!1632318 (=> (not res!2156491) (not e!3160765))))

(assert (=> d!1632318 (= res!2156491 (<= (size!39071 (list!18986 (xs!18906 (left!42813 (left!42813 ys!41))))) 512))))

(assert (=> d!1632318 (= (inv!77549 (left!42813 (left!42813 ys!41))) e!3160765)))

(declare-fun b!5064569 () Bool)

(declare-fun res!2156492 () Bool)

(assert (=> b!5064569 (=> (not res!2156492) (not e!3160765))))

(assert (=> b!5064569 (= res!2156492 (= (csize!31355 (left!42813 (left!42813 ys!41))) (size!39071 (list!18986 (xs!18906 (left!42813 (left!42813 ys!41)))))))))

(declare-fun b!5064570 () Bool)

(assert (=> b!5064570 (= e!3160765 (and (> (csize!31355 (left!42813 (left!42813 ys!41))) 0) (<= (csize!31355 (left!42813 (left!42813 ys!41))) 512)))))

(assert (= (and d!1632318 res!2156491) b!5064569))

(assert (= (and b!5064569 res!2156492) b!5064570))

(assert (=> d!1632318 m!6104122))

(assert (=> d!1632318 m!6104122))

(declare-fun m!6105248 () Bool)

(assert (=> d!1632318 m!6105248))

(assert (=> b!5064569 m!6104122))

(assert (=> b!5064569 m!6104122))

(assert (=> b!5064569 m!6105248))

(assert (=> b!5063959 d!1632318))

(declare-fun d!1632320 () Bool)

(assert (=> d!1632320 (= (height!2139 (ite c!869024 lt!2088510 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))) (ite ((_ is Empty!15562) (ite c!869024 lt!2088510 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))) 0 (ite ((_ is Leaf!25848) (ite c!869024 lt!2088510 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))) 1 (cheight!15773 (ite c!869024 lt!2088510 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))))))))

(assert (=> bm!352704 d!1632320))

(declare-fun d!1632322 () Bool)

(declare-fun res!2156493 () Bool)

(declare-fun e!3160766 () Bool)

(assert (=> d!1632322 (=> (not res!2156493) (not e!3160766))))

(assert (=> d!1632322 (= res!2156493 (<= (size!39071 (list!18986 (xs!18906 (right!43143 (right!43143 ys!41))))) 512))))

(assert (=> d!1632322 (= (inv!77549 (right!43143 (right!43143 ys!41))) e!3160766)))

(declare-fun b!5064571 () Bool)

(declare-fun res!2156494 () Bool)

(assert (=> b!5064571 (=> (not res!2156494) (not e!3160766))))

(assert (=> b!5064571 (= res!2156494 (= (csize!31355 (right!43143 (right!43143 ys!41))) (size!39071 (list!18986 (xs!18906 (right!43143 (right!43143 ys!41)))))))))

(declare-fun b!5064572 () Bool)

(assert (=> b!5064572 (= e!3160766 (and (> (csize!31355 (right!43143 (right!43143 ys!41))) 0) (<= (csize!31355 (right!43143 (right!43143 ys!41))) 512)))))

(assert (= (and d!1632322 res!2156493) b!5064571))

(assert (= (and b!5064571 res!2156494) b!5064572))

(assert (=> d!1632322 m!6104900))

(assert (=> d!1632322 m!6104900))

(declare-fun m!6105250 () Bool)

(assert (=> d!1632322 m!6105250))

(assert (=> b!5064571 m!6104900))

(assert (=> b!5064571 m!6104900))

(assert (=> b!5064571 m!6105250))

(assert (=> b!5064199 d!1632322))

(declare-fun d!1632324 () Bool)

(declare-fun c!869229 () Bool)

(assert (=> d!1632324 (= c!869229 ((_ is Node!15562) (left!42813 (left!42813 (left!42813 xs!286)))))))

(declare-fun e!3160767 () Bool)

(assert (=> d!1632324 (= (inv!77544 (left!42813 (left!42813 (left!42813 xs!286)))) e!3160767)))

(declare-fun b!5064573 () Bool)

(assert (=> b!5064573 (= e!3160767 (inv!77548 (left!42813 (left!42813 (left!42813 xs!286)))))))

(declare-fun b!5064574 () Bool)

(declare-fun e!3160768 () Bool)

(assert (=> b!5064574 (= e!3160767 e!3160768)))

(declare-fun res!2156495 () Bool)

(assert (=> b!5064574 (= res!2156495 (not ((_ is Leaf!25848) (left!42813 (left!42813 (left!42813 xs!286))))))))

(assert (=> b!5064574 (=> res!2156495 e!3160768)))

(declare-fun b!5064575 () Bool)

(assert (=> b!5064575 (= e!3160768 (inv!77549 (left!42813 (left!42813 (left!42813 xs!286)))))))

(assert (= (and d!1632324 c!869229) b!5064573))

(assert (= (and d!1632324 (not c!869229)) b!5064574))

(assert (= (and b!5064574 (not res!2156495)) b!5064575))

(declare-fun m!6105252 () Bool)

(assert (=> b!5064573 m!6105252))

(declare-fun m!6105254 () Bool)

(assert (=> b!5064575 m!6105254))

(assert (=> b!5064298 d!1632324))

(declare-fun d!1632326 () Bool)

(declare-fun c!869230 () Bool)

(assert (=> d!1632326 (= c!869230 ((_ is Node!15562) (right!43143 (left!42813 (left!42813 xs!286)))))))

(declare-fun e!3160769 () Bool)

(assert (=> d!1632326 (= (inv!77544 (right!43143 (left!42813 (left!42813 xs!286)))) e!3160769)))

(declare-fun b!5064576 () Bool)

(assert (=> b!5064576 (= e!3160769 (inv!77548 (right!43143 (left!42813 (left!42813 xs!286)))))))

(declare-fun b!5064577 () Bool)

(declare-fun e!3160770 () Bool)

(assert (=> b!5064577 (= e!3160769 e!3160770)))

(declare-fun res!2156496 () Bool)

(assert (=> b!5064577 (= res!2156496 (not ((_ is Leaf!25848) (right!43143 (left!42813 (left!42813 xs!286))))))))

(assert (=> b!5064577 (=> res!2156496 e!3160770)))

(declare-fun b!5064578 () Bool)

(assert (=> b!5064578 (= e!3160770 (inv!77549 (right!43143 (left!42813 (left!42813 xs!286)))))))

(assert (= (and d!1632326 c!869230) b!5064576))

(assert (= (and d!1632326 (not c!869230)) b!5064577))

(assert (= (and b!5064577 (not res!2156496)) b!5064578))

(declare-fun m!6105256 () Bool)

(assert (=> b!5064576 m!6105256))

(declare-fun m!6105258 () Bool)

(assert (=> b!5064578 m!6105258))

(assert (=> b!5064298 d!1632326))

(declare-fun b!5064579 () Bool)

(declare-fun res!2156499 () Bool)

(declare-fun e!3160771 () Bool)

(assert (=> b!5064579 (=> (not res!2156499) (not e!3160771))))

(assert (=> b!5064579 (= res!2156499 (not (isEmpty!31626 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))))

(declare-fun b!5064580 () Bool)

(declare-fun res!2156502 () Bool)

(assert (=> b!5064580 (=> (not res!2156502) (not e!3160771))))

(assert (=> b!5064580 (= res!2156502 (<= (- (height!2139 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))) (height!2139 (right!43143 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))) 1))))

(declare-fun b!5064581 () Bool)

(declare-fun e!3160772 () Bool)

(assert (=> b!5064581 (= e!3160772 e!3160771)))

(declare-fun res!2156501 () Bool)

(assert (=> b!5064581 (=> (not res!2156501) (not e!3160771))))

(assert (=> b!5064581 (= res!2156501 (<= (- 1) (- (height!2139 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))) (height!2139 (right!43143 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))))))))

(declare-fun d!1632328 () Bool)

(declare-fun res!2156498 () Bool)

(assert (=> d!1632328 (=> res!2156498 e!3160772)))

(assert (=> d!1632328 (= res!2156498 (not ((_ is Node!15562) (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))))))

(assert (=> d!1632328 (= (isBalanced!4424 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) e!3160772)))

(declare-fun b!5064582 () Bool)

(assert (=> b!5064582 (= e!3160771 (not (isEmpty!31626 (right!43143 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))))

(declare-fun b!5064583 () Bool)

(declare-fun res!2156497 () Bool)

(assert (=> b!5064583 (=> (not res!2156497) (not e!3160771))))

(assert (=> b!5064583 (= res!2156497 (isBalanced!4424 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))))))

(declare-fun b!5064584 () Bool)

(declare-fun res!2156500 () Bool)

(assert (=> b!5064584 (=> (not res!2156500) (not e!3160771))))

(assert (=> b!5064584 (= res!2156500 (isBalanced!4424 (right!43143 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))))))

(assert (= (and d!1632328 (not res!2156498)) b!5064581))

(assert (= (and b!5064581 res!2156501) b!5064580))

(assert (= (and b!5064580 res!2156502) b!5064583))

(assert (= (and b!5064583 res!2156497) b!5064584))

(assert (= (and b!5064584 res!2156500) b!5064579))

(assert (= (and b!5064579 res!2156499) b!5064582))

(declare-fun m!6105260 () Bool)

(assert (=> b!5064583 m!6105260))

(declare-fun m!6105262 () Bool)

(assert (=> b!5064582 m!6105262))

(declare-fun m!6105264 () Bool)

(assert (=> b!5064579 m!6105264))

(declare-fun m!6105266 () Bool)

(assert (=> b!5064580 m!6105266))

(declare-fun m!6105268 () Bool)

(assert (=> b!5064580 m!6105268))

(declare-fun m!6105270 () Bool)

(assert (=> b!5064584 m!6105270))

(assert (=> b!5064581 m!6105266))

(assert (=> b!5064581 m!6105268))

(assert (=> b!5063822 d!1632328))

(assert (=> b!5063684 d!1631868))

(assert (=> b!5063684 d!1631870))

(declare-fun d!1632330 () Bool)

(declare-fun lt!2088615 () Int)

(assert (=> d!1632330 (>= lt!2088615 0)))

(declare-fun e!3160773 () Int)

(assert (=> d!1632330 (= lt!2088615 e!3160773)))

(declare-fun c!869231 () Bool)

(assert (=> d!1632330 (= c!869231 ((_ is Nil!58432) (list!18986 (xs!18906 (left!42813 xs!286)))))))

(assert (=> d!1632330 (= (size!39071 (list!18986 (xs!18906 (left!42813 xs!286)))) lt!2088615)))

(declare-fun b!5064585 () Bool)

(assert (=> b!5064585 (= e!3160773 0)))

(declare-fun b!5064586 () Bool)

(assert (=> b!5064586 (= e!3160773 (+ 1 (size!39071 (t!371279 (list!18986 (xs!18906 (left!42813 xs!286)))))))))

(assert (= (and d!1632330 c!869231) b!5064585))

(assert (= (and d!1632330 (not c!869231)) b!5064586))

(declare-fun m!6105272 () Bool)

(assert (=> b!5064586 m!6105272))

(assert (=> b!5064187 d!1632330))

(declare-fun d!1632332 () Bool)

(assert (=> d!1632332 (= (list!18986 (xs!18906 (left!42813 xs!286))) (innerList!15650 (xs!18906 (left!42813 xs!286))))))

(assert (=> b!5064187 d!1632332))

(declare-fun d!1632334 () Bool)

(declare-fun e!3160775 () Bool)

(assert (=> d!1632334 e!3160775))

(declare-fun res!2156503 () Bool)

(assert (=> d!1632334 (=> (not res!2156503) (not e!3160775))))

(declare-fun lt!2088616 () List!58556)

(assert (=> d!1632334 (= res!2156503 (= (content!10415 lt!2088616) ((_ map or) (content!10415 (list!18985 xs!286)) (content!10415 call!352772))))))

(declare-fun e!3160774 () List!58556)

(assert (=> d!1632334 (= lt!2088616 e!3160774)))

(declare-fun c!869232 () Bool)

(assert (=> d!1632334 (= c!869232 ((_ is Nil!58432) (list!18985 xs!286)))))

(assert (=> d!1632334 (= (++!12784 (list!18985 xs!286) call!352772) lt!2088616)))

(declare-fun b!5064588 () Bool)

(assert (=> b!5064588 (= e!3160774 (Cons!58432 (h!64880 (list!18985 xs!286)) (++!12784 (t!371279 (list!18985 xs!286)) call!352772)))))

(declare-fun b!5064590 () Bool)

(assert (=> b!5064590 (= e!3160775 (or (not (= call!352772 Nil!58432)) (= lt!2088616 (list!18985 xs!286))))))

(declare-fun b!5064587 () Bool)

(assert (=> b!5064587 (= e!3160774 call!352772)))

(declare-fun b!5064589 () Bool)

(declare-fun res!2156504 () Bool)

(assert (=> b!5064589 (=> (not res!2156504) (not e!3160775))))

(assert (=> b!5064589 (= res!2156504 (= (size!39071 lt!2088616) (+ (size!39071 (list!18985 xs!286)) (size!39071 call!352772))))))

(assert (= (and d!1632334 c!869232) b!5064587))

(assert (= (and d!1632334 (not c!869232)) b!5064588))

(assert (= (and d!1632334 res!2156503) b!5064589))

(assert (= (and b!5064589 res!2156504) b!5064590))

(declare-fun m!6105274 () Bool)

(assert (=> d!1632334 m!6105274))

(assert (=> d!1632334 m!6103080))

(assert (=> d!1632334 m!6103170))

(declare-fun m!6105276 () Bool)

(assert (=> d!1632334 m!6105276))

(declare-fun m!6105278 () Bool)

(assert (=> b!5064588 m!6105278))

(declare-fun m!6105280 () Bool)

(assert (=> b!5064589 m!6105280))

(assert (=> b!5064589 m!6103080))

(assert (=> b!5064589 m!6103178))

(declare-fun m!6105282 () Bool)

(assert (=> b!5064589 m!6105282))

(assert (=> bm!352766 d!1632334))

(declare-fun b!5064591 () Bool)

(declare-fun res!2156507 () Bool)

(declare-fun e!3160776 () Bool)

(assert (=> b!5064591 (=> (not res!2156507) (not e!3160776))))

(assert (=> b!5064591 (= res!2156507 (not (isEmpty!31626 (left!42813 (left!42813 (right!43143 xs!286))))))))

(declare-fun b!5064592 () Bool)

(declare-fun res!2156510 () Bool)

(assert (=> b!5064592 (=> (not res!2156510) (not e!3160776))))

(assert (=> b!5064592 (= res!2156510 (<= (- (height!2139 (left!42813 (left!42813 (right!43143 xs!286)))) (height!2139 (right!43143 (left!42813 (right!43143 xs!286))))) 1))))

(declare-fun b!5064593 () Bool)

(declare-fun e!3160777 () Bool)

(assert (=> b!5064593 (= e!3160777 e!3160776)))

(declare-fun res!2156509 () Bool)

(assert (=> b!5064593 (=> (not res!2156509) (not e!3160776))))

(assert (=> b!5064593 (= res!2156509 (<= (- 1) (- (height!2139 (left!42813 (left!42813 (right!43143 xs!286)))) (height!2139 (right!43143 (left!42813 (right!43143 xs!286)))))))))

(declare-fun d!1632336 () Bool)

(declare-fun res!2156506 () Bool)

(assert (=> d!1632336 (=> res!2156506 e!3160777)))

(assert (=> d!1632336 (= res!2156506 (not ((_ is Node!15562) (left!42813 (right!43143 xs!286)))))))

(assert (=> d!1632336 (= (isBalanced!4424 (left!42813 (right!43143 xs!286))) e!3160777)))

(declare-fun b!5064594 () Bool)

(assert (=> b!5064594 (= e!3160776 (not (isEmpty!31626 (right!43143 (left!42813 (right!43143 xs!286))))))))

(declare-fun b!5064595 () Bool)

(declare-fun res!2156505 () Bool)

(assert (=> b!5064595 (=> (not res!2156505) (not e!3160776))))

(assert (=> b!5064595 (= res!2156505 (isBalanced!4424 (left!42813 (left!42813 (right!43143 xs!286)))))))

(declare-fun b!5064596 () Bool)

(declare-fun res!2156508 () Bool)

(assert (=> b!5064596 (=> (not res!2156508) (not e!3160776))))

(assert (=> b!5064596 (= res!2156508 (isBalanced!4424 (right!43143 (left!42813 (right!43143 xs!286)))))))

(assert (= (and d!1632336 (not res!2156506)) b!5064593))

(assert (= (and b!5064593 res!2156509) b!5064592))

(assert (= (and b!5064592 res!2156510) b!5064595))

(assert (= (and b!5064595 res!2156505) b!5064596))

(assert (= (and b!5064596 res!2156508) b!5064591))

(assert (= (and b!5064591 res!2156507) b!5064594))

(declare-fun m!6105284 () Bool)

(assert (=> b!5064595 m!6105284))

(declare-fun m!6105286 () Bool)

(assert (=> b!5064594 m!6105286))

(declare-fun m!6105288 () Bool)

(assert (=> b!5064591 m!6105288))

(declare-fun m!6105290 () Bool)

(assert (=> b!5064592 m!6105290))

(declare-fun m!6105292 () Bool)

(assert (=> b!5064592 m!6105292))

(declare-fun m!6105294 () Bool)

(assert (=> b!5064596 m!6105294))

(assert (=> b!5064593 m!6105290))

(assert (=> b!5064593 m!6105292))

(assert (=> b!5064286 d!1632336))

(declare-fun d!1632338 () Bool)

(declare-fun e!3160779 () Bool)

(assert (=> d!1632338 e!3160779))

(declare-fun res!2156511 () Bool)

(assert (=> d!1632338 (=> (not res!2156511) (not e!3160779))))

(declare-fun lt!2088617 () List!58556)

(assert (=> d!1632338 (= res!2156511 (= (content!10415 lt!2088617) ((_ map or) (content!10415 (list!18985 (left!42813 xs!286))) (content!10415 (list!18985 (left!42813 (right!43143 xs!286)))))))))

(declare-fun e!3160778 () List!58556)

(assert (=> d!1632338 (= lt!2088617 e!3160778)))

(declare-fun c!869233 () Bool)

(assert (=> d!1632338 (= c!869233 ((_ is Nil!58432) (list!18985 (left!42813 xs!286))))))

(assert (=> d!1632338 (= (++!12784 (list!18985 (left!42813 xs!286)) (list!18985 (left!42813 (right!43143 xs!286)))) lt!2088617)))

(declare-fun b!5064598 () Bool)

(assert (=> b!5064598 (= e!3160778 (Cons!58432 (h!64880 (list!18985 (left!42813 xs!286))) (++!12784 (t!371279 (list!18985 (left!42813 xs!286))) (list!18985 (left!42813 (right!43143 xs!286))))))))

(declare-fun b!5064600 () Bool)

(assert (=> b!5064600 (= e!3160779 (or (not (= (list!18985 (left!42813 (right!43143 xs!286))) Nil!58432)) (= lt!2088617 (list!18985 (left!42813 xs!286)))))))

(declare-fun b!5064597 () Bool)

(assert (=> b!5064597 (= e!3160778 (list!18985 (left!42813 (right!43143 xs!286))))))

(declare-fun b!5064599 () Bool)

(declare-fun res!2156512 () Bool)

(assert (=> b!5064599 (=> (not res!2156512) (not e!3160779))))

(assert (=> b!5064599 (= res!2156512 (= (size!39071 lt!2088617) (+ (size!39071 (list!18985 (left!42813 xs!286))) (size!39071 (list!18985 (left!42813 (right!43143 xs!286)))))))))

(assert (= (and d!1632338 c!869233) b!5064597))

(assert (= (and d!1632338 (not c!869233)) b!5064598))

(assert (= (and d!1632338 res!2156511) b!5064599))

(assert (= (and b!5064599 res!2156512) b!5064600))

(declare-fun m!6105296 () Bool)

(assert (=> d!1632338 m!6105296))

(assert (=> d!1632338 m!6103182))

(assert (=> d!1632338 m!6104618))

(assert (=> d!1632338 m!6103448))

(assert (=> d!1632338 m!6104420))

(assert (=> b!5064598 m!6103448))

(declare-fun m!6105298 () Bool)

(assert (=> b!5064598 m!6105298))

(declare-fun m!6105300 () Bool)

(assert (=> b!5064599 m!6105300))

(assert (=> b!5064599 m!6103182))

(assert (=> b!5064599 m!6103696))

(assert (=> b!5064599 m!6103448))

(assert (=> b!5064599 m!6104056))

(assert (=> bm!352740 d!1632338))

(declare-fun d!1632340 () Bool)

(declare-fun res!2156513 () Bool)

(declare-fun e!3160780 () Bool)

(assert (=> d!1632340 (=> (not res!2156513) (not e!3160780))))

(assert (=> d!1632340 (= res!2156513 (<= (size!39071 (list!18986 (xs!18906 (right!43143 (left!42813 xs!286))))) 512))))

(assert (=> d!1632340 (= (inv!77549 (right!43143 (left!42813 xs!286))) e!3160780)))

(declare-fun b!5064601 () Bool)

(declare-fun res!2156514 () Bool)

(assert (=> b!5064601 (=> (not res!2156514) (not e!3160780))))

(assert (=> b!5064601 (= res!2156514 (= (csize!31355 (right!43143 (left!42813 xs!286))) (size!39071 (list!18986 (xs!18906 (right!43143 (left!42813 xs!286)))))))))

(declare-fun b!5064602 () Bool)

(assert (=> b!5064602 (= e!3160780 (and (> (csize!31355 (right!43143 (left!42813 xs!286))) 0) (<= (csize!31355 (right!43143 (left!42813 xs!286))) 512)))))

(assert (= (and d!1632340 res!2156513) b!5064601))

(assert (= (and b!5064601 res!2156514) b!5064602))

(declare-fun m!6105302 () Bool)

(assert (=> d!1632340 m!6105302))

(assert (=> d!1632340 m!6105302))

(declare-fun m!6105304 () Bool)

(assert (=> d!1632340 m!6105304))

(assert (=> b!5064601 m!6105302))

(assert (=> b!5064601 m!6105302))

(assert (=> b!5064601 m!6105304))

(assert (=> b!5064234 d!1632340))

(declare-fun d!1632342 () Bool)

(declare-fun lt!2088618 () Int)

(assert (=> d!1632342 (>= lt!2088618 0)))

(declare-fun e!3160781 () Int)

(assert (=> d!1632342 (= lt!2088618 e!3160781)))

(declare-fun c!869234 () Bool)

(assert (=> d!1632342 (= c!869234 ((_ is Nil!58432) lt!2088567))))

(assert (=> d!1632342 (= (size!39071 lt!2088567) lt!2088618)))

(declare-fun b!5064603 () Bool)

(assert (=> b!5064603 (= e!3160781 0)))

(declare-fun b!5064604 () Bool)

(assert (=> b!5064604 (= e!3160781 (+ 1 (size!39071 (t!371279 lt!2088567))))))

(assert (= (and d!1632342 c!869234) b!5064603))

(assert (= (and d!1632342 (not c!869234)) b!5064604))

(declare-fun m!6105306 () Bool)

(assert (=> b!5064604 m!6105306))

(assert (=> b!5064276 d!1632342))

(declare-fun d!1632344 () Bool)

(declare-fun lt!2088619 () Int)

(assert (=> d!1632344 (>= lt!2088619 0)))

(declare-fun e!3160782 () Int)

(assert (=> d!1632344 (= lt!2088619 e!3160782)))

(declare-fun c!869235 () Bool)

(assert (=> d!1632344 (= c!869235 ((_ is Nil!58432) (list!18985 (left!42813 xs!286))))))

(assert (=> d!1632344 (= (size!39071 (list!18985 (left!42813 xs!286))) lt!2088619)))

(declare-fun b!5064605 () Bool)

(assert (=> b!5064605 (= e!3160782 0)))

(declare-fun b!5064606 () Bool)

(assert (=> b!5064606 (= e!3160782 (+ 1 (size!39071 (t!371279 (list!18985 (left!42813 xs!286))))))))

(assert (= (and d!1632344 c!869235) b!5064605))

(assert (= (and d!1632344 (not c!869235)) b!5064606))

(declare-fun m!6105308 () Bool)

(assert (=> b!5064606 m!6105308))

(assert (=> b!5064276 d!1632344))

(assert (=> b!5064276 d!1632310))

(declare-fun d!1632346 () Bool)

(declare-fun e!3160784 () Bool)

(assert (=> d!1632346 e!3160784))

(declare-fun res!2156515 () Bool)

(assert (=> d!1632346 (=> (not res!2156515) (not e!3160784))))

(declare-fun lt!2088620 () List!58556)

(assert (=> d!1632346 (= res!2156515 (= (content!10415 lt!2088620) ((_ map or) (content!10415 (list!18985 (left!42813 (right!43143 lt!2088442)))) (content!10415 (list!18985 (right!43143 (right!43143 lt!2088442)))))))))

(declare-fun e!3160783 () List!58556)

(assert (=> d!1632346 (= lt!2088620 e!3160783)))

(declare-fun c!869236 () Bool)

(assert (=> d!1632346 (= c!869236 ((_ is Nil!58432) (list!18985 (left!42813 (right!43143 lt!2088442)))))))

(assert (=> d!1632346 (= (++!12784 (list!18985 (left!42813 (right!43143 lt!2088442))) (list!18985 (right!43143 (right!43143 lt!2088442)))) lt!2088620)))

(declare-fun b!5064608 () Bool)

(assert (=> b!5064608 (= e!3160783 (Cons!58432 (h!64880 (list!18985 (left!42813 (right!43143 lt!2088442)))) (++!12784 (t!371279 (list!18985 (left!42813 (right!43143 lt!2088442)))) (list!18985 (right!43143 (right!43143 lt!2088442))))))))

(declare-fun b!5064610 () Bool)

(assert (=> b!5064610 (= e!3160784 (or (not (= (list!18985 (right!43143 (right!43143 lt!2088442))) Nil!58432)) (= lt!2088620 (list!18985 (left!42813 (right!43143 lt!2088442))))))))

(declare-fun b!5064607 () Bool)

(assert (=> b!5064607 (= e!3160783 (list!18985 (right!43143 (right!43143 lt!2088442))))))

(declare-fun b!5064609 () Bool)

(declare-fun res!2156516 () Bool)

(assert (=> b!5064609 (=> (not res!2156516) (not e!3160784))))

(assert (=> b!5064609 (= res!2156516 (= (size!39071 lt!2088620) (+ (size!39071 (list!18985 (left!42813 (right!43143 lt!2088442)))) (size!39071 (list!18985 (right!43143 (right!43143 lt!2088442)))))))))

(assert (= (and d!1632346 c!869236) b!5064607))

(assert (= (and d!1632346 (not c!869236)) b!5064608))

(assert (= (and d!1632346 res!2156515) b!5064609))

(assert (= (and b!5064609 res!2156516) b!5064610))

(declare-fun m!6105310 () Bool)

(assert (=> d!1632346 m!6105310))

(assert (=> d!1632346 m!6103904))

(declare-fun m!6105312 () Bool)

(assert (=> d!1632346 m!6105312))

(assert (=> d!1632346 m!6103906))

(declare-fun m!6105314 () Bool)

(assert (=> d!1632346 m!6105314))

(assert (=> b!5064608 m!6103906))

(declare-fun m!6105316 () Bool)

(assert (=> b!5064608 m!6105316))

(declare-fun m!6105318 () Bool)

(assert (=> b!5064609 m!6105318))

(assert (=> b!5064609 m!6103904))

(declare-fun m!6105320 () Bool)

(assert (=> b!5064609 m!6105320))

(assert (=> b!5064609 m!6103906))

(declare-fun m!6105322 () Bool)

(assert (=> b!5064609 m!6105322))

(assert (=> b!5063896 d!1632346))

(declare-fun d!1632348 () Bool)

(declare-fun c!869237 () Bool)

(assert (=> d!1632348 (= c!869237 ((_ is Empty!15562) (left!42813 (right!43143 lt!2088442))))))

(declare-fun e!3160785 () List!58556)

(assert (=> d!1632348 (= (list!18985 (left!42813 (right!43143 lt!2088442))) e!3160785)))

(declare-fun b!5064614 () Bool)

(declare-fun e!3160786 () List!58556)

(assert (=> b!5064614 (= e!3160786 (++!12784 (list!18985 (left!42813 (left!42813 (right!43143 lt!2088442)))) (list!18985 (right!43143 (left!42813 (right!43143 lt!2088442))))))))

(declare-fun b!5064611 () Bool)

(assert (=> b!5064611 (= e!3160785 Nil!58432)))

(declare-fun b!5064613 () Bool)

(assert (=> b!5064613 (= e!3160786 (list!18986 (xs!18906 (left!42813 (right!43143 lt!2088442)))))))

(declare-fun b!5064612 () Bool)

(assert (=> b!5064612 (= e!3160785 e!3160786)))

(declare-fun c!869238 () Bool)

(assert (=> b!5064612 (= c!869238 ((_ is Leaf!25848) (left!42813 (right!43143 lt!2088442))))))

(assert (= (and d!1632348 c!869237) b!5064611))

(assert (= (and d!1632348 (not c!869237)) b!5064612))

(assert (= (and b!5064612 c!869238) b!5064613))

(assert (= (and b!5064612 (not c!869238)) b!5064614))

(declare-fun m!6105324 () Bool)

(assert (=> b!5064614 m!6105324))

(declare-fun m!6105326 () Bool)

(assert (=> b!5064614 m!6105326))

(assert (=> b!5064614 m!6105324))

(assert (=> b!5064614 m!6105326))

(declare-fun m!6105328 () Bool)

(assert (=> b!5064614 m!6105328))

(declare-fun m!6105330 () Bool)

(assert (=> b!5064613 m!6105330))

(assert (=> b!5063896 d!1632348))

(declare-fun d!1632350 () Bool)

(declare-fun c!869239 () Bool)

(assert (=> d!1632350 (= c!869239 ((_ is Empty!15562) (right!43143 (right!43143 lt!2088442))))))

(declare-fun e!3160787 () List!58556)

(assert (=> d!1632350 (= (list!18985 (right!43143 (right!43143 lt!2088442))) e!3160787)))

(declare-fun b!5064618 () Bool)

(declare-fun e!3160788 () List!58556)

(assert (=> b!5064618 (= e!3160788 (++!12784 (list!18985 (left!42813 (right!43143 (right!43143 lt!2088442)))) (list!18985 (right!43143 (right!43143 (right!43143 lt!2088442))))))))

(declare-fun b!5064615 () Bool)

(assert (=> b!5064615 (= e!3160787 Nil!58432)))

(declare-fun b!5064617 () Bool)

(assert (=> b!5064617 (= e!3160788 (list!18986 (xs!18906 (right!43143 (right!43143 lt!2088442)))))))

(declare-fun b!5064616 () Bool)

(assert (=> b!5064616 (= e!3160787 e!3160788)))

(declare-fun c!869240 () Bool)

(assert (=> b!5064616 (= c!869240 ((_ is Leaf!25848) (right!43143 (right!43143 lt!2088442))))))

(assert (= (and d!1632350 c!869239) b!5064615))

(assert (= (and d!1632350 (not c!869239)) b!5064616))

(assert (= (and b!5064616 c!869240) b!5064617))

(assert (= (and b!5064616 (not c!869240)) b!5064618))

(declare-fun m!6105332 () Bool)

(assert (=> b!5064618 m!6105332))

(declare-fun m!6105334 () Bool)

(assert (=> b!5064618 m!6105334))

(assert (=> b!5064618 m!6105332))

(assert (=> b!5064618 m!6105334))

(declare-fun m!6105336 () Bool)

(assert (=> b!5064618 m!6105336))

(declare-fun m!6105338 () Bool)

(assert (=> b!5064617 m!6105338))

(assert (=> b!5063896 d!1632350))

(declare-fun d!1632352 () Bool)

(declare-fun e!3160790 () Bool)

(assert (=> d!1632352 e!3160790))

(declare-fun res!2156517 () Bool)

(assert (=> d!1632352 (=> (not res!2156517) (not e!3160790))))

(declare-fun lt!2088621 () List!58556)

(assert (=> d!1632352 (= res!2156517 (= (content!10415 lt!2088621) ((_ map or) (content!10415 (++!12784 (list!18985 xs!286) (list!18985 (left!42813 (left!42813 ys!41))))) (content!10415 call!352752))))))

(declare-fun e!3160789 () List!58556)

(assert (=> d!1632352 (= lt!2088621 e!3160789)))

(declare-fun c!869241 () Bool)

(assert (=> d!1632352 (= c!869241 ((_ is Nil!58432) (++!12784 (list!18985 xs!286) (list!18985 (left!42813 (left!42813 ys!41))))))))

(assert (=> d!1632352 (= (++!12784 (++!12784 (list!18985 xs!286) (list!18985 (left!42813 (left!42813 ys!41)))) call!352752) lt!2088621)))

(declare-fun b!5064620 () Bool)

(assert (=> b!5064620 (= e!3160789 (Cons!58432 (h!64880 (++!12784 (list!18985 xs!286) (list!18985 (left!42813 (left!42813 ys!41))))) (++!12784 (t!371279 (++!12784 (list!18985 xs!286) (list!18985 (left!42813 (left!42813 ys!41))))) call!352752)))))

(declare-fun b!5064622 () Bool)

(assert (=> b!5064622 (= e!3160790 (or (not (= call!352752 Nil!58432)) (= lt!2088621 (++!12784 (list!18985 xs!286) (list!18985 (left!42813 (left!42813 ys!41)))))))))

(declare-fun b!5064619 () Bool)

(assert (=> b!5064619 (= e!3160789 call!352752)))

(declare-fun b!5064621 () Bool)

(declare-fun res!2156518 () Bool)

(assert (=> b!5064621 (=> (not res!2156518) (not e!3160790))))

(assert (=> b!5064621 (= res!2156518 (= (size!39071 lt!2088621) (+ (size!39071 (++!12784 (list!18985 xs!286) (list!18985 (left!42813 (left!42813 ys!41))))) (size!39071 call!352752))))))

(assert (= (and d!1632352 c!869241) b!5064619))

(assert (= (and d!1632352 (not c!869241)) b!5064620))

(assert (= (and d!1632352 res!2156517) b!5064621))

(assert (= (and b!5064621 res!2156518) b!5064622))

(declare-fun m!6105340 () Bool)

(assert (=> d!1632352 m!6105340))

(assert (=> d!1632352 m!6103452))

(declare-fun m!6105342 () Bool)

(assert (=> d!1632352 m!6105342))

(declare-fun m!6105344 () Bool)

(assert (=> d!1632352 m!6105344))

(declare-fun m!6105346 () Bool)

(assert (=> b!5064620 m!6105346))

(declare-fun m!6105348 () Bool)

(assert (=> b!5064621 m!6105348))

(assert (=> b!5064621 m!6103452))

(declare-fun m!6105350 () Bool)

(assert (=> b!5064621 m!6105350))

(declare-fun m!6105352 () Bool)

(assert (=> b!5064621 m!6105352))

(assert (=> bm!352746 d!1632352))

(assert (=> d!1632032 d!1632330))

(assert (=> d!1632032 d!1632332))

(declare-fun b!5064623 () Bool)

(declare-fun res!2156521 () Bool)

(declare-fun e!3160791 () Bool)

(assert (=> b!5064623 (=> (not res!2156521) (not e!3160791))))

(assert (=> b!5064623 (= res!2156521 (not (isEmpty!31626 (left!42813 (left!42813 (left!42813 lt!2088442))))))))

(declare-fun b!5064624 () Bool)

(declare-fun res!2156524 () Bool)

(assert (=> b!5064624 (=> (not res!2156524) (not e!3160791))))

(assert (=> b!5064624 (= res!2156524 (<= (- (height!2139 (left!42813 (left!42813 (left!42813 lt!2088442)))) (height!2139 (right!43143 (left!42813 (left!42813 lt!2088442))))) 1))))

(declare-fun b!5064625 () Bool)

(declare-fun e!3160792 () Bool)

(assert (=> b!5064625 (= e!3160792 e!3160791)))

(declare-fun res!2156523 () Bool)

(assert (=> b!5064625 (=> (not res!2156523) (not e!3160791))))

(assert (=> b!5064625 (= res!2156523 (<= (- 1) (- (height!2139 (left!42813 (left!42813 (left!42813 lt!2088442)))) (height!2139 (right!43143 (left!42813 (left!42813 lt!2088442)))))))))

(declare-fun d!1632354 () Bool)

(declare-fun res!2156520 () Bool)

(assert (=> d!1632354 (=> res!2156520 e!3160792)))

(assert (=> d!1632354 (= res!2156520 (not ((_ is Node!15562) (left!42813 (left!42813 lt!2088442)))))))

(assert (=> d!1632354 (= (isBalanced!4424 (left!42813 (left!42813 lt!2088442))) e!3160792)))

(declare-fun b!5064626 () Bool)

(assert (=> b!5064626 (= e!3160791 (not (isEmpty!31626 (right!43143 (left!42813 (left!42813 lt!2088442))))))))

(declare-fun b!5064627 () Bool)

(declare-fun res!2156519 () Bool)

(assert (=> b!5064627 (=> (not res!2156519) (not e!3160791))))

(assert (=> b!5064627 (= res!2156519 (isBalanced!4424 (left!42813 (left!42813 (left!42813 lt!2088442)))))))

(declare-fun b!5064628 () Bool)

(declare-fun res!2156522 () Bool)

(assert (=> b!5064628 (=> (not res!2156522) (not e!3160791))))

(assert (=> b!5064628 (= res!2156522 (isBalanced!4424 (right!43143 (left!42813 (left!42813 lt!2088442)))))))

(assert (= (and d!1632354 (not res!2156520)) b!5064625))

(assert (= (and b!5064625 res!2156523) b!5064624))

(assert (= (and b!5064624 res!2156524) b!5064627))

(assert (= (and b!5064627 res!2156519) b!5064628))

(assert (= (and b!5064628 res!2156522) b!5064623))

(assert (= (and b!5064623 res!2156521) b!5064626))

(declare-fun m!6105354 () Bool)

(assert (=> b!5064627 m!6105354))

(declare-fun m!6105356 () Bool)

(assert (=> b!5064626 m!6105356))

(declare-fun m!6105358 () Bool)

(assert (=> b!5064623 m!6105358))

(declare-fun m!6105360 () Bool)

(assert (=> b!5064624 m!6105360))

(declare-fun m!6105362 () Bool)

(assert (=> b!5064624 m!6105362))

(declare-fun m!6105364 () Bool)

(assert (=> b!5064628 m!6105364))

(assert (=> b!5064625 m!6105360))

(assert (=> b!5064625 m!6105362))

(assert (=> b!5063877 d!1632354))

(declare-fun d!1632356 () Bool)

(assert (=> d!1632356 (= (isEmpty!31628 (list!18985 (left!42813 xs!286))) ((_ is Nil!58432) (list!18985 (left!42813 xs!286))))))

(assert (=> d!1631832 d!1632356))

(assert (=> d!1631832 d!1631848))

(assert (=> d!1631832 d!1631770))

(assert (=> b!5063856 d!1632276))

(assert (=> b!5063856 d!1632278))

(declare-fun bm!352797 () Bool)

(declare-fun call!352805 () List!58556)

(declare-fun call!352803 () List!58556)

(assert (=> bm!352797 (= call!352805 (++!12784 call!352803 (list!18985 ys!41)))))

(declare-fun d!1632358 () Bool)

(declare-fun e!3160793 () Bool)

(assert (=> d!1632358 e!3160793))

(declare-fun c!869242 () Bool)

(assert (=> d!1632358 (= c!869242 ((_ is Nil!58432) (t!371279 (list!18985 (left!42813 (right!43143 xs!286))))))))

(assert (=> d!1632358 (= (appendAssoc!300 (t!371279 (list!18985 (left!42813 (right!43143 xs!286)))) (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 ys!41)) true)))

(declare-fun bm!352798 () Bool)

(declare-fun call!352802 () List!58556)

(declare-fun call!352804 () List!58556)

(assert (=> bm!352798 (= call!352802 (++!12784 (t!371279 (list!18985 (left!42813 (right!43143 xs!286)))) call!352804))))

(declare-fun bm!352799 () Bool)

(assert (=> bm!352799 (= call!352804 (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 ys!41)))))

(declare-fun b!5064629 () Bool)

(assert (=> b!5064629 (= e!3160793 (= call!352805 call!352802))))

(declare-fun lt!2088622 () Bool)

(assert (=> b!5064629 (= lt!2088622 (appendAssoc!300 (t!371279 (t!371279 (list!18985 (left!42813 (right!43143 xs!286))))) (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 ys!41)))))

(declare-fun bm!352800 () Bool)

(assert (=> bm!352800 (= call!352803 (++!12784 (t!371279 (list!18985 (left!42813 (right!43143 xs!286)))) (list!18985 (right!43143 (right!43143 xs!286)))))))

(declare-fun b!5064630 () Bool)

(assert (=> b!5064630 (= e!3160793 (= call!352805 call!352802))))

(assert (= (and d!1632358 c!869242) b!5064630))

(assert (= (and d!1632358 (not c!869242)) b!5064629))

(assert (= (or b!5064630 b!5064629) bm!352800))

(assert (= (or b!5064630 b!5064629) bm!352799))

(assert (= (or b!5064630 b!5064629) bm!352798))

(assert (= (or b!5064630 b!5064629) bm!352797))

(declare-fun m!6105366 () Bool)

(assert (=> bm!352798 m!6105366))

(assert (=> bm!352800 m!6103364))

(assert (=> bm!352800 m!6105230))

(assert (=> b!5064629 m!6103364))

(assert (=> b!5064629 m!6103082))

(declare-fun m!6105368 () Bool)

(assert (=> b!5064629 m!6105368))

(assert (=> bm!352799 m!6103364))

(assert (=> bm!352799 m!6103082))

(assert (=> bm!352799 m!6103366))

(assert (=> bm!352797 m!6103082))

(declare-fun m!6105370 () Bool)

(assert (=> bm!352797 m!6105370))

(assert (=> b!5064255 d!1632358))

(declare-fun d!1632360 () Bool)

(assert (=> d!1632360 (= (height!2139 (ite c!869024 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))) lt!2088511)) (ite ((_ is Empty!15562) (ite c!869024 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))) lt!2088511)) 0 (ite ((_ is Leaf!25848) (ite c!869024 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))) lt!2088511)) 1 (cheight!15773 (ite c!869024 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))) lt!2088511)))))))

(assert (=> bm!352710 d!1632360))

(declare-fun d!1632362 () Bool)

(declare-fun lt!2088623 () Int)

(assert (=> d!1632362 (>= lt!2088623 0)))

(declare-fun e!3160794 () Int)

(assert (=> d!1632362 (= lt!2088623 e!3160794)))

(declare-fun c!869243 () Bool)

(assert (=> d!1632362 (= c!869243 ((_ is Nil!58432) lt!2088566))))

(assert (=> d!1632362 (= (size!39071 lt!2088566) lt!2088623)))

(declare-fun b!5064631 () Bool)

(assert (=> b!5064631 (= e!3160794 0)))

(declare-fun b!5064632 () Bool)

(assert (=> b!5064632 (= e!3160794 (+ 1 (size!39071 (t!371279 lt!2088566))))))

(assert (= (and d!1632362 c!869243) b!5064631))

(assert (= (and d!1632362 (not c!869243)) b!5064632))

(declare-fun m!6105372 () Bool)

(assert (=> b!5064632 m!6105372))

(assert (=> b!5064268 d!1632362))

(assert (=> b!5064268 d!1632344))

(declare-fun d!1632364 () Bool)

(declare-fun lt!2088624 () Int)

(assert (=> d!1632364 (>= lt!2088624 0)))

(declare-fun e!3160795 () Int)

(assert (=> d!1632364 (= lt!2088624 e!3160795)))

(declare-fun c!869244 () Bool)

(assert (=> d!1632364 (= c!869244 ((_ is Nil!58432) (list!18985 (right!43143 xs!286))))))

(assert (=> d!1632364 (= (size!39071 (list!18985 (right!43143 xs!286))) lt!2088624)))

(declare-fun b!5064633 () Bool)

(assert (=> b!5064633 (= e!3160795 0)))

(declare-fun b!5064634 () Bool)

(assert (=> b!5064634 (= e!3160795 (+ 1 (size!39071 (t!371279 (list!18985 (right!43143 xs!286))))))))

(assert (= (and d!1632364 c!869244) b!5064633))

(assert (= (and d!1632364 (not c!869244)) b!5064634))

(declare-fun m!6105374 () Bool)

(assert (=> b!5064634 m!6105374))

(assert (=> b!5064268 d!1632364))

(declare-fun d!1632366 () Bool)

(declare-fun e!3160797 () Bool)

(assert (=> d!1632366 e!3160797))

(declare-fun res!2156525 () Bool)

(assert (=> d!1632366 (=> (not res!2156525) (not e!3160797))))

(declare-fun lt!2088625 () List!58556)

(assert (=> d!1632366 (= res!2156525 (= (content!10415 lt!2088625) ((_ map or) (content!10415 (list!18985 (left!42813 (left!42813 (left!42813 ys!41))))) (content!10415 (list!18985 (right!43143 (left!42813 (left!42813 ys!41))))))))))

(declare-fun e!3160796 () List!58556)

(assert (=> d!1632366 (= lt!2088625 e!3160796)))

(declare-fun c!869245 () Bool)

(assert (=> d!1632366 (= c!869245 ((_ is Nil!58432) (list!18985 (left!42813 (left!42813 (left!42813 ys!41))))))))

(assert (=> d!1632366 (= (++!12784 (list!18985 (left!42813 (left!42813 (left!42813 ys!41)))) (list!18985 (right!43143 (left!42813 (left!42813 ys!41))))) lt!2088625)))

(declare-fun b!5064636 () Bool)

(assert (=> b!5064636 (= e!3160796 (Cons!58432 (h!64880 (list!18985 (left!42813 (left!42813 (left!42813 ys!41))))) (++!12784 (t!371279 (list!18985 (left!42813 (left!42813 (left!42813 ys!41))))) (list!18985 (right!43143 (left!42813 (left!42813 ys!41)))))))))

(declare-fun b!5064638 () Bool)

(assert (=> b!5064638 (= e!3160797 (or (not (= (list!18985 (right!43143 (left!42813 (left!42813 ys!41)))) Nil!58432)) (= lt!2088625 (list!18985 (left!42813 (left!42813 (left!42813 ys!41)))))))))

(declare-fun b!5064635 () Bool)

(assert (=> b!5064635 (= e!3160796 (list!18985 (right!43143 (left!42813 (left!42813 ys!41)))))))

(declare-fun b!5064637 () Bool)

(declare-fun res!2156526 () Bool)

(assert (=> b!5064637 (=> (not res!2156526) (not e!3160797))))

(assert (=> b!5064637 (= res!2156526 (= (size!39071 lt!2088625) (+ (size!39071 (list!18985 (left!42813 (left!42813 (left!42813 ys!41))))) (size!39071 (list!18985 (right!43143 (left!42813 (left!42813 ys!41))))))))))

(assert (= (and d!1632366 c!869245) b!5064635))

(assert (= (and d!1632366 (not c!869245)) b!5064636))

(assert (= (and d!1632366 res!2156525) b!5064637))

(assert (= (and b!5064637 res!2156526) b!5064638))

(declare-fun m!6105376 () Bool)

(assert (=> d!1632366 m!6105376))

(assert (=> d!1632366 m!6104112))

(declare-fun m!6105378 () Bool)

(assert (=> d!1632366 m!6105378))

(assert (=> d!1632366 m!6104114))

(declare-fun m!6105380 () Bool)

(assert (=> d!1632366 m!6105380))

(assert (=> b!5064636 m!6104114))

(declare-fun m!6105382 () Bool)

(assert (=> b!5064636 m!6105382))

(declare-fun m!6105384 () Bool)

(assert (=> b!5064637 m!6105384))

(assert (=> b!5064637 m!6104112))

(declare-fun m!6105386 () Bool)

(assert (=> b!5064637 m!6105386))

(assert (=> b!5064637 m!6104114))

(declare-fun m!6105388 () Bool)

(assert (=> b!5064637 m!6105388))

(assert (=> b!5063994 d!1632366))

(declare-fun d!1632368 () Bool)

(declare-fun c!869246 () Bool)

(assert (=> d!1632368 (= c!869246 ((_ is Empty!15562) (left!42813 (left!42813 (left!42813 ys!41)))))))

(declare-fun e!3160798 () List!58556)

(assert (=> d!1632368 (= (list!18985 (left!42813 (left!42813 (left!42813 ys!41)))) e!3160798)))

(declare-fun b!5064642 () Bool)

(declare-fun e!3160799 () List!58556)

(assert (=> b!5064642 (= e!3160799 (++!12784 (list!18985 (left!42813 (left!42813 (left!42813 (left!42813 ys!41))))) (list!18985 (right!43143 (left!42813 (left!42813 (left!42813 ys!41)))))))))

(declare-fun b!5064639 () Bool)

(assert (=> b!5064639 (= e!3160798 Nil!58432)))

(declare-fun b!5064641 () Bool)

(assert (=> b!5064641 (= e!3160799 (list!18986 (xs!18906 (left!42813 (left!42813 (left!42813 ys!41))))))))

(declare-fun b!5064640 () Bool)

(assert (=> b!5064640 (= e!3160798 e!3160799)))

(declare-fun c!869247 () Bool)

(assert (=> b!5064640 (= c!869247 ((_ is Leaf!25848) (left!42813 (left!42813 (left!42813 ys!41)))))))

(assert (= (and d!1632368 c!869246) b!5064639))

(assert (= (and d!1632368 (not c!869246)) b!5064640))

(assert (= (and b!5064640 c!869247) b!5064641))

(assert (= (and b!5064640 (not c!869247)) b!5064642))

(declare-fun m!6105390 () Bool)

(assert (=> b!5064642 m!6105390))

(declare-fun m!6105392 () Bool)

(assert (=> b!5064642 m!6105392))

(assert (=> b!5064642 m!6105390))

(assert (=> b!5064642 m!6105392))

(declare-fun m!6105394 () Bool)

(assert (=> b!5064642 m!6105394))

(declare-fun m!6105396 () Bool)

(assert (=> b!5064641 m!6105396))

(assert (=> b!5063994 d!1632368))

(declare-fun d!1632370 () Bool)

(declare-fun c!869248 () Bool)

(assert (=> d!1632370 (= c!869248 ((_ is Empty!15562) (right!43143 (left!42813 (left!42813 ys!41)))))))

(declare-fun e!3160800 () List!58556)

(assert (=> d!1632370 (= (list!18985 (right!43143 (left!42813 (left!42813 ys!41)))) e!3160800)))

(declare-fun b!5064646 () Bool)

(declare-fun e!3160801 () List!58556)

(assert (=> b!5064646 (= e!3160801 (++!12784 (list!18985 (left!42813 (right!43143 (left!42813 (left!42813 ys!41))))) (list!18985 (right!43143 (right!43143 (left!42813 (left!42813 ys!41)))))))))

(declare-fun b!5064643 () Bool)

(assert (=> b!5064643 (= e!3160800 Nil!58432)))

(declare-fun b!5064645 () Bool)

(assert (=> b!5064645 (= e!3160801 (list!18986 (xs!18906 (right!43143 (left!42813 (left!42813 ys!41))))))))

(declare-fun b!5064644 () Bool)

(assert (=> b!5064644 (= e!3160800 e!3160801)))

(declare-fun c!869249 () Bool)

(assert (=> b!5064644 (= c!869249 ((_ is Leaf!25848) (right!43143 (left!42813 (left!42813 ys!41)))))))

(assert (= (and d!1632370 c!869248) b!5064643))

(assert (= (and d!1632370 (not c!869248)) b!5064644))

(assert (= (and b!5064644 c!869249) b!5064645))

(assert (= (and b!5064644 (not c!869249)) b!5064646))

(declare-fun m!6105398 () Bool)

(assert (=> b!5064646 m!6105398))

(declare-fun m!6105400 () Bool)

(assert (=> b!5064646 m!6105400))

(assert (=> b!5064646 m!6105398))

(assert (=> b!5064646 m!6105400))

(declare-fun m!6105402 () Bool)

(assert (=> b!5064646 m!6105402))

(declare-fun m!6105404 () Bool)

(assert (=> b!5064645 m!6105404))

(assert (=> b!5063994 d!1632370))

(declare-fun d!1632372 () Bool)

(declare-fun lt!2088626 () Bool)

(assert (=> d!1632372 (= lt!2088626 (isEmpty!31628 (list!18985 (left!42813 (right!43143 (right!43143 xs!286))))))))

(assert (=> d!1632372 (= lt!2088626 (= (size!39073 (left!42813 (right!43143 (right!43143 xs!286)))) 0))))

(assert (=> d!1632372 (= (isEmpty!31626 (left!42813 (right!43143 (right!43143 xs!286)))) lt!2088626)))

(declare-fun bs!1189819 () Bool)

(assert (= bs!1189819 d!1632372))

(assert (=> bs!1189819 m!6103644))

(assert (=> bs!1189819 m!6103644))

(declare-fun m!6105406 () Bool)

(assert (=> bs!1189819 m!6105406))

(declare-fun m!6105408 () Bool)

(assert (=> bs!1189819 m!6105408))

(assert (=> b!5063782 d!1632372))

(declare-fun d!1632374 () Bool)

(declare-fun c!869250 () Bool)

(assert (=> d!1632374 (= c!869250 ((_ is Empty!15562) lt!2088509))))

(declare-fun e!3160802 () List!58556)

(assert (=> d!1632374 (= (list!18985 lt!2088509) e!3160802)))

(declare-fun b!5064650 () Bool)

(declare-fun e!3160803 () List!58556)

(assert (=> b!5064650 (= e!3160803 (++!12784 (list!18985 (left!42813 lt!2088509)) (list!18985 (right!43143 lt!2088509))))))

(declare-fun b!5064647 () Bool)

(assert (=> b!5064647 (= e!3160802 Nil!58432)))

(declare-fun b!5064649 () Bool)

(assert (=> b!5064649 (= e!3160803 (list!18986 (xs!18906 lt!2088509)))))

(declare-fun b!5064648 () Bool)

(assert (=> b!5064648 (= e!3160802 e!3160803)))

(declare-fun c!869251 () Bool)

(assert (=> b!5064648 (= c!869251 ((_ is Leaf!25848) lt!2088509))))

(assert (= (and d!1632374 c!869250) b!5064647))

(assert (= (and d!1632374 (not c!869250)) b!5064648))

(assert (= (and b!5064648 c!869251) b!5064649))

(assert (= (and b!5064648 (not c!869251)) b!5064650))

(declare-fun m!6105410 () Bool)

(assert (=> b!5064650 m!6105410))

(declare-fun m!6105412 () Bool)

(assert (=> b!5064650 m!6105412))

(assert (=> b!5064650 m!6105410))

(assert (=> b!5064650 m!6105412))

(declare-fun m!6105414 () Bool)

(assert (=> b!5064650 m!6105414))

(declare-fun m!6105416 () Bool)

(assert (=> b!5064649 m!6105416))

(assert (=> b!5063821 d!1632374))

(declare-fun d!1632376 () Bool)

(declare-fun e!3160805 () Bool)

(assert (=> d!1632376 e!3160805))

(declare-fun res!2156527 () Bool)

(assert (=> d!1632376 (=> (not res!2156527) (not e!3160805))))

(declare-fun lt!2088627 () List!58556)

(assert (=> d!1632376 (= res!2156527 (= (content!10415 lt!2088627) ((_ map or) (content!10415 (list!18985 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (content!10415 (list!18985 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))))))))

(declare-fun e!3160804 () List!58556)

(assert (=> d!1632376 (= lt!2088627 e!3160804)))

(declare-fun c!869252 () Bool)

(assert (=> d!1632376 (= c!869252 ((_ is Nil!58432) (list!18985 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))))))

(assert (=> d!1632376 (= (++!12784 (list!18985 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (list!18985 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))) lt!2088627)))

(declare-fun b!5064652 () Bool)

(assert (=> b!5064652 (= e!3160804 (Cons!58432 (h!64880 (list!18985 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (++!12784 (t!371279 (list!18985 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (list!18985 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))))

(declare-fun b!5064654 () Bool)

(assert (=> b!5064654 (= e!3160805 (or (not (= (list!18985 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) Nil!58432)) (= lt!2088627 (list!18985 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))))))

(declare-fun b!5064651 () Bool)

(assert (=> b!5064651 (= e!3160804 (list!18985 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))

(declare-fun b!5064653 () Bool)

(declare-fun res!2156528 () Bool)

(assert (=> b!5064653 (=> (not res!2156528) (not e!3160805))))

(assert (=> b!5064653 (= res!2156528 (= (size!39071 lt!2088627) (+ (size!39071 (list!18985 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (size!39071 (list!18985 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))))))))

(assert (= (and d!1632376 c!869252) b!5064651))

(assert (= (and d!1632376 (not c!869252)) b!5064652))

(assert (= (and d!1632376 res!2156527) b!5064653))

(assert (= (and b!5064653 res!2156528) b!5064654))

(declare-fun m!6105418 () Bool)

(assert (=> d!1632376 m!6105418))

(assert (=> d!1632376 m!6103756))

(declare-fun m!6105420 () Bool)

(assert (=> d!1632376 m!6105420))

(assert (=> d!1632376 m!6103758))

(declare-fun m!6105422 () Bool)

(assert (=> d!1632376 m!6105422))

(assert (=> b!5064652 m!6103758))

(declare-fun m!6105424 () Bool)

(assert (=> b!5064652 m!6105424))

(declare-fun m!6105426 () Bool)

(assert (=> b!5064653 m!6105426))

(assert (=> b!5064653 m!6103756))

(declare-fun m!6105428 () Bool)

(assert (=> b!5064653 m!6105428))

(assert (=> b!5064653 m!6103758))

(declare-fun m!6105430 () Bool)

(assert (=> b!5064653 m!6105430))

(assert (=> b!5063821 d!1632376))

(declare-fun c!869253 () Bool)

(declare-fun d!1632378 () Bool)

(assert (=> d!1632378 (= c!869253 ((_ is Empty!15562) (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))))

(declare-fun e!3160806 () List!58556)

(assert (=> d!1632378 (= (list!18985 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) e!3160806)))

(declare-fun e!3160807 () List!58556)

(declare-fun b!5064658 () Bool)

(assert (=> b!5064658 (= e!3160807 (++!12784 (list!18985 (left!42813 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (list!18985 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))))))

(declare-fun b!5064655 () Bool)

(assert (=> b!5064655 (= e!3160806 Nil!58432)))

(declare-fun b!5064657 () Bool)

(assert (=> b!5064657 (= e!3160807 (list!18986 (xs!18906 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))))))

(declare-fun b!5064656 () Bool)

(assert (=> b!5064656 (= e!3160806 e!3160807)))

(declare-fun c!869254 () Bool)

(assert (=> b!5064656 (= c!869254 ((_ is Leaf!25848) (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))))

(assert (= (and d!1632378 c!869253) b!5064655))

(assert (= (and d!1632378 (not c!869253)) b!5064656))

(assert (= (and b!5064656 c!869254) b!5064657))

(assert (= (and b!5064656 (not c!869254)) b!5064658))

(assert (=> b!5064658 m!6105164))

(assert (=> b!5064658 m!6105170))

(assert (=> b!5064658 m!6105164))

(assert (=> b!5064658 m!6105170))

(declare-fun m!6105432 () Bool)

(assert (=> b!5064658 m!6105432))

(declare-fun m!6105434 () Bool)

(assert (=> b!5064657 m!6105434))

(assert (=> b!5063821 d!1632378))

(declare-fun c!869255 () Bool)

(declare-fun d!1632380 () Bool)

(assert (=> d!1632380 (= c!869255 ((_ is Empty!15562) (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))

(declare-fun e!3160808 () List!58556)

(assert (=> d!1632380 (= (list!18985 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) e!3160808)))

(declare-fun b!5064662 () Bool)

(declare-fun e!3160809 () List!58556)

(assert (=> b!5064662 (= e!3160809 (++!12784 (list!18985 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))) (list!18985 (right!43143 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))))

(declare-fun b!5064659 () Bool)

(assert (=> b!5064659 (= e!3160808 Nil!58432)))

(declare-fun b!5064661 () Bool)

(assert (=> b!5064661 (= e!3160809 (list!18986 (xs!18906 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))))))

(declare-fun b!5064660 () Bool)

(assert (=> b!5064660 (= e!3160808 e!3160809)))

(declare-fun c!869256 () Bool)

(assert (=> b!5064660 (= c!869256 ((_ is Leaf!25848) (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))

(assert (= (and d!1632380 c!869255) b!5064659))

(assert (= (and d!1632380 (not c!869255)) b!5064660))

(assert (= (and b!5064660 c!869256) b!5064661))

(assert (= (and b!5064660 (not c!869256)) b!5064662))

(assert (=> b!5064662 m!6105174))

(assert (=> b!5064662 m!6105160))

(assert (=> b!5064662 m!6105174))

(assert (=> b!5064662 m!6105160))

(declare-fun m!6105436 () Bool)

(assert (=> b!5064662 m!6105436))

(declare-fun m!6105438 () Bool)

(assert (=> b!5064661 m!6105438))

(assert (=> b!5063821 d!1632380))

(assert (=> d!1631938 d!1631880))

(declare-fun d!1632382 () Bool)

(declare-fun lt!2088628 () Int)

(assert (=> d!1632382 (= lt!2088628 (size!39071 (list!18985 (right!43143 (right!43143 xs!286)))))))

(assert (=> d!1632382 (= lt!2088628 (ite ((_ is Empty!15562) (right!43143 (right!43143 xs!286))) 0 (ite ((_ is Leaf!25848) (right!43143 (right!43143 xs!286))) (csize!31355 (right!43143 (right!43143 xs!286))) (csize!31354 (right!43143 (right!43143 xs!286))))))))

(assert (=> d!1632382 (= (size!39073 (right!43143 (right!43143 xs!286))) lt!2088628)))

(declare-fun bs!1189820 () Bool)

(assert (= bs!1189820 d!1632382))

(assert (=> bs!1189820 m!6103364))

(assert (=> bs!1189820 m!6103364))

(assert (=> bs!1189820 m!6104034))

(assert (=> d!1631938 d!1632382))

(declare-fun d!1632384 () Bool)

(declare-fun res!2156529 () Bool)

(declare-fun e!3160810 () Bool)

(assert (=> d!1632384 (=> (not res!2156529) (not e!3160810))))

(assert (=> d!1632384 (= res!2156529 (= (csize!31354 (right!43143 (left!42813 ys!41))) (+ (size!39073 (left!42813 (right!43143 (left!42813 ys!41)))) (size!39073 (right!43143 (right!43143 (left!42813 ys!41)))))))))

(assert (=> d!1632384 (= (inv!77548 (right!43143 (left!42813 ys!41))) e!3160810)))

(declare-fun b!5064663 () Bool)

(declare-fun res!2156530 () Bool)

(assert (=> b!5064663 (=> (not res!2156530) (not e!3160810))))

(assert (=> b!5064663 (= res!2156530 (and (not (= (left!42813 (right!43143 (left!42813 ys!41))) Empty!15562)) (not (= (right!43143 (right!43143 (left!42813 ys!41))) Empty!15562))))))

(declare-fun b!5064664 () Bool)

(declare-fun res!2156531 () Bool)

(assert (=> b!5064664 (=> (not res!2156531) (not e!3160810))))

(assert (=> b!5064664 (= res!2156531 (= (cheight!15773 (right!43143 (left!42813 ys!41))) (+ (max!0 (height!2139 (left!42813 (right!43143 (left!42813 ys!41)))) (height!2139 (right!43143 (right!43143 (left!42813 ys!41))))) 1)))))

(declare-fun b!5064665 () Bool)

(assert (=> b!5064665 (= e!3160810 (<= 0 (cheight!15773 (right!43143 (left!42813 ys!41)))))))

(assert (= (and d!1632384 res!2156529) b!5064663))

(assert (= (and b!5064663 res!2156530) b!5064664))

(assert (= (and b!5064664 res!2156531) b!5064665))

(declare-fun m!6105440 () Bool)

(assert (=> d!1632384 m!6105440))

(declare-fun m!6105442 () Bool)

(assert (=> d!1632384 m!6105442))

(declare-fun m!6105444 () Bool)

(assert (=> b!5064664 m!6105444))

(declare-fun m!6105446 () Bool)

(assert (=> b!5064664 m!6105446))

(assert (=> b!5064664 m!6105444))

(assert (=> b!5064664 m!6105446))

(declare-fun m!6105448 () Bool)

(assert (=> b!5064664 m!6105448))

(assert (=> b!5063962 d!1632384))

(declare-fun b!5064666 () Bool)

(declare-fun res!2156534 () Bool)

(declare-fun e!3160811 () Bool)

(assert (=> b!5064666 (=> (not res!2156534) (not e!3160811))))

(assert (=> b!5064666 (= res!2156534 (not (isEmpty!31626 (left!42813 (right!43143 (left!42813 xs!286))))))))

(declare-fun b!5064667 () Bool)

(declare-fun res!2156537 () Bool)

(assert (=> b!5064667 (=> (not res!2156537) (not e!3160811))))

(assert (=> b!5064667 (= res!2156537 (<= (- (height!2139 (left!42813 (right!43143 (left!42813 xs!286)))) (height!2139 (right!43143 (right!43143 (left!42813 xs!286))))) 1))))

(declare-fun b!5064668 () Bool)

(declare-fun e!3160812 () Bool)

(assert (=> b!5064668 (= e!3160812 e!3160811)))

(declare-fun res!2156536 () Bool)

(assert (=> b!5064668 (=> (not res!2156536) (not e!3160811))))

(assert (=> b!5064668 (= res!2156536 (<= (- 1) (- (height!2139 (left!42813 (right!43143 (left!42813 xs!286)))) (height!2139 (right!43143 (right!43143 (left!42813 xs!286)))))))))

(declare-fun d!1632386 () Bool)

(declare-fun res!2156533 () Bool)

(assert (=> d!1632386 (=> res!2156533 e!3160812)))

(assert (=> d!1632386 (= res!2156533 (not ((_ is Node!15562) (right!43143 (left!42813 xs!286)))))))

(assert (=> d!1632386 (= (isBalanced!4424 (right!43143 (left!42813 xs!286))) e!3160812)))

(declare-fun b!5064669 () Bool)

(assert (=> b!5064669 (= e!3160811 (not (isEmpty!31626 (right!43143 (right!43143 (left!42813 xs!286))))))))

(declare-fun b!5064670 () Bool)

(declare-fun res!2156532 () Bool)

(assert (=> b!5064670 (=> (not res!2156532) (not e!3160811))))

(assert (=> b!5064670 (= res!2156532 (isBalanced!4424 (left!42813 (right!43143 (left!42813 xs!286)))))))

(declare-fun b!5064671 () Bool)

(declare-fun res!2156535 () Bool)

(assert (=> b!5064671 (=> (not res!2156535) (not e!3160811))))

(assert (=> b!5064671 (= res!2156535 (isBalanced!4424 (right!43143 (right!43143 (left!42813 xs!286)))))))

(assert (= (and d!1632386 (not res!2156533)) b!5064668))

(assert (= (and b!5064668 res!2156536) b!5064667))

(assert (= (and b!5064667 res!2156537) b!5064670))

(assert (= (and b!5064670 res!2156532) b!5064671))

(assert (= (and b!5064671 res!2156535) b!5064666))

(assert (= (and b!5064666 res!2156534) b!5064669))

(declare-fun m!6105450 () Bool)

(assert (=> b!5064670 m!6105450))

(declare-fun m!6105452 () Bool)

(assert (=> b!5064669 m!6105452))

(declare-fun m!6105454 () Bool)

(assert (=> b!5064666 m!6105454))

(declare-fun m!6105456 () Bool)

(assert (=> b!5064667 m!6105456))

(declare-fun m!6105458 () Bool)

(assert (=> b!5064667 m!6105458))

(declare-fun m!6105460 () Bool)

(assert (=> b!5064671 m!6105460))

(assert (=> b!5064668 m!6105456))

(assert (=> b!5064668 m!6105458))

(assert (=> b!5064043 d!1632386))

(declare-fun d!1632388 () Bool)

(declare-fun lt!2088629 () Bool)

(assert (=> d!1632388 (= lt!2088629 (isEmpty!31628 (list!18985 (right!43143 (right!43143 lt!2088442)))))))

(assert (=> d!1632388 (= lt!2088629 (= (size!39073 (right!43143 (right!43143 lt!2088442))) 0))))

(assert (=> d!1632388 (= (isEmpty!31626 (right!43143 (right!43143 lt!2088442))) lt!2088629)))

(declare-fun bs!1189821 () Bool)

(assert (= bs!1189821 d!1632388))

(assert (=> bs!1189821 m!6103906))

(assert (=> bs!1189821 m!6103906))

(declare-fun m!6105462 () Bool)

(assert (=> bs!1189821 m!6105462))

(declare-fun m!6105464 () Bool)

(assert (=> bs!1189821 m!6105464))

(assert (=> b!5064293 d!1632388))

(declare-fun d!1632390 () Bool)

(declare-fun c!869257 () Bool)

(assert (=> d!1632390 (= c!869257 ((_ is Nil!58432) lt!2088535))))

(declare-fun e!3160813 () (InoxSet T!105104))

(assert (=> d!1632390 (= (content!10415 lt!2088535) e!3160813)))

(declare-fun b!5064672 () Bool)

(assert (=> b!5064672 (= e!3160813 ((as const (Array T!105104 Bool)) false))))

(declare-fun b!5064673 () Bool)

(assert (=> b!5064673 (= e!3160813 ((_ map or) (store ((as const (Array T!105104 Bool)) false) (h!64880 lt!2088535) true) (content!10415 (t!371279 lt!2088535))))))

(assert (= (and d!1632390 c!869257) b!5064672))

(assert (= (and d!1632390 (not c!869257)) b!5064673))

(declare-fun m!6105466 () Bool)

(assert (=> b!5064673 m!6105466))

(declare-fun m!6105468 () Bool)

(assert (=> b!5064673 m!6105468))

(assert (=> d!1631890 d!1632390))

(assert (=> d!1631890 d!1631986))

(declare-fun d!1632392 () Bool)

(declare-fun c!869258 () Bool)

(assert (=> d!1632392 (= c!869258 ((_ is Nil!58432) (list!18985 (left!42813 (left!42813 ys!41)))))))

(declare-fun e!3160814 () (InoxSet T!105104))

(assert (=> d!1632392 (= (content!10415 (list!18985 (left!42813 (left!42813 ys!41)))) e!3160814)))

(declare-fun b!5064674 () Bool)

(assert (=> b!5064674 (= e!3160814 ((as const (Array T!105104 Bool)) false))))

(declare-fun b!5064675 () Bool)

(assert (=> b!5064675 (= e!3160814 ((_ map or) (store ((as const (Array T!105104 Bool)) false) (h!64880 (list!18985 (left!42813 (left!42813 ys!41)))) true) (content!10415 (t!371279 (list!18985 (left!42813 (left!42813 ys!41)))))))))

(assert (= (and d!1632392 c!869258) b!5064674))

(assert (= (and d!1632392 (not c!869258)) b!5064675))

(declare-fun m!6105470 () Bool)

(assert (=> b!5064675 m!6105470))

(declare-fun m!6105472 () Bool)

(assert (=> b!5064675 m!6105472))

(assert (=> d!1631890 d!1632392))

(declare-fun d!1632394 () Bool)

(assert (=> d!1632394 (= (height!2139 (left!42813 lt!2088474)) (ite ((_ is Empty!15562) (left!42813 lt!2088474)) 0 (ite ((_ is Leaf!25848) (left!42813 lt!2088474)) 1 (cheight!15773 (left!42813 lt!2088474)))))))

(assert (=> b!5064139 d!1632394))

(declare-fun d!1632396 () Bool)

(assert (=> d!1632396 (= (height!2139 (right!43143 lt!2088474)) (ite ((_ is Empty!15562) (right!43143 lt!2088474)) 0 (ite ((_ is Leaf!25848) (right!43143 lt!2088474)) 1 (cheight!15773 (right!43143 lt!2088474)))))))

(assert (=> b!5064139 d!1632396))

(declare-fun b!5064676 () Bool)

(declare-fun res!2156540 () Bool)

(declare-fun e!3160815 () Bool)

(assert (=> b!5064676 (=> (not res!2156540) (not e!3160815))))

(assert (=> b!5064676 (= res!2156540 (not (isEmpty!31626 (left!42813 (right!43143 (left!42813 ys!41))))))))

(declare-fun b!5064677 () Bool)

(declare-fun res!2156543 () Bool)

(assert (=> b!5064677 (=> (not res!2156543) (not e!3160815))))

(assert (=> b!5064677 (= res!2156543 (<= (- (height!2139 (left!42813 (right!43143 (left!42813 ys!41)))) (height!2139 (right!43143 (right!43143 (left!42813 ys!41))))) 1))))

(declare-fun b!5064678 () Bool)

(declare-fun e!3160816 () Bool)

(assert (=> b!5064678 (= e!3160816 e!3160815)))

(declare-fun res!2156542 () Bool)

(assert (=> b!5064678 (=> (not res!2156542) (not e!3160815))))

(assert (=> b!5064678 (= res!2156542 (<= (- 1) (- (height!2139 (left!42813 (right!43143 (left!42813 ys!41)))) (height!2139 (right!43143 (right!43143 (left!42813 ys!41)))))))))

(declare-fun d!1632398 () Bool)

(declare-fun res!2156539 () Bool)

(assert (=> d!1632398 (=> res!2156539 e!3160816)))

(assert (=> d!1632398 (= res!2156539 (not ((_ is Node!15562) (right!43143 (left!42813 ys!41)))))))

(assert (=> d!1632398 (= (isBalanced!4424 (right!43143 (left!42813 ys!41))) e!3160816)))

(declare-fun b!5064679 () Bool)

(assert (=> b!5064679 (= e!3160815 (not (isEmpty!31626 (right!43143 (right!43143 (left!42813 ys!41))))))))

(declare-fun b!5064680 () Bool)

(declare-fun res!2156538 () Bool)

(assert (=> b!5064680 (=> (not res!2156538) (not e!3160815))))

(assert (=> b!5064680 (= res!2156538 (isBalanced!4424 (left!42813 (right!43143 (left!42813 ys!41)))))))

(declare-fun b!5064681 () Bool)

(declare-fun res!2156541 () Bool)

(assert (=> b!5064681 (=> (not res!2156541) (not e!3160815))))

(assert (=> b!5064681 (= res!2156541 (isBalanced!4424 (right!43143 (right!43143 (left!42813 ys!41)))))))

(assert (= (and d!1632398 (not res!2156539)) b!5064678))

(assert (= (and b!5064678 res!2156542) b!5064677))

(assert (= (and b!5064677 res!2156543) b!5064680))

(assert (= (and b!5064680 res!2156538) b!5064681))

(assert (= (and b!5064681 res!2156541) b!5064676))

(assert (= (and b!5064676 res!2156540) b!5064679))

(declare-fun m!6105474 () Bool)

(assert (=> b!5064680 m!6105474))

(declare-fun m!6105476 () Bool)

(assert (=> b!5064679 m!6105476))

(declare-fun m!6105478 () Bool)

(assert (=> b!5064676 m!6105478))

(assert (=> b!5064677 m!6105444))

(assert (=> b!5064677 m!6105446))

(declare-fun m!6105480 () Bool)

(assert (=> b!5064681 m!6105480))

(assert (=> b!5064678 m!6105444))

(assert (=> b!5064678 m!6105446))

(assert (=> b!5064100 d!1632398))

(declare-fun d!1632400 () Bool)

(declare-fun lt!2088630 () Int)

(assert (=> d!1632400 (>= lt!2088630 0)))

(declare-fun e!3160817 () Int)

(assert (=> d!1632400 (= lt!2088630 e!3160817)))

(declare-fun c!869259 () Bool)

(assert (=> d!1632400 (= c!869259 ((_ is Nil!58432) (list!18986 (xs!18906 (left!42813 ys!41)))))))

(assert (=> d!1632400 (= (size!39071 (list!18986 (xs!18906 (left!42813 ys!41)))) lt!2088630)))

(declare-fun b!5064682 () Bool)

(assert (=> b!5064682 (= e!3160817 0)))

(declare-fun b!5064683 () Bool)

(assert (=> b!5064683 (= e!3160817 (+ 1 (size!39071 (t!371279 (list!18986 (xs!18906 (left!42813 ys!41)))))))))

(assert (= (and d!1632400 c!869259) b!5064682))

(assert (= (and d!1632400 (not c!869259)) b!5064683))

(declare-fun m!6105482 () Bool)

(assert (=> b!5064683 m!6105482))

(assert (=> b!5064107 d!1632400))

(declare-fun d!1632402 () Bool)

(assert (=> d!1632402 (= (list!18986 (xs!18906 (left!42813 ys!41))) (innerList!15650 (xs!18906 (left!42813 ys!41))))))

(assert (=> b!5064107 d!1632402))

(declare-fun d!1632404 () Bool)

(assert (=> d!1632404 (= (height!2139 (ite c!869024 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))) (ite ((_ is Empty!15562) (ite c!869024 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))) 0 (ite ((_ is Leaf!25848) (ite c!869024 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))) 1 (cheight!15773 (ite c!869024 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))))))

(assert (=> bm!352703 d!1632404))

(declare-fun d!1632406 () Bool)

(declare-fun c!869260 () Bool)

(assert (=> d!1632406 (= c!869260 ((_ is Nil!58432) (t!371279 (list!18985 ys!41))))))

(declare-fun e!3160818 () (InoxSet T!105104))

(assert (=> d!1632406 (= (content!10415 (t!371279 (list!18985 ys!41))) e!3160818)))

(declare-fun b!5064684 () Bool)

(assert (=> b!5064684 (= e!3160818 ((as const (Array T!105104 Bool)) false))))

(declare-fun b!5064685 () Bool)

(assert (=> b!5064685 (= e!3160818 ((_ map or) (store ((as const (Array T!105104 Bool)) false) (h!64880 (t!371279 (list!18985 ys!41))) true) (content!10415 (t!371279 (t!371279 (list!18985 ys!41))))))))

(assert (= (and d!1632406 c!869260) b!5064684))

(assert (= (and d!1632406 (not c!869260)) b!5064685))

(declare-fun m!6105484 () Bool)

(assert (=> b!5064685 m!6105484))

(declare-fun m!6105486 () Bool)

(assert (=> b!5064685 m!6105486))

(assert (=> b!5064136 d!1632406))

(declare-fun d!1632408 () Bool)

(declare-fun c!869261 () Bool)

(assert (=> d!1632408 (= c!869261 ((_ is Nil!58432) lt!2088567))))

(declare-fun e!3160819 () (InoxSet T!105104))

(assert (=> d!1632408 (= (content!10415 lt!2088567) e!3160819)))

(declare-fun b!5064686 () Bool)

(assert (=> b!5064686 (= e!3160819 ((as const (Array T!105104 Bool)) false))))

(declare-fun b!5064687 () Bool)

(assert (=> b!5064687 (= e!3160819 ((_ map or) (store ((as const (Array T!105104 Bool)) false) (h!64880 lt!2088567) true) (content!10415 (t!371279 lt!2088567))))))

(assert (= (and d!1632408 c!869261) b!5064686))

(assert (= (and d!1632408 (not c!869261)) b!5064687))

(declare-fun m!6105488 () Bool)

(assert (=> b!5064687 m!6105488))

(declare-fun m!6105490 () Bool)

(assert (=> b!5064687 m!6105490))

(assert (=> d!1632092 d!1632408))

(declare-fun d!1632410 () Bool)

(declare-fun c!869262 () Bool)

(assert (=> d!1632410 (= c!869262 ((_ is Nil!58432) (list!18985 (left!42813 xs!286))))))

(declare-fun e!3160820 () (InoxSet T!105104))

(assert (=> d!1632410 (= (content!10415 (list!18985 (left!42813 xs!286))) e!3160820)))

(declare-fun b!5064688 () Bool)

(assert (=> b!5064688 (= e!3160820 ((as const (Array T!105104 Bool)) false))))

(declare-fun b!5064689 () Bool)

(assert (=> b!5064689 (= e!3160820 ((_ map or) (store ((as const (Array T!105104 Bool)) false) (h!64880 (list!18985 (left!42813 xs!286))) true) (content!10415 (t!371279 (list!18985 (left!42813 xs!286))))))))

(assert (= (and d!1632410 c!869262) b!5064688))

(assert (= (and d!1632410 (not c!869262)) b!5064689))

(declare-fun m!6105492 () Bool)

(assert (=> b!5064689 m!6105492))

(declare-fun m!6105494 () Bool)

(assert (=> b!5064689 m!6105494))

(assert (=> d!1632092 d!1632410))

(declare-fun d!1632412 () Bool)

(declare-fun c!869263 () Bool)

(assert (=> d!1632412 (= c!869263 ((_ is Nil!58432) (list!18985 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))))))

(declare-fun e!3160821 () (InoxSet T!105104))

(assert (=> d!1632412 (= (content!10415 (list!18985 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))) e!3160821)))

(declare-fun b!5064690 () Bool)

(assert (=> b!5064690 (= e!3160821 ((as const (Array T!105104 Bool)) false))))

(declare-fun b!5064691 () Bool)

(assert (=> b!5064691 (= e!3160821 ((_ map or) (store ((as const (Array T!105104 Bool)) false) (h!64880 (list!18985 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))) true) (content!10415 (t!371279 (list!18985 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))))))))

(assert (= (and d!1632412 c!869263) b!5064690))

(assert (= (and d!1632412 (not c!869263)) b!5064691))

(declare-fun m!6105496 () Bool)

(assert (=> b!5064691 m!6105496))

(declare-fun m!6105498 () Bool)

(assert (=> b!5064691 m!6105498))

(assert (=> d!1632092 d!1632412))

(declare-fun d!1632414 () Bool)

(assert (=> d!1632414 (= (inv!77545 (xs!18906 (right!43143 (right!43143 xs!286)))) (<= (size!39071 (innerList!15650 (xs!18906 (right!43143 (right!43143 xs!286))))) 2147483647))))

(declare-fun bs!1189822 () Bool)

(assert (= bs!1189822 d!1632414))

(declare-fun m!6105500 () Bool)

(assert (=> bs!1189822 m!6105500))

(assert (=> b!5064323 d!1632414))

(declare-fun d!1632416 () Bool)

(declare-fun c!869264 () Bool)

(assert (=> d!1632416 (= c!869264 ((_ is Nil!58432) lt!2088566))))

(declare-fun e!3160822 () (InoxSet T!105104))

(assert (=> d!1632416 (= (content!10415 lt!2088566) e!3160822)))

(declare-fun b!5064692 () Bool)

(assert (=> b!5064692 (= e!3160822 ((as const (Array T!105104 Bool)) false))))

(declare-fun b!5064693 () Bool)

(assert (=> b!5064693 (= e!3160822 ((_ map or) (store ((as const (Array T!105104 Bool)) false) (h!64880 lt!2088566) true) (content!10415 (t!371279 lt!2088566))))))

(assert (= (and d!1632416 c!869264) b!5064692))

(assert (= (and d!1632416 (not c!869264)) b!5064693))

(declare-fun m!6105502 () Bool)

(assert (=> b!5064693 m!6105502))

(declare-fun m!6105504 () Bool)

(assert (=> b!5064693 m!6105504))

(assert (=> d!1632088 d!1632416))

(assert (=> d!1632088 d!1632410))

(declare-fun d!1632418 () Bool)

(declare-fun c!869265 () Bool)

(assert (=> d!1632418 (= c!869265 ((_ is Nil!58432) (list!18985 (right!43143 xs!286))))))

(declare-fun e!3160823 () (InoxSet T!105104))

(assert (=> d!1632418 (= (content!10415 (list!18985 (right!43143 xs!286))) e!3160823)))

(declare-fun b!5064694 () Bool)

(assert (=> b!5064694 (= e!3160823 ((as const (Array T!105104 Bool)) false))))

(declare-fun b!5064695 () Bool)

(assert (=> b!5064695 (= e!3160823 ((_ map or) (store ((as const (Array T!105104 Bool)) false) (h!64880 (list!18985 (right!43143 xs!286))) true) (content!10415 (t!371279 (list!18985 (right!43143 xs!286))))))))

(assert (= (and d!1632418 c!869265) b!5064694))

(assert (= (and d!1632418 (not c!869265)) b!5064695))

(declare-fun m!6105506 () Bool)

(assert (=> b!5064695 m!6105506))

(declare-fun m!6105508 () Bool)

(assert (=> b!5064695 m!6105508))

(assert (=> d!1632088 d!1632418))

(declare-fun d!1632420 () Bool)

(declare-fun lt!2088631 () Bool)

(assert (=> d!1632420 (= lt!2088631 (isEmpty!31628 (list!18985 (right!43143 (right!43143 xs!286)))))))

(assert (=> d!1632420 (= lt!2088631 (= (size!39073 (right!43143 (right!43143 xs!286))) 0))))

(assert (=> d!1632420 (= (isEmpty!31626 (right!43143 (right!43143 xs!286))) lt!2088631)))

(declare-fun bs!1189823 () Bool)

(assert (= bs!1189823 d!1632420))

(assert (=> bs!1189823 m!6103364))

(assert (=> bs!1189823 m!6103364))

(declare-fun m!6105510 () Bool)

(assert (=> bs!1189823 m!6105510))

(assert (=> bs!1189823 m!6104288))

(assert (=> b!5064285 d!1632420))

(declare-fun call!352807 () List!58556)

(declare-fun call!352809 () List!58556)

(declare-fun bm!352801 () Bool)

(assert (=> bm!352801 (= call!352809 (++!12784 call!352807 (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 ys!41))))))

(declare-fun d!1632422 () Bool)

(declare-fun e!3160824 () Bool)

(assert (=> d!1632422 e!3160824))

(declare-fun c!869266 () Bool)

(assert (=> d!1632422 (= c!869266 ((_ is Nil!58432) (t!371279 (list!18985 (left!42813 xs!286)))))))

(assert (=> d!1632422 (= (appendAssoc!300 (t!371279 (list!18985 (left!42813 xs!286))) (list!18985 (left!42813 (right!43143 xs!286))) (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 ys!41))) true)))

(declare-fun bm!352802 () Bool)

(declare-fun call!352806 () List!58556)

(declare-fun call!352808 () List!58556)

(assert (=> bm!352802 (= call!352806 (++!12784 (t!371279 (list!18985 (left!42813 xs!286))) call!352808))))

(declare-fun bm!352803 () Bool)

(assert (=> bm!352803 (= call!352808 (++!12784 (list!18985 (left!42813 (right!43143 xs!286))) (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 ys!41))))))

(declare-fun b!5064696 () Bool)

(assert (=> b!5064696 (= e!3160824 (= call!352809 call!352806))))

(declare-fun lt!2088632 () Bool)

(assert (=> b!5064696 (= lt!2088632 (appendAssoc!300 (t!371279 (t!371279 (list!18985 (left!42813 xs!286)))) (list!18985 (left!42813 (right!43143 xs!286))) (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 ys!41))))))

(declare-fun bm!352804 () Bool)

(assert (=> bm!352804 (= call!352807 (++!12784 (t!371279 (list!18985 (left!42813 xs!286))) (list!18985 (left!42813 (right!43143 xs!286)))))))

(declare-fun b!5064697 () Bool)

(assert (=> b!5064697 (= e!3160824 (= call!352809 call!352806))))

(assert (= (and d!1632422 c!869266) b!5064697))

(assert (= (and d!1632422 (not c!869266)) b!5064696))

(assert (= (or b!5064697 b!5064696) bm!352804))

(assert (= (or b!5064697 b!5064696) bm!352803))

(assert (= (or b!5064697 b!5064696) bm!352802))

(assert (= (or b!5064697 b!5064696) bm!352801))

(declare-fun m!6105512 () Bool)

(assert (=> bm!352802 m!6105512))

(assert (=> bm!352804 m!6103448))

(assert (=> bm!352804 m!6105298))

(assert (=> b!5064696 m!6103448))

(assert (=> b!5064696 m!6103366))

(declare-fun m!6105514 () Bool)

(assert (=> b!5064696 m!6105514))

(assert (=> bm!352803 m!6103448))

(assert (=> bm!352803 m!6103366))

(assert (=> bm!352803 m!6104004))

(assert (=> bm!352801 m!6103366))

(declare-fun m!6105516 () Bool)

(assert (=> bm!352801 m!6105516))

(assert (=> b!5063943 d!1632422))

(declare-fun d!1632424 () Bool)

(declare-fun e!3160826 () Bool)

(assert (=> d!1632424 e!3160826))

(declare-fun res!2156544 () Bool)

(assert (=> d!1632424 (=> (not res!2156544) (not e!3160826))))

(declare-fun lt!2088633 () List!58556)

(assert (=> d!1632424 (= res!2156544 (= (content!10415 lt!2088633) ((_ map or) (content!10415 (t!371279 (list!18985 (left!42813 xs!286)))) (content!10415 (list!18985 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))))))))

(declare-fun e!3160825 () List!58556)

(assert (=> d!1632424 (= lt!2088633 e!3160825)))

(declare-fun c!869267 () Bool)

(assert (=> d!1632424 (= c!869267 ((_ is Nil!58432) (t!371279 (list!18985 (left!42813 xs!286)))))))

(assert (=> d!1632424 (= (++!12784 (t!371279 (list!18985 (left!42813 xs!286))) (list!18985 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))) lt!2088633)))

(declare-fun b!5064699 () Bool)

(assert (=> b!5064699 (= e!3160825 (Cons!58432 (h!64880 (t!371279 (list!18985 (left!42813 xs!286)))) (++!12784 (t!371279 (t!371279 (list!18985 (left!42813 xs!286)))) (list!18985 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)))))))

(declare-fun b!5064701 () Bool)

(assert (=> b!5064701 (= e!3160826 (or (not (= (list!18985 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)) Nil!58432)) (= lt!2088633 (t!371279 (list!18985 (left!42813 xs!286))))))))

(declare-fun b!5064698 () Bool)

(assert (=> b!5064698 (= e!3160825 (list!18985 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445)))))

(declare-fun b!5064700 () Bool)

(declare-fun res!2156545 () Bool)

(assert (=> b!5064700 (=> (not res!2156545) (not e!3160826))))

(assert (=> b!5064700 (= res!2156545 (= (size!39071 lt!2088633) (+ (size!39071 (t!371279 (list!18985 (left!42813 xs!286)))) (size!39071 (list!18985 (<>!394 (left!42813 (right!43143 xs!286)) lt!2088445))))))))

(assert (= (and d!1632424 c!869267) b!5064698))

(assert (= (and d!1632424 (not c!869267)) b!5064699))

(assert (= (and d!1632424 res!2156544) b!5064700))

(assert (= (and b!5064700 res!2156545) b!5064701))

(declare-fun m!6105518 () Bool)

(assert (=> d!1632424 m!6105518))

(assert (=> d!1632424 m!6105494))

(assert (=> d!1632424 m!6103472))

(assert (=> d!1632424 m!6104638))

(assert (=> b!5064699 m!6103472))

(declare-fun m!6105520 () Bool)

(assert (=> b!5064699 m!6105520))

(declare-fun m!6105522 () Bool)

(assert (=> b!5064700 m!6105522))

(assert (=> b!5064700 m!6105308))

(assert (=> b!5064700 m!6103472))

(assert (=> b!5064700 m!6103700))

(assert (=> b!5064275 d!1632424))

(declare-fun d!1632426 () Bool)

(assert (=> d!1632426 (= (max!0 (height!2139 (left!42813 ys!41)) (height!2139 (right!43143 ys!41))) (ite (< (height!2139 (left!42813 ys!41)) (height!2139 (right!43143 ys!41))) (height!2139 (right!43143 ys!41)) (height!2139 (left!42813 ys!41))))))

(assert (=> b!5064119 d!1632426))

(assert (=> b!5064119 d!1631746))

(assert (=> b!5064119 d!1631750))

(declare-fun d!1632428 () Bool)

(declare-fun e!3160828 () Bool)

(assert (=> d!1632428 e!3160828))

(declare-fun res!2156546 () Bool)

(assert (=> d!1632428 (=> (not res!2156546) (not e!3160828))))

(declare-fun lt!2088634 () List!58556)

(assert (=> d!1632428 (= res!2156546 (= (content!10415 lt!2088634) ((_ map or) (content!10415 (list!18985 (left!42813 (left!42813 lt!2088442)))) (content!10415 (list!18985 (right!43143 (left!42813 lt!2088442)))))))))

(declare-fun e!3160827 () List!58556)

(assert (=> d!1632428 (= lt!2088634 e!3160827)))

(declare-fun c!869268 () Bool)

(assert (=> d!1632428 (= c!869268 ((_ is Nil!58432) (list!18985 (left!42813 (left!42813 lt!2088442)))))))

(assert (=> d!1632428 (= (++!12784 (list!18985 (left!42813 (left!42813 lt!2088442))) (list!18985 (right!43143 (left!42813 lt!2088442)))) lt!2088634)))

(declare-fun b!5064703 () Bool)

(assert (=> b!5064703 (= e!3160827 (Cons!58432 (h!64880 (list!18985 (left!42813 (left!42813 lt!2088442)))) (++!12784 (t!371279 (list!18985 (left!42813 (left!42813 lt!2088442)))) (list!18985 (right!43143 (left!42813 lt!2088442))))))))

(declare-fun b!5064705 () Bool)

(assert (=> b!5064705 (= e!3160828 (or (not (= (list!18985 (right!43143 (left!42813 lt!2088442))) Nil!58432)) (= lt!2088634 (list!18985 (left!42813 (left!42813 lt!2088442))))))))

(declare-fun b!5064702 () Bool)

(assert (=> b!5064702 (= e!3160827 (list!18985 (right!43143 (left!42813 lt!2088442))))))

(declare-fun b!5064704 () Bool)

(declare-fun res!2156547 () Bool)

(assert (=> b!5064704 (=> (not res!2156547) (not e!3160828))))

(assert (=> b!5064704 (= res!2156547 (= (size!39071 lt!2088634) (+ (size!39071 (list!18985 (left!42813 (left!42813 lt!2088442)))) (size!39071 (list!18985 (right!43143 (left!42813 lt!2088442)))))))))

(assert (= (and d!1632428 c!869268) b!5064702))

(assert (= (and d!1632428 (not c!869268)) b!5064703))

(assert (= (and d!1632428 res!2156546) b!5064704))

(assert (= (and b!5064704 res!2156547) b!5064705))

(declare-fun m!6105524 () Bool)

(assert (=> d!1632428 m!6105524))

(assert (=> d!1632428 m!6103896))

(declare-fun m!6105526 () Bool)

(assert (=> d!1632428 m!6105526))

(assert (=> d!1632428 m!6103898))

(declare-fun m!6105528 () Bool)

(assert (=> d!1632428 m!6105528))

(assert (=> b!5064703 m!6103898))

(declare-fun m!6105530 () Bool)

(assert (=> b!5064703 m!6105530))

(declare-fun m!6105532 () Bool)

(assert (=> b!5064704 m!6105532))

(assert (=> b!5064704 m!6103896))

(declare-fun m!6105534 () Bool)

(assert (=> b!5064704 m!6105534))

(assert (=> b!5064704 m!6103898))

(declare-fun m!6105536 () Bool)

(assert (=> b!5064704 m!6105536))

(assert (=> b!5063892 d!1632428))

(declare-fun d!1632430 () Bool)

(declare-fun c!869269 () Bool)

(assert (=> d!1632430 (= c!869269 ((_ is Empty!15562) (left!42813 (left!42813 lt!2088442))))))

(declare-fun e!3160829 () List!58556)

(assert (=> d!1632430 (= (list!18985 (left!42813 (left!42813 lt!2088442))) e!3160829)))

(declare-fun b!5064709 () Bool)

(declare-fun e!3160830 () List!58556)

(assert (=> b!5064709 (= e!3160830 (++!12784 (list!18985 (left!42813 (left!42813 (left!42813 lt!2088442)))) (list!18985 (right!43143 (left!42813 (left!42813 lt!2088442))))))))

(declare-fun b!5064706 () Bool)

(assert (=> b!5064706 (= e!3160829 Nil!58432)))

(declare-fun b!5064708 () Bool)

(assert (=> b!5064708 (= e!3160830 (list!18986 (xs!18906 (left!42813 (left!42813 lt!2088442)))))))

(declare-fun b!5064707 () Bool)

(assert (=> b!5064707 (= e!3160829 e!3160830)))

(declare-fun c!869270 () Bool)

(assert (=> b!5064707 (= c!869270 ((_ is Leaf!25848) (left!42813 (left!42813 lt!2088442))))))

(assert (= (and d!1632430 c!869269) b!5064706))

(assert (= (and d!1632430 (not c!869269)) b!5064707))

(assert (= (and b!5064707 c!869270) b!5064708))

(assert (= (and b!5064707 (not c!869270)) b!5064709))

(declare-fun m!6105538 () Bool)

(assert (=> b!5064709 m!6105538))

(declare-fun m!6105540 () Bool)

(assert (=> b!5064709 m!6105540))

(assert (=> b!5064709 m!6105538))

(assert (=> b!5064709 m!6105540))

(declare-fun m!6105542 () Bool)

(assert (=> b!5064709 m!6105542))

(declare-fun m!6105544 () Bool)

(assert (=> b!5064708 m!6105544))

(assert (=> b!5063892 d!1632430))

(declare-fun d!1632432 () Bool)

(declare-fun c!869271 () Bool)

(assert (=> d!1632432 (= c!869271 ((_ is Empty!15562) (right!43143 (left!42813 lt!2088442))))))

(declare-fun e!3160831 () List!58556)

(assert (=> d!1632432 (= (list!18985 (right!43143 (left!42813 lt!2088442))) e!3160831)))

(declare-fun b!5064713 () Bool)

(declare-fun e!3160832 () List!58556)

(assert (=> b!5064713 (= e!3160832 (++!12784 (list!18985 (left!42813 (right!43143 (left!42813 lt!2088442)))) (list!18985 (right!43143 (right!43143 (left!42813 lt!2088442))))))))

(declare-fun b!5064710 () Bool)

(assert (=> b!5064710 (= e!3160831 Nil!58432)))

(declare-fun b!5064712 () Bool)

(assert (=> b!5064712 (= e!3160832 (list!18986 (xs!18906 (right!43143 (left!42813 lt!2088442)))))))

(declare-fun b!5064711 () Bool)

(assert (=> b!5064711 (= e!3160831 e!3160832)))

(declare-fun c!869272 () Bool)

(assert (=> b!5064711 (= c!869272 ((_ is Leaf!25848) (right!43143 (left!42813 lt!2088442))))))

(assert (= (and d!1632432 c!869271) b!5064710))

(assert (= (and d!1632432 (not c!869271)) b!5064711))

(assert (= (and b!5064711 c!869272) b!5064712))

(assert (= (and b!5064711 (not c!869272)) b!5064713))

(declare-fun m!6105546 () Bool)

(assert (=> b!5064713 m!6105546))

(declare-fun m!6105548 () Bool)

(assert (=> b!5064713 m!6105548))

(assert (=> b!5064713 m!6105546))

(assert (=> b!5064713 m!6105548))

(declare-fun m!6105550 () Bool)

(assert (=> b!5064713 m!6105550))

(declare-fun m!6105552 () Bool)

(assert (=> b!5064712 m!6105552))

(assert (=> b!5063892 d!1632432))

(declare-fun d!1632434 () Bool)

(declare-fun e!3160834 () Bool)

(assert (=> d!1632434 e!3160834))

(declare-fun res!2156548 () Bool)

(assert (=> d!1632434 (=> (not res!2156548) (not e!3160834))))

(declare-fun lt!2088635 () List!58556)

(assert (=> d!1632434 (= res!2156548 (= (content!10415 lt!2088635) ((_ map or) (content!10415 (t!371279 (list!18985 (left!42813 xs!286)))) (content!10415 (list!18985 (right!43143 xs!286))))))))

(declare-fun e!3160833 () List!58556)

(assert (=> d!1632434 (= lt!2088635 e!3160833)))

(declare-fun c!869273 () Bool)

(assert (=> d!1632434 (= c!869273 ((_ is Nil!58432) (t!371279 (list!18985 (left!42813 xs!286)))))))

(assert (=> d!1632434 (= (++!12784 (t!371279 (list!18985 (left!42813 xs!286))) (list!18985 (right!43143 xs!286))) lt!2088635)))

(declare-fun b!5064715 () Bool)

(assert (=> b!5064715 (= e!3160833 (Cons!58432 (h!64880 (t!371279 (list!18985 (left!42813 xs!286)))) (++!12784 (t!371279 (t!371279 (list!18985 (left!42813 xs!286)))) (list!18985 (right!43143 xs!286)))))))

(declare-fun b!5064717 () Bool)

(assert (=> b!5064717 (= e!3160834 (or (not (= (list!18985 (right!43143 xs!286)) Nil!58432)) (= lt!2088635 (t!371279 (list!18985 (left!42813 xs!286))))))))

(declare-fun b!5064714 () Bool)

(assert (=> b!5064714 (= e!3160833 (list!18985 (right!43143 xs!286)))))

(declare-fun b!5064716 () Bool)

(declare-fun res!2156549 () Bool)

(assert (=> b!5064716 (=> (not res!2156549) (not e!3160834))))

(assert (=> b!5064716 (= res!2156549 (= (size!39071 lt!2088635) (+ (size!39071 (t!371279 (list!18985 (left!42813 xs!286)))) (size!39071 (list!18985 (right!43143 xs!286))))))))

(assert (= (and d!1632434 c!869273) b!5064714))

(assert (= (and d!1632434 (not c!869273)) b!5064715))

(assert (= (and d!1632434 res!2156548) b!5064716))

(assert (= (and b!5064716 res!2156549) b!5064717))

(declare-fun m!6105554 () Bool)

(assert (=> d!1632434 m!6105554))

(assert (=> d!1632434 m!6105494))

(assert (=> d!1632434 m!6103184))

(assert (=> d!1632434 m!6104620))

(assert (=> b!5064715 m!6103184))

(declare-fun m!6105556 () Bool)

(assert (=> b!5064715 m!6105556))

(declare-fun m!6105558 () Bool)

(assert (=> b!5064716 m!6105558))

(assert (=> b!5064716 m!6105308))

(assert (=> b!5064716 m!6103184))

(assert (=> b!5064716 m!6104626))

(assert (=> b!5064267 d!1632434))

(declare-fun d!1632436 () Bool)

(declare-fun lt!2088636 () Int)

(assert (=> d!1632436 (>= lt!2088636 0)))

(declare-fun e!3160835 () Int)

(assert (=> d!1632436 (= lt!2088636 e!3160835)))

(declare-fun c!869274 () Bool)

(assert (=> d!1632436 (= c!869274 ((_ is Nil!58432) (list!18986 (xs!18906 (right!43143 ys!41)))))))

(assert (=> d!1632436 (= (size!39071 (list!18986 (xs!18906 (right!43143 ys!41)))) lt!2088636)))

(declare-fun b!5064718 () Bool)

(assert (=> b!5064718 (= e!3160835 0)))

(declare-fun b!5064719 () Bool)

(assert (=> b!5064719 (= e!3160835 (+ 1 (size!39071 (t!371279 (list!18986 (xs!18906 (right!43143 ys!41)))))))))

(assert (= (and d!1632436 c!869274) b!5064718))

(assert (= (and d!1632436 (not c!869274)) b!5064719))

(declare-fun m!6105560 () Bool)

(assert (=> b!5064719 m!6105560))

(assert (=> b!5064020 d!1632436))

(assert (=> b!5064020 d!1632222))

(declare-fun d!1632438 () Bool)

(assert (=> d!1632438 (= (list!18986 (xs!18906 (right!43143 lt!2088442))) (innerList!15650 (xs!18906 (right!43143 lt!2088442))))))

(assert (=> b!5063895 d!1632438))

(declare-fun d!1632440 () Bool)

(declare-fun e!3160837 () Bool)

(assert (=> d!1632440 e!3160837))

(declare-fun res!2156550 () Bool)

(assert (=> d!1632440 (=> (not res!2156550) (not e!3160837))))

(declare-fun lt!2088637 () List!58556)

(assert (=> d!1632440 (= res!2156550 (= (content!10415 lt!2088637) ((_ map or) (content!10415 call!352751) (content!10415 (list!18985 (right!43143 ys!41))))))))

(declare-fun e!3160836 () List!58556)

(assert (=> d!1632440 (= lt!2088637 e!3160836)))

(declare-fun c!869275 () Bool)

(assert (=> d!1632440 (= c!869275 ((_ is Nil!58432) call!352751))))

(assert (=> d!1632440 (= (++!12784 call!352751 (list!18985 (right!43143 ys!41))) lt!2088637)))

(declare-fun b!5064721 () Bool)

(assert (=> b!5064721 (= e!3160836 (Cons!58432 (h!64880 call!352751) (++!12784 (t!371279 call!352751) (list!18985 (right!43143 ys!41)))))))

(declare-fun b!5064723 () Bool)

(assert (=> b!5064723 (= e!3160837 (or (not (= (list!18985 (right!43143 ys!41)) Nil!58432)) (= lt!2088637 call!352751)))))

(declare-fun b!5064720 () Bool)

(assert (=> b!5064720 (= e!3160836 (list!18985 (right!43143 ys!41)))))

(declare-fun b!5064722 () Bool)

(declare-fun res!2156551 () Bool)

(assert (=> b!5064722 (=> (not res!2156551) (not e!3160837))))

(assert (=> b!5064722 (= res!2156551 (= (size!39071 lt!2088637) (+ (size!39071 call!352751) (size!39071 (list!18985 (right!43143 ys!41))))))))

(assert (= (and d!1632440 c!869275) b!5064720))

(assert (= (and d!1632440 (not c!869275)) b!5064721))

(assert (= (and d!1632440 res!2156550) b!5064722))

(assert (= (and b!5064722 res!2156551) b!5064723))

(declare-fun m!6105562 () Bool)

(assert (=> d!1632440 m!6105562))

(declare-fun m!6105564 () Bool)

(assert (=> d!1632440 m!6105564))

(assert (=> d!1632440 m!6103192))

(assert (=> d!1632440 m!6103848))

(assert (=> b!5064721 m!6103192))

(declare-fun m!6105566 () Bool)

(assert (=> b!5064721 m!6105566))

(declare-fun m!6105568 () Bool)

(assert (=> b!5064722 m!6105568))

(declare-fun m!6105570 () Bool)

(assert (=> b!5064722 m!6105570))

(assert (=> b!5064722 m!6103192))

(assert (=> b!5064722 m!6103856))

(assert (=> bm!352745 d!1632440))

(assert (=> d!1631900 d!1632106))

(assert (=> d!1631900 d!1632108))

(declare-fun d!1632442 () Bool)

(declare-fun e!3160839 () Bool)

(assert (=> d!1632442 e!3160839))

(declare-fun res!2156552 () Bool)

(assert (=> d!1632442 (=> (not res!2156552) (not e!3160839))))

(declare-fun lt!2088638 () List!58556)

(assert (=> d!1632442 (= res!2156552 (= (content!10415 lt!2088638) ((_ map or) (content!10415 call!352771) (content!10415 (list!18985 (right!43143 ys!41))))))))

(declare-fun e!3160838 () List!58556)

(assert (=> d!1632442 (= lt!2088638 e!3160838)))

(declare-fun c!869276 () Bool)

(assert (=> d!1632442 (= c!869276 ((_ is Nil!58432) call!352771))))

(assert (=> d!1632442 (= (++!12784 call!352771 (list!18985 (right!43143 ys!41))) lt!2088638)))

(declare-fun b!5064725 () Bool)

(assert (=> b!5064725 (= e!3160838 (Cons!58432 (h!64880 call!352771) (++!12784 (t!371279 call!352771) (list!18985 (right!43143 ys!41)))))))

(declare-fun b!5064727 () Bool)

(assert (=> b!5064727 (= e!3160839 (or (not (= (list!18985 (right!43143 ys!41)) Nil!58432)) (= lt!2088638 call!352771)))))

(declare-fun b!5064724 () Bool)

(assert (=> b!5064724 (= e!3160838 (list!18985 (right!43143 ys!41)))))

(declare-fun b!5064726 () Bool)

(declare-fun res!2156553 () Bool)

(assert (=> b!5064726 (=> (not res!2156553) (not e!3160839))))

(assert (=> b!5064726 (= res!2156553 (= (size!39071 lt!2088638) (+ (size!39071 call!352771) (size!39071 (list!18985 (right!43143 ys!41))))))))

(assert (= (and d!1632442 c!869276) b!5064724))

(assert (= (and d!1632442 (not c!869276)) b!5064725))

(assert (= (and d!1632442 res!2156552) b!5064726))

(assert (= (and b!5064726 res!2156553) b!5064727))

(declare-fun m!6105572 () Bool)

(assert (=> d!1632442 m!6105572))

(declare-fun m!6105574 () Bool)

(assert (=> d!1632442 m!6105574))

(assert (=> d!1632442 m!6103192))

(assert (=> d!1632442 m!6103848))

(assert (=> b!5064725 m!6103192))

(declare-fun m!6105576 () Bool)

(assert (=> b!5064725 m!6105576))

(declare-fun m!6105578 () Bool)

(assert (=> b!5064726 m!6105578))

(declare-fun m!6105580 () Bool)

(assert (=> b!5064726 m!6105580))

(assert (=> b!5064726 m!6103192))

(assert (=> b!5064726 m!6103856))

(assert (=> bm!352765 d!1632442))

(declare-fun d!1632444 () Bool)

(declare-fun lt!2088639 () Bool)

(assert (=> d!1632444 (= lt!2088639 (isEmpty!31628 (list!18985 (right!43143 (left!42813 lt!2088442)))))))

(assert (=> d!1632444 (= lt!2088639 (= (size!39073 (right!43143 (left!42813 lt!2088442))) 0))))

(assert (=> d!1632444 (= (isEmpty!31626 (right!43143 (left!42813 lt!2088442))) lt!2088639)))

(declare-fun bs!1189824 () Bool)

(assert (= bs!1189824 d!1632444))

(assert (=> bs!1189824 m!6103898))

(assert (=> bs!1189824 m!6103898))

(declare-fun m!6105582 () Bool)

(assert (=> bs!1189824 m!6105582))

(declare-fun m!6105584 () Bool)

(assert (=> bs!1189824 m!6105584))

(assert (=> b!5063876 d!1632444))

(declare-fun d!1632446 () Bool)

(declare-fun lt!2088640 () Int)

(assert (=> d!1632446 (= lt!2088640 (size!39071 (list!18985 (left!42813 (left!42813 xs!286)))))))

(assert (=> d!1632446 (= lt!2088640 (ite ((_ is Empty!15562) (left!42813 (left!42813 xs!286))) 0 (ite ((_ is Leaf!25848) (left!42813 (left!42813 xs!286))) (csize!31355 (left!42813 (left!42813 xs!286))) (csize!31354 (left!42813 (left!42813 xs!286))))))))

(assert (=> d!1632446 (= (size!39073 (left!42813 (left!42813 xs!286))) lt!2088640)))

(declare-fun bs!1189825 () Bool)

(assert (= bs!1189825 d!1632446))

(assert (=> bs!1189825 m!6103972))

(assert (=> bs!1189825 m!6103972))

(declare-fun m!6105586 () Bool)

(assert (=> bs!1189825 m!6105586))

(assert (=> d!1632046 d!1632446))

(declare-fun d!1632448 () Bool)

(declare-fun lt!2088641 () Int)

(assert (=> d!1632448 (= lt!2088641 (size!39071 (list!18985 (right!43143 (left!42813 xs!286)))))))

(assert (=> d!1632448 (= lt!2088641 (ite ((_ is Empty!15562) (right!43143 (left!42813 xs!286))) 0 (ite ((_ is Leaf!25848) (right!43143 (left!42813 xs!286))) (csize!31355 (right!43143 (left!42813 xs!286))) (csize!31354 (right!43143 (left!42813 xs!286))))))))

(assert (=> d!1632448 (= (size!39073 (right!43143 (left!42813 xs!286))) lt!2088641)))

(declare-fun bs!1189826 () Bool)

(assert (= bs!1189826 d!1632448))

(assert (=> bs!1189826 m!6103974))

(assert (=> bs!1189826 m!6103974))

(declare-fun m!6105588 () Bool)

(assert (=> bs!1189826 m!6105588))

(assert (=> d!1632046 d!1632448))

(assert (=> bm!352726 d!1632088))

(declare-fun d!1632450 () Bool)

(assert (=> d!1632450 (= (inv!77545 (xs!18906 (right!43143 (left!42813 xs!286)))) (<= (size!39071 (innerList!15650 (xs!18906 (right!43143 (left!42813 xs!286))))) 2147483647))))

(declare-fun bs!1189827 () Bool)

(assert (= bs!1189827 d!1632450))

(declare-fun m!6105590 () Bool)

(assert (=> bs!1189827 m!6105590))

(assert (=> b!5064302 d!1632450))

(declare-fun d!1632452 () Bool)

(declare-fun res!2156554 () Bool)

(declare-fun e!3160840 () Bool)

(assert (=> d!1632452 (=> (not res!2156554) (not e!3160840))))

(assert (=> d!1632452 (= res!2156554 (= (csize!31354 (left!42813 (left!42813 ys!41))) (+ (size!39073 (left!42813 (left!42813 (left!42813 ys!41)))) (size!39073 (right!43143 (left!42813 (left!42813 ys!41)))))))))

(assert (=> d!1632452 (= (inv!77548 (left!42813 (left!42813 ys!41))) e!3160840)))

(declare-fun b!5064728 () Bool)

(declare-fun res!2156555 () Bool)

(assert (=> b!5064728 (=> (not res!2156555) (not e!3160840))))

(assert (=> b!5064728 (= res!2156555 (and (not (= (left!42813 (left!42813 (left!42813 ys!41))) Empty!15562)) (not (= (right!43143 (left!42813 (left!42813 ys!41))) Empty!15562))))))

(declare-fun b!5064729 () Bool)

(declare-fun res!2156556 () Bool)

(assert (=> b!5064729 (=> (not res!2156556) (not e!3160840))))

(assert (=> b!5064729 (= res!2156556 (= (cheight!15773 (left!42813 (left!42813 ys!41))) (+ (max!0 (height!2139 (left!42813 (left!42813 (left!42813 ys!41)))) (height!2139 (right!43143 (left!42813 (left!42813 ys!41))))) 1)))))

(declare-fun b!5064730 () Bool)

(assert (=> b!5064730 (= e!3160840 (<= 0 (cheight!15773 (left!42813 (left!42813 ys!41)))))))

(assert (= (and d!1632452 res!2156554) b!5064728))

(assert (= (and b!5064728 res!2156555) b!5064729))

(assert (= (and b!5064729 res!2156556) b!5064730))

(declare-fun m!6105592 () Bool)

(assert (=> d!1632452 m!6105592))

(declare-fun m!6105594 () Bool)

(assert (=> d!1632452 m!6105594))

(declare-fun m!6105596 () Bool)

(assert (=> b!5064729 m!6105596))

(declare-fun m!6105598 () Bool)

(assert (=> b!5064729 m!6105598))

(assert (=> b!5064729 m!6105596))

(assert (=> b!5064729 m!6105598))

(declare-fun m!6105600 () Bool)

(assert (=> b!5064729 m!6105600))

(assert (=> b!5063957 d!1632452))

(assert (=> bm!352771 d!1631862))

(declare-fun d!1632454 () Bool)

(assert (=> d!1632454 (= (height!2139 (left!42813 (right!43143 lt!2088442))) (ite ((_ is Empty!15562) (left!42813 (right!43143 lt!2088442))) 0 (ite ((_ is Leaf!25848) (left!42813 (right!43143 lt!2088442))) 1 (cheight!15773 (left!42813 (right!43143 lt!2088442))))))))

(assert (=> b!5064292 d!1632454))

(declare-fun d!1632456 () Bool)

(assert (=> d!1632456 (= (height!2139 (right!43143 (right!43143 lt!2088442))) (ite ((_ is Empty!15562) (right!43143 (right!43143 lt!2088442))) 0 (ite ((_ is Leaf!25848) (right!43143 (right!43143 lt!2088442))) 1 (cheight!15773 (right!43143 (right!43143 lt!2088442))))))))

(assert (=> b!5064292 d!1632456))

(declare-fun d!1632458 () Bool)

(declare-fun lt!2088642 () Bool)

(assert (=> d!1632458 (= lt!2088642 (isEmpty!31628 (list!18985 (left!42813 (right!43143 ys!41)))))))

(assert (=> d!1632458 (= lt!2088642 (= (size!39073 (left!42813 (right!43143 ys!41))) 0))))

(assert (=> d!1632458 (= (isEmpty!31626 (left!42813 (right!43143 ys!41))) lt!2088642)))

(declare-fun bs!1189828 () Bool)

(assert (= bs!1189828 d!1632458))

(assert (=> bs!1189828 m!6103862))

(assert (=> bs!1189828 m!6103862))

(declare-fun m!6105602 () Bool)

(assert (=> bs!1189828 m!6105602))

(assert (=> bs!1189828 m!6104296))

(assert (=> b!5063855 d!1632458))

(declare-fun d!1632460 () Bool)

(assert (=> d!1632460 (= (list!18986 (xs!18906 (left!42813 (left!42813 ys!41)))) (innerList!15650 (xs!18906 (left!42813 (left!42813 ys!41)))))))

(assert (=> b!5063993 d!1632460))

(declare-fun d!1632462 () Bool)

(assert (=> d!1632462 (= (height!2139 (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41))))) (ite ((_ is Empty!15562) (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41))))) 0 (ite ((_ is Leaf!25848) (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41))))) 1 (cheight!15773 (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41))))))))))

(assert (=> b!5064032 d!1632462))

(declare-fun d!1632464 () Bool)

(declare-fun lt!2088643 () Int)

(assert (=> d!1632464 (= lt!2088643 (size!39071 (list!18985 (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41))))))))))

(assert (=> d!1632464 (= lt!2088643 (ite ((_ is Empty!15562) (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41)))))) 0 (ite ((_ is Leaf!25848) (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41)))))) (csize!31355 (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41)))))) (csize!31354 (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41)))))))))))

(assert (=> d!1632464 (= (size!39073 (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41)))))) lt!2088643)))

(declare-fun bs!1189829 () Bool)

(assert (= bs!1189829 d!1632464))

(assert (=> bs!1189829 m!6104198))

(assert (=> bs!1189829 m!6104198))

(declare-fun m!6105604 () Bool)

(assert (=> bs!1189829 m!6105604))

(assert (=> b!5064032 d!1632464))

(declare-fun d!1632466 () Bool)

(assert (=> d!1632466 (= (height!2139 (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41)))))) (ite ((_ is Empty!15562) (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41)))))) 0 (ite ((_ is Leaf!25848) (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41)))))) 1 (cheight!15773 (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41)))))))))))

(assert (=> b!5064032 d!1632466))

(declare-fun d!1632468 () Bool)

(declare-fun lt!2088644 () Int)

(assert (=> d!1632468 (= lt!2088644 (size!39071 (list!18985 (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41)))))))))

(assert (=> d!1632468 (= lt!2088644 (ite ((_ is Empty!15562) (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41))))) 0 (ite ((_ is Leaf!25848) (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41))))) (csize!31355 (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41))))) (csize!31354 (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41))))))))))

(assert (=> d!1632468 (= (size!39073 (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41))))) lt!2088644)))

(declare-fun bs!1189830 () Bool)

(assert (= bs!1189830 d!1632468))

(assert (=> bs!1189830 m!6104200))

(assert (=> bs!1189830 m!6104200))

(declare-fun m!6105606 () Bool)

(assert (=> bs!1189830 m!6105606))

(assert (=> b!5064032 d!1632468))

(declare-fun d!1632470 () Bool)

(assert (=> d!1632470 (= (max!0 (height!2139 (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41)))))) (height!2139 (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41)))))) (ite (< (height!2139 (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41)))))) (height!2139 (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41)))))) (height!2139 (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41))))) (height!2139 (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41))))))))))

(assert (=> b!5064032 d!1632470))

(declare-fun d!1632472 () Bool)

(assert (=> d!1632472 (= (max!0 (height!2139 (left!42813 (right!43143 xs!286))) (height!2139 (right!43143 (right!43143 xs!286)))) (ite (< (height!2139 (left!42813 (right!43143 xs!286))) (height!2139 (right!43143 (right!43143 xs!286)))) (height!2139 (right!43143 (right!43143 xs!286))) (height!2139 (left!42813 (right!43143 xs!286)))))))

(assert (=> b!5064086 d!1632472))

(assert (=> b!5064086 d!1631872))

(assert (=> b!5064086 d!1632052))

(declare-fun d!1632474 () Bool)

(assert (=> d!1632474 (= (isEmpty!31628 (list!18985 (right!43143 xs!286))) ((_ is Nil!58432) (list!18985 (right!43143 xs!286))))))

(assert (=> d!1632102 d!1632474))

(assert (=> d!1632102 d!1631850))

(declare-fun d!1632476 () Bool)

(declare-fun lt!2088645 () Int)

(assert (=> d!1632476 (= lt!2088645 (size!39071 (list!18985 (right!43143 xs!286))))))

(assert (=> d!1632476 (= lt!2088645 (ite ((_ is Empty!15562) (right!43143 xs!286)) 0 (ite ((_ is Leaf!25848) (right!43143 xs!286)) (csize!31355 (right!43143 xs!286)) (csize!31354 (right!43143 xs!286)))))))

(assert (=> d!1632476 (= (size!39073 (right!43143 xs!286)) lt!2088645)))

(declare-fun bs!1189831 () Bool)

(assert (= bs!1189831 d!1632476))

(assert (=> bs!1189831 m!6103184))

(assert (=> bs!1189831 m!6103184))

(assert (=> bs!1189831 m!6104626))

(assert (=> d!1632102 d!1632476))

(assert (=> b!5064138 d!1632394))

(assert (=> b!5064138 d!1632396))

(declare-fun b!5064731 () Bool)

(declare-fun res!2156559 () Bool)

(declare-fun e!3160841 () Bool)

(assert (=> b!5064731 (=> (not res!2156559) (not e!3160841))))

(assert (=> b!5064731 (= res!2156559 (not (isEmpty!31626 (left!42813 (left!42813 (left!42813 xs!286))))))))

(declare-fun b!5064732 () Bool)

(declare-fun res!2156562 () Bool)

(assert (=> b!5064732 (=> (not res!2156562) (not e!3160841))))

(assert (=> b!5064732 (= res!2156562 (<= (- (height!2139 (left!42813 (left!42813 (left!42813 xs!286)))) (height!2139 (right!43143 (left!42813 (left!42813 xs!286))))) 1))))

(declare-fun b!5064733 () Bool)

(declare-fun e!3160842 () Bool)

(assert (=> b!5064733 (= e!3160842 e!3160841)))

(declare-fun res!2156561 () Bool)

(assert (=> b!5064733 (=> (not res!2156561) (not e!3160841))))

(assert (=> b!5064733 (= res!2156561 (<= (- 1) (- (height!2139 (left!42813 (left!42813 (left!42813 xs!286)))) (height!2139 (right!43143 (left!42813 (left!42813 xs!286)))))))))

(declare-fun d!1632478 () Bool)

(declare-fun res!2156558 () Bool)

(assert (=> d!1632478 (=> res!2156558 e!3160842)))

(assert (=> d!1632478 (= res!2156558 (not ((_ is Node!15562) (left!42813 (left!42813 xs!286)))))))

(assert (=> d!1632478 (= (isBalanced!4424 (left!42813 (left!42813 xs!286))) e!3160842)))

(declare-fun b!5064734 () Bool)

(assert (=> b!5064734 (= e!3160841 (not (isEmpty!31626 (right!43143 (left!42813 (left!42813 xs!286))))))))

(declare-fun b!5064735 () Bool)

(declare-fun res!2156557 () Bool)

(assert (=> b!5064735 (=> (not res!2156557) (not e!3160841))))

(assert (=> b!5064735 (= res!2156557 (isBalanced!4424 (left!42813 (left!42813 (left!42813 xs!286)))))))

(declare-fun b!5064736 () Bool)

(declare-fun res!2156560 () Bool)

(assert (=> b!5064736 (=> (not res!2156560) (not e!3160841))))

(assert (=> b!5064736 (= res!2156560 (isBalanced!4424 (right!43143 (left!42813 (left!42813 xs!286)))))))

(assert (= (and d!1632478 (not res!2156558)) b!5064733))

(assert (= (and b!5064733 res!2156561) b!5064732))

(assert (= (and b!5064732 res!2156562) b!5064735))

(assert (= (and b!5064735 res!2156557) b!5064736))

(assert (= (and b!5064736 res!2156560) b!5064731))

(assert (= (and b!5064731 res!2156559) b!5064734))

(declare-fun m!6105608 () Bool)

(assert (=> b!5064735 m!6105608))

(declare-fun m!6105610 () Bool)

(assert (=> b!5064734 m!6105610))

(declare-fun m!6105612 () Bool)

(assert (=> b!5064731 m!6105612))

(declare-fun m!6105614 () Bool)

(assert (=> b!5064732 m!6105614))

(declare-fun m!6105616 () Bool)

(assert (=> b!5064732 m!6105616))

(declare-fun m!6105618 () Bool)

(assert (=> b!5064736 m!6105618))

(assert (=> b!5064733 m!6105614))

(assert (=> b!5064733 m!6105616))

(assert (=> b!5064042 d!1632478))

(declare-fun d!1632480 () Bool)

(declare-fun lt!2088646 () Int)

(assert (=> d!1632480 (>= lt!2088646 0)))

(declare-fun e!3160843 () Int)

(assert (=> d!1632480 (= lt!2088646 e!3160843)))

(declare-fun c!869277 () Bool)

(assert (=> d!1632480 (= c!869277 ((_ is Nil!58432) (t!371279 lt!2088448)))))

(assert (=> d!1632480 (= (size!39071 (t!371279 lt!2088448)) lt!2088646)))

(declare-fun b!5064737 () Bool)

(assert (=> b!5064737 (= e!3160843 0)))

(declare-fun b!5064738 () Bool)

(assert (=> b!5064738 (= e!3160843 (+ 1 (size!39071 (t!371279 (t!371279 lt!2088448)))))))

(assert (= (and d!1632480 c!869277) b!5064737))

(assert (= (and d!1632480 (not c!869277)) b!5064738))

(declare-fun m!6105620 () Bool)

(assert (=> b!5064738 m!6105620))

(assert (=> b!5064215 d!1632480))

(declare-fun d!1632482 () Bool)

(declare-fun res!2156563 () Bool)

(declare-fun e!3160844 () Bool)

(assert (=> d!1632482 (=> (not res!2156563) (not e!3160844))))

(assert (=> d!1632482 (= res!2156563 (= (csize!31354 (right!43143 (right!43143 xs!286))) (+ (size!39073 (left!42813 (right!43143 (right!43143 xs!286)))) (size!39073 (right!43143 (right!43143 (right!43143 xs!286)))))))))

(assert (=> d!1632482 (= (inv!77548 (right!43143 (right!43143 xs!286))) e!3160844)))

(declare-fun b!5064739 () Bool)

(declare-fun res!2156564 () Bool)

(assert (=> b!5064739 (=> (not res!2156564) (not e!3160844))))

(assert (=> b!5064739 (= res!2156564 (and (not (= (left!42813 (right!43143 (right!43143 xs!286))) Empty!15562)) (not (= (right!43143 (right!43143 (right!43143 xs!286))) Empty!15562))))))

(declare-fun b!5064740 () Bool)

(declare-fun res!2156565 () Bool)

(assert (=> b!5064740 (=> (not res!2156565) (not e!3160844))))

(assert (=> b!5064740 (= res!2156565 (= (cheight!15773 (right!43143 (right!43143 xs!286))) (+ (max!0 (height!2139 (left!42813 (right!43143 (right!43143 xs!286)))) (height!2139 (right!43143 (right!43143 (right!43143 xs!286))))) 1)))))

(declare-fun b!5064741 () Bool)

(assert (=> b!5064741 (= e!3160844 (<= 0 (cheight!15773 (right!43143 (right!43143 xs!286)))))))

(assert (= (and d!1632482 res!2156563) b!5064739))

(assert (= (and b!5064739 res!2156564) b!5064740))

(assert (= (and b!5064740 res!2156565) b!5064741))

(assert (=> d!1632482 m!6105408))

(assert (=> d!1632482 m!6104776))

(assert (=> b!5064740 m!6103662))

(assert (=> b!5064740 m!6103664))

(assert (=> b!5064740 m!6103662))

(assert (=> b!5064740 m!6103664))

(declare-fun m!6105622 () Bool)

(assert (=> b!5064740 m!6105622))

(assert (=> b!5063852 d!1632482))

(declare-fun d!1632484 () Bool)

(declare-fun c!869278 () Bool)

(assert (=> d!1632484 (= c!869278 ((_ is Empty!15562) lt!2088540))))

(declare-fun e!3160845 () List!58556)

(assert (=> d!1632484 (= (list!18985 lt!2088540) e!3160845)))

(declare-fun b!5064745 () Bool)

(declare-fun e!3160846 () List!58556)

(assert (=> b!5064745 (= e!3160846 (++!12784 (list!18985 (left!42813 lt!2088540)) (list!18985 (right!43143 lt!2088540))))))

(declare-fun b!5064742 () Bool)

(assert (=> b!5064742 (= e!3160845 Nil!58432)))

(declare-fun b!5064744 () Bool)

(assert (=> b!5064744 (= e!3160846 (list!18986 (xs!18906 lt!2088540)))))

(declare-fun b!5064743 () Bool)

(assert (=> b!5064743 (= e!3160845 e!3160846)))

(declare-fun c!869279 () Bool)

(assert (=> b!5064743 (= c!869279 ((_ is Leaf!25848) lt!2088540))))

(assert (= (and d!1632484 c!869278) b!5064742))

(assert (= (and d!1632484 (not c!869278)) b!5064743))

(assert (= (and b!5064743 c!869279) b!5064744))

(assert (= (and b!5064743 (not c!869279)) b!5064745))

(declare-fun m!6105624 () Bool)

(assert (=> b!5064745 m!6105624))

(declare-fun m!6105626 () Bool)

(assert (=> b!5064745 m!6105626))

(assert (=> b!5064745 m!6105624))

(assert (=> b!5064745 m!6105626))

(declare-fun m!6105628 () Bool)

(assert (=> b!5064745 m!6105628))

(declare-fun m!6105630 () Bool)

(assert (=> b!5064744 m!6105630))

(assert (=> d!1631926 d!1632484))

(declare-fun d!1632486 () Bool)

(declare-fun e!3160848 () Bool)

(assert (=> d!1632486 e!3160848))

(declare-fun res!2156566 () Bool)

(assert (=> d!1632486 (=> (not res!2156566) (not e!3160848))))

(declare-fun lt!2088647 () List!58556)

(assert (=> d!1632486 (= res!2156566 (= (content!10415 lt!2088647) ((_ map or) (content!10415 (list!18985 (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41))))))) (content!10415 (list!18985 (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41)))))))))))

(declare-fun e!3160847 () List!58556)

(assert (=> d!1632486 (= lt!2088647 e!3160847)))

(declare-fun c!869280 () Bool)

(assert (=> d!1632486 (= c!869280 ((_ is Nil!58432) (list!18985 (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41))))))))))

(assert (=> d!1632486 (= (++!12784 (list!18985 (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41)))))) (list!18985 (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41)))))) lt!2088647)))

(declare-fun b!5064747 () Bool)

(assert (=> b!5064747 (= e!3160847 (Cons!58432 (h!64880 (list!18985 (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41))))))) (++!12784 (t!371279 (list!18985 (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41))))))) (list!18985 (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41))))))))))

(declare-fun b!5064749 () Bool)

(assert (=> b!5064749 (= e!3160848 (or (not (= (list!18985 (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41))))) Nil!58432)) (= lt!2088647 (list!18985 (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41)))))))))))

(declare-fun b!5064746 () Bool)

(assert (=> b!5064746 (= e!3160847 (list!18985 (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41))))))))

(declare-fun b!5064748 () Bool)

(declare-fun res!2156567 () Bool)

(assert (=> b!5064748 (=> (not res!2156567) (not e!3160848))))

(assert (=> b!5064748 (= res!2156567 (= (size!39071 lt!2088647) (+ (size!39071 (list!18985 (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41))))))) (size!39071 (list!18985 (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41)))))))))))

(assert (= (and d!1632486 c!869280) b!5064746))

(assert (= (and d!1632486 (not c!869280)) b!5064747))

(assert (= (and d!1632486 res!2156566) b!5064748))

(assert (= (and b!5064748 res!2156567) b!5064749))

(declare-fun m!6105632 () Bool)

(assert (=> d!1632486 m!6105632))

(assert (=> d!1632486 m!6104198))

(declare-fun m!6105634 () Bool)

(assert (=> d!1632486 m!6105634))

(assert (=> d!1632486 m!6104200))

(declare-fun m!6105636 () Bool)

(assert (=> d!1632486 m!6105636))

(assert (=> b!5064747 m!6104200))

(declare-fun m!6105638 () Bool)

(assert (=> b!5064747 m!6105638))

(declare-fun m!6105640 () Bool)

(assert (=> b!5064748 m!6105640))

(assert (=> b!5064748 m!6104198))

(assert (=> b!5064748 m!6105604))

(assert (=> b!5064748 m!6104200))

(assert (=> b!5064748 m!6105606))

(assert (=> d!1631926 d!1632486))

(declare-fun c!869281 () Bool)

(declare-fun d!1632488 () Bool)

(assert (=> d!1632488 (= c!869281 ((_ is Empty!15562) (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41)))))))))

(declare-fun e!3160849 () List!58556)

(assert (=> d!1632488 (= (list!18985 (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41)))))) e!3160849)))

(declare-fun e!3160850 () List!58556)

(declare-fun b!5064753 () Bool)

(assert (=> b!5064753 (= e!3160850 (++!12784 (list!18985 (left!42813 (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41))))))) (list!18985 (right!43143 (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41)))))))))))

(declare-fun b!5064750 () Bool)

(assert (=> b!5064750 (= e!3160849 Nil!58432)))

(declare-fun b!5064752 () Bool)

(assert (=> b!5064752 (= e!3160850 (list!18986 (xs!18906 (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41))))))))))

(declare-fun b!5064751 () Bool)

(assert (=> b!5064751 (= e!3160849 e!3160850)))

(declare-fun c!869282 () Bool)

(assert (=> b!5064751 (= c!869282 ((_ is Leaf!25848) (ite c!868972 (right!43143 (right!43143 xs!286)) (ite c!868975 (ite c!868976 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))) (left!42813 (right!43143 (right!43143 xs!286)))) (ite c!868973 lt!2088476 (right!43143 (left!42813 ys!41)))))))))

(assert (= (and d!1632488 c!869281) b!5064750))

(assert (= (and d!1632488 (not c!869281)) b!5064751))

(assert (= (and b!5064751 c!869282) b!5064752))

(assert (= (and b!5064751 (not c!869282)) b!5064753))

(declare-fun m!6105642 () Bool)

(assert (=> b!5064753 m!6105642))

(declare-fun m!6105644 () Bool)

(assert (=> b!5064753 m!6105644))

(assert (=> b!5064753 m!6105642))

(assert (=> b!5064753 m!6105644))

(declare-fun m!6105646 () Bool)

(assert (=> b!5064753 m!6105646))

(declare-fun m!6105648 () Bool)

(assert (=> b!5064752 m!6105648))

(assert (=> d!1631926 d!1632488))

(declare-fun c!869283 () Bool)

(declare-fun d!1632490 () Bool)

(assert (=> d!1632490 (= c!869283 ((_ is Empty!15562) (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41))))))))

(declare-fun e!3160851 () List!58556)

(assert (=> d!1632490 (= (list!18985 (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41))))) e!3160851)))

(declare-fun e!3160852 () List!58556)

(declare-fun b!5064757 () Bool)

(assert (=> b!5064757 (= e!3160852 (++!12784 (list!18985 (left!42813 (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41)))))) (list!18985 (right!43143 (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41))))))))))

(declare-fun b!5064754 () Bool)

(assert (=> b!5064754 (= e!3160851 Nil!58432)))

(declare-fun b!5064756 () Bool)

(assert (=> b!5064756 (= e!3160852 (list!18986 (xs!18906 (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41)))))))))

(declare-fun b!5064755 () Bool)

(assert (=> b!5064755 (= e!3160851 e!3160852)))

(declare-fun c!869284 () Bool)

(assert (=> b!5064755 (= c!869284 ((_ is Leaf!25848) (ite c!868972 ys!41 (ite c!868975 (ite c!868976 lt!2088475 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (ite c!868973 (right!43143 (left!42813 ys!41)) (right!43143 ys!41))))))))

(assert (= (and d!1632490 c!869283) b!5064754))

(assert (= (and d!1632490 (not c!869283)) b!5064755))

(assert (= (and b!5064755 c!869284) b!5064756))

(assert (= (and b!5064755 (not c!869284)) b!5064757))

(declare-fun m!6105650 () Bool)

(assert (=> b!5064757 m!6105650))

(declare-fun m!6105652 () Bool)

(assert (=> b!5064757 m!6105652))

(assert (=> b!5064757 m!6105650))

(assert (=> b!5064757 m!6105652))

(declare-fun m!6105654 () Bool)

(assert (=> b!5064757 m!6105654))

(declare-fun m!6105656 () Bool)

(assert (=> b!5064756 m!6105656))

(assert (=> d!1631926 d!1632490))

(declare-fun d!1632492 () Bool)

(declare-fun c!869285 () Bool)

(assert (=> d!1632492 (= c!869285 ((_ is Node!15562) (left!42813 (right!43143 (right!43143 xs!286)))))))

(declare-fun e!3160853 () Bool)

(assert (=> d!1632492 (= (inv!77544 (left!42813 (right!43143 (right!43143 xs!286)))) e!3160853)))

(declare-fun b!5064758 () Bool)

(assert (=> b!5064758 (= e!3160853 (inv!77548 (left!42813 (right!43143 (right!43143 xs!286)))))))

(declare-fun b!5064759 () Bool)

(declare-fun e!3160854 () Bool)

(assert (=> b!5064759 (= e!3160853 e!3160854)))

(declare-fun res!2156568 () Bool)

(assert (=> b!5064759 (= res!2156568 (not ((_ is Leaf!25848) (left!42813 (right!43143 (right!43143 xs!286))))))))

(assert (=> b!5064759 (=> res!2156568 e!3160854)))

(declare-fun b!5064760 () Bool)

(assert (=> b!5064760 (= e!3160854 (inv!77549 (left!42813 (right!43143 (right!43143 xs!286)))))))

(assert (= (and d!1632492 c!869285) b!5064758))

(assert (= (and d!1632492 (not c!869285)) b!5064759))

(assert (= (and b!5064759 (not res!2156568)) b!5064760))

(declare-fun m!6105658 () Bool)

(assert (=> b!5064758 m!6105658))

(declare-fun m!6105660 () Bool)

(assert (=> b!5064760 m!6105660))

(assert (=> b!5064322 d!1632492))

(declare-fun d!1632494 () Bool)

(declare-fun c!869286 () Bool)

(assert (=> d!1632494 (= c!869286 ((_ is Node!15562) (right!43143 (right!43143 (right!43143 xs!286)))))))

(declare-fun e!3160855 () Bool)

(assert (=> d!1632494 (= (inv!77544 (right!43143 (right!43143 (right!43143 xs!286)))) e!3160855)))

(declare-fun b!5064761 () Bool)

(assert (=> b!5064761 (= e!3160855 (inv!77548 (right!43143 (right!43143 (right!43143 xs!286)))))))

(declare-fun b!5064762 () Bool)

(declare-fun e!3160856 () Bool)

(assert (=> b!5064762 (= e!3160855 e!3160856)))

(declare-fun res!2156569 () Bool)

(assert (=> b!5064762 (= res!2156569 (not ((_ is Leaf!25848) (right!43143 (right!43143 (right!43143 xs!286))))))))

(assert (=> b!5064762 (=> res!2156569 e!3160856)))

(declare-fun b!5064763 () Bool)

(assert (=> b!5064763 (= e!3160856 (inv!77549 (right!43143 (right!43143 (right!43143 xs!286)))))))

(assert (= (and d!1632494 c!869286) b!5064761))

(assert (= (and d!1632494 (not c!869286)) b!5064762))

(assert (= (and b!5064762 (not res!2156569)) b!5064763))

(declare-fun m!6105662 () Bool)

(assert (=> b!5064761 m!6105662))

(declare-fun m!6105664 () Bool)

(assert (=> b!5064763 m!6105664))

(assert (=> b!5064322 d!1632494))

(declare-fun b!5064767 () Bool)

(declare-fun e!3160858 () Conc!15562)

(assert (=> b!5064767 (= e!3160858 (Node!15562 (ite c!869021 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))) (ite c!869024 (ite c!869025 (left!42813 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (left!42813 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (ite c!869022 lt!2088511 (right!43143 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))) (ite c!869021 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))) (ite c!869024 (ite c!869025 lt!2088510 (left!42813 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (ite c!869022 (right!43143 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))) (right!43143 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))))) (+ (size!39073 (ite c!869021 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))) (ite c!869024 (ite c!869025 (left!42813 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (left!42813 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (ite c!869022 lt!2088511 (right!43143 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))))))) (size!39073 (ite c!869021 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))) (ite c!869024 (ite c!869025 lt!2088510 (left!42813 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (ite c!869022 (right!43143 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))) (right!43143 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))))))) (+ (max!0 (height!2139 (ite c!869021 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))) (ite c!869024 (ite c!869025 (left!42813 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (left!42813 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (ite c!869022 lt!2088511 (right!43143 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))))))) (height!2139 (ite c!869021 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))) (ite c!869024 (ite c!869025 lt!2088510 (left!42813 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (ite c!869022 (right!43143 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))) (right!43143 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))))))) 1)))))

(declare-fun lt!2088648 () Conc!15562)

(declare-fun d!1632496 () Bool)

(assert (=> d!1632496 (= (list!18985 lt!2088648) (++!12784 (list!18985 (ite c!869021 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))) (ite c!869024 (ite c!869025 (left!42813 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (left!42813 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (ite c!869022 lt!2088511 (right!43143 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))))))) (list!18985 (ite c!869021 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))) (ite c!869024 (ite c!869025 lt!2088510 (left!42813 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (ite c!869022 (right!43143 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))) (right!43143 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))))))))))

(declare-fun e!3160857 () Conc!15562)

(assert (=> d!1632496 (= lt!2088648 e!3160857)))

(declare-fun c!869288 () Bool)

(assert (=> d!1632496 (= c!869288 (= (ite c!869021 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))) (ite c!869024 (ite c!869025 (left!42813 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (left!42813 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (ite c!869022 lt!2088511 (right!43143 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))) Empty!15562))))

(assert (=> d!1632496 (= (<>!394 (ite c!869021 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))) (ite c!869024 (ite c!869025 (left!42813 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (left!42813 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (ite c!869022 lt!2088511 (right!43143 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))) (ite c!869021 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))) (ite c!869024 (ite c!869025 lt!2088510 (left!42813 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (ite c!869022 (right!43143 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))) (right!43143 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))) lt!2088648)))

(declare-fun b!5064764 () Bool)

(assert (=> b!5064764 (= e!3160857 (ite c!869021 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))) (ite c!869024 (ite c!869025 lt!2088510 (left!42813 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (ite c!869022 (right!43143 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))) (right!43143 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))))))))

(declare-fun b!5064766 () Bool)

(assert (=> b!5064766 (= e!3160858 (ite c!869021 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))) (ite c!869024 (ite c!869025 (left!42813 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (left!42813 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (ite c!869022 lt!2088511 (right!43143 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))))))

(declare-fun b!5064765 () Bool)

(assert (=> b!5064765 (= e!3160857 e!3160858)))

(declare-fun c!869287 () Bool)

(assert (=> b!5064765 (= c!869287 (= (ite c!869021 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))) (ite c!869024 (ite c!869025 lt!2088510 (left!42813 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (ite c!869022 (right!43143 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))) (right!43143 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))))) Empty!15562))))

(assert (= (and d!1632496 c!869288) b!5064764))

(assert (= (and d!1632496 (not c!869288)) b!5064765))

(assert (= (and b!5064765 c!869287) b!5064766))

(assert (= (and b!5064765 (not c!869287)) b!5064767))

(declare-fun m!6105666 () Bool)

(assert (=> b!5064767 m!6105666))

(declare-fun m!6105668 () Bool)

(assert (=> b!5064767 m!6105668))

(declare-fun m!6105670 () Bool)

(assert (=> b!5064767 m!6105670))

(declare-fun m!6105672 () Bool)

(assert (=> b!5064767 m!6105672))

(assert (=> b!5064767 m!6105670))

(declare-fun m!6105674 () Bool)

(assert (=> b!5064767 m!6105674))

(assert (=> b!5064767 m!6105672))

(declare-fun m!6105676 () Bool)

(assert (=> d!1632496 m!6105676))

(declare-fun m!6105678 () Bool)

(assert (=> d!1632496 m!6105678))

(declare-fun m!6105680 () Bool)

(assert (=> d!1632496 m!6105680))

(assert (=> d!1632496 m!6105678))

(assert (=> d!1632496 m!6105680))

(declare-fun m!6105682 () Bool)

(assert (=> d!1632496 m!6105682))

(assert (=> bm!352702 d!1632496))

(declare-fun b!5064768 () Bool)

(declare-fun res!2156572 () Bool)

(declare-fun e!3160859 () Bool)

(assert (=> b!5064768 (=> (not res!2156572) (not e!3160859))))

(assert (=> b!5064768 (= res!2156572 (not (isEmpty!31626 (left!42813 (left!42813 (left!42813 ys!41))))))))

(declare-fun b!5064769 () Bool)

(declare-fun res!2156575 () Bool)

(assert (=> b!5064769 (=> (not res!2156575) (not e!3160859))))

(assert (=> b!5064769 (= res!2156575 (<= (- (height!2139 (left!42813 (left!42813 (left!42813 ys!41)))) (height!2139 (right!43143 (left!42813 (left!42813 ys!41))))) 1))))

(declare-fun b!5064770 () Bool)

(declare-fun e!3160860 () Bool)

(assert (=> b!5064770 (= e!3160860 e!3160859)))

(declare-fun res!2156574 () Bool)

(assert (=> b!5064770 (=> (not res!2156574) (not e!3160859))))

(assert (=> b!5064770 (= res!2156574 (<= (- 1) (- (height!2139 (left!42813 (left!42813 (left!42813 ys!41)))) (height!2139 (right!43143 (left!42813 (left!42813 ys!41)))))))))

(declare-fun d!1632498 () Bool)

(declare-fun res!2156571 () Bool)

(assert (=> d!1632498 (=> res!2156571 e!3160860)))

(assert (=> d!1632498 (= res!2156571 (not ((_ is Node!15562) (left!42813 (left!42813 ys!41)))))))

(assert (=> d!1632498 (= (isBalanced!4424 (left!42813 (left!42813 ys!41))) e!3160860)))

(declare-fun b!5064771 () Bool)

(assert (=> b!5064771 (= e!3160859 (not (isEmpty!31626 (right!43143 (left!42813 (left!42813 ys!41))))))))

(declare-fun b!5064772 () Bool)

(declare-fun res!2156570 () Bool)

(assert (=> b!5064772 (=> (not res!2156570) (not e!3160859))))

(assert (=> b!5064772 (= res!2156570 (isBalanced!4424 (left!42813 (left!42813 (left!42813 ys!41)))))))

(declare-fun b!5064773 () Bool)

(declare-fun res!2156573 () Bool)

(assert (=> b!5064773 (=> (not res!2156573) (not e!3160859))))

(assert (=> b!5064773 (= res!2156573 (isBalanced!4424 (right!43143 (left!42813 (left!42813 ys!41)))))))

(assert (= (and d!1632498 (not res!2156571)) b!5064770))

(assert (= (and b!5064770 res!2156574) b!5064769))

(assert (= (and b!5064769 res!2156575) b!5064772))

(assert (= (and b!5064772 res!2156570) b!5064773))

(assert (= (and b!5064773 res!2156573) b!5064768))

(assert (= (and b!5064768 res!2156572) b!5064771))

(declare-fun m!6105684 () Bool)

(assert (=> b!5064772 m!6105684))

(declare-fun m!6105686 () Bool)

(assert (=> b!5064771 m!6105686))

(declare-fun m!6105688 () Bool)

(assert (=> b!5064768 m!6105688))

(assert (=> b!5064769 m!6105596))

(assert (=> b!5064769 m!6105598))

(declare-fun m!6105690 () Bool)

(assert (=> b!5064773 m!6105690))

(assert (=> b!5064770 m!6105596))

(assert (=> b!5064770 m!6105598))

(assert (=> b!5064099 d!1632498))

(declare-fun d!1632500 () Bool)

(declare-fun res!2156576 () Bool)

(declare-fun e!3160861 () Bool)

(assert (=> d!1632500 (=> (not res!2156576) (not e!3160861))))

(assert (=> d!1632500 (= res!2156576 (= (csize!31354 (right!43143 (right!43143 ys!41))) (+ (size!39073 (left!42813 (right!43143 (right!43143 ys!41)))) (size!39073 (right!43143 (right!43143 (right!43143 ys!41)))))))))

(assert (=> d!1632500 (= (inv!77548 (right!43143 (right!43143 ys!41))) e!3160861)))

(declare-fun b!5064774 () Bool)

(declare-fun res!2156577 () Bool)

(assert (=> b!5064774 (=> (not res!2156577) (not e!3160861))))

(assert (=> b!5064774 (= res!2156577 (and (not (= (left!42813 (right!43143 (right!43143 ys!41))) Empty!15562)) (not (= (right!43143 (right!43143 (right!43143 ys!41))) Empty!15562))))))

(declare-fun b!5064775 () Bool)

(declare-fun res!2156578 () Bool)

(assert (=> b!5064775 (=> (not res!2156578) (not e!3160861))))

(assert (=> b!5064775 (= res!2156578 (= (cheight!15773 (right!43143 (right!43143 ys!41))) (+ (max!0 (height!2139 (left!42813 (right!43143 (right!43143 ys!41)))) (height!2139 (right!43143 (right!43143 (right!43143 ys!41))))) 1)))))

(declare-fun b!5064776 () Bool)

(assert (=> b!5064776 (= e!3160861 (<= 0 (cheight!15773 (right!43143 (right!43143 ys!41)))))))

(assert (= (and d!1632500 res!2156576) b!5064774))

(assert (= (and b!5064774 res!2156577) b!5064775))

(assert (= (and b!5064775 res!2156578) b!5064776))

(declare-fun m!6105692 () Bool)

(assert (=> d!1632500 m!6105692))

(declare-fun m!6105694 () Bool)

(assert (=> d!1632500 m!6105694))

(declare-fun m!6105696 () Bool)

(assert (=> b!5064775 m!6105696))

(declare-fun m!6105698 () Bool)

(assert (=> b!5064775 m!6105698))

(assert (=> b!5064775 m!6105696))

(assert (=> b!5064775 m!6105698))

(declare-fun m!6105700 () Bool)

(assert (=> b!5064775 m!6105700))

(assert (=> b!5064197 d!1632500))

(declare-fun d!1632502 () Bool)

(assert (=> d!1632502 (= (list!18986 (xs!18906 (left!42813 lt!2088442))) (innerList!15650 (xs!18906 (left!42813 lt!2088442))))))

(assert (=> b!5063891 d!1632502))

(declare-fun b!5064777 () Bool)

(declare-fun res!2156581 () Bool)

(declare-fun e!3160862 () Bool)

(assert (=> b!5064777 (=> (not res!2156581) (not e!3160862))))

(assert (=> b!5064777 (= res!2156581 (not (isEmpty!31626 (left!42813 lt!2088509))))))

(declare-fun b!5064778 () Bool)

(declare-fun res!2156584 () Bool)

(assert (=> b!5064778 (=> (not res!2156584) (not e!3160862))))

(assert (=> b!5064778 (= res!2156584 (<= (- (height!2139 (left!42813 lt!2088509)) (height!2139 (right!43143 lt!2088509))) 1))))

(declare-fun b!5064779 () Bool)

(declare-fun e!3160863 () Bool)

(assert (=> b!5064779 (= e!3160863 e!3160862)))

(declare-fun res!2156583 () Bool)

(assert (=> b!5064779 (=> (not res!2156583) (not e!3160862))))

(assert (=> b!5064779 (= res!2156583 (<= (- 1) (- (height!2139 (left!42813 lt!2088509)) (height!2139 (right!43143 lt!2088509)))))))

(declare-fun d!1632504 () Bool)

(declare-fun res!2156580 () Bool)

(assert (=> d!1632504 (=> res!2156580 e!3160863)))

(assert (=> d!1632504 (= res!2156580 (not ((_ is Node!15562) lt!2088509)))))

(assert (=> d!1632504 (= (isBalanced!4424 lt!2088509) e!3160863)))

(declare-fun b!5064780 () Bool)

(assert (=> b!5064780 (= e!3160862 (not (isEmpty!31626 (right!43143 lt!2088509))))))

(declare-fun b!5064781 () Bool)

(declare-fun res!2156579 () Bool)

(assert (=> b!5064781 (=> (not res!2156579) (not e!3160862))))

(assert (=> b!5064781 (= res!2156579 (isBalanced!4424 (left!42813 lt!2088509)))))

(declare-fun b!5064782 () Bool)

(declare-fun res!2156582 () Bool)

(assert (=> b!5064782 (=> (not res!2156582) (not e!3160862))))

(assert (=> b!5064782 (= res!2156582 (isBalanced!4424 (right!43143 lt!2088509)))))

(assert (= (and d!1632504 (not res!2156580)) b!5064779))

(assert (= (and b!5064779 res!2156583) b!5064778))

(assert (= (and b!5064778 res!2156584) b!5064781))

(assert (= (and b!5064781 res!2156579) b!5064782))

(assert (= (and b!5064782 res!2156582) b!5064777))

(assert (= (and b!5064777 res!2156581) b!5064780))

(declare-fun m!6105702 () Bool)

(assert (=> b!5064781 m!6105702))

(declare-fun m!6105704 () Bool)

(assert (=> b!5064780 m!6105704))

(declare-fun m!6105706 () Bool)

(assert (=> b!5064777 m!6105706))

(declare-fun m!6105708 () Bool)

(assert (=> b!5064778 m!6105708))

(declare-fun m!6105710 () Bool)

(assert (=> b!5064778 m!6105710))

(declare-fun m!6105712 () Bool)

(assert (=> b!5064782 m!6105712))

(assert (=> b!5064779 m!6105708))

(assert (=> b!5064779 m!6105710))

(assert (=> b!5063817 d!1632504))

(declare-fun d!1632506 () Bool)

(declare-fun lt!2088649 () Int)

(assert (=> d!1632506 (>= lt!2088649 0)))

(declare-fun e!3160864 () Int)

(assert (=> d!1632506 (= lt!2088649 e!3160864)))

(declare-fun c!869289 () Bool)

(assert (=> d!1632506 (= c!869289 ((_ is Nil!58432) (t!371279 (list!18985 ys!41))))))

(assert (=> d!1632506 (= (size!39071 (t!371279 (list!18985 ys!41))) lt!2088649)))

(declare-fun b!5064783 () Bool)

(assert (=> b!5064783 (= e!3160864 0)))

(declare-fun b!5064784 () Bool)

(assert (=> b!5064784 (= e!3160864 (+ 1 (size!39071 (t!371279 (t!371279 (list!18985 ys!41))))))))

(assert (= (and d!1632506 c!869289) b!5064783))

(assert (= (and d!1632506 (not c!869289)) b!5064784))

(declare-fun m!6105714 () Bool)

(assert (=> b!5064784 m!6105714))

(assert (=> b!5064225 d!1632506))

(declare-fun d!1632508 () Bool)

(declare-fun lt!2088650 () Int)

(assert (=> d!1632508 (>= lt!2088650 0)))

(declare-fun e!3160865 () Int)

(assert (=> d!1632508 (= lt!2088650 e!3160865)))

(declare-fun c!869290 () Bool)

(assert (=> d!1632508 (= c!869290 ((_ is Nil!58432) (t!371279 (innerList!15650 (xs!18906 xs!286)))))))

(assert (=> d!1632508 (= (size!39071 (t!371279 (innerList!15650 (xs!18906 xs!286)))) lt!2088650)))

(declare-fun b!5064785 () Bool)

(assert (=> b!5064785 (= e!3160865 0)))

(declare-fun b!5064786 () Bool)

(assert (=> b!5064786 (= e!3160865 (+ 1 (size!39071 (t!371279 (t!371279 (innerList!15650 (xs!18906 xs!286)))))))))

(assert (= (and d!1632508 c!869290) b!5064785))

(assert (= (and d!1632508 (not c!869290)) b!5064786))

(declare-fun m!6105716 () Bool)

(assert (=> b!5064786 m!6105716))

(assert (=> b!5064258 d!1632508))

(declare-fun d!1632510 () Bool)

(declare-fun c!869291 () Bool)

(assert (=> d!1632510 (= c!869291 ((_ is Nil!58432) lt!2088545))))

(declare-fun e!3160866 () (InoxSet T!105104))

(assert (=> d!1632510 (= (content!10415 lt!2088545) e!3160866)))

(declare-fun b!5064787 () Bool)

(assert (=> b!5064787 (= e!3160866 ((as const (Array T!105104 Bool)) false))))

(declare-fun b!5064788 () Bool)

(assert (=> b!5064788 (= e!3160866 ((_ map or) (store ((as const (Array T!105104 Bool)) false) (h!64880 lt!2088545) true) (content!10415 (t!371279 lt!2088545))))))

(assert (= (and d!1632510 c!869291) b!5064787))

(assert (= (and d!1632510 (not c!869291)) b!5064788))

(declare-fun m!6105718 () Bool)

(assert (=> b!5064788 m!6105718))

(declare-fun m!6105720 () Bool)

(assert (=> b!5064788 m!6105720))

(assert (=> d!1632002 d!1632510))

(declare-fun d!1632512 () Bool)

(declare-fun c!869292 () Bool)

(assert (=> d!1632512 (= c!869292 ((_ is Nil!58432) (list!18985 (left!42813 (right!43143 xs!286)))))))

(declare-fun e!3160867 () (InoxSet T!105104))

(assert (=> d!1632512 (= (content!10415 (list!18985 (left!42813 (right!43143 xs!286)))) e!3160867)))

(declare-fun b!5064789 () Bool)

(assert (=> b!5064789 (= e!3160867 ((as const (Array T!105104 Bool)) false))))

(declare-fun b!5064790 () Bool)

(assert (=> b!5064790 (= e!3160867 ((_ map or) (store ((as const (Array T!105104 Bool)) false) (h!64880 (list!18985 (left!42813 (right!43143 xs!286)))) true) (content!10415 (t!371279 (list!18985 (left!42813 (right!43143 xs!286)))))))))

(assert (= (and d!1632512 c!869292) b!5064789))

(assert (= (and d!1632512 (not c!869292)) b!5064790))

(declare-fun m!6105722 () Bool)

(assert (=> b!5064790 m!6105722))

(assert (=> b!5064790 m!6105034))

(assert (=> d!1632002 d!1632512))

(declare-fun d!1632514 () Bool)

(declare-fun c!869293 () Bool)

(assert (=> d!1632514 (= c!869293 ((_ is Nil!58432) (list!18985 lt!2088445)))))

(declare-fun e!3160868 () (InoxSet T!105104))

(assert (=> d!1632514 (= (content!10415 (list!18985 lt!2088445)) e!3160868)))

(declare-fun b!5064791 () Bool)

(assert (=> b!5064791 (= e!3160868 ((as const (Array T!105104 Bool)) false))))

(declare-fun b!5064792 () Bool)

(assert (=> b!5064792 (= e!3160868 ((_ map or) (store ((as const (Array T!105104 Bool)) false) (h!64880 (list!18985 lt!2088445)) true) (content!10415 (t!371279 (list!18985 lt!2088445)))))))

(assert (= (and d!1632514 c!869293) b!5064791))

(assert (= (and d!1632514 (not c!869293)) b!5064792))

(declare-fun m!6105724 () Bool)

(assert (=> b!5064792 m!6105724))

(declare-fun m!6105726 () Bool)

(assert (=> b!5064792 m!6105726))

(assert (=> d!1632002 d!1632514))

(declare-fun d!1632516 () Bool)

(assert (=> d!1632516 (= (height!2139 (left!42813 (left!42813 lt!2088442))) (ite ((_ is Empty!15562) (left!42813 (left!42813 lt!2088442))) 0 (ite ((_ is Leaf!25848) (left!42813 (left!42813 lt!2088442))) 1 (cheight!15773 (left!42813 (left!42813 lt!2088442))))))))

(assert (=> b!5063875 d!1632516))

(declare-fun d!1632518 () Bool)

(assert (=> d!1632518 (= (height!2139 (right!43143 (left!42813 lt!2088442))) (ite ((_ is Empty!15562) (right!43143 (left!42813 lt!2088442))) 0 (ite ((_ is Leaf!25848) (right!43143 (left!42813 lt!2088442))) 1 (cheight!15773 (right!43143 (left!42813 lt!2088442))))))))

(assert (=> b!5063875 d!1632518))

(declare-fun d!1632520 () Bool)

(declare-fun e!3160870 () Bool)

(assert (=> d!1632520 e!3160870))

(declare-fun res!2156585 () Bool)

(assert (=> d!1632520 (=> (not res!2156585) (not e!3160870))))

(declare-fun lt!2088651 () List!58556)

(assert (=> d!1632520 (= res!2156585 (= (content!10415 lt!2088651) ((_ map or) (content!10415 (list!18985 (left!42813 (right!43143 xs!286)))) (content!10415 (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 ys!41))))))))

(declare-fun e!3160869 () List!58556)

(assert (=> d!1632520 (= lt!2088651 e!3160869)))

(declare-fun c!869294 () Bool)

(assert (=> d!1632520 (= c!869294 ((_ is Nil!58432) (list!18985 (left!42813 (right!43143 xs!286)))))))

(assert (=> d!1632520 (= (++!12784 (list!18985 (left!42813 (right!43143 xs!286))) (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 ys!41))) lt!2088651)))

(declare-fun b!5064794 () Bool)

(assert (=> b!5064794 (= e!3160869 (Cons!58432 (h!64880 (list!18985 (left!42813 (right!43143 xs!286)))) (++!12784 (t!371279 (list!18985 (left!42813 (right!43143 xs!286)))) (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 ys!41)))))))

(declare-fun b!5064796 () Bool)

(assert (=> b!5064796 (= e!3160870 (or (not (= (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 ys!41)) Nil!58432)) (= lt!2088651 (list!18985 (left!42813 (right!43143 xs!286))))))))

(declare-fun b!5064793 () Bool)

(assert (=> b!5064793 (= e!3160869 (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 ys!41)))))

(declare-fun b!5064795 () Bool)

(declare-fun res!2156586 () Bool)

(assert (=> b!5064795 (=> (not res!2156586) (not e!3160870))))

(assert (=> b!5064795 (= res!2156586 (= (size!39071 lt!2088651) (+ (size!39071 (list!18985 (left!42813 (right!43143 xs!286)))) (size!39071 (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 ys!41))))))))

(assert (= (and d!1632520 c!869294) b!5064793))

(assert (= (and d!1632520 (not c!869294)) b!5064794))

(assert (= (and d!1632520 res!2156585) b!5064795))

(assert (= (and b!5064795 res!2156586) b!5064796))

(declare-fun m!6105728 () Bool)

(assert (=> d!1632520 m!6105728))

(assert (=> d!1632520 m!6103448))

(assert (=> d!1632520 m!6104420))

(assert (=> d!1632520 m!6103366))

(declare-fun m!6105730 () Bool)

(assert (=> d!1632520 m!6105730))

(assert (=> b!5064794 m!6103366))

(declare-fun m!6105732 () Bool)

(assert (=> b!5064794 m!6105732))

(declare-fun m!6105734 () Bool)

(assert (=> b!5064795 m!6105734))

(assert (=> b!5064795 m!6103448))

(assert (=> b!5064795 m!6104056))

(assert (=> b!5064795 m!6103366))

(declare-fun m!6105736 () Bool)

(assert (=> b!5064795 m!6105736))

(assert (=> bm!352739 d!1632520))

(declare-fun d!1632522 () Bool)

(declare-fun res!2156587 () Bool)

(declare-fun e!3160871 () Bool)

(assert (=> d!1632522 (=> (not res!2156587) (not e!3160871))))

(assert (=> d!1632522 (= res!2156587 (= (csize!31354 (right!43143 (left!42813 xs!286))) (+ (size!39073 (left!42813 (right!43143 (left!42813 xs!286)))) (size!39073 (right!43143 (right!43143 (left!42813 xs!286)))))))))

(assert (=> d!1632522 (= (inv!77548 (right!43143 (left!42813 xs!286))) e!3160871)))

(declare-fun b!5064797 () Bool)

(declare-fun res!2156588 () Bool)

(assert (=> b!5064797 (=> (not res!2156588) (not e!3160871))))

(assert (=> b!5064797 (= res!2156588 (and (not (= (left!42813 (right!43143 (left!42813 xs!286))) Empty!15562)) (not (= (right!43143 (right!43143 (left!42813 xs!286))) Empty!15562))))))

(declare-fun b!5064798 () Bool)

(declare-fun res!2156589 () Bool)

(assert (=> b!5064798 (=> (not res!2156589) (not e!3160871))))

(assert (=> b!5064798 (= res!2156589 (= (cheight!15773 (right!43143 (left!42813 xs!286))) (+ (max!0 (height!2139 (left!42813 (right!43143 (left!42813 xs!286)))) (height!2139 (right!43143 (right!43143 (left!42813 xs!286))))) 1)))))

(declare-fun b!5064799 () Bool)

(assert (=> b!5064799 (= e!3160871 (<= 0 (cheight!15773 (right!43143 (left!42813 xs!286)))))))

(assert (= (and d!1632522 res!2156587) b!5064797))

(assert (= (and b!5064797 res!2156588) b!5064798))

(assert (= (and b!5064798 res!2156589) b!5064799))

(declare-fun m!6105738 () Bool)

(assert (=> d!1632522 m!6105738))

(declare-fun m!6105740 () Bool)

(assert (=> d!1632522 m!6105740))

(assert (=> b!5064798 m!6105456))

(assert (=> b!5064798 m!6105458))

(assert (=> b!5064798 m!6105456))

(assert (=> b!5064798 m!6105458))

(declare-fun m!6105742 () Bool)

(assert (=> b!5064798 m!6105742))

(assert (=> b!5064232 d!1632522))

(declare-fun d!1632524 () Bool)

(declare-fun res!2156590 () Bool)

(declare-fun e!3160872 () Bool)

(assert (=> d!1632524 (=> (not res!2156590) (not e!3160872))))

(assert (=> d!1632524 (= res!2156590 (<= (size!39071 (list!18986 (xs!18906 (left!42813 (right!43143 ys!41))))) 512))))

(assert (=> d!1632524 (= (inv!77549 (left!42813 (right!43143 ys!41))) e!3160872)))

(declare-fun b!5064800 () Bool)

(declare-fun res!2156591 () Bool)

(assert (=> b!5064800 (=> (not res!2156591) (not e!3160872))))

(assert (=> b!5064800 (= res!2156591 (= (csize!31355 (left!42813 (right!43143 ys!41))) (size!39071 (list!18986 (xs!18906 (left!42813 (right!43143 ys!41)))))))))

(declare-fun b!5064801 () Bool)

(assert (=> b!5064801 (= e!3160872 (and (> (csize!31355 (left!42813 (right!43143 ys!41))) 0) (<= (csize!31355 (left!42813 (right!43143 ys!41))) 512)))))

(assert (= (and d!1632524 res!2156590) b!5064800))

(assert (= (and b!5064800 res!2156591) b!5064801))

(assert (=> d!1632524 m!6104892))

(assert (=> d!1632524 m!6104892))

(declare-fun m!6105744 () Bool)

(assert (=> d!1632524 m!6105744))

(assert (=> b!5064800 m!6104892))

(assert (=> b!5064800 m!6104892))

(assert (=> b!5064800 m!6105744))

(assert (=> b!5064196 d!1632524))

(assert (=> b!5064284 d!1631872))

(assert (=> b!5064284 d!1632052))

(declare-fun bm!352805 () Bool)

(declare-fun call!352813 () List!58556)

(declare-fun call!352811 () List!58556)

(assert (=> bm!352805 (= call!352813 (++!12784 call!352811 (list!18985 ys!41)))))

(declare-fun d!1632526 () Bool)

(declare-fun e!3160873 () Bool)

(assert (=> d!1632526 e!3160873))

(declare-fun c!869295 () Bool)

(assert (=> d!1632526 (= c!869295 ((_ is Nil!58432) (t!371279 (list!18985 (left!42813 xs!286)))))))

(assert (=> d!1632526 (= (appendAssoc!300 (t!371279 (list!18985 (left!42813 xs!286))) (list!18985 (right!43143 xs!286)) (list!18985 ys!41)) true)))

(declare-fun bm!352806 () Bool)

(declare-fun call!352810 () List!58556)

(declare-fun call!352812 () List!58556)

(assert (=> bm!352806 (= call!352810 (++!12784 (t!371279 (list!18985 (left!42813 xs!286))) call!352812))))

(declare-fun bm!352807 () Bool)

(assert (=> bm!352807 (= call!352812 (++!12784 (list!18985 (right!43143 xs!286)) (list!18985 ys!41)))))

(declare-fun b!5064802 () Bool)

(assert (=> b!5064802 (= e!3160873 (= call!352813 call!352810))))

(declare-fun lt!2088652 () Bool)

(assert (=> b!5064802 (= lt!2088652 (appendAssoc!300 (t!371279 (t!371279 (list!18985 (left!42813 xs!286)))) (list!18985 (right!43143 xs!286)) (list!18985 ys!41)))))

(declare-fun bm!352808 () Bool)

(assert (=> bm!352808 (= call!352811 (++!12784 (t!371279 (list!18985 (left!42813 xs!286))) (list!18985 (right!43143 xs!286))))))

(declare-fun b!5064803 () Bool)

(assert (=> b!5064803 (= e!3160873 (= call!352813 call!352810))))

(assert (= (and d!1632526 c!869295) b!5064803))

(assert (= (and d!1632526 (not c!869295)) b!5064802))

(assert (= (or b!5064803 b!5064802) bm!352808))

(assert (= (or b!5064803 b!5064802) bm!352807))

(assert (= (or b!5064803 b!5064802) bm!352806))

(assert (= (or b!5064803 b!5064802) bm!352805))

(declare-fun m!6105746 () Bool)

(assert (=> bm!352806 m!6105746))

(assert (=> bm!352808 m!6103184))

(assert (=> bm!352808 m!6104622))

(assert (=> b!5064802 m!6103184))

(assert (=> b!5064802 m!6103082))

(declare-fun m!6105748 () Bool)

(assert (=> b!5064802 m!6105748))

(assert (=> bm!352807 m!6103184))

(assert (=> bm!352807 m!6103082))

(assert (=> bm!352807 m!6103968))

(assert (=> bm!352805 m!6103082))

(declare-fun m!6105750 () Bool)

(assert (=> bm!352805 m!6105750))

(assert (=> b!5063927 d!1632526))

(declare-fun d!1632528 () Bool)

(declare-fun e!3160875 () Bool)

(assert (=> d!1632528 e!3160875))

(declare-fun res!2156592 () Bool)

(assert (=> d!1632528 (=> (not res!2156592) (not e!3160875))))

(declare-fun lt!2088653 () List!58556)

(assert (=> d!1632528 (= res!2156592 (= (content!10415 lt!2088653) ((_ map or) (content!10415 (list!18985 (left!42813 (right!43143 xs!286)))) (content!10415 call!352776))))))

(declare-fun e!3160874 () List!58556)

(assert (=> d!1632528 (= lt!2088653 e!3160874)))

(declare-fun c!869296 () Bool)

(assert (=> d!1632528 (= c!869296 ((_ is Nil!58432) (list!18985 (left!42813 (right!43143 xs!286)))))))

(assert (=> d!1632528 (= (++!12784 (list!18985 (left!42813 (right!43143 xs!286))) call!352776) lt!2088653)))

(declare-fun b!5064805 () Bool)

(assert (=> b!5064805 (= e!3160874 (Cons!58432 (h!64880 (list!18985 (left!42813 (right!43143 xs!286)))) (++!12784 (t!371279 (list!18985 (left!42813 (right!43143 xs!286)))) call!352776)))))

(declare-fun b!5064807 () Bool)

(assert (=> b!5064807 (= e!3160875 (or (not (= call!352776 Nil!58432)) (= lt!2088653 (list!18985 (left!42813 (right!43143 xs!286))))))))

(declare-fun b!5064804 () Bool)

(assert (=> b!5064804 (= e!3160874 call!352776)))

(declare-fun b!5064806 () Bool)

(declare-fun res!2156593 () Bool)

(assert (=> b!5064806 (=> (not res!2156593) (not e!3160875))))

(assert (=> b!5064806 (= res!2156593 (= (size!39071 lt!2088653) (+ (size!39071 (list!18985 (left!42813 (right!43143 xs!286)))) (size!39071 call!352776))))))

(assert (= (and d!1632528 c!869296) b!5064804))

(assert (= (and d!1632528 (not c!869296)) b!5064805))

(assert (= (and d!1632528 res!2156592) b!5064806))

(assert (= (and b!5064806 res!2156593) b!5064807))

(declare-fun m!6105752 () Bool)

(assert (=> d!1632528 m!6105752))

(assert (=> d!1632528 m!6103448))

(assert (=> d!1632528 m!6104420))

(declare-fun m!6105754 () Bool)

(assert (=> d!1632528 m!6105754))

(declare-fun m!6105756 () Bool)

(assert (=> b!5064805 m!6105756))

(declare-fun m!6105758 () Bool)

(assert (=> b!5064806 m!6105758))

(assert (=> b!5064806 m!6103448))

(assert (=> b!5064806 m!6104056))

(declare-fun m!6105760 () Bool)

(assert (=> b!5064806 m!6105760))

(assert (=> bm!352770 d!1632528))

(declare-fun d!1632530 () Bool)

(declare-fun c!869297 () Bool)

(assert (=> d!1632530 (= c!869297 ((_ is Node!15562) (left!42813 (right!43143 (left!42813 xs!286)))))))

(declare-fun e!3160876 () Bool)

(assert (=> d!1632530 (= (inv!77544 (left!42813 (right!43143 (left!42813 xs!286)))) e!3160876)))

(declare-fun b!5064808 () Bool)

(assert (=> b!5064808 (= e!3160876 (inv!77548 (left!42813 (right!43143 (left!42813 xs!286)))))))

(declare-fun b!5064809 () Bool)

(declare-fun e!3160877 () Bool)

(assert (=> b!5064809 (= e!3160876 e!3160877)))

(declare-fun res!2156594 () Bool)

(assert (=> b!5064809 (= res!2156594 (not ((_ is Leaf!25848) (left!42813 (right!43143 (left!42813 xs!286))))))))

(assert (=> b!5064809 (=> res!2156594 e!3160877)))

(declare-fun b!5064810 () Bool)

(assert (=> b!5064810 (= e!3160877 (inv!77549 (left!42813 (right!43143 (left!42813 xs!286)))))))

(assert (= (and d!1632530 c!869297) b!5064808))

(assert (= (and d!1632530 (not c!869297)) b!5064809))

(assert (= (and b!5064809 (not res!2156594)) b!5064810))

(declare-fun m!6105762 () Bool)

(assert (=> b!5064808 m!6105762))

(declare-fun m!6105764 () Bool)

(assert (=> b!5064810 m!6105764))

(assert (=> b!5064301 d!1632530))

(declare-fun d!1632532 () Bool)

(declare-fun c!869298 () Bool)

(assert (=> d!1632532 (= c!869298 ((_ is Node!15562) (right!43143 (right!43143 (left!42813 xs!286)))))))

(declare-fun e!3160878 () Bool)

(assert (=> d!1632532 (= (inv!77544 (right!43143 (right!43143 (left!42813 xs!286)))) e!3160878)))

(declare-fun b!5064811 () Bool)

(assert (=> b!5064811 (= e!3160878 (inv!77548 (right!43143 (right!43143 (left!42813 xs!286)))))))

(declare-fun b!5064812 () Bool)

(declare-fun e!3160879 () Bool)

(assert (=> b!5064812 (= e!3160878 e!3160879)))

(declare-fun res!2156595 () Bool)

(assert (=> b!5064812 (= res!2156595 (not ((_ is Leaf!25848) (right!43143 (right!43143 (left!42813 xs!286))))))))

(assert (=> b!5064812 (=> res!2156595 e!3160879)))

(declare-fun b!5064813 () Bool)

(assert (=> b!5064813 (= e!3160879 (inv!77549 (right!43143 (right!43143 (left!42813 xs!286)))))))

(assert (= (and d!1632532 c!869298) b!5064811))

(assert (= (and d!1632532 (not c!869298)) b!5064812))

(assert (= (and b!5064812 (not res!2156595)) b!5064813))

(declare-fun m!6105766 () Bool)

(assert (=> b!5064811 m!6105766))

(declare-fun m!6105768 () Bool)

(assert (=> b!5064813 m!6105768))

(assert (=> b!5064301 d!1632532))

(declare-fun d!1632534 () Bool)

(declare-fun lt!2088654 () Bool)

(assert (=> d!1632534 (= lt!2088654 (isEmpty!31628 (list!18985 (left!42813 lt!2088474))))))

(assert (=> d!1632534 (= lt!2088654 (= (size!39073 (left!42813 lt!2088474)) 0))))

(assert (=> d!1632534 (= (isEmpty!31626 (left!42813 lt!2088474)) lt!2088654)))

(declare-fun bs!1189832 () Bool)

(assert (= bs!1189832 d!1632534))

(assert (=> bs!1189832 m!6104604))

(assert (=> bs!1189832 m!6104604))

(declare-fun m!6105770 () Bool)

(assert (=> bs!1189832 m!6105770))

(declare-fun m!6105772 () Bool)

(assert (=> bs!1189832 m!6105772))

(assert (=> b!5064137 d!1632534))

(assert (=> b!5064291 d!1632454))

(assert (=> b!5064291 d!1632456))

(declare-fun d!1632536 () Bool)

(declare-fun lt!2088655 () Bool)

(assert (=> d!1632536 (= lt!2088655 (isEmpty!31628 (list!18985 (right!43143 (left!42813 xs!286)))))))

(assert (=> d!1632536 (= lt!2088655 (= (size!39073 (right!43143 (left!42813 xs!286))) 0))))

(assert (=> d!1632536 (= (isEmpty!31626 (right!43143 (left!42813 xs!286))) lt!2088655)))

(declare-fun bs!1189833 () Bool)

(assert (= bs!1189833 d!1632536))

(assert (=> bs!1189833 m!6103974))

(assert (=> bs!1189833 m!6103974))

(declare-fun m!6105774 () Bool)

(assert (=> bs!1189833 m!6105774))

(assert (=> bs!1189833 m!6104512))

(assert (=> b!5064041 d!1632536))

(assert (=> b!5063687 d!1632038))

(assert (=> b!5063687 d!1632040))

(assert (=> b!5064243 d!1632192))

(assert (=> b!5064243 d!1631920))

(assert (=> bm!352776 d!1631890))

(declare-fun d!1632538 () Bool)

(assert (=> d!1632538 (= (max!0 (height!2139 (left!42813 (right!43143 ys!41))) (height!2139 (right!43143 (right!43143 ys!41)))) (ite (< (height!2139 (left!42813 (right!43143 ys!41))) (height!2139 (right!43143 (right!43143 ys!41)))) (height!2139 (right!43143 (right!43143 ys!41))) (height!2139 (left!42813 (right!43143 ys!41)))))))

(assert (=> b!5064091 d!1632538))

(assert (=> b!5064091 d!1632276))

(assert (=> b!5064091 d!1632278))

(declare-fun d!1632540 () Bool)

(declare-fun res!2156596 () Bool)

(declare-fun e!3160880 () Bool)

(assert (=> d!1632540 (=> (not res!2156596) (not e!3160880))))

(assert (=> d!1632540 (= res!2156596 (<= (size!39071 (list!18986 (xs!18906 (left!42813 (left!42813 xs!286))))) 512))))

(assert (=> d!1632540 (= (inv!77549 (left!42813 (left!42813 xs!286))) e!3160880)))

(declare-fun b!5064814 () Bool)

(declare-fun res!2156597 () Bool)

(assert (=> b!5064814 (=> (not res!2156597) (not e!3160880))))

(assert (=> b!5064814 (= res!2156597 (= (csize!31355 (left!42813 (left!42813 xs!286))) (size!39071 (list!18986 (xs!18906 (left!42813 (left!42813 xs!286)))))))))

(declare-fun b!5064815 () Bool)

(assert (=> b!5064815 (= e!3160880 (and (> (csize!31355 (left!42813 (left!42813 xs!286))) 0) (<= (csize!31355 (left!42813 (left!42813 xs!286))) 512)))))

(assert (= (and d!1632540 res!2156596) b!5064814))

(assert (= (and b!5064814 res!2156597) b!5064815))

(declare-fun m!6105776 () Bool)

(assert (=> d!1632540 m!6105776))

(assert (=> d!1632540 m!6105776))

(declare-fun m!6105778 () Bool)

(assert (=> d!1632540 m!6105778))

(assert (=> b!5064814 m!6105776))

(assert (=> b!5064814 m!6105776))

(assert (=> b!5064814 m!6105778))

(assert (=> b!5064231 d!1632540))

(declare-fun d!1632542 () Bool)

(declare-fun e!3160882 () Bool)

(assert (=> d!1632542 e!3160882))

(declare-fun res!2156598 () Bool)

(assert (=> d!1632542 (=> (not res!2156598) (not e!3160882))))

(declare-fun lt!2088656 () List!58556)

(assert (=> d!1632542 (= res!2156598 (= (content!10415 lt!2088656) ((_ map or) (content!10415 (list!18985 (left!42813 lt!2088482))) (content!10415 (list!18985 (right!43143 lt!2088482))))))))

(declare-fun e!3160881 () List!58556)

(assert (=> d!1632542 (= lt!2088656 e!3160881)))

(declare-fun c!869299 () Bool)

(assert (=> d!1632542 (= c!869299 ((_ is Nil!58432) (list!18985 (left!42813 lt!2088482))))))

(assert (=> d!1632542 (= (++!12784 (list!18985 (left!42813 lt!2088482)) (list!18985 (right!43143 lt!2088482))) lt!2088656)))

(declare-fun b!5064817 () Bool)

(assert (=> b!5064817 (= e!3160881 (Cons!58432 (h!64880 (list!18985 (left!42813 lt!2088482))) (++!12784 (t!371279 (list!18985 (left!42813 lt!2088482))) (list!18985 (right!43143 lt!2088482)))))))

(declare-fun b!5064819 () Bool)

(assert (=> b!5064819 (= e!3160882 (or (not (= (list!18985 (right!43143 lt!2088482)) Nil!58432)) (= lt!2088656 (list!18985 (left!42813 lt!2088482)))))))

(declare-fun b!5064816 () Bool)

(assert (=> b!5064816 (= e!3160881 (list!18985 (right!43143 lt!2088482)))))

(declare-fun b!5064818 () Bool)

(declare-fun res!2156599 () Bool)

(assert (=> b!5064818 (=> (not res!2156599) (not e!3160882))))

(assert (=> b!5064818 (= res!2156599 (= (size!39071 lt!2088656) (+ (size!39071 (list!18985 (left!42813 lt!2088482))) (size!39071 (list!18985 (right!43143 lt!2088482))))))))

(assert (= (and d!1632542 c!869299) b!5064816))

(assert (= (and d!1632542 (not c!869299)) b!5064817))

(assert (= (and d!1632542 res!2156598) b!5064818))

(assert (= (and b!5064818 res!2156599) b!5064819))

(declare-fun m!6105780 () Bool)

(assert (=> d!1632542 m!6105780))

(assert (=> d!1632542 m!6104628))

(declare-fun m!6105782 () Bool)

(assert (=> d!1632542 m!6105782))

(assert (=> d!1632542 m!6104630))

(declare-fun m!6105784 () Bool)

(assert (=> d!1632542 m!6105784))

(assert (=> b!5064817 m!6104630))

(declare-fun m!6105786 () Bool)

(assert (=> b!5064817 m!6105786))

(declare-fun m!6105788 () Bool)

(assert (=> b!5064818 m!6105788))

(assert (=> b!5064818 m!6104628))

(declare-fun m!6105790 () Bool)

(assert (=> b!5064818 m!6105790))

(assert (=> b!5064818 m!6104630))

(declare-fun m!6105792 () Bool)

(assert (=> b!5064818 m!6105792))

(assert (=> b!5064273 d!1632542))

(declare-fun d!1632544 () Bool)

(declare-fun c!869300 () Bool)

(assert (=> d!1632544 (= c!869300 ((_ is Empty!15562) (left!42813 lt!2088482)))))

(declare-fun e!3160883 () List!58556)

(assert (=> d!1632544 (= (list!18985 (left!42813 lt!2088482)) e!3160883)))

(declare-fun b!5064823 () Bool)

(declare-fun e!3160884 () List!58556)

(assert (=> b!5064823 (= e!3160884 (++!12784 (list!18985 (left!42813 (left!42813 lt!2088482))) (list!18985 (right!43143 (left!42813 lt!2088482)))))))

(declare-fun b!5064820 () Bool)

(assert (=> b!5064820 (= e!3160883 Nil!58432)))

(declare-fun b!5064822 () Bool)

(assert (=> b!5064822 (= e!3160884 (list!18986 (xs!18906 (left!42813 lt!2088482))))))

(declare-fun b!5064821 () Bool)

(assert (=> b!5064821 (= e!3160883 e!3160884)))

(declare-fun c!869301 () Bool)

(assert (=> b!5064821 (= c!869301 ((_ is Leaf!25848) (left!42813 lt!2088482)))))

(assert (= (and d!1632544 c!869300) b!5064820))

(assert (= (and d!1632544 (not c!869300)) b!5064821))

(assert (= (and b!5064821 c!869301) b!5064822))

(assert (= (and b!5064821 (not c!869301)) b!5064823))

(declare-fun m!6105794 () Bool)

(assert (=> b!5064823 m!6105794))

(declare-fun m!6105796 () Bool)

(assert (=> b!5064823 m!6105796))

(assert (=> b!5064823 m!6105794))

(assert (=> b!5064823 m!6105796))

(declare-fun m!6105798 () Bool)

(assert (=> b!5064823 m!6105798))

(declare-fun m!6105800 () Bool)

(assert (=> b!5064822 m!6105800))

(assert (=> b!5064273 d!1632544))

(declare-fun d!1632546 () Bool)

(declare-fun c!869302 () Bool)

(assert (=> d!1632546 (= c!869302 ((_ is Empty!15562) (right!43143 lt!2088482)))))

(declare-fun e!3160885 () List!58556)

(assert (=> d!1632546 (= (list!18985 (right!43143 lt!2088482)) e!3160885)))

(declare-fun b!5064827 () Bool)

(declare-fun e!3160886 () List!58556)

(assert (=> b!5064827 (= e!3160886 (++!12784 (list!18985 (left!42813 (right!43143 lt!2088482))) (list!18985 (right!43143 (right!43143 lt!2088482)))))))

(declare-fun b!5064824 () Bool)

(assert (=> b!5064824 (= e!3160885 Nil!58432)))

(declare-fun b!5064826 () Bool)

(assert (=> b!5064826 (= e!3160886 (list!18986 (xs!18906 (right!43143 lt!2088482))))))

(declare-fun b!5064825 () Bool)

(assert (=> b!5064825 (= e!3160885 e!3160886)))

(declare-fun c!869303 () Bool)

(assert (=> b!5064825 (= c!869303 ((_ is Leaf!25848) (right!43143 lt!2088482)))))

(assert (= (and d!1632546 c!869302) b!5064824))

(assert (= (and d!1632546 (not c!869302)) b!5064825))

(assert (= (and b!5064825 c!869303) b!5064826))

(assert (= (and b!5064825 (not c!869303)) b!5064827))

(declare-fun m!6105802 () Bool)

(assert (=> b!5064827 m!6105802))

(declare-fun m!6105804 () Bool)

(assert (=> b!5064827 m!6105804))

(assert (=> b!5064827 m!6105802))

(assert (=> b!5064827 m!6105804))

(declare-fun m!6105806 () Bool)

(assert (=> b!5064827 m!6105806))

(declare-fun m!6105808 () Bool)

(assert (=> b!5064826 m!6105808))

(assert (=> b!5064273 d!1632546))

(declare-fun d!1632548 () Bool)

(declare-fun e!3160888 () Bool)

(assert (=> d!1632548 e!3160888))

(declare-fun res!2156600 () Bool)

(assert (=> d!1632548 (=> (not res!2156600) (not e!3160888))))

(declare-fun lt!2088657 () List!58556)

(assert (=> d!1632548 (= res!2156600 (= (content!10415 lt!2088657) ((_ map or) (content!10415 (list!18985 (left!42813 (left!42813 (right!43143 xs!286))))) (content!10415 (list!18985 (right!43143 (left!42813 (right!43143 xs!286))))))))))

(declare-fun e!3160887 () List!58556)

(assert (=> d!1632548 (= lt!2088657 e!3160887)))

(declare-fun c!869304 () Bool)

(assert (=> d!1632548 (= c!869304 ((_ is Nil!58432) (list!18985 (left!42813 (left!42813 (right!43143 xs!286))))))))

(assert (=> d!1632548 (= (++!12784 (list!18985 (left!42813 (left!42813 (right!43143 xs!286)))) (list!18985 (right!43143 (left!42813 (right!43143 xs!286))))) lt!2088657)))

(declare-fun b!5064829 () Bool)

(assert (=> b!5064829 (= e!3160887 (Cons!58432 (h!64880 (list!18985 (left!42813 (left!42813 (right!43143 xs!286))))) (++!12784 (t!371279 (list!18985 (left!42813 (left!42813 (right!43143 xs!286))))) (list!18985 (right!43143 (left!42813 (right!43143 xs!286)))))))))

(declare-fun b!5064831 () Bool)

(assert (=> b!5064831 (= e!3160888 (or (not (= (list!18985 (right!43143 (left!42813 (right!43143 xs!286)))) Nil!58432)) (= lt!2088657 (list!18985 (left!42813 (left!42813 (right!43143 xs!286)))))))))

(declare-fun b!5064828 () Bool)

(assert (=> b!5064828 (= e!3160887 (list!18985 (right!43143 (left!42813 (right!43143 xs!286)))))))

(declare-fun b!5064830 () Bool)

(declare-fun res!2156601 () Bool)

(assert (=> b!5064830 (=> (not res!2156601) (not e!3160888))))

(assert (=> b!5064830 (= res!2156601 (= (size!39071 lt!2088657) (+ (size!39071 (list!18985 (left!42813 (left!42813 (right!43143 xs!286))))) (size!39071 (list!18985 (right!43143 (left!42813 (right!43143 xs!286))))))))))

(assert (= (and d!1632548 c!869304) b!5064828))

(assert (= (and d!1632548 (not c!869304)) b!5064829))

(assert (= (and d!1632548 res!2156600) b!5064830))

(assert (= (and b!5064830 res!2156601) b!5064831))

(declare-fun m!6105810 () Bool)

(assert (=> d!1632548 m!6105810))

(assert (=> d!1632548 m!6104010))

(declare-fun m!6105812 () Bool)

(assert (=> d!1632548 m!6105812))

(assert (=> d!1632548 m!6104012))

(declare-fun m!6105814 () Bool)

(assert (=> d!1632548 m!6105814))

(assert (=> b!5064829 m!6104012))

(declare-fun m!6105816 () Bool)

(assert (=> b!5064829 m!6105816))

(declare-fun m!6105818 () Bool)

(assert (=> b!5064830 m!6105818))

(assert (=> b!5064830 m!6104010))

(declare-fun m!6105820 () Bool)

(assert (=> b!5064830 m!6105820))

(assert (=> b!5064830 m!6104012))

(declare-fun m!6105822 () Bool)

(assert (=> b!5064830 m!6105822))

(assert (=> b!5063948 d!1632548))

(declare-fun d!1632550 () Bool)

(declare-fun c!869305 () Bool)

(assert (=> d!1632550 (= c!869305 ((_ is Empty!15562) (left!42813 (left!42813 (right!43143 xs!286)))))))

(declare-fun e!3160889 () List!58556)

(assert (=> d!1632550 (= (list!18985 (left!42813 (left!42813 (right!43143 xs!286)))) e!3160889)))

(declare-fun b!5064835 () Bool)

(declare-fun e!3160890 () List!58556)

(assert (=> b!5064835 (= e!3160890 (++!12784 (list!18985 (left!42813 (left!42813 (left!42813 (right!43143 xs!286))))) (list!18985 (right!43143 (left!42813 (left!42813 (right!43143 xs!286)))))))))

(declare-fun b!5064832 () Bool)

(assert (=> b!5064832 (= e!3160889 Nil!58432)))

(declare-fun b!5064834 () Bool)

(assert (=> b!5064834 (= e!3160890 (list!18986 (xs!18906 (left!42813 (left!42813 (right!43143 xs!286))))))))

(declare-fun b!5064833 () Bool)

(assert (=> b!5064833 (= e!3160889 e!3160890)))

(declare-fun c!869306 () Bool)

(assert (=> b!5064833 (= c!869306 ((_ is Leaf!25848) (left!42813 (left!42813 (right!43143 xs!286)))))))

(assert (= (and d!1632550 c!869305) b!5064832))

(assert (= (and d!1632550 (not c!869305)) b!5064833))

(assert (= (and b!5064833 c!869306) b!5064834))

(assert (= (and b!5064833 (not c!869306)) b!5064835))

(declare-fun m!6105824 () Bool)

(assert (=> b!5064835 m!6105824))

(declare-fun m!6105826 () Bool)

(assert (=> b!5064835 m!6105826))

(assert (=> b!5064835 m!6105824))

(assert (=> b!5064835 m!6105826))

(declare-fun m!6105828 () Bool)

(assert (=> b!5064835 m!6105828))

(declare-fun m!6105830 () Bool)

(assert (=> b!5064834 m!6105830))

(assert (=> b!5063948 d!1632550))

(declare-fun d!1632552 () Bool)

(declare-fun c!869307 () Bool)

(assert (=> d!1632552 (= c!869307 ((_ is Empty!15562) (right!43143 (left!42813 (right!43143 xs!286)))))))

(declare-fun e!3160891 () List!58556)

(assert (=> d!1632552 (= (list!18985 (right!43143 (left!42813 (right!43143 xs!286)))) e!3160891)))

(declare-fun b!5064839 () Bool)

(declare-fun e!3160892 () List!58556)

(assert (=> b!5064839 (= e!3160892 (++!12784 (list!18985 (left!42813 (right!43143 (left!42813 (right!43143 xs!286))))) (list!18985 (right!43143 (right!43143 (left!42813 (right!43143 xs!286)))))))))

(declare-fun b!5064836 () Bool)

(assert (=> b!5064836 (= e!3160891 Nil!58432)))

(declare-fun b!5064838 () Bool)

(assert (=> b!5064838 (= e!3160892 (list!18986 (xs!18906 (right!43143 (left!42813 (right!43143 xs!286))))))))

(declare-fun b!5064837 () Bool)

(assert (=> b!5064837 (= e!3160891 e!3160892)))

(declare-fun c!869308 () Bool)

(assert (=> b!5064837 (= c!869308 ((_ is Leaf!25848) (right!43143 (left!42813 (right!43143 xs!286)))))))

(assert (= (and d!1632552 c!869307) b!5064836))

(assert (= (and d!1632552 (not c!869307)) b!5064837))

(assert (= (and b!5064837 c!869308) b!5064838))

(assert (= (and b!5064837 (not c!869308)) b!5064839))

(declare-fun m!6105832 () Bool)

(assert (=> b!5064839 m!6105832))

(declare-fun m!6105834 () Bool)

(assert (=> b!5064839 m!6105834))

(assert (=> b!5064839 m!6105832))

(assert (=> b!5064839 m!6105834))

(declare-fun m!6105836 () Bool)

(assert (=> b!5064839 m!6105836))

(declare-fun m!6105838 () Bool)

(assert (=> b!5064838 m!6105838))

(assert (=> b!5063948 d!1632552))

(assert (=> b!5063936 d!1632306))

(assert (=> b!5063936 d!1631858))

(assert (=> b!5063936 d!1631854))

(declare-fun d!1632554 () Bool)

(declare-fun res!2156602 () Bool)

(declare-fun e!3160893 () Bool)

(assert (=> d!1632554 (=> (not res!2156602) (not e!3160893))))

(assert (=> d!1632554 (= res!2156602 (<= (size!39071 (list!18986 (xs!18906 (left!42813 (right!43143 xs!286))))) 512))))

(assert (=> d!1632554 (= (inv!77549 (left!42813 (right!43143 xs!286))) e!3160893)))

(declare-fun b!5064840 () Bool)

(declare-fun res!2156603 () Bool)

(assert (=> b!5064840 (=> (not res!2156603) (not e!3160893))))

(assert (=> b!5064840 (= res!2156603 (= (csize!31355 (left!42813 (right!43143 xs!286))) (size!39071 (list!18986 (xs!18906 (left!42813 (right!43143 xs!286)))))))))

(declare-fun b!5064841 () Bool)

(assert (=> b!5064841 (= e!3160893 (and (> (csize!31355 (left!42813 (right!43143 xs!286))) 0) (<= (csize!31355 (left!42813 (right!43143 xs!286))) 512)))))

(assert (= (and d!1632554 res!2156602) b!5064840))

(assert (= (and b!5064840 res!2156603) b!5064841))

(assert (=> d!1632554 m!6104016))

(assert (=> d!1632554 m!6104016))

(declare-fun m!6105840 () Bool)

(assert (=> d!1632554 m!6105840))

(assert (=> b!5064840 m!6104016))

(assert (=> b!5064840 m!6104016))

(assert (=> b!5064840 m!6105840))

(assert (=> b!5063847 d!1632554))

(assert (=> b!5063874 d!1632516))

(assert (=> b!5063874 d!1632518))

(declare-fun d!1632556 () Bool)

(declare-fun lt!2088658 () Int)

(assert (=> d!1632556 (>= lt!2088658 0)))

(declare-fun e!3160894 () Int)

(assert (=> d!1632556 (= lt!2088658 e!3160894)))

(declare-fun c!869309 () Bool)

(assert (=> d!1632556 (= c!869309 ((_ is Nil!58432) lt!2088517))))

(assert (=> d!1632556 (= (size!39071 lt!2088517) lt!2088658)))

(declare-fun b!5064842 () Bool)

(assert (=> b!5064842 (= e!3160894 0)))

(declare-fun b!5064843 () Bool)

(assert (=> b!5064843 (= e!3160894 (+ 1 (size!39071 (t!371279 lt!2088517))))))

(assert (= (and d!1632556 c!869309) b!5064842))

(assert (= (and d!1632556 (not c!869309)) b!5064843))

(declare-fun m!6105842 () Bool)

(assert (=> b!5064843 m!6105842))

(assert (=> b!5063885 d!1632556))

(declare-fun d!1632558 () Bool)

(declare-fun lt!2088659 () Int)

(assert (=> d!1632558 (>= lt!2088659 0)))

(declare-fun e!3160895 () Int)

(assert (=> d!1632558 (= lt!2088659 e!3160895)))

(declare-fun c!869310 () Bool)

(assert (=> d!1632558 (= c!869310 ((_ is Nil!58432) (list!18985 (left!42813 lt!2088442))))))

(assert (=> d!1632558 (= (size!39071 (list!18985 (left!42813 lt!2088442))) lt!2088659)))

(declare-fun b!5064844 () Bool)

(assert (=> b!5064844 (= e!3160895 0)))

(declare-fun b!5064845 () Bool)

(assert (=> b!5064845 (= e!3160895 (+ 1 (size!39071 (t!371279 (list!18985 (left!42813 lt!2088442))))))))

(assert (= (and d!1632558 c!869310) b!5064844))

(assert (= (and d!1632558 (not c!869310)) b!5064845))

(declare-fun m!6105844 () Bool)

(assert (=> b!5064845 m!6105844))

(assert (=> b!5063885 d!1632558))

(declare-fun d!1632560 () Bool)

(declare-fun lt!2088660 () Int)

(assert (=> d!1632560 (>= lt!2088660 0)))

(declare-fun e!3160896 () Int)

(assert (=> d!1632560 (= lt!2088660 e!3160896)))

(declare-fun c!869311 () Bool)

(assert (=> d!1632560 (= c!869311 ((_ is Nil!58432) (list!18985 (right!43143 lt!2088442))))))

(assert (=> d!1632560 (= (size!39071 (list!18985 (right!43143 lt!2088442))) lt!2088660)))

(declare-fun b!5064846 () Bool)

(assert (=> b!5064846 (= e!3160896 0)))

(declare-fun b!5064847 () Bool)

(assert (=> b!5064847 (= e!3160896 (+ 1 (size!39071 (t!371279 (list!18985 (right!43143 lt!2088442))))))))

(assert (= (and d!1632560 c!869311) b!5064846))

(assert (= (and d!1632560 (not c!869311)) b!5064847))

(declare-fun m!6105846 () Bool)

(assert (=> b!5064847 m!6105846))

(assert (=> b!5063885 d!1632560))

(declare-fun d!1632562 () Bool)

(declare-fun lt!2088661 () Bool)

(assert (=> d!1632562 (= lt!2088661 (isEmpty!31628 (list!18985 (right!43143 (left!42813 ys!41)))))))

(assert (=> d!1632562 (= lt!2088661 (= (size!39073 (right!43143 (left!42813 ys!41))) 0))))

(assert (=> d!1632562 (= (isEmpty!31626 (right!43143 (left!42813 ys!41))) lt!2088661)))

(declare-fun bs!1189834 () Bool)

(assert (= bs!1189834 d!1632562))

(assert (=> bs!1189834 m!6103444))

(assert (=> bs!1189834 m!6103444))

(declare-fun m!6105848 () Bool)

(assert (=> bs!1189834 m!6105848))

(assert (=> bs!1189834 m!6104480))

(assert (=> b!5064098 d!1632562))

(declare-fun d!1632564 () Bool)

(declare-fun e!3160898 () Bool)

(assert (=> d!1632564 e!3160898))

(declare-fun res!2156604 () Bool)

(assert (=> d!1632564 (=> (not res!2156604) (not e!3160898))))

(declare-fun lt!2088662 () List!58556)

(assert (=> d!1632564 (= res!2156604 (= (content!10415 lt!2088662) ((_ map or) (content!10415 (list!18985 (left!42813 lt!2088483))) (content!10415 (list!18985 (right!43143 lt!2088483))))))))

(declare-fun e!3160897 () List!58556)

(assert (=> d!1632564 (= lt!2088662 e!3160897)))

(declare-fun c!869312 () Bool)

(assert (=> d!1632564 (= c!869312 ((_ is Nil!58432) (list!18985 (left!42813 lt!2088483))))))

(assert (=> d!1632564 (= (++!12784 (list!18985 (left!42813 lt!2088483)) (list!18985 (right!43143 lt!2088483))) lt!2088662)))

(declare-fun b!5064849 () Bool)

(assert (=> b!5064849 (= e!3160897 (Cons!58432 (h!64880 (list!18985 (left!42813 lt!2088483))) (++!12784 (t!371279 (list!18985 (left!42813 lt!2088483))) (list!18985 (right!43143 lt!2088483)))))))

(declare-fun b!5064851 () Bool)

(assert (=> b!5064851 (= e!3160898 (or (not (= (list!18985 (right!43143 lt!2088483)) Nil!58432)) (= lt!2088662 (list!18985 (left!42813 lt!2088483)))))))

(declare-fun b!5064848 () Bool)

(assert (=> b!5064848 (= e!3160897 (list!18985 (right!43143 lt!2088483)))))

(declare-fun b!5064850 () Bool)

(declare-fun res!2156605 () Bool)

(assert (=> b!5064850 (=> (not res!2156605) (not e!3160898))))

(assert (=> b!5064850 (= res!2156605 (= (size!39071 lt!2088662) (+ (size!39071 (list!18985 (left!42813 lt!2088483))) (size!39071 (list!18985 (right!43143 lt!2088483))))))))

(assert (= (and d!1632564 c!869312) b!5064848))

(assert (= (and d!1632564 (not c!869312)) b!5064849))

(assert (= (and d!1632564 res!2156604) b!5064850))

(assert (= (and b!5064850 res!2156605) b!5064851))

(declare-fun m!6105850 () Bool)

(assert (=> d!1632564 m!6105850))

(assert (=> d!1632564 m!6104402))

(declare-fun m!6105852 () Bool)

(assert (=> d!1632564 m!6105852))

(assert (=> d!1632564 m!6104404))

(declare-fun m!6105854 () Bool)

(assert (=> d!1632564 m!6105854))

(assert (=> b!5064849 m!6104404))

(declare-fun m!6105856 () Bool)

(assert (=> b!5064849 m!6105856))

(declare-fun m!6105858 () Bool)

(assert (=> b!5064850 m!6105858))

(assert (=> b!5064850 m!6104402))

(declare-fun m!6105860 () Bool)

(assert (=> b!5064850 m!6105860))

(assert (=> b!5064850 m!6104404))

(declare-fun m!6105862 () Bool)

(assert (=> b!5064850 m!6105862))

(assert (=> b!5064149 d!1632564))

(declare-fun d!1632566 () Bool)

(declare-fun c!869313 () Bool)

(assert (=> d!1632566 (= c!869313 ((_ is Empty!15562) (left!42813 lt!2088483)))))

(declare-fun e!3160899 () List!58556)

(assert (=> d!1632566 (= (list!18985 (left!42813 lt!2088483)) e!3160899)))

(declare-fun b!5064855 () Bool)

(declare-fun e!3160900 () List!58556)

(assert (=> b!5064855 (= e!3160900 (++!12784 (list!18985 (left!42813 (left!42813 lt!2088483))) (list!18985 (right!43143 (left!42813 lt!2088483)))))))

(declare-fun b!5064852 () Bool)

(assert (=> b!5064852 (= e!3160899 Nil!58432)))

(declare-fun b!5064854 () Bool)

(assert (=> b!5064854 (= e!3160900 (list!18986 (xs!18906 (left!42813 lt!2088483))))))

(declare-fun b!5064853 () Bool)

(assert (=> b!5064853 (= e!3160899 e!3160900)))

(declare-fun c!869314 () Bool)

(assert (=> b!5064853 (= c!869314 ((_ is Leaf!25848) (left!42813 lt!2088483)))))

(assert (= (and d!1632566 c!869313) b!5064852))

(assert (= (and d!1632566 (not c!869313)) b!5064853))

(assert (= (and b!5064853 c!869314) b!5064854))

(assert (= (and b!5064853 (not c!869314)) b!5064855))

(declare-fun m!6105864 () Bool)

(assert (=> b!5064855 m!6105864))

(declare-fun m!6105866 () Bool)

(assert (=> b!5064855 m!6105866))

(assert (=> b!5064855 m!6105864))

(assert (=> b!5064855 m!6105866))

(declare-fun m!6105868 () Bool)

(assert (=> b!5064855 m!6105868))

(declare-fun m!6105870 () Bool)

(assert (=> b!5064854 m!6105870))

(assert (=> b!5064149 d!1632566))

(declare-fun d!1632568 () Bool)

(declare-fun c!869315 () Bool)

(assert (=> d!1632568 (= c!869315 ((_ is Empty!15562) (right!43143 lt!2088483)))))

(declare-fun e!3160901 () List!58556)

(assert (=> d!1632568 (= (list!18985 (right!43143 lt!2088483)) e!3160901)))

(declare-fun b!5064859 () Bool)

(declare-fun e!3160902 () List!58556)

(assert (=> b!5064859 (= e!3160902 (++!12784 (list!18985 (left!42813 (right!43143 lt!2088483))) (list!18985 (right!43143 (right!43143 lt!2088483)))))))

(declare-fun b!5064856 () Bool)

(assert (=> b!5064856 (= e!3160901 Nil!58432)))

(declare-fun b!5064858 () Bool)

(assert (=> b!5064858 (= e!3160902 (list!18986 (xs!18906 (right!43143 lt!2088483))))))

(declare-fun b!5064857 () Bool)

(assert (=> b!5064857 (= e!3160901 e!3160902)))

(declare-fun c!869316 () Bool)

(assert (=> b!5064857 (= c!869316 ((_ is Leaf!25848) (right!43143 lt!2088483)))))

(assert (= (and d!1632568 c!869315) b!5064856))

(assert (= (and d!1632568 (not c!869315)) b!5064857))

(assert (= (and b!5064857 c!869316) b!5064858))

(assert (= (and b!5064857 (not c!869316)) b!5064859))

(declare-fun m!6105872 () Bool)

(assert (=> b!5064859 m!6105872))

(declare-fun m!6105874 () Bool)

(assert (=> b!5064859 m!6105874))

(assert (=> b!5064859 m!6105872))

(assert (=> b!5064859 m!6105874))

(declare-fun m!6105876 () Bool)

(assert (=> b!5064859 m!6105876))

(declare-fun m!6105878 () Bool)

(assert (=> b!5064858 m!6105878))

(assert (=> b!5064149 d!1632568))

(declare-fun d!1632570 () Bool)

(declare-fun lt!2088663 () Int)

(assert (=> d!1632570 (>= lt!2088663 0)))

(declare-fun e!3160903 () Int)

(assert (=> d!1632570 (= lt!2088663 e!3160903)))

(declare-fun c!869317 () Bool)

(assert (=> d!1632570 (= c!869317 ((_ is Nil!58432) lt!2088516))))

(assert (=> d!1632570 (= (size!39071 lt!2088516) lt!2088663)))

(declare-fun b!5064860 () Bool)

(assert (=> b!5064860 (= e!3160903 0)))

(declare-fun b!5064861 () Bool)

(assert (=> b!5064861 (= e!3160903 (+ 1 (size!39071 (t!371279 lt!2088516))))))

(assert (= (and d!1632570 c!869317) b!5064860))

(assert (= (and d!1632570 (not c!869317)) b!5064861))

(declare-fun m!6105880 () Bool)

(assert (=> b!5064861 m!6105880))

(assert (=> b!5063863 d!1632570))

(declare-fun d!1632572 () Bool)

(declare-fun lt!2088664 () Int)

(assert (=> d!1632572 (>= lt!2088664 0)))

(declare-fun e!3160904 () Int)

(assert (=> d!1632572 (= lt!2088664 e!3160904)))

(declare-fun c!869318 () Bool)

(assert (=> d!1632572 (= c!869318 ((_ is Nil!58432) (list!18985 (left!42813 ys!41))))))

(assert (=> d!1632572 (= (size!39071 (list!18985 (left!42813 ys!41))) lt!2088664)))

(declare-fun b!5064862 () Bool)

(assert (=> b!5064862 (= e!3160904 0)))

(declare-fun b!5064863 () Bool)

(assert (=> b!5064863 (= e!3160904 (+ 1 (size!39071 (t!371279 (list!18985 (left!42813 ys!41))))))))

(assert (= (and d!1632572 c!869318) b!5064862))

(assert (= (and d!1632572 (not c!869318)) b!5064863))

(declare-fun m!6105882 () Bool)

(assert (=> b!5064863 m!6105882))

(assert (=> b!5063863 d!1632572))

(declare-fun d!1632574 () Bool)

(declare-fun lt!2088665 () Int)

(assert (=> d!1632574 (>= lt!2088665 0)))

(declare-fun e!3160905 () Int)

(assert (=> d!1632574 (= lt!2088665 e!3160905)))

(declare-fun c!869319 () Bool)

(assert (=> d!1632574 (= c!869319 ((_ is Nil!58432) (list!18985 (right!43143 ys!41))))))

(assert (=> d!1632574 (= (size!39071 (list!18985 (right!43143 ys!41))) lt!2088665)))

(declare-fun b!5064864 () Bool)

(assert (=> b!5064864 (= e!3160905 0)))

(declare-fun b!5064865 () Bool)

(assert (=> b!5064865 (= e!3160905 (+ 1 (size!39071 (t!371279 (list!18985 (right!43143 ys!41))))))))

(assert (= (and d!1632574 c!869319) b!5064864))

(assert (= (and d!1632574 (not c!869319)) b!5064865))

(declare-fun m!6105884 () Bool)

(assert (=> b!5064865 m!6105884))

(assert (=> b!5063863 d!1632574))

(declare-fun d!1632576 () Bool)

(assert (=> d!1632576 (= (isEmpty!31628 (list!18985 (right!43143 lt!2088442))) ((_ is Nil!58432) (list!18985 (right!43143 lt!2088442))))))

(assert (=> d!1632070 d!1632576))

(assert (=> d!1632070 d!1631822))

(declare-fun d!1632578 () Bool)

(declare-fun lt!2088666 () Int)

(assert (=> d!1632578 (= lt!2088666 (size!39071 (list!18985 (right!43143 lt!2088442))))))

(assert (=> d!1632578 (= lt!2088666 (ite ((_ is Empty!15562) (right!43143 lt!2088442)) 0 (ite ((_ is Leaf!25848) (right!43143 lt!2088442)) (csize!31355 (right!43143 lt!2088442)) (csize!31354 (right!43143 lt!2088442)))))))

(assert (=> d!1632578 (= (size!39073 (right!43143 lt!2088442)) lt!2088666)))

(declare-fun bs!1189835 () Bool)

(assert (= bs!1189835 d!1632578))

(assert (=> bs!1189835 m!6103162))

(assert (=> bs!1189835 m!6103162))

(assert (=> bs!1189835 m!6103894))

(assert (=> d!1632070 d!1632578))

(declare-fun bm!352809 () Bool)

(declare-fun call!352817 () List!58556)

(declare-fun call!352815 () List!58556)

(assert (=> bm!352809 (= call!352817 (++!12784 call!352815 (list!18985 (right!43143 (left!42813 ys!41)))))))

(declare-fun d!1632580 () Bool)

(declare-fun e!3160906 () Bool)

(assert (=> d!1632580 e!3160906))

(declare-fun c!869320 () Bool)

(assert (=> d!1632580 (= c!869320 ((_ is Nil!58432) (t!371279 (list!18985 xs!286))))))

(assert (=> d!1632580 (= (appendAssoc!300 (t!371279 (list!18985 xs!286)) (list!18985 (left!42813 (left!42813 ys!41))) (list!18985 (right!43143 (left!42813 ys!41)))) true)))

(declare-fun bm!352810 () Bool)

(declare-fun call!352814 () List!58556)

(declare-fun call!352816 () List!58556)

(assert (=> bm!352810 (= call!352814 (++!12784 (t!371279 (list!18985 xs!286)) call!352816))))

(declare-fun bm!352811 () Bool)

(assert (=> bm!352811 (= call!352816 (++!12784 (list!18985 (left!42813 (left!42813 ys!41))) (list!18985 (right!43143 (left!42813 ys!41)))))))

(declare-fun b!5064866 () Bool)

(assert (=> b!5064866 (= e!3160906 (= call!352817 call!352814))))

(declare-fun lt!2088667 () Bool)

(assert (=> b!5064866 (= lt!2088667 (appendAssoc!300 (t!371279 (t!371279 (list!18985 xs!286))) (list!18985 (left!42813 (left!42813 ys!41))) (list!18985 (right!43143 (left!42813 ys!41)))))))

(declare-fun bm!352812 () Bool)

(assert (=> bm!352812 (= call!352815 (++!12784 (t!371279 (list!18985 xs!286)) (list!18985 (left!42813 (left!42813 ys!41)))))))

(declare-fun b!5064867 () Bool)

(assert (=> b!5064867 (= e!3160906 (= call!352817 call!352814))))

(assert (= (and d!1632580 c!869320) b!5064867))

(assert (= (and d!1632580 (not c!869320)) b!5064866))

(assert (= (or b!5064867 b!5064866) bm!352812))

(assert (= (or b!5064867 b!5064866) bm!352811))

(assert (= (or b!5064867 b!5064866) bm!352810))

(assert (= (or b!5064867 b!5064866) bm!352809))

(declare-fun m!6105886 () Bool)

(assert (=> bm!352810 m!6105886))

(assert (=> bm!352812 m!6103442))

(assert (=> bm!352812 m!6104106))

(assert (=> b!5064866 m!6103442))

(assert (=> b!5064866 m!6103444))

(declare-fun m!6105888 () Bool)

(assert (=> b!5064866 m!6105888))

(assert (=> bm!352811 m!6103442))

(assert (=> bm!352811 m!6103444))

(assert (=> bm!352811 m!6103858))

(assert (=> bm!352809 m!6103444))

(declare-fun m!6105890 () Bool)

(assert (=> bm!352809 m!6105890))

(assert (=> b!5064288 d!1632580))

(declare-fun d!1632582 () Bool)

(declare-fun lt!2088668 () Int)

(assert (=> d!1632582 (= lt!2088668 (size!39071 (list!18985 (left!42813 (left!42813 ys!41)))))))

(assert (=> d!1632582 (= lt!2088668 (ite ((_ is Empty!15562) (left!42813 (left!42813 ys!41))) 0 (ite ((_ is Leaf!25848) (left!42813 (left!42813 ys!41))) (csize!31355 (left!42813 (left!42813 ys!41))) (csize!31354 (left!42813 (left!42813 ys!41))))))))

(assert (=> d!1632582 (= (size!39073 (left!42813 (left!42813 ys!41))) lt!2088668)))

(declare-fun bs!1189836 () Bool)

(assert (= bs!1189836 d!1632582))

(assert (=> bs!1189836 m!6103442))

(assert (=> bs!1189836 m!6103442))

(assert (=> bs!1189836 m!6104110))

(assert (=> d!1632034 d!1632582))

(declare-fun d!1632584 () Bool)

(declare-fun lt!2088669 () Int)

(assert (=> d!1632584 (= lt!2088669 (size!39071 (list!18985 (right!43143 (left!42813 ys!41)))))))

(assert (=> d!1632584 (= lt!2088669 (ite ((_ is Empty!15562) (right!43143 (left!42813 ys!41))) 0 (ite ((_ is Leaf!25848) (right!43143 (left!42813 ys!41))) (csize!31355 (right!43143 (left!42813 ys!41))) (csize!31354 (right!43143 (left!42813 ys!41))))))))

(assert (=> d!1632584 (= (size!39073 (right!43143 (left!42813 ys!41))) lt!2088669)))

(declare-fun bs!1189837 () Bool)

(assert (= bs!1189837 d!1632584))

(assert (=> bs!1189837 m!6103444))

(assert (=> bs!1189837 m!6103444))

(assert (=> bs!1189837 m!6104870))

(assert (=> d!1632034 d!1632584))

(assert (=> b!5064283 d!1631872))

(assert (=> b!5064283 d!1632052))

(declare-fun d!1632586 () Bool)

(declare-fun lt!2088670 () Int)

(assert (=> d!1632586 (>= lt!2088670 0)))

(declare-fun e!3160907 () Int)

(assert (=> d!1632586 (= lt!2088670 e!3160907)))

(declare-fun c!869321 () Bool)

(assert (=> d!1632586 (= c!869321 ((_ is Nil!58432) (innerList!15650 (xs!18906 (right!43143 ys!41)))))))

(assert (=> d!1632586 (= (size!39071 (innerList!15650 (xs!18906 (right!43143 ys!41)))) lt!2088670)))

(declare-fun b!5064868 () Bool)

(assert (=> b!5064868 (= e!3160907 0)))

(declare-fun b!5064869 () Bool)

(assert (=> b!5064869 (= e!3160907 (+ 1 (size!39071 (t!371279 (innerList!15650 (xs!18906 (right!43143 ys!41)))))))))

(assert (= (and d!1632586 c!869321) b!5064868))

(assert (= (and d!1632586 (not c!869321)) b!5064869))

(declare-fun m!6105892 () Bool)

(assert (=> b!5064869 m!6105892))

(assert (=> d!1631730 d!1632586))

(declare-fun d!1632588 () Bool)

(declare-fun e!3160909 () Bool)

(assert (=> d!1632588 e!3160909))

(declare-fun res!2156606 () Bool)

(assert (=> d!1632588 (=> (not res!2156606) (not e!3160909))))

(declare-fun lt!2088671 () List!58556)

(assert (=> d!1632588 (= res!2156606 (= (content!10415 lt!2088671) ((_ map or) (content!10415 (list!18985 (left!42813 xs!286))) (content!10415 call!352744))))))

(declare-fun e!3160908 () List!58556)

(assert (=> d!1632588 (= lt!2088671 e!3160908)))

(declare-fun c!869322 () Bool)

(assert (=> d!1632588 (= c!869322 ((_ is Nil!58432) (list!18985 (left!42813 xs!286))))))

(assert (=> d!1632588 (= (++!12784 (list!18985 (left!42813 xs!286)) call!352744) lt!2088671)))

(declare-fun b!5064871 () Bool)

(assert (=> b!5064871 (= e!3160908 (Cons!58432 (h!64880 (list!18985 (left!42813 xs!286))) (++!12784 (t!371279 (list!18985 (left!42813 xs!286))) call!352744)))))

(declare-fun b!5064873 () Bool)

(assert (=> b!5064873 (= e!3160909 (or (not (= call!352744 Nil!58432)) (= lt!2088671 (list!18985 (left!42813 xs!286)))))))

(declare-fun b!5064870 () Bool)

(assert (=> b!5064870 (= e!3160908 call!352744)))

(declare-fun b!5064872 () Bool)

(declare-fun res!2156607 () Bool)

(assert (=> b!5064872 (=> (not res!2156607) (not e!3160909))))

(assert (=> b!5064872 (= res!2156607 (= (size!39071 lt!2088671) (+ (size!39071 (list!18985 (left!42813 xs!286))) (size!39071 call!352744))))))

(assert (= (and d!1632588 c!869322) b!5064870))

(assert (= (and d!1632588 (not c!869322)) b!5064871))

(assert (= (and d!1632588 res!2156606) b!5064872))

(assert (= (and b!5064872 res!2156607) b!5064873))

(declare-fun m!6105894 () Bool)

(assert (=> d!1632588 m!6105894))

(assert (=> d!1632588 m!6103182))

(assert (=> d!1632588 m!6104618))

(declare-fun m!6105896 () Bool)

(assert (=> d!1632588 m!6105896))

(declare-fun m!6105898 () Bool)

(assert (=> b!5064871 m!6105898))

(declare-fun m!6105900 () Bool)

(assert (=> b!5064872 m!6105900))

(assert (=> b!5064872 m!6103182))

(assert (=> b!5064872 m!6103696))

(declare-fun m!6105902 () Bool)

(assert (=> b!5064872 m!6105902))

(assert (=> bm!352738 d!1632588))

(declare-fun d!1632590 () Bool)

(declare-fun lt!2088672 () Bool)

(assert (=> d!1632590 (= lt!2088672 (isEmpty!31628 (list!18985 (left!42813 (right!43143 lt!2088442)))))))

(assert (=> d!1632590 (= lt!2088672 (= (size!39073 (left!42813 (right!43143 lt!2088442))) 0))))

(assert (=> d!1632590 (= (isEmpty!31626 (left!42813 (right!43143 lt!2088442))) lt!2088672)))

(declare-fun bs!1189838 () Bool)

(assert (= bs!1189838 d!1632590))

(assert (=> bs!1189838 m!6103904))

(assert (=> bs!1189838 m!6103904))

(declare-fun m!6105904 () Bool)

(assert (=> bs!1189838 m!6105904))

(declare-fun m!6105906 () Bool)

(assert (=> bs!1189838 m!6105906))

(assert (=> b!5064290 d!1632590))

(declare-fun d!1632592 () Bool)

(assert (=> d!1632592 (= (height!2139 (left!42813 (left!42813 xs!286))) (ite ((_ is Empty!15562) (left!42813 (left!42813 xs!286))) 0 (ite ((_ is Leaf!25848) (left!42813 (left!42813 xs!286))) 1 (cheight!15773 (left!42813 (left!42813 xs!286))))))))

(assert (=> b!5064040 d!1632592))

(declare-fun d!1632594 () Bool)

(assert (=> d!1632594 (= (height!2139 (right!43143 (left!42813 xs!286))) (ite ((_ is Empty!15562) (right!43143 (left!42813 xs!286))) 0 (ite ((_ is Leaf!25848) (right!43143 (left!42813 xs!286))) 1 (cheight!15773 (right!43143 (left!42813 xs!286))))))))

(assert (=> b!5064040 d!1632594))

(declare-fun d!1632596 () Bool)

(assert (=> d!1632596 (= (max!0 (height!2139 (left!42813 (left!42813 ys!41))) (height!2139 (right!43143 (left!42813 ys!41)))) (ite (< (height!2139 (left!42813 (left!42813 ys!41))) (height!2139 (right!43143 (left!42813 ys!41)))) (height!2139 (right!43143 (left!42813 ys!41))) (height!2139 (left!42813 (left!42813 ys!41)))))))

(assert (=> b!5064190 d!1632596))

(declare-fun d!1632598 () Bool)

(assert (=> d!1632598 (= (height!2139 (left!42813 (left!42813 ys!41))) (ite ((_ is Empty!15562) (left!42813 (left!42813 ys!41))) 0 (ite ((_ is Leaf!25848) (left!42813 (left!42813 ys!41))) 1 (cheight!15773 (left!42813 (left!42813 ys!41))))))))

(assert (=> b!5064190 d!1632598))

(declare-fun d!1632600 () Bool)

(assert (=> d!1632600 (= (height!2139 (right!43143 (left!42813 ys!41))) (ite ((_ is Empty!15562) (right!43143 (left!42813 ys!41))) 0 (ite ((_ is Leaf!25848) (right!43143 (left!42813 ys!41))) 1 (cheight!15773 (right!43143 (left!42813 ys!41))))))))

(assert (=> b!5064190 d!1632600))

(declare-fun d!1632602 () Bool)

(declare-fun e!3160911 () Bool)

(assert (=> d!1632602 e!3160911))

(declare-fun res!2156608 () Bool)

(assert (=> d!1632602 (=> (not res!2156608) (not e!3160911))))

(declare-fun lt!2088673 () List!58556)

(assert (=> d!1632602 (= res!2156608 (= (content!10415 lt!2088673) ((_ map or) (content!10415 (list!18985 (left!42813 (left!42813 ys!41)))) (content!10415 (list!18985 (right!43143 (left!42813 ys!41)))))))))

(declare-fun e!3160910 () List!58556)

(assert (=> d!1632602 (= lt!2088673 e!3160910)))

(declare-fun c!869323 () Bool)

(assert (=> d!1632602 (= c!869323 ((_ is Nil!58432) (list!18985 (left!42813 (left!42813 ys!41)))))))

(assert (=> d!1632602 (= (++!12784 (list!18985 (left!42813 (left!42813 ys!41))) (list!18985 (right!43143 (left!42813 ys!41)))) lt!2088673)))

(declare-fun b!5064875 () Bool)

(assert (=> b!5064875 (= e!3160910 (Cons!58432 (h!64880 (list!18985 (left!42813 (left!42813 ys!41)))) (++!12784 (t!371279 (list!18985 (left!42813 (left!42813 ys!41)))) (list!18985 (right!43143 (left!42813 ys!41))))))))

(declare-fun b!5064877 () Bool)

(assert (=> b!5064877 (= e!3160911 (or (not (= (list!18985 (right!43143 (left!42813 ys!41))) Nil!58432)) (= lt!2088673 (list!18985 (left!42813 (left!42813 ys!41))))))))

(declare-fun b!5064874 () Bool)

(assert (=> b!5064874 (= e!3160910 (list!18985 (right!43143 (left!42813 ys!41))))))

(declare-fun b!5064876 () Bool)

(declare-fun res!2156609 () Bool)

(assert (=> b!5064876 (=> (not res!2156609) (not e!3160911))))

(assert (=> b!5064876 (= res!2156609 (= (size!39071 lt!2088673) (+ (size!39071 (list!18985 (left!42813 (left!42813 ys!41)))) (size!39071 (list!18985 (right!43143 (left!42813 ys!41)))))))))

(assert (= (and d!1632602 c!869323) b!5064874))

(assert (= (and d!1632602 (not c!869323)) b!5064875))

(assert (= (and d!1632602 res!2156608) b!5064876))

(assert (= (and b!5064876 res!2156609) b!5064877))

(declare-fun m!6105908 () Bool)

(assert (=> d!1632602 m!6105908))

(assert (=> d!1632602 m!6103442))

(assert (=> d!1632602 m!6104104))

(assert (=> d!1632602 m!6103444))

(assert (=> d!1632602 m!6104862))

(assert (=> b!5064875 m!6103444))

(declare-fun m!6105910 () Bool)

(assert (=> b!5064875 m!6105910))

(declare-fun m!6105912 () Bool)

(assert (=> b!5064876 m!6105912))

(assert (=> b!5064876 m!6103442))

(assert (=> b!5064876 m!6104110))

(assert (=> b!5064876 m!6103444))

(assert (=> b!5064876 m!6104870))

(assert (=> b!5063868 d!1632602))

(assert (=> b!5063868 d!1631898))

(assert (=> b!5063868 d!1631882))

(declare-fun b!5064878 () Bool)

(declare-fun e!3160914 () Conc!15562)

(declare-fun e!3160919 () Conc!15562)

(assert (=> b!5064878 (= e!3160914 e!3160919)))

(declare-fun lt!2088676 () Conc!15562)

(declare-fun call!352819 () Conc!15562)

(assert (=> b!5064878 (= lt!2088676 call!352819)))

(declare-fun c!869329 () Bool)

(declare-fun call!352822 () Int)

(declare-fun call!352827 () Int)

(assert (=> b!5064878 (= c!869329 (= call!352822 (- call!352827 3)))))

(declare-fun b!5064879 () Bool)

(declare-fun c!869331 () Bool)

(declare-fun call!352831 () Int)

(declare-fun call!352821 () Int)

(assert (=> b!5064879 (= c!869331 (>= call!352831 call!352821))))

(declare-fun e!3160916 () Conc!15562)

(assert (=> b!5064879 (= e!3160916 e!3160914)))

(declare-fun b!5064880 () Bool)

(declare-fun call!352825 () Conc!15562)

(assert (=> b!5064880 (= e!3160914 call!352825)))

(declare-fun b!5064881 () Bool)

(declare-fun c!869330 () Bool)

(assert (=> b!5064881 (= c!869330 (>= call!352831 call!352821))))

(declare-fun e!3160917 () Conc!15562)

(assert (=> b!5064881 (= e!3160916 e!3160917)))

(declare-fun b!5064882 () Bool)

(declare-fun e!3160918 () Conc!15562)

(declare-fun e!3160913 () Conc!15562)

(assert (=> b!5064882 (= e!3160918 e!3160913)))

(declare-fun c!869324 () Bool)

(assert (=> b!5064882 (= c!869324 (= (ite c!869024 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))) (ite c!869026 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) (left!42813 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))))) Empty!15562))))

(declare-fun b!5064883 () Bool)

(declare-fun call!352829 () Conc!15562)

(assert (=> b!5064883 (= e!3160919 call!352829)))

(declare-fun b!5064884 () Bool)

(declare-fun e!3160921 () Conc!15562)

(declare-fun call!352832 () Conc!15562)

(assert (=> b!5064884 (= e!3160921 call!352832)))

(declare-fun b!5064885 () Bool)

(assert (=> b!5064885 (= e!3160921 e!3160916)))

(declare-fun c!869328 () Bool)

(declare-fun lt!2088674 () Int)

(assert (=> b!5064885 (= c!869328 (< lt!2088674 (- 1)))))

(declare-fun bm!352813 () Bool)

(declare-fun call!352833 () Conc!15562)

(declare-fun call!352828 () Conc!15562)

(assert (=> bm!352813 (= call!352833 call!352828)))

(declare-fun bm!352814 () Bool)

(assert (=> bm!352814 (= call!352828 (++!12785 (ite c!869328 (ite c!869331 (right!43143 (ite c!869024 (ite c!869027 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (right!43143 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 (ite c!869024 (ite c!869027 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (right!43143 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))))) (ite c!869024 (ite c!869027 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (right!43143 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (ite c!869328 (ite c!869024 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))) (ite c!869026 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) (left!42813 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))))) (ite c!869330 (left!42813 (ite c!869024 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))) (ite c!869026 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) (left!42813 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))) (left!42813 (left!42813 (ite c!869024 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))) (ite c!869026 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) (left!42813 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))))))))))

(declare-fun d!1632604 () Bool)

(declare-fun e!3160912 () Bool)

(assert (=> d!1632604 e!3160912))

(declare-fun res!2156610 () Bool)

(assert (=> d!1632604 (=> (not res!2156610) (not e!3160912))))

(assert (=> d!1632604 (= res!2156610 (appendAssocInst!908 (ite c!869024 (ite c!869027 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (right!43143 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (ite c!869024 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))) (ite c!869026 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) (left!42813 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))))))

(declare-fun lt!2088675 () Conc!15562)

(assert (=> d!1632604 (= lt!2088675 e!3160918)))

(declare-fun c!869327 () Bool)

(assert (=> d!1632604 (= c!869327 (= (ite c!869024 (ite c!869027 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (right!43143 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) Empty!15562))))

(declare-fun e!3160915 () Bool)

(assert (=> d!1632604 e!3160915))

(declare-fun res!2156613 () Bool)

(assert (=> d!1632604 (=> (not res!2156613) (not e!3160915))))

(assert (=> d!1632604 (= res!2156613 (isBalanced!4424 (ite c!869024 (ite c!869027 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (right!43143 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))))))

(assert (=> d!1632604 (= (++!12785 (ite c!869024 (ite c!869027 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (right!43143 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (ite c!869024 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))) (ite c!869026 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) (left!42813 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))) lt!2088675)))

(declare-fun b!5064886 () Bool)

(declare-fun e!3160920 () Conc!15562)

(declare-fun call!352823 () Conc!15562)

(assert (=> b!5064886 (= e!3160920 call!352823)))

(declare-fun bm!352815 () Bool)

(declare-fun call!352820 () Conc!15562)

(assert (=> bm!352815 (= call!352823 call!352820)))

(declare-fun bm!352816 () Bool)

(declare-fun call!352818 () Conc!15562)

(assert (=> bm!352816 (= call!352825 call!352818)))

(declare-fun b!5064887 () Bool)

(assert (=> b!5064887 (= e!3160920 call!352823)))

(declare-fun bm!352817 () Bool)

(assert (=> bm!352817 (= call!352829 call!352825)))

(declare-fun b!5064888 () Bool)

(assert (=> b!5064888 (= e!3160919 call!352829)))

(declare-fun b!5064889 () Bool)

(declare-fun res!2156611 () Bool)

(assert (=> b!5064889 (=> (not res!2156611) (not e!3160912))))

(assert (=> b!5064889 (= res!2156611 (>= (height!2139 lt!2088675) (max!0 (height!2139 (ite c!869024 (ite c!869027 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (right!43143 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (height!2139 (ite c!869024 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))) (ite c!869026 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) (left!42813 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))))))))

(declare-fun b!5064890 () Bool)

(assert (=> b!5064890 (= e!3160913 (ite c!869024 (ite c!869027 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (right!43143 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))))

(declare-fun b!5064891 () Bool)

(assert (=> b!5064891 (= e!3160917 call!352820)))

(declare-fun lt!2088677 () Conc!15562)

(declare-fun c!869325 () Bool)

(declare-fun bm!352818 () Bool)

(declare-fun c!869326 () Bool)

(assert (=> bm!352818 (= call!352832 (<>!394 (ite c!869325 (ite c!869024 (ite c!869027 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (right!43143 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (ite c!869328 (ite c!869329 (left!42813 (right!43143 (ite c!869024 (ite c!869027 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (right!43143 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (left!42813 (ite c!869024 (ite c!869027 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (right!43143 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (ite c!869326 lt!2088677 (right!43143 (left!42813 (ite c!869024 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))) (ite c!869026 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) (left!42813 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))))))) (ite c!869325 (ite c!869024 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))) (ite c!869026 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) (left!42813 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))))) (ite c!869328 (ite c!869329 lt!2088676 (left!42813 (right!43143 (ite c!869024 (ite c!869027 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (right!43143 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))))) (ite c!869326 (right!43143 (left!42813 (ite c!869024 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))) (ite c!869026 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) (left!42813 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))))))) (right!43143 (ite c!869024 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))) (ite c!869026 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) (left!42813 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))))))))))

(declare-fun bm!352819 () Bool)

(assert (=> bm!352819 (= call!352821 (height!2139 (ite c!869328 (right!43143 (ite c!869024 (ite c!869027 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (right!43143 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (left!42813 (ite c!869024 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))) (ite c!869026 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) (left!42813 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))))))))

(declare-fun bm!352820 () Bool)

(assert (=> bm!352820 (= call!352822 (height!2139 (ite c!869328 lt!2088676 (ite c!869024 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))) (ite c!869026 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) (left!42813 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))))))))))

(declare-fun b!5064892 () Bool)

(assert (=> b!5064892 (= c!869325 (and (<= (- 1) lt!2088674) (<= lt!2088674 1)))))

(assert (=> b!5064892 (= lt!2088674 (- (height!2139 (ite c!869024 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))) (ite c!869026 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) (left!42813 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))) (height!2139 (ite c!869024 (ite c!869027 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (right!43143 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))))))

(assert (=> b!5064892 (= e!3160913 e!3160921)))

(declare-fun bm!352821 () Bool)

(declare-fun call!352824 () Conc!15562)

(assert (=> bm!352821 (= call!352824 call!352832)))

(declare-fun bm!352822 () Bool)

(assert (=> bm!352822 (= call!352831 (height!2139 (ite c!869328 (left!42813 (ite c!869024 (ite c!869027 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (right!43143 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (right!43143 (ite c!869024 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))) (ite c!869026 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) (left!42813 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))))))))

(declare-fun bm!352823 () Bool)

(declare-fun call!352830 () Conc!15562)

(assert (=> bm!352823 (= call!352830 call!352824)))

(declare-fun bm!352824 () Bool)

(assert (=> bm!352824 (= call!352820 call!352818)))

(declare-fun b!5064893 () Bool)

(declare-fun res!2156614 () Bool)

(assert (=> b!5064893 (=> (not res!2156614) (not e!3160912))))

(assert (=> b!5064893 (= res!2156614 (isBalanced!4424 lt!2088675))))

(declare-fun bm!352825 () Bool)

(assert (=> bm!352825 (= call!352819 call!352828)))

(declare-fun bm!352826 () Bool)

(assert (=> bm!352826 (= call!352827 (height!2139 (ite c!869328 (ite c!869024 (ite c!869027 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (right!43143 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) lt!2088677)))))

(declare-fun b!5064894 () Bool)

(assert (=> b!5064894 (= e!3160918 (ite c!869024 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))) (ite c!869026 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) (left!42813 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))))))))

(declare-fun b!5064895 () Bool)

(declare-fun res!2156612 () Bool)

(assert (=> b!5064895 (=> (not res!2156612) (not e!3160912))))

(assert (=> b!5064895 (= res!2156612 (<= (height!2139 lt!2088675) (+ (max!0 (height!2139 (ite c!869024 (ite c!869027 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (right!43143 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (height!2139 (ite c!869024 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))) (ite c!869026 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) (left!42813 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))))))) 1)))))

(declare-fun bm!352827 () Bool)

(declare-fun call!352826 () Conc!15562)

(assert (=> bm!352827 (= call!352818 (<>!394 (ite c!869328 (ite (or c!869331 c!869329) (left!42813 (ite c!869024 (ite c!869027 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (right!43143 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) call!352830) (ite c!869330 call!352833 (ite c!869326 call!352826 lt!2088677))) (ite c!869328 (ite c!869331 call!352819 (ite c!869329 call!352830 lt!2088676)) (ite (or c!869330 c!869326) (right!43143 (ite c!869024 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))) (ite c!869026 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) (left!42813 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))) call!352826))))))

(declare-fun bm!352828 () Bool)

(assert (=> bm!352828 (= call!352826 call!352824)))

(declare-fun b!5064896 () Bool)

(assert (=> b!5064896 (= e!3160917 e!3160920)))

(assert (=> b!5064896 (= lt!2088677 call!352833)))

(assert (=> b!5064896 (= c!869326 (= call!352827 (- call!352822 3)))))

(declare-fun b!5064897 () Bool)

(assert (=> b!5064897 (= e!3160912 (= (list!18985 lt!2088675) (++!12784 (list!18985 (ite c!869024 (ite c!869027 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (right!43143 (right!43143 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))))) (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))) (list!18985 (ite c!869024 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))) (ite c!869026 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) (left!42813 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))))))))

(declare-fun b!5064898 () Bool)

(assert (=> b!5064898 (= e!3160915 (isBalanced!4424 (ite c!869024 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))) (ite c!869026 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) (left!42813 (left!42813 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))))))

(assert (= (and d!1632604 res!2156613) b!5064898))

(assert (= (and d!1632604 c!869327) b!5064894))

(assert (= (and d!1632604 (not c!869327)) b!5064882))

(assert (= (and b!5064882 c!869324) b!5064890))

(assert (= (and b!5064882 (not c!869324)) b!5064892))

(assert (= (and b!5064892 c!869325) b!5064884))

(assert (= (and b!5064892 (not c!869325)) b!5064885))

(assert (= (and b!5064885 c!869328) b!5064879))

(assert (= (and b!5064885 (not c!869328)) b!5064881))

(assert (= (and b!5064879 c!869331) b!5064880))

(assert (= (and b!5064879 (not c!869331)) b!5064878))

(assert (= (and b!5064878 c!869329) b!5064888))

(assert (= (and b!5064878 (not c!869329)) b!5064883))

(assert (= (or b!5064888 b!5064883) bm!352823))

(assert (= (or b!5064888 b!5064883) bm!352817))

(assert (= (or b!5064880 b!5064878) bm!352825))

(assert (= (or b!5064880 bm!352817) bm!352816))

(assert (= (and b!5064881 c!869330) b!5064891))

(assert (= (and b!5064881 (not c!869330)) b!5064896))

(assert (= (and b!5064896 c!869326) b!5064886))

(assert (= (and b!5064896 (not c!869326)) b!5064887))

(assert (= (or b!5064886 b!5064887) bm!352828))

(assert (= (or b!5064886 b!5064887) bm!352815))

(assert (= (or b!5064891 b!5064896) bm!352813))

(assert (= (or b!5064891 bm!352815) bm!352824))

(assert (= (or bm!352816 bm!352824) bm!352827))

(assert (= (or b!5064878 b!5064896) bm!352820))

(assert (= (or b!5064878 b!5064896) bm!352826))

(assert (= (or b!5064879 b!5064881) bm!352822))

(assert (= (or b!5064879 b!5064881) bm!352819))

(assert (= (or bm!352825 bm!352813) bm!352814))

(assert (= (or bm!352823 bm!352828) bm!352821))

(assert (= (or b!5064884 bm!352821) bm!352818))

(assert (= (and d!1632604 res!2156610) b!5064893))

(assert (= (and b!5064893 res!2156614) b!5064895))

(assert (= (and b!5064895 res!2156612) b!5064889))

(assert (= (and b!5064889 res!2156611) b!5064897))

(declare-fun m!6105914 () Bool)

(assert (=> b!5064897 m!6105914))

(declare-fun m!6105916 () Bool)

(assert (=> b!5064897 m!6105916))

(declare-fun m!6105918 () Bool)

(assert (=> b!5064897 m!6105918))

(assert (=> b!5064897 m!6105916))

(assert (=> b!5064897 m!6105918))

(declare-fun m!6105920 () Bool)

(assert (=> b!5064897 m!6105920))

(declare-fun m!6105922 () Bool)

(assert (=> b!5064889 m!6105922))

(declare-fun m!6105924 () Bool)

(assert (=> b!5064889 m!6105924))

(declare-fun m!6105926 () Bool)

(assert (=> b!5064889 m!6105926))

(assert (=> b!5064889 m!6105924))

(assert (=> b!5064889 m!6105926))

(declare-fun m!6105928 () Bool)

(assert (=> b!5064889 m!6105928))

(declare-fun m!6105930 () Bool)

(assert (=> bm!352827 m!6105930))

(declare-fun m!6105932 () Bool)

(assert (=> bm!352822 m!6105932))

(declare-fun m!6105934 () Bool)

(assert (=> bm!352814 m!6105934))

(assert (=> b!5064892 m!6105926))

(assert (=> b!5064892 m!6105924))

(declare-fun m!6105936 () Bool)

(assert (=> bm!352826 m!6105936))

(declare-fun m!6105938 () Bool)

(assert (=> d!1632604 m!6105938))

(declare-fun m!6105940 () Bool)

(assert (=> d!1632604 m!6105940))

(assert (=> b!5064895 m!6105922))

(assert (=> b!5064895 m!6105924))

(assert (=> b!5064895 m!6105926))

(assert (=> b!5064895 m!6105924))

(assert (=> b!5064895 m!6105926))

(assert (=> b!5064895 m!6105928))

(declare-fun m!6105942 () Bool)

(assert (=> b!5064898 m!6105942))

(declare-fun m!6105944 () Bool)

(assert (=> bm!352820 m!6105944))

(declare-fun m!6105946 () Bool)

(assert (=> bm!352819 m!6105946))

(declare-fun m!6105948 () Bool)

(assert (=> b!5064893 m!6105948))

(declare-fun m!6105950 () Bool)

(assert (=> bm!352818 m!6105950))

(assert (=> bm!352698 d!1632604))

(declare-fun d!1632606 () Bool)

(assert (=> d!1632606 (= (list!18986 (xs!18906 lt!2088482)) (innerList!15650 (xs!18906 lt!2088482)))))

(assert (=> b!5064272 d!1632606))

(declare-fun d!1632608 () Bool)

(declare-fun e!3160923 () Bool)

(assert (=> d!1632608 e!3160923))

(declare-fun res!2156615 () Bool)

(assert (=> d!1632608 (=> (not res!2156615) (not e!3160923))))

(declare-fun lt!2088678 () List!58556)

(assert (=> d!1632608 (= res!2156615 (= (content!10415 lt!2088678) ((_ map or) (content!10415 call!352775) (content!10415 (list!18985 ys!41)))))))

(declare-fun e!3160922 () List!58556)

(assert (=> d!1632608 (= lt!2088678 e!3160922)))

(declare-fun c!869332 () Bool)

(assert (=> d!1632608 (= c!869332 ((_ is Nil!58432) call!352775))))

(assert (=> d!1632608 (= (++!12784 call!352775 (list!18985 ys!41)) lt!2088678)))

(declare-fun b!5064900 () Bool)

(assert (=> b!5064900 (= e!3160922 (Cons!58432 (h!64880 call!352775) (++!12784 (t!371279 call!352775) (list!18985 ys!41))))))

(declare-fun b!5064902 () Bool)

(assert (=> b!5064902 (= e!3160923 (or (not (= (list!18985 ys!41) Nil!58432)) (= lt!2088678 call!352775)))))

(declare-fun b!5064899 () Bool)

(assert (=> b!5064899 (= e!3160922 (list!18985 ys!41))))

(declare-fun b!5064901 () Bool)

(declare-fun res!2156616 () Bool)

(assert (=> b!5064901 (=> (not res!2156616) (not e!3160923))))

(assert (=> b!5064901 (= res!2156616 (= (size!39071 lt!2088678) (+ (size!39071 call!352775) (size!39071 (list!18985 ys!41)))))))

(assert (= (and d!1632608 c!869332) b!5064899))

(assert (= (and d!1632608 (not c!869332)) b!5064900))

(assert (= (and d!1632608 res!2156615) b!5064901))

(assert (= (and b!5064901 res!2156616) b!5064902))

(declare-fun m!6105952 () Bool)

(assert (=> d!1632608 m!6105952))

(declare-fun m!6105954 () Bool)

(assert (=> d!1632608 m!6105954))

(assert (=> d!1632608 m!6103082))

(assert (=> d!1632608 m!6103172))

(assert (=> b!5064900 m!6103082))

(declare-fun m!6105956 () Bool)

(assert (=> b!5064900 m!6105956))

(declare-fun m!6105958 () Bool)

(assert (=> b!5064901 m!6105958))

(declare-fun m!6105960 () Bool)

(assert (=> b!5064901 m!6105960))

(assert (=> b!5064901 m!6103082))

(assert (=> b!5064901 m!6103180))

(assert (=> bm!352769 d!1632608))

(declare-fun d!1632610 () Bool)

(assert (=> d!1632610 (= (max!0 (height!2139 (left!42813 (left!42813 xs!286))) (height!2139 (right!43143 (left!42813 xs!286)))) (ite (< (height!2139 (left!42813 (left!42813 xs!286))) (height!2139 (right!43143 (left!42813 xs!286)))) (height!2139 (right!43143 (left!42813 xs!286))) (height!2139 (left!42813 (left!42813 xs!286)))))))

(assert (=> b!5064205 d!1632610))

(assert (=> b!5064205 d!1632592))

(assert (=> b!5064205 d!1632594))

(declare-fun d!1632612 () Bool)

(declare-fun e!3160925 () Bool)

(assert (=> d!1632612 e!3160925))

(declare-fun res!2156617 () Bool)

(assert (=> d!1632612 (=> (not res!2156617) (not e!3160925))))

(declare-fun lt!2088679 () List!58556)

(assert (=> d!1632612 (= res!2156617 (= (content!10415 lt!2088679) ((_ map or) (content!10415 (list!18985 (right!43143 xs!286))) (content!10415 (list!18985 ys!41)))))))

(declare-fun e!3160924 () List!58556)

(assert (=> d!1632612 (= lt!2088679 e!3160924)))

(declare-fun c!869333 () Bool)

(assert (=> d!1632612 (= c!869333 ((_ is Nil!58432) (list!18985 (right!43143 xs!286))))))

(assert (=> d!1632612 (= (++!12784 (list!18985 (right!43143 xs!286)) (list!18985 ys!41)) lt!2088679)))

(declare-fun b!5064904 () Bool)

(assert (=> b!5064904 (= e!3160924 (Cons!58432 (h!64880 (list!18985 (right!43143 xs!286))) (++!12784 (t!371279 (list!18985 (right!43143 xs!286))) (list!18985 ys!41))))))

(declare-fun b!5064906 () Bool)

(assert (=> b!5064906 (= e!3160925 (or (not (= (list!18985 ys!41) Nil!58432)) (= lt!2088679 (list!18985 (right!43143 xs!286)))))))

(declare-fun b!5064903 () Bool)

(assert (=> b!5064903 (= e!3160924 (list!18985 ys!41))))

(declare-fun b!5064905 () Bool)

(declare-fun res!2156618 () Bool)

(assert (=> b!5064905 (=> (not res!2156618) (not e!3160925))))

(assert (=> b!5064905 (= res!2156618 (= (size!39071 lt!2088679) (+ (size!39071 (list!18985 (right!43143 xs!286))) (size!39071 (list!18985 ys!41)))))))

(assert (= (and d!1632612 c!869333) b!5064903))

(assert (= (and d!1632612 (not c!869333)) b!5064904))

(assert (= (and d!1632612 res!2156617) b!5064905))

(assert (= (and b!5064905 res!2156618) b!5064906))

(declare-fun m!6105962 () Bool)

(assert (=> d!1632612 m!6105962))

(assert (=> d!1632612 m!6103184))

(assert (=> d!1632612 m!6104620))

(assert (=> d!1632612 m!6103082))

(assert (=> d!1632612 m!6103172))

(assert (=> b!5064904 m!6103082))

(declare-fun m!6105964 () Bool)

(assert (=> b!5064904 m!6105964))

(declare-fun m!6105966 () Bool)

(assert (=> b!5064905 m!6105966))

(assert (=> b!5064905 m!6103184))

(assert (=> b!5064905 m!6104626))

(assert (=> b!5064905 m!6103082))

(assert (=> b!5064905 m!6103180))

(assert (=> bm!352725 d!1632612))

(assert (=> d!1632056 d!1632126))

(assert (=> d!1632056 d!1632068))

(assert (=> b!5063935 d!1632108))

(declare-fun d!1632614 () Bool)

(assert (=> d!1632614 (= (inv!77545 (xs!18906 (left!42813 (left!42813 ys!41)))) (<= (size!39071 (innerList!15650 (xs!18906 (left!42813 (left!42813 ys!41))))) 2147483647))))

(declare-fun bs!1189839 () Bool)

(assert (= bs!1189839 d!1632614))

(declare-fun m!6105968 () Bool)

(assert (=> bs!1189839 m!6105968))

(assert (=> b!5064313 d!1632614))

(declare-fun b!5064910 () Bool)

(declare-fun e!3160927 () Conc!15562)

(assert (=> b!5064910 (= e!3160927 (Node!15562 (ite c!869024 (ite (or c!869027 c!869025) (left!42813 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) call!352714) (ite c!869026 call!352717 (ite c!869022 call!352710 lt!2088511))) (ite c!869024 (ite c!869027 call!352703 (ite c!869025 call!352714 lt!2088510)) (ite (or c!869026 c!869022) (right!43143 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) call!352710)) (+ (size!39073 (ite c!869024 (ite (or c!869027 c!869025) (left!42813 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) call!352714) (ite c!869026 call!352717 (ite c!869022 call!352710 lt!2088511)))) (size!39073 (ite c!869024 (ite c!869027 call!352703 (ite c!869025 call!352714 lt!2088510)) (ite (or c!869026 c!869022) (right!43143 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) call!352710)))) (+ (max!0 (height!2139 (ite c!869024 (ite (or c!869027 c!869025) (left!42813 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) call!352714) (ite c!869026 call!352717 (ite c!869022 call!352710 lt!2088511)))) (height!2139 (ite c!869024 (ite c!869027 call!352703 (ite c!869025 call!352714 lt!2088510)) (ite (or c!869026 c!869022) (right!43143 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) call!352710)))) 1)))))

(declare-fun d!1632616 () Bool)

(declare-fun lt!2088680 () Conc!15562)

(assert (=> d!1632616 (= (list!18985 lt!2088680) (++!12784 (list!18985 (ite c!869024 (ite (or c!869027 c!869025) (left!42813 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) call!352714) (ite c!869026 call!352717 (ite c!869022 call!352710 lt!2088511)))) (list!18985 (ite c!869024 (ite c!869027 call!352703 (ite c!869025 call!352714 lt!2088510)) (ite (or c!869026 c!869022) (right!43143 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) call!352710)))))))

(declare-fun e!3160926 () Conc!15562)

(assert (=> d!1632616 (= lt!2088680 e!3160926)))

(declare-fun c!869335 () Bool)

(assert (=> d!1632616 (= c!869335 (= (ite c!869024 (ite (or c!869027 c!869025) (left!42813 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) call!352714) (ite c!869026 call!352717 (ite c!869022 call!352710 lt!2088511))) Empty!15562))))

(assert (=> d!1632616 (= (<>!394 (ite c!869024 (ite (or c!869027 c!869025) (left!42813 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) call!352714) (ite c!869026 call!352717 (ite c!869022 call!352710 lt!2088511))) (ite c!869024 (ite c!869027 call!352703 (ite c!869025 call!352714 lt!2088510)) (ite (or c!869026 c!869022) (right!43143 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) call!352710))) lt!2088680)))

(declare-fun b!5064907 () Bool)

(assert (=> b!5064907 (= e!3160926 (ite c!869024 (ite c!869027 call!352703 (ite c!869025 call!352714 lt!2088510)) (ite (or c!869026 c!869022) (right!43143 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) call!352710)))))

(declare-fun b!5064909 () Bool)

(assert (=> b!5064909 (= e!3160927 (ite c!869024 (ite (or c!869027 c!869025) (left!42813 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) call!352714) (ite c!869026 call!352717 (ite c!869022 call!352710 lt!2088511))))))

(declare-fun b!5064908 () Bool)

(assert (=> b!5064908 (= e!3160926 e!3160927)))

(declare-fun c!869334 () Bool)

(assert (=> b!5064908 (= c!869334 (= (ite c!869024 (ite c!869027 call!352703 (ite c!869025 call!352714 lt!2088510)) (ite (or c!869026 c!869022) (right!43143 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) call!352710)) Empty!15562))))

(assert (= (and d!1632616 c!869335) b!5064907))

(assert (= (and d!1632616 (not c!869335)) b!5064908))

(assert (= (and b!5064908 c!869334) b!5064909))

(assert (= (and b!5064908 (not c!869334)) b!5064910))

(declare-fun m!6105970 () Bool)

(assert (=> b!5064910 m!6105970))

(declare-fun m!6105972 () Bool)

(assert (=> b!5064910 m!6105972))

(declare-fun m!6105974 () Bool)

(assert (=> b!5064910 m!6105974))

(declare-fun m!6105976 () Bool)

(assert (=> b!5064910 m!6105976))

(assert (=> b!5064910 m!6105974))

(declare-fun m!6105978 () Bool)

(assert (=> b!5064910 m!6105978))

(assert (=> b!5064910 m!6105976))

(declare-fun m!6105980 () Bool)

(assert (=> d!1632616 m!6105980))

(declare-fun m!6105982 () Bool)

(assert (=> d!1632616 m!6105982))

(declare-fun m!6105984 () Bool)

(assert (=> d!1632616 m!6105984))

(assert (=> d!1632616 m!6105982))

(assert (=> d!1632616 m!6105984))

(declare-fun m!6105986 () Bool)

(assert (=> d!1632616 m!6105986))

(assert (=> bm!352711 d!1632616))

(declare-fun d!1632618 () Bool)

(assert (=> d!1632618 (= (list!18986 (xs!18906 (left!42813 (right!43143 xs!286)))) (innerList!15650 (xs!18906 (left!42813 (right!43143 xs!286)))))))

(assert (=> b!5063947 d!1632618))

(declare-fun d!1632620 () Bool)

(declare-fun lt!2088681 () Bool)

(assert (=> d!1632620 (= lt!2088681 (isEmpty!31628 (list!18985 (left!42813 (left!42813 lt!2088442)))))))

(assert (=> d!1632620 (= lt!2088681 (= (size!39073 (left!42813 (left!42813 lt!2088442))) 0))))

(assert (=> d!1632620 (= (isEmpty!31626 (left!42813 (left!42813 lt!2088442))) lt!2088681)))

(declare-fun bs!1189840 () Bool)

(assert (= bs!1189840 d!1632620))

(assert (=> bs!1189840 m!6103896))

(assert (=> bs!1189840 m!6103896))

(declare-fun m!6105988 () Bool)

(assert (=> bs!1189840 m!6105988))

(declare-fun m!6105990 () Bool)

(assert (=> bs!1189840 m!6105990))

(assert (=> b!5063873 d!1632620))

(declare-fun d!1632622 () Bool)

(declare-fun e!3160929 () Bool)

(assert (=> d!1632622 e!3160929))

(declare-fun res!2156619 () Bool)

(assert (=> d!1632622 (=> (not res!2156619) (not e!3160929))))

(declare-fun lt!2088682 () List!58556)

(assert (=> d!1632622 (= res!2156619 (= (content!10415 lt!2088682) ((_ map or) (content!10415 (t!371279 (list!18985 (left!42813 lt!2088442)))) (content!10415 (list!18985 (right!43143 lt!2088442))))))))

(declare-fun e!3160928 () List!58556)

(assert (=> d!1632622 (= lt!2088682 e!3160928)))

(declare-fun c!869336 () Bool)

(assert (=> d!1632622 (= c!869336 ((_ is Nil!58432) (t!371279 (list!18985 (left!42813 lt!2088442)))))))

(assert (=> d!1632622 (= (++!12784 (t!371279 (list!18985 (left!42813 lt!2088442))) (list!18985 (right!43143 lt!2088442))) lt!2088682)))

(declare-fun b!5064912 () Bool)

(assert (=> b!5064912 (= e!3160928 (Cons!58432 (h!64880 (t!371279 (list!18985 (left!42813 lt!2088442)))) (++!12784 (t!371279 (t!371279 (list!18985 (left!42813 lt!2088442)))) (list!18985 (right!43143 lt!2088442)))))))

(declare-fun b!5064914 () Bool)

(assert (=> b!5064914 (= e!3160929 (or (not (= (list!18985 (right!43143 lt!2088442)) Nil!58432)) (= lt!2088682 (t!371279 (list!18985 (left!42813 lt!2088442))))))))

(declare-fun b!5064911 () Bool)

(assert (=> b!5064911 (= e!3160928 (list!18985 (right!43143 lt!2088442)))))

(declare-fun b!5064913 () Bool)

(declare-fun res!2156620 () Bool)

(assert (=> b!5064913 (=> (not res!2156620) (not e!3160929))))

(assert (=> b!5064913 (= res!2156620 (= (size!39071 lt!2088682) (+ (size!39071 (t!371279 (list!18985 (left!42813 lt!2088442)))) (size!39071 (list!18985 (right!43143 lt!2088442))))))))

(assert (= (and d!1632622 c!869336) b!5064911))

(assert (= (and d!1632622 (not c!869336)) b!5064912))

(assert (= (and d!1632622 res!2156619) b!5064913))

(assert (= (and b!5064913 res!2156620) b!5064914))

(declare-fun m!6105992 () Bool)

(assert (=> d!1632622 m!6105992))

(assert (=> d!1632622 m!6105204))

(assert (=> d!1632622 m!6103162))

(assert (=> d!1632622 m!6103886))

(assert (=> b!5064912 m!6103162))

(declare-fun m!6105994 () Bool)

(assert (=> b!5064912 m!6105994))

(declare-fun m!6105996 () Bool)

(assert (=> b!5064913 m!6105996))

(assert (=> b!5064913 m!6105844))

(assert (=> b!5064913 m!6103162))

(assert (=> b!5064913 m!6103894))

(assert (=> b!5063884 d!1632622))

(declare-fun d!1632624 () Bool)

(declare-fun e!3160931 () Bool)

(assert (=> d!1632624 e!3160931))

(declare-fun res!2156621 () Bool)

(assert (=> d!1632624 (=> (not res!2156621) (not e!3160931))))

(declare-fun lt!2088683 () List!58556)

(assert (=> d!1632624 (= res!2156621 (= (content!10415 lt!2088683) ((_ map or) (content!10415 (list!18985 (left!42813 (left!42813 xs!286)))) (content!10415 (list!18985 (right!43143 (left!42813 xs!286)))))))))

(declare-fun e!3160930 () List!58556)

(assert (=> d!1632624 (= lt!2088683 e!3160930)))

(declare-fun c!869337 () Bool)

(assert (=> d!1632624 (= c!869337 ((_ is Nil!58432) (list!18985 (left!42813 (left!42813 xs!286)))))))

(assert (=> d!1632624 (= (++!12784 (list!18985 (left!42813 (left!42813 xs!286))) (list!18985 (right!43143 (left!42813 xs!286)))) lt!2088683)))

(declare-fun b!5064916 () Bool)

(assert (=> b!5064916 (= e!3160930 (Cons!58432 (h!64880 (list!18985 (left!42813 (left!42813 xs!286)))) (++!12784 (t!371279 (list!18985 (left!42813 (left!42813 xs!286)))) (list!18985 (right!43143 (left!42813 xs!286))))))))

(declare-fun b!5064918 () Bool)

(assert (=> b!5064918 (= e!3160931 (or (not (= (list!18985 (right!43143 (left!42813 xs!286))) Nil!58432)) (= lt!2088683 (list!18985 (left!42813 (left!42813 xs!286))))))))

(declare-fun b!5064915 () Bool)

(assert (=> b!5064915 (= e!3160930 (list!18985 (right!43143 (left!42813 xs!286))))))

(declare-fun b!5064917 () Bool)

(declare-fun res!2156622 () Bool)

(assert (=> b!5064917 (=> (not res!2156622) (not e!3160931))))

(assert (=> b!5064917 (= res!2156622 (= (size!39071 lt!2088683) (+ (size!39071 (list!18985 (left!42813 (left!42813 xs!286)))) (size!39071 (list!18985 (right!43143 (left!42813 xs!286)))))))))

(assert (= (and d!1632624 c!869337) b!5064915))

(assert (= (and d!1632624 (not c!869337)) b!5064916))

(assert (= (and d!1632624 res!2156621) b!5064917))

(assert (= (and b!5064917 res!2156622) b!5064918))

(declare-fun m!6105998 () Bool)

(assert (=> d!1632624 m!6105998))

(assert (=> d!1632624 m!6103972))

(declare-fun m!6106000 () Bool)

(assert (=> d!1632624 m!6106000))

(assert (=> d!1632624 m!6103974))

(declare-fun m!6106002 () Bool)

(assert (=> d!1632624 m!6106002))

(assert (=> b!5064916 m!6103974))

(declare-fun m!6106004 () Bool)

(assert (=> b!5064916 m!6106004))

(declare-fun m!6106006 () Bool)

(assert (=> b!5064917 m!6106006))

(assert (=> b!5064917 m!6103972))

(assert (=> b!5064917 m!6105586))

(assert (=> b!5064917 m!6103974))

(assert (=> b!5064917 m!6105588))

(assert (=> b!5063932 d!1632624))

(declare-fun d!1632626 () Bool)

(declare-fun c!869338 () Bool)

(assert (=> d!1632626 (= c!869338 ((_ is Empty!15562) (left!42813 (left!42813 xs!286))))))

(declare-fun e!3160932 () List!58556)

(assert (=> d!1632626 (= (list!18985 (left!42813 (left!42813 xs!286))) e!3160932)))

(declare-fun b!5064922 () Bool)

(declare-fun e!3160933 () List!58556)

(assert (=> b!5064922 (= e!3160933 (++!12784 (list!18985 (left!42813 (left!42813 (left!42813 xs!286)))) (list!18985 (right!43143 (left!42813 (left!42813 xs!286))))))))

(declare-fun b!5064919 () Bool)

(assert (=> b!5064919 (= e!3160932 Nil!58432)))

(declare-fun b!5064921 () Bool)

(assert (=> b!5064921 (= e!3160933 (list!18986 (xs!18906 (left!42813 (left!42813 xs!286)))))))

(declare-fun b!5064920 () Bool)

(assert (=> b!5064920 (= e!3160932 e!3160933)))

(declare-fun c!869339 () Bool)

(assert (=> b!5064920 (= c!869339 ((_ is Leaf!25848) (left!42813 (left!42813 xs!286))))))

(assert (= (and d!1632626 c!869338) b!5064919))

(assert (= (and d!1632626 (not c!869338)) b!5064920))

(assert (= (and b!5064920 c!869339) b!5064921))

(assert (= (and b!5064920 (not c!869339)) b!5064922))

(declare-fun m!6106008 () Bool)

(assert (=> b!5064922 m!6106008))

(declare-fun m!6106010 () Bool)

(assert (=> b!5064922 m!6106010))

(assert (=> b!5064922 m!6106008))

(assert (=> b!5064922 m!6106010))

(declare-fun m!6106012 () Bool)

(assert (=> b!5064922 m!6106012))

(assert (=> b!5064921 m!6105776))

(assert (=> b!5063932 d!1632626))

(declare-fun d!1632628 () Bool)

(declare-fun c!869340 () Bool)

(assert (=> d!1632628 (= c!869340 ((_ is Empty!15562) (right!43143 (left!42813 xs!286))))))

(declare-fun e!3160934 () List!58556)

(assert (=> d!1632628 (= (list!18985 (right!43143 (left!42813 xs!286))) e!3160934)))

(declare-fun b!5064926 () Bool)

(declare-fun e!3160935 () List!58556)

(assert (=> b!5064926 (= e!3160935 (++!12784 (list!18985 (left!42813 (right!43143 (left!42813 xs!286)))) (list!18985 (right!43143 (right!43143 (left!42813 xs!286))))))))

(declare-fun b!5064923 () Bool)

(assert (=> b!5064923 (= e!3160934 Nil!58432)))

(declare-fun b!5064925 () Bool)

(assert (=> b!5064925 (= e!3160935 (list!18986 (xs!18906 (right!43143 (left!42813 xs!286)))))))

(declare-fun b!5064924 () Bool)

(assert (=> b!5064924 (= e!3160934 e!3160935)))

(declare-fun c!869341 () Bool)

(assert (=> b!5064924 (= c!869341 ((_ is Leaf!25848) (right!43143 (left!42813 xs!286))))))

(assert (= (and d!1632628 c!869340) b!5064923))

(assert (= (and d!1632628 (not c!869340)) b!5064924))

(assert (= (and b!5064924 c!869341) b!5064925))

(assert (= (and b!5064924 (not c!869341)) b!5064926))

(declare-fun m!6106014 () Bool)

(assert (=> b!5064926 m!6106014))

(declare-fun m!6106016 () Bool)

(assert (=> b!5064926 m!6106016))

(assert (=> b!5064926 m!6106014))

(assert (=> b!5064926 m!6106016))

(declare-fun m!6106018 () Bool)

(assert (=> b!5064926 m!6106018))

(assert (=> b!5064925 m!6105302))

(assert (=> b!5063932 d!1632628))

(declare-fun bm!352829 () Bool)

(declare-fun call!352837 () List!58556)

(declare-fun call!352835 () List!58556)

(assert (=> bm!352829 (= call!352837 (++!12784 call!352835 (list!18985 (right!43143 ys!41))))))

(declare-fun d!1632630 () Bool)

(declare-fun e!3160936 () Bool)

(assert (=> d!1632630 e!3160936))

(declare-fun c!869342 () Bool)

(assert (=> d!1632630 (= c!869342 ((_ is Nil!58432) (list!18985 (right!43143 (right!43143 xs!286)))))))

(assert (=> d!1632630 (= (appendAssoc!300 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 (left!42813 ys!41)) (list!18985 (right!43143 ys!41))) true)))

(declare-fun bm!352830 () Bool)

(declare-fun call!352834 () List!58556)

(declare-fun call!352836 () List!58556)

(assert (=> bm!352830 (= call!352834 (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) call!352836))))

(declare-fun bm!352831 () Bool)

(assert (=> bm!352831 (= call!352836 (++!12784 (list!18985 (left!42813 ys!41)) (list!18985 (right!43143 ys!41))))))

(declare-fun b!5064927 () Bool)

(assert (=> b!5064927 (= e!3160936 (= call!352837 call!352834))))

(declare-fun lt!2088684 () Bool)

(assert (=> b!5064927 (= lt!2088684 (appendAssoc!300 (t!371279 (list!18985 (right!43143 (right!43143 xs!286)))) (list!18985 (left!42813 ys!41)) (list!18985 (right!43143 ys!41))))))

(declare-fun bm!352832 () Bool)

(assert (=> bm!352832 (= call!352835 (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 (left!42813 ys!41))))))

(declare-fun b!5064928 () Bool)

(assert (=> b!5064928 (= e!3160936 (= call!352837 call!352834))))

(assert (= (and d!1632630 c!869342) b!5064928))

(assert (= (and d!1632630 (not c!869342)) b!5064927))

(assert (= (or b!5064928 b!5064927) bm!352832))

(assert (= (or b!5064928 b!5064927) bm!352831))

(assert (= (or b!5064928 b!5064927) bm!352830))

(assert (= (or b!5064928 b!5064927) bm!352829))

(assert (=> bm!352830 m!6103364))

(declare-fun m!6106020 () Bool)

(assert (=> bm!352830 m!6106020))

(assert (=> bm!352832 m!6103364))

(assert (=> bm!352832 m!6103190))

(declare-fun m!6106022 () Bool)

(assert (=> bm!352832 m!6106022))

(assert (=> b!5064927 m!6103190))

(assert (=> b!5064927 m!6103192))

(declare-fun m!6106024 () Bool)

(assert (=> b!5064927 m!6106024))

(assert (=> bm!352831 m!6103190))

(assert (=> bm!352831 m!6103192))

(assert (=> bm!352831 m!6103194))

(assert (=> bm!352829 m!6103192))

(declare-fun m!6106026 () Bool)

(assert (=> bm!352829 m!6106026))

(assert (=> b!5063743 d!1632630))

(assert (=> b!5063743 d!1631854))

(assert (=> b!5063743 d!1631812))

(assert (=> b!5063743 d!1631814))

(declare-fun d!1632632 () Bool)

(declare-fun res!2156623 () Bool)

(declare-fun e!3160937 () Bool)

(assert (=> d!1632632 (=> (not res!2156623) (not e!3160937))))

(assert (=> d!1632632 (= res!2156623 (= (csize!31354 (left!42813 (right!43143 ys!41))) (+ (size!39073 (left!42813 (left!42813 (right!43143 ys!41)))) (size!39073 (right!43143 (left!42813 (right!43143 ys!41)))))))))

(assert (=> d!1632632 (= (inv!77548 (left!42813 (right!43143 ys!41))) e!3160937)))

(declare-fun b!5064929 () Bool)

(declare-fun res!2156624 () Bool)

(assert (=> b!5064929 (=> (not res!2156624) (not e!3160937))))

(assert (=> b!5064929 (= res!2156624 (and (not (= (left!42813 (left!42813 (right!43143 ys!41))) Empty!15562)) (not (= (right!43143 (left!42813 (right!43143 ys!41))) Empty!15562))))))

(declare-fun b!5064930 () Bool)

(declare-fun res!2156625 () Bool)

(assert (=> b!5064930 (=> (not res!2156625) (not e!3160937))))

(assert (=> b!5064930 (= res!2156625 (= (cheight!15773 (left!42813 (right!43143 ys!41))) (+ (max!0 (height!2139 (left!42813 (left!42813 (right!43143 ys!41)))) (height!2139 (right!43143 (left!42813 (right!43143 ys!41))))) 1)))))

(declare-fun b!5064931 () Bool)

(assert (=> b!5064931 (= e!3160937 (<= 0 (cheight!15773 (left!42813 (right!43143 ys!41)))))))

(assert (= (and d!1632632 res!2156623) b!5064929))

(assert (= (and b!5064929 res!2156624) b!5064930))

(assert (= (and b!5064930 res!2156625) b!5064931))

(declare-fun m!6106028 () Bool)

(assert (=> d!1632632 m!6106028))

(declare-fun m!6106030 () Bool)

(assert (=> d!1632632 m!6106030))

(assert (=> b!5064930 m!6104762))

(assert (=> b!5064930 m!6104764))

(assert (=> b!5064930 m!6104762))

(assert (=> b!5064930 m!6104764))

(declare-fun m!6106032 () Bool)

(assert (=> b!5064930 m!6106032))

(assert (=> b!5064194 d!1632632))

(declare-fun b!5064932 () Bool)

(declare-fun res!2156628 () Bool)

(declare-fun e!3160938 () Bool)

(assert (=> b!5064932 (=> (not res!2156628) (not e!3160938))))

(assert (=> b!5064932 (= res!2156628 (not (isEmpty!31626 (left!42813 (right!43143 (right!43143 (right!43143 xs!286)))))))))

(declare-fun b!5064933 () Bool)

(declare-fun res!2156631 () Bool)

(assert (=> b!5064933 (=> (not res!2156631) (not e!3160938))))

(assert (=> b!5064933 (= res!2156631 (<= (- (height!2139 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (height!2139 (right!43143 (right!43143 (right!43143 (right!43143 xs!286)))))) 1))))

(declare-fun b!5064934 () Bool)

(declare-fun e!3160939 () Bool)

(assert (=> b!5064934 (= e!3160939 e!3160938)))

(declare-fun res!2156630 () Bool)

(assert (=> b!5064934 (=> (not res!2156630) (not e!3160938))))

(assert (=> b!5064934 (= res!2156630 (<= (- 1) (- (height!2139 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) (height!2139 (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))))))))

(declare-fun d!1632634 () Bool)

(declare-fun res!2156627 () Bool)

(assert (=> d!1632634 (=> res!2156627 e!3160939)))

(assert (=> d!1632634 (= res!2156627 (not ((_ is Node!15562) (right!43143 (right!43143 (right!43143 xs!286))))))))

(assert (=> d!1632634 (= (isBalanced!4424 (right!43143 (right!43143 (right!43143 xs!286)))) e!3160939)))

(declare-fun b!5064935 () Bool)

(assert (=> b!5064935 (= e!3160938 (not (isEmpty!31626 (right!43143 (right!43143 (right!43143 (right!43143 xs!286)))))))))

(declare-fun b!5064936 () Bool)

(declare-fun res!2156626 () Bool)

(assert (=> b!5064936 (=> (not res!2156626) (not e!3160938))))

(assert (=> b!5064936 (= res!2156626 (isBalanced!4424 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))))))

(declare-fun b!5064937 () Bool)

(declare-fun res!2156629 () Bool)

(assert (=> b!5064937 (=> (not res!2156629) (not e!3160938))))

(assert (=> b!5064937 (= res!2156629 (isBalanced!4424 (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))))))

(assert (= (and d!1632634 (not res!2156627)) b!5064934))

(assert (= (and b!5064934 res!2156630) b!5064933))

(assert (= (and b!5064933 res!2156631) b!5064936))

(assert (= (and b!5064936 res!2156626) b!5064937))

(assert (= (and b!5064937 res!2156629) b!5064932))

(assert (= (and b!5064932 res!2156628) b!5064935))

(declare-fun m!6106034 () Bool)

(assert (=> b!5064936 m!6106034))

(declare-fun m!6106036 () Bool)

(assert (=> b!5064935 m!6106036))

(declare-fun m!6106038 () Bool)

(assert (=> b!5064932 m!6106038))

(declare-fun m!6106040 () Bool)

(assert (=> b!5064933 m!6106040))

(declare-fun m!6106042 () Bool)

(assert (=> b!5064933 m!6106042))

(declare-fun m!6106044 () Bool)

(assert (=> b!5064937 m!6106044))

(assert (=> b!5064934 m!6106040))

(assert (=> b!5064934 m!6106042))

(assert (=> b!5063787 d!1632634))

(declare-fun d!1632636 () Bool)

(assert (=> d!1632636 (= (list!18986 (xs!18906 lt!2088483)) (innerList!15650 (xs!18906 lt!2088483)))))

(assert (=> b!5064148 d!1632636))

(declare-fun d!1632638 () Bool)

(declare-fun lt!2088685 () Int)

(assert (=> d!1632638 (>= lt!2088685 0)))

(declare-fun e!3160940 () Int)

(assert (=> d!1632638 (= lt!2088685 e!3160940)))

(declare-fun c!869343 () Bool)

(assert (=> d!1632638 (= c!869343 ((_ is Nil!58432) lt!2088529))))

(assert (=> d!1632638 (= (size!39071 lt!2088529) lt!2088685)))

(declare-fun b!5064938 () Bool)

(assert (=> b!5064938 (= e!3160940 0)))

(declare-fun b!5064939 () Bool)

(assert (=> b!5064939 (= e!3160940 (+ 1 (size!39071 (t!371279 lt!2088529))))))

(assert (= (and d!1632638 c!869343) b!5064938))

(assert (= (and d!1632638 (not c!869343)) b!5064939))

(declare-fun m!6106046 () Bool)

(assert (=> b!5064939 m!6106046))

(assert (=> b!5063951 d!1632638))

(declare-fun d!1632640 () Bool)

(declare-fun lt!2088686 () Int)

(assert (=> d!1632640 (>= lt!2088686 0)))

(declare-fun e!3160941 () Int)

(assert (=> d!1632640 (= lt!2088686 e!3160941)))

(declare-fun c!869344 () Bool)

(assert (=> d!1632640 (= c!869344 ((_ is Nil!58432) (list!18985 (right!43143 (right!43143 xs!286)))))))

(assert (=> d!1632640 (= (size!39071 (list!18985 (right!43143 (right!43143 xs!286)))) lt!2088686)))

(declare-fun b!5064940 () Bool)

(assert (=> b!5064940 (= e!3160941 0)))

(declare-fun b!5064941 () Bool)

(assert (=> b!5064941 (= e!3160941 (+ 1 (size!39071 (t!371279 (list!18985 (right!43143 (right!43143 xs!286)))))))))

(assert (= (and d!1632640 c!869344) b!5064940))

(assert (= (and d!1632640 (not c!869344)) b!5064941))

(declare-fun m!6106048 () Bool)

(assert (=> b!5064941 m!6106048))

(assert (=> b!5063951 d!1632640))

(assert (=> b!5063951 d!1632062))

(assert (=> b!5064097 d!1632598))

(assert (=> b!5064097 d!1632600))

(declare-fun d!1632642 () Bool)

(declare-fun c!869345 () Bool)

(assert (=> d!1632642 (= c!869345 ((_ is Nil!58432) lt!2088516))))

(declare-fun e!3160942 () (InoxSet T!105104))

(assert (=> d!1632642 (= (content!10415 lt!2088516) e!3160942)))

(declare-fun b!5064942 () Bool)

(assert (=> b!5064942 (= e!3160942 ((as const (Array T!105104 Bool)) false))))

(declare-fun b!5064943 () Bool)

(assert (=> b!5064943 (= e!3160942 ((_ map or) (store ((as const (Array T!105104 Bool)) false) (h!64880 lt!2088516) true) (content!10415 (t!371279 lt!2088516))))))

(assert (= (and d!1632642 c!869345) b!5064942))

(assert (= (and d!1632642 (not c!869345)) b!5064943))

(declare-fun m!6106050 () Bool)

(assert (=> b!5064943 m!6106050))

(declare-fun m!6106052 () Bool)

(assert (=> b!5064943 m!6106052))

(assert (=> d!1631810 d!1632642))

(declare-fun d!1632644 () Bool)

(declare-fun c!869346 () Bool)

(assert (=> d!1632644 (= c!869346 ((_ is Nil!58432) (list!18985 (left!42813 ys!41))))))

(declare-fun e!3160943 () (InoxSet T!105104))

(assert (=> d!1632644 (= (content!10415 (list!18985 (left!42813 ys!41))) e!3160943)))

(declare-fun b!5064944 () Bool)

(assert (=> b!5064944 (= e!3160943 ((as const (Array T!105104 Bool)) false))))

(declare-fun b!5064945 () Bool)

(assert (=> b!5064945 (= e!3160943 ((_ map or) (store ((as const (Array T!105104 Bool)) false) (h!64880 (list!18985 (left!42813 ys!41))) true) (content!10415 (t!371279 (list!18985 (left!42813 ys!41))))))))

(assert (= (and d!1632644 c!869346) b!5064944))

(assert (= (and d!1632644 (not c!869346)) b!5064945))

(declare-fun m!6106054 () Bool)

(assert (=> b!5064945 m!6106054))

(declare-fun m!6106056 () Bool)

(assert (=> b!5064945 m!6106056))

(assert (=> d!1631810 d!1632644))

(declare-fun d!1632646 () Bool)

(declare-fun c!869347 () Bool)

(assert (=> d!1632646 (= c!869347 ((_ is Nil!58432) (list!18985 (right!43143 ys!41))))))

(declare-fun e!3160944 () (InoxSet T!105104))

(assert (=> d!1632646 (= (content!10415 (list!18985 (right!43143 ys!41))) e!3160944)))

(declare-fun b!5064946 () Bool)

(assert (=> b!5064946 (= e!3160944 ((as const (Array T!105104 Bool)) false))))

(declare-fun b!5064947 () Bool)

(assert (=> b!5064947 (= e!3160944 ((_ map or) (store ((as const (Array T!105104 Bool)) false) (h!64880 (list!18985 (right!43143 ys!41))) true) (content!10415 (t!371279 (list!18985 (right!43143 ys!41))))))))

(assert (= (and d!1632646 c!869347) b!5064946))

(assert (= (and d!1632646 (not c!869347)) b!5064947))

(declare-fun m!6106058 () Bool)

(assert (=> b!5064947 m!6106058))

(declare-fun m!6106060 () Bool)

(assert (=> b!5064947 m!6106060))

(assert (=> d!1631810 d!1632646))

(assert (=> bm!352775 d!1632602))

(declare-fun d!1632648 () Bool)

(declare-fun res!2156632 () Bool)

(declare-fun e!3160945 () Bool)

(assert (=> d!1632648 (=> (not res!2156632) (not e!3160945))))

(assert (=> d!1632648 (= res!2156632 (= (csize!31354 (left!42813 (left!42813 xs!286))) (+ (size!39073 (left!42813 (left!42813 (left!42813 xs!286)))) (size!39073 (right!43143 (left!42813 (left!42813 xs!286)))))))))

(assert (=> d!1632648 (= (inv!77548 (left!42813 (left!42813 xs!286))) e!3160945)))

(declare-fun b!5064948 () Bool)

(declare-fun res!2156633 () Bool)

(assert (=> b!5064948 (=> (not res!2156633) (not e!3160945))))

(assert (=> b!5064948 (= res!2156633 (and (not (= (left!42813 (left!42813 (left!42813 xs!286))) Empty!15562)) (not (= (right!43143 (left!42813 (left!42813 xs!286))) Empty!15562))))))

(declare-fun b!5064949 () Bool)

(declare-fun res!2156634 () Bool)

(assert (=> b!5064949 (=> (not res!2156634) (not e!3160945))))

(assert (=> b!5064949 (= res!2156634 (= (cheight!15773 (left!42813 (left!42813 xs!286))) (+ (max!0 (height!2139 (left!42813 (left!42813 (left!42813 xs!286)))) (height!2139 (right!43143 (left!42813 (left!42813 xs!286))))) 1)))))

(declare-fun b!5064950 () Bool)

(assert (=> b!5064950 (= e!3160945 (<= 0 (cheight!15773 (left!42813 (left!42813 xs!286)))))))

(assert (= (and d!1632648 res!2156632) b!5064948))

(assert (= (and b!5064948 res!2156633) b!5064949))

(assert (= (and b!5064949 res!2156634) b!5064950))

(declare-fun m!6106062 () Bool)

(assert (=> d!1632648 m!6106062))

(declare-fun m!6106064 () Bool)

(assert (=> d!1632648 m!6106064))

(assert (=> b!5064949 m!6105614))

(assert (=> b!5064949 m!6105616))

(assert (=> b!5064949 m!6105614))

(assert (=> b!5064949 m!6105616))

(declare-fun m!6106066 () Bool)

(assert (=> b!5064949 m!6106066))

(assert (=> b!5064229 d!1632648))

(declare-fun d!1632650 () Bool)

(declare-fun e!3160947 () Bool)

(assert (=> d!1632650 e!3160947))

(declare-fun res!2156635 () Bool)

(assert (=> d!1632650 (=> (not res!2156635) (not e!3160947))))

(declare-fun lt!2088687 () List!58556)

(assert (=> d!1632650 (= res!2156635 (= (content!10415 lt!2088687) ((_ map or) (content!10415 (t!371279 (list!18985 (left!42813 ys!41)))) (content!10415 (list!18985 (right!43143 ys!41))))))))

(declare-fun e!3160946 () List!58556)

(assert (=> d!1632650 (= lt!2088687 e!3160946)))

(declare-fun c!869348 () Bool)

(assert (=> d!1632650 (= c!869348 ((_ is Nil!58432) (t!371279 (list!18985 (left!42813 ys!41)))))))

(assert (=> d!1632650 (= (++!12784 (t!371279 (list!18985 (left!42813 ys!41))) (list!18985 (right!43143 ys!41))) lt!2088687)))

(declare-fun b!5064952 () Bool)

(assert (=> b!5064952 (= e!3160946 (Cons!58432 (h!64880 (t!371279 (list!18985 (left!42813 ys!41)))) (++!12784 (t!371279 (t!371279 (list!18985 (left!42813 ys!41)))) (list!18985 (right!43143 ys!41)))))))

(declare-fun b!5064954 () Bool)

(assert (=> b!5064954 (= e!3160947 (or (not (= (list!18985 (right!43143 ys!41)) Nil!58432)) (= lt!2088687 (t!371279 (list!18985 (left!42813 ys!41))))))))

(declare-fun b!5064951 () Bool)

(assert (=> b!5064951 (= e!3160946 (list!18985 (right!43143 ys!41)))))

(declare-fun b!5064953 () Bool)

(declare-fun res!2156636 () Bool)

(assert (=> b!5064953 (=> (not res!2156636) (not e!3160947))))

(assert (=> b!5064953 (= res!2156636 (= (size!39071 lt!2088687) (+ (size!39071 (t!371279 (list!18985 (left!42813 ys!41)))) (size!39071 (list!18985 (right!43143 ys!41))))))))

(assert (= (and d!1632650 c!869348) b!5064951))

(assert (= (and d!1632650 (not c!869348)) b!5064952))

(assert (= (and d!1632650 res!2156635) b!5064953))

(assert (= (and b!5064953 res!2156636) b!5064954))

(declare-fun m!6106068 () Bool)

(assert (=> d!1632650 m!6106068))

(assert (=> d!1632650 m!6106056))

(assert (=> d!1632650 m!6103192))

(assert (=> d!1632650 m!6103848))

(assert (=> b!5064952 m!6103192))

(declare-fun m!6106070 () Bool)

(assert (=> b!5064952 m!6106070))

(declare-fun m!6106072 () Bool)

(assert (=> b!5064953 m!6106072))

(assert (=> b!5064953 m!6105882))

(assert (=> b!5064953 m!6103192))

(assert (=> b!5064953 m!6103856))

(assert (=> b!5063862 d!1632650))

(declare-fun d!1632652 () Bool)

(declare-fun lt!2088688 () Bool)

(assert (=> d!1632652 (= lt!2088688 (isEmpty!31628 (list!18985 (left!42813 (right!43143 xs!286)))))))

(assert (=> d!1632652 (= lt!2088688 (= (size!39073 (left!42813 (right!43143 xs!286))) 0))))

(assert (=> d!1632652 (= (isEmpty!31626 (left!42813 (right!43143 xs!286))) lt!2088688)))

(declare-fun bs!1189841 () Bool)

(assert (= bs!1189841 d!1632652))

(assert (=> bs!1189841 m!6103448))

(assert (=> bs!1189841 m!6103448))

(declare-fun m!6106074 () Bool)

(assert (=> bs!1189841 m!6106074))

(assert (=> bs!1189841 m!6103476))

(assert (=> b!5064282 d!1632652))

(declare-fun d!1632654 () Bool)

(declare-fun e!3160949 () Bool)

(assert (=> d!1632654 e!3160949))

(declare-fun res!2156637 () Bool)

(assert (=> d!1632654 (=> (not res!2156637) (not e!3160949))))

(declare-fun lt!2088689 () List!58556)

(assert (=> d!1632654 (= res!2156637 (= (content!10415 lt!2088689) ((_ map or) (content!10415 call!352743) (content!10415 (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 ys!41))))))))

(declare-fun e!3160948 () List!58556)

(assert (=> d!1632654 (= lt!2088689 e!3160948)))

(declare-fun c!869349 () Bool)

(assert (=> d!1632654 (= c!869349 ((_ is Nil!58432) call!352743))))

(assert (=> d!1632654 (= (++!12784 call!352743 (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 ys!41))) lt!2088689)))

(declare-fun b!5064956 () Bool)

(assert (=> b!5064956 (= e!3160948 (Cons!58432 (h!64880 call!352743) (++!12784 (t!371279 call!352743) (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 ys!41)))))))

(declare-fun b!5064958 () Bool)

(assert (=> b!5064958 (= e!3160949 (or (not (= (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 ys!41)) Nil!58432)) (= lt!2088689 call!352743)))))

(declare-fun b!5064955 () Bool)

(assert (=> b!5064955 (= e!3160948 (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 ys!41)))))

(declare-fun b!5064957 () Bool)

(declare-fun res!2156638 () Bool)

(assert (=> b!5064957 (=> (not res!2156638) (not e!3160949))))

(assert (=> b!5064957 (= res!2156638 (= (size!39071 lt!2088689) (+ (size!39071 call!352743) (size!39071 (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 ys!41))))))))

(assert (= (and d!1632654 c!869349) b!5064955))

(assert (= (and d!1632654 (not c!869349)) b!5064956))

(assert (= (and d!1632654 res!2156637) b!5064957))

(assert (= (and b!5064957 res!2156638) b!5064958))

(declare-fun m!6106076 () Bool)

(assert (=> d!1632654 m!6106076))

(declare-fun m!6106078 () Bool)

(assert (=> d!1632654 m!6106078))

(assert (=> d!1632654 m!6103366))

(assert (=> d!1632654 m!6105730))

(assert (=> b!5064956 m!6103366))

(declare-fun m!6106080 () Bool)

(assert (=> b!5064956 m!6106080))

(declare-fun m!6106082 () Bool)

(assert (=> b!5064957 m!6106082))

(declare-fun m!6106084 () Bool)

(assert (=> b!5064957 m!6106084))

(assert (=> b!5064957 m!6103366))

(assert (=> b!5064957 m!6105736))

(assert (=> bm!352737 d!1632654))

(assert (=> d!1631880 d!1632116))

(assert (=> d!1631880 d!1631858))

(declare-fun d!1632656 () Bool)

(assert (=> d!1632656 (= (inv!77545 (xs!18906 (left!42813 (right!43143 ys!41)))) (<= (size!39071 (innerList!15650 (xs!18906 (left!42813 (right!43143 ys!41))))) 2147483647))))

(declare-fun bs!1189842 () Bool)

(assert (= bs!1189842 d!1632656))

(declare-fun m!6106086 () Bool)

(assert (=> bs!1189842 m!6106086))

(assert (=> b!5064305 d!1632656))

(assert (=> b!5063867 d!1632402))

(declare-fun d!1632658 () Bool)

(declare-fun e!3160951 () Bool)

(assert (=> d!1632658 e!3160951))

(declare-fun res!2156639 () Bool)

(assert (=> d!1632658 (=> (not res!2156639) (not e!3160951))))

(declare-fun lt!2088690 () List!58556)

(assert (=> d!1632658 (= res!2156639 (= (content!10415 lt!2088690) ((_ map or) (content!10415 (list!18985 (left!42813 xs!286))) (content!10415 call!352730))))))

(declare-fun e!3160950 () List!58556)

(assert (=> d!1632658 (= lt!2088690 e!3160950)))

(declare-fun c!869350 () Bool)

(assert (=> d!1632658 (= c!869350 ((_ is Nil!58432) (list!18985 (left!42813 xs!286))))))

(assert (=> d!1632658 (= (++!12784 (list!18985 (left!42813 xs!286)) call!352730) lt!2088690)))

(declare-fun b!5064960 () Bool)

(assert (=> b!5064960 (= e!3160950 (Cons!58432 (h!64880 (list!18985 (left!42813 xs!286))) (++!12784 (t!371279 (list!18985 (left!42813 xs!286))) call!352730)))))

(declare-fun b!5064962 () Bool)

(assert (=> b!5064962 (= e!3160951 (or (not (= call!352730 Nil!58432)) (= lt!2088690 (list!18985 (left!42813 xs!286)))))))

(declare-fun b!5064959 () Bool)

(assert (=> b!5064959 (= e!3160950 call!352730)))

(declare-fun b!5064961 () Bool)

(declare-fun res!2156640 () Bool)

(assert (=> b!5064961 (=> (not res!2156640) (not e!3160951))))

(assert (=> b!5064961 (= res!2156640 (= (size!39071 lt!2088690) (+ (size!39071 (list!18985 (left!42813 xs!286))) (size!39071 call!352730))))))

(assert (= (and d!1632658 c!869350) b!5064959))

(assert (= (and d!1632658 (not c!869350)) b!5064960))

(assert (= (and d!1632658 res!2156639) b!5064961))

(assert (= (and b!5064961 res!2156640) b!5064962))

(declare-fun m!6106088 () Bool)

(assert (=> d!1632658 m!6106088))

(assert (=> d!1632658 m!6103182))

(assert (=> d!1632658 m!6104618))

(declare-fun m!6106090 () Bool)

(assert (=> d!1632658 m!6106090))

(declare-fun m!6106092 () Bool)

(assert (=> b!5064960 m!6106092))

(declare-fun m!6106094 () Bool)

(assert (=> b!5064961 m!6106094))

(assert (=> b!5064961 m!6103182))

(assert (=> b!5064961 m!6103696))

(declare-fun m!6106096 () Bool)

(assert (=> b!5064961 m!6106096))

(assert (=> bm!352724 d!1632658))

(assert (=> b!5064039 d!1632592))

(assert (=> b!5064039 d!1632594))

(declare-fun d!1632660 () Bool)

(assert (=> d!1632660 (= (height!2139 lt!2088509) (ite ((_ is Empty!15562) lt!2088509) 0 (ite ((_ is Leaf!25848) lt!2088509) 1 (cheight!15773 lt!2088509))))))

(assert (=> b!5063813 d!1632660))

(declare-fun d!1632662 () Bool)

(assert (=> d!1632662 (= (max!0 (height!2139 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (height!2139 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))) (ite (< (height!2139 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (height!2139 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41)))))) (height!2139 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))) (height!2139 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286))))))))

(assert (=> b!5063813 d!1632662))

(assert (=> b!5063813 d!1632258))

(assert (=> b!5063813 d!1632256))

(declare-fun d!1632664 () Bool)

(declare-fun c!869351 () Bool)

(assert (=> d!1632664 (= c!869351 ((_ is Node!15562) (left!42813 (left!42813 (left!42813 ys!41)))))))

(declare-fun e!3160952 () Bool)

(assert (=> d!1632664 (= (inv!77544 (left!42813 (left!42813 (left!42813 ys!41)))) e!3160952)))

(declare-fun b!5064963 () Bool)

(assert (=> b!5064963 (= e!3160952 (inv!77548 (left!42813 (left!42813 (left!42813 ys!41)))))))

(declare-fun b!5064964 () Bool)

(declare-fun e!3160953 () Bool)

(assert (=> b!5064964 (= e!3160952 e!3160953)))

(declare-fun res!2156641 () Bool)

(assert (=> b!5064964 (= res!2156641 (not ((_ is Leaf!25848) (left!42813 (left!42813 (left!42813 ys!41))))))))

(assert (=> b!5064964 (=> res!2156641 e!3160953)))

(declare-fun b!5064965 () Bool)

(assert (=> b!5064965 (= e!3160953 (inv!77549 (left!42813 (left!42813 (left!42813 ys!41)))))))

(assert (= (and d!1632664 c!869351) b!5064963))

(assert (= (and d!1632664 (not c!869351)) b!5064964))

(assert (= (and b!5064964 (not res!2156641)) b!5064965))

(declare-fun m!6106098 () Bool)

(assert (=> b!5064963 m!6106098))

(declare-fun m!6106100 () Bool)

(assert (=> b!5064965 m!6106100))

(assert (=> b!5064312 d!1632664))

(declare-fun d!1632666 () Bool)

(declare-fun c!869352 () Bool)

(assert (=> d!1632666 (= c!869352 ((_ is Node!15562) (right!43143 (left!42813 (left!42813 ys!41)))))))

(declare-fun e!3160954 () Bool)

(assert (=> d!1632666 (= (inv!77544 (right!43143 (left!42813 (left!42813 ys!41)))) e!3160954)))

(declare-fun b!5064966 () Bool)

(assert (=> b!5064966 (= e!3160954 (inv!77548 (right!43143 (left!42813 (left!42813 ys!41)))))))

(declare-fun b!5064967 () Bool)

(declare-fun e!3160955 () Bool)

(assert (=> b!5064967 (= e!3160954 e!3160955)))

(declare-fun res!2156642 () Bool)

(assert (=> b!5064967 (= res!2156642 (not ((_ is Leaf!25848) (right!43143 (left!42813 (left!42813 ys!41))))))))

(assert (=> b!5064967 (=> res!2156642 e!3160955)))

(declare-fun b!5064968 () Bool)

(assert (=> b!5064968 (= e!3160955 (inv!77549 (right!43143 (left!42813 (left!42813 ys!41)))))))

(assert (= (and d!1632666 c!869352) b!5064966))

(assert (= (and d!1632666 (not c!869352)) b!5064967))

(assert (= (and b!5064967 (not res!2156642)) b!5064968))

(declare-fun m!6106102 () Bool)

(assert (=> b!5064966 m!6106102))

(declare-fun m!6106104 () Bool)

(assert (=> b!5064968 m!6106104))

(assert (=> b!5064312 d!1632666))

(declare-fun d!1632668 () Bool)

(declare-fun e!3160957 () Bool)

(assert (=> d!1632668 e!3160957))

(declare-fun res!2156643 () Bool)

(assert (=> d!1632668 (=> (not res!2156643) (not e!3160957))))

(declare-fun lt!2088691 () List!58556)

(assert (=> d!1632668 (= res!2156643 (= (content!10415 lt!2088691) ((_ map or) (content!10415 (t!371279 (list!18985 (right!43143 (right!43143 xs!286))))) (content!10415 (list!18985 ys!41)))))))

(declare-fun e!3160956 () List!58556)

(assert (=> d!1632668 (= lt!2088691 e!3160956)))

(declare-fun c!869353 () Bool)

(assert (=> d!1632668 (= c!869353 ((_ is Nil!58432) (t!371279 (list!18985 (right!43143 (right!43143 xs!286))))))))

(assert (=> d!1632668 (= (++!12784 (t!371279 (list!18985 (right!43143 (right!43143 xs!286)))) (list!18985 ys!41)) lt!2088691)))

(declare-fun b!5064970 () Bool)

(assert (=> b!5064970 (= e!3160956 (Cons!58432 (h!64880 (t!371279 (list!18985 (right!43143 (right!43143 xs!286))))) (++!12784 (t!371279 (t!371279 (list!18985 (right!43143 (right!43143 xs!286))))) (list!18985 ys!41))))))

(declare-fun b!5064972 () Bool)

(assert (=> b!5064972 (= e!3160957 (or (not (= (list!18985 ys!41) Nil!58432)) (= lt!2088691 (t!371279 (list!18985 (right!43143 (right!43143 xs!286)))))))))

(declare-fun b!5064969 () Bool)

(assert (=> b!5064969 (= e!3160956 (list!18985 ys!41))))

(declare-fun b!5064971 () Bool)

(declare-fun res!2156644 () Bool)

(assert (=> b!5064971 (=> (not res!2156644) (not e!3160957))))

(assert (=> b!5064971 (= res!2156644 (= (size!39071 lt!2088691) (+ (size!39071 (t!371279 (list!18985 (right!43143 (right!43143 xs!286))))) (size!39071 (list!18985 ys!41)))))))

(assert (= (and d!1632668 c!869353) b!5064969))

(assert (= (and d!1632668 (not c!869353)) b!5064970))

(assert (= (and d!1632668 res!2156643) b!5064971))

(assert (= (and b!5064971 res!2156644) b!5064972))

(declare-fun m!6106106 () Bool)

(assert (=> d!1632668 m!6106106))

(assert (=> d!1632668 m!6104978))

(assert (=> d!1632668 m!6103082))

(assert (=> d!1632668 m!6103172))

(assert (=> b!5064970 m!6103082))

(declare-fun m!6106108 () Bool)

(assert (=> b!5064970 m!6106108))

(declare-fun m!6106110 () Bool)

(assert (=> b!5064971 m!6106110))

(assert (=> b!5064971 m!6106048))

(assert (=> b!5064971 m!6103082))

(assert (=> b!5064971 m!6103180))

(assert (=> b!5063950 d!1632668))

(assert (=> b!5064096 d!1632598))

(assert (=> b!5064096 d!1632600))

(assert (=> d!1631976 d!1632400))

(assert (=> d!1631976 d!1632402))

(assert (=> d!1631770 d!1632344))

(assert (=> d!1631770 d!1631848))

(declare-fun b!5064973 () Bool)

(declare-fun res!2156647 () Bool)

(declare-fun e!3160958 () Bool)

(assert (=> b!5064973 (=> (not res!2156647) (not e!3160958))))

(assert (=> b!5064973 (= res!2156647 (not (isEmpty!31626 (left!42813 (right!43143 (right!43143 ys!41))))))))

(declare-fun b!5064974 () Bool)

(declare-fun res!2156650 () Bool)

(assert (=> b!5064974 (=> (not res!2156650) (not e!3160958))))

(assert (=> b!5064974 (= res!2156650 (<= (- (height!2139 (left!42813 (right!43143 (right!43143 ys!41)))) (height!2139 (right!43143 (right!43143 (right!43143 ys!41))))) 1))))

(declare-fun b!5064975 () Bool)

(declare-fun e!3160959 () Bool)

(assert (=> b!5064975 (= e!3160959 e!3160958)))

(declare-fun res!2156649 () Bool)

(assert (=> b!5064975 (=> (not res!2156649) (not e!3160958))))

(assert (=> b!5064975 (= res!2156649 (<= (- 1) (- (height!2139 (left!42813 (right!43143 (right!43143 ys!41)))) (height!2139 (right!43143 (right!43143 (right!43143 ys!41)))))))))

(declare-fun d!1632670 () Bool)

(declare-fun res!2156646 () Bool)

(assert (=> d!1632670 (=> res!2156646 e!3160959)))

(assert (=> d!1632670 (= res!2156646 (not ((_ is Node!15562) (right!43143 (right!43143 ys!41)))))))

(assert (=> d!1632670 (= (isBalanced!4424 (right!43143 (right!43143 ys!41))) e!3160959)))

(declare-fun b!5064976 () Bool)

(assert (=> b!5064976 (= e!3160958 (not (isEmpty!31626 (right!43143 (right!43143 (right!43143 ys!41))))))))

(declare-fun b!5064977 () Bool)

(declare-fun res!2156645 () Bool)

(assert (=> b!5064977 (=> (not res!2156645) (not e!3160958))))

(assert (=> b!5064977 (= res!2156645 (isBalanced!4424 (left!42813 (right!43143 (right!43143 ys!41)))))))

(declare-fun b!5064978 () Bool)

(declare-fun res!2156648 () Bool)

(assert (=> b!5064978 (=> (not res!2156648) (not e!3160958))))

(assert (=> b!5064978 (= res!2156648 (isBalanced!4424 (right!43143 (right!43143 (right!43143 ys!41)))))))

(assert (= (and d!1632670 (not res!2156646)) b!5064975))

(assert (= (and b!5064975 res!2156649) b!5064974))

(assert (= (and b!5064974 res!2156650) b!5064977))

(assert (= (and b!5064977 res!2156645) b!5064978))

(assert (= (and b!5064978 res!2156648) b!5064973))

(assert (= (and b!5064973 res!2156647) b!5064976))

(declare-fun m!6106112 () Bool)

(assert (=> b!5064977 m!6106112))

(declare-fun m!6106114 () Bool)

(assert (=> b!5064976 m!6106114))

(declare-fun m!6106116 () Bool)

(assert (=> b!5064973 m!6106116))

(assert (=> b!5064974 m!6105696))

(assert (=> b!5064974 m!6105698))

(declare-fun m!6106118 () Bool)

(assert (=> b!5064978 m!6106118))

(assert (=> b!5064975 m!6105696))

(assert (=> b!5064975 m!6105698))

(assert (=> b!5063860 d!1632670))

(assert (=> b!5063819 d!1632660))

(assert (=> b!5063819 d!1632662))

(assert (=> b!5063819 d!1632258))

(assert (=> b!5063819 d!1632256))

(assert (=> b!5063695 d!1632064))

(assert (=> b!5063695 d!1632066))

(declare-fun b!5064979 () Bool)

(declare-fun res!2156653 () Bool)

(declare-fun e!3160960 () Bool)

(assert (=> b!5064979 (=> (not res!2156653) (not e!3160960))))

(assert (=> b!5064979 (= res!2156653 (not (isEmpty!31626 (left!42813 (left!42813 (right!43143 (right!43143 xs!286)))))))))

(declare-fun b!5064980 () Bool)

(declare-fun res!2156656 () Bool)

(assert (=> b!5064980 (=> (not res!2156656) (not e!3160960))))

(assert (=> b!5064980 (= res!2156656 (<= (- (height!2139 (left!42813 (left!42813 (right!43143 (right!43143 xs!286))))) (height!2139 (right!43143 (left!42813 (right!43143 (right!43143 xs!286)))))) 1))))

(declare-fun b!5064981 () Bool)

(declare-fun e!3160961 () Bool)

(assert (=> b!5064981 (= e!3160961 e!3160960)))

(declare-fun res!2156655 () Bool)

(assert (=> b!5064981 (=> (not res!2156655) (not e!3160960))))

(assert (=> b!5064981 (= res!2156655 (<= (- 1) (- (height!2139 (left!42813 (left!42813 (right!43143 (right!43143 xs!286))))) (height!2139 (right!43143 (left!42813 (right!43143 (right!43143 xs!286))))))))))

(declare-fun d!1632672 () Bool)

(declare-fun res!2156652 () Bool)

(assert (=> d!1632672 (=> res!2156652 e!3160961)))

(assert (=> d!1632672 (= res!2156652 (not ((_ is Node!15562) (left!42813 (right!43143 (right!43143 xs!286))))))))

(assert (=> d!1632672 (= (isBalanced!4424 (left!42813 (right!43143 (right!43143 xs!286)))) e!3160961)))

(declare-fun b!5064982 () Bool)

(assert (=> b!5064982 (= e!3160960 (not (isEmpty!31626 (right!43143 (left!42813 (right!43143 (right!43143 xs!286)))))))))

(declare-fun b!5064983 () Bool)

(declare-fun res!2156651 () Bool)

(assert (=> b!5064983 (=> (not res!2156651) (not e!3160960))))

(assert (=> b!5064983 (= res!2156651 (isBalanced!4424 (left!42813 (left!42813 (right!43143 (right!43143 xs!286))))))))

(declare-fun b!5064984 () Bool)

(declare-fun res!2156654 () Bool)

(assert (=> b!5064984 (=> (not res!2156654) (not e!3160960))))

(assert (=> b!5064984 (= res!2156654 (isBalanced!4424 (right!43143 (left!42813 (right!43143 (right!43143 xs!286))))))))

(assert (= (and d!1632672 (not res!2156652)) b!5064981))

(assert (= (and b!5064981 res!2156655) b!5064980))

(assert (= (and b!5064980 res!2156656) b!5064983))

(assert (= (and b!5064983 res!2156651) b!5064984))

(assert (= (and b!5064984 res!2156654) b!5064979))

(assert (= (and b!5064979 res!2156653) b!5064982))

(declare-fun m!6106120 () Bool)

(assert (=> b!5064983 m!6106120))

(declare-fun m!6106122 () Bool)

(assert (=> b!5064982 m!6106122))

(declare-fun m!6106124 () Bool)

(assert (=> b!5064979 m!6106124))

(declare-fun m!6106126 () Bool)

(assert (=> b!5064980 m!6106126))

(declare-fun m!6106128 () Bool)

(assert (=> b!5064980 m!6106128))

(declare-fun m!6106130 () Bool)

(assert (=> b!5064984 m!6106130))

(assert (=> b!5064981 m!6106126))

(assert (=> b!5064981 m!6106128))

(assert (=> b!5063786 d!1632672))

(declare-fun bm!352833 () Bool)

(declare-fun call!352841 () List!58556)

(declare-fun call!352839 () List!58556)

(assert (=> bm!352833 (= call!352841 (++!12784 call!352839 (list!18985 ys!41)))))

(declare-fun d!1632674 () Bool)

(declare-fun e!3160962 () Bool)

(assert (=> d!1632674 e!3160962))

(declare-fun c!869354 () Bool)

(assert (=> d!1632674 (= c!869354 ((_ is Nil!58432) (list!18985 (left!42813 (right!43143 (right!43143 xs!286))))))))

(assert (=> d!1632674 (= (appendAssoc!300 (list!18985 (left!42813 (right!43143 (right!43143 xs!286)))) (list!18985 (right!43143 (right!43143 (right!43143 xs!286)))) (list!18985 ys!41)) true)))

(declare-fun bm!352834 () Bool)

(declare-fun call!352838 () List!58556)

(declare-fun call!352840 () List!58556)

(assert (=> bm!352834 (= call!352838 (++!12784 (list!18985 (left!42813 (right!43143 (right!43143 xs!286)))) call!352840))))

(declare-fun bm!352835 () Bool)

(assert (=> bm!352835 (= call!352840 (++!12784 (list!18985 (right!43143 (right!43143 (right!43143 xs!286)))) (list!18985 ys!41)))))

(declare-fun b!5064985 () Bool)

(assert (=> b!5064985 (= e!3160962 (= call!352841 call!352838))))

(declare-fun lt!2088692 () Bool)

(assert (=> b!5064985 (= lt!2088692 (appendAssoc!300 (t!371279 (list!18985 (left!42813 (right!43143 (right!43143 xs!286))))) (list!18985 (right!43143 (right!43143 (right!43143 xs!286)))) (list!18985 ys!41)))))

(declare-fun bm!352836 () Bool)

(assert (=> bm!352836 (= call!352839 (++!12784 (list!18985 (left!42813 (right!43143 (right!43143 xs!286)))) (list!18985 (right!43143 (right!43143 (right!43143 xs!286))))))))

(declare-fun b!5064986 () Bool)

(assert (=> b!5064986 (= e!3160962 (= call!352841 call!352838))))

(assert (= (and d!1632674 c!869354) b!5064986))

(assert (= (and d!1632674 (not c!869354)) b!5064985))

(assert (= (or b!5064986 b!5064985) bm!352836))

(assert (= (or b!5064986 b!5064985) bm!352835))

(assert (= (or b!5064986 b!5064985) bm!352834))

(assert (= (or b!5064986 b!5064985) bm!352833))

(assert (=> bm!352834 m!6103644))

(declare-fun m!6106132 () Bool)

(assert (=> bm!352834 m!6106132))

(assert (=> bm!352836 m!6103644))

(assert (=> bm!352836 m!6103650))

(assert (=> bm!352836 m!6103988))

(assert (=> b!5064985 m!6103650))

(assert (=> b!5064985 m!6103082))

(declare-fun m!6106134 () Bool)

(assert (=> b!5064985 m!6106134))

(assert (=> bm!352835 m!6103650))

(assert (=> bm!352835 m!6103082))

(declare-fun m!6106136 () Bool)

(assert (=> bm!352835 m!6106136))

(assert (=> bm!352833 m!6103082))

(declare-fun m!6106138 () Bool)

(assert (=> bm!352833 m!6106138))

(assert (=> b!5063742 d!1632674))

(assert (=> b!5063742 d!1632138))

(assert (=> b!5063742 d!1632140))

(assert (=> b!5063742 d!1631638))

(assert (=> b!5063931 d!1632332))

(assert (=> d!1631912 d!1632436))

(assert (=> d!1631912 d!1632222))

(declare-fun d!1632676 () Bool)

(declare-fun res!2156657 () Bool)

(declare-fun e!3160963 () Bool)

(assert (=> d!1632676 (=> (not res!2156657) (not e!3160963))))

(assert (=> d!1632676 (= res!2156657 (= (csize!31354 (left!42813 (right!43143 xs!286))) (+ (size!39073 (left!42813 (left!42813 (right!43143 xs!286)))) (size!39073 (right!43143 (left!42813 (right!43143 xs!286)))))))))

(assert (=> d!1632676 (= (inv!77548 (left!42813 (right!43143 xs!286))) e!3160963)))

(declare-fun b!5064987 () Bool)

(declare-fun res!2156658 () Bool)

(assert (=> b!5064987 (=> (not res!2156658) (not e!3160963))))

(assert (=> b!5064987 (= res!2156658 (and (not (= (left!42813 (left!42813 (right!43143 xs!286))) Empty!15562)) (not (= (right!43143 (left!42813 (right!43143 xs!286))) Empty!15562))))))

(declare-fun b!5064988 () Bool)

(declare-fun res!2156659 () Bool)

(assert (=> b!5064988 (=> (not res!2156659) (not e!3160963))))

(assert (=> b!5064988 (= res!2156659 (= (cheight!15773 (left!42813 (right!43143 xs!286))) (+ (max!0 (height!2139 (left!42813 (left!42813 (right!43143 xs!286)))) (height!2139 (right!43143 (left!42813 (right!43143 xs!286))))) 1)))))

(declare-fun b!5064989 () Bool)

(assert (=> b!5064989 (= e!3160963 (<= 0 (cheight!15773 (left!42813 (right!43143 xs!286)))))))

(assert (= (and d!1632676 res!2156657) b!5064987))

(assert (= (and b!5064987 res!2156658) b!5064988))

(assert (= (and b!5064988 res!2156659) b!5064989))

(declare-fun m!6106140 () Bool)

(assert (=> d!1632676 m!6106140))

(declare-fun m!6106142 () Bool)

(assert (=> d!1632676 m!6106142))

(assert (=> b!5064988 m!6105290))

(assert (=> b!5064988 m!6105292))

(assert (=> b!5064988 m!6105290))

(assert (=> b!5064988 m!6105292))

(declare-fun m!6106144 () Bool)

(assert (=> b!5064988 m!6106144))

(assert (=> b!5063845 d!1632676))

(assert (=> b!5063748 d!1631854))

(declare-fun d!1632678 () Bool)

(declare-fun e!3160965 () Bool)

(assert (=> d!1632678 e!3160965))

(declare-fun res!2156660 () Bool)

(assert (=> d!1632678 (=> (not res!2156660) (not e!3160965))))

(declare-fun lt!2088693 () List!58556)

(assert (=> d!1632678 (= res!2156660 (= (content!10415 lt!2088693) ((_ map or) (content!10415 (list!18985 (right!43143 (right!43143 xs!286)))) (content!10415 (list!18985 (left!42813 (left!42813 ys!41)))))))))

(declare-fun e!3160964 () List!58556)

(assert (=> d!1632678 (= lt!2088693 e!3160964)))

(declare-fun c!869355 () Bool)

(assert (=> d!1632678 (= c!869355 ((_ is Nil!58432) (list!18985 (right!43143 (right!43143 xs!286)))))))

(assert (=> d!1632678 (= (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 (left!42813 (left!42813 ys!41)))) lt!2088693)))

(declare-fun b!5064991 () Bool)

(assert (=> b!5064991 (= e!3160964 (Cons!58432 (h!64880 (list!18985 (right!43143 (right!43143 xs!286)))) (++!12784 (t!371279 (list!18985 (right!43143 (right!43143 xs!286)))) (list!18985 (left!42813 (left!42813 ys!41))))))))

(declare-fun b!5064993 () Bool)

(assert (=> b!5064993 (= e!3160965 (or (not (= (list!18985 (left!42813 (left!42813 ys!41))) Nil!58432)) (= lt!2088693 (list!18985 (right!43143 (right!43143 xs!286))))))))

(declare-fun b!5064990 () Bool)

(assert (=> b!5064990 (= e!3160964 (list!18985 (left!42813 (left!42813 ys!41))))))

(declare-fun b!5064992 () Bool)

(declare-fun res!2156661 () Bool)

(assert (=> b!5064992 (=> (not res!2156661) (not e!3160965))))

(assert (=> b!5064992 (= res!2156661 (= (size!39071 lt!2088693) (+ (size!39071 (list!18985 (right!43143 (right!43143 xs!286)))) (size!39071 (list!18985 (left!42813 (left!42813 ys!41)))))))))

(assert (= (and d!1632678 c!869355) b!5064990))

(assert (= (and d!1632678 (not c!869355)) b!5064991))

(assert (= (and d!1632678 res!2156660) b!5064992))

(assert (= (and b!5064992 res!2156661) b!5064993))

(declare-fun m!6106146 () Bool)

(assert (=> d!1632678 m!6106146))

(assert (=> d!1632678 m!6103364))

(assert (=> d!1632678 m!6104022))

(assert (=> d!1632678 m!6103442))

(assert (=> d!1632678 m!6104104))

(assert (=> b!5064991 m!6103442))

(declare-fun m!6106148 () Bool)

(assert (=> b!5064991 m!6106148))

(declare-fun m!6106150 () Bool)

(assert (=> b!5064992 m!6106150))

(assert (=> b!5064992 m!6103364))

(assert (=> b!5064992 m!6104034))

(assert (=> b!5064992 m!6103442))

(assert (=> b!5064992 m!6104110))

(assert (=> b!5063748 d!1632678))

(assert (=> b!5063748 d!1631814))

(assert (=> b!5063748 d!1631882))

(assert (=> b!5063748 d!1631898))

(declare-fun bm!352837 () Bool)

(declare-fun call!352845 () List!58556)

(declare-fun call!352843 () List!58556)

(assert (=> bm!352837 (= call!352845 (++!12784 call!352843 (list!18985 (right!43143 ys!41))))))

(declare-fun d!1632680 () Bool)

(declare-fun e!3160966 () Bool)

(assert (=> d!1632680 e!3160966))

(declare-fun c!869356 () Bool)

(assert (=> d!1632680 (= c!869356 ((_ is Nil!58432) (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 (left!42813 (left!42813 ys!41))))))))

(assert (=> d!1632680 (= (appendAssoc!300 (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 (left!42813 (left!42813 ys!41)))) (list!18985 (right!43143 (left!42813 ys!41))) (list!18985 (right!43143 ys!41))) true)))

(declare-fun call!352844 () List!58556)

(declare-fun bm!352838 () Bool)

(declare-fun call!352842 () List!58556)

(assert (=> bm!352838 (= call!352842 (++!12784 (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 (left!42813 (left!42813 ys!41)))) call!352844))))

(declare-fun bm!352839 () Bool)

(assert (=> bm!352839 (= call!352844 (++!12784 (list!18985 (right!43143 (left!42813 ys!41))) (list!18985 (right!43143 ys!41))))))

(declare-fun b!5064994 () Bool)

(assert (=> b!5064994 (= e!3160966 (= call!352845 call!352842))))

(declare-fun lt!2088694 () Bool)

(assert (=> b!5064994 (= lt!2088694 (appendAssoc!300 (t!371279 (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 (left!42813 (left!42813 ys!41))))) (list!18985 (right!43143 (left!42813 ys!41))) (list!18985 (right!43143 ys!41))))))

(declare-fun bm!352840 () Bool)

(assert (=> bm!352840 (= call!352843 (++!12784 (++!12784 (list!18985 (right!43143 (right!43143 xs!286))) (list!18985 (left!42813 (left!42813 ys!41)))) (list!18985 (right!43143 (left!42813 ys!41)))))))

(declare-fun b!5064995 () Bool)

(assert (=> b!5064995 (= e!3160966 (= call!352845 call!352842))))

(assert (= (and d!1632680 c!869356) b!5064995))

(assert (= (and d!1632680 (not c!869356)) b!5064994))

(assert (= (or b!5064995 b!5064994) bm!352840))

(assert (= (or b!5064995 b!5064994) bm!352839))

(assert (= (or b!5064995 b!5064994) bm!352838))

(assert (= (or b!5064995 b!5064994) bm!352837))

(assert (=> bm!352838 m!6103640))

(declare-fun m!6106152 () Bool)

(assert (=> bm!352838 m!6106152))

(assert (=> bm!352840 m!6103640))

(assert (=> bm!352840 m!6103444))

(declare-fun m!6106154 () Bool)

(assert (=> bm!352840 m!6106154))

(assert (=> b!5064994 m!6103444))

(assert (=> b!5064994 m!6103192))

(declare-fun m!6106156 () Bool)

(assert (=> b!5064994 m!6106156))

(assert (=> bm!352839 m!6103444))

(assert (=> bm!352839 m!6103192))

(assert (=> bm!352839 m!6104090))

(assert (=> bm!352837 m!6103192))

(declare-fun m!6106158 () Bool)

(assert (=> bm!352837 m!6106158))

(assert (=> b!5063748 d!1632680))

(declare-fun d!1632682 () Bool)

(declare-fun e!3160968 () Bool)

(assert (=> d!1632682 e!3160968))

(declare-fun res!2156662 () Bool)

(assert (=> d!1632682 (=> (not res!2156662) (not e!3160968))))

(declare-fun lt!2088695 () List!58556)

(assert (=> d!1632682 (= res!2156662 (= (content!10415 lt!2088695) ((_ map or) (content!10415 (list!18985 xs!286)) (content!10415 call!352780))))))

(declare-fun e!3160967 () List!58556)

(assert (=> d!1632682 (= lt!2088695 e!3160967)))

(declare-fun c!869357 () Bool)

(assert (=> d!1632682 (= c!869357 ((_ is Nil!58432) (list!18985 xs!286)))))

(assert (=> d!1632682 (= (++!12784 (list!18985 xs!286) call!352780) lt!2088695)))

(declare-fun b!5064997 () Bool)

(assert (=> b!5064997 (= e!3160967 (Cons!58432 (h!64880 (list!18985 xs!286)) (++!12784 (t!371279 (list!18985 xs!286)) call!352780)))))

(declare-fun b!5064999 () Bool)

(assert (=> b!5064999 (= e!3160968 (or (not (= call!352780 Nil!58432)) (= lt!2088695 (list!18985 xs!286))))))

(declare-fun b!5064996 () Bool)

(assert (=> b!5064996 (= e!3160967 call!352780)))

(declare-fun b!5064998 () Bool)

(declare-fun res!2156663 () Bool)

(assert (=> b!5064998 (=> (not res!2156663) (not e!3160968))))

(assert (=> b!5064998 (= res!2156663 (= (size!39071 lt!2088695) (+ (size!39071 (list!18985 xs!286)) (size!39071 call!352780))))))

(assert (= (and d!1632682 c!869357) b!5064996))

(assert (= (and d!1632682 (not c!869357)) b!5064997))

(assert (= (and d!1632682 res!2156662) b!5064998))

(assert (= (and b!5064998 res!2156663) b!5064999))

(declare-fun m!6106160 () Bool)

(assert (=> d!1632682 m!6106160))

(assert (=> d!1632682 m!6103080))

(assert (=> d!1632682 m!6103170))

(declare-fun m!6106162 () Bool)

(assert (=> d!1632682 m!6106162))

(declare-fun m!6106164 () Bool)

(assert (=> b!5064997 m!6106164))

(declare-fun m!6106166 () Bool)

(assert (=> b!5064998 m!6106166))

(assert (=> b!5064998 m!6103080))

(assert (=> b!5064998 m!6103178))

(declare-fun m!6106168 () Bool)

(assert (=> b!5064998 m!6106168))

(assert (=> bm!352774 d!1632682))

(declare-fun d!1632684 () Bool)

(declare-fun e!3160970 () Bool)

(assert (=> d!1632684 e!3160970))

(declare-fun res!2156664 () Bool)

(assert (=> d!1632684 (=> (not res!2156664) (not e!3160970))))

(declare-fun lt!2088696 () List!58556)

(assert (=> d!1632684 (= res!2156664 (= (content!10415 lt!2088696) ((_ map or) (content!10415 call!352729) (content!10415 (list!18985 ys!41)))))))

(declare-fun e!3160969 () List!58556)

(assert (=> d!1632684 (= lt!2088696 e!3160969)))

(declare-fun c!869358 () Bool)

(assert (=> d!1632684 (= c!869358 ((_ is Nil!58432) call!352729))))

(assert (=> d!1632684 (= (++!12784 call!352729 (list!18985 ys!41)) lt!2088696)))

(declare-fun b!5065001 () Bool)

(assert (=> b!5065001 (= e!3160969 (Cons!58432 (h!64880 call!352729) (++!12784 (t!371279 call!352729) (list!18985 ys!41))))))

(declare-fun b!5065003 () Bool)

(assert (=> b!5065003 (= e!3160970 (or (not (= (list!18985 ys!41) Nil!58432)) (= lt!2088696 call!352729)))))

(declare-fun b!5065000 () Bool)

(assert (=> b!5065000 (= e!3160969 (list!18985 ys!41))))

(declare-fun b!5065002 () Bool)

(declare-fun res!2156665 () Bool)

(assert (=> b!5065002 (=> (not res!2156665) (not e!3160970))))

(assert (=> b!5065002 (= res!2156665 (= (size!39071 lt!2088696) (+ (size!39071 call!352729) (size!39071 (list!18985 ys!41)))))))

(assert (= (and d!1632684 c!869358) b!5065000))

(assert (= (and d!1632684 (not c!869358)) b!5065001))

(assert (= (and d!1632684 res!2156664) b!5065002))

(assert (= (and b!5065002 res!2156665) b!5065003))

(declare-fun m!6106170 () Bool)

(assert (=> d!1632684 m!6106170))

(declare-fun m!6106172 () Bool)

(assert (=> d!1632684 m!6106172))

(assert (=> d!1632684 m!6103082))

(assert (=> d!1632684 m!6103172))

(assert (=> b!5065001 m!6103082))

(declare-fun m!6106174 () Bool)

(assert (=> b!5065001 m!6106174))

(declare-fun m!6106176 () Bool)

(assert (=> b!5065002 m!6106176))

(declare-fun m!6106178 () Bool)

(assert (=> b!5065002 m!6106178))

(assert (=> b!5065002 m!6103082))

(assert (=> b!5065002 m!6103180))

(assert (=> bm!352723 d!1632684))

(assert (=> d!1632086 d!1631770))

(assert (=> d!1632086 d!1632476))

(declare-fun d!1632686 () Bool)

(declare-fun e!3160972 () Bool)

(assert (=> d!1632686 e!3160972))

(declare-fun res!2156666 () Bool)

(assert (=> d!1632686 (=> (not res!2156666) (not e!3160972))))

(declare-fun lt!2088697 () List!58556)

(assert (=> d!1632686 (= res!2156666 (= (content!10415 lt!2088697) ((_ map or) (content!10415 (list!18985 (left!42813 (right!43143 (left!42813 ys!41))))) (content!10415 (list!18985 (right!43143 (right!43143 (left!42813 ys!41))))))))))

(declare-fun e!3160971 () List!58556)

(assert (=> d!1632686 (= lt!2088697 e!3160971)))

(declare-fun c!869359 () Bool)

(assert (=> d!1632686 (= c!869359 ((_ is Nil!58432) (list!18985 (left!42813 (right!43143 (left!42813 ys!41))))))))

(assert (=> d!1632686 (= (++!12784 (list!18985 (left!42813 (right!43143 (left!42813 ys!41)))) (list!18985 (right!43143 (right!43143 (left!42813 ys!41))))) lt!2088697)))

(declare-fun b!5065005 () Bool)

(assert (=> b!5065005 (= e!3160971 (Cons!58432 (h!64880 (list!18985 (left!42813 (right!43143 (left!42813 ys!41))))) (++!12784 (t!371279 (list!18985 (left!42813 (right!43143 (left!42813 ys!41))))) (list!18985 (right!43143 (right!43143 (left!42813 ys!41)))))))))

(declare-fun b!5065007 () Bool)

(assert (=> b!5065007 (= e!3160972 (or (not (= (list!18985 (right!43143 (right!43143 (left!42813 ys!41)))) Nil!58432)) (= lt!2088697 (list!18985 (left!42813 (right!43143 (left!42813 ys!41)))))))))

(declare-fun b!5065004 () Bool)

(assert (=> b!5065004 (= e!3160971 (list!18985 (right!43143 (right!43143 (left!42813 ys!41)))))))

(declare-fun b!5065006 () Bool)

(declare-fun res!2156667 () Bool)

(assert (=> b!5065006 (=> (not res!2156667) (not e!3160972))))

(assert (=> b!5065006 (= res!2156667 (= (size!39071 lt!2088697) (+ (size!39071 (list!18985 (left!42813 (right!43143 (left!42813 ys!41))))) (size!39071 (list!18985 (right!43143 (right!43143 (left!42813 ys!41))))))))))

(assert (= (and d!1632686 c!869359) b!5065004))

(assert (= (and d!1632686 (not c!869359)) b!5065005))

(assert (= (and d!1632686 res!2156666) b!5065006))

(assert (= (and b!5065006 res!2156667) b!5065007))

(declare-fun m!6106180 () Bool)

(assert (=> d!1632686 m!6106180))

(assert (=> d!1632686 m!6104062))

(declare-fun m!6106182 () Bool)

(assert (=> d!1632686 m!6106182))

(assert (=> d!1632686 m!6104064))

(declare-fun m!6106184 () Bool)

(assert (=> d!1632686 m!6106184))

(assert (=> b!5065005 m!6104064))

(declare-fun m!6106186 () Bool)

(assert (=> b!5065005 m!6106186))

(declare-fun m!6106188 () Bool)

(assert (=> b!5065006 m!6106188))

(assert (=> b!5065006 m!6104062))

(declare-fun m!6106190 () Bool)

(assert (=> b!5065006 m!6106190))

(assert (=> b!5065006 m!6104064))

(declare-fun m!6106192 () Bool)

(assert (=> b!5065006 m!6106192))

(assert (=> b!5063972 d!1632686))

(declare-fun d!1632688 () Bool)

(declare-fun c!869360 () Bool)

(assert (=> d!1632688 (= c!869360 ((_ is Empty!15562) (left!42813 (right!43143 (left!42813 ys!41)))))))

(declare-fun e!3160973 () List!58556)

(assert (=> d!1632688 (= (list!18985 (left!42813 (right!43143 (left!42813 ys!41)))) e!3160973)))

(declare-fun b!5065011 () Bool)

(declare-fun e!3160974 () List!58556)

(assert (=> b!5065011 (= e!3160974 (++!12784 (list!18985 (left!42813 (left!42813 (right!43143 (left!42813 ys!41))))) (list!18985 (right!43143 (left!42813 (right!43143 (left!42813 ys!41)))))))))

(declare-fun b!5065008 () Bool)

(assert (=> b!5065008 (= e!3160973 Nil!58432)))

(declare-fun b!5065010 () Bool)

(assert (=> b!5065010 (= e!3160974 (list!18986 (xs!18906 (left!42813 (right!43143 (left!42813 ys!41))))))))

(declare-fun b!5065009 () Bool)

(assert (=> b!5065009 (= e!3160973 e!3160974)))

(declare-fun c!869361 () Bool)

(assert (=> b!5065009 (= c!869361 ((_ is Leaf!25848) (left!42813 (right!43143 (left!42813 ys!41)))))))

(assert (= (and d!1632688 c!869360) b!5065008))

(assert (= (and d!1632688 (not c!869360)) b!5065009))

(assert (= (and b!5065009 c!869361) b!5065010))

(assert (= (and b!5065009 (not c!869361)) b!5065011))

(declare-fun m!6106194 () Bool)

(assert (=> b!5065011 m!6106194))

(declare-fun m!6106196 () Bool)

(assert (=> b!5065011 m!6106196))

(assert (=> b!5065011 m!6106194))

(assert (=> b!5065011 m!6106196))

(declare-fun m!6106198 () Bool)

(assert (=> b!5065011 m!6106198))

(declare-fun m!6106200 () Bool)

(assert (=> b!5065010 m!6106200))

(assert (=> b!5063972 d!1632688))

(declare-fun d!1632690 () Bool)

(declare-fun c!869362 () Bool)

(assert (=> d!1632690 (= c!869362 ((_ is Empty!15562) (right!43143 (right!43143 (left!42813 ys!41)))))))

(declare-fun e!3160975 () List!58556)

(assert (=> d!1632690 (= (list!18985 (right!43143 (right!43143 (left!42813 ys!41)))) e!3160975)))

(declare-fun b!5065015 () Bool)

(declare-fun e!3160976 () List!58556)

(assert (=> b!5065015 (= e!3160976 (++!12784 (list!18985 (left!42813 (right!43143 (right!43143 (left!42813 ys!41))))) (list!18985 (right!43143 (right!43143 (right!43143 (left!42813 ys!41)))))))))

(declare-fun b!5065012 () Bool)

(assert (=> b!5065012 (= e!3160975 Nil!58432)))

(declare-fun b!5065014 () Bool)

(assert (=> b!5065014 (= e!3160976 (list!18986 (xs!18906 (right!43143 (right!43143 (left!42813 ys!41))))))))

(declare-fun b!5065013 () Bool)

(assert (=> b!5065013 (= e!3160975 e!3160976)))

(declare-fun c!869363 () Bool)

(assert (=> b!5065013 (= c!869363 ((_ is Leaf!25848) (right!43143 (right!43143 (left!42813 ys!41)))))))

(assert (= (and d!1632690 c!869362) b!5065012))

(assert (= (and d!1632690 (not c!869362)) b!5065013))

(assert (= (and b!5065013 c!869363) b!5065014))

(assert (= (and b!5065013 (not c!869363)) b!5065015))

(declare-fun m!6106202 () Bool)

(assert (=> b!5065015 m!6106202))

(declare-fun m!6106204 () Bool)

(assert (=> b!5065015 m!6106204))

(assert (=> b!5065015 m!6106202))

(assert (=> b!5065015 m!6106204))

(declare-fun m!6106206 () Bool)

(assert (=> b!5065015 m!6106206))

(declare-fun m!6106208 () Bool)

(assert (=> b!5065014 m!6106208))

(assert (=> b!5063972 d!1632690))

(declare-fun d!1632692 () Bool)

(declare-fun e!3160978 () Bool)

(assert (=> d!1632692 e!3160978))

(declare-fun res!2156668 () Bool)

(assert (=> d!1632692 (=> (not res!2156668) (not e!3160978))))

(declare-fun lt!2088698 () List!58556)

(assert (=> d!1632692 (= res!2156668 (= (content!10415 lt!2088698) ((_ map or) (content!10415 (++!12784 (list!18985 xs!286) (list!18985 (left!42813 (left!42813 ys!41))))) (content!10415 (list!18985 (right!43143 (left!42813 ys!41)))))))))

(declare-fun e!3160977 () List!58556)

(assert (=> d!1632692 (= lt!2088698 e!3160977)))

(declare-fun c!869364 () Bool)

(assert (=> d!1632692 (= c!869364 ((_ is Nil!58432) (++!12784 (list!18985 xs!286) (list!18985 (left!42813 (left!42813 ys!41))))))))

(assert (=> d!1632692 (= (++!12784 (++!12784 (list!18985 xs!286) (list!18985 (left!42813 (left!42813 ys!41)))) (list!18985 (right!43143 (left!42813 ys!41)))) lt!2088698)))

(declare-fun b!5065017 () Bool)

(assert (=> b!5065017 (= e!3160977 (Cons!58432 (h!64880 (++!12784 (list!18985 xs!286) (list!18985 (left!42813 (left!42813 ys!41))))) (++!12784 (t!371279 (++!12784 (list!18985 xs!286) (list!18985 (left!42813 (left!42813 ys!41))))) (list!18985 (right!43143 (left!42813 ys!41))))))))

(declare-fun b!5065019 () Bool)

(assert (=> b!5065019 (= e!3160978 (or (not (= (list!18985 (right!43143 (left!42813 ys!41))) Nil!58432)) (= lt!2088698 (++!12784 (list!18985 xs!286) (list!18985 (left!42813 (left!42813 ys!41)))))))))

(declare-fun b!5065016 () Bool)

(assert (=> b!5065016 (= e!3160977 (list!18985 (right!43143 (left!42813 ys!41))))))

(declare-fun b!5065018 () Bool)

(declare-fun res!2156669 () Bool)

(assert (=> b!5065018 (=> (not res!2156669) (not e!3160978))))

(assert (=> b!5065018 (= res!2156669 (= (size!39071 lt!2088698) (+ (size!39071 (++!12784 (list!18985 xs!286) (list!18985 (left!42813 (left!42813 ys!41))))) (size!39071 (list!18985 (right!43143 (left!42813 ys!41)))))))))

(assert (= (and d!1632692 c!869364) b!5065016))

(assert (= (and d!1632692 (not c!869364)) b!5065017))

(assert (= (and d!1632692 res!2156668) b!5065018))

(assert (= (and b!5065018 res!2156669) b!5065019))

(declare-fun m!6106210 () Bool)

(assert (=> d!1632692 m!6106210))

(assert (=> d!1632692 m!6103452))

(assert (=> d!1632692 m!6105342))

(assert (=> d!1632692 m!6103444))

(assert (=> d!1632692 m!6104862))

(assert (=> b!5065017 m!6103444))

(assert (=> b!5065017 m!6104834))

(declare-fun m!6106212 () Bool)

(assert (=> b!5065018 m!6106212))

(assert (=> b!5065018 m!6103452))

(assert (=> b!5065018 m!6105350))

(assert (=> b!5065018 m!6103444))

(assert (=> b!5065018 m!6104870))

(assert (=> bm!352748 d!1632692))

(declare-fun d!1632694 () Bool)

(assert (=> d!1632694 (= (height!2139 (ite c!869024 (left!42813 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (right!43143 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))) (ite ((_ is Empty!15562) (ite c!869024 (left!42813 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (right!43143 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))) 0 (ite ((_ is Leaf!25848) (ite c!869024 (left!42813 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (right!43143 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))) 1 (cheight!15773 (ite c!869024 (left!42813 (ite c!868975 (ite c!868978 (right!43143 (right!43143 (right!43143 xs!286))) (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) (right!43143 (right!43143 xs!286)))) (right!43143 (ite c!868975 ys!41 (ite c!868977 (left!42813 ys!41) (left!42813 (left!42813 ys!41))))))))))))

(assert (=> bm!352706 d!1632694))

(declare-fun d!1632696 () Bool)

(declare-fun c!869365 () Bool)

(assert (=> d!1632696 (= c!869365 ((_ is Nil!58432) (t!371279 lt!2088448)))))

(declare-fun e!3160979 () (InoxSet T!105104))

(assert (=> d!1632696 (= (content!10415 (t!371279 lt!2088448)) e!3160979)))

(declare-fun b!5065020 () Bool)

(assert (=> b!5065020 (= e!3160979 ((as const (Array T!105104 Bool)) false))))

(declare-fun b!5065021 () Bool)

(assert (=> b!5065021 (= e!3160979 ((_ map or) (store ((as const (Array T!105104 Bool)) false) (h!64880 (t!371279 lt!2088448)) true) (content!10415 (t!371279 (t!371279 lt!2088448)))))))

(assert (= (and d!1632696 c!869365) b!5065020))

(assert (= (and d!1632696 (not c!869365)) b!5065021))

(declare-fun m!6106214 () Bool)

(assert (=> b!5065021 m!6106214))

(declare-fun m!6106216 () Bool)

(assert (=> b!5065021 m!6106216))

(assert (=> b!5064126 d!1632696))

(declare-fun d!1632698 () Bool)

(assert (=> d!1632698 (= (isEmpty!31628 (list!18985 (left!42813 lt!2088442))) ((_ is Nil!58432) (list!18985 (left!42813 lt!2088442))))))

(assert (=> d!1631852 d!1632698))

(assert (=> d!1631852 d!1631820))

(declare-fun d!1632700 () Bool)

(declare-fun lt!2088699 () Int)

(assert (=> d!1632700 (= lt!2088699 (size!39071 (list!18985 (left!42813 lt!2088442))))))

(assert (=> d!1632700 (= lt!2088699 (ite ((_ is Empty!15562) (left!42813 lt!2088442)) 0 (ite ((_ is Leaf!25848) (left!42813 lt!2088442)) (csize!31355 (left!42813 lt!2088442)) (csize!31354 (left!42813 lt!2088442)))))))

(assert (=> d!1632700 (= (size!39073 (left!42813 lt!2088442)) lt!2088699)))

(declare-fun bs!1189843 () Bool)

(assert (= bs!1189843 d!1632700))

(assert (=> bs!1189843 m!6103160))

(assert (=> bs!1189843 m!6103160))

(assert (=> bs!1189843 m!6103892))

(assert (=> d!1631852 d!1632700))

(declare-fun d!1632702 () Bool)

(declare-fun c!869366 () Bool)

(assert (=> d!1632702 (= c!869366 ((_ is Node!15562) (left!42813 (left!42813 (right!43143 ys!41)))))))

(declare-fun e!3160980 () Bool)

(assert (=> d!1632702 (= (inv!77544 (left!42813 (left!42813 (right!43143 ys!41)))) e!3160980)))

(declare-fun b!5065022 () Bool)

(assert (=> b!5065022 (= e!3160980 (inv!77548 (left!42813 (left!42813 (right!43143 ys!41)))))))

(declare-fun b!5065023 () Bool)

(declare-fun e!3160981 () Bool)

(assert (=> b!5065023 (= e!3160980 e!3160981)))

(declare-fun res!2156670 () Bool)

(assert (=> b!5065023 (= res!2156670 (not ((_ is Leaf!25848) (left!42813 (left!42813 (right!43143 ys!41))))))))

(assert (=> b!5065023 (=> res!2156670 e!3160981)))

(declare-fun b!5065024 () Bool)

(assert (=> b!5065024 (= e!3160981 (inv!77549 (left!42813 (left!42813 (right!43143 ys!41)))))))

(assert (= (and d!1632702 c!869366) b!5065022))

(assert (= (and d!1632702 (not c!869366)) b!5065023))

(assert (= (and b!5065023 (not res!2156670)) b!5065024))

(declare-fun m!6106218 () Bool)

(assert (=> b!5065022 m!6106218))

(declare-fun m!6106220 () Bool)

(assert (=> b!5065024 m!6106220))

(assert (=> b!5064304 d!1632702))

(declare-fun d!1632704 () Bool)

(declare-fun c!869367 () Bool)

(assert (=> d!1632704 (= c!869367 ((_ is Node!15562) (right!43143 (left!42813 (right!43143 ys!41)))))))

(declare-fun e!3160982 () Bool)

(assert (=> d!1632704 (= (inv!77544 (right!43143 (left!42813 (right!43143 ys!41)))) e!3160982)))

(declare-fun b!5065025 () Bool)

(assert (=> b!5065025 (= e!3160982 (inv!77548 (right!43143 (left!42813 (right!43143 ys!41)))))))

(declare-fun b!5065026 () Bool)

(declare-fun e!3160983 () Bool)

(assert (=> b!5065026 (= e!3160982 e!3160983)))

(declare-fun res!2156671 () Bool)

(assert (=> b!5065026 (= res!2156671 (not ((_ is Leaf!25848) (right!43143 (left!42813 (right!43143 ys!41))))))))

(assert (=> b!5065026 (=> res!2156671 e!3160983)))

(declare-fun b!5065027 () Bool)

(assert (=> b!5065027 (= e!3160983 (inv!77549 (right!43143 (left!42813 (right!43143 ys!41)))))))

(assert (= (and d!1632704 c!869367) b!5065025))

(assert (= (and d!1632704 (not c!869367)) b!5065026))

(assert (= (and b!5065026 (not res!2156671)) b!5065027))

(declare-fun m!6106222 () Bool)

(assert (=> b!5065025 m!6106222))

(declare-fun m!6106224 () Bool)

(assert (=> b!5065027 m!6106224))

(assert (=> b!5064304 d!1632704))

(declare-fun b!5065028 () Bool)

(declare-fun e!3160984 () Bool)

(declare-fun tp!1414570 () Bool)

(assert (=> b!5065028 (= e!3160984 (and tp_is_empty!37047 tp!1414570))))

(assert (=> b!5064311 (= tp!1414555 e!3160984)))

(assert (= (and b!5064311 ((_ is Cons!58432) (t!371279 (innerList!15650 (xs!18906 (left!42813 ys!41)))))) b!5065028))

(declare-fun tp!1414573 () Bool)

(declare-fun e!3160985 () Bool)

(declare-fun tp!1414571 () Bool)

(declare-fun b!5065029 () Bool)

(assert (=> b!5065029 (= e!3160985 (and (inv!77544 (left!42813 (left!42813 (right!43143 (left!42813 xs!286))))) tp!1414573 (inv!77544 (right!43143 (left!42813 (right!43143 (left!42813 xs!286))))) tp!1414571))))

(declare-fun b!5065031 () Bool)

(declare-fun e!3160986 () Bool)

(declare-fun tp!1414572 () Bool)

(assert (=> b!5065031 (= e!3160986 tp!1414572)))

(declare-fun b!5065030 () Bool)

(assert (=> b!5065030 (= e!3160985 (and (inv!77545 (xs!18906 (left!42813 (right!43143 (left!42813 xs!286))))) e!3160986))))

(assert (=> b!5064301 (= tp!1414547 (and (inv!77544 (left!42813 (right!43143 (left!42813 xs!286)))) e!3160985))))

(assert (= (and b!5064301 ((_ is Node!15562) (left!42813 (right!43143 (left!42813 xs!286))))) b!5065029))

(assert (= b!5065030 b!5065031))

(assert (= (and b!5064301 ((_ is Leaf!25848) (left!42813 (right!43143 (left!42813 xs!286))))) b!5065030))

(declare-fun m!6106226 () Bool)

(assert (=> b!5065029 m!6106226))

(declare-fun m!6106228 () Bool)

(assert (=> b!5065029 m!6106228))

(declare-fun m!6106230 () Bool)

(assert (=> b!5065030 m!6106230))

(assert (=> b!5064301 m!6104684))

(declare-fun e!3160987 () Bool)

(declare-fun tp!1414574 () Bool)

(declare-fun b!5065032 () Bool)

(declare-fun tp!1414576 () Bool)

(assert (=> b!5065032 (= e!3160987 (and (inv!77544 (left!42813 (right!43143 (right!43143 (left!42813 xs!286))))) tp!1414576 (inv!77544 (right!43143 (right!43143 (right!43143 (left!42813 xs!286))))) tp!1414574))))

(declare-fun b!5065034 () Bool)

(declare-fun e!3160988 () Bool)

(declare-fun tp!1414575 () Bool)

(assert (=> b!5065034 (= e!3160988 tp!1414575)))

(declare-fun b!5065033 () Bool)

(assert (=> b!5065033 (= e!3160987 (and (inv!77545 (xs!18906 (right!43143 (right!43143 (left!42813 xs!286))))) e!3160988))))

(assert (=> b!5064301 (= tp!1414545 (and (inv!77544 (right!43143 (right!43143 (left!42813 xs!286)))) e!3160987))))

(assert (= (and b!5064301 ((_ is Node!15562) (right!43143 (right!43143 (left!42813 xs!286))))) b!5065032))

(assert (= b!5065033 b!5065034))

(assert (= (and b!5064301 ((_ is Leaf!25848) (right!43143 (right!43143 (left!42813 xs!286))))) b!5065033))

(declare-fun m!6106232 () Bool)

(assert (=> b!5065032 m!6106232))

(declare-fun m!6106234 () Bool)

(assert (=> b!5065032 m!6106234))

(declare-fun m!6106236 () Bool)

(assert (=> b!5065033 m!6106236))

(assert (=> b!5064301 m!6104686))

(declare-fun b!5065035 () Bool)

(declare-fun e!3160989 () Bool)

(declare-fun tp!1414577 () Bool)

(assert (=> b!5065035 (= e!3160989 (and tp_is_empty!37047 tp!1414577))))

(assert (=> b!5064317 (= tp!1414560 e!3160989)))

(assert (= (and b!5064317 ((_ is Cons!58432) (innerList!15650 (xs!18906 (right!43143 (left!42813 ys!41)))))) b!5065035))

(declare-fun b!5065036 () Bool)

(declare-fun e!3160990 () Bool)

(declare-fun tp!1414578 () Bool)

(assert (=> b!5065036 (= e!3160990 (and tp_is_empty!37047 tp!1414578))))

(assert (=> b!5064297 (= tp!1414541 e!3160990)))

(assert (= (and b!5064297 ((_ is Cons!58432) (t!371279 (innerList!15650 (xs!18906 (right!43143 xs!286)))))) b!5065036))

(declare-fun tp!1414581 () Bool)

(declare-fun tp!1414579 () Bool)

(declare-fun b!5065037 () Bool)

(declare-fun e!3160991 () Bool)

(assert (=> b!5065037 (= e!3160991 (and (inv!77544 (left!42813 (left!42813 (right!43143 (right!43143 xs!286))))) tp!1414581 (inv!77544 (right!43143 (left!42813 (right!43143 (right!43143 xs!286))))) tp!1414579))))

(declare-fun b!5065039 () Bool)

(declare-fun e!3160992 () Bool)

(declare-fun tp!1414580 () Bool)

(assert (=> b!5065039 (= e!3160992 tp!1414580)))

(declare-fun b!5065038 () Bool)

(assert (=> b!5065038 (= e!3160991 (and (inv!77545 (xs!18906 (left!42813 (right!43143 (right!43143 xs!286))))) e!3160992))))

(assert (=> b!5064322 (= tp!1414568 (and (inv!77544 (left!42813 (right!43143 (right!43143 xs!286)))) e!3160991))))

(assert (= (and b!5064322 ((_ is Node!15562) (left!42813 (right!43143 (right!43143 xs!286))))) b!5065037))

(assert (= b!5065038 b!5065039))

(assert (= (and b!5064322 ((_ is Leaf!25848) (left!42813 (right!43143 (right!43143 xs!286))))) b!5065038))

(declare-fun m!6106238 () Bool)

(assert (=> b!5065037 m!6106238))

(declare-fun m!6106240 () Bool)

(assert (=> b!5065037 m!6106240))

(declare-fun m!6106242 () Bool)

(assert (=> b!5065038 m!6106242))

(assert (=> b!5064322 m!6104720))

(declare-fun tp!1414584 () Bool)

(declare-fun tp!1414582 () Bool)

(declare-fun b!5065040 () Bool)

(declare-fun e!3160993 () Bool)

(assert (=> b!5065040 (= e!3160993 (and (inv!77544 (left!42813 (right!43143 (right!43143 (right!43143 xs!286))))) tp!1414584 (inv!77544 (right!43143 (right!43143 (right!43143 (right!43143 xs!286))))) tp!1414582))))

(declare-fun b!5065042 () Bool)

(declare-fun e!3160994 () Bool)

(declare-fun tp!1414583 () Bool)

(assert (=> b!5065042 (= e!3160994 tp!1414583)))

(declare-fun b!5065041 () Bool)

(assert (=> b!5065041 (= e!3160993 (and (inv!77545 (xs!18906 (right!43143 (right!43143 (right!43143 xs!286))))) e!3160994))))

(assert (=> b!5064322 (= tp!1414566 (and (inv!77544 (right!43143 (right!43143 (right!43143 xs!286)))) e!3160993))))

(assert (= (and b!5064322 ((_ is Node!15562) (right!43143 (right!43143 (right!43143 xs!286))))) b!5065040))

(assert (= b!5065041 b!5065042))

(assert (= (and b!5064322 ((_ is Leaf!25848) (right!43143 (right!43143 (right!43143 xs!286))))) b!5065041))

(declare-fun m!6106244 () Bool)

(assert (=> b!5065040 m!6106244))

(declare-fun m!6106246 () Bool)

(assert (=> b!5065040 m!6106246))

(declare-fun m!6106248 () Bool)

(assert (=> b!5065041 m!6106248))

(assert (=> b!5064322 m!6104722))

(declare-fun b!5065043 () Bool)

(declare-fun e!3160995 () Bool)

(declare-fun tp!1414585 () Bool)

(assert (=> b!5065043 (= e!3160995 (and tp_is_empty!37047 tp!1414585))))

(assert (=> b!5064314 (= tp!1414557 e!3160995)))

(assert (= (and b!5064314 ((_ is Cons!58432) (innerList!15650 (xs!18906 (left!42813 (left!42813 ys!41)))))) b!5065043))

(declare-fun b!5065044 () Bool)

(declare-fun tp!1414586 () Bool)

(declare-fun e!3160996 () Bool)

(declare-fun tp!1414588 () Bool)

(assert (=> b!5065044 (= e!3160996 (and (inv!77544 (left!42813 (left!42813 (left!42813 (left!42813 xs!286))))) tp!1414588 (inv!77544 (right!43143 (left!42813 (left!42813 (left!42813 xs!286))))) tp!1414586))))

(declare-fun b!5065046 () Bool)

(declare-fun e!3160997 () Bool)

(declare-fun tp!1414587 () Bool)

(assert (=> b!5065046 (= e!3160997 tp!1414587)))

(declare-fun b!5065045 () Bool)

(assert (=> b!5065045 (= e!3160996 (and (inv!77545 (xs!18906 (left!42813 (left!42813 (left!42813 xs!286))))) e!3160997))))

(assert (=> b!5064298 (= tp!1414544 (and (inv!77544 (left!42813 (left!42813 (left!42813 xs!286)))) e!3160996))))

(assert (= (and b!5064298 ((_ is Node!15562) (left!42813 (left!42813 (left!42813 xs!286))))) b!5065044))

(assert (= b!5065045 b!5065046))

(assert (= (and b!5064298 ((_ is Leaf!25848) (left!42813 (left!42813 (left!42813 xs!286))))) b!5065045))

(declare-fun m!6106250 () Bool)

(assert (=> b!5065044 m!6106250))

(declare-fun m!6106252 () Bool)

(assert (=> b!5065044 m!6106252))

(declare-fun m!6106254 () Bool)

(assert (=> b!5065045 m!6106254))

(assert (=> b!5064298 m!6104678))

(declare-fun b!5065047 () Bool)

(declare-fun tp!1414591 () Bool)

(declare-fun e!3160998 () Bool)

(declare-fun tp!1414589 () Bool)

(assert (=> b!5065047 (= e!3160998 (and (inv!77544 (left!42813 (right!43143 (left!42813 (left!42813 xs!286))))) tp!1414591 (inv!77544 (right!43143 (right!43143 (left!42813 (left!42813 xs!286))))) tp!1414589))))

(declare-fun b!5065049 () Bool)

(declare-fun e!3160999 () Bool)

(declare-fun tp!1414590 () Bool)

(assert (=> b!5065049 (= e!3160999 tp!1414590)))

(declare-fun b!5065048 () Bool)

(assert (=> b!5065048 (= e!3160998 (and (inv!77545 (xs!18906 (right!43143 (left!42813 (left!42813 xs!286))))) e!3160999))))

(assert (=> b!5064298 (= tp!1414542 (and (inv!77544 (right!43143 (left!42813 (left!42813 xs!286)))) e!3160998))))

(assert (= (and b!5064298 ((_ is Node!15562) (right!43143 (left!42813 (left!42813 xs!286))))) b!5065047))

(assert (= b!5065048 b!5065049))

(assert (= (and b!5064298 ((_ is Leaf!25848) (right!43143 (left!42813 (left!42813 xs!286))))) b!5065048))

(declare-fun m!6106256 () Bool)

(assert (=> b!5065047 m!6106256))

(declare-fun m!6106258 () Bool)

(assert (=> b!5065047 m!6106258))

(declare-fun m!6106260 () Bool)

(assert (=> b!5065048 m!6106260))

(assert (=> b!5064298 m!6104680))

(declare-fun b!5065050 () Bool)

(declare-fun e!3161000 () Bool)

(declare-fun tp!1414592 () Bool)

(assert (=> b!5065050 (= e!3161000 (and tp_is_empty!37047 tp!1414592))))

(assert (=> b!5064325 (= tp!1414569 e!3161000)))

(assert (= (and b!5064325 ((_ is Cons!58432) (t!371279 (t!371279 (innerList!15650 (xs!18906 ys!41)))))) b!5065050))

(declare-fun b!5065051 () Bool)

(declare-fun e!3161001 () Bool)

(declare-fun tp!1414593 () Bool)

(assert (=> b!5065051 (= e!3161001 (and tp_is_empty!37047 tp!1414593))))

(assert (=> b!5064318 (= tp!1414562 e!3161001)))

(assert (= (and b!5064318 ((_ is Cons!58432) (t!371279 (innerList!15650 (xs!18906 (right!43143 ys!41)))))) b!5065051))

(declare-fun b!5065052 () Bool)

(declare-fun e!3161002 () Bool)

(declare-fun tp!1414594 () Bool)

(assert (=> b!5065052 (= e!3161002 (and tp_is_empty!37047 tp!1414594))))

(assert (=> b!5064296 (= tp!1414540 e!3161002)))

(assert (= (and b!5064296 ((_ is Cons!58432) (t!371279 (innerList!15650 (xs!18906 (left!42813 xs!286)))))) b!5065052))

(declare-fun b!5065053 () Bool)

(declare-fun e!3161003 () Bool)

(declare-fun tp!1414595 () Bool)

(assert (=> b!5065053 (= e!3161003 (and tp_is_empty!37047 tp!1414595))))

(assert (=> b!5064309 (= tp!1414552 e!3161003)))

(assert (= (and b!5064309 ((_ is Cons!58432) (innerList!15650 (xs!18906 (right!43143 (right!43143 ys!41)))))) b!5065053))

(declare-fun tp!1414596 () Bool)

(declare-fun e!3161004 () Bool)

(declare-fun tp!1414598 () Bool)

(declare-fun b!5065054 () Bool)

(assert (=> b!5065054 (= e!3161004 (and (inv!77544 (left!42813 (left!42813 (right!43143 (left!42813 ys!41))))) tp!1414598 (inv!77544 (right!43143 (left!42813 (right!43143 (left!42813 ys!41))))) tp!1414596))))

(declare-fun b!5065056 () Bool)

(declare-fun e!3161005 () Bool)

(declare-fun tp!1414597 () Bool)

(assert (=> b!5065056 (= e!3161005 tp!1414597)))

(declare-fun b!5065055 () Bool)

(assert (=> b!5065055 (= e!3161004 (and (inv!77545 (xs!18906 (left!42813 (right!43143 (left!42813 ys!41))))) e!3161005))))

(assert (=> b!5064315 (= tp!1414561 (and (inv!77544 (left!42813 (right!43143 (left!42813 ys!41)))) e!3161004))))

(assert (= (and b!5064315 ((_ is Node!15562) (left!42813 (right!43143 (left!42813 ys!41))))) b!5065054))

(assert (= b!5065055 b!5065056))

(assert (= (and b!5064315 ((_ is Leaf!25848) (left!42813 (right!43143 (left!42813 ys!41))))) b!5065055))

(declare-fun m!6106262 () Bool)

(assert (=> b!5065054 m!6106262))

(declare-fun m!6106264 () Bool)

(assert (=> b!5065054 m!6106264))

(declare-fun m!6106266 () Bool)

(assert (=> b!5065055 m!6106266))

(assert (=> b!5064315 m!6104708))

(declare-fun tp!1414599 () Bool)

(declare-fun tp!1414601 () Bool)

(declare-fun b!5065057 () Bool)

(declare-fun e!3161006 () Bool)

(assert (=> b!5065057 (= e!3161006 (and (inv!77544 (left!42813 (right!43143 (right!43143 (left!42813 ys!41))))) tp!1414601 (inv!77544 (right!43143 (right!43143 (right!43143 (left!42813 ys!41))))) tp!1414599))))

(declare-fun b!5065059 () Bool)

(declare-fun e!3161007 () Bool)

(declare-fun tp!1414600 () Bool)

(assert (=> b!5065059 (= e!3161007 tp!1414600)))

(declare-fun b!5065058 () Bool)

(assert (=> b!5065058 (= e!3161006 (and (inv!77545 (xs!18906 (right!43143 (right!43143 (left!42813 ys!41))))) e!3161007))))

(assert (=> b!5064315 (= tp!1414559 (and (inv!77544 (right!43143 (right!43143 (left!42813 ys!41)))) e!3161006))))

(assert (= (and b!5064315 ((_ is Node!15562) (right!43143 (right!43143 (left!42813 ys!41))))) b!5065057))

(assert (= b!5065058 b!5065059))

(assert (= (and b!5064315 ((_ is Leaf!25848) (right!43143 (right!43143 (left!42813 ys!41))))) b!5065058))

(declare-fun m!6106268 () Bool)

(assert (=> b!5065057 m!6106268))

(declare-fun m!6106270 () Bool)

(assert (=> b!5065057 m!6106270))

(declare-fun m!6106272 () Bool)

(assert (=> b!5065058 m!6106272))

(assert (=> b!5064315 m!6104710))

(declare-fun b!5065060 () Bool)

(declare-fun e!3161008 () Bool)

(declare-fun tp!1414602 () Bool)

(assert (=> b!5065060 (= e!3161008 (and tp_is_empty!37047 tp!1414602))))

(assert (=> b!5064324 (= tp!1414567 e!3161008)))

(assert (= (and b!5064324 ((_ is Cons!58432) (innerList!15650 (xs!18906 (right!43143 (right!43143 xs!286)))))) b!5065060))

(declare-fun b!5065061 () Bool)

(declare-fun e!3161009 () Bool)

(declare-fun tp!1414603 () Bool)

(assert (=> b!5065061 (= e!3161009 (and tp_is_empty!37047 tp!1414603))))

(assert (=> b!5064300 (= tp!1414543 e!3161009)))

(assert (= (and b!5064300 ((_ is Cons!58432) (innerList!15650 (xs!18906 (left!42813 (left!42813 xs!286)))))) b!5065061))

(declare-fun b!5065062 () Bool)

(declare-fun e!3161010 () Bool)

(declare-fun tp!1414604 () Bool)

(assert (=> b!5065062 (= e!3161010 (and tp_is_empty!37047 tp!1414604))))

(assert (=> b!5064306 (= tp!1414549 e!3161010)))

(assert (= (and b!5064306 ((_ is Cons!58432) (innerList!15650 (xs!18906 (left!42813 (right!43143 ys!41)))))) b!5065062))

(declare-fun tp!1414607 () Bool)

(declare-fun b!5065063 () Bool)

(declare-fun tp!1414605 () Bool)

(declare-fun e!3161011 () Bool)

(assert (=> b!5065063 (= e!3161011 (and (inv!77544 (left!42813 (left!42813 (left!42813 (left!42813 ys!41))))) tp!1414607 (inv!77544 (right!43143 (left!42813 (left!42813 (left!42813 ys!41))))) tp!1414605))))

(declare-fun b!5065065 () Bool)

(declare-fun e!3161012 () Bool)

(declare-fun tp!1414606 () Bool)

(assert (=> b!5065065 (= e!3161012 tp!1414606)))

(declare-fun b!5065064 () Bool)

(assert (=> b!5065064 (= e!3161011 (and (inv!77545 (xs!18906 (left!42813 (left!42813 (left!42813 ys!41))))) e!3161012))))

(assert (=> b!5064312 (= tp!1414558 (and (inv!77544 (left!42813 (left!42813 (left!42813 ys!41)))) e!3161011))))

(assert (= (and b!5064312 ((_ is Node!15562) (left!42813 (left!42813 (left!42813 ys!41))))) b!5065063))

(assert (= b!5065064 b!5065065))

(assert (= (and b!5064312 ((_ is Leaf!25848) (left!42813 (left!42813 (left!42813 ys!41))))) b!5065064))

(declare-fun m!6106274 () Bool)

(assert (=> b!5065063 m!6106274))

(declare-fun m!6106276 () Bool)

(assert (=> b!5065063 m!6106276))

(declare-fun m!6106278 () Bool)

(assert (=> b!5065064 m!6106278))

(assert (=> b!5064312 m!6104702))

(declare-fun tp!1414608 () Bool)

(declare-fun e!3161013 () Bool)

(declare-fun b!5065066 () Bool)

(declare-fun tp!1414610 () Bool)

(assert (=> b!5065066 (= e!3161013 (and (inv!77544 (left!42813 (right!43143 (left!42813 (left!42813 ys!41))))) tp!1414610 (inv!77544 (right!43143 (right!43143 (left!42813 (left!42813 ys!41))))) tp!1414608))))

(declare-fun b!5065068 () Bool)

(declare-fun e!3161014 () Bool)

(declare-fun tp!1414609 () Bool)

(assert (=> b!5065068 (= e!3161014 tp!1414609)))

(declare-fun b!5065067 () Bool)

(assert (=> b!5065067 (= e!3161013 (and (inv!77545 (xs!18906 (right!43143 (left!42813 (left!42813 ys!41))))) e!3161014))))

(assert (=> b!5064312 (= tp!1414556 (and (inv!77544 (right!43143 (left!42813 (left!42813 ys!41)))) e!3161013))))

(assert (= (and b!5064312 ((_ is Node!15562) (right!43143 (left!42813 (left!42813 ys!41))))) b!5065066))

(assert (= b!5065067 b!5065068))

(assert (= (and b!5064312 ((_ is Leaf!25848) (right!43143 (left!42813 (left!42813 ys!41))))) b!5065067))

(declare-fun m!6106280 () Bool)

(assert (=> b!5065066 m!6106280))

(declare-fun m!6106282 () Bool)

(assert (=> b!5065066 m!6106282))

(declare-fun m!6106284 () Bool)

(assert (=> b!5065067 m!6106284))

(assert (=> b!5064312 m!6104704))

(declare-fun b!5065069 () Bool)

(declare-fun e!3161015 () Bool)

(declare-fun tp!1414611 () Bool)

(assert (=> b!5065069 (= e!3161015 (and tp_is_empty!37047 tp!1414611))))

(assert (=> b!5064321 (= tp!1414564 e!3161015)))

(assert (= (and b!5064321 ((_ is Cons!58432) (innerList!15650 (xs!18906 (left!42813 (right!43143 xs!286)))))) b!5065069))

(declare-fun b!5065070 () Bool)

(declare-fun e!3161016 () Bool)

(declare-fun tp!1414612 () Bool)

(assert (=> b!5065070 (= e!3161016 (and tp_is_empty!37047 tp!1414612))))

(assert (=> b!5064310 (= tp!1414554 e!3161016)))

(assert (= (and b!5064310 ((_ is Cons!58432) (t!371279 (t!371279 (innerList!15650 (xs!18906 xs!286)))))) b!5065070))

(declare-fun tp!1414613 () Bool)

(declare-fun e!3161017 () Bool)

(declare-fun tp!1414615 () Bool)

(declare-fun b!5065071 () Bool)

(assert (=> b!5065071 (= e!3161017 (and (inv!77544 (left!42813 (left!42813 (right!43143 (right!43143 ys!41))))) tp!1414615 (inv!77544 (right!43143 (left!42813 (right!43143 (right!43143 ys!41))))) tp!1414613))))

(declare-fun b!5065073 () Bool)

(declare-fun e!3161018 () Bool)

(declare-fun tp!1414614 () Bool)

(assert (=> b!5065073 (= e!3161018 tp!1414614)))

(declare-fun b!5065072 () Bool)

(assert (=> b!5065072 (= e!3161017 (and (inv!77545 (xs!18906 (left!42813 (right!43143 (right!43143 ys!41))))) e!3161018))))

(assert (=> b!5064307 (= tp!1414553 (and (inv!77544 (left!42813 (right!43143 (right!43143 ys!41)))) e!3161017))))

(assert (= (and b!5064307 ((_ is Node!15562) (left!42813 (right!43143 (right!43143 ys!41))))) b!5065071))

(assert (= b!5065072 b!5065073))

(assert (= (and b!5064307 ((_ is Leaf!25848) (left!42813 (right!43143 (right!43143 ys!41))))) b!5065072))

(declare-fun m!6106286 () Bool)

(assert (=> b!5065071 m!6106286))

(declare-fun m!6106288 () Bool)

(assert (=> b!5065071 m!6106288))

(declare-fun m!6106290 () Bool)

(assert (=> b!5065072 m!6106290))

(assert (=> b!5064307 m!6104696))

(declare-fun e!3161019 () Bool)

(declare-fun tp!1414618 () Bool)

(declare-fun tp!1414616 () Bool)

(declare-fun b!5065074 () Bool)

(assert (=> b!5065074 (= e!3161019 (and (inv!77544 (left!42813 (right!43143 (right!43143 (right!43143 ys!41))))) tp!1414618 (inv!77544 (right!43143 (right!43143 (right!43143 (right!43143 ys!41))))) tp!1414616))))

(declare-fun b!5065076 () Bool)

(declare-fun e!3161020 () Bool)

(declare-fun tp!1414617 () Bool)

(assert (=> b!5065076 (= e!3161020 tp!1414617)))

(declare-fun b!5065075 () Bool)

(assert (=> b!5065075 (= e!3161019 (and (inv!77545 (xs!18906 (right!43143 (right!43143 (right!43143 ys!41))))) e!3161020))))

(assert (=> b!5064307 (= tp!1414551 (and (inv!77544 (right!43143 (right!43143 (right!43143 ys!41)))) e!3161019))))

(assert (= (and b!5064307 ((_ is Node!15562) (right!43143 (right!43143 (right!43143 ys!41))))) b!5065074))

(assert (= b!5065075 b!5065076))

(assert (= (and b!5064307 ((_ is Leaf!25848) (right!43143 (right!43143 (right!43143 ys!41))))) b!5065075))

(declare-fun m!6106292 () Bool)

(assert (=> b!5065074 m!6106292))

(declare-fun m!6106294 () Bool)

(assert (=> b!5065074 m!6106294))

(declare-fun m!6106296 () Bool)

(assert (=> b!5065075 m!6106296))

(assert (=> b!5064307 m!6104698))

(declare-fun b!5065077 () Bool)

(declare-fun e!3161021 () Bool)

(declare-fun tp!1414619 () Bool)

(assert (=> b!5065077 (= e!3161021 (and tp_is_empty!37047 tp!1414619))))

(assert (=> b!5064303 (= tp!1414546 e!3161021)))

(assert (= (and b!5064303 ((_ is Cons!58432) (innerList!15650 (xs!18906 (right!43143 (left!42813 xs!286)))))) b!5065077))

(declare-fun e!3161022 () Bool)

(declare-fun tp!1414620 () Bool)

(declare-fun tp!1414622 () Bool)

(declare-fun b!5065078 () Bool)

(assert (=> b!5065078 (= e!3161022 (and (inv!77544 (left!42813 (left!42813 (left!42813 (right!43143 ys!41))))) tp!1414622 (inv!77544 (right!43143 (left!42813 (left!42813 (right!43143 ys!41))))) tp!1414620))))

(declare-fun b!5065080 () Bool)

(declare-fun e!3161023 () Bool)

(declare-fun tp!1414621 () Bool)

(assert (=> b!5065080 (= e!3161023 tp!1414621)))

(declare-fun b!5065079 () Bool)

(assert (=> b!5065079 (= e!3161022 (and (inv!77545 (xs!18906 (left!42813 (left!42813 (right!43143 ys!41))))) e!3161023))))

(assert (=> b!5064304 (= tp!1414550 (and (inv!77544 (left!42813 (left!42813 (right!43143 ys!41)))) e!3161022))))

(assert (= (and b!5064304 ((_ is Node!15562) (left!42813 (left!42813 (right!43143 ys!41))))) b!5065078))

(assert (= b!5065079 b!5065080))

(assert (= (and b!5064304 ((_ is Leaf!25848) (left!42813 (left!42813 (right!43143 ys!41))))) b!5065079))

(declare-fun m!6106298 () Bool)

(assert (=> b!5065078 m!6106298))

(declare-fun m!6106300 () Bool)

(assert (=> b!5065078 m!6106300))

(declare-fun m!6106302 () Bool)

(assert (=> b!5065079 m!6106302))

(assert (=> b!5064304 m!6104690))

(declare-fun tp!1414623 () Bool)

(declare-fun b!5065081 () Bool)

(declare-fun tp!1414625 () Bool)

(declare-fun e!3161024 () Bool)

(assert (=> b!5065081 (= e!3161024 (and (inv!77544 (left!42813 (right!43143 (left!42813 (right!43143 ys!41))))) tp!1414625 (inv!77544 (right!43143 (right!43143 (left!42813 (right!43143 ys!41))))) tp!1414623))))

(declare-fun b!5065083 () Bool)

(declare-fun e!3161025 () Bool)

(declare-fun tp!1414624 () Bool)

(assert (=> b!5065083 (= e!3161025 tp!1414624)))

(declare-fun b!5065082 () Bool)

(assert (=> b!5065082 (= e!3161024 (and (inv!77545 (xs!18906 (right!43143 (left!42813 (right!43143 ys!41))))) e!3161025))))

(assert (=> b!5064304 (= tp!1414548 (and (inv!77544 (right!43143 (left!42813 (right!43143 ys!41)))) e!3161024))))

(assert (= (and b!5064304 ((_ is Node!15562) (right!43143 (left!42813 (right!43143 ys!41))))) b!5065081))

(assert (= b!5065082 b!5065083))

(assert (= (and b!5064304 ((_ is Leaf!25848) (right!43143 (left!42813 (right!43143 ys!41))))) b!5065082))

(declare-fun m!6106304 () Bool)

(assert (=> b!5065081 m!6106304))

(declare-fun m!6106306 () Bool)

(assert (=> b!5065081 m!6106306))

(declare-fun m!6106308 () Bool)

(assert (=> b!5065082 m!6106308))

(assert (=> b!5064304 m!6104692))

(declare-fun b!5065084 () Bool)

(declare-fun e!3161026 () Bool)

(declare-fun tp!1414628 () Bool)

(declare-fun tp!1414626 () Bool)

(assert (=> b!5065084 (= e!3161026 (and (inv!77544 (left!42813 (left!42813 (left!42813 (right!43143 xs!286))))) tp!1414628 (inv!77544 (right!43143 (left!42813 (left!42813 (right!43143 xs!286))))) tp!1414626))))

(declare-fun b!5065086 () Bool)

(declare-fun e!3161027 () Bool)

(declare-fun tp!1414627 () Bool)

(assert (=> b!5065086 (= e!3161027 tp!1414627)))

(declare-fun b!5065085 () Bool)

(assert (=> b!5065085 (= e!3161026 (and (inv!77545 (xs!18906 (left!42813 (left!42813 (right!43143 xs!286))))) e!3161027))))

(assert (=> b!5064319 (= tp!1414565 (and (inv!77544 (left!42813 (left!42813 (right!43143 xs!286)))) e!3161026))))

(assert (= (and b!5064319 ((_ is Node!15562) (left!42813 (left!42813 (right!43143 xs!286))))) b!5065084))

(assert (= b!5065085 b!5065086))

(assert (= (and b!5064319 ((_ is Leaf!25848) (left!42813 (left!42813 (right!43143 xs!286))))) b!5065085))

(declare-fun m!6106310 () Bool)

(assert (=> b!5065084 m!6106310))

(declare-fun m!6106312 () Bool)

(assert (=> b!5065084 m!6106312))

(declare-fun m!6106314 () Bool)

(assert (=> b!5065085 m!6106314))

(assert (=> b!5064319 m!6104714))

(declare-fun b!5065087 () Bool)

(declare-fun e!3161028 () Bool)

(declare-fun tp!1414629 () Bool)

(declare-fun tp!1414631 () Bool)

(assert (=> b!5065087 (= e!3161028 (and (inv!77544 (left!42813 (right!43143 (left!42813 (right!43143 xs!286))))) tp!1414631 (inv!77544 (right!43143 (right!43143 (left!42813 (right!43143 xs!286))))) tp!1414629))))

(declare-fun b!5065089 () Bool)

(declare-fun e!3161029 () Bool)

(declare-fun tp!1414630 () Bool)

(assert (=> b!5065089 (= e!3161029 tp!1414630)))

(declare-fun b!5065088 () Bool)

(assert (=> b!5065088 (= e!3161028 (and (inv!77545 (xs!18906 (right!43143 (left!42813 (right!43143 xs!286))))) e!3161029))))

(assert (=> b!5064319 (= tp!1414563 (and (inv!77544 (right!43143 (left!42813 (right!43143 xs!286)))) e!3161028))))

(assert (= (and b!5064319 ((_ is Node!15562) (right!43143 (left!42813 (right!43143 xs!286))))) b!5065087))

(assert (= b!5065088 b!5065089))

(assert (= (and b!5064319 ((_ is Leaf!25848) (right!43143 (left!42813 (right!43143 xs!286))))) b!5065088))

(declare-fun m!6106316 () Bool)

(assert (=> b!5065087 m!6106316))

(declare-fun m!6106318 () Bool)

(assert (=> b!5065087 m!6106318))

(declare-fun m!6106320 () Bool)

(assert (=> b!5065088 m!6106320))

(assert (=> b!5064319 m!6104716))

(check-sat (not b!5064994) (not b!5064927) (not b!5064609) (not d!1632428) (not b!5064770) (not b!5064645) (not b!5065080) (not b!5065025) (not b!5065059) (not bm!352803) (not b!5064540) (not b!5064538) (not b!5064613) (not b!5064384) (not bm!352831) (not b!5065071) (not b!5064566) (not b!5065049) (not b!5064676) (not bm!352798) (not d!1632136) (not b!5064330) (not b!5064976) (not b!5064426) (not b!5064662) (not b!5064876) (not b!5065001) (not b!5065075) (not d!1632448) (not d!1632382) (not b!5064624) (not d!1632482) (not bm!352818) (not b!5064917) (not b!5064422) (not d!1632442) (not d!1632612) (not b!5065042) (not b!5064386) (not b!5065011) (not b!5064551) (not b!5064768) (not b!5064419) (not b!5064621) (not b!5064501) (not b!5064591) (not b!5064732) (not b!5064497) (not bm!352795) (not b!5064550) (not b!5064452) (not b!5064542) (not bm!352829) (not b!5064854) (not b!5064637) (not bm!352814) (not b!5065031) (not b!5064937) (not b!5064738) (not b!5064670) (not b!5065061) (not b!5064998) (not b!5064941) (not b!5064340) (not bm!352835) (not b!5065085) (not b!5064829) (not bm!352777) (not b!5064847) (not b!5064567) (not b!5064632) (not d!1632228) (not b!5064418) (not b!5064531) (not b!5064930) (not b!5065065) (not b!5064784) (not b!5065070) (not b!5065021) (not b!5065087) (not b!5065069) (not b!5064963) (not d!1632232) (not b!5065036) (not b!5064351) (not d!1632522) (not b!5064777) (not b!5064798) (not b!5064348) (not b!5064425) (not d!1632424) (not b!5065063) (not d!1632352) (not b!5064970) (not bm!352834) (not b!5064402) (not b!5064599) (not b!5064715) (not d!1632172) (not b!5064845) (not b!5064494) (not b!5064625) (not d!1632366) (not b!5064658) (not bm!352791) (not b!5065010) (not bm!352819) (not b!5064666) (not b!5064347) (not b!5064642) (not bm!352830) (not b!5064850) (not b!5064601) (not b!5064357) (not b!5064592) (not b!5065072) (not b!5064369) (not b!5064769) (not bm!352787) (not b!5064771) (not b!5064646) (not b!5064641) (not b!5064889) (not b!5064808) (not d!1632624) (not bm!352806) (not bm!352793) (not bm!352809) (not b!5064378) (not d!1632238) (not b!5064568) (not b!5064443) (not b!5064687) (not b!5064516) (not b!5065067) (not b!5065017) (not b!5064620) (not b!5064476) (not b!5064526) (not b!5064608) (not b!5064434) (not b!5064858) (not b!5065066) (not d!1632650) (not b!5064788) (not bm!352783) (not d!1632604) (not b!5064482) (not b!5065058) (not b!5064865) (not b!5064472) (not b!5064500) (not d!1632340) (not b!5064912) (not d!1632464) (not b!5064468) (not b!5064935) (not b!5064579) (not b!5064629) (not d!1632468) (not b!5064669) (not b!5064589) (not b!5065005) (not bm!352833) (not bm!352782) (not b!5064527) (not b!5064905) (not b!5064792) (not b!5064528) (not bm!352799) (not b!5064588) (not b!5064817) (not b!5064835) (not b!5065032) (not b!5064490) (not b!5064628) (not b!5064823) (not d!1632198) (not b!5064349) (not d!1632166) (not b!5064304) (not b!5064933) (not b!5064312) (not b!5064596) (not b!5064486) (not b!5064344) (not b!5064467) (not b!5064671) (not d!1632582) (not b!5064393) (not b!5064667) (not b!5064423) (not b!5064966) (not b!5065068) (not b!5065034) (not d!1632316) (not b!5065040) (not b!5065037) (not b!5064949) (not b!5064735) (not d!1632446) (not b!5064458) (not b!5064558) (not b!5064653) (not b!5065064) (not b!5064985) (not b!5064866) (not b!5064511) (not b!5064673) (not b!5064586) (not d!1632338) (not b!5064298) (not b!5064439) (not b!5064840) (not b!5064822) (not b!5065044) (not b!5064343) (not b!5064708) (not b!5064499) (not b!5065078) (not b!5064704) (not b!5064442) (not b!5064805) (not d!1632486) (not b!5064733) (not d!1632110) (not b!5065002) (not d!1632616) (not b!5064627) (not b!5064355) (not bm!352820) (not b!5064480) (not b!5064761) (not b!5064952) (not d!1632294) (not b!5065076) (not d!1632648) (not b!5064338) (not d!1632376) (not bm!352838) (not bm!352832) (not b!5064496) (not d!1632620) (not d!1632434) (not b!5064576) (not b!5064364) (not b!5064861) (not b!5064773) (not b!5064504) (not b!5064691) (not d!1632178) (not b!5064968) (not b!5064900) (not b!5064580) (not d!1632182) (not b!5065060) (not b!5064594) (not b!5065006) (not d!1632132) (not d!1632206) (not d!1632540) (not b!5064979) (not b!5064780) (not b!5064414) (not b!5064430) (not b!5065079) (not d!1632314) (not b!5064571) (not b!5064582) (not b!5064618) (not b!5064756) (not b!5064473) (not bm!352826) (not b!5064810) (not d!1632334) (not b!5065073) (not b!5064407) (not b!5064849) (not b!5064813) (not bm!352804) (not d!1632226) (not d!1632372) (not b!5064721) (not b!5064394) (not b!5064573) (not d!1632652) (not b!5064562) (not b!5065089) (not b!5064790) (not b!5064703) (not b!5064957) (not b!5065045) (not bm!352792) (not b!5064757) (not b!5064626) (not b!5064872) (not d!1632196) (not b!5064569) (not b!5064454) (not b!5064975) (not d!1632212) (not b!5064679) (not b!5064546) (not d!1632112) (not b!5064435) (not d!1632290) (not b!5064498) (not b!5064495) (not b!5064973) (not b!5064547) (not b!5064760) (not b!5064652) (not b!5064463) (not b!5065088) (not b!5064506) (not b!5064695) (not b!5064491) (not b!5064515) (not b!5064583) (not d!1632588) (not b!5064800) (not b!5064677) (not bm!352789) (not b!5064563) (not b!5064977) (not b!5064961) (not b!5064381) (not b!5064370) (not b!5064479) (not b!5064980) (not b!5065035) (not b!5064598) (not bm!352839) (not d!1632668) (not b!5064319) (not b!5064689) (not b!5065038) (not b!5064843) (not b!5064719) (not b!5064734) (not d!1632270) tp_is_empty!37047 (not b!5064892) (not d!1632686) (not b!5065046) (not b!5064556) (not b!5064453) (not b!5065083) (not b!5064398) (not b!5064693) (not b!5064593) (not bm!352822) (not bm!352778) (not b!5064485) (not d!1632444) (not b!5064661) (not b!5065055) (not d!1632658) (not b!5064520) (not b!5064564) (not b!5065015) (not d!1632542) (not bm!352788) (not d!1632656) (not b!5064740) (not d!1632554) (not b!5064477) (not b!5064838) (not b!5064503) (not bm!352836) (not b!5064365) (not b!5064926) (not b!5064794) (not b!5064525) (not bm!352794) (not b!5064916) (not b!5064614) (not b!5064333) (not b!5065048) (not b!5064529) (not b!5064781) (not bm!352827) (not b!5064830) (not b!5065052) (not bm!352812) (not b!5064447) (not b!5064971) (not b!5064650) (not d!1632578) (not b!5064604) (not b!5064680) (not b!5064895) (not b!5065053) (not d!1632346) (not b!5064863) (not b!5064675) (not b!5065043) (not b!5064699) (not b!5064634) (not b!5064553) (not b!5064307) (not b!5064444) (not d!1632450) (not b!5064342) (not b!5064329) (not b!5064726) (not d!1632622) (not d!1632120) (not bm!352801) (not b!5064345) (not d!1632562) (not bm!352786) (not b!5064893) (not d!1632500) (not b!5064939) (not b!5064315) (not b!5065018) (not b!5064814) (not bm!352779) (not b!5064606) (not b!5065062) (not b!5064617) (not b!5064406) (not b!5064747) (not b!5064778) (not d!1632260) (not b!5064722) (not b!5064431) (not b!5064956) (not bm!352797) (not b!5064337) (not bm!352785) (not b!5064712) (not b!5064437) (not b!5064301) (not b!5065081) (not d!1632476) (not b!5064795) (not b!5064532) (not bm!352807) (not bm!352784) (not b!5064696) (not b!5064936) (not b!5064700) (not b!5064360) (not b!5064578) (not b!5064657) (not b!5064533) (not b!5064731) (not b!5064518) (not bm!352811) (not b!5064623) (not b!5064945) (not d!1632524) (not b!5064521) (not bm!352840) (not d!1632164) (not b!5064997) (not b!5064389) (not b!5064984) (not d!1632654) (not b!5064991) (not bm!352790) (not b!5064988) (not b!5064519) (not b!5064457) (not d!1632564) (not b!5064681) (not b!5064391) (not b!5064992) (not b!5064818) (not d!1632528) (not b!5064827) (not b!5065051) (not d!1632254) (not b!5064855) (not b!5065024) (not d!1632684) (not b!5064375) (not b!5064536) (not b!5064716) (not b!5064753) (not b!5064649) (not b!5065056) (not b!5064509) (not b!5064748) (not d!1632248) (not b!5064965) (not d!1632608) (not b!5064782) (not b!5065033) (not d!1632214) (not d!1632318) (not b!5064934) (not d!1632548) (not b!5064953) (not b!5065027) (not b!5064359) (not b!5064346) (not b!5064779) (not b!5064445) (not d!1632452) (not b!5064575) (not b!5064397) (not b!5064341) (not b!5064922) (not b!5064901) (not b!5064898) (not b!5065030) (not b!5064379) (not d!1632322) (not b!5064943) (not d!1632520) (not b!5064448) (not b!5064834) (not b!5064664) (not d!1632154) (not b!5065039) (not b!5064871) (not b!5064826) (not b!5064978) (not b!5064910) (not d!1632536) (not b!5064461) (not b!5065082) (not b!5064353) (not b!5064709) (not b!5065050) (not bm!352837) (not b!5065077) (not d!1632632) (not b!5064983) (not b!5064763) (not bm!352796) (not b!5064544) (not b!5064752) (not b!5064982) (not b!5065057) (not d!1632306) (not b!5064322) (not b!5064745) (not b!5064960) (not d!1632678) (not d!1632496) (not b!5064758) (not d!1632224) (not b!5064513) (not d!1632414) (not b!5064974) (not b!5064767) (not b!5064403) (not b!5065047) (not b!5064409) (not d!1632420) (not b!5064725) (not b!5065041) (not b!5065084) (not b!5064374) (not bm!352810) (not b!5064729) (not b!5064327) (not b!5065014) (not b!5064530) (not b!5064775) (not b!5064410) (not b!5064508) (not b!5064584) (not bm!352780) (not b!5064897) (not b!5064744) (not b!5064441) (not d!1632614) (not b!5064535) (not b!5064554) (not d!1632388) (not bm!352781) (not b!5064382) (not b!5064595) (not b!5065086) (not d!1632682) (not b!5064449) (not b!5064446) (not d!1632692) (not b!5064683) (not b!5064736) (not b!5064415) (not b!5064925) (not b!5064451) (not b!5064859) (not b!5065028) (not d!1632384) (not bm!352802) (not d!1632584) (not b!5064368) (not b!5065029) (not b!5064802) (not d!1632220) (not b!5064981) (not bm!352805) (not b!5065022) (not d!1632590) (not d!1632534) (not b!5064581) (not d!1632602) (not b!5064678) (not b!5064559) (not b!5064811) (not d!1632440) (not b!5064668) (not bm!352808) (not b!5064565) (not b!5064806) (not b!5064839) (not b!5064450) (not d!1632458) (not d!1632700) (not b!5064947) (not b!5064921) (not b!5064772) (not b!5064335) (not bm!352800) (not b!5064636) (not b!5064464) (not b!5064713) (not b!5064913) (not b!5065054) (not b!5064932) (not b!5064339) (not b!5064786) (not d!1632676) (not b!5065074) (not b!5064875) (not b!5064685) (not b!5064869) (not b!5064904))
(check-sat)
