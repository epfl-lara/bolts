; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!755200 () Bool)

(assert start!755200)

(declare-fun b!8022670 () Bool)

(declare-fun e!4726070 () Bool)

(declare-fun tp_is_empty!54113 () Bool)

(declare-fun tp!2401053 () Bool)

(assert (=> b!8022670 (= e!4726070 (and tp_is_empty!54113 tp!2401053))))

(declare-fun b!8022671 () Bool)

(declare-fun res!3172423 () Bool)

(declare-fun e!4726071 () Bool)

(assert (=> b!8022671 (=> (not res!3172423) (not e!4726071))))

(declare-datatypes ((B!4225 0))(
  ( (B!4226 (val!32502 Int)) )
))
(declare-datatypes ((List!75014 0))(
  ( (Nil!74890) (Cons!74890 (h!81338 B!4225) (t!390757 List!75014)) )
))
(declare-fun p2!179 () List!75014)

(declare-fun lt!2720268 () List!75014)

(declare-fun isPrefix!6821 (List!75014 List!75014) Bool)

(declare-fun tail!15959 (List!75014) List!75014)

(assert (=> b!8022671 (= res!3172423 (isPrefix!6821 (tail!15959 p2!179) lt!2720268))))

(declare-fun b!8022672 () Bool)

(declare-fun e!4726068 () Bool)

(declare-fun tp!2401054 () Bool)

(assert (=> b!8022672 (= e!4726068 (and tp_is_empty!54113 tp!2401054))))

(declare-fun res!3172424 () Bool)

(declare-fun e!4726067 () Bool)

(assert (=> start!755200 (=> (not res!3172424) (not e!4726067))))

(declare-fun p1!179 () List!75014)

(declare-fun l!3411 () List!75014)

(assert (=> start!755200 (= res!3172424 (isPrefix!6821 p1!179 l!3411))))

(assert (=> start!755200 e!4726067))

(declare-fun e!4726072 () Bool)

(assert (=> start!755200 e!4726072))

(declare-fun e!4726069 () Bool)

(assert (=> start!755200 e!4726069))

(declare-fun e!4726073 () Bool)

(assert (=> start!755200 e!4726073))

(assert (=> start!755200 e!4726070))

(assert (=> start!755200 e!4726068))

(declare-fun b!8022673 () Bool)

(declare-fun s1!490 () List!75014)

(declare-fun ++!18558 (List!75014 List!75014) List!75014)

(assert (=> b!8022673 (= e!4726071 (not (= (++!18558 (t!390757 p1!179) s1!490) lt!2720268)))))

(declare-fun b!8022674 () Bool)

(declare-fun tp!2401057 () Bool)

(assert (=> b!8022674 (= e!4726069 (and tp_is_empty!54113 tp!2401057))))

(declare-fun b!8022675 () Bool)

(declare-fun tp!2401056 () Bool)

(assert (=> b!8022675 (= e!4726073 (and tp_is_empty!54113 tp!2401056))))

(declare-fun b!8022676 () Bool)

(declare-fun res!3172421 () Bool)

(assert (=> b!8022676 (=> (not res!3172421) (not e!4726067))))

(declare-fun s2!455 () List!75014)

(assert (=> b!8022676 (= res!3172421 (= (++!18558 p2!179 s2!455) l!3411))))

(declare-fun b!8022677 () Bool)

(declare-fun res!3172422 () Bool)

(assert (=> b!8022677 (=> (not res!3172422) (not e!4726067))))

(assert (=> b!8022677 (= res!3172422 (= (++!18558 p1!179 s1!490) l!3411))))

(declare-fun b!8022678 () Bool)

(declare-fun res!3172420 () Bool)

(assert (=> b!8022678 (=> (not res!3172420) (not e!4726067))))

(assert (=> b!8022678 (= res!3172420 (isPrefix!6821 p2!179 l!3411))))

(declare-fun b!8022679 () Bool)

(declare-fun res!3172425 () Bool)

(assert (=> b!8022679 (=> (not res!3172425) (not e!4726067))))

(get-info :version)

(assert (=> b!8022679 (= res!3172425 (and (= p1!179 p2!179) ((_ is Cons!74890) p1!179)))))

(declare-fun b!8022680 () Bool)

(assert (=> b!8022680 (= e!4726067 e!4726071)))

(declare-fun res!3172426 () Bool)

(assert (=> b!8022680 (=> (not res!3172426) (not e!4726071))))

(assert (=> b!8022680 (= res!3172426 (isPrefix!6821 (t!390757 p1!179) lt!2720268))))

(assert (=> b!8022680 (= lt!2720268 (tail!15959 l!3411))))

(declare-fun b!8022681 () Bool)

(declare-fun tp!2401055 () Bool)

(assert (=> b!8022681 (= e!4726072 (and tp_is_empty!54113 tp!2401055))))

(assert (= (and start!755200 res!3172424) b!8022678))

(assert (= (and b!8022678 res!3172420) b!8022677))

(assert (= (and b!8022677 res!3172422) b!8022676))

(assert (= (and b!8022676 res!3172421) b!8022679))

(assert (= (and b!8022679 res!3172425) b!8022680))

(assert (= (and b!8022680 res!3172426) b!8022671))

(assert (= (and b!8022671 res!3172423) b!8022673))

(assert (= (and start!755200 ((_ is Cons!74890) p2!179)) b!8022681))

(assert (= (and start!755200 ((_ is Cons!74890) s2!455)) b!8022674))

(assert (= (and start!755200 ((_ is Cons!74890) l!3411)) b!8022675))

(assert (= (and start!755200 ((_ is Cons!74890) p1!179)) b!8022670))

(assert (= (and start!755200 ((_ is Cons!74890) s1!490)) b!8022672))

(declare-fun m!8385376 () Bool)

(assert (=> b!8022677 m!8385376))

(declare-fun m!8385378 () Bool)

(assert (=> b!8022678 m!8385378))

(declare-fun m!8385380 () Bool)

(assert (=> b!8022671 m!8385380))

(assert (=> b!8022671 m!8385380))

(declare-fun m!8385382 () Bool)

(assert (=> b!8022671 m!8385382))

(declare-fun m!8385384 () Bool)

(assert (=> start!755200 m!8385384))

(declare-fun m!8385386 () Bool)

(assert (=> b!8022676 m!8385386))

(declare-fun m!8385388 () Bool)

(assert (=> b!8022673 m!8385388))

(declare-fun m!8385390 () Bool)

(assert (=> b!8022680 m!8385390))

(declare-fun m!8385392 () Bool)

(assert (=> b!8022680 m!8385392))

(check-sat (not b!8022680) (not b!8022681) (not b!8022673) tp_is_empty!54113 (not b!8022674) (not b!8022676) (not b!8022670) (not b!8022671) (not b!8022675) (not b!8022678) (not start!755200) (not b!8022672) (not b!8022677))
(check-sat)
(get-model)

(declare-fun b!8022700 () Bool)

(declare-fun e!4726085 () Bool)

(assert (=> b!8022700 (= e!4726085 (isPrefix!6821 (tail!15959 (tail!15959 p2!179)) (tail!15959 lt!2720268)))))

(declare-fun b!8022699 () Bool)

(declare-fun res!3172440 () Bool)

(assert (=> b!8022699 (=> (not res!3172440) (not e!4726085))))

(declare-fun head!16421 (List!75014) B!4225)

(assert (=> b!8022699 (= res!3172440 (= (head!16421 (tail!15959 p2!179)) (head!16421 lt!2720268)))))

(declare-fun b!8022698 () Bool)

(declare-fun e!4726084 () Bool)

(assert (=> b!8022698 (= e!4726084 e!4726085)))

(declare-fun res!3172441 () Bool)

(assert (=> b!8022698 (=> (not res!3172441) (not e!4726085))))

(assert (=> b!8022698 (= res!3172441 (not ((_ is Nil!74890) lt!2720268)))))

(declare-fun b!8022701 () Bool)

(declare-fun e!4726086 () Bool)

(declare-fun size!43670 (List!75014) Int)

(assert (=> b!8022701 (= e!4726086 (>= (size!43670 lt!2720268) (size!43670 (tail!15959 p2!179))))))

(declare-fun d!2392319 () Bool)

(assert (=> d!2392319 e!4726086))

(declare-fun res!3172439 () Bool)

(assert (=> d!2392319 (=> res!3172439 e!4726086)))

(declare-fun lt!2720273 () Bool)

(assert (=> d!2392319 (= res!3172439 (not lt!2720273))))

(assert (=> d!2392319 (= lt!2720273 e!4726084)))

(declare-fun res!3172442 () Bool)

(assert (=> d!2392319 (=> res!3172442 e!4726084)))

(assert (=> d!2392319 (= res!3172442 ((_ is Nil!74890) (tail!15959 p2!179)))))

(assert (=> d!2392319 (= (isPrefix!6821 (tail!15959 p2!179) lt!2720268) lt!2720273)))

(assert (= (and d!2392319 (not res!3172442)) b!8022698))

(assert (= (and b!8022698 res!3172441) b!8022699))

(assert (= (and b!8022699 res!3172440) b!8022700))

(assert (= (and d!2392319 (not res!3172439)) b!8022701))

(assert (=> b!8022700 m!8385380))

(declare-fun m!8385394 () Bool)

(assert (=> b!8022700 m!8385394))

(declare-fun m!8385398 () Bool)

(assert (=> b!8022700 m!8385398))

(assert (=> b!8022700 m!8385394))

(assert (=> b!8022700 m!8385398))

(declare-fun m!8385404 () Bool)

(assert (=> b!8022700 m!8385404))

(assert (=> b!8022699 m!8385380))

(declare-fun m!8385410 () Bool)

(assert (=> b!8022699 m!8385410))

(declare-fun m!8385414 () Bool)

(assert (=> b!8022699 m!8385414))

(declare-fun m!8385416 () Bool)

(assert (=> b!8022701 m!8385416))

(assert (=> b!8022701 m!8385380))

(declare-fun m!8385418 () Bool)

(assert (=> b!8022701 m!8385418))

(assert (=> b!8022671 d!2392319))

(declare-fun d!2392325 () Bool)

(assert (=> d!2392325 (= (tail!15959 p2!179) (t!390757 p2!179))))

(assert (=> b!8022671 d!2392325))

(declare-fun b!8022732 () Bool)

(declare-fun res!3172463 () Bool)

(declare-fun e!4726104 () Bool)

(assert (=> b!8022732 (=> (not res!3172463) (not e!4726104))))

(declare-fun lt!2720281 () List!75014)

(assert (=> b!8022732 (= res!3172463 (= (size!43670 lt!2720281) (+ (size!43670 p2!179) (size!43670 s2!455))))))

(declare-fun b!8022731 () Bool)

(declare-fun e!4726105 () List!75014)

(assert (=> b!8022731 (= e!4726105 (Cons!74890 (h!81338 p2!179) (++!18558 (t!390757 p2!179) s2!455)))))

(declare-fun b!8022733 () Bool)

(assert (=> b!8022733 (= e!4726104 (or (not (= s2!455 Nil!74890)) (= lt!2720281 p2!179)))))

(declare-fun b!8022730 () Bool)

(assert (=> b!8022730 (= e!4726105 s2!455)))

(declare-fun d!2392327 () Bool)

(assert (=> d!2392327 e!4726104))

(declare-fun res!3172464 () Bool)

(assert (=> d!2392327 (=> (not res!3172464) (not e!4726104))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15947 (List!75014) (InoxSet B!4225))

(assert (=> d!2392327 (= res!3172464 (= (content!15947 lt!2720281) ((_ map or) (content!15947 p2!179) (content!15947 s2!455))))))

(assert (=> d!2392327 (= lt!2720281 e!4726105)))

(declare-fun c!1472254 () Bool)

(assert (=> d!2392327 (= c!1472254 ((_ is Nil!74890) p2!179))))

(assert (=> d!2392327 (= (++!18558 p2!179 s2!455) lt!2720281)))

(assert (= (and d!2392327 c!1472254) b!8022730))

(assert (= (and d!2392327 (not c!1472254)) b!8022731))

(assert (= (and d!2392327 res!3172464) b!8022732))

(assert (= (and b!8022732 res!3172463) b!8022733))

(declare-fun m!8385448 () Bool)

(assert (=> b!8022732 m!8385448))

(declare-fun m!8385454 () Bool)

(assert (=> b!8022732 m!8385454))

(declare-fun m!8385458 () Bool)

(assert (=> b!8022732 m!8385458))

(declare-fun m!8385460 () Bool)

(assert (=> b!8022731 m!8385460))

(declare-fun m!8385464 () Bool)

(assert (=> d!2392327 m!8385464))

(declare-fun m!8385466 () Bool)

(assert (=> d!2392327 m!8385466))

(declare-fun m!8385468 () Bool)

(assert (=> d!2392327 m!8385468))

(assert (=> b!8022676 d!2392327))

(declare-fun b!8022740 () Bool)

(declare-fun e!4726110 () Bool)

(assert (=> b!8022740 (= e!4726110 (isPrefix!6821 (tail!15959 (t!390757 p1!179)) (tail!15959 lt!2720268)))))

(declare-fun b!8022739 () Bool)

(declare-fun res!3172470 () Bool)

(assert (=> b!8022739 (=> (not res!3172470) (not e!4726110))))

(assert (=> b!8022739 (= res!3172470 (= (head!16421 (t!390757 p1!179)) (head!16421 lt!2720268)))))

(declare-fun b!8022738 () Bool)

(declare-fun e!4726109 () Bool)

(assert (=> b!8022738 (= e!4726109 e!4726110)))

(declare-fun res!3172471 () Bool)

(assert (=> b!8022738 (=> (not res!3172471) (not e!4726110))))

(assert (=> b!8022738 (= res!3172471 (not ((_ is Nil!74890) lt!2720268)))))

(declare-fun b!8022741 () Bool)

(declare-fun e!4726111 () Bool)

(assert (=> b!8022741 (= e!4726111 (>= (size!43670 lt!2720268) (size!43670 (t!390757 p1!179))))))

(declare-fun d!2392335 () Bool)

(assert (=> d!2392335 e!4726111))

(declare-fun res!3172469 () Bool)

(assert (=> d!2392335 (=> res!3172469 e!4726111)))

(declare-fun lt!2720283 () Bool)

(assert (=> d!2392335 (= res!3172469 (not lt!2720283))))

(assert (=> d!2392335 (= lt!2720283 e!4726109)))

(declare-fun res!3172472 () Bool)

(assert (=> d!2392335 (=> res!3172472 e!4726109)))

(assert (=> d!2392335 (= res!3172472 ((_ is Nil!74890) (t!390757 p1!179)))))

(assert (=> d!2392335 (= (isPrefix!6821 (t!390757 p1!179) lt!2720268) lt!2720283)))

(assert (= (and d!2392335 (not res!3172472)) b!8022738))

(assert (= (and b!8022738 res!3172471) b!8022739))

(assert (= (and b!8022739 res!3172470) b!8022740))

(assert (= (and d!2392335 (not res!3172469)) b!8022741))

(declare-fun m!8385470 () Bool)

(assert (=> b!8022740 m!8385470))

(assert (=> b!8022740 m!8385398))

(assert (=> b!8022740 m!8385470))

(assert (=> b!8022740 m!8385398))

(declare-fun m!8385472 () Bool)

(assert (=> b!8022740 m!8385472))

(declare-fun m!8385474 () Bool)

(assert (=> b!8022739 m!8385474))

(assert (=> b!8022739 m!8385414))

(assert (=> b!8022741 m!8385416))

(declare-fun m!8385476 () Bool)

(assert (=> b!8022741 m!8385476))

(assert (=> b!8022680 d!2392335))

(declare-fun d!2392339 () Bool)

(assert (=> d!2392339 (= (tail!15959 l!3411) (t!390757 l!3411))))

(assert (=> b!8022680 d!2392339))

(declare-fun b!8022748 () Bool)

(declare-fun e!4726116 () Bool)

(assert (=> b!8022748 (= e!4726116 (isPrefix!6821 (tail!15959 p1!179) (tail!15959 l!3411)))))

(declare-fun b!8022747 () Bool)

(declare-fun res!3172478 () Bool)

(assert (=> b!8022747 (=> (not res!3172478) (not e!4726116))))

(assert (=> b!8022747 (= res!3172478 (= (head!16421 p1!179) (head!16421 l!3411)))))

(declare-fun b!8022746 () Bool)

(declare-fun e!4726115 () Bool)

(assert (=> b!8022746 (= e!4726115 e!4726116)))

(declare-fun res!3172479 () Bool)

(assert (=> b!8022746 (=> (not res!3172479) (not e!4726116))))

(assert (=> b!8022746 (= res!3172479 (not ((_ is Nil!74890) l!3411)))))

(declare-fun b!8022749 () Bool)

(declare-fun e!4726117 () Bool)

(assert (=> b!8022749 (= e!4726117 (>= (size!43670 l!3411) (size!43670 p1!179)))))

(declare-fun d!2392341 () Bool)

(assert (=> d!2392341 e!4726117))

(declare-fun res!3172477 () Bool)

(assert (=> d!2392341 (=> res!3172477 e!4726117)))

(declare-fun lt!2720285 () Bool)

(assert (=> d!2392341 (= res!3172477 (not lt!2720285))))

(assert (=> d!2392341 (= lt!2720285 e!4726115)))

(declare-fun res!3172480 () Bool)

(assert (=> d!2392341 (=> res!3172480 e!4726115)))

(assert (=> d!2392341 (= res!3172480 ((_ is Nil!74890) p1!179))))

(assert (=> d!2392341 (= (isPrefix!6821 p1!179 l!3411) lt!2720285)))

(assert (= (and d!2392341 (not res!3172480)) b!8022746))

(assert (= (and b!8022746 res!3172479) b!8022747))

(assert (= (and b!8022747 res!3172478) b!8022748))

(assert (= (and d!2392341 (not res!3172477)) b!8022749))

(declare-fun m!8385484 () Bool)

(assert (=> b!8022748 m!8385484))

(assert (=> b!8022748 m!8385392))

(assert (=> b!8022748 m!8385484))

(assert (=> b!8022748 m!8385392))

(declare-fun m!8385488 () Bool)

(assert (=> b!8022748 m!8385488))

(declare-fun m!8385490 () Bool)

(assert (=> b!8022747 m!8385490))

(declare-fun m!8385492 () Bool)

(assert (=> b!8022747 m!8385492))

(declare-fun m!8385494 () Bool)

(assert (=> b!8022749 m!8385494))

(declare-fun m!8385496 () Bool)

(assert (=> b!8022749 m!8385496))

(assert (=> start!755200 d!2392341))

(declare-fun b!8022756 () Bool)

(declare-fun res!3172485 () Bool)

(declare-fun e!4726121 () Bool)

(assert (=> b!8022756 (=> (not res!3172485) (not e!4726121))))

(declare-fun lt!2720287 () List!75014)

(assert (=> b!8022756 (= res!3172485 (= (size!43670 lt!2720287) (+ (size!43670 (t!390757 p1!179)) (size!43670 s1!490))))))

(declare-fun b!8022755 () Bool)

(declare-fun e!4726122 () List!75014)

(assert (=> b!8022755 (= e!4726122 (Cons!74890 (h!81338 (t!390757 p1!179)) (++!18558 (t!390757 (t!390757 p1!179)) s1!490)))))

(declare-fun b!8022757 () Bool)

(assert (=> b!8022757 (= e!4726121 (or (not (= s1!490 Nil!74890)) (= lt!2720287 (t!390757 p1!179))))))

(declare-fun b!8022754 () Bool)

(assert (=> b!8022754 (= e!4726122 s1!490)))

(declare-fun d!2392347 () Bool)

(assert (=> d!2392347 e!4726121))

(declare-fun res!3172486 () Bool)

(assert (=> d!2392347 (=> (not res!3172486) (not e!4726121))))

(assert (=> d!2392347 (= res!3172486 (= (content!15947 lt!2720287) ((_ map or) (content!15947 (t!390757 p1!179)) (content!15947 s1!490))))))

(assert (=> d!2392347 (= lt!2720287 e!4726122)))

(declare-fun c!1472255 () Bool)

(assert (=> d!2392347 (= c!1472255 ((_ is Nil!74890) (t!390757 p1!179)))))

(assert (=> d!2392347 (= (++!18558 (t!390757 p1!179) s1!490) lt!2720287)))

(assert (= (and d!2392347 c!1472255) b!8022754))

(assert (= (and d!2392347 (not c!1472255)) b!8022755))

(assert (= (and d!2392347 res!3172486) b!8022756))

(assert (= (and b!8022756 res!3172485) b!8022757))

(declare-fun m!8385502 () Bool)

(assert (=> b!8022756 m!8385502))

(assert (=> b!8022756 m!8385476))

(declare-fun m!8385506 () Bool)

(assert (=> b!8022756 m!8385506))

(declare-fun m!8385508 () Bool)

(assert (=> b!8022755 m!8385508))

(declare-fun m!8385510 () Bool)

(assert (=> d!2392347 m!8385510))

(declare-fun m!8385512 () Bool)

(assert (=> d!2392347 m!8385512))

(declare-fun m!8385514 () Bool)

(assert (=> d!2392347 m!8385514))

(assert (=> b!8022673 d!2392347))

(declare-fun b!8022764 () Bool)

(declare-fun e!4726126 () Bool)

(assert (=> b!8022764 (= e!4726126 (isPrefix!6821 (tail!15959 p2!179) (tail!15959 l!3411)))))

(declare-fun b!8022763 () Bool)

(declare-fun res!3172490 () Bool)

(assert (=> b!8022763 (=> (not res!3172490) (not e!4726126))))

(assert (=> b!8022763 (= res!3172490 (= (head!16421 p2!179) (head!16421 l!3411)))))

(declare-fun b!8022762 () Bool)

(declare-fun e!4726125 () Bool)

(assert (=> b!8022762 (= e!4726125 e!4726126)))

(declare-fun res!3172491 () Bool)

(assert (=> b!8022762 (=> (not res!3172491) (not e!4726126))))

(assert (=> b!8022762 (= res!3172491 (not ((_ is Nil!74890) l!3411)))))

(declare-fun b!8022765 () Bool)

(declare-fun e!4726127 () Bool)

(assert (=> b!8022765 (= e!4726127 (>= (size!43670 l!3411) (size!43670 p2!179)))))

(declare-fun d!2392351 () Bool)

(assert (=> d!2392351 e!4726127))

(declare-fun res!3172489 () Bool)

(assert (=> d!2392351 (=> res!3172489 e!4726127)))

(declare-fun lt!2720289 () Bool)

(assert (=> d!2392351 (= res!3172489 (not lt!2720289))))

(assert (=> d!2392351 (= lt!2720289 e!4726125)))

(declare-fun res!3172492 () Bool)

(assert (=> d!2392351 (=> res!3172492 e!4726125)))

(assert (=> d!2392351 (= res!3172492 ((_ is Nil!74890) p2!179))))

(assert (=> d!2392351 (= (isPrefix!6821 p2!179 l!3411) lt!2720289)))

(assert (= (and d!2392351 (not res!3172492)) b!8022762))

(assert (= (and b!8022762 res!3172491) b!8022763))

(assert (= (and b!8022763 res!3172490) b!8022764))

(assert (= (and d!2392351 (not res!3172489)) b!8022765))

(assert (=> b!8022764 m!8385380))

(assert (=> b!8022764 m!8385392))

(assert (=> b!8022764 m!8385380))

(assert (=> b!8022764 m!8385392))

(declare-fun m!8385524 () Bool)

(assert (=> b!8022764 m!8385524))

(declare-fun m!8385526 () Bool)

(assert (=> b!8022763 m!8385526))

(assert (=> b!8022763 m!8385492))

(assert (=> b!8022765 m!8385494))

(assert (=> b!8022765 m!8385454))

(assert (=> b!8022678 d!2392351))

(declare-fun b!8022772 () Bool)

(declare-fun res!3172493 () Bool)

(declare-fun e!4726128 () Bool)

(assert (=> b!8022772 (=> (not res!3172493) (not e!4726128))))

(declare-fun lt!2720290 () List!75014)

(assert (=> b!8022772 (= res!3172493 (= (size!43670 lt!2720290) (+ (size!43670 p1!179) (size!43670 s1!490))))))

(declare-fun b!8022771 () Bool)

(declare-fun e!4726129 () List!75014)

(assert (=> b!8022771 (= e!4726129 (Cons!74890 (h!81338 p1!179) (++!18558 (t!390757 p1!179) s1!490)))))

(declare-fun b!8022773 () Bool)

(assert (=> b!8022773 (= e!4726128 (or (not (= s1!490 Nil!74890)) (= lt!2720290 p1!179)))))

(declare-fun b!8022770 () Bool)

(assert (=> b!8022770 (= e!4726129 s1!490)))

(declare-fun d!2392353 () Bool)

(assert (=> d!2392353 e!4726128))

(declare-fun res!3172494 () Bool)

(assert (=> d!2392353 (=> (not res!3172494) (not e!4726128))))

(assert (=> d!2392353 (= res!3172494 (= (content!15947 lt!2720290) ((_ map or) (content!15947 p1!179) (content!15947 s1!490))))))

(assert (=> d!2392353 (= lt!2720290 e!4726129)))

(declare-fun c!1472257 () Bool)

(assert (=> d!2392353 (= c!1472257 ((_ is Nil!74890) p1!179))))

(assert (=> d!2392353 (= (++!18558 p1!179 s1!490) lt!2720290)))

(assert (= (and d!2392353 c!1472257) b!8022770))

(assert (= (and d!2392353 (not c!1472257)) b!8022771))

(assert (= (and d!2392353 res!3172494) b!8022772))

(assert (= (and b!8022772 res!3172493) b!8022773))

(declare-fun m!8385528 () Bool)

(assert (=> b!8022772 m!8385528))

(assert (=> b!8022772 m!8385496))

(assert (=> b!8022772 m!8385506))

(assert (=> b!8022771 m!8385388))

(declare-fun m!8385530 () Bool)

(assert (=> d!2392353 m!8385530))

(declare-fun m!8385532 () Bool)

(assert (=> d!2392353 m!8385532))

(assert (=> d!2392353 m!8385514))

(assert (=> b!8022677 d!2392353))

(declare-fun b!8022783 () Bool)

(declare-fun e!4726139 () Bool)

(declare-fun tp!2401067 () Bool)

(assert (=> b!8022783 (= e!4726139 (and tp_is_empty!54113 tp!2401067))))

(assert (=> b!8022681 (= tp!2401055 e!4726139)))

(assert (= (and b!8022681 ((_ is Cons!74890) (t!390757 p2!179))) b!8022783))

(declare-fun b!8022784 () Bool)

(declare-fun e!4726140 () Bool)

(declare-fun tp!2401068 () Bool)

(assert (=> b!8022784 (= e!4726140 (and tp_is_empty!54113 tp!2401068))))

(assert (=> b!8022670 (= tp!2401053 e!4726140)))

(assert (= (and b!8022670 ((_ is Cons!74890) (t!390757 p1!179))) b!8022784))

(declare-fun b!8022785 () Bool)

(declare-fun e!4726141 () Bool)

(declare-fun tp!2401069 () Bool)

(assert (=> b!8022785 (= e!4726141 (and tp_is_empty!54113 tp!2401069))))

(assert (=> b!8022675 (= tp!2401056 e!4726141)))

(assert (= (and b!8022675 ((_ is Cons!74890) (t!390757 l!3411))) b!8022785))

(declare-fun b!8022786 () Bool)

(declare-fun e!4726142 () Bool)

(declare-fun tp!2401070 () Bool)

(assert (=> b!8022786 (= e!4726142 (and tp_is_empty!54113 tp!2401070))))

(assert (=> b!8022674 (= tp!2401057 e!4726142)))

(assert (= (and b!8022674 ((_ is Cons!74890) (t!390757 s2!455))) b!8022786))

(declare-fun b!8022787 () Bool)

(declare-fun e!4726143 () Bool)

(declare-fun tp!2401071 () Bool)

(assert (=> b!8022787 (= e!4726143 (and tp_is_empty!54113 tp!2401071))))

(assert (=> b!8022672 (= tp!2401054 e!4726143)))

(assert (= (and b!8022672 ((_ is Cons!74890) (t!390757 s1!490))) b!8022787))

(check-sat (not b!8022740) (not b!8022756) (not b!8022747) (not b!8022732) (not b!8022783) (not b!8022741) (not d!2392353) tp_is_empty!54113 (not b!8022772) (not b!8022731) (not d!2392347) (not b!8022765) (not b!8022700) (not b!8022755) (not b!8022701) (not b!8022787) (not b!8022786) (not b!8022739) (not b!8022763) (not b!8022764) (not b!8022749) (not b!8022699) (not d!2392327) (not b!8022785) (not b!8022784) (not b!8022771) (not b!8022748))
(check-sat)
