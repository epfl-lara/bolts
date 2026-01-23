; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!532550 () Bool)

(assert start!532550)

(declare-fun tp!1410049 () Bool)

(declare-fun tp!1410050 () Bool)

(declare-datatypes ((T!103956 0))(
  ( (T!103957 (val!23482 Int)) )
))
(declare-datatypes ((List!58392 0))(
  ( (Nil!58268) (Cons!58268 (h!64716 T!103956) (t!370843 List!58392)) )
))
(declare-datatypes ((IArray!31021 0))(
  ( (IArray!31022 (innerList!15568 List!58392)) )
))
(declare-datatypes ((Conc!15480 0))(
  ( (Node!15480 (left!42649 Conc!15480) (right!42979 Conc!15480) (csize!31190 Int) (cheight!15691 Int)) (Leaf!25684 (xs!18806 IArray!31021) (csize!31191 Int)) (Empty!15480) )
))
(declare-fun t!4198 () Conc!15480)

(declare-fun b!5034126 () Bool)

(declare-fun e!3144582 () Bool)

(declare-fun inv!76984 (Conc!15480) Bool)

(assert (=> b!5034126 (= e!3144582 (and (inv!76984 (left!42649 t!4198)) tp!1410050 (inv!76984 (right!42979 t!4198)) tp!1410049))))

(declare-fun b!5034127 () Bool)

(declare-fun res!2145190 () Bool)

(declare-fun e!3144580 () Bool)

(assert (=> b!5034127 (=> (not res!2145190) (not e!3144580))))

(declare-fun i!618 () Int)

(get-info :version)

(assert (=> b!5034127 (= res!2145190 (and (not ((_ is Empty!15480) t!4198)) ((_ is Leaf!25684) t!4198) (> i!618 0) (not (= i!618 (csize!31191 t!4198)))))))

(declare-fun res!2145192 () Bool)

(assert (=> start!532550 (=> (not res!2145192) (not e!3144580))))

(declare-fun isBalanced!4342 (Conc!15480) Bool)

(assert (=> start!532550 (= res!2145192 (isBalanced!4342 t!4198))))

(assert (=> start!532550 e!3144580))

(assert (=> start!532550 (and (inv!76984 t!4198) e!3144582)))

(assert (=> start!532550 true))

(declare-fun b!5034128 () Bool)

(declare-fun e!3144576 () Bool)

(declare-fun e!3144579 () Bool)

(assert (=> b!5034128 (= e!3144576 e!3144579)))

(declare-fun res!2145191 () Bool)

(assert (=> b!5034128 (=> (not res!2145191) (not e!3144579))))

(assert (=> b!5034128 (= res!2145191 (<= i!618 (csize!31191 t!4198)))))

(declare-fun b!5034129 () Bool)

(declare-fun e!3144581 () Bool)

(declare-fun inv!76985 (IArray!31021) Bool)

(assert (=> b!5034129 (= e!3144582 (and (inv!76985 (xs!18806 t!4198)) e!3144581))))

(declare-fun b!5034130 () Bool)

(declare-fun e!3144578 () Bool)

(declare-fun e!3144577 () Bool)

(assert (=> b!5034130 (= e!3144578 e!3144577)))

(declare-fun res!2145195 () Bool)

(assert (=> b!5034130 (=> (not res!2145195) (not e!3144577))))

(declare-datatypes ((tuple2!63178 0))(
  ( (tuple2!63179 (_1!34892 List!58392) (_2!34892 List!58392)) )
))
(declare-fun lt!2082929 () tuple2!63178)

(declare-fun lt!2082931 () List!58392)

(assert (=> b!5034130 (= res!2145195 (= (_2!34892 lt!2082929) lt!2082931))))

(declare-fun lt!2082932 () List!58392)

(declare-fun drop!2608 (List!58392 Int) List!58392)

(assert (=> b!5034130 (= lt!2082931 (drop!2608 lt!2082932 i!618))))

(declare-fun b!5034131 () Bool)

(declare-fun res!2145188 () Bool)

(assert (=> b!5034131 (=> (not res!2145188) (not e!3144580))))

(declare-fun size!38833 (Conc!15480) Int)

(assert (=> b!5034131 (= res!2145188 (<= i!618 (size!38833 t!4198)))))

(declare-fun b!5034132 () Bool)

(declare-fun res!2145194 () Bool)

(assert (=> b!5034132 (=> (not res!2145194) (not e!3144580))))

(assert (=> b!5034132 (= res!2145194 (<= 0 i!618))))

(declare-fun b!5034133 () Bool)

(assert (=> b!5034133 (= e!3144580 e!3144578)))

(declare-fun res!2145189 () Bool)

(assert (=> b!5034133 (=> (not res!2145189) (not e!3144578))))

(declare-fun take!801 (List!58392 Int) List!58392)

(assert (=> b!5034133 (= res!2145189 (= (_1!34892 lt!2082929) (take!801 lt!2082932 i!618)))))

(declare-fun splitAtIndex!183 (List!58392 Int) tuple2!63178)

(assert (=> b!5034133 (= lt!2082929 (splitAtIndex!183 lt!2082932 i!618))))

(declare-fun list!18855 (IArray!31021) List!58392)

(assert (=> b!5034133 (= lt!2082932 (list!18855 (xs!18806 t!4198)))))

(declare-fun b!5034134 () Bool)

(declare-fun size!38834 (IArray!31021) Int)

(assert (=> b!5034134 (= e!3144579 (<= (csize!31191 t!4198) (size!38834 (xs!18806 t!4198))))))

(declare-fun b!5034135 () Bool)

(declare-fun tp!1410048 () Bool)

(assert (=> b!5034135 (= e!3144581 tp!1410048)))

(declare-fun b!5034136 () Bool)

(assert (=> b!5034136 (= e!3144577 (not e!3144576))))

(declare-fun res!2145193 () Bool)

(assert (=> b!5034136 (=> res!2145193 e!3144576)))

(declare-fun slice!839 (List!58392 Int Int) List!58392)

(assert (=> b!5034136 (= res!2145193 (not (= (_1!34892 lt!2082929) (slice!839 lt!2082932 0 i!618))))))

(declare-fun size!38835 (List!58392) Int)

(assert (=> b!5034136 (= lt!2082931 (slice!839 lt!2082932 i!618 (size!38835 lt!2082932)))))

(declare-datatypes ((Unit!149459 0))(
  ( (Unit!149460) )
))
(declare-fun lt!2082930 () Unit!149459)

(declare-fun dropLemma!64 (List!58392 Int) Unit!149459)

(assert (=> b!5034136 (= lt!2082930 (dropLemma!64 lt!2082932 i!618))))

(assert (= (and start!532550 res!2145192) b!5034132))

(assert (= (and b!5034132 res!2145194) b!5034131))

(assert (= (and b!5034131 res!2145188) b!5034127))

(assert (= (and b!5034127 res!2145190) b!5034133))

(assert (= (and b!5034133 res!2145189) b!5034130))

(assert (= (and b!5034130 res!2145195) b!5034136))

(assert (= (and b!5034136 (not res!2145193)) b!5034128))

(assert (= (and b!5034128 res!2145191) b!5034134))

(assert (= (and start!532550 ((_ is Node!15480) t!4198)) b!5034126))

(assert (= b!5034129 b!5034135))

(assert (= (and start!532550 ((_ is Leaf!25684) t!4198)) b!5034129))

(declare-fun m!6068682 () Bool)

(assert (=> b!5034134 m!6068682))

(declare-fun m!6068684 () Bool)

(assert (=> b!5034136 m!6068684))

(declare-fun m!6068686 () Bool)

(assert (=> b!5034136 m!6068686))

(assert (=> b!5034136 m!6068686))

(declare-fun m!6068688 () Bool)

(assert (=> b!5034136 m!6068688))

(declare-fun m!6068690 () Bool)

(assert (=> b!5034136 m!6068690))

(declare-fun m!6068692 () Bool)

(assert (=> b!5034133 m!6068692))

(declare-fun m!6068694 () Bool)

(assert (=> b!5034133 m!6068694))

(declare-fun m!6068696 () Bool)

(assert (=> b!5034133 m!6068696))

(declare-fun m!6068698 () Bool)

(assert (=> b!5034126 m!6068698))

(declare-fun m!6068700 () Bool)

(assert (=> b!5034126 m!6068700))

(declare-fun m!6068702 () Bool)

(assert (=> b!5034129 m!6068702))

(declare-fun m!6068704 () Bool)

(assert (=> b!5034130 m!6068704))

(declare-fun m!6068706 () Bool)

(assert (=> start!532550 m!6068706))

(declare-fun m!6068708 () Bool)

(assert (=> start!532550 m!6068708))

(declare-fun m!6068710 () Bool)

(assert (=> b!5034131 m!6068710))

(check-sat (not b!5034134) (not b!5034133) (not b!5034129) (not b!5034131) (not start!532550) (not b!5034130) (not b!5034136) (not b!5034126) (not b!5034135))
(check-sat)
(get-model)

(declare-fun d!1619684 () Bool)

(declare-fun e!3144601 () Bool)

(assert (=> d!1619684 e!3144601))

(declare-fun res!2145200 () Bool)

(assert (=> d!1619684 (=> (not res!2145200) (not e!3144601))))

(declare-fun lt!2082937 () List!58392)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10334 (List!58392) (InoxSet T!103956))

(assert (=> d!1619684 (= res!2145200 (= ((_ map implies) (content!10334 lt!2082937) (content!10334 lt!2082932)) ((as const (InoxSet T!103956)) true)))))

(declare-fun e!3144604 () List!58392)

(assert (=> d!1619684 (= lt!2082937 e!3144604)))

(declare-fun c!862135 () Bool)

(assert (=> d!1619684 (= c!862135 ((_ is Nil!58268) lt!2082932))))

(assert (=> d!1619684 (= (drop!2608 lt!2082932 i!618) lt!2082937)))

(declare-fun b!5034169 () Bool)

(declare-fun e!3144605 () Int)

(assert (=> b!5034169 (= e!3144601 (= (size!38835 lt!2082937) e!3144605))))

(declare-fun c!862136 () Bool)

(assert (=> b!5034169 (= c!862136 (<= i!618 0))))

(declare-fun bm!351152 () Bool)

(declare-fun call!351157 () Int)

(assert (=> bm!351152 (= call!351157 (size!38835 lt!2082932))))

(declare-fun b!5034170 () Bool)

(declare-fun e!3144603 () Int)

(assert (=> b!5034170 (= e!3144605 e!3144603)))

(declare-fun c!862134 () Bool)

(assert (=> b!5034170 (= c!862134 (>= i!618 call!351157))))

(declare-fun b!5034171 () Bool)

(declare-fun e!3144602 () List!58392)

(assert (=> b!5034171 (= e!3144604 e!3144602)))

(declare-fun c!862137 () Bool)

(assert (=> b!5034171 (= c!862137 (<= i!618 0))))

(declare-fun b!5034172 () Bool)

(assert (=> b!5034172 (= e!3144603 (- call!351157 i!618))))

(declare-fun b!5034173 () Bool)

(assert (=> b!5034173 (= e!3144603 0)))

(declare-fun b!5034174 () Bool)

(assert (=> b!5034174 (= e!3144605 call!351157)))

(declare-fun b!5034175 () Bool)

(assert (=> b!5034175 (= e!3144602 lt!2082932)))

(declare-fun b!5034176 () Bool)

(assert (=> b!5034176 (= e!3144604 Nil!58268)))

(declare-fun b!5034177 () Bool)

(assert (=> b!5034177 (= e!3144602 (drop!2608 (t!370843 lt!2082932) (- i!618 1)))))

(assert (= (and d!1619684 c!862135) b!5034176))

(assert (= (and d!1619684 (not c!862135)) b!5034171))

(assert (= (and b!5034171 c!862137) b!5034175))

(assert (= (and b!5034171 (not c!862137)) b!5034177))

(assert (= (and d!1619684 res!2145200) b!5034169))

(assert (= (and b!5034169 c!862136) b!5034174))

(assert (= (and b!5034169 (not c!862136)) b!5034170))

(assert (= (and b!5034170 c!862134) b!5034173))

(assert (= (and b!5034170 (not c!862134)) b!5034172))

(assert (= (or b!5034174 b!5034170 b!5034172) bm!351152))

(declare-fun m!6068712 () Bool)

(assert (=> d!1619684 m!6068712))

(declare-fun m!6068714 () Bool)

(assert (=> d!1619684 m!6068714))

(declare-fun m!6068716 () Bool)

(assert (=> b!5034169 m!6068716))

(assert (=> bm!351152 m!6068686))

(declare-fun m!6068718 () Bool)

(assert (=> b!5034177 m!6068718))

(assert (=> b!5034130 d!1619684))

(declare-fun d!1619686 () Bool)

(declare-fun lt!2082941 () Int)

(assert (=> d!1619686 (= lt!2082941 (size!38835 (list!18855 (xs!18806 t!4198))))))

(declare-fun choose!37238 (IArray!31021) Int)

(assert (=> d!1619686 (= lt!2082941 (choose!37238 (xs!18806 t!4198)))))

(assert (=> d!1619686 (= (size!38834 (xs!18806 t!4198)) lt!2082941)))

(declare-fun bs!1188709 () Bool)

(assert (= bs!1188709 d!1619686))

(assert (=> bs!1188709 m!6068696))

(assert (=> bs!1188709 m!6068696))

(declare-fun m!6068720 () Bool)

(assert (=> bs!1188709 m!6068720))

(declare-fun m!6068722 () Bool)

(assert (=> bs!1188709 m!6068722))

(assert (=> b!5034134 d!1619686))

(declare-fun d!1619688 () Bool)

(assert (=> d!1619688 (= (inv!76985 (xs!18806 t!4198)) (<= (size!38835 (innerList!15568 (xs!18806 t!4198))) 2147483647))))

(declare-fun bs!1188710 () Bool)

(assert (= bs!1188710 d!1619688))

(declare-fun m!6068732 () Bool)

(assert (=> bs!1188710 m!6068732))

(assert (=> b!5034129 d!1619688))

(declare-fun b!5034197 () Bool)

(declare-fun e!3144614 () Bool)

(declare-fun isEmpty!31498 (Conc!15480) Bool)

(assert (=> b!5034197 (= e!3144614 (not (isEmpty!31498 (right!42979 t!4198))))))

(declare-fun d!1619692 () Bool)

(declare-fun res!2145216 () Bool)

(declare-fun e!3144615 () Bool)

(assert (=> d!1619692 (=> res!2145216 e!3144615)))

(assert (=> d!1619692 (= res!2145216 (not ((_ is Node!15480) t!4198)))))

(assert (=> d!1619692 (= (isBalanced!4342 t!4198) e!3144615)))

(declare-fun b!5034198 () Bool)

(declare-fun res!2145214 () Bool)

(assert (=> b!5034198 (=> (not res!2145214) (not e!3144614))))

(declare-fun height!2062 (Conc!15480) Int)

(assert (=> b!5034198 (= res!2145214 (<= (- (height!2062 (left!42649 t!4198)) (height!2062 (right!42979 t!4198))) 1))))

(declare-fun b!5034199 () Bool)

(declare-fun res!2145217 () Bool)

(assert (=> b!5034199 (=> (not res!2145217) (not e!3144614))))

(assert (=> b!5034199 (= res!2145217 (isBalanced!4342 (left!42649 t!4198)))))

(declare-fun b!5034200 () Bool)

(declare-fun res!2145219 () Bool)

(assert (=> b!5034200 (=> (not res!2145219) (not e!3144614))))

(assert (=> b!5034200 (= res!2145219 (not (isEmpty!31498 (left!42649 t!4198))))))

(declare-fun b!5034201 () Bool)

(assert (=> b!5034201 (= e!3144615 e!3144614)))

(declare-fun res!2145215 () Bool)

(assert (=> b!5034201 (=> (not res!2145215) (not e!3144614))))

(assert (=> b!5034201 (= res!2145215 (<= (- 1) (- (height!2062 (left!42649 t!4198)) (height!2062 (right!42979 t!4198)))))))

(declare-fun b!5034202 () Bool)

(declare-fun res!2145218 () Bool)

(assert (=> b!5034202 (=> (not res!2145218) (not e!3144614))))

(assert (=> b!5034202 (= res!2145218 (isBalanced!4342 (right!42979 t!4198)))))

(assert (= (and d!1619692 (not res!2145216)) b!5034201))

(assert (= (and b!5034201 res!2145215) b!5034198))

(assert (= (and b!5034198 res!2145214) b!5034199))

(assert (= (and b!5034199 res!2145217) b!5034202))

(assert (= (and b!5034202 res!2145218) b!5034200))

(assert (= (and b!5034200 res!2145219) b!5034197))

(declare-fun m!6068734 () Bool)

(assert (=> b!5034197 m!6068734))

(declare-fun m!6068736 () Bool)

(assert (=> b!5034202 m!6068736))

(declare-fun m!6068738 () Bool)

(assert (=> b!5034199 m!6068738))

(declare-fun m!6068740 () Bool)

(assert (=> b!5034201 m!6068740))

(declare-fun m!6068742 () Bool)

(assert (=> b!5034201 m!6068742))

(declare-fun m!6068744 () Bool)

(assert (=> b!5034200 m!6068744))

(assert (=> b!5034198 m!6068740))

(assert (=> b!5034198 m!6068742))

(assert (=> start!532550 d!1619692))

(declare-fun d!1619694 () Bool)

(declare-fun c!862147 () Bool)

(assert (=> d!1619694 (= c!862147 ((_ is Node!15480) t!4198))))

(declare-fun e!3144626 () Bool)

(assert (=> d!1619694 (= (inv!76984 t!4198) e!3144626)))

(declare-fun b!5034221 () Bool)

(declare-fun inv!76986 (Conc!15480) Bool)

(assert (=> b!5034221 (= e!3144626 (inv!76986 t!4198))))

(declare-fun b!5034222 () Bool)

(declare-fun e!3144627 () Bool)

(assert (=> b!5034222 (= e!3144626 e!3144627)))

(declare-fun res!2145226 () Bool)

(assert (=> b!5034222 (= res!2145226 (not ((_ is Leaf!25684) t!4198)))))

(assert (=> b!5034222 (=> res!2145226 e!3144627)))

(declare-fun b!5034223 () Bool)

(declare-fun inv!76987 (Conc!15480) Bool)

(assert (=> b!5034223 (= e!3144627 (inv!76987 t!4198))))

(assert (= (and d!1619694 c!862147) b!5034221))

(assert (= (and d!1619694 (not c!862147)) b!5034222))

(assert (= (and b!5034222 (not res!2145226)) b!5034223))

(declare-fun m!6068746 () Bool)

(assert (=> b!5034221 m!6068746))

(declare-fun m!6068748 () Bool)

(assert (=> b!5034223 m!6068748))

(assert (=> start!532550 d!1619694))

(declare-fun d!1619696 () Bool)

(declare-fun e!3144640 () Bool)

(assert (=> d!1619696 e!3144640))

(declare-fun res!2145231 () Bool)

(assert (=> d!1619696 (=> (not res!2145231) (not e!3144640))))

(declare-fun lt!2082950 () List!58392)

(assert (=> d!1619696 (= res!2145231 (= ((_ map implies) (content!10334 lt!2082950) (content!10334 lt!2082932)) ((as const (InoxSet T!103956)) true)))))

(declare-fun e!3144642 () List!58392)

(assert (=> d!1619696 (= lt!2082950 e!3144642)))

(declare-fun c!862156 () Bool)

(assert (=> d!1619696 (= c!862156 (or ((_ is Nil!58268) lt!2082932) (<= i!618 0)))))

(assert (=> d!1619696 (= (take!801 lt!2082932 i!618) lt!2082950)))

(declare-fun b!5034244 () Bool)

(declare-fun e!3144639 () Int)

(assert (=> b!5034244 (= e!3144640 (= (size!38835 lt!2082950) e!3144639))))

(declare-fun c!862158 () Bool)

(assert (=> b!5034244 (= c!862158 (<= i!618 0))))

(declare-fun b!5034245 () Bool)

(assert (=> b!5034245 (= e!3144639 0)))

(declare-fun b!5034246 () Bool)

(declare-fun e!3144641 () Int)

(assert (=> b!5034246 (= e!3144639 e!3144641)))

(declare-fun c!862157 () Bool)

(assert (=> b!5034246 (= c!862157 (>= i!618 (size!38835 lt!2082932)))))

(declare-fun b!5034247 () Bool)

(assert (=> b!5034247 (= e!3144642 Nil!58268)))

(declare-fun b!5034248 () Bool)

(assert (=> b!5034248 (= e!3144641 (size!38835 lt!2082932))))

(declare-fun b!5034249 () Bool)

(assert (=> b!5034249 (= e!3144641 i!618)))

(declare-fun b!5034250 () Bool)

(assert (=> b!5034250 (= e!3144642 (Cons!58268 (h!64716 lt!2082932) (take!801 (t!370843 lt!2082932) (- i!618 1))))))

(assert (= (and d!1619696 c!862156) b!5034247))

(assert (= (and d!1619696 (not c!862156)) b!5034250))

(assert (= (and d!1619696 res!2145231) b!5034244))

(assert (= (and b!5034244 c!862158) b!5034245))

(assert (= (and b!5034244 (not c!862158)) b!5034246))

(assert (= (and b!5034246 c!862157) b!5034248))

(assert (= (and b!5034246 (not c!862157)) b!5034249))

(assert (=> b!5034246 m!6068686))

(declare-fun m!6068756 () Bool)

(assert (=> d!1619696 m!6068756))

(assert (=> d!1619696 m!6068714))

(declare-fun m!6068758 () Bool)

(assert (=> b!5034244 m!6068758))

(declare-fun m!6068760 () Bool)

(assert (=> b!5034250 m!6068760))

(assert (=> b!5034248 m!6068686))

(assert (=> b!5034133 d!1619696))

(declare-fun b!5034269 () Bool)

(declare-fun res!2145236 () Bool)

(declare-fun e!3144654 () Bool)

(assert (=> b!5034269 (=> (not res!2145236) (not e!3144654))))

(declare-fun lt!2082958 () tuple2!63178)

(assert (=> b!5034269 (= res!2145236 (= (_1!34892 lt!2082958) (take!801 lt!2082932 i!618)))))

(declare-fun d!1619704 () Bool)

(assert (=> d!1619704 e!3144654))

(declare-fun res!2145237 () Bool)

(assert (=> d!1619704 (=> (not res!2145237) (not e!3144654))))

(declare-fun ++!12696 (List!58392 List!58392) List!58392)

(assert (=> d!1619704 (= res!2145237 (= (++!12696 (_1!34892 lt!2082958) (_2!34892 lt!2082958)) lt!2082932))))

(declare-fun e!3144652 () tuple2!63178)

(assert (=> d!1619704 (= lt!2082958 e!3144652)))

(declare-fun c!862166 () Bool)

(assert (=> d!1619704 (= c!862166 ((_ is Nil!58268) lt!2082932))))

(assert (=> d!1619704 (= (splitAtIndex!183 lt!2082932 i!618) lt!2082958)))

(declare-fun b!5034270 () Bool)

(declare-fun e!3144653 () tuple2!63178)

(assert (=> b!5034270 (= e!3144652 e!3144653)))

(declare-fun c!862167 () Bool)

(assert (=> b!5034270 (= c!862167 (<= i!618 0))))

(declare-fun b!5034271 () Bool)

(assert (=> b!5034271 (= e!3144654 (= (_2!34892 lt!2082958) (drop!2608 lt!2082932 i!618)))))

(declare-fun b!5034272 () Bool)

(assert (=> b!5034272 (= e!3144653 (tuple2!63179 Nil!58268 lt!2082932))))

(declare-fun b!5034273 () Bool)

(declare-fun lt!2082959 () tuple2!63178)

(assert (=> b!5034273 (= lt!2082959 (splitAtIndex!183 (t!370843 lt!2082932) (- i!618 1)))))

(assert (=> b!5034273 (= e!3144653 (tuple2!63179 (Cons!58268 (h!64716 lt!2082932) (_1!34892 lt!2082959)) (_2!34892 lt!2082959)))))

(declare-fun b!5034274 () Bool)

(assert (=> b!5034274 (= e!3144652 (tuple2!63179 Nil!58268 Nil!58268))))

(assert (= (and d!1619704 c!862166) b!5034274))

(assert (= (and d!1619704 (not c!862166)) b!5034270))

(assert (= (and b!5034270 c!862167) b!5034272))

(assert (= (and b!5034270 (not c!862167)) b!5034273))

(assert (= (and d!1619704 res!2145237) b!5034269))

(assert (= (and b!5034269 res!2145236) b!5034271))

(assert (=> b!5034269 m!6068692))

(declare-fun m!6068770 () Bool)

(assert (=> d!1619704 m!6068770))

(assert (=> b!5034271 m!6068704))

(declare-fun m!6068772 () Bool)

(assert (=> b!5034273 m!6068772))

(assert (=> b!5034133 d!1619704))

(declare-fun d!1619712 () Bool)

(assert (=> d!1619712 (= (list!18855 (xs!18806 t!4198)) (innerList!15568 (xs!18806 t!4198)))))

(assert (=> b!5034133 d!1619712))

(declare-fun d!1619714 () Bool)

(declare-fun c!862168 () Bool)

(assert (=> d!1619714 (= c!862168 ((_ is Node!15480) (left!42649 t!4198)))))

(declare-fun e!3144655 () Bool)

(assert (=> d!1619714 (= (inv!76984 (left!42649 t!4198)) e!3144655)))

(declare-fun b!5034275 () Bool)

(assert (=> b!5034275 (= e!3144655 (inv!76986 (left!42649 t!4198)))))

(declare-fun b!5034276 () Bool)

(declare-fun e!3144656 () Bool)

(assert (=> b!5034276 (= e!3144655 e!3144656)))

(declare-fun res!2145238 () Bool)

(assert (=> b!5034276 (= res!2145238 (not ((_ is Leaf!25684) (left!42649 t!4198))))))

(assert (=> b!5034276 (=> res!2145238 e!3144656)))

(declare-fun b!5034277 () Bool)

(assert (=> b!5034277 (= e!3144656 (inv!76987 (left!42649 t!4198)))))

(assert (= (and d!1619714 c!862168) b!5034275))

(assert (= (and d!1619714 (not c!862168)) b!5034276))

(assert (= (and b!5034276 (not res!2145238)) b!5034277))

(declare-fun m!6068774 () Bool)

(assert (=> b!5034275 m!6068774))

(declare-fun m!6068776 () Bool)

(assert (=> b!5034277 m!6068776))

(assert (=> b!5034126 d!1619714))

(declare-fun d!1619716 () Bool)

(declare-fun c!862169 () Bool)

(assert (=> d!1619716 (= c!862169 ((_ is Node!15480) (right!42979 t!4198)))))

(declare-fun e!3144657 () Bool)

(assert (=> d!1619716 (= (inv!76984 (right!42979 t!4198)) e!3144657)))

(declare-fun b!5034278 () Bool)

(assert (=> b!5034278 (= e!3144657 (inv!76986 (right!42979 t!4198)))))

(declare-fun b!5034279 () Bool)

(declare-fun e!3144658 () Bool)

(assert (=> b!5034279 (= e!3144657 e!3144658)))

(declare-fun res!2145239 () Bool)

(assert (=> b!5034279 (= res!2145239 (not ((_ is Leaf!25684) (right!42979 t!4198))))))

(assert (=> b!5034279 (=> res!2145239 e!3144658)))

(declare-fun b!5034280 () Bool)

(assert (=> b!5034280 (= e!3144658 (inv!76987 (right!42979 t!4198)))))

(assert (= (and d!1619716 c!862169) b!5034278))

(assert (= (and d!1619716 (not c!862169)) b!5034279))

(assert (= (and b!5034279 (not res!2145239)) b!5034280))

(declare-fun m!6068778 () Bool)

(assert (=> b!5034278 m!6068778))

(declare-fun m!6068780 () Bool)

(assert (=> b!5034280 m!6068780))

(assert (=> b!5034126 d!1619716))

(declare-fun d!1619718 () Bool)

(assert (=> d!1619718 (= (slice!839 lt!2082932 0 i!618) (take!801 (drop!2608 lt!2082932 0) (- i!618 0)))))

(declare-fun bs!1188714 () Bool)

(assert (= bs!1188714 d!1619718))

(declare-fun m!6068782 () Bool)

(assert (=> bs!1188714 m!6068782))

(assert (=> bs!1188714 m!6068782))

(declare-fun m!6068784 () Bool)

(assert (=> bs!1188714 m!6068784))

(assert (=> b!5034136 d!1619718))

(declare-fun d!1619720 () Bool)

(assert (=> d!1619720 (= (slice!839 lt!2082932 i!618 (size!38835 lt!2082932)) (take!801 (drop!2608 lt!2082932 i!618) (- (size!38835 lt!2082932) i!618)))))

(declare-fun bs!1188715 () Bool)

(assert (= bs!1188715 d!1619720))

(assert (=> bs!1188715 m!6068704))

(assert (=> bs!1188715 m!6068704))

(declare-fun m!6068786 () Bool)

(assert (=> bs!1188715 m!6068786))

(assert (=> b!5034136 d!1619720))

(declare-fun d!1619722 () Bool)

(declare-fun lt!2082965 () Int)

(assert (=> d!1619722 (>= lt!2082965 0)))

(declare-fun e!3144664 () Int)

(assert (=> d!1619722 (= lt!2082965 e!3144664)))

(declare-fun c!862172 () Bool)

(assert (=> d!1619722 (= c!862172 ((_ is Nil!58268) lt!2082932))))

(assert (=> d!1619722 (= (size!38835 lt!2082932) lt!2082965)))

(declare-fun b!5034288 () Bool)

(assert (=> b!5034288 (= e!3144664 0)))

(declare-fun b!5034289 () Bool)

(assert (=> b!5034289 (= e!3144664 (+ 1 (size!38835 (t!370843 lt!2082932))))))

(assert (= (and d!1619722 c!862172) b!5034288))

(assert (= (and d!1619722 (not c!862172)) b!5034289))

(declare-fun m!6068790 () Bool)

(assert (=> b!5034289 m!6068790))

(assert (=> b!5034136 d!1619722))

(declare-fun d!1619726 () Bool)

(assert (=> d!1619726 (= (drop!2608 lt!2082932 i!618) (slice!839 lt!2082932 i!618 (size!38835 lt!2082932)))))

(declare-fun lt!2082968 () Unit!149459)

(declare-fun choose!37239 (List!58392 Int) Unit!149459)

(assert (=> d!1619726 (= lt!2082968 (choose!37239 lt!2082932 i!618))))

(declare-fun e!3144667 () Bool)

(assert (=> d!1619726 e!3144667))

(declare-fun res!2145245 () Bool)

(assert (=> d!1619726 (=> (not res!2145245) (not e!3144667))))

(assert (=> d!1619726 (= res!2145245 (<= 0 i!618))))

(assert (=> d!1619726 (= (dropLemma!64 lt!2082932 i!618) lt!2082968)))

(declare-fun b!5034292 () Bool)

(assert (=> b!5034292 (= e!3144667 (<= i!618 (size!38835 lt!2082932)))))

(assert (= (and d!1619726 res!2145245) b!5034292))

(assert (=> d!1619726 m!6068704))

(assert (=> d!1619726 m!6068686))

(assert (=> d!1619726 m!6068686))

(assert (=> d!1619726 m!6068688))

(declare-fun m!6068792 () Bool)

(assert (=> d!1619726 m!6068792))

(assert (=> b!5034292 m!6068686))

(assert (=> b!5034136 d!1619726))

(declare-fun d!1619728 () Bool)

(declare-fun lt!2082971 () Int)

(declare-fun list!18856 (Conc!15480) List!58392)

(assert (=> d!1619728 (= lt!2082971 (size!38835 (list!18856 t!4198)))))

(assert (=> d!1619728 (= lt!2082971 (ite ((_ is Empty!15480) t!4198) 0 (ite ((_ is Leaf!25684) t!4198) (csize!31191 t!4198) (csize!31190 t!4198))))))

(assert (=> d!1619728 (= (size!38833 t!4198) lt!2082971)))

(declare-fun bs!1188716 () Bool)

(assert (= bs!1188716 d!1619728))

(declare-fun m!6068794 () Bool)

(assert (=> bs!1188716 m!6068794))

(assert (=> bs!1188716 m!6068794))

(declare-fun m!6068796 () Bool)

(assert (=> bs!1188716 m!6068796))

(assert (=> b!5034131 d!1619728))

(declare-fun b!5034309 () Bool)

(declare-fun e!3144674 () Bool)

(declare-fun tp_is_empty!36729 () Bool)

(declare-fun tp!1410053 () Bool)

(assert (=> b!5034309 (= e!3144674 (and tp_is_empty!36729 tp!1410053))))

(assert (=> b!5034135 (= tp!1410048 e!3144674)))

(assert (= (and b!5034135 ((_ is Cons!58268) (innerList!15568 (xs!18806 t!4198)))) b!5034309))

(declare-fun tp!1410062 () Bool)

(declare-fun tp!1410061 () Bool)

(declare-fun b!5034318 () Bool)

(declare-fun e!3144679 () Bool)

(assert (=> b!5034318 (= e!3144679 (and (inv!76984 (left!42649 (left!42649 t!4198))) tp!1410061 (inv!76984 (right!42979 (left!42649 t!4198))) tp!1410062))))

(declare-fun b!5034320 () Bool)

(declare-fun e!3144680 () Bool)

(declare-fun tp!1410060 () Bool)

(assert (=> b!5034320 (= e!3144680 tp!1410060)))

(declare-fun b!5034319 () Bool)

(assert (=> b!5034319 (= e!3144679 (and (inv!76985 (xs!18806 (left!42649 t!4198))) e!3144680))))

(assert (=> b!5034126 (= tp!1410050 (and (inv!76984 (left!42649 t!4198)) e!3144679))))

(assert (= (and b!5034126 ((_ is Node!15480) (left!42649 t!4198))) b!5034318))

(assert (= b!5034319 b!5034320))

(assert (= (and b!5034126 ((_ is Leaf!25684) (left!42649 t!4198))) b!5034319))

(declare-fun m!6068798 () Bool)

(assert (=> b!5034318 m!6068798))

(declare-fun m!6068800 () Bool)

(assert (=> b!5034318 m!6068800))

(declare-fun m!6068802 () Bool)

(assert (=> b!5034319 m!6068802))

(assert (=> b!5034126 m!6068698))

(declare-fun tp!1410064 () Bool)

(declare-fun e!3144681 () Bool)

(declare-fun b!5034321 () Bool)

(declare-fun tp!1410065 () Bool)

(assert (=> b!5034321 (= e!3144681 (and (inv!76984 (left!42649 (right!42979 t!4198))) tp!1410064 (inv!76984 (right!42979 (right!42979 t!4198))) tp!1410065))))

(declare-fun b!5034323 () Bool)

(declare-fun e!3144682 () Bool)

(declare-fun tp!1410063 () Bool)

(assert (=> b!5034323 (= e!3144682 tp!1410063)))

(declare-fun b!5034322 () Bool)

(assert (=> b!5034322 (= e!3144681 (and (inv!76985 (xs!18806 (right!42979 t!4198))) e!3144682))))

(assert (=> b!5034126 (= tp!1410049 (and (inv!76984 (right!42979 t!4198)) e!3144681))))

(assert (= (and b!5034126 ((_ is Node!15480) (right!42979 t!4198))) b!5034321))

(assert (= b!5034322 b!5034323))

(assert (= (and b!5034126 ((_ is Leaf!25684) (right!42979 t!4198))) b!5034322))

(declare-fun m!6068804 () Bool)

(assert (=> b!5034321 m!6068804))

(declare-fun m!6068806 () Bool)

(assert (=> b!5034321 m!6068806))

(declare-fun m!6068808 () Bool)

(assert (=> b!5034322 m!6068808))

(assert (=> b!5034126 m!6068700))

(check-sat (not b!5034292) (not b!5034273) (not d!1619688) (not b!5034275) (not d!1619686) (not b!5034278) (not b!5034319) (not b!5034289) (not d!1619728) (not b!5034244) (not bm!351152) (not b!5034277) (not d!1619696) (not b!5034201) (not b!5034250) (not b!5034246) (not b!5034200) (not b!5034318) (not b!5034271) tp_is_empty!36729 (not d!1619720) (not b!5034199) (not b!5034177) (not b!5034323) (not d!1619718) (not d!1619704) (not b!5034280) (not b!5034197) (not b!5034320) (not b!5034202) (not b!5034322) (not b!5034321) (not d!1619726) (not b!5034223) (not b!5034221) (not b!5034248) (not d!1619684) (not b!5034126) (not b!5034169) (not b!5034198) (not b!5034309) (not b!5034269))
(check-sat)
(get-model)

(declare-fun d!1619742 () Bool)

(declare-fun lt!2082981 () Int)

(assert (=> d!1619742 (>= lt!2082981 0)))

(declare-fun e!3144721 () Int)

(assert (=> d!1619742 (= lt!2082981 e!3144721)))

(declare-fun c!862190 () Bool)

(assert (=> d!1619742 (= c!862190 ((_ is Nil!58268) (innerList!15568 (xs!18806 t!4198))))))

(assert (=> d!1619742 (= (size!38835 (innerList!15568 (xs!18806 t!4198))) lt!2082981)))

(declare-fun b!5034391 () Bool)

(assert (=> b!5034391 (= e!3144721 0)))

(declare-fun b!5034392 () Bool)

(assert (=> b!5034392 (= e!3144721 (+ 1 (size!38835 (t!370843 (innerList!15568 (xs!18806 t!4198))))))))

(assert (= (and d!1619742 c!862190) b!5034391))

(assert (= (and d!1619742 (not c!862190)) b!5034392))

(declare-fun m!6068860 () Bool)

(assert (=> b!5034392 m!6068860))

(assert (=> d!1619688 d!1619742))

(declare-fun d!1619744 () Bool)

(declare-fun e!3144723 () Bool)

(assert (=> d!1619744 e!3144723))

(declare-fun res!2145272 () Bool)

(assert (=> d!1619744 (=> (not res!2145272) (not e!3144723))))

(declare-fun lt!2082982 () List!58392)

(assert (=> d!1619744 (= res!2145272 (= ((_ map implies) (content!10334 lt!2082982) (content!10334 (drop!2608 lt!2082932 i!618))) ((as const (InoxSet T!103956)) true)))))

(declare-fun e!3144725 () List!58392)

(assert (=> d!1619744 (= lt!2082982 e!3144725)))

(declare-fun c!862191 () Bool)

(assert (=> d!1619744 (= c!862191 (or ((_ is Nil!58268) (drop!2608 lt!2082932 i!618)) (<= (- (size!38835 lt!2082932) i!618) 0)))))

(assert (=> d!1619744 (= (take!801 (drop!2608 lt!2082932 i!618) (- (size!38835 lt!2082932) i!618)) lt!2082982)))

(declare-fun b!5034393 () Bool)

(declare-fun e!3144722 () Int)

(assert (=> b!5034393 (= e!3144723 (= (size!38835 lt!2082982) e!3144722))))

(declare-fun c!862193 () Bool)

(assert (=> b!5034393 (= c!862193 (<= (- (size!38835 lt!2082932) i!618) 0))))

(declare-fun b!5034394 () Bool)

(assert (=> b!5034394 (= e!3144722 0)))

(declare-fun b!5034395 () Bool)

(declare-fun e!3144724 () Int)

(assert (=> b!5034395 (= e!3144722 e!3144724)))

(declare-fun c!862192 () Bool)

(assert (=> b!5034395 (= c!862192 (>= (- (size!38835 lt!2082932) i!618) (size!38835 (drop!2608 lt!2082932 i!618))))))

(declare-fun b!5034396 () Bool)

(assert (=> b!5034396 (= e!3144725 Nil!58268)))

(declare-fun b!5034397 () Bool)

(assert (=> b!5034397 (= e!3144724 (size!38835 (drop!2608 lt!2082932 i!618)))))

(declare-fun b!5034398 () Bool)

(assert (=> b!5034398 (= e!3144724 (- (size!38835 lt!2082932) i!618))))

(declare-fun b!5034399 () Bool)

(assert (=> b!5034399 (= e!3144725 (Cons!58268 (h!64716 (drop!2608 lt!2082932 i!618)) (take!801 (t!370843 (drop!2608 lt!2082932 i!618)) (- (- (size!38835 lt!2082932) i!618) 1))))))

(assert (= (and d!1619744 c!862191) b!5034396))

(assert (= (and d!1619744 (not c!862191)) b!5034399))

(assert (= (and d!1619744 res!2145272) b!5034393))

(assert (= (and b!5034393 c!862193) b!5034394))

(assert (= (and b!5034393 (not c!862193)) b!5034395))

(assert (= (and b!5034395 c!862192) b!5034397))

(assert (= (and b!5034395 (not c!862192)) b!5034398))

(assert (=> b!5034395 m!6068704))

(declare-fun m!6068862 () Bool)

(assert (=> b!5034395 m!6068862))

(declare-fun m!6068864 () Bool)

(assert (=> d!1619744 m!6068864))

(assert (=> d!1619744 m!6068704))

(declare-fun m!6068866 () Bool)

(assert (=> d!1619744 m!6068866))

(declare-fun m!6068868 () Bool)

(assert (=> b!5034393 m!6068868))

(declare-fun m!6068870 () Bool)

(assert (=> b!5034399 m!6068870))

(assert (=> b!5034397 m!6068704))

(assert (=> b!5034397 m!6068862))

(assert (=> d!1619720 d!1619744))

(assert (=> d!1619720 d!1619684))

(assert (=> b!5034271 d!1619684))

(declare-fun d!1619746 () Bool)

(declare-fun res!2145277 () Bool)

(declare-fun e!3144728 () Bool)

(assert (=> d!1619746 (=> (not res!2145277) (not e!3144728))))

(assert (=> d!1619746 (= res!2145277 (<= (size!38835 (list!18855 (xs!18806 (left!42649 t!4198)))) 512))))

(assert (=> d!1619746 (= (inv!76987 (left!42649 t!4198)) e!3144728)))

(declare-fun b!5034404 () Bool)

(declare-fun res!2145278 () Bool)

(assert (=> b!5034404 (=> (not res!2145278) (not e!3144728))))

(assert (=> b!5034404 (= res!2145278 (= (csize!31191 (left!42649 t!4198)) (size!38835 (list!18855 (xs!18806 (left!42649 t!4198))))))))

(declare-fun b!5034405 () Bool)

(assert (=> b!5034405 (= e!3144728 (and (> (csize!31191 (left!42649 t!4198)) 0) (<= (csize!31191 (left!42649 t!4198)) 512)))))

(assert (= (and d!1619746 res!2145277) b!5034404))

(assert (= (and b!5034404 res!2145278) b!5034405))

(declare-fun m!6068872 () Bool)

(assert (=> d!1619746 m!6068872))

(assert (=> d!1619746 m!6068872))

(declare-fun m!6068874 () Bool)

(assert (=> d!1619746 m!6068874))

(assert (=> b!5034404 m!6068872))

(assert (=> b!5034404 m!6068872))

(assert (=> b!5034404 m!6068874))

(assert (=> b!5034277 d!1619746))

(declare-fun b!5034406 () Bool)

(declare-fun e!3144729 () Bool)

(assert (=> b!5034406 (= e!3144729 (not (isEmpty!31498 (right!42979 (right!42979 t!4198)))))))

(declare-fun d!1619748 () Bool)

(declare-fun res!2145281 () Bool)

(declare-fun e!3144730 () Bool)

(assert (=> d!1619748 (=> res!2145281 e!3144730)))

(assert (=> d!1619748 (= res!2145281 (not ((_ is Node!15480) (right!42979 t!4198))))))

(assert (=> d!1619748 (= (isBalanced!4342 (right!42979 t!4198)) e!3144730)))

(declare-fun b!5034407 () Bool)

(declare-fun res!2145279 () Bool)

(assert (=> b!5034407 (=> (not res!2145279) (not e!3144729))))

(assert (=> b!5034407 (= res!2145279 (<= (- (height!2062 (left!42649 (right!42979 t!4198))) (height!2062 (right!42979 (right!42979 t!4198)))) 1))))

(declare-fun b!5034408 () Bool)

(declare-fun res!2145282 () Bool)

(assert (=> b!5034408 (=> (not res!2145282) (not e!3144729))))

(assert (=> b!5034408 (= res!2145282 (isBalanced!4342 (left!42649 (right!42979 t!4198))))))

(declare-fun b!5034409 () Bool)

(declare-fun res!2145284 () Bool)

(assert (=> b!5034409 (=> (not res!2145284) (not e!3144729))))

(assert (=> b!5034409 (= res!2145284 (not (isEmpty!31498 (left!42649 (right!42979 t!4198)))))))

(declare-fun b!5034410 () Bool)

(assert (=> b!5034410 (= e!3144730 e!3144729)))

(declare-fun res!2145280 () Bool)

(assert (=> b!5034410 (=> (not res!2145280) (not e!3144729))))

(assert (=> b!5034410 (= res!2145280 (<= (- 1) (- (height!2062 (left!42649 (right!42979 t!4198))) (height!2062 (right!42979 (right!42979 t!4198))))))))

(declare-fun b!5034411 () Bool)

(declare-fun res!2145283 () Bool)

(assert (=> b!5034411 (=> (not res!2145283) (not e!3144729))))

(assert (=> b!5034411 (= res!2145283 (isBalanced!4342 (right!42979 (right!42979 t!4198))))))

(assert (= (and d!1619748 (not res!2145281)) b!5034410))

(assert (= (and b!5034410 res!2145280) b!5034407))

(assert (= (and b!5034407 res!2145279) b!5034408))

(assert (= (and b!5034408 res!2145282) b!5034411))

(assert (= (and b!5034411 res!2145283) b!5034409))

(assert (= (and b!5034409 res!2145284) b!5034406))

(declare-fun m!6068876 () Bool)

(assert (=> b!5034406 m!6068876))

(declare-fun m!6068878 () Bool)

(assert (=> b!5034411 m!6068878))

(declare-fun m!6068880 () Bool)

(assert (=> b!5034408 m!6068880))

(declare-fun m!6068882 () Bool)

(assert (=> b!5034410 m!6068882))

(declare-fun m!6068884 () Bool)

(assert (=> b!5034410 m!6068884))

(declare-fun m!6068886 () Bool)

(assert (=> b!5034409 m!6068886))

(assert (=> b!5034407 m!6068882))

(assert (=> b!5034407 m!6068884))

(assert (=> b!5034202 d!1619748))

(declare-fun d!1619750 () Bool)

(assert (=> d!1619750 (= (height!2062 (left!42649 t!4198)) (ite ((_ is Empty!15480) (left!42649 t!4198)) 0 (ite ((_ is Leaf!25684) (left!42649 t!4198)) 1 (cheight!15691 (left!42649 t!4198)))))))

(assert (=> b!5034201 d!1619750))

(declare-fun d!1619752 () Bool)

(assert (=> d!1619752 (= (height!2062 (right!42979 t!4198)) (ite ((_ is Empty!15480) (right!42979 t!4198)) 0 (ite ((_ is Leaf!25684) (right!42979 t!4198)) 1 (cheight!15691 (right!42979 t!4198)))))))

(assert (=> b!5034201 d!1619752))

(assert (=> b!5034269 d!1619696))

(declare-fun d!1619754 () Bool)

(declare-fun res!2145291 () Bool)

(declare-fun e!3144733 () Bool)

(assert (=> d!1619754 (=> (not res!2145291) (not e!3144733))))

(assert (=> d!1619754 (= res!2145291 (= (csize!31190 (left!42649 t!4198)) (+ (size!38833 (left!42649 (left!42649 t!4198))) (size!38833 (right!42979 (left!42649 t!4198))))))))

(assert (=> d!1619754 (= (inv!76986 (left!42649 t!4198)) e!3144733)))

(declare-fun b!5034418 () Bool)

(declare-fun res!2145292 () Bool)

(assert (=> b!5034418 (=> (not res!2145292) (not e!3144733))))

(assert (=> b!5034418 (= res!2145292 (and (not (= (left!42649 (left!42649 t!4198)) Empty!15480)) (not (= (right!42979 (left!42649 t!4198)) Empty!15480))))))

(declare-fun b!5034419 () Bool)

(declare-fun res!2145293 () Bool)

(assert (=> b!5034419 (=> (not res!2145293) (not e!3144733))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5034419 (= res!2145293 (= (cheight!15691 (left!42649 t!4198)) (+ (max!0 (height!2062 (left!42649 (left!42649 t!4198))) (height!2062 (right!42979 (left!42649 t!4198)))) 1)))))

(declare-fun b!5034420 () Bool)

(assert (=> b!5034420 (= e!3144733 (<= 0 (cheight!15691 (left!42649 t!4198))))))

(assert (= (and d!1619754 res!2145291) b!5034418))

(assert (= (and b!5034418 res!2145292) b!5034419))

(assert (= (and b!5034419 res!2145293) b!5034420))

(declare-fun m!6068888 () Bool)

(assert (=> d!1619754 m!6068888))

(declare-fun m!6068890 () Bool)

(assert (=> d!1619754 m!6068890))

(declare-fun m!6068892 () Bool)

(assert (=> b!5034419 m!6068892))

(declare-fun m!6068894 () Bool)

(assert (=> b!5034419 m!6068894))

(assert (=> b!5034419 m!6068892))

(assert (=> b!5034419 m!6068894))

(declare-fun m!6068896 () Bool)

(assert (=> b!5034419 m!6068896))

(assert (=> b!5034275 d!1619754))

(declare-fun d!1619756 () Bool)

(declare-fun lt!2082985 () Bool)

(declare-fun isEmpty!31500 (List!58392) Bool)

(assert (=> d!1619756 (= lt!2082985 (isEmpty!31500 (list!18856 (left!42649 t!4198))))))

(assert (=> d!1619756 (= lt!2082985 (= (size!38833 (left!42649 t!4198)) 0))))

(assert (=> d!1619756 (= (isEmpty!31498 (left!42649 t!4198)) lt!2082985)))

(declare-fun bs!1188719 () Bool)

(assert (= bs!1188719 d!1619756))

(declare-fun m!6068898 () Bool)

(assert (=> bs!1188719 m!6068898))

(assert (=> bs!1188719 m!6068898))

(declare-fun m!6068900 () Bool)

(assert (=> bs!1188719 m!6068900))

(declare-fun m!6068902 () Bool)

(assert (=> bs!1188719 m!6068902))

(assert (=> b!5034200 d!1619756))

(declare-fun b!5034421 () Bool)

(declare-fun e!3144734 () Bool)

(assert (=> b!5034421 (= e!3144734 (not (isEmpty!31498 (right!42979 (left!42649 t!4198)))))))

(declare-fun d!1619758 () Bool)

(declare-fun res!2145296 () Bool)

(declare-fun e!3144735 () Bool)

(assert (=> d!1619758 (=> res!2145296 e!3144735)))

(assert (=> d!1619758 (= res!2145296 (not ((_ is Node!15480) (left!42649 t!4198))))))

(assert (=> d!1619758 (= (isBalanced!4342 (left!42649 t!4198)) e!3144735)))

(declare-fun b!5034422 () Bool)

(declare-fun res!2145294 () Bool)

(assert (=> b!5034422 (=> (not res!2145294) (not e!3144734))))

(assert (=> b!5034422 (= res!2145294 (<= (- (height!2062 (left!42649 (left!42649 t!4198))) (height!2062 (right!42979 (left!42649 t!4198)))) 1))))

(declare-fun b!5034423 () Bool)

(declare-fun res!2145297 () Bool)

(assert (=> b!5034423 (=> (not res!2145297) (not e!3144734))))

(assert (=> b!5034423 (= res!2145297 (isBalanced!4342 (left!42649 (left!42649 t!4198))))))

(declare-fun b!5034424 () Bool)

(declare-fun res!2145299 () Bool)

(assert (=> b!5034424 (=> (not res!2145299) (not e!3144734))))

(assert (=> b!5034424 (= res!2145299 (not (isEmpty!31498 (left!42649 (left!42649 t!4198)))))))

(declare-fun b!5034425 () Bool)

(assert (=> b!5034425 (= e!3144735 e!3144734)))

(declare-fun res!2145295 () Bool)

(assert (=> b!5034425 (=> (not res!2145295) (not e!3144734))))

(assert (=> b!5034425 (= res!2145295 (<= (- 1) (- (height!2062 (left!42649 (left!42649 t!4198))) (height!2062 (right!42979 (left!42649 t!4198))))))))

(declare-fun b!5034426 () Bool)

(declare-fun res!2145298 () Bool)

(assert (=> b!5034426 (=> (not res!2145298) (not e!3144734))))

(assert (=> b!5034426 (= res!2145298 (isBalanced!4342 (right!42979 (left!42649 t!4198))))))

(assert (= (and d!1619758 (not res!2145296)) b!5034425))

(assert (= (and b!5034425 res!2145295) b!5034422))

(assert (= (and b!5034422 res!2145294) b!5034423))

(assert (= (and b!5034423 res!2145297) b!5034426))

(assert (= (and b!5034426 res!2145298) b!5034424))

(assert (= (and b!5034424 res!2145299) b!5034421))

(declare-fun m!6068904 () Bool)

(assert (=> b!5034421 m!6068904))

(declare-fun m!6068906 () Bool)

(assert (=> b!5034426 m!6068906))

(declare-fun m!6068908 () Bool)

(assert (=> b!5034423 m!6068908))

(assert (=> b!5034425 m!6068892))

(assert (=> b!5034425 m!6068894))

(declare-fun m!6068910 () Bool)

(assert (=> b!5034424 m!6068910))

(assert (=> b!5034422 m!6068892))

(assert (=> b!5034422 m!6068894))

(assert (=> b!5034199 d!1619758))

(declare-fun d!1619760 () Bool)

(declare-fun res!2145300 () Bool)

(declare-fun e!3144736 () Bool)

(assert (=> d!1619760 (=> (not res!2145300) (not e!3144736))))

(assert (=> d!1619760 (= res!2145300 (<= (size!38835 (list!18855 (xs!18806 (right!42979 t!4198)))) 512))))

(assert (=> d!1619760 (= (inv!76987 (right!42979 t!4198)) e!3144736)))

(declare-fun b!5034427 () Bool)

(declare-fun res!2145301 () Bool)

(assert (=> b!5034427 (=> (not res!2145301) (not e!3144736))))

(assert (=> b!5034427 (= res!2145301 (= (csize!31191 (right!42979 t!4198)) (size!38835 (list!18855 (xs!18806 (right!42979 t!4198))))))))

(declare-fun b!5034428 () Bool)

(assert (=> b!5034428 (= e!3144736 (and (> (csize!31191 (right!42979 t!4198)) 0) (<= (csize!31191 (right!42979 t!4198)) 512)))))

(assert (= (and d!1619760 res!2145300) b!5034427))

(assert (= (and b!5034427 res!2145301) b!5034428))

(declare-fun m!6068912 () Bool)

(assert (=> d!1619760 m!6068912))

(assert (=> d!1619760 m!6068912))

(declare-fun m!6068914 () Bool)

(assert (=> d!1619760 m!6068914))

(assert (=> b!5034427 m!6068912))

(assert (=> b!5034427 m!6068912))

(assert (=> b!5034427 m!6068914))

(assert (=> b!5034280 d!1619760))

(assert (=> bm!351152 d!1619722))

(declare-fun b!5034438 () Bool)

(declare-fun e!3144741 () List!58392)

(assert (=> b!5034438 (= e!3144741 (Cons!58268 (h!64716 (_1!34892 lt!2082958)) (++!12696 (t!370843 (_1!34892 lt!2082958)) (_2!34892 lt!2082958))))))

(declare-fun b!5034439 () Bool)

(declare-fun res!2145307 () Bool)

(declare-fun e!3144742 () Bool)

(assert (=> b!5034439 (=> (not res!2145307) (not e!3144742))))

(declare-fun lt!2082988 () List!58392)

(assert (=> b!5034439 (= res!2145307 (= (size!38835 lt!2082988) (+ (size!38835 (_1!34892 lt!2082958)) (size!38835 (_2!34892 lt!2082958)))))))

(declare-fun b!5034437 () Bool)

(assert (=> b!5034437 (= e!3144741 (_2!34892 lt!2082958))))

(declare-fun b!5034440 () Bool)

(assert (=> b!5034440 (= e!3144742 (or (not (= (_2!34892 lt!2082958) Nil!58268)) (= lt!2082988 (_1!34892 lt!2082958))))))

(declare-fun d!1619762 () Bool)

(assert (=> d!1619762 e!3144742))

(declare-fun res!2145306 () Bool)

(assert (=> d!1619762 (=> (not res!2145306) (not e!3144742))))

(assert (=> d!1619762 (= res!2145306 (= (content!10334 lt!2082988) ((_ map or) (content!10334 (_1!34892 lt!2082958)) (content!10334 (_2!34892 lt!2082958)))))))

(assert (=> d!1619762 (= lt!2082988 e!3144741)))

(declare-fun c!862196 () Bool)

(assert (=> d!1619762 (= c!862196 ((_ is Nil!58268) (_1!34892 lt!2082958)))))

(assert (=> d!1619762 (= (++!12696 (_1!34892 lt!2082958) (_2!34892 lt!2082958)) lt!2082988)))

(assert (= (and d!1619762 c!862196) b!5034437))

(assert (= (and d!1619762 (not c!862196)) b!5034438))

(assert (= (and d!1619762 res!2145306) b!5034439))

(assert (= (and b!5034439 res!2145307) b!5034440))

(declare-fun m!6068916 () Bool)

(assert (=> b!5034438 m!6068916))

(declare-fun m!6068918 () Bool)

(assert (=> b!5034439 m!6068918))

(declare-fun m!6068920 () Bool)

(assert (=> b!5034439 m!6068920))

(declare-fun m!6068922 () Bool)

(assert (=> b!5034439 m!6068922))

(declare-fun m!6068924 () Bool)

(assert (=> d!1619762 m!6068924))

(declare-fun m!6068926 () Bool)

(assert (=> d!1619762 m!6068926))

(declare-fun m!6068928 () Bool)

(assert (=> d!1619762 m!6068928))

(assert (=> d!1619704 d!1619762))

(declare-fun d!1619764 () Bool)

(declare-fun res!2145308 () Bool)

(declare-fun e!3144743 () Bool)

(assert (=> d!1619764 (=> (not res!2145308) (not e!3144743))))

(assert (=> d!1619764 (= res!2145308 (= (csize!31190 t!4198) (+ (size!38833 (left!42649 t!4198)) (size!38833 (right!42979 t!4198)))))))

(assert (=> d!1619764 (= (inv!76986 t!4198) e!3144743)))

(declare-fun b!5034441 () Bool)

(declare-fun res!2145309 () Bool)

(assert (=> b!5034441 (=> (not res!2145309) (not e!3144743))))

(assert (=> b!5034441 (= res!2145309 (and (not (= (left!42649 t!4198) Empty!15480)) (not (= (right!42979 t!4198) Empty!15480))))))

(declare-fun b!5034442 () Bool)

(declare-fun res!2145310 () Bool)

(assert (=> b!5034442 (=> (not res!2145310) (not e!3144743))))

(assert (=> b!5034442 (= res!2145310 (= (cheight!15691 t!4198) (+ (max!0 (height!2062 (left!42649 t!4198)) (height!2062 (right!42979 t!4198))) 1)))))

(declare-fun b!5034443 () Bool)

(assert (=> b!5034443 (= e!3144743 (<= 0 (cheight!15691 t!4198)))))

(assert (= (and d!1619764 res!2145308) b!5034441))

(assert (= (and b!5034441 res!2145309) b!5034442))

(assert (= (and b!5034442 res!2145310) b!5034443))

(assert (=> d!1619764 m!6068902))

(declare-fun m!6068930 () Bool)

(assert (=> d!1619764 m!6068930))

(assert (=> b!5034442 m!6068740))

(assert (=> b!5034442 m!6068742))

(assert (=> b!5034442 m!6068740))

(assert (=> b!5034442 m!6068742))

(declare-fun m!6068932 () Bool)

(assert (=> b!5034442 m!6068932))

(assert (=> b!5034221 d!1619764))

(declare-fun d!1619766 () Bool)

(declare-fun c!862199 () Bool)

(assert (=> d!1619766 (= c!862199 ((_ is Nil!58268) lt!2082937))))

(declare-fun e!3144746 () (InoxSet T!103956))

(assert (=> d!1619766 (= (content!10334 lt!2082937) e!3144746)))

(declare-fun b!5034448 () Bool)

(assert (=> b!5034448 (= e!3144746 ((as const (Array T!103956 Bool)) false))))

(declare-fun b!5034449 () Bool)

(assert (=> b!5034449 (= e!3144746 ((_ map or) (store ((as const (Array T!103956 Bool)) false) (h!64716 lt!2082937) true) (content!10334 (t!370843 lt!2082937))))))

(assert (= (and d!1619766 c!862199) b!5034448))

(assert (= (and d!1619766 (not c!862199)) b!5034449))

(declare-fun m!6068934 () Bool)

(assert (=> b!5034449 m!6068934))

(declare-fun m!6068936 () Bool)

(assert (=> b!5034449 m!6068936))

(assert (=> d!1619684 d!1619766))

(declare-fun d!1619768 () Bool)

(declare-fun c!862200 () Bool)

(assert (=> d!1619768 (= c!862200 ((_ is Nil!58268) lt!2082932))))

(declare-fun e!3144747 () (InoxSet T!103956))

(assert (=> d!1619768 (= (content!10334 lt!2082932) e!3144747)))

(declare-fun b!5034450 () Bool)

(assert (=> b!5034450 (= e!3144747 ((as const (Array T!103956 Bool)) false))))

(declare-fun b!5034451 () Bool)

(assert (=> b!5034451 (= e!3144747 ((_ map or) (store ((as const (Array T!103956 Bool)) false) (h!64716 lt!2082932) true) (content!10334 (t!370843 lt!2082932))))))

(assert (= (and d!1619768 c!862200) b!5034450))

(assert (= (and d!1619768 (not c!862200)) b!5034451))

(declare-fun m!6068938 () Bool)

(assert (=> b!5034451 m!6068938))

(declare-fun m!6068940 () Bool)

(assert (=> b!5034451 m!6068940))

(assert (=> d!1619684 d!1619768))

(declare-fun d!1619770 () Bool)

(declare-fun e!3144748 () Bool)

(assert (=> d!1619770 e!3144748))

(declare-fun res!2145311 () Bool)

(assert (=> d!1619770 (=> (not res!2145311) (not e!3144748))))

(declare-fun lt!2082989 () List!58392)

(assert (=> d!1619770 (= res!2145311 (= ((_ map implies) (content!10334 lt!2082989) (content!10334 (t!370843 lt!2082932))) ((as const (InoxSet T!103956)) true)))))

(declare-fun e!3144751 () List!58392)

(assert (=> d!1619770 (= lt!2082989 e!3144751)))

(declare-fun c!862202 () Bool)

(assert (=> d!1619770 (= c!862202 ((_ is Nil!58268) (t!370843 lt!2082932)))))

(assert (=> d!1619770 (= (drop!2608 (t!370843 lt!2082932) (- i!618 1)) lt!2082989)))

(declare-fun b!5034452 () Bool)

(declare-fun e!3144752 () Int)

(assert (=> b!5034452 (= e!3144748 (= (size!38835 lt!2082989) e!3144752))))

(declare-fun c!862203 () Bool)

(assert (=> b!5034452 (= c!862203 (<= (- i!618 1) 0))))

(declare-fun bm!351156 () Bool)

(declare-fun call!351161 () Int)

(assert (=> bm!351156 (= call!351161 (size!38835 (t!370843 lt!2082932)))))

(declare-fun b!5034453 () Bool)

(declare-fun e!3144750 () Int)

(assert (=> b!5034453 (= e!3144752 e!3144750)))

(declare-fun c!862201 () Bool)

(assert (=> b!5034453 (= c!862201 (>= (- i!618 1) call!351161))))

(declare-fun b!5034454 () Bool)

(declare-fun e!3144749 () List!58392)

(assert (=> b!5034454 (= e!3144751 e!3144749)))

(declare-fun c!862204 () Bool)

(assert (=> b!5034454 (= c!862204 (<= (- i!618 1) 0))))

(declare-fun b!5034455 () Bool)

(assert (=> b!5034455 (= e!3144750 (- call!351161 (- i!618 1)))))

(declare-fun b!5034456 () Bool)

(assert (=> b!5034456 (= e!3144750 0)))

(declare-fun b!5034457 () Bool)

(assert (=> b!5034457 (= e!3144752 call!351161)))

(declare-fun b!5034458 () Bool)

(assert (=> b!5034458 (= e!3144749 (t!370843 lt!2082932))))

(declare-fun b!5034459 () Bool)

(assert (=> b!5034459 (= e!3144751 Nil!58268)))

(declare-fun b!5034460 () Bool)

(assert (=> b!5034460 (= e!3144749 (drop!2608 (t!370843 (t!370843 lt!2082932)) (- (- i!618 1) 1)))))

(assert (= (and d!1619770 c!862202) b!5034459))

(assert (= (and d!1619770 (not c!862202)) b!5034454))

(assert (= (and b!5034454 c!862204) b!5034458))

(assert (= (and b!5034454 (not c!862204)) b!5034460))

(assert (= (and d!1619770 res!2145311) b!5034452))

(assert (= (and b!5034452 c!862203) b!5034457))

(assert (= (and b!5034452 (not c!862203)) b!5034453))

(assert (= (and b!5034453 c!862201) b!5034456))

(assert (= (and b!5034453 (not c!862201)) b!5034455))

(assert (= (or b!5034457 b!5034453 b!5034455) bm!351156))

(declare-fun m!6068942 () Bool)

(assert (=> d!1619770 m!6068942))

(assert (=> d!1619770 m!6068940))

(declare-fun m!6068944 () Bool)

(assert (=> b!5034452 m!6068944))

(assert (=> bm!351156 m!6068790))

(declare-fun m!6068946 () Bool)

(assert (=> b!5034460 m!6068946))

(assert (=> b!5034177 d!1619770))

(declare-fun b!5034461 () Bool)

(declare-fun res!2145312 () Bool)

(declare-fun e!3144755 () Bool)

(assert (=> b!5034461 (=> (not res!2145312) (not e!3144755))))

(declare-fun lt!2082990 () tuple2!63178)

(assert (=> b!5034461 (= res!2145312 (= (_1!34892 lt!2082990) (take!801 (t!370843 lt!2082932) (- i!618 1))))))

(declare-fun d!1619772 () Bool)

(assert (=> d!1619772 e!3144755))

(declare-fun res!2145313 () Bool)

(assert (=> d!1619772 (=> (not res!2145313) (not e!3144755))))

(assert (=> d!1619772 (= res!2145313 (= (++!12696 (_1!34892 lt!2082990) (_2!34892 lt!2082990)) (t!370843 lt!2082932)))))

(declare-fun e!3144753 () tuple2!63178)

(assert (=> d!1619772 (= lt!2082990 e!3144753)))

(declare-fun c!862205 () Bool)

(assert (=> d!1619772 (= c!862205 ((_ is Nil!58268) (t!370843 lt!2082932)))))

(assert (=> d!1619772 (= (splitAtIndex!183 (t!370843 lt!2082932) (- i!618 1)) lt!2082990)))

(declare-fun b!5034462 () Bool)

(declare-fun e!3144754 () tuple2!63178)

(assert (=> b!5034462 (= e!3144753 e!3144754)))

(declare-fun c!862206 () Bool)

(assert (=> b!5034462 (= c!862206 (<= (- i!618 1) 0))))

(declare-fun b!5034463 () Bool)

(assert (=> b!5034463 (= e!3144755 (= (_2!34892 lt!2082990) (drop!2608 (t!370843 lt!2082932) (- i!618 1))))))

(declare-fun b!5034464 () Bool)

(assert (=> b!5034464 (= e!3144754 (tuple2!63179 Nil!58268 (t!370843 lt!2082932)))))

(declare-fun b!5034465 () Bool)

(declare-fun lt!2082991 () tuple2!63178)

(assert (=> b!5034465 (= lt!2082991 (splitAtIndex!183 (t!370843 (t!370843 lt!2082932)) (- (- i!618 1) 1)))))

(assert (=> b!5034465 (= e!3144754 (tuple2!63179 (Cons!58268 (h!64716 (t!370843 lt!2082932)) (_1!34892 lt!2082991)) (_2!34892 lt!2082991)))))

(declare-fun b!5034466 () Bool)

(assert (=> b!5034466 (= e!3144753 (tuple2!63179 Nil!58268 Nil!58268))))

(assert (= (and d!1619772 c!862205) b!5034466))

(assert (= (and d!1619772 (not c!862205)) b!5034462))

(assert (= (and b!5034462 c!862206) b!5034464))

(assert (= (and b!5034462 (not c!862206)) b!5034465))

(assert (= (and d!1619772 res!2145313) b!5034461))

(assert (= (and b!5034461 res!2145312) b!5034463))

(assert (=> b!5034461 m!6068760))

(declare-fun m!6068948 () Bool)

(assert (=> d!1619772 m!6068948))

(assert (=> b!5034463 m!6068718))

(declare-fun m!6068950 () Bool)

(assert (=> b!5034465 m!6068950))

(assert (=> b!5034273 d!1619772))

(declare-fun d!1619774 () Bool)

(declare-fun e!3144757 () Bool)

(assert (=> d!1619774 e!3144757))

(declare-fun res!2145314 () Bool)

(assert (=> d!1619774 (=> (not res!2145314) (not e!3144757))))

(declare-fun lt!2082992 () List!58392)

(assert (=> d!1619774 (= res!2145314 (= ((_ map implies) (content!10334 lt!2082992) (content!10334 (drop!2608 lt!2082932 0))) ((as const (InoxSet T!103956)) true)))))

(declare-fun e!3144759 () List!58392)

(assert (=> d!1619774 (= lt!2082992 e!3144759)))

(declare-fun c!862207 () Bool)

(assert (=> d!1619774 (= c!862207 (or ((_ is Nil!58268) (drop!2608 lt!2082932 0)) (<= (- i!618 0) 0)))))

(assert (=> d!1619774 (= (take!801 (drop!2608 lt!2082932 0) (- i!618 0)) lt!2082992)))

(declare-fun b!5034467 () Bool)

(declare-fun e!3144756 () Int)

(assert (=> b!5034467 (= e!3144757 (= (size!38835 lt!2082992) e!3144756))))

(declare-fun c!862209 () Bool)

(assert (=> b!5034467 (= c!862209 (<= (- i!618 0) 0))))

(declare-fun b!5034468 () Bool)

(assert (=> b!5034468 (= e!3144756 0)))

(declare-fun b!5034469 () Bool)

(declare-fun e!3144758 () Int)

(assert (=> b!5034469 (= e!3144756 e!3144758)))

(declare-fun c!862208 () Bool)

(assert (=> b!5034469 (= c!862208 (>= (- i!618 0) (size!38835 (drop!2608 lt!2082932 0))))))

(declare-fun b!5034470 () Bool)

(assert (=> b!5034470 (= e!3144759 Nil!58268)))

(declare-fun b!5034471 () Bool)

(assert (=> b!5034471 (= e!3144758 (size!38835 (drop!2608 lt!2082932 0)))))

(declare-fun b!5034472 () Bool)

(assert (=> b!5034472 (= e!3144758 (- i!618 0))))

(declare-fun b!5034473 () Bool)

(assert (=> b!5034473 (= e!3144759 (Cons!58268 (h!64716 (drop!2608 lt!2082932 0)) (take!801 (t!370843 (drop!2608 lt!2082932 0)) (- (- i!618 0) 1))))))

(assert (= (and d!1619774 c!862207) b!5034470))

(assert (= (and d!1619774 (not c!862207)) b!5034473))

(assert (= (and d!1619774 res!2145314) b!5034467))

(assert (= (and b!5034467 c!862209) b!5034468))

(assert (= (and b!5034467 (not c!862209)) b!5034469))

(assert (= (and b!5034469 c!862208) b!5034471))

(assert (= (and b!5034469 (not c!862208)) b!5034472))

(assert (=> b!5034469 m!6068782))

(declare-fun m!6068952 () Bool)

(assert (=> b!5034469 m!6068952))

(declare-fun m!6068954 () Bool)

(assert (=> d!1619774 m!6068954))

(assert (=> d!1619774 m!6068782))

(declare-fun m!6068956 () Bool)

(assert (=> d!1619774 m!6068956))

(declare-fun m!6068958 () Bool)

(assert (=> b!5034467 m!6068958))

(declare-fun m!6068960 () Bool)

(assert (=> b!5034473 m!6068960))

(assert (=> b!5034471 m!6068782))

(assert (=> b!5034471 m!6068952))

(assert (=> d!1619718 d!1619774))

(declare-fun d!1619776 () Bool)

(declare-fun e!3144760 () Bool)

(assert (=> d!1619776 e!3144760))

(declare-fun res!2145315 () Bool)

(assert (=> d!1619776 (=> (not res!2145315) (not e!3144760))))

(declare-fun lt!2082993 () List!58392)

(assert (=> d!1619776 (= res!2145315 (= ((_ map implies) (content!10334 lt!2082993) (content!10334 lt!2082932)) ((as const (InoxSet T!103956)) true)))))

(declare-fun e!3144763 () List!58392)

(assert (=> d!1619776 (= lt!2082993 e!3144763)))

(declare-fun c!862211 () Bool)

(assert (=> d!1619776 (= c!862211 ((_ is Nil!58268) lt!2082932))))

(assert (=> d!1619776 (= (drop!2608 lt!2082932 0) lt!2082993)))

(declare-fun b!5034474 () Bool)

(declare-fun e!3144764 () Int)

(assert (=> b!5034474 (= e!3144760 (= (size!38835 lt!2082993) e!3144764))))

(declare-fun c!862212 () Bool)

(assert (=> b!5034474 (= c!862212 (<= 0 0))))

(declare-fun bm!351157 () Bool)

(declare-fun call!351162 () Int)

(assert (=> bm!351157 (= call!351162 (size!38835 lt!2082932))))

(declare-fun b!5034475 () Bool)

(declare-fun e!3144762 () Int)

(assert (=> b!5034475 (= e!3144764 e!3144762)))

(declare-fun c!862210 () Bool)

(assert (=> b!5034475 (= c!862210 (>= 0 call!351162))))

(declare-fun b!5034476 () Bool)

(declare-fun e!3144761 () List!58392)

(assert (=> b!5034476 (= e!3144763 e!3144761)))

(declare-fun c!862213 () Bool)

(assert (=> b!5034476 (= c!862213 (<= 0 0))))

(declare-fun b!5034477 () Bool)

(assert (=> b!5034477 (= e!3144762 (- call!351162 0))))

(declare-fun b!5034478 () Bool)

(assert (=> b!5034478 (= e!3144762 0)))

(declare-fun b!5034479 () Bool)

(assert (=> b!5034479 (= e!3144764 call!351162)))

(declare-fun b!5034480 () Bool)

(assert (=> b!5034480 (= e!3144761 lt!2082932)))

(declare-fun b!5034481 () Bool)

(assert (=> b!5034481 (= e!3144763 Nil!58268)))

(declare-fun b!5034482 () Bool)

(assert (=> b!5034482 (= e!3144761 (drop!2608 (t!370843 lt!2082932) (- 0 1)))))

(assert (= (and d!1619776 c!862211) b!5034481))

(assert (= (and d!1619776 (not c!862211)) b!5034476))

(assert (= (and b!5034476 c!862213) b!5034480))

(assert (= (and b!5034476 (not c!862213)) b!5034482))

(assert (= (and d!1619776 res!2145315) b!5034474))

(assert (= (and b!5034474 c!862212) b!5034479))

(assert (= (and b!5034474 (not c!862212)) b!5034475))

(assert (= (and b!5034475 c!862210) b!5034478))

(assert (= (and b!5034475 (not c!862210)) b!5034477))

(assert (= (or b!5034479 b!5034475 b!5034477) bm!351157))

(declare-fun m!6068962 () Bool)

(assert (=> d!1619776 m!6068962))

(assert (=> d!1619776 m!6068714))

(declare-fun m!6068964 () Bool)

(assert (=> b!5034474 m!6068964))

(assert (=> bm!351157 m!6068686))

(declare-fun m!6068966 () Bool)

(assert (=> b!5034482 m!6068966))

(assert (=> d!1619718 d!1619776))

(assert (=> b!5034246 d!1619722))

(declare-fun d!1619778 () Bool)

(declare-fun lt!2082994 () Int)

(assert (=> d!1619778 (>= lt!2082994 0)))

(declare-fun e!3144765 () Int)

(assert (=> d!1619778 (= lt!2082994 e!3144765)))

(declare-fun c!862214 () Bool)

(assert (=> d!1619778 (= c!862214 ((_ is Nil!58268) (t!370843 lt!2082932)))))

(assert (=> d!1619778 (= (size!38835 (t!370843 lt!2082932)) lt!2082994)))

(declare-fun b!5034483 () Bool)

(assert (=> b!5034483 (= e!3144765 0)))

(declare-fun b!5034484 () Bool)

(assert (=> b!5034484 (= e!3144765 (+ 1 (size!38835 (t!370843 (t!370843 lt!2082932)))))))

(assert (= (and d!1619778 c!862214) b!5034483))

(assert (= (and d!1619778 (not c!862214)) b!5034484))

(declare-fun m!6068968 () Bool)

(assert (=> b!5034484 m!6068968))

(assert (=> b!5034289 d!1619778))

(assert (=> b!5034292 d!1619722))

(declare-fun d!1619780 () Bool)

(declare-fun lt!2082995 () Int)

(assert (=> d!1619780 (>= lt!2082995 0)))

(declare-fun e!3144766 () Int)

(assert (=> d!1619780 (= lt!2082995 e!3144766)))

(declare-fun c!862215 () Bool)

(assert (=> d!1619780 (= c!862215 ((_ is Nil!58268) lt!2082950))))

(assert (=> d!1619780 (= (size!38835 lt!2082950) lt!2082995)))

(declare-fun b!5034485 () Bool)

(assert (=> b!5034485 (= e!3144766 0)))

(declare-fun b!5034486 () Bool)

(assert (=> b!5034486 (= e!3144766 (+ 1 (size!38835 (t!370843 lt!2082950))))))

(assert (= (and d!1619780 c!862215) b!5034485))

(assert (= (and d!1619780 (not c!862215)) b!5034486))

(declare-fun m!6068970 () Bool)

(assert (=> b!5034486 m!6068970))

(assert (=> b!5034244 d!1619780))

(declare-fun d!1619782 () Bool)

(assert (=> d!1619782 (= (inv!76985 (xs!18806 (right!42979 t!4198))) (<= (size!38835 (innerList!15568 (xs!18806 (right!42979 t!4198)))) 2147483647))))

(declare-fun bs!1188720 () Bool)

(assert (= bs!1188720 d!1619782))

(declare-fun m!6068972 () Bool)

(assert (=> bs!1188720 m!6068972))

(assert (=> b!5034322 d!1619782))

(assert (=> b!5034126 d!1619714))

(assert (=> b!5034126 d!1619716))

(declare-fun d!1619784 () Bool)

(declare-fun c!862216 () Bool)

(assert (=> d!1619784 (= c!862216 ((_ is Node!15480) (left!42649 (right!42979 t!4198))))))

(declare-fun e!3144767 () Bool)

(assert (=> d!1619784 (= (inv!76984 (left!42649 (right!42979 t!4198))) e!3144767)))

(declare-fun b!5034487 () Bool)

(assert (=> b!5034487 (= e!3144767 (inv!76986 (left!42649 (right!42979 t!4198))))))

(declare-fun b!5034488 () Bool)

(declare-fun e!3144768 () Bool)

(assert (=> b!5034488 (= e!3144767 e!3144768)))

(declare-fun res!2145316 () Bool)

(assert (=> b!5034488 (= res!2145316 (not ((_ is Leaf!25684) (left!42649 (right!42979 t!4198)))))))

(assert (=> b!5034488 (=> res!2145316 e!3144768)))

(declare-fun b!5034489 () Bool)

(assert (=> b!5034489 (= e!3144768 (inv!76987 (left!42649 (right!42979 t!4198))))))

(assert (= (and d!1619784 c!862216) b!5034487))

(assert (= (and d!1619784 (not c!862216)) b!5034488))

(assert (= (and b!5034488 (not res!2145316)) b!5034489))

(declare-fun m!6068974 () Bool)

(assert (=> b!5034487 m!6068974))

(declare-fun m!6068976 () Bool)

(assert (=> b!5034489 m!6068976))

(assert (=> b!5034321 d!1619784))

(declare-fun d!1619786 () Bool)

(declare-fun c!862217 () Bool)

(assert (=> d!1619786 (= c!862217 ((_ is Node!15480) (right!42979 (right!42979 t!4198))))))

(declare-fun e!3144769 () Bool)

(assert (=> d!1619786 (= (inv!76984 (right!42979 (right!42979 t!4198))) e!3144769)))

(declare-fun b!5034490 () Bool)

(assert (=> b!5034490 (= e!3144769 (inv!76986 (right!42979 (right!42979 t!4198))))))

(declare-fun b!5034491 () Bool)

(declare-fun e!3144770 () Bool)

(assert (=> b!5034491 (= e!3144769 e!3144770)))

(declare-fun res!2145317 () Bool)

(assert (=> b!5034491 (= res!2145317 (not ((_ is Leaf!25684) (right!42979 (right!42979 t!4198)))))))

(assert (=> b!5034491 (=> res!2145317 e!3144770)))

(declare-fun b!5034492 () Bool)

(assert (=> b!5034492 (= e!3144770 (inv!76987 (right!42979 (right!42979 t!4198))))))

(assert (= (and d!1619786 c!862217) b!5034490))

(assert (= (and d!1619786 (not c!862217)) b!5034491))

(assert (= (and b!5034491 (not res!2145317)) b!5034492))

(declare-fun m!6068978 () Bool)

(assert (=> b!5034490 m!6068978))

(declare-fun m!6068980 () Bool)

(assert (=> b!5034492 m!6068980))

(assert (=> b!5034321 d!1619786))

(declare-fun d!1619788 () Bool)

(declare-fun res!2145318 () Bool)

(declare-fun e!3144771 () Bool)

(assert (=> d!1619788 (=> (not res!2145318) (not e!3144771))))

(assert (=> d!1619788 (= res!2145318 (<= (size!38835 (list!18855 (xs!18806 t!4198))) 512))))

(assert (=> d!1619788 (= (inv!76987 t!4198) e!3144771)))

(declare-fun b!5034493 () Bool)

(declare-fun res!2145319 () Bool)

(assert (=> b!5034493 (=> (not res!2145319) (not e!3144771))))

(assert (=> b!5034493 (= res!2145319 (= (csize!31191 t!4198) (size!38835 (list!18855 (xs!18806 t!4198)))))))

(declare-fun b!5034494 () Bool)

(assert (=> b!5034494 (= e!3144771 (and (> (csize!31191 t!4198) 0) (<= (csize!31191 t!4198) 512)))))

(assert (= (and d!1619788 res!2145318) b!5034493))

(assert (= (and b!5034493 res!2145319) b!5034494))

(assert (=> d!1619788 m!6068696))

(assert (=> d!1619788 m!6068696))

(assert (=> d!1619788 m!6068720))

(assert (=> b!5034493 m!6068696))

(assert (=> b!5034493 m!6068696))

(assert (=> b!5034493 m!6068720))

(assert (=> b!5034223 d!1619788))

(declare-fun d!1619790 () Bool)

(declare-fun lt!2082996 () Int)

(assert (=> d!1619790 (>= lt!2082996 0)))

(declare-fun e!3144772 () Int)

(assert (=> d!1619790 (= lt!2082996 e!3144772)))

(declare-fun c!862218 () Bool)

(assert (=> d!1619790 (= c!862218 ((_ is Nil!58268) lt!2082937))))

(assert (=> d!1619790 (= (size!38835 lt!2082937) lt!2082996)))

(declare-fun b!5034495 () Bool)

(assert (=> b!5034495 (= e!3144772 0)))

(declare-fun b!5034496 () Bool)

(assert (=> b!5034496 (= e!3144772 (+ 1 (size!38835 (t!370843 lt!2082937))))))

(assert (= (and d!1619790 c!862218) b!5034495))

(assert (= (and d!1619790 (not c!862218)) b!5034496))

(declare-fun m!6068982 () Bool)

(assert (=> b!5034496 m!6068982))

(assert (=> b!5034169 d!1619790))

(assert (=> b!5034198 d!1619750))

(assert (=> b!5034198 d!1619752))

(declare-fun d!1619792 () Bool)

(declare-fun lt!2082997 () Bool)

(assert (=> d!1619792 (= lt!2082997 (isEmpty!31500 (list!18856 (right!42979 t!4198))))))

(assert (=> d!1619792 (= lt!2082997 (= (size!38833 (right!42979 t!4198)) 0))))

(assert (=> d!1619792 (= (isEmpty!31498 (right!42979 t!4198)) lt!2082997)))

(declare-fun bs!1188721 () Bool)

(assert (= bs!1188721 d!1619792))

(declare-fun m!6068984 () Bool)

(assert (=> bs!1188721 m!6068984))

(assert (=> bs!1188721 m!6068984))

(declare-fun m!6068986 () Bool)

(assert (=> bs!1188721 m!6068986))

(assert (=> bs!1188721 m!6068930))

(assert (=> b!5034197 d!1619792))

(declare-fun d!1619794 () Bool)

(assert (=> d!1619794 (= (inv!76985 (xs!18806 (left!42649 t!4198))) (<= (size!38835 (innerList!15568 (xs!18806 (left!42649 t!4198)))) 2147483647))))

(declare-fun bs!1188722 () Bool)

(assert (= bs!1188722 d!1619794))

(declare-fun m!6068988 () Bool)

(assert (=> bs!1188722 m!6068988))

(assert (=> b!5034319 d!1619794))

(declare-fun d!1619796 () Bool)

(declare-fun c!862219 () Bool)

(assert (=> d!1619796 (= c!862219 ((_ is Node!15480) (left!42649 (left!42649 t!4198))))))

(declare-fun e!3144773 () Bool)

(assert (=> d!1619796 (= (inv!76984 (left!42649 (left!42649 t!4198))) e!3144773)))

(declare-fun b!5034497 () Bool)

(assert (=> b!5034497 (= e!3144773 (inv!76986 (left!42649 (left!42649 t!4198))))))

(declare-fun b!5034498 () Bool)

(declare-fun e!3144774 () Bool)

(assert (=> b!5034498 (= e!3144773 e!3144774)))

(declare-fun res!2145320 () Bool)

(assert (=> b!5034498 (= res!2145320 (not ((_ is Leaf!25684) (left!42649 (left!42649 t!4198)))))))

(assert (=> b!5034498 (=> res!2145320 e!3144774)))

(declare-fun b!5034499 () Bool)

(assert (=> b!5034499 (= e!3144774 (inv!76987 (left!42649 (left!42649 t!4198))))))

(assert (= (and d!1619796 c!862219) b!5034497))

(assert (= (and d!1619796 (not c!862219)) b!5034498))

(assert (= (and b!5034498 (not res!2145320)) b!5034499))

(declare-fun m!6068990 () Bool)

(assert (=> b!5034497 m!6068990))

(declare-fun m!6068992 () Bool)

(assert (=> b!5034499 m!6068992))

(assert (=> b!5034318 d!1619796))

(declare-fun d!1619798 () Bool)

(declare-fun c!862220 () Bool)

(assert (=> d!1619798 (= c!862220 ((_ is Node!15480) (right!42979 (left!42649 t!4198))))))

(declare-fun e!3144775 () Bool)

(assert (=> d!1619798 (= (inv!76984 (right!42979 (left!42649 t!4198))) e!3144775)))

(declare-fun b!5034500 () Bool)

(assert (=> b!5034500 (= e!3144775 (inv!76986 (right!42979 (left!42649 t!4198))))))

(declare-fun b!5034501 () Bool)

(declare-fun e!3144776 () Bool)

(assert (=> b!5034501 (= e!3144775 e!3144776)))

(declare-fun res!2145321 () Bool)

(assert (=> b!5034501 (= res!2145321 (not ((_ is Leaf!25684) (right!42979 (left!42649 t!4198)))))))

(assert (=> b!5034501 (=> res!2145321 e!3144776)))

(declare-fun b!5034502 () Bool)

(assert (=> b!5034502 (= e!3144776 (inv!76987 (right!42979 (left!42649 t!4198))))))

(assert (= (and d!1619798 c!862220) b!5034500))

(assert (= (and d!1619798 (not c!862220)) b!5034501))

(assert (= (and b!5034501 (not res!2145321)) b!5034502))

(declare-fun m!6068994 () Bool)

(assert (=> b!5034500 m!6068994))

(declare-fun m!6068996 () Bool)

(assert (=> b!5034502 m!6068996))

(assert (=> b!5034318 d!1619798))

(declare-fun d!1619800 () Bool)

(declare-fun lt!2082998 () Int)

(assert (=> d!1619800 (>= lt!2082998 0)))

(declare-fun e!3144777 () Int)

(assert (=> d!1619800 (= lt!2082998 e!3144777)))

(declare-fun c!862221 () Bool)

(assert (=> d!1619800 (= c!862221 ((_ is Nil!58268) (list!18856 t!4198)))))

(assert (=> d!1619800 (= (size!38835 (list!18856 t!4198)) lt!2082998)))

(declare-fun b!5034503 () Bool)

(assert (=> b!5034503 (= e!3144777 0)))

(declare-fun b!5034504 () Bool)

(assert (=> b!5034504 (= e!3144777 (+ 1 (size!38835 (t!370843 (list!18856 t!4198)))))))

(assert (= (and d!1619800 c!862221) b!5034503))

(assert (= (and d!1619800 (not c!862221)) b!5034504))

(declare-fun m!6068998 () Bool)

(assert (=> b!5034504 m!6068998))

(assert (=> d!1619728 d!1619800))

(declare-fun d!1619802 () Bool)

(declare-fun c!862226 () Bool)

(assert (=> d!1619802 (= c!862226 ((_ is Empty!15480) t!4198))))

(declare-fun e!3144782 () List!58392)

(assert (=> d!1619802 (= (list!18856 t!4198) e!3144782)))

(declare-fun b!5034516 () Bool)

(declare-fun e!3144783 () List!58392)

(assert (=> b!5034516 (= e!3144783 (++!12696 (list!18856 (left!42649 t!4198)) (list!18856 (right!42979 t!4198))))))

(declare-fun b!5034514 () Bool)

(assert (=> b!5034514 (= e!3144782 e!3144783)))

(declare-fun c!862227 () Bool)

(assert (=> b!5034514 (= c!862227 ((_ is Leaf!25684) t!4198))))

(declare-fun b!5034515 () Bool)

(assert (=> b!5034515 (= e!3144783 (list!18855 (xs!18806 t!4198)))))

(declare-fun b!5034513 () Bool)

(assert (=> b!5034513 (= e!3144782 Nil!58268)))

(assert (= (and d!1619802 c!862226) b!5034513))

(assert (= (and d!1619802 (not c!862226)) b!5034514))

(assert (= (and b!5034514 c!862227) b!5034515))

(assert (= (and b!5034514 (not c!862227)) b!5034516))

(assert (=> b!5034516 m!6068898))

(assert (=> b!5034516 m!6068984))

(assert (=> b!5034516 m!6068898))

(assert (=> b!5034516 m!6068984))

(declare-fun m!6069000 () Bool)

(assert (=> b!5034516 m!6069000))

(assert (=> b!5034515 m!6068696))

(assert (=> d!1619728 d!1619802))

(declare-fun d!1619804 () Bool)

(declare-fun e!3144785 () Bool)

(assert (=> d!1619804 e!3144785))

(declare-fun res!2145322 () Bool)

(assert (=> d!1619804 (=> (not res!2145322) (not e!3144785))))

(declare-fun lt!2082999 () List!58392)

(assert (=> d!1619804 (= res!2145322 (= ((_ map implies) (content!10334 lt!2082999) (content!10334 (t!370843 lt!2082932))) ((as const (InoxSet T!103956)) true)))))

(declare-fun e!3144787 () List!58392)

(assert (=> d!1619804 (= lt!2082999 e!3144787)))

(declare-fun c!862228 () Bool)

(assert (=> d!1619804 (= c!862228 (or ((_ is Nil!58268) (t!370843 lt!2082932)) (<= (- i!618 1) 0)))))

(assert (=> d!1619804 (= (take!801 (t!370843 lt!2082932) (- i!618 1)) lt!2082999)))

(declare-fun b!5034517 () Bool)

(declare-fun e!3144784 () Int)

(assert (=> b!5034517 (= e!3144785 (= (size!38835 lt!2082999) e!3144784))))

(declare-fun c!862230 () Bool)

(assert (=> b!5034517 (= c!862230 (<= (- i!618 1) 0))))

(declare-fun b!5034518 () Bool)

(assert (=> b!5034518 (= e!3144784 0)))

(declare-fun b!5034519 () Bool)

(declare-fun e!3144786 () Int)

(assert (=> b!5034519 (= e!3144784 e!3144786)))

(declare-fun c!862229 () Bool)

(assert (=> b!5034519 (= c!862229 (>= (- i!618 1) (size!38835 (t!370843 lt!2082932))))))

(declare-fun b!5034520 () Bool)

(assert (=> b!5034520 (= e!3144787 Nil!58268)))

(declare-fun b!5034521 () Bool)

(assert (=> b!5034521 (= e!3144786 (size!38835 (t!370843 lt!2082932)))))

(declare-fun b!5034522 () Bool)

(assert (=> b!5034522 (= e!3144786 (- i!618 1))))

(declare-fun b!5034523 () Bool)

(assert (=> b!5034523 (= e!3144787 (Cons!58268 (h!64716 (t!370843 lt!2082932)) (take!801 (t!370843 (t!370843 lt!2082932)) (- (- i!618 1) 1))))))

(assert (= (and d!1619804 c!862228) b!5034520))

(assert (= (and d!1619804 (not c!862228)) b!5034523))

(assert (= (and d!1619804 res!2145322) b!5034517))

(assert (= (and b!5034517 c!862230) b!5034518))

(assert (= (and b!5034517 (not c!862230)) b!5034519))

(assert (= (and b!5034519 c!862229) b!5034521))

(assert (= (and b!5034519 (not c!862229)) b!5034522))

(assert (=> b!5034519 m!6068790))

(declare-fun m!6069002 () Bool)

(assert (=> d!1619804 m!6069002))

(assert (=> d!1619804 m!6068940))

(declare-fun m!6069004 () Bool)

(assert (=> b!5034517 m!6069004))

(declare-fun m!6069006 () Bool)

(assert (=> b!5034523 m!6069006))

(assert (=> b!5034521 m!6068790))

(assert (=> b!5034250 d!1619804))

(declare-fun d!1619806 () Bool)

(declare-fun lt!2083000 () Int)

(assert (=> d!1619806 (>= lt!2083000 0)))

(declare-fun e!3144788 () Int)

(assert (=> d!1619806 (= lt!2083000 e!3144788)))

(declare-fun c!862231 () Bool)

(assert (=> d!1619806 (= c!862231 ((_ is Nil!58268) (list!18855 (xs!18806 t!4198))))))

(assert (=> d!1619806 (= (size!38835 (list!18855 (xs!18806 t!4198))) lt!2083000)))

(declare-fun b!5034524 () Bool)

(assert (=> b!5034524 (= e!3144788 0)))

(declare-fun b!5034525 () Bool)

(assert (=> b!5034525 (= e!3144788 (+ 1 (size!38835 (t!370843 (list!18855 (xs!18806 t!4198))))))))

(assert (= (and d!1619806 c!862231) b!5034524))

(assert (= (and d!1619806 (not c!862231)) b!5034525))

(declare-fun m!6069008 () Bool)

(assert (=> b!5034525 m!6069008))

(assert (=> d!1619686 d!1619806))

(assert (=> d!1619686 d!1619712))

(declare-fun d!1619808 () Bool)

(declare-fun _$1!11277 () Int)

(assert (=> d!1619808 (= _$1!11277 (size!38835 (list!18855 (xs!18806 t!4198))))))

(assert (=> d!1619808 true))

(assert (=> d!1619808 (= (choose!37238 (xs!18806 t!4198)) _$1!11277)))

(declare-fun bs!1188723 () Bool)

(assert (= bs!1188723 d!1619808))

(assert (=> bs!1188723 m!6068696))

(assert (=> bs!1188723 m!6068696))

(assert (=> bs!1188723 m!6068720))

(assert (=> d!1619686 d!1619808))

(assert (=> d!1619726 d!1619684))

(assert (=> d!1619726 d!1619720))

(assert (=> d!1619726 d!1619722))

(declare-fun d!1619810 () Bool)

(assert (=> d!1619810 (= (drop!2608 lt!2082932 i!618) (slice!839 lt!2082932 i!618 (size!38835 lt!2082932)))))

(assert (=> d!1619810 true))

(declare-fun _$10!194 () Unit!149459)

(assert (=> d!1619810 (= (choose!37239 lt!2082932 i!618) _$10!194)))

(declare-fun bs!1188724 () Bool)

(assert (= bs!1188724 d!1619810))

(assert (=> bs!1188724 m!6068704))

(assert (=> bs!1188724 m!6068686))

(assert (=> bs!1188724 m!6068686))

(assert (=> bs!1188724 m!6068688))

(assert (=> d!1619726 d!1619810))

(declare-fun d!1619812 () Bool)

(declare-fun res!2145323 () Bool)

(declare-fun e!3144789 () Bool)

(assert (=> d!1619812 (=> (not res!2145323) (not e!3144789))))

(assert (=> d!1619812 (= res!2145323 (= (csize!31190 (right!42979 t!4198)) (+ (size!38833 (left!42649 (right!42979 t!4198))) (size!38833 (right!42979 (right!42979 t!4198))))))))

(assert (=> d!1619812 (= (inv!76986 (right!42979 t!4198)) e!3144789)))

(declare-fun b!5034526 () Bool)

(declare-fun res!2145324 () Bool)

(assert (=> b!5034526 (=> (not res!2145324) (not e!3144789))))

(assert (=> b!5034526 (= res!2145324 (and (not (= (left!42649 (right!42979 t!4198)) Empty!15480)) (not (= (right!42979 (right!42979 t!4198)) Empty!15480))))))

(declare-fun b!5034527 () Bool)

(declare-fun res!2145325 () Bool)

(assert (=> b!5034527 (=> (not res!2145325) (not e!3144789))))

(assert (=> b!5034527 (= res!2145325 (= (cheight!15691 (right!42979 t!4198)) (+ (max!0 (height!2062 (left!42649 (right!42979 t!4198))) (height!2062 (right!42979 (right!42979 t!4198)))) 1)))))

(declare-fun b!5034528 () Bool)

(assert (=> b!5034528 (= e!3144789 (<= 0 (cheight!15691 (right!42979 t!4198))))))

(assert (= (and d!1619812 res!2145323) b!5034526))

(assert (= (and b!5034526 res!2145324) b!5034527))

(assert (= (and b!5034527 res!2145325) b!5034528))

(declare-fun m!6069010 () Bool)

(assert (=> d!1619812 m!6069010))

(declare-fun m!6069012 () Bool)

(assert (=> d!1619812 m!6069012))

(assert (=> b!5034527 m!6068882))

(assert (=> b!5034527 m!6068884))

(assert (=> b!5034527 m!6068882))

(assert (=> b!5034527 m!6068884))

(declare-fun m!6069014 () Bool)

(assert (=> b!5034527 m!6069014))

(assert (=> b!5034278 d!1619812))

(declare-fun d!1619814 () Bool)

(declare-fun c!862232 () Bool)

(assert (=> d!1619814 (= c!862232 ((_ is Nil!58268) lt!2082950))))

(declare-fun e!3144790 () (InoxSet T!103956))

(assert (=> d!1619814 (= (content!10334 lt!2082950) e!3144790)))

(declare-fun b!5034529 () Bool)

(assert (=> b!5034529 (= e!3144790 ((as const (Array T!103956 Bool)) false))))

(declare-fun b!5034530 () Bool)

(assert (=> b!5034530 (= e!3144790 ((_ map or) (store ((as const (Array T!103956 Bool)) false) (h!64716 lt!2082950) true) (content!10334 (t!370843 lt!2082950))))))

(assert (= (and d!1619814 c!862232) b!5034529))

(assert (= (and d!1619814 (not c!862232)) b!5034530))

(declare-fun m!6069016 () Bool)

(assert (=> b!5034530 m!6069016))

(declare-fun m!6069018 () Bool)

(assert (=> b!5034530 m!6069018))

(assert (=> d!1619696 d!1619814))

(assert (=> d!1619696 d!1619768))

(assert (=> b!5034248 d!1619722))

(declare-fun b!5034531 () Bool)

(declare-fun e!3144791 () Bool)

(declare-fun tp!1410081 () Bool)

(assert (=> b!5034531 (= e!3144791 (and tp_is_empty!36729 tp!1410081))))

(assert (=> b!5034320 (= tp!1410060 e!3144791)))

(assert (= (and b!5034320 ((_ is Cons!58268) (innerList!15568 (xs!18806 (left!42649 t!4198))))) b!5034531))

(declare-fun tp!1410083 () Bool)

(declare-fun tp!1410084 () Bool)

(declare-fun e!3144792 () Bool)

(declare-fun b!5034532 () Bool)

(assert (=> b!5034532 (= e!3144792 (and (inv!76984 (left!42649 (left!42649 (left!42649 t!4198)))) tp!1410083 (inv!76984 (right!42979 (left!42649 (left!42649 t!4198)))) tp!1410084))))

(declare-fun b!5034534 () Bool)

(declare-fun e!3144793 () Bool)

(declare-fun tp!1410082 () Bool)

(assert (=> b!5034534 (= e!3144793 tp!1410082)))

(declare-fun b!5034533 () Bool)

(assert (=> b!5034533 (= e!3144792 (and (inv!76985 (xs!18806 (left!42649 (left!42649 t!4198)))) e!3144793))))

(assert (=> b!5034318 (= tp!1410061 (and (inv!76984 (left!42649 (left!42649 t!4198))) e!3144792))))

(assert (= (and b!5034318 ((_ is Node!15480) (left!42649 (left!42649 t!4198)))) b!5034532))

(assert (= b!5034533 b!5034534))

(assert (= (and b!5034318 ((_ is Leaf!25684) (left!42649 (left!42649 t!4198)))) b!5034533))

(declare-fun m!6069020 () Bool)

(assert (=> b!5034532 m!6069020))

(declare-fun m!6069022 () Bool)

(assert (=> b!5034532 m!6069022))

(declare-fun m!6069024 () Bool)

(assert (=> b!5034533 m!6069024))

(assert (=> b!5034318 m!6068798))

(declare-fun tp!1410087 () Bool)

(declare-fun e!3144794 () Bool)

(declare-fun tp!1410086 () Bool)

(declare-fun b!5034535 () Bool)

(assert (=> b!5034535 (= e!3144794 (and (inv!76984 (left!42649 (right!42979 (left!42649 t!4198)))) tp!1410086 (inv!76984 (right!42979 (right!42979 (left!42649 t!4198)))) tp!1410087))))

(declare-fun b!5034537 () Bool)

(declare-fun e!3144795 () Bool)

(declare-fun tp!1410085 () Bool)

(assert (=> b!5034537 (= e!3144795 tp!1410085)))

(declare-fun b!5034536 () Bool)

(assert (=> b!5034536 (= e!3144794 (and (inv!76985 (xs!18806 (right!42979 (left!42649 t!4198)))) e!3144795))))

(assert (=> b!5034318 (= tp!1410062 (and (inv!76984 (right!42979 (left!42649 t!4198))) e!3144794))))

(assert (= (and b!5034318 ((_ is Node!15480) (right!42979 (left!42649 t!4198)))) b!5034535))

(assert (= b!5034536 b!5034537))

(assert (= (and b!5034318 ((_ is Leaf!25684) (right!42979 (left!42649 t!4198)))) b!5034536))

(declare-fun m!6069026 () Bool)

(assert (=> b!5034535 m!6069026))

(declare-fun m!6069028 () Bool)

(assert (=> b!5034535 m!6069028))

(declare-fun m!6069030 () Bool)

(assert (=> b!5034536 m!6069030))

(assert (=> b!5034318 m!6068800))

(declare-fun b!5034538 () Bool)

(declare-fun e!3144796 () Bool)

(declare-fun tp!1410088 () Bool)

(assert (=> b!5034538 (= e!3144796 (and tp_is_empty!36729 tp!1410088))))

(assert (=> b!5034323 (= tp!1410063 e!3144796)))

(assert (= (and b!5034323 ((_ is Cons!58268) (innerList!15568 (xs!18806 (right!42979 t!4198))))) b!5034538))

(declare-fun b!5034539 () Bool)

(declare-fun e!3144797 () Bool)

(declare-fun tp!1410089 () Bool)

(assert (=> b!5034539 (= e!3144797 (and tp_is_empty!36729 tp!1410089))))

(assert (=> b!5034309 (= tp!1410053 e!3144797)))

(assert (= (and b!5034309 ((_ is Cons!58268) (t!370843 (innerList!15568 (xs!18806 t!4198))))) b!5034539))

(declare-fun e!3144798 () Bool)

(declare-fun b!5034540 () Bool)

(declare-fun tp!1410092 () Bool)

(declare-fun tp!1410091 () Bool)

(assert (=> b!5034540 (= e!3144798 (and (inv!76984 (left!42649 (left!42649 (right!42979 t!4198)))) tp!1410091 (inv!76984 (right!42979 (left!42649 (right!42979 t!4198)))) tp!1410092))))

(declare-fun b!5034542 () Bool)

(declare-fun e!3144799 () Bool)

(declare-fun tp!1410090 () Bool)

(assert (=> b!5034542 (= e!3144799 tp!1410090)))

(declare-fun b!5034541 () Bool)

(assert (=> b!5034541 (= e!3144798 (and (inv!76985 (xs!18806 (left!42649 (right!42979 t!4198)))) e!3144799))))

(assert (=> b!5034321 (= tp!1410064 (and (inv!76984 (left!42649 (right!42979 t!4198))) e!3144798))))

(assert (= (and b!5034321 ((_ is Node!15480) (left!42649 (right!42979 t!4198)))) b!5034540))

(assert (= b!5034541 b!5034542))

(assert (= (and b!5034321 ((_ is Leaf!25684) (left!42649 (right!42979 t!4198)))) b!5034541))

(declare-fun m!6069032 () Bool)

(assert (=> b!5034540 m!6069032))

(declare-fun m!6069034 () Bool)

(assert (=> b!5034540 m!6069034))

(declare-fun m!6069036 () Bool)

(assert (=> b!5034541 m!6069036))

(assert (=> b!5034321 m!6068804))

(declare-fun tp!1410094 () Bool)

(declare-fun e!3144800 () Bool)

(declare-fun tp!1410095 () Bool)

(declare-fun b!5034543 () Bool)

(assert (=> b!5034543 (= e!3144800 (and (inv!76984 (left!42649 (right!42979 (right!42979 t!4198)))) tp!1410094 (inv!76984 (right!42979 (right!42979 (right!42979 t!4198)))) tp!1410095))))

(declare-fun b!5034545 () Bool)

(declare-fun e!3144801 () Bool)

(declare-fun tp!1410093 () Bool)

(assert (=> b!5034545 (= e!3144801 tp!1410093)))

(declare-fun b!5034544 () Bool)

(assert (=> b!5034544 (= e!3144800 (and (inv!76985 (xs!18806 (right!42979 (right!42979 t!4198)))) e!3144801))))

(assert (=> b!5034321 (= tp!1410065 (and (inv!76984 (right!42979 (right!42979 t!4198))) e!3144800))))

(assert (= (and b!5034321 ((_ is Node!15480) (right!42979 (right!42979 t!4198)))) b!5034543))

(assert (= b!5034544 b!5034545))

(assert (= (and b!5034321 ((_ is Leaf!25684) (right!42979 (right!42979 t!4198)))) b!5034544))

(declare-fun m!6069038 () Bool)

(assert (=> b!5034543 m!6069038))

(declare-fun m!6069040 () Bool)

(assert (=> b!5034543 m!6069040))

(declare-fun m!6069042 () Bool)

(assert (=> b!5034544 m!6069042))

(assert (=> b!5034321 m!6068806))

(check-sat (not b!5034451) (not b!5034523) (not b!5034404) (not b!5034410) (not b!5034533) (not b!5034409) (not b!5034527) (not d!1619760) (not b!5034463) (not b!5034484) (not b!5034525) (not d!1619774) (not b!5034543) (not d!1619810) (not b!5034473) (not b!5034531) (not b!5034487) (not b!5034521) (not b!5034393) (not b!5034471) (not b!5034497) (not b!5034442) (not b!5034474) (not b!5034423) (not b!5034424) (not d!1619764) (not b!5034318) (not d!1619762) (not b!5034427) (not b!5034397) (not b!5034489) (not b!5034407) (not b!5034461) (not b!5034406) (not b!5034422) tp_is_empty!36729 (not b!5034516) (not b!5034438) (not b!5034539) (not d!1619808) (not b!5034486) (not d!1619788) (not d!1619782) (not b!5034519) (not b!5034538) (not d!1619754) (not b!5034490) (not b!5034421) (not b!5034500) (not b!5034534) (not b!5034493) (not b!5034535) (not b!5034399) (not b!5034469) (not b!5034499) (not d!1619794) (not b!5034515) (not b!5034465) (not d!1619744) (not b!5034504) (not d!1619804) (not d!1619772) (not b!5034426) (not b!5034492) (not b!5034542) (not d!1619812) (not b!5034425) (not b!5034449) (not d!1619792) (not b!5034541) (not b!5034419) (not b!5034467) (not b!5034517) (not b!5034540) (not b!5034530) (not bm!351156) (not b!5034496) (not b!5034460) (not b!5034544) (not b!5034321) (not b!5034537) (not d!1619756) (not b!5034545) (not b!5034536) (not b!5034439) (not d!1619770) (not b!5034392) (not b!5034411) (not b!5034395) (not b!5034532) (not d!1619776) (not d!1619746) (not b!5034408) (not b!5034482) (not bm!351157) (not b!5034502) (not b!5034452))
(check-sat)
