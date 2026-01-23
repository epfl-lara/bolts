; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534494 () Bool)

(assert start!534494)

(declare-fun b!5054011 () Bool)

(declare-fun e!3155121 () Bool)

(declare-fun tp!1412667 () Bool)

(assert (=> b!5054011 (= e!3155121 tp!1412667)))

(declare-fun b!5054012 () Bool)

(declare-fun res!2152025 () Bool)

(declare-fun e!3155120 () Bool)

(assert (=> b!5054012 (=> (not res!2152025) (not e!3155120))))

(declare-datatypes ((T!104950 0))(
  ( (T!104951 (val!23624 Int)) )
))
(declare-datatypes ((List!58534 0))(
  ( (Nil!58410) (Cons!58410 (h!64858 T!104950) (t!371183 List!58534)) )
))
(declare-datatypes ((IArray!31141 0))(
  ( (IArray!31142 (innerList!15628 List!58534)) )
))
(declare-datatypes ((Conc!15540 0))(
  ( (Node!15540 (left!42780 Conc!15540) (right!43110 Conc!15540) (csize!31310 Int) (cheight!15751 Int)) (Leaf!25815 (xs!18870 IArray!31141) (csize!31311 Int)) (Empty!15540) )
))
(declare-fun ys!41 () Conc!15540)

(declare-fun height!2117 (Conc!15540) Int)

(assert (=> b!5054012 (= res!2152025 (>= (height!2117 (right!43110 ys!41)) (height!2117 (left!42780 ys!41))))))

(declare-fun tp!1412668 () Bool)

(declare-fun xs!286 () Conc!15540)

(declare-fun e!3155119 () Bool)

(declare-fun b!5054013 () Bool)

(declare-fun tp!1412665 () Bool)

(declare-fun inv!77423 (Conc!15540) Bool)

(assert (=> b!5054013 (= e!3155119 (and (inv!77423 (left!42780 xs!286)) tp!1412668 (inv!77423 (right!43110 xs!286)) tp!1412665))))

(declare-fun b!5054014 () Bool)

(declare-fun isBalanced!4402 (Conc!15540) Bool)

(assert (=> b!5054014 (= e!3155120 (not (isBalanced!4402 (left!42780 ys!41))))))

(declare-fun b!5054015 () Bool)

(declare-fun e!3155118 () Bool)

(declare-fun e!3155117 () Bool)

(declare-fun inv!77424 (IArray!31141) Bool)

(assert (=> b!5054015 (= e!3155118 (and (inv!77424 (xs!18870 ys!41)) e!3155117))))

(declare-fun tp!1412664 () Bool)

(declare-fun tp!1412666 () Bool)

(declare-fun b!5054016 () Bool)

(assert (=> b!5054016 (= e!3155118 (and (inv!77423 (left!42780 ys!41)) tp!1412666 (inv!77423 (right!43110 ys!41)) tp!1412664))))

(declare-fun b!5054017 () Bool)

(declare-fun res!2152029 () Bool)

(declare-fun e!3155122 () Bool)

(assert (=> b!5054017 (=> (not res!2152029) (not e!3155122))))

(assert (=> b!5054017 (= res!2152029 (and (not (= xs!286 Empty!15540)) (not (= ys!41 Empty!15540))))))

(declare-fun res!2152028 () Bool)

(assert (=> start!534494 (=> (not res!2152028) (not e!3155122))))

(assert (=> start!534494 (= res!2152028 (isBalanced!4402 xs!286))))

(assert (=> start!534494 e!3155122))

(assert (=> start!534494 (and (inv!77423 xs!286) e!3155119)))

(assert (=> start!534494 (and (inv!77423 ys!41) e!3155118)))

(declare-fun b!5054018 () Bool)

(assert (=> b!5054018 (= e!3155122 e!3155120)))

(declare-fun res!2152027 () Bool)

(assert (=> b!5054018 (=> (not res!2152027) (not e!3155120))))

(declare-fun lt!2087285 () Int)

(get-info :version)

(assert (=> b!5054018 (= res!2152027 (and (or (> (- 1) lt!2087285) (> lt!2087285 1)) (>= lt!2087285 (- 1)) ((_ is Node!15540) ys!41)))))

(assert (=> b!5054018 (= lt!2087285 (- (height!2117 ys!41) (height!2117 xs!286)))))

(declare-fun b!5054019 () Bool)

(declare-fun tp!1412669 () Bool)

(assert (=> b!5054019 (= e!3155117 tp!1412669)))

(declare-fun b!5054020 () Bool)

(assert (=> b!5054020 (= e!3155119 (and (inv!77424 (xs!18870 xs!286)) e!3155121))))

(declare-fun b!5054021 () Bool)

(declare-fun res!2152026 () Bool)

(assert (=> b!5054021 (=> (not res!2152026) (not e!3155122))))

(assert (=> b!5054021 (= res!2152026 (isBalanced!4402 ys!41))))

(assert (= (and start!534494 res!2152028) b!5054021))

(assert (= (and b!5054021 res!2152026) b!5054017))

(assert (= (and b!5054017 res!2152029) b!5054018))

(assert (= (and b!5054018 res!2152027) b!5054012))

(assert (= (and b!5054012 res!2152025) b!5054014))

(assert (= (and start!534494 ((_ is Node!15540) xs!286)) b!5054013))

(assert (= b!5054020 b!5054011))

(assert (= (and start!534494 ((_ is Leaf!25815) xs!286)) b!5054020))

(assert (= (and start!534494 ((_ is Node!15540) ys!41)) b!5054016))

(assert (= b!5054015 b!5054019))

(assert (= (and start!534494 ((_ is Leaf!25815) ys!41)) b!5054015))

(declare-fun m!6088264 () Bool)

(assert (=> b!5054021 m!6088264))

(declare-fun m!6088266 () Bool)

(assert (=> b!5054013 m!6088266))

(declare-fun m!6088268 () Bool)

(assert (=> b!5054013 m!6088268))

(declare-fun m!6088270 () Bool)

(assert (=> b!5054016 m!6088270))

(declare-fun m!6088272 () Bool)

(assert (=> b!5054016 m!6088272))

(declare-fun m!6088274 () Bool)

(assert (=> b!5054015 m!6088274))

(declare-fun m!6088276 () Bool)

(assert (=> b!5054012 m!6088276))

(declare-fun m!6088278 () Bool)

(assert (=> b!5054012 m!6088278))

(declare-fun m!6088280 () Bool)

(assert (=> b!5054018 m!6088280))

(declare-fun m!6088282 () Bool)

(assert (=> b!5054018 m!6088282))

(declare-fun m!6088284 () Bool)

(assert (=> b!5054014 m!6088284))

(declare-fun m!6088286 () Bool)

(assert (=> start!534494 m!6088286))

(declare-fun m!6088288 () Bool)

(assert (=> start!534494 m!6088288))

(declare-fun m!6088290 () Bool)

(assert (=> start!534494 m!6088290))

(declare-fun m!6088292 () Bool)

(assert (=> b!5054020 m!6088292))

(check-sat (not b!5054011) (not b!5054012) (not start!534494) (not b!5054021) (not b!5054018) (not b!5054020) (not b!5054015) (not b!5054016) (not b!5054019) (not b!5054013) (not b!5054014))
(check-sat)
(get-model)

(declare-fun b!5054061 () Bool)

(declare-fun res!2152068 () Bool)

(declare-fun e!3155140 () Bool)

(assert (=> b!5054061 (=> (not res!2152068) (not e!3155140))))

(assert (=> b!5054061 (= res!2152068 (isBalanced!4402 (left!42780 ys!41)))))

(declare-fun b!5054062 () Bool)

(declare-fun res!2152066 () Bool)

(assert (=> b!5054062 (=> (not res!2152066) (not e!3155140))))

(assert (=> b!5054062 (= res!2152066 (<= (- (height!2117 (left!42780 ys!41)) (height!2117 (right!43110 ys!41))) 1))))

(declare-fun b!5054063 () Bool)

(declare-fun res!2152064 () Bool)

(assert (=> b!5054063 (=> (not res!2152064) (not e!3155140))))

(assert (=> b!5054063 (= res!2152064 (isBalanced!4402 (right!43110 ys!41)))))

(declare-fun b!5054064 () Bool)

(declare-fun isEmpty!31591 (Conc!15540) Bool)

(assert (=> b!5054064 (= e!3155140 (not (isEmpty!31591 (right!43110 ys!41))))))

(declare-fun d!1626357 () Bool)

(declare-fun res!2152065 () Bool)

(declare-fun e!3155139 () Bool)

(assert (=> d!1626357 (=> res!2152065 e!3155139)))

(assert (=> d!1626357 (= res!2152065 (not ((_ is Node!15540) ys!41)))))

(assert (=> d!1626357 (= (isBalanced!4402 ys!41) e!3155139)))

(declare-fun b!5054065 () Bool)

(declare-fun res!2152063 () Bool)

(assert (=> b!5054065 (=> (not res!2152063) (not e!3155140))))

(assert (=> b!5054065 (= res!2152063 (not (isEmpty!31591 (left!42780 ys!41))))))

(declare-fun b!5054066 () Bool)

(assert (=> b!5054066 (= e!3155139 e!3155140)))

(declare-fun res!2152067 () Bool)

(assert (=> b!5054066 (=> (not res!2152067) (not e!3155140))))

(assert (=> b!5054066 (= res!2152067 (<= (- 1) (- (height!2117 (left!42780 ys!41)) (height!2117 (right!43110 ys!41)))))))

(assert (= (and d!1626357 (not res!2152065)) b!5054066))

(assert (= (and b!5054066 res!2152067) b!5054062))

(assert (= (and b!5054062 res!2152066) b!5054061))

(assert (= (and b!5054061 res!2152068) b!5054063))

(assert (= (and b!5054063 res!2152064) b!5054065))

(assert (= (and b!5054065 res!2152063) b!5054064))

(declare-fun m!6088308 () Bool)

(assert (=> b!5054065 m!6088308))

(declare-fun m!6088310 () Bool)

(assert (=> b!5054063 m!6088310))

(assert (=> b!5054062 m!6088278))

(assert (=> b!5054062 m!6088276))

(assert (=> b!5054061 m!6088284))

(assert (=> b!5054066 m!6088278))

(assert (=> b!5054066 m!6088276))

(declare-fun m!6088324 () Bool)

(assert (=> b!5054064 m!6088324))

(assert (=> b!5054021 d!1626357))

(declare-fun d!1626367 () Bool)

(declare-fun c!867194 () Bool)

(assert (=> d!1626367 (= c!867194 ((_ is Node!15540) (left!42780 ys!41)))))

(declare-fun e!3155167 () Bool)

(assert (=> d!1626367 (= (inv!77423 (left!42780 ys!41)) e!3155167)))

(declare-fun b!5054114 () Bool)

(declare-fun inv!77427 (Conc!15540) Bool)

(assert (=> b!5054114 (= e!3155167 (inv!77427 (left!42780 ys!41)))))

(declare-fun b!5054115 () Bool)

(declare-fun e!3155168 () Bool)

(assert (=> b!5054115 (= e!3155167 e!3155168)))

(declare-fun res!2152088 () Bool)

(assert (=> b!5054115 (= res!2152088 (not ((_ is Leaf!25815) (left!42780 ys!41))))))

(assert (=> b!5054115 (=> res!2152088 e!3155168)))

(declare-fun b!5054116 () Bool)

(declare-fun inv!77428 (Conc!15540) Bool)

(assert (=> b!5054116 (= e!3155168 (inv!77428 (left!42780 ys!41)))))

(assert (= (and d!1626367 c!867194) b!5054114))

(assert (= (and d!1626367 (not c!867194)) b!5054115))

(assert (= (and b!5054115 (not res!2152088)) b!5054116))

(declare-fun m!6088370 () Bool)

(assert (=> b!5054114 m!6088370))

(declare-fun m!6088372 () Bool)

(assert (=> b!5054116 m!6088372))

(assert (=> b!5054016 d!1626367))

(declare-fun d!1626389 () Bool)

(declare-fun c!867195 () Bool)

(assert (=> d!1626389 (= c!867195 ((_ is Node!15540) (right!43110 ys!41)))))

(declare-fun e!3155171 () Bool)

(assert (=> d!1626389 (= (inv!77423 (right!43110 ys!41)) e!3155171)))

(declare-fun b!5054121 () Bool)

(assert (=> b!5054121 (= e!3155171 (inv!77427 (right!43110 ys!41)))))

(declare-fun b!5054122 () Bool)

(declare-fun e!3155172 () Bool)

(assert (=> b!5054122 (= e!3155171 e!3155172)))

(declare-fun res!2152089 () Bool)

(assert (=> b!5054122 (= res!2152089 (not ((_ is Leaf!25815) (right!43110 ys!41))))))

(assert (=> b!5054122 (=> res!2152089 e!3155172)))

(declare-fun b!5054123 () Bool)

(assert (=> b!5054123 (= e!3155172 (inv!77428 (right!43110 ys!41)))))

(assert (= (and d!1626389 c!867195) b!5054121))

(assert (= (and d!1626389 (not c!867195)) b!5054122))

(assert (= (and b!5054122 (not res!2152089)) b!5054123))

(declare-fun m!6088374 () Bool)

(assert (=> b!5054121 m!6088374))

(declare-fun m!6088376 () Bool)

(assert (=> b!5054123 m!6088376))

(assert (=> b!5054016 d!1626389))

(declare-fun d!1626391 () Bool)

(assert (=> d!1626391 (= (height!2117 ys!41) (ite ((_ is Empty!15540) ys!41) 0 (ite ((_ is Leaf!25815) ys!41) 1 (cheight!15751 ys!41))))))

(assert (=> b!5054018 d!1626391))

(declare-fun d!1626393 () Bool)

(assert (=> d!1626393 (= (height!2117 xs!286) (ite ((_ is Empty!15540) xs!286) 0 (ite ((_ is Leaf!25815) xs!286) 1 (cheight!15751 xs!286))))))

(assert (=> b!5054018 d!1626393))

(declare-fun d!1626395 () Bool)

(assert (=> d!1626395 (= (height!2117 (right!43110 ys!41)) (ite ((_ is Empty!15540) (right!43110 ys!41)) 0 (ite ((_ is Leaf!25815) (right!43110 ys!41)) 1 (cheight!15751 (right!43110 ys!41)))))))

(assert (=> b!5054012 d!1626395))

(declare-fun d!1626397 () Bool)

(assert (=> d!1626397 (= (height!2117 (left!42780 ys!41)) (ite ((_ is Empty!15540) (left!42780 ys!41)) 0 (ite ((_ is Leaf!25815) (left!42780 ys!41)) 1 (cheight!15751 (left!42780 ys!41)))))))

(assert (=> b!5054012 d!1626397))

(declare-fun b!5054132 () Bool)

(declare-fun res!2152095 () Bool)

(declare-fun e!3155180 () Bool)

(assert (=> b!5054132 (=> (not res!2152095) (not e!3155180))))

(assert (=> b!5054132 (= res!2152095 (isBalanced!4402 (left!42780 xs!286)))))

(declare-fun b!5054133 () Bool)

(declare-fun res!2152093 () Bool)

(assert (=> b!5054133 (=> (not res!2152093) (not e!3155180))))

(assert (=> b!5054133 (= res!2152093 (<= (- (height!2117 (left!42780 xs!286)) (height!2117 (right!43110 xs!286))) 1))))

(declare-fun b!5054134 () Bool)

(declare-fun res!2152091 () Bool)

(assert (=> b!5054134 (=> (not res!2152091) (not e!3155180))))

(assert (=> b!5054134 (= res!2152091 (isBalanced!4402 (right!43110 xs!286)))))

(declare-fun b!5054135 () Bool)

(assert (=> b!5054135 (= e!3155180 (not (isEmpty!31591 (right!43110 xs!286))))))

(declare-fun d!1626399 () Bool)

(declare-fun res!2152092 () Bool)

(declare-fun e!3155179 () Bool)

(assert (=> d!1626399 (=> res!2152092 e!3155179)))

(assert (=> d!1626399 (= res!2152092 (not ((_ is Node!15540) xs!286)))))

(assert (=> d!1626399 (= (isBalanced!4402 xs!286) e!3155179)))

(declare-fun b!5054136 () Bool)

(declare-fun res!2152090 () Bool)

(assert (=> b!5054136 (=> (not res!2152090) (not e!3155180))))

(assert (=> b!5054136 (= res!2152090 (not (isEmpty!31591 (left!42780 xs!286))))))

(declare-fun b!5054137 () Bool)

(assert (=> b!5054137 (= e!3155179 e!3155180)))

(declare-fun res!2152094 () Bool)

(assert (=> b!5054137 (=> (not res!2152094) (not e!3155180))))

(assert (=> b!5054137 (= res!2152094 (<= (- 1) (- (height!2117 (left!42780 xs!286)) (height!2117 (right!43110 xs!286)))))))

(assert (= (and d!1626399 (not res!2152092)) b!5054137))

(assert (= (and b!5054137 res!2152094) b!5054133))

(assert (= (and b!5054133 res!2152093) b!5054132))

(assert (= (and b!5054132 res!2152095) b!5054134))

(assert (= (and b!5054134 res!2152091) b!5054136))

(assert (= (and b!5054136 res!2152090) b!5054135))

(declare-fun m!6088390 () Bool)

(assert (=> b!5054136 m!6088390))

(declare-fun m!6088392 () Bool)

(assert (=> b!5054134 m!6088392))

(declare-fun m!6088394 () Bool)

(assert (=> b!5054133 m!6088394))

(declare-fun m!6088396 () Bool)

(assert (=> b!5054133 m!6088396))

(declare-fun m!6088398 () Bool)

(assert (=> b!5054132 m!6088398))

(assert (=> b!5054137 m!6088394))

(assert (=> b!5054137 m!6088396))

(declare-fun m!6088400 () Bool)

(assert (=> b!5054135 m!6088400))

(assert (=> start!534494 d!1626399))

(declare-fun d!1626401 () Bool)

(declare-fun c!867196 () Bool)

(assert (=> d!1626401 (= c!867196 ((_ is Node!15540) xs!286))))

(declare-fun e!3155181 () Bool)

(assert (=> d!1626401 (= (inv!77423 xs!286) e!3155181)))

(declare-fun b!5054138 () Bool)

(assert (=> b!5054138 (= e!3155181 (inv!77427 xs!286))))

(declare-fun b!5054139 () Bool)

(declare-fun e!3155182 () Bool)

(assert (=> b!5054139 (= e!3155181 e!3155182)))

(declare-fun res!2152096 () Bool)

(assert (=> b!5054139 (= res!2152096 (not ((_ is Leaf!25815) xs!286)))))

(assert (=> b!5054139 (=> res!2152096 e!3155182)))

(declare-fun b!5054140 () Bool)

(assert (=> b!5054140 (= e!3155182 (inv!77428 xs!286))))

(assert (= (and d!1626401 c!867196) b!5054138))

(assert (= (and d!1626401 (not c!867196)) b!5054139))

(assert (= (and b!5054139 (not res!2152096)) b!5054140))

(declare-fun m!6088402 () Bool)

(assert (=> b!5054138 m!6088402))

(declare-fun m!6088404 () Bool)

(assert (=> b!5054140 m!6088404))

(assert (=> start!534494 d!1626401))

(declare-fun d!1626403 () Bool)

(declare-fun c!867197 () Bool)

(assert (=> d!1626403 (= c!867197 ((_ is Node!15540) ys!41))))

(declare-fun e!3155183 () Bool)

(assert (=> d!1626403 (= (inv!77423 ys!41) e!3155183)))

(declare-fun b!5054141 () Bool)

(assert (=> b!5054141 (= e!3155183 (inv!77427 ys!41))))

(declare-fun b!5054142 () Bool)

(declare-fun e!3155184 () Bool)

(assert (=> b!5054142 (= e!3155183 e!3155184)))

(declare-fun res!2152097 () Bool)

(assert (=> b!5054142 (= res!2152097 (not ((_ is Leaf!25815) ys!41)))))

(assert (=> b!5054142 (=> res!2152097 e!3155184)))

(declare-fun b!5054143 () Bool)

(assert (=> b!5054143 (= e!3155184 (inv!77428 ys!41))))

(assert (= (and d!1626403 c!867197) b!5054141))

(assert (= (and d!1626403 (not c!867197)) b!5054142))

(assert (= (and b!5054142 (not res!2152097)) b!5054143))

(declare-fun m!6088406 () Bool)

(assert (=> b!5054141 m!6088406))

(declare-fun m!6088408 () Bool)

(assert (=> b!5054143 m!6088408))

(assert (=> start!534494 d!1626403))

(declare-fun b!5054144 () Bool)

(declare-fun res!2152103 () Bool)

(declare-fun e!3155186 () Bool)

(assert (=> b!5054144 (=> (not res!2152103) (not e!3155186))))

(assert (=> b!5054144 (= res!2152103 (isBalanced!4402 (left!42780 (left!42780 ys!41))))))

(declare-fun b!5054145 () Bool)

(declare-fun res!2152101 () Bool)

(assert (=> b!5054145 (=> (not res!2152101) (not e!3155186))))

(assert (=> b!5054145 (= res!2152101 (<= (- (height!2117 (left!42780 (left!42780 ys!41))) (height!2117 (right!43110 (left!42780 ys!41)))) 1))))

(declare-fun b!5054146 () Bool)

(declare-fun res!2152099 () Bool)

(assert (=> b!5054146 (=> (not res!2152099) (not e!3155186))))

(assert (=> b!5054146 (= res!2152099 (isBalanced!4402 (right!43110 (left!42780 ys!41))))))

(declare-fun b!5054147 () Bool)

(assert (=> b!5054147 (= e!3155186 (not (isEmpty!31591 (right!43110 (left!42780 ys!41)))))))

(declare-fun d!1626405 () Bool)

(declare-fun res!2152100 () Bool)

(declare-fun e!3155185 () Bool)

(assert (=> d!1626405 (=> res!2152100 e!3155185)))

(assert (=> d!1626405 (= res!2152100 (not ((_ is Node!15540) (left!42780 ys!41))))))

(assert (=> d!1626405 (= (isBalanced!4402 (left!42780 ys!41)) e!3155185)))

(declare-fun b!5054148 () Bool)

(declare-fun res!2152098 () Bool)

(assert (=> b!5054148 (=> (not res!2152098) (not e!3155186))))

(assert (=> b!5054148 (= res!2152098 (not (isEmpty!31591 (left!42780 (left!42780 ys!41)))))))

(declare-fun b!5054149 () Bool)

(assert (=> b!5054149 (= e!3155185 e!3155186)))

(declare-fun res!2152102 () Bool)

(assert (=> b!5054149 (=> (not res!2152102) (not e!3155186))))

(assert (=> b!5054149 (= res!2152102 (<= (- 1) (- (height!2117 (left!42780 (left!42780 ys!41))) (height!2117 (right!43110 (left!42780 ys!41))))))))

(assert (= (and d!1626405 (not res!2152100)) b!5054149))

(assert (= (and b!5054149 res!2152102) b!5054145))

(assert (= (and b!5054145 res!2152101) b!5054144))

(assert (= (and b!5054144 res!2152103) b!5054146))

(assert (= (and b!5054146 res!2152099) b!5054148))

(assert (= (and b!5054148 res!2152098) b!5054147))

(declare-fun m!6088410 () Bool)

(assert (=> b!5054148 m!6088410))

(declare-fun m!6088412 () Bool)

(assert (=> b!5054146 m!6088412))

(declare-fun m!6088414 () Bool)

(assert (=> b!5054145 m!6088414))

(declare-fun m!6088416 () Bool)

(assert (=> b!5054145 m!6088416))

(declare-fun m!6088418 () Bool)

(assert (=> b!5054144 m!6088418))

(assert (=> b!5054149 m!6088414))

(assert (=> b!5054149 m!6088416))

(declare-fun m!6088420 () Bool)

(assert (=> b!5054147 m!6088420))

(assert (=> b!5054014 d!1626405))

(declare-fun d!1626407 () Bool)

(declare-fun c!867198 () Bool)

(assert (=> d!1626407 (= c!867198 ((_ is Node!15540) (left!42780 xs!286)))))

(declare-fun e!3155187 () Bool)

(assert (=> d!1626407 (= (inv!77423 (left!42780 xs!286)) e!3155187)))

(declare-fun b!5054150 () Bool)

(assert (=> b!5054150 (= e!3155187 (inv!77427 (left!42780 xs!286)))))

(declare-fun b!5054151 () Bool)

(declare-fun e!3155188 () Bool)

(assert (=> b!5054151 (= e!3155187 e!3155188)))

(declare-fun res!2152104 () Bool)

(assert (=> b!5054151 (= res!2152104 (not ((_ is Leaf!25815) (left!42780 xs!286))))))

(assert (=> b!5054151 (=> res!2152104 e!3155188)))

(declare-fun b!5054152 () Bool)

(assert (=> b!5054152 (= e!3155188 (inv!77428 (left!42780 xs!286)))))

(assert (= (and d!1626407 c!867198) b!5054150))

(assert (= (and d!1626407 (not c!867198)) b!5054151))

(assert (= (and b!5054151 (not res!2152104)) b!5054152))

(declare-fun m!6088422 () Bool)

(assert (=> b!5054150 m!6088422))

(declare-fun m!6088424 () Bool)

(assert (=> b!5054152 m!6088424))

(assert (=> b!5054013 d!1626407))

(declare-fun d!1626409 () Bool)

(declare-fun c!867199 () Bool)

(assert (=> d!1626409 (= c!867199 ((_ is Node!15540) (right!43110 xs!286)))))

(declare-fun e!3155189 () Bool)

(assert (=> d!1626409 (= (inv!77423 (right!43110 xs!286)) e!3155189)))

(declare-fun b!5054153 () Bool)

(assert (=> b!5054153 (= e!3155189 (inv!77427 (right!43110 xs!286)))))

(declare-fun b!5054154 () Bool)

(declare-fun e!3155190 () Bool)

(assert (=> b!5054154 (= e!3155189 e!3155190)))

(declare-fun res!2152105 () Bool)

(assert (=> b!5054154 (= res!2152105 (not ((_ is Leaf!25815) (right!43110 xs!286))))))

(assert (=> b!5054154 (=> res!2152105 e!3155190)))

(declare-fun b!5054155 () Bool)

(assert (=> b!5054155 (= e!3155190 (inv!77428 (right!43110 xs!286)))))

(assert (= (and d!1626409 c!867199) b!5054153))

(assert (= (and d!1626409 (not c!867199)) b!5054154))

(assert (= (and b!5054154 (not res!2152105)) b!5054155))

(declare-fun m!6088426 () Bool)

(assert (=> b!5054153 m!6088426))

(declare-fun m!6088428 () Bool)

(assert (=> b!5054155 m!6088428))

(assert (=> b!5054013 d!1626409))

(declare-fun d!1626411 () Bool)

(declare-fun size!39035 (List!58534) Int)

(assert (=> d!1626411 (= (inv!77424 (xs!18870 ys!41)) (<= (size!39035 (innerList!15628 (xs!18870 ys!41))) 2147483647))))

(declare-fun bs!1189318 () Bool)

(assert (= bs!1189318 d!1626411))

(declare-fun m!6088430 () Bool)

(assert (=> bs!1189318 m!6088430))

(assert (=> b!5054015 d!1626411))

(declare-fun d!1626413 () Bool)

(assert (=> d!1626413 (= (inv!77424 (xs!18870 xs!286)) (<= (size!39035 (innerList!15628 (xs!18870 xs!286))) 2147483647))))

(declare-fun bs!1189319 () Bool)

(assert (= bs!1189319 d!1626413))

(declare-fun m!6088432 () Bool)

(assert (=> bs!1189319 m!6088432))

(assert (=> b!5054020 d!1626413))

(declare-fun b!5054160 () Bool)

(declare-fun e!3155193 () Bool)

(declare-fun tp_is_empty!37003 () Bool)

(declare-fun tp!1412694 () Bool)

(assert (=> b!5054160 (= e!3155193 (and tp_is_empty!37003 tp!1412694))))

(assert (=> b!5054011 (= tp!1412667 e!3155193)))

(assert (= (and b!5054011 ((_ is Cons!58410) (innerList!15628 (xs!18870 xs!286)))) b!5054160))

(declare-fun tp!1412702 () Bool)

(declare-fun tp!1412703 () Bool)

(declare-fun e!3155198 () Bool)

(declare-fun b!5054169 () Bool)

(assert (=> b!5054169 (= e!3155198 (and (inv!77423 (left!42780 (left!42780 ys!41))) tp!1412702 (inv!77423 (right!43110 (left!42780 ys!41))) tp!1412703))))

(declare-fun b!5054171 () Bool)

(declare-fun e!3155199 () Bool)

(declare-fun tp!1412701 () Bool)

(assert (=> b!5054171 (= e!3155199 tp!1412701)))

(declare-fun b!5054170 () Bool)

(assert (=> b!5054170 (= e!3155198 (and (inv!77424 (xs!18870 (left!42780 ys!41))) e!3155199))))

(assert (=> b!5054016 (= tp!1412666 (and (inv!77423 (left!42780 ys!41)) e!3155198))))

(assert (= (and b!5054016 ((_ is Node!15540) (left!42780 ys!41))) b!5054169))

(assert (= b!5054170 b!5054171))

(assert (= (and b!5054016 ((_ is Leaf!25815) (left!42780 ys!41))) b!5054170))

(declare-fun m!6088434 () Bool)

(assert (=> b!5054169 m!6088434))

(declare-fun m!6088436 () Bool)

(assert (=> b!5054169 m!6088436))

(declare-fun m!6088438 () Bool)

(assert (=> b!5054170 m!6088438))

(assert (=> b!5054016 m!6088270))

(declare-fun e!3155200 () Bool)

(declare-fun b!5054172 () Bool)

(declare-fun tp!1412706 () Bool)

(declare-fun tp!1412705 () Bool)

(assert (=> b!5054172 (= e!3155200 (and (inv!77423 (left!42780 (right!43110 ys!41))) tp!1412705 (inv!77423 (right!43110 (right!43110 ys!41))) tp!1412706))))

(declare-fun b!5054174 () Bool)

(declare-fun e!3155201 () Bool)

(declare-fun tp!1412704 () Bool)

(assert (=> b!5054174 (= e!3155201 tp!1412704)))

(declare-fun b!5054173 () Bool)

(assert (=> b!5054173 (= e!3155200 (and (inv!77424 (xs!18870 (right!43110 ys!41))) e!3155201))))

(assert (=> b!5054016 (= tp!1412664 (and (inv!77423 (right!43110 ys!41)) e!3155200))))

(assert (= (and b!5054016 ((_ is Node!15540) (right!43110 ys!41))) b!5054172))

(assert (= b!5054173 b!5054174))

(assert (= (and b!5054016 ((_ is Leaf!25815) (right!43110 ys!41))) b!5054173))

(declare-fun m!6088440 () Bool)

(assert (=> b!5054172 m!6088440))

(declare-fun m!6088442 () Bool)

(assert (=> b!5054172 m!6088442))

(declare-fun m!6088444 () Bool)

(assert (=> b!5054173 m!6088444))

(assert (=> b!5054016 m!6088272))

(declare-fun b!5054175 () Bool)

(declare-fun e!3155202 () Bool)

(declare-fun tp!1412707 () Bool)

(assert (=> b!5054175 (= e!3155202 (and tp_is_empty!37003 tp!1412707))))

(assert (=> b!5054019 (= tp!1412669 e!3155202)))

(assert (= (and b!5054019 ((_ is Cons!58410) (innerList!15628 (xs!18870 ys!41)))) b!5054175))

(declare-fun e!3155203 () Bool)

(declare-fun tp!1412709 () Bool)

(declare-fun tp!1412710 () Bool)

(declare-fun b!5054176 () Bool)

(assert (=> b!5054176 (= e!3155203 (and (inv!77423 (left!42780 (left!42780 xs!286))) tp!1412709 (inv!77423 (right!43110 (left!42780 xs!286))) tp!1412710))))

(declare-fun b!5054178 () Bool)

(declare-fun e!3155204 () Bool)

(declare-fun tp!1412708 () Bool)

(assert (=> b!5054178 (= e!3155204 tp!1412708)))

(declare-fun b!5054177 () Bool)

(assert (=> b!5054177 (= e!3155203 (and (inv!77424 (xs!18870 (left!42780 xs!286))) e!3155204))))

(assert (=> b!5054013 (= tp!1412668 (and (inv!77423 (left!42780 xs!286)) e!3155203))))

(assert (= (and b!5054013 ((_ is Node!15540) (left!42780 xs!286))) b!5054176))

(assert (= b!5054177 b!5054178))

(assert (= (and b!5054013 ((_ is Leaf!25815) (left!42780 xs!286))) b!5054177))

(declare-fun m!6088446 () Bool)

(assert (=> b!5054176 m!6088446))

(declare-fun m!6088448 () Bool)

(assert (=> b!5054176 m!6088448))

(declare-fun m!6088450 () Bool)

(assert (=> b!5054177 m!6088450))

(assert (=> b!5054013 m!6088266))

(declare-fun e!3155205 () Bool)

(declare-fun tp!1412713 () Bool)

(declare-fun b!5054179 () Bool)

(declare-fun tp!1412712 () Bool)

(assert (=> b!5054179 (= e!3155205 (and (inv!77423 (left!42780 (right!43110 xs!286))) tp!1412712 (inv!77423 (right!43110 (right!43110 xs!286))) tp!1412713))))

(declare-fun b!5054181 () Bool)

(declare-fun e!3155206 () Bool)

(declare-fun tp!1412711 () Bool)

(assert (=> b!5054181 (= e!3155206 tp!1412711)))

(declare-fun b!5054180 () Bool)

(assert (=> b!5054180 (= e!3155205 (and (inv!77424 (xs!18870 (right!43110 xs!286))) e!3155206))))

(assert (=> b!5054013 (= tp!1412665 (and (inv!77423 (right!43110 xs!286)) e!3155205))))

(assert (= (and b!5054013 ((_ is Node!15540) (right!43110 xs!286))) b!5054179))

(assert (= b!5054180 b!5054181))

(assert (= (and b!5054013 ((_ is Leaf!25815) (right!43110 xs!286))) b!5054180))

(declare-fun m!6088452 () Bool)

(assert (=> b!5054179 m!6088452))

(declare-fun m!6088454 () Bool)

(assert (=> b!5054179 m!6088454))

(declare-fun m!6088456 () Bool)

(assert (=> b!5054180 m!6088456))

(assert (=> b!5054013 m!6088268))

(check-sat (not b!5054138) (not b!5054013) (not b!5054123) (not b!5054169) (not b!5054134) (not b!5054065) (not b!5054160) (not b!5054150) (not b!5054178) (not b!5054132) (not b!5054155) (not b!5054152) (not b!5054064) (not b!5054171) (not b!5054170) (not b!5054147) (not b!5054146) (not b!5054153) (not b!5054174) (not b!5054114) (not b!5054063) (not b!5054181) (not b!5054176) (not d!1626411) (not b!5054061) (not b!5054116) tp_is_empty!37003 (not b!5054180) (not b!5054140) (not b!5054172) (not b!5054135) (not b!5054148) (not b!5054143) (not b!5054145) (not b!5054177) (not b!5054149) (not b!5054144) (not b!5054121) (not b!5054173) (not b!5054141) (not b!5054066) (not b!5054137) (not b!5054016) (not b!5054179) (not b!5054133) (not d!1626413) (not b!5054175) (not b!5054136) (not b!5054062))
(check-sat)
