; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!747566 () Bool)

(assert start!747566)

(declare-fun b!7915164 () Bool)

(declare-fun e!4672240 () Bool)

(declare-fun e!4672245 () Bool)

(assert (=> b!7915164 (= e!4672240 e!4672245)))

(declare-fun res!3141544 () Bool)

(assert (=> b!7915164 (=> (not res!3141544) (not e!4672245))))

(declare-datatypes ((T!145580 0))(
  ( (T!145581 (val!32028 Int)) )
))
(declare-datatypes ((List!74540 0))(
  ( (Nil!74416) (Cons!74416 (h!80864 T!145580) (t!390035 List!74540)) )
))
(declare-fun lt!2689809 () List!74540)

(declare-fun lt!2689807 () List!74540)

(assert (=> b!7915164 (= res!3141544 (= lt!2689809 lt!2689807))))

(declare-fun lt!2689810 () List!74540)

(declare-fun lt!2689805 () List!74540)

(declare-fun ++!18234 (List!74540 List!74540) List!74540)

(assert (=> b!7915164 (= lt!2689807 (++!18234 lt!2689810 lt!2689805))))

(declare-fun ll!14 () List!74540)

(assert (=> b!7915164 (= lt!2689805 (Cons!74416 (h!80864 ll!14) Nil!74416))))

(declare-datatypes ((IArray!31801 0))(
  ( (IArray!31802 (innerList!15958 List!74540)) )
))
(declare-datatypes ((Conc!15870 0))(
  ( (Node!15870 (left!56825 Conc!15870) (right!57155 Conc!15870) (csize!31970 Int) (cheight!16081 Int)) (Leaf!30186 (xs!19252 IArray!31801) (csize!31971 Int)) (Empty!15870) )
))
(declare-fun c!5365 () Conc!15870)

(declare-fun list!19359 (Conc!15870) List!74540)

(assert (=> b!7915164 (= lt!2689810 (list!19359 c!5365))))

(declare-fun b!7915165 () Bool)

(declare-fun e!4672243 () Bool)

(declare-fun tp!2357305 () Bool)

(assert (=> b!7915165 (= e!4672243 tp!2357305)))

(declare-fun b!7915166 () Bool)

(declare-fun res!3141543 () Bool)

(declare-fun e!4672246 () Bool)

(assert (=> b!7915166 (=> (not res!3141543) (not e!4672246))))

(get-info :version)

(assert (=> b!7915166 (= res!3141543 (not ((_ is Nil!74416) ll!14)))))

(declare-fun res!3141540 () Bool)

(assert (=> start!747566 (=> (not res!3141540) (not e!4672246))))

(declare-fun isBalanced!4496 (Conc!15870) Bool)

(assert (=> start!747566 (= res!3141540 (isBalanced!4496 c!5365))))

(assert (=> start!747566 e!4672246))

(declare-fun e!4672242 () Bool)

(declare-fun inv!95545 (Conc!15870) Bool)

(assert (=> start!747566 (and (inv!95545 c!5365) e!4672242)))

(declare-fun e!4672241 () Bool)

(assert (=> start!747566 e!4672241))

(declare-fun b!7915167 () Bool)

(declare-fun inv!95546 (IArray!31801) Bool)

(assert (=> b!7915167 (= e!4672242 (and (inv!95546 (xs!19252 c!5365)) e!4672243))))

(declare-fun b!7915168 () Bool)

(declare-fun tp!2357303 () Bool)

(declare-fun tp!2357304 () Bool)

(assert (=> b!7915168 (= e!4672242 (and (inv!95545 (left!56825 c!5365)) tp!2357304 (inv!95545 (right!57155 c!5365)) tp!2357303))))

(declare-fun b!7915169 () Bool)

(declare-fun e!4672244 () Bool)

(declare-fun lt!2689804 () Conc!15870)

(assert (=> b!7915169 (= e!4672244 (isBalanced!4496 lt!2689804))))

(declare-fun b!7915170 () Bool)

(declare-fun tp_is_empty!53165 () Bool)

(declare-fun tp!2357306 () Bool)

(assert (=> b!7915170 (= e!4672241 (and tp_is_empty!53165 tp!2357306))))

(declare-fun b!7915171 () Bool)

(assert (=> b!7915171 (= e!4672246 e!4672240)))

(declare-fun res!3141542 () Bool)

(assert (=> b!7915171 (=> (not res!3141542) (not e!4672240))))

(declare-fun lt!2689806 () Conc!15870)

(assert (=> b!7915171 (= res!3141542 (= (list!19359 lt!2689806) (++!18234 lt!2689809 (t!390035 ll!14))))))

(assert (=> b!7915171 (= lt!2689809 (list!19359 lt!2689804))))

(declare-fun rec!51 (List!74540 Conc!15870) Conc!15870)

(assert (=> b!7915171 (= lt!2689806 (rec!51 (t!390035 ll!14) lt!2689804))))

(declare-fun append!1112 (Conc!15870 T!145580) Conc!15870)

(assert (=> b!7915171 (= lt!2689804 (append!1112 c!5365 (h!80864 ll!14)))))

(declare-fun b!7915172 () Bool)

(assert (=> b!7915172 (= e!4672245 (not e!4672244))))

(declare-fun res!3141541 () Bool)

(assert (=> b!7915172 (=> res!3141541 e!4672244)))

(declare-fun lt!2689808 () List!74540)

(declare-fun $colon$colon!3417 (List!74540 T!145580) List!74540)

(assert (=> b!7915172 (= res!3141541 (not (= lt!2689808 (++!18234 lt!2689810 ($colon$colon!3417 (t!390035 ll!14) (h!80864 ll!14))))))))

(declare-fun lt!2689811 () List!74540)

(assert (=> b!7915172 (= lt!2689808 (++!18234 lt!2689810 lt!2689811))))

(assert (=> b!7915172 (= lt!2689808 (++!18234 lt!2689807 (t!390035 ll!14)))))

(assert (=> b!7915172 (= lt!2689811 (++!18234 lt!2689805 (t!390035 ll!14)))))

(declare-datatypes ((Unit!169533 0))(
  ( (Unit!169534) )
))
(declare-fun lt!2689803 () Unit!169533)

(declare-fun lemmaConcatAssociativity!3134 (List!74540 List!74540 List!74540) Unit!169533)

(assert (=> b!7915172 (= lt!2689803 (lemmaConcatAssociativity!3134 lt!2689810 lt!2689805 (t!390035 ll!14)))))

(assert (= (and start!747566 res!3141540) b!7915166))

(assert (= (and b!7915166 res!3141543) b!7915171))

(assert (= (and b!7915171 res!3141542) b!7915164))

(assert (= (and b!7915164 res!3141544) b!7915172))

(assert (= (and b!7915172 (not res!3141541)) b!7915169))

(assert (= (and start!747566 ((_ is Node!15870) c!5365)) b!7915168))

(assert (= b!7915167 b!7915165))

(assert (= (and start!747566 ((_ is Leaf!30186) c!5365)) b!7915167))

(assert (= (and start!747566 ((_ is Cons!74416) ll!14)) b!7915170))

(declare-fun m!8289166 () Bool)

(assert (=> b!7915167 m!8289166))

(declare-fun m!8289168 () Bool)

(assert (=> b!7915168 m!8289168))

(declare-fun m!8289170 () Bool)

(assert (=> b!7915168 m!8289170))

(declare-fun m!8289172 () Bool)

(assert (=> start!747566 m!8289172))

(declare-fun m!8289174 () Bool)

(assert (=> start!747566 m!8289174))

(declare-fun m!8289176 () Bool)

(assert (=> b!7915172 m!8289176))

(declare-fun m!8289178 () Bool)

(assert (=> b!7915172 m!8289178))

(declare-fun m!8289180 () Bool)

(assert (=> b!7915172 m!8289180))

(declare-fun m!8289182 () Bool)

(assert (=> b!7915172 m!8289182))

(declare-fun m!8289184 () Bool)

(assert (=> b!7915172 m!8289184))

(declare-fun m!8289186 () Bool)

(assert (=> b!7915172 m!8289186))

(assert (=> b!7915172 m!8289176))

(declare-fun m!8289188 () Bool)

(assert (=> b!7915164 m!8289188))

(declare-fun m!8289190 () Bool)

(assert (=> b!7915164 m!8289190))

(declare-fun m!8289192 () Bool)

(assert (=> b!7915171 m!8289192))

(declare-fun m!8289194 () Bool)

(assert (=> b!7915171 m!8289194))

(declare-fun m!8289196 () Bool)

(assert (=> b!7915171 m!8289196))

(declare-fun m!8289198 () Bool)

(assert (=> b!7915171 m!8289198))

(declare-fun m!8289200 () Bool)

(assert (=> b!7915171 m!8289200))

(declare-fun m!8289202 () Bool)

(assert (=> b!7915169 m!8289202))

(check-sat (not b!7915164) (not b!7915169) tp_is_empty!53165 (not b!7915170) (not b!7915171) (not b!7915167) (not start!747566) (not b!7915168) (not b!7915172) (not b!7915165))
(check-sat)
(get-model)

(declare-fun b!7915205 () Bool)

(declare-fun res!3141567 () Bool)

(declare-fun e!4672261 () Bool)

(assert (=> b!7915205 (=> (not res!3141567) (not e!4672261))))

(assert (=> b!7915205 (= res!3141567 (isBalanced!4496 (right!57155 c!5365)))))

(declare-fun b!7915206 () Bool)

(declare-fun isEmpty!42730 (Conc!15870) Bool)

(assert (=> b!7915206 (= e!4672261 (not (isEmpty!42730 (right!57155 c!5365))))))

(declare-fun d!2361440 () Bool)

(declare-fun res!3141570 () Bool)

(declare-fun e!4672262 () Bool)

(assert (=> d!2361440 (=> res!3141570 e!4672262)))

(assert (=> d!2361440 (= res!3141570 (not ((_ is Node!15870) c!5365)))))

(assert (=> d!2361440 (= (isBalanced!4496 c!5365) e!4672262)))

(declare-fun b!7915207 () Bool)

(assert (=> b!7915207 (= e!4672262 e!4672261)))

(declare-fun res!3141572 () Bool)

(assert (=> b!7915207 (=> (not res!3141572) (not e!4672261))))

(declare-fun height!2185 (Conc!15870) Int)

(assert (=> b!7915207 (= res!3141572 (<= (- 1) (- (height!2185 (left!56825 c!5365)) (height!2185 (right!57155 c!5365)))))))

(declare-fun b!7915208 () Bool)

(declare-fun res!3141568 () Bool)

(assert (=> b!7915208 (=> (not res!3141568) (not e!4672261))))

(assert (=> b!7915208 (= res!3141568 (not (isEmpty!42730 (left!56825 c!5365))))))

(declare-fun b!7915209 () Bool)

(declare-fun res!3141571 () Bool)

(assert (=> b!7915209 (=> (not res!3141571) (not e!4672261))))

(assert (=> b!7915209 (= res!3141571 (isBalanced!4496 (left!56825 c!5365)))))

(declare-fun b!7915210 () Bool)

(declare-fun res!3141569 () Bool)

(assert (=> b!7915210 (=> (not res!3141569) (not e!4672261))))

(assert (=> b!7915210 (= res!3141569 (<= (- (height!2185 (left!56825 c!5365)) (height!2185 (right!57155 c!5365))) 1))))

(assert (= (and d!2361440 (not res!3141570)) b!7915207))

(assert (= (and b!7915207 res!3141572) b!7915210))

(assert (= (and b!7915210 res!3141569) b!7915209))

(assert (= (and b!7915209 res!3141571) b!7915205))

(assert (= (and b!7915205 res!3141567) b!7915208))

(assert (= (and b!7915208 res!3141568) b!7915206))

(declare-fun m!8289246 () Bool)

(assert (=> b!7915206 m!8289246))

(declare-fun m!8289250 () Bool)

(assert (=> b!7915209 m!8289250))

(declare-fun m!8289256 () Bool)

(assert (=> b!7915208 m!8289256))

(declare-fun m!8289258 () Bool)

(assert (=> b!7915207 m!8289258))

(declare-fun m!8289260 () Bool)

(assert (=> b!7915207 m!8289260))

(declare-fun m!8289262 () Bool)

(assert (=> b!7915205 m!8289262))

(assert (=> b!7915210 m!8289258))

(assert (=> b!7915210 m!8289260))

(assert (=> start!747566 d!2361440))

(declare-fun d!2361452 () Bool)

(declare-fun c!1452321 () Bool)

(assert (=> d!2361452 (= c!1452321 ((_ is Node!15870) c!5365))))

(declare-fun e!4672269 () Bool)

(assert (=> d!2361452 (= (inv!95545 c!5365) e!4672269)))

(declare-fun b!7915221 () Bool)

(declare-fun inv!95547 (Conc!15870) Bool)

(assert (=> b!7915221 (= e!4672269 (inv!95547 c!5365))))

(declare-fun b!7915222 () Bool)

(declare-fun e!4672270 () Bool)

(assert (=> b!7915222 (= e!4672269 e!4672270)))

(declare-fun res!3141577 () Bool)

(assert (=> b!7915222 (= res!3141577 (not ((_ is Leaf!30186) c!5365)))))

(assert (=> b!7915222 (=> res!3141577 e!4672270)))

(declare-fun b!7915223 () Bool)

(declare-fun inv!95548 (Conc!15870) Bool)

(assert (=> b!7915223 (= e!4672270 (inv!95548 c!5365))))

(assert (= (and d!2361452 c!1452321) b!7915221))

(assert (= (and d!2361452 (not c!1452321)) b!7915222))

(assert (= (and b!7915222 (not res!3141577)) b!7915223))

(declare-fun m!8289270 () Bool)

(assert (=> b!7915221 m!8289270))

(declare-fun m!8289272 () Bool)

(assert (=> b!7915223 m!8289272))

(assert (=> start!747566 d!2361452))

(declare-fun b!7915251 () Bool)

(declare-fun e!4672281 () List!74540)

(assert (=> b!7915251 (= e!4672281 (Cons!74416 (h!80864 lt!2689810) (++!18234 (t!390035 lt!2689810) lt!2689805)))))

(declare-fun d!2361456 () Bool)

(declare-fun e!4672282 () Bool)

(assert (=> d!2361456 e!4672282))

(declare-fun res!3141601 () Bool)

(assert (=> d!2361456 (=> (not res!3141601) (not e!4672282))))

(declare-fun lt!2689823 () List!74540)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15760 (List!74540) (InoxSet T!145580))

(assert (=> d!2361456 (= res!3141601 (= (content!15760 lt!2689823) ((_ map or) (content!15760 lt!2689810) (content!15760 lt!2689805))))))

(assert (=> d!2361456 (= lt!2689823 e!4672281)))

(declare-fun c!1452324 () Bool)

(assert (=> d!2361456 (= c!1452324 ((_ is Nil!74416) lt!2689810))))

(assert (=> d!2361456 (= (++!18234 lt!2689810 lt!2689805) lt!2689823)))

(declare-fun b!7915250 () Bool)

(assert (=> b!7915250 (= e!4672281 lt!2689805)))

(declare-fun b!7915253 () Bool)

(assert (=> b!7915253 (= e!4672282 (or (not (= lt!2689805 Nil!74416)) (= lt!2689823 lt!2689810)))))

(declare-fun b!7915252 () Bool)

(declare-fun res!3141600 () Bool)

(assert (=> b!7915252 (=> (not res!3141600) (not e!4672282))))

(declare-fun size!43193 (List!74540) Int)

(assert (=> b!7915252 (= res!3141600 (= (size!43193 lt!2689823) (+ (size!43193 lt!2689810) (size!43193 lt!2689805))))))

(assert (= (and d!2361456 c!1452324) b!7915250))

(assert (= (and d!2361456 (not c!1452324)) b!7915251))

(assert (= (and d!2361456 res!3141601) b!7915252))

(assert (= (and b!7915252 res!3141600) b!7915253))

(declare-fun m!8289286 () Bool)

(assert (=> b!7915251 m!8289286))

(declare-fun m!8289288 () Bool)

(assert (=> d!2361456 m!8289288))

(declare-fun m!8289290 () Bool)

(assert (=> d!2361456 m!8289290))

(declare-fun m!8289292 () Bool)

(assert (=> d!2361456 m!8289292))

(declare-fun m!8289294 () Bool)

(assert (=> b!7915252 m!8289294))

(declare-fun m!8289296 () Bool)

(assert (=> b!7915252 m!8289296))

(declare-fun m!8289298 () Bool)

(assert (=> b!7915252 m!8289298))

(assert (=> b!7915164 d!2361456))

(declare-fun d!2361460 () Bool)

(declare-fun c!1452331 () Bool)

(assert (=> d!2361460 (= c!1452331 ((_ is Empty!15870) c!5365))))

(declare-fun e!4672291 () List!74540)

(assert (=> d!2361460 (= (list!19359 c!5365) e!4672291)))

(declare-fun b!7915271 () Bool)

(declare-fun e!4672292 () List!74540)

(assert (=> b!7915271 (= e!4672292 (++!18234 (list!19359 (left!56825 c!5365)) (list!19359 (right!57155 c!5365))))))

(declare-fun b!7915268 () Bool)

(assert (=> b!7915268 (= e!4672291 Nil!74416)))

(declare-fun b!7915269 () Bool)

(assert (=> b!7915269 (= e!4672291 e!4672292)))

(declare-fun c!1452332 () Bool)

(assert (=> b!7915269 (= c!1452332 ((_ is Leaf!30186) c!5365))))

(declare-fun b!7915270 () Bool)

(declare-fun list!19360 (IArray!31801) List!74540)

(assert (=> b!7915270 (= e!4672292 (list!19360 (xs!19252 c!5365)))))

(assert (= (and d!2361460 c!1452331) b!7915268))

(assert (= (and d!2361460 (not c!1452331)) b!7915269))

(assert (= (and b!7915269 c!1452332) b!7915270))

(assert (= (and b!7915269 (not c!1452332)) b!7915271))

(declare-fun m!8289300 () Bool)

(assert (=> b!7915271 m!8289300))

(declare-fun m!8289302 () Bool)

(assert (=> b!7915271 m!8289302))

(assert (=> b!7915271 m!8289300))

(assert (=> b!7915271 m!8289302))

(declare-fun m!8289308 () Bool)

(assert (=> b!7915271 m!8289308))

(declare-fun m!8289310 () Bool)

(assert (=> b!7915270 m!8289310))

(assert (=> b!7915164 d!2361460))

(declare-fun b!7915278 () Bool)

(declare-fun res!3141606 () Bool)

(declare-fun e!4672297 () Bool)

(assert (=> b!7915278 (=> (not res!3141606) (not e!4672297))))

(assert (=> b!7915278 (= res!3141606 (isBalanced!4496 (right!57155 lt!2689804)))))

(declare-fun b!7915279 () Bool)

(assert (=> b!7915279 (= e!4672297 (not (isEmpty!42730 (right!57155 lt!2689804))))))

(declare-fun d!2361464 () Bool)

(declare-fun res!3141609 () Bool)

(declare-fun e!4672298 () Bool)

(assert (=> d!2361464 (=> res!3141609 e!4672298)))

(assert (=> d!2361464 (= res!3141609 (not ((_ is Node!15870) lt!2689804)))))

(assert (=> d!2361464 (= (isBalanced!4496 lt!2689804) e!4672298)))

(declare-fun b!7915280 () Bool)

(assert (=> b!7915280 (= e!4672298 e!4672297)))

(declare-fun res!3141611 () Bool)

(assert (=> b!7915280 (=> (not res!3141611) (not e!4672297))))

(assert (=> b!7915280 (= res!3141611 (<= (- 1) (- (height!2185 (left!56825 lt!2689804)) (height!2185 (right!57155 lt!2689804)))))))

(declare-fun b!7915281 () Bool)

(declare-fun res!3141607 () Bool)

(assert (=> b!7915281 (=> (not res!3141607) (not e!4672297))))

(assert (=> b!7915281 (= res!3141607 (not (isEmpty!42730 (left!56825 lt!2689804))))))

(declare-fun b!7915282 () Bool)

(declare-fun res!3141610 () Bool)

(assert (=> b!7915282 (=> (not res!3141610) (not e!4672297))))

(assert (=> b!7915282 (= res!3141610 (isBalanced!4496 (left!56825 lt!2689804)))))

(declare-fun b!7915283 () Bool)

(declare-fun res!3141608 () Bool)

(assert (=> b!7915283 (=> (not res!3141608) (not e!4672297))))

(assert (=> b!7915283 (= res!3141608 (<= (- (height!2185 (left!56825 lt!2689804)) (height!2185 (right!57155 lt!2689804))) 1))))

(assert (= (and d!2361464 (not res!3141609)) b!7915280))

(assert (= (and b!7915280 res!3141611) b!7915283))

(assert (= (and b!7915283 res!3141608) b!7915282))

(assert (= (and b!7915282 res!3141610) b!7915278))

(assert (= (and b!7915278 res!3141606) b!7915281))

(assert (= (and b!7915281 res!3141607) b!7915279))

(declare-fun m!8289320 () Bool)

(assert (=> b!7915279 m!8289320))

(declare-fun m!8289322 () Bool)

(assert (=> b!7915282 m!8289322))

(declare-fun m!8289324 () Bool)

(assert (=> b!7915281 m!8289324))

(declare-fun m!8289326 () Bool)

(assert (=> b!7915280 m!8289326))

(declare-fun m!8289328 () Bool)

(assert (=> b!7915280 m!8289328))

(declare-fun m!8289330 () Bool)

(assert (=> b!7915278 m!8289330))

(assert (=> b!7915283 m!8289326))

(assert (=> b!7915283 m!8289328))

(assert (=> b!7915169 d!2361464))

(declare-fun d!2361470 () Bool)

(declare-fun c!1452336 () Bool)

(assert (=> d!2361470 (= c!1452336 ((_ is Node!15870) (left!56825 c!5365)))))

(declare-fun e!4672303 () Bool)

(assert (=> d!2361470 (= (inv!95545 (left!56825 c!5365)) e!4672303)))

(declare-fun b!7915293 () Bool)

(assert (=> b!7915293 (= e!4672303 (inv!95547 (left!56825 c!5365)))))

(declare-fun b!7915294 () Bool)

(declare-fun e!4672304 () Bool)

(assert (=> b!7915294 (= e!4672303 e!4672304)))

(declare-fun res!3141619 () Bool)

(assert (=> b!7915294 (= res!3141619 (not ((_ is Leaf!30186) (left!56825 c!5365))))))

(assert (=> b!7915294 (=> res!3141619 e!4672304)))

(declare-fun b!7915295 () Bool)

(assert (=> b!7915295 (= e!4672304 (inv!95548 (left!56825 c!5365)))))

(assert (= (and d!2361470 c!1452336) b!7915293))

(assert (= (and d!2361470 (not c!1452336)) b!7915294))

(assert (= (and b!7915294 (not res!3141619)) b!7915295))

(declare-fun m!8289336 () Bool)

(assert (=> b!7915293 m!8289336))

(declare-fun m!8289340 () Bool)

(assert (=> b!7915295 m!8289340))

(assert (=> b!7915168 d!2361470))

(declare-fun d!2361472 () Bool)

(declare-fun c!1452337 () Bool)

(assert (=> d!2361472 (= c!1452337 ((_ is Node!15870) (right!57155 c!5365)))))

(declare-fun e!4672305 () Bool)

(assert (=> d!2361472 (= (inv!95545 (right!57155 c!5365)) e!4672305)))

(declare-fun b!7915296 () Bool)

(assert (=> b!7915296 (= e!4672305 (inv!95547 (right!57155 c!5365)))))

(declare-fun b!7915297 () Bool)

(declare-fun e!4672306 () Bool)

(assert (=> b!7915297 (= e!4672305 e!4672306)))

(declare-fun res!3141620 () Bool)

(assert (=> b!7915297 (= res!3141620 (not ((_ is Leaf!30186) (right!57155 c!5365))))))

(assert (=> b!7915297 (=> res!3141620 e!4672306)))

(declare-fun b!7915298 () Bool)

(assert (=> b!7915298 (= e!4672306 (inv!95548 (right!57155 c!5365)))))

(assert (= (and d!2361472 c!1452337) b!7915296))

(assert (= (and d!2361472 (not c!1452337)) b!7915297))

(assert (= (and b!7915297 (not res!3141620)) b!7915298))

(declare-fun m!8289348 () Bool)

(assert (=> b!7915296 m!8289348))

(declare-fun m!8289350 () Bool)

(assert (=> b!7915298 m!8289350))

(assert (=> b!7915168 d!2361472))

(declare-fun d!2361476 () Bool)

(assert (=> d!2361476 (= (inv!95546 (xs!19252 c!5365)) (<= (size!43193 (innerList!15958 (xs!19252 c!5365))) 2147483647))))

(declare-fun bs!1968444 () Bool)

(assert (= bs!1968444 d!2361476))

(declare-fun m!8289352 () Bool)

(assert (=> bs!1968444 m!8289352))

(assert (=> b!7915167 d!2361476))

(declare-fun b!7915300 () Bool)

(declare-fun e!4672307 () List!74540)

(assert (=> b!7915300 (= e!4672307 (Cons!74416 (h!80864 lt!2689810) (++!18234 (t!390035 lt!2689810) ($colon$colon!3417 (t!390035 ll!14) (h!80864 ll!14)))))))

(declare-fun d!2361478 () Bool)

(declare-fun e!4672308 () Bool)

(assert (=> d!2361478 e!4672308))

(declare-fun res!3141622 () Bool)

(assert (=> d!2361478 (=> (not res!3141622) (not e!4672308))))

(declare-fun lt!2689824 () List!74540)

(assert (=> d!2361478 (= res!3141622 (= (content!15760 lt!2689824) ((_ map or) (content!15760 lt!2689810) (content!15760 ($colon$colon!3417 (t!390035 ll!14) (h!80864 ll!14))))))))

(assert (=> d!2361478 (= lt!2689824 e!4672307)))

(declare-fun c!1452338 () Bool)

(assert (=> d!2361478 (= c!1452338 ((_ is Nil!74416) lt!2689810))))

(assert (=> d!2361478 (= (++!18234 lt!2689810 ($colon$colon!3417 (t!390035 ll!14) (h!80864 ll!14))) lt!2689824)))

(declare-fun b!7915299 () Bool)

(assert (=> b!7915299 (= e!4672307 ($colon$colon!3417 (t!390035 ll!14) (h!80864 ll!14)))))

(declare-fun b!7915302 () Bool)

(assert (=> b!7915302 (= e!4672308 (or (not (= ($colon$colon!3417 (t!390035 ll!14) (h!80864 ll!14)) Nil!74416)) (= lt!2689824 lt!2689810)))))

(declare-fun b!7915301 () Bool)

(declare-fun res!3141621 () Bool)

(assert (=> b!7915301 (=> (not res!3141621) (not e!4672308))))

(assert (=> b!7915301 (= res!3141621 (= (size!43193 lt!2689824) (+ (size!43193 lt!2689810) (size!43193 ($colon$colon!3417 (t!390035 ll!14) (h!80864 ll!14))))))))

(assert (= (and d!2361478 c!1452338) b!7915299))

(assert (= (and d!2361478 (not c!1452338)) b!7915300))

(assert (= (and d!2361478 res!3141622) b!7915301))

(assert (= (and b!7915301 res!3141621) b!7915302))

(assert (=> b!7915300 m!8289176))

(declare-fun m!8289354 () Bool)

(assert (=> b!7915300 m!8289354))

(declare-fun m!8289356 () Bool)

(assert (=> d!2361478 m!8289356))

(assert (=> d!2361478 m!8289290))

(assert (=> d!2361478 m!8289176))

(declare-fun m!8289358 () Bool)

(assert (=> d!2361478 m!8289358))

(declare-fun m!8289360 () Bool)

(assert (=> b!7915301 m!8289360))

(assert (=> b!7915301 m!8289296))

(assert (=> b!7915301 m!8289176))

(declare-fun m!8289362 () Bool)

(assert (=> b!7915301 m!8289362))

(assert (=> b!7915172 d!2361478))

(declare-fun d!2361480 () Bool)

(assert (=> d!2361480 (= (++!18234 (++!18234 lt!2689810 lt!2689805) (t!390035 ll!14)) (++!18234 lt!2689810 (++!18234 lt!2689805 (t!390035 ll!14))))))

(declare-fun lt!2689827 () Unit!169533)

(declare-fun choose!59791 (List!74540 List!74540 List!74540) Unit!169533)

(assert (=> d!2361480 (= lt!2689827 (choose!59791 lt!2689810 lt!2689805 (t!390035 ll!14)))))

(assert (=> d!2361480 (= (lemmaConcatAssociativity!3134 lt!2689810 lt!2689805 (t!390035 ll!14)) lt!2689827)))

(declare-fun bs!1968445 () Bool)

(assert (= bs!1968445 d!2361480))

(declare-fun m!8289364 () Bool)

(assert (=> bs!1968445 m!8289364))

(assert (=> bs!1968445 m!8289188))

(assert (=> bs!1968445 m!8289188))

(declare-fun m!8289366 () Bool)

(assert (=> bs!1968445 m!8289366))

(assert (=> bs!1968445 m!8289182))

(declare-fun m!8289368 () Bool)

(assert (=> bs!1968445 m!8289368))

(assert (=> bs!1968445 m!8289182))

(assert (=> b!7915172 d!2361480))

(declare-fun b!7915304 () Bool)

(declare-fun e!4672309 () List!74540)

(assert (=> b!7915304 (= e!4672309 (Cons!74416 (h!80864 lt!2689807) (++!18234 (t!390035 lt!2689807) (t!390035 ll!14))))))

(declare-fun d!2361482 () Bool)

(declare-fun e!4672310 () Bool)

(assert (=> d!2361482 e!4672310))

(declare-fun res!3141624 () Bool)

(assert (=> d!2361482 (=> (not res!3141624) (not e!4672310))))

(declare-fun lt!2689828 () List!74540)

(assert (=> d!2361482 (= res!3141624 (= (content!15760 lt!2689828) ((_ map or) (content!15760 lt!2689807) (content!15760 (t!390035 ll!14)))))))

(assert (=> d!2361482 (= lt!2689828 e!4672309)))

(declare-fun c!1452339 () Bool)

(assert (=> d!2361482 (= c!1452339 ((_ is Nil!74416) lt!2689807))))

(assert (=> d!2361482 (= (++!18234 lt!2689807 (t!390035 ll!14)) lt!2689828)))

(declare-fun b!7915303 () Bool)

(assert (=> b!7915303 (= e!4672309 (t!390035 ll!14))))

(declare-fun b!7915306 () Bool)

(assert (=> b!7915306 (= e!4672310 (or (not (= (t!390035 ll!14) Nil!74416)) (= lt!2689828 lt!2689807)))))

(declare-fun b!7915305 () Bool)

(declare-fun res!3141623 () Bool)

(assert (=> b!7915305 (=> (not res!3141623) (not e!4672310))))

(assert (=> b!7915305 (= res!3141623 (= (size!43193 lt!2689828) (+ (size!43193 lt!2689807) (size!43193 (t!390035 ll!14)))))))

(assert (= (and d!2361482 c!1452339) b!7915303))

(assert (= (and d!2361482 (not c!1452339)) b!7915304))

(assert (= (and d!2361482 res!3141624) b!7915305))

(assert (= (and b!7915305 res!3141623) b!7915306))

(declare-fun m!8289370 () Bool)

(assert (=> b!7915304 m!8289370))

(declare-fun m!8289372 () Bool)

(assert (=> d!2361482 m!8289372))

(declare-fun m!8289374 () Bool)

(assert (=> d!2361482 m!8289374))

(declare-fun m!8289376 () Bool)

(assert (=> d!2361482 m!8289376))

(declare-fun m!8289378 () Bool)

(assert (=> b!7915305 m!8289378))

(declare-fun m!8289380 () Bool)

(assert (=> b!7915305 m!8289380))

(declare-fun m!8289382 () Bool)

(assert (=> b!7915305 m!8289382))

(assert (=> b!7915172 d!2361482))

(declare-fun d!2361484 () Bool)

(assert (=> d!2361484 (= ($colon$colon!3417 (t!390035 ll!14) (h!80864 ll!14)) (Cons!74416 (h!80864 ll!14) (t!390035 ll!14)))))

(assert (=> b!7915172 d!2361484))

(declare-fun b!7915308 () Bool)

(declare-fun e!4672311 () List!74540)

(assert (=> b!7915308 (= e!4672311 (Cons!74416 (h!80864 lt!2689810) (++!18234 (t!390035 lt!2689810) lt!2689811)))))

(declare-fun d!2361486 () Bool)

(declare-fun e!4672312 () Bool)

(assert (=> d!2361486 e!4672312))

(declare-fun res!3141626 () Bool)

(assert (=> d!2361486 (=> (not res!3141626) (not e!4672312))))

(declare-fun lt!2689829 () List!74540)

(assert (=> d!2361486 (= res!3141626 (= (content!15760 lt!2689829) ((_ map or) (content!15760 lt!2689810) (content!15760 lt!2689811))))))

(assert (=> d!2361486 (= lt!2689829 e!4672311)))

(declare-fun c!1452340 () Bool)

(assert (=> d!2361486 (= c!1452340 ((_ is Nil!74416) lt!2689810))))

(assert (=> d!2361486 (= (++!18234 lt!2689810 lt!2689811) lt!2689829)))

(declare-fun b!7915307 () Bool)

(assert (=> b!7915307 (= e!4672311 lt!2689811)))

(declare-fun b!7915310 () Bool)

(assert (=> b!7915310 (= e!4672312 (or (not (= lt!2689811 Nil!74416)) (= lt!2689829 lt!2689810)))))

(declare-fun b!7915309 () Bool)

(declare-fun res!3141625 () Bool)

(assert (=> b!7915309 (=> (not res!3141625) (not e!4672312))))

(assert (=> b!7915309 (= res!3141625 (= (size!43193 lt!2689829) (+ (size!43193 lt!2689810) (size!43193 lt!2689811))))))

(assert (= (and d!2361486 c!1452340) b!7915307))

(assert (= (and d!2361486 (not c!1452340)) b!7915308))

(assert (= (and d!2361486 res!3141626) b!7915309))

(assert (= (and b!7915309 res!3141625) b!7915310))

(declare-fun m!8289384 () Bool)

(assert (=> b!7915308 m!8289384))

(declare-fun m!8289386 () Bool)

(assert (=> d!2361486 m!8289386))

(assert (=> d!2361486 m!8289290))

(declare-fun m!8289388 () Bool)

(assert (=> d!2361486 m!8289388))

(declare-fun m!8289390 () Bool)

(assert (=> b!7915309 m!8289390))

(assert (=> b!7915309 m!8289296))

(declare-fun m!8289392 () Bool)

(assert (=> b!7915309 m!8289392))

(assert (=> b!7915172 d!2361486))

(declare-fun b!7915312 () Bool)

(declare-fun e!4672313 () List!74540)

(assert (=> b!7915312 (= e!4672313 (Cons!74416 (h!80864 lt!2689805) (++!18234 (t!390035 lt!2689805) (t!390035 ll!14))))))

(declare-fun d!2361488 () Bool)

(declare-fun e!4672314 () Bool)

(assert (=> d!2361488 e!4672314))

(declare-fun res!3141628 () Bool)

(assert (=> d!2361488 (=> (not res!3141628) (not e!4672314))))

(declare-fun lt!2689830 () List!74540)

(assert (=> d!2361488 (= res!3141628 (= (content!15760 lt!2689830) ((_ map or) (content!15760 lt!2689805) (content!15760 (t!390035 ll!14)))))))

(assert (=> d!2361488 (= lt!2689830 e!4672313)))

(declare-fun c!1452341 () Bool)

(assert (=> d!2361488 (= c!1452341 ((_ is Nil!74416) lt!2689805))))

(assert (=> d!2361488 (= (++!18234 lt!2689805 (t!390035 ll!14)) lt!2689830)))

(declare-fun b!7915311 () Bool)

(assert (=> b!7915311 (= e!4672313 (t!390035 ll!14))))

(declare-fun b!7915314 () Bool)

(assert (=> b!7915314 (= e!4672314 (or (not (= (t!390035 ll!14) Nil!74416)) (= lt!2689830 lt!2689805)))))

(declare-fun b!7915313 () Bool)

(declare-fun res!3141627 () Bool)

(assert (=> b!7915313 (=> (not res!3141627) (not e!4672314))))

(assert (=> b!7915313 (= res!3141627 (= (size!43193 lt!2689830) (+ (size!43193 lt!2689805) (size!43193 (t!390035 ll!14)))))))

(assert (= (and d!2361488 c!1452341) b!7915311))

(assert (= (and d!2361488 (not c!1452341)) b!7915312))

(assert (= (and d!2361488 res!3141628) b!7915313))

(assert (= (and b!7915313 res!3141627) b!7915314))

(declare-fun m!8289394 () Bool)

(assert (=> b!7915312 m!8289394))

(declare-fun m!8289396 () Bool)

(assert (=> d!2361488 m!8289396))

(assert (=> d!2361488 m!8289292))

(assert (=> d!2361488 m!8289376))

(declare-fun m!8289398 () Bool)

(assert (=> b!7915313 m!8289398))

(assert (=> b!7915313 m!8289298))

(assert (=> b!7915313 m!8289382))

(assert (=> b!7915172 d!2361488))

(declare-fun d!2361490 () Bool)

(declare-fun c!1452342 () Bool)

(assert (=> d!2361490 (= c!1452342 ((_ is Empty!15870) lt!2689806))))

(declare-fun e!4672315 () List!74540)

(assert (=> d!2361490 (= (list!19359 lt!2689806) e!4672315)))

(declare-fun b!7915318 () Bool)

(declare-fun e!4672316 () List!74540)

(assert (=> b!7915318 (= e!4672316 (++!18234 (list!19359 (left!56825 lt!2689806)) (list!19359 (right!57155 lt!2689806))))))

(declare-fun b!7915315 () Bool)

(assert (=> b!7915315 (= e!4672315 Nil!74416)))

(declare-fun b!7915316 () Bool)

(assert (=> b!7915316 (= e!4672315 e!4672316)))

(declare-fun c!1452343 () Bool)

(assert (=> b!7915316 (= c!1452343 ((_ is Leaf!30186) lt!2689806))))

(declare-fun b!7915317 () Bool)

(assert (=> b!7915317 (= e!4672316 (list!19360 (xs!19252 lt!2689806)))))

(assert (= (and d!2361490 c!1452342) b!7915315))

(assert (= (and d!2361490 (not c!1452342)) b!7915316))

(assert (= (and b!7915316 c!1452343) b!7915317))

(assert (= (and b!7915316 (not c!1452343)) b!7915318))

(declare-fun m!8289400 () Bool)

(assert (=> b!7915318 m!8289400))

(declare-fun m!8289402 () Bool)

(assert (=> b!7915318 m!8289402))

(assert (=> b!7915318 m!8289400))

(assert (=> b!7915318 m!8289402))

(declare-fun m!8289404 () Bool)

(assert (=> b!7915318 m!8289404))

(declare-fun m!8289406 () Bool)

(assert (=> b!7915317 m!8289406))

(assert (=> b!7915171 d!2361490))

(declare-fun d!2361492 () Bool)

(declare-fun e!4672335 () Bool)

(assert (=> d!2361492 e!4672335))

(declare-fun res!3141634 () Bool)

(assert (=> d!2361492 (=> (not res!3141634) (not e!4672335))))

(declare-fun lt!2689859 () Conc!15870)

(assert (=> d!2361492 (= res!3141634 (= (list!19359 lt!2689859) (++!18234 (list!19359 lt!2689804) (t!390035 ll!14))))))

(declare-fun e!4672336 () Conc!15870)

(assert (=> d!2361492 (= lt!2689859 e!4672336)))

(declare-fun c!1452359 () Bool)

(assert (=> d!2361492 (= c!1452359 ((_ is Nil!74416) (t!390035 ll!14)))))

(assert (=> d!2361492 (isBalanced!4496 lt!2689804)))

(assert (=> d!2361492 (= (rec!51 (t!390035 ll!14) lt!2689804) lt!2689859)))

(declare-fun b!7915350 () Bool)

(assert (=> b!7915350 (= e!4672336 lt!2689804)))

(declare-fun b!7915351 () Bool)

(assert (=> b!7915351 (= e!4672336 (rec!51 (t!390035 (t!390035 ll!14)) (append!1112 lt!2689804 (h!80864 (t!390035 ll!14)))))))

(declare-fun lt!2689856 () List!74540)

(assert (=> b!7915351 (= lt!2689856 (list!19359 lt!2689804))))

(declare-fun lt!2689858 () List!74540)

(assert (=> b!7915351 (= lt!2689858 (Cons!74416 (h!80864 (t!390035 ll!14)) Nil!74416))))

(declare-fun lt!2689860 () Unit!169533)

(assert (=> b!7915351 (= lt!2689860 (lemmaConcatAssociativity!3134 lt!2689856 lt!2689858 (t!390035 (t!390035 ll!14))))))

(assert (=> b!7915351 (= (++!18234 (++!18234 lt!2689856 lt!2689858) (t!390035 (t!390035 ll!14))) (++!18234 lt!2689856 (++!18234 lt!2689858 (t!390035 (t!390035 ll!14)))))))

(declare-fun lt!2689857 () Unit!169533)

(assert (=> b!7915351 (= lt!2689857 lt!2689860)))

(declare-fun b!7915352 () Bool)

(assert (=> b!7915352 (= e!4672335 (isBalanced!4496 lt!2689859))))

(assert (= (and d!2361492 c!1452359) b!7915350))

(assert (= (and d!2361492 (not c!1452359)) b!7915351))

(assert (= (and d!2361492 res!3141634) b!7915352))

(declare-fun m!8289444 () Bool)

(assert (=> d!2361492 m!8289444))

(assert (=> d!2361492 m!8289200))

(assert (=> d!2361492 m!8289200))

(declare-fun m!8289446 () Bool)

(assert (=> d!2361492 m!8289446))

(assert (=> d!2361492 m!8289202))

(declare-fun m!8289448 () Bool)

(assert (=> b!7915351 m!8289448))

(declare-fun m!8289450 () Bool)

(assert (=> b!7915351 m!8289450))

(declare-fun m!8289452 () Bool)

(assert (=> b!7915351 m!8289452))

(assert (=> b!7915351 m!8289200))

(assert (=> b!7915351 m!8289450))

(declare-fun m!8289454 () Bool)

(assert (=> b!7915351 m!8289454))

(declare-fun m!8289456 () Bool)

(assert (=> b!7915351 m!8289456))

(assert (=> b!7915351 m!8289448))

(declare-fun m!8289458 () Bool)

(assert (=> b!7915351 m!8289458))

(assert (=> b!7915351 m!8289456))

(declare-fun m!8289460 () Bool)

(assert (=> b!7915351 m!8289460))

(declare-fun m!8289462 () Bool)

(assert (=> b!7915352 m!8289462))

(assert (=> b!7915171 d!2361492))

(declare-fun b!7915354 () Bool)

(declare-fun e!4672337 () List!74540)

(assert (=> b!7915354 (= e!4672337 (Cons!74416 (h!80864 lt!2689809) (++!18234 (t!390035 lt!2689809) (t!390035 ll!14))))))

(declare-fun d!2361500 () Bool)

(declare-fun e!4672338 () Bool)

(assert (=> d!2361500 e!4672338))

(declare-fun res!3141636 () Bool)

(assert (=> d!2361500 (=> (not res!3141636) (not e!4672338))))

(declare-fun lt!2689861 () List!74540)

(assert (=> d!2361500 (= res!3141636 (= (content!15760 lt!2689861) ((_ map or) (content!15760 lt!2689809) (content!15760 (t!390035 ll!14)))))))

(assert (=> d!2361500 (= lt!2689861 e!4672337)))

(declare-fun c!1452360 () Bool)

(assert (=> d!2361500 (= c!1452360 ((_ is Nil!74416) lt!2689809))))

(assert (=> d!2361500 (= (++!18234 lt!2689809 (t!390035 ll!14)) lt!2689861)))

(declare-fun b!7915353 () Bool)

(assert (=> b!7915353 (= e!4672337 (t!390035 ll!14))))

(declare-fun b!7915356 () Bool)

(assert (=> b!7915356 (= e!4672338 (or (not (= (t!390035 ll!14) Nil!74416)) (= lt!2689861 lt!2689809)))))

(declare-fun b!7915355 () Bool)

(declare-fun res!3141635 () Bool)

(assert (=> b!7915355 (=> (not res!3141635) (not e!4672338))))

(assert (=> b!7915355 (= res!3141635 (= (size!43193 lt!2689861) (+ (size!43193 lt!2689809) (size!43193 (t!390035 ll!14)))))))

(assert (= (and d!2361500 c!1452360) b!7915353))

(assert (= (and d!2361500 (not c!1452360)) b!7915354))

(assert (= (and d!2361500 res!3141636) b!7915355))

(assert (= (and b!7915355 res!3141635) b!7915356))

(declare-fun m!8289464 () Bool)

(assert (=> b!7915354 m!8289464))

(declare-fun m!8289466 () Bool)

(assert (=> d!2361500 m!8289466))

(declare-fun m!8289468 () Bool)

(assert (=> d!2361500 m!8289468))

(assert (=> d!2361500 m!8289376))

(declare-fun m!8289470 () Bool)

(assert (=> b!7915355 m!8289470))

(declare-fun m!8289472 () Bool)

(assert (=> b!7915355 m!8289472))

(assert (=> b!7915355 m!8289382))

(assert (=> b!7915171 d!2361500))

(declare-fun d!2361502 () Bool)

(declare-fun c!1452361 () Bool)

(assert (=> d!2361502 (= c!1452361 ((_ is Empty!15870) lt!2689804))))

(declare-fun e!4672339 () List!74540)

(assert (=> d!2361502 (= (list!19359 lt!2689804) e!4672339)))

(declare-fun b!7915360 () Bool)

(declare-fun e!4672340 () List!74540)

(assert (=> b!7915360 (= e!4672340 (++!18234 (list!19359 (left!56825 lt!2689804)) (list!19359 (right!57155 lt!2689804))))))

(declare-fun b!7915357 () Bool)

(assert (=> b!7915357 (= e!4672339 Nil!74416)))

(declare-fun b!7915358 () Bool)

(assert (=> b!7915358 (= e!4672339 e!4672340)))

(declare-fun c!1452362 () Bool)

(assert (=> b!7915358 (= c!1452362 ((_ is Leaf!30186) lt!2689804))))

(declare-fun b!7915359 () Bool)

(assert (=> b!7915359 (= e!4672340 (list!19360 (xs!19252 lt!2689804)))))

(assert (= (and d!2361502 c!1452361) b!7915357))

(assert (= (and d!2361502 (not c!1452361)) b!7915358))

(assert (= (and b!7915358 c!1452362) b!7915359))

(assert (= (and b!7915358 (not c!1452362)) b!7915360))

(declare-fun m!8289474 () Bool)

(assert (=> b!7915360 m!8289474))

(declare-fun m!8289476 () Bool)

(assert (=> b!7915360 m!8289476))

(assert (=> b!7915360 m!8289474))

(assert (=> b!7915360 m!8289476))

(declare-fun m!8289478 () Bool)

(assert (=> b!7915360 m!8289478))

(declare-fun m!8289480 () Bool)

(assert (=> b!7915359 m!8289480))

(assert (=> b!7915171 d!2361502))

(declare-fun b!7915458 () Bool)

(declare-fun c!1452396 () Bool)

(assert (=> b!7915458 (= c!1452396 (< (csize!31971 c!5365) 512))))

(declare-fun e!4672389 () Conc!15870)

(declare-fun e!4672391 () Conc!15870)

(assert (=> b!7915458 (= e!4672389 e!4672391)))

(declare-fun b!7915459 () Bool)

(declare-fun e!4672390 () Conc!15870)

(declare-fun call!734414 () Conc!15870)

(assert (=> b!7915459 (= e!4672390 call!734414)))

(declare-fun lt!2689966 () List!74540)

(declare-fun call!734412 () List!74540)

(assert (=> b!7915459 (= lt!2689966 call!734412)))

(declare-fun lt!2689963 () List!74540)

(declare-fun call!734409 () List!74540)

(assert (=> b!7915459 (= lt!2689963 call!734409)))

(declare-fun lt!2689962 () List!74540)

(assert (=> b!7915459 (= lt!2689962 (Cons!74416 (h!80864 ll!14) Nil!74416))))

(declare-fun lt!2689961 () Unit!169533)

(declare-fun call!734407 () Unit!169533)

(assert (=> b!7915459 (= lt!2689961 call!734407)))

(declare-fun call!734416 () List!74540)

(declare-fun call!734413 () List!74540)

(assert (=> b!7915459 (= call!734416 call!734413)))

(declare-fun lt!2689955 () Unit!169533)

(assert (=> b!7915459 (= lt!2689955 lt!2689961)))

(declare-fun c!1452395 () Bool)

(declare-fun lt!2689958 () List!74540)

(declare-fun lt!2689969 () List!74540)

(declare-fun call!734411 () List!74540)

(declare-fun bm!734402 () Bool)

(assert (=> bm!734402 (= call!734411 (++!18234 (ite c!1452395 lt!2689966 lt!2689969) (ite c!1452395 lt!2689963 lt!2689958)))))

(declare-fun b!7915460 () Bool)

(declare-fun e!4672394 () Bool)

(declare-fun lt!2689971 () Conc!15870)

(declare-fun $colon+!293 (List!74540 T!145580) List!74540)

(assert (=> b!7915460 (= e!4672394 (= (list!19359 lt!2689971) ($colon+!293 (list!19359 c!5365) (h!80864 ll!14))))))

(declare-fun call!734410 () List!74540)

(declare-fun lt!2689968 () List!74540)

(declare-fun bm!734403 () Bool)

(declare-fun lt!2689959 () List!74540)

(assert (=> bm!734403 (= call!734410 (++!18234 (ite c!1452395 lt!2689963 lt!2689959) (ite c!1452395 lt!2689962 lt!2689968)))))

(declare-fun b!7915461 () Bool)

(declare-fun call!734415 () Conc!15870)

(assert (=> b!7915461 (= e!4672390 call!734415)))

(declare-fun lt!2689956 () List!74540)

(assert (=> b!7915461 (= lt!2689956 call!734412)))

(declare-fun lt!2689964 () Conc!15870)

(assert (=> b!7915461 (= lt!2689959 (list!19359 (left!56825 lt!2689964)))))

(assert (=> b!7915461 (= lt!2689968 (list!19359 (right!57155 lt!2689964)))))

(declare-fun lt!2689967 () Unit!169533)

(assert (=> b!7915461 (= lt!2689967 call!734407)))

(assert (=> b!7915461 (= (++!18234 call!734416 lt!2689968) (++!18234 lt!2689956 call!734410))))

(declare-fun lt!2689965 () Unit!169533)

(assert (=> b!7915461 (= lt!2689965 lt!2689967)))

(declare-fun lt!2689957 () List!74540)

(assert (=> b!7915461 (= lt!2689957 call!734412)))

(assert (=> b!7915461 (= lt!2689969 call!734409)))

(assert (=> b!7915461 (= lt!2689958 (Cons!74416 (h!80864 ll!14) Nil!74416))))

(declare-fun lt!2689960 () Unit!169533)

(declare-fun lemmaConcatAssociativity!3136 (List!74540 List!74540 List!74540) Unit!169533)

(assert (=> b!7915461 (= lt!2689960 (lemmaConcatAssociativity!3136 lt!2689957 lt!2689969 lt!2689958))))

(assert (=> b!7915461 (= (++!18234 call!734413 lt!2689958) (++!18234 lt!2689957 call!734411))))

(declare-fun lt!2689970 () Unit!169533)

(assert (=> b!7915461 (= lt!2689970 lt!2689960)))

(declare-fun bm!734404 () Bool)

(assert (=> bm!734404 (= call!734413 (++!18234 (ite c!1452395 lt!2689966 lt!2689957) (ite c!1452395 call!734410 lt!2689969)))))

(declare-fun b!7915462 () Bool)

(assert (=> b!7915462 (= e!4672391 call!734415)))

(declare-fun b!7915463 () Bool)

(declare-fun res!3141656 () Bool)

(assert (=> b!7915463 (=> (not res!3141656) (not e!4672394))))

(assert (=> b!7915463 (= res!3141656 (<= (height!2185 lt!2689971) (+ (height!2185 c!5365) 1)))))

(declare-fun b!7915464 () Bool)

(assert (=> b!7915464 (= c!1452395 (<= (height!2185 lt!2689964) (+ (height!2185 (left!56825 c!5365)) 1)))))

(assert (=> b!7915464 (= lt!2689964 (append!1112 (right!57155 c!5365) (h!80864 ll!14)))))

(assert (=> b!7915464 (= e!4672389 e!4672390)))

(declare-fun bm!734405 () Bool)

(declare-fun call!734408 () IArray!31801)

(declare-fun fill!249 (Int T!145580) IArray!31801)

(assert (=> bm!734405 (= call!734408 (fill!249 1 (h!80864 ll!14)))))

(declare-fun d!2361504 () Bool)

(assert (=> d!2361504 e!4672394))

(declare-fun res!3141658 () Bool)

(assert (=> d!2361504 (=> (not res!3141658) (not e!4672394))))

(assert (=> d!2361504 (= res!3141658 (isBalanced!4496 lt!2689971))))

(declare-fun e!4672393 () Conc!15870)

(assert (=> d!2361504 (= lt!2689971 e!4672393)))

(declare-fun c!1452393 () Bool)

(assert (=> d!2361504 (= c!1452393 ((_ is Empty!15870) c!5365))))

(assert (=> d!2361504 (isBalanced!4496 c!5365)))

(assert (=> d!2361504 (= (append!1112 c!5365 (h!80864 ll!14)) lt!2689971)))

(declare-fun b!7915465 () Bool)

(assert (=> b!7915465 (= e!4672393 (Leaf!30186 call!734408 1))))

(declare-fun b!7915466 () Bool)

(declare-fun e!4672392 () Conc!15870)

(assert (=> b!7915466 (= e!4672392 (Leaf!30186 call!734408 1))))

(declare-fun bm!734406 () Bool)

(assert (=> bm!734406 (= call!734409 (list!19359 (right!57155 c!5365)))))

(declare-fun b!7915467 () Bool)

(assert (=> b!7915467 (= e!4672393 e!4672389)))

(declare-fun c!1452392 () Bool)

(assert (=> b!7915467 (= c!1452392 ((_ is Node!15870) c!5365))))

(declare-fun b!7915468 () Bool)

(declare-fun res!3141657 () Bool)

(assert (=> b!7915468 (=> (not res!3141657) (not e!4672394))))

(assert (=> b!7915468 (= res!3141657 (<= (height!2185 c!5365) (height!2185 lt!2689971)))))

(declare-fun bm!734407 () Bool)

(declare-fun <>!408 (Conc!15870 Conc!15870) Conc!15870)

(assert (=> bm!734407 (= call!734414 (<>!408 (left!56825 c!5365) (ite c!1452395 lt!2689964 (left!56825 lt!2689964))))))

(declare-fun bm!734408 () Bool)

(assert (=> bm!734408 (= call!734416 (++!18234 (ite c!1452395 call!734411 lt!2689956) (ite c!1452395 lt!2689962 lt!2689959)))))

(declare-fun bm!734409 () Bool)

(declare-fun c!1452394 () Bool)

(assert (=> bm!734409 (= c!1452394 c!1452392)))

(assert (=> bm!734409 (= call!734415 (<>!408 (ite c!1452392 call!734414 c!5365) e!4672392))))

(declare-fun b!7915469 () Bool)

(declare-fun append!1114 (IArray!31801 T!145580) IArray!31801)

(assert (=> b!7915469 (= e!4672391 (Leaf!30186 (append!1114 (xs!19252 c!5365) (h!80864 ll!14)) (+ (csize!31971 c!5365) 1)))))

(declare-fun lt!2689954 () List!74540)

(assert (=> b!7915469 (= lt!2689954 ($colon+!293 (list!19360 (xs!19252 c!5365)) (h!80864 ll!14)))))

(declare-fun bm!734410 () Bool)

(assert (=> bm!734410 (= call!734407 (lemmaConcatAssociativity!3136 (ite c!1452395 lt!2689966 lt!2689956) (ite c!1452395 lt!2689963 lt!2689959) (ite c!1452395 lt!2689962 lt!2689968)))))

(declare-fun bm!734411 () Bool)

(assert (=> bm!734411 (= call!734412 (list!19359 (left!56825 c!5365)))))

(declare-fun b!7915470 () Bool)

(assert (=> b!7915470 (= e!4672392 (right!57155 lt!2689964))))

(assert (= (and d!2361504 c!1452393) b!7915465))

(assert (= (and d!2361504 (not c!1452393)) b!7915467))

(assert (= (and b!7915467 c!1452392) b!7915464))

(assert (= (and b!7915467 (not c!1452392)) b!7915458))

(assert (= (and b!7915464 c!1452395) b!7915459))

(assert (= (and b!7915464 (not c!1452395)) b!7915461))

(assert (= (or b!7915459 b!7915461) bm!734403))

(assert (= (or b!7915459 b!7915461) bm!734410))

(assert (= (or b!7915459 b!7915461) bm!734406))

(assert (= (or b!7915459 b!7915461) bm!734402))

(assert (= (or b!7915459 b!7915461) bm!734407))

(assert (= (or b!7915459 b!7915461) bm!734411))

(assert (= (or b!7915459 b!7915461) bm!734404))

(assert (= (or b!7915459 b!7915461) bm!734408))

(assert (= (and b!7915458 c!1452396) b!7915469))

(assert (= (and b!7915458 (not c!1452396)) b!7915462))

(assert (= (or b!7915461 b!7915462) bm!734409))

(assert (= (and bm!734409 c!1452394) b!7915470))

(assert (= (and bm!734409 (not c!1452394)) b!7915466))

(assert (= (or b!7915465 b!7915466) bm!734405))

(assert (= (and d!2361504 res!3141658) b!7915468))

(assert (= (and b!7915468 res!3141657) b!7915463))

(assert (= (and b!7915463 res!3141656) b!7915460))

(declare-fun m!8289570 () Bool)

(assert (=> bm!734407 m!8289570))

(declare-fun m!8289572 () Bool)

(assert (=> b!7915461 m!8289572))

(declare-fun m!8289574 () Bool)

(assert (=> b!7915461 m!8289574))

(declare-fun m!8289576 () Bool)

(assert (=> b!7915461 m!8289576))

(declare-fun m!8289578 () Bool)

(assert (=> b!7915461 m!8289578))

(declare-fun m!8289580 () Bool)

(assert (=> b!7915461 m!8289580))

(declare-fun m!8289582 () Bool)

(assert (=> b!7915461 m!8289582))

(declare-fun m!8289584 () Bool)

(assert (=> b!7915461 m!8289584))

(declare-fun m!8289586 () Bool)

(assert (=> bm!734409 m!8289586))

(declare-fun m!8289588 () Bool)

(assert (=> b!7915469 m!8289588))

(assert (=> b!7915469 m!8289310))

(assert (=> b!7915469 m!8289310))

(declare-fun m!8289590 () Bool)

(assert (=> b!7915469 m!8289590))

(assert (=> bm!734406 m!8289302))

(declare-fun m!8289592 () Bool)

(assert (=> bm!734410 m!8289592))

(declare-fun m!8289594 () Bool)

(assert (=> bm!734404 m!8289594))

(declare-fun m!8289596 () Bool)

(assert (=> d!2361504 m!8289596))

(assert (=> d!2361504 m!8289172))

(declare-fun m!8289598 () Bool)

(assert (=> bm!734403 m!8289598))

(declare-fun m!8289600 () Bool)

(assert (=> bm!734405 m!8289600))

(declare-fun m!8289602 () Bool)

(assert (=> bm!734408 m!8289602))

(declare-fun m!8289604 () Bool)

(assert (=> b!7915468 m!8289604))

(declare-fun m!8289606 () Bool)

(assert (=> b!7915468 m!8289606))

(declare-fun m!8289608 () Bool)

(assert (=> bm!734402 m!8289608))

(declare-fun m!8289610 () Bool)

(assert (=> b!7915460 m!8289610))

(assert (=> b!7915460 m!8289190))

(assert (=> b!7915460 m!8289190))

(declare-fun m!8289612 () Bool)

(assert (=> b!7915460 m!8289612))

(declare-fun m!8289614 () Bool)

(assert (=> b!7915464 m!8289614))

(assert (=> b!7915464 m!8289258))

(declare-fun m!8289616 () Bool)

(assert (=> b!7915464 m!8289616))

(assert (=> b!7915463 m!8289606))

(assert (=> b!7915463 m!8289604))

(assert (=> bm!734411 m!8289300))

(assert (=> b!7915171 d!2361504))

(declare-fun b!7915475 () Bool)

(declare-fun e!4672397 () Bool)

(declare-fun tp!2357325 () Bool)

(assert (=> b!7915475 (= e!4672397 (and tp_is_empty!53165 tp!2357325))))

(assert (=> b!7915170 (= tp!2357306 e!4672397)))

(assert (= (and b!7915170 ((_ is Cons!74416) (t!390035 ll!14))) b!7915475))

(declare-fun tp!2357334 () Bool)

(declare-fun e!4672403 () Bool)

(declare-fun tp!2357333 () Bool)

(declare-fun b!7915484 () Bool)

(assert (=> b!7915484 (= e!4672403 (and (inv!95545 (left!56825 (left!56825 c!5365))) tp!2357334 (inv!95545 (right!57155 (left!56825 c!5365))) tp!2357333))))

(declare-fun b!7915486 () Bool)

(declare-fun e!4672402 () Bool)

(declare-fun tp!2357332 () Bool)

(assert (=> b!7915486 (= e!4672402 tp!2357332)))

(declare-fun b!7915485 () Bool)

(assert (=> b!7915485 (= e!4672403 (and (inv!95546 (xs!19252 (left!56825 c!5365))) e!4672402))))

(assert (=> b!7915168 (= tp!2357304 (and (inv!95545 (left!56825 c!5365)) e!4672403))))

(assert (= (and b!7915168 ((_ is Node!15870) (left!56825 c!5365))) b!7915484))

(assert (= b!7915485 b!7915486))

(assert (= (and b!7915168 ((_ is Leaf!30186) (left!56825 c!5365))) b!7915485))

(declare-fun m!8289618 () Bool)

(assert (=> b!7915484 m!8289618))

(declare-fun m!8289620 () Bool)

(assert (=> b!7915484 m!8289620))

(declare-fun m!8289622 () Bool)

(assert (=> b!7915485 m!8289622))

(assert (=> b!7915168 m!8289168))

(declare-fun tp!2357336 () Bool)

(declare-fun e!4672405 () Bool)

(declare-fun tp!2357337 () Bool)

(declare-fun b!7915487 () Bool)

(assert (=> b!7915487 (= e!4672405 (and (inv!95545 (left!56825 (right!57155 c!5365))) tp!2357337 (inv!95545 (right!57155 (right!57155 c!5365))) tp!2357336))))

(declare-fun b!7915489 () Bool)

(declare-fun e!4672404 () Bool)

(declare-fun tp!2357335 () Bool)

(assert (=> b!7915489 (= e!4672404 tp!2357335)))

(declare-fun b!7915488 () Bool)

(assert (=> b!7915488 (= e!4672405 (and (inv!95546 (xs!19252 (right!57155 c!5365))) e!4672404))))

(assert (=> b!7915168 (= tp!2357303 (and (inv!95545 (right!57155 c!5365)) e!4672405))))

(assert (= (and b!7915168 ((_ is Node!15870) (right!57155 c!5365))) b!7915487))

(assert (= b!7915488 b!7915489))

(assert (= (and b!7915168 ((_ is Leaf!30186) (right!57155 c!5365))) b!7915488))

(declare-fun m!8289624 () Bool)

(assert (=> b!7915487 m!8289624))

(declare-fun m!8289626 () Bool)

(assert (=> b!7915487 m!8289626))

(declare-fun m!8289628 () Bool)

(assert (=> b!7915488 m!8289628))

(assert (=> b!7915168 m!8289170))

(declare-fun b!7915490 () Bool)

(declare-fun e!4672406 () Bool)

(declare-fun tp!2357338 () Bool)

(assert (=> b!7915490 (= e!4672406 (and tp_is_empty!53165 tp!2357338))))

(assert (=> b!7915165 (= tp!2357305 e!4672406)))

(assert (= (and b!7915165 ((_ is Cons!74416) (innerList!15958 (xs!19252 c!5365)))) b!7915490))

(check-sat (not b!7915359) (not d!2361488) (not b!7915251) (not b!7915463) (not d!2361504) (not b!7915295) (not b!7915271) (not b!7915461) (not b!7915223) (not b!7915280) (not b!7915210) (not b!7915282) (not bm!734404) (not b!7915209) (not b!7915460) (not d!2361476) (not b!7915490) (not b!7915206) (not bm!734406) (not d!2361492) (not bm!734411) (not b!7915309) (not b!7915252) (not b!7915205) (not bm!734403) (not b!7915351) (not b!7915279) (not b!7915308) (not b!7915270) (not b!7915468) (not b!7915305) (not d!2361482) (not b!7915278) tp_is_empty!53165 (not bm!734409) (not b!7915487) (not d!2361486) (not b!7915317) (not b!7915301) (not b!7915354) (not b!7915208) (not b!7915489) (not b!7915469) (not b!7915296) (not bm!734402) (not b!7915485) (not b!7915281) (not b!7915221) (not b!7915283) (not b!7915488) (not b!7915360) (not b!7915475) (not b!7915312) (not bm!734405) (not b!7915313) (not b!7915355) (not b!7915207) (not bm!734410) (not bm!734407) (not b!7915486) (not b!7915352) (not d!2361456) (not b!7915484) (not b!7915318) (not d!2361500) (not d!2361478) (not d!2361480) (not b!7915464) (not b!7915293) (not b!7915300) (not b!7915298) (not b!7915304) (not b!7915168) (not bm!734408))
(check-sat)
