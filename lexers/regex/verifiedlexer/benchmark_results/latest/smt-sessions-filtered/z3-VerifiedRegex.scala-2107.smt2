; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106484 () Bool)

(assert start!106484)

(declare-fun b!1196537 () Bool)

(declare-fun e!768486 () Bool)

(declare-fun e!768485 () Bool)

(assert (=> b!1196537 (= e!768486 e!768485)))

(declare-fun res!540032 () Bool)

(assert (=> b!1196537 (=> res!540032 e!768485)))

(declare-datatypes ((T!21712 0))(
  ( (T!21713 (val!3878 Int)) )
))
(declare-datatypes ((List!12057 0))(
  ( (Nil!12033) (Cons!12033 (h!17434 T!21712) (t!112377 List!12057)) )
))
(declare-datatypes ((IArray!7937 0))(
  ( (IArray!7938 (innerList!4026 List!12057)) )
))
(declare-datatypes ((Conc!3966 0))(
  ( (Node!3966 (left!10497 Conc!3966) (right!10827 Conc!3966) (csize!8162 Int) (cheight!4177 Int)) (Leaf!6074 (xs!6673 IArray!7937) (csize!8163 Int)) (Empty!3966) )
))
(declare-fun lt!410188 () Conc!3966)

(declare-fun isBalanced!1151 (Conc!3966) Bool)

(assert (=> b!1196537 (= res!540032 (not (isBalanced!1151 lt!410188)))))

(declare-fun t!4115 () Conc!3966)

(declare-fun from!553 () Int)

(declare-fun until!31 () Int)

(declare-fun slice!458 (IArray!7937 Int Int) IArray!7937)

(assert (=> b!1196537 (= lt!410188 (Leaf!6074 (slice!458 (xs!6673 t!4115) from!553 until!31) (- until!31 from!553)))))

(declare-fun b!1196538 () Bool)

(declare-fun res!540034 () Bool)

(assert (=> b!1196538 (=> (not res!540034) (not e!768486))))

(get-info :version)

(assert (=> b!1196538 (= res!540034 (and (not (= from!553 until!31)) ((_ is Leaf!6074) t!4115) (not (= (- until!31 from!553) 0))))))

(declare-fun b!1196539 () Bool)

(declare-fun e!768488 () Bool)

(declare-fun tp!340782 () Bool)

(assert (=> b!1196539 (= e!768488 tp!340782)))

(declare-fun b!1196540 () Bool)

(declare-fun res!540036 () Bool)

(assert (=> b!1196540 (=> (not res!540036) (not e!768486))))

(assert (=> b!1196540 (= res!540036 (isBalanced!1151 t!4115))))

(declare-fun res!540035 () Bool)

(assert (=> start!106484 (=> (not res!540035) (not e!768486))))

(assert (=> start!106484 (= res!540035 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> start!106484 e!768486))

(assert (=> start!106484 true))

(declare-fun e!768487 () Bool)

(declare-fun inv!16060 (Conc!3966) Bool)

(assert (=> start!106484 (and (inv!16060 t!4115) e!768487)))

(declare-fun tp!340783 () Bool)

(declare-fun tp!340781 () Bool)

(declare-fun b!1196541 () Bool)

(assert (=> b!1196541 (= e!768487 (and (inv!16060 (left!10497 t!4115)) tp!340781 (inv!16060 (right!10827 t!4115)) tp!340783))))

(declare-fun b!1196542 () Bool)

(declare-fun inv!16061 (IArray!7937) Bool)

(assert (=> b!1196542 (= e!768487 (and (inv!16061 (xs!6673 t!4115)) e!768488))))

(declare-fun b!1196543 () Bool)

(declare-fun list!4465 (Conc!3966) List!12057)

(declare-fun slice!459 (List!12057 Int Int) List!12057)

(assert (=> b!1196543 (= e!768485 (not (= (list!4465 lt!410188) (slice!459 (list!4465 t!4115) from!553 until!31))))))

(declare-fun b!1196544 () Bool)

(declare-fun res!540033 () Bool)

(assert (=> b!1196544 (=> (not res!540033) (not e!768486))))

(declare-fun size!9547 (Conc!3966) Int)

(assert (=> b!1196544 (= res!540033 (<= until!31 (size!9547 t!4115)))))

(assert (= (and start!106484 res!540035) b!1196544))

(assert (= (and b!1196544 res!540033) b!1196540))

(assert (= (and b!1196540 res!540036) b!1196538))

(assert (= (and b!1196538 res!540034) b!1196537))

(assert (= (and b!1196537 (not res!540032)) b!1196543))

(assert (= (and start!106484 ((_ is Node!3966) t!4115)) b!1196541))

(assert (= b!1196542 b!1196539))

(assert (= (and start!106484 ((_ is Leaf!6074) t!4115)) b!1196542))

(declare-fun m!1371261 () Bool)

(assert (=> b!1196542 m!1371261))

(declare-fun m!1371263 () Bool)

(assert (=> b!1196537 m!1371263))

(declare-fun m!1371265 () Bool)

(assert (=> b!1196537 m!1371265))

(declare-fun m!1371267 () Bool)

(assert (=> b!1196541 m!1371267))

(declare-fun m!1371269 () Bool)

(assert (=> b!1196541 m!1371269))

(declare-fun m!1371271 () Bool)

(assert (=> b!1196544 m!1371271))

(declare-fun m!1371273 () Bool)

(assert (=> b!1196543 m!1371273))

(declare-fun m!1371275 () Bool)

(assert (=> b!1196543 m!1371275))

(assert (=> b!1196543 m!1371275))

(declare-fun m!1371277 () Bool)

(assert (=> b!1196543 m!1371277))

(declare-fun m!1371279 () Bool)

(assert (=> b!1196540 m!1371279))

(declare-fun m!1371281 () Bool)

(assert (=> start!106484 m!1371281))

(check-sat (not b!1196541) (not b!1196537) (not b!1196544) (not start!106484) (not b!1196542) (not b!1196540) (not b!1196543) (not b!1196539))
(check-sat)
(get-model)

(declare-fun b!1196557 () Bool)

(declare-fun res!540053 () Bool)

(declare-fun e!768493 () Bool)

(assert (=> b!1196557 (=> (not res!540053) (not e!768493))))

(assert (=> b!1196557 (= res!540053 (isBalanced!1151 (left!10497 t!4115)))))

(declare-fun b!1196558 () Bool)

(declare-fun res!540054 () Bool)

(assert (=> b!1196558 (=> (not res!540054) (not e!768493))))

(declare-fun isEmpty!7244 (Conc!3966) Bool)

(assert (=> b!1196558 (= res!540054 (not (isEmpty!7244 (left!10497 t!4115))))))

(declare-fun d!341722 () Bool)

(declare-fun res!540051 () Bool)

(declare-fun e!768494 () Bool)

(assert (=> d!341722 (=> res!540051 e!768494)))

(assert (=> d!341722 (= res!540051 (not ((_ is Node!3966) t!4115)))))

(assert (=> d!341722 (= (isBalanced!1151 t!4115) e!768494)))

(declare-fun b!1196559 () Bool)

(assert (=> b!1196559 (= e!768493 (not (isEmpty!7244 (right!10827 t!4115))))))

(declare-fun b!1196560 () Bool)

(declare-fun res!540052 () Bool)

(assert (=> b!1196560 (=> (not res!540052) (not e!768493))))

(declare-fun height!559 (Conc!3966) Int)

(assert (=> b!1196560 (= res!540052 (<= (- (height!559 (left!10497 t!4115)) (height!559 (right!10827 t!4115))) 1))))

(declare-fun b!1196561 () Bool)

(declare-fun res!540050 () Bool)

(assert (=> b!1196561 (=> (not res!540050) (not e!768493))))

(assert (=> b!1196561 (= res!540050 (isBalanced!1151 (right!10827 t!4115)))))

(declare-fun b!1196562 () Bool)

(assert (=> b!1196562 (= e!768494 e!768493)))

(declare-fun res!540049 () Bool)

(assert (=> b!1196562 (=> (not res!540049) (not e!768493))))

(assert (=> b!1196562 (= res!540049 (<= (- 1) (- (height!559 (left!10497 t!4115)) (height!559 (right!10827 t!4115)))))))

(assert (= (and d!341722 (not res!540051)) b!1196562))

(assert (= (and b!1196562 res!540049) b!1196560))

(assert (= (and b!1196560 res!540052) b!1196557))

(assert (= (and b!1196557 res!540053) b!1196561))

(assert (= (and b!1196561 res!540050) b!1196558))

(assert (= (and b!1196558 res!540054) b!1196559))

(declare-fun m!1371285 () Bool)

(assert (=> b!1196561 m!1371285))

(declare-fun m!1371287 () Bool)

(assert (=> b!1196558 m!1371287))

(declare-fun m!1371289 () Bool)

(assert (=> b!1196560 m!1371289))

(declare-fun m!1371291 () Bool)

(assert (=> b!1196560 m!1371291))

(assert (=> b!1196562 m!1371289))

(assert (=> b!1196562 m!1371291))

(declare-fun m!1371293 () Bool)

(assert (=> b!1196559 m!1371293))

(declare-fun m!1371295 () Bool)

(assert (=> b!1196557 m!1371295))

(assert (=> b!1196540 d!341722))

(declare-fun d!341728 () Bool)

(declare-fun c!198913 () Bool)

(assert (=> d!341728 (= c!198913 ((_ is Node!3966) t!4115))))

(declare-fun e!768503 () Bool)

(assert (=> d!341728 (= (inv!16060 t!4115) e!768503)))

(declare-fun b!1196577 () Bool)

(declare-fun inv!16062 (Conc!3966) Bool)

(assert (=> b!1196577 (= e!768503 (inv!16062 t!4115))))

(declare-fun b!1196578 () Bool)

(declare-fun e!768504 () Bool)

(assert (=> b!1196578 (= e!768503 e!768504)))

(declare-fun res!540057 () Bool)

(assert (=> b!1196578 (= res!540057 (not ((_ is Leaf!6074) t!4115)))))

(assert (=> b!1196578 (=> res!540057 e!768504)))

(declare-fun b!1196579 () Bool)

(declare-fun inv!16063 (Conc!3966) Bool)

(assert (=> b!1196579 (= e!768504 (inv!16063 t!4115))))

(assert (= (and d!341728 c!198913) b!1196577))

(assert (= (and d!341728 (not c!198913)) b!1196578))

(assert (= (and b!1196578 (not res!540057)) b!1196579))

(declare-fun m!1371299 () Bool)

(assert (=> b!1196577 m!1371299))

(declare-fun m!1371301 () Bool)

(assert (=> b!1196579 m!1371301))

(assert (=> start!106484 d!341728))

(declare-fun d!341732 () Bool)

(declare-fun c!198914 () Bool)

(assert (=> d!341732 (= c!198914 ((_ is Node!3966) (left!10497 t!4115)))))

(declare-fun e!768505 () Bool)

(assert (=> d!341732 (= (inv!16060 (left!10497 t!4115)) e!768505)))

(declare-fun b!1196580 () Bool)

(assert (=> b!1196580 (= e!768505 (inv!16062 (left!10497 t!4115)))))

(declare-fun b!1196581 () Bool)

(declare-fun e!768506 () Bool)

(assert (=> b!1196581 (= e!768505 e!768506)))

(declare-fun res!540058 () Bool)

(assert (=> b!1196581 (= res!540058 (not ((_ is Leaf!6074) (left!10497 t!4115))))))

(assert (=> b!1196581 (=> res!540058 e!768506)))

(declare-fun b!1196582 () Bool)

(assert (=> b!1196582 (= e!768506 (inv!16063 (left!10497 t!4115)))))

(assert (= (and d!341732 c!198914) b!1196580))

(assert (= (and d!341732 (not c!198914)) b!1196581))

(assert (= (and b!1196581 (not res!540058)) b!1196582))

(declare-fun m!1371303 () Bool)

(assert (=> b!1196580 m!1371303))

(declare-fun m!1371305 () Bool)

(assert (=> b!1196582 m!1371305))

(assert (=> b!1196541 d!341732))

(declare-fun d!341734 () Bool)

(declare-fun c!198917 () Bool)

(assert (=> d!341734 (= c!198917 ((_ is Node!3966) (right!10827 t!4115)))))

(declare-fun e!768509 () Bool)

(assert (=> d!341734 (= (inv!16060 (right!10827 t!4115)) e!768509)))

(declare-fun b!1196587 () Bool)

(assert (=> b!1196587 (= e!768509 (inv!16062 (right!10827 t!4115)))))

(declare-fun b!1196588 () Bool)

(declare-fun e!768510 () Bool)

(assert (=> b!1196588 (= e!768509 e!768510)))

(declare-fun res!540059 () Bool)

(assert (=> b!1196588 (= res!540059 (not ((_ is Leaf!6074) (right!10827 t!4115))))))

(assert (=> b!1196588 (=> res!540059 e!768510)))

(declare-fun b!1196589 () Bool)

(assert (=> b!1196589 (= e!768510 (inv!16063 (right!10827 t!4115)))))

(assert (= (and d!341734 c!198917) b!1196587))

(assert (= (and d!341734 (not c!198917)) b!1196588))

(assert (= (and b!1196588 (not res!540059)) b!1196589))

(declare-fun m!1371307 () Bool)

(assert (=> b!1196587 m!1371307))

(declare-fun m!1371309 () Bool)

(assert (=> b!1196589 m!1371309))

(assert (=> b!1196541 d!341734))

(declare-fun b!1196603 () Bool)

(declare-fun e!768517 () List!12057)

(declare-fun e!768518 () List!12057)

(assert (=> b!1196603 (= e!768517 e!768518)))

(declare-fun c!198925 () Bool)

(assert (=> b!1196603 (= c!198925 ((_ is Leaf!6074) lt!410188))))

(declare-fun b!1196602 () Bool)

(assert (=> b!1196602 (= e!768517 Nil!12033)))

(declare-fun d!341736 () Bool)

(declare-fun c!198924 () Bool)

(assert (=> d!341736 (= c!198924 ((_ is Empty!3966) lt!410188))))

(assert (=> d!341736 (= (list!4465 lt!410188) e!768517)))

(declare-fun b!1196604 () Bool)

(declare-fun list!4467 (IArray!7937) List!12057)

(assert (=> b!1196604 (= e!768518 (list!4467 (xs!6673 lt!410188)))))

(declare-fun b!1196605 () Bool)

(declare-fun ++!3068 (List!12057 List!12057) List!12057)

(assert (=> b!1196605 (= e!768518 (++!3068 (list!4465 (left!10497 lt!410188)) (list!4465 (right!10827 lt!410188))))))

(assert (= (and d!341736 c!198924) b!1196602))

(assert (= (and d!341736 (not c!198924)) b!1196603))

(assert (= (and b!1196603 c!198925) b!1196604))

(assert (= (and b!1196603 (not c!198925)) b!1196605))

(declare-fun m!1371331 () Bool)

(assert (=> b!1196604 m!1371331))

(declare-fun m!1371333 () Bool)

(assert (=> b!1196605 m!1371333))

(declare-fun m!1371335 () Bool)

(assert (=> b!1196605 m!1371335))

(assert (=> b!1196605 m!1371333))

(assert (=> b!1196605 m!1371335))

(declare-fun m!1371337 () Bool)

(assert (=> b!1196605 m!1371337))

(assert (=> b!1196543 d!341736))

(declare-fun d!341744 () Bool)

(declare-fun take!121 (List!12057 Int) List!12057)

(declare-fun drop!593 (List!12057 Int) List!12057)

(assert (=> d!341744 (= (slice!459 (list!4465 t!4115) from!553 until!31) (take!121 (drop!593 (list!4465 t!4115) from!553) (- until!31 from!553)))))

(declare-fun bs!288108 () Bool)

(assert (= bs!288108 d!341744))

(assert (=> bs!288108 m!1371275))

(declare-fun m!1371339 () Bool)

(assert (=> bs!288108 m!1371339))

(assert (=> bs!288108 m!1371339))

(declare-fun m!1371341 () Bool)

(assert (=> bs!288108 m!1371341))

(assert (=> b!1196543 d!341744))

(declare-fun b!1196619 () Bool)

(declare-fun e!768523 () List!12057)

(declare-fun e!768524 () List!12057)

(assert (=> b!1196619 (= e!768523 e!768524)))

(declare-fun c!198927 () Bool)

(assert (=> b!1196619 (= c!198927 ((_ is Leaf!6074) t!4115))))

(declare-fun b!1196618 () Bool)

(assert (=> b!1196618 (= e!768523 Nil!12033)))

(declare-fun d!341746 () Bool)

(declare-fun c!198926 () Bool)

(assert (=> d!341746 (= c!198926 ((_ is Empty!3966) t!4115))))

(assert (=> d!341746 (= (list!4465 t!4115) e!768523)))

(declare-fun b!1196620 () Bool)

(assert (=> b!1196620 (= e!768524 (list!4467 (xs!6673 t!4115)))))

(declare-fun b!1196621 () Bool)

(assert (=> b!1196621 (= e!768524 (++!3068 (list!4465 (left!10497 t!4115)) (list!4465 (right!10827 t!4115))))))

(assert (= (and d!341746 c!198926) b!1196618))

(assert (= (and d!341746 (not c!198926)) b!1196619))

(assert (= (and b!1196619 c!198927) b!1196620))

(assert (= (and b!1196619 (not c!198927)) b!1196621))

(declare-fun m!1371343 () Bool)

(assert (=> b!1196620 m!1371343))

(declare-fun m!1371345 () Bool)

(assert (=> b!1196621 m!1371345))

(declare-fun m!1371347 () Bool)

(assert (=> b!1196621 m!1371347))

(assert (=> b!1196621 m!1371345))

(assert (=> b!1196621 m!1371347))

(declare-fun m!1371349 () Bool)

(assert (=> b!1196621 m!1371349))

(assert (=> b!1196543 d!341746))

(declare-fun b!1196622 () Bool)

(declare-fun res!540076 () Bool)

(declare-fun e!768525 () Bool)

(assert (=> b!1196622 (=> (not res!540076) (not e!768525))))

(assert (=> b!1196622 (= res!540076 (isBalanced!1151 (left!10497 lt!410188)))))

(declare-fun b!1196623 () Bool)

(declare-fun res!540077 () Bool)

(assert (=> b!1196623 (=> (not res!540077) (not e!768525))))

(assert (=> b!1196623 (= res!540077 (not (isEmpty!7244 (left!10497 lt!410188))))))

(declare-fun d!341748 () Bool)

(declare-fun res!540074 () Bool)

(declare-fun e!768526 () Bool)

(assert (=> d!341748 (=> res!540074 e!768526)))

(assert (=> d!341748 (= res!540074 (not ((_ is Node!3966) lt!410188)))))

(assert (=> d!341748 (= (isBalanced!1151 lt!410188) e!768526)))

(declare-fun b!1196624 () Bool)

(assert (=> b!1196624 (= e!768525 (not (isEmpty!7244 (right!10827 lt!410188))))))

(declare-fun b!1196625 () Bool)

(declare-fun res!540075 () Bool)

(assert (=> b!1196625 (=> (not res!540075) (not e!768525))))

(assert (=> b!1196625 (= res!540075 (<= (- (height!559 (left!10497 lt!410188)) (height!559 (right!10827 lt!410188))) 1))))

(declare-fun b!1196626 () Bool)

(declare-fun res!540073 () Bool)

(assert (=> b!1196626 (=> (not res!540073) (not e!768525))))

(assert (=> b!1196626 (= res!540073 (isBalanced!1151 (right!10827 lt!410188)))))

(declare-fun b!1196627 () Bool)

(assert (=> b!1196627 (= e!768526 e!768525)))

(declare-fun res!540072 () Bool)

(assert (=> b!1196627 (=> (not res!540072) (not e!768525))))

(assert (=> b!1196627 (= res!540072 (<= (- 1) (- (height!559 (left!10497 lt!410188)) (height!559 (right!10827 lt!410188)))))))

(assert (= (and d!341748 (not res!540074)) b!1196627))

(assert (= (and b!1196627 res!540072) b!1196625))

(assert (= (and b!1196625 res!540075) b!1196622))

(assert (= (and b!1196622 res!540076) b!1196626))

(assert (= (and b!1196626 res!540073) b!1196623))

(assert (= (and b!1196623 res!540077) b!1196624))

(declare-fun m!1371351 () Bool)

(assert (=> b!1196626 m!1371351))

(declare-fun m!1371353 () Bool)

(assert (=> b!1196623 m!1371353))

(declare-fun m!1371355 () Bool)

(assert (=> b!1196625 m!1371355))

(declare-fun m!1371357 () Bool)

(assert (=> b!1196625 m!1371357))

(assert (=> b!1196627 m!1371355))

(assert (=> b!1196627 m!1371357))

(declare-fun m!1371359 () Bool)

(assert (=> b!1196624 m!1371359))

(declare-fun m!1371361 () Bool)

(assert (=> b!1196622 m!1371361))

(assert (=> b!1196537 d!341748))

(declare-fun lt!410194 () IArray!7937)

(declare-fun d!341750 () Bool)

(assert (=> d!341750 (= lt!410194 (IArray!7938 (slice!459 (list!4467 (xs!6673 t!4115)) from!553 until!31)))))

(declare-fun choose!7722 (IArray!7937 Int Int) IArray!7937)

(assert (=> d!341750 (= lt!410194 (choose!7722 (xs!6673 t!4115) from!553 until!31))))

(declare-fun e!768533 () Bool)

(assert (=> d!341750 e!768533))

(declare-fun res!540092 () Bool)

(assert (=> d!341750 (=> (not res!540092) (not e!768533))))

(assert (=> d!341750 (= res!540092 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> d!341750 (= (slice!458 (xs!6673 t!4115) from!553 until!31) lt!410194)))

(declare-fun b!1196642 () Bool)

(declare-fun size!9550 (IArray!7937) Int)

(assert (=> b!1196642 (= e!768533 (<= until!31 (size!9550 (xs!6673 t!4115))))))

(assert (= (and d!341750 res!540092) b!1196642))

(assert (=> d!341750 m!1371343))

(assert (=> d!341750 m!1371343))

(declare-fun m!1371387 () Bool)

(assert (=> d!341750 m!1371387))

(declare-fun m!1371389 () Bool)

(assert (=> d!341750 m!1371389))

(declare-fun m!1371391 () Bool)

(assert (=> b!1196642 m!1371391))

(assert (=> b!1196537 d!341750))

(declare-fun d!341756 () Bool)

(declare-fun size!9551 (List!12057) Int)

(assert (=> d!341756 (= (inv!16061 (xs!6673 t!4115)) (<= (size!9551 (innerList!4026 (xs!6673 t!4115))) 2147483647))))

(declare-fun bs!288109 () Bool)

(assert (= bs!288109 d!341756))

(declare-fun m!1371393 () Bool)

(assert (=> bs!288109 m!1371393))

(assert (=> b!1196542 d!341756))

(declare-fun d!341758 () Bool)

(declare-fun lt!410200 () Int)

(assert (=> d!341758 (= lt!410200 (size!9551 (list!4465 t!4115)))))

(assert (=> d!341758 (= lt!410200 (ite ((_ is Empty!3966) t!4115) 0 (ite ((_ is Leaf!6074) t!4115) (csize!8163 t!4115) (csize!8162 t!4115))))))

(assert (=> d!341758 (= (size!9547 t!4115) lt!410200)))

(declare-fun bs!288110 () Bool)

(assert (= bs!288110 d!341758))

(assert (=> bs!288110 m!1371275))

(assert (=> bs!288110 m!1371275))

(declare-fun m!1371401 () Bool)

(assert (=> bs!288110 m!1371401))

(assert (=> b!1196544 d!341758))

(declare-fun tp!340792 () Bool)

(declare-fun b!1196654 () Bool)

(declare-fun e!768542 () Bool)

(declare-fun tp!340791 () Bool)

(assert (=> b!1196654 (= e!768542 (and (inv!16060 (left!10497 (left!10497 t!4115))) tp!340791 (inv!16060 (right!10827 (left!10497 t!4115))) tp!340792))))

(declare-fun b!1196656 () Bool)

(declare-fun e!768541 () Bool)

(declare-fun tp!340790 () Bool)

(assert (=> b!1196656 (= e!768541 tp!340790)))

(declare-fun b!1196655 () Bool)

(assert (=> b!1196655 (= e!768542 (and (inv!16061 (xs!6673 (left!10497 t!4115))) e!768541))))

(assert (=> b!1196541 (= tp!340781 (and (inv!16060 (left!10497 t!4115)) e!768542))))

(assert (= (and b!1196541 ((_ is Node!3966) (left!10497 t!4115))) b!1196654))

(assert (= b!1196655 b!1196656))

(assert (= (and b!1196541 ((_ is Leaf!6074) (left!10497 t!4115))) b!1196655))

(declare-fun m!1371403 () Bool)

(assert (=> b!1196654 m!1371403))

(declare-fun m!1371405 () Bool)

(assert (=> b!1196654 m!1371405))

(declare-fun m!1371407 () Bool)

(assert (=> b!1196655 m!1371407))

(assert (=> b!1196541 m!1371267))

(declare-fun tp!340794 () Bool)

(declare-fun e!768546 () Bool)

(declare-fun tp!340795 () Bool)

(declare-fun b!1196661 () Bool)

(assert (=> b!1196661 (= e!768546 (and (inv!16060 (left!10497 (right!10827 t!4115))) tp!340794 (inv!16060 (right!10827 (right!10827 t!4115))) tp!340795))))

(declare-fun b!1196663 () Bool)

(declare-fun e!768545 () Bool)

(declare-fun tp!340793 () Bool)

(assert (=> b!1196663 (= e!768545 tp!340793)))

(declare-fun b!1196662 () Bool)

(assert (=> b!1196662 (= e!768546 (and (inv!16061 (xs!6673 (right!10827 t!4115))) e!768545))))

(assert (=> b!1196541 (= tp!340783 (and (inv!16060 (right!10827 t!4115)) e!768546))))

(assert (= (and b!1196541 ((_ is Node!3966) (right!10827 t!4115))) b!1196661))

(assert (= b!1196662 b!1196663))

(assert (= (and b!1196541 ((_ is Leaf!6074) (right!10827 t!4115))) b!1196662))

(declare-fun m!1371409 () Bool)

(assert (=> b!1196661 m!1371409))

(declare-fun m!1371411 () Bool)

(assert (=> b!1196661 m!1371411))

(declare-fun m!1371413 () Bool)

(assert (=> b!1196662 m!1371413))

(assert (=> b!1196541 m!1371269))

(declare-fun b!1196670 () Bool)

(declare-fun e!768551 () Bool)

(declare-fun tp_is_empty!5957 () Bool)

(declare-fun tp!340798 () Bool)

(assert (=> b!1196670 (= e!768551 (and tp_is_empty!5957 tp!340798))))

(assert (=> b!1196539 (= tp!340782 e!768551)))

(assert (= (and b!1196539 ((_ is Cons!12033) (innerList!4026 (xs!6673 t!4115)))) b!1196670))

(check-sat (not d!341756) (not d!341750) (not b!1196561) (not b!1196577) (not b!1196622) (not b!1196623) (not b!1196557) (not b!1196620) tp_is_empty!5957 (not b!1196621) (not b!1196656) (not b!1196560) (not b!1196605) (not b!1196559) (not b!1196541) (not b!1196642) (not b!1196624) (not b!1196589) (not b!1196579) (not b!1196582) (not b!1196670) (not d!341744) (not b!1196580) (not b!1196558) (not b!1196626) (not b!1196625) (not b!1196562) (not b!1196654) (not b!1196663) (not b!1196587) (not d!341758) (not b!1196661) (not b!1196604) (not b!1196655) (not b!1196662) (not b!1196627))
(check-sat)
(get-model)

(declare-fun d!341766 () Bool)

(declare-fun lt!410203 () Int)

(assert (=> d!341766 (= lt!410203 (size!9551 (list!4467 (xs!6673 t!4115))))))

(declare-fun choose!7723 (IArray!7937) Int)

(assert (=> d!341766 (= lt!410203 (choose!7723 (xs!6673 t!4115)))))

(assert (=> d!341766 (= (size!9550 (xs!6673 t!4115)) lt!410203)))

(declare-fun bs!288111 () Bool)

(assert (= bs!288111 d!341766))

(assert (=> bs!288111 m!1371343))

(assert (=> bs!288111 m!1371343))

(declare-fun m!1371439 () Bool)

(assert (=> bs!288111 m!1371439))

(declare-fun m!1371441 () Bool)

(assert (=> bs!288111 m!1371441))

(assert (=> b!1196642 d!341766))

(declare-fun d!341768 () Bool)

(declare-fun lt!410206 () Int)

(assert (=> d!341768 (>= lt!410206 0)))

(declare-fun e!768571 () Int)

(assert (=> d!341768 (= lt!410206 e!768571)))

(declare-fun c!198935 () Bool)

(assert (=> d!341768 (= c!198935 ((_ is Nil!12033) (list!4465 t!4115)))))

(assert (=> d!341768 (= (size!9551 (list!4465 t!4115)) lt!410206)))

(declare-fun b!1196703 () Bool)

(assert (=> b!1196703 (= e!768571 0)))

(declare-fun b!1196704 () Bool)

(assert (=> b!1196704 (= e!768571 (+ 1 (size!9551 (t!112377 (list!4465 t!4115)))))))

(assert (= (and d!341768 c!198935) b!1196703))

(assert (= (and d!341768 (not c!198935)) b!1196704))

(declare-fun m!1371443 () Bool)

(assert (=> b!1196704 m!1371443))

(assert (=> d!341758 d!341768))

(assert (=> d!341758 d!341746))

(declare-fun b!1196713 () Bool)

(declare-fun e!768577 () List!12057)

(assert (=> b!1196713 (= e!768577 (list!4465 (right!10827 t!4115)))))

(declare-fun b!1196715 () Bool)

(declare-fun res!540106 () Bool)

(declare-fun e!768576 () Bool)

(assert (=> b!1196715 (=> (not res!540106) (not e!768576))))

(declare-fun lt!410209 () List!12057)

(assert (=> b!1196715 (= res!540106 (= (size!9551 lt!410209) (+ (size!9551 (list!4465 (left!10497 t!4115))) (size!9551 (list!4465 (right!10827 t!4115))))))))

(declare-fun b!1196714 () Bool)

(assert (=> b!1196714 (= e!768577 (Cons!12033 (h!17434 (list!4465 (left!10497 t!4115))) (++!3068 (t!112377 (list!4465 (left!10497 t!4115))) (list!4465 (right!10827 t!4115)))))))

(declare-fun d!341770 () Bool)

(assert (=> d!341770 e!768576))

(declare-fun res!540105 () Bool)

(assert (=> d!341770 (=> (not res!540105) (not e!768576))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1679 (List!12057) (InoxSet T!21712))

(assert (=> d!341770 (= res!540105 (= (content!1679 lt!410209) ((_ map or) (content!1679 (list!4465 (left!10497 t!4115))) (content!1679 (list!4465 (right!10827 t!4115))))))))

(assert (=> d!341770 (= lt!410209 e!768577)))

(declare-fun c!198938 () Bool)

(assert (=> d!341770 (= c!198938 ((_ is Nil!12033) (list!4465 (left!10497 t!4115))))))

(assert (=> d!341770 (= (++!3068 (list!4465 (left!10497 t!4115)) (list!4465 (right!10827 t!4115))) lt!410209)))

(declare-fun b!1196716 () Bool)

(assert (=> b!1196716 (= e!768576 (or (not (= (list!4465 (right!10827 t!4115)) Nil!12033)) (= lt!410209 (list!4465 (left!10497 t!4115)))))))

(assert (= (and d!341770 c!198938) b!1196713))

(assert (= (and d!341770 (not c!198938)) b!1196714))

(assert (= (and d!341770 res!540105) b!1196715))

(assert (= (and b!1196715 res!540106) b!1196716))

(declare-fun m!1371445 () Bool)

(assert (=> b!1196715 m!1371445))

(assert (=> b!1196715 m!1371345))

(declare-fun m!1371447 () Bool)

(assert (=> b!1196715 m!1371447))

(assert (=> b!1196715 m!1371347))

(declare-fun m!1371449 () Bool)

(assert (=> b!1196715 m!1371449))

(assert (=> b!1196714 m!1371347))

(declare-fun m!1371451 () Bool)

(assert (=> b!1196714 m!1371451))

(declare-fun m!1371453 () Bool)

(assert (=> d!341770 m!1371453))

(assert (=> d!341770 m!1371345))

(declare-fun m!1371455 () Bool)

(assert (=> d!341770 m!1371455))

(assert (=> d!341770 m!1371347))

(declare-fun m!1371457 () Bool)

(assert (=> d!341770 m!1371457))

(assert (=> b!1196621 d!341770))

(declare-fun b!1196718 () Bool)

(declare-fun e!768578 () List!12057)

(declare-fun e!768579 () List!12057)

(assert (=> b!1196718 (= e!768578 e!768579)))

(declare-fun c!198940 () Bool)

(assert (=> b!1196718 (= c!198940 ((_ is Leaf!6074) (left!10497 t!4115)))))

(declare-fun b!1196717 () Bool)

(assert (=> b!1196717 (= e!768578 Nil!12033)))

(declare-fun d!341772 () Bool)

(declare-fun c!198939 () Bool)

(assert (=> d!341772 (= c!198939 ((_ is Empty!3966) (left!10497 t!4115)))))

(assert (=> d!341772 (= (list!4465 (left!10497 t!4115)) e!768578)))

(declare-fun b!1196719 () Bool)

(assert (=> b!1196719 (= e!768579 (list!4467 (xs!6673 (left!10497 t!4115))))))

(declare-fun b!1196720 () Bool)

(assert (=> b!1196720 (= e!768579 (++!3068 (list!4465 (left!10497 (left!10497 t!4115))) (list!4465 (right!10827 (left!10497 t!4115)))))))

(assert (= (and d!341772 c!198939) b!1196717))

(assert (= (and d!341772 (not c!198939)) b!1196718))

(assert (= (and b!1196718 c!198940) b!1196719))

(assert (= (and b!1196718 (not c!198940)) b!1196720))

(declare-fun m!1371459 () Bool)

(assert (=> b!1196719 m!1371459))

(declare-fun m!1371461 () Bool)

(assert (=> b!1196720 m!1371461))

(declare-fun m!1371463 () Bool)

(assert (=> b!1196720 m!1371463))

(assert (=> b!1196720 m!1371461))

(assert (=> b!1196720 m!1371463))

(declare-fun m!1371465 () Bool)

(assert (=> b!1196720 m!1371465))

(assert (=> b!1196621 d!341772))

(declare-fun b!1196722 () Bool)

(declare-fun e!768580 () List!12057)

(declare-fun e!768581 () List!12057)

(assert (=> b!1196722 (= e!768580 e!768581)))

(declare-fun c!198942 () Bool)

(assert (=> b!1196722 (= c!198942 ((_ is Leaf!6074) (right!10827 t!4115)))))

(declare-fun b!1196721 () Bool)

(assert (=> b!1196721 (= e!768580 Nil!12033)))

(declare-fun d!341774 () Bool)

(declare-fun c!198941 () Bool)

(assert (=> d!341774 (= c!198941 ((_ is Empty!3966) (right!10827 t!4115)))))

(assert (=> d!341774 (= (list!4465 (right!10827 t!4115)) e!768580)))

(declare-fun b!1196723 () Bool)

(assert (=> b!1196723 (= e!768581 (list!4467 (xs!6673 (right!10827 t!4115))))))

(declare-fun b!1196724 () Bool)

(assert (=> b!1196724 (= e!768581 (++!3068 (list!4465 (left!10497 (right!10827 t!4115))) (list!4465 (right!10827 (right!10827 t!4115)))))))

(assert (= (and d!341774 c!198941) b!1196721))

(assert (= (and d!341774 (not c!198941)) b!1196722))

(assert (= (and b!1196722 c!198942) b!1196723))

(assert (= (and b!1196722 (not c!198942)) b!1196724))

(declare-fun m!1371467 () Bool)

(assert (=> b!1196723 m!1371467))

(declare-fun m!1371469 () Bool)

(assert (=> b!1196724 m!1371469))

(declare-fun m!1371471 () Bool)

(assert (=> b!1196724 m!1371471))

(assert (=> b!1196724 m!1371469))

(assert (=> b!1196724 m!1371471))

(declare-fun m!1371473 () Bool)

(assert (=> b!1196724 m!1371473))

(assert (=> b!1196621 d!341774))

(declare-fun d!341776 () Bool)

(declare-fun lt!410212 () Bool)

(declare-fun isEmpty!7246 (List!12057) Bool)

(assert (=> d!341776 (= lt!410212 (isEmpty!7246 (list!4465 (right!10827 lt!410188))))))

(assert (=> d!341776 (= lt!410212 (= (size!9547 (right!10827 lt!410188)) 0))))

(assert (=> d!341776 (= (isEmpty!7244 (right!10827 lt!410188)) lt!410212)))

(declare-fun bs!288112 () Bool)

(assert (= bs!288112 d!341776))

(assert (=> bs!288112 m!1371335))

(assert (=> bs!288112 m!1371335))

(declare-fun m!1371475 () Bool)

(assert (=> bs!288112 m!1371475))

(declare-fun m!1371477 () Bool)

(assert (=> bs!288112 m!1371477))

(assert (=> b!1196624 d!341776))

(declare-fun d!341778 () Bool)

(assert (=> d!341778 (= (list!4467 (xs!6673 t!4115)) (innerList!4026 (xs!6673 t!4115)))))

(assert (=> b!1196620 d!341778))

(declare-fun d!341780 () Bool)

(declare-fun res!540113 () Bool)

(declare-fun e!768584 () Bool)

(assert (=> d!341780 (=> (not res!540113) (not e!768584))))

(assert (=> d!341780 (= res!540113 (= (csize!8162 t!4115) (+ (size!9547 (left!10497 t!4115)) (size!9547 (right!10827 t!4115)))))))

(assert (=> d!341780 (= (inv!16062 t!4115) e!768584)))

(declare-fun b!1196731 () Bool)

(declare-fun res!540114 () Bool)

(assert (=> b!1196731 (=> (not res!540114) (not e!768584))))

(assert (=> b!1196731 (= res!540114 (and (not (= (left!10497 t!4115) Empty!3966)) (not (= (right!10827 t!4115) Empty!3966))))))

(declare-fun b!1196732 () Bool)

(declare-fun res!540115 () Bool)

(assert (=> b!1196732 (=> (not res!540115) (not e!768584))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1196732 (= res!540115 (= (cheight!4177 t!4115) (+ (max!0 (height!559 (left!10497 t!4115)) (height!559 (right!10827 t!4115))) 1)))))

(declare-fun b!1196733 () Bool)

(assert (=> b!1196733 (= e!768584 (<= 0 (cheight!4177 t!4115)))))

(assert (= (and d!341780 res!540113) b!1196731))

(assert (= (and b!1196731 res!540114) b!1196732))

(assert (= (and b!1196732 res!540115) b!1196733))

(declare-fun m!1371479 () Bool)

(assert (=> d!341780 m!1371479))

(declare-fun m!1371481 () Bool)

(assert (=> d!341780 m!1371481))

(assert (=> b!1196732 m!1371289))

(assert (=> b!1196732 m!1371291))

(assert (=> b!1196732 m!1371289))

(assert (=> b!1196732 m!1371291))

(declare-fun m!1371483 () Bool)

(assert (=> b!1196732 m!1371483))

(assert (=> b!1196577 d!341780))

(declare-fun d!341782 () Bool)

(assert (=> d!341782 (= (height!559 (left!10497 lt!410188)) (ite ((_ is Empty!3966) (left!10497 lt!410188)) 0 (ite ((_ is Leaf!6074) (left!10497 lt!410188)) 1 (cheight!4177 (left!10497 lt!410188)))))))

(assert (=> b!1196625 d!341782))

(declare-fun d!341786 () Bool)

(assert (=> d!341786 (= (height!559 (right!10827 lt!410188)) (ite ((_ is Empty!3966) (right!10827 lt!410188)) 0 (ite ((_ is Leaf!6074) (right!10827 lt!410188)) 1 (cheight!4177 (right!10827 lt!410188)))))))

(assert (=> b!1196625 d!341786))

(declare-fun d!341788 () Bool)

(declare-fun c!198943 () Bool)

(assert (=> d!341788 (= c!198943 ((_ is Node!3966) (left!10497 (right!10827 t!4115))))))

(declare-fun e!768587 () Bool)

(assert (=> d!341788 (= (inv!16060 (left!10497 (right!10827 t!4115))) e!768587)))

(declare-fun b!1196740 () Bool)

(assert (=> b!1196740 (= e!768587 (inv!16062 (left!10497 (right!10827 t!4115))))))

(declare-fun b!1196741 () Bool)

(declare-fun e!768588 () Bool)

(assert (=> b!1196741 (= e!768587 e!768588)))

(declare-fun res!540122 () Bool)

(assert (=> b!1196741 (= res!540122 (not ((_ is Leaf!6074) (left!10497 (right!10827 t!4115)))))))

(assert (=> b!1196741 (=> res!540122 e!768588)))

(declare-fun b!1196742 () Bool)

(assert (=> b!1196742 (= e!768588 (inv!16063 (left!10497 (right!10827 t!4115))))))

(assert (= (and d!341788 c!198943) b!1196740))

(assert (= (and d!341788 (not c!198943)) b!1196741))

(assert (= (and b!1196741 (not res!540122)) b!1196742))

(declare-fun m!1371497 () Bool)

(assert (=> b!1196740 m!1371497))

(declare-fun m!1371499 () Bool)

(assert (=> b!1196742 m!1371499))

(assert (=> b!1196661 d!341788))

(declare-fun d!341792 () Bool)

(declare-fun c!198944 () Bool)

(assert (=> d!341792 (= c!198944 ((_ is Node!3966) (right!10827 (right!10827 t!4115))))))

(declare-fun e!768589 () Bool)

(assert (=> d!341792 (= (inv!16060 (right!10827 (right!10827 t!4115))) e!768589)))

(declare-fun b!1196743 () Bool)

(assert (=> b!1196743 (= e!768589 (inv!16062 (right!10827 (right!10827 t!4115))))))

(declare-fun b!1196744 () Bool)

(declare-fun e!768590 () Bool)

(assert (=> b!1196744 (= e!768589 e!768590)))

(declare-fun res!540123 () Bool)

(assert (=> b!1196744 (= res!540123 (not ((_ is Leaf!6074) (right!10827 (right!10827 t!4115)))))))

(assert (=> b!1196744 (=> res!540123 e!768590)))

(declare-fun b!1196745 () Bool)

(assert (=> b!1196745 (= e!768590 (inv!16063 (right!10827 (right!10827 t!4115))))))

(assert (= (and d!341792 c!198944) b!1196743))

(assert (= (and d!341792 (not c!198944)) b!1196744))

(assert (= (and b!1196744 (not res!540123)) b!1196745))

(declare-fun m!1371501 () Bool)

(assert (=> b!1196743 m!1371501))

(declare-fun m!1371503 () Bool)

(assert (=> b!1196745 m!1371503))

(assert (=> b!1196661 d!341792))

(declare-fun d!341794 () Bool)

(declare-fun res!540128 () Bool)

(declare-fun e!768593 () Bool)

(assert (=> d!341794 (=> (not res!540128) (not e!768593))))

(assert (=> d!341794 (= res!540128 (<= (size!9551 (list!4467 (xs!6673 t!4115))) 512))))

(assert (=> d!341794 (= (inv!16063 t!4115) e!768593)))

(declare-fun b!1196750 () Bool)

(declare-fun res!540129 () Bool)

(assert (=> b!1196750 (=> (not res!540129) (not e!768593))))

(assert (=> b!1196750 (= res!540129 (= (csize!8163 t!4115) (size!9551 (list!4467 (xs!6673 t!4115)))))))

(declare-fun b!1196751 () Bool)

(assert (=> b!1196751 (= e!768593 (and (> (csize!8163 t!4115) 0) (<= (csize!8163 t!4115) 512)))))

(assert (= (and d!341794 res!540128) b!1196750))

(assert (= (and b!1196750 res!540129) b!1196751))

(assert (=> d!341794 m!1371343))

(assert (=> d!341794 m!1371343))

(assert (=> d!341794 m!1371439))

(assert (=> b!1196750 m!1371343))

(assert (=> b!1196750 m!1371343))

(assert (=> b!1196750 m!1371439))

(assert (=> b!1196579 d!341794))

(assert (=> b!1196627 d!341782))

(assert (=> b!1196627 d!341786))

(declare-fun d!341800 () Bool)

(assert (=> d!341800 (= (list!4467 (xs!6673 lt!410188)) (innerList!4026 (xs!6673 lt!410188)))))

(assert (=> b!1196604 d!341800))

(declare-fun b!1196752 () Bool)

(declare-fun res!540134 () Bool)

(declare-fun e!768594 () Bool)

(assert (=> b!1196752 (=> (not res!540134) (not e!768594))))

(assert (=> b!1196752 (= res!540134 (isBalanced!1151 (left!10497 (right!10827 lt!410188))))))

(declare-fun b!1196753 () Bool)

(declare-fun res!540135 () Bool)

(assert (=> b!1196753 (=> (not res!540135) (not e!768594))))

(assert (=> b!1196753 (= res!540135 (not (isEmpty!7244 (left!10497 (right!10827 lt!410188)))))))

(declare-fun d!341804 () Bool)

(declare-fun res!540132 () Bool)

(declare-fun e!768595 () Bool)

(assert (=> d!341804 (=> res!540132 e!768595)))

(assert (=> d!341804 (= res!540132 (not ((_ is Node!3966) (right!10827 lt!410188))))))

(assert (=> d!341804 (= (isBalanced!1151 (right!10827 lt!410188)) e!768595)))

(declare-fun b!1196754 () Bool)

(assert (=> b!1196754 (= e!768594 (not (isEmpty!7244 (right!10827 (right!10827 lt!410188)))))))

(declare-fun b!1196755 () Bool)

(declare-fun res!540133 () Bool)

(assert (=> b!1196755 (=> (not res!540133) (not e!768594))))

(assert (=> b!1196755 (= res!540133 (<= (- (height!559 (left!10497 (right!10827 lt!410188))) (height!559 (right!10827 (right!10827 lt!410188)))) 1))))

(declare-fun b!1196756 () Bool)

(declare-fun res!540131 () Bool)

(assert (=> b!1196756 (=> (not res!540131) (not e!768594))))

(assert (=> b!1196756 (= res!540131 (isBalanced!1151 (right!10827 (right!10827 lt!410188))))))

(declare-fun b!1196757 () Bool)

(assert (=> b!1196757 (= e!768595 e!768594)))

(declare-fun res!540130 () Bool)

(assert (=> b!1196757 (=> (not res!540130) (not e!768594))))

(assert (=> b!1196757 (= res!540130 (<= (- 1) (- (height!559 (left!10497 (right!10827 lt!410188))) (height!559 (right!10827 (right!10827 lt!410188))))))))

(assert (= (and d!341804 (not res!540132)) b!1196757))

(assert (= (and b!1196757 res!540130) b!1196755))

(assert (= (and b!1196755 res!540133) b!1196752))

(assert (= (and b!1196752 res!540134) b!1196756))

(assert (= (and b!1196756 res!540131) b!1196753))

(assert (= (and b!1196753 res!540135) b!1196754))

(declare-fun m!1371509 () Bool)

(assert (=> b!1196756 m!1371509))

(declare-fun m!1371511 () Bool)

(assert (=> b!1196753 m!1371511))

(declare-fun m!1371513 () Bool)

(assert (=> b!1196755 m!1371513))

(declare-fun m!1371515 () Bool)

(assert (=> b!1196755 m!1371515))

(assert (=> b!1196757 m!1371513))

(assert (=> b!1196757 m!1371515))

(declare-fun m!1371517 () Bool)

(assert (=> b!1196754 m!1371517))

(declare-fun m!1371519 () Bool)

(assert (=> b!1196752 m!1371519))

(assert (=> b!1196626 d!341804))

(declare-fun d!341810 () Bool)

(assert (=> d!341810 (= (inv!16061 (xs!6673 (right!10827 t!4115))) (<= (size!9551 (innerList!4026 (xs!6673 (right!10827 t!4115)))) 2147483647))))

(declare-fun bs!288114 () Bool)

(assert (= bs!288114 d!341810))

(declare-fun m!1371527 () Bool)

(assert (=> bs!288114 m!1371527))

(assert (=> b!1196662 d!341810))

(declare-fun b!1196764 () Bool)

(declare-fun e!768599 () List!12057)

(assert (=> b!1196764 (= e!768599 (list!4465 (right!10827 lt!410188)))))

(declare-fun b!1196766 () Bool)

(declare-fun res!540143 () Bool)

(declare-fun e!768598 () Bool)

(assert (=> b!1196766 (=> (not res!540143) (not e!768598))))

(declare-fun lt!410216 () List!12057)

(assert (=> b!1196766 (= res!540143 (= (size!9551 lt!410216) (+ (size!9551 (list!4465 (left!10497 lt!410188))) (size!9551 (list!4465 (right!10827 lt!410188))))))))

(declare-fun b!1196765 () Bool)

(assert (=> b!1196765 (= e!768599 (Cons!12033 (h!17434 (list!4465 (left!10497 lt!410188))) (++!3068 (t!112377 (list!4465 (left!10497 lt!410188))) (list!4465 (right!10827 lt!410188)))))))

(declare-fun d!341812 () Bool)

(assert (=> d!341812 e!768598))

(declare-fun res!540142 () Bool)

(assert (=> d!341812 (=> (not res!540142) (not e!768598))))

(assert (=> d!341812 (= res!540142 (= (content!1679 lt!410216) ((_ map or) (content!1679 (list!4465 (left!10497 lt!410188))) (content!1679 (list!4465 (right!10827 lt!410188))))))))

(assert (=> d!341812 (= lt!410216 e!768599)))

(declare-fun c!198945 () Bool)

(assert (=> d!341812 (= c!198945 ((_ is Nil!12033) (list!4465 (left!10497 lt!410188))))))

(assert (=> d!341812 (= (++!3068 (list!4465 (left!10497 lt!410188)) (list!4465 (right!10827 lt!410188))) lt!410216)))

(declare-fun b!1196767 () Bool)

(assert (=> b!1196767 (= e!768598 (or (not (= (list!4465 (right!10827 lt!410188)) Nil!12033)) (= lt!410216 (list!4465 (left!10497 lt!410188)))))))

(assert (= (and d!341812 c!198945) b!1196764))

(assert (= (and d!341812 (not c!198945)) b!1196765))

(assert (= (and d!341812 res!540142) b!1196766))

(assert (= (and b!1196766 res!540143) b!1196767))

(declare-fun m!1371535 () Bool)

(assert (=> b!1196766 m!1371535))

(assert (=> b!1196766 m!1371333))

(declare-fun m!1371537 () Bool)

(assert (=> b!1196766 m!1371537))

(assert (=> b!1196766 m!1371335))

(declare-fun m!1371539 () Bool)

(assert (=> b!1196766 m!1371539))

(assert (=> b!1196765 m!1371335))

(declare-fun m!1371541 () Bool)

(assert (=> b!1196765 m!1371541))

(declare-fun m!1371543 () Bool)

(assert (=> d!341812 m!1371543))

(assert (=> d!341812 m!1371333))

(declare-fun m!1371545 () Bool)

(assert (=> d!341812 m!1371545))

(assert (=> d!341812 m!1371335))

(declare-fun m!1371547 () Bool)

(assert (=> d!341812 m!1371547))

(assert (=> b!1196605 d!341812))

(declare-fun b!1196769 () Bool)

(declare-fun e!768600 () List!12057)

(declare-fun e!768601 () List!12057)

(assert (=> b!1196769 (= e!768600 e!768601)))

(declare-fun c!198947 () Bool)

(assert (=> b!1196769 (= c!198947 ((_ is Leaf!6074) (left!10497 lt!410188)))))

(declare-fun b!1196768 () Bool)

(assert (=> b!1196768 (= e!768600 Nil!12033)))

(declare-fun d!341816 () Bool)

(declare-fun c!198946 () Bool)

(assert (=> d!341816 (= c!198946 ((_ is Empty!3966) (left!10497 lt!410188)))))

(assert (=> d!341816 (= (list!4465 (left!10497 lt!410188)) e!768600)))

(declare-fun b!1196770 () Bool)

(assert (=> b!1196770 (= e!768601 (list!4467 (xs!6673 (left!10497 lt!410188))))))

(declare-fun b!1196771 () Bool)

(assert (=> b!1196771 (= e!768601 (++!3068 (list!4465 (left!10497 (left!10497 lt!410188))) (list!4465 (right!10827 (left!10497 lt!410188)))))))

(assert (= (and d!341816 c!198946) b!1196768))

(assert (= (and d!341816 (not c!198946)) b!1196769))

(assert (= (and b!1196769 c!198947) b!1196770))

(assert (= (and b!1196769 (not c!198947)) b!1196771))

(declare-fun m!1371549 () Bool)

(assert (=> b!1196770 m!1371549))

(declare-fun m!1371551 () Bool)

(assert (=> b!1196771 m!1371551))

(declare-fun m!1371553 () Bool)

(assert (=> b!1196771 m!1371553))

(assert (=> b!1196771 m!1371551))

(assert (=> b!1196771 m!1371553))

(declare-fun m!1371555 () Bool)

(assert (=> b!1196771 m!1371555))

(assert (=> b!1196605 d!341816))

(declare-fun b!1196773 () Bool)

(declare-fun e!768602 () List!12057)

(declare-fun e!768603 () List!12057)

(assert (=> b!1196773 (= e!768602 e!768603)))

(declare-fun c!198949 () Bool)

(assert (=> b!1196773 (= c!198949 ((_ is Leaf!6074) (right!10827 lt!410188)))))

(declare-fun b!1196772 () Bool)

(assert (=> b!1196772 (= e!768602 Nil!12033)))

(declare-fun d!341818 () Bool)

(declare-fun c!198948 () Bool)

(assert (=> d!341818 (= c!198948 ((_ is Empty!3966) (right!10827 lt!410188)))))

(assert (=> d!341818 (= (list!4465 (right!10827 lt!410188)) e!768602)))

(declare-fun b!1196774 () Bool)

(assert (=> b!1196774 (= e!768603 (list!4467 (xs!6673 (right!10827 lt!410188))))))

(declare-fun b!1196775 () Bool)

(assert (=> b!1196775 (= e!768603 (++!3068 (list!4465 (left!10497 (right!10827 lt!410188))) (list!4465 (right!10827 (right!10827 lt!410188)))))))

(assert (= (and d!341818 c!198948) b!1196772))

(assert (= (and d!341818 (not c!198948)) b!1196773))

(assert (= (and b!1196773 c!198949) b!1196774))

(assert (= (and b!1196773 (not c!198949)) b!1196775))

(declare-fun m!1371557 () Bool)

(assert (=> b!1196774 m!1371557))

(declare-fun m!1371559 () Bool)

(assert (=> b!1196775 m!1371559))

(declare-fun m!1371561 () Bool)

(assert (=> b!1196775 m!1371561))

(assert (=> b!1196775 m!1371559))

(assert (=> b!1196775 m!1371561))

(declare-fun m!1371563 () Bool)

(assert (=> b!1196775 m!1371563))

(assert (=> b!1196605 d!341818))

(declare-fun b!1196776 () Bool)

(declare-fun res!540148 () Bool)

(declare-fun e!768604 () Bool)

(assert (=> b!1196776 (=> (not res!540148) (not e!768604))))

(assert (=> b!1196776 (= res!540148 (isBalanced!1151 (left!10497 (right!10827 t!4115))))))

(declare-fun b!1196777 () Bool)

(declare-fun res!540149 () Bool)

(assert (=> b!1196777 (=> (not res!540149) (not e!768604))))

(assert (=> b!1196777 (= res!540149 (not (isEmpty!7244 (left!10497 (right!10827 t!4115)))))))

(declare-fun d!341820 () Bool)

(declare-fun res!540146 () Bool)

(declare-fun e!768605 () Bool)

(assert (=> d!341820 (=> res!540146 e!768605)))

(assert (=> d!341820 (= res!540146 (not ((_ is Node!3966) (right!10827 t!4115))))))

(assert (=> d!341820 (= (isBalanced!1151 (right!10827 t!4115)) e!768605)))

(declare-fun b!1196778 () Bool)

(assert (=> b!1196778 (= e!768604 (not (isEmpty!7244 (right!10827 (right!10827 t!4115)))))))

(declare-fun b!1196779 () Bool)

(declare-fun res!540147 () Bool)

(assert (=> b!1196779 (=> (not res!540147) (not e!768604))))

(assert (=> b!1196779 (= res!540147 (<= (- (height!559 (left!10497 (right!10827 t!4115))) (height!559 (right!10827 (right!10827 t!4115)))) 1))))

(declare-fun b!1196780 () Bool)

(declare-fun res!540145 () Bool)

(assert (=> b!1196780 (=> (not res!540145) (not e!768604))))

(assert (=> b!1196780 (= res!540145 (isBalanced!1151 (right!10827 (right!10827 t!4115))))))

(declare-fun b!1196781 () Bool)

(assert (=> b!1196781 (= e!768605 e!768604)))

(declare-fun res!540144 () Bool)

(assert (=> b!1196781 (=> (not res!540144) (not e!768604))))

(assert (=> b!1196781 (= res!540144 (<= (- 1) (- (height!559 (left!10497 (right!10827 t!4115))) (height!559 (right!10827 (right!10827 t!4115))))))))

(assert (= (and d!341820 (not res!540146)) b!1196781))

(assert (= (and b!1196781 res!540144) b!1196779))

(assert (= (and b!1196779 res!540147) b!1196776))

(assert (= (and b!1196776 res!540148) b!1196780))

(assert (= (and b!1196780 res!540145) b!1196777))

(assert (= (and b!1196777 res!540149) b!1196778))

(declare-fun m!1371565 () Bool)

(assert (=> b!1196780 m!1371565))

(declare-fun m!1371567 () Bool)

(assert (=> b!1196777 m!1371567))

(declare-fun m!1371569 () Bool)

(assert (=> b!1196779 m!1371569))

(declare-fun m!1371571 () Bool)

(assert (=> b!1196779 m!1371571))

(assert (=> b!1196781 m!1371569))

(assert (=> b!1196781 m!1371571))

(declare-fun m!1371573 () Bool)

(assert (=> b!1196778 m!1371573))

(declare-fun m!1371575 () Bool)

(assert (=> b!1196776 m!1371575))

(assert (=> b!1196561 d!341820))

(declare-fun d!341822 () Bool)

(declare-fun res!540150 () Bool)

(declare-fun e!768606 () Bool)

(assert (=> d!341822 (=> (not res!540150) (not e!768606))))

(assert (=> d!341822 (= res!540150 (<= (size!9551 (list!4467 (xs!6673 (left!10497 t!4115)))) 512))))

(assert (=> d!341822 (= (inv!16063 (left!10497 t!4115)) e!768606)))

(declare-fun b!1196782 () Bool)

(declare-fun res!540151 () Bool)

(assert (=> b!1196782 (=> (not res!540151) (not e!768606))))

(assert (=> b!1196782 (= res!540151 (= (csize!8163 (left!10497 t!4115)) (size!9551 (list!4467 (xs!6673 (left!10497 t!4115))))))))

(declare-fun b!1196783 () Bool)

(assert (=> b!1196783 (= e!768606 (and (> (csize!8163 (left!10497 t!4115)) 0) (<= (csize!8163 (left!10497 t!4115)) 512)))))

(assert (= (and d!341822 res!540150) b!1196782))

(assert (= (and b!1196782 res!540151) b!1196783))

(assert (=> d!341822 m!1371459))

(assert (=> d!341822 m!1371459))

(declare-fun m!1371577 () Bool)

(assert (=> d!341822 m!1371577))

(assert (=> b!1196782 m!1371459))

(assert (=> b!1196782 m!1371459))

(assert (=> b!1196782 m!1371577))

(assert (=> b!1196582 d!341822))

(declare-fun d!341824 () Bool)

(declare-fun res!540158 () Bool)

(declare-fun e!768609 () Bool)

(assert (=> d!341824 (=> (not res!540158) (not e!768609))))

(assert (=> d!341824 (= res!540158 (<= (size!9551 (list!4467 (xs!6673 (right!10827 t!4115)))) 512))))

(assert (=> d!341824 (= (inv!16063 (right!10827 t!4115)) e!768609)))

(declare-fun b!1196790 () Bool)

(declare-fun res!540159 () Bool)

(assert (=> b!1196790 (=> (not res!540159) (not e!768609))))

(assert (=> b!1196790 (= res!540159 (= (csize!8163 (right!10827 t!4115)) (size!9551 (list!4467 (xs!6673 (right!10827 t!4115))))))))

(declare-fun b!1196791 () Bool)

(assert (=> b!1196791 (= e!768609 (and (> (csize!8163 (right!10827 t!4115)) 0) (<= (csize!8163 (right!10827 t!4115)) 512)))))

(assert (= (and d!341824 res!540158) b!1196790))

(assert (= (and b!1196790 res!540159) b!1196791))

(assert (=> d!341824 m!1371467))

(assert (=> d!341824 m!1371467))

(declare-fun m!1371579 () Bool)

(assert (=> d!341824 m!1371579))

(assert (=> b!1196790 m!1371467))

(assert (=> b!1196790 m!1371467))

(assert (=> b!1196790 m!1371579))

(assert (=> b!1196589 d!341824))

(declare-fun d!341826 () Bool)

(assert (=> d!341826 (= (height!559 (left!10497 t!4115)) (ite ((_ is Empty!3966) (left!10497 t!4115)) 0 (ite ((_ is Leaf!6074) (left!10497 t!4115)) 1 (cheight!4177 (left!10497 t!4115)))))))

(assert (=> b!1196560 d!341826))

(declare-fun d!341828 () Bool)

(assert (=> d!341828 (= (height!559 (right!10827 t!4115)) (ite ((_ is Empty!3966) (right!10827 t!4115)) 0 (ite ((_ is Leaf!6074) (right!10827 t!4115)) 1 (cheight!4177 (right!10827 t!4115)))))))

(assert (=> b!1196560 d!341828))

(assert (=> b!1196562 d!341826))

(assert (=> b!1196562 d!341828))

(assert (=> b!1196541 d!341732))

(assert (=> b!1196541 d!341734))

(declare-fun d!341830 () Bool)

(assert (=> d!341830 (= (slice!459 (list!4467 (xs!6673 t!4115)) from!553 until!31) (take!121 (drop!593 (list!4467 (xs!6673 t!4115)) from!553) (- until!31 from!553)))))

(declare-fun bs!288115 () Bool)

(assert (= bs!288115 d!341830))

(assert (=> bs!288115 m!1371343))

(declare-fun m!1371581 () Bool)

(assert (=> bs!288115 m!1371581))

(assert (=> bs!288115 m!1371581))

(declare-fun m!1371583 () Bool)

(assert (=> bs!288115 m!1371583))

(assert (=> d!341750 d!341830))

(assert (=> d!341750 d!341778))

(declare-fun _$4!211 () IArray!7937)

(declare-fun d!341832 () Bool)

(assert (=> d!341832 (= _$4!211 (IArray!7938 (slice!459 (list!4467 (xs!6673 t!4115)) from!553 until!31)))))

(declare-fun e!768613 () Bool)

(assert (=> d!341832 (and (inv!16061 _$4!211) e!768613)))

(assert (=> d!341832 (= (choose!7722 (xs!6673 t!4115) from!553 until!31) _$4!211)))

(declare-fun b!1196797 () Bool)

(declare-fun tp!340816 () Bool)

(assert (=> b!1196797 (= e!768613 tp!340816)))

(assert (= d!341832 b!1196797))

(assert (=> d!341832 m!1371343))

(assert (=> d!341832 m!1371343))

(assert (=> d!341832 m!1371387))

(declare-fun m!1371591 () Bool)

(assert (=> d!341832 m!1371591))

(assert (=> d!341750 d!341832))

(declare-fun d!341836 () Bool)

(declare-fun c!198950 () Bool)

(assert (=> d!341836 (= c!198950 ((_ is Node!3966) (left!10497 (left!10497 t!4115))))))

(declare-fun e!768614 () Bool)

(assert (=> d!341836 (= (inv!16060 (left!10497 (left!10497 t!4115))) e!768614)))

(declare-fun b!1196798 () Bool)

(assert (=> b!1196798 (= e!768614 (inv!16062 (left!10497 (left!10497 t!4115))))))

(declare-fun b!1196799 () Bool)

(declare-fun e!768615 () Bool)

(assert (=> b!1196799 (= e!768614 e!768615)))

(declare-fun res!540163 () Bool)

(assert (=> b!1196799 (= res!540163 (not ((_ is Leaf!6074) (left!10497 (left!10497 t!4115)))))))

(assert (=> b!1196799 (=> res!540163 e!768615)))

(declare-fun b!1196800 () Bool)

(assert (=> b!1196800 (= e!768615 (inv!16063 (left!10497 (left!10497 t!4115))))))

(assert (= (and d!341836 c!198950) b!1196798))

(assert (= (and d!341836 (not c!198950)) b!1196799))

(assert (= (and b!1196799 (not res!540163)) b!1196800))

(declare-fun m!1371593 () Bool)

(assert (=> b!1196798 m!1371593))

(declare-fun m!1371595 () Bool)

(assert (=> b!1196800 m!1371595))

(assert (=> b!1196654 d!341836))

(declare-fun d!341838 () Bool)

(declare-fun c!198951 () Bool)

(assert (=> d!341838 (= c!198951 ((_ is Node!3966) (right!10827 (left!10497 t!4115))))))

(declare-fun e!768618 () Bool)

(assert (=> d!341838 (= (inv!16060 (right!10827 (left!10497 t!4115))) e!768618)))

(declare-fun b!1196805 () Bool)

(assert (=> b!1196805 (= e!768618 (inv!16062 (right!10827 (left!10497 t!4115))))))

(declare-fun b!1196806 () Bool)

(declare-fun e!768619 () Bool)

(assert (=> b!1196806 (= e!768618 e!768619)))

(declare-fun res!540168 () Bool)

(assert (=> b!1196806 (= res!540168 (not ((_ is Leaf!6074) (right!10827 (left!10497 t!4115)))))))

(assert (=> b!1196806 (=> res!540168 e!768619)))

(declare-fun b!1196807 () Bool)

(assert (=> b!1196807 (= e!768619 (inv!16063 (right!10827 (left!10497 t!4115))))))

(assert (= (and d!341838 c!198951) b!1196805))

(assert (= (and d!341838 (not c!198951)) b!1196806))

(assert (= (and b!1196806 (not res!540168)) b!1196807))

(declare-fun m!1371597 () Bool)

(assert (=> b!1196805 m!1371597))

(declare-fun m!1371599 () Bool)

(assert (=> b!1196807 m!1371599))

(assert (=> b!1196654 d!341838))

(declare-fun d!341840 () Bool)

(declare-fun lt!410217 () Bool)

(assert (=> d!341840 (= lt!410217 (isEmpty!7246 (list!4465 (left!10497 lt!410188))))))

(assert (=> d!341840 (= lt!410217 (= (size!9547 (left!10497 lt!410188)) 0))))

(assert (=> d!341840 (= (isEmpty!7244 (left!10497 lt!410188)) lt!410217)))

(declare-fun bs!288116 () Bool)

(assert (= bs!288116 d!341840))

(assert (=> bs!288116 m!1371333))

(assert (=> bs!288116 m!1371333))

(declare-fun m!1371601 () Bool)

(assert (=> bs!288116 m!1371601))

(declare-fun m!1371603 () Bool)

(assert (=> bs!288116 m!1371603))

(assert (=> b!1196623 d!341840))

(declare-fun d!341842 () Bool)

(assert (=> d!341842 (= (inv!16061 (xs!6673 (left!10497 t!4115))) (<= (size!9551 (innerList!4026 (xs!6673 (left!10497 t!4115)))) 2147483647))))

(declare-fun bs!288117 () Bool)

(assert (= bs!288117 d!341842))

(declare-fun m!1371605 () Bool)

(assert (=> bs!288117 m!1371605))

(assert (=> b!1196655 d!341842))

(declare-fun b!1196808 () Bool)

(declare-fun res!540173 () Bool)

(declare-fun e!768620 () Bool)

(assert (=> b!1196808 (=> (not res!540173) (not e!768620))))

(assert (=> b!1196808 (= res!540173 (isBalanced!1151 (left!10497 (left!10497 lt!410188))))))

(declare-fun b!1196809 () Bool)

(declare-fun res!540174 () Bool)

(assert (=> b!1196809 (=> (not res!540174) (not e!768620))))

(assert (=> b!1196809 (= res!540174 (not (isEmpty!7244 (left!10497 (left!10497 lt!410188)))))))

(declare-fun d!341844 () Bool)

(declare-fun res!540171 () Bool)

(declare-fun e!768621 () Bool)

(assert (=> d!341844 (=> res!540171 e!768621)))

(assert (=> d!341844 (= res!540171 (not ((_ is Node!3966) (left!10497 lt!410188))))))

(assert (=> d!341844 (= (isBalanced!1151 (left!10497 lt!410188)) e!768621)))

(declare-fun b!1196810 () Bool)

(assert (=> b!1196810 (= e!768620 (not (isEmpty!7244 (right!10827 (left!10497 lt!410188)))))))

(declare-fun b!1196811 () Bool)

(declare-fun res!540172 () Bool)

(assert (=> b!1196811 (=> (not res!540172) (not e!768620))))

(assert (=> b!1196811 (= res!540172 (<= (- (height!559 (left!10497 (left!10497 lt!410188))) (height!559 (right!10827 (left!10497 lt!410188)))) 1))))

(declare-fun b!1196812 () Bool)

(declare-fun res!540170 () Bool)

(assert (=> b!1196812 (=> (not res!540170) (not e!768620))))

(assert (=> b!1196812 (= res!540170 (isBalanced!1151 (right!10827 (left!10497 lt!410188))))))

(declare-fun b!1196813 () Bool)

(assert (=> b!1196813 (= e!768621 e!768620)))

(declare-fun res!540169 () Bool)

(assert (=> b!1196813 (=> (not res!540169) (not e!768620))))

(assert (=> b!1196813 (= res!540169 (<= (- 1) (- (height!559 (left!10497 (left!10497 lt!410188))) (height!559 (right!10827 (left!10497 lt!410188))))))))

(assert (= (and d!341844 (not res!540171)) b!1196813))

(assert (= (and b!1196813 res!540169) b!1196811))

(assert (= (and b!1196811 res!540172) b!1196808))

(assert (= (and b!1196808 res!540173) b!1196812))

(assert (= (and b!1196812 res!540170) b!1196809))

(assert (= (and b!1196809 res!540174) b!1196810))

(declare-fun m!1371607 () Bool)

(assert (=> b!1196812 m!1371607))

(declare-fun m!1371609 () Bool)

(assert (=> b!1196809 m!1371609))

(declare-fun m!1371611 () Bool)

(assert (=> b!1196811 m!1371611))

(declare-fun m!1371613 () Bool)

(assert (=> b!1196811 m!1371613))

(assert (=> b!1196813 m!1371611))

(assert (=> b!1196813 m!1371613))

(declare-fun m!1371615 () Bool)

(assert (=> b!1196810 m!1371615))

(declare-fun m!1371617 () Bool)

(assert (=> b!1196808 m!1371617))

(assert (=> b!1196622 d!341844))

(declare-fun b!1196814 () Bool)

(declare-fun res!540179 () Bool)

(declare-fun e!768622 () Bool)

(assert (=> b!1196814 (=> (not res!540179) (not e!768622))))

(assert (=> b!1196814 (= res!540179 (isBalanced!1151 (left!10497 (left!10497 t!4115))))))

(declare-fun b!1196815 () Bool)

(declare-fun res!540180 () Bool)

(assert (=> b!1196815 (=> (not res!540180) (not e!768622))))

(assert (=> b!1196815 (= res!540180 (not (isEmpty!7244 (left!10497 (left!10497 t!4115)))))))

(declare-fun d!341846 () Bool)

(declare-fun res!540177 () Bool)

(declare-fun e!768623 () Bool)

(assert (=> d!341846 (=> res!540177 e!768623)))

(assert (=> d!341846 (= res!540177 (not ((_ is Node!3966) (left!10497 t!4115))))))

(assert (=> d!341846 (= (isBalanced!1151 (left!10497 t!4115)) e!768623)))

(declare-fun b!1196816 () Bool)

(assert (=> b!1196816 (= e!768622 (not (isEmpty!7244 (right!10827 (left!10497 t!4115)))))))

(declare-fun b!1196817 () Bool)

(declare-fun res!540178 () Bool)

(assert (=> b!1196817 (=> (not res!540178) (not e!768622))))

(assert (=> b!1196817 (= res!540178 (<= (- (height!559 (left!10497 (left!10497 t!4115))) (height!559 (right!10827 (left!10497 t!4115)))) 1))))

(declare-fun b!1196818 () Bool)

(declare-fun res!540176 () Bool)

(assert (=> b!1196818 (=> (not res!540176) (not e!768622))))

(assert (=> b!1196818 (= res!540176 (isBalanced!1151 (right!10827 (left!10497 t!4115))))))

(declare-fun b!1196819 () Bool)

(assert (=> b!1196819 (= e!768623 e!768622)))

(declare-fun res!540175 () Bool)

(assert (=> b!1196819 (=> (not res!540175) (not e!768622))))

(assert (=> b!1196819 (= res!540175 (<= (- 1) (- (height!559 (left!10497 (left!10497 t!4115))) (height!559 (right!10827 (left!10497 t!4115))))))))

(assert (= (and d!341846 (not res!540177)) b!1196819))

(assert (= (and b!1196819 res!540175) b!1196817))

(assert (= (and b!1196817 res!540178) b!1196814))

(assert (= (and b!1196814 res!540179) b!1196818))

(assert (= (and b!1196818 res!540176) b!1196815))

(assert (= (and b!1196815 res!540180) b!1196816))

(declare-fun m!1371619 () Bool)

(assert (=> b!1196818 m!1371619))

(declare-fun m!1371621 () Bool)

(assert (=> b!1196815 m!1371621))

(declare-fun m!1371623 () Bool)

(assert (=> b!1196817 m!1371623))

(declare-fun m!1371625 () Bool)

(assert (=> b!1196817 m!1371625))

(assert (=> b!1196819 m!1371623))

(assert (=> b!1196819 m!1371625))

(declare-fun m!1371627 () Bool)

(assert (=> b!1196816 m!1371627))

(declare-fun m!1371629 () Bool)

(assert (=> b!1196814 m!1371629))

(assert (=> b!1196557 d!341846))

(declare-fun d!341848 () Bool)

(declare-fun res!540183 () Bool)

(declare-fun e!768625 () Bool)

(assert (=> d!341848 (=> (not res!540183) (not e!768625))))

(assert (=> d!341848 (= res!540183 (= (csize!8162 (right!10827 t!4115)) (+ (size!9547 (left!10497 (right!10827 t!4115))) (size!9547 (right!10827 (right!10827 t!4115))))))))

(assert (=> d!341848 (= (inv!16062 (right!10827 t!4115)) e!768625)))

(declare-fun b!1196822 () Bool)

(declare-fun res!540184 () Bool)

(assert (=> b!1196822 (=> (not res!540184) (not e!768625))))

(assert (=> b!1196822 (= res!540184 (and (not (= (left!10497 (right!10827 t!4115)) Empty!3966)) (not (= (right!10827 (right!10827 t!4115)) Empty!3966))))))

(declare-fun b!1196823 () Bool)

(declare-fun res!540185 () Bool)

(assert (=> b!1196823 (=> (not res!540185) (not e!768625))))

(assert (=> b!1196823 (= res!540185 (= (cheight!4177 (right!10827 t!4115)) (+ (max!0 (height!559 (left!10497 (right!10827 t!4115))) (height!559 (right!10827 (right!10827 t!4115)))) 1)))))

(declare-fun b!1196824 () Bool)

(assert (=> b!1196824 (= e!768625 (<= 0 (cheight!4177 (right!10827 t!4115))))))

(assert (= (and d!341848 res!540183) b!1196822))

(assert (= (and b!1196822 res!540184) b!1196823))

(assert (= (and b!1196823 res!540185) b!1196824))

(declare-fun m!1371635 () Bool)

(assert (=> d!341848 m!1371635))

(declare-fun m!1371637 () Bool)

(assert (=> d!341848 m!1371637))

(assert (=> b!1196823 m!1371569))

(assert (=> b!1196823 m!1371571))

(assert (=> b!1196823 m!1371569))

(assert (=> b!1196823 m!1371571))

(declare-fun m!1371639 () Bool)

(assert (=> b!1196823 m!1371639))

(assert (=> b!1196587 d!341848))

(declare-fun d!341852 () Bool)

(declare-fun lt!410218 () Bool)

(assert (=> d!341852 (= lt!410218 (isEmpty!7246 (list!4465 (left!10497 t!4115))))))

(assert (=> d!341852 (= lt!410218 (= (size!9547 (left!10497 t!4115)) 0))))

(assert (=> d!341852 (= (isEmpty!7244 (left!10497 t!4115)) lt!410218)))

(declare-fun bs!288118 () Bool)

(assert (= bs!288118 d!341852))

(assert (=> bs!288118 m!1371345))

(assert (=> bs!288118 m!1371345))

(declare-fun m!1371645 () Bool)

(assert (=> bs!288118 m!1371645))

(assert (=> bs!288118 m!1371479))

(assert (=> b!1196558 d!341852))

(declare-fun b!1196857 () Bool)

(declare-fun e!768647 () List!12057)

(assert (=> b!1196857 (= e!768647 Nil!12033)))

(declare-fun b!1196858 () Bool)

(declare-fun e!768646 () Bool)

(declare-fun lt!410224 () List!12057)

(declare-fun e!768644 () Int)

(assert (=> b!1196858 (= e!768646 (= (size!9551 lt!410224) e!768644))))

(declare-fun c!198963 () Bool)

(assert (=> b!1196858 (= c!198963 (<= (- until!31 from!553) 0))))

(declare-fun b!1196859 () Bool)

(assert (=> b!1196859 (= e!768647 (Cons!12033 (h!17434 (drop!593 (list!4465 t!4115) from!553)) (take!121 (t!112377 (drop!593 (list!4465 t!4115) from!553)) (- (- until!31 from!553) 1))))))

(declare-fun b!1196860 () Bool)

(assert (=> b!1196860 (= e!768644 0)))

(declare-fun d!341856 () Bool)

(assert (=> d!341856 e!768646))

(declare-fun res!540196 () Bool)

(assert (=> d!341856 (=> (not res!540196) (not e!768646))))

(assert (=> d!341856 (= res!540196 (= ((_ map implies) (content!1679 lt!410224) (content!1679 (drop!593 (list!4465 t!4115) from!553))) ((as const (InoxSet T!21712)) true)))))

(assert (=> d!341856 (= lt!410224 e!768647)))

(declare-fun c!198964 () Bool)

(assert (=> d!341856 (= c!198964 (or ((_ is Nil!12033) (drop!593 (list!4465 t!4115) from!553)) (<= (- until!31 from!553) 0)))))

(assert (=> d!341856 (= (take!121 (drop!593 (list!4465 t!4115) from!553) (- until!31 from!553)) lt!410224)))

(declare-fun b!1196861 () Bool)

(declare-fun e!768645 () Int)

(assert (=> b!1196861 (= e!768645 (- until!31 from!553))))

(declare-fun b!1196862 () Bool)

(assert (=> b!1196862 (= e!768645 (size!9551 (drop!593 (list!4465 t!4115) from!553)))))

(declare-fun b!1196863 () Bool)

(assert (=> b!1196863 (= e!768644 e!768645)))

(declare-fun c!198965 () Bool)

(assert (=> b!1196863 (= c!198965 (>= (- until!31 from!553) (size!9551 (drop!593 (list!4465 t!4115) from!553))))))

(assert (= (and d!341856 c!198964) b!1196857))

(assert (= (and d!341856 (not c!198964)) b!1196859))

(assert (= (and d!341856 res!540196) b!1196858))

(assert (= (and b!1196858 c!198963) b!1196860))

(assert (= (and b!1196858 (not c!198963)) b!1196863))

(assert (= (and b!1196863 c!198965) b!1196862))

(assert (= (and b!1196863 (not c!198965)) b!1196861))

(declare-fun m!1371661 () Bool)

(assert (=> d!341856 m!1371661))

(assert (=> d!341856 m!1371339))

(declare-fun m!1371665 () Bool)

(assert (=> d!341856 m!1371665))

(assert (=> b!1196863 m!1371339))

(declare-fun m!1371669 () Bool)

(assert (=> b!1196863 m!1371669))

(declare-fun m!1371671 () Bool)

(assert (=> b!1196858 m!1371671))

(declare-fun m!1371673 () Bool)

(assert (=> b!1196859 m!1371673))

(assert (=> b!1196862 m!1371339))

(assert (=> b!1196862 m!1371669))

(assert (=> d!341744 d!341856))

(declare-fun b!1196907 () Bool)

(declare-fun e!768675 () Int)

(assert (=> b!1196907 (= e!768675 0)))

(declare-fun b!1196908 () Bool)

(declare-fun e!768674 () Int)

(declare-fun call!83243 () Int)

(assert (=> b!1196908 (= e!768674 call!83243)))

(declare-fun b!1196909 () Bool)

(assert (=> b!1196909 (= e!768674 e!768675)))

(declare-fun c!198985 () Bool)

(assert (=> b!1196909 (= c!198985 (>= from!553 call!83243))))

(declare-fun b!1196910 () Bool)

(assert (=> b!1196910 (= e!768675 (- call!83243 from!553))))

(declare-fun b!1196911 () Bool)

(declare-fun e!768673 () List!12057)

(assert (=> b!1196911 (= e!768673 (drop!593 (t!112377 (list!4465 t!4115)) (- from!553 1)))))

(declare-fun b!1196912 () Bool)

(declare-fun e!768672 () List!12057)

(assert (=> b!1196912 (= e!768672 Nil!12033)))

(declare-fun b!1196913 () Bool)

(declare-fun e!768676 () Bool)

(declare-fun lt!410229 () List!12057)

(assert (=> b!1196913 (= e!768676 (= (size!9551 lt!410229) e!768674))))

(declare-fun c!198983 () Bool)

(assert (=> b!1196913 (= c!198983 (<= from!553 0))))

(declare-fun b!1196914 () Bool)

(assert (=> b!1196914 (= e!768672 e!768673)))

(declare-fun c!198984 () Bool)

(assert (=> b!1196914 (= c!198984 (<= from!553 0))))

(declare-fun bm!83238 () Bool)

(assert (=> bm!83238 (= call!83243 (size!9551 (list!4465 t!4115)))))

(declare-fun d!341862 () Bool)

(assert (=> d!341862 e!768676))

(declare-fun res!540203 () Bool)

(assert (=> d!341862 (=> (not res!540203) (not e!768676))))

(assert (=> d!341862 (= res!540203 (= ((_ map implies) (content!1679 lt!410229) (content!1679 (list!4465 t!4115))) ((as const (InoxSet T!21712)) true)))))

(assert (=> d!341862 (= lt!410229 e!768672)))

(declare-fun c!198986 () Bool)

(assert (=> d!341862 (= c!198986 ((_ is Nil!12033) (list!4465 t!4115)))))

(assert (=> d!341862 (= (drop!593 (list!4465 t!4115) from!553) lt!410229)))

(declare-fun b!1196915 () Bool)

(assert (=> b!1196915 (= e!768673 (list!4465 t!4115))))

(assert (= (and d!341862 c!198986) b!1196912))

(assert (= (and d!341862 (not c!198986)) b!1196914))

(assert (= (and b!1196914 c!198984) b!1196915))

(assert (= (and b!1196914 (not c!198984)) b!1196911))

(assert (= (and d!341862 res!540203) b!1196913))

(assert (= (and b!1196913 c!198983) b!1196908))

(assert (= (and b!1196913 (not c!198983)) b!1196909))

(assert (= (and b!1196909 c!198985) b!1196907))

(assert (= (and b!1196909 (not c!198985)) b!1196910))

(assert (= (or b!1196908 b!1196909 b!1196910) bm!83238))

(declare-fun m!1371733 () Bool)

(assert (=> b!1196911 m!1371733))

(declare-fun m!1371735 () Bool)

(assert (=> b!1196913 m!1371735))

(assert (=> bm!83238 m!1371275))

(assert (=> bm!83238 m!1371401))

(declare-fun m!1371737 () Bool)

(assert (=> d!341862 m!1371737))

(assert (=> d!341862 m!1371275))

(declare-fun m!1371739 () Bool)

(assert (=> d!341862 m!1371739))

(assert (=> d!341744 d!341862))

(declare-fun d!341884 () Bool)

(declare-fun lt!410230 () Int)

(assert (=> d!341884 (>= lt!410230 0)))

(declare-fun e!768677 () Int)

(assert (=> d!341884 (= lt!410230 e!768677)))

(declare-fun c!198987 () Bool)

(assert (=> d!341884 (= c!198987 ((_ is Nil!12033) (innerList!4026 (xs!6673 t!4115))))))

(assert (=> d!341884 (= (size!9551 (innerList!4026 (xs!6673 t!4115))) lt!410230)))

(declare-fun b!1196916 () Bool)

(assert (=> b!1196916 (= e!768677 0)))

(declare-fun b!1196917 () Bool)

(assert (=> b!1196917 (= e!768677 (+ 1 (size!9551 (t!112377 (innerList!4026 (xs!6673 t!4115))))))))

(assert (= (and d!341884 c!198987) b!1196916))

(assert (= (and d!341884 (not c!198987)) b!1196917))

(declare-fun m!1371741 () Bool)

(assert (=> b!1196917 m!1371741))

(assert (=> d!341756 d!341884))

(declare-fun d!341886 () Bool)

(declare-fun lt!410233 () Bool)

(assert (=> d!341886 (= lt!410233 (isEmpty!7246 (list!4465 (right!10827 t!4115))))))

(assert (=> d!341886 (= lt!410233 (= (size!9547 (right!10827 t!4115)) 0))))

(assert (=> d!341886 (= (isEmpty!7244 (right!10827 t!4115)) lt!410233)))

(declare-fun bs!288122 () Bool)

(assert (= bs!288122 d!341886))

(assert (=> bs!288122 m!1371347))

(assert (=> bs!288122 m!1371347))

(declare-fun m!1371743 () Bool)

(assert (=> bs!288122 m!1371743))

(assert (=> bs!288122 m!1371481))

(assert (=> b!1196559 d!341886))

(declare-fun d!341888 () Bool)

(declare-fun res!540204 () Bool)

(declare-fun e!768680 () Bool)

(assert (=> d!341888 (=> (not res!540204) (not e!768680))))

(assert (=> d!341888 (= res!540204 (= (csize!8162 (left!10497 t!4115)) (+ (size!9547 (left!10497 (left!10497 t!4115))) (size!9547 (right!10827 (left!10497 t!4115))))))))

(assert (=> d!341888 (= (inv!16062 (left!10497 t!4115)) e!768680)))

(declare-fun b!1196922 () Bool)

(declare-fun res!540205 () Bool)

(assert (=> b!1196922 (=> (not res!540205) (not e!768680))))

(assert (=> b!1196922 (= res!540205 (and (not (= (left!10497 (left!10497 t!4115)) Empty!3966)) (not (= (right!10827 (left!10497 t!4115)) Empty!3966))))))

(declare-fun b!1196923 () Bool)

(declare-fun res!540206 () Bool)

(assert (=> b!1196923 (=> (not res!540206) (not e!768680))))

(assert (=> b!1196923 (= res!540206 (= (cheight!4177 (left!10497 t!4115)) (+ (max!0 (height!559 (left!10497 (left!10497 t!4115))) (height!559 (right!10827 (left!10497 t!4115)))) 1)))))

(declare-fun b!1196924 () Bool)

(assert (=> b!1196924 (= e!768680 (<= 0 (cheight!4177 (left!10497 t!4115))))))

(assert (= (and d!341888 res!540204) b!1196922))

(assert (= (and b!1196922 res!540205) b!1196923))

(assert (= (and b!1196923 res!540206) b!1196924))

(declare-fun m!1371745 () Bool)

(assert (=> d!341888 m!1371745))

(declare-fun m!1371747 () Bool)

(assert (=> d!341888 m!1371747))

(assert (=> b!1196923 m!1371623))

(assert (=> b!1196923 m!1371625))

(assert (=> b!1196923 m!1371623))

(assert (=> b!1196923 m!1371625))

(declare-fun m!1371749 () Bool)

(assert (=> b!1196923 m!1371749))

(assert (=> b!1196580 d!341888))

(declare-fun b!1196925 () Bool)

(declare-fun e!768681 () Bool)

(declare-fun tp!340820 () Bool)

(assert (=> b!1196925 (= e!768681 (and tp_is_empty!5957 tp!340820))))

(assert (=> b!1196670 (= tp!340798 e!768681)))

(assert (= (and b!1196670 ((_ is Cons!12033) (t!112377 (innerList!4026 (xs!6673 t!4115))))) b!1196925))

(declare-fun b!1196928 () Bool)

(declare-fun e!768683 () Bool)

(declare-fun tp!340821 () Bool)

(assert (=> b!1196928 (= e!768683 (and tp_is_empty!5957 tp!340821))))

(assert (=> b!1196656 (= tp!340790 e!768683)))

(assert (= (and b!1196656 ((_ is Cons!12033) (innerList!4026 (xs!6673 (left!10497 t!4115))))) b!1196928))

(declare-fun b!1196929 () Bool)

(declare-fun tp!340823 () Bool)

(declare-fun e!768685 () Bool)

(declare-fun tp!340824 () Bool)

(assert (=> b!1196929 (= e!768685 (and (inv!16060 (left!10497 (left!10497 (right!10827 t!4115)))) tp!340823 (inv!16060 (right!10827 (left!10497 (right!10827 t!4115)))) tp!340824))))

(declare-fun b!1196931 () Bool)

(declare-fun e!768684 () Bool)

(declare-fun tp!340822 () Bool)

(assert (=> b!1196931 (= e!768684 tp!340822)))

(declare-fun b!1196930 () Bool)

(assert (=> b!1196930 (= e!768685 (and (inv!16061 (xs!6673 (left!10497 (right!10827 t!4115)))) e!768684))))

(assert (=> b!1196661 (= tp!340794 (and (inv!16060 (left!10497 (right!10827 t!4115))) e!768685))))

(assert (= (and b!1196661 ((_ is Node!3966) (left!10497 (right!10827 t!4115)))) b!1196929))

(assert (= b!1196930 b!1196931))

(assert (= (and b!1196661 ((_ is Leaf!6074) (left!10497 (right!10827 t!4115)))) b!1196930))

(declare-fun m!1371753 () Bool)

(assert (=> b!1196929 m!1371753))

(declare-fun m!1371757 () Bool)

(assert (=> b!1196929 m!1371757))

(declare-fun m!1371761 () Bool)

(assert (=> b!1196930 m!1371761))

(assert (=> b!1196661 m!1371409))

(declare-fun b!1196935 () Bool)

(declare-fun tp!340827 () Bool)

(declare-fun tp!340826 () Bool)

(declare-fun e!768689 () Bool)

(assert (=> b!1196935 (= e!768689 (and (inv!16060 (left!10497 (right!10827 (right!10827 t!4115)))) tp!340826 (inv!16060 (right!10827 (right!10827 (right!10827 t!4115)))) tp!340827))))

(declare-fun b!1196937 () Bool)

(declare-fun e!768688 () Bool)

(declare-fun tp!340825 () Bool)

(assert (=> b!1196937 (= e!768688 tp!340825)))

(declare-fun b!1196936 () Bool)

(assert (=> b!1196936 (= e!768689 (and (inv!16061 (xs!6673 (right!10827 (right!10827 t!4115)))) e!768688))))

(assert (=> b!1196661 (= tp!340795 (and (inv!16060 (right!10827 (right!10827 t!4115))) e!768689))))

(assert (= (and b!1196661 ((_ is Node!3966) (right!10827 (right!10827 t!4115)))) b!1196935))

(assert (= b!1196936 b!1196937))

(assert (= (and b!1196661 ((_ is Leaf!6074) (right!10827 (right!10827 t!4115)))) b!1196936))

(declare-fun m!1371767 () Bool)

(assert (=> b!1196935 m!1371767))

(declare-fun m!1371769 () Bool)

(assert (=> b!1196935 m!1371769))

(declare-fun m!1371771 () Bool)

(assert (=> b!1196936 m!1371771))

(assert (=> b!1196661 m!1371411))

(declare-fun b!1196941 () Bool)

(declare-fun e!768692 () Bool)

(declare-fun tp!340828 () Bool)

(assert (=> b!1196941 (= e!768692 (and tp_is_empty!5957 tp!340828))))

(assert (=> b!1196663 (= tp!340793 e!768692)))

(assert (= (and b!1196663 ((_ is Cons!12033) (innerList!4026 (xs!6673 (right!10827 t!4115))))) b!1196941))

(declare-fun e!768694 () Bool)

(declare-fun tp!340830 () Bool)

(declare-fun b!1196942 () Bool)

(declare-fun tp!340831 () Bool)

(assert (=> b!1196942 (= e!768694 (and (inv!16060 (left!10497 (left!10497 (left!10497 t!4115)))) tp!340830 (inv!16060 (right!10827 (left!10497 (left!10497 t!4115)))) tp!340831))))

(declare-fun b!1196944 () Bool)

(declare-fun e!768693 () Bool)

(declare-fun tp!340829 () Bool)

(assert (=> b!1196944 (= e!768693 tp!340829)))

(declare-fun b!1196943 () Bool)

(assert (=> b!1196943 (= e!768694 (and (inv!16061 (xs!6673 (left!10497 (left!10497 t!4115)))) e!768693))))

(assert (=> b!1196654 (= tp!340791 (and (inv!16060 (left!10497 (left!10497 t!4115))) e!768694))))

(assert (= (and b!1196654 ((_ is Node!3966) (left!10497 (left!10497 t!4115)))) b!1196942))

(assert (= b!1196943 b!1196944))

(assert (= (and b!1196654 ((_ is Leaf!6074) (left!10497 (left!10497 t!4115)))) b!1196943))

(declare-fun m!1371773 () Bool)

(assert (=> b!1196942 m!1371773))

(declare-fun m!1371775 () Bool)

(assert (=> b!1196942 m!1371775))

(declare-fun m!1371777 () Bool)

(assert (=> b!1196943 m!1371777))

(assert (=> b!1196654 m!1371403))

(declare-fun tp!340833 () Bool)

(declare-fun b!1196945 () Bool)

(declare-fun tp!340834 () Bool)

(declare-fun e!768696 () Bool)

(assert (=> b!1196945 (= e!768696 (and (inv!16060 (left!10497 (right!10827 (left!10497 t!4115)))) tp!340833 (inv!16060 (right!10827 (right!10827 (left!10497 t!4115)))) tp!340834))))

(declare-fun b!1196947 () Bool)

(declare-fun e!768695 () Bool)

(declare-fun tp!340832 () Bool)

(assert (=> b!1196947 (= e!768695 tp!340832)))

(declare-fun b!1196946 () Bool)

(assert (=> b!1196946 (= e!768696 (and (inv!16061 (xs!6673 (right!10827 (left!10497 t!4115)))) e!768695))))

(assert (=> b!1196654 (= tp!340792 (and (inv!16060 (right!10827 (left!10497 t!4115))) e!768696))))

(assert (= (and b!1196654 ((_ is Node!3966) (right!10827 (left!10497 t!4115)))) b!1196945))

(assert (= b!1196946 b!1196947))

(assert (= (and b!1196654 ((_ is Leaf!6074) (right!10827 (left!10497 t!4115)))) b!1196946))

(declare-fun m!1371779 () Bool)

(assert (=> b!1196945 m!1371779))

(declare-fun m!1371781 () Bool)

(assert (=> b!1196945 m!1371781))

(declare-fun m!1371783 () Bool)

(assert (=> b!1196946 m!1371783))

(assert (=> b!1196654 m!1371405))

(check-sat (not b!1196911) (not b!1196813) (not b!1196743) (not d!341770) (not b!1196720) (not d!341886) (not b!1196945) (not d!341824) (not b!1196817) (not d!341812) (not b!1196929) (not b!1196715) (not b!1196798) (not b!1196776) (not b!1196800) (not b!1196812) (not b!1196781) (not d!341840) (not b!1196913) (not d!341856) (not b!1196859) (not b!1196943) (not b!1196714) (not b!1196774) (not b!1196944) (not b!1196925) (not b!1196770) (not b!1196946) (not b!1196917) (not b!1196947) (not d!341862) (not b!1196862) (not b!1196779) (not d!341842) (not b!1196704) (not b!1196742) (not b!1196797) (not b!1196771) (not b!1196753) (not b!1196752) (not b!1196931) (not d!341780) (not b!1196809) (not b!1196935) (not b!1196756) (not b!1196780) (not b!1196928) (not b!1196765) (not b!1196805) (not b!1196941) (not b!1196923) (not b!1196863) (not b!1196814) (not b!1196937) (not b!1196819) (not b!1196719) (not bm!83238) (not b!1196654) (not d!341888) (not d!341810) (not d!341832) (not b!1196782) (not b!1196732) (not b!1196936) (not b!1196818) (not b!1196750) (not d!341794) (not b!1196790) (not b!1196724) (not b!1196815) (not b!1196775) (not b!1196823) (not b!1196810) (not b!1196755) tp_is_empty!5957 (not d!341852) (not b!1196757) (not b!1196777) (not d!341848) (not b!1196766) (not b!1196816) (not d!341766) (not d!341822) (not d!341776) (not b!1196754) (not b!1196778) (not b!1196811) (not b!1196807) (not b!1196942) (not b!1196858) (not b!1196808) (not b!1196661) (not b!1196723) (not b!1196740) (not b!1196930) (not b!1196745) (not d!341830))
(check-sat)
