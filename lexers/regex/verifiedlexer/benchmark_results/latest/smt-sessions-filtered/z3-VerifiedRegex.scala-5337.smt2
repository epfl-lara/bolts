; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!272456 () Bool)

(assert start!272456)

(declare-fun res!1171190 () Bool)

(declare-fun e!1779275 () Bool)

(assert (=> start!272456 (=> (not res!1171190) (not e!1779275))))

(declare-fun i!1825 () Int)

(assert (=> start!272456 (= res!1171190 (>= i!1825 0))))

(assert (=> start!272456 e!1779275))

(assert (=> start!272456 true))

(declare-datatypes ((C!16764 0))(
  ( (C!16765 (val!10362 Int)) )
))
(declare-datatypes ((List!33023 0))(
  ( (Nil!32899) (Cons!32899 (h!38319 C!16764) (t!229997 List!33023)) )
))
(declare-datatypes ((IArray!20397 0))(
  ( (IArray!20398 (innerList!10256 List!33023)) )
))
(declare-datatypes ((Conc!10196 0))(
  ( (Node!10196 (left!24817 Conc!10196) (right!25147 Conc!10196) (csize!20622 Int) (cheight!10407 Int)) (Leaf!15534 (xs!13308 IArray!20397) (csize!20623 Int)) (Empty!10196) )
))
(declare-datatypes ((BalanceConc!20030 0))(
  ( (BalanceConc!20031 (c!455898 Conc!10196)) )
))
(declare-fun input!3732 () BalanceConc!20030)

(declare-fun e!1779277 () Bool)

(declare-fun inv!44704 (BalanceConc!20030) Bool)

(assert (=> start!272456 (and (inv!44704 input!3732) e!1779277)))

(declare-fun b!2813483 () Bool)

(declare-fun e!1779276 () Bool)

(assert (=> b!2813483 (= e!1779275 e!1779276)))

(declare-fun res!1171189 () Bool)

(assert (=> b!2813483 (=> (not res!1171189) (not e!1779276))))

(declare-fun lt!1005291 () Int)

(assert (=> b!2813483 (= res!1171189 (and (<= i!1825 lt!1005291) (= i!1825 lt!1005291)))))

(declare-fun size!25636 (BalanceConc!20030) Int)

(assert (=> b!2813483 (= lt!1005291 (size!25636 input!3732))))

(declare-fun b!2813484 () Bool)

(declare-fun isEmpty!18218 (List!33023) Bool)

(declare-fun dropList!992 (BalanceConc!20030 Int) List!33023)

(assert (=> b!2813484 (= e!1779276 (not (isEmpty!18218 (dropList!992 input!3732 i!1825))))))

(declare-fun b!2813485 () Bool)

(declare-fun tp!898428 () Bool)

(declare-fun inv!44705 (Conc!10196) Bool)

(assert (=> b!2813485 (= e!1779277 (and (inv!44705 (c!455898 input!3732)) tp!898428))))

(assert (= (and start!272456 res!1171190) b!2813483))

(assert (= (and b!2813483 res!1171189) b!2813484))

(assert (= start!272456 b!2813485))

(declare-fun m!3244079 () Bool)

(assert (=> start!272456 m!3244079))

(declare-fun m!3244081 () Bool)

(assert (=> b!2813483 m!3244081))

(declare-fun m!3244083 () Bool)

(assert (=> b!2813484 m!3244083))

(assert (=> b!2813484 m!3244083))

(declare-fun m!3244085 () Bool)

(assert (=> b!2813484 m!3244085))

(declare-fun m!3244087 () Bool)

(assert (=> b!2813485 m!3244087))

(check-sat (not b!2813485) (not start!272456) (not b!2813483) (not b!2813484))
(check-sat)
(get-model)

(declare-fun d!816696 () Bool)

(declare-fun c!455901 () Bool)

(get-info :version)

(assert (=> d!816696 (= c!455901 ((_ is Node!10196) (c!455898 input!3732)))))

(declare-fun e!1779282 () Bool)

(assert (=> d!816696 (= (inv!44705 (c!455898 input!3732)) e!1779282)))

(declare-fun b!2813492 () Bool)

(declare-fun inv!44706 (Conc!10196) Bool)

(assert (=> b!2813492 (= e!1779282 (inv!44706 (c!455898 input!3732)))))

(declare-fun b!2813493 () Bool)

(declare-fun e!1779283 () Bool)

(assert (=> b!2813493 (= e!1779282 e!1779283)))

(declare-fun res!1171193 () Bool)

(assert (=> b!2813493 (= res!1171193 (not ((_ is Leaf!15534) (c!455898 input!3732))))))

(assert (=> b!2813493 (=> res!1171193 e!1779283)))

(declare-fun b!2813494 () Bool)

(declare-fun inv!44707 (Conc!10196) Bool)

(assert (=> b!2813494 (= e!1779283 (inv!44707 (c!455898 input!3732)))))

(assert (= (and d!816696 c!455901) b!2813492))

(assert (= (and d!816696 (not c!455901)) b!2813493))

(assert (= (and b!2813493 (not res!1171193)) b!2813494))

(declare-fun m!3244091 () Bool)

(assert (=> b!2813492 m!3244091))

(declare-fun m!3244093 () Bool)

(assert (=> b!2813494 m!3244093))

(assert (=> b!2813485 d!816696))

(declare-fun d!816702 () Bool)

(declare-fun isBalanced!3090 (Conc!10196) Bool)

(assert (=> d!816702 (= (inv!44704 input!3732) (isBalanced!3090 (c!455898 input!3732)))))

(declare-fun bs!516527 () Bool)

(assert (= bs!516527 d!816702))

(declare-fun m!3244095 () Bool)

(assert (=> bs!516527 m!3244095))

(assert (=> start!272456 d!816702))

(declare-fun d!816704 () Bool)

(declare-fun lt!1005297 () Int)

(declare-fun size!25637 (List!33023) Int)

(declare-fun list!12326 (BalanceConc!20030) List!33023)

(assert (=> d!816704 (= lt!1005297 (size!25637 (list!12326 input!3732)))))

(declare-fun size!25638 (Conc!10196) Int)

(assert (=> d!816704 (= lt!1005297 (size!25638 (c!455898 input!3732)))))

(assert (=> d!816704 (= (size!25636 input!3732) lt!1005297)))

(declare-fun bs!516529 () Bool)

(assert (= bs!516529 d!816704))

(declare-fun m!3244103 () Bool)

(assert (=> bs!516529 m!3244103))

(assert (=> bs!516529 m!3244103))

(declare-fun m!3244105 () Bool)

(assert (=> bs!516529 m!3244105))

(declare-fun m!3244107 () Bool)

(assert (=> bs!516529 m!3244107))

(assert (=> b!2813483 d!816704))

(declare-fun d!816710 () Bool)

(assert (=> d!816710 (= (isEmpty!18218 (dropList!992 input!3732 i!1825)) ((_ is Nil!32899) (dropList!992 input!3732 i!1825)))))

(assert (=> b!2813484 d!816710))

(declare-fun d!816712 () Bool)

(declare-fun drop!1769 (List!33023 Int) List!33023)

(declare-fun list!12327 (Conc!10196) List!33023)

(assert (=> d!816712 (= (dropList!992 input!3732 i!1825) (drop!1769 (list!12327 (c!455898 input!3732)) i!1825))))

(declare-fun bs!516531 () Bool)

(assert (= bs!516531 d!816712))

(declare-fun m!3244113 () Bool)

(assert (=> bs!516531 m!3244113))

(assert (=> bs!516531 m!3244113))

(declare-fun m!3244115 () Bool)

(assert (=> bs!516531 m!3244115))

(assert (=> b!2813484 d!816712))

(declare-fun tp!898436 () Bool)

(declare-fun e!1779289 () Bool)

(declare-fun b!2813503 () Bool)

(declare-fun tp!898435 () Bool)

(assert (=> b!2813503 (= e!1779289 (and (inv!44705 (left!24817 (c!455898 input!3732))) tp!898435 (inv!44705 (right!25147 (c!455898 input!3732))) tp!898436))))

(declare-fun b!2813505 () Bool)

(declare-fun e!1779288 () Bool)

(declare-fun tp!898437 () Bool)

(assert (=> b!2813505 (= e!1779288 tp!898437)))

(declare-fun b!2813504 () Bool)

(declare-fun inv!44708 (IArray!20397) Bool)

(assert (=> b!2813504 (= e!1779289 (and (inv!44708 (xs!13308 (c!455898 input!3732))) e!1779288))))

(assert (=> b!2813485 (= tp!898428 (and (inv!44705 (c!455898 input!3732)) e!1779289))))

(assert (= (and b!2813485 ((_ is Node!10196) (c!455898 input!3732))) b!2813503))

(assert (= b!2813504 b!2813505))

(assert (= (and b!2813485 ((_ is Leaf!15534) (c!455898 input!3732))) b!2813504))

(declare-fun m!3244117 () Bool)

(assert (=> b!2813503 m!3244117))

(declare-fun m!3244119 () Bool)

(assert (=> b!2813503 m!3244119))

(declare-fun m!3244121 () Bool)

(assert (=> b!2813504 m!3244121))

(assert (=> b!2813485 m!3244087))

(check-sat (not b!2813504) (not d!816702) (not b!2813492) (not b!2813505) (not d!816712) (not b!2813494) (not d!816704) (not b!2813503) (not b!2813485))
(check-sat)
(get-model)

(assert (=> b!2813485 d!816696))

(declare-fun d!816716 () Bool)

(declare-fun res!1171201 () Bool)

(declare-fun e!1779304 () Bool)

(assert (=> d!816716 (=> (not res!1171201) (not e!1779304))))

(declare-fun list!12330 (IArray!20397) List!33023)

(assert (=> d!816716 (= res!1171201 (<= (size!25637 (list!12330 (xs!13308 (c!455898 input!3732)))) 512))))

(assert (=> d!816716 (= (inv!44707 (c!455898 input!3732)) e!1779304)))

(declare-fun b!2813530 () Bool)

(declare-fun res!1171202 () Bool)

(assert (=> b!2813530 (=> (not res!1171202) (not e!1779304))))

(assert (=> b!2813530 (= res!1171202 (= (csize!20623 (c!455898 input!3732)) (size!25637 (list!12330 (xs!13308 (c!455898 input!3732))))))))

(declare-fun b!2813531 () Bool)

(assert (=> b!2813531 (= e!1779304 (and (> (csize!20623 (c!455898 input!3732)) 0) (<= (csize!20623 (c!455898 input!3732)) 512)))))

(assert (= (and d!816716 res!1171201) b!2813530))

(assert (= (and b!2813530 res!1171202) b!2813531))

(declare-fun m!3244133 () Bool)

(assert (=> d!816716 m!3244133))

(assert (=> d!816716 m!3244133))

(declare-fun m!3244135 () Bool)

(assert (=> d!816716 m!3244135))

(assert (=> b!2813530 m!3244133))

(assert (=> b!2813530 m!3244133))

(assert (=> b!2813530 m!3244135))

(assert (=> b!2813494 d!816716))

(declare-fun b!2813544 () Bool)

(declare-fun res!1171218 () Bool)

(declare-fun e!1779309 () Bool)

(assert (=> b!2813544 (=> (not res!1171218) (not e!1779309))))

(assert (=> b!2813544 (= res!1171218 (isBalanced!3090 (right!25147 (c!455898 input!3732))))))

(declare-fun b!2813545 () Bool)

(declare-fun e!1779310 () Bool)

(assert (=> b!2813545 (= e!1779310 e!1779309)))

(declare-fun res!1171217 () Bool)

(assert (=> b!2813545 (=> (not res!1171217) (not e!1779309))))

(declare-fun height!1499 (Conc!10196) Int)

(assert (=> b!2813545 (= res!1171217 (<= (- 1) (- (height!1499 (left!24817 (c!455898 input!3732))) (height!1499 (right!25147 (c!455898 input!3732))))))))

(declare-fun b!2813546 () Bool)

(declare-fun res!1171215 () Bool)

(assert (=> b!2813546 (=> (not res!1171215) (not e!1779309))))

(assert (=> b!2813546 (= res!1171215 (isBalanced!3090 (left!24817 (c!455898 input!3732))))))

(declare-fun b!2813547 () Bool)

(declare-fun res!1171216 () Bool)

(assert (=> b!2813547 (=> (not res!1171216) (not e!1779309))))

(assert (=> b!2813547 (= res!1171216 (<= (- (height!1499 (left!24817 (c!455898 input!3732))) (height!1499 (right!25147 (c!455898 input!3732)))) 1))))

(declare-fun b!2813548 () Bool)

(declare-fun isEmpty!18219 (Conc!10196) Bool)

(assert (=> b!2813548 (= e!1779309 (not (isEmpty!18219 (right!25147 (c!455898 input!3732)))))))

(declare-fun d!816718 () Bool)

(declare-fun res!1171220 () Bool)

(assert (=> d!816718 (=> res!1171220 e!1779310)))

(assert (=> d!816718 (= res!1171220 (not ((_ is Node!10196) (c!455898 input!3732))))))

(assert (=> d!816718 (= (isBalanced!3090 (c!455898 input!3732)) e!1779310)))

(declare-fun b!2813549 () Bool)

(declare-fun res!1171219 () Bool)

(assert (=> b!2813549 (=> (not res!1171219) (not e!1779309))))

(assert (=> b!2813549 (= res!1171219 (not (isEmpty!18219 (left!24817 (c!455898 input!3732)))))))

(assert (= (and d!816718 (not res!1171220)) b!2813545))

(assert (= (and b!2813545 res!1171217) b!2813547))

(assert (= (and b!2813547 res!1171216) b!2813546))

(assert (= (and b!2813546 res!1171215) b!2813544))

(assert (= (and b!2813544 res!1171218) b!2813549))

(assert (= (and b!2813549 res!1171219) b!2813548))

(declare-fun m!3244137 () Bool)

(assert (=> b!2813545 m!3244137))

(declare-fun m!3244139 () Bool)

(assert (=> b!2813545 m!3244139))

(assert (=> b!2813547 m!3244137))

(assert (=> b!2813547 m!3244139))

(declare-fun m!3244141 () Bool)

(assert (=> b!2813549 m!3244141))

(declare-fun m!3244143 () Bool)

(assert (=> b!2813546 m!3244143))

(declare-fun m!3244145 () Bool)

(assert (=> b!2813548 m!3244145))

(declare-fun m!3244147 () Bool)

(assert (=> b!2813544 m!3244147))

(assert (=> d!816702 d!816718))

(declare-fun d!816720 () Bool)

(declare-fun c!455905 () Bool)

(assert (=> d!816720 (= c!455905 ((_ is Node!10196) (left!24817 (c!455898 input!3732))))))

(declare-fun e!1779311 () Bool)

(assert (=> d!816720 (= (inv!44705 (left!24817 (c!455898 input!3732))) e!1779311)))

(declare-fun b!2813550 () Bool)

(assert (=> b!2813550 (= e!1779311 (inv!44706 (left!24817 (c!455898 input!3732))))))

(declare-fun b!2813551 () Bool)

(declare-fun e!1779312 () Bool)

(assert (=> b!2813551 (= e!1779311 e!1779312)))

(declare-fun res!1171221 () Bool)

(assert (=> b!2813551 (= res!1171221 (not ((_ is Leaf!15534) (left!24817 (c!455898 input!3732)))))))

(assert (=> b!2813551 (=> res!1171221 e!1779312)))

(declare-fun b!2813552 () Bool)

(assert (=> b!2813552 (= e!1779312 (inv!44707 (left!24817 (c!455898 input!3732))))))

(assert (= (and d!816720 c!455905) b!2813550))

(assert (= (and d!816720 (not c!455905)) b!2813551))

(assert (= (and b!2813551 (not res!1171221)) b!2813552))

(declare-fun m!3244149 () Bool)

(assert (=> b!2813550 m!3244149))

(declare-fun m!3244151 () Bool)

(assert (=> b!2813552 m!3244151))

(assert (=> b!2813503 d!816720))

(declare-fun d!816722 () Bool)

(declare-fun c!455906 () Bool)

(assert (=> d!816722 (= c!455906 ((_ is Node!10196) (right!25147 (c!455898 input!3732))))))

(declare-fun e!1779313 () Bool)

(assert (=> d!816722 (= (inv!44705 (right!25147 (c!455898 input!3732))) e!1779313)))

(declare-fun b!2813553 () Bool)

(assert (=> b!2813553 (= e!1779313 (inv!44706 (right!25147 (c!455898 input!3732))))))

(declare-fun b!2813554 () Bool)

(declare-fun e!1779314 () Bool)

(assert (=> b!2813554 (= e!1779313 e!1779314)))

(declare-fun res!1171222 () Bool)

(assert (=> b!2813554 (= res!1171222 (not ((_ is Leaf!15534) (right!25147 (c!455898 input!3732)))))))

(assert (=> b!2813554 (=> res!1171222 e!1779314)))

(declare-fun b!2813555 () Bool)

(assert (=> b!2813555 (= e!1779314 (inv!44707 (right!25147 (c!455898 input!3732))))))

(assert (= (and d!816722 c!455906) b!2813553))

(assert (= (and d!816722 (not c!455906)) b!2813554))

(assert (= (and b!2813554 (not res!1171222)) b!2813555))

(declare-fun m!3244153 () Bool)

(assert (=> b!2813553 m!3244153))

(declare-fun m!3244155 () Bool)

(assert (=> b!2813555 m!3244155))

(assert (=> b!2813503 d!816722))

(declare-fun d!816724 () Bool)

(declare-fun e!1779327 () Bool)

(assert (=> d!816724 e!1779327))

(declare-fun res!1171225 () Bool)

(assert (=> d!816724 (=> (not res!1171225) (not e!1779327))))

(declare-fun lt!1005300 () List!33023)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4592 (List!33023) (InoxSet C!16764))

(assert (=> d!816724 (= res!1171225 (= ((_ map implies) (content!4592 lt!1005300) (content!4592 (list!12327 (c!455898 input!3732)))) ((as const (InoxSet C!16764)) true)))))

(declare-fun e!1779326 () List!33023)

(assert (=> d!816724 (= lt!1005300 e!1779326)))

(declare-fun c!455916 () Bool)

(assert (=> d!816724 (= c!455916 ((_ is Nil!32899) (list!12327 (c!455898 input!3732))))))

(assert (=> d!816724 (= (drop!1769 (list!12327 (c!455898 input!3732)) i!1825) lt!1005300)))

(declare-fun b!2813574 () Bool)

(declare-fun e!1779328 () List!33023)

(assert (=> b!2813574 (= e!1779328 (drop!1769 (t!229997 (list!12327 (c!455898 input!3732))) (- i!1825 1)))))

(declare-fun b!2813575 () Bool)

(declare-fun e!1779329 () Int)

(declare-fun e!1779325 () Int)

(assert (=> b!2813575 (= e!1779329 e!1779325)))

(declare-fun c!455918 () Bool)

(declare-fun call!183167 () Int)

(assert (=> b!2813575 (= c!455918 (>= i!1825 call!183167))))

(declare-fun bm!183162 () Bool)

(assert (=> bm!183162 (= call!183167 (size!25637 (list!12327 (c!455898 input!3732))))))

(declare-fun b!2813576 () Bool)

(assert (=> b!2813576 (= e!1779326 e!1779328)))

(declare-fun c!455917 () Bool)

(assert (=> b!2813576 (= c!455917 (<= i!1825 0))))

(declare-fun b!2813577 () Bool)

(assert (=> b!2813577 (= e!1779326 Nil!32899)))

(declare-fun b!2813578 () Bool)

(assert (=> b!2813578 (= e!1779327 (= (size!25637 lt!1005300) e!1779329))))

(declare-fun c!455915 () Bool)

(assert (=> b!2813578 (= c!455915 (<= i!1825 0))))

(declare-fun b!2813579 () Bool)

(assert (=> b!2813579 (= e!1779329 call!183167)))

(declare-fun b!2813580 () Bool)

(assert (=> b!2813580 (= e!1779325 0)))

(declare-fun b!2813581 () Bool)

(assert (=> b!2813581 (= e!1779325 (- call!183167 i!1825))))

(declare-fun b!2813582 () Bool)

(assert (=> b!2813582 (= e!1779328 (list!12327 (c!455898 input!3732)))))

(assert (= (and d!816724 c!455916) b!2813577))

(assert (= (and d!816724 (not c!455916)) b!2813576))

(assert (= (and b!2813576 c!455917) b!2813582))

(assert (= (and b!2813576 (not c!455917)) b!2813574))

(assert (= (and d!816724 res!1171225) b!2813578))

(assert (= (and b!2813578 c!455915) b!2813579))

(assert (= (and b!2813578 (not c!455915)) b!2813575))

(assert (= (and b!2813575 c!455918) b!2813580))

(assert (= (and b!2813575 (not c!455918)) b!2813581))

(assert (= (or b!2813579 b!2813575 b!2813581) bm!183162))

(declare-fun m!3244159 () Bool)

(assert (=> d!816724 m!3244159))

(assert (=> d!816724 m!3244113))

(declare-fun m!3244161 () Bool)

(assert (=> d!816724 m!3244161))

(declare-fun m!3244163 () Bool)

(assert (=> b!2813574 m!3244163))

(assert (=> bm!183162 m!3244113))

(declare-fun m!3244165 () Bool)

(assert (=> bm!183162 m!3244165))

(declare-fun m!3244167 () Bool)

(assert (=> b!2813578 m!3244167))

(assert (=> d!816712 d!816724))

(declare-fun d!816730 () Bool)

(declare-fun c!455923 () Bool)

(assert (=> d!816730 (= c!455923 ((_ is Empty!10196) (c!455898 input!3732)))))

(declare-fun e!1779337 () List!33023)

(assert (=> d!816730 (= (list!12327 (c!455898 input!3732)) e!1779337)))

(declare-fun b!2813603 () Bool)

(declare-fun e!1779338 () List!33023)

(declare-fun ++!8080 (List!33023 List!33023) List!33023)

(assert (=> b!2813603 (= e!1779338 (++!8080 (list!12327 (left!24817 (c!455898 input!3732))) (list!12327 (right!25147 (c!455898 input!3732)))))))

(declare-fun b!2813602 () Bool)

(assert (=> b!2813602 (= e!1779338 (list!12330 (xs!13308 (c!455898 input!3732))))))

(declare-fun b!2813600 () Bool)

(assert (=> b!2813600 (= e!1779337 Nil!32899)))

(declare-fun b!2813601 () Bool)

(assert (=> b!2813601 (= e!1779337 e!1779338)))

(declare-fun c!455924 () Bool)

(assert (=> b!2813601 (= c!455924 ((_ is Leaf!15534) (c!455898 input!3732)))))

(assert (= (and d!816730 c!455923) b!2813600))

(assert (= (and d!816730 (not c!455923)) b!2813601))

(assert (= (and b!2813601 c!455924) b!2813602))

(assert (= (and b!2813601 (not c!455924)) b!2813603))

(declare-fun m!3244179 () Bool)

(assert (=> b!2813603 m!3244179))

(declare-fun m!3244181 () Bool)

(assert (=> b!2813603 m!3244181))

(assert (=> b!2813603 m!3244179))

(assert (=> b!2813603 m!3244181))

(declare-fun m!3244183 () Bool)

(assert (=> b!2813603 m!3244183))

(assert (=> b!2813602 m!3244133))

(assert (=> d!816712 d!816730))

(declare-fun d!816734 () Bool)

(assert (=> d!816734 (= (inv!44708 (xs!13308 (c!455898 input!3732))) (<= (size!25637 (innerList!10256 (xs!13308 (c!455898 input!3732)))) 2147483647))))

(declare-fun bs!516533 () Bool)

(assert (= bs!516533 d!816734))

(declare-fun m!3244185 () Bool)

(assert (=> bs!516533 m!3244185))

(assert (=> b!2813504 d!816734))

(declare-fun d!816736 () Bool)

(declare-fun lt!1005303 () Int)

(assert (=> d!816736 (>= lt!1005303 0)))

(declare-fun e!1779341 () Int)

(assert (=> d!816736 (= lt!1005303 e!1779341)))

(declare-fun c!455927 () Bool)

(assert (=> d!816736 (= c!455927 ((_ is Nil!32899) (list!12326 input!3732)))))

(assert (=> d!816736 (= (size!25637 (list!12326 input!3732)) lt!1005303)))

(declare-fun b!2813608 () Bool)

(assert (=> b!2813608 (= e!1779341 0)))

(declare-fun b!2813609 () Bool)

(assert (=> b!2813609 (= e!1779341 (+ 1 (size!25637 (t!229997 (list!12326 input!3732)))))))

(assert (= (and d!816736 c!455927) b!2813608))

(assert (= (and d!816736 (not c!455927)) b!2813609))

(declare-fun m!3244187 () Bool)

(assert (=> b!2813609 m!3244187))

(assert (=> d!816704 d!816736))

(declare-fun d!816738 () Bool)

(assert (=> d!816738 (= (list!12326 input!3732) (list!12327 (c!455898 input!3732)))))

(declare-fun bs!516534 () Bool)

(assert (= bs!516534 d!816738))

(assert (=> bs!516534 m!3244113))

(assert (=> d!816704 d!816738))

(declare-fun d!816740 () Bool)

(declare-fun lt!1005306 () Int)

(assert (=> d!816740 (= lt!1005306 (size!25637 (list!12327 (c!455898 input!3732))))))

(assert (=> d!816740 (= lt!1005306 (ite ((_ is Empty!10196) (c!455898 input!3732)) 0 (ite ((_ is Leaf!15534) (c!455898 input!3732)) (csize!20623 (c!455898 input!3732)) (csize!20622 (c!455898 input!3732)))))))

(assert (=> d!816740 (= (size!25638 (c!455898 input!3732)) lt!1005306)))

(declare-fun bs!516535 () Bool)

(assert (= bs!516535 d!816740))

(assert (=> bs!516535 m!3244113))

(assert (=> bs!516535 m!3244113))

(assert (=> bs!516535 m!3244165))

(assert (=> d!816704 d!816740))

(declare-fun d!816742 () Bool)

(declare-fun res!1171263 () Bool)

(declare-fun e!1779352 () Bool)

(assert (=> d!816742 (=> (not res!1171263) (not e!1779352))))

(assert (=> d!816742 (= res!1171263 (= (csize!20622 (c!455898 input!3732)) (+ (size!25638 (left!24817 (c!455898 input!3732))) (size!25638 (right!25147 (c!455898 input!3732))))))))

(assert (=> d!816742 (= (inv!44706 (c!455898 input!3732)) e!1779352)))

(declare-fun b!2813638 () Bool)

(declare-fun res!1171264 () Bool)

(assert (=> b!2813638 (=> (not res!1171264) (not e!1779352))))

(assert (=> b!2813638 (= res!1171264 (and (not (= (left!24817 (c!455898 input!3732)) Empty!10196)) (not (= (right!25147 (c!455898 input!3732)) Empty!10196))))))

(declare-fun b!2813639 () Bool)

(declare-fun res!1171265 () Bool)

(assert (=> b!2813639 (=> (not res!1171265) (not e!1779352))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2813639 (= res!1171265 (= (cheight!10407 (c!455898 input!3732)) (+ (max!0 (height!1499 (left!24817 (c!455898 input!3732))) (height!1499 (right!25147 (c!455898 input!3732)))) 1)))))

(declare-fun b!2813640 () Bool)

(assert (=> b!2813640 (= e!1779352 (<= 0 (cheight!10407 (c!455898 input!3732))))))

(assert (= (and d!816742 res!1171263) b!2813638))

(assert (= (and b!2813638 res!1171264) b!2813639))

(assert (= (and b!2813639 res!1171265) b!2813640))

(declare-fun m!3244197 () Bool)

(assert (=> d!816742 m!3244197))

(declare-fun m!3244199 () Bool)

(assert (=> d!816742 m!3244199))

(assert (=> b!2813639 m!3244137))

(assert (=> b!2813639 m!3244139))

(assert (=> b!2813639 m!3244137))

(assert (=> b!2813639 m!3244139))

(declare-fun m!3244201 () Bool)

(assert (=> b!2813639 m!3244201))

(assert (=> b!2813492 d!816742))

(declare-fun tp!898448 () Bool)

(declare-fun b!2813641 () Bool)

(declare-fun tp!898447 () Bool)

(declare-fun e!1779354 () Bool)

(assert (=> b!2813641 (= e!1779354 (and (inv!44705 (left!24817 (left!24817 (c!455898 input!3732)))) tp!898447 (inv!44705 (right!25147 (left!24817 (c!455898 input!3732)))) tp!898448))))

(declare-fun b!2813643 () Bool)

(declare-fun e!1779353 () Bool)

(declare-fun tp!898449 () Bool)

(assert (=> b!2813643 (= e!1779353 tp!898449)))

(declare-fun b!2813642 () Bool)

(assert (=> b!2813642 (= e!1779354 (and (inv!44708 (xs!13308 (left!24817 (c!455898 input!3732)))) e!1779353))))

(assert (=> b!2813503 (= tp!898435 (and (inv!44705 (left!24817 (c!455898 input!3732))) e!1779354))))

(assert (= (and b!2813503 ((_ is Node!10196) (left!24817 (c!455898 input!3732)))) b!2813641))

(assert (= b!2813642 b!2813643))

(assert (= (and b!2813503 ((_ is Leaf!15534) (left!24817 (c!455898 input!3732)))) b!2813642))

(declare-fun m!3244203 () Bool)

(assert (=> b!2813641 m!3244203))

(declare-fun m!3244205 () Bool)

(assert (=> b!2813641 m!3244205))

(declare-fun m!3244207 () Bool)

(assert (=> b!2813642 m!3244207))

(assert (=> b!2813503 m!3244117))

(declare-fun e!1779357 () Bool)

(declare-fun b!2813646 () Bool)

(declare-fun tp!898451 () Bool)

(declare-fun tp!898450 () Bool)

(assert (=> b!2813646 (= e!1779357 (and (inv!44705 (left!24817 (right!25147 (c!455898 input!3732)))) tp!898450 (inv!44705 (right!25147 (right!25147 (c!455898 input!3732)))) tp!898451))))

(declare-fun b!2813648 () Bool)

(declare-fun e!1779356 () Bool)

(declare-fun tp!898452 () Bool)

(assert (=> b!2813648 (= e!1779356 tp!898452)))

(declare-fun b!2813647 () Bool)

(assert (=> b!2813647 (= e!1779357 (and (inv!44708 (xs!13308 (right!25147 (c!455898 input!3732)))) e!1779356))))

(assert (=> b!2813503 (= tp!898436 (and (inv!44705 (right!25147 (c!455898 input!3732))) e!1779357))))

(assert (= (and b!2813503 ((_ is Node!10196) (right!25147 (c!455898 input!3732)))) b!2813646))

(assert (= b!2813647 b!2813648))

(assert (= (and b!2813503 ((_ is Leaf!15534) (right!25147 (c!455898 input!3732)))) b!2813647))

(declare-fun m!3244213 () Bool)

(assert (=> b!2813646 m!3244213))

(declare-fun m!3244215 () Bool)

(assert (=> b!2813646 m!3244215))

(declare-fun m!3244217 () Bool)

(assert (=> b!2813647 m!3244217))

(assert (=> b!2813503 m!3244119))

(declare-fun b!2813653 () Bool)

(declare-fun e!1779360 () Bool)

(declare-fun tp_is_empty!14417 () Bool)

(declare-fun tp!898455 () Bool)

(assert (=> b!2813653 (= e!1779360 (and tp_is_empty!14417 tp!898455))))

(assert (=> b!2813505 (= tp!898437 e!1779360)))

(assert (= (and b!2813505 ((_ is Cons!32899) (innerList!10256 (xs!13308 (c!455898 input!3732))))) b!2813653))

(check-sat (not b!2813642) (not b!2813544) (not b!2813653) tp_is_empty!14417 (not b!2813603) (not d!816734) (not b!2813548) (not b!2813549) (not d!816724) (not b!2813546) (not b!2813646) (not b!2813648) (not b!2813553) (not b!2813609) (not b!2813503) (not d!816716) (not b!2813647) (not d!816742) (not b!2813578) (not d!816740) (not b!2813641) (not b!2813574) (not b!2813639) (not b!2813555) (not b!2813602) (not b!2813530) (not bm!183162) (not b!2813552) (not b!2813643) (not b!2813547) (not b!2813550) (not d!816738) (not b!2813545))
(check-sat)
(get-model)

(declare-fun d!816760 () Bool)

(declare-fun lt!1005316 () Int)

(assert (=> d!816760 (>= lt!1005316 0)))

(declare-fun e!1779396 () Int)

(assert (=> d!816760 (= lt!1005316 e!1779396)))

(declare-fun c!455951 () Bool)

(assert (=> d!816760 (= c!455951 ((_ is Nil!32899) (list!12327 (c!455898 input!3732))))))

(assert (=> d!816760 (= (size!25637 (list!12327 (c!455898 input!3732))) lt!1005316)))

(declare-fun b!2813716 () Bool)

(assert (=> b!2813716 (= e!1779396 0)))

(declare-fun b!2813717 () Bool)

(assert (=> b!2813717 (= e!1779396 (+ 1 (size!25637 (t!229997 (list!12327 (c!455898 input!3732))))))))

(assert (= (and d!816760 c!455951) b!2813716))

(assert (= (and d!816760 (not c!455951)) b!2813717))

(declare-fun m!3244257 () Bool)

(assert (=> b!2813717 m!3244257))

(assert (=> d!816740 d!816760))

(assert (=> d!816740 d!816730))

(declare-fun d!816762 () Bool)

(declare-fun lt!1005317 () Int)

(assert (=> d!816762 (>= lt!1005317 0)))

(declare-fun e!1779397 () Int)

(assert (=> d!816762 (= lt!1005317 e!1779397)))

(declare-fun c!455952 () Bool)

(assert (=> d!816762 (= c!455952 ((_ is Nil!32899) (list!12330 (xs!13308 (c!455898 input!3732)))))))

(assert (=> d!816762 (= (size!25637 (list!12330 (xs!13308 (c!455898 input!3732)))) lt!1005317)))

(declare-fun b!2813718 () Bool)

(assert (=> b!2813718 (= e!1779397 0)))

(declare-fun b!2813719 () Bool)

(assert (=> b!2813719 (= e!1779397 (+ 1 (size!25637 (t!229997 (list!12330 (xs!13308 (c!455898 input!3732)))))))))

(assert (= (and d!816762 c!455952) b!2813718))

(assert (= (and d!816762 (not c!455952)) b!2813719))

(declare-fun m!3244259 () Bool)

(assert (=> b!2813719 m!3244259))

(assert (=> d!816716 d!816762))

(declare-fun d!816764 () Bool)

(assert (=> d!816764 (= (list!12330 (xs!13308 (c!455898 input!3732))) (innerList!10256 (xs!13308 (c!455898 input!3732))))))

(assert (=> d!816716 d!816764))

(declare-fun d!816766 () Bool)

(assert (=> d!816766 (= (inv!44708 (xs!13308 (left!24817 (c!455898 input!3732)))) (<= (size!25637 (innerList!10256 (xs!13308 (left!24817 (c!455898 input!3732))))) 2147483647))))

(declare-fun bs!516538 () Bool)

(assert (= bs!516538 d!816766))

(declare-fun m!3244261 () Bool)

(assert (=> bs!516538 m!3244261))

(assert (=> b!2813642 d!816766))

(declare-fun d!816768 () Bool)

(declare-fun lt!1005318 () Int)

(assert (=> d!816768 (>= lt!1005318 0)))

(declare-fun e!1779398 () Int)

(assert (=> d!816768 (= lt!1005318 e!1779398)))

(declare-fun c!455953 () Bool)

(assert (=> d!816768 (= c!455953 ((_ is Nil!32899) (t!229997 (list!12326 input!3732))))))

(assert (=> d!816768 (= (size!25637 (t!229997 (list!12326 input!3732))) lt!1005318)))

(declare-fun b!2813720 () Bool)

(assert (=> b!2813720 (= e!1779398 0)))

(declare-fun b!2813721 () Bool)

(assert (=> b!2813721 (= e!1779398 (+ 1 (size!25637 (t!229997 (t!229997 (list!12326 input!3732))))))))

(assert (= (and d!816768 c!455953) b!2813720))

(assert (= (and d!816768 (not c!455953)) b!2813721))

(declare-fun m!3244263 () Bool)

(assert (=> b!2813721 m!3244263))

(assert (=> b!2813609 d!816768))

(declare-fun b!2813722 () Bool)

(declare-fun res!1171276 () Bool)

(declare-fun e!1779399 () Bool)

(assert (=> b!2813722 (=> (not res!1171276) (not e!1779399))))

(assert (=> b!2813722 (= res!1171276 (isBalanced!3090 (right!25147 (right!25147 (c!455898 input!3732)))))))

(declare-fun b!2813723 () Bool)

(declare-fun e!1779400 () Bool)

(assert (=> b!2813723 (= e!1779400 e!1779399)))

(declare-fun res!1171275 () Bool)

(assert (=> b!2813723 (=> (not res!1171275) (not e!1779399))))

(assert (=> b!2813723 (= res!1171275 (<= (- 1) (- (height!1499 (left!24817 (right!25147 (c!455898 input!3732)))) (height!1499 (right!25147 (right!25147 (c!455898 input!3732)))))))))

(declare-fun b!2813724 () Bool)

(declare-fun res!1171273 () Bool)

(assert (=> b!2813724 (=> (not res!1171273) (not e!1779399))))

(assert (=> b!2813724 (= res!1171273 (isBalanced!3090 (left!24817 (right!25147 (c!455898 input!3732)))))))

(declare-fun b!2813725 () Bool)

(declare-fun res!1171274 () Bool)

(assert (=> b!2813725 (=> (not res!1171274) (not e!1779399))))

(assert (=> b!2813725 (= res!1171274 (<= (- (height!1499 (left!24817 (right!25147 (c!455898 input!3732)))) (height!1499 (right!25147 (right!25147 (c!455898 input!3732))))) 1))))

(declare-fun b!2813726 () Bool)

(assert (=> b!2813726 (= e!1779399 (not (isEmpty!18219 (right!25147 (right!25147 (c!455898 input!3732))))))))

(declare-fun d!816770 () Bool)

(declare-fun res!1171278 () Bool)

(assert (=> d!816770 (=> res!1171278 e!1779400)))

(assert (=> d!816770 (= res!1171278 (not ((_ is Node!10196) (right!25147 (c!455898 input!3732)))))))

(assert (=> d!816770 (= (isBalanced!3090 (right!25147 (c!455898 input!3732))) e!1779400)))

(declare-fun b!2813727 () Bool)

(declare-fun res!1171277 () Bool)

(assert (=> b!2813727 (=> (not res!1171277) (not e!1779399))))

(assert (=> b!2813727 (= res!1171277 (not (isEmpty!18219 (left!24817 (right!25147 (c!455898 input!3732))))))))

(assert (= (and d!816770 (not res!1171278)) b!2813723))

(assert (= (and b!2813723 res!1171275) b!2813725))

(assert (= (and b!2813725 res!1171274) b!2813724))

(assert (= (and b!2813724 res!1171273) b!2813722))

(assert (= (and b!2813722 res!1171276) b!2813727))

(assert (= (and b!2813727 res!1171277) b!2813726))

(declare-fun m!3244265 () Bool)

(assert (=> b!2813723 m!3244265))

(declare-fun m!3244267 () Bool)

(assert (=> b!2813723 m!3244267))

(assert (=> b!2813725 m!3244265))

(assert (=> b!2813725 m!3244267))

(declare-fun m!3244269 () Bool)

(assert (=> b!2813727 m!3244269))

(declare-fun m!3244271 () Bool)

(assert (=> b!2813724 m!3244271))

(declare-fun m!3244273 () Bool)

(assert (=> b!2813726 m!3244273))

(declare-fun m!3244275 () Bool)

(assert (=> b!2813722 m!3244275))

(assert (=> b!2813544 d!816770))

(declare-fun d!816772 () Bool)

(declare-fun c!455954 () Bool)

(assert (=> d!816772 (= c!455954 ((_ is Node!10196) (left!24817 (left!24817 (c!455898 input!3732)))))))

(declare-fun e!1779401 () Bool)

(assert (=> d!816772 (= (inv!44705 (left!24817 (left!24817 (c!455898 input!3732)))) e!1779401)))

(declare-fun b!2813728 () Bool)

(assert (=> b!2813728 (= e!1779401 (inv!44706 (left!24817 (left!24817 (c!455898 input!3732)))))))

(declare-fun b!2813729 () Bool)

(declare-fun e!1779402 () Bool)

(assert (=> b!2813729 (= e!1779401 e!1779402)))

(declare-fun res!1171279 () Bool)

(assert (=> b!2813729 (= res!1171279 (not ((_ is Leaf!15534) (left!24817 (left!24817 (c!455898 input!3732))))))))

(assert (=> b!2813729 (=> res!1171279 e!1779402)))

(declare-fun b!2813730 () Bool)

(assert (=> b!2813730 (= e!1779402 (inv!44707 (left!24817 (left!24817 (c!455898 input!3732)))))))

(assert (= (and d!816772 c!455954) b!2813728))

(assert (= (and d!816772 (not c!455954)) b!2813729))

(assert (= (and b!2813729 (not res!1171279)) b!2813730))

(declare-fun m!3244277 () Bool)

(assert (=> b!2813728 m!3244277))

(declare-fun m!3244279 () Bool)

(assert (=> b!2813730 m!3244279))

(assert (=> b!2813641 d!816772))

(declare-fun d!816774 () Bool)

(declare-fun c!455955 () Bool)

(assert (=> d!816774 (= c!455955 ((_ is Node!10196) (right!25147 (left!24817 (c!455898 input!3732)))))))

(declare-fun e!1779403 () Bool)

(assert (=> d!816774 (= (inv!44705 (right!25147 (left!24817 (c!455898 input!3732)))) e!1779403)))

(declare-fun b!2813731 () Bool)

(assert (=> b!2813731 (= e!1779403 (inv!44706 (right!25147 (left!24817 (c!455898 input!3732)))))))

(declare-fun b!2813732 () Bool)

(declare-fun e!1779404 () Bool)

(assert (=> b!2813732 (= e!1779403 e!1779404)))

(declare-fun res!1171280 () Bool)

(assert (=> b!2813732 (= res!1171280 (not ((_ is Leaf!15534) (right!25147 (left!24817 (c!455898 input!3732))))))))

(assert (=> b!2813732 (=> res!1171280 e!1779404)))

(declare-fun b!2813733 () Bool)

(assert (=> b!2813733 (= e!1779404 (inv!44707 (right!25147 (left!24817 (c!455898 input!3732)))))))

(assert (= (and d!816774 c!455955) b!2813731))

(assert (= (and d!816774 (not c!455955)) b!2813732))

(assert (= (and b!2813732 (not res!1171280)) b!2813733))

(declare-fun m!3244281 () Bool)

(assert (=> b!2813731 m!3244281))

(declare-fun m!3244283 () Bool)

(assert (=> b!2813733 m!3244283))

(assert (=> b!2813641 d!816774))

(declare-fun d!816776 () Bool)

(assert (=> d!816776 (= (height!1499 (left!24817 (c!455898 input!3732))) (ite ((_ is Empty!10196) (left!24817 (c!455898 input!3732))) 0 (ite ((_ is Leaf!15534) (left!24817 (c!455898 input!3732))) 1 (cheight!10407 (left!24817 (c!455898 input!3732))))))))

(assert (=> b!2813545 d!816776))

(declare-fun d!816778 () Bool)

(assert (=> d!816778 (= (height!1499 (right!25147 (c!455898 input!3732))) (ite ((_ is Empty!10196) (right!25147 (c!455898 input!3732))) 0 (ite ((_ is Leaf!15534) (right!25147 (c!455898 input!3732))) 1 (cheight!10407 (right!25147 (c!455898 input!3732))))))))

(assert (=> b!2813545 d!816778))

(declare-fun d!816780 () Bool)

(assert (=> d!816780 (= (inv!44708 (xs!13308 (right!25147 (c!455898 input!3732)))) (<= (size!25637 (innerList!10256 (xs!13308 (right!25147 (c!455898 input!3732))))) 2147483647))))

(declare-fun bs!516539 () Bool)

(assert (= bs!516539 d!816780))

(declare-fun m!3244285 () Bool)

(assert (=> bs!516539 m!3244285))

(assert (=> b!2813647 d!816780))

(declare-fun b!2813734 () Bool)

(declare-fun res!1171284 () Bool)

(declare-fun e!1779405 () Bool)

(assert (=> b!2813734 (=> (not res!1171284) (not e!1779405))))

(assert (=> b!2813734 (= res!1171284 (isBalanced!3090 (right!25147 (left!24817 (c!455898 input!3732)))))))

(declare-fun b!2813735 () Bool)

(declare-fun e!1779406 () Bool)

(assert (=> b!2813735 (= e!1779406 e!1779405)))

(declare-fun res!1171283 () Bool)

(assert (=> b!2813735 (=> (not res!1171283) (not e!1779405))))

(assert (=> b!2813735 (= res!1171283 (<= (- 1) (- (height!1499 (left!24817 (left!24817 (c!455898 input!3732)))) (height!1499 (right!25147 (left!24817 (c!455898 input!3732)))))))))

(declare-fun b!2813736 () Bool)

(declare-fun res!1171281 () Bool)

(assert (=> b!2813736 (=> (not res!1171281) (not e!1779405))))

(assert (=> b!2813736 (= res!1171281 (isBalanced!3090 (left!24817 (left!24817 (c!455898 input!3732)))))))

(declare-fun b!2813737 () Bool)

(declare-fun res!1171282 () Bool)

(assert (=> b!2813737 (=> (not res!1171282) (not e!1779405))))

(assert (=> b!2813737 (= res!1171282 (<= (- (height!1499 (left!24817 (left!24817 (c!455898 input!3732)))) (height!1499 (right!25147 (left!24817 (c!455898 input!3732))))) 1))))

(declare-fun b!2813738 () Bool)

(assert (=> b!2813738 (= e!1779405 (not (isEmpty!18219 (right!25147 (left!24817 (c!455898 input!3732))))))))

(declare-fun d!816782 () Bool)

(declare-fun res!1171286 () Bool)

(assert (=> d!816782 (=> res!1171286 e!1779406)))

(assert (=> d!816782 (= res!1171286 (not ((_ is Node!10196) (left!24817 (c!455898 input!3732)))))))

(assert (=> d!816782 (= (isBalanced!3090 (left!24817 (c!455898 input!3732))) e!1779406)))

(declare-fun b!2813739 () Bool)

(declare-fun res!1171285 () Bool)

(assert (=> b!2813739 (=> (not res!1171285) (not e!1779405))))

(assert (=> b!2813739 (= res!1171285 (not (isEmpty!18219 (left!24817 (left!24817 (c!455898 input!3732))))))))

(assert (= (and d!816782 (not res!1171286)) b!2813735))

(assert (= (and b!2813735 res!1171283) b!2813737))

(assert (= (and b!2813737 res!1171282) b!2813736))

(assert (= (and b!2813736 res!1171281) b!2813734))

(assert (= (and b!2813734 res!1171284) b!2813739))

(assert (= (and b!2813739 res!1171285) b!2813738))

(declare-fun m!3244287 () Bool)

(assert (=> b!2813735 m!3244287))

(declare-fun m!3244289 () Bool)

(assert (=> b!2813735 m!3244289))

(assert (=> b!2813737 m!3244287))

(assert (=> b!2813737 m!3244289))

(declare-fun m!3244291 () Bool)

(assert (=> b!2813739 m!3244291))

(declare-fun m!3244293 () Bool)

(assert (=> b!2813736 m!3244293))

(declare-fun m!3244295 () Bool)

(assert (=> b!2813738 m!3244295))

(declare-fun m!3244297 () Bool)

(assert (=> b!2813734 m!3244297))

(assert (=> b!2813546 d!816782))

(declare-fun d!816784 () Bool)

(declare-fun c!455958 () Bool)

(assert (=> d!816784 (= c!455958 ((_ is Nil!32899) lt!1005300))))

(declare-fun e!1779409 () (InoxSet C!16764))

(assert (=> d!816784 (= (content!4592 lt!1005300) e!1779409)))

(declare-fun b!2813744 () Bool)

(assert (=> b!2813744 (= e!1779409 ((as const (Array C!16764 Bool)) false))))

(declare-fun b!2813745 () Bool)

(assert (=> b!2813745 (= e!1779409 ((_ map or) (store ((as const (Array C!16764 Bool)) false) (h!38319 lt!1005300) true) (content!4592 (t!229997 lt!1005300))))))

(assert (= (and d!816784 c!455958) b!2813744))

(assert (= (and d!816784 (not c!455958)) b!2813745))

(declare-fun m!3244299 () Bool)

(assert (=> b!2813745 m!3244299))

(declare-fun m!3244301 () Bool)

(assert (=> b!2813745 m!3244301))

(assert (=> d!816724 d!816784))

(declare-fun d!816786 () Bool)

(declare-fun c!455959 () Bool)

(assert (=> d!816786 (= c!455959 ((_ is Nil!32899) (list!12327 (c!455898 input!3732))))))

(declare-fun e!1779410 () (InoxSet C!16764))

(assert (=> d!816786 (= (content!4592 (list!12327 (c!455898 input!3732))) e!1779410)))

(declare-fun b!2813746 () Bool)

(assert (=> b!2813746 (= e!1779410 ((as const (Array C!16764 Bool)) false))))

(declare-fun b!2813747 () Bool)

(assert (=> b!2813747 (= e!1779410 ((_ map or) (store ((as const (Array C!16764 Bool)) false) (h!38319 (list!12327 (c!455898 input!3732))) true) (content!4592 (t!229997 (list!12327 (c!455898 input!3732))))))))

(assert (= (and d!816786 c!455959) b!2813746))

(assert (= (and d!816786 (not c!455959)) b!2813747))

(declare-fun m!3244303 () Bool)

(assert (=> b!2813747 m!3244303))

(declare-fun m!3244305 () Bool)

(assert (=> b!2813747 m!3244305))

(assert (=> d!816724 d!816786))

(declare-fun d!816788 () Bool)

(declare-fun c!455960 () Bool)

(assert (=> d!816788 (= c!455960 ((_ is Node!10196) (left!24817 (right!25147 (c!455898 input!3732)))))))

(declare-fun e!1779411 () Bool)

(assert (=> d!816788 (= (inv!44705 (left!24817 (right!25147 (c!455898 input!3732)))) e!1779411)))

(declare-fun b!2813748 () Bool)

(assert (=> b!2813748 (= e!1779411 (inv!44706 (left!24817 (right!25147 (c!455898 input!3732)))))))

(declare-fun b!2813749 () Bool)

(declare-fun e!1779412 () Bool)

(assert (=> b!2813749 (= e!1779411 e!1779412)))

(declare-fun res!1171287 () Bool)

(assert (=> b!2813749 (= res!1171287 (not ((_ is Leaf!15534) (left!24817 (right!25147 (c!455898 input!3732))))))))

(assert (=> b!2813749 (=> res!1171287 e!1779412)))

(declare-fun b!2813750 () Bool)

(assert (=> b!2813750 (= e!1779412 (inv!44707 (left!24817 (right!25147 (c!455898 input!3732)))))))

(assert (= (and d!816788 c!455960) b!2813748))

(assert (= (and d!816788 (not c!455960)) b!2813749))

(assert (= (and b!2813749 (not res!1171287)) b!2813750))

(declare-fun m!3244307 () Bool)

(assert (=> b!2813748 m!3244307))

(declare-fun m!3244309 () Bool)

(assert (=> b!2813750 m!3244309))

(assert (=> b!2813646 d!816788))

(declare-fun d!816790 () Bool)

(declare-fun c!455961 () Bool)

(assert (=> d!816790 (= c!455961 ((_ is Node!10196) (right!25147 (right!25147 (c!455898 input!3732)))))))

(declare-fun e!1779413 () Bool)

(assert (=> d!816790 (= (inv!44705 (right!25147 (right!25147 (c!455898 input!3732)))) e!1779413)))

(declare-fun b!2813751 () Bool)

(assert (=> b!2813751 (= e!1779413 (inv!44706 (right!25147 (right!25147 (c!455898 input!3732)))))))

(declare-fun b!2813752 () Bool)

(declare-fun e!1779414 () Bool)

(assert (=> b!2813752 (= e!1779413 e!1779414)))

(declare-fun res!1171288 () Bool)

(assert (=> b!2813752 (= res!1171288 (not ((_ is Leaf!15534) (right!25147 (right!25147 (c!455898 input!3732))))))))

(assert (=> b!2813752 (=> res!1171288 e!1779414)))

(declare-fun b!2813753 () Bool)

(assert (=> b!2813753 (= e!1779414 (inv!44707 (right!25147 (right!25147 (c!455898 input!3732)))))))

(assert (= (and d!816790 c!455961) b!2813751))

(assert (= (and d!816790 (not c!455961)) b!2813752))

(assert (= (and b!2813752 (not res!1171288)) b!2813753))

(declare-fun m!3244311 () Bool)

(assert (=> b!2813751 m!3244311))

(declare-fun m!3244313 () Bool)

(assert (=> b!2813753 m!3244313))

(assert (=> b!2813646 d!816790))

(declare-fun d!816792 () Bool)

(declare-fun res!1171289 () Bool)

(declare-fun e!1779415 () Bool)

(assert (=> d!816792 (=> (not res!1171289) (not e!1779415))))

(assert (=> d!816792 (= res!1171289 (= (csize!20622 (left!24817 (c!455898 input!3732))) (+ (size!25638 (left!24817 (left!24817 (c!455898 input!3732)))) (size!25638 (right!25147 (left!24817 (c!455898 input!3732)))))))))

(assert (=> d!816792 (= (inv!44706 (left!24817 (c!455898 input!3732))) e!1779415)))

(declare-fun b!2813754 () Bool)

(declare-fun res!1171290 () Bool)

(assert (=> b!2813754 (=> (not res!1171290) (not e!1779415))))

(assert (=> b!2813754 (= res!1171290 (and (not (= (left!24817 (left!24817 (c!455898 input!3732))) Empty!10196)) (not (= (right!25147 (left!24817 (c!455898 input!3732))) Empty!10196))))))

(declare-fun b!2813755 () Bool)

(declare-fun res!1171291 () Bool)

(assert (=> b!2813755 (=> (not res!1171291) (not e!1779415))))

(assert (=> b!2813755 (= res!1171291 (= (cheight!10407 (left!24817 (c!455898 input!3732))) (+ (max!0 (height!1499 (left!24817 (left!24817 (c!455898 input!3732)))) (height!1499 (right!25147 (left!24817 (c!455898 input!3732))))) 1)))))

(declare-fun b!2813756 () Bool)

(assert (=> b!2813756 (= e!1779415 (<= 0 (cheight!10407 (left!24817 (c!455898 input!3732)))))))

(assert (= (and d!816792 res!1171289) b!2813754))

(assert (= (and b!2813754 res!1171290) b!2813755))

(assert (= (and b!2813755 res!1171291) b!2813756))

(declare-fun m!3244315 () Bool)

(assert (=> d!816792 m!3244315))

(declare-fun m!3244317 () Bool)

(assert (=> d!816792 m!3244317))

(assert (=> b!2813755 m!3244287))

(assert (=> b!2813755 m!3244289))

(assert (=> b!2813755 m!3244287))

(assert (=> b!2813755 m!3244289))

(declare-fun m!3244319 () Bool)

(assert (=> b!2813755 m!3244319))

(assert (=> b!2813550 d!816792))

(assert (=> b!2813547 d!816776))

(assert (=> b!2813547 d!816778))

(assert (=> d!816738 d!816730))

(declare-fun d!816794 () Bool)

(declare-fun lt!1005321 () Bool)

(assert (=> d!816794 (= lt!1005321 (isEmpty!18218 (list!12327 (right!25147 (c!455898 input!3732)))))))

(assert (=> d!816794 (= lt!1005321 (= (size!25638 (right!25147 (c!455898 input!3732))) 0))))

(assert (=> d!816794 (= (isEmpty!18219 (right!25147 (c!455898 input!3732))) lt!1005321)))

(declare-fun bs!516540 () Bool)

(assert (= bs!516540 d!816794))

(assert (=> bs!516540 m!3244181))

(assert (=> bs!516540 m!3244181))

(declare-fun m!3244321 () Bool)

(assert (=> bs!516540 m!3244321))

(assert (=> bs!516540 m!3244199))

(assert (=> b!2813548 d!816794))

(declare-fun d!816796 () Bool)

(declare-fun res!1171292 () Bool)

(declare-fun e!1779416 () Bool)

(assert (=> d!816796 (=> (not res!1171292) (not e!1779416))))

(assert (=> d!816796 (= res!1171292 (<= (size!25637 (list!12330 (xs!13308 (left!24817 (c!455898 input!3732))))) 512))))

(assert (=> d!816796 (= (inv!44707 (left!24817 (c!455898 input!3732))) e!1779416)))

(declare-fun b!2813757 () Bool)

(declare-fun res!1171293 () Bool)

(assert (=> b!2813757 (=> (not res!1171293) (not e!1779416))))

(assert (=> b!2813757 (= res!1171293 (= (csize!20623 (left!24817 (c!455898 input!3732))) (size!25637 (list!12330 (xs!13308 (left!24817 (c!455898 input!3732)))))))))

(declare-fun b!2813758 () Bool)

(assert (=> b!2813758 (= e!1779416 (and (> (csize!20623 (left!24817 (c!455898 input!3732))) 0) (<= (csize!20623 (left!24817 (c!455898 input!3732))) 512)))))

(assert (= (and d!816796 res!1171292) b!2813757))

(assert (= (and b!2813757 res!1171293) b!2813758))

(declare-fun m!3244323 () Bool)

(assert (=> d!816796 m!3244323))

(assert (=> d!816796 m!3244323))

(declare-fun m!3244325 () Bool)

(assert (=> d!816796 m!3244325))

(assert (=> b!2813757 m!3244323))

(assert (=> b!2813757 m!3244323))

(assert (=> b!2813757 m!3244325))

(assert (=> b!2813552 d!816796))

(declare-fun d!816798 () Bool)

(declare-fun lt!1005322 () Bool)

(assert (=> d!816798 (= lt!1005322 (isEmpty!18218 (list!12327 (left!24817 (c!455898 input!3732)))))))

(assert (=> d!816798 (= lt!1005322 (= (size!25638 (left!24817 (c!455898 input!3732))) 0))))

(assert (=> d!816798 (= (isEmpty!18219 (left!24817 (c!455898 input!3732))) lt!1005322)))

(declare-fun bs!516541 () Bool)

(assert (= bs!516541 d!816798))

(assert (=> bs!516541 m!3244179))

(assert (=> bs!516541 m!3244179))

(declare-fun m!3244327 () Bool)

(assert (=> bs!516541 m!3244327))

(assert (=> bs!516541 m!3244197))

(assert (=> b!2813549 d!816798))

(declare-fun d!816800 () Bool)

(declare-fun lt!1005323 () Int)

(assert (=> d!816800 (= lt!1005323 (size!25637 (list!12327 (left!24817 (c!455898 input!3732)))))))

(assert (=> d!816800 (= lt!1005323 (ite ((_ is Empty!10196) (left!24817 (c!455898 input!3732))) 0 (ite ((_ is Leaf!15534) (left!24817 (c!455898 input!3732))) (csize!20623 (left!24817 (c!455898 input!3732))) (csize!20622 (left!24817 (c!455898 input!3732))))))))

(assert (=> d!816800 (= (size!25638 (left!24817 (c!455898 input!3732))) lt!1005323)))

(declare-fun bs!516542 () Bool)

(assert (= bs!516542 d!816800))

(assert (=> bs!516542 m!3244179))

(assert (=> bs!516542 m!3244179))

(declare-fun m!3244329 () Bool)

(assert (=> bs!516542 m!3244329))

(assert (=> d!816742 d!816800))

(declare-fun d!816802 () Bool)

(declare-fun lt!1005324 () Int)

(assert (=> d!816802 (= lt!1005324 (size!25637 (list!12327 (right!25147 (c!455898 input!3732)))))))

(assert (=> d!816802 (= lt!1005324 (ite ((_ is Empty!10196) (right!25147 (c!455898 input!3732))) 0 (ite ((_ is Leaf!15534) (right!25147 (c!455898 input!3732))) (csize!20623 (right!25147 (c!455898 input!3732))) (csize!20622 (right!25147 (c!455898 input!3732))))))))

(assert (=> d!816802 (= (size!25638 (right!25147 (c!455898 input!3732))) lt!1005324)))

(declare-fun bs!516543 () Bool)

(assert (= bs!516543 d!816802))

(assert (=> bs!516543 m!3244181))

(assert (=> bs!516543 m!3244181))

(declare-fun m!3244331 () Bool)

(assert (=> bs!516543 m!3244331))

(assert (=> d!816742 d!816802))

(declare-fun d!816804 () Bool)

(declare-fun e!1779419 () Bool)

(assert (=> d!816804 e!1779419))

(declare-fun res!1171294 () Bool)

(assert (=> d!816804 (=> (not res!1171294) (not e!1779419))))

(declare-fun lt!1005325 () List!33023)

(assert (=> d!816804 (= res!1171294 (= ((_ map implies) (content!4592 lt!1005325) (content!4592 (t!229997 (list!12327 (c!455898 input!3732))))) ((as const (InoxSet C!16764)) true)))))

(declare-fun e!1779418 () List!33023)

(assert (=> d!816804 (= lt!1005325 e!1779418)))

(declare-fun c!455963 () Bool)

(assert (=> d!816804 (= c!455963 ((_ is Nil!32899) (t!229997 (list!12327 (c!455898 input!3732)))))))

(assert (=> d!816804 (= (drop!1769 (t!229997 (list!12327 (c!455898 input!3732))) (- i!1825 1)) lt!1005325)))

(declare-fun b!2813759 () Bool)

(declare-fun e!1779420 () List!33023)

(assert (=> b!2813759 (= e!1779420 (drop!1769 (t!229997 (t!229997 (list!12327 (c!455898 input!3732)))) (- (- i!1825 1) 1)))))

(declare-fun b!2813760 () Bool)

(declare-fun e!1779421 () Int)

(declare-fun e!1779417 () Int)

(assert (=> b!2813760 (= e!1779421 e!1779417)))

(declare-fun c!455965 () Bool)

(declare-fun call!183171 () Int)

(assert (=> b!2813760 (= c!455965 (>= (- i!1825 1) call!183171))))

(declare-fun bm!183166 () Bool)

(assert (=> bm!183166 (= call!183171 (size!25637 (t!229997 (list!12327 (c!455898 input!3732)))))))

(declare-fun b!2813761 () Bool)

(assert (=> b!2813761 (= e!1779418 e!1779420)))

(declare-fun c!455964 () Bool)

(assert (=> b!2813761 (= c!455964 (<= (- i!1825 1) 0))))

(declare-fun b!2813762 () Bool)

(assert (=> b!2813762 (= e!1779418 Nil!32899)))

(declare-fun b!2813763 () Bool)

(assert (=> b!2813763 (= e!1779419 (= (size!25637 lt!1005325) e!1779421))))

(declare-fun c!455962 () Bool)

(assert (=> b!2813763 (= c!455962 (<= (- i!1825 1) 0))))

(declare-fun b!2813764 () Bool)

(assert (=> b!2813764 (= e!1779421 call!183171)))

(declare-fun b!2813765 () Bool)

(assert (=> b!2813765 (= e!1779417 0)))

(declare-fun b!2813766 () Bool)

(assert (=> b!2813766 (= e!1779417 (- call!183171 (- i!1825 1)))))

(declare-fun b!2813767 () Bool)

(assert (=> b!2813767 (= e!1779420 (t!229997 (list!12327 (c!455898 input!3732))))))

(assert (= (and d!816804 c!455963) b!2813762))

(assert (= (and d!816804 (not c!455963)) b!2813761))

(assert (= (and b!2813761 c!455964) b!2813767))

(assert (= (and b!2813761 (not c!455964)) b!2813759))

(assert (= (and d!816804 res!1171294) b!2813763))

(assert (= (and b!2813763 c!455962) b!2813764))

(assert (= (and b!2813763 (not c!455962)) b!2813760))

(assert (= (and b!2813760 c!455965) b!2813765))

(assert (= (and b!2813760 (not c!455965)) b!2813766))

(assert (= (or b!2813764 b!2813760 b!2813766) bm!183166))

(declare-fun m!3244333 () Bool)

(assert (=> d!816804 m!3244333))

(assert (=> d!816804 m!3244305))

(declare-fun m!3244335 () Bool)

(assert (=> b!2813759 m!3244335))

(assert (=> bm!183166 m!3244257))

(declare-fun m!3244337 () Bool)

(assert (=> b!2813763 m!3244337))

(assert (=> b!2813574 d!816804))

(assert (=> bm!183162 d!816760))

(declare-fun d!816806 () Bool)

(assert (=> d!816806 (= (max!0 (height!1499 (left!24817 (c!455898 input!3732))) (height!1499 (right!25147 (c!455898 input!3732)))) (ite (< (height!1499 (left!24817 (c!455898 input!3732))) (height!1499 (right!25147 (c!455898 input!3732)))) (height!1499 (right!25147 (c!455898 input!3732))) (height!1499 (left!24817 (c!455898 input!3732)))))))

(assert (=> b!2813639 d!816806))

(assert (=> b!2813639 d!816776))

(assert (=> b!2813639 d!816778))

(declare-fun d!816808 () Bool)

(declare-fun lt!1005326 () Int)

(assert (=> d!816808 (>= lt!1005326 0)))

(declare-fun e!1779422 () Int)

(assert (=> d!816808 (= lt!1005326 e!1779422)))

(declare-fun c!455966 () Bool)

(assert (=> d!816808 (= c!455966 ((_ is Nil!32899) lt!1005300))))

(assert (=> d!816808 (= (size!25637 lt!1005300) lt!1005326)))

(declare-fun b!2813768 () Bool)

(assert (=> b!2813768 (= e!1779422 0)))

(declare-fun b!2813769 () Bool)

(assert (=> b!2813769 (= e!1779422 (+ 1 (size!25637 (t!229997 lt!1005300))))))

(assert (= (and d!816808 c!455966) b!2813768))

(assert (= (and d!816808 (not c!455966)) b!2813769))

(declare-fun m!3244339 () Bool)

(assert (=> b!2813769 m!3244339))

(assert (=> b!2813578 d!816808))

(assert (=> b!2813503 d!816720))

(assert (=> b!2813503 d!816722))

(declare-fun d!816810 () Bool)

(declare-fun res!1171295 () Bool)

(declare-fun e!1779423 () Bool)

(assert (=> d!816810 (=> (not res!1171295) (not e!1779423))))

(assert (=> d!816810 (= res!1171295 (= (csize!20622 (right!25147 (c!455898 input!3732))) (+ (size!25638 (left!24817 (right!25147 (c!455898 input!3732)))) (size!25638 (right!25147 (right!25147 (c!455898 input!3732)))))))))

(assert (=> d!816810 (= (inv!44706 (right!25147 (c!455898 input!3732))) e!1779423)))

(declare-fun b!2813770 () Bool)

(declare-fun res!1171296 () Bool)

(assert (=> b!2813770 (=> (not res!1171296) (not e!1779423))))

(assert (=> b!2813770 (= res!1171296 (and (not (= (left!24817 (right!25147 (c!455898 input!3732))) Empty!10196)) (not (= (right!25147 (right!25147 (c!455898 input!3732))) Empty!10196))))))

(declare-fun b!2813771 () Bool)

(declare-fun res!1171297 () Bool)

(assert (=> b!2813771 (=> (not res!1171297) (not e!1779423))))

(assert (=> b!2813771 (= res!1171297 (= (cheight!10407 (right!25147 (c!455898 input!3732))) (+ (max!0 (height!1499 (left!24817 (right!25147 (c!455898 input!3732)))) (height!1499 (right!25147 (right!25147 (c!455898 input!3732))))) 1)))))

(declare-fun b!2813772 () Bool)

(assert (=> b!2813772 (= e!1779423 (<= 0 (cheight!10407 (right!25147 (c!455898 input!3732)))))))

(assert (= (and d!816810 res!1171295) b!2813770))

(assert (= (and b!2813770 res!1171296) b!2813771))

(assert (= (and b!2813771 res!1171297) b!2813772))

(declare-fun m!3244341 () Bool)

(assert (=> d!816810 m!3244341))

(declare-fun m!3244343 () Bool)

(assert (=> d!816810 m!3244343))

(assert (=> b!2813771 m!3244265))

(assert (=> b!2813771 m!3244267))

(assert (=> b!2813771 m!3244265))

(assert (=> b!2813771 m!3244267))

(declare-fun m!3244345 () Bool)

(assert (=> b!2813771 m!3244345))

(assert (=> b!2813553 d!816810))

(declare-fun d!816812 () Bool)

(declare-fun lt!1005327 () Int)

(assert (=> d!816812 (>= lt!1005327 0)))

(declare-fun e!1779424 () Int)

(assert (=> d!816812 (= lt!1005327 e!1779424)))

(declare-fun c!455967 () Bool)

(assert (=> d!816812 (= c!455967 ((_ is Nil!32899) (innerList!10256 (xs!13308 (c!455898 input!3732)))))))

(assert (=> d!816812 (= (size!25637 (innerList!10256 (xs!13308 (c!455898 input!3732)))) lt!1005327)))

(declare-fun b!2813773 () Bool)

(assert (=> b!2813773 (= e!1779424 0)))

(declare-fun b!2813774 () Bool)

(assert (=> b!2813774 (= e!1779424 (+ 1 (size!25637 (t!229997 (innerList!10256 (xs!13308 (c!455898 input!3732)))))))))

(assert (= (and d!816812 c!455967) b!2813773))

(assert (= (and d!816812 (not c!455967)) b!2813774))

(declare-fun m!3244347 () Bool)

(assert (=> b!2813774 m!3244347))

(assert (=> d!816734 d!816812))

(assert (=> b!2813602 d!816764))

(assert (=> b!2813530 d!816762))

(assert (=> b!2813530 d!816764))

(declare-fun d!816814 () Bool)

(declare-fun e!1779429 () Bool)

(assert (=> d!816814 e!1779429))

(declare-fun res!1171303 () Bool)

(assert (=> d!816814 (=> (not res!1171303) (not e!1779429))))

(declare-fun lt!1005330 () List!33023)

(assert (=> d!816814 (= res!1171303 (= (content!4592 lt!1005330) ((_ map or) (content!4592 (list!12327 (left!24817 (c!455898 input!3732)))) (content!4592 (list!12327 (right!25147 (c!455898 input!3732)))))))))

(declare-fun e!1779430 () List!33023)

(assert (=> d!816814 (= lt!1005330 e!1779430)))

(declare-fun c!455970 () Bool)

(assert (=> d!816814 (= c!455970 ((_ is Nil!32899) (list!12327 (left!24817 (c!455898 input!3732)))))))

(assert (=> d!816814 (= (++!8080 (list!12327 (left!24817 (c!455898 input!3732))) (list!12327 (right!25147 (c!455898 input!3732)))) lt!1005330)))

(declare-fun b!2813786 () Bool)

(assert (=> b!2813786 (= e!1779429 (or (not (= (list!12327 (right!25147 (c!455898 input!3732))) Nil!32899)) (= lt!1005330 (list!12327 (left!24817 (c!455898 input!3732))))))))

(declare-fun b!2813784 () Bool)

(assert (=> b!2813784 (= e!1779430 (Cons!32899 (h!38319 (list!12327 (left!24817 (c!455898 input!3732)))) (++!8080 (t!229997 (list!12327 (left!24817 (c!455898 input!3732)))) (list!12327 (right!25147 (c!455898 input!3732))))))))

(declare-fun b!2813783 () Bool)

(assert (=> b!2813783 (= e!1779430 (list!12327 (right!25147 (c!455898 input!3732))))))

(declare-fun b!2813785 () Bool)

(declare-fun res!1171302 () Bool)

(assert (=> b!2813785 (=> (not res!1171302) (not e!1779429))))

(assert (=> b!2813785 (= res!1171302 (= (size!25637 lt!1005330) (+ (size!25637 (list!12327 (left!24817 (c!455898 input!3732)))) (size!25637 (list!12327 (right!25147 (c!455898 input!3732)))))))))

(assert (= (and d!816814 c!455970) b!2813783))

(assert (= (and d!816814 (not c!455970)) b!2813784))

(assert (= (and d!816814 res!1171303) b!2813785))

(assert (= (and b!2813785 res!1171302) b!2813786))

(declare-fun m!3244349 () Bool)

(assert (=> d!816814 m!3244349))

(assert (=> d!816814 m!3244179))

(declare-fun m!3244351 () Bool)

(assert (=> d!816814 m!3244351))

(assert (=> d!816814 m!3244181))

(declare-fun m!3244353 () Bool)

(assert (=> d!816814 m!3244353))

(assert (=> b!2813784 m!3244181))

(declare-fun m!3244355 () Bool)

(assert (=> b!2813784 m!3244355))

(declare-fun m!3244357 () Bool)

(assert (=> b!2813785 m!3244357))

(assert (=> b!2813785 m!3244179))

(assert (=> b!2813785 m!3244329))

(assert (=> b!2813785 m!3244181))

(assert (=> b!2813785 m!3244331))

(assert (=> b!2813603 d!816814))

(declare-fun d!816816 () Bool)

(declare-fun c!455971 () Bool)

(assert (=> d!816816 (= c!455971 ((_ is Empty!10196) (left!24817 (c!455898 input!3732))))))

(declare-fun e!1779431 () List!33023)

(assert (=> d!816816 (= (list!12327 (left!24817 (c!455898 input!3732))) e!1779431)))

(declare-fun b!2813790 () Bool)

(declare-fun e!1779432 () List!33023)

(assert (=> b!2813790 (= e!1779432 (++!8080 (list!12327 (left!24817 (left!24817 (c!455898 input!3732)))) (list!12327 (right!25147 (left!24817 (c!455898 input!3732))))))))

(declare-fun b!2813789 () Bool)

(assert (=> b!2813789 (= e!1779432 (list!12330 (xs!13308 (left!24817 (c!455898 input!3732)))))))

(declare-fun b!2813787 () Bool)

(assert (=> b!2813787 (= e!1779431 Nil!32899)))

(declare-fun b!2813788 () Bool)

(assert (=> b!2813788 (= e!1779431 e!1779432)))

(declare-fun c!455972 () Bool)

(assert (=> b!2813788 (= c!455972 ((_ is Leaf!15534) (left!24817 (c!455898 input!3732))))))

(assert (= (and d!816816 c!455971) b!2813787))

(assert (= (and d!816816 (not c!455971)) b!2813788))

(assert (= (and b!2813788 c!455972) b!2813789))

(assert (= (and b!2813788 (not c!455972)) b!2813790))

(declare-fun m!3244359 () Bool)

(assert (=> b!2813790 m!3244359))

(declare-fun m!3244361 () Bool)

(assert (=> b!2813790 m!3244361))

(assert (=> b!2813790 m!3244359))

(assert (=> b!2813790 m!3244361))

(declare-fun m!3244363 () Bool)

(assert (=> b!2813790 m!3244363))

(assert (=> b!2813789 m!3244323))

(assert (=> b!2813603 d!816816))

(declare-fun d!816818 () Bool)

(declare-fun c!455973 () Bool)

(assert (=> d!816818 (= c!455973 ((_ is Empty!10196) (right!25147 (c!455898 input!3732))))))

(declare-fun e!1779433 () List!33023)

(assert (=> d!816818 (= (list!12327 (right!25147 (c!455898 input!3732))) e!1779433)))

(declare-fun b!2813794 () Bool)

(declare-fun e!1779434 () List!33023)

(assert (=> b!2813794 (= e!1779434 (++!8080 (list!12327 (left!24817 (right!25147 (c!455898 input!3732)))) (list!12327 (right!25147 (right!25147 (c!455898 input!3732))))))))

(declare-fun b!2813793 () Bool)

(assert (=> b!2813793 (= e!1779434 (list!12330 (xs!13308 (right!25147 (c!455898 input!3732)))))))

(declare-fun b!2813791 () Bool)

(assert (=> b!2813791 (= e!1779433 Nil!32899)))

(declare-fun b!2813792 () Bool)

(assert (=> b!2813792 (= e!1779433 e!1779434)))

(declare-fun c!455974 () Bool)

(assert (=> b!2813792 (= c!455974 ((_ is Leaf!15534) (right!25147 (c!455898 input!3732))))))

(assert (= (and d!816818 c!455973) b!2813791))

(assert (= (and d!816818 (not c!455973)) b!2813792))

(assert (= (and b!2813792 c!455974) b!2813793))

(assert (= (and b!2813792 (not c!455974)) b!2813794))

(declare-fun m!3244365 () Bool)

(assert (=> b!2813794 m!3244365))

(declare-fun m!3244367 () Bool)

(assert (=> b!2813794 m!3244367))

(assert (=> b!2813794 m!3244365))

(assert (=> b!2813794 m!3244367))

(declare-fun m!3244369 () Bool)

(assert (=> b!2813794 m!3244369))

(declare-fun m!3244371 () Bool)

(assert (=> b!2813793 m!3244371))

(assert (=> b!2813603 d!816818))

(declare-fun d!816820 () Bool)

(declare-fun res!1171304 () Bool)

(declare-fun e!1779435 () Bool)

(assert (=> d!816820 (=> (not res!1171304) (not e!1779435))))

(assert (=> d!816820 (= res!1171304 (<= (size!25637 (list!12330 (xs!13308 (right!25147 (c!455898 input!3732))))) 512))))

(assert (=> d!816820 (= (inv!44707 (right!25147 (c!455898 input!3732))) e!1779435)))

(declare-fun b!2813795 () Bool)

(declare-fun res!1171305 () Bool)

(assert (=> b!2813795 (=> (not res!1171305) (not e!1779435))))

(assert (=> b!2813795 (= res!1171305 (= (csize!20623 (right!25147 (c!455898 input!3732))) (size!25637 (list!12330 (xs!13308 (right!25147 (c!455898 input!3732)))))))))

(declare-fun b!2813796 () Bool)

(assert (=> b!2813796 (= e!1779435 (and (> (csize!20623 (right!25147 (c!455898 input!3732))) 0) (<= (csize!20623 (right!25147 (c!455898 input!3732))) 512)))))

(assert (= (and d!816820 res!1171304) b!2813795))

(assert (= (and b!2813795 res!1171305) b!2813796))

(assert (=> d!816820 m!3244371))

(assert (=> d!816820 m!3244371))

(declare-fun m!3244373 () Bool)

(assert (=> d!816820 m!3244373))

(assert (=> b!2813795 m!3244371))

(assert (=> b!2813795 m!3244371))

(assert (=> b!2813795 m!3244373))

(assert (=> b!2813555 d!816820))

(declare-fun b!2813797 () Bool)

(declare-fun e!1779436 () Bool)

(declare-fun tp!898465 () Bool)

(assert (=> b!2813797 (= e!1779436 (and tp_is_empty!14417 tp!898465))))

(assert (=> b!2813643 (= tp!898449 e!1779436)))

(assert (= (and b!2813643 ((_ is Cons!32899) (innerList!10256 (xs!13308 (left!24817 (c!455898 input!3732)))))) b!2813797))

(declare-fun b!2813798 () Bool)

(declare-fun e!1779437 () Bool)

(declare-fun tp!898466 () Bool)

(assert (=> b!2813798 (= e!1779437 (and tp_is_empty!14417 tp!898466))))

(assert (=> b!2813653 (= tp!898455 e!1779437)))

(assert (= (and b!2813653 ((_ is Cons!32899) (t!229997 (innerList!10256 (xs!13308 (c!455898 input!3732)))))) b!2813798))

(declare-fun tp!898467 () Bool)

(declare-fun b!2813799 () Bool)

(declare-fun e!1779439 () Bool)

(declare-fun tp!898468 () Bool)

(assert (=> b!2813799 (= e!1779439 (and (inv!44705 (left!24817 (left!24817 (left!24817 (c!455898 input!3732))))) tp!898467 (inv!44705 (right!25147 (left!24817 (left!24817 (c!455898 input!3732))))) tp!898468))))

(declare-fun b!2813801 () Bool)

(declare-fun e!1779438 () Bool)

(declare-fun tp!898469 () Bool)

(assert (=> b!2813801 (= e!1779438 tp!898469)))

(declare-fun b!2813800 () Bool)

(assert (=> b!2813800 (= e!1779439 (and (inv!44708 (xs!13308 (left!24817 (left!24817 (c!455898 input!3732))))) e!1779438))))

(assert (=> b!2813641 (= tp!898447 (and (inv!44705 (left!24817 (left!24817 (c!455898 input!3732)))) e!1779439))))

(assert (= (and b!2813641 ((_ is Node!10196) (left!24817 (left!24817 (c!455898 input!3732))))) b!2813799))

(assert (= b!2813800 b!2813801))

(assert (= (and b!2813641 ((_ is Leaf!15534) (left!24817 (left!24817 (c!455898 input!3732))))) b!2813800))

(declare-fun m!3244375 () Bool)

(assert (=> b!2813799 m!3244375))

(declare-fun m!3244377 () Bool)

(assert (=> b!2813799 m!3244377))

(declare-fun m!3244379 () Bool)

(assert (=> b!2813800 m!3244379))

(assert (=> b!2813641 m!3244203))

(declare-fun e!1779441 () Bool)

(declare-fun tp!898470 () Bool)

(declare-fun b!2813802 () Bool)

(declare-fun tp!898471 () Bool)

(assert (=> b!2813802 (= e!1779441 (and (inv!44705 (left!24817 (right!25147 (left!24817 (c!455898 input!3732))))) tp!898470 (inv!44705 (right!25147 (right!25147 (left!24817 (c!455898 input!3732))))) tp!898471))))

(declare-fun b!2813804 () Bool)

(declare-fun e!1779440 () Bool)

(declare-fun tp!898472 () Bool)

(assert (=> b!2813804 (= e!1779440 tp!898472)))

(declare-fun b!2813803 () Bool)

(assert (=> b!2813803 (= e!1779441 (and (inv!44708 (xs!13308 (right!25147 (left!24817 (c!455898 input!3732))))) e!1779440))))

(assert (=> b!2813641 (= tp!898448 (and (inv!44705 (right!25147 (left!24817 (c!455898 input!3732)))) e!1779441))))

(assert (= (and b!2813641 ((_ is Node!10196) (right!25147 (left!24817 (c!455898 input!3732))))) b!2813802))

(assert (= b!2813803 b!2813804))

(assert (= (and b!2813641 ((_ is Leaf!15534) (right!25147 (left!24817 (c!455898 input!3732))))) b!2813803))

(declare-fun m!3244381 () Bool)

(assert (=> b!2813802 m!3244381))

(declare-fun m!3244383 () Bool)

(assert (=> b!2813802 m!3244383))

(declare-fun m!3244385 () Bool)

(assert (=> b!2813803 m!3244385))

(assert (=> b!2813641 m!3244205))

(declare-fun b!2813805 () Bool)

(declare-fun e!1779442 () Bool)

(declare-fun tp!898473 () Bool)

(assert (=> b!2813805 (= e!1779442 (and tp_is_empty!14417 tp!898473))))

(assert (=> b!2813648 (= tp!898452 e!1779442)))

(assert (= (and b!2813648 ((_ is Cons!32899) (innerList!10256 (xs!13308 (right!25147 (c!455898 input!3732)))))) b!2813805))

(declare-fun e!1779444 () Bool)

(declare-fun tp!898474 () Bool)

(declare-fun tp!898475 () Bool)

(declare-fun b!2813806 () Bool)

(assert (=> b!2813806 (= e!1779444 (and (inv!44705 (left!24817 (left!24817 (right!25147 (c!455898 input!3732))))) tp!898474 (inv!44705 (right!25147 (left!24817 (right!25147 (c!455898 input!3732))))) tp!898475))))

(declare-fun b!2813808 () Bool)

(declare-fun e!1779443 () Bool)

(declare-fun tp!898476 () Bool)

(assert (=> b!2813808 (= e!1779443 tp!898476)))

(declare-fun b!2813807 () Bool)

(assert (=> b!2813807 (= e!1779444 (and (inv!44708 (xs!13308 (left!24817 (right!25147 (c!455898 input!3732))))) e!1779443))))

(assert (=> b!2813646 (= tp!898450 (and (inv!44705 (left!24817 (right!25147 (c!455898 input!3732)))) e!1779444))))

(assert (= (and b!2813646 ((_ is Node!10196) (left!24817 (right!25147 (c!455898 input!3732))))) b!2813806))

(assert (= b!2813807 b!2813808))

(assert (= (and b!2813646 ((_ is Leaf!15534) (left!24817 (right!25147 (c!455898 input!3732))))) b!2813807))

(declare-fun m!3244387 () Bool)

(assert (=> b!2813806 m!3244387))

(declare-fun m!3244389 () Bool)

(assert (=> b!2813806 m!3244389))

(declare-fun m!3244391 () Bool)

(assert (=> b!2813807 m!3244391))

(assert (=> b!2813646 m!3244213))

(declare-fun b!2813809 () Bool)

(declare-fun e!1779446 () Bool)

(declare-fun tp!898477 () Bool)

(declare-fun tp!898478 () Bool)

(assert (=> b!2813809 (= e!1779446 (and (inv!44705 (left!24817 (right!25147 (right!25147 (c!455898 input!3732))))) tp!898477 (inv!44705 (right!25147 (right!25147 (right!25147 (c!455898 input!3732))))) tp!898478))))

(declare-fun b!2813811 () Bool)

(declare-fun e!1779445 () Bool)

(declare-fun tp!898479 () Bool)

(assert (=> b!2813811 (= e!1779445 tp!898479)))

(declare-fun b!2813810 () Bool)

(assert (=> b!2813810 (= e!1779446 (and (inv!44708 (xs!13308 (right!25147 (right!25147 (c!455898 input!3732))))) e!1779445))))

(assert (=> b!2813646 (= tp!898451 (and (inv!44705 (right!25147 (right!25147 (c!455898 input!3732)))) e!1779446))))

(assert (= (and b!2813646 ((_ is Node!10196) (right!25147 (right!25147 (c!455898 input!3732))))) b!2813809))

(assert (= b!2813810 b!2813811))

(assert (= (and b!2813646 ((_ is Leaf!15534) (right!25147 (right!25147 (c!455898 input!3732))))) b!2813810))

(declare-fun m!3244393 () Bool)

(assert (=> b!2813809 m!3244393))

(declare-fun m!3244395 () Bool)

(assert (=> b!2813809 m!3244395))

(declare-fun m!3244397 () Bool)

(assert (=> b!2813810 m!3244397))

(assert (=> b!2813646 m!3244215))

(check-sat (not b!2813717) (not b!2813795) (not b!2813784) (not b!2813734) (not d!816810) (not b!2813789) (not b!2813721) (not b!2813747) (not b!2813646) (not d!816798) (not b!2813807) (not b!2813771) (not d!816794) (not b!2813806) (not b!2813811) (not b!2813722) (not b!2813719) (not d!816766) (not d!816820) (not b!2813727) (not b!2813723) (not b!2813750) (not b!2813794) (not b!2813774) (not b!2813800) (not b!2813798) (not b!2813751) (not d!816780) (not b!2813804) (not b!2813799) (not b!2813739) (not b!2813793) (not b!2813769) (not d!816814) (not bm!183166) (not b!2813728) (not b!2813737) (not d!816796) (not b!2813641) (not b!2813790) (not b!2813753) (not b!2813803) (not b!2813801) tp_is_empty!14417 (not b!2813809) (not b!2813733) (not b!2813797) (not b!2813730) (not d!816804) (not d!816800) (not b!2813748) (not d!816802) (not b!2813736) (not b!2813802) (not b!2813724) (not b!2813731) (not b!2813785) (not b!2813726) (not b!2813738) (not d!816792) (not b!2813755) (not b!2813725) (not b!2813759) (not b!2813810) (not b!2813808) (not b!2813745) (not b!2813805) (not b!2813735) (not b!2813763) (not b!2813757))
(check-sat)
(get-model)

(declare-fun d!816884 () Bool)

(declare-fun c!455999 () Bool)

(assert (=> d!816884 (= c!455999 ((_ is Node!10196) (left!24817 (left!24817 (right!25147 (c!455898 input!3732))))))))

(declare-fun e!1779498 () Bool)

(assert (=> d!816884 (= (inv!44705 (left!24817 (left!24817 (right!25147 (c!455898 input!3732))))) e!1779498)))

(declare-fun b!2813908 () Bool)

(assert (=> b!2813908 (= e!1779498 (inv!44706 (left!24817 (left!24817 (right!25147 (c!455898 input!3732))))))))

(declare-fun b!2813909 () Bool)

(declare-fun e!1779499 () Bool)

(assert (=> b!2813909 (= e!1779498 e!1779499)))

(declare-fun res!1171339 () Bool)

(assert (=> b!2813909 (= res!1171339 (not ((_ is Leaf!15534) (left!24817 (left!24817 (right!25147 (c!455898 input!3732)))))))))

(assert (=> b!2813909 (=> res!1171339 e!1779499)))

(declare-fun b!2813910 () Bool)

(assert (=> b!2813910 (= e!1779499 (inv!44707 (left!24817 (left!24817 (right!25147 (c!455898 input!3732))))))))

(assert (= (and d!816884 c!455999) b!2813908))

(assert (= (and d!816884 (not c!455999)) b!2813909))

(assert (= (and b!2813909 (not res!1171339)) b!2813910))

(declare-fun m!3244541 () Bool)

(assert (=> b!2813908 m!3244541))

(declare-fun m!3244543 () Bool)

(assert (=> b!2813910 m!3244543))

(assert (=> b!2813806 d!816884))

(declare-fun d!816886 () Bool)

(declare-fun c!456000 () Bool)

(assert (=> d!816886 (= c!456000 ((_ is Node!10196) (right!25147 (left!24817 (right!25147 (c!455898 input!3732))))))))

(declare-fun e!1779500 () Bool)

(assert (=> d!816886 (= (inv!44705 (right!25147 (left!24817 (right!25147 (c!455898 input!3732))))) e!1779500)))

(declare-fun b!2813911 () Bool)

(assert (=> b!2813911 (= e!1779500 (inv!44706 (right!25147 (left!24817 (right!25147 (c!455898 input!3732))))))))

(declare-fun b!2813912 () Bool)

(declare-fun e!1779501 () Bool)

(assert (=> b!2813912 (= e!1779500 e!1779501)))

(declare-fun res!1171340 () Bool)

(assert (=> b!2813912 (= res!1171340 (not ((_ is Leaf!15534) (right!25147 (left!24817 (right!25147 (c!455898 input!3732)))))))))

(assert (=> b!2813912 (=> res!1171340 e!1779501)))

(declare-fun b!2813913 () Bool)

(assert (=> b!2813913 (= e!1779501 (inv!44707 (right!25147 (left!24817 (right!25147 (c!455898 input!3732))))))))

(assert (= (and d!816886 c!456000) b!2813911))

(assert (= (and d!816886 (not c!456000)) b!2813912))

(assert (= (and b!2813912 (not res!1171340)) b!2813913))

(declare-fun m!3244545 () Bool)

(assert (=> b!2813911 m!3244545))

(declare-fun m!3244547 () Bool)

(assert (=> b!2813913 m!3244547))

(assert (=> b!2813806 d!816886))

(declare-fun d!816888 () Bool)

(declare-fun c!456001 () Bool)

(assert (=> d!816888 (= c!456001 ((_ is Nil!32899) lt!1005330))))

(declare-fun e!1779502 () (InoxSet C!16764))

(assert (=> d!816888 (= (content!4592 lt!1005330) e!1779502)))

(declare-fun b!2813914 () Bool)

(assert (=> b!2813914 (= e!1779502 ((as const (Array C!16764 Bool)) false))))

(declare-fun b!2813915 () Bool)

(assert (=> b!2813915 (= e!1779502 ((_ map or) (store ((as const (Array C!16764 Bool)) false) (h!38319 lt!1005330) true) (content!4592 (t!229997 lt!1005330))))))

(assert (= (and d!816888 c!456001) b!2813914))

(assert (= (and d!816888 (not c!456001)) b!2813915))

(declare-fun m!3244549 () Bool)

(assert (=> b!2813915 m!3244549))

(declare-fun m!3244551 () Bool)

(assert (=> b!2813915 m!3244551))

(assert (=> d!816814 d!816888))

(declare-fun d!816890 () Bool)

(declare-fun c!456002 () Bool)

(assert (=> d!816890 (= c!456002 ((_ is Nil!32899) (list!12327 (left!24817 (c!455898 input!3732)))))))

(declare-fun e!1779503 () (InoxSet C!16764))

(assert (=> d!816890 (= (content!4592 (list!12327 (left!24817 (c!455898 input!3732)))) e!1779503)))

(declare-fun b!2813916 () Bool)

(assert (=> b!2813916 (= e!1779503 ((as const (Array C!16764 Bool)) false))))

(declare-fun b!2813917 () Bool)

(assert (=> b!2813917 (= e!1779503 ((_ map or) (store ((as const (Array C!16764 Bool)) false) (h!38319 (list!12327 (left!24817 (c!455898 input!3732)))) true) (content!4592 (t!229997 (list!12327 (left!24817 (c!455898 input!3732)))))))))

(assert (= (and d!816890 c!456002) b!2813916))

(assert (= (and d!816890 (not c!456002)) b!2813917))

(declare-fun m!3244553 () Bool)

(assert (=> b!2813917 m!3244553))

(declare-fun m!3244555 () Bool)

(assert (=> b!2813917 m!3244555))

(assert (=> d!816814 d!816890))

(declare-fun d!816892 () Bool)

(declare-fun c!456003 () Bool)

(assert (=> d!816892 (= c!456003 ((_ is Nil!32899) (list!12327 (right!25147 (c!455898 input!3732)))))))

(declare-fun e!1779504 () (InoxSet C!16764))

(assert (=> d!816892 (= (content!4592 (list!12327 (right!25147 (c!455898 input!3732)))) e!1779504)))

(declare-fun b!2813918 () Bool)

(assert (=> b!2813918 (= e!1779504 ((as const (Array C!16764 Bool)) false))))

(declare-fun b!2813919 () Bool)

(assert (=> b!2813919 (= e!1779504 ((_ map or) (store ((as const (Array C!16764 Bool)) false) (h!38319 (list!12327 (right!25147 (c!455898 input!3732)))) true) (content!4592 (t!229997 (list!12327 (right!25147 (c!455898 input!3732)))))))))

(assert (= (and d!816892 c!456003) b!2813918))

(assert (= (and d!816892 (not c!456003)) b!2813919))

(declare-fun m!3244557 () Bool)

(assert (=> b!2813919 m!3244557))

(declare-fun m!3244559 () Bool)

(assert (=> b!2813919 m!3244559))

(assert (=> d!816814 d!816892))

(declare-fun d!816894 () Bool)

(declare-fun lt!1005346 () Int)

(assert (=> d!816894 (>= lt!1005346 0)))

(declare-fun e!1779505 () Int)

(assert (=> d!816894 (= lt!1005346 e!1779505)))

(declare-fun c!456004 () Bool)

(assert (=> d!816894 (= c!456004 ((_ is Nil!32899) (list!12330 (xs!13308 (right!25147 (c!455898 input!3732))))))))

(assert (=> d!816894 (= (size!25637 (list!12330 (xs!13308 (right!25147 (c!455898 input!3732))))) lt!1005346)))

(declare-fun b!2813920 () Bool)

(assert (=> b!2813920 (= e!1779505 0)))

(declare-fun b!2813921 () Bool)

(assert (=> b!2813921 (= e!1779505 (+ 1 (size!25637 (t!229997 (list!12330 (xs!13308 (right!25147 (c!455898 input!3732))))))))))

(assert (= (and d!816894 c!456004) b!2813920))

(assert (= (and d!816894 (not c!456004)) b!2813921))

(declare-fun m!3244561 () Bool)

(assert (=> b!2813921 m!3244561))

(assert (=> b!2813795 d!816894))

(declare-fun d!816896 () Bool)

(assert (=> d!816896 (= (list!12330 (xs!13308 (right!25147 (c!455898 input!3732)))) (innerList!10256 (xs!13308 (right!25147 (c!455898 input!3732)))))))

(assert (=> b!2813795 d!816896))

(declare-fun d!816898 () Bool)

(declare-fun res!1171341 () Bool)

(declare-fun e!1779506 () Bool)

(assert (=> d!816898 (=> (not res!1171341) (not e!1779506))))

(assert (=> d!816898 (= res!1171341 (<= (size!25637 (list!12330 (xs!13308 (right!25147 (right!25147 (c!455898 input!3732)))))) 512))))

(assert (=> d!816898 (= (inv!44707 (right!25147 (right!25147 (c!455898 input!3732)))) e!1779506)))

(declare-fun b!2813922 () Bool)

(declare-fun res!1171342 () Bool)

(assert (=> b!2813922 (=> (not res!1171342) (not e!1779506))))

(assert (=> b!2813922 (= res!1171342 (= (csize!20623 (right!25147 (right!25147 (c!455898 input!3732)))) (size!25637 (list!12330 (xs!13308 (right!25147 (right!25147 (c!455898 input!3732))))))))))

(declare-fun b!2813923 () Bool)

(assert (=> b!2813923 (= e!1779506 (and (> (csize!20623 (right!25147 (right!25147 (c!455898 input!3732)))) 0) (<= (csize!20623 (right!25147 (right!25147 (c!455898 input!3732)))) 512)))))

(assert (= (and d!816898 res!1171341) b!2813922))

(assert (= (and b!2813922 res!1171342) b!2813923))

(declare-fun m!3244563 () Bool)

(assert (=> d!816898 m!3244563))

(assert (=> d!816898 m!3244563))

(declare-fun m!3244565 () Bool)

(assert (=> d!816898 m!3244565))

(assert (=> b!2813922 m!3244563))

(assert (=> b!2813922 m!3244563))

(assert (=> b!2813922 m!3244565))

(assert (=> b!2813753 d!816898))

(declare-fun d!816900 () Bool)

(assert (=> d!816900 (= (isEmpty!18218 (list!12327 (right!25147 (c!455898 input!3732)))) ((_ is Nil!32899) (list!12327 (right!25147 (c!455898 input!3732)))))))

(assert (=> d!816794 d!816900))

(assert (=> d!816794 d!816818))

(assert (=> d!816794 d!816802))

(declare-fun d!816902 () Bool)

(declare-fun res!1171343 () Bool)

(declare-fun e!1779507 () Bool)

(assert (=> d!816902 (=> (not res!1171343) (not e!1779507))))

(assert (=> d!816902 (= res!1171343 (= (csize!20622 (right!25147 (right!25147 (c!455898 input!3732)))) (+ (size!25638 (left!24817 (right!25147 (right!25147 (c!455898 input!3732))))) (size!25638 (right!25147 (right!25147 (right!25147 (c!455898 input!3732))))))))))

(assert (=> d!816902 (= (inv!44706 (right!25147 (right!25147 (c!455898 input!3732)))) e!1779507)))

(declare-fun b!2813924 () Bool)

(declare-fun res!1171344 () Bool)

(assert (=> b!2813924 (=> (not res!1171344) (not e!1779507))))

(assert (=> b!2813924 (= res!1171344 (and (not (= (left!24817 (right!25147 (right!25147 (c!455898 input!3732)))) Empty!10196)) (not (= (right!25147 (right!25147 (right!25147 (c!455898 input!3732)))) Empty!10196))))))

(declare-fun b!2813925 () Bool)

(declare-fun res!1171345 () Bool)

(assert (=> b!2813925 (=> (not res!1171345) (not e!1779507))))

(assert (=> b!2813925 (= res!1171345 (= (cheight!10407 (right!25147 (right!25147 (c!455898 input!3732)))) (+ (max!0 (height!1499 (left!24817 (right!25147 (right!25147 (c!455898 input!3732))))) (height!1499 (right!25147 (right!25147 (right!25147 (c!455898 input!3732)))))) 1)))))

(declare-fun b!2813926 () Bool)

(assert (=> b!2813926 (= e!1779507 (<= 0 (cheight!10407 (right!25147 (right!25147 (c!455898 input!3732))))))))

(assert (= (and d!816902 res!1171343) b!2813924))

(assert (= (and b!2813924 res!1171344) b!2813925))

(assert (= (and b!2813925 res!1171345) b!2813926))

(declare-fun m!3244567 () Bool)

(assert (=> d!816902 m!3244567))

(declare-fun m!3244569 () Bool)

(assert (=> d!816902 m!3244569))

(declare-fun m!3244571 () Bool)

(assert (=> b!2813925 m!3244571))

(declare-fun m!3244573 () Bool)

(assert (=> b!2813925 m!3244573))

(assert (=> b!2813925 m!3244571))

(assert (=> b!2813925 m!3244573))

(declare-fun m!3244575 () Bool)

(assert (=> b!2813925 m!3244575))

(assert (=> b!2813751 d!816902))

(declare-fun d!816904 () Bool)

(declare-fun lt!1005347 () Int)

(assert (=> d!816904 (>= lt!1005347 0)))

(declare-fun e!1779508 () Int)

(assert (=> d!816904 (= lt!1005347 e!1779508)))

(declare-fun c!456005 () Bool)

(assert (=> d!816904 (= c!456005 ((_ is Nil!32899) (t!229997 (innerList!10256 (xs!13308 (c!455898 input!3732))))))))

(assert (=> d!816904 (= (size!25637 (t!229997 (innerList!10256 (xs!13308 (c!455898 input!3732))))) lt!1005347)))

(declare-fun b!2813927 () Bool)

(assert (=> b!2813927 (= e!1779508 0)))

(declare-fun b!2813928 () Bool)

(assert (=> b!2813928 (= e!1779508 (+ 1 (size!25637 (t!229997 (t!229997 (innerList!10256 (xs!13308 (c!455898 input!3732))))))))))

(assert (= (and d!816904 c!456005) b!2813927))

(assert (= (and d!816904 (not c!456005)) b!2813928))

(declare-fun m!3244577 () Bool)

(assert (=> b!2813928 m!3244577))

(assert (=> b!2813774 d!816904))

(declare-fun d!816906 () Bool)

(assert (=> d!816906 (= (inv!44708 (xs!13308 (right!25147 (right!25147 (c!455898 input!3732))))) (<= (size!25637 (innerList!10256 (xs!13308 (right!25147 (right!25147 (c!455898 input!3732)))))) 2147483647))))

(declare-fun bs!516550 () Bool)

(assert (= bs!516550 d!816906))

(declare-fun m!3244579 () Bool)

(assert (=> bs!516550 m!3244579))

(assert (=> b!2813810 d!816906))

(declare-fun d!816908 () Bool)

(declare-fun lt!1005348 () Bool)

(assert (=> d!816908 (= lt!1005348 (isEmpty!18218 (list!12327 (right!25147 (left!24817 (c!455898 input!3732))))))))

(assert (=> d!816908 (= lt!1005348 (= (size!25638 (right!25147 (left!24817 (c!455898 input!3732)))) 0))))

(assert (=> d!816908 (= (isEmpty!18219 (right!25147 (left!24817 (c!455898 input!3732)))) lt!1005348)))

(declare-fun bs!516551 () Bool)

(assert (= bs!516551 d!816908))

(assert (=> bs!516551 m!3244361))

(assert (=> bs!516551 m!3244361))

(declare-fun m!3244581 () Bool)

(assert (=> bs!516551 m!3244581))

(assert (=> bs!516551 m!3244317))

(assert (=> b!2813738 d!816908))

(declare-fun d!816910 () Bool)

(declare-fun c!456006 () Bool)

(assert (=> d!816910 (= c!456006 ((_ is Nil!32899) lt!1005325))))

(declare-fun e!1779509 () (InoxSet C!16764))

(assert (=> d!816910 (= (content!4592 lt!1005325) e!1779509)))

(declare-fun b!2813929 () Bool)

(assert (=> b!2813929 (= e!1779509 ((as const (Array C!16764 Bool)) false))))

(declare-fun b!2813930 () Bool)

(assert (=> b!2813930 (= e!1779509 ((_ map or) (store ((as const (Array C!16764 Bool)) false) (h!38319 lt!1005325) true) (content!4592 (t!229997 lt!1005325))))))

(assert (= (and d!816910 c!456006) b!2813929))

(assert (= (and d!816910 (not c!456006)) b!2813930))

(declare-fun m!3244583 () Bool)

(assert (=> b!2813930 m!3244583))

(declare-fun m!3244585 () Bool)

(assert (=> b!2813930 m!3244585))

(assert (=> d!816804 d!816910))

(declare-fun d!816912 () Bool)

(declare-fun c!456007 () Bool)

(assert (=> d!816912 (= c!456007 ((_ is Nil!32899) (t!229997 (list!12327 (c!455898 input!3732)))))))

(declare-fun e!1779510 () (InoxSet C!16764))

(assert (=> d!816912 (= (content!4592 (t!229997 (list!12327 (c!455898 input!3732)))) e!1779510)))

(declare-fun b!2813931 () Bool)

(assert (=> b!2813931 (= e!1779510 ((as const (Array C!16764 Bool)) false))))

(declare-fun b!2813932 () Bool)

(assert (=> b!2813932 (= e!1779510 ((_ map or) (store ((as const (Array C!16764 Bool)) false) (h!38319 (t!229997 (list!12327 (c!455898 input!3732)))) true) (content!4592 (t!229997 (t!229997 (list!12327 (c!455898 input!3732)))))))))

(assert (= (and d!816912 c!456007) b!2813931))

(assert (= (and d!816912 (not c!456007)) b!2813932))

(declare-fun m!3244587 () Bool)

(assert (=> b!2813932 m!3244587))

(declare-fun m!3244589 () Bool)

(assert (=> b!2813932 m!3244589))

(assert (=> d!816804 d!816912))

(assert (=> d!816820 d!816894))

(assert (=> d!816820 d!816896))

(declare-fun d!816914 () Bool)

(declare-fun lt!1005349 () Bool)

(assert (=> d!816914 (= lt!1005349 (isEmpty!18218 (list!12327 (left!24817 (right!25147 (c!455898 input!3732))))))))

(assert (=> d!816914 (= lt!1005349 (= (size!25638 (left!24817 (right!25147 (c!455898 input!3732)))) 0))))

(assert (=> d!816914 (= (isEmpty!18219 (left!24817 (right!25147 (c!455898 input!3732)))) lt!1005349)))

(declare-fun bs!516552 () Bool)

(assert (= bs!516552 d!816914))

(assert (=> bs!516552 m!3244365))

(assert (=> bs!516552 m!3244365))

(declare-fun m!3244591 () Bool)

(assert (=> bs!516552 m!3244591))

(assert (=> bs!516552 m!3244341))

(assert (=> b!2813727 d!816914))

(declare-fun d!816916 () Bool)

(declare-fun res!1171346 () Bool)

(declare-fun e!1779511 () Bool)

(assert (=> d!816916 (=> (not res!1171346) (not e!1779511))))

(assert (=> d!816916 (= res!1171346 (<= (size!25637 (list!12330 (xs!13308 (left!24817 (left!24817 (c!455898 input!3732)))))) 512))))

(assert (=> d!816916 (= (inv!44707 (left!24817 (left!24817 (c!455898 input!3732)))) e!1779511)))

(declare-fun b!2813933 () Bool)

(declare-fun res!1171347 () Bool)

(assert (=> b!2813933 (=> (not res!1171347) (not e!1779511))))

(assert (=> b!2813933 (= res!1171347 (= (csize!20623 (left!24817 (left!24817 (c!455898 input!3732)))) (size!25637 (list!12330 (xs!13308 (left!24817 (left!24817 (c!455898 input!3732))))))))))

(declare-fun b!2813934 () Bool)

(assert (=> b!2813934 (= e!1779511 (and (> (csize!20623 (left!24817 (left!24817 (c!455898 input!3732)))) 0) (<= (csize!20623 (left!24817 (left!24817 (c!455898 input!3732)))) 512)))))

(assert (= (and d!816916 res!1171346) b!2813933))

(assert (= (and b!2813933 res!1171347) b!2813934))

(declare-fun m!3244593 () Bool)

(assert (=> d!816916 m!3244593))

(assert (=> d!816916 m!3244593))

(declare-fun m!3244595 () Bool)

(assert (=> d!816916 m!3244595))

(assert (=> b!2813933 m!3244593))

(assert (=> b!2813933 m!3244593))

(assert (=> b!2813933 m!3244595))

(assert (=> b!2813730 d!816916))

(declare-fun b!2813935 () Bool)

(declare-fun res!1171351 () Bool)

(declare-fun e!1779512 () Bool)

(assert (=> b!2813935 (=> (not res!1171351) (not e!1779512))))

(assert (=> b!2813935 (= res!1171351 (isBalanced!3090 (right!25147 (left!24817 (left!24817 (c!455898 input!3732))))))))

(declare-fun b!2813936 () Bool)

(declare-fun e!1779513 () Bool)

(assert (=> b!2813936 (= e!1779513 e!1779512)))

(declare-fun res!1171350 () Bool)

(assert (=> b!2813936 (=> (not res!1171350) (not e!1779512))))

(assert (=> b!2813936 (= res!1171350 (<= (- 1) (- (height!1499 (left!24817 (left!24817 (left!24817 (c!455898 input!3732))))) (height!1499 (right!25147 (left!24817 (left!24817 (c!455898 input!3732))))))))))

(declare-fun b!2813937 () Bool)

(declare-fun res!1171348 () Bool)

(assert (=> b!2813937 (=> (not res!1171348) (not e!1779512))))

(assert (=> b!2813937 (= res!1171348 (isBalanced!3090 (left!24817 (left!24817 (left!24817 (c!455898 input!3732))))))))

(declare-fun b!2813938 () Bool)

(declare-fun res!1171349 () Bool)

(assert (=> b!2813938 (=> (not res!1171349) (not e!1779512))))

(assert (=> b!2813938 (= res!1171349 (<= (- (height!1499 (left!24817 (left!24817 (left!24817 (c!455898 input!3732))))) (height!1499 (right!25147 (left!24817 (left!24817 (c!455898 input!3732)))))) 1))))

(declare-fun b!2813939 () Bool)

(assert (=> b!2813939 (= e!1779512 (not (isEmpty!18219 (right!25147 (left!24817 (left!24817 (c!455898 input!3732)))))))))

(declare-fun d!816918 () Bool)

(declare-fun res!1171353 () Bool)

(assert (=> d!816918 (=> res!1171353 e!1779513)))

(assert (=> d!816918 (= res!1171353 (not ((_ is Node!10196) (left!24817 (left!24817 (c!455898 input!3732))))))))

(assert (=> d!816918 (= (isBalanced!3090 (left!24817 (left!24817 (c!455898 input!3732)))) e!1779513)))

(declare-fun b!2813940 () Bool)

(declare-fun res!1171352 () Bool)

(assert (=> b!2813940 (=> (not res!1171352) (not e!1779512))))

(assert (=> b!2813940 (= res!1171352 (not (isEmpty!18219 (left!24817 (left!24817 (left!24817 (c!455898 input!3732)))))))))

(assert (= (and d!816918 (not res!1171353)) b!2813936))

(assert (= (and b!2813936 res!1171350) b!2813938))

(assert (= (and b!2813938 res!1171349) b!2813937))

(assert (= (and b!2813937 res!1171348) b!2813935))

(assert (= (and b!2813935 res!1171351) b!2813940))

(assert (= (and b!2813940 res!1171352) b!2813939))

(declare-fun m!3244597 () Bool)

(assert (=> b!2813936 m!3244597))

(declare-fun m!3244599 () Bool)

(assert (=> b!2813936 m!3244599))

(assert (=> b!2813938 m!3244597))

(assert (=> b!2813938 m!3244599))

(declare-fun m!3244601 () Bool)

(assert (=> b!2813940 m!3244601))

(declare-fun m!3244603 () Bool)

(assert (=> b!2813937 m!3244603))

(declare-fun m!3244605 () Bool)

(assert (=> b!2813939 m!3244605))

(declare-fun m!3244607 () Bool)

(assert (=> b!2813935 m!3244607))

(assert (=> b!2813736 d!816918))

(declare-fun d!816920 () Bool)

(assert (=> d!816920 (= (height!1499 (left!24817 (left!24817 (c!455898 input!3732)))) (ite ((_ is Empty!10196) (left!24817 (left!24817 (c!455898 input!3732)))) 0 (ite ((_ is Leaf!15534) (left!24817 (left!24817 (c!455898 input!3732)))) 1 (cheight!10407 (left!24817 (left!24817 (c!455898 input!3732)))))))))

(assert (=> b!2813735 d!816920))

(declare-fun d!816922 () Bool)

(assert (=> d!816922 (= (height!1499 (right!25147 (left!24817 (c!455898 input!3732)))) (ite ((_ is Empty!10196) (right!25147 (left!24817 (c!455898 input!3732)))) 0 (ite ((_ is Leaf!15534) (right!25147 (left!24817 (c!455898 input!3732)))) 1 (cheight!10407 (right!25147 (left!24817 (c!455898 input!3732)))))))))

(assert (=> b!2813735 d!816922))

(declare-fun d!816924 () Bool)

(declare-fun lt!1005350 () Int)

(assert (=> d!816924 (>= lt!1005350 0)))

(declare-fun e!1779514 () Int)

(assert (=> d!816924 (= lt!1005350 e!1779514)))

(declare-fun c!456008 () Bool)

(assert (=> d!816924 (= c!456008 ((_ is Nil!32899) lt!1005325))))

(assert (=> d!816924 (= (size!25637 lt!1005325) lt!1005350)))

(declare-fun b!2813941 () Bool)

(assert (=> b!2813941 (= e!1779514 0)))

(declare-fun b!2813942 () Bool)

(assert (=> b!2813942 (= e!1779514 (+ 1 (size!25637 (t!229997 lt!1005325))))))

(assert (= (and d!816924 c!456008) b!2813941))

(assert (= (and d!816924 (not c!456008)) b!2813942))

(declare-fun m!3244609 () Bool)

(assert (=> b!2813942 m!3244609))

(assert (=> b!2813763 d!816924))

(declare-fun b!2813943 () Bool)

(declare-fun res!1171357 () Bool)

(declare-fun e!1779515 () Bool)

(assert (=> b!2813943 (=> (not res!1171357) (not e!1779515))))

(assert (=> b!2813943 (= res!1171357 (isBalanced!3090 (right!25147 (left!24817 (right!25147 (c!455898 input!3732))))))))

(declare-fun b!2813944 () Bool)

(declare-fun e!1779516 () Bool)

(assert (=> b!2813944 (= e!1779516 e!1779515)))

(declare-fun res!1171356 () Bool)

(assert (=> b!2813944 (=> (not res!1171356) (not e!1779515))))

(assert (=> b!2813944 (= res!1171356 (<= (- 1) (- (height!1499 (left!24817 (left!24817 (right!25147 (c!455898 input!3732))))) (height!1499 (right!25147 (left!24817 (right!25147 (c!455898 input!3732))))))))))

(declare-fun b!2813945 () Bool)

(declare-fun res!1171354 () Bool)

(assert (=> b!2813945 (=> (not res!1171354) (not e!1779515))))

(assert (=> b!2813945 (= res!1171354 (isBalanced!3090 (left!24817 (left!24817 (right!25147 (c!455898 input!3732))))))))

(declare-fun b!2813946 () Bool)

(declare-fun res!1171355 () Bool)

(assert (=> b!2813946 (=> (not res!1171355) (not e!1779515))))

(assert (=> b!2813946 (= res!1171355 (<= (- (height!1499 (left!24817 (left!24817 (right!25147 (c!455898 input!3732))))) (height!1499 (right!25147 (left!24817 (right!25147 (c!455898 input!3732)))))) 1))))

(declare-fun b!2813947 () Bool)

(assert (=> b!2813947 (= e!1779515 (not (isEmpty!18219 (right!25147 (left!24817 (right!25147 (c!455898 input!3732)))))))))

(declare-fun d!816926 () Bool)

(declare-fun res!1171359 () Bool)

(assert (=> d!816926 (=> res!1171359 e!1779516)))

(assert (=> d!816926 (= res!1171359 (not ((_ is Node!10196) (left!24817 (right!25147 (c!455898 input!3732))))))))

(assert (=> d!816926 (= (isBalanced!3090 (left!24817 (right!25147 (c!455898 input!3732)))) e!1779516)))

(declare-fun b!2813948 () Bool)

(declare-fun res!1171358 () Bool)

(assert (=> b!2813948 (=> (not res!1171358) (not e!1779515))))

(assert (=> b!2813948 (= res!1171358 (not (isEmpty!18219 (left!24817 (left!24817 (right!25147 (c!455898 input!3732)))))))))

(assert (= (and d!816926 (not res!1171359)) b!2813944))

(assert (= (and b!2813944 res!1171356) b!2813946))

(assert (= (and b!2813946 res!1171355) b!2813945))

(assert (= (and b!2813945 res!1171354) b!2813943))

(assert (= (and b!2813943 res!1171357) b!2813948))

(assert (= (and b!2813948 res!1171358) b!2813947))

(declare-fun m!3244611 () Bool)

(assert (=> b!2813944 m!3244611))

(declare-fun m!3244613 () Bool)

(assert (=> b!2813944 m!3244613))

(assert (=> b!2813946 m!3244611))

(assert (=> b!2813946 m!3244613))

(declare-fun m!3244615 () Bool)

(assert (=> b!2813948 m!3244615))

(declare-fun m!3244617 () Bool)

(assert (=> b!2813945 m!3244617))

(declare-fun m!3244619 () Bool)

(assert (=> b!2813947 m!3244619))

(declare-fun m!3244621 () Bool)

(assert (=> b!2813943 m!3244621))

(assert (=> b!2813724 d!816926))

(declare-fun d!816928 () Bool)

(declare-fun lt!1005351 () Int)

(assert (=> d!816928 (>= lt!1005351 0)))

(declare-fun e!1779517 () Int)

(assert (=> d!816928 (= lt!1005351 e!1779517)))

(declare-fun c!456009 () Bool)

(assert (=> d!816928 (= c!456009 ((_ is Nil!32899) lt!1005330))))

(assert (=> d!816928 (= (size!25637 lt!1005330) lt!1005351)))

(declare-fun b!2813949 () Bool)

(assert (=> b!2813949 (= e!1779517 0)))

(declare-fun b!2813950 () Bool)

(assert (=> b!2813950 (= e!1779517 (+ 1 (size!25637 (t!229997 lt!1005330))))))

(assert (= (and d!816928 c!456009) b!2813949))

(assert (= (and d!816928 (not c!456009)) b!2813950))

(declare-fun m!3244623 () Bool)

(assert (=> b!2813950 m!3244623))

(assert (=> b!2813785 d!816928))

(declare-fun d!816930 () Bool)

(declare-fun lt!1005352 () Int)

(assert (=> d!816930 (>= lt!1005352 0)))

(declare-fun e!1779518 () Int)

(assert (=> d!816930 (= lt!1005352 e!1779518)))

(declare-fun c!456010 () Bool)

(assert (=> d!816930 (= c!456010 ((_ is Nil!32899) (list!12327 (left!24817 (c!455898 input!3732)))))))

(assert (=> d!816930 (= (size!25637 (list!12327 (left!24817 (c!455898 input!3732)))) lt!1005352)))

(declare-fun b!2813951 () Bool)

(assert (=> b!2813951 (= e!1779518 0)))

(declare-fun b!2813952 () Bool)

(assert (=> b!2813952 (= e!1779518 (+ 1 (size!25637 (t!229997 (list!12327 (left!24817 (c!455898 input!3732)))))))))

(assert (= (and d!816930 c!456010) b!2813951))

(assert (= (and d!816930 (not c!456010)) b!2813952))

(declare-fun m!3244625 () Bool)

(assert (=> b!2813952 m!3244625))

(assert (=> b!2813785 d!816930))

(declare-fun d!816932 () Bool)

(declare-fun lt!1005353 () Int)

(assert (=> d!816932 (>= lt!1005353 0)))

(declare-fun e!1779519 () Int)

(assert (=> d!816932 (= lt!1005353 e!1779519)))

(declare-fun c!456011 () Bool)

(assert (=> d!816932 (= c!456011 ((_ is Nil!32899) (list!12327 (right!25147 (c!455898 input!3732)))))))

(assert (=> d!816932 (= (size!25637 (list!12327 (right!25147 (c!455898 input!3732)))) lt!1005353)))

(declare-fun b!2813953 () Bool)

(assert (=> b!2813953 (= e!1779519 0)))

(declare-fun b!2813954 () Bool)

(assert (=> b!2813954 (= e!1779519 (+ 1 (size!25637 (t!229997 (list!12327 (right!25147 (c!455898 input!3732)))))))))

(assert (= (and d!816932 c!456011) b!2813953))

(assert (= (and d!816932 (not c!456011)) b!2813954))

(declare-fun m!3244627 () Bool)

(assert (=> b!2813954 m!3244627))

(assert (=> b!2813785 d!816932))

(declare-fun d!816934 () Bool)

(declare-fun e!1779520 () Bool)

(assert (=> d!816934 e!1779520))

(declare-fun res!1171361 () Bool)

(assert (=> d!816934 (=> (not res!1171361) (not e!1779520))))

(declare-fun lt!1005354 () List!33023)

(assert (=> d!816934 (= res!1171361 (= (content!4592 lt!1005354) ((_ map or) (content!4592 (list!12327 (left!24817 (left!24817 (c!455898 input!3732))))) (content!4592 (list!12327 (right!25147 (left!24817 (c!455898 input!3732))))))))))

(declare-fun e!1779521 () List!33023)

(assert (=> d!816934 (= lt!1005354 e!1779521)))

(declare-fun c!456012 () Bool)

(assert (=> d!816934 (= c!456012 ((_ is Nil!32899) (list!12327 (left!24817 (left!24817 (c!455898 input!3732))))))))

(assert (=> d!816934 (= (++!8080 (list!12327 (left!24817 (left!24817 (c!455898 input!3732)))) (list!12327 (right!25147 (left!24817 (c!455898 input!3732))))) lt!1005354)))

(declare-fun b!2813958 () Bool)

(assert (=> b!2813958 (= e!1779520 (or (not (= (list!12327 (right!25147 (left!24817 (c!455898 input!3732)))) Nil!32899)) (= lt!1005354 (list!12327 (left!24817 (left!24817 (c!455898 input!3732)))))))))

(declare-fun b!2813956 () Bool)

(assert (=> b!2813956 (= e!1779521 (Cons!32899 (h!38319 (list!12327 (left!24817 (left!24817 (c!455898 input!3732))))) (++!8080 (t!229997 (list!12327 (left!24817 (left!24817 (c!455898 input!3732))))) (list!12327 (right!25147 (left!24817 (c!455898 input!3732)))))))))

(declare-fun b!2813955 () Bool)

(assert (=> b!2813955 (= e!1779521 (list!12327 (right!25147 (left!24817 (c!455898 input!3732)))))))

(declare-fun b!2813957 () Bool)

(declare-fun res!1171360 () Bool)

(assert (=> b!2813957 (=> (not res!1171360) (not e!1779520))))

(assert (=> b!2813957 (= res!1171360 (= (size!25637 lt!1005354) (+ (size!25637 (list!12327 (left!24817 (left!24817 (c!455898 input!3732))))) (size!25637 (list!12327 (right!25147 (left!24817 (c!455898 input!3732))))))))))

(assert (= (and d!816934 c!456012) b!2813955))

(assert (= (and d!816934 (not c!456012)) b!2813956))

(assert (= (and d!816934 res!1171361) b!2813957))

(assert (= (and b!2813957 res!1171360) b!2813958))

(declare-fun m!3244629 () Bool)

(assert (=> d!816934 m!3244629))

(assert (=> d!816934 m!3244359))

(declare-fun m!3244631 () Bool)

(assert (=> d!816934 m!3244631))

(assert (=> d!816934 m!3244361))

(declare-fun m!3244633 () Bool)

(assert (=> d!816934 m!3244633))

(assert (=> b!2813956 m!3244361))

(declare-fun m!3244635 () Bool)

(assert (=> b!2813956 m!3244635))

(declare-fun m!3244637 () Bool)

(assert (=> b!2813957 m!3244637))

(assert (=> b!2813957 m!3244359))

(declare-fun m!3244639 () Bool)

(assert (=> b!2813957 m!3244639))

(assert (=> b!2813957 m!3244361))

(declare-fun m!3244641 () Bool)

(assert (=> b!2813957 m!3244641))

(assert (=> b!2813790 d!816934))

(declare-fun d!816936 () Bool)

(declare-fun c!456013 () Bool)

(assert (=> d!816936 (= c!456013 ((_ is Empty!10196) (left!24817 (left!24817 (c!455898 input!3732)))))))

(declare-fun e!1779522 () List!33023)

(assert (=> d!816936 (= (list!12327 (left!24817 (left!24817 (c!455898 input!3732)))) e!1779522)))

(declare-fun b!2813962 () Bool)

(declare-fun e!1779523 () List!33023)

(assert (=> b!2813962 (= e!1779523 (++!8080 (list!12327 (left!24817 (left!24817 (left!24817 (c!455898 input!3732))))) (list!12327 (right!25147 (left!24817 (left!24817 (c!455898 input!3732)))))))))

(declare-fun b!2813961 () Bool)

(assert (=> b!2813961 (= e!1779523 (list!12330 (xs!13308 (left!24817 (left!24817 (c!455898 input!3732))))))))

(declare-fun b!2813959 () Bool)

(assert (=> b!2813959 (= e!1779522 Nil!32899)))

(declare-fun b!2813960 () Bool)

(assert (=> b!2813960 (= e!1779522 e!1779523)))

(declare-fun c!456014 () Bool)

(assert (=> b!2813960 (= c!456014 ((_ is Leaf!15534) (left!24817 (left!24817 (c!455898 input!3732)))))))

(assert (= (and d!816936 c!456013) b!2813959))

(assert (= (and d!816936 (not c!456013)) b!2813960))

(assert (= (and b!2813960 c!456014) b!2813961))

(assert (= (and b!2813960 (not c!456014)) b!2813962))

(declare-fun m!3244643 () Bool)

(assert (=> b!2813962 m!3244643))

(declare-fun m!3244645 () Bool)

(assert (=> b!2813962 m!3244645))

(assert (=> b!2813962 m!3244643))

(assert (=> b!2813962 m!3244645))

(declare-fun m!3244647 () Bool)

(assert (=> b!2813962 m!3244647))

(assert (=> b!2813961 m!3244593))

(assert (=> b!2813790 d!816936))

(declare-fun d!816938 () Bool)

(declare-fun c!456015 () Bool)

(assert (=> d!816938 (= c!456015 ((_ is Empty!10196) (right!25147 (left!24817 (c!455898 input!3732)))))))

(declare-fun e!1779524 () List!33023)

(assert (=> d!816938 (= (list!12327 (right!25147 (left!24817 (c!455898 input!3732)))) e!1779524)))

(declare-fun b!2813966 () Bool)

(declare-fun e!1779525 () List!33023)

(assert (=> b!2813966 (= e!1779525 (++!8080 (list!12327 (left!24817 (right!25147 (left!24817 (c!455898 input!3732))))) (list!12327 (right!25147 (right!25147 (left!24817 (c!455898 input!3732)))))))))

(declare-fun b!2813965 () Bool)

(assert (=> b!2813965 (= e!1779525 (list!12330 (xs!13308 (right!25147 (left!24817 (c!455898 input!3732))))))))

(declare-fun b!2813963 () Bool)

(assert (=> b!2813963 (= e!1779524 Nil!32899)))

(declare-fun b!2813964 () Bool)

(assert (=> b!2813964 (= e!1779524 e!1779525)))

(declare-fun c!456016 () Bool)

(assert (=> b!2813964 (= c!456016 ((_ is Leaf!15534) (right!25147 (left!24817 (c!455898 input!3732)))))))

(assert (= (and d!816938 c!456015) b!2813963))

(assert (= (and d!816938 (not c!456015)) b!2813964))

(assert (= (and b!2813964 c!456016) b!2813965))

(assert (= (and b!2813964 (not c!456016)) b!2813966))

(declare-fun m!3244649 () Bool)

(assert (=> b!2813966 m!3244649))

(declare-fun m!3244651 () Bool)

(assert (=> b!2813966 m!3244651))

(assert (=> b!2813966 m!3244649))

(assert (=> b!2813966 m!3244651))

(declare-fun m!3244653 () Bool)

(assert (=> b!2813966 m!3244653))

(declare-fun m!3244655 () Bool)

(assert (=> b!2813965 m!3244655))

(assert (=> b!2813790 d!816938))

(declare-fun b!2813967 () Bool)

(declare-fun res!1171365 () Bool)

(declare-fun e!1779526 () Bool)

(assert (=> b!2813967 (=> (not res!1171365) (not e!1779526))))

(assert (=> b!2813967 (= res!1171365 (isBalanced!3090 (right!25147 (right!25147 (right!25147 (c!455898 input!3732))))))))

(declare-fun b!2813968 () Bool)

(declare-fun e!1779527 () Bool)

(assert (=> b!2813968 (= e!1779527 e!1779526)))

(declare-fun res!1171364 () Bool)

(assert (=> b!2813968 (=> (not res!1171364) (not e!1779526))))

(assert (=> b!2813968 (= res!1171364 (<= (- 1) (- (height!1499 (left!24817 (right!25147 (right!25147 (c!455898 input!3732))))) (height!1499 (right!25147 (right!25147 (right!25147 (c!455898 input!3732))))))))))

(declare-fun b!2813969 () Bool)

(declare-fun res!1171362 () Bool)

(assert (=> b!2813969 (=> (not res!1171362) (not e!1779526))))

(assert (=> b!2813969 (= res!1171362 (isBalanced!3090 (left!24817 (right!25147 (right!25147 (c!455898 input!3732))))))))

(declare-fun b!2813970 () Bool)

(declare-fun res!1171363 () Bool)

(assert (=> b!2813970 (=> (not res!1171363) (not e!1779526))))

(assert (=> b!2813970 (= res!1171363 (<= (- (height!1499 (left!24817 (right!25147 (right!25147 (c!455898 input!3732))))) (height!1499 (right!25147 (right!25147 (right!25147 (c!455898 input!3732)))))) 1))))

(declare-fun b!2813971 () Bool)

(assert (=> b!2813971 (= e!1779526 (not (isEmpty!18219 (right!25147 (right!25147 (right!25147 (c!455898 input!3732)))))))))

(declare-fun d!816940 () Bool)

(declare-fun res!1171367 () Bool)

(assert (=> d!816940 (=> res!1171367 e!1779527)))

(assert (=> d!816940 (= res!1171367 (not ((_ is Node!10196) (right!25147 (right!25147 (c!455898 input!3732))))))))

(assert (=> d!816940 (= (isBalanced!3090 (right!25147 (right!25147 (c!455898 input!3732)))) e!1779527)))

(declare-fun b!2813972 () Bool)

(declare-fun res!1171366 () Bool)

(assert (=> b!2813972 (=> (not res!1171366) (not e!1779526))))

(assert (=> b!2813972 (= res!1171366 (not (isEmpty!18219 (left!24817 (right!25147 (right!25147 (c!455898 input!3732)))))))))

(assert (= (and d!816940 (not res!1171367)) b!2813968))

(assert (= (and b!2813968 res!1171364) b!2813970))

(assert (= (and b!2813970 res!1171363) b!2813969))

(assert (= (and b!2813969 res!1171362) b!2813967))

(assert (= (and b!2813967 res!1171365) b!2813972))

(assert (= (and b!2813972 res!1171366) b!2813971))

(assert (=> b!2813968 m!3244571))

(assert (=> b!2813968 m!3244573))

(assert (=> b!2813970 m!3244571))

(assert (=> b!2813970 m!3244573))

(declare-fun m!3244657 () Bool)

(assert (=> b!2813972 m!3244657))

(declare-fun m!3244659 () Bool)

(assert (=> b!2813969 m!3244659))

(declare-fun m!3244661 () Bool)

(assert (=> b!2813971 m!3244661))

(declare-fun m!3244663 () Bool)

(assert (=> b!2813967 m!3244663))

(assert (=> b!2813722 d!816940))

(declare-fun d!816942 () Bool)

(assert (=> d!816942 (= (max!0 (height!1499 (left!24817 (left!24817 (c!455898 input!3732)))) (height!1499 (right!25147 (left!24817 (c!455898 input!3732))))) (ite (< (height!1499 (left!24817 (left!24817 (c!455898 input!3732)))) (height!1499 (right!25147 (left!24817 (c!455898 input!3732))))) (height!1499 (right!25147 (left!24817 (c!455898 input!3732)))) (height!1499 (left!24817 (left!24817 (c!455898 input!3732))))))))

(assert (=> b!2813755 d!816942))

(assert (=> b!2813755 d!816920))

(assert (=> b!2813755 d!816922))

(declare-fun d!816944 () Bool)

(declare-fun lt!1005355 () Int)

(assert (=> d!816944 (>= lt!1005355 0)))

(declare-fun e!1779528 () Int)

(assert (=> d!816944 (= lt!1005355 e!1779528)))

(declare-fun c!456017 () Bool)

(assert (=> d!816944 (= c!456017 ((_ is Nil!32899) (innerList!10256 (xs!13308 (left!24817 (c!455898 input!3732))))))))

(assert (=> d!816944 (= (size!25637 (innerList!10256 (xs!13308 (left!24817 (c!455898 input!3732))))) lt!1005355)))

(declare-fun b!2813973 () Bool)

(assert (=> b!2813973 (= e!1779528 0)))

(declare-fun b!2813974 () Bool)

(assert (=> b!2813974 (= e!1779528 (+ 1 (size!25637 (t!229997 (innerList!10256 (xs!13308 (left!24817 (c!455898 input!3732))))))))))

(assert (= (and d!816944 c!456017) b!2813973))

(assert (= (and d!816944 (not c!456017)) b!2813974))

(declare-fun m!3244665 () Bool)

(assert (=> b!2813974 m!3244665))

(assert (=> d!816766 d!816944))

(declare-fun d!816946 () Bool)

(declare-fun c!456018 () Bool)

(assert (=> d!816946 (= c!456018 ((_ is Node!10196) (left!24817 (right!25147 (left!24817 (c!455898 input!3732))))))))

(declare-fun e!1779529 () Bool)

(assert (=> d!816946 (= (inv!44705 (left!24817 (right!25147 (left!24817 (c!455898 input!3732))))) e!1779529)))

(declare-fun b!2813975 () Bool)

(assert (=> b!2813975 (= e!1779529 (inv!44706 (left!24817 (right!25147 (left!24817 (c!455898 input!3732))))))))

(declare-fun b!2813976 () Bool)

(declare-fun e!1779530 () Bool)

(assert (=> b!2813976 (= e!1779529 e!1779530)))

(declare-fun res!1171368 () Bool)

(assert (=> b!2813976 (= res!1171368 (not ((_ is Leaf!15534) (left!24817 (right!25147 (left!24817 (c!455898 input!3732)))))))))

(assert (=> b!2813976 (=> res!1171368 e!1779530)))

(declare-fun b!2813977 () Bool)

(assert (=> b!2813977 (= e!1779530 (inv!44707 (left!24817 (right!25147 (left!24817 (c!455898 input!3732))))))))

(assert (= (and d!816946 c!456018) b!2813975))

(assert (= (and d!816946 (not c!456018)) b!2813976))

(assert (= (and b!2813976 (not res!1171368)) b!2813977))

(declare-fun m!3244667 () Bool)

(assert (=> b!2813975 m!3244667))

(declare-fun m!3244669 () Bool)

(assert (=> b!2813977 m!3244669))

(assert (=> b!2813802 d!816946))

(declare-fun d!816948 () Bool)

(declare-fun c!456019 () Bool)

(assert (=> d!816948 (= c!456019 ((_ is Node!10196) (right!25147 (right!25147 (left!24817 (c!455898 input!3732))))))))

(declare-fun e!1779531 () Bool)

(assert (=> d!816948 (= (inv!44705 (right!25147 (right!25147 (left!24817 (c!455898 input!3732))))) e!1779531)))

(declare-fun b!2813978 () Bool)

(assert (=> b!2813978 (= e!1779531 (inv!44706 (right!25147 (right!25147 (left!24817 (c!455898 input!3732))))))))

(declare-fun b!2813979 () Bool)

(declare-fun e!1779532 () Bool)

(assert (=> b!2813979 (= e!1779531 e!1779532)))

(declare-fun res!1171369 () Bool)

(assert (=> b!2813979 (= res!1171369 (not ((_ is Leaf!15534) (right!25147 (right!25147 (left!24817 (c!455898 input!3732)))))))))

(assert (=> b!2813979 (=> res!1171369 e!1779532)))

(declare-fun b!2813980 () Bool)

(assert (=> b!2813980 (= e!1779532 (inv!44707 (right!25147 (right!25147 (left!24817 (c!455898 input!3732))))))))

(assert (= (and d!816948 c!456019) b!2813978))

(assert (= (and d!816948 (not c!456019)) b!2813979))

(assert (= (and b!2813979 (not res!1171369)) b!2813980))

(declare-fun m!3244671 () Bool)

(assert (=> b!2813978 m!3244671))

(declare-fun m!3244673 () Bool)

(assert (=> b!2813980 m!3244673))

(assert (=> b!2813802 d!816948))

(assert (=> b!2813793 d!816896))

(declare-fun d!816950 () Bool)

(declare-fun lt!1005356 () Int)

(assert (=> d!816950 (= lt!1005356 (size!25637 (list!12327 (left!24817 (left!24817 (c!455898 input!3732))))))))

(assert (=> d!816950 (= lt!1005356 (ite ((_ is Empty!10196) (left!24817 (left!24817 (c!455898 input!3732)))) 0 (ite ((_ is Leaf!15534) (left!24817 (left!24817 (c!455898 input!3732)))) (csize!20623 (left!24817 (left!24817 (c!455898 input!3732)))) (csize!20622 (left!24817 (left!24817 (c!455898 input!3732)))))))))

(assert (=> d!816950 (= (size!25638 (left!24817 (left!24817 (c!455898 input!3732)))) lt!1005356)))

(declare-fun bs!516553 () Bool)

(assert (= bs!516553 d!816950))

(assert (=> bs!516553 m!3244359))

(assert (=> bs!516553 m!3244359))

(assert (=> bs!516553 m!3244639))

(assert (=> d!816792 d!816950))

(declare-fun d!816952 () Bool)

(declare-fun lt!1005357 () Int)

(assert (=> d!816952 (= lt!1005357 (size!25637 (list!12327 (right!25147 (left!24817 (c!455898 input!3732))))))))

(assert (=> d!816952 (= lt!1005357 (ite ((_ is Empty!10196) (right!25147 (left!24817 (c!455898 input!3732)))) 0 (ite ((_ is Leaf!15534) (right!25147 (left!24817 (c!455898 input!3732)))) (csize!20623 (right!25147 (left!24817 (c!455898 input!3732)))) (csize!20622 (right!25147 (left!24817 (c!455898 input!3732)))))))))

(assert (=> d!816952 (= (size!25638 (right!25147 (left!24817 (c!455898 input!3732)))) lt!1005357)))

(declare-fun bs!516554 () Bool)

(assert (= bs!516554 d!816952))

(assert (=> bs!516554 m!3244361))

(assert (=> bs!516554 m!3244361))

(assert (=> bs!516554 m!3244641))

(assert (=> d!816792 d!816952))

(declare-fun d!816954 () Bool)

(assert (=> d!816954 (= (inv!44708 (xs!13308 (left!24817 (right!25147 (c!455898 input!3732))))) (<= (size!25637 (innerList!10256 (xs!13308 (left!24817 (right!25147 (c!455898 input!3732)))))) 2147483647))))

(declare-fun bs!516555 () Bool)

(assert (= bs!516555 d!816954))

(declare-fun m!3244675 () Bool)

(assert (=> bs!516555 m!3244675))

(assert (=> b!2813807 d!816954))

(assert (=> b!2813641 d!816772))

(assert (=> b!2813641 d!816774))

(declare-fun d!816956 () Bool)

(declare-fun lt!1005358 () Int)

(assert (=> d!816956 (>= lt!1005358 0)))

(declare-fun e!1779533 () Int)

(assert (=> d!816956 (= lt!1005358 e!1779533)))

(declare-fun c!456020 () Bool)

(assert (=> d!816956 (= c!456020 ((_ is Nil!32899) (t!229997 (list!12330 (xs!13308 (c!455898 input!3732))))))))

(assert (=> d!816956 (= (size!25637 (t!229997 (list!12330 (xs!13308 (c!455898 input!3732))))) lt!1005358)))

(declare-fun b!2813981 () Bool)

(assert (=> b!2813981 (= e!1779533 0)))

(declare-fun b!2813982 () Bool)

(assert (=> b!2813982 (= e!1779533 (+ 1 (size!25637 (t!229997 (t!229997 (list!12330 (xs!13308 (c!455898 input!3732))))))))))

(assert (= (and d!816956 c!456020) b!2813981))

(assert (= (and d!816956 (not c!456020)) b!2813982))

(declare-fun m!3244677 () Bool)

(assert (=> b!2813982 m!3244677))

(assert (=> b!2813719 d!816956))

(declare-fun d!816958 () Bool)

(declare-fun lt!1005359 () Int)

(assert (=> d!816958 (>= lt!1005359 0)))

(declare-fun e!1779534 () Int)

(assert (=> d!816958 (= lt!1005359 e!1779534)))

(declare-fun c!456021 () Bool)

(assert (=> d!816958 (= c!456021 ((_ is Nil!32899) (innerList!10256 (xs!13308 (right!25147 (c!455898 input!3732))))))))

(assert (=> d!816958 (= (size!25637 (innerList!10256 (xs!13308 (right!25147 (c!455898 input!3732))))) lt!1005359)))

(declare-fun b!2813983 () Bool)

(assert (=> b!2813983 (= e!1779534 0)))

(declare-fun b!2813984 () Bool)

(assert (=> b!2813984 (= e!1779534 (+ 1 (size!25637 (t!229997 (innerList!10256 (xs!13308 (right!25147 (c!455898 input!3732))))))))))

(assert (= (and d!816958 c!456021) b!2813983))

(assert (= (and d!816958 (not c!456021)) b!2813984))

(declare-fun m!3244679 () Bool)

(assert (=> b!2813984 m!3244679))

(assert (=> d!816780 d!816958))

(declare-fun d!816960 () Bool)

(assert (=> d!816960 (= (isEmpty!18218 (list!12327 (left!24817 (c!455898 input!3732)))) ((_ is Nil!32899) (list!12327 (left!24817 (c!455898 input!3732)))))))

(assert (=> d!816798 d!816960))

(assert (=> d!816798 d!816816))

(assert (=> d!816798 d!816800))

(assert (=> b!2813646 d!816788))

(assert (=> b!2813646 d!816790))

(declare-fun d!816962 () Bool)

(declare-fun lt!1005360 () Int)

(assert (=> d!816962 (>= lt!1005360 0)))

(declare-fun e!1779535 () Int)

(assert (=> d!816962 (= lt!1005360 e!1779535)))

(declare-fun c!456022 () Bool)

(assert (=> d!816962 (= c!456022 ((_ is Nil!32899) (t!229997 (t!229997 (list!12326 input!3732)))))))

(assert (=> d!816962 (= (size!25637 (t!229997 (t!229997 (list!12326 input!3732)))) lt!1005360)))

(declare-fun b!2813985 () Bool)

(assert (=> b!2813985 (= e!1779535 0)))

(declare-fun b!2813986 () Bool)

(assert (=> b!2813986 (= e!1779535 (+ 1 (size!25637 (t!229997 (t!229997 (t!229997 (list!12326 input!3732)))))))))

(assert (= (and d!816962 c!456022) b!2813985))

(assert (= (and d!816962 (not c!456022)) b!2813986))

(declare-fun m!3244681 () Bool)

(assert (=> b!2813986 m!3244681))

(assert (=> b!2813721 d!816962))

(declare-fun d!816964 () Bool)

(declare-fun lt!1005361 () Int)

(assert (=> d!816964 (= lt!1005361 (size!25637 (list!12327 (left!24817 (right!25147 (c!455898 input!3732))))))))

(assert (=> d!816964 (= lt!1005361 (ite ((_ is Empty!10196) (left!24817 (right!25147 (c!455898 input!3732)))) 0 (ite ((_ is Leaf!15534) (left!24817 (right!25147 (c!455898 input!3732)))) (csize!20623 (left!24817 (right!25147 (c!455898 input!3732)))) (csize!20622 (left!24817 (right!25147 (c!455898 input!3732)))))))))

(assert (=> d!816964 (= (size!25638 (left!24817 (right!25147 (c!455898 input!3732)))) lt!1005361)))

(declare-fun bs!516556 () Bool)

(assert (= bs!516556 d!816964))

(assert (=> bs!516556 m!3244365))

(assert (=> bs!516556 m!3244365))

(declare-fun m!3244683 () Bool)

(assert (=> bs!516556 m!3244683))

(assert (=> d!816810 d!816964))

(declare-fun d!816966 () Bool)

(declare-fun lt!1005362 () Int)

(assert (=> d!816966 (= lt!1005362 (size!25637 (list!12327 (right!25147 (right!25147 (c!455898 input!3732))))))))

(assert (=> d!816966 (= lt!1005362 (ite ((_ is Empty!10196) (right!25147 (right!25147 (c!455898 input!3732)))) 0 (ite ((_ is Leaf!15534) (right!25147 (right!25147 (c!455898 input!3732)))) (csize!20623 (right!25147 (right!25147 (c!455898 input!3732)))) (csize!20622 (right!25147 (right!25147 (c!455898 input!3732)))))))))

(assert (=> d!816966 (= (size!25638 (right!25147 (right!25147 (c!455898 input!3732)))) lt!1005362)))

(declare-fun bs!516557 () Bool)

(assert (= bs!516557 d!816966))

(assert (=> bs!516557 m!3244367))

(assert (=> bs!516557 m!3244367))

(declare-fun m!3244685 () Bool)

(assert (=> bs!516557 m!3244685))

(assert (=> d!816810 d!816966))

(declare-fun d!816968 () Bool)

(declare-fun lt!1005363 () Bool)

(assert (=> d!816968 (= lt!1005363 (isEmpty!18218 (list!12327 (left!24817 (left!24817 (c!455898 input!3732))))))))

(assert (=> d!816968 (= lt!1005363 (= (size!25638 (left!24817 (left!24817 (c!455898 input!3732)))) 0))))

(assert (=> d!816968 (= (isEmpty!18219 (left!24817 (left!24817 (c!455898 input!3732)))) lt!1005363)))

(declare-fun bs!516558 () Bool)

(assert (= bs!516558 d!816968))

(assert (=> bs!516558 m!3244359))

(assert (=> bs!516558 m!3244359))

(declare-fun m!3244687 () Bool)

(assert (=> bs!516558 m!3244687))

(assert (=> bs!516558 m!3244315))

(assert (=> b!2813739 d!816968))

(declare-fun d!816970 () Bool)

(declare-fun c!456023 () Bool)

(assert (=> d!816970 (= c!456023 ((_ is Node!10196) (left!24817 (right!25147 (right!25147 (c!455898 input!3732))))))))

(declare-fun e!1779536 () Bool)

(assert (=> d!816970 (= (inv!44705 (left!24817 (right!25147 (right!25147 (c!455898 input!3732))))) e!1779536)))

(declare-fun b!2813987 () Bool)

(assert (=> b!2813987 (= e!1779536 (inv!44706 (left!24817 (right!25147 (right!25147 (c!455898 input!3732))))))))

(declare-fun b!2813988 () Bool)

(declare-fun e!1779537 () Bool)

(assert (=> b!2813988 (= e!1779536 e!1779537)))

(declare-fun res!1171370 () Bool)

(assert (=> b!2813988 (= res!1171370 (not ((_ is Leaf!15534) (left!24817 (right!25147 (right!25147 (c!455898 input!3732)))))))))

(assert (=> b!2813988 (=> res!1171370 e!1779537)))

(declare-fun b!2813989 () Bool)

(assert (=> b!2813989 (= e!1779537 (inv!44707 (left!24817 (right!25147 (right!25147 (c!455898 input!3732))))))))

(assert (= (and d!816970 c!456023) b!2813987))

(assert (= (and d!816970 (not c!456023)) b!2813988))

(assert (= (and b!2813988 (not res!1171370)) b!2813989))

(declare-fun m!3244689 () Bool)

(assert (=> b!2813987 m!3244689))

(declare-fun m!3244691 () Bool)

(assert (=> b!2813989 m!3244691))

(assert (=> b!2813809 d!816970))

(declare-fun d!816972 () Bool)

(declare-fun c!456024 () Bool)

(assert (=> d!816972 (= c!456024 ((_ is Node!10196) (right!25147 (right!25147 (right!25147 (c!455898 input!3732))))))))

(declare-fun e!1779538 () Bool)

(assert (=> d!816972 (= (inv!44705 (right!25147 (right!25147 (right!25147 (c!455898 input!3732))))) e!1779538)))

(declare-fun b!2813990 () Bool)

(assert (=> b!2813990 (= e!1779538 (inv!44706 (right!25147 (right!25147 (right!25147 (c!455898 input!3732))))))))

(declare-fun b!2813991 () Bool)

(declare-fun e!1779539 () Bool)

(assert (=> b!2813991 (= e!1779538 e!1779539)))

(declare-fun res!1171371 () Bool)

(assert (=> b!2813991 (= res!1171371 (not ((_ is Leaf!15534) (right!25147 (right!25147 (right!25147 (c!455898 input!3732)))))))))

(assert (=> b!2813991 (=> res!1171371 e!1779539)))

(declare-fun b!2813992 () Bool)

(assert (=> b!2813992 (= e!1779539 (inv!44707 (right!25147 (right!25147 (right!25147 (c!455898 input!3732))))))))

(assert (= (and d!816972 c!456024) b!2813990))

(assert (= (and d!816972 (not c!456024)) b!2813991))

(assert (= (and b!2813991 (not res!1171371)) b!2813992))

(declare-fun m!3244693 () Bool)

(assert (=> b!2813990 m!3244693))

(declare-fun m!3244695 () Bool)

(assert (=> b!2813992 m!3244695))

(assert (=> b!2813809 d!816972))

(assert (=> b!2813737 d!816920))

(assert (=> b!2813737 d!816922))

(declare-fun d!816974 () Bool)

(assert (=> d!816974 (= (inv!44708 (xs!13308 (left!24817 (left!24817 (c!455898 input!3732))))) (<= (size!25637 (innerList!10256 (xs!13308 (left!24817 (left!24817 (c!455898 input!3732)))))) 2147483647))))

(declare-fun bs!516559 () Bool)

(assert (= bs!516559 d!816974))

(declare-fun m!3244697 () Bool)

(assert (=> bs!516559 m!3244697))

(assert (=> b!2813800 d!816974))

(declare-fun d!816976 () Bool)

(declare-fun lt!1005364 () Int)

(assert (=> d!816976 (>= lt!1005364 0)))

(declare-fun e!1779540 () Int)

(assert (=> d!816976 (= lt!1005364 e!1779540)))

(declare-fun c!456025 () Bool)

(assert (=> d!816976 (= c!456025 ((_ is Nil!32899) (t!229997 lt!1005300)))))

(assert (=> d!816976 (= (size!25637 (t!229997 lt!1005300)) lt!1005364)))

(declare-fun b!2813993 () Bool)

(assert (=> b!2813993 (= e!1779540 0)))

(declare-fun b!2813994 () Bool)

(assert (=> b!2813994 (= e!1779540 (+ 1 (size!25637 (t!229997 (t!229997 lt!1005300)))))))

(assert (= (and d!816976 c!456025) b!2813993))

(assert (= (and d!816976 (not c!456025)) b!2813994))

(declare-fun m!3244699 () Bool)

(assert (=> b!2813994 m!3244699))

(assert (=> b!2813769 d!816976))

(declare-fun d!816978 () Bool)

(declare-fun lt!1005365 () Bool)

(assert (=> d!816978 (= lt!1005365 (isEmpty!18218 (list!12327 (right!25147 (right!25147 (c!455898 input!3732))))))))

(assert (=> d!816978 (= lt!1005365 (= (size!25638 (right!25147 (right!25147 (c!455898 input!3732)))) 0))))

(assert (=> d!816978 (= (isEmpty!18219 (right!25147 (right!25147 (c!455898 input!3732)))) lt!1005365)))

(declare-fun bs!516560 () Bool)

(assert (= bs!516560 d!816978))

(assert (=> bs!516560 m!3244367))

(assert (=> bs!516560 m!3244367))

(declare-fun m!3244701 () Bool)

(assert (=> bs!516560 m!3244701))

(assert (=> bs!516560 m!3244343))

(assert (=> b!2813726 d!816978))

(assert (=> b!2813747 d!816912))

(declare-fun d!816980 () Bool)

(declare-fun c!456026 () Bool)

(assert (=> d!816980 (= c!456026 ((_ is Node!10196) (left!24817 (left!24817 (left!24817 (c!455898 input!3732))))))))

(declare-fun e!1779541 () Bool)

(assert (=> d!816980 (= (inv!44705 (left!24817 (left!24817 (left!24817 (c!455898 input!3732))))) e!1779541)))

(declare-fun b!2813995 () Bool)

(assert (=> b!2813995 (= e!1779541 (inv!44706 (left!24817 (left!24817 (left!24817 (c!455898 input!3732))))))))

(declare-fun b!2813996 () Bool)

(declare-fun e!1779542 () Bool)

(assert (=> b!2813996 (= e!1779541 e!1779542)))

(declare-fun res!1171372 () Bool)

(assert (=> b!2813996 (= res!1171372 (not ((_ is Leaf!15534) (left!24817 (left!24817 (left!24817 (c!455898 input!3732)))))))))

(assert (=> b!2813996 (=> res!1171372 e!1779542)))

(declare-fun b!2813997 () Bool)

(assert (=> b!2813997 (= e!1779542 (inv!44707 (left!24817 (left!24817 (left!24817 (c!455898 input!3732))))))))

(assert (= (and d!816980 c!456026) b!2813995))

(assert (= (and d!816980 (not c!456026)) b!2813996))

(assert (= (and b!2813996 (not res!1171372)) b!2813997))

(declare-fun m!3244703 () Bool)

(assert (=> b!2813995 m!3244703))

(declare-fun m!3244705 () Bool)

(assert (=> b!2813997 m!3244705))

(assert (=> b!2813799 d!816980))

(declare-fun d!816982 () Bool)

(declare-fun c!456027 () Bool)

(assert (=> d!816982 (= c!456027 ((_ is Node!10196) (right!25147 (left!24817 (left!24817 (c!455898 input!3732))))))))

(declare-fun e!1779543 () Bool)

(assert (=> d!816982 (= (inv!44705 (right!25147 (left!24817 (left!24817 (c!455898 input!3732))))) e!1779543)))

(declare-fun b!2813998 () Bool)

(assert (=> b!2813998 (= e!1779543 (inv!44706 (right!25147 (left!24817 (left!24817 (c!455898 input!3732))))))))

(declare-fun b!2813999 () Bool)

(declare-fun e!1779544 () Bool)

(assert (=> b!2813999 (= e!1779543 e!1779544)))

(declare-fun res!1171373 () Bool)

(assert (=> b!2813999 (= res!1171373 (not ((_ is Leaf!15534) (right!25147 (left!24817 (left!24817 (c!455898 input!3732)))))))))

(assert (=> b!2813999 (=> res!1171373 e!1779544)))

(declare-fun b!2814000 () Bool)

(assert (=> b!2814000 (= e!1779544 (inv!44707 (right!25147 (left!24817 (left!24817 (c!455898 input!3732))))))))

(assert (= (and d!816982 c!456027) b!2813998))

(assert (= (and d!816982 (not c!456027)) b!2813999))

(assert (= (and b!2813999 (not res!1171373)) b!2814000))

(declare-fun m!3244707 () Bool)

(assert (=> b!2813998 m!3244707))

(declare-fun m!3244709 () Bool)

(assert (=> b!2814000 m!3244709))

(assert (=> b!2813799 d!816982))

(declare-fun d!816984 () Bool)

(assert (=> d!816984 (= (height!1499 (left!24817 (right!25147 (c!455898 input!3732)))) (ite ((_ is Empty!10196) (left!24817 (right!25147 (c!455898 input!3732)))) 0 (ite ((_ is Leaf!15534) (left!24817 (right!25147 (c!455898 input!3732)))) 1 (cheight!10407 (left!24817 (right!25147 (c!455898 input!3732)))))))))

(assert (=> b!2813725 d!816984))

(declare-fun d!816986 () Bool)

(assert (=> d!816986 (= (height!1499 (right!25147 (right!25147 (c!455898 input!3732)))) (ite ((_ is Empty!10196) (right!25147 (right!25147 (c!455898 input!3732)))) 0 (ite ((_ is Leaf!15534) (right!25147 (right!25147 (c!455898 input!3732)))) 1 (cheight!10407 (right!25147 (right!25147 (c!455898 input!3732)))))))))

(assert (=> b!2813725 d!816986))

(declare-fun d!816988 () Bool)

(declare-fun res!1171374 () Bool)

(declare-fun e!1779545 () Bool)

(assert (=> d!816988 (=> (not res!1171374) (not e!1779545))))

(assert (=> d!816988 (= res!1171374 (= (csize!20622 (left!24817 (left!24817 (c!455898 input!3732)))) (+ (size!25638 (left!24817 (left!24817 (left!24817 (c!455898 input!3732))))) (size!25638 (right!25147 (left!24817 (left!24817 (c!455898 input!3732))))))))))

(assert (=> d!816988 (= (inv!44706 (left!24817 (left!24817 (c!455898 input!3732)))) e!1779545)))

(declare-fun b!2814001 () Bool)

(declare-fun res!1171375 () Bool)

(assert (=> b!2814001 (=> (not res!1171375) (not e!1779545))))

(assert (=> b!2814001 (= res!1171375 (and (not (= (left!24817 (left!24817 (left!24817 (c!455898 input!3732)))) Empty!10196)) (not (= (right!25147 (left!24817 (left!24817 (c!455898 input!3732)))) Empty!10196))))))

(declare-fun b!2814002 () Bool)

(declare-fun res!1171376 () Bool)

(assert (=> b!2814002 (=> (not res!1171376) (not e!1779545))))

(assert (=> b!2814002 (= res!1171376 (= (cheight!10407 (left!24817 (left!24817 (c!455898 input!3732)))) (+ (max!0 (height!1499 (left!24817 (left!24817 (left!24817 (c!455898 input!3732))))) (height!1499 (right!25147 (left!24817 (left!24817 (c!455898 input!3732)))))) 1)))))

(declare-fun b!2814003 () Bool)

(assert (=> b!2814003 (= e!1779545 (<= 0 (cheight!10407 (left!24817 (left!24817 (c!455898 input!3732))))))))

(assert (= (and d!816988 res!1171374) b!2814001))

(assert (= (and b!2814001 res!1171375) b!2814002))

(assert (= (and b!2814002 res!1171376) b!2814003))

(declare-fun m!3244711 () Bool)

(assert (=> d!816988 m!3244711))

(declare-fun m!3244713 () Bool)

(assert (=> d!816988 m!3244713))

(assert (=> b!2814002 m!3244597))

(assert (=> b!2814002 m!3244599))

(assert (=> b!2814002 m!3244597))

(assert (=> b!2814002 m!3244599))

(declare-fun m!3244715 () Bool)

(assert (=> b!2814002 m!3244715))

(assert (=> b!2813728 d!816988))

(declare-fun d!816990 () Bool)

(declare-fun lt!1005366 () Int)

(assert (=> d!816990 (>= lt!1005366 0)))

(declare-fun e!1779546 () Int)

(assert (=> d!816990 (= lt!1005366 e!1779546)))

(declare-fun c!456028 () Bool)

(assert (=> d!816990 (= c!456028 ((_ is Nil!32899) (list!12330 (xs!13308 (left!24817 (c!455898 input!3732))))))))

(assert (=> d!816990 (= (size!25637 (list!12330 (xs!13308 (left!24817 (c!455898 input!3732))))) lt!1005366)))

(declare-fun b!2814004 () Bool)

(assert (=> b!2814004 (= e!1779546 0)))

(declare-fun b!2814005 () Bool)

(assert (=> b!2814005 (= e!1779546 (+ 1 (size!25637 (t!229997 (list!12330 (xs!13308 (left!24817 (c!455898 input!3732))))))))))

(assert (= (and d!816990 c!456028) b!2814004))

(assert (= (and d!816990 (not c!456028)) b!2814005))

(declare-fun m!3244717 () Bool)

(assert (=> b!2814005 m!3244717))

(assert (=> b!2813757 d!816990))

(declare-fun d!816992 () Bool)

(assert (=> d!816992 (= (list!12330 (xs!13308 (left!24817 (c!455898 input!3732)))) (innerList!10256 (xs!13308 (left!24817 (c!455898 input!3732)))))))

(assert (=> b!2813757 d!816992))

(declare-fun b!2814006 () Bool)

(declare-fun res!1171380 () Bool)

(declare-fun e!1779547 () Bool)

(assert (=> b!2814006 (=> (not res!1171380) (not e!1779547))))

(assert (=> b!2814006 (= res!1171380 (isBalanced!3090 (right!25147 (right!25147 (left!24817 (c!455898 input!3732))))))))

(declare-fun b!2814007 () Bool)

(declare-fun e!1779548 () Bool)

(assert (=> b!2814007 (= e!1779548 e!1779547)))

(declare-fun res!1171379 () Bool)

(assert (=> b!2814007 (=> (not res!1171379) (not e!1779547))))

(assert (=> b!2814007 (= res!1171379 (<= (- 1) (- (height!1499 (left!24817 (right!25147 (left!24817 (c!455898 input!3732))))) (height!1499 (right!25147 (right!25147 (left!24817 (c!455898 input!3732))))))))))

(declare-fun b!2814008 () Bool)

(declare-fun res!1171377 () Bool)

(assert (=> b!2814008 (=> (not res!1171377) (not e!1779547))))

(assert (=> b!2814008 (= res!1171377 (isBalanced!3090 (left!24817 (right!25147 (left!24817 (c!455898 input!3732))))))))

(declare-fun b!2814009 () Bool)

(declare-fun res!1171378 () Bool)

(assert (=> b!2814009 (=> (not res!1171378) (not e!1779547))))

(assert (=> b!2814009 (= res!1171378 (<= (- (height!1499 (left!24817 (right!25147 (left!24817 (c!455898 input!3732))))) (height!1499 (right!25147 (right!25147 (left!24817 (c!455898 input!3732)))))) 1))))

(declare-fun b!2814010 () Bool)

(assert (=> b!2814010 (= e!1779547 (not (isEmpty!18219 (right!25147 (right!25147 (left!24817 (c!455898 input!3732)))))))))

(declare-fun d!816994 () Bool)

(declare-fun res!1171382 () Bool)

(assert (=> d!816994 (=> res!1171382 e!1779548)))

(assert (=> d!816994 (= res!1171382 (not ((_ is Node!10196) (right!25147 (left!24817 (c!455898 input!3732))))))))

(assert (=> d!816994 (= (isBalanced!3090 (right!25147 (left!24817 (c!455898 input!3732)))) e!1779548)))

(declare-fun b!2814011 () Bool)

(declare-fun res!1171381 () Bool)

(assert (=> b!2814011 (=> (not res!1171381) (not e!1779547))))

(assert (=> b!2814011 (= res!1171381 (not (isEmpty!18219 (left!24817 (right!25147 (left!24817 (c!455898 input!3732)))))))))

(assert (= (and d!816994 (not res!1171382)) b!2814007))

(assert (= (and b!2814007 res!1171379) b!2814009))

(assert (= (and b!2814009 res!1171378) b!2814008))

(assert (= (and b!2814008 res!1171377) b!2814006))

(assert (= (and b!2814006 res!1171380) b!2814011))

(assert (= (and b!2814011 res!1171381) b!2814010))

(declare-fun m!3244719 () Bool)

(assert (=> b!2814007 m!3244719))

(declare-fun m!3244721 () Bool)

(assert (=> b!2814007 m!3244721))

(assert (=> b!2814009 m!3244719))

(assert (=> b!2814009 m!3244721))

(declare-fun m!3244723 () Bool)

(assert (=> b!2814011 m!3244723))

(declare-fun m!3244725 () Bool)

(assert (=> b!2814008 m!3244725))

(declare-fun m!3244727 () Bool)

(assert (=> b!2814010 m!3244727))

(declare-fun m!3244729 () Bool)

(assert (=> b!2814006 m!3244729))

(assert (=> b!2813734 d!816994))

(declare-fun d!816996 () Bool)

(declare-fun lt!1005367 () Int)

(assert (=> d!816996 (>= lt!1005367 0)))

(declare-fun e!1779549 () Int)

(assert (=> d!816996 (= lt!1005367 e!1779549)))

(declare-fun c!456029 () Bool)

(assert (=> d!816996 (= c!456029 ((_ is Nil!32899) (t!229997 (list!12327 (c!455898 input!3732)))))))

(assert (=> d!816996 (= (size!25637 (t!229997 (list!12327 (c!455898 input!3732)))) lt!1005367)))

(declare-fun b!2814012 () Bool)

(assert (=> b!2814012 (= e!1779549 0)))

(declare-fun b!2814013 () Bool)

(assert (=> b!2814013 (= e!1779549 (+ 1 (size!25637 (t!229997 (t!229997 (list!12327 (c!455898 input!3732)))))))))

(assert (= (and d!816996 c!456029) b!2814012))

(assert (= (and d!816996 (not c!456029)) b!2814013))

(declare-fun m!3244731 () Bool)

(assert (=> b!2814013 m!3244731))

(assert (=> b!2813717 d!816996))

(assert (=> b!2813723 d!816984))

(assert (=> b!2813723 d!816986))

(declare-fun d!816998 () Bool)

(declare-fun e!1779550 () Bool)

(assert (=> d!816998 e!1779550))

(declare-fun res!1171384 () Bool)

(assert (=> d!816998 (=> (not res!1171384) (not e!1779550))))

(declare-fun lt!1005368 () List!33023)

(assert (=> d!816998 (= res!1171384 (= (content!4592 lt!1005368) ((_ map or) (content!4592 (t!229997 (list!12327 (left!24817 (c!455898 input!3732))))) (content!4592 (list!12327 (right!25147 (c!455898 input!3732)))))))))

(declare-fun e!1779551 () List!33023)

(assert (=> d!816998 (= lt!1005368 e!1779551)))

(declare-fun c!456030 () Bool)

(assert (=> d!816998 (= c!456030 ((_ is Nil!32899) (t!229997 (list!12327 (left!24817 (c!455898 input!3732))))))))

(assert (=> d!816998 (= (++!8080 (t!229997 (list!12327 (left!24817 (c!455898 input!3732)))) (list!12327 (right!25147 (c!455898 input!3732)))) lt!1005368)))

(declare-fun b!2814017 () Bool)

(assert (=> b!2814017 (= e!1779550 (or (not (= (list!12327 (right!25147 (c!455898 input!3732))) Nil!32899)) (= lt!1005368 (t!229997 (list!12327 (left!24817 (c!455898 input!3732)))))))))

(declare-fun b!2814015 () Bool)

(assert (=> b!2814015 (= e!1779551 (Cons!32899 (h!38319 (t!229997 (list!12327 (left!24817 (c!455898 input!3732))))) (++!8080 (t!229997 (t!229997 (list!12327 (left!24817 (c!455898 input!3732))))) (list!12327 (right!25147 (c!455898 input!3732))))))))

(declare-fun b!2814014 () Bool)

(assert (=> b!2814014 (= e!1779551 (list!12327 (right!25147 (c!455898 input!3732))))))

(declare-fun b!2814016 () Bool)

(declare-fun res!1171383 () Bool)

(assert (=> b!2814016 (=> (not res!1171383) (not e!1779550))))

(assert (=> b!2814016 (= res!1171383 (= (size!25637 lt!1005368) (+ (size!25637 (t!229997 (list!12327 (left!24817 (c!455898 input!3732))))) (size!25637 (list!12327 (right!25147 (c!455898 input!3732)))))))))

(assert (= (and d!816998 c!456030) b!2814014))

(assert (= (and d!816998 (not c!456030)) b!2814015))

(assert (= (and d!816998 res!1171384) b!2814016))

(assert (= (and b!2814016 res!1171383) b!2814017))

(declare-fun m!3244733 () Bool)

(assert (=> d!816998 m!3244733))

(assert (=> d!816998 m!3244555))

(assert (=> d!816998 m!3244181))

(assert (=> d!816998 m!3244353))

(assert (=> b!2814015 m!3244181))

(declare-fun m!3244735 () Bool)

(assert (=> b!2814015 m!3244735))

(declare-fun m!3244737 () Bool)

(assert (=> b!2814016 m!3244737))

(assert (=> b!2814016 m!3244625))

(assert (=> b!2814016 m!3244181))

(assert (=> b!2814016 m!3244331))

(assert (=> b!2813784 d!816998))

(assert (=> b!2813789 d!816992))

(assert (=> d!816802 d!816932))

(assert (=> d!816802 d!816818))

(assert (=> bm!183166 d!816996))

(assert (=> d!816796 d!816990))

(assert (=> d!816796 d!816992))

(declare-fun d!817000 () Bool)

(declare-fun e!1779554 () Bool)

(assert (=> d!817000 e!1779554))

(declare-fun res!1171385 () Bool)

(assert (=> d!817000 (=> (not res!1171385) (not e!1779554))))

(declare-fun lt!1005369 () List!33023)

(assert (=> d!817000 (= res!1171385 (= ((_ map implies) (content!4592 lt!1005369) (content!4592 (t!229997 (t!229997 (list!12327 (c!455898 input!3732)))))) ((as const (InoxSet C!16764)) true)))))

(declare-fun e!1779553 () List!33023)

(assert (=> d!817000 (= lt!1005369 e!1779553)))

(declare-fun c!456032 () Bool)

(assert (=> d!817000 (= c!456032 ((_ is Nil!32899) (t!229997 (t!229997 (list!12327 (c!455898 input!3732))))))))

(assert (=> d!817000 (= (drop!1769 (t!229997 (t!229997 (list!12327 (c!455898 input!3732)))) (- (- i!1825 1) 1)) lt!1005369)))

(declare-fun b!2814018 () Bool)

(declare-fun e!1779555 () List!33023)

(assert (=> b!2814018 (= e!1779555 (drop!1769 (t!229997 (t!229997 (t!229997 (list!12327 (c!455898 input!3732))))) (- (- (- i!1825 1) 1) 1)))))

(declare-fun b!2814019 () Bool)

(declare-fun e!1779556 () Int)

(declare-fun e!1779552 () Int)

(assert (=> b!2814019 (= e!1779556 e!1779552)))

(declare-fun c!456034 () Bool)

(declare-fun call!183173 () Int)

(assert (=> b!2814019 (= c!456034 (>= (- (- i!1825 1) 1) call!183173))))

(declare-fun bm!183168 () Bool)

(assert (=> bm!183168 (= call!183173 (size!25637 (t!229997 (t!229997 (list!12327 (c!455898 input!3732))))))))

(declare-fun b!2814020 () Bool)

(assert (=> b!2814020 (= e!1779553 e!1779555)))

(declare-fun c!456033 () Bool)

(assert (=> b!2814020 (= c!456033 (<= (- (- i!1825 1) 1) 0))))

(declare-fun b!2814021 () Bool)

(assert (=> b!2814021 (= e!1779553 Nil!32899)))

(declare-fun b!2814022 () Bool)

(assert (=> b!2814022 (= e!1779554 (= (size!25637 lt!1005369) e!1779556))))

(declare-fun c!456031 () Bool)

(assert (=> b!2814022 (= c!456031 (<= (- (- i!1825 1) 1) 0))))

(declare-fun b!2814023 () Bool)

(assert (=> b!2814023 (= e!1779556 call!183173)))

(declare-fun b!2814024 () Bool)

(assert (=> b!2814024 (= e!1779552 0)))

(declare-fun b!2814025 () Bool)

(assert (=> b!2814025 (= e!1779552 (- call!183173 (- (- i!1825 1) 1)))))

(declare-fun b!2814026 () Bool)

(assert (=> b!2814026 (= e!1779555 (t!229997 (t!229997 (list!12327 (c!455898 input!3732)))))))

(assert (= (and d!817000 c!456032) b!2814021))

(assert (= (and d!817000 (not c!456032)) b!2814020))

(assert (= (and b!2814020 c!456033) b!2814026))

(assert (= (and b!2814020 (not c!456033)) b!2814018))

(assert (= (and d!817000 res!1171385) b!2814022))

(assert (= (and b!2814022 c!456031) b!2814023))

(assert (= (and b!2814022 (not c!456031)) b!2814019))

(assert (= (and b!2814019 c!456034) b!2814024))

(assert (= (and b!2814019 (not c!456034)) b!2814025))

(assert (= (or b!2814023 b!2814019 b!2814025) bm!183168))

(declare-fun m!3244739 () Bool)

(assert (=> d!817000 m!3244739))

(assert (=> d!817000 m!3244589))

(declare-fun m!3244741 () Bool)

(assert (=> b!2814018 m!3244741))

(assert (=> bm!183168 m!3244731))

(declare-fun m!3244743 () Bool)

(assert (=> b!2814022 m!3244743))

(assert (=> b!2813759 d!817000))

(declare-fun d!817002 () Bool)

(assert (=> d!817002 (= (inv!44708 (xs!13308 (right!25147 (left!24817 (c!455898 input!3732))))) (<= (size!25637 (innerList!10256 (xs!13308 (right!25147 (left!24817 (c!455898 input!3732)))))) 2147483647))))

(declare-fun bs!516561 () Bool)

(assert (= bs!516561 d!817002))

(declare-fun m!3244745 () Bool)

(assert (=> bs!516561 m!3244745))

(assert (=> b!2813803 d!817002))

(declare-fun d!817004 () Bool)

(declare-fun res!1171386 () Bool)

(declare-fun e!1779557 () Bool)

(assert (=> d!817004 (=> (not res!1171386) (not e!1779557))))

(assert (=> d!817004 (= res!1171386 (<= (size!25637 (list!12330 (xs!13308 (right!25147 (left!24817 (c!455898 input!3732)))))) 512))))

(assert (=> d!817004 (= (inv!44707 (right!25147 (left!24817 (c!455898 input!3732)))) e!1779557)))

(declare-fun b!2814027 () Bool)

(declare-fun res!1171387 () Bool)

(assert (=> b!2814027 (=> (not res!1171387) (not e!1779557))))

(assert (=> b!2814027 (= res!1171387 (= (csize!20623 (right!25147 (left!24817 (c!455898 input!3732)))) (size!25637 (list!12330 (xs!13308 (right!25147 (left!24817 (c!455898 input!3732))))))))))

(declare-fun b!2814028 () Bool)

(assert (=> b!2814028 (= e!1779557 (and (> (csize!20623 (right!25147 (left!24817 (c!455898 input!3732)))) 0) (<= (csize!20623 (right!25147 (left!24817 (c!455898 input!3732)))) 512)))))

(assert (= (and d!817004 res!1171386) b!2814027))

(assert (= (and b!2814027 res!1171387) b!2814028))

(assert (=> d!817004 m!3244655))

(assert (=> d!817004 m!3244655))

(declare-fun m!3244747 () Bool)

(assert (=> d!817004 m!3244747))

(assert (=> b!2814027 m!3244655))

(assert (=> b!2814027 m!3244655))

(assert (=> b!2814027 m!3244747))

(assert (=> b!2813733 d!817004))

(declare-fun d!817006 () Bool)

(declare-fun e!1779558 () Bool)

(assert (=> d!817006 e!1779558))

(declare-fun res!1171389 () Bool)

(assert (=> d!817006 (=> (not res!1171389) (not e!1779558))))

(declare-fun lt!1005370 () List!33023)

(assert (=> d!817006 (= res!1171389 (= (content!4592 lt!1005370) ((_ map or) (content!4592 (list!12327 (left!24817 (right!25147 (c!455898 input!3732))))) (content!4592 (list!12327 (right!25147 (right!25147 (c!455898 input!3732))))))))))

(declare-fun e!1779559 () List!33023)

(assert (=> d!817006 (= lt!1005370 e!1779559)))

(declare-fun c!456035 () Bool)

(assert (=> d!817006 (= c!456035 ((_ is Nil!32899) (list!12327 (left!24817 (right!25147 (c!455898 input!3732))))))))

(assert (=> d!817006 (= (++!8080 (list!12327 (left!24817 (right!25147 (c!455898 input!3732)))) (list!12327 (right!25147 (right!25147 (c!455898 input!3732))))) lt!1005370)))

(declare-fun b!2814032 () Bool)

(assert (=> b!2814032 (= e!1779558 (or (not (= (list!12327 (right!25147 (right!25147 (c!455898 input!3732)))) Nil!32899)) (= lt!1005370 (list!12327 (left!24817 (right!25147 (c!455898 input!3732)))))))))

(declare-fun b!2814030 () Bool)

(assert (=> b!2814030 (= e!1779559 (Cons!32899 (h!38319 (list!12327 (left!24817 (right!25147 (c!455898 input!3732))))) (++!8080 (t!229997 (list!12327 (left!24817 (right!25147 (c!455898 input!3732))))) (list!12327 (right!25147 (right!25147 (c!455898 input!3732)))))))))

(declare-fun b!2814029 () Bool)

(assert (=> b!2814029 (= e!1779559 (list!12327 (right!25147 (right!25147 (c!455898 input!3732)))))))

(declare-fun b!2814031 () Bool)

(declare-fun res!1171388 () Bool)

(assert (=> b!2814031 (=> (not res!1171388) (not e!1779558))))

(assert (=> b!2814031 (= res!1171388 (= (size!25637 lt!1005370) (+ (size!25637 (list!12327 (left!24817 (right!25147 (c!455898 input!3732))))) (size!25637 (list!12327 (right!25147 (right!25147 (c!455898 input!3732))))))))))

(assert (= (and d!817006 c!456035) b!2814029))

(assert (= (and d!817006 (not c!456035)) b!2814030))

(assert (= (and d!817006 res!1171389) b!2814031))

(assert (= (and b!2814031 res!1171388) b!2814032))

(declare-fun m!3244749 () Bool)

(assert (=> d!817006 m!3244749))

(assert (=> d!817006 m!3244365))

(declare-fun m!3244751 () Bool)

(assert (=> d!817006 m!3244751))

(assert (=> d!817006 m!3244367))

(declare-fun m!3244753 () Bool)

(assert (=> d!817006 m!3244753))

(assert (=> b!2814030 m!3244367))

(declare-fun m!3244755 () Bool)

(assert (=> b!2814030 m!3244755))

(declare-fun m!3244757 () Bool)

(assert (=> b!2814031 m!3244757))

(assert (=> b!2814031 m!3244365))

(assert (=> b!2814031 m!3244683))

(assert (=> b!2814031 m!3244367))

(assert (=> b!2814031 m!3244685))

(assert (=> b!2813794 d!817006))

(declare-fun d!817008 () Bool)

(declare-fun c!456036 () Bool)

(assert (=> d!817008 (= c!456036 ((_ is Empty!10196) (left!24817 (right!25147 (c!455898 input!3732)))))))

(declare-fun e!1779560 () List!33023)

(assert (=> d!817008 (= (list!12327 (left!24817 (right!25147 (c!455898 input!3732)))) e!1779560)))

(declare-fun b!2814036 () Bool)

(declare-fun e!1779561 () List!33023)

(assert (=> b!2814036 (= e!1779561 (++!8080 (list!12327 (left!24817 (left!24817 (right!25147 (c!455898 input!3732))))) (list!12327 (right!25147 (left!24817 (right!25147 (c!455898 input!3732)))))))))

(declare-fun b!2814035 () Bool)

(assert (=> b!2814035 (= e!1779561 (list!12330 (xs!13308 (left!24817 (right!25147 (c!455898 input!3732))))))))

(declare-fun b!2814033 () Bool)

(assert (=> b!2814033 (= e!1779560 Nil!32899)))

(declare-fun b!2814034 () Bool)

(assert (=> b!2814034 (= e!1779560 e!1779561)))

(declare-fun c!456037 () Bool)

(assert (=> b!2814034 (= c!456037 ((_ is Leaf!15534) (left!24817 (right!25147 (c!455898 input!3732)))))))

(assert (= (and d!817008 c!456036) b!2814033))

(assert (= (and d!817008 (not c!456036)) b!2814034))

(assert (= (and b!2814034 c!456037) b!2814035))

(assert (= (and b!2814034 (not c!456037)) b!2814036))

(declare-fun m!3244759 () Bool)

(assert (=> b!2814036 m!3244759))

(declare-fun m!3244761 () Bool)

(assert (=> b!2814036 m!3244761))

(assert (=> b!2814036 m!3244759))

(assert (=> b!2814036 m!3244761))

(declare-fun m!3244763 () Bool)

(assert (=> b!2814036 m!3244763))

(declare-fun m!3244765 () Bool)

(assert (=> b!2814035 m!3244765))

(assert (=> b!2813794 d!817008))

(declare-fun d!817010 () Bool)

(declare-fun c!456038 () Bool)

(assert (=> d!817010 (= c!456038 ((_ is Empty!10196) (right!25147 (right!25147 (c!455898 input!3732)))))))

(declare-fun e!1779562 () List!33023)

(assert (=> d!817010 (= (list!12327 (right!25147 (right!25147 (c!455898 input!3732)))) e!1779562)))

(declare-fun b!2814040 () Bool)

(declare-fun e!1779563 () List!33023)

(assert (=> b!2814040 (= e!1779563 (++!8080 (list!12327 (left!24817 (right!25147 (right!25147 (c!455898 input!3732))))) (list!12327 (right!25147 (right!25147 (right!25147 (c!455898 input!3732)))))))))

(declare-fun b!2814039 () Bool)

(assert (=> b!2814039 (= e!1779563 (list!12330 (xs!13308 (right!25147 (right!25147 (c!455898 input!3732))))))))

(declare-fun b!2814037 () Bool)

(assert (=> b!2814037 (= e!1779562 Nil!32899)))

(declare-fun b!2814038 () Bool)

(assert (=> b!2814038 (= e!1779562 e!1779563)))

(declare-fun c!456039 () Bool)

(assert (=> b!2814038 (= c!456039 ((_ is Leaf!15534) (right!25147 (right!25147 (c!455898 input!3732)))))))

(assert (= (and d!817010 c!456038) b!2814037))

(assert (= (and d!817010 (not c!456038)) b!2814038))

(assert (= (and b!2814038 c!456039) b!2814039))

(assert (= (and b!2814038 (not c!456039)) b!2814040))

(declare-fun m!3244767 () Bool)

(assert (=> b!2814040 m!3244767))

(declare-fun m!3244769 () Bool)

(assert (=> b!2814040 m!3244769))

(assert (=> b!2814040 m!3244767))

(assert (=> b!2814040 m!3244769))

(declare-fun m!3244771 () Bool)

(assert (=> b!2814040 m!3244771))

(assert (=> b!2814039 m!3244563))

(assert (=> b!2813794 d!817010))

(declare-fun d!817012 () Bool)

(declare-fun res!1171390 () Bool)

(declare-fun e!1779564 () Bool)

(assert (=> d!817012 (=> (not res!1171390) (not e!1779564))))

(assert (=> d!817012 (= res!1171390 (<= (size!25637 (list!12330 (xs!13308 (left!24817 (right!25147 (c!455898 input!3732)))))) 512))))

(assert (=> d!817012 (= (inv!44707 (left!24817 (right!25147 (c!455898 input!3732)))) e!1779564)))

(declare-fun b!2814041 () Bool)

(declare-fun res!1171391 () Bool)

(assert (=> b!2814041 (=> (not res!1171391) (not e!1779564))))

(assert (=> b!2814041 (= res!1171391 (= (csize!20623 (left!24817 (right!25147 (c!455898 input!3732)))) (size!25637 (list!12330 (xs!13308 (left!24817 (right!25147 (c!455898 input!3732))))))))))

(declare-fun b!2814042 () Bool)

(assert (=> b!2814042 (= e!1779564 (and (> (csize!20623 (left!24817 (right!25147 (c!455898 input!3732)))) 0) (<= (csize!20623 (left!24817 (right!25147 (c!455898 input!3732)))) 512)))))

(assert (= (and d!817012 res!1171390) b!2814041))

(assert (= (and b!2814041 res!1171391) b!2814042))

(assert (=> d!817012 m!3244765))

(assert (=> d!817012 m!3244765))

(declare-fun m!3244773 () Bool)

(assert (=> d!817012 m!3244773))

(assert (=> b!2814041 m!3244765))

(assert (=> b!2814041 m!3244765))

(assert (=> b!2814041 m!3244773))

(assert (=> b!2813750 d!817012))

(declare-fun d!817014 () Bool)

(declare-fun res!1171392 () Bool)

(declare-fun e!1779565 () Bool)

(assert (=> d!817014 (=> (not res!1171392) (not e!1779565))))

(assert (=> d!817014 (= res!1171392 (= (csize!20622 (right!25147 (left!24817 (c!455898 input!3732)))) (+ (size!25638 (left!24817 (right!25147 (left!24817 (c!455898 input!3732))))) (size!25638 (right!25147 (right!25147 (left!24817 (c!455898 input!3732))))))))))

(assert (=> d!817014 (= (inv!44706 (right!25147 (left!24817 (c!455898 input!3732)))) e!1779565)))

(declare-fun b!2814043 () Bool)

(declare-fun res!1171393 () Bool)

(assert (=> b!2814043 (=> (not res!1171393) (not e!1779565))))

(assert (=> b!2814043 (= res!1171393 (and (not (= (left!24817 (right!25147 (left!24817 (c!455898 input!3732)))) Empty!10196)) (not (= (right!25147 (right!25147 (left!24817 (c!455898 input!3732)))) Empty!10196))))))

(declare-fun b!2814044 () Bool)

(declare-fun res!1171394 () Bool)

(assert (=> b!2814044 (=> (not res!1171394) (not e!1779565))))

(assert (=> b!2814044 (= res!1171394 (= (cheight!10407 (right!25147 (left!24817 (c!455898 input!3732)))) (+ (max!0 (height!1499 (left!24817 (right!25147 (left!24817 (c!455898 input!3732))))) (height!1499 (right!25147 (right!25147 (left!24817 (c!455898 input!3732)))))) 1)))))

(declare-fun b!2814045 () Bool)

(assert (=> b!2814045 (= e!1779565 (<= 0 (cheight!10407 (right!25147 (left!24817 (c!455898 input!3732))))))))

(assert (= (and d!817014 res!1171392) b!2814043))

(assert (= (and b!2814043 res!1171393) b!2814044))

(assert (= (and b!2814044 res!1171394) b!2814045))

(declare-fun m!3244775 () Bool)

(assert (=> d!817014 m!3244775))

(declare-fun m!3244777 () Bool)

(assert (=> d!817014 m!3244777))

(assert (=> b!2814044 m!3244719))

(assert (=> b!2814044 m!3244721))

(assert (=> b!2814044 m!3244719))

(assert (=> b!2814044 m!3244721))

(declare-fun m!3244779 () Bool)

(assert (=> b!2814044 m!3244779))

(assert (=> b!2813731 d!817014))

(assert (=> d!816800 d!816930))

(assert (=> d!816800 d!816816))

(declare-fun d!817016 () Bool)

(declare-fun c!456040 () Bool)

(assert (=> d!817016 (= c!456040 ((_ is Nil!32899) (t!229997 lt!1005300)))))

(declare-fun e!1779566 () (InoxSet C!16764))

(assert (=> d!817016 (= (content!4592 (t!229997 lt!1005300)) e!1779566)))

(declare-fun b!2814046 () Bool)

(assert (=> b!2814046 (= e!1779566 ((as const (Array C!16764 Bool)) false))))

(declare-fun b!2814047 () Bool)

(assert (=> b!2814047 (= e!1779566 ((_ map or) (store ((as const (Array C!16764 Bool)) false) (h!38319 (t!229997 lt!1005300)) true) (content!4592 (t!229997 (t!229997 lt!1005300)))))))

(assert (= (and d!817016 c!456040) b!2814046))

(assert (= (and d!817016 (not c!456040)) b!2814047))

(declare-fun m!3244781 () Bool)

(assert (=> b!2814047 m!3244781))

(declare-fun m!3244783 () Bool)

(assert (=> b!2814047 m!3244783))

(assert (=> b!2813745 d!817016))

(declare-fun d!817018 () Bool)

(declare-fun res!1171395 () Bool)

(declare-fun e!1779567 () Bool)

(assert (=> d!817018 (=> (not res!1171395) (not e!1779567))))

(assert (=> d!817018 (= res!1171395 (= (csize!20622 (left!24817 (right!25147 (c!455898 input!3732)))) (+ (size!25638 (left!24817 (left!24817 (right!25147 (c!455898 input!3732))))) (size!25638 (right!25147 (left!24817 (right!25147 (c!455898 input!3732))))))))))

(assert (=> d!817018 (= (inv!44706 (left!24817 (right!25147 (c!455898 input!3732)))) e!1779567)))

(declare-fun b!2814048 () Bool)

(declare-fun res!1171396 () Bool)

(assert (=> b!2814048 (=> (not res!1171396) (not e!1779567))))

(assert (=> b!2814048 (= res!1171396 (and (not (= (left!24817 (left!24817 (right!25147 (c!455898 input!3732)))) Empty!10196)) (not (= (right!25147 (left!24817 (right!25147 (c!455898 input!3732)))) Empty!10196))))))

(declare-fun b!2814049 () Bool)

(declare-fun res!1171397 () Bool)

(assert (=> b!2814049 (=> (not res!1171397) (not e!1779567))))

(assert (=> b!2814049 (= res!1171397 (= (cheight!10407 (left!24817 (right!25147 (c!455898 input!3732)))) (+ (max!0 (height!1499 (left!24817 (left!24817 (right!25147 (c!455898 input!3732))))) (height!1499 (right!25147 (left!24817 (right!25147 (c!455898 input!3732)))))) 1)))))

(declare-fun b!2814050 () Bool)

(assert (=> b!2814050 (= e!1779567 (<= 0 (cheight!10407 (left!24817 (right!25147 (c!455898 input!3732))))))))

(assert (= (and d!817018 res!1171395) b!2814048))

(assert (= (and b!2814048 res!1171396) b!2814049))

(assert (= (and b!2814049 res!1171397) b!2814050))

(declare-fun m!3244785 () Bool)

(assert (=> d!817018 m!3244785))

(declare-fun m!3244787 () Bool)

(assert (=> d!817018 m!3244787))

(assert (=> b!2814049 m!3244611))

(assert (=> b!2814049 m!3244613))

(assert (=> b!2814049 m!3244611))

(assert (=> b!2814049 m!3244613))

(declare-fun m!3244789 () Bool)

(assert (=> b!2814049 m!3244789))

(assert (=> b!2813748 d!817018))

(declare-fun d!817020 () Bool)

(assert (=> d!817020 (= (max!0 (height!1499 (left!24817 (right!25147 (c!455898 input!3732)))) (height!1499 (right!25147 (right!25147 (c!455898 input!3732))))) (ite (< (height!1499 (left!24817 (right!25147 (c!455898 input!3732)))) (height!1499 (right!25147 (right!25147 (c!455898 input!3732))))) (height!1499 (right!25147 (right!25147 (c!455898 input!3732)))) (height!1499 (left!24817 (right!25147 (c!455898 input!3732))))))))

(assert (=> b!2813771 d!817020))

(assert (=> b!2813771 d!816984))

(assert (=> b!2813771 d!816986))

(declare-fun tp!898495 () Bool)

(declare-fun e!1779569 () Bool)

(declare-fun b!2814051 () Bool)

(declare-fun tp!898496 () Bool)

(assert (=> b!2814051 (= e!1779569 (and (inv!44705 (left!24817 (left!24817 (left!24817 (left!24817 (c!455898 input!3732)))))) tp!898495 (inv!44705 (right!25147 (left!24817 (left!24817 (left!24817 (c!455898 input!3732)))))) tp!898496))))

(declare-fun b!2814053 () Bool)

(declare-fun e!1779568 () Bool)

(declare-fun tp!898497 () Bool)

(assert (=> b!2814053 (= e!1779568 tp!898497)))

(declare-fun b!2814052 () Bool)

(assert (=> b!2814052 (= e!1779569 (and (inv!44708 (xs!13308 (left!24817 (left!24817 (left!24817 (c!455898 input!3732)))))) e!1779568))))

(assert (=> b!2813799 (= tp!898467 (and (inv!44705 (left!24817 (left!24817 (left!24817 (c!455898 input!3732))))) e!1779569))))

(assert (= (and b!2813799 ((_ is Node!10196) (left!24817 (left!24817 (left!24817 (c!455898 input!3732)))))) b!2814051))

(assert (= b!2814052 b!2814053))

(assert (= (and b!2813799 ((_ is Leaf!15534) (left!24817 (left!24817 (left!24817 (c!455898 input!3732)))))) b!2814052))

(declare-fun m!3244791 () Bool)

(assert (=> b!2814051 m!3244791))

(declare-fun m!3244793 () Bool)

(assert (=> b!2814051 m!3244793))

(declare-fun m!3244795 () Bool)

(assert (=> b!2814052 m!3244795))

(assert (=> b!2813799 m!3244375))

(declare-fun tp!898498 () Bool)

(declare-fun b!2814054 () Bool)

(declare-fun e!1779571 () Bool)

(declare-fun tp!898499 () Bool)

(assert (=> b!2814054 (= e!1779571 (and (inv!44705 (left!24817 (right!25147 (left!24817 (left!24817 (c!455898 input!3732)))))) tp!898498 (inv!44705 (right!25147 (right!25147 (left!24817 (left!24817 (c!455898 input!3732)))))) tp!898499))))

(declare-fun b!2814056 () Bool)

(declare-fun e!1779570 () Bool)

(declare-fun tp!898500 () Bool)

(assert (=> b!2814056 (= e!1779570 tp!898500)))

(declare-fun b!2814055 () Bool)

(assert (=> b!2814055 (= e!1779571 (and (inv!44708 (xs!13308 (right!25147 (left!24817 (left!24817 (c!455898 input!3732)))))) e!1779570))))

(assert (=> b!2813799 (= tp!898468 (and (inv!44705 (right!25147 (left!24817 (left!24817 (c!455898 input!3732))))) e!1779571))))

(assert (= (and b!2813799 ((_ is Node!10196) (right!25147 (left!24817 (left!24817 (c!455898 input!3732)))))) b!2814054))

(assert (= b!2814055 b!2814056))

(assert (= (and b!2813799 ((_ is Leaf!15534) (right!25147 (left!24817 (left!24817 (c!455898 input!3732)))))) b!2814055))

(declare-fun m!3244797 () Bool)

(assert (=> b!2814054 m!3244797))

(declare-fun m!3244799 () Bool)

(assert (=> b!2814054 m!3244799))

(declare-fun m!3244801 () Bool)

(assert (=> b!2814055 m!3244801))

(assert (=> b!2813799 m!3244377))

(declare-fun b!2814057 () Bool)

(declare-fun e!1779572 () Bool)

(declare-fun tp!898501 () Bool)

(assert (=> b!2814057 (= e!1779572 (and tp_is_empty!14417 tp!898501))))

(assert (=> b!2813804 (= tp!898472 e!1779572)))

(assert (= (and b!2813804 ((_ is Cons!32899) (innerList!10256 (xs!13308 (right!25147 (left!24817 (c!455898 input!3732))))))) b!2814057))

(declare-fun b!2814058 () Bool)

(declare-fun e!1779573 () Bool)

(declare-fun tp!898502 () Bool)

(assert (=> b!2814058 (= e!1779573 (and tp_is_empty!14417 tp!898502))))

(assert (=> b!2813798 (= tp!898466 e!1779573)))

(assert (= (and b!2813798 ((_ is Cons!32899) (t!229997 (t!229997 (innerList!10256 (xs!13308 (c!455898 input!3732))))))) b!2814058))

(declare-fun b!2814059 () Bool)

(declare-fun e!1779574 () Bool)

(declare-fun tp!898503 () Bool)

(assert (=> b!2814059 (= e!1779574 (and tp_is_empty!14417 tp!898503))))

(assert (=> b!2813811 (= tp!898479 e!1779574)))

(assert (= (and b!2813811 ((_ is Cons!32899) (innerList!10256 (xs!13308 (right!25147 (right!25147 (c!455898 input!3732))))))) b!2814059))

(declare-fun tp!898504 () Bool)

(declare-fun e!1779576 () Bool)

(declare-fun b!2814060 () Bool)

(declare-fun tp!898505 () Bool)

(assert (=> b!2814060 (= e!1779576 (and (inv!44705 (left!24817 (left!24817 (left!24817 (right!25147 (c!455898 input!3732)))))) tp!898504 (inv!44705 (right!25147 (left!24817 (left!24817 (right!25147 (c!455898 input!3732)))))) tp!898505))))

(declare-fun b!2814062 () Bool)

(declare-fun e!1779575 () Bool)

(declare-fun tp!898506 () Bool)

(assert (=> b!2814062 (= e!1779575 tp!898506)))

(declare-fun b!2814061 () Bool)

(assert (=> b!2814061 (= e!1779576 (and (inv!44708 (xs!13308 (left!24817 (left!24817 (right!25147 (c!455898 input!3732)))))) e!1779575))))

(assert (=> b!2813806 (= tp!898474 (and (inv!44705 (left!24817 (left!24817 (right!25147 (c!455898 input!3732))))) e!1779576))))

(assert (= (and b!2813806 ((_ is Node!10196) (left!24817 (left!24817 (right!25147 (c!455898 input!3732)))))) b!2814060))

(assert (= b!2814061 b!2814062))

(assert (= (and b!2813806 ((_ is Leaf!15534) (left!24817 (left!24817 (right!25147 (c!455898 input!3732)))))) b!2814061))

(declare-fun m!3244803 () Bool)

(assert (=> b!2814060 m!3244803))

(declare-fun m!3244805 () Bool)

(assert (=> b!2814060 m!3244805))

(declare-fun m!3244807 () Bool)

(assert (=> b!2814061 m!3244807))

(assert (=> b!2813806 m!3244387))

(declare-fun e!1779578 () Bool)

(declare-fun tp!898508 () Bool)

(declare-fun b!2814063 () Bool)

(declare-fun tp!898507 () Bool)

(assert (=> b!2814063 (= e!1779578 (and (inv!44705 (left!24817 (right!25147 (left!24817 (right!25147 (c!455898 input!3732)))))) tp!898507 (inv!44705 (right!25147 (right!25147 (left!24817 (right!25147 (c!455898 input!3732)))))) tp!898508))))

(declare-fun b!2814065 () Bool)

(declare-fun e!1779577 () Bool)

(declare-fun tp!898509 () Bool)

(assert (=> b!2814065 (= e!1779577 tp!898509)))

(declare-fun b!2814064 () Bool)

(assert (=> b!2814064 (= e!1779578 (and (inv!44708 (xs!13308 (right!25147 (left!24817 (right!25147 (c!455898 input!3732)))))) e!1779577))))

(assert (=> b!2813806 (= tp!898475 (and (inv!44705 (right!25147 (left!24817 (right!25147 (c!455898 input!3732))))) e!1779578))))

(assert (= (and b!2813806 ((_ is Node!10196) (right!25147 (left!24817 (right!25147 (c!455898 input!3732)))))) b!2814063))

(assert (= b!2814064 b!2814065))

(assert (= (and b!2813806 ((_ is Leaf!15534) (right!25147 (left!24817 (right!25147 (c!455898 input!3732)))))) b!2814064))

(declare-fun m!3244809 () Bool)

(assert (=> b!2814063 m!3244809))

(declare-fun m!3244811 () Bool)

(assert (=> b!2814063 m!3244811))

(declare-fun m!3244813 () Bool)

(assert (=> b!2814064 m!3244813))

(assert (=> b!2813806 m!3244389))

(declare-fun b!2814066 () Bool)

(declare-fun e!1779579 () Bool)

(declare-fun tp!898510 () Bool)

(assert (=> b!2814066 (= e!1779579 (and tp_is_empty!14417 tp!898510))))

(assert (=> b!2813805 (= tp!898473 e!1779579)))

(assert (= (and b!2813805 ((_ is Cons!32899) (t!229997 (innerList!10256 (xs!13308 (right!25147 (c!455898 input!3732))))))) b!2814066))

(declare-fun tp!898512 () Bool)

(declare-fun b!2814067 () Bool)

(declare-fun e!1779581 () Bool)

(declare-fun tp!898511 () Bool)

(assert (=> b!2814067 (= e!1779581 (and (inv!44705 (left!24817 (left!24817 (right!25147 (left!24817 (c!455898 input!3732)))))) tp!898511 (inv!44705 (right!25147 (left!24817 (right!25147 (left!24817 (c!455898 input!3732)))))) tp!898512))))

(declare-fun b!2814069 () Bool)

(declare-fun e!1779580 () Bool)

(declare-fun tp!898513 () Bool)

(assert (=> b!2814069 (= e!1779580 tp!898513)))

(declare-fun b!2814068 () Bool)

(assert (=> b!2814068 (= e!1779581 (and (inv!44708 (xs!13308 (left!24817 (right!25147 (left!24817 (c!455898 input!3732)))))) e!1779580))))

(assert (=> b!2813802 (= tp!898470 (and (inv!44705 (left!24817 (right!25147 (left!24817 (c!455898 input!3732))))) e!1779581))))

(assert (= (and b!2813802 ((_ is Node!10196) (left!24817 (right!25147 (left!24817 (c!455898 input!3732)))))) b!2814067))

(assert (= b!2814068 b!2814069))

(assert (= (and b!2813802 ((_ is Leaf!15534) (left!24817 (right!25147 (left!24817 (c!455898 input!3732)))))) b!2814068))

(declare-fun m!3244815 () Bool)

(assert (=> b!2814067 m!3244815))

(declare-fun m!3244817 () Bool)

(assert (=> b!2814067 m!3244817))

(declare-fun m!3244819 () Bool)

(assert (=> b!2814068 m!3244819))

(assert (=> b!2813802 m!3244381))

(declare-fun b!2814070 () Bool)

(declare-fun tp!898515 () Bool)

(declare-fun e!1779583 () Bool)

(declare-fun tp!898514 () Bool)

(assert (=> b!2814070 (= e!1779583 (and (inv!44705 (left!24817 (right!25147 (right!25147 (left!24817 (c!455898 input!3732)))))) tp!898514 (inv!44705 (right!25147 (right!25147 (right!25147 (left!24817 (c!455898 input!3732)))))) tp!898515))))

(declare-fun b!2814072 () Bool)

(declare-fun e!1779582 () Bool)

(declare-fun tp!898516 () Bool)

(assert (=> b!2814072 (= e!1779582 tp!898516)))

(declare-fun b!2814071 () Bool)

(assert (=> b!2814071 (= e!1779583 (and (inv!44708 (xs!13308 (right!25147 (right!25147 (left!24817 (c!455898 input!3732)))))) e!1779582))))

(assert (=> b!2813802 (= tp!898471 (and (inv!44705 (right!25147 (right!25147 (left!24817 (c!455898 input!3732))))) e!1779583))))

(assert (= (and b!2813802 ((_ is Node!10196) (right!25147 (right!25147 (left!24817 (c!455898 input!3732)))))) b!2814070))

(assert (= b!2814071 b!2814072))

(assert (= (and b!2813802 ((_ is Leaf!15534) (right!25147 (right!25147 (left!24817 (c!455898 input!3732)))))) b!2814071))

(declare-fun m!3244821 () Bool)

(assert (=> b!2814070 m!3244821))

(declare-fun m!3244823 () Bool)

(assert (=> b!2814070 m!3244823))

(declare-fun m!3244825 () Bool)

(assert (=> b!2814071 m!3244825))

(assert (=> b!2813802 m!3244383))

(declare-fun b!2814073 () Bool)

(declare-fun tp!898517 () Bool)

(declare-fun e!1779585 () Bool)

(declare-fun tp!898518 () Bool)

(assert (=> b!2814073 (= e!1779585 (and (inv!44705 (left!24817 (left!24817 (right!25147 (right!25147 (c!455898 input!3732)))))) tp!898517 (inv!44705 (right!25147 (left!24817 (right!25147 (right!25147 (c!455898 input!3732)))))) tp!898518))))

(declare-fun b!2814075 () Bool)

(declare-fun e!1779584 () Bool)

(declare-fun tp!898519 () Bool)

(assert (=> b!2814075 (= e!1779584 tp!898519)))

(declare-fun b!2814074 () Bool)

(assert (=> b!2814074 (= e!1779585 (and (inv!44708 (xs!13308 (left!24817 (right!25147 (right!25147 (c!455898 input!3732)))))) e!1779584))))

(assert (=> b!2813809 (= tp!898477 (and (inv!44705 (left!24817 (right!25147 (right!25147 (c!455898 input!3732))))) e!1779585))))

(assert (= (and b!2813809 ((_ is Node!10196) (left!24817 (right!25147 (right!25147 (c!455898 input!3732)))))) b!2814073))

(assert (= b!2814074 b!2814075))

(assert (= (and b!2813809 ((_ is Leaf!15534) (left!24817 (right!25147 (right!25147 (c!455898 input!3732)))))) b!2814074))

(declare-fun m!3244827 () Bool)

(assert (=> b!2814073 m!3244827))

(declare-fun m!3244829 () Bool)

(assert (=> b!2814073 m!3244829))

(declare-fun m!3244831 () Bool)

(assert (=> b!2814074 m!3244831))

(assert (=> b!2813809 m!3244393))

(declare-fun e!1779587 () Bool)

(declare-fun tp!898520 () Bool)

(declare-fun b!2814076 () Bool)

(declare-fun tp!898521 () Bool)

(assert (=> b!2814076 (= e!1779587 (and (inv!44705 (left!24817 (right!25147 (right!25147 (right!25147 (c!455898 input!3732)))))) tp!898520 (inv!44705 (right!25147 (right!25147 (right!25147 (right!25147 (c!455898 input!3732)))))) tp!898521))))

(declare-fun b!2814078 () Bool)

(declare-fun e!1779586 () Bool)

(declare-fun tp!898522 () Bool)

(assert (=> b!2814078 (= e!1779586 tp!898522)))

(declare-fun b!2814077 () Bool)

(assert (=> b!2814077 (= e!1779587 (and (inv!44708 (xs!13308 (right!25147 (right!25147 (right!25147 (c!455898 input!3732)))))) e!1779586))))

(assert (=> b!2813809 (= tp!898478 (and (inv!44705 (right!25147 (right!25147 (right!25147 (c!455898 input!3732))))) e!1779587))))

(assert (= (and b!2813809 ((_ is Node!10196) (right!25147 (right!25147 (right!25147 (c!455898 input!3732)))))) b!2814076))

(assert (= b!2814077 b!2814078))

(assert (= (and b!2813809 ((_ is Leaf!15534) (right!25147 (right!25147 (right!25147 (c!455898 input!3732)))))) b!2814077))

(declare-fun m!3244833 () Bool)

(assert (=> b!2814076 m!3244833))

(declare-fun m!3244835 () Bool)

(assert (=> b!2814076 m!3244835))

(declare-fun m!3244837 () Bool)

(assert (=> b!2814077 m!3244837))

(assert (=> b!2813809 m!3244395))

(declare-fun b!2814079 () Bool)

(declare-fun e!1779588 () Bool)

(declare-fun tp!898523 () Bool)

(assert (=> b!2814079 (= e!1779588 (and tp_is_empty!14417 tp!898523))))

(assert (=> b!2813801 (= tp!898469 e!1779588)))

(assert (= (and b!2813801 ((_ is Cons!32899) (innerList!10256 (xs!13308 (left!24817 (left!24817 (c!455898 input!3732))))))) b!2814079))

(declare-fun b!2814080 () Bool)

(declare-fun e!1779589 () Bool)

(declare-fun tp!898524 () Bool)

(assert (=> b!2814080 (= e!1779589 (and tp_is_empty!14417 tp!898524))))

(assert (=> b!2813797 (= tp!898465 e!1779589)))

(assert (= (and b!2813797 ((_ is Cons!32899) (t!229997 (innerList!10256 (xs!13308 (left!24817 (c!455898 input!3732))))))) b!2814080))

(declare-fun b!2814081 () Bool)

(declare-fun e!1779590 () Bool)

(declare-fun tp!898525 () Bool)

(assert (=> b!2814081 (= e!1779590 (and tp_is_empty!14417 tp!898525))))

(assert (=> b!2813808 (= tp!898476 e!1779590)))

(assert (= (and b!2813808 ((_ is Cons!32899) (innerList!10256 (xs!13308 (left!24817 (right!25147 (c!455898 input!3732))))))) b!2814081))

(check-sat (not b!2813974) (not b!2813995) (not b!2814073) (not d!817000) (not d!816952) (not b!2814052) (not d!817004) (not b!2814063) (not b!2813911) (not b!2814031) (not b!2813972) (not b!2814065) (not b!2813987) (not b!2814053) (not b!2814035) (not b!2814039) (not b!2814081) (not d!816966) (not b!2813925) (not b!2813997) (not b!2813932) (not b!2813990) (not b!2814027) (not b!2813806) (not b!2814041) (not b!2813943) (not b!2814056) (not d!816978) (not b!2814066) (not b!2814013) (not b!2814051) (not b!2813971) (not d!816902) (not d!816954) (not b!2814006) (not b!2813940) (not b!2813970) (not d!816914) (not b!2814011) (not b!2814067) (not b!2813986) (not b!2813965) (not bm!183168) (not b!2814044) (not d!816988) (not b!2814080) (not d!816934) (not b!2813919) (not b!2814015) (not d!817012) (not b!2814078) (not b!2814068) (not b!2813994) (not b!2813947) (not b!2813942) (not b!2813799) (not b!2813944) (not b!2813946) (not b!2814030) (not b!2813933) (not b!2813922) (not b!2813936) (not b!2813984) (not b!2813921) (not b!2814008) (not b!2813998) (not b!2814009) (not b!2813939) (not b!2814000) (not b!2814059) (not b!2813982) (not b!2813992) (not d!817006) (not b!2814047) (not b!2813957) (not b!2814010) (not b!2814064) (not b!2813978) (not b!2813989) (not b!2813967) (not d!816968) (not b!2814076) (not b!2814049) (not d!817002) (not b!2813968) tp_is_empty!14417 (not b!2813969) (not b!2814074) (not b!2813945) (not b!2814058) (not b!2813913) (not b!2814005) (not d!816916) (not b!2814007) (not b!2813915) (not d!817014) (not d!816950) (not b!2813809) (not d!817018) (not b!2813930) (not b!2814054) (not b!2814077) (not b!2813937) (not b!2814061) (not b!2813938) (not b!2813935) (not b!2814060) (not b!2814002) (not b!2814018) (not b!2814057) (not b!2813928) (not b!2813966) (not b!2813956) (not b!2813917) (not b!2814022) (not b!2814075) (not d!816964) (not b!2814069) (not b!2813908) (not b!2813802) (not b!2814036) (not b!2813962) (not b!2813977) (not b!2813980) (not b!2813950) (not b!2813910) (not d!816906) (not b!2813952) (not b!2813954) (not b!2813975) (not b!2814070) (not b!2814055) (not b!2814016) (not b!2814062) (not b!2814071) (not d!816908) (not b!2814040) (not b!2813948) (not b!2813961) (not d!816898) (not d!816998) (not d!816974) (not b!2814072) (not b!2814079))
(check-sat)
