; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!186252 () Bool)

(assert start!186252)

(declare-fun b!1862455 () Bool)

(declare-fun res!834009 () Bool)

(declare-fun e!1189233 () Bool)

(assert (=> b!1862455 (=> (not res!834009) (not e!1189233))))

(declare-fun e!1189232 () Bool)

(assert (=> b!1862455 (= res!834009 e!1189232)))

(declare-fun res!834012 () Bool)

(assert (=> b!1862455 (=> res!834012 e!1189232)))

(declare-datatypes ((T!32990 0))(
  ( (T!32991 (val!5924 Int)) )
))
(declare-datatypes ((List!20741 0))(
  ( (Nil!20659) (Cons!20659 (h!26060 T!32990) (t!172798 List!20741)) )
))
(declare-datatypes ((IArray!13713 0))(
  ( (IArray!13714 (innerList!6914 List!20741)) )
))
(declare-datatypes ((Conc!6854 0))(
  ( (Node!6854 (left!16634 Conc!6854) (right!16964 Conc!6854) (csize!13938 Int) (cheight!7065 Int)) (Leaf!10049 (xs!9730 IArray!13713) (csize!13939 Int)) (Empty!6854) )
))
(declare-fun t!4595 () Conc!6854)

(get-info :version)

(assert (=> b!1862455 (= res!834012 (not ((_ is Node!6854) t!4595)))))

(declare-fun b!1862456 () Bool)

(declare-fun e!1189234 () Bool)

(declare-fun e!1189235 () Bool)

(declare-fun inv!27261 (IArray!13713) Bool)

(assert (=> b!1862456 (= e!1189234 (and (inv!27261 (xs!9730 t!4595)) e!1189235))))

(declare-fun res!834011 () Bool)

(assert (=> start!186252 (=> (not res!834011) (not e!1189233))))

(declare-fun isBalanced!2155 (Conc!6854) Bool)

(assert (=> start!186252 (= res!834011 (isBalanced!2155 t!4595))))

(assert (=> start!186252 e!1189233))

(declare-fun inv!27262 (Conc!6854) Bool)

(assert (=> start!186252 (and (inv!27262 t!4595) e!1189234)))

(declare-fun b!1862457 () Bool)

(declare-fun res!834008 () Bool)

(assert (=> b!1862457 (=> (not res!834008) (not e!1189233))))

(assert (=> b!1862457 (= res!834008 ((_ is Node!6854) t!4595))))

(declare-fun b!1862458 () Bool)

(declare-fun isEmpty!12863 (Conc!6854) Bool)

(assert (=> b!1862458 (= e!1189232 (not (isEmpty!12863 (left!16634 t!4595))))))

(declare-fun b!1862459 () Bool)

(declare-fun res!834010 () Bool)

(assert (=> b!1862459 (=> (not res!834010) (not e!1189233))))

(assert (=> b!1862459 (= res!834010 (not ((_ is Leaf!10049) t!4595)))))

(declare-fun b!1862460 () Bool)

(declare-fun lt!717973 () List!20741)

(assert (=> b!1862460 (= e!1189233 (not (not (= lt!717973 Nil!20659))))))

(declare-fun lt!717972 () List!20741)

(declare-fun lt!717970 () List!20741)

(declare-fun tail!2811 (List!20741) List!20741)

(declare-fun ++!5582 (List!20741 List!20741) List!20741)

(assert (=> b!1862460 (= (tail!2811 lt!717973) (++!5582 (tail!2811 lt!717972) lt!717970))))

(assert (=> b!1862460 (= lt!717973 (++!5582 lt!717972 lt!717970))))

(declare-datatypes ((Unit!35271 0))(
  ( (Unit!35272) )
))
(declare-fun lt!717971 () Unit!35271)

(declare-fun lemmaTailOfConcatIsTailConcat!26 (List!20741 List!20741) Unit!35271)

(assert (=> b!1862460 (= lt!717971 (lemmaTailOfConcatIsTailConcat!26 lt!717972 lt!717970))))

(declare-fun list!8424 (Conc!6854) List!20741)

(assert (=> b!1862460 (= lt!717970 (list!8424 (right!16964 t!4595)))))

(assert (=> b!1862460 (= lt!717972 (list!8424 (left!16634 t!4595)))))

(declare-fun tp!530674 () Bool)

(declare-fun b!1862461 () Bool)

(declare-fun tp!530673 () Bool)

(assert (=> b!1862461 (= e!1189234 (and (inv!27262 (left!16634 t!4595)) tp!530673 (inv!27262 (right!16964 t!4595)) tp!530674))))

(declare-fun b!1862462 () Bool)

(declare-fun tp!530672 () Bool)

(assert (=> b!1862462 (= e!1189235 tp!530672)))

(declare-fun b!1862463 () Bool)

(declare-fun res!834013 () Bool)

(assert (=> b!1862463 (=> (not res!834013) (not e!1189233))))

(assert (=> b!1862463 (= res!834013 (not (isEmpty!12863 t!4595)))))

(assert (= (and start!186252 res!834011) b!1862463))

(assert (= (and b!1862463 res!834013) b!1862459))

(assert (= (and b!1862459 res!834010) b!1862455))

(assert (= (and b!1862455 (not res!834012)) b!1862458))

(assert (= (and b!1862455 res!834009) b!1862457))

(assert (= (and b!1862457 res!834008) b!1862460))

(assert (= (and start!186252 ((_ is Node!6854) t!4595)) b!1862461))

(assert (= b!1862456 b!1862462))

(assert (= (and start!186252 ((_ is Leaf!10049) t!4595)) b!1862456))

(declare-fun m!2286131 () Bool)

(assert (=> b!1862460 m!2286131))

(declare-fun m!2286133 () Bool)

(assert (=> b!1862460 m!2286133))

(declare-fun m!2286135 () Bool)

(assert (=> b!1862460 m!2286135))

(declare-fun m!2286137 () Bool)

(assert (=> b!1862460 m!2286137))

(assert (=> b!1862460 m!2286131))

(declare-fun m!2286139 () Bool)

(assert (=> b!1862460 m!2286139))

(declare-fun m!2286141 () Bool)

(assert (=> b!1862460 m!2286141))

(declare-fun m!2286143 () Bool)

(assert (=> b!1862460 m!2286143))

(declare-fun m!2286145 () Bool)

(assert (=> b!1862456 m!2286145))

(declare-fun m!2286147 () Bool)

(assert (=> start!186252 m!2286147))

(declare-fun m!2286149 () Bool)

(assert (=> start!186252 m!2286149))

(declare-fun m!2286151 () Bool)

(assert (=> b!1862463 m!2286151))

(declare-fun m!2286153 () Bool)

(assert (=> b!1862461 m!2286153))

(declare-fun m!2286155 () Bool)

(assert (=> b!1862461 m!2286155))

(declare-fun m!2286157 () Bool)

(assert (=> b!1862458 m!2286157))

(check-sat (not b!1862461) (not b!1862463) (not start!186252) (not b!1862462) (not b!1862456) (not b!1862458) (not b!1862460))
(check-sat)
(get-model)

(declare-fun d!568319 () Bool)

(declare-fun size!16353 (List!20741) Int)

(assert (=> d!568319 (= (inv!27261 (xs!9730 t!4595)) (<= (size!16353 (innerList!6914 (xs!9730 t!4595))) 2147483647))))

(declare-fun bs!411558 () Bool)

(assert (= bs!411558 d!568319))

(declare-fun m!2286159 () Bool)

(assert (=> bs!411558 m!2286159))

(assert (=> b!1862456 d!568319))

(declare-fun d!568321 () Bool)

(declare-fun c!303282 () Bool)

(assert (=> d!568321 (= c!303282 ((_ is Node!6854) (left!16634 t!4595)))))

(declare-fun e!1189240 () Bool)

(assert (=> d!568321 (= (inv!27262 (left!16634 t!4595)) e!1189240)))

(declare-fun b!1862470 () Bool)

(declare-fun inv!27263 (Conc!6854) Bool)

(assert (=> b!1862470 (= e!1189240 (inv!27263 (left!16634 t!4595)))))

(declare-fun b!1862471 () Bool)

(declare-fun e!1189241 () Bool)

(assert (=> b!1862471 (= e!1189240 e!1189241)))

(declare-fun res!834016 () Bool)

(assert (=> b!1862471 (= res!834016 (not ((_ is Leaf!10049) (left!16634 t!4595))))))

(assert (=> b!1862471 (=> res!834016 e!1189241)))

(declare-fun b!1862472 () Bool)

(declare-fun inv!27264 (Conc!6854) Bool)

(assert (=> b!1862472 (= e!1189241 (inv!27264 (left!16634 t!4595)))))

(assert (= (and d!568321 c!303282) b!1862470))

(assert (= (and d!568321 (not c!303282)) b!1862471))

(assert (= (and b!1862471 (not res!834016)) b!1862472))

(declare-fun m!2286167 () Bool)

(assert (=> b!1862470 m!2286167))

(declare-fun m!2286169 () Bool)

(assert (=> b!1862472 m!2286169))

(assert (=> b!1862461 d!568321))

(declare-fun d!568327 () Bool)

(declare-fun c!303283 () Bool)

(assert (=> d!568327 (= c!303283 ((_ is Node!6854) (right!16964 t!4595)))))

(declare-fun e!1189242 () Bool)

(assert (=> d!568327 (= (inv!27262 (right!16964 t!4595)) e!1189242)))

(declare-fun b!1862473 () Bool)

(assert (=> b!1862473 (= e!1189242 (inv!27263 (right!16964 t!4595)))))

(declare-fun b!1862474 () Bool)

(declare-fun e!1189243 () Bool)

(assert (=> b!1862474 (= e!1189242 e!1189243)))

(declare-fun res!834017 () Bool)

(assert (=> b!1862474 (= res!834017 (not ((_ is Leaf!10049) (right!16964 t!4595))))))

(assert (=> b!1862474 (=> res!834017 e!1189243)))

(declare-fun b!1862475 () Bool)

(assert (=> b!1862475 (= e!1189243 (inv!27264 (right!16964 t!4595)))))

(assert (= (and d!568327 c!303283) b!1862473))

(assert (= (and d!568327 (not c!303283)) b!1862474))

(assert (= (and b!1862474 (not res!834017)) b!1862475))

(declare-fun m!2286171 () Bool)

(assert (=> b!1862473 m!2286171))

(declare-fun m!2286173 () Bool)

(assert (=> b!1862475 m!2286173))

(assert (=> b!1862461 d!568327))

(declare-fun d!568329 () Bool)

(assert (=> d!568329 (= (tail!2811 lt!717972) (t!172798 lt!717972))))

(assert (=> b!1862460 d!568329))

(declare-fun b!1862505 () Bool)

(declare-fun e!1189260 () List!20741)

(assert (=> b!1862505 (= e!1189260 (Cons!20659 (h!26060 (tail!2811 lt!717972)) (++!5582 (t!172798 (tail!2811 lt!717972)) lt!717970)))))

(declare-fun d!568331 () Bool)

(declare-fun e!1189261 () Bool)

(assert (=> d!568331 e!1189261))

(declare-fun res!834027 () Bool)

(assert (=> d!568331 (=> (not res!834027) (not e!1189261))))

(declare-fun lt!717979 () List!20741)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3064 (List!20741) (InoxSet T!32990))

(assert (=> d!568331 (= res!834027 (= (content!3064 lt!717979) ((_ map or) (content!3064 (tail!2811 lt!717972)) (content!3064 lt!717970))))))

(assert (=> d!568331 (= lt!717979 e!1189260)))

(declare-fun c!303294 () Bool)

(assert (=> d!568331 (= c!303294 ((_ is Nil!20659) (tail!2811 lt!717972)))))

(assert (=> d!568331 (= (++!5582 (tail!2811 lt!717972) lt!717970) lt!717979)))

(declare-fun b!1862507 () Bool)

(assert (=> b!1862507 (= e!1189261 (or (not (= lt!717970 Nil!20659)) (= lt!717979 (tail!2811 lt!717972))))))

(declare-fun b!1862506 () Bool)

(declare-fun res!834026 () Bool)

(assert (=> b!1862506 (=> (not res!834026) (not e!1189261))))

(assert (=> b!1862506 (= res!834026 (= (size!16353 lt!717979) (+ (size!16353 (tail!2811 lt!717972)) (size!16353 lt!717970))))))

(declare-fun b!1862504 () Bool)

(assert (=> b!1862504 (= e!1189260 lt!717970)))

(assert (= (and d!568331 c!303294) b!1862504))

(assert (= (and d!568331 (not c!303294)) b!1862505))

(assert (= (and d!568331 res!834027) b!1862506))

(assert (= (and b!1862506 res!834026) b!1862507))

(declare-fun m!2286183 () Bool)

(assert (=> b!1862505 m!2286183))

(declare-fun m!2286185 () Bool)

(assert (=> d!568331 m!2286185))

(assert (=> d!568331 m!2286131))

(declare-fun m!2286187 () Bool)

(assert (=> d!568331 m!2286187))

(declare-fun m!2286189 () Bool)

(assert (=> d!568331 m!2286189))

(declare-fun m!2286191 () Bool)

(assert (=> b!1862506 m!2286191))

(assert (=> b!1862506 m!2286131))

(declare-fun m!2286193 () Bool)

(assert (=> b!1862506 m!2286193))

(declare-fun m!2286195 () Bool)

(assert (=> b!1862506 m!2286195))

(assert (=> b!1862460 d!568331))

(declare-fun b!1862509 () Bool)

(declare-fun e!1189262 () List!20741)

(assert (=> b!1862509 (= e!1189262 (Cons!20659 (h!26060 lt!717972) (++!5582 (t!172798 lt!717972) lt!717970)))))

(declare-fun d!568337 () Bool)

(declare-fun e!1189263 () Bool)

(assert (=> d!568337 e!1189263))

(declare-fun res!834029 () Bool)

(assert (=> d!568337 (=> (not res!834029) (not e!1189263))))

(declare-fun lt!717980 () List!20741)

(assert (=> d!568337 (= res!834029 (= (content!3064 lt!717980) ((_ map or) (content!3064 lt!717972) (content!3064 lt!717970))))))

(assert (=> d!568337 (= lt!717980 e!1189262)))

(declare-fun c!303295 () Bool)

(assert (=> d!568337 (= c!303295 ((_ is Nil!20659) lt!717972))))

(assert (=> d!568337 (= (++!5582 lt!717972 lt!717970) lt!717980)))

(declare-fun b!1862511 () Bool)

(assert (=> b!1862511 (= e!1189263 (or (not (= lt!717970 Nil!20659)) (= lt!717980 lt!717972)))))

(declare-fun b!1862510 () Bool)

(declare-fun res!834028 () Bool)

(assert (=> b!1862510 (=> (not res!834028) (not e!1189263))))

(assert (=> b!1862510 (= res!834028 (= (size!16353 lt!717980) (+ (size!16353 lt!717972) (size!16353 lt!717970))))))

(declare-fun b!1862508 () Bool)

(assert (=> b!1862508 (= e!1189262 lt!717970)))

(assert (= (and d!568337 c!303295) b!1862508))

(assert (= (and d!568337 (not c!303295)) b!1862509))

(assert (= (and d!568337 res!834029) b!1862510))

(assert (= (and b!1862510 res!834028) b!1862511))

(declare-fun m!2286197 () Bool)

(assert (=> b!1862509 m!2286197))

(declare-fun m!2286199 () Bool)

(assert (=> d!568337 m!2286199))

(declare-fun m!2286201 () Bool)

(assert (=> d!568337 m!2286201))

(assert (=> d!568337 m!2286189))

(declare-fun m!2286203 () Bool)

(assert (=> b!1862510 m!2286203))

(declare-fun m!2286205 () Bool)

(assert (=> b!1862510 m!2286205))

(assert (=> b!1862510 m!2286195))

(assert (=> b!1862460 d!568337))

(declare-fun b!1862528 () Bool)

(declare-fun e!1189272 () List!20741)

(assert (=> b!1862528 (= e!1189272 Nil!20659)))

(declare-fun b!1862531 () Bool)

(declare-fun e!1189273 () List!20741)

(assert (=> b!1862531 (= e!1189273 (++!5582 (list!8424 (left!16634 (right!16964 t!4595))) (list!8424 (right!16964 (right!16964 t!4595)))))))

(declare-fun d!568339 () Bool)

(declare-fun c!303304 () Bool)

(assert (=> d!568339 (= c!303304 ((_ is Empty!6854) (right!16964 t!4595)))))

(assert (=> d!568339 (= (list!8424 (right!16964 t!4595)) e!1189272)))

(declare-fun b!1862530 () Bool)

(declare-fun list!8426 (IArray!13713) List!20741)

(assert (=> b!1862530 (= e!1189273 (list!8426 (xs!9730 (right!16964 t!4595))))))

(declare-fun b!1862529 () Bool)

(assert (=> b!1862529 (= e!1189272 e!1189273)))

(declare-fun c!303305 () Bool)

(assert (=> b!1862529 (= c!303305 ((_ is Leaf!10049) (right!16964 t!4595)))))

(assert (= (and d!568339 c!303304) b!1862528))

(assert (= (and d!568339 (not c!303304)) b!1862529))

(assert (= (and b!1862529 c!303305) b!1862530))

(assert (= (and b!1862529 (not c!303305)) b!1862531))

(declare-fun m!2286215 () Bool)

(assert (=> b!1862531 m!2286215))

(declare-fun m!2286217 () Bool)

(assert (=> b!1862531 m!2286217))

(assert (=> b!1862531 m!2286215))

(assert (=> b!1862531 m!2286217))

(declare-fun m!2286219 () Bool)

(assert (=> b!1862531 m!2286219))

(declare-fun m!2286221 () Bool)

(assert (=> b!1862530 m!2286221))

(assert (=> b!1862460 d!568339))

(declare-fun d!568343 () Bool)

(assert (=> d!568343 (= (tail!2811 lt!717973) (t!172798 lt!717973))))

(assert (=> b!1862460 d!568343))

(declare-fun d!568345 () Bool)

(assert (=> d!568345 (= (tail!2811 (++!5582 lt!717972 lt!717970)) (++!5582 (tail!2811 lt!717972) lt!717970))))

(declare-fun lt!717987 () Unit!35271)

(declare-fun choose!11722 (List!20741 List!20741) Unit!35271)

(assert (=> d!568345 (= lt!717987 (choose!11722 lt!717972 lt!717970))))

(declare-fun isEmpty!12865 (List!20741) Bool)

(assert (=> d!568345 (not (isEmpty!12865 lt!717972))))

(assert (=> d!568345 (= (lemmaTailOfConcatIsTailConcat!26 lt!717972 lt!717970) lt!717987)))

(declare-fun bs!411560 () Bool)

(assert (= bs!411560 d!568345))

(assert (=> bs!411560 m!2286131))

(assert (=> bs!411560 m!2286133))

(assert (=> bs!411560 m!2286135))

(declare-fun m!2286247 () Bool)

(assert (=> bs!411560 m!2286247))

(assert (=> bs!411560 m!2286131))

(assert (=> bs!411560 m!2286135))

(declare-fun m!2286249 () Bool)

(assert (=> bs!411560 m!2286249))

(declare-fun m!2286251 () Bool)

(assert (=> bs!411560 m!2286251))

(assert (=> b!1862460 d!568345))

(declare-fun b!1862544 () Bool)

(declare-fun e!1189280 () List!20741)

(assert (=> b!1862544 (= e!1189280 Nil!20659)))

(declare-fun b!1862547 () Bool)

(declare-fun e!1189281 () List!20741)

(assert (=> b!1862547 (= e!1189281 (++!5582 (list!8424 (left!16634 (left!16634 t!4595))) (list!8424 (right!16964 (left!16634 t!4595)))))))

(declare-fun d!568351 () Bool)

(declare-fun c!303308 () Bool)

(assert (=> d!568351 (= c!303308 ((_ is Empty!6854) (left!16634 t!4595)))))

(assert (=> d!568351 (= (list!8424 (left!16634 t!4595)) e!1189280)))

(declare-fun b!1862546 () Bool)

(assert (=> b!1862546 (= e!1189281 (list!8426 (xs!9730 (left!16634 t!4595))))))

(declare-fun b!1862545 () Bool)

(assert (=> b!1862545 (= e!1189280 e!1189281)))

(declare-fun c!303309 () Bool)

(assert (=> b!1862545 (= c!303309 ((_ is Leaf!10049) (left!16634 t!4595)))))

(assert (= (and d!568351 c!303308) b!1862544))

(assert (= (and d!568351 (not c!303308)) b!1862545))

(assert (= (and b!1862545 c!303309) b!1862546))

(assert (= (and b!1862545 (not c!303309)) b!1862547))

(declare-fun m!2286253 () Bool)

(assert (=> b!1862547 m!2286253))

(declare-fun m!2286255 () Bool)

(assert (=> b!1862547 m!2286255))

(assert (=> b!1862547 m!2286253))

(assert (=> b!1862547 m!2286255))

(declare-fun m!2286257 () Bool)

(assert (=> b!1862547 m!2286257))

(declare-fun m!2286259 () Bool)

(assert (=> b!1862546 m!2286259))

(assert (=> b!1862460 d!568351))

(declare-fun b!1862564 () Bool)

(declare-fun res!834054 () Bool)

(declare-fun e!1189289 () Bool)

(assert (=> b!1862564 (=> (not res!834054) (not e!1189289))))

(assert (=> b!1862564 (= res!834054 (isBalanced!2155 (left!16634 t!4595)))))

(declare-fun b!1862566 () Bool)

(declare-fun res!834053 () Bool)

(assert (=> b!1862566 (=> (not res!834053) (not e!1189289))))

(assert (=> b!1862566 (= res!834053 (isBalanced!2155 (right!16964 t!4595)))))

(declare-fun b!1862567 () Bool)

(declare-fun res!834050 () Bool)

(assert (=> b!1862567 (=> (not res!834050) (not e!1189289))))

(assert (=> b!1862567 (= res!834050 (not (isEmpty!12863 (left!16634 t!4595))))))

(declare-fun b!1862568 () Bool)

(assert (=> b!1862568 (= e!1189289 (not (isEmpty!12863 (right!16964 t!4595))))))

(declare-fun b!1862569 () Bool)

(declare-fun e!1189288 () Bool)

(assert (=> b!1862569 (= e!1189288 e!1189289)))

(declare-fun res!834051 () Bool)

(assert (=> b!1862569 (=> (not res!834051) (not e!1189289))))

(declare-fun height!1044 (Conc!6854) Int)

(assert (=> b!1862569 (= res!834051 (<= (- 1) (- (height!1044 (left!16634 t!4595)) (height!1044 (right!16964 t!4595)))))))

(declare-fun d!568353 () Bool)

(declare-fun res!834052 () Bool)

(assert (=> d!568353 (=> res!834052 e!1189288)))

(assert (=> d!568353 (= res!834052 (not ((_ is Node!6854) t!4595)))))

(assert (=> d!568353 (= (isBalanced!2155 t!4595) e!1189288)))

(declare-fun b!1862565 () Bool)

(declare-fun res!834055 () Bool)

(assert (=> b!1862565 (=> (not res!834055) (not e!1189289))))

(assert (=> b!1862565 (= res!834055 (<= (- (height!1044 (left!16634 t!4595)) (height!1044 (right!16964 t!4595))) 1))))

(assert (= (and d!568353 (not res!834052)) b!1862569))

(assert (= (and b!1862569 res!834051) b!1862565))

(assert (= (and b!1862565 res!834055) b!1862564))

(assert (= (and b!1862564 res!834054) b!1862566))

(assert (= (and b!1862566 res!834053) b!1862567))

(assert (= (and b!1862567 res!834050) b!1862568))

(declare-fun m!2286277 () Bool)

(assert (=> b!1862565 m!2286277))

(declare-fun m!2286279 () Bool)

(assert (=> b!1862565 m!2286279))

(assert (=> b!1862567 m!2286157))

(declare-fun m!2286281 () Bool)

(assert (=> b!1862568 m!2286281))

(declare-fun m!2286283 () Bool)

(assert (=> b!1862564 m!2286283))

(declare-fun m!2286285 () Bool)

(assert (=> b!1862566 m!2286285))

(assert (=> b!1862569 m!2286277))

(assert (=> b!1862569 m!2286279))

(assert (=> start!186252 d!568353))

(declare-fun d!568365 () Bool)

(declare-fun c!303312 () Bool)

(assert (=> d!568365 (= c!303312 ((_ is Node!6854) t!4595))))

(declare-fun e!1189290 () Bool)

(assert (=> d!568365 (= (inv!27262 t!4595) e!1189290)))

(declare-fun b!1862570 () Bool)

(assert (=> b!1862570 (= e!1189290 (inv!27263 t!4595))))

(declare-fun b!1862571 () Bool)

(declare-fun e!1189291 () Bool)

(assert (=> b!1862571 (= e!1189290 e!1189291)))

(declare-fun res!834056 () Bool)

(assert (=> b!1862571 (= res!834056 (not ((_ is Leaf!10049) t!4595)))))

(assert (=> b!1862571 (=> res!834056 e!1189291)))

(declare-fun b!1862572 () Bool)

(assert (=> b!1862572 (= e!1189291 (inv!27264 t!4595))))

(assert (= (and d!568365 c!303312) b!1862570))

(assert (= (and d!568365 (not c!303312)) b!1862571))

(assert (= (and b!1862571 (not res!834056)) b!1862572))

(declare-fun m!2286287 () Bool)

(assert (=> b!1862570 m!2286287))

(declare-fun m!2286289 () Bool)

(assert (=> b!1862572 m!2286289))

(assert (=> start!186252 d!568365))

(declare-fun d!568367 () Bool)

(declare-fun lt!717993 () Bool)

(assert (=> d!568367 (= lt!717993 (isEmpty!12865 (list!8424 (left!16634 t!4595))))))

(declare-fun size!16356 (Conc!6854) Int)

(assert (=> d!568367 (= lt!717993 (= (size!16356 (left!16634 t!4595)) 0))))

(assert (=> d!568367 (= (isEmpty!12863 (left!16634 t!4595)) lt!717993)))

(declare-fun bs!411563 () Bool)

(assert (= bs!411563 d!568367))

(assert (=> bs!411563 m!2286137))

(assert (=> bs!411563 m!2286137))

(declare-fun m!2286291 () Bool)

(assert (=> bs!411563 m!2286291))

(declare-fun m!2286293 () Bool)

(assert (=> bs!411563 m!2286293))

(assert (=> b!1862458 d!568367))

(declare-fun d!568369 () Bool)

(declare-fun lt!717994 () Bool)

(assert (=> d!568369 (= lt!717994 (isEmpty!12865 (list!8424 t!4595)))))

(assert (=> d!568369 (= lt!717994 (= (size!16356 t!4595) 0))))

(assert (=> d!568369 (= (isEmpty!12863 t!4595) lt!717994)))

(declare-fun bs!411564 () Bool)

(assert (= bs!411564 d!568369))

(declare-fun m!2286295 () Bool)

(assert (=> bs!411564 m!2286295))

(assert (=> bs!411564 m!2286295))

(declare-fun m!2286297 () Bool)

(assert (=> bs!411564 m!2286297))

(declare-fun m!2286299 () Bool)

(assert (=> bs!411564 m!2286299))

(assert (=> b!1862463 d!568369))

(declare-fun b!1862589 () Bool)

(declare-fun e!1189298 () Bool)

(declare-fun tp_is_empty!8633 () Bool)

(declare-fun tp!530677 () Bool)

(assert (=> b!1862589 (= e!1189298 (and tp_is_empty!8633 tp!530677))))

(assert (=> b!1862462 (= tp!530672 e!1189298)))

(assert (= (and b!1862462 ((_ is Cons!20659) (innerList!6914 (xs!9730 t!4595)))) b!1862589))

(declare-fun b!1862609 () Bool)

(declare-fun tp!530684 () Bool)

(declare-fun tp!530686 () Bool)

(declare-fun e!1189308 () Bool)

(assert (=> b!1862609 (= e!1189308 (and (inv!27262 (left!16634 (left!16634 t!4595))) tp!530686 (inv!27262 (right!16964 (left!16634 t!4595))) tp!530684))))

(declare-fun b!1862613 () Bool)

(declare-fun e!1189307 () Bool)

(declare-fun tp!530685 () Bool)

(assert (=> b!1862613 (= e!1189307 tp!530685)))

(declare-fun b!1862612 () Bool)

(assert (=> b!1862612 (= e!1189308 (and (inv!27261 (xs!9730 (left!16634 t!4595))) e!1189307))))

(assert (=> b!1862461 (= tp!530673 (and (inv!27262 (left!16634 t!4595)) e!1189308))))

(assert (= (and b!1862461 ((_ is Node!6854) (left!16634 t!4595))) b!1862609))

(assert (= b!1862612 b!1862613))

(assert (= (and b!1862461 ((_ is Leaf!10049) (left!16634 t!4595))) b!1862612))

(declare-fun m!2286319 () Bool)

(assert (=> b!1862609 m!2286319))

(declare-fun m!2286321 () Bool)

(assert (=> b!1862609 m!2286321))

(declare-fun m!2286323 () Bool)

(assert (=> b!1862612 m!2286323))

(assert (=> b!1862461 m!2286153))

(declare-fun b!1862614 () Bool)

(declare-fun tp!530689 () Bool)

(declare-fun e!1189312 () Bool)

(declare-fun tp!530691 () Bool)

(assert (=> b!1862614 (= e!1189312 (and (inv!27262 (left!16634 (right!16964 t!4595))) tp!530691 (inv!27262 (right!16964 (right!16964 t!4595))) tp!530689))))

(declare-fun b!1862617 () Bool)

(declare-fun e!1189311 () Bool)

(declare-fun tp!530690 () Bool)

(assert (=> b!1862617 (= e!1189311 tp!530690)))

(declare-fun b!1862615 () Bool)

(assert (=> b!1862615 (= e!1189312 (and (inv!27261 (xs!9730 (right!16964 t!4595))) e!1189311))))

(assert (=> b!1862461 (= tp!530674 (and (inv!27262 (right!16964 t!4595)) e!1189312))))

(assert (= (and b!1862461 ((_ is Node!6854) (right!16964 t!4595))) b!1862614))

(assert (= b!1862615 b!1862617))

(assert (= (and b!1862461 ((_ is Leaf!10049) (right!16964 t!4595))) b!1862615))

(declare-fun m!2286325 () Bool)

(assert (=> b!1862614 m!2286325))

(declare-fun m!2286327 () Bool)

(assert (=> b!1862614 m!2286327))

(declare-fun m!2286329 () Bool)

(assert (=> b!1862615 m!2286329))

(assert (=> b!1862461 m!2286155))

(check-sat (not b!1862530) (not b!1862568) (not d!568337) (not b!1862615) (not b!1862569) (not b!1862546) (not b!1862613) (not d!568331) (not b!1862567) (not b!1862609) (not d!568319) (not b!1862565) (not b!1862612) (not b!1862531) (not b!1862470) (not b!1862461) (not b!1862564) (not b!1862510) (not d!568367) (not b!1862570) tp_is_empty!8633 (not b!1862566) (not b!1862617) (not b!1862589) (not b!1862547) (not b!1862614) (not b!1862505) (not b!1862572) (not d!568369) (not b!1862506) (not b!1862509) (not b!1862475) (not b!1862473) (not b!1862472) (not d!568345))
(check-sat)
(get-model)

(declare-fun d!568375 () Bool)

(declare-fun lt!717998 () Int)

(assert (=> d!568375 (>= lt!717998 0)))

(declare-fun e!1189324 () Int)

(assert (=> d!568375 (= lt!717998 e!1189324)))

(declare-fun c!303316 () Bool)

(assert (=> d!568375 (= c!303316 ((_ is Nil!20659) lt!717979))))

(assert (=> d!568375 (= (size!16353 lt!717979) lt!717998)))

(declare-fun b!1862636 () Bool)

(assert (=> b!1862636 (= e!1189324 0)))

(declare-fun b!1862637 () Bool)

(assert (=> b!1862637 (= e!1189324 (+ 1 (size!16353 (t!172798 lt!717979))))))

(assert (= (and d!568375 c!303316) b!1862636))

(assert (= (and d!568375 (not c!303316)) b!1862637))

(declare-fun m!2286343 () Bool)

(assert (=> b!1862637 m!2286343))

(assert (=> b!1862506 d!568375))

(declare-fun d!568377 () Bool)

(declare-fun lt!717999 () Int)

(assert (=> d!568377 (>= lt!717999 0)))

(declare-fun e!1189325 () Int)

(assert (=> d!568377 (= lt!717999 e!1189325)))

(declare-fun c!303317 () Bool)

(assert (=> d!568377 (= c!303317 ((_ is Nil!20659) (tail!2811 lt!717972)))))

(assert (=> d!568377 (= (size!16353 (tail!2811 lt!717972)) lt!717999)))

(declare-fun b!1862638 () Bool)

(assert (=> b!1862638 (= e!1189325 0)))

(declare-fun b!1862639 () Bool)

(assert (=> b!1862639 (= e!1189325 (+ 1 (size!16353 (t!172798 (tail!2811 lt!717972)))))))

(assert (= (and d!568377 c!303317) b!1862638))

(assert (= (and d!568377 (not c!303317)) b!1862639))

(declare-fun m!2286345 () Bool)

(assert (=> b!1862639 m!2286345))

(assert (=> b!1862506 d!568377))

(declare-fun d!568379 () Bool)

(declare-fun lt!718000 () Int)

(assert (=> d!568379 (>= lt!718000 0)))

(declare-fun e!1189326 () Int)

(assert (=> d!568379 (= lt!718000 e!1189326)))

(declare-fun c!303318 () Bool)

(assert (=> d!568379 (= c!303318 ((_ is Nil!20659) lt!717970))))

(assert (=> d!568379 (= (size!16353 lt!717970) lt!718000)))

(declare-fun b!1862640 () Bool)

(assert (=> b!1862640 (= e!1189326 0)))

(declare-fun b!1862641 () Bool)

(assert (=> b!1862641 (= e!1189326 (+ 1 (size!16353 (t!172798 lt!717970))))))

(assert (= (and d!568379 c!303318) b!1862640))

(assert (= (and d!568379 (not c!303318)) b!1862641))

(declare-fun m!2286347 () Bool)

(assert (=> b!1862641 m!2286347))

(assert (=> b!1862506 d!568379))

(declare-fun b!1862643 () Bool)

(declare-fun e!1189327 () List!20741)

(assert (=> b!1862643 (= e!1189327 (Cons!20659 (h!26060 (list!8424 (left!16634 (left!16634 t!4595)))) (++!5582 (t!172798 (list!8424 (left!16634 (left!16634 t!4595)))) (list!8424 (right!16964 (left!16634 t!4595))))))))

(declare-fun d!568381 () Bool)

(declare-fun e!1189328 () Bool)

(assert (=> d!568381 e!1189328))

(declare-fun res!834077 () Bool)

(assert (=> d!568381 (=> (not res!834077) (not e!1189328))))

(declare-fun lt!718001 () List!20741)

(assert (=> d!568381 (= res!834077 (= (content!3064 lt!718001) ((_ map or) (content!3064 (list!8424 (left!16634 (left!16634 t!4595)))) (content!3064 (list!8424 (right!16964 (left!16634 t!4595)))))))))

(assert (=> d!568381 (= lt!718001 e!1189327)))

(declare-fun c!303319 () Bool)

(assert (=> d!568381 (= c!303319 ((_ is Nil!20659) (list!8424 (left!16634 (left!16634 t!4595)))))))

(assert (=> d!568381 (= (++!5582 (list!8424 (left!16634 (left!16634 t!4595))) (list!8424 (right!16964 (left!16634 t!4595)))) lt!718001)))

(declare-fun b!1862645 () Bool)

(assert (=> b!1862645 (= e!1189328 (or (not (= (list!8424 (right!16964 (left!16634 t!4595))) Nil!20659)) (= lt!718001 (list!8424 (left!16634 (left!16634 t!4595))))))))

(declare-fun b!1862644 () Bool)

(declare-fun res!834076 () Bool)

(assert (=> b!1862644 (=> (not res!834076) (not e!1189328))))

(assert (=> b!1862644 (= res!834076 (= (size!16353 lt!718001) (+ (size!16353 (list!8424 (left!16634 (left!16634 t!4595)))) (size!16353 (list!8424 (right!16964 (left!16634 t!4595)))))))))

(declare-fun b!1862642 () Bool)

(assert (=> b!1862642 (= e!1189327 (list!8424 (right!16964 (left!16634 t!4595))))))

(assert (= (and d!568381 c!303319) b!1862642))

(assert (= (and d!568381 (not c!303319)) b!1862643))

(assert (= (and d!568381 res!834077) b!1862644))

(assert (= (and b!1862644 res!834076) b!1862645))

(assert (=> b!1862643 m!2286255))

(declare-fun m!2286349 () Bool)

(assert (=> b!1862643 m!2286349))

(declare-fun m!2286351 () Bool)

(assert (=> d!568381 m!2286351))

(assert (=> d!568381 m!2286253))

(declare-fun m!2286353 () Bool)

(assert (=> d!568381 m!2286353))

(assert (=> d!568381 m!2286255))

(declare-fun m!2286355 () Bool)

(assert (=> d!568381 m!2286355))

(declare-fun m!2286357 () Bool)

(assert (=> b!1862644 m!2286357))

(assert (=> b!1862644 m!2286253))

(declare-fun m!2286359 () Bool)

(assert (=> b!1862644 m!2286359))

(assert (=> b!1862644 m!2286255))

(declare-fun m!2286361 () Bool)

(assert (=> b!1862644 m!2286361))

(assert (=> b!1862547 d!568381))

(declare-fun b!1862646 () Bool)

(declare-fun e!1189329 () List!20741)

(assert (=> b!1862646 (= e!1189329 Nil!20659)))

(declare-fun b!1862649 () Bool)

(declare-fun e!1189330 () List!20741)

(assert (=> b!1862649 (= e!1189330 (++!5582 (list!8424 (left!16634 (left!16634 (left!16634 t!4595)))) (list!8424 (right!16964 (left!16634 (left!16634 t!4595))))))))

(declare-fun d!568383 () Bool)

(declare-fun c!303320 () Bool)

(assert (=> d!568383 (= c!303320 ((_ is Empty!6854) (left!16634 (left!16634 t!4595))))))

(assert (=> d!568383 (= (list!8424 (left!16634 (left!16634 t!4595))) e!1189329)))

(declare-fun b!1862648 () Bool)

(assert (=> b!1862648 (= e!1189330 (list!8426 (xs!9730 (left!16634 (left!16634 t!4595)))))))

(declare-fun b!1862647 () Bool)

(assert (=> b!1862647 (= e!1189329 e!1189330)))

(declare-fun c!303321 () Bool)

(assert (=> b!1862647 (= c!303321 ((_ is Leaf!10049) (left!16634 (left!16634 t!4595))))))

(assert (= (and d!568383 c!303320) b!1862646))

(assert (= (and d!568383 (not c!303320)) b!1862647))

(assert (= (and b!1862647 c!303321) b!1862648))

(assert (= (and b!1862647 (not c!303321)) b!1862649))

(declare-fun m!2286363 () Bool)

(assert (=> b!1862649 m!2286363))

(declare-fun m!2286365 () Bool)

(assert (=> b!1862649 m!2286365))

(assert (=> b!1862649 m!2286363))

(assert (=> b!1862649 m!2286365))

(declare-fun m!2286367 () Bool)

(assert (=> b!1862649 m!2286367))

(declare-fun m!2286369 () Bool)

(assert (=> b!1862648 m!2286369))

(assert (=> b!1862547 d!568383))

(declare-fun b!1862650 () Bool)

(declare-fun e!1189331 () List!20741)

(assert (=> b!1862650 (= e!1189331 Nil!20659)))

(declare-fun b!1862653 () Bool)

(declare-fun e!1189332 () List!20741)

(assert (=> b!1862653 (= e!1189332 (++!5582 (list!8424 (left!16634 (right!16964 (left!16634 t!4595)))) (list!8424 (right!16964 (right!16964 (left!16634 t!4595))))))))

(declare-fun d!568385 () Bool)

(declare-fun c!303322 () Bool)

(assert (=> d!568385 (= c!303322 ((_ is Empty!6854) (right!16964 (left!16634 t!4595))))))

(assert (=> d!568385 (= (list!8424 (right!16964 (left!16634 t!4595))) e!1189331)))

(declare-fun b!1862652 () Bool)

(assert (=> b!1862652 (= e!1189332 (list!8426 (xs!9730 (right!16964 (left!16634 t!4595)))))))

(declare-fun b!1862651 () Bool)

(assert (=> b!1862651 (= e!1189331 e!1189332)))

(declare-fun c!303323 () Bool)

(assert (=> b!1862651 (= c!303323 ((_ is Leaf!10049) (right!16964 (left!16634 t!4595))))))

(assert (= (and d!568385 c!303322) b!1862650))

(assert (= (and d!568385 (not c!303322)) b!1862651))

(assert (= (and b!1862651 c!303323) b!1862652))

(assert (= (and b!1862651 (not c!303323)) b!1862653))

(declare-fun m!2286371 () Bool)

(assert (=> b!1862653 m!2286371))

(declare-fun m!2286373 () Bool)

(assert (=> b!1862653 m!2286373))

(assert (=> b!1862653 m!2286371))

(assert (=> b!1862653 m!2286373))

(declare-fun m!2286375 () Bool)

(assert (=> b!1862653 m!2286375))

(declare-fun m!2286377 () Bool)

(assert (=> b!1862652 m!2286377))

(assert (=> b!1862547 d!568385))

(declare-fun b!1862655 () Bool)

(declare-fun e!1189333 () List!20741)

(assert (=> b!1862655 (= e!1189333 (Cons!20659 (h!26060 (t!172798 (tail!2811 lt!717972))) (++!5582 (t!172798 (t!172798 (tail!2811 lt!717972))) lt!717970)))))

(declare-fun d!568387 () Bool)

(declare-fun e!1189334 () Bool)

(assert (=> d!568387 e!1189334))

(declare-fun res!834079 () Bool)

(assert (=> d!568387 (=> (not res!834079) (not e!1189334))))

(declare-fun lt!718002 () List!20741)

(assert (=> d!568387 (= res!834079 (= (content!3064 lt!718002) ((_ map or) (content!3064 (t!172798 (tail!2811 lt!717972))) (content!3064 lt!717970))))))

(assert (=> d!568387 (= lt!718002 e!1189333)))

(declare-fun c!303324 () Bool)

(assert (=> d!568387 (= c!303324 ((_ is Nil!20659) (t!172798 (tail!2811 lt!717972))))))

(assert (=> d!568387 (= (++!5582 (t!172798 (tail!2811 lt!717972)) lt!717970) lt!718002)))

(declare-fun b!1862657 () Bool)

(assert (=> b!1862657 (= e!1189334 (or (not (= lt!717970 Nil!20659)) (= lt!718002 (t!172798 (tail!2811 lt!717972)))))))

(declare-fun b!1862656 () Bool)

(declare-fun res!834078 () Bool)

(assert (=> b!1862656 (=> (not res!834078) (not e!1189334))))

(assert (=> b!1862656 (= res!834078 (= (size!16353 lt!718002) (+ (size!16353 (t!172798 (tail!2811 lt!717972))) (size!16353 lt!717970))))))

(declare-fun b!1862654 () Bool)

(assert (=> b!1862654 (= e!1189333 lt!717970)))

(assert (= (and d!568387 c!303324) b!1862654))

(assert (= (and d!568387 (not c!303324)) b!1862655))

(assert (= (and d!568387 res!834079) b!1862656))

(assert (= (and b!1862656 res!834078) b!1862657))

(declare-fun m!2286379 () Bool)

(assert (=> b!1862655 m!2286379))

(declare-fun m!2286381 () Bool)

(assert (=> d!568387 m!2286381))

(declare-fun m!2286383 () Bool)

(assert (=> d!568387 m!2286383))

(assert (=> d!568387 m!2286189))

(declare-fun m!2286385 () Bool)

(assert (=> b!1862656 m!2286385))

(assert (=> b!1862656 m!2286345))

(assert (=> b!1862656 m!2286195))

(assert (=> b!1862505 d!568387))

(declare-fun d!568389 () Bool)

(assert (=> d!568389 (= (list!8426 (xs!9730 (left!16634 t!4595))) (innerList!6914 (xs!9730 (left!16634 t!4595))))))

(assert (=> b!1862546 d!568389))

(declare-fun d!568391 () Bool)

(declare-fun res!834086 () Bool)

(declare-fun e!1189337 () Bool)

(assert (=> d!568391 (=> (not res!834086) (not e!1189337))))

(assert (=> d!568391 (= res!834086 (= (csize!13938 (right!16964 t!4595)) (+ (size!16356 (left!16634 (right!16964 t!4595))) (size!16356 (right!16964 (right!16964 t!4595))))))))

(assert (=> d!568391 (= (inv!27263 (right!16964 t!4595)) e!1189337)))

(declare-fun b!1862664 () Bool)

(declare-fun res!834087 () Bool)

(assert (=> b!1862664 (=> (not res!834087) (not e!1189337))))

(assert (=> b!1862664 (= res!834087 (and (not (= (left!16634 (right!16964 t!4595)) Empty!6854)) (not (= (right!16964 (right!16964 t!4595)) Empty!6854))))))

(declare-fun b!1862665 () Bool)

(declare-fun res!834088 () Bool)

(assert (=> b!1862665 (=> (not res!834088) (not e!1189337))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1862665 (= res!834088 (= (cheight!7065 (right!16964 t!4595)) (+ (max!0 (height!1044 (left!16634 (right!16964 t!4595))) (height!1044 (right!16964 (right!16964 t!4595)))) 1)))))

(declare-fun b!1862666 () Bool)

(assert (=> b!1862666 (= e!1189337 (<= 0 (cheight!7065 (right!16964 t!4595))))))

(assert (= (and d!568391 res!834086) b!1862664))

(assert (= (and b!1862664 res!834087) b!1862665))

(assert (= (and b!1862665 res!834088) b!1862666))

(declare-fun m!2286387 () Bool)

(assert (=> d!568391 m!2286387))

(declare-fun m!2286389 () Bool)

(assert (=> d!568391 m!2286389))

(declare-fun m!2286391 () Bool)

(assert (=> b!1862665 m!2286391))

(declare-fun m!2286393 () Bool)

(assert (=> b!1862665 m!2286393))

(assert (=> b!1862665 m!2286391))

(assert (=> b!1862665 m!2286393))

(declare-fun m!2286395 () Bool)

(assert (=> b!1862665 m!2286395))

(assert (=> b!1862473 d!568391))

(declare-fun d!568393 () Bool)

(assert (=> d!568393 (= (height!1044 (left!16634 t!4595)) (ite ((_ is Empty!6854) (left!16634 t!4595)) 0 (ite ((_ is Leaf!10049) (left!16634 t!4595)) 1 (cheight!7065 (left!16634 t!4595)))))))

(assert (=> b!1862569 d!568393))

(declare-fun d!568395 () Bool)

(assert (=> d!568395 (= (height!1044 (right!16964 t!4595)) (ite ((_ is Empty!6854) (right!16964 t!4595)) 0 (ite ((_ is Leaf!10049) (right!16964 t!4595)) 1 (cheight!7065 (right!16964 t!4595)))))))

(assert (=> b!1862569 d!568395))

(declare-fun d!568397 () Bool)

(declare-fun lt!718003 () Bool)

(assert (=> d!568397 (= lt!718003 (isEmpty!12865 (list!8424 (right!16964 t!4595))))))

(assert (=> d!568397 (= lt!718003 (= (size!16356 (right!16964 t!4595)) 0))))

(assert (=> d!568397 (= (isEmpty!12863 (right!16964 t!4595)) lt!718003)))

(declare-fun bs!411566 () Bool)

(assert (= bs!411566 d!568397))

(assert (=> bs!411566 m!2286143))

(assert (=> bs!411566 m!2286143))

(declare-fun m!2286397 () Bool)

(assert (=> bs!411566 m!2286397))

(declare-fun m!2286399 () Bool)

(assert (=> bs!411566 m!2286399))

(assert (=> b!1862568 d!568397))

(declare-fun d!568399 () Bool)

(declare-fun c!303327 () Bool)

(assert (=> d!568399 (= c!303327 ((_ is Nil!20659) lt!717980))))

(declare-fun e!1189340 () (InoxSet T!32990))

(assert (=> d!568399 (= (content!3064 lt!717980) e!1189340)))

(declare-fun b!1862671 () Bool)

(assert (=> b!1862671 (= e!1189340 ((as const (Array T!32990 Bool)) false))))

(declare-fun b!1862672 () Bool)

(assert (=> b!1862672 (= e!1189340 ((_ map or) (store ((as const (Array T!32990 Bool)) false) (h!26060 lt!717980) true) (content!3064 (t!172798 lt!717980))))))

(assert (= (and d!568399 c!303327) b!1862671))

(assert (= (and d!568399 (not c!303327)) b!1862672))

(declare-fun m!2286401 () Bool)

(assert (=> b!1862672 m!2286401))

(declare-fun m!2286403 () Bool)

(assert (=> b!1862672 m!2286403))

(assert (=> d!568337 d!568399))

(declare-fun d!568401 () Bool)

(declare-fun c!303328 () Bool)

(assert (=> d!568401 (= c!303328 ((_ is Nil!20659) lt!717972))))

(declare-fun e!1189341 () (InoxSet T!32990))

(assert (=> d!568401 (= (content!3064 lt!717972) e!1189341)))

(declare-fun b!1862673 () Bool)

(assert (=> b!1862673 (= e!1189341 ((as const (Array T!32990 Bool)) false))))

(declare-fun b!1862674 () Bool)

(assert (=> b!1862674 (= e!1189341 ((_ map or) (store ((as const (Array T!32990 Bool)) false) (h!26060 lt!717972) true) (content!3064 (t!172798 lt!717972))))))

(assert (= (and d!568401 c!303328) b!1862673))

(assert (= (and d!568401 (not c!303328)) b!1862674))

(declare-fun m!2286405 () Bool)

(assert (=> b!1862674 m!2286405))

(declare-fun m!2286407 () Bool)

(assert (=> b!1862674 m!2286407))

(assert (=> d!568337 d!568401))

(declare-fun d!568403 () Bool)

(declare-fun c!303329 () Bool)

(assert (=> d!568403 (= c!303329 ((_ is Nil!20659) lt!717970))))

(declare-fun e!1189342 () (InoxSet T!32990))

(assert (=> d!568403 (= (content!3064 lt!717970) e!1189342)))

(declare-fun b!1862675 () Bool)

(assert (=> b!1862675 (= e!1189342 ((as const (Array T!32990 Bool)) false))))

(declare-fun b!1862676 () Bool)

(assert (=> b!1862676 (= e!1189342 ((_ map or) (store ((as const (Array T!32990 Bool)) false) (h!26060 lt!717970) true) (content!3064 (t!172798 lt!717970))))))

(assert (= (and d!568403 c!303329) b!1862675))

(assert (= (and d!568403 (not c!303329)) b!1862676))

(declare-fun m!2286409 () Bool)

(assert (=> b!1862676 m!2286409))

(declare-fun m!2286411 () Bool)

(assert (=> b!1862676 m!2286411))

(assert (=> d!568337 d!568403))

(assert (=> b!1862567 d!568367))

(declare-fun d!568405 () Bool)

(declare-fun res!834093 () Bool)

(declare-fun e!1189345 () Bool)

(assert (=> d!568405 (=> (not res!834093) (not e!1189345))))

(assert (=> d!568405 (= res!834093 (<= (size!16353 (list!8426 (xs!9730 t!4595))) 512))))

(assert (=> d!568405 (= (inv!27264 t!4595) e!1189345)))

(declare-fun b!1862681 () Bool)

(declare-fun res!834094 () Bool)

(assert (=> b!1862681 (=> (not res!834094) (not e!1189345))))

(assert (=> b!1862681 (= res!834094 (= (csize!13939 t!4595) (size!16353 (list!8426 (xs!9730 t!4595)))))))

(declare-fun b!1862682 () Bool)

(assert (=> b!1862682 (= e!1189345 (and (> (csize!13939 t!4595) 0) (<= (csize!13939 t!4595) 512)))))

(assert (= (and d!568405 res!834093) b!1862681))

(assert (= (and b!1862681 res!834094) b!1862682))

(declare-fun m!2286413 () Bool)

(assert (=> d!568405 m!2286413))

(assert (=> d!568405 m!2286413))

(declare-fun m!2286415 () Bool)

(assert (=> d!568405 m!2286415))

(assert (=> b!1862681 m!2286413))

(assert (=> b!1862681 m!2286413))

(assert (=> b!1862681 m!2286415))

(assert (=> b!1862572 d!568405))

(declare-fun b!1862683 () Bool)

(declare-fun res!834099 () Bool)

(declare-fun e!1189347 () Bool)

(assert (=> b!1862683 (=> (not res!834099) (not e!1189347))))

(assert (=> b!1862683 (= res!834099 (isBalanced!2155 (left!16634 (right!16964 t!4595))))))

(declare-fun b!1862685 () Bool)

(declare-fun res!834098 () Bool)

(assert (=> b!1862685 (=> (not res!834098) (not e!1189347))))

(assert (=> b!1862685 (= res!834098 (isBalanced!2155 (right!16964 (right!16964 t!4595))))))

(declare-fun b!1862686 () Bool)

(declare-fun res!834095 () Bool)

(assert (=> b!1862686 (=> (not res!834095) (not e!1189347))))

(assert (=> b!1862686 (= res!834095 (not (isEmpty!12863 (left!16634 (right!16964 t!4595)))))))

(declare-fun b!1862687 () Bool)

(assert (=> b!1862687 (= e!1189347 (not (isEmpty!12863 (right!16964 (right!16964 t!4595)))))))

(declare-fun b!1862688 () Bool)

(declare-fun e!1189346 () Bool)

(assert (=> b!1862688 (= e!1189346 e!1189347)))

(declare-fun res!834096 () Bool)

(assert (=> b!1862688 (=> (not res!834096) (not e!1189347))))

(assert (=> b!1862688 (= res!834096 (<= (- 1) (- (height!1044 (left!16634 (right!16964 t!4595))) (height!1044 (right!16964 (right!16964 t!4595))))))))

(declare-fun d!568407 () Bool)

(declare-fun res!834097 () Bool)

(assert (=> d!568407 (=> res!834097 e!1189346)))

(assert (=> d!568407 (= res!834097 (not ((_ is Node!6854) (right!16964 t!4595))))))

(assert (=> d!568407 (= (isBalanced!2155 (right!16964 t!4595)) e!1189346)))

(declare-fun b!1862684 () Bool)

(declare-fun res!834100 () Bool)

(assert (=> b!1862684 (=> (not res!834100) (not e!1189347))))

(assert (=> b!1862684 (= res!834100 (<= (- (height!1044 (left!16634 (right!16964 t!4595))) (height!1044 (right!16964 (right!16964 t!4595)))) 1))))

(assert (= (and d!568407 (not res!834097)) b!1862688))

(assert (= (and b!1862688 res!834096) b!1862684))

(assert (= (and b!1862684 res!834100) b!1862683))

(assert (= (and b!1862683 res!834099) b!1862685))

(assert (= (and b!1862685 res!834098) b!1862686))

(assert (= (and b!1862686 res!834095) b!1862687))

(assert (=> b!1862684 m!2286391))

(assert (=> b!1862684 m!2286393))

(declare-fun m!2286417 () Bool)

(assert (=> b!1862686 m!2286417))

(declare-fun m!2286419 () Bool)

(assert (=> b!1862687 m!2286419))

(declare-fun m!2286421 () Bool)

(assert (=> b!1862683 m!2286421))

(declare-fun m!2286423 () Bool)

(assert (=> b!1862685 m!2286423))

(assert (=> b!1862688 m!2286391))

(assert (=> b!1862688 m!2286393))

(assert (=> b!1862566 d!568407))

(assert (=> b!1862565 d!568393))

(assert (=> b!1862565 d!568395))

(declare-fun d!568409 () Bool)

(declare-fun res!834101 () Bool)

(declare-fun e!1189348 () Bool)

(assert (=> d!568409 (=> (not res!834101) (not e!1189348))))

(assert (=> d!568409 (= res!834101 (= (csize!13938 t!4595) (+ (size!16356 (left!16634 t!4595)) (size!16356 (right!16964 t!4595)))))))

(assert (=> d!568409 (= (inv!27263 t!4595) e!1189348)))

(declare-fun b!1862689 () Bool)

(declare-fun res!834102 () Bool)

(assert (=> b!1862689 (=> (not res!834102) (not e!1189348))))

(assert (=> b!1862689 (= res!834102 (and (not (= (left!16634 t!4595) Empty!6854)) (not (= (right!16964 t!4595) Empty!6854))))))

(declare-fun b!1862690 () Bool)

(declare-fun res!834103 () Bool)

(assert (=> b!1862690 (=> (not res!834103) (not e!1189348))))

(assert (=> b!1862690 (= res!834103 (= (cheight!7065 t!4595) (+ (max!0 (height!1044 (left!16634 t!4595)) (height!1044 (right!16964 t!4595))) 1)))))

(declare-fun b!1862691 () Bool)

(assert (=> b!1862691 (= e!1189348 (<= 0 (cheight!7065 t!4595)))))

(assert (= (and d!568409 res!834101) b!1862689))

(assert (= (and b!1862689 res!834102) b!1862690))

(assert (= (and b!1862690 res!834103) b!1862691))

(assert (=> d!568409 m!2286293))

(assert (=> d!568409 m!2286399))

(assert (=> b!1862690 m!2286277))

(assert (=> b!1862690 m!2286279))

(assert (=> b!1862690 m!2286277))

(assert (=> b!1862690 m!2286279))

(declare-fun m!2286425 () Bool)

(assert (=> b!1862690 m!2286425))

(assert (=> b!1862570 d!568409))

(declare-fun b!1862692 () Bool)

(declare-fun res!834108 () Bool)

(declare-fun e!1189350 () Bool)

(assert (=> b!1862692 (=> (not res!834108) (not e!1189350))))

(assert (=> b!1862692 (= res!834108 (isBalanced!2155 (left!16634 (left!16634 t!4595))))))

(declare-fun b!1862694 () Bool)

(declare-fun res!834107 () Bool)

(assert (=> b!1862694 (=> (not res!834107) (not e!1189350))))

(assert (=> b!1862694 (= res!834107 (isBalanced!2155 (right!16964 (left!16634 t!4595))))))

(declare-fun b!1862695 () Bool)

(declare-fun res!834104 () Bool)

(assert (=> b!1862695 (=> (not res!834104) (not e!1189350))))

(assert (=> b!1862695 (= res!834104 (not (isEmpty!12863 (left!16634 (left!16634 t!4595)))))))

(declare-fun b!1862696 () Bool)

(assert (=> b!1862696 (= e!1189350 (not (isEmpty!12863 (right!16964 (left!16634 t!4595)))))))

(declare-fun b!1862697 () Bool)

(declare-fun e!1189349 () Bool)

(assert (=> b!1862697 (= e!1189349 e!1189350)))

(declare-fun res!834105 () Bool)

(assert (=> b!1862697 (=> (not res!834105) (not e!1189350))))

(assert (=> b!1862697 (= res!834105 (<= (- 1) (- (height!1044 (left!16634 (left!16634 t!4595))) (height!1044 (right!16964 (left!16634 t!4595))))))))

(declare-fun d!568411 () Bool)

(declare-fun res!834106 () Bool)

(assert (=> d!568411 (=> res!834106 e!1189349)))

(assert (=> d!568411 (= res!834106 (not ((_ is Node!6854) (left!16634 t!4595))))))

(assert (=> d!568411 (= (isBalanced!2155 (left!16634 t!4595)) e!1189349)))

(declare-fun b!1862693 () Bool)

(declare-fun res!834109 () Bool)

(assert (=> b!1862693 (=> (not res!834109) (not e!1189350))))

(assert (=> b!1862693 (= res!834109 (<= (- (height!1044 (left!16634 (left!16634 t!4595))) (height!1044 (right!16964 (left!16634 t!4595)))) 1))))

(assert (= (and d!568411 (not res!834106)) b!1862697))

(assert (= (and b!1862697 res!834105) b!1862693))

(assert (= (and b!1862693 res!834109) b!1862692))

(assert (= (and b!1862692 res!834108) b!1862694))

(assert (= (and b!1862694 res!834107) b!1862695))

(assert (= (and b!1862695 res!834104) b!1862696))

(declare-fun m!2286427 () Bool)

(assert (=> b!1862693 m!2286427))

(declare-fun m!2286429 () Bool)

(assert (=> b!1862693 m!2286429))

(declare-fun m!2286431 () Bool)

(assert (=> b!1862695 m!2286431))

(declare-fun m!2286433 () Bool)

(assert (=> b!1862696 m!2286433))

(declare-fun m!2286435 () Bool)

(assert (=> b!1862692 m!2286435))

(declare-fun m!2286437 () Bool)

(assert (=> b!1862694 m!2286437))

(assert (=> b!1862697 m!2286427))

(assert (=> b!1862697 m!2286429))

(assert (=> b!1862564 d!568411))

(assert (=> d!568345 d!568329))

(declare-fun d!568413 () Bool)

(assert (=> d!568413 (= (tail!2811 (++!5582 lt!717972 lt!717970)) (t!172798 (++!5582 lt!717972 lt!717970)))))

(assert (=> d!568345 d!568413))

(assert (=> d!568345 d!568337))

(declare-fun d!568415 () Bool)

(assert (=> d!568415 (= (tail!2811 (++!5582 lt!717972 lt!717970)) (++!5582 (tail!2811 lt!717972) lt!717970))))

(assert (=> d!568415 true))

(declare-fun _$73!112 () Unit!35271)

(assert (=> d!568415 (= (choose!11722 lt!717972 lt!717970) _$73!112)))

(declare-fun bs!411567 () Bool)

(assert (= bs!411567 d!568415))

(assert (=> bs!411567 m!2286135))

(assert (=> bs!411567 m!2286135))

(assert (=> bs!411567 m!2286249))

(assert (=> bs!411567 m!2286131))

(assert (=> bs!411567 m!2286131))

(assert (=> bs!411567 m!2286133))

(assert (=> d!568345 d!568415))

(assert (=> d!568345 d!568331))

(declare-fun d!568417 () Bool)

(assert (=> d!568417 (= (isEmpty!12865 lt!717972) ((_ is Nil!20659) lt!717972))))

(assert (=> d!568345 d!568417))

(declare-fun b!1862699 () Bool)

(declare-fun e!1189351 () List!20741)

(assert (=> b!1862699 (= e!1189351 (Cons!20659 (h!26060 (list!8424 (left!16634 (right!16964 t!4595)))) (++!5582 (t!172798 (list!8424 (left!16634 (right!16964 t!4595)))) (list!8424 (right!16964 (right!16964 t!4595))))))))

(declare-fun d!568419 () Bool)

(declare-fun e!1189352 () Bool)

(assert (=> d!568419 e!1189352))

(declare-fun res!834111 () Bool)

(assert (=> d!568419 (=> (not res!834111) (not e!1189352))))

(declare-fun lt!718004 () List!20741)

(assert (=> d!568419 (= res!834111 (= (content!3064 lt!718004) ((_ map or) (content!3064 (list!8424 (left!16634 (right!16964 t!4595)))) (content!3064 (list!8424 (right!16964 (right!16964 t!4595)))))))))

(assert (=> d!568419 (= lt!718004 e!1189351)))

(declare-fun c!303330 () Bool)

(assert (=> d!568419 (= c!303330 ((_ is Nil!20659) (list!8424 (left!16634 (right!16964 t!4595)))))))

(assert (=> d!568419 (= (++!5582 (list!8424 (left!16634 (right!16964 t!4595))) (list!8424 (right!16964 (right!16964 t!4595)))) lt!718004)))

(declare-fun b!1862701 () Bool)

(assert (=> b!1862701 (= e!1189352 (or (not (= (list!8424 (right!16964 (right!16964 t!4595))) Nil!20659)) (= lt!718004 (list!8424 (left!16634 (right!16964 t!4595))))))))

(declare-fun b!1862700 () Bool)

(declare-fun res!834110 () Bool)

(assert (=> b!1862700 (=> (not res!834110) (not e!1189352))))

(assert (=> b!1862700 (= res!834110 (= (size!16353 lt!718004) (+ (size!16353 (list!8424 (left!16634 (right!16964 t!4595)))) (size!16353 (list!8424 (right!16964 (right!16964 t!4595)))))))))

(declare-fun b!1862698 () Bool)

(assert (=> b!1862698 (= e!1189351 (list!8424 (right!16964 (right!16964 t!4595))))))

(assert (= (and d!568419 c!303330) b!1862698))

(assert (= (and d!568419 (not c!303330)) b!1862699))

(assert (= (and d!568419 res!834111) b!1862700))

(assert (= (and b!1862700 res!834110) b!1862701))

(assert (=> b!1862699 m!2286217))

(declare-fun m!2286439 () Bool)

(assert (=> b!1862699 m!2286439))

(declare-fun m!2286441 () Bool)

(assert (=> d!568419 m!2286441))

(assert (=> d!568419 m!2286215))

(declare-fun m!2286443 () Bool)

(assert (=> d!568419 m!2286443))

(assert (=> d!568419 m!2286217))

(declare-fun m!2286445 () Bool)

(assert (=> d!568419 m!2286445))

(declare-fun m!2286447 () Bool)

(assert (=> b!1862700 m!2286447))

(assert (=> b!1862700 m!2286215))

(declare-fun m!2286449 () Bool)

(assert (=> b!1862700 m!2286449))

(assert (=> b!1862700 m!2286217))

(declare-fun m!2286451 () Bool)

(assert (=> b!1862700 m!2286451))

(assert (=> b!1862531 d!568419))

(declare-fun b!1862702 () Bool)

(declare-fun e!1189353 () List!20741)

(assert (=> b!1862702 (= e!1189353 Nil!20659)))

(declare-fun b!1862705 () Bool)

(declare-fun e!1189354 () List!20741)

(assert (=> b!1862705 (= e!1189354 (++!5582 (list!8424 (left!16634 (left!16634 (right!16964 t!4595)))) (list!8424 (right!16964 (left!16634 (right!16964 t!4595))))))))

(declare-fun d!568421 () Bool)

(declare-fun c!303331 () Bool)

(assert (=> d!568421 (= c!303331 ((_ is Empty!6854) (left!16634 (right!16964 t!4595))))))

(assert (=> d!568421 (= (list!8424 (left!16634 (right!16964 t!4595))) e!1189353)))

(declare-fun b!1862704 () Bool)

(assert (=> b!1862704 (= e!1189354 (list!8426 (xs!9730 (left!16634 (right!16964 t!4595)))))))

(declare-fun b!1862703 () Bool)

(assert (=> b!1862703 (= e!1189353 e!1189354)))

(declare-fun c!303332 () Bool)

(assert (=> b!1862703 (= c!303332 ((_ is Leaf!10049) (left!16634 (right!16964 t!4595))))))

(assert (= (and d!568421 c!303331) b!1862702))

(assert (= (and d!568421 (not c!303331)) b!1862703))

(assert (= (and b!1862703 c!303332) b!1862704))

(assert (= (and b!1862703 (not c!303332)) b!1862705))

(declare-fun m!2286453 () Bool)

(assert (=> b!1862705 m!2286453))

(declare-fun m!2286455 () Bool)

(assert (=> b!1862705 m!2286455))

(assert (=> b!1862705 m!2286453))

(assert (=> b!1862705 m!2286455))

(declare-fun m!2286457 () Bool)

(assert (=> b!1862705 m!2286457))

(declare-fun m!2286459 () Bool)

(assert (=> b!1862704 m!2286459))

(assert (=> b!1862531 d!568421))

(declare-fun b!1862706 () Bool)

(declare-fun e!1189355 () List!20741)

(assert (=> b!1862706 (= e!1189355 Nil!20659)))

(declare-fun b!1862709 () Bool)

(declare-fun e!1189356 () List!20741)

(assert (=> b!1862709 (= e!1189356 (++!5582 (list!8424 (left!16634 (right!16964 (right!16964 t!4595)))) (list!8424 (right!16964 (right!16964 (right!16964 t!4595))))))))

(declare-fun d!568423 () Bool)

(declare-fun c!303333 () Bool)

(assert (=> d!568423 (= c!303333 ((_ is Empty!6854) (right!16964 (right!16964 t!4595))))))

(assert (=> d!568423 (= (list!8424 (right!16964 (right!16964 t!4595))) e!1189355)))

(declare-fun b!1862708 () Bool)

(assert (=> b!1862708 (= e!1189356 (list!8426 (xs!9730 (right!16964 (right!16964 t!4595)))))))

(declare-fun b!1862707 () Bool)

(assert (=> b!1862707 (= e!1189355 e!1189356)))

(declare-fun c!303334 () Bool)

(assert (=> b!1862707 (= c!303334 ((_ is Leaf!10049) (right!16964 (right!16964 t!4595))))))

(assert (= (and d!568423 c!303333) b!1862706))

(assert (= (and d!568423 (not c!303333)) b!1862707))

(assert (= (and b!1862707 c!303334) b!1862708))

(assert (= (and b!1862707 (not c!303334)) b!1862709))

(declare-fun m!2286461 () Bool)

(assert (=> b!1862709 m!2286461))

(declare-fun m!2286463 () Bool)

(assert (=> b!1862709 m!2286463))

(assert (=> b!1862709 m!2286461))

(assert (=> b!1862709 m!2286463))

(declare-fun m!2286465 () Bool)

(assert (=> b!1862709 m!2286465))

(declare-fun m!2286467 () Bool)

(assert (=> b!1862708 m!2286467))

(assert (=> b!1862531 d!568423))

(declare-fun d!568425 () Bool)

(declare-fun c!303335 () Bool)

(assert (=> d!568425 (= c!303335 ((_ is Nil!20659) lt!717979))))

(declare-fun e!1189357 () (InoxSet T!32990))

(assert (=> d!568425 (= (content!3064 lt!717979) e!1189357)))

(declare-fun b!1862710 () Bool)

(assert (=> b!1862710 (= e!1189357 ((as const (Array T!32990 Bool)) false))))

(declare-fun b!1862711 () Bool)

(assert (=> b!1862711 (= e!1189357 ((_ map or) (store ((as const (Array T!32990 Bool)) false) (h!26060 lt!717979) true) (content!3064 (t!172798 lt!717979))))))

(assert (= (and d!568425 c!303335) b!1862710))

(assert (= (and d!568425 (not c!303335)) b!1862711))

(declare-fun m!2286469 () Bool)

(assert (=> b!1862711 m!2286469))

(declare-fun m!2286471 () Bool)

(assert (=> b!1862711 m!2286471))

(assert (=> d!568331 d!568425))

(declare-fun d!568427 () Bool)

(declare-fun c!303336 () Bool)

(assert (=> d!568427 (= c!303336 ((_ is Nil!20659) (tail!2811 lt!717972)))))

(declare-fun e!1189358 () (InoxSet T!32990))

(assert (=> d!568427 (= (content!3064 (tail!2811 lt!717972)) e!1189358)))

(declare-fun b!1862712 () Bool)

(assert (=> b!1862712 (= e!1189358 ((as const (Array T!32990 Bool)) false))))

(declare-fun b!1862713 () Bool)

(assert (=> b!1862713 (= e!1189358 ((_ map or) (store ((as const (Array T!32990 Bool)) false) (h!26060 (tail!2811 lt!717972)) true) (content!3064 (t!172798 (tail!2811 lt!717972)))))))

(assert (= (and d!568427 c!303336) b!1862712))

(assert (= (and d!568427 (not c!303336)) b!1862713))

(declare-fun m!2286473 () Bool)

(assert (=> b!1862713 m!2286473))

(assert (=> b!1862713 m!2286383))

(assert (=> d!568331 d!568427))

(assert (=> d!568331 d!568403))

(declare-fun d!568429 () Bool)

(assert (=> d!568429 (= (list!8426 (xs!9730 (right!16964 t!4595))) (innerList!6914 (xs!9730 (right!16964 t!4595))))))

(assert (=> b!1862530 d!568429))

(declare-fun d!568431 () Bool)

(declare-fun res!834112 () Bool)

(declare-fun e!1189359 () Bool)

(assert (=> d!568431 (=> (not res!834112) (not e!1189359))))

(assert (=> d!568431 (= res!834112 (<= (size!16353 (list!8426 (xs!9730 (left!16634 t!4595)))) 512))))

(assert (=> d!568431 (= (inv!27264 (left!16634 t!4595)) e!1189359)))

(declare-fun b!1862714 () Bool)

(declare-fun res!834113 () Bool)

(assert (=> b!1862714 (=> (not res!834113) (not e!1189359))))

(assert (=> b!1862714 (= res!834113 (= (csize!13939 (left!16634 t!4595)) (size!16353 (list!8426 (xs!9730 (left!16634 t!4595))))))))

(declare-fun b!1862715 () Bool)

(assert (=> b!1862715 (= e!1189359 (and (> (csize!13939 (left!16634 t!4595)) 0) (<= (csize!13939 (left!16634 t!4595)) 512)))))

(assert (= (and d!568431 res!834112) b!1862714))

(assert (= (and b!1862714 res!834113) b!1862715))

(assert (=> d!568431 m!2286259))

(assert (=> d!568431 m!2286259))

(declare-fun m!2286475 () Bool)

(assert (=> d!568431 m!2286475))

(assert (=> b!1862714 m!2286259))

(assert (=> b!1862714 m!2286259))

(assert (=> b!1862714 m!2286475))

(assert (=> b!1862472 d!568431))

(declare-fun d!568433 () Bool)

(declare-fun res!834114 () Bool)

(declare-fun e!1189360 () Bool)

(assert (=> d!568433 (=> (not res!834114) (not e!1189360))))

(assert (=> d!568433 (= res!834114 (= (csize!13938 (left!16634 t!4595)) (+ (size!16356 (left!16634 (left!16634 t!4595))) (size!16356 (right!16964 (left!16634 t!4595))))))))

(assert (=> d!568433 (= (inv!27263 (left!16634 t!4595)) e!1189360)))

(declare-fun b!1862716 () Bool)

(declare-fun res!834115 () Bool)

(assert (=> b!1862716 (=> (not res!834115) (not e!1189360))))

(assert (=> b!1862716 (= res!834115 (and (not (= (left!16634 (left!16634 t!4595)) Empty!6854)) (not (= (right!16964 (left!16634 t!4595)) Empty!6854))))))

(declare-fun b!1862717 () Bool)

(declare-fun res!834116 () Bool)

(assert (=> b!1862717 (=> (not res!834116) (not e!1189360))))

(assert (=> b!1862717 (= res!834116 (= (cheight!7065 (left!16634 t!4595)) (+ (max!0 (height!1044 (left!16634 (left!16634 t!4595))) (height!1044 (right!16964 (left!16634 t!4595)))) 1)))))

(declare-fun b!1862718 () Bool)

(assert (=> b!1862718 (= e!1189360 (<= 0 (cheight!7065 (left!16634 t!4595))))))

(assert (= (and d!568433 res!834114) b!1862716))

(assert (= (and b!1862716 res!834115) b!1862717))

(assert (= (and b!1862717 res!834116) b!1862718))

(declare-fun m!2286477 () Bool)

(assert (=> d!568433 m!2286477))

(declare-fun m!2286479 () Bool)

(assert (=> d!568433 m!2286479))

(assert (=> b!1862717 m!2286427))

(assert (=> b!1862717 m!2286429))

(assert (=> b!1862717 m!2286427))

(assert (=> b!1862717 m!2286429))

(declare-fun m!2286481 () Bool)

(assert (=> b!1862717 m!2286481))

(assert (=> b!1862470 d!568433))

(declare-fun d!568435 () Bool)

(declare-fun lt!718005 () Int)

(assert (=> d!568435 (>= lt!718005 0)))

(declare-fun e!1189361 () Int)

(assert (=> d!568435 (= lt!718005 e!1189361)))

(declare-fun c!303337 () Bool)

(assert (=> d!568435 (= c!303337 ((_ is Nil!20659) lt!717980))))

(assert (=> d!568435 (= (size!16353 lt!717980) lt!718005)))

(declare-fun b!1862719 () Bool)

(assert (=> b!1862719 (= e!1189361 0)))

(declare-fun b!1862720 () Bool)

(assert (=> b!1862720 (= e!1189361 (+ 1 (size!16353 (t!172798 lt!717980))))))

(assert (= (and d!568435 c!303337) b!1862719))

(assert (= (and d!568435 (not c!303337)) b!1862720))

(declare-fun m!2286483 () Bool)

(assert (=> b!1862720 m!2286483))

(assert (=> b!1862510 d!568435))

(declare-fun d!568437 () Bool)

(declare-fun lt!718006 () Int)

(assert (=> d!568437 (>= lt!718006 0)))

(declare-fun e!1189362 () Int)

(assert (=> d!568437 (= lt!718006 e!1189362)))

(declare-fun c!303338 () Bool)

(assert (=> d!568437 (= c!303338 ((_ is Nil!20659) lt!717972))))

(assert (=> d!568437 (= (size!16353 lt!717972) lt!718006)))

(declare-fun b!1862721 () Bool)

(assert (=> b!1862721 (= e!1189362 0)))

(declare-fun b!1862722 () Bool)

(assert (=> b!1862722 (= e!1189362 (+ 1 (size!16353 (t!172798 lt!717972))))))

(assert (= (and d!568437 c!303338) b!1862721))

(assert (= (and d!568437 (not c!303338)) b!1862722))

(declare-fun m!2286485 () Bool)

(assert (=> b!1862722 m!2286485))

(assert (=> b!1862510 d!568437))

(assert (=> b!1862510 d!568379))

(declare-fun d!568439 () Bool)

(assert (=> d!568439 (= (inv!27261 (xs!9730 (left!16634 t!4595))) (<= (size!16353 (innerList!6914 (xs!9730 (left!16634 t!4595)))) 2147483647))))

(declare-fun bs!411568 () Bool)

(assert (= bs!411568 d!568439))

(declare-fun m!2286487 () Bool)

(assert (=> bs!411568 m!2286487))

(assert (=> b!1862612 d!568439))

(assert (=> b!1862461 d!568321))

(assert (=> b!1862461 d!568327))

(declare-fun b!1862724 () Bool)

(declare-fun e!1189363 () List!20741)

(assert (=> b!1862724 (= e!1189363 (Cons!20659 (h!26060 (t!172798 lt!717972)) (++!5582 (t!172798 (t!172798 lt!717972)) lt!717970)))))

(declare-fun d!568441 () Bool)

(declare-fun e!1189364 () Bool)

(assert (=> d!568441 e!1189364))

(declare-fun res!834118 () Bool)

(assert (=> d!568441 (=> (not res!834118) (not e!1189364))))

(declare-fun lt!718007 () List!20741)

(assert (=> d!568441 (= res!834118 (= (content!3064 lt!718007) ((_ map or) (content!3064 (t!172798 lt!717972)) (content!3064 lt!717970))))))

(assert (=> d!568441 (= lt!718007 e!1189363)))

(declare-fun c!303339 () Bool)

(assert (=> d!568441 (= c!303339 ((_ is Nil!20659) (t!172798 lt!717972)))))

(assert (=> d!568441 (= (++!5582 (t!172798 lt!717972) lt!717970) lt!718007)))

(declare-fun b!1862726 () Bool)

(assert (=> b!1862726 (= e!1189364 (or (not (= lt!717970 Nil!20659)) (= lt!718007 (t!172798 lt!717972))))))

(declare-fun b!1862725 () Bool)

(declare-fun res!834117 () Bool)

(assert (=> b!1862725 (=> (not res!834117) (not e!1189364))))

(assert (=> b!1862725 (= res!834117 (= (size!16353 lt!718007) (+ (size!16353 (t!172798 lt!717972)) (size!16353 lt!717970))))))

(declare-fun b!1862723 () Bool)

(assert (=> b!1862723 (= e!1189363 lt!717970)))

(assert (= (and d!568441 c!303339) b!1862723))

(assert (= (and d!568441 (not c!303339)) b!1862724))

(assert (= (and d!568441 res!834118) b!1862725))

(assert (= (and b!1862725 res!834117) b!1862726))

(declare-fun m!2286489 () Bool)

(assert (=> b!1862724 m!2286489))

(declare-fun m!2286491 () Bool)

(assert (=> d!568441 m!2286491))

(assert (=> d!568441 m!2286407))

(assert (=> d!568441 m!2286189))

(declare-fun m!2286493 () Bool)

(assert (=> b!1862725 m!2286493))

(assert (=> b!1862725 m!2286485))

(assert (=> b!1862725 m!2286195))

(assert (=> b!1862509 d!568441))

(declare-fun d!568443 () Bool)

(assert (=> d!568443 (= (inv!27261 (xs!9730 (right!16964 t!4595))) (<= (size!16353 (innerList!6914 (xs!9730 (right!16964 t!4595)))) 2147483647))))

(declare-fun bs!411569 () Bool)

(assert (= bs!411569 d!568443))

(declare-fun m!2286495 () Bool)

(assert (=> bs!411569 m!2286495))

(assert (=> b!1862615 d!568443))

(declare-fun d!568445 () Bool)

(declare-fun lt!718008 () Int)

(assert (=> d!568445 (>= lt!718008 0)))

(declare-fun e!1189365 () Int)

(assert (=> d!568445 (= lt!718008 e!1189365)))

(declare-fun c!303340 () Bool)

(assert (=> d!568445 (= c!303340 ((_ is Nil!20659) (innerList!6914 (xs!9730 t!4595))))))

(assert (=> d!568445 (= (size!16353 (innerList!6914 (xs!9730 t!4595))) lt!718008)))

(declare-fun b!1862727 () Bool)

(assert (=> b!1862727 (= e!1189365 0)))

(declare-fun b!1862728 () Bool)

(assert (=> b!1862728 (= e!1189365 (+ 1 (size!16353 (t!172798 (innerList!6914 (xs!9730 t!4595))))))))

(assert (= (and d!568445 c!303340) b!1862727))

(assert (= (and d!568445 (not c!303340)) b!1862728))

(declare-fun m!2286497 () Bool)

(assert (=> b!1862728 m!2286497))

(assert (=> d!568319 d!568445))

(declare-fun d!568447 () Bool)

(assert (=> d!568447 (= (isEmpty!12865 (list!8424 t!4595)) ((_ is Nil!20659) (list!8424 t!4595)))))

(assert (=> d!568369 d!568447))

(declare-fun b!1862729 () Bool)

(declare-fun e!1189366 () List!20741)

(assert (=> b!1862729 (= e!1189366 Nil!20659)))

(declare-fun b!1862732 () Bool)

(declare-fun e!1189367 () List!20741)

(assert (=> b!1862732 (= e!1189367 (++!5582 (list!8424 (left!16634 t!4595)) (list!8424 (right!16964 t!4595))))))

(declare-fun d!568449 () Bool)

(declare-fun c!303341 () Bool)

(assert (=> d!568449 (= c!303341 ((_ is Empty!6854) t!4595))))

(assert (=> d!568449 (= (list!8424 t!4595) e!1189366)))

(declare-fun b!1862731 () Bool)

(assert (=> b!1862731 (= e!1189367 (list!8426 (xs!9730 t!4595)))))

(declare-fun b!1862730 () Bool)

(assert (=> b!1862730 (= e!1189366 e!1189367)))

(declare-fun c!303342 () Bool)

(assert (=> b!1862730 (= c!303342 ((_ is Leaf!10049) t!4595))))

(assert (= (and d!568449 c!303341) b!1862729))

(assert (= (and d!568449 (not c!303341)) b!1862730))

(assert (= (and b!1862730 c!303342) b!1862731))

(assert (= (and b!1862730 (not c!303342)) b!1862732))

(assert (=> b!1862732 m!2286137))

(assert (=> b!1862732 m!2286143))

(assert (=> b!1862732 m!2286137))

(assert (=> b!1862732 m!2286143))

(declare-fun m!2286499 () Bool)

(assert (=> b!1862732 m!2286499))

(assert (=> b!1862731 m!2286413))

(assert (=> d!568369 d!568449))

(declare-fun d!568451 () Bool)

(declare-fun lt!718011 () Int)

(assert (=> d!568451 (= lt!718011 (size!16353 (list!8424 t!4595)))))

(assert (=> d!568451 (= lt!718011 (ite ((_ is Empty!6854) t!4595) 0 (ite ((_ is Leaf!10049) t!4595) (csize!13939 t!4595) (csize!13938 t!4595))))))

(assert (=> d!568451 (= (size!16356 t!4595) lt!718011)))

(declare-fun bs!411570 () Bool)

(assert (= bs!411570 d!568451))

(assert (=> bs!411570 m!2286295))

(assert (=> bs!411570 m!2286295))

(declare-fun m!2286501 () Bool)

(assert (=> bs!411570 m!2286501))

(assert (=> d!568369 d!568451))

(declare-fun d!568453 () Bool)

(declare-fun c!303343 () Bool)

(assert (=> d!568453 (= c!303343 ((_ is Node!6854) (left!16634 (left!16634 t!4595))))))

(declare-fun e!1189368 () Bool)

(assert (=> d!568453 (= (inv!27262 (left!16634 (left!16634 t!4595))) e!1189368)))

(declare-fun b!1862733 () Bool)

(assert (=> b!1862733 (= e!1189368 (inv!27263 (left!16634 (left!16634 t!4595))))))

(declare-fun b!1862734 () Bool)

(declare-fun e!1189369 () Bool)

(assert (=> b!1862734 (= e!1189368 e!1189369)))

(declare-fun res!834119 () Bool)

(assert (=> b!1862734 (= res!834119 (not ((_ is Leaf!10049) (left!16634 (left!16634 t!4595)))))))

(assert (=> b!1862734 (=> res!834119 e!1189369)))

(declare-fun b!1862735 () Bool)

(assert (=> b!1862735 (= e!1189369 (inv!27264 (left!16634 (left!16634 t!4595))))))

(assert (= (and d!568453 c!303343) b!1862733))

(assert (= (and d!568453 (not c!303343)) b!1862734))

(assert (= (and b!1862734 (not res!834119)) b!1862735))

(declare-fun m!2286503 () Bool)

(assert (=> b!1862733 m!2286503))

(declare-fun m!2286505 () Bool)

(assert (=> b!1862735 m!2286505))

(assert (=> b!1862609 d!568453))

(declare-fun d!568455 () Bool)

(declare-fun c!303344 () Bool)

(assert (=> d!568455 (= c!303344 ((_ is Node!6854) (right!16964 (left!16634 t!4595))))))

(declare-fun e!1189370 () Bool)

(assert (=> d!568455 (= (inv!27262 (right!16964 (left!16634 t!4595))) e!1189370)))

(declare-fun b!1862736 () Bool)

(assert (=> b!1862736 (= e!1189370 (inv!27263 (right!16964 (left!16634 t!4595))))))

(declare-fun b!1862737 () Bool)

(declare-fun e!1189371 () Bool)

(assert (=> b!1862737 (= e!1189370 e!1189371)))

(declare-fun res!834120 () Bool)

(assert (=> b!1862737 (= res!834120 (not ((_ is Leaf!10049) (right!16964 (left!16634 t!4595)))))))

(assert (=> b!1862737 (=> res!834120 e!1189371)))

(declare-fun b!1862738 () Bool)

(assert (=> b!1862738 (= e!1189371 (inv!27264 (right!16964 (left!16634 t!4595))))))

(assert (= (and d!568455 c!303344) b!1862736))

(assert (= (and d!568455 (not c!303344)) b!1862737))

(assert (= (and b!1862737 (not res!834120)) b!1862738))

(declare-fun m!2286507 () Bool)

(assert (=> b!1862736 m!2286507))

(declare-fun m!2286509 () Bool)

(assert (=> b!1862738 m!2286509))

(assert (=> b!1862609 d!568455))

(declare-fun d!568457 () Bool)

(declare-fun c!303345 () Bool)

(assert (=> d!568457 (= c!303345 ((_ is Node!6854) (left!16634 (right!16964 t!4595))))))

(declare-fun e!1189372 () Bool)

(assert (=> d!568457 (= (inv!27262 (left!16634 (right!16964 t!4595))) e!1189372)))

(declare-fun b!1862739 () Bool)

(assert (=> b!1862739 (= e!1189372 (inv!27263 (left!16634 (right!16964 t!4595))))))

(declare-fun b!1862740 () Bool)

(declare-fun e!1189373 () Bool)

(assert (=> b!1862740 (= e!1189372 e!1189373)))

(declare-fun res!834121 () Bool)

(assert (=> b!1862740 (= res!834121 (not ((_ is Leaf!10049) (left!16634 (right!16964 t!4595)))))))

(assert (=> b!1862740 (=> res!834121 e!1189373)))

(declare-fun b!1862741 () Bool)

(assert (=> b!1862741 (= e!1189373 (inv!27264 (left!16634 (right!16964 t!4595))))))

(assert (= (and d!568457 c!303345) b!1862739))

(assert (= (and d!568457 (not c!303345)) b!1862740))

(assert (= (and b!1862740 (not res!834121)) b!1862741))

(declare-fun m!2286511 () Bool)

(assert (=> b!1862739 m!2286511))

(declare-fun m!2286513 () Bool)

(assert (=> b!1862741 m!2286513))

(assert (=> b!1862614 d!568457))

(declare-fun d!568459 () Bool)

(declare-fun c!303346 () Bool)

(assert (=> d!568459 (= c!303346 ((_ is Node!6854) (right!16964 (right!16964 t!4595))))))

(declare-fun e!1189374 () Bool)

(assert (=> d!568459 (= (inv!27262 (right!16964 (right!16964 t!4595))) e!1189374)))

(declare-fun b!1862742 () Bool)

(assert (=> b!1862742 (= e!1189374 (inv!27263 (right!16964 (right!16964 t!4595))))))

(declare-fun b!1862743 () Bool)

(declare-fun e!1189375 () Bool)

(assert (=> b!1862743 (= e!1189374 e!1189375)))

(declare-fun res!834122 () Bool)

(assert (=> b!1862743 (= res!834122 (not ((_ is Leaf!10049) (right!16964 (right!16964 t!4595)))))))

(assert (=> b!1862743 (=> res!834122 e!1189375)))

(declare-fun b!1862744 () Bool)

(assert (=> b!1862744 (= e!1189375 (inv!27264 (right!16964 (right!16964 t!4595))))))

(assert (= (and d!568459 c!303346) b!1862742))

(assert (= (and d!568459 (not c!303346)) b!1862743))

(assert (= (and b!1862743 (not res!834122)) b!1862744))

(declare-fun m!2286515 () Bool)

(assert (=> b!1862742 m!2286515))

(declare-fun m!2286517 () Bool)

(assert (=> b!1862744 m!2286517))

(assert (=> b!1862614 d!568459))

(declare-fun d!568461 () Bool)

(assert (=> d!568461 (= (isEmpty!12865 (list!8424 (left!16634 t!4595))) ((_ is Nil!20659) (list!8424 (left!16634 t!4595))))))

(assert (=> d!568367 d!568461))

(assert (=> d!568367 d!568351))

(declare-fun d!568463 () Bool)

(declare-fun lt!718012 () Int)

(assert (=> d!568463 (= lt!718012 (size!16353 (list!8424 (left!16634 t!4595))))))

(assert (=> d!568463 (= lt!718012 (ite ((_ is Empty!6854) (left!16634 t!4595)) 0 (ite ((_ is Leaf!10049) (left!16634 t!4595)) (csize!13939 (left!16634 t!4595)) (csize!13938 (left!16634 t!4595)))))))

(assert (=> d!568463 (= (size!16356 (left!16634 t!4595)) lt!718012)))

(declare-fun bs!411571 () Bool)

(assert (= bs!411571 d!568463))

(assert (=> bs!411571 m!2286137))

(assert (=> bs!411571 m!2286137))

(declare-fun m!2286519 () Bool)

(assert (=> bs!411571 m!2286519))

(assert (=> d!568367 d!568463))

(declare-fun d!568465 () Bool)

(declare-fun res!834123 () Bool)

(declare-fun e!1189376 () Bool)

(assert (=> d!568465 (=> (not res!834123) (not e!1189376))))

(assert (=> d!568465 (= res!834123 (<= (size!16353 (list!8426 (xs!9730 (right!16964 t!4595)))) 512))))

(assert (=> d!568465 (= (inv!27264 (right!16964 t!4595)) e!1189376)))

(declare-fun b!1862745 () Bool)

(declare-fun res!834124 () Bool)

(assert (=> b!1862745 (=> (not res!834124) (not e!1189376))))

(assert (=> b!1862745 (= res!834124 (= (csize!13939 (right!16964 t!4595)) (size!16353 (list!8426 (xs!9730 (right!16964 t!4595))))))))

(declare-fun b!1862746 () Bool)

(assert (=> b!1862746 (= e!1189376 (and (> (csize!13939 (right!16964 t!4595)) 0) (<= (csize!13939 (right!16964 t!4595)) 512)))))

(assert (= (and d!568465 res!834123) b!1862745))

(assert (= (and b!1862745 res!834124) b!1862746))

(assert (=> d!568465 m!2286221))

(assert (=> d!568465 m!2286221))

(declare-fun m!2286521 () Bool)

(assert (=> d!568465 m!2286521))

(assert (=> b!1862745 m!2286221))

(assert (=> b!1862745 m!2286221))

(assert (=> b!1862745 m!2286521))

(assert (=> b!1862475 d!568465))

(declare-fun b!1862747 () Bool)

(declare-fun e!1189377 () Bool)

(declare-fun tp!530705 () Bool)

(assert (=> b!1862747 (= e!1189377 (and tp_is_empty!8633 tp!530705))))

(assert (=> b!1862617 (= tp!530690 e!1189377)))

(assert (= (and b!1862617 ((_ is Cons!20659) (innerList!6914 (xs!9730 (right!16964 t!4595))))) b!1862747))

(declare-fun tp!530708 () Bool)

(declare-fun b!1862748 () Bool)

(declare-fun e!1189379 () Bool)

(declare-fun tp!530706 () Bool)

(assert (=> b!1862748 (= e!1189379 (and (inv!27262 (left!16634 (left!16634 (left!16634 t!4595)))) tp!530708 (inv!27262 (right!16964 (left!16634 (left!16634 t!4595)))) tp!530706))))

(declare-fun b!1862750 () Bool)

(declare-fun e!1189378 () Bool)

(declare-fun tp!530707 () Bool)

(assert (=> b!1862750 (= e!1189378 tp!530707)))

(declare-fun b!1862749 () Bool)

(assert (=> b!1862749 (= e!1189379 (and (inv!27261 (xs!9730 (left!16634 (left!16634 t!4595)))) e!1189378))))

(assert (=> b!1862609 (= tp!530686 (and (inv!27262 (left!16634 (left!16634 t!4595))) e!1189379))))

(assert (= (and b!1862609 ((_ is Node!6854) (left!16634 (left!16634 t!4595)))) b!1862748))

(assert (= b!1862749 b!1862750))

(assert (= (and b!1862609 ((_ is Leaf!10049) (left!16634 (left!16634 t!4595)))) b!1862749))

(declare-fun m!2286523 () Bool)

(assert (=> b!1862748 m!2286523))

(declare-fun m!2286525 () Bool)

(assert (=> b!1862748 m!2286525))

(declare-fun m!2286527 () Bool)

(assert (=> b!1862749 m!2286527))

(assert (=> b!1862609 m!2286319))

(declare-fun tp!530711 () Bool)

(declare-fun tp!530709 () Bool)

(declare-fun b!1862751 () Bool)

(declare-fun e!1189381 () Bool)

(assert (=> b!1862751 (= e!1189381 (and (inv!27262 (left!16634 (right!16964 (left!16634 t!4595)))) tp!530711 (inv!27262 (right!16964 (right!16964 (left!16634 t!4595)))) tp!530709))))

(declare-fun b!1862753 () Bool)

(declare-fun e!1189380 () Bool)

(declare-fun tp!530710 () Bool)

(assert (=> b!1862753 (= e!1189380 tp!530710)))

(declare-fun b!1862752 () Bool)

(assert (=> b!1862752 (= e!1189381 (and (inv!27261 (xs!9730 (right!16964 (left!16634 t!4595)))) e!1189380))))

(assert (=> b!1862609 (= tp!530684 (and (inv!27262 (right!16964 (left!16634 t!4595))) e!1189381))))

(assert (= (and b!1862609 ((_ is Node!6854) (right!16964 (left!16634 t!4595)))) b!1862751))

(assert (= b!1862752 b!1862753))

(assert (= (and b!1862609 ((_ is Leaf!10049) (right!16964 (left!16634 t!4595)))) b!1862752))

(declare-fun m!2286529 () Bool)

(assert (=> b!1862751 m!2286529))

(declare-fun m!2286531 () Bool)

(assert (=> b!1862751 m!2286531))

(declare-fun m!2286533 () Bool)

(assert (=> b!1862752 m!2286533))

(assert (=> b!1862609 m!2286321))

(declare-fun tp!530712 () Bool)

(declare-fun e!1189383 () Bool)

(declare-fun tp!530714 () Bool)

(declare-fun b!1862754 () Bool)

(assert (=> b!1862754 (= e!1189383 (and (inv!27262 (left!16634 (left!16634 (right!16964 t!4595)))) tp!530714 (inv!27262 (right!16964 (left!16634 (right!16964 t!4595)))) tp!530712))))

(declare-fun b!1862756 () Bool)

(declare-fun e!1189382 () Bool)

(declare-fun tp!530713 () Bool)

(assert (=> b!1862756 (= e!1189382 tp!530713)))

(declare-fun b!1862755 () Bool)

(assert (=> b!1862755 (= e!1189383 (and (inv!27261 (xs!9730 (left!16634 (right!16964 t!4595)))) e!1189382))))

(assert (=> b!1862614 (= tp!530691 (and (inv!27262 (left!16634 (right!16964 t!4595))) e!1189383))))

(assert (= (and b!1862614 ((_ is Node!6854) (left!16634 (right!16964 t!4595)))) b!1862754))

(assert (= b!1862755 b!1862756))

(assert (= (and b!1862614 ((_ is Leaf!10049) (left!16634 (right!16964 t!4595)))) b!1862755))

(declare-fun m!2286535 () Bool)

(assert (=> b!1862754 m!2286535))

(declare-fun m!2286537 () Bool)

(assert (=> b!1862754 m!2286537))

(declare-fun m!2286539 () Bool)

(assert (=> b!1862755 m!2286539))

(assert (=> b!1862614 m!2286325))

(declare-fun tp!530717 () Bool)

(declare-fun e!1189385 () Bool)

(declare-fun b!1862757 () Bool)

(declare-fun tp!530715 () Bool)

(assert (=> b!1862757 (= e!1189385 (and (inv!27262 (left!16634 (right!16964 (right!16964 t!4595)))) tp!530717 (inv!27262 (right!16964 (right!16964 (right!16964 t!4595)))) tp!530715))))

(declare-fun b!1862759 () Bool)

(declare-fun e!1189384 () Bool)

(declare-fun tp!530716 () Bool)

(assert (=> b!1862759 (= e!1189384 tp!530716)))

(declare-fun b!1862758 () Bool)

(assert (=> b!1862758 (= e!1189385 (and (inv!27261 (xs!9730 (right!16964 (right!16964 t!4595)))) e!1189384))))

(assert (=> b!1862614 (= tp!530689 (and (inv!27262 (right!16964 (right!16964 t!4595))) e!1189385))))

(assert (= (and b!1862614 ((_ is Node!6854) (right!16964 (right!16964 t!4595)))) b!1862757))

(assert (= b!1862758 b!1862759))

(assert (= (and b!1862614 ((_ is Leaf!10049) (right!16964 (right!16964 t!4595)))) b!1862758))

(declare-fun m!2286541 () Bool)

(assert (=> b!1862757 m!2286541))

(declare-fun m!2286543 () Bool)

(assert (=> b!1862757 m!2286543))

(declare-fun m!2286545 () Bool)

(assert (=> b!1862758 m!2286545))

(assert (=> b!1862614 m!2286327))

(declare-fun b!1862760 () Bool)

(declare-fun e!1189386 () Bool)

(declare-fun tp!530718 () Bool)

(assert (=> b!1862760 (= e!1189386 (and tp_is_empty!8633 tp!530718))))

(assert (=> b!1862589 (= tp!530677 e!1189386)))

(assert (= (and b!1862589 ((_ is Cons!20659) (t!172798 (innerList!6914 (xs!9730 t!4595))))) b!1862760))

(declare-fun b!1862761 () Bool)

(declare-fun e!1189387 () Bool)

(declare-fun tp!530719 () Bool)

(assert (=> b!1862761 (= e!1189387 (and tp_is_empty!8633 tp!530719))))

(assert (=> b!1862613 (= tp!530685 e!1189387)))

(assert (= (and b!1862613 ((_ is Cons!20659) (innerList!6914 (xs!9730 (left!16634 t!4595))))) b!1862761))

(check-sat (not b!1862711) (not b!1862744) (not d!568397) (not b!1862708) (not b!1862614) (not b!1862713) (not b!1862750) (not b!1862637) (not d!568415) (not d!568409) (not b!1862722) (not b!1862731) (not b!1862745) (not b!1862732) (not b!1862652) (not b!1862709) (not b!1862714) (not b!1862686) (not b!1862692) (not b!1862699) (not b!1862747) (not b!1862688) (not b!1862735) (not d!568391) (not b!1862694) (not b!1862758) (not b!1862685) (not b!1862739) (not b!1862736) (not b!1862717) (not b!1862733) (not b!1862724) (not b!1862705) (not b!1862695) (not b!1862656) (not b!1862738) tp_is_empty!8633 (not b!1862674) (not b!1862756) (not b!1862655) (not b!1862751) (not b!1862725) (not b!1862648) (not b!1862759) (not b!1862753) (not b!1862752) (not b!1862749) (not b!1862639) (not b!1862742) (not b!1862641) (not b!1862760) (not d!568381) (not d!568451) (not d!568463) (not d!568419) (not b!1862665) (not b!1862704) (not b!1862684) (not b!1862681) (not b!1862609) (not b!1862720) (not d!568433) (not d!568443) (not b!1862683) (not d!568431) (not b!1862672) (not b!1862697) (not b!1862690) (not d!568465) (not b!1862696) (not d!568441) (not b!1862754) (not b!1862700) (not b!1862761) (not b!1862653) (not b!1862693) (not b!1862643) (not b!1862676) (not b!1862644) (not b!1862687) (not d!568439) (not b!1862741) (not d!568405) (not d!568387) (not b!1862728) (not b!1862757) (not b!1862755) (not b!1862748) (not b!1862649))
(check-sat)
