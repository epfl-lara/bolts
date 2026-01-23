; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!407962 () Bool)

(assert start!407962)

(declare-fun b_free!126673 () Bool)

(declare-fun b_next!127377 () Bool)

(assert (=> start!407962 (= b_free!126673 (not b_next!127377))))

(declare-fun tp!1306569 () Bool)

(declare-fun b_and!337547 () Bool)

(assert (=> start!407962 (= tp!1306569 b_and!337547)))

(declare-fun b!4257621 () Bool)

(declare-fun e!2644363 () Bool)

(declare-fun e!2644361 () Bool)

(assert (=> b!4257621 (= e!2644363 e!2644361)))

(declare-fun res!1750243 () Bool)

(assert (=> b!4257621 (=> res!1750243 e!2644361)))

(declare-datatypes ((B!2809 0))(
  ( (B!2810 (val!15221 Int)) )
))
(declare-datatypes ((List!47350 0))(
  ( (Nil!47226) (Cons!47226 (h!52646 B!2809) (t!352987 List!47350)) )
))
(declare-datatypes ((IArray!28473 0))(
  ( (IArray!28474 (innerList!14294 List!47350)) )
))
(declare-datatypes ((Conc!14234 0))(
  ( (Node!14234 (left!35007 Conc!14234) (right!35337 Conc!14234) (csize!28698 Int) (cheight!14445 Int)) (Leaf!22000 (xs!17540 IArray!28473) (csize!28699 Int)) (Empty!14234) )
))
(declare-fun lt!1509976 () Conc!14234)

(declare-fun f!428 () Int)

(declare-datatypes ((T!79364 0))(
  ( (T!79365 (val!15222 Int)) )
))
(declare-datatypes ((List!47351 0))(
  ( (Nil!47227) (Cons!47227 (h!52647 T!79364) (t!352988 List!47351)) )
))
(declare-datatypes ((IArray!28475 0))(
  ( (IArray!28476 (innerList!14295 List!47351)) )
))
(declare-datatypes ((Conc!14235 0))(
  ( (Node!14235 (left!35008 Conc!14235) (right!35338 Conc!14235) (csize!28700 Int) (cheight!14446 Int)) (Leaf!22001 (xs!17541 IArray!28475) (csize!28701 Int)) (Empty!14235) )
))
(declare-fun t!4386 () Conc!14235)

(declare-fun list!17039 (Conc!14234) List!47350)

(declare-fun map!9652 (List!47351 Int) List!47350)

(declare-fun list!17040 (Conc!14235) List!47351)

(assert (=> b!4257621 (= res!1750243 (not (= (list!17039 lt!1509976) (map!9652 (list!17040 t!4386) f!428))))))

(declare-fun map!9653 (IArray!28475 Int) IArray!28473)

(assert (=> b!4257621 (= lt!1509976 (Leaf!22000 (map!9653 (xs!17541 t!4386) f!428) (csize!28701 t!4386)))))

(declare-fun tp!1306570 () Bool)

(declare-fun tp!1306567 () Bool)

(declare-fun b!4257622 () Bool)

(declare-fun e!2644364 () Bool)

(declare-fun inv!62094 (Conc!14235) Bool)

(assert (=> b!4257622 (= e!2644364 (and (inv!62094 (left!35008 t!4386)) tp!1306570 (inv!62094 (right!35338 t!4386)) tp!1306567))))

(declare-fun res!1750242 () Bool)

(assert (=> start!407962 (=> (not res!1750242) (not e!2644363))))

(declare-fun isBalanced!3793 (Conc!14235) Bool)

(assert (=> start!407962 (= res!1750242 (isBalanced!3793 t!4386))))

(assert (=> start!407962 e!2644363))

(assert (=> start!407962 (and (inv!62094 t!4386) e!2644364)))

(assert (=> start!407962 tp!1306569))

(declare-fun b!4257623 () Bool)

(declare-fun e!2644362 () Bool)

(declare-fun inv!62095 (IArray!28475) Bool)

(assert (=> b!4257623 (= e!2644364 (and (inv!62095 (xs!17541 t!4386)) e!2644362))))

(declare-fun b!4257624 () Bool)

(declare-fun tp!1306568 () Bool)

(assert (=> b!4257624 (= e!2644362 tp!1306568)))

(declare-fun b!4257625 () Bool)

(declare-fun isBalanced!3794 (Conc!14234) Bool)

(assert (=> b!4257625 (= e!2644361 (not (isBalanced!3794 lt!1509976)))))

(declare-fun b!4257626 () Bool)

(declare-fun res!1750241 () Bool)

(assert (=> b!4257626 (=> (not res!1750241) (not e!2644363))))

(get-info :version)

(assert (=> b!4257626 (= res!1750241 (and (not ((_ is Empty!14235) t!4386)) ((_ is Leaf!22001) t!4386)))))

(assert (= (and start!407962 res!1750242) b!4257626))

(assert (= (and b!4257626 res!1750241) b!4257621))

(assert (= (and b!4257621 (not res!1750243)) b!4257625))

(assert (= (and start!407962 ((_ is Node!14235) t!4386)) b!4257622))

(assert (= b!4257623 b!4257624))

(assert (= (and start!407962 ((_ is Leaf!22001) t!4386)) b!4257623))

(declare-fun m!4843011 () Bool)

(assert (=> b!4257625 m!4843011))

(declare-fun m!4843013 () Bool)

(assert (=> b!4257621 m!4843013))

(declare-fun m!4843015 () Bool)

(assert (=> b!4257621 m!4843015))

(assert (=> b!4257621 m!4843015))

(declare-fun m!4843017 () Bool)

(assert (=> b!4257621 m!4843017))

(declare-fun m!4843019 () Bool)

(assert (=> b!4257621 m!4843019))

(declare-fun m!4843021 () Bool)

(assert (=> start!407962 m!4843021))

(declare-fun m!4843023 () Bool)

(assert (=> start!407962 m!4843023))

(declare-fun m!4843025 () Bool)

(assert (=> b!4257622 m!4843025))

(declare-fun m!4843027 () Bool)

(assert (=> b!4257622 m!4843027))

(declare-fun m!4843029 () Bool)

(assert (=> b!4257623 m!4843029))

(check-sat (not b!4257621) b_and!337547 (not b!4257623) (not b!4257625) (not b!4257624) (not start!407962) (not b!4257622) (not b_next!127377))
(check-sat b_and!337547 (not b_next!127377))
(get-model)

(declare-fun b!4257651 () Bool)

(declare-fun e!2644375 () Bool)

(declare-fun isEmpty!27958 (Conc!14235) Bool)

(assert (=> b!4257651 (= e!2644375 (not (isEmpty!27958 (right!35338 t!4386))))))

(declare-fun d!1252130 () Bool)

(declare-fun res!1750258 () Bool)

(declare-fun e!2644376 () Bool)

(assert (=> d!1252130 (=> res!1750258 e!2644376)))

(assert (=> d!1252130 (= res!1750258 (not ((_ is Node!14235) t!4386)))))

(assert (=> d!1252130 (= (isBalanced!3793 t!4386) e!2644376)))

(declare-fun b!4257652 () Bool)

(declare-fun res!1750256 () Bool)

(assert (=> b!4257652 (=> (not res!1750256) (not e!2644375))))

(assert (=> b!4257652 (= res!1750256 (not (isEmpty!27958 (left!35008 t!4386))))))

(declare-fun b!4257653 () Bool)

(declare-fun res!1750261 () Bool)

(assert (=> b!4257653 (=> (not res!1750261) (not e!2644375))))

(declare-fun height!1857 (Conc!14235) Int)

(assert (=> b!4257653 (= res!1750261 (<= (- (height!1857 (left!35008 t!4386)) (height!1857 (right!35338 t!4386))) 1))))

(declare-fun b!4257654 () Bool)

(declare-fun res!1750257 () Bool)

(assert (=> b!4257654 (=> (not res!1750257) (not e!2644375))))

(assert (=> b!4257654 (= res!1750257 (isBalanced!3793 (left!35008 t!4386)))))

(declare-fun b!4257655 () Bool)

(declare-fun res!1750260 () Bool)

(assert (=> b!4257655 (=> (not res!1750260) (not e!2644375))))

(assert (=> b!4257655 (= res!1750260 (isBalanced!3793 (right!35338 t!4386)))))

(declare-fun b!4257656 () Bool)

(assert (=> b!4257656 (= e!2644376 e!2644375)))

(declare-fun res!1750259 () Bool)

(assert (=> b!4257656 (=> (not res!1750259) (not e!2644375))))

(assert (=> b!4257656 (= res!1750259 (<= (- 1) (- (height!1857 (left!35008 t!4386)) (height!1857 (right!35338 t!4386)))))))

(assert (= (and d!1252130 (not res!1750258)) b!4257656))

(assert (= (and b!4257656 res!1750259) b!4257653))

(assert (= (and b!4257653 res!1750261) b!4257654))

(assert (= (and b!4257654 res!1750257) b!4257655))

(assert (= (and b!4257655 res!1750260) b!4257652))

(assert (= (and b!4257652 res!1750256) b!4257651))

(declare-fun m!4843039 () Bool)

(assert (=> b!4257653 m!4843039))

(declare-fun m!4843041 () Bool)

(assert (=> b!4257653 m!4843041))

(declare-fun m!4843043 () Bool)

(assert (=> b!4257654 m!4843043))

(declare-fun m!4843045 () Bool)

(assert (=> b!4257655 m!4843045))

(assert (=> b!4257656 m!4843039))

(assert (=> b!4257656 m!4843041))

(declare-fun m!4843047 () Bool)

(assert (=> b!4257651 m!4843047))

(declare-fun m!4843049 () Bool)

(assert (=> b!4257652 m!4843049))

(assert (=> start!407962 d!1252130))

(declare-fun d!1252136 () Bool)

(declare-fun c!722867 () Bool)

(assert (=> d!1252136 (= c!722867 ((_ is Node!14235) t!4386))))

(declare-fun e!2644388 () Bool)

(assert (=> d!1252136 (= (inv!62094 t!4386) e!2644388)))

(declare-fun b!4257679 () Bool)

(declare-fun inv!62096 (Conc!14235) Bool)

(assert (=> b!4257679 (= e!2644388 (inv!62096 t!4386))))

(declare-fun b!4257680 () Bool)

(declare-fun e!2644389 () Bool)

(assert (=> b!4257680 (= e!2644388 e!2644389)))

(declare-fun res!1750264 () Bool)

(assert (=> b!4257680 (= res!1750264 (not ((_ is Leaf!22001) t!4386)))))

(assert (=> b!4257680 (=> res!1750264 e!2644389)))

(declare-fun b!4257681 () Bool)

(declare-fun inv!62097 (Conc!14235) Bool)

(assert (=> b!4257681 (= e!2644389 (inv!62097 t!4386))))

(assert (= (and d!1252136 c!722867) b!4257679))

(assert (= (and d!1252136 (not c!722867)) b!4257680))

(assert (= (and b!4257680 (not res!1750264)) b!4257681))

(declare-fun m!4843061 () Bool)

(assert (=> b!4257679 m!4843061))

(declare-fun m!4843063 () Bool)

(assert (=> b!4257681 m!4843063))

(assert (=> start!407962 d!1252136))

(declare-fun b!4257697 () Bool)

(declare-fun e!2644397 () List!47350)

(declare-fun ++!12018 (List!47350 List!47350) List!47350)

(assert (=> b!4257697 (= e!2644397 (++!12018 (list!17039 (left!35007 lt!1509976)) (list!17039 (right!35337 lt!1509976))))))

(declare-fun d!1252140 () Bool)

(declare-fun c!722874 () Bool)

(assert (=> d!1252140 (= c!722874 ((_ is Empty!14234) lt!1509976))))

(declare-fun e!2644396 () List!47350)

(assert (=> d!1252140 (= (list!17039 lt!1509976) e!2644396)))

(declare-fun b!4257695 () Bool)

(assert (=> b!4257695 (= e!2644396 e!2644397)))

(declare-fun c!722875 () Bool)

(assert (=> b!4257695 (= c!722875 ((_ is Leaf!22000) lt!1509976))))

(declare-fun b!4257696 () Bool)

(declare-fun list!17043 (IArray!28473) List!47350)

(assert (=> b!4257696 (= e!2644397 (list!17043 (xs!17540 lt!1509976)))))

(declare-fun b!4257694 () Bool)

(assert (=> b!4257694 (= e!2644396 Nil!47226)))

(assert (= (and d!1252140 c!722874) b!4257694))

(assert (= (and d!1252140 (not c!722874)) b!4257695))

(assert (= (and b!4257695 c!722875) b!4257696))

(assert (= (and b!4257695 (not c!722875)) b!4257697))

(declare-fun m!4843077 () Bool)

(assert (=> b!4257697 m!4843077))

(declare-fun m!4843079 () Bool)

(assert (=> b!4257697 m!4843079))

(assert (=> b!4257697 m!4843077))

(assert (=> b!4257697 m!4843079))

(declare-fun m!4843081 () Bool)

(assert (=> b!4257697 m!4843081))

(declare-fun m!4843083 () Bool)

(assert (=> b!4257696 m!4843083))

(assert (=> b!4257621 d!1252140))

(declare-fun d!1252146 () Bool)

(declare-fun lt!1509985 () List!47350)

(declare-fun size!34575 (List!47350) Int)

(declare-fun size!34576 (List!47351) Int)

(assert (=> d!1252146 (= (size!34575 lt!1509985) (size!34576 (list!17040 t!4386)))))

(declare-fun e!2644404 () List!47350)

(assert (=> d!1252146 (= lt!1509985 e!2644404)))

(declare-fun c!722878 () Bool)

(assert (=> d!1252146 (= c!722878 ((_ is Nil!47227) (list!17040 t!4386)))))

(assert (=> d!1252146 (= (map!9652 (list!17040 t!4386) f!428) lt!1509985)))

(declare-fun b!4257714 () Bool)

(assert (=> b!4257714 (= e!2644404 Nil!47226)))

(declare-fun b!4257715 () Bool)

(declare-fun $colon$colon!625 (List!47350 B!2809) List!47350)

(declare-fun dynLambda!20213 (Int T!79364) B!2809)

(assert (=> b!4257715 (= e!2644404 ($colon$colon!625 (map!9652 (t!352988 (list!17040 t!4386)) f!428) (dynLambda!20213 f!428 (h!52647 (list!17040 t!4386)))))))

(assert (= (and d!1252146 c!722878) b!4257714))

(assert (= (and d!1252146 (not c!722878)) b!4257715))

(declare-fun b_lambda!125437 () Bool)

(assert (=> (not b_lambda!125437) (not b!4257715)))

(declare-fun t!352997 () Bool)

(declare-fun tb!256757 () Bool)

(assert (=> (and start!407962 (= f!428 f!428) t!352997) tb!256757))

(declare-fun result!313276 () Bool)

(declare-fun tp_is_empty!22849 () Bool)

(assert (=> tb!256757 (= result!313276 tp_is_empty!22849)))

(assert (=> b!4257715 t!352997))

(declare-fun b_and!337551 () Bool)

(assert (= b_and!337547 (and (=> t!352997 result!313276) b_and!337551)))

(declare-fun m!4843085 () Bool)

(assert (=> d!1252146 m!4843085))

(assert (=> d!1252146 m!4843015))

(declare-fun m!4843087 () Bool)

(assert (=> d!1252146 m!4843087))

(declare-fun m!4843089 () Bool)

(assert (=> b!4257715 m!4843089))

(declare-fun m!4843091 () Bool)

(assert (=> b!4257715 m!4843091))

(assert (=> b!4257715 m!4843089))

(assert (=> b!4257715 m!4843091))

(declare-fun m!4843093 () Bool)

(assert (=> b!4257715 m!4843093))

(assert (=> b!4257621 d!1252146))

(declare-fun b!4257735 () Bool)

(declare-fun e!2644412 () List!47351)

(declare-fun ++!12020 (List!47351 List!47351) List!47351)

(assert (=> b!4257735 (= e!2644412 (++!12020 (list!17040 (left!35008 t!4386)) (list!17040 (right!35338 t!4386))))))

(declare-fun b!4257733 () Bool)

(declare-fun e!2644411 () List!47351)

(assert (=> b!4257733 (= e!2644411 e!2644412)))

(declare-fun c!722884 () Bool)

(assert (=> b!4257733 (= c!722884 ((_ is Leaf!22001) t!4386))))

(declare-fun b!4257732 () Bool)

(assert (=> b!4257732 (= e!2644411 Nil!47227)))

(declare-fun d!1252148 () Bool)

(declare-fun c!722883 () Bool)

(assert (=> d!1252148 (= c!722883 ((_ is Empty!14235) t!4386))))

(assert (=> d!1252148 (= (list!17040 t!4386) e!2644411)))

(declare-fun b!4257734 () Bool)

(declare-fun list!17044 (IArray!28475) List!47351)

(assert (=> b!4257734 (= e!2644412 (list!17044 (xs!17541 t!4386)))))

(assert (= (and d!1252148 c!722883) b!4257732))

(assert (= (and d!1252148 (not c!722883)) b!4257733))

(assert (= (and b!4257733 c!722884) b!4257734))

(assert (= (and b!4257733 (not c!722884)) b!4257735))

(declare-fun m!4843107 () Bool)

(assert (=> b!4257735 m!4843107))

(declare-fun m!4843109 () Bool)

(assert (=> b!4257735 m!4843109))

(assert (=> b!4257735 m!4843107))

(assert (=> b!4257735 m!4843109))

(declare-fun m!4843111 () Bool)

(assert (=> b!4257735 m!4843111))

(declare-fun m!4843113 () Bool)

(assert (=> b!4257734 m!4843113))

(assert (=> b!4257621 d!1252148))

(declare-fun d!1252152 () Bool)

(declare-fun lt!1509988 () IArray!28473)

(assert (=> d!1252152 (= lt!1509988 (IArray!28474 (map!9652 (list!17044 (xs!17541 t!4386)) f!428)))))

(declare-fun choose!25976 (IArray!28475 Int) IArray!28473)

(assert (=> d!1252152 (= lt!1509988 (choose!25976 (xs!17541 t!4386) f!428))))

(assert (=> d!1252152 (= (map!9653 (xs!17541 t!4386) f!428) lt!1509988)))

(declare-fun bs!598893 () Bool)

(assert (= bs!598893 d!1252152))

(assert (=> bs!598893 m!4843113))

(assert (=> bs!598893 m!4843113))

(declare-fun m!4843119 () Bool)

(assert (=> bs!598893 m!4843119))

(declare-fun m!4843121 () Bool)

(assert (=> bs!598893 m!4843121))

(assert (=> b!4257621 d!1252152))

(declare-fun d!1252156 () Bool)

(declare-fun c!722888 () Bool)

(assert (=> d!1252156 (= c!722888 ((_ is Node!14235) (left!35008 t!4386)))))

(declare-fun e!2644419 () Bool)

(assert (=> d!1252156 (= (inv!62094 (left!35008 t!4386)) e!2644419)))

(declare-fun b!4257745 () Bool)

(assert (=> b!4257745 (= e!2644419 (inv!62096 (left!35008 t!4386)))))

(declare-fun b!4257746 () Bool)

(declare-fun e!2644420 () Bool)

(assert (=> b!4257746 (= e!2644419 e!2644420)))

(declare-fun res!1750286 () Bool)

(assert (=> b!4257746 (= res!1750286 (not ((_ is Leaf!22001) (left!35008 t!4386))))))

(assert (=> b!4257746 (=> res!1750286 e!2644420)))

(declare-fun b!4257747 () Bool)

(assert (=> b!4257747 (= e!2644420 (inv!62097 (left!35008 t!4386)))))

(assert (= (and d!1252156 c!722888) b!4257745))

(assert (= (and d!1252156 (not c!722888)) b!4257746))

(assert (= (and b!4257746 (not res!1750286)) b!4257747))

(declare-fun m!4843123 () Bool)

(assert (=> b!4257745 m!4843123))

(declare-fun m!4843125 () Bool)

(assert (=> b!4257747 m!4843125))

(assert (=> b!4257622 d!1252156))

(declare-fun d!1252158 () Bool)

(declare-fun c!722889 () Bool)

(assert (=> d!1252158 (= c!722889 ((_ is Node!14235) (right!35338 t!4386)))))

(declare-fun e!2644421 () Bool)

(assert (=> d!1252158 (= (inv!62094 (right!35338 t!4386)) e!2644421)))

(declare-fun b!4257748 () Bool)

(assert (=> b!4257748 (= e!2644421 (inv!62096 (right!35338 t!4386)))))

(declare-fun b!4257749 () Bool)

(declare-fun e!2644422 () Bool)

(assert (=> b!4257749 (= e!2644421 e!2644422)))

(declare-fun res!1750287 () Bool)

(assert (=> b!4257749 (= res!1750287 (not ((_ is Leaf!22001) (right!35338 t!4386))))))

(assert (=> b!4257749 (=> res!1750287 e!2644422)))

(declare-fun b!4257750 () Bool)

(assert (=> b!4257750 (= e!2644422 (inv!62097 (right!35338 t!4386)))))

(assert (= (and d!1252158 c!722889) b!4257748))

(assert (= (and d!1252158 (not c!722889)) b!4257749))

(assert (= (and b!4257749 (not res!1750287)) b!4257750))

(declare-fun m!4843127 () Bool)

(assert (=> b!4257748 m!4843127))

(declare-fun m!4843129 () Bool)

(assert (=> b!4257750 m!4843129))

(assert (=> b!4257622 d!1252158))

(declare-fun d!1252160 () Bool)

(assert (=> d!1252160 (= (inv!62095 (xs!17541 t!4386)) (<= (size!34576 (innerList!14295 (xs!17541 t!4386))) 2147483647))))

(declare-fun bs!598894 () Bool)

(assert (= bs!598894 d!1252160))

(declare-fun m!4843131 () Bool)

(assert (=> bs!598894 m!4843131))

(assert (=> b!4257623 d!1252160))

(declare-fun b!4257792 () Bool)

(declare-fun e!2644440 () Bool)

(declare-fun e!2644439 () Bool)

(assert (=> b!4257792 (= e!2644440 e!2644439)))

(declare-fun res!1750321 () Bool)

(assert (=> b!4257792 (=> (not res!1750321) (not e!2644439))))

(declare-fun height!1860 (Conc!14234) Int)

(assert (=> b!4257792 (= res!1750321 (<= (- 1) (- (height!1860 (left!35007 lt!1509976)) (height!1860 (right!35337 lt!1509976)))))))

(declare-fun b!4257793 () Bool)

(declare-fun res!1750320 () Bool)

(assert (=> b!4257793 (=> (not res!1750320) (not e!2644439))))

(assert (=> b!4257793 (= res!1750320 (isBalanced!3794 (left!35007 lt!1509976)))))

(declare-fun b!4257794 () Bool)

(declare-fun res!1750325 () Bool)

(assert (=> b!4257794 (=> (not res!1750325) (not e!2644439))))

(assert (=> b!4257794 (= res!1750325 (isBalanced!3794 (right!35337 lt!1509976)))))

(declare-fun b!4257795 () Bool)

(declare-fun res!1750323 () Bool)

(assert (=> b!4257795 (=> (not res!1750323) (not e!2644439))))

(declare-fun isEmpty!27961 (Conc!14234) Bool)

(assert (=> b!4257795 (= res!1750323 (not (isEmpty!27961 (left!35007 lt!1509976))))))

(declare-fun b!4257796 () Bool)

(declare-fun res!1750324 () Bool)

(assert (=> b!4257796 (=> (not res!1750324) (not e!2644439))))

(assert (=> b!4257796 (= res!1750324 (<= (- (height!1860 (left!35007 lt!1509976)) (height!1860 (right!35337 lt!1509976))) 1))))

(declare-fun b!4257791 () Bool)

(assert (=> b!4257791 (= e!2644439 (not (isEmpty!27961 (right!35337 lt!1509976))))))

(declare-fun d!1252162 () Bool)

(declare-fun res!1750322 () Bool)

(assert (=> d!1252162 (=> res!1750322 e!2644440)))

(assert (=> d!1252162 (= res!1750322 (not ((_ is Node!14234) lt!1509976)))))

(assert (=> d!1252162 (= (isBalanced!3794 lt!1509976) e!2644440)))

(assert (= (and d!1252162 (not res!1750322)) b!4257792))

(assert (= (and b!4257792 res!1750321) b!4257796))

(assert (= (and b!4257796 res!1750324) b!4257793))

(assert (= (and b!4257793 res!1750320) b!4257794))

(assert (= (and b!4257794 res!1750325) b!4257795))

(assert (= (and b!4257795 res!1750323) b!4257791))

(declare-fun m!4843155 () Bool)

(assert (=> b!4257794 m!4843155))

(declare-fun m!4843157 () Bool)

(assert (=> b!4257793 m!4843157))

(declare-fun m!4843159 () Bool)

(assert (=> b!4257796 m!4843159))

(declare-fun m!4843161 () Bool)

(assert (=> b!4257796 m!4843161))

(assert (=> b!4257792 m!4843159))

(assert (=> b!4257792 m!4843161))

(declare-fun m!4843163 () Bool)

(assert (=> b!4257795 m!4843163))

(declare-fun m!4843165 () Bool)

(assert (=> b!4257791 m!4843165))

(assert (=> b!4257625 d!1252162))

(declare-fun tp!1306594 () Bool)

(declare-fun tp!1306592 () Bool)

(declare-fun e!2644455 () Bool)

(declare-fun b!4257820 () Bool)

(assert (=> b!4257820 (= e!2644455 (and (inv!62094 (left!35008 (left!35008 t!4386))) tp!1306594 (inv!62094 (right!35338 (left!35008 t!4386))) tp!1306592))))

(declare-fun b!4257822 () Bool)

(declare-fun e!2644454 () Bool)

(declare-fun tp!1306593 () Bool)

(assert (=> b!4257822 (= e!2644454 tp!1306593)))

(declare-fun b!4257821 () Bool)

(assert (=> b!4257821 (= e!2644455 (and (inv!62095 (xs!17541 (left!35008 t!4386))) e!2644454))))

(assert (=> b!4257622 (= tp!1306570 (and (inv!62094 (left!35008 t!4386)) e!2644455))))

(assert (= (and b!4257622 ((_ is Node!14235) (left!35008 t!4386))) b!4257820))

(assert (= b!4257821 b!4257822))

(assert (= (and b!4257622 ((_ is Leaf!22001) (left!35008 t!4386))) b!4257821))

(declare-fun m!4843179 () Bool)

(assert (=> b!4257820 m!4843179))

(declare-fun m!4843181 () Bool)

(assert (=> b!4257820 m!4843181))

(declare-fun m!4843183 () Bool)

(assert (=> b!4257821 m!4843183))

(assert (=> b!4257622 m!4843025))

(declare-fun b!4257823 () Bool)

(declare-fun e!2644457 () Bool)

(declare-fun tp!1306595 () Bool)

(declare-fun tp!1306597 () Bool)

(assert (=> b!4257823 (= e!2644457 (and (inv!62094 (left!35008 (right!35338 t!4386))) tp!1306597 (inv!62094 (right!35338 (right!35338 t!4386))) tp!1306595))))

(declare-fun b!4257825 () Bool)

(declare-fun e!2644456 () Bool)

(declare-fun tp!1306596 () Bool)

(assert (=> b!4257825 (= e!2644456 tp!1306596)))

(declare-fun b!4257824 () Bool)

(assert (=> b!4257824 (= e!2644457 (and (inv!62095 (xs!17541 (right!35338 t!4386))) e!2644456))))

(assert (=> b!4257622 (= tp!1306567 (and (inv!62094 (right!35338 t!4386)) e!2644457))))

(assert (= (and b!4257622 ((_ is Node!14235) (right!35338 t!4386))) b!4257823))

(assert (= b!4257824 b!4257825))

(assert (= (and b!4257622 ((_ is Leaf!22001) (right!35338 t!4386))) b!4257824))

(declare-fun m!4843185 () Bool)

(assert (=> b!4257823 m!4843185))

(declare-fun m!4843187 () Bool)

(assert (=> b!4257823 m!4843187))

(declare-fun m!4843189 () Bool)

(assert (=> b!4257824 m!4843189))

(assert (=> b!4257622 m!4843027))

(declare-fun b!4257830 () Bool)

(declare-fun e!2644460 () Bool)

(declare-fun tp_is_empty!22853 () Bool)

(declare-fun tp!1306600 () Bool)

(assert (=> b!4257830 (= e!2644460 (and tp_is_empty!22853 tp!1306600))))

(assert (=> b!4257624 (= tp!1306568 e!2644460)))

(assert (= (and b!4257624 ((_ is Cons!47227) (innerList!14295 (xs!17541 t!4386)))) b!4257830))

(declare-fun b_lambda!125441 () Bool)

(assert (= b_lambda!125437 (or (and start!407962 b_free!126673) b_lambda!125441)))

(check-sat (not b!4257795) (not b!4257747) tp_is_empty!22849 (not b!4257748) (not b!4257696) (not b_lambda!125441) (not b!4257794) (not b!4257652) (not d!1252146) (not b!4257655) (not b!4257622) b_and!337551 tp_is_empty!22853 (not b!4257734) (not b!4257793) (not b!4257653) (not b!4257830) (not b!4257824) (not d!1252152) (not b!4257697) (not b!4257656) (not b!4257825) (not b!4257792) (not b!4257679) (not b!4257821) (not b!4257681) (not b!4257796) (not b!4257823) (not b!4257820) (not d!1252160) (not b!4257651) (not b!4257745) (not b!4257735) (not b!4257750) (not b!4257822) (not b!4257654) (not b!4257791) (not b!4257715) (not b_next!127377))
(check-sat b_and!337551 (not b_next!127377))
(get-model)

(declare-fun d!1252170 () Bool)

(declare-fun res!1750332 () Bool)

(declare-fun e!2644463 () Bool)

(assert (=> d!1252170 (=> (not res!1750332) (not e!2644463))))

(declare-fun size!34577 (Conc!14235) Int)

(assert (=> d!1252170 (= res!1750332 (= (csize!28700 (right!35338 t!4386)) (+ (size!34577 (left!35008 (right!35338 t!4386))) (size!34577 (right!35338 (right!35338 t!4386))))))))

(assert (=> d!1252170 (= (inv!62096 (right!35338 t!4386)) e!2644463)))

(declare-fun b!4257837 () Bool)

(declare-fun res!1750333 () Bool)

(assert (=> b!4257837 (=> (not res!1750333) (not e!2644463))))

(assert (=> b!4257837 (= res!1750333 (and (not (= (left!35008 (right!35338 t!4386)) Empty!14235)) (not (= (right!35338 (right!35338 t!4386)) Empty!14235))))))

(declare-fun b!4257838 () Bool)

(declare-fun res!1750334 () Bool)

(assert (=> b!4257838 (=> (not res!1750334) (not e!2644463))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4257838 (= res!1750334 (= (cheight!14446 (right!35338 t!4386)) (+ (max!0 (height!1857 (left!35008 (right!35338 t!4386))) (height!1857 (right!35338 (right!35338 t!4386)))) 1)))))

(declare-fun b!4257839 () Bool)

(assert (=> b!4257839 (= e!2644463 (<= 0 (cheight!14446 (right!35338 t!4386))))))

(assert (= (and d!1252170 res!1750332) b!4257837))

(assert (= (and b!4257837 res!1750333) b!4257838))

(assert (= (and b!4257838 res!1750334) b!4257839))

(declare-fun m!4843191 () Bool)

(assert (=> d!1252170 m!4843191))

(declare-fun m!4843193 () Bool)

(assert (=> d!1252170 m!4843193))

(declare-fun m!4843195 () Bool)

(assert (=> b!4257838 m!4843195))

(declare-fun m!4843197 () Bool)

(assert (=> b!4257838 m!4843197))

(assert (=> b!4257838 m!4843195))

(assert (=> b!4257838 m!4843197))

(declare-fun m!4843199 () Bool)

(assert (=> b!4257838 m!4843199))

(assert (=> b!4257748 d!1252170))

(declare-fun d!1252172 () Bool)

(declare-fun c!722892 () Bool)

(assert (=> d!1252172 (= c!722892 ((_ is Node!14235) (left!35008 (left!35008 t!4386))))))

(declare-fun e!2644464 () Bool)

(assert (=> d!1252172 (= (inv!62094 (left!35008 (left!35008 t!4386))) e!2644464)))

(declare-fun b!4257840 () Bool)

(assert (=> b!4257840 (= e!2644464 (inv!62096 (left!35008 (left!35008 t!4386))))))

(declare-fun b!4257841 () Bool)

(declare-fun e!2644465 () Bool)

(assert (=> b!4257841 (= e!2644464 e!2644465)))

(declare-fun res!1750335 () Bool)

(assert (=> b!4257841 (= res!1750335 (not ((_ is Leaf!22001) (left!35008 (left!35008 t!4386)))))))

(assert (=> b!4257841 (=> res!1750335 e!2644465)))

(declare-fun b!4257842 () Bool)

(assert (=> b!4257842 (= e!2644465 (inv!62097 (left!35008 (left!35008 t!4386))))))

(assert (= (and d!1252172 c!722892) b!4257840))

(assert (= (and d!1252172 (not c!722892)) b!4257841))

(assert (= (and b!4257841 (not res!1750335)) b!4257842))

(declare-fun m!4843201 () Bool)

(assert (=> b!4257840 m!4843201))

(declare-fun m!4843203 () Bool)

(assert (=> b!4257842 m!4843203))

(assert (=> b!4257820 d!1252172))

(declare-fun d!1252174 () Bool)

(declare-fun c!722893 () Bool)

(assert (=> d!1252174 (= c!722893 ((_ is Node!14235) (right!35338 (left!35008 t!4386))))))

(declare-fun e!2644466 () Bool)

(assert (=> d!1252174 (= (inv!62094 (right!35338 (left!35008 t!4386))) e!2644466)))

(declare-fun b!4257843 () Bool)

(assert (=> b!4257843 (= e!2644466 (inv!62096 (right!35338 (left!35008 t!4386))))))

(declare-fun b!4257844 () Bool)

(declare-fun e!2644467 () Bool)

(assert (=> b!4257844 (= e!2644466 e!2644467)))

(declare-fun res!1750336 () Bool)

(assert (=> b!4257844 (= res!1750336 (not ((_ is Leaf!22001) (right!35338 (left!35008 t!4386)))))))

(assert (=> b!4257844 (=> res!1750336 e!2644467)))

(declare-fun b!4257845 () Bool)

(assert (=> b!4257845 (= e!2644467 (inv!62097 (right!35338 (left!35008 t!4386))))))

(assert (= (and d!1252174 c!722893) b!4257843))

(assert (= (and d!1252174 (not c!722893)) b!4257844))

(assert (= (and b!4257844 (not res!1750336)) b!4257845))

(declare-fun m!4843205 () Bool)

(assert (=> b!4257843 m!4843205))

(declare-fun m!4843207 () Bool)

(assert (=> b!4257845 m!4843207))

(assert (=> b!4257820 d!1252174))

(declare-fun d!1252176 () Bool)

(declare-fun res!1750341 () Bool)

(declare-fun e!2644470 () Bool)

(assert (=> d!1252176 (=> (not res!1750341) (not e!2644470))))

(assert (=> d!1252176 (= res!1750341 (<= (size!34576 (list!17044 (xs!17541 (right!35338 t!4386)))) 512))))

(assert (=> d!1252176 (= (inv!62097 (right!35338 t!4386)) e!2644470)))

(declare-fun b!4257850 () Bool)

(declare-fun res!1750342 () Bool)

(assert (=> b!4257850 (=> (not res!1750342) (not e!2644470))))

(assert (=> b!4257850 (= res!1750342 (= (csize!28701 (right!35338 t!4386)) (size!34576 (list!17044 (xs!17541 (right!35338 t!4386))))))))

(declare-fun b!4257851 () Bool)

(assert (=> b!4257851 (= e!2644470 (and (> (csize!28701 (right!35338 t!4386)) 0) (<= (csize!28701 (right!35338 t!4386)) 512)))))

(assert (= (and d!1252176 res!1750341) b!4257850))

(assert (= (and b!4257850 res!1750342) b!4257851))

(declare-fun m!4843209 () Bool)

(assert (=> d!1252176 m!4843209))

(assert (=> d!1252176 m!4843209))

(declare-fun m!4843211 () Bool)

(assert (=> d!1252176 m!4843211))

(assert (=> b!4257850 m!4843209))

(assert (=> b!4257850 m!4843209))

(assert (=> b!4257850 m!4843211))

(assert (=> b!4257750 d!1252176))

(declare-fun d!1252178 () Bool)

(assert (=> d!1252178 (= (inv!62095 (xs!17541 (left!35008 t!4386))) (<= (size!34576 (innerList!14295 (xs!17541 (left!35008 t!4386)))) 2147483647))))

(declare-fun bs!598896 () Bool)

(assert (= bs!598896 d!1252178))

(declare-fun m!4843213 () Bool)

(assert (=> bs!598896 m!4843213))

(assert (=> b!4257821 d!1252178))

(declare-fun d!1252180 () Bool)

(declare-fun lt!1509991 () Int)

(assert (=> d!1252180 (>= lt!1509991 0)))

(declare-fun e!2644473 () Int)

(assert (=> d!1252180 (= lt!1509991 e!2644473)))

(declare-fun c!722896 () Bool)

(assert (=> d!1252180 (= c!722896 ((_ is Nil!47227) (innerList!14295 (xs!17541 t!4386))))))

(assert (=> d!1252180 (= (size!34576 (innerList!14295 (xs!17541 t!4386))) lt!1509991)))

(declare-fun b!4257856 () Bool)

(assert (=> b!4257856 (= e!2644473 0)))

(declare-fun b!4257857 () Bool)

(assert (=> b!4257857 (= e!2644473 (+ 1 (size!34576 (t!352988 (innerList!14295 (xs!17541 t!4386))))))))

(assert (= (and d!1252180 c!722896) b!4257856))

(assert (= (and d!1252180 (not c!722896)) b!4257857))

(declare-fun m!4843215 () Bool)

(assert (=> b!4257857 m!4843215))

(assert (=> d!1252160 d!1252180))

(declare-fun d!1252182 () Bool)

(declare-fun res!1750343 () Bool)

(declare-fun e!2644474 () Bool)

(assert (=> d!1252182 (=> (not res!1750343) (not e!2644474))))

(assert (=> d!1252182 (= res!1750343 (= (csize!28700 (left!35008 t!4386)) (+ (size!34577 (left!35008 (left!35008 t!4386))) (size!34577 (right!35338 (left!35008 t!4386))))))))

(assert (=> d!1252182 (= (inv!62096 (left!35008 t!4386)) e!2644474)))

(declare-fun b!4257858 () Bool)

(declare-fun res!1750344 () Bool)

(assert (=> b!4257858 (=> (not res!1750344) (not e!2644474))))

(assert (=> b!4257858 (= res!1750344 (and (not (= (left!35008 (left!35008 t!4386)) Empty!14235)) (not (= (right!35338 (left!35008 t!4386)) Empty!14235))))))

(declare-fun b!4257859 () Bool)

(declare-fun res!1750345 () Bool)

(assert (=> b!4257859 (=> (not res!1750345) (not e!2644474))))

(assert (=> b!4257859 (= res!1750345 (= (cheight!14446 (left!35008 t!4386)) (+ (max!0 (height!1857 (left!35008 (left!35008 t!4386))) (height!1857 (right!35338 (left!35008 t!4386)))) 1)))))

(declare-fun b!4257860 () Bool)

(assert (=> b!4257860 (= e!2644474 (<= 0 (cheight!14446 (left!35008 t!4386))))))

(assert (= (and d!1252182 res!1750343) b!4257858))

(assert (= (and b!4257858 res!1750344) b!4257859))

(assert (= (and b!4257859 res!1750345) b!4257860))

(declare-fun m!4843217 () Bool)

(assert (=> d!1252182 m!4843217))

(declare-fun m!4843219 () Bool)

(assert (=> d!1252182 m!4843219))

(declare-fun m!4843221 () Bool)

(assert (=> b!4257859 m!4843221))

(declare-fun m!4843223 () Bool)

(assert (=> b!4257859 m!4843223))

(assert (=> b!4257859 m!4843221))

(assert (=> b!4257859 m!4843223))

(declare-fun m!4843225 () Bool)

(assert (=> b!4257859 m!4843225))

(assert (=> b!4257745 d!1252182))

(assert (=> b!4257622 d!1252156))

(assert (=> b!4257622 d!1252158))

(declare-fun d!1252184 () Bool)

(declare-fun res!1750346 () Bool)

(declare-fun e!2644475 () Bool)

(assert (=> d!1252184 (=> (not res!1750346) (not e!2644475))))

(assert (=> d!1252184 (= res!1750346 (<= (size!34576 (list!17044 (xs!17541 (left!35008 t!4386)))) 512))))

(assert (=> d!1252184 (= (inv!62097 (left!35008 t!4386)) e!2644475)))

(declare-fun b!4257861 () Bool)

(declare-fun res!1750347 () Bool)

(assert (=> b!4257861 (=> (not res!1750347) (not e!2644475))))

(assert (=> b!4257861 (= res!1750347 (= (csize!28701 (left!35008 t!4386)) (size!34576 (list!17044 (xs!17541 (left!35008 t!4386))))))))

(declare-fun b!4257862 () Bool)

(assert (=> b!4257862 (= e!2644475 (and (> (csize!28701 (left!35008 t!4386)) 0) (<= (csize!28701 (left!35008 t!4386)) 512)))))

(assert (= (and d!1252184 res!1750346) b!4257861))

(assert (= (and b!4257861 res!1750347) b!4257862))

(declare-fun m!4843227 () Bool)

(assert (=> d!1252184 m!4843227))

(assert (=> d!1252184 m!4843227))

(declare-fun m!4843229 () Bool)

(assert (=> d!1252184 m!4843229))

(assert (=> b!4257861 m!4843227))

(assert (=> b!4257861 m!4843227))

(assert (=> b!4257861 m!4843229))

(assert (=> b!4257747 d!1252184))

(declare-fun d!1252186 () Bool)

(declare-fun lt!1509994 () Int)

(assert (=> d!1252186 (>= lt!1509994 0)))

(declare-fun e!2644478 () Int)

(assert (=> d!1252186 (= lt!1509994 e!2644478)))

(declare-fun c!722899 () Bool)

(assert (=> d!1252186 (= c!722899 ((_ is Nil!47226) lt!1509985))))

(assert (=> d!1252186 (= (size!34575 lt!1509985) lt!1509994)))

(declare-fun b!4257867 () Bool)

(assert (=> b!4257867 (= e!2644478 0)))

(declare-fun b!4257868 () Bool)

(assert (=> b!4257868 (= e!2644478 (+ 1 (size!34575 (t!352987 lt!1509985))))))

(assert (= (and d!1252186 c!722899) b!4257867))

(assert (= (and d!1252186 (not c!722899)) b!4257868))

(declare-fun m!4843231 () Bool)

(assert (=> b!4257868 m!4843231))

(assert (=> d!1252146 d!1252186))

(declare-fun d!1252190 () Bool)

(declare-fun lt!1509995 () Int)

(assert (=> d!1252190 (>= lt!1509995 0)))

(declare-fun e!2644479 () Int)

(assert (=> d!1252190 (= lt!1509995 e!2644479)))

(declare-fun c!722900 () Bool)

(assert (=> d!1252190 (= c!722900 ((_ is Nil!47227) (list!17040 t!4386)))))

(assert (=> d!1252190 (= (size!34576 (list!17040 t!4386)) lt!1509995)))

(declare-fun b!4257869 () Bool)

(assert (=> b!4257869 (= e!2644479 0)))

(declare-fun b!4257870 () Bool)

(assert (=> b!4257870 (= e!2644479 (+ 1 (size!34576 (t!352988 (list!17040 t!4386)))))))

(assert (= (and d!1252190 c!722900) b!4257869))

(assert (= (and d!1252190 (not c!722900)) b!4257870))

(declare-fun m!4843233 () Bool)

(assert (=> b!4257870 m!4843233))

(assert (=> d!1252146 d!1252190))

(declare-fun d!1252192 () Bool)

(declare-fun e!2644487 () Bool)

(assert (=> d!1252192 e!2644487))

(declare-fun res!1750361 () Bool)

(assert (=> d!1252192 (=> (not res!1750361) (not e!2644487))))

(declare-fun lt!1509998 () List!47351)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7429 (List!47351) (InoxSet T!79364))

(assert (=> d!1252192 (= res!1750361 (= (content!7429 lt!1509998) ((_ map or) (content!7429 (list!17040 (left!35008 t!4386))) (content!7429 (list!17040 (right!35338 t!4386))))))))

(declare-fun e!2644488 () List!47351)

(assert (=> d!1252192 (= lt!1509998 e!2644488)))

(declare-fun c!722903 () Bool)

(assert (=> d!1252192 (= c!722903 ((_ is Nil!47227) (list!17040 (left!35008 t!4386))))))

(assert (=> d!1252192 (= (++!12020 (list!17040 (left!35008 t!4386)) (list!17040 (right!35338 t!4386))) lt!1509998)))

(declare-fun b!4257889 () Bool)

(assert (=> b!4257889 (= e!2644488 (Cons!47227 (h!52647 (list!17040 (left!35008 t!4386))) (++!12020 (t!352988 (list!17040 (left!35008 t!4386))) (list!17040 (right!35338 t!4386)))))))

(declare-fun b!4257890 () Bool)

(declare-fun res!1750362 () Bool)

(assert (=> b!4257890 (=> (not res!1750362) (not e!2644487))))

(assert (=> b!4257890 (= res!1750362 (= (size!34576 lt!1509998) (+ (size!34576 (list!17040 (left!35008 t!4386))) (size!34576 (list!17040 (right!35338 t!4386))))))))

(declare-fun b!4257891 () Bool)

(assert (=> b!4257891 (= e!2644487 (or (not (= (list!17040 (right!35338 t!4386)) Nil!47227)) (= lt!1509998 (list!17040 (left!35008 t!4386)))))))

(declare-fun b!4257888 () Bool)

(assert (=> b!4257888 (= e!2644488 (list!17040 (right!35338 t!4386)))))

(assert (= (and d!1252192 c!722903) b!4257888))

(assert (= (and d!1252192 (not c!722903)) b!4257889))

(assert (= (and d!1252192 res!1750361) b!4257890))

(assert (= (and b!4257890 res!1750362) b!4257891))

(declare-fun m!4843241 () Bool)

(assert (=> d!1252192 m!4843241))

(assert (=> d!1252192 m!4843107))

(declare-fun m!4843243 () Bool)

(assert (=> d!1252192 m!4843243))

(assert (=> d!1252192 m!4843109))

(declare-fun m!4843245 () Bool)

(assert (=> d!1252192 m!4843245))

(assert (=> b!4257889 m!4843109))

(declare-fun m!4843247 () Bool)

(assert (=> b!4257889 m!4843247))

(declare-fun m!4843249 () Bool)

(assert (=> b!4257890 m!4843249))

(assert (=> b!4257890 m!4843107))

(declare-fun m!4843251 () Bool)

(assert (=> b!4257890 m!4843251))

(assert (=> b!4257890 m!4843109))

(declare-fun m!4843253 () Bool)

(assert (=> b!4257890 m!4843253))

(assert (=> b!4257735 d!1252192))

(declare-fun b!4257895 () Bool)

(declare-fun e!2644490 () List!47351)

(assert (=> b!4257895 (= e!2644490 (++!12020 (list!17040 (left!35008 (left!35008 t!4386))) (list!17040 (right!35338 (left!35008 t!4386)))))))

(declare-fun b!4257893 () Bool)

(declare-fun e!2644489 () List!47351)

(assert (=> b!4257893 (= e!2644489 e!2644490)))

(declare-fun c!722905 () Bool)

(assert (=> b!4257893 (= c!722905 ((_ is Leaf!22001) (left!35008 t!4386)))))

(declare-fun b!4257892 () Bool)

(assert (=> b!4257892 (= e!2644489 Nil!47227)))

(declare-fun d!1252196 () Bool)

(declare-fun c!722904 () Bool)

(assert (=> d!1252196 (= c!722904 ((_ is Empty!14235) (left!35008 t!4386)))))

(assert (=> d!1252196 (= (list!17040 (left!35008 t!4386)) e!2644489)))

(declare-fun b!4257894 () Bool)

(assert (=> b!4257894 (= e!2644490 (list!17044 (xs!17541 (left!35008 t!4386))))))

(assert (= (and d!1252196 c!722904) b!4257892))

(assert (= (and d!1252196 (not c!722904)) b!4257893))

(assert (= (and b!4257893 c!722905) b!4257894))

(assert (= (and b!4257893 (not c!722905)) b!4257895))

(declare-fun m!4843259 () Bool)

(assert (=> b!4257895 m!4843259))

(declare-fun m!4843261 () Bool)

(assert (=> b!4257895 m!4843261))

(assert (=> b!4257895 m!4843259))

(assert (=> b!4257895 m!4843261))

(declare-fun m!4843263 () Bool)

(assert (=> b!4257895 m!4843263))

(assert (=> b!4257894 m!4843227))

(assert (=> b!4257735 d!1252196))

(declare-fun b!4257899 () Bool)

(declare-fun e!2644492 () List!47351)

(assert (=> b!4257899 (= e!2644492 (++!12020 (list!17040 (left!35008 (right!35338 t!4386))) (list!17040 (right!35338 (right!35338 t!4386)))))))

(declare-fun b!4257897 () Bool)

(declare-fun e!2644491 () List!47351)

(assert (=> b!4257897 (= e!2644491 e!2644492)))

(declare-fun c!722907 () Bool)

(assert (=> b!4257897 (= c!722907 ((_ is Leaf!22001) (right!35338 t!4386)))))

(declare-fun b!4257896 () Bool)

(assert (=> b!4257896 (= e!2644491 Nil!47227)))

(declare-fun d!1252200 () Bool)

(declare-fun c!722906 () Bool)

(assert (=> d!1252200 (= c!722906 ((_ is Empty!14235) (right!35338 t!4386)))))

(assert (=> d!1252200 (= (list!17040 (right!35338 t!4386)) e!2644491)))

(declare-fun b!4257898 () Bool)

(assert (=> b!4257898 (= e!2644492 (list!17044 (xs!17541 (right!35338 t!4386))))))

(assert (= (and d!1252200 c!722906) b!4257896))

(assert (= (and d!1252200 (not c!722906)) b!4257897))

(assert (= (and b!4257897 c!722907) b!4257898))

(assert (= (and b!4257897 (not c!722907)) b!4257899))

(declare-fun m!4843265 () Bool)

(assert (=> b!4257899 m!4843265))

(declare-fun m!4843267 () Bool)

(assert (=> b!4257899 m!4843267))

(assert (=> b!4257899 m!4843265))

(assert (=> b!4257899 m!4843267))

(declare-fun m!4843269 () Bool)

(assert (=> b!4257899 m!4843269))

(assert (=> b!4257898 m!4843209))

(assert (=> b!4257735 d!1252200))

(declare-fun d!1252202 () Bool)

(declare-fun lt!1510007 () Bool)

(declare-fun isEmpty!27963 (List!47351) Bool)

(assert (=> d!1252202 (= lt!1510007 (isEmpty!27963 (list!17040 (left!35008 t!4386))))))

(assert (=> d!1252202 (= lt!1510007 (= (size!34577 (left!35008 t!4386)) 0))))

(assert (=> d!1252202 (= (isEmpty!27958 (left!35008 t!4386)) lt!1510007)))

(declare-fun bs!598898 () Bool)

(assert (= bs!598898 d!1252202))

(assert (=> bs!598898 m!4843107))

(assert (=> bs!598898 m!4843107))

(declare-fun m!4843271 () Bool)

(assert (=> bs!598898 m!4843271))

(declare-fun m!4843275 () Bool)

(assert (=> bs!598898 m!4843275))

(assert (=> b!4257652 d!1252202))

(declare-fun d!1252206 () Bool)

(assert (=> d!1252206 (= ($colon$colon!625 (map!9652 (t!352988 (list!17040 t!4386)) f!428) (dynLambda!20213 f!428 (h!52647 (list!17040 t!4386)))) (Cons!47226 (dynLambda!20213 f!428 (h!52647 (list!17040 t!4386))) (map!9652 (t!352988 (list!17040 t!4386)) f!428)))))

(assert (=> b!4257715 d!1252206))

(declare-fun d!1252208 () Bool)

(declare-fun lt!1510008 () List!47350)

(assert (=> d!1252208 (= (size!34575 lt!1510008) (size!34576 (t!352988 (list!17040 t!4386))))))

(declare-fun e!2644496 () List!47350)

(assert (=> d!1252208 (= lt!1510008 e!2644496)))

(declare-fun c!722911 () Bool)

(assert (=> d!1252208 (= c!722911 ((_ is Nil!47227) (t!352988 (list!17040 t!4386))))))

(assert (=> d!1252208 (= (map!9652 (t!352988 (list!17040 t!4386)) f!428) lt!1510008)))

(declare-fun b!4257906 () Bool)

(assert (=> b!4257906 (= e!2644496 Nil!47226)))

(declare-fun b!4257907 () Bool)

(assert (=> b!4257907 (= e!2644496 ($colon$colon!625 (map!9652 (t!352988 (t!352988 (list!17040 t!4386))) f!428) (dynLambda!20213 f!428 (h!52647 (t!352988 (list!17040 t!4386))))))))

(assert (= (and d!1252208 c!722911) b!4257906))

(assert (= (and d!1252208 (not c!722911)) b!4257907))

(declare-fun b_lambda!125443 () Bool)

(assert (=> (not b_lambda!125443) (not b!4257907)))

(declare-fun t!353005 () Bool)

(declare-fun tb!256759 () Bool)

(assert (=> (and start!407962 (= f!428 f!428) t!353005) tb!256759))

(declare-fun result!313288 () Bool)

(assert (=> tb!256759 (= result!313288 tp_is_empty!22849)))

(assert (=> b!4257907 t!353005))

(declare-fun b_and!337553 () Bool)

(assert (= b_and!337551 (and (=> t!353005 result!313288) b_and!337553)))

(declare-fun m!4843277 () Bool)

(assert (=> d!1252208 m!4843277))

(assert (=> d!1252208 m!4843233))

(declare-fun m!4843279 () Bool)

(assert (=> b!4257907 m!4843279))

(declare-fun m!4843281 () Bool)

(assert (=> b!4257907 m!4843281))

(assert (=> b!4257907 m!4843279))

(assert (=> b!4257907 m!4843281))

(declare-fun m!4843283 () Bool)

(assert (=> b!4257907 m!4843283))

(assert (=> b!4257715 d!1252208))

(declare-fun b!4257913 () Bool)

(declare-fun e!2644500 () Bool)

(declare-fun e!2644499 () Bool)

(assert (=> b!4257913 (= e!2644500 e!2644499)))

(declare-fun res!1750364 () Bool)

(assert (=> b!4257913 (=> (not res!1750364) (not e!2644499))))

(assert (=> b!4257913 (= res!1750364 (<= (- 1) (- (height!1860 (left!35007 (left!35007 lt!1509976))) (height!1860 (right!35337 (left!35007 lt!1509976))))))))

(declare-fun b!4257914 () Bool)

(declare-fun res!1750363 () Bool)

(assert (=> b!4257914 (=> (not res!1750363) (not e!2644499))))

(assert (=> b!4257914 (= res!1750363 (isBalanced!3794 (left!35007 (left!35007 lt!1509976))))))

(declare-fun b!4257915 () Bool)

(declare-fun res!1750368 () Bool)

(assert (=> b!4257915 (=> (not res!1750368) (not e!2644499))))

(assert (=> b!4257915 (= res!1750368 (isBalanced!3794 (right!35337 (left!35007 lt!1509976))))))

(declare-fun b!4257916 () Bool)

(declare-fun res!1750366 () Bool)

(assert (=> b!4257916 (=> (not res!1750366) (not e!2644499))))

(assert (=> b!4257916 (= res!1750366 (not (isEmpty!27961 (left!35007 (left!35007 lt!1509976)))))))

(declare-fun b!4257917 () Bool)

(declare-fun res!1750367 () Bool)

(assert (=> b!4257917 (=> (not res!1750367) (not e!2644499))))

(assert (=> b!4257917 (= res!1750367 (<= (- (height!1860 (left!35007 (left!35007 lt!1509976))) (height!1860 (right!35337 (left!35007 lt!1509976)))) 1))))

(declare-fun b!4257912 () Bool)

(assert (=> b!4257912 (= e!2644499 (not (isEmpty!27961 (right!35337 (left!35007 lt!1509976)))))))

(declare-fun d!1252210 () Bool)

(declare-fun res!1750365 () Bool)

(assert (=> d!1252210 (=> res!1750365 e!2644500)))

(assert (=> d!1252210 (= res!1750365 (not ((_ is Node!14234) (left!35007 lt!1509976))))))

(assert (=> d!1252210 (= (isBalanced!3794 (left!35007 lt!1509976)) e!2644500)))

(assert (= (and d!1252210 (not res!1750365)) b!4257913))

(assert (= (and b!4257913 res!1750364) b!4257917))

(assert (= (and b!4257917 res!1750367) b!4257914))

(assert (= (and b!4257914 res!1750363) b!4257915))

(assert (= (and b!4257915 res!1750368) b!4257916))

(assert (= (and b!4257916 res!1750366) b!4257912))

(declare-fun m!4843285 () Bool)

(assert (=> b!4257915 m!4843285))

(declare-fun m!4843287 () Bool)

(assert (=> b!4257914 m!4843287))

(declare-fun m!4843289 () Bool)

(assert (=> b!4257917 m!4843289))

(declare-fun m!4843291 () Bool)

(assert (=> b!4257917 m!4843291))

(assert (=> b!4257913 m!4843289))

(assert (=> b!4257913 m!4843291))

(declare-fun m!4843293 () Bool)

(assert (=> b!4257916 m!4843293))

(declare-fun m!4843295 () Bool)

(assert (=> b!4257912 m!4843295))

(assert (=> b!4257793 d!1252210))

(declare-fun d!1252212 () Bool)

(assert (=> d!1252212 (= (height!1857 (left!35008 t!4386)) (ite ((_ is Empty!14235) (left!35008 t!4386)) 0 (ite ((_ is Leaf!22001) (left!35008 t!4386)) 1 (cheight!14446 (left!35008 t!4386)))))))

(assert (=> b!4257653 d!1252212))

(declare-fun d!1252216 () Bool)

(assert (=> d!1252216 (= (height!1857 (right!35338 t!4386)) (ite ((_ is Empty!14235) (right!35338 t!4386)) 0 (ite ((_ is Leaf!22001) (right!35338 t!4386)) 1 (cheight!14446 (right!35338 t!4386)))))))

(assert (=> b!4257653 d!1252216))

(declare-fun d!1252218 () Bool)

(declare-fun res!1750369 () Bool)

(declare-fun e!2644502 () Bool)

(assert (=> d!1252218 (=> (not res!1750369) (not e!2644502))))

(assert (=> d!1252218 (= res!1750369 (= (csize!28700 t!4386) (+ (size!34577 (left!35008 t!4386)) (size!34577 (right!35338 t!4386)))))))

(assert (=> d!1252218 (= (inv!62096 t!4386) e!2644502)))

(declare-fun b!4257920 () Bool)

(declare-fun res!1750370 () Bool)

(assert (=> b!4257920 (=> (not res!1750370) (not e!2644502))))

(assert (=> b!4257920 (= res!1750370 (and (not (= (left!35008 t!4386) Empty!14235)) (not (= (right!35338 t!4386) Empty!14235))))))

(declare-fun b!4257921 () Bool)

(declare-fun res!1750371 () Bool)

(assert (=> b!4257921 (=> (not res!1750371) (not e!2644502))))

(assert (=> b!4257921 (= res!1750371 (= (cheight!14446 t!4386) (+ (max!0 (height!1857 (left!35008 t!4386)) (height!1857 (right!35338 t!4386))) 1)))))

(declare-fun b!4257922 () Bool)

(assert (=> b!4257922 (= e!2644502 (<= 0 (cheight!14446 t!4386)))))

(assert (= (and d!1252218 res!1750369) b!4257920))

(assert (= (and b!4257920 res!1750370) b!4257921))

(assert (= (and b!4257921 res!1750371) b!4257922))

(assert (=> d!1252218 m!4843275))

(declare-fun m!4843303 () Bool)

(assert (=> d!1252218 m!4843303))

(assert (=> b!4257921 m!4843039))

(assert (=> b!4257921 m!4843041))

(assert (=> b!4257921 m!4843039))

(assert (=> b!4257921 m!4843041))

(declare-fun m!4843307 () Bool)

(assert (=> b!4257921 m!4843307))

(assert (=> b!4257679 d!1252218))

(declare-fun b!4257927 () Bool)

(declare-fun e!2644505 () Bool)

(declare-fun e!2644504 () Bool)

(assert (=> b!4257927 (= e!2644505 e!2644504)))

(declare-fun res!1750376 () Bool)

(assert (=> b!4257927 (=> (not res!1750376) (not e!2644504))))

(assert (=> b!4257927 (= res!1750376 (<= (- 1) (- (height!1860 (left!35007 (right!35337 lt!1509976))) (height!1860 (right!35337 (right!35337 lt!1509976))))))))

(declare-fun b!4257928 () Bool)

(declare-fun res!1750375 () Bool)

(assert (=> b!4257928 (=> (not res!1750375) (not e!2644504))))

(assert (=> b!4257928 (= res!1750375 (isBalanced!3794 (left!35007 (right!35337 lt!1509976))))))

(declare-fun b!4257929 () Bool)

(declare-fun res!1750380 () Bool)

(assert (=> b!4257929 (=> (not res!1750380) (not e!2644504))))

(assert (=> b!4257929 (= res!1750380 (isBalanced!3794 (right!35337 (right!35337 lt!1509976))))))

(declare-fun b!4257930 () Bool)

(declare-fun res!1750378 () Bool)

(assert (=> b!4257930 (=> (not res!1750378) (not e!2644504))))

(assert (=> b!4257930 (= res!1750378 (not (isEmpty!27961 (left!35007 (right!35337 lt!1509976)))))))

(declare-fun b!4257931 () Bool)

(declare-fun res!1750379 () Bool)

(assert (=> b!4257931 (=> (not res!1750379) (not e!2644504))))

(assert (=> b!4257931 (= res!1750379 (<= (- (height!1860 (left!35007 (right!35337 lt!1509976))) (height!1860 (right!35337 (right!35337 lt!1509976)))) 1))))

(declare-fun b!4257926 () Bool)

(assert (=> b!4257926 (= e!2644504 (not (isEmpty!27961 (right!35337 (right!35337 lt!1509976)))))))

(declare-fun d!1252222 () Bool)

(declare-fun res!1750377 () Bool)

(assert (=> d!1252222 (=> res!1750377 e!2644505)))

(assert (=> d!1252222 (= res!1750377 (not ((_ is Node!14234) (right!35337 lt!1509976))))))

(assert (=> d!1252222 (= (isBalanced!3794 (right!35337 lt!1509976)) e!2644505)))

(assert (= (and d!1252222 (not res!1750377)) b!4257927))

(assert (= (and b!4257927 res!1750376) b!4257931))

(assert (= (and b!4257931 res!1750379) b!4257928))

(assert (= (and b!4257928 res!1750375) b!4257929))

(assert (= (and b!4257929 res!1750380) b!4257930))

(assert (= (and b!4257930 res!1750378) b!4257926))

(declare-fun m!4843317 () Bool)

(assert (=> b!4257929 m!4843317))

(declare-fun m!4843319 () Bool)

(assert (=> b!4257928 m!4843319))

(declare-fun m!4843321 () Bool)

(assert (=> b!4257931 m!4843321))

(declare-fun m!4843323 () Bool)

(assert (=> b!4257931 m!4843323))

(assert (=> b!4257927 m!4843321))

(assert (=> b!4257927 m!4843323))

(declare-fun m!4843325 () Bool)

(assert (=> b!4257930 m!4843325))

(declare-fun m!4843327 () Bool)

(assert (=> b!4257926 m!4843327))

(assert (=> b!4257794 d!1252222))

(declare-fun b!4257932 () Bool)

(declare-fun e!2644506 () Bool)

(assert (=> b!4257932 (= e!2644506 (not (isEmpty!27958 (right!35338 (left!35008 t!4386)))))))

(declare-fun d!1252226 () Bool)

(declare-fun res!1750383 () Bool)

(declare-fun e!2644507 () Bool)

(assert (=> d!1252226 (=> res!1750383 e!2644507)))

(assert (=> d!1252226 (= res!1750383 (not ((_ is Node!14235) (left!35008 t!4386))))))

(assert (=> d!1252226 (= (isBalanced!3793 (left!35008 t!4386)) e!2644507)))

(declare-fun b!4257933 () Bool)

(declare-fun res!1750381 () Bool)

(assert (=> b!4257933 (=> (not res!1750381) (not e!2644506))))

(assert (=> b!4257933 (= res!1750381 (not (isEmpty!27958 (left!35008 (left!35008 t!4386)))))))

(declare-fun b!4257934 () Bool)

(declare-fun res!1750386 () Bool)

(assert (=> b!4257934 (=> (not res!1750386) (not e!2644506))))

(assert (=> b!4257934 (= res!1750386 (<= (- (height!1857 (left!35008 (left!35008 t!4386))) (height!1857 (right!35338 (left!35008 t!4386)))) 1))))

(declare-fun b!4257935 () Bool)

(declare-fun res!1750382 () Bool)

(assert (=> b!4257935 (=> (not res!1750382) (not e!2644506))))

(assert (=> b!4257935 (= res!1750382 (isBalanced!3793 (left!35008 (left!35008 t!4386))))))

(declare-fun b!4257936 () Bool)

(declare-fun res!1750385 () Bool)

(assert (=> b!4257936 (=> (not res!1750385) (not e!2644506))))

(assert (=> b!4257936 (= res!1750385 (isBalanced!3793 (right!35338 (left!35008 t!4386))))))

(declare-fun b!4257937 () Bool)

(assert (=> b!4257937 (= e!2644507 e!2644506)))

(declare-fun res!1750384 () Bool)

(assert (=> b!4257937 (=> (not res!1750384) (not e!2644506))))

(assert (=> b!4257937 (= res!1750384 (<= (- 1) (- (height!1857 (left!35008 (left!35008 t!4386))) (height!1857 (right!35338 (left!35008 t!4386))))))))

(assert (= (and d!1252226 (not res!1750383)) b!4257937))

(assert (= (and b!4257937 res!1750384) b!4257934))

(assert (= (and b!4257934 res!1750386) b!4257935))

(assert (= (and b!4257935 res!1750382) b!4257936))

(assert (= (and b!4257936 res!1750385) b!4257933))

(assert (= (and b!4257933 res!1750381) b!4257932))

(assert (=> b!4257934 m!4843221))

(assert (=> b!4257934 m!4843223))

(declare-fun m!4843329 () Bool)

(assert (=> b!4257935 m!4843329))

(declare-fun m!4843331 () Bool)

(assert (=> b!4257936 m!4843331))

(assert (=> b!4257937 m!4843221))

(assert (=> b!4257937 m!4843223))

(declare-fun m!4843333 () Bool)

(assert (=> b!4257932 m!4843333))

(declare-fun m!4843335 () Bool)

(assert (=> b!4257933 m!4843335))

(assert (=> b!4257654 d!1252226))

(declare-fun d!1252228 () Bool)

(declare-fun lt!1510015 () Bool)

(declare-fun isEmpty!27965 (List!47350) Bool)

(assert (=> d!1252228 (= lt!1510015 (isEmpty!27965 (list!17039 (left!35007 lt!1509976))))))

(declare-fun size!34580 (Conc!14234) Int)

(assert (=> d!1252228 (= lt!1510015 (= (size!34580 (left!35007 lt!1509976)) 0))))

(assert (=> d!1252228 (= (isEmpty!27961 (left!35007 lt!1509976)) lt!1510015)))

(declare-fun bs!598900 () Bool)

(assert (= bs!598900 d!1252228))

(assert (=> bs!598900 m!4843077))

(assert (=> bs!598900 m!4843077))

(declare-fun m!4843337 () Bool)

(assert (=> bs!598900 m!4843337))

(declare-fun m!4843339 () Bool)

(assert (=> bs!598900 m!4843339))

(assert (=> b!4257795 d!1252228))

(declare-fun d!1252230 () Bool)

(declare-fun lt!1510016 () Bool)

(assert (=> d!1252230 (= lt!1510016 (isEmpty!27965 (list!17039 (right!35337 lt!1509976))))))

(assert (=> d!1252230 (= lt!1510016 (= (size!34580 (right!35337 lt!1509976)) 0))))

(assert (=> d!1252230 (= (isEmpty!27961 (right!35337 lt!1509976)) lt!1510016)))

(declare-fun bs!598901 () Bool)

(assert (= bs!598901 d!1252230))

(assert (=> bs!598901 m!4843079))

(assert (=> bs!598901 m!4843079))

(declare-fun m!4843343 () Bool)

(assert (=> bs!598901 m!4843343))

(declare-fun m!4843345 () Bool)

(assert (=> bs!598901 m!4843345))

(assert (=> b!4257791 d!1252230))

(declare-fun d!1252232 () Bool)

(assert (=> d!1252232 (= (list!17044 (xs!17541 t!4386)) (innerList!14295 (xs!17541 t!4386)))))

(assert (=> b!4257734 d!1252232))

(declare-fun d!1252236 () Bool)

(declare-fun lt!1510017 () Bool)

(assert (=> d!1252236 (= lt!1510017 (isEmpty!27963 (list!17040 (right!35338 t!4386))))))

(assert (=> d!1252236 (= lt!1510017 (= (size!34577 (right!35338 t!4386)) 0))))

(assert (=> d!1252236 (= (isEmpty!27958 (right!35338 t!4386)) lt!1510017)))

(declare-fun bs!598902 () Bool)

(assert (= bs!598902 d!1252236))

(assert (=> bs!598902 m!4843109))

(assert (=> bs!598902 m!4843109))

(declare-fun m!4843347 () Bool)

(assert (=> bs!598902 m!4843347))

(assert (=> bs!598902 m!4843303))

(assert (=> b!4257651 d!1252236))

(declare-fun d!1252238 () Bool)

(assert (=> d!1252238 (= (height!1860 (left!35007 lt!1509976)) (ite ((_ is Empty!14234) (left!35007 lt!1509976)) 0 (ite ((_ is Leaf!22000) (left!35007 lt!1509976)) 1 (cheight!14445 (left!35007 lt!1509976)))))))

(assert (=> b!4257792 d!1252238))

(declare-fun d!1252242 () Bool)

(assert (=> d!1252242 (= (height!1860 (right!35337 lt!1509976)) (ite ((_ is Empty!14234) (right!35337 lt!1509976)) 0 (ite ((_ is Leaf!22000) (right!35337 lt!1509976)) 1 (cheight!14445 (right!35337 lt!1509976)))))))

(assert (=> b!4257792 d!1252242))

(declare-fun d!1252244 () Bool)

(declare-fun lt!1510018 () List!47350)

(assert (=> d!1252244 (= (size!34575 lt!1510018) (size!34576 (list!17044 (xs!17541 t!4386))))))

(declare-fun e!2644513 () List!47350)

(assert (=> d!1252244 (= lt!1510018 e!2644513)))

(declare-fun c!722915 () Bool)

(assert (=> d!1252244 (= c!722915 ((_ is Nil!47227) (list!17044 (xs!17541 t!4386))))))

(assert (=> d!1252244 (= (map!9652 (list!17044 (xs!17541 t!4386)) f!428) lt!1510018)))

(declare-fun b!4257950 () Bool)

(assert (=> b!4257950 (= e!2644513 Nil!47226)))

(declare-fun b!4257951 () Bool)

(assert (=> b!4257951 (= e!2644513 ($colon$colon!625 (map!9652 (t!352988 (list!17044 (xs!17541 t!4386))) f!428) (dynLambda!20213 f!428 (h!52647 (list!17044 (xs!17541 t!4386))))))))

(assert (= (and d!1252244 c!722915) b!4257950))

(assert (= (and d!1252244 (not c!722915)) b!4257951))

(declare-fun b_lambda!125445 () Bool)

(assert (=> (not b_lambda!125445) (not b!4257951)))

(declare-fun t!353011 () Bool)

(declare-fun tb!256761 () Bool)

(assert (=> (and start!407962 (= f!428 f!428) t!353011) tb!256761))

(declare-fun result!313290 () Bool)

(assert (=> tb!256761 (= result!313290 tp_is_empty!22849)))

(assert (=> b!4257951 t!353011))

(declare-fun b_and!337555 () Bool)

(assert (= b_and!337553 (and (=> t!353011 result!313290) b_and!337555)))

(declare-fun m!4843361 () Bool)

(assert (=> d!1252244 m!4843361))

(assert (=> d!1252244 m!4843113))

(declare-fun m!4843363 () Bool)

(assert (=> d!1252244 m!4843363))

(declare-fun m!4843365 () Bool)

(assert (=> b!4257951 m!4843365))

(declare-fun m!4843367 () Bool)

(assert (=> b!4257951 m!4843367))

(assert (=> b!4257951 m!4843365))

(assert (=> b!4257951 m!4843367))

(declare-fun m!4843369 () Bool)

(assert (=> b!4257951 m!4843369))

(assert (=> d!1252152 d!1252244))

(assert (=> d!1252152 d!1252232))

(declare-fun d!1252250 () Bool)

(declare-fun _$10!112 () IArray!28473)

(assert (=> d!1252250 (= _$10!112 (IArray!28474 (map!9652 (list!17044 (xs!17541 t!4386)) f!428)))))

(declare-fun e!2644516 () Bool)

(declare-fun inv!62100 (IArray!28473) Bool)

(assert (=> d!1252250 (and (inv!62100 _$10!112) e!2644516)))

(assert (=> d!1252250 (= (choose!25976 (xs!17541 t!4386) f!428) _$10!112)))

(declare-fun b!4257954 () Bool)

(declare-fun tp!1306603 () Bool)

(assert (=> b!4257954 (= e!2644516 tp!1306603)))

(assert (= d!1252250 b!4257954))

(assert (=> d!1252250 m!4843113))

(assert (=> d!1252250 m!4843113))

(assert (=> d!1252250 m!4843119))

(declare-fun m!4843371 () Bool)

(assert (=> d!1252250 m!4843371))

(assert (=> d!1252152 d!1252250))

(declare-fun d!1252254 () Bool)

(declare-fun c!722916 () Bool)

(assert (=> d!1252254 (= c!722916 ((_ is Node!14235) (left!35008 (right!35338 t!4386))))))

(declare-fun e!2644517 () Bool)

(assert (=> d!1252254 (= (inv!62094 (left!35008 (right!35338 t!4386))) e!2644517)))

(declare-fun b!4257955 () Bool)

(assert (=> b!4257955 (= e!2644517 (inv!62096 (left!35008 (right!35338 t!4386))))))

(declare-fun b!4257956 () Bool)

(declare-fun e!2644518 () Bool)

(assert (=> b!4257956 (= e!2644517 e!2644518)))

(declare-fun res!1750399 () Bool)

(assert (=> b!4257956 (= res!1750399 (not ((_ is Leaf!22001) (left!35008 (right!35338 t!4386)))))))

(assert (=> b!4257956 (=> res!1750399 e!2644518)))

(declare-fun b!4257957 () Bool)

(assert (=> b!4257957 (= e!2644518 (inv!62097 (left!35008 (right!35338 t!4386))))))

(assert (= (and d!1252254 c!722916) b!4257955))

(assert (= (and d!1252254 (not c!722916)) b!4257956))

(assert (= (and b!4257956 (not res!1750399)) b!4257957))

(declare-fun m!4843373 () Bool)

(assert (=> b!4257955 m!4843373))

(declare-fun m!4843375 () Bool)

(assert (=> b!4257957 m!4843375))

(assert (=> b!4257823 d!1252254))

(declare-fun d!1252256 () Bool)

(declare-fun c!722917 () Bool)

(assert (=> d!1252256 (= c!722917 ((_ is Node!14235) (right!35338 (right!35338 t!4386))))))

(declare-fun e!2644519 () Bool)

(assert (=> d!1252256 (= (inv!62094 (right!35338 (right!35338 t!4386))) e!2644519)))

(declare-fun b!4257958 () Bool)

(assert (=> b!4257958 (= e!2644519 (inv!62096 (right!35338 (right!35338 t!4386))))))

(declare-fun b!4257959 () Bool)

(declare-fun e!2644520 () Bool)

(assert (=> b!4257959 (= e!2644519 e!2644520)))

(declare-fun res!1750400 () Bool)

(assert (=> b!4257959 (= res!1750400 (not ((_ is Leaf!22001) (right!35338 (right!35338 t!4386)))))))

(assert (=> b!4257959 (=> res!1750400 e!2644520)))

(declare-fun b!4257960 () Bool)

(assert (=> b!4257960 (= e!2644520 (inv!62097 (right!35338 (right!35338 t!4386))))))

(assert (= (and d!1252256 c!722917) b!4257958))

(assert (= (and d!1252256 (not c!722917)) b!4257959))

(assert (= (and b!4257959 (not res!1750400)) b!4257960))

(declare-fun m!4843377 () Bool)

(assert (=> b!4257958 m!4843377))

(declare-fun m!4843379 () Bool)

(assert (=> b!4257960 m!4843379))

(assert (=> b!4257823 d!1252256))

(declare-fun d!1252258 () Bool)

(assert (=> d!1252258 (= (inv!62095 (xs!17541 (right!35338 t!4386))) (<= (size!34576 (innerList!14295 (xs!17541 (right!35338 t!4386)))) 2147483647))))

(declare-fun bs!598903 () Bool)

(assert (= bs!598903 d!1252258))

(declare-fun m!4843381 () Bool)

(assert (=> bs!598903 m!4843381))

(assert (=> b!4257824 d!1252258))

(declare-fun b!4257961 () Bool)

(declare-fun e!2644521 () Bool)

(assert (=> b!4257961 (= e!2644521 (not (isEmpty!27958 (right!35338 (right!35338 t!4386)))))))

(declare-fun d!1252260 () Bool)

(declare-fun res!1750403 () Bool)

(declare-fun e!2644522 () Bool)

(assert (=> d!1252260 (=> res!1750403 e!2644522)))

(assert (=> d!1252260 (= res!1750403 (not ((_ is Node!14235) (right!35338 t!4386))))))

(assert (=> d!1252260 (= (isBalanced!3793 (right!35338 t!4386)) e!2644522)))

(declare-fun b!4257962 () Bool)

(declare-fun res!1750401 () Bool)

(assert (=> b!4257962 (=> (not res!1750401) (not e!2644521))))

(assert (=> b!4257962 (= res!1750401 (not (isEmpty!27958 (left!35008 (right!35338 t!4386)))))))

(declare-fun b!4257963 () Bool)

(declare-fun res!1750406 () Bool)

(assert (=> b!4257963 (=> (not res!1750406) (not e!2644521))))

(assert (=> b!4257963 (= res!1750406 (<= (- (height!1857 (left!35008 (right!35338 t!4386))) (height!1857 (right!35338 (right!35338 t!4386)))) 1))))

(declare-fun b!4257964 () Bool)

(declare-fun res!1750402 () Bool)

(assert (=> b!4257964 (=> (not res!1750402) (not e!2644521))))

(assert (=> b!4257964 (= res!1750402 (isBalanced!3793 (left!35008 (right!35338 t!4386))))))

(declare-fun b!4257965 () Bool)

(declare-fun res!1750405 () Bool)

(assert (=> b!4257965 (=> (not res!1750405) (not e!2644521))))

(assert (=> b!4257965 (= res!1750405 (isBalanced!3793 (right!35338 (right!35338 t!4386))))))

(declare-fun b!4257966 () Bool)

(assert (=> b!4257966 (= e!2644522 e!2644521)))

(declare-fun res!1750404 () Bool)

(assert (=> b!4257966 (=> (not res!1750404) (not e!2644521))))

(assert (=> b!4257966 (= res!1750404 (<= (- 1) (- (height!1857 (left!35008 (right!35338 t!4386))) (height!1857 (right!35338 (right!35338 t!4386))))))))

(assert (= (and d!1252260 (not res!1750403)) b!4257966))

(assert (= (and b!4257966 res!1750404) b!4257963))

(assert (= (and b!4257963 res!1750406) b!4257964))

(assert (= (and b!4257964 res!1750402) b!4257965))

(assert (= (and b!4257965 res!1750405) b!4257962))

(assert (= (and b!4257962 res!1750401) b!4257961))

(assert (=> b!4257963 m!4843195))

(assert (=> b!4257963 m!4843197))

(declare-fun m!4843383 () Bool)

(assert (=> b!4257964 m!4843383))

(declare-fun m!4843385 () Bool)

(assert (=> b!4257965 m!4843385))

(assert (=> b!4257966 m!4843195))

(assert (=> b!4257966 m!4843197))

(declare-fun m!4843387 () Bool)

(assert (=> b!4257961 m!4843387))

(declare-fun m!4843389 () Bool)

(assert (=> b!4257962 m!4843389))

(assert (=> b!4257655 d!1252260))

(declare-fun d!1252262 () Bool)

(assert (=> d!1252262 (= (list!17043 (xs!17540 lt!1509976)) (innerList!14294 (xs!17540 lt!1509976)))))

(assert (=> b!4257696 d!1252262))

(declare-fun d!1252264 () Bool)

(declare-fun res!1750411 () Bool)

(declare-fun e!2644527 () Bool)

(assert (=> d!1252264 (=> (not res!1750411) (not e!2644527))))

(assert (=> d!1252264 (= res!1750411 (<= (size!34576 (list!17044 (xs!17541 t!4386))) 512))))

(assert (=> d!1252264 (= (inv!62097 t!4386) e!2644527)))

(declare-fun b!4257975 () Bool)

(declare-fun res!1750412 () Bool)

(assert (=> b!4257975 (=> (not res!1750412) (not e!2644527))))

(assert (=> b!4257975 (= res!1750412 (= (csize!28701 t!4386) (size!34576 (list!17044 (xs!17541 t!4386)))))))

(declare-fun b!4257976 () Bool)

(assert (=> b!4257976 (= e!2644527 (and (> (csize!28701 t!4386) 0) (<= (csize!28701 t!4386) 512)))))

(assert (= (and d!1252264 res!1750411) b!4257975))

(assert (= (and b!4257975 res!1750412) b!4257976))

(assert (=> d!1252264 m!4843113))

(assert (=> d!1252264 m!4843113))

(assert (=> d!1252264 m!4843363))

(assert (=> b!4257975 m!4843113))

(assert (=> b!4257975 m!4843113))

(assert (=> b!4257975 m!4843363))

(assert (=> b!4257681 d!1252264))

(assert (=> b!4257796 d!1252238))

(assert (=> b!4257796 d!1252242))

(assert (=> b!4257656 d!1252212))

(assert (=> b!4257656 d!1252216))

(declare-fun d!1252266 () Bool)

(declare-fun e!2644539 () Bool)

(assert (=> d!1252266 e!2644539))

(declare-fun res!1750419 () Bool)

(assert (=> d!1252266 (=> (not res!1750419) (not e!2644539))))

(declare-fun lt!1510027 () List!47350)

(declare-fun content!7432 (List!47350) (InoxSet B!2809))

(assert (=> d!1252266 (= res!1750419 (= (content!7432 lt!1510027) ((_ map or) (content!7432 (list!17039 (left!35007 lt!1509976))) (content!7432 (list!17039 (right!35337 lt!1509976))))))))

(declare-fun e!2644538 () List!47350)

(assert (=> d!1252266 (= lt!1510027 e!2644538)))

(declare-fun c!722927 () Bool)

(assert (=> d!1252266 (= c!722927 ((_ is Nil!47226) (list!17039 (left!35007 lt!1509976))))))

(assert (=> d!1252266 (= (++!12018 (list!17039 (left!35007 lt!1509976)) (list!17039 (right!35337 lt!1509976))) lt!1510027)))

(declare-fun b!4258000 () Bool)

(assert (=> b!4258000 (= e!2644539 (or (not (= (list!17039 (right!35337 lt!1509976)) Nil!47226)) (= lt!1510027 (list!17039 (left!35007 lt!1509976)))))))

(declare-fun b!4257999 () Bool)

(declare-fun res!1750420 () Bool)

(assert (=> b!4257999 (=> (not res!1750420) (not e!2644539))))

(assert (=> b!4257999 (= res!1750420 (= (size!34575 lt!1510027) (+ (size!34575 (list!17039 (left!35007 lt!1509976))) (size!34575 (list!17039 (right!35337 lt!1509976))))))))

(declare-fun b!4257997 () Bool)

(assert (=> b!4257997 (= e!2644538 (list!17039 (right!35337 lt!1509976)))))

(declare-fun b!4257998 () Bool)

(assert (=> b!4257998 (= e!2644538 (Cons!47226 (h!52646 (list!17039 (left!35007 lt!1509976))) (++!12018 (t!352987 (list!17039 (left!35007 lt!1509976))) (list!17039 (right!35337 lt!1509976)))))))

(assert (= (and d!1252266 c!722927) b!4257997))

(assert (= (and d!1252266 (not c!722927)) b!4257998))

(assert (= (and d!1252266 res!1750419) b!4257999))

(assert (= (and b!4257999 res!1750420) b!4258000))

(declare-fun m!4843423 () Bool)

(assert (=> d!1252266 m!4843423))

(assert (=> d!1252266 m!4843077))

(declare-fun m!4843429 () Bool)

(assert (=> d!1252266 m!4843429))

(assert (=> d!1252266 m!4843079))

(declare-fun m!4843431 () Bool)

(assert (=> d!1252266 m!4843431))

(declare-fun m!4843433 () Bool)

(assert (=> b!4257999 m!4843433))

(assert (=> b!4257999 m!4843077))

(declare-fun m!4843435 () Bool)

(assert (=> b!4257999 m!4843435))

(assert (=> b!4257999 m!4843079))

(declare-fun m!4843437 () Bool)

(assert (=> b!4257999 m!4843437))

(assert (=> b!4257998 m!4843079))

(declare-fun m!4843439 () Bool)

(assert (=> b!4257998 m!4843439))

(assert (=> b!4257697 d!1252266))

(declare-fun b!4258010 () Bool)

(declare-fun e!2644545 () List!47350)

(assert (=> b!4258010 (= e!2644545 (++!12018 (list!17039 (left!35007 (left!35007 lt!1509976))) (list!17039 (right!35337 (left!35007 lt!1509976)))))))

(declare-fun d!1252278 () Bool)

(declare-fun c!722930 () Bool)

(assert (=> d!1252278 (= c!722930 ((_ is Empty!14234) (left!35007 lt!1509976)))))

(declare-fun e!2644544 () List!47350)

(assert (=> d!1252278 (= (list!17039 (left!35007 lt!1509976)) e!2644544)))

(declare-fun b!4258008 () Bool)

(assert (=> b!4258008 (= e!2644544 e!2644545)))

(declare-fun c!722931 () Bool)

(assert (=> b!4258008 (= c!722931 ((_ is Leaf!22000) (left!35007 lt!1509976)))))

(declare-fun b!4258009 () Bool)

(assert (=> b!4258009 (= e!2644545 (list!17043 (xs!17540 (left!35007 lt!1509976))))))

(declare-fun b!4258007 () Bool)

(assert (=> b!4258007 (= e!2644544 Nil!47226)))

(assert (= (and d!1252278 c!722930) b!4258007))

(assert (= (and d!1252278 (not c!722930)) b!4258008))

(assert (= (and b!4258008 c!722931) b!4258009))

(assert (= (and b!4258008 (not c!722931)) b!4258010))

(declare-fun m!4843445 () Bool)

(assert (=> b!4258010 m!4843445))

(declare-fun m!4843447 () Bool)

(assert (=> b!4258010 m!4843447))

(assert (=> b!4258010 m!4843445))

(assert (=> b!4258010 m!4843447))

(declare-fun m!4843451 () Bool)

(assert (=> b!4258010 m!4843451))

(declare-fun m!4843453 () Bool)

(assert (=> b!4258009 m!4843453))

(assert (=> b!4257697 d!1252278))

(declare-fun b!4258022 () Bool)

(declare-fun e!2644550 () List!47350)

(assert (=> b!4258022 (= e!2644550 (++!12018 (list!17039 (left!35007 (right!35337 lt!1509976))) (list!17039 (right!35337 (right!35337 lt!1509976)))))))

(declare-fun d!1252284 () Bool)

(declare-fun c!722932 () Bool)

(assert (=> d!1252284 (= c!722932 ((_ is Empty!14234) (right!35337 lt!1509976)))))

(declare-fun e!2644549 () List!47350)

(assert (=> d!1252284 (= (list!17039 (right!35337 lt!1509976)) e!2644549)))

(declare-fun b!4258020 () Bool)

(assert (=> b!4258020 (= e!2644549 e!2644550)))

(declare-fun c!722933 () Bool)

(assert (=> b!4258020 (= c!722933 ((_ is Leaf!22000) (right!35337 lt!1509976)))))

(declare-fun b!4258021 () Bool)

(assert (=> b!4258021 (= e!2644550 (list!17043 (xs!17540 (right!35337 lt!1509976))))))

(declare-fun b!4258019 () Bool)

(assert (=> b!4258019 (= e!2644549 Nil!47226)))

(assert (= (and d!1252284 c!722932) b!4258019))

(assert (= (and d!1252284 (not c!722932)) b!4258020))

(assert (= (and b!4258020 c!722933) b!4258021))

(assert (= (and b!4258020 (not c!722933)) b!4258022))

(declare-fun m!4843455 () Bool)

(assert (=> b!4258022 m!4843455))

(declare-fun m!4843457 () Bool)

(assert (=> b!4258022 m!4843457))

(assert (=> b!4258022 m!4843455))

(assert (=> b!4258022 m!4843457))

(declare-fun m!4843459 () Bool)

(assert (=> b!4258022 m!4843459))

(declare-fun m!4843461 () Bool)

(assert (=> b!4258021 m!4843461))

(assert (=> b!4257697 d!1252284))

(declare-fun tp!1306604 () Bool)

(declare-fun tp!1306606 () Bool)

(declare-fun e!2644552 () Bool)

(declare-fun b!4258023 () Bool)

(assert (=> b!4258023 (= e!2644552 (and (inv!62094 (left!35008 (left!35008 (right!35338 t!4386)))) tp!1306606 (inv!62094 (right!35338 (left!35008 (right!35338 t!4386)))) tp!1306604))))

(declare-fun b!4258025 () Bool)

(declare-fun e!2644551 () Bool)

(declare-fun tp!1306605 () Bool)

(assert (=> b!4258025 (= e!2644551 tp!1306605)))

(declare-fun b!4258024 () Bool)

(assert (=> b!4258024 (= e!2644552 (and (inv!62095 (xs!17541 (left!35008 (right!35338 t!4386)))) e!2644551))))

(assert (=> b!4257823 (= tp!1306597 (and (inv!62094 (left!35008 (right!35338 t!4386))) e!2644552))))

(assert (= (and b!4257823 ((_ is Node!14235) (left!35008 (right!35338 t!4386)))) b!4258023))

(assert (= b!4258024 b!4258025))

(assert (= (and b!4257823 ((_ is Leaf!22001) (left!35008 (right!35338 t!4386)))) b!4258024))

(declare-fun m!4843475 () Bool)

(assert (=> b!4258023 m!4843475))

(declare-fun m!4843477 () Bool)

(assert (=> b!4258023 m!4843477))

(declare-fun m!4843479 () Bool)

(assert (=> b!4258024 m!4843479))

(assert (=> b!4257823 m!4843185))

(declare-fun e!2644554 () Bool)

(declare-fun tp!1306607 () Bool)

(declare-fun b!4258026 () Bool)

(declare-fun tp!1306609 () Bool)

(assert (=> b!4258026 (= e!2644554 (and (inv!62094 (left!35008 (right!35338 (right!35338 t!4386)))) tp!1306609 (inv!62094 (right!35338 (right!35338 (right!35338 t!4386)))) tp!1306607))))

(declare-fun b!4258028 () Bool)

(declare-fun e!2644553 () Bool)

(declare-fun tp!1306608 () Bool)

(assert (=> b!4258028 (= e!2644553 tp!1306608)))

(declare-fun b!4258027 () Bool)

(assert (=> b!4258027 (= e!2644554 (and (inv!62095 (xs!17541 (right!35338 (right!35338 t!4386)))) e!2644553))))

(assert (=> b!4257823 (= tp!1306595 (and (inv!62094 (right!35338 (right!35338 t!4386))) e!2644554))))

(assert (= (and b!4257823 ((_ is Node!14235) (right!35338 (right!35338 t!4386)))) b!4258026))

(assert (= b!4258027 b!4258028))

(assert (= (and b!4257823 ((_ is Leaf!22001) (right!35338 (right!35338 t!4386)))) b!4258027))

(declare-fun m!4843481 () Bool)

(assert (=> b!4258026 m!4843481))

(declare-fun m!4843483 () Bool)

(assert (=> b!4258026 m!4843483))

(declare-fun m!4843485 () Bool)

(assert (=> b!4258027 m!4843485))

(assert (=> b!4257823 m!4843187))

(declare-fun b!4258029 () Bool)

(declare-fun e!2644555 () Bool)

(declare-fun tp!1306610 () Bool)

(assert (=> b!4258029 (= e!2644555 (and tp_is_empty!22853 tp!1306610))))

(assert (=> b!4257822 (= tp!1306593 e!2644555)))

(assert (= (and b!4257822 ((_ is Cons!47227) (innerList!14295 (xs!17541 (left!35008 t!4386))))) b!4258029))

(declare-fun b!4258030 () Bool)

(declare-fun e!2644556 () Bool)

(declare-fun tp!1306611 () Bool)

(assert (=> b!4258030 (= e!2644556 (and tp_is_empty!22853 tp!1306611))))

(assert (=> b!4257825 (= tp!1306596 e!2644556)))

(assert (= (and b!4257825 ((_ is Cons!47227) (innerList!14295 (xs!17541 (right!35338 t!4386))))) b!4258030))

(declare-fun e!2644559 () Bool)

(declare-fun b!4258033 () Bool)

(declare-fun tp!1306614 () Bool)

(declare-fun tp!1306612 () Bool)

(assert (=> b!4258033 (= e!2644559 (and (inv!62094 (left!35008 (left!35008 (left!35008 t!4386)))) tp!1306614 (inv!62094 (right!35338 (left!35008 (left!35008 t!4386)))) tp!1306612))))

(declare-fun b!4258035 () Bool)

(declare-fun e!2644558 () Bool)

(declare-fun tp!1306613 () Bool)

(assert (=> b!4258035 (= e!2644558 tp!1306613)))

(declare-fun b!4258034 () Bool)

(assert (=> b!4258034 (= e!2644559 (and (inv!62095 (xs!17541 (left!35008 (left!35008 t!4386)))) e!2644558))))

(assert (=> b!4257820 (= tp!1306594 (and (inv!62094 (left!35008 (left!35008 t!4386))) e!2644559))))

(assert (= (and b!4257820 ((_ is Node!14235) (left!35008 (left!35008 t!4386)))) b!4258033))

(assert (= b!4258034 b!4258035))

(assert (= (and b!4257820 ((_ is Leaf!22001) (left!35008 (left!35008 t!4386)))) b!4258034))

(declare-fun m!4843487 () Bool)

(assert (=> b!4258033 m!4843487))

(declare-fun m!4843489 () Bool)

(assert (=> b!4258033 m!4843489))

(declare-fun m!4843491 () Bool)

(assert (=> b!4258034 m!4843491))

(assert (=> b!4257820 m!4843179))

(declare-fun tp!1306617 () Bool)

(declare-fun e!2644561 () Bool)

(declare-fun b!4258036 () Bool)

(declare-fun tp!1306615 () Bool)

(assert (=> b!4258036 (= e!2644561 (and (inv!62094 (left!35008 (right!35338 (left!35008 t!4386)))) tp!1306617 (inv!62094 (right!35338 (right!35338 (left!35008 t!4386)))) tp!1306615))))

(declare-fun b!4258038 () Bool)

(declare-fun e!2644560 () Bool)

(declare-fun tp!1306616 () Bool)

(assert (=> b!4258038 (= e!2644560 tp!1306616)))

(declare-fun b!4258037 () Bool)

(assert (=> b!4258037 (= e!2644561 (and (inv!62095 (xs!17541 (right!35338 (left!35008 t!4386)))) e!2644560))))

(assert (=> b!4257820 (= tp!1306592 (and (inv!62094 (right!35338 (left!35008 t!4386))) e!2644561))))

(assert (= (and b!4257820 ((_ is Node!14235) (right!35338 (left!35008 t!4386)))) b!4258036))

(assert (= b!4258037 b!4258038))

(assert (= (and b!4257820 ((_ is Leaf!22001) (right!35338 (left!35008 t!4386)))) b!4258037))

(declare-fun m!4843499 () Bool)

(assert (=> b!4258036 m!4843499))

(declare-fun m!4843501 () Bool)

(assert (=> b!4258036 m!4843501))

(declare-fun m!4843503 () Bool)

(assert (=> b!4258037 m!4843503))

(assert (=> b!4257820 m!4843181))

(declare-fun b!4258039 () Bool)

(declare-fun e!2644562 () Bool)

(declare-fun tp!1306618 () Bool)

(assert (=> b!4258039 (= e!2644562 (and tp_is_empty!22853 tp!1306618))))

(assert (=> b!4257830 (= tp!1306600 e!2644562)))

(assert (= (and b!4257830 ((_ is Cons!47227) (t!352988 (innerList!14295 (xs!17541 t!4386))))) b!4258039))

(declare-fun b_lambda!125449 () Bool)

(assert (= b_lambda!125443 (or (and start!407962 b_free!126673) b_lambda!125449)))

(declare-fun b_lambda!125451 () Bool)

(assert (= b_lambda!125445 (or (and start!407962 b_free!126673) b_lambda!125451)))

(check-sat (not b!4257932) (not b!4257861) (not d!1252228) (not d!1252170) (not b!4257890) (not b!4258025) (not b!4257850) (not b!4257936) (not b!4257838) (not b!4257859) (not b!4257907) (not b!4258039) (not b!4257954) (not b!4257921) (not d!1252208) (not d!1252230) (not b_lambda!125451) (not b!4257958) (not b!4257868) (not b!4258028) b_and!337555 (not b!4258038) (not b!4258024) (not b!4257964) (not b!4257845) (not b!4257870) (not b!4257934) (not d!1252244) (not b!4257899) (not b!4257966) (not d!1252176) (not b!4257965) (not b!4257914) (not b!4257894) (not b!4257823) (not b!4258023) (not b!4258034) (not b!4257951) (not d!1252218) (not b!4257820) (not b!4257957) tp_is_empty!22849 (not b!4258027) (not b!4257840) (not b!4258033) (not b!4257928) (not b!4257961) (not b!4258036) (not b!4257931) (not b!4257915) (not d!1252258) (not b!4257917) (not b!4257895) (not b_lambda!125449) (not b!4258026) (not d!1252236) (not b!4257926) (not b!4257999) (not b!4257889) (not b!4257930) (not b!4258030) (not d!1252264) (not b!4257913) (not b!4257916) (not b!4257962) (not b_lambda!125441) (not b!4257857) (not b!4258022) (not b!4257963) (not b!4257955) (not b!4257933) (not d!1252266) (not b!4258035) (not b!4257929) (not b!4258010) (not b!4258029) (not d!1252182) (not b!4257843) (not d!1252250) (not b!4257937) (not b!4257927) (not b!4257998) (not d!1252178) (not b!4258021) (not b!4257912) (not b!4257898) (not b!4257842) (not d!1252184) (not b!4257960) (not b_next!127377) (not b!4257935) (not d!1252202) tp_is_empty!22853 (not d!1252192) (not b!4258037) (not b!4257975) (not b!4258009))
(check-sat b_and!337555 (not b_next!127377))
