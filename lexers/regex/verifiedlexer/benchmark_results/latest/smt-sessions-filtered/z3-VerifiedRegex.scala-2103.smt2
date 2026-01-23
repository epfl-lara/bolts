; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106324 () Bool)

(assert start!106324)

(declare-datatypes ((T!21656 0))(
  ( (T!21657 (val!3870 Int)) )
))
(declare-datatypes ((List!12049 0))(
  ( (Nil!12025) (Cons!12025 (h!17426 T!21656) (t!112349 List!12049)) )
))
(declare-datatypes ((IArray!7921 0))(
  ( (IArray!7922 (innerList!4018 List!12049)) )
))
(declare-datatypes ((Conc!3958 0))(
  ( (Node!3958 (left!10485 Conc!3958) (right!10815 Conc!3958) (csize!8146 Int) (cheight!4169 Int)) (Leaf!6062 (xs!6665 IArray!7921) (csize!8147 Int)) (Empty!3958) )
))
(declare-fun t!4115 () Conc!3958)

(declare-fun tp!340521 () Bool)

(declare-fun b!1195261 () Bool)

(declare-fun tp!340520 () Bool)

(declare-fun e!767820 () Bool)

(declare-fun inv!16024 (Conc!3958) Bool)

(assert (=> b!1195261 (= e!767820 (and (inv!16024 (left!10485 t!4115)) tp!340520 (inv!16024 (right!10815 t!4115)) tp!340521))))

(declare-fun b!1195262 () Bool)

(declare-fun res!539486 () Bool)

(declare-fun e!767817 () Bool)

(assert (=> b!1195262 (=> (not res!539486) (not e!767817))))

(declare-fun isBalanced!1143 (Conc!3958) Bool)

(assert (=> b!1195262 (= res!539486 (isBalanced!1143 t!4115))))

(declare-fun b!1195263 () Bool)

(declare-fun e!767818 () Bool)

(declare-fun tp!340519 () Bool)

(assert (=> b!1195263 (= e!767818 tp!340519)))

(declare-fun b!1195264 () Bool)

(declare-fun inv!16025 (IArray!7921) Bool)

(assert (=> b!1195264 (= e!767820 (and (inv!16025 (xs!6665 t!4115)) e!767818))))

(declare-fun b!1195265 () Bool)

(declare-fun res!539488 () Bool)

(assert (=> b!1195265 (=> (not res!539488) (not e!767817))))

(declare-fun until!31 () Int)

(declare-fun size!9533 (Conc!3958) Int)

(assert (=> b!1195265 (= res!539488 (<= until!31 (size!9533 t!4115)))))

(declare-fun b!1195267 () Bool)

(declare-fun res!539490 () Bool)

(assert (=> b!1195267 (=> (not res!539490) (not e!767817))))

(declare-fun from!553 () Int)

(assert (=> b!1195267 (= res!539490 (= from!553 until!31))))

(declare-fun e!767819 () Bool)

(declare-fun b!1195268 () Bool)

(declare-fun list!4455 (Conc!3958) List!12049)

(declare-fun slice!449 (List!12049 Int Int) List!12049)

(assert (=> b!1195268 (= e!767819 (not (= (list!4455 Empty!3958) (slice!449 (list!4455 t!4115) from!553 until!31))))))

(declare-fun b!1195266 () Bool)

(assert (=> b!1195266 (= e!767817 e!767819)))

(declare-fun res!539487 () Bool)

(assert (=> b!1195266 (=> res!539487 e!767819)))

(assert (=> b!1195266 (= res!539487 (not (isBalanced!1143 Empty!3958)))))

(declare-fun res!539489 () Bool)

(assert (=> start!106324 (=> (not res!539489) (not e!767817))))

(assert (=> start!106324 (= res!539489 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> start!106324 e!767817))

(assert (=> start!106324 true))

(assert (=> start!106324 (and (inv!16024 t!4115) e!767820)))

(assert (= (and start!106324 res!539489) b!1195265))

(assert (= (and b!1195265 res!539488) b!1195262))

(assert (= (and b!1195262 res!539486) b!1195267))

(assert (= (and b!1195267 res!539490) b!1195266))

(assert (= (and b!1195266 (not res!539487)) b!1195268))

(get-info :version)

(assert (= (and start!106324 ((_ is Node!3958) t!4115)) b!1195261))

(assert (= b!1195264 b!1195263))

(assert (= (and start!106324 ((_ is Leaf!6062) t!4115)) b!1195264))

(declare-fun m!1369783 () Bool)

(assert (=> start!106324 m!1369783))

(declare-fun m!1369785 () Bool)

(assert (=> b!1195265 m!1369785))

(declare-fun m!1369787 () Bool)

(assert (=> b!1195266 m!1369787))

(declare-fun m!1369789 () Bool)

(assert (=> b!1195261 m!1369789))

(declare-fun m!1369791 () Bool)

(assert (=> b!1195261 m!1369791))

(declare-fun m!1369793 () Bool)

(assert (=> b!1195268 m!1369793))

(declare-fun m!1369795 () Bool)

(assert (=> b!1195268 m!1369795))

(assert (=> b!1195268 m!1369795))

(declare-fun m!1369797 () Bool)

(assert (=> b!1195268 m!1369797))

(declare-fun m!1369799 () Bool)

(assert (=> b!1195264 m!1369799))

(declare-fun m!1369801 () Bool)

(assert (=> b!1195262 m!1369801))

(check-sat (not b!1195263) (not b!1195261) (not b!1195264) (not b!1195265) (not b!1195266) (not start!106324) (not b!1195262) (not b!1195268))
(check-sat)
(get-model)

(declare-fun d!341130 () Bool)

(declare-fun c!198683 () Bool)

(assert (=> d!341130 (= c!198683 ((_ is Node!3958) t!4115))))

(declare-fun e!767829 () Bool)

(assert (=> d!341130 (= (inv!16024 t!4115) e!767829)))

(declare-fun b!1195287 () Bool)

(declare-fun inv!16028 (Conc!3958) Bool)

(assert (=> b!1195287 (= e!767829 (inv!16028 t!4115))))

(declare-fun b!1195288 () Bool)

(declare-fun e!767830 () Bool)

(assert (=> b!1195288 (= e!767829 e!767830)))

(declare-fun res!539505 () Bool)

(assert (=> b!1195288 (= res!539505 (not ((_ is Leaf!6062) t!4115)))))

(assert (=> b!1195288 (=> res!539505 e!767830)))

(declare-fun b!1195289 () Bool)

(declare-fun inv!16029 (Conc!3958) Bool)

(assert (=> b!1195289 (= e!767830 (inv!16029 t!4115))))

(assert (= (and d!341130 c!198683) b!1195287))

(assert (= (and d!341130 (not c!198683)) b!1195288))

(assert (= (and b!1195288 (not res!539505)) b!1195289))

(declare-fun m!1369803 () Bool)

(assert (=> b!1195287 m!1369803))

(declare-fun m!1369805 () Bool)

(assert (=> b!1195289 m!1369805))

(assert (=> start!106324 d!341130))

(declare-fun b!1195339 () Bool)

(declare-fun e!767856 () Bool)

(declare-fun isEmpty!7237 (Conc!3958) Bool)

(assert (=> b!1195339 (= e!767856 (not (isEmpty!7237 (right!10815 t!4115))))))

(declare-fun b!1195340 () Bool)

(declare-fun res!539531 () Bool)

(assert (=> b!1195340 (=> (not res!539531) (not e!767856))))

(assert (=> b!1195340 (= res!539531 (not (isEmpty!7237 (left!10485 t!4115))))))

(declare-fun b!1195341 () Bool)

(declare-fun res!539532 () Bool)

(assert (=> b!1195341 (=> (not res!539532) (not e!767856))))

(declare-fun height!556 (Conc!3958) Int)

(assert (=> b!1195341 (= res!539532 (<= (- (height!556 (left!10485 t!4115)) (height!556 (right!10815 t!4115))) 1))))

(declare-fun b!1195342 () Bool)

(declare-fun res!539534 () Bool)

(assert (=> b!1195342 (=> (not res!539534) (not e!767856))))

(assert (=> b!1195342 (= res!539534 (isBalanced!1143 (left!10485 t!4115)))))

(declare-fun b!1195343 () Bool)

(declare-fun e!767855 () Bool)

(assert (=> b!1195343 (= e!767855 e!767856)))

(declare-fun res!539533 () Bool)

(assert (=> b!1195343 (=> (not res!539533) (not e!767856))))

(assert (=> b!1195343 (= res!539533 (<= (- 1) (- (height!556 (left!10485 t!4115)) (height!556 (right!10815 t!4115)))))))

(declare-fun d!341134 () Bool)

(declare-fun res!539529 () Bool)

(assert (=> d!341134 (=> res!539529 e!767855)))

(assert (=> d!341134 (= res!539529 (not ((_ is Node!3958) t!4115)))))

(assert (=> d!341134 (= (isBalanced!1143 t!4115) e!767855)))

(declare-fun b!1195344 () Bool)

(declare-fun res!539530 () Bool)

(assert (=> b!1195344 (=> (not res!539530) (not e!767856))))

(assert (=> b!1195344 (= res!539530 (isBalanced!1143 (right!10815 t!4115)))))

(assert (= (and d!341134 (not res!539529)) b!1195343))

(assert (= (and b!1195343 res!539533) b!1195341))

(assert (= (and b!1195341 res!539532) b!1195342))

(assert (= (and b!1195342 res!539534) b!1195344))

(assert (= (and b!1195344 res!539530) b!1195340))

(assert (= (and b!1195340 res!539531) b!1195339))

(declare-fun m!1369855 () Bool)

(assert (=> b!1195343 m!1369855))

(declare-fun m!1369857 () Bool)

(assert (=> b!1195343 m!1369857))

(assert (=> b!1195341 m!1369855))

(assert (=> b!1195341 m!1369857))

(declare-fun m!1369859 () Bool)

(assert (=> b!1195342 m!1369859))

(declare-fun m!1369861 () Bool)

(assert (=> b!1195340 m!1369861))

(declare-fun m!1369863 () Bool)

(assert (=> b!1195339 m!1369863))

(declare-fun m!1369865 () Bool)

(assert (=> b!1195344 m!1369865))

(assert (=> b!1195262 d!341134))

(declare-fun b!1195379 () Bool)

(declare-fun e!767874 () List!12049)

(declare-fun e!767875 () List!12049)

(assert (=> b!1195379 (= e!767874 e!767875)))

(declare-fun c!198702 () Bool)

(assert (=> b!1195379 (= c!198702 ((_ is Leaf!6062) Empty!3958))))

(declare-fun b!1195378 () Bool)

(assert (=> b!1195378 (= e!767874 Nil!12025)))

(declare-fun d!341154 () Bool)

(declare-fun c!198701 () Bool)

(assert (=> d!341154 (= c!198701 ((_ is Empty!3958) Empty!3958))))

(assert (=> d!341154 (= (list!4455 Empty!3958) e!767874)))

(declare-fun b!1195381 () Bool)

(declare-fun ++!3064 (List!12049 List!12049) List!12049)

(assert (=> b!1195381 (= e!767875 (++!3064 (list!4455 (left!10485 Empty!3958)) (list!4455 (right!10815 Empty!3958))))))

(declare-fun b!1195380 () Bool)

(declare-fun list!4457 (IArray!7921) List!12049)

(assert (=> b!1195380 (= e!767875 (list!4457 (xs!6665 Empty!3958)))))

(assert (= (and d!341154 c!198701) b!1195378))

(assert (= (and d!341154 (not c!198701)) b!1195379))

(assert (= (and b!1195379 c!198702) b!1195380))

(assert (= (and b!1195379 (not c!198702)) b!1195381))

(declare-fun m!1369891 () Bool)

(assert (=> b!1195381 m!1369891))

(declare-fun m!1369893 () Bool)

(assert (=> b!1195381 m!1369893))

(assert (=> b!1195381 m!1369891))

(assert (=> b!1195381 m!1369893))

(declare-fun m!1369895 () Bool)

(assert (=> b!1195381 m!1369895))

(declare-fun m!1369897 () Bool)

(assert (=> b!1195380 m!1369897))

(assert (=> b!1195268 d!341154))

(declare-fun d!341156 () Bool)

(declare-fun take!117 (List!12049 Int) List!12049)

(declare-fun drop!589 (List!12049 Int) List!12049)

(assert (=> d!341156 (= (slice!449 (list!4455 t!4115) from!553 until!31) (take!117 (drop!589 (list!4455 t!4115) from!553) (- until!31 from!553)))))

(declare-fun bs!288034 () Bool)

(assert (= bs!288034 d!341156))

(assert (=> bs!288034 m!1369795))

(declare-fun m!1369899 () Bool)

(assert (=> bs!288034 m!1369899))

(assert (=> bs!288034 m!1369899))

(declare-fun m!1369901 () Bool)

(assert (=> bs!288034 m!1369901))

(assert (=> b!1195268 d!341156))

(declare-fun b!1195383 () Bool)

(declare-fun e!767876 () List!12049)

(declare-fun e!767877 () List!12049)

(assert (=> b!1195383 (= e!767876 e!767877)))

(declare-fun c!198704 () Bool)

(assert (=> b!1195383 (= c!198704 ((_ is Leaf!6062) t!4115))))

(declare-fun b!1195382 () Bool)

(assert (=> b!1195382 (= e!767876 Nil!12025)))

(declare-fun d!341158 () Bool)

(declare-fun c!198703 () Bool)

(assert (=> d!341158 (= c!198703 ((_ is Empty!3958) t!4115))))

(assert (=> d!341158 (= (list!4455 t!4115) e!767876)))

(declare-fun b!1195385 () Bool)

(assert (=> b!1195385 (= e!767877 (++!3064 (list!4455 (left!10485 t!4115)) (list!4455 (right!10815 t!4115))))))

(declare-fun b!1195384 () Bool)

(assert (=> b!1195384 (= e!767877 (list!4457 (xs!6665 t!4115)))))

(assert (= (and d!341158 c!198703) b!1195382))

(assert (= (and d!341158 (not c!198703)) b!1195383))

(assert (= (and b!1195383 c!198704) b!1195384))

(assert (= (and b!1195383 (not c!198704)) b!1195385))

(declare-fun m!1369903 () Bool)

(assert (=> b!1195385 m!1369903))

(declare-fun m!1369905 () Bool)

(assert (=> b!1195385 m!1369905))

(assert (=> b!1195385 m!1369903))

(assert (=> b!1195385 m!1369905))

(declare-fun m!1369907 () Bool)

(assert (=> b!1195385 m!1369907))

(declare-fun m!1369909 () Bool)

(assert (=> b!1195384 m!1369909))

(assert (=> b!1195268 d!341158))

(declare-fun d!341160 () Bool)

(declare-fun size!9535 (List!12049) Int)

(assert (=> d!341160 (= (inv!16025 (xs!6665 t!4115)) (<= (size!9535 (innerList!4018 (xs!6665 t!4115))) 2147483647))))

(declare-fun bs!288035 () Bool)

(assert (= bs!288035 d!341160))

(declare-fun m!1369911 () Bool)

(assert (=> bs!288035 m!1369911))

(assert (=> b!1195264 d!341160))

(declare-fun d!341162 () Bool)

(declare-fun lt!410056 () Int)

(assert (=> d!341162 (= lt!410056 (size!9535 (list!4455 t!4115)))))

(assert (=> d!341162 (= lt!410056 (ite ((_ is Empty!3958) t!4115) 0 (ite ((_ is Leaf!6062) t!4115) (csize!8147 t!4115) (csize!8146 t!4115))))))

(assert (=> d!341162 (= (size!9533 t!4115) lt!410056)))

(declare-fun bs!288036 () Bool)

(assert (= bs!288036 d!341162))

(assert (=> bs!288036 m!1369795))

(assert (=> bs!288036 m!1369795))

(declare-fun m!1369913 () Bool)

(assert (=> bs!288036 m!1369913))

(assert (=> b!1195265 d!341162))

(declare-fun d!341164 () Bool)

(declare-fun c!198705 () Bool)

(assert (=> d!341164 (= c!198705 ((_ is Node!3958) (left!10485 t!4115)))))

(declare-fun e!767878 () Bool)

(assert (=> d!341164 (= (inv!16024 (left!10485 t!4115)) e!767878)))

(declare-fun b!1195386 () Bool)

(assert (=> b!1195386 (= e!767878 (inv!16028 (left!10485 t!4115)))))

(declare-fun b!1195387 () Bool)

(declare-fun e!767879 () Bool)

(assert (=> b!1195387 (= e!767878 e!767879)))

(declare-fun res!539541 () Bool)

(assert (=> b!1195387 (= res!539541 (not ((_ is Leaf!6062) (left!10485 t!4115))))))

(assert (=> b!1195387 (=> res!539541 e!767879)))

(declare-fun b!1195388 () Bool)

(assert (=> b!1195388 (= e!767879 (inv!16029 (left!10485 t!4115)))))

(assert (= (and d!341164 c!198705) b!1195386))

(assert (= (and d!341164 (not c!198705)) b!1195387))

(assert (= (and b!1195387 (not res!539541)) b!1195388))

(declare-fun m!1369915 () Bool)

(assert (=> b!1195386 m!1369915))

(declare-fun m!1369917 () Bool)

(assert (=> b!1195388 m!1369917))

(assert (=> b!1195261 d!341164))

(declare-fun d!341166 () Bool)

(declare-fun c!198706 () Bool)

(assert (=> d!341166 (= c!198706 ((_ is Node!3958) (right!10815 t!4115)))))

(declare-fun e!767880 () Bool)

(assert (=> d!341166 (= (inv!16024 (right!10815 t!4115)) e!767880)))

(declare-fun b!1195389 () Bool)

(assert (=> b!1195389 (= e!767880 (inv!16028 (right!10815 t!4115)))))

(declare-fun b!1195390 () Bool)

(declare-fun e!767881 () Bool)

(assert (=> b!1195390 (= e!767880 e!767881)))

(declare-fun res!539542 () Bool)

(assert (=> b!1195390 (= res!539542 (not ((_ is Leaf!6062) (right!10815 t!4115))))))

(assert (=> b!1195390 (=> res!539542 e!767881)))

(declare-fun b!1195391 () Bool)

(assert (=> b!1195391 (= e!767881 (inv!16029 (right!10815 t!4115)))))

(assert (= (and d!341166 c!198706) b!1195389))

(assert (= (and d!341166 (not c!198706)) b!1195390))

(assert (= (and b!1195390 (not res!539542)) b!1195391))

(declare-fun m!1369919 () Bool)

(assert (=> b!1195389 m!1369919))

(declare-fun m!1369921 () Bool)

(assert (=> b!1195391 m!1369921))

(assert (=> b!1195261 d!341166))

(declare-fun b!1195392 () Bool)

(declare-fun e!767883 () Bool)

(assert (=> b!1195392 (= e!767883 (not (isEmpty!7237 (right!10815 Empty!3958))))))

(declare-fun b!1195393 () Bool)

(declare-fun res!539545 () Bool)

(assert (=> b!1195393 (=> (not res!539545) (not e!767883))))

(assert (=> b!1195393 (= res!539545 (not (isEmpty!7237 (left!10485 Empty!3958))))))

(declare-fun b!1195394 () Bool)

(declare-fun res!539546 () Bool)

(assert (=> b!1195394 (=> (not res!539546) (not e!767883))))

(assert (=> b!1195394 (= res!539546 (<= (- (height!556 (left!10485 Empty!3958)) (height!556 (right!10815 Empty!3958))) 1))))

(declare-fun b!1195395 () Bool)

(declare-fun res!539548 () Bool)

(assert (=> b!1195395 (=> (not res!539548) (not e!767883))))

(assert (=> b!1195395 (= res!539548 (isBalanced!1143 (left!10485 Empty!3958)))))

(declare-fun b!1195396 () Bool)

(declare-fun e!767882 () Bool)

(assert (=> b!1195396 (= e!767882 e!767883)))

(declare-fun res!539547 () Bool)

(assert (=> b!1195396 (=> (not res!539547) (not e!767883))))

(assert (=> b!1195396 (= res!539547 (<= (- 1) (- (height!556 (left!10485 Empty!3958)) (height!556 (right!10815 Empty!3958)))))))

(declare-fun d!341168 () Bool)

(declare-fun res!539543 () Bool)

(assert (=> d!341168 (=> res!539543 e!767882)))

(assert (=> d!341168 (= res!539543 (not ((_ is Node!3958) Empty!3958)))))

(assert (=> d!341168 (= (isBalanced!1143 Empty!3958) e!767882)))

(declare-fun b!1195397 () Bool)

(declare-fun res!539544 () Bool)

(assert (=> b!1195397 (=> (not res!539544) (not e!767883))))

(assert (=> b!1195397 (= res!539544 (isBalanced!1143 (right!10815 Empty!3958)))))

(assert (= (and d!341168 (not res!539543)) b!1195396))

(assert (= (and b!1195396 res!539547) b!1195394))

(assert (= (and b!1195394 res!539546) b!1195395))

(assert (= (and b!1195395 res!539548) b!1195397))

(assert (= (and b!1195397 res!539544) b!1195393))

(assert (= (and b!1195393 res!539545) b!1195392))

(declare-fun m!1369923 () Bool)

(assert (=> b!1195396 m!1369923))

(declare-fun m!1369925 () Bool)

(assert (=> b!1195396 m!1369925))

(assert (=> b!1195394 m!1369923))

(assert (=> b!1195394 m!1369925))

(declare-fun m!1369927 () Bool)

(assert (=> b!1195395 m!1369927))

(declare-fun m!1369929 () Bool)

(assert (=> b!1195393 m!1369929))

(declare-fun m!1369931 () Bool)

(assert (=> b!1195392 m!1369931))

(declare-fun m!1369933 () Bool)

(assert (=> b!1195397 m!1369933))

(assert (=> b!1195266 d!341168))

(declare-fun b!1195402 () Bool)

(declare-fun e!767886 () Bool)

(declare-fun tp_is_empty!5951 () Bool)

(declare-fun tp!340539 () Bool)

(assert (=> b!1195402 (= e!767886 (and tp_is_empty!5951 tp!340539))))

(assert (=> b!1195263 (= tp!340519 e!767886)))

(assert (= (and b!1195263 ((_ is Cons!12025) (innerList!4018 (xs!6665 t!4115)))) b!1195402))

(declare-fun tp!340546 () Bool)

(declare-fun b!1195411 () Bool)

(declare-fun tp!340548 () Bool)

(declare-fun e!767892 () Bool)

(assert (=> b!1195411 (= e!767892 (and (inv!16024 (left!10485 (left!10485 t!4115))) tp!340548 (inv!16024 (right!10815 (left!10485 t!4115))) tp!340546))))

(declare-fun b!1195413 () Bool)

(declare-fun e!767891 () Bool)

(declare-fun tp!340547 () Bool)

(assert (=> b!1195413 (= e!767891 tp!340547)))

(declare-fun b!1195412 () Bool)

(assert (=> b!1195412 (= e!767892 (and (inv!16025 (xs!6665 (left!10485 t!4115))) e!767891))))

(assert (=> b!1195261 (= tp!340520 (and (inv!16024 (left!10485 t!4115)) e!767892))))

(assert (= (and b!1195261 ((_ is Node!3958) (left!10485 t!4115))) b!1195411))

(assert (= b!1195412 b!1195413))

(assert (= (and b!1195261 ((_ is Leaf!6062) (left!10485 t!4115))) b!1195412))

(declare-fun m!1369935 () Bool)

(assert (=> b!1195411 m!1369935))

(declare-fun m!1369937 () Bool)

(assert (=> b!1195411 m!1369937))

(declare-fun m!1369939 () Bool)

(assert (=> b!1195412 m!1369939))

(assert (=> b!1195261 m!1369789))

(declare-fun tp!340549 () Bool)

(declare-fun e!767894 () Bool)

(declare-fun tp!340551 () Bool)

(declare-fun b!1195414 () Bool)

(assert (=> b!1195414 (= e!767894 (and (inv!16024 (left!10485 (right!10815 t!4115))) tp!340551 (inv!16024 (right!10815 (right!10815 t!4115))) tp!340549))))

(declare-fun b!1195416 () Bool)

(declare-fun e!767893 () Bool)

(declare-fun tp!340550 () Bool)

(assert (=> b!1195416 (= e!767893 tp!340550)))

(declare-fun b!1195415 () Bool)

(assert (=> b!1195415 (= e!767894 (and (inv!16025 (xs!6665 (right!10815 t!4115))) e!767893))))

(assert (=> b!1195261 (= tp!340521 (and (inv!16024 (right!10815 t!4115)) e!767894))))

(assert (= (and b!1195261 ((_ is Node!3958) (right!10815 t!4115))) b!1195414))

(assert (= b!1195415 b!1195416))

(assert (= (and b!1195261 ((_ is Leaf!6062) (right!10815 t!4115))) b!1195415))

(declare-fun m!1369941 () Bool)

(assert (=> b!1195414 m!1369941))

(declare-fun m!1369943 () Bool)

(assert (=> b!1195414 m!1369943))

(declare-fun m!1369945 () Bool)

(assert (=> b!1195415 m!1369945))

(assert (=> b!1195261 m!1369791))

(check-sat (not b!1195388) (not b!1195415) (not b!1195395) (not b!1195344) (not b!1195411) (not b!1195381) (not b!1195414) (not d!341156) (not b!1195412) (not b!1195392) (not b!1195289) (not b!1195386) (not b!1195261) (not b!1195385) (not b!1195389) (not d!341160) (not d!341162) (not b!1195402) (not b!1195340) (not b!1195413) (not b!1195380) (not b!1195341) (not b!1195397) (not b!1195393) (not b!1195343) (not b!1195396) (not b!1195287) (not b!1195384) (not b!1195339) tp_is_empty!5951 (not b!1195342) (not b!1195394) (not b!1195416) (not b!1195391))
(check-sat)
(get-model)

(declare-fun d!341170 () Bool)

(assert (not d!341170))

(assert (=> b!1195395 d!341170))

(declare-fun b!1195417 () Bool)

(declare-fun e!767896 () Bool)

(assert (=> b!1195417 (= e!767896 (not (isEmpty!7237 (right!10815 (left!10485 t!4115)))))))

(declare-fun b!1195418 () Bool)

(declare-fun res!539551 () Bool)

(assert (=> b!1195418 (=> (not res!539551) (not e!767896))))

(assert (=> b!1195418 (= res!539551 (not (isEmpty!7237 (left!10485 (left!10485 t!4115)))))))

(declare-fun b!1195419 () Bool)

(declare-fun res!539552 () Bool)

(assert (=> b!1195419 (=> (not res!539552) (not e!767896))))

(assert (=> b!1195419 (= res!539552 (<= (- (height!556 (left!10485 (left!10485 t!4115))) (height!556 (right!10815 (left!10485 t!4115)))) 1))))

(declare-fun b!1195420 () Bool)

(declare-fun res!539554 () Bool)

(assert (=> b!1195420 (=> (not res!539554) (not e!767896))))

(assert (=> b!1195420 (= res!539554 (isBalanced!1143 (left!10485 (left!10485 t!4115))))))

(declare-fun b!1195421 () Bool)

(declare-fun e!767895 () Bool)

(assert (=> b!1195421 (= e!767895 e!767896)))

(declare-fun res!539553 () Bool)

(assert (=> b!1195421 (=> (not res!539553) (not e!767896))))

(assert (=> b!1195421 (= res!539553 (<= (- 1) (- (height!556 (left!10485 (left!10485 t!4115))) (height!556 (right!10815 (left!10485 t!4115))))))))

(declare-fun d!341172 () Bool)

(declare-fun res!539549 () Bool)

(assert (=> d!341172 (=> res!539549 e!767895)))

(assert (=> d!341172 (= res!539549 (not ((_ is Node!3958) (left!10485 t!4115))))))

(assert (=> d!341172 (= (isBalanced!1143 (left!10485 t!4115)) e!767895)))

(declare-fun b!1195422 () Bool)

(declare-fun res!539550 () Bool)

(assert (=> b!1195422 (=> (not res!539550) (not e!767896))))

(assert (=> b!1195422 (= res!539550 (isBalanced!1143 (right!10815 (left!10485 t!4115))))))

(assert (= (and d!341172 (not res!539549)) b!1195421))

(assert (= (and b!1195421 res!539553) b!1195419))

(assert (= (and b!1195419 res!539552) b!1195420))

(assert (= (and b!1195420 res!539554) b!1195422))

(assert (= (and b!1195422 res!539550) b!1195418))

(assert (= (and b!1195418 res!539551) b!1195417))

(declare-fun m!1369947 () Bool)

(assert (=> b!1195421 m!1369947))

(declare-fun m!1369949 () Bool)

(assert (=> b!1195421 m!1369949))

(assert (=> b!1195419 m!1369947))

(assert (=> b!1195419 m!1369949))

(declare-fun m!1369951 () Bool)

(assert (=> b!1195420 m!1369951))

(declare-fun m!1369953 () Bool)

(assert (=> b!1195418 m!1369953))

(declare-fun m!1369955 () Bool)

(assert (=> b!1195417 m!1369955))

(declare-fun m!1369957 () Bool)

(assert (=> b!1195422 m!1369957))

(assert (=> b!1195342 d!341172))

(declare-fun d!341174 () Bool)

(declare-fun res!539561 () Bool)

(declare-fun e!767899 () Bool)

(assert (=> d!341174 (=> (not res!539561) (not e!767899))))

(assert (=> d!341174 (= res!539561 (= (csize!8146 (right!10815 t!4115)) (+ (size!9533 (left!10485 (right!10815 t!4115))) (size!9533 (right!10815 (right!10815 t!4115))))))))

(assert (=> d!341174 (= (inv!16028 (right!10815 t!4115)) e!767899)))

(declare-fun b!1195429 () Bool)

(declare-fun res!539562 () Bool)

(assert (=> b!1195429 (=> (not res!539562) (not e!767899))))

(assert (=> b!1195429 (= res!539562 (and (not (= (left!10485 (right!10815 t!4115)) Empty!3958)) (not (= (right!10815 (right!10815 t!4115)) Empty!3958))))))

(declare-fun b!1195430 () Bool)

(declare-fun res!539563 () Bool)

(assert (=> b!1195430 (=> (not res!539563) (not e!767899))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1195430 (= res!539563 (= (cheight!4169 (right!10815 t!4115)) (+ (max!0 (height!556 (left!10485 (right!10815 t!4115))) (height!556 (right!10815 (right!10815 t!4115)))) 1)))))

(declare-fun b!1195431 () Bool)

(assert (=> b!1195431 (= e!767899 (<= 0 (cheight!4169 (right!10815 t!4115))))))

(assert (= (and d!341174 res!539561) b!1195429))

(assert (= (and b!1195429 res!539562) b!1195430))

(assert (= (and b!1195430 res!539563) b!1195431))

(declare-fun m!1369959 () Bool)

(assert (=> d!341174 m!1369959))

(declare-fun m!1369961 () Bool)

(assert (=> d!341174 m!1369961))

(declare-fun m!1369963 () Bool)

(assert (=> b!1195430 m!1369963))

(declare-fun m!1369965 () Bool)

(assert (=> b!1195430 m!1369965))

(assert (=> b!1195430 m!1369963))

(assert (=> b!1195430 m!1369965))

(declare-fun m!1369967 () Bool)

(assert (=> b!1195430 m!1369967))

(assert (=> b!1195389 d!341174))

(declare-fun d!341176 () Bool)

(assert (=> d!341176 (= (height!556 (left!10485 t!4115)) (ite ((_ is Empty!3958) (left!10485 t!4115)) 0 (ite ((_ is Leaf!6062) (left!10485 t!4115)) 1 (cheight!4169 (left!10485 t!4115)))))))

(assert (=> b!1195343 d!341176))

(declare-fun d!341178 () Bool)

(assert (=> d!341178 (= (height!556 (right!10815 t!4115)) (ite ((_ is Empty!3958) (right!10815 t!4115)) 0 (ite ((_ is Leaf!6062) (right!10815 t!4115)) 1 (cheight!4169 (right!10815 t!4115)))))))

(assert (=> b!1195343 d!341178))

(declare-fun d!341180 () Bool)

(assert (not d!341180))

(assert (=> b!1195396 d!341180))

(declare-fun d!341182 () Bool)

(assert (not d!341182))

(assert (=> b!1195396 d!341182))

(declare-fun d!341184 () Bool)

(assert (not d!341184))

(assert (=> b!1195397 d!341184))

(declare-fun b!1195432 () Bool)

(declare-fun e!767901 () Bool)

(assert (=> b!1195432 (= e!767901 (not (isEmpty!7237 (right!10815 (right!10815 t!4115)))))))

(declare-fun b!1195433 () Bool)

(declare-fun res!539566 () Bool)

(assert (=> b!1195433 (=> (not res!539566) (not e!767901))))

(assert (=> b!1195433 (= res!539566 (not (isEmpty!7237 (left!10485 (right!10815 t!4115)))))))

(declare-fun b!1195434 () Bool)

(declare-fun res!539567 () Bool)

(assert (=> b!1195434 (=> (not res!539567) (not e!767901))))

(assert (=> b!1195434 (= res!539567 (<= (- (height!556 (left!10485 (right!10815 t!4115))) (height!556 (right!10815 (right!10815 t!4115)))) 1))))

(declare-fun b!1195435 () Bool)

(declare-fun res!539569 () Bool)

(assert (=> b!1195435 (=> (not res!539569) (not e!767901))))

(assert (=> b!1195435 (= res!539569 (isBalanced!1143 (left!10485 (right!10815 t!4115))))))

(declare-fun b!1195436 () Bool)

(declare-fun e!767900 () Bool)

(assert (=> b!1195436 (= e!767900 e!767901)))

(declare-fun res!539568 () Bool)

(assert (=> b!1195436 (=> (not res!539568) (not e!767901))))

(assert (=> b!1195436 (= res!539568 (<= (- 1) (- (height!556 (left!10485 (right!10815 t!4115))) (height!556 (right!10815 (right!10815 t!4115))))))))

(declare-fun d!341186 () Bool)

(declare-fun res!539564 () Bool)

(assert (=> d!341186 (=> res!539564 e!767900)))

(assert (=> d!341186 (= res!539564 (not ((_ is Node!3958) (right!10815 t!4115))))))

(assert (=> d!341186 (= (isBalanced!1143 (right!10815 t!4115)) e!767900)))

(declare-fun b!1195437 () Bool)

(declare-fun res!539565 () Bool)

(assert (=> b!1195437 (=> (not res!539565) (not e!767901))))

(assert (=> b!1195437 (= res!539565 (isBalanced!1143 (right!10815 (right!10815 t!4115))))))

(assert (= (and d!341186 (not res!539564)) b!1195436))

(assert (= (and b!1195436 res!539568) b!1195434))

(assert (= (and b!1195434 res!539567) b!1195435))

(assert (= (and b!1195435 res!539569) b!1195437))

(assert (= (and b!1195437 res!539565) b!1195433))

(assert (= (and b!1195433 res!539566) b!1195432))

(assert (=> b!1195436 m!1369963))

(assert (=> b!1195436 m!1369965))

(assert (=> b!1195434 m!1369963))

(assert (=> b!1195434 m!1369965))

(declare-fun m!1369969 () Bool)

(assert (=> b!1195435 m!1369969))

(declare-fun m!1369971 () Bool)

(assert (=> b!1195433 m!1369971))

(declare-fun m!1369973 () Bool)

(assert (=> b!1195432 m!1369973))

(declare-fun m!1369975 () Bool)

(assert (=> b!1195437 m!1369975))

(assert (=> b!1195344 d!341186))

(declare-fun d!341188 () Bool)

(declare-fun res!539574 () Bool)

(declare-fun e!767904 () Bool)

(assert (=> d!341188 (=> (not res!539574) (not e!767904))))

(assert (=> d!341188 (= res!539574 (<= (size!9535 (list!4457 (xs!6665 (right!10815 t!4115)))) 512))))

(assert (=> d!341188 (= (inv!16029 (right!10815 t!4115)) e!767904)))

(declare-fun b!1195442 () Bool)

(declare-fun res!539575 () Bool)

(assert (=> b!1195442 (=> (not res!539575) (not e!767904))))

(assert (=> b!1195442 (= res!539575 (= (csize!8147 (right!10815 t!4115)) (size!9535 (list!4457 (xs!6665 (right!10815 t!4115))))))))

(declare-fun b!1195443 () Bool)

(assert (=> b!1195443 (= e!767904 (and (> (csize!8147 (right!10815 t!4115)) 0) (<= (csize!8147 (right!10815 t!4115)) 512)))))

(assert (= (and d!341188 res!539574) b!1195442))

(assert (= (and b!1195442 res!539575) b!1195443))

(declare-fun m!1369977 () Bool)

(assert (=> d!341188 m!1369977))

(assert (=> d!341188 m!1369977))

(declare-fun m!1369979 () Bool)

(assert (=> d!341188 m!1369979))

(assert (=> b!1195442 m!1369977))

(assert (=> b!1195442 m!1369977))

(assert (=> b!1195442 m!1369979))

(assert (=> b!1195391 d!341188))

(declare-fun d!341190 () Bool)

(assert (not d!341190))

(assert (=> b!1195393 d!341190))

(declare-fun d!341192 () Bool)

(assert (=> d!341192 (= (inv!16025 (xs!6665 (left!10485 t!4115))) (<= (size!9535 (innerList!4018 (xs!6665 (left!10485 t!4115)))) 2147483647))))

(declare-fun bs!288037 () Bool)

(assert (= bs!288037 d!341192))

(declare-fun m!1369981 () Bool)

(assert (=> bs!288037 m!1369981))

(assert (=> b!1195412 d!341192))

(declare-fun d!341194 () Bool)

(declare-fun lt!410059 () Bool)

(declare-fun isEmpty!7239 (List!12049) Bool)

(assert (=> d!341194 (= lt!410059 (isEmpty!7239 (list!4455 (left!10485 t!4115))))))

(assert (=> d!341194 (= lt!410059 (= (size!9533 (left!10485 t!4115)) 0))))

(assert (=> d!341194 (= (isEmpty!7237 (left!10485 t!4115)) lt!410059)))

(declare-fun bs!288038 () Bool)

(assert (= bs!288038 d!341194))

(assert (=> bs!288038 m!1369903))

(assert (=> bs!288038 m!1369903))

(declare-fun m!1369983 () Bool)

(assert (=> bs!288038 m!1369983))

(declare-fun m!1369985 () Bool)

(assert (=> bs!288038 m!1369985))

(assert (=> b!1195340 d!341194))

(assert (=> b!1195341 d!341176))

(assert (=> b!1195341 d!341178))

(assert (=> b!1195394 d!341180))

(assert (=> b!1195394 d!341182))

(declare-fun d!341196 () Bool)

(assert (=> d!341196 (= (list!4457 (xs!6665 t!4115)) (innerList!4018 (xs!6665 t!4115)))))

(assert (=> b!1195384 d!341196))

(declare-fun b!1195453 () Bool)

(declare-fun e!767910 () List!12049)

(assert (=> b!1195453 (= e!767910 (Cons!12025 (h!17426 (list!4455 (left!10485 t!4115))) (++!3064 (t!112349 (list!4455 (left!10485 t!4115))) (list!4455 (right!10815 t!4115)))))))

(declare-fun b!1195454 () Bool)

(declare-fun res!539581 () Bool)

(declare-fun e!767909 () Bool)

(assert (=> b!1195454 (=> (not res!539581) (not e!767909))))

(declare-fun lt!410065 () List!12049)

(assert (=> b!1195454 (= res!539581 (= (size!9535 lt!410065) (+ (size!9535 (list!4455 (left!10485 t!4115))) (size!9535 (list!4455 (right!10815 t!4115))))))))

(declare-fun d!341200 () Bool)

(assert (=> d!341200 e!767909))

(declare-fun res!539580 () Bool)

(assert (=> d!341200 (=> (not res!539580) (not e!767909))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1675 (List!12049) (InoxSet T!21656))

(assert (=> d!341200 (= res!539580 (= (content!1675 lt!410065) ((_ map or) (content!1675 (list!4455 (left!10485 t!4115))) (content!1675 (list!4455 (right!10815 t!4115))))))))

(assert (=> d!341200 (= lt!410065 e!767910)))

(declare-fun c!198709 () Bool)

(assert (=> d!341200 (= c!198709 ((_ is Nil!12025) (list!4455 (left!10485 t!4115))))))

(assert (=> d!341200 (= (++!3064 (list!4455 (left!10485 t!4115)) (list!4455 (right!10815 t!4115))) lt!410065)))

(declare-fun b!1195452 () Bool)

(assert (=> b!1195452 (= e!767910 (list!4455 (right!10815 t!4115)))))

(declare-fun b!1195455 () Bool)

(assert (=> b!1195455 (= e!767909 (or (not (= (list!4455 (right!10815 t!4115)) Nil!12025)) (= lt!410065 (list!4455 (left!10485 t!4115)))))))

(assert (= (and d!341200 c!198709) b!1195452))

(assert (= (and d!341200 (not c!198709)) b!1195453))

(assert (= (and d!341200 res!539580) b!1195454))

(assert (= (and b!1195454 res!539581) b!1195455))

(assert (=> b!1195453 m!1369905))

(declare-fun m!1369991 () Bool)

(assert (=> b!1195453 m!1369991))

(declare-fun m!1369993 () Bool)

(assert (=> b!1195454 m!1369993))

(assert (=> b!1195454 m!1369903))

(declare-fun m!1369995 () Bool)

(assert (=> b!1195454 m!1369995))

(assert (=> b!1195454 m!1369905))

(declare-fun m!1369997 () Bool)

(assert (=> b!1195454 m!1369997))

(declare-fun m!1369999 () Bool)

(assert (=> d!341200 m!1369999))

(assert (=> d!341200 m!1369903))

(declare-fun m!1370001 () Bool)

(assert (=> d!341200 m!1370001))

(assert (=> d!341200 m!1369905))

(declare-fun m!1370003 () Bool)

(assert (=> d!341200 m!1370003))

(assert (=> b!1195385 d!341200))

(declare-fun b!1195463 () Bool)

(declare-fun e!767913 () List!12049)

(declare-fun e!767914 () List!12049)

(assert (=> b!1195463 (= e!767913 e!767914)))

(declare-fun c!198711 () Bool)

(assert (=> b!1195463 (= c!198711 ((_ is Leaf!6062) (left!10485 t!4115)))))

(declare-fun b!1195462 () Bool)

(assert (=> b!1195462 (= e!767913 Nil!12025)))

(declare-fun d!341214 () Bool)

(declare-fun c!198710 () Bool)

(assert (=> d!341214 (= c!198710 ((_ is Empty!3958) (left!10485 t!4115)))))

(assert (=> d!341214 (= (list!4455 (left!10485 t!4115)) e!767913)))

(declare-fun b!1195465 () Bool)

(assert (=> b!1195465 (= e!767914 (++!3064 (list!4455 (left!10485 (left!10485 t!4115))) (list!4455 (right!10815 (left!10485 t!4115)))))))

(declare-fun b!1195464 () Bool)

(assert (=> b!1195464 (= e!767914 (list!4457 (xs!6665 (left!10485 t!4115))))))

(assert (= (and d!341214 c!198710) b!1195462))

(assert (= (and d!341214 (not c!198710)) b!1195463))

(assert (= (and b!1195463 c!198711) b!1195464))

(assert (= (and b!1195463 (not c!198711)) b!1195465))

(declare-fun m!1370005 () Bool)

(assert (=> b!1195465 m!1370005))

(declare-fun m!1370007 () Bool)

(assert (=> b!1195465 m!1370007))

(assert (=> b!1195465 m!1370005))

(assert (=> b!1195465 m!1370007))

(declare-fun m!1370009 () Bool)

(assert (=> b!1195465 m!1370009))

(declare-fun m!1370013 () Bool)

(assert (=> b!1195464 m!1370013))

(assert (=> b!1195385 d!341214))

(declare-fun b!1195467 () Bool)

(declare-fun e!767915 () List!12049)

(declare-fun e!767916 () List!12049)

(assert (=> b!1195467 (= e!767915 e!767916)))

(declare-fun c!198713 () Bool)

(assert (=> b!1195467 (= c!198713 ((_ is Leaf!6062) (right!10815 t!4115)))))

(declare-fun b!1195466 () Bool)

(assert (=> b!1195466 (= e!767915 Nil!12025)))

(declare-fun d!341216 () Bool)

(declare-fun c!198712 () Bool)

(assert (=> d!341216 (= c!198712 ((_ is Empty!3958) (right!10815 t!4115)))))

(assert (=> d!341216 (= (list!4455 (right!10815 t!4115)) e!767915)))

(declare-fun b!1195469 () Bool)

(assert (=> b!1195469 (= e!767916 (++!3064 (list!4455 (left!10485 (right!10815 t!4115))) (list!4455 (right!10815 (right!10815 t!4115)))))))

(declare-fun b!1195468 () Bool)

(assert (=> b!1195468 (= e!767916 (list!4457 (xs!6665 (right!10815 t!4115))))))

(assert (= (and d!341216 c!198712) b!1195466))

(assert (= (and d!341216 (not c!198712)) b!1195467))

(assert (= (and b!1195467 c!198713) b!1195468))

(assert (= (and b!1195467 (not c!198713)) b!1195469))

(declare-fun m!1370025 () Bool)

(assert (=> b!1195469 m!1370025))

(declare-fun m!1370027 () Bool)

(assert (=> b!1195469 m!1370027))

(assert (=> b!1195469 m!1370025))

(assert (=> b!1195469 m!1370027))

(declare-fun m!1370029 () Bool)

(assert (=> b!1195469 m!1370029))

(assert (=> b!1195468 m!1369977))

(assert (=> b!1195385 d!341216))

(declare-fun d!341220 () Bool)

(declare-fun e!767929 () Bool)

(assert (=> d!341220 e!767929))

(declare-fun res!539599 () Bool)

(assert (=> d!341220 (=> (not res!539599) (not e!767929))))

(declare-fun lt!410068 () List!12049)

(assert (=> d!341220 (= res!539599 (= ((_ map implies) (content!1675 lt!410068) (content!1675 (drop!589 (list!4455 t!4115) from!553))) ((as const (InoxSet T!21656)) true)))))

(declare-fun e!767931 () List!12049)

(assert (=> d!341220 (= lt!410068 e!767931)))

(declare-fun c!198720 () Bool)

(assert (=> d!341220 (= c!198720 (or ((_ is Nil!12025) (drop!589 (list!4455 t!4115) from!553)) (<= (- until!31 from!553) 0)))))

(assert (=> d!341220 (= (take!117 (drop!589 (list!4455 t!4115) from!553) (- until!31 from!553)) lt!410068)))

(declare-fun b!1195493 () Bool)

(assert (=> b!1195493 (= e!767931 (Cons!12025 (h!17426 (drop!589 (list!4455 t!4115) from!553)) (take!117 (t!112349 (drop!589 (list!4455 t!4115) from!553)) (- (- until!31 from!553) 1))))))

(declare-fun b!1195494 () Bool)

(declare-fun e!767928 () Int)

(assert (=> b!1195494 (= e!767928 (- until!31 from!553))))

(declare-fun b!1195495 () Bool)

(declare-fun e!767930 () Int)

(assert (=> b!1195495 (= e!767930 0)))

(declare-fun b!1195496 () Bool)

(assert (=> b!1195496 (= e!767931 Nil!12025)))

(declare-fun b!1195497 () Bool)

(assert (=> b!1195497 (= e!767930 e!767928)))

(declare-fun c!198722 () Bool)

(assert (=> b!1195497 (= c!198722 (>= (- until!31 from!553) (size!9535 (drop!589 (list!4455 t!4115) from!553))))))

(declare-fun b!1195498 () Bool)

(assert (=> b!1195498 (= e!767928 (size!9535 (drop!589 (list!4455 t!4115) from!553)))))

(declare-fun b!1195499 () Bool)

(assert (=> b!1195499 (= e!767929 (= (size!9535 lt!410068) e!767930))))

(declare-fun c!198721 () Bool)

(assert (=> b!1195499 (= c!198721 (<= (- until!31 from!553) 0))))

(assert (= (and d!341220 c!198720) b!1195496))

(assert (= (and d!341220 (not c!198720)) b!1195493))

(assert (= (and d!341220 res!539599) b!1195499))

(assert (= (and b!1195499 c!198721) b!1195495))

(assert (= (and b!1195499 (not c!198721)) b!1195497))

(assert (= (and b!1195497 c!198722) b!1195498))

(assert (= (and b!1195497 (not c!198722)) b!1195494))

(assert (=> b!1195498 m!1369899))

(declare-fun m!1370041 () Bool)

(assert (=> b!1195498 m!1370041))

(declare-fun m!1370043 () Bool)

(assert (=> b!1195493 m!1370043))

(declare-fun m!1370045 () Bool)

(assert (=> d!341220 m!1370045))

(assert (=> d!341220 m!1369899))

(declare-fun m!1370047 () Bool)

(assert (=> d!341220 m!1370047))

(declare-fun m!1370049 () Bool)

(assert (=> b!1195499 m!1370049))

(assert (=> b!1195497 m!1369899))

(assert (=> b!1195497 m!1370041))

(assert (=> d!341156 d!341220))

(declare-fun bm!83226 () Bool)

(declare-fun call!83231 () Int)

(assert (=> bm!83226 (= call!83231 (size!9535 (list!4455 t!4115)))))

(declare-fun b!1195532 () Bool)

(declare-fun e!767950 () Int)

(assert (=> b!1195532 (= e!767950 0)))

(declare-fun b!1195533 () Bool)

(declare-fun e!767954 () Int)

(assert (=> b!1195533 (= e!767954 e!767950)))

(declare-fun c!198736 () Bool)

(assert (=> b!1195533 (= c!198736 (>= from!553 call!83231))))

(declare-fun b!1195534 () Bool)

(declare-fun e!767953 () List!12049)

(assert (=> b!1195534 (= e!767953 (list!4455 t!4115))))

(declare-fun b!1195535 () Bool)

(assert (=> b!1195535 (= e!767950 (- call!83231 from!553))))

(declare-fun b!1195536 () Bool)

(declare-fun e!767952 () List!12049)

(assert (=> b!1195536 (= e!767952 e!767953)))

(declare-fun c!198734 () Bool)

(assert (=> b!1195536 (= c!198734 (<= from!553 0))))

(declare-fun b!1195537 () Bool)

(declare-fun e!767951 () Bool)

(declare-fun lt!410072 () List!12049)

(assert (=> b!1195537 (= e!767951 (= (size!9535 lt!410072) e!767954))))

(declare-fun c!198733 () Bool)

(assert (=> b!1195537 (= c!198733 (<= from!553 0))))

(declare-fun d!341226 () Bool)

(assert (=> d!341226 e!767951))

(declare-fun res!539612 () Bool)

(assert (=> d!341226 (=> (not res!539612) (not e!767951))))

(assert (=> d!341226 (= res!539612 (= ((_ map implies) (content!1675 lt!410072) (content!1675 (list!4455 t!4115))) ((as const (InoxSet T!21656)) true)))))

(assert (=> d!341226 (= lt!410072 e!767952)))

(declare-fun c!198735 () Bool)

(assert (=> d!341226 (= c!198735 ((_ is Nil!12025) (list!4455 t!4115)))))

(assert (=> d!341226 (= (drop!589 (list!4455 t!4115) from!553) lt!410072)))

(declare-fun b!1195538 () Bool)

(assert (=> b!1195538 (= e!767953 (drop!589 (t!112349 (list!4455 t!4115)) (- from!553 1)))))

(declare-fun b!1195539 () Bool)

(assert (=> b!1195539 (= e!767954 call!83231)))

(declare-fun b!1195540 () Bool)

(assert (=> b!1195540 (= e!767952 Nil!12025)))

(assert (= (and d!341226 c!198735) b!1195540))

(assert (= (and d!341226 (not c!198735)) b!1195536))

(assert (= (and b!1195536 c!198734) b!1195534))

(assert (= (and b!1195536 (not c!198734)) b!1195538))

(assert (= (and d!341226 res!539612) b!1195537))

(assert (= (and b!1195537 c!198733) b!1195539))

(assert (= (and b!1195537 (not c!198733)) b!1195533))

(assert (= (and b!1195533 c!198736) b!1195532))

(assert (= (and b!1195533 (not c!198736)) b!1195535))

(assert (= (or b!1195539 b!1195533 b!1195535) bm!83226))

(assert (=> bm!83226 m!1369795))

(assert (=> bm!83226 m!1369913))

(declare-fun m!1370067 () Bool)

(assert (=> b!1195537 m!1370067))

(declare-fun m!1370069 () Bool)

(assert (=> d!341226 m!1370069))

(assert (=> d!341226 m!1369795))

(declare-fun m!1370071 () Bool)

(assert (=> d!341226 m!1370071))

(declare-fun m!1370073 () Bool)

(assert (=> b!1195538 m!1370073))

(assert (=> d!341156 d!341226))

(declare-fun d!341248 () Bool)

(declare-fun lt!410073 () Bool)

(assert (=> d!341248 (= lt!410073 (isEmpty!7239 (list!4455 (right!10815 t!4115))))))

(assert (=> d!341248 (= lt!410073 (= (size!9533 (right!10815 t!4115)) 0))))

(assert (=> d!341248 (= (isEmpty!7237 (right!10815 t!4115)) lt!410073)))

(declare-fun bs!288042 () Bool)

(assert (= bs!288042 d!341248))

(assert (=> bs!288042 m!1369905))

(assert (=> bs!288042 m!1369905))

(declare-fun m!1370075 () Bool)

(assert (=> bs!288042 m!1370075))

(declare-fun m!1370077 () Bool)

(assert (=> bs!288042 m!1370077))

(assert (=> b!1195339 d!341248))

(declare-fun d!341250 () Bool)

(assert (not d!341250))

(assert (=> b!1195392 d!341250))

(declare-fun d!341252 () Bool)

(declare-fun c!198737 () Bool)

(assert (=> d!341252 (= c!198737 ((_ is Node!3958) (left!10485 (left!10485 t!4115))))))

(declare-fun e!767955 () Bool)

(assert (=> d!341252 (= (inv!16024 (left!10485 (left!10485 t!4115))) e!767955)))

(declare-fun b!1195541 () Bool)

(assert (=> b!1195541 (= e!767955 (inv!16028 (left!10485 (left!10485 t!4115))))))

(declare-fun b!1195542 () Bool)

(declare-fun e!767956 () Bool)

(assert (=> b!1195542 (= e!767955 e!767956)))

(declare-fun res!539613 () Bool)

(assert (=> b!1195542 (= res!539613 (not ((_ is Leaf!6062) (left!10485 (left!10485 t!4115)))))))

(assert (=> b!1195542 (=> res!539613 e!767956)))

(declare-fun b!1195543 () Bool)

(assert (=> b!1195543 (= e!767956 (inv!16029 (left!10485 (left!10485 t!4115))))))

(assert (= (and d!341252 c!198737) b!1195541))

(assert (= (and d!341252 (not c!198737)) b!1195542))

(assert (= (and b!1195542 (not res!539613)) b!1195543))

(declare-fun m!1370079 () Bool)

(assert (=> b!1195541 m!1370079))

(declare-fun m!1370081 () Bool)

(assert (=> b!1195543 m!1370081))

(assert (=> b!1195411 d!341252))

(declare-fun d!341254 () Bool)

(declare-fun c!198738 () Bool)

(assert (=> d!341254 (= c!198738 ((_ is Node!3958) (right!10815 (left!10485 t!4115))))))

(declare-fun e!767957 () Bool)

(assert (=> d!341254 (= (inv!16024 (right!10815 (left!10485 t!4115))) e!767957)))

(declare-fun b!1195544 () Bool)

(assert (=> b!1195544 (= e!767957 (inv!16028 (right!10815 (left!10485 t!4115))))))

(declare-fun b!1195545 () Bool)

(declare-fun e!767958 () Bool)

(assert (=> b!1195545 (= e!767957 e!767958)))

(declare-fun res!539614 () Bool)

(assert (=> b!1195545 (= res!539614 (not ((_ is Leaf!6062) (right!10815 (left!10485 t!4115)))))))

(assert (=> b!1195545 (=> res!539614 e!767958)))

(declare-fun b!1195546 () Bool)

(assert (=> b!1195546 (= e!767958 (inv!16029 (right!10815 (left!10485 t!4115))))))

(assert (= (and d!341254 c!198738) b!1195544))

(assert (= (and d!341254 (not c!198738)) b!1195545))

(assert (= (and b!1195545 (not res!539614)) b!1195546))

(declare-fun m!1370083 () Bool)

(assert (=> b!1195544 m!1370083))

(declare-fun m!1370085 () Bool)

(assert (=> b!1195546 m!1370085))

(assert (=> b!1195411 d!341254))

(declare-fun d!341256 () Bool)

(declare-fun lt!410078 () Int)

(assert (=> d!341256 (>= lt!410078 0)))

(declare-fun e!767965 () Int)

(assert (=> d!341256 (= lt!410078 e!767965)))

(declare-fun c!198743 () Bool)

(assert (=> d!341256 (= c!198743 ((_ is Nil!12025) (list!4455 t!4115)))))

(assert (=> d!341256 (= (size!9535 (list!4455 t!4115)) lt!410078)))

(declare-fun b!1195559 () Bool)

(assert (=> b!1195559 (= e!767965 0)))

(declare-fun b!1195560 () Bool)

(assert (=> b!1195560 (= e!767965 (+ 1 (size!9535 (t!112349 (list!4455 t!4115)))))))

(assert (= (and d!341256 c!198743) b!1195559))

(assert (= (and d!341256 (not c!198743)) b!1195560))

(declare-fun m!1370087 () Bool)

(assert (=> b!1195560 m!1370087))

(assert (=> d!341162 d!341256))

(assert (=> d!341162 d!341158))

(declare-fun d!341258 () Bool)

(declare-fun res!539619 () Bool)

(declare-fun e!767966 () Bool)

(assert (=> d!341258 (=> (not res!539619) (not e!767966))))

(assert (=> d!341258 (= res!539619 (<= (size!9535 (list!4457 (xs!6665 (left!10485 t!4115)))) 512))))

(assert (=> d!341258 (= (inv!16029 (left!10485 t!4115)) e!767966)))

(declare-fun b!1195561 () Bool)

(declare-fun res!539620 () Bool)

(assert (=> b!1195561 (=> (not res!539620) (not e!767966))))

(assert (=> b!1195561 (= res!539620 (= (csize!8147 (left!10485 t!4115)) (size!9535 (list!4457 (xs!6665 (left!10485 t!4115))))))))

(declare-fun b!1195562 () Bool)

(assert (=> b!1195562 (= e!767966 (and (> (csize!8147 (left!10485 t!4115)) 0) (<= (csize!8147 (left!10485 t!4115)) 512)))))

(assert (= (and d!341258 res!539619) b!1195561))

(assert (= (and b!1195561 res!539620) b!1195562))

(assert (=> d!341258 m!1370013))

(assert (=> d!341258 m!1370013))

(declare-fun m!1370089 () Bool)

(assert (=> d!341258 m!1370089))

(assert (=> b!1195561 m!1370013))

(assert (=> b!1195561 m!1370013))

(assert (=> b!1195561 m!1370089))

(assert (=> b!1195388 d!341258))

(declare-fun d!341260 () Bool)

(declare-fun c!198744 () Bool)

(assert (=> d!341260 (= c!198744 ((_ is Node!3958) (left!10485 (right!10815 t!4115))))))

(declare-fun e!767967 () Bool)

(assert (=> d!341260 (= (inv!16024 (left!10485 (right!10815 t!4115))) e!767967)))

(declare-fun b!1195563 () Bool)

(assert (=> b!1195563 (= e!767967 (inv!16028 (left!10485 (right!10815 t!4115))))))

(declare-fun b!1195564 () Bool)

(declare-fun e!767968 () Bool)

(assert (=> b!1195564 (= e!767967 e!767968)))

(declare-fun res!539621 () Bool)

(assert (=> b!1195564 (= res!539621 (not ((_ is Leaf!6062) (left!10485 (right!10815 t!4115)))))))

(assert (=> b!1195564 (=> res!539621 e!767968)))

(declare-fun b!1195565 () Bool)

(assert (=> b!1195565 (= e!767968 (inv!16029 (left!10485 (right!10815 t!4115))))))

(assert (= (and d!341260 c!198744) b!1195563))

(assert (= (and d!341260 (not c!198744)) b!1195564))

(assert (= (and b!1195564 (not res!539621)) b!1195565))

(declare-fun m!1370091 () Bool)

(assert (=> b!1195563 m!1370091))

(declare-fun m!1370093 () Bool)

(assert (=> b!1195565 m!1370093))

(assert (=> b!1195414 d!341260))

(declare-fun d!341262 () Bool)

(declare-fun c!198745 () Bool)

(assert (=> d!341262 (= c!198745 ((_ is Node!3958) (right!10815 (right!10815 t!4115))))))

(declare-fun e!767969 () Bool)

(assert (=> d!341262 (= (inv!16024 (right!10815 (right!10815 t!4115))) e!767969)))

(declare-fun b!1195566 () Bool)

(assert (=> b!1195566 (= e!767969 (inv!16028 (right!10815 (right!10815 t!4115))))))

(declare-fun b!1195567 () Bool)

(declare-fun e!767970 () Bool)

(assert (=> b!1195567 (= e!767969 e!767970)))

(declare-fun res!539622 () Bool)

(assert (=> b!1195567 (= res!539622 (not ((_ is Leaf!6062) (right!10815 (right!10815 t!4115)))))))

(assert (=> b!1195567 (=> res!539622 e!767970)))

(declare-fun b!1195568 () Bool)

(assert (=> b!1195568 (= e!767970 (inv!16029 (right!10815 (right!10815 t!4115))))))

(assert (= (and d!341262 c!198745) b!1195566))

(assert (= (and d!341262 (not c!198745)) b!1195567))

(assert (= (and b!1195567 (not res!539622)) b!1195568))

(declare-fun m!1370095 () Bool)

(assert (=> b!1195566 m!1370095))

(declare-fun m!1370097 () Bool)

(assert (=> b!1195568 m!1370097))

(assert (=> b!1195414 d!341262))

(declare-fun d!341264 () Bool)

(declare-fun res!539623 () Bool)

(declare-fun e!767971 () Bool)

(assert (=> d!341264 (=> (not res!539623) (not e!767971))))

(assert (=> d!341264 (= res!539623 (<= (size!9535 (list!4457 (xs!6665 t!4115))) 512))))

(assert (=> d!341264 (= (inv!16029 t!4115) e!767971)))

(declare-fun b!1195569 () Bool)

(declare-fun res!539624 () Bool)

(assert (=> b!1195569 (=> (not res!539624) (not e!767971))))

(assert (=> b!1195569 (= res!539624 (= (csize!8147 t!4115) (size!9535 (list!4457 (xs!6665 t!4115)))))))

(declare-fun b!1195570 () Bool)

(assert (=> b!1195570 (= e!767971 (and (> (csize!8147 t!4115) 0) (<= (csize!8147 t!4115) 512)))))

(assert (= (and d!341264 res!539623) b!1195569))

(assert (= (and b!1195569 res!539624) b!1195570))

(assert (=> d!341264 m!1369909))

(assert (=> d!341264 m!1369909))

(declare-fun m!1370099 () Bool)

(assert (=> d!341264 m!1370099))

(assert (=> b!1195569 m!1369909))

(assert (=> b!1195569 m!1369909))

(assert (=> b!1195569 m!1370099))

(assert (=> b!1195289 d!341264))

(declare-fun d!341266 () Bool)

(assert (=> d!341266 (= (inv!16025 (xs!6665 (right!10815 t!4115))) (<= (size!9535 (innerList!4018 (xs!6665 (right!10815 t!4115)))) 2147483647))))

(declare-fun bs!288043 () Bool)

(assert (= bs!288043 d!341266))

(declare-fun m!1370101 () Bool)

(assert (=> bs!288043 m!1370101))

(assert (=> b!1195415 d!341266))

(declare-fun d!341268 () Bool)

(declare-fun res!539627 () Bool)

(declare-fun e!767974 () Bool)

(assert (=> d!341268 (=> (not res!539627) (not e!767974))))

(assert (=> d!341268 (= res!539627 (= (csize!8146 (left!10485 t!4115)) (+ (size!9533 (left!10485 (left!10485 t!4115))) (size!9533 (right!10815 (left!10485 t!4115))))))))

(assert (=> d!341268 (= (inv!16028 (left!10485 t!4115)) e!767974)))

(declare-fun b!1195575 () Bool)

(declare-fun res!539628 () Bool)

(assert (=> b!1195575 (=> (not res!539628) (not e!767974))))

(assert (=> b!1195575 (= res!539628 (and (not (= (left!10485 (left!10485 t!4115)) Empty!3958)) (not (= (right!10815 (left!10485 t!4115)) Empty!3958))))))

(declare-fun b!1195576 () Bool)

(declare-fun res!539629 () Bool)

(assert (=> b!1195576 (=> (not res!539629) (not e!767974))))

(assert (=> b!1195576 (= res!539629 (= (cheight!4169 (left!10485 t!4115)) (+ (max!0 (height!556 (left!10485 (left!10485 t!4115))) (height!556 (right!10815 (left!10485 t!4115)))) 1)))))

(declare-fun b!1195577 () Bool)

(assert (=> b!1195577 (= e!767974 (<= 0 (cheight!4169 (left!10485 t!4115))))))

(assert (= (and d!341268 res!539627) b!1195575))

(assert (= (and b!1195575 res!539628) b!1195576))

(assert (= (and b!1195576 res!539629) b!1195577))

(declare-fun m!1370117 () Bool)

(assert (=> d!341268 m!1370117))

(declare-fun m!1370119 () Bool)

(assert (=> d!341268 m!1370119))

(assert (=> b!1195576 m!1369947))

(assert (=> b!1195576 m!1369949))

(assert (=> b!1195576 m!1369947))

(assert (=> b!1195576 m!1369949))

(declare-fun m!1370121 () Bool)

(assert (=> b!1195576 m!1370121))

(assert (=> b!1195386 d!341268))

(declare-fun d!341272 () Bool)

(declare-fun res!539630 () Bool)

(declare-fun e!767977 () Bool)

(assert (=> d!341272 (=> (not res!539630) (not e!767977))))

(assert (=> d!341272 (= res!539630 (= (csize!8146 t!4115) (+ (size!9533 (left!10485 t!4115)) (size!9533 (right!10815 t!4115)))))))

(assert (=> d!341272 (= (inv!16028 t!4115) e!767977)))

(declare-fun b!1195582 () Bool)

(declare-fun res!539631 () Bool)

(assert (=> b!1195582 (=> (not res!539631) (not e!767977))))

(assert (=> b!1195582 (= res!539631 (and (not (= (left!10485 t!4115) Empty!3958)) (not (= (right!10815 t!4115) Empty!3958))))))

(declare-fun b!1195583 () Bool)

(declare-fun res!539632 () Bool)

(assert (=> b!1195583 (=> (not res!539632) (not e!767977))))

(assert (=> b!1195583 (= res!539632 (= (cheight!4169 t!4115) (+ (max!0 (height!556 (left!10485 t!4115)) (height!556 (right!10815 t!4115))) 1)))))

(declare-fun b!1195584 () Bool)

(assert (=> b!1195584 (= e!767977 (<= 0 (cheight!4169 t!4115)))))

(assert (= (and d!341272 res!539630) b!1195582))

(assert (= (and b!1195582 res!539631) b!1195583))

(assert (= (and b!1195583 res!539632) b!1195584))

(assert (=> d!341272 m!1369985))

(assert (=> d!341272 m!1370077))

(assert (=> b!1195583 m!1369855))

(assert (=> b!1195583 m!1369857))

(assert (=> b!1195583 m!1369855))

(assert (=> b!1195583 m!1369857))

(declare-fun m!1370131 () Bool)

(assert (=> b!1195583 m!1370131))

(assert (=> b!1195287 d!341272))

(declare-fun d!341276 () Bool)

(declare-fun lt!410080 () Int)

(assert (=> d!341276 (>= lt!410080 0)))

(declare-fun e!767980 () Int)

(assert (=> d!341276 (= lt!410080 e!767980)))

(declare-fun c!198751 () Bool)

(assert (=> d!341276 (= c!198751 ((_ is Nil!12025) (innerList!4018 (xs!6665 t!4115))))))

(assert (=> d!341276 (= (size!9535 (innerList!4018 (xs!6665 t!4115))) lt!410080)))

(declare-fun b!1195589 () Bool)

(assert (=> b!1195589 (= e!767980 0)))

(declare-fun b!1195590 () Bool)

(assert (=> b!1195590 (= e!767980 (+ 1 (size!9535 (t!112349 (innerList!4018 (xs!6665 t!4115))))))))

(assert (= (and d!341276 c!198751) b!1195589))

(assert (= (and d!341276 (not c!198751)) b!1195590))

(declare-fun m!1370139 () Bool)

(assert (=> b!1195590 m!1370139))

(assert (=> d!341160 d!341276))

(declare-fun d!341280 () Bool)

(assert (not d!341280))

(assert (=> b!1195380 d!341280))

(declare-fun d!341282 () Bool)

(assert (not d!341282))

(assert (=> b!1195381 d!341282))

(declare-fun d!341286 () Bool)

(assert (not d!341286))

(assert (=> b!1195381 d!341286))

(declare-fun d!341290 () Bool)

(assert (not d!341290))

(assert (=> b!1195381 d!341290))

(assert (=> b!1195261 d!341164))

(assert (=> b!1195261 d!341166))

(declare-fun b!1195594 () Bool)

(declare-fun e!767982 () Bool)

(declare-fun tp!340552 () Bool)

(assert (=> b!1195594 (= e!767982 (and tp_is_empty!5951 tp!340552))))

(assert (=> b!1195402 (= tp!340539 e!767982)))

(assert (= (and b!1195402 ((_ is Cons!12025) (t!112349 (innerList!4018 (xs!6665 t!4115))))) b!1195594))

(declare-fun b!1195595 () Bool)

(declare-fun tp!340555 () Bool)

(declare-fun e!767984 () Bool)

(declare-fun tp!340553 () Bool)

(assert (=> b!1195595 (= e!767984 (and (inv!16024 (left!10485 (left!10485 (right!10815 t!4115)))) tp!340555 (inv!16024 (right!10815 (left!10485 (right!10815 t!4115)))) tp!340553))))

(declare-fun b!1195597 () Bool)

(declare-fun e!767983 () Bool)

(declare-fun tp!340554 () Bool)

(assert (=> b!1195597 (= e!767983 tp!340554)))

(declare-fun b!1195596 () Bool)

(assert (=> b!1195596 (= e!767984 (and (inv!16025 (xs!6665 (left!10485 (right!10815 t!4115)))) e!767983))))

(assert (=> b!1195414 (= tp!340551 (and (inv!16024 (left!10485 (right!10815 t!4115))) e!767984))))

(assert (= (and b!1195414 ((_ is Node!3958) (left!10485 (right!10815 t!4115)))) b!1195595))

(assert (= b!1195596 b!1195597))

(assert (= (and b!1195414 ((_ is Leaf!6062) (left!10485 (right!10815 t!4115)))) b!1195596))

(declare-fun m!1370143 () Bool)

(assert (=> b!1195595 m!1370143))

(declare-fun m!1370145 () Bool)

(assert (=> b!1195595 m!1370145))

(declare-fun m!1370147 () Bool)

(assert (=> b!1195596 m!1370147))

(assert (=> b!1195414 m!1369941))

(declare-fun b!1195598 () Bool)

(declare-fun e!767986 () Bool)

(declare-fun tp!340556 () Bool)

(declare-fun tp!340558 () Bool)

(assert (=> b!1195598 (= e!767986 (and (inv!16024 (left!10485 (right!10815 (right!10815 t!4115)))) tp!340558 (inv!16024 (right!10815 (right!10815 (right!10815 t!4115)))) tp!340556))))

(declare-fun b!1195600 () Bool)

(declare-fun e!767985 () Bool)

(declare-fun tp!340557 () Bool)

(assert (=> b!1195600 (= e!767985 tp!340557)))

(declare-fun b!1195599 () Bool)

(assert (=> b!1195599 (= e!767986 (and (inv!16025 (xs!6665 (right!10815 (right!10815 t!4115)))) e!767985))))

(assert (=> b!1195414 (= tp!340549 (and (inv!16024 (right!10815 (right!10815 t!4115))) e!767986))))

(assert (= (and b!1195414 ((_ is Node!3958) (right!10815 (right!10815 t!4115)))) b!1195598))

(assert (= b!1195599 b!1195600))

(assert (= (and b!1195414 ((_ is Leaf!6062) (right!10815 (right!10815 t!4115)))) b!1195599))

(declare-fun m!1370149 () Bool)

(assert (=> b!1195598 m!1370149))

(declare-fun m!1370151 () Bool)

(assert (=> b!1195598 m!1370151))

(declare-fun m!1370153 () Bool)

(assert (=> b!1195599 m!1370153))

(assert (=> b!1195414 m!1369943))

(declare-fun tp!340559 () Bool)

(declare-fun e!767988 () Bool)

(declare-fun b!1195601 () Bool)

(declare-fun tp!340561 () Bool)

(assert (=> b!1195601 (= e!767988 (and (inv!16024 (left!10485 (left!10485 (left!10485 t!4115)))) tp!340561 (inv!16024 (right!10815 (left!10485 (left!10485 t!4115)))) tp!340559))))

(declare-fun b!1195603 () Bool)

(declare-fun e!767987 () Bool)

(declare-fun tp!340560 () Bool)

(assert (=> b!1195603 (= e!767987 tp!340560)))

(declare-fun b!1195602 () Bool)

(assert (=> b!1195602 (= e!767988 (and (inv!16025 (xs!6665 (left!10485 (left!10485 t!4115)))) e!767987))))

(assert (=> b!1195411 (= tp!340548 (and (inv!16024 (left!10485 (left!10485 t!4115))) e!767988))))

(assert (= (and b!1195411 ((_ is Node!3958) (left!10485 (left!10485 t!4115)))) b!1195601))

(assert (= b!1195602 b!1195603))

(assert (= (and b!1195411 ((_ is Leaf!6062) (left!10485 (left!10485 t!4115)))) b!1195602))

(declare-fun m!1370155 () Bool)

(assert (=> b!1195601 m!1370155))

(declare-fun m!1370157 () Bool)

(assert (=> b!1195601 m!1370157))

(declare-fun m!1370159 () Bool)

(assert (=> b!1195602 m!1370159))

(assert (=> b!1195411 m!1369935))

(declare-fun tp!340562 () Bool)

(declare-fun tp!340564 () Bool)

(declare-fun e!767990 () Bool)

(declare-fun b!1195604 () Bool)

(assert (=> b!1195604 (= e!767990 (and (inv!16024 (left!10485 (right!10815 (left!10485 t!4115)))) tp!340564 (inv!16024 (right!10815 (right!10815 (left!10485 t!4115)))) tp!340562))))

(declare-fun b!1195606 () Bool)

(declare-fun e!767989 () Bool)

(declare-fun tp!340563 () Bool)

(assert (=> b!1195606 (= e!767989 tp!340563)))

(declare-fun b!1195605 () Bool)

(assert (=> b!1195605 (= e!767990 (and (inv!16025 (xs!6665 (right!10815 (left!10485 t!4115)))) e!767989))))

(assert (=> b!1195411 (= tp!340546 (and (inv!16024 (right!10815 (left!10485 t!4115))) e!767990))))

(assert (= (and b!1195411 ((_ is Node!3958) (right!10815 (left!10485 t!4115)))) b!1195604))

(assert (= b!1195605 b!1195606))

(assert (= (and b!1195411 ((_ is Leaf!6062) (right!10815 (left!10485 t!4115)))) b!1195605))

(declare-fun m!1370161 () Bool)

(assert (=> b!1195604 m!1370161))

(declare-fun m!1370163 () Bool)

(assert (=> b!1195604 m!1370163))

(declare-fun m!1370165 () Bool)

(assert (=> b!1195605 m!1370165))

(assert (=> b!1195411 m!1369937))

(declare-fun b!1195607 () Bool)

(declare-fun e!767991 () Bool)

(declare-fun tp!340565 () Bool)

(assert (=> b!1195607 (= e!767991 (and tp_is_empty!5951 tp!340565))))

(assert (=> b!1195416 (= tp!340550 e!767991)))

(assert (= (and b!1195416 ((_ is Cons!12025) (innerList!4018 (xs!6665 (right!10815 t!4115))))) b!1195607))

(declare-fun b!1195608 () Bool)

(declare-fun e!767992 () Bool)

(declare-fun tp!340566 () Bool)

(assert (=> b!1195608 (= e!767992 (and tp_is_empty!5951 tp!340566))))

(assert (=> b!1195413 (= tp!340547 e!767992)))

(assert (= (and b!1195413 ((_ is Cons!12025) (innerList!4018 (xs!6665 (left!10485 t!4115))))) b!1195608))

(check-sat (not b!1195454) (not d!341200) (not b!1195432) (not d!341192) (not d!341258) (not b!1195565) (not b!1195464) (not b!1195543) (not d!341194) (not b!1195595) (not d!341266) (not b!1195453) (not b!1195469) (not b!1195598) (not b!1195421) (not b!1195538) (not b!1195601) (not bm!83226) (not b!1195561) (not b!1195497) (not b!1195499) (not b!1195608) (not b!1195498) (not b!1195566) (not b!1195541) (not d!341268) (not d!341226) (not b!1195583) (not b!1195560) (not d!341174) (not b!1195435) (not b!1195596) (not b!1195605) (not d!341248) (not d!341272) (not b!1195594) (not b!1195602) (not b!1195603) (not b!1195600) (not b!1195436) (not b!1195468) (not b!1195590) (not b!1195563) (not b!1195418) (not d!341264) (not b!1195430) (not b!1195411) (not b!1195419) (not b!1195422) (not b!1195607) (not b!1195493) (not b!1195465) (not b!1195437) (not b!1195420) (not b!1195417) (not b!1195442) (not b!1195604) (not b!1195434) (not b!1195569) (not b!1195568) (not b!1195597) (not b!1195576) (not b!1195537) (not b!1195546) (not b!1195414) (not b!1195433) tp_is_empty!5951 (not b!1195606) (not d!341220) (not d!341188) (not b!1195599) (not b!1195544))
(check-sat)
