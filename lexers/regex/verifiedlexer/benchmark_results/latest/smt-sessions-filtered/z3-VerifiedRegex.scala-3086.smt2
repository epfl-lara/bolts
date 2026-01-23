; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!183378 () Bool)

(assert start!183378)

(declare-datatypes ((T!31822 0))(
  ( (T!31823 (val!5746 Int)) )
))
(declare-datatypes ((List!20346 0))(
  ( (Nil!20276) (Cons!20276 (h!25677 T!31822) (t!171789 List!20346)) )
))
(declare-datatypes ((IArray!13407 0))(
  ( (IArray!13408 (innerList!6761 List!20346)) )
))
(declare-datatypes ((Conc!6701 0))(
  ( (Node!6701 (left!16197 Conc!6701) (right!16527 Conc!6701) (csize!13632 Int) (cheight!6912 Int)) (Leaf!9788 (xs!9577 IArray!13407) (csize!13633 Int)) (Empty!6701) )
))
(declare-fun t!3734 () Conc!6701)

(declare-fun height!1019 (Conc!6701) Int)

(assert (=> start!183378 (< (height!1019 t!3734) 0)))

(declare-fun e!1176602 () Bool)

(declare-fun inv!26470 (Conc!6701) Bool)

(assert (=> start!183378 (and (inv!26470 t!3734) e!1176602)))

(declare-fun b!1841144 () Bool)

(declare-fun tp!520576 () Bool)

(declare-fun tp!520577 () Bool)

(assert (=> b!1841144 (= e!1176602 (and (inv!26470 (left!16197 t!3734)) tp!520576 (inv!26470 (right!16527 t!3734)) tp!520577))))

(declare-fun b!1841146 () Bool)

(declare-fun e!1176601 () Bool)

(declare-fun tp!520578 () Bool)

(assert (=> b!1841146 (= e!1176601 tp!520578)))

(declare-fun b!1841145 () Bool)

(declare-fun inv!26471 (IArray!13407) Bool)

(assert (=> b!1841145 (= e!1176602 (and (inv!26471 (xs!9577 t!3734)) e!1176601))))

(get-info :version)

(assert (= (and start!183378 ((_ is Node!6701) t!3734)) b!1841144))

(assert (= b!1841145 b!1841146))

(assert (= (and start!183378 ((_ is Leaf!9788) t!3734)) b!1841145))

(declare-fun m!2268607 () Bool)

(assert (=> start!183378 m!2268607))

(declare-fun m!2268609 () Bool)

(assert (=> start!183378 m!2268609))

(declare-fun m!2268611 () Bool)

(assert (=> b!1841144 m!2268611))

(declare-fun m!2268613 () Bool)

(assert (=> b!1841144 m!2268613))

(declare-fun m!2268615 () Bool)

(assert (=> b!1841145 m!2268615))

(check-sat (not b!1841145) (not b!1841144) (not start!183378) (not b!1841146))
(check-sat)
(get-model)

(declare-fun d!563003 () Bool)

(declare-fun size!16070 (List!20346) Int)

(assert (=> d!563003 (= (inv!26471 (xs!9577 t!3734)) (<= (size!16070 (innerList!6761 (xs!9577 t!3734))) 2147483647))))

(declare-fun bs!408609 () Bool)

(assert (= bs!408609 d!563003))

(declare-fun m!2268627 () Bool)

(assert (=> bs!408609 m!2268627))

(assert (=> b!1841145 d!563003))

(declare-fun d!563011 () Bool)

(declare-fun c!300501 () Bool)

(assert (=> d!563011 (= c!300501 ((_ is Node!6701) (left!16197 t!3734)))))

(declare-fun e!1176628 () Bool)

(assert (=> d!563011 (= (inv!26470 (left!16197 t!3734)) e!1176628)))

(declare-fun b!1841187 () Bool)

(declare-fun inv!26474 (Conc!6701) Bool)

(assert (=> b!1841187 (= e!1176628 (inv!26474 (left!16197 t!3734)))))

(declare-fun b!1841188 () Bool)

(declare-fun e!1176629 () Bool)

(assert (=> b!1841188 (= e!1176628 e!1176629)))

(declare-fun res!827412 () Bool)

(assert (=> b!1841188 (= res!827412 (not ((_ is Leaf!9788) (left!16197 t!3734))))))

(assert (=> b!1841188 (=> res!827412 e!1176629)))

(declare-fun b!1841189 () Bool)

(declare-fun inv!26475 (Conc!6701) Bool)

(assert (=> b!1841189 (= e!1176629 (inv!26475 (left!16197 t!3734)))))

(assert (= (and d!563011 c!300501) b!1841187))

(assert (= (and d!563011 (not c!300501)) b!1841188))

(assert (= (and b!1841188 (not res!827412)) b!1841189))

(declare-fun m!2268645 () Bool)

(assert (=> b!1841187 m!2268645))

(declare-fun m!2268647 () Bool)

(assert (=> b!1841189 m!2268647))

(assert (=> b!1841144 d!563011))

(declare-fun d!563015 () Bool)

(declare-fun c!300502 () Bool)

(assert (=> d!563015 (= c!300502 ((_ is Node!6701) (right!16527 t!3734)))))

(declare-fun e!1176630 () Bool)

(assert (=> d!563015 (= (inv!26470 (right!16527 t!3734)) e!1176630)))

(declare-fun b!1841190 () Bool)

(assert (=> b!1841190 (= e!1176630 (inv!26474 (right!16527 t!3734)))))

(declare-fun b!1841191 () Bool)

(declare-fun e!1176631 () Bool)

(assert (=> b!1841191 (= e!1176630 e!1176631)))

(declare-fun res!827413 () Bool)

(assert (=> b!1841191 (= res!827413 (not ((_ is Leaf!9788) (right!16527 t!3734))))))

(assert (=> b!1841191 (=> res!827413 e!1176631)))

(declare-fun b!1841192 () Bool)

(assert (=> b!1841192 (= e!1176631 (inv!26475 (right!16527 t!3734)))))

(assert (= (and d!563015 c!300502) b!1841190))

(assert (= (and d!563015 (not c!300502)) b!1841191))

(assert (= (and b!1841191 (not res!827413)) b!1841192))

(declare-fun m!2268649 () Bool)

(assert (=> b!1841190 m!2268649))

(declare-fun m!2268651 () Bool)

(assert (=> b!1841192 m!2268651))

(assert (=> b!1841144 d!563015))

(declare-fun d!563017 () Bool)

(assert (=> d!563017 (= (height!1019 t!3734) (ite ((_ is Empty!6701) t!3734) 0 (ite ((_ is Leaf!9788) t!3734) 1 (cheight!6912 t!3734))))))

(assert (=> start!183378 d!563017))

(declare-fun d!563019 () Bool)

(declare-fun c!300503 () Bool)

(assert (=> d!563019 (= c!300503 ((_ is Node!6701) t!3734))))

(declare-fun e!1176632 () Bool)

(assert (=> d!563019 (= (inv!26470 t!3734) e!1176632)))

(declare-fun b!1841193 () Bool)

(assert (=> b!1841193 (= e!1176632 (inv!26474 t!3734))))

(declare-fun b!1841194 () Bool)

(declare-fun e!1176633 () Bool)

(assert (=> b!1841194 (= e!1176632 e!1176633)))

(declare-fun res!827414 () Bool)

(assert (=> b!1841194 (= res!827414 (not ((_ is Leaf!9788) t!3734)))))

(assert (=> b!1841194 (=> res!827414 e!1176633)))

(declare-fun b!1841195 () Bool)

(assert (=> b!1841195 (= e!1176633 (inv!26475 t!3734))))

(assert (= (and d!563019 c!300503) b!1841193))

(assert (= (and d!563019 (not c!300503)) b!1841194))

(assert (= (and b!1841194 (not res!827414)) b!1841195))

(declare-fun m!2268653 () Bool)

(assert (=> b!1841193 m!2268653))

(declare-fun m!2268655 () Bool)

(assert (=> b!1841195 m!2268655))

(assert (=> start!183378 d!563019))

(declare-fun b!1841200 () Bool)

(declare-fun e!1176636 () Bool)

(declare-fun tp_is_empty!8341 () Bool)

(declare-fun tp!520596 () Bool)

(assert (=> b!1841200 (= e!1176636 (and tp_is_empty!8341 tp!520596))))

(assert (=> b!1841146 (= tp!520578 e!1176636)))

(assert (= (and b!1841146 ((_ is Cons!20276) (innerList!6761 (xs!9577 t!3734)))) b!1841200))

(declare-fun e!1176642 () Bool)

(declare-fun tp!520603 () Bool)

(declare-fun tp!520605 () Bool)

(declare-fun b!1841209 () Bool)

(assert (=> b!1841209 (= e!1176642 (and (inv!26470 (left!16197 (left!16197 t!3734))) tp!520605 (inv!26470 (right!16527 (left!16197 t!3734))) tp!520603))))

(declare-fun b!1841211 () Bool)

(declare-fun e!1176641 () Bool)

(declare-fun tp!520604 () Bool)

(assert (=> b!1841211 (= e!1176641 tp!520604)))

(declare-fun b!1841210 () Bool)

(assert (=> b!1841210 (= e!1176642 (and (inv!26471 (xs!9577 (left!16197 t!3734))) e!1176641))))

(assert (=> b!1841144 (= tp!520576 (and (inv!26470 (left!16197 t!3734)) e!1176642))))

(assert (= (and b!1841144 ((_ is Node!6701) (left!16197 t!3734))) b!1841209))

(assert (= b!1841210 b!1841211))

(assert (= (and b!1841144 ((_ is Leaf!9788) (left!16197 t!3734))) b!1841210))

(declare-fun m!2268657 () Bool)

(assert (=> b!1841209 m!2268657))

(declare-fun m!2268659 () Bool)

(assert (=> b!1841209 m!2268659))

(declare-fun m!2268661 () Bool)

(assert (=> b!1841210 m!2268661))

(assert (=> b!1841144 m!2268611))

(declare-fun b!1841212 () Bool)

(declare-fun e!1176644 () Bool)

(declare-fun tp!520606 () Bool)

(declare-fun tp!520608 () Bool)

(assert (=> b!1841212 (= e!1176644 (and (inv!26470 (left!16197 (right!16527 t!3734))) tp!520608 (inv!26470 (right!16527 (right!16527 t!3734))) tp!520606))))

(declare-fun b!1841214 () Bool)

(declare-fun e!1176643 () Bool)

(declare-fun tp!520607 () Bool)

(assert (=> b!1841214 (= e!1176643 tp!520607)))

(declare-fun b!1841213 () Bool)

(assert (=> b!1841213 (= e!1176644 (and (inv!26471 (xs!9577 (right!16527 t!3734))) e!1176643))))

(assert (=> b!1841144 (= tp!520577 (and (inv!26470 (right!16527 t!3734)) e!1176644))))

(assert (= (and b!1841144 ((_ is Node!6701) (right!16527 t!3734))) b!1841212))

(assert (= b!1841213 b!1841214))

(assert (= (and b!1841144 ((_ is Leaf!9788) (right!16527 t!3734))) b!1841213))

(declare-fun m!2268663 () Bool)

(assert (=> b!1841212 m!2268663))

(declare-fun m!2268665 () Bool)

(assert (=> b!1841212 m!2268665))

(declare-fun m!2268667 () Bool)

(assert (=> b!1841213 m!2268667))

(assert (=> b!1841144 m!2268613))

(check-sat (not b!1841214) (not b!1841190) (not d!563003) (not b!1841209) (not b!1841144) (not b!1841192) tp_is_empty!8341 (not b!1841187) (not b!1841200) (not b!1841213) (not b!1841189) (not b!1841212) (not b!1841210) (not b!1841193) (not b!1841211) (not b!1841195))
(check-sat)
(get-model)

(declare-fun d!563023 () Bool)

(declare-fun res!827443 () Bool)

(declare-fun e!1176662 () Bool)

(assert (=> d!563023 (=> (not res!827443) (not e!1176662))))

(declare-fun size!16072 (Conc!6701) Int)

(assert (=> d!563023 (= res!827443 (= (csize!13632 (right!16527 t!3734)) (+ (size!16072 (left!16197 (right!16527 t!3734))) (size!16072 (right!16527 (right!16527 t!3734))))))))

(assert (=> d!563023 (= (inv!26474 (right!16527 t!3734)) e!1176662)))

(declare-fun b!1841253 () Bool)

(declare-fun res!827444 () Bool)

(assert (=> b!1841253 (=> (not res!827444) (not e!1176662))))

(assert (=> b!1841253 (= res!827444 (and (not (= (left!16197 (right!16527 t!3734)) Empty!6701)) (not (= (right!16527 (right!16527 t!3734)) Empty!6701))))))

(declare-fun b!1841254 () Bool)

(declare-fun res!827445 () Bool)

(assert (=> b!1841254 (=> (not res!827445) (not e!1176662))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1841254 (= res!827445 (= (cheight!6912 (right!16527 t!3734)) (+ (max!0 (height!1019 (left!16197 (right!16527 t!3734))) (height!1019 (right!16527 (right!16527 t!3734)))) 1)))))

(declare-fun b!1841255 () Bool)

(assert (=> b!1841255 (= e!1176662 (<= 0 (cheight!6912 (right!16527 t!3734))))))

(assert (= (and d!563023 res!827443) b!1841253))

(assert (= (and b!1841253 res!827444) b!1841254))

(assert (= (and b!1841254 res!827445) b!1841255))

(declare-fun m!2268719 () Bool)

(assert (=> d!563023 m!2268719))

(declare-fun m!2268721 () Bool)

(assert (=> d!563023 m!2268721))

(declare-fun m!2268725 () Bool)

(assert (=> b!1841254 m!2268725))

(declare-fun m!2268729 () Bool)

(assert (=> b!1841254 m!2268729))

(assert (=> b!1841254 m!2268725))

(assert (=> b!1841254 m!2268729))

(declare-fun m!2268731 () Bool)

(assert (=> b!1841254 m!2268731))

(assert (=> b!1841190 d!563023))

(declare-fun d!563049 () Bool)

(declare-fun res!827457 () Bool)

(declare-fun e!1176682 () Bool)

(assert (=> d!563049 (=> (not res!827457) (not e!1176682))))

(declare-fun list!8238 (IArray!13407) List!20346)

(assert (=> d!563049 (= res!827457 (<= (size!16070 (list!8238 (xs!9577 t!3734))) 512))))

(assert (=> d!563049 (= (inv!26475 t!3734) e!1176682)))

(declare-fun b!1841286 () Bool)

(declare-fun res!827458 () Bool)

(assert (=> b!1841286 (=> (not res!827458) (not e!1176682))))

(assert (=> b!1841286 (= res!827458 (= (csize!13633 t!3734) (size!16070 (list!8238 (xs!9577 t!3734)))))))

(declare-fun b!1841287 () Bool)

(assert (=> b!1841287 (= e!1176682 (and (> (csize!13633 t!3734) 0) (<= (csize!13633 t!3734) 512)))))

(assert (= (and d!563049 res!827457) b!1841286))

(assert (= (and b!1841286 res!827458) b!1841287))

(declare-fun m!2268767 () Bool)

(assert (=> d!563049 m!2268767))

(assert (=> d!563049 m!2268767))

(declare-fun m!2268769 () Bool)

(assert (=> d!563049 m!2268769))

(assert (=> b!1841286 m!2268767))

(assert (=> b!1841286 m!2268767))

(assert (=> b!1841286 m!2268769))

(assert (=> b!1841195 d!563049))

(declare-fun d!563051 () Bool)

(assert (=> d!563051 (= (inv!26471 (xs!9577 (right!16527 t!3734))) (<= (size!16070 (innerList!6761 (xs!9577 (right!16527 t!3734)))) 2147483647))))

(declare-fun bs!408612 () Bool)

(assert (= bs!408612 d!563051))

(declare-fun m!2268771 () Bool)

(assert (=> bs!408612 m!2268771))

(assert (=> b!1841213 d!563051))

(declare-fun d!563053 () Bool)

(declare-fun res!827459 () Bool)

(declare-fun e!1176683 () Bool)

(assert (=> d!563053 (=> (not res!827459) (not e!1176683))))

(assert (=> d!563053 (= res!827459 (<= (size!16070 (list!8238 (xs!9577 (left!16197 t!3734)))) 512))))

(assert (=> d!563053 (= (inv!26475 (left!16197 t!3734)) e!1176683)))

(declare-fun b!1841288 () Bool)

(declare-fun res!827460 () Bool)

(assert (=> b!1841288 (=> (not res!827460) (not e!1176683))))

(assert (=> b!1841288 (= res!827460 (= (csize!13633 (left!16197 t!3734)) (size!16070 (list!8238 (xs!9577 (left!16197 t!3734))))))))

(declare-fun b!1841289 () Bool)

(assert (=> b!1841289 (= e!1176683 (and (> (csize!13633 (left!16197 t!3734)) 0) (<= (csize!13633 (left!16197 t!3734)) 512)))))

(assert (= (and d!563053 res!827459) b!1841288))

(assert (= (and b!1841288 res!827460) b!1841289))

(declare-fun m!2268773 () Bool)

(assert (=> d!563053 m!2268773))

(assert (=> d!563053 m!2268773))

(declare-fun m!2268775 () Bool)

(assert (=> d!563053 m!2268775))

(assert (=> b!1841288 m!2268773))

(assert (=> b!1841288 m!2268773))

(assert (=> b!1841288 m!2268775))

(assert (=> b!1841189 d!563053))

(declare-fun d!563055 () Bool)

(declare-fun res!827461 () Bool)

(declare-fun e!1176684 () Bool)

(assert (=> d!563055 (=> (not res!827461) (not e!1176684))))

(assert (=> d!563055 (= res!827461 (= (csize!13632 (left!16197 t!3734)) (+ (size!16072 (left!16197 (left!16197 t!3734))) (size!16072 (right!16527 (left!16197 t!3734))))))))

(assert (=> d!563055 (= (inv!26474 (left!16197 t!3734)) e!1176684)))

(declare-fun b!1841290 () Bool)

(declare-fun res!827462 () Bool)

(assert (=> b!1841290 (=> (not res!827462) (not e!1176684))))

(assert (=> b!1841290 (= res!827462 (and (not (= (left!16197 (left!16197 t!3734)) Empty!6701)) (not (= (right!16527 (left!16197 t!3734)) Empty!6701))))))

(declare-fun b!1841291 () Bool)

(declare-fun res!827463 () Bool)

(assert (=> b!1841291 (=> (not res!827463) (not e!1176684))))

(assert (=> b!1841291 (= res!827463 (= (cheight!6912 (left!16197 t!3734)) (+ (max!0 (height!1019 (left!16197 (left!16197 t!3734))) (height!1019 (right!16527 (left!16197 t!3734)))) 1)))))

(declare-fun b!1841292 () Bool)

(assert (=> b!1841292 (= e!1176684 (<= 0 (cheight!6912 (left!16197 t!3734))))))

(assert (= (and d!563055 res!827461) b!1841290))

(assert (= (and b!1841290 res!827462) b!1841291))

(assert (= (and b!1841291 res!827463) b!1841292))

(declare-fun m!2268777 () Bool)

(assert (=> d!563055 m!2268777))

(declare-fun m!2268779 () Bool)

(assert (=> d!563055 m!2268779))

(declare-fun m!2268781 () Bool)

(assert (=> b!1841291 m!2268781))

(declare-fun m!2268783 () Bool)

(assert (=> b!1841291 m!2268783))

(assert (=> b!1841291 m!2268781))

(assert (=> b!1841291 m!2268783))

(declare-fun m!2268785 () Bool)

(assert (=> b!1841291 m!2268785))

(assert (=> b!1841187 d!563055))

(declare-fun d!563057 () Bool)

(declare-fun c!300511 () Bool)

(assert (=> d!563057 (= c!300511 ((_ is Node!6701) (left!16197 (right!16527 t!3734))))))

(declare-fun e!1176685 () Bool)

(assert (=> d!563057 (= (inv!26470 (left!16197 (right!16527 t!3734))) e!1176685)))

(declare-fun b!1841293 () Bool)

(assert (=> b!1841293 (= e!1176685 (inv!26474 (left!16197 (right!16527 t!3734))))))

(declare-fun b!1841294 () Bool)

(declare-fun e!1176686 () Bool)

(assert (=> b!1841294 (= e!1176685 e!1176686)))

(declare-fun res!827464 () Bool)

(assert (=> b!1841294 (= res!827464 (not ((_ is Leaf!9788) (left!16197 (right!16527 t!3734)))))))

(assert (=> b!1841294 (=> res!827464 e!1176686)))

(declare-fun b!1841295 () Bool)

(assert (=> b!1841295 (= e!1176686 (inv!26475 (left!16197 (right!16527 t!3734))))))

(assert (= (and d!563057 c!300511) b!1841293))

(assert (= (and d!563057 (not c!300511)) b!1841294))

(assert (= (and b!1841294 (not res!827464)) b!1841295))

(declare-fun m!2268787 () Bool)

(assert (=> b!1841293 m!2268787))

(declare-fun m!2268789 () Bool)

(assert (=> b!1841295 m!2268789))

(assert (=> b!1841212 d!563057))

(declare-fun d!563059 () Bool)

(declare-fun c!300512 () Bool)

(assert (=> d!563059 (= c!300512 ((_ is Node!6701) (right!16527 (right!16527 t!3734))))))

(declare-fun e!1176687 () Bool)

(assert (=> d!563059 (= (inv!26470 (right!16527 (right!16527 t!3734))) e!1176687)))

(declare-fun b!1841296 () Bool)

(assert (=> b!1841296 (= e!1176687 (inv!26474 (right!16527 (right!16527 t!3734))))))

(declare-fun b!1841297 () Bool)

(declare-fun e!1176688 () Bool)

(assert (=> b!1841297 (= e!1176687 e!1176688)))

(declare-fun res!827465 () Bool)

(assert (=> b!1841297 (= res!827465 (not ((_ is Leaf!9788) (right!16527 (right!16527 t!3734)))))))

(assert (=> b!1841297 (=> res!827465 e!1176688)))

(declare-fun b!1841298 () Bool)

(assert (=> b!1841298 (= e!1176688 (inv!26475 (right!16527 (right!16527 t!3734))))))

(assert (= (and d!563059 c!300512) b!1841296))

(assert (= (and d!563059 (not c!300512)) b!1841297))

(assert (= (and b!1841297 (not res!827465)) b!1841298))

(declare-fun m!2268791 () Bool)

(assert (=> b!1841296 m!2268791))

(declare-fun m!2268793 () Bool)

(assert (=> b!1841298 m!2268793))

(assert (=> b!1841212 d!563059))

(declare-fun d!563061 () Bool)

(declare-fun res!827466 () Bool)

(declare-fun e!1176689 () Bool)

(assert (=> d!563061 (=> (not res!827466) (not e!1176689))))

(assert (=> d!563061 (= res!827466 (= (csize!13632 t!3734) (+ (size!16072 (left!16197 t!3734)) (size!16072 (right!16527 t!3734)))))))

(assert (=> d!563061 (= (inv!26474 t!3734) e!1176689)))

(declare-fun b!1841299 () Bool)

(declare-fun res!827467 () Bool)

(assert (=> b!1841299 (=> (not res!827467) (not e!1176689))))

(assert (=> b!1841299 (= res!827467 (and (not (= (left!16197 t!3734) Empty!6701)) (not (= (right!16527 t!3734) Empty!6701))))))

(declare-fun b!1841300 () Bool)

(declare-fun res!827468 () Bool)

(assert (=> b!1841300 (=> (not res!827468) (not e!1176689))))

(assert (=> b!1841300 (= res!827468 (= (cheight!6912 t!3734) (+ (max!0 (height!1019 (left!16197 t!3734)) (height!1019 (right!16527 t!3734))) 1)))))

(declare-fun b!1841301 () Bool)

(assert (=> b!1841301 (= e!1176689 (<= 0 (cheight!6912 t!3734)))))

(assert (= (and d!563061 res!827466) b!1841299))

(assert (= (and b!1841299 res!827467) b!1841300))

(assert (= (and b!1841300 res!827468) b!1841301))

(declare-fun m!2268795 () Bool)

(assert (=> d!563061 m!2268795))

(declare-fun m!2268797 () Bool)

(assert (=> d!563061 m!2268797))

(declare-fun m!2268799 () Bool)

(assert (=> b!1841300 m!2268799))

(declare-fun m!2268801 () Bool)

(assert (=> b!1841300 m!2268801))

(assert (=> b!1841300 m!2268799))

(assert (=> b!1841300 m!2268801))

(declare-fun m!2268803 () Bool)

(assert (=> b!1841300 m!2268803))

(assert (=> b!1841193 d!563061))

(declare-fun d!563063 () Bool)

(assert (=> d!563063 (= (inv!26471 (xs!9577 (left!16197 t!3734))) (<= (size!16070 (innerList!6761 (xs!9577 (left!16197 t!3734)))) 2147483647))))

(declare-fun bs!408613 () Bool)

(assert (= bs!408613 d!563063))

(declare-fun m!2268805 () Bool)

(assert (=> bs!408613 m!2268805))

(assert (=> b!1841210 d!563063))

(assert (=> b!1841144 d!563011))

(assert (=> b!1841144 d!563015))

(declare-fun d!563065 () Bool)

(declare-fun c!300513 () Bool)

(assert (=> d!563065 (= c!300513 ((_ is Node!6701) (left!16197 (left!16197 t!3734))))))

(declare-fun e!1176690 () Bool)

(assert (=> d!563065 (= (inv!26470 (left!16197 (left!16197 t!3734))) e!1176690)))

(declare-fun b!1841302 () Bool)

(assert (=> b!1841302 (= e!1176690 (inv!26474 (left!16197 (left!16197 t!3734))))))

(declare-fun b!1841303 () Bool)

(declare-fun e!1176691 () Bool)

(assert (=> b!1841303 (= e!1176690 e!1176691)))

(declare-fun res!827469 () Bool)

(assert (=> b!1841303 (= res!827469 (not ((_ is Leaf!9788) (left!16197 (left!16197 t!3734)))))))

(assert (=> b!1841303 (=> res!827469 e!1176691)))

(declare-fun b!1841304 () Bool)

(assert (=> b!1841304 (= e!1176691 (inv!26475 (left!16197 (left!16197 t!3734))))))

(assert (= (and d!563065 c!300513) b!1841302))

(assert (= (and d!563065 (not c!300513)) b!1841303))

(assert (= (and b!1841303 (not res!827469)) b!1841304))

(declare-fun m!2268807 () Bool)

(assert (=> b!1841302 m!2268807))

(declare-fun m!2268809 () Bool)

(assert (=> b!1841304 m!2268809))

(assert (=> b!1841209 d!563065))

(declare-fun d!563067 () Bool)

(declare-fun c!300514 () Bool)

(assert (=> d!563067 (= c!300514 ((_ is Node!6701) (right!16527 (left!16197 t!3734))))))

(declare-fun e!1176692 () Bool)

(assert (=> d!563067 (= (inv!26470 (right!16527 (left!16197 t!3734))) e!1176692)))

(declare-fun b!1841305 () Bool)

(assert (=> b!1841305 (= e!1176692 (inv!26474 (right!16527 (left!16197 t!3734))))))

(declare-fun b!1841306 () Bool)

(declare-fun e!1176693 () Bool)

(assert (=> b!1841306 (= e!1176692 e!1176693)))

(declare-fun res!827470 () Bool)

(assert (=> b!1841306 (= res!827470 (not ((_ is Leaf!9788) (right!16527 (left!16197 t!3734)))))))

(assert (=> b!1841306 (=> res!827470 e!1176693)))

(declare-fun b!1841307 () Bool)

(assert (=> b!1841307 (= e!1176693 (inv!26475 (right!16527 (left!16197 t!3734))))))

(assert (= (and d!563067 c!300514) b!1841305))

(assert (= (and d!563067 (not c!300514)) b!1841306))

(assert (= (and b!1841306 (not res!827470)) b!1841307))

(declare-fun m!2268811 () Bool)

(assert (=> b!1841305 m!2268811))

(declare-fun m!2268813 () Bool)

(assert (=> b!1841307 m!2268813))

(assert (=> b!1841209 d!563067))

(declare-fun d!563069 () Bool)

(declare-fun lt!714306 () Int)

(assert (=> d!563069 (>= lt!714306 0)))

(declare-fun e!1176696 () Int)

(assert (=> d!563069 (= lt!714306 e!1176696)))

(declare-fun c!300517 () Bool)

(assert (=> d!563069 (= c!300517 ((_ is Nil!20276) (innerList!6761 (xs!9577 t!3734))))))

(assert (=> d!563069 (= (size!16070 (innerList!6761 (xs!9577 t!3734))) lt!714306)))

(declare-fun b!1841312 () Bool)

(assert (=> b!1841312 (= e!1176696 0)))

(declare-fun b!1841313 () Bool)

(assert (=> b!1841313 (= e!1176696 (+ 1 (size!16070 (t!171789 (innerList!6761 (xs!9577 t!3734))))))))

(assert (= (and d!563069 c!300517) b!1841312))

(assert (= (and d!563069 (not c!300517)) b!1841313))

(declare-fun m!2268815 () Bool)

(assert (=> b!1841313 m!2268815))

(assert (=> d!563003 d!563069))

(declare-fun d!563071 () Bool)

(declare-fun res!827471 () Bool)

(declare-fun e!1176697 () Bool)

(assert (=> d!563071 (=> (not res!827471) (not e!1176697))))

(assert (=> d!563071 (= res!827471 (<= (size!16070 (list!8238 (xs!9577 (right!16527 t!3734)))) 512))))

(assert (=> d!563071 (= (inv!26475 (right!16527 t!3734)) e!1176697)))

(declare-fun b!1841314 () Bool)

(declare-fun res!827472 () Bool)

(assert (=> b!1841314 (=> (not res!827472) (not e!1176697))))

(assert (=> b!1841314 (= res!827472 (= (csize!13633 (right!16527 t!3734)) (size!16070 (list!8238 (xs!9577 (right!16527 t!3734))))))))

(declare-fun b!1841315 () Bool)

(assert (=> b!1841315 (= e!1176697 (and (> (csize!13633 (right!16527 t!3734)) 0) (<= (csize!13633 (right!16527 t!3734)) 512)))))

(assert (= (and d!563071 res!827471) b!1841314))

(assert (= (and b!1841314 res!827472) b!1841315))

(declare-fun m!2268817 () Bool)

(assert (=> d!563071 m!2268817))

(assert (=> d!563071 m!2268817))

(declare-fun m!2268819 () Bool)

(assert (=> d!563071 m!2268819))

(assert (=> b!1841314 m!2268817))

(assert (=> b!1841314 m!2268817))

(assert (=> b!1841314 m!2268819))

(assert (=> b!1841192 d!563071))

(declare-fun b!1841316 () Bool)

(declare-fun e!1176698 () Bool)

(declare-fun tp!520624 () Bool)

(assert (=> b!1841316 (= e!1176698 (and tp_is_empty!8341 tp!520624))))

(assert (=> b!1841214 (= tp!520607 e!1176698)))

(assert (= (and b!1841214 ((_ is Cons!20276) (innerList!6761 (xs!9577 (right!16527 t!3734))))) b!1841316))

(declare-fun b!1841317 () Bool)

(declare-fun e!1176700 () Bool)

(declare-fun tp!520625 () Bool)

(declare-fun tp!520627 () Bool)

(assert (=> b!1841317 (= e!1176700 (and (inv!26470 (left!16197 (left!16197 (left!16197 t!3734)))) tp!520627 (inv!26470 (right!16527 (left!16197 (left!16197 t!3734)))) tp!520625))))

(declare-fun b!1841319 () Bool)

(declare-fun e!1176699 () Bool)

(declare-fun tp!520626 () Bool)

(assert (=> b!1841319 (= e!1176699 tp!520626)))

(declare-fun b!1841318 () Bool)

(assert (=> b!1841318 (= e!1176700 (and (inv!26471 (xs!9577 (left!16197 (left!16197 t!3734)))) e!1176699))))

(assert (=> b!1841209 (= tp!520605 (and (inv!26470 (left!16197 (left!16197 t!3734))) e!1176700))))

(assert (= (and b!1841209 ((_ is Node!6701) (left!16197 (left!16197 t!3734)))) b!1841317))

(assert (= b!1841318 b!1841319))

(assert (= (and b!1841209 ((_ is Leaf!9788) (left!16197 (left!16197 t!3734)))) b!1841318))

(declare-fun m!2268821 () Bool)

(assert (=> b!1841317 m!2268821))

(declare-fun m!2268823 () Bool)

(assert (=> b!1841317 m!2268823))

(declare-fun m!2268825 () Bool)

(assert (=> b!1841318 m!2268825))

(assert (=> b!1841209 m!2268657))

(declare-fun tp!520628 () Bool)

(declare-fun tp!520630 () Bool)

(declare-fun e!1176702 () Bool)

(declare-fun b!1841320 () Bool)

(assert (=> b!1841320 (= e!1176702 (and (inv!26470 (left!16197 (right!16527 (left!16197 t!3734)))) tp!520630 (inv!26470 (right!16527 (right!16527 (left!16197 t!3734)))) tp!520628))))

(declare-fun b!1841322 () Bool)

(declare-fun e!1176701 () Bool)

(declare-fun tp!520629 () Bool)

(assert (=> b!1841322 (= e!1176701 tp!520629)))

(declare-fun b!1841321 () Bool)

(assert (=> b!1841321 (= e!1176702 (and (inv!26471 (xs!9577 (right!16527 (left!16197 t!3734)))) e!1176701))))

(assert (=> b!1841209 (= tp!520603 (and (inv!26470 (right!16527 (left!16197 t!3734))) e!1176702))))

(assert (= (and b!1841209 ((_ is Node!6701) (right!16527 (left!16197 t!3734)))) b!1841320))

(assert (= b!1841321 b!1841322))

(assert (= (and b!1841209 ((_ is Leaf!9788) (right!16527 (left!16197 t!3734)))) b!1841321))

(declare-fun m!2268827 () Bool)

(assert (=> b!1841320 m!2268827))

(declare-fun m!2268829 () Bool)

(assert (=> b!1841320 m!2268829))

(declare-fun m!2268831 () Bool)

(assert (=> b!1841321 m!2268831))

(assert (=> b!1841209 m!2268659))

(declare-fun e!1176704 () Bool)

(declare-fun tp!520633 () Bool)

(declare-fun b!1841323 () Bool)

(declare-fun tp!520631 () Bool)

(assert (=> b!1841323 (= e!1176704 (and (inv!26470 (left!16197 (left!16197 (right!16527 t!3734)))) tp!520633 (inv!26470 (right!16527 (left!16197 (right!16527 t!3734)))) tp!520631))))

(declare-fun b!1841325 () Bool)

(declare-fun e!1176703 () Bool)

(declare-fun tp!520632 () Bool)

(assert (=> b!1841325 (= e!1176703 tp!520632)))

(declare-fun b!1841324 () Bool)

(assert (=> b!1841324 (= e!1176704 (and (inv!26471 (xs!9577 (left!16197 (right!16527 t!3734)))) e!1176703))))

(assert (=> b!1841212 (= tp!520608 (and (inv!26470 (left!16197 (right!16527 t!3734))) e!1176704))))

(assert (= (and b!1841212 ((_ is Node!6701) (left!16197 (right!16527 t!3734)))) b!1841323))

(assert (= b!1841324 b!1841325))

(assert (= (and b!1841212 ((_ is Leaf!9788) (left!16197 (right!16527 t!3734)))) b!1841324))

(declare-fun m!2268833 () Bool)

(assert (=> b!1841323 m!2268833))

(declare-fun m!2268835 () Bool)

(assert (=> b!1841323 m!2268835))

(declare-fun m!2268837 () Bool)

(assert (=> b!1841324 m!2268837))

(assert (=> b!1841212 m!2268663))

(declare-fun b!1841326 () Bool)

(declare-fun tp!520636 () Bool)

(declare-fun tp!520634 () Bool)

(declare-fun e!1176706 () Bool)

(assert (=> b!1841326 (= e!1176706 (and (inv!26470 (left!16197 (right!16527 (right!16527 t!3734)))) tp!520636 (inv!26470 (right!16527 (right!16527 (right!16527 t!3734)))) tp!520634))))

(declare-fun b!1841328 () Bool)

(declare-fun e!1176705 () Bool)

(declare-fun tp!520635 () Bool)

(assert (=> b!1841328 (= e!1176705 tp!520635)))

(declare-fun b!1841327 () Bool)

(assert (=> b!1841327 (= e!1176706 (and (inv!26471 (xs!9577 (right!16527 (right!16527 t!3734)))) e!1176705))))

(assert (=> b!1841212 (= tp!520606 (and (inv!26470 (right!16527 (right!16527 t!3734))) e!1176706))))

(assert (= (and b!1841212 ((_ is Node!6701) (right!16527 (right!16527 t!3734)))) b!1841326))

(assert (= b!1841327 b!1841328))

(assert (= (and b!1841212 ((_ is Leaf!9788) (right!16527 (right!16527 t!3734)))) b!1841327))

(declare-fun m!2268839 () Bool)

(assert (=> b!1841326 m!2268839))

(declare-fun m!2268841 () Bool)

(assert (=> b!1841326 m!2268841))

(declare-fun m!2268843 () Bool)

(assert (=> b!1841327 m!2268843))

(assert (=> b!1841212 m!2268665))

(declare-fun b!1841329 () Bool)

(declare-fun e!1176707 () Bool)

(declare-fun tp!520637 () Bool)

(assert (=> b!1841329 (= e!1176707 (and tp_is_empty!8341 tp!520637))))

(assert (=> b!1841200 (= tp!520596 e!1176707)))

(assert (= (and b!1841200 ((_ is Cons!20276) (t!171789 (innerList!6761 (xs!9577 t!3734))))) b!1841329))

(declare-fun b!1841330 () Bool)

(declare-fun e!1176708 () Bool)

(declare-fun tp!520638 () Bool)

(assert (=> b!1841330 (= e!1176708 (and tp_is_empty!8341 tp!520638))))

(assert (=> b!1841211 (= tp!520604 e!1176708)))

(assert (= (and b!1841211 ((_ is Cons!20276) (innerList!6761 (xs!9577 (left!16197 t!3734))))) b!1841330))

(check-sat (not b!1841254) (not b!1841293) (not b!1841320) (not b!1841329) (not b!1841325) (not d!563023) (not b!1841328) (not b!1841316) (not b!1841304) tp_is_empty!8341 (not b!1841286) (not b!1841317) (not b!1841321) (not d!563055) (not b!1841324) (not b!1841322) (not d!563063) (not d!563051) (not b!1841300) (not b!1841209) (not b!1841326) (not b!1841212) (not b!1841330) (not b!1841314) (not b!1841302) (not b!1841318) (not b!1841319) (not d!563053) (not b!1841295) (not b!1841307) (not d!563071) (not b!1841288) (not b!1841327) (not b!1841305) (not d!563061) (not b!1841298) (not d!563049) (not b!1841291) (not b!1841323) (not b!1841313) (not b!1841296))
(check-sat)
