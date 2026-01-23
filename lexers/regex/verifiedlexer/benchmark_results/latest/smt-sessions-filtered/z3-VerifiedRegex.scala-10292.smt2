; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!535458 () Bool)

(assert start!535458)

(declare-fun b!5074132 () Bool)

(declare-fun res!2160427 () Bool)

(declare-fun e!3165851 () Bool)

(assert (=> b!5074132 (=> (not res!2160427) (not e!3165851))))

(declare-datatypes ((T!105202 0))(
  ( (T!105203 (val!23660 Int)) )
))
(declare-datatypes ((List!58570 0))(
  ( (Nil!58446) (Cons!58446 (h!64894 T!105202) (t!371357 List!58570)) )
))
(declare-datatypes ((IArray!31213 0))(
  ( (IArray!31214 (innerList!15664 List!58570)) )
))
(declare-datatypes ((Conc!15576 0))(
  ( (Node!15576 (left!42834 Conc!15576) (right!43164 Conc!15576) (csize!31382 Int) (cheight!15787 Int)) (Leaf!25869 (xs!18936 IArray!31213) (csize!31383 Int)) (Empty!15576) )
))
(declare-fun ys!41 () Conc!15576)

(declare-fun height!2153 (Conc!15576) Int)

(assert (=> b!5074132 (= res!2160427 (>= (height!2153 (right!43164 ys!41)) (height!2153 (left!42834 ys!41))))))

(declare-fun xs!286 () Conc!15576)

(declare-fun tp!1416250 () Bool)

(declare-fun e!3165853 () Bool)

(declare-fun b!5074133 () Bool)

(declare-fun tp!1416249 () Bool)

(declare-fun inv!77621 (Conc!15576) Bool)

(assert (=> b!5074133 (= e!3165853 (and (inv!77621 (left!42834 xs!286)) tp!1416250 (inv!77621 (right!43164 xs!286)) tp!1416249))))

(declare-fun b!5074134 () Bool)

(declare-fun e!3165852 () Bool)

(declare-fun e!3165856 () Bool)

(assert (=> b!5074134 (= e!3165852 e!3165856)))

(declare-fun res!2160420 () Bool)

(assert (=> b!5074134 (=> res!2160420 e!3165856)))

(declare-fun lt!2089942 () Int)

(declare-fun lt!2089941 () Int)

(assert (=> b!5074134 (= res!2160420 (or (> lt!2089942 (+ 1 lt!2089941)) (< lt!2089942 lt!2089941)))))

(declare-fun lt!2089940 () Conc!15576)

(assert (=> b!5074134 (= lt!2089942 (height!2153 lt!2089940))))

(declare-fun lt!2089943 () Int)

(declare-fun lt!2089939 () Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5074134 (= lt!2089941 (max!0 lt!2089943 lt!2089939))))

(declare-fun b!5074136 () Bool)

(declare-fun list!19013 (Conc!15576) List!58570)

(declare-fun ++!12800 (List!58570 List!58570) List!58570)

(assert (=> b!5074136 (= e!3165856 (not (= (list!19013 lt!2089940) (++!12800 (list!19013 xs!286) (list!19013 ys!41)))))))

(declare-fun b!5074137 () Bool)

(declare-fun e!3165857 () Bool)

(declare-fun inv!77622 (IArray!31213) Bool)

(assert (=> b!5074137 (= e!3165853 (and (inv!77622 (xs!18936 xs!286)) e!3165857))))

(declare-fun e!3165854 () Bool)

(declare-fun tp!1416248 () Bool)

(declare-fun tp!1416251 () Bool)

(declare-fun b!5074138 () Bool)

(assert (=> b!5074138 (= e!3165854 (and (inv!77621 (left!42834 ys!41)) tp!1416248 (inv!77621 (right!43164 ys!41)) tp!1416251))))

(declare-fun b!5074139 () Bool)

(declare-fun e!3165855 () Bool)

(declare-fun tp!1416247 () Bool)

(assert (=> b!5074139 (= e!3165855 tp!1416247)))

(declare-fun b!5074140 () Bool)

(declare-fun res!2160423 () Bool)

(declare-fun e!3165858 () Bool)

(assert (=> b!5074140 (=> (not res!2160423) (not e!3165858))))

(declare-fun isBalanced!4438 (Conc!15576) Bool)

(assert (=> b!5074140 (= res!2160423 (isBalanced!4438 ys!41))))

(declare-fun b!5074141 () Bool)

(declare-fun res!2160424 () Bool)

(assert (=> b!5074141 (=> res!2160424 e!3165852)))

(assert (=> b!5074141 (= res!2160424 (not (isBalanced!4438 lt!2089940)))))

(declare-fun b!5074142 () Bool)

(declare-fun tp!1416246 () Bool)

(assert (=> b!5074142 (= e!3165857 tp!1416246)))

(declare-fun b!5074143 () Bool)

(assert (=> b!5074143 (= e!3165851 e!3165852)))

(declare-fun res!2160426 () Bool)

(assert (=> b!5074143 (=> res!2160426 e!3165852)))

(declare-fun appendAssocInst!916 (Conc!15576 Conc!15576) Bool)

(assert (=> b!5074143 (= res!2160426 (not (appendAssocInst!916 xs!286 ys!41)))))

(declare-fun <>!398 (Conc!15576 Conc!15576) Conc!15576)

(declare-fun ++!12801 (Conc!15576 Conc!15576) Conc!15576)

(assert (=> b!5074143 (= lt!2089940 (<>!398 (++!12801 xs!286 (left!42834 ys!41)) (right!43164 ys!41)))))

(declare-fun res!2160422 () Bool)

(assert (=> start!535458 (=> (not res!2160422) (not e!3165858))))

(assert (=> start!535458 (= res!2160422 (isBalanced!4438 xs!286))))

(assert (=> start!535458 e!3165858))

(assert (=> start!535458 (and (inv!77621 xs!286) e!3165853)))

(assert (=> start!535458 (and (inv!77621 ys!41) e!3165854)))

(declare-fun b!5074135 () Bool)

(declare-fun res!2160425 () Bool)

(assert (=> b!5074135 (=> (not res!2160425) (not e!3165858))))

(assert (=> b!5074135 (= res!2160425 (and (not (= xs!286 Empty!15576)) (not (= ys!41 Empty!15576))))))

(declare-fun b!5074144 () Bool)

(assert (=> b!5074144 (= e!3165858 e!3165851)))

(declare-fun res!2160421 () Bool)

(assert (=> b!5074144 (=> (not res!2160421) (not e!3165851))))

(declare-fun lt!2089938 () Int)

(get-info :version)

(assert (=> b!5074144 (= res!2160421 (and (or (> (- 1) lt!2089938) (> lt!2089938 1)) (>= lt!2089938 (- 1)) ((_ is Node!15576) ys!41)))))

(assert (=> b!5074144 (= lt!2089938 (- lt!2089939 lt!2089943))))

(assert (=> b!5074144 (= lt!2089943 (height!2153 xs!286))))

(assert (=> b!5074144 (= lt!2089939 (height!2153 ys!41))))

(declare-fun b!5074145 () Bool)

(assert (=> b!5074145 (= e!3165854 (and (inv!77622 (xs!18936 ys!41)) e!3165855))))

(assert (= (and start!535458 res!2160422) b!5074140))

(assert (= (and b!5074140 res!2160423) b!5074135))

(assert (= (and b!5074135 res!2160425) b!5074144))

(assert (= (and b!5074144 res!2160421) b!5074132))

(assert (= (and b!5074132 res!2160427) b!5074143))

(assert (= (and b!5074143 (not res!2160426)) b!5074141))

(assert (= (and b!5074141 (not res!2160424)) b!5074134))

(assert (= (and b!5074134 (not res!2160420)) b!5074136))

(assert (= (and start!535458 ((_ is Node!15576) xs!286)) b!5074133))

(assert (= b!5074137 b!5074142))

(assert (= (and start!535458 ((_ is Leaf!25869) xs!286)) b!5074137))

(assert (= (and start!535458 ((_ is Node!15576) ys!41)) b!5074138))

(assert (= b!5074145 b!5074139))

(assert (= (and start!535458 ((_ is Leaf!25869) ys!41)) b!5074145))

(declare-fun m!6121946 () Bool)

(assert (=> b!5074133 m!6121946))

(declare-fun m!6121948 () Bool)

(assert (=> b!5074133 m!6121948))

(declare-fun m!6121950 () Bool)

(assert (=> b!5074145 m!6121950))

(declare-fun m!6121952 () Bool)

(assert (=> b!5074140 m!6121952))

(declare-fun m!6121954 () Bool)

(assert (=> b!5074143 m!6121954))

(declare-fun m!6121956 () Bool)

(assert (=> b!5074143 m!6121956))

(assert (=> b!5074143 m!6121956))

(declare-fun m!6121958 () Bool)

(assert (=> b!5074143 m!6121958))

(declare-fun m!6121960 () Bool)

(assert (=> b!5074137 m!6121960))

(declare-fun m!6121962 () Bool)

(assert (=> b!5074144 m!6121962))

(declare-fun m!6121964 () Bool)

(assert (=> b!5074144 m!6121964))

(declare-fun m!6121966 () Bool)

(assert (=> start!535458 m!6121966))

(declare-fun m!6121968 () Bool)

(assert (=> start!535458 m!6121968))

(declare-fun m!6121970 () Bool)

(assert (=> start!535458 m!6121970))

(declare-fun m!6121972 () Bool)

(assert (=> b!5074138 m!6121972))

(declare-fun m!6121974 () Bool)

(assert (=> b!5074138 m!6121974))

(declare-fun m!6121976 () Bool)

(assert (=> b!5074136 m!6121976))

(declare-fun m!6121978 () Bool)

(assert (=> b!5074136 m!6121978))

(declare-fun m!6121980 () Bool)

(assert (=> b!5074136 m!6121980))

(assert (=> b!5074136 m!6121978))

(assert (=> b!5074136 m!6121980))

(declare-fun m!6121982 () Bool)

(assert (=> b!5074136 m!6121982))

(declare-fun m!6121984 () Bool)

(assert (=> b!5074134 m!6121984))

(declare-fun m!6121986 () Bool)

(assert (=> b!5074134 m!6121986))

(declare-fun m!6121988 () Bool)

(assert (=> b!5074132 m!6121988))

(declare-fun m!6121990 () Bool)

(assert (=> b!5074132 m!6121990))

(declare-fun m!6121992 () Bool)

(assert (=> b!5074141 m!6121992))

(check-sat (not b!5074136) (not b!5074140) (not b!5074133) (not b!5074142) (not b!5074144) (not b!5074132) (not start!535458) (not b!5074139) (not b!5074143) (not b!5074141) (not b!5074134) (not b!5074145) (not b!5074137) (not b!5074138))
(check-sat)
(get-model)

(declare-fun b!5074156 () Bool)

(declare-fun e!3165864 () List!58570)

(declare-fun list!19014 (IArray!31213) List!58570)

(assert (=> b!5074156 (= e!3165864 (list!19014 (xs!18936 lt!2089940)))))

(declare-fun b!5074157 () Bool)

(assert (=> b!5074157 (= e!3165864 (++!12800 (list!19013 (left!42834 lt!2089940)) (list!19013 (right!43164 lt!2089940))))))

(declare-fun b!5074154 () Bool)

(declare-fun e!3165863 () List!58570)

(assert (=> b!5074154 (= e!3165863 Nil!58446)))

(declare-fun d!1638417 () Bool)

(declare-fun c!871188 () Bool)

(assert (=> d!1638417 (= c!871188 ((_ is Empty!15576) lt!2089940))))

(assert (=> d!1638417 (= (list!19013 lt!2089940) e!3165863)))

(declare-fun b!5074155 () Bool)

(assert (=> b!5074155 (= e!3165863 e!3165864)))

(declare-fun c!871189 () Bool)

(assert (=> b!5074155 (= c!871189 ((_ is Leaf!25869) lt!2089940))))

(assert (= (and d!1638417 c!871188) b!5074154))

(assert (= (and d!1638417 (not c!871188)) b!5074155))

(assert (= (and b!5074155 c!871189) b!5074156))

(assert (= (and b!5074155 (not c!871189)) b!5074157))

(declare-fun m!6121994 () Bool)

(assert (=> b!5074156 m!6121994))

(declare-fun m!6121996 () Bool)

(assert (=> b!5074157 m!6121996))

(declare-fun m!6121998 () Bool)

(assert (=> b!5074157 m!6121998))

(assert (=> b!5074157 m!6121996))

(assert (=> b!5074157 m!6121998))

(declare-fun m!6122000 () Bool)

(assert (=> b!5074157 m!6122000))

(assert (=> b!5074136 d!1638417))

(declare-fun e!3165878 () Bool)

(declare-fun b!5074181 () Bool)

(declare-fun lt!2089946 () List!58570)

(assert (=> b!5074181 (= e!3165878 (or (not (= (list!19013 ys!41) Nil!58446)) (= lt!2089946 (list!19013 xs!286))))))

(declare-fun b!5074179 () Bool)

(declare-fun e!3165877 () List!58570)

(assert (=> b!5074179 (= e!3165877 (Cons!58446 (h!64894 (list!19013 xs!286)) (++!12800 (t!371357 (list!19013 xs!286)) (list!19013 ys!41))))))

(declare-fun d!1638425 () Bool)

(assert (=> d!1638425 e!3165878))

(declare-fun res!2160437 () Bool)

(assert (=> d!1638425 (=> (not res!2160437) (not e!3165878))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10423 (List!58570) (InoxSet T!105202))

(assert (=> d!1638425 (= res!2160437 (= (content!10423 lt!2089946) ((_ map or) (content!10423 (list!19013 xs!286)) (content!10423 (list!19013 ys!41)))))))

(assert (=> d!1638425 (= lt!2089946 e!3165877)))

(declare-fun c!871196 () Bool)

(assert (=> d!1638425 (= c!871196 ((_ is Nil!58446) (list!19013 xs!286)))))

(assert (=> d!1638425 (= (++!12800 (list!19013 xs!286) (list!19013 ys!41)) lt!2089946)))

(declare-fun b!5074180 () Bool)

(declare-fun res!2160436 () Bool)

(assert (=> b!5074180 (=> (not res!2160436) (not e!3165878))))

(declare-fun size!39099 (List!58570) Int)

(assert (=> b!5074180 (= res!2160436 (= (size!39099 lt!2089946) (+ (size!39099 (list!19013 xs!286)) (size!39099 (list!19013 ys!41)))))))

(declare-fun b!5074178 () Bool)

(assert (=> b!5074178 (= e!3165877 (list!19013 ys!41))))

(assert (= (and d!1638425 c!871196) b!5074178))

(assert (= (and d!1638425 (not c!871196)) b!5074179))

(assert (= (and d!1638425 res!2160437) b!5074180))

(assert (= (and b!5074180 res!2160436) b!5074181))

(assert (=> b!5074179 m!6121980))

(declare-fun m!6122012 () Bool)

(assert (=> b!5074179 m!6122012))

(declare-fun m!6122014 () Bool)

(assert (=> d!1638425 m!6122014))

(assert (=> d!1638425 m!6121978))

(declare-fun m!6122016 () Bool)

(assert (=> d!1638425 m!6122016))

(assert (=> d!1638425 m!6121980))

(declare-fun m!6122018 () Bool)

(assert (=> d!1638425 m!6122018))

(declare-fun m!6122020 () Bool)

(assert (=> b!5074180 m!6122020))

(assert (=> b!5074180 m!6121978))

(declare-fun m!6122022 () Bool)

(assert (=> b!5074180 m!6122022))

(assert (=> b!5074180 m!6121980))

(declare-fun m!6122024 () Bool)

(assert (=> b!5074180 m!6122024))

(assert (=> b!5074136 d!1638425))

(declare-fun b!5074184 () Bool)

(declare-fun e!3165880 () List!58570)

(assert (=> b!5074184 (= e!3165880 (list!19014 (xs!18936 xs!286)))))

(declare-fun b!5074185 () Bool)

(assert (=> b!5074185 (= e!3165880 (++!12800 (list!19013 (left!42834 xs!286)) (list!19013 (right!43164 xs!286))))))

(declare-fun b!5074182 () Bool)

(declare-fun e!3165879 () List!58570)

(assert (=> b!5074182 (= e!3165879 Nil!58446)))

(declare-fun d!1638437 () Bool)

(declare-fun c!871197 () Bool)

(assert (=> d!1638437 (= c!871197 ((_ is Empty!15576) xs!286))))

(assert (=> d!1638437 (= (list!19013 xs!286) e!3165879)))

(declare-fun b!5074183 () Bool)

(assert (=> b!5074183 (= e!3165879 e!3165880)))

(declare-fun c!871198 () Bool)

(assert (=> b!5074183 (= c!871198 ((_ is Leaf!25869) xs!286))))

(assert (= (and d!1638437 c!871197) b!5074182))

(assert (= (and d!1638437 (not c!871197)) b!5074183))

(assert (= (and b!5074183 c!871198) b!5074184))

(assert (= (and b!5074183 (not c!871198)) b!5074185))

(declare-fun m!6122026 () Bool)

(assert (=> b!5074184 m!6122026))

(declare-fun m!6122028 () Bool)

(assert (=> b!5074185 m!6122028))

(declare-fun m!6122030 () Bool)

(assert (=> b!5074185 m!6122030))

(assert (=> b!5074185 m!6122028))

(assert (=> b!5074185 m!6122030))

(declare-fun m!6122032 () Bool)

(assert (=> b!5074185 m!6122032))

(assert (=> b!5074136 d!1638437))

(declare-fun b!5074188 () Bool)

(declare-fun e!3165882 () List!58570)

(assert (=> b!5074188 (= e!3165882 (list!19014 (xs!18936 ys!41)))))

(declare-fun b!5074189 () Bool)

(assert (=> b!5074189 (= e!3165882 (++!12800 (list!19013 (left!42834 ys!41)) (list!19013 (right!43164 ys!41))))))

(declare-fun b!5074186 () Bool)

(declare-fun e!3165881 () List!58570)

(assert (=> b!5074186 (= e!3165881 Nil!58446)))

(declare-fun d!1638439 () Bool)

(declare-fun c!871199 () Bool)

(assert (=> d!1638439 (= c!871199 ((_ is Empty!15576) ys!41))))

(assert (=> d!1638439 (= (list!19013 ys!41) e!3165881)))

(declare-fun b!5074187 () Bool)

(assert (=> b!5074187 (= e!3165881 e!3165882)))

(declare-fun c!871200 () Bool)

(assert (=> b!5074187 (= c!871200 ((_ is Leaf!25869) ys!41))))

(assert (= (and d!1638439 c!871199) b!5074186))

(assert (= (and d!1638439 (not c!871199)) b!5074187))

(assert (= (and b!5074187 c!871200) b!5074188))

(assert (= (and b!5074187 (not c!871200)) b!5074189))

(declare-fun m!6122034 () Bool)

(assert (=> b!5074188 m!6122034))

(declare-fun m!6122036 () Bool)

(assert (=> b!5074189 m!6122036))

(declare-fun m!6122038 () Bool)

(assert (=> b!5074189 m!6122038))

(assert (=> b!5074189 m!6122036))

(assert (=> b!5074189 m!6122038))

(declare-fun m!6122040 () Bool)

(assert (=> b!5074189 m!6122040))

(assert (=> b!5074136 d!1638439))

(declare-fun b!5074238 () Bool)

(declare-fun res!2160478 () Bool)

(declare-fun e!3165904 () Bool)

(assert (=> b!5074238 (=> (not res!2160478) (not e!3165904))))

(assert (=> b!5074238 (= res!2160478 (isBalanced!4438 (left!42834 xs!286)))))

(declare-fun b!5074239 () Bool)

(declare-fun res!2160481 () Bool)

(assert (=> b!5074239 (=> (not res!2160481) (not e!3165904))))

(assert (=> b!5074239 (= res!2160481 (<= (- (height!2153 (left!42834 xs!286)) (height!2153 (right!43164 xs!286))) 1))))

(declare-fun d!1638441 () Bool)

(declare-fun res!2160480 () Bool)

(declare-fun e!3165903 () Bool)

(assert (=> d!1638441 (=> res!2160480 e!3165903)))

(assert (=> d!1638441 (= res!2160480 (not ((_ is Node!15576) xs!286)))))

(assert (=> d!1638441 (= (isBalanced!4438 xs!286) e!3165903)))

(declare-fun b!5074240 () Bool)

(declare-fun isEmpty!31655 (Conc!15576) Bool)

(assert (=> b!5074240 (= e!3165904 (not (isEmpty!31655 (right!43164 xs!286))))))

(declare-fun b!5074241 () Bool)

(declare-fun res!2160479 () Bool)

(assert (=> b!5074241 (=> (not res!2160479) (not e!3165904))))

(assert (=> b!5074241 (= res!2160479 (not (isEmpty!31655 (left!42834 xs!286))))))

(declare-fun b!5074242 () Bool)

(assert (=> b!5074242 (= e!3165903 e!3165904)))

(declare-fun res!2160482 () Bool)

(assert (=> b!5074242 (=> (not res!2160482) (not e!3165904))))

(assert (=> b!5074242 (= res!2160482 (<= (- 1) (- (height!2153 (left!42834 xs!286)) (height!2153 (right!43164 xs!286)))))))

(declare-fun b!5074243 () Bool)

(declare-fun res!2160483 () Bool)

(assert (=> b!5074243 (=> (not res!2160483) (not e!3165904))))

(assert (=> b!5074243 (= res!2160483 (isBalanced!4438 (right!43164 xs!286)))))

(assert (= (and d!1638441 (not res!2160480)) b!5074242))

(assert (= (and b!5074242 res!2160482) b!5074239))

(assert (= (and b!5074239 res!2160481) b!5074238))

(assert (= (and b!5074238 res!2160478) b!5074243))

(assert (= (and b!5074243 res!2160483) b!5074241))

(assert (= (and b!5074241 res!2160479) b!5074240))

(declare-fun m!6122078 () Bool)

(assert (=> b!5074241 m!6122078))

(declare-fun m!6122080 () Bool)

(assert (=> b!5074240 m!6122080))

(declare-fun m!6122082 () Bool)

(assert (=> b!5074243 m!6122082))

(declare-fun m!6122084 () Bool)

(assert (=> b!5074242 m!6122084))

(declare-fun m!6122086 () Bool)

(assert (=> b!5074242 m!6122086))

(assert (=> b!5074239 m!6122084))

(assert (=> b!5074239 m!6122086))

(declare-fun m!6122088 () Bool)

(assert (=> b!5074238 m!6122088))

(assert (=> start!535458 d!1638441))

(declare-fun d!1638455 () Bool)

(declare-fun c!871207 () Bool)

(assert (=> d!1638455 (= c!871207 ((_ is Node!15576) xs!286))))

(declare-fun e!3165909 () Bool)

(assert (=> d!1638455 (= (inv!77621 xs!286) e!3165909)))

(declare-fun b!5074250 () Bool)

(declare-fun inv!77625 (Conc!15576) Bool)

(assert (=> b!5074250 (= e!3165909 (inv!77625 xs!286))))

(declare-fun b!5074251 () Bool)

(declare-fun e!3165910 () Bool)

(assert (=> b!5074251 (= e!3165909 e!3165910)))

(declare-fun res!2160486 () Bool)

(assert (=> b!5074251 (= res!2160486 (not ((_ is Leaf!25869) xs!286)))))

(assert (=> b!5074251 (=> res!2160486 e!3165910)))

(declare-fun b!5074252 () Bool)

(declare-fun inv!77626 (Conc!15576) Bool)

(assert (=> b!5074252 (= e!3165910 (inv!77626 xs!286))))

(assert (= (and d!1638455 c!871207) b!5074250))

(assert (= (and d!1638455 (not c!871207)) b!5074251))

(assert (= (and b!5074251 (not res!2160486)) b!5074252))

(declare-fun m!6122090 () Bool)

(assert (=> b!5074250 m!6122090))

(declare-fun m!6122092 () Bool)

(assert (=> b!5074252 m!6122092))

(assert (=> start!535458 d!1638455))

(declare-fun d!1638457 () Bool)

(declare-fun c!871208 () Bool)

(assert (=> d!1638457 (= c!871208 ((_ is Node!15576) ys!41))))

(declare-fun e!3165911 () Bool)

(assert (=> d!1638457 (= (inv!77621 ys!41) e!3165911)))

(declare-fun b!5074253 () Bool)

(assert (=> b!5074253 (= e!3165911 (inv!77625 ys!41))))

(declare-fun b!5074254 () Bool)

(declare-fun e!3165912 () Bool)

(assert (=> b!5074254 (= e!3165911 e!3165912)))

(declare-fun res!2160487 () Bool)

(assert (=> b!5074254 (= res!2160487 (not ((_ is Leaf!25869) ys!41)))))

(assert (=> b!5074254 (=> res!2160487 e!3165912)))

(declare-fun b!5074255 () Bool)

(assert (=> b!5074255 (= e!3165912 (inv!77626 ys!41))))

(assert (= (and d!1638457 c!871208) b!5074253))

(assert (= (and d!1638457 (not c!871208)) b!5074254))

(assert (= (and b!5074254 (not res!2160487)) b!5074255))

(declare-fun m!6122094 () Bool)

(assert (=> b!5074253 m!6122094))

(declare-fun m!6122096 () Bool)

(assert (=> b!5074255 m!6122096))

(assert (=> start!535458 d!1638457))

(declare-fun d!1638459 () Bool)

(assert (=> d!1638459 (= (inv!77622 (xs!18936 xs!286)) (<= (size!39099 (innerList!15664 (xs!18936 xs!286))) 2147483647))))

(declare-fun bs!1190331 () Bool)

(assert (= bs!1190331 d!1638459))

(declare-fun m!6122098 () Bool)

(assert (=> bs!1190331 m!6122098))

(assert (=> b!5074137 d!1638459))

(declare-fun d!1638461 () Bool)

(assert (=> d!1638461 (= (height!2153 xs!286) (ite ((_ is Empty!15576) xs!286) 0 (ite ((_ is Leaf!25869) xs!286) 1 (cheight!15787 xs!286))))))

(assert (=> b!5074144 d!1638461))

(declare-fun d!1638463 () Bool)

(assert (=> d!1638463 (= (height!2153 ys!41) (ite ((_ is Empty!15576) ys!41) 0 (ite ((_ is Leaf!25869) ys!41) 1 (cheight!15787 ys!41))))))

(assert (=> b!5074144 d!1638463))

(declare-fun d!1638465 () Bool)

(declare-fun c!871209 () Bool)

(assert (=> d!1638465 (= c!871209 ((_ is Node!15576) (left!42834 xs!286)))))

(declare-fun e!3165913 () Bool)

(assert (=> d!1638465 (= (inv!77621 (left!42834 xs!286)) e!3165913)))

(declare-fun b!5074256 () Bool)

(assert (=> b!5074256 (= e!3165913 (inv!77625 (left!42834 xs!286)))))

(declare-fun b!5074257 () Bool)

(declare-fun e!3165914 () Bool)

(assert (=> b!5074257 (= e!3165913 e!3165914)))

(declare-fun res!2160488 () Bool)

(assert (=> b!5074257 (= res!2160488 (not ((_ is Leaf!25869) (left!42834 xs!286))))))

(assert (=> b!5074257 (=> res!2160488 e!3165914)))

(declare-fun b!5074258 () Bool)

(assert (=> b!5074258 (= e!3165914 (inv!77626 (left!42834 xs!286)))))

(assert (= (and d!1638465 c!871209) b!5074256))

(assert (= (and d!1638465 (not c!871209)) b!5074257))

(assert (= (and b!5074257 (not res!2160488)) b!5074258))

(declare-fun m!6122100 () Bool)

(assert (=> b!5074256 m!6122100))

(declare-fun m!6122102 () Bool)

(assert (=> b!5074258 m!6122102))

(assert (=> b!5074133 d!1638465))

(declare-fun d!1638467 () Bool)

(declare-fun c!871210 () Bool)

(assert (=> d!1638467 (= c!871210 ((_ is Node!15576) (right!43164 xs!286)))))

(declare-fun e!3165919 () Bool)

(assert (=> d!1638467 (= (inv!77621 (right!43164 xs!286)) e!3165919)))

(declare-fun b!5074261 () Bool)

(assert (=> b!5074261 (= e!3165919 (inv!77625 (right!43164 xs!286)))))

(declare-fun b!5074262 () Bool)

(declare-fun e!3165920 () Bool)

(assert (=> b!5074262 (= e!3165919 e!3165920)))

(declare-fun res!2160493 () Bool)

(assert (=> b!5074262 (= res!2160493 (not ((_ is Leaf!25869) (right!43164 xs!286))))))

(assert (=> b!5074262 (=> res!2160493 e!3165920)))

(declare-fun b!5074263 () Bool)

(assert (=> b!5074263 (= e!3165920 (inv!77626 (right!43164 xs!286)))))

(assert (= (and d!1638467 c!871210) b!5074261))

(assert (= (and d!1638467 (not c!871210)) b!5074262))

(assert (= (and b!5074262 (not res!2160493)) b!5074263))

(declare-fun m!6122104 () Bool)

(assert (=> b!5074261 m!6122104))

(declare-fun m!6122106 () Bool)

(assert (=> b!5074263 m!6122106))

(assert (=> b!5074133 d!1638467))

(declare-fun d!1638469 () Bool)

(assert (=> d!1638469 (= (height!2153 lt!2089940) (ite ((_ is Empty!15576) lt!2089940) 0 (ite ((_ is Leaf!25869) lt!2089940) 1 (cheight!15787 lt!2089940))))))

(assert (=> b!5074134 d!1638469))

(declare-fun d!1638471 () Bool)

(assert (=> d!1638471 (= (max!0 lt!2089943 lt!2089939) (ite (< lt!2089943 lt!2089939) lt!2089939 lt!2089943))))

(assert (=> b!5074134 d!1638471))

(declare-fun d!1638473 () Bool)

(assert (=> d!1638473 (= (inv!77622 (xs!18936 ys!41)) (<= (size!39099 (innerList!15664 (xs!18936 ys!41))) 2147483647))))

(declare-fun bs!1190332 () Bool)

(assert (= bs!1190332 d!1638473))

(declare-fun m!6122108 () Bool)

(assert (=> bs!1190332 m!6122108))

(assert (=> b!5074145 d!1638473))

(declare-fun b!5074280 () Bool)

(declare-fun res!2160508 () Bool)

(declare-fun e!3165936 () Bool)

(assert (=> b!5074280 (=> (not res!2160508) (not e!3165936))))

(assert (=> b!5074280 (= res!2160508 (isBalanced!4438 (left!42834 lt!2089940)))))

(declare-fun b!5074281 () Bool)

(declare-fun res!2160511 () Bool)

(assert (=> b!5074281 (=> (not res!2160511) (not e!3165936))))

(assert (=> b!5074281 (= res!2160511 (<= (- (height!2153 (left!42834 lt!2089940)) (height!2153 (right!43164 lt!2089940))) 1))))

(declare-fun d!1638475 () Bool)

(declare-fun res!2160510 () Bool)

(declare-fun e!3165935 () Bool)

(assert (=> d!1638475 (=> res!2160510 e!3165935)))

(assert (=> d!1638475 (= res!2160510 (not ((_ is Node!15576) lt!2089940)))))

(assert (=> d!1638475 (= (isBalanced!4438 lt!2089940) e!3165935)))

(declare-fun b!5074282 () Bool)

(assert (=> b!5074282 (= e!3165936 (not (isEmpty!31655 (right!43164 lt!2089940))))))

(declare-fun b!5074283 () Bool)

(declare-fun res!2160509 () Bool)

(assert (=> b!5074283 (=> (not res!2160509) (not e!3165936))))

(assert (=> b!5074283 (= res!2160509 (not (isEmpty!31655 (left!42834 lt!2089940))))))

(declare-fun b!5074284 () Bool)

(assert (=> b!5074284 (= e!3165935 e!3165936)))

(declare-fun res!2160512 () Bool)

(assert (=> b!5074284 (=> (not res!2160512) (not e!3165936))))

(assert (=> b!5074284 (= res!2160512 (<= (- 1) (- (height!2153 (left!42834 lt!2089940)) (height!2153 (right!43164 lt!2089940)))))))

(declare-fun b!5074285 () Bool)

(declare-fun res!2160513 () Bool)

(assert (=> b!5074285 (=> (not res!2160513) (not e!3165936))))

(assert (=> b!5074285 (= res!2160513 (isBalanced!4438 (right!43164 lt!2089940)))))

(assert (= (and d!1638475 (not res!2160510)) b!5074284))

(assert (= (and b!5074284 res!2160512) b!5074281))

(assert (= (and b!5074281 res!2160511) b!5074280))

(assert (= (and b!5074280 res!2160508) b!5074285))

(assert (= (and b!5074285 res!2160513) b!5074283))

(assert (= (and b!5074283 res!2160509) b!5074282))

(declare-fun m!6122110 () Bool)

(assert (=> b!5074283 m!6122110))

(declare-fun m!6122112 () Bool)

(assert (=> b!5074282 m!6122112))

(declare-fun m!6122114 () Bool)

(assert (=> b!5074285 m!6122114))

(declare-fun m!6122116 () Bool)

(assert (=> b!5074284 m!6122116))

(declare-fun m!6122118 () Bool)

(assert (=> b!5074284 m!6122118))

(assert (=> b!5074281 m!6122116))

(assert (=> b!5074281 m!6122118))

(declare-fun m!6122120 () Bool)

(assert (=> b!5074280 m!6122120))

(assert (=> b!5074141 d!1638475))

(declare-fun d!1638477 () Bool)

(assert (=> d!1638477 (= (height!2153 (right!43164 ys!41)) (ite ((_ is Empty!15576) (right!43164 ys!41)) 0 (ite ((_ is Leaf!25869) (right!43164 ys!41)) 1 (cheight!15787 (right!43164 ys!41)))))))

(assert (=> b!5074132 d!1638477))

(declare-fun d!1638479 () Bool)

(assert (=> d!1638479 (= (height!2153 (left!42834 ys!41)) (ite ((_ is Empty!15576) (left!42834 ys!41)) 0 (ite ((_ is Leaf!25869) (left!42834 ys!41)) 1 (cheight!15787 (left!42834 ys!41)))))))

(assert (=> b!5074132 d!1638479))

(declare-fun d!1638481 () Bool)

(declare-fun e!3165974 () Bool)

(assert (=> d!1638481 e!3165974))

(declare-fun res!2160545 () Bool)

(assert (=> d!1638481 (=> (not res!2160545) (not e!3165974))))

(declare-fun e!3165975 () Bool)

(assert (=> d!1638481 (= res!2160545 e!3165975)))

(declare-fun res!2160544 () Bool)

(assert (=> d!1638481 (=> res!2160544 e!3165975)))

(assert (=> d!1638481 (= res!2160544 (not ((_ is Node!15576) xs!286)))))

(assert (=> d!1638481 (= (appendAssocInst!916 xs!286 ys!41) true)))

(declare-fun b!5074325 () Bool)

(declare-fun e!3165978 () Bool)

(assert (=> b!5074325 (= e!3165975 e!3165978)))

(declare-fun res!2160547 () Bool)

(assert (=> b!5074325 (=> (not res!2160547) (not e!3165978))))

(declare-fun appendAssoc!308 (List!58570 List!58570 List!58570) Bool)

(assert (=> b!5074325 (= res!2160547 (appendAssoc!308 (list!19013 (left!42834 xs!286)) (list!19013 (right!43164 xs!286)) (list!19013 ys!41)))))

(declare-fun b!5074326 () Bool)

(declare-fun e!3165973 () Bool)

(declare-fun e!3165970 () Bool)

(assert (=> b!5074326 (= e!3165973 e!3165970)))

(declare-fun res!2160549 () Bool)

(assert (=> b!5074326 (=> res!2160549 e!3165970)))

(assert (=> b!5074326 (= res!2160549 (not ((_ is Node!15576) (left!42834 ys!41))))))

(declare-fun b!5074327 () Bool)

(declare-fun e!3165977 () Bool)

(assert (=> b!5074327 (= e!3165977 (appendAssoc!308 (list!19013 (left!42834 xs!286)) (list!19013 (left!42834 (right!43164 xs!286))) (++!12800 (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 ys!41))))))

(declare-fun b!5074328 () Bool)

(declare-fun e!3165971 () Bool)

(assert (=> b!5074328 (= e!3165974 e!3165971)))

(declare-fun res!2160548 () Bool)

(assert (=> b!5074328 (=> res!2160548 e!3165971)))

(assert (=> b!5074328 (= res!2160548 (not ((_ is Node!15576) ys!41)))))

(declare-fun b!5074329 () Bool)

(assert (=> b!5074329 (= e!3165971 e!3165973)))

(declare-fun res!2160542 () Bool)

(assert (=> b!5074329 (=> (not res!2160542) (not e!3165973))))

(assert (=> b!5074329 (= res!2160542 (appendAssoc!308 (list!19013 xs!286) (list!19013 (left!42834 ys!41)) (list!19013 (right!43164 ys!41))))))

(declare-fun b!5074330 () Bool)

(declare-fun e!3165976 () Bool)

(assert (=> b!5074330 (= e!3165978 e!3165976)))

(declare-fun res!2160543 () Bool)

(assert (=> b!5074330 (=> res!2160543 e!3165976)))

(assert (=> b!5074330 (= res!2160543 (not ((_ is Node!15576) (right!43164 xs!286))))))

(declare-fun b!5074331 () Bool)

(assert (=> b!5074331 (= e!3165976 e!3165977)))

(declare-fun res!2160541 () Bool)

(assert (=> b!5074331 (=> (not res!2160541) (not e!3165977))))

(assert (=> b!5074331 (= res!2160541 (appendAssoc!308 (list!19013 (left!42834 (right!43164 xs!286))) (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 ys!41)))))

(declare-fun b!5074332 () Bool)

(declare-fun e!3165972 () Bool)

(assert (=> b!5074332 (= e!3165972 (appendAssoc!308 (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 ys!41)))) (list!19013 (right!43164 (left!42834 ys!41))) (list!19013 (right!43164 ys!41))))))

(declare-fun b!5074333 () Bool)

(assert (=> b!5074333 (= e!3165970 e!3165972)))

(declare-fun res!2160546 () Bool)

(assert (=> b!5074333 (=> (not res!2160546) (not e!3165972))))

(assert (=> b!5074333 (= res!2160546 (appendAssoc!308 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 ys!41))) (list!19013 (right!43164 (left!42834 ys!41)))))))

(assert (= (and d!1638481 (not res!2160544)) b!5074325))

(assert (= (and b!5074325 res!2160547) b!5074330))

(assert (= (and b!5074330 (not res!2160543)) b!5074331))

(assert (= (and b!5074331 res!2160541) b!5074327))

(assert (= (and d!1638481 res!2160545) b!5074328))

(assert (= (and b!5074328 (not res!2160548)) b!5074329))

(assert (= (and b!5074329 res!2160542) b!5074326))

(assert (= (and b!5074326 (not res!2160549)) b!5074333))

(assert (= (and b!5074333 res!2160546) b!5074332))

(declare-fun m!6122168 () Bool)

(assert (=> b!5074331 m!6122168))

(declare-fun m!6122170 () Bool)

(assert (=> b!5074331 m!6122170))

(assert (=> b!5074331 m!6121980))

(assert (=> b!5074331 m!6122168))

(assert (=> b!5074331 m!6122170))

(assert (=> b!5074331 m!6121980))

(declare-fun m!6122172 () Bool)

(assert (=> b!5074331 m!6122172))

(assert (=> b!5074332 m!6121978))

(declare-fun m!6122174 () Bool)

(assert (=> b!5074332 m!6122174))

(declare-fun m!6122176 () Bool)

(assert (=> b!5074332 m!6122176))

(assert (=> b!5074332 m!6122038))

(declare-fun m!6122178 () Bool)

(assert (=> b!5074332 m!6122178))

(assert (=> b!5074332 m!6122176))

(declare-fun m!6122180 () Bool)

(assert (=> b!5074332 m!6122180))

(assert (=> b!5074332 m!6122038))

(assert (=> b!5074332 m!6121978))

(assert (=> b!5074332 m!6122180))

(assert (=> b!5074332 m!6122174))

(assert (=> b!5074329 m!6121978))

(assert (=> b!5074329 m!6122036))

(assert (=> b!5074329 m!6122038))

(assert (=> b!5074329 m!6121978))

(assert (=> b!5074329 m!6122036))

(assert (=> b!5074329 m!6122038))

(declare-fun m!6122182 () Bool)

(assert (=> b!5074329 m!6122182))

(assert (=> b!5074325 m!6122028))

(assert (=> b!5074325 m!6122030))

(assert (=> b!5074325 m!6121980))

(assert (=> b!5074325 m!6122028))

(assert (=> b!5074325 m!6122030))

(assert (=> b!5074325 m!6121980))

(declare-fun m!6122184 () Bool)

(assert (=> b!5074325 m!6122184))

(assert (=> b!5074327 m!6122170))

(assert (=> b!5074327 m!6122028))

(assert (=> b!5074327 m!6122168))

(declare-fun m!6122186 () Bool)

(assert (=> b!5074327 m!6122186))

(declare-fun m!6122188 () Bool)

(assert (=> b!5074327 m!6122188))

(assert (=> b!5074327 m!6122170))

(assert (=> b!5074327 m!6121980))

(assert (=> b!5074327 m!6122186))

(assert (=> b!5074327 m!6121980))

(assert (=> b!5074327 m!6122028))

(assert (=> b!5074327 m!6122168))

(assert (=> b!5074333 m!6121978))

(assert (=> b!5074333 m!6122180))

(assert (=> b!5074333 m!6122176))

(assert (=> b!5074333 m!6121978))

(assert (=> b!5074333 m!6122180))

(assert (=> b!5074333 m!6122176))

(declare-fun m!6122190 () Bool)

(assert (=> b!5074333 m!6122190))

(assert (=> b!5074143 d!1638481))

(declare-fun b!5074342 () Bool)

(declare-fun e!3165984 () Conc!15576)

(assert (=> b!5074342 (= e!3165984 (right!43164 ys!41))))

(declare-fun b!5074345 () Bool)

(declare-fun e!3165983 () Conc!15576)

(declare-fun size!39101 (Conc!15576) Int)

(assert (=> b!5074345 (= e!3165983 (Node!15576 (++!12801 xs!286 (left!42834 ys!41)) (right!43164 ys!41) (+ (size!39101 (++!12801 xs!286 (left!42834 ys!41))) (size!39101 (right!43164 ys!41))) (+ (max!0 (height!2153 (++!12801 xs!286 (left!42834 ys!41))) (height!2153 (right!43164 ys!41))) 1)))))

(declare-fun d!1638487 () Bool)

(declare-fun lt!2089952 () Conc!15576)

(assert (=> d!1638487 (= (list!19013 lt!2089952) (++!12800 (list!19013 (++!12801 xs!286 (left!42834 ys!41))) (list!19013 (right!43164 ys!41))))))

(assert (=> d!1638487 (= lt!2089952 e!3165984)))

(declare-fun c!871222 () Bool)

(assert (=> d!1638487 (= c!871222 (= (++!12801 xs!286 (left!42834 ys!41)) Empty!15576))))

(assert (=> d!1638487 (= (<>!398 (++!12801 xs!286 (left!42834 ys!41)) (right!43164 ys!41)) lt!2089952)))

(declare-fun b!5074343 () Bool)

(assert (=> b!5074343 (= e!3165984 e!3165983)))

(declare-fun c!871221 () Bool)

(assert (=> b!5074343 (= c!871221 (= (right!43164 ys!41) Empty!15576))))

(declare-fun b!5074344 () Bool)

(assert (=> b!5074344 (= e!3165983 (++!12801 xs!286 (left!42834 ys!41)))))

(assert (= (and d!1638487 c!871222) b!5074342))

(assert (= (and d!1638487 (not c!871222)) b!5074343))

(assert (= (and b!5074343 c!871221) b!5074344))

(assert (= (and b!5074343 (not c!871221)) b!5074345))

(declare-fun m!6122192 () Bool)

(assert (=> b!5074345 m!6122192))

(assert (=> b!5074345 m!6121956))

(declare-fun m!6122194 () Bool)

(assert (=> b!5074345 m!6122194))

(assert (=> b!5074345 m!6122194))

(assert (=> b!5074345 m!6121988))

(declare-fun m!6122196 () Bool)

(assert (=> b!5074345 m!6122196))

(assert (=> b!5074345 m!6121988))

(assert (=> b!5074345 m!6121956))

(declare-fun m!6122198 () Bool)

(assert (=> b!5074345 m!6122198))

(declare-fun m!6122200 () Bool)

(assert (=> d!1638487 m!6122200))

(assert (=> d!1638487 m!6121956))

(declare-fun m!6122202 () Bool)

(assert (=> d!1638487 m!6122202))

(assert (=> d!1638487 m!6122038))

(assert (=> d!1638487 m!6122202))

(assert (=> d!1638487 m!6122038))

(declare-fun m!6122204 () Bool)

(assert (=> d!1638487 m!6122204))

(assert (=> b!5074143 d!1638487))

(declare-fun lt!2089979 () Conc!15576)

(declare-fun c!871276 () Bool)

(declare-fun call!353497 () Int)

(declare-fun bm!353481 () Bool)

(declare-fun lt!2089976 () Conc!15576)

(assert (=> bm!353481 (= call!353497 (height!2153 (ite c!871276 lt!2089979 lt!2089976)))))

(declare-fun b!5074515 () Bool)

(declare-fun e!3166074 () Conc!15576)

(declare-fun call!353501 () Conc!15576)

(assert (=> b!5074515 (= e!3166074 call!353501)))

(declare-fun bm!353482 () Bool)

(declare-fun call!353486 () Conc!15576)

(declare-fun call!353496 () Conc!15576)

(assert (=> bm!353482 (= call!353486 call!353496)))

(declare-fun bm!353483 () Bool)

(declare-fun call!353493 () Conc!15576)

(declare-fun call!353488 () Conc!15576)

(assert (=> bm!353483 (= call!353493 call!353488)))

(declare-fun b!5074516 () Bool)

(declare-fun res!2160589 () Bool)

(declare-fun e!3166077 () Bool)

(assert (=> b!5074516 (=> (not res!2160589) (not e!3166077))))

(declare-fun lt!2089978 () Conc!15576)

(assert (=> b!5074516 (= res!2160589 (isBalanced!4438 lt!2089978))))

(declare-fun bm!353484 () Bool)

(declare-fun call!353490 () Int)

(assert (=> bm!353484 (= call!353490 (height!2153 (ite c!871276 (left!42834 xs!286) (right!43164 (left!42834 ys!41)))))))

(declare-fun b!5074517 () Bool)

(declare-fun e!3166072 () Conc!15576)

(assert (=> b!5074517 (= e!3166072 (left!42834 ys!41))))

(declare-fun b!5074518 () Bool)

(declare-fun e!3166078 () Conc!15576)

(assert (=> b!5074518 (= e!3166078 call!353486)))

(declare-fun bm!353485 () Bool)

(declare-fun call!353499 () Conc!15576)

(declare-fun call!353491 () Conc!15576)

(assert (=> bm!353485 (= call!353499 call!353491)))

(declare-fun b!5074519 () Bool)

(declare-fun e!3166076 () Conc!15576)

(assert (=> b!5074519 (= e!3166076 e!3166078)))

(declare-fun call!353494 () Conc!15576)

(assert (=> b!5074519 (= lt!2089976 call!353494)))

(declare-fun c!871280 () Bool)

(declare-fun call!353498 () Int)

(assert (=> b!5074519 (= c!871280 (= call!353497 (- call!353498 3)))))

(declare-fun b!5074520 () Bool)

(assert (=> b!5074520 (= e!3166077 (= (list!19013 lt!2089978) (++!12800 (list!19013 xs!286) (list!19013 (left!42834 ys!41)))))))

(declare-fun bm!353486 () Bool)

(declare-fun c!871281 () Bool)

(declare-fun c!871279 () Bool)

(declare-fun call!353495 () Conc!15576)

(assert (=> bm!353486 (= call!353495 (++!12801 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286) (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))

(declare-fun bm!353487 () Bool)

(assert (=> bm!353487 (= call!353498 (height!2153 (ite c!871276 (right!43164 xs!286) (left!42834 ys!41))))))

(declare-fun b!5074521 () Bool)

(declare-fun e!3166070 () Conc!15576)

(declare-fun e!3166071 () Conc!15576)

(assert (=> b!5074521 (= e!3166070 e!3166071)))

(declare-fun call!353487 () Conc!15576)

(assert (=> b!5074521 (= lt!2089979 call!353487)))

(declare-fun c!871278 () Bool)

(declare-fun call!353489 () Int)

(assert (=> b!5074521 (= c!871278 (= call!353497 (- call!353489 3)))))

(declare-fun b!5074522 () Bool)

(declare-fun e!3166073 () Bool)

(assert (=> b!5074522 (= e!3166073 (isBalanced!4438 (left!42834 ys!41)))))

(declare-fun b!5074523 () Bool)

(declare-fun e!3166069 () Conc!15576)

(assert (=> b!5074523 (= e!3166074 e!3166069)))

(declare-fun lt!2089977 () Int)

(assert (=> b!5074523 (= c!871276 (< lt!2089977 (- 1)))))

(declare-fun bm!353488 () Bool)

(assert (=> bm!353488 (= call!353494 call!353495)))

(declare-fun bm!353489 () Bool)

(assert (=> bm!353489 (= call!353491 (<>!398 (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41)))))) (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41)))))))))

(declare-fun bm!353490 () Bool)

(assert (=> bm!353490 (= call!353487 call!353495)))

(declare-fun b!5074524 () Bool)

(declare-fun c!871283 () Bool)

(assert (=> b!5074524 (= c!871283 (and (<= (- 1) lt!2089977) (<= lt!2089977 1)))))

(assert (=> b!5074524 (= lt!2089977 (- (height!2153 (left!42834 ys!41)) (height!2153 xs!286)))))

(declare-fun e!3166075 () Conc!15576)

(assert (=> b!5074524 (= e!3166075 e!3166074)))

(declare-fun b!5074525 () Bool)

(assert (=> b!5074525 (= e!3166070 call!353488)))

(declare-fun b!5074526 () Bool)

(declare-fun res!2160590 () Bool)

(assert (=> b!5074526 (=> (not res!2160590) (not e!3166077))))

(assert (=> b!5074526 (= res!2160590 (>= (height!2153 lt!2089978) (max!0 (height!2153 xs!286) (height!2153 (left!42834 ys!41)))))))

(declare-fun d!1638489 () Bool)

(assert (=> d!1638489 e!3166077))

(declare-fun res!2160588 () Bool)

(assert (=> d!1638489 (=> (not res!2160588) (not e!3166077))))

(assert (=> d!1638489 (= res!2160588 (appendAssocInst!916 xs!286 (left!42834 ys!41)))))

(assert (=> d!1638489 (= lt!2089978 e!3166072)))

(declare-fun c!871277 () Bool)

(assert (=> d!1638489 (= c!871277 (= xs!286 Empty!15576))))

(assert (=> d!1638489 e!3166073))

(declare-fun res!2160591 () Bool)

(assert (=> d!1638489 (=> (not res!2160591) (not e!3166073))))

(assert (=> d!1638489 (= res!2160591 (isBalanced!4438 xs!286))))

(assert (=> d!1638489 (= (++!12801 xs!286 (left!42834 ys!41)) lt!2089978)))

(declare-fun bm!353491 () Bool)

(assert (=> bm!353491 (= call!353488 call!353496)))

(declare-fun bm!353492 () Bool)

(assert (=> bm!353492 (= call!353496 call!353501)))

(declare-fun bm!353493 () Bool)

(declare-fun call!353492 () Conc!15576)

(assert (=> bm!353493 (= call!353492 call!353491)))

(declare-fun b!5074527 () Bool)

(assert (=> b!5074527 (= e!3166071 call!353493)))

(declare-fun b!5074528 () Bool)

(assert (=> b!5074528 (= e!3166071 call!353493)))

(declare-fun b!5074529 () Bool)

(assert (=> b!5074529 (= c!871279 (>= call!353490 call!353489))))

(assert (=> b!5074529 (= e!3166069 e!3166076)))

(declare-fun b!5074530 () Bool)

(assert (=> b!5074530 (= e!3166075 xs!286)))

(declare-fun b!5074531 () Bool)

(assert (=> b!5074531 (= e!3166076 call!353492)))

(declare-fun call!353500 () Conc!15576)

(declare-fun bm!353494 () Bool)

(assert (=> bm!353494 (= call!353501 (<>!398 (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976))) (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500)))))))

(declare-fun b!5074532 () Bool)

(assert (=> b!5074532 (= e!3166078 call!353486)))

(declare-fun bm!353495 () Bool)

(assert (=> bm!353495 (= call!353489 (height!2153 (ite c!871276 xs!286 (left!42834 (left!42834 ys!41)))))))

(declare-fun b!5074533 () Bool)

(declare-fun res!2160587 () Bool)

(assert (=> b!5074533 (=> (not res!2160587) (not e!3166077))))

(assert (=> b!5074533 (= res!2160587 (<= (height!2153 lt!2089978) (+ (max!0 (height!2153 xs!286) (height!2153 (left!42834 ys!41))) 1)))))

(declare-fun b!5074534 () Bool)

(assert (=> b!5074534 (= e!3166072 e!3166075)))

(declare-fun c!871282 () Bool)

(assert (=> b!5074534 (= c!871282 (= (left!42834 ys!41) Empty!15576))))

(declare-fun bm!353496 () Bool)

(assert (=> bm!353496 (= call!353500 call!353492)))

(declare-fun b!5074535 () Bool)

(assert (=> b!5074535 (= c!871281 (>= call!353490 call!353498))))

(assert (=> b!5074535 (= e!3166069 e!3166070)))

(assert (= (and d!1638489 res!2160591) b!5074522))

(assert (= (and d!1638489 c!871277) b!5074517))

(assert (= (and d!1638489 (not c!871277)) b!5074534))

(assert (= (and b!5074534 c!871282) b!5074530))

(assert (= (and b!5074534 (not c!871282)) b!5074524))

(assert (= (and b!5074524 c!871283) b!5074515))

(assert (= (and b!5074524 (not c!871283)) b!5074523))

(assert (= (and b!5074523 c!871276) b!5074535))

(assert (= (and b!5074523 (not c!871276)) b!5074529))

(assert (= (and b!5074535 c!871281) b!5074525))

(assert (= (and b!5074535 (not c!871281)) b!5074521))

(assert (= (and b!5074521 c!871278) b!5074528))

(assert (= (and b!5074521 (not c!871278)) b!5074527))

(assert (= (or b!5074528 b!5074527) bm!353485))

(assert (= (or b!5074528 b!5074527) bm!353483))

(assert (= (or b!5074525 b!5074521) bm!353490))

(assert (= (or b!5074525 bm!353483) bm!353491))

(assert (= (and b!5074529 c!871279) b!5074531))

(assert (= (and b!5074529 (not c!871279)) b!5074519))

(assert (= (and b!5074519 c!871280) b!5074518))

(assert (= (and b!5074519 (not c!871280)) b!5074532))

(assert (= (or b!5074518 b!5074532) bm!353496))

(assert (= (or b!5074518 b!5074532) bm!353482))

(assert (= (or b!5074531 b!5074519) bm!353488))

(assert (= (or b!5074531 bm!353496) bm!353493))

(assert (= (or b!5074521 b!5074529) bm!353495))

(assert (= (or b!5074535 b!5074519) bm!353487))

(assert (= (or bm!353491 bm!353482) bm!353492))

(assert (= (or bm!353490 bm!353488) bm!353486))

(assert (= (or bm!353485 bm!353493) bm!353489))

(assert (= (or b!5074535 b!5074529) bm!353484))

(assert (= (or b!5074521 b!5074519) bm!353481))

(assert (= (or b!5074515 bm!353492) bm!353494))

(assert (= (and d!1638489 res!2160588) b!5074516))

(assert (= (and b!5074516 res!2160589) b!5074533))

(assert (= (and b!5074533 res!2160587) b!5074526))

(assert (= (and b!5074526 res!2160590) b!5074520))

(declare-fun m!6122300 () Bool)

(assert (=> bm!353489 m!6122300))

(declare-fun m!6122302 () Bool)

(assert (=> bm!353494 m!6122302))

(declare-fun m!6122304 () Bool)

(assert (=> bm!353495 m!6122304))

(declare-fun m!6122306 () Bool)

(assert (=> bm!353486 m!6122306))

(declare-fun m!6122308 () Bool)

(assert (=> b!5074533 m!6122308))

(assert (=> b!5074533 m!6121962))

(assert (=> b!5074533 m!6121990))

(assert (=> b!5074533 m!6121962))

(assert (=> b!5074533 m!6121990))

(declare-fun m!6122310 () Bool)

(assert (=> b!5074533 m!6122310))

(assert (=> b!5074524 m!6121990))

(assert (=> b!5074524 m!6121962))

(declare-fun m!6122312 () Bool)

(assert (=> bm!353481 m!6122312))

(assert (=> b!5074526 m!6122308))

(assert (=> b!5074526 m!6121962))

(assert (=> b!5074526 m!6121990))

(assert (=> b!5074526 m!6121962))

(assert (=> b!5074526 m!6121990))

(assert (=> b!5074526 m!6122310))

(declare-fun m!6122314 () Bool)

(assert (=> b!5074516 m!6122314))

(declare-fun m!6122316 () Bool)

(assert (=> bm!353484 m!6122316))

(declare-fun m!6122318 () Bool)

(assert (=> b!5074522 m!6122318))

(declare-fun m!6122320 () Bool)

(assert (=> d!1638489 m!6122320))

(assert (=> d!1638489 m!6121966))

(declare-fun m!6122322 () Bool)

(assert (=> b!5074520 m!6122322))

(assert (=> b!5074520 m!6121978))

(assert (=> b!5074520 m!6122036))

(assert (=> b!5074520 m!6121978))

(assert (=> b!5074520 m!6122036))

(declare-fun m!6122324 () Bool)

(assert (=> b!5074520 m!6122324))

(declare-fun m!6122326 () Bool)

(assert (=> bm!353487 m!6122326))

(assert (=> b!5074143 d!1638489))

(declare-fun d!1638507 () Bool)

(declare-fun c!871284 () Bool)

(assert (=> d!1638507 (= c!871284 ((_ is Node!15576) (left!42834 ys!41)))))

(declare-fun e!3166079 () Bool)

(assert (=> d!1638507 (= (inv!77621 (left!42834 ys!41)) e!3166079)))

(declare-fun b!5074536 () Bool)

(assert (=> b!5074536 (= e!3166079 (inv!77625 (left!42834 ys!41)))))

(declare-fun b!5074537 () Bool)

(declare-fun e!3166080 () Bool)

(assert (=> b!5074537 (= e!3166079 e!3166080)))

(declare-fun res!2160592 () Bool)

(assert (=> b!5074537 (= res!2160592 (not ((_ is Leaf!25869) (left!42834 ys!41))))))

(assert (=> b!5074537 (=> res!2160592 e!3166080)))

(declare-fun b!5074538 () Bool)

(assert (=> b!5074538 (= e!3166080 (inv!77626 (left!42834 ys!41)))))

(assert (= (and d!1638507 c!871284) b!5074536))

(assert (= (and d!1638507 (not c!871284)) b!5074537))

(assert (= (and b!5074537 (not res!2160592)) b!5074538))

(declare-fun m!6122328 () Bool)

(assert (=> b!5074536 m!6122328))

(declare-fun m!6122330 () Bool)

(assert (=> b!5074538 m!6122330))

(assert (=> b!5074138 d!1638507))

(declare-fun d!1638509 () Bool)

(declare-fun c!871285 () Bool)

(assert (=> d!1638509 (= c!871285 ((_ is Node!15576) (right!43164 ys!41)))))

(declare-fun e!3166081 () Bool)

(assert (=> d!1638509 (= (inv!77621 (right!43164 ys!41)) e!3166081)))

(declare-fun b!5074539 () Bool)

(assert (=> b!5074539 (= e!3166081 (inv!77625 (right!43164 ys!41)))))

(declare-fun b!5074540 () Bool)

(declare-fun e!3166082 () Bool)

(assert (=> b!5074540 (= e!3166081 e!3166082)))

(declare-fun res!2160593 () Bool)

(assert (=> b!5074540 (= res!2160593 (not ((_ is Leaf!25869) (right!43164 ys!41))))))

(assert (=> b!5074540 (=> res!2160593 e!3166082)))

(declare-fun b!5074541 () Bool)

(assert (=> b!5074541 (= e!3166082 (inv!77626 (right!43164 ys!41)))))

(assert (= (and d!1638509 c!871285) b!5074539))

(assert (= (and d!1638509 (not c!871285)) b!5074540))

(assert (= (and b!5074540 (not res!2160593)) b!5074541))

(declare-fun m!6122332 () Bool)

(assert (=> b!5074539 m!6122332))

(declare-fun m!6122334 () Bool)

(assert (=> b!5074541 m!6122334))

(assert (=> b!5074138 d!1638509))

(declare-fun b!5074542 () Bool)

(declare-fun res!2160594 () Bool)

(declare-fun e!3166084 () Bool)

(assert (=> b!5074542 (=> (not res!2160594) (not e!3166084))))

(assert (=> b!5074542 (= res!2160594 (isBalanced!4438 (left!42834 ys!41)))))

(declare-fun b!5074543 () Bool)

(declare-fun res!2160597 () Bool)

(assert (=> b!5074543 (=> (not res!2160597) (not e!3166084))))

(assert (=> b!5074543 (= res!2160597 (<= (- (height!2153 (left!42834 ys!41)) (height!2153 (right!43164 ys!41))) 1))))

(declare-fun d!1638511 () Bool)

(declare-fun res!2160596 () Bool)

(declare-fun e!3166083 () Bool)

(assert (=> d!1638511 (=> res!2160596 e!3166083)))

(assert (=> d!1638511 (= res!2160596 (not ((_ is Node!15576) ys!41)))))

(assert (=> d!1638511 (= (isBalanced!4438 ys!41) e!3166083)))

(declare-fun b!5074544 () Bool)

(assert (=> b!5074544 (= e!3166084 (not (isEmpty!31655 (right!43164 ys!41))))))

(declare-fun b!5074545 () Bool)

(declare-fun res!2160595 () Bool)

(assert (=> b!5074545 (=> (not res!2160595) (not e!3166084))))

(assert (=> b!5074545 (= res!2160595 (not (isEmpty!31655 (left!42834 ys!41))))))

(declare-fun b!5074546 () Bool)

(assert (=> b!5074546 (= e!3166083 e!3166084)))

(declare-fun res!2160598 () Bool)

(assert (=> b!5074546 (=> (not res!2160598) (not e!3166084))))

(assert (=> b!5074546 (= res!2160598 (<= (- 1) (- (height!2153 (left!42834 ys!41)) (height!2153 (right!43164 ys!41)))))))

(declare-fun b!5074547 () Bool)

(declare-fun res!2160599 () Bool)

(assert (=> b!5074547 (=> (not res!2160599) (not e!3166084))))

(assert (=> b!5074547 (= res!2160599 (isBalanced!4438 (right!43164 ys!41)))))

(assert (= (and d!1638511 (not res!2160596)) b!5074546))

(assert (= (and b!5074546 res!2160598) b!5074543))

(assert (= (and b!5074543 res!2160597) b!5074542))

(assert (= (and b!5074542 res!2160594) b!5074547))

(assert (= (and b!5074547 res!2160599) b!5074545))

(assert (= (and b!5074545 res!2160595) b!5074544))

(declare-fun m!6122336 () Bool)

(assert (=> b!5074545 m!6122336))

(declare-fun m!6122338 () Bool)

(assert (=> b!5074544 m!6122338))

(declare-fun m!6122340 () Bool)

(assert (=> b!5074547 m!6122340))

(assert (=> b!5074546 m!6121990))

(assert (=> b!5074546 m!6121988))

(assert (=> b!5074543 m!6121990))

(assert (=> b!5074543 m!6121988))

(assert (=> b!5074542 m!6122318))

(assert (=> b!5074140 d!1638511))

(declare-fun b!5074552 () Bool)

(declare-fun e!3166087 () Bool)

(declare-fun tp_is_empty!37075 () Bool)

(declare-fun tp!1416276 () Bool)

(assert (=> b!5074552 (= e!3166087 (and tp_is_empty!37075 tp!1416276))))

(assert (=> b!5074142 (= tp!1416246 e!3166087)))

(assert (= (and b!5074142 ((_ is Cons!58446) (innerList!15664 (xs!18936 xs!286)))) b!5074552))

(declare-fun b!5074553 () Bool)

(declare-fun e!3166088 () Bool)

(declare-fun tp!1416277 () Bool)

(assert (=> b!5074553 (= e!3166088 (and tp_is_empty!37075 tp!1416277))))

(assert (=> b!5074139 (= tp!1416247 e!3166088)))

(assert (= (and b!5074139 ((_ is Cons!58446) (innerList!15664 (xs!18936 ys!41)))) b!5074553))

(declare-fun b!5074562 () Bool)

(declare-fun tp!1416284 () Bool)

(declare-fun tp!1416285 () Bool)

(declare-fun e!3166093 () Bool)

(assert (=> b!5074562 (= e!3166093 (and (inv!77621 (left!42834 (left!42834 ys!41))) tp!1416284 (inv!77621 (right!43164 (left!42834 ys!41))) tp!1416285))))

(declare-fun b!5074564 () Bool)

(declare-fun e!3166094 () Bool)

(declare-fun tp!1416286 () Bool)

(assert (=> b!5074564 (= e!3166094 tp!1416286)))

(declare-fun b!5074563 () Bool)

(assert (=> b!5074563 (= e!3166093 (and (inv!77622 (xs!18936 (left!42834 ys!41))) e!3166094))))

(assert (=> b!5074138 (= tp!1416248 (and (inv!77621 (left!42834 ys!41)) e!3166093))))

(assert (= (and b!5074138 ((_ is Node!15576) (left!42834 ys!41))) b!5074562))

(assert (= b!5074563 b!5074564))

(assert (= (and b!5074138 ((_ is Leaf!25869) (left!42834 ys!41))) b!5074563))

(declare-fun m!6122342 () Bool)

(assert (=> b!5074562 m!6122342))

(declare-fun m!6122344 () Bool)

(assert (=> b!5074562 m!6122344))

(declare-fun m!6122346 () Bool)

(assert (=> b!5074563 m!6122346))

(assert (=> b!5074138 m!6121972))

(declare-fun tp!1416287 () Bool)

(declare-fun e!3166095 () Bool)

(declare-fun tp!1416288 () Bool)

(declare-fun b!5074565 () Bool)

(assert (=> b!5074565 (= e!3166095 (and (inv!77621 (left!42834 (right!43164 ys!41))) tp!1416287 (inv!77621 (right!43164 (right!43164 ys!41))) tp!1416288))))

(declare-fun b!5074567 () Bool)

(declare-fun e!3166096 () Bool)

(declare-fun tp!1416289 () Bool)

(assert (=> b!5074567 (= e!3166096 tp!1416289)))

(declare-fun b!5074566 () Bool)

(assert (=> b!5074566 (= e!3166095 (and (inv!77622 (xs!18936 (right!43164 ys!41))) e!3166096))))

(assert (=> b!5074138 (= tp!1416251 (and (inv!77621 (right!43164 ys!41)) e!3166095))))

(assert (= (and b!5074138 ((_ is Node!15576) (right!43164 ys!41))) b!5074565))

(assert (= b!5074566 b!5074567))

(assert (= (and b!5074138 ((_ is Leaf!25869) (right!43164 ys!41))) b!5074566))

(declare-fun m!6122348 () Bool)

(assert (=> b!5074565 m!6122348))

(declare-fun m!6122350 () Bool)

(assert (=> b!5074565 m!6122350))

(declare-fun m!6122352 () Bool)

(assert (=> b!5074566 m!6122352))

(assert (=> b!5074138 m!6121974))

(declare-fun tp!1416290 () Bool)

(declare-fun tp!1416291 () Bool)

(declare-fun e!3166097 () Bool)

(declare-fun b!5074568 () Bool)

(assert (=> b!5074568 (= e!3166097 (and (inv!77621 (left!42834 (left!42834 xs!286))) tp!1416290 (inv!77621 (right!43164 (left!42834 xs!286))) tp!1416291))))

(declare-fun b!5074570 () Bool)

(declare-fun e!3166098 () Bool)

(declare-fun tp!1416292 () Bool)

(assert (=> b!5074570 (= e!3166098 tp!1416292)))

(declare-fun b!5074569 () Bool)

(assert (=> b!5074569 (= e!3166097 (and (inv!77622 (xs!18936 (left!42834 xs!286))) e!3166098))))

(assert (=> b!5074133 (= tp!1416250 (and (inv!77621 (left!42834 xs!286)) e!3166097))))

(assert (= (and b!5074133 ((_ is Node!15576) (left!42834 xs!286))) b!5074568))

(assert (= b!5074569 b!5074570))

(assert (= (and b!5074133 ((_ is Leaf!25869) (left!42834 xs!286))) b!5074569))

(declare-fun m!6122354 () Bool)

(assert (=> b!5074568 m!6122354))

(declare-fun m!6122356 () Bool)

(assert (=> b!5074568 m!6122356))

(declare-fun m!6122358 () Bool)

(assert (=> b!5074569 m!6122358))

(assert (=> b!5074133 m!6121946))

(declare-fun e!3166099 () Bool)

(declare-fun tp!1416293 () Bool)

(declare-fun b!5074571 () Bool)

(declare-fun tp!1416294 () Bool)

(assert (=> b!5074571 (= e!3166099 (and (inv!77621 (left!42834 (right!43164 xs!286))) tp!1416293 (inv!77621 (right!43164 (right!43164 xs!286))) tp!1416294))))

(declare-fun b!5074573 () Bool)

(declare-fun e!3166100 () Bool)

(declare-fun tp!1416295 () Bool)

(assert (=> b!5074573 (= e!3166100 tp!1416295)))

(declare-fun b!5074572 () Bool)

(assert (=> b!5074572 (= e!3166099 (and (inv!77622 (xs!18936 (right!43164 xs!286))) e!3166100))))

(assert (=> b!5074133 (= tp!1416249 (and (inv!77621 (right!43164 xs!286)) e!3166099))))

(assert (= (and b!5074133 ((_ is Node!15576) (right!43164 xs!286))) b!5074571))

(assert (= b!5074572 b!5074573))

(assert (= (and b!5074133 ((_ is Leaf!25869) (right!43164 xs!286))) b!5074572))

(declare-fun m!6122360 () Bool)

(assert (=> b!5074571 m!6122360))

(declare-fun m!6122362 () Bool)

(assert (=> b!5074571 m!6122362))

(declare-fun m!6122364 () Bool)

(assert (=> b!5074572 m!6122364))

(assert (=> b!5074133 m!6121948))

(check-sat (not bm!353486) (not b!5074242) (not b!5074255) (not b!5074571) (not b!5074133) (not b!5074179) (not b!5074263) (not b!5074546) (not bm!353495) (not b!5074538) (not d!1638473) (not b!5074282) (not b!5074184) (not b!5074552) (not b!5074568) (not b!5074541) (not d!1638487) (not b!5074250) (not b!5074189) (not b!5074188) (not b!5074563) (not b!5074562) (not b!5074524) (not b!5074553) (not b!5074542) tp_is_empty!37075 (not b!5074261) (not b!5074241) (not b!5074285) (not b!5074569) (not b!5074573) (not d!1638459) (not b!5074283) (not b!5074243) (not b!5074520) (not b!5074253) (not b!5074565) (not b!5074543) (not bm!353481) (not b!5074256) (not bm!353484) (not b!5074544) (not b!5074564) (not d!1638425) (not b!5074239) (not b!5074533) (not b!5074572) (not b!5074536) (not b!5074252) (not b!5074284) (not bm!353487) (not bm!353494) (not b!5074240) (not b!5074185) (not b!5074345) (not b!5074516) (not b!5074281) (not b!5074332) (not b!5074566) (not b!5074526) (not b!5074539) (not b!5074258) (not b!5074327) (not b!5074156) (not b!5074238) (not d!1638489) (not b!5074570) (not bm!353489) (not b!5074567) (not b!5074545) (not b!5074180) (not b!5074522) (not b!5074325) (not b!5074280) (not b!5074547) (not b!5074157) (not b!5074329) (not b!5074333) (not b!5074138) (not b!5074331))
(check-sat)
(get-model)

(declare-fun d!1638513 () Bool)

(declare-fun res!2160606 () Bool)

(declare-fun e!3166103 () Bool)

(assert (=> d!1638513 (=> (not res!2160606) (not e!3166103))))

(assert (=> d!1638513 (= res!2160606 (= (csize!31382 (left!42834 xs!286)) (+ (size!39101 (left!42834 (left!42834 xs!286))) (size!39101 (right!43164 (left!42834 xs!286))))))))

(assert (=> d!1638513 (= (inv!77625 (left!42834 xs!286)) e!3166103)))

(declare-fun b!5074580 () Bool)

(declare-fun res!2160607 () Bool)

(assert (=> b!5074580 (=> (not res!2160607) (not e!3166103))))

(assert (=> b!5074580 (= res!2160607 (and (not (= (left!42834 (left!42834 xs!286)) Empty!15576)) (not (= (right!43164 (left!42834 xs!286)) Empty!15576))))))

(declare-fun b!5074581 () Bool)

(declare-fun res!2160608 () Bool)

(assert (=> b!5074581 (=> (not res!2160608) (not e!3166103))))

(assert (=> b!5074581 (= res!2160608 (= (cheight!15787 (left!42834 xs!286)) (+ (max!0 (height!2153 (left!42834 (left!42834 xs!286))) (height!2153 (right!43164 (left!42834 xs!286)))) 1)))))

(declare-fun b!5074582 () Bool)

(assert (=> b!5074582 (= e!3166103 (<= 0 (cheight!15787 (left!42834 xs!286))))))

(assert (= (and d!1638513 res!2160606) b!5074580))

(assert (= (and b!5074580 res!2160607) b!5074581))

(assert (= (and b!5074581 res!2160608) b!5074582))

(declare-fun m!6122366 () Bool)

(assert (=> d!1638513 m!6122366))

(declare-fun m!6122368 () Bool)

(assert (=> d!1638513 m!6122368))

(declare-fun m!6122370 () Bool)

(assert (=> b!5074581 m!6122370))

(declare-fun m!6122372 () Bool)

(assert (=> b!5074581 m!6122372))

(assert (=> b!5074581 m!6122370))

(assert (=> b!5074581 m!6122372))

(declare-fun m!6122374 () Bool)

(assert (=> b!5074581 m!6122374))

(assert (=> b!5074256 d!1638513))

(declare-fun d!1638519 () Bool)

(assert (=> d!1638519 (= (inv!77622 (xs!18936 (right!43164 ys!41))) (<= (size!39099 (innerList!15664 (xs!18936 (right!43164 ys!41)))) 2147483647))))

(declare-fun bs!1190334 () Bool)

(assert (= bs!1190334 d!1638519))

(declare-fun m!6122376 () Bool)

(assert (=> bs!1190334 m!6122376))

(assert (=> b!5074566 d!1638519))

(declare-fun d!1638521 () Bool)

(assert (=> d!1638521 (= (height!2153 (ite c!871276 (left!42834 xs!286) (right!43164 (left!42834 ys!41)))) (ite ((_ is Empty!15576) (ite c!871276 (left!42834 xs!286) (right!43164 (left!42834 ys!41)))) 0 (ite ((_ is Leaf!25869) (ite c!871276 (left!42834 xs!286) (right!43164 (left!42834 ys!41)))) 1 (cheight!15787 (ite c!871276 (left!42834 xs!286) (right!43164 (left!42834 ys!41)))))))))

(assert (=> bm!353484 d!1638521))

(declare-fun d!1638523 () Bool)

(declare-fun res!2160619 () Bool)

(declare-fun e!3166108 () Bool)

(assert (=> d!1638523 (=> (not res!2160619) (not e!3166108))))

(assert (=> d!1638523 (= res!2160619 (<= (size!39099 (list!19014 (xs!18936 (left!42834 xs!286)))) 512))))

(assert (=> d!1638523 (= (inv!77626 (left!42834 xs!286)) e!3166108)))

(declare-fun b!5074593 () Bool)

(declare-fun res!2160620 () Bool)

(assert (=> b!5074593 (=> (not res!2160620) (not e!3166108))))

(assert (=> b!5074593 (= res!2160620 (= (csize!31383 (left!42834 xs!286)) (size!39099 (list!19014 (xs!18936 (left!42834 xs!286))))))))

(declare-fun b!5074594 () Bool)

(assert (=> b!5074594 (= e!3166108 (and (> (csize!31383 (left!42834 xs!286)) 0) (<= (csize!31383 (left!42834 xs!286)) 512)))))

(assert (= (and d!1638523 res!2160619) b!5074593))

(assert (= (and b!5074593 res!2160620) b!5074594))

(declare-fun m!6122378 () Bool)

(assert (=> d!1638523 m!6122378))

(assert (=> d!1638523 m!6122378))

(declare-fun m!6122380 () Bool)

(assert (=> d!1638523 m!6122380))

(assert (=> b!5074593 m!6122378))

(assert (=> b!5074593 m!6122378))

(assert (=> b!5074593 m!6122380))

(assert (=> b!5074258 d!1638523))

(declare-fun d!1638525 () Bool)

(assert (=> d!1638525 (= (height!2153 (left!42834 xs!286)) (ite ((_ is Empty!15576) (left!42834 xs!286)) 0 (ite ((_ is Leaf!25869) (left!42834 xs!286)) 1 (cheight!15787 (left!42834 xs!286)))))))

(assert (=> b!5074242 d!1638525))

(declare-fun d!1638527 () Bool)

(assert (=> d!1638527 (= (height!2153 (right!43164 xs!286)) (ite ((_ is Empty!15576) (right!43164 xs!286)) 0 (ite ((_ is Leaf!25869) (right!43164 xs!286)) 1 (cheight!15787 (right!43164 xs!286)))))))

(assert (=> b!5074242 d!1638527))

(declare-fun bm!353505 () Bool)

(declare-fun call!353515 () List!58570)

(declare-fun call!353514 () List!58570)

(assert (=> bm!353505 (= call!353515 (++!12800 call!353514 (list!19013 (right!43164 (left!42834 ys!41)))))))

(declare-fun bm!353506 () Bool)

(assert (=> bm!353506 (= call!353514 (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 ys!41)))))))

(declare-fun d!1638529 () Bool)

(declare-fun e!3166122 () Bool)

(assert (=> d!1638529 e!3166122))

(declare-fun c!871296 () Bool)

(assert (=> d!1638529 (= c!871296 ((_ is Nil!58446) (list!19013 xs!286)))))

(assert (=> d!1638529 (= (appendAssoc!308 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 ys!41))) (list!19013 (right!43164 (left!42834 ys!41)))) true)))

(declare-fun bm!353507 () Bool)

(declare-fun call!353513 () List!58570)

(declare-fun call!353512 () List!58570)

(assert (=> bm!353507 (= call!353513 (++!12800 (list!19013 xs!286) call!353512))))

(declare-fun b!5074620 () Bool)

(assert (=> b!5074620 (= e!3166122 (= call!353515 call!353513))))

(declare-fun lt!2089984 () Bool)

(assert (=> b!5074620 (= lt!2089984 (appendAssoc!308 (t!371357 (list!19013 xs!286)) (list!19013 (left!42834 (left!42834 ys!41))) (list!19013 (right!43164 (left!42834 ys!41)))))))

(declare-fun b!5074621 () Bool)

(assert (=> b!5074621 (= e!3166122 (= call!353515 call!353513))))

(declare-fun bm!353508 () Bool)

(assert (=> bm!353508 (= call!353512 (++!12800 (list!19013 (left!42834 (left!42834 ys!41))) (list!19013 (right!43164 (left!42834 ys!41)))))))

(assert (= (and d!1638529 c!871296) b!5074621))

(assert (= (and d!1638529 (not c!871296)) b!5074620))

(assert (= (or b!5074621 b!5074620) bm!353506))

(assert (= (or b!5074621 b!5074620) bm!353508))

(assert (= (or b!5074621 b!5074620) bm!353507))

(assert (= (or b!5074621 b!5074620) bm!353505))

(assert (=> b!5074620 m!6122180))

(assert (=> b!5074620 m!6122176))

(declare-fun m!6122410 () Bool)

(assert (=> b!5074620 m!6122410))

(assert (=> bm!353506 m!6121978))

(assert (=> bm!353506 m!6122180))

(assert (=> bm!353506 m!6122174))

(assert (=> bm!353505 m!6122176))

(declare-fun m!6122412 () Bool)

(assert (=> bm!353505 m!6122412))

(assert (=> bm!353508 m!6122180))

(assert (=> bm!353508 m!6122176))

(declare-fun m!6122414 () Bool)

(assert (=> bm!353508 m!6122414))

(assert (=> bm!353507 m!6121978))

(declare-fun m!6122416 () Bool)

(assert (=> bm!353507 m!6122416))

(assert (=> b!5074333 d!1638529))

(assert (=> b!5074333 d!1638437))

(declare-fun b!5074624 () Bool)

(declare-fun e!3166124 () List!58570)

(assert (=> b!5074624 (= e!3166124 (list!19014 (xs!18936 (left!42834 (left!42834 ys!41)))))))

(declare-fun b!5074625 () Bool)

(assert (=> b!5074625 (= e!3166124 (++!12800 (list!19013 (left!42834 (left!42834 (left!42834 ys!41)))) (list!19013 (right!43164 (left!42834 (left!42834 ys!41))))))))

(declare-fun b!5074622 () Bool)

(declare-fun e!3166123 () List!58570)

(assert (=> b!5074622 (= e!3166123 Nil!58446)))

(declare-fun d!1638541 () Bool)

(declare-fun c!871297 () Bool)

(assert (=> d!1638541 (= c!871297 ((_ is Empty!15576) (left!42834 (left!42834 ys!41))))))

(assert (=> d!1638541 (= (list!19013 (left!42834 (left!42834 ys!41))) e!3166123)))

(declare-fun b!5074623 () Bool)

(assert (=> b!5074623 (= e!3166123 e!3166124)))

(declare-fun c!871298 () Bool)

(assert (=> b!5074623 (= c!871298 ((_ is Leaf!25869) (left!42834 (left!42834 ys!41))))))

(assert (= (and d!1638541 c!871297) b!5074622))

(assert (= (and d!1638541 (not c!871297)) b!5074623))

(assert (= (and b!5074623 c!871298) b!5074624))

(assert (= (and b!5074623 (not c!871298)) b!5074625))

(declare-fun m!6122418 () Bool)

(assert (=> b!5074624 m!6122418))

(declare-fun m!6122420 () Bool)

(assert (=> b!5074625 m!6122420))

(declare-fun m!6122422 () Bool)

(assert (=> b!5074625 m!6122422))

(assert (=> b!5074625 m!6122420))

(assert (=> b!5074625 m!6122422))

(declare-fun m!6122424 () Bool)

(assert (=> b!5074625 m!6122424))

(assert (=> b!5074333 d!1638541))

(declare-fun b!5074628 () Bool)

(declare-fun e!3166126 () List!58570)

(assert (=> b!5074628 (= e!3166126 (list!19014 (xs!18936 (right!43164 (left!42834 ys!41)))))))

(declare-fun b!5074629 () Bool)

(assert (=> b!5074629 (= e!3166126 (++!12800 (list!19013 (left!42834 (right!43164 (left!42834 ys!41)))) (list!19013 (right!43164 (right!43164 (left!42834 ys!41))))))))

(declare-fun b!5074626 () Bool)

(declare-fun e!3166125 () List!58570)

(assert (=> b!5074626 (= e!3166125 Nil!58446)))

(declare-fun d!1638543 () Bool)

(declare-fun c!871299 () Bool)

(assert (=> d!1638543 (= c!871299 ((_ is Empty!15576) (right!43164 (left!42834 ys!41))))))

(assert (=> d!1638543 (= (list!19013 (right!43164 (left!42834 ys!41))) e!3166125)))

(declare-fun b!5074627 () Bool)

(assert (=> b!5074627 (= e!3166125 e!3166126)))

(declare-fun c!871300 () Bool)

(assert (=> b!5074627 (= c!871300 ((_ is Leaf!25869) (right!43164 (left!42834 ys!41))))))

(assert (= (and d!1638543 c!871299) b!5074626))

(assert (= (and d!1638543 (not c!871299)) b!5074627))

(assert (= (and b!5074627 c!871300) b!5074628))

(assert (= (and b!5074627 (not c!871300)) b!5074629))

(declare-fun m!6122426 () Bool)

(assert (=> b!5074628 m!6122426))

(declare-fun m!6122428 () Bool)

(assert (=> b!5074629 m!6122428))

(declare-fun m!6122430 () Bool)

(assert (=> b!5074629 m!6122430))

(assert (=> b!5074629 m!6122428))

(assert (=> b!5074629 m!6122430))

(declare-fun m!6122432 () Bool)

(assert (=> b!5074629 m!6122432))

(assert (=> b!5074333 d!1638543))

(declare-fun d!1638545 () Bool)

(assert (=> d!1638545 (= (height!2153 (left!42834 lt!2089940)) (ite ((_ is Empty!15576) (left!42834 lt!2089940)) 0 (ite ((_ is Leaf!25869) (left!42834 lt!2089940)) 1 (cheight!15787 (left!42834 lt!2089940)))))))

(assert (=> b!5074284 d!1638545))

(declare-fun d!1638547 () Bool)

(assert (=> d!1638547 (= (height!2153 (right!43164 lt!2089940)) (ite ((_ is Empty!15576) (right!43164 lt!2089940)) 0 (ite ((_ is Leaf!25869) (right!43164 lt!2089940)) 1 (cheight!15787 (right!43164 lt!2089940)))))))

(assert (=> b!5074284 d!1638547))

(declare-fun b!5074630 () Bool)

(declare-fun res!2160626 () Bool)

(declare-fun e!3166128 () Bool)

(assert (=> b!5074630 (=> (not res!2160626) (not e!3166128))))

(assert (=> b!5074630 (= res!2160626 (isBalanced!4438 (left!42834 (left!42834 lt!2089940))))))

(declare-fun b!5074631 () Bool)

(declare-fun res!2160629 () Bool)

(assert (=> b!5074631 (=> (not res!2160629) (not e!3166128))))

(assert (=> b!5074631 (= res!2160629 (<= (- (height!2153 (left!42834 (left!42834 lt!2089940))) (height!2153 (right!43164 (left!42834 lt!2089940)))) 1))))

(declare-fun d!1638549 () Bool)

(declare-fun res!2160628 () Bool)

(declare-fun e!3166127 () Bool)

(assert (=> d!1638549 (=> res!2160628 e!3166127)))

(assert (=> d!1638549 (= res!2160628 (not ((_ is Node!15576) (left!42834 lt!2089940))))))

(assert (=> d!1638549 (= (isBalanced!4438 (left!42834 lt!2089940)) e!3166127)))

(declare-fun b!5074632 () Bool)

(assert (=> b!5074632 (= e!3166128 (not (isEmpty!31655 (right!43164 (left!42834 lt!2089940)))))))

(declare-fun b!5074633 () Bool)

(declare-fun res!2160627 () Bool)

(assert (=> b!5074633 (=> (not res!2160627) (not e!3166128))))

(assert (=> b!5074633 (= res!2160627 (not (isEmpty!31655 (left!42834 (left!42834 lt!2089940)))))))

(declare-fun b!5074634 () Bool)

(assert (=> b!5074634 (= e!3166127 e!3166128)))

(declare-fun res!2160630 () Bool)

(assert (=> b!5074634 (=> (not res!2160630) (not e!3166128))))

(assert (=> b!5074634 (= res!2160630 (<= (- 1) (- (height!2153 (left!42834 (left!42834 lt!2089940))) (height!2153 (right!43164 (left!42834 lt!2089940))))))))

(declare-fun b!5074635 () Bool)

(declare-fun res!2160631 () Bool)

(assert (=> b!5074635 (=> (not res!2160631) (not e!3166128))))

(assert (=> b!5074635 (= res!2160631 (isBalanced!4438 (right!43164 (left!42834 lt!2089940))))))

(assert (= (and d!1638549 (not res!2160628)) b!5074634))

(assert (= (and b!5074634 res!2160630) b!5074631))

(assert (= (and b!5074631 res!2160629) b!5074630))

(assert (= (and b!5074630 res!2160626) b!5074635))

(assert (= (and b!5074635 res!2160631) b!5074633))

(assert (= (and b!5074633 res!2160627) b!5074632))

(declare-fun m!6122434 () Bool)

(assert (=> b!5074633 m!6122434))

(declare-fun m!6122436 () Bool)

(assert (=> b!5074632 m!6122436))

(declare-fun m!6122438 () Bool)

(assert (=> b!5074635 m!6122438))

(declare-fun m!6122440 () Bool)

(assert (=> b!5074634 m!6122440))

(declare-fun m!6122442 () Bool)

(assert (=> b!5074634 m!6122442))

(assert (=> b!5074631 m!6122440))

(assert (=> b!5074631 m!6122442))

(declare-fun m!6122444 () Bool)

(assert (=> b!5074630 m!6122444))

(assert (=> b!5074280 d!1638549))

(declare-fun b!5074638 () Bool)

(declare-fun res!2160632 () Bool)

(declare-fun e!3166131 () Bool)

(assert (=> b!5074638 (=> (not res!2160632) (not e!3166131))))

(assert (=> b!5074638 (= res!2160632 (isBalanced!4438 (left!42834 (right!43164 ys!41))))))

(declare-fun b!5074639 () Bool)

(declare-fun res!2160635 () Bool)

(assert (=> b!5074639 (=> (not res!2160635) (not e!3166131))))

(assert (=> b!5074639 (= res!2160635 (<= (- (height!2153 (left!42834 (right!43164 ys!41))) (height!2153 (right!43164 (right!43164 ys!41)))) 1))))

(declare-fun d!1638551 () Bool)

(declare-fun res!2160634 () Bool)

(declare-fun e!3166130 () Bool)

(assert (=> d!1638551 (=> res!2160634 e!3166130)))

(assert (=> d!1638551 (= res!2160634 (not ((_ is Node!15576) (right!43164 ys!41))))))

(assert (=> d!1638551 (= (isBalanced!4438 (right!43164 ys!41)) e!3166130)))

(declare-fun b!5074640 () Bool)

(assert (=> b!5074640 (= e!3166131 (not (isEmpty!31655 (right!43164 (right!43164 ys!41)))))))

(declare-fun b!5074641 () Bool)

(declare-fun res!2160633 () Bool)

(assert (=> b!5074641 (=> (not res!2160633) (not e!3166131))))

(assert (=> b!5074641 (= res!2160633 (not (isEmpty!31655 (left!42834 (right!43164 ys!41)))))))

(declare-fun b!5074642 () Bool)

(assert (=> b!5074642 (= e!3166130 e!3166131)))

(declare-fun res!2160636 () Bool)

(assert (=> b!5074642 (=> (not res!2160636) (not e!3166131))))

(assert (=> b!5074642 (= res!2160636 (<= (- 1) (- (height!2153 (left!42834 (right!43164 ys!41))) (height!2153 (right!43164 (right!43164 ys!41))))))))

(declare-fun b!5074643 () Bool)

(declare-fun res!2160637 () Bool)

(assert (=> b!5074643 (=> (not res!2160637) (not e!3166131))))

(assert (=> b!5074643 (= res!2160637 (isBalanced!4438 (right!43164 (right!43164 ys!41))))))

(assert (= (and d!1638551 (not res!2160634)) b!5074642))

(assert (= (and b!5074642 res!2160636) b!5074639))

(assert (= (and b!5074639 res!2160635) b!5074638))

(assert (= (and b!5074638 res!2160632) b!5074643))

(assert (= (and b!5074643 res!2160637) b!5074641))

(assert (= (and b!5074641 res!2160633) b!5074640))

(declare-fun m!6122454 () Bool)

(assert (=> b!5074641 m!6122454))

(declare-fun m!6122456 () Bool)

(assert (=> b!5074640 m!6122456))

(declare-fun m!6122460 () Bool)

(assert (=> b!5074643 m!6122460))

(declare-fun m!6122462 () Bool)

(assert (=> b!5074642 m!6122462))

(declare-fun m!6122464 () Bool)

(assert (=> b!5074642 m!6122464))

(assert (=> b!5074639 m!6122462))

(assert (=> b!5074639 m!6122464))

(declare-fun m!6122466 () Bool)

(assert (=> b!5074638 m!6122466))

(assert (=> b!5074547 d!1638551))

(declare-fun d!1638555 () Bool)

(declare-fun lt!2089989 () Bool)

(declare-fun isEmpty!31656 (List!58570) Bool)

(assert (=> d!1638555 (= lt!2089989 (isEmpty!31656 (list!19013 (right!43164 xs!286))))))

(assert (=> d!1638555 (= lt!2089989 (= (size!39101 (right!43164 xs!286)) 0))))

(assert (=> d!1638555 (= (isEmpty!31655 (right!43164 xs!286)) lt!2089989)))

(declare-fun bs!1190335 () Bool)

(assert (= bs!1190335 d!1638555))

(assert (=> bs!1190335 m!6122030))

(assert (=> bs!1190335 m!6122030))

(declare-fun m!6122486 () Bool)

(assert (=> bs!1190335 m!6122486))

(declare-fun m!6122488 () Bool)

(assert (=> bs!1190335 m!6122488))

(assert (=> b!5074240 d!1638555))

(declare-fun bm!353521 () Bool)

(declare-fun call!353529 () List!58570)

(declare-fun call!353528 () List!58570)

(assert (=> bm!353521 (= call!353529 (++!12800 call!353528 (list!19013 ys!41)))))

(declare-fun bm!353522 () Bool)

(assert (=> bm!353522 (= call!353528 (++!12800 (list!19013 (left!42834 (right!43164 xs!286))) (list!19013 (right!43164 (right!43164 xs!286)))))))

(declare-fun d!1638561 () Bool)

(declare-fun e!3166138 () Bool)

(assert (=> d!1638561 e!3166138))

(declare-fun c!871307 () Bool)

(assert (=> d!1638561 (= c!871307 ((_ is Nil!58446) (list!19013 (left!42834 (right!43164 xs!286)))))))

(assert (=> d!1638561 (= (appendAssoc!308 (list!19013 (left!42834 (right!43164 xs!286))) (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 ys!41)) true)))

(declare-fun bm!353523 () Bool)

(declare-fun call!353527 () List!58570)

(declare-fun call!353526 () List!58570)

(assert (=> bm!353523 (= call!353527 (++!12800 (list!19013 (left!42834 (right!43164 xs!286))) call!353526))))

(declare-fun b!5074656 () Bool)

(assert (=> b!5074656 (= e!3166138 (= call!353529 call!353527))))

(declare-fun lt!2089990 () Bool)

(assert (=> b!5074656 (= lt!2089990 (appendAssoc!308 (t!371357 (list!19013 (left!42834 (right!43164 xs!286)))) (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 ys!41)))))

(declare-fun b!5074657 () Bool)

(assert (=> b!5074657 (= e!3166138 (= call!353529 call!353527))))

(declare-fun bm!353524 () Bool)

(assert (=> bm!353524 (= call!353526 (++!12800 (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 ys!41)))))

(assert (= (and d!1638561 c!871307) b!5074657))

(assert (= (and d!1638561 (not c!871307)) b!5074656))

(assert (= (or b!5074657 b!5074656) bm!353522))

(assert (= (or b!5074657 b!5074656) bm!353524))

(assert (= (or b!5074657 b!5074656) bm!353523))

(assert (= (or b!5074657 b!5074656) bm!353521))

(assert (=> b!5074656 m!6122170))

(assert (=> b!5074656 m!6121980))

(declare-fun m!6122490 () Bool)

(assert (=> b!5074656 m!6122490))

(assert (=> bm!353522 m!6122168))

(assert (=> bm!353522 m!6122170))

(declare-fun m!6122492 () Bool)

(assert (=> bm!353522 m!6122492))

(assert (=> bm!353521 m!6121980))

(declare-fun m!6122498 () Bool)

(assert (=> bm!353521 m!6122498))

(assert (=> bm!353524 m!6122170))

(assert (=> bm!353524 m!6121980))

(assert (=> bm!353524 m!6122186))

(assert (=> bm!353523 m!6122168))

(declare-fun m!6122500 () Bool)

(assert (=> bm!353523 m!6122500))

(assert (=> b!5074331 d!1638561))

(declare-fun b!5074664 () Bool)

(declare-fun e!3166142 () List!58570)

(assert (=> b!5074664 (= e!3166142 (list!19014 (xs!18936 (left!42834 (right!43164 xs!286)))))))

(declare-fun b!5074665 () Bool)

(assert (=> b!5074665 (= e!3166142 (++!12800 (list!19013 (left!42834 (left!42834 (right!43164 xs!286)))) (list!19013 (right!43164 (left!42834 (right!43164 xs!286))))))))

(declare-fun b!5074662 () Bool)

(declare-fun e!3166141 () List!58570)

(assert (=> b!5074662 (= e!3166141 Nil!58446)))

(declare-fun d!1638565 () Bool)

(declare-fun c!871310 () Bool)

(assert (=> d!1638565 (= c!871310 ((_ is Empty!15576) (left!42834 (right!43164 xs!286))))))

(assert (=> d!1638565 (= (list!19013 (left!42834 (right!43164 xs!286))) e!3166141)))

(declare-fun b!5074663 () Bool)

(assert (=> b!5074663 (= e!3166141 e!3166142)))

(declare-fun c!871311 () Bool)

(assert (=> b!5074663 (= c!871311 ((_ is Leaf!25869) (left!42834 (right!43164 xs!286))))))

(assert (= (and d!1638565 c!871310) b!5074662))

(assert (= (and d!1638565 (not c!871310)) b!5074663))

(assert (= (and b!5074663 c!871311) b!5074664))

(assert (= (and b!5074663 (not c!871311)) b!5074665))

(declare-fun m!6122508 () Bool)

(assert (=> b!5074664 m!6122508))

(declare-fun m!6122512 () Bool)

(assert (=> b!5074665 m!6122512))

(declare-fun m!6122514 () Bool)

(assert (=> b!5074665 m!6122514))

(assert (=> b!5074665 m!6122512))

(assert (=> b!5074665 m!6122514))

(declare-fun m!6122516 () Bool)

(assert (=> b!5074665 m!6122516))

(assert (=> b!5074331 d!1638565))

(declare-fun b!5074670 () Bool)

(declare-fun e!3166145 () List!58570)

(assert (=> b!5074670 (= e!3166145 (list!19014 (xs!18936 (right!43164 (right!43164 xs!286)))))))

(declare-fun b!5074671 () Bool)

(assert (=> b!5074671 (= e!3166145 (++!12800 (list!19013 (left!42834 (right!43164 (right!43164 xs!286)))) (list!19013 (right!43164 (right!43164 (right!43164 xs!286))))))))

(declare-fun b!5074668 () Bool)

(declare-fun e!3166144 () List!58570)

(assert (=> b!5074668 (= e!3166144 Nil!58446)))

(declare-fun d!1638573 () Bool)

(declare-fun c!871313 () Bool)

(assert (=> d!1638573 (= c!871313 ((_ is Empty!15576) (right!43164 (right!43164 xs!286))))))

(assert (=> d!1638573 (= (list!19013 (right!43164 (right!43164 xs!286))) e!3166144)))

(declare-fun b!5074669 () Bool)

(assert (=> b!5074669 (= e!3166144 e!3166145)))

(declare-fun c!871314 () Bool)

(assert (=> b!5074669 (= c!871314 ((_ is Leaf!25869) (right!43164 (right!43164 xs!286))))))

(assert (= (and d!1638573 c!871313) b!5074668))

(assert (= (and d!1638573 (not c!871313)) b!5074669))

(assert (= (and b!5074669 c!871314) b!5074670))

(assert (= (and b!5074669 (not c!871314)) b!5074671))

(declare-fun m!6122520 () Bool)

(assert (=> b!5074670 m!6122520))

(declare-fun m!6122522 () Bool)

(assert (=> b!5074671 m!6122522))

(declare-fun m!6122524 () Bool)

(assert (=> b!5074671 m!6122524))

(assert (=> b!5074671 m!6122522))

(assert (=> b!5074671 m!6122524))

(declare-fun m!6122526 () Bool)

(assert (=> b!5074671 m!6122526))

(assert (=> b!5074331 d!1638573))

(assert (=> b!5074331 d!1638439))

(declare-fun d!1638577 () Bool)

(assert (=> d!1638577 (= (list!19014 (xs!18936 lt!2089940)) (innerList!15664 (xs!18936 lt!2089940)))))

(assert (=> b!5074156 d!1638577))

(declare-fun d!1638579 () Bool)

(declare-fun lt!2089991 () Bool)

(assert (=> d!1638579 (= lt!2089991 (isEmpty!31656 (list!19013 (right!43164 lt!2089940))))))

(assert (=> d!1638579 (= lt!2089991 (= (size!39101 (right!43164 lt!2089940)) 0))))

(assert (=> d!1638579 (= (isEmpty!31655 (right!43164 lt!2089940)) lt!2089991)))

(declare-fun bs!1190337 () Bool)

(assert (= bs!1190337 d!1638579))

(assert (=> bs!1190337 m!6121998))

(assert (=> bs!1190337 m!6121998))

(declare-fun m!6122528 () Bool)

(assert (=> bs!1190337 m!6122528))

(declare-fun m!6122530 () Bool)

(assert (=> bs!1190337 m!6122530))

(assert (=> b!5074282 d!1638579))

(declare-fun b!5074679 () Bool)

(declare-fun e!3166149 () Bool)

(declare-fun lt!2089994 () List!58570)

(assert (=> b!5074679 (= e!3166149 (or (not (= (list!19013 (right!43164 xs!286)) Nil!58446)) (= lt!2089994 (list!19013 (left!42834 xs!286)))))))

(declare-fun b!5074677 () Bool)

(declare-fun e!3166148 () List!58570)

(assert (=> b!5074677 (= e!3166148 (Cons!58446 (h!64894 (list!19013 (left!42834 xs!286))) (++!12800 (t!371357 (list!19013 (left!42834 xs!286))) (list!19013 (right!43164 xs!286)))))))

(declare-fun d!1638581 () Bool)

(assert (=> d!1638581 e!3166149))

(declare-fun res!2160641 () Bool)

(assert (=> d!1638581 (=> (not res!2160641) (not e!3166149))))

(assert (=> d!1638581 (= res!2160641 (= (content!10423 lt!2089994) ((_ map or) (content!10423 (list!19013 (left!42834 xs!286))) (content!10423 (list!19013 (right!43164 xs!286))))))))

(assert (=> d!1638581 (= lt!2089994 e!3166148)))

(declare-fun c!871317 () Bool)

(assert (=> d!1638581 (= c!871317 ((_ is Nil!58446) (list!19013 (left!42834 xs!286))))))

(assert (=> d!1638581 (= (++!12800 (list!19013 (left!42834 xs!286)) (list!19013 (right!43164 xs!286))) lt!2089994)))

(declare-fun b!5074678 () Bool)

(declare-fun res!2160640 () Bool)

(assert (=> b!5074678 (=> (not res!2160640) (not e!3166149))))

(assert (=> b!5074678 (= res!2160640 (= (size!39099 lt!2089994) (+ (size!39099 (list!19013 (left!42834 xs!286))) (size!39099 (list!19013 (right!43164 xs!286))))))))

(declare-fun b!5074676 () Bool)

(assert (=> b!5074676 (= e!3166148 (list!19013 (right!43164 xs!286)))))

(assert (= (and d!1638581 c!871317) b!5074676))

(assert (= (and d!1638581 (not c!871317)) b!5074677))

(assert (= (and d!1638581 res!2160641) b!5074678))

(assert (= (and b!5074678 res!2160640) b!5074679))

(assert (=> b!5074677 m!6122030))

(declare-fun m!6122532 () Bool)

(assert (=> b!5074677 m!6122532))

(declare-fun m!6122534 () Bool)

(assert (=> d!1638581 m!6122534))

(assert (=> d!1638581 m!6122028))

(declare-fun m!6122536 () Bool)

(assert (=> d!1638581 m!6122536))

(assert (=> d!1638581 m!6122030))

(declare-fun m!6122538 () Bool)

(assert (=> d!1638581 m!6122538))

(declare-fun m!6122540 () Bool)

(assert (=> b!5074678 m!6122540))

(assert (=> b!5074678 m!6122028))

(declare-fun m!6122542 () Bool)

(assert (=> b!5074678 m!6122542))

(assert (=> b!5074678 m!6122030))

(declare-fun m!6122544 () Bool)

(assert (=> b!5074678 m!6122544))

(assert (=> b!5074185 d!1638581))

(declare-fun b!5074682 () Bool)

(declare-fun e!3166151 () List!58570)

(assert (=> b!5074682 (= e!3166151 (list!19014 (xs!18936 (left!42834 xs!286))))))

(declare-fun b!5074683 () Bool)

(assert (=> b!5074683 (= e!3166151 (++!12800 (list!19013 (left!42834 (left!42834 xs!286))) (list!19013 (right!43164 (left!42834 xs!286)))))))

(declare-fun b!5074680 () Bool)

(declare-fun e!3166150 () List!58570)

(assert (=> b!5074680 (= e!3166150 Nil!58446)))

(declare-fun d!1638583 () Bool)

(declare-fun c!871318 () Bool)

(assert (=> d!1638583 (= c!871318 ((_ is Empty!15576) (left!42834 xs!286)))))

(assert (=> d!1638583 (= (list!19013 (left!42834 xs!286)) e!3166150)))

(declare-fun b!5074681 () Bool)

(assert (=> b!5074681 (= e!3166150 e!3166151)))

(declare-fun c!871319 () Bool)

(assert (=> b!5074681 (= c!871319 ((_ is Leaf!25869) (left!42834 xs!286)))))

(assert (= (and d!1638583 c!871318) b!5074680))

(assert (= (and d!1638583 (not c!871318)) b!5074681))

(assert (= (and b!5074681 c!871319) b!5074682))

(assert (= (and b!5074681 (not c!871319)) b!5074683))

(assert (=> b!5074682 m!6122378))

(declare-fun m!6122546 () Bool)

(assert (=> b!5074683 m!6122546))

(declare-fun m!6122548 () Bool)

(assert (=> b!5074683 m!6122548))

(assert (=> b!5074683 m!6122546))

(assert (=> b!5074683 m!6122548))

(declare-fun m!6122550 () Bool)

(assert (=> b!5074683 m!6122550))

(assert (=> b!5074185 d!1638583))

(declare-fun b!5074688 () Bool)

(declare-fun e!3166154 () List!58570)

(assert (=> b!5074688 (= e!3166154 (list!19014 (xs!18936 (right!43164 xs!286))))))

(declare-fun b!5074689 () Bool)

(assert (=> b!5074689 (= e!3166154 (++!12800 (list!19013 (left!42834 (right!43164 xs!286))) (list!19013 (right!43164 (right!43164 xs!286)))))))

(declare-fun b!5074686 () Bool)

(declare-fun e!3166153 () List!58570)

(assert (=> b!5074686 (= e!3166153 Nil!58446)))

(declare-fun d!1638585 () Bool)

(declare-fun c!871321 () Bool)

(assert (=> d!1638585 (= c!871321 ((_ is Empty!15576) (right!43164 xs!286)))))

(assert (=> d!1638585 (= (list!19013 (right!43164 xs!286)) e!3166153)))

(declare-fun b!5074687 () Bool)

(assert (=> b!5074687 (= e!3166153 e!3166154)))

(declare-fun c!871322 () Bool)

(assert (=> b!5074687 (= c!871322 ((_ is Leaf!25869) (right!43164 xs!286)))))

(assert (= (and d!1638585 c!871321) b!5074686))

(assert (= (and d!1638585 (not c!871321)) b!5074687))

(assert (= (and b!5074687 c!871322) b!5074688))

(assert (= (and b!5074687 (not c!871322)) b!5074689))

(declare-fun m!6122554 () Bool)

(assert (=> b!5074688 m!6122554))

(assert (=> b!5074689 m!6122168))

(assert (=> b!5074689 m!6122170))

(assert (=> b!5074689 m!6122168))

(assert (=> b!5074689 m!6122170))

(assert (=> b!5074689 m!6122492))

(assert (=> b!5074185 d!1638585))

(declare-fun d!1638591 () Bool)

(declare-fun lt!2089998 () Bool)

(assert (=> d!1638591 (= lt!2089998 (isEmpty!31656 (list!19013 (left!42834 ys!41))))))

(assert (=> d!1638591 (= lt!2089998 (= (size!39101 (left!42834 ys!41)) 0))))

(assert (=> d!1638591 (= (isEmpty!31655 (left!42834 ys!41)) lt!2089998)))

(declare-fun bs!1190338 () Bool)

(assert (= bs!1190338 d!1638591))

(assert (=> bs!1190338 m!6122036))

(assert (=> bs!1190338 m!6122036))

(declare-fun m!6122560 () Bool)

(assert (=> bs!1190338 m!6122560))

(declare-fun m!6122562 () Bool)

(assert (=> bs!1190338 m!6122562))

(assert (=> b!5074545 d!1638591))

(declare-fun b!5074700 () Bool)

(declare-fun res!2160648 () Bool)

(declare-fun e!3166160 () Bool)

(assert (=> b!5074700 (=> (not res!2160648) (not e!3166160))))

(assert (=> b!5074700 (= res!2160648 (isBalanced!4438 (left!42834 (left!42834 xs!286))))))

(declare-fun b!5074701 () Bool)

(declare-fun res!2160651 () Bool)

(assert (=> b!5074701 (=> (not res!2160651) (not e!3166160))))

(assert (=> b!5074701 (= res!2160651 (<= (- (height!2153 (left!42834 (left!42834 xs!286))) (height!2153 (right!43164 (left!42834 xs!286)))) 1))))

(declare-fun d!1638595 () Bool)

(declare-fun res!2160650 () Bool)

(declare-fun e!3166159 () Bool)

(assert (=> d!1638595 (=> res!2160650 e!3166159)))

(assert (=> d!1638595 (= res!2160650 (not ((_ is Node!15576) (left!42834 xs!286))))))

(assert (=> d!1638595 (= (isBalanced!4438 (left!42834 xs!286)) e!3166159)))

(declare-fun b!5074702 () Bool)

(assert (=> b!5074702 (= e!3166160 (not (isEmpty!31655 (right!43164 (left!42834 xs!286)))))))

(declare-fun b!5074703 () Bool)

(declare-fun res!2160649 () Bool)

(assert (=> b!5074703 (=> (not res!2160649) (not e!3166160))))

(assert (=> b!5074703 (= res!2160649 (not (isEmpty!31655 (left!42834 (left!42834 xs!286)))))))

(declare-fun b!5074704 () Bool)

(assert (=> b!5074704 (= e!3166159 e!3166160)))

(declare-fun res!2160652 () Bool)

(assert (=> b!5074704 (=> (not res!2160652) (not e!3166160))))

(assert (=> b!5074704 (= res!2160652 (<= (- 1) (- (height!2153 (left!42834 (left!42834 xs!286))) (height!2153 (right!43164 (left!42834 xs!286))))))))

(declare-fun b!5074705 () Bool)

(declare-fun res!2160653 () Bool)

(assert (=> b!5074705 (=> (not res!2160653) (not e!3166160))))

(assert (=> b!5074705 (= res!2160653 (isBalanced!4438 (right!43164 (left!42834 xs!286))))))

(assert (= (and d!1638595 (not res!2160650)) b!5074704))

(assert (= (and b!5074704 res!2160652) b!5074701))

(assert (= (and b!5074701 res!2160651) b!5074700))

(assert (= (and b!5074700 res!2160648) b!5074705))

(assert (= (and b!5074705 res!2160653) b!5074703))

(assert (= (and b!5074703 res!2160649) b!5074702))

(declare-fun m!6122568 () Bool)

(assert (=> b!5074703 m!6122568))

(declare-fun m!6122570 () Bool)

(assert (=> b!5074702 m!6122570))

(declare-fun m!6122572 () Bool)

(assert (=> b!5074705 m!6122572))

(assert (=> b!5074704 m!6122370))

(assert (=> b!5074704 m!6122372))

(assert (=> b!5074701 m!6122370))

(assert (=> b!5074701 m!6122372))

(declare-fun m!6122582 () Bool)

(assert (=> b!5074700 m!6122582))

(assert (=> b!5074238 d!1638595))

(declare-fun bm!353526 () Bool)

(declare-fun call!353537 () List!58570)

(declare-fun call!353535 () List!58570)

(assert (=> bm!353526 (= call!353537 (++!12800 call!353535 (list!19013 (right!43164 ys!41))))))

(declare-fun bm!353528 () Bool)

(assert (=> bm!353528 (= call!353535 (++!12800 (list!19013 xs!286) (list!19013 (left!42834 ys!41))))))

(declare-fun d!1638599 () Bool)

(declare-fun e!3166162 () Bool)

(assert (=> d!1638599 e!3166162))

(declare-fun c!871326 () Bool)

(assert (=> d!1638599 (= c!871326 ((_ is Nil!58446) (list!19013 xs!286)))))

(assert (=> d!1638599 (= (appendAssoc!308 (list!19013 xs!286) (list!19013 (left!42834 ys!41)) (list!19013 (right!43164 ys!41))) true)))

(declare-fun bm!353530 () Bool)

(declare-fun call!353533 () List!58570)

(declare-fun call!353531 () List!58570)

(assert (=> bm!353530 (= call!353533 (++!12800 (list!19013 xs!286) call!353531))))

(declare-fun b!5074708 () Bool)

(assert (=> b!5074708 (= e!3166162 (= call!353537 call!353533))))

(declare-fun lt!2089999 () Bool)

(assert (=> b!5074708 (= lt!2089999 (appendAssoc!308 (t!371357 (list!19013 xs!286)) (list!19013 (left!42834 ys!41)) (list!19013 (right!43164 ys!41))))))

(declare-fun b!5074709 () Bool)

(assert (=> b!5074709 (= e!3166162 (= call!353537 call!353533))))

(declare-fun bm!353532 () Bool)

(assert (=> bm!353532 (= call!353531 (++!12800 (list!19013 (left!42834 ys!41)) (list!19013 (right!43164 ys!41))))))

(assert (= (and d!1638599 c!871326) b!5074709))

(assert (= (and d!1638599 (not c!871326)) b!5074708))

(assert (= (or b!5074709 b!5074708) bm!353528))

(assert (= (or b!5074709 b!5074708) bm!353532))

(assert (= (or b!5074709 b!5074708) bm!353530))

(assert (= (or b!5074709 b!5074708) bm!353526))

(assert (=> b!5074708 m!6122036))

(assert (=> b!5074708 m!6122038))

(declare-fun m!6122586 () Bool)

(assert (=> b!5074708 m!6122586))

(assert (=> bm!353528 m!6121978))

(assert (=> bm!353528 m!6122036))

(assert (=> bm!353528 m!6122324))

(assert (=> bm!353526 m!6122038))

(declare-fun m!6122590 () Bool)

(assert (=> bm!353526 m!6122590))

(assert (=> bm!353532 m!6122036))

(assert (=> bm!353532 m!6122038))

(assert (=> bm!353532 m!6122040))

(assert (=> bm!353530 m!6121978))

(declare-fun m!6122594 () Bool)

(assert (=> bm!353530 m!6122594))

(assert (=> b!5074329 d!1638599))

(assert (=> b!5074329 d!1638437))

(declare-fun b!5074712 () Bool)

(declare-fun e!3166164 () List!58570)

(assert (=> b!5074712 (= e!3166164 (list!19014 (xs!18936 (left!42834 ys!41))))))

(declare-fun b!5074713 () Bool)

(assert (=> b!5074713 (= e!3166164 (++!12800 (list!19013 (left!42834 (left!42834 ys!41))) (list!19013 (right!43164 (left!42834 ys!41)))))))

(declare-fun b!5074710 () Bool)

(declare-fun e!3166163 () List!58570)

(assert (=> b!5074710 (= e!3166163 Nil!58446)))

(declare-fun d!1638601 () Bool)

(declare-fun c!871327 () Bool)

(assert (=> d!1638601 (= c!871327 ((_ is Empty!15576) (left!42834 ys!41)))))

(assert (=> d!1638601 (= (list!19013 (left!42834 ys!41)) e!3166163)))

(declare-fun b!5074711 () Bool)

(assert (=> b!5074711 (= e!3166163 e!3166164)))

(declare-fun c!871328 () Bool)

(assert (=> b!5074711 (= c!871328 ((_ is Leaf!25869) (left!42834 ys!41)))))

(assert (= (and d!1638601 c!871327) b!5074710))

(assert (= (and d!1638601 (not c!871327)) b!5074711))

(assert (= (and b!5074711 c!871328) b!5074712))

(assert (= (and b!5074711 (not c!871328)) b!5074713))

(declare-fun m!6122598 () Bool)

(assert (=> b!5074712 m!6122598))

(assert (=> b!5074713 m!6122180))

(assert (=> b!5074713 m!6122176))

(assert (=> b!5074713 m!6122180))

(assert (=> b!5074713 m!6122176))

(assert (=> b!5074713 m!6122414))

(assert (=> b!5074329 d!1638601))

(declare-fun b!5074720 () Bool)

(declare-fun e!3166168 () List!58570)

(assert (=> b!5074720 (= e!3166168 (list!19014 (xs!18936 (right!43164 ys!41))))))

(declare-fun b!5074721 () Bool)

(assert (=> b!5074721 (= e!3166168 (++!12800 (list!19013 (left!42834 (right!43164 ys!41))) (list!19013 (right!43164 (right!43164 ys!41)))))))

(declare-fun b!5074718 () Bool)

(declare-fun e!3166167 () List!58570)

(assert (=> b!5074718 (= e!3166167 Nil!58446)))

(declare-fun d!1638605 () Bool)

(declare-fun c!871331 () Bool)

(assert (=> d!1638605 (= c!871331 ((_ is Empty!15576) (right!43164 ys!41)))))

(assert (=> d!1638605 (= (list!19013 (right!43164 ys!41)) e!3166167)))

(declare-fun b!5074719 () Bool)

(assert (=> b!5074719 (= e!3166167 e!3166168)))

(declare-fun c!871332 () Bool)

(assert (=> b!5074719 (= c!871332 ((_ is Leaf!25869) (right!43164 ys!41)))))

(assert (= (and d!1638605 c!871331) b!5074718))

(assert (= (and d!1638605 (not c!871331)) b!5074719))

(assert (= (and b!5074719 c!871332) b!5074720))

(assert (= (and b!5074719 (not c!871332)) b!5074721))

(declare-fun m!6122608 () Bool)

(assert (=> b!5074720 m!6122608))

(declare-fun m!6122610 () Bool)

(assert (=> b!5074721 m!6122610))

(declare-fun m!6122612 () Bool)

(assert (=> b!5074721 m!6122612))

(assert (=> b!5074721 m!6122610))

(assert (=> b!5074721 m!6122612))

(declare-fun m!6122614 () Bool)

(assert (=> b!5074721 m!6122614))

(assert (=> b!5074329 d!1638605))

(declare-fun b!5074729 () Bool)

(declare-fun e!3166172 () Bool)

(declare-fun lt!2090001 () List!58570)

(assert (=> b!5074729 (= e!3166172 (or (not (= (list!19013 (right!43164 ys!41)) Nil!58446)) (= lt!2090001 (list!19013 (left!42834 ys!41)))))))

(declare-fun b!5074727 () Bool)

(declare-fun e!3166171 () List!58570)

(assert (=> b!5074727 (= e!3166171 (Cons!58446 (h!64894 (list!19013 (left!42834 ys!41))) (++!12800 (t!371357 (list!19013 (left!42834 ys!41))) (list!19013 (right!43164 ys!41)))))))

(declare-fun d!1638609 () Bool)

(assert (=> d!1638609 e!3166172))

(declare-fun res!2160655 () Bool)

(assert (=> d!1638609 (=> (not res!2160655) (not e!3166172))))

(assert (=> d!1638609 (= res!2160655 (= (content!10423 lt!2090001) ((_ map or) (content!10423 (list!19013 (left!42834 ys!41))) (content!10423 (list!19013 (right!43164 ys!41))))))))

(assert (=> d!1638609 (= lt!2090001 e!3166171)))

(declare-fun c!871335 () Bool)

(assert (=> d!1638609 (= c!871335 ((_ is Nil!58446) (list!19013 (left!42834 ys!41))))))

(assert (=> d!1638609 (= (++!12800 (list!19013 (left!42834 ys!41)) (list!19013 (right!43164 ys!41))) lt!2090001)))

(declare-fun b!5074728 () Bool)

(declare-fun res!2160654 () Bool)

(assert (=> b!5074728 (=> (not res!2160654) (not e!3166172))))

(assert (=> b!5074728 (= res!2160654 (= (size!39099 lt!2090001) (+ (size!39099 (list!19013 (left!42834 ys!41))) (size!39099 (list!19013 (right!43164 ys!41))))))))

(declare-fun b!5074726 () Bool)

(assert (=> b!5074726 (= e!3166171 (list!19013 (right!43164 ys!41)))))

(assert (= (and d!1638609 c!871335) b!5074726))

(assert (= (and d!1638609 (not c!871335)) b!5074727))

(assert (= (and d!1638609 res!2160655) b!5074728))

(assert (= (and b!5074728 res!2160654) b!5074729))

(assert (=> b!5074727 m!6122038))

(declare-fun m!6122624 () Bool)

(assert (=> b!5074727 m!6122624))

(declare-fun m!6122628 () Bool)

(assert (=> d!1638609 m!6122628))

(assert (=> d!1638609 m!6122036))

(declare-fun m!6122636 () Bool)

(assert (=> d!1638609 m!6122636))

(assert (=> d!1638609 m!6122038))

(declare-fun m!6122638 () Bool)

(assert (=> d!1638609 m!6122638))

(declare-fun m!6122640 () Bool)

(assert (=> b!5074728 m!6122640))

(assert (=> b!5074728 m!6122036))

(declare-fun m!6122644 () Bool)

(assert (=> b!5074728 m!6122644))

(assert (=> b!5074728 m!6122038))

(declare-fun m!6122646 () Bool)

(assert (=> b!5074728 m!6122646))

(assert (=> b!5074189 d!1638609))

(assert (=> b!5074189 d!1638601))

(assert (=> b!5074189 d!1638605))

(declare-fun b!5074737 () Bool)

(declare-fun res!2160659 () Bool)

(declare-fun e!3166177 () Bool)

(assert (=> b!5074737 (=> (not res!2160659) (not e!3166177))))

(assert (=> b!5074737 (= res!2160659 (isBalanced!4438 (left!42834 (left!42834 ys!41))))))

(declare-fun b!5074738 () Bool)

(declare-fun res!2160662 () Bool)

(assert (=> b!5074738 (=> (not res!2160662) (not e!3166177))))

(assert (=> b!5074738 (= res!2160662 (<= (- (height!2153 (left!42834 (left!42834 ys!41))) (height!2153 (right!43164 (left!42834 ys!41)))) 1))))

(declare-fun d!1638615 () Bool)

(declare-fun res!2160661 () Bool)

(declare-fun e!3166176 () Bool)

(assert (=> d!1638615 (=> res!2160661 e!3166176)))

(assert (=> d!1638615 (= res!2160661 (not ((_ is Node!15576) (left!42834 ys!41))))))

(assert (=> d!1638615 (= (isBalanced!4438 (left!42834 ys!41)) e!3166176)))

(declare-fun b!5074739 () Bool)

(assert (=> b!5074739 (= e!3166177 (not (isEmpty!31655 (right!43164 (left!42834 ys!41)))))))

(declare-fun b!5074740 () Bool)

(declare-fun res!2160660 () Bool)

(assert (=> b!5074740 (=> (not res!2160660) (not e!3166177))))

(assert (=> b!5074740 (= res!2160660 (not (isEmpty!31655 (left!42834 (left!42834 ys!41)))))))

(declare-fun b!5074741 () Bool)

(assert (=> b!5074741 (= e!3166176 e!3166177)))

(declare-fun res!2160663 () Bool)

(assert (=> b!5074741 (=> (not res!2160663) (not e!3166177))))

(assert (=> b!5074741 (= res!2160663 (<= (- 1) (- (height!2153 (left!42834 (left!42834 ys!41))) (height!2153 (right!43164 (left!42834 ys!41))))))))

(declare-fun b!5074742 () Bool)

(declare-fun res!2160664 () Bool)

(assert (=> b!5074742 (=> (not res!2160664) (not e!3166177))))

(assert (=> b!5074742 (= res!2160664 (isBalanced!4438 (right!43164 (left!42834 ys!41))))))

(assert (= (and d!1638615 (not res!2160661)) b!5074741))

(assert (= (and b!5074741 res!2160663) b!5074738))

(assert (= (and b!5074738 res!2160662) b!5074737))

(assert (= (and b!5074737 res!2160659) b!5074742))

(assert (= (and b!5074742 res!2160664) b!5074740))

(assert (= (and b!5074740 res!2160660) b!5074739))

(declare-fun m!6122656 () Bool)

(assert (=> b!5074740 m!6122656))

(declare-fun m!6122658 () Bool)

(assert (=> b!5074739 m!6122658))

(declare-fun m!6122660 () Bool)

(assert (=> b!5074742 m!6122660))

(declare-fun m!6122662 () Bool)

(assert (=> b!5074741 m!6122662))

(declare-fun m!6122664 () Bool)

(assert (=> b!5074741 m!6122664))

(assert (=> b!5074738 m!6122662))

(assert (=> b!5074738 m!6122664))

(declare-fun m!6122666 () Bool)

(assert (=> b!5074737 m!6122666))

(assert (=> b!5074542 d!1638615))

(declare-fun d!1638619 () Bool)

(assert (=> d!1638619 (= (list!19014 (xs!18936 xs!286)) (innerList!15664 (xs!18936 xs!286)))))

(assert (=> b!5074184 d!1638619))

(declare-fun e!3166181 () Conc!15576)

(declare-fun b!5074747 () Bool)

(assert (=> b!5074747 (= e!3166181 (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41))))))))

(declare-fun b!5074750 () Bool)

(declare-fun e!3166180 () Conc!15576)

(assert (=> b!5074750 (= e!3166180 (Node!15576 (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41)))))) (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41))))) (+ (size!39101 (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41))))))) (size!39101 (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41))))))) (+ (max!0 (height!2153 (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41))))))) (height!2153 (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41))))))) 1)))))

(declare-fun lt!2090003 () Conc!15576)

(declare-fun d!1638621 () Bool)

(assert (=> d!1638621 (= (list!19013 lt!2090003) (++!12800 (list!19013 (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41))))))) (list!19013 (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41))))))))))

(assert (=> d!1638621 (= lt!2090003 e!3166181)))

(declare-fun c!871340 () Bool)

(assert (=> d!1638621 (= c!871340 (= (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41)))))) Empty!15576))))

(assert (=> d!1638621 (= (<>!398 (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41)))))) (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41)))))) lt!2090003)))

(declare-fun b!5074748 () Bool)

(assert (=> b!5074748 (= e!3166181 e!3166180)))

(declare-fun c!871339 () Bool)

(assert (=> b!5074748 (= c!871339 (= (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41))))) Empty!15576))))

(declare-fun b!5074749 () Bool)

(assert (=> b!5074749 (= e!3166180 (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41)))))))))

(assert (= (and d!1638621 c!871340) b!5074747))

(assert (= (and d!1638621 (not c!871340)) b!5074748))

(assert (= (and b!5074748 c!871339) b!5074749))

(assert (= (and b!5074748 (not c!871339)) b!5074750))

(declare-fun m!6122688 () Bool)

(assert (=> b!5074750 m!6122688))

(declare-fun m!6122690 () Bool)

(assert (=> b!5074750 m!6122690))

(assert (=> b!5074750 m!6122690))

(declare-fun m!6122694 () Bool)

(assert (=> b!5074750 m!6122694))

(declare-fun m!6122696 () Bool)

(assert (=> b!5074750 m!6122696))

(assert (=> b!5074750 m!6122694))

(declare-fun m!6122698 () Bool)

(assert (=> b!5074750 m!6122698))

(declare-fun m!6122700 () Bool)

(assert (=> d!1638621 m!6122700))

(declare-fun m!6122702 () Bool)

(assert (=> d!1638621 m!6122702))

(declare-fun m!6122704 () Bool)

(assert (=> d!1638621 m!6122704))

(assert (=> d!1638621 m!6122702))

(assert (=> d!1638621 m!6122704))

(declare-fun m!6122706 () Bool)

(assert (=> d!1638621 m!6122706))

(assert (=> bm!353489 d!1638621))

(declare-fun d!1638631 () Bool)

(declare-fun res!2160667 () Bool)

(declare-fun e!3166184 () Bool)

(assert (=> d!1638631 (=> (not res!2160667) (not e!3166184))))

(assert (=> d!1638631 (= res!2160667 (<= (size!39099 (list!19014 (xs!18936 (right!43164 xs!286)))) 512))))

(assert (=> d!1638631 (= (inv!77626 (right!43164 xs!286)) e!3166184)))

(declare-fun b!5074755 () Bool)

(declare-fun res!2160668 () Bool)

(assert (=> b!5074755 (=> (not res!2160668) (not e!3166184))))

(assert (=> b!5074755 (= res!2160668 (= (csize!31383 (right!43164 xs!286)) (size!39099 (list!19014 (xs!18936 (right!43164 xs!286))))))))

(declare-fun b!5074756 () Bool)

(assert (=> b!5074756 (= e!3166184 (and (> (csize!31383 (right!43164 xs!286)) 0) (<= (csize!31383 (right!43164 xs!286)) 512)))))

(assert (= (and d!1638631 res!2160667) b!5074755))

(assert (= (and b!5074755 res!2160668) b!5074756))

(assert (=> d!1638631 m!6122554))

(assert (=> d!1638631 m!6122554))

(declare-fun m!6122708 () Bool)

(assert (=> d!1638631 m!6122708))

(assert (=> b!5074755 m!6122554))

(assert (=> b!5074755 m!6122554))

(assert (=> b!5074755 m!6122708))

(assert (=> b!5074263 d!1638631))

(declare-fun e!3166186 () Bool)

(declare-fun lt!2090004 () List!58570)

(declare-fun b!5074760 () Bool)

(assert (=> b!5074760 (= e!3166186 (or (not (= (list!19013 ys!41) Nil!58446)) (= lt!2090004 (t!371357 (list!19013 xs!286)))))))

(declare-fun b!5074758 () Bool)

(declare-fun e!3166185 () List!58570)

(assert (=> b!5074758 (= e!3166185 (Cons!58446 (h!64894 (t!371357 (list!19013 xs!286))) (++!12800 (t!371357 (t!371357 (list!19013 xs!286))) (list!19013 ys!41))))))

(declare-fun d!1638633 () Bool)

(assert (=> d!1638633 e!3166186))

(declare-fun res!2160670 () Bool)

(assert (=> d!1638633 (=> (not res!2160670) (not e!3166186))))

(assert (=> d!1638633 (= res!2160670 (= (content!10423 lt!2090004) ((_ map or) (content!10423 (t!371357 (list!19013 xs!286))) (content!10423 (list!19013 ys!41)))))))

(assert (=> d!1638633 (= lt!2090004 e!3166185)))

(declare-fun c!871343 () Bool)

(assert (=> d!1638633 (= c!871343 ((_ is Nil!58446) (t!371357 (list!19013 xs!286))))))

(assert (=> d!1638633 (= (++!12800 (t!371357 (list!19013 xs!286)) (list!19013 ys!41)) lt!2090004)))

(declare-fun b!5074759 () Bool)

(declare-fun res!2160669 () Bool)

(assert (=> b!5074759 (=> (not res!2160669) (not e!3166186))))

(assert (=> b!5074759 (= res!2160669 (= (size!39099 lt!2090004) (+ (size!39099 (t!371357 (list!19013 xs!286))) (size!39099 (list!19013 ys!41)))))))

(declare-fun b!5074757 () Bool)

(assert (=> b!5074757 (= e!3166185 (list!19013 ys!41))))

(assert (= (and d!1638633 c!871343) b!5074757))

(assert (= (and d!1638633 (not c!871343)) b!5074758))

(assert (= (and d!1638633 res!2160670) b!5074759))

(assert (= (and b!5074759 res!2160669) b!5074760))

(assert (=> b!5074758 m!6121980))

(declare-fun m!6122710 () Bool)

(assert (=> b!5074758 m!6122710))

(declare-fun m!6122712 () Bool)

(assert (=> d!1638633 m!6122712))

(declare-fun m!6122714 () Bool)

(assert (=> d!1638633 m!6122714))

(assert (=> d!1638633 m!6121980))

(assert (=> d!1638633 m!6122018))

(declare-fun m!6122716 () Bool)

(assert (=> b!5074759 m!6122716))

(declare-fun m!6122718 () Bool)

(assert (=> b!5074759 m!6122718))

(assert (=> b!5074759 m!6121980))

(assert (=> b!5074759 m!6122024))

(assert (=> b!5074179 d!1638633))

(declare-fun d!1638635 () Bool)

(declare-fun c!871344 () Bool)

(assert (=> d!1638635 (= c!871344 ((_ is Node!15576) (left!42834 (right!43164 xs!286))))))

(declare-fun e!3166189 () Bool)

(assert (=> d!1638635 (= (inv!77621 (left!42834 (right!43164 xs!286))) e!3166189)))

(declare-fun b!5074763 () Bool)

(assert (=> b!5074763 (= e!3166189 (inv!77625 (left!42834 (right!43164 xs!286))))))

(declare-fun b!5074764 () Bool)

(declare-fun e!3166190 () Bool)

(assert (=> b!5074764 (= e!3166189 e!3166190)))

(declare-fun res!2160673 () Bool)

(assert (=> b!5074764 (= res!2160673 (not ((_ is Leaf!25869) (left!42834 (right!43164 xs!286)))))))

(assert (=> b!5074764 (=> res!2160673 e!3166190)))

(declare-fun b!5074765 () Bool)

(assert (=> b!5074765 (= e!3166190 (inv!77626 (left!42834 (right!43164 xs!286))))))

(assert (= (and d!1638635 c!871344) b!5074763))

(assert (= (and d!1638635 (not c!871344)) b!5074764))

(assert (= (and b!5074764 (not res!2160673)) b!5074765))

(declare-fun m!6122720 () Bool)

(assert (=> b!5074763 m!6122720))

(declare-fun m!6122722 () Bool)

(assert (=> b!5074765 m!6122722))

(assert (=> b!5074571 d!1638635))

(declare-fun d!1638637 () Bool)

(declare-fun c!871345 () Bool)

(assert (=> d!1638637 (= c!871345 ((_ is Node!15576) (right!43164 (right!43164 xs!286))))))

(declare-fun e!3166191 () Bool)

(assert (=> d!1638637 (= (inv!77621 (right!43164 (right!43164 xs!286))) e!3166191)))

(declare-fun b!5074768 () Bool)

(assert (=> b!5074768 (= e!3166191 (inv!77625 (right!43164 (right!43164 xs!286))))))

(declare-fun b!5074769 () Bool)

(declare-fun e!3166192 () Bool)

(assert (=> b!5074769 (= e!3166191 e!3166192)))

(declare-fun res!2160676 () Bool)

(assert (=> b!5074769 (= res!2160676 (not ((_ is Leaf!25869) (right!43164 (right!43164 xs!286)))))))

(assert (=> b!5074769 (=> res!2160676 e!3166192)))

(declare-fun b!5074770 () Bool)

(assert (=> b!5074770 (= e!3166192 (inv!77626 (right!43164 (right!43164 xs!286))))))

(assert (= (and d!1638637 c!871345) b!5074768))

(assert (= (and d!1638637 (not c!871345)) b!5074769))

(assert (= (and b!5074769 (not res!2160676)) b!5074770))

(declare-fun m!6122724 () Bool)

(assert (=> b!5074768 m!6122724))

(declare-fun m!6122726 () Bool)

(assert (=> b!5074770 m!6122726))

(assert (=> b!5074571 d!1638637))

(declare-fun d!1638639 () Bool)

(declare-fun e!3166197 () Bool)

(assert (=> d!1638639 e!3166197))

(declare-fun res!2160681 () Bool)

(assert (=> d!1638639 (=> (not res!2160681) (not e!3166197))))

(declare-fun e!3166198 () Bool)

(assert (=> d!1638639 (= res!2160681 e!3166198)))

(declare-fun res!2160680 () Bool)

(assert (=> d!1638639 (=> res!2160680 e!3166198)))

(assert (=> d!1638639 (= res!2160680 (not ((_ is Node!15576) xs!286)))))

(assert (=> d!1638639 (= (appendAssocInst!916 xs!286 (left!42834 ys!41)) true)))

(declare-fun b!5074771 () Bool)

(declare-fun e!3166201 () Bool)

(assert (=> b!5074771 (= e!3166198 e!3166201)))

(declare-fun res!2160683 () Bool)

(assert (=> b!5074771 (=> (not res!2160683) (not e!3166201))))

(assert (=> b!5074771 (= res!2160683 (appendAssoc!308 (list!19013 (left!42834 xs!286)) (list!19013 (right!43164 xs!286)) (list!19013 (left!42834 ys!41))))))

(declare-fun b!5074772 () Bool)

(declare-fun e!3166196 () Bool)

(declare-fun e!3166193 () Bool)

(assert (=> b!5074772 (= e!3166196 e!3166193)))

(declare-fun res!2160685 () Bool)

(assert (=> b!5074772 (=> res!2160685 e!3166193)))

(assert (=> b!5074772 (= res!2160685 (not ((_ is Node!15576) (left!42834 (left!42834 ys!41)))))))

(declare-fun b!5074773 () Bool)

(declare-fun e!3166200 () Bool)

(assert (=> b!5074773 (= e!3166200 (appendAssoc!308 (list!19013 (left!42834 xs!286)) (list!19013 (left!42834 (right!43164 xs!286))) (++!12800 (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 (left!42834 ys!41)))))))

(declare-fun b!5074774 () Bool)

(declare-fun e!3166194 () Bool)

(assert (=> b!5074774 (= e!3166197 e!3166194)))

(declare-fun res!2160684 () Bool)

(assert (=> b!5074774 (=> res!2160684 e!3166194)))

(assert (=> b!5074774 (= res!2160684 (not ((_ is Node!15576) (left!42834 ys!41))))))

(declare-fun b!5074775 () Bool)

(assert (=> b!5074775 (= e!3166194 e!3166196)))

(declare-fun res!2160678 () Bool)

(assert (=> b!5074775 (=> (not res!2160678) (not e!3166196))))

(assert (=> b!5074775 (= res!2160678 (appendAssoc!308 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 ys!41))) (list!19013 (right!43164 (left!42834 ys!41)))))))

(declare-fun b!5074776 () Bool)

(declare-fun e!3166199 () Bool)

(assert (=> b!5074776 (= e!3166201 e!3166199)))

(declare-fun res!2160679 () Bool)

(assert (=> b!5074776 (=> res!2160679 e!3166199)))

(assert (=> b!5074776 (= res!2160679 (not ((_ is Node!15576) (right!43164 xs!286))))))

(declare-fun b!5074777 () Bool)

(assert (=> b!5074777 (= e!3166199 e!3166200)))

(declare-fun res!2160677 () Bool)

(assert (=> b!5074777 (=> (not res!2160677) (not e!3166200))))

(assert (=> b!5074777 (= res!2160677 (appendAssoc!308 (list!19013 (left!42834 (right!43164 xs!286))) (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 (left!42834 ys!41))))))

(declare-fun b!5074778 () Bool)

(declare-fun e!3166195 () Bool)

(assert (=> b!5074778 (= e!3166195 (appendAssoc!308 (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 (left!42834 ys!41))))) (list!19013 (right!43164 (left!42834 (left!42834 ys!41)))) (list!19013 (right!43164 (left!42834 ys!41)))))))

(declare-fun b!5074779 () Bool)

(assert (=> b!5074779 (= e!3166193 e!3166195)))

(declare-fun res!2160682 () Bool)

(assert (=> b!5074779 (=> (not res!2160682) (not e!3166195))))

(assert (=> b!5074779 (= res!2160682 (appendAssoc!308 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 (left!42834 ys!41)))) (list!19013 (right!43164 (left!42834 (left!42834 ys!41))))))))

(assert (= (and d!1638639 (not res!2160680)) b!5074771))

(assert (= (and b!5074771 res!2160683) b!5074776))

(assert (= (and b!5074776 (not res!2160679)) b!5074777))

(assert (= (and b!5074777 res!2160677) b!5074773))

(assert (= (and d!1638639 res!2160681) b!5074774))

(assert (= (and b!5074774 (not res!2160684)) b!5074775))

(assert (= (and b!5074775 res!2160678) b!5074772))

(assert (= (and b!5074772 (not res!2160685)) b!5074779))

(assert (= (and b!5074779 res!2160682) b!5074778))

(assert (=> b!5074777 m!6122168))

(assert (=> b!5074777 m!6122170))

(assert (=> b!5074777 m!6122036))

(assert (=> b!5074777 m!6122168))

(assert (=> b!5074777 m!6122170))

(assert (=> b!5074777 m!6122036))

(declare-fun m!6122734 () Bool)

(assert (=> b!5074777 m!6122734))

(assert (=> b!5074778 m!6121978))

(declare-fun m!6122736 () Bool)

(assert (=> b!5074778 m!6122736))

(assert (=> b!5074778 m!6122422))

(assert (=> b!5074778 m!6122176))

(declare-fun m!6122738 () Bool)

(assert (=> b!5074778 m!6122738))

(assert (=> b!5074778 m!6122422))

(assert (=> b!5074778 m!6122420))

(assert (=> b!5074778 m!6122176))

(assert (=> b!5074778 m!6121978))

(assert (=> b!5074778 m!6122420))

(assert (=> b!5074778 m!6122736))

(assert (=> b!5074775 m!6121978))

(assert (=> b!5074775 m!6122180))

(assert (=> b!5074775 m!6122176))

(assert (=> b!5074775 m!6121978))

(assert (=> b!5074775 m!6122180))

(assert (=> b!5074775 m!6122176))

(assert (=> b!5074775 m!6122190))

(assert (=> b!5074771 m!6122028))

(assert (=> b!5074771 m!6122030))

(assert (=> b!5074771 m!6122036))

(assert (=> b!5074771 m!6122028))

(assert (=> b!5074771 m!6122030))

(assert (=> b!5074771 m!6122036))

(declare-fun m!6122740 () Bool)

(assert (=> b!5074771 m!6122740))

(assert (=> b!5074773 m!6122170))

(assert (=> b!5074773 m!6122028))

(assert (=> b!5074773 m!6122168))

(declare-fun m!6122742 () Bool)

(assert (=> b!5074773 m!6122742))

(declare-fun m!6122744 () Bool)

(assert (=> b!5074773 m!6122744))

(assert (=> b!5074773 m!6122170))

(assert (=> b!5074773 m!6122036))

(assert (=> b!5074773 m!6122742))

(assert (=> b!5074773 m!6122036))

(assert (=> b!5074773 m!6122028))

(assert (=> b!5074773 m!6122168))

(assert (=> b!5074779 m!6121978))

(assert (=> b!5074779 m!6122420))

(assert (=> b!5074779 m!6122422))

(assert (=> b!5074779 m!6121978))

(assert (=> b!5074779 m!6122420))

(assert (=> b!5074779 m!6122422))

(declare-fun m!6122754 () Bool)

(assert (=> b!5074779 m!6122754))

(assert (=> d!1638489 d!1638639))

(assert (=> d!1638489 d!1638441))

(declare-fun d!1638645 () Bool)

(declare-fun res!2160696 () Bool)

(declare-fun e!3166206 () Bool)

(assert (=> d!1638645 (=> (not res!2160696) (not e!3166206))))

(assert (=> d!1638645 (= res!2160696 (= (csize!31382 (right!43164 xs!286)) (+ (size!39101 (left!42834 (right!43164 xs!286))) (size!39101 (right!43164 (right!43164 xs!286))))))))

(assert (=> d!1638645 (= (inv!77625 (right!43164 xs!286)) e!3166206)))

(declare-fun b!5074790 () Bool)

(declare-fun res!2160697 () Bool)

(assert (=> b!5074790 (=> (not res!2160697) (not e!3166206))))

(assert (=> b!5074790 (= res!2160697 (and (not (= (left!42834 (right!43164 xs!286)) Empty!15576)) (not (= (right!43164 (right!43164 xs!286)) Empty!15576))))))

(declare-fun b!5074791 () Bool)

(declare-fun res!2160698 () Bool)

(assert (=> b!5074791 (=> (not res!2160698) (not e!3166206))))

(assert (=> b!5074791 (= res!2160698 (= (cheight!15787 (right!43164 xs!286)) (+ (max!0 (height!2153 (left!42834 (right!43164 xs!286))) (height!2153 (right!43164 (right!43164 xs!286)))) 1)))))

(declare-fun b!5074792 () Bool)

(assert (=> b!5074792 (= e!3166206 (<= 0 (cheight!15787 (right!43164 xs!286))))))

(assert (= (and d!1638645 res!2160696) b!5074790))

(assert (= (and b!5074790 res!2160697) b!5074791))

(assert (= (and b!5074791 res!2160698) b!5074792))

(declare-fun m!6122760 () Bool)

(assert (=> d!1638645 m!6122760))

(declare-fun m!6122762 () Bool)

(assert (=> d!1638645 m!6122762))

(declare-fun m!6122764 () Bool)

(assert (=> b!5074791 m!6122764))

(declare-fun m!6122766 () Bool)

(assert (=> b!5074791 m!6122766))

(assert (=> b!5074791 m!6122764))

(assert (=> b!5074791 m!6122766))

(declare-fun m!6122768 () Bool)

(assert (=> b!5074791 m!6122768))

(assert (=> b!5074261 d!1638645))

(declare-fun d!1638649 () Bool)

(assert (=> d!1638649 (= (height!2153 (ite c!871276 xs!286 (left!42834 (left!42834 ys!41)))) (ite ((_ is Empty!15576) (ite c!871276 xs!286 (left!42834 (left!42834 ys!41)))) 0 (ite ((_ is Leaf!25869) (ite c!871276 xs!286 (left!42834 (left!42834 ys!41)))) 1 (cheight!15787 (ite c!871276 xs!286 (left!42834 (left!42834 ys!41)))))))))

(assert (=> bm!353495 d!1638649))

(declare-fun d!1638651 () Bool)

(declare-fun c!871346 () Bool)

(assert (=> d!1638651 (= c!871346 ((_ is Node!15576) (left!42834 (left!42834 ys!41))))))

(declare-fun e!3166207 () Bool)

(assert (=> d!1638651 (= (inv!77621 (left!42834 (left!42834 ys!41))) e!3166207)))

(declare-fun b!5074793 () Bool)

(assert (=> b!5074793 (= e!3166207 (inv!77625 (left!42834 (left!42834 ys!41))))))

(declare-fun b!5074794 () Bool)

(declare-fun e!3166208 () Bool)

(assert (=> b!5074794 (= e!3166207 e!3166208)))

(declare-fun res!2160699 () Bool)

(assert (=> b!5074794 (= res!2160699 (not ((_ is Leaf!25869) (left!42834 (left!42834 ys!41)))))))

(assert (=> b!5074794 (=> res!2160699 e!3166208)))

(declare-fun b!5074795 () Bool)

(assert (=> b!5074795 (= e!3166208 (inv!77626 (left!42834 (left!42834 ys!41))))))

(assert (= (and d!1638651 c!871346) b!5074793))

(assert (= (and d!1638651 (not c!871346)) b!5074794))

(assert (= (and b!5074794 (not res!2160699)) b!5074795))

(declare-fun m!6122770 () Bool)

(assert (=> b!5074793 m!6122770))

(declare-fun m!6122772 () Bool)

(assert (=> b!5074795 m!6122772))

(assert (=> b!5074562 d!1638651))

(declare-fun d!1638653 () Bool)

(declare-fun c!871347 () Bool)

(assert (=> d!1638653 (= c!871347 ((_ is Node!15576) (right!43164 (left!42834 ys!41))))))

(declare-fun e!3166209 () Bool)

(assert (=> d!1638653 (= (inv!77621 (right!43164 (left!42834 ys!41))) e!3166209)))

(declare-fun b!5074796 () Bool)

(assert (=> b!5074796 (= e!3166209 (inv!77625 (right!43164 (left!42834 ys!41))))))

(declare-fun b!5074797 () Bool)

(declare-fun e!3166210 () Bool)

(assert (=> b!5074797 (= e!3166209 e!3166210)))

(declare-fun res!2160700 () Bool)

(assert (=> b!5074797 (= res!2160700 (not ((_ is Leaf!25869) (right!43164 (left!42834 ys!41)))))))

(assert (=> b!5074797 (=> res!2160700 e!3166210)))

(declare-fun b!5074798 () Bool)

(assert (=> b!5074798 (= e!3166210 (inv!77626 (right!43164 (left!42834 ys!41))))))

(assert (= (and d!1638653 c!871347) b!5074796))

(assert (= (and d!1638653 (not c!871347)) b!5074797))

(assert (= (and b!5074797 (not res!2160700)) b!5074798))

(declare-fun m!6122774 () Bool)

(assert (=> b!5074796 m!6122774))

(declare-fun m!6122776 () Bool)

(assert (=> b!5074798 m!6122776))

(assert (=> b!5074562 d!1638653))

(declare-fun bm!353533 () Bool)

(declare-fun lt!2090008 () Conc!15576)

(declare-fun call!353549 () Int)

(declare-fun lt!2090005 () Conc!15576)

(declare-fun c!871348 () Bool)

(assert (=> bm!353533 (= call!353549 (height!2153 (ite c!871348 lt!2090008 lt!2090005)))))

(declare-fun b!5074799 () Bool)

(declare-fun e!3166216 () Conc!15576)

(declare-fun call!353553 () Conc!15576)

(assert (=> b!5074799 (= e!3166216 call!353553)))

(declare-fun bm!353534 () Bool)

(declare-fun call!353538 () Conc!15576)

(declare-fun call!353548 () Conc!15576)

(assert (=> bm!353534 (= call!353538 call!353548)))

(declare-fun bm!353535 () Bool)

(declare-fun call!353545 () Conc!15576)

(declare-fun call!353540 () Conc!15576)

(assert (=> bm!353535 (= call!353545 call!353540)))

(declare-fun b!5074800 () Bool)

(declare-fun res!2160703 () Bool)

(declare-fun e!3166219 () Bool)

(assert (=> b!5074800 (=> (not res!2160703) (not e!3166219))))

(declare-fun lt!2090007 () Conc!15576)

(assert (=> b!5074800 (= res!2160703 (isBalanced!4438 lt!2090007))))

(declare-fun bm!353536 () Bool)

(declare-fun call!353542 () Int)

(assert (=> bm!353536 (= call!353542 (height!2153 (ite c!871348 (left!42834 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))))

(declare-fun b!5074801 () Bool)

(declare-fun e!3166214 () Conc!15576)

(assert (=> b!5074801 (= e!3166214 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))))

(declare-fun b!5074802 () Bool)

(declare-fun e!3166220 () Conc!15576)

(assert (=> b!5074802 (= e!3166220 call!353538)))

(declare-fun bm!353537 () Bool)

(declare-fun call!353551 () Conc!15576)

(declare-fun call!353543 () Conc!15576)

(assert (=> bm!353537 (= call!353551 call!353543)))

(declare-fun b!5074803 () Bool)

(declare-fun e!3166218 () Conc!15576)

(assert (=> b!5074803 (= e!3166218 e!3166220)))

(declare-fun call!353546 () Conc!15576)

(assert (=> b!5074803 (= lt!2090005 call!353546)))

(declare-fun c!871352 () Bool)

(declare-fun call!353550 () Int)

(assert (=> b!5074803 (= c!871352 (= call!353549 (- call!353550 3)))))

(declare-fun b!5074804 () Bool)

(assert (=> b!5074804 (= e!3166219 (= (list!19013 lt!2090007) (++!12800 (list!19013 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (list!19013 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))))

(declare-fun c!871351 () Bool)

(declare-fun call!353547 () Conc!15576)

(declare-fun c!871353 () Bool)

(declare-fun bm!353538 () Bool)

(assert (=> bm!353538 (= call!353547 (++!12801 (ite c!871348 (ite c!871353 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (right!43164 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (ite c!871348 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))) (ite c!871351 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (left!42834 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))))))

(declare-fun bm!353539 () Bool)

(assert (=> bm!353539 (= call!353550 (height!2153 (ite c!871348 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))))))

(declare-fun b!5074805 () Bool)

(declare-fun e!3166212 () Conc!15576)

(declare-fun e!3166213 () Conc!15576)

(assert (=> b!5074805 (= e!3166212 e!3166213)))

(declare-fun call!353539 () Conc!15576)

(assert (=> b!5074805 (= lt!2090008 call!353539)))

(declare-fun c!871350 () Bool)

(declare-fun call!353541 () Int)

(assert (=> b!5074805 (= c!871350 (= call!353549 (- call!353541 3)))))

(declare-fun b!5074806 () Bool)

(declare-fun e!3166215 () Bool)

(assert (=> b!5074806 (= e!3166215 (isBalanced!4438 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))

(declare-fun b!5074807 () Bool)

(declare-fun e!3166211 () Conc!15576)

(assert (=> b!5074807 (= e!3166216 e!3166211)))

(declare-fun lt!2090006 () Int)

(assert (=> b!5074807 (= c!871348 (< lt!2090006 (- 1)))))

(declare-fun bm!353540 () Bool)

(assert (=> bm!353540 (= call!353546 call!353547)))

(declare-fun bm!353541 () Bool)

(assert (=> bm!353541 (= call!353543 (<>!398 (ite c!871348 (ite c!871350 (left!42834 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (left!42834 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (ite c!871351 call!353546 (ite c!871352 lt!2090005 (right!43164 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))) (ite c!871348 (ite c!871350 lt!2090008 (left!42834 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (ite c!871351 (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (ite c!871352 (right!43164 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))) (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))))))

(declare-fun bm!353542 () Bool)

(assert (=> bm!353542 (= call!353539 call!353547)))

(declare-fun b!5074808 () Bool)

(declare-fun c!871355 () Bool)

(assert (=> b!5074808 (= c!871355 (and (<= (- 1) lt!2090006) (<= lt!2090006 1)))))

(assert (=> b!5074808 (= lt!2090006 (- (height!2153 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (height!2153 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))))))

(declare-fun e!3166217 () Conc!15576)

(assert (=> b!5074808 (= e!3166217 e!3166216)))

(declare-fun b!5074809 () Bool)

(assert (=> b!5074809 (= e!3166212 call!353540)))

(declare-fun b!5074810 () Bool)

(declare-fun res!2160704 () Bool)

(assert (=> b!5074810 (=> (not res!2160704) (not e!3166219))))

(assert (=> b!5074810 (= res!2160704 (>= (height!2153 lt!2090007) (max!0 (height!2153 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (height!2153 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))))

(declare-fun d!1638655 () Bool)

(assert (=> d!1638655 e!3166219))

(declare-fun res!2160702 () Bool)

(assert (=> d!1638655 (=> (not res!2160702) (not e!3166219))))

(assert (=> d!1638655 (= res!2160702 (appendAssocInst!916 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286) (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))

(assert (=> d!1638655 (= lt!2090007 e!3166214)))

(declare-fun c!871349 () Bool)

(assert (=> d!1638655 (= c!871349 (= (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286) Empty!15576))))

(assert (=> d!1638655 e!3166215))

(declare-fun res!2160705 () Bool)

(assert (=> d!1638655 (=> (not res!2160705) (not e!3166215))))

(assert (=> d!1638655 (= res!2160705 (isBalanced!4438 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))))

(assert (=> d!1638655 (= (++!12801 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286) (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) lt!2090007)))

(declare-fun bm!353543 () Bool)

(assert (=> bm!353543 (= call!353540 call!353548)))

(declare-fun bm!353544 () Bool)

(assert (=> bm!353544 (= call!353548 call!353553)))

(declare-fun bm!353545 () Bool)

(declare-fun call!353544 () Conc!15576)

(assert (=> bm!353545 (= call!353544 call!353543)))

(declare-fun b!5074811 () Bool)

(assert (=> b!5074811 (= e!3166213 call!353545)))

(declare-fun b!5074812 () Bool)

(assert (=> b!5074812 (= e!3166213 call!353545)))

(declare-fun b!5074813 () Bool)

(assert (=> b!5074813 (= c!871351 (>= call!353542 call!353541))))

(assert (=> b!5074813 (= e!3166211 e!3166218)))

(declare-fun b!5074814 () Bool)

(assert (=> b!5074814 (= e!3166217 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))))

(declare-fun b!5074815 () Bool)

(assert (=> b!5074815 (= e!3166218 call!353544)))

(declare-fun bm!353546 () Bool)

(declare-fun call!353552 () Conc!15576)

(assert (=> bm!353546 (= call!353553 (<>!398 (ite c!871355 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286) (ite c!871348 (ite (or c!871353 c!871350) (left!42834 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) call!353551) (ite c!871352 call!353552 lt!2090005))) (ite c!871355 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))) (ite c!871348 (ite c!871353 call!353539 (ite c!871350 call!353551 lt!2090008)) (ite c!871352 (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) call!353552)))))))

(declare-fun b!5074816 () Bool)

(assert (=> b!5074816 (= e!3166220 call!353538)))

(declare-fun bm!353547 () Bool)

(assert (=> bm!353547 (= call!353541 (height!2153 (ite c!871348 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286) (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))))

(declare-fun b!5074817 () Bool)

(declare-fun res!2160701 () Bool)

(assert (=> b!5074817 (=> (not res!2160701) (not e!3166219))))

(assert (=> b!5074817 (= res!2160701 (<= (height!2153 lt!2090007) (+ (max!0 (height!2153 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (height!2153 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))) 1)))))

(declare-fun b!5074818 () Bool)

(assert (=> b!5074818 (= e!3166214 e!3166217)))

(declare-fun c!871354 () Bool)

(assert (=> b!5074818 (= c!871354 (= (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))) Empty!15576))))

(declare-fun bm!353548 () Bool)

(assert (=> bm!353548 (= call!353552 call!353544)))

(declare-fun b!5074819 () Bool)

(assert (=> b!5074819 (= c!871353 (>= call!353542 call!353550))))

(assert (=> b!5074819 (= e!3166211 e!3166212)))

(assert (= (and d!1638655 res!2160705) b!5074806))

(assert (= (and d!1638655 c!871349) b!5074801))

(assert (= (and d!1638655 (not c!871349)) b!5074818))

(assert (= (and b!5074818 c!871354) b!5074814))

(assert (= (and b!5074818 (not c!871354)) b!5074808))

(assert (= (and b!5074808 c!871355) b!5074799))

(assert (= (and b!5074808 (not c!871355)) b!5074807))

(assert (= (and b!5074807 c!871348) b!5074819))

(assert (= (and b!5074807 (not c!871348)) b!5074813))

(assert (= (and b!5074819 c!871353) b!5074809))

(assert (= (and b!5074819 (not c!871353)) b!5074805))

(assert (= (and b!5074805 c!871350) b!5074812))

(assert (= (and b!5074805 (not c!871350)) b!5074811))

(assert (= (or b!5074812 b!5074811) bm!353537))

(assert (= (or b!5074812 b!5074811) bm!353535))

(assert (= (or b!5074809 b!5074805) bm!353542))

(assert (= (or b!5074809 bm!353535) bm!353543))

(assert (= (and b!5074813 c!871351) b!5074815))

(assert (= (and b!5074813 (not c!871351)) b!5074803))

(assert (= (and b!5074803 c!871352) b!5074802))

(assert (= (and b!5074803 (not c!871352)) b!5074816))

(assert (= (or b!5074802 b!5074816) bm!353548))

(assert (= (or b!5074802 b!5074816) bm!353534))

(assert (= (or b!5074815 b!5074803) bm!353540))

(assert (= (or b!5074815 bm!353548) bm!353545))

(assert (= (or b!5074805 b!5074813) bm!353547))

(assert (= (or b!5074819 b!5074803) bm!353539))

(assert (= (or bm!353543 bm!353534) bm!353544))

(assert (= (or bm!353542 bm!353540) bm!353538))

(assert (= (or bm!353537 bm!353545) bm!353541))

(assert (= (or b!5074819 b!5074813) bm!353536))

(assert (= (or b!5074805 b!5074803) bm!353533))

(assert (= (or b!5074799 bm!353544) bm!353546))

(assert (= (and d!1638655 res!2160702) b!5074800))

(assert (= (and b!5074800 res!2160703) b!5074817))

(assert (= (and b!5074817 res!2160701) b!5074810))

(assert (= (and b!5074810 res!2160704) b!5074804))

(declare-fun m!6122784 () Bool)

(assert (=> bm!353541 m!6122784))

(declare-fun m!6122786 () Bool)

(assert (=> bm!353546 m!6122786))

(declare-fun m!6122790 () Bool)

(assert (=> bm!353547 m!6122790))

(declare-fun m!6122794 () Bool)

(assert (=> bm!353538 m!6122794))

(declare-fun m!6122796 () Bool)

(assert (=> b!5074817 m!6122796))

(declare-fun m!6122799 () Bool)

(assert (=> b!5074817 m!6122799))

(declare-fun m!6122802 () Bool)

(assert (=> b!5074817 m!6122802))

(assert (=> b!5074817 m!6122799))

(assert (=> b!5074817 m!6122802))

(declare-fun m!6122804 () Bool)

(assert (=> b!5074817 m!6122804))

(assert (=> b!5074808 m!6122802))

(assert (=> b!5074808 m!6122799))

(declare-fun m!6122806 () Bool)

(assert (=> bm!353533 m!6122806))

(assert (=> b!5074810 m!6122796))

(assert (=> b!5074810 m!6122799))

(assert (=> b!5074810 m!6122802))

(assert (=> b!5074810 m!6122799))

(assert (=> b!5074810 m!6122802))

(assert (=> b!5074810 m!6122804))

(declare-fun m!6122808 () Bool)

(assert (=> b!5074800 m!6122808))

(declare-fun m!6122810 () Bool)

(assert (=> bm!353536 m!6122810))

(declare-fun m!6122812 () Bool)

(assert (=> b!5074806 m!6122812))

(declare-fun m!6122814 () Bool)

(assert (=> d!1638655 m!6122814))

(declare-fun m!6122816 () Bool)

(assert (=> d!1638655 m!6122816))

(declare-fun m!6122818 () Bool)

(assert (=> b!5074804 m!6122818))

(declare-fun m!6122820 () Bool)

(assert (=> b!5074804 m!6122820))

(declare-fun m!6122822 () Bool)

(assert (=> b!5074804 m!6122822))

(assert (=> b!5074804 m!6122820))

(assert (=> b!5074804 m!6122822))

(declare-fun m!6122824 () Bool)

(assert (=> b!5074804 m!6122824))

(declare-fun m!6122826 () Bool)

(assert (=> bm!353539 m!6122826))

(assert (=> bm!353486 d!1638655))

(assert (=> b!5074138 d!1638507))

(assert (=> b!5074138 d!1638509))

(declare-fun b!5074829 () Bool)

(declare-fun e!3166225 () Conc!15576)

(assert (=> b!5074829 (= e!3166225 (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500))))))

(declare-fun b!5074832 () Bool)

(declare-fun e!3166224 () Conc!15576)

(assert (=> b!5074832 (= e!3166224 (Node!15576 (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976))) (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500))) (+ (size!39101 (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976)))) (size!39101 (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500))))) (+ (max!0 (height!2153 (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976)))) (height!2153 (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500))))) 1)))))

(declare-fun d!1638663 () Bool)

(declare-fun lt!2090012 () Conc!15576)

(assert (=> d!1638663 (= (list!19013 lt!2090012) (++!12800 (list!19013 (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976)))) (list!19013 (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500))))))))

(assert (=> d!1638663 (= lt!2090012 e!3166225)))

(declare-fun c!871357 () Bool)

(assert (=> d!1638663 (= c!871357 (= (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976))) Empty!15576))))

(assert (=> d!1638663 (= (<>!398 (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976))) (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500)))) lt!2090012)))

(declare-fun b!5074830 () Bool)

(assert (=> b!5074830 (= e!3166225 e!3166224)))

(declare-fun c!871356 () Bool)

(assert (=> b!5074830 (= c!871356 (= (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500))) Empty!15576))))

(declare-fun b!5074831 () Bool)

(assert (=> b!5074831 (= e!3166224 (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976))))))

(assert (= (and d!1638663 c!871357) b!5074829))

(assert (= (and d!1638663 (not c!871357)) b!5074830))

(assert (= (and b!5074830 c!871356) b!5074831))

(assert (= (and b!5074830 (not c!871356)) b!5074832))

(declare-fun m!6122840 () Bool)

(assert (=> b!5074832 m!6122840))

(declare-fun m!6122842 () Bool)

(assert (=> b!5074832 m!6122842))

(assert (=> b!5074832 m!6122842))

(declare-fun m!6122844 () Bool)

(assert (=> b!5074832 m!6122844))

(declare-fun m!6122846 () Bool)

(assert (=> b!5074832 m!6122846))

(assert (=> b!5074832 m!6122844))

(declare-fun m!6122848 () Bool)

(assert (=> b!5074832 m!6122848))

(declare-fun m!6122850 () Bool)

(assert (=> d!1638663 m!6122850))

(declare-fun m!6122852 () Bool)

(assert (=> d!1638663 m!6122852))

(declare-fun m!6122854 () Bool)

(assert (=> d!1638663 m!6122854))

(assert (=> d!1638663 m!6122852))

(assert (=> d!1638663 m!6122854))

(declare-fun m!6122856 () Bool)

(assert (=> d!1638663 m!6122856))

(assert (=> bm!353494 d!1638663))

(declare-fun d!1638671 () Bool)

(declare-fun lt!2090019 () Int)

(assert (=> d!1638671 (>= lt!2090019 0)))

(declare-fun e!3166240 () Int)

(assert (=> d!1638671 (= lt!2090019 e!3166240)))

(declare-fun c!871368 () Bool)

(assert (=> d!1638671 (= c!871368 ((_ is Nil!58446) (innerList!15664 (xs!18936 xs!286))))))

(assert (=> d!1638671 (= (size!39099 (innerList!15664 (xs!18936 xs!286))) lt!2090019)))

(declare-fun b!5074864 () Bool)

(assert (=> b!5074864 (= e!3166240 0)))

(declare-fun b!5074865 () Bool)

(assert (=> b!5074865 (= e!3166240 (+ 1 (size!39099 (t!371357 (innerList!15664 (xs!18936 xs!286))))))))

(assert (= (and d!1638671 c!871368) b!5074864))

(assert (= (and d!1638671 (not c!871368)) b!5074865))

(declare-fun m!6122870 () Bool)

(assert (=> b!5074865 m!6122870))

(assert (=> d!1638459 d!1638671))

(declare-fun d!1638675 () Bool)

(declare-fun lt!2090020 () Int)

(assert (=> d!1638675 (>= lt!2090020 0)))

(declare-fun e!3166241 () Int)

(assert (=> d!1638675 (= lt!2090020 e!3166241)))

(declare-fun c!871369 () Bool)

(assert (=> d!1638675 (= c!871369 ((_ is Nil!58446) (innerList!15664 (xs!18936 ys!41))))))

(assert (=> d!1638675 (= (size!39099 (innerList!15664 (xs!18936 ys!41))) lt!2090020)))

(declare-fun b!5074866 () Bool)

(assert (=> b!5074866 (= e!3166241 0)))

(declare-fun b!5074867 () Bool)

(assert (=> b!5074867 (= e!3166241 (+ 1 (size!39099 (t!371357 (innerList!15664 (xs!18936 ys!41))))))))

(assert (= (and d!1638675 c!871369) b!5074866))

(assert (= (and d!1638675 (not c!871369)) b!5074867))

(declare-fun m!6122872 () Bool)

(assert (=> b!5074867 m!6122872))

(assert (=> d!1638473 d!1638675))

(declare-fun d!1638677 () Bool)

(declare-fun res!2160726 () Bool)

(declare-fun e!3166242 () Bool)

(assert (=> d!1638677 (=> (not res!2160726) (not e!3166242))))

(assert (=> d!1638677 (= res!2160726 (= (csize!31382 xs!286) (+ (size!39101 (left!42834 xs!286)) (size!39101 (right!43164 xs!286)))))))

(assert (=> d!1638677 (= (inv!77625 xs!286) e!3166242)))

(declare-fun b!5074868 () Bool)

(declare-fun res!2160727 () Bool)

(assert (=> b!5074868 (=> (not res!2160727) (not e!3166242))))

(assert (=> b!5074868 (= res!2160727 (and (not (= (left!42834 xs!286) Empty!15576)) (not (= (right!43164 xs!286) Empty!15576))))))

(declare-fun b!5074869 () Bool)

(declare-fun res!2160728 () Bool)

(assert (=> b!5074869 (=> (not res!2160728) (not e!3166242))))

(assert (=> b!5074869 (= res!2160728 (= (cheight!15787 xs!286) (+ (max!0 (height!2153 (left!42834 xs!286)) (height!2153 (right!43164 xs!286))) 1)))))

(declare-fun b!5074870 () Bool)

(assert (=> b!5074870 (= e!3166242 (<= 0 (cheight!15787 xs!286)))))

(assert (= (and d!1638677 res!2160726) b!5074868))

(assert (= (and b!5074868 res!2160727) b!5074869))

(assert (= (and b!5074869 res!2160728) b!5074870))

(declare-fun m!6122874 () Bool)

(assert (=> d!1638677 m!6122874))

(assert (=> d!1638677 m!6122488))

(assert (=> b!5074869 m!6122084))

(assert (=> b!5074869 m!6122086))

(assert (=> b!5074869 m!6122084))

(assert (=> b!5074869 m!6122086))

(declare-fun m!6122876 () Bool)

(assert (=> b!5074869 m!6122876))

(assert (=> b!5074250 d!1638677))

(declare-fun b!5074873 () Bool)

(declare-fun e!3166244 () List!58570)

(assert (=> b!5074873 (= e!3166244 (list!19014 (xs!18936 lt!2089952)))))

(declare-fun b!5074874 () Bool)

(assert (=> b!5074874 (= e!3166244 (++!12800 (list!19013 (left!42834 lt!2089952)) (list!19013 (right!43164 lt!2089952))))))

(declare-fun b!5074871 () Bool)

(declare-fun e!3166243 () List!58570)

(assert (=> b!5074871 (= e!3166243 Nil!58446)))

(declare-fun d!1638679 () Bool)

(declare-fun c!871370 () Bool)

(assert (=> d!1638679 (= c!871370 ((_ is Empty!15576) lt!2089952))))

(assert (=> d!1638679 (= (list!19013 lt!2089952) e!3166243)))

(declare-fun b!5074872 () Bool)

(assert (=> b!5074872 (= e!3166243 e!3166244)))

(declare-fun c!871371 () Bool)

(assert (=> b!5074872 (= c!871371 ((_ is Leaf!25869) lt!2089952))))

(assert (= (and d!1638679 c!871370) b!5074871))

(assert (= (and d!1638679 (not c!871370)) b!5074872))

(assert (= (and b!5074872 c!871371) b!5074873))

(assert (= (and b!5074872 (not c!871371)) b!5074874))

(declare-fun m!6122878 () Bool)

(assert (=> b!5074873 m!6122878))

(declare-fun m!6122880 () Bool)

(assert (=> b!5074874 m!6122880))

(declare-fun m!6122882 () Bool)

(assert (=> b!5074874 m!6122882))

(assert (=> b!5074874 m!6122880))

(assert (=> b!5074874 m!6122882))

(declare-fun m!6122884 () Bool)

(assert (=> b!5074874 m!6122884))

(assert (=> d!1638487 d!1638679))

(declare-fun b!5074878 () Bool)

(declare-fun lt!2090021 () List!58570)

(declare-fun e!3166246 () Bool)

(assert (=> b!5074878 (= e!3166246 (or (not (= (list!19013 (right!43164 ys!41)) Nil!58446)) (= lt!2090021 (list!19013 (++!12801 xs!286 (left!42834 ys!41))))))))

(declare-fun b!5074876 () Bool)

(declare-fun e!3166245 () List!58570)

(assert (=> b!5074876 (= e!3166245 (Cons!58446 (h!64894 (list!19013 (++!12801 xs!286 (left!42834 ys!41)))) (++!12800 (t!371357 (list!19013 (++!12801 xs!286 (left!42834 ys!41)))) (list!19013 (right!43164 ys!41)))))))

(declare-fun d!1638681 () Bool)

(assert (=> d!1638681 e!3166246))

(declare-fun res!2160730 () Bool)

(assert (=> d!1638681 (=> (not res!2160730) (not e!3166246))))

(assert (=> d!1638681 (= res!2160730 (= (content!10423 lt!2090021) ((_ map or) (content!10423 (list!19013 (++!12801 xs!286 (left!42834 ys!41)))) (content!10423 (list!19013 (right!43164 ys!41))))))))

(assert (=> d!1638681 (= lt!2090021 e!3166245)))

(declare-fun c!871372 () Bool)

(assert (=> d!1638681 (= c!871372 ((_ is Nil!58446) (list!19013 (++!12801 xs!286 (left!42834 ys!41)))))))

(assert (=> d!1638681 (= (++!12800 (list!19013 (++!12801 xs!286 (left!42834 ys!41))) (list!19013 (right!43164 ys!41))) lt!2090021)))

(declare-fun b!5074877 () Bool)

(declare-fun res!2160729 () Bool)

(assert (=> b!5074877 (=> (not res!2160729) (not e!3166246))))

(assert (=> b!5074877 (= res!2160729 (= (size!39099 lt!2090021) (+ (size!39099 (list!19013 (++!12801 xs!286 (left!42834 ys!41)))) (size!39099 (list!19013 (right!43164 ys!41))))))))

(declare-fun b!5074875 () Bool)

(assert (=> b!5074875 (= e!3166245 (list!19013 (right!43164 ys!41)))))

(assert (= (and d!1638681 c!871372) b!5074875))

(assert (= (and d!1638681 (not c!871372)) b!5074876))

(assert (= (and d!1638681 res!2160730) b!5074877))

(assert (= (and b!5074877 res!2160729) b!5074878))

(assert (=> b!5074876 m!6122038))

(declare-fun m!6122886 () Bool)

(assert (=> b!5074876 m!6122886))

(declare-fun m!6122888 () Bool)

(assert (=> d!1638681 m!6122888))

(assert (=> d!1638681 m!6122202))

(declare-fun m!6122890 () Bool)

(assert (=> d!1638681 m!6122890))

(assert (=> d!1638681 m!6122038))

(assert (=> d!1638681 m!6122638))

(declare-fun m!6122892 () Bool)

(assert (=> b!5074877 m!6122892))

(assert (=> b!5074877 m!6122202))

(declare-fun m!6122894 () Bool)

(assert (=> b!5074877 m!6122894))

(assert (=> b!5074877 m!6122038))

(assert (=> b!5074877 m!6122646))

(assert (=> d!1638487 d!1638681))

(declare-fun b!5074881 () Bool)

(declare-fun e!3166248 () List!58570)

(assert (=> b!5074881 (= e!3166248 (list!19014 (xs!18936 (++!12801 xs!286 (left!42834 ys!41)))))))

(declare-fun b!5074882 () Bool)

(assert (=> b!5074882 (= e!3166248 (++!12800 (list!19013 (left!42834 (++!12801 xs!286 (left!42834 ys!41)))) (list!19013 (right!43164 (++!12801 xs!286 (left!42834 ys!41))))))))

(declare-fun b!5074879 () Bool)

(declare-fun e!3166247 () List!58570)

(assert (=> b!5074879 (= e!3166247 Nil!58446)))

(declare-fun d!1638683 () Bool)

(declare-fun c!871373 () Bool)

(assert (=> d!1638683 (= c!871373 ((_ is Empty!15576) (++!12801 xs!286 (left!42834 ys!41))))))

(assert (=> d!1638683 (= (list!19013 (++!12801 xs!286 (left!42834 ys!41))) e!3166247)))

(declare-fun b!5074880 () Bool)

(assert (=> b!5074880 (= e!3166247 e!3166248)))

(declare-fun c!871374 () Bool)

(assert (=> b!5074880 (= c!871374 ((_ is Leaf!25869) (++!12801 xs!286 (left!42834 ys!41))))))

(assert (= (and d!1638683 c!871373) b!5074879))

(assert (= (and d!1638683 (not c!871373)) b!5074880))

(assert (= (and b!5074880 c!871374) b!5074881))

(assert (= (and b!5074880 (not c!871374)) b!5074882))

(declare-fun m!6122896 () Bool)

(assert (=> b!5074881 m!6122896))

(declare-fun m!6122898 () Bool)

(assert (=> b!5074882 m!6122898))

(declare-fun m!6122900 () Bool)

(assert (=> b!5074882 m!6122900))

(assert (=> b!5074882 m!6122898))

(assert (=> b!5074882 m!6122900))

(declare-fun m!6122902 () Bool)

(assert (=> b!5074882 m!6122902))

(assert (=> d!1638487 d!1638683))

(assert (=> d!1638487 d!1638605))

(declare-fun d!1638685 () Bool)

(declare-fun lt!2090022 () Bool)

(assert (=> d!1638685 (= lt!2090022 (isEmpty!31656 (list!19013 (left!42834 lt!2089940))))))

(assert (=> d!1638685 (= lt!2090022 (= (size!39101 (left!42834 lt!2089940)) 0))))

(assert (=> d!1638685 (= (isEmpty!31655 (left!42834 lt!2089940)) lt!2090022)))

(declare-fun bs!1190341 () Bool)

(assert (= bs!1190341 d!1638685))

(assert (=> bs!1190341 m!6121996))

(assert (=> bs!1190341 m!6121996))

(declare-fun m!6122904 () Bool)

(assert (=> bs!1190341 m!6122904))

(declare-fun m!6122906 () Bool)

(assert (=> bs!1190341 m!6122906))

(assert (=> b!5074283 d!1638685))

(declare-fun b!5074886 () Bool)

(declare-fun e!3166250 () Bool)

(declare-fun lt!2090023 () List!58570)

(assert (=> b!5074886 (= e!3166250 (or (not (= (list!19013 (right!43164 lt!2089940)) Nil!58446)) (= lt!2090023 (list!19013 (left!42834 lt!2089940)))))))

(declare-fun b!5074884 () Bool)

(declare-fun e!3166249 () List!58570)

(assert (=> b!5074884 (= e!3166249 (Cons!58446 (h!64894 (list!19013 (left!42834 lt!2089940))) (++!12800 (t!371357 (list!19013 (left!42834 lt!2089940))) (list!19013 (right!43164 lt!2089940)))))))

(declare-fun d!1638687 () Bool)

(assert (=> d!1638687 e!3166250))

(declare-fun res!2160732 () Bool)

(assert (=> d!1638687 (=> (not res!2160732) (not e!3166250))))

(assert (=> d!1638687 (= res!2160732 (= (content!10423 lt!2090023) ((_ map or) (content!10423 (list!19013 (left!42834 lt!2089940))) (content!10423 (list!19013 (right!43164 lt!2089940))))))))

(assert (=> d!1638687 (= lt!2090023 e!3166249)))

(declare-fun c!871375 () Bool)

(assert (=> d!1638687 (= c!871375 ((_ is Nil!58446) (list!19013 (left!42834 lt!2089940))))))

(assert (=> d!1638687 (= (++!12800 (list!19013 (left!42834 lt!2089940)) (list!19013 (right!43164 lt!2089940))) lt!2090023)))

(declare-fun b!5074885 () Bool)

(declare-fun res!2160731 () Bool)

(assert (=> b!5074885 (=> (not res!2160731) (not e!3166250))))

(assert (=> b!5074885 (= res!2160731 (= (size!39099 lt!2090023) (+ (size!39099 (list!19013 (left!42834 lt!2089940))) (size!39099 (list!19013 (right!43164 lt!2089940))))))))

(declare-fun b!5074883 () Bool)

(assert (=> b!5074883 (= e!3166249 (list!19013 (right!43164 lt!2089940)))))

(assert (= (and d!1638687 c!871375) b!5074883))

(assert (= (and d!1638687 (not c!871375)) b!5074884))

(assert (= (and d!1638687 res!2160732) b!5074885))

(assert (= (and b!5074885 res!2160731) b!5074886))

(assert (=> b!5074884 m!6121998))

(declare-fun m!6122908 () Bool)

(assert (=> b!5074884 m!6122908))

(declare-fun m!6122910 () Bool)

(assert (=> d!1638687 m!6122910))

(assert (=> d!1638687 m!6121996))

(declare-fun m!6122912 () Bool)

(assert (=> d!1638687 m!6122912))

(assert (=> d!1638687 m!6121998))

(declare-fun m!6122914 () Bool)

(assert (=> d!1638687 m!6122914))

(declare-fun m!6122916 () Bool)

(assert (=> b!5074885 m!6122916))

(assert (=> b!5074885 m!6121996))

(declare-fun m!6122920 () Bool)

(assert (=> b!5074885 m!6122920))

(assert (=> b!5074885 m!6121998))

(declare-fun m!6122924 () Bool)

(assert (=> b!5074885 m!6122924))

(assert (=> b!5074157 d!1638687))

(declare-fun b!5074889 () Bool)

(declare-fun e!3166252 () List!58570)

(assert (=> b!5074889 (= e!3166252 (list!19014 (xs!18936 (left!42834 lt!2089940))))))

(declare-fun b!5074890 () Bool)

(assert (=> b!5074890 (= e!3166252 (++!12800 (list!19013 (left!42834 (left!42834 lt!2089940))) (list!19013 (right!43164 (left!42834 lt!2089940)))))))

(declare-fun b!5074887 () Bool)

(declare-fun e!3166251 () List!58570)

(assert (=> b!5074887 (= e!3166251 Nil!58446)))

(declare-fun d!1638689 () Bool)

(declare-fun c!871376 () Bool)

(assert (=> d!1638689 (= c!871376 ((_ is Empty!15576) (left!42834 lt!2089940)))))

(assert (=> d!1638689 (= (list!19013 (left!42834 lt!2089940)) e!3166251)))

(declare-fun b!5074888 () Bool)

(assert (=> b!5074888 (= e!3166251 e!3166252)))

(declare-fun c!871377 () Bool)

(assert (=> b!5074888 (= c!871377 ((_ is Leaf!25869) (left!42834 lt!2089940)))))

(assert (= (and d!1638689 c!871376) b!5074887))

(assert (= (and d!1638689 (not c!871376)) b!5074888))

(assert (= (and b!5074888 c!871377) b!5074889))

(assert (= (and b!5074888 (not c!871377)) b!5074890))

(declare-fun m!6122930 () Bool)

(assert (=> b!5074889 m!6122930))

(declare-fun m!6122932 () Bool)

(assert (=> b!5074890 m!6122932))

(declare-fun m!6122936 () Bool)

(assert (=> b!5074890 m!6122936))

(assert (=> b!5074890 m!6122932))

(assert (=> b!5074890 m!6122936))

(declare-fun m!6122938 () Bool)

(assert (=> b!5074890 m!6122938))

(assert (=> b!5074157 d!1638689))

(declare-fun b!5074893 () Bool)

(declare-fun e!3166254 () List!58570)

(assert (=> b!5074893 (= e!3166254 (list!19014 (xs!18936 (right!43164 lt!2089940))))))

(declare-fun b!5074894 () Bool)

(assert (=> b!5074894 (= e!3166254 (++!12800 (list!19013 (left!42834 (right!43164 lt!2089940))) (list!19013 (right!43164 (right!43164 lt!2089940)))))))

(declare-fun b!5074891 () Bool)

(declare-fun e!3166253 () List!58570)

(assert (=> b!5074891 (= e!3166253 Nil!58446)))

(declare-fun d!1638691 () Bool)

(declare-fun c!871378 () Bool)

(assert (=> d!1638691 (= c!871378 ((_ is Empty!15576) (right!43164 lt!2089940)))))

(assert (=> d!1638691 (= (list!19013 (right!43164 lt!2089940)) e!3166253)))

(declare-fun b!5074892 () Bool)

(assert (=> b!5074892 (= e!3166253 e!3166254)))

(declare-fun c!871379 () Bool)

(assert (=> b!5074892 (= c!871379 ((_ is Leaf!25869) (right!43164 lt!2089940)))))

(assert (= (and d!1638691 c!871378) b!5074891))

(assert (= (and d!1638691 (not c!871378)) b!5074892))

(assert (= (and b!5074892 c!871379) b!5074893))

(assert (= (and b!5074892 (not c!871379)) b!5074894))

(declare-fun m!6122952 () Bool)

(assert (=> b!5074893 m!6122952))

(declare-fun m!6122954 () Bool)

(assert (=> b!5074894 m!6122954))

(declare-fun m!6122956 () Bool)

(assert (=> b!5074894 m!6122956))

(assert (=> b!5074894 m!6122954))

(assert (=> b!5074894 m!6122956))

(declare-fun m!6122958 () Bool)

(assert (=> b!5074894 m!6122958))

(assert (=> b!5074157 d!1638691))

(assert (=> b!5074133 d!1638465))

(assert (=> b!5074133 d!1638467))

(declare-fun b!5074895 () Bool)

(declare-fun res!2160733 () Bool)

(declare-fun e!3166256 () Bool)

(assert (=> b!5074895 (=> (not res!2160733) (not e!3166256))))

(assert (=> b!5074895 (= res!2160733 (isBalanced!4438 (left!42834 (right!43164 xs!286))))))

(declare-fun b!5074896 () Bool)

(declare-fun res!2160736 () Bool)

(assert (=> b!5074896 (=> (not res!2160736) (not e!3166256))))

(assert (=> b!5074896 (= res!2160736 (<= (- (height!2153 (left!42834 (right!43164 xs!286))) (height!2153 (right!43164 (right!43164 xs!286)))) 1))))

(declare-fun d!1638693 () Bool)

(declare-fun res!2160735 () Bool)

(declare-fun e!3166255 () Bool)

(assert (=> d!1638693 (=> res!2160735 e!3166255)))

(assert (=> d!1638693 (= res!2160735 (not ((_ is Node!15576) (right!43164 xs!286))))))

(assert (=> d!1638693 (= (isBalanced!4438 (right!43164 xs!286)) e!3166255)))

(declare-fun b!5074897 () Bool)

(assert (=> b!5074897 (= e!3166256 (not (isEmpty!31655 (right!43164 (right!43164 xs!286)))))))

(declare-fun b!5074898 () Bool)

(declare-fun res!2160734 () Bool)

(assert (=> b!5074898 (=> (not res!2160734) (not e!3166256))))

(assert (=> b!5074898 (= res!2160734 (not (isEmpty!31655 (left!42834 (right!43164 xs!286)))))))

(declare-fun b!5074899 () Bool)

(assert (=> b!5074899 (= e!3166255 e!3166256)))

(declare-fun res!2160737 () Bool)

(assert (=> b!5074899 (=> (not res!2160737) (not e!3166256))))

(assert (=> b!5074899 (= res!2160737 (<= (- 1) (- (height!2153 (left!42834 (right!43164 xs!286))) (height!2153 (right!43164 (right!43164 xs!286))))))))

(declare-fun b!5074900 () Bool)

(declare-fun res!2160738 () Bool)

(assert (=> b!5074900 (=> (not res!2160738) (not e!3166256))))

(assert (=> b!5074900 (= res!2160738 (isBalanced!4438 (right!43164 (right!43164 xs!286))))))

(assert (= (and d!1638693 (not res!2160735)) b!5074899))

(assert (= (and b!5074899 res!2160737) b!5074896))

(assert (= (and b!5074896 res!2160736) b!5074895))

(assert (= (and b!5074895 res!2160733) b!5074900))

(assert (= (and b!5074900 res!2160738) b!5074898))

(assert (= (and b!5074898 res!2160734) b!5074897))

(declare-fun m!6122964 () Bool)

(assert (=> b!5074898 m!6122964))

(declare-fun m!6122966 () Bool)

(assert (=> b!5074897 m!6122966))

(declare-fun m!6122968 () Bool)

(assert (=> b!5074900 m!6122968))

(assert (=> b!5074899 m!6122764))

(assert (=> b!5074899 m!6122766))

(assert (=> b!5074896 m!6122764))

(assert (=> b!5074896 m!6122766))

(declare-fun m!6122972 () Bool)

(assert (=> b!5074895 m!6122972))

(assert (=> b!5074243 d!1638693))

(declare-fun d!1638695 () Bool)

(declare-fun c!871380 () Bool)

(assert (=> d!1638695 (= c!871380 ((_ is Node!15576) (left!42834 (right!43164 ys!41))))))

(declare-fun e!3166257 () Bool)

(assert (=> d!1638695 (= (inv!77621 (left!42834 (right!43164 ys!41))) e!3166257)))

(declare-fun b!5074901 () Bool)

(assert (=> b!5074901 (= e!3166257 (inv!77625 (left!42834 (right!43164 ys!41))))))

(declare-fun b!5074902 () Bool)

(declare-fun e!3166258 () Bool)

(assert (=> b!5074902 (= e!3166257 e!3166258)))

(declare-fun res!2160739 () Bool)

(assert (=> b!5074902 (= res!2160739 (not ((_ is Leaf!25869) (left!42834 (right!43164 ys!41)))))))

(assert (=> b!5074902 (=> res!2160739 e!3166258)))

(declare-fun b!5074903 () Bool)

(assert (=> b!5074903 (= e!3166258 (inv!77626 (left!42834 (right!43164 ys!41))))))

(assert (= (and d!1638695 c!871380) b!5074901))

(assert (= (and d!1638695 (not c!871380)) b!5074902))

(assert (= (and b!5074902 (not res!2160739)) b!5074903))

(declare-fun m!6122978 () Bool)

(assert (=> b!5074901 m!6122978))

(declare-fun m!6122980 () Bool)

(assert (=> b!5074903 m!6122980))

(assert (=> b!5074565 d!1638695))

(declare-fun d!1638697 () Bool)

(declare-fun c!871381 () Bool)

(assert (=> d!1638697 (= c!871381 ((_ is Node!15576) (right!43164 (right!43164 ys!41))))))

(declare-fun e!3166259 () Bool)

(assert (=> d!1638697 (= (inv!77621 (right!43164 (right!43164 ys!41))) e!3166259)))

(declare-fun b!5074904 () Bool)

(assert (=> b!5074904 (= e!3166259 (inv!77625 (right!43164 (right!43164 ys!41))))))

(declare-fun b!5074905 () Bool)

(declare-fun e!3166260 () Bool)

(assert (=> b!5074905 (= e!3166259 e!3166260)))

(declare-fun res!2160740 () Bool)

(assert (=> b!5074905 (= res!2160740 (not ((_ is Leaf!25869) (right!43164 (right!43164 ys!41)))))))

(assert (=> b!5074905 (=> res!2160740 e!3166260)))

(declare-fun b!5074906 () Bool)

(assert (=> b!5074906 (= e!3166260 (inv!77626 (right!43164 (right!43164 ys!41))))))

(assert (= (and d!1638697 c!871381) b!5074904))

(assert (= (and d!1638697 (not c!871381)) b!5074905))

(assert (= (and b!5074905 (not res!2160740)) b!5074906))

(declare-fun m!6122986 () Bool)

(assert (=> b!5074904 m!6122986))

(declare-fun m!6122990 () Bool)

(assert (=> b!5074906 m!6122990))

(assert (=> b!5074565 d!1638697))

(declare-fun b!5074907 () Bool)

(declare-fun res!2160741 () Bool)

(declare-fun e!3166262 () Bool)

(assert (=> b!5074907 (=> (not res!2160741) (not e!3166262))))

(assert (=> b!5074907 (= res!2160741 (isBalanced!4438 (left!42834 (right!43164 lt!2089940))))))

(declare-fun b!5074908 () Bool)

(declare-fun res!2160744 () Bool)

(assert (=> b!5074908 (=> (not res!2160744) (not e!3166262))))

(assert (=> b!5074908 (= res!2160744 (<= (- (height!2153 (left!42834 (right!43164 lt!2089940))) (height!2153 (right!43164 (right!43164 lt!2089940)))) 1))))

(declare-fun d!1638699 () Bool)

(declare-fun res!2160743 () Bool)

(declare-fun e!3166261 () Bool)

(assert (=> d!1638699 (=> res!2160743 e!3166261)))

(assert (=> d!1638699 (= res!2160743 (not ((_ is Node!15576) (right!43164 lt!2089940))))))

(assert (=> d!1638699 (= (isBalanced!4438 (right!43164 lt!2089940)) e!3166261)))

(declare-fun b!5074909 () Bool)

(assert (=> b!5074909 (= e!3166262 (not (isEmpty!31655 (right!43164 (right!43164 lt!2089940)))))))

(declare-fun b!5074910 () Bool)

(declare-fun res!2160742 () Bool)

(assert (=> b!5074910 (=> (not res!2160742) (not e!3166262))))

(assert (=> b!5074910 (= res!2160742 (not (isEmpty!31655 (left!42834 (right!43164 lt!2089940)))))))

(declare-fun b!5074911 () Bool)

(assert (=> b!5074911 (= e!3166261 e!3166262)))

(declare-fun res!2160745 () Bool)

(assert (=> b!5074911 (=> (not res!2160745) (not e!3166262))))

(assert (=> b!5074911 (= res!2160745 (<= (- 1) (- (height!2153 (left!42834 (right!43164 lt!2089940))) (height!2153 (right!43164 (right!43164 lt!2089940))))))))

(declare-fun b!5074912 () Bool)

(declare-fun res!2160746 () Bool)

(assert (=> b!5074912 (=> (not res!2160746) (not e!3166262))))

(assert (=> b!5074912 (= res!2160746 (isBalanced!4438 (right!43164 (right!43164 lt!2089940))))))

(assert (= (and d!1638699 (not res!2160743)) b!5074911))

(assert (= (and b!5074911 res!2160745) b!5074908))

(assert (= (and b!5074908 res!2160744) b!5074907))

(assert (= (and b!5074907 res!2160741) b!5074912))

(assert (= (and b!5074912 res!2160746) b!5074910))

(assert (= (and b!5074910 res!2160742) b!5074909))

(declare-fun m!6122992 () Bool)

(assert (=> b!5074910 m!6122992))

(declare-fun m!6122994 () Bool)

(assert (=> b!5074909 m!6122994))

(declare-fun m!6122996 () Bool)

(assert (=> b!5074912 m!6122996))

(declare-fun m!6122998 () Bool)

(assert (=> b!5074911 m!6122998))

(declare-fun m!6123000 () Bool)

(assert (=> b!5074911 m!6123000))

(assert (=> b!5074908 m!6122998))

(assert (=> b!5074908 m!6123000))

(declare-fun m!6123002 () Bool)

(assert (=> b!5074907 m!6123002))

(assert (=> b!5074285 d!1638699))

(declare-fun b!5074917 () Bool)

(declare-fun res!2160747 () Bool)

(declare-fun e!3166266 () Bool)

(assert (=> b!5074917 (=> (not res!2160747) (not e!3166266))))

(assert (=> b!5074917 (= res!2160747 (isBalanced!4438 (left!42834 lt!2089978)))))

(declare-fun b!5074918 () Bool)

(declare-fun res!2160750 () Bool)

(assert (=> b!5074918 (=> (not res!2160750) (not e!3166266))))

(assert (=> b!5074918 (= res!2160750 (<= (- (height!2153 (left!42834 lt!2089978)) (height!2153 (right!43164 lt!2089978))) 1))))

(declare-fun d!1638703 () Bool)

(declare-fun res!2160749 () Bool)

(declare-fun e!3166265 () Bool)

(assert (=> d!1638703 (=> res!2160749 e!3166265)))

(assert (=> d!1638703 (= res!2160749 (not ((_ is Node!15576) lt!2089978)))))

(assert (=> d!1638703 (= (isBalanced!4438 lt!2089978) e!3166265)))

(declare-fun b!5074919 () Bool)

(assert (=> b!5074919 (= e!3166266 (not (isEmpty!31655 (right!43164 lt!2089978))))))

(declare-fun b!5074920 () Bool)

(declare-fun res!2160748 () Bool)

(assert (=> b!5074920 (=> (not res!2160748) (not e!3166266))))

(assert (=> b!5074920 (= res!2160748 (not (isEmpty!31655 (left!42834 lt!2089978))))))

(declare-fun b!5074921 () Bool)

(assert (=> b!5074921 (= e!3166265 e!3166266)))

(declare-fun res!2160751 () Bool)

(assert (=> b!5074921 (=> (not res!2160751) (not e!3166266))))

(assert (=> b!5074921 (= res!2160751 (<= (- 1) (- (height!2153 (left!42834 lt!2089978)) (height!2153 (right!43164 lt!2089978)))))))

(declare-fun b!5074922 () Bool)

(declare-fun res!2160752 () Bool)

(assert (=> b!5074922 (=> (not res!2160752) (not e!3166266))))

(assert (=> b!5074922 (= res!2160752 (isBalanced!4438 (right!43164 lt!2089978)))))

(assert (= (and d!1638703 (not res!2160749)) b!5074921))

(assert (= (and b!5074921 res!2160751) b!5074918))

(assert (= (and b!5074918 res!2160750) b!5074917))

(assert (= (and b!5074917 res!2160747) b!5074922))

(assert (= (and b!5074922 res!2160752) b!5074920))

(assert (= (and b!5074920 res!2160748) b!5074919))

(declare-fun m!6123004 () Bool)

(assert (=> b!5074920 m!6123004))

(declare-fun m!6123006 () Bool)

(assert (=> b!5074919 m!6123006))

(declare-fun m!6123008 () Bool)

(assert (=> b!5074922 m!6123008))

(declare-fun m!6123010 () Bool)

(assert (=> b!5074921 m!6123010))

(declare-fun m!6123012 () Bool)

(assert (=> b!5074921 m!6123012))

(assert (=> b!5074918 m!6123010))

(assert (=> b!5074918 m!6123012))

(declare-fun m!6123014 () Bool)

(assert (=> b!5074917 m!6123014))

(assert (=> b!5074516 d!1638703))

(assert (=> b!5074239 d!1638525))

(assert (=> b!5074239 d!1638527))

(assert (=> b!5074281 d!1638545))

(assert (=> b!5074281 d!1638547))

(declare-fun d!1638705 () Bool)

(declare-fun res!2160753 () Bool)

(declare-fun e!3166267 () Bool)

(assert (=> d!1638705 (=> (not res!2160753) (not e!3166267))))

(assert (=> d!1638705 (= res!2160753 (<= (size!39099 (list!19014 (xs!18936 ys!41))) 512))))

(assert (=> d!1638705 (= (inv!77626 ys!41) e!3166267)))

(declare-fun b!5074923 () Bool)

(declare-fun res!2160754 () Bool)

(assert (=> b!5074923 (=> (not res!2160754) (not e!3166267))))

(assert (=> b!5074923 (= res!2160754 (= (csize!31383 ys!41) (size!39099 (list!19014 (xs!18936 ys!41)))))))

(declare-fun b!5074924 () Bool)

(assert (=> b!5074924 (= e!3166267 (and (> (csize!31383 ys!41) 0) (<= (csize!31383 ys!41) 512)))))

(assert (= (and d!1638705 res!2160753) b!5074923))

(assert (= (and b!5074923 res!2160754) b!5074924))

(assert (=> d!1638705 m!6122034))

(assert (=> d!1638705 m!6122034))

(declare-fun m!6123026 () Bool)

(assert (=> d!1638705 m!6123026))

(assert (=> b!5074923 m!6122034))

(assert (=> b!5074923 m!6122034))

(assert (=> b!5074923 m!6123026))

(assert (=> b!5074255 d!1638705))

(declare-fun d!1638707 () Bool)

(assert (=> d!1638707 (= (height!2153 lt!2089978) (ite ((_ is Empty!15576) lt!2089978) 0 (ite ((_ is Leaf!25869) lt!2089978) 1 (cheight!15787 lt!2089978))))))

(assert (=> b!5074526 d!1638707))

(declare-fun d!1638709 () Bool)

(assert (=> d!1638709 (= (max!0 (height!2153 xs!286) (height!2153 (left!42834 ys!41))) (ite (< (height!2153 xs!286) (height!2153 (left!42834 ys!41))) (height!2153 (left!42834 ys!41)) (height!2153 xs!286)))))

(assert (=> b!5074526 d!1638709))

(assert (=> b!5074526 d!1638461))

(assert (=> b!5074526 d!1638479))

(declare-fun d!1638711 () Bool)

(assert (=> d!1638711 (= (height!2153 (ite c!871276 lt!2089979 lt!2089976)) (ite ((_ is Empty!15576) (ite c!871276 lt!2089979 lt!2089976)) 0 (ite ((_ is Leaf!25869) (ite c!871276 lt!2089979 lt!2089976)) 1 (cheight!15787 (ite c!871276 lt!2089979 lt!2089976)))))))

(assert (=> bm!353481 d!1638711))

(assert (=> b!5074332 d!1638437))

(assert (=> b!5074332 d!1638605))

(assert (=> b!5074332 d!1638543))

(declare-fun bm!353565 () Bool)

(declare-fun call!353573 () List!58570)

(declare-fun call!353572 () List!58570)

(assert (=> bm!353565 (= call!353573 (++!12800 call!353572 (list!19013 (right!43164 ys!41))))))

(declare-fun bm!353566 () Bool)

(assert (=> bm!353566 (= call!353572 (++!12800 (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 ys!41)))) (list!19013 (right!43164 (left!42834 ys!41)))))))

(declare-fun d!1638715 () Bool)

(declare-fun e!3166270 () Bool)

(assert (=> d!1638715 e!3166270))

(declare-fun c!871385 () Bool)

(assert (=> d!1638715 (= c!871385 ((_ is Nil!58446) (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 ys!41))))))))

(assert (=> d!1638715 (= (appendAssoc!308 (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 ys!41)))) (list!19013 (right!43164 (left!42834 ys!41))) (list!19013 (right!43164 ys!41))) true)))

(declare-fun call!353571 () List!58570)

(declare-fun bm!353567 () Bool)

(declare-fun call!353570 () List!58570)

(assert (=> bm!353567 (= call!353571 (++!12800 (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 ys!41)))) call!353570))))

(declare-fun b!5074929 () Bool)

(assert (=> b!5074929 (= e!3166270 (= call!353573 call!353571))))

(declare-fun lt!2090026 () Bool)

(assert (=> b!5074929 (= lt!2090026 (appendAssoc!308 (t!371357 (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 ys!41))))) (list!19013 (right!43164 (left!42834 ys!41))) (list!19013 (right!43164 ys!41))))))

(declare-fun b!5074930 () Bool)

(assert (=> b!5074930 (= e!3166270 (= call!353573 call!353571))))

(declare-fun bm!353568 () Bool)

(assert (=> bm!353568 (= call!353570 (++!12800 (list!19013 (right!43164 (left!42834 ys!41))) (list!19013 (right!43164 ys!41))))))

(assert (= (and d!1638715 c!871385) b!5074930))

(assert (= (and d!1638715 (not c!871385)) b!5074929))

(assert (= (or b!5074930 b!5074929) bm!353566))

(assert (= (or b!5074930 b!5074929) bm!353568))

(assert (= (or b!5074930 b!5074929) bm!353567))

(assert (= (or b!5074930 b!5074929) bm!353565))

(assert (=> b!5074929 m!6122176))

(assert (=> b!5074929 m!6122038))

(declare-fun m!6123036 () Bool)

(assert (=> b!5074929 m!6123036))

(assert (=> bm!353566 m!6122174))

(assert (=> bm!353566 m!6122176))

(declare-fun m!6123038 () Bool)

(assert (=> bm!353566 m!6123038))

(assert (=> bm!353565 m!6122038))

(declare-fun m!6123042 () Bool)

(assert (=> bm!353565 m!6123042))

(assert (=> bm!353568 m!6122176))

(assert (=> bm!353568 m!6122038))

(declare-fun m!6123044 () Bool)

(assert (=> bm!353568 m!6123044))

(assert (=> bm!353567 m!6122174))

(declare-fun m!6123048 () Bool)

(assert (=> bm!353567 m!6123048))

(assert (=> b!5074332 d!1638715))

(declare-fun b!5074934 () Bool)

(declare-fun lt!2090027 () List!58570)

(declare-fun e!3166272 () Bool)

(assert (=> b!5074934 (= e!3166272 (or (not (= (list!19013 (left!42834 (left!42834 ys!41))) Nil!58446)) (= lt!2090027 (list!19013 xs!286))))))

(declare-fun b!5074932 () Bool)

(declare-fun e!3166271 () List!58570)

(assert (=> b!5074932 (= e!3166271 (Cons!58446 (h!64894 (list!19013 xs!286)) (++!12800 (t!371357 (list!19013 xs!286)) (list!19013 (left!42834 (left!42834 ys!41))))))))

(declare-fun d!1638717 () Bool)

(assert (=> d!1638717 e!3166272))

(declare-fun res!2160758 () Bool)

(assert (=> d!1638717 (=> (not res!2160758) (not e!3166272))))

(assert (=> d!1638717 (= res!2160758 (= (content!10423 lt!2090027) ((_ map or) (content!10423 (list!19013 xs!286)) (content!10423 (list!19013 (left!42834 (left!42834 ys!41)))))))))

(assert (=> d!1638717 (= lt!2090027 e!3166271)))

(declare-fun c!871386 () Bool)

(assert (=> d!1638717 (= c!871386 ((_ is Nil!58446) (list!19013 xs!286)))))

(assert (=> d!1638717 (= (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 ys!41)))) lt!2090027)))

(declare-fun b!5074933 () Bool)

(declare-fun res!2160757 () Bool)

(assert (=> b!5074933 (=> (not res!2160757) (not e!3166272))))

(assert (=> b!5074933 (= res!2160757 (= (size!39099 lt!2090027) (+ (size!39099 (list!19013 xs!286)) (size!39099 (list!19013 (left!42834 (left!42834 ys!41)))))))))

(declare-fun b!5074931 () Bool)

(assert (=> b!5074931 (= e!3166271 (list!19013 (left!42834 (left!42834 ys!41))))))

(assert (= (and d!1638717 c!871386) b!5074931))

(assert (= (and d!1638717 (not c!871386)) b!5074932))

(assert (= (and d!1638717 res!2160758) b!5074933))

(assert (= (and b!5074933 res!2160757) b!5074934))

(assert (=> b!5074932 m!6122180))

(declare-fun m!6123060 () Bool)

(assert (=> b!5074932 m!6123060))

(declare-fun m!6123062 () Bool)

(assert (=> d!1638717 m!6123062))

(assert (=> d!1638717 m!6121978))

(assert (=> d!1638717 m!6122016))

(assert (=> d!1638717 m!6122180))

(declare-fun m!6123064 () Bool)

(assert (=> d!1638717 m!6123064))

(declare-fun m!6123068 () Bool)

(assert (=> b!5074933 m!6123068))

(assert (=> b!5074933 m!6121978))

(assert (=> b!5074933 m!6122022))

(assert (=> b!5074933 m!6122180))

(declare-fun m!6123072 () Bool)

(assert (=> b!5074933 m!6123072))

(assert (=> b!5074332 d!1638717))

(assert (=> b!5074332 d!1638541))

(declare-fun d!1638721 () Bool)

(declare-fun res!2160759 () Bool)

(declare-fun e!3166275 () Bool)

(assert (=> d!1638721 (=> (not res!2160759) (not e!3166275))))

(assert (=> d!1638721 (= res!2160759 (<= (size!39099 (list!19014 (xs!18936 (right!43164 ys!41)))) 512))))

(assert (=> d!1638721 (= (inv!77626 (right!43164 ys!41)) e!3166275)))

(declare-fun b!5074939 () Bool)

(declare-fun res!2160760 () Bool)

(assert (=> b!5074939 (=> (not res!2160760) (not e!3166275))))

(assert (=> b!5074939 (= res!2160760 (= (csize!31383 (right!43164 ys!41)) (size!39099 (list!19014 (xs!18936 (right!43164 ys!41))))))))

(declare-fun b!5074940 () Bool)

(assert (=> b!5074940 (= e!3166275 (and (> (csize!31383 (right!43164 ys!41)) 0) (<= (csize!31383 (right!43164 ys!41)) 512)))))

(assert (= (and d!1638721 res!2160759) b!5074939))

(assert (= (and b!5074939 res!2160760) b!5074940))

(assert (=> d!1638721 m!6122608))

(assert (=> d!1638721 m!6122608))

(declare-fun m!6123078 () Bool)

(assert (=> d!1638721 m!6123078))

(assert (=> b!5074939 m!6122608))

(assert (=> b!5074939 m!6122608))

(assert (=> b!5074939 m!6123078))

(assert (=> b!5074541 d!1638721))

(declare-fun d!1638725 () Bool)

(declare-fun lt!2090028 () Bool)

(assert (=> d!1638725 (= lt!2090028 (isEmpty!31656 (list!19013 (left!42834 xs!286))))))

(assert (=> d!1638725 (= lt!2090028 (= (size!39101 (left!42834 xs!286)) 0))))

(assert (=> d!1638725 (= (isEmpty!31655 (left!42834 xs!286)) lt!2090028)))

(declare-fun bs!1190342 () Bool)

(assert (= bs!1190342 d!1638725))

(assert (=> bs!1190342 m!6122028))

(assert (=> bs!1190342 m!6122028))

(declare-fun m!6123080 () Bool)

(assert (=> bs!1190342 m!6123080))

(assert (=> bs!1190342 m!6122874))

(assert (=> b!5074241 d!1638725))

(declare-fun d!1638729 () Bool)

(declare-fun lt!2090029 () Bool)

(assert (=> d!1638729 (= lt!2090029 (isEmpty!31656 (list!19013 (right!43164 ys!41))))))

(assert (=> d!1638729 (= lt!2090029 (= (size!39101 (right!43164 ys!41)) 0))))

(assert (=> d!1638729 (= (isEmpty!31655 (right!43164 ys!41)) lt!2090029)))

(declare-fun bs!1190343 () Bool)

(assert (= bs!1190343 d!1638729))

(assert (=> bs!1190343 m!6122038))

(assert (=> bs!1190343 m!6122038))

(declare-fun m!6123084 () Bool)

(assert (=> bs!1190343 m!6123084))

(assert (=> bs!1190343 m!6122192))

(assert (=> b!5074544 d!1638729))

(declare-fun d!1638731 () Bool)

(assert (=> d!1638731 (= (inv!77622 (xs!18936 (left!42834 xs!286))) (<= (size!39099 (innerList!15664 (xs!18936 (left!42834 xs!286)))) 2147483647))))

(declare-fun bs!1190344 () Bool)

(assert (= bs!1190344 d!1638731))

(declare-fun m!6123086 () Bool)

(assert (=> bs!1190344 m!6123086))

(assert (=> b!5074569 d!1638731))

(declare-fun d!1638737 () Bool)

(declare-fun res!2160763 () Bool)

(declare-fun e!3166279 () Bool)

(assert (=> d!1638737 (=> (not res!2160763) (not e!3166279))))

(assert (=> d!1638737 (= res!2160763 (= (csize!31382 ys!41) (+ (size!39101 (left!42834 ys!41)) (size!39101 (right!43164 ys!41)))))))

(assert (=> d!1638737 (= (inv!77625 ys!41) e!3166279)))

(declare-fun b!5074947 () Bool)

(declare-fun res!2160764 () Bool)

(assert (=> b!5074947 (=> (not res!2160764) (not e!3166279))))

(assert (=> b!5074947 (= res!2160764 (and (not (= (left!42834 ys!41) Empty!15576)) (not (= (right!43164 ys!41) Empty!15576))))))

(declare-fun b!5074948 () Bool)

(declare-fun res!2160765 () Bool)

(assert (=> b!5074948 (=> (not res!2160765) (not e!3166279))))

(assert (=> b!5074948 (= res!2160765 (= (cheight!15787 ys!41) (+ (max!0 (height!2153 (left!42834 ys!41)) (height!2153 (right!43164 ys!41))) 1)))))

(declare-fun b!5074949 () Bool)

(assert (=> b!5074949 (= e!3166279 (<= 0 (cheight!15787 ys!41)))))

(assert (= (and d!1638737 res!2160763) b!5074947))

(assert (= (and b!5074947 res!2160764) b!5074948))

(assert (= (and b!5074948 res!2160765) b!5074949))

(assert (=> d!1638737 m!6122562))

(assert (=> d!1638737 m!6122192))

(assert (=> b!5074948 m!6121990))

(assert (=> b!5074948 m!6121988))

(assert (=> b!5074948 m!6121990))

(assert (=> b!5074948 m!6121988))

(declare-fun m!6123092 () Bool)

(assert (=> b!5074948 m!6123092))

(assert (=> b!5074253 d!1638737))

(assert (=> b!5074524 d!1638479))

(assert (=> b!5074524 d!1638461))

(assert (=> b!5074546 d!1638479))

(assert (=> b!5074546 d!1638477))

(declare-fun d!1638743 () Bool)

(declare-fun res!2160768 () Bool)

(declare-fun e!3166284 () Bool)

(assert (=> d!1638743 (=> (not res!2160768) (not e!3166284))))

(assert (=> d!1638743 (= res!2160768 (= (csize!31382 (right!43164 ys!41)) (+ (size!39101 (left!42834 (right!43164 ys!41))) (size!39101 (right!43164 (right!43164 ys!41))))))))

(assert (=> d!1638743 (= (inv!77625 (right!43164 ys!41)) e!3166284)))

(declare-fun b!5074956 () Bool)

(declare-fun res!2160769 () Bool)

(assert (=> b!5074956 (=> (not res!2160769) (not e!3166284))))

(assert (=> b!5074956 (= res!2160769 (and (not (= (left!42834 (right!43164 ys!41)) Empty!15576)) (not (= (right!43164 (right!43164 ys!41)) Empty!15576))))))

(declare-fun b!5074957 () Bool)

(declare-fun res!2160770 () Bool)

(assert (=> b!5074957 (=> (not res!2160770) (not e!3166284))))

(assert (=> b!5074957 (= res!2160770 (= (cheight!15787 (right!43164 ys!41)) (+ (max!0 (height!2153 (left!42834 (right!43164 ys!41))) (height!2153 (right!43164 (right!43164 ys!41)))) 1)))))

(declare-fun b!5074958 () Bool)

(assert (=> b!5074958 (= e!3166284 (<= 0 (cheight!15787 (right!43164 ys!41))))))

(assert (= (and d!1638743 res!2160768) b!5074956))

(assert (= (and b!5074956 res!2160769) b!5074957))

(assert (= (and b!5074957 res!2160770) b!5074958))

(declare-fun m!6123098 () Bool)

(assert (=> d!1638743 m!6123098))

(declare-fun m!6123100 () Bool)

(assert (=> d!1638743 m!6123100))

(assert (=> b!5074957 m!6122462))

(assert (=> b!5074957 m!6122464))

(assert (=> b!5074957 m!6122462))

(assert (=> b!5074957 m!6122464))

(declare-fun m!6123106 () Bool)

(assert (=> b!5074957 m!6123106))

(assert (=> b!5074539 d!1638743))

(declare-fun bm!353569 () Bool)

(declare-fun call!353577 () List!58570)

(declare-fun call!353576 () List!58570)

(assert (=> bm!353569 (= call!353577 (++!12800 call!353576 (list!19013 ys!41)))))

(declare-fun bm!353570 () Bool)

(assert (=> bm!353570 (= call!353576 (++!12800 (list!19013 (left!42834 xs!286)) (list!19013 (right!43164 xs!286))))))

(declare-fun d!1638747 () Bool)

(declare-fun e!3166286 () Bool)

(assert (=> d!1638747 e!3166286))

(declare-fun c!871393 () Bool)

(assert (=> d!1638747 (= c!871393 ((_ is Nil!58446) (list!19013 (left!42834 xs!286))))))

(assert (=> d!1638747 (= (appendAssoc!308 (list!19013 (left!42834 xs!286)) (list!19013 (right!43164 xs!286)) (list!19013 ys!41)) true)))

(declare-fun bm!353571 () Bool)

(declare-fun call!353575 () List!58570)

(declare-fun call!353574 () List!58570)

(assert (=> bm!353571 (= call!353575 (++!12800 (list!19013 (left!42834 xs!286)) call!353574))))

(declare-fun b!5074962 () Bool)

(assert (=> b!5074962 (= e!3166286 (= call!353577 call!353575))))

(declare-fun lt!2090030 () Bool)

(assert (=> b!5074962 (= lt!2090030 (appendAssoc!308 (t!371357 (list!19013 (left!42834 xs!286))) (list!19013 (right!43164 xs!286)) (list!19013 ys!41)))))

(declare-fun b!5074963 () Bool)

(assert (=> b!5074963 (= e!3166286 (= call!353577 call!353575))))

(declare-fun bm!353572 () Bool)

(assert (=> bm!353572 (= call!353574 (++!12800 (list!19013 (right!43164 xs!286)) (list!19013 ys!41)))))

(assert (= (and d!1638747 c!871393) b!5074963))

(assert (= (and d!1638747 (not c!871393)) b!5074962))

(assert (= (or b!5074963 b!5074962) bm!353570))

(assert (= (or b!5074963 b!5074962) bm!353572))

(assert (= (or b!5074963 b!5074962) bm!353571))

(assert (= (or b!5074963 b!5074962) bm!353569))

(assert (=> b!5074962 m!6122030))

(assert (=> b!5074962 m!6121980))

(declare-fun m!6123110 () Bool)

(assert (=> b!5074962 m!6123110))

(assert (=> bm!353570 m!6122028))

(assert (=> bm!353570 m!6122030))

(assert (=> bm!353570 m!6122032))

(assert (=> bm!353569 m!6121980))

(declare-fun m!6123112 () Bool)

(assert (=> bm!353569 m!6123112))

(assert (=> bm!353572 m!6122030))

(assert (=> bm!353572 m!6121980))

(declare-fun m!6123116 () Bool)

(assert (=> bm!353572 m!6123116))

(assert (=> bm!353571 m!6122028))

(declare-fun m!6123120 () Bool)

(assert (=> bm!353571 m!6123120))

(assert (=> b!5074325 d!1638747))

(assert (=> b!5074325 d!1638583))

(assert (=> b!5074325 d!1638585))

(assert (=> b!5074325 d!1638439))

(declare-fun d!1638751 () Bool)

(assert (=> d!1638751 (= (height!2153 (++!12801 xs!286 (left!42834 ys!41))) (ite ((_ is Empty!15576) (++!12801 xs!286 (left!42834 ys!41))) 0 (ite ((_ is Leaf!25869) (++!12801 xs!286 (left!42834 ys!41))) 1 (cheight!15787 (++!12801 xs!286 (left!42834 ys!41))))))))

(assert (=> b!5074345 d!1638751))

(declare-fun d!1638753 () Bool)

(assert (=> d!1638753 (= (max!0 (height!2153 (++!12801 xs!286 (left!42834 ys!41))) (height!2153 (right!43164 ys!41))) (ite (< (height!2153 (++!12801 xs!286 (left!42834 ys!41))) (height!2153 (right!43164 ys!41))) (height!2153 (right!43164 ys!41)) (height!2153 (++!12801 xs!286 (left!42834 ys!41)))))))

(assert (=> b!5074345 d!1638753))

(assert (=> b!5074345 d!1638477))

(declare-fun d!1638757 () Bool)

(declare-fun lt!2090036 () Int)

(assert (=> d!1638757 (= lt!2090036 (size!39099 (list!19013 (right!43164 ys!41))))))

(assert (=> d!1638757 (= lt!2090036 (ite ((_ is Empty!15576) (right!43164 ys!41)) 0 (ite ((_ is Leaf!25869) (right!43164 ys!41)) (csize!31383 (right!43164 ys!41)) (csize!31382 (right!43164 ys!41)))))))

(assert (=> d!1638757 (= (size!39101 (right!43164 ys!41)) lt!2090036)))

(declare-fun bs!1190346 () Bool)

(assert (= bs!1190346 d!1638757))

(assert (=> bs!1190346 m!6122038))

(assert (=> bs!1190346 m!6122038))

(assert (=> bs!1190346 m!6122646))

(assert (=> b!5074345 d!1638757))

(declare-fun d!1638771 () Bool)

(declare-fun lt!2090037 () Int)

(assert (=> d!1638771 (= lt!2090037 (size!39099 (list!19013 (++!12801 xs!286 (left!42834 ys!41)))))))

(assert (=> d!1638771 (= lt!2090037 (ite ((_ is Empty!15576) (++!12801 xs!286 (left!42834 ys!41))) 0 (ite ((_ is Leaf!25869) (++!12801 xs!286 (left!42834 ys!41))) (csize!31383 (++!12801 xs!286 (left!42834 ys!41))) (csize!31382 (++!12801 xs!286 (left!42834 ys!41))))))))

(assert (=> d!1638771 (= (size!39101 (++!12801 xs!286 (left!42834 ys!41))) lt!2090037)))

(declare-fun bs!1190347 () Bool)

(assert (= bs!1190347 d!1638771))

(assert (=> bs!1190347 m!6121956))

(assert (=> bs!1190347 m!6122202))

(assert (=> bs!1190347 m!6122202))

(assert (=> bs!1190347 m!6122894))

(assert (=> b!5074345 d!1638771))

(assert (=> b!5074543 d!1638479))

(assert (=> b!5074543 d!1638477))

(assert (=> b!5074327 d!1638439))

(assert (=> b!5074327 d!1638583))

(assert (=> b!5074327 d!1638573))

(declare-fun call!353589 () List!58570)

(declare-fun bm!353581 () Bool)

(declare-fun call!353588 () List!58570)

(assert (=> bm!353581 (= call!353589 (++!12800 call!353588 (++!12800 (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 ys!41))))))

(declare-fun bm!353582 () Bool)

(assert (=> bm!353582 (= call!353588 (++!12800 (list!19013 (left!42834 xs!286)) (list!19013 (left!42834 (right!43164 xs!286)))))))

(declare-fun d!1638775 () Bool)

(declare-fun e!3166299 () Bool)

(assert (=> d!1638775 e!3166299))

(declare-fun c!871403 () Bool)

(assert (=> d!1638775 (= c!871403 ((_ is Nil!58446) (list!19013 (left!42834 xs!286))))))

(assert (=> d!1638775 (= (appendAssoc!308 (list!19013 (left!42834 xs!286)) (list!19013 (left!42834 (right!43164 xs!286))) (++!12800 (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 ys!41))) true)))

(declare-fun bm!353583 () Bool)

(declare-fun call!353587 () List!58570)

(declare-fun call!353586 () List!58570)

(assert (=> bm!353583 (= call!353587 (++!12800 (list!19013 (left!42834 xs!286)) call!353586))))

(declare-fun b!5074986 () Bool)

(assert (=> b!5074986 (= e!3166299 (= call!353589 call!353587))))

(declare-fun lt!2090039 () Bool)

(assert (=> b!5074986 (= lt!2090039 (appendAssoc!308 (t!371357 (list!19013 (left!42834 xs!286))) (list!19013 (left!42834 (right!43164 xs!286))) (++!12800 (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 ys!41))))))

(declare-fun b!5074987 () Bool)

(assert (=> b!5074987 (= e!3166299 (= call!353589 call!353587))))

(declare-fun bm!353584 () Bool)

(assert (=> bm!353584 (= call!353586 (++!12800 (list!19013 (left!42834 (right!43164 xs!286))) (++!12800 (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 ys!41))))))

(assert (= (and d!1638775 c!871403) b!5074987))

(assert (= (and d!1638775 (not c!871403)) b!5074986))

(assert (= (or b!5074987 b!5074986) bm!353582))

(assert (= (or b!5074987 b!5074986) bm!353584))

(assert (= (or b!5074987 b!5074986) bm!353583))

(assert (= (or b!5074987 b!5074986) bm!353581))

(assert (=> b!5074986 m!6122168))

(assert (=> b!5074986 m!6122186))

(declare-fun m!6123172 () Bool)

(assert (=> b!5074986 m!6123172))

(assert (=> bm!353582 m!6122028))

(assert (=> bm!353582 m!6122168))

(declare-fun m!6123174 () Bool)

(assert (=> bm!353582 m!6123174))

(assert (=> bm!353581 m!6122186))

(declare-fun m!6123176 () Bool)

(assert (=> bm!353581 m!6123176))

(assert (=> bm!353584 m!6122168))

(assert (=> bm!353584 m!6122186))

(declare-fun m!6123178 () Bool)

(assert (=> bm!353584 m!6123178))

(assert (=> bm!353583 m!6122028))

(declare-fun m!6123180 () Bool)

(assert (=> bm!353583 m!6123180))

(assert (=> b!5074327 d!1638775))

(assert (=> b!5074327 d!1638565))

(declare-fun e!3166303 () Bool)

(declare-fun lt!2090040 () List!58570)

(declare-fun b!5074995 () Bool)

(assert (=> b!5074995 (= e!3166303 (or (not (= (list!19013 ys!41) Nil!58446)) (= lt!2090040 (list!19013 (right!43164 (right!43164 xs!286))))))))

(declare-fun b!5074993 () Bool)

(declare-fun e!3166302 () List!58570)

(assert (=> b!5074993 (= e!3166302 (Cons!58446 (h!64894 (list!19013 (right!43164 (right!43164 xs!286)))) (++!12800 (t!371357 (list!19013 (right!43164 (right!43164 xs!286)))) (list!19013 ys!41))))))

(declare-fun d!1638779 () Bool)

(assert (=> d!1638779 e!3166303))

(declare-fun res!2160779 () Bool)

(assert (=> d!1638779 (=> (not res!2160779) (not e!3166303))))

(assert (=> d!1638779 (= res!2160779 (= (content!10423 lt!2090040) ((_ map or) (content!10423 (list!19013 (right!43164 (right!43164 xs!286)))) (content!10423 (list!19013 ys!41)))))))

(assert (=> d!1638779 (= lt!2090040 e!3166302)))

(declare-fun c!871406 () Bool)

(assert (=> d!1638779 (= c!871406 ((_ is Nil!58446) (list!19013 (right!43164 (right!43164 xs!286)))))))

(assert (=> d!1638779 (= (++!12800 (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 ys!41)) lt!2090040)))

(declare-fun b!5074994 () Bool)

(declare-fun res!2160778 () Bool)

(assert (=> b!5074994 (=> (not res!2160778) (not e!3166303))))

(assert (=> b!5074994 (= res!2160778 (= (size!39099 lt!2090040) (+ (size!39099 (list!19013 (right!43164 (right!43164 xs!286)))) (size!39099 (list!19013 ys!41)))))))

(declare-fun b!5074992 () Bool)

(assert (=> b!5074992 (= e!3166302 (list!19013 ys!41))))

(assert (= (and d!1638779 c!871406) b!5074992))

(assert (= (and d!1638779 (not c!871406)) b!5074993))

(assert (= (and d!1638779 res!2160779) b!5074994))

(assert (= (and b!5074994 res!2160778) b!5074995))

(assert (=> b!5074993 m!6121980))

(declare-fun m!6123184 () Bool)

(assert (=> b!5074993 m!6123184))

(declare-fun m!6123186 () Bool)

(assert (=> d!1638779 m!6123186))

(assert (=> d!1638779 m!6122170))

(declare-fun m!6123188 () Bool)

(assert (=> d!1638779 m!6123188))

(assert (=> d!1638779 m!6121980))

(assert (=> d!1638779 m!6122018))

(declare-fun m!6123192 () Bool)

(assert (=> b!5074994 m!6123192))

(assert (=> b!5074994 m!6122170))

(declare-fun m!6123195 () Bool)

(assert (=> b!5074994 m!6123195))

(assert (=> b!5074994 m!6121980))

(assert (=> b!5074994 m!6122024))

(assert (=> b!5074327 d!1638779))

(declare-fun d!1638783 () Bool)

(declare-fun c!871408 () Bool)

(assert (=> d!1638783 (= c!871408 ((_ is Node!15576) (left!42834 (left!42834 xs!286))))))

(declare-fun e!3166306 () Bool)

(assert (=> d!1638783 (= (inv!77621 (left!42834 (left!42834 xs!286))) e!3166306)))

(declare-fun b!5075000 () Bool)

(assert (=> b!5075000 (= e!3166306 (inv!77625 (left!42834 (left!42834 xs!286))))))

(declare-fun b!5075001 () Bool)

(declare-fun e!3166307 () Bool)

(assert (=> b!5075001 (= e!3166306 e!3166307)))

(declare-fun res!2160782 () Bool)

(assert (=> b!5075001 (= res!2160782 (not ((_ is Leaf!25869) (left!42834 (left!42834 xs!286)))))))

(assert (=> b!5075001 (=> res!2160782 e!3166307)))

(declare-fun b!5075002 () Bool)

(assert (=> b!5075002 (= e!3166307 (inv!77626 (left!42834 (left!42834 xs!286))))))

(assert (= (and d!1638783 c!871408) b!5075000))

(assert (= (and d!1638783 (not c!871408)) b!5075001))

(assert (= (and b!5075001 (not res!2160782)) b!5075002))

(declare-fun m!6123204 () Bool)

(assert (=> b!5075000 m!6123204))

(declare-fun m!6123206 () Bool)

(assert (=> b!5075002 m!6123206))

(assert (=> b!5074568 d!1638783))

(declare-fun d!1638787 () Bool)

(declare-fun c!871410 () Bool)

(assert (=> d!1638787 (= c!871410 ((_ is Node!15576) (right!43164 (left!42834 xs!286))))))

(declare-fun e!3166309 () Bool)

(assert (=> d!1638787 (= (inv!77621 (right!43164 (left!42834 xs!286))) e!3166309)))

(declare-fun b!5075005 () Bool)

(assert (=> b!5075005 (= e!3166309 (inv!77625 (right!43164 (left!42834 xs!286))))))

(declare-fun b!5075006 () Bool)

(declare-fun e!3166310 () Bool)

(assert (=> b!5075006 (= e!3166309 e!3166310)))

(declare-fun res!2160783 () Bool)

(assert (=> b!5075006 (= res!2160783 (not ((_ is Leaf!25869) (right!43164 (left!42834 xs!286)))))))

(assert (=> b!5075006 (=> res!2160783 e!3166310)))

(declare-fun b!5075007 () Bool)

(assert (=> b!5075007 (= e!3166310 (inv!77626 (right!43164 (left!42834 xs!286))))))

(assert (= (and d!1638787 c!871410) b!5075005))

(assert (= (and d!1638787 (not c!871410)) b!5075006))

(assert (= (and b!5075006 (not res!2160783)) b!5075007))

(declare-fun m!6123208 () Bool)

(assert (=> b!5075005 m!6123208))

(declare-fun m!6123210 () Bool)

(assert (=> b!5075007 m!6123210))

(assert (=> b!5074568 d!1638787))

(declare-fun d!1638789 () Bool)

(assert (=> d!1638789 (= (list!19014 (xs!18936 ys!41)) (innerList!15664 (xs!18936 ys!41)))))

(assert (=> b!5074188 d!1638789))

(assert (=> b!5074522 d!1638615))

(declare-fun d!1638791 () Bool)

(declare-fun lt!2090043 () Int)

(assert (=> d!1638791 (>= lt!2090043 0)))

(declare-fun e!3166311 () Int)

(assert (=> d!1638791 (= lt!2090043 e!3166311)))

(declare-fun c!871411 () Bool)

(assert (=> d!1638791 (= c!871411 ((_ is Nil!58446) lt!2089946))))

(assert (=> d!1638791 (= (size!39099 lt!2089946) lt!2090043)))

(declare-fun b!5075008 () Bool)

(assert (=> b!5075008 (= e!3166311 0)))

(declare-fun b!5075009 () Bool)

(assert (=> b!5075009 (= e!3166311 (+ 1 (size!39099 (t!371357 lt!2089946))))))

(assert (= (and d!1638791 c!871411) b!5075008))

(assert (= (and d!1638791 (not c!871411)) b!5075009))

(declare-fun m!6123220 () Bool)

(assert (=> b!5075009 m!6123220))

(assert (=> b!5074180 d!1638791))

(declare-fun d!1638793 () Bool)

(declare-fun lt!2090044 () Int)

(assert (=> d!1638793 (>= lt!2090044 0)))

(declare-fun e!3166312 () Int)

(assert (=> d!1638793 (= lt!2090044 e!3166312)))

(declare-fun c!871412 () Bool)

(assert (=> d!1638793 (= c!871412 ((_ is Nil!58446) (list!19013 xs!286)))))

(assert (=> d!1638793 (= (size!39099 (list!19013 xs!286)) lt!2090044)))

(declare-fun b!5075010 () Bool)

(assert (=> b!5075010 (= e!3166312 0)))

(declare-fun b!5075011 () Bool)

(assert (=> b!5075011 (= e!3166312 (+ 1 (size!39099 (t!371357 (list!19013 xs!286)))))))

(assert (= (and d!1638793 c!871412) b!5075010))

(assert (= (and d!1638793 (not c!871412)) b!5075011))

(assert (=> b!5075011 m!6122718))

(assert (=> b!5074180 d!1638793))

(declare-fun d!1638797 () Bool)

(declare-fun lt!2090046 () Int)

(assert (=> d!1638797 (>= lt!2090046 0)))

(declare-fun e!3166313 () Int)

(assert (=> d!1638797 (= lt!2090046 e!3166313)))

(declare-fun c!871413 () Bool)

(assert (=> d!1638797 (= c!871413 ((_ is Nil!58446) (list!19013 ys!41)))))

(assert (=> d!1638797 (= (size!39099 (list!19013 ys!41)) lt!2090046)))

(declare-fun b!5075012 () Bool)

(assert (=> b!5075012 (= e!3166313 0)))

(declare-fun b!5075013 () Bool)

(assert (=> b!5075013 (= e!3166313 (+ 1 (size!39099 (t!371357 (list!19013 ys!41)))))))

(assert (= (and d!1638797 c!871413) b!5075012))

(assert (= (and d!1638797 (not c!871413)) b!5075013))

(declare-fun m!6123226 () Bool)

(assert (=> b!5075013 m!6123226))

(assert (=> b!5074180 d!1638797))

(declare-fun b!5075018 () Bool)

(declare-fun e!3166316 () List!58570)

(assert (=> b!5075018 (= e!3166316 (list!19014 (xs!18936 lt!2089978)))))

(declare-fun b!5075019 () Bool)

(assert (=> b!5075019 (= e!3166316 (++!12800 (list!19013 (left!42834 lt!2089978)) (list!19013 (right!43164 lt!2089978))))))

(declare-fun b!5075016 () Bool)

(declare-fun e!3166315 () List!58570)

(assert (=> b!5075016 (= e!3166315 Nil!58446)))

(declare-fun d!1638801 () Bool)

(declare-fun c!871415 () Bool)

(assert (=> d!1638801 (= c!871415 ((_ is Empty!15576) lt!2089978))))

(assert (=> d!1638801 (= (list!19013 lt!2089978) e!3166315)))

(declare-fun b!5075017 () Bool)

(assert (=> b!5075017 (= e!3166315 e!3166316)))

(declare-fun c!871416 () Bool)

(assert (=> b!5075017 (= c!871416 ((_ is Leaf!25869) lt!2089978))))

(assert (= (and d!1638801 c!871415) b!5075016))

(assert (= (and d!1638801 (not c!871415)) b!5075017))

(assert (= (and b!5075017 c!871416) b!5075018))

(assert (= (and b!5075017 (not c!871416)) b!5075019))

(declare-fun m!6123228 () Bool)

(assert (=> b!5075018 m!6123228))

(declare-fun m!6123232 () Bool)

(assert (=> b!5075019 m!6123232))

(declare-fun m!6123234 () Bool)

(assert (=> b!5075019 m!6123234))

(assert (=> b!5075019 m!6123232))

(assert (=> b!5075019 m!6123234))

(declare-fun m!6123238 () Bool)

(assert (=> b!5075019 m!6123238))

(assert (=> b!5074520 d!1638801))

(declare-fun lt!2090048 () List!58570)

(declare-fun e!3166318 () Bool)

(declare-fun b!5075023 () Bool)

(assert (=> b!5075023 (= e!3166318 (or (not (= (list!19013 (left!42834 ys!41)) Nil!58446)) (= lt!2090048 (list!19013 xs!286))))))

(declare-fun b!5075021 () Bool)

(declare-fun e!3166317 () List!58570)

(assert (=> b!5075021 (= e!3166317 (Cons!58446 (h!64894 (list!19013 xs!286)) (++!12800 (t!371357 (list!19013 xs!286)) (list!19013 (left!42834 ys!41)))))))

(declare-fun d!1638803 () Bool)

(assert (=> d!1638803 e!3166318))

(declare-fun res!2160785 () Bool)

(assert (=> d!1638803 (=> (not res!2160785) (not e!3166318))))

(assert (=> d!1638803 (= res!2160785 (= (content!10423 lt!2090048) ((_ map or) (content!10423 (list!19013 xs!286)) (content!10423 (list!19013 (left!42834 ys!41))))))))

(assert (=> d!1638803 (= lt!2090048 e!3166317)))

(declare-fun c!871417 () Bool)

(assert (=> d!1638803 (= c!871417 ((_ is Nil!58446) (list!19013 xs!286)))))

(assert (=> d!1638803 (= (++!12800 (list!19013 xs!286) (list!19013 (left!42834 ys!41))) lt!2090048)))

(declare-fun b!5075022 () Bool)

(declare-fun res!2160784 () Bool)

(assert (=> b!5075022 (=> (not res!2160784) (not e!3166318))))

(assert (=> b!5075022 (= res!2160784 (= (size!39099 lt!2090048) (+ (size!39099 (list!19013 xs!286)) (size!39099 (list!19013 (left!42834 ys!41))))))))

(declare-fun b!5075020 () Bool)

(assert (=> b!5075020 (= e!3166317 (list!19013 (left!42834 ys!41)))))

(assert (= (and d!1638803 c!871417) b!5075020))

(assert (= (and d!1638803 (not c!871417)) b!5075021))

(assert (= (and d!1638803 res!2160785) b!5075022))

(assert (= (and b!5075022 res!2160784) b!5075023))

(assert (=> b!5075021 m!6122036))

(declare-fun m!6123246 () Bool)

(assert (=> b!5075021 m!6123246))

(declare-fun m!6123248 () Bool)

(assert (=> d!1638803 m!6123248))

(assert (=> d!1638803 m!6121978))

(assert (=> d!1638803 m!6122016))

(assert (=> d!1638803 m!6122036))

(assert (=> d!1638803 m!6122636))

(declare-fun m!6123250 () Bool)

(assert (=> b!5075022 m!6123250))

(assert (=> b!5075022 m!6121978))

(assert (=> b!5075022 m!6122022))

(assert (=> b!5075022 m!6122036))

(assert (=> b!5075022 m!6122644))

(assert (=> b!5074520 d!1638803))

(assert (=> b!5074520 d!1638437))

(assert (=> b!5074520 d!1638601))

(declare-fun d!1638807 () Bool)

(assert (=> d!1638807 (= (inv!77622 (xs!18936 (right!43164 xs!286))) (<= (size!39099 (innerList!15664 (xs!18936 (right!43164 xs!286)))) 2147483647))))

(declare-fun bs!1190349 () Bool)

(assert (= bs!1190349 d!1638807))

(declare-fun m!6123262 () Bool)

(assert (=> bs!1190349 m!6123262))

(assert (=> b!5074572 d!1638807))

(declare-fun d!1638811 () Bool)

(declare-fun c!871421 () Bool)

(assert (=> d!1638811 (= c!871421 ((_ is Nil!58446) lt!2089946))))

(declare-fun e!3166323 () (InoxSet T!105202))

(assert (=> d!1638811 (= (content!10423 lt!2089946) e!3166323)))

(declare-fun b!5075032 () Bool)

(assert (=> b!5075032 (= e!3166323 ((as const (Array T!105202 Bool)) false))))

(declare-fun b!5075033 () Bool)

(assert (=> b!5075033 (= e!3166323 ((_ map or) (store ((as const (Array T!105202 Bool)) false) (h!64894 lt!2089946) true) (content!10423 (t!371357 lt!2089946))))))

(assert (= (and d!1638811 c!871421) b!5075032))

(assert (= (and d!1638811 (not c!871421)) b!5075033))

(declare-fun m!6123264 () Bool)

(assert (=> b!5075033 m!6123264))

(declare-fun m!6123266 () Bool)

(assert (=> b!5075033 m!6123266))

(assert (=> d!1638425 d!1638811))

(declare-fun d!1638817 () Bool)

(declare-fun c!871422 () Bool)

(assert (=> d!1638817 (= c!871422 ((_ is Nil!58446) (list!19013 xs!286)))))

(declare-fun e!3166324 () (InoxSet T!105202))

(assert (=> d!1638817 (= (content!10423 (list!19013 xs!286)) e!3166324)))

(declare-fun b!5075034 () Bool)

(assert (=> b!5075034 (= e!3166324 ((as const (Array T!105202 Bool)) false))))

(declare-fun b!5075035 () Bool)

(assert (=> b!5075035 (= e!3166324 ((_ map or) (store ((as const (Array T!105202 Bool)) false) (h!64894 (list!19013 xs!286)) true) (content!10423 (t!371357 (list!19013 xs!286)))))))

(assert (= (and d!1638817 c!871422) b!5075034))

(assert (= (and d!1638817 (not c!871422)) b!5075035))

(declare-fun m!6123268 () Bool)

(assert (=> b!5075035 m!6123268))

(assert (=> b!5075035 m!6122714))

(assert (=> d!1638425 d!1638817))

(declare-fun d!1638819 () Bool)

(declare-fun c!871423 () Bool)

(assert (=> d!1638819 (= c!871423 ((_ is Nil!58446) (list!19013 ys!41)))))

(declare-fun e!3166325 () (InoxSet T!105202))

(assert (=> d!1638819 (= (content!10423 (list!19013 ys!41)) e!3166325)))

(declare-fun b!5075036 () Bool)

(assert (=> b!5075036 (= e!3166325 ((as const (Array T!105202 Bool)) false))))

(declare-fun b!5075037 () Bool)

(assert (=> b!5075037 (= e!3166325 ((_ map or) (store ((as const (Array T!105202 Bool)) false) (h!64894 (list!19013 ys!41)) true) (content!10423 (t!371357 (list!19013 ys!41)))))))

(assert (= (and d!1638819 c!871423) b!5075036))

(assert (= (and d!1638819 (not c!871423)) b!5075037))

(declare-fun m!6123270 () Bool)

(assert (=> b!5075037 m!6123270))

(declare-fun m!6123272 () Bool)

(assert (=> b!5075037 m!6123272))

(assert (=> d!1638425 d!1638819))

(assert (=> b!5074533 d!1638707))

(assert (=> b!5074533 d!1638709))

(assert (=> b!5074533 d!1638461))

(assert (=> b!5074533 d!1638479))

(declare-fun d!1638821 () Bool)

(assert (=> d!1638821 (= (inv!77622 (xs!18936 (left!42834 ys!41))) (<= (size!39099 (innerList!15664 (xs!18936 (left!42834 ys!41)))) 2147483647))))

(declare-fun bs!1190351 () Bool)

(assert (= bs!1190351 d!1638821))

(declare-fun m!6123274 () Bool)

(assert (=> bs!1190351 m!6123274))

(assert (=> b!5074563 d!1638821))

(declare-fun d!1638825 () Bool)

(assert (=> d!1638825 (= (height!2153 (ite c!871276 (right!43164 xs!286) (left!42834 ys!41))) (ite ((_ is Empty!15576) (ite c!871276 (right!43164 xs!286) (left!42834 ys!41))) 0 (ite ((_ is Leaf!25869) (ite c!871276 (right!43164 xs!286) (left!42834 ys!41))) 1 (cheight!15787 (ite c!871276 (right!43164 xs!286) (left!42834 ys!41))))))))

(assert (=> bm!353487 d!1638825))

(declare-fun d!1638827 () Bool)

(declare-fun res!2160788 () Bool)

(declare-fun e!3166326 () Bool)

(assert (=> d!1638827 (=> (not res!2160788) (not e!3166326))))

(assert (=> d!1638827 (= res!2160788 (= (csize!31382 (left!42834 ys!41)) (+ (size!39101 (left!42834 (left!42834 ys!41))) (size!39101 (right!43164 (left!42834 ys!41))))))))

(assert (=> d!1638827 (= (inv!77625 (left!42834 ys!41)) e!3166326)))

(declare-fun b!5075038 () Bool)

(declare-fun res!2160789 () Bool)

(assert (=> b!5075038 (=> (not res!2160789) (not e!3166326))))

(assert (=> b!5075038 (= res!2160789 (and (not (= (left!42834 (left!42834 ys!41)) Empty!15576)) (not (= (right!43164 (left!42834 ys!41)) Empty!15576))))))

(declare-fun b!5075039 () Bool)

(declare-fun res!2160790 () Bool)

(assert (=> b!5075039 (=> (not res!2160790) (not e!3166326))))

(assert (=> b!5075039 (= res!2160790 (= (cheight!15787 (left!42834 ys!41)) (+ (max!0 (height!2153 (left!42834 (left!42834 ys!41))) (height!2153 (right!43164 (left!42834 ys!41)))) 1)))))

(declare-fun b!5075040 () Bool)

(assert (=> b!5075040 (= e!3166326 (<= 0 (cheight!15787 (left!42834 ys!41))))))

(assert (= (and d!1638827 res!2160788) b!5075038))

(assert (= (and b!5075038 res!2160789) b!5075039))

(assert (= (and b!5075039 res!2160790) b!5075040))

(declare-fun m!6123276 () Bool)

(assert (=> d!1638827 m!6123276))

(declare-fun m!6123278 () Bool)

(assert (=> d!1638827 m!6123278))

(assert (=> b!5075039 m!6122662))

(assert (=> b!5075039 m!6122664))

(assert (=> b!5075039 m!6122662))

(assert (=> b!5075039 m!6122664))

(declare-fun m!6123280 () Bool)

(assert (=> b!5075039 m!6123280))

(assert (=> b!5074536 d!1638827))

(declare-fun d!1638831 () Bool)

(declare-fun res!2160797 () Bool)

(declare-fun e!3166329 () Bool)

(assert (=> d!1638831 (=> (not res!2160797) (not e!3166329))))

(assert (=> d!1638831 (= res!2160797 (<= (size!39099 (list!19014 (xs!18936 xs!286))) 512))))

(assert (=> d!1638831 (= (inv!77626 xs!286) e!3166329)))

(declare-fun b!5075047 () Bool)

(declare-fun res!2160798 () Bool)

(assert (=> b!5075047 (=> (not res!2160798) (not e!3166329))))

(assert (=> b!5075047 (= res!2160798 (= (csize!31383 xs!286) (size!39099 (list!19014 (xs!18936 xs!286)))))))

(declare-fun b!5075048 () Bool)

(assert (=> b!5075048 (= e!3166329 (and (> (csize!31383 xs!286) 0) (<= (csize!31383 xs!286) 512)))))

(assert (= (and d!1638831 res!2160797) b!5075047))

(assert (= (and b!5075047 res!2160798) b!5075048))

(assert (=> d!1638831 m!6122026))

(assert (=> d!1638831 m!6122026))

(declare-fun m!6123294 () Bool)

(assert (=> d!1638831 m!6123294))

(assert (=> b!5075047 m!6122026))

(assert (=> b!5075047 m!6122026))

(assert (=> b!5075047 m!6123294))

(assert (=> b!5074252 d!1638831))

(declare-fun d!1638837 () Bool)

(declare-fun res!2160799 () Bool)

(declare-fun e!3166330 () Bool)

(assert (=> d!1638837 (=> (not res!2160799) (not e!3166330))))

(assert (=> d!1638837 (= res!2160799 (<= (size!39099 (list!19014 (xs!18936 (left!42834 ys!41)))) 512))))

(assert (=> d!1638837 (= (inv!77626 (left!42834 ys!41)) e!3166330)))

(declare-fun b!5075049 () Bool)

(declare-fun res!2160800 () Bool)

(assert (=> b!5075049 (=> (not res!2160800) (not e!3166330))))

(assert (=> b!5075049 (= res!2160800 (= (csize!31383 (left!42834 ys!41)) (size!39099 (list!19014 (xs!18936 (left!42834 ys!41))))))))

(declare-fun b!5075050 () Bool)

(assert (=> b!5075050 (= e!3166330 (and (> (csize!31383 (left!42834 ys!41)) 0) (<= (csize!31383 (left!42834 ys!41)) 512)))))

(assert (= (and d!1638837 res!2160799) b!5075049))

(assert (= (and b!5075049 res!2160800) b!5075050))

(assert (=> d!1638837 m!6122598))

(assert (=> d!1638837 m!6122598))

(declare-fun m!6123296 () Bool)

(assert (=> d!1638837 m!6123296))

(assert (=> b!5075049 m!6122598))

(assert (=> b!5075049 m!6122598))

(assert (=> b!5075049 m!6123296))

(assert (=> b!5074538 d!1638837))

(declare-fun tp!1416296 () Bool)

(declare-fun tp!1416297 () Bool)

(declare-fun e!3166333 () Bool)

(declare-fun b!5075055 () Bool)

(assert (=> b!5075055 (= e!3166333 (and (inv!77621 (left!42834 (left!42834 (right!43164 xs!286)))) tp!1416296 (inv!77621 (right!43164 (left!42834 (right!43164 xs!286)))) tp!1416297))))

(declare-fun b!5075057 () Bool)

(declare-fun e!3166334 () Bool)

(declare-fun tp!1416298 () Bool)

(assert (=> b!5075057 (= e!3166334 tp!1416298)))

(declare-fun b!5075056 () Bool)

(assert (=> b!5075056 (= e!3166333 (and (inv!77622 (xs!18936 (left!42834 (right!43164 xs!286)))) e!3166334))))

(assert (=> b!5074571 (= tp!1416293 (and (inv!77621 (left!42834 (right!43164 xs!286))) e!3166333))))

(assert (= (and b!5074571 ((_ is Node!15576) (left!42834 (right!43164 xs!286)))) b!5075055))

(assert (= b!5075056 b!5075057))

(assert (= (and b!5074571 ((_ is Leaf!25869) (left!42834 (right!43164 xs!286)))) b!5075056))

(declare-fun m!6123306 () Bool)

(assert (=> b!5075055 m!6123306))

(declare-fun m!6123308 () Bool)

(assert (=> b!5075055 m!6123308))

(declare-fun m!6123310 () Bool)

(assert (=> b!5075056 m!6123310))

(assert (=> b!5074571 m!6122360))

(declare-fun e!3166338 () Bool)

(declare-fun tp!1416300 () Bool)

(declare-fun tp!1416299 () Bool)

(declare-fun b!5075066 () Bool)

(assert (=> b!5075066 (= e!3166338 (and (inv!77621 (left!42834 (right!43164 (right!43164 xs!286)))) tp!1416299 (inv!77621 (right!43164 (right!43164 (right!43164 xs!286)))) tp!1416300))))

(declare-fun b!5075068 () Bool)

(declare-fun e!3166339 () Bool)

(declare-fun tp!1416301 () Bool)

(assert (=> b!5075068 (= e!3166339 tp!1416301)))

(declare-fun b!5075067 () Bool)

(assert (=> b!5075067 (= e!3166338 (and (inv!77622 (xs!18936 (right!43164 (right!43164 xs!286)))) e!3166339))))

(assert (=> b!5074571 (= tp!1416294 (and (inv!77621 (right!43164 (right!43164 xs!286))) e!3166338))))

(assert (= (and b!5074571 ((_ is Node!15576) (right!43164 (right!43164 xs!286)))) b!5075066))

(assert (= b!5075067 b!5075068))

(assert (= (and b!5074571 ((_ is Leaf!25869) (right!43164 (right!43164 xs!286)))) b!5075067))

(declare-fun m!6123312 () Bool)

(assert (=> b!5075066 m!6123312))

(declare-fun m!6123314 () Bool)

(assert (=> b!5075066 m!6123314))

(declare-fun m!6123316 () Bool)

(assert (=> b!5075067 m!6123316))

(assert (=> b!5074571 m!6122362))

(declare-fun tp!1416302 () Bool)

(declare-fun b!5075069 () Bool)

(declare-fun e!3166340 () Bool)

(declare-fun tp!1416303 () Bool)

(assert (=> b!5075069 (= e!3166340 (and (inv!77621 (left!42834 (left!42834 (left!42834 ys!41)))) tp!1416302 (inv!77621 (right!43164 (left!42834 (left!42834 ys!41)))) tp!1416303))))

(declare-fun b!5075071 () Bool)

(declare-fun e!3166341 () Bool)

(declare-fun tp!1416304 () Bool)

(assert (=> b!5075071 (= e!3166341 tp!1416304)))

(declare-fun b!5075070 () Bool)

(assert (=> b!5075070 (= e!3166340 (and (inv!77622 (xs!18936 (left!42834 (left!42834 ys!41)))) e!3166341))))

(assert (=> b!5074562 (= tp!1416284 (and (inv!77621 (left!42834 (left!42834 ys!41))) e!3166340))))

(assert (= (and b!5074562 ((_ is Node!15576) (left!42834 (left!42834 ys!41)))) b!5075069))

(assert (= b!5075070 b!5075071))

(assert (= (and b!5074562 ((_ is Leaf!25869) (left!42834 (left!42834 ys!41)))) b!5075070))

(declare-fun m!6123330 () Bool)

(assert (=> b!5075069 m!6123330))

(declare-fun m!6123332 () Bool)

(assert (=> b!5075069 m!6123332))

(declare-fun m!6123334 () Bool)

(assert (=> b!5075070 m!6123334))

(assert (=> b!5074562 m!6122342))

(declare-fun e!3166351 () Bool)

(declare-fun tp!1416306 () Bool)

(declare-fun tp!1416305 () Bool)

(declare-fun b!5075081 () Bool)

(assert (=> b!5075081 (= e!3166351 (and (inv!77621 (left!42834 (right!43164 (left!42834 ys!41)))) tp!1416305 (inv!77621 (right!43164 (right!43164 (left!42834 ys!41)))) tp!1416306))))

(declare-fun b!5075083 () Bool)

(declare-fun e!3166352 () Bool)

(declare-fun tp!1416307 () Bool)

(assert (=> b!5075083 (= e!3166352 tp!1416307)))

(declare-fun b!5075082 () Bool)

(assert (=> b!5075082 (= e!3166351 (and (inv!77622 (xs!18936 (right!43164 (left!42834 ys!41)))) e!3166352))))

(assert (=> b!5074562 (= tp!1416285 (and (inv!77621 (right!43164 (left!42834 ys!41))) e!3166351))))

(assert (= (and b!5074562 ((_ is Node!15576) (right!43164 (left!42834 ys!41)))) b!5075081))

(assert (= b!5075082 b!5075083))

(assert (= (and b!5074562 ((_ is Leaf!25869) (right!43164 (left!42834 ys!41)))) b!5075082))

(declare-fun m!6123336 () Bool)

(assert (=> b!5075081 m!6123336))

(declare-fun m!6123338 () Bool)

(assert (=> b!5075081 m!6123338))

(declare-fun m!6123340 () Bool)

(assert (=> b!5075082 m!6123340))

(assert (=> b!5074562 m!6122344))

(declare-fun b!5075084 () Bool)

(declare-fun e!3166353 () Bool)

(declare-fun tp!1416308 () Bool)

(assert (=> b!5075084 (= e!3166353 (and tp_is_empty!37075 tp!1416308))))

(assert (=> b!5074567 (= tp!1416289 e!3166353)))

(assert (= (and b!5074567 ((_ is Cons!58446) (innerList!15664 (xs!18936 (right!43164 ys!41))))) b!5075084))

(declare-fun b!5075085 () Bool)

(declare-fun e!3166354 () Bool)

(declare-fun tp!1416309 () Bool)

(assert (=> b!5075085 (= e!3166354 (and tp_is_empty!37075 tp!1416309))))

(assert (=> b!5074552 (= tp!1416276 e!3166354)))

(assert (= (and b!5074552 ((_ is Cons!58446) (t!371357 (innerList!15664 (xs!18936 xs!286))))) b!5075085))

(declare-fun tp!1416311 () Bool)

(declare-fun b!5075086 () Bool)

(declare-fun e!3166355 () Bool)

(declare-fun tp!1416310 () Bool)

(assert (=> b!5075086 (= e!3166355 (and (inv!77621 (left!42834 (left!42834 (left!42834 xs!286)))) tp!1416310 (inv!77621 (right!43164 (left!42834 (left!42834 xs!286)))) tp!1416311))))

(declare-fun b!5075088 () Bool)

(declare-fun e!3166356 () Bool)

(declare-fun tp!1416312 () Bool)

(assert (=> b!5075088 (= e!3166356 tp!1416312)))

(declare-fun b!5075087 () Bool)

(assert (=> b!5075087 (= e!3166355 (and (inv!77622 (xs!18936 (left!42834 (left!42834 xs!286)))) e!3166356))))

(assert (=> b!5074568 (= tp!1416290 (and (inv!77621 (left!42834 (left!42834 xs!286))) e!3166355))))

(assert (= (and b!5074568 ((_ is Node!15576) (left!42834 (left!42834 xs!286)))) b!5075086))

(assert (= b!5075087 b!5075088))

(assert (= (and b!5074568 ((_ is Leaf!25869) (left!42834 (left!42834 xs!286)))) b!5075087))

(declare-fun m!6123342 () Bool)

(assert (=> b!5075086 m!6123342))

(declare-fun m!6123344 () Bool)

(assert (=> b!5075086 m!6123344))

(declare-fun m!6123346 () Bool)

(assert (=> b!5075087 m!6123346))

(assert (=> b!5074568 m!6122354))

(declare-fun tp!1416314 () Bool)

(declare-fun e!3166357 () Bool)

(declare-fun b!5075089 () Bool)

(declare-fun tp!1416313 () Bool)

(assert (=> b!5075089 (= e!3166357 (and (inv!77621 (left!42834 (right!43164 (left!42834 xs!286)))) tp!1416313 (inv!77621 (right!43164 (right!43164 (left!42834 xs!286)))) tp!1416314))))

(declare-fun b!5075091 () Bool)

(declare-fun e!3166358 () Bool)

(declare-fun tp!1416315 () Bool)

(assert (=> b!5075091 (= e!3166358 tp!1416315)))

(declare-fun b!5075090 () Bool)

(assert (=> b!5075090 (= e!3166357 (and (inv!77622 (xs!18936 (right!43164 (left!42834 xs!286)))) e!3166358))))

(assert (=> b!5074568 (= tp!1416291 (and (inv!77621 (right!43164 (left!42834 xs!286))) e!3166357))))

(assert (= (and b!5074568 ((_ is Node!15576) (right!43164 (left!42834 xs!286)))) b!5075089))

(assert (= b!5075090 b!5075091))

(assert (= (and b!5074568 ((_ is Leaf!25869) (right!43164 (left!42834 xs!286)))) b!5075090))

(declare-fun m!6123348 () Bool)

(assert (=> b!5075089 m!6123348))

(declare-fun m!6123350 () Bool)

(assert (=> b!5075089 m!6123350))

(declare-fun m!6123352 () Bool)

(assert (=> b!5075090 m!6123352))

(assert (=> b!5074568 m!6122356))

(declare-fun b!5075092 () Bool)

(declare-fun e!3166359 () Bool)

(declare-fun tp!1416316 () Bool)

(assert (=> b!5075092 (= e!3166359 (and tp_is_empty!37075 tp!1416316))))

(assert (=> b!5074573 (= tp!1416295 e!3166359)))

(assert (= (and b!5074573 ((_ is Cons!58446) (innerList!15664 (xs!18936 (right!43164 xs!286))))) b!5075092))

(declare-fun b!5075093 () Bool)

(declare-fun e!3166360 () Bool)

(declare-fun tp!1416317 () Bool)

(assert (=> b!5075093 (= e!3166360 (and tp_is_empty!37075 tp!1416317))))

(assert (=> b!5074564 (= tp!1416286 e!3166360)))

(assert (= (and b!5074564 ((_ is Cons!58446) (innerList!15664 (xs!18936 (left!42834 ys!41))))) b!5075093))

(declare-fun b!5075094 () Bool)

(declare-fun e!3166361 () Bool)

(declare-fun tp!1416318 () Bool)

(assert (=> b!5075094 (= e!3166361 (and tp_is_empty!37075 tp!1416318))))

(assert (=> b!5074570 (= tp!1416292 e!3166361)))

(assert (= (and b!5074570 ((_ is Cons!58446) (innerList!15664 (xs!18936 (left!42834 xs!286))))) b!5075094))

(declare-fun tp!1416319 () Bool)

(declare-fun e!3166362 () Bool)

(declare-fun tp!1416320 () Bool)

(declare-fun b!5075095 () Bool)

(assert (=> b!5075095 (= e!3166362 (and (inv!77621 (left!42834 (left!42834 (right!43164 ys!41)))) tp!1416319 (inv!77621 (right!43164 (left!42834 (right!43164 ys!41)))) tp!1416320))))

(declare-fun b!5075097 () Bool)

(declare-fun e!3166363 () Bool)

(declare-fun tp!1416321 () Bool)

(assert (=> b!5075097 (= e!3166363 tp!1416321)))

(declare-fun b!5075096 () Bool)

(assert (=> b!5075096 (= e!3166362 (and (inv!77622 (xs!18936 (left!42834 (right!43164 ys!41)))) e!3166363))))

(assert (=> b!5074565 (= tp!1416287 (and (inv!77621 (left!42834 (right!43164 ys!41))) e!3166362))))

(assert (= (and b!5074565 ((_ is Node!15576) (left!42834 (right!43164 ys!41)))) b!5075095))

(assert (= b!5075096 b!5075097))

(assert (= (and b!5074565 ((_ is Leaf!25869) (left!42834 (right!43164 ys!41)))) b!5075096))

(declare-fun m!6123356 () Bool)

(assert (=> b!5075095 m!6123356))

(declare-fun m!6123358 () Bool)

(assert (=> b!5075095 m!6123358))

(declare-fun m!6123360 () Bool)

(assert (=> b!5075096 m!6123360))

(assert (=> b!5074565 m!6122348))

(declare-fun e!3166364 () Bool)

(declare-fun b!5075098 () Bool)

(declare-fun tp!1416323 () Bool)

(declare-fun tp!1416322 () Bool)

(assert (=> b!5075098 (= e!3166364 (and (inv!77621 (left!42834 (right!43164 (right!43164 ys!41)))) tp!1416322 (inv!77621 (right!43164 (right!43164 (right!43164 ys!41)))) tp!1416323))))

(declare-fun b!5075100 () Bool)

(declare-fun e!3166365 () Bool)

(declare-fun tp!1416324 () Bool)

(assert (=> b!5075100 (= e!3166365 tp!1416324)))

(declare-fun b!5075099 () Bool)

(assert (=> b!5075099 (= e!3166364 (and (inv!77622 (xs!18936 (right!43164 (right!43164 ys!41)))) e!3166365))))

(assert (=> b!5074565 (= tp!1416288 (and (inv!77621 (right!43164 (right!43164 ys!41))) e!3166364))))

(assert (= (and b!5074565 ((_ is Node!15576) (right!43164 (right!43164 ys!41)))) b!5075098))

(assert (= b!5075099 b!5075100))

(assert (= (and b!5074565 ((_ is Leaf!25869) (right!43164 (right!43164 ys!41)))) b!5075099))

(declare-fun m!6123366 () Bool)

(assert (=> b!5075098 m!6123366))

(declare-fun m!6123368 () Bool)

(assert (=> b!5075098 m!6123368))

(declare-fun m!6123370 () Bool)

(assert (=> b!5075099 m!6123370))

(assert (=> b!5074565 m!6122350))

(declare-fun b!5075101 () Bool)

(declare-fun e!3166366 () Bool)

(declare-fun tp!1416325 () Bool)

(assert (=> b!5075101 (= e!3166366 (and tp_is_empty!37075 tp!1416325))))

(assert (=> b!5074553 (= tp!1416277 e!3166366)))

(assert (= (and b!5074553 ((_ is Cons!58446) (t!371357 (innerList!15664 (xs!18936 ys!41))))) b!5075101))

(check-sat (not d!1638523) (not b!5074917) (not b!5074768) (not b!5074912) (not d!1638677) (not b!5074700) (not bm!353539) (not b!5074677) (not b!5074922) (not b!5074620) (not bm!353584) (not b!5074742) (not b!5074640) (not d!1638681) (not b!5075057) (not d!1638729) (not d!1638731) (not bm!353508) (not b!5075092) (not b!5075096) (not bm!353547) (not d!1638519) (not bm!353521) (not b!5075083) (not bm!353581) (not b!5074721) (not b!5074634) (not b!5075055) (not b!5074808) (not b!5075087) (not b!5075049) (not bm!353566) (not b!5074763) (not b!5074708) (not b!5075056) (not b!5074873) (not d!1638721) (not b!5074631) (not bm!353530) (not b!5075000) (not b!5074568) (not bm!353569) (not b!5075101) (not bm!353532) (not d!1638837) (not b!5074918) (not b!5075088) (not b!5074641) (not b!5075005) (not b!5074701) (not b!5075070) (not b!5074876) (not b!5075013) (not b!5074656) (not b!5074906) (not d!1638771) (not b!5075068) (not b!5074770) (not b!5075089) (not b!5075002) (not b!5074900) (not b!5074630) (not bm!353541) (not b!5074562) (not d!1638717) (not d!1638821) (not d!1638655) (not d!1638827) (not b!5074779) (not b!5074632) (not b!5074571) (not b!5074795) (not bm!353533) (not b!5074705) (not b!5075007) (not b!5074639) (not d!1638779) (not b!5074957) tp_is_empty!37075 (not b!5074890) (not b!5075094) (not b!5074628) (not b!5074929) (not b!5075018) (not d!1638591) (not b!5074921) (not b!5075086) (not b!5075066) (not b!5074759) (not b!5074728) (not bm!353507) (not b!5074689) (not b!5074741) (not b!5074688) (not b!5075035) (not b!5074664) (not bm!353505) (not b!5074889) (not b!5074810) (not bm!353522) (not bm!353506) (not b!5074765) (not b!5074642) (not b!5074882) (not b!5074565) (not b!5074939) (not b!5075095) (not b!5074865) (not b!5074796) (not d!1638757) (not b!5075100) (not b!5074898) (not d!1638743) (not d!1638705) (not b!5074671) (not d!1638645) (not b!5074911) (not b!5074910) (not b!5074638) (not b!5074629) (not b!5074893) (not d!1638581) (not b!5074737) (not b!5074720) (not b!5074896) (not b!5075067) (not d!1638609) (not b!5075037) (not b!5074806) (not b!5074727) (not d!1638621) (not b!5074643) (not b!5075081) (not b!5074948) (not b!5075021) (not b!5074775) (not b!5074712) (not b!5074817) (not b!5075069) (not b!5075090) (not b!5075022) (not b!5075082) (not b!5074738) (not b!5074881) (not b!5074894) (not bm!353568) (not b!5074670) (not b!5074777) (not b!5074867) (not bm!353571) (not b!5074665) (not d!1638631) (not b!5074704) (not b!5074750) (not d!1638663) (not b!5074771) (not b!5075047) (not d!1638737) (not b!5075039) (not b!5074635) (not b!5074899) (not b!5074798) (not b!5074884) (not b!5074633) (not d!1638803) (not b!5074791) (not b!5074986) (not b!5074804) (not b!5075099) (not b!5074678) (not bm!353524) (not b!5075084) (not bm!353565) (not b!5074877) (not bm!353572) (not d!1638725) (not b!5074993) (not bm!353536) (not b!5074885) (not b!5074625) (not b!5074869) (not bm!353523) (not bm!353538) (not b!5074593) (not b!5074903) (not b!5074581) (not d!1638555) (not b!5074901) (not b!5074713) (not d!1638807) (not d!1638831) (not b!5075011) (not d!1638633) (not d!1638579) (not bm!353570) (not b!5074994) (not b!5074740) (not b!5075085) (not b!5074920) (not b!5074897) (not bm!353582) (not b!5074624) (not b!5074758) (not b!5074702) (not b!5074895) (not d!1638687) (not d!1638513) (not b!5075019) (not b!5074739) (not b!5074755) (not b!5074932) (not bm!353528) (not b!5074908) (not bm!353583) (not b!5075093) (not b!5074793) (not bm!353526) (not b!5075098) (not b!5074773) (not b!5074923) (not b!5075033) (not b!5074682) (not d!1638685) (not b!5074683) (not b!5075091) (not bm!353567) (not b!5075009) (not b!5074904) (not b!5075071) (not bm!353546) (not b!5074919) (not b!5074907) (not b!5074800) (not b!5075097) (not b!5074933) (not b!5074909) (not b!5074778) (not b!5074703) (not b!5074832) (not b!5074962) (not b!5074874))
(check-sat)
(get-model)

(declare-fun d!1638885 () Bool)

(assert (=> d!1638885 (= (list!19014 (xs!18936 (left!42834 (right!43164 xs!286)))) (innerList!15664 (xs!18936 (left!42834 (right!43164 xs!286)))))))

(assert (=> b!5074664 d!1638885))

(declare-fun d!1638887 () Bool)

(declare-fun lt!2090062 () Bool)

(assert (=> d!1638887 (= lt!2090062 (isEmpty!31656 (list!19013 (left!42834 (right!43164 lt!2089940)))))))

(assert (=> d!1638887 (= lt!2090062 (= (size!39101 (left!42834 (right!43164 lt!2089940))) 0))))

(assert (=> d!1638887 (= (isEmpty!31655 (left!42834 (right!43164 lt!2089940))) lt!2090062)))

(declare-fun bs!1190358 () Bool)

(assert (= bs!1190358 d!1638887))

(assert (=> bs!1190358 m!6122954))

(assert (=> bs!1190358 m!6122954))

(declare-fun m!6123506 () Bool)

(assert (=> bs!1190358 m!6123506))

(declare-fun m!6123508 () Bool)

(assert (=> bs!1190358 m!6123508))

(assert (=> b!5074910 d!1638887))

(declare-fun d!1638889 () Bool)

(assert (=> d!1638889 (= (max!0 (height!2153 (left!42834 xs!286)) (height!2153 (right!43164 xs!286))) (ite (< (height!2153 (left!42834 xs!286)) (height!2153 (right!43164 xs!286))) (height!2153 (right!43164 xs!286)) (height!2153 (left!42834 xs!286))))))

(assert (=> b!5074869 d!1638889))

(assert (=> b!5074869 d!1638525))

(assert (=> b!5074869 d!1638527))

(declare-fun bm!353593 () Bool)

(declare-fun call!353601 () List!58570)

(declare-fun call!353600 () List!58570)

(assert (=> bm!353593 (= call!353601 (++!12800 call!353600 (list!19013 (right!43164 (left!42834 (left!42834 ys!41))))))))

(declare-fun bm!353594 () Bool)

(assert (=> bm!353594 (= call!353600 (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 (left!42834 ys!41))))))))

(declare-fun d!1638891 () Bool)

(declare-fun e!3166407 () Bool)

(assert (=> d!1638891 e!3166407))

(declare-fun c!871434 () Bool)

(assert (=> d!1638891 (= c!871434 ((_ is Nil!58446) (list!19013 xs!286)))))

(assert (=> d!1638891 (= (appendAssoc!308 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 (left!42834 ys!41)))) (list!19013 (right!43164 (left!42834 (left!42834 ys!41))))) true)))

(declare-fun bm!353595 () Bool)

(declare-fun call!353599 () List!58570)

(declare-fun call!353598 () List!58570)

(assert (=> bm!353595 (= call!353599 (++!12800 (list!19013 xs!286) call!353598))))

(declare-fun b!5075170 () Bool)

(assert (=> b!5075170 (= e!3166407 (= call!353601 call!353599))))

(declare-fun lt!2090063 () Bool)

(assert (=> b!5075170 (= lt!2090063 (appendAssoc!308 (t!371357 (list!19013 xs!286)) (list!19013 (left!42834 (left!42834 (left!42834 ys!41)))) (list!19013 (right!43164 (left!42834 (left!42834 ys!41))))))))

(declare-fun b!5075171 () Bool)

(assert (=> b!5075171 (= e!3166407 (= call!353601 call!353599))))

(declare-fun bm!353596 () Bool)

(assert (=> bm!353596 (= call!353598 (++!12800 (list!19013 (left!42834 (left!42834 (left!42834 ys!41)))) (list!19013 (right!43164 (left!42834 (left!42834 ys!41))))))))

(assert (= (and d!1638891 c!871434) b!5075171))

(assert (= (and d!1638891 (not c!871434)) b!5075170))

(assert (= (or b!5075171 b!5075170) bm!353594))

(assert (= (or b!5075171 b!5075170) bm!353596))

(assert (= (or b!5075171 b!5075170) bm!353595))

(assert (= (or b!5075171 b!5075170) bm!353593))

(assert (=> b!5075170 m!6122420))

(assert (=> b!5075170 m!6122422))

(declare-fun m!6123510 () Bool)

(assert (=> b!5075170 m!6123510))

(assert (=> bm!353594 m!6121978))

(assert (=> bm!353594 m!6122420))

(assert (=> bm!353594 m!6122736))

(assert (=> bm!353593 m!6122422))

(declare-fun m!6123512 () Bool)

(assert (=> bm!353593 m!6123512))

(assert (=> bm!353596 m!6122420))

(assert (=> bm!353596 m!6122422))

(assert (=> bm!353596 m!6122424))

(assert (=> bm!353595 m!6121978))

(declare-fun m!6123514 () Bool)

(assert (=> bm!353595 m!6123514))

(assert (=> b!5074779 d!1638891))

(assert (=> b!5074779 d!1638437))

(declare-fun b!5075174 () Bool)

(declare-fun e!3166409 () List!58570)

(assert (=> b!5075174 (= e!3166409 (list!19014 (xs!18936 (left!42834 (left!42834 (left!42834 ys!41))))))))

(declare-fun b!5075175 () Bool)

(assert (=> b!5075175 (= e!3166409 (++!12800 (list!19013 (left!42834 (left!42834 (left!42834 (left!42834 ys!41))))) (list!19013 (right!43164 (left!42834 (left!42834 (left!42834 ys!41)))))))))

(declare-fun b!5075172 () Bool)

(declare-fun e!3166408 () List!58570)

(assert (=> b!5075172 (= e!3166408 Nil!58446)))

(declare-fun d!1638893 () Bool)

(declare-fun c!871435 () Bool)

(assert (=> d!1638893 (= c!871435 ((_ is Empty!15576) (left!42834 (left!42834 (left!42834 ys!41)))))))

(assert (=> d!1638893 (= (list!19013 (left!42834 (left!42834 (left!42834 ys!41)))) e!3166408)))

(declare-fun b!5075173 () Bool)

(assert (=> b!5075173 (= e!3166408 e!3166409)))

(declare-fun c!871436 () Bool)

(assert (=> b!5075173 (= c!871436 ((_ is Leaf!25869) (left!42834 (left!42834 (left!42834 ys!41)))))))

(assert (= (and d!1638893 c!871435) b!5075172))

(assert (= (and d!1638893 (not c!871435)) b!5075173))

(assert (= (and b!5075173 c!871436) b!5075174))

(assert (= (and b!5075173 (not c!871436)) b!5075175))

(declare-fun m!6123516 () Bool)

(assert (=> b!5075174 m!6123516))

(declare-fun m!6123518 () Bool)

(assert (=> b!5075175 m!6123518))

(declare-fun m!6123520 () Bool)

(assert (=> b!5075175 m!6123520))

(assert (=> b!5075175 m!6123518))

(assert (=> b!5075175 m!6123520))

(declare-fun m!6123522 () Bool)

(assert (=> b!5075175 m!6123522))

(assert (=> b!5074779 d!1638893))

(declare-fun b!5075178 () Bool)

(declare-fun e!3166411 () List!58570)

(assert (=> b!5075178 (= e!3166411 (list!19014 (xs!18936 (right!43164 (left!42834 (left!42834 ys!41))))))))

(declare-fun b!5075179 () Bool)

(assert (=> b!5075179 (= e!3166411 (++!12800 (list!19013 (left!42834 (right!43164 (left!42834 (left!42834 ys!41))))) (list!19013 (right!43164 (right!43164 (left!42834 (left!42834 ys!41)))))))))

(declare-fun b!5075176 () Bool)

(declare-fun e!3166410 () List!58570)

(assert (=> b!5075176 (= e!3166410 Nil!58446)))

(declare-fun d!1638895 () Bool)

(declare-fun c!871437 () Bool)

(assert (=> d!1638895 (= c!871437 ((_ is Empty!15576) (right!43164 (left!42834 (left!42834 ys!41)))))))

(assert (=> d!1638895 (= (list!19013 (right!43164 (left!42834 (left!42834 ys!41)))) e!3166410)))

(declare-fun b!5075177 () Bool)

(assert (=> b!5075177 (= e!3166410 e!3166411)))

(declare-fun c!871438 () Bool)

(assert (=> b!5075177 (= c!871438 ((_ is Leaf!25869) (right!43164 (left!42834 (left!42834 ys!41)))))))

(assert (= (and d!1638895 c!871437) b!5075176))

(assert (= (and d!1638895 (not c!871437)) b!5075177))

(assert (= (and b!5075177 c!871438) b!5075178))

(assert (= (and b!5075177 (not c!871438)) b!5075179))

(declare-fun m!6123524 () Bool)

(assert (=> b!5075178 m!6123524))

(declare-fun m!6123526 () Bool)

(assert (=> b!5075179 m!6123526))

(declare-fun m!6123528 () Bool)

(assert (=> b!5075179 m!6123528))

(assert (=> b!5075179 m!6123526))

(assert (=> b!5075179 m!6123528))

(declare-fun m!6123530 () Bool)

(assert (=> b!5075179 m!6123530))

(assert (=> b!5074779 d!1638895))

(declare-fun b!5075183 () Bool)

(declare-fun lt!2090064 () List!58570)

(declare-fun e!3166413 () Bool)

(assert (=> b!5075183 (= e!3166413 (or (not (= (list!19013 (right!43164 (left!42834 ys!41))) Nil!58446)) (= lt!2090064 (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 ys!41)))))))))

(declare-fun b!5075181 () Bool)

(declare-fun e!3166412 () List!58570)

(assert (=> b!5075181 (= e!3166412 (Cons!58446 (h!64894 (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 ys!41))))) (++!12800 (t!371357 (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 ys!41))))) (list!19013 (right!43164 (left!42834 ys!41))))))))

(declare-fun d!1638897 () Bool)

(assert (=> d!1638897 e!3166413))

(declare-fun res!2160841 () Bool)

(assert (=> d!1638897 (=> (not res!2160841) (not e!3166413))))

(assert (=> d!1638897 (= res!2160841 (= (content!10423 lt!2090064) ((_ map or) (content!10423 (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 ys!41))))) (content!10423 (list!19013 (right!43164 (left!42834 ys!41)))))))))

(assert (=> d!1638897 (= lt!2090064 e!3166412)))

(declare-fun c!871439 () Bool)

(assert (=> d!1638897 (= c!871439 ((_ is Nil!58446) (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 ys!41))))))))

(assert (=> d!1638897 (= (++!12800 (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 ys!41)))) (list!19013 (right!43164 (left!42834 ys!41)))) lt!2090064)))

(declare-fun b!5075182 () Bool)

(declare-fun res!2160840 () Bool)

(assert (=> b!5075182 (=> (not res!2160840) (not e!3166413))))

(assert (=> b!5075182 (= res!2160840 (= (size!39099 lt!2090064) (+ (size!39099 (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 ys!41))))) (size!39099 (list!19013 (right!43164 (left!42834 ys!41)))))))))

(declare-fun b!5075180 () Bool)

(assert (=> b!5075180 (= e!3166412 (list!19013 (right!43164 (left!42834 ys!41))))))

(assert (= (and d!1638897 c!871439) b!5075180))

(assert (= (and d!1638897 (not c!871439)) b!5075181))

(assert (= (and d!1638897 res!2160841) b!5075182))

(assert (= (and b!5075182 res!2160840) b!5075183))

(assert (=> b!5075181 m!6122176))

(declare-fun m!6123532 () Bool)

(assert (=> b!5075181 m!6123532))

(declare-fun m!6123534 () Bool)

(assert (=> d!1638897 m!6123534))

(assert (=> d!1638897 m!6122174))

(declare-fun m!6123536 () Bool)

(assert (=> d!1638897 m!6123536))

(assert (=> d!1638897 m!6122176))

(declare-fun m!6123538 () Bool)

(assert (=> d!1638897 m!6123538))

(declare-fun m!6123540 () Bool)

(assert (=> b!5075182 m!6123540))

(assert (=> b!5075182 m!6122174))

(declare-fun m!6123542 () Bool)

(assert (=> b!5075182 m!6123542))

(assert (=> b!5075182 m!6122176))

(declare-fun m!6123544 () Bool)

(assert (=> b!5075182 m!6123544))

(assert (=> bm!353566 d!1638897))

(declare-fun d!1638899 () Bool)

(declare-fun lt!2090065 () Bool)

(assert (=> d!1638899 (= lt!2090065 (isEmpty!31656 (list!19013 (left!42834 (left!42834 xs!286)))))))

(assert (=> d!1638899 (= lt!2090065 (= (size!39101 (left!42834 (left!42834 xs!286))) 0))))

(assert (=> d!1638899 (= (isEmpty!31655 (left!42834 (left!42834 xs!286))) lt!2090065)))

(declare-fun bs!1190359 () Bool)

(assert (= bs!1190359 d!1638899))

(assert (=> bs!1190359 m!6122546))

(assert (=> bs!1190359 m!6122546))

(declare-fun m!6123546 () Bool)

(assert (=> bs!1190359 m!6123546))

(assert (=> bs!1190359 m!6122366))

(assert (=> b!5074703 d!1638899))

(declare-fun b!5075187 () Bool)

(declare-fun e!3166415 () Bool)

(declare-fun lt!2090066 () List!58570)

(assert (=> b!5075187 (= e!3166415 (or (not (= (list!19013 (right!43164 lt!2089978)) Nil!58446)) (= lt!2090066 (list!19013 (left!42834 lt!2089978)))))))

(declare-fun b!5075185 () Bool)

(declare-fun e!3166414 () List!58570)

(assert (=> b!5075185 (= e!3166414 (Cons!58446 (h!64894 (list!19013 (left!42834 lt!2089978))) (++!12800 (t!371357 (list!19013 (left!42834 lt!2089978))) (list!19013 (right!43164 lt!2089978)))))))

(declare-fun d!1638901 () Bool)

(assert (=> d!1638901 e!3166415))

(declare-fun res!2160843 () Bool)

(assert (=> d!1638901 (=> (not res!2160843) (not e!3166415))))

(assert (=> d!1638901 (= res!2160843 (= (content!10423 lt!2090066) ((_ map or) (content!10423 (list!19013 (left!42834 lt!2089978))) (content!10423 (list!19013 (right!43164 lt!2089978))))))))

(assert (=> d!1638901 (= lt!2090066 e!3166414)))

(declare-fun c!871440 () Bool)

(assert (=> d!1638901 (= c!871440 ((_ is Nil!58446) (list!19013 (left!42834 lt!2089978))))))

(assert (=> d!1638901 (= (++!12800 (list!19013 (left!42834 lt!2089978)) (list!19013 (right!43164 lt!2089978))) lt!2090066)))

(declare-fun b!5075186 () Bool)

(declare-fun res!2160842 () Bool)

(assert (=> b!5075186 (=> (not res!2160842) (not e!3166415))))

(assert (=> b!5075186 (= res!2160842 (= (size!39099 lt!2090066) (+ (size!39099 (list!19013 (left!42834 lt!2089978))) (size!39099 (list!19013 (right!43164 lt!2089978))))))))

(declare-fun b!5075184 () Bool)

(assert (=> b!5075184 (= e!3166414 (list!19013 (right!43164 lt!2089978)))))

(assert (= (and d!1638901 c!871440) b!5075184))

(assert (= (and d!1638901 (not c!871440)) b!5075185))

(assert (= (and d!1638901 res!2160843) b!5075186))

(assert (= (and b!5075186 res!2160842) b!5075187))

(assert (=> b!5075185 m!6123234))

(declare-fun m!6123548 () Bool)

(assert (=> b!5075185 m!6123548))

(declare-fun m!6123550 () Bool)

(assert (=> d!1638901 m!6123550))

(assert (=> d!1638901 m!6123232))

(declare-fun m!6123552 () Bool)

(assert (=> d!1638901 m!6123552))

(assert (=> d!1638901 m!6123234))

(declare-fun m!6123554 () Bool)

(assert (=> d!1638901 m!6123554))

(declare-fun m!6123556 () Bool)

(assert (=> b!5075186 m!6123556))

(assert (=> b!5075186 m!6123232))

(declare-fun m!6123558 () Bool)

(assert (=> b!5075186 m!6123558))

(assert (=> b!5075186 m!6123234))

(declare-fun m!6123560 () Bool)

(assert (=> b!5075186 m!6123560))

(assert (=> b!5075019 d!1638901))

(declare-fun b!5075190 () Bool)

(declare-fun e!3166417 () List!58570)

(assert (=> b!5075190 (= e!3166417 (list!19014 (xs!18936 (left!42834 lt!2089978))))))

(declare-fun b!5075191 () Bool)

(assert (=> b!5075191 (= e!3166417 (++!12800 (list!19013 (left!42834 (left!42834 lt!2089978))) (list!19013 (right!43164 (left!42834 lt!2089978)))))))

(declare-fun b!5075188 () Bool)

(declare-fun e!3166416 () List!58570)

(assert (=> b!5075188 (= e!3166416 Nil!58446)))

(declare-fun d!1638903 () Bool)

(declare-fun c!871441 () Bool)

(assert (=> d!1638903 (= c!871441 ((_ is Empty!15576) (left!42834 lt!2089978)))))

(assert (=> d!1638903 (= (list!19013 (left!42834 lt!2089978)) e!3166416)))

(declare-fun b!5075189 () Bool)

(assert (=> b!5075189 (= e!3166416 e!3166417)))

(declare-fun c!871442 () Bool)

(assert (=> b!5075189 (= c!871442 ((_ is Leaf!25869) (left!42834 lt!2089978)))))

(assert (= (and d!1638903 c!871441) b!5075188))

(assert (= (and d!1638903 (not c!871441)) b!5075189))

(assert (= (and b!5075189 c!871442) b!5075190))

(assert (= (and b!5075189 (not c!871442)) b!5075191))

(declare-fun m!6123562 () Bool)

(assert (=> b!5075190 m!6123562))

(declare-fun m!6123564 () Bool)

(assert (=> b!5075191 m!6123564))

(declare-fun m!6123566 () Bool)

(assert (=> b!5075191 m!6123566))

(assert (=> b!5075191 m!6123564))

(assert (=> b!5075191 m!6123566))

(declare-fun m!6123568 () Bool)

(assert (=> b!5075191 m!6123568))

(assert (=> b!5075019 d!1638903))

(declare-fun b!5075194 () Bool)

(declare-fun e!3166419 () List!58570)

(assert (=> b!5075194 (= e!3166419 (list!19014 (xs!18936 (right!43164 lt!2089978))))))

(declare-fun b!5075195 () Bool)

(assert (=> b!5075195 (= e!3166419 (++!12800 (list!19013 (left!42834 (right!43164 lt!2089978))) (list!19013 (right!43164 (right!43164 lt!2089978)))))))

(declare-fun b!5075192 () Bool)

(declare-fun e!3166418 () List!58570)

(assert (=> b!5075192 (= e!3166418 Nil!58446)))

(declare-fun d!1638905 () Bool)

(declare-fun c!871443 () Bool)

(assert (=> d!1638905 (= c!871443 ((_ is Empty!15576) (right!43164 lt!2089978)))))

(assert (=> d!1638905 (= (list!19013 (right!43164 lt!2089978)) e!3166418)))

(declare-fun b!5075193 () Bool)

(assert (=> b!5075193 (= e!3166418 e!3166419)))

(declare-fun c!871444 () Bool)

(assert (=> b!5075193 (= c!871444 ((_ is Leaf!25869) (right!43164 lt!2089978)))))

(assert (= (and d!1638905 c!871443) b!5075192))

(assert (= (and d!1638905 (not c!871443)) b!5075193))

(assert (= (and b!5075193 c!871444) b!5075194))

(assert (= (and b!5075193 (not c!871444)) b!5075195))

(declare-fun m!6123570 () Bool)

(assert (=> b!5075194 m!6123570))

(declare-fun m!6123572 () Bool)

(assert (=> b!5075195 m!6123572))

(declare-fun m!6123574 () Bool)

(assert (=> b!5075195 m!6123574))

(assert (=> b!5075195 m!6123572))

(assert (=> b!5075195 m!6123574))

(declare-fun m!6123576 () Bool)

(assert (=> b!5075195 m!6123576))

(assert (=> b!5075019 d!1638905))

(declare-fun b!5075199 () Bool)

(declare-fun lt!2090067 () List!58570)

(declare-fun e!3166421 () Bool)

(assert (=> b!5075199 (= e!3166421 (or (not (= (list!19013 (left!42834 (left!42834 ys!41))) Nil!58446)) (= lt!2090067 (t!371357 (list!19013 xs!286)))))))

(declare-fun b!5075197 () Bool)

(declare-fun e!3166420 () List!58570)

(assert (=> b!5075197 (= e!3166420 (Cons!58446 (h!64894 (t!371357 (list!19013 xs!286))) (++!12800 (t!371357 (t!371357 (list!19013 xs!286))) (list!19013 (left!42834 (left!42834 ys!41))))))))

(declare-fun d!1638907 () Bool)

(assert (=> d!1638907 e!3166421))

(declare-fun res!2160845 () Bool)

(assert (=> d!1638907 (=> (not res!2160845) (not e!3166421))))

(assert (=> d!1638907 (= res!2160845 (= (content!10423 lt!2090067) ((_ map or) (content!10423 (t!371357 (list!19013 xs!286))) (content!10423 (list!19013 (left!42834 (left!42834 ys!41)))))))))

(assert (=> d!1638907 (= lt!2090067 e!3166420)))

(declare-fun c!871445 () Bool)

(assert (=> d!1638907 (= c!871445 ((_ is Nil!58446) (t!371357 (list!19013 xs!286))))))

(assert (=> d!1638907 (= (++!12800 (t!371357 (list!19013 xs!286)) (list!19013 (left!42834 (left!42834 ys!41)))) lt!2090067)))

(declare-fun b!5075198 () Bool)

(declare-fun res!2160844 () Bool)

(assert (=> b!5075198 (=> (not res!2160844) (not e!3166421))))

(assert (=> b!5075198 (= res!2160844 (= (size!39099 lt!2090067) (+ (size!39099 (t!371357 (list!19013 xs!286))) (size!39099 (list!19013 (left!42834 (left!42834 ys!41)))))))))

(declare-fun b!5075196 () Bool)

(assert (=> b!5075196 (= e!3166420 (list!19013 (left!42834 (left!42834 ys!41))))))

(assert (= (and d!1638907 c!871445) b!5075196))

(assert (= (and d!1638907 (not c!871445)) b!5075197))

(assert (= (and d!1638907 res!2160845) b!5075198))

(assert (= (and b!5075198 res!2160844) b!5075199))

(assert (=> b!5075197 m!6122180))

(declare-fun m!6123578 () Bool)

(assert (=> b!5075197 m!6123578))

(declare-fun m!6123580 () Bool)

(assert (=> d!1638907 m!6123580))

(assert (=> d!1638907 m!6122714))

(assert (=> d!1638907 m!6122180))

(assert (=> d!1638907 m!6123064))

(declare-fun m!6123582 () Bool)

(assert (=> b!5075198 m!6123582))

(assert (=> b!5075198 m!6122718))

(assert (=> b!5075198 m!6122180))

(assert (=> b!5075198 m!6123072))

(assert (=> b!5074932 d!1638907))

(declare-fun b!5075200 () Bool)

(declare-fun res!2160846 () Bool)

(declare-fun e!3166423 () Bool)

(assert (=> b!5075200 (=> (not res!2160846) (not e!3166423))))

(assert (=> b!5075200 (= res!2160846 (isBalanced!4438 (left!42834 (left!42834 (right!43164 xs!286)))))))

(declare-fun b!5075201 () Bool)

(declare-fun res!2160849 () Bool)

(assert (=> b!5075201 (=> (not res!2160849) (not e!3166423))))

(assert (=> b!5075201 (= res!2160849 (<= (- (height!2153 (left!42834 (left!42834 (right!43164 xs!286)))) (height!2153 (right!43164 (left!42834 (right!43164 xs!286))))) 1))))

(declare-fun d!1638909 () Bool)

(declare-fun res!2160848 () Bool)

(declare-fun e!3166422 () Bool)

(assert (=> d!1638909 (=> res!2160848 e!3166422)))

(assert (=> d!1638909 (= res!2160848 (not ((_ is Node!15576) (left!42834 (right!43164 xs!286)))))))

(assert (=> d!1638909 (= (isBalanced!4438 (left!42834 (right!43164 xs!286))) e!3166422)))

(declare-fun b!5075202 () Bool)

(assert (=> b!5075202 (= e!3166423 (not (isEmpty!31655 (right!43164 (left!42834 (right!43164 xs!286))))))))

(declare-fun b!5075203 () Bool)

(declare-fun res!2160847 () Bool)

(assert (=> b!5075203 (=> (not res!2160847) (not e!3166423))))

(assert (=> b!5075203 (= res!2160847 (not (isEmpty!31655 (left!42834 (left!42834 (right!43164 xs!286))))))))

(declare-fun b!5075204 () Bool)

(assert (=> b!5075204 (= e!3166422 e!3166423)))

(declare-fun res!2160850 () Bool)

(assert (=> b!5075204 (=> (not res!2160850) (not e!3166423))))

(assert (=> b!5075204 (= res!2160850 (<= (- 1) (- (height!2153 (left!42834 (left!42834 (right!43164 xs!286)))) (height!2153 (right!43164 (left!42834 (right!43164 xs!286)))))))))

(declare-fun b!5075205 () Bool)

(declare-fun res!2160851 () Bool)

(assert (=> b!5075205 (=> (not res!2160851) (not e!3166423))))

(assert (=> b!5075205 (= res!2160851 (isBalanced!4438 (right!43164 (left!42834 (right!43164 xs!286)))))))

(assert (= (and d!1638909 (not res!2160848)) b!5075204))

(assert (= (and b!5075204 res!2160850) b!5075201))

(assert (= (and b!5075201 res!2160849) b!5075200))

(assert (= (and b!5075200 res!2160846) b!5075205))

(assert (= (and b!5075205 res!2160851) b!5075203))

(assert (= (and b!5075203 res!2160847) b!5075202))

(declare-fun m!6123584 () Bool)

(assert (=> b!5075203 m!6123584))

(declare-fun m!6123586 () Bool)

(assert (=> b!5075202 m!6123586))

(declare-fun m!6123588 () Bool)

(assert (=> b!5075205 m!6123588))

(declare-fun m!6123590 () Bool)

(assert (=> b!5075204 m!6123590))

(declare-fun m!6123592 () Bool)

(assert (=> b!5075204 m!6123592))

(assert (=> b!5075201 m!6123590))

(assert (=> b!5075201 m!6123592))

(declare-fun m!6123594 () Bool)

(assert (=> b!5075200 m!6123594))

(assert (=> b!5074895 d!1638909))

(declare-fun d!1638911 () Bool)

(declare-fun c!871446 () Bool)

(assert (=> d!1638911 (= c!871446 ((_ is Nil!58446) (t!371357 (list!19013 xs!286))))))

(declare-fun e!3166424 () (InoxSet T!105202))

(assert (=> d!1638911 (= (content!10423 (t!371357 (list!19013 xs!286))) e!3166424)))

(declare-fun b!5075206 () Bool)

(assert (=> b!5075206 (= e!3166424 ((as const (Array T!105202 Bool)) false))))

(declare-fun b!5075207 () Bool)

(assert (=> b!5075207 (= e!3166424 ((_ map or) (store ((as const (Array T!105202 Bool)) false) (h!64894 (t!371357 (list!19013 xs!286))) true) (content!10423 (t!371357 (t!371357 (list!19013 xs!286))))))))

(assert (= (and d!1638911 c!871446) b!5075206))

(assert (= (and d!1638911 (not c!871446)) b!5075207))

(declare-fun m!6123596 () Bool)

(assert (=> b!5075207 m!6123596))

(declare-fun m!6123598 () Bool)

(assert (=> b!5075207 m!6123598))

(assert (=> b!5075035 d!1638911))

(declare-fun b!5075208 () Bool)

(declare-fun res!2160852 () Bool)

(declare-fun e!3166426 () Bool)

(assert (=> b!5075208 (=> (not res!2160852) (not e!3166426))))

(assert (=> b!5075208 (= res!2160852 (isBalanced!4438 (left!42834 (right!43164 (right!43164 ys!41)))))))

(declare-fun b!5075209 () Bool)

(declare-fun res!2160855 () Bool)

(assert (=> b!5075209 (=> (not res!2160855) (not e!3166426))))

(assert (=> b!5075209 (= res!2160855 (<= (- (height!2153 (left!42834 (right!43164 (right!43164 ys!41)))) (height!2153 (right!43164 (right!43164 (right!43164 ys!41))))) 1))))

(declare-fun d!1638913 () Bool)

(declare-fun res!2160854 () Bool)

(declare-fun e!3166425 () Bool)

(assert (=> d!1638913 (=> res!2160854 e!3166425)))

(assert (=> d!1638913 (= res!2160854 (not ((_ is Node!15576) (right!43164 (right!43164 ys!41)))))))

(assert (=> d!1638913 (= (isBalanced!4438 (right!43164 (right!43164 ys!41))) e!3166425)))

(declare-fun b!5075210 () Bool)

(assert (=> b!5075210 (= e!3166426 (not (isEmpty!31655 (right!43164 (right!43164 (right!43164 ys!41))))))))

(declare-fun b!5075211 () Bool)

(declare-fun res!2160853 () Bool)

(assert (=> b!5075211 (=> (not res!2160853) (not e!3166426))))

(assert (=> b!5075211 (= res!2160853 (not (isEmpty!31655 (left!42834 (right!43164 (right!43164 ys!41))))))))

(declare-fun b!5075212 () Bool)

(assert (=> b!5075212 (= e!3166425 e!3166426)))

(declare-fun res!2160856 () Bool)

(assert (=> b!5075212 (=> (not res!2160856) (not e!3166426))))

(assert (=> b!5075212 (= res!2160856 (<= (- 1) (- (height!2153 (left!42834 (right!43164 (right!43164 ys!41)))) (height!2153 (right!43164 (right!43164 (right!43164 ys!41)))))))))

(declare-fun b!5075213 () Bool)

(declare-fun res!2160857 () Bool)

(assert (=> b!5075213 (=> (not res!2160857) (not e!3166426))))

(assert (=> b!5075213 (= res!2160857 (isBalanced!4438 (right!43164 (right!43164 (right!43164 ys!41)))))))

(assert (= (and d!1638913 (not res!2160854)) b!5075212))

(assert (= (and b!5075212 res!2160856) b!5075209))

(assert (= (and b!5075209 res!2160855) b!5075208))

(assert (= (and b!5075208 res!2160852) b!5075213))

(assert (= (and b!5075213 res!2160857) b!5075211))

(assert (= (and b!5075211 res!2160853) b!5075210))

(declare-fun m!6123600 () Bool)

(assert (=> b!5075211 m!6123600))

(declare-fun m!6123602 () Bool)

(assert (=> b!5075210 m!6123602))

(declare-fun m!6123604 () Bool)

(assert (=> b!5075213 m!6123604))

(declare-fun m!6123606 () Bool)

(assert (=> b!5075212 m!6123606))

(declare-fun m!6123608 () Bool)

(assert (=> b!5075212 m!6123608))

(assert (=> b!5075209 m!6123606))

(assert (=> b!5075209 m!6123608))

(declare-fun m!6123610 () Bool)

(assert (=> b!5075208 m!6123610))

(assert (=> b!5074643 d!1638913))

(declare-fun d!1638915 () Bool)

(assert (=> d!1638915 (= (height!2153 (left!42834 (left!42834 lt!2089940))) (ite ((_ is Empty!15576) (left!42834 (left!42834 lt!2089940))) 0 (ite ((_ is Leaf!25869) (left!42834 (left!42834 lt!2089940))) 1 (cheight!15787 (left!42834 (left!42834 lt!2089940))))))))

(assert (=> b!5074634 d!1638915))

(declare-fun d!1638917 () Bool)

(assert (=> d!1638917 (= (height!2153 (right!43164 (left!42834 lt!2089940))) (ite ((_ is Empty!15576) (right!43164 (left!42834 lt!2089940))) 0 (ite ((_ is Leaf!25869) (right!43164 (left!42834 lt!2089940))) 1 (cheight!15787 (right!43164 (left!42834 lt!2089940))))))))

(assert (=> b!5074634 d!1638917))

(declare-fun d!1638919 () Bool)

(declare-fun lt!2090068 () Bool)

(assert (=> d!1638919 (= lt!2090068 (isEmpty!31656 (list!19013 (left!42834 (left!42834 ys!41)))))))

(assert (=> d!1638919 (= lt!2090068 (= (size!39101 (left!42834 (left!42834 ys!41))) 0))))

(assert (=> d!1638919 (= (isEmpty!31655 (left!42834 (left!42834 ys!41))) lt!2090068)))

(declare-fun bs!1190360 () Bool)

(assert (= bs!1190360 d!1638919))

(assert (=> bs!1190360 m!6122180))

(assert (=> bs!1190360 m!6122180))

(declare-fun m!6123612 () Bool)

(assert (=> bs!1190360 m!6123612))

(assert (=> bs!1190360 m!6123276))

(assert (=> b!5074740 d!1638919))

(declare-fun b!5075217 () Bool)

(declare-fun e!3166428 () Bool)

(declare-fun lt!2090069 () List!58570)

(assert (=> b!5075217 (= e!3166428 (or (not (= call!353526 Nil!58446)) (= lt!2090069 (list!19013 (left!42834 (right!43164 xs!286))))))))

(declare-fun b!5075215 () Bool)

(declare-fun e!3166427 () List!58570)

(assert (=> b!5075215 (= e!3166427 (Cons!58446 (h!64894 (list!19013 (left!42834 (right!43164 xs!286)))) (++!12800 (t!371357 (list!19013 (left!42834 (right!43164 xs!286)))) call!353526)))))

(declare-fun d!1638921 () Bool)

(assert (=> d!1638921 e!3166428))

(declare-fun res!2160859 () Bool)

(assert (=> d!1638921 (=> (not res!2160859) (not e!3166428))))

(assert (=> d!1638921 (= res!2160859 (= (content!10423 lt!2090069) ((_ map or) (content!10423 (list!19013 (left!42834 (right!43164 xs!286)))) (content!10423 call!353526))))))

(assert (=> d!1638921 (= lt!2090069 e!3166427)))

(declare-fun c!871447 () Bool)

(assert (=> d!1638921 (= c!871447 ((_ is Nil!58446) (list!19013 (left!42834 (right!43164 xs!286)))))))

(assert (=> d!1638921 (= (++!12800 (list!19013 (left!42834 (right!43164 xs!286))) call!353526) lt!2090069)))

(declare-fun b!5075216 () Bool)

(declare-fun res!2160858 () Bool)

(assert (=> b!5075216 (=> (not res!2160858) (not e!3166428))))

(assert (=> b!5075216 (= res!2160858 (= (size!39099 lt!2090069) (+ (size!39099 (list!19013 (left!42834 (right!43164 xs!286)))) (size!39099 call!353526))))))

(declare-fun b!5075214 () Bool)

(assert (=> b!5075214 (= e!3166427 call!353526)))

(assert (= (and d!1638921 c!871447) b!5075214))

(assert (= (and d!1638921 (not c!871447)) b!5075215))

(assert (= (and d!1638921 res!2160859) b!5075216))

(assert (= (and b!5075216 res!2160858) b!5075217))

(declare-fun m!6123614 () Bool)

(assert (=> b!5075215 m!6123614))

(declare-fun m!6123616 () Bool)

(assert (=> d!1638921 m!6123616))

(assert (=> d!1638921 m!6122168))

(declare-fun m!6123618 () Bool)

(assert (=> d!1638921 m!6123618))

(declare-fun m!6123620 () Bool)

(assert (=> d!1638921 m!6123620))

(declare-fun m!6123622 () Bool)

(assert (=> b!5075216 m!6123622))

(assert (=> b!5075216 m!6122168))

(declare-fun m!6123624 () Bool)

(assert (=> b!5075216 m!6123624))

(declare-fun m!6123626 () Bool)

(assert (=> b!5075216 m!6123626))

(assert (=> bm!353523 d!1638921))

(declare-fun b!5075221 () Bool)

(declare-fun e!3166430 () Bool)

(declare-fun lt!2090070 () List!58570)

(assert (=> b!5075221 (= e!3166430 (or (not (= (list!19013 (left!42834 (right!43164 xs!286))) Nil!58446)) (= lt!2090070 (list!19013 (left!42834 xs!286)))))))

(declare-fun b!5075219 () Bool)

(declare-fun e!3166429 () List!58570)

(assert (=> b!5075219 (= e!3166429 (Cons!58446 (h!64894 (list!19013 (left!42834 xs!286))) (++!12800 (t!371357 (list!19013 (left!42834 xs!286))) (list!19013 (left!42834 (right!43164 xs!286))))))))

(declare-fun d!1638923 () Bool)

(assert (=> d!1638923 e!3166430))

(declare-fun res!2160861 () Bool)

(assert (=> d!1638923 (=> (not res!2160861) (not e!3166430))))

(assert (=> d!1638923 (= res!2160861 (= (content!10423 lt!2090070) ((_ map or) (content!10423 (list!19013 (left!42834 xs!286))) (content!10423 (list!19013 (left!42834 (right!43164 xs!286)))))))))

(assert (=> d!1638923 (= lt!2090070 e!3166429)))

(declare-fun c!871448 () Bool)

(assert (=> d!1638923 (= c!871448 ((_ is Nil!58446) (list!19013 (left!42834 xs!286))))))

(assert (=> d!1638923 (= (++!12800 (list!19013 (left!42834 xs!286)) (list!19013 (left!42834 (right!43164 xs!286)))) lt!2090070)))

(declare-fun b!5075220 () Bool)

(declare-fun res!2160860 () Bool)

(assert (=> b!5075220 (=> (not res!2160860) (not e!3166430))))

(assert (=> b!5075220 (= res!2160860 (= (size!39099 lt!2090070) (+ (size!39099 (list!19013 (left!42834 xs!286))) (size!39099 (list!19013 (left!42834 (right!43164 xs!286)))))))))

(declare-fun b!5075218 () Bool)

(assert (=> b!5075218 (= e!3166429 (list!19013 (left!42834 (right!43164 xs!286))))))

(assert (= (and d!1638923 c!871448) b!5075218))

(assert (= (and d!1638923 (not c!871448)) b!5075219))

(assert (= (and d!1638923 res!2160861) b!5075220))

(assert (= (and b!5075220 res!2160860) b!5075221))

(assert (=> b!5075219 m!6122168))

(declare-fun m!6123628 () Bool)

(assert (=> b!5075219 m!6123628))

(declare-fun m!6123630 () Bool)

(assert (=> d!1638923 m!6123630))

(assert (=> d!1638923 m!6122028))

(assert (=> d!1638923 m!6122536))

(assert (=> d!1638923 m!6122168))

(assert (=> d!1638923 m!6123618))

(declare-fun m!6123632 () Bool)

(assert (=> b!5075220 m!6123632))

(assert (=> b!5075220 m!6122028))

(assert (=> b!5075220 m!6122542))

(assert (=> b!5075220 m!6122168))

(assert (=> b!5075220 m!6123624))

(assert (=> bm!353582 d!1638923))

(declare-fun b!5075222 () Bool)

(declare-fun res!2160862 () Bool)

(declare-fun e!3166432 () Bool)

(assert (=> b!5075222 (=> (not res!2160862) (not e!3166432))))

(assert (=> b!5075222 (= res!2160862 (isBalanced!4438 (left!42834 lt!2090007)))))

(declare-fun b!5075223 () Bool)

(declare-fun res!2160865 () Bool)

(assert (=> b!5075223 (=> (not res!2160865) (not e!3166432))))

(assert (=> b!5075223 (= res!2160865 (<= (- (height!2153 (left!42834 lt!2090007)) (height!2153 (right!43164 lt!2090007))) 1))))

(declare-fun d!1638925 () Bool)

(declare-fun res!2160864 () Bool)

(declare-fun e!3166431 () Bool)

(assert (=> d!1638925 (=> res!2160864 e!3166431)))

(assert (=> d!1638925 (= res!2160864 (not ((_ is Node!15576) lt!2090007)))))

(assert (=> d!1638925 (= (isBalanced!4438 lt!2090007) e!3166431)))

(declare-fun b!5075224 () Bool)

(assert (=> b!5075224 (= e!3166432 (not (isEmpty!31655 (right!43164 lt!2090007))))))

(declare-fun b!5075225 () Bool)

(declare-fun res!2160863 () Bool)

(assert (=> b!5075225 (=> (not res!2160863) (not e!3166432))))

(assert (=> b!5075225 (= res!2160863 (not (isEmpty!31655 (left!42834 lt!2090007))))))

(declare-fun b!5075226 () Bool)

(assert (=> b!5075226 (= e!3166431 e!3166432)))

(declare-fun res!2160866 () Bool)

(assert (=> b!5075226 (=> (not res!2160866) (not e!3166432))))

(assert (=> b!5075226 (= res!2160866 (<= (- 1) (- (height!2153 (left!42834 lt!2090007)) (height!2153 (right!43164 lt!2090007)))))))

(declare-fun b!5075227 () Bool)

(declare-fun res!2160867 () Bool)

(assert (=> b!5075227 (=> (not res!2160867) (not e!3166432))))

(assert (=> b!5075227 (= res!2160867 (isBalanced!4438 (right!43164 lt!2090007)))))

(assert (= (and d!1638925 (not res!2160864)) b!5075226))

(assert (= (and b!5075226 res!2160866) b!5075223))

(assert (= (and b!5075223 res!2160865) b!5075222))

(assert (= (and b!5075222 res!2160862) b!5075227))

(assert (= (and b!5075227 res!2160867) b!5075225))

(assert (= (and b!5075225 res!2160863) b!5075224))

(declare-fun m!6123634 () Bool)

(assert (=> b!5075225 m!6123634))

(declare-fun m!6123636 () Bool)

(assert (=> b!5075224 m!6123636))

(declare-fun m!6123638 () Bool)

(assert (=> b!5075227 m!6123638))

(declare-fun m!6123640 () Bool)

(assert (=> b!5075226 m!6123640))

(declare-fun m!6123642 () Bool)

(assert (=> b!5075226 m!6123642))

(assert (=> b!5075223 m!6123640))

(assert (=> b!5075223 m!6123642))

(declare-fun m!6123644 () Bool)

(assert (=> b!5075222 m!6123644))

(assert (=> b!5074800 d!1638925))

(declare-fun d!1638927 () Bool)

(declare-fun lt!2090071 () Int)

(assert (=> d!1638927 (>= lt!2090071 0)))

(declare-fun e!3166433 () Int)

(assert (=> d!1638927 (= lt!2090071 e!3166433)))

(declare-fun c!871449 () Bool)

(assert (=> d!1638927 (= c!871449 ((_ is Nil!58446) (list!19014 (xs!18936 (right!43164 xs!286)))))))

(assert (=> d!1638927 (= (size!39099 (list!19014 (xs!18936 (right!43164 xs!286)))) lt!2090071)))

(declare-fun b!5075228 () Bool)

(assert (=> b!5075228 (= e!3166433 0)))

(declare-fun b!5075229 () Bool)

(assert (=> b!5075229 (= e!3166433 (+ 1 (size!39099 (t!371357 (list!19014 (xs!18936 (right!43164 xs!286)))))))))

(assert (= (and d!1638927 c!871449) b!5075228))

(assert (= (and d!1638927 (not c!871449)) b!5075229))

(declare-fun m!6123646 () Bool)

(assert (=> b!5075229 m!6123646))

(assert (=> b!5074755 d!1638927))

(declare-fun d!1638929 () Bool)

(assert (=> d!1638929 (= (list!19014 (xs!18936 (right!43164 xs!286))) (innerList!15664 (xs!18936 (right!43164 xs!286))))))

(assert (=> b!5074755 d!1638929))

(declare-fun d!1638931 () Bool)

(declare-fun lt!2090072 () Int)

(assert (=> d!1638931 (>= lt!2090072 0)))

(declare-fun e!3166434 () Int)

(assert (=> d!1638931 (= lt!2090072 e!3166434)))

(declare-fun c!871450 () Bool)

(assert (=> d!1638931 (= c!871450 ((_ is Nil!58446) (innerList!15664 (xs!18936 (left!42834 ys!41)))))))

(assert (=> d!1638931 (= (size!39099 (innerList!15664 (xs!18936 (left!42834 ys!41)))) lt!2090072)))

(declare-fun b!5075230 () Bool)

(assert (=> b!5075230 (= e!3166434 0)))

(declare-fun b!5075231 () Bool)

(assert (=> b!5075231 (= e!3166434 (+ 1 (size!39099 (t!371357 (innerList!15664 (xs!18936 (left!42834 ys!41)))))))))

(assert (= (and d!1638931 c!871450) b!5075230))

(assert (= (and d!1638931 (not c!871450)) b!5075231))

(declare-fun m!6123648 () Bool)

(assert (=> b!5075231 m!6123648))

(assert (=> d!1638821 d!1638931))

(declare-fun d!1638933 () Bool)

(declare-fun lt!2090073 () Int)

(assert (=> d!1638933 (>= lt!2090073 0)))

(declare-fun e!3166435 () Int)

(assert (=> d!1638933 (= lt!2090073 e!3166435)))

(declare-fun c!871451 () Bool)

(assert (=> d!1638933 (= c!871451 ((_ is Nil!58446) (list!19014 (xs!18936 xs!286))))))

(assert (=> d!1638933 (= (size!39099 (list!19014 (xs!18936 xs!286))) lt!2090073)))

(declare-fun b!5075232 () Bool)

(assert (=> b!5075232 (= e!3166435 0)))

(declare-fun b!5075233 () Bool)

(assert (=> b!5075233 (= e!3166435 (+ 1 (size!39099 (t!371357 (list!19014 (xs!18936 xs!286))))))))

(assert (= (and d!1638933 c!871451) b!5075232))

(assert (= (and d!1638933 (not c!871451)) b!5075233))

(declare-fun m!6123650 () Bool)

(assert (=> b!5075233 m!6123650))

(assert (=> d!1638831 d!1638933))

(assert (=> d!1638831 d!1638619))

(declare-fun b!5075237 () Bool)

(declare-fun e!3166437 () Bool)

(declare-fun lt!2090074 () List!58570)

(assert (=> b!5075237 (= e!3166437 (or (not (= (list!19013 (right!43164 ys!41)) Nil!58446)) (= lt!2090074 (t!371357 (list!19013 (++!12801 xs!286 (left!42834 ys!41)))))))))

(declare-fun b!5075235 () Bool)

(declare-fun e!3166436 () List!58570)

(assert (=> b!5075235 (= e!3166436 (Cons!58446 (h!64894 (t!371357 (list!19013 (++!12801 xs!286 (left!42834 ys!41))))) (++!12800 (t!371357 (t!371357 (list!19013 (++!12801 xs!286 (left!42834 ys!41))))) (list!19013 (right!43164 ys!41)))))))

(declare-fun d!1638935 () Bool)

(assert (=> d!1638935 e!3166437))

(declare-fun res!2160869 () Bool)

(assert (=> d!1638935 (=> (not res!2160869) (not e!3166437))))

(assert (=> d!1638935 (= res!2160869 (= (content!10423 lt!2090074) ((_ map or) (content!10423 (t!371357 (list!19013 (++!12801 xs!286 (left!42834 ys!41))))) (content!10423 (list!19013 (right!43164 ys!41))))))))

(assert (=> d!1638935 (= lt!2090074 e!3166436)))

(declare-fun c!871452 () Bool)

(assert (=> d!1638935 (= c!871452 ((_ is Nil!58446) (t!371357 (list!19013 (++!12801 xs!286 (left!42834 ys!41))))))))

(assert (=> d!1638935 (= (++!12800 (t!371357 (list!19013 (++!12801 xs!286 (left!42834 ys!41)))) (list!19013 (right!43164 ys!41))) lt!2090074)))

(declare-fun b!5075236 () Bool)

(declare-fun res!2160868 () Bool)

(assert (=> b!5075236 (=> (not res!2160868) (not e!3166437))))

(assert (=> b!5075236 (= res!2160868 (= (size!39099 lt!2090074) (+ (size!39099 (t!371357 (list!19013 (++!12801 xs!286 (left!42834 ys!41))))) (size!39099 (list!19013 (right!43164 ys!41))))))))

(declare-fun b!5075234 () Bool)

(assert (=> b!5075234 (= e!3166436 (list!19013 (right!43164 ys!41)))))

(assert (= (and d!1638935 c!871452) b!5075234))

(assert (= (and d!1638935 (not c!871452)) b!5075235))

(assert (= (and d!1638935 res!2160869) b!5075236))

(assert (= (and b!5075236 res!2160868) b!5075237))

(assert (=> b!5075235 m!6122038))

(declare-fun m!6123652 () Bool)

(assert (=> b!5075235 m!6123652))

(declare-fun m!6123654 () Bool)

(assert (=> d!1638935 m!6123654))

(declare-fun m!6123656 () Bool)

(assert (=> d!1638935 m!6123656))

(assert (=> d!1638935 m!6122038))

(assert (=> d!1638935 m!6122638))

(declare-fun m!6123658 () Bool)

(assert (=> b!5075236 m!6123658))

(declare-fun m!6123660 () Bool)

(assert (=> b!5075236 m!6123660))

(assert (=> b!5075236 m!6122038))

(assert (=> b!5075236 m!6122646))

(assert (=> b!5074876 d!1638935))

(declare-fun b!5075241 () Bool)

(declare-fun lt!2090075 () List!58570)

(declare-fun e!3166439 () Bool)

(assert (=> b!5075241 (= e!3166439 (or (not (= (list!19013 ys!41) Nil!58446)) (= lt!2090075 (list!19013 (right!43164 xs!286)))))))

(declare-fun b!5075239 () Bool)

(declare-fun e!3166438 () List!58570)

(assert (=> b!5075239 (= e!3166438 (Cons!58446 (h!64894 (list!19013 (right!43164 xs!286))) (++!12800 (t!371357 (list!19013 (right!43164 xs!286))) (list!19013 ys!41))))))

(declare-fun d!1638937 () Bool)

(assert (=> d!1638937 e!3166439))

(declare-fun res!2160871 () Bool)

(assert (=> d!1638937 (=> (not res!2160871) (not e!3166439))))

(assert (=> d!1638937 (= res!2160871 (= (content!10423 lt!2090075) ((_ map or) (content!10423 (list!19013 (right!43164 xs!286))) (content!10423 (list!19013 ys!41)))))))

(assert (=> d!1638937 (= lt!2090075 e!3166438)))

(declare-fun c!871453 () Bool)

(assert (=> d!1638937 (= c!871453 ((_ is Nil!58446) (list!19013 (right!43164 xs!286))))))

(assert (=> d!1638937 (= (++!12800 (list!19013 (right!43164 xs!286)) (list!19013 ys!41)) lt!2090075)))

(declare-fun b!5075240 () Bool)

(declare-fun res!2160870 () Bool)

(assert (=> b!5075240 (=> (not res!2160870) (not e!3166439))))

(assert (=> b!5075240 (= res!2160870 (= (size!39099 lt!2090075) (+ (size!39099 (list!19013 (right!43164 xs!286))) (size!39099 (list!19013 ys!41)))))))

(declare-fun b!5075238 () Bool)

(assert (=> b!5075238 (= e!3166438 (list!19013 ys!41))))

(assert (= (and d!1638937 c!871453) b!5075238))

(assert (= (and d!1638937 (not c!871453)) b!5075239))

(assert (= (and d!1638937 res!2160871) b!5075240))

(assert (= (and b!5075240 res!2160870) b!5075241))

(assert (=> b!5075239 m!6121980))

(declare-fun m!6123662 () Bool)

(assert (=> b!5075239 m!6123662))

(declare-fun m!6123664 () Bool)

(assert (=> d!1638937 m!6123664))

(assert (=> d!1638937 m!6122030))

(assert (=> d!1638937 m!6122538))

(assert (=> d!1638937 m!6121980))

(assert (=> d!1638937 m!6122018))

(declare-fun m!6123666 () Bool)

(assert (=> b!5075240 m!6123666))

(assert (=> b!5075240 m!6122030))

(assert (=> b!5075240 m!6122544))

(assert (=> b!5075240 m!6121980))

(assert (=> b!5075240 m!6122024))

(assert (=> bm!353572 d!1638937))

(declare-fun d!1638939 () Bool)

(declare-fun res!2160872 () Bool)

(declare-fun e!3166440 () Bool)

(assert (=> d!1638939 (=> (not res!2160872) (not e!3166440))))

(assert (=> d!1638939 (= res!2160872 (<= (size!39099 (list!19014 (xs!18936 (left!42834 (left!42834 ys!41))))) 512))))

(assert (=> d!1638939 (= (inv!77626 (left!42834 (left!42834 ys!41))) e!3166440)))

(declare-fun b!5075242 () Bool)

(declare-fun res!2160873 () Bool)

(assert (=> b!5075242 (=> (not res!2160873) (not e!3166440))))

(assert (=> b!5075242 (= res!2160873 (= (csize!31383 (left!42834 (left!42834 ys!41))) (size!39099 (list!19014 (xs!18936 (left!42834 (left!42834 ys!41)))))))))

(declare-fun b!5075243 () Bool)

(assert (=> b!5075243 (= e!3166440 (and (> (csize!31383 (left!42834 (left!42834 ys!41))) 0) (<= (csize!31383 (left!42834 (left!42834 ys!41))) 512)))))

(assert (= (and d!1638939 res!2160872) b!5075242))

(assert (= (and b!5075242 res!2160873) b!5075243))

(assert (=> d!1638939 m!6122418))

(assert (=> d!1638939 m!6122418))

(declare-fun m!6123668 () Bool)

(assert (=> d!1638939 m!6123668))

(assert (=> b!5075242 m!6122418))

(assert (=> b!5075242 m!6122418))

(assert (=> b!5075242 m!6123668))

(assert (=> b!5074795 d!1638939))

(declare-fun d!1638941 () Bool)

(assert (=> d!1638941 (= (height!2153 lt!2090007) (ite ((_ is Empty!15576) lt!2090007) 0 (ite ((_ is Leaf!25869) lt!2090007) 1 (cheight!15787 lt!2090007))))))

(assert (=> b!5074810 d!1638941))

(declare-fun d!1638943 () Bool)

(assert (=> d!1638943 (= (max!0 (height!2153 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (height!2153 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))) (ite (< (height!2153 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (height!2153 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))) (height!2153 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (height!2153 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))))))

(assert (=> b!5074810 d!1638943))

(declare-fun d!1638945 () Bool)

(assert (=> d!1638945 (= (height!2153 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (ite ((_ is Empty!15576) (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) 0 (ite ((_ is Leaf!25869) (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) 1 (cheight!15787 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))))))

(assert (=> b!5074810 d!1638945))

(declare-fun d!1638947 () Bool)

(assert (=> d!1638947 (= (height!2153 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (ite ((_ is Empty!15576) (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) 0 (ite ((_ is Leaf!25869) (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) 1 (cheight!15787 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))))

(assert (=> b!5074810 d!1638947))

(declare-fun d!1638949 () Bool)

(declare-fun c!871454 () Bool)

(assert (=> d!1638949 (= c!871454 ((_ is Nil!58446) (t!371357 (list!19013 ys!41))))))

(declare-fun e!3166441 () (InoxSet T!105202))

(assert (=> d!1638949 (= (content!10423 (t!371357 (list!19013 ys!41))) e!3166441)))

(declare-fun b!5075244 () Bool)

(assert (=> b!5075244 (= e!3166441 ((as const (Array T!105202 Bool)) false))))

(declare-fun b!5075245 () Bool)

(assert (=> b!5075245 (= e!3166441 ((_ map or) (store ((as const (Array T!105202 Bool)) false) (h!64894 (t!371357 (list!19013 ys!41))) true) (content!10423 (t!371357 (t!371357 (list!19013 ys!41))))))))

(assert (= (and d!1638949 c!871454) b!5075244))

(assert (= (and d!1638949 (not c!871454)) b!5075245))

(declare-fun m!6123670 () Bool)

(assert (=> b!5075245 m!6123670))

(declare-fun m!6123672 () Bool)

(assert (=> b!5075245 m!6123672))

(assert (=> b!5075037 d!1638949))

(declare-fun d!1638951 () Bool)

(declare-fun c!871455 () Bool)

(assert (=> d!1638951 (= c!871455 ((_ is Nil!58446) lt!2090021))))

(declare-fun e!3166442 () (InoxSet T!105202))

(assert (=> d!1638951 (= (content!10423 lt!2090021) e!3166442)))

(declare-fun b!5075246 () Bool)

(assert (=> b!5075246 (= e!3166442 ((as const (Array T!105202 Bool)) false))))

(declare-fun b!5075247 () Bool)

(assert (=> b!5075247 (= e!3166442 ((_ map or) (store ((as const (Array T!105202 Bool)) false) (h!64894 lt!2090021) true) (content!10423 (t!371357 lt!2090021))))))

(assert (= (and d!1638951 c!871455) b!5075246))

(assert (= (and d!1638951 (not c!871455)) b!5075247))

(declare-fun m!6123674 () Bool)

(assert (=> b!5075247 m!6123674))

(declare-fun m!6123676 () Bool)

(assert (=> b!5075247 m!6123676))

(assert (=> d!1638681 d!1638951))

(declare-fun d!1638953 () Bool)

(declare-fun c!871456 () Bool)

(assert (=> d!1638953 (= c!871456 ((_ is Nil!58446) (list!19013 (++!12801 xs!286 (left!42834 ys!41)))))))

(declare-fun e!3166443 () (InoxSet T!105202))

(assert (=> d!1638953 (= (content!10423 (list!19013 (++!12801 xs!286 (left!42834 ys!41)))) e!3166443)))

(declare-fun b!5075248 () Bool)

(assert (=> b!5075248 (= e!3166443 ((as const (Array T!105202 Bool)) false))))

(declare-fun b!5075249 () Bool)

(assert (=> b!5075249 (= e!3166443 ((_ map or) (store ((as const (Array T!105202 Bool)) false) (h!64894 (list!19013 (++!12801 xs!286 (left!42834 ys!41)))) true) (content!10423 (t!371357 (list!19013 (++!12801 xs!286 (left!42834 ys!41)))))))))

(assert (= (and d!1638953 c!871456) b!5075248))

(assert (= (and d!1638953 (not c!871456)) b!5075249))

(declare-fun m!6123678 () Bool)

(assert (=> b!5075249 m!6123678))

(assert (=> b!5075249 m!6123656))

(assert (=> d!1638681 d!1638953))

(declare-fun d!1638955 () Bool)

(declare-fun c!871457 () Bool)

(assert (=> d!1638955 (= c!871457 ((_ is Nil!58446) (list!19013 (right!43164 ys!41))))))

(declare-fun e!3166444 () (InoxSet T!105202))

(assert (=> d!1638955 (= (content!10423 (list!19013 (right!43164 ys!41))) e!3166444)))

(declare-fun b!5075250 () Bool)

(assert (=> b!5075250 (= e!3166444 ((as const (Array T!105202 Bool)) false))))

(declare-fun b!5075251 () Bool)

(assert (=> b!5075251 (= e!3166444 ((_ map or) (store ((as const (Array T!105202 Bool)) false) (h!64894 (list!19013 (right!43164 ys!41))) true) (content!10423 (t!371357 (list!19013 (right!43164 ys!41))))))))

(assert (= (and d!1638955 c!871457) b!5075250))

(assert (= (and d!1638955 (not c!871457)) b!5075251))

(declare-fun m!6123680 () Bool)

(assert (=> b!5075251 m!6123680))

(declare-fun m!6123682 () Bool)

(assert (=> b!5075251 m!6123682))

(assert (=> d!1638681 d!1638955))

(declare-fun d!1638957 () Bool)

(assert (=> d!1638957 (= (inv!77622 (xs!18936 (left!42834 (left!42834 xs!286)))) (<= (size!39099 (innerList!15664 (xs!18936 (left!42834 (left!42834 xs!286))))) 2147483647))))

(declare-fun bs!1190361 () Bool)

(assert (= bs!1190361 d!1638957))

(declare-fun m!6123684 () Bool)

(assert (=> bs!1190361 m!6123684))

(assert (=> b!5075087 d!1638957))

(declare-fun b!5075255 () Bool)

(declare-fun e!3166446 () Bool)

(declare-fun lt!2090076 () List!58570)

(assert (=> b!5075255 (= e!3166446 (or (not (= (list!19013 ys!41) Nil!58446)) (= lt!2090076 (t!371357 (list!19013 (right!43164 (right!43164 xs!286)))))))))

(declare-fun b!5075253 () Bool)

(declare-fun e!3166445 () List!58570)

(assert (=> b!5075253 (= e!3166445 (Cons!58446 (h!64894 (t!371357 (list!19013 (right!43164 (right!43164 xs!286))))) (++!12800 (t!371357 (t!371357 (list!19013 (right!43164 (right!43164 xs!286))))) (list!19013 ys!41))))))

(declare-fun d!1638959 () Bool)

(assert (=> d!1638959 e!3166446))

(declare-fun res!2160875 () Bool)

(assert (=> d!1638959 (=> (not res!2160875) (not e!3166446))))

(assert (=> d!1638959 (= res!2160875 (= (content!10423 lt!2090076) ((_ map or) (content!10423 (t!371357 (list!19013 (right!43164 (right!43164 xs!286))))) (content!10423 (list!19013 ys!41)))))))

(assert (=> d!1638959 (= lt!2090076 e!3166445)))

(declare-fun c!871458 () Bool)

(assert (=> d!1638959 (= c!871458 ((_ is Nil!58446) (t!371357 (list!19013 (right!43164 (right!43164 xs!286))))))))

(assert (=> d!1638959 (= (++!12800 (t!371357 (list!19013 (right!43164 (right!43164 xs!286)))) (list!19013 ys!41)) lt!2090076)))

(declare-fun b!5075254 () Bool)

(declare-fun res!2160874 () Bool)

(assert (=> b!5075254 (=> (not res!2160874) (not e!3166446))))

(assert (=> b!5075254 (= res!2160874 (= (size!39099 lt!2090076) (+ (size!39099 (t!371357 (list!19013 (right!43164 (right!43164 xs!286))))) (size!39099 (list!19013 ys!41)))))))

(declare-fun b!5075252 () Bool)

(assert (=> b!5075252 (= e!3166445 (list!19013 ys!41))))

(assert (= (and d!1638959 c!871458) b!5075252))

(assert (= (and d!1638959 (not c!871458)) b!5075253))

(assert (= (and d!1638959 res!2160875) b!5075254))

(assert (= (and b!5075254 res!2160874) b!5075255))

(assert (=> b!5075253 m!6121980))

(declare-fun m!6123686 () Bool)

(assert (=> b!5075253 m!6123686))

(declare-fun m!6123688 () Bool)

(assert (=> d!1638959 m!6123688))

(declare-fun m!6123690 () Bool)

(assert (=> d!1638959 m!6123690))

(assert (=> d!1638959 m!6121980))

(assert (=> d!1638959 m!6122018))

(declare-fun m!6123692 () Bool)

(assert (=> b!5075254 m!6123692))

(declare-fun m!6123694 () Bool)

(assert (=> b!5075254 m!6123694))

(assert (=> b!5075254 m!6121980))

(assert (=> b!5075254 m!6122024))

(assert (=> b!5074993 d!1638959))

(declare-fun d!1638961 () Bool)

(assert (=> d!1638961 (= (max!0 (height!2153 (left!42834 (left!42834 ys!41))) (height!2153 (right!43164 (left!42834 ys!41)))) (ite (< (height!2153 (left!42834 (left!42834 ys!41))) (height!2153 (right!43164 (left!42834 ys!41)))) (height!2153 (right!43164 (left!42834 ys!41))) (height!2153 (left!42834 (left!42834 ys!41)))))))

(assert (=> b!5075039 d!1638961))

(declare-fun d!1638963 () Bool)

(assert (=> d!1638963 (= (height!2153 (left!42834 (left!42834 ys!41))) (ite ((_ is Empty!15576) (left!42834 (left!42834 ys!41))) 0 (ite ((_ is Leaf!25869) (left!42834 (left!42834 ys!41))) 1 (cheight!15787 (left!42834 (left!42834 ys!41))))))))

(assert (=> b!5075039 d!1638963))

(declare-fun d!1638965 () Bool)

(assert (=> d!1638965 (= (height!2153 (right!43164 (left!42834 ys!41))) (ite ((_ is Empty!15576) (right!43164 (left!42834 ys!41))) 0 (ite ((_ is Leaf!25869) (right!43164 (left!42834 ys!41))) 1 (cheight!15787 (right!43164 (left!42834 ys!41))))))))

(assert (=> b!5075039 d!1638965))

(declare-fun b!5075258 () Bool)

(declare-fun e!3166448 () List!58570)

(assert (=> b!5075258 (= e!3166448 (list!19014 (xs!18936 lt!2090012)))))

(declare-fun b!5075259 () Bool)

(assert (=> b!5075259 (= e!3166448 (++!12800 (list!19013 (left!42834 lt!2090012)) (list!19013 (right!43164 lt!2090012))))))

(declare-fun b!5075256 () Bool)

(declare-fun e!3166447 () List!58570)

(assert (=> b!5075256 (= e!3166447 Nil!58446)))

(declare-fun d!1638967 () Bool)

(declare-fun c!871459 () Bool)

(assert (=> d!1638967 (= c!871459 ((_ is Empty!15576) lt!2090012))))

(assert (=> d!1638967 (= (list!19013 lt!2090012) e!3166447)))

(declare-fun b!5075257 () Bool)

(assert (=> b!5075257 (= e!3166447 e!3166448)))

(declare-fun c!871460 () Bool)

(assert (=> b!5075257 (= c!871460 ((_ is Leaf!25869) lt!2090012))))

(assert (= (and d!1638967 c!871459) b!5075256))

(assert (= (and d!1638967 (not c!871459)) b!5075257))

(assert (= (and b!5075257 c!871460) b!5075258))

(assert (= (and b!5075257 (not c!871460)) b!5075259))

(declare-fun m!6123696 () Bool)

(assert (=> b!5075258 m!6123696))

(declare-fun m!6123698 () Bool)

(assert (=> b!5075259 m!6123698))

(declare-fun m!6123700 () Bool)

(assert (=> b!5075259 m!6123700))

(assert (=> b!5075259 m!6123698))

(assert (=> b!5075259 m!6123700))

(declare-fun m!6123702 () Bool)

(assert (=> b!5075259 m!6123702))

(assert (=> d!1638663 d!1638967))

(declare-fun lt!2090077 () List!58570)

(declare-fun e!3166450 () Bool)

(declare-fun b!5075263 () Bool)

(assert (=> b!5075263 (= e!3166450 (or (not (= (list!19013 (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500)))) Nil!58446)) (= lt!2090077 (list!19013 (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976)))))))))

(declare-fun e!3166449 () List!58570)

(declare-fun b!5075261 () Bool)

(assert (=> b!5075261 (= e!3166449 (Cons!58446 (h!64894 (list!19013 (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976))))) (++!12800 (t!371357 (list!19013 (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976))))) (list!19013 (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500)))))))))

(declare-fun d!1638969 () Bool)

(assert (=> d!1638969 e!3166450))

(declare-fun res!2160877 () Bool)

(assert (=> d!1638969 (=> (not res!2160877) (not e!3166450))))

(assert (=> d!1638969 (= res!2160877 (= (content!10423 lt!2090077) ((_ map or) (content!10423 (list!19013 (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976))))) (content!10423 (list!19013 (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500))))))))))

(assert (=> d!1638969 (= lt!2090077 e!3166449)))

(declare-fun c!871461 () Bool)

(assert (=> d!1638969 (= c!871461 ((_ is Nil!58446) (list!19013 (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976))))))))

(assert (=> d!1638969 (= (++!12800 (list!19013 (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976)))) (list!19013 (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500))))) lt!2090077)))

(declare-fun b!5075262 () Bool)

(declare-fun res!2160876 () Bool)

(assert (=> b!5075262 (=> (not res!2160876) (not e!3166450))))

(assert (=> b!5075262 (= res!2160876 (= (size!39099 lt!2090077) (+ (size!39099 (list!19013 (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976))))) (size!39099 (list!19013 (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500))))))))))

(declare-fun b!5075260 () Bool)

(assert (=> b!5075260 (= e!3166449 (list!19013 (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500)))))))

(assert (= (and d!1638969 c!871461) b!5075260))

(assert (= (and d!1638969 (not c!871461)) b!5075261))

(assert (= (and d!1638969 res!2160877) b!5075262))

(assert (= (and b!5075262 res!2160876) b!5075263))

(assert (=> b!5075261 m!6122854))

(declare-fun m!6123704 () Bool)

(assert (=> b!5075261 m!6123704))

(declare-fun m!6123706 () Bool)

(assert (=> d!1638969 m!6123706))

(assert (=> d!1638969 m!6122852))

(declare-fun m!6123708 () Bool)

(assert (=> d!1638969 m!6123708))

(assert (=> d!1638969 m!6122854))

(declare-fun m!6123710 () Bool)

(assert (=> d!1638969 m!6123710))

(declare-fun m!6123712 () Bool)

(assert (=> b!5075262 m!6123712))

(assert (=> b!5075262 m!6122852))

(declare-fun m!6123714 () Bool)

(assert (=> b!5075262 m!6123714))

(assert (=> b!5075262 m!6122854))

(declare-fun m!6123716 () Bool)

(assert (=> b!5075262 m!6123716))

(assert (=> d!1638663 d!1638969))

(declare-fun e!3166452 () List!58570)

(declare-fun b!5075266 () Bool)

(assert (=> b!5075266 (= e!3166452 (list!19014 (xs!18936 (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976))))))))

(declare-fun b!5075267 () Bool)

(assert (=> b!5075267 (= e!3166452 (++!12800 (list!19013 (left!42834 (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976))))) (list!19013 (right!43164 (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976)))))))))

(declare-fun b!5075264 () Bool)

(declare-fun e!3166451 () List!58570)

(assert (=> b!5075264 (= e!3166451 Nil!58446)))

(declare-fun d!1638971 () Bool)

(declare-fun c!871462 () Bool)

(assert (=> d!1638971 (= c!871462 ((_ is Empty!15576) (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976)))))))

(assert (=> d!1638971 (= (list!19013 (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976)))) e!3166451)))

(declare-fun b!5075265 () Bool)

(assert (=> b!5075265 (= e!3166451 e!3166452)))

(declare-fun c!871463 () Bool)

(assert (=> b!5075265 (= c!871463 ((_ is Leaf!25869) (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976)))))))

(assert (= (and d!1638971 c!871462) b!5075264))

(assert (= (and d!1638971 (not c!871462)) b!5075265))

(assert (= (and b!5075265 c!871463) b!5075266))

(assert (= (and b!5075265 (not c!871463)) b!5075267))

(declare-fun m!6123718 () Bool)

(assert (=> b!5075266 m!6123718))

(declare-fun m!6123720 () Bool)

(assert (=> b!5075267 m!6123720))

(declare-fun m!6123722 () Bool)

(assert (=> b!5075267 m!6123722))

(assert (=> b!5075267 m!6123720))

(assert (=> b!5075267 m!6123722))

(declare-fun m!6123724 () Bool)

(assert (=> b!5075267 m!6123724))

(assert (=> d!1638663 d!1638971))

(declare-fun e!3166454 () List!58570)

(declare-fun b!5075270 () Bool)

(assert (=> b!5075270 (= e!3166454 (list!19014 (xs!18936 (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500))))))))

(declare-fun b!5075271 () Bool)

(assert (=> b!5075271 (= e!3166454 (++!12800 (list!19013 (left!42834 (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500))))) (list!19013 (right!43164 (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500)))))))))

(declare-fun b!5075268 () Bool)

(declare-fun e!3166453 () List!58570)

(assert (=> b!5075268 (= e!3166453 Nil!58446)))

(declare-fun d!1638973 () Bool)

(declare-fun c!871464 () Bool)

(assert (=> d!1638973 (= c!871464 ((_ is Empty!15576) (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500)))))))

(assert (=> d!1638973 (= (list!19013 (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500)))) e!3166453)))

(declare-fun b!5075269 () Bool)

(assert (=> b!5075269 (= e!3166453 e!3166454)))

(declare-fun c!871465 () Bool)

(assert (=> b!5075269 (= c!871465 ((_ is Leaf!25869) (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500)))))))

(assert (= (and d!1638973 c!871464) b!5075268))

(assert (= (and d!1638973 (not c!871464)) b!5075269))

(assert (= (and b!5075269 c!871465) b!5075270))

(assert (= (and b!5075269 (not c!871465)) b!5075271))

(declare-fun m!6123726 () Bool)

(assert (=> b!5075270 m!6123726))

(declare-fun m!6123728 () Bool)

(assert (=> b!5075271 m!6123728))

(declare-fun m!6123730 () Bool)

(assert (=> b!5075271 m!6123730))

(assert (=> b!5075271 m!6123728))

(assert (=> b!5075271 m!6123730))

(declare-fun m!6123732 () Bool)

(assert (=> b!5075271 m!6123732))

(assert (=> d!1638663 d!1638973))

(declare-fun d!1638975 () Bool)

(assert (=> d!1638975 (= (height!2153 (left!42834 (right!43164 xs!286))) (ite ((_ is Empty!15576) (left!42834 (right!43164 xs!286))) 0 (ite ((_ is Leaf!25869) (left!42834 (right!43164 xs!286))) 1 (cheight!15787 (left!42834 (right!43164 xs!286))))))))

(assert (=> b!5074896 d!1638975))

(declare-fun d!1638977 () Bool)

(assert (=> d!1638977 (= (height!2153 (right!43164 (right!43164 xs!286))) (ite ((_ is Empty!15576) (right!43164 (right!43164 xs!286))) 0 (ite ((_ is Leaf!25869) (right!43164 (right!43164 xs!286))) 1 (cheight!15787 (right!43164 (right!43164 xs!286))))))))

(assert (=> b!5074896 d!1638977))

(declare-fun d!1638979 () Bool)

(declare-fun lt!2090078 () Int)

(assert (=> d!1638979 (>= lt!2090078 0)))

(declare-fun e!3166455 () Int)

(assert (=> d!1638979 (= lt!2090078 e!3166455)))

(declare-fun c!871466 () Bool)

(assert (=> d!1638979 (= c!871466 ((_ is Nil!58446) (list!19013 (++!12801 xs!286 (left!42834 ys!41)))))))

(assert (=> d!1638979 (= (size!39099 (list!19013 (++!12801 xs!286 (left!42834 ys!41)))) lt!2090078)))

(declare-fun b!5075272 () Bool)

(assert (=> b!5075272 (= e!3166455 0)))

(declare-fun b!5075273 () Bool)

(assert (=> b!5075273 (= e!3166455 (+ 1 (size!39099 (t!371357 (list!19013 (++!12801 xs!286 (left!42834 ys!41)))))))))

(assert (= (and d!1638979 c!871466) b!5075272))

(assert (= (and d!1638979 (not c!871466)) b!5075273))

(assert (=> b!5075273 m!6123660))

(assert (=> d!1638771 d!1638979))

(assert (=> d!1638771 d!1638683))

(declare-fun d!1638981 () Bool)

(assert (=> d!1638981 (= (height!2153 (left!42834 (left!42834 xs!286))) (ite ((_ is Empty!15576) (left!42834 (left!42834 xs!286))) 0 (ite ((_ is Leaf!25869) (left!42834 (left!42834 xs!286))) 1 (cheight!15787 (left!42834 (left!42834 xs!286))))))))

(assert (=> b!5074704 d!1638981))

(declare-fun d!1638983 () Bool)

(assert (=> d!1638983 (= (height!2153 (right!43164 (left!42834 xs!286))) (ite ((_ is Empty!15576) (right!43164 (left!42834 xs!286))) 0 (ite ((_ is Leaf!25869) (right!43164 (left!42834 xs!286))) 1 (cheight!15787 (right!43164 (left!42834 xs!286))))))))

(assert (=> b!5074704 d!1638983))

(declare-fun lt!2090079 () List!58570)

(declare-fun e!3166457 () Bool)

(declare-fun b!5075277 () Bool)

(assert (=> b!5075277 (= e!3166457 (or (not (= (list!19013 (right!43164 ys!41)) Nil!58446)) (= lt!2090079 call!353535)))))

(declare-fun b!5075275 () Bool)

(declare-fun e!3166456 () List!58570)

(assert (=> b!5075275 (= e!3166456 (Cons!58446 (h!64894 call!353535) (++!12800 (t!371357 call!353535) (list!19013 (right!43164 ys!41)))))))

(declare-fun d!1638985 () Bool)

(assert (=> d!1638985 e!3166457))

(declare-fun res!2160879 () Bool)

(assert (=> d!1638985 (=> (not res!2160879) (not e!3166457))))

(assert (=> d!1638985 (= res!2160879 (= (content!10423 lt!2090079) ((_ map or) (content!10423 call!353535) (content!10423 (list!19013 (right!43164 ys!41))))))))

(assert (=> d!1638985 (= lt!2090079 e!3166456)))

(declare-fun c!871467 () Bool)

(assert (=> d!1638985 (= c!871467 ((_ is Nil!58446) call!353535))))

(assert (=> d!1638985 (= (++!12800 call!353535 (list!19013 (right!43164 ys!41))) lt!2090079)))

(declare-fun b!5075276 () Bool)

(declare-fun res!2160878 () Bool)

(assert (=> b!5075276 (=> (not res!2160878) (not e!3166457))))

(assert (=> b!5075276 (= res!2160878 (= (size!39099 lt!2090079) (+ (size!39099 call!353535) (size!39099 (list!19013 (right!43164 ys!41))))))))

(declare-fun b!5075274 () Bool)

(assert (=> b!5075274 (= e!3166456 (list!19013 (right!43164 ys!41)))))

(assert (= (and d!1638985 c!871467) b!5075274))

(assert (= (and d!1638985 (not c!871467)) b!5075275))

(assert (= (and d!1638985 res!2160879) b!5075276))

(assert (= (and b!5075276 res!2160878) b!5075277))

(assert (=> b!5075275 m!6122038))

(declare-fun m!6123734 () Bool)

(assert (=> b!5075275 m!6123734))

(declare-fun m!6123736 () Bool)

(assert (=> d!1638985 m!6123736))

(declare-fun m!6123738 () Bool)

(assert (=> d!1638985 m!6123738))

(assert (=> d!1638985 m!6122038))

(assert (=> d!1638985 m!6122638))

(declare-fun m!6123740 () Bool)

(assert (=> b!5075276 m!6123740))

(declare-fun m!6123742 () Bool)

(assert (=> b!5075276 m!6123742))

(assert (=> b!5075276 m!6122038))

(assert (=> b!5075276 m!6122646))

(assert (=> bm!353526 d!1638985))

(declare-fun b!5075281 () Bool)

(declare-fun e!3166459 () Bool)

(declare-fun lt!2090080 () List!58570)

(assert (=> b!5075281 (= e!3166459 (or (not (= (list!19013 (right!43164 (left!42834 (right!43164 xs!286)))) Nil!58446)) (= lt!2090080 (list!19013 (left!42834 (left!42834 (right!43164 xs!286)))))))))

(declare-fun b!5075279 () Bool)

(declare-fun e!3166458 () List!58570)

(assert (=> b!5075279 (= e!3166458 (Cons!58446 (h!64894 (list!19013 (left!42834 (left!42834 (right!43164 xs!286))))) (++!12800 (t!371357 (list!19013 (left!42834 (left!42834 (right!43164 xs!286))))) (list!19013 (right!43164 (left!42834 (right!43164 xs!286)))))))))

(declare-fun d!1638987 () Bool)

(assert (=> d!1638987 e!3166459))

(declare-fun res!2160881 () Bool)

(assert (=> d!1638987 (=> (not res!2160881) (not e!3166459))))

(assert (=> d!1638987 (= res!2160881 (= (content!10423 lt!2090080) ((_ map or) (content!10423 (list!19013 (left!42834 (left!42834 (right!43164 xs!286))))) (content!10423 (list!19013 (right!43164 (left!42834 (right!43164 xs!286))))))))))

(assert (=> d!1638987 (= lt!2090080 e!3166458)))

(declare-fun c!871468 () Bool)

(assert (=> d!1638987 (= c!871468 ((_ is Nil!58446) (list!19013 (left!42834 (left!42834 (right!43164 xs!286))))))))

(assert (=> d!1638987 (= (++!12800 (list!19013 (left!42834 (left!42834 (right!43164 xs!286)))) (list!19013 (right!43164 (left!42834 (right!43164 xs!286))))) lt!2090080)))

(declare-fun b!5075280 () Bool)

(declare-fun res!2160880 () Bool)

(assert (=> b!5075280 (=> (not res!2160880) (not e!3166459))))

(assert (=> b!5075280 (= res!2160880 (= (size!39099 lt!2090080) (+ (size!39099 (list!19013 (left!42834 (left!42834 (right!43164 xs!286))))) (size!39099 (list!19013 (right!43164 (left!42834 (right!43164 xs!286))))))))))

(declare-fun b!5075278 () Bool)

(assert (=> b!5075278 (= e!3166458 (list!19013 (right!43164 (left!42834 (right!43164 xs!286)))))))

(assert (= (and d!1638987 c!871468) b!5075278))

(assert (= (and d!1638987 (not c!871468)) b!5075279))

(assert (= (and d!1638987 res!2160881) b!5075280))

(assert (= (and b!5075280 res!2160880) b!5075281))

(assert (=> b!5075279 m!6122514))

(declare-fun m!6123744 () Bool)

(assert (=> b!5075279 m!6123744))

(declare-fun m!6123746 () Bool)

(assert (=> d!1638987 m!6123746))

(assert (=> d!1638987 m!6122512))

(declare-fun m!6123748 () Bool)

(assert (=> d!1638987 m!6123748))

(assert (=> d!1638987 m!6122514))

(declare-fun m!6123750 () Bool)

(assert (=> d!1638987 m!6123750))

(declare-fun m!6123752 () Bool)

(assert (=> b!5075280 m!6123752))

(assert (=> b!5075280 m!6122512))

(declare-fun m!6123754 () Bool)

(assert (=> b!5075280 m!6123754))

(assert (=> b!5075280 m!6122514))

(declare-fun m!6123756 () Bool)

(assert (=> b!5075280 m!6123756))

(assert (=> b!5074665 d!1638987))

(declare-fun b!5075284 () Bool)

(declare-fun e!3166461 () List!58570)

(assert (=> b!5075284 (= e!3166461 (list!19014 (xs!18936 (left!42834 (left!42834 (right!43164 xs!286))))))))

(declare-fun b!5075285 () Bool)

(assert (=> b!5075285 (= e!3166461 (++!12800 (list!19013 (left!42834 (left!42834 (left!42834 (right!43164 xs!286))))) (list!19013 (right!43164 (left!42834 (left!42834 (right!43164 xs!286)))))))))

(declare-fun b!5075282 () Bool)

(declare-fun e!3166460 () List!58570)

(assert (=> b!5075282 (= e!3166460 Nil!58446)))

(declare-fun d!1638989 () Bool)

(declare-fun c!871469 () Bool)

(assert (=> d!1638989 (= c!871469 ((_ is Empty!15576) (left!42834 (left!42834 (right!43164 xs!286)))))))

(assert (=> d!1638989 (= (list!19013 (left!42834 (left!42834 (right!43164 xs!286)))) e!3166460)))

(declare-fun b!5075283 () Bool)

(assert (=> b!5075283 (= e!3166460 e!3166461)))

(declare-fun c!871470 () Bool)

(assert (=> b!5075283 (= c!871470 ((_ is Leaf!25869) (left!42834 (left!42834 (right!43164 xs!286)))))))

(assert (= (and d!1638989 c!871469) b!5075282))

(assert (= (and d!1638989 (not c!871469)) b!5075283))

(assert (= (and b!5075283 c!871470) b!5075284))

(assert (= (and b!5075283 (not c!871470)) b!5075285))

(declare-fun m!6123758 () Bool)

(assert (=> b!5075284 m!6123758))

(declare-fun m!6123760 () Bool)

(assert (=> b!5075285 m!6123760))

(declare-fun m!6123762 () Bool)

(assert (=> b!5075285 m!6123762))

(assert (=> b!5075285 m!6123760))

(assert (=> b!5075285 m!6123762))

(declare-fun m!6123764 () Bool)

(assert (=> b!5075285 m!6123764))

(assert (=> b!5074665 d!1638989))

(declare-fun b!5075288 () Bool)

(declare-fun e!3166463 () List!58570)

(assert (=> b!5075288 (= e!3166463 (list!19014 (xs!18936 (right!43164 (left!42834 (right!43164 xs!286))))))))

(declare-fun b!5075289 () Bool)

(assert (=> b!5075289 (= e!3166463 (++!12800 (list!19013 (left!42834 (right!43164 (left!42834 (right!43164 xs!286))))) (list!19013 (right!43164 (right!43164 (left!42834 (right!43164 xs!286)))))))))

(declare-fun b!5075286 () Bool)

(declare-fun e!3166462 () List!58570)

(assert (=> b!5075286 (= e!3166462 Nil!58446)))

(declare-fun d!1638991 () Bool)

(declare-fun c!871471 () Bool)

(assert (=> d!1638991 (= c!871471 ((_ is Empty!15576) (right!43164 (left!42834 (right!43164 xs!286)))))))

(assert (=> d!1638991 (= (list!19013 (right!43164 (left!42834 (right!43164 xs!286)))) e!3166462)))

(declare-fun b!5075287 () Bool)

(assert (=> b!5075287 (= e!3166462 e!3166463)))

(declare-fun c!871472 () Bool)

(assert (=> b!5075287 (= c!871472 ((_ is Leaf!25869) (right!43164 (left!42834 (right!43164 xs!286)))))))

(assert (= (and d!1638991 c!871471) b!5075286))

(assert (= (and d!1638991 (not c!871471)) b!5075287))

(assert (= (and b!5075287 c!871472) b!5075288))

(assert (= (and b!5075287 (not c!871472)) b!5075289))

(declare-fun m!6123766 () Bool)

(assert (=> b!5075288 m!6123766))

(declare-fun m!6123768 () Bool)

(assert (=> b!5075289 m!6123768))

(declare-fun m!6123770 () Bool)

(assert (=> b!5075289 m!6123770))

(assert (=> b!5075289 m!6123768))

(assert (=> b!5075289 m!6123770))

(declare-fun m!6123772 () Bool)

(assert (=> b!5075289 m!6123772))

(assert (=> b!5074665 d!1638991))

(declare-fun d!1638993 () Bool)

(declare-fun res!2160882 () Bool)

(declare-fun e!3166464 () Bool)

(assert (=> d!1638993 (=> (not res!2160882) (not e!3166464))))

(assert (=> d!1638993 (= res!2160882 (= (csize!31382 (left!42834 (right!43164 ys!41))) (+ (size!39101 (left!42834 (left!42834 (right!43164 ys!41)))) (size!39101 (right!43164 (left!42834 (right!43164 ys!41)))))))))

(assert (=> d!1638993 (= (inv!77625 (left!42834 (right!43164 ys!41))) e!3166464)))

(declare-fun b!5075290 () Bool)

(declare-fun res!2160883 () Bool)

(assert (=> b!5075290 (=> (not res!2160883) (not e!3166464))))

(assert (=> b!5075290 (= res!2160883 (and (not (= (left!42834 (left!42834 (right!43164 ys!41))) Empty!15576)) (not (= (right!43164 (left!42834 (right!43164 ys!41))) Empty!15576))))))

(declare-fun b!5075291 () Bool)

(declare-fun res!2160884 () Bool)

(assert (=> b!5075291 (=> (not res!2160884) (not e!3166464))))

(assert (=> b!5075291 (= res!2160884 (= (cheight!15787 (left!42834 (right!43164 ys!41))) (+ (max!0 (height!2153 (left!42834 (left!42834 (right!43164 ys!41)))) (height!2153 (right!43164 (left!42834 (right!43164 ys!41))))) 1)))))

(declare-fun b!5075292 () Bool)

(assert (=> b!5075292 (= e!3166464 (<= 0 (cheight!15787 (left!42834 (right!43164 ys!41)))))))

(assert (= (and d!1638993 res!2160882) b!5075290))

(assert (= (and b!5075290 res!2160883) b!5075291))

(assert (= (and b!5075291 res!2160884) b!5075292))

(declare-fun m!6123774 () Bool)

(assert (=> d!1638993 m!6123774))

(declare-fun m!6123776 () Bool)

(assert (=> d!1638993 m!6123776))

(declare-fun m!6123778 () Bool)

(assert (=> b!5075291 m!6123778))

(declare-fun m!6123780 () Bool)

(assert (=> b!5075291 m!6123780))

(assert (=> b!5075291 m!6123778))

(assert (=> b!5075291 m!6123780))

(declare-fun m!6123782 () Bool)

(assert (=> b!5075291 m!6123782))

(assert (=> b!5074901 d!1638993))

(declare-fun d!1638995 () Bool)

(assert (=> d!1638995 (= (height!2153 (left!42834 (right!43164 lt!2089940))) (ite ((_ is Empty!15576) (left!42834 (right!43164 lt!2089940))) 0 (ite ((_ is Leaf!25869) (left!42834 (right!43164 lt!2089940))) 1 (cheight!15787 (left!42834 (right!43164 lt!2089940))))))))

(assert (=> b!5074911 d!1638995))

(declare-fun d!1638997 () Bool)

(assert (=> d!1638997 (= (height!2153 (right!43164 (right!43164 lt!2089940))) (ite ((_ is Empty!15576) (right!43164 (right!43164 lt!2089940))) 0 (ite ((_ is Leaf!25869) (right!43164 (right!43164 lt!2089940))) 1 (cheight!15787 (right!43164 (right!43164 lt!2089940))))))))

(assert (=> b!5074911 d!1638997))

(declare-fun d!1638999 () Bool)

(declare-fun lt!2090081 () Int)

(assert (=> d!1638999 (>= lt!2090081 0)))

(declare-fun e!3166465 () Int)

(assert (=> d!1638999 (= lt!2090081 e!3166465)))

(declare-fun c!871473 () Bool)

(assert (=> d!1638999 (= c!871473 ((_ is Nil!58446) lt!2090027))))

(assert (=> d!1638999 (= (size!39099 lt!2090027) lt!2090081)))

(declare-fun b!5075293 () Bool)

(assert (=> b!5075293 (= e!3166465 0)))

(declare-fun b!5075294 () Bool)

(assert (=> b!5075294 (= e!3166465 (+ 1 (size!39099 (t!371357 lt!2090027))))))

(assert (= (and d!1638999 c!871473) b!5075293))

(assert (= (and d!1638999 (not c!871473)) b!5075294))

(declare-fun m!6123784 () Bool)

(assert (=> b!5075294 m!6123784))

(assert (=> b!5074933 d!1638999))

(assert (=> b!5074933 d!1638793))

(declare-fun d!1639001 () Bool)

(declare-fun lt!2090082 () Int)

(assert (=> d!1639001 (>= lt!2090082 0)))

(declare-fun e!3166466 () Int)

(assert (=> d!1639001 (= lt!2090082 e!3166466)))

(declare-fun c!871474 () Bool)

(assert (=> d!1639001 (= c!871474 ((_ is Nil!58446) (list!19013 (left!42834 (left!42834 ys!41)))))))

(assert (=> d!1639001 (= (size!39099 (list!19013 (left!42834 (left!42834 ys!41)))) lt!2090082)))

(declare-fun b!5075295 () Bool)

(assert (=> b!5075295 (= e!3166466 0)))

(declare-fun b!5075296 () Bool)

(assert (=> b!5075296 (= e!3166466 (+ 1 (size!39099 (t!371357 (list!19013 (left!42834 (left!42834 ys!41)))))))))

(assert (= (and d!1639001 c!871474) b!5075295))

(assert (= (and d!1639001 (not c!871474)) b!5075296))

(declare-fun m!6123786 () Bool)

(assert (=> b!5075296 m!6123786))

(assert (=> b!5074933 d!1639001))

(declare-fun b!5075297 () Bool)

(declare-fun res!2160885 () Bool)

(declare-fun e!3166468 () Bool)

(assert (=> b!5075297 (=> (not res!2160885) (not e!3166468))))

(assert (=> b!5075297 (= res!2160885 (isBalanced!4438 (left!42834 (right!43164 (left!42834 lt!2089940)))))))

(declare-fun b!5075298 () Bool)

(declare-fun res!2160888 () Bool)

(assert (=> b!5075298 (=> (not res!2160888) (not e!3166468))))

(assert (=> b!5075298 (= res!2160888 (<= (- (height!2153 (left!42834 (right!43164 (left!42834 lt!2089940)))) (height!2153 (right!43164 (right!43164 (left!42834 lt!2089940))))) 1))))

(declare-fun d!1639003 () Bool)

(declare-fun res!2160887 () Bool)

(declare-fun e!3166467 () Bool)

(assert (=> d!1639003 (=> res!2160887 e!3166467)))

(assert (=> d!1639003 (= res!2160887 (not ((_ is Node!15576) (right!43164 (left!42834 lt!2089940)))))))

(assert (=> d!1639003 (= (isBalanced!4438 (right!43164 (left!42834 lt!2089940))) e!3166467)))

(declare-fun b!5075299 () Bool)

(assert (=> b!5075299 (= e!3166468 (not (isEmpty!31655 (right!43164 (right!43164 (left!42834 lt!2089940))))))))

(declare-fun b!5075300 () Bool)

(declare-fun res!2160886 () Bool)

(assert (=> b!5075300 (=> (not res!2160886) (not e!3166468))))

(assert (=> b!5075300 (= res!2160886 (not (isEmpty!31655 (left!42834 (right!43164 (left!42834 lt!2089940))))))))

(declare-fun b!5075301 () Bool)

(assert (=> b!5075301 (= e!3166467 e!3166468)))

(declare-fun res!2160889 () Bool)

(assert (=> b!5075301 (=> (not res!2160889) (not e!3166468))))

(assert (=> b!5075301 (= res!2160889 (<= (- 1) (- (height!2153 (left!42834 (right!43164 (left!42834 lt!2089940)))) (height!2153 (right!43164 (right!43164 (left!42834 lt!2089940)))))))))

(declare-fun b!5075302 () Bool)

(declare-fun res!2160890 () Bool)

(assert (=> b!5075302 (=> (not res!2160890) (not e!3166468))))

(assert (=> b!5075302 (= res!2160890 (isBalanced!4438 (right!43164 (right!43164 (left!42834 lt!2089940)))))))

(assert (= (and d!1639003 (not res!2160887)) b!5075301))

(assert (= (and b!5075301 res!2160889) b!5075298))

(assert (= (and b!5075298 res!2160888) b!5075297))

(assert (= (and b!5075297 res!2160885) b!5075302))

(assert (= (and b!5075302 res!2160890) b!5075300))

(assert (= (and b!5075300 res!2160886) b!5075299))

(declare-fun m!6123788 () Bool)

(assert (=> b!5075300 m!6123788))

(declare-fun m!6123790 () Bool)

(assert (=> b!5075299 m!6123790))

(declare-fun m!6123792 () Bool)

(assert (=> b!5075302 m!6123792))

(declare-fun m!6123794 () Bool)

(assert (=> b!5075301 m!6123794))

(declare-fun m!6123796 () Bool)

(assert (=> b!5075301 m!6123796))

(assert (=> b!5075298 m!6123794))

(assert (=> b!5075298 m!6123796))

(declare-fun m!6123798 () Bool)

(assert (=> b!5075297 m!6123798))

(assert (=> b!5074635 d!1639003))

(declare-fun d!1639005 () Bool)

(declare-fun lt!2090083 () Int)

(assert (=> d!1639005 (= lt!2090083 (size!39099 (list!19013 (left!42834 ys!41))))))

(assert (=> d!1639005 (= lt!2090083 (ite ((_ is Empty!15576) (left!42834 ys!41)) 0 (ite ((_ is Leaf!25869) (left!42834 ys!41)) (csize!31383 (left!42834 ys!41)) (csize!31382 (left!42834 ys!41)))))))

(assert (=> d!1639005 (= (size!39101 (left!42834 ys!41)) lt!2090083)))

(declare-fun bs!1190362 () Bool)

(assert (= bs!1190362 d!1639005))

(assert (=> bs!1190362 m!6122036))

(assert (=> bs!1190362 m!6122036))

(assert (=> bs!1190362 m!6122644))

(assert (=> d!1638737 d!1639005))

(assert (=> d!1638737 d!1638757))

(declare-fun d!1639007 () Bool)

(assert (=> d!1639007 (= (list!19014 (xs!18936 (left!42834 ys!41))) (innerList!15664 (xs!18936 (left!42834 ys!41))))))

(assert (=> b!5074712 d!1639007))

(declare-fun d!1639009 () Bool)

(declare-fun res!2160891 () Bool)

(declare-fun e!3166469 () Bool)

(assert (=> d!1639009 (=> (not res!2160891) (not e!3166469))))

(assert (=> d!1639009 (= res!2160891 (= (csize!31382 (right!43164 (right!43164 ys!41))) (+ (size!39101 (left!42834 (right!43164 (right!43164 ys!41)))) (size!39101 (right!43164 (right!43164 (right!43164 ys!41)))))))))

(assert (=> d!1639009 (= (inv!77625 (right!43164 (right!43164 ys!41))) e!3166469)))

(declare-fun b!5075303 () Bool)

(declare-fun res!2160892 () Bool)

(assert (=> b!5075303 (=> (not res!2160892) (not e!3166469))))

(assert (=> b!5075303 (= res!2160892 (and (not (= (left!42834 (right!43164 (right!43164 ys!41))) Empty!15576)) (not (= (right!43164 (right!43164 (right!43164 ys!41))) Empty!15576))))))

(declare-fun b!5075304 () Bool)

(declare-fun res!2160893 () Bool)

(assert (=> b!5075304 (=> (not res!2160893) (not e!3166469))))

(assert (=> b!5075304 (= res!2160893 (= (cheight!15787 (right!43164 (right!43164 ys!41))) (+ (max!0 (height!2153 (left!42834 (right!43164 (right!43164 ys!41)))) (height!2153 (right!43164 (right!43164 (right!43164 ys!41))))) 1)))))

(declare-fun b!5075305 () Bool)

(assert (=> b!5075305 (= e!3166469 (<= 0 (cheight!15787 (right!43164 (right!43164 ys!41)))))))

(assert (= (and d!1639009 res!2160891) b!5075303))

(assert (= (and b!5075303 res!2160892) b!5075304))

(assert (= (and b!5075304 res!2160893) b!5075305))

(declare-fun m!6123800 () Bool)

(assert (=> d!1639009 m!6123800))

(declare-fun m!6123802 () Bool)

(assert (=> d!1639009 m!6123802))

(assert (=> b!5075304 m!6123606))

(assert (=> b!5075304 m!6123608))

(assert (=> b!5075304 m!6123606))

(assert (=> b!5075304 m!6123608))

(declare-fun m!6123804 () Bool)

(assert (=> b!5075304 m!6123804))

(assert (=> b!5074904 d!1639009))

(declare-fun b!5075306 () Bool)

(declare-fun res!2160894 () Bool)

(declare-fun e!3166471 () Bool)

(assert (=> b!5075306 (=> (not res!2160894) (not e!3166471))))

(assert (=> b!5075306 (= res!2160894 (isBalanced!4438 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))))))

(declare-fun b!5075307 () Bool)

(declare-fun res!2160897 () Bool)

(assert (=> b!5075307 (=> (not res!2160897) (not e!3166471))))

(assert (=> b!5075307 (= res!2160897 (<= (- (height!2153 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))) (height!2153 (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))) 1))))

(declare-fun d!1639011 () Bool)

(declare-fun res!2160896 () Bool)

(declare-fun e!3166470 () Bool)

(assert (=> d!1639011 (=> res!2160896 e!3166470)))

(assert (=> d!1639011 (= res!2160896 (not ((_ is Node!15576) (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))))))

(assert (=> d!1639011 (= (isBalanced!4438 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) e!3166470)))

(declare-fun b!5075308 () Bool)

(assert (=> b!5075308 (= e!3166471 (not (isEmpty!31655 (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))))

(declare-fun b!5075309 () Bool)

(declare-fun res!2160895 () Bool)

(assert (=> b!5075309 (=> (not res!2160895) (not e!3166471))))

(assert (=> b!5075309 (= res!2160895 (not (isEmpty!31655 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))))

(declare-fun b!5075310 () Bool)

(assert (=> b!5075310 (= e!3166470 e!3166471)))

(declare-fun res!2160898 () Bool)

(assert (=> b!5075310 (=> (not res!2160898) (not e!3166471))))

(assert (=> b!5075310 (= res!2160898 (<= (- 1) (- (height!2153 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))) (height!2153 (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))))))))

(declare-fun b!5075311 () Bool)

(declare-fun res!2160899 () Bool)

(assert (=> b!5075311 (=> (not res!2160899) (not e!3166471))))

(assert (=> b!5075311 (= res!2160899 (isBalanced!4438 (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))))))

(assert (= (and d!1639011 (not res!2160896)) b!5075310))

(assert (= (and b!5075310 res!2160898) b!5075307))

(assert (= (and b!5075307 res!2160897) b!5075306))

(assert (= (and b!5075306 res!2160894) b!5075311))

(assert (= (and b!5075311 res!2160899) b!5075309))

(assert (= (and b!5075309 res!2160895) b!5075308))

(declare-fun m!6123806 () Bool)

(assert (=> b!5075309 m!6123806))

(declare-fun m!6123808 () Bool)

(assert (=> b!5075308 m!6123808))

(declare-fun m!6123810 () Bool)

(assert (=> b!5075311 m!6123810))

(declare-fun m!6123812 () Bool)

(assert (=> b!5075310 m!6123812))

(declare-fun m!6123814 () Bool)

(assert (=> b!5075310 m!6123814))

(assert (=> b!5075307 m!6123812))

(assert (=> b!5075307 m!6123814))

(declare-fun m!6123816 () Bool)

(assert (=> b!5075306 m!6123816))

(assert (=> b!5074806 d!1639011))

(declare-fun d!1639013 () Bool)

(assert (=> d!1639013 (= (isEmpty!31656 (list!19013 (right!43164 ys!41))) ((_ is Nil!58446) (list!19013 (right!43164 ys!41))))))

(assert (=> d!1638729 d!1639013))

(assert (=> d!1638729 d!1638605))

(assert (=> d!1638729 d!1638757))

(declare-fun bm!353597 () Bool)

(declare-fun call!353605 () List!58570)

(declare-fun call!353604 () List!58570)

(assert (=> bm!353597 (= call!353605 (++!12800 call!353604 (list!19013 ys!41)))))

(declare-fun bm!353598 () Bool)

(assert (=> bm!353598 (= call!353604 (++!12800 (t!371357 (list!19013 (left!42834 (right!43164 xs!286)))) (list!19013 (right!43164 (right!43164 xs!286)))))))

(declare-fun d!1639015 () Bool)

(declare-fun e!3166472 () Bool)

(assert (=> d!1639015 e!3166472))

(declare-fun c!871475 () Bool)

(assert (=> d!1639015 (= c!871475 ((_ is Nil!58446) (t!371357 (list!19013 (left!42834 (right!43164 xs!286))))))))

(assert (=> d!1639015 (= (appendAssoc!308 (t!371357 (list!19013 (left!42834 (right!43164 xs!286)))) (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 ys!41)) true)))

(declare-fun bm!353599 () Bool)

(declare-fun call!353603 () List!58570)

(declare-fun call!353602 () List!58570)

(assert (=> bm!353599 (= call!353603 (++!12800 (t!371357 (list!19013 (left!42834 (right!43164 xs!286)))) call!353602))))

(declare-fun b!5075312 () Bool)

(assert (=> b!5075312 (= e!3166472 (= call!353605 call!353603))))

(declare-fun lt!2090084 () Bool)

(assert (=> b!5075312 (= lt!2090084 (appendAssoc!308 (t!371357 (t!371357 (list!19013 (left!42834 (right!43164 xs!286))))) (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 ys!41)))))

(declare-fun b!5075313 () Bool)

(assert (=> b!5075313 (= e!3166472 (= call!353605 call!353603))))

(declare-fun bm!353600 () Bool)

(assert (=> bm!353600 (= call!353602 (++!12800 (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 ys!41)))))

(assert (= (and d!1639015 c!871475) b!5075313))

(assert (= (and d!1639015 (not c!871475)) b!5075312))

(assert (= (or b!5075313 b!5075312) bm!353598))

(assert (= (or b!5075313 b!5075312) bm!353600))

(assert (= (or b!5075313 b!5075312) bm!353599))

(assert (= (or b!5075313 b!5075312) bm!353597))

(assert (=> b!5075312 m!6122170))

(assert (=> b!5075312 m!6121980))

(declare-fun m!6123818 () Bool)

(assert (=> b!5075312 m!6123818))

(assert (=> bm!353598 m!6122170))

(declare-fun m!6123820 () Bool)

(assert (=> bm!353598 m!6123820))

(assert (=> bm!353597 m!6121980))

(declare-fun m!6123822 () Bool)

(assert (=> bm!353597 m!6123822))

(assert (=> bm!353600 m!6122170))

(assert (=> bm!353600 m!6121980))

(assert (=> bm!353600 m!6122186))

(declare-fun m!6123824 () Bool)

(assert (=> bm!353599 m!6123824))

(assert (=> b!5074656 d!1639015))

(declare-fun d!1639017 () Bool)

(assert (=> d!1639017 (= (height!2153 (ite c!871348 (left!42834 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))) (ite ((_ is Empty!15576) (ite c!871348 (left!42834 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))) 0 (ite ((_ is Leaf!25869) (ite c!871348 (left!42834 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))) 1 (cheight!15787 (ite c!871348 (left!42834 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))))))

(assert (=> bm!353536 d!1639017))

(declare-fun lt!2090085 () List!58570)

(declare-fun b!5075317 () Bool)

(declare-fun e!3166474 () Bool)

(assert (=> b!5075317 (= e!3166474 (or (not (= call!353586 Nil!58446)) (= lt!2090085 (list!19013 (left!42834 xs!286)))))))

(declare-fun b!5075315 () Bool)

(declare-fun e!3166473 () List!58570)

(assert (=> b!5075315 (= e!3166473 (Cons!58446 (h!64894 (list!19013 (left!42834 xs!286))) (++!12800 (t!371357 (list!19013 (left!42834 xs!286))) call!353586)))))

(declare-fun d!1639019 () Bool)

(assert (=> d!1639019 e!3166474))

(declare-fun res!2160901 () Bool)

(assert (=> d!1639019 (=> (not res!2160901) (not e!3166474))))

(assert (=> d!1639019 (= res!2160901 (= (content!10423 lt!2090085) ((_ map or) (content!10423 (list!19013 (left!42834 xs!286))) (content!10423 call!353586))))))

(assert (=> d!1639019 (= lt!2090085 e!3166473)))

(declare-fun c!871476 () Bool)

(assert (=> d!1639019 (= c!871476 ((_ is Nil!58446) (list!19013 (left!42834 xs!286))))))

(assert (=> d!1639019 (= (++!12800 (list!19013 (left!42834 xs!286)) call!353586) lt!2090085)))

(declare-fun b!5075316 () Bool)

(declare-fun res!2160900 () Bool)

(assert (=> b!5075316 (=> (not res!2160900) (not e!3166474))))

(assert (=> b!5075316 (= res!2160900 (= (size!39099 lt!2090085) (+ (size!39099 (list!19013 (left!42834 xs!286))) (size!39099 call!353586))))))

(declare-fun b!5075314 () Bool)

(assert (=> b!5075314 (= e!3166473 call!353586)))

(assert (= (and d!1639019 c!871476) b!5075314))

(assert (= (and d!1639019 (not c!871476)) b!5075315))

(assert (= (and d!1639019 res!2160901) b!5075316))

(assert (= (and b!5075316 res!2160900) b!5075317))

(declare-fun m!6123826 () Bool)

(assert (=> b!5075315 m!6123826))

(declare-fun m!6123828 () Bool)

(assert (=> d!1639019 m!6123828))

(assert (=> d!1639019 m!6122028))

(assert (=> d!1639019 m!6122536))

(declare-fun m!6123830 () Bool)

(assert (=> d!1639019 m!6123830))

(declare-fun m!6123832 () Bool)

(assert (=> b!5075316 m!6123832))

(assert (=> b!5075316 m!6122028))

(assert (=> b!5075316 m!6122542))

(declare-fun m!6123834 () Bool)

(assert (=> b!5075316 m!6123834))

(assert (=> bm!353583 d!1639019))

(assert (=> b!5074568 d!1638783))

(assert (=> b!5074568 d!1638787))

(declare-fun d!1639021 () Bool)

(declare-fun res!2160902 () Bool)

(declare-fun e!3166475 () Bool)

(assert (=> d!1639021 (=> (not res!2160902) (not e!3166475))))

(assert (=> d!1639021 (= res!2160902 (<= (size!39099 (list!19014 (xs!18936 (right!43164 (right!43164 xs!286))))) 512))))

(assert (=> d!1639021 (= (inv!77626 (right!43164 (right!43164 xs!286))) e!3166475)))

(declare-fun b!5075318 () Bool)

(declare-fun res!2160903 () Bool)

(assert (=> b!5075318 (=> (not res!2160903) (not e!3166475))))

(assert (=> b!5075318 (= res!2160903 (= (csize!31383 (right!43164 (right!43164 xs!286))) (size!39099 (list!19014 (xs!18936 (right!43164 (right!43164 xs!286)))))))))

(declare-fun b!5075319 () Bool)

(assert (=> b!5075319 (= e!3166475 (and (> (csize!31383 (right!43164 (right!43164 xs!286))) 0) (<= (csize!31383 (right!43164 (right!43164 xs!286))) 512)))))

(assert (= (and d!1639021 res!2160902) b!5075318))

(assert (= (and b!5075318 res!2160903) b!5075319))

(assert (=> d!1639021 m!6122520))

(assert (=> d!1639021 m!6122520))

(declare-fun m!6123836 () Bool)

(assert (=> d!1639021 m!6123836))

(assert (=> b!5075318 m!6122520))

(assert (=> b!5075318 m!6122520))

(assert (=> b!5075318 m!6123836))

(assert (=> b!5074770 d!1639021))

(declare-fun d!1639023 () Bool)

(declare-fun lt!2090086 () Int)

(assert (=> d!1639023 (>= lt!2090086 0)))

(declare-fun e!3166476 () Int)

(assert (=> d!1639023 (= lt!2090086 e!3166476)))

(declare-fun c!871477 () Bool)

(assert (=> d!1639023 (= c!871477 ((_ is Nil!58446) lt!2090040))))

(assert (=> d!1639023 (= (size!39099 lt!2090040) lt!2090086)))

(declare-fun b!5075320 () Bool)

(assert (=> b!5075320 (= e!3166476 0)))

(declare-fun b!5075321 () Bool)

(assert (=> b!5075321 (= e!3166476 (+ 1 (size!39099 (t!371357 lt!2090040))))))

(assert (= (and d!1639023 c!871477) b!5075320))

(assert (= (and d!1639023 (not c!871477)) b!5075321))

(declare-fun m!6123838 () Bool)

(assert (=> b!5075321 m!6123838))

(assert (=> b!5074994 d!1639023))

(declare-fun d!1639025 () Bool)

(declare-fun lt!2090087 () Int)

(assert (=> d!1639025 (>= lt!2090087 0)))

(declare-fun e!3166477 () Int)

(assert (=> d!1639025 (= lt!2090087 e!3166477)))

(declare-fun c!871478 () Bool)

(assert (=> d!1639025 (= c!871478 ((_ is Nil!58446) (list!19013 (right!43164 (right!43164 xs!286)))))))

(assert (=> d!1639025 (= (size!39099 (list!19013 (right!43164 (right!43164 xs!286)))) lt!2090087)))

(declare-fun b!5075322 () Bool)

(assert (=> b!5075322 (= e!3166477 0)))

(declare-fun b!5075323 () Bool)

(assert (=> b!5075323 (= e!3166477 (+ 1 (size!39099 (t!371357 (list!19013 (right!43164 (right!43164 xs!286)))))))))

(assert (= (and d!1639025 c!871478) b!5075322))

(assert (= (and d!1639025 (not c!871478)) b!5075323))

(assert (=> b!5075323 m!6123694))

(assert (=> b!5074994 d!1639025))

(assert (=> b!5074994 d!1638797))

(declare-fun b!5075324 () Bool)

(declare-fun e!3166479 () Conc!15576)

(assert (=> b!5075324 (= e!3166479 (ite c!871355 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))) (ite c!871348 (ite c!871353 call!353539 (ite c!871350 call!353551 lt!2090008)) (ite c!871352 (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) call!353552))))))

(declare-fun e!3166478 () Conc!15576)

(declare-fun b!5075327 () Bool)

(assert (=> b!5075327 (= e!3166478 (Node!15576 (ite c!871355 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286) (ite c!871348 (ite (or c!871353 c!871350) (left!42834 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) call!353551) (ite c!871352 call!353552 lt!2090005))) (ite c!871355 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))) (ite c!871348 (ite c!871353 call!353539 (ite c!871350 call!353551 lt!2090008)) (ite c!871352 (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) call!353552))) (+ (size!39101 (ite c!871355 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286) (ite c!871348 (ite (or c!871353 c!871350) (left!42834 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) call!353551) (ite c!871352 call!353552 lt!2090005)))) (size!39101 (ite c!871355 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))) (ite c!871348 (ite c!871353 call!353539 (ite c!871350 call!353551 lt!2090008)) (ite c!871352 (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) call!353552))))) (+ (max!0 (height!2153 (ite c!871355 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286) (ite c!871348 (ite (or c!871353 c!871350) (left!42834 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) call!353551) (ite c!871352 call!353552 lt!2090005)))) (height!2153 (ite c!871355 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))) (ite c!871348 (ite c!871353 call!353539 (ite c!871350 call!353551 lt!2090008)) (ite c!871352 (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) call!353552))))) 1)))))

(declare-fun lt!2090088 () Conc!15576)

(declare-fun d!1639027 () Bool)

(assert (=> d!1639027 (= (list!19013 lt!2090088) (++!12800 (list!19013 (ite c!871355 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286) (ite c!871348 (ite (or c!871353 c!871350) (left!42834 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) call!353551) (ite c!871352 call!353552 lt!2090005)))) (list!19013 (ite c!871355 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))) (ite c!871348 (ite c!871353 call!353539 (ite c!871350 call!353551 lt!2090008)) (ite c!871352 (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) call!353552))))))))

(assert (=> d!1639027 (= lt!2090088 e!3166479)))

(declare-fun c!871480 () Bool)

(assert (=> d!1639027 (= c!871480 (= (ite c!871355 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286) (ite c!871348 (ite (or c!871353 c!871350) (left!42834 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) call!353551) (ite c!871352 call!353552 lt!2090005))) Empty!15576))))

(assert (=> d!1639027 (= (<>!398 (ite c!871355 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286) (ite c!871348 (ite (or c!871353 c!871350) (left!42834 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) call!353551) (ite c!871352 call!353552 lt!2090005))) (ite c!871355 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))) (ite c!871348 (ite c!871353 call!353539 (ite c!871350 call!353551 lt!2090008)) (ite c!871352 (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) call!353552)))) lt!2090088)))

(declare-fun b!5075325 () Bool)

(assert (=> b!5075325 (= e!3166479 e!3166478)))

(declare-fun c!871479 () Bool)

(assert (=> b!5075325 (= c!871479 (= (ite c!871355 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))) (ite c!871348 (ite c!871353 call!353539 (ite c!871350 call!353551 lt!2090008)) (ite c!871352 (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) call!353552))) Empty!15576))))

(declare-fun b!5075326 () Bool)

(assert (=> b!5075326 (= e!3166478 (ite c!871355 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286) (ite c!871348 (ite (or c!871353 c!871350) (left!42834 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) call!353551) (ite c!871352 call!353552 lt!2090005))))))

(assert (= (and d!1639027 c!871480) b!5075324))

(assert (= (and d!1639027 (not c!871480)) b!5075325))

(assert (= (and b!5075325 c!871479) b!5075326))

(assert (= (and b!5075325 (not c!871479)) b!5075327))

(declare-fun m!6123840 () Bool)

(assert (=> b!5075327 m!6123840))

(declare-fun m!6123842 () Bool)

(assert (=> b!5075327 m!6123842))

(assert (=> b!5075327 m!6123842))

(declare-fun m!6123844 () Bool)

(assert (=> b!5075327 m!6123844))

(declare-fun m!6123846 () Bool)

(assert (=> b!5075327 m!6123846))

(assert (=> b!5075327 m!6123844))

(declare-fun m!6123848 () Bool)

(assert (=> b!5075327 m!6123848))

(declare-fun m!6123850 () Bool)

(assert (=> d!1639027 m!6123850))

(declare-fun m!6123852 () Bool)

(assert (=> d!1639027 m!6123852))

(declare-fun m!6123854 () Bool)

(assert (=> d!1639027 m!6123854))

(assert (=> d!1639027 m!6123852))

(assert (=> d!1639027 m!6123854))

(declare-fun m!6123856 () Bool)

(assert (=> d!1639027 m!6123856))

(assert (=> bm!353546 d!1639027))

(declare-fun d!1639029 () Bool)

(declare-fun res!2160904 () Bool)

(declare-fun e!3166480 () Bool)

(assert (=> d!1639029 (=> (not res!2160904) (not e!3166480))))

(assert (=> d!1639029 (= res!2160904 (<= (size!39099 (list!19014 (xs!18936 (left!42834 (right!43164 xs!286))))) 512))))

(assert (=> d!1639029 (= (inv!77626 (left!42834 (right!43164 xs!286))) e!3166480)))

(declare-fun b!5075328 () Bool)

(declare-fun res!2160905 () Bool)

(assert (=> b!5075328 (=> (not res!2160905) (not e!3166480))))

(assert (=> b!5075328 (= res!2160905 (= (csize!31383 (left!42834 (right!43164 xs!286))) (size!39099 (list!19014 (xs!18936 (left!42834 (right!43164 xs!286)))))))))

(declare-fun b!5075329 () Bool)

(assert (=> b!5075329 (= e!3166480 (and (> (csize!31383 (left!42834 (right!43164 xs!286))) 0) (<= (csize!31383 (left!42834 (right!43164 xs!286))) 512)))))

(assert (= (and d!1639029 res!2160904) b!5075328))

(assert (= (and b!5075328 res!2160905) b!5075329))

(assert (=> d!1639029 m!6122508))

(assert (=> d!1639029 m!6122508))

(declare-fun m!6123858 () Bool)

(assert (=> d!1639029 m!6123858))

(assert (=> b!5075328 m!6122508))

(assert (=> b!5075328 m!6122508))

(assert (=> b!5075328 m!6123858))

(assert (=> b!5074765 d!1639029))

(declare-fun bm!353601 () Bool)

(declare-fun call!353609 () List!58570)

(declare-fun call!353608 () List!58570)

(assert (=> bm!353601 (= call!353609 (++!12800 call!353608 (list!19013 (left!42834 ys!41))))))

(declare-fun bm!353602 () Bool)

(assert (=> bm!353602 (= call!353608 (++!12800 (list!19013 (left!42834 xs!286)) (list!19013 (right!43164 xs!286))))))

(declare-fun d!1639031 () Bool)

(declare-fun e!3166481 () Bool)

(assert (=> d!1639031 e!3166481))

(declare-fun c!871481 () Bool)

(assert (=> d!1639031 (= c!871481 ((_ is Nil!58446) (list!19013 (left!42834 xs!286))))))

(assert (=> d!1639031 (= (appendAssoc!308 (list!19013 (left!42834 xs!286)) (list!19013 (right!43164 xs!286)) (list!19013 (left!42834 ys!41))) true)))

(declare-fun bm!353603 () Bool)

(declare-fun call!353607 () List!58570)

(declare-fun call!353606 () List!58570)

(assert (=> bm!353603 (= call!353607 (++!12800 (list!19013 (left!42834 xs!286)) call!353606))))

(declare-fun b!5075330 () Bool)

(assert (=> b!5075330 (= e!3166481 (= call!353609 call!353607))))

(declare-fun lt!2090089 () Bool)

(assert (=> b!5075330 (= lt!2090089 (appendAssoc!308 (t!371357 (list!19013 (left!42834 xs!286))) (list!19013 (right!43164 xs!286)) (list!19013 (left!42834 ys!41))))))

(declare-fun b!5075331 () Bool)

(assert (=> b!5075331 (= e!3166481 (= call!353609 call!353607))))

(declare-fun bm!353604 () Bool)

(assert (=> bm!353604 (= call!353606 (++!12800 (list!19013 (right!43164 xs!286)) (list!19013 (left!42834 ys!41))))))

(assert (= (and d!1639031 c!871481) b!5075331))

(assert (= (and d!1639031 (not c!871481)) b!5075330))

(assert (= (or b!5075331 b!5075330) bm!353602))

(assert (= (or b!5075331 b!5075330) bm!353604))

(assert (= (or b!5075331 b!5075330) bm!353603))

(assert (= (or b!5075331 b!5075330) bm!353601))

(assert (=> b!5075330 m!6122030))

(assert (=> b!5075330 m!6122036))

(declare-fun m!6123860 () Bool)

(assert (=> b!5075330 m!6123860))

(assert (=> bm!353602 m!6122028))

(assert (=> bm!353602 m!6122030))

(assert (=> bm!353602 m!6122032))

(assert (=> bm!353601 m!6122036))

(declare-fun m!6123862 () Bool)

(assert (=> bm!353601 m!6123862))

(assert (=> bm!353604 m!6122030))

(assert (=> bm!353604 m!6122036))

(declare-fun m!6123864 () Bool)

(assert (=> bm!353604 m!6123864))

(assert (=> bm!353603 m!6122028))

(declare-fun m!6123866 () Bool)

(assert (=> bm!353603 m!6123866))

(assert (=> b!5074771 d!1639031))

(assert (=> b!5074771 d!1638583))

(assert (=> b!5074771 d!1638585))

(assert (=> b!5074771 d!1638601))

(declare-fun d!1639033 () Bool)

(declare-fun lt!2090090 () Int)

(assert (=> d!1639033 (>= lt!2090090 0)))

(declare-fun e!3166482 () Int)

(assert (=> d!1639033 (= lt!2090090 e!3166482)))

(declare-fun c!871482 () Bool)

(assert (=> d!1639033 (= c!871482 ((_ is Nil!58446) lt!2090021))))

(assert (=> d!1639033 (= (size!39099 lt!2090021) lt!2090090)))

(declare-fun b!5075332 () Bool)

(assert (=> b!5075332 (= e!3166482 0)))

(declare-fun b!5075333 () Bool)

(assert (=> b!5075333 (= e!3166482 (+ 1 (size!39099 (t!371357 lt!2090021))))))

(assert (= (and d!1639033 c!871482) b!5075332))

(assert (= (and d!1639033 (not c!871482)) b!5075333))

(declare-fun m!6123868 () Bool)

(assert (=> b!5075333 m!6123868))

(assert (=> b!5074877 d!1639033))

(assert (=> b!5074877 d!1638979))

(declare-fun d!1639035 () Bool)

(declare-fun lt!2090091 () Int)

(assert (=> d!1639035 (>= lt!2090091 0)))

(declare-fun e!3166483 () Int)

(assert (=> d!1639035 (= lt!2090091 e!3166483)))

(declare-fun c!871483 () Bool)

(assert (=> d!1639035 (= c!871483 ((_ is Nil!58446) (list!19013 (right!43164 ys!41))))))

(assert (=> d!1639035 (= (size!39099 (list!19013 (right!43164 ys!41))) lt!2090091)))

(declare-fun b!5075334 () Bool)

(assert (=> b!5075334 (= e!3166483 0)))

(declare-fun b!5075335 () Bool)

(assert (=> b!5075335 (= e!3166483 (+ 1 (size!39099 (t!371357 (list!19013 (right!43164 ys!41))))))))

(assert (= (and d!1639035 c!871483) b!5075334))

(assert (= (and d!1639035 (not c!871483)) b!5075335))

(declare-fun m!6123870 () Bool)

(assert (=> b!5075335 m!6123870))

(assert (=> b!5074877 d!1639035))

(assert (=> b!5074741 d!1638963))

(assert (=> b!5074741 d!1638965))

(declare-fun d!1639037 () Bool)

(declare-fun lt!2090092 () Int)

(assert (=> d!1639037 (>= lt!2090092 0)))

(declare-fun e!3166484 () Int)

(assert (=> d!1639037 (= lt!2090092 e!3166484)))

(declare-fun c!871484 () Bool)

(assert (=> d!1639037 (= c!871484 ((_ is Nil!58446) (innerList!15664 (xs!18936 (left!42834 xs!286)))))))

(assert (=> d!1639037 (= (size!39099 (innerList!15664 (xs!18936 (left!42834 xs!286)))) lt!2090092)))

(declare-fun b!5075336 () Bool)

(assert (=> b!5075336 (= e!3166484 0)))

(declare-fun b!5075337 () Bool)

(assert (=> b!5075337 (= e!3166484 (+ 1 (size!39099 (t!371357 (innerList!15664 (xs!18936 (left!42834 xs!286)))))))))

(assert (= (and d!1639037 c!871484) b!5075336))

(assert (= (and d!1639037 (not c!871484)) b!5075337))

(declare-fun m!6123872 () Bool)

(assert (=> b!5075337 m!6123872))

(assert (=> d!1638731 d!1639037))

(declare-fun e!3166486 () Bool)

(declare-fun lt!2090093 () List!58570)

(declare-fun b!5075341 () Bool)

(assert (=> b!5075341 (= e!3166486 (or (not (= call!353570 Nil!58446)) (= lt!2090093 (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 ys!41)))))))))

(declare-fun e!3166485 () List!58570)

(declare-fun b!5075339 () Bool)

(assert (=> b!5075339 (= e!3166485 (Cons!58446 (h!64894 (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 ys!41))))) (++!12800 (t!371357 (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 ys!41))))) call!353570)))))

(declare-fun d!1639039 () Bool)

(assert (=> d!1639039 e!3166486))

(declare-fun res!2160907 () Bool)

(assert (=> d!1639039 (=> (not res!2160907) (not e!3166486))))

(assert (=> d!1639039 (= res!2160907 (= (content!10423 lt!2090093) ((_ map or) (content!10423 (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 ys!41))))) (content!10423 call!353570))))))

(assert (=> d!1639039 (= lt!2090093 e!3166485)))

(declare-fun c!871485 () Bool)

(assert (=> d!1639039 (= c!871485 ((_ is Nil!58446) (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 ys!41))))))))

(assert (=> d!1639039 (= (++!12800 (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 ys!41)))) call!353570) lt!2090093)))

(declare-fun b!5075340 () Bool)

(declare-fun res!2160906 () Bool)

(assert (=> b!5075340 (=> (not res!2160906) (not e!3166486))))

(assert (=> b!5075340 (= res!2160906 (= (size!39099 lt!2090093) (+ (size!39099 (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 ys!41))))) (size!39099 call!353570))))))

(declare-fun b!5075338 () Bool)

(assert (=> b!5075338 (= e!3166485 call!353570)))

(assert (= (and d!1639039 c!871485) b!5075338))

(assert (= (and d!1639039 (not c!871485)) b!5075339))

(assert (= (and d!1639039 res!2160907) b!5075340))

(assert (= (and b!5075340 res!2160906) b!5075341))

(declare-fun m!6123874 () Bool)

(assert (=> b!5075339 m!6123874))

(declare-fun m!6123876 () Bool)

(assert (=> d!1639039 m!6123876))

(assert (=> d!1639039 m!6122174))

(assert (=> d!1639039 m!6123536))

(declare-fun m!6123878 () Bool)

(assert (=> d!1639039 m!6123878))

(declare-fun m!6123880 () Bool)

(assert (=> b!5075340 m!6123880))

(assert (=> b!5075340 m!6122174))

(assert (=> b!5075340 m!6123542))

(declare-fun m!6123882 () Bool)

(assert (=> b!5075340 m!6123882))

(assert (=> bm!353567 d!1639039))

(declare-fun d!1639041 () Bool)

(declare-fun lt!2090094 () Int)

(assert (=> d!1639041 (>= lt!2090094 0)))

(declare-fun e!3166487 () Int)

(assert (=> d!1639041 (= lt!2090094 e!3166487)))

(declare-fun c!871486 () Bool)

(assert (=> d!1639041 (= c!871486 ((_ is Nil!58446) (list!19014 (xs!18936 (right!43164 ys!41)))))))

(assert (=> d!1639041 (= (size!39099 (list!19014 (xs!18936 (right!43164 ys!41)))) lt!2090094)))

(declare-fun b!5075342 () Bool)

(assert (=> b!5075342 (= e!3166487 0)))

(declare-fun b!5075343 () Bool)

(assert (=> b!5075343 (= e!3166487 (+ 1 (size!39099 (t!371357 (list!19014 (xs!18936 (right!43164 ys!41)))))))))

(assert (= (and d!1639041 c!871486) b!5075342))

(assert (= (and d!1639041 (not c!871486)) b!5075343))

(declare-fun m!6123884 () Bool)

(assert (=> b!5075343 m!6123884))

(assert (=> d!1638721 d!1639041))

(declare-fun d!1639043 () Bool)

(assert (=> d!1639043 (= (list!19014 (xs!18936 (right!43164 ys!41))) (innerList!15664 (xs!18936 (right!43164 ys!41))))))

(assert (=> d!1638721 d!1639043))

(declare-fun d!1639045 () Bool)

(declare-fun c!871487 () Bool)

(assert (=> d!1639045 (= c!871487 ((_ is Node!15576) (left!42834 (right!43164 (right!43164 xs!286)))))))

(declare-fun e!3166488 () Bool)

(assert (=> d!1639045 (= (inv!77621 (left!42834 (right!43164 (right!43164 xs!286)))) e!3166488)))

(declare-fun b!5075344 () Bool)

(assert (=> b!5075344 (= e!3166488 (inv!77625 (left!42834 (right!43164 (right!43164 xs!286)))))))

(declare-fun b!5075345 () Bool)

(declare-fun e!3166489 () Bool)

(assert (=> b!5075345 (= e!3166488 e!3166489)))

(declare-fun res!2160908 () Bool)

(assert (=> b!5075345 (= res!2160908 (not ((_ is Leaf!25869) (left!42834 (right!43164 (right!43164 xs!286))))))))

(assert (=> b!5075345 (=> res!2160908 e!3166489)))

(declare-fun b!5075346 () Bool)

(assert (=> b!5075346 (= e!3166489 (inv!77626 (left!42834 (right!43164 (right!43164 xs!286)))))))

(assert (= (and d!1639045 c!871487) b!5075344))

(assert (= (and d!1639045 (not c!871487)) b!5075345))

(assert (= (and b!5075345 (not res!2160908)) b!5075346))

(declare-fun m!6123886 () Bool)

(assert (=> b!5075344 m!6123886))

(declare-fun m!6123888 () Bool)

(assert (=> b!5075346 m!6123888))

(assert (=> b!5075066 d!1639045))

(declare-fun d!1639047 () Bool)

(declare-fun c!871488 () Bool)

(assert (=> d!1639047 (= c!871488 ((_ is Node!15576) (right!43164 (right!43164 (right!43164 xs!286)))))))

(declare-fun e!3166490 () Bool)

(assert (=> d!1639047 (= (inv!77621 (right!43164 (right!43164 (right!43164 xs!286)))) e!3166490)))

(declare-fun b!5075347 () Bool)

(assert (=> b!5075347 (= e!3166490 (inv!77625 (right!43164 (right!43164 (right!43164 xs!286)))))))

(declare-fun b!5075348 () Bool)

(declare-fun e!3166491 () Bool)

(assert (=> b!5075348 (= e!3166490 e!3166491)))

(declare-fun res!2160909 () Bool)

(assert (=> b!5075348 (= res!2160909 (not ((_ is Leaf!25869) (right!43164 (right!43164 (right!43164 xs!286))))))))

(assert (=> b!5075348 (=> res!2160909 e!3166491)))

(declare-fun b!5075349 () Bool)

(assert (=> b!5075349 (= e!3166491 (inv!77626 (right!43164 (right!43164 (right!43164 xs!286)))))))

(assert (= (and d!1639047 c!871488) b!5075347))

(assert (= (and d!1639047 (not c!871488)) b!5075348))

(assert (= (and b!5075348 (not res!2160909)) b!5075349))

(declare-fun m!6123890 () Bool)

(assert (=> b!5075347 m!6123890))

(declare-fun m!6123892 () Bool)

(assert (=> b!5075349 m!6123892))

(assert (=> b!5075066 d!1639047))

(declare-fun d!1639049 () Bool)

(declare-fun lt!2090095 () Bool)

(assert (=> d!1639049 (= lt!2090095 (isEmpty!31656 (list!19013 (right!43164 (right!43164 xs!286)))))))

(assert (=> d!1639049 (= lt!2090095 (= (size!39101 (right!43164 (right!43164 xs!286))) 0))))

(assert (=> d!1639049 (= (isEmpty!31655 (right!43164 (right!43164 xs!286))) lt!2090095)))

(declare-fun bs!1190363 () Bool)

(assert (= bs!1190363 d!1639049))

(assert (=> bs!1190363 m!6122170))

(assert (=> bs!1190363 m!6122170))

(declare-fun m!6123894 () Bool)

(assert (=> bs!1190363 m!6123894))

(assert (=> bs!1190363 m!6122762))

(assert (=> b!5074897 d!1639049))

(declare-fun e!3166493 () Bool)

(declare-fun b!5075353 () Bool)

(declare-fun lt!2090096 () List!58570)

(assert (=> b!5075353 (= e!3166493 (or (not (= (list!19013 (right!43164 (left!42834 ys!41))) Nil!58446)) (= lt!2090096 call!353514)))))

(declare-fun b!5075351 () Bool)

(declare-fun e!3166492 () List!58570)

(assert (=> b!5075351 (= e!3166492 (Cons!58446 (h!64894 call!353514) (++!12800 (t!371357 call!353514) (list!19013 (right!43164 (left!42834 ys!41))))))))

(declare-fun d!1639051 () Bool)

(assert (=> d!1639051 e!3166493))

(declare-fun res!2160911 () Bool)

(assert (=> d!1639051 (=> (not res!2160911) (not e!3166493))))

(assert (=> d!1639051 (= res!2160911 (= (content!10423 lt!2090096) ((_ map or) (content!10423 call!353514) (content!10423 (list!19013 (right!43164 (left!42834 ys!41)))))))))

(assert (=> d!1639051 (= lt!2090096 e!3166492)))

(declare-fun c!871489 () Bool)

(assert (=> d!1639051 (= c!871489 ((_ is Nil!58446) call!353514))))

(assert (=> d!1639051 (= (++!12800 call!353514 (list!19013 (right!43164 (left!42834 ys!41)))) lt!2090096)))

(declare-fun b!5075352 () Bool)

(declare-fun res!2160910 () Bool)

(assert (=> b!5075352 (=> (not res!2160910) (not e!3166493))))

(assert (=> b!5075352 (= res!2160910 (= (size!39099 lt!2090096) (+ (size!39099 call!353514) (size!39099 (list!19013 (right!43164 (left!42834 ys!41)))))))))

(declare-fun b!5075350 () Bool)

(assert (=> b!5075350 (= e!3166492 (list!19013 (right!43164 (left!42834 ys!41))))))

(assert (= (and d!1639051 c!871489) b!5075350))

(assert (= (and d!1639051 (not c!871489)) b!5075351))

(assert (= (and d!1639051 res!2160911) b!5075352))

(assert (= (and b!5075352 res!2160910) b!5075353))

(assert (=> b!5075351 m!6122176))

(declare-fun m!6123896 () Bool)

(assert (=> b!5075351 m!6123896))

(declare-fun m!6123898 () Bool)

(assert (=> d!1639051 m!6123898))

(declare-fun m!6123900 () Bool)

(assert (=> d!1639051 m!6123900))

(assert (=> d!1639051 m!6122176))

(assert (=> d!1639051 m!6123538))

(declare-fun m!6123902 () Bool)

(assert (=> b!5075352 m!6123902))

(declare-fun m!6123904 () Bool)

(assert (=> b!5075352 m!6123904))

(assert (=> b!5075352 m!6122176))

(assert (=> b!5075352 m!6123544))

(assert (=> bm!353505 d!1639051))

(declare-fun b!5075354 () Bool)

(declare-fun res!2160912 () Bool)

(declare-fun e!3166495 () Bool)

(assert (=> b!5075354 (=> (not res!2160912) (not e!3166495))))

(assert (=> b!5075354 (= res!2160912 (isBalanced!4438 (left!42834 (right!43164 (right!43164 lt!2089940)))))))

(declare-fun b!5075355 () Bool)

(declare-fun res!2160915 () Bool)

(assert (=> b!5075355 (=> (not res!2160915) (not e!3166495))))

(assert (=> b!5075355 (= res!2160915 (<= (- (height!2153 (left!42834 (right!43164 (right!43164 lt!2089940)))) (height!2153 (right!43164 (right!43164 (right!43164 lt!2089940))))) 1))))

(declare-fun d!1639053 () Bool)

(declare-fun res!2160914 () Bool)

(declare-fun e!3166494 () Bool)

(assert (=> d!1639053 (=> res!2160914 e!3166494)))

(assert (=> d!1639053 (= res!2160914 (not ((_ is Node!15576) (right!43164 (right!43164 lt!2089940)))))))

(assert (=> d!1639053 (= (isBalanced!4438 (right!43164 (right!43164 lt!2089940))) e!3166494)))

(declare-fun b!5075356 () Bool)

(assert (=> b!5075356 (= e!3166495 (not (isEmpty!31655 (right!43164 (right!43164 (right!43164 lt!2089940))))))))

(declare-fun b!5075357 () Bool)

(declare-fun res!2160913 () Bool)

(assert (=> b!5075357 (=> (not res!2160913) (not e!3166495))))

(assert (=> b!5075357 (= res!2160913 (not (isEmpty!31655 (left!42834 (right!43164 (right!43164 lt!2089940))))))))

(declare-fun b!5075358 () Bool)

(assert (=> b!5075358 (= e!3166494 e!3166495)))

(declare-fun res!2160916 () Bool)

(assert (=> b!5075358 (=> (not res!2160916) (not e!3166495))))

(assert (=> b!5075358 (= res!2160916 (<= (- 1) (- (height!2153 (left!42834 (right!43164 (right!43164 lt!2089940)))) (height!2153 (right!43164 (right!43164 (right!43164 lt!2089940)))))))))

(declare-fun b!5075359 () Bool)

(declare-fun res!2160917 () Bool)

(assert (=> b!5075359 (=> (not res!2160917) (not e!3166495))))

(assert (=> b!5075359 (= res!2160917 (isBalanced!4438 (right!43164 (right!43164 (right!43164 lt!2089940)))))))

(assert (= (and d!1639053 (not res!2160914)) b!5075358))

(assert (= (and b!5075358 res!2160916) b!5075355))

(assert (= (and b!5075355 res!2160915) b!5075354))

(assert (= (and b!5075354 res!2160912) b!5075359))

(assert (= (and b!5075359 res!2160917) b!5075357))

(assert (= (and b!5075357 res!2160913) b!5075356))

(declare-fun m!6123906 () Bool)

(assert (=> b!5075357 m!6123906))

(declare-fun m!6123908 () Bool)

(assert (=> b!5075356 m!6123908))

(declare-fun m!6123910 () Bool)

(assert (=> b!5075359 m!6123910))

(declare-fun m!6123912 () Bool)

(assert (=> b!5075358 m!6123912))

(declare-fun m!6123914 () Bool)

(assert (=> b!5075358 m!6123914))

(assert (=> b!5075355 m!6123912))

(assert (=> b!5075355 m!6123914))

(declare-fun m!6123916 () Bool)

(assert (=> b!5075354 m!6123916))

(assert (=> b!5074912 d!1639053))

(declare-fun d!1639055 () Bool)

(declare-fun c!871490 () Bool)

(assert (=> d!1639055 (= c!871490 ((_ is Nil!58446) (t!371357 lt!2089946)))))

(declare-fun e!3166496 () (InoxSet T!105202))

(assert (=> d!1639055 (= (content!10423 (t!371357 lt!2089946)) e!3166496)))

(declare-fun b!5075360 () Bool)

(assert (=> b!5075360 (= e!3166496 ((as const (Array T!105202 Bool)) false))))

(declare-fun b!5075361 () Bool)

(assert (=> b!5075361 (= e!3166496 ((_ map or) (store ((as const (Array T!105202 Bool)) false) (h!64894 (t!371357 lt!2089946)) true) (content!10423 (t!371357 (t!371357 lt!2089946)))))))

(assert (= (and d!1639055 c!871490) b!5075360))

(assert (= (and d!1639055 (not c!871490)) b!5075361))

(declare-fun m!6123918 () Bool)

(assert (=> b!5075361 m!6123918))

(declare-fun m!6123920 () Bool)

(assert (=> b!5075361 m!6123920))

(assert (=> b!5075033 d!1639055))

(declare-fun d!1639057 () Bool)

(declare-fun c!871491 () Bool)

(assert (=> d!1639057 (= c!871491 ((_ is Nil!58446) lt!2090001))))

(declare-fun e!3166497 () (InoxSet T!105202))

(assert (=> d!1639057 (= (content!10423 lt!2090001) e!3166497)))

(declare-fun b!5075362 () Bool)

(assert (=> b!5075362 (= e!3166497 ((as const (Array T!105202 Bool)) false))))

(declare-fun b!5075363 () Bool)

(assert (=> b!5075363 (= e!3166497 ((_ map or) (store ((as const (Array T!105202 Bool)) false) (h!64894 lt!2090001) true) (content!10423 (t!371357 lt!2090001))))))

(assert (= (and d!1639057 c!871491) b!5075362))

(assert (= (and d!1639057 (not c!871491)) b!5075363))

(declare-fun m!6123922 () Bool)

(assert (=> b!5075363 m!6123922))

(declare-fun m!6123924 () Bool)

(assert (=> b!5075363 m!6123924))

(assert (=> d!1638609 d!1639057))

(declare-fun d!1639059 () Bool)

(declare-fun c!871492 () Bool)

(assert (=> d!1639059 (= c!871492 ((_ is Nil!58446) (list!19013 (left!42834 ys!41))))))

(declare-fun e!3166498 () (InoxSet T!105202))

(assert (=> d!1639059 (= (content!10423 (list!19013 (left!42834 ys!41))) e!3166498)))

(declare-fun b!5075364 () Bool)

(assert (=> b!5075364 (= e!3166498 ((as const (Array T!105202 Bool)) false))))

(declare-fun b!5075365 () Bool)

(assert (=> b!5075365 (= e!3166498 ((_ map or) (store ((as const (Array T!105202 Bool)) false) (h!64894 (list!19013 (left!42834 ys!41))) true) (content!10423 (t!371357 (list!19013 (left!42834 ys!41))))))))

(assert (= (and d!1639059 c!871492) b!5075364))

(assert (= (and d!1639059 (not c!871492)) b!5075365))

(declare-fun m!6123926 () Bool)

(assert (=> b!5075365 m!6123926))

(declare-fun m!6123928 () Bool)

(assert (=> b!5075365 m!6123928))

(assert (=> d!1638609 d!1639059))

(assert (=> d!1638609 d!1638955))

(declare-fun d!1639061 () Bool)

(declare-fun lt!2090097 () Int)

(assert (=> d!1639061 (= lt!2090097 (size!39099 (list!19013 (left!42834 (left!42834 ys!41)))))))

(assert (=> d!1639061 (= lt!2090097 (ite ((_ is Empty!15576) (left!42834 (left!42834 ys!41))) 0 (ite ((_ is Leaf!25869) (left!42834 (left!42834 ys!41))) (csize!31383 (left!42834 (left!42834 ys!41))) (csize!31382 (left!42834 (left!42834 ys!41))))))))

(assert (=> d!1639061 (= (size!39101 (left!42834 (left!42834 ys!41))) lt!2090097)))

(declare-fun bs!1190364 () Bool)

(assert (= bs!1190364 d!1639061))

(assert (=> bs!1190364 m!6122180))

(assert (=> bs!1190364 m!6122180))

(assert (=> bs!1190364 m!6123072))

(assert (=> d!1638827 d!1639061))

(declare-fun d!1639063 () Bool)

(declare-fun lt!2090098 () Int)

(assert (=> d!1639063 (= lt!2090098 (size!39099 (list!19013 (right!43164 (left!42834 ys!41)))))))

(assert (=> d!1639063 (= lt!2090098 (ite ((_ is Empty!15576) (right!43164 (left!42834 ys!41))) 0 (ite ((_ is Leaf!25869) (right!43164 (left!42834 ys!41))) (csize!31383 (right!43164 (left!42834 ys!41))) (csize!31382 (right!43164 (left!42834 ys!41))))))))

(assert (=> d!1639063 (= (size!39101 (right!43164 (left!42834 ys!41))) lt!2090098)))

(declare-fun bs!1190365 () Bool)

(assert (= bs!1190365 d!1639063))

(assert (=> bs!1190365 m!6122176))

(assert (=> bs!1190365 m!6122176))

(assert (=> bs!1190365 m!6123544))

(assert (=> d!1638827 d!1639063))

(declare-fun b!5075369 () Bool)

(declare-fun e!3166500 () Bool)

(declare-fun lt!2090099 () List!58570)

(assert (=> b!5075369 (= e!3166500 (or (not (= (list!19013 (right!43164 xs!286)) Nil!58446)) (= lt!2090099 (t!371357 (list!19013 (left!42834 xs!286))))))))

(declare-fun b!5075367 () Bool)

(declare-fun e!3166499 () List!58570)

(assert (=> b!5075367 (= e!3166499 (Cons!58446 (h!64894 (t!371357 (list!19013 (left!42834 xs!286)))) (++!12800 (t!371357 (t!371357 (list!19013 (left!42834 xs!286)))) (list!19013 (right!43164 xs!286)))))))

(declare-fun d!1639065 () Bool)

(assert (=> d!1639065 e!3166500))

(declare-fun res!2160919 () Bool)

(assert (=> d!1639065 (=> (not res!2160919) (not e!3166500))))

(assert (=> d!1639065 (= res!2160919 (= (content!10423 lt!2090099) ((_ map or) (content!10423 (t!371357 (list!19013 (left!42834 xs!286)))) (content!10423 (list!19013 (right!43164 xs!286))))))))

(assert (=> d!1639065 (= lt!2090099 e!3166499)))

(declare-fun c!871493 () Bool)

(assert (=> d!1639065 (= c!871493 ((_ is Nil!58446) (t!371357 (list!19013 (left!42834 xs!286)))))))

(assert (=> d!1639065 (= (++!12800 (t!371357 (list!19013 (left!42834 xs!286))) (list!19013 (right!43164 xs!286))) lt!2090099)))

(declare-fun b!5075368 () Bool)

(declare-fun res!2160918 () Bool)

(assert (=> b!5075368 (=> (not res!2160918) (not e!3166500))))

(assert (=> b!5075368 (= res!2160918 (= (size!39099 lt!2090099) (+ (size!39099 (t!371357 (list!19013 (left!42834 xs!286)))) (size!39099 (list!19013 (right!43164 xs!286))))))))

(declare-fun b!5075366 () Bool)

(assert (=> b!5075366 (= e!3166499 (list!19013 (right!43164 xs!286)))))

(assert (= (and d!1639065 c!871493) b!5075366))

(assert (= (and d!1639065 (not c!871493)) b!5075367))

(assert (= (and d!1639065 res!2160919) b!5075368))

(assert (= (and b!5075368 res!2160918) b!5075369))

(assert (=> b!5075367 m!6122030))

(declare-fun m!6123930 () Bool)

(assert (=> b!5075367 m!6123930))

(declare-fun m!6123932 () Bool)

(assert (=> d!1639065 m!6123932))

(declare-fun m!6123934 () Bool)

(assert (=> d!1639065 m!6123934))

(assert (=> d!1639065 m!6122030))

(assert (=> d!1639065 m!6122538))

(declare-fun m!6123936 () Bool)

(assert (=> b!5075368 m!6123936))

(declare-fun m!6123938 () Bool)

(assert (=> b!5075368 m!6123938))

(assert (=> b!5075368 m!6122030))

(assert (=> b!5075368 m!6122544))

(assert (=> b!5074677 d!1639065))

(declare-fun b!5075373 () Bool)

(declare-fun e!3166502 () Bool)

(declare-fun lt!2090100 () List!58570)

(assert (=> b!5075373 (= e!3166502 (or (not (= (list!19013 (right!43164 (left!42834 ys!41))) Nil!58446)) (= lt!2090100 (list!19013 (left!42834 (left!42834 ys!41))))))))

(declare-fun b!5075371 () Bool)

(declare-fun e!3166501 () List!58570)

(assert (=> b!5075371 (= e!3166501 (Cons!58446 (h!64894 (list!19013 (left!42834 (left!42834 ys!41)))) (++!12800 (t!371357 (list!19013 (left!42834 (left!42834 ys!41)))) (list!19013 (right!43164 (left!42834 ys!41))))))))

(declare-fun d!1639067 () Bool)

(assert (=> d!1639067 e!3166502))

(declare-fun res!2160921 () Bool)

(assert (=> d!1639067 (=> (not res!2160921) (not e!3166502))))

(assert (=> d!1639067 (= res!2160921 (= (content!10423 lt!2090100) ((_ map or) (content!10423 (list!19013 (left!42834 (left!42834 ys!41)))) (content!10423 (list!19013 (right!43164 (left!42834 ys!41)))))))))

(assert (=> d!1639067 (= lt!2090100 e!3166501)))

(declare-fun c!871494 () Bool)

(assert (=> d!1639067 (= c!871494 ((_ is Nil!58446) (list!19013 (left!42834 (left!42834 ys!41)))))))

(assert (=> d!1639067 (= (++!12800 (list!19013 (left!42834 (left!42834 ys!41))) (list!19013 (right!43164 (left!42834 ys!41)))) lt!2090100)))

(declare-fun b!5075372 () Bool)

(declare-fun res!2160920 () Bool)

(assert (=> b!5075372 (=> (not res!2160920) (not e!3166502))))

(assert (=> b!5075372 (= res!2160920 (= (size!39099 lt!2090100) (+ (size!39099 (list!19013 (left!42834 (left!42834 ys!41)))) (size!39099 (list!19013 (right!43164 (left!42834 ys!41)))))))))

(declare-fun b!5075370 () Bool)

(assert (=> b!5075370 (= e!3166501 (list!19013 (right!43164 (left!42834 ys!41))))))

(assert (= (and d!1639067 c!871494) b!5075370))

(assert (= (and d!1639067 (not c!871494)) b!5075371))

(assert (= (and d!1639067 res!2160921) b!5075372))

(assert (= (and b!5075372 res!2160920) b!5075373))

(assert (=> b!5075371 m!6122176))

(declare-fun m!6123940 () Bool)

(assert (=> b!5075371 m!6123940))

(declare-fun m!6123942 () Bool)

(assert (=> d!1639067 m!6123942))

(assert (=> d!1639067 m!6122180))

(assert (=> d!1639067 m!6123064))

(assert (=> d!1639067 m!6122176))

(assert (=> d!1639067 m!6123538))

(declare-fun m!6123944 () Bool)

(assert (=> b!5075372 m!6123944))

(assert (=> b!5075372 m!6122180))

(assert (=> b!5075372 m!6123072))

(assert (=> b!5075372 m!6122176))

(assert (=> b!5075372 m!6123544))

(assert (=> b!5074713 d!1639067))

(assert (=> b!5074713 d!1638541))

(assert (=> b!5074713 d!1638543))

(declare-fun d!1639069 () Bool)

(assert (=> d!1639069 (= (height!2153 (ite c!871348 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286) (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))) (ite ((_ is Empty!15576) (ite c!871348 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286) (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))) 0 (ite ((_ is Leaf!25869) (ite c!871348 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286) (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))) 1 (cheight!15787 (ite c!871348 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286) (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))))))

(assert (=> bm!353547 d!1639069))

(declare-fun b!5075374 () Bool)

(declare-fun res!2160922 () Bool)

(declare-fun e!3166504 () Bool)

(assert (=> b!5075374 (=> (not res!2160922) (not e!3166504))))

(assert (=> b!5075374 (= res!2160922 (isBalanced!4438 (left!42834 (left!42834 lt!2089978))))))

(declare-fun b!5075375 () Bool)

(declare-fun res!2160925 () Bool)

(assert (=> b!5075375 (=> (not res!2160925) (not e!3166504))))

(assert (=> b!5075375 (= res!2160925 (<= (- (height!2153 (left!42834 (left!42834 lt!2089978))) (height!2153 (right!43164 (left!42834 lt!2089978)))) 1))))

(declare-fun d!1639071 () Bool)

(declare-fun res!2160924 () Bool)

(declare-fun e!3166503 () Bool)

(assert (=> d!1639071 (=> res!2160924 e!3166503)))

(assert (=> d!1639071 (= res!2160924 (not ((_ is Node!15576) (left!42834 lt!2089978))))))

(assert (=> d!1639071 (= (isBalanced!4438 (left!42834 lt!2089978)) e!3166503)))

(declare-fun b!5075376 () Bool)

(assert (=> b!5075376 (= e!3166504 (not (isEmpty!31655 (right!43164 (left!42834 lt!2089978)))))))

(declare-fun b!5075377 () Bool)

(declare-fun res!2160923 () Bool)

(assert (=> b!5075377 (=> (not res!2160923) (not e!3166504))))

(assert (=> b!5075377 (= res!2160923 (not (isEmpty!31655 (left!42834 (left!42834 lt!2089978)))))))

(declare-fun b!5075378 () Bool)

(assert (=> b!5075378 (= e!3166503 e!3166504)))

(declare-fun res!2160926 () Bool)

(assert (=> b!5075378 (=> (not res!2160926) (not e!3166504))))

(assert (=> b!5075378 (= res!2160926 (<= (- 1) (- (height!2153 (left!42834 (left!42834 lt!2089978))) (height!2153 (right!43164 (left!42834 lt!2089978))))))))

(declare-fun b!5075379 () Bool)

(declare-fun res!2160927 () Bool)

(assert (=> b!5075379 (=> (not res!2160927) (not e!3166504))))

(assert (=> b!5075379 (= res!2160927 (isBalanced!4438 (right!43164 (left!42834 lt!2089978))))))

(assert (= (and d!1639071 (not res!2160924)) b!5075378))

(assert (= (and b!5075378 res!2160926) b!5075375))

(assert (= (and b!5075375 res!2160925) b!5075374))

(assert (= (and b!5075374 res!2160922) b!5075379))

(assert (= (and b!5075379 res!2160927) b!5075377))

(assert (= (and b!5075377 res!2160923) b!5075376))

(declare-fun m!6123946 () Bool)

(assert (=> b!5075377 m!6123946))

(declare-fun m!6123948 () Bool)

(assert (=> b!5075376 m!6123948))

(declare-fun m!6123950 () Bool)

(assert (=> b!5075379 m!6123950))

(declare-fun m!6123952 () Bool)

(assert (=> b!5075378 m!6123952))

(declare-fun m!6123954 () Bool)

(assert (=> b!5075378 m!6123954))

(assert (=> b!5075375 m!6123952))

(assert (=> b!5075375 m!6123954))

(declare-fun m!6123956 () Bool)

(assert (=> b!5075374 m!6123956))

(assert (=> b!5074917 d!1639071))

(declare-fun d!1639073 () Bool)

(declare-fun lt!2090101 () Int)

(assert (=> d!1639073 (= lt!2090101 (size!39099 (list!19013 (left!42834 xs!286))))))

(assert (=> d!1639073 (= lt!2090101 (ite ((_ is Empty!15576) (left!42834 xs!286)) 0 (ite ((_ is Leaf!25869) (left!42834 xs!286)) (csize!31383 (left!42834 xs!286)) (csize!31382 (left!42834 xs!286)))))))

(assert (=> d!1639073 (= (size!39101 (left!42834 xs!286)) lt!2090101)))

(declare-fun bs!1190366 () Bool)

(assert (= bs!1190366 d!1639073))

(assert (=> bs!1190366 m!6122028))

(assert (=> bs!1190366 m!6122028))

(assert (=> bs!1190366 m!6122542))

(assert (=> d!1638677 d!1639073))

(declare-fun d!1639075 () Bool)

(declare-fun lt!2090102 () Int)

(assert (=> d!1639075 (= lt!2090102 (size!39099 (list!19013 (right!43164 xs!286))))))

(assert (=> d!1639075 (= lt!2090102 (ite ((_ is Empty!15576) (right!43164 xs!286)) 0 (ite ((_ is Leaf!25869) (right!43164 xs!286)) (csize!31383 (right!43164 xs!286)) (csize!31382 (right!43164 xs!286)))))))

(assert (=> d!1639075 (= (size!39101 (right!43164 xs!286)) lt!2090102)))

(declare-fun bs!1190367 () Bool)

(assert (= bs!1190367 d!1639075))

(assert (=> bs!1190367 m!6122030))

(assert (=> bs!1190367 m!6122030))

(assert (=> bs!1190367 m!6122544))

(assert (=> d!1638677 d!1639075))

(assert (=> b!5074773 d!1638583))

(assert (=> b!5074773 d!1638573))

(assert (=> b!5074773 d!1638601))

(assert (=> b!5074773 d!1638565))

(declare-fun call!353613 () List!58570)

(declare-fun bm!353605 () Bool)

(declare-fun call!353612 () List!58570)

(assert (=> bm!353605 (= call!353613 (++!12800 call!353612 (++!12800 (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 (left!42834 ys!41)))))))

(declare-fun bm!353606 () Bool)

(assert (=> bm!353606 (= call!353612 (++!12800 (list!19013 (left!42834 xs!286)) (list!19013 (left!42834 (right!43164 xs!286)))))))

(declare-fun d!1639077 () Bool)

(declare-fun e!3166505 () Bool)

(assert (=> d!1639077 e!3166505))

(declare-fun c!871495 () Bool)

(assert (=> d!1639077 (= c!871495 ((_ is Nil!58446) (list!19013 (left!42834 xs!286))))))

(assert (=> d!1639077 (= (appendAssoc!308 (list!19013 (left!42834 xs!286)) (list!19013 (left!42834 (right!43164 xs!286))) (++!12800 (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 (left!42834 ys!41)))) true)))

(declare-fun bm!353607 () Bool)

(declare-fun call!353611 () List!58570)

(declare-fun call!353610 () List!58570)

(assert (=> bm!353607 (= call!353611 (++!12800 (list!19013 (left!42834 xs!286)) call!353610))))

(declare-fun b!5075380 () Bool)

(assert (=> b!5075380 (= e!3166505 (= call!353613 call!353611))))

(declare-fun lt!2090103 () Bool)

(assert (=> b!5075380 (= lt!2090103 (appendAssoc!308 (t!371357 (list!19013 (left!42834 xs!286))) (list!19013 (left!42834 (right!43164 xs!286))) (++!12800 (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 (left!42834 ys!41)))))))

(declare-fun b!5075381 () Bool)

(assert (=> b!5075381 (= e!3166505 (= call!353613 call!353611))))

(declare-fun bm!353608 () Bool)

(assert (=> bm!353608 (= call!353610 (++!12800 (list!19013 (left!42834 (right!43164 xs!286))) (++!12800 (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 (left!42834 ys!41)))))))

(assert (= (and d!1639077 c!871495) b!5075381))

(assert (= (and d!1639077 (not c!871495)) b!5075380))

(assert (= (or b!5075381 b!5075380) bm!353606))

(assert (= (or b!5075381 b!5075380) bm!353608))

(assert (= (or b!5075381 b!5075380) bm!353607))

(assert (= (or b!5075381 b!5075380) bm!353605))

(assert (=> b!5075380 m!6122168))

(assert (=> b!5075380 m!6122742))

(declare-fun m!6123958 () Bool)

(assert (=> b!5075380 m!6123958))

(assert (=> bm!353606 m!6122028))

(assert (=> bm!353606 m!6122168))

(assert (=> bm!353606 m!6123174))

(assert (=> bm!353605 m!6122742))

(declare-fun m!6123960 () Bool)

(assert (=> bm!353605 m!6123960))

(assert (=> bm!353608 m!6122168))

(assert (=> bm!353608 m!6122742))

(declare-fun m!6123962 () Bool)

(assert (=> bm!353608 m!6123962))

(assert (=> bm!353607 m!6122028))

(declare-fun m!6123964 () Bool)

(assert (=> bm!353607 m!6123964))

(assert (=> b!5074773 d!1639077))

(declare-fun lt!2090104 () List!58570)

(declare-fun e!3166507 () Bool)

(declare-fun b!5075385 () Bool)

(assert (=> b!5075385 (= e!3166507 (or (not (= (list!19013 (left!42834 ys!41)) Nil!58446)) (= lt!2090104 (list!19013 (right!43164 (right!43164 xs!286))))))))

(declare-fun b!5075383 () Bool)

(declare-fun e!3166506 () List!58570)

(assert (=> b!5075383 (= e!3166506 (Cons!58446 (h!64894 (list!19013 (right!43164 (right!43164 xs!286)))) (++!12800 (t!371357 (list!19013 (right!43164 (right!43164 xs!286)))) (list!19013 (left!42834 ys!41)))))))

(declare-fun d!1639079 () Bool)

(assert (=> d!1639079 e!3166507))

(declare-fun res!2160929 () Bool)

(assert (=> d!1639079 (=> (not res!2160929) (not e!3166507))))

(assert (=> d!1639079 (= res!2160929 (= (content!10423 lt!2090104) ((_ map or) (content!10423 (list!19013 (right!43164 (right!43164 xs!286)))) (content!10423 (list!19013 (left!42834 ys!41))))))))

(assert (=> d!1639079 (= lt!2090104 e!3166506)))

(declare-fun c!871496 () Bool)

(assert (=> d!1639079 (= c!871496 ((_ is Nil!58446) (list!19013 (right!43164 (right!43164 xs!286)))))))

(assert (=> d!1639079 (= (++!12800 (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 (left!42834 ys!41))) lt!2090104)))

(declare-fun b!5075384 () Bool)

(declare-fun res!2160928 () Bool)

(assert (=> b!5075384 (=> (not res!2160928) (not e!3166507))))

(assert (=> b!5075384 (= res!2160928 (= (size!39099 lt!2090104) (+ (size!39099 (list!19013 (right!43164 (right!43164 xs!286)))) (size!39099 (list!19013 (left!42834 ys!41))))))))

(declare-fun b!5075382 () Bool)

(assert (=> b!5075382 (= e!3166506 (list!19013 (left!42834 ys!41)))))

(assert (= (and d!1639079 c!871496) b!5075382))

(assert (= (and d!1639079 (not c!871496)) b!5075383))

(assert (= (and d!1639079 res!2160929) b!5075384))

(assert (= (and b!5075384 res!2160928) b!5075385))

(assert (=> b!5075383 m!6122036))

(declare-fun m!6123966 () Bool)

(assert (=> b!5075383 m!6123966))

(declare-fun m!6123968 () Bool)

(assert (=> d!1639079 m!6123968))

(assert (=> d!1639079 m!6122170))

(assert (=> d!1639079 m!6123188))

(assert (=> d!1639079 m!6122036))

(assert (=> d!1639079 m!6122636))

(declare-fun m!6123970 () Bool)

(assert (=> b!5075384 m!6123970))

(assert (=> b!5075384 m!6122170))

(assert (=> b!5075384 m!6123195))

(assert (=> b!5075384 m!6122036))

(assert (=> b!5075384 m!6122644))

(assert (=> b!5074773 d!1639079))

(declare-fun d!1639081 () Bool)

(declare-fun lt!2090105 () Int)

(assert (=> d!1639081 (>= lt!2090105 0)))

(declare-fun e!3166508 () Int)

(assert (=> d!1639081 (= lt!2090105 e!3166508)))

(declare-fun c!871497 () Bool)

(assert (=> d!1639081 (= c!871497 ((_ is Nil!58446) (list!19014 (xs!18936 (left!42834 xs!286)))))))

(assert (=> d!1639081 (= (size!39099 (list!19014 (xs!18936 (left!42834 xs!286)))) lt!2090105)))

(declare-fun b!5075386 () Bool)

(assert (=> b!5075386 (= e!3166508 0)))

(declare-fun b!5075387 () Bool)

(assert (=> b!5075387 (= e!3166508 (+ 1 (size!39099 (t!371357 (list!19014 (xs!18936 (left!42834 xs!286)))))))))

(assert (= (and d!1639081 c!871497) b!5075386))

(assert (= (and d!1639081 (not c!871497)) b!5075387))

(declare-fun m!6123972 () Bool)

(assert (=> b!5075387 m!6123972))

(assert (=> d!1638523 d!1639081))

(declare-fun d!1639083 () Bool)

(assert (=> d!1639083 (= (list!19014 (xs!18936 (left!42834 xs!286))) (innerList!15664 (xs!18936 (left!42834 xs!286))))))

(assert (=> d!1638523 d!1639083))

(declare-fun d!1639085 () Bool)

(declare-fun c!871498 () Bool)

(assert (=> d!1639085 (= c!871498 ((_ is Node!15576) (left!42834 (left!42834 (right!43164 ys!41)))))))

(declare-fun e!3166509 () Bool)

(assert (=> d!1639085 (= (inv!77621 (left!42834 (left!42834 (right!43164 ys!41)))) e!3166509)))

(declare-fun b!5075388 () Bool)

(assert (=> b!5075388 (= e!3166509 (inv!77625 (left!42834 (left!42834 (right!43164 ys!41)))))))

(declare-fun b!5075389 () Bool)

(declare-fun e!3166510 () Bool)

(assert (=> b!5075389 (= e!3166509 e!3166510)))

(declare-fun res!2160930 () Bool)

(assert (=> b!5075389 (= res!2160930 (not ((_ is Leaf!25869) (left!42834 (left!42834 (right!43164 ys!41))))))))

(assert (=> b!5075389 (=> res!2160930 e!3166510)))

(declare-fun b!5075390 () Bool)

(assert (=> b!5075390 (= e!3166510 (inv!77626 (left!42834 (left!42834 (right!43164 ys!41)))))))

(assert (= (and d!1639085 c!871498) b!5075388))

(assert (= (and d!1639085 (not c!871498)) b!5075389))

(assert (= (and b!5075389 (not res!2160930)) b!5075390))

(declare-fun m!6123974 () Bool)

(assert (=> b!5075388 m!6123974))

(declare-fun m!6123976 () Bool)

(assert (=> b!5075390 m!6123976))

(assert (=> b!5075095 d!1639085))

(declare-fun d!1639087 () Bool)

(declare-fun c!871499 () Bool)

(assert (=> d!1639087 (= c!871499 ((_ is Node!15576) (right!43164 (left!42834 (right!43164 ys!41)))))))

(declare-fun e!3166511 () Bool)

(assert (=> d!1639087 (= (inv!77621 (right!43164 (left!42834 (right!43164 ys!41)))) e!3166511)))

(declare-fun b!5075391 () Bool)

(assert (=> b!5075391 (= e!3166511 (inv!77625 (right!43164 (left!42834 (right!43164 ys!41)))))))

(declare-fun b!5075392 () Bool)

(declare-fun e!3166512 () Bool)

(assert (=> b!5075392 (= e!3166511 e!3166512)))

(declare-fun res!2160931 () Bool)

(assert (=> b!5075392 (= res!2160931 (not ((_ is Leaf!25869) (right!43164 (left!42834 (right!43164 ys!41))))))))

(assert (=> b!5075392 (=> res!2160931 e!3166512)))

(declare-fun b!5075393 () Bool)

(assert (=> b!5075393 (= e!3166512 (inv!77626 (right!43164 (left!42834 (right!43164 ys!41)))))))

(assert (= (and d!1639087 c!871499) b!5075391))

(assert (= (and d!1639087 (not c!871499)) b!5075392))

(assert (= (and b!5075392 (not res!2160931)) b!5075393))

(declare-fun m!6123978 () Bool)

(assert (=> b!5075391 m!6123978))

(declare-fun m!6123980 () Bool)

(assert (=> b!5075393 m!6123980))

(assert (=> b!5075095 d!1639087))

(declare-fun d!1639089 () Bool)

(declare-fun res!2160932 () Bool)

(declare-fun e!3166513 () Bool)

(assert (=> d!1639089 (=> (not res!2160932) (not e!3166513))))

(assert (=> d!1639089 (= res!2160932 (= (csize!31382 (right!43164 (left!42834 ys!41))) (+ (size!39101 (left!42834 (right!43164 (left!42834 ys!41)))) (size!39101 (right!43164 (right!43164 (left!42834 ys!41)))))))))

(assert (=> d!1639089 (= (inv!77625 (right!43164 (left!42834 ys!41))) e!3166513)))

(declare-fun b!5075394 () Bool)

(declare-fun res!2160933 () Bool)

(assert (=> b!5075394 (=> (not res!2160933) (not e!3166513))))

(assert (=> b!5075394 (= res!2160933 (and (not (= (left!42834 (right!43164 (left!42834 ys!41))) Empty!15576)) (not (= (right!43164 (right!43164 (left!42834 ys!41))) Empty!15576))))))

(declare-fun b!5075395 () Bool)

(declare-fun res!2160934 () Bool)

(assert (=> b!5075395 (=> (not res!2160934) (not e!3166513))))

(assert (=> b!5075395 (= res!2160934 (= (cheight!15787 (right!43164 (left!42834 ys!41))) (+ (max!0 (height!2153 (left!42834 (right!43164 (left!42834 ys!41)))) (height!2153 (right!43164 (right!43164 (left!42834 ys!41))))) 1)))))

(declare-fun b!5075396 () Bool)

(assert (=> b!5075396 (= e!3166513 (<= 0 (cheight!15787 (right!43164 (left!42834 ys!41)))))))

(assert (= (and d!1639089 res!2160932) b!5075394))

(assert (= (and b!5075394 res!2160933) b!5075395))

(assert (= (and b!5075395 res!2160934) b!5075396))

(declare-fun m!6123982 () Bool)

(assert (=> d!1639089 m!6123982))

(declare-fun m!6123984 () Bool)

(assert (=> d!1639089 m!6123984))

(declare-fun m!6123986 () Bool)

(assert (=> b!5075395 m!6123986))

(declare-fun m!6123988 () Bool)

(assert (=> b!5075395 m!6123988))

(assert (=> b!5075395 m!6123986))

(assert (=> b!5075395 m!6123988))

(declare-fun m!6123990 () Bool)

(assert (=> b!5075395 m!6123990))

(assert (=> b!5074796 d!1639089))

(declare-fun call!353616 () List!58570)

(declare-fun bm!353609 () Bool)

(declare-fun call!353617 () List!58570)

(assert (=> bm!353609 (= call!353617 (++!12800 call!353616 (++!12800 (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 ys!41))))))

(declare-fun bm!353610 () Bool)

(assert (=> bm!353610 (= call!353616 (++!12800 (t!371357 (list!19013 (left!42834 xs!286))) (list!19013 (left!42834 (right!43164 xs!286)))))))

(declare-fun d!1639091 () Bool)

(declare-fun e!3166514 () Bool)

(assert (=> d!1639091 e!3166514))

(declare-fun c!871500 () Bool)

(assert (=> d!1639091 (= c!871500 ((_ is Nil!58446) (t!371357 (list!19013 (left!42834 xs!286)))))))

(assert (=> d!1639091 (= (appendAssoc!308 (t!371357 (list!19013 (left!42834 xs!286))) (list!19013 (left!42834 (right!43164 xs!286))) (++!12800 (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 ys!41))) true)))

(declare-fun bm!353611 () Bool)

(declare-fun call!353615 () List!58570)

(declare-fun call!353614 () List!58570)

(assert (=> bm!353611 (= call!353615 (++!12800 (t!371357 (list!19013 (left!42834 xs!286))) call!353614))))

(declare-fun b!5075397 () Bool)

(assert (=> b!5075397 (= e!3166514 (= call!353617 call!353615))))

(declare-fun lt!2090106 () Bool)

(assert (=> b!5075397 (= lt!2090106 (appendAssoc!308 (t!371357 (t!371357 (list!19013 (left!42834 xs!286)))) (list!19013 (left!42834 (right!43164 xs!286))) (++!12800 (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 ys!41))))))

(declare-fun b!5075398 () Bool)

(assert (=> b!5075398 (= e!3166514 (= call!353617 call!353615))))

(declare-fun bm!353612 () Bool)

(assert (=> bm!353612 (= call!353614 (++!12800 (list!19013 (left!42834 (right!43164 xs!286))) (++!12800 (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 ys!41))))))

(assert (= (and d!1639091 c!871500) b!5075398))

(assert (= (and d!1639091 (not c!871500)) b!5075397))

(assert (= (or b!5075398 b!5075397) bm!353610))

(assert (= (or b!5075398 b!5075397) bm!353612))

(assert (= (or b!5075398 b!5075397) bm!353611))

(assert (= (or b!5075398 b!5075397) bm!353609))

(assert (=> b!5075397 m!6122168))

(assert (=> b!5075397 m!6122186))

(declare-fun m!6123992 () Bool)

(assert (=> b!5075397 m!6123992))

(assert (=> bm!353610 m!6122168))

(assert (=> bm!353610 m!6123628))

(assert (=> bm!353609 m!6122186))

(declare-fun m!6123994 () Bool)

(assert (=> bm!353609 m!6123994))

(assert (=> bm!353612 m!6122168))

(assert (=> bm!353612 m!6122186))

(assert (=> bm!353612 m!6123178))

(declare-fun m!6123996 () Bool)

(assert (=> bm!353611 m!6123996))

(assert (=> b!5074986 d!1639091))

(assert (=> bm!353532 d!1638609))

(declare-fun d!1639093 () Bool)

(declare-fun lt!2090107 () Int)

(assert (=> d!1639093 (>= lt!2090107 0)))

(declare-fun e!3166515 () Int)

(assert (=> d!1639093 (= lt!2090107 e!3166515)))

(declare-fun c!871501 () Bool)

(assert (=> d!1639093 (= c!871501 ((_ is Nil!58446) (t!371357 lt!2089946)))))

(assert (=> d!1639093 (= (size!39099 (t!371357 lt!2089946)) lt!2090107)))

(declare-fun b!5075399 () Bool)

(assert (=> b!5075399 (= e!3166515 0)))

(declare-fun b!5075400 () Bool)

(assert (=> b!5075400 (= e!3166515 (+ 1 (size!39099 (t!371357 (t!371357 lt!2089946)))))))

(assert (= (and d!1639093 c!871501) b!5075399))

(assert (= (and d!1639093 (not c!871501)) b!5075400))

(declare-fun m!6123998 () Bool)

(assert (=> b!5075400 m!6123998))

(assert (=> b!5075009 d!1639093))

(declare-fun d!1639095 () Bool)

(declare-fun res!2160935 () Bool)

(declare-fun e!3166516 () Bool)

(assert (=> d!1639095 (=> (not res!2160935) (not e!3166516))))

(assert (=> d!1639095 (= res!2160935 (= (csize!31382 (right!43164 (left!42834 xs!286))) (+ (size!39101 (left!42834 (right!43164 (left!42834 xs!286)))) (size!39101 (right!43164 (right!43164 (left!42834 xs!286)))))))))

(assert (=> d!1639095 (= (inv!77625 (right!43164 (left!42834 xs!286))) e!3166516)))

(declare-fun b!5075401 () Bool)

(declare-fun res!2160936 () Bool)

(assert (=> b!5075401 (=> (not res!2160936) (not e!3166516))))

(assert (=> b!5075401 (= res!2160936 (and (not (= (left!42834 (right!43164 (left!42834 xs!286))) Empty!15576)) (not (= (right!43164 (right!43164 (left!42834 xs!286))) Empty!15576))))))

(declare-fun b!5075402 () Bool)

(declare-fun res!2160937 () Bool)

(assert (=> b!5075402 (=> (not res!2160937) (not e!3166516))))

(assert (=> b!5075402 (= res!2160937 (= (cheight!15787 (right!43164 (left!42834 xs!286))) (+ (max!0 (height!2153 (left!42834 (right!43164 (left!42834 xs!286)))) (height!2153 (right!43164 (right!43164 (left!42834 xs!286))))) 1)))))

(declare-fun b!5075403 () Bool)

(assert (=> b!5075403 (= e!3166516 (<= 0 (cheight!15787 (right!43164 (left!42834 xs!286)))))))

(assert (= (and d!1639095 res!2160935) b!5075401))

(assert (= (and b!5075401 res!2160936) b!5075402))

(assert (= (and b!5075402 res!2160937) b!5075403))

(declare-fun m!6124000 () Bool)

(assert (=> d!1639095 m!6124000))

(declare-fun m!6124002 () Bool)

(assert (=> d!1639095 m!6124002))

(declare-fun m!6124004 () Bool)

(assert (=> b!5075402 m!6124004))

(declare-fun m!6124006 () Bool)

(assert (=> b!5075402 m!6124006))

(assert (=> b!5075402 m!6124004))

(assert (=> b!5075402 m!6124006))

(declare-fun m!6124008 () Bool)

(assert (=> b!5075402 m!6124008))

(assert (=> b!5075005 d!1639095))

(declare-fun b!5075404 () Bool)

(declare-fun res!2160938 () Bool)

(declare-fun e!3166518 () Bool)

(assert (=> b!5075404 (=> (not res!2160938) (not e!3166518))))

(assert (=> b!5075404 (= res!2160938 (isBalanced!4438 (left!42834 (right!43164 (left!42834 ys!41)))))))

(declare-fun b!5075405 () Bool)

(declare-fun res!2160941 () Bool)

(assert (=> b!5075405 (=> (not res!2160941) (not e!3166518))))

(assert (=> b!5075405 (= res!2160941 (<= (- (height!2153 (left!42834 (right!43164 (left!42834 ys!41)))) (height!2153 (right!43164 (right!43164 (left!42834 ys!41))))) 1))))

(declare-fun d!1639097 () Bool)

(declare-fun res!2160940 () Bool)

(declare-fun e!3166517 () Bool)

(assert (=> d!1639097 (=> res!2160940 e!3166517)))

(assert (=> d!1639097 (= res!2160940 (not ((_ is Node!15576) (right!43164 (left!42834 ys!41)))))))

(assert (=> d!1639097 (= (isBalanced!4438 (right!43164 (left!42834 ys!41))) e!3166517)))

(declare-fun b!5075406 () Bool)

(assert (=> b!5075406 (= e!3166518 (not (isEmpty!31655 (right!43164 (right!43164 (left!42834 ys!41))))))))

(declare-fun b!5075407 () Bool)

(declare-fun res!2160939 () Bool)

(assert (=> b!5075407 (=> (not res!2160939) (not e!3166518))))

(assert (=> b!5075407 (= res!2160939 (not (isEmpty!31655 (left!42834 (right!43164 (left!42834 ys!41))))))))

(declare-fun b!5075408 () Bool)

(assert (=> b!5075408 (= e!3166517 e!3166518)))

(declare-fun res!2160942 () Bool)

(assert (=> b!5075408 (=> (not res!2160942) (not e!3166518))))

(assert (=> b!5075408 (= res!2160942 (<= (- 1) (- (height!2153 (left!42834 (right!43164 (left!42834 ys!41)))) (height!2153 (right!43164 (right!43164 (left!42834 ys!41)))))))))

(declare-fun b!5075409 () Bool)

(declare-fun res!2160943 () Bool)

(assert (=> b!5075409 (=> (not res!2160943) (not e!3166518))))

(assert (=> b!5075409 (= res!2160943 (isBalanced!4438 (right!43164 (right!43164 (left!42834 ys!41)))))))

(assert (= (and d!1639097 (not res!2160940)) b!5075408))

(assert (= (and b!5075408 res!2160942) b!5075405))

(assert (= (and b!5075405 res!2160941) b!5075404))

(assert (= (and b!5075404 res!2160938) b!5075409))

(assert (= (and b!5075409 res!2160943) b!5075407))

(assert (= (and b!5075407 res!2160939) b!5075406))

(declare-fun m!6124010 () Bool)

(assert (=> b!5075407 m!6124010))

(declare-fun m!6124012 () Bool)

(assert (=> b!5075406 m!6124012))

(declare-fun m!6124014 () Bool)

(assert (=> b!5075409 m!6124014))

(assert (=> b!5075408 m!6123986))

(assert (=> b!5075408 m!6123988))

(assert (=> b!5075405 m!6123986))

(assert (=> b!5075405 m!6123988))

(declare-fun m!6124016 () Bool)

(assert (=> b!5075404 m!6124016))

(assert (=> b!5074742 d!1639097))

(assert (=> b!5074682 d!1639083))

(declare-fun bm!353613 () Bool)

(declare-fun call!353621 () List!58570)

(declare-fun call!353620 () List!58570)

(assert (=> bm!353613 (= call!353621 (++!12800 call!353620 (list!19013 (right!43164 ys!41))))))

(declare-fun bm!353614 () Bool)

(assert (=> bm!353614 (= call!353620 (++!12800 (t!371357 (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 ys!41))))) (list!19013 (right!43164 (left!42834 ys!41)))))))

(declare-fun d!1639099 () Bool)

(declare-fun e!3166519 () Bool)

(assert (=> d!1639099 e!3166519))

(declare-fun c!871502 () Bool)

(assert (=> d!1639099 (= c!871502 ((_ is Nil!58446) (t!371357 (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 ys!41)))))))))

(assert (=> d!1639099 (= (appendAssoc!308 (t!371357 (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 ys!41))))) (list!19013 (right!43164 (left!42834 ys!41))) (list!19013 (right!43164 ys!41))) true)))

(declare-fun call!353619 () List!58570)

(declare-fun call!353618 () List!58570)

(declare-fun bm!353615 () Bool)

(assert (=> bm!353615 (= call!353619 (++!12800 (t!371357 (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 ys!41))))) call!353618))))

(declare-fun b!5075410 () Bool)

(assert (=> b!5075410 (= e!3166519 (= call!353621 call!353619))))

(declare-fun lt!2090108 () Bool)

(assert (=> b!5075410 (= lt!2090108 (appendAssoc!308 (t!371357 (t!371357 (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 ys!41)))))) (list!19013 (right!43164 (left!42834 ys!41))) (list!19013 (right!43164 ys!41))))))

(declare-fun b!5075411 () Bool)

(assert (=> b!5075411 (= e!3166519 (= call!353621 call!353619))))

(declare-fun bm!353616 () Bool)

(assert (=> bm!353616 (= call!353618 (++!12800 (list!19013 (right!43164 (left!42834 ys!41))) (list!19013 (right!43164 ys!41))))))

(assert (= (and d!1639099 c!871502) b!5075411))

(assert (= (and d!1639099 (not c!871502)) b!5075410))

(assert (= (or b!5075411 b!5075410) bm!353614))

(assert (= (or b!5075411 b!5075410) bm!353616))

(assert (= (or b!5075411 b!5075410) bm!353615))

(assert (= (or b!5075411 b!5075410) bm!353613))

(assert (=> b!5075410 m!6122176))

(assert (=> b!5075410 m!6122038))

(declare-fun m!6124018 () Bool)

(assert (=> b!5075410 m!6124018))

(assert (=> bm!353614 m!6122176))

(assert (=> bm!353614 m!6123532))

(assert (=> bm!353613 m!6122038))

(declare-fun m!6124020 () Bool)

(assert (=> bm!353613 m!6124020))

(assert (=> bm!353616 m!6122176))

(assert (=> bm!353616 m!6122038))

(assert (=> bm!353616 m!6123044))

(declare-fun m!6124022 () Bool)

(assert (=> bm!353615 m!6124022))

(assert (=> b!5074929 d!1639099))

(declare-fun b!5075412 () Bool)

(declare-fun res!2160944 () Bool)

(declare-fun e!3166521 () Bool)

(assert (=> b!5075412 (=> (not res!2160944) (not e!3166521))))

(assert (=> b!5075412 (= res!2160944 (isBalanced!4438 (left!42834 (right!43164 (left!42834 xs!286)))))))

(declare-fun b!5075413 () Bool)

(declare-fun res!2160947 () Bool)

(assert (=> b!5075413 (=> (not res!2160947) (not e!3166521))))

(assert (=> b!5075413 (= res!2160947 (<= (- (height!2153 (left!42834 (right!43164 (left!42834 xs!286)))) (height!2153 (right!43164 (right!43164 (left!42834 xs!286))))) 1))))

(declare-fun d!1639101 () Bool)

(declare-fun res!2160946 () Bool)

(declare-fun e!3166520 () Bool)

(assert (=> d!1639101 (=> res!2160946 e!3166520)))

(assert (=> d!1639101 (= res!2160946 (not ((_ is Node!15576) (right!43164 (left!42834 xs!286)))))))

(assert (=> d!1639101 (= (isBalanced!4438 (right!43164 (left!42834 xs!286))) e!3166520)))

(declare-fun b!5075414 () Bool)

(assert (=> b!5075414 (= e!3166521 (not (isEmpty!31655 (right!43164 (right!43164 (left!42834 xs!286))))))))

(declare-fun b!5075415 () Bool)

(declare-fun res!2160945 () Bool)

(assert (=> b!5075415 (=> (not res!2160945) (not e!3166521))))

(assert (=> b!5075415 (= res!2160945 (not (isEmpty!31655 (left!42834 (right!43164 (left!42834 xs!286))))))))

(declare-fun b!5075416 () Bool)

(assert (=> b!5075416 (= e!3166520 e!3166521)))

(declare-fun res!2160948 () Bool)

(assert (=> b!5075416 (=> (not res!2160948) (not e!3166521))))

(assert (=> b!5075416 (= res!2160948 (<= (- 1) (- (height!2153 (left!42834 (right!43164 (left!42834 xs!286)))) (height!2153 (right!43164 (right!43164 (left!42834 xs!286)))))))))

(declare-fun b!5075417 () Bool)

(declare-fun res!2160949 () Bool)

(assert (=> b!5075417 (=> (not res!2160949) (not e!3166521))))

(assert (=> b!5075417 (= res!2160949 (isBalanced!4438 (right!43164 (right!43164 (left!42834 xs!286)))))))

(assert (= (and d!1639101 (not res!2160946)) b!5075416))

(assert (= (and b!5075416 res!2160948) b!5075413))

(assert (= (and b!5075413 res!2160947) b!5075412))

(assert (= (and b!5075412 res!2160944) b!5075417))

(assert (= (and b!5075417 res!2160949) b!5075415))

(assert (= (and b!5075415 res!2160945) b!5075414))

(declare-fun m!6124024 () Bool)

(assert (=> b!5075415 m!6124024))

(declare-fun m!6124026 () Bool)

(assert (=> b!5075414 m!6124026))

(declare-fun m!6124028 () Bool)

(assert (=> b!5075417 m!6124028))

(assert (=> b!5075416 m!6124004))

(assert (=> b!5075416 m!6124006))

(assert (=> b!5075413 m!6124004))

(assert (=> b!5075413 m!6124006))

(declare-fun m!6124030 () Bool)

(assert (=> b!5075412 m!6124030))

(assert (=> b!5074705 d!1639101))

(declare-fun d!1639103 () Bool)

(declare-fun e!3166526 () Bool)

(assert (=> d!1639103 e!3166526))

(declare-fun res!2160954 () Bool)

(assert (=> d!1639103 (=> (not res!2160954) (not e!3166526))))

(declare-fun e!3166527 () Bool)

(assert (=> d!1639103 (= res!2160954 e!3166527)))

(declare-fun res!2160953 () Bool)

(assert (=> d!1639103 (=> res!2160953 e!3166527)))

(assert (=> d!1639103 (= res!2160953 (not ((_ is Node!15576) (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))))))

(assert (=> d!1639103 (= (appendAssocInst!916 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286) (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) true)))

(declare-fun b!5075418 () Bool)

(declare-fun e!3166530 () Bool)

(assert (=> b!5075418 (= e!3166527 e!3166530)))

(declare-fun res!2160956 () Bool)

(assert (=> b!5075418 (=> (not res!2160956) (not e!3166530))))

(assert (=> b!5075418 (= res!2160956 (appendAssoc!308 (list!19013 (left!42834 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (list!19013 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (list!19013 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))))))

(declare-fun b!5075419 () Bool)

(declare-fun e!3166525 () Bool)

(declare-fun e!3166522 () Bool)

(assert (=> b!5075419 (= e!3166525 e!3166522)))

(declare-fun res!2160958 () Bool)

(assert (=> b!5075419 (=> res!2160958 e!3166522)))

(assert (=> b!5075419 (= res!2160958 (not ((_ is Node!15576) (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))))

(declare-fun e!3166529 () Bool)

(declare-fun b!5075420 () Bool)

(assert (=> b!5075420 (= e!3166529 (appendAssoc!308 (list!19013 (left!42834 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (list!19013 (left!42834 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (++!12800 (list!19013 (right!43164 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (list!19013 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))))

(declare-fun b!5075421 () Bool)

(declare-fun e!3166523 () Bool)

(assert (=> b!5075421 (= e!3166526 e!3166523)))

(declare-fun res!2160957 () Bool)

(assert (=> b!5075421 (=> res!2160957 e!3166523)))

(assert (=> b!5075421 (= res!2160957 (not ((_ is Node!15576) (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))))))

(declare-fun b!5075422 () Bool)

(assert (=> b!5075422 (= e!3166523 e!3166525)))

(declare-fun res!2160951 () Bool)

(assert (=> b!5075422 (=> (not res!2160951) (not e!3166525))))

(assert (=> b!5075422 (= res!2160951 (appendAssoc!308 (list!19013 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (list!19013 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))) (list!19013 (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))))

(declare-fun b!5075423 () Bool)

(declare-fun e!3166528 () Bool)

(assert (=> b!5075423 (= e!3166530 e!3166528)))

(declare-fun res!2160952 () Bool)

(assert (=> b!5075423 (=> res!2160952 e!3166528)))

(assert (=> b!5075423 (= res!2160952 (not ((_ is Node!15576) (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))))))

(declare-fun b!5075424 () Bool)

(assert (=> b!5075424 (= e!3166528 e!3166529)))

(declare-fun res!2160950 () Bool)

(assert (=> b!5075424 (=> (not res!2160950) (not e!3166529))))

(assert (=> b!5075424 (= res!2160950 (appendAssoc!308 (list!19013 (left!42834 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (list!19013 (right!43164 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (list!19013 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))))))

(declare-fun e!3166524 () Bool)

(declare-fun b!5075425 () Bool)

(assert (=> b!5075425 (= e!3166524 (appendAssoc!308 (++!12800 (list!19013 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (list!19013 (left!42834 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))))) (list!19013 (right!43164 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))) (list!19013 (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))))

(declare-fun b!5075426 () Bool)

(assert (=> b!5075426 (= e!3166522 e!3166524)))

(declare-fun res!2160955 () Bool)

(assert (=> b!5075426 (=> (not res!2160955) (not e!3166524))))

(assert (=> b!5075426 (= res!2160955 (appendAssoc!308 (list!19013 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (list!19013 (left!42834 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))) (list!19013 (right!43164 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))))))))

(assert (= (and d!1639103 (not res!2160953)) b!5075418))

(assert (= (and b!5075418 res!2160956) b!5075423))

(assert (= (and b!5075423 (not res!2160952)) b!5075424))

(assert (= (and b!5075424 res!2160950) b!5075420))

(assert (= (and d!1639103 res!2160954) b!5075421))

(assert (= (and b!5075421 (not res!2160957)) b!5075422))

(assert (= (and b!5075422 res!2160951) b!5075419))

(assert (= (and b!5075419 (not res!2160958)) b!5075426))

(assert (= (and b!5075426 res!2160955) b!5075425))

(declare-fun m!6124032 () Bool)

(assert (=> b!5075424 m!6124032))

(declare-fun m!6124034 () Bool)

(assert (=> b!5075424 m!6124034))

(assert (=> b!5075424 m!6122822))

(assert (=> b!5075424 m!6124032))

(assert (=> b!5075424 m!6124034))

(assert (=> b!5075424 m!6122822))

(declare-fun m!6124036 () Bool)

(assert (=> b!5075424 m!6124036))

(assert (=> b!5075425 m!6122820))

(declare-fun m!6124038 () Bool)

(assert (=> b!5075425 m!6124038))

(declare-fun m!6124040 () Bool)

(assert (=> b!5075425 m!6124040))

(declare-fun m!6124042 () Bool)

(assert (=> b!5075425 m!6124042))

(declare-fun m!6124044 () Bool)

(assert (=> b!5075425 m!6124044))

(assert (=> b!5075425 m!6124040))

(declare-fun m!6124046 () Bool)

(assert (=> b!5075425 m!6124046))

(assert (=> b!5075425 m!6124042))

(assert (=> b!5075425 m!6122820))

(assert (=> b!5075425 m!6124046))

(assert (=> b!5075425 m!6124038))

(assert (=> b!5075422 m!6122820))

(declare-fun m!6124048 () Bool)

(assert (=> b!5075422 m!6124048))

(assert (=> b!5075422 m!6124042))

(assert (=> b!5075422 m!6122820))

(assert (=> b!5075422 m!6124048))

(assert (=> b!5075422 m!6124042))

(declare-fun m!6124050 () Bool)

(assert (=> b!5075422 m!6124050))

(declare-fun m!6124052 () Bool)

(assert (=> b!5075418 m!6124052))

(declare-fun m!6124054 () Bool)

(assert (=> b!5075418 m!6124054))

(assert (=> b!5075418 m!6122822))

(assert (=> b!5075418 m!6124052))

(assert (=> b!5075418 m!6124054))

(assert (=> b!5075418 m!6122822))

(declare-fun m!6124056 () Bool)

(assert (=> b!5075418 m!6124056))

(assert (=> b!5075420 m!6124034))

(assert (=> b!5075420 m!6124052))

(assert (=> b!5075420 m!6124032))

(declare-fun m!6124058 () Bool)

(assert (=> b!5075420 m!6124058))

(declare-fun m!6124060 () Bool)

(assert (=> b!5075420 m!6124060))

(assert (=> b!5075420 m!6124034))

(assert (=> b!5075420 m!6122822))

(assert (=> b!5075420 m!6124058))

(assert (=> b!5075420 m!6122822))

(assert (=> b!5075420 m!6124052))

(assert (=> b!5075420 m!6124032))

(assert (=> b!5075426 m!6122820))

(assert (=> b!5075426 m!6124046))

(assert (=> b!5075426 m!6124040))

(assert (=> b!5075426 m!6122820))

(assert (=> b!5075426 m!6124046))

(assert (=> b!5075426 m!6124040))

(declare-fun m!6124062 () Bool)

(assert (=> b!5075426 m!6124062))

(assert (=> d!1638655 d!1639103))

(declare-fun b!5075427 () Bool)

(declare-fun res!2160959 () Bool)

(declare-fun e!3166532 () Bool)

(assert (=> b!5075427 (=> (not res!2160959) (not e!3166532))))

(assert (=> b!5075427 (= res!2160959 (isBalanced!4438 (left!42834 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))))))

(declare-fun b!5075428 () Bool)

(declare-fun res!2160962 () Bool)

(assert (=> b!5075428 (=> (not res!2160962) (not e!3166532))))

(assert (=> b!5075428 (= res!2160962 (<= (- (height!2153 (left!42834 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (height!2153 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) 1))))

(declare-fun d!1639105 () Bool)

(declare-fun res!2160961 () Bool)

(declare-fun e!3166531 () Bool)

(assert (=> d!1639105 (=> res!2160961 e!3166531)))

(assert (=> d!1639105 (= res!2160961 (not ((_ is Node!15576) (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))))))

(assert (=> d!1639105 (= (isBalanced!4438 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) e!3166531)))

(declare-fun b!5075429 () Bool)

(assert (=> b!5075429 (= e!3166532 (not (isEmpty!31655 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))))))

(declare-fun b!5075430 () Bool)

(declare-fun res!2160960 () Bool)

(assert (=> b!5075430 (=> (not res!2160960) (not e!3166532))))

(assert (=> b!5075430 (= res!2160960 (not (isEmpty!31655 (left!42834 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))))))

(declare-fun b!5075431 () Bool)

(assert (=> b!5075431 (= e!3166531 e!3166532)))

(declare-fun res!2160963 () Bool)

(assert (=> b!5075431 (=> (not res!2160963) (not e!3166532))))

(assert (=> b!5075431 (= res!2160963 (<= (- 1) (- (height!2153 (left!42834 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (height!2153 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))))))))

(declare-fun b!5075432 () Bool)

(declare-fun res!2160964 () Bool)

(assert (=> b!5075432 (=> (not res!2160964) (not e!3166532))))

(assert (=> b!5075432 (= res!2160964 (isBalanced!4438 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))))))

(assert (= (and d!1639105 (not res!2160961)) b!5075431))

(assert (= (and b!5075431 res!2160963) b!5075428))

(assert (= (and b!5075428 res!2160962) b!5075427))

(assert (= (and b!5075427 res!2160959) b!5075432))

(assert (= (and b!5075432 res!2160964) b!5075430))

(assert (= (and b!5075430 res!2160960) b!5075429))

(declare-fun m!6124064 () Bool)

(assert (=> b!5075430 m!6124064))

(declare-fun m!6124066 () Bool)

(assert (=> b!5075429 m!6124066))

(declare-fun m!6124068 () Bool)

(assert (=> b!5075432 m!6124068))

(declare-fun m!6124070 () Bool)

(assert (=> b!5075431 m!6124070))

(declare-fun m!6124072 () Bool)

(assert (=> b!5075431 m!6124072))

(assert (=> b!5075428 m!6124070))

(assert (=> b!5075428 m!6124072))

(declare-fun m!6124074 () Bool)

(assert (=> b!5075427 m!6124074))

(assert (=> d!1638655 d!1639105))

(declare-fun d!1639107 () Bool)

(declare-fun lt!2090109 () Bool)

(assert (=> d!1639107 (= lt!2090109 (isEmpty!31656 (list!19013 (left!42834 (right!43164 xs!286)))))))

(assert (=> d!1639107 (= lt!2090109 (= (size!39101 (left!42834 (right!43164 xs!286))) 0))))

(assert (=> d!1639107 (= (isEmpty!31655 (left!42834 (right!43164 xs!286))) lt!2090109)))

(declare-fun bs!1190368 () Bool)

(assert (= bs!1190368 d!1639107))

(assert (=> bs!1190368 m!6122168))

(assert (=> bs!1190368 m!6122168))

(declare-fun m!6124076 () Bool)

(assert (=> bs!1190368 m!6124076))

(assert (=> bs!1190368 m!6122760))

(assert (=> b!5074898 d!1639107))

(declare-fun d!1639109 () Bool)

(declare-fun res!2160965 () Bool)

(declare-fun e!3166533 () Bool)

(assert (=> d!1639109 (=> (not res!2160965) (not e!3166533))))

(assert (=> d!1639109 (= res!2160965 (<= (size!39099 (list!19014 (xs!18936 (right!43164 (right!43164 ys!41))))) 512))))

(assert (=> d!1639109 (= (inv!77626 (right!43164 (right!43164 ys!41))) e!3166533)))

(declare-fun b!5075433 () Bool)

(declare-fun res!2160966 () Bool)

(assert (=> b!5075433 (=> (not res!2160966) (not e!3166533))))

(assert (=> b!5075433 (= res!2160966 (= (csize!31383 (right!43164 (right!43164 ys!41))) (size!39099 (list!19014 (xs!18936 (right!43164 (right!43164 ys!41)))))))))

(declare-fun b!5075434 () Bool)

(assert (=> b!5075434 (= e!3166533 (and (> (csize!31383 (right!43164 (right!43164 ys!41))) 0) (<= (csize!31383 (right!43164 (right!43164 ys!41))) 512)))))

(assert (= (and d!1639109 res!2160965) b!5075433))

(assert (= (and b!5075433 res!2160966) b!5075434))

(declare-fun m!6124078 () Bool)

(assert (=> d!1639109 m!6124078))

(assert (=> d!1639109 m!6124078))

(declare-fun m!6124080 () Bool)

(assert (=> d!1639109 m!6124080))

(assert (=> b!5075433 m!6124078))

(assert (=> b!5075433 m!6124078))

(assert (=> b!5075433 m!6124080))

(assert (=> b!5074906 d!1639109))

(declare-fun d!1639111 () Bool)

(assert (=> d!1639111 (= (inv!77622 (xs!18936 (left!42834 (right!43164 ys!41)))) (<= (size!39099 (innerList!15664 (xs!18936 (left!42834 (right!43164 ys!41))))) 2147483647))))

(declare-fun bs!1190369 () Bool)

(assert (= bs!1190369 d!1639111))

(declare-fun m!6124082 () Bool)

(assert (=> bs!1190369 m!6124082))

(assert (=> b!5075096 d!1639111))

(declare-fun d!1639113 () Bool)

(declare-fun lt!2090110 () Int)

(assert (=> d!1639113 (>= lt!2090110 0)))

(declare-fun e!3166534 () Int)

(assert (=> d!1639113 (= lt!2090110 e!3166534)))

(declare-fun c!871503 () Bool)

(assert (=> d!1639113 (= c!871503 ((_ is Nil!58446) lt!2089994))))

(assert (=> d!1639113 (= (size!39099 lt!2089994) lt!2090110)))

(declare-fun b!5075435 () Bool)

(assert (=> b!5075435 (= e!3166534 0)))

(declare-fun b!5075436 () Bool)

(assert (=> b!5075436 (= e!3166534 (+ 1 (size!39099 (t!371357 lt!2089994))))))

(assert (= (and d!1639113 c!871503) b!5075435))

(assert (= (and d!1639113 (not c!871503)) b!5075436))

(declare-fun m!6124084 () Bool)

(assert (=> b!5075436 m!6124084))

(assert (=> b!5074678 d!1639113))

(declare-fun d!1639115 () Bool)

(declare-fun lt!2090111 () Int)

(assert (=> d!1639115 (>= lt!2090111 0)))

(declare-fun e!3166535 () Int)

(assert (=> d!1639115 (= lt!2090111 e!3166535)))

(declare-fun c!871504 () Bool)

(assert (=> d!1639115 (= c!871504 ((_ is Nil!58446) (list!19013 (left!42834 xs!286))))))

(assert (=> d!1639115 (= (size!39099 (list!19013 (left!42834 xs!286))) lt!2090111)))

(declare-fun b!5075437 () Bool)

(assert (=> b!5075437 (= e!3166535 0)))

(declare-fun b!5075438 () Bool)

(assert (=> b!5075438 (= e!3166535 (+ 1 (size!39099 (t!371357 (list!19013 (left!42834 xs!286))))))))

(assert (= (and d!1639115 c!871504) b!5075437))

(assert (= (and d!1639115 (not c!871504)) b!5075438))

(assert (=> b!5075438 m!6123938))

(assert (=> b!5074678 d!1639115))

(declare-fun d!1639117 () Bool)

(declare-fun lt!2090112 () Int)

(assert (=> d!1639117 (>= lt!2090112 0)))

(declare-fun e!3166536 () Int)

(assert (=> d!1639117 (= lt!2090112 e!3166536)))

(declare-fun c!871505 () Bool)

(assert (=> d!1639117 (= c!871505 ((_ is Nil!58446) (list!19013 (right!43164 xs!286))))))

(assert (=> d!1639117 (= (size!39099 (list!19013 (right!43164 xs!286))) lt!2090112)))

(declare-fun b!5075439 () Bool)

(assert (=> b!5075439 (= e!3166536 0)))

(declare-fun b!5075440 () Bool)

(assert (=> b!5075440 (= e!3166536 (+ 1 (size!39099 (t!371357 (list!19013 (right!43164 xs!286))))))))

(assert (= (and d!1639117 c!871505) b!5075439))

(assert (= (and d!1639117 (not c!871505)) b!5075440))

(declare-fun m!6124086 () Bool)

(assert (=> b!5075440 m!6124086))

(assert (=> b!5074678 d!1639117))

(assert (=> bm!353506 d!1638717))

(assert (=> b!5074565 d!1638695))

(assert (=> b!5074565 d!1638697))

(declare-fun d!1639119 () Bool)

(assert (=> d!1639119 (= (inv!77622 (xs!18936 (right!43164 (right!43164 xs!286)))) (<= (size!39099 (innerList!15664 (xs!18936 (right!43164 (right!43164 xs!286))))) 2147483647))))

(declare-fun bs!1190370 () Bool)

(assert (= bs!1190370 d!1639119))

(declare-fun m!6124088 () Bool)

(assert (=> bs!1190370 m!6124088))

(assert (=> b!5075067 d!1639119))

(assert (=> b!5074817 d!1638941))

(assert (=> b!5074817 d!1638943))

(assert (=> b!5074817 d!1638945))

(assert (=> b!5074817 d!1638947))

(declare-fun d!1639121 () Bool)

(declare-fun c!871506 () Bool)

(assert (=> d!1639121 (= c!871506 ((_ is Node!15576) (left!42834 (right!43164 (right!43164 ys!41)))))))

(declare-fun e!3166537 () Bool)

(assert (=> d!1639121 (= (inv!77621 (left!42834 (right!43164 (right!43164 ys!41)))) e!3166537)))

(declare-fun b!5075441 () Bool)

(assert (=> b!5075441 (= e!3166537 (inv!77625 (left!42834 (right!43164 (right!43164 ys!41)))))))

(declare-fun b!5075442 () Bool)

(declare-fun e!3166538 () Bool)

(assert (=> b!5075442 (= e!3166537 e!3166538)))

(declare-fun res!2160967 () Bool)

(assert (=> b!5075442 (= res!2160967 (not ((_ is Leaf!25869) (left!42834 (right!43164 (right!43164 ys!41))))))))

(assert (=> b!5075442 (=> res!2160967 e!3166538)))

(declare-fun b!5075443 () Bool)

(assert (=> b!5075443 (= e!3166538 (inv!77626 (left!42834 (right!43164 (right!43164 ys!41)))))))

(assert (= (and d!1639121 c!871506) b!5075441))

(assert (= (and d!1639121 (not c!871506)) b!5075442))

(assert (= (and b!5075442 (not res!2160967)) b!5075443))

(declare-fun m!6124090 () Bool)

(assert (=> b!5075441 m!6124090))

(declare-fun m!6124092 () Bool)

(assert (=> b!5075443 m!6124092))

(assert (=> b!5075098 d!1639121))

(declare-fun d!1639123 () Bool)

(declare-fun c!871507 () Bool)

(assert (=> d!1639123 (= c!871507 ((_ is Node!15576) (right!43164 (right!43164 (right!43164 ys!41)))))))

(declare-fun e!3166539 () Bool)

(assert (=> d!1639123 (= (inv!77621 (right!43164 (right!43164 (right!43164 ys!41)))) e!3166539)))

(declare-fun b!5075444 () Bool)

(assert (=> b!5075444 (= e!3166539 (inv!77625 (right!43164 (right!43164 (right!43164 ys!41)))))))

(declare-fun b!5075445 () Bool)

(declare-fun e!3166540 () Bool)

(assert (=> b!5075445 (= e!3166539 e!3166540)))

(declare-fun res!2160968 () Bool)

(assert (=> b!5075445 (= res!2160968 (not ((_ is Leaf!25869) (right!43164 (right!43164 (right!43164 ys!41))))))))

(assert (=> b!5075445 (=> res!2160968 e!3166540)))

(declare-fun b!5075446 () Bool)

(assert (=> b!5075446 (= e!3166540 (inv!77626 (right!43164 (right!43164 (right!43164 ys!41)))))))

(assert (= (and d!1639123 c!871507) b!5075444))

(assert (= (and d!1639123 (not c!871507)) b!5075445))

(assert (= (and b!5075445 (not res!2160968)) b!5075446))

(declare-fun m!6124094 () Bool)

(assert (=> b!5075444 m!6124094))

(declare-fun m!6124096 () Bool)

(assert (=> b!5075446 m!6124096))

(assert (=> b!5075098 d!1639123))

(assert (=> b!5075047 d!1638933))

(assert (=> b!5075047 d!1638619))

(declare-fun d!1639125 () Bool)

(assert (=> d!1639125 (= (height!2153 (left!42834 lt!2089978)) (ite ((_ is Empty!15576) (left!42834 lt!2089978)) 0 (ite ((_ is Leaf!25869) (left!42834 lt!2089978)) 1 (cheight!15787 (left!42834 lt!2089978)))))))

(assert (=> b!5074918 d!1639125))

(declare-fun d!1639127 () Bool)

(assert (=> d!1639127 (= (height!2153 (right!43164 lt!2089978)) (ite ((_ is Empty!15576) (right!43164 lt!2089978)) 0 (ite ((_ is Leaf!25869) (right!43164 lt!2089978)) 1 (cheight!15787 (right!43164 lt!2089978)))))))

(assert (=> b!5074918 d!1639127))

(declare-fun d!1639129 () Bool)

(declare-fun res!2160969 () Bool)

(declare-fun e!3166541 () Bool)

(assert (=> d!1639129 (=> (not res!2160969) (not e!3166541))))

(assert (=> d!1639129 (= res!2160969 (<= (size!39099 (list!19014 (xs!18936 (right!43164 (left!42834 xs!286))))) 512))))

(assert (=> d!1639129 (= (inv!77626 (right!43164 (left!42834 xs!286))) e!3166541)))

(declare-fun b!5075447 () Bool)

(declare-fun res!2160970 () Bool)

(assert (=> b!5075447 (=> (not res!2160970) (not e!3166541))))

(assert (=> b!5075447 (= res!2160970 (= (csize!31383 (right!43164 (left!42834 xs!286))) (size!39099 (list!19014 (xs!18936 (right!43164 (left!42834 xs!286)))))))))

(declare-fun b!5075448 () Bool)

(assert (=> b!5075448 (= e!3166541 (and (> (csize!31383 (right!43164 (left!42834 xs!286))) 0) (<= (csize!31383 (right!43164 (left!42834 xs!286))) 512)))))

(assert (= (and d!1639129 res!2160969) b!5075447))

(assert (= (and b!5075447 res!2160970) b!5075448))

(declare-fun m!6124098 () Bool)

(assert (=> d!1639129 m!6124098))

(assert (=> d!1639129 m!6124098))

(declare-fun m!6124100 () Bool)

(assert (=> d!1639129 m!6124100))

(assert (=> b!5075447 m!6124098))

(assert (=> b!5075447 m!6124098))

(assert (=> b!5075447 m!6124100))

(assert (=> b!5075007 d!1639129))

(declare-fun d!1639131 () Bool)

(declare-fun lt!2090113 () Int)

(assert (=> d!1639131 (= lt!2090113 (size!39099 (list!19013 (left!42834 (right!43164 xs!286)))))))

(assert (=> d!1639131 (= lt!2090113 (ite ((_ is Empty!15576) (left!42834 (right!43164 xs!286))) 0 (ite ((_ is Leaf!25869) (left!42834 (right!43164 xs!286))) (csize!31383 (left!42834 (right!43164 xs!286))) (csize!31382 (left!42834 (right!43164 xs!286))))))))

(assert (=> d!1639131 (= (size!39101 (left!42834 (right!43164 xs!286))) lt!2090113)))

(declare-fun bs!1190371 () Bool)

(assert (= bs!1190371 d!1639131))

(assert (=> bs!1190371 m!6122168))

(assert (=> bs!1190371 m!6122168))

(assert (=> bs!1190371 m!6123624))

(assert (=> d!1638645 d!1639131))

(declare-fun d!1639133 () Bool)

(declare-fun lt!2090114 () Int)

(assert (=> d!1639133 (= lt!2090114 (size!39099 (list!19013 (right!43164 (right!43164 xs!286)))))))

(assert (=> d!1639133 (= lt!2090114 (ite ((_ is Empty!15576) (right!43164 (right!43164 xs!286))) 0 (ite ((_ is Leaf!25869) (right!43164 (right!43164 xs!286))) (csize!31383 (right!43164 (right!43164 xs!286))) (csize!31382 (right!43164 (right!43164 xs!286))))))))

(assert (=> d!1639133 (= (size!39101 (right!43164 (right!43164 xs!286))) lt!2090114)))

(declare-fun bs!1190372 () Bool)

(assert (= bs!1190372 d!1639133))

(assert (=> bs!1190372 m!6122170))

(assert (=> bs!1190372 m!6122170))

(assert (=> bs!1190372 m!6123195))

(assert (=> d!1638645 d!1639133))

(declare-fun d!1639135 () Bool)

(declare-fun lt!2090115 () Int)

(assert (=> d!1639135 (>= lt!2090115 0)))

(declare-fun e!3166542 () Int)

(assert (=> d!1639135 (= lt!2090115 e!3166542)))

(declare-fun c!871508 () Bool)

(assert (=> d!1639135 (= c!871508 ((_ is Nil!58446) (list!19014 (xs!18936 (left!42834 ys!41)))))))

(assert (=> d!1639135 (= (size!39099 (list!19014 (xs!18936 (left!42834 ys!41)))) lt!2090115)))

(declare-fun b!5075449 () Bool)

(assert (=> b!5075449 (= e!3166542 0)))

(declare-fun b!5075450 () Bool)

(assert (=> b!5075450 (= e!3166542 (+ 1 (size!39099 (t!371357 (list!19014 (xs!18936 (left!42834 ys!41)))))))))

(assert (= (and d!1639135 c!871508) b!5075449))

(assert (= (and d!1639135 (not c!871508)) b!5075450))

(declare-fun m!6124102 () Bool)

(assert (=> b!5075450 m!6124102))

(assert (=> b!5075049 d!1639135))

(assert (=> b!5075049 d!1639007))

(declare-fun d!1639137 () Bool)

(declare-fun c!871509 () Bool)

(assert (=> d!1639137 (= c!871509 ((_ is Node!15576) (left!42834 (left!42834 (left!42834 ys!41)))))))

(declare-fun e!3166543 () Bool)

(assert (=> d!1639137 (= (inv!77621 (left!42834 (left!42834 (left!42834 ys!41)))) e!3166543)))

(declare-fun b!5075451 () Bool)

(assert (=> b!5075451 (= e!3166543 (inv!77625 (left!42834 (left!42834 (left!42834 ys!41)))))))

(declare-fun b!5075452 () Bool)

(declare-fun e!3166544 () Bool)

(assert (=> b!5075452 (= e!3166543 e!3166544)))

(declare-fun res!2160971 () Bool)

(assert (=> b!5075452 (= res!2160971 (not ((_ is Leaf!25869) (left!42834 (left!42834 (left!42834 ys!41))))))))

(assert (=> b!5075452 (=> res!2160971 e!3166544)))

(declare-fun b!5075453 () Bool)

(assert (=> b!5075453 (= e!3166544 (inv!77626 (left!42834 (left!42834 (left!42834 ys!41)))))))

(assert (= (and d!1639137 c!871509) b!5075451))

(assert (= (and d!1639137 (not c!871509)) b!5075452))

(assert (= (and b!5075452 (not res!2160971)) b!5075453))

(declare-fun m!6124104 () Bool)

(assert (=> b!5075451 m!6124104))

(declare-fun m!6124106 () Bool)

(assert (=> b!5075453 m!6124106))

(assert (=> b!5075069 d!1639137))

(declare-fun d!1639139 () Bool)

(declare-fun c!871510 () Bool)

(assert (=> d!1639139 (= c!871510 ((_ is Node!15576) (right!43164 (left!42834 (left!42834 ys!41)))))))

(declare-fun e!3166545 () Bool)

(assert (=> d!1639139 (= (inv!77621 (right!43164 (left!42834 (left!42834 ys!41)))) e!3166545)))

(declare-fun b!5075454 () Bool)

(assert (=> b!5075454 (= e!3166545 (inv!77625 (right!43164 (left!42834 (left!42834 ys!41)))))))

(declare-fun b!5075455 () Bool)

(declare-fun e!3166546 () Bool)

(assert (=> b!5075455 (= e!3166545 e!3166546)))

(declare-fun res!2160972 () Bool)

(assert (=> b!5075455 (= res!2160972 (not ((_ is Leaf!25869) (right!43164 (left!42834 (left!42834 ys!41))))))))

(assert (=> b!5075455 (=> res!2160972 e!3166546)))

(declare-fun b!5075456 () Bool)

(assert (=> b!5075456 (= e!3166546 (inv!77626 (right!43164 (left!42834 (left!42834 ys!41)))))))

(assert (= (and d!1639139 c!871510) b!5075454))

(assert (= (and d!1639139 (not c!871510)) b!5075455))

(assert (= (and b!5075455 (not res!2160972)) b!5075456))

(declare-fun m!6124108 () Bool)

(assert (=> b!5075454 m!6124108))

(declare-fun m!6124110 () Bool)

(assert (=> b!5075456 m!6124110))

(assert (=> b!5075069 d!1639139))

(assert (=> bm!353524 d!1638779))

(declare-fun b!5075460 () Bool)

(declare-fun e!3166548 () Bool)

(declare-fun lt!2090116 () List!58570)

(assert (=> b!5075460 (= e!3166548 (or (not (= (list!19013 (right!43164 (left!42834 xs!286))) Nil!58446)) (= lt!2090116 (list!19013 (left!42834 (left!42834 xs!286))))))))

(declare-fun b!5075458 () Bool)

(declare-fun e!3166547 () List!58570)

(assert (=> b!5075458 (= e!3166547 (Cons!58446 (h!64894 (list!19013 (left!42834 (left!42834 xs!286)))) (++!12800 (t!371357 (list!19013 (left!42834 (left!42834 xs!286)))) (list!19013 (right!43164 (left!42834 xs!286))))))))

(declare-fun d!1639141 () Bool)

(assert (=> d!1639141 e!3166548))

(declare-fun res!2160974 () Bool)

(assert (=> d!1639141 (=> (not res!2160974) (not e!3166548))))

(assert (=> d!1639141 (= res!2160974 (= (content!10423 lt!2090116) ((_ map or) (content!10423 (list!19013 (left!42834 (left!42834 xs!286)))) (content!10423 (list!19013 (right!43164 (left!42834 xs!286)))))))))

(assert (=> d!1639141 (= lt!2090116 e!3166547)))

(declare-fun c!871511 () Bool)

(assert (=> d!1639141 (= c!871511 ((_ is Nil!58446) (list!19013 (left!42834 (left!42834 xs!286)))))))

(assert (=> d!1639141 (= (++!12800 (list!19013 (left!42834 (left!42834 xs!286))) (list!19013 (right!43164 (left!42834 xs!286)))) lt!2090116)))

(declare-fun b!5075459 () Bool)

(declare-fun res!2160973 () Bool)

(assert (=> b!5075459 (=> (not res!2160973) (not e!3166548))))

(assert (=> b!5075459 (= res!2160973 (= (size!39099 lt!2090116) (+ (size!39099 (list!19013 (left!42834 (left!42834 xs!286)))) (size!39099 (list!19013 (right!43164 (left!42834 xs!286)))))))))

(declare-fun b!5075457 () Bool)

(assert (=> b!5075457 (= e!3166547 (list!19013 (right!43164 (left!42834 xs!286))))))

(assert (= (and d!1639141 c!871511) b!5075457))

(assert (= (and d!1639141 (not c!871511)) b!5075458))

(assert (= (and d!1639141 res!2160974) b!5075459))

(assert (= (and b!5075459 res!2160973) b!5075460))

(assert (=> b!5075458 m!6122548))

(declare-fun m!6124112 () Bool)

(assert (=> b!5075458 m!6124112))

(declare-fun m!6124114 () Bool)

(assert (=> d!1639141 m!6124114))

(assert (=> d!1639141 m!6122546))

(declare-fun m!6124116 () Bool)

(assert (=> d!1639141 m!6124116))

(assert (=> d!1639141 m!6122548))

(declare-fun m!6124118 () Bool)

(assert (=> d!1639141 m!6124118))

(declare-fun m!6124120 () Bool)

(assert (=> b!5075459 m!6124120))

(assert (=> b!5075459 m!6122546))

(declare-fun m!6124122 () Bool)

(assert (=> b!5075459 m!6124122))

(assert (=> b!5075459 m!6122548))

(declare-fun m!6124124 () Bool)

(assert (=> b!5075459 m!6124124))

(assert (=> b!5074683 d!1639141))

(declare-fun b!5075463 () Bool)

(declare-fun e!3166550 () List!58570)

(assert (=> b!5075463 (= e!3166550 (list!19014 (xs!18936 (left!42834 (left!42834 xs!286)))))))

(declare-fun b!5075464 () Bool)

(assert (=> b!5075464 (= e!3166550 (++!12800 (list!19013 (left!42834 (left!42834 (left!42834 xs!286)))) (list!19013 (right!43164 (left!42834 (left!42834 xs!286))))))))

(declare-fun b!5075461 () Bool)

(declare-fun e!3166549 () List!58570)

(assert (=> b!5075461 (= e!3166549 Nil!58446)))

(declare-fun d!1639143 () Bool)

(declare-fun c!871512 () Bool)

(assert (=> d!1639143 (= c!871512 ((_ is Empty!15576) (left!42834 (left!42834 xs!286))))))

(assert (=> d!1639143 (= (list!19013 (left!42834 (left!42834 xs!286))) e!3166549)))

(declare-fun b!5075462 () Bool)

(assert (=> b!5075462 (= e!3166549 e!3166550)))

(declare-fun c!871513 () Bool)

(assert (=> b!5075462 (= c!871513 ((_ is Leaf!25869) (left!42834 (left!42834 xs!286))))))

(assert (= (and d!1639143 c!871512) b!5075461))

(assert (= (and d!1639143 (not c!871512)) b!5075462))

(assert (= (and b!5075462 c!871513) b!5075463))

(assert (= (and b!5075462 (not c!871513)) b!5075464))

(declare-fun m!6124126 () Bool)

(assert (=> b!5075463 m!6124126))

(declare-fun m!6124128 () Bool)

(assert (=> b!5075464 m!6124128))

(declare-fun m!6124130 () Bool)

(assert (=> b!5075464 m!6124130))

(assert (=> b!5075464 m!6124128))

(assert (=> b!5075464 m!6124130))

(declare-fun m!6124132 () Bool)

(assert (=> b!5075464 m!6124132))

(assert (=> b!5074683 d!1639143))

(declare-fun b!5075467 () Bool)

(declare-fun e!3166552 () List!58570)

(assert (=> b!5075467 (= e!3166552 (list!19014 (xs!18936 (right!43164 (left!42834 xs!286)))))))

(declare-fun b!5075468 () Bool)

(assert (=> b!5075468 (= e!3166552 (++!12800 (list!19013 (left!42834 (right!43164 (left!42834 xs!286)))) (list!19013 (right!43164 (right!43164 (left!42834 xs!286))))))))

(declare-fun b!5075465 () Bool)

(declare-fun e!3166551 () List!58570)

(assert (=> b!5075465 (= e!3166551 Nil!58446)))

(declare-fun d!1639145 () Bool)

(declare-fun c!871514 () Bool)

(assert (=> d!1639145 (= c!871514 ((_ is Empty!15576) (right!43164 (left!42834 xs!286))))))

(assert (=> d!1639145 (= (list!19013 (right!43164 (left!42834 xs!286))) e!3166551)))

(declare-fun b!5075466 () Bool)

(assert (=> b!5075466 (= e!3166551 e!3166552)))

(declare-fun c!871515 () Bool)

(assert (=> b!5075466 (= c!871515 ((_ is Leaf!25869) (right!43164 (left!42834 xs!286))))))

(assert (= (and d!1639145 c!871514) b!5075465))

(assert (= (and d!1639145 (not c!871514)) b!5075466))

(assert (= (and b!5075466 c!871515) b!5075467))

(assert (= (and b!5075466 (not c!871515)) b!5075468))

(assert (=> b!5075467 m!6124098))

(declare-fun m!6124134 () Bool)

(assert (=> b!5075468 m!6124134))

(declare-fun m!6124136 () Bool)

(assert (=> b!5075468 m!6124136))

(assert (=> b!5075468 m!6124134))

(assert (=> b!5075468 m!6124136))

(declare-fun m!6124138 () Bool)

(assert (=> b!5075468 m!6124138))

(assert (=> b!5074683 d!1639145))

(declare-fun d!1639147 () Bool)

(declare-fun lt!2090117 () Int)

(assert (=> d!1639147 (>= lt!2090117 0)))

(declare-fun e!3166553 () Int)

(assert (=> d!1639147 (= lt!2090117 e!3166553)))

(declare-fun c!871516 () Bool)

(assert (=> d!1639147 (= c!871516 ((_ is Nil!58446) (t!371357 (list!19013 xs!286))))))

(assert (=> d!1639147 (= (size!39099 (t!371357 (list!19013 xs!286))) lt!2090117)))

(declare-fun b!5075469 () Bool)

(assert (=> b!5075469 (= e!3166553 0)))

(declare-fun b!5075470 () Bool)

(assert (=> b!5075470 (= e!3166553 (+ 1 (size!39099 (t!371357 (t!371357 (list!19013 xs!286))))))))

(assert (= (and d!1639147 c!871516) b!5075469))

(assert (= (and d!1639147 (not c!871516)) b!5075470))

(declare-fun m!6124140 () Bool)

(assert (=> b!5075470 m!6124140))

(assert (=> b!5075011 d!1639147))

(declare-fun d!1639149 () Bool)

(assert (=> d!1639149 (= (max!0 (height!2153 (left!42834 (right!43164 xs!286))) (height!2153 (right!43164 (right!43164 xs!286)))) (ite (< (height!2153 (left!42834 (right!43164 xs!286))) (height!2153 (right!43164 (right!43164 xs!286)))) (height!2153 (right!43164 (right!43164 xs!286))) (height!2153 (left!42834 (right!43164 xs!286)))))))

(assert (=> b!5074791 d!1639149))

(assert (=> b!5074791 d!1638975))

(assert (=> b!5074791 d!1638977))

(declare-fun d!1639151 () Bool)

(declare-fun lt!2090118 () Int)

(assert (=> d!1639151 (= lt!2090118 (size!39099 (list!19013 (left!42834 (left!42834 xs!286)))))))

(assert (=> d!1639151 (= lt!2090118 (ite ((_ is Empty!15576) (left!42834 (left!42834 xs!286))) 0 (ite ((_ is Leaf!25869) (left!42834 (left!42834 xs!286))) (csize!31383 (left!42834 (left!42834 xs!286))) (csize!31382 (left!42834 (left!42834 xs!286))))))))

(assert (=> d!1639151 (= (size!39101 (left!42834 (left!42834 xs!286))) lt!2090118)))

(declare-fun bs!1190373 () Bool)

(assert (= bs!1190373 d!1639151))

(assert (=> bs!1190373 m!6122546))

(assert (=> bs!1190373 m!6122546))

(assert (=> bs!1190373 m!6124122))

(assert (=> d!1638513 d!1639151))

(declare-fun d!1639153 () Bool)

(declare-fun lt!2090119 () Int)

(assert (=> d!1639153 (= lt!2090119 (size!39099 (list!19013 (right!43164 (left!42834 xs!286)))))))

(assert (=> d!1639153 (= lt!2090119 (ite ((_ is Empty!15576) (right!43164 (left!42834 xs!286))) 0 (ite ((_ is Leaf!25869) (right!43164 (left!42834 xs!286))) (csize!31383 (right!43164 (left!42834 xs!286))) (csize!31382 (right!43164 (left!42834 xs!286))))))))

(assert (=> d!1639153 (= (size!39101 (right!43164 (left!42834 xs!286))) lt!2090119)))

(declare-fun bs!1190374 () Bool)

(assert (= bs!1190374 d!1639153))

(assert (=> bs!1190374 m!6122548))

(assert (=> bs!1190374 m!6122548))

(assert (=> bs!1190374 m!6124124))

(assert (=> d!1638513 d!1639153))

(declare-fun d!1639155 () Bool)

(assert (=> d!1639155 (= (list!19014 (xs!18936 (left!42834 lt!2089940))) (innerList!15664 (xs!18936 (left!42834 lt!2089940))))))

(assert (=> b!5074889 d!1639155))

(assert (=> bm!353528 d!1638803))

(declare-fun lt!2090120 () List!58570)

(declare-fun e!3166555 () Bool)

(declare-fun b!5075474 () Bool)

(assert (=> b!5075474 (= e!3166555 (or (not (= (list!19013 (left!42834 ys!41)) Nil!58446)) (= lt!2090120 (t!371357 (list!19013 xs!286)))))))

(declare-fun b!5075472 () Bool)

(declare-fun e!3166554 () List!58570)

(assert (=> b!5075472 (= e!3166554 (Cons!58446 (h!64894 (t!371357 (list!19013 xs!286))) (++!12800 (t!371357 (t!371357 (list!19013 xs!286))) (list!19013 (left!42834 ys!41)))))))

(declare-fun d!1639157 () Bool)

(assert (=> d!1639157 e!3166555))

(declare-fun res!2160976 () Bool)

(assert (=> d!1639157 (=> (not res!2160976) (not e!3166555))))

(assert (=> d!1639157 (= res!2160976 (= (content!10423 lt!2090120) ((_ map or) (content!10423 (t!371357 (list!19013 xs!286))) (content!10423 (list!19013 (left!42834 ys!41))))))))

(assert (=> d!1639157 (= lt!2090120 e!3166554)))

(declare-fun c!871517 () Bool)

(assert (=> d!1639157 (= c!871517 ((_ is Nil!58446) (t!371357 (list!19013 xs!286))))))

(assert (=> d!1639157 (= (++!12800 (t!371357 (list!19013 xs!286)) (list!19013 (left!42834 ys!41))) lt!2090120)))

(declare-fun b!5075473 () Bool)

(declare-fun res!2160975 () Bool)

(assert (=> b!5075473 (=> (not res!2160975) (not e!3166555))))

(assert (=> b!5075473 (= res!2160975 (= (size!39099 lt!2090120) (+ (size!39099 (t!371357 (list!19013 xs!286))) (size!39099 (list!19013 (left!42834 ys!41))))))))

(declare-fun b!5075471 () Bool)

(assert (=> b!5075471 (= e!3166554 (list!19013 (left!42834 ys!41)))))

(assert (= (and d!1639157 c!871517) b!5075471))

(assert (= (and d!1639157 (not c!871517)) b!5075472))

(assert (= (and d!1639157 res!2160976) b!5075473))

(assert (= (and b!5075473 res!2160975) b!5075474))

(assert (=> b!5075472 m!6122036))

(declare-fun m!6124142 () Bool)

(assert (=> b!5075472 m!6124142))

(declare-fun m!6124144 () Bool)

(assert (=> d!1639157 m!6124144))

(assert (=> d!1639157 m!6122714))

(assert (=> d!1639157 m!6122036))

(assert (=> d!1639157 m!6122636))

(declare-fun m!6124146 () Bool)

(assert (=> b!5075473 m!6124146))

(assert (=> b!5075473 m!6122718))

(assert (=> b!5075473 m!6122036))

(assert (=> b!5075473 m!6122644))

(assert (=> b!5075021 d!1639157))

(assert (=> b!5074593 d!1639081))

(assert (=> b!5074593 d!1639083))

(declare-fun e!3166557 () Bool)

(declare-fun b!5075478 () Bool)

(declare-fun lt!2090121 () List!58570)

(assert (=> b!5075478 (= e!3166557 (or (not (= (list!19013 ys!41) Nil!58446)) (= lt!2090121 call!353576)))))

(declare-fun b!5075476 () Bool)

(declare-fun e!3166556 () List!58570)

(assert (=> b!5075476 (= e!3166556 (Cons!58446 (h!64894 call!353576) (++!12800 (t!371357 call!353576) (list!19013 ys!41))))))

(declare-fun d!1639159 () Bool)

(assert (=> d!1639159 e!3166557))

(declare-fun res!2160978 () Bool)

(assert (=> d!1639159 (=> (not res!2160978) (not e!3166557))))

(assert (=> d!1639159 (= res!2160978 (= (content!10423 lt!2090121) ((_ map or) (content!10423 call!353576) (content!10423 (list!19013 ys!41)))))))

(assert (=> d!1639159 (= lt!2090121 e!3166556)))

(declare-fun c!871518 () Bool)

(assert (=> d!1639159 (= c!871518 ((_ is Nil!58446) call!353576))))

(assert (=> d!1639159 (= (++!12800 call!353576 (list!19013 ys!41)) lt!2090121)))

(declare-fun b!5075477 () Bool)

(declare-fun res!2160977 () Bool)

(assert (=> b!5075477 (=> (not res!2160977) (not e!3166557))))

(assert (=> b!5075477 (= res!2160977 (= (size!39099 lt!2090121) (+ (size!39099 call!353576) (size!39099 (list!19013 ys!41)))))))

(declare-fun b!5075475 () Bool)

(assert (=> b!5075475 (= e!3166556 (list!19013 ys!41))))

(assert (= (and d!1639159 c!871518) b!5075475))

(assert (= (and d!1639159 (not c!871518)) b!5075476))

(assert (= (and d!1639159 res!2160978) b!5075477))

(assert (= (and b!5075477 res!2160977) b!5075478))

(assert (=> b!5075476 m!6121980))

(declare-fun m!6124148 () Bool)

(assert (=> b!5075476 m!6124148))

(declare-fun m!6124150 () Bool)

(assert (=> d!1639159 m!6124150))

(declare-fun m!6124152 () Bool)

(assert (=> d!1639159 m!6124152))

(assert (=> d!1639159 m!6121980))

(assert (=> d!1639159 m!6122018))

(declare-fun m!6124154 () Bool)

(assert (=> b!5075477 m!6124154))

(declare-fun m!6124156 () Bool)

(assert (=> b!5075477 m!6124156))

(assert (=> b!5075477 m!6121980))

(assert (=> b!5075477 m!6122024))

(assert (=> bm!353569 d!1639159))

(declare-fun b!5075479 () Bool)

(declare-fun e!3166559 () Conc!15576)

(assert (=> b!5075479 (= e!3166559 (ite c!871348 (ite c!871350 lt!2090008 (left!42834 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (ite c!871351 (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (ite c!871352 (right!43164 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))) (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))))))))

(declare-fun e!3166558 () Conc!15576)

(declare-fun b!5075482 () Bool)

(assert (=> b!5075482 (= e!3166558 (Node!15576 (ite c!871348 (ite c!871350 (left!42834 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (left!42834 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (ite c!871351 call!353546 (ite c!871352 lt!2090005 (right!43164 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))) (ite c!871348 (ite c!871350 lt!2090008 (left!42834 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (ite c!871351 (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (ite c!871352 (right!43164 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))) (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))))) (+ (size!39101 (ite c!871348 (ite c!871350 (left!42834 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (left!42834 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (ite c!871351 call!353546 (ite c!871352 lt!2090005 (right!43164 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))))))) (size!39101 (ite c!871348 (ite c!871350 lt!2090008 (left!42834 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (ite c!871351 (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (ite c!871352 (right!43164 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))) (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))))))) (+ (max!0 (height!2153 (ite c!871348 (ite c!871350 (left!42834 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (left!42834 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (ite c!871351 call!353546 (ite c!871352 lt!2090005 (right!43164 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))))))) (height!2153 (ite c!871348 (ite c!871350 lt!2090008 (left!42834 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (ite c!871351 (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (ite c!871352 (right!43164 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))) (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))))))) 1)))))

(declare-fun d!1639161 () Bool)

(declare-fun lt!2090122 () Conc!15576)

(assert (=> d!1639161 (= (list!19013 lt!2090122) (++!12800 (list!19013 (ite c!871348 (ite c!871350 (left!42834 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (left!42834 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (ite c!871351 call!353546 (ite c!871352 lt!2090005 (right!43164 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))))))) (list!19013 (ite c!871348 (ite c!871350 lt!2090008 (left!42834 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (ite c!871351 (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (ite c!871352 (right!43164 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))) (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))))))))))

(assert (=> d!1639161 (= lt!2090122 e!3166559)))

(declare-fun c!871520 () Bool)

(assert (=> d!1639161 (= c!871520 (= (ite c!871348 (ite c!871350 (left!42834 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (left!42834 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (ite c!871351 call!353546 (ite c!871352 lt!2090005 (right!43164 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))) Empty!15576))))

(assert (=> d!1639161 (= (<>!398 (ite c!871348 (ite c!871350 (left!42834 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (left!42834 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (ite c!871351 call!353546 (ite c!871352 lt!2090005 (right!43164 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))) (ite c!871348 (ite c!871350 lt!2090008 (left!42834 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (ite c!871351 (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (ite c!871352 (right!43164 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))) (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))) lt!2090122)))

(declare-fun b!5075480 () Bool)

(assert (=> b!5075480 (= e!3166559 e!3166558)))

(declare-fun c!871519 () Bool)

(assert (=> b!5075480 (= c!871519 (= (ite c!871348 (ite c!871350 lt!2090008 (left!42834 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (ite c!871351 (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (ite c!871352 (right!43164 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))) (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))))) Empty!15576))))

(declare-fun b!5075481 () Bool)

(assert (=> b!5075481 (= e!3166558 (ite c!871348 (ite c!871350 (left!42834 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (left!42834 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (ite c!871351 call!353546 (ite c!871352 lt!2090005 (right!43164 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))))))

(assert (= (and d!1639161 c!871520) b!5075479))

(assert (= (and d!1639161 (not c!871520)) b!5075480))

(assert (= (and b!5075480 c!871519) b!5075481))

(assert (= (and b!5075480 (not c!871519)) b!5075482))

(declare-fun m!6124158 () Bool)

(assert (=> b!5075482 m!6124158))

(declare-fun m!6124160 () Bool)

(assert (=> b!5075482 m!6124160))

(assert (=> b!5075482 m!6124160))

(declare-fun m!6124162 () Bool)

(assert (=> b!5075482 m!6124162))

(declare-fun m!6124164 () Bool)

(assert (=> b!5075482 m!6124164))

(assert (=> b!5075482 m!6124162))

(declare-fun m!6124166 () Bool)

(assert (=> b!5075482 m!6124166))

(declare-fun m!6124168 () Bool)

(assert (=> d!1639161 m!6124168))

(declare-fun m!6124170 () Bool)

(assert (=> d!1639161 m!6124170))

(declare-fun m!6124172 () Bool)

(assert (=> d!1639161 m!6124172))

(assert (=> d!1639161 m!6124170))

(assert (=> d!1639161 m!6124172))

(declare-fun m!6124174 () Bool)

(assert (=> d!1639161 m!6124174))

(assert (=> bm!353541 d!1639161))

(assert (=> b!5074720 d!1639043))

(declare-fun d!1639163 () Bool)

(declare-fun lt!2090123 () Int)

(assert (=> d!1639163 (>= lt!2090123 0)))

(declare-fun e!3166560 () Int)

(assert (=> d!1639163 (= lt!2090123 e!3166560)))

(declare-fun c!871521 () Bool)

(assert (=> d!1639163 (= c!871521 ((_ is Nil!58446) (list!19014 (xs!18936 ys!41))))))

(assert (=> d!1639163 (= (size!39099 (list!19014 (xs!18936 ys!41))) lt!2090123)))

(declare-fun b!5075483 () Bool)

(assert (=> b!5075483 (= e!3166560 0)))

(declare-fun b!5075484 () Bool)

(assert (=> b!5075484 (= e!3166560 (+ 1 (size!39099 (t!371357 (list!19014 (xs!18936 ys!41))))))))

(assert (= (and d!1639163 c!871521) b!5075483))

(assert (= (and d!1639163 (not c!871521)) b!5075484))

(declare-fun m!6124176 () Bool)

(assert (=> b!5075484 m!6124176))

(assert (=> b!5074923 d!1639163))

(assert (=> b!5074923 d!1638789))

(declare-fun d!1639165 () Bool)

(declare-fun lt!2090124 () Int)

(assert (=> d!1639165 (= lt!2090124 (size!39099 (list!19013 (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41))))))))))

(assert (=> d!1639165 (= lt!2090124 (ite ((_ is Empty!15576) (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41)))))) 0 (ite ((_ is Leaf!25869) (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41)))))) (csize!31383 (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41)))))) (csize!31382 (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41)))))))))))

(assert (=> d!1639165 (= (size!39101 (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41)))))) lt!2090124)))

(declare-fun bs!1190375 () Bool)

(assert (= bs!1190375 d!1639165))

(assert (=> bs!1190375 m!6122704))

(assert (=> bs!1190375 m!6122704))

(declare-fun m!6124178 () Bool)

(assert (=> bs!1190375 m!6124178))

(assert (=> b!5074750 d!1639165))

(declare-fun d!1639167 () Bool)

(assert (=> d!1639167 (= (height!2153 (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41)))))) (ite ((_ is Empty!15576) (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41)))))) 0 (ite ((_ is Leaf!25869) (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41)))))) 1 (cheight!15787 (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41)))))))))))

(assert (=> b!5074750 d!1639167))

(declare-fun d!1639169 () Bool)

(assert (=> d!1639169 (= (max!0 (height!2153 (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41))))))) (height!2153 (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41))))))) (ite (< (height!2153 (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41))))))) (height!2153 (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41))))))) (height!2153 (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41)))))) (height!2153 (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41)))))))))))

(assert (=> b!5074750 d!1639169))

(declare-fun d!1639171 () Bool)

(assert (=> d!1639171 (= (height!2153 (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41))))))) (ite ((_ is Empty!15576) (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41))))))) 0 (ite ((_ is Leaf!25869) (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41))))))) 1 (cheight!15787 (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41))))))))))))

(assert (=> b!5074750 d!1639171))

(declare-fun d!1639173 () Bool)

(declare-fun lt!2090125 () Int)

(assert (=> d!1639173 (= lt!2090125 (size!39099 (list!19013 (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41)))))))))))

(assert (=> d!1639173 (= lt!2090125 (ite ((_ is Empty!15576) (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41))))))) 0 (ite ((_ is Leaf!25869) (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41))))))) (csize!31383 (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41))))))) (csize!31382 (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41))))))))))))

(assert (=> d!1639173 (= (size!39101 (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41))))))) lt!2090125)))

(declare-fun bs!1190376 () Bool)

(assert (= bs!1190376 d!1639173))

(assert (=> bs!1190376 m!6122702))

(assert (=> bs!1190376 m!6122702))

(declare-fun m!6124180 () Bool)

(assert (=> bs!1190376 m!6124180))

(assert (=> b!5074750 d!1639173))

(declare-fun e!3166562 () Bool)

(declare-fun b!5075488 () Bool)

(declare-fun lt!2090126 () List!58570)

(assert (=> b!5075488 (= e!3166562 (or (not (= call!353512 Nil!58446)) (= lt!2090126 (list!19013 xs!286))))))

(declare-fun b!5075486 () Bool)

(declare-fun e!3166561 () List!58570)

(assert (=> b!5075486 (= e!3166561 (Cons!58446 (h!64894 (list!19013 xs!286)) (++!12800 (t!371357 (list!19013 xs!286)) call!353512)))))

(declare-fun d!1639175 () Bool)

(assert (=> d!1639175 e!3166562))

(declare-fun res!2160980 () Bool)

(assert (=> d!1639175 (=> (not res!2160980) (not e!3166562))))

(assert (=> d!1639175 (= res!2160980 (= (content!10423 lt!2090126) ((_ map or) (content!10423 (list!19013 xs!286)) (content!10423 call!353512))))))

(assert (=> d!1639175 (= lt!2090126 e!3166561)))

(declare-fun c!871522 () Bool)

(assert (=> d!1639175 (= c!871522 ((_ is Nil!58446) (list!19013 xs!286)))))

(assert (=> d!1639175 (= (++!12800 (list!19013 xs!286) call!353512) lt!2090126)))

(declare-fun b!5075487 () Bool)

(declare-fun res!2160979 () Bool)

(assert (=> b!5075487 (=> (not res!2160979) (not e!3166562))))

(assert (=> b!5075487 (= res!2160979 (= (size!39099 lt!2090126) (+ (size!39099 (list!19013 xs!286)) (size!39099 call!353512))))))

(declare-fun b!5075485 () Bool)

(assert (=> b!5075485 (= e!3166561 call!353512)))

(assert (= (and d!1639175 c!871522) b!5075485))

(assert (= (and d!1639175 (not c!871522)) b!5075486))

(assert (= (and d!1639175 res!2160980) b!5075487))

(assert (= (and b!5075487 res!2160979) b!5075488))

(declare-fun m!6124182 () Bool)

(assert (=> b!5075486 m!6124182))

(declare-fun m!6124184 () Bool)

(assert (=> d!1639175 m!6124184))

(assert (=> d!1639175 m!6121978))

(assert (=> d!1639175 m!6122016))

(declare-fun m!6124186 () Bool)

(assert (=> d!1639175 m!6124186))

(declare-fun m!6124188 () Bool)

(assert (=> b!5075487 m!6124188))

(assert (=> b!5075487 m!6121978))

(assert (=> b!5075487 m!6122022))

(declare-fun m!6124190 () Bool)

(assert (=> b!5075487 m!6124190))

(assert (=> bm!353507 d!1639175))

(assert (=> b!5074899 d!1638975))

(assert (=> b!5074899 d!1638977))

(assert (=> b!5074775 d!1638529))

(assert (=> b!5074775 d!1638437))

(assert (=> b!5074775 d!1638541))

(assert (=> b!5074775 d!1638543))

(declare-fun d!1639177 () Bool)

(declare-fun res!2160981 () Bool)

(declare-fun e!3166563 () Bool)

(assert (=> d!1639177 (=> (not res!2160981) (not e!3166563))))

(assert (=> d!1639177 (= res!2160981 (<= (size!39099 (list!19014 (xs!18936 (right!43164 (left!42834 ys!41))))) 512))))

(assert (=> d!1639177 (= (inv!77626 (right!43164 (left!42834 ys!41))) e!3166563)))

(declare-fun b!5075489 () Bool)

(declare-fun res!2160982 () Bool)

(assert (=> b!5075489 (=> (not res!2160982) (not e!3166563))))

(assert (=> b!5075489 (= res!2160982 (= (csize!31383 (right!43164 (left!42834 ys!41))) (size!39099 (list!19014 (xs!18936 (right!43164 (left!42834 ys!41)))))))))

(declare-fun b!5075490 () Bool)

(assert (=> b!5075490 (= e!3166563 (and (> (csize!31383 (right!43164 (left!42834 ys!41))) 0) (<= (csize!31383 (right!43164 (left!42834 ys!41))) 512)))))

(assert (= (and d!1639177 res!2160981) b!5075489))

(assert (= (and b!5075489 res!2160982) b!5075490))

(assert (=> d!1639177 m!6122426))

(assert (=> d!1639177 m!6122426))

(declare-fun m!6124192 () Bool)

(assert (=> d!1639177 m!6124192))

(assert (=> b!5075489 m!6122426))

(assert (=> b!5075489 m!6122426))

(assert (=> b!5075489 m!6124192))

(assert (=> b!5074798 d!1639177))

(declare-fun d!1639179 () Bool)

(assert (=> d!1639179 (= (inv!77622 (xs!18936 (left!42834 (left!42834 ys!41)))) (<= (size!39099 (innerList!15664 (xs!18936 (left!42834 (left!42834 ys!41))))) 2147483647))))

(declare-fun bs!1190377 () Bool)

(assert (= bs!1190377 d!1639179))

(declare-fun m!6124194 () Bool)

(assert (=> bs!1190377 m!6124194))

(assert (=> b!5075070 d!1639179))

(declare-fun d!1639181 () Bool)

(declare-fun c!871523 () Bool)

(assert (=> d!1639181 (= c!871523 ((_ is Nil!58446) lt!2090004))))

(declare-fun e!3166564 () (InoxSet T!105202))

(assert (=> d!1639181 (= (content!10423 lt!2090004) e!3166564)))

(declare-fun b!5075491 () Bool)

(assert (=> b!5075491 (= e!3166564 ((as const (Array T!105202 Bool)) false))))

(declare-fun b!5075492 () Bool)

(assert (=> b!5075492 (= e!3166564 ((_ map or) (store ((as const (Array T!105202 Bool)) false) (h!64894 lt!2090004) true) (content!10423 (t!371357 lt!2090004))))))

(assert (= (and d!1639181 c!871523) b!5075491))

(assert (= (and d!1639181 (not c!871523)) b!5075492))

(declare-fun m!6124196 () Bool)

(assert (=> b!5075492 m!6124196))

(declare-fun m!6124198 () Bool)

(assert (=> b!5075492 m!6124198))

(assert (=> d!1638633 d!1639181))

(assert (=> d!1638633 d!1638911))

(assert (=> d!1638633 d!1638819))

(declare-fun d!1639183 () Bool)

(assert (=> d!1639183 (= (inv!77622 (xs!18936 (right!43164 (right!43164 ys!41)))) (<= (size!39099 (innerList!15664 (xs!18936 (right!43164 (right!43164 ys!41))))) 2147483647))))

(declare-fun bs!1190378 () Bool)

(assert (= bs!1190378 d!1639183))

(declare-fun m!6124200 () Bool)

(assert (=> bs!1190378 m!6124200))

(assert (=> b!5075099 d!1639183))

(declare-fun d!1639185 () Bool)

(declare-fun lt!2090127 () Bool)

(assert (=> d!1639185 (= lt!2090127 (isEmpty!31656 (list!19013 (right!43164 lt!2089978))))))

(assert (=> d!1639185 (= lt!2090127 (= (size!39101 (right!43164 lt!2089978)) 0))))

(assert (=> d!1639185 (= (isEmpty!31655 (right!43164 lt!2089978)) lt!2090127)))

(declare-fun bs!1190379 () Bool)

(assert (= bs!1190379 d!1639185))

(assert (=> bs!1190379 m!6123234))

(assert (=> bs!1190379 m!6123234))

(declare-fun m!6124202 () Bool)

(assert (=> bs!1190379 m!6124202))

(declare-fun m!6124204 () Bool)

(assert (=> bs!1190379 m!6124204))

(assert (=> b!5074919 d!1639185))

(declare-fun d!1639187 () Bool)

(assert (=> d!1639187 (= (max!0 (height!2153 (left!42834 (right!43164 ys!41))) (height!2153 (right!43164 (right!43164 ys!41)))) (ite (< (height!2153 (left!42834 (right!43164 ys!41))) (height!2153 (right!43164 (right!43164 ys!41)))) (height!2153 (right!43164 (right!43164 ys!41))) (height!2153 (left!42834 (right!43164 ys!41)))))))

(assert (=> b!5074957 d!1639187))

(declare-fun d!1639189 () Bool)

(assert (=> d!1639189 (= (height!2153 (left!42834 (right!43164 ys!41))) (ite ((_ is Empty!15576) (left!42834 (right!43164 ys!41))) 0 (ite ((_ is Leaf!25869) (left!42834 (right!43164 ys!41))) 1 (cheight!15787 (left!42834 (right!43164 ys!41))))))))

(assert (=> b!5074957 d!1639189))

(declare-fun d!1639191 () Bool)

(assert (=> d!1639191 (= (height!2153 (right!43164 (right!43164 ys!41))) (ite ((_ is Empty!15576) (right!43164 (right!43164 ys!41))) 0 (ite ((_ is Leaf!25869) (right!43164 (right!43164 ys!41))) 1 (cheight!15787 (right!43164 (right!43164 ys!41))))))))

(assert (=> b!5074957 d!1639191))

(declare-fun d!1639193 () Bool)

(declare-fun c!871524 () Bool)

(assert (=> d!1639193 (= c!871524 ((_ is Node!15576) (left!42834 (right!43164 (left!42834 xs!286)))))))

(declare-fun e!3166565 () Bool)

(assert (=> d!1639193 (= (inv!77621 (left!42834 (right!43164 (left!42834 xs!286)))) e!3166565)))

(declare-fun b!5075493 () Bool)

(assert (=> b!5075493 (= e!3166565 (inv!77625 (left!42834 (right!43164 (left!42834 xs!286)))))))

(declare-fun b!5075494 () Bool)

(declare-fun e!3166566 () Bool)

(assert (=> b!5075494 (= e!3166565 e!3166566)))

(declare-fun res!2160983 () Bool)

(assert (=> b!5075494 (= res!2160983 (not ((_ is Leaf!25869) (left!42834 (right!43164 (left!42834 xs!286))))))))

(assert (=> b!5075494 (=> res!2160983 e!3166566)))

(declare-fun b!5075495 () Bool)

(assert (=> b!5075495 (= e!3166566 (inv!77626 (left!42834 (right!43164 (left!42834 xs!286)))))))

(assert (= (and d!1639193 c!871524) b!5075493))

(assert (= (and d!1639193 (not c!871524)) b!5075494))

(assert (= (and b!5075494 (not res!2160983)) b!5075495))

(declare-fun m!6124206 () Bool)

(assert (=> b!5075493 m!6124206))

(declare-fun m!6124208 () Bool)

(assert (=> b!5075495 m!6124208))

(assert (=> b!5075089 d!1639193))

(declare-fun d!1639195 () Bool)

(declare-fun c!871525 () Bool)

(assert (=> d!1639195 (= c!871525 ((_ is Node!15576) (right!43164 (right!43164 (left!42834 xs!286)))))))

(declare-fun e!3166567 () Bool)

(assert (=> d!1639195 (= (inv!77621 (right!43164 (right!43164 (left!42834 xs!286)))) e!3166567)))

(declare-fun b!5075496 () Bool)

(assert (=> b!5075496 (= e!3166567 (inv!77625 (right!43164 (right!43164 (left!42834 xs!286)))))))

(declare-fun b!5075497 () Bool)

(declare-fun e!3166568 () Bool)

(assert (=> b!5075497 (= e!3166567 e!3166568)))

(declare-fun res!2160984 () Bool)

(assert (=> b!5075497 (= res!2160984 (not ((_ is Leaf!25869) (right!43164 (right!43164 (left!42834 xs!286))))))))

(assert (=> b!5075497 (=> res!2160984 e!3166568)))

(declare-fun b!5075498 () Bool)

(assert (=> b!5075498 (= e!3166568 (inv!77626 (right!43164 (right!43164 (left!42834 xs!286)))))))

(assert (= (and d!1639195 c!871525) b!5075496))

(assert (= (and d!1639195 (not c!871525)) b!5075497))

(assert (= (and b!5075497 (not res!2160984)) b!5075498))

(declare-fun m!6124210 () Bool)

(assert (=> b!5075496 m!6124210))

(declare-fun m!6124212 () Bool)

(assert (=> b!5075498 m!6124212))

(assert (=> b!5075089 d!1639195))

(declare-fun d!1639197 () Bool)

(assert (=> d!1639197 (= (list!19014 (xs!18936 (++!12801 xs!286 (left!42834 ys!41)))) (innerList!15664 (xs!18936 (++!12801 xs!286 (left!42834 ys!41)))))))

(assert (=> b!5074881 d!1639197))

(declare-fun d!1639199 () Bool)

(declare-fun lt!2090128 () Int)

(assert (=> d!1639199 (>= lt!2090128 0)))

(declare-fun e!3166569 () Int)

(assert (=> d!1639199 (= lt!2090128 e!3166569)))

(declare-fun c!871526 () Bool)

(assert (=> d!1639199 (= c!871526 ((_ is Nil!58446) lt!2090048))))

(assert (=> d!1639199 (= (size!39099 lt!2090048) lt!2090128)))

(declare-fun b!5075499 () Bool)

(assert (=> b!5075499 (= e!3166569 0)))

(declare-fun b!5075500 () Bool)

(assert (=> b!5075500 (= e!3166569 (+ 1 (size!39099 (t!371357 lt!2090048))))))

(assert (= (and d!1639199 c!871526) b!5075499))

(assert (= (and d!1639199 (not c!871526)) b!5075500))

(declare-fun m!6124214 () Bool)

(assert (=> b!5075500 m!6124214))

(assert (=> b!5075022 d!1639199))

(assert (=> b!5075022 d!1638793))

(declare-fun d!1639201 () Bool)

(declare-fun lt!2090129 () Int)

(assert (=> d!1639201 (>= lt!2090129 0)))

(declare-fun e!3166570 () Int)

(assert (=> d!1639201 (= lt!2090129 e!3166570)))

(declare-fun c!871527 () Bool)

(assert (=> d!1639201 (= c!871527 ((_ is Nil!58446) (list!19013 (left!42834 ys!41))))))

(assert (=> d!1639201 (= (size!39099 (list!19013 (left!42834 ys!41))) lt!2090129)))

(declare-fun b!5075501 () Bool)

(assert (=> b!5075501 (= e!3166570 0)))

(declare-fun b!5075502 () Bool)

(assert (=> b!5075502 (= e!3166570 (+ 1 (size!39099 (t!371357 (list!19013 (left!42834 ys!41))))))))

(assert (= (and d!1639201 c!871527) b!5075501))

(assert (= (and d!1639201 (not c!871527)) b!5075502))

(declare-fun m!6124216 () Bool)

(assert (=> b!5075502 m!6124216))

(assert (=> b!5075022 d!1639201))

(assert (=> d!1638631 d!1638927))

(assert (=> d!1638631 d!1638929))

(declare-fun b!5075506 () Bool)

(declare-fun lt!2090130 () List!58570)

(declare-fun e!3166572 () Bool)

(assert (=> b!5075506 (= e!3166572 (or (not (= (++!12800 (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 ys!41)) Nil!58446)) (= lt!2090130 (list!19013 (left!42834 (right!43164 xs!286))))))))

(declare-fun b!5075504 () Bool)

(declare-fun e!3166571 () List!58570)

(assert (=> b!5075504 (= e!3166571 (Cons!58446 (h!64894 (list!19013 (left!42834 (right!43164 xs!286)))) (++!12800 (t!371357 (list!19013 (left!42834 (right!43164 xs!286)))) (++!12800 (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 ys!41)))))))

(declare-fun d!1639203 () Bool)

(assert (=> d!1639203 e!3166572))

(declare-fun res!2160986 () Bool)

(assert (=> d!1639203 (=> (not res!2160986) (not e!3166572))))

(assert (=> d!1639203 (= res!2160986 (= (content!10423 lt!2090130) ((_ map or) (content!10423 (list!19013 (left!42834 (right!43164 xs!286)))) (content!10423 (++!12800 (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 ys!41))))))))

(assert (=> d!1639203 (= lt!2090130 e!3166571)))

(declare-fun c!871528 () Bool)

(assert (=> d!1639203 (= c!871528 ((_ is Nil!58446) (list!19013 (left!42834 (right!43164 xs!286)))))))

(assert (=> d!1639203 (= (++!12800 (list!19013 (left!42834 (right!43164 xs!286))) (++!12800 (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 ys!41))) lt!2090130)))

(declare-fun b!5075505 () Bool)

(declare-fun res!2160985 () Bool)

(assert (=> b!5075505 (=> (not res!2160985) (not e!3166572))))

(assert (=> b!5075505 (= res!2160985 (= (size!39099 lt!2090130) (+ (size!39099 (list!19013 (left!42834 (right!43164 xs!286)))) (size!39099 (++!12800 (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 ys!41))))))))

(declare-fun b!5075503 () Bool)

(assert (=> b!5075503 (= e!3166571 (++!12800 (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 ys!41)))))

(assert (= (and d!1639203 c!871528) b!5075503))

(assert (= (and d!1639203 (not c!871528)) b!5075504))

(assert (= (and d!1639203 res!2160986) b!5075505))

(assert (= (and b!5075505 res!2160985) b!5075506))

(assert (=> b!5075504 m!6122186))

(declare-fun m!6124218 () Bool)

(assert (=> b!5075504 m!6124218))

(declare-fun m!6124220 () Bool)

(assert (=> d!1639203 m!6124220))

(assert (=> d!1639203 m!6122168))

(assert (=> d!1639203 m!6123618))

(assert (=> d!1639203 m!6122186))

(declare-fun m!6124222 () Bool)

(assert (=> d!1639203 m!6124222))

(declare-fun m!6124224 () Bool)

(assert (=> b!5075505 m!6124224))

(assert (=> b!5075505 m!6122168))

(assert (=> b!5075505 m!6123624))

(assert (=> b!5075505 m!6122186))

(declare-fun m!6124226 () Bool)

(assert (=> b!5075505 m!6124226))

(assert (=> bm!353584 d!1639203))

(declare-fun d!1639205 () Bool)

(declare-fun lt!2090131 () Int)

(assert (=> d!1639205 (>= lt!2090131 0)))

(declare-fun e!3166573 () Int)

(assert (=> d!1639205 (= lt!2090131 e!3166573)))

(declare-fun c!871529 () Bool)

(assert (=> d!1639205 (= c!871529 ((_ is Nil!58446) (innerList!15664 (xs!18936 (right!43164 xs!286)))))))

(assert (=> d!1639205 (= (size!39099 (innerList!15664 (xs!18936 (right!43164 xs!286)))) lt!2090131)))

(declare-fun b!5075507 () Bool)

(assert (=> b!5075507 (= e!3166573 0)))

(declare-fun b!5075508 () Bool)

(assert (=> b!5075508 (= e!3166573 (+ 1 (size!39099 (t!371357 (innerList!15664 (xs!18936 (right!43164 xs!286)))))))))

(assert (= (and d!1639205 c!871529) b!5075507))

(assert (= (and d!1639205 (not c!871529)) b!5075508))

(declare-fun m!6124228 () Bool)

(assert (=> b!5075508 m!6124228))

(assert (=> d!1638807 d!1639205))

(declare-fun b!5075509 () Bool)

(declare-fun res!2160987 () Bool)

(declare-fun e!3166575 () Bool)

(assert (=> b!5075509 (=> (not res!2160987) (not e!3166575))))

(assert (=> b!5075509 (= res!2160987 (isBalanced!4438 (left!42834 (left!42834 (right!43164 ys!41)))))))

(declare-fun b!5075510 () Bool)

(declare-fun res!2160990 () Bool)

(assert (=> b!5075510 (=> (not res!2160990) (not e!3166575))))

(assert (=> b!5075510 (= res!2160990 (<= (- (height!2153 (left!42834 (left!42834 (right!43164 ys!41)))) (height!2153 (right!43164 (left!42834 (right!43164 ys!41))))) 1))))

(declare-fun d!1639207 () Bool)

(declare-fun res!2160989 () Bool)

(declare-fun e!3166574 () Bool)

(assert (=> d!1639207 (=> res!2160989 e!3166574)))

(assert (=> d!1639207 (= res!2160989 (not ((_ is Node!15576) (left!42834 (right!43164 ys!41)))))))

(assert (=> d!1639207 (= (isBalanced!4438 (left!42834 (right!43164 ys!41))) e!3166574)))

(declare-fun b!5075511 () Bool)

(assert (=> b!5075511 (= e!3166575 (not (isEmpty!31655 (right!43164 (left!42834 (right!43164 ys!41))))))))

(declare-fun b!5075512 () Bool)

(declare-fun res!2160988 () Bool)

(assert (=> b!5075512 (=> (not res!2160988) (not e!3166575))))

(assert (=> b!5075512 (= res!2160988 (not (isEmpty!31655 (left!42834 (left!42834 (right!43164 ys!41))))))))

(declare-fun b!5075513 () Bool)

(assert (=> b!5075513 (= e!3166574 e!3166575)))

(declare-fun res!2160991 () Bool)

(assert (=> b!5075513 (=> (not res!2160991) (not e!3166575))))

(assert (=> b!5075513 (= res!2160991 (<= (- 1) (- (height!2153 (left!42834 (left!42834 (right!43164 ys!41)))) (height!2153 (right!43164 (left!42834 (right!43164 ys!41)))))))))

(declare-fun b!5075514 () Bool)

(declare-fun res!2160992 () Bool)

(assert (=> b!5075514 (=> (not res!2160992) (not e!3166575))))

(assert (=> b!5075514 (= res!2160992 (isBalanced!4438 (right!43164 (left!42834 (right!43164 ys!41)))))))

(assert (= (and d!1639207 (not res!2160989)) b!5075513))

(assert (= (and b!5075513 res!2160991) b!5075510))

(assert (= (and b!5075510 res!2160990) b!5075509))

(assert (= (and b!5075509 res!2160987) b!5075514))

(assert (= (and b!5075514 res!2160992) b!5075512))

(assert (= (and b!5075512 res!2160988) b!5075511))

(declare-fun m!6124230 () Bool)

(assert (=> b!5075512 m!6124230))

(declare-fun m!6124232 () Bool)

(assert (=> b!5075511 m!6124232))

(declare-fun m!6124234 () Bool)

(assert (=> b!5075514 m!6124234))

(assert (=> b!5075513 m!6123778))

(assert (=> b!5075513 m!6123780))

(assert (=> b!5075510 m!6123778))

(assert (=> b!5075510 m!6123780))

(declare-fun m!6124236 () Bool)

(assert (=> b!5075509 m!6124236))

(assert (=> b!5074638 d!1639207))

(declare-fun b!5075517 () Bool)

(declare-fun e!3166577 () List!58570)

(assert (=> b!5075517 (= e!3166577 (list!19014 (xs!18936 lt!2090003)))))

(declare-fun b!5075518 () Bool)

(assert (=> b!5075518 (= e!3166577 (++!12800 (list!19013 (left!42834 lt!2090003)) (list!19013 (right!43164 lt!2090003))))))

(declare-fun b!5075515 () Bool)

(declare-fun e!3166576 () List!58570)

(assert (=> b!5075515 (= e!3166576 Nil!58446)))

(declare-fun d!1639209 () Bool)

(declare-fun c!871530 () Bool)

(assert (=> d!1639209 (= c!871530 ((_ is Empty!15576) lt!2090003))))

(assert (=> d!1639209 (= (list!19013 lt!2090003) e!3166576)))

(declare-fun b!5075516 () Bool)

(assert (=> b!5075516 (= e!3166576 e!3166577)))

(declare-fun c!871531 () Bool)

(assert (=> b!5075516 (= c!871531 ((_ is Leaf!25869) lt!2090003))))

(assert (= (and d!1639209 c!871530) b!5075515))

(assert (= (and d!1639209 (not c!871530)) b!5075516))

(assert (= (and b!5075516 c!871531) b!5075517))

(assert (= (and b!5075516 (not c!871531)) b!5075518))

(declare-fun m!6124238 () Bool)

(assert (=> b!5075517 m!6124238))

(declare-fun m!6124240 () Bool)

(assert (=> b!5075518 m!6124240))

(declare-fun m!6124242 () Bool)

(assert (=> b!5075518 m!6124242))

(assert (=> b!5075518 m!6124240))

(assert (=> b!5075518 m!6124242))

(declare-fun m!6124244 () Bool)

(assert (=> b!5075518 m!6124244))

(assert (=> d!1638621 d!1639209))

(declare-fun lt!2090132 () List!58570)

(declare-fun b!5075522 () Bool)

(declare-fun e!3166579 () Bool)

(assert (=> b!5075522 (= e!3166579 (or (not (= (list!19013 (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41)))))) Nil!58446)) (= lt!2090132 (list!19013 (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41))))))))))))

(declare-fun e!3166578 () List!58570)

(declare-fun b!5075520 () Bool)

(assert (=> b!5075520 (= e!3166578 (Cons!58446 (h!64894 (list!19013 (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41)))))))) (++!12800 (t!371357 (list!19013 (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41)))))))) (list!19013 (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41)))))))))))

(declare-fun d!1639211 () Bool)

(assert (=> d!1639211 e!3166579))

(declare-fun res!2160994 () Bool)

(assert (=> d!1639211 (=> (not res!2160994) (not e!3166579))))

(assert (=> d!1639211 (= res!2160994 (= (content!10423 lt!2090132) ((_ map or) (content!10423 (list!19013 (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41)))))))) (content!10423 (list!19013 (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41))))))))))))

(assert (=> d!1639211 (= lt!2090132 e!3166578)))

(declare-fun c!871532 () Bool)

(assert (=> d!1639211 (= c!871532 ((_ is Nil!58446) (list!19013 (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41)))))))))))

(assert (=> d!1639211 (= (++!12800 (list!19013 (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41))))))) (list!19013 (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41))))))) lt!2090132)))

(declare-fun b!5075521 () Bool)

(declare-fun res!2160993 () Bool)

(assert (=> b!5075521 (=> (not res!2160993) (not e!3166579))))

(assert (=> b!5075521 (= res!2160993 (= (size!39099 lt!2090132) (+ (size!39099 (list!19013 (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41)))))))) (size!39099 (list!19013 (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41))))))))))))

(declare-fun b!5075519 () Bool)

(assert (=> b!5075519 (= e!3166578 (list!19013 (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41)))))))))

(assert (= (and d!1639211 c!871532) b!5075519))

(assert (= (and d!1639211 (not c!871532)) b!5075520))

(assert (= (and d!1639211 res!2160994) b!5075521))

(assert (= (and b!5075521 res!2160993) b!5075522))

(assert (=> b!5075520 m!6122704))

(declare-fun m!6124246 () Bool)

(assert (=> b!5075520 m!6124246))

(declare-fun m!6124248 () Bool)

(assert (=> d!1639211 m!6124248))

(assert (=> d!1639211 m!6122702))

(declare-fun m!6124250 () Bool)

(assert (=> d!1639211 m!6124250))

(assert (=> d!1639211 m!6122704))

(declare-fun m!6124252 () Bool)

(assert (=> d!1639211 m!6124252))

(declare-fun m!6124254 () Bool)

(assert (=> b!5075521 m!6124254))

(assert (=> b!5075521 m!6122702))

(assert (=> b!5075521 m!6124180))

(assert (=> b!5075521 m!6122704))

(assert (=> b!5075521 m!6124178))

(assert (=> d!1638621 d!1639211))

(declare-fun b!5075525 () Bool)

(declare-fun e!3166581 () List!58570)

(assert (=> b!5075525 (= e!3166581 (list!19014 (xs!18936 (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41)))))))))))

(declare-fun b!5075526 () Bool)

(assert (=> b!5075526 (= e!3166581 (++!12800 (list!19013 (left!42834 (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41)))))))) (list!19013 (right!43164 (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41))))))))))))

(declare-fun b!5075523 () Bool)

(declare-fun e!3166580 () List!58570)

(assert (=> b!5075523 (= e!3166580 Nil!58446)))

(declare-fun c!871533 () Bool)

(declare-fun d!1639213 () Bool)

(assert (=> d!1639213 (= c!871533 ((_ is Empty!15576) (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41))))))))))

(assert (=> d!1639213 (= (list!19013 (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41))))))) e!3166580)))

(declare-fun b!5075524 () Bool)

(assert (=> b!5075524 (= e!3166580 e!3166581)))

(declare-fun c!871534 () Bool)

(assert (=> b!5075524 (= c!871534 ((_ is Leaf!25869) (ite c!871276 (ite c!871278 (left!42834 (right!43164 xs!286)) (left!42834 xs!286)) (ite c!871279 call!353494 (ite c!871280 lt!2089976 (right!43164 (left!42834 (left!42834 ys!41))))))))))

(assert (= (and d!1639213 c!871533) b!5075523))

(assert (= (and d!1639213 (not c!871533)) b!5075524))

(assert (= (and b!5075524 c!871534) b!5075525))

(assert (= (and b!5075524 (not c!871534)) b!5075526))

(declare-fun m!6124256 () Bool)

(assert (=> b!5075525 m!6124256))

(declare-fun m!6124258 () Bool)

(assert (=> b!5075526 m!6124258))

(declare-fun m!6124260 () Bool)

(assert (=> b!5075526 m!6124260))

(assert (=> b!5075526 m!6124258))

(assert (=> b!5075526 m!6124260))

(declare-fun m!6124262 () Bool)

(assert (=> b!5075526 m!6124262))

(assert (=> d!1638621 d!1639213))

(declare-fun e!3166583 () List!58570)

(declare-fun b!5075529 () Bool)

(assert (=> b!5075529 (= e!3166583 (list!19014 (xs!18936 (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41))))))))))

(declare-fun b!5075530 () Bool)

(assert (=> b!5075530 (= e!3166583 (++!12800 (list!19013 (left!42834 (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41))))))) (list!19013 (right!43164 (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41)))))))))))

(declare-fun b!5075527 () Bool)

(declare-fun e!3166582 () List!58570)

(assert (=> b!5075527 (= e!3166582 Nil!58446)))

(declare-fun c!871535 () Bool)

(declare-fun d!1639215 () Bool)

(assert (=> d!1639215 (= c!871535 ((_ is Empty!15576) (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41)))))))))

(assert (=> d!1639215 (= (list!19013 (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41)))))) e!3166582)))

(declare-fun b!5075528 () Bool)

(assert (=> b!5075528 (= e!3166582 e!3166583)))

(declare-fun c!871536 () Bool)

(assert (=> b!5075528 (= c!871536 ((_ is Leaf!25869) (ite c!871276 (ite c!871278 lt!2089979 (left!42834 (right!43164 xs!286))) (ite c!871279 (right!43164 (left!42834 ys!41)) (ite c!871280 (right!43164 (left!42834 (left!42834 ys!41))) (right!43164 (left!42834 ys!41)))))))))

(assert (= (and d!1639215 c!871535) b!5075527))

(assert (= (and d!1639215 (not c!871535)) b!5075528))

(assert (= (and b!5075528 c!871536) b!5075529))

(assert (= (and b!5075528 (not c!871536)) b!5075530))

(declare-fun m!6124264 () Bool)

(assert (=> b!5075529 m!6124264))

(declare-fun m!6124266 () Bool)

(assert (=> b!5075530 m!6124266))

(declare-fun m!6124268 () Bool)

(assert (=> b!5075530 m!6124268))

(assert (=> b!5075530 m!6124266))

(assert (=> b!5075530 m!6124268))

(declare-fun m!6124270 () Bool)

(assert (=> b!5075530 m!6124270))

(assert (=> d!1638621 d!1639215))

(declare-fun d!1639217 () Bool)

(declare-fun c!871537 () Bool)

(assert (=> d!1639217 (= c!871537 ((_ is Node!15576) (left!42834 (right!43164 (left!42834 ys!41)))))))

(declare-fun e!3166584 () Bool)

(assert (=> d!1639217 (= (inv!77621 (left!42834 (right!43164 (left!42834 ys!41)))) e!3166584)))

(declare-fun b!5075531 () Bool)

(assert (=> b!5075531 (= e!3166584 (inv!77625 (left!42834 (right!43164 (left!42834 ys!41)))))))

(declare-fun b!5075532 () Bool)

(declare-fun e!3166585 () Bool)

(assert (=> b!5075532 (= e!3166584 e!3166585)))

(declare-fun res!2160995 () Bool)

(assert (=> b!5075532 (= res!2160995 (not ((_ is Leaf!25869) (left!42834 (right!43164 (left!42834 ys!41))))))))

(assert (=> b!5075532 (=> res!2160995 e!3166585)))

(declare-fun b!5075533 () Bool)

(assert (=> b!5075533 (= e!3166585 (inv!77626 (left!42834 (right!43164 (left!42834 ys!41)))))))

(assert (= (and d!1639217 c!871537) b!5075531))

(assert (= (and d!1639217 (not c!871537)) b!5075532))

(assert (= (and b!5075532 (not res!2160995)) b!5075533))

(declare-fun m!6124272 () Bool)

(assert (=> b!5075531 m!6124272))

(declare-fun m!6124274 () Bool)

(assert (=> b!5075533 m!6124274))

(assert (=> b!5075081 d!1639217))

(declare-fun d!1639219 () Bool)

(declare-fun c!871538 () Bool)

(assert (=> d!1639219 (= c!871538 ((_ is Node!15576) (right!43164 (right!43164 (left!42834 ys!41)))))))

(declare-fun e!3166586 () Bool)

(assert (=> d!1639219 (= (inv!77621 (right!43164 (right!43164 (left!42834 ys!41)))) e!3166586)))

(declare-fun b!5075534 () Bool)

(assert (=> b!5075534 (= e!3166586 (inv!77625 (right!43164 (right!43164 (left!42834 ys!41)))))))

(declare-fun b!5075535 () Bool)

(declare-fun e!3166587 () Bool)

(assert (=> b!5075535 (= e!3166586 e!3166587)))

(declare-fun res!2160996 () Bool)

(assert (=> b!5075535 (= res!2160996 (not ((_ is Leaf!25869) (right!43164 (right!43164 (left!42834 ys!41))))))))

(assert (=> b!5075535 (=> res!2160996 e!3166587)))

(declare-fun b!5075536 () Bool)

(assert (=> b!5075536 (= e!3166587 (inv!77626 (right!43164 (right!43164 (left!42834 ys!41)))))))

(assert (= (and d!1639219 c!871538) b!5075534))

(assert (= (and d!1639219 (not c!871538)) b!5075535))

(assert (= (and b!5075535 (not res!2160996)) b!5075536))

(declare-fun m!6124276 () Bool)

(assert (=> b!5075534 m!6124276))

(declare-fun m!6124278 () Bool)

(assert (=> b!5075536 m!6124278))

(assert (=> b!5075081 d!1639219))

(declare-fun d!1639221 () Bool)

(assert (=> d!1639221 (= (height!2153 (ite c!871348 lt!2090008 lt!2090005)) (ite ((_ is Empty!15576) (ite c!871348 lt!2090008 lt!2090005)) 0 (ite ((_ is Leaf!25869) (ite c!871348 lt!2090008 lt!2090005)) 1 (cheight!15787 (ite c!871348 lt!2090008 lt!2090005)))))))

(assert (=> bm!353533 d!1639221))

(declare-fun d!1639223 () Bool)

(declare-fun lt!2090133 () Int)

(assert (=> d!1639223 (>= lt!2090133 0)))

(declare-fun e!3166588 () Int)

(assert (=> d!1639223 (= lt!2090133 e!3166588)))

(declare-fun c!871539 () Bool)

(assert (=> d!1639223 (= c!871539 ((_ is Nil!58446) (innerList!15664 (xs!18936 (right!43164 ys!41)))))))

(assert (=> d!1639223 (= (size!39099 (innerList!15664 (xs!18936 (right!43164 ys!41)))) lt!2090133)))

(declare-fun b!5075537 () Bool)

(assert (=> b!5075537 (= e!3166588 0)))

(declare-fun b!5075538 () Bool)

(assert (=> b!5075538 (= e!3166588 (+ 1 (size!39099 (t!371357 (innerList!15664 (xs!18936 (right!43164 ys!41)))))))))

(assert (= (and d!1639223 c!871539) b!5075537))

(assert (= (and d!1639223 (not c!871539)) b!5075538))

(declare-fun m!6124280 () Bool)

(assert (=> b!5075538 m!6124280))

(assert (=> d!1638519 d!1639223))

(declare-fun e!3166590 () Bool)

(declare-fun b!5075542 () Bool)

(declare-fun lt!2090134 () List!58570)

(assert (=> b!5075542 (= e!3166590 (or (not (= (list!19013 ys!41) Nil!58446)) (= lt!2090134 (t!371357 (t!371357 (list!19013 xs!286))))))))

(declare-fun b!5075540 () Bool)

(declare-fun e!3166589 () List!58570)

(assert (=> b!5075540 (= e!3166589 (Cons!58446 (h!64894 (t!371357 (t!371357 (list!19013 xs!286)))) (++!12800 (t!371357 (t!371357 (t!371357 (list!19013 xs!286)))) (list!19013 ys!41))))))

(declare-fun d!1639225 () Bool)

(assert (=> d!1639225 e!3166590))

(declare-fun res!2160998 () Bool)

(assert (=> d!1639225 (=> (not res!2160998) (not e!3166590))))

(assert (=> d!1639225 (= res!2160998 (= (content!10423 lt!2090134) ((_ map or) (content!10423 (t!371357 (t!371357 (list!19013 xs!286)))) (content!10423 (list!19013 ys!41)))))))

(assert (=> d!1639225 (= lt!2090134 e!3166589)))

(declare-fun c!871540 () Bool)

(assert (=> d!1639225 (= c!871540 ((_ is Nil!58446) (t!371357 (t!371357 (list!19013 xs!286)))))))

(assert (=> d!1639225 (= (++!12800 (t!371357 (t!371357 (list!19013 xs!286))) (list!19013 ys!41)) lt!2090134)))

(declare-fun b!5075541 () Bool)

(declare-fun res!2160997 () Bool)

(assert (=> b!5075541 (=> (not res!2160997) (not e!3166590))))

(assert (=> b!5075541 (= res!2160997 (= (size!39099 lt!2090134) (+ (size!39099 (t!371357 (t!371357 (list!19013 xs!286)))) (size!39099 (list!19013 ys!41)))))))

(declare-fun b!5075539 () Bool)

(assert (=> b!5075539 (= e!3166589 (list!19013 ys!41))))

(assert (= (and d!1639225 c!871540) b!5075539))

(assert (= (and d!1639225 (not c!871540)) b!5075540))

(assert (= (and d!1639225 res!2160998) b!5075541))

(assert (= (and b!5075541 res!2160997) b!5075542))

(assert (=> b!5075540 m!6121980))

(declare-fun m!6124282 () Bool)

(assert (=> b!5075540 m!6124282))

(declare-fun m!6124284 () Bool)

(assert (=> d!1639225 m!6124284))

(assert (=> d!1639225 m!6123598))

(assert (=> d!1639225 m!6121980))

(assert (=> d!1639225 m!6122018))

(declare-fun m!6124286 () Bool)

(assert (=> b!5075541 m!6124286))

(assert (=> b!5075541 m!6124140))

(assert (=> b!5075541 m!6121980))

(assert (=> b!5075541 m!6122024))

(assert (=> b!5074758 d!1639225))

(assert (=> bm!353570 d!1638581))

(assert (=> d!1638757 d!1639035))

(assert (=> d!1638757 d!1638605))

(declare-fun b!5075546 () Bool)

(declare-fun e!3166592 () Bool)

(declare-fun lt!2090135 () List!58570)

(assert (=> b!5075546 (= e!3166592 (or (not (= (list!19013 (right!43164 (left!42834 lt!2089940))) Nil!58446)) (= lt!2090135 (list!19013 (left!42834 (left!42834 lt!2089940))))))))

(declare-fun b!5075544 () Bool)

(declare-fun e!3166591 () List!58570)

(assert (=> b!5075544 (= e!3166591 (Cons!58446 (h!64894 (list!19013 (left!42834 (left!42834 lt!2089940)))) (++!12800 (t!371357 (list!19013 (left!42834 (left!42834 lt!2089940)))) (list!19013 (right!43164 (left!42834 lt!2089940))))))))

(declare-fun d!1639227 () Bool)

(assert (=> d!1639227 e!3166592))

(declare-fun res!2161000 () Bool)

(assert (=> d!1639227 (=> (not res!2161000) (not e!3166592))))

(assert (=> d!1639227 (= res!2161000 (= (content!10423 lt!2090135) ((_ map or) (content!10423 (list!19013 (left!42834 (left!42834 lt!2089940)))) (content!10423 (list!19013 (right!43164 (left!42834 lt!2089940)))))))))

(assert (=> d!1639227 (= lt!2090135 e!3166591)))

(declare-fun c!871541 () Bool)

(assert (=> d!1639227 (= c!871541 ((_ is Nil!58446) (list!19013 (left!42834 (left!42834 lt!2089940)))))))

(assert (=> d!1639227 (= (++!12800 (list!19013 (left!42834 (left!42834 lt!2089940))) (list!19013 (right!43164 (left!42834 lt!2089940)))) lt!2090135)))

(declare-fun b!5075545 () Bool)

(declare-fun res!2160999 () Bool)

(assert (=> b!5075545 (=> (not res!2160999) (not e!3166592))))

(assert (=> b!5075545 (= res!2160999 (= (size!39099 lt!2090135) (+ (size!39099 (list!19013 (left!42834 (left!42834 lt!2089940)))) (size!39099 (list!19013 (right!43164 (left!42834 lt!2089940)))))))))

(declare-fun b!5075543 () Bool)

(assert (=> b!5075543 (= e!3166591 (list!19013 (right!43164 (left!42834 lt!2089940))))))

(assert (= (and d!1639227 c!871541) b!5075543))

(assert (= (and d!1639227 (not c!871541)) b!5075544))

(assert (= (and d!1639227 res!2161000) b!5075545))

(assert (= (and b!5075545 res!2160999) b!5075546))

(assert (=> b!5075544 m!6122936))

(declare-fun m!6124288 () Bool)

(assert (=> b!5075544 m!6124288))

(declare-fun m!6124290 () Bool)

(assert (=> d!1639227 m!6124290))

(assert (=> d!1639227 m!6122932))

(declare-fun m!6124292 () Bool)

(assert (=> d!1639227 m!6124292))

(assert (=> d!1639227 m!6122936))

(declare-fun m!6124294 () Bool)

(assert (=> d!1639227 m!6124294))

(declare-fun m!6124296 () Bool)

(assert (=> b!5075545 m!6124296))

(assert (=> b!5075545 m!6122932))

(declare-fun m!6124298 () Bool)

(assert (=> b!5075545 m!6124298))

(assert (=> b!5075545 m!6122936))

(declare-fun m!6124300 () Bool)

(assert (=> b!5075545 m!6124300))

(assert (=> b!5074890 d!1639227))

(declare-fun b!5075549 () Bool)

(declare-fun e!3166594 () List!58570)

(assert (=> b!5075549 (= e!3166594 (list!19014 (xs!18936 (left!42834 (left!42834 lt!2089940)))))))

(declare-fun b!5075550 () Bool)

(assert (=> b!5075550 (= e!3166594 (++!12800 (list!19013 (left!42834 (left!42834 (left!42834 lt!2089940)))) (list!19013 (right!43164 (left!42834 (left!42834 lt!2089940))))))))

(declare-fun b!5075547 () Bool)

(declare-fun e!3166593 () List!58570)

(assert (=> b!5075547 (= e!3166593 Nil!58446)))

(declare-fun d!1639229 () Bool)

(declare-fun c!871542 () Bool)

(assert (=> d!1639229 (= c!871542 ((_ is Empty!15576) (left!42834 (left!42834 lt!2089940))))))

(assert (=> d!1639229 (= (list!19013 (left!42834 (left!42834 lt!2089940))) e!3166593)))

(declare-fun b!5075548 () Bool)

(assert (=> b!5075548 (= e!3166593 e!3166594)))

(declare-fun c!871543 () Bool)

(assert (=> b!5075548 (= c!871543 ((_ is Leaf!25869) (left!42834 (left!42834 lt!2089940))))))

(assert (= (and d!1639229 c!871542) b!5075547))

(assert (= (and d!1639229 (not c!871542)) b!5075548))

(assert (= (and b!5075548 c!871543) b!5075549))

(assert (= (and b!5075548 (not c!871543)) b!5075550))

(declare-fun m!6124302 () Bool)

(assert (=> b!5075549 m!6124302))

(declare-fun m!6124304 () Bool)

(assert (=> b!5075550 m!6124304))

(declare-fun m!6124306 () Bool)

(assert (=> b!5075550 m!6124306))

(assert (=> b!5075550 m!6124304))

(assert (=> b!5075550 m!6124306))

(declare-fun m!6124308 () Bool)

(assert (=> b!5075550 m!6124308))

(assert (=> b!5074890 d!1639229))

(declare-fun b!5075553 () Bool)

(declare-fun e!3166596 () List!58570)

(assert (=> b!5075553 (= e!3166596 (list!19014 (xs!18936 (right!43164 (left!42834 lt!2089940)))))))

(declare-fun b!5075554 () Bool)

(assert (=> b!5075554 (= e!3166596 (++!12800 (list!19013 (left!42834 (right!43164 (left!42834 lt!2089940)))) (list!19013 (right!43164 (right!43164 (left!42834 lt!2089940))))))))

(declare-fun b!5075551 () Bool)

(declare-fun e!3166595 () List!58570)

(assert (=> b!5075551 (= e!3166595 Nil!58446)))

(declare-fun d!1639231 () Bool)

(declare-fun c!871544 () Bool)

(assert (=> d!1639231 (= c!871544 ((_ is Empty!15576) (right!43164 (left!42834 lt!2089940))))))

(assert (=> d!1639231 (= (list!19013 (right!43164 (left!42834 lt!2089940))) e!3166595)))

(declare-fun b!5075552 () Bool)

(assert (=> b!5075552 (= e!3166595 e!3166596)))

(declare-fun c!871545 () Bool)

(assert (=> b!5075552 (= c!871545 ((_ is Leaf!25869) (right!43164 (left!42834 lt!2089940))))))

(assert (= (and d!1639231 c!871544) b!5075551))

(assert (= (and d!1639231 (not c!871544)) b!5075552))

(assert (= (and b!5075552 c!871545) b!5075553))

(assert (= (and b!5075552 (not c!871545)) b!5075554))

(declare-fun m!6124310 () Bool)

(assert (=> b!5075553 m!6124310))

(declare-fun m!6124312 () Bool)

(assert (=> b!5075554 m!6124312))

(declare-fun m!6124314 () Bool)

(assert (=> b!5075554 m!6124314))

(assert (=> b!5075554 m!6124312))

(assert (=> b!5075554 m!6124314))

(declare-fun m!6124316 () Bool)

(assert (=> b!5075554 m!6124316))

(assert (=> b!5074890 d!1639231))

(declare-fun d!1639233 () Bool)

(assert (=> d!1639233 (= (isEmpty!31656 (list!19013 (left!42834 ys!41))) ((_ is Nil!58446) (list!19013 (left!42834 ys!41))))))

(assert (=> d!1638591 d!1639233))

(assert (=> d!1638591 d!1638601))

(assert (=> d!1638591 d!1639005))

(declare-fun b!5075558 () Bool)

(declare-fun e!3166598 () Bool)

(declare-fun lt!2090136 () List!58570)

(assert (=> b!5075558 (= e!3166598 (or (not (= (list!19013 (right!43164 ys!41)) Nil!58446)) (= lt!2090136 (list!19013 (right!43164 (left!42834 ys!41))))))))

(declare-fun b!5075556 () Bool)

(declare-fun e!3166597 () List!58570)

(assert (=> b!5075556 (= e!3166597 (Cons!58446 (h!64894 (list!19013 (right!43164 (left!42834 ys!41)))) (++!12800 (t!371357 (list!19013 (right!43164 (left!42834 ys!41)))) (list!19013 (right!43164 ys!41)))))))

(declare-fun d!1639235 () Bool)

(assert (=> d!1639235 e!3166598))

(declare-fun res!2161002 () Bool)

(assert (=> d!1639235 (=> (not res!2161002) (not e!3166598))))

(assert (=> d!1639235 (= res!2161002 (= (content!10423 lt!2090136) ((_ map or) (content!10423 (list!19013 (right!43164 (left!42834 ys!41)))) (content!10423 (list!19013 (right!43164 ys!41))))))))

(assert (=> d!1639235 (= lt!2090136 e!3166597)))

(declare-fun c!871546 () Bool)

(assert (=> d!1639235 (= c!871546 ((_ is Nil!58446) (list!19013 (right!43164 (left!42834 ys!41)))))))

(assert (=> d!1639235 (= (++!12800 (list!19013 (right!43164 (left!42834 ys!41))) (list!19013 (right!43164 ys!41))) lt!2090136)))

(declare-fun b!5075557 () Bool)

(declare-fun res!2161001 () Bool)

(assert (=> b!5075557 (=> (not res!2161001) (not e!3166598))))

(assert (=> b!5075557 (= res!2161001 (= (size!39099 lt!2090136) (+ (size!39099 (list!19013 (right!43164 (left!42834 ys!41)))) (size!39099 (list!19013 (right!43164 ys!41))))))))

(declare-fun b!5075555 () Bool)

(assert (=> b!5075555 (= e!3166597 (list!19013 (right!43164 ys!41)))))

(assert (= (and d!1639235 c!871546) b!5075555))

(assert (= (and d!1639235 (not c!871546)) b!5075556))

(assert (= (and d!1639235 res!2161002) b!5075557))

(assert (= (and b!5075557 res!2161001) b!5075558))

(assert (=> b!5075556 m!6122038))

(declare-fun m!6124318 () Bool)

(assert (=> b!5075556 m!6124318))

(declare-fun m!6124320 () Bool)

(assert (=> d!1639235 m!6124320))

(assert (=> d!1639235 m!6122176))

(assert (=> d!1639235 m!6123538))

(assert (=> d!1639235 m!6122038))

(assert (=> d!1639235 m!6122638))

(declare-fun m!6124322 () Bool)

(assert (=> b!5075557 m!6124322))

(assert (=> b!5075557 m!6122176))

(assert (=> b!5075557 m!6123544))

(assert (=> b!5075557 m!6122038))

(assert (=> b!5075557 m!6122646))

(assert (=> bm!353568 d!1639235))

(declare-fun bm!353617 () Bool)

(declare-fun call!353625 () List!58570)

(declare-fun call!353624 () List!58570)

(assert (=> bm!353617 (= call!353625 (++!12800 call!353624 (list!19013 (right!43164 (left!42834 ys!41)))))))

(declare-fun bm!353618 () Bool)

(assert (=> bm!353618 (= call!353624 (++!12800 (t!371357 (list!19013 xs!286)) (list!19013 (left!42834 (left!42834 ys!41)))))))

(declare-fun d!1639237 () Bool)

(declare-fun e!3166599 () Bool)

(assert (=> d!1639237 e!3166599))

(declare-fun c!871547 () Bool)

(assert (=> d!1639237 (= c!871547 ((_ is Nil!58446) (t!371357 (list!19013 xs!286))))))

(assert (=> d!1639237 (= (appendAssoc!308 (t!371357 (list!19013 xs!286)) (list!19013 (left!42834 (left!42834 ys!41))) (list!19013 (right!43164 (left!42834 ys!41)))) true)))

(declare-fun bm!353619 () Bool)

(declare-fun call!353623 () List!58570)

(declare-fun call!353622 () List!58570)

(assert (=> bm!353619 (= call!353623 (++!12800 (t!371357 (list!19013 xs!286)) call!353622))))

(declare-fun b!5075559 () Bool)

(assert (=> b!5075559 (= e!3166599 (= call!353625 call!353623))))

(declare-fun lt!2090137 () Bool)

(assert (=> b!5075559 (= lt!2090137 (appendAssoc!308 (t!371357 (t!371357 (list!19013 xs!286))) (list!19013 (left!42834 (left!42834 ys!41))) (list!19013 (right!43164 (left!42834 ys!41)))))))

(declare-fun b!5075560 () Bool)

(assert (=> b!5075560 (= e!3166599 (= call!353625 call!353623))))

(declare-fun bm!353620 () Bool)

(assert (=> bm!353620 (= call!353622 (++!12800 (list!19013 (left!42834 (left!42834 ys!41))) (list!19013 (right!43164 (left!42834 ys!41)))))))

(assert (= (and d!1639237 c!871547) b!5075560))

(assert (= (and d!1639237 (not c!871547)) b!5075559))

(assert (= (or b!5075560 b!5075559) bm!353618))

(assert (= (or b!5075560 b!5075559) bm!353620))

(assert (= (or b!5075560 b!5075559) bm!353619))

(assert (= (or b!5075560 b!5075559) bm!353617))

(assert (=> b!5075559 m!6122180))

(assert (=> b!5075559 m!6122176))

(declare-fun m!6124324 () Bool)

(assert (=> b!5075559 m!6124324))

(assert (=> bm!353618 m!6122180))

(assert (=> bm!353618 m!6123060))

(assert (=> bm!353617 m!6122176))

(declare-fun m!6124326 () Bool)

(assert (=> bm!353617 m!6124326))

(assert (=> bm!353620 m!6122180))

(assert (=> bm!353620 m!6122176))

(assert (=> bm!353620 m!6122414))

(declare-fun m!6124328 () Bool)

(assert (=> bm!353619 m!6124328))

(assert (=> b!5074620 d!1639237))

(declare-fun b!5075561 () Bool)

(declare-fun res!2161003 () Bool)

(declare-fun e!3166601 () Bool)

(assert (=> b!5075561 (=> (not res!2161003) (not e!3166601))))

(assert (=> b!5075561 (= res!2161003 (isBalanced!4438 (left!42834 (left!42834 (left!42834 xs!286)))))))

(declare-fun b!5075562 () Bool)

(declare-fun res!2161006 () Bool)

(assert (=> b!5075562 (=> (not res!2161006) (not e!3166601))))

(assert (=> b!5075562 (= res!2161006 (<= (- (height!2153 (left!42834 (left!42834 (left!42834 xs!286)))) (height!2153 (right!43164 (left!42834 (left!42834 xs!286))))) 1))))

(declare-fun d!1639239 () Bool)

(declare-fun res!2161005 () Bool)

(declare-fun e!3166600 () Bool)

(assert (=> d!1639239 (=> res!2161005 e!3166600)))

(assert (=> d!1639239 (= res!2161005 (not ((_ is Node!15576) (left!42834 (left!42834 xs!286)))))))

(assert (=> d!1639239 (= (isBalanced!4438 (left!42834 (left!42834 xs!286))) e!3166600)))

(declare-fun b!5075563 () Bool)

(assert (=> b!5075563 (= e!3166601 (not (isEmpty!31655 (right!43164 (left!42834 (left!42834 xs!286))))))))

(declare-fun b!5075564 () Bool)

(declare-fun res!2161004 () Bool)

(assert (=> b!5075564 (=> (not res!2161004) (not e!3166601))))

(assert (=> b!5075564 (= res!2161004 (not (isEmpty!31655 (left!42834 (left!42834 (left!42834 xs!286))))))))

(declare-fun b!5075565 () Bool)

(assert (=> b!5075565 (= e!3166600 e!3166601)))

(declare-fun res!2161007 () Bool)

(assert (=> b!5075565 (=> (not res!2161007) (not e!3166601))))

(assert (=> b!5075565 (= res!2161007 (<= (- 1) (- (height!2153 (left!42834 (left!42834 (left!42834 xs!286)))) (height!2153 (right!43164 (left!42834 (left!42834 xs!286)))))))))

(declare-fun b!5075566 () Bool)

(declare-fun res!2161008 () Bool)

(assert (=> b!5075566 (=> (not res!2161008) (not e!3166601))))

(assert (=> b!5075566 (= res!2161008 (isBalanced!4438 (right!43164 (left!42834 (left!42834 xs!286)))))))

(assert (= (and d!1639239 (not res!2161005)) b!5075565))

(assert (= (and b!5075565 res!2161007) b!5075562))

(assert (= (and b!5075562 res!2161006) b!5075561))

(assert (= (and b!5075561 res!2161003) b!5075566))

(assert (= (and b!5075566 res!2161008) b!5075564))

(assert (= (and b!5075564 res!2161004) b!5075563))

(declare-fun m!6124330 () Bool)

(assert (=> b!5075564 m!6124330))

(declare-fun m!6124332 () Bool)

(assert (=> b!5075563 m!6124332))

(declare-fun m!6124334 () Bool)

(assert (=> b!5075566 m!6124334))

(declare-fun m!6124336 () Bool)

(assert (=> b!5075565 m!6124336))

(declare-fun m!6124338 () Bool)

(assert (=> b!5075565 m!6124338))

(assert (=> b!5075562 m!6124336))

(assert (=> b!5075562 m!6124338))

(declare-fun m!6124340 () Bool)

(assert (=> b!5075561 m!6124340))

(assert (=> b!5074700 d!1639239))

(declare-fun d!1639241 () Bool)

(declare-fun c!871548 () Bool)

(assert (=> d!1639241 (= c!871548 ((_ is Nil!58446) lt!2090027))))

(declare-fun e!3166602 () (InoxSet T!105202))

(assert (=> d!1639241 (= (content!10423 lt!2090027) e!3166602)))

(declare-fun b!5075567 () Bool)

(assert (=> b!5075567 (= e!3166602 ((as const (Array T!105202 Bool)) false))))

(declare-fun b!5075568 () Bool)

(assert (=> b!5075568 (= e!3166602 ((_ map or) (store ((as const (Array T!105202 Bool)) false) (h!64894 lt!2090027) true) (content!10423 (t!371357 lt!2090027))))))

(assert (= (and d!1639241 c!871548) b!5075567))

(assert (= (and d!1639241 (not c!871548)) b!5075568))

(declare-fun m!6124342 () Bool)

(assert (=> b!5075568 m!6124342))

(declare-fun m!6124344 () Bool)

(assert (=> b!5075568 m!6124344))

(assert (=> d!1638717 d!1639241))

(assert (=> d!1638717 d!1638817))

(declare-fun d!1639243 () Bool)

(declare-fun c!871549 () Bool)

(assert (=> d!1639243 (= c!871549 ((_ is Nil!58446) (list!19013 (left!42834 (left!42834 ys!41)))))))

(declare-fun e!3166603 () (InoxSet T!105202))

(assert (=> d!1639243 (= (content!10423 (list!19013 (left!42834 (left!42834 ys!41)))) e!3166603)))

(declare-fun b!5075569 () Bool)

(assert (=> b!5075569 (= e!3166603 ((as const (Array T!105202 Bool)) false))))

(declare-fun b!5075570 () Bool)

(assert (=> b!5075570 (= e!3166603 ((_ map or) (store ((as const (Array T!105202 Bool)) false) (h!64894 (list!19013 (left!42834 (left!42834 ys!41)))) true) (content!10423 (t!371357 (list!19013 (left!42834 (left!42834 ys!41)))))))))

(assert (= (and d!1639243 c!871549) b!5075569))

(assert (= (and d!1639243 (not c!871549)) b!5075570))

(declare-fun m!6124346 () Bool)

(assert (=> b!5075570 m!6124346))

(declare-fun m!6124348 () Bool)

(assert (=> b!5075570 m!6124348))

(assert (=> d!1638717 d!1639243))

(declare-fun b!5075571 () Bool)

(declare-fun res!2161009 () Bool)

(declare-fun e!3166605 () Bool)

(assert (=> b!5075571 (=> (not res!2161009) (not e!3166605))))

(assert (=> b!5075571 (= res!2161009 (isBalanced!4438 (left!42834 (right!43164 (right!43164 xs!286)))))))

(declare-fun b!5075572 () Bool)

(declare-fun res!2161012 () Bool)

(assert (=> b!5075572 (=> (not res!2161012) (not e!3166605))))

(assert (=> b!5075572 (= res!2161012 (<= (- (height!2153 (left!42834 (right!43164 (right!43164 xs!286)))) (height!2153 (right!43164 (right!43164 (right!43164 xs!286))))) 1))))

(declare-fun d!1639245 () Bool)

(declare-fun res!2161011 () Bool)

(declare-fun e!3166604 () Bool)

(assert (=> d!1639245 (=> res!2161011 e!3166604)))

(assert (=> d!1639245 (= res!2161011 (not ((_ is Node!15576) (right!43164 (right!43164 xs!286)))))))

(assert (=> d!1639245 (= (isBalanced!4438 (right!43164 (right!43164 xs!286))) e!3166604)))

(declare-fun b!5075573 () Bool)

(assert (=> b!5075573 (= e!3166605 (not (isEmpty!31655 (right!43164 (right!43164 (right!43164 xs!286))))))))

(declare-fun b!5075574 () Bool)

(declare-fun res!2161010 () Bool)

(assert (=> b!5075574 (=> (not res!2161010) (not e!3166605))))

(assert (=> b!5075574 (= res!2161010 (not (isEmpty!31655 (left!42834 (right!43164 (right!43164 xs!286))))))))

(declare-fun b!5075575 () Bool)

(assert (=> b!5075575 (= e!3166604 e!3166605)))

(declare-fun res!2161013 () Bool)

(assert (=> b!5075575 (=> (not res!2161013) (not e!3166605))))

(assert (=> b!5075575 (= res!2161013 (<= (- 1) (- (height!2153 (left!42834 (right!43164 (right!43164 xs!286)))) (height!2153 (right!43164 (right!43164 (right!43164 xs!286)))))))))

(declare-fun b!5075576 () Bool)

(declare-fun res!2161014 () Bool)

(assert (=> b!5075576 (=> (not res!2161014) (not e!3166605))))

(assert (=> b!5075576 (= res!2161014 (isBalanced!4438 (right!43164 (right!43164 (right!43164 xs!286)))))))

(assert (= (and d!1639245 (not res!2161011)) b!5075575))

(assert (= (and b!5075575 res!2161013) b!5075572))

(assert (= (and b!5075572 res!2161012) b!5075571))

(assert (= (and b!5075571 res!2161009) b!5075576))

(assert (= (and b!5075576 res!2161014) b!5075574))

(assert (= (and b!5075574 res!2161010) b!5075573))

(declare-fun m!6124350 () Bool)

(assert (=> b!5075574 m!6124350))

(declare-fun m!6124352 () Bool)

(assert (=> b!5075573 m!6124352))

(declare-fun m!6124354 () Bool)

(assert (=> b!5075576 m!6124354))

(declare-fun m!6124356 () Bool)

(assert (=> b!5075575 m!6124356))

(declare-fun m!6124358 () Bool)

(assert (=> b!5075575 m!6124358))

(assert (=> b!5075572 m!6124356))

(assert (=> b!5075572 m!6124358))

(declare-fun m!6124360 () Bool)

(assert (=> b!5075571 m!6124360))

(assert (=> b!5074900 d!1639245))

(declare-fun b!5075580 () Bool)

(declare-fun e!3166607 () Bool)

(declare-fun lt!2090138 () List!58570)

(assert (=> b!5075580 (= e!3166607 (or (not (= (list!19013 (right!43164 (right!43164 ys!41))) Nil!58446)) (= lt!2090138 (list!19013 (left!42834 (right!43164 ys!41))))))))

(declare-fun b!5075578 () Bool)

(declare-fun e!3166606 () List!58570)

(assert (=> b!5075578 (= e!3166606 (Cons!58446 (h!64894 (list!19013 (left!42834 (right!43164 ys!41)))) (++!12800 (t!371357 (list!19013 (left!42834 (right!43164 ys!41)))) (list!19013 (right!43164 (right!43164 ys!41))))))))

(declare-fun d!1639247 () Bool)

(assert (=> d!1639247 e!3166607))

(declare-fun res!2161016 () Bool)

(assert (=> d!1639247 (=> (not res!2161016) (not e!3166607))))

(assert (=> d!1639247 (= res!2161016 (= (content!10423 lt!2090138) ((_ map or) (content!10423 (list!19013 (left!42834 (right!43164 ys!41)))) (content!10423 (list!19013 (right!43164 (right!43164 ys!41)))))))))

(assert (=> d!1639247 (= lt!2090138 e!3166606)))

(declare-fun c!871550 () Bool)

(assert (=> d!1639247 (= c!871550 ((_ is Nil!58446) (list!19013 (left!42834 (right!43164 ys!41)))))))

(assert (=> d!1639247 (= (++!12800 (list!19013 (left!42834 (right!43164 ys!41))) (list!19013 (right!43164 (right!43164 ys!41)))) lt!2090138)))

(declare-fun b!5075579 () Bool)

(declare-fun res!2161015 () Bool)

(assert (=> b!5075579 (=> (not res!2161015) (not e!3166607))))

(assert (=> b!5075579 (= res!2161015 (= (size!39099 lt!2090138) (+ (size!39099 (list!19013 (left!42834 (right!43164 ys!41)))) (size!39099 (list!19013 (right!43164 (right!43164 ys!41)))))))))

(declare-fun b!5075577 () Bool)

(assert (=> b!5075577 (= e!3166606 (list!19013 (right!43164 (right!43164 ys!41))))))

(assert (= (and d!1639247 c!871550) b!5075577))

(assert (= (and d!1639247 (not c!871550)) b!5075578))

(assert (= (and d!1639247 res!2161016) b!5075579))

(assert (= (and b!5075579 res!2161015) b!5075580))

(assert (=> b!5075578 m!6122612))

(declare-fun m!6124362 () Bool)

(assert (=> b!5075578 m!6124362))

(declare-fun m!6124364 () Bool)

(assert (=> d!1639247 m!6124364))

(assert (=> d!1639247 m!6122610))

(declare-fun m!6124366 () Bool)

(assert (=> d!1639247 m!6124366))

(assert (=> d!1639247 m!6122612))

(declare-fun m!6124368 () Bool)

(assert (=> d!1639247 m!6124368))

(declare-fun m!6124370 () Bool)

(assert (=> b!5075579 m!6124370))

(assert (=> b!5075579 m!6122610))

(declare-fun m!6124372 () Bool)

(assert (=> b!5075579 m!6124372))

(assert (=> b!5075579 m!6122612))

(declare-fun m!6124374 () Bool)

(assert (=> b!5075579 m!6124374))

(assert (=> b!5074721 d!1639247))

(declare-fun b!5075583 () Bool)

(declare-fun e!3166609 () List!58570)

(assert (=> b!5075583 (= e!3166609 (list!19014 (xs!18936 (left!42834 (right!43164 ys!41)))))))

(declare-fun b!5075584 () Bool)

(assert (=> b!5075584 (= e!3166609 (++!12800 (list!19013 (left!42834 (left!42834 (right!43164 ys!41)))) (list!19013 (right!43164 (left!42834 (right!43164 ys!41))))))))

(declare-fun b!5075581 () Bool)

(declare-fun e!3166608 () List!58570)

(assert (=> b!5075581 (= e!3166608 Nil!58446)))

(declare-fun d!1639249 () Bool)

(declare-fun c!871551 () Bool)

(assert (=> d!1639249 (= c!871551 ((_ is Empty!15576) (left!42834 (right!43164 ys!41))))))

(assert (=> d!1639249 (= (list!19013 (left!42834 (right!43164 ys!41))) e!3166608)))

(declare-fun b!5075582 () Bool)

(assert (=> b!5075582 (= e!3166608 e!3166609)))

(declare-fun c!871552 () Bool)

(assert (=> b!5075582 (= c!871552 ((_ is Leaf!25869) (left!42834 (right!43164 ys!41))))))

(assert (= (and d!1639249 c!871551) b!5075581))

(assert (= (and d!1639249 (not c!871551)) b!5075582))

(assert (= (and b!5075582 c!871552) b!5075583))

(assert (= (and b!5075582 (not c!871552)) b!5075584))

(declare-fun m!6124376 () Bool)

(assert (=> b!5075583 m!6124376))

(declare-fun m!6124378 () Bool)

(assert (=> b!5075584 m!6124378))

(declare-fun m!6124380 () Bool)

(assert (=> b!5075584 m!6124380))

(assert (=> b!5075584 m!6124378))

(assert (=> b!5075584 m!6124380))

(declare-fun m!6124382 () Bool)

(assert (=> b!5075584 m!6124382))

(assert (=> b!5074721 d!1639249))

(declare-fun b!5075587 () Bool)

(declare-fun e!3166611 () List!58570)

(assert (=> b!5075587 (= e!3166611 (list!19014 (xs!18936 (right!43164 (right!43164 ys!41)))))))

(declare-fun b!5075588 () Bool)

(assert (=> b!5075588 (= e!3166611 (++!12800 (list!19013 (left!42834 (right!43164 (right!43164 ys!41)))) (list!19013 (right!43164 (right!43164 (right!43164 ys!41))))))))

(declare-fun b!5075585 () Bool)

(declare-fun e!3166610 () List!58570)

(assert (=> b!5075585 (= e!3166610 Nil!58446)))

(declare-fun d!1639251 () Bool)

(declare-fun c!871553 () Bool)

(assert (=> d!1639251 (= c!871553 ((_ is Empty!15576) (right!43164 (right!43164 ys!41))))))

(assert (=> d!1639251 (= (list!19013 (right!43164 (right!43164 ys!41))) e!3166610)))

(declare-fun b!5075586 () Bool)

(assert (=> b!5075586 (= e!3166610 e!3166611)))

(declare-fun c!871554 () Bool)

(assert (=> b!5075586 (= c!871554 ((_ is Leaf!25869) (right!43164 (right!43164 ys!41))))))

(assert (= (and d!1639251 c!871553) b!5075585))

(assert (= (and d!1639251 (not c!871553)) b!5075586))

(assert (= (and b!5075586 c!871554) b!5075587))

(assert (= (and b!5075586 (not c!871554)) b!5075588))

(assert (=> b!5075587 m!6124078))

(declare-fun m!6124384 () Bool)

(assert (=> b!5075588 m!6124384))

(declare-fun m!6124386 () Bool)

(assert (=> b!5075588 m!6124386))

(assert (=> b!5075588 m!6124384))

(assert (=> b!5075588 m!6124386))

(declare-fun m!6124388 () Bool)

(assert (=> b!5075588 m!6124388))

(assert (=> b!5074721 d!1639251))

(declare-fun b!5075591 () Bool)

(declare-fun e!3166613 () List!58570)

(assert (=> b!5075591 (= e!3166613 (list!19014 (xs!18936 lt!2090007)))))

(declare-fun b!5075592 () Bool)

(assert (=> b!5075592 (= e!3166613 (++!12800 (list!19013 (left!42834 lt!2090007)) (list!19013 (right!43164 lt!2090007))))))

(declare-fun b!5075589 () Bool)

(declare-fun e!3166612 () List!58570)

(assert (=> b!5075589 (= e!3166612 Nil!58446)))

(declare-fun d!1639253 () Bool)

(declare-fun c!871555 () Bool)

(assert (=> d!1639253 (= c!871555 ((_ is Empty!15576) lt!2090007))))

(assert (=> d!1639253 (= (list!19013 lt!2090007) e!3166612)))

(declare-fun b!5075590 () Bool)

(assert (=> b!5075590 (= e!3166612 e!3166613)))

(declare-fun c!871556 () Bool)

(assert (=> b!5075590 (= c!871556 ((_ is Leaf!25869) lt!2090007))))

(assert (= (and d!1639253 c!871555) b!5075589))

(assert (= (and d!1639253 (not c!871555)) b!5075590))

(assert (= (and b!5075590 c!871556) b!5075591))

(assert (= (and b!5075590 (not c!871556)) b!5075592))

(declare-fun m!6124390 () Bool)

(assert (=> b!5075591 m!6124390))

(declare-fun m!6124392 () Bool)

(assert (=> b!5075592 m!6124392))

(declare-fun m!6124394 () Bool)

(assert (=> b!5075592 m!6124394))

(assert (=> b!5075592 m!6124392))

(assert (=> b!5075592 m!6124394))

(declare-fun m!6124396 () Bool)

(assert (=> b!5075592 m!6124396))

(assert (=> b!5074804 d!1639253))

(declare-fun lt!2090139 () List!58570)

(declare-fun b!5075596 () Bool)

(declare-fun e!3166615 () Bool)

(assert (=> b!5075596 (= e!3166615 (or (not (= (list!19013 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) Nil!58446)) (= lt!2090139 (list!19013 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))))))

(declare-fun b!5075594 () Bool)

(declare-fun e!3166614 () List!58570)

(assert (=> b!5075594 (= e!3166614 (Cons!58446 (h!64894 (list!19013 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (++!12800 (t!371357 (list!19013 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (list!19013 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))))

(declare-fun d!1639255 () Bool)

(assert (=> d!1639255 e!3166615))

(declare-fun res!2161018 () Bool)

(assert (=> d!1639255 (=> (not res!2161018) (not e!3166615))))

(assert (=> d!1639255 (= res!2161018 (= (content!10423 lt!2090139) ((_ map or) (content!10423 (list!19013 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (content!10423 (list!19013 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))))))))

(assert (=> d!1639255 (= lt!2090139 e!3166614)))

(declare-fun c!871557 () Bool)

(assert (=> d!1639255 (= c!871557 ((_ is Nil!58446) (list!19013 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))))))

(assert (=> d!1639255 (= (++!12800 (list!19013 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (list!19013 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))) lt!2090139)))

(declare-fun b!5075595 () Bool)

(declare-fun res!2161017 () Bool)

(assert (=> b!5075595 (=> (not res!2161017) (not e!3166615))))

(assert (=> b!5075595 (= res!2161017 (= (size!39099 lt!2090139) (+ (size!39099 (list!19013 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (size!39099 (list!19013 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))))))))

(declare-fun b!5075593 () Bool)

(assert (=> b!5075593 (= e!3166614 (list!19013 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))

(assert (= (and d!1639255 c!871557) b!5075593))

(assert (= (and d!1639255 (not c!871557)) b!5075594))

(assert (= (and d!1639255 res!2161018) b!5075595))

(assert (= (and b!5075595 res!2161017) b!5075596))

(assert (=> b!5075594 m!6122822))

(declare-fun m!6124398 () Bool)

(assert (=> b!5075594 m!6124398))

(declare-fun m!6124400 () Bool)

(assert (=> d!1639255 m!6124400))

(assert (=> d!1639255 m!6122820))

(declare-fun m!6124402 () Bool)

(assert (=> d!1639255 m!6124402))

(assert (=> d!1639255 m!6122822))

(declare-fun m!6124404 () Bool)

(assert (=> d!1639255 m!6124404))

(declare-fun m!6124406 () Bool)

(assert (=> b!5075595 m!6124406))

(assert (=> b!5075595 m!6122820))

(declare-fun m!6124408 () Bool)

(assert (=> b!5075595 m!6124408))

(assert (=> b!5075595 m!6122822))

(declare-fun m!6124410 () Bool)

(assert (=> b!5075595 m!6124410))

(assert (=> b!5074804 d!1639255))

(declare-fun e!3166617 () List!58570)

(declare-fun b!5075599 () Bool)

(assert (=> b!5075599 (= e!3166617 (list!19014 (xs!18936 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))))))

(declare-fun b!5075600 () Bool)

(assert (=> b!5075600 (= e!3166617 (++!12800 (list!19013 (left!42834 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (list!19013 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))))))

(declare-fun b!5075597 () Bool)

(declare-fun e!3166616 () List!58570)

(assert (=> b!5075597 (= e!3166616 Nil!58446)))

(declare-fun d!1639257 () Bool)

(declare-fun c!871558 () Bool)

(assert (=> d!1639257 (= c!871558 ((_ is Empty!15576) (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))))

(assert (=> d!1639257 (= (list!19013 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) e!3166616)))

(declare-fun b!5075598 () Bool)

(assert (=> b!5075598 (= e!3166616 e!3166617)))

(declare-fun c!871559 () Bool)

(assert (=> b!5075598 (= c!871559 ((_ is Leaf!25869) (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))))

(assert (= (and d!1639257 c!871558) b!5075597))

(assert (= (and d!1639257 (not c!871558)) b!5075598))

(assert (= (and b!5075598 c!871559) b!5075599))

(assert (= (and b!5075598 (not c!871559)) b!5075600))

(declare-fun m!6124412 () Bool)

(assert (=> b!5075599 m!6124412))

(assert (=> b!5075600 m!6124052))

(assert (=> b!5075600 m!6124054))

(assert (=> b!5075600 m!6124052))

(assert (=> b!5075600 m!6124054))

(declare-fun m!6124414 () Bool)

(assert (=> b!5075600 m!6124414))

(assert (=> b!5074804 d!1639257))

(declare-fun e!3166619 () List!58570)

(declare-fun b!5075603 () Bool)

(assert (=> b!5075603 (= e!3166619 (list!19014 (xs!18936 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))))))

(declare-fun b!5075604 () Bool)

(assert (=> b!5075604 (= e!3166619 (++!12800 (list!19013 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))) (list!19013 (right!43164 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))))

(declare-fun b!5075601 () Bool)

(declare-fun e!3166618 () List!58570)

(assert (=> b!5075601 (= e!3166618 Nil!58446)))

(declare-fun d!1639259 () Bool)

(declare-fun c!871560 () Bool)

(assert (=> d!1639259 (= c!871560 ((_ is Empty!15576) (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))

(assert (=> d!1639259 (= (list!19013 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) e!3166618)))

(declare-fun b!5075602 () Bool)

(assert (=> b!5075602 (= e!3166618 e!3166619)))

(declare-fun c!871561 () Bool)

(assert (=> b!5075602 (= c!871561 ((_ is Leaf!25869) (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))

(assert (= (and d!1639259 c!871560) b!5075601))

(assert (= (and d!1639259 (not c!871560)) b!5075602))

(assert (= (and b!5075602 c!871561) b!5075603))

(assert (= (and b!5075602 (not c!871561)) b!5075604))

(declare-fun m!6124416 () Bool)

(assert (=> b!5075603 m!6124416))

(assert (=> b!5075604 m!6124048))

(assert (=> b!5075604 m!6124042))

(assert (=> b!5075604 m!6124048))

(assert (=> b!5075604 m!6124042))

(declare-fun m!6124418 () Bool)

(assert (=> b!5075604 m!6124418))

(assert (=> b!5074804 d!1639259))

(declare-fun b!5075608 () Bool)

(declare-fun e!3166621 () Bool)

(declare-fun lt!2090140 () List!58570)

(assert (=> b!5075608 (= e!3166621 (or (not (= (list!19013 (right!43164 (left!42834 (left!42834 ys!41)))) Nil!58446)) (= lt!2090140 (list!19013 (left!42834 (left!42834 (left!42834 ys!41)))))))))

(declare-fun b!5075606 () Bool)

(declare-fun e!3166620 () List!58570)

(assert (=> b!5075606 (= e!3166620 (Cons!58446 (h!64894 (list!19013 (left!42834 (left!42834 (left!42834 ys!41))))) (++!12800 (t!371357 (list!19013 (left!42834 (left!42834 (left!42834 ys!41))))) (list!19013 (right!43164 (left!42834 (left!42834 ys!41)))))))))

(declare-fun d!1639261 () Bool)

(assert (=> d!1639261 e!3166621))

(declare-fun res!2161020 () Bool)

(assert (=> d!1639261 (=> (not res!2161020) (not e!3166621))))

(assert (=> d!1639261 (= res!2161020 (= (content!10423 lt!2090140) ((_ map or) (content!10423 (list!19013 (left!42834 (left!42834 (left!42834 ys!41))))) (content!10423 (list!19013 (right!43164 (left!42834 (left!42834 ys!41))))))))))

(assert (=> d!1639261 (= lt!2090140 e!3166620)))

(declare-fun c!871562 () Bool)

(assert (=> d!1639261 (= c!871562 ((_ is Nil!58446) (list!19013 (left!42834 (left!42834 (left!42834 ys!41))))))))

(assert (=> d!1639261 (= (++!12800 (list!19013 (left!42834 (left!42834 (left!42834 ys!41)))) (list!19013 (right!43164 (left!42834 (left!42834 ys!41))))) lt!2090140)))

(declare-fun b!5075607 () Bool)

(declare-fun res!2161019 () Bool)

(assert (=> b!5075607 (=> (not res!2161019) (not e!3166621))))

(assert (=> b!5075607 (= res!2161019 (= (size!39099 lt!2090140) (+ (size!39099 (list!19013 (left!42834 (left!42834 (left!42834 ys!41))))) (size!39099 (list!19013 (right!43164 (left!42834 (left!42834 ys!41))))))))))

(declare-fun b!5075605 () Bool)

(assert (=> b!5075605 (= e!3166620 (list!19013 (right!43164 (left!42834 (left!42834 ys!41)))))))

(assert (= (and d!1639261 c!871562) b!5075605))

(assert (= (and d!1639261 (not c!871562)) b!5075606))

(assert (= (and d!1639261 res!2161020) b!5075607))

(assert (= (and b!5075607 res!2161019) b!5075608))

(assert (=> b!5075606 m!6122422))

(declare-fun m!6124420 () Bool)

(assert (=> b!5075606 m!6124420))

(declare-fun m!6124422 () Bool)

(assert (=> d!1639261 m!6124422))

(assert (=> d!1639261 m!6122420))

(declare-fun m!6124424 () Bool)

(assert (=> d!1639261 m!6124424))

(assert (=> d!1639261 m!6122422))

(declare-fun m!6124426 () Bool)

(assert (=> d!1639261 m!6124426))

(declare-fun m!6124428 () Bool)

(assert (=> b!5075607 m!6124428))

(assert (=> b!5075607 m!6122420))

(declare-fun m!6124430 () Bool)

(assert (=> b!5075607 m!6124430))

(assert (=> b!5075607 m!6122422))

(declare-fun m!6124432 () Bool)

(assert (=> b!5075607 m!6124432))

(assert (=> b!5074625 d!1639261))

(assert (=> b!5074625 d!1638893))

(assert (=> b!5074625 d!1638895))

(declare-fun d!1639265 () Bool)

(assert (=> d!1639265 (= (inv!77622 (xs!18936 (right!43164 (left!42834 xs!286)))) (<= (size!39099 (innerList!15664 (xs!18936 (right!43164 (left!42834 xs!286))))) 2147483647))))

(declare-fun bs!1190380 () Bool)

(assert (= bs!1190380 d!1639265))

(declare-fun m!6124434 () Bool)

(assert (=> bs!1190380 m!6124434))

(assert (=> b!5075090 d!1639265))

(declare-fun d!1639269 () Bool)

(assert (=> d!1639269 (= (list!19014 (xs!18936 (right!43164 (right!43164 xs!286)))) (innerList!15664 (xs!18936 (right!43164 (right!43164 xs!286)))))))

(assert (=> b!5074670 d!1639269))

(declare-fun b!5075609 () Bool)

(declare-fun res!2161021 () Bool)

(declare-fun e!3166623 () Bool)

(assert (=> b!5075609 (=> (not res!2161021) (not e!3166623))))

(assert (=> b!5075609 (= res!2161021 (isBalanced!4438 (left!42834 (left!42834 (right!43164 lt!2089940)))))))

(declare-fun b!5075610 () Bool)

(declare-fun res!2161024 () Bool)

(assert (=> b!5075610 (=> (not res!2161024) (not e!3166623))))

(assert (=> b!5075610 (= res!2161024 (<= (- (height!2153 (left!42834 (left!42834 (right!43164 lt!2089940)))) (height!2153 (right!43164 (left!42834 (right!43164 lt!2089940))))) 1))))

(declare-fun d!1639271 () Bool)

(declare-fun res!2161023 () Bool)

(declare-fun e!3166622 () Bool)

(assert (=> d!1639271 (=> res!2161023 e!3166622)))

(assert (=> d!1639271 (= res!2161023 (not ((_ is Node!15576) (left!42834 (right!43164 lt!2089940)))))))

(assert (=> d!1639271 (= (isBalanced!4438 (left!42834 (right!43164 lt!2089940))) e!3166622)))

(declare-fun b!5075611 () Bool)

(assert (=> b!5075611 (= e!3166623 (not (isEmpty!31655 (right!43164 (left!42834 (right!43164 lt!2089940))))))))

(declare-fun b!5075612 () Bool)

(declare-fun res!2161022 () Bool)

(assert (=> b!5075612 (=> (not res!2161022) (not e!3166623))))

(assert (=> b!5075612 (= res!2161022 (not (isEmpty!31655 (left!42834 (left!42834 (right!43164 lt!2089940))))))))

(declare-fun b!5075613 () Bool)

(assert (=> b!5075613 (= e!3166622 e!3166623)))

(declare-fun res!2161025 () Bool)

(assert (=> b!5075613 (=> (not res!2161025) (not e!3166623))))

(assert (=> b!5075613 (= res!2161025 (<= (- 1) (- (height!2153 (left!42834 (left!42834 (right!43164 lt!2089940)))) (height!2153 (right!43164 (left!42834 (right!43164 lt!2089940)))))))))

(declare-fun b!5075614 () Bool)

(declare-fun res!2161026 () Bool)

(assert (=> b!5075614 (=> (not res!2161026) (not e!3166623))))

(assert (=> b!5075614 (= res!2161026 (isBalanced!4438 (right!43164 (left!42834 (right!43164 lt!2089940)))))))

(assert (= (and d!1639271 (not res!2161023)) b!5075613))

(assert (= (and b!5075613 res!2161025) b!5075610))

(assert (= (and b!5075610 res!2161024) b!5075609))

(assert (= (and b!5075609 res!2161021) b!5075614))

(assert (= (and b!5075614 res!2161026) b!5075612))

(assert (= (and b!5075612 res!2161022) b!5075611))

(declare-fun m!6124436 () Bool)

(assert (=> b!5075612 m!6124436))

(declare-fun m!6124438 () Bool)

(assert (=> b!5075611 m!6124438))

(declare-fun m!6124440 () Bool)

(assert (=> b!5075614 m!6124440))

(declare-fun m!6124442 () Bool)

(assert (=> b!5075613 m!6124442))

(declare-fun m!6124444 () Bool)

(assert (=> b!5075613 m!6124444))

(assert (=> b!5075610 m!6124442))

(assert (=> b!5075610 m!6124444))

(declare-fun m!6124446 () Bool)

(assert (=> b!5075609 m!6124446))

(assert (=> b!5074907 d!1639271))

(declare-fun d!1639277 () Bool)

(declare-fun lt!2090142 () Bool)

(assert (=> d!1639277 (= lt!2090142 (isEmpty!31656 (list!19013 (left!42834 lt!2089978))))))

(assert (=> d!1639277 (= lt!2090142 (= (size!39101 (left!42834 lt!2089978)) 0))))

(assert (=> d!1639277 (= (isEmpty!31655 (left!42834 lt!2089978)) lt!2090142)))

(declare-fun bs!1190381 () Bool)

(assert (= bs!1190381 d!1639277))

(assert (=> bs!1190381 m!6123232))

(assert (=> bs!1190381 m!6123232))

(declare-fun m!6124448 () Bool)

(assert (=> bs!1190381 m!6124448))

(declare-fun m!6124450 () Bool)

(assert (=> bs!1190381 m!6124450))

(assert (=> b!5074920 d!1639277))

(declare-fun b!5075622 () Bool)

(declare-fun e!3166627 () Bool)

(declare-fun lt!2090143 () List!58570)

(assert (=> b!5075622 (= e!3166627 (or (not (= (list!19013 (right!43164 lt!2089940)) Nil!58446)) (= lt!2090143 (t!371357 (list!19013 (left!42834 lt!2089940))))))))

(declare-fun b!5075620 () Bool)

(declare-fun e!3166626 () List!58570)

(assert (=> b!5075620 (= e!3166626 (Cons!58446 (h!64894 (t!371357 (list!19013 (left!42834 lt!2089940)))) (++!12800 (t!371357 (t!371357 (list!19013 (left!42834 lt!2089940)))) (list!19013 (right!43164 lt!2089940)))))))

(declare-fun d!1639279 () Bool)

(assert (=> d!1639279 e!3166627))

(declare-fun res!2161030 () Bool)

(assert (=> d!1639279 (=> (not res!2161030) (not e!3166627))))

(assert (=> d!1639279 (= res!2161030 (= (content!10423 lt!2090143) ((_ map or) (content!10423 (t!371357 (list!19013 (left!42834 lt!2089940)))) (content!10423 (list!19013 (right!43164 lt!2089940))))))))

(assert (=> d!1639279 (= lt!2090143 e!3166626)))

(declare-fun c!871564 () Bool)

(assert (=> d!1639279 (= c!871564 ((_ is Nil!58446) (t!371357 (list!19013 (left!42834 lt!2089940)))))))

(assert (=> d!1639279 (= (++!12800 (t!371357 (list!19013 (left!42834 lt!2089940))) (list!19013 (right!43164 lt!2089940))) lt!2090143)))

(declare-fun b!5075621 () Bool)

(declare-fun res!2161029 () Bool)

(assert (=> b!5075621 (=> (not res!2161029) (not e!3166627))))

(assert (=> b!5075621 (= res!2161029 (= (size!39099 lt!2090143) (+ (size!39099 (t!371357 (list!19013 (left!42834 lt!2089940)))) (size!39099 (list!19013 (right!43164 lt!2089940))))))))

(declare-fun b!5075619 () Bool)

(assert (=> b!5075619 (= e!3166626 (list!19013 (right!43164 lt!2089940)))))

(assert (= (and d!1639279 c!871564) b!5075619))

(assert (= (and d!1639279 (not c!871564)) b!5075620))

(assert (= (and d!1639279 res!2161030) b!5075621))

(assert (= (and b!5075621 res!2161029) b!5075622))

(assert (=> b!5075620 m!6121998))

(declare-fun m!6124454 () Bool)

(assert (=> b!5075620 m!6124454))

(declare-fun m!6124456 () Bool)

(assert (=> d!1639279 m!6124456))

(declare-fun m!6124458 () Bool)

(assert (=> d!1639279 m!6124458))

(assert (=> d!1639279 m!6121998))

(assert (=> d!1639279 m!6122914))

(declare-fun m!6124462 () Bool)

(assert (=> b!5075621 m!6124462))

(declare-fun m!6124464 () Bool)

(assert (=> b!5075621 m!6124464))

(assert (=> b!5075621 m!6121998))

(assert (=> b!5075621 m!6122924))

(assert (=> b!5074884 d!1639279))

(assert (=> b!5074639 d!1639189))

(assert (=> b!5074639 d!1639191))

(declare-fun b!5075623 () Bool)

(declare-fun res!2161031 () Bool)

(declare-fun e!3166629 () Bool)

(assert (=> b!5075623 (=> (not res!2161031) (not e!3166629))))

(assert (=> b!5075623 (= res!2161031 (isBalanced!4438 (left!42834 (left!42834 (left!42834 lt!2089940)))))))

(declare-fun b!5075624 () Bool)

(declare-fun res!2161034 () Bool)

(assert (=> b!5075624 (=> (not res!2161034) (not e!3166629))))

(assert (=> b!5075624 (= res!2161034 (<= (- (height!2153 (left!42834 (left!42834 (left!42834 lt!2089940)))) (height!2153 (right!43164 (left!42834 (left!42834 lt!2089940))))) 1))))

(declare-fun d!1639281 () Bool)

(declare-fun res!2161033 () Bool)

(declare-fun e!3166628 () Bool)

(assert (=> d!1639281 (=> res!2161033 e!3166628)))

(assert (=> d!1639281 (= res!2161033 (not ((_ is Node!15576) (left!42834 (left!42834 lt!2089940)))))))

(assert (=> d!1639281 (= (isBalanced!4438 (left!42834 (left!42834 lt!2089940))) e!3166628)))

(declare-fun b!5075625 () Bool)

(assert (=> b!5075625 (= e!3166629 (not (isEmpty!31655 (right!43164 (left!42834 (left!42834 lt!2089940))))))))

(declare-fun b!5075626 () Bool)

(declare-fun res!2161032 () Bool)

(assert (=> b!5075626 (=> (not res!2161032) (not e!3166629))))

(assert (=> b!5075626 (= res!2161032 (not (isEmpty!31655 (left!42834 (left!42834 (left!42834 lt!2089940))))))))

(declare-fun b!5075627 () Bool)

(assert (=> b!5075627 (= e!3166628 e!3166629)))

(declare-fun res!2161035 () Bool)

(assert (=> b!5075627 (=> (not res!2161035) (not e!3166629))))

(assert (=> b!5075627 (= res!2161035 (<= (- 1) (- (height!2153 (left!42834 (left!42834 (left!42834 lt!2089940)))) (height!2153 (right!43164 (left!42834 (left!42834 lt!2089940)))))))))

(declare-fun b!5075628 () Bool)

(declare-fun res!2161036 () Bool)

(assert (=> b!5075628 (=> (not res!2161036) (not e!3166629))))

(assert (=> b!5075628 (= res!2161036 (isBalanced!4438 (right!43164 (left!42834 (left!42834 lt!2089940)))))))

(assert (= (and d!1639281 (not res!2161033)) b!5075627))

(assert (= (and b!5075627 res!2161035) b!5075624))

(assert (= (and b!5075624 res!2161034) b!5075623))

(assert (= (and b!5075623 res!2161031) b!5075628))

(assert (= (and b!5075628 res!2161036) b!5075626))

(assert (= (and b!5075626 res!2161032) b!5075625))

(declare-fun m!6124472 () Bool)

(assert (=> b!5075626 m!6124472))

(declare-fun m!6124474 () Bool)

(assert (=> b!5075625 m!6124474))

(declare-fun m!6124476 () Bool)

(assert (=> b!5075628 m!6124476))

(declare-fun m!6124478 () Bool)

(assert (=> b!5075627 m!6124478))

(declare-fun m!6124480 () Bool)

(assert (=> b!5075627 m!6124480))

(assert (=> b!5075624 m!6124478))

(assert (=> b!5075624 m!6124480))

(declare-fun m!6124482 () Bool)

(assert (=> b!5075623 m!6124482))

(assert (=> b!5074630 d!1639281))

(declare-fun d!1639285 () Bool)

(assert (=> d!1639285 (= (list!19014 (xs!18936 (left!42834 (left!42834 ys!41)))) (innerList!15664 (xs!18936 (left!42834 (left!42834 ys!41)))))))

(assert (=> b!5074624 d!1639285))

(declare-fun d!1639287 () Bool)

(declare-fun lt!2090145 () Int)

(assert (=> d!1639287 (= lt!2090145 (size!39099 (list!19013 (left!42834 (right!43164 ys!41)))))))

(assert (=> d!1639287 (= lt!2090145 (ite ((_ is Empty!15576) (left!42834 (right!43164 ys!41))) 0 (ite ((_ is Leaf!25869) (left!42834 (right!43164 ys!41))) (csize!31383 (left!42834 (right!43164 ys!41))) (csize!31382 (left!42834 (right!43164 ys!41))))))))

(assert (=> d!1639287 (= (size!39101 (left!42834 (right!43164 ys!41))) lt!2090145)))

(declare-fun bs!1190382 () Bool)

(assert (= bs!1190382 d!1639287))

(assert (=> bs!1190382 m!6122610))

(assert (=> bs!1190382 m!6122610))

(assert (=> bs!1190382 m!6124372))

(assert (=> d!1638743 d!1639287))

(declare-fun d!1639289 () Bool)

(declare-fun lt!2090146 () Int)

(assert (=> d!1639289 (= lt!2090146 (size!39099 (list!19013 (right!43164 (right!43164 ys!41)))))))

(assert (=> d!1639289 (= lt!2090146 (ite ((_ is Empty!15576) (right!43164 (right!43164 ys!41))) 0 (ite ((_ is Leaf!25869) (right!43164 (right!43164 ys!41))) (csize!31383 (right!43164 (right!43164 ys!41))) (csize!31382 (right!43164 (right!43164 ys!41))))))))

(assert (=> d!1639289 (= (size!39101 (right!43164 (right!43164 ys!41))) lt!2090146)))

(declare-fun bs!1190383 () Bool)

(assert (= bs!1190383 d!1639289))

(assert (=> bs!1190383 m!6122612))

(assert (=> bs!1190383 m!6122612))

(assert (=> bs!1190383 m!6124374))

(assert (=> d!1638743 d!1639289))

(declare-fun e!3166632 () Bool)

(declare-fun lt!2090147 () List!58570)

(declare-fun b!5075634 () Bool)

(assert (=> b!5075634 (= e!3166632 (or (not (= (list!19013 (right!43164 (++!12801 xs!286 (left!42834 ys!41)))) Nil!58446)) (= lt!2090147 (list!19013 (left!42834 (++!12801 xs!286 (left!42834 ys!41)))))))))

(declare-fun b!5075632 () Bool)

(declare-fun e!3166631 () List!58570)

(assert (=> b!5075632 (= e!3166631 (Cons!58446 (h!64894 (list!19013 (left!42834 (++!12801 xs!286 (left!42834 ys!41))))) (++!12800 (t!371357 (list!19013 (left!42834 (++!12801 xs!286 (left!42834 ys!41))))) (list!19013 (right!43164 (++!12801 xs!286 (left!42834 ys!41)))))))))

(declare-fun d!1639291 () Bool)

(assert (=> d!1639291 e!3166632))

(declare-fun res!2161038 () Bool)

(assert (=> d!1639291 (=> (not res!2161038) (not e!3166632))))

(assert (=> d!1639291 (= res!2161038 (= (content!10423 lt!2090147) ((_ map or) (content!10423 (list!19013 (left!42834 (++!12801 xs!286 (left!42834 ys!41))))) (content!10423 (list!19013 (right!43164 (++!12801 xs!286 (left!42834 ys!41))))))))))

(assert (=> d!1639291 (= lt!2090147 e!3166631)))

(declare-fun c!871566 () Bool)

(assert (=> d!1639291 (= c!871566 ((_ is Nil!58446) (list!19013 (left!42834 (++!12801 xs!286 (left!42834 ys!41))))))))

(assert (=> d!1639291 (= (++!12800 (list!19013 (left!42834 (++!12801 xs!286 (left!42834 ys!41)))) (list!19013 (right!43164 (++!12801 xs!286 (left!42834 ys!41))))) lt!2090147)))

(declare-fun b!5075633 () Bool)

(declare-fun res!2161037 () Bool)

(assert (=> b!5075633 (=> (not res!2161037) (not e!3166632))))

(assert (=> b!5075633 (= res!2161037 (= (size!39099 lt!2090147) (+ (size!39099 (list!19013 (left!42834 (++!12801 xs!286 (left!42834 ys!41))))) (size!39099 (list!19013 (right!43164 (++!12801 xs!286 (left!42834 ys!41))))))))))

(declare-fun b!5075631 () Bool)

(assert (=> b!5075631 (= e!3166631 (list!19013 (right!43164 (++!12801 xs!286 (left!42834 ys!41)))))))

(assert (= (and d!1639291 c!871566) b!5075631))

(assert (= (and d!1639291 (not c!871566)) b!5075632))

(assert (= (and d!1639291 res!2161038) b!5075633))

(assert (= (and b!5075633 res!2161037) b!5075634))

(assert (=> b!5075632 m!6122900))

(declare-fun m!6124490 () Bool)

(assert (=> b!5075632 m!6124490))

(declare-fun m!6124492 () Bool)

(assert (=> d!1639291 m!6124492))

(assert (=> d!1639291 m!6122898))

(declare-fun m!6124494 () Bool)

(assert (=> d!1639291 m!6124494))

(assert (=> d!1639291 m!6122900))

(declare-fun m!6124496 () Bool)

(assert (=> d!1639291 m!6124496))

(declare-fun m!6124498 () Bool)

(assert (=> b!5075633 m!6124498))

(assert (=> b!5075633 m!6122898))

(declare-fun m!6124500 () Bool)

(assert (=> b!5075633 m!6124500))

(assert (=> b!5075633 m!6122900))

(declare-fun m!6124502 () Bool)

(assert (=> b!5075633 m!6124502))

(assert (=> b!5074882 d!1639291))

(declare-fun b!5075638 () Bool)

(declare-fun e!3166635 () List!58570)

(assert (=> b!5075638 (= e!3166635 (list!19014 (xs!18936 (left!42834 (++!12801 xs!286 (left!42834 ys!41))))))))

(declare-fun b!5075639 () Bool)

(assert (=> b!5075639 (= e!3166635 (++!12800 (list!19013 (left!42834 (left!42834 (++!12801 xs!286 (left!42834 ys!41))))) (list!19013 (right!43164 (left!42834 (++!12801 xs!286 (left!42834 ys!41)))))))))

(declare-fun b!5075636 () Bool)

(declare-fun e!3166634 () List!58570)

(assert (=> b!5075636 (= e!3166634 Nil!58446)))

(declare-fun d!1639297 () Bool)

(declare-fun c!871568 () Bool)

(assert (=> d!1639297 (= c!871568 ((_ is Empty!15576) (left!42834 (++!12801 xs!286 (left!42834 ys!41)))))))

(assert (=> d!1639297 (= (list!19013 (left!42834 (++!12801 xs!286 (left!42834 ys!41)))) e!3166634)))

(declare-fun b!5075637 () Bool)

(assert (=> b!5075637 (= e!3166634 e!3166635)))

(declare-fun c!871569 () Bool)

(assert (=> b!5075637 (= c!871569 ((_ is Leaf!25869) (left!42834 (++!12801 xs!286 (left!42834 ys!41)))))))

(assert (= (and d!1639297 c!871568) b!5075636))

(assert (= (and d!1639297 (not c!871568)) b!5075637))

(assert (= (and b!5075637 c!871569) b!5075638))

(assert (= (and b!5075637 (not c!871569)) b!5075639))

(declare-fun m!6124504 () Bool)

(assert (=> b!5075638 m!6124504))

(declare-fun m!6124506 () Bool)

(assert (=> b!5075639 m!6124506))

(declare-fun m!6124508 () Bool)

(assert (=> b!5075639 m!6124508))

(assert (=> b!5075639 m!6124506))

(assert (=> b!5075639 m!6124508))

(declare-fun m!6124512 () Bool)

(assert (=> b!5075639 m!6124512))

(assert (=> b!5074882 d!1639297))

(declare-fun b!5075643 () Bool)

(declare-fun e!3166637 () List!58570)

(assert (=> b!5075643 (= e!3166637 (list!19014 (xs!18936 (right!43164 (++!12801 xs!286 (left!42834 ys!41))))))))

(declare-fun b!5075644 () Bool)

(assert (=> b!5075644 (= e!3166637 (++!12800 (list!19013 (left!42834 (right!43164 (++!12801 xs!286 (left!42834 ys!41))))) (list!19013 (right!43164 (right!43164 (++!12801 xs!286 (left!42834 ys!41)))))))))

(declare-fun b!5075641 () Bool)

(declare-fun e!3166636 () List!58570)

(assert (=> b!5075641 (= e!3166636 Nil!58446)))

(declare-fun d!1639301 () Bool)

(declare-fun c!871570 () Bool)

(assert (=> d!1639301 (= c!871570 ((_ is Empty!15576) (right!43164 (++!12801 xs!286 (left!42834 ys!41)))))))

(assert (=> d!1639301 (= (list!19013 (right!43164 (++!12801 xs!286 (left!42834 ys!41)))) e!3166636)))

(declare-fun b!5075642 () Bool)

(assert (=> b!5075642 (= e!3166636 e!3166637)))

(declare-fun c!871571 () Bool)

(assert (=> b!5075642 (= c!871571 ((_ is Leaf!25869) (right!43164 (++!12801 xs!286 (left!42834 ys!41)))))))

(assert (= (and d!1639301 c!871570) b!5075641))

(assert (= (and d!1639301 (not c!871570)) b!5075642))

(assert (= (and b!5075642 c!871571) b!5075643))

(assert (= (and b!5075642 (not c!871571)) b!5075644))

(declare-fun m!6124514 () Bool)

(assert (=> b!5075643 m!6124514))

(declare-fun m!6124516 () Bool)

(assert (=> b!5075644 m!6124516))

(declare-fun m!6124518 () Bool)

(assert (=> b!5075644 m!6124518))

(assert (=> b!5075644 m!6124516))

(assert (=> b!5075644 m!6124518))

(declare-fun m!6124520 () Bool)

(assert (=> b!5075644 m!6124520))

(assert (=> b!5074882 d!1639301))

(declare-fun e!3166639 () Bool)

(declare-fun b!5075648 () Bool)

(declare-fun lt!2090149 () List!58570)

(assert (=> b!5075648 (= e!3166639 (or (not (= call!353531 Nil!58446)) (= lt!2090149 (list!19013 xs!286))))))

(declare-fun b!5075646 () Bool)

(declare-fun e!3166638 () List!58570)

(assert (=> b!5075646 (= e!3166638 (Cons!58446 (h!64894 (list!19013 xs!286)) (++!12800 (t!371357 (list!19013 xs!286)) call!353531)))))

(declare-fun d!1639307 () Bool)

(assert (=> d!1639307 e!3166639))

(declare-fun res!2161040 () Bool)

(assert (=> d!1639307 (=> (not res!2161040) (not e!3166639))))

(assert (=> d!1639307 (= res!2161040 (= (content!10423 lt!2090149) ((_ map or) (content!10423 (list!19013 xs!286)) (content!10423 call!353531))))))

(assert (=> d!1639307 (= lt!2090149 e!3166638)))

(declare-fun c!871572 () Bool)

(assert (=> d!1639307 (= c!871572 ((_ is Nil!58446) (list!19013 xs!286)))))

(assert (=> d!1639307 (= (++!12800 (list!19013 xs!286) call!353531) lt!2090149)))

(declare-fun b!5075647 () Bool)

(declare-fun res!2161039 () Bool)

(assert (=> b!5075647 (=> (not res!2161039) (not e!3166639))))

(assert (=> b!5075647 (= res!2161039 (= (size!39099 lt!2090149) (+ (size!39099 (list!19013 xs!286)) (size!39099 call!353531))))))

(declare-fun b!5075645 () Bool)

(assert (=> b!5075645 (= e!3166638 call!353531)))

(assert (= (and d!1639307 c!871572) b!5075645))

(assert (= (and d!1639307 (not c!871572)) b!5075646))

(assert (= (and d!1639307 res!2161040) b!5075647))

(assert (= (and b!5075647 res!2161039) b!5075648))

(declare-fun m!6124522 () Bool)

(assert (=> b!5075646 m!6124522))

(declare-fun m!6124524 () Bool)

(assert (=> d!1639307 m!6124524))

(assert (=> d!1639307 m!6121978))

(assert (=> d!1639307 m!6122016))

(declare-fun m!6124526 () Bool)

(assert (=> d!1639307 m!6124526))

(declare-fun m!6124528 () Bool)

(assert (=> b!5075647 m!6124528))

(assert (=> b!5075647 m!6121978))

(assert (=> b!5075647 m!6122022))

(declare-fun m!6124530 () Bool)

(assert (=> b!5075647 m!6124530))

(assert (=> bm!353530 d!1639307))

(declare-fun d!1639309 () Bool)

(declare-fun lt!2090151 () Int)

(assert (=> d!1639309 (>= lt!2090151 0)))

(declare-fun e!3166642 () Int)

(assert (=> d!1639309 (= lt!2090151 e!3166642)))

(declare-fun c!871575 () Bool)

(assert (=> d!1639309 (= c!871575 ((_ is Nil!58446) lt!2090004))))

(assert (=> d!1639309 (= (size!39099 lt!2090004) lt!2090151)))

(declare-fun b!5075653 () Bool)

(assert (=> b!5075653 (= e!3166642 0)))

(declare-fun b!5075654 () Bool)

(assert (=> b!5075654 (= e!3166642 (+ 1 (size!39099 (t!371357 lt!2090004))))))

(assert (= (and d!1639309 c!871575) b!5075653))

(assert (= (and d!1639309 (not c!871575)) b!5075654))

(declare-fun m!6124532 () Bool)

(assert (=> b!5075654 m!6124532))

(assert (=> b!5074759 d!1639309))

(assert (=> b!5074759 d!1639147))

(assert (=> b!5074759 d!1638797))

(declare-fun d!1639311 () Bool)

(declare-fun res!2161041 () Bool)

(declare-fun e!3166643 () Bool)

(assert (=> d!1639311 (=> (not res!2161041) (not e!3166643))))

(assert (=> d!1639311 (= res!2161041 (<= (size!39099 (list!19014 (xs!18936 (left!42834 (right!43164 ys!41))))) 512))))

(assert (=> d!1639311 (= (inv!77626 (left!42834 (right!43164 ys!41))) e!3166643)))

(declare-fun b!5075655 () Bool)

(declare-fun res!2161042 () Bool)

(assert (=> b!5075655 (=> (not res!2161042) (not e!3166643))))

(assert (=> b!5075655 (= res!2161042 (= (csize!31383 (left!42834 (right!43164 ys!41))) (size!39099 (list!19014 (xs!18936 (left!42834 (right!43164 ys!41)))))))))

(declare-fun b!5075656 () Bool)

(assert (=> b!5075656 (= e!3166643 (and (> (csize!31383 (left!42834 (right!43164 ys!41))) 0) (<= (csize!31383 (left!42834 (right!43164 ys!41))) 512)))))

(assert (= (and d!1639311 res!2161041) b!5075655))

(assert (= (and b!5075655 res!2161042) b!5075656))

(assert (=> d!1639311 m!6124376))

(assert (=> d!1639311 m!6124376))

(declare-fun m!6124534 () Bool)

(assert (=> d!1639311 m!6124534))

(assert (=> b!5075655 m!6124376))

(assert (=> b!5075655 m!6124376))

(assert (=> b!5075655 m!6124534))

(assert (=> b!5074903 d!1639311))

(declare-fun d!1639313 () Bool)

(assert (=> d!1639313 (= (inv!77622 (xs!18936 (right!43164 (left!42834 ys!41)))) (<= (size!39099 (innerList!15664 (xs!18936 (right!43164 (left!42834 ys!41))))) 2147483647))))

(declare-fun bs!1190384 () Bool)

(assert (= bs!1190384 d!1639313))

(declare-fun m!6124536 () Bool)

(assert (=> bs!1190384 m!6124536))

(assert (=> b!5075082 d!1639313))

(declare-fun d!1639315 () Bool)

(declare-fun res!2161043 () Bool)

(declare-fun e!3166644 () Bool)

(assert (=> d!1639315 (=> (not res!2161043) (not e!3166644))))

(assert (=> d!1639315 (= res!2161043 (= (csize!31382 (left!42834 (left!42834 xs!286))) (+ (size!39101 (left!42834 (left!42834 (left!42834 xs!286)))) (size!39101 (right!43164 (left!42834 (left!42834 xs!286)))))))))

(assert (=> d!1639315 (= (inv!77625 (left!42834 (left!42834 xs!286))) e!3166644)))

(declare-fun b!5075657 () Bool)

(declare-fun res!2161044 () Bool)

(assert (=> b!5075657 (=> (not res!2161044) (not e!3166644))))

(assert (=> b!5075657 (= res!2161044 (and (not (= (left!42834 (left!42834 (left!42834 xs!286))) Empty!15576)) (not (= (right!43164 (left!42834 (left!42834 xs!286))) Empty!15576))))))

(declare-fun b!5075658 () Bool)

(declare-fun res!2161045 () Bool)

(assert (=> b!5075658 (=> (not res!2161045) (not e!3166644))))

(assert (=> b!5075658 (= res!2161045 (= (cheight!15787 (left!42834 (left!42834 xs!286))) (+ (max!0 (height!2153 (left!42834 (left!42834 (left!42834 xs!286)))) (height!2153 (right!43164 (left!42834 (left!42834 xs!286))))) 1)))))

(declare-fun b!5075659 () Bool)

(assert (=> b!5075659 (= e!3166644 (<= 0 (cheight!15787 (left!42834 (left!42834 xs!286)))))))

(assert (= (and d!1639315 res!2161043) b!5075657))

(assert (= (and b!5075657 res!2161044) b!5075658))

(assert (= (and b!5075658 res!2161045) b!5075659))

(declare-fun m!6124538 () Bool)

(assert (=> d!1639315 m!6124538))

(declare-fun m!6124540 () Bool)

(assert (=> d!1639315 m!6124540))

(assert (=> b!5075658 m!6124336))

(assert (=> b!5075658 m!6124338))

(assert (=> b!5075658 m!6124336))

(assert (=> b!5075658 m!6124338))

(declare-fun m!6124546 () Bool)

(assert (=> b!5075658 m!6124546))

(assert (=> b!5075000 d!1639315))

(declare-fun d!1639317 () Bool)

(declare-fun c!871576 () Bool)

(assert (=> d!1639317 (= c!871576 ((_ is Node!15576) (left!42834 (left!42834 (right!43164 xs!286)))))))

(declare-fun e!3166645 () Bool)

(assert (=> d!1639317 (= (inv!77621 (left!42834 (left!42834 (right!43164 xs!286)))) e!3166645)))

(declare-fun b!5075660 () Bool)

(assert (=> b!5075660 (= e!3166645 (inv!77625 (left!42834 (left!42834 (right!43164 xs!286)))))))

(declare-fun b!5075661 () Bool)

(declare-fun e!3166646 () Bool)

(assert (=> b!5075661 (= e!3166645 e!3166646)))

(declare-fun res!2161046 () Bool)

(assert (=> b!5075661 (= res!2161046 (not ((_ is Leaf!25869) (left!42834 (left!42834 (right!43164 xs!286))))))))

(assert (=> b!5075661 (=> res!2161046 e!3166646)))

(declare-fun b!5075662 () Bool)

(assert (=> b!5075662 (= e!3166646 (inv!77626 (left!42834 (left!42834 (right!43164 xs!286)))))))

(assert (= (and d!1639317 c!871576) b!5075660))

(assert (= (and d!1639317 (not c!871576)) b!5075661))

(assert (= (and b!5075661 (not res!2161046)) b!5075662))

(declare-fun m!6124550 () Bool)

(assert (=> b!5075660 m!6124550))

(declare-fun m!6124552 () Bool)

(assert (=> b!5075662 m!6124552))

(assert (=> b!5075055 d!1639317))

(declare-fun d!1639319 () Bool)

(declare-fun c!871577 () Bool)

(assert (=> d!1639319 (= c!871577 ((_ is Node!15576) (right!43164 (left!42834 (right!43164 xs!286)))))))

(declare-fun e!3166647 () Bool)

(assert (=> d!1639319 (= (inv!77621 (right!43164 (left!42834 (right!43164 xs!286)))) e!3166647)))

(declare-fun b!5075663 () Bool)

(assert (=> b!5075663 (= e!3166647 (inv!77625 (right!43164 (left!42834 (right!43164 xs!286)))))))

(declare-fun b!5075664 () Bool)

(declare-fun e!3166648 () Bool)

(assert (=> b!5075664 (= e!3166647 e!3166648)))

(declare-fun res!2161047 () Bool)

(assert (=> b!5075664 (= res!2161047 (not ((_ is Leaf!25869) (right!43164 (left!42834 (right!43164 xs!286))))))))

(assert (=> b!5075664 (=> res!2161047 e!3166648)))

(declare-fun b!5075665 () Bool)

(assert (=> b!5075665 (= e!3166648 (inv!77626 (right!43164 (left!42834 (right!43164 xs!286)))))))

(assert (= (and d!1639319 c!871577) b!5075663))

(assert (= (and d!1639319 (not c!871577)) b!5075664))

(assert (= (and b!5075664 (not res!2161047)) b!5075665))

(declare-fun m!6124558 () Bool)

(assert (=> b!5075663 m!6124558))

(declare-fun m!6124560 () Bool)

(assert (=> b!5075665 m!6124560))

(assert (=> b!5075055 d!1639319))

(declare-fun d!1639321 () Bool)

(declare-fun c!871578 () Bool)

(assert (=> d!1639321 (= c!871578 ((_ is Nil!58446) lt!2089994))))

(declare-fun e!3166649 () (InoxSet T!105202))

(assert (=> d!1639321 (= (content!10423 lt!2089994) e!3166649)))

(declare-fun b!5075666 () Bool)

(assert (=> b!5075666 (= e!3166649 ((as const (Array T!105202 Bool)) false))))

(declare-fun b!5075667 () Bool)

(assert (=> b!5075667 (= e!3166649 ((_ map or) (store ((as const (Array T!105202 Bool)) false) (h!64894 lt!2089994) true) (content!10423 (t!371357 lt!2089994))))))

(assert (= (and d!1639321 c!871578) b!5075666))

(assert (= (and d!1639321 (not c!871578)) b!5075667))

(declare-fun m!6124566 () Bool)

(assert (=> b!5075667 m!6124566))

(declare-fun m!6124568 () Bool)

(assert (=> b!5075667 m!6124568))

(assert (=> d!1638581 d!1639321))

(declare-fun d!1639323 () Bool)

(declare-fun c!871579 () Bool)

(assert (=> d!1639323 (= c!871579 ((_ is Nil!58446) (list!19013 (left!42834 xs!286))))))

(declare-fun e!3166650 () (InoxSet T!105202))

(assert (=> d!1639323 (= (content!10423 (list!19013 (left!42834 xs!286))) e!3166650)))

(declare-fun b!5075668 () Bool)

(assert (=> b!5075668 (= e!3166650 ((as const (Array T!105202 Bool)) false))))

(declare-fun b!5075669 () Bool)

(assert (=> b!5075669 (= e!3166650 ((_ map or) (store ((as const (Array T!105202 Bool)) false) (h!64894 (list!19013 (left!42834 xs!286))) true) (content!10423 (t!371357 (list!19013 (left!42834 xs!286))))))))

(assert (= (and d!1639323 c!871579) b!5075668))

(assert (= (and d!1639323 (not c!871579)) b!5075669))

(declare-fun m!6124574 () Bool)

(assert (=> b!5075669 m!6124574))

(assert (=> b!5075669 m!6123934))

(assert (=> d!1638581 d!1639323))

(declare-fun d!1639325 () Bool)

(declare-fun c!871580 () Bool)

(assert (=> d!1639325 (= c!871580 ((_ is Nil!58446) (list!19013 (right!43164 xs!286))))))

(declare-fun e!3166651 () (InoxSet T!105202))

(assert (=> d!1639325 (= (content!10423 (list!19013 (right!43164 xs!286))) e!3166651)))

(declare-fun b!5075670 () Bool)

(assert (=> b!5075670 (= e!3166651 ((as const (Array T!105202 Bool)) false))))

(declare-fun b!5075671 () Bool)

(assert (=> b!5075671 (= e!3166651 ((_ map or) (store ((as const (Array T!105202 Bool)) false) (h!64894 (list!19013 (right!43164 xs!286))) true) (content!10423 (t!371357 (list!19013 (right!43164 xs!286))))))))

(assert (= (and d!1639325 c!871580) b!5075670))

(assert (= (and d!1639325 (not c!871580)) b!5075671))

(declare-fun m!6124576 () Bool)

(assert (=> b!5075671 m!6124576))

(declare-fun m!6124578 () Bool)

(assert (=> b!5075671 m!6124578))

(assert (=> d!1638581 d!1639325))

(declare-fun b!5075677 () Bool)

(declare-fun lt!2090152 () List!58570)

(declare-fun e!3166654 () Bool)

(assert (=> b!5075677 (= e!3166654 (or (not (= call!353574 Nil!58446)) (= lt!2090152 (list!19013 (left!42834 xs!286)))))))

(declare-fun b!5075675 () Bool)

(declare-fun e!3166653 () List!58570)

(assert (=> b!5075675 (= e!3166653 (Cons!58446 (h!64894 (list!19013 (left!42834 xs!286))) (++!12800 (t!371357 (list!19013 (left!42834 xs!286))) call!353574)))))

(declare-fun d!1639329 () Bool)

(assert (=> d!1639329 e!3166654))

(declare-fun res!2161051 () Bool)

(assert (=> d!1639329 (=> (not res!2161051) (not e!3166654))))

(assert (=> d!1639329 (= res!2161051 (= (content!10423 lt!2090152) ((_ map or) (content!10423 (list!19013 (left!42834 xs!286))) (content!10423 call!353574))))))

(assert (=> d!1639329 (= lt!2090152 e!3166653)))

(declare-fun c!871581 () Bool)

(assert (=> d!1639329 (= c!871581 ((_ is Nil!58446) (list!19013 (left!42834 xs!286))))))

(assert (=> d!1639329 (= (++!12800 (list!19013 (left!42834 xs!286)) call!353574) lt!2090152)))

(declare-fun b!5075676 () Bool)

(declare-fun res!2161050 () Bool)

(assert (=> b!5075676 (=> (not res!2161050) (not e!3166654))))

(assert (=> b!5075676 (= res!2161050 (= (size!39099 lt!2090152) (+ (size!39099 (list!19013 (left!42834 xs!286))) (size!39099 call!353574))))))

(declare-fun b!5075674 () Bool)

(assert (=> b!5075674 (= e!3166653 call!353574)))

(assert (= (and d!1639329 c!871581) b!5075674))

(assert (= (and d!1639329 (not c!871581)) b!5075675))

(assert (= (and d!1639329 res!2161051) b!5075676))

(assert (= (and b!5075676 res!2161050) b!5075677))

(declare-fun m!6124580 () Bool)

(assert (=> b!5075675 m!6124580))

(declare-fun m!6124582 () Bool)

(assert (=> d!1639329 m!6124582))

(assert (=> d!1639329 m!6122028))

(assert (=> d!1639329 m!6122536))

(declare-fun m!6124584 () Bool)

(assert (=> d!1639329 m!6124584))

(declare-fun m!6124586 () Bool)

(assert (=> b!5075676 m!6124586))

(assert (=> b!5075676 m!6122028))

(assert (=> b!5075676 m!6122542))

(declare-fun m!6124588 () Bool)

(assert (=> b!5075676 m!6124588))

(assert (=> bm!353571 d!1639329))

(declare-fun b!5075678 () Bool)

(declare-fun res!2161052 () Bool)

(declare-fun e!3166656 () Bool)

(assert (=> b!5075678 (=> (not res!2161052) (not e!3166656))))

(assert (=> b!5075678 (= res!2161052 (isBalanced!4438 (left!42834 (left!42834 (left!42834 ys!41)))))))

(declare-fun b!5075679 () Bool)

(declare-fun res!2161055 () Bool)

(assert (=> b!5075679 (=> (not res!2161055) (not e!3166656))))

(assert (=> b!5075679 (= res!2161055 (<= (- (height!2153 (left!42834 (left!42834 (left!42834 ys!41)))) (height!2153 (right!43164 (left!42834 (left!42834 ys!41))))) 1))))

(declare-fun d!1639331 () Bool)

(declare-fun res!2161054 () Bool)

(declare-fun e!3166655 () Bool)

(assert (=> d!1639331 (=> res!2161054 e!3166655)))

(assert (=> d!1639331 (= res!2161054 (not ((_ is Node!15576) (left!42834 (left!42834 ys!41)))))))

(assert (=> d!1639331 (= (isBalanced!4438 (left!42834 (left!42834 ys!41))) e!3166655)))

(declare-fun b!5075680 () Bool)

(assert (=> b!5075680 (= e!3166656 (not (isEmpty!31655 (right!43164 (left!42834 (left!42834 ys!41))))))))

(declare-fun b!5075681 () Bool)

(declare-fun res!2161053 () Bool)

(assert (=> b!5075681 (=> (not res!2161053) (not e!3166656))))

(assert (=> b!5075681 (= res!2161053 (not (isEmpty!31655 (left!42834 (left!42834 (left!42834 ys!41))))))))

(declare-fun b!5075682 () Bool)

(assert (=> b!5075682 (= e!3166655 e!3166656)))

(declare-fun res!2161056 () Bool)

(assert (=> b!5075682 (=> (not res!2161056) (not e!3166656))))

(assert (=> b!5075682 (= res!2161056 (<= (- 1) (- (height!2153 (left!42834 (left!42834 (left!42834 ys!41)))) (height!2153 (right!43164 (left!42834 (left!42834 ys!41)))))))))

(declare-fun b!5075683 () Bool)

(declare-fun res!2161057 () Bool)

(assert (=> b!5075683 (=> (not res!2161057) (not e!3166656))))

(assert (=> b!5075683 (= res!2161057 (isBalanced!4438 (right!43164 (left!42834 (left!42834 ys!41)))))))

(assert (= (and d!1639331 (not res!2161054)) b!5075682))

(assert (= (and b!5075682 res!2161056) b!5075679))

(assert (= (and b!5075679 res!2161055) b!5075678))

(assert (= (and b!5075678 res!2161052) b!5075683))

(assert (= (and b!5075683 res!2161057) b!5075681))

(assert (= (and b!5075681 res!2161053) b!5075680))

(declare-fun m!6124592 () Bool)

(assert (=> b!5075681 m!6124592))

(declare-fun m!6124594 () Bool)

(assert (=> b!5075680 m!6124594))

(declare-fun m!6124596 () Bool)

(assert (=> b!5075683 m!6124596))

(declare-fun m!6124598 () Bool)

(assert (=> b!5075682 m!6124598))

(declare-fun m!6124600 () Bool)

(assert (=> b!5075682 m!6124600))

(assert (=> b!5075679 m!6124598))

(assert (=> b!5075679 m!6124600))

(declare-fun m!6124602 () Bool)

(assert (=> b!5075678 m!6124602))

(assert (=> b!5074737 d!1639331))

(declare-fun d!1639337 () Bool)

(assert (=> d!1639337 (= (isEmpty!31656 (list!19013 (left!42834 xs!286))) ((_ is Nil!58446) (list!19013 (left!42834 xs!286))))))

(assert (=> d!1638725 d!1639337))

(assert (=> d!1638725 d!1638583))

(assert (=> d!1638725 d!1639073))

(assert (=> b!5074701 d!1638981))

(assert (=> b!5074701 d!1638983))

(assert (=> b!5074908 d!1638995))

(assert (=> b!5074908 d!1638997))

(declare-fun d!1639341 () Bool)

(declare-fun c!871582 () Bool)

(assert (=> d!1639341 (= c!871582 ((_ is Nil!58446) lt!2090040))))

(declare-fun e!3166657 () (InoxSet T!105202))

(assert (=> d!1639341 (= (content!10423 lt!2090040) e!3166657)))

(declare-fun b!5075684 () Bool)

(assert (=> b!5075684 (= e!3166657 ((as const (Array T!105202 Bool)) false))))

(declare-fun b!5075685 () Bool)

(assert (=> b!5075685 (= e!3166657 ((_ map or) (store ((as const (Array T!105202 Bool)) false) (h!64894 lt!2090040) true) (content!10423 (t!371357 lt!2090040))))))

(assert (= (and d!1639341 c!871582) b!5075684))

(assert (= (and d!1639341 (not c!871582)) b!5075685))

(declare-fun m!6124606 () Bool)

(assert (=> b!5075685 m!6124606))

(declare-fun m!6124608 () Bool)

(assert (=> b!5075685 m!6124608))

(assert (=> d!1638779 d!1639341))

(declare-fun d!1639343 () Bool)

(declare-fun c!871583 () Bool)

(assert (=> d!1639343 (= c!871583 ((_ is Nil!58446) (list!19013 (right!43164 (right!43164 xs!286)))))))

(declare-fun e!3166660 () (InoxSet T!105202))

(assert (=> d!1639343 (= (content!10423 (list!19013 (right!43164 (right!43164 xs!286)))) e!3166660)))

(declare-fun b!5075692 () Bool)

(assert (=> b!5075692 (= e!3166660 ((as const (Array T!105202 Bool)) false))))

(declare-fun b!5075693 () Bool)

(assert (=> b!5075693 (= e!3166660 ((_ map or) (store ((as const (Array T!105202 Bool)) false) (h!64894 (list!19013 (right!43164 (right!43164 xs!286)))) true) (content!10423 (t!371357 (list!19013 (right!43164 (right!43164 xs!286)))))))))

(assert (= (and d!1639343 c!871583) b!5075692))

(assert (= (and d!1639343 (not c!871583)) b!5075693))

(declare-fun m!6124610 () Bool)

(assert (=> b!5075693 m!6124610))

(assert (=> b!5075693 m!6123690))

(assert (=> d!1638779 d!1639343))

(assert (=> d!1638779 d!1638819))

(assert (=> b!5074808 d!1638947))

(assert (=> b!5074808 d!1638945))

(declare-fun d!1639345 () Bool)

(declare-fun lt!2090154 () Int)

(assert (=> d!1639345 (>= lt!2090154 0)))

(declare-fun e!3166661 () Int)

(assert (=> d!1639345 (= lt!2090154 e!3166661)))

(declare-fun c!871584 () Bool)

(assert (=> d!1639345 (= c!871584 ((_ is Nil!58446) (t!371357 (innerList!15664 (xs!18936 xs!286)))))))

(assert (=> d!1639345 (= (size!39099 (t!371357 (innerList!15664 (xs!18936 xs!286)))) lt!2090154)))

(declare-fun b!5075694 () Bool)

(assert (=> b!5075694 (= e!3166661 0)))

(declare-fun b!5075695 () Bool)

(assert (=> b!5075695 (= e!3166661 (+ 1 (size!39099 (t!371357 (t!371357 (innerList!15664 (xs!18936 xs!286)))))))))

(assert (= (and d!1639345 c!871584) b!5075694))

(assert (= (and d!1639345 (not c!871584)) b!5075695))

(declare-fun m!6124612 () Bool)

(assert (=> b!5075695 m!6124612))

(assert (=> b!5074865 d!1639345))

(declare-fun d!1639347 () Bool)

(assert (=> d!1639347 (= (isEmpty!31656 (list!19013 (left!42834 lt!2089940))) ((_ is Nil!58446) (list!19013 (left!42834 lt!2089940))))))

(assert (=> d!1638685 d!1639347))

(assert (=> d!1638685 d!1638689))

(declare-fun d!1639349 () Bool)

(declare-fun lt!2090155 () Int)

(assert (=> d!1639349 (= lt!2090155 (size!39099 (list!19013 (left!42834 lt!2089940))))))

(assert (=> d!1639349 (= lt!2090155 (ite ((_ is Empty!15576) (left!42834 lt!2089940)) 0 (ite ((_ is Leaf!25869) (left!42834 lt!2089940)) (csize!31383 (left!42834 lt!2089940)) (csize!31382 (left!42834 lt!2089940)))))))

(assert (=> d!1639349 (= (size!39101 (left!42834 lt!2089940)) lt!2090155)))

(declare-fun bs!1190386 () Bool)

(assert (= bs!1190386 d!1639349))

(assert (=> bs!1190386 m!6121996))

(assert (=> bs!1190386 m!6121996))

(assert (=> bs!1190386 m!6122920))

(assert (=> d!1638685 d!1639349))

(declare-fun c!871585 () Bool)

(declare-fun lt!2090156 () Conc!15576)

(declare-fun lt!2090159 () Conc!15576)

(declare-fun bm!353625 () Bool)

(declare-fun call!353641 () Int)

(assert (=> bm!353625 (= call!353641 (height!2153 (ite c!871585 lt!2090159 lt!2090156)))))

(declare-fun b!5075696 () Bool)

(declare-fun e!3166667 () Conc!15576)

(declare-fun call!353645 () Conc!15576)

(assert (=> b!5075696 (= e!3166667 call!353645)))

(declare-fun bm!353626 () Bool)

(declare-fun call!353630 () Conc!15576)

(declare-fun call!353640 () Conc!15576)

(assert (=> bm!353626 (= call!353630 call!353640)))

(declare-fun bm!353627 () Bool)

(declare-fun call!353637 () Conc!15576)

(declare-fun call!353632 () Conc!15576)

(assert (=> bm!353627 (= call!353637 call!353632)))

(declare-fun b!5075697 () Bool)

(declare-fun res!2161066 () Bool)

(declare-fun e!3166670 () Bool)

(assert (=> b!5075697 (=> (not res!2161066) (not e!3166670))))

(declare-fun lt!2090158 () Conc!15576)

(assert (=> b!5075697 (= res!2161066 (isBalanced!4438 lt!2090158))))

(declare-fun call!353634 () Int)

(declare-fun bm!353628 () Bool)

(assert (=> bm!353628 (= call!353634 (height!2153 (ite c!871585 (left!42834 (ite c!871348 (ite c!871353 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (right!43164 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (right!43164 (ite c!871348 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))) (ite c!871351 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (left!42834 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))))))))

(declare-fun e!3166665 () Conc!15576)

(declare-fun b!5075698 () Bool)

(assert (=> b!5075698 (= e!3166665 (ite c!871348 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))) (ite c!871351 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (left!42834 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))))))))

(declare-fun b!5075699 () Bool)

(declare-fun e!3166671 () Conc!15576)

(assert (=> b!5075699 (= e!3166671 call!353630)))

(declare-fun bm!353629 () Bool)

(declare-fun call!353643 () Conc!15576)

(declare-fun call!353635 () Conc!15576)

(assert (=> bm!353629 (= call!353643 call!353635)))

(declare-fun b!5075700 () Bool)

(declare-fun e!3166669 () Conc!15576)

(assert (=> b!5075700 (= e!3166669 e!3166671)))

(declare-fun call!353638 () Conc!15576)

(assert (=> b!5075700 (= lt!2090156 call!353638)))

(declare-fun c!871589 () Bool)

(declare-fun call!353642 () Int)

(assert (=> b!5075700 (= c!871589 (= call!353641 (- call!353642 3)))))

(declare-fun b!5075701 () Bool)

(assert (=> b!5075701 (= e!3166670 (= (list!19013 lt!2090158) (++!12800 (list!19013 (ite c!871348 (ite c!871353 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (right!43164 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (list!19013 (ite c!871348 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))) (ite c!871351 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (left!42834 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))))))))

(declare-fun call!353639 () Conc!15576)

(declare-fun c!871590 () Bool)

(declare-fun c!871588 () Bool)

(declare-fun bm!353630 () Bool)

(assert (=> bm!353630 (= call!353639 (++!12801 (ite c!871585 (ite c!871590 (right!43164 (ite c!871348 (ite c!871353 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (right!43164 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (right!43164 (right!43164 (ite c!871348 (ite c!871353 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (right!43164 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))))) (ite c!871348 (ite c!871353 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (right!43164 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (ite c!871585 (ite c!871348 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))) (ite c!871351 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (left!42834 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))))) (ite c!871588 (left!42834 (ite c!871348 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))) (ite c!871351 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (left!42834 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))) (left!42834 (left!42834 (ite c!871348 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))) (ite c!871351 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (left!42834 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))))))))))

(declare-fun bm!353631 () Bool)

(assert (=> bm!353631 (= call!353642 (height!2153 (ite c!871585 (right!43164 (ite c!871348 (ite c!871353 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (right!43164 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (ite c!871348 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))) (ite c!871351 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (left!42834 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))))))))))

(declare-fun b!5075702 () Bool)

(declare-fun e!3166663 () Conc!15576)

(declare-fun e!3166664 () Conc!15576)

(assert (=> b!5075702 (= e!3166663 e!3166664)))

(declare-fun call!353631 () Conc!15576)

(assert (=> b!5075702 (= lt!2090159 call!353631)))

(declare-fun c!871587 () Bool)

(declare-fun call!353633 () Int)

(assert (=> b!5075702 (= c!871587 (= call!353641 (- call!353633 3)))))

(declare-fun e!3166666 () Bool)

(declare-fun b!5075703 () Bool)

(assert (=> b!5075703 (= e!3166666 (isBalanced!4438 (ite c!871348 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))) (ite c!871351 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (left!42834 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))))))

(declare-fun b!5075704 () Bool)

(declare-fun e!3166662 () Conc!15576)

(assert (=> b!5075704 (= e!3166667 e!3166662)))

(declare-fun lt!2090157 () Int)

(assert (=> b!5075704 (= c!871585 (< lt!2090157 (- 1)))))

(declare-fun bm!353632 () Bool)

(assert (=> bm!353632 (= call!353638 call!353639)))

(declare-fun bm!353633 () Bool)

(assert (=> bm!353633 (= call!353635 (<>!398 (ite c!871585 (ite c!871587 (left!42834 (right!43164 (ite c!871348 (ite c!871353 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (right!43164 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (left!42834 (ite c!871348 (ite c!871353 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (right!43164 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (ite c!871588 call!353638 (ite c!871589 lt!2090156 (right!43164 (left!42834 (ite c!871348 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))) (ite c!871351 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (left!42834 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))))))) (ite c!871585 (ite c!871587 lt!2090159 (left!42834 (right!43164 (ite c!871348 (ite c!871353 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (right!43164 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))))) (ite c!871588 (right!43164 (ite c!871348 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))) (ite c!871351 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (left!42834 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))) (ite c!871589 (right!43164 (left!42834 (ite c!871348 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))) (ite c!871351 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (left!42834 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))))))) (right!43164 (ite c!871348 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))) (ite c!871351 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (left!42834 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))))))))))

(declare-fun bm!353634 () Bool)

(assert (=> bm!353634 (= call!353631 call!353639)))

(declare-fun b!5075705 () Bool)

(declare-fun c!871592 () Bool)

(assert (=> b!5075705 (= c!871592 (and (<= (- 1) lt!2090157) (<= lt!2090157 1)))))

(assert (=> b!5075705 (= lt!2090157 (- (height!2153 (ite c!871348 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))) (ite c!871351 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (left!42834 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))) (height!2153 (ite c!871348 (ite c!871353 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (right!43164 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))))))

(declare-fun e!3166668 () Conc!15576)

(assert (=> b!5075705 (= e!3166668 e!3166667)))

(declare-fun b!5075706 () Bool)

(assert (=> b!5075706 (= e!3166663 call!353632)))

(declare-fun b!5075707 () Bool)

(declare-fun res!2161067 () Bool)

(assert (=> b!5075707 (=> (not res!2161067) (not e!3166670))))

(assert (=> b!5075707 (= res!2161067 (>= (height!2153 lt!2090158) (max!0 (height!2153 (ite c!871348 (ite c!871353 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (right!43164 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (height!2153 (ite c!871348 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))) (ite c!871351 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (left!42834 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))))))))

(declare-fun d!1639351 () Bool)

(assert (=> d!1639351 e!3166670))

(declare-fun res!2161065 () Bool)

(assert (=> d!1639351 (=> (not res!2161065) (not e!3166670))))

(assert (=> d!1639351 (= res!2161065 (appendAssocInst!916 (ite c!871348 (ite c!871353 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (right!43164 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (ite c!871348 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))) (ite c!871351 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (left!42834 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))))))

(assert (=> d!1639351 (= lt!2090158 e!3166665)))

(declare-fun c!871586 () Bool)

(assert (=> d!1639351 (= c!871586 (= (ite c!871348 (ite c!871353 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (right!43164 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) Empty!15576))))

(assert (=> d!1639351 e!3166666))

(declare-fun res!2161068 () Bool)

(assert (=> d!1639351 (=> (not res!2161068) (not e!3166666))))

(assert (=> d!1639351 (= res!2161068 (isBalanced!4438 (ite c!871348 (ite c!871353 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (right!43164 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))))))

(assert (=> d!1639351 (= (++!12801 (ite c!871348 (ite c!871353 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (right!43164 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (ite c!871348 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))) (ite c!871351 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (left!42834 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))) lt!2090158)))

(declare-fun bm!353635 () Bool)

(assert (=> bm!353635 (= call!353632 call!353640)))

(declare-fun bm!353636 () Bool)

(assert (=> bm!353636 (= call!353640 call!353645)))

(declare-fun bm!353637 () Bool)

(declare-fun call!353636 () Conc!15576)

(assert (=> bm!353637 (= call!353636 call!353635)))

(declare-fun b!5075708 () Bool)

(assert (=> b!5075708 (= e!3166664 call!353637)))

(declare-fun b!5075709 () Bool)

(assert (=> b!5075709 (= e!3166664 call!353637)))

(declare-fun b!5075710 () Bool)

(assert (=> b!5075710 (= c!871588 (>= call!353634 call!353633))))

(assert (=> b!5075710 (= e!3166662 e!3166669)))

(declare-fun b!5075711 () Bool)

(assert (=> b!5075711 (= e!3166668 (ite c!871348 (ite c!871353 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (right!43164 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))))

(declare-fun b!5075712 () Bool)

(assert (=> b!5075712 (= e!3166669 call!353636)))

(declare-fun call!353644 () Conc!15576)

(declare-fun bm!353638 () Bool)

(assert (=> bm!353638 (= call!353645 (<>!398 (ite c!871592 (ite c!871348 (ite c!871353 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (right!43164 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (ite c!871585 (ite (or c!871590 c!871587) (left!42834 (ite c!871348 (ite c!871353 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (right!43164 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) call!353643) (ite c!871589 call!353644 lt!2090156))) (ite c!871592 (ite c!871348 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))) (ite c!871351 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (left!42834 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))))) (ite c!871585 (ite c!871590 call!353631 (ite c!871587 call!353643 lt!2090159)) (ite c!871589 (right!43164 (ite c!871348 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))) (ite c!871351 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (left!42834 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))) call!353644)))))))

(declare-fun b!5075713 () Bool)

(assert (=> b!5075713 (= e!3166671 call!353630)))

(declare-fun bm!353639 () Bool)

(assert (=> bm!353639 (= call!353633 (height!2153 (ite c!871585 (ite c!871348 (ite c!871353 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (right!43164 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (left!42834 (ite c!871348 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))) (ite c!871351 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (left!42834 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))))))))))))

(declare-fun b!5075714 () Bool)

(declare-fun res!2161064 () Bool)

(assert (=> b!5075714 (=> (not res!2161064) (not e!3166670))))

(assert (=> b!5075714 (= res!2161064 (<= (height!2153 lt!2090158) (+ (max!0 (height!2153 (ite c!871348 (ite c!871353 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (right!43164 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)))) (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286))) (height!2153 (ite c!871348 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))) (ite c!871351 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (left!42834 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))))))) 1)))))

(declare-fun b!5075715 () Bool)

(assert (=> b!5075715 (= e!3166665 e!3166668)))

(declare-fun c!871591 () Bool)

(assert (=> b!5075715 (= c!871591 (= (ite c!871348 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))) (ite c!871351 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41)))))) (left!42834 (left!42834 (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))))) Empty!15576))))

(declare-fun bm!353640 () Bool)

(assert (=> bm!353640 (= call!353644 call!353636)))

(declare-fun b!5075716 () Bool)

(assert (=> b!5075716 (= c!871590 (>= call!353634 call!353642))))

(assert (=> b!5075716 (= e!3166662 e!3166663)))

(assert (= (and d!1639351 res!2161068) b!5075703))

(assert (= (and d!1639351 c!871586) b!5075698))

(assert (= (and d!1639351 (not c!871586)) b!5075715))

(assert (= (and b!5075715 c!871591) b!5075711))

(assert (= (and b!5075715 (not c!871591)) b!5075705))

(assert (= (and b!5075705 c!871592) b!5075696))

(assert (= (and b!5075705 (not c!871592)) b!5075704))

(assert (= (and b!5075704 c!871585) b!5075716))

(assert (= (and b!5075704 (not c!871585)) b!5075710))

(assert (= (and b!5075716 c!871590) b!5075706))

(assert (= (and b!5075716 (not c!871590)) b!5075702))

(assert (= (and b!5075702 c!871587) b!5075709))

(assert (= (and b!5075702 (not c!871587)) b!5075708))

(assert (= (or b!5075709 b!5075708) bm!353629))

(assert (= (or b!5075709 b!5075708) bm!353627))

(assert (= (or b!5075706 b!5075702) bm!353634))

(assert (= (or b!5075706 bm!353627) bm!353635))

(assert (= (and b!5075710 c!871588) b!5075712))

(assert (= (and b!5075710 (not c!871588)) b!5075700))

(assert (= (and b!5075700 c!871589) b!5075699))

(assert (= (and b!5075700 (not c!871589)) b!5075713))

(assert (= (or b!5075699 b!5075713) bm!353640))

(assert (= (or b!5075699 b!5075713) bm!353626))

(assert (= (or b!5075712 b!5075700) bm!353632))

(assert (= (or b!5075712 bm!353640) bm!353637))

(assert (= (or b!5075702 b!5075710) bm!353639))

(assert (= (or b!5075716 b!5075700) bm!353631))

(assert (= (or bm!353635 bm!353626) bm!353636))

(assert (= (or bm!353634 bm!353632) bm!353630))

(assert (= (or bm!353629 bm!353637) bm!353633))

(assert (= (or b!5075716 b!5075710) bm!353628))

(assert (= (or b!5075702 b!5075700) bm!353625))

(assert (= (or b!5075696 bm!353636) bm!353638))

(assert (= (and d!1639351 res!2161065) b!5075697))

(assert (= (and b!5075697 res!2161066) b!5075714))

(assert (= (and b!5075714 res!2161064) b!5075707))

(assert (= (and b!5075707 res!2161067) b!5075701))

(declare-fun m!6124666 () Bool)

(assert (=> bm!353633 m!6124666))

(declare-fun m!6124672 () Bool)

(assert (=> bm!353638 m!6124672))

(declare-fun m!6124674 () Bool)

(assert (=> bm!353639 m!6124674))

(declare-fun m!6124676 () Bool)

(assert (=> bm!353630 m!6124676))

(declare-fun m!6124678 () Bool)

(assert (=> b!5075714 m!6124678))

(declare-fun m!6124680 () Bool)

(assert (=> b!5075714 m!6124680))

(declare-fun m!6124682 () Bool)

(assert (=> b!5075714 m!6124682))

(assert (=> b!5075714 m!6124680))

(assert (=> b!5075714 m!6124682))

(declare-fun m!6124686 () Bool)

(assert (=> b!5075714 m!6124686))

(assert (=> b!5075705 m!6124682))

(assert (=> b!5075705 m!6124680))

(declare-fun m!6124688 () Bool)

(assert (=> bm!353625 m!6124688))

(assert (=> b!5075707 m!6124678))

(assert (=> b!5075707 m!6124680))

(assert (=> b!5075707 m!6124682))

(assert (=> b!5075707 m!6124680))

(assert (=> b!5075707 m!6124682))

(assert (=> b!5075707 m!6124686))

(declare-fun m!6124690 () Bool)

(assert (=> b!5075697 m!6124690))

(declare-fun m!6124692 () Bool)

(assert (=> bm!353628 m!6124692))

(declare-fun m!6124696 () Bool)

(assert (=> b!5075703 m!6124696))

(declare-fun m!6124700 () Bool)

(assert (=> d!1639351 m!6124700))

(declare-fun m!6124702 () Bool)

(assert (=> d!1639351 m!6124702))

(declare-fun m!6124704 () Bool)

(assert (=> b!5075701 m!6124704))

(declare-fun m!6124706 () Bool)

(assert (=> b!5075701 m!6124706))

(declare-fun m!6124708 () Bool)

(assert (=> b!5075701 m!6124708))

(assert (=> b!5075701 m!6124706))

(assert (=> b!5075701 m!6124708))

(declare-fun m!6124710 () Bool)

(assert (=> b!5075701 m!6124710))

(declare-fun m!6124712 () Bool)

(assert (=> bm!353631 m!6124712))

(assert (=> bm!353538 d!1639351))

(declare-fun b!5075742 () Bool)

(declare-fun e!3166684 () Bool)

(declare-fun lt!2090164 () List!58570)

(assert (=> b!5075742 (= e!3166684 (or (not (= (list!19013 (right!43164 lt!2089952)) Nil!58446)) (= lt!2090164 (list!19013 (left!42834 lt!2089952)))))))

(declare-fun b!5075740 () Bool)

(declare-fun e!3166683 () List!58570)

(assert (=> b!5075740 (= e!3166683 (Cons!58446 (h!64894 (list!19013 (left!42834 lt!2089952))) (++!12800 (t!371357 (list!19013 (left!42834 lt!2089952))) (list!19013 (right!43164 lt!2089952)))))))

(declare-fun d!1639371 () Bool)

(assert (=> d!1639371 e!3166684))

(declare-fun res!2161074 () Bool)

(assert (=> d!1639371 (=> (not res!2161074) (not e!3166684))))

(assert (=> d!1639371 (= res!2161074 (= (content!10423 lt!2090164) ((_ map or) (content!10423 (list!19013 (left!42834 lt!2089952))) (content!10423 (list!19013 (right!43164 lt!2089952))))))))

(assert (=> d!1639371 (= lt!2090164 e!3166683)))

(declare-fun c!871602 () Bool)

(assert (=> d!1639371 (= c!871602 ((_ is Nil!58446) (list!19013 (left!42834 lt!2089952))))))

(assert (=> d!1639371 (= (++!12800 (list!19013 (left!42834 lt!2089952)) (list!19013 (right!43164 lt!2089952))) lt!2090164)))

(declare-fun b!5075741 () Bool)

(declare-fun res!2161073 () Bool)

(assert (=> b!5075741 (=> (not res!2161073) (not e!3166684))))

(assert (=> b!5075741 (= res!2161073 (= (size!39099 lt!2090164) (+ (size!39099 (list!19013 (left!42834 lt!2089952))) (size!39099 (list!19013 (right!43164 lt!2089952))))))))

(declare-fun b!5075739 () Bool)

(assert (=> b!5075739 (= e!3166683 (list!19013 (right!43164 lt!2089952)))))

(assert (= (and d!1639371 c!871602) b!5075739))

(assert (= (and d!1639371 (not c!871602)) b!5075740))

(assert (= (and d!1639371 res!2161074) b!5075741))

(assert (= (and b!5075741 res!2161073) b!5075742))

(assert (=> b!5075740 m!6122882))

(declare-fun m!6124722 () Bool)

(assert (=> b!5075740 m!6124722))

(declare-fun m!6124724 () Bool)

(assert (=> d!1639371 m!6124724))

(assert (=> d!1639371 m!6122880))

(declare-fun m!6124726 () Bool)

(assert (=> d!1639371 m!6124726))

(assert (=> d!1639371 m!6122882))

(declare-fun m!6124728 () Bool)

(assert (=> d!1639371 m!6124728))

(declare-fun m!6124730 () Bool)

(assert (=> b!5075741 m!6124730))

(assert (=> b!5075741 m!6122880))

(declare-fun m!6124732 () Bool)

(assert (=> b!5075741 m!6124732))

(assert (=> b!5075741 m!6122882))

(declare-fun m!6124734 () Bool)

(assert (=> b!5075741 m!6124734))

(assert (=> b!5074874 d!1639371))

(declare-fun b!5075749 () Bool)

(declare-fun e!3166688 () List!58570)

(assert (=> b!5075749 (= e!3166688 (list!19014 (xs!18936 (left!42834 lt!2089952))))))

(declare-fun b!5075750 () Bool)

(assert (=> b!5075750 (= e!3166688 (++!12800 (list!19013 (left!42834 (left!42834 lt!2089952))) (list!19013 (right!43164 (left!42834 lt!2089952)))))))

(declare-fun b!5075747 () Bool)

(declare-fun e!3166687 () List!58570)

(assert (=> b!5075747 (= e!3166687 Nil!58446)))

(declare-fun d!1639375 () Bool)

(declare-fun c!871604 () Bool)

(assert (=> d!1639375 (= c!871604 ((_ is Empty!15576) (left!42834 lt!2089952)))))

(assert (=> d!1639375 (= (list!19013 (left!42834 lt!2089952)) e!3166687)))

(declare-fun b!5075748 () Bool)

(assert (=> b!5075748 (= e!3166687 e!3166688)))

(declare-fun c!871605 () Bool)

(assert (=> b!5075748 (= c!871605 ((_ is Leaf!25869) (left!42834 lt!2089952)))))

(assert (= (and d!1639375 c!871604) b!5075747))

(assert (= (and d!1639375 (not c!871604)) b!5075748))

(assert (= (and b!5075748 c!871605) b!5075749))

(assert (= (and b!5075748 (not c!871605)) b!5075750))

(declare-fun m!6124736 () Bool)

(assert (=> b!5075749 m!6124736))

(declare-fun m!6124738 () Bool)

(assert (=> b!5075750 m!6124738))

(declare-fun m!6124740 () Bool)

(assert (=> b!5075750 m!6124740))

(assert (=> b!5075750 m!6124738))

(assert (=> b!5075750 m!6124740))

(declare-fun m!6124742 () Bool)

(assert (=> b!5075750 m!6124742))

(assert (=> b!5074874 d!1639375))

(declare-fun b!5075753 () Bool)

(declare-fun e!3166690 () List!58570)

(assert (=> b!5075753 (= e!3166690 (list!19014 (xs!18936 (right!43164 lt!2089952))))))

(declare-fun b!5075754 () Bool)

(assert (=> b!5075754 (= e!3166690 (++!12800 (list!19013 (left!42834 (right!43164 lt!2089952))) (list!19013 (right!43164 (right!43164 lt!2089952)))))))

(declare-fun b!5075751 () Bool)

(declare-fun e!3166689 () List!58570)

(assert (=> b!5075751 (= e!3166689 Nil!58446)))

(declare-fun d!1639377 () Bool)

(declare-fun c!871606 () Bool)

(assert (=> d!1639377 (= c!871606 ((_ is Empty!15576) (right!43164 lt!2089952)))))

(assert (=> d!1639377 (= (list!19013 (right!43164 lt!2089952)) e!3166689)))

(declare-fun b!5075752 () Bool)

(assert (=> b!5075752 (= e!3166689 e!3166690)))

(declare-fun c!871607 () Bool)

(assert (=> b!5075752 (= c!871607 ((_ is Leaf!25869) (right!43164 lt!2089952)))))

(assert (= (and d!1639377 c!871606) b!5075751))

(assert (= (and d!1639377 (not c!871606)) b!5075752))

(assert (= (and b!5075752 c!871607) b!5075753))

(assert (= (and b!5075752 (not c!871607)) b!5075754))

(declare-fun m!6124744 () Bool)

(assert (=> b!5075753 m!6124744))

(declare-fun m!6124746 () Bool)

(assert (=> b!5075754 m!6124746))

(declare-fun m!6124750 () Bool)

(assert (=> b!5075754 m!6124750))

(assert (=> b!5075754 m!6124746))

(assert (=> b!5075754 m!6124750))

(declare-fun m!6124754 () Bool)

(assert (=> b!5075754 m!6124754))

(assert (=> b!5074874 d!1639377))

(declare-fun d!1639379 () Bool)

(assert (=> d!1639379 (= (isEmpty!31656 (list!19013 (right!43164 lt!2089940))) ((_ is Nil!58446) (list!19013 (right!43164 lt!2089940))))))

(assert (=> d!1638579 d!1639379))

(assert (=> d!1638579 d!1638691))

(declare-fun d!1639381 () Bool)

(declare-fun lt!2090166 () Int)

(assert (=> d!1639381 (= lt!2090166 (size!39099 (list!19013 (right!43164 lt!2089940))))))

(assert (=> d!1639381 (= lt!2090166 (ite ((_ is Empty!15576) (right!43164 lt!2089940)) 0 (ite ((_ is Leaf!25869) (right!43164 lt!2089940)) (csize!31383 (right!43164 lt!2089940)) (csize!31382 (right!43164 lt!2089940)))))))

(assert (=> d!1639381 (= (size!39101 (right!43164 lt!2089940)) lt!2090166)))

(declare-fun bs!1190388 () Bool)

(assert (= bs!1190388 d!1639381))

(assert (=> bs!1190388 m!6121998))

(assert (=> bs!1190388 m!6121998))

(assert (=> bs!1190388 m!6122924))

(assert (=> d!1638579 d!1639381))

(declare-fun d!1639383 () Bool)

(declare-fun lt!2090167 () Int)

(assert (=> d!1639383 (>= lt!2090167 0)))

(declare-fun e!3166691 () Int)

(assert (=> d!1639383 (= lt!2090167 e!3166691)))

(declare-fun c!871608 () Bool)

(assert (=> d!1639383 (= c!871608 ((_ is Nil!58446) lt!2090001))))

(assert (=> d!1639383 (= (size!39099 lt!2090001) lt!2090167)))

(declare-fun b!5075755 () Bool)

(assert (=> b!5075755 (= e!3166691 0)))

(declare-fun b!5075756 () Bool)

(assert (=> b!5075756 (= e!3166691 (+ 1 (size!39099 (t!371357 lt!2090001))))))

(assert (= (and d!1639383 c!871608) b!5075755))

(assert (= (and d!1639383 (not c!871608)) b!5075756))

(declare-fun m!6124766 () Bool)

(assert (=> b!5075756 m!6124766))

(assert (=> b!5074728 d!1639383))

(assert (=> b!5074728 d!1639201))

(assert (=> b!5074728 d!1639035))

(assert (=> d!1638705 d!1639163))

(assert (=> d!1638705 d!1638789))

(declare-fun b!5075764 () Bool)

(declare-fun e!3166695 () Bool)

(declare-fun lt!2090168 () List!58570)

(assert (=> b!5075764 (= e!3166695 (or (not (= (list!19013 (right!43164 (right!43164 (right!43164 xs!286)))) Nil!58446)) (= lt!2090168 (list!19013 (left!42834 (right!43164 (right!43164 xs!286)))))))))

(declare-fun b!5075762 () Bool)

(declare-fun e!3166694 () List!58570)

(assert (=> b!5075762 (= e!3166694 (Cons!58446 (h!64894 (list!19013 (left!42834 (right!43164 (right!43164 xs!286))))) (++!12800 (t!371357 (list!19013 (left!42834 (right!43164 (right!43164 xs!286))))) (list!19013 (right!43164 (right!43164 (right!43164 xs!286)))))))))

(declare-fun d!1639387 () Bool)

(assert (=> d!1639387 e!3166695))

(declare-fun res!2161078 () Bool)

(assert (=> d!1639387 (=> (not res!2161078) (not e!3166695))))

(assert (=> d!1639387 (= res!2161078 (= (content!10423 lt!2090168) ((_ map or) (content!10423 (list!19013 (left!42834 (right!43164 (right!43164 xs!286))))) (content!10423 (list!19013 (right!43164 (right!43164 (right!43164 xs!286))))))))))

(assert (=> d!1639387 (= lt!2090168 e!3166694)))

(declare-fun c!871611 () Bool)

(assert (=> d!1639387 (= c!871611 ((_ is Nil!58446) (list!19013 (left!42834 (right!43164 (right!43164 xs!286))))))))

(assert (=> d!1639387 (= (++!12800 (list!19013 (left!42834 (right!43164 (right!43164 xs!286)))) (list!19013 (right!43164 (right!43164 (right!43164 xs!286))))) lt!2090168)))

(declare-fun b!5075763 () Bool)

(declare-fun res!2161077 () Bool)

(assert (=> b!5075763 (=> (not res!2161077) (not e!3166695))))

(assert (=> b!5075763 (= res!2161077 (= (size!39099 lt!2090168) (+ (size!39099 (list!19013 (left!42834 (right!43164 (right!43164 xs!286))))) (size!39099 (list!19013 (right!43164 (right!43164 (right!43164 xs!286))))))))))

(declare-fun b!5075761 () Bool)

(assert (=> b!5075761 (= e!3166694 (list!19013 (right!43164 (right!43164 (right!43164 xs!286)))))))

(assert (= (and d!1639387 c!871611) b!5075761))

(assert (= (and d!1639387 (not c!871611)) b!5075762))

(assert (= (and d!1639387 res!2161078) b!5075763))

(assert (= (and b!5075763 res!2161077) b!5075764))

(assert (=> b!5075762 m!6122524))

(declare-fun m!6124768 () Bool)

(assert (=> b!5075762 m!6124768))

(declare-fun m!6124772 () Bool)

(assert (=> d!1639387 m!6124772))

(assert (=> d!1639387 m!6122522))

(declare-fun m!6124774 () Bool)

(assert (=> d!1639387 m!6124774))

(assert (=> d!1639387 m!6122524))

(declare-fun m!6124778 () Bool)

(assert (=> d!1639387 m!6124778))

(declare-fun m!6124780 () Bool)

(assert (=> b!5075763 m!6124780))

(assert (=> b!5075763 m!6122522))

(declare-fun m!6124784 () Bool)

(assert (=> b!5075763 m!6124784))

(assert (=> b!5075763 m!6122524))

(declare-fun m!6124786 () Bool)

(assert (=> b!5075763 m!6124786))

(assert (=> b!5074671 d!1639387))

(declare-fun b!5075767 () Bool)

(declare-fun e!3166697 () List!58570)

(assert (=> b!5075767 (= e!3166697 (list!19014 (xs!18936 (left!42834 (right!43164 (right!43164 xs!286))))))))

(declare-fun b!5075768 () Bool)

(assert (=> b!5075768 (= e!3166697 (++!12800 (list!19013 (left!42834 (left!42834 (right!43164 (right!43164 xs!286))))) (list!19013 (right!43164 (left!42834 (right!43164 (right!43164 xs!286)))))))))

(declare-fun b!5075765 () Bool)

(declare-fun e!3166696 () List!58570)

(assert (=> b!5075765 (= e!3166696 Nil!58446)))

(declare-fun d!1639389 () Bool)

(declare-fun c!871612 () Bool)

(assert (=> d!1639389 (= c!871612 ((_ is Empty!15576) (left!42834 (right!43164 (right!43164 xs!286)))))))

(assert (=> d!1639389 (= (list!19013 (left!42834 (right!43164 (right!43164 xs!286)))) e!3166696)))

(declare-fun b!5075766 () Bool)

(assert (=> b!5075766 (= e!3166696 e!3166697)))

(declare-fun c!871613 () Bool)

(assert (=> b!5075766 (= c!871613 ((_ is Leaf!25869) (left!42834 (right!43164 (right!43164 xs!286)))))))

(assert (= (and d!1639389 c!871612) b!5075765))

(assert (= (and d!1639389 (not c!871612)) b!5075766))

(assert (= (and b!5075766 c!871613) b!5075767))

(assert (= (and b!5075766 (not c!871613)) b!5075768))

(declare-fun m!6124790 () Bool)

(assert (=> b!5075767 m!6124790))

(declare-fun m!6124792 () Bool)

(assert (=> b!5075768 m!6124792))

(declare-fun m!6124794 () Bool)

(assert (=> b!5075768 m!6124794))

(assert (=> b!5075768 m!6124792))

(assert (=> b!5075768 m!6124794))

(declare-fun m!6124796 () Bool)

(assert (=> b!5075768 m!6124796))

(assert (=> b!5074671 d!1639389))

(declare-fun b!5075775 () Bool)

(declare-fun e!3166701 () List!58570)

(assert (=> b!5075775 (= e!3166701 (list!19014 (xs!18936 (right!43164 (right!43164 (right!43164 xs!286))))))))

(declare-fun b!5075776 () Bool)

(assert (=> b!5075776 (= e!3166701 (++!12800 (list!19013 (left!42834 (right!43164 (right!43164 (right!43164 xs!286))))) (list!19013 (right!43164 (right!43164 (right!43164 (right!43164 xs!286)))))))))

(declare-fun b!5075773 () Bool)

(declare-fun e!3166700 () List!58570)

(assert (=> b!5075773 (= e!3166700 Nil!58446)))

(declare-fun d!1639393 () Bool)

(declare-fun c!871616 () Bool)

(assert (=> d!1639393 (= c!871616 ((_ is Empty!15576) (right!43164 (right!43164 (right!43164 xs!286)))))))

(assert (=> d!1639393 (= (list!19013 (right!43164 (right!43164 (right!43164 xs!286)))) e!3166700)))

(declare-fun b!5075774 () Bool)

(assert (=> b!5075774 (= e!3166700 e!3166701)))

(declare-fun c!871617 () Bool)

(assert (=> b!5075774 (= c!871617 ((_ is Leaf!25869) (right!43164 (right!43164 (right!43164 xs!286)))))))

(assert (= (and d!1639393 c!871616) b!5075773))

(assert (= (and d!1639393 (not c!871616)) b!5075774))

(assert (= (and b!5075774 c!871617) b!5075775))

(assert (= (and b!5075774 (not c!871617)) b!5075776))

(declare-fun m!6124798 () Bool)

(assert (=> b!5075775 m!6124798))

(declare-fun m!6124800 () Bool)

(assert (=> b!5075776 m!6124800))

(declare-fun m!6124802 () Bool)

(assert (=> b!5075776 m!6124802))

(assert (=> b!5075776 m!6124800))

(assert (=> b!5075776 m!6124802))

(declare-fun m!6124806 () Bool)

(assert (=> b!5075776 m!6124806))

(assert (=> b!5074671 d!1639393))

(assert (=> b!5074921 d!1639125))

(assert (=> b!5074921 d!1639127))

(declare-fun d!1639395 () Bool)

(declare-fun lt!2090169 () Bool)

(assert (=> d!1639395 (= lt!2090169 (isEmpty!31656 (list!19013 (right!43164 (left!42834 lt!2089940)))))))

(assert (=> d!1639395 (= lt!2090169 (= (size!39101 (right!43164 (left!42834 lt!2089940))) 0))))

(assert (=> d!1639395 (= (isEmpty!31655 (right!43164 (left!42834 lt!2089940))) lt!2090169)))

(declare-fun bs!1190389 () Bool)

(assert (= bs!1190389 d!1639395))

(assert (=> bs!1190389 m!6122936))

(assert (=> bs!1190389 m!6122936))

(declare-fun m!6124812 () Bool)

(assert (=> bs!1190389 m!6124812))

(declare-fun m!6124814 () Bool)

(assert (=> bs!1190389 m!6124814))

(assert (=> b!5074632 d!1639395))

(declare-fun bm!353641 () Bool)

(declare-fun call!353649 () List!58570)

(declare-fun call!353648 () List!58570)

(assert (=> bm!353641 (= call!353649 (++!12800 call!353648 (list!19013 (left!42834 ys!41))))))

(declare-fun bm!353642 () Bool)

(assert (=> bm!353642 (= call!353648 (++!12800 (list!19013 (left!42834 (right!43164 xs!286))) (list!19013 (right!43164 (right!43164 xs!286)))))))

(declare-fun d!1639397 () Bool)

(declare-fun e!3166702 () Bool)

(assert (=> d!1639397 e!3166702))

(declare-fun c!871618 () Bool)

(assert (=> d!1639397 (= c!871618 ((_ is Nil!58446) (list!19013 (left!42834 (right!43164 xs!286)))))))

(assert (=> d!1639397 (= (appendAssoc!308 (list!19013 (left!42834 (right!43164 xs!286))) (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 (left!42834 ys!41))) true)))

(declare-fun bm!353643 () Bool)

(declare-fun call!353647 () List!58570)

(declare-fun call!353646 () List!58570)

(assert (=> bm!353643 (= call!353647 (++!12800 (list!19013 (left!42834 (right!43164 xs!286))) call!353646))))

(declare-fun b!5075777 () Bool)

(assert (=> b!5075777 (= e!3166702 (= call!353649 call!353647))))

(declare-fun lt!2090170 () Bool)

(assert (=> b!5075777 (= lt!2090170 (appendAssoc!308 (t!371357 (list!19013 (left!42834 (right!43164 xs!286)))) (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 (left!42834 ys!41))))))

(declare-fun b!5075779 () Bool)

(assert (=> b!5075779 (= e!3166702 (= call!353649 call!353647))))

(declare-fun bm!353644 () Bool)

(assert (=> bm!353644 (= call!353646 (++!12800 (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 (left!42834 ys!41))))))

(assert (= (and d!1639397 c!871618) b!5075779))

(assert (= (and d!1639397 (not c!871618)) b!5075777))

(assert (= (or b!5075779 b!5075777) bm!353642))

(assert (= (or b!5075779 b!5075777) bm!353644))

(assert (= (or b!5075779 b!5075777) bm!353643))

(assert (= (or b!5075779 b!5075777) bm!353641))

(assert (=> b!5075777 m!6122170))

(assert (=> b!5075777 m!6122036))

(declare-fun m!6124820 () Bool)

(assert (=> b!5075777 m!6124820))

(assert (=> bm!353642 m!6122168))

(assert (=> bm!353642 m!6122170))

(assert (=> bm!353642 m!6122492))

(assert (=> bm!353641 m!6122036))

(declare-fun m!6124822 () Bool)

(assert (=> bm!353641 m!6124822))

(assert (=> bm!353644 m!6122170))

(assert (=> bm!353644 m!6122036))

(assert (=> bm!353644 m!6122742))

(assert (=> bm!353643 m!6122168))

(declare-fun m!6124824 () Bool)

(assert (=> bm!353643 m!6124824))

(assert (=> b!5074777 d!1639397))

(assert (=> b!5074777 d!1638565))

(assert (=> b!5074777 d!1638573))

(assert (=> b!5074777 d!1638601))

(declare-fun d!1639403 () Bool)

(declare-fun lt!2090172 () Int)

(assert (=> d!1639403 (>= lt!2090172 0)))

(declare-fun e!3166706 () Int)

(assert (=> d!1639403 (= lt!2090172 e!3166706)))

(declare-fun c!871620 () Bool)

(assert (=> d!1639403 (= c!871620 ((_ is Nil!58446) (t!371357 (list!19013 ys!41))))))

(assert (=> d!1639403 (= (size!39099 (t!371357 (list!19013 ys!41))) lt!2090172)))

(declare-fun b!5075787 () Bool)

(assert (=> b!5075787 (= e!3166706 0)))

(declare-fun b!5075788 () Bool)

(assert (=> b!5075788 (= e!3166706 (+ 1 (size!39099 (t!371357 (t!371357 (list!19013 ys!41))))))))

(assert (= (and d!1639403 c!871620) b!5075787))

(assert (= (and d!1639403 (not c!871620)) b!5075788))

(declare-fun m!6124826 () Bool)

(assert (=> b!5075788 m!6124826))

(assert (=> b!5075013 d!1639403))

(declare-fun d!1639405 () Bool)

(declare-fun lt!2090173 () Int)

(assert (=> d!1639405 (>= lt!2090173 0)))

(declare-fun e!3166707 () Int)

(assert (=> d!1639405 (= lt!2090173 e!3166707)))

(declare-fun c!871621 () Bool)

(assert (=> d!1639405 (= c!871621 ((_ is Nil!58446) lt!2090023))))

(assert (=> d!1639405 (= (size!39099 lt!2090023) lt!2090173)))

(declare-fun b!5075789 () Bool)

(assert (=> b!5075789 (= e!3166707 0)))

(declare-fun b!5075790 () Bool)

(assert (=> b!5075790 (= e!3166707 (+ 1 (size!39099 (t!371357 lt!2090023))))))

(assert (= (and d!1639405 c!871621) b!5075789))

(assert (= (and d!1639405 (not c!871621)) b!5075790))

(declare-fun m!6124828 () Bool)

(assert (=> b!5075790 m!6124828))

(assert (=> b!5074885 d!1639405))

(declare-fun d!1639407 () Bool)

(declare-fun lt!2090174 () Int)

(assert (=> d!1639407 (>= lt!2090174 0)))

(declare-fun e!3166708 () Int)

(assert (=> d!1639407 (= lt!2090174 e!3166708)))

(declare-fun c!871622 () Bool)

(assert (=> d!1639407 (= c!871622 ((_ is Nil!58446) (list!19013 (left!42834 lt!2089940))))))

(assert (=> d!1639407 (= (size!39099 (list!19013 (left!42834 lt!2089940))) lt!2090174)))

(declare-fun b!5075791 () Bool)

(assert (=> b!5075791 (= e!3166708 0)))

(declare-fun b!5075792 () Bool)

(assert (=> b!5075792 (= e!3166708 (+ 1 (size!39099 (t!371357 (list!19013 (left!42834 lt!2089940))))))))

(assert (= (and d!1639407 c!871622) b!5075791))

(assert (= (and d!1639407 (not c!871622)) b!5075792))

(assert (=> b!5075792 m!6124464))

(assert (=> b!5074885 d!1639407))

(declare-fun d!1639409 () Bool)

(declare-fun lt!2090175 () Int)

(assert (=> d!1639409 (>= lt!2090175 0)))

(declare-fun e!3166709 () Int)

(assert (=> d!1639409 (= lt!2090175 e!3166709)))

(declare-fun c!871623 () Bool)

(assert (=> d!1639409 (= c!871623 ((_ is Nil!58446) (list!19013 (right!43164 lt!2089940))))))

(assert (=> d!1639409 (= (size!39099 (list!19013 (right!43164 lt!2089940))) lt!2090175)))

(declare-fun b!5075793 () Bool)

(assert (=> b!5075793 (= e!3166709 0)))

(declare-fun b!5075794 () Bool)

(assert (=> b!5075794 (= e!3166709 (+ 1 (size!39099 (t!371357 (list!19013 (right!43164 lt!2089940))))))))

(assert (= (and d!1639409 c!871623) b!5075793))

(assert (= (and d!1639409 (not c!871623)) b!5075794))

(declare-fun m!6124836 () Bool)

(assert (=> b!5075794 m!6124836))

(assert (=> b!5074885 d!1639409))

(declare-fun d!1639411 () Bool)

(declare-fun lt!2090176 () Bool)

(assert (=> d!1639411 (= lt!2090176 (isEmpty!31656 (list!19013 (right!43164 (right!43164 ys!41)))))))

(assert (=> d!1639411 (= lt!2090176 (= (size!39101 (right!43164 (right!43164 ys!41))) 0))))

(assert (=> d!1639411 (= (isEmpty!31655 (right!43164 (right!43164 ys!41))) lt!2090176)))

(declare-fun bs!1190390 () Bool)

(assert (= bs!1190390 d!1639411))

(assert (=> bs!1190390 m!6122612))

(assert (=> bs!1190390 m!6122612))

(declare-fun m!6124844 () Bool)

(assert (=> bs!1190390 m!6124844))

(assert (=> bs!1190390 m!6123100))

(assert (=> b!5074640 d!1639411))

(declare-fun bm!353645 () Bool)

(declare-fun call!353653 () List!58570)

(declare-fun call!353652 () List!58570)

(assert (=> bm!353645 (= call!353653 (++!12800 call!353652 (list!19013 ys!41)))))

(declare-fun bm!353646 () Bool)

(assert (=> bm!353646 (= call!353652 (++!12800 (t!371357 (list!19013 (left!42834 xs!286))) (list!19013 (right!43164 xs!286))))))

(declare-fun d!1639417 () Bool)

(declare-fun e!3166710 () Bool)

(assert (=> d!1639417 e!3166710))

(declare-fun c!871624 () Bool)

(assert (=> d!1639417 (= c!871624 ((_ is Nil!58446) (t!371357 (list!19013 (left!42834 xs!286)))))))

(assert (=> d!1639417 (= (appendAssoc!308 (t!371357 (list!19013 (left!42834 xs!286))) (list!19013 (right!43164 xs!286)) (list!19013 ys!41)) true)))

(declare-fun bm!353647 () Bool)

(declare-fun call!353651 () List!58570)

(declare-fun call!353650 () List!58570)

(assert (=> bm!353647 (= call!353651 (++!12800 (t!371357 (list!19013 (left!42834 xs!286))) call!353650))))

(declare-fun b!5075795 () Bool)

(assert (=> b!5075795 (= e!3166710 (= call!353653 call!353651))))

(declare-fun lt!2090177 () Bool)

(assert (=> b!5075795 (= lt!2090177 (appendAssoc!308 (t!371357 (t!371357 (list!19013 (left!42834 xs!286)))) (list!19013 (right!43164 xs!286)) (list!19013 ys!41)))))

(declare-fun b!5075796 () Bool)

(assert (=> b!5075796 (= e!3166710 (= call!353653 call!353651))))

(declare-fun bm!353648 () Bool)

(assert (=> bm!353648 (= call!353650 (++!12800 (list!19013 (right!43164 xs!286)) (list!19013 ys!41)))))

(assert (= (and d!1639417 c!871624) b!5075796))

(assert (= (and d!1639417 (not c!871624)) b!5075795))

(assert (= (or b!5075796 b!5075795) bm!353646))

(assert (= (or b!5075796 b!5075795) bm!353648))

(assert (= (or b!5075796 b!5075795) bm!353647))

(assert (= (or b!5075796 b!5075795) bm!353645))

(assert (=> b!5075795 m!6122030))

(assert (=> b!5075795 m!6121980))

(declare-fun m!6124846 () Bool)

(assert (=> b!5075795 m!6124846))

(assert (=> bm!353646 m!6122030))

(assert (=> bm!353646 m!6122532))

(assert (=> bm!353645 m!6121980))

(declare-fun m!6124848 () Bool)

(assert (=> bm!353645 m!6124848))

(assert (=> bm!353648 m!6122030))

(assert (=> bm!353648 m!6121980))

(assert (=> bm!353648 m!6123116))

(declare-fun m!6124850 () Bool)

(assert (=> bm!353647 m!6124850))

(assert (=> b!5074962 d!1639417))

(assert (=> b!5074631 d!1638915))

(assert (=> b!5074631 d!1638917))

(declare-fun d!1639425 () Bool)

(declare-fun c!871626 () Bool)

(assert (=> d!1639425 (= c!871626 ((_ is Nil!58446) lt!2090023))))

(declare-fun e!3166712 () (InoxSet T!105202))

(assert (=> d!1639425 (= (content!10423 lt!2090023) e!3166712)))

(declare-fun b!5075797 () Bool)

(assert (=> b!5075797 (= e!3166712 ((as const (Array T!105202 Bool)) false))))

(declare-fun b!5075798 () Bool)

(assert (=> b!5075798 (= e!3166712 ((_ map or) (store ((as const (Array T!105202 Bool)) false) (h!64894 lt!2090023) true) (content!10423 (t!371357 lt!2090023))))))

(assert (= (and d!1639425 c!871626) b!5075797))

(assert (= (and d!1639425 (not c!871626)) b!5075798))

(declare-fun m!6124852 () Bool)

(assert (=> b!5075798 m!6124852))

(declare-fun m!6124854 () Bool)

(assert (=> b!5075798 m!6124854))

(assert (=> d!1638687 d!1639425))

(declare-fun d!1639427 () Bool)

(declare-fun c!871627 () Bool)

(assert (=> d!1639427 (= c!871627 ((_ is Nil!58446) (list!19013 (left!42834 lt!2089940))))))

(declare-fun e!3166714 () (InoxSet T!105202))

(assert (=> d!1639427 (= (content!10423 (list!19013 (left!42834 lt!2089940))) e!3166714)))

(declare-fun b!5075803 () Bool)

(assert (=> b!5075803 (= e!3166714 ((as const (Array T!105202 Bool)) false))))

(declare-fun b!5075804 () Bool)

(assert (=> b!5075804 (= e!3166714 ((_ map or) (store ((as const (Array T!105202 Bool)) false) (h!64894 (list!19013 (left!42834 lt!2089940))) true) (content!10423 (t!371357 (list!19013 (left!42834 lt!2089940))))))))

(assert (= (and d!1639427 c!871627) b!5075803))

(assert (= (and d!1639427 (not c!871627)) b!5075804))

(declare-fun m!6124856 () Bool)

(assert (=> b!5075804 m!6124856))

(assert (=> b!5075804 m!6124458))

(assert (=> d!1638687 d!1639427))

(declare-fun d!1639429 () Bool)

(declare-fun c!871628 () Bool)

(assert (=> d!1639429 (= c!871628 ((_ is Nil!58446) (list!19013 (right!43164 lt!2089940))))))

(declare-fun e!3166715 () (InoxSet T!105202))

(assert (=> d!1639429 (= (content!10423 (list!19013 (right!43164 lt!2089940))) e!3166715)))

(declare-fun b!5075805 () Bool)

(assert (=> b!5075805 (= e!3166715 ((as const (Array T!105202 Bool)) false))))

(declare-fun b!5075806 () Bool)

(assert (=> b!5075806 (= e!3166715 ((_ map or) (store ((as const (Array T!105202 Bool)) false) (h!64894 (list!19013 (right!43164 lt!2089940))) true) (content!10423 (t!371357 (list!19013 (right!43164 lt!2089940))))))))

(assert (= (and d!1639429 c!871628) b!5075805))

(assert (= (and d!1639429 (not c!871628)) b!5075806))

(declare-fun m!6124858 () Bool)

(assert (=> b!5075806 m!6124858))

(declare-fun m!6124860 () Bool)

(assert (=> b!5075806 m!6124860))

(assert (=> d!1638687 d!1639429))

(declare-fun b!5075810 () Bool)

(declare-fun e!3166717 () Bool)

(declare-fun lt!2090179 () List!58570)

(assert (=> b!5075810 (= e!3166717 (or (not (= (list!19013 (right!43164 ys!41)) Nil!58446)) (= lt!2090179 (t!371357 (list!19013 (left!42834 ys!41))))))))

(declare-fun b!5075808 () Bool)

(declare-fun e!3166716 () List!58570)

(assert (=> b!5075808 (= e!3166716 (Cons!58446 (h!64894 (t!371357 (list!19013 (left!42834 ys!41)))) (++!12800 (t!371357 (t!371357 (list!19013 (left!42834 ys!41)))) (list!19013 (right!43164 ys!41)))))))

(declare-fun d!1639431 () Bool)

(assert (=> d!1639431 e!3166717))

(declare-fun res!2161088 () Bool)

(assert (=> d!1639431 (=> (not res!2161088) (not e!3166717))))

(assert (=> d!1639431 (= res!2161088 (= (content!10423 lt!2090179) ((_ map or) (content!10423 (t!371357 (list!19013 (left!42834 ys!41)))) (content!10423 (list!19013 (right!43164 ys!41))))))))

(assert (=> d!1639431 (= lt!2090179 e!3166716)))

(declare-fun c!871629 () Bool)

(assert (=> d!1639431 (= c!871629 ((_ is Nil!58446) (t!371357 (list!19013 (left!42834 ys!41)))))))

(assert (=> d!1639431 (= (++!12800 (t!371357 (list!19013 (left!42834 ys!41))) (list!19013 (right!43164 ys!41))) lt!2090179)))

(declare-fun b!5075809 () Bool)

(declare-fun res!2161087 () Bool)

(assert (=> b!5075809 (=> (not res!2161087) (not e!3166717))))

(assert (=> b!5075809 (= res!2161087 (= (size!39099 lt!2090179) (+ (size!39099 (t!371357 (list!19013 (left!42834 ys!41)))) (size!39099 (list!19013 (right!43164 ys!41))))))))

(declare-fun b!5075807 () Bool)

(assert (=> b!5075807 (= e!3166716 (list!19013 (right!43164 ys!41)))))

(assert (= (and d!1639431 c!871629) b!5075807))

(assert (= (and d!1639431 (not c!871629)) b!5075808))

(assert (= (and d!1639431 res!2161088) b!5075809))

(assert (= (and b!5075809 res!2161087) b!5075810))

(assert (=> b!5075808 m!6122038))

(declare-fun m!6124868 () Bool)

(assert (=> b!5075808 m!6124868))

(declare-fun m!6124870 () Bool)

(assert (=> d!1639431 m!6124870))

(assert (=> d!1639431 m!6123928))

(assert (=> d!1639431 m!6122038))

(assert (=> d!1639431 m!6122638))

(declare-fun m!6124872 () Bool)

(assert (=> b!5075809 m!6124872))

(assert (=> b!5075809 m!6124216))

(assert (=> b!5075809 m!6122038))

(assert (=> b!5075809 m!6122646))

(assert (=> b!5074727 d!1639431))

(declare-fun d!1639435 () Bool)

(assert (=> d!1639435 (= (list!19014 (xs!18936 lt!2089952)) (innerList!15664 (xs!18936 lt!2089952)))))

(assert (=> b!5074873 d!1639435))

(declare-fun d!1639437 () Bool)

(assert (=> d!1639437 (= (list!19014 (xs!18936 (right!43164 (left!42834 ys!41)))) (innerList!15664 (xs!18936 (right!43164 (left!42834 ys!41)))))))

(assert (=> b!5074628 d!1639437))

(declare-fun d!1639439 () Bool)

(declare-fun lt!2090181 () Int)

(assert (=> d!1639439 (= lt!2090181 (size!39099 (list!19013 (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500))))))))

(assert (=> d!1639439 (= lt!2090181 (ite ((_ is Empty!15576) (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500)))) 0 (ite ((_ is Leaf!25869) (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500)))) (csize!31383 (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500)))) (csize!31382 (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500)))))))))

(assert (=> d!1639439 (= (size!39101 (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500)))) lt!2090181)))

(declare-fun bs!1190391 () Bool)

(assert (= bs!1190391 d!1639439))

(assert (=> bs!1190391 m!6122854))

(assert (=> bs!1190391 m!6122854))

(assert (=> bs!1190391 m!6123716))

(assert (=> b!5074832 d!1639439))

(declare-fun d!1639441 () Bool)

(declare-fun lt!2090182 () Int)

(assert (=> d!1639441 (= lt!2090182 (size!39099 (list!19013 (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976))))))))

(assert (=> d!1639441 (= lt!2090182 (ite ((_ is Empty!15576) (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976)))) 0 (ite ((_ is Leaf!25869) (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976)))) (csize!31383 (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976)))) (csize!31382 (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976)))))))))

(assert (=> d!1639441 (= (size!39101 (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976)))) lt!2090182)))

(declare-fun bs!1190392 () Bool)

(assert (= bs!1190392 d!1639441))

(assert (=> bs!1190392 m!6122852))

(assert (=> bs!1190392 m!6122852))

(assert (=> bs!1190392 m!6123714))

(assert (=> b!5074832 d!1639441))

(declare-fun d!1639443 () Bool)

(assert (=> d!1639443 (= (height!2153 (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500)))) (ite ((_ is Empty!15576) (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500)))) 0 (ite ((_ is Leaf!25869) (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500)))) 1 (cheight!15787 (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500)))))))))

(assert (=> b!5074832 d!1639443))

(declare-fun d!1639445 () Bool)

(assert (=> d!1639445 (= (max!0 (height!2153 (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976)))) (height!2153 (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500))))) (ite (< (height!2153 (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976)))) (height!2153 (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500))))) (height!2153 (ite c!871283 (left!42834 ys!41) (ite c!871276 (ite c!871281 call!353487 (ite c!871278 call!353499 lt!2089979)) (ite c!871280 (right!43164 (left!42834 ys!41)) call!353500)))) (height!2153 (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976))))))))

(assert (=> b!5074832 d!1639445))

(declare-fun d!1639449 () Bool)

(assert (=> d!1639449 (= (height!2153 (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976)))) (ite ((_ is Empty!15576) (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976)))) 0 (ite ((_ is Leaf!25869) (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976)))) 1 (cheight!15787 (ite c!871283 xs!286 (ite c!871276 (ite (or c!871281 c!871278) (left!42834 xs!286) call!353499) (ite c!871280 call!353500 lt!2089976)))))))))

(assert (=> b!5074832 d!1639449))

(declare-fun d!1639451 () Bool)

(assert (=> d!1639451 (= (list!19014 (xs!18936 (right!43164 lt!2089940))) (innerList!15664 (xs!18936 (right!43164 lt!2089940))))))

(assert (=> b!5074893 d!1639451))

(assert (=> b!5074571 d!1638635))

(assert (=> b!5074571 d!1638637))

(assert (=> b!5074562 d!1638651))

(assert (=> b!5074562 d!1638653))

(assert (=> b!5074688 d!1638929))

(declare-fun d!1639453 () Bool)

(declare-fun res!2161091 () Bool)

(declare-fun e!3166722 () Bool)

(assert (=> d!1639453 (=> (not res!2161091) (not e!3166722))))

(assert (=> d!1639453 (= res!2161091 (= (csize!31382 (left!42834 (left!42834 ys!41))) (+ (size!39101 (left!42834 (left!42834 (left!42834 ys!41)))) (size!39101 (right!43164 (left!42834 (left!42834 ys!41)))))))))

(assert (=> d!1639453 (= (inv!77625 (left!42834 (left!42834 ys!41))) e!3166722)))

(declare-fun b!5075819 () Bool)

(declare-fun res!2161092 () Bool)

(assert (=> b!5075819 (=> (not res!2161092) (not e!3166722))))

(assert (=> b!5075819 (= res!2161092 (and (not (= (left!42834 (left!42834 (left!42834 ys!41))) Empty!15576)) (not (= (right!43164 (left!42834 (left!42834 ys!41))) Empty!15576))))))

(declare-fun b!5075820 () Bool)

(declare-fun res!2161093 () Bool)

(assert (=> b!5075820 (=> (not res!2161093) (not e!3166722))))

(assert (=> b!5075820 (= res!2161093 (= (cheight!15787 (left!42834 (left!42834 ys!41))) (+ (max!0 (height!2153 (left!42834 (left!42834 (left!42834 ys!41)))) (height!2153 (right!43164 (left!42834 (left!42834 ys!41))))) 1)))))

(declare-fun b!5075821 () Bool)

(assert (=> b!5075821 (= e!3166722 (<= 0 (cheight!15787 (left!42834 (left!42834 ys!41)))))))

(assert (= (and d!1639453 res!2161091) b!5075819))

(assert (= (and b!5075819 res!2161092) b!5075820))

(assert (= (and b!5075820 res!2161093) b!5075821))

(declare-fun m!6124894 () Bool)

(assert (=> d!1639453 m!6124894))

(declare-fun m!6124896 () Bool)

(assert (=> d!1639453 m!6124896))

(assert (=> b!5075820 m!6124598))

(assert (=> b!5075820 m!6124600))

(assert (=> b!5075820 m!6124598))

(assert (=> b!5075820 m!6124600))

(declare-fun m!6124900 () Bool)

(assert (=> b!5075820 m!6124900))

(assert (=> b!5074793 d!1639453))

(declare-fun d!1639457 () Bool)

(assert (=> d!1639457 (= (inv!77622 (xs!18936 (left!42834 (right!43164 xs!286)))) (<= (size!39099 (innerList!15664 (xs!18936 (left!42834 (right!43164 xs!286))))) 2147483647))))

(declare-fun bs!1190393 () Bool)

(assert (= bs!1190393 d!1639457))

(declare-fun m!6124902 () Bool)

(assert (=> bs!1190393 m!6124902))

(assert (=> b!5075056 d!1639457))

(assert (=> b!5074738 d!1638963))

(assert (=> b!5074738 d!1638965))

(declare-fun e!3166726 () Bool)

(declare-fun b!5075829 () Bool)

(declare-fun lt!2090183 () List!58570)

(assert (=> b!5075829 (= e!3166726 (or (not (= (list!19013 ys!41) Nil!58446)) (= lt!2090183 call!353528)))))

(declare-fun b!5075827 () Bool)

(declare-fun e!3166725 () List!58570)

(assert (=> b!5075827 (= e!3166725 (Cons!58446 (h!64894 call!353528) (++!12800 (t!371357 call!353528) (list!19013 ys!41))))))

(declare-fun d!1639459 () Bool)

(assert (=> d!1639459 e!3166726))

(declare-fun res!2161095 () Bool)

(assert (=> d!1639459 (=> (not res!2161095) (not e!3166726))))

(assert (=> d!1639459 (= res!2161095 (= (content!10423 lt!2090183) ((_ map or) (content!10423 call!353528) (content!10423 (list!19013 ys!41)))))))

(assert (=> d!1639459 (= lt!2090183 e!3166725)))

(declare-fun c!871635 () Bool)

(assert (=> d!1639459 (= c!871635 ((_ is Nil!58446) call!353528))))

(assert (=> d!1639459 (= (++!12800 call!353528 (list!19013 ys!41)) lt!2090183)))

(declare-fun b!5075828 () Bool)

(declare-fun res!2161094 () Bool)

(assert (=> b!5075828 (=> (not res!2161094) (not e!3166726))))

(assert (=> b!5075828 (= res!2161094 (= (size!39099 lt!2090183) (+ (size!39099 call!353528) (size!39099 (list!19013 ys!41)))))))

(declare-fun b!5075826 () Bool)

(assert (=> b!5075826 (= e!3166725 (list!19013 ys!41))))

(assert (= (and d!1639459 c!871635) b!5075826))

(assert (= (and d!1639459 (not c!871635)) b!5075827))

(assert (= (and d!1639459 res!2161095) b!5075828))

(assert (= (and b!5075828 res!2161094) b!5075829))

(assert (=> b!5075827 m!6121980))

(declare-fun m!6124910 () Bool)

(assert (=> b!5075827 m!6124910))

(declare-fun m!6124912 () Bool)

(assert (=> d!1639459 m!6124912))

(declare-fun m!6124916 () Bool)

(assert (=> d!1639459 m!6124916))

(assert (=> d!1639459 m!6121980))

(assert (=> d!1639459 m!6122018))

(declare-fun m!6124918 () Bool)

(assert (=> b!5075828 m!6124918))

(declare-fun m!6124920 () Bool)

(assert (=> b!5075828 m!6124920))

(assert (=> b!5075828 m!6121980))

(assert (=> b!5075828 m!6122024))

(assert (=> bm!353521 d!1639459))

(declare-fun d!1639463 () Bool)

(declare-fun lt!2090185 () Bool)

(assert (=> d!1639463 (= lt!2090185 (isEmpty!31656 (list!19013 (right!43164 (left!42834 xs!286)))))))

(assert (=> d!1639463 (= lt!2090185 (= (size!39101 (right!43164 (left!42834 xs!286))) 0))))

(assert (=> d!1639463 (= (isEmpty!31655 (right!43164 (left!42834 xs!286))) lt!2090185)))

(declare-fun bs!1190394 () Bool)

(assert (= bs!1190394 d!1639463))

(assert (=> bs!1190394 m!6122548))

(assert (=> bs!1190394 m!6122548))

(declare-fun m!6124922 () Bool)

(assert (=> bs!1190394 m!6124922))

(assert (=> bs!1190394 m!6122368))

(assert (=> b!5074702 d!1639463))

(declare-fun d!1639465 () Bool)

(assert (=> d!1639465 (= (max!0 (height!2153 (left!42834 ys!41)) (height!2153 (right!43164 ys!41))) (ite (< (height!2153 (left!42834 ys!41)) (height!2153 (right!43164 ys!41))) (height!2153 (right!43164 ys!41)) (height!2153 (left!42834 ys!41))))))

(assert (=> b!5074948 d!1639465))

(assert (=> b!5074948 d!1638479))

(assert (=> b!5074948 d!1638477))

(declare-fun d!1639467 () Bool)

(declare-fun lt!2090186 () Bool)

(assert (=> d!1639467 (= lt!2090186 (isEmpty!31656 (list!19013 (right!43164 (right!43164 lt!2089940)))))))

(assert (=> d!1639467 (= lt!2090186 (= (size!39101 (right!43164 (right!43164 lt!2089940))) 0))))

(assert (=> d!1639467 (= (isEmpty!31655 (right!43164 (right!43164 lt!2089940))) lt!2090186)))

(declare-fun bs!1190395 () Bool)

(assert (= bs!1190395 d!1639467))

(assert (=> bs!1190395 m!6122956))

(assert (=> bs!1190395 m!6122956))

(declare-fun m!6124924 () Bool)

(assert (=> bs!1190395 m!6124924))

(declare-fun m!6124926 () Bool)

(assert (=> bs!1190395 m!6124926))

(assert (=> b!5074909 d!1639467))

(declare-fun bm!353649 () Bool)

(declare-fun call!353657 () List!58570)

(declare-fun call!353656 () List!58570)

(assert (=> bm!353649 (= call!353657 (++!12800 call!353656 (list!19013 (right!43164 (left!42834 ys!41)))))))

(declare-fun bm!353650 () Bool)

(assert (=> bm!353650 (= call!353656 (++!12800 (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 (left!42834 ys!41))))) (list!19013 (right!43164 (left!42834 (left!42834 ys!41))))))))

(declare-fun d!1639469 () Bool)

(declare-fun e!3166729 () Bool)

(assert (=> d!1639469 e!3166729))

(declare-fun c!871637 () Bool)

(assert (=> d!1639469 (= c!871637 ((_ is Nil!58446) (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 (left!42834 ys!41)))))))))

(assert (=> d!1639469 (= (appendAssoc!308 (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 (left!42834 ys!41))))) (list!19013 (right!43164 (left!42834 (left!42834 ys!41)))) (list!19013 (right!43164 (left!42834 ys!41)))) true)))

(declare-fun call!353655 () List!58570)

(declare-fun bm!353651 () Bool)

(declare-fun call!353654 () List!58570)

(assert (=> bm!353651 (= call!353655 (++!12800 (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 (left!42834 ys!41))))) call!353654))))

(declare-fun b!5075834 () Bool)

(assert (=> b!5075834 (= e!3166729 (= call!353657 call!353655))))

(declare-fun lt!2090187 () Bool)

(assert (=> b!5075834 (= lt!2090187 (appendAssoc!308 (t!371357 (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 (left!42834 ys!41)))))) (list!19013 (right!43164 (left!42834 (left!42834 ys!41)))) (list!19013 (right!43164 (left!42834 ys!41)))))))

(declare-fun b!5075835 () Bool)

(assert (=> b!5075835 (= e!3166729 (= call!353657 call!353655))))

(declare-fun bm!353652 () Bool)

(assert (=> bm!353652 (= call!353654 (++!12800 (list!19013 (right!43164 (left!42834 (left!42834 ys!41)))) (list!19013 (right!43164 (left!42834 ys!41)))))))

(assert (= (and d!1639469 c!871637) b!5075835))

(assert (= (and d!1639469 (not c!871637)) b!5075834))

(assert (= (or b!5075835 b!5075834) bm!353650))

(assert (= (or b!5075835 b!5075834) bm!353652))

(assert (= (or b!5075835 b!5075834) bm!353651))

(assert (= (or b!5075835 b!5075834) bm!353649))

(assert (=> b!5075834 m!6122422))

(assert (=> b!5075834 m!6122176))

(declare-fun m!6124938 () Bool)

(assert (=> b!5075834 m!6124938))

(assert (=> bm!353650 m!6122736))

(assert (=> bm!353650 m!6122422))

(declare-fun m!6124940 () Bool)

(assert (=> bm!353650 m!6124940))

(assert (=> bm!353649 m!6122176))

(declare-fun m!6124942 () Bool)

(assert (=> bm!353649 m!6124942))

(assert (=> bm!353652 m!6122422))

(assert (=> bm!353652 m!6122176))

(declare-fun m!6124944 () Bool)

(assert (=> bm!353652 m!6124944))

(assert (=> bm!353651 m!6122736))

(declare-fun m!6124946 () Bool)

(assert (=> bm!353651 m!6124946))

(assert (=> b!5074778 d!1639469))

(assert (=> b!5074778 d!1638437))

(assert (=> b!5074778 d!1638893))

(assert (=> b!5074778 d!1638895))

(declare-fun lt!2090189 () List!58570)

(declare-fun b!5075841 () Bool)

(declare-fun e!3166732 () Bool)

(assert (=> b!5075841 (= e!3166732 (or (not (= (list!19013 (left!42834 (left!42834 (left!42834 ys!41)))) Nil!58446)) (= lt!2090189 (list!19013 xs!286))))))

(declare-fun b!5075839 () Bool)

(declare-fun e!3166731 () List!58570)

(assert (=> b!5075839 (= e!3166731 (Cons!58446 (h!64894 (list!19013 xs!286)) (++!12800 (t!371357 (list!19013 xs!286)) (list!19013 (left!42834 (left!42834 (left!42834 ys!41)))))))))

(declare-fun d!1639473 () Bool)

(assert (=> d!1639473 e!3166732))

(declare-fun res!2161099 () Bool)

(assert (=> d!1639473 (=> (not res!2161099) (not e!3166732))))

(assert (=> d!1639473 (= res!2161099 (= (content!10423 lt!2090189) ((_ map or) (content!10423 (list!19013 xs!286)) (content!10423 (list!19013 (left!42834 (left!42834 (left!42834 ys!41))))))))))

(assert (=> d!1639473 (= lt!2090189 e!3166731)))

(declare-fun c!871639 () Bool)

(assert (=> d!1639473 (= c!871639 ((_ is Nil!58446) (list!19013 xs!286)))))

(assert (=> d!1639473 (= (++!12800 (list!19013 xs!286) (list!19013 (left!42834 (left!42834 (left!42834 ys!41))))) lt!2090189)))

(declare-fun b!5075840 () Bool)

(declare-fun res!2161098 () Bool)

(assert (=> b!5075840 (=> (not res!2161098) (not e!3166732))))

(assert (=> b!5075840 (= res!2161098 (= (size!39099 lt!2090189) (+ (size!39099 (list!19013 xs!286)) (size!39099 (list!19013 (left!42834 (left!42834 (left!42834 ys!41))))))))))

(declare-fun b!5075838 () Bool)

(assert (=> b!5075838 (= e!3166731 (list!19013 (left!42834 (left!42834 (left!42834 ys!41)))))))

(assert (= (and d!1639473 c!871639) b!5075838))

(assert (= (and d!1639473 (not c!871639)) b!5075839))

(assert (= (and d!1639473 res!2161099) b!5075840))

(assert (= (and b!5075840 res!2161098) b!5075841))

(assert (=> b!5075839 m!6122420))

(declare-fun m!6124950 () Bool)

(assert (=> b!5075839 m!6124950))

(declare-fun m!6124952 () Bool)

(assert (=> d!1639473 m!6124952))

(assert (=> d!1639473 m!6121978))

(assert (=> d!1639473 m!6122016))

(assert (=> d!1639473 m!6122420))

(assert (=> d!1639473 m!6124424))

(declare-fun m!6124954 () Bool)

(assert (=> b!5075840 m!6124954))

(assert (=> b!5075840 m!6121978))

(assert (=> b!5075840 m!6122022))

(assert (=> b!5075840 m!6122420))

(assert (=> b!5075840 m!6124430))

(assert (=> b!5074778 d!1639473))

(assert (=> b!5074778 d!1638543))

(declare-fun b!5075846 () Bool)

(declare-fun res!2161100 () Bool)

(declare-fun e!3166736 () Bool)

(assert (=> b!5075846 (=> (not res!2161100) (not e!3166736))))

(assert (=> b!5075846 (= res!2161100 (isBalanced!4438 (left!42834 (right!43164 lt!2089978))))))

(declare-fun b!5075847 () Bool)

(declare-fun res!2161103 () Bool)

(assert (=> b!5075847 (=> (not res!2161103) (not e!3166736))))

(assert (=> b!5075847 (= res!2161103 (<= (- (height!2153 (left!42834 (right!43164 lt!2089978))) (height!2153 (right!43164 (right!43164 lt!2089978)))) 1))))

(declare-fun d!1639479 () Bool)

(declare-fun res!2161102 () Bool)

(declare-fun e!3166735 () Bool)

(assert (=> d!1639479 (=> res!2161102 e!3166735)))

(assert (=> d!1639479 (= res!2161102 (not ((_ is Node!15576) (right!43164 lt!2089978))))))

(assert (=> d!1639479 (= (isBalanced!4438 (right!43164 lt!2089978)) e!3166735)))

(declare-fun b!5075848 () Bool)

(assert (=> b!5075848 (= e!3166736 (not (isEmpty!31655 (right!43164 (right!43164 lt!2089978)))))))

(declare-fun b!5075849 () Bool)

(declare-fun res!2161101 () Bool)

(assert (=> b!5075849 (=> (not res!2161101) (not e!3166736))))

(assert (=> b!5075849 (= res!2161101 (not (isEmpty!31655 (left!42834 (right!43164 lt!2089978)))))))

(declare-fun b!5075850 () Bool)

(assert (=> b!5075850 (= e!3166735 e!3166736)))

(declare-fun res!2161104 () Bool)

(assert (=> b!5075850 (=> (not res!2161104) (not e!3166736))))

(assert (=> b!5075850 (= res!2161104 (<= (- 1) (- (height!2153 (left!42834 (right!43164 lt!2089978))) (height!2153 (right!43164 (right!43164 lt!2089978))))))))

(declare-fun b!5075851 () Bool)

(declare-fun res!2161105 () Bool)

(assert (=> b!5075851 (=> (not res!2161105) (not e!3166736))))

(assert (=> b!5075851 (= res!2161105 (isBalanced!4438 (right!43164 (right!43164 lt!2089978))))))

(assert (= (and d!1639479 (not res!2161102)) b!5075850))

(assert (= (and b!5075850 res!2161104) b!5075847))

(assert (= (and b!5075847 res!2161103) b!5075846))

(assert (= (and b!5075846 res!2161100) b!5075851))

(assert (= (and b!5075851 res!2161105) b!5075849))

(assert (= (and b!5075849 res!2161101) b!5075848))

(declare-fun m!6124958 () Bool)

(assert (=> b!5075849 m!6124958))

(declare-fun m!6124960 () Bool)

(assert (=> b!5075848 m!6124960))

(declare-fun m!6124962 () Bool)

(assert (=> b!5075851 m!6124962))

(declare-fun m!6124964 () Bool)

(assert (=> b!5075850 m!6124964))

(declare-fun m!6124966 () Bool)

(assert (=> b!5075850 m!6124966))

(assert (=> b!5075847 m!6124964))

(assert (=> b!5075847 m!6124966))

(declare-fun m!6124968 () Bool)

(assert (=> b!5075846 m!6124968))

(assert (=> b!5074922 d!1639479))

(declare-fun b!5075861 () Bool)

(declare-fun lt!2090192 () List!58570)

(declare-fun e!3166740 () Bool)

(assert (=> b!5075861 (= e!3166740 (or (not (= (list!19013 (right!43164 ys!41)) Nil!58446)) (= lt!2090192 call!353572)))))

(declare-fun b!5075859 () Bool)

(declare-fun e!3166739 () List!58570)

(assert (=> b!5075859 (= e!3166739 (Cons!58446 (h!64894 call!353572) (++!12800 (t!371357 call!353572) (list!19013 (right!43164 ys!41)))))))

(declare-fun d!1639483 () Bool)

(assert (=> d!1639483 e!3166740))

(declare-fun res!2161113 () Bool)

(assert (=> d!1639483 (=> (not res!2161113) (not e!3166740))))

(assert (=> d!1639483 (= res!2161113 (= (content!10423 lt!2090192) ((_ map or) (content!10423 call!353572) (content!10423 (list!19013 (right!43164 ys!41))))))))

(assert (=> d!1639483 (= lt!2090192 e!3166739)))

(declare-fun c!871642 () Bool)

(assert (=> d!1639483 (= c!871642 ((_ is Nil!58446) call!353572))))

(assert (=> d!1639483 (= (++!12800 call!353572 (list!19013 (right!43164 ys!41))) lt!2090192)))

(declare-fun b!5075860 () Bool)

(declare-fun res!2161112 () Bool)

(assert (=> b!5075860 (=> (not res!2161112) (not e!3166740))))

(assert (=> b!5075860 (= res!2161112 (= (size!39099 lt!2090192) (+ (size!39099 call!353572) (size!39099 (list!19013 (right!43164 ys!41))))))))

(declare-fun b!5075858 () Bool)

(assert (=> b!5075858 (= e!3166739 (list!19013 (right!43164 ys!41)))))

(assert (= (and d!1639483 c!871642) b!5075858))

(assert (= (and d!1639483 (not c!871642)) b!5075859))

(assert (= (and d!1639483 res!2161113) b!5075860))

(assert (= (and b!5075860 res!2161112) b!5075861))

(assert (=> b!5075859 m!6122038))

(declare-fun m!6124972 () Bool)

(assert (=> b!5075859 m!6124972))

(declare-fun m!6124974 () Bool)

(assert (=> d!1639483 m!6124974))

(declare-fun m!6124978 () Bool)

(assert (=> d!1639483 m!6124978))

(assert (=> d!1639483 m!6122038))

(assert (=> d!1639483 m!6122638))

(declare-fun m!6124980 () Bool)

(assert (=> b!5075860 m!6124980))

(declare-fun m!6124982 () Bool)

(assert (=> b!5075860 m!6124982))

(assert (=> b!5075860 m!6122038))

(assert (=> b!5075860 m!6122646))

(assert (=> bm!353565 d!1639483))

(declare-fun d!1639485 () Bool)

(assert (=> d!1639485 (= (list!19014 (xs!18936 lt!2089978)) (innerList!15664 (xs!18936 lt!2089978)))))

(assert (=> b!5075018 d!1639485))

(assert (=> d!1638837 d!1639135))

(assert (=> d!1638837 d!1639007))

(assert (=> b!5074642 d!1639189))

(assert (=> b!5074642 d!1639191))

(declare-fun d!1639487 () Bool)

(declare-fun lt!2090193 () Bool)

(assert (=> d!1639487 (= lt!2090193 (isEmpty!31656 (list!19013 (left!42834 (left!42834 lt!2089940)))))))

(assert (=> d!1639487 (= lt!2090193 (= (size!39101 (left!42834 (left!42834 lt!2089940))) 0))))

(assert (=> d!1639487 (= (isEmpty!31655 (left!42834 (left!42834 lt!2089940))) lt!2090193)))

(declare-fun bs!1190396 () Bool)

(assert (= bs!1190396 d!1639487))

(assert (=> bs!1190396 m!6122932))

(assert (=> bs!1190396 m!6122932))

(declare-fun m!6124992 () Bool)

(assert (=> bs!1190396 m!6124992))

(declare-fun m!6124994 () Bool)

(assert (=> bs!1190396 m!6124994))

(assert (=> b!5074633 d!1639487))

(declare-fun d!1639493 () Bool)

(assert (=> d!1639493 (= (max!0 (height!2153 (left!42834 (left!42834 xs!286))) (height!2153 (right!43164 (left!42834 xs!286)))) (ite (< (height!2153 (left!42834 (left!42834 xs!286))) (height!2153 (right!43164 (left!42834 xs!286)))) (height!2153 (right!43164 (left!42834 xs!286))) (height!2153 (left!42834 (left!42834 xs!286)))))))

(assert (=> b!5074581 d!1639493))

(assert (=> b!5074581 d!1638981))

(assert (=> b!5074581 d!1638983))

(declare-fun d!1639495 () Bool)

(declare-fun c!871644 () Bool)

(assert (=> d!1639495 (= c!871644 ((_ is Nil!58446) lt!2090048))))

(declare-fun e!3166743 () (InoxSet T!105202))

(assert (=> d!1639495 (= (content!10423 lt!2090048) e!3166743)))

(declare-fun b!5075866 () Bool)

(assert (=> b!5075866 (= e!3166743 ((as const (Array T!105202 Bool)) false))))

(declare-fun b!5075867 () Bool)

(assert (=> b!5075867 (= e!3166743 ((_ map or) (store ((as const (Array T!105202 Bool)) false) (h!64894 lt!2090048) true) (content!10423 (t!371357 lt!2090048))))))

(assert (= (and d!1639495 c!871644) b!5075866))

(assert (= (and d!1639495 (not c!871644)) b!5075867))

(declare-fun m!6124996 () Bool)

(assert (=> b!5075867 m!6124996))

(declare-fun m!6124998 () Bool)

(assert (=> b!5075867 m!6124998))

(assert (=> d!1638803 d!1639495))

(assert (=> d!1638803 d!1638817))

(assert (=> d!1638803 d!1639059))

(declare-fun d!1639497 () Bool)

(assert (=> d!1639497 (= (height!2153 (ite c!871348 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))) (ite ((_ is Empty!15576) (ite c!871348 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))) 0 (ite ((_ is Leaf!25869) (ite c!871348 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))) 1 (cheight!15787 (ite c!871348 (right!43164 (ite c!871276 (ite c!871281 (right!43164 xs!286) (right!43164 (right!43164 xs!286))) xs!286)) (ite c!871276 (left!42834 ys!41) (ite c!871279 (left!42834 (left!42834 ys!41)) (left!42834 (left!42834 (left!42834 ys!41))))))))))))

(assert (=> bm!353539 d!1639497))

(declare-fun d!1639499 () Bool)

(declare-fun res!2161116 () Bool)

(declare-fun e!3166744 () Bool)

(assert (=> d!1639499 (=> (not res!2161116) (not e!3166744))))

(assert (=> d!1639499 (= res!2161116 (= (csize!31382 (left!42834 (right!43164 xs!286))) (+ (size!39101 (left!42834 (left!42834 (right!43164 xs!286)))) (size!39101 (right!43164 (left!42834 (right!43164 xs!286)))))))))

(assert (=> d!1639499 (= (inv!77625 (left!42834 (right!43164 xs!286))) e!3166744)))

(declare-fun b!5075868 () Bool)

(declare-fun res!2161117 () Bool)

(assert (=> b!5075868 (=> (not res!2161117) (not e!3166744))))

(assert (=> b!5075868 (= res!2161117 (and (not (= (left!42834 (left!42834 (right!43164 xs!286))) Empty!15576)) (not (= (right!43164 (left!42834 (right!43164 xs!286))) Empty!15576))))))

(declare-fun b!5075869 () Bool)

(declare-fun res!2161118 () Bool)

(assert (=> b!5075869 (=> (not res!2161118) (not e!3166744))))

(assert (=> b!5075869 (= res!2161118 (= (cheight!15787 (left!42834 (right!43164 xs!286))) (+ (max!0 (height!2153 (left!42834 (left!42834 (right!43164 xs!286)))) (height!2153 (right!43164 (left!42834 (right!43164 xs!286))))) 1)))))

(declare-fun b!5075870 () Bool)

(assert (=> b!5075870 (= e!3166744 (<= 0 (cheight!15787 (left!42834 (right!43164 xs!286)))))))

(assert (= (and d!1639499 res!2161116) b!5075868))

(assert (= (and b!5075868 res!2161117) b!5075869))

(assert (= (and b!5075869 res!2161118) b!5075870))

(declare-fun m!6125006 () Bool)

(assert (=> d!1639499 m!6125006))

(declare-fun m!6125008 () Bool)

(assert (=> d!1639499 m!6125008))

(assert (=> b!5075869 m!6123590))

(assert (=> b!5075869 m!6123592))

(assert (=> b!5075869 m!6123590))

(assert (=> b!5075869 m!6123592))

(declare-fun m!6125014 () Bool)

(assert (=> b!5075869 m!6125014))

(assert (=> b!5074763 d!1639499))

(declare-fun d!1639501 () Bool)

(declare-fun lt!2090195 () Int)

(assert (=> d!1639501 (>= lt!2090195 0)))

(declare-fun e!3166745 () Int)

(assert (=> d!1639501 (= lt!2090195 e!3166745)))

(declare-fun c!871645 () Bool)

(assert (=> d!1639501 (= c!871645 ((_ is Nil!58446) (t!371357 (innerList!15664 (xs!18936 ys!41)))))))

(assert (=> d!1639501 (= (size!39099 (t!371357 (innerList!15664 (xs!18936 ys!41)))) lt!2090195)))

(declare-fun b!5075871 () Bool)

(assert (=> b!5075871 (= e!3166745 0)))

(declare-fun b!5075872 () Bool)

(assert (=> b!5075872 (= e!3166745 (+ 1 (size!39099 (t!371357 (t!371357 (innerList!15664 (xs!18936 ys!41)))))))))

(assert (= (and d!1639501 c!871645) b!5075871))

(assert (= (and d!1639501 (not c!871645)) b!5075872))

(declare-fun m!6125020 () Bool)

(assert (=> b!5075872 m!6125020))

(assert (=> b!5074867 d!1639501))

(declare-fun d!1639505 () Bool)

(declare-fun lt!2090196 () Bool)

(assert (=> d!1639505 (= lt!2090196 (isEmpty!31656 (list!19013 (right!43164 (left!42834 ys!41)))))))

(assert (=> d!1639505 (= lt!2090196 (= (size!39101 (right!43164 (left!42834 ys!41))) 0))))

(assert (=> d!1639505 (= (isEmpty!31655 (right!43164 (left!42834 ys!41))) lt!2090196)))

(declare-fun bs!1190397 () Bool)

(assert (= bs!1190397 d!1639505))

(assert (=> bs!1190397 m!6122176))

(assert (=> bs!1190397 m!6122176))

(declare-fun m!6125022 () Bool)

(assert (=> bs!1190397 m!6125022))

(assert (=> bs!1190397 m!6123278))

(assert (=> b!5074739 d!1639505))

(declare-fun d!1639507 () Bool)

(declare-fun lt!2090197 () Bool)

(assert (=> d!1639507 (= lt!2090197 (isEmpty!31656 (list!19013 (left!42834 (right!43164 ys!41)))))))

(assert (=> d!1639507 (= lt!2090197 (= (size!39101 (left!42834 (right!43164 ys!41))) 0))))

(assert (=> d!1639507 (= (isEmpty!31655 (left!42834 (right!43164 ys!41))) lt!2090197)))

(declare-fun bs!1190398 () Bool)

(assert (= bs!1190398 d!1639507))

(assert (=> bs!1190398 m!6122610))

(assert (=> bs!1190398 m!6122610))

(declare-fun m!6125026 () Bool)

(assert (=> bs!1190398 m!6125026))

(assert (=> bs!1190398 m!6123098))

(assert (=> b!5074641 d!1639507))

(declare-fun b!5075880 () Bool)

(declare-fun e!3166749 () Bool)

(declare-fun lt!2090198 () List!58570)

(assert (=> b!5075880 (= e!3166749 (or (not (= (list!19013 (right!43164 (right!43164 lt!2089940))) Nil!58446)) (= lt!2090198 (list!19013 (left!42834 (right!43164 lt!2089940))))))))

(declare-fun b!5075878 () Bool)

(declare-fun e!3166748 () List!58570)

(assert (=> b!5075878 (= e!3166748 (Cons!58446 (h!64894 (list!19013 (left!42834 (right!43164 lt!2089940)))) (++!12800 (t!371357 (list!19013 (left!42834 (right!43164 lt!2089940)))) (list!19013 (right!43164 (right!43164 lt!2089940))))))))

(declare-fun d!1639509 () Bool)

(assert (=> d!1639509 e!3166749))

(declare-fun res!2161120 () Bool)

(assert (=> d!1639509 (=> (not res!2161120) (not e!3166749))))

(assert (=> d!1639509 (= res!2161120 (= (content!10423 lt!2090198) ((_ map or) (content!10423 (list!19013 (left!42834 (right!43164 lt!2089940)))) (content!10423 (list!19013 (right!43164 (right!43164 lt!2089940)))))))))

(assert (=> d!1639509 (= lt!2090198 e!3166748)))

(declare-fun c!871648 () Bool)

(assert (=> d!1639509 (= c!871648 ((_ is Nil!58446) (list!19013 (left!42834 (right!43164 lt!2089940)))))))

(assert (=> d!1639509 (= (++!12800 (list!19013 (left!42834 (right!43164 lt!2089940))) (list!19013 (right!43164 (right!43164 lt!2089940)))) lt!2090198)))

(declare-fun b!5075879 () Bool)

(declare-fun res!2161119 () Bool)

(assert (=> b!5075879 (=> (not res!2161119) (not e!3166749))))

(assert (=> b!5075879 (= res!2161119 (= (size!39099 lt!2090198) (+ (size!39099 (list!19013 (left!42834 (right!43164 lt!2089940)))) (size!39099 (list!19013 (right!43164 (right!43164 lt!2089940)))))))))

(declare-fun b!5075877 () Bool)

(assert (=> b!5075877 (= e!3166748 (list!19013 (right!43164 (right!43164 lt!2089940))))))

(assert (= (and d!1639509 c!871648) b!5075877))

(assert (= (and d!1639509 (not c!871648)) b!5075878))

(assert (= (and d!1639509 res!2161120) b!5075879))

(assert (= (and b!5075879 res!2161119) b!5075880))

(assert (=> b!5075878 m!6122956))

(declare-fun m!6125034 () Bool)

(assert (=> b!5075878 m!6125034))

(declare-fun m!6125036 () Bool)

(assert (=> d!1639509 m!6125036))

(assert (=> d!1639509 m!6122954))

(declare-fun m!6125038 () Bool)

(assert (=> d!1639509 m!6125038))

(assert (=> d!1639509 m!6122956))

(declare-fun m!6125040 () Bool)

(assert (=> d!1639509 m!6125040))

(declare-fun m!6125042 () Bool)

(assert (=> b!5075879 m!6125042))

(assert (=> b!5075879 m!6122954))

(declare-fun m!6125044 () Bool)

(assert (=> b!5075879 m!6125044))

(assert (=> b!5075879 m!6122956))

(declare-fun m!6125046 () Bool)

(assert (=> b!5075879 m!6125046))

(assert (=> b!5074894 d!1639509))

(declare-fun b!5075887 () Bool)

(declare-fun e!3166753 () List!58570)

(assert (=> b!5075887 (= e!3166753 (list!19014 (xs!18936 (left!42834 (right!43164 lt!2089940)))))))

(declare-fun b!5075888 () Bool)

(assert (=> b!5075888 (= e!3166753 (++!12800 (list!19013 (left!42834 (left!42834 (right!43164 lt!2089940)))) (list!19013 (right!43164 (left!42834 (right!43164 lt!2089940))))))))

(declare-fun b!5075885 () Bool)

(declare-fun e!3166752 () List!58570)

(assert (=> b!5075885 (= e!3166752 Nil!58446)))

(declare-fun d!1639513 () Bool)

(declare-fun c!871651 () Bool)

(assert (=> d!1639513 (= c!871651 ((_ is Empty!15576) (left!42834 (right!43164 lt!2089940))))))

(assert (=> d!1639513 (= (list!19013 (left!42834 (right!43164 lt!2089940))) e!3166752)))

(declare-fun b!5075886 () Bool)

(assert (=> b!5075886 (= e!3166752 e!3166753)))

(declare-fun c!871652 () Bool)

(assert (=> b!5075886 (= c!871652 ((_ is Leaf!25869) (left!42834 (right!43164 lt!2089940))))))

(assert (= (and d!1639513 c!871651) b!5075885))

(assert (= (and d!1639513 (not c!871651)) b!5075886))

(assert (= (and b!5075886 c!871652) b!5075887))

(assert (= (and b!5075886 (not c!871652)) b!5075888))

(declare-fun m!6125054 () Bool)

(assert (=> b!5075887 m!6125054))

(declare-fun m!6125056 () Bool)

(assert (=> b!5075888 m!6125056))

(declare-fun m!6125058 () Bool)

(assert (=> b!5075888 m!6125058))

(assert (=> b!5075888 m!6125056))

(assert (=> b!5075888 m!6125058))

(declare-fun m!6125062 () Bool)

(assert (=> b!5075888 m!6125062))

(assert (=> b!5074894 d!1639513))

(declare-fun b!5075893 () Bool)

(declare-fun e!3166756 () List!58570)

(assert (=> b!5075893 (= e!3166756 (list!19014 (xs!18936 (right!43164 (right!43164 lt!2089940)))))))

(declare-fun b!5075894 () Bool)

(assert (=> b!5075894 (= e!3166756 (++!12800 (list!19013 (left!42834 (right!43164 (right!43164 lt!2089940)))) (list!19013 (right!43164 (right!43164 (right!43164 lt!2089940))))))))

(declare-fun b!5075891 () Bool)

(declare-fun e!3166755 () List!58570)

(assert (=> b!5075891 (= e!3166755 Nil!58446)))

(declare-fun d!1639517 () Bool)

(declare-fun c!871653 () Bool)

(assert (=> d!1639517 (= c!871653 ((_ is Empty!15576) (right!43164 (right!43164 lt!2089940))))))

(assert (=> d!1639517 (= (list!19013 (right!43164 (right!43164 lt!2089940))) e!3166755)))

(declare-fun b!5075892 () Bool)

(assert (=> b!5075892 (= e!3166755 e!3166756)))

(declare-fun c!871654 () Bool)

(assert (=> b!5075892 (= c!871654 ((_ is Leaf!25869) (right!43164 (right!43164 lt!2089940))))))

(assert (= (and d!1639517 c!871653) b!5075891))

(assert (= (and d!1639517 (not c!871653)) b!5075892))

(assert (= (and b!5075892 c!871654) b!5075893))

(assert (= (and b!5075892 (not c!871654)) b!5075894))

(declare-fun m!6125064 () Bool)

(assert (=> b!5075893 m!6125064))

(declare-fun m!6125066 () Bool)

(assert (=> b!5075894 m!6125066))

(declare-fun m!6125068 () Bool)

(assert (=> b!5075894 m!6125068))

(assert (=> b!5075894 m!6125066))

(assert (=> b!5075894 m!6125068))

(declare-fun m!6125070 () Bool)

(assert (=> b!5075894 m!6125070))

(assert (=> b!5074894 d!1639517))

(assert (=> b!5074939 d!1639041))

(assert (=> b!5074939 d!1639043))

(declare-fun b!5075898 () Bool)

(declare-fun e!3166758 () Bool)

(declare-fun lt!2090199 () List!58570)

(assert (=> b!5075898 (= e!3166758 (or (not (= (list!19013 (right!43164 (right!43164 (left!42834 ys!41)))) Nil!58446)) (= lt!2090199 (list!19013 (left!42834 (right!43164 (left!42834 ys!41)))))))))

(declare-fun b!5075896 () Bool)

(declare-fun e!3166757 () List!58570)

(assert (=> b!5075896 (= e!3166757 (Cons!58446 (h!64894 (list!19013 (left!42834 (right!43164 (left!42834 ys!41))))) (++!12800 (t!371357 (list!19013 (left!42834 (right!43164 (left!42834 ys!41))))) (list!19013 (right!43164 (right!43164 (left!42834 ys!41)))))))))

(declare-fun d!1639519 () Bool)

(assert (=> d!1639519 e!3166758))

(declare-fun res!2161124 () Bool)

(assert (=> d!1639519 (=> (not res!2161124) (not e!3166758))))

(assert (=> d!1639519 (= res!2161124 (= (content!10423 lt!2090199) ((_ map or) (content!10423 (list!19013 (left!42834 (right!43164 (left!42834 ys!41))))) (content!10423 (list!19013 (right!43164 (right!43164 (left!42834 ys!41))))))))))

(assert (=> d!1639519 (= lt!2090199 e!3166757)))

(declare-fun c!871655 () Bool)

(assert (=> d!1639519 (= c!871655 ((_ is Nil!58446) (list!19013 (left!42834 (right!43164 (left!42834 ys!41))))))))

(assert (=> d!1639519 (= (++!12800 (list!19013 (left!42834 (right!43164 (left!42834 ys!41)))) (list!19013 (right!43164 (right!43164 (left!42834 ys!41))))) lt!2090199)))

(declare-fun b!5075897 () Bool)

(declare-fun res!2161123 () Bool)

(assert (=> b!5075897 (=> (not res!2161123) (not e!3166758))))

(assert (=> b!5075897 (= res!2161123 (= (size!39099 lt!2090199) (+ (size!39099 (list!19013 (left!42834 (right!43164 (left!42834 ys!41))))) (size!39099 (list!19013 (right!43164 (right!43164 (left!42834 ys!41))))))))))

(declare-fun b!5075895 () Bool)

(assert (=> b!5075895 (= e!3166757 (list!19013 (right!43164 (right!43164 (left!42834 ys!41)))))))

(assert (= (and d!1639519 c!871655) b!5075895))

(assert (= (and d!1639519 (not c!871655)) b!5075896))

(assert (= (and d!1639519 res!2161124) b!5075897))

(assert (= (and b!5075897 res!2161123) b!5075898))

(assert (=> b!5075896 m!6122430))

(declare-fun m!6125076 () Bool)

(assert (=> b!5075896 m!6125076))

(declare-fun m!6125078 () Bool)

(assert (=> d!1639519 m!6125078))

(assert (=> d!1639519 m!6122428))

(declare-fun m!6125080 () Bool)

(assert (=> d!1639519 m!6125080))

(assert (=> d!1639519 m!6122430))

(declare-fun m!6125082 () Bool)

(assert (=> d!1639519 m!6125082))

(declare-fun m!6125084 () Bool)

(assert (=> b!5075897 m!6125084))

(assert (=> b!5075897 m!6122428))

(declare-fun m!6125086 () Bool)

(assert (=> b!5075897 m!6125086))

(assert (=> b!5075897 m!6122430))

(declare-fun m!6125088 () Bool)

(assert (=> b!5075897 m!6125088))

(assert (=> b!5074629 d!1639519))

(declare-fun b!5075903 () Bool)

(declare-fun e!3166761 () List!58570)

(assert (=> b!5075903 (= e!3166761 (list!19014 (xs!18936 (left!42834 (right!43164 (left!42834 ys!41))))))))

(declare-fun b!5075904 () Bool)

(assert (=> b!5075904 (= e!3166761 (++!12800 (list!19013 (left!42834 (left!42834 (right!43164 (left!42834 ys!41))))) (list!19013 (right!43164 (left!42834 (right!43164 (left!42834 ys!41)))))))))

(declare-fun b!5075901 () Bool)

(declare-fun e!3166760 () List!58570)

(assert (=> b!5075901 (= e!3166760 Nil!58446)))

(declare-fun d!1639525 () Bool)

(declare-fun c!871657 () Bool)

(assert (=> d!1639525 (= c!871657 ((_ is Empty!15576) (left!42834 (right!43164 (left!42834 ys!41)))))))

(assert (=> d!1639525 (= (list!19013 (left!42834 (right!43164 (left!42834 ys!41)))) e!3166760)))

(declare-fun b!5075902 () Bool)

(assert (=> b!5075902 (= e!3166760 e!3166761)))

(declare-fun c!871658 () Bool)

(assert (=> b!5075902 (= c!871658 ((_ is Leaf!25869) (left!42834 (right!43164 (left!42834 ys!41)))))))

(assert (= (and d!1639525 c!871657) b!5075901))

(assert (= (and d!1639525 (not c!871657)) b!5075902))

(assert (= (and b!5075902 c!871658) b!5075903))

(assert (= (and b!5075902 (not c!871658)) b!5075904))

(declare-fun m!6125092 () Bool)

(assert (=> b!5075903 m!6125092))

(declare-fun m!6125094 () Bool)

(assert (=> b!5075904 m!6125094))

(declare-fun m!6125096 () Bool)

(assert (=> b!5075904 m!6125096))

(assert (=> b!5075904 m!6125094))

(assert (=> b!5075904 m!6125096))

(declare-fun m!6125098 () Bool)

(assert (=> b!5075904 m!6125098))

(assert (=> b!5074629 d!1639525))

(declare-fun b!5075909 () Bool)

(declare-fun e!3166764 () List!58570)

(assert (=> b!5075909 (= e!3166764 (list!19014 (xs!18936 (right!43164 (right!43164 (left!42834 ys!41))))))))

(declare-fun b!5075910 () Bool)

(assert (=> b!5075910 (= e!3166764 (++!12800 (list!19013 (left!42834 (right!43164 (right!43164 (left!42834 ys!41))))) (list!19013 (right!43164 (right!43164 (right!43164 (left!42834 ys!41)))))))))

(declare-fun b!5075907 () Bool)

(declare-fun e!3166763 () List!58570)

(assert (=> b!5075907 (= e!3166763 Nil!58446)))

(declare-fun d!1639529 () Bool)

(declare-fun c!871660 () Bool)

(assert (=> d!1639529 (= c!871660 ((_ is Empty!15576) (right!43164 (right!43164 (left!42834 ys!41)))))))

(assert (=> d!1639529 (= (list!19013 (right!43164 (right!43164 (left!42834 ys!41)))) e!3166763)))

(declare-fun b!5075908 () Bool)

(assert (=> b!5075908 (= e!3166763 e!3166764)))

(declare-fun c!871661 () Bool)

(assert (=> b!5075908 (= c!871661 ((_ is Leaf!25869) (right!43164 (right!43164 (left!42834 ys!41)))))))

(assert (= (and d!1639529 c!871660) b!5075907))

(assert (= (and d!1639529 (not c!871660)) b!5075908))

(assert (= (and b!5075908 c!871661) b!5075909))

(assert (= (and b!5075908 (not c!871661)) b!5075910))

(declare-fun m!6125100 () Bool)

(assert (=> b!5075909 m!6125100))

(declare-fun m!6125102 () Bool)

(assert (=> b!5075910 m!6125102))

(declare-fun m!6125104 () Bool)

(assert (=> b!5075910 m!6125104))

(assert (=> b!5075910 m!6125102))

(assert (=> b!5075910 m!6125104))

(declare-fun m!6125106 () Bool)

(assert (=> b!5075910 m!6125106))

(assert (=> b!5074629 d!1639529))

(declare-fun b!5075914 () Bool)

(declare-fun e!3166766 () Bool)

(declare-fun lt!2090202 () List!58570)

(assert (=> b!5075914 (= e!3166766 (or (not (= (list!19013 (right!43164 (right!43164 xs!286))) Nil!58446)) (= lt!2090202 (list!19013 (left!42834 (right!43164 xs!286))))))))

(declare-fun b!5075912 () Bool)

(declare-fun e!3166765 () List!58570)

(assert (=> b!5075912 (= e!3166765 (Cons!58446 (h!64894 (list!19013 (left!42834 (right!43164 xs!286)))) (++!12800 (t!371357 (list!19013 (left!42834 (right!43164 xs!286)))) (list!19013 (right!43164 (right!43164 xs!286))))))))

(declare-fun d!1639531 () Bool)

(assert (=> d!1639531 e!3166766))

(declare-fun res!2161126 () Bool)

(assert (=> d!1639531 (=> (not res!2161126) (not e!3166766))))

(assert (=> d!1639531 (= res!2161126 (= (content!10423 lt!2090202) ((_ map or) (content!10423 (list!19013 (left!42834 (right!43164 xs!286)))) (content!10423 (list!19013 (right!43164 (right!43164 xs!286)))))))))

(assert (=> d!1639531 (= lt!2090202 e!3166765)))

(declare-fun c!871662 () Bool)

(assert (=> d!1639531 (= c!871662 ((_ is Nil!58446) (list!19013 (left!42834 (right!43164 xs!286)))))))

(assert (=> d!1639531 (= (++!12800 (list!19013 (left!42834 (right!43164 xs!286))) (list!19013 (right!43164 (right!43164 xs!286)))) lt!2090202)))

(declare-fun b!5075913 () Bool)

(declare-fun res!2161125 () Bool)

(assert (=> b!5075913 (=> (not res!2161125) (not e!3166766))))

(assert (=> b!5075913 (= res!2161125 (= (size!39099 lt!2090202) (+ (size!39099 (list!19013 (left!42834 (right!43164 xs!286)))) (size!39099 (list!19013 (right!43164 (right!43164 xs!286)))))))))

(declare-fun b!5075911 () Bool)

(assert (=> b!5075911 (= e!3166765 (list!19013 (right!43164 (right!43164 xs!286))))))

(assert (= (and d!1639531 c!871662) b!5075911))

(assert (= (and d!1639531 (not c!871662)) b!5075912))

(assert (= (and d!1639531 res!2161126) b!5075913))

(assert (= (and b!5075913 res!2161125) b!5075914))

(assert (=> b!5075912 m!6122170))

(assert (=> b!5075912 m!6123820))

(declare-fun m!6125110 () Bool)

(assert (=> d!1639531 m!6125110))

(assert (=> d!1639531 m!6122168))

(assert (=> d!1639531 m!6123618))

(assert (=> d!1639531 m!6122170))

(assert (=> d!1639531 m!6123188))

(declare-fun m!6125114 () Bool)

(assert (=> b!5075913 m!6125114))

(assert (=> b!5075913 m!6122168))

(assert (=> b!5075913 m!6123624))

(assert (=> b!5075913 m!6122170))

(assert (=> b!5075913 m!6123195))

(assert (=> b!5074689 d!1639531))

(assert (=> b!5074689 d!1638565))

(assert (=> b!5074689 d!1638573))

(declare-fun d!1639533 () Bool)

(declare-fun c!871663 () Bool)

(assert (=> d!1639533 (= c!871663 ((_ is Node!15576) (left!42834 (left!42834 (left!42834 xs!286)))))))

(declare-fun e!3166767 () Bool)

(assert (=> d!1639533 (= (inv!77621 (left!42834 (left!42834 (left!42834 xs!286)))) e!3166767)))

(declare-fun b!5075915 () Bool)

(assert (=> b!5075915 (= e!3166767 (inv!77625 (left!42834 (left!42834 (left!42834 xs!286)))))))

(declare-fun b!5075916 () Bool)

(declare-fun e!3166768 () Bool)

(assert (=> b!5075916 (= e!3166767 e!3166768)))

(declare-fun res!2161127 () Bool)

(assert (=> b!5075916 (= res!2161127 (not ((_ is Leaf!25869) (left!42834 (left!42834 (left!42834 xs!286))))))))

(assert (=> b!5075916 (=> res!2161127 e!3166768)))

(declare-fun b!5075917 () Bool)

(assert (=> b!5075917 (= e!3166768 (inv!77626 (left!42834 (left!42834 (left!42834 xs!286)))))))

(assert (= (and d!1639533 c!871663) b!5075915))

(assert (= (and d!1639533 (not c!871663)) b!5075916))

(assert (= (and b!5075916 (not res!2161127)) b!5075917))

(declare-fun m!6125118 () Bool)

(assert (=> b!5075915 m!6125118))

(declare-fun m!6125120 () Bool)

(assert (=> b!5075917 m!6125120))

(assert (=> b!5075086 d!1639533))

(declare-fun d!1639537 () Bool)

(declare-fun c!871666 () Bool)

(assert (=> d!1639537 (= c!871666 ((_ is Node!15576) (right!43164 (left!42834 (left!42834 xs!286)))))))

(declare-fun e!3166771 () Bool)

(assert (=> d!1639537 (= (inv!77621 (right!43164 (left!42834 (left!42834 xs!286)))) e!3166771)))

(declare-fun b!5075922 () Bool)

(assert (=> b!5075922 (= e!3166771 (inv!77625 (right!43164 (left!42834 (left!42834 xs!286)))))))

(declare-fun b!5075923 () Bool)

(declare-fun e!3166772 () Bool)

(assert (=> b!5075923 (= e!3166771 e!3166772)))

(declare-fun res!2161128 () Bool)

(assert (=> b!5075923 (= res!2161128 (not ((_ is Leaf!25869) (right!43164 (left!42834 (left!42834 xs!286))))))))

(assert (=> b!5075923 (=> res!2161128 e!3166772)))

(declare-fun b!5075924 () Bool)

(assert (=> b!5075924 (= e!3166772 (inv!77626 (right!43164 (left!42834 (left!42834 xs!286)))))))

(assert (= (and d!1639537 c!871666) b!5075922))

(assert (= (and d!1639537 (not c!871666)) b!5075923))

(assert (= (and b!5075923 (not res!2161128)) b!5075924))

(declare-fun m!6125122 () Bool)

(assert (=> b!5075922 m!6125122))

(declare-fun m!6125124 () Bool)

(assert (=> b!5075924 m!6125124))

(assert (=> b!5075086 d!1639537))

(assert (=> bm!353508 d!1639067))

(assert (=> bm!353522 d!1639531))

(declare-fun bm!353657 () Bool)

(declare-fun call!353665 () List!58570)

(declare-fun call!353664 () List!58570)

(assert (=> bm!353657 (= call!353665 (++!12800 call!353664 (list!19013 (right!43164 ys!41))))))

(declare-fun bm!353658 () Bool)

(assert (=> bm!353658 (= call!353664 (++!12800 (t!371357 (list!19013 xs!286)) (list!19013 (left!42834 ys!41))))))

(declare-fun d!1639539 () Bool)

(declare-fun e!3166773 () Bool)

(assert (=> d!1639539 e!3166773))

(declare-fun c!871667 () Bool)

(assert (=> d!1639539 (= c!871667 ((_ is Nil!58446) (t!371357 (list!19013 xs!286))))))

(assert (=> d!1639539 (= (appendAssoc!308 (t!371357 (list!19013 xs!286)) (list!19013 (left!42834 ys!41)) (list!19013 (right!43164 ys!41))) true)))

(declare-fun bm!353659 () Bool)

(declare-fun call!353663 () List!58570)

(declare-fun call!353662 () List!58570)

(assert (=> bm!353659 (= call!353663 (++!12800 (t!371357 (list!19013 xs!286)) call!353662))))

(declare-fun b!5075925 () Bool)

(assert (=> b!5075925 (= e!3166773 (= call!353665 call!353663))))

(declare-fun lt!2090203 () Bool)

(assert (=> b!5075925 (= lt!2090203 (appendAssoc!308 (t!371357 (t!371357 (list!19013 xs!286))) (list!19013 (left!42834 ys!41)) (list!19013 (right!43164 ys!41))))))

(declare-fun b!5075926 () Bool)

(assert (=> b!5075926 (= e!3166773 (= call!353665 call!353663))))

(declare-fun bm!353660 () Bool)

(assert (=> bm!353660 (= call!353662 (++!12800 (list!19013 (left!42834 ys!41)) (list!19013 (right!43164 ys!41))))))

(assert (= (and d!1639539 c!871667) b!5075926))

(assert (= (and d!1639539 (not c!871667)) b!5075925))

(assert (= (or b!5075926 b!5075925) bm!353658))

(assert (= (or b!5075926 b!5075925) bm!353660))

(assert (= (or b!5075926 b!5075925) bm!353659))

(assert (= (or b!5075926 b!5075925) bm!353657))

(assert (=> b!5075925 m!6122036))

(assert (=> b!5075925 m!6122038))

(declare-fun m!6125134 () Bool)

(assert (=> b!5075925 m!6125134))

(assert (=> bm!353658 m!6122036))

(assert (=> bm!353658 m!6123246))

(assert (=> bm!353657 m!6122038))

(declare-fun m!6125136 () Bool)

(assert (=> bm!353657 m!6125136))

(assert (=> bm!353660 m!6122036))

(assert (=> bm!353660 m!6122038))

(assert (=> bm!353660 m!6122040))

(declare-fun m!6125138 () Bool)

(assert (=> bm!353659 m!6125138))

(assert (=> b!5074708 d!1639539))

(declare-fun b!5075934 () Bool)

(declare-fun lt!2090204 () List!58570)

(declare-fun e!3166777 () Bool)

(assert (=> b!5075934 (= e!3166777 (or (not (= (++!12800 (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 ys!41)) Nil!58446)) (= lt!2090204 call!353588)))))

(declare-fun e!3166776 () List!58570)

(declare-fun b!5075932 () Bool)

(assert (=> b!5075932 (= e!3166776 (Cons!58446 (h!64894 call!353588) (++!12800 (t!371357 call!353588) (++!12800 (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 ys!41)))))))

(declare-fun d!1639543 () Bool)

(assert (=> d!1639543 e!3166777))

(declare-fun res!2161130 () Bool)

(assert (=> d!1639543 (=> (not res!2161130) (not e!3166777))))

(assert (=> d!1639543 (= res!2161130 (= (content!10423 lt!2090204) ((_ map or) (content!10423 call!353588) (content!10423 (++!12800 (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 ys!41))))))))

(assert (=> d!1639543 (= lt!2090204 e!3166776)))

(declare-fun c!871670 () Bool)

(assert (=> d!1639543 (= c!871670 ((_ is Nil!58446) call!353588))))

(assert (=> d!1639543 (= (++!12800 call!353588 (++!12800 (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 ys!41))) lt!2090204)))

(declare-fun b!5075933 () Bool)

(declare-fun res!2161129 () Bool)

(assert (=> b!5075933 (=> (not res!2161129) (not e!3166777))))

(assert (=> b!5075933 (= res!2161129 (= (size!39099 lt!2090204) (+ (size!39099 call!353588) (size!39099 (++!12800 (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 ys!41))))))))

(declare-fun b!5075931 () Bool)

(assert (=> b!5075931 (= e!3166776 (++!12800 (list!19013 (right!43164 (right!43164 xs!286))) (list!19013 ys!41)))))

(assert (= (and d!1639543 c!871670) b!5075931))

(assert (= (and d!1639543 (not c!871670)) b!5075932))

(assert (= (and d!1639543 res!2161130) b!5075933))

(assert (= (and b!5075933 res!2161129) b!5075934))

(assert (=> b!5075932 m!6122186))

(declare-fun m!6125148 () Bool)

(assert (=> b!5075932 m!6125148))

(declare-fun m!6125150 () Bool)

(assert (=> d!1639543 m!6125150))

(declare-fun m!6125152 () Bool)

(assert (=> d!1639543 m!6125152))

(assert (=> d!1639543 m!6122186))

(assert (=> d!1639543 m!6124222))

(declare-fun m!6125154 () Bool)

(assert (=> b!5075933 m!6125154))

(declare-fun m!6125156 () Bool)

(assert (=> b!5075933 m!6125156))

(assert (=> b!5075933 m!6122186))

(assert (=> b!5075933 m!6124226))

(assert (=> bm!353581 d!1639543))

(declare-fun d!1639547 () Bool)

(assert (=> d!1639547 (= (isEmpty!31656 (list!19013 (right!43164 xs!286))) ((_ is Nil!58446) (list!19013 (right!43164 xs!286))))))

(assert (=> d!1638555 d!1639547))

(assert (=> d!1638555 d!1638585))

(assert (=> d!1638555 d!1639075))

(declare-fun d!1639549 () Bool)

(declare-fun res!2161131 () Bool)

(declare-fun e!3166779 () Bool)

(assert (=> d!1639549 (=> (not res!2161131) (not e!3166779))))

(assert (=> d!1639549 (= res!2161131 (= (csize!31382 (right!43164 (right!43164 xs!286))) (+ (size!39101 (left!42834 (right!43164 (right!43164 xs!286)))) (size!39101 (right!43164 (right!43164 (right!43164 xs!286)))))))))

(assert (=> d!1639549 (= (inv!77625 (right!43164 (right!43164 xs!286))) e!3166779)))

(declare-fun b!5075937 () Bool)

(declare-fun res!2161132 () Bool)

(assert (=> b!5075937 (=> (not res!2161132) (not e!3166779))))

(assert (=> b!5075937 (= res!2161132 (and (not (= (left!42834 (right!43164 (right!43164 xs!286))) Empty!15576)) (not (= (right!43164 (right!43164 (right!43164 xs!286))) Empty!15576))))))

(declare-fun b!5075938 () Bool)

(declare-fun res!2161133 () Bool)

(assert (=> b!5075938 (=> (not res!2161133) (not e!3166779))))

(assert (=> b!5075938 (= res!2161133 (= (cheight!15787 (right!43164 (right!43164 xs!286))) (+ (max!0 (height!2153 (left!42834 (right!43164 (right!43164 xs!286)))) (height!2153 (right!43164 (right!43164 (right!43164 xs!286))))) 1)))))

(declare-fun b!5075939 () Bool)

(assert (=> b!5075939 (= e!3166779 (<= 0 (cheight!15787 (right!43164 (right!43164 xs!286)))))))

(assert (= (and d!1639549 res!2161131) b!5075937))

(assert (= (and b!5075937 res!2161132) b!5075938))

(assert (= (and b!5075938 res!2161133) b!5075939))

(declare-fun m!6125160 () Bool)

(assert (=> d!1639549 m!6125160))

(declare-fun m!6125162 () Bool)

(assert (=> d!1639549 m!6125162))

(assert (=> b!5075938 m!6124356))

(assert (=> b!5075938 m!6124358))

(assert (=> b!5075938 m!6124356))

(assert (=> b!5075938 m!6124358))

(declare-fun m!6125164 () Bool)

(assert (=> b!5075938 m!6125164))

(assert (=> b!5074768 d!1639549))

(declare-fun d!1639555 () Bool)

(declare-fun res!2161134 () Bool)

(declare-fun e!3166780 () Bool)

(assert (=> d!1639555 (=> (not res!2161134) (not e!3166780))))

(assert (=> d!1639555 (= res!2161134 (<= (size!39099 (list!19014 (xs!18936 (left!42834 (left!42834 xs!286))))) 512))))

(assert (=> d!1639555 (= (inv!77626 (left!42834 (left!42834 xs!286))) e!3166780)))

(declare-fun b!5075940 () Bool)

(declare-fun res!2161135 () Bool)

(assert (=> b!5075940 (=> (not res!2161135) (not e!3166780))))

(assert (=> b!5075940 (= res!2161135 (= (csize!31383 (left!42834 (left!42834 xs!286))) (size!39099 (list!19014 (xs!18936 (left!42834 (left!42834 xs!286)))))))))

(declare-fun b!5075941 () Bool)

(assert (=> b!5075941 (= e!3166780 (and (> (csize!31383 (left!42834 (left!42834 xs!286))) 0) (<= (csize!31383 (left!42834 (left!42834 xs!286))) 512)))))

(assert (= (and d!1639555 res!2161134) b!5075940))

(assert (= (and b!5075940 res!2161135) b!5075941))

(assert (=> d!1639555 m!6124126))

(assert (=> d!1639555 m!6124126))

(declare-fun m!6125168 () Bool)

(assert (=> d!1639555 m!6125168))

(assert (=> b!5075940 m!6124126))

(assert (=> b!5075940 m!6124126))

(assert (=> b!5075940 m!6125168))

(assert (=> b!5075002 d!1639555))

(declare-fun b!5075946 () Bool)

(declare-fun e!3166783 () Bool)

(declare-fun tp!1416356 () Bool)

(assert (=> b!5075946 (= e!3166783 (and tp_is_empty!37075 tp!1416356))))

(assert (=> b!5075097 (= tp!1416321 e!3166783)))

(assert (= (and b!5075097 ((_ is Cons!58446) (innerList!15664 (xs!18936 (left!42834 (right!43164 ys!41)))))) b!5075946))

(declare-fun tp!1416358 () Bool)

(declare-fun e!3166784 () Bool)

(declare-fun tp!1416357 () Bool)

(declare-fun b!5075947 () Bool)

(assert (=> b!5075947 (= e!3166784 (and (inv!77621 (left!42834 (left!42834 (right!43164 (right!43164 xs!286))))) tp!1416357 (inv!77621 (right!43164 (left!42834 (right!43164 (right!43164 xs!286))))) tp!1416358))))

(declare-fun b!5075949 () Bool)

(declare-fun e!3166785 () Bool)

(declare-fun tp!1416359 () Bool)

(assert (=> b!5075949 (= e!3166785 tp!1416359)))

(declare-fun b!5075948 () Bool)

(assert (=> b!5075948 (= e!3166784 (and (inv!77622 (xs!18936 (left!42834 (right!43164 (right!43164 xs!286))))) e!3166785))))

(assert (=> b!5075066 (= tp!1416299 (and (inv!77621 (left!42834 (right!43164 (right!43164 xs!286)))) e!3166784))))

(assert (= (and b!5075066 ((_ is Node!15576) (left!42834 (right!43164 (right!43164 xs!286))))) b!5075947))

(assert (= b!5075948 b!5075949))

(assert (= (and b!5075066 ((_ is Leaf!25869) (left!42834 (right!43164 (right!43164 xs!286))))) b!5075948))

(declare-fun m!6125178 () Bool)

(assert (=> b!5075947 m!6125178))

(declare-fun m!6125180 () Bool)

(assert (=> b!5075947 m!6125180))

(declare-fun m!6125182 () Bool)

(assert (=> b!5075948 m!6125182))

(assert (=> b!5075066 m!6123312))

(declare-fun tp!1416360 () Bool)

(declare-fun e!3166795 () Bool)

(declare-fun tp!1416361 () Bool)

(declare-fun b!5075959 () Bool)

(assert (=> b!5075959 (= e!3166795 (and (inv!77621 (left!42834 (right!43164 (right!43164 (right!43164 xs!286))))) tp!1416360 (inv!77621 (right!43164 (right!43164 (right!43164 (right!43164 xs!286))))) tp!1416361))))

(declare-fun b!5075961 () Bool)

(declare-fun e!3166796 () Bool)

(declare-fun tp!1416362 () Bool)

(assert (=> b!5075961 (= e!3166796 tp!1416362)))

(declare-fun b!5075960 () Bool)

(assert (=> b!5075960 (= e!3166795 (and (inv!77622 (xs!18936 (right!43164 (right!43164 (right!43164 xs!286))))) e!3166796))))

(assert (=> b!5075066 (= tp!1416300 (and (inv!77621 (right!43164 (right!43164 (right!43164 xs!286)))) e!3166795))))

(assert (= (and b!5075066 ((_ is Node!15576) (right!43164 (right!43164 (right!43164 xs!286))))) b!5075959))

(assert (= b!5075960 b!5075961))

(assert (= (and b!5075066 ((_ is Leaf!25869) (right!43164 (right!43164 (right!43164 xs!286))))) b!5075960))

(declare-fun m!6125184 () Bool)

(assert (=> b!5075959 m!6125184))

(declare-fun m!6125186 () Bool)

(assert (=> b!5075959 m!6125186))

(declare-fun m!6125188 () Bool)

(assert (=> b!5075960 m!6125188))

(assert (=> b!5075066 m!6123314))

(declare-fun b!5075962 () Bool)

(declare-fun e!3166797 () Bool)

(declare-fun tp!1416363 () Bool)

(assert (=> b!5075962 (= e!3166797 (and tp_is_empty!37075 tp!1416363))))

(assert (=> b!5075093 (= tp!1416317 e!3166797)))

(assert (= (and b!5075093 ((_ is Cons!58446) (t!371357 (innerList!15664 (xs!18936 (left!42834 ys!41)))))) b!5075962))

(declare-fun b!5075963 () Bool)

(declare-fun e!3166798 () Bool)

(declare-fun tp!1416364 () Bool)

(assert (=> b!5075963 (= e!3166798 (and tp_is_empty!37075 tp!1416364))))

(assert (=> b!5075071 (= tp!1416304 e!3166798)))

(assert (= (and b!5075071 ((_ is Cons!58446) (innerList!15664 (xs!18936 (left!42834 (left!42834 ys!41)))))) b!5075963))

(declare-fun b!5075964 () Bool)

(declare-fun e!3166799 () Bool)

(declare-fun tp!1416365 () Bool)

(assert (=> b!5075964 (= e!3166799 (and tp_is_empty!37075 tp!1416365))))

(assert (=> b!5075091 (= tp!1416315 e!3166799)))

(assert (= (and b!5075091 ((_ is Cons!58446) (innerList!15664 (xs!18936 (right!43164 (left!42834 xs!286)))))) b!5075964))

(declare-fun b!5075965 () Bool)

(declare-fun e!3166800 () Bool)

(declare-fun tp!1416366 () Bool)

(assert (=> b!5075965 (= e!3166800 (and tp_is_empty!37075 tp!1416366))))

(assert (=> b!5075094 (= tp!1416318 e!3166800)))

(assert (= (and b!5075094 ((_ is Cons!58446) (t!371357 (innerList!15664 (xs!18936 (left!42834 xs!286)))))) b!5075965))

(declare-fun b!5075966 () Bool)

(declare-fun e!3166801 () Bool)

(declare-fun tp!1416367 () Bool)

(assert (=> b!5075966 (= e!3166801 (and tp_is_empty!37075 tp!1416367))))

(assert (=> b!5075068 (= tp!1416301 e!3166801)))

(assert (= (and b!5075068 ((_ is Cons!58446) (innerList!15664 (xs!18936 (right!43164 (right!43164 xs!286)))))) b!5075966))

(declare-fun b!5075967 () Bool)

(declare-fun e!3166802 () Bool)

(declare-fun tp!1416368 () Bool)

(assert (=> b!5075967 (= e!3166802 (and tp_is_empty!37075 tp!1416368))))

(assert (=> b!5075084 (= tp!1416308 e!3166802)))

(assert (= (and b!5075084 ((_ is Cons!58446) (t!371357 (innerList!15664 (xs!18936 (right!43164 ys!41)))))) b!5075967))

(declare-fun e!3166803 () Bool)

(declare-fun b!5075968 () Bool)

(declare-fun tp!1416370 () Bool)

(declare-fun tp!1416369 () Bool)

(assert (=> b!5075968 (= e!3166803 (and (inv!77621 (left!42834 (left!42834 (right!43164 (right!43164 ys!41))))) tp!1416369 (inv!77621 (right!43164 (left!42834 (right!43164 (right!43164 ys!41))))) tp!1416370))))

(declare-fun b!5075970 () Bool)

(declare-fun e!3166804 () Bool)

(declare-fun tp!1416371 () Bool)

(assert (=> b!5075970 (= e!3166804 tp!1416371)))

(declare-fun b!5075969 () Bool)

(assert (=> b!5075969 (= e!3166803 (and (inv!77622 (xs!18936 (left!42834 (right!43164 (right!43164 ys!41))))) e!3166804))))

(assert (=> b!5075098 (= tp!1416322 (and (inv!77621 (left!42834 (right!43164 (right!43164 ys!41)))) e!3166803))))

(assert (= (and b!5075098 ((_ is Node!15576) (left!42834 (right!43164 (right!43164 ys!41))))) b!5075968))

(assert (= b!5075969 b!5075970))

(assert (= (and b!5075098 ((_ is Leaf!25869) (left!42834 (right!43164 (right!43164 ys!41))))) b!5075969))

(declare-fun m!6125190 () Bool)

(assert (=> b!5075968 m!6125190))

(declare-fun m!6125192 () Bool)

(assert (=> b!5075968 m!6125192))

(declare-fun m!6125194 () Bool)

(assert (=> b!5075969 m!6125194))

(assert (=> b!5075098 m!6123366))

(declare-fun b!5075971 () Bool)

(declare-fun tp!1416372 () Bool)

(declare-fun e!3166805 () Bool)

(declare-fun tp!1416373 () Bool)

(assert (=> b!5075971 (= e!3166805 (and (inv!77621 (left!42834 (right!43164 (right!43164 (right!43164 ys!41))))) tp!1416372 (inv!77621 (right!43164 (right!43164 (right!43164 (right!43164 ys!41))))) tp!1416373))))

(declare-fun b!5075973 () Bool)

(declare-fun e!3166806 () Bool)

(declare-fun tp!1416374 () Bool)

(assert (=> b!5075973 (= e!3166806 tp!1416374)))

(declare-fun b!5075972 () Bool)

(assert (=> b!5075972 (= e!3166805 (and (inv!77622 (xs!18936 (right!43164 (right!43164 (right!43164 ys!41))))) e!3166806))))

(assert (=> b!5075098 (= tp!1416323 (and (inv!77621 (right!43164 (right!43164 (right!43164 ys!41)))) e!3166805))))

(assert (= (and b!5075098 ((_ is Node!15576) (right!43164 (right!43164 (right!43164 ys!41))))) b!5075971))

(assert (= b!5075972 b!5075973))

(assert (= (and b!5075098 ((_ is Leaf!25869) (right!43164 (right!43164 (right!43164 ys!41))))) b!5075972))

(declare-fun m!6125196 () Bool)

(assert (=> b!5075971 m!6125196))

(declare-fun m!6125198 () Bool)

(assert (=> b!5075971 m!6125198))

(declare-fun m!6125200 () Bool)

(assert (=> b!5075972 m!6125200))

(assert (=> b!5075098 m!6123368))

(declare-fun e!3166807 () Bool)

(declare-fun tp!1416375 () Bool)

(declare-fun tp!1416376 () Bool)

(declare-fun b!5075974 () Bool)

(assert (=> b!5075974 (= e!3166807 (and (inv!77621 (left!42834 (left!42834 (right!43164 (left!42834 ys!41))))) tp!1416375 (inv!77621 (right!43164 (left!42834 (right!43164 (left!42834 ys!41))))) tp!1416376))))

(declare-fun b!5075976 () Bool)

(declare-fun e!3166808 () Bool)

(declare-fun tp!1416377 () Bool)

(assert (=> b!5075976 (= e!3166808 tp!1416377)))

(declare-fun b!5075975 () Bool)

(assert (=> b!5075975 (= e!3166807 (and (inv!77622 (xs!18936 (left!42834 (right!43164 (left!42834 ys!41))))) e!3166808))))

(assert (=> b!5075081 (= tp!1416305 (and (inv!77621 (left!42834 (right!43164 (left!42834 ys!41)))) e!3166807))))

(assert (= (and b!5075081 ((_ is Node!15576) (left!42834 (right!43164 (left!42834 ys!41))))) b!5075974))

(assert (= b!5075975 b!5075976))

(assert (= (and b!5075081 ((_ is Leaf!25869) (left!42834 (right!43164 (left!42834 ys!41))))) b!5075975))

(declare-fun m!6125202 () Bool)

(assert (=> b!5075974 m!6125202))

(declare-fun m!6125204 () Bool)

(assert (=> b!5075974 m!6125204))

(declare-fun m!6125206 () Bool)

(assert (=> b!5075975 m!6125206))

(assert (=> b!5075081 m!6123336))

(declare-fun e!3166809 () Bool)

(declare-fun b!5075977 () Bool)

(declare-fun tp!1416379 () Bool)

(declare-fun tp!1416378 () Bool)

(assert (=> b!5075977 (= e!3166809 (and (inv!77621 (left!42834 (right!43164 (right!43164 (left!42834 ys!41))))) tp!1416378 (inv!77621 (right!43164 (right!43164 (right!43164 (left!42834 ys!41))))) tp!1416379))))

(declare-fun b!5075979 () Bool)

(declare-fun e!3166810 () Bool)

(declare-fun tp!1416380 () Bool)

(assert (=> b!5075979 (= e!3166810 tp!1416380)))

(declare-fun b!5075978 () Bool)

(assert (=> b!5075978 (= e!3166809 (and (inv!77622 (xs!18936 (right!43164 (right!43164 (left!42834 ys!41))))) e!3166810))))

(assert (=> b!5075081 (= tp!1416306 (and (inv!77621 (right!43164 (right!43164 (left!42834 ys!41)))) e!3166809))))

(assert (= (and b!5075081 ((_ is Node!15576) (right!43164 (right!43164 (left!42834 ys!41))))) b!5075977))

(assert (= b!5075978 b!5075979))

(assert (= (and b!5075081 ((_ is Leaf!25869) (right!43164 (right!43164 (left!42834 ys!41))))) b!5075978))

(declare-fun m!6125208 () Bool)

(assert (=> b!5075977 m!6125208))

(declare-fun m!6125210 () Bool)

(assert (=> b!5075977 m!6125210))

(declare-fun m!6125212 () Bool)

(assert (=> b!5075978 m!6125212))

(assert (=> b!5075081 m!6123338))

(declare-fun b!5075980 () Bool)

(declare-fun e!3166811 () Bool)

(declare-fun tp!1416381 () Bool)

(assert (=> b!5075980 (= e!3166811 (and tp_is_empty!37075 tp!1416381))))

(assert (=> b!5075088 (= tp!1416312 e!3166811)))

(assert (= (and b!5075088 ((_ is Cons!58446) (innerList!15664 (xs!18936 (left!42834 (left!42834 xs!286)))))) b!5075980))

(declare-fun b!5075981 () Bool)

(declare-fun e!3166812 () Bool)

(declare-fun tp!1416382 () Bool)

(assert (=> b!5075981 (= e!3166812 (and tp_is_empty!37075 tp!1416382))))

(assert (=> b!5075057 (= tp!1416298 e!3166812)))

(assert (= (and b!5075057 ((_ is Cons!58446) (innerList!15664 (xs!18936 (left!42834 (right!43164 xs!286)))))) b!5075981))

(declare-fun b!5075982 () Bool)

(declare-fun e!3166813 () Bool)

(declare-fun tp!1416383 () Bool)

(declare-fun tp!1416384 () Bool)

(assert (=> b!5075982 (= e!3166813 (and (inv!77621 (left!42834 (left!42834 (left!42834 (left!42834 xs!286))))) tp!1416383 (inv!77621 (right!43164 (left!42834 (left!42834 (left!42834 xs!286))))) tp!1416384))))

(declare-fun b!5075984 () Bool)

(declare-fun e!3166814 () Bool)

(declare-fun tp!1416385 () Bool)

(assert (=> b!5075984 (= e!3166814 tp!1416385)))

(declare-fun b!5075983 () Bool)

(assert (=> b!5075983 (= e!3166813 (and (inv!77622 (xs!18936 (left!42834 (left!42834 (left!42834 xs!286))))) e!3166814))))

(assert (=> b!5075086 (= tp!1416310 (and (inv!77621 (left!42834 (left!42834 (left!42834 xs!286)))) e!3166813))))

(assert (= (and b!5075086 ((_ is Node!15576) (left!42834 (left!42834 (left!42834 xs!286))))) b!5075982))

(assert (= b!5075983 b!5075984))

(assert (= (and b!5075086 ((_ is Leaf!25869) (left!42834 (left!42834 (left!42834 xs!286))))) b!5075983))

(declare-fun m!6125214 () Bool)

(assert (=> b!5075982 m!6125214))

(declare-fun m!6125216 () Bool)

(assert (=> b!5075982 m!6125216))

(declare-fun m!6125218 () Bool)

(assert (=> b!5075983 m!6125218))

(assert (=> b!5075086 m!6123342))

(declare-fun tp!1416387 () Bool)

(declare-fun e!3166815 () Bool)

(declare-fun tp!1416386 () Bool)

(declare-fun b!5075985 () Bool)

(assert (=> b!5075985 (= e!3166815 (and (inv!77621 (left!42834 (right!43164 (left!42834 (left!42834 xs!286))))) tp!1416386 (inv!77621 (right!43164 (right!43164 (left!42834 (left!42834 xs!286))))) tp!1416387))))

(declare-fun b!5075987 () Bool)

(declare-fun e!3166816 () Bool)

(declare-fun tp!1416388 () Bool)

(assert (=> b!5075987 (= e!3166816 tp!1416388)))

(declare-fun b!5075986 () Bool)

(assert (=> b!5075986 (= e!3166815 (and (inv!77622 (xs!18936 (right!43164 (left!42834 (left!42834 xs!286))))) e!3166816))))

(assert (=> b!5075086 (= tp!1416311 (and (inv!77621 (right!43164 (left!42834 (left!42834 xs!286)))) e!3166815))))

(assert (= (and b!5075086 ((_ is Node!15576) (right!43164 (left!42834 (left!42834 xs!286))))) b!5075985))

(assert (= b!5075986 b!5075987))

(assert (= (and b!5075086 ((_ is Leaf!25869) (right!43164 (left!42834 (left!42834 xs!286))))) b!5075986))

(declare-fun m!6125220 () Bool)

(assert (=> b!5075985 m!6125220))

(declare-fun m!6125222 () Bool)

(assert (=> b!5075985 m!6125222))

(declare-fun m!6125224 () Bool)

(assert (=> b!5075986 m!6125224))

(assert (=> b!5075086 m!6123344))

(declare-fun tp!1416389 () Bool)

(declare-fun e!3166817 () Bool)

(declare-fun b!5075988 () Bool)

(declare-fun tp!1416390 () Bool)

(assert (=> b!5075988 (= e!3166817 (and (inv!77621 (left!42834 (left!42834 (left!42834 (right!43164 xs!286))))) tp!1416389 (inv!77621 (right!43164 (left!42834 (left!42834 (right!43164 xs!286))))) tp!1416390))))

(declare-fun b!5075990 () Bool)

(declare-fun e!3166818 () Bool)

(declare-fun tp!1416391 () Bool)

(assert (=> b!5075990 (= e!3166818 tp!1416391)))

(declare-fun b!5075989 () Bool)

(assert (=> b!5075989 (= e!3166817 (and (inv!77622 (xs!18936 (left!42834 (left!42834 (right!43164 xs!286))))) e!3166818))))

(assert (=> b!5075055 (= tp!1416296 (and (inv!77621 (left!42834 (left!42834 (right!43164 xs!286)))) e!3166817))))

(assert (= (and b!5075055 ((_ is Node!15576) (left!42834 (left!42834 (right!43164 xs!286))))) b!5075988))

(assert (= b!5075989 b!5075990))

(assert (= (and b!5075055 ((_ is Leaf!25869) (left!42834 (left!42834 (right!43164 xs!286))))) b!5075989))

(declare-fun m!6125232 () Bool)

(assert (=> b!5075988 m!6125232))

(declare-fun m!6125234 () Bool)

(assert (=> b!5075988 m!6125234))

(declare-fun m!6125236 () Bool)

(assert (=> b!5075989 m!6125236))

(assert (=> b!5075055 m!6123306))

(declare-fun b!5075991 () Bool)

(declare-fun e!3166819 () Bool)

(declare-fun tp!1416393 () Bool)

(declare-fun tp!1416392 () Bool)

(assert (=> b!5075991 (= e!3166819 (and (inv!77621 (left!42834 (right!43164 (left!42834 (right!43164 xs!286))))) tp!1416392 (inv!77621 (right!43164 (right!43164 (left!42834 (right!43164 xs!286))))) tp!1416393))))

(declare-fun b!5075993 () Bool)

(declare-fun e!3166820 () Bool)

(declare-fun tp!1416394 () Bool)

(assert (=> b!5075993 (= e!3166820 tp!1416394)))

(declare-fun b!5075992 () Bool)

(assert (=> b!5075992 (= e!3166819 (and (inv!77622 (xs!18936 (right!43164 (left!42834 (right!43164 xs!286))))) e!3166820))))

(assert (=> b!5075055 (= tp!1416297 (and (inv!77621 (right!43164 (left!42834 (right!43164 xs!286)))) e!3166819))))

(assert (= (and b!5075055 ((_ is Node!15576) (right!43164 (left!42834 (right!43164 xs!286))))) b!5075991))

(assert (= b!5075992 b!5075993))

(assert (= (and b!5075055 ((_ is Leaf!25869) (right!43164 (left!42834 (right!43164 xs!286))))) b!5075992))

(declare-fun m!6125238 () Bool)

(assert (=> b!5075991 m!6125238))

(declare-fun m!6125240 () Bool)

(assert (=> b!5075991 m!6125240))

(declare-fun m!6125242 () Bool)

(assert (=> b!5075992 m!6125242))

(assert (=> b!5075055 m!6123308))

(declare-fun b!5075994 () Bool)

(declare-fun e!3166821 () Bool)

(declare-fun tp!1416395 () Bool)

(assert (=> b!5075994 (= e!3166821 (and tp_is_empty!37075 tp!1416395))))

(assert (=> b!5075101 (= tp!1416325 e!3166821)))

(assert (= (and b!5075101 ((_ is Cons!58446) (t!371357 (t!371357 (innerList!15664 (xs!18936 ys!41)))))) b!5075994))

(declare-fun tp!1416396 () Bool)

(declare-fun e!3166822 () Bool)

(declare-fun tp!1416397 () Bool)

(declare-fun b!5075995 () Bool)

(assert (=> b!5075995 (= e!3166822 (and (inv!77621 (left!42834 (left!42834 (left!42834 (right!43164 ys!41))))) tp!1416396 (inv!77621 (right!43164 (left!42834 (left!42834 (right!43164 ys!41))))) tp!1416397))))

(declare-fun b!5075997 () Bool)

(declare-fun e!3166823 () Bool)

(declare-fun tp!1416398 () Bool)

(assert (=> b!5075997 (= e!3166823 tp!1416398)))

(declare-fun b!5075996 () Bool)

(assert (=> b!5075996 (= e!3166822 (and (inv!77622 (xs!18936 (left!42834 (left!42834 (right!43164 ys!41))))) e!3166823))))

(assert (=> b!5075095 (= tp!1416319 (and (inv!77621 (left!42834 (left!42834 (right!43164 ys!41)))) e!3166822))))

(assert (= (and b!5075095 ((_ is Node!15576) (left!42834 (left!42834 (right!43164 ys!41))))) b!5075995))

(assert (= b!5075996 b!5075997))

(assert (= (and b!5075095 ((_ is Leaf!25869) (left!42834 (left!42834 (right!43164 ys!41))))) b!5075996))

(declare-fun m!6125250 () Bool)

(assert (=> b!5075995 m!6125250))

(declare-fun m!6125252 () Bool)

(assert (=> b!5075995 m!6125252))

(declare-fun m!6125254 () Bool)

(assert (=> b!5075996 m!6125254))

(assert (=> b!5075095 m!6123356))

(declare-fun tp!1416399 () Bool)

(declare-fun e!3166824 () Bool)

(declare-fun tp!1416400 () Bool)

(declare-fun b!5075998 () Bool)

(assert (=> b!5075998 (= e!3166824 (and (inv!77621 (left!42834 (right!43164 (left!42834 (right!43164 ys!41))))) tp!1416399 (inv!77621 (right!43164 (right!43164 (left!42834 (right!43164 ys!41))))) tp!1416400))))

(declare-fun b!5076000 () Bool)

(declare-fun e!3166825 () Bool)

(declare-fun tp!1416401 () Bool)

(assert (=> b!5076000 (= e!3166825 tp!1416401)))

(declare-fun b!5075999 () Bool)

(assert (=> b!5075999 (= e!3166824 (and (inv!77622 (xs!18936 (right!43164 (left!42834 (right!43164 ys!41))))) e!3166825))))

(assert (=> b!5075095 (= tp!1416320 (and (inv!77621 (right!43164 (left!42834 (right!43164 ys!41)))) e!3166824))))

(assert (= (and b!5075095 ((_ is Node!15576) (right!43164 (left!42834 (right!43164 ys!41))))) b!5075998))

(assert (= b!5075999 b!5076000))

(assert (= (and b!5075095 ((_ is Leaf!25869) (right!43164 (left!42834 (right!43164 ys!41))))) b!5075999))

(declare-fun m!6125258 () Bool)

(assert (=> b!5075998 m!6125258))

(declare-fun m!6125260 () Bool)

(assert (=> b!5075998 m!6125260))

(declare-fun m!6125262 () Bool)

(assert (=> b!5075999 m!6125262))

(assert (=> b!5075095 m!6123358))

(declare-fun b!5076001 () Bool)

(declare-fun e!3166826 () Bool)

(declare-fun tp!1416402 () Bool)

(assert (=> b!5076001 (= e!3166826 (and tp_is_empty!37075 tp!1416402))))

(assert (=> b!5075085 (= tp!1416309 e!3166826)))

(assert (= (and b!5075085 ((_ is Cons!58446) (t!371357 (t!371357 (innerList!15664 (xs!18936 xs!286)))))) b!5076001))

(declare-fun b!5076002 () Bool)

(declare-fun e!3166827 () Bool)

(declare-fun tp!1416403 () Bool)

(assert (=> b!5076002 (= e!3166827 (and tp_is_empty!37075 tp!1416403))))

(assert (=> b!5075092 (= tp!1416316 e!3166827)))

(assert (= (and b!5075092 ((_ is Cons!58446) (t!371357 (innerList!15664 (xs!18936 (right!43164 xs!286)))))) b!5076002))

(declare-fun b!5076003 () Bool)

(declare-fun e!3166828 () Bool)

(declare-fun tp!1416404 () Bool)

(assert (=> b!5076003 (= e!3166828 (and tp_is_empty!37075 tp!1416404))))

(assert (=> b!5075100 (= tp!1416324 e!3166828)))

(assert (= (and b!5075100 ((_ is Cons!58446) (innerList!15664 (xs!18936 (right!43164 (right!43164 ys!41)))))) b!5076003))

(declare-fun e!3166829 () Bool)

(declare-fun b!5076004 () Bool)

(declare-fun tp!1416406 () Bool)

(declare-fun tp!1416405 () Bool)

(assert (=> b!5076004 (= e!3166829 (and (inv!77621 (left!42834 (left!42834 (left!42834 (left!42834 ys!41))))) tp!1416405 (inv!77621 (right!43164 (left!42834 (left!42834 (left!42834 ys!41))))) tp!1416406))))

(declare-fun b!5076006 () Bool)

(declare-fun e!3166830 () Bool)

(declare-fun tp!1416407 () Bool)

(assert (=> b!5076006 (= e!3166830 tp!1416407)))

(declare-fun b!5076005 () Bool)

(assert (=> b!5076005 (= e!3166829 (and (inv!77622 (xs!18936 (left!42834 (left!42834 (left!42834 ys!41))))) e!3166830))))

(assert (=> b!5075069 (= tp!1416302 (and (inv!77621 (left!42834 (left!42834 (left!42834 ys!41)))) e!3166829))))

(assert (= (and b!5075069 ((_ is Node!15576) (left!42834 (left!42834 (left!42834 ys!41))))) b!5076004))

(assert (= b!5076005 b!5076006))

(assert (= (and b!5075069 ((_ is Leaf!25869) (left!42834 (left!42834 (left!42834 ys!41))))) b!5076005))

(declare-fun m!6125266 () Bool)

(assert (=> b!5076004 m!6125266))

(declare-fun m!6125268 () Bool)

(assert (=> b!5076004 m!6125268))

(declare-fun m!6125270 () Bool)

(assert (=> b!5076005 m!6125270))

(assert (=> b!5075069 m!6123330))

(declare-fun e!3166831 () Bool)

(declare-fun tp!1416408 () Bool)

(declare-fun b!5076007 () Bool)

(declare-fun tp!1416409 () Bool)

(assert (=> b!5076007 (= e!3166831 (and (inv!77621 (left!42834 (right!43164 (left!42834 (left!42834 ys!41))))) tp!1416408 (inv!77621 (right!43164 (right!43164 (left!42834 (left!42834 ys!41))))) tp!1416409))))

(declare-fun b!5076009 () Bool)

(declare-fun e!3166832 () Bool)

(declare-fun tp!1416410 () Bool)

(assert (=> b!5076009 (= e!3166832 tp!1416410)))

(declare-fun b!5076008 () Bool)

(assert (=> b!5076008 (= e!3166831 (and (inv!77622 (xs!18936 (right!43164 (left!42834 (left!42834 ys!41))))) e!3166832))))

(assert (=> b!5075069 (= tp!1416303 (and (inv!77621 (right!43164 (left!42834 (left!42834 ys!41)))) e!3166831))))

(assert (= (and b!5075069 ((_ is Node!15576) (right!43164 (left!42834 (left!42834 ys!41))))) b!5076007))

(assert (= b!5076008 b!5076009))

(assert (= (and b!5075069 ((_ is Leaf!25869) (right!43164 (left!42834 (left!42834 ys!41))))) b!5076008))

(declare-fun m!6125274 () Bool)

(assert (=> b!5076007 m!6125274))

(declare-fun m!6125276 () Bool)

(assert (=> b!5076007 m!6125276))

(declare-fun m!6125278 () Bool)

(assert (=> b!5076008 m!6125278))

(assert (=> b!5075069 m!6123332))

(declare-fun b!5076010 () Bool)

(declare-fun e!3166833 () Bool)

(declare-fun tp!1416411 () Bool)

(assert (=> b!5076010 (= e!3166833 (and tp_is_empty!37075 tp!1416411))))

(assert (=> b!5075083 (= tp!1416307 e!3166833)))

(assert (= (and b!5075083 ((_ is Cons!58446) (innerList!15664 (xs!18936 (right!43164 (left!42834 ys!41)))))) b!5076010))

(declare-fun b!5076011 () Bool)

(declare-fun tp!1416412 () Bool)

(declare-fun e!3166834 () Bool)

(declare-fun tp!1416413 () Bool)

(assert (=> b!5076011 (= e!3166834 (and (inv!77621 (left!42834 (left!42834 (right!43164 (left!42834 xs!286))))) tp!1416412 (inv!77621 (right!43164 (left!42834 (right!43164 (left!42834 xs!286))))) tp!1416413))))

(declare-fun b!5076013 () Bool)

(declare-fun e!3166835 () Bool)

(declare-fun tp!1416414 () Bool)

(assert (=> b!5076013 (= e!3166835 tp!1416414)))

(declare-fun b!5076012 () Bool)

(assert (=> b!5076012 (= e!3166834 (and (inv!77622 (xs!18936 (left!42834 (right!43164 (left!42834 xs!286))))) e!3166835))))

(assert (=> b!5075089 (= tp!1416313 (and (inv!77621 (left!42834 (right!43164 (left!42834 xs!286)))) e!3166834))))

(assert (= (and b!5075089 ((_ is Node!15576) (left!42834 (right!43164 (left!42834 xs!286))))) b!5076011))

(assert (= b!5076012 b!5076013))

(assert (= (and b!5075089 ((_ is Leaf!25869) (left!42834 (right!43164 (left!42834 xs!286))))) b!5076012))

(declare-fun m!6125284 () Bool)

(assert (=> b!5076011 m!6125284))

(declare-fun m!6125286 () Bool)

(assert (=> b!5076011 m!6125286))

(declare-fun m!6125288 () Bool)

(assert (=> b!5076012 m!6125288))

(assert (=> b!5075089 m!6123348))

(declare-fun tp!1416416 () Bool)

(declare-fun e!3166836 () Bool)

(declare-fun b!5076014 () Bool)

(declare-fun tp!1416415 () Bool)

(assert (=> b!5076014 (= e!3166836 (and (inv!77621 (left!42834 (right!43164 (right!43164 (left!42834 xs!286))))) tp!1416415 (inv!77621 (right!43164 (right!43164 (right!43164 (left!42834 xs!286))))) tp!1416416))))

(declare-fun b!5076016 () Bool)

(declare-fun e!3166837 () Bool)

(declare-fun tp!1416417 () Bool)

(assert (=> b!5076016 (= e!3166837 tp!1416417)))

(declare-fun b!5076015 () Bool)

(assert (=> b!5076015 (= e!3166836 (and (inv!77622 (xs!18936 (right!43164 (right!43164 (left!42834 xs!286))))) e!3166837))))

(assert (=> b!5075089 (= tp!1416314 (and (inv!77621 (right!43164 (right!43164 (left!42834 xs!286)))) e!3166836))))

(assert (= (and b!5075089 ((_ is Node!15576) (right!43164 (right!43164 (left!42834 xs!286))))) b!5076014))

(assert (= b!5076015 b!5076016))

(assert (= (and b!5075089 ((_ is Leaf!25869) (right!43164 (right!43164 (left!42834 xs!286))))) b!5076015))

(declare-fun m!6125292 () Bool)

(assert (=> b!5076014 m!6125292))

(declare-fun m!6125294 () Bool)

(assert (=> b!5076014 m!6125294))

(declare-fun m!6125296 () Bool)

(assert (=> b!5076015 m!6125296))

(assert (=> b!5075089 m!6123350))

(check-sat (not b!5075790) (not d!1639261) (not b!5075367) (not b!5075328) (not d!1639175) (not bm!353630) (not bm!353610) (not bm!353652) (not d!1639111) (not d!1639073) (not b!5075409) (not b!5075763) (not b!5075365) (not b!5075627) (not b!5075514) (not b!5075436) (not b!5075190) (not b!5075178) (not b!5075839) (not b!5075191) (not b!5075544) (not b!5075300) (not d!1638897) (not b!5075606) (not b!5075604) (not b!5075413) (not d!1639051) (not d!1639289) (not b!5075961) (not b!5075510) (not b!5075215) (not b!5075966) (not b!5075181) (not b!5076010) (not b!5075482) (not b!5075626) (not b!5075371) (not d!1639159) (not b!5075404) (not b!5075660) (not d!1638887) (not d!1639021) (not bm!353616) (not b!5075271) (not b!5075377) (not b!5075992) (not d!1639131) (not b!5075276) (not b!5075980) (not b!5075467) (not d!1639119) (not b!5075438) (not b!5075446) (not b!5075513) (not b!5075304) (not b!5075867) (not b!5075982) (not b!5075872) (not b!5076009) (not b!5075311) (not b!5075306) (not d!1639265) (not bm!353641) (not b!5075976) (not b!5075349) (not b!5075055) (not d!1639247) (not b!5075639) (not b!5075794) (not b!5076008) (not b!5075611) (not b!5075541) (not b!5075632) (not b!5075194) (not b!5075426) (not b!5075376) (not b!5075612) (not b!5075848) (not b!5075450) (not b!5075397) (not b!5076005) (not b!5075849) (not b!5075391) (not b!5075337) (not b!5076000) (not b!5075904) (not b!5075356) (not d!1639459) (not d!1639009) (not b!5075509) (not b!5075440) (not b!5075323) (not b!5075775) (not b!5075609) (not b!5075298) (not b!5075308) (not b!5075741) (not b!5075207) (not b!5076012) (not b!5075186) (not d!1639463) (not bm!353628) (not b!5075432) (not bm!353650) (not b!5075310) (not d!1639349) (not b!5075402) (not bm!353593) (not d!1639019) (not b!5075887) (not b!5075573) (not b!5075540) (not b!5075896) (not b!5075557) (not b!5075568) (not b!5075418) (not b!5075500) (not b!5075654) (not d!1639315) (not bm!353595) (not b!5075240) (not b!5075415) (not b!5075995) (not b!5075508) (not b!5075505) (not b!5075536) (not b!5075973) (not b!5075291) (not d!1638987) (not b!5075804) (not b!5075993) (not b!5075327) (not b!5075280) (not b!5075459) (not b!5075894) (not b!5075828) (not b!5076013) (not b!5075195) (not b!5075212) (not d!1639235) (not b!5075089) (not b!5075197) (not b!5075307) (not d!1638937) (not b!5075492) (not b!5075395) (not bm!353643) (not b!5075251) (not b!5075565) (not d!1639067) (not bm!353619) (not b!5076004) (not bm!353660) (not b!5075343) (not d!1639457) (not b!5075330) (not d!1638923) (not d!1638993) (not b!5075997) (not b!5075583) (not b!5075534) (not d!1639519) (not d!1638935) (not b!5075999) (not b!5075792) (not b!5075628) (not b!5075517) (not bm!353651) (not b!5075972) (not d!1639279) (not d!1639089) (not b!5076001) (not b!5075428) (not b!5075607) (not b!5075511) (not d!1639431) (not d!1639027) (not b!5075988) (not b!5075545) (not bm!353646) (not b!5075208) (not b!5075969) (not b!5075806) (not bm!353612) (not d!1639499) (not b!5075299) (not b!5075407) (not b!5075910) (not d!1639395) (not b!5075933) (not b!5075975) (not b!5075412) (not b!5075468) (not b!5075827) (not d!1639211) (not b!5075258) (not b!5076007) (not d!1639555) (not d!1638901) (not b!5075378) tp_is_empty!37075 (not bm!353639) (not b!5075949) (not b!5075971) (not b!5075477) (not b!5075429) (not b!5075270) (not b!5075200) (not bm!353638) (not b!5075909) (not b!5075915) (not bm!353607) (not b!5075420) (not b!5075798) (not b!5075220) (not b!5075897) (not b!5075484) (not b!5075530) (not bm!353599) (not b!5075847) (not b!5075559) (not b!5075267) (not bm!353644) (not b!5075086) (not b!5075647) (not b!5075066) (not b!5075714) (not b!5075564) (not b!5075289) (not d!1639549) (not b!5075458) (not b!5075991) (not b!5075358) (not b!5075521) (not b!5075374) (not b!5075531) (not b!5076003) (not b!5075384) (not bm!353642) (not b!5075204) (not b!5075644) (not b!5075643) (not b!5075701) (not b!5075808) (not b!5075574) (not bm!353606) (not b!5075359) (not b!5075566) (not b!5075533) (not bm!353604) (not b!5075990) (not b!5075504) (not b!5075985) (not bm!353615) (not b!5075705) (not b!5075408) (not b!5075788) (not d!1639351) (not b!5075683) (not b!5075285) (not b!5075750) (not b!5075860) (not b!5075554) (not b!5075231) (not b!5075959) (not bm!353631) (not b!5075613) (not b!5075834) (not bm!353625) (not b!5075393) (not b!5075984) (not b!5075671) (not b!5075279) (not b!5075406) (not b!5075749) (not b!5075095) (not b!5075253) (not b!5075776) (not b!5075740) (not bm!353602) (not b!5075424) (not b!5075170) (not b!5075383) (not b!5075355) (not b!5075850) (not b!5075960) (not d!1639277) (not b!5075753) (not bm!353603) (not bm!353605) (not b!5075658) (not d!1639227) (not b!5075294) (not b!5075665) (not b!5075663) (not b!5075903) (not b!5075447) (not b!5075851) (not bm!353647) (not b!5075978) (not d!1639507) (not b!5075697) (not b!5075414) (not d!1639157) (not b!5075433) (not b!5075380) (not b!5075464) (not b!5075962) (not d!1639453) (not b!5075347) (not b!5075998) (not d!1639029) (not b!5075924) (not b!5075638) (not b!5075454) (not d!1638899) (not b!5075762) (not b!5075987) (not b!5075964) (not b!5075681) (not b!5075245) (not b!5075211) (not b!5075986) (not bm!353614) (not b!5075226) (not bm!353598) (not d!1639095) (not b!5075655) (not bm!353645) (not b!5075368) (not d!1638985) (not b!5075175) (not b!5075556) (not b!5075695) (not b!5075893) (not b!5075633) (not b!5075502) (not d!1639109) (not b!5076011) (not b!5075236) (not d!1639411) (not b!5075219) (not b!5075646) (not d!1639255) (not b!5075081) (not b!5075210) (not b!5075795) (not b!5075946) (not b!5075563) (not b!5075417) (not b!5075205) (not b!5075979) (not d!1639225) (not b!5075069) (not b!5075940) (not b!5075767) (not d!1639531) (not b!5075476) (not b!5075346) (not d!1639141) (not b!5075676) (not bm!353613) (not b!5075344) (not b!5075302) (not d!1639307) (not b!5075595) (not b!5075685) (not b!5075472) (not b!5075361) (not bm!353596) (not b!5075266) (not b!5075970) (not b!5076002) (not b!5075562) (not b!5075225) (not b!5075925) (not d!1639185) (not d!1639161) (not b!5075878) (not bm!353597) (not b!5075599) (not bm!353633) (not d!1639287) (not b!5075275) (not bm!353611) (not b!5075284) (not b!5075470) (not b!5075518) (not b!5075375) (not b!5075610) (not b!5075974) (not b!5075994) (not bm!353649) (not b!5075675) (not b!5075363) (not b!5075561) (not b!5076015) (not b!5075405) (not b!5075498) (not b!5075198) (not b!5075777) (not b!5075233) (not b!5075575) (not d!1639371) (not d!1639509) (not b!5075859) (not b!5075379) (not d!1639505) (not b!5075869) (not b!5075756) (not b!5075213) (not b!5075229) (not b!5075938) (not b!5075693) (not b!5075520) (not d!1639151) (not b!5075913) (not d!1639467) (not d!1638957) (not bm!353620) (not b!5075549) (not b!5075427) (not b!5076014) (not b!5075768) (not b!5075578) (not b!5075203) (not b!5075441) (not b!5075570) (not bm!353608) (not d!1639039) (not b!5075981) (not b!5075174) (not b!5075388) (not b!5075227) (not d!1639439) (not b!5075572) (not d!1638969) (not d!1639473) (not b!5075495) (not b!5075996) (not b!5075416) (not d!1639063) (not b!5075932) (not b!5075922) (not b!5075809) (not b!5075297) (not b!5076016) (not b!5075965) (not b!5075680) (not b!5075487) (not bm!353618) (not b!5075351) (not b!5075410) (not b!5075879) (not b!5075678) (not b!5075463) (not b!5075259) (not b!5075249) (not d!1639311) (not b!5075239) (not b!5075209) (not b!5075525) (not b!5075431) (not d!1639487) (not b!5075603) (not d!1639329) (not b!5075584) (not b!5075538) (not b!5075430) (not d!1639107) (not b!5075591) (not b!5075576) (not b!5075983) (not d!1639049) (not b!5075614) (not b!5075354) (not b!5075989) (not b!5075571) (not b!5075625) (not b!5075679) (not b!5075846) (not b!5075425) (not b!5075473) (not b!5075390) (not bm!353659) (not b!5075620) (not b!5075456) (not b!5075444) (not d!1639483) (not b!5075754) (not b!5075216) (not d!1638907) (not b!5075963) (not b!5075400) (not b!5075948) (not b!5075451) (not b!5075242) (not d!1639079) (not b!5075579) (not b!5075550) (not b!5075224) (not b!5075201) (not d!1639061) (not d!1639165) (not b!5075840) (not b!5075512) (not b!5075318) (not b!5075493) (not b!5075222) (not bm!353617) (not b!5075526) (not b!5075967) (not b!5075968) (not d!1639313) (not b!5075372) (not b!5075254) (not b!5075667) (not b!5075623) (not d!1639441) (not b!5075340) (not b!5075703) (not b!5075977) (not b!5075235) (not d!1638939) (not b!5075912) (not d!1638921) (not b!5075223) (not d!1639075) (not b!5075947) (not b!5075296) (not b!5075489) (not b!5076006) (not b!5075273) (not bm!353657) (not d!1639203) (not b!5075453) (not b!5075182) (not d!1639543) (not d!1638959) (not d!1638919) (not b!5075202) (not b!5075820) (not bm!353601) (not b!5075098) (not b!5075888) (not d!1639173) (not bm!353609) (not b!5075529) (not b!5075600) (not bm!353594) (not d!1639183) (not d!1639129) (not d!1639387) (not d!1639065) (not b!5075496) (not b!5075335) (not b!5075592) (not b!5075301) (not b!5075624) (not b!5075357) (not b!5075422) (not b!5075682) (not b!5075917) (not bm!353658) (not d!1639153) (not b!5075662) (not b!5075486) (not b!5075621) (not b!5075588) (not bm!353648) (not b!5075333) (not b!5075315) (not b!5075316) (not b!5075553) (not b!5075387) (not b!5075288) (not b!5075247) (not b!5075443) (not b!5075312) (not b!5075587) (not b!5075339) (not b!5075185) (not d!1639133) (not d!1639381) (not b!5075179) (not b!5075669) (not b!5075262) (not b!5075594) (not b!5075352) (not d!1639177) (not b!5075309) (not b!5075707) (not b!5075321) (not b!5075261) (not d!1639005) (not d!1639179) (not bm!353600) (not d!1639291))
(check-sat)
