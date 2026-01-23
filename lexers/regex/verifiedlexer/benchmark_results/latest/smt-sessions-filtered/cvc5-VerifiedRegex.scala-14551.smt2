; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!755182 () Bool)

(assert start!755182)

(declare-fun b!8022468 () Bool)

(declare-fun res!3172302 () Bool)

(declare-fun e!4725939 () Bool)

(assert (=> b!8022468 (=> (not res!3172302) (not e!4725939))))

(declare-datatypes ((B!4219 0))(
  ( (B!4220 (val!32499 Int)) )
))
(declare-datatypes ((List!75011 0))(
  ( (Nil!74887) (Cons!74887 (h!81335 B!4219) (t!390754 List!75011)) )
))
(declare-fun p1!179 () List!75011)

(declare-fun p2!179 () List!75011)

(assert (=> b!8022468 (= res!3172302 (and (= p1!179 p2!179) (is-Cons!74887 p1!179)))))

(declare-fun b!8022469 () Bool)

(declare-fun res!3172301 () Bool)

(assert (=> b!8022469 (=> (not res!3172301) (not e!4725939))))

(declare-fun l!3411 () List!75011)

(declare-fun s1!490 () List!75011)

(declare-fun ++!18555 (List!75011 List!75011) List!75011)

(assert (=> b!8022469 (= res!3172301 (= (++!18555 p1!179 s1!490) l!3411))))

(declare-fun b!8022470 () Bool)

(declare-fun e!4725940 () Bool)

(declare-fun tp_is_empty!54107 () Bool)

(declare-fun tp!2400996 () Bool)

(assert (=> b!8022470 (= e!4725940 (and tp_is_empty!54107 tp!2400996))))

(declare-fun b!8022471 () Bool)

(declare-fun res!3172300 () Bool)

(assert (=> b!8022471 (=> (not res!3172300) (not e!4725939))))

(declare-fun s2!455 () List!75011)

(assert (=> b!8022471 (= res!3172300 (= (++!18555 p2!179 s2!455) l!3411))))

(declare-fun b!8022472 () Bool)

(declare-fun e!4725942 () Bool)

(declare-fun tp!2400998 () Bool)

(assert (=> b!8022472 (= e!4725942 (and tp_is_empty!54107 tp!2400998))))

(declare-fun b!8022473 () Bool)

(declare-fun e!4725941 () Bool)

(declare-fun lt!2720239 () List!75011)

(declare-fun isPrefix!6818 (List!75011 List!75011) Bool)

(declare-fun tail!15956 (List!75011) List!75011)

(assert (=> b!8022473 (= e!4725941 (not (isPrefix!6818 (tail!15956 p2!179) lt!2720239)))))

(declare-fun b!8022474 () Bool)

(declare-fun res!3172299 () Bool)

(assert (=> b!8022474 (=> (not res!3172299) (not e!4725939))))

(assert (=> b!8022474 (= res!3172299 (isPrefix!6818 p2!179 l!3411))))

(declare-fun b!8022475 () Bool)

(declare-fun e!4725943 () Bool)

(declare-fun tp!2400995 () Bool)

(assert (=> b!8022475 (= e!4725943 (and tp_is_empty!54107 tp!2400995))))

(declare-fun b!8022476 () Bool)

(declare-fun e!4725938 () Bool)

(declare-fun tp!2400994 () Bool)

(assert (=> b!8022476 (= e!4725938 (and tp_is_empty!54107 tp!2400994))))

(declare-fun b!8022477 () Bool)

(declare-fun e!4725944 () Bool)

(declare-fun tp!2400997 () Bool)

(assert (=> b!8022477 (= e!4725944 (and tp_is_empty!54107 tp!2400997))))

(declare-fun b!8022478 () Bool)

(assert (=> b!8022478 (= e!4725939 e!4725941)))

(declare-fun res!3172298 () Bool)

(assert (=> b!8022478 (=> (not res!3172298) (not e!4725941))))

(assert (=> b!8022478 (= res!3172298 (isPrefix!6818 (t!390754 p1!179) lt!2720239))))

(assert (=> b!8022478 (= lt!2720239 (tail!15956 l!3411))))

(declare-fun res!3172297 () Bool)

(assert (=> start!755182 (=> (not res!3172297) (not e!4725939))))

(assert (=> start!755182 (= res!3172297 (isPrefix!6818 p1!179 l!3411))))

(assert (=> start!755182 e!4725939))

(assert (=> start!755182 e!4725942))

(assert (=> start!755182 e!4725944))

(assert (=> start!755182 e!4725943))

(assert (=> start!755182 e!4725940))

(assert (=> start!755182 e!4725938))

(assert (= (and start!755182 res!3172297) b!8022474))

(assert (= (and b!8022474 res!3172299) b!8022469))

(assert (= (and b!8022469 res!3172301) b!8022471))

(assert (= (and b!8022471 res!3172300) b!8022468))

(assert (= (and b!8022468 res!3172302) b!8022478))

(assert (= (and b!8022478 res!3172298) b!8022473))

(assert (= (and start!755182 (is-Cons!74887 p2!179)) b!8022472))

(assert (= (and start!755182 (is-Cons!74887 s2!455)) b!8022477))

(assert (= (and start!755182 (is-Cons!74887 l!3411)) b!8022475))

(assert (= (and start!755182 (is-Cons!74887 p1!179)) b!8022470))

(assert (= (and start!755182 (is-Cons!74887 s1!490)) b!8022476))

(declare-fun m!8385198 () Bool)

(assert (=> start!755182 m!8385198))

(declare-fun m!8385200 () Bool)

(assert (=> b!8022471 m!8385200))

(declare-fun m!8385202 () Bool)

(assert (=> b!8022478 m!8385202))

(declare-fun m!8385204 () Bool)

(assert (=> b!8022478 m!8385204))

(declare-fun m!8385206 () Bool)

(assert (=> b!8022473 m!8385206))

(assert (=> b!8022473 m!8385206))

(declare-fun m!8385208 () Bool)

(assert (=> b!8022473 m!8385208))

(declare-fun m!8385210 () Bool)

(assert (=> b!8022469 m!8385210))

(declare-fun m!8385212 () Bool)

(assert (=> b!8022474 m!8385212))

(push 1)

(assert (not b!8022469))

(assert (not b!8022471))

(assert (not b!8022473))

(assert (not b!8022477))

(assert (not b!8022470))

(assert (not start!755182))

(assert (not b!8022472))

(assert tp_is_empty!54107)

(assert (not b!8022478))

(assert (not b!8022475))

(assert (not b!8022474))

(assert (not b!8022476))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!8022522 () Bool)

(declare-fun e!4725974 () Bool)

(assert (=> b!8022522 (= e!4725974 (isPrefix!6818 (tail!15956 (t!390754 p1!179)) (tail!15956 lt!2720239)))))

(declare-fun b!8022523 () Bool)

(declare-fun e!4725972 () Bool)

(declare-fun size!43668 (List!75011) Int)

(assert (=> b!8022523 (= e!4725972 (>= (size!43668 lt!2720239) (size!43668 (t!390754 p1!179))))))

(declare-fun b!8022521 () Bool)

(declare-fun res!3172329 () Bool)

(assert (=> b!8022521 (=> (not res!3172329) (not e!4725974))))

(declare-fun head!16419 (List!75011) B!4219)

(assert (=> b!8022521 (= res!3172329 (= (head!16419 (t!390754 p1!179)) (head!16419 lt!2720239)))))

(declare-fun d!2392286 () Bool)

(assert (=> d!2392286 e!4725972))

(declare-fun res!3172331 () Bool)

(assert (=> d!2392286 (=> res!3172331 e!4725972)))

(declare-fun lt!2720245 () Bool)

(assert (=> d!2392286 (= res!3172331 (not lt!2720245))))

(declare-fun e!4725973 () Bool)

(assert (=> d!2392286 (= lt!2720245 e!4725973)))

(declare-fun res!3172330 () Bool)

(assert (=> d!2392286 (=> res!3172330 e!4725973)))

(assert (=> d!2392286 (= res!3172330 (is-Nil!74887 (t!390754 p1!179)))))

(assert (=> d!2392286 (= (isPrefix!6818 (t!390754 p1!179) lt!2720239) lt!2720245)))

(declare-fun b!8022520 () Bool)

(assert (=> b!8022520 (= e!4725973 e!4725974)))

(declare-fun res!3172332 () Bool)

(assert (=> b!8022520 (=> (not res!3172332) (not e!4725974))))

(assert (=> b!8022520 (= res!3172332 (not (is-Nil!74887 lt!2720239)))))

(assert (= (and d!2392286 (not res!3172330)) b!8022520))

(assert (= (and b!8022520 res!3172332) b!8022521))

(assert (= (and b!8022521 res!3172329) b!8022522))

(assert (= (and d!2392286 (not res!3172331)) b!8022523))

(declare-fun m!8385230 () Bool)

(assert (=> b!8022522 m!8385230))

(declare-fun m!8385232 () Bool)

(assert (=> b!8022522 m!8385232))

(assert (=> b!8022522 m!8385230))

(assert (=> b!8022522 m!8385232))

(declare-fun m!8385234 () Bool)

(assert (=> b!8022522 m!8385234))

(declare-fun m!8385236 () Bool)

(assert (=> b!8022523 m!8385236))

(declare-fun m!8385238 () Bool)

(assert (=> b!8022523 m!8385238))

(declare-fun m!8385240 () Bool)

(assert (=> b!8022521 m!8385240))

(declare-fun m!8385242 () Bool)

(assert (=> b!8022521 m!8385242))

(assert (=> b!8022478 d!2392286))

(declare-fun d!2392288 () Bool)

(assert (=> d!2392288 (= (tail!15956 l!3411) (t!390754 l!3411))))

(assert (=> b!8022478 d!2392288))

(declare-fun b!8022526 () Bool)

(declare-fun e!4725977 () Bool)

(assert (=> b!8022526 (= e!4725977 (isPrefix!6818 (tail!15956 (tail!15956 p2!179)) (tail!15956 lt!2720239)))))

(declare-fun b!8022527 () Bool)

(declare-fun e!4725975 () Bool)

(assert (=> b!8022527 (= e!4725975 (>= (size!43668 lt!2720239) (size!43668 (tail!15956 p2!179))))))

(declare-fun b!8022525 () Bool)

(declare-fun res!3172333 () Bool)

(assert (=> b!8022525 (=> (not res!3172333) (not e!4725977))))

(assert (=> b!8022525 (= res!3172333 (= (head!16419 (tail!15956 p2!179)) (head!16419 lt!2720239)))))

(declare-fun d!2392292 () Bool)

(assert (=> d!2392292 e!4725975))

(declare-fun res!3172335 () Bool)

(assert (=> d!2392292 (=> res!3172335 e!4725975)))

(declare-fun lt!2720246 () Bool)

(assert (=> d!2392292 (= res!3172335 (not lt!2720246))))

(declare-fun e!4725976 () Bool)

(assert (=> d!2392292 (= lt!2720246 e!4725976)))

(declare-fun res!3172334 () Bool)

(assert (=> d!2392292 (=> res!3172334 e!4725976)))

(assert (=> d!2392292 (= res!3172334 (is-Nil!74887 (tail!15956 p2!179)))))

(assert (=> d!2392292 (= (isPrefix!6818 (tail!15956 p2!179) lt!2720239) lt!2720246)))

(declare-fun b!8022524 () Bool)

(assert (=> b!8022524 (= e!4725976 e!4725977)))

(declare-fun res!3172336 () Bool)

(assert (=> b!8022524 (=> (not res!3172336) (not e!4725977))))

(assert (=> b!8022524 (= res!3172336 (not (is-Nil!74887 lt!2720239)))))

(assert (= (and d!2392292 (not res!3172334)) b!8022524))

(assert (= (and b!8022524 res!3172336) b!8022525))

(assert (= (and b!8022525 res!3172333) b!8022526))

(assert (= (and d!2392292 (not res!3172335)) b!8022527))

(assert (=> b!8022526 m!8385206))

(declare-fun m!8385244 () Bool)

(assert (=> b!8022526 m!8385244))

(assert (=> b!8022526 m!8385232))

(assert (=> b!8022526 m!8385244))

(assert (=> b!8022526 m!8385232))

(declare-fun m!8385246 () Bool)

(assert (=> b!8022526 m!8385246))

(assert (=> b!8022527 m!8385236))

(assert (=> b!8022527 m!8385206))

(declare-fun m!8385248 () Bool)

(assert (=> b!8022527 m!8385248))

(assert (=> b!8022525 m!8385206))

(declare-fun m!8385250 () Bool)

(assert (=> b!8022525 m!8385250))

(assert (=> b!8022525 m!8385242))

(assert (=> b!8022473 d!2392292))

(declare-fun d!2392294 () Bool)

(assert (=> d!2392294 (= (tail!15956 p2!179) (t!390754 p2!179))))

(assert (=> b!8022473 d!2392294))

(declare-fun b!8022530 () Bool)

(declare-fun e!4725980 () Bool)

(assert (=> b!8022530 (= e!4725980 (isPrefix!6818 (tail!15956 p2!179) (tail!15956 l!3411)))))

(declare-fun b!8022531 () Bool)

(declare-fun e!4725978 () Bool)

(assert (=> b!8022531 (= e!4725978 (>= (size!43668 l!3411) (size!43668 p2!179)))))

(declare-fun b!8022529 () Bool)

(declare-fun res!3172337 () Bool)

(assert (=> b!8022529 (=> (not res!3172337) (not e!4725980))))

(assert (=> b!8022529 (= res!3172337 (= (head!16419 p2!179) (head!16419 l!3411)))))

(declare-fun d!2392296 () Bool)

(assert (=> d!2392296 e!4725978))

(declare-fun res!3172339 () Bool)

(assert (=> d!2392296 (=> res!3172339 e!4725978)))

(declare-fun lt!2720247 () Bool)

(assert (=> d!2392296 (= res!3172339 (not lt!2720247))))

(declare-fun e!4725979 () Bool)

(assert (=> d!2392296 (= lt!2720247 e!4725979)))

(declare-fun res!3172338 () Bool)

(assert (=> d!2392296 (=> res!3172338 e!4725979)))

(assert (=> d!2392296 (= res!3172338 (is-Nil!74887 p2!179))))

(assert (=> d!2392296 (= (isPrefix!6818 p2!179 l!3411) lt!2720247)))

(declare-fun b!8022528 () Bool)

(assert (=> b!8022528 (= e!4725979 e!4725980)))

(declare-fun res!3172340 () Bool)

(assert (=> b!8022528 (=> (not res!3172340) (not e!4725980))))

(assert (=> b!8022528 (= res!3172340 (not (is-Nil!74887 l!3411)))))

(assert (= (and d!2392296 (not res!3172338)) b!8022528))

(assert (= (and b!8022528 res!3172340) b!8022529))

(assert (= (and b!8022529 res!3172337) b!8022530))

(assert (= (and d!2392296 (not res!3172339)) b!8022531))

(assert (=> b!8022530 m!8385206))

(assert (=> b!8022530 m!8385204))

(assert (=> b!8022530 m!8385206))

(assert (=> b!8022530 m!8385204))

(declare-fun m!8385252 () Bool)

(assert (=> b!8022530 m!8385252))

(declare-fun m!8385254 () Bool)

(assert (=> b!8022531 m!8385254))

(declare-fun m!8385256 () Bool)

(assert (=> b!8022531 m!8385256))

(declare-fun m!8385258 () Bool)

(assert (=> b!8022529 m!8385258))

(declare-fun m!8385260 () Bool)

(assert (=> b!8022529 m!8385260))

(assert (=> b!8022474 d!2392296))

(declare-fun b!8022540 () Bool)

(declare-fun e!4725985 () List!75011)

(assert (=> b!8022540 (= e!4725985 s1!490)))

(declare-fun d!2392298 () Bool)

(declare-fun e!4725986 () Bool)

(assert (=> d!2392298 e!4725986))

(declare-fun res!3172346 () Bool)

(assert (=> d!2392298 (=> (not res!3172346) (not e!4725986))))

(declare-fun lt!2720250 () List!75011)

(declare-fun content!15944 (List!75011) (Set B!4219))

(assert (=> d!2392298 (= res!3172346 (= (content!15944 lt!2720250) (set.union (content!15944 p1!179) (content!15944 s1!490))))))

(assert (=> d!2392298 (= lt!2720250 e!4725985)))

(declare-fun c!1472242 () Bool)

(assert (=> d!2392298 (= c!1472242 (is-Nil!74887 p1!179))))

(assert (=> d!2392298 (= (++!18555 p1!179 s1!490) lt!2720250)))

(declare-fun b!8022541 () Bool)

(assert (=> b!8022541 (= e!4725985 (Cons!74887 (h!81335 p1!179) (++!18555 (t!390754 p1!179) s1!490)))))

(declare-fun b!8022543 () Bool)

(assert (=> b!8022543 (= e!4725986 (or (not (= s1!490 Nil!74887)) (= lt!2720250 p1!179)))))

(declare-fun b!8022542 () Bool)

(declare-fun res!3172345 () Bool)

(assert (=> b!8022542 (=> (not res!3172345) (not e!4725986))))

(assert (=> b!8022542 (= res!3172345 (= (size!43668 lt!2720250) (+ (size!43668 p1!179) (size!43668 s1!490))))))

(assert (= (and d!2392298 c!1472242) b!8022540))

(assert (= (and d!2392298 (not c!1472242)) b!8022541))

(assert (= (and d!2392298 res!3172346) b!8022542))

(assert (= (and b!8022542 res!3172345) b!8022543))

(declare-fun m!8385262 () Bool)

(assert (=> d!2392298 m!8385262))

(declare-fun m!8385264 () Bool)

(assert (=> d!2392298 m!8385264))

(declare-fun m!8385266 () Bool)

(assert (=> d!2392298 m!8385266))

(declare-fun m!8385268 () Bool)

(assert (=> b!8022541 m!8385268))

(declare-fun m!8385270 () Bool)

(assert (=> b!8022542 m!8385270))

(declare-fun m!8385272 () Bool)

(assert (=> b!8022542 m!8385272))

(declare-fun m!8385274 () Bool)

(assert (=> b!8022542 m!8385274))

(assert (=> b!8022469 d!2392298))

(declare-fun b!8022544 () Bool)

(declare-fun e!4725987 () List!75011)

(assert (=> b!8022544 (= e!4725987 s2!455)))

(declare-fun d!2392300 () Bool)

(declare-fun e!4725988 () Bool)

(assert (=> d!2392300 e!4725988))

(declare-fun res!3172348 () Bool)

(assert (=> d!2392300 (=> (not res!3172348) (not e!4725988))))

(declare-fun lt!2720251 () List!75011)

(assert (=> d!2392300 (= res!3172348 (= (content!15944 lt!2720251) (set.union (content!15944 p2!179) (content!15944 s2!455))))))

(assert (=> d!2392300 (= lt!2720251 e!4725987)))

(declare-fun c!1472243 () Bool)

(assert (=> d!2392300 (= c!1472243 (is-Nil!74887 p2!179))))

(assert (=> d!2392300 (= (++!18555 p2!179 s2!455) lt!2720251)))

(declare-fun b!8022545 () Bool)

(assert (=> b!8022545 (= e!4725987 (Cons!74887 (h!81335 p2!179) (++!18555 (t!390754 p2!179) s2!455)))))

(declare-fun b!8022547 () Bool)

(assert (=> b!8022547 (= e!4725988 (or (not (= s2!455 Nil!74887)) (= lt!2720251 p2!179)))))

(declare-fun b!8022546 () Bool)

(declare-fun res!3172347 () Bool)

(assert (=> b!8022546 (=> (not res!3172347) (not e!4725988))))

(assert (=> b!8022546 (= res!3172347 (= (size!43668 lt!2720251) (+ (size!43668 p2!179) (size!43668 s2!455))))))

(assert (= (and d!2392300 c!1472243) b!8022544))

(assert (= (and d!2392300 (not c!1472243)) b!8022545))

(assert (= (and d!2392300 res!3172348) b!8022546))

(assert (= (and b!8022546 res!3172347) b!8022547))

(declare-fun m!8385276 () Bool)

(assert (=> d!2392300 m!8385276))

(declare-fun m!8385278 () Bool)

(assert (=> d!2392300 m!8385278))

(declare-fun m!8385280 () Bool)

(assert (=> d!2392300 m!8385280))

(declare-fun m!8385282 () Bool)

(assert (=> b!8022545 m!8385282))

(declare-fun m!8385284 () Bool)

(assert (=> b!8022546 m!8385284))

(assert (=> b!8022546 m!8385256))

(declare-fun m!8385286 () Bool)

(assert (=> b!8022546 m!8385286))

(assert (=> b!8022471 d!2392300))

(declare-fun b!8022550 () Bool)

(declare-fun e!4725991 () Bool)

(assert (=> b!8022550 (= e!4725991 (isPrefix!6818 (tail!15956 p1!179) (tail!15956 l!3411)))))

(declare-fun b!8022551 () Bool)

(declare-fun e!4725989 () Bool)

(assert (=> b!8022551 (= e!4725989 (>= (size!43668 l!3411) (size!43668 p1!179)))))

(declare-fun b!8022549 () Bool)

(declare-fun res!3172349 () Bool)

(assert (=> b!8022549 (=> (not res!3172349) (not e!4725991))))

(assert (=> b!8022549 (= res!3172349 (= (head!16419 p1!179) (head!16419 l!3411)))))

(declare-fun d!2392302 () Bool)

(assert (=> d!2392302 e!4725989))

(declare-fun res!3172351 () Bool)

(assert (=> d!2392302 (=> res!3172351 e!4725989)))

(declare-fun lt!2720254 () Bool)

(assert (=> d!2392302 (= res!3172351 (not lt!2720254))))

(declare-fun e!4725990 () Bool)

(assert (=> d!2392302 (= lt!2720254 e!4725990)))

(declare-fun res!3172350 () Bool)

(assert (=> d!2392302 (=> res!3172350 e!4725990)))

(assert (=> d!2392302 (= res!3172350 (is-Nil!74887 p1!179))))

(assert (=> d!2392302 (= (isPrefix!6818 p1!179 l!3411) lt!2720254)))

(declare-fun b!8022548 () Bool)

(assert (=> b!8022548 (= e!4725990 e!4725991)))

(declare-fun res!3172352 () Bool)

(assert (=> b!8022548 (=> (not res!3172352) (not e!4725991))))

(assert (=> b!8022548 (= res!3172352 (not (is-Nil!74887 l!3411)))))

(assert (= (and d!2392302 (not res!3172350)) b!8022548))

(assert (= (and b!8022548 res!3172352) b!8022549))

(assert (= (and b!8022549 res!3172349) b!8022550))

(assert (= (and d!2392302 (not res!3172351)) b!8022551))

(declare-fun m!8385288 () Bool)

(assert (=> b!8022550 m!8385288))

(assert (=> b!8022550 m!8385204))

(assert (=> b!8022550 m!8385288))

(assert (=> b!8022550 m!8385204))

(declare-fun m!8385290 () Bool)

(assert (=> b!8022550 m!8385290))

(assert (=> b!8022551 m!8385254))

(assert (=> b!8022551 m!8385272))

(declare-fun m!8385292 () Bool)

(assert (=> b!8022549 m!8385292))

(assert (=> b!8022549 m!8385260))

(assert (=> start!755182 d!2392302))

(declare-fun b!8022564 () Bool)

(declare-fun e!4726000 () Bool)

(declare-fun tp!2401016 () Bool)

(assert (=> b!8022564 (= e!4726000 (and tp_is_empty!54107 tp!2401016))))

(assert (=> b!8022475 (= tp!2400995 e!4726000)))

(assert (= (and b!8022475 (is-Cons!74887 (t!390754 l!3411))) b!8022564))

(declare-fun b!8022565 () Bool)

(declare-fun e!4726001 () Bool)

(declare-fun tp!2401017 () Bool)

(assert (=> b!8022565 (= e!4726001 (and tp_is_empty!54107 tp!2401017))))

(assert (=> b!8022470 (= tp!2400996 e!4726001)))

(assert (= (and b!8022470 (is-Cons!74887 (t!390754 p1!179))) b!8022565))

(declare-fun b!8022566 () Bool)

(declare-fun e!4726002 () Bool)

(declare-fun tp!2401018 () Bool)

(assert (=> b!8022566 (= e!4726002 (and tp_is_empty!54107 tp!2401018))))

(assert (=> b!8022476 (= tp!2400994 e!4726002)))

(assert (= (and b!8022476 (is-Cons!74887 (t!390754 s1!490))) b!8022566))

(declare-fun b!8022567 () Bool)

(declare-fun e!4726003 () Bool)

(declare-fun tp!2401019 () Bool)

(assert (=> b!8022567 (= e!4726003 (and tp_is_empty!54107 tp!2401019))))

(assert (=> b!8022477 (= tp!2400997 e!4726003)))

(assert (= (and b!8022477 (is-Cons!74887 (t!390754 s2!455))) b!8022567))

(declare-fun b!8022568 () Bool)

(declare-fun e!4726004 () Bool)

(declare-fun tp!2401020 () Bool)

(assert (=> b!8022568 (= e!4726004 (and tp_is_empty!54107 tp!2401020))))

(assert (=> b!8022472 (= tp!2400998 e!4726004)))

(assert (= (and b!8022472 (is-Cons!74887 (t!390754 p2!179))) b!8022568))

(push 1)

(assert (not b!8022531))

(assert (not b!8022566))

(assert (not b!8022565))

(assert (not b!8022568))

(assert (not b!8022567))

(assert (not b!8022523))

(assert (not b!8022530))

(assert (not b!8022529))

(assert tp_is_empty!54107)

(assert (not b!8022542))

(assert (not b!8022549))

(assert (not b!8022527))

(assert (not b!8022546))

(assert (not b!8022525))

(assert (not b!8022526))

(assert (not b!8022541))

(assert (not b!8022522))

(assert (not b!8022550))

(assert (not b!8022564))

(assert (not d!2392298))

(assert (not b!8022545))

(assert (not d!2392300))

(assert (not b!8022521))

(assert (not b!8022551))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

