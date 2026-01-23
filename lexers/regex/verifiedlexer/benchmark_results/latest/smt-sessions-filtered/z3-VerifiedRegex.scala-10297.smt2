; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!535814 () Bool)

(assert start!535814)

(declare-fun b!5083966 () Bool)

(declare-fun e!3170998 () Bool)

(declare-fun e!3170994 () Bool)

(assert (=> b!5083966 (= e!3170998 e!3170994)))

(declare-fun res!2164351 () Bool)

(assert (=> b!5083966 (=> res!2164351 e!3170994)))

(declare-datatypes ((T!105272 0))(
  ( (T!105273 (val!23670 Int)) )
))
(declare-datatypes ((List!58580 0))(
  ( (Nil!58456) (Cons!58456 (h!64904 T!105272) (t!371417 List!58580)) )
))
(declare-datatypes ((IArray!31233 0))(
  ( (IArray!31234 (innerList!15674 List!58580)) )
))
(declare-datatypes ((Conc!15586 0))(
  ( (Node!15586 (left!42849 Conc!15586) (right!43179 Conc!15586) (csize!31402 Int) (cheight!15797 Int)) (Leaf!25884 (xs!18964 IArray!31233) (csize!31403 Int)) (Empty!15586) )
))
(declare-fun xs!286 () Conc!15586)

(declare-fun ys!41 () Conc!15586)

(declare-fun appendAssocInst!922 (Conc!15586 Conc!15586) Bool)

(assert (=> b!5083966 (= res!2164351 (not (appendAssocInst!922 xs!286 ys!41)))))

(declare-fun lt!2091392 () Conc!15586)

(declare-fun err!4617 () Conc!15586)

(assert (=> b!5083966 (= lt!2091392 err!4617)))

(assert (=> b!5083966 true))

(declare-fun e!3171001 () Bool)

(declare-fun inv!77676 (Conc!15586) Bool)

(assert (=> b!5083966 (and (inv!77676 err!4617) e!3171001)))

(declare-fun tp!1417586 () Bool)

(declare-fun b!5083967 () Bool)

(declare-fun e!3171002 () Bool)

(declare-fun tp!1417585 () Bool)

(assert (=> b!5083967 (= e!3171002 (and (inv!77676 (left!42849 ys!41)) tp!1417585 (inv!77676 (right!43179 ys!41)) tp!1417586))))

(declare-fun tp!1417584 () Bool)

(declare-fun tp!1417587 () Bool)

(declare-fun b!5083968 () Bool)

(assert (=> b!5083968 (= e!3171001 (and (inv!77676 (left!42849 err!4617)) tp!1417584 (inv!77676 (right!43179 err!4617)) tp!1417587))))

(declare-fun b!5083969 () Bool)

(declare-fun e!3170999 () Bool)

(declare-fun tp!1417582 () Bool)

(assert (=> b!5083969 (= e!3170999 tp!1417582)))

(declare-fun b!5083970 () Bool)

(declare-fun e!3170996 () Bool)

(declare-fun inv!77677 (IArray!31233) Bool)

(assert (=> b!5083970 (= e!3171001 (and (inv!77677 (xs!18964 err!4617)) e!3170996))))

(declare-fun res!2164347 () Bool)

(declare-fun e!3170993 () Bool)

(assert (=> start!535814 (=> (not res!2164347) (not e!3170993))))

(declare-fun isBalanced!4448 (Conc!15586) Bool)

(assert (=> start!535814 (= res!2164347 (isBalanced!4448 xs!286))))

(assert (=> start!535814 e!3170993))

(declare-fun e!3170995 () Bool)

(assert (=> start!535814 (and (inv!77676 xs!286) e!3170995)))

(assert (=> start!535814 (and (inv!77676 ys!41) e!3171002)))

(declare-fun b!5083971 () Bool)

(declare-fun e!3171000 () Bool)

(declare-fun tp!1417589 () Bool)

(assert (=> b!5083971 (= e!3171000 tp!1417589)))

(declare-fun b!5083972 () Bool)

(declare-fun res!2164350 () Bool)

(assert (=> b!5083972 (=> res!2164350 e!3170994)))

(assert (=> b!5083972 (= res!2164350 (not (isBalanced!4448 lt!2091392)))))

(declare-fun b!5083973 () Bool)

(declare-fun res!2164343 () Bool)

(assert (=> b!5083973 (=> (not res!2164343) (not e!3170993))))

(assert (=> b!5083973 (= res!2164343 (and (not (= xs!286 Empty!15586)) (not (= ys!41 Empty!15586))))))

(declare-fun b!5083974 () Bool)

(declare-fun tp!1417588 () Bool)

(assert (=> b!5083974 (= e!3170996 tp!1417588)))

(declare-fun b!5083975 () Bool)

(assert (=> b!5083975 (= e!3170995 (and (inv!77677 (xs!18964 xs!286)) e!3170999))))

(declare-fun b!5083976 () Bool)

(declare-fun res!2164348 () Bool)

(assert (=> b!5083976 (=> (not res!2164348) (not e!3170998))))

(declare-fun height!2163 (Conc!15586) Int)

(assert (=> b!5083976 (= res!2164348 (< (height!2163 (right!43179 ys!41)) (height!2163 (left!42849 ys!41))))))

(declare-fun tp!1417581 () Bool)

(declare-fun b!5083977 () Bool)

(declare-fun tp!1417583 () Bool)

(assert (=> b!5083977 (= e!3170995 (and (inv!77676 (left!42849 xs!286)) tp!1417583 (inv!77676 (right!43179 xs!286)) tp!1417581))))

(declare-fun b!5083978 () Bool)

(assert (=> b!5083978 (= e!3171002 (and (inv!77677 (xs!18964 ys!41)) e!3171000))))

(declare-fun e!3170997 () Bool)

(declare-fun b!5083979 () Bool)

(declare-fun list!19033 (Conc!15586) List!58580)

(declare-fun ++!12815 (List!58580 List!58580) List!58580)

(assert (=> b!5083979 (= e!3170997 (not (= (list!19033 lt!2091392) (++!12815 (list!19033 xs!286) (list!19033 ys!41)))))))

(declare-fun b!5083980 () Bool)

(declare-fun res!2164346 () Bool)

(assert (=> b!5083980 (=> (not res!2164346) (not e!3170993))))

(assert (=> b!5083980 (= res!2164346 (isBalanced!4448 ys!41))))

(declare-fun b!5083981 () Bool)

(assert (=> b!5083981 (= e!3170993 e!3170998)))

(declare-fun res!2164349 () Bool)

(assert (=> b!5083981 (=> (not res!2164349) (not e!3170998))))

(declare-fun lt!2091390 () Int)

(get-info :version)

(assert (=> b!5083981 (= res!2164349 (and (or (> (- 1) lt!2091390) (> lt!2091390 1)) (>= lt!2091390 (- 1)) ((_ is Node!15586) ys!41)))))

(declare-fun lt!2091391 () Int)

(declare-fun lt!2091393 () Int)

(assert (=> b!5083981 (= lt!2091390 (- lt!2091391 lt!2091393))))

(assert (=> b!5083981 (= lt!2091393 (height!2163 xs!286))))

(assert (=> b!5083981 (= lt!2091391 (height!2163 ys!41))))

(declare-fun b!5083982 () Bool)

(declare-fun res!2164345 () Bool)

(assert (=> b!5083982 (=> (not res!2164345) (not e!3170998))))

(assert (=> b!5083982 (= res!2164345 (not ((_ is Node!15586) (left!42849 ys!41))))))

(declare-fun b!5083983 () Bool)

(assert (=> b!5083983 (= e!3170994 e!3170997)))

(declare-fun res!2164344 () Bool)

(assert (=> b!5083983 (=> res!2164344 e!3170997)))

(declare-fun lt!2091388 () Int)

(declare-fun lt!2091389 () Int)

(assert (=> b!5083983 (= res!2164344 (or (> lt!2091388 (+ 1 lt!2091389)) (< lt!2091388 lt!2091389)))))

(assert (=> b!5083983 (= lt!2091388 (height!2163 lt!2091392))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5083983 (= lt!2091389 (max!0 lt!2091393 lt!2091391))))

(assert (= (and start!535814 res!2164347) b!5083980))

(assert (= (and b!5083980 res!2164346) b!5083973))

(assert (= (and b!5083973 res!2164343) b!5083981))

(assert (= (and b!5083981 res!2164349) b!5083976))

(assert (= (and b!5083976 res!2164348) b!5083982))

(assert (= (and b!5083982 res!2164345) b!5083966))

(assert (= (and b!5083966 ((_ is Node!15586) err!4617)) b!5083968))

(assert (= b!5083970 b!5083974))

(assert (= (and b!5083966 ((_ is Leaf!25884) err!4617)) b!5083970))

(assert (= (and b!5083966 (not res!2164351)) b!5083972))

(assert (= (and b!5083972 (not res!2164350)) b!5083983))

(assert (= (and b!5083983 (not res!2164344)) b!5083979))

(assert (= (and start!535814 ((_ is Node!15586) xs!286)) b!5083977))

(assert (= b!5083975 b!5083969))

(assert (= (and start!535814 ((_ is Leaf!25884) xs!286)) b!5083975))

(assert (= (and start!535814 ((_ is Node!15586) ys!41)) b!5083967))

(assert (= b!5083978 b!5083971))

(assert (= (and start!535814 ((_ is Leaf!25884) ys!41)) b!5083978))

(declare-fun m!6139362 () Bool)

(assert (=> start!535814 m!6139362))

(declare-fun m!6139364 () Bool)

(assert (=> start!535814 m!6139364))

(declare-fun m!6139366 () Bool)

(assert (=> start!535814 m!6139366))

(declare-fun m!6139368 () Bool)

(assert (=> b!5083967 m!6139368))

(declare-fun m!6139370 () Bool)

(assert (=> b!5083967 m!6139370))

(declare-fun m!6139372 () Bool)

(assert (=> b!5083979 m!6139372))

(declare-fun m!6139374 () Bool)

(assert (=> b!5083979 m!6139374))

(declare-fun m!6139376 () Bool)

(assert (=> b!5083979 m!6139376))

(assert (=> b!5083979 m!6139374))

(assert (=> b!5083979 m!6139376))

(declare-fun m!6139378 () Bool)

(assert (=> b!5083979 m!6139378))

(declare-fun m!6139380 () Bool)

(assert (=> b!5083966 m!6139380))

(declare-fun m!6139382 () Bool)

(assert (=> b!5083966 m!6139382))

(declare-fun m!6139384 () Bool)

(assert (=> b!5083972 m!6139384))

(declare-fun m!6139386 () Bool)

(assert (=> b!5083981 m!6139386))

(declare-fun m!6139388 () Bool)

(assert (=> b!5083981 m!6139388))

(declare-fun m!6139390 () Bool)

(assert (=> b!5083970 m!6139390))

(declare-fun m!6139392 () Bool)

(assert (=> b!5083975 m!6139392))

(declare-fun m!6139394 () Bool)

(assert (=> b!5083977 m!6139394))

(declare-fun m!6139396 () Bool)

(assert (=> b!5083977 m!6139396))

(declare-fun m!6139398 () Bool)

(assert (=> b!5083976 m!6139398))

(declare-fun m!6139400 () Bool)

(assert (=> b!5083976 m!6139400))

(declare-fun m!6139402 () Bool)

(assert (=> b!5083980 m!6139402))

(declare-fun m!6139404 () Bool)

(assert (=> b!5083983 m!6139404))

(declare-fun m!6139406 () Bool)

(assert (=> b!5083983 m!6139406))

(declare-fun m!6139408 () Bool)

(assert (=> b!5083968 m!6139408))

(declare-fun m!6139410 () Bool)

(assert (=> b!5083968 m!6139410))

(declare-fun m!6139412 () Bool)

(assert (=> b!5083978 m!6139412))

(check-sat (not b!5083970) (not b!5083978) (not b!5083966) (not b!5083968) (not b!5083977) (not start!535814) (not b!5083971) (not b!5083975) (not b!5083972) (not b!5083980) (not b!5083979) (not b!5083976) (not b!5083967) (not b!5083983) (not b!5083974) (not b!5083969) (not b!5083981))
(check-sat)
(get-model)

(declare-fun b!5084023 () Bool)

(declare-fun res!2164396 () Bool)

(declare-fun e!3171034 () Bool)

(assert (=> b!5084023 (=> (not res!2164396) (not e!3171034))))

(assert (=> b!5084023 (= res!2164396 (isBalanced!4448 (right!43179 lt!2091392)))))

(declare-fun b!5084024 () Bool)

(declare-fun res!2164394 () Bool)

(assert (=> b!5084024 (=> (not res!2164394) (not e!3171034))))

(assert (=> b!5084024 (= res!2164394 (<= (- (height!2163 (left!42849 lt!2091392)) (height!2163 (right!43179 lt!2091392))) 1))))

(declare-fun b!5084025 () Bool)

(declare-fun e!3171035 () Bool)

(assert (=> b!5084025 (= e!3171035 e!3171034)))

(declare-fun res!2164392 () Bool)

(assert (=> b!5084025 (=> (not res!2164392) (not e!3171034))))

(assert (=> b!5084025 (= res!2164392 (<= (- 1) (- (height!2163 (left!42849 lt!2091392)) (height!2163 (right!43179 lt!2091392)))))))

(declare-fun b!5084026 () Bool)

(declare-fun res!2164395 () Bool)

(assert (=> b!5084026 (=> (not res!2164395) (not e!3171034))))

(declare-fun isEmpty!31675 (Conc!15586) Bool)

(assert (=> b!5084026 (= res!2164395 (not (isEmpty!31675 (left!42849 lt!2091392))))))

(declare-fun b!5084027 () Bool)

(declare-fun res!2164391 () Bool)

(assert (=> b!5084027 (=> (not res!2164391) (not e!3171034))))

(assert (=> b!5084027 (= res!2164391 (isBalanced!4448 (left!42849 lt!2091392)))))

(declare-fun b!5084028 () Bool)

(assert (=> b!5084028 (= e!3171034 (not (isEmpty!31675 (right!43179 lt!2091392))))))

(declare-fun d!1644704 () Bool)

(declare-fun res!2164393 () Bool)

(assert (=> d!1644704 (=> res!2164393 e!3171035)))

(assert (=> d!1644704 (= res!2164393 (not ((_ is Node!15586) lt!2091392)))))

(assert (=> d!1644704 (= (isBalanced!4448 lt!2091392) e!3171035)))

(assert (= (and d!1644704 (not res!2164393)) b!5084025))

(assert (= (and b!5084025 res!2164392) b!5084024))

(assert (= (and b!5084024 res!2164394) b!5084027))

(assert (= (and b!5084027 res!2164391) b!5084023))

(assert (= (and b!5084023 res!2164396) b!5084026))

(assert (= (and b!5084026 res!2164395) b!5084028))

(declare-fun m!6139436 () Bool)

(assert (=> b!5084027 m!6139436))

(declare-fun m!6139438 () Bool)

(assert (=> b!5084028 m!6139438))

(declare-fun m!6139442 () Bool)

(assert (=> b!5084026 m!6139442))

(declare-fun m!6139444 () Bool)

(assert (=> b!5084025 m!6139444))

(declare-fun m!6139448 () Bool)

(assert (=> b!5084025 m!6139448))

(assert (=> b!5084024 m!6139444))

(assert (=> b!5084024 m!6139448))

(declare-fun m!6139454 () Bool)

(assert (=> b!5084023 m!6139454))

(assert (=> b!5083972 d!1644704))

(declare-fun d!1644708 () Bool)

(assert (=> d!1644708 (= (height!2163 lt!2091392) (ite ((_ is Empty!15586) lt!2091392) 0 (ite ((_ is Leaf!25884) lt!2091392) 1 (cheight!15797 lt!2091392))))))

(assert (=> b!5083983 d!1644708))

(declare-fun d!1644712 () Bool)

(assert (=> d!1644712 (= (max!0 lt!2091393 lt!2091391) (ite (< lt!2091393 lt!2091391) lt!2091391 lt!2091393))))

(assert (=> b!5083983 d!1644712))

(declare-fun b!5084035 () Bool)

(declare-fun res!2164404 () Bool)

(declare-fun e!3171040 () Bool)

(assert (=> b!5084035 (=> (not res!2164404) (not e!3171040))))

(assert (=> b!5084035 (= res!2164404 (isBalanced!4448 (right!43179 xs!286)))))

(declare-fun b!5084036 () Bool)

(declare-fun res!2164402 () Bool)

(assert (=> b!5084036 (=> (not res!2164402) (not e!3171040))))

(assert (=> b!5084036 (= res!2164402 (<= (- (height!2163 (left!42849 xs!286)) (height!2163 (right!43179 xs!286))) 1))))

(declare-fun b!5084037 () Bool)

(declare-fun e!3171041 () Bool)

(assert (=> b!5084037 (= e!3171041 e!3171040)))

(declare-fun res!2164400 () Bool)

(assert (=> b!5084037 (=> (not res!2164400) (not e!3171040))))

(assert (=> b!5084037 (= res!2164400 (<= (- 1) (- (height!2163 (left!42849 xs!286)) (height!2163 (right!43179 xs!286)))))))

(declare-fun b!5084038 () Bool)

(declare-fun res!2164403 () Bool)

(assert (=> b!5084038 (=> (not res!2164403) (not e!3171040))))

(assert (=> b!5084038 (= res!2164403 (not (isEmpty!31675 (left!42849 xs!286))))))

(declare-fun b!5084039 () Bool)

(declare-fun res!2164399 () Bool)

(assert (=> b!5084039 (=> (not res!2164399) (not e!3171040))))

(assert (=> b!5084039 (= res!2164399 (isBalanced!4448 (left!42849 xs!286)))))

(declare-fun b!5084040 () Bool)

(assert (=> b!5084040 (= e!3171040 (not (isEmpty!31675 (right!43179 xs!286))))))

(declare-fun d!1644714 () Bool)

(declare-fun res!2164401 () Bool)

(assert (=> d!1644714 (=> res!2164401 e!3171041)))

(assert (=> d!1644714 (= res!2164401 (not ((_ is Node!15586) xs!286)))))

(assert (=> d!1644714 (= (isBalanced!4448 xs!286) e!3171041)))

(assert (= (and d!1644714 (not res!2164401)) b!5084037))

(assert (= (and b!5084037 res!2164400) b!5084036))

(assert (= (and b!5084036 res!2164402) b!5084039))

(assert (= (and b!5084039 res!2164399) b!5084035))

(assert (= (and b!5084035 res!2164404) b!5084038))

(assert (= (and b!5084038 res!2164403) b!5084040))

(declare-fun m!6139462 () Bool)

(assert (=> b!5084039 m!6139462))

(declare-fun m!6139466 () Bool)

(assert (=> b!5084040 m!6139466))

(declare-fun m!6139468 () Bool)

(assert (=> b!5084038 m!6139468))

(declare-fun m!6139472 () Bool)

(assert (=> b!5084037 m!6139472))

(declare-fun m!6139474 () Bool)

(assert (=> b!5084037 m!6139474))

(assert (=> b!5084036 m!6139472))

(assert (=> b!5084036 m!6139474))

(declare-fun m!6139476 () Bool)

(assert (=> b!5084035 m!6139476))

(assert (=> start!535814 d!1644714))

(declare-fun d!1644720 () Bool)

(declare-fun c!873460 () Bool)

(assert (=> d!1644720 (= c!873460 ((_ is Node!15586) xs!286))))

(declare-fun e!3171060 () Bool)

(assert (=> d!1644720 (= (inv!77676 xs!286) e!3171060)))

(declare-fun b!5084077 () Bool)

(declare-fun inv!77680 (Conc!15586) Bool)

(assert (=> b!5084077 (= e!3171060 (inv!77680 xs!286))))

(declare-fun b!5084078 () Bool)

(declare-fun e!3171061 () Bool)

(assert (=> b!5084078 (= e!3171060 e!3171061)))

(declare-fun res!2164429 () Bool)

(assert (=> b!5084078 (= res!2164429 (not ((_ is Leaf!25884) xs!286)))))

(assert (=> b!5084078 (=> res!2164429 e!3171061)))

(declare-fun b!5084080 () Bool)

(declare-fun inv!77681 (Conc!15586) Bool)

(assert (=> b!5084080 (= e!3171061 (inv!77681 xs!286))))

(assert (= (and d!1644720 c!873460) b!5084077))

(assert (= (and d!1644720 (not c!873460)) b!5084078))

(assert (= (and b!5084078 (not res!2164429)) b!5084080))

(declare-fun m!6139502 () Bool)

(assert (=> b!5084077 m!6139502))

(declare-fun m!6139504 () Bool)

(assert (=> b!5084080 m!6139504))

(assert (=> start!535814 d!1644720))

(declare-fun d!1644744 () Bool)

(declare-fun c!873462 () Bool)

(assert (=> d!1644744 (= c!873462 ((_ is Node!15586) ys!41))))

(declare-fun e!3171066 () Bool)

(assert (=> d!1644744 (= (inv!77676 ys!41) e!3171066)))

(declare-fun b!5084089 () Bool)

(assert (=> b!5084089 (= e!3171066 (inv!77680 ys!41))))

(declare-fun b!5084090 () Bool)

(declare-fun e!3171067 () Bool)

(assert (=> b!5084090 (= e!3171066 e!3171067)))

(declare-fun res!2164437 () Bool)

(assert (=> b!5084090 (= res!2164437 (not ((_ is Leaf!25884) ys!41)))))

(assert (=> b!5084090 (=> res!2164437 e!3171067)))

(declare-fun b!5084091 () Bool)

(assert (=> b!5084091 (= e!3171067 (inv!77681 ys!41))))

(assert (= (and d!1644744 c!873462) b!5084089))

(assert (= (and d!1644744 (not c!873462)) b!5084090))

(assert (= (and b!5084090 (not res!2164437)) b!5084091))

(declare-fun m!6139522 () Bool)

(assert (=> b!5084089 m!6139522))

(declare-fun m!6139524 () Bool)

(assert (=> b!5084091 m!6139524))

(assert (=> start!535814 d!1644744))

(declare-fun b!5084098 () Bool)

(declare-fun res!2164445 () Bool)

(declare-fun e!3171072 () Bool)

(assert (=> b!5084098 (=> (not res!2164445) (not e!3171072))))

(assert (=> b!5084098 (= res!2164445 (isBalanced!4448 (right!43179 ys!41)))))

(declare-fun b!5084099 () Bool)

(declare-fun res!2164443 () Bool)

(assert (=> b!5084099 (=> (not res!2164443) (not e!3171072))))

(assert (=> b!5084099 (= res!2164443 (<= (- (height!2163 (left!42849 ys!41)) (height!2163 (right!43179 ys!41))) 1))))

(declare-fun b!5084100 () Bool)

(declare-fun e!3171073 () Bool)

(assert (=> b!5084100 (= e!3171073 e!3171072)))

(declare-fun res!2164441 () Bool)

(assert (=> b!5084100 (=> (not res!2164441) (not e!3171072))))

(assert (=> b!5084100 (= res!2164441 (<= (- 1) (- (height!2163 (left!42849 ys!41)) (height!2163 (right!43179 ys!41)))))))

(declare-fun b!5084101 () Bool)

(declare-fun res!2164444 () Bool)

(assert (=> b!5084101 (=> (not res!2164444) (not e!3171072))))

(assert (=> b!5084101 (= res!2164444 (not (isEmpty!31675 (left!42849 ys!41))))))

(declare-fun b!5084102 () Bool)

(declare-fun res!2164440 () Bool)

(assert (=> b!5084102 (=> (not res!2164440) (not e!3171072))))

(assert (=> b!5084102 (= res!2164440 (isBalanced!4448 (left!42849 ys!41)))))

(declare-fun b!5084103 () Bool)

(assert (=> b!5084103 (= e!3171072 (not (isEmpty!31675 (right!43179 ys!41))))))

(declare-fun d!1644750 () Bool)

(declare-fun res!2164442 () Bool)

(assert (=> d!1644750 (=> res!2164442 e!3171073)))

(assert (=> d!1644750 (= res!2164442 (not ((_ is Node!15586) ys!41)))))

(assert (=> d!1644750 (= (isBalanced!4448 ys!41) e!3171073)))

(assert (= (and d!1644750 (not res!2164442)) b!5084100))

(assert (= (and b!5084100 res!2164441) b!5084099))

(assert (= (and b!5084099 res!2164443) b!5084102))

(assert (= (and b!5084102 res!2164440) b!5084098))

(assert (= (and b!5084098 res!2164445) b!5084101))

(assert (= (and b!5084101 res!2164444) b!5084103))

(declare-fun m!6139530 () Bool)

(assert (=> b!5084102 m!6139530))

(declare-fun m!6139532 () Bool)

(assert (=> b!5084103 m!6139532))

(declare-fun m!6139534 () Bool)

(assert (=> b!5084101 m!6139534))

(assert (=> b!5084100 m!6139400))

(assert (=> b!5084100 m!6139398))

(assert (=> b!5084099 m!6139400))

(assert (=> b!5084099 m!6139398))

(declare-fun m!6139536 () Bool)

(assert (=> b!5084098 m!6139536))

(assert (=> b!5083980 d!1644750))

(declare-fun d!1644754 () Bool)

(declare-fun size!39119 (List!58580) Int)

(assert (=> d!1644754 (= (inv!77677 (xs!18964 err!4617)) (<= (size!39119 (innerList!15674 (xs!18964 err!4617))) 2147483647))))

(declare-fun bs!1190824 () Bool)

(assert (= bs!1190824 d!1644754))

(declare-fun m!6139538 () Bool)

(assert (=> bs!1190824 m!6139538))

(assert (=> b!5083970 d!1644754))

(declare-fun d!1644756 () Bool)

(assert (=> d!1644756 (= (height!2163 xs!286) (ite ((_ is Empty!15586) xs!286) 0 (ite ((_ is Leaf!25884) xs!286) 1 (cheight!15797 xs!286))))))

(assert (=> b!5083981 d!1644756))

(declare-fun d!1644758 () Bool)

(assert (=> d!1644758 (= (height!2163 ys!41) (ite ((_ is Empty!15586) ys!41) 0 (ite ((_ is Leaf!25884) ys!41) 1 (cheight!15797 ys!41))))))

(assert (=> b!5083981 d!1644758))

(declare-fun d!1644760 () Bool)

(declare-fun c!873471 () Bool)

(assert (=> d!1644760 (= c!873471 ((_ is Node!15586) (left!42849 ys!41)))))

(declare-fun e!3171080 () Bool)

(assert (=> d!1644760 (= (inv!77676 (left!42849 ys!41)) e!3171080)))

(declare-fun b!5084116 () Bool)

(assert (=> b!5084116 (= e!3171080 (inv!77680 (left!42849 ys!41)))))

(declare-fun b!5084117 () Bool)

(declare-fun e!3171081 () Bool)

(assert (=> b!5084117 (= e!3171080 e!3171081)))

(declare-fun res!2164446 () Bool)

(assert (=> b!5084117 (= res!2164446 (not ((_ is Leaf!25884) (left!42849 ys!41))))))

(assert (=> b!5084117 (=> res!2164446 e!3171081)))

(declare-fun b!5084118 () Bool)

(assert (=> b!5084118 (= e!3171081 (inv!77681 (left!42849 ys!41)))))

(assert (= (and d!1644760 c!873471) b!5084116))

(assert (= (and d!1644760 (not c!873471)) b!5084117))

(assert (= (and b!5084117 (not res!2164446)) b!5084118))

(declare-fun m!6139548 () Bool)

(assert (=> b!5084116 m!6139548))

(declare-fun m!6139550 () Bool)

(assert (=> b!5084118 m!6139550))

(assert (=> b!5083967 d!1644760))

(declare-fun d!1644764 () Bool)

(declare-fun c!873472 () Bool)

(assert (=> d!1644764 (= c!873472 ((_ is Node!15586) (right!43179 ys!41)))))

(declare-fun e!3171082 () Bool)

(assert (=> d!1644764 (= (inv!77676 (right!43179 ys!41)) e!3171082)))

(declare-fun b!5084119 () Bool)

(assert (=> b!5084119 (= e!3171082 (inv!77680 (right!43179 ys!41)))))

(declare-fun b!5084120 () Bool)

(declare-fun e!3171083 () Bool)

(assert (=> b!5084120 (= e!3171082 e!3171083)))

(declare-fun res!2164447 () Bool)

(assert (=> b!5084120 (= res!2164447 (not ((_ is Leaf!25884) (right!43179 ys!41))))))

(assert (=> b!5084120 (=> res!2164447 e!3171083)))

(declare-fun b!5084121 () Bool)

(assert (=> b!5084121 (= e!3171083 (inv!77681 (right!43179 ys!41)))))

(assert (= (and d!1644764 c!873472) b!5084119))

(assert (= (and d!1644764 (not c!873472)) b!5084120))

(assert (= (and b!5084120 (not res!2164447)) b!5084121))

(declare-fun m!6139552 () Bool)

(assert (=> b!5084119 m!6139552))

(declare-fun m!6139554 () Bool)

(assert (=> b!5084121 m!6139554))

(assert (=> b!5083967 d!1644764))

(declare-fun d!1644766 () Bool)

(declare-fun e!3171140 () Bool)

(assert (=> d!1644766 e!3171140))

(declare-fun res!2164482 () Bool)

(assert (=> d!1644766 (=> (not res!2164482) (not e!3171140))))

(declare-fun e!3171144 () Bool)

(assert (=> d!1644766 (= res!2164482 e!3171144)))

(declare-fun res!2164488 () Bool)

(assert (=> d!1644766 (=> res!2164488 e!3171144)))

(assert (=> d!1644766 (= res!2164488 (not ((_ is Node!15586) xs!286)))))

(assert (=> d!1644766 (= (appendAssocInst!922 xs!286 ys!41) true)))

(declare-fun b!5084205 () Bool)

(declare-fun e!3171141 () Bool)

(assert (=> b!5084205 (= e!3171140 e!3171141)))

(declare-fun res!2164481 () Bool)

(assert (=> b!5084205 (=> res!2164481 e!3171141)))

(assert (=> b!5084205 (= res!2164481 (not ((_ is Node!15586) ys!41)))))

(declare-fun b!5084206 () Bool)

(declare-fun e!3171142 () Bool)

(declare-fun e!3171143 () Bool)

(assert (=> b!5084206 (= e!3171142 e!3171143)))

(declare-fun res!2164484 () Bool)

(assert (=> b!5084206 (=> (not res!2164484) (not e!3171143))))

(declare-fun appendAssoc!314 (List!58580 List!58580 List!58580) Bool)

(assert (=> b!5084206 (= res!2164484 (appendAssoc!314 (list!19033 (left!42849 (right!43179 xs!286))) (list!19033 (right!43179 (right!43179 xs!286))) (list!19033 ys!41)))))

(declare-fun b!5084207 () Bool)

(assert (=> b!5084207 (= e!3171143 (appendAssoc!314 (list!19033 (left!42849 xs!286)) (list!19033 (left!42849 (right!43179 xs!286))) (++!12815 (list!19033 (right!43179 (right!43179 xs!286))) (list!19033 ys!41))))))

(declare-fun b!5084208 () Bool)

(declare-fun e!3171146 () Bool)

(assert (=> b!5084208 (= e!3171146 (appendAssoc!314 (++!12815 (list!19033 xs!286) (list!19033 (left!42849 (left!42849 ys!41)))) (list!19033 (right!43179 (left!42849 ys!41))) (list!19033 (right!43179 ys!41))))))

(declare-fun b!5084209 () Bool)

(declare-fun e!3171139 () Bool)

(assert (=> b!5084209 (= e!3171141 e!3171139)))

(declare-fun res!2164487 () Bool)

(assert (=> b!5084209 (=> (not res!2164487) (not e!3171139))))

(assert (=> b!5084209 (= res!2164487 (appendAssoc!314 (list!19033 xs!286) (list!19033 (left!42849 ys!41)) (list!19033 (right!43179 ys!41))))))

(declare-fun b!5084210 () Bool)

(declare-fun e!3171147 () Bool)

(assert (=> b!5084210 (= e!3171144 e!3171147)))

(declare-fun res!2164485 () Bool)

(assert (=> b!5084210 (=> (not res!2164485) (not e!3171147))))

(assert (=> b!5084210 (= res!2164485 (appendAssoc!314 (list!19033 (left!42849 xs!286)) (list!19033 (right!43179 xs!286)) (list!19033 ys!41)))))

(declare-fun b!5084211 () Bool)

(declare-fun e!3171145 () Bool)

(assert (=> b!5084211 (= e!3171145 e!3171146)))

(declare-fun res!2164480 () Bool)

(assert (=> b!5084211 (=> (not res!2164480) (not e!3171146))))

(assert (=> b!5084211 (= res!2164480 (appendAssoc!314 (list!19033 xs!286) (list!19033 (left!42849 (left!42849 ys!41))) (list!19033 (right!43179 (left!42849 ys!41)))))))

(declare-fun b!5084212 () Bool)

(assert (=> b!5084212 (= e!3171147 e!3171142)))

(declare-fun res!2164483 () Bool)

(assert (=> b!5084212 (=> res!2164483 e!3171142)))

(assert (=> b!5084212 (= res!2164483 (not ((_ is Node!15586) (right!43179 xs!286))))))

(declare-fun b!5084213 () Bool)

(assert (=> b!5084213 (= e!3171139 e!3171145)))

(declare-fun res!2164486 () Bool)

(assert (=> b!5084213 (=> res!2164486 e!3171145)))

(assert (=> b!5084213 (= res!2164486 (not ((_ is Node!15586) (left!42849 ys!41))))))

(assert (= (and d!1644766 (not res!2164488)) b!5084210))

(assert (= (and b!5084210 res!2164485) b!5084212))

(assert (= (and b!5084212 (not res!2164483)) b!5084206))

(assert (= (and b!5084206 res!2164484) b!5084207))

(assert (= (and d!1644766 res!2164482) b!5084205))

(assert (= (and b!5084205 (not res!2164481)) b!5084209))

(assert (= (and b!5084209 res!2164487) b!5084213))

(assert (= (and b!5084213 (not res!2164486)) b!5084211))

(assert (= (and b!5084211 res!2164480) b!5084208))

(declare-fun m!6139636 () Bool)

(assert (=> b!5084207 m!6139636))

(declare-fun m!6139638 () Bool)

(assert (=> b!5084207 m!6139638))

(assert (=> b!5084207 m!6139638))

(declare-fun m!6139640 () Bool)

(assert (=> b!5084207 m!6139640))

(declare-fun m!6139642 () Bool)

(assert (=> b!5084207 m!6139642))

(declare-fun m!6139644 () Bool)

(assert (=> b!5084207 m!6139644))

(assert (=> b!5084207 m!6139376))

(assert (=> b!5084207 m!6139636))

(assert (=> b!5084207 m!6139376))

(assert (=> b!5084207 m!6139642))

(assert (=> b!5084207 m!6139640))

(assert (=> b!5084206 m!6139640))

(assert (=> b!5084206 m!6139636))

(assert (=> b!5084206 m!6139376))

(assert (=> b!5084206 m!6139640))

(assert (=> b!5084206 m!6139636))

(assert (=> b!5084206 m!6139376))

(declare-fun m!6139646 () Bool)

(assert (=> b!5084206 m!6139646))

(assert (=> b!5084210 m!6139638))

(declare-fun m!6139648 () Bool)

(assert (=> b!5084210 m!6139648))

(assert (=> b!5084210 m!6139376))

(assert (=> b!5084210 m!6139638))

(assert (=> b!5084210 m!6139648))

(assert (=> b!5084210 m!6139376))

(declare-fun m!6139650 () Bool)

(assert (=> b!5084210 m!6139650))

(declare-fun m!6139652 () Bool)

(assert (=> b!5084208 m!6139652))

(declare-fun m!6139654 () Bool)

(assert (=> b!5084208 m!6139654))

(declare-fun m!6139656 () Bool)

(assert (=> b!5084208 m!6139656))

(assert (=> b!5084208 m!6139652))

(declare-fun m!6139658 () Bool)

(assert (=> b!5084208 m!6139658))

(declare-fun m!6139660 () Bool)

(assert (=> b!5084208 m!6139660))

(assert (=> b!5084208 m!6139374))

(assert (=> b!5084208 m!6139654))

(assert (=> b!5084208 m!6139656))

(assert (=> b!5084208 m!6139374))

(assert (=> b!5084208 m!6139658))

(assert (=> b!5084209 m!6139374))

(declare-fun m!6139662 () Bool)

(assert (=> b!5084209 m!6139662))

(assert (=> b!5084209 m!6139658))

(assert (=> b!5084209 m!6139374))

(assert (=> b!5084209 m!6139662))

(assert (=> b!5084209 m!6139658))

(declare-fun m!6139664 () Bool)

(assert (=> b!5084209 m!6139664))

(assert (=> b!5084211 m!6139374))

(assert (=> b!5084211 m!6139654))

(assert (=> b!5084211 m!6139652))

(assert (=> b!5084211 m!6139374))

(assert (=> b!5084211 m!6139654))

(assert (=> b!5084211 m!6139652))

(declare-fun m!6139666 () Bool)

(assert (=> b!5084211 m!6139666))

(assert (=> b!5083966 d!1644766))

(declare-fun d!1644780 () Bool)

(declare-fun c!873482 () Bool)

(assert (=> d!1644780 (= c!873482 ((_ is Node!15586) err!4617))))

(declare-fun e!3171148 () Bool)

(assert (=> d!1644780 (= (inv!77676 err!4617) e!3171148)))

(declare-fun b!5084214 () Bool)

(assert (=> b!5084214 (= e!3171148 (inv!77680 err!4617))))

(declare-fun b!5084215 () Bool)

(declare-fun e!3171149 () Bool)

(assert (=> b!5084215 (= e!3171148 e!3171149)))

(declare-fun res!2164489 () Bool)

(assert (=> b!5084215 (= res!2164489 (not ((_ is Leaf!25884) err!4617)))))

(assert (=> b!5084215 (=> res!2164489 e!3171149)))

(declare-fun b!5084216 () Bool)

(assert (=> b!5084216 (= e!3171149 (inv!77681 err!4617))))

(assert (= (and d!1644780 c!873482) b!5084214))

(assert (= (and d!1644780 (not c!873482)) b!5084215))

(assert (= (and b!5084215 (not res!2164489)) b!5084216))

(declare-fun m!6139668 () Bool)

(assert (=> b!5084214 m!6139668))

(declare-fun m!6139670 () Bool)

(assert (=> b!5084216 m!6139670))

(assert (=> b!5083966 d!1644780))

(declare-fun d!1644782 () Bool)

(declare-fun c!873483 () Bool)

(assert (=> d!1644782 (= c!873483 ((_ is Node!15586) (left!42849 xs!286)))))

(declare-fun e!3171150 () Bool)

(assert (=> d!1644782 (= (inv!77676 (left!42849 xs!286)) e!3171150)))

(declare-fun b!5084217 () Bool)

(assert (=> b!5084217 (= e!3171150 (inv!77680 (left!42849 xs!286)))))

(declare-fun b!5084218 () Bool)

(declare-fun e!3171151 () Bool)

(assert (=> b!5084218 (= e!3171150 e!3171151)))

(declare-fun res!2164490 () Bool)

(assert (=> b!5084218 (= res!2164490 (not ((_ is Leaf!25884) (left!42849 xs!286))))))

(assert (=> b!5084218 (=> res!2164490 e!3171151)))

(declare-fun b!5084219 () Bool)

(assert (=> b!5084219 (= e!3171151 (inv!77681 (left!42849 xs!286)))))

(assert (= (and d!1644782 c!873483) b!5084217))

(assert (= (and d!1644782 (not c!873483)) b!5084218))

(assert (= (and b!5084218 (not res!2164490)) b!5084219))

(declare-fun m!6139672 () Bool)

(assert (=> b!5084217 m!6139672))

(declare-fun m!6139674 () Bool)

(assert (=> b!5084219 m!6139674))

(assert (=> b!5083977 d!1644782))

(declare-fun d!1644784 () Bool)

(declare-fun c!873484 () Bool)

(assert (=> d!1644784 (= c!873484 ((_ is Node!15586) (right!43179 xs!286)))))

(declare-fun e!3171152 () Bool)

(assert (=> d!1644784 (= (inv!77676 (right!43179 xs!286)) e!3171152)))

(declare-fun b!5084220 () Bool)

(assert (=> b!5084220 (= e!3171152 (inv!77680 (right!43179 xs!286)))))

(declare-fun b!5084221 () Bool)

(declare-fun e!3171153 () Bool)

(assert (=> b!5084221 (= e!3171152 e!3171153)))

(declare-fun res!2164491 () Bool)

(assert (=> b!5084221 (= res!2164491 (not ((_ is Leaf!25884) (right!43179 xs!286))))))

(assert (=> b!5084221 (=> res!2164491 e!3171153)))

(declare-fun b!5084222 () Bool)

(assert (=> b!5084222 (= e!3171153 (inv!77681 (right!43179 xs!286)))))

(assert (= (and d!1644784 c!873484) b!5084220))

(assert (= (and d!1644784 (not c!873484)) b!5084221))

(assert (= (and b!5084221 (not res!2164491)) b!5084222))

(declare-fun m!6139676 () Bool)

(assert (=> b!5084220 m!6139676))

(declare-fun m!6139678 () Bool)

(assert (=> b!5084222 m!6139678))

(assert (=> b!5083977 d!1644784))

(declare-fun d!1644786 () Bool)

(declare-fun c!873485 () Bool)

(assert (=> d!1644786 (= c!873485 ((_ is Node!15586) (left!42849 err!4617)))))

(declare-fun e!3171154 () Bool)

(assert (=> d!1644786 (= (inv!77676 (left!42849 err!4617)) e!3171154)))

(declare-fun b!5084223 () Bool)

(assert (=> b!5084223 (= e!3171154 (inv!77680 (left!42849 err!4617)))))

(declare-fun b!5084224 () Bool)

(declare-fun e!3171155 () Bool)

(assert (=> b!5084224 (= e!3171154 e!3171155)))

(declare-fun res!2164492 () Bool)

(assert (=> b!5084224 (= res!2164492 (not ((_ is Leaf!25884) (left!42849 err!4617))))))

(assert (=> b!5084224 (=> res!2164492 e!3171155)))

(declare-fun b!5084225 () Bool)

(assert (=> b!5084225 (= e!3171155 (inv!77681 (left!42849 err!4617)))))

(assert (= (and d!1644786 c!873485) b!5084223))

(assert (= (and d!1644786 (not c!873485)) b!5084224))

(assert (= (and b!5084224 (not res!2164492)) b!5084225))

(declare-fun m!6139680 () Bool)

(assert (=> b!5084223 m!6139680))

(declare-fun m!6139682 () Bool)

(assert (=> b!5084225 m!6139682))

(assert (=> b!5083968 d!1644786))

(declare-fun d!1644788 () Bool)

(declare-fun c!873486 () Bool)

(assert (=> d!1644788 (= c!873486 ((_ is Node!15586) (right!43179 err!4617)))))

(declare-fun e!3171156 () Bool)

(assert (=> d!1644788 (= (inv!77676 (right!43179 err!4617)) e!3171156)))

(declare-fun b!5084226 () Bool)

(assert (=> b!5084226 (= e!3171156 (inv!77680 (right!43179 err!4617)))))

(declare-fun b!5084227 () Bool)

(declare-fun e!3171157 () Bool)

(assert (=> b!5084227 (= e!3171156 e!3171157)))

(declare-fun res!2164493 () Bool)

(assert (=> b!5084227 (= res!2164493 (not ((_ is Leaf!25884) (right!43179 err!4617))))))

(assert (=> b!5084227 (=> res!2164493 e!3171157)))

(declare-fun b!5084228 () Bool)

(assert (=> b!5084228 (= e!3171157 (inv!77681 (right!43179 err!4617)))))

(assert (= (and d!1644788 c!873486) b!5084226))

(assert (= (and d!1644788 (not c!873486)) b!5084227))

(assert (= (and b!5084227 (not res!2164493)) b!5084228))

(declare-fun m!6139684 () Bool)

(assert (=> b!5084226 m!6139684))

(declare-fun m!6139686 () Bool)

(assert (=> b!5084228 m!6139686))

(assert (=> b!5083968 d!1644788))

(declare-fun b!5084238 () Bool)

(declare-fun e!3171162 () List!58580)

(declare-fun e!3171163 () List!58580)

(assert (=> b!5084238 (= e!3171162 e!3171163)))

(declare-fun c!873492 () Bool)

(assert (=> b!5084238 (= c!873492 ((_ is Leaf!25884) lt!2091392))))

(declare-fun b!5084237 () Bool)

(assert (=> b!5084237 (= e!3171162 Nil!58456)))

(declare-fun b!5084240 () Bool)

(assert (=> b!5084240 (= e!3171163 (++!12815 (list!19033 (left!42849 lt!2091392)) (list!19033 (right!43179 lt!2091392))))))

(declare-fun d!1644790 () Bool)

(declare-fun c!873491 () Bool)

(assert (=> d!1644790 (= c!873491 ((_ is Empty!15586) lt!2091392))))

(assert (=> d!1644790 (= (list!19033 lt!2091392) e!3171162)))

(declare-fun b!5084239 () Bool)

(declare-fun list!19035 (IArray!31233) List!58580)

(assert (=> b!5084239 (= e!3171163 (list!19035 (xs!18964 lt!2091392)))))

(assert (= (and d!1644790 c!873491) b!5084237))

(assert (= (and d!1644790 (not c!873491)) b!5084238))

(assert (= (and b!5084238 c!873492) b!5084239))

(assert (= (and b!5084238 (not c!873492)) b!5084240))

(declare-fun m!6139688 () Bool)

(assert (=> b!5084240 m!6139688))

(declare-fun m!6139690 () Bool)

(assert (=> b!5084240 m!6139690))

(assert (=> b!5084240 m!6139688))

(assert (=> b!5084240 m!6139690))

(declare-fun m!6139692 () Bool)

(assert (=> b!5084240 m!6139692))

(declare-fun m!6139694 () Bool)

(assert (=> b!5084239 m!6139694))

(assert (=> b!5083979 d!1644790))

(declare-fun b!5084250 () Bool)

(declare-fun e!3171168 () List!58580)

(assert (=> b!5084250 (= e!3171168 (Cons!58456 (h!64904 (list!19033 xs!286)) (++!12815 (t!371417 (list!19033 xs!286)) (list!19033 ys!41))))))

(declare-fun d!1644792 () Bool)

(declare-fun e!3171169 () Bool)

(assert (=> d!1644792 e!3171169))

(declare-fun res!2164499 () Bool)

(assert (=> d!1644792 (=> (not res!2164499) (not e!3171169))))

(declare-fun lt!2091399 () List!58580)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10430 (List!58580) (InoxSet T!105272))

(assert (=> d!1644792 (= res!2164499 (= (content!10430 lt!2091399) ((_ map or) (content!10430 (list!19033 xs!286)) (content!10430 (list!19033 ys!41)))))))

(assert (=> d!1644792 (= lt!2091399 e!3171168)))

(declare-fun c!873495 () Bool)

(assert (=> d!1644792 (= c!873495 ((_ is Nil!58456) (list!19033 xs!286)))))

(assert (=> d!1644792 (= (++!12815 (list!19033 xs!286) (list!19033 ys!41)) lt!2091399)))

(declare-fun b!5084249 () Bool)

(assert (=> b!5084249 (= e!3171168 (list!19033 ys!41))))

(declare-fun b!5084252 () Bool)

(assert (=> b!5084252 (= e!3171169 (or (not (= (list!19033 ys!41) Nil!58456)) (= lt!2091399 (list!19033 xs!286))))))

(declare-fun b!5084251 () Bool)

(declare-fun res!2164498 () Bool)

(assert (=> b!5084251 (=> (not res!2164498) (not e!3171169))))

(assert (=> b!5084251 (= res!2164498 (= (size!39119 lt!2091399) (+ (size!39119 (list!19033 xs!286)) (size!39119 (list!19033 ys!41)))))))

(assert (= (and d!1644792 c!873495) b!5084249))

(assert (= (and d!1644792 (not c!873495)) b!5084250))

(assert (= (and d!1644792 res!2164499) b!5084251))

(assert (= (and b!5084251 res!2164498) b!5084252))

(assert (=> b!5084250 m!6139376))

(declare-fun m!6139696 () Bool)

(assert (=> b!5084250 m!6139696))

(declare-fun m!6139698 () Bool)

(assert (=> d!1644792 m!6139698))

(assert (=> d!1644792 m!6139374))

(declare-fun m!6139700 () Bool)

(assert (=> d!1644792 m!6139700))

(assert (=> d!1644792 m!6139376))

(declare-fun m!6139702 () Bool)

(assert (=> d!1644792 m!6139702))

(declare-fun m!6139704 () Bool)

(assert (=> b!5084251 m!6139704))

(assert (=> b!5084251 m!6139374))

(declare-fun m!6139706 () Bool)

(assert (=> b!5084251 m!6139706))

(assert (=> b!5084251 m!6139376))

(declare-fun m!6139708 () Bool)

(assert (=> b!5084251 m!6139708))

(assert (=> b!5083979 d!1644792))

(declare-fun b!5084254 () Bool)

(declare-fun e!3171170 () List!58580)

(declare-fun e!3171171 () List!58580)

(assert (=> b!5084254 (= e!3171170 e!3171171)))

(declare-fun c!873497 () Bool)

(assert (=> b!5084254 (= c!873497 ((_ is Leaf!25884) xs!286))))

(declare-fun b!5084253 () Bool)

(assert (=> b!5084253 (= e!3171170 Nil!58456)))

(declare-fun b!5084256 () Bool)

(assert (=> b!5084256 (= e!3171171 (++!12815 (list!19033 (left!42849 xs!286)) (list!19033 (right!43179 xs!286))))))

(declare-fun d!1644794 () Bool)

(declare-fun c!873496 () Bool)

(assert (=> d!1644794 (= c!873496 ((_ is Empty!15586) xs!286))))

(assert (=> d!1644794 (= (list!19033 xs!286) e!3171170)))

(declare-fun b!5084255 () Bool)

(assert (=> b!5084255 (= e!3171171 (list!19035 (xs!18964 xs!286)))))

(assert (= (and d!1644794 c!873496) b!5084253))

(assert (= (and d!1644794 (not c!873496)) b!5084254))

(assert (= (and b!5084254 c!873497) b!5084255))

(assert (= (and b!5084254 (not c!873497)) b!5084256))

(assert (=> b!5084256 m!6139638))

(assert (=> b!5084256 m!6139648))

(assert (=> b!5084256 m!6139638))

(assert (=> b!5084256 m!6139648))

(declare-fun m!6139710 () Bool)

(assert (=> b!5084256 m!6139710))

(declare-fun m!6139712 () Bool)

(assert (=> b!5084255 m!6139712))

(assert (=> b!5083979 d!1644794))

(declare-fun b!5084258 () Bool)

(declare-fun e!3171172 () List!58580)

(declare-fun e!3171173 () List!58580)

(assert (=> b!5084258 (= e!3171172 e!3171173)))

(declare-fun c!873499 () Bool)

(assert (=> b!5084258 (= c!873499 ((_ is Leaf!25884) ys!41))))

(declare-fun b!5084257 () Bool)

(assert (=> b!5084257 (= e!3171172 Nil!58456)))

(declare-fun b!5084260 () Bool)

(assert (=> b!5084260 (= e!3171173 (++!12815 (list!19033 (left!42849 ys!41)) (list!19033 (right!43179 ys!41))))))

(declare-fun d!1644796 () Bool)

(declare-fun c!873498 () Bool)

(assert (=> d!1644796 (= c!873498 ((_ is Empty!15586) ys!41))))

(assert (=> d!1644796 (= (list!19033 ys!41) e!3171172)))

(declare-fun b!5084259 () Bool)

(assert (=> b!5084259 (= e!3171173 (list!19035 (xs!18964 ys!41)))))

(assert (= (and d!1644796 c!873498) b!5084257))

(assert (= (and d!1644796 (not c!873498)) b!5084258))

(assert (= (and b!5084258 c!873499) b!5084259))

(assert (= (and b!5084258 (not c!873499)) b!5084260))

(assert (=> b!5084260 m!6139662))

(assert (=> b!5084260 m!6139658))

(assert (=> b!5084260 m!6139662))

(assert (=> b!5084260 m!6139658))

(declare-fun m!6139714 () Bool)

(assert (=> b!5084260 m!6139714))

(declare-fun m!6139716 () Bool)

(assert (=> b!5084259 m!6139716))

(assert (=> b!5083979 d!1644796))

(declare-fun d!1644798 () Bool)

(assert (=> d!1644798 (= (inv!77677 (xs!18964 ys!41)) (<= (size!39119 (innerList!15674 (xs!18964 ys!41))) 2147483647))))

(declare-fun bs!1190826 () Bool)

(assert (= bs!1190826 d!1644798))

(declare-fun m!6139718 () Bool)

(assert (=> bs!1190826 m!6139718))

(assert (=> b!5083978 d!1644798))

(declare-fun d!1644800 () Bool)

(assert (=> d!1644800 (= (inv!77677 (xs!18964 xs!286)) (<= (size!39119 (innerList!15674 (xs!18964 xs!286))) 2147483647))))

(declare-fun bs!1190827 () Bool)

(assert (= bs!1190827 d!1644800))

(declare-fun m!6139720 () Bool)

(assert (=> bs!1190827 m!6139720))

(assert (=> b!5083975 d!1644800))

(declare-fun d!1644802 () Bool)

(assert (=> d!1644802 (= (height!2163 (right!43179 ys!41)) (ite ((_ is Empty!15586) (right!43179 ys!41)) 0 (ite ((_ is Leaf!25884) (right!43179 ys!41)) 1 (cheight!15797 (right!43179 ys!41)))))))

(assert (=> b!5083976 d!1644802))

(declare-fun d!1644804 () Bool)

(assert (=> d!1644804 (= (height!2163 (left!42849 ys!41)) (ite ((_ is Empty!15586) (left!42849 ys!41)) 0 (ite ((_ is Leaf!25884) (left!42849 ys!41)) 1 (cheight!15797 (left!42849 ys!41)))))))

(assert (=> b!5083976 d!1644804))

(declare-fun tp!1417627 () Bool)

(declare-fun e!3171178 () Bool)

(declare-fun b!5084269 () Bool)

(declare-fun tp!1417626 () Bool)

(assert (=> b!5084269 (= e!3171178 (and (inv!77676 (left!42849 (left!42849 ys!41))) tp!1417626 (inv!77676 (right!43179 (left!42849 ys!41))) tp!1417627))))

(declare-fun b!5084271 () Bool)

(declare-fun e!3171179 () Bool)

(declare-fun tp!1417625 () Bool)

(assert (=> b!5084271 (= e!3171179 tp!1417625)))

(declare-fun b!5084270 () Bool)

(assert (=> b!5084270 (= e!3171178 (and (inv!77677 (xs!18964 (left!42849 ys!41))) e!3171179))))

(assert (=> b!5083967 (= tp!1417585 (and (inv!77676 (left!42849 ys!41)) e!3171178))))

(assert (= (and b!5083967 ((_ is Node!15586) (left!42849 ys!41))) b!5084269))

(assert (= b!5084270 b!5084271))

(assert (= (and b!5083967 ((_ is Leaf!25884) (left!42849 ys!41))) b!5084270))

(declare-fun m!6139722 () Bool)

(assert (=> b!5084269 m!6139722))

(declare-fun m!6139724 () Bool)

(assert (=> b!5084269 m!6139724))

(declare-fun m!6139726 () Bool)

(assert (=> b!5084270 m!6139726))

(assert (=> b!5083967 m!6139368))

(declare-fun b!5084272 () Bool)

(declare-fun tp!1417629 () Bool)

(declare-fun e!3171180 () Bool)

(declare-fun tp!1417630 () Bool)

(assert (=> b!5084272 (= e!3171180 (and (inv!77676 (left!42849 (right!43179 ys!41))) tp!1417629 (inv!77676 (right!43179 (right!43179 ys!41))) tp!1417630))))

(declare-fun b!5084274 () Bool)

(declare-fun e!3171181 () Bool)

(declare-fun tp!1417628 () Bool)

(assert (=> b!5084274 (= e!3171181 tp!1417628)))

(declare-fun b!5084273 () Bool)

(assert (=> b!5084273 (= e!3171180 (and (inv!77677 (xs!18964 (right!43179 ys!41))) e!3171181))))

(assert (=> b!5083967 (= tp!1417586 (and (inv!77676 (right!43179 ys!41)) e!3171180))))

(assert (= (and b!5083967 ((_ is Node!15586) (right!43179 ys!41))) b!5084272))

(assert (= b!5084273 b!5084274))

(assert (= (and b!5083967 ((_ is Leaf!25884) (right!43179 ys!41))) b!5084273))

(declare-fun m!6139728 () Bool)

(assert (=> b!5084272 m!6139728))

(declare-fun m!6139730 () Bool)

(assert (=> b!5084272 m!6139730))

(declare-fun m!6139732 () Bool)

(assert (=> b!5084273 m!6139732))

(assert (=> b!5083967 m!6139370))

(declare-fun tp!1417633 () Bool)

(declare-fun tp!1417632 () Bool)

(declare-fun e!3171182 () Bool)

(declare-fun b!5084275 () Bool)

(assert (=> b!5084275 (= e!3171182 (and (inv!77676 (left!42849 (left!42849 xs!286))) tp!1417632 (inv!77676 (right!43179 (left!42849 xs!286))) tp!1417633))))

(declare-fun b!5084277 () Bool)

(declare-fun e!3171183 () Bool)

(declare-fun tp!1417631 () Bool)

(assert (=> b!5084277 (= e!3171183 tp!1417631)))

(declare-fun b!5084276 () Bool)

(assert (=> b!5084276 (= e!3171182 (and (inv!77677 (xs!18964 (left!42849 xs!286))) e!3171183))))

(assert (=> b!5083977 (= tp!1417583 (and (inv!77676 (left!42849 xs!286)) e!3171182))))

(assert (= (and b!5083977 ((_ is Node!15586) (left!42849 xs!286))) b!5084275))

(assert (= b!5084276 b!5084277))

(assert (= (and b!5083977 ((_ is Leaf!25884) (left!42849 xs!286))) b!5084276))

(declare-fun m!6139734 () Bool)

(assert (=> b!5084275 m!6139734))

(declare-fun m!6139736 () Bool)

(assert (=> b!5084275 m!6139736))

(declare-fun m!6139738 () Bool)

(assert (=> b!5084276 m!6139738))

(assert (=> b!5083977 m!6139394))

(declare-fun e!3171184 () Bool)

(declare-fun tp!1417635 () Bool)

(declare-fun b!5084278 () Bool)

(declare-fun tp!1417636 () Bool)

(assert (=> b!5084278 (= e!3171184 (and (inv!77676 (left!42849 (right!43179 xs!286))) tp!1417635 (inv!77676 (right!43179 (right!43179 xs!286))) tp!1417636))))

(declare-fun b!5084280 () Bool)

(declare-fun e!3171185 () Bool)

(declare-fun tp!1417634 () Bool)

(assert (=> b!5084280 (= e!3171185 tp!1417634)))

(declare-fun b!5084279 () Bool)

(assert (=> b!5084279 (= e!3171184 (and (inv!77677 (xs!18964 (right!43179 xs!286))) e!3171185))))

(assert (=> b!5083977 (= tp!1417581 (and (inv!77676 (right!43179 xs!286)) e!3171184))))

(assert (= (and b!5083977 ((_ is Node!15586) (right!43179 xs!286))) b!5084278))

(assert (= b!5084279 b!5084280))

(assert (= (and b!5083977 ((_ is Leaf!25884) (right!43179 xs!286))) b!5084279))

(declare-fun m!6139740 () Bool)

(assert (=> b!5084278 m!6139740))

(declare-fun m!6139742 () Bool)

(assert (=> b!5084278 m!6139742))

(declare-fun m!6139744 () Bool)

(assert (=> b!5084279 m!6139744))

(assert (=> b!5083977 m!6139396))

(declare-fun tp!1417638 () Bool)

(declare-fun tp!1417639 () Bool)

(declare-fun e!3171186 () Bool)

(declare-fun b!5084281 () Bool)

(assert (=> b!5084281 (= e!3171186 (and (inv!77676 (left!42849 (left!42849 err!4617))) tp!1417638 (inv!77676 (right!43179 (left!42849 err!4617))) tp!1417639))))

(declare-fun b!5084283 () Bool)

(declare-fun e!3171187 () Bool)

(declare-fun tp!1417637 () Bool)

(assert (=> b!5084283 (= e!3171187 tp!1417637)))

(declare-fun b!5084282 () Bool)

(assert (=> b!5084282 (= e!3171186 (and (inv!77677 (xs!18964 (left!42849 err!4617))) e!3171187))))

(assert (=> b!5083968 (= tp!1417584 (and (inv!77676 (left!42849 err!4617)) e!3171186))))

(assert (= (and b!5083968 ((_ is Node!15586) (left!42849 err!4617))) b!5084281))

(assert (= b!5084282 b!5084283))

(assert (= (and b!5083968 ((_ is Leaf!25884) (left!42849 err!4617))) b!5084282))

(declare-fun m!6139746 () Bool)

(assert (=> b!5084281 m!6139746))

(declare-fun m!6139748 () Bool)

(assert (=> b!5084281 m!6139748))

(declare-fun m!6139750 () Bool)

(assert (=> b!5084282 m!6139750))

(assert (=> b!5083968 m!6139408))

(declare-fun tp!1417642 () Bool)

(declare-fun b!5084284 () Bool)

(declare-fun e!3171188 () Bool)

(declare-fun tp!1417641 () Bool)

(assert (=> b!5084284 (= e!3171188 (and (inv!77676 (left!42849 (right!43179 err!4617))) tp!1417641 (inv!77676 (right!43179 (right!43179 err!4617))) tp!1417642))))

(declare-fun b!5084286 () Bool)

(declare-fun e!3171189 () Bool)

(declare-fun tp!1417640 () Bool)

(assert (=> b!5084286 (= e!3171189 tp!1417640)))

(declare-fun b!5084285 () Bool)

(assert (=> b!5084285 (= e!3171188 (and (inv!77677 (xs!18964 (right!43179 err!4617))) e!3171189))))

(assert (=> b!5083968 (= tp!1417587 (and (inv!77676 (right!43179 err!4617)) e!3171188))))

(assert (= (and b!5083968 ((_ is Node!15586) (right!43179 err!4617))) b!5084284))

(assert (= b!5084285 b!5084286))

(assert (= (and b!5083968 ((_ is Leaf!25884) (right!43179 err!4617))) b!5084285))

(declare-fun m!6139752 () Bool)

(assert (=> b!5084284 m!6139752))

(declare-fun m!6139754 () Bool)

(assert (=> b!5084284 m!6139754))

(declare-fun m!6139756 () Bool)

(assert (=> b!5084285 m!6139756))

(assert (=> b!5083968 m!6139410))

(declare-fun b!5084291 () Bool)

(declare-fun e!3171192 () Bool)

(declare-fun tp_is_empty!37095 () Bool)

(declare-fun tp!1417645 () Bool)

(assert (=> b!5084291 (= e!3171192 (and tp_is_empty!37095 tp!1417645))))

(assert (=> b!5083974 (= tp!1417588 e!3171192)))

(assert (= (and b!5083974 ((_ is Cons!58456) (innerList!15674 (xs!18964 err!4617)))) b!5084291))

(declare-fun b!5084292 () Bool)

(declare-fun e!3171193 () Bool)

(declare-fun tp!1417646 () Bool)

(assert (=> b!5084292 (= e!3171193 (and tp_is_empty!37095 tp!1417646))))

(assert (=> b!5083969 (= tp!1417582 e!3171193)))

(assert (= (and b!5083969 ((_ is Cons!58456) (innerList!15674 (xs!18964 xs!286)))) b!5084292))

(declare-fun b!5084293 () Bool)

(declare-fun e!3171194 () Bool)

(declare-fun tp!1417647 () Bool)

(assert (=> b!5084293 (= e!3171194 (and tp_is_empty!37095 tp!1417647))))

(assert (=> b!5083971 (= tp!1417589 e!3171194)))

(assert (= (and b!5083971 ((_ is Cons!58456) (innerList!15674 (xs!18964 ys!41)))) b!5084293))

(check-sat (not b!5084103) tp_is_empty!37095 (not b!5084100) (not b!5084220) (not b!5084286) (not b!5084209) (not b!5084206) (not b!5084116) (not b!5084207) (not b!5084256) (not b!5084284) (not b!5084274) (not d!1644754) (not b!5084250) (not b!5084119) (not b!5084102) (not b!5084283) (not b!5084271) (not b!5084281) (not b!5084118) (not b!5084269) (not b!5084121) (not b!5084089) (not b!5084037) (not b!5084099) (not b!5084077) (not b!5084028) (not b!5084039) (not b!5084285) (not b!5084223) (not b!5084239) (not b!5083968) (not b!5084098) (not b!5084280) (not b!5084228) (not b!5084260) (not b!5084226) (not d!1644800) (not b!5084292) (not b!5084080) (not b!5084277) (not b!5083977) (not b!5083967) (not b!5084291) (not b!5084270) (not b!5084214) (not b!5084025) (not b!5084038) (not d!1644798) (not d!1644792) (not b!5084255) (not b!5084275) (not b!5084279) (not b!5084225) (not b!5084216) (not b!5084026) (not b!5084023) (not b!5084276) (not b!5084240) (not b!5084210) (not b!5084211) (not b!5084217) (not b!5084273) (not b!5084272) (not b!5084259) (not b!5084027) (not b!5084035) (not b!5084278) (not b!5084101) (not b!5084251) (not b!5084040) (not b!5084293) (not b!5084024) (not b!5084219) (not b!5084091) (not b!5084208) (not b!5084282) (not b!5084036) (not b!5084222))
(check-sat)
(get-model)

(declare-fun b!5084573 () Bool)

(declare-fun e!3171339 () List!58580)

(assert (=> b!5084573 (= e!3171339 (Cons!58456 (h!64904 (list!19033 (left!42849 xs!286))) (++!12815 (t!371417 (list!19033 (left!42849 xs!286))) (list!19033 (right!43179 xs!286)))))))

(declare-fun d!1644978 () Bool)

(declare-fun e!3171340 () Bool)

(assert (=> d!1644978 e!3171340))

(declare-fun res!2164616 () Bool)

(assert (=> d!1644978 (=> (not res!2164616) (not e!3171340))))

(declare-fun lt!2091430 () List!58580)

(assert (=> d!1644978 (= res!2164616 (= (content!10430 lt!2091430) ((_ map or) (content!10430 (list!19033 (left!42849 xs!286))) (content!10430 (list!19033 (right!43179 xs!286))))))))

(assert (=> d!1644978 (= lt!2091430 e!3171339)))

(declare-fun c!873559 () Bool)

(assert (=> d!1644978 (= c!873559 ((_ is Nil!58456) (list!19033 (left!42849 xs!286))))))

(assert (=> d!1644978 (= (++!12815 (list!19033 (left!42849 xs!286)) (list!19033 (right!43179 xs!286))) lt!2091430)))

(declare-fun b!5084572 () Bool)

(assert (=> b!5084572 (= e!3171339 (list!19033 (right!43179 xs!286)))))

(declare-fun b!5084575 () Bool)

(assert (=> b!5084575 (= e!3171340 (or (not (= (list!19033 (right!43179 xs!286)) Nil!58456)) (= lt!2091430 (list!19033 (left!42849 xs!286)))))))

(declare-fun b!5084574 () Bool)

(declare-fun res!2164615 () Bool)

(assert (=> b!5084574 (=> (not res!2164615) (not e!3171340))))

(assert (=> b!5084574 (= res!2164615 (= (size!39119 lt!2091430) (+ (size!39119 (list!19033 (left!42849 xs!286))) (size!39119 (list!19033 (right!43179 xs!286))))))))

(assert (= (and d!1644978 c!873559) b!5084572))

(assert (= (and d!1644978 (not c!873559)) b!5084573))

(assert (= (and d!1644978 res!2164616) b!5084574))

(assert (= (and b!5084574 res!2164615) b!5084575))

(assert (=> b!5084573 m!6139648))

(declare-fun m!6140280 () Bool)

(assert (=> b!5084573 m!6140280))

(declare-fun m!6140282 () Bool)

(assert (=> d!1644978 m!6140282))

(assert (=> d!1644978 m!6139638))

(declare-fun m!6140284 () Bool)

(assert (=> d!1644978 m!6140284))

(assert (=> d!1644978 m!6139648))

(declare-fun m!6140286 () Bool)

(assert (=> d!1644978 m!6140286))

(declare-fun m!6140288 () Bool)

(assert (=> b!5084574 m!6140288))

(assert (=> b!5084574 m!6139638))

(declare-fun m!6140290 () Bool)

(assert (=> b!5084574 m!6140290))

(assert (=> b!5084574 m!6139648))

(declare-fun m!6140292 () Bool)

(assert (=> b!5084574 m!6140292))

(assert (=> b!5084256 d!1644978))

(declare-fun b!5084577 () Bool)

(declare-fun e!3171341 () List!58580)

(declare-fun e!3171342 () List!58580)

(assert (=> b!5084577 (= e!3171341 e!3171342)))

(declare-fun c!873561 () Bool)

(assert (=> b!5084577 (= c!873561 ((_ is Leaf!25884) (left!42849 xs!286)))))

(declare-fun b!5084576 () Bool)

(assert (=> b!5084576 (= e!3171341 Nil!58456)))

(declare-fun b!5084579 () Bool)

(assert (=> b!5084579 (= e!3171342 (++!12815 (list!19033 (left!42849 (left!42849 xs!286))) (list!19033 (right!43179 (left!42849 xs!286)))))))

(declare-fun d!1644980 () Bool)

(declare-fun c!873560 () Bool)

(assert (=> d!1644980 (= c!873560 ((_ is Empty!15586) (left!42849 xs!286)))))

(assert (=> d!1644980 (= (list!19033 (left!42849 xs!286)) e!3171341)))

(declare-fun b!5084578 () Bool)

(assert (=> b!5084578 (= e!3171342 (list!19035 (xs!18964 (left!42849 xs!286))))))

(assert (= (and d!1644980 c!873560) b!5084576))

(assert (= (and d!1644980 (not c!873560)) b!5084577))

(assert (= (and b!5084577 c!873561) b!5084578))

(assert (= (and b!5084577 (not c!873561)) b!5084579))

(declare-fun m!6140294 () Bool)

(assert (=> b!5084579 m!6140294))

(declare-fun m!6140296 () Bool)

(assert (=> b!5084579 m!6140296))

(assert (=> b!5084579 m!6140294))

(assert (=> b!5084579 m!6140296))

(declare-fun m!6140298 () Bool)

(assert (=> b!5084579 m!6140298))

(declare-fun m!6140300 () Bool)

(assert (=> b!5084578 m!6140300))

(assert (=> b!5084256 d!1644980))

(declare-fun b!5084581 () Bool)

(declare-fun e!3171343 () List!58580)

(declare-fun e!3171344 () List!58580)

(assert (=> b!5084581 (= e!3171343 e!3171344)))

(declare-fun c!873563 () Bool)

(assert (=> b!5084581 (= c!873563 ((_ is Leaf!25884) (right!43179 xs!286)))))

(declare-fun b!5084580 () Bool)

(assert (=> b!5084580 (= e!3171343 Nil!58456)))

(declare-fun b!5084583 () Bool)

(assert (=> b!5084583 (= e!3171344 (++!12815 (list!19033 (left!42849 (right!43179 xs!286))) (list!19033 (right!43179 (right!43179 xs!286)))))))

(declare-fun d!1644982 () Bool)

(declare-fun c!873562 () Bool)

(assert (=> d!1644982 (= c!873562 ((_ is Empty!15586) (right!43179 xs!286)))))

(assert (=> d!1644982 (= (list!19033 (right!43179 xs!286)) e!3171343)))

(declare-fun b!5084582 () Bool)

(assert (=> b!5084582 (= e!3171344 (list!19035 (xs!18964 (right!43179 xs!286))))))

(assert (= (and d!1644982 c!873562) b!5084580))

(assert (= (and d!1644982 (not c!873562)) b!5084581))

(assert (= (and b!5084581 c!873563) b!5084582))

(assert (= (and b!5084581 (not c!873563)) b!5084583))

(assert (=> b!5084583 m!6139640))

(assert (=> b!5084583 m!6139636))

(assert (=> b!5084583 m!6139640))

(assert (=> b!5084583 m!6139636))

(declare-fun m!6140302 () Bool)

(assert (=> b!5084583 m!6140302))

(declare-fun m!6140304 () Bool)

(assert (=> b!5084582 m!6140304))

(assert (=> b!5084256 d!1644982))

(declare-fun d!1644984 () Bool)

(declare-fun res!2164623 () Bool)

(declare-fun e!3171347 () Bool)

(assert (=> d!1644984 (=> (not res!2164623) (not e!3171347))))

(declare-fun size!39121 (Conc!15586) Int)

(assert (=> d!1644984 (= res!2164623 (= (csize!31402 (right!43179 ys!41)) (+ (size!39121 (left!42849 (right!43179 ys!41))) (size!39121 (right!43179 (right!43179 ys!41))))))))

(assert (=> d!1644984 (= (inv!77680 (right!43179 ys!41)) e!3171347)))

(declare-fun b!5084590 () Bool)

(declare-fun res!2164624 () Bool)

(assert (=> b!5084590 (=> (not res!2164624) (not e!3171347))))

(assert (=> b!5084590 (= res!2164624 (and (not (= (left!42849 (right!43179 ys!41)) Empty!15586)) (not (= (right!43179 (right!43179 ys!41)) Empty!15586))))))

(declare-fun b!5084591 () Bool)

(declare-fun res!2164625 () Bool)

(assert (=> b!5084591 (=> (not res!2164625) (not e!3171347))))

(assert (=> b!5084591 (= res!2164625 (= (cheight!15797 (right!43179 ys!41)) (+ (max!0 (height!2163 (left!42849 (right!43179 ys!41))) (height!2163 (right!43179 (right!43179 ys!41)))) 1)))))

(declare-fun b!5084592 () Bool)

(assert (=> b!5084592 (= e!3171347 (<= 0 (cheight!15797 (right!43179 ys!41))))))

(assert (= (and d!1644984 res!2164623) b!5084590))

(assert (= (and b!5084590 res!2164624) b!5084591))

(assert (= (and b!5084591 res!2164625) b!5084592))

(declare-fun m!6140306 () Bool)

(assert (=> d!1644984 m!6140306))

(declare-fun m!6140308 () Bool)

(assert (=> d!1644984 m!6140308))

(declare-fun m!6140310 () Bool)

(assert (=> b!5084591 m!6140310))

(declare-fun m!6140312 () Bool)

(assert (=> b!5084591 m!6140312))

(assert (=> b!5084591 m!6140310))

(assert (=> b!5084591 m!6140312))

(declare-fun m!6140314 () Bool)

(assert (=> b!5084591 m!6140314))

(assert (=> b!5084119 d!1644984))

(declare-fun d!1644986 () Bool)

(assert (=> d!1644986 (= (inv!77677 (xs!18964 (right!43179 xs!286))) (<= (size!39119 (innerList!15674 (xs!18964 (right!43179 xs!286)))) 2147483647))))

(declare-fun bs!1190840 () Bool)

(assert (= bs!1190840 d!1644986))

(declare-fun m!6140316 () Bool)

(assert (=> bs!1190840 m!6140316))

(assert (=> b!5084279 d!1644986))

(declare-fun d!1644988 () Bool)

(declare-fun lt!2091433 () Int)

(assert (=> d!1644988 (>= lt!2091433 0)))

(declare-fun e!3171350 () Int)

(assert (=> d!1644988 (= lt!2091433 e!3171350)))

(declare-fun c!873566 () Bool)

(assert (=> d!1644988 (= c!873566 ((_ is Nil!58456) lt!2091399))))

(assert (=> d!1644988 (= (size!39119 lt!2091399) lt!2091433)))

(declare-fun b!5084597 () Bool)

(assert (=> b!5084597 (= e!3171350 0)))

(declare-fun b!5084598 () Bool)

(assert (=> b!5084598 (= e!3171350 (+ 1 (size!39119 (t!371417 lt!2091399))))))

(assert (= (and d!1644988 c!873566) b!5084597))

(assert (= (and d!1644988 (not c!873566)) b!5084598))

(declare-fun m!6140318 () Bool)

(assert (=> b!5084598 m!6140318))

(assert (=> b!5084251 d!1644988))

(declare-fun d!1644990 () Bool)

(declare-fun lt!2091434 () Int)

(assert (=> d!1644990 (>= lt!2091434 0)))

(declare-fun e!3171351 () Int)

(assert (=> d!1644990 (= lt!2091434 e!3171351)))

(declare-fun c!873567 () Bool)

(assert (=> d!1644990 (= c!873567 ((_ is Nil!58456) (list!19033 xs!286)))))

(assert (=> d!1644990 (= (size!39119 (list!19033 xs!286)) lt!2091434)))

(declare-fun b!5084599 () Bool)

(assert (=> b!5084599 (= e!3171351 0)))

(declare-fun b!5084600 () Bool)

(assert (=> b!5084600 (= e!3171351 (+ 1 (size!39119 (t!371417 (list!19033 xs!286)))))))

(assert (= (and d!1644990 c!873567) b!5084599))

(assert (= (and d!1644990 (not c!873567)) b!5084600))

(declare-fun m!6140320 () Bool)

(assert (=> b!5084600 m!6140320))

(assert (=> b!5084251 d!1644990))

(declare-fun d!1644992 () Bool)

(declare-fun lt!2091435 () Int)

(assert (=> d!1644992 (>= lt!2091435 0)))

(declare-fun e!3171352 () Int)

(assert (=> d!1644992 (= lt!2091435 e!3171352)))

(declare-fun c!873568 () Bool)

(assert (=> d!1644992 (= c!873568 ((_ is Nil!58456) (list!19033 ys!41)))))

(assert (=> d!1644992 (= (size!39119 (list!19033 ys!41)) lt!2091435)))

(declare-fun b!5084601 () Bool)

(assert (=> b!5084601 (= e!3171352 0)))

(declare-fun b!5084602 () Bool)

(assert (=> b!5084602 (= e!3171352 (+ 1 (size!39119 (t!371417 (list!19033 ys!41)))))))

(assert (= (and d!1644992 c!873568) b!5084601))

(assert (= (and d!1644992 (not c!873568)) b!5084602))

(declare-fun m!6140322 () Bool)

(assert (=> b!5084602 m!6140322))

(assert (=> b!5084251 d!1644992))

(declare-fun d!1644994 () Bool)

(assert (=> d!1644994 (= (inv!77677 (xs!18964 (left!42849 ys!41))) (<= (size!39119 (innerList!15674 (xs!18964 (left!42849 ys!41)))) 2147483647))))

(declare-fun bs!1190841 () Bool)

(assert (= bs!1190841 d!1644994))

(declare-fun m!6140324 () Bool)

(assert (=> bs!1190841 m!6140324))

(assert (=> b!5084270 d!1644994))

(assert (=> b!5084100 d!1644804))

(assert (=> b!5084100 d!1644802))

(declare-fun d!1644996 () Bool)

(declare-fun res!2164630 () Bool)

(declare-fun e!3171355 () Bool)

(assert (=> d!1644996 (=> (not res!2164630) (not e!3171355))))

(assert (=> d!1644996 (= res!2164630 (<= (size!39119 (list!19035 (xs!18964 (right!43179 ys!41)))) 512))))

(assert (=> d!1644996 (= (inv!77681 (right!43179 ys!41)) e!3171355)))

(declare-fun b!5084607 () Bool)

(declare-fun res!2164631 () Bool)

(assert (=> b!5084607 (=> (not res!2164631) (not e!3171355))))

(assert (=> b!5084607 (= res!2164631 (= (csize!31403 (right!43179 ys!41)) (size!39119 (list!19035 (xs!18964 (right!43179 ys!41))))))))

(declare-fun b!5084608 () Bool)

(assert (=> b!5084608 (= e!3171355 (and (> (csize!31403 (right!43179 ys!41)) 0) (<= (csize!31403 (right!43179 ys!41)) 512)))))

(assert (= (and d!1644996 res!2164630) b!5084607))

(assert (= (and b!5084607 res!2164631) b!5084608))

(declare-fun m!6140326 () Bool)

(assert (=> d!1644996 m!6140326))

(assert (=> d!1644996 m!6140326))

(declare-fun m!6140328 () Bool)

(assert (=> d!1644996 m!6140328))

(assert (=> b!5084607 m!6140326))

(assert (=> b!5084607 m!6140326))

(assert (=> b!5084607 m!6140328))

(assert (=> b!5084121 d!1644996))

(assert (=> b!5083967 d!1644760))

(assert (=> b!5083967 d!1644764))

(declare-fun d!1644998 () Bool)

(declare-fun res!2164632 () Bool)

(declare-fun e!3171356 () Bool)

(assert (=> d!1644998 (=> (not res!2164632) (not e!3171356))))

(assert (=> d!1644998 (= res!2164632 (<= (size!39119 (list!19035 (xs!18964 (left!42849 ys!41)))) 512))))

(assert (=> d!1644998 (= (inv!77681 (left!42849 ys!41)) e!3171356)))

(declare-fun b!5084609 () Bool)

(declare-fun res!2164633 () Bool)

(assert (=> b!5084609 (=> (not res!2164633) (not e!3171356))))

(assert (=> b!5084609 (= res!2164633 (= (csize!31403 (left!42849 ys!41)) (size!39119 (list!19035 (xs!18964 (left!42849 ys!41))))))))

(declare-fun b!5084610 () Bool)

(assert (=> b!5084610 (= e!3171356 (and (> (csize!31403 (left!42849 ys!41)) 0) (<= (csize!31403 (left!42849 ys!41)) 512)))))

(assert (= (and d!1644998 res!2164632) b!5084609))

(assert (= (and b!5084609 res!2164633) b!5084610))

(declare-fun m!6140330 () Bool)

(assert (=> d!1644998 m!6140330))

(assert (=> d!1644998 m!6140330))

(declare-fun m!6140332 () Bool)

(assert (=> d!1644998 m!6140332))

(assert (=> b!5084609 m!6140330))

(assert (=> b!5084609 m!6140330))

(assert (=> b!5084609 m!6140332))

(assert (=> b!5084118 d!1644998))

(declare-fun d!1645000 () Bool)

(assert (=> d!1645000 (= (height!2163 (left!42849 lt!2091392)) (ite ((_ is Empty!15586) (left!42849 lt!2091392)) 0 (ite ((_ is Leaf!25884) (left!42849 lt!2091392)) 1 (cheight!15797 (left!42849 lt!2091392)))))))

(assert (=> b!5084025 d!1645000))

(declare-fun d!1645002 () Bool)

(assert (=> d!1645002 (= (height!2163 (right!43179 lt!2091392)) (ite ((_ is Empty!15586) (right!43179 lt!2091392)) 0 (ite ((_ is Leaf!25884) (right!43179 lt!2091392)) 1 (cheight!15797 (right!43179 lt!2091392)))))))

(assert (=> b!5084025 d!1645002))

(declare-fun b!5084611 () Bool)

(declare-fun res!2164639 () Bool)

(declare-fun e!3171357 () Bool)

(assert (=> b!5084611 (=> (not res!2164639) (not e!3171357))))

(assert (=> b!5084611 (= res!2164639 (isBalanced!4448 (right!43179 (left!42849 ys!41))))))

(declare-fun b!5084612 () Bool)

(declare-fun res!2164637 () Bool)

(assert (=> b!5084612 (=> (not res!2164637) (not e!3171357))))

(assert (=> b!5084612 (= res!2164637 (<= (- (height!2163 (left!42849 (left!42849 ys!41))) (height!2163 (right!43179 (left!42849 ys!41)))) 1))))

(declare-fun b!5084613 () Bool)

(declare-fun e!3171358 () Bool)

(assert (=> b!5084613 (= e!3171358 e!3171357)))

(declare-fun res!2164635 () Bool)

(assert (=> b!5084613 (=> (not res!2164635) (not e!3171357))))

(assert (=> b!5084613 (= res!2164635 (<= (- 1) (- (height!2163 (left!42849 (left!42849 ys!41))) (height!2163 (right!43179 (left!42849 ys!41))))))))

(declare-fun b!5084614 () Bool)

(declare-fun res!2164638 () Bool)

(assert (=> b!5084614 (=> (not res!2164638) (not e!3171357))))

(assert (=> b!5084614 (= res!2164638 (not (isEmpty!31675 (left!42849 (left!42849 ys!41)))))))

(declare-fun b!5084615 () Bool)

(declare-fun res!2164634 () Bool)

(assert (=> b!5084615 (=> (not res!2164634) (not e!3171357))))

(assert (=> b!5084615 (= res!2164634 (isBalanced!4448 (left!42849 (left!42849 ys!41))))))

(declare-fun b!5084616 () Bool)

(assert (=> b!5084616 (= e!3171357 (not (isEmpty!31675 (right!43179 (left!42849 ys!41)))))))

(declare-fun d!1645004 () Bool)

(declare-fun res!2164636 () Bool)

(assert (=> d!1645004 (=> res!2164636 e!3171358)))

(assert (=> d!1645004 (= res!2164636 (not ((_ is Node!15586) (left!42849 ys!41))))))

(assert (=> d!1645004 (= (isBalanced!4448 (left!42849 ys!41)) e!3171358)))

(assert (= (and d!1645004 (not res!2164636)) b!5084613))

(assert (= (and b!5084613 res!2164635) b!5084612))

(assert (= (and b!5084612 res!2164637) b!5084615))

(assert (= (and b!5084615 res!2164634) b!5084611))

(assert (= (and b!5084611 res!2164639) b!5084614))

(assert (= (and b!5084614 res!2164638) b!5084616))

(declare-fun m!6140334 () Bool)

(assert (=> b!5084615 m!6140334))

(declare-fun m!6140336 () Bool)

(assert (=> b!5084616 m!6140336))

(declare-fun m!6140338 () Bool)

(assert (=> b!5084614 m!6140338))

(declare-fun m!6140340 () Bool)

(assert (=> b!5084613 m!6140340))

(declare-fun m!6140342 () Bool)

(assert (=> b!5084613 m!6140342))

(assert (=> b!5084612 m!6140340))

(assert (=> b!5084612 m!6140342))

(declare-fun m!6140344 () Bool)

(assert (=> b!5084611 m!6140344))

(assert (=> b!5084102 d!1645004))

(declare-fun d!1645006 () Bool)

(declare-fun res!2164640 () Bool)

(declare-fun e!3171359 () Bool)

(assert (=> d!1645006 (=> (not res!2164640) (not e!3171359))))

(assert (=> d!1645006 (= res!2164640 (= (csize!31402 (right!43179 err!4617)) (+ (size!39121 (left!42849 (right!43179 err!4617))) (size!39121 (right!43179 (right!43179 err!4617))))))))

(assert (=> d!1645006 (= (inv!77680 (right!43179 err!4617)) e!3171359)))

(declare-fun b!5084617 () Bool)

(declare-fun res!2164641 () Bool)

(assert (=> b!5084617 (=> (not res!2164641) (not e!3171359))))

(assert (=> b!5084617 (= res!2164641 (and (not (= (left!42849 (right!43179 err!4617)) Empty!15586)) (not (= (right!43179 (right!43179 err!4617)) Empty!15586))))))

(declare-fun b!5084618 () Bool)

(declare-fun res!2164642 () Bool)

(assert (=> b!5084618 (=> (not res!2164642) (not e!3171359))))

(assert (=> b!5084618 (= res!2164642 (= (cheight!15797 (right!43179 err!4617)) (+ (max!0 (height!2163 (left!42849 (right!43179 err!4617))) (height!2163 (right!43179 (right!43179 err!4617)))) 1)))))

(declare-fun b!5084619 () Bool)

(assert (=> b!5084619 (= e!3171359 (<= 0 (cheight!15797 (right!43179 err!4617))))))

(assert (= (and d!1645006 res!2164640) b!5084617))

(assert (= (and b!5084617 res!2164641) b!5084618))

(assert (= (and b!5084618 res!2164642) b!5084619))

(declare-fun m!6140346 () Bool)

(assert (=> d!1645006 m!6140346))

(declare-fun m!6140348 () Bool)

(assert (=> d!1645006 m!6140348))

(declare-fun m!6140350 () Bool)

(assert (=> b!5084618 m!6140350))

(declare-fun m!6140352 () Bool)

(assert (=> b!5084618 m!6140352))

(assert (=> b!5084618 m!6140350))

(assert (=> b!5084618 m!6140352))

(declare-fun m!6140354 () Bool)

(assert (=> b!5084618 m!6140354))

(assert (=> b!5084226 d!1645006))

(declare-fun d!1645008 () Bool)

(declare-fun c!873569 () Bool)

(assert (=> d!1645008 (= c!873569 ((_ is Node!15586) (left!42849 (right!43179 err!4617))))))

(declare-fun e!3171360 () Bool)

(assert (=> d!1645008 (= (inv!77676 (left!42849 (right!43179 err!4617))) e!3171360)))

(declare-fun b!5084620 () Bool)

(assert (=> b!5084620 (= e!3171360 (inv!77680 (left!42849 (right!43179 err!4617))))))

(declare-fun b!5084621 () Bool)

(declare-fun e!3171361 () Bool)

(assert (=> b!5084621 (= e!3171360 e!3171361)))

(declare-fun res!2164643 () Bool)

(assert (=> b!5084621 (= res!2164643 (not ((_ is Leaf!25884) (left!42849 (right!43179 err!4617)))))))

(assert (=> b!5084621 (=> res!2164643 e!3171361)))

(declare-fun b!5084622 () Bool)

(assert (=> b!5084622 (= e!3171361 (inv!77681 (left!42849 (right!43179 err!4617))))))

(assert (= (and d!1645008 c!873569) b!5084620))

(assert (= (and d!1645008 (not c!873569)) b!5084621))

(assert (= (and b!5084621 (not res!2164643)) b!5084622))

(declare-fun m!6140356 () Bool)

(assert (=> b!5084620 m!6140356))

(declare-fun m!6140358 () Bool)

(assert (=> b!5084622 m!6140358))

(assert (=> b!5084284 d!1645008))

(declare-fun d!1645010 () Bool)

(declare-fun c!873570 () Bool)

(assert (=> d!1645010 (= c!873570 ((_ is Node!15586) (right!43179 (right!43179 err!4617))))))

(declare-fun e!3171362 () Bool)

(assert (=> d!1645010 (= (inv!77676 (right!43179 (right!43179 err!4617))) e!3171362)))

(declare-fun b!5084623 () Bool)

(assert (=> b!5084623 (= e!3171362 (inv!77680 (right!43179 (right!43179 err!4617))))))

(declare-fun b!5084624 () Bool)

(declare-fun e!3171363 () Bool)

(assert (=> b!5084624 (= e!3171362 e!3171363)))

(declare-fun res!2164644 () Bool)

(assert (=> b!5084624 (= res!2164644 (not ((_ is Leaf!25884) (right!43179 (right!43179 err!4617)))))))

(assert (=> b!5084624 (=> res!2164644 e!3171363)))

(declare-fun b!5084625 () Bool)

(assert (=> b!5084625 (= e!3171363 (inv!77681 (right!43179 (right!43179 err!4617))))))

(assert (= (and d!1645010 c!873570) b!5084623))

(assert (= (and d!1645010 (not c!873570)) b!5084624))

(assert (= (and b!5084624 (not res!2164644)) b!5084625))

(declare-fun m!6140360 () Bool)

(assert (=> b!5084623 m!6140360))

(declare-fun m!6140362 () Bool)

(assert (=> b!5084625 m!6140362))

(assert (=> b!5084284 d!1645010))

(declare-fun d!1645012 () Bool)

(declare-fun c!873571 () Bool)

(assert (=> d!1645012 (= c!873571 ((_ is Node!15586) (left!42849 (left!42849 xs!286))))))

(declare-fun e!3171364 () Bool)

(assert (=> d!1645012 (= (inv!77676 (left!42849 (left!42849 xs!286))) e!3171364)))

(declare-fun b!5084626 () Bool)

(assert (=> b!5084626 (= e!3171364 (inv!77680 (left!42849 (left!42849 xs!286))))))

(declare-fun b!5084627 () Bool)

(declare-fun e!3171365 () Bool)

(assert (=> b!5084627 (= e!3171364 e!3171365)))

(declare-fun res!2164645 () Bool)

(assert (=> b!5084627 (= res!2164645 (not ((_ is Leaf!25884) (left!42849 (left!42849 xs!286)))))))

(assert (=> b!5084627 (=> res!2164645 e!3171365)))

(declare-fun b!5084628 () Bool)

(assert (=> b!5084628 (= e!3171365 (inv!77681 (left!42849 (left!42849 xs!286))))))

(assert (= (and d!1645012 c!873571) b!5084626))

(assert (= (and d!1645012 (not c!873571)) b!5084627))

(assert (= (and b!5084627 (not res!2164645)) b!5084628))

(declare-fun m!6140364 () Bool)

(assert (=> b!5084626 m!6140364))

(declare-fun m!6140366 () Bool)

(assert (=> b!5084628 m!6140366))

(assert (=> b!5084275 d!1645012))

(declare-fun d!1645014 () Bool)

(declare-fun c!873572 () Bool)

(assert (=> d!1645014 (= c!873572 ((_ is Node!15586) (right!43179 (left!42849 xs!286))))))

(declare-fun e!3171366 () Bool)

(assert (=> d!1645014 (= (inv!77676 (right!43179 (left!42849 xs!286))) e!3171366)))

(declare-fun b!5084629 () Bool)

(assert (=> b!5084629 (= e!3171366 (inv!77680 (right!43179 (left!42849 xs!286))))))

(declare-fun b!5084630 () Bool)

(declare-fun e!3171367 () Bool)

(assert (=> b!5084630 (= e!3171366 e!3171367)))

(declare-fun res!2164646 () Bool)

(assert (=> b!5084630 (= res!2164646 (not ((_ is Leaf!25884) (right!43179 (left!42849 xs!286)))))))

(assert (=> b!5084630 (=> res!2164646 e!3171367)))

(declare-fun b!5084631 () Bool)

(assert (=> b!5084631 (= e!3171367 (inv!77681 (right!43179 (left!42849 xs!286))))))

(assert (= (and d!1645014 c!873572) b!5084629))

(assert (= (and d!1645014 (not c!873572)) b!5084630))

(assert (= (and b!5084630 (not res!2164646)) b!5084631))

(declare-fun m!6140368 () Bool)

(assert (=> b!5084629 m!6140368))

(declare-fun m!6140370 () Bool)

(assert (=> b!5084631 m!6140370))

(assert (=> b!5084275 d!1645014))

(declare-fun b!5084632 () Bool)

(declare-fun res!2164652 () Bool)

(declare-fun e!3171368 () Bool)

(assert (=> b!5084632 (=> (not res!2164652) (not e!3171368))))

(assert (=> b!5084632 (= res!2164652 (isBalanced!4448 (right!43179 (right!43179 lt!2091392))))))

(declare-fun b!5084633 () Bool)

(declare-fun res!2164650 () Bool)

(assert (=> b!5084633 (=> (not res!2164650) (not e!3171368))))

(assert (=> b!5084633 (= res!2164650 (<= (- (height!2163 (left!42849 (right!43179 lt!2091392))) (height!2163 (right!43179 (right!43179 lt!2091392)))) 1))))

(declare-fun b!5084634 () Bool)

(declare-fun e!3171369 () Bool)

(assert (=> b!5084634 (= e!3171369 e!3171368)))

(declare-fun res!2164648 () Bool)

(assert (=> b!5084634 (=> (not res!2164648) (not e!3171368))))

(assert (=> b!5084634 (= res!2164648 (<= (- 1) (- (height!2163 (left!42849 (right!43179 lt!2091392))) (height!2163 (right!43179 (right!43179 lt!2091392))))))))

(declare-fun b!5084635 () Bool)

(declare-fun res!2164651 () Bool)

(assert (=> b!5084635 (=> (not res!2164651) (not e!3171368))))

(assert (=> b!5084635 (= res!2164651 (not (isEmpty!31675 (left!42849 (right!43179 lt!2091392)))))))

(declare-fun b!5084636 () Bool)

(declare-fun res!2164647 () Bool)

(assert (=> b!5084636 (=> (not res!2164647) (not e!3171368))))

(assert (=> b!5084636 (= res!2164647 (isBalanced!4448 (left!42849 (right!43179 lt!2091392))))))

(declare-fun b!5084637 () Bool)

(assert (=> b!5084637 (= e!3171368 (not (isEmpty!31675 (right!43179 (right!43179 lt!2091392)))))))

(declare-fun d!1645016 () Bool)

(declare-fun res!2164649 () Bool)

(assert (=> d!1645016 (=> res!2164649 e!3171369)))

(assert (=> d!1645016 (= res!2164649 (not ((_ is Node!15586) (right!43179 lt!2091392))))))

(assert (=> d!1645016 (= (isBalanced!4448 (right!43179 lt!2091392)) e!3171369)))

(assert (= (and d!1645016 (not res!2164649)) b!5084634))

(assert (= (and b!5084634 res!2164648) b!5084633))

(assert (= (and b!5084633 res!2164650) b!5084636))

(assert (= (and b!5084636 res!2164647) b!5084632))

(assert (= (and b!5084632 res!2164652) b!5084635))

(assert (= (and b!5084635 res!2164651) b!5084637))

(declare-fun m!6140372 () Bool)

(assert (=> b!5084636 m!6140372))

(declare-fun m!6140374 () Bool)

(assert (=> b!5084637 m!6140374))

(declare-fun m!6140376 () Bool)

(assert (=> b!5084635 m!6140376))

(declare-fun m!6140378 () Bool)

(assert (=> b!5084634 m!6140378))

(declare-fun m!6140380 () Bool)

(assert (=> b!5084634 m!6140380))

(assert (=> b!5084633 m!6140378))

(assert (=> b!5084633 m!6140380))

(declare-fun m!6140382 () Bool)

(assert (=> b!5084632 m!6140382))

(assert (=> b!5084023 d!1645016))

(declare-fun d!1645018 () Bool)

(declare-fun res!2164653 () Bool)

(declare-fun e!3171370 () Bool)

(assert (=> d!1645018 (=> (not res!2164653) (not e!3171370))))

(assert (=> d!1645018 (= res!2164653 (= (csize!31402 (left!42849 ys!41)) (+ (size!39121 (left!42849 (left!42849 ys!41))) (size!39121 (right!43179 (left!42849 ys!41))))))))

(assert (=> d!1645018 (= (inv!77680 (left!42849 ys!41)) e!3171370)))

(declare-fun b!5084638 () Bool)

(declare-fun res!2164654 () Bool)

(assert (=> b!5084638 (=> (not res!2164654) (not e!3171370))))

(assert (=> b!5084638 (= res!2164654 (and (not (= (left!42849 (left!42849 ys!41)) Empty!15586)) (not (= (right!43179 (left!42849 ys!41)) Empty!15586))))))

(declare-fun b!5084639 () Bool)

(declare-fun res!2164655 () Bool)

(assert (=> b!5084639 (=> (not res!2164655) (not e!3171370))))

(assert (=> b!5084639 (= res!2164655 (= (cheight!15797 (left!42849 ys!41)) (+ (max!0 (height!2163 (left!42849 (left!42849 ys!41))) (height!2163 (right!43179 (left!42849 ys!41)))) 1)))))

(declare-fun b!5084640 () Bool)

(assert (=> b!5084640 (= e!3171370 (<= 0 (cheight!15797 (left!42849 ys!41))))))

(assert (= (and d!1645018 res!2164653) b!5084638))

(assert (= (and b!5084638 res!2164654) b!5084639))

(assert (= (and b!5084639 res!2164655) b!5084640))

(declare-fun m!6140384 () Bool)

(assert (=> d!1645018 m!6140384))

(declare-fun m!6140386 () Bool)

(assert (=> d!1645018 m!6140386))

(assert (=> b!5084639 m!6140340))

(assert (=> b!5084639 m!6140342))

(assert (=> b!5084639 m!6140340))

(assert (=> b!5084639 m!6140342))

(declare-fun m!6140388 () Bool)

(assert (=> b!5084639 m!6140388))

(assert (=> b!5084116 d!1645018))

(declare-fun d!1645020 () Bool)

(declare-fun lt!2091436 () Int)

(assert (=> d!1645020 (>= lt!2091436 0)))

(declare-fun e!3171371 () Int)

(assert (=> d!1645020 (= lt!2091436 e!3171371)))

(declare-fun c!873573 () Bool)

(assert (=> d!1645020 (= c!873573 ((_ is Nil!58456) (innerList!15674 (xs!18964 xs!286))))))

(assert (=> d!1645020 (= (size!39119 (innerList!15674 (xs!18964 xs!286))) lt!2091436)))

(declare-fun b!5084641 () Bool)

(assert (=> b!5084641 (= e!3171371 0)))

(declare-fun b!5084642 () Bool)

(assert (=> b!5084642 (= e!3171371 (+ 1 (size!39119 (t!371417 (innerList!15674 (xs!18964 xs!286))))))))

(assert (= (and d!1645020 c!873573) b!5084641))

(assert (= (and d!1645020 (not c!873573)) b!5084642))

(declare-fun m!6140390 () Bool)

(assert (=> b!5084642 m!6140390))

(assert (=> d!1644800 d!1645020))

(declare-fun d!1645022 () Bool)

(declare-fun res!2164656 () Bool)

(declare-fun e!3171372 () Bool)

(assert (=> d!1645022 (=> (not res!2164656) (not e!3171372))))

(assert (=> d!1645022 (= res!2164656 (<= (size!39119 (list!19035 (xs!18964 (right!43179 err!4617)))) 512))))

(assert (=> d!1645022 (= (inv!77681 (right!43179 err!4617)) e!3171372)))

(declare-fun b!5084643 () Bool)

(declare-fun res!2164657 () Bool)

(assert (=> b!5084643 (=> (not res!2164657) (not e!3171372))))

(assert (=> b!5084643 (= res!2164657 (= (csize!31403 (right!43179 err!4617)) (size!39119 (list!19035 (xs!18964 (right!43179 err!4617))))))))

(declare-fun b!5084644 () Bool)

(assert (=> b!5084644 (= e!3171372 (and (> (csize!31403 (right!43179 err!4617)) 0) (<= (csize!31403 (right!43179 err!4617)) 512)))))

(assert (= (and d!1645022 res!2164656) b!5084643))

(assert (= (and b!5084643 res!2164657) b!5084644))

(declare-fun m!6140392 () Bool)

(assert (=> d!1645022 m!6140392))

(assert (=> d!1645022 m!6140392))

(declare-fun m!6140394 () Bool)

(assert (=> d!1645022 m!6140394))

(assert (=> b!5084643 m!6140392))

(assert (=> b!5084643 m!6140392))

(assert (=> b!5084643 m!6140394))

(assert (=> b!5084228 d!1645022))

(declare-fun d!1645024 () Bool)

(declare-fun res!2164658 () Bool)

(declare-fun e!3171373 () Bool)

(assert (=> d!1645024 (=> (not res!2164658) (not e!3171373))))

(assert (=> d!1645024 (= res!2164658 (<= (size!39119 (list!19035 (xs!18964 ys!41))) 512))))

(assert (=> d!1645024 (= (inv!77681 ys!41) e!3171373)))

(declare-fun b!5084645 () Bool)

(declare-fun res!2164659 () Bool)

(assert (=> b!5084645 (=> (not res!2164659) (not e!3171373))))

(assert (=> b!5084645 (= res!2164659 (= (csize!31403 ys!41) (size!39119 (list!19035 (xs!18964 ys!41)))))))

(declare-fun b!5084646 () Bool)

(assert (=> b!5084646 (= e!3171373 (and (> (csize!31403 ys!41) 0) (<= (csize!31403 ys!41) 512)))))

(assert (= (and d!1645024 res!2164658) b!5084645))

(assert (= (and b!5084645 res!2164659) b!5084646))

(assert (=> d!1645024 m!6139716))

(assert (=> d!1645024 m!6139716))

(declare-fun m!6140396 () Bool)

(assert (=> d!1645024 m!6140396))

(assert (=> b!5084645 m!6139716))

(assert (=> b!5084645 m!6139716))

(assert (=> b!5084645 m!6140396))

(assert (=> b!5084091 d!1645024))

(declare-fun d!1645026 () Bool)

(declare-fun c!873574 () Bool)

(assert (=> d!1645026 (= c!873574 ((_ is Node!15586) (left!42849 (right!43179 ys!41))))))

(declare-fun e!3171374 () Bool)

(assert (=> d!1645026 (= (inv!77676 (left!42849 (right!43179 ys!41))) e!3171374)))

(declare-fun b!5084647 () Bool)

(assert (=> b!5084647 (= e!3171374 (inv!77680 (left!42849 (right!43179 ys!41))))))

(declare-fun b!5084648 () Bool)

(declare-fun e!3171375 () Bool)

(assert (=> b!5084648 (= e!3171374 e!3171375)))

(declare-fun res!2164660 () Bool)

(assert (=> b!5084648 (= res!2164660 (not ((_ is Leaf!25884) (left!42849 (right!43179 ys!41)))))))

(assert (=> b!5084648 (=> res!2164660 e!3171375)))

(declare-fun b!5084649 () Bool)

(assert (=> b!5084649 (= e!3171375 (inv!77681 (left!42849 (right!43179 ys!41))))))

(assert (= (and d!1645026 c!873574) b!5084647))

(assert (= (and d!1645026 (not c!873574)) b!5084648))

(assert (= (and b!5084648 (not res!2164660)) b!5084649))

(declare-fun m!6140398 () Bool)

(assert (=> b!5084647 m!6140398))

(declare-fun m!6140400 () Bool)

(assert (=> b!5084649 m!6140400))

(assert (=> b!5084272 d!1645026))

(declare-fun d!1645028 () Bool)

(declare-fun c!873575 () Bool)

(assert (=> d!1645028 (= c!873575 ((_ is Node!15586) (right!43179 (right!43179 ys!41))))))

(declare-fun e!3171376 () Bool)

(assert (=> d!1645028 (= (inv!77676 (right!43179 (right!43179 ys!41))) e!3171376)))

(declare-fun b!5084650 () Bool)

(assert (=> b!5084650 (= e!3171376 (inv!77680 (right!43179 (right!43179 ys!41))))))

(declare-fun b!5084651 () Bool)

(declare-fun e!3171377 () Bool)

(assert (=> b!5084651 (= e!3171376 e!3171377)))

(declare-fun res!2164661 () Bool)

(assert (=> b!5084651 (= res!2164661 (not ((_ is Leaf!25884) (right!43179 (right!43179 ys!41)))))))

(assert (=> b!5084651 (=> res!2164661 e!3171377)))

(declare-fun b!5084652 () Bool)

(assert (=> b!5084652 (= e!3171377 (inv!77681 (right!43179 (right!43179 ys!41))))))

(assert (= (and d!1645028 c!873575) b!5084650))

(assert (= (and d!1645028 (not c!873575)) b!5084651))

(assert (= (and b!5084651 (not res!2164661)) b!5084652))

(declare-fun m!6140402 () Bool)

(assert (=> b!5084650 m!6140402))

(declare-fun m!6140404 () Bool)

(assert (=> b!5084652 m!6140404))

(assert (=> b!5084272 d!1645028))

(declare-fun bm!354393 () Bool)

(declare-fun call!354401 () List!58580)

(assert (=> bm!354393 (= call!354401 (++!12815 (list!19033 (right!43179 (right!43179 xs!286))) (list!19033 ys!41)))))

(declare-fun b!5084657 () Bool)

(declare-fun e!3171380 () Bool)

(declare-fun call!354398 () List!58580)

(declare-fun call!354400 () List!58580)

(assert (=> b!5084657 (= e!3171380 (= call!354398 call!354400))))

(declare-fun lt!2091439 () Bool)

(assert (=> b!5084657 (= lt!2091439 (appendAssoc!314 (t!371417 (list!19033 (left!42849 (right!43179 xs!286)))) (list!19033 (right!43179 (right!43179 xs!286))) (list!19033 ys!41)))))

(declare-fun bm!354394 () Bool)

(declare-fun call!354399 () List!58580)

(assert (=> bm!354394 (= call!354398 (++!12815 call!354399 (list!19033 ys!41)))))

(declare-fun b!5084658 () Bool)

(assert (=> b!5084658 (= e!3171380 (= call!354398 call!354400))))

(declare-fun d!1645030 () Bool)

(assert (=> d!1645030 e!3171380))

(declare-fun c!873578 () Bool)

(assert (=> d!1645030 (= c!873578 ((_ is Nil!58456) (list!19033 (left!42849 (right!43179 xs!286)))))))

(assert (=> d!1645030 (= (appendAssoc!314 (list!19033 (left!42849 (right!43179 xs!286))) (list!19033 (right!43179 (right!43179 xs!286))) (list!19033 ys!41)) true)))

(declare-fun bm!354395 () Bool)

(assert (=> bm!354395 (= call!354399 (++!12815 (list!19033 (left!42849 (right!43179 xs!286))) (list!19033 (right!43179 (right!43179 xs!286)))))))

(declare-fun bm!354396 () Bool)

(assert (=> bm!354396 (= call!354400 (++!12815 (list!19033 (left!42849 (right!43179 xs!286))) call!354401))))

(assert (= (and d!1645030 c!873578) b!5084658))

(assert (= (and d!1645030 (not c!873578)) b!5084657))

(assert (= (or b!5084658 b!5084657) bm!354395))

(assert (= (or b!5084658 b!5084657) bm!354393))

(assert (= (or b!5084658 b!5084657) bm!354396))

(assert (= (or b!5084658 b!5084657) bm!354394))

(assert (=> bm!354396 m!6139640))

(declare-fun m!6140406 () Bool)

(assert (=> bm!354396 m!6140406))

(assert (=> b!5084657 m!6139636))

(assert (=> b!5084657 m!6139376))

(declare-fun m!6140408 () Bool)

(assert (=> b!5084657 m!6140408))

(assert (=> bm!354394 m!6139376))

(declare-fun m!6140410 () Bool)

(assert (=> bm!354394 m!6140410))

(assert (=> bm!354393 m!6139636))

(assert (=> bm!354393 m!6139376))

(assert (=> bm!354393 m!6139642))

(assert (=> bm!354395 m!6139640))

(assert (=> bm!354395 m!6139636))

(assert (=> bm!354395 m!6140302))

(assert (=> b!5084206 d!1645030))

(declare-fun b!5084660 () Bool)

(declare-fun e!3171381 () List!58580)

(declare-fun e!3171382 () List!58580)

(assert (=> b!5084660 (= e!3171381 e!3171382)))

(declare-fun c!873580 () Bool)

(assert (=> b!5084660 (= c!873580 ((_ is Leaf!25884) (left!42849 (right!43179 xs!286))))))

(declare-fun b!5084659 () Bool)

(assert (=> b!5084659 (= e!3171381 Nil!58456)))

(declare-fun b!5084662 () Bool)

(assert (=> b!5084662 (= e!3171382 (++!12815 (list!19033 (left!42849 (left!42849 (right!43179 xs!286)))) (list!19033 (right!43179 (left!42849 (right!43179 xs!286))))))))

(declare-fun d!1645032 () Bool)

(declare-fun c!873579 () Bool)

(assert (=> d!1645032 (= c!873579 ((_ is Empty!15586) (left!42849 (right!43179 xs!286))))))

(assert (=> d!1645032 (= (list!19033 (left!42849 (right!43179 xs!286))) e!3171381)))

(declare-fun b!5084661 () Bool)

(assert (=> b!5084661 (= e!3171382 (list!19035 (xs!18964 (left!42849 (right!43179 xs!286)))))))

(assert (= (and d!1645032 c!873579) b!5084659))

(assert (= (and d!1645032 (not c!873579)) b!5084660))

(assert (= (and b!5084660 c!873580) b!5084661))

(assert (= (and b!5084660 (not c!873580)) b!5084662))

(declare-fun m!6140412 () Bool)

(assert (=> b!5084662 m!6140412))

(declare-fun m!6140414 () Bool)

(assert (=> b!5084662 m!6140414))

(assert (=> b!5084662 m!6140412))

(assert (=> b!5084662 m!6140414))

(declare-fun m!6140416 () Bool)

(assert (=> b!5084662 m!6140416))

(declare-fun m!6140418 () Bool)

(assert (=> b!5084661 m!6140418))

(assert (=> b!5084206 d!1645032))

(declare-fun b!5084664 () Bool)

(declare-fun e!3171383 () List!58580)

(declare-fun e!3171384 () List!58580)

(assert (=> b!5084664 (= e!3171383 e!3171384)))

(declare-fun c!873582 () Bool)

(assert (=> b!5084664 (= c!873582 ((_ is Leaf!25884) (right!43179 (right!43179 xs!286))))))

(declare-fun b!5084663 () Bool)

(assert (=> b!5084663 (= e!3171383 Nil!58456)))

(declare-fun b!5084666 () Bool)

(assert (=> b!5084666 (= e!3171384 (++!12815 (list!19033 (left!42849 (right!43179 (right!43179 xs!286)))) (list!19033 (right!43179 (right!43179 (right!43179 xs!286))))))))

(declare-fun d!1645034 () Bool)

(declare-fun c!873581 () Bool)

(assert (=> d!1645034 (= c!873581 ((_ is Empty!15586) (right!43179 (right!43179 xs!286))))))

(assert (=> d!1645034 (= (list!19033 (right!43179 (right!43179 xs!286))) e!3171383)))

(declare-fun b!5084665 () Bool)

(assert (=> b!5084665 (= e!3171384 (list!19035 (xs!18964 (right!43179 (right!43179 xs!286)))))))

(assert (= (and d!1645034 c!873581) b!5084663))

(assert (= (and d!1645034 (not c!873581)) b!5084664))

(assert (= (and b!5084664 c!873582) b!5084665))

(assert (= (and b!5084664 (not c!873582)) b!5084666))

(declare-fun m!6140420 () Bool)

(assert (=> b!5084666 m!6140420))

(declare-fun m!6140422 () Bool)

(assert (=> b!5084666 m!6140422))

(assert (=> b!5084666 m!6140420))

(assert (=> b!5084666 m!6140422))

(declare-fun m!6140424 () Bool)

(assert (=> b!5084666 m!6140424))

(declare-fun m!6140426 () Bool)

(assert (=> b!5084665 m!6140426))

(assert (=> b!5084206 d!1645034))

(assert (=> b!5084206 d!1644796))

(declare-fun d!1645036 () Bool)

(declare-fun lt!2091442 () Bool)

(declare-fun isEmpty!31677 (List!58580) Bool)

(assert (=> d!1645036 (= lt!2091442 (isEmpty!31677 (list!19033 (left!42849 xs!286))))))

(assert (=> d!1645036 (= lt!2091442 (= (size!39121 (left!42849 xs!286)) 0))))

(assert (=> d!1645036 (= (isEmpty!31675 (left!42849 xs!286)) lt!2091442)))

(declare-fun bs!1190842 () Bool)

(assert (= bs!1190842 d!1645036))

(assert (=> bs!1190842 m!6139638))

(assert (=> bs!1190842 m!6139638))

(declare-fun m!6140428 () Bool)

(assert (=> bs!1190842 m!6140428))

(declare-fun m!6140430 () Bool)

(assert (=> bs!1190842 m!6140430))

(assert (=> b!5084038 d!1645036))

(declare-fun d!1645038 () Bool)

(declare-fun res!2164662 () Bool)

(declare-fun e!3171385 () Bool)

(assert (=> d!1645038 (=> (not res!2164662) (not e!3171385))))

(assert (=> d!1645038 (= res!2164662 (<= (size!39119 (list!19035 (xs!18964 (left!42849 xs!286)))) 512))))

(assert (=> d!1645038 (= (inv!77681 (left!42849 xs!286)) e!3171385)))

(declare-fun b!5084667 () Bool)

(declare-fun res!2164663 () Bool)

(assert (=> b!5084667 (=> (not res!2164663) (not e!3171385))))

(assert (=> b!5084667 (= res!2164663 (= (csize!31403 (left!42849 xs!286)) (size!39119 (list!19035 (xs!18964 (left!42849 xs!286))))))))

(declare-fun b!5084668 () Bool)

(assert (=> b!5084668 (= e!3171385 (and (> (csize!31403 (left!42849 xs!286)) 0) (<= (csize!31403 (left!42849 xs!286)) 512)))))

(assert (= (and d!1645038 res!2164662) b!5084667))

(assert (= (and b!5084667 res!2164663) b!5084668))

(assert (=> d!1645038 m!6140300))

(assert (=> d!1645038 m!6140300))

(declare-fun m!6140432 () Bool)

(assert (=> d!1645038 m!6140432))

(assert (=> b!5084667 m!6140300))

(assert (=> b!5084667 m!6140300))

(assert (=> b!5084667 m!6140432))

(assert (=> b!5084219 d!1645038))

(declare-fun d!1645040 () Bool)

(assert (=> d!1645040 (= (height!2163 (left!42849 xs!286)) (ite ((_ is Empty!15586) (left!42849 xs!286)) 0 (ite ((_ is Leaf!25884) (left!42849 xs!286)) 1 (cheight!15797 (left!42849 xs!286)))))))

(assert (=> b!5084036 d!1645040))

(declare-fun d!1645042 () Bool)

(assert (=> d!1645042 (= (height!2163 (right!43179 xs!286)) (ite ((_ is Empty!15586) (right!43179 xs!286)) 0 (ite ((_ is Leaf!25884) (right!43179 xs!286)) 1 (cheight!15797 (right!43179 xs!286)))))))

(assert (=> b!5084036 d!1645042))

(declare-fun d!1645044 () Bool)

(declare-fun c!873583 () Bool)

(assert (=> d!1645044 (= c!873583 ((_ is Node!15586) (left!42849 (left!42849 err!4617))))))

(declare-fun e!3171386 () Bool)

(assert (=> d!1645044 (= (inv!77676 (left!42849 (left!42849 err!4617))) e!3171386)))

(declare-fun b!5084669 () Bool)

(assert (=> b!5084669 (= e!3171386 (inv!77680 (left!42849 (left!42849 err!4617))))))

(declare-fun b!5084670 () Bool)

(declare-fun e!3171387 () Bool)

(assert (=> b!5084670 (= e!3171386 e!3171387)))

(declare-fun res!2164664 () Bool)

(assert (=> b!5084670 (= res!2164664 (not ((_ is Leaf!25884) (left!42849 (left!42849 err!4617)))))))

(assert (=> b!5084670 (=> res!2164664 e!3171387)))

(declare-fun b!5084671 () Bool)

(assert (=> b!5084671 (= e!3171387 (inv!77681 (left!42849 (left!42849 err!4617))))))

(assert (= (and d!1645044 c!873583) b!5084669))

(assert (= (and d!1645044 (not c!873583)) b!5084670))

(assert (= (and b!5084670 (not res!2164664)) b!5084671))

(declare-fun m!6140434 () Bool)

(assert (=> b!5084669 m!6140434))

(declare-fun m!6140436 () Bool)

(assert (=> b!5084671 m!6140436))

(assert (=> b!5084281 d!1645044))

(declare-fun d!1645046 () Bool)

(declare-fun c!873584 () Bool)

(assert (=> d!1645046 (= c!873584 ((_ is Node!15586) (right!43179 (left!42849 err!4617))))))

(declare-fun e!3171388 () Bool)

(assert (=> d!1645046 (= (inv!77676 (right!43179 (left!42849 err!4617))) e!3171388)))

(declare-fun b!5084672 () Bool)

(assert (=> b!5084672 (= e!3171388 (inv!77680 (right!43179 (left!42849 err!4617))))))

(declare-fun b!5084673 () Bool)

(declare-fun e!3171389 () Bool)

(assert (=> b!5084673 (= e!3171388 e!3171389)))

(declare-fun res!2164665 () Bool)

(assert (=> b!5084673 (= res!2164665 (not ((_ is Leaf!25884) (right!43179 (left!42849 err!4617)))))))

(assert (=> b!5084673 (=> res!2164665 e!3171389)))

(declare-fun b!5084674 () Bool)

(assert (=> b!5084674 (= e!3171389 (inv!77681 (right!43179 (left!42849 err!4617))))))

(assert (= (and d!1645046 c!873584) b!5084672))

(assert (= (and d!1645046 (not c!873584)) b!5084673))

(assert (= (and b!5084673 (not res!2164665)) b!5084674))

(declare-fun m!6140438 () Bool)

(assert (=> b!5084672 m!6140438))

(declare-fun m!6140440 () Bool)

(assert (=> b!5084674 m!6140440))

(assert (=> b!5084281 d!1645046))

(declare-fun d!1645048 () Bool)

(declare-fun lt!2091443 () Bool)

(assert (=> d!1645048 (= lt!2091443 (isEmpty!31677 (list!19033 (right!43179 lt!2091392))))))

(assert (=> d!1645048 (= lt!2091443 (= (size!39121 (right!43179 lt!2091392)) 0))))

(assert (=> d!1645048 (= (isEmpty!31675 (right!43179 lt!2091392)) lt!2091443)))

(declare-fun bs!1190843 () Bool)

(assert (= bs!1190843 d!1645048))

(assert (=> bs!1190843 m!6139690))

(assert (=> bs!1190843 m!6139690))

(declare-fun m!6140442 () Bool)

(assert (=> bs!1190843 m!6140442))

(declare-fun m!6140444 () Bool)

(assert (=> bs!1190843 m!6140444))

(assert (=> b!5084028 d!1645048))

(declare-fun d!1645050 () Bool)

(declare-fun res!2164666 () Bool)

(declare-fun e!3171390 () Bool)

(assert (=> d!1645050 (=> (not res!2164666) (not e!3171390))))

(assert (=> d!1645050 (= res!2164666 (<= (size!39119 (list!19035 (xs!18964 err!4617))) 512))))

(assert (=> d!1645050 (= (inv!77681 err!4617) e!3171390)))

(declare-fun b!5084675 () Bool)

(declare-fun res!2164667 () Bool)

(assert (=> b!5084675 (=> (not res!2164667) (not e!3171390))))

(assert (=> b!5084675 (= res!2164667 (= (csize!31403 err!4617) (size!39119 (list!19035 (xs!18964 err!4617)))))))

(declare-fun b!5084676 () Bool)

(assert (=> b!5084676 (= e!3171390 (and (> (csize!31403 err!4617) 0) (<= (csize!31403 err!4617) 512)))))

(assert (= (and d!1645050 res!2164666) b!5084675))

(assert (= (and b!5084675 res!2164667) b!5084676))

(declare-fun m!6140446 () Bool)

(assert (=> d!1645050 m!6140446))

(assert (=> d!1645050 m!6140446))

(declare-fun m!6140448 () Bool)

(assert (=> d!1645050 m!6140448))

(assert (=> b!5084675 m!6140446))

(assert (=> b!5084675 m!6140446))

(assert (=> b!5084675 m!6140448))

(assert (=> b!5084216 d!1645050))

(declare-fun d!1645052 () Bool)

(declare-fun res!2164668 () Bool)

(declare-fun e!3171391 () Bool)

(assert (=> d!1645052 (=> (not res!2164668) (not e!3171391))))

(assert (=> d!1645052 (= res!2164668 (<= (size!39119 (list!19035 (xs!18964 xs!286))) 512))))

(assert (=> d!1645052 (= (inv!77681 xs!286) e!3171391)))

(declare-fun b!5084677 () Bool)

(declare-fun res!2164669 () Bool)

(assert (=> b!5084677 (=> (not res!2164669) (not e!3171391))))

(assert (=> b!5084677 (= res!2164669 (= (csize!31403 xs!286) (size!39119 (list!19035 (xs!18964 xs!286)))))))

(declare-fun b!5084678 () Bool)

(assert (=> b!5084678 (= e!3171391 (and (> (csize!31403 xs!286) 0) (<= (csize!31403 xs!286) 512)))))

(assert (= (and d!1645052 res!2164668) b!5084677))

(assert (= (and b!5084677 res!2164669) b!5084678))

(assert (=> d!1645052 m!6139712))

(assert (=> d!1645052 m!6139712))

(declare-fun m!6140450 () Bool)

(assert (=> d!1645052 m!6140450))

(assert (=> b!5084677 m!6139712))

(assert (=> b!5084677 m!6139712))

(assert (=> b!5084677 m!6140450))

(assert (=> b!5084080 d!1645052))

(declare-fun b!5084680 () Bool)

(declare-fun e!3171392 () List!58580)

(assert (=> b!5084680 (= e!3171392 (Cons!58456 (h!64904 (list!19033 (left!42849 lt!2091392))) (++!12815 (t!371417 (list!19033 (left!42849 lt!2091392))) (list!19033 (right!43179 lt!2091392)))))))

(declare-fun d!1645054 () Bool)

(declare-fun e!3171393 () Bool)

(assert (=> d!1645054 e!3171393))

(declare-fun res!2164671 () Bool)

(assert (=> d!1645054 (=> (not res!2164671) (not e!3171393))))

(declare-fun lt!2091444 () List!58580)

(assert (=> d!1645054 (= res!2164671 (= (content!10430 lt!2091444) ((_ map or) (content!10430 (list!19033 (left!42849 lt!2091392))) (content!10430 (list!19033 (right!43179 lt!2091392))))))))

(assert (=> d!1645054 (= lt!2091444 e!3171392)))

(declare-fun c!873585 () Bool)

(assert (=> d!1645054 (= c!873585 ((_ is Nil!58456) (list!19033 (left!42849 lt!2091392))))))

(assert (=> d!1645054 (= (++!12815 (list!19033 (left!42849 lt!2091392)) (list!19033 (right!43179 lt!2091392))) lt!2091444)))

(declare-fun b!5084679 () Bool)

(assert (=> b!5084679 (= e!3171392 (list!19033 (right!43179 lt!2091392)))))

(declare-fun b!5084682 () Bool)

(assert (=> b!5084682 (= e!3171393 (or (not (= (list!19033 (right!43179 lt!2091392)) Nil!58456)) (= lt!2091444 (list!19033 (left!42849 lt!2091392)))))))

(declare-fun b!5084681 () Bool)

(declare-fun res!2164670 () Bool)

(assert (=> b!5084681 (=> (not res!2164670) (not e!3171393))))

(assert (=> b!5084681 (= res!2164670 (= (size!39119 lt!2091444) (+ (size!39119 (list!19033 (left!42849 lt!2091392))) (size!39119 (list!19033 (right!43179 lt!2091392))))))))

(assert (= (and d!1645054 c!873585) b!5084679))

(assert (= (and d!1645054 (not c!873585)) b!5084680))

(assert (= (and d!1645054 res!2164671) b!5084681))

(assert (= (and b!5084681 res!2164670) b!5084682))

(assert (=> b!5084680 m!6139690))

(declare-fun m!6140452 () Bool)

(assert (=> b!5084680 m!6140452))

(declare-fun m!6140454 () Bool)

(assert (=> d!1645054 m!6140454))

(assert (=> d!1645054 m!6139688))

(declare-fun m!6140456 () Bool)

(assert (=> d!1645054 m!6140456))

(assert (=> d!1645054 m!6139690))

(declare-fun m!6140458 () Bool)

(assert (=> d!1645054 m!6140458))

(declare-fun m!6140460 () Bool)

(assert (=> b!5084681 m!6140460))

(assert (=> b!5084681 m!6139688))

(declare-fun m!6140462 () Bool)

(assert (=> b!5084681 m!6140462))

(assert (=> b!5084681 m!6139690))

(declare-fun m!6140464 () Bool)

(assert (=> b!5084681 m!6140464))

(assert (=> b!5084240 d!1645054))

(declare-fun b!5084684 () Bool)

(declare-fun e!3171394 () List!58580)

(declare-fun e!3171395 () List!58580)

(assert (=> b!5084684 (= e!3171394 e!3171395)))

(declare-fun c!873587 () Bool)

(assert (=> b!5084684 (= c!873587 ((_ is Leaf!25884) (left!42849 lt!2091392)))))

(declare-fun b!5084683 () Bool)

(assert (=> b!5084683 (= e!3171394 Nil!58456)))

(declare-fun b!5084686 () Bool)

(assert (=> b!5084686 (= e!3171395 (++!12815 (list!19033 (left!42849 (left!42849 lt!2091392))) (list!19033 (right!43179 (left!42849 lt!2091392)))))))

(declare-fun d!1645056 () Bool)

(declare-fun c!873586 () Bool)

(assert (=> d!1645056 (= c!873586 ((_ is Empty!15586) (left!42849 lt!2091392)))))

(assert (=> d!1645056 (= (list!19033 (left!42849 lt!2091392)) e!3171394)))

(declare-fun b!5084685 () Bool)

(assert (=> b!5084685 (= e!3171395 (list!19035 (xs!18964 (left!42849 lt!2091392))))))

(assert (= (and d!1645056 c!873586) b!5084683))

(assert (= (and d!1645056 (not c!873586)) b!5084684))

(assert (= (and b!5084684 c!873587) b!5084685))

(assert (= (and b!5084684 (not c!873587)) b!5084686))

(declare-fun m!6140466 () Bool)

(assert (=> b!5084686 m!6140466))

(declare-fun m!6140468 () Bool)

(assert (=> b!5084686 m!6140468))

(assert (=> b!5084686 m!6140466))

(assert (=> b!5084686 m!6140468))

(declare-fun m!6140470 () Bool)

(assert (=> b!5084686 m!6140470))

(declare-fun m!6140472 () Bool)

(assert (=> b!5084685 m!6140472))

(assert (=> b!5084240 d!1645056))

(declare-fun b!5084688 () Bool)

(declare-fun e!3171396 () List!58580)

(declare-fun e!3171397 () List!58580)

(assert (=> b!5084688 (= e!3171396 e!3171397)))

(declare-fun c!873589 () Bool)

(assert (=> b!5084688 (= c!873589 ((_ is Leaf!25884) (right!43179 lt!2091392)))))

(declare-fun b!5084687 () Bool)

(assert (=> b!5084687 (= e!3171396 Nil!58456)))

(declare-fun b!5084690 () Bool)

(assert (=> b!5084690 (= e!3171397 (++!12815 (list!19033 (left!42849 (right!43179 lt!2091392))) (list!19033 (right!43179 (right!43179 lt!2091392)))))))

(declare-fun d!1645058 () Bool)

(declare-fun c!873588 () Bool)

(assert (=> d!1645058 (= c!873588 ((_ is Empty!15586) (right!43179 lt!2091392)))))

(assert (=> d!1645058 (= (list!19033 (right!43179 lt!2091392)) e!3171396)))

(declare-fun b!5084689 () Bool)

(assert (=> b!5084689 (= e!3171397 (list!19035 (xs!18964 (right!43179 lt!2091392))))))

(assert (= (and d!1645058 c!873588) b!5084687))

(assert (= (and d!1645058 (not c!873588)) b!5084688))

(assert (= (and b!5084688 c!873589) b!5084689))

(assert (= (and b!5084688 (not c!873589)) b!5084690))

(declare-fun m!6140474 () Bool)

(assert (=> b!5084690 m!6140474))

(declare-fun m!6140476 () Bool)

(assert (=> b!5084690 m!6140476))

(assert (=> b!5084690 m!6140474))

(assert (=> b!5084690 m!6140476))

(declare-fun m!6140478 () Bool)

(assert (=> b!5084690 m!6140478))

(declare-fun m!6140480 () Bool)

(assert (=> b!5084689 m!6140480))

(assert (=> b!5084240 d!1645058))

(declare-fun b!5084691 () Bool)

(declare-fun res!2164677 () Bool)

(declare-fun e!3171398 () Bool)

(assert (=> b!5084691 (=> (not res!2164677) (not e!3171398))))

(assert (=> b!5084691 (= res!2164677 (isBalanced!4448 (right!43179 (right!43179 ys!41))))))

(declare-fun b!5084692 () Bool)

(declare-fun res!2164675 () Bool)

(assert (=> b!5084692 (=> (not res!2164675) (not e!3171398))))

(assert (=> b!5084692 (= res!2164675 (<= (- (height!2163 (left!42849 (right!43179 ys!41))) (height!2163 (right!43179 (right!43179 ys!41)))) 1))))

(declare-fun b!5084693 () Bool)

(declare-fun e!3171399 () Bool)

(assert (=> b!5084693 (= e!3171399 e!3171398)))

(declare-fun res!2164673 () Bool)

(assert (=> b!5084693 (=> (not res!2164673) (not e!3171398))))

(assert (=> b!5084693 (= res!2164673 (<= (- 1) (- (height!2163 (left!42849 (right!43179 ys!41))) (height!2163 (right!43179 (right!43179 ys!41))))))))

(declare-fun b!5084694 () Bool)

(declare-fun res!2164676 () Bool)

(assert (=> b!5084694 (=> (not res!2164676) (not e!3171398))))

(assert (=> b!5084694 (= res!2164676 (not (isEmpty!31675 (left!42849 (right!43179 ys!41)))))))

(declare-fun b!5084695 () Bool)

(declare-fun res!2164672 () Bool)

(assert (=> b!5084695 (=> (not res!2164672) (not e!3171398))))

(assert (=> b!5084695 (= res!2164672 (isBalanced!4448 (left!42849 (right!43179 ys!41))))))

(declare-fun b!5084696 () Bool)

(assert (=> b!5084696 (= e!3171398 (not (isEmpty!31675 (right!43179 (right!43179 ys!41)))))))

(declare-fun d!1645060 () Bool)

(declare-fun res!2164674 () Bool)

(assert (=> d!1645060 (=> res!2164674 e!3171399)))

(assert (=> d!1645060 (= res!2164674 (not ((_ is Node!15586) (right!43179 ys!41))))))

(assert (=> d!1645060 (= (isBalanced!4448 (right!43179 ys!41)) e!3171399)))

(assert (= (and d!1645060 (not res!2164674)) b!5084693))

(assert (= (and b!5084693 res!2164673) b!5084692))

(assert (= (and b!5084692 res!2164675) b!5084695))

(assert (= (and b!5084695 res!2164672) b!5084691))

(assert (= (and b!5084691 res!2164677) b!5084694))

(assert (= (and b!5084694 res!2164676) b!5084696))

(declare-fun m!6140482 () Bool)

(assert (=> b!5084695 m!6140482))

(declare-fun m!6140484 () Bool)

(assert (=> b!5084696 m!6140484))

(declare-fun m!6140486 () Bool)

(assert (=> b!5084694 m!6140486))

(assert (=> b!5084693 m!6140310))

(assert (=> b!5084693 m!6140312))

(assert (=> b!5084692 m!6140310))

(assert (=> b!5084692 m!6140312))

(declare-fun m!6140488 () Bool)

(assert (=> b!5084691 m!6140488))

(assert (=> b!5084098 d!1645060))

(declare-fun d!1645062 () Bool)

(declare-fun lt!2091445 () Int)

(assert (=> d!1645062 (>= lt!2091445 0)))

(declare-fun e!3171400 () Int)

(assert (=> d!1645062 (= lt!2091445 e!3171400)))

(declare-fun c!873590 () Bool)

(assert (=> d!1645062 (= c!873590 ((_ is Nil!58456) (innerList!15674 (xs!18964 err!4617))))))

(assert (=> d!1645062 (= (size!39119 (innerList!15674 (xs!18964 err!4617))) lt!2091445)))

(declare-fun b!5084697 () Bool)

(assert (=> b!5084697 (= e!3171400 0)))

(declare-fun b!5084698 () Bool)

(assert (=> b!5084698 (= e!3171400 (+ 1 (size!39119 (t!371417 (innerList!15674 (xs!18964 err!4617))))))))

(assert (= (and d!1645062 c!873590) b!5084697))

(assert (= (and d!1645062 (not c!873590)) b!5084698))

(declare-fun m!6140490 () Bool)

(assert (=> b!5084698 m!6140490))

(assert (=> d!1644754 d!1645062))

(declare-fun d!1645064 () Bool)

(declare-fun res!2164678 () Bool)

(declare-fun e!3171401 () Bool)

(assert (=> d!1645064 (=> (not res!2164678) (not e!3171401))))

(assert (=> d!1645064 (= res!2164678 (= (csize!31402 xs!286) (+ (size!39121 (left!42849 xs!286)) (size!39121 (right!43179 xs!286)))))))

(assert (=> d!1645064 (= (inv!77680 xs!286) e!3171401)))

(declare-fun b!5084699 () Bool)

(declare-fun res!2164679 () Bool)

(assert (=> b!5084699 (=> (not res!2164679) (not e!3171401))))

(assert (=> b!5084699 (= res!2164679 (and (not (= (left!42849 xs!286) Empty!15586)) (not (= (right!43179 xs!286) Empty!15586))))))

(declare-fun b!5084700 () Bool)

(declare-fun res!2164680 () Bool)

(assert (=> b!5084700 (=> (not res!2164680) (not e!3171401))))

(assert (=> b!5084700 (= res!2164680 (= (cheight!15797 xs!286) (+ (max!0 (height!2163 (left!42849 xs!286)) (height!2163 (right!43179 xs!286))) 1)))))

(declare-fun b!5084701 () Bool)

(assert (=> b!5084701 (= e!3171401 (<= 0 (cheight!15797 xs!286)))))

(assert (= (and d!1645064 res!2164678) b!5084699))

(assert (= (and b!5084699 res!2164679) b!5084700))

(assert (= (and b!5084700 res!2164680) b!5084701))

(assert (=> d!1645064 m!6140430))

(declare-fun m!6140492 () Bool)

(assert (=> d!1645064 m!6140492))

(assert (=> b!5084700 m!6139472))

(assert (=> b!5084700 m!6139474))

(assert (=> b!5084700 m!6139472))

(assert (=> b!5084700 m!6139474))

(declare-fun m!6140494 () Bool)

(assert (=> b!5084700 m!6140494))

(assert (=> b!5084077 d!1645064))

(assert (=> b!5084208 d!1644794))

(declare-fun b!5084703 () Bool)

(declare-fun e!3171402 () List!58580)

(declare-fun e!3171403 () List!58580)

(assert (=> b!5084703 (= e!3171402 e!3171403)))

(declare-fun c!873592 () Bool)

(assert (=> b!5084703 (= c!873592 ((_ is Leaf!25884) (right!43179 ys!41)))))

(declare-fun b!5084702 () Bool)

(assert (=> b!5084702 (= e!3171402 Nil!58456)))

(declare-fun b!5084705 () Bool)

(assert (=> b!5084705 (= e!3171403 (++!12815 (list!19033 (left!42849 (right!43179 ys!41))) (list!19033 (right!43179 (right!43179 ys!41)))))))

(declare-fun d!1645066 () Bool)

(declare-fun c!873591 () Bool)

(assert (=> d!1645066 (= c!873591 ((_ is Empty!15586) (right!43179 ys!41)))))

(assert (=> d!1645066 (= (list!19033 (right!43179 ys!41)) e!3171402)))

(declare-fun b!5084704 () Bool)

(assert (=> b!5084704 (= e!3171403 (list!19035 (xs!18964 (right!43179 ys!41))))))

(assert (= (and d!1645066 c!873591) b!5084702))

(assert (= (and d!1645066 (not c!873591)) b!5084703))

(assert (= (and b!5084703 c!873592) b!5084704))

(assert (= (and b!5084703 (not c!873592)) b!5084705))

(declare-fun m!6140496 () Bool)

(assert (=> b!5084705 m!6140496))

(declare-fun m!6140498 () Bool)

(assert (=> b!5084705 m!6140498))

(assert (=> b!5084705 m!6140496))

(assert (=> b!5084705 m!6140498))

(declare-fun m!6140500 () Bool)

(assert (=> b!5084705 m!6140500))

(assert (=> b!5084704 m!6140326))

(assert (=> b!5084208 d!1645066))

(declare-fun b!5084707 () Bool)

(declare-fun e!3171404 () List!58580)

(declare-fun e!3171405 () List!58580)

(assert (=> b!5084707 (= e!3171404 e!3171405)))

(declare-fun c!873594 () Bool)

(assert (=> b!5084707 (= c!873594 ((_ is Leaf!25884) (right!43179 (left!42849 ys!41))))))

(declare-fun b!5084706 () Bool)

(assert (=> b!5084706 (= e!3171404 Nil!58456)))

(declare-fun b!5084709 () Bool)

(assert (=> b!5084709 (= e!3171405 (++!12815 (list!19033 (left!42849 (right!43179 (left!42849 ys!41)))) (list!19033 (right!43179 (right!43179 (left!42849 ys!41))))))))

(declare-fun d!1645068 () Bool)

(declare-fun c!873593 () Bool)

(assert (=> d!1645068 (= c!873593 ((_ is Empty!15586) (right!43179 (left!42849 ys!41))))))

(assert (=> d!1645068 (= (list!19033 (right!43179 (left!42849 ys!41))) e!3171404)))

(declare-fun b!5084708 () Bool)

(assert (=> b!5084708 (= e!3171405 (list!19035 (xs!18964 (right!43179 (left!42849 ys!41)))))))

(assert (= (and d!1645068 c!873593) b!5084706))

(assert (= (and d!1645068 (not c!873593)) b!5084707))

(assert (= (and b!5084707 c!873594) b!5084708))

(assert (= (and b!5084707 (not c!873594)) b!5084709))

(declare-fun m!6140502 () Bool)

(assert (=> b!5084709 m!6140502))

(declare-fun m!6140504 () Bool)

(assert (=> b!5084709 m!6140504))

(assert (=> b!5084709 m!6140502))

(assert (=> b!5084709 m!6140504))

(declare-fun m!6140506 () Bool)

(assert (=> b!5084709 m!6140506))

(declare-fun m!6140508 () Bool)

(assert (=> b!5084708 m!6140508))

(assert (=> b!5084208 d!1645068))

(declare-fun bm!354397 () Bool)

(declare-fun call!354405 () List!58580)

(assert (=> bm!354397 (= call!354405 (++!12815 (list!19033 (right!43179 (left!42849 ys!41))) (list!19033 (right!43179 ys!41))))))

(declare-fun b!5084710 () Bool)

(declare-fun e!3171406 () Bool)

(declare-fun call!354402 () List!58580)

(declare-fun call!354404 () List!58580)

(assert (=> b!5084710 (= e!3171406 (= call!354402 call!354404))))

(declare-fun lt!2091446 () Bool)

(assert (=> b!5084710 (= lt!2091446 (appendAssoc!314 (t!371417 (++!12815 (list!19033 xs!286) (list!19033 (left!42849 (left!42849 ys!41))))) (list!19033 (right!43179 (left!42849 ys!41))) (list!19033 (right!43179 ys!41))))))

(declare-fun bm!354398 () Bool)

(declare-fun call!354403 () List!58580)

(assert (=> bm!354398 (= call!354402 (++!12815 call!354403 (list!19033 (right!43179 ys!41))))))

(declare-fun b!5084711 () Bool)

(assert (=> b!5084711 (= e!3171406 (= call!354402 call!354404))))

(declare-fun d!1645070 () Bool)

(assert (=> d!1645070 e!3171406))

(declare-fun c!873595 () Bool)

(assert (=> d!1645070 (= c!873595 ((_ is Nil!58456) (++!12815 (list!19033 xs!286) (list!19033 (left!42849 (left!42849 ys!41))))))))

(assert (=> d!1645070 (= (appendAssoc!314 (++!12815 (list!19033 xs!286) (list!19033 (left!42849 (left!42849 ys!41)))) (list!19033 (right!43179 (left!42849 ys!41))) (list!19033 (right!43179 ys!41))) true)))

(declare-fun bm!354399 () Bool)

(assert (=> bm!354399 (= call!354403 (++!12815 (++!12815 (list!19033 xs!286) (list!19033 (left!42849 (left!42849 ys!41)))) (list!19033 (right!43179 (left!42849 ys!41)))))))

(declare-fun bm!354400 () Bool)

(assert (=> bm!354400 (= call!354404 (++!12815 (++!12815 (list!19033 xs!286) (list!19033 (left!42849 (left!42849 ys!41)))) call!354405))))

(assert (= (and d!1645070 c!873595) b!5084711))

(assert (= (and d!1645070 (not c!873595)) b!5084710))

(assert (= (or b!5084711 b!5084710) bm!354399))

(assert (= (or b!5084711 b!5084710) bm!354397))

(assert (= (or b!5084711 b!5084710) bm!354400))

(assert (= (or b!5084711 b!5084710) bm!354398))

(assert (=> bm!354400 m!6139656))

(declare-fun m!6140510 () Bool)

(assert (=> bm!354400 m!6140510))

(assert (=> b!5084710 m!6139652))

(assert (=> b!5084710 m!6139658))

(declare-fun m!6140512 () Bool)

(assert (=> b!5084710 m!6140512))

(assert (=> bm!354398 m!6139658))

(declare-fun m!6140514 () Bool)

(assert (=> bm!354398 m!6140514))

(assert (=> bm!354397 m!6139652))

(assert (=> bm!354397 m!6139658))

(declare-fun m!6140516 () Bool)

(assert (=> bm!354397 m!6140516))

(assert (=> bm!354399 m!6139656))

(assert (=> bm!354399 m!6139652))

(declare-fun m!6140518 () Bool)

(assert (=> bm!354399 m!6140518))

(assert (=> b!5084208 d!1645070))

(declare-fun b!5084713 () Bool)

(declare-fun e!3171407 () List!58580)

(assert (=> b!5084713 (= e!3171407 (Cons!58456 (h!64904 (list!19033 xs!286)) (++!12815 (t!371417 (list!19033 xs!286)) (list!19033 (left!42849 (left!42849 ys!41))))))))

(declare-fun d!1645072 () Bool)

(declare-fun e!3171408 () Bool)

(assert (=> d!1645072 e!3171408))

(declare-fun res!2164682 () Bool)

(assert (=> d!1645072 (=> (not res!2164682) (not e!3171408))))

(declare-fun lt!2091447 () List!58580)

(assert (=> d!1645072 (= res!2164682 (= (content!10430 lt!2091447) ((_ map or) (content!10430 (list!19033 xs!286)) (content!10430 (list!19033 (left!42849 (left!42849 ys!41)))))))))

(assert (=> d!1645072 (= lt!2091447 e!3171407)))

(declare-fun c!873596 () Bool)

(assert (=> d!1645072 (= c!873596 ((_ is Nil!58456) (list!19033 xs!286)))))

(assert (=> d!1645072 (= (++!12815 (list!19033 xs!286) (list!19033 (left!42849 (left!42849 ys!41)))) lt!2091447)))

(declare-fun b!5084712 () Bool)

(assert (=> b!5084712 (= e!3171407 (list!19033 (left!42849 (left!42849 ys!41))))))

(declare-fun b!5084715 () Bool)

(assert (=> b!5084715 (= e!3171408 (or (not (= (list!19033 (left!42849 (left!42849 ys!41))) Nil!58456)) (= lt!2091447 (list!19033 xs!286))))))

(declare-fun b!5084714 () Bool)

(declare-fun res!2164681 () Bool)

(assert (=> b!5084714 (=> (not res!2164681) (not e!3171408))))

(assert (=> b!5084714 (= res!2164681 (= (size!39119 lt!2091447) (+ (size!39119 (list!19033 xs!286)) (size!39119 (list!19033 (left!42849 (left!42849 ys!41)))))))))

(assert (= (and d!1645072 c!873596) b!5084712))

(assert (= (and d!1645072 (not c!873596)) b!5084713))

(assert (= (and d!1645072 res!2164682) b!5084714))

(assert (= (and b!5084714 res!2164681) b!5084715))

(assert (=> b!5084713 m!6139654))

(declare-fun m!6140520 () Bool)

(assert (=> b!5084713 m!6140520))

(declare-fun m!6140522 () Bool)

(assert (=> d!1645072 m!6140522))

(assert (=> d!1645072 m!6139374))

(assert (=> d!1645072 m!6139700))

(assert (=> d!1645072 m!6139654))

(declare-fun m!6140524 () Bool)

(assert (=> d!1645072 m!6140524))

(declare-fun m!6140526 () Bool)

(assert (=> b!5084714 m!6140526))

(assert (=> b!5084714 m!6139374))

(assert (=> b!5084714 m!6139706))

(assert (=> b!5084714 m!6139654))

(declare-fun m!6140528 () Bool)

(assert (=> b!5084714 m!6140528))

(assert (=> b!5084208 d!1645072))

(declare-fun b!5084717 () Bool)

(declare-fun e!3171409 () List!58580)

(declare-fun e!3171410 () List!58580)

(assert (=> b!5084717 (= e!3171409 e!3171410)))

(declare-fun c!873598 () Bool)

(assert (=> b!5084717 (= c!873598 ((_ is Leaf!25884) (left!42849 (left!42849 ys!41))))))

(declare-fun b!5084716 () Bool)

(assert (=> b!5084716 (= e!3171409 Nil!58456)))

(declare-fun b!5084719 () Bool)

(assert (=> b!5084719 (= e!3171410 (++!12815 (list!19033 (left!42849 (left!42849 (left!42849 ys!41)))) (list!19033 (right!43179 (left!42849 (left!42849 ys!41))))))))

(declare-fun d!1645074 () Bool)

(declare-fun c!873597 () Bool)

(assert (=> d!1645074 (= c!873597 ((_ is Empty!15586) (left!42849 (left!42849 ys!41))))))

(assert (=> d!1645074 (= (list!19033 (left!42849 (left!42849 ys!41))) e!3171409)))

(declare-fun b!5084718 () Bool)

(assert (=> b!5084718 (= e!3171410 (list!19035 (xs!18964 (left!42849 (left!42849 ys!41)))))))

(assert (= (and d!1645074 c!873597) b!5084716))

(assert (= (and d!1645074 (not c!873597)) b!5084717))

(assert (= (and b!5084717 c!873598) b!5084718))

(assert (= (and b!5084717 (not c!873598)) b!5084719))

(declare-fun m!6140530 () Bool)

(assert (=> b!5084719 m!6140530))

(declare-fun m!6140532 () Bool)

(assert (=> b!5084719 m!6140532))

(assert (=> b!5084719 m!6140530))

(assert (=> b!5084719 m!6140532))

(declare-fun m!6140534 () Bool)

(assert (=> b!5084719 m!6140534))

(declare-fun m!6140536 () Bool)

(assert (=> b!5084718 m!6140536))

(assert (=> b!5084208 d!1645074))

(declare-fun d!1645076 () Bool)

(declare-fun lt!2091448 () Bool)

(assert (=> d!1645076 (= lt!2091448 (isEmpty!31677 (list!19033 (right!43179 xs!286))))))

(assert (=> d!1645076 (= lt!2091448 (= (size!39121 (right!43179 xs!286)) 0))))

(assert (=> d!1645076 (= (isEmpty!31675 (right!43179 xs!286)) lt!2091448)))

(declare-fun bs!1190844 () Bool)

(assert (= bs!1190844 d!1645076))

(assert (=> bs!1190844 m!6139648))

(assert (=> bs!1190844 m!6139648))

(declare-fun m!6140538 () Bool)

(assert (=> bs!1190844 m!6140538))

(assert (=> bs!1190844 m!6140492))

(assert (=> b!5084040 d!1645076))

(declare-fun d!1645078 () Bool)

(assert (=> d!1645078 (= (list!19035 (xs!18964 ys!41)) (innerList!15674 (xs!18964 ys!41)))))

(assert (=> b!5084259 d!1645078))

(declare-fun d!1645080 () Bool)

(declare-fun res!2164683 () Bool)

(declare-fun e!3171411 () Bool)

(assert (=> d!1645080 (=> (not res!2164683) (not e!3171411))))

(assert (=> d!1645080 (= res!2164683 (= (csize!31402 err!4617) (+ (size!39121 (left!42849 err!4617)) (size!39121 (right!43179 err!4617)))))))

(assert (=> d!1645080 (= (inv!77680 err!4617) e!3171411)))

(declare-fun b!5084720 () Bool)

(declare-fun res!2164684 () Bool)

(assert (=> b!5084720 (=> (not res!2164684) (not e!3171411))))

(assert (=> b!5084720 (= res!2164684 (and (not (= (left!42849 err!4617) Empty!15586)) (not (= (right!43179 err!4617) Empty!15586))))))

(declare-fun b!5084721 () Bool)

(declare-fun res!2164685 () Bool)

(assert (=> b!5084721 (=> (not res!2164685) (not e!3171411))))

(assert (=> b!5084721 (= res!2164685 (= (cheight!15797 err!4617) (+ (max!0 (height!2163 (left!42849 err!4617)) (height!2163 (right!43179 err!4617))) 1)))))

(declare-fun b!5084722 () Bool)

(assert (=> b!5084722 (= e!3171411 (<= 0 (cheight!15797 err!4617)))))

(assert (= (and d!1645080 res!2164683) b!5084720))

(assert (= (and b!5084720 res!2164684) b!5084721))

(assert (= (and b!5084721 res!2164685) b!5084722))

(declare-fun m!6140540 () Bool)

(assert (=> d!1645080 m!6140540))

(declare-fun m!6140542 () Bool)

(assert (=> d!1645080 m!6140542))

(declare-fun m!6140544 () Bool)

(assert (=> b!5084721 m!6140544))

(declare-fun m!6140546 () Bool)

(assert (=> b!5084721 m!6140546))

(assert (=> b!5084721 m!6140544))

(assert (=> b!5084721 m!6140546))

(declare-fun m!6140548 () Bool)

(assert (=> b!5084721 m!6140548))

(assert (=> b!5084214 d!1645080))

(declare-fun bm!354401 () Bool)

(declare-fun call!354409 () List!58580)

(assert (=> bm!354401 (= call!354409 (++!12815 (list!19033 (right!43179 xs!286)) (list!19033 ys!41)))))

(declare-fun b!5084723 () Bool)

(declare-fun e!3171412 () Bool)

(declare-fun call!354406 () List!58580)

(declare-fun call!354408 () List!58580)

(assert (=> b!5084723 (= e!3171412 (= call!354406 call!354408))))

(declare-fun lt!2091449 () Bool)

(assert (=> b!5084723 (= lt!2091449 (appendAssoc!314 (t!371417 (list!19033 (left!42849 xs!286))) (list!19033 (right!43179 xs!286)) (list!19033 ys!41)))))

(declare-fun bm!354402 () Bool)

(declare-fun call!354407 () List!58580)

(assert (=> bm!354402 (= call!354406 (++!12815 call!354407 (list!19033 ys!41)))))

(declare-fun b!5084724 () Bool)

(assert (=> b!5084724 (= e!3171412 (= call!354406 call!354408))))

(declare-fun d!1645082 () Bool)

(assert (=> d!1645082 e!3171412))

(declare-fun c!873599 () Bool)

(assert (=> d!1645082 (= c!873599 ((_ is Nil!58456) (list!19033 (left!42849 xs!286))))))

(assert (=> d!1645082 (= (appendAssoc!314 (list!19033 (left!42849 xs!286)) (list!19033 (right!43179 xs!286)) (list!19033 ys!41)) true)))

(declare-fun bm!354403 () Bool)

(assert (=> bm!354403 (= call!354407 (++!12815 (list!19033 (left!42849 xs!286)) (list!19033 (right!43179 xs!286))))))

(declare-fun bm!354404 () Bool)

(assert (=> bm!354404 (= call!354408 (++!12815 (list!19033 (left!42849 xs!286)) call!354409))))

(assert (= (and d!1645082 c!873599) b!5084724))

(assert (= (and d!1645082 (not c!873599)) b!5084723))

(assert (= (or b!5084724 b!5084723) bm!354403))

(assert (= (or b!5084724 b!5084723) bm!354401))

(assert (= (or b!5084724 b!5084723) bm!354404))

(assert (= (or b!5084724 b!5084723) bm!354402))

(assert (=> bm!354404 m!6139638))

(declare-fun m!6140550 () Bool)

(assert (=> bm!354404 m!6140550))

(assert (=> b!5084723 m!6139648))

(assert (=> b!5084723 m!6139376))

(declare-fun m!6140552 () Bool)

(assert (=> b!5084723 m!6140552))

(assert (=> bm!354402 m!6139376))

(declare-fun m!6140554 () Bool)

(assert (=> bm!354402 m!6140554))

(assert (=> bm!354401 m!6139648))

(assert (=> bm!354401 m!6139376))

(declare-fun m!6140556 () Bool)

(assert (=> bm!354401 m!6140556))

(assert (=> bm!354403 m!6139638))

(assert (=> bm!354403 m!6139648))

(assert (=> bm!354403 m!6139710))

(assert (=> b!5084210 d!1645082))

(assert (=> b!5084210 d!1644980))

(assert (=> b!5084210 d!1644982))

(assert (=> b!5084210 d!1644796))

(declare-fun d!1645084 () Bool)

(declare-fun lt!2091450 () Bool)

(assert (=> d!1645084 (= lt!2091450 (isEmpty!31677 (list!19033 (left!42849 ys!41))))))

(assert (=> d!1645084 (= lt!2091450 (= (size!39121 (left!42849 ys!41)) 0))))

(assert (=> d!1645084 (= (isEmpty!31675 (left!42849 ys!41)) lt!2091450)))

(declare-fun bs!1190845 () Bool)

(assert (= bs!1190845 d!1645084))

(assert (=> bs!1190845 m!6139662))

(assert (=> bs!1190845 m!6139662))

(declare-fun m!6140558 () Bool)

(assert (=> bs!1190845 m!6140558))

(declare-fun m!6140560 () Bool)

(assert (=> bs!1190845 m!6140560))

(assert (=> b!5084101 d!1645084))

(declare-fun d!1645086 () Bool)

(assert (=> d!1645086 (= (list!19035 (xs!18964 xs!286)) (innerList!15674 (xs!18964 xs!286)))))

(assert (=> b!5084255 d!1645086))

(declare-fun d!1645088 () Bool)

(declare-fun res!2164686 () Bool)

(declare-fun e!3171413 () Bool)

(assert (=> d!1645088 (=> (not res!2164686) (not e!3171413))))

(assert (=> d!1645088 (= res!2164686 (<= (size!39119 (list!19035 (xs!18964 (right!43179 xs!286)))) 512))))

(assert (=> d!1645088 (= (inv!77681 (right!43179 xs!286)) e!3171413)))

(declare-fun b!5084725 () Bool)

(declare-fun res!2164687 () Bool)

(assert (=> b!5084725 (=> (not res!2164687) (not e!3171413))))

(assert (=> b!5084725 (= res!2164687 (= (csize!31403 (right!43179 xs!286)) (size!39119 (list!19035 (xs!18964 (right!43179 xs!286))))))))

(declare-fun b!5084726 () Bool)

(assert (=> b!5084726 (= e!3171413 (and (> (csize!31403 (right!43179 xs!286)) 0) (<= (csize!31403 (right!43179 xs!286)) 512)))))

(assert (= (and d!1645088 res!2164686) b!5084725))

(assert (= (and b!5084725 res!2164687) b!5084726))

(assert (=> d!1645088 m!6140304))

(assert (=> d!1645088 m!6140304))

(declare-fun m!6140562 () Bool)

(assert (=> d!1645088 m!6140562))

(assert (=> b!5084725 m!6140304))

(assert (=> b!5084725 m!6140304))

(assert (=> b!5084725 m!6140562))

(assert (=> b!5084222 d!1645088))

(assert (=> b!5084099 d!1644804))

(assert (=> b!5084099 d!1644802))

(declare-fun d!1645090 () Bool)

(declare-fun res!2164688 () Bool)

(declare-fun e!3171414 () Bool)

(assert (=> d!1645090 (=> (not res!2164688) (not e!3171414))))

(assert (=> d!1645090 (= res!2164688 (= (csize!31402 (right!43179 xs!286)) (+ (size!39121 (left!42849 (right!43179 xs!286))) (size!39121 (right!43179 (right!43179 xs!286))))))))

(assert (=> d!1645090 (= (inv!77680 (right!43179 xs!286)) e!3171414)))

(declare-fun b!5084727 () Bool)

(declare-fun res!2164689 () Bool)

(assert (=> b!5084727 (=> (not res!2164689) (not e!3171414))))

(assert (=> b!5084727 (= res!2164689 (and (not (= (left!42849 (right!43179 xs!286)) Empty!15586)) (not (= (right!43179 (right!43179 xs!286)) Empty!15586))))))

(declare-fun b!5084728 () Bool)

(declare-fun res!2164690 () Bool)

(assert (=> b!5084728 (=> (not res!2164690) (not e!3171414))))

(assert (=> b!5084728 (= res!2164690 (= (cheight!15797 (right!43179 xs!286)) (+ (max!0 (height!2163 (left!42849 (right!43179 xs!286))) (height!2163 (right!43179 (right!43179 xs!286)))) 1)))))

(declare-fun b!5084729 () Bool)

(assert (=> b!5084729 (= e!3171414 (<= 0 (cheight!15797 (right!43179 xs!286))))))

(assert (= (and d!1645090 res!2164688) b!5084727))

(assert (= (and b!5084727 res!2164689) b!5084728))

(assert (= (and b!5084728 res!2164690) b!5084729))

(declare-fun m!6140564 () Bool)

(assert (=> d!1645090 m!6140564))

(declare-fun m!6140566 () Bool)

(assert (=> d!1645090 m!6140566))

(declare-fun m!6140568 () Bool)

(assert (=> b!5084728 m!6140568))

(declare-fun m!6140570 () Bool)

(assert (=> b!5084728 m!6140570))

(assert (=> b!5084728 m!6140568))

(assert (=> b!5084728 m!6140570))

(declare-fun m!6140572 () Bool)

(assert (=> b!5084728 m!6140572))

(assert (=> b!5084220 d!1645090))

(declare-fun d!1645092 () Bool)

(declare-fun lt!2091451 () Int)

(assert (=> d!1645092 (>= lt!2091451 0)))

(declare-fun e!3171415 () Int)

(assert (=> d!1645092 (= lt!2091451 e!3171415)))

(declare-fun c!873600 () Bool)

(assert (=> d!1645092 (= c!873600 ((_ is Nil!58456) (innerList!15674 (xs!18964 ys!41))))))

(assert (=> d!1645092 (= (size!39119 (innerList!15674 (xs!18964 ys!41))) lt!2091451)))

(declare-fun b!5084730 () Bool)

(assert (=> b!5084730 (= e!3171415 0)))

(declare-fun b!5084731 () Bool)

(assert (=> b!5084731 (= e!3171415 (+ 1 (size!39119 (t!371417 (innerList!15674 (xs!18964 ys!41))))))))

(assert (= (and d!1645092 c!873600) b!5084730))

(assert (= (and d!1645092 (not c!873600)) b!5084731))

(declare-fun m!6140574 () Bool)

(assert (=> b!5084731 m!6140574))

(assert (=> d!1644798 d!1645092))

(declare-fun d!1645094 () Bool)

(declare-fun res!2164691 () Bool)

(declare-fun e!3171416 () Bool)

(assert (=> d!1645094 (=> (not res!2164691) (not e!3171416))))

(assert (=> d!1645094 (= res!2164691 (= (csize!31402 (left!42849 xs!286)) (+ (size!39121 (left!42849 (left!42849 xs!286))) (size!39121 (right!43179 (left!42849 xs!286))))))))

(assert (=> d!1645094 (= (inv!77680 (left!42849 xs!286)) e!3171416)))

(declare-fun b!5084732 () Bool)

(declare-fun res!2164692 () Bool)

(assert (=> b!5084732 (=> (not res!2164692) (not e!3171416))))

(assert (=> b!5084732 (= res!2164692 (and (not (= (left!42849 (left!42849 xs!286)) Empty!15586)) (not (= (right!43179 (left!42849 xs!286)) Empty!15586))))))

(declare-fun b!5084733 () Bool)

(declare-fun res!2164693 () Bool)

(assert (=> b!5084733 (=> (not res!2164693) (not e!3171416))))

(assert (=> b!5084733 (= res!2164693 (= (cheight!15797 (left!42849 xs!286)) (+ (max!0 (height!2163 (left!42849 (left!42849 xs!286))) (height!2163 (right!43179 (left!42849 xs!286)))) 1)))))

(declare-fun b!5084734 () Bool)

(assert (=> b!5084734 (= e!3171416 (<= 0 (cheight!15797 (left!42849 xs!286))))))

(assert (= (and d!1645094 res!2164691) b!5084732))

(assert (= (and b!5084732 res!2164692) b!5084733))

(assert (= (and b!5084733 res!2164693) b!5084734))

(declare-fun m!6140576 () Bool)

(assert (=> d!1645094 m!6140576))

(declare-fun m!6140578 () Bool)

(assert (=> d!1645094 m!6140578))

(declare-fun m!6140580 () Bool)

(assert (=> b!5084733 m!6140580))

(declare-fun m!6140582 () Bool)

(assert (=> b!5084733 m!6140582))

(assert (=> b!5084733 m!6140580))

(assert (=> b!5084733 m!6140582))

(declare-fun m!6140584 () Bool)

(assert (=> b!5084733 m!6140584))

(assert (=> b!5084217 d!1645094))

(assert (=> b!5084024 d!1645000))

(assert (=> b!5084024 d!1645002))

(assert (=> b!5083968 d!1644786))

(assert (=> b!5083968 d!1644788))

(declare-fun d!1645096 () Bool)

(declare-fun c!873603 () Bool)

(assert (=> d!1645096 (= c!873603 ((_ is Nil!58456) lt!2091399))))

(declare-fun e!3171419 () (InoxSet T!105272))

(assert (=> d!1645096 (= (content!10430 lt!2091399) e!3171419)))

(declare-fun b!5084739 () Bool)

(assert (=> b!5084739 (= e!3171419 ((as const (Array T!105272 Bool)) false))))

(declare-fun b!5084740 () Bool)

(assert (=> b!5084740 (= e!3171419 ((_ map or) (store ((as const (Array T!105272 Bool)) false) (h!64904 lt!2091399) true) (content!10430 (t!371417 lt!2091399))))))

(assert (= (and d!1645096 c!873603) b!5084739))

(assert (= (and d!1645096 (not c!873603)) b!5084740))

(declare-fun m!6140586 () Bool)

(assert (=> b!5084740 m!6140586))

(declare-fun m!6140588 () Bool)

(assert (=> b!5084740 m!6140588))

(assert (=> d!1644792 d!1645096))

(declare-fun d!1645098 () Bool)

(declare-fun c!873604 () Bool)

(assert (=> d!1645098 (= c!873604 ((_ is Nil!58456) (list!19033 xs!286)))))

(declare-fun e!3171420 () (InoxSet T!105272))

(assert (=> d!1645098 (= (content!10430 (list!19033 xs!286)) e!3171420)))

(declare-fun b!5084741 () Bool)

(assert (=> b!5084741 (= e!3171420 ((as const (Array T!105272 Bool)) false))))

(declare-fun b!5084742 () Bool)

(assert (=> b!5084742 (= e!3171420 ((_ map or) (store ((as const (Array T!105272 Bool)) false) (h!64904 (list!19033 xs!286)) true) (content!10430 (t!371417 (list!19033 xs!286)))))))

(assert (= (and d!1645098 c!873604) b!5084741))

(assert (= (and d!1645098 (not c!873604)) b!5084742))

(declare-fun m!6140590 () Bool)

(assert (=> b!5084742 m!6140590))

(declare-fun m!6140592 () Bool)

(assert (=> b!5084742 m!6140592))

(assert (=> d!1644792 d!1645098))

(declare-fun d!1645100 () Bool)

(declare-fun c!873605 () Bool)

(assert (=> d!1645100 (= c!873605 ((_ is Nil!58456) (list!19033 ys!41)))))

(declare-fun e!3171421 () (InoxSet T!105272))

(assert (=> d!1645100 (= (content!10430 (list!19033 ys!41)) e!3171421)))

(declare-fun b!5084743 () Bool)

(assert (=> b!5084743 (= e!3171421 ((as const (Array T!105272 Bool)) false))))

(declare-fun b!5084744 () Bool)

(assert (=> b!5084744 (= e!3171421 ((_ map or) (store ((as const (Array T!105272 Bool)) false) (h!64904 (list!19033 ys!41)) true) (content!10430 (t!371417 (list!19033 ys!41)))))))

(assert (= (and d!1645100 c!873605) b!5084743))

(assert (= (and d!1645100 (not c!873605)) b!5084744))

(declare-fun m!6140594 () Bool)

(assert (=> b!5084744 m!6140594))

(declare-fun m!6140596 () Bool)

(assert (=> b!5084744 m!6140596))

(assert (=> d!1644792 d!1645100))

(declare-fun d!1645102 () Bool)

(declare-fun lt!2091452 () Bool)

(assert (=> d!1645102 (= lt!2091452 (isEmpty!31677 (list!19033 (left!42849 lt!2091392))))))

(assert (=> d!1645102 (= lt!2091452 (= (size!39121 (left!42849 lt!2091392)) 0))))

(assert (=> d!1645102 (= (isEmpty!31675 (left!42849 lt!2091392)) lt!2091452)))

(declare-fun bs!1190846 () Bool)

(assert (= bs!1190846 d!1645102))

(assert (=> bs!1190846 m!6139688))

(assert (=> bs!1190846 m!6139688))

(declare-fun m!6140598 () Bool)

(assert (=> bs!1190846 m!6140598))

(declare-fun m!6140600 () Bool)

(assert (=> bs!1190846 m!6140600))

(assert (=> b!5084026 d!1645102))

(declare-fun d!1645104 () Bool)

(assert (=> d!1645104 (= (inv!77677 (xs!18964 (right!43179 err!4617))) (<= (size!39119 (innerList!15674 (xs!18964 (right!43179 err!4617)))) 2147483647))))

(declare-fun bs!1190847 () Bool)

(assert (= bs!1190847 d!1645104))

(declare-fun m!6140602 () Bool)

(assert (=> bs!1190847 m!6140602))

(assert (=> b!5084285 d!1645104))

(declare-fun d!1645106 () Bool)

(declare-fun lt!2091453 () Bool)

(assert (=> d!1645106 (= lt!2091453 (isEmpty!31677 (list!19033 (right!43179 ys!41))))))

(assert (=> d!1645106 (= lt!2091453 (= (size!39121 (right!43179 ys!41)) 0))))

(assert (=> d!1645106 (= (isEmpty!31675 (right!43179 ys!41)) lt!2091453)))

(declare-fun bs!1190848 () Bool)

(assert (= bs!1190848 d!1645106))

(assert (=> bs!1190848 m!6139658))

(assert (=> bs!1190848 m!6139658))

(declare-fun m!6140604 () Bool)

(assert (=> bs!1190848 m!6140604))

(declare-fun m!6140606 () Bool)

(assert (=> bs!1190848 m!6140606))

(assert (=> b!5084103 d!1645106))

(declare-fun d!1645108 () Bool)

(assert (=> d!1645108 (= (inv!77677 (xs!18964 (left!42849 xs!286))) (<= (size!39119 (innerList!15674 (xs!18964 (left!42849 xs!286)))) 2147483647))))

(declare-fun bs!1190849 () Bool)

(assert (= bs!1190849 d!1645108))

(declare-fun m!6140608 () Bool)

(assert (=> bs!1190849 m!6140608))

(assert (=> b!5084276 d!1645108))

(declare-fun d!1645110 () Bool)

(declare-fun res!2164694 () Bool)

(declare-fun e!3171422 () Bool)

(assert (=> d!1645110 (=> (not res!2164694) (not e!3171422))))

(assert (=> d!1645110 (= res!2164694 (= (csize!31402 (left!42849 err!4617)) (+ (size!39121 (left!42849 (left!42849 err!4617))) (size!39121 (right!43179 (left!42849 err!4617))))))))

(assert (=> d!1645110 (= (inv!77680 (left!42849 err!4617)) e!3171422)))

(declare-fun b!5084745 () Bool)

(declare-fun res!2164695 () Bool)

(assert (=> b!5084745 (=> (not res!2164695) (not e!3171422))))

(assert (=> b!5084745 (= res!2164695 (and (not (= (left!42849 (left!42849 err!4617)) Empty!15586)) (not (= (right!43179 (left!42849 err!4617)) Empty!15586))))))

(declare-fun b!5084746 () Bool)

(declare-fun res!2164696 () Bool)

(assert (=> b!5084746 (=> (not res!2164696) (not e!3171422))))

(assert (=> b!5084746 (= res!2164696 (= (cheight!15797 (left!42849 err!4617)) (+ (max!0 (height!2163 (left!42849 (left!42849 err!4617))) (height!2163 (right!43179 (left!42849 err!4617)))) 1)))))

(declare-fun b!5084747 () Bool)

(assert (=> b!5084747 (= e!3171422 (<= 0 (cheight!15797 (left!42849 err!4617))))))

(assert (= (and d!1645110 res!2164694) b!5084745))

(assert (= (and b!5084745 res!2164695) b!5084746))

(assert (= (and b!5084746 res!2164696) b!5084747))

(declare-fun m!6140610 () Bool)

(assert (=> d!1645110 m!6140610))

(declare-fun m!6140612 () Bool)

(assert (=> d!1645110 m!6140612))

(declare-fun m!6140614 () Bool)

(assert (=> b!5084746 m!6140614))

(declare-fun m!6140616 () Bool)

(assert (=> b!5084746 m!6140616))

(assert (=> b!5084746 m!6140614))

(assert (=> b!5084746 m!6140616))

(declare-fun m!6140618 () Bool)

(assert (=> b!5084746 m!6140618))

(assert (=> b!5084223 d!1645110))

(assert (=> b!5084037 d!1645040))

(assert (=> b!5084037 d!1645042))

(declare-fun d!1645112 () Bool)

(assert (=> d!1645112 (= (inv!77677 (xs!18964 (left!42849 err!4617))) (<= (size!39119 (innerList!15674 (xs!18964 (left!42849 err!4617)))) 2147483647))))

(declare-fun bs!1190850 () Bool)

(assert (= bs!1190850 d!1645112))

(declare-fun m!6140620 () Bool)

(assert (=> bs!1190850 m!6140620))

(assert (=> b!5084282 d!1645112))

(assert (=> b!5084207 d!1644796))

(assert (=> b!5084207 d!1644980))

(assert (=> b!5084207 d!1645034))

(declare-fun bm!354405 () Bool)

(declare-fun call!354413 () List!58580)

(assert (=> bm!354405 (= call!354413 (++!12815 (list!19033 (left!42849 (right!43179 xs!286))) (++!12815 (list!19033 (right!43179 (right!43179 xs!286))) (list!19033 ys!41))))))

(declare-fun b!5084748 () Bool)

(declare-fun e!3171423 () Bool)

(declare-fun call!354410 () List!58580)

(declare-fun call!354412 () List!58580)

(assert (=> b!5084748 (= e!3171423 (= call!354410 call!354412))))

(declare-fun lt!2091454 () Bool)

(assert (=> b!5084748 (= lt!2091454 (appendAssoc!314 (t!371417 (list!19033 (left!42849 xs!286))) (list!19033 (left!42849 (right!43179 xs!286))) (++!12815 (list!19033 (right!43179 (right!43179 xs!286))) (list!19033 ys!41))))))

(declare-fun call!354411 () List!58580)

(declare-fun bm!354406 () Bool)

(assert (=> bm!354406 (= call!354410 (++!12815 call!354411 (++!12815 (list!19033 (right!43179 (right!43179 xs!286))) (list!19033 ys!41))))))

(declare-fun b!5084749 () Bool)

(assert (=> b!5084749 (= e!3171423 (= call!354410 call!354412))))

(declare-fun d!1645114 () Bool)

(assert (=> d!1645114 e!3171423))

(declare-fun c!873606 () Bool)

(assert (=> d!1645114 (= c!873606 ((_ is Nil!58456) (list!19033 (left!42849 xs!286))))))

(assert (=> d!1645114 (= (appendAssoc!314 (list!19033 (left!42849 xs!286)) (list!19033 (left!42849 (right!43179 xs!286))) (++!12815 (list!19033 (right!43179 (right!43179 xs!286))) (list!19033 ys!41))) true)))

(declare-fun bm!354407 () Bool)

(assert (=> bm!354407 (= call!354411 (++!12815 (list!19033 (left!42849 xs!286)) (list!19033 (left!42849 (right!43179 xs!286)))))))

(declare-fun bm!354408 () Bool)

(assert (=> bm!354408 (= call!354412 (++!12815 (list!19033 (left!42849 xs!286)) call!354413))))

(assert (= (and d!1645114 c!873606) b!5084749))

(assert (= (and d!1645114 (not c!873606)) b!5084748))

(assert (= (or b!5084749 b!5084748) bm!354407))

(assert (= (or b!5084749 b!5084748) bm!354405))

(assert (= (or b!5084749 b!5084748) bm!354408))

(assert (= (or b!5084749 b!5084748) bm!354406))

(assert (=> bm!354408 m!6139638))

(declare-fun m!6140622 () Bool)

(assert (=> bm!354408 m!6140622))

(assert (=> b!5084748 m!6139640))

(assert (=> b!5084748 m!6139642))

(declare-fun m!6140624 () Bool)

(assert (=> b!5084748 m!6140624))

(assert (=> bm!354406 m!6139642))

(declare-fun m!6140626 () Bool)

(assert (=> bm!354406 m!6140626))

(assert (=> bm!354405 m!6139640))

(assert (=> bm!354405 m!6139642))

(declare-fun m!6140628 () Bool)

(assert (=> bm!354405 m!6140628))

(assert (=> bm!354407 m!6139638))

(assert (=> bm!354407 m!6139640))

(declare-fun m!6140630 () Bool)

(assert (=> bm!354407 m!6140630))

(assert (=> b!5084207 d!1645114))

(assert (=> b!5084207 d!1645032))

(declare-fun b!5084751 () Bool)

(declare-fun e!3171424 () List!58580)

(assert (=> b!5084751 (= e!3171424 (Cons!58456 (h!64904 (list!19033 (right!43179 (right!43179 xs!286)))) (++!12815 (t!371417 (list!19033 (right!43179 (right!43179 xs!286)))) (list!19033 ys!41))))))

(declare-fun d!1645116 () Bool)

(declare-fun e!3171425 () Bool)

(assert (=> d!1645116 e!3171425))

(declare-fun res!2164698 () Bool)

(assert (=> d!1645116 (=> (not res!2164698) (not e!3171425))))

(declare-fun lt!2091455 () List!58580)

(assert (=> d!1645116 (= res!2164698 (= (content!10430 lt!2091455) ((_ map or) (content!10430 (list!19033 (right!43179 (right!43179 xs!286)))) (content!10430 (list!19033 ys!41)))))))

(assert (=> d!1645116 (= lt!2091455 e!3171424)))

(declare-fun c!873607 () Bool)

(assert (=> d!1645116 (= c!873607 ((_ is Nil!58456) (list!19033 (right!43179 (right!43179 xs!286)))))))

(assert (=> d!1645116 (= (++!12815 (list!19033 (right!43179 (right!43179 xs!286))) (list!19033 ys!41)) lt!2091455)))

(declare-fun b!5084750 () Bool)

(assert (=> b!5084750 (= e!3171424 (list!19033 ys!41))))

(declare-fun b!5084753 () Bool)

(assert (=> b!5084753 (= e!3171425 (or (not (= (list!19033 ys!41) Nil!58456)) (= lt!2091455 (list!19033 (right!43179 (right!43179 xs!286))))))))

(declare-fun b!5084752 () Bool)

(declare-fun res!2164697 () Bool)

(assert (=> b!5084752 (=> (not res!2164697) (not e!3171425))))

(assert (=> b!5084752 (= res!2164697 (= (size!39119 lt!2091455) (+ (size!39119 (list!19033 (right!43179 (right!43179 xs!286)))) (size!39119 (list!19033 ys!41)))))))

(assert (= (and d!1645116 c!873607) b!5084750))

(assert (= (and d!1645116 (not c!873607)) b!5084751))

(assert (= (and d!1645116 res!2164698) b!5084752))

(assert (= (and b!5084752 res!2164697) b!5084753))

(assert (=> b!5084751 m!6139376))

(declare-fun m!6140632 () Bool)

(assert (=> b!5084751 m!6140632))

(declare-fun m!6140634 () Bool)

(assert (=> d!1645116 m!6140634))

(assert (=> d!1645116 m!6139636))

(declare-fun m!6140636 () Bool)

(assert (=> d!1645116 m!6140636))

(assert (=> d!1645116 m!6139376))

(assert (=> d!1645116 m!6139702))

(declare-fun m!6140638 () Bool)

(assert (=> b!5084752 m!6140638))

(assert (=> b!5084752 m!6139636))

(declare-fun m!6140640 () Bool)

(assert (=> b!5084752 m!6140640))

(assert (=> b!5084752 m!6139376))

(assert (=> b!5084752 m!6139708))

(assert (=> b!5084207 d!1645116))

(declare-fun d!1645118 () Bool)

(assert (=> d!1645118 (= (inv!77677 (xs!18964 (right!43179 ys!41))) (<= (size!39119 (innerList!15674 (xs!18964 (right!43179 ys!41)))) 2147483647))))

(declare-fun bs!1190851 () Bool)

(assert (= bs!1190851 d!1645118))

(declare-fun m!6140642 () Bool)

(assert (=> bs!1190851 m!6140642))

(assert (=> b!5084273 d!1645118))

(declare-fun d!1645120 () Bool)

(declare-fun res!2164699 () Bool)

(declare-fun e!3171426 () Bool)

(assert (=> d!1645120 (=> (not res!2164699) (not e!3171426))))

(assert (=> d!1645120 (= res!2164699 (<= (size!39119 (list!19035 (xs!18964 (left!42849 err!4617)))) 512))))

(assert (=> d!1645120 (= (inv!77681 (left!42849 err!4617)) e!3171426)))

(declare-fun b!5084754 () Bool)

(declare-fun res!2164700 () Bool)

(assert (=> b!5084754 (=> (not res!2164700) (not e!3171426))))

(assert (=> b!5084754 (= res!2164700 (= (csize!31403 (left!42849 err!4617)) (size!39119 (list!19035 (xs!18964 (left!42849 err!4617))))))))

(declare-fun b!5084755 () Bool)

(assert (=> b!5084755 (= e!3171426 (and (> (csize!31403 (left!42849 err!4617)) 0) (<= (csize!31403 (left!42849 err!4617)) 512)))))

(assert (= (and d!1645120 res!2164699) b!5084754))

(assert (= (and b!5084754 res!2164700) b!5084755))

(declare-fun m!6140644 () Bool)

(assert (=> d!1645120 m!6140644))

(assert (=> d!1645120 m!6140644))

(declare-fun m!6140646 () Bool)

(assert (=> d!1645120 m!6140646))

(assert (=> b!5084754 m!6140644))

(assert (=> b!5084754 m!6140644))

(assert (=> b!5084754 m!6140646))

(assert (=> b!5084225 d!1645120))

(declare-fun b!5084756 () Bool)

(declare-fun res!2164706 () Bool)

(declare-fun e!3171427 () Bool)

(assert (=> b!5084756 (=> (not res!2164706) (not e!3171427))))

(assert (=> b!5084756 (= res!2164706 (isBalanced!4448 (right!43179 (left!42849 lt!2091392))))))

(declare-fun b!5084757 () Bool)

(declare-fun res!2164704 () Bool)

(assert (=> b!5084757 (=> (not res!2164704) (not e!3171427))))

(assert (=> b!5084757 (= res!2164704 (<= (- (height!2163 (left!42849 (left!42849 lt!2091392))) (height!2163 (right!43179 (left!42849 lt!2091392)))) 1))))

(declare-fun b!5084758 () Bool)

(declare-fun e!3171428 () Bool)

(assert (=> b!5084758 (= e!3171428 e!3171427)))

(declare-fun res!2164702 () Bool)

(assert (=> b!5084758 (=> (not res!2164702) (not e!3171427))))

(assert (=> b!5084758 (= res!2164702 (<= (- 1) (- (height!2163 (left!42849 (left!42849 lt!2091392))) (height!2163 (right!43179 (left!42849 lt!2091392))))))))

(declare-fun b!5084759 () Bool)

(declare-fun res!2164705 () Bool)

(assert (=> b!5084759 (=> (not res!2164705) (not e!3171427))))

(assert (=> b!5084759 (= res!2164705 (not (isEmpty!31675 (left!42849 (left!42849 lt!2091392)))))))

(declare-fun b!5084760 () Bool)

(declare-fun res!2164701 () Bool)

(assert (=> b!5084760 (=> (not res!2164701) (not e!3171427))))

(assert (=> b!5084760 (= res!2164701 (isBalanced!4448 (left!42849 (left!42849 lt!2091392))))))

(declare-fun b!5084761 () Bool)

(assert (=> b!5084761 (= e!3171427 (not (isEmpty!31675 (right!43179 (left!42849 lt!2091392)))))))

(declare-fun d!1645122 () Bool)

(declare-fun res!2164703 () Bool)

(assert (=> d!1645122 (=> res!2164703 e!3171428)))

(assert (=> d!1645122 (= res!2164703 (not ((_ is Node!15586) (left!42849 lt!2091392))))))

(assert (=> d!1645122 (= (isBalanced!4448 (left!42849 lt!2091392)) e!3171428)))

(assert (= (and d!1645122 (not res!2164703)) b!5084758))

(assert (= (and b!5084758 res!2164702) b!5084757))

(assert (= (and b!5084757 res!2164704) b!5084760))

(assert (= (and b!5084760 res!2164701) b!5084756))

(assert (= (and b!5084756 res!2164706) b!5084759))

(assert (= (and b!5084759 res!2164705) b!5084761))

(declare-fun m!6140648 () Bool)

(assert (=> b!5084760 m!6140648))

(declare-fun m!6140650 () Bool)

(assert (=> b!5084761 m!6140650))

(declare-fun m!6140652 () Bool)

(assert (=> b!5084759 m!6140652))

(declare-fun m!6140654 () Bool)

(assert (=> b!5084758 m!6140654))

(declare-fun m!6140656 () Bool)

(assert (=> b!5084758 m!6140656))

(assert (=> b!5084757 m!6140654))

(assert (=> b!5084757 m!6140656))

(declare-fun m!6140658 () Bool)

(assert (=> b!5084756 m!6140658))

(assert (=> b!5084027 d!1645122))

(declare-fun d!1645124 () Bool)

(declare-fun res!2164707 () Bool)

(declare-fun e!3171429 () Bool)

(assert (=> d!1645124 (=> (not res!2164707) (not e!3171429))))

(assert (=> d!1645124 (= res!2164707 (= (csize!31402 ys!41) (+ (size!39121 (left!42849 ys!41)) (size!39121 (right!43179 ys!41)))))))

(assert (=> d!1645124 (= (inv!77680 ys!41) e!3171429)))

(declare-fun b!5084762 () Bool)

(declare-fun res!2164708 () Bool)

(assert (=> b!5084762 (=> (not res!2164708) (not e!3171429))))

(assert (=> b!5084762 (= res!2164708 (and (not (= (left!42849 ys!41) Empty!15586)) (not (= (right!43179 ys!41) Empty!15586))))))

(declare-fun b!5084763 () Bool)

(declare-fun res!2164709 () Bool)

(assert (=> b!5084763 (=> (not res!2164709) (not e!3171429))))

(assert (=> b!5084763 (= res!2164709 (= (cheight!15797 ys!41) (+ (max!0 (height!2163 (left!42849 ys!41)) (height!2163 (right!43179 ys!41))) 1)))))

(declare-fun b!5084764 () Bool)

(assert (=> b!5084764 (= e!3171429 (<= 0 (cheight!15797 ys!41)))))

(assert (= (and d!1645124 res!2164707) b!5084762))

(assert (= (and b!5084762 res!2164708) b!5084763))

(assert (= (and b!5084763 res!2164709) b!5084764))

(assert (=> d!1645124 m!6140560))

(assert (=> d!1645124 m!6140606))

(assert (=> b!5084763 m!6139400))

(assert (=> b!5084763 m!6139398))

(assert (=> b!5084763 m!6139400))

(assert (=> b!5084763 m!6139398))

(declare-fun m!6140660 () Bool)

(assert (=> b!5084763 m!6140660))

(assert (=> b!5084089 d!1645124))

(declare-fun b!5084765 () Bool)

(declare-fun res!2164715 () Bool)

(declare-fun e!3171430 () Bool)

(assert (=> b!5084765 (=> (not res!2164715) (not e!3171430))))

(assert (=> b!5084765 (= res!2164715 (isBalanced!4448 (right!43179 (right!43179 xs!286))))))

(declare-fun b!5084766 () Bool)

(declare-fun res!2164713 () Bool)

(assert (=> b!5084766 (=> (not res!2164713) (not e!3171430))))

(assert (=> b!5084766 (= res!2164713 (<= (- (height!2163 (left!42849 (right!43179 xs!286))) (height!2163 (right!43179 (right!43179 xs!286)))) 1))))

(declare-fun b!5084767 () Bool)

(declare-fun e!3171431 () Bool)

(assert (=> b!5084767 (= e!3171431 e!3171430)))

(declare-fun res!2164711 () Bool)

(assert (=> b!5084767 (=> (not res!2164711) (not e!3171430))))

(assert (=> b!5084767 (= res!2164711 (<= (- 1) (- (height!2163 (left!42849 (right!43179 xs!286))) (height!2163 (right!43179 (right!43179 xs!286))))))))

(declare-fun b!5084768 () Bool)

(declare-fun res!2164714 () Bool)

(assert (=> b!5084768 (=> (not res!2164714) (not e!3171430))))

(assert (=> b!5084768 (= res!2164714 (not (isEmpty!31675 (left!42849 (right!43179 xs!286)))))))

(declare-fun b!5084769 () Bool)

(declare-fun res!2164710 () Bool)

(assert (=> b!5084769 (=> (not res!2164710) (not e!3171430))))

(assert (=> b!5084769 (= res!2164710 (isBalanced!4448 (left!42849 (right!43179 xs!286))))))

(declare-fun b!5084770 () Bool)

(assert (=> b!5084770 (= e!3171430 (not (isEmpty!31675 (right!43179 (right!43179 xs!286)))))))

(declare-fun d!1645126 () Bool)

(declare-fun res!2164712 () Bool)

(assert (=> d!1645126 (=> res!2164712 e!3171431)))

(assert (=> d!1645126 (= res!2164712 (not ((_ is Node!15586) (right!43179 xs!286))))))

(assert (=> d!1645126 (= (isBalanced!4448 (right!43179 xs!286)) e!3171431)))

(assert (= (and d!1645126 (not res!2164712)) b!5084767))

(assert (= (and b!5084767 res!2164711) b!5084766))

(assert (= (and b!5084766 res!2164713) b!5084769))

(assert (= (and b!5084769 res!2164710) b!5084765))

(assert (= (and b!5084765 res!2164715) b!5084768))

(assert (= (and b!5084768 res!2164714) b!5084770))

(declare-fun m!6140662 () Bool)

(assert (=> b!5084769 m!6140662))

(declare-fun m!6140664 () Bool)

(assert (=> b!5084770 m!6140664))

(declare-fun m!6140666 () Bool)

(assert (=> b!5084768 m!6140666))

(assert (=> b!5084767 m!6140568))

(assert (=> b!5084767 m!6140570))

(assert (=> b!5084766 m!6140568))

(assert (=> b!5084766 m!6140570))

(declare-fun m!6140668 () Bool)

(assert (=> b!5084765 m!6140668))

(assert (=> b!5084035 d!1645126))

(declare-fun d!1645128 () Bool)

(assert (=> d!1645128 (= (list!19035 (xs!18964 lt!2091392)) (innerList!15674 (xs!18964 lt!2091392)))))

(assert (=> b!5084239 d!1645128))

(declare-fun bm!354409 () Bool)

(declare-fun call!354417 () List!58580)

(assert (=> bm!354409 (= call!354417 (++!12815 (list!19033 (left!42849 (left!42849 ys!41))) (list!19033 (right!43179 (left!42849 ys!41)))))))

(declare-fun b!5084771 () Bool)

(declare-fun e!3171432 () Bool)

(declare-fun call!354414 () List!58580)

(declare-fun call!354416 () List!58580)

(assert (=> b!5084771 (= e!3171432 (= call!354414 call!354416))))

(declare-fun lt!2091456 () Bool)

(assert (=> b!5084771 (= lt!2091456 (appendAssoc!314 (t!371417 (list!19033 xs!286)) (list!19033 (left!42849 (left!42849 ys!41))) (list!19033 (right!43179 (left!42849 ys!41)))))))

(declare-fun bm!354410 () Bool)

(declare-fun call!354415 () List!58580)

(assert (=> bm!354410 (= call!354414 (++!12815 call!354415 (list!19033 (right!43179 (left!42849 ys!41)))))))

(declare-fun b!5084772 () Bool)

(assert (=> b!5084772 (= e!3171432 (= call!354414 call!354416))))

(declare-fun d!1645130 () Bool)

(assert (=> d!1645130 e!3171432))

(declare-fun c!873608 () Bool)

(assert (=> d!1645130 (= c!873608 ((_ is Nil!58456) (list!19033 xs!286)))))

(assert (=> d!1645130 (= (appendAssoc!314 (list!19033 xs!286) (list!19033 (left!42849 (left!42849 ys!41))) (list!19033 (right!43179 (left!42849 ys!41)))) true)))

(declare-fun bm!354411 () Bool)

(assert (=> bm!354411 (= call!354415 (++!12815 (list!19033 xs!286) (list!19033 (left!42849 (left!42849 ys!41)))))))

(declare-fun bm!354412 () Bool)

(assert (=> bm!354412 (= call!354416 (++!12815 (list!19033 xs!286) call!354417))))

(assert (= (and d!1645130 c!873608) b!5084772))

(assert (= (and d!1645130 (not c!873608)) b!5084771))

(assert (= (or b!5084772 b!5084771) bm!354411))

(assert (= (or b!5084772 b!5084771) bm!354409))

(assert (= (or b!5084772 b!5084771) bm!354412))

(assert (= (or b!5084772 b!5084771) bm!354410))

(assert (=> bm!354412 m!6139374))

(declare-fun m!6140670 () Bool)

(assert (=> bm!354412 m!6140670))

(assert (=> b!5084771 m!6139654))

(assert (=> b!5084771 m!6139652))

(declare-fun m!6140672 () Bool)

(assert (=> b!5084771 m!6140672))

(assert (=> bm!354410 m!6139652))

(declare-fun m!6140674 () Bool)

(assert (=> bm!354410 m!6140674))

(assert (=> bm!354409 m!6139654))

(assert (=> bm!354409 m!6139652))

(declare-fun m!6140676 () Bool)

(assert (=> bm!354409 m!6140676))

(assert (=> bm!354411 m!6139374))

(assert (=> bm!354411 m!6139654))

(assert (=> bm!354411 m!6139656))

(assert (=> b!5084211 d!1645130))

(assert (=> b!5084211 d!1644794))

(assert (=> b!5084211 d!1645074))

(assert (=> b!5084211 d!1645068))

(assert (=> b!5083977 d!1644782))

(assert (=> b!5083977 d!1644784))

(declare-fun d!1645132 () Bool)

(declare-fun c!873609 () Bool)

(assert (=> d!1645132 (= c!873609 ((_ is Node!15586) (left!42849 (right!43179 xs!286))))))

(declare-fun e!3171433 () Bool)

(assert (=> d!1645132 (= (inv!77676 (left!42849 (right!43179 xs!286))) e!3171433)))

(declare-fun b!5084773 () Bool)

(assert (=> b!5084773 (= e!3171433 (inv!77680 (left!42849 (right!43179 xs!286))))))

(declare-fun b!5084774 () Bool)

(declare-fun e!3171434 () Bool)

(assert (=> b!5084774 (= e!3171433 e!3171434)))

(declare-fun res!2164716 () Bool)

(assert (=> b!5084774 (= res!2164716 (not ((_ is Leaf!25884) (left!42849 (right!43179 xs!286)))))))

(assert (=> b!5084774 (=> res!2164716 e!3171434)))

(declare-fun b!5084775 () Bool)

(assert (=> b!5084775 (= e!3171434 (inv!77681 (left!42849 (right!43179 xs!286))))))

(assert (= (and d!1645132 c!873609) b!5084773))

(assert (= (and d!1645132 (not c!873609)) b!5084774))

(assert (= (and b!5084774 (not res!2164716)) b!5084775))

(declare-fun m!6140678 () Bool)

(assert (=> b!5084773 m!6140678))

(declare-fun m!6140680 () Bool)

(assert (=> b!5084775 m!6140680))

(assert (=> b!5084278 d!1645132))

(declare-fun d!1645134 () Bool)

(declare-fun c!873610 () Bool)

(assert (=> d!1645134 (= c!873610 ((_ is Node!15586) (right!43179 (right!43179 xs!286))))))

(declare-fun e!3171435 () Bool)

(assert (=> d!1645134 (= (inv!77676 (right!43179 (right!43179 xs!286))) e!3171435)))

(declare-fun b!5084776 () Bool)

(assert (=> b!5084776 (= e!3171435 (inv!77680 (right!43179 (right!43179 xs!286))))))

(declare-fun b!5084777 () Bool)

(declare-fun e!3171436 () Bool)

(assert (=> b!5084777 (= e!3171435 e!3171436)))

(declare-fun res!2164717 () Bool)

(assert (=> b!5084777 (= res!2164717 (not ((_ is Leaf!25884) (right!43179 (right!43179 xs!286)))))))

(assert (=> b!5084777 (=> res!2164717 e!3171436)))

(declare-fun b!5084778 () Bool)

(assert (=> b!5084778 (= e!3171436 (inv!77681 (right!43179 (right!43179 xs!286))))))

(assert (= (and d!1645134 c!873610) b!5084776))

(assert (= (and d!1645134 (not c!873610)) b!5084777))

(assert (= (and b!5084777 (not res!2164717)) b!5084778))

(declare-fun m!6140682 () Bool)

(assert (=> b!5084776 m!6140682))

(declare-fun m!6140684 () Bool)

(assert (=> b!5084778 m!6140684))

(assert (=> b!5084278 d!1645134))

(declare-fun b!5084780 () Bool)

(declare-fun e!3171437 () List!58580)

(assert (=> b!5084780 (= e!3171437 (Cons!58456 (h!64904 (t!371417 (list!19033 xs!286))) (++!12815 (t!371417 (t!371417 (list!19033 xs!286))) (list!19033 ys!41))))))

(declare-fun d!1645136 () Bool)

(declare-fun e!3171438 () Bool)

(assert (=> d!1645136 e!3171438))

(declare-fun res!2164719 () Bool)

(assert (=> d!1645136 (=> (not res!2164719) (not e!3171438))))

(declare-fun lt!2091457 () List!58580)

(assert (=> d!1645136 (= res!2164719 (= (content!10430 lt!2091457) ((_ map or) (content!10430 (t!371417 (list!19033 xs!286))) (content!10430 (list!19033 ys!41)))))))

(assert (=> d!1645136 (= lt!2091457 e!3171437)))

(declare-fun c!873611 () Bool)

(assert (=> d!1645136 (= c!873611 ((_ is Nil!58456) (t!371417 (list!19033 xs!286))))))

(assert (=> d!1645136 (= (++!12815 (t!371417 (list!19033 xs!286)) (list!19033 ys!41)) lt!2091457)))

(declare-fun b!5084779 () Bool)

(assert (=> b!5084779 (= e!3171437 (list!19033 ys!41))))

(declare-fun b!5084782 () Bool)

(assert (=> b!5084782 (= e!3171438 (or (not (= (list!19033 ys!41) Nil!58456)) (= lt!2091457 (t!371417 (list!19033 xs!286)))))))

(declare-fun b!5084781 () Bool)

(declare-fun res!2164718 () Bool)

(assert (=> b!5084781 (=> (not res!2164718) (not e!3171438))))

(assert (=> b!5084781 (= res!2164718 (= (size!39119 lt!2091457) (+ (size!39119 (t!371417 (list!19033 xs!286))) (size!39119 (list!19033 ys!41)))))))

(assert (= (and d!1645136 c!873611) b!5084779))

(assert (= (and d!1645136 (not c!873611)) b!5084780))

(assert (= (and d!1645136 res!2164719) b!5084781))

(assert (= (and b!5084781 res!2164718) b!5084782))

(assert (=> b!5084780 m!6139376))

(declare-fun m!6140686 () Bool)

(assert (=> b!5084780 m!6140686))

(declare-fun m!6140688 () Bool)

(assert (=> d!1645136 m!6140688))

(assert (=> d!1645136 m!6140592))

(assert (=> d!1645136 m!6139376))

(assert (=> d!1645136 m!6139702))

(declare-fun m!6140690 () Bool)

(assert (=> b!5084781 m!6140690))

(assert (=> b!5084781 m!6140320))

(assert (=> b!5084781 m!6139376))

(assert (=> b!5084781 m!6139708))

(assert (=> b!5084250 d!1645136))

(declare-fun d!1645138 () Bool)

(declare-fun c!873612 () Bool)

(assert (=> d!1645138 (= c!873612 ((_ is Node!15586) (left!42849 (left!42849 ys!41))))))

(declare-fun e!3171439 () Bool)

(assert (=> d!1645138 (= (inv!77676 (left!42849 (left!42849 ys!41))) e!3171439)))

(declare-fun b!5084783 () Bool)

(assert (=> b!5084783 (= e!3171439 (inv!77680 (left!42849 (left!42849 ys!41))))))

(declare-fun b!5084784 () Bool)

(declare-fun e!3171440 () Bool)

(assert (=> b!5084784 (= e!3171439 e!3171440)))

(declare-fun res!2164720 () Bool)

(assert (=> b!5084784 (= res!2164720 (not ((_ is Leaf!25884) (left!42849 (left!42849 ys!41)))))))

(assert (=> b!5084784 (=> res!2164720 e!3171440)))

(declare-fun b!5084785 () Bool)

(assert (=> b!5084785 (= e!3171440 (inv!77681 (left!42849 (left!42849 ys!41))))))

(assert (= (and d!1645138 c!873612) b!5084783))

(assert (= (and d!1645138 (not c!873612)) b!5084784))

(assert (= (and b!5084784 (not res!2164720)) b!5084785))

(declare-fun m!6140692 () Bool)

(assert (=> b!5084783 m!6140692))

(declare-fun m!6140694 () Bool)

(assert (=> b!5084785 m!6140694))

(assert (=> b!5084269 d!1645138))

(declare-fun d!1645140 () Bool)

(declare-fun c!873613 () Bool)

(assert (=> d!1645140 (= c!873613 ((_ is Node!15586) (right!43179 (left!42849 ys!41))))))

(declare-fun e!3171441 () Bool)

(assert (=> d!1645140 (= (inv!77676 (right!43179 (left!42849 ys!41))) e!3171441)))

(declare-fun b!5084786 () Bool)

(assert (=> b!5084786 (= e!3171441 (inv!77680 (right!43179 (left!42849 ys!41))))))

(declare-fun b!5084787 () Bool)

(declare-fun e!3171442 () Bool)

(assert (=> b!5084787 (= e!3171441 e!3171442)))

(declare-fun res!2164721 () Bool)

(assert (=> b!5084787 (= res!2164721 (not ((_ is Leaf!25884) (right!43179 (left!42849 ys!41)))))))

(assert (=> b!5084787 (=> res!2164721 e!3171442)))

(declare-fun b!5084788 () Bool)

(assert (=> b!5084788 (= e!3171442 (inv!77681 (right!43179 (left!42849 ys!41))))))

(assert (= (and d!1645140 c!873613) b!5084786))

(assert (= (and d!1645140 (not c!873613)) b!5084787))

(assert (= (and b!5084787 (not res!2164721)) b!5084788))

(declare-fun m!6140696 () Bool)

(assert (=> b!5084786 m!6140696))

(declare-fun m!6140698 () Bool)

(assert (=> b!5084788 m!6140698))

(assert (=> b!5084269 d!1645140))

(declare-fun b!5084789 () Bool)

(declare-fun res!2164727 () Bool)

(declare-fun e!3171443 () Bool)

(assert (=> b!5084789 (=> (not res!2164727) (not e!3171443))))

(assert (=> b!5084789 (= res!2164727 (isBalanced!4448 (right!43179 (left!42849 xs!286))))))

(declare-fun b!5084790 () Bool)

(declare-fun res!2164725 () Bool)

(assert (=> b!5084790 (=> (not res!2164725) (not e!3171443))))

(assert (=> b!5084790 (= res!2164725 (<= (- (height!2163 (left!42849 (left!42849 xs!286))) (height!2163 (right!43179 (left!42849 xs!286)))) 1))))

(declare-fun b!5084791 () Bool)

(declare-fun e!3171444 () Bool)

(assert (=> b!5084791 (= e!3171444 e!3171443)))

(declare-fun res!2164723 () Bool)

(assert (=> b!5084791 (=> (not res!2164723) (not e!3171443))))

(assert (=> b!5084791 (= res!2164723 (<= (- 1) (- (height!2163 (left!42849 (left!42849 xs!286))) (height!2163 (right!43179 (left!42849 xs!286))))))))

(declare-fun b!5084792 () Bool)

(declare-fun res!2164726 () Bool)

(assert (=> b!5084792 (=> (not res!2164726) (not e!3171443))))

(assert (=> b!5084792 (= res!2164726 (not (isEmpty!31675 (left!42849 (left!42849 xs!286)))))))

(declare-fun b!5084793 () Bool)

(declare-fun res!2164722 () Bool)

(assert (=> b!5084793 (=> (not res!2164722) (not e!3171443))))

(assert (=> b!5084793 (= res!2164722 (isBalanced!4448 (left!42849 (left!42849 xs!286))))))

(declare-fun b!5084794 () Bool)

(assert (=> b!5084794 (= e!3171443 (not (isEmpty!31675 (right!43179 (left!42849 xs!286)))))))

(declare-fun d!1645142 () Bool)

(declare-fun res!2164724 () Bool)

(assert (=> d!1645142 (=> res!2164724 e!3171444)))

(assert (=> d!1645142 (= res!2164724 (not ((_ is Node!15586) (left!42849 xs!286))))))

(assert (=> d!1645142 (= (isBalanced!4448 (left!42849 xs!286)) e!3171444)))

(assert (= (and d!1645142 (not res!2164724)) b!5084791))

(assert (= (and b!5084791 res!2164723) b!5084790))

(assert (= (and b!5084790 res!2164725) b!5084793))

(assert (= (and b!5084793 res!2164722) b!5084789))

(assert (= (and b!5084789 res!2164727) b!5084792))

(assert (= (and b!5084792 res!2164726) b!5084794))

(declare-fun m!6140700 () Bool)

(assert (=> b!5084793 m!6140700))

(declare-fun m!6140702 () Bool)

(assert (=> b!5084794 m!6140702))

(declare-fun m!6140704 () Bool)

(assert (=> b!5084792 m!6140704))

(assert (=> b!5084791 m!6140580))

(assert (=> b!5084791 m!6140582))

(assert (=> b!5084790 m!6140580))

(assert (=> b!5084790 m!6140582))

(declare-fun m!6140706 () Bool)

(assert (=> b!5084789 m!6140706))

(assert (=> b!5084039 d!1645142))

(declare-fun bm!354413 () Bool)

(declare-fun call!354421 () List!58580)

(assert (=> bm!354413 (= call!354421 (++!12815 (list!19033 (left!42849 ys!41)) (list!19033 (right!43179 ys!41))))))

(declare-fun b!5084795 () Bool)

(declare-fun e!3171445 () Bool)

(declare-fun call!354418 () List!58580)

(declare-fun call!354420 () List!58580)

(assert (=> b!5084795 (= e!3171445 (= call!354418 call!354420))))

(declare-fun lt!2091458 () Bool)

(assert (=> b!5084795 (= lt!2091458 (appendAssoc!314 (t!371417 (list!19033 xs!286)) (list!19033 (left!42849 ys!41)) (list!19033 (right!43179 ys!41))))))

(declare-fun bm!354414 () Bool)

(declare-fun call!354419 () List!58580)

(assert (=> bm!354414 (= call!354418 (++!12815 call!354419 (list!19033 (right!43179 ys!41))))))

(declare-fun b!5084796 () Bool)

(assert (=> b!5084796 (= e!3171445 (= call!354418 call!354420))))

(declare-fun d!1645144 () Bool)

(assert (=> d!1645144 e!3171445))

(declare-fun c!873614 () Bool)

(assert (=> d!1645144 (= c!873614 ((_ is Nil!58456) (list!19033 xs!286)))))

(assert (=> d!1645144 (= (appendAssoc!314 (list!19033 xs!286) (list!19033 (left!42849 ys!41)) (list!19033 (right!43179 ys!41))) true)))

(declare-fun bm!354415 () Bool)

(assert (=> bm!354415 (= call!354419 (++!12815 (list!19033 xs!286) (list!19033 (left!42849 ys!41))))))

(declare-fun bm!354416 () Bool)

(assert (=> bm!354416 (= call!354420 (++!12815 (list!19033 xs!286) call!354421))))

(assert (= (and d!1645144 c!873614) b!5084796))

(assert (= (and d!1645144 (not c!873614)) b!5084795))

(assert (= (or b!5084796 b!5084795) bm!354415))

(assert (= (or b!5084796 b!5084795) bm!354413))

(assert (= (or b!5084796 b!5084795) bm!354416))

(assert (= (or b!5084796 b!5084795) bm!354414))

(assert (=> bm!354416 m!6139374))

(declare-fun m!6140708 () Bool)

(assert (=> bm!354416 m!6140708))

(assert (=> b!5084795 m!6139662))

(assert (=> b!5084795 m!6139658))

(declare-fun m!6140710 () Bool)

(assert (=> b!5084795 m!6140710))

(assert (=> bm!354414 m!6139658))

(declare-fun m!6140712 () Bool)

(assert (=> bm!354414 m!6140712))

(assert (=> bm!354413 m!6139662))

(assert (=> bm!354413 m!6139658))

(assert (=> bm!354413 m!6139714))

(assert (=> bm!354415 m!6139374))

(assert (=> bm!354415 m!6139662))

(declare-fun m!6140714 () Bool)

(assert (=> bm!354415 m!6140714))

(assert (=> b!5084209 d!1645144))

(assert (=> b!5084209 d!1644794))

(declare-fun b!5084798 () Bool)

(declare-fun e!3171446 () List!58580)

(declare-fun e!3171447 () List!58580)

(assert (=> b!5084798 (= e!3171446 e!3171447)))

(declare-fun c!873616 () Bool)

(assert (=> b!5084798 (= c!873616 ((_ is Leaf!25884) (left!42849 ys!41)))))

(declare-fun b!5084797 () Bool)

(assert (=> b!5084797 (= e!3171446 Nil!58456)))

(declare-fun b!5084800 () Bool)

(assert (=> b!5084800 (= e!3171447 (++!12815 (list!19033 (left!42849 (left!42849 ys!41))) (list!19033 (right!43179 (left!42849 ys!41)))))))

(declare-fun d!1645146 () Bool)

(declare-fun c!873615 () Bool)

(assert (=> d!1645146 (= c!873615 ((_ is Empty!15586) (left!42849 ys!41)))))

(assert (=> d!1645146 (= (list!19033 (left!42849 ys!41)) e!3171446)))

(declare-fun b!5084799 () Bool)

(assert (=> b!5084799 (= e!3171447 (list!19035 (xs!18964 (left!42849 ys!41))))))

(assert (= (and d!1645146 c!873615) b!5084797))

(assert (= (and d!1645146 (not c!873615)) b!5084798))

(assert (= (and b!5084798 c!873616) b!5084799))

(assert (= (and b!5084798 (not c!873616)) b!5084800))

(assert (=> b!5084800 m!6139654))

(assert (=> b!5084800 m!6139652))

(assert (=> b!5084800 m!6139654))

(assert (=> b!5084800 m!6139652))

(assert (=> b!5084800 m!6140676))

(assert (=> b!5084799 m!6140330))

(assert (=> b!5084209 d!1645146))

(assert (=> b!5084209 d!1645066))

(declare-fun b!5084802 () Bool)

(declare-fun e!3171448 () List!58580)

(assert (=> b!5084802 (= e!3171448 (Cons!58456 (h!64904 (list!19033 (left!42849 ys!41))) (++!12815 (t!371417 (list!19033 (left!42849 ys!41))) (list!19033 (right!43179 ys!41)))))))

(declare-fun d!1645148 () Bool)

(declare-fun e!3171449 () Bool)

(assert (=> d!1645148 e!3171449))

(declare-fun res!2164729 () Bool)

(assert (=> d!1645148 (=> (not res!2164729) (not e!3171449))))

(declare-fun lt!2091459 () List!58580)

(assert (=> d!1645148 (= res!2164729 (= (content!10430 lt!2091459) ((_ map or) (content!10430 (list!19033 (left!42849 ys!41))) (content!10430 (list!19033 (right!43179 ys!41))))))))

(assert (=> d!1645148 (= lt!2091459 e!3171448)))

(declare-fun c!873617 () Bool)

(assert (=> d!1645148 (= c!873617 ((_ is Nil!58456) (list!19033 (left!42849 ys!41))))))

(assert (=> d!1645148 (= (++!12815 (list!19033 (left!42849 ys!41)) (list!19033 (right!43179 ys!41))) lt!2091459)))

(declare-fun b!5084801 () Bool)

(assert (=> b!5084801 (= e!3171448 (list!19033 (right!43179 ys!41)))))

(declare-fun b!5084804 () Bool)

(assert (=> b!5084804 (= e!3171449 (or (not (= (list!19033 (right!43179 ys!41)) Nil!58456)) (= lt!2091459 (list!19033 (left!42849 ys!41)))))))

(declare-fun b!5084803 () Bool)

(declare-fun res!2164728 () Bool)

(assert (=> b!5084803 (=> (not res!2164728) (not e!3171449))))

(assert (=> b!5084803 (= res!2164728 (= (size!39119 lt!2091459) (+ (size!39119 (list!19033 (left!42849 ys!41))) (size!39119 (list!19033 (right!43179 ys!41))))))))

(assert (= (and d!1645148 c!873617) b!5084801))

(assert (= (and d!1645148 (not c!873617)) b!5084802))

(assert (= (and d!1645148 res!2164729) b!5084803))

(assert (= (and b!5084803 res!2164728) b!5084804))

(assert (=> b!5084802 m!6139658))

(declare-fun m!6140716 () Bool)

(assert (=> b!5084802 m!6140716))

(declare-fun m!6140718 () Bool)

(assert (=> d!1645148 m!6140718))

(assert (=> d!1645148 m!6139662))

(declare-fun m!6140720 () Bool)

(assert (=> d!1645148 m!6140720))

(assert (=> d!1645148 m!6139658))

(declare-fun m!6140722 () Bool)

(assert (=> d!1645148 m!6140722))

(declare-fun m!6140724 () Bool)

(assert (=> b!5084803 m!6140724))

(assert (=> b!5084803 m!6139662))

(declare-fun m!6140726 () Bool)

(assert (=> b!5084803 m!6140726))

(assert (=> b!5084803 m!6139658))

(declare-fun m!6140728 () Bool)

(assert (=> b!5084803 m!6140728))

(assert (=> b!5084260 d!1645148))

(assert (=> b!5084260 d!1645146))

(assert (=> b!5084260 d!1645066))

(declare-fun tp!1417695 () Bool)

(declare-fun e!3171450 () Bool)

(declare-fun tp!1417694 () Bool)

(declare-fun b!5084805 () Bool)

(assert (=> b!5084805 (= e!3171450 (and (inv!77676 (left!42849 (left!42849 (right!43179 ys!41)))) tp!1417694 (inv!77676 (right!43179 (left!42849 (right!43179 ys!41)))) tp!1417695))))

(declare-fun b!5084807 () Bool)

(declare-fun e!3171451 () Bool)

(declare-fun tp!1417693 () Bool)

(assert (=> b!5084807 (= e!3171451 tp!1417693)))

(declare-fun b!5084806 () Bool)

(assert (=> b!5084806 (= e!3171450 (and (inv!77677 (xs!18964 (left!42849 (right!43179 ys!41)))) e!3171451))))

(assert (=> b!5084272 (= tp!1417629 (and (inv!77676 (left!42849 (right!43179 ys!41))) e!3171450))))

(assert (= (and b!5084272 ((_ is Node!15586) (left!42849 (right!43179 ys!41)))) b!5084805))

(assert (= b!5084806 b!5084807))

(assert (= (and b!5084272 ((_ is Leaf!25884) (left!42849 (right!43179 ys!41)))) b!5084806))

(declare-fun m!6140730 () Bool)

(assert (=> b!5084805 m!6140730))

(declare-fun m!6140732 () Bool)

(assert (=> b!5084805 m!6140732))

(declare-fun m!6140734 () Bool)

(assert (=> b!5084806 m!6140734))

(assert (=> b!5084272 m!6139728))

(declare-fun e!3171452 () Bool)

(declare-fun tp!1417697 () Bool)

(declare-fun b!5084808 () Bool)

(declare-fun tp!1417698 () Bool)

(assert (=> b!5084808 (= e!3171452 (and (inv!77676 (left!42849 (right!43179 (right!43179 ys!41)))) tp!1417697 (inv!77676 (right!43179 (right!43179 (right!43179 ys!41)))) tp!1417698))))

(declare-fun b!5084810 () Bool)

(declare-fun e!3171453 () Bool)

(declare-fun tp!1417696 () Bool)

(assert (=> b!5084810 (= e!3171453 tp!1417696)))

(declare-fun b!5084809 () Bool)

(assert (=> b!5084809 (= e!3171452 (and (inv!77677 (xs!18964 (right!43179 (right!43179 ys!41)))) e!3171453))))

(assert (=> b!5084272 (= tp!1417630 (and (inv!77676 (right!43179 (right!43179 ys!41))) e!3171452))))

(assert (= (and b!5084272 ((_ is Node!15586) (right!43179 (right!43179 ys!41)))) b!5084808))

(assert (= b!5084809 b!5084810))

(assert (= (and b!5084272 ((_ is Leaf!25884) (right!43179 (right!43179 ys!41)))) b!5084809))

(declare-fun m!6140736 () Bool)

(assert (=> b!5084808 m!6140736))

(declare-fun m!6140738 () Bool)

(assert (=> b!5084808 m!6140738))

(declare-fun m!6140740 () Bool)

(assert (=> b!5084809 m!6140740))

(assert (=> b!5084272 m!6139730))

(declare-fun b!5084811 () Bool)

(declare-fun e!3171454 () Bool)

(declare-fun tp!1417699 () Bool)

(assert (=> b!5084811 (= e!3171454 (and tp_is_empty!37095 tp!1417699))))

(assert (=> b!5084283 (= tp!1417637 e!3171454)))

(assert (= (and b!5084283 ((_ is Cons!58456) (innerList!15674 (xs!18964 (left!42849 err!4617))))) b!5084811))

(declare-fun b!5084812 () Bool)

(declare-fun e!3171455 () Bool)

(declare-fun tp!1417700 () Bool)

(assert (=> b!5084812 (= e!3171455 (and tp_is_empty!37095 tp!1417700))))

(assert (=> b!5084274 (= tp!1417628 e!3171455)))

(assert (= (and b!5084274 ((_ is Cons!58456) (innerList!15674 (xs!18964 (right!43179 ys!41))))) b!5084812))

(declare-fun b!5084813 () Bool)

(declare-fun e!3171456 () Bool)

(declare-fun tp!1417701 () Bool)

(assert (=> b!5084813 (= e!3171456 (and tp_is_empty!37095 tp!1417701))))

(assert (=> b!5084293 (= tp!1417647 e!3171456)))

(assert (= (and b!5084293 ((_ is Cons!58456) (t!371417 (innerList!15674 (xs!18964 ys!41))))) b!5084813))

(declare-fun b!5084814 () Bool)

(declare-fun e!3171457 () Bool)

(declare-fun tp!1417702 () Bool)

(assert (=> b!5084814 (= e!3171457 (and tp_is_empty!37095 tp!1417702))))

(assert (=> b!5084280 (= tp!1417634 e!3171457)))

(assert (= (and b!5084280 ((_ is Cons!58456) (innerList!15674 (xs!18964 (right!43179 xs!286))))) b!5084814))

(declare-fun b!5084815 () Bool)

(declare-fun e!3171458 () Bool)

(declare-fun tp!1417703 () Bool)

(assert (=> b!5084815 (= e!3171458 (and tp_is_empty!37095 tp!1417703))))

(assert (=> b!5084271 (= tp!1417625 e!3171458)))

(assert (= (and b!5084271 ((_ is Cons!58456) (innerList!15674 (xs!18964 (left!42849 ys!41))))) b!5084815))

(declare-fun b!5084816 () Bool)

(declare-fun e!3171459 () Bool)

(declare-fun tp!1417704 () Bool)

(assert (=> b!5084816 (= e!3171459 (and tp_is_empty!37095 tp!1417704))))

(assert (=> b!5084292 (= tp!1417646 e!3171459)))

(assert (= (and b!5084292 ((_ is Cons!58456) (t!371417 (innerList!15674 (xs!18964 xs!286))))) b!5084816))

(declare-fun e!3171460 () Bool)

(declare-fun tp!1417707 () Bool)

(declare-fun tp!1417706 () Bool)

(declare-fun b!5084817 () Bool)

(assert (=> b!5084817 (= e!3171460 (and (inv!77676 (left!42849 (left!42849 (left!42849 err!4617)))) tp!1417706 (inv!77676 (right!43179 (left!42849 (left!42849 err!4617)))) tp!1417707))))

(declare-fun b!5084819 () Bool)

(declare-fun e!3171461 () Bool)

(declare-fun tp!1417705 () Bool)

(assert (=> b!5084819 (= e!3171461 tp!1417705)))

(declare-fun b!5084818 () Bool)

(assert (=> b!5084818 (= e!3171460 (and (inv!77677 (xs!18964 (left!42849 (left!42849 err!4617)))) e!3171461))))

(assert (=> b!5084281 (= tp!1417638 (and (inv!77676 (left!42849 (left!42849 err!4617))) e!3171460))))

(assert (= (and b!5084281 ((_ is Node!15586) (left!42849 (left!42849 err!4617)))) b!5084817))

(assert (= b!5084818 b!5084819))

(assert (= (and b!5084281 ((_ is Leaf!25884) (left!42849 (left!42849 err!4617)))) b!5084818))

(declare-fun m!6140742 () Bool)

(assert (=> b!5084817 m!6140742))

(declare-fun m!6140744 () Bool)

(assert (=> b!5084817 m!6140744))

(declare-fun m!6140746 () Bool)

(assert (=> b!5084818 m!6140746))

(assert (=> b!5084281 m!6139746))

(declare-fun b!5084820 () Bool)

(declare-fun tp!1417709 () Bool)

(declare-fun tp!1417710 () Bool)

(declare-fun e!3171462 () Bool)

(assert (=> b!5084820 (= e!3171462 (and (inv!77676 (left!42849 (right!43179 (left!42849 err!4617)))) tp!1417709 (inv!77676 (right!43179 (right!43179 (left!42849 err!4617)))) tp!1417710))))

(declare-fun b!5084822 () Bool)

(declare-fun e!3171463 () Bool)

(declare-fun tp!1417708 () Bool)

(assert (=> b!5084822 (= e!3171463 tp!1417708)))

(declare-fun b!5084821 () Bool)

(assert (=> b!5084821 (= e!3171462 (and (inv!77677 (xs!18964 (right!43179 (left!42849 err!4617)))) e!3171463))))

(assert (=> b!5084281 (= tp!1417639 (and (inv!77676 (right!43179 (left!42849 err!4617))) e!3171462))))

(assert (= (and b!5084281 ((_ is Node!15586) (right!43179 (left!42849 err!4617)))) b!5084820))

(assert (= b!5084821 b!5084822))

(assert (= (and b!5084281 ((_ is Leaf!25884) (right!43179 (left!42849 err!4617)))) b!5084821))

(declare-fun m!6140748 () Bool)

(assert (=> b!5084820 m!6140748))

(declare-fun m!6140750 () Bool)

(assert (=> b!5084820 m!6140750))

(declare-fun m!6140752 () Bool)

(assert (=> b!5084821 m!6140752))

(assert (=> b!5084281 m!6139748))

(declare-fun b!5084823 () Bool)

(declare-fun e!3171464 () Bool)

(declare-fun tp!1417711 () Bool)

(assert (=> b!5084823 (= e!3171464 (and tp_is_empty!37095 tp!1417711))))

(assert (=> b!5084277 (= tp!1417631 e!3171464)))

(assert (= (and b!5084277 ((_ is Cons!58456) (innerList!15674 (xs!18964 (left!42849 xs!286))))) b!5084823))

(declare-fun b!5084824 () Bool)

(declare-fun tp!1417713 () Bool)

(declare-fun e!3171465 () Bool)

(declare-fun tp!1417714 () Bool)

(assert (=> b!5084824 (= e!3171465 (and (inv!77676 (left!42849 (left!42849 (right!43179 xs!286)))) tp!1417713 (inv!77676 (right!43179 (left!42849 (right!43179 xs!286)))) tp!1417714))))

(declare-fun b!5084826 () Bool)

(declare-fun e!3171466 () Bool)

(declare-fun tp!1417712 () Bool)

(assert (=> b!5084826 (= e!3171466 tp!1417712)))

(declare-fun b!5084825 () Bool)

(assert (=> b!5084825 (= e!3171465 (and (inv!77677 (xs!18964 (left!42849 (right!43179 xs!286)))) e!3171466))))

(assert (=> b!5084278 (= tp!1417635 (and (inv!77676 (left!42849 (right!43179 xs!286))) e!3171465))))

(assert (= (and b!5084278 ((_ is Node!15586) (left!42849 (right!43179 xs!286)))) b!5084824))

(assert (= b!5084825 b!5084826))

(assert (= (and b!5084278 ((_ is Leaf!25884) (left!42849 (right!43179 xs!286)))) b!5084825))

(declare-fun m!6140754 () Bool)

(assert (=> b!5084824 m!6140754))

(declare-fun m!6140756 () Bool)

(assert (=> b!5084824 m!6140756))

(declare-fun m!6140758 () Bool)

(assert (=> b!5084825 m!6140758))

(assert (=> b!5084278 m!6139740))

(declare-fun tp!1417716 () Bool)

(declare-fun e!3171467 () Bool)

(declare-fun tp!1417717 () Bool)

(declare-fun b!5084827 () Bool)

(assert (=> b!5084827 (= e!3171467 (and (inv!77676 (left!42849 (right!43179 (right!43179 xs!286)))) tp!1417716 (inv!77676 (right!43179 (right!43179 (right!43179 xs!286)))) tp!1417717))))

(declare-fun b!5084829 () Bool)

(declare-fun e!3171468 () Bool)

(declare-fun tp!1417715 () Bool)

(assert (=> b!5084829 (= e!3171468 tp!1417715)))

(declare-fun b!5084828 () Bool)

(assert (=> b!5084828 (= e!3171467 (and (inv!77677 (xs!18964 (right!43179 (right!43179 xs!286)))) e!3171468))))

(assert (=> b!5084278 (= tp!1417636 (and (inv!77676 (right!43179 (right!43179 xs!286))) e!3171467))))

(assert (= (and b!5084278 ((_ is Node!15586) (right!43179 (right!43179 xs!286)))) b!5084827))

(assert (= b!5084828 b!5084829))

(assert (= (and b!5084278 ((_ is Leaf!25884) (right!43179 (right!43179 xs!286)))) b!5084828))

(declare-fun m!6140760 () Bool)

(assert (=> b!5084827 m!6140760))

(declare-fun m!6140762 () Bool)

(assert (=> b!5084827 m!6140762))

(declare-fun m!6140764 () Bool)

(assert (=> b!5084828 m!6140764))

(assert (=> b!5084278 m!6139742))

(declare-fun b!5084830 () Bool)

(declare-fun e!3171469 () Bool)

(declare-fun tp!1417718 () Bool)

(assert (=> b!5084830 (= e!3171469 (and tp_is_empty!37095 tp!1417718))))

(assert (=> b!5084291 (= tp!1417645 e!3171469)))

(assert (= (and b!5084291 ((_ is Cons!58456) (t!371417 (innerList!15674 (xs!18964 err!4617))))) b!5084830))

(declare-fun b!5084831 () Bool)

(declare-fun tp!1417720 () Bool)

(declare-fun e!3171470 () Bool)

(declare-fun tp!1417721 () Bool)

(assert (=> b!5084831 (= e!3171470 (and (inv!77676 (left!42849 (left!42849 (left!42849 ys!41)))) tp!1417720 (inv!77676 (right!43179 (left!42849 (left!42849 ys!41)))) tp!1417721))))

(declare-fun b!5084833 () Bool)

(declare-fun e!3171471 () Bool)

(declare-fun tp!1417719 () Bool)

(assert (=> b!5084833 (= e!3171471 tp!1417719)))

(declare-fun b!5084832 () Bool)

(assert (=> b!5084832 (= e!3171470 (and (inv!77677 (xs!18964 (left!42849 (left!42849 ys!41)))) e!3171471))))

(assert (=> b!5084269 (= tp!1417626 (and (inv!77676 (left!42849 (left!42849 ys!41))) e!3171470))))

(assert (= (and b!5084269 ((_ is Node!15586) (left!42849 (left!42849 ys!41)))) b!5084831))

(assert (= b!5084832 b!5084833))

(assert (= (and b!5084269 ((_ is Leaf!25884) (left!42849 (left!42849 ys!41)))) b!5084832))

(declare-fun m!6140766 () Bool)

(assert (=> b!5084831 m!6140766))

(declare-fun m!6140768 () Bool)

(assert (=> b!5084831 m!6140768))

(declare-fun m!6140770 () Bool)

(assert (=> b!5084832 m!6140770))

(assert (=> b!5084269 m!6139722))

(declare-fun tp!1417724 () Bool)

(declare-fun tp!1417723 () Bool)

(declare-fun b!5084834 () Bool)

(declare-fun e!3171472 () Bool)

(assert (=> b!5084834 (= e!3171472 (and (inv!77676 (left!42849 (right!43179 (left!42849 ys!41)))) tp!1417723 (inv!77676 (right!43179 (right!43179 (left!42849 ys!41)))) tp!1417724))))

(declare-fun b!5084836 () Bool)

(declare-fun e!3171473 () Bool)

(declare-fun tp!1417722 () Bool)

(assert (=> b!5084836 (= e!3171473 tp!1417722)))

(declare-fun b!5084835 () Bool)

(assert (=> b!5084835 (= e!3171472 (and (inv!77677 (xs!18964 (right!43179 (left!42849 ys!41)))) e!3171473))))

(assert (=> b!5084269 (= tp!1417627 (and (inv!77676 (right!43179 (left!42849 ys!41))) e!3171472))))

(assert (= (and b!5084269 ((_ is Node!15586) (right!43179 (left!42849 ys!41)))) b!5084834))

(assert (= b!5084835 b!5084836))

(assert (= (and b!5084269 ((_ is Leaf!25884) (right!43179 (left!42849 ys!41)))) b!5084835))

(declare-fun m!6140772 () Bool)

(assert (=> b!5084834 m!6140772))

(declare-fun m!6140774 () Bool)

(assert (=> b!5084834 m!6140774))

(declare-fun m!6140776 () Bool)

(assert (=> b!5084835 m!6140776))

(assert (=> b!5084269 m!6139724))

(declare-fun b!5084837 () Bool)

(declare-fun tp!1417727 () Bool)

(declare-fun e!3171474 () Bool)

(declare-fun tp!1417726 () Bool)

(assert (=> b!5084837 (= e!3171474 (and (inv!77676 (left!42849 (left!42849 (right!43179 err!4617)))) tp!1417726 (inv!77676 (right!43179 (left!42849 (right!43179 err!4617)))) tp!1417727))))

(declare-fun b!5084839 () Bool)

(declare-fun e!3171475 () Bool)

(declare-fun tp!1417725 () Bool)

(assert (=> b!5084839 (= e!3171475 tp!1417725)))

(declare-fun b!5084838 () Bool)

(assert (=> b!5084838 (= e!3171474 (and (inv!77677 (xs!18964 (left!42849 (right!43179 err!4617)))) e!3171475))))

(assert (=> b!5084284 (= tp!1417641 (and (inv!77676 (left!42849 (right!43179 err!4617))) e!3171474))))

(assert (= (and b!5084284 ((_ is Node!15586) (left!42849 (right!43179 err!4617)))) b!5084837))

(assert (= b!5084838 b!5084839))

(assert (= (and b!5084284 ((_ is Leaf!25884) (left!42849 (right!43179 err!4617)))) b!5084838))

(declare-fun m!6140778 () Bool)

(assert (=> b!5084837 m!6140778))

(declare-fun m!6140780 () Bool)

(assert (=> b!5084837 m!6140780))

(declare-fun m!6140782 () Bool)

(assert (=> b!5084838 m!6140782))

(assert (=> b!5084284 m!6139752))

(declare-fun tp!1417730 () Bool)

(declare-fun e!3171476 () Bool)

(declare-fun b!5084840 () Bool)

(declare-fun tp!1417729 () Bool)

(assert (=> b!5084840 (= e!3171476 (and (inv!77676 (left!42849 (right!43179 (right!43179 err!4617)))) tp!1417729 (inv!77676 (right!43179 (right!43179 (right!43179 err!4617)))) tp!1417730))))

(declare-fun b!5084842 () Bool)

(declare-fun e!3171477 () Bool)

(declare-fun tp!1417728 () Bool)

(assert (=> b!5084842 (= e!3171477 tp!1417728)))

(declare-fun b!5084841 () Bool)

(assert (=> b!5084841 (= e!3171476 (and (inv!77677 (xs!18964 (right!43179 (right!43179 err!4617)))) e!3171477))))

(assert (=> b!5084284 (= tp!1417642 (and (inv!77676 (right!43179 (right!43179 err!4617))) e!3171476))))

(assert (= (and b!5084284 ((_ is Node!15586) (right!43179 (right!43179 err!4617)))) b!5084840))

(assert (= b!5084841 b!5084842))

(assert (= (and b!5084284 ((_ is Leaf!25884) (right!43179 (right!43179 err!4617)))) b!5084841))

(declare-fun m!6140784 () Bool)

(assert (=> b!5084840 m!6140784))

(declare-fun m!6140786 () Bool)

(assert (=> b!5084840 m!6140786))

(declare-fun m!6140788 () Bool)

(assert (=> b!5084841 m!6140788))

(assert (=> b!5084284 m!6139754))

(declare-fun tp!1417733 () Bool)

(declare-fun e!3171478 () Bool)

(declare-fun b!5084843 () Bool)

(declare-fun tp!1417732 () Bool)

(assert (=> b!5084843 (= e!3171478 (and (inv!77676 (left!42849 (left!42849 (left!42849 xs!286)))) tp!1417732 (inv!77676 (right!43179 (left!42849 (left!42849 xs!286)))) tp!1417733))))

(declare-fun b!5084845 () Bool)

(declare-fun e!3171479 () Bool)

(declare-fun tp!1417731 () Bool)

(assert (=> b!5084845 (= e!3171479 tp!1417731)))

(declare-fun b!5084844 () Bool)

(assert (=> b!5084844 (= e!3171478 (and (inv!77677 (xs!18964 (left!42849 (left!42849 xs!286)))) e!3171479))))

(assert (=> b!5084275 (= tp!1417632 (and (inv!77676 (left!42849 (left!42849 xs!286))) e!3171478))))

(assert (= (and b!5084275 ((_ is Node!15586) (left!42849 (left!42849 xs!286)))) b!5084843))

(assert (= b!5084844 b!5084845))

(assert (= (and b!5084275 ((_ is Leaf!25884) (left!42849 (left!42849 xs!286)))) b!5084844))

(declare-fun m!6140790 () Bool)

(assert (=> b!5084843 m!6140790))

(declare-fun m!6140792 () Bool)

(assert (=> b!5084843 m!6140792))

(declare-fun m!6140794 () Bool)

(assert (=> b!5084844 m!6140794))

(assert (=> b!5084275 m!6139734))

(declare-fun tp!1417736 () Bool)

(declare-fun b!5084846 () Bool)

(declare-fun e!3171480 () Bool)

(declare-fun tp!1417735 () Bool)

(assert (=> b!5084846 (= e!3171480 (and (inv!77676 (left!42849 (right!43179 (left!42849 xs!286)))) tp!1417735 (inv!77676 (right!43179 (right!43179 (left!42849 xs!286)))) tp!1417736))))

(declare-fun b!5084848 () Bool)

(declare-fun e!3171481 () Bool)

(declare-fun tp!1417734 () Bool)

(assert (=> b!5084848 (= e!3171481 tp!1417734)))

(declare-fun b!5084847 () Bool)

(assert (=> b!5084847 (= e!3171480 (and (inv!77677 (xs!18964 (right!43179 (left!42849 xs!286)))) e!3171481))))

(assert (=> b!5084275 (= tp!1417633 (and (inv!77676 (right!43179 (left!42849 xs!286))) e!3171480))))

(assert (= (and b!5084275 ((_ is Node!15586) (right!43179 (left!42849 xs!286)))) b!5084846))

(assert (= b!5084847 b!5084848))

(assert (= (and b!5084275 ((_ is Leaf!25884) (right!43179 (left!42849 xs!286)))) b!5084847))

(declare-fun m!6140796 () Bool)

(assert (=> b!5084846 m!6140796))

(declare-fun m!6140798 () Bool)

(assert (=> b!5084846 m!6140798))

(declare-fun m!6140800 () Bool)

(assert (=> b!5084847 m!6140800))

(assert (=> b!5084275 m!6139736))

(declare-fun b!5084849 () Bool)

(declare-fun e!3171482 () Bool)

(declare-fun tp!1417737 () Bool)

(assert (=> b!5084849 (= e!3171482 (and tp_is_empty!37095 tp!1417737))))

(assert (=> b!5084286 (= tp!1417640 e!3171482)))

(assert (= (and b!5084286 ((_ is Cons!58456) (innerList!15674 (xs!18964 (right!43179 err!4617))))) b!5084849))

(check-sat (not d!1645110) (not d!1645050) (not b!5084775) (not bm!354404) (not b!5084666) (not b!5084765) (not b!5084714) (not b!5084704) (not b!5084284) (not b!5084647) (not bm!354415) (not d!1645048) (not d!1645036) (not b!5084763) (not b!5084802) (not b!5084639) (not b!5084708) (not b!5084623) (not b!5084582) (not bm!354411) (not b!5084845) (not b!5084761) (not b!5084790) (not b!5084844) (not b!5084826) (not b!5084838) (not b!5084792) (not d!1645024) (not b!5084573) (not bm!354403) (not b!5084281) (not b!5084829) (not b!5084269) (not b!5084821) (not b!5084675) (not bm!354400) (not b!5084811) (not b!5084620) (not b!5084773) (not d!1644984) (not b!5084847) (not b!5084769) (not b!5084808) (not b!5084649) (not b!5084631) (not b!5084830) (not b!5084758) (not d!1645088) (not b!5084785) (not b!5084635) tp_is_empty!37095 (not d!1645136) (not b!5084828) (not d!1645106) (not b!5084611) (not bm!354414) (not d!1645112) (not b!5084846) (not b!5084815) (not b!5084849) (not b!5084598) (not d!1644986) (not b!5084602) (not b!5084757) (not d!1644996) (not b!5084759) (not b!5084776) (not b!5084824) (not b!5084788) (not b!5084751) (not b!5084780) (not b!5084691) (not b!5084650) (not b!5084781) (not b!5084690) (not bm!354416) (not b!5084820) (not b!5084612) (not b!5084841) (not b!5084806) (not b!5084634) (not b!5084833) (not b!5084748) (not b!5084731) (not d!1645052) (not d!1645102) (not b!5084807) (not b!5084733) (not b!5084817) (not b!5084636) (not b!5084685) (not d!1645116) (not b!5084718) (not d!1645072) (not b!5084816) (not b!5084591) (not b!5084818) (not bm!354406) (not b!5084725) (not bm!354401) (not bm!354394) (not b!5084819) (not d!1644978) (not b!5084696) (not d!1645084) (not d!1645148) (not bm!354396) (not b!5084628) (not b!5084626) (not b!5084657) (not b!5084609) (not d!1644994) (not b!5084842) (not b!5084698) (not b!5084618) (not b!5084710) (not b!5084766) (not b!5084645) (not b!5084583) (not bm!354405) (not b!5084752) (not b!5084756) (not d!1644998) (not b!5084600) (not b!5084709) (not b!5084839) (not b!5084832) (not bm!354393) (not bm!354413) (not b!5084812) (not b!5084713) (not b!5084637) (not b!5084740) (not d!1645118) (not d!1645108) (not b!5084689) (not b!5084607) (not bm!354398) (not b!5084616) (not b!5084632) (not b!5084695) (not b!5084680) (not b!5084275) (not b!5084831) (not d!1645022) (not b!5084742) (not b!5084705) (not b!5084746) (not bm!354410) (not b!5084835) (not b!5084686) (not b!5084754) (not d!1645038) (not b!5084693) (not b!5084672) (not b!5084771) (not b!5084700) (not b!5084814) (not b!5084643) (not b!5084677) (not b!5084662) (not b!5084823) (not d!1645124) (not b!5084723) (not b!5084579) (not b!5084767) (not b!5084795) (not d!1645080) (not b!5084778) (not b!5084614) (not b!5084791) (not b!5084810) (not b!5084837) (not b!5084744) (not d!1645104) (not b!5084665) (not b!5084848) (not b!5084793) (not b!5084272) (not b!5084633) (not b!5084825) (not b!5084768) (not bm!354402) (not b!5084674) (not b!5084786) (not b!5084799) (not b!5084578) (not d!1645090) (not b!5084667) (not b!5084629) (not d!1645094) (not b!5084783) (not b!5084278) (not bm!354407) (not bm!354408) (not d!1645076) (not b!5084671) (not b!5084805) (not bm!354395) (not b!5084692) (not b!5084652) (not b!5084669) (not d!1645006) (not b!5084836) (not d!1645054) (not b!5084840) (not b!5084822) (not b!5084661) (not b!5084803) (not b!5084800) (not b!5084760) (not b!5084728) (not b!5084794) (not b!5084625) (not bm!354397) (not b!5084694) (not b!5084613) (not bm!354409) (not b!5084642) (not b!5084681) (not b!5084813) (not b!5084721) (not d!1645120) (not d!1645018) (not b!5084615) (not b!5084843) (not b!5084770) (not b!5084574) (not bm!354412) (not b!5084789) (not bm!354399) (not b!5084834) (not b!5084827) (not d!1645064) (not b!5084809) (not b!5084622) (not b!5084719))
(check-sat)
(get-model)

(declare-fun bm!354441 () Bool)

(declare-fun call!354449 () List!58580)

(assert (=> bm!354441 (= call!354449 (++!12815 (list!19033 (right!43179 xs!286)) (list!19033 ys!41)))))

(declare-fun b!5085463 () Bool)

(declare-fun e!3171806 () Bool)

(declare-fun call!354446 () List!58580)

(declare-fun call!354448 () List!58580)

(assert (=> b!5085463 (= e!3171806 (= call!354446 call!354448))))

(declare-fun lt!2091569 () Bool)

(assert (=> b!5085463 (= lt!2091569 (appendAssoc!314 (t!371417 (t!371417 (list!19033 (left!42849 xs!286)))) (list!19033 (right!43179 xs!286)) (list!19033 ys!41)))))

(declare-fun bm!354442 () Bool)

(declare-fun call!354447 () List!58580)

(assert (=> bm!354442 (= call!354446 (++!12815 call!354447 (list!19033 ys!41)))))

(declare-fun b!5085464 () Bool)

(assert (=> b!5085464 (= e!3171806 (= call!354446 call!354448))))

(declare-fun d!1645666 () Bool)

(assert (=> d!1645666 e!3171806))

(declare-fun c!873766 () Bool)

(assert (=> d!1645666 (= c!873766 ((_ is Nil!58456) (t!371417 (list!19033 (left!42849 xs!286)))))))

(assert (=> d!1645666 (= (appendAssoc!314 (t!371417 (list!19033 (left!42849 xs!286))) (list!19033 (right!43179 xs!286)) (list!19033 ys!41)) true)))

(declare-fun bm!354443 () Bool)

(assert (=> bm!354443 (= call!354447 (++!12815 (t!371417 (list!19033 (left!42849 xs!286))) (list!19033 (right!43179 xs!286))))))

(declare-fun bm!354444 () Bool)

(assert (=> bm!354444 (= call!354448 (++!12815 (t!371417 (list!19033 (left!42849 xs!286))) call!354449))))

(assert (= (and d!1645666 c!873766) b!5085464))

(assert (= (and d!1645666 (not c!873766)) b!5085463))

(assert (= (or b!5085464 b!5085463) bm!354443))

(assert (= (or b!5085464 b!5085463) bm!354441))

(assert (= (or b!5085464 b!5085463) bm!354444))

(assert (= (or b!5085464 b!5085463) bm!354442))

(declare-fun m!6142020 () Bool)

(assert (=> bm!354444 m!6142020))

(assert (=> b!5085463 m!6139648))

(assert (=> b!5085463 m!6139376))

(declare-fun m!6142022 () Bool)

(assert (=> b!5085463 m!6142022))

(assert (=> bm!354442 m!6139376))

(declare-fun m!6142024 () Bool)

(assert (=> bm!354442 m!6142024))

(assert (=> bm!354441 m!6139648))

(assert (=> bm!354441 m!6139376))

(assert (=> bm!354441 m!6140556))

(assert (=> bm!354443 m!6139648))

(assert (=> bm!354443 m!6140280))

(assert (=> b!5084723 d!1645666))

(declare-fun d!1645668 () Bool)

(declare-fun lt!2091572 () Int)

(assert (=> d!1645668 (= lt!2091572 (size!39119 (list!19033 (left!42849 xs!286))))))

(assert (=> d!1645668 (= lt!2091572 (ite ((_ is Empty!15586) (left!42849 xs!286)) 0 (ite ((_ is Leaf!25884) (left!42849 xs!286)) (csize!31403 (left!42849 xs!286)) (csize!31402 (left!42849 xs!286)))))))

(assert (=> d!1645668 (= (size!39121 (left!42849 xs!286)) lt!2091572)))

(declare-fun bs!1190896 () Bool)

(assert (= bs!1190896 d!1645668))

(assert (=> bs!1190896 m!6139638))

(assert (=> bs!1190896 m!6139638))

(assert (=> bs!1190896 m!6140290))

(assert (=> d!1645064 d!1645668))

(declare-fun d!1645670 () Bool)

(declare-fun lt!2091573 () Int)

(assert (=> d!1645670 (= lt!2091573 (size!39119 (list!19033 (right!43179 xs!286))))))

(assert (=> d!1645670 (= lt!2091573 (ite ((_ is Empty!15586) (right!43179 xs!286)) 0 (ite ((_ is Leaf!25884) (right!43179 xs!286)) (csize!31403 (right!43179 xs!286)) (csize!31402 (right!43179 xs!286)))))))

(assert (=> d!1645670 (= (size!39121 (right!43179 xs!286)) lt!2091573)))

(declare-fun bs!1190897 () Bool)

(assert (= bs!1190897 d!1645670))

(assert (=> bs!1190897 m!6139648))

(assert (=> bs!1190897 m!6139648))

(assert (=> bs!1190897 m!6140292))

(assert (=> d!1645064 d!1645670))

(declare-fun d!1645672 () Bool)

(assert (=> d!1645672 (= (max!0 (height!2163 (left!42849 (left!42849 xs!286))) (height!2163 (right!43179 (left!42849 xs!286)))) (ite (< (height!2163 (left!42849 (left!42849 xs!286))) (height!2163 (right!43179 (left!42849 xs!286)))) (height!2163 (right!43179 (left!42849 xs!286))) (height!2163 (left!42849 (left!42849 xs!286)))))))

(assert (=> b!5084733 d!1645672))

(declare-fun d!1645674 () Bool)

(assert (=> d!1645674 (= (height!2163 (left!42849 (left!42849 xs!286))) (ite ((_ is Empty!15586) (left!42849 (left!42849 xs!286))) 0 (ite ((_ is Leaf!25884) (left!42849 (left!42849 xs!286))) 1 (cheight!15797 (left!42849 (left!42849 xs!286))))))))

(assert (=> b!5084733 d!1645674))

(declare-fun d!1645676 () Bool)

(assert (=> d!1645676 (= (height!2163 (right!43179 (left!42849 xs!286))) (ite ((_ is Empty!15586) (right!43179 (left!42849 xs!286))) 0 (ite ((_ is Leaf!25884) (right!43179 (left!42849 xs!286))) 1 (cheight!15797 (right!43179 (left!42849 xs!286))))))))

(assert (=> b!5084733 d!1645676))

(declare-fun d!1645678 () Bool)

(declare-fun lt!2091574 () Int)

(assert (=> d!1645678 (>= lt!2091574 0)))

(declare-fun e!3171807 () Int)

(assert (=> d!1645678 (= lt!2091574 e!3171807)))

(declare-fun c!873767 () Bool)

(assert (=> d!1645678 (= c!873767 ((_ is Nil!58456) (list!19035 (xs!18964 ys!41))))))

(assert (=> d!1645678 (= (size!39119 (list!19035 (xs!18964 ys!41))) lt!2091574)))

(declare-fun b!5085465 () Bool)

(assert (=> b!5085465 (= e!3171807 0)))

(declare-fun b!5085466 () Bool)

(assert (=> b!5085466 (= e!3171807 (+ 1 (size!39119 (t!371417 (list!19035 (xs!18964 ys!41))))))))

(assert (= (and d!1645678 c!873767) b!5085465))

(assert (= (and d!1645678 (not c!873767)) b!5085466))

(declare-fun m!6142026 () Bool)

(assert (=> b!5085466 m!6142026))

(assert (=> b!5084645 d!1645678))

(assert (=> b!5084645 d!1645078))

(declare-fun d!1645680 () Bool)

(declare-fun res!2164954 () Bool)

(declare-fun e!3171808 () Bool)

(assert (=> d!1645680 (=> (not res!2164954) (not e!3171808))))

(assert (=> d!1645680 (= res!2164954 (<= (size!39119 (list!19035 (xs!18964 (right!43179 (left!42849 ys!41))))) 512))))

(assert (=> d!1645680 (= (inv!77681 (right!43179 (left!42849 ys!41))) e!3171808)))

(declare-fun b!5085467 () Bool)

(declare-fun res!2164955 () Bool)

(assert (=> b!5085467 (=> (not res!2164955) (not e!3171808))))

(assert (=> b!5085467 (= res!2164955 (= (csize!31403 (right!43179 (left!42849 ys!41))) (size!39119 (list!19035 (xs!18964 (right!43179 (left!42849 ys!41)))))))))

(declare-fun b!5085468 () Bool)

(assert (=> b!5085468 (= e!3171808 (and (> (csize!31403 (right!43179 (left!42849 ys!41))) 0) (<= (csize!31403 (right!43179 (left!42849 ys!41))) 512)))))

(assert (= (and d!1645680 res!2164954) b!5085467))

(assert (= (and b!5085467 res!2164955) b!5085468))

(assert (=> d!1645680 m!6140508))

(assert (=> d!1645680 m!6140508))

(declare-fun m!6142028 () Bool)

(assert (=> d!1645680 m!6142028))

(assert (=> b!5085467 m!6140508))

(assert (=> b!5085467 m!6140508))

(assert (=> b!5085467 m!6142028))

(assert (=> b!5084788 d!1645680))

(declare-fun b!5085470 () Bool)

(declare-fun e!3171809 () List!58580)

(assert (=> b!5085470 (= e!3171809 (Cons!58456 (h!64904 (list!19033 xs!286)) (++!12815 (t!371417 (list!19033 xs!286)) (list!19033 (left!42849 ys!41)))))))

(declare-fun d!1645682 () Bool)

(declare-fun e!3171810 () Bool)

(assert (=> d!1645682 e!3171810))

(declare-fun res!2164957 () Bool)

(assert (=> d!1645682 (=> (not res!2164957) (not e!3171810))))

(declare-fun lt!2091575 () List!58580)

(assert (=> d!1645682 (= res!2164957 (= (content!10430 lt!2091575) ((_ map or) (content!10430 (list!19033 xs!286)) (content!10430 (list!19033 (left!42849 ys!41))))))))

(assert (=> d!1645682 (= lt!2091575 e!3171809)))

(declare-fun c!873768 () Bool)

(assert (=> d!1645682 (= c!873768 ((_ is Nil!58456) (list!19033 xs!286)))))

(assert (=> d!1645682 (= (++!12815 (list!19033 xs!286) (list!19033 (left!42849 ys!41))) lt!2091575)))

(declare-fun b!5085469 () Bool)

(assert (=> b!5085469 (= e!3171809 (list!19033 (left!42849 ys!41)))))

(declare-fun b!5085472 () Bool)

(assert (=> b!5085472 (= e!3171810 (or (not (= (list!19033 (left!42849 ys!41)) Nil!58456)) (= lt!2091575 (list!19033 xs!286))))))

(declare-fun b!5085471 () Bool)

(declare-fun res!2164956 () Bool)

(assert (=> b!5085471 (=> (not res!2164956) (not e!3171810))))

(assert (=> b!5085471 (= res!2164956 (= (size!39119 lt!2091575) (+ (size!39119 (list!19033 xs!286)) (size!39119 (list!19033 (left!42849 ys!41))))))))

(assert (= (and d!1645682 c!873768) b!5085469))

(assert (= (and d!1645682 (not c!873768)) b!5085470))

(assert (= (and d!1645682 res!2164957) b!5085471))

(assert (= (and b!5085471 res!2164956) b!5085472))

(assert (=> b!5085470 m!6139662))

(declare-fun m!6142030 () Bool)

(assert (=> b!5085470 m!6142030))

(declare-fun m!6142032 () Bool)

(assert (=> d!1645682 m!6142032))

(assert (=> d!1645682 m!6139374))

(assert (=> d!1645682 m!6139700))

(assert (=> d!1645682 m!6139662))

(assert (=> d!1645682 m!6140720))

(declare-fun m!6142034 () Bool)

(assert (=> b!5085471 m!6142034))

(assert (=> b!5085471 m!6139374))

(assert (=> b!5085471 m!6139706))

(assert (=> b!5085471 m!6139662))

(assert (=> b!5085471 m!6140726))

(assert (=> bm!354415 d!1645682))

(declare-fun d!1645684 () Bool)

(assert (=> d!1645684 (= (isEmpty!31677 (list!19033 (right!43179 ys!41))) ((_ is Nil!58456) (list!19033 (right!43179 ys!41))))))

(assert (=> d!1645106 d!1645684))

(assert (=> d!1645106 d!1645066))

(declare-fun d!1645686 () Bool)

(declare-fun lt!2091576 () Int)

(assert (=> d!1645686 (= lt!2091576 (size!39119 (list!19033 (right!43179 ys!41))))))

(assert (=> d!1645686 (= lt!2091576 (ite ((_ is Empty!15586) (right!43179 ys!41)) 0 (ite ((_ is Leaf!25884) (right!43179 ys!41)) (csize!31403 (right!43179 ys!41)) (csize!31402 (right!43179 ys!41)))))))

(assert (=> d!1645686 (= (size!39121 (right!43179 ys!41)) lt!2091576)))

(declare-fun bs!1190898 () Bool)

(assert (= bs!1190898 d!1645686))

(assert (=> bs!1190898 m!6139658))

(assert (=> bs!1190898 m!6139658))

(assert (=> bs!1190898 m!6140728))

(assert (=> d!1645106 d!1645686))

(declare-fun b!5085474 () Bool)

(declare-fun e!3171811 () List!58580)

(assert (=> b!5085474 (= e!3171811 (Cons!58456 (h!64904 (list!19033 (left!42849 (right!43179 (right!43179 xs!286))))) (++!12815 (t!371417 (list!19033 (left!42849 (right!43179 (right!43179 xs!286))))) (list!19033 (right!43179 (right!43179 (right!43179 xs!286)))))))))

(declare-fun d!1645688 () Bool)

(declare-fun e!3171812 () Bool)

(assert (=> d!1645688 e!3171812))

(declare-fun res!2164959 () Bool)

(assert (=> d!1645688 (=> (not res!2164959) (not e!3171812))))

(declare-fun lt!2091577 () List!58580)

(assert (=> d!1645688 (= res!2164959 (= (content!10430 lt!2091577) ((_ map or) (content!10430 (list!19033 (left!42849 (right!43179 (right!43179 xs!286))))) (content!10430 (list!19033 (right!43179 (right!43179 (right!43179 xs!286))))))))))

(assert (=> d!1645688 (= lt!2091577 e!3171811)))

(declare-fun c!873769 () Bool)

(assert (=> d!1645688 (= c!873769 ((_ is Nil!58456) (list!19033 (left!42849 (right!43179 (right!43179 xs!286))))))))

(assert (=> d!1645688 (= (++!12815 (list!19033 (left!42849 (right!43179 (right!43179 xs!286)))) (list!19033 (right!43179 (right!43179 (right!43179 xs!286))))) lt!2091577)))

(declare-fun b!5085473 () Bool)

(assert (=> b!5085473 (= e!3171811 (list!19033 (right!43179 (right!43179 (right!43179 xs!286)))))))

(declare-fun b!5085476 () Bool)

(assert (=> b!5085476 (= e!3171812 (or (not (= (list!19033 (right!43179 (right!43179 (right!43179 xs!286)))) Nil!58456)) (= lt!2091577 (list!19033 (left!42849 (right!43179 (right!43179 xs!286)))))))))

(declare-fun b!5085475 () Bool)

(declare-fun res!2164958 () Bool)

(assert (=> b!5085475 (=> (not res!2164958) (not e!3171812))))

(assert (=> b!5085475 (= res!2164958 (= (size!39119 lt!2091577) (+ (size!39119 (list!19033 (left!42849 (right!43179 (right!43179 xs!286))))) (size!39119 (list!19033 (right!43179 (right!43179 (right!43179 xs!286))))))))))

(assert (= (and d!1645688 c!873769) b!5085473))

(assert (= (and d!1645688 (not c!873769)) b!5085474))

(assert (= (and d!1645688 res!2164959) b!5085475))

(assert (= (and b!5085475 res!2164958) b!5085476))

(assert (=> b!5085474 m!6140422))

(declare-fun m!6142036 () Bool)

(assert (=> b!5085474 m!6142036))

(declare-fun m!6142038 () Bool)

(assert (=> d!1645688 m!6142038))

(assert (=> d!1645688 m!6140420))

(declare-fun m!6142040 () Bool)

(assert (=> d!1645688 m!6142040))

(assert (=> d!1645688 m!6140422))

(declare-fun m!6142042 () Bool)

(assert (=> d!1645688 m!6142042))

(declare-fun m!6142044 () Bool)

(assert (=> b!5085475 m!6142044))

(assert (=> b!5085475 m!6140420))

(declare-fun m!6142046 () Bool)

(assert (=> b!5085475 m!6142046))

(assert (=> b!5085475 m!6140422))

(declare-fun m!6142048 () Bool)

(assert (=> b!5085475 m!6142048))

(assert (=> b!5084666 d!1645688))

(declare-fun b!5085478 () Bool)

(declare-fun e!3171813 () List!58580)

(declare-fun e!3171814 () List!58580)

(assert (=> b!5085478 (= e!3171813 e!3171814)))

(declare-fun c!873771 () Bool)

(assert (=> b!5085478 (= c!873771 ((_ is Leaf!25884) (left!42849 (right!43179 (right!43179 xs!286)))))))

(declare-fun b!5085477 () Bool)

(assert (=> b!5085477 (= e!3171813 Nil!58456)))

(declare-fun b!5085480 () Bool)

(assert (=> b!5085480 (= e!3171814 (++!12815 (list!19033 (left!42849 (left!42849 (right!43179 (right!43179 xs!286))))) (list!19033 (right!43179 (left!42849 (right!43179 (right!43179 xs!286)))))))))

(declare-fun d!1645690 () Bool)

(declare-fun c!873770 () Bool)

(assert (=> d!1645690 (= c!873770 ((_ is Empty!15586) (left!42849 (right!43179 (right!43179 xs!286)))))))

(assert (=> d!1645690 (= (list!19033 (left!42849 (right!43179 (right!43179 xs!286)))) e!3171813)))

(declare-fun b!5085479 () Bool)

(assert (=> b!5085479 (= e!3171814 (list!19035 (xs!18964 (left!42849 (right!43179 (right!43179 xs!286))))))))

(assert (= (and d!1645690 c!873770) b!5085477))

(assert (= (and d!1645690 (not c!873770)) b!5085478))

(assert (= (and b!5085478 c!873771) b!5085479))

(assert (= (and b!5085478 (not c!873771)) b!5085480))

(declare-fun m!6142050 () Bool)

(assert (=> b!5085480 m!6142050))

(declare-fun m!6142052 () Bool)

(assert (=> b!5085480 m!6142052))

(assert (=> b!5085480 m!6142050))

(assert (=> b!5085480 m!6142052))

(declare-fun m!6142054 () Bool)

(assert (=> b!5085480 m!6142054))

(declare-fun m!6142056 () Bool)

(assert (=> b!5085479 m!6142056))

(assert (=> b!5084666 d!1645690))

(declare-fun b!5085482 () Bool)

(declare-fun e!3171815 () List!58580)

(declare-fun e!3171816 () List!58580)

(assert (=> b!5085482 (= e!3171815 e!3171816)))

(declare-fun c!873773 () Bool)

(assert (=> b!5085482 (= c!873773 ((_ is Leaf!25884) (right!43179 (right!43179 (right!43179 xs!286)))))))

(declare-fun b!5085481 () Bool)

(assert (=> b!5085481 (= e!3171815 Nil!58456)))

(declare-fun b!5085484 () Bool)

(assert (=> b!5085484 (= e!3171816 (++!12815 (list!19033 (left!42849 (right!43179 (right!43179 (right!43179 xs!286))))) (list!19033 (right!43179 (right!43179 (right!43179 (right!43179 xs!286)))))))))

(declare-fun d!1645692 () Bool)

(declare-fun c!873772 () Bool)

(assert (=> d!1645692 (= c!873772 ((_ is Empty!15586) (right!43179 (right!43179 (right!43179 xs!286)))))))

(assert (=> d!1645692 (= (list!19033 (right!43179 (right!43179 (right!43179 xs!286)))) e!3171815)))

(declare-fun b!5085483 () Bool)

(assert (=> b!5085483 (= e!3171816 (list!19035 (xs!18964 (right!43179 (right!43179 (right!43179 xs!286))))))))

(assert (= (and d!1645692 c!873772) b!5085481))

(assert (= (and d!1645692 (not c!873772)) b!5085482))

(assert (= (and b!5085482 c!873773) b!5085483))

(assert (= (and b!5085482 (not c!873773)) b!5085484))

(declare-fun m!6142058 () Bool)

(assert (=> b!5085484 m!6142058))

(declare-fun m!6142060 () Bool)

(assert (=> b!5085484 m!6142060))

(assert (=> b!5085484 m!6142058))

(assert (=> b!5085484 m!6142060))

(declare-fun m!6142062 () Bool)

(assert (=> b!5085484 m!6142062))

(declare-fun m!6142064 () Bool)

(assert (=> b!5085483 m!6142064))

(assert (=> b!5084666 d!1645692))

(declare-fun d!1645694 () Bool)

(declare-fun lt!2091578 () Int)

(assert (=> d!1645694 (>= lt!2091578 0)))

(declare-fun e!3171817 () Int)

(assert (=> d!1645694 (= lt!2091578 e!3171817)))

(declare-fun c!873774 () Bool)

(assert (=> d!1645694 (= c!873774 ((_ is Nil!58456) (innerList!15674 (xs!18964 (right!43179 ys!41)))))))

(assert (=> d!1645694 (= (size!39119 (innerList!15674 (xs!18964 (right!43179 ys!41)))) lt!2091578)))

(declare-fun b!5085485 () Bool)

(assert (=> b!5085485 (= e!3171817 0)))

(declare-fun b!5085486 () Bool)

(assert (=> b!5085486 (= e!3171817 (+ 1 (size!39119 (t!371417 (innerList!15674 (xs!18964 (right!43179 ys!41)))))))))

(assert (= (and d!1645694 c!873774) b!5085485))

(assert (= (and d!1645694 (not c!873774)) b!5085486))

(declare-fun m!6142066 () Bool)

(assert (=> b!5085486 m!6142066))

(assert (=> d!1645118 d!1645694))

(declare-fun d!1645696 () Bool)

(declare-fun res!2164960 () Bool)

(declare-fun e!3171818 () Bool)

(assert (=> d!1645696 (=> (not res!2164960) (not e!3171818))))

(assert (=> d!1645696 (= res!2164960 (= (csize!31402 (right!43179 (right!43179 err!4617))) (+ (size!39121 (left!42849 (right!43179 (right!43179 err!4617)))) (size!39121 (right!43179 (right!43179 (right!43179 err!4617)))))))))

(assert (=> d!1645696 (= (inv!77680 (right!43179 (right!43179 err!4617))) e!3171818)))

(declare-fun b!5085487 () Bool)

(declare-fun res!2164961 () Bool)

(assert (=> b!5085487 (=> (not res!2164961) (not e!3171818))))

(assert (=> b!5085487 (= res!2164961 (and (not (= (left!42849 (right!43179 (right!43179 err!4617))) Empty!15586)) (not (= (right!43179 (right!43179 (right!43179 err!4617))) Empty!15586))))))

(declare-fun b!5085488 () Bool)

(declare-fun res!2164962 () Bool)

(assert (=> b!5085488 (=> (not res!2164962) (not e!3171818))))

(assert (=> b!5085488 (= res!2164962 (= (cheight!15797 (right!43179 (right!43179 err!4617))) (+ (max!0 (height!2163 (left!42849 (right!43179 (right!43179 err!4617)))) (height!2163 (right!43179 (right!43179 (right!43179 err!4617))))) 1)))))

(declare-fun b!5085489 () Bool)

(assert (=> b!5085489 (= e!3171818 (<= 0 (cheight!15797 (right!43179 (right!43179 err!4617)))))))

(assert (= (and d!1645696 res!2164960) b!5085487))

(assert (= (and b!5085487 res!2164961) b!5085488))

(assert (= (and b!5085488 res!2164962) b!5085489))

(declare-fun m!6142068 () Bool)

(assert (=> d!1645696 m!6142068))

(declare-fun m!6142070 () Bool)

(assert (=> d!1645696 m!6142070))

(declare-fun m!6142072 () Bool)

(assert (=> b!5085488 m!6142072))

(declare-fun m!6142074 () Bool)

(assert (=> b!5085488 m!6142074))

(assert (=> b!5085488 m!6142072))

(assert (=> b!5085488 m!6142074))

(declare-fun m!6142076 () Bool)

(assert (=> b!5085488 m!6142076))

(assert (=> b!5084623 d!1645696))

(declare-fun b!5085490 () Bool)

(declare-fun res!2164968 () Bool)

(declare-fun e!3171819 () Bool)

(assert (=> b!5085490 (=> (not res!2164968) (not e!3171819))))

(assert (=> b!5085490 (= res!2164968 (isBalanced!4448 (right!43179 (right!43179 (left!42849 lt!2091392)))))))

(declare-fun b!5085491 () Bool)

(declare-fun res!2164966 () Bool)

(assert (=> b!5085491 (=> (not res!2164966) (not e!3171819))))

(assert (=> b!5085491 (= res!2164966 (<= (- (height!2163 (left!42849 (right!43179 (left!42849 lt!2091392)))) (height!2163 (right!43179 (right!43179 (left!42849 lt!2091392))))) 1))))

(declare-fun b!5085492 () Bool)

(declare-fun e!3171820 () Bool)

(assert (=> b!5085492 (= e!3171820 e!3171819)))

(declare-fun res!2164964 () Bool)

(assert (=> b!5085492 (=> (not res!2164964) (not e!3171819))))

(assert (=> b!5085492 (= res!2164964 (<= (- 1) (- (height!2163 (left!42849 (right!43179 (left!42849 lt!2091392)))) (height!2163 (right!43179 (right!43179 (left!42849 lt!2091392)))))))))

(declare-fun b!5085493 () Bool)

(declare-fun res!2164967 () Bool)

(assert (=> b!5085493 (=> (not res!2164967) (not e!3171819))))

(assert (=> b!5085493 (= res!2164967 (not (isEmpty!31675 (left!42849 (right!43179 (left!42849 lt!2091392))))))))

(declare-fun b!5085494 () Bool)

(declare-fun res!2164963 () Bool)

(assert (=> b!5085494 (=> (not res!2164963) (not e!3171819))))

(assert (=> b!5085494 (= res!2164963 (isBalanced!4448 (left!42849 (right!43179 (left!42849 lt!2091392)))))))

(declare-fun b!5085495 () Bool)

(assert (=> b!5085495 (= e!3171819 (not (isEmpty!31675 (right!43179 (right!43179 (left!42849 lt!2091392))))))))

(declare-fun d!1645698 () Bool)

(declare-fun res!2164965 () Bool)

(assert (=> d!1645698 (=> res!2164965 e!3171820)))

(assert (=> d!1645698 (= res!2164965 (not ((_ is Node!15586) (right!43179 (left!42849 lt!2091392)))))))

(assert (=> d!1645698 (= (isBalanced!4448 (right!43179 (left!42849 lt!2091392))) e!3171820)))

(assert (= (and d!1645698 (not res!2164965)) b!5085492))

(assert (= (and b!5085492 res!2164964) b!5085491))

(assert (= (and b!5085491 res!2164966) b!5085494))

(assert (= (and b!5085494 res!2164963) b!5085490))

(assert (= (and b!5085490 res!2164968) b!5085493))

(assert (= (and b!5085493 res!2164967) b!5085495))

(declare-fun m!6142078 () Bool)

(assert (=> b!5085494 m!6142078))

(declare-fun m!6142080 () Bool)

(assert (=> b!5085495 m!6142080))

(declare-fun m!6142082 () Bool)

(assert (=> b!5085493 m!6142082))

(declare-fun m!6142084 () Bool)

(assert (=> b!5085492 m!6142084))

(declare-fun m!6142086 () Bool)

(assert (=> b!5085492 m!6142086))

(assert (=> b!5085491 m!6142084))

(assert (=> b!5085491 m!6142086))

(declare-fun m!6142088 () Bool)

(assert (=> b!5085490 m!6142088))

(assert (=> b!5084756 d!1645698))

(assert (=> b!5084284 d!1645008))

(assert (=> b!5084284 d!1645010))

(assert (=> b!5084275 d!1645012))

(assert (=> b!5084275 d!1645014))

(declare-fun d!1645700 () Bool)

(declare-fun lt!2091579 () Bool)

(assert (=> d!1645700 (= lt!2091579 (isEmpty!31677 (list!19033 (left!42849 (right!43179 xs!286)))))))

(assert (=> d!1645700 (= lt!2091579 (= (size!39121 (left!42849 (right!43179 xs!286))) 0))))

(assert (=> d!1645700 (= (isEmpty!31675 (left!42849 (right!43179 xs!286))) lt!2091579)))

(declare-fun bs!1190899 () Bool)

(assert (= bs!1190899 d!1645700))

(assert (=> bs!1190899 m!6139640))

(assert (=> bs!1190899 m!6139640))

(declare-fun m!6142090 () Bool)

(assert (=> bs!1190899 m!6142090))

(assert (=> bs!1190899 m!6140564))

(assert (=> b!5084768 d!1645700))

(declare-fun d!1645702 () Bool)

(declare-fun res!2164969 () Bool)

(declare-fun e!3171821 () Bool)

(assert (=> d!1645702 (=> (not res!2164969) (not e!3171821))))

(assert (=> d!1645702 (= res!2164969 (= (csize!31402 (left!42849 (right!43179 xs!286))) (+ (size!39121 (left!42849 (left!42849 (right!43179 xs!286)))) (size!39121 (right!43179 (left!42849 (right!43179 xs!286)))))))))

(assert (=> d!1645702 (= (inv!77680 (left!42849 (right!43179 xs!286))) e!3171821)))

(declare-fun b!5085496 () Bool)

(declare-fun res!2164970 () Bool)

(assert (=> b!5085496 (=> (not res!2164970) (not e!3171821))))

(assert (=> b!5085496 (= res!2164970 (and (not (= (left!42849 (left!42849 (right!43179 xs!286))) Empty!15586)) (not (= (right!43179 (left!42849 (right!43179 xs!286))) Empty!15586))))))

(declare-fun b!5085497 () Bool)

(declare-fun res!2164971 () Bool)

(assert (=> b!5085497 (=> (not res!2164971) (not e!3171821))))

(assert (=> b!5085497 (= res!2164971 (= (cheight!15797 (left!42849 (right!43179 xs!286))) (+ (max!0 (height!2163 (left!42849 (left!42849 (right!43179 xs!286)))) (height!2163 (right!43179 (left!42849 (right!43179 xs!286))))) 1)))))

(declare-fun b!5085498 () Bool)

(assert (=> b!5085498 (= e!3171821 (<= 0 (cheight!15797 (left!42849 (right!43179 xs!286)))))))

(assert (= (and d!1645702 res!2164969) b!5085496))

(assert (= (and b!5085496 res!2164970) b!5085497))

(assert (= (and b!5085497 res!2164971) b!5085498))

(declare-fun m!6142092 () Bool)

(assert (=> d!1645702 m!6142092))

(declare-fun m!6142094 () Bool)

(assert (=> d!1645702 m!6142094))

(declare-fun m!6142096 () Bool)

(assert (=> b!5085497 m!6142096))

(declare-fun m!6142098 () Bool)

(assert (=> b!5085497 m!6142098))

(assert (=> b!5085497 m!6142096))

(assert (=> b!5085497 m!6142098))

(declare-fun m!6142100 () Bool)

(assert (=> b!5085497 m!6142100))

(assert (=> b!5084773 d!1645702))

(declare-fun d!1645704 () Bool)

(declare-fun res!2164972 () Bool)

(declare-fun e!3171822 () Bool)

(assert (=> d!1645704 (=> (not res!2164972) (not e!3171822))))

(assert (=> d!1645704 (= res!2164972 (<= (size!39119 (list!19035 (xs!18964 (right!43179 (right!43179 ys!41))))) 512))))

(assert (=> d!1645704 (= (inv!77681 (right!43179 (right!43179 ys!41))) e!3171822)))

(declare-fun b!5085499 () Bool)

(declare-fun res!2164973 () Bool)

(assert (=> b!5085499 (=> (not res!2164973) (not e!3171822))))

(assert (=> b!5085499 (= res!2164973 (= (csize!31403 (right!43179 (right!43179 ys!41))) (size!39119 (list!19035 (xs!18964 (right!43179 (right!43179 ys!41)))))))))

(declare-fun b!5085500 () Bool)

(assert (=> b!5085500 (= e!3171822 (and (> (csize!31403 (right!43179 (right!43179 ys!41))) 0) (<= (csize!31403 (right!43179 (right!43179 ys!41))) 512)))))

(assert (= (and d!1645704 res!2164972) b!5085499))

(assert (= (and b!5085499 res!2164973) b!5085500))

(declare-fun m!6142102 () Bool)

(assert (=> d!1645704 m!6142102))

(assert (=> d!1645704 m!6142102))

(declare-fun m!6142104 () Bool)

(assert (=> d!1645704 m!6142104))

(assert (=> b!5085499 m!6142102))

(assert (=> b!5085499 m!6142102))

(assert (=> b!5085499 m!6142104))

(assert (=> b!5084652 d!1645704))

(declare-fun d!1645706 () Bool)

(declare-fun lt!2091580 () Int)

(assert (=> d!1645706 (>= lt!2091580 0)))

(declare-fun e!3171823 () Int)

(assert (=> d!1645706 (= lt!2091580 e!3171823)))

(declare-fun c!873775 () Bool)

(assert (=> d!1645706 (= c!873775 ((_ is Nil!58456) (innerList!15674 (xs!18964 (left!42849 ys!41)))))))

(assert (=> d!1645706 (= (size!39119 (innerList!15674 (xs!18964 (left!42849 ys!41)))) lt!2091580)))

(declare-fun b!5085501 () Bool)

(assert (=> b!5085501 (= e!3171823 0)))

(declare-fun b!5085502 () Bool)

(assert (=> b!5085502 (= e!3171823 (+ 1 (size!39119 (t!371417 (innerList!15674 (xs!18964 (left!42849 ys!41)))))))))

(assert (= (and d!1645706 c!873775) b!5085501))

(assert (= (and d!1645706 (not c!873775)) b!5085502))

(declare-fun m!6142106 () Bool)

(assert (=> b!5085502 m!6142106))

(assert (=> d!1644994 d!1645706))

(declare-fun d!1645708 () Bool)

(assert (=> d!1645708 (= (inv!77677 (xs!18964 (right!43179 (right!43179 err!4617)))) (<= (size!39119 (innerList!15674 (xs!18964 (right!43179 (right!43179 err!4617))))) 2147483647))))

(declare-fun bs!1190900 () Bool)

(assert (= bs!1190900 d!1645708))

(declare-fun m!6142108 () Bool)

(assert (=> bs!1190900 m!6142108))

(assert (=> b!5084841 d!1645708))

(declare-fun d!1645710 () Bool)

(declare-fun c!873776 () Bool)

(assert (=> d!1645710 (= c!873776 ((_ is Node!15586) (left!42849 (left!42849 (right!43179 ys!41)))))))

(declare-fun e!3171824 () Bool)

(assert (=> d!1645710 (= (inv!77676 (left!42849 (left!42849 (right!43179 ys!41)))) e!3171824)))

(declare-fun b!5085503 () Bool)

(assert (=> b!5085503 (= e!3171824 (inv!77680 (left!42849 (left!42849 (right!43179 ys!41)))))))

(declare-fun b!5085504 () Bool)

(declare-fun e!3171825 () Bool)

(assert (=> b!5085504 (= e!3171824 e!3171825)))

(declare-fun res!2164974 () Bool)

(assert (=> b!5085504 (= res!2164974 (not ((_ is Leaf!25884) (left!42849 (left!42849 (right!43179 ys!41))))))))

(assert (=> b!5085504 (=> res!2164974 e!3171825)))

(declare-fun b!5085505 () Bool)

(assert (=> b!5085505 (= e!3171825 (inv!77681 (left!42849 (left!42849 (right!43179 ys!41)))))))

(assert (= (and d!1645710 c!873776) b!5085503))

(assert (= (and d!1645710 (not c!873776)) b!5085504))

(assert (= (and b!5085504 (not res!2164974)) b!5085505))

(declare-fun m!6142110 () Bool)

(assert (=> b!5085503 m!6142110))

(declare-fun m!6142112 () Bool)

(assert (=> b!5085505 m!6142112))

(assert (=> b!5084805 d!1645710))

(declare-fun d!1645712 () Bool)

(declare-fun c!873777 () Bool)

(assert (=> d!1645712 (= c!873777 ((_ is Node!15586) (right!43179 (left!42849 (right!43179 ys!41)))))))

(declare-fun e!3171826 () Bool)

(assert (=> d!1645712 (= (inv!77676 (right!43179 (left!42849 (right!43179 ys!41)))) e!3171826)))

(declare-fun b!5085506 () Bool)

(assert (=> b!5085506 (= e!3171826 (inv!77680 (right!43179 (left!42849 (right!43179 ys!41)))))))

(declare-fun b!5085507 () Bool)

(declare-fun e!3171827 () Bool)

(assert (=> b!5085507 (= e!3171826 e!3171827)))

(declare-fun res!2164975 () Bool)

(assert (=> b!5085507 (= res!2164975 (not ((_ is Leaf!25884) (right!43179 (left!42849 (right!43179 ys!41))))))))

(assert (=> b!5085507 (=> res!2164975 e!3171827)))

(declare-fun b!5085508 () Bool)

(assert (=> b!5085508 (= e!3171827 (inv!77681 (right!43179 (left!42849 (right!43179 ys!41)))))))

(assert (= (and d!1645712 c!873777) b!5085506))

(assert (= (and d!1645712 (not c!873777)) b!5085507))

(assert (= (and b!5085507 (not res!2164975)) b!5085508))

(declare-fun m!6142114 () Bool)

(assert (=> b!5085506 m!6142114))

(declare-fun m!6142116 () Bool)

(assert (=> b!5085508 m!6142116))

(assert (=> b!5084805 d!1645712))

(declare-fun b!5085509 () Bool)

(declare-fun res!2164981 () Bool)

(declare-fun e!3171828 () Bool)

(assert (=> b!5085509 (=> (not res!2164981) (not e!3171828))))

(assert (=> b!5085509 (= res!2164981 (isBalanced!4448 (right!43179 (right!43179 (right!43179 lt!2091392)))))))

(declare-fun b!5085510 () Bool)

(declare-fun res!2164979 () Bool)

(assert (=> b!5085510 (=> (not res!2164979) (not e!3171828))))

(assert (=> b!5085510 (= res!2164979 (<= (- (height!2163 (left!42849 (right!43179 (right!43179 lt!2091392)))) (height!2163 (right!43179 (right!43179 (right!43179 lt!2091392))))) 1))))

(declare-fun b!5085511 () Bool)

(declare-fun e!3171829 () Bool)

(assert (=> b!5085511 (= e!3171829 e!3171828)))

(declare-fun res!2164977 () Bool)

(assert (=> b!5085511 (=> (not res!2164977) (not e!3171828))))

(assert (=> b!5085511 (= res!2164977 (<= (- 1) (- (height!2163 (left!42849 (right!43179 (right!43179 lt!2091392)))) (height!2163 (right!43179 (right!43179 (right!43179 lt!2091392)))))))))

(declare-fun b!5085512 () Bool)

(declare-fun res!2164980 () Bool)

(assert (=> b!5085512 (=> (not res!2164980) (not e!3171828))))

(assert (=> b!5085512 (= res!2164980 (not (isEmpty!31675 (left!42849 (right!43179 (right!43179 lt!2091392))))))))

(declare-fun b!5085513 () Bool)

(declare-fun res!2164976 () Bool)

(assert (=> b!5085513 (=> (not res!2164976) (not e!3171828))))

(assert (=> b!5085513 (= res!2164976 (isBalanced!4448 (left!42849 (right!43179 (right!43179 lt!2091392)))))))

(declare-fun b!5085514 () Bool)

(assert (=> b!5085514 (= e!3171828 (not (isEmpty!31675 (right!43179 (right!43179 (right!43179 lt!2091392))))))))

(declare-fun d!1645714 () Bool)

(declare-fun res!2164978 () Bool)

(assert (=> d!1645714 (=> res!2164978 e!3171829)))

(assert (=> d!1645714 (= res!2164978 (not ((_ is Node!15586) (right!43179 (right!43179 lt!2091392)))))))

(assert (=> d!1645714 (= (isBalanced!4448 (right!43179 (right!43179 lt!2091392))) e!3171829)))

(assert (= (and d!1645714 (not res!2164978)) b!5085511))

(assert (= (and b!5085511 res!2164977) b!5085510))

(assert (= (and b!5085510 res!2164979) b!5085513))

(assert (= (and b!5085513 res!2164976) b!5085509))

(assert (= (and b!5085509 res!2164981) b!5085512))

(assert (= (and b!5085512 res!2164980) b!5085514))

(declare-fun m!6142118 () Bool)

(assert (=> b!5085513 m!6142118))

(declare-fun m!6142120 () Bool)

(assert (=> b!5085514 m!6142120))

(declare-fun m!6142122 () Bool)

(assert (=> b!5085512 m!6142122))

(declare-fun m!6142124 () Bool)

(assert (=> b!5085511 m!6142124))

(declare-fun m!6142126 () Bool)

(assert (=> b!5085511 m!6142126))

(assert (=> b!5085510 m!6142124))

(assert (=> b!5085510 m!6142126))

(declare-fun m!6142128 () Bool)

(assert (=> b!5085509 m!6142128))

(assert (=> b!5084632 d!1645714))

(declare-fun d!1645716 () Bool)

(assert (=> d!1645716 (= (height!2163 (left!42849 (left!42849 lt!2091392))) (ite ((_ is Empty!15586) (left!42849 (left!42849 lt!2091392))) 0 (ite ((_ is Leaf!25884) (left!42849 (left!42849 lt!2091392))) 1 (cheight!15797 (left!42849 (left!42849 lt!2091392))))))))

(assert (=> b!5084757 d!1645716))

(declare-fun d!1645718 () Bool)

(assert (=> d!1645718 (= (height!2163 (right!43179 (left!42849 lt!2091392))) (ite ((_ is Empty!15586) (right!43179 (left!42849 lt!2091392))) 0 (ite ((_ is Leaf!25884) (right!43179 (left!42849 lt!2091392))) 1 (cheight!15797 (right!43179 (left!42849 lt!2091392))))))))

(assert (=> b!5084757 d!1645718))

(declare-fun d!1645720 () Bool)

(declare-fun lt!2091581 () Int)

(assert (=> d!1645720 (>= lt!2091581 0)))

(declare-fun e!3171830 () Int)

(assert (=> d!1645720 (= lt!2091581 e!3171830)))

(declare-fun c!873778 () Bool)

(assert (=> d!1645720 (= c!873778 ((_ is Nil!58456) (list!19035 (xs!18964 (left!42849 err!4617)))))))

(assert (=> d!1645720 (= (size!39119 (list!19035 (xs!18964 (left!42849 err!4617)))) lt!2091581)))

(declare-fun b!5085515 () Bool)

(assert (=> b!5085515 (= e!3171830 0)))

(declare-fun b!5085516 () Bool)

(assert (=> b!5085516 (= e!3171830 (+ 1 (size!39119 (t!371417 (list!19035 (xs!18964 (left!42849 err!4617)))))))))

(assert (= (and d!1645720 c!873778) b!5085515))

(assert (= (and d!1645720 (not c!873778)) b!5085516))

(declare-fun m!6142130 () Bool)

(assert (=> b!5085516 m!6142130))

(assert (=> b!5084754 d!1645720))

(declare-fun d!1645722 () Bool)

(assert (=> d!1645722 (= (list!19035 (xs!18964 (left!42849 err!4617))) (innerList!15674 (xs!18964 (left!42849 err!4617))))))

(assert (=> b!5084754 d!1645722))

(declare-fun d!1645724 () Bool)

(assert (=> d!1645724 (= (list!19035 (xs!18964 (left!42849 (left!42849 ys!41)))) (innerList!15674 (xs!18964 (left!42849 (left!42849 ys!41)))))))

(assert (=> b!5084718 d!1645724))

(declare-fun d!1645726 () Bool)

(declare-fun res!2164982 () Bool)

(declare-fun e!3171831 () Bool)

(assert (=> d!1645726 (=> (not res!2164982) (not e!3171831))))

(assert (=> d!1645726 (= res!2164982 (= (csize!31402 (right!43179 (left!42849 xs!286))) (+ (size!39121 (left!42849 (right!43179 (left!42849 xs!286)))) (size!39121 (right!43179 (right!43179 (left!42849 xs!286)))))))))

(assert (=> d!1645726 (= (inv!77680 (right!43179 (left!42849 xs!286))) e!3171831)))

(declare-fun b!5085517 () Bool)

(declare-fun res!2164983 () Bool)

(assert (=> b!5085517 (=> (not res!2164983) (not e!3171831))))

(assert (=> b!5085517 (= res!2164983 (and (not (= (left!42849 (right!43179 (left!42849 xs!286))) Empty!15586)) (not (= (right!43179 (right!43179 (left!42849 xs!286))) Empty!15586))))))

(declare-fun b!5085518 () Bool)

(declare-fun res!2164984 () Bool)

(assert (=> b!5085518 (=> (not res!2164984) (not e!3171831))))

(assert (=> b!5085518 (= res!2164984 (= (cheight!15797 (right!43179 (left!42849 xs!286))) (+ (max!0 (height!2163 (left!42849 (right!43179 (left!42849 xs!286)))) (height!2163 (right!43179 (right!43179 (left!42849 xs!286))))) 1)))))

(declare-fun b!5085519 () Bool)

(assert (=> b!5085519 (= e!3171831 (<= 0 (cheight!15797 (right!43179 (left!42849 xs!286)))))))

(assert (= (and d!1645726 res!2164982) b!5085517))

(assert (= (and b!5085517 res!2164983) b!5085518))

(assert (= (and b!5085518 res!2164984) b!5085519))

(declare-fun m!6142132 () Bool)

(assert (=> d!1645726 m!6142132))

(declare-fun m!6142134 () Bool)

(assert (=> d!1645726 m!6142134))

(declare-fun m!6142136 () Bool)

(assert (=> b!5085518 m!6142136))

(declare-fun m!6142138 () Bool)

(assert (=> b!5085518 m!6142138))

(assert (=> b!5085518 m!6142136))

(assert (=> b!5085518 m!6142138))

(declare-fun m!6142140 () Bool)

(assert (=> b!5085518 m!6142140))

(assert (=> b!5084629 d!1645726))

(declare-fun d!1645728 () Bool)

(assert (=> d!1645728 (= (max!0 (height!2163 (left!42849 (left!42849 ys!41))) (height!2163 (right!43179 (left!42849 ys!41)))) (ite (< (height!2163 (left!42849 (left!42849 ys!41))) (height!2163 (right!43179 (left!42849 ys!41)))) (height!2163 (right!43179 (left!42849 ys!41))) (height!2163 (left!42849 (left!42849 ys!41)))))))

(assert (=> b!5084639 d!1645728))

(declare-fun d!1645730 () Bool)

(assert (=> d!1645730 (= (height!2163 (left!42849 (left!42849 ys!41))) (ite ((_ is Empty!15586) (left!42849 (left!42849 ys!41))) 0 (ite ((_ is Leaf!25884) (left!42849 (left!42849 ys!41))) 1 (cheight!15797 (left!42849 (left!42849 ys!41))))))))

(assert (=> b!5084639 d!1645730))

(declare-fun d!1645732 () Bool)

(assert (=> d!1645732 (= (height!2163 (right!43179 (left!42849 ys!41))) (ite ((_ is Empty!15586) (right!43179 (left!42849 ys!41))) 0 (ite ((_ is Leaf!25884) (right!43179 (left!42849 ys!41))) 1 (cheight!15797 (right!43179 (left!42849 ys!41))))))))

(assert (=> b!5084639 d!1645732))

(assert (=> bm!354411 d!1645072))

(declare-fun d!1645734 () Bool)

(assert (=> d!1645734 (= (max!0 (height!2163 (left!42849 (right!43179 ys!41))) (height!2163 (right!43179 (right!43179 ys!41)))) (ite (< (height!2163 (left!42849 (right!43179 ys!41))) (height!2163 (right!43179 (right!43179 ys!41)))) (height!2163 (right!43179 (right!43179 ys!41))) (height!2163 (left!42849 (right!43179 ys!41)))))))

(assert (=> b!5084591 d!1645734))

(declare-fun d!1645736 () Bool)

(assert (=> d!1645736 (= (height!2163 (left!42849 (right!43179 ys!41))) (ite ((_ is Empty!15586) (left!42849 (right!43179 ys!41))) 0 (ite ((_ is Leaf!25884) (left!42849 (right!43179 ys!41))) 1 (cheight!15797 (left!42849 (right!43179 ys!41))))))))

(assert (=> b!5084591 d!1645736))

(declare-fun d!1645738 () Bool)

(assert (=> d!1645738 (= (height!2163 (right!43179 (right!43179 ys!41))) (ite ((_ is Empty!15586) (right!43179 (right!43179 ys!41))) 0 (ite ((_ is Leaf!25884) (right!43179 (right!43179 ys!41))) 1 (cheight!15797 (right!43179 (right!43179 ys!41))))))))

(assert (=> b!5084591 d!1645738))

(declare-fun d!1645740 () Bool)

(assert (=> d!1645740 (= (inv!77677 (xs!18964 (left!42849 (left!42849 ys!41)))) (<= (size!39119 (innerList!15674 (xs!18964 (left!42849 (left!42849 ys!41))))) 2147483647))))

(declare-fun bs!1190901 () Bool)

(assert (= bs!1190901 d!1645740))

(declare-fun m!6142142 () Bool)

(assert (=> bs!1190901 m!6142142))

(assert (=> b!5084832 d!1645740))

(declare-fun d!1645742 () Bool)

(assert (=> d!1645742 (= (inv!77677 (xs!18964 (right!43179 (right!43179 xs!286)))) (<= (size!39119 (innerList!15674 (xs!18964 (right!43179 (right!43179 xs!286))))) 2147483647))))

(declare-fun bs!1190902 () Bool)

(assert (= bs!1190902 d!1645742))

(declare-fun m!6142144 () Bool)

(assert (=> bs!1190902 m!6142144))

(assert (=> b!5084828 d!1645742))

(declare-fun b!5085521 () Bool)

(declare-fun e!3171832 () List!58580)

(assert (=> b!5085521 (= e!3171832 (Cons!58456 (h!64904 (++!12815 (list!19033 xs!286) (list!19033 (left!42849 (left!42849 ys!41))))) (++!12815 (t!371417 (++!12815 (list!19033 xs!286) (list!19033 (left!42849 (left!42849 ys!41))))) (list!19033 (right!43179 (left!42849 ys!41))))))))

(declare-fun d!1645744 () Bool)

(declare-fun e!3171833 () Bool)

(assert (=> d!1645744 e!3171833))

(declare-fun res!2164986 () Bool)

(assert (=> d!1645744 (=> (not res!2164986) (not e!3171833))))

(declare-fun lt!2091582 () List!58580)

(assert (=> d!1645744 (= res!2164986 (= (content!10430 lt!2091582) ((_ map or) (content!10430 (++!12815 (list!19033 xs!286) (list!19033 (left!42849 (left!42849 ys!41))))) (content!10430 (list!19033 (right!43179 (left!42849 ys!41)))))))))

(assert (=> d!1645744 (= lt!2091582 e!3171832)))

(declare-fun c!873779 () Bool)

(assert (=> d!1645744 (= c!873779 ((_ is Nil!58456) (++!12815 (list!19033 xs!286) (list!19033 (left!42849 (left!42849 ys!41))))))))

(assert (=> d!1645744 (= (++!12815 (++!12815 (list!19033 xs!286) (list!19033 (left!42849 (left!42849 ys!41)))) (list!19033 (right!43179 (left!42849 ys!41)))) lt!2091582)))

(declare-fun b!5085520 () Bool)

(assert (=> b!5085520 (= e!3171832 (list!19033 (right!43179 (left!42849 ys!41))))))

(declare-fun b!5085523 () Bool)

(assert (=> b!5085523 (= e!3171833 (or (not (= (list!19033 (right!43179 (left!42849 ys!41))) Nil!58456)) (= lt!2091582 (++!12815 (list!19033 xs!286) (list!19033 (left!42849 (left!42849 ys!41)))))))))

(declare-fun b!5085522 () Bool)

(declare-fun res!2164985 () Bool)

(assert (=> b!5085522 (=> (not res!2164985) (not e!3171833))))

(assert (=> b!5085522 (= res!2164985 (= (size!39119 lt!2091582) (+ (size!39119 (++!12815 (list!19033 xs!286) (list!19033 (left!42849 (left!42849 ys!41))))) (size!39119 (list!19033 (right!43179 (left!42849 ys!41)))))))))

(assert (= (and d!1645744 c!873779) b!5085520))

(assert (= (and d!1645744 (not c!873779)) b!5085521))

(assert (= (and d!1645744 res!2164986) b!5085522))

(assert (= (and b!5085522 res!2164985) b!5085523))

(assert (=> b!5085521 m!6139652))

(declare-fun m!6142146 () Bool)

(assert (=> b!5085521 m!6142146))

(declare-fun m!6142148 () Bool)

(assert (=> d!1645744 m!6142148))

(assert (=> d!1645744 m!6139656))

(declare-fun m!6142150 () Bool)

(assert (=> d!1645744 m!6142150))

(assert (=> d!1645744 m!6139652))

(declare-fun m!6142152 () Bool)

(assert (=> d!1645744 m!6142152))

(declare-fun m!6142154 () Bool)

(assert (=> b!5085522 m!6142154))

(assert (=> b!5085522 m!6139656))

(declare-fun m!6142156 () Bool)

(assert (=> b!5085522 m!6142156))

(assert (=> b!5085522 m!6139652))

(declare-fun m!6142158 () Bool)

(assert (=> b!5085522 m!6142158))

(assert (=> bm!354399 d!1645744))

(assert (=> b!5084791 d!1645674))

(assert (=> b!5084791 d!1645676))

(declare-fun d!1645746 () Bool)

(declare-fun lt!2091583 () Bool)

(assert (=> d!1645746 (= lt!2091583 (isEmpty!31677 (list!19033 (right!43179 (left!42849 ys!41)))))))

(assert (=> d!1645746 (= lt!2091583 (= (size!39121 (right!43179 (left!42849 ys!41))) 0))))

(assert (=> d!1645746 (= (isEmpty!31675 (right!43179 (left!42849 ys!41))) lt!2091583)))

(declare-fun bs!1190903 () Bool)

(assert (= bs!1190903 d!1645746))

(assert (=> bs!1190903 m!6139652))

(assert (=> bs!1190903 m!6139652))

(declare-fun m!6142160 () Bool)

(assert (=> bs!1190903 m!6142160))

(assert (=> bs!1190903 m!6140386))

(assert (=> b!5084616 d!1645746))

(declare-fun b!5085525 () Bool)

(declare-fun e!3171834 () List!58580)

(assert (=> b!5085525 (= e!3171834 (Cons!58456 (h!64904 (list!19033 (right!43179 xs!286))) (++!12815 (t!371417 (list!19033 (right!43179 xs!286))) (list!19033 ys!41))))))

(declare-fun d!1645748 () Bool)

(declare-fun e!3171835 () Bool)

(assert (=> d!1645748 e!3171835))

(declare-fun res!2164988 () Bool)

(assert (=> d!1645748 (=> (not res!2164988) (not e!3171835))))

(declare-fun lt!2091584 () List!58580)

(assert (=> d!1645748 (= res!2164988 (= (content!10430 lt!2091584) ((_ map or) (content!10430 (list!19033 (right!43179 xs!286))) (content!10430 (list!19033 ys!41)))))))

(assert (=> d!1645748 (= lt!2091584 e!3171834)))

(declare-fun c!873780 () Bool)

(assert (=> d!1645748 (= c!873780 ((_ is Nil!58456) (list!19033 (right!43179 xs!286))))))

(assert (=> d!1645748 (= (++!12815 (list!19033 (right!43179 xs!286)) (list!19033 ys!41)) lt!2091584)))

(declare-fun b!5085524 () Bool)

(assert (=> b!5085524 (= e!3171834 (list!19033 ys!41))))

(declare-fun b!5085527 () Bool)

(assert (=> b!5085527 (= e!3171835 (or (not (= (list!19033 ys!41) Nil!58456)) (= lt!2091584 (list!19033 (right!43179 xs!286)))))))

(declare-fun b!5085526 () Bool)

(declare-fun res!2164987 () Bool)

(assert (=> b!5085526 (=> (not res!2164987) (not e!3171835))))

(assert (=> b!5085526 (= res!2164987 (= (size!39119 lt!2091584) (+ (size!39119 (list!19033 (right!43179 xs!286))) (size!39119 (list!19033 ys!41)))))))

(assert (= (and d!1645748 c!873780) b!5085524))

(assert (= (and d!1645748 (not c!873780)) b!5085525))

(assert (= (and d!1645748 res!2164988) b!5085526))

(assert (= (and b!5085526 res!2164987) b!5085527))

(assert (=> b!5085525 m!6139376))

(declare-fun m!6142162 () Bool)

(assert (=> b!5085525 m!6142162))

(declare-fun m!6142164 () Bool)

(assert (=> d!1645748 m!6142164))

(assert (=> d!1645748 m!6139648))

(assert (=> d!1645748 m!6140286))

(assert (=> d!1645748 m!6139376))

(assert (=> d!1645748 m!6139702))

(declare-fun m!6142166 () Bool)

(assert (=> b!5085526 m!6142166))

(assert (=> b!5085526 m!6139648))

(assert (=> b!5085526 m!6140292))

(assert (=> b!5085526 m!6139376))

(assert (=> b!5085526 m!6139708))

(assert (=> bm!354401 d!1645748))

(declare-fun d!1645750 () Bool)

(assert (=> d!1645750 (= (inv!77677 (xs!18964 (right!43179 (right!43179 ys!41)))) (<= (size!39119 (innerList!15674 (xs!18964 (right!43179 (right!43179 ys!41))))) 2147483647))))

(declare-fun bs!1190904 () Bool)

(assert (= bs!1190904 d!1645750))

(declare-fun m!6142168 () Bool)

(assert (=> bs!1190904 m!6142168))

(assert (=> b!5084809 d!1645750))

(declare-fun d!1645752 () Bool)

(declare-fun lt!2091585 () Int)

(assert (=> d!1645752 (>= lt!2091585 0)))

(declare-fun e!3171836 () Int)

(assert (=> d!1645752 (= lt!2091585 e!3171836)))

(declare-fun c!873781 () Bool)

(assert (=> d!1645752 (= c!873781 ((_ is Nil!58456) (list!19035 (xs!18964 (right!43179 xs!286)))))))

(assert (=> d!1645752 (= (size!39119 (list!19035 (xs!18964 (right!43179 xs!286)))) lt!2091585)))

(declare-fun b!5085528 () Bool)

(assert (=> b!5085528 (= e!3171836 0)))

(declare-fun b!5085529 () Bool)

(assert (=> b!5085529 (= e!3171836 (+ 1 (size!39119 (t!371417 (list!19035 (xs!18964 (right!43179 xs!286)))))))))

(assert (= (and d!1645752 c!873781) b!5085528))

(assert (= (and d!1645752 (not c!873781)) b!5085529))

(declare-fun m!6142170 () Bool)

(assert (=> b!5085529 m!6142170))

(assert (=> d!1645088 d!1645752))

(declare-fun d!1645754 () Bool)

(assert (=> d!1645754 (= (list!19035 (xs!18964 (right!43179 xs!286))) (innerList!15674 (xs!18964 (right!43179 xs!286))))))

(assert (=> d!1645088 d!1645754))

(declare-fun d!1645756 () Bool)

(assert (=> d!1645756 (= (list!19035 (xs!18964 (right!43179 (right!43179 xs!286)))) (innerList!15674 (xs!18964 (right!43179 (right!43179 xs!286)))))))

(assert (=> b!5084665 d!1645756))

(declare-fun d!1645758 () Bool)

(declare-fun res!2164989 () Bool)

(declare-fun e!3171837 () Bool)

(assert (=> d!1645758 (=> (not res!2164989) (not e!3171837))))

(assert (=> d!1645758 (= res!2164989 (= (csize!31402 (left!42849 (left!42849 err!4617))) (+ (size!39121 (left!42849 (left!42849 (left!42849 err!4617)))) (size!39121 (right!43179 (left!42849 (left!42849 err!4617)))))))))

(assert (=> d!1645758 (= (inv!77680 (left!42849 (left!42849 err!4617))) e!3171837)))

(declare-fun b!5085530 () Bool)

(declare-fun res!2164990 () Bool)

(assert (=> b!5085530 (=> (not res!2164990) (not e!3171837))))

(assert (=> b!5085530 (= res!2164990 (and (not (= (left!42849 (left!42849 (left!42849 err!4617))) Empty!15586)) (not (= (right!43179 (left!42849 (left!42849 err!4617))) Empty!15586))))))

(declare-fun b!5085531 () Bool)

(declare-fun res!2164991 () Bool)

(assert (=> b!5085531 (=> (not res!2164991) (not e!3171837))))

(assert (=> b!5085531 (= res!2164991 (= (cheight!15797 (left!42849 (left!42849 err!4617))) (+ (max!0 (height!2163 (left!42849 (left!42849 (left!42849 err!4617)))) (height!2163 (right!43179 (left!42849 (left!42849 err!4617))))) 1)))))

(declare-fun b!5085532 () Bool)

(assert (=> b!5085532 (= e!3171837 (<= 0 (cheight!15797 (left!42849 (left!42849 err!4617)))))))

(assert (= (and d!1645758 res!2164989) b!5085530))

(assert (= (and b!5085530 res!2164990) b!5085531))

(assert (= (and b!5085531 res!2164991) b!5085532))

(declare-fun m!6142172 () Bool)

(assert (=> d!1645758 m!6142172))

(declare-fun m!6142174 () Bool)

(assert (=> d!1645758 m!6142174))

(declare-fun m!6142176 () Bool)

(assert (=> b!5085531 m!6142176))

(declare-fun m!6142178 () Bool)

(assert (=> b!5085531 m!6142178))

(assert (=> b!5085531 m!6142176))

(assert (=> b!5085531 m!6142178))

(declare-fun m!6142180 () Bool)

(assert (=> b!5085531 m!6142180))

(assert (=> b!5084669 d!1645758))

(declare-fun b!5085534 () Bool)

(declare-fun e!3171838 () List!58580)

(assert (=> b!5085534 (= e!3171838 (Cons!58456 (h!64904 (list!19033 (left!42849 (left!42849 (right!43179 xs!286))))) (++!12815 (t!371417 (list!19033 (left!42849 (left!42849 (right!43179 xs!286))))) (list!19033 (right!43179 (left!42849 (right!43179 xs!286)))))))))

(declare-fun d!1645760 () Bool)

(declare-fun e!3171839 () Bool)

(assert (=> d!1645760 e!3171839))

(declare-fun res!2164993 () Bool)

(assert (=> d!1645760 (=> (not res!2164993) (not e!3171839))))

(declare-fun lt!2091586 () List!58580)

(assert (=> d!1645760 (= res!2164993 (= (content!10430 lt!2091586) ((_ map or) (content!10430 (list!19033 (left!42849 (left!42849 (right!43179 xs!286))))) (content!10430 (list!19033 (right!43179 (left!42849 (right!43179 xs!286))))))))))

(assert (=> d!1645760 (= lt!2091586 e!3171838)))

(declare-fun c!873782 () Bool)

(assert (=> d!1645760 (= c!873782 ((_ is Nil!58456) (list!19033 (left!42849 (left!42849 (right!43179 xs!286))))))))

(assert (=> d!1645760 (= (++!12815 (list!19033 (left!42849 (left!42849 (right!43179 xs!286)))) (list!19033 (right!43179 (left!42849 (right!43179 xs!286))))) lt!2091586)))

(declare-fun b!5085533 () Bool)

(assert (=> b!5085533 (= e!3171838 (list!19033 (right!43179 (left!42849 (right!43179 xs!286)))))))

(declare-fun b!5085536 () Bool)

(assert (=> b!5085536 (= e!3171839 (or (not (= (list!19033 (right!43179 (left!42849 (right!43179 xs!286)))) Nil!58456)) (= lt!2091586 (list!19033 (left!42849 (left!42849 (right!43179 xs!286)))))))))

(declare-fun b!5085535 () Bool)

(declare-fun res!2164992 () Bool)

(assert (=> b!5085535 (=> (not res!2164992) (not e!3171839))))

(assert (=> b!5085535 (= res!2164992 (= (size!39119 lt!2091586) (+ (size!39119 (list!19033 (left!42849 (left!42849 (right!43179 xs!286))))) (size!39119 (list!19033 (right!43179 (left!42849 (right!43179 xs!286))))))))))

(assert (= (and d!1645760 c!873782) b!5085533))

(assert (= (and d!1645760 (not c!873782)) b!5085534))

(assert (= (and d!1645760 res!2164993) b!5085535))

(assert (= (and b!5085535 res!2164992) b!5085536))

(assert (=> b!5085534 m!6140414))

(declare-fun m!6142182 () Bool)

(assert (=> b!5085534 m!6142182))

(declare-fun m!6142184 () Bool)

(assert (=> d!1645760 m!6142184))

(assert (=> d!1645760 m!6140412))

(declare-fun m!6142186 () Bool)

(assert (=> d!1645760 m!6142186))

(assert (=> d!1645760 m!6140414))

(declare-fun m!6142188 () Bool)

(assert (=> d!1645760 m!6142188))

(declare-fun m!6142190 () Bool)

(assert (=> b!5085535 m!6142190))

(assert (=> b!5085535 m!6140412))

(declare-fun m!6142192 () Bool)

(assert (=> b!5085535 m!6142192))

(assert (=> b!5085535 m!6140414))

(declare-fun m!6142194 () Bool)

(assert (=> b!5085535 m!6142194))

(assert (=> b!5084662 d!1645760))

(declare-fun b!5085538 () Bool)

(declare-fun e!3171840 () List!58580)

(declare-fun e!3171841 () List!58580)

(assert (=> b!5085538 (= e!3171840 e!3171841)))

(declare-fun c!873784 () Bool)

(assert (=> b!5085538 (= c!873784 ((_ is Leaf!25884) (left!42849 (left!42849 (right!43179 xs!286)))))))

(declare-fun b!5085537 () Bool)

(assert (=> b!5085537 (= e!3171840 Nil!58456)))

(declare-fun b!5085540 () Bool)

(assert (=> b!5085540 (= e!3171841 (++!12815 (list!19033 (left!42849 (left!42849 (left!42849 (right!43179 xs!286))))) (list!19033 (right!43179 (left!42849 (left!42849 (right!43179 xs!286)))))))))

(declare-fun d!1645762 () Bool)

(declare-fun c!873783 () Bool)

(assert (=> d!1645762 (= c!873783 ((_ is Empty!15586) (left!42849 (left!42849 (right!43179 xs!286)))))))

(assert (=> d!1645762 (= (list!19033 (left!42849 (left!42849 (right!43179 xs!286)))) e!3171840)))

(declare-fun b!5085539 () Bool)

(assert (=> b!5085539 (= e!3171841 (list!19035 (xs!18964 (left!42849 (left!42849 (right!43179 xs!286))))))))

(assert (= (and d!1645762 c!873783) b!5085537))

(assert (= (and d!1645762 (not c!873783)) b!5085538))

(assert (= (and b!5085538 c!873784) b!5085539))

(assert (= (and b!5085538 (not c!873784)) b!5085540))

(declare-fun m!6142196 () Bool)

(assert (=> b!5085540 m!6142196))

(declare-fun m!6142198 () Bool)

(assert (=> b!5085540 m!6142198))

(assert (=> b!5085540 m!6142196))

(assert (=> b!5085540 m!6142198))

(declare-fun m!6142200 () Bool)

(assert (=> b!5085540 m!6142200))

(declare-fun m!6142202 () Bool)

(assert (=> b!5085539 m!6142202))

(assert (=> b!5084662 d!1645762))

(declare-fun b!5085542 () Bool)

(declare-fun e!3171842 () List!58580)

(declare-fun e!3171843 () List!58580)

(assert (=> b!5085542 (= e!3171842 e!3171843)))

(declare-fun c!873786 () Bool)

(assert (=> b!5085542 (= c!873786 ((_ is Leaf!25884) (right!43179 (left!42849 (right!43179 xs!286)))))))

(declare-fun b!5085541 () Bool)

(assert (=> b!5085541 (= e!3171842 Nil!58456)))

(declare-fun b!5085544 () Bool)

(assert (=> b!5085544 (= e!3171843 (++!12815 (list!19033 (left!42849 (right!43179 (left!42849 (right!43179 xs!286))))) (list!19033 (right!43179 (right!43179 (left!42849 (right!43179 xs!286)))))))))

(declare-fun d!1645764 () Bool)

(declare-fun c!873785 () Bool)

(assert (=> d!1645764 (= c!873785 ((_ is Empty!15586) (right!43179 (left!42849 (right!43179 xs!286)))))))

(assert (=> d!1645764 (= (list!19033 (right!43179 (left!42849 (right!43179 xs!286)))) e!3171842)))

(declare-fun b!5085543 () Bool)

(assert (=> b!5085543 (= e!3171843 (list!19035 (xs!18964 (right!43179 (left!42849 (right!43179 xs!286))))))))

(assert (= (and d!1645764 c!873785) b!5085541))

(assert (= (and d!1645764 (not c!873785)) b!5085542))

(assert (= (and b!5085542 c!873786) b!5085543))

(assert (= (and b!5085542 (not c!873786)) b!5085544))

(declare-fun m!6142204 () Bool)

(assert (=> b!5085544 m!6142204))

(declare-fun m!6142206 () Bool)

(assert (=> b!5085544 m!6142206))

(assert (=> b!5085544 m!6142204))

(assert (=> b!5085544 m!6142206))

(declare-fun m!6142208 () Bool)

(assert (=> b!5085544 m!6142208))

(declare-fun m!6142210 () Bool)

(assert (=> b!5085543 m!6142210))

(assert (=> b!5084662 d!1645764))

(declare-fun d!1645766 () Bool)

(assert (=> d!1645766 (= (height!2163 (left!42849 (right!43179 xs!286))) (ite ((_ is Empty!15586) (left!42849 (right!43179 xs!286))) 0 (ite ((_ is Leaf!25884) (left!42849 (right!43179 xs!286))) 1 (cheight!15797 (left!42849 (right!43179 xs!286))))))))

(assert (=> b!5084767 d!1645766))

(declare-fun d!1645768 () Bool)

(assert (=> d!1645768 (= (height!2163 (right!43179 (right!43179 xs!286))) (ite ((_ is Empty!15586) (right!43179 (right!43179 xs!286))) 0 (ite ((_ is Leaf!25884) (right!43179 (right!43179 xs!286))) 1 (cheight!15797 (right!43179 (right!43179 xs!286))))))))

(assert (=> b!5084767 d!1645768))

(declare-fun d!1645770 () Bool)

(declare-fun c!873787 () Bool)

(assert (=> d!1645770 (= c!873787 ((_ is Node!15586) (left!42849 (left!42849 (left!42849 ys!41)))))))

(declare-fun e!3171844 () Bool)

(assert (=> d!1645770 (= (inv!77676 (left!42849 (left!42849 (left!42849 ys!41)))) e!3171844)))

(declare-fun b!5085545 () Bool)

(assert (=> b!5085545 (= e!3171844 (inv!77680 (left!42849 (left!42849 (left!42849 ys!41)))))))

(declare-fun b!5085546 () Bool)

(declare-fun e!3171845 () Bool)

(assert (=> b!5085546 (= e!3171844 e!3171845)))

(declare-fun res!2164994 () Bool)

(assert (=> b!5085546 (= res!2164994 (not ((_ is Leaf!25884) (left!42849 (left!42849 (left!42849 ys!41))))))))

(assert (=> b!5085546 (=> res!2164994 e!3171845)))

(declare-fun b!5085547 () Bool)

(assert (=> b!5085547 (= e!3171845 (inv!77681 (left!42849 (left!42849 (left!42849 ys!41)))))))

(assert (= (and d!1645770 c!873787) b!5085545))

(assert (= (and d!1645770 (not c!873787)) b!5085546))

(assert (= (and b!5085546 (not res!2164994)) b!5085547))

(declare-fun m!6142212 () Bool)

(assert (=> b!5085545 m!6142212))

(declare-fun m!6142214 () Bool)

(assert (=> b!5085547 m!6142214))

(assert (=> b!5084831 d!1645770))

(declare-fun d!1645772 () Bool)

(declare-fun c!873788 () Bool)

(assert (=> d!1645772 (= c!873788 ((_ is Node!15586) (right!43179 (left!42849 (left!42849 ys!41)))))))

(declare-fun e!3171846 () Bool)

(assert (=> d!1645772 (= (inv!77676 (right!43179 (left!42849 (left!42849 ys!41)))) e!3171846)))

(declare-fun b!5085548 () Bool)

(assert (=> b!5085548 (= e!3171846 (inv!77680 (right!43179 (left!42849 (left!42849 ys!41)))))))

(declare-fun b!5085549 () Bool)

(declare-fun e!3171847 () Bool)

(assert (=> b!5085549 (= e!3171846 e!3171847)))

(declare-fun res!2164995 () Bool)

(assert (=> b!5085549 (= res!2164995 (not ((_ is Leaf!25884) (right!43179 (left!42849 (left!42849 ys!41))))))))

(assert (=> b!5085549 (=> res!2164995 e!3171847)))

(declare-fun b!5085550 () Bool)

(assert (=> b!5085550 (= e!3171847 (inv!77681 (right!43179 (left!42849 (left!42849 ys!41)))))))

(assert (= (and d!1645772 c!873788) b!5085548))

(assert (= (and d!1645772 (not c!873788)) b!5085549))

(assert (= (and b!5085549 (not res!2164995)) b!5085550))

(declare-fun m!6142216 () Bool)

(assert (=> b!5085548 m!6142216))

(declare-fun m!6142218 () Bool)

(assert (=> b!5085550 m!6142218))

(assert (=> b!5084831 d!1645772))

(declare-fun d!1645774 () Bool)

(declare-fun c!873789 () Bool)

(assert (=> d!1645774 (= c!873789 ((_ is Node!15586) (left!42849 (right!43179 (right!43179 err!4617)))))))

(declare-fun e!3171848 () Bool)

(assert (=> d!1645774 (= (inv!77676 (left!42849 (right!43179 (right!43179 err!4617)))) e!3171848)))

(declare-fun b!5085551 () Bool)

(assert (=> b!5085551 (= e!3171848 (inv!77680 (left!42849 (right!43179 (right!43179 err!4617)))))))

(declare-fun b!5085552 () Bool)

(declare-fun e!3171849 () Bool)

(assert (=> b!5085552 (= e!3171848 e!3171849)))

(declare-fun res!2164996 () Bool)

(assert (=> b!5085552 (= res!2164996 (not ((_ is Leaf!25884) (left!42849 (right!43179 (right!43179 err!4617))))))))

(assert (=> b!5085552 (=> res!2164996 e!3171849)))

(declare-fun b!5085553 () Bool)

(assert (=> b!5085553 (= e!3171849 (inv!77681 (left!42849 (right!43179 (right!43179 err!4617)))))))

(assert (= (and d!1645774 c!873789) b!5085551))

(assert (= (and d!1645774 (not c!873789)) b!5085552))

(assert (= (and b!5085552 (not res!2164996)) b!5085553))

(declare-fun m!6142220 () Bool)

(assert (=> b!5085551 m!6142220))

(declare-fun m!6142222 () Bool)

(assert (=> b!5085553 m!6142222))

(assert (=> b!5084840 d!1645774))

(declare-fun d!1645776 () Bool)

(declare-fun c!873790 () Bool)

(assert (=> d!1645776 (= c!873790 ((_ is Node!15586) (right!43179 (right!43179 (right!43179 err!4617)))))))

(declare-fun e!3171850 () Bool)

(assert (=> d!1645776 (= (inv!77676 (right!43179 (right!43179 (right!43179 err!4617)))) e!3171850)))

(declare-fun b!5085554 () Bool)

(assert (=> b!5085554 (= e!3171850 (inv!77680 (right!43179 (right!43179 (right!43179 err!4617)))))))

(declare-fun b!5085555 () Bool)

(declare-fun e!3171851 () Bool)

(assert (=> b!5085555 (= e!3171850 e!3171851)))

(declare-fun res!2164997 () Bool)

(assert (=> b!5085555 (= res!2164997 (not ((_ is Leaf!25884) (right!43179 (right!43179 (right!43179 err!4617))))))))

(assert (=> b!5085555 (=> res!2164997 e!3171851)))

(declare-fun b!5085556 () Bool)

(assert (=> b!5085556 (= e!3171851 (inv!77681 (right!43179 (right!43179 (right!43179 err!4617)))))))

(assert (= (and d!1645776 c!873790) b!5085554))

(assert (= (and d!1645776 (not c!873790)) b!5085555))

(assert (= (and b!5085555 (not res!2164997)) b!5085556))

(declare-fun m!6142224 () Bool)

(assert (=> b!5085554 m!6142224))

(declare-fun m!6142226 () Bool)

(assert (=> b!5085556 m!6142226))

(assert (=> b!5084840 d!1645776))

(declare-fun b!5085558 () Bool)

(declare-fun e!3171852 () List!58580)

(assert (=> b!5085558 (= e!3171852 (Cons!58456 (h!64904 (list!19033 (left!42849 (right!43179 xs!286)))) (++!12815 (t!371417 (list!19033 (left!42849 (right!43179 xs!286)))) call!354401)))))

(declare-fun d!1645778 () Bool)

(declare-fun e!3171853 () Bool)

(assert (=> d!1645778 e!3171853))

(declare-fun res!2164999 () Bool)

(assert (=> d!1645778 (=> (not res!2164999) (not e!3171853))))

(declare-fun lt!2091587 () List!58580)

(assert (=> d!1645778 (= res!2164999 (= (content!10430 lt!2091587) ((_ map or) (content!10430 (list!19033 (left!42849 (right!43179 xs!286)))) (content!10430 call!354401))))))

(assert (=> d!1645778 (= lt!2091587 e!3171852)))

(declare-fun c!873791 () Bool)

(assert (=> d!1645778 (= c!873791 ((_ is Nil!58456) (list!19033 (left!42849 (right!43179 xs!286)))))))

(assert (=> d!1645778 (= (++!12815 (list!19033 (left!42849 (right!43179 xs!286))) call!354401) lt!2091587)))

(declare-fun b!5085557 () Bool)

(assert (=> b!5085557 (= e!3171852 call!354401)))

(declare-fun b!5085560 () Bool)

(assert (=> b!5085560 (= e!3171853 (or (not (= call!354401 Nil!58456)) (= lt!2091587 (list!19033 (left!42849 (right!43179 xs!286))))))))

(declare-fun b!5085559 () Bool)

(declare-fun res!2164998 () Bool)

(assert (=> b!5085559 (=> (not res!2164998) (not e!3171853))))

(assert (=> b!5085559 (= res!2164998 (= (size!39119 lt!2091587) (+ (size!39119 (list!19033 (left!42849 (right!43179 xs!286)))) (size!39119 call!354401))))))

(assert (= (and d!1645778 c!873791) b!5085557))

(assert (= (and d!1645778 (not c!873791)) b!5085558))

(assert (= (and d!1645778 res!2164999) b!5085559))

(assert (= (and b!5085559 res!2164998) b!5085560))

(declare-fun m!6142228 () Bool)

(assert (=> b!5085558 m!6142228))

(declare-fun m!6142230 () Bool)

(assert (=> d!1645778 m!6142230))

(assert (=> d!1645778 m!6139640))

(declare-fun m!6142232 () Bool)

(assert (=> d!1645778 m!6142232))

(declare-fun m!6142234 () Bool)

(assert (=> d!1645778 m!6142234))

(declare-fun m!6142236 () Bool)

(assert (=> b!5085559 m!6142236))

(assert (=> b!5085559 m!6139640))

(declare-fun m!6142238 () Bool)

(assert (=> b!5085559 m!6142238))

(declare-fun m!6142240 () Bool)

(assert (=> b!5085559 m!6142240))

(assert (=> bm!354396 d!1645778))

(declare-fun d!1645780 () Bool)

(declare-fun lt!2091588 () Int)

(assert (=> d!1645780 (>= lt!2091588 0)))

(declare-fun e!3171854 () Int)

(assert (=> d!1645780 (= lt!2091588 e!3171854)))

(declare-fun c!873792 () Bool)

(assert (=> d!1645780 (= c!873792 ((_ is Nil!58456) (innerList!15674 (xs!18964 (left!42849 xs!286)))))))

(assert (=> d!1645780 (= (size!39119 (innerList!15674 (xs!18964 (left!42849 xs!286)))) lt!2091588)))

(declare-fun b!5085561 () Bool)

(assert (=> b!5085561 (= e!3171854 0)))

(declare-fun b!5085562 () Bool)

(assert (=> b!5085562 (= e!3171854 (+ 1 (size!39119 (t!371417 (innerList!15674 (xs!18964 (left!42849 xs!286)))))))))

(assert (= (and d!1645780 c!873792) b!5085561))

(assert (= (and d!1645780 (not c!873792)) b!5085562))

(declare-fun m!6142242 () Bool)

(assert (=> b!5085562 m!6142242))

(assert (=> d!1645108 d!1645780))

(declare-fun b!5085564 () Bool)

(declare-fun e!3171855 () List!58580)

(assert (=> b!5085564 (= e!3171855 (Cons!58456 (h!64904 (list!19033 (left!42849 xs!286))) (++!12815 (t!371417 (list!19033 (left!42849 xs!286))) call!354413)))))

(declare-fun d!1645782 () Bool)

(declare-fun e!3171856 () Bool)

(assert (=> d!1645782 e!3171856))

(declare-fun res!2165001 () Bool)

(assert (=> d!1645782 (=> (not res!2165001) (not e!3171856))))

(declare-fun lt!2091589 () List!58580)

(assert (=> d!1645782 (= res!2165001 (= (content!10430 lt!2091589) ((_ map or) (content!10430 (list!19033 (left!42849 xs!286))) (content!10430 call!354413))))))

(assert (=> d!1645782 (= lt!2091589 e!3171855)))

(declare-fun c!873793 () Bool)

(assert (=> d!1645782 (= c!873793 ((_ is Nil!58456) (list!19033 (left!42849 xs!286))))))

(assert (=> d!1645782 (= (++!12815 (list!19033 (left!42849 xs!286)) call!354413) lt!2091589)))

(declare-fun b!5085563 () Bool)

(assert (=> b!5085563 (= e!3171855 call!354413)))

(declare-fun b!5085566 () Bool)

(assert (=> b!5085566 (= e!3171856 (or (not (= call!354413 Nil!58456)) (= lt!2091589 (list!19033 (left!42849 xs!286)))))))

(declare-fun b!5085565 () Bool)

(declare-fun res!2165000 () Bool)

(assert (=> b!5085565 (=> (not res!2165000) (not e!3171856))))

(assert (=> b!5085565 (= res!2165000 (= (size!39119 lt!2091589) (+ (size!39119 (list!19033 (left!42849 xs!286))) (size!39119 call!354413))))))

(assert (= (and d!1645782 c!873793) b!5085563))

(assert (= (and d!1645782 (not c!873793)) b!5085564))

(assert (= (and d!1645782 res!2165001) b!5085565))

(assert (= (and b!5085565 res!2165000) b!5085566))

(declare-fun m!6142244 () Bool)

(assert (=> b!5085564 m!6142244))

(declare-fun m!6142246 () Bool)

(assert (=> d!1645782 m!6142246))

(assert (=> d!1645782 m!6139638))

(assert (=> d!1645782 m!6140284))

(declare-fun m!6142248 () Bool)

(assert (=> d!1645782 m!6142248))

(declare-fun m!6142250 () Bool)

(assert (=> b!5085565 m!6142250))

(assert (=> b!5085565 m!6139638))

(assert (=> b!5085565 m!6140290))

(declare-fun m!6142252 () Bool)

(assert (=> b!5085565 m!6142252))

(assert (=> bm!354408 d!1645782))

(declare-fun d!1645784 () Bool)

(declare-fun lt!2091590 () Int)

(assert (=> d!1645784 (= lt!2091590 (size!39119 (list!19033 (left!42849 (right!43179 xs!286)))))))

(assert (=> d!1645784 (= lt!2091590 (ite ((_ is Empty!15586) (left!42849 (right!43179 xs!286))) 0 (ite ((_ is Leaf!25884) (left!42849 (right!43179 xs!286))) (csize!31403 (left!42849 (right!43179 xs!286))) (csize!31402 (left!42849 (right!43179 xs!286))))))))

(assert (=> d!1645784 (= (size!39121 (left!42849 (right!43179 xs!286))) lt!2091590)))

(declare-fun bs!1190905 () Bool)

(assert (= bs!1190905 d!1645784))

(assert (=> bs!1190905 m!6139640))

(assert (=> bs!1190905 m!6139640))

(assert (=> bs!1190905 m!6142238))

(assert (=> d!1645090 d!1645784))

(declare-fun d!1645786 () Bool)

(declare-fun lt!2091591 () Int)

(assert (=> d!1645786 (= lt!2091591 (size!39119 (list!19033 (right!43179 (right!43179 xs!286)))))))

(assert (=> d!1645786 (= lt!2091591 (ite ((_ is Empty!15586) (right!43179 (right!43179 xs!286))) 0 (ite ((_ is Leaf!25884) (right!43179 (right!43179 xs!286))) (csize!31403 (right!43179 (right!43179 xs!286))) (csize!31402 (right!43179 (right!43179 xs!286))))))))

(assert (=> d!1645786 (= (size!39121 (right!43179 (right!43179 xs!286))) lt!2091591)))

(declare-fun bs!1190906 () Bool)

(assert (= bs!1190906 d!1645786))

(assert (=> bs!1190906 m!6139636))

(assert (=> bs!1190906 m!6139636))

(assert (=> bs!1190906 m!6140640))

(assert (=> d!1645090 d!1645786))

(declare-fun d!1645788 () Bool)

(assert (=> d!1645788 (= (max!0 (height!2163 (left!42849 ys!41)) (height!2163 (right!43179 ys!41))) (ite (< (height!2163 (left!42849 ys!41)) (height!2163 (right!43179 ys!41))) (height!2163 (right!43179 ys!41)) (height!2163 (left!42849 ys!41))))))

(assert (=> b!5084763 d!1645788))

(assert (=> b!5084763 d!1644804))

(assert (=> b!5084763 d!1644802))

(declare-fun d!1645790 () Bool)

(declare-fun c!873794 () Bool)

(assert (=> d!1645790 (= c!873794 ((_ is Node!15586) (left!42849 (right!43179 (right!43179 xs!286)))))))

(declare-fun e!3171857 () Bool)

(assert (=> d!1645790 (= (inv!77676 (left!42849 (right!43179 (right!43179 xs!286)))) e!3171857)))

(declare-fun b!5085567 () Bool)

(assert (=> b!5085567 (= e!3171857 (inv!77680 (left!42849 (right!43179 (right!43179 xs!286)))))))

(declare-fun b!5085568 () Bool)

(declare-fun e!3171858 () Bool)

(assert (=> b!5085568 (= e!3171857 e!3171858)))

(declare-fun res!2165002 () Bool)

(assert (=> b!5085568 (= res!2165002 (not ((_ is Leaf!25884) (left!42849 (right!43179 (right!43179 xs!286))))))))

(assert (=> b!5085568 (=> res!2165002 e!3171858)))

(declare-fun b!5085569 () Bool)

(assert (=> b!5085569 (= e!3171858 (inv!77681 (left!42849 (right!43179 (right!43179 xs!286)))))))

(assert (= (and d!1645790 c!873794) b!5085567))

(assert (= (and d!1645790 (not c!873794)) b!5085568))

(assert (= (and b!5085568 (not res!2165002)) b!5085569))

(declare-fun m!6142254 () Bool)

(assert (=> b!5085567 m!6142254))

(declare-fun m!6142256 () Bool)

(assert (=> b!5085569 m!6142256))

(assert (=> b!5084827 d!1645790))

(declare-fun d!1645792 () Bool)

(declare-fun c!873795 () Bool)

(assert (=> d!1645792 (= c!873795 ((_ is Node!15586) (right!43179 (right!43179 (right!43179 xs!286)))))))

(declare-fun e!3171859 () Bool)

(assert (=> d!1645792 (= (inv!77676 (right!43179 (right!43179 (right!43179 xs!286)))) e!3171859)))

(declare-fun b!5085570 () Bool)

(assert (=> b!5085570 (= e!3171859 (inv!77680 (right!43179 (right!43179 (right!43179 xs!286)))))))

(declare-fun b!5085571 () Bool)

(declare-fun e!3171860 () Bool)

(assert (=> b!5085571 (= e!3171859 e!3171860)))

(declare-fun res!2165003 () Bool)

(assert (=> b!5085571 (= res!2165003 (not ((_ is Leaf!25884) (right!43179 (right!43179 (right!43179 xs!286))))))))

(assert (=> b!5085571 (=> res!2165003 e!3171860)))

(declare-fun b!5085572 () Bool)

(assert (=> b!5085572 (= e!3171860 (inv!77681 (right!43179 (right!43179 (right!43179 xs!286)))))))

(assert (= (and d!1645792 c!873795) b!5085570))

(assert (= (and d!1645792 (not c!873795)) b!5085571))

(assert (= (and b!5085571 (not res!2165003)) b!5085572))

(declare-fun m!6142258 () Bool)

(assert (=> b!5085570 m!6142258))

(declare-fun m!6142260 () Bool)

(assert (=> b!5085572 m!6142260))

(assert (=> b!5084827 d!1645792))

(declare-fun b!5085574 () Bool)

(declare-fun e!3171861 () List!58580)

(assert (=> b!5085574 (= e!3171861 (Cons!58456 (h!64904 (list!19033 (left!42849 (right!43179 lt!2091392)))) (++!12815 (t!371417 (list!19033 (left!42849 (right!43179 lt!2091392)))) (list!19033 (right!43179 (right!43179 lt!2091392))))))))

(declare-fun d!1645794 () Bool)

(declare-fun e!3171862 () Bool)

(assert (=> d!1645794 e!3171862))

(declare-fun res!2165005 () Bool)

(assert (=> d!1645794 (=> (not res!2165005) (not e!3171862))))

(declare-fun lt!2091592 () List!58580)

(assert (=> d!1645794 (= res!2165005 (= (content!10430 lt!2091592) ((_ map or) (content!10430 (list!19033 (left!42849 (right!43179 lt!2091392)))) (content!10430 (list!19033 (right!43179 (right!43179 lt!2091392)))))))))

(assert (=> d!1645794 (= lt!2091592 e!3171861)))

(declare-fun c!873796 () Bool)

(assert (=> d!1645794 (= c!873796 ((_ is Nil!58456) (list!19033 (left!42849 (right!43179 lt!2091392)))))))

(assert (=> d!1645794 (= (++!12815 (list!19033 (left!42849 (right!43179 lt!2091392))) (list!19033 (right!43179 (right!43179 lt!2091392)))) lt!2091592)))

(declare-fun b!5085573 () Bool)

(assert (=> b!5085573 (= e!3171861 (list!19033 (right!43179 (right!43179 lt!2091392))))))

(declare-fun b!5085576 () Bool)

(assert (=> b!5085576 (= e!3171862 (or (not (= (list!19033 (right!43179 (right!43179 lt!2091392))) Nil!58456)) (= lt!2091592 (list!19033 (left!42849 (right!43179 lt!2091392))))))))

(declare-fun b!5085575 () Bool)

(declare-fun res!2165004 () Bool)

(assert (=> b!5085575 (=> (not res!2165004) (not e!3171862))))

(assert (=> b!5085575 (= res!2165004 (= (size!39119 lt!2091592) (+ (size!39119 (list!19033 (left!42849 (right!43179 lt!2091392)))) (size!39119 (list!19033 (right!43179 (right!43179 lt!2091392)))))))))

(assert (= (and d!1645794 c!873796) b!5085573))

(assert (= (and d!1645794 (not c!873796)) b!5085574))

(assert (= (and d!1645794 res!2165005) b!5085575))

(assert (= (and b!5085575 res!2165004) b!5085576))

(assert (=> b!5085574 m!6140476))

(declare-fun m!6142262 () Bool)

(assert (=> b!5085574 m!6142262))

(declare-fun m!6142264 () Bool)

(assert (=> d!1645794 m!6142264))

(assert (=> d!1645794 m!6140474))

(declare-fun m!6142266 () Bool)

(assert (=> d!1645794 m!6142266))

(assert (=> d!1645794 m!6140476))

(declare-fun m!6142268 () Bool)

(assert (=> d!1645794 m!6142268))

(declare-fun m!6142270 () Bool)

(assert (=> b!5085575 m!6142270))

(assert (=> b!5085575 m!6140474))

(declare-fun m!6142272 () Bool)

(assert (=> b!5085575 m!6142272))

(assert (=> b!5085575 m!6140476))

(declare-fun m!6142274 () Bool)

(assert (=> b!5085575 m!6142274))

(assert (=> b!5084690 d!1645794))

(declare-fun b!5085578 () Bool)

(declare-fun e!3171863 () List!58580)

(declare-fun e!3171864 () List!58580)

(assert (=> b!5085578 (= e!3171863 e!3171864)))

(declare-fun c!873798 () Bool)

(assert (=> b!5085578 (= c!873798 ((_ is Leaf!25884) (left!42849 (right!43179 lt!2091392))))))

(declare-fun b!5085577 () Bool)

(assert (=> b!5085577 (= e!3171863 Nil!58456)))

(declare-fun b!5085580 () Bool)

(assert (=> b!5085580 (= e!3171864 (++!12815 (list!19033 (left!42849 (left!42849 (right!43179 lt!2091392)))) (list!19033 (right!43179 (left!42849 (right!43179 lt!2091392))))))))

(declare-fun d!1645796 () Bool)

(declare-fun c!873797 () Bool)

(assert (=> d!1645796 (= c!873797 ((_ is Empty!15586) (left!42849 (right!43179 lt!2091392))))))

(assert (=> d!1645796 (= (list!19033 (left!42849 (right!43179 lt!2091392))) e!3171863)))

(declare-fun b!5085579 () Bool)

(assert (=> b!5085579 (= e!3171864 (list!19035 (xs!18964 (left!42849 (right!43179 lt!2091392)))))))

(assert (= (and d!1645796 c!873797) b!5085577))

(assert (= (and d!1645796 (not c!873797)) b!5085578))

(assert (= (and b!5085578 c!873798) b!5085579))

(assert (= (and b!5085578 (not c!873798)) b!5085580))

(declare-fun m!6142276 () Bool)

(assert (=> b!5085580 m!6142276))

(declare-fun m!6142278 () Bool)

(assert (=> b!5085580 m!6142278))

(assert (=> b!5085580 m!6142276))

(assert (=> b!5085580 m!6142278))

(declare-fun m!6142280 () Bool)

(assert (=> b!5085580 m!6142280))

(declare-fun m!6142282 () Bool)

(assert (=> b!5085579 m!6142282))

(assert (=> b!5084690 d!1645796))

(declare-fun b!5085582 () Bool)

(declare-fun e!3171865 () List!58580)

(declare-fun e!3171866 () List!58580)

(assert (=> b!5085582 (= e!3171865 e!3171866)))

(declare-fun c!873800 () Bool)

(assert (=> b!5085582 (= c!873800 ((_ is Leaf!25884) (right!43179 (right!43179 lt!2091392))))))

(declare-fun b!5085581 () Bool)

(assert (=> b!5085581 (= e!3171865 Nil!58456)))

(declare-fun b!5085584 () Bool)

(assert (=> b!5085584 (= e!3171866 (++!12815 (list!19033 (left!42849 (right!43179 (right!43179 lt!2091392)))) (list!19033 (right!43179 (right!43179 (right!43179 lt!2091392))))))))

(declare-fun d!1645798 () Bool)

(declare-fun c!873799 () Bool)

(assert (=> d!1645798 (= c!873799 ((_ is Empty!15586) (right!43179 (right!43179 lt!2091392))))))

(assert (=> d!1645798 (= (list!19033 (right!43179 (right!43179 lt!2091392))) e!3171865)))

(declare-fun b!5085583 () Bool)

(assert (=> b!5085583 (= e!3171866 (list!19035 (xs!18964 (right!43179 (right!43179 lt!2091392)))))))

(assert (= (and d!1645798 c!873799) b!5085581))

(assert (= (and d!1645798 (not c!873799)) b!5085582))

(assert (= (and b!5085582 c!873800) b!5085583))

(assert (= (and b!5085582 (not c!873800)) b!5085584))

(declare-fun m!6142284 () Bool)

(assert (=> b!5085584 m!6142284))

(declare-fun m!6142286 () Bool)

(assert (=> b!5085584 m!6142286))

(assert (=> b!5085584 m!6142284))

(assert (=> b!5085584 m!6142286))

(declare-fun m!6142288 () Bool)

(assert (=> b!5085584 m!6142288))

(declare-fun m!6142290 () Bool)

(assert (=> b!5085583 m!6142290))

(assert (=> b!5084690 d!1645798))

(declare-fun d!1645800 () Bool)

(declare-fun lt!2091593 () Int)

(assert (=> d!1645800 (>= lt!2091593 0)))

(declare-fun e!3171867 () Int)

(assert (=> d!1645800 (= lt!2091593 e!3171867)))

(declare-fun c!873801 () Bool)

(assert (=> d!1645800 (= c!873801 ((_ is Nil!58456) (list!19035 (xs!18964 (left!42849 ys!41)))))))

(assert (=> d!1645800 (= (size!39119 (list!19035 (xs!18964 (left!42849 ys!41)))) lt!2091593)))

(declare-fun b!5085585 () Bool)

(assert (=> b!5085585 (= e!3171867 0)))

(declare-fun b!5085586 () Bool)

(assert (=> b!5085586 (= e!3171867 (+ 1 (size!39119 (t!371417 (list!19035 (xs!18964 (left!42849 ys!41)))))))))

(assert (= (and d!1645800 c!873801) b!5085585))

(assert (= (and d!1645800 (not c!873801)) b!5085586))

(declare-fun m!6142292 () Bool)

(assert (=> b!5085586 m!6142292))

(assert (=> b!5084609 d!1645800))

(declare-fun d!1645802 () Bool)

(assert (=> d!1645802 (= (list!19035 (xs!18964 (left!42849 ys!41))) (innerList!15674 (xs!18964 (left!42849 ys!41))))))

(assert (=> b!5084609 d!1645802))

(assert (=> b!5084790 d!1645674))

(assert (=> b!5084790 d!1645676))

(declare-fun b!5085587 () Bool)

(declare-fun res!2165011 () Bool)

(declare-fun e!3171868 () Bool)

(assert (=> b!5085587 (=> (not res!2165011) (not e!3171868))))

(assert (=> b!5085587 (= res!2165011 (isBalanced!4448 (right!43179 (left!42849 (left!42849 xs!286)))))))

(declare-fun b!5085588 () Bool)

(declare-fun res!2165009 () Bool)

(assert (=> b!5085588 (=> (not res!2165009) (not e!3171868))))

(assert (=> b!5085588 (= res!2165009 (<= (- (height!2163 (left!42849 (left!42849 (left!42849 xs!286)))) (height!2163 (right!43179 (left!42849 (left!42849 xs!286))))) 1))))

(declare-fun b!5085589 () Bool)

(declare-fun e!3171869 () Bool)

(assert (=> b!5085589 (= e!3171869 e!3171868)))

(declare-fun res!2165007 () Bool)

(assert (=> b!5085589 (=> (not res!2165007) (not e!3171868))))

(assert (=> b!5085589 (= res!2165007 (<= (- 1) (- (height!2163 (left!42849 (left!42849 (left!42849 xs!286)))) (height!2163 (right!43179 (left!42849 (left!42849 xs!286)))))))))

(declare-fun b!5085590 () Bool)

(declare-fun res!2165010 () Bool)

(assert (=> b!5085590 (=> (not res!2165010) (not e!3171868))))

(assert (=> b!5085590 (= res!2165010 (not (isEmpty!31675 (left!42849 (left!42849 (left!42849 xs!286))))))))

(declare-fun b!5085591 () Bool)

(declare-fun res!2165006 () Bool)

(assert (=> b!5085591 (=> (not res!2165006) (not e!3171868))))

(assert (=> b!5085591 (= res!2165006 (isBalanced!4448 (left!42849 (left!42849 (left!42849 xs!286)))))))

(declare-fun b!5085592 () Bool)

(assert (=> b!5085592 (= e!3171868 (not (isEmpty!31675 (right!43179 (left!42849 (left!42849 xs!286))))))))

(declare-fun d!1645804 () Bool)

(declare-fun res!2165008 () Bool)

(assert (=> d!1645804 (=> res!2165008 e!3171869)))

(assert (=> d!1645804 (= res!2165008 (not ((_ is Node!15586) (left!42849 (left!42849 xs!286)))))))

(assert (=> d!1645804 (= (isBalanced!4448 (left!42849 (left!42849 xs!286))) e!3171869)))

(assert (= (and d!1645804 (not res!2165008)) b!5085589))

(assert (= (and b!5085589 res!2165007) b!5085588))

(assert (= (and b!5085588 res!2165009) b!5085591))

(assert (= (and b!5085591 res!2165006) b!5085587))

(assert (= (and b!5085587 res!2165011) b!5085590))

(assert (= (and b!5085590 res!2165010) b!5085592))

(declare-fun m!6142294 () Bool)

(assert (=> b!5085591 m!6142294))

(declare-fun m!6142296 () Bool)

(assert (=> b!5085592 m!6142296))

(declare-fun m!6142298 () Bool)

(assert (=> b!5085590 m!6142298))

(declare-fun m!6142300 () Bool)

(assert (=> b!5085589 m!6142300))

(declare-fun m!6142302 () Bool)

(assert (=> b!5085589 m!6142302))

(assert (=> b!5085588 m!6142300))

(assert (=> b!5085588 m!6142302))

(declare-fun m!6142304 () Bool)

(assert (=> b!5085587 m!6142304))

(assert (=> b!5084793 d!1645804))

(declare-fun b!5085594 () Bool)

(declare-fun e!3171870 () List!58580)

(assert (=> b!5085594 (= e!3171870 (Cons!58456 (h!64904 (list!19033 (left!42849 (left!42849 ys!41)))) (++!12815 (t!371417 (list!19033 (left!42849 (left!42849 ys!41)))) (list!19033 (right!43179 (left!42849 ys!41))))))))

(declare-fun d!1645806 () Bool)

(declare-fun e!3171871 () Bool)

(assert (=> d!1645806 e!3171871))

(declare-fun res!2165013 () Bool)

(assert (=> d!1645806 (=> (not res!2165013) (not e!3171871))))

(declare-fun lt!2091594 () List!58580)

(assert (=> d!1645806 (= res!2165013 (= (content!10430 lt!2091594) ((_ map or) (content!10430 (list!19033 (left!42849 (left!42849 ys!41)))) (content!10430 (list!19033 (right!43179 (left!42849 ys!41)))))))))

(assert (=> d!1645806 (= lt!2091594 e!3171870)))

(declare-fun c!873802 () Bool)

(assert (=> d!1645806 (= c!873802 ((_ is Nil!58456) (list!19033 (left!42849 (left!42849 ys!41)))))))

(assert (=> d!1645806 (= (++!12815 (list!19033 (left!42849 (left!42849 ys!41))) (list!19033 (right!43179 (left!42849 ys!41)))) lt!2091594)))

(declare-fun b!5085593 () Bool)

(assert (=> b!5085593 (= e!3171870 (list!19033 (right!43179 (left!42849 ys!41))))))

(declare-fun b!5085596 () Bool)

(assert (=> b!5085596 (= e!3171871 (or (not (= (list!19033 (right!43179 (left!42849 ys!41))) Nil!58456)) (= lt!2091594 (list!19033 (left!42849 (left!42849 ys!41))))))))

(declare-fun b!5085595 () Bool)

(declare-fun res!2165012 () Bool)

(assert (=> b!5085595 (=> (not res!2165012) (not e!3171871))))

(assert (=> b!5085595 (= res!2165012 (= (size!39119 lt!2091594) (+ (size!39119 (list!19033 (left!42849 (left!42849 ys!41)))) (size!39119 (list!19033 (right!43179 (left!42849 ys!41)))))))))

(assert (= (and d!1645806 c!873802) b!5085593))

(assert (= (and d!1645806 (not c!873802)) b!5085594))

(assert (= (and d!1645806 res!2165013) b!5085595))

(assert (= (and b!5085595 res!2165012) b!5085596))

(assert (=> b!5085594 m!6139652))

(declare-fun m!6142306 () Bool)

(assert (=> b!5085594 m!6142306))

(declare-fun m!6142308 () Bool)

(assert (=> d!1645806 m!6142308))

(assert (=> d!1645806 m!6139654))

(assert (=> d!1645806 m!6140524))

(assert (=> d!1645806 m!6139652))

(assert (=> d!1645806 m!6142152))

(declare-fun m!6142310 () Bool)

(assert (=> b!5085595 m!6142310))

(assert (=> b!5085595 m!6139654))

(assert (=> b!5085595 m!6140528))

(assert (=> b!5085595 m!6139652))

(assert (=> b!5085595 m!6142158))

(assert (=> b!5084800 d!1645806))

(assert (=> b!5084800 d!1645074))

(assert (=> b!5084800 d!1645068))

(declare-fun d!1645808 () Bool)

(assert (=> d!1645808 (= (max!0 (height!2163 (left!42849 (right!43179 err!4617))) (height!2163 (right!43179 (right!43179 err!4617)))) (ite (< (height!2163 (left!42849 (right!43179 err!4617))) (height!2163 (right!43179 (right!43179 err!4617)))) (height!2163 (right!43179 (right!43179 err!4617))) (height!2163 (left!42849 (right!43179 err!4617)))))))

(assert (=> b!5084618 d!1645808))

(declare-fun d!1645810 () Bool)

(assert (=> d!1645810 (= (height!2163 (left!42849 (right!43179 err!4617))) (ite ((_ is Empty!15586) (left!42849 (right!43179 err!4617))) 0 (ite ((_ is Leaf!25884) (left!42849 (right!43179 err!4617))) 1 (cheight!15797 (left!42849 (right!43179 err!4617))))))))

(assert (=> b!5084618 d!1645810))

(declare-fun d!1645812 () Bool)

(assert (=> d!1645812 (= (height!2163 (right!43179 (right!43179 err!4617))) (ite ((_ is Empty!15586) (right!43179 (right!43179 err!4617))) 0 (ite ((_ is Leaf!25884) (right!43179 (right!43179 err!4617))) 1 (cheight!15797 (right!43179 (right!43179 err!4617))))))))

(assert (=> b!5084618 d!1645812))

(declare-fun d!1645814 () Bool)

(declare-fun c!873803 () Bool)

(assert (=> d!1645814 (= c!873803 ((_ is Node!15586) (left!42849 (left!42849 (right!43179 xs!286)))))))

(declare-fun e!3171872 () Bool)

(assert (=> d!1645814 (= (inv!77676 (left!42849 (left!42849 (right!43179 xs!286)))) e!3171872)))

(declare-fun b!5085597 () Bool)

(assert (=> b!5085597 (= e!3171872 (inv!77680 (left!42849 (left!42849 (right!43179 xs!286)))))))

(declare-fun b!5085598 () Bool)

(declare-fun e!3171873 () Bool)

(assert (=> b!5085598 (= e!3171872 e!3171873)))

(declare-fun res!2165014 () Bool)

(assert (=> b!5085598 (= res!2165014 (not ((_ is Leaf!25884) (left!42849 (left!42849 (right!43179 xs!286))))))))

(assert (=> b!5085598 (=> res!2165014 e!3171873)))

(declare-fun b!5085599 () Bool)

(assert (=> b!5085599 (= e!3171873 (inv!77681 (left!42849 (left!42849 (right!43179 xs!286)))))))

(assert (= (and d!1645814 c!873803) b!5085597))

(assert (= (and d!1645814 (not c!873803)) b!5085598))

(assert (= (and b!5085598 (not res!2165014)) b!5085599))

(declare-fun m!6142312 () Bool)

(assert (=> b!5085597 m!6142312))

(declare-fun m!6142314 () Bool)

(assert (=> b!5085599 m!6142314))

(assert (=> b!5084824 d!1645814))

(declare-fun d!1645816 () Bool)

(declare-fun c!873804 () Bool)

(assert (=> d!1645816 (= c!873804 ((_ is Node!15586) (right!43179 (left!42849 (right!43179 xs!286)))))))

(declare-fun e!3171874 () Bool)

(assert (=> d!1645816 (= (inv!77676 (right!43179 (left!42849 (right!43179 xs!286)))) e!3171874)))

(declare-fun b!5085600 () Bool)

(assert (=> b!5085600 (= e!3171874 (inv!77680 (right!43179 (left!42849 (right!43179 xs!286)))))))

(declare-fun b!5085601 () Bool)

(declare-fun e!3171875 () Bool)

(assert (=> b!5085601 (= e!3171874 e!3171875)))

(declare-fun res!2165015 () Bool)

(assert (=> b!5085601 (= res!2165015 (not ((_ is Leaf!25884) (right!43179 (left!42849 (right!43179 xs!286))))))))

(assert (=> b!5085601 (=> res!2165015 e!3171875)))

(declare-fun b!5085602 () Bool)

(assert (=> b!5085602 (= e!3171875 (inv!77681 (right!43179 (left!42849 (right!43179 xs!286)))))))

(assert (= (and d!1645816 c!873804) b!5085600))

(assert (= (and d!1645816 (not c!873804)) b!5085601))

(assert (= (and b!5085601 (not res!2165015)) b!5085602))

(declare-fun m!6142316 () Bool)

(assert (=> b!5085600 m!6142316))

(declare-fun m!6142318 () Bool)

(assert (=> b!5085602 m!6142318))

(assert (=> b!5084824 d!1645816))

(declare-fun d!1645818 () Bool)

(declare-fun c!873805 () Bool)

(assert (=> d!1645818 (= c!873805 ((_ is Node!15586) (left!42849 (right!43179 (left!42849 err!4617)))))))

(declare-fun e!3171876 () Bool)

(assert (=> d!1645818 (= (inv!77676 (left!42849 (right!43179 (left!42849 err!4617)))) e!3171876)))

(declare-fun b!5085603 () Bool)

(assert (=> b!5085603 (= e!3171876 (inv!77680 (left!42849 (right!43179 (left!42849 err!4617)))))))

(declare-fun b!5085604 () Bool)

(declare-fun e!3171877 () Bool)

(assert (=> b!5085604 (= e!3171876 e!3171877)))

(declare-fun res!2165016 () Bool)

(assert (=> b!5085604 (= res!2165016 (not ((_ is Leaf!25884) (left!42849 (right!43179 (left!42849 err!4617))))))))

(assert (=> b!5085604 (=> res!2165016 e!3171877)))

(declare-fun b!5085605 () Bool)

(assert (=> b!5085605 (= e!3171877 (inv!77681 (left!42849 (right!43179 (left!42849 err!4617)))))))

(assert (= (and d!1645818 c!873805) b!5085603))

(assert (= (and d!1645818 (not c!873805)) b!5085604))

(assert (= (and b!5085604 (not res!2165016)) b!5085605))

(declare-fun m!6142320 () Bool)

(assert (=> b!5085603 m!6142320))

(declare-fun m!6142322 () Bool)

(assert (=> b!5085605 m!6142322))

(assert (=> b!5084820 d!1645818))

(declare-fun d!1645820 () Bool)

(declare-fun c!873806 () Bool)

(assert (=> d!1645820 (= c!873806 ((_ is Node!15586) (right!43179 (right!43179 (left!42849 err!4617)))))))

(declare-fun e!3171878 () Bool)

(assert (=> d!1645820 (= (inv!77676 (right!43179 (right!43179 (left!42849 err!4617)))) e!3171878)))

(declare-fun b!5085606 () Bool)

(assert (=> b!5085606 (= e!3171878 (inv!77680 (right!43179 (right!43179 (left!42849 err!4617)))))))

(declare-fun b!5085607 () Bool)

(declare-fun e!3171879 () Bool)

(assert (=> b!5085607 (= e!3171878 e!3171879)))

(declare-fun res!2165017 () Bool)

(assert (=> b!5085607 (= res!2165017 (not ((_ is Leaf!25884) (right!43179 (right!43179 (left!42849 err!4617))))))))

(assert (=> b!5085607 (=> res!2165017 e!3171879)))

(declare-fun b!5085608 () Bool)

(assert (=> b!5085608 (= e!3171879 (inv!77681 (right!43179 (right!43179 (left!42849 err!4617)))))))

(assert (= (and d!1645820 c!873806) b!5085606))

(assert (= (and d!1645820 (not c!873806)) b!5085607))

(assert (= (and b!5085607 (not res!2165017)) b!5085608))

(declare-fun m!6142324 () Bool)

(assert (=> b!5085606 m!6142324))

(declare-fun m!6142326 () Bool)

(assert (=> b!5085608 m!6142326))

(assert (=> b!5084820 d!1645820))

(declare-fun d!1645822 () Bool)

(declare-fun lt!2091595 () Int)

(assert (=> d!1645822 (= lt!2091595 (size!39119 (list!19033 (left!42849 ys!41))))))

(assert (=> d!1645822 (= lt!2091595 (ite ((_ is Empty!15586) (left!42849 ys!41)) 0 (ite ((_ is Leaf!25884) (left!42849 ys!41)) (csize!31403 (left!42849 ys!41)) (csize!31402 (left!42849 ys!41)))))))

(assert (=> d!1645822 (= (size!39121 (left!42849 ys!41)) lt!2091595)))

(declare-fun bs!1190907 () Bool)

(assert (= bs!1190907 d!1645822))

(assert (=> bs!1190907 m!6139662))

(assert (=> bs!1190907 m!6139662))

(assert (=> bs!1190907 m!6140726))

(assert (=> d!1645124 d!1645822))

(assert (=> d!1645124 d!1645686))

(declare-fun d!1645824 () Bool)

(assert (=> d!1645824 (= (max!0 (height!2163 (left!42849 (left!42849 err!4617))) (height!2163 (right!43179 (left!42849 err!4617)))) (ite (< (height!2163 (left!42849 (left!42849 err!4617))) (height!2163 (right!43179 (left!42849 err!4617)))) (height!2163 (right!43179 (left!42849 err!4617))) (height!2163 (left!42849 (left!42849 err!4617)))))))

(assert (=> b!5084746 d!1645824))

(declare-fun d!1645826 () Bool)

(assert (=> d!1645826 (= (height!2163 (left!42849 (left!42849 err!4617))) (ite ((_ is Empty!15586) (left!42849 (left!42849 err!4617))) 0 (ite ((_ is Leaf!25884) (left!42849 (left!42849 err!4617))) 1 (cheight!15797 (left!42849 (left!42849 err!4617))))))))

(assert (=> b!5084746 d!1645826))

(declare-fun d!1645828 () Bool)

(assert (=> d!1645828 (= (height!2163 (right!43179 (left!42849 err!4617))) (ite ((_ is Empty!15586) (right!43179 (left!42849 err!4617))) 0 (ite ((_ is Leaf!25884) (right!43179 (left!42849 err!4617))) 1 (cheight!15797 (right!43179 (left!42849 err!4617))))))))

(assert (=> b!5084746 d!1645828))

(declare-fun d!1645830 () Bool)

(declare-fun res!2165018 () Bool)

(declare-fun e!3171880 () Bool)

(assert (=> d!1645830 (=> (not res!2165018) (not e!3171880))))

(assert (=> d!1645830 (= res!2165018 (= (csize!31402 (left!42849 (left!42849 ys!41))) (+ (size!39121 (left!42849 (left!42849 (left!42849 ys!41)))) (size!39121 (right!43179 (left!42849 (left!42849 ys!41)))))))))

(assert (=> d!1645830 (= (inv!77680 (left!42849 (left!42849 ys!41))) e!3171880)))

(declare-fun b!5085609 () Bool)

(declare-fun res!2165019 () Bool)

(assert (=> b!5085609 (=> (not res!2165019) (not e!3171880))))

(assert (=> b!5085609 (= res!2165019 (and (not (= (left!42849 (left!42849 (left!42849 ys!41))) Empty!15586)) (not (= (right!43179 (left!42849 (left!42849 ys!41))) Empty!15586))))))

(declare-fun b!5085610 () Bool)

(declare-fun res!2165020 () Bool)

(assert (=> b!5085610 (=> (not res!2165020) (not e!3171880))))

(assert (=> b!5085610 (= res!2165020 (= (cheight!15797 (left!42849 (left!42849 ys!41))) (+ (max!0 (height!2163 (left!42849 (left!42849 (left!42849 ys!41)))) (height!2163 (right!43179 (left!42849 (left!42849 ys!41))))) 1)))))

(declare-fun b!5085611 () Bool)

(assert (=> b!5085611 (= e!3171880 (<= 0 (cheight!15797 (left!42849 (left!42849 ys!41)))))))

(assert (= (and d!1645830 res!2165018) b!5085609))

(assert (= (and b!5085609 res!2165019) b!5085610))

(assert (= (and b!5085610 res!2165020) b!5085611))

(declare-fun m!6142328 () Bool)

(assert (=> d!1645830 m!6142328))

(declare-fun m!6142330 () Bool)

(assert (=> d!1645830 m!6142330))

(declare-fun m!6142332 () Bool)

(assert (=> b!5085610 m!6142332))

(declare-fun m!6142334 () Bool)

(assert (=> b!5085610 m!6142334))

(assert (=> b!5085610 m!6142332))

(assert (=> b!5085610 m!6142334))

(declare-fun m!6142336 () Bool)

(assert (=> b!5085610 m!6142336))

(assert (=> b!5084783 d!1645830))

(assert (=> b!5084272 d!1645026))

(assert (=> b!5084272 d!1645028))

(declare-fun d!1645832 () Bool)

(declare-fun lt!2091596 () Int)

(assert (=> d!1645832 (>= lt!2091596 0)))

(declare-fun e!3171881 () Int)

(assert (=> d!1645832 (= lt!2091596 e!3171881)))

(declare-fun c!873807 () Bool)

(assert (=> d!1645832 (= c!873807 ((_ is Nil!58456) (list!19035 (xs!18964 err!4617))))))

(assert (=> d!1645832 (= (size!39119 (list!19035 (xs!18964 err!4617))) lt!2091596)))

(declare-fun b!5085612 () Bool)

(assert (=> b!5085612 (= e!3171881 0)))

(declare-fun b!5085613 () Bool)

(assert (=> b!5085613 (= e!3171881 (+ 1 (size!39119 (t!371417 (list!19035 (xs!18964 err!4617))))))))

(assert (= (and d!1645832 c!873807) b!5085612))

(assert (= (and d!1645832 (not c!873807)) b!5085613))

(declare-fun m!6142338 () Bool)

(assert (=> b!5085613 m!6142338))

(assert (=> d!1645050 d!1645832))

(declare-fun d!1645834 () Bool)

(assert (=> d!1645834 (= (list!19035 (xs!18964 err!4617)) (innerList!15674 (xs!18964 err!4617)))))

(assert (=> d!1645050 d!1645834))

(declare-fun d!1645836 () Bool)

(assert (=> d!1645836 (= (height!2163 (left!42849 (right!43179 lt!2091392))) (ite ((_ is Empty!15586) (left!42849 (right!43179 lt!2091392))) 0 (ite ((_ is Leaf!25884) (left!42849 (right!43179 lt!2091392))) 1 (cheight!15797 (left!42849 (right!43179 lt!2091392))))))))

(assert (=> b!5084634 d!1645836))

(declare-fun d!1645838 () Bool)

(assert (=> d!1645838 (= (height!2163 (right!43179 (right!43179 lt!2091392))) (ite ((_ is Empty!15586) (right!43179 (right!43179 lt!2091392))) 0 (ite ((_ is Leaf!25884) (right!43179 (right!43179 lt!2091392))) 1 (cheight!15797 (right!43179 (right!43179 lt!2091392))))))))

(assert (=> b!5084634 d!1645838))

(declare-fun d!1645840 () Bool)

(declare-fun lt!2091597 () Bool)

(assert (=> d!1645840 (= lt!2091597 (isEmpty!31677 (list!19033 (left!42849 (left!42849 lt!2091392)))))))

(assert (=> d!1645840 (= lt!2091597 (= (size!39121 (left!42849 (left!42849 lt!2091392))) 0))))

(assert (=> d!1645840 (= (isEmpty!31675 (left!42849 (left!42849 lt!2091392))) lt!2091597)))

(declare-fun bs!1190908 () Bool)

(assert (= bs!1190908 d!1645840))

(assert (=> bs!1190908 m!6140466))

(assert (=> bs!1190908 m!6140466))

(declare-fun m!6142340 () Bool)

(assert (=> bs!1190908 m!6142340))

(declare-fun m!6142342 () Bool)

(assert (=> bs!1190908 m!6142342))

(assert (=> b!5084759 d!1645840))

(declare-fun d!1645842 () Bool)

(declare-fun lt!2091598 () Int)

(assert (=> d!1645842 (= lt!2091598 (size!39119 (list!19033 (left!42849 (right!43179 ys!41)))))))

(assert (=> d!1645842 (= lt!2091598 (ite ((_ is Empty!15586) (left!42849 (right!43179 ys!41))) 0 (ite ((_ is Leaf!25884) (left!42849 (right!43179 ys!41))) (csize!31403 (left!42849 (right!43179 ys!41))) (csize!31402 (left!42849 (right!43179 ys!41))))))))

(assert (=> d!1645842 (= (size!39121 (left!42849 (right!43179 ys!41))) lt!2091598)))

(declare-fun bs!1190909 () Bool)

(assert (= bs!1190909 d!1645842))

(assert (=> bs!1190909 m!6140496))

(assert (=> bs!1190909 m!6140496))

(declare-fun m!6142344 () Bool)

(assert (=> bs!1190909 m!6142344))

(assert (=> d!1644984 d!1645842))

(declare-fun d!1645844 () Bool)

(declare-fun lt!2091599 () Int)

(assert (=> d!1645844 (= lt!2091599 (size!39119 (list!19033 (right!43179 (right!43179 ys!41)))))))

(assert (=> d!1645844 (= lt!2091599 (ite ((_ is Empty!15586) (right!43179 (right!43179 ys!41))) 0 (ite ((_ is Leaf!25884) (right!43179 (right!43179 ys!41))) (csize!31403 (right!43179 (right!43179 ys!41))) (csize!31402 (right!43179 (right!43179 ys!41))))))))

(assert (=> d!1645844 (= (size!39121 (right!43179 (right!43179 ys!41))) lt!2091599)))

(declare-fun bs!1190910 () Bool)

(assert (= bs!1190910 d!1645844))

(assert (=> bs!1190910 m!6140498))

(assert (=> bs!1190910 m!6140498))

(declare-fun m!6142346 () Bool)

(assert (=> bs!1190910 m!6142346))

(assert (=> d!1644984 d!1645844))

(declare-fun d!1645846 () Bool)

(declare-fun c!873808 () Bool)

(assert (=> d!1645846 (= c!873808 ((_ is Nil!58456) (t!371417 lt!2091399)))))

(declare-fun e!3171882 () (InoxSet T!105272))

(assert (=> d!1645846 (= (content!10430 (t!371417 lt!2091399)) e!3171882)))

(declare-fun b!5085614 () Bool)

(assert (=> b!5085614 (= e!3171882 ((as const (Array T!105272 Bool)) false))))

(declare-fun b!5085615 () Bool)

(assert (=> b!5085615 (= e!3171882 ((_ map or) (store ((as const (Array T!105272 Bool)) false) (h!64904 (t!371417 lt!2091399)) true) (content!10430 (t!371417 (t!371417 lt!2091399)))))))

(assert (= (and d!1645846 c!873808) b!5085614))

(assert (= (and d!1645846 (not c!873808)) b!5085615))

(declare-fun m!6142348 () Bool)

(assert (=> b!5085615 m!6142348))

(declare-fun m!6142350 () Bool)

(assert (=> b!5085615 m!6142350))

(assert (=> b!5084740 d!1645846))

(assert (=> bm!354393 d!1645116))

(declare-fun d!1645848 () Bool)

(assert (=> d!1645848 (= (list!19035 (xs!18964 (right!43179 (left!42849 ys!41)))) (innerList!15674 (xs!18964 (right!43179 (left!42849 ys!41)))))))

(assert (=> b!5084708 d!1645848))

(assert (=> b!5084281 d!1645044))

(assert (=> b!5084281 d!1645046))

(declare-fun b!5085617 () Bool)

(declare-fun e!3171883 () List!58580)

(assert (=> b!5085617 (= e!3171883 (Cons!58456 (h!64904 (t!371417 (list!19033 (right!43179 (right!43179 xs!286))))) (++!12815 (t!371417 (t!371417 (list!19033 (right!43179 (right!43179 xs!286))))) (list!19033 ys!41))))))

(declare-fun d!1645850 () Bool)

(declare-fun e!3171884 () Bool)

(assert (=> d!1645850 e!3171884))

(declare-fun res!2165022 () Bool)

(assert (=> d!1645850 (=> (not res!2165022) (not e!3171884))))

(declare-fun lt!2091600 () List!58580)

(assert (=> d!1645850 (= res!2165022 (= (content!10430 lt!2091600) ((_ map or) (content!10430 (t!371417 (list!19033 (right!43179 (right!43179 xs!286))))) (content!10430 (list!19033 ys!41)))))))

(assert (=> d!1645850 (= lt!2091600 e!3171883)))

(declare-fun c!873809 () Bool)

(assert (=> d!1645850 (= c!873809 ((_ is Nil!58456) (t!371417 (list!19033 (right!43179 (right!43179 xs!286))))))))

(assert (=> d!1645850 (= (++!12815 (t!371417 (list!19033 (right!43179 (right!43179 xs!286)))) (list!19033 ys!41)) lt!2091600)))

(declare-fun b!5085616 () Bool)

(assert (=> b!5085616 (= e!3171883 (list!19033 ys!41))))

(declare-fun b!5085619 () Bool)

(assert (=> b!5085619 (= e!3171884 (or (not (= (list!19033 ys!41) Nil!58456)) (= lt!2091600 (t!371417 (list!19033 (right!43179 (right!43179 xs!286)))))))))

(declare-fun b!5085618 () Bool)

(declare-fun res!2165021 () Bool)

(assert (=> b!5085618 (=> (not res!2165021) (not e!3171884))))

(assert (=> b!5085618 (= res!2165021 (= (size!39119 lt!2091600) (+ (size!39119 (t!371417 (list!19033 (right!43179 (right!43179 xs!286))))) (size!39119 (list!19033 ys!41)))))))

(assert (= (and d!1645850 c!873809) b!5085616))

(assert (= (and d!1645850 (not c!873809)) b!5085617))

(assert (= (and d!1645850 res!2165022) b!5085618))

(assert (= (and b!5085618 res!2165021) b!5085619))

(assert (=> b!5085617 m!6139376))

(declare-fun m!6142352 () Bool)

(assert (=> b!5085617 m!6142352))

(declare-fun m!6142354 () Bool)

(assert (=> d!1645850 m!6142354))

(declare-fun m!6142356 () Bool)

(assert (=> d!1645850 m!6142356))

(assert (=> d!1645850 m!6139376))

(assert (=> d!1645850 m!6139702))

(declare-fun m!6142358 () Bool)

(assert (=> b!5085618 m!6142358))

(declare-fun m!6142360 () Bool)

(assert (=> b!5085618 m!6142360))

(assert (=> b!5085618 m!6139376))

(assert (=> b!5085618 m!6139708))

(assert (=> b!5084751 d!1645850))

(declare-fun b!5085620 () Bool)

(declare-fun res!2165028 () Bool)

(declare-fun e!3171885 () Bool)

(assert (=> b!5085620 (=> (not res!2165028) (not e!3171885))))

(assert (=> b!5085620 (= res!2165028 (isBalanced!4448 (right!43179 (right!43179 (left!42849 ys!41)))))))

(declare-fun b!5085621 () Bool)

(declare-fun res!2165026 () Bool)

(assert (=> b!5085621 (=> (not res!2165026) (not e!3171885))))

(assert (=> b!5085621 (= res!2165026 (<= (- (height!2163 (left!42849 (right!43179 (left!42849 ys!41)))) (height!2163 (right!43179 (right!43179 (left!42849 ys!41))))) 1))))

(declare-fun b!5085622 () Bool)

(declare-fun e!3171886 () Bool)

(assert (=> b!5085622 (= e!3171886 e!3171885)))

(declare-fun res!2165024 () Bool)

(assert (=> b!5085622 (=> (not res!2165024) (not e!3171885))))

(assert (=> b!5085622 (= res!2165024 (<= (- 1) (- (height!2163 (left!42849 (right!43179 (left!42849 ys!41)))) (height!2163 (right!43179 (right!43179 (left!42849 ys!41)))))))))

(declare-fun b!5085623 () Bool)

(declare-fun res!2165027 () Bool)

(assert (=> b!5085623 (=> (not res!2165027) (not e!3171885))))

(assert (=> b!5085623 (= res!2165027 (not (isEmpty!31675 (left!42849 (right!43179 (left!42849 ys!41))))))))

(declare-fun b!5085624 () Bool)

(declare-fun res!2165023 () Bool)

(assert (=> b!5085624 (=> (not res!2165023) (not e!3171885))))

(assert (=> b!5085624 (= res!2165023 (isBalanced!4448 (left!42849 (right!43179 (left!42849 ys!41)))))))

(declare-fun b!5085625 () Bool)

(assert (=> b!5085625 (= e!3171885 (not (isEmpty!31675 (right!43179 (right!43179 (left!42849 ys!41))))))))

(declare-fun d!1645852 () Bool)

(declare-fun res!2165025 () Bool)

(assert (=> d!1645852 (=> res!2165025 e!3171886)))

(assert (=> d!1645852 (= res!2165025 (not ((_ is Node!15586) (right!43179 (left!42849 ys!41)))))))

(assert (=> d!1645852 (= (isBalanced!4448 (right!43179 (left!42849 ys!41))) e!3171886)))

(assert (= (and d!1645852 (not res!2165025)) b!5085622))

(assert (= (and b!5085622 res!2165024) b!5085621))

(assert (= (and b!5085621 res!2165026) b!5085624))

(assert (= (and b!5085624 res!2165023) b!5085620))

(assert (= (and b!5085620 res!2165028) b!5085623))

(assert (= (and b!5085623 res!2165027) b!5085625))

(declare-fun m!6142362 () Bool)

(assert (=> b!5085624 m!6142362))

(declare-fun m!6142364 () Bool)

(assert (=> b!5085625 m!6142364))

(declare-fun m!6142366 () Bool)

(assert (=> b!5085623 m!6142366))

(declare-fun m!6142368 () Bool)

(assert (=> b!5085622 m!6142368))

(declare-fun m!6142370 () Bool)

(assert (=> b!5085622 m!6142370))

(assert (=> b!5085621 m!6142368))

(assert (=> b!5085621 m!6142370))

(declare-fun m!6142372 () Bool)

(assert (=> b!5085620 m!6142372))

(assert (=> b!5084611 d!1645852))

(declare-fun d!1645854 () Bool)

(declare-fun res!2165029 () Bool)

(declare-fun e!3171887 () Bool)

(assert (=> d!1645854 (=> (not res!2165029) (not e!3171887))))

(assert (=> d!1645854 (= res!2165029 (<= (size!39119 (list!19035 (xs!18964 (right!43179 (left!42849 xs!286))))) 512))))

(assert (=> d!1645854 (= (inv!77681 (right!43179 (left!42849 xs!286))) e!3171887)))

(declare-fun b!5085626 () Bool)

(declare-fun res!2165030 () Bool)

(assert (=> b!5085626 (=> (not res!2165030) (not e!3171887))))

(assert (=> b!5085626 (= res!2165030 (= (csize!31403 (right!43179 (left!42849 xs!286))) (size!39119 (list!19035 (xs!18964 (right!43179 (left!42849 xs!286)))))))))

(declare-fun b!5085627 () Bool)

(assert (=> b!5085627 (= e!3171887 (and (> (csize!31403 (right!43179 (left!42849 xs!286))) 0) (<= (csize!31403 (right!43179 (left!42849 xs!286))) 512)))))

(assert (= (and d!1645854 res!2165029) b!5085626))

(assert (= (and b!5085626 res!2165030) b!5085627))

(declare-fun m!6142374 () Bool)

(assert (=> d!1645854 m!6142374))

(assert (=> d!1645854 m!6142374))

(declare-fun m!6142376 () Bool)

(assert (=> d!1645854 m!6142376))

(assert (=> b!5085626 m!6142374))

(assert (=> b!5085626 m!6142374))

(assert (=> b!5085626 m!6142376))

(assert (=> b!5084631 d!1645854))

(declare-fun d!1645856 () Bool)

(declare-fun lt!2091601 () Int)

(assert (=> d!1645856 (= lt!2091601 (size!39119 (list!19033 (left!42849 (left!42849 xs!286)))))))

(assert (=> d!1645856 (= lt!2091601 (ite ((_ is Empty!15586) (left!42849 (left!42849 xs!286))) 0 (ite ((_ is Leaf!25884) (left!42849 (left!42849 xs!286))) (csize!31403 (left!42849 (left!42849 xs!286))) (csize!31402 (left!42849 (left!42849 xs!286))))))))

(assert (=> d!1645856 (= (size!39121 (left!42849 (left!42849 xs!286))) lt!2091601)))

(declare-fun bs!1190911 () Bool)

(assert (= bs!1190911 d!1645856))

(assert (=> bs!1190911 m!6140294))

(assert (=> bs!1190911 m!6140294))

(declare-fun m!6142378 () Bool)

(assert (=> bs!1190911 m!6142378))

(assert (=> d!1645094 d!1645856))

(declare-fun d!1645858 () Bool)

(declare-fun lt!2091602 () Int)

(assert (=> d!1645858 (= lt!2091602 (size!39119 (list!19033 (right!43179 (left!42849 xs!286)))))))

(assert (=> d!1645858 (= lt!2091602 (ite ((_ is Empty!15586) (right!43179 (left!42849 xs!286))) 0 (ite ((_ is Leaf!25884) (right!43179 (left!42849 xs!286))) (csize!31403 (right!43179 (left!42849 xs!286))) (csize!31402 (right!43179 (left!42849 xs!286))))))))

(assert (=> d!1645858 (= (size!39121 (right!43179 (left!42849 xs!286))) lt!2091602)))

(declare-fun bs!1190912 () Bool)

(assert (= bs!1190912 d!1645858))

(assert (=> bs!1190912 m!6140296))

(assert (=> bs!1190912 m!6140296))

(declare-fun m!6142380 () Bool)

(assert (=> bs!1190912 m!6142380))

(assert (=> d!1645094 d!1645858))

(assert (=> b!5084692 d!1645736))

(assert (=> b!5084692 d!1645738))

(declare-fun d!1645860 () Bool)

(declare-fun c!873810 () Bool)

(assert (=> d!1645860 (= c!873810 ((_ is Node!15586) (left!42849 (left!42849 (right!43179 err!4617)))))))

(declare-fun e!3171888 () Bool)

(assert (=> d!1645860 (= (inv!77676 (left!42849 (left!42849 (right!43179 err!4617)))) e!3171888)))

(declare-fun b!5085628 () Bool)

(assert (=> b!5085628 (= e!3171888 (inv!77680 (left!42849 (left!42849 (right!43179 err!4617)))))))

(declare-fun b!5085629 () Bool)

(declare-fun e!3171889 () Bool)

(assert (=> b!5085629 (= e!3171888 e!3171889)))

(declare-fun res!2165031 () Bool)

(assert (=> b!5085629 (= res!2165031 (not ((_ is Leaf!25884) (left!42849 (left!42849 (right!43179 err!4617))))))))

(assert (=> b!5085629 (=> res!2165031 e!3171889)))

(declare-fun b!5085630 () Bool)

(assert (=> b!5085630 (= e!3171889 (inv!77681 (left!42849 (left!42849 (right!43179 err!4617)))))))

(assert (= (and d!1645860 c!873810) b!5085628))

(assert (= (and d!1645860 (not c!873810)) b!5085629))

(assert (= (and b!5085629 (not res!2165031)) b!5085630))

(declare-fun m!6142382 () Bool)

(assert (=> b!5085628 m!6142382))

(declare-fun m!6142384 () Bool)

(assert (=> b!5085630 m!6142384))

(assert (=> b!5084837 d!1645860))

(declare-fun d!1645862 () Bool)

(declare-fun c!873811 () Bool)

(assert (=> d!1645862 (= c!873811 ((_ is Node!15586) (right!43179 (left!42849 (right!43179 err!4617)))))))

(declare-fun e!3171890 () Bool)

(assert (=> d!1645862 (= (inv!77676 (right!43179 (left!42849 (right!43179 err!4617)))) e!3171890)))

(declare-fun b!5085631 () Bool)

(assert (=> b!5085631 (= e!3171890 (inv!77680 (right!43179 (left!42849 (right!43179 err!4617)))))))

(declare-fun b!5085632 () Bool)

(declare-fun e!3171891 () Bool)

(assert (=> b!5085632 (= e!3171890 e!3171891)))

(declare-fun res!2165032 () Bool)

(assert (=> b!5085632 (= res!2165032 (not ((_ is Leaf!25884) (right!43179 (left!42849 (right!43179 err!4617))))))))

(assert (=> b!5085632 (=> res!2165032 e!3171891)))

(declare-fun b!5085633 () Bool)

(assert (=> b!5085633 (= e!3171891 (inv!77681 (right!43179 (left!42849 (right!43179 err!4617)))))))

(assert (= (and d!1645862 c!873811) b!5085631))

(assert (= (and d!1645862 (not c!873811)) b!5085632))

(assert (= (and b!5085632 (not res!2165032)) b!5085633))

(declare-fun m!6142386 () Bool)

(assert (=> b!5085631 m!6142386))

(declare-fun m!6142388 () Bool)

(assert (=> b!5085633 m!6142388))

(assert (=> b!5084837 d!1645862))

(declare-fun d!1645864 () Bool)

(declare-fun c!873812 () Bool)

(assert (=> d!1645864 (= c!873812 ((_ is Node!15586) (left!42849 (right!43179 (left!42849 xs!286)))))))

(declare-fun e!3171892 () Bool)

(assert (=> d!1645864 (= (inv!77676 (left!42849 (right!43179 (left!42849 xs!286)))) e!3171892)))

(declare-fun b!5085634 () Bool)

(assert (=> b!5085634 (= e!3171892 (inv!77680 (left!42849 (right!43179 (left!42849 xs!286)))))))

(declare-fun b!5085635 () Bool)

(declare-fun e!3171893 () Bool)

(assert (=> b!5085635 (= e!3171892 e!3171893)))

(declare-fun res!2165033 () Bool)

(assert (=> b!5085635 (= res!2165033 (not ((_ is Leaf!25884) (left!42849 (right!43179 (left!42849 xs!286))))))))

(assert (=> b!5085635 (=> res!2165033 e!3171893)))

(declare-fun b!5085636 () Bool)

(assert (=> b!5085636 (= e!3171893 (inv!77681 (left!42849 (right!43179 (left!42849 xs!286)))))))

(assert (= (and d!1645864 c!873812) b!5085634))

(assert (= (and d!1645864 (not c!873812)) b!5085635))

(assert (= (and b!5085635 (not res!2165033)) b!5085636))

(declare-fun m!6142390 () Bool)

(assert (=> b!5085634 m!6142390))

(declare-fun m!6142392 () Bool)

(assert (=> b!5085636 m!6142392))

(assert (=> b!5084846 d!1645864))

(declare-fun d!1645866 () Bool)

(declare-fun c!873813 () Bool)

(assert (=> d!1645866 (= c!873813 ((_ is Node!15586) (right!43179 (right!43179 (left!42849 xs!286)))))))

(declare-fun e!3171894 () Bool)

(assert (=> d!1645866 (= (inv!77676 (right!43179 (right!43179 (left!42849 xs!286)))) e!3171894)))

(declare-fun b!5085637 () Bool)

(assert (=> b!5085637 (= e!3171894 (inv!77680 (right!43179 (right!43179 (left!42849 xs!286)))))))

(declare-fun b!5085638 () Bool)

(declare-fun e!3171895 () Bool)

(assert (=> b!5085638 (= e!3171894 e!3171895)))

(declare-fun res!2165034 () Bool)

(assert (=> b!5085638 (= res!2165034 (not ((_ is Leaf!25884) (right!43179 (right!43179 (left!42849 xs!286))))))))

(assert (=> b!5085638 (=> res!2165034 e!3171895)))

(declare-fun b!5085639 () Bool)

(assert (=> b!5085639 (= e!3171895 (inv!77681 (right!43179 (right!43179 (left!42849 xs!286)))))))

(assert (= (and d!1645866 c!873813) b!5085637))

(assert (= (and d!1645866 (not c!873813)) b!5085638))

(assert (= (and b!5085638 (not res!2165034)) b!5085639))

(declare-fun m!6142394 () Bool)

(assert (=> b!5085637 m!6142394))

(declare-fun m!6142396 () Bool)

(assert (=> b!5085639 m!6142396))

(assert (=> b!5084846 d!1645866))

(declare-fun d!1645868 () Bool)

(declare-fun lt!2091603 () Bool)

(assert (=> d!1645868 (= lt!2091603 (isEmpty!31677 (list!19033 (left!42849 (left!42849 xs!286)))))))

(assert (=> d!1645868 (= lt!2091603 (= (size!39121 (left!42849 (left!42849 xs!286))) 0))))

(assert (=> d!1645868 (= (isEmpty!31675 (left!42849 (left!42849 xs!286))) lt!2091603)))

(declare-fun bs!1190913 () Bool)

(assert (= bs!1190913 d!1645868))

(assert (=> bs!1190913 m!6140294))

(assert (=> bs!1190913 m!6140294))

(declare-fun m!6142398 () Bool)

(assert (=> bs!1190913 m!6142398))

(assert (=> bs!1190913 m!6140576))

(assert (=> b!5084792 d!1645868))

(declare-fun b!5085641 () Bool)

(declare-fun e!3171896 () List!58580)

(assert (=> b!5085641 (= e!3171896 (Cons!58456 (h!64904 (list!19033 xs!286)) (++!12815 (t!371417 (list!19033 xs!286)) call!354421)))))

(declare-fun d!1645870 () Bool)

(declare-fun e!3171897 () Bool)

(assert (=> d!1645870 e!3171897))

(declare-fun res!2165036 () Bool)

(assert (=> d!1645870 (=> (not res!2165036) (not e!3171897))))

(declare-fun lt!2091604 () List!58580)

(assert (=> d!1645870 (= res!2165036 (= (content!10430 lt!2091604) ((_ map or) (content!10430 (list!19033 xs!286)) (content!10430 call!354421))))))

(assert (=> d!1645870 (= lt!2091604 e!3171896)))

(declare-fun c!873814 () Bool)

(assert (=> d!1645870 (= c!873814 ((_ is Nil!58456) (list!19033 xs!286)))))

(assert (=> d!1645870 (= (++!12815 (list!19033 xs!286) call!354421) lt!2091604)))

(declare-fun b!5085640 () Bool)

(assert (=> b!5085640 (= e!3171896 call!354421)))

(declare-fun b!5085643 () Bool)

(assert (=> b!5085643 (= e!3171897 (or (not (= call!354421 Nil!58456)) (= lt!2091604 (list!19033 xs!286))))))

(declare-fun b!5085642 () Bool)

(declare-fun res!2165035 () Bool)

(assert (=> b!5085642 (=> (not res!2165035) (not e!3171897))))

(assert (=> b!5085642 (= res!2165035 (= (size!39119 lt!2091604) (+ (size!39119 (list!19033 xs!286)) (size!39119 call!354421))))))

(assert (= (and d!1645870 c!873814) b!5085640))

(assert (= (and d!1645870 (not c!873814)) b!5085641))

(assert (= (and d!1645870 res!2165036) b!5085642))

(assert (= (and b!5085642 res!2165035) b!5085643))

(declare-fun m!6142400 () Bool)

(assert (=> b!5085641 m!6142400))

(declare-fun m!6142402 () Bool)

(assert (=> d!1645870 m!6142402))

(assert (=> d!1645870 m!6139374))

(assert (=> d!1645870 m!6139700))

(declare-fun m!6142404 () Bool)

(assert (=> d!1645870 m!6142404))

(declare-fun m!6142406 () Bool)

(assert (=> b!5085642 m!6142406))

(assert (=> b!5085642 m!6139374))

(assert (=> b!5085642 m!6139706))

(declare-fun m!6142408 () Bool)

(assert (=> b!5085642 m!6142408))

(assert (=> bm!354416 d!1645870))

(declare-fun b!5085645 () Bool)

(declare-fun e!3171898 () List!58580)

(assert (=> b!5085645 (= e!3171898 (Cons!58456 (h!64904 call!354407) (++!12815 (t!371417 call!354407) (list!19033 ys!41))))))

(declare-fun d!1645872 () Bool)

(declare-fun e!3171899 () Bool)

(assert (=> d!1645872 e!3171899))

(declare-fun res!2165038 () Bool)

(assert (=> d!1645872 (=> (not res!2165038) (not e!3171899))))

(declare-fun lt!2091605 () List!58580)

(assert (=> d!1645872 (= res!2165038 (= (content!10430 lt!2091605) ((_ map or) (content!10430 call!354407) (content!10430 (list!19033 ys!41)))))))

(assert (=> d!1645872 (= lt!2091605 e!3171898)))

(declare-fun c!873815 () Bool)

(assert (=> d!1645872 (= c!873815 ((_ is Nil!58456) call!354407))))

(assert (=> d!1645872 (= (++!12815 call!354407 (list!19033 ys!41)) lt!2091605)))

(declare-fun b!5085644 () Bool)

(assert (=> b!5085644 (= e!3171898 (list!19033 ys!41))))

(declare-fun b!5085647 () Bool)

(assert (=> b!5085647 (= e!3171899 (or (not (= (list!19033 ys!41) Nil!58456)) (= lt!2091605 call!354407)))))

(declare-fun b!5085646 () Bool)

(declare-fun res!2165037 () Bool)

(assert (=> b!5085646 (=> (not res!2165037) (not e!3171899))))

(assert (=> b!5085646 (= res!2165037 (= (size!39119 lt!2091605) (+ (size!39119 call!354407) (size!39119 (list!19033 ys!41)))))))

(assert (= (and d!1645872 c!873815) b!5085644))

(assert (= (and d!1645872 (not c!873815)) b!5085645))

(assert (= (and d!1645872 res!2165038) b!5085646))

(assert (= (and b!5085646 res!2165037) b!5085647))

(assert (=> b!5085645 m!6139376))

(declare-fun m!6142410 () Bool)

(assert (=> b!5085645 m!6142410))

(declare-fun m!6142412 () Bool)

(assert (=> d!1645872 m!6142412))

(declare-fun m!6142414 () Bool)

(assert (=> d!1645872 m!6142414))

(assert (=> d!1645872 m!6139376))

(assert (=> d!1645872 m!6139702))

(declare-fun m!6142416 () Bool)

(assert (=> b!5085646 m!6142416))

(declare-fun m!6142418 () Bool)

(assert (=> b!5085646 m!6142418))

(assert (=> b!5085646 m!6139376))

(assert (=> b!5085646 m!6139708))

(assert (=> bm!354402 d!1645872))

(declare-fun d!1645874 () Bool)

(declare-fun res!2165039 () Bool)

(declare-fun e!3171900 () Bool)

(assert (=> d!1645874 (=> (not res!2165039) (not e!3171900))))

(assert (=> d!1645874 (= res!2165039 (<= (size!39119 (list!19035 (xs!18964 (left!42849 (left!42849 err!4617))))) 512))))

(assert (=> d!1645874 (= (inv!77681 (left!42849 (left!42849 err!4617))) e!3171900)))

(declare-fun b!5085648 () Bool)

(declare-fun res!2165040 () Bool)

(assert (=> b!5085648 (=> (not res!2165040) (not e!3171900))))

(assert (=> b!5085648 (= res!2165040 (= (csize!31403 (left!42849 (left!42849 err!4617))) (size!39119 (list!19035 (xs!18964 (left!42849 (left!42849 err!4617)))))))))

(declare-fun b!5085649 () Bool)

(assert (=> b!5085649 (= e!3171900 (and (> (csize!31403 (left!42849 (left!42849 err!4617))) 0) (<= (csize!31403 (left!42849 (left!42849 err!4617))) 512)))))

(assert (= (and d!1645874 res!2165039) b!5085648))

(assert (= (and b!5085648 res!2165040) b!5085649))

(declare-fun m!6142420 () Bool)

(assert (=> d!1645874 m!6142420))

(assert (=> d!1645874 m!6142420))

(declare-fun m!6142422 () Bool)

(assert (=> d!1645874 m!6142422))

(assert (=> b!5085648 m!6142420))

(assert (=> b!5085648 m!6142420))

(assert (=> b!5085648 m!6142422))

(assert (=> b!5084671 d!1645874))

(declare-fun d!1645876 () Bool)

(declare-fun lt!2091606 () Int)

(assert (=> d!1645876 (>= lt!2091606 0)))

(declare-fun e!3171901 () Int)

(assert (=> d!1645876 (= lt!2091606 e!3171901)))

(declare-fun c!873816 () Bool)

(assert (=> d!1645876 (= c!873816 ((_ is Nil!58456) (list!19035 (xs!18964 xs!286))))))

(assert (=> d!1645876 (= (size!39119 (list!19035 (xs!18964 xs!286))) lt!2091606)))

(declare-fun b!5085650 () Bool)

(assert (=> b!5085650 (= e!3171901 0)))

(declare-fun b!5085651 () Bool)

(assert (=> b!5085651 (= e!3171901 (+ 1 (size!39119 (t!371417 (list!19035 (xs!18964 xs!286))))))))

(assert (= (and d!1645876 c!873816) b!5085650))

(assert (= (and d!1645876 (not c!873816)) b!5085651))

(declare-fun m!6142424 () Bool)

(assert (=> b!5085651 m!6142424))

(assert (=> b!5084677 d!1645876))

(assert (=> b!5084677 d!1645086))

(declare-fun b!5085652 () Bool)

(declare-fun res!2165046 () Bool)

(declare-fun e!3171902 () Bool)

(assert (=> b!5085652 (=> (not res!2165046) (not e!3171902))))

(assert (=> b!5085652 (= res!2165046 (isBalanced!4448 (right!43179 (left!42849 (right!43179 xs!286)))))))

(declare-fun b!5085653 () Bool)

(declare-fun res!2165044 () Bool)

(assert (=> b!5085653 (=> (not res!2165044) (not e!3171902))))

(assert (=> b!5085653 (= res!2165044 (<= (- (height!2163 (left!42849 (left!42849 (right!43179 xs!286)))) (height!2163 (right!43179 (left!42849 (right!43179 xs!286))))) 1))))

(declare-fun b!5085654 () Bool)

(declare-fun e!3171903 () Bool)

(assert (=> b!5085654 (= e!3171903 e!3171902)))

(declare-fun res!2165042 () Bool)

(assert (=> b!5085654 (=> (not res!2165042) (not e!3171902))))

(assert (=> b!5085654 (= res!2165042 (<= (- 1) (- (height!2163 (left!42849 (left!42849 (right!43179 xs!286)))) (height!2163 (right!43179 (left!42849 (right!43179 xs!286)))))))))

(declare-fun b!5085655 () Bool)

(declare-fun res!2165045 () Bool)

(assert (=> b!5085655 (=> (not res!2165045) (not e!3171902))))

(assert (=> b!5085655 (= res!2165045 (not (isEmpty!31675 (left!42849 (left!42849 (right!43179 xs!286))))))))

(declare-fun b!5085656 () Bool)

(declare-fun res!2165041 () Bool)

(assert (=> b!5085656 (=> (not res!2165041) (not e!3171902))))

(assert (=> b!5085656 (= res!2165041 (isBalanced!4448 (left!42849 (left!42849 (right!43179 xs!286)))))))

(declare-fun b!5085657 () Bool)

(assert (=> b!5085657 (= e!3171902 (not (isEmpty!31675 (right!43179 (left!42849 (right!43179 xs!286))))))))

(declare-fun d!1645878 () Bool)

(declare-fun res!2165043 () Bool)

(assert (=> d!1645878 (=> res!2165043 e!3171903)))

(assert (=> d!1645878 (= res!2165043 (not ((_ is Node!15586) (left!42849 (right!43179 xs!286)))))))

(assert (=> d!1645878 (= (isBalanced!4448 (left!42849 (right!43179 xs!286))) e!3171903)))

(assert (= (and d!1645878 (not res!2165043)) b!5085654))

(assert (= (and b!5085654 res!2165042) b!5085653))

(assert (= (and b!5085653 res!2165044) b!5085656))

(assert (= (and b!5085656 res!2165041) b!5085652))

(assert (= (and b!5085652 res!2165046) b!5085655))

(assert (= (and b!5085655 res!2165045) b!5085657))

(declare-fun m!6142426 () Bool)

(assert (=> b!5085656 m!6142426))

(declare-fun m!6142428 () Bool)

(assert (=> b!5085657 m!6142428))

(declare-fun m!6142430 () Bool)

(assert (=> b!5085655 m!6142430))

(assert (=> b!5085654 m!6142096))

(assert (=> b!5085654 m!6142098))

(assert (=> b!5085653 m!6142096))

(assert (=> b!5085653 m!6142098))

(declare-fun m!6142432 () Bool)

(assert (=> b!5085652 m!6142432))

(assert (=> b!5084769 d!1645878))

(declare-fun d!1645880 () Bool)

(declare-fun lt!2091607 () Int)

(assert (=> d!1645880 (>= lt!2091607 0)))

(declare-fun e!3171904 () Int)

(assert (=> d!1645880 (= lt!2091607 e!3171904)))

(declare-fun c!873817 () Bool)

(assert (=> d!1645880 (= c!873817 ((_ is Nil!58456) (list!19035 (xs!18964 (left!42849 xs!286)))))))

(assert (=> d!1645880 (= (size!39119 (list!19035 (xs!18964 (left!42849 xs!286)))) lt!2091607)))

(declare-fun b!5085658 () Bool)

(assert (=> b!5085658 (= e!3171904 0)))

(declare-fun b!5085659 () Bool)

(assert (=> b!5085659 (= e!3171904 (+ 1 (size!39119 (t!371417 (list!19035 (xs!18964 (left!42849 xs!286)))))))))

(assert (= (and d!1645880 c!873817) b!5085658))

(assert (= (and d!1645880 (not c!873817)) b!5085659))

(declare-fun m!6142434 () Bool)

(assert (=> b!5085659 m!6142434))

(assert (=> b!5084667 d!1645880))

(declare-fun d!1645882 () Bool)

(assert (=> d!1645882 (= (list!19035 (xs!18964 (left!42849 xs!286))) (innerList!15674 (xs!18964 (left!42849 xs!286))))))

(assert (=> b!5084667 d!1645882))

(declare-fun d!1645884 () Bool)

(declare-fun res!2165047 () Bool)

(declare-fun e!3171905 () Bool)

(assert (=> d!1645884 (=> (not res!2165047) (not e!3171905))))

(assert (=> d!1645884 (= res!2165047 (<= (size!39119 (list!19035 (xs!18964 (right!43179 (right!43179 err!4617))))) 512))))

(assert (=> d!1645884 (= (inv!77681 (right!43179 (right!43179 err!4617))) e!3171905)))

(declare-fun b!5085660 () Bool)

(declare-fun res!2165048 () Bool)

(assert (=> b!5085660 (=> (not res!2165048) (not e!3171905))))

(assert (=> b!5085660 (= res!2165048 (= (csize!31403 (right!43179 (right!43179 err!4617))) (size!39119 (list!19035 (xs!18964 (right!43179 (right!43179 err!4617)))))))))

(declare-fun b!5085661 () Bool)

(assert (=> b!5085661 (= e!3171905 (and (> (csize!31403 (right!43179 (right!43179 err!4617))) 0) (<= (csize!31403 (right!43179 (right!43179 err!4617))) 512)))))

(assert (= (and d!1645884 res!2165047) b!5085660))

(assert (= (and b!5085660 res!2165048) b!5085661))

(declare-fun m!6142436 () Bool)

(assert (=> d!1645884 m!6142436))

(assert (=> d!1645884 m!6142436))

(declare-fun m!6142438 () Bool)

(assert (=> d!1645884 m!6142438))

(assert (=> b!5085660 m!6142436))

(assert (=> b!5085660 m!6142436))

(assert (=> b!5085660 m!6142438))

(assert (=> b!5084625 d!1645884))

(assert (=> b!5084758 d!1645716))

(assert (=> b!5084758 d!1645718))

(declare-fun d!1645886 () Bool)

(assert (=> d!1645886 (= (inv!77677 (xs!18964 (left!42849 (right!43179 ys!41)))) (<= (size!39119 (innerList!15674 (xs!18964 (left!42849 (right!43179 ys!41))))) 2147483647))))

(declare-fun bs!1190914 () Bool)

(assert (= bs!1190914 d!1645886))

(declare-fun m!6142440 () Bool)

(assert (=> bs!1190914 m!6142440))

(assert (=> b!5084806 d!1645886))

(assert (=> b!5084633 d!1645836))

(assert (=> b!5084633 d!1645838))

(declare-fun d!1645888 () Bool)

(declare-fun lt!2091608 () Bool)

(assert (=> d!1645888 (= lt!2091608 (isEmpty!31677 (list!19033 (right!43179 (right!43179 xs!286)))))))

(assert (=> d!1645888 (= lt!2091608 (= (size!39121 (right!43179 (right!43179 xs!286))) 0))))

(assert (=> d!1645888 (= (isEmpty!31675 (right!43179 (right!43179 xs!286))) lt!2091608)))

(declare-fun bs!1190915 () Bool)

(assert (= bs!1190915 d!1645888))

(assert (=> bs!1190915 m!6139636))

(assert (=> bs!1190915 m!6139636))

(declare-fun m!6142442 () Bool)

(assert (=> bs!1190915 m!6142442))

(assert (=> bs!1190915 m!6140566))

(assert (=> b!5084770 d!1645888))

(declare-fun d!1645890 () Bool)

(declare-fun lt!2091609 () Int)

(assert (=> d!1645890 (>= lt!2091609 0)))

(declare-fun e!3171906 () Int)

(assert (=> d!1645890 (= lt!2091609 e!3171906)))

(declare-fun c!873818 () Bool)

(assert (=> d!1645890 (= c!873818 ((_ is Nil!58456) (list!19035 (xs!18964 (right!43179 err!4617)))))))

(assert (=> d!1645890 (= (size!39119 (list!19035 (xs!18964 (right!43179 err!4617)))) lt!2091609)))

(declare-fun b!5085662 () Bool)

(assert (=> b!5085662 (= e!3171906 0)))

(declare-fun b!5085663 () Bool)

(assert (=> b!5085663 (= e!3171906 (+ 1 (size!39119 (t!371417 (list!19035 (xs!18964 (right!43179 err!4617)))))))))

(assert (= (and d!1645890 c!873818) b!5085662))

(assert (= (and d!1645890 (not c!873818)) b!5085663))

(declare-fun m!6142444 () Bool)

(assert (=> b!5085663 m!6142444))

(assert (=> d!1645022 d!1645890))

(declare-fun d!1645892 () Bool)

(assert (=> d!1645892 (= (list!19035 (xs!18964 (right!43179 err!4617))) (innerList!15674 (xs!18964 (right!43179 err!4617))))))

(assert (=> d!1645022 d!1645892))

(declare-fun d!1645894 () Bool)

(declare-fun res!2165049 () Bool)

(declare-fun e!3171907 () Bool)

(assert (=> d!1645894 (=> (not res!2165049) (not e!3171907))))

(assert (=> d!1645894 (= res!2165049 (<= (size!39119 (list!19035 (xs!18964 (left!42849 (right!43179 xs!286))))) 512))))

(assert (=> d!1645894 (= (inv!77681 (left!42849 (right!43179 xs!286))) e!3171907)))

(declare-fun b!5085664 () Bool)

(declare-fun res!2165050 () Bool)

(assert (=> b!5085664 (=> (not res!2165050) (not e!3171907))))

(assert (=> b!5085664 (= res!2165050 (= (csize!31403 (left!42849 (right!43179 xs!286))) (size!39119 (list!19035 (xs!18964 (left!42849 (right!43179 xs!286)))))))))

(declare-fun b!5085665 () Bool)

(assert (=> b!5085665 (= e!3171907 (and (> (csize!31403 (left!42849 (right!43179 xs!286))) 0) (<= (csize!31403 (left!42849 (right!43179 xs!286))) 512)))))

(assert (= (and d!1645894 res!2165049) b!5085664))

(assert (= (and b!5085664 res!2165050) b!5085665))

(assert (=> d!1645894 m!6140418))

(assert (=> d!1645894 m!6140418))

(declare-fun m!6142446 () Bool)

(assert (=> d!1645894 m!6142446))

(assert (=> b!5085664 m!6140418))

(assert (=> b!5085664 m!6140418))

(assert (=> b!5085664 m!6142446))

(assert (=> b!5084775 d!1645894))

(declare-fun d!1645896 () Bool)

(declare-fun res!2165051 () Bool)

(declare-fun e!3171908 () Bool)

(assert (=> d!1645896 (=> (not res!2165051) (not e!3171908))))

(assert (=> d!1645896 (= res!2165051 (= (csize!31402 (left!42849 (right!43179 ys!41))) (+ (size!39121 (left!42849 (left!42849 (right!43179 ys!41)))) (size!39121 (right!43179 (left!42849 (right!43179 ys!41)))))))))

(assert (=> d!1645896 (= (inv!77680 (left!42849 (right!43179 ys!41))) e!3171908)))

(declare-fun b!5085666 () Bool)

(declare-fun res!2165052 () Bool)

(assert (=> b!5085666 (=> (not res!2165052) (not e!3171908))))

(assert (=> b!5085666 (= res!2165052 (and (not (= (left!42849 (left!42849 (right!43179 ys!41))) Empty!15586)) (not (= (right!43179 (left!42849 (right!43179 ys!41))) Empty!15586))))))

(declare-fun b!5085667 () Bool)

(declare-fun res!2165053 () Bool)

(assert (=> b!5085667 (=> (not res!2165053) (not e!3171908))))

(assert (=> b!5085667 (= res!2165053 (= (cheight!15797 (left!42849 (right!43179 ys!41))) (+ (max!0 (height!2163 (left!42849 (left!42849 (right!43179 ys!41)))) (height!2163 (right!43179 (left!42849 (right!43179 ys!41))))) 1)))))

(declare-fun b!5085668 () Bool)

(assert (=> b!5085668 (= e!3171908 (<= 0 (cheight!15797 (left!42849 (right!43179 ys!41)))))))

(assert (= (and d!1645896 res!2165051) b!5085666))

(assert (= (and b!5085666 res!2165052) b!5085667))

(assert (= (and b!5085667 res!2165053) b!5085668))

(declare-fun m!6142448 () Bool)

(assert (=> d!1645896 m!6142448))

(declare-fun m!6142450 () Bool)

(assert (=> d!1645896 m!6142450))

(declare-fun m!6142452 () Bool)

(assert (=> b!5085667 m!6142452))

(declare-fun m!6142454 () Bool)

(assert (=> b!5085667 m!6142454))

(assert (=> b!5085667 m!6142452))

(assert (=> b!5085667 m!6142454))

(declare-fun m!6142456 () Bool)

(assert (=> b!5085667 m!6142456))

(assert (=> b!5084647 d!1645896))

(declare-fun b!5085670 () Bool)

(declare-fun e!3171909 () List!58580)

(assert (=> b!5085670 (= e!3171909 (Cons!58456 (h!64904 (list!19033 xs!286)) (++!12815 (t!371417 (list!19033 xs!286)) call!354417)))))

(declare-fun d!1645898 () Bool)

(declare-fun e!3171910 () Bool)

(assert (=> d!1645898 e!3171910))

(declare-fun res!2165055 () Bool)

(assert (=> d!1645898 (=> (not res!2165055) (not e!3171910))))

(declare-fun lt!2091610 () List!58580)

(assert (=> d!1645898 (= res!2165055 (= (content!10430 lt!2091610) ((_ map or) (content!10430 (list!19033 xs!286)) (content!10430 call!354417))))))

(assert (=> d!1645898 (= lt!2091610 e!3171909)))

(declare-fun c!873819 () Bool)

(assert (=> d!1645898 (= c!873819 ((_ is Nil!58456) (list!19033 xs!286)))))

(assert (=> d!1645898 (= (++!12815 (list!19033 xs!286) call!354417) lt!2091610)))

(declare-fun b!5085669 () Bool)

(assert (=> b!5085669 (= e!3171909 call!354417)))

(declare-fun b!5085672 () Bool)

(assert (=> b!5085672 (= e!3171910 (or (not (= call!354417 Nil!58456)) (= lt!2091610 (list!19033 xs!286))))))

(declare-fun b!5085671 () Bool)

(declare-fun res!2165054 () Bool)

(assert (=> b!5085671 (=> (not res!2165054) (not e!3171910))))

(assert (=> b!5085671 (= res!2165054 (= (size!39119 lt!2091610) (+ (size!39119 (list!19033 xs!286)) (size!39119 call!354417))))))

(assert (= (and d!1645898 c!873819) b!5085669))

(assert (= (and d!1645898 (not c!873819)) b!5085670))

(assert (= (and d!1645898 res!2165055) b!5085671))

(assert (= (and b!5085671 res!2165054) b!5085672))

(declare-fun m!6142458 () Bool)

(assert (=> b!5085670 m!6142458))

(declare-fun m!6142460 () Bool)

(assert (=> d!1645898 m!6142460))

(assert (=> d!1645898 m!6139374))

(assert (=> d!1645898 m!6139700))

(declare-fun m!6142462 () Bool)

(assert (=> d!1645898 m!6142462))

(declare-fun m!6142464 () Bool)

(assert (=> b!5085671 m!6142464))

(assert (=> b!5085671 m!6139374))

(assert (=> b!5085671 m!6139706))

(declare-fun m!6142466 () Bool)

(assert (=> b!5085671 m!6142466))

(assert (=> bm!354412 d!1645898))

(declare-fun b!5085674 () Bool)

(declare-fun e!3171911 () List!58580)

(assert (=> b!5085674 (= e!3171911 (Cons!58456 (h!64904 (++!12815 (list!19033 xs!286) (list!19033 (left!42849 (left!42849 ys!41))))) (++!12815 (t!371417 (++!12815 (list!19033 xs!286) (list!19033 (left!42849 (left!42849 ys!41))))) call!354405)))))

(declare-fun d!1645900 () Bool)

(declare-fun e!3171912 () Bool)

(assert (=> d!1645900 e!3171912))

(declare-fun res!2165057 () Bool)

(assert (=> d!1645900 (=> (not res!2165057) (not e!3171912))))

(declare-fun lt!2091611 () List!58580)

(assert (=> d!1645900 (= res!2165057 (= (content!10430 lt!2091611) ((_ map or) (content!10430 (++!12815 (list!19033 xs!286) (list!19033 (left!42849 (left!42849 ys!41))))) (content!10430 call!354405))))))

(assert (=> d!1645900 (= lt!2091611 e!3171911)))

(declare-fun c!873820 () Bool)

(assert (=> d!1645900 (= c!873820 ((_ is Nil!58456) (++!12815 (list!19033 xs!286) (list!19033 (left!42849 (left!42849 ys!41))))))))

(assert (=> d!1645900 (= (++!12815 (++!12815 (list!19033 xs!286) (list!19033 (left!42849 (left!42849 ys!41)))) call!354405) lt!2091611)))

(declare-fun b!5085673 () Bool)

(assert (=> b!5085673 (= e!3171911 call!354405)))

(declare-fun b!5085676 () Bool)

(assert (=> b!5085676 (= e!3171912 (or (not (= call!354405 Nil!58456)) (= lt!2091611 (++!12815 (list!19033 xs!286) (list!19033 (left!42849 (left!42849 ys!41)))))))))

(declare-fun b!5085675 () Bool)

(declare-fun res!2165056 () Bool)

(assert (=> b!5085675 (=> (not res!2165056) (not e!3171912))))

(assert (=> b!5085675 (= res!2165056 (= (size!39119 lt!2091611) (+ (size!39119 (++!12815 (list!19033 xs!286) (list!19033 (left!42849 (left!42849 ys!41))))) (size!39119 call!354405))))))

(assert (= (and d!1645900 c!873820) b!5085673))

(assert (= (and d!1645900 (not c!873820)) b!5085674))

(assert (= (and d!1645900 res!2165057) b!5085675))

(assert (= (and b!5085675 res!2165056) b!5085676))

(declare-fun m!6142468 () Bool)

(assert (=> b!5085674 m!6142468))

(declare-fun m!6142470 () Bool)

(assert (=> d!1645900 m!6142470))

(assert (=> d!1645900 m!6139656))

(assert (=> d!1645900 m!6142150))

(declare-fun m!6142472 () Bool)

(assert (=> d!1645900 m!6142472))

(declare-fun m!6142474 () Bool)

(assert (=> b!5085675 m!6142474))

(assert (=> b!5085675 m!6139656))

(assert (=> b!5085675 m!6142156))

(declare-fun m!6142476 () Bool)

(assert (=> b!5085675 m!6142476))

(assert (=> bm!354400 d!1645900))

(declare-fun d!1645902 () Bool)

(assert (=> d!1645902 (= (isEmpty!31677 (list!19033 (left!42849 xs!286))) ((_ is Nil!58456) (list!19033 (left!42849 xs!286))))))

(assert (=> d!1645036 d!1645902))

(assert (=> d!1645036 d!1644980))

(assert (=> d!1645036 d!1645668))

(declare-fun b!5085678 () Bool)

(declare-fun e!3171913 () List!58580)

(assert (=> b!5085678 (= e!3171913 (Cons!58456 (h!64904 (list!19033 (left!42849 (left!42849 (left!42849 ys!41))))) (++!12815 (t!371417 (list!19033 (left!42849 (left!42849 (left!42849 ys!41))))) (list!19033 (right!43179 (left!42849 (left!42849 ys!41)))))))))

(declare-fun d!1645904 () Bool)

(declare-fun e!3171914 () Bool)

(assert (=> d!1645904 e!3171914))

(declare-fun res!2165059 () Bool)

(assert (=> d!1645904 (=> (not res!2165059) (not e!3171914))))

(declare-fun lt!2091612 () List!58580)

(assert (=> d!1645904 (= res!2165059 (= (content!10430 lt!2091612) ((_ map or) (content!10430 (list!19033 (left!42849 (left!42849 (left!42849 ys!41))))) (content!10430 (list!19033 (right!43179 (left!42849 (left!42849 ys!41))))))))))

(assert (=> d!1645904 (= lt!2091612 e!3171913)))

(declare-fun c!873821 () Bool)

(assert (=> d!1645904 (= c!873821 ((_ is Nil!58456) (list!19033 (left!42849 (left!42849 (left!42849 ys!41))))))))

(assert (=> d!1645904 (= (++!12815 (list!19033 (left!42849 (left!42849 (left!42849 ys!41)))) (list!19033 (right!43179 (left!42849 (left!42849 ys!41))))) lt!2091612)))

(declare-fun b!5085677 () Bool)

(assert (=> b!5085677 (= e!3171913 (list!19033 (right!43179 (left!42849 (left!42849 ys!41)))))))

(declare-fun b!5085680 () Bool)

(assert (=> b!5085680 (= e!3171914 (or (not (= (list!19033 (right!43179 (left!42849 (left!42849 ys!41)))) Nil!58456)) (= lt!2091612 (list!19033 (left!42849 (left!42849 (left!42849 ys!41)))))))))

(declare-fun b!5085679 () Bool)

(declare-fun res!2165058 () Bool)

(assert (=> b!5085679 (=> (not res!2165058) (not e!3171914))))

(assert (=> b!5085679 (= res!2165058 (= (size!39119 lt!2091612) (+ (size!39119 (list!19033 (left!42849 (left!42849 (left!42849 ys!41))))) (size!39119 (list!19033 (right!43179 (left!42849 (left!42849 ys!41))))))))))

(assert (= (and d!1645904 c!873821) b!5085677))

(assert (= (and d!1645904 (not c!873821)) b!5085678))

(assert (= (and d!1645904 res!2165059) b!5085679))

(assert (= (and b!5085679 res!2165058) b!5085680))

(assert (=> b!5085678 m!6140532))

(declare-fun m!6142478 () Bool)

(assert (=> b!5085678 m!6142478))

(declare-fun m!6142480 () Bool)

(assert (=> d!1645904 m!6142480))

(assert (=> d!1645904 m!6140530))

(declare-fun m!6142482 () Bool)

(assert (=> d!1645904 m!6142482))

(assert (=> d!1645904 m!6140532))

(declare-fun m!6142484 () Bool)

(assert (=> d!1645904 m!6142484))

(declare-fun m!6142486 () Bool)

(assert (=> b!5085679 m!6142486))

(assert (=> b!5085679 m!6140530))

(declare-fun m!6142488 () Bool)

(assert (=> b!5085679 m!6142488))

(assert (=> b!5085679 m!6140532))

(declare-fun m!6142490 () Bool)

(assert (=> b!5085679 m!6142490))

(assert (=> b!5084719 d!1645904))

(declare-fun b!5085682 () Bool)

(declare-fun e!3171915 () List!58580)

(declare-fun e!3171916 () List!58580)

(assert (=> b!5085682 (= e!3171915 e!3171916)))

(declare-fun c!873823 () Bool)

(assert (=> b!5085682 (= c!873823 ((_ is Leaf!25884) (left!42849 (left!42849 (left!42849 ys!41)))))))

(declare-fun b!5085681 () Bool)

(assert (=> b!5085681 (= e!3171915 Nil!58456)))

(declare-fun b!5085684 () Bool)

(assert (=> b!5085684 (= e!3171916 (++!12815 (list!19033 (left!42849 (left!42849 (left!42849 (left!42849 ys!41))))) (list!19033 (right!43179 (left!42849 (left!42849 (left!42849 ys!41)))))))))

(declare-fun d!1645906 () Bool)

(declare-fun c!873822 () Bool)

(assert (=> d!1645906 (= c!873822 ((_ is Empty!15586) (left!42849 (left!42849 (left!42849 ys!41)))))))

(assert (=> d!1645906 (= (list!19033 (left!42849 (left!42849 (left!42849 ys!41)))) e!3171915)))

(declare-fun b!5085683 () Bool)

(assert (=> b!5085683 (= e!3171916 (list!19035 (xs!18964 (left!42849 (left!42849 (left!42849 ys!41))))))))

(assert (= (and d!1645906 c!873822) b!5085681))

(assert (= (and d!1645906 (not c!873822)) b!5085682))

(assert (= (and b!5085682 c!873823) b!5085683))

(assert (= (and b!5085682 (not c!873823)) b!5085684))

(declare-fun m!6142492 () Bool)

(assert (=> b!5085684 m!6142492))

(declare-fun m!6142494 () Bool)

(assert (=> b!5085684 m!6142494))

(assert (=> b!5085684 m!6142492))

(assert (=> b!5085684 m!6142494))

(declare-fun m!6142496 () Bool)

(assert (=> b!5085684 m!6142496))

(declare-fun m!6142498 () Bool)

(assert (=> b!5085683 m!6142498))

(assert (=> b!5084719 d!1645906))

(declare-fun b!5085686 () Bool)

(declare-fun e!3171917 () List!58580)

(declare-fun e!3171918 () List!58580)

(assert (=> b!5085686 (= e!3171917 e!3171918)))

(declare-fun c!873825 () Bool)

(assert (=> b!5085686 (= c!873825 ((_ is Leaf!25884) (right!43179 (left!42849 (left!42849 ys!41)))))))

(declare-fun b!5085685 () Bool)

(assert (=> b!5085685 (= e!3171917 Nil!58456)))

(declare-fun b!5085688 () Bool)

(assert (=> b!5085688 (= e!3171918 (++!12815 (list!19033 (left!42849 (right!43179 (left!42849 (left!42849 ys!41))))) (list!19033 (right!43179 (right!43179 (left!42849 (left!42849 ys!41)))))))))

(declare-fun d!1645908 () Bool)

(declare-fun c!873824 () Bool)

(assert (=> d!1645908 (= c!873824 ((_ is Empty!15586) (right!43179 (left!42849 (left!42849 ys!41)))))))

(assert (=> d!1645908 (= (list!19033 (right!43179 (left!42849 (left!42849 ys!41)))) e!3171917)))

(declare-fun b!5085687 () Bool)

(assert (=> b!5085687 (= e!3171918 (list!19035 (xs!18964 (right!43179 (left!42849 (left!42849 ys!41))))))))

(assert (= (and d!1645908 c!873824) b!5085685))

(assert (= (and d!1645908 (not c!873824)) b!5085686))

(assert (= (and b!5085686 c!873825) b!5085687))

(assert (= (and b!5085686 (not c!873825)) b!5085688))

(declare-fun m!6142500 () Bool)

(assert (=> b!5085688 m!6142500))

(declare-fun m!6142502 () Bool)

(assert (=> b!5085688 m!6142502))

(assert (=> b!5085688 m!6142500))

(assert (=> b!5085688 m!6142502))

(declare-fun m!6142504 () Bool)

(assert (=> b!5085688 m!6142504))

(declare-fun m!6142506 () Bool)

(assert (=> b!5085687 m!6142506))

(assert (=> b!5084719 d!1645908))

(assert (=> b!5084799 d!1645802))

(declare-fun b!5085689 () Bool)

(declare-fun res!2165065 () Bool)

(declare-fun e!3171919 () Bool)

(assert (=> b!5085689 (=> (not res!2165065) (not e!3171919))))

(assert (=> b!5085689 (= res!2165065 (isBalanced!4448 (right!43179 (right!43179 (right!43179 ys!41)))))))

(declare-fun b!5085690 () Bool)

(declare-fun res!2165063 () Bool)

(assert (=> b!5085690 (=> (not res!2165063) (not e!3171919))))

(assert (=> b!5085690 (= res!2165063 (<= (- (height!2163 (left!42849 (right!43179 (right!43179 ys!41)))) (height!2163 (right!43179 (right!43179 (right!43179 ys!41))))) 1))))

(declare-fun b!5085691 () Bool)

(declare-fun e!3171920 () Bool)

(assert (=> b!5085691 (= e!3171920 e!3171919)))

(declare-fun res!2165061 () Bool)

(assert (=> b!5085691 (=> (not res!2165061) (not e!3171919))))

(assert (=> b!5085691 (= res!2165061 (<= (- 1) (- (height!2163 (left!42849 (right!43179 (right!43179 ys!41)))) (height!2163 (right!43179 (right!43179 (right!43179 ys!41)))))))))

(declare-fun b!5085692 () Bool)

(declare-fun res!2165064 () Bool)

(assert (=> b!5085692 (=> (not res!2165064) (not e!3171919))))

(assert (=> b!5085692 (= res!2165064 (not (isEmpty!31675 (left!42849 (right!43179 (right!43179 ys!41))))))))

(declare-fun b!5085693 () Bool)

(declare-fun res!2165060 () Bool)

(assert (=> b!5085693 (=> (not res!2165060) (not e!3171919))))

(assert (=> b!5085693 (= res!2165060 (isBalanced!4448 (left!42849 (right!43179 (right!43179 ys!41)))))))

(declare-fun b!5085694 () Bool)

(assert (=> b!5085694 (= e!3171919 (not (isEmpty!31675 (right!43179 (right!43179 (right!43179 ys!41))))))))

(declare-fun d!1645910 () Bool)

(declare-fun res!2165062 () Bool)

(assert (=> d!1645910 (=> res!2165062 e!3171920)))

(assert (=> d!1645910 (= res!2165062 (not ((_ is Node!15586) (right!43179 (right!43179 ys!41)))))))

(assert (=> d!1645910 (= (isBalanced!4448 (right!43179 (right!43179 ys!41))) e!3171920)))

(assert (= (and d!1645910 (not res!2165062)) b!5085691))

(assert (= (and b!5085691 res!2165061) b!5085690))

(assert (= (and b!5085690 res!2165063) b!5085693))

(assert (= (and b!5085693 res!2165060) b!5085689))

(assert (= (and b!5085689 res!2165065) b!5085692))

(assert (= (and b!5085692 res!2165064) b!5085694))

(declare-fun m!6142508 () Bool)

(assert (=> b!5085693 m!6142508))

(declare-fun m!6142510 () Bool)

(assert (=> b!5085694 m!6142510))

(declare-fun m!6142512 () Bool)

(assert (=> b!5085692 m!6142512))

(declare-fun m!6142514 () Bool)

(assert (=> b!5085691 m!6142514))

(declare-fun m!6142516 () Bool)

(assert (=> b!5085691 m!6142516))

(assert (=> b!5085690 m!6142514))

(assert (=> b!5085690 m!6142516))

(declare-fun m!6142518 () Bool)

(assert (=> b!5085689 m!6142518))

(assert (=> b!5084691 d!1645910))

(declare-fun d!1645912 () Bool)

(declare-fun res!2165066 () Bool)

(declare-fun e!3171921 () Bool)

(assert (=> d!1645912 (=> (not res!2165066) (not e!3171921))))

(assert (=> d!1645912 (= res!2165066 (= (csize!31402 (left!42849 (left!42849 xs!286))) (+ (size!39121 (left!42849 (left!42849 (left!42849 xs!286)))) (size!39121 (right!43179 (left!42849 (left!42849 xs!286)))))))))

(assert (=> d!1645912 (= (inv!77680 (left!42849 (left!42849 xs!286))) e!3171921)))

(declare-fun b!5085695 () Bool)

(declare-fun res!2165067 () Bool)

(assert (=> b!5085695 (=> (not res!2165067) (not e!3171921))))

(assert (=> b!5085695 (= res!2165067 (and (not (= (left!42849 (left!42849 (left!42849 xs!286))) Empty!15586)) (not (= (right!43179 (left!42849 (left!42849 xs!286))) Empty!15586))))))

(declare-fun b!5085696 () Bool)

(declare-fun res!2165068 () Bool)

(assert (=> b!5085696 (=> (not res!2165068) (not e!3171921))))

(assert (=> b!5085696 (= res!2165068 (= (cheight!15797 (left!42849 (left!42849 xs!286))) (+ (max!0 (height!2163 (left!42849 (left!42849 (left!42849 xs!286)))) (height!2163 (right!43179 (left!42849 (left!42849 xs!286))))) 1)))))

(declare-fun b!5085697 () Bool)

(assert (=> b!5085697 (= e!3171921 (<= 0 (cheight!15797 (left!42849 (left!42849 xs!286)))))))

(assert (= (and d!1645912 res!2165066) b!5085695))

(assert (= (and b!5085695 res!2165067) b!5085696))

(assert (= (and b!5085696 res!2165068) b!5085697))

(declare-fun m!6142520 () Bool)

(assert (=> d!1645912 m!6142520))

(declare-fun m!6142522 () Bool)

(assert (=> d!1645912 m!6142522))

(assert (=> b!5085696 m!6142300))

(assert (=> b!5085696 m!6142302))

(assert (=> b!5085696 m!6142300))

(assert (=> b!5085696 m!6142302))

(declare-fun m!6142524 () Bool)

(assert (=> b!5085696 m!6142524))

(assert (=> b!5084626 d!1645912))

(assert (=> d!1645024 d!1645678))

(assert (=> d!1645024 d!1645078))

(declare-fun d!1645914 () Bool)

(declare-fun lt!2091613 () Bool)

(assert (=> d!1645914 (= lt!2091613 (isEmpty!31677 (list!19033 (left!42849 (right!43179 ys!41)))))))

(assert (=> d!1645914 (= lt!2091613 (= (size!39121 (left!42849 (right!43179 ys!41))) 0))))

(assert (=> d!1645914 (= (isEmpty!31675 (left!42849 (right!43179 ys!41))) lt!2091613)))

(declare-fun bs!1190916 () Bool)

(assert (= bs!1190916 d!1645914))

(assert (=> bs!1190916 m!6140496))

(assert (=> bs!1190916 m!6140496))

(declare-fun m!6142526 () Bool)

(assert (=> bs!1190916 m!6142526))

(assert (=> bs!1190916 m!6140306))

(assert (=> b!5084694 d!1645914))

(declare-fun d!1645916 () Bool)

(declare-fun c!873826 () Bool)

(assert (=> d!1645916 (= c!873826 ((_ is Nil!58456) (t!371417 (list!19033 xs!286))))))

(declare-fun e!3171922 () (InoxSet T!105272))

(assert (=> d!1645916 (= (content!10430 (t!371417 (list!19033 xs!286))) e!3171922)))

(declare-fun b!5085698 () Bool)

(assert (=> b!5085698 (= e!3171922 ((as const (Array T!105272 Bool)) false))))

(declare-fun b!5085699 () Bool)

(assert (=> b!5085699 (= e!3171922 ((_ map or) (store ((as const (Array T!105272 Bool)) false) (h!64904 (t!371417 (list!19033 xs!286))) true) (content!10430 (t!371417 (t!371417 (list!19033 xs!286))))))))

(assert (= (and d!1645916 c!873826) b!5085698))

(assert (= (and d!1645916 (not c!873826)) b!5085699))

(declare-fun m!6142528 () Bool)

(assert (=> b!5085699 m!6142528))

(declare-fun m!6142530 () Bool)

(assert (=> b!5085699 m!6142530))

(assert (=> b!5084742 d!1645916))

(declare-fun d!1645918 () Bool)

(declare-fun res!2165069 () Bool)

(declare-fun e!3171923 () Bool)

(assert (=> d!1645918 (=> (not res!2165069) (not e!3171923))))

(assert (=> d!1645918 (= res!2165069 (= (csize!31402 (right!43179 (right!43179 xs!286))) (+ (size!39121 (left!42849 (right!43179 (right!43179 xs!286)))) (size!39121 (right!43179 (right!43179 (right!43179 xs!286)))))))))

(assert (=> d!1645918 (= (inv!77680 (right!43179 (right!43179 xs!286))) e!3171923)))

(declare-fun b!5085700 () Bool)

(declare-fun res!2165070 () Bool)

(assert (=> b!5085700 (=> (not res!2165070) (not e!3171923))))

(assert (=> b!5085700 (= res!2165070 (and (not (= (left!42849 (right!43179 (right!43179 xs!286))) Empty!15586)) (not (= (right!43179 (right!43179 (right!43179 xs!286))) Empty!15586))))))

(declare-fun b!5085701 () Bool)

(declare-fun res!2165071 () Bool)

(assert (=> b!5085701 (=> (not res!2165071) (not e!3171923))))

(assert (=> b!5085701 (= res!2165071 (= (cheight!15797 (right!43179 (right!43179 xs!286))) (+ (max!0 (height!2163 (left!42849 (right!43179 (right!43179 xs!286)))) (height!2163 (right!43179 (right!43179 (right!43179 xs!286))))) 1)))))

(declare-fun b!5085702 () Bool)

(assert (=> b!5085702 (= e!3171923 (<= 0 (cheight!15797 (right!43179 (right!43179 xs!286)))))))

(assert (= (and d!1645918 res!2165069) b!5085700))

(assert (= (and b!5085700 res!2165070) b!5085701))

(assert (= (and b!5085701 res!2165071) b!5085702))

(declare-fun m!6142532 () Bool)

(assert (=> d!1645918 m!6142532))

(declare-fun m!6142534 () Bool)

(assert (=> d!1645918 m!6142534))

(declare-fun m!6142536 () Bool)

(assert (=> b!5085701 m!6142536))

(declare-fun m!6142538 () Bool)

(assert (=> b!5085701 m!6142538))

(assert (=> b!5085701 m!6142536))

(assert (=> b!5085701 m!6142538))

(declare-fun m!6142540 () Bool)

(assert (=> b!5085701 m!6142540))

(assert (=> b!5084776 d!1645918))

(declare-fun d!1645920 () Bool)

(declare-fun lt!2091614 () Int)

(assert (=> d!1645920 (>= lt!2091614 0)))

(declare-fun e!3171924 () Int)

(assert (=> d!1645920 (= lt!2091614 e!3171924)))

(declare-fun c!873827 () Bool)

(assert (=> d!1645920 (= c!873827 ((_ is Nil!58456) (t!371417 (list!19033 ys!41))))))

(assert (=> d!1645920 (= (size!39119 (t!371417 (list!19033 ys!41))) lt!2091614)))

(declare-fun b!5085703 () Bool)

(assert (=> b!5085703 (= e!3171924 0)))

(declare-fun b!5085704 () Bool)

(assert (=> b!5085704 (= e!3171924 (+ 1 (size!39119 (t!371417 (t!371417 (list!19033 ys!41))))))))

(assert (= (and d!1645920 c!873827) b!5085703))

(assert (= (and d!1645920 (not c!873827)) b!5085704))

(declare-fun m!6142542 () Bool)

(assert (=> b!5085704 m!6142542))

(assert (=> b!5084602 d!1645920))

(declare-fun d!1645922 () Bool)

(declare-fun c!873828 () Bool)

(assert (=> d!1645922 (= c!873828 ((_ is Nil!58456) lt!2091459))))

(declare-fun e!3171925 () (InoxSet T!105272))

(assert (=> d!1645922 (= (content!10430 lt!2091459) e!3171925)))

(declare-fun b!5085705 () Bool)

(assert (=> b!5085705 (= e!3171925 ((as const (Array T!105272 Bool)) false))))

(declare-fun b!5085706 () Bool)

(assert (=> b!5085706 (= e!3171925 ((_ map or) (store ((as const (Array T!105272 Bool)) false) (h!64904 lt!2091459) true) (content!10430 (t!371417 lt!2091459))))))

(assert (= (and d!1645922 c!873828) b!5085705))

(assert (= (and d!1645922 (not c!873828)) b!5085706))

(declare-fun m!6142544 () Bool)

(assert (=> b!5085706 m!6142544))

(declare-fun m!6142546 () Bool)

(assert (=> b!5085706 m!6142546))

(assert (=> d!1645148 d!1645922))

(declare-fun d!1645924 () Bool)

(declare-fun c!873829 () Bool)

(assert (=> d!1645924 (= c!873829 ((_ is Nil!58456) (list!19033 (left!42849 ys!41))))))

(declare-fun e!3171926 () (InoxSet T!105272))

(assert (=> d!1645924 (= (content!10430 (list!19033 (left!42849 ys!41))) e!3171926)))

(declare-fun b!5085707 () Bool)

(assert (=> b!5085707 (= e!3171926 ((as const (Array T!105272 Bool)) false))))

(declare-fun b!5085708 () Bool)

(assert (=> b!5085708 (= e!3171926 ((_ map or) (store ((as const (Array T!105272 Bool)) false) (h!64904 (list!19033 (left!42849 ys!41))) true) (content!10430 (t!371417 (list!19033 (left!42849 ys!41))))))))

(assert (= (and d!1645924 c!873829) b!5085707))

(assert (= (and d!1645924 (not c!873829)) b!5085708))

(declare-fun m!6142548 () Bool)

(assert (=> b!5085708 m!6142548))

(declare-fun m!6142550 () Bool)

(assert (=> b!5085708 m!6142550))

(assert (=> d!1645148 d!1645924))

(declare-fun d!1645926 () Bool)

(declare-fun c!873830 () Bool)

(assert (=> d!1645926 (= c!873830 ((_ is Nil!58456) (list!19033 (right!43179 ys!41))))))

(declare-fun e!3171927 () (InoxSet T!105272))

(assert (=> d!1645926 (= (content!10430 (list!19033 (right!43179 ys!41))) e!3171927)))

(declare-fun b!5085709 () Bool)

(assert (=> b!5085709 (= e!3171927 ((as const (Array T!105272 Bool)) false))))

(declare-fun b!5085710 () Bool)

(assert (=> b!5085710 (= e!3171927 ((_ map or) (store ((as const (Array T!105272 Bool)) false) (h!64904 (list!19033 (right!43179 ys!41))) true) (content!10430 (t!371417 (list!19033 (right!43179 ys!41))))))))

(assert (= (and d!1645926 c!873830) b!5085709))

(assert (= (and d!1645926 (not c!873830)) b!5085710))

(declare-fun m!6142552 () Bool)

(assert (=> b!5085710 m!6142552))

(declare-fun m!6142554 () Bool)

(assert (=> b!5085710 m!6142554))

(assert (=> d!1645148 d!1645926))

(declare-fun d!1645928 () Bool)

(declare-fun lt!2091615 () Int)

(assert (=> d!1645928 (>= lt!2091615 0)))

(declare-fun e!3171928 () Int)

(assert (=> d!1645928 (= lt!2091615 e!3171928)))

(declare-fun c!873831 () Bool)

(assert (=> d!1645928 (= c!873831 ((_ is Nil!58456) lt!2091430))))

(assert (=> d!1645928 (= (size!39119 lt!2091430) lt!2091615)))

(declare-fun b!5085711 () Bool)

(assert (=> b!5085711 (= e!3171928 0)))

(declare-fun b!5085712 () Bool)

(assert (=> b!5085712 (= e!3171928 (+ 1 (size!39119 (t!371417 lt!2091430))))))

(assert (= (and d!1645928 c!873831) b!5085711))

(assert (= (and d!1645928 (not c!873831)) b!5085712))

(declare-fun m!6142556 () Bool)

(assert (=> b!5085712 m!6142556))

(assert (=> b!5084574 d!1645928))

(declare-fun d!1645930 () Bool)

(declare-fun lt!2091616 () Int)

(assert (=> d!1645930 (>= lt!2091616 0)))

(declare-fun e!3171929 () Int)

(assert (=> d!1645930 (= lt!2091616 e!3171929)))

(declare-fun c!873832 () Bool)

(assert (=> d!1645930 (= c!873832 ((_ is Nil!58456) (list!19033 (left!42849 xs!286))))))

(assert (=> d!1645930 (= (size!39119 (list!19033 (left!42849 xs!286))) lt!2091616)))

(declare-fun b!5085713 () Bool)

(assert (=> b!5085713 (= e!3171929 0)))

(declare-fun b!5085714 () Bool)

(assert (=> b!5085714 (= e!3171929 (+ 1 (size!39119 (t!371417 (list!19033 (left!42849 xs!286))))))))

(assert (= (and d!1645930 c!873832) b!5085713))

(assert (= (and d!1645930 (not c!873832)) b!5085714))

(declare-fun m!6142558 () Bool)

(assert (=> b!5085714 m!6142558))

(assert (=> b!5084574 d!1645930))

(declare-fun d!1645932 () Bool)

(declare-fun lt!2091617 () Int)

(assert (=> d!1645932 (>= lt!2091617 0)))

(declare-fun e!3171930 () Int)

(assert (=> d!1645932 (= lt!2091617 e!3171930)))

(declare-fun c!873833 () Bool)

(assert (=> d!1645932 (= c!873833 ((_ is Nil!58456) (list!19033 (right!43179 xs!286))))))

(assert (=> d!1645932 (= (size!39119 (list!19033 (right!43179 xs!286))) lt!2091617)))

(declare-fun b!5085715 () Bool)

(assert (=> b!5085715 (= e!3171930 0)))

(declare-fun b!5085716 () Bool)

(assert (=> b!5085716 (= e!3171930 (+ 1 (size!39119 (t!371417 (list!19033 (right!43179 xs!286))))))))

(assert (= (and d!1645932 c!873833) b!5085715))

(assert (= (and d!1645932 (not c!873833)) b!5085716))

(declare-fun m!6142560 () Bool)

(assert (=> b!5085716 m!6142560))

(assert (=> b!5084574 d!1645932))

(assert (=> b!5084582 d!1645754))

(declare-fun b!5085718 () Bool)

(declare-fun e!3171931 () List!58580)

(assert (=> b!5085718 (= e!3171931 (Cons!58456 (h!64904 (list!19033 (left!42849 xs!286))) (++!12815 (t!371417 (list!19033 (left!42849 xs!286))) call!354409)))))

(declare-fun d!1645934 () Bool)

(declare-fun e!3171932 () Bool)

(assert (=> d!1645934 e!3171932))

(declare-fun res!2165073 () Bool)

(assert (=> d!1645934 (=> (not res!2165073) (not e!3171932))))

(declare-fun lt!2091618 () List!58580)

(assert (=> d!1645934 (= res!2165073 (= (content!10430 lt!2091618) ((_ map or) (content!10430 (list!19033 (left!42849 xs!286))) (content!10430 call!354409))))))

(assert (=> d!1645934 (= lt!2091618 e!3171931)))

(declare-fun c!873834 () Bool)

(assert (=> d!1645934 (= c!873834 ((_ is Nil!58456) (list!19033 (left!42849 xs!286))))))

(assert (=> d!1645934 (= (++!12815 (list!19033 (left!42849 xs!286)) call!354409) lt!2091618)))

(declare-fun b!5085717 () Bool)

(assert (=> b!5085717 (= e!3171931 call!354409)))

(declare-fun b!5085720 () Bool)

(assert (=> b!5085720 (= e!3171932 (or (not (= call!354409 Nil!58456)) (= lt!2091618 (list!19033 (left!42849 xs!286)))))))

(declare-fun b!5085719 () Bool)

(declare-fun res!2165072 () Bool)

(assert (=> b!5085719 (=> (not res!2165072) (not e!3171932))))

(assert (=> b!5085719 (= res!2165072 (= (size!39119 lt!2091618) (+ (size!39119 (list!19033 (left!42849 xs!286))) (size!39119 call!354409))))))

(assert (= (and d!1645934 c!873834) b!5085717))

(assert (= (and d!1645934 (not c!873834)) b!5085718))

(assert (= (and d!1645934 res!2165073) b!5085719))

(assert (= (and b!5085719 res!2165072) b!5085720))

(declare-fun m!6142562 () Bool)

(assert (=> b!5085718 m!6142562))

(declare-fun m!6142564 () Bool)

(assert (=> d!1645934 m!6142564))

(assert (=> d!1645934 m!6139638))

(assert (=> d!1645934 m!6140284))

(declare-fun m!6142566 () Bool)

(assert (=> d!1645934 m!6142566))

(declare-fun m!6142568 () Bool)

(assert (=> b!5085719 m!6142568))

(assert (=> b!5085719 m!6139638))

(assert (=> b!5085719 m!6140290))

(declare-fun m!6142570 () Bool)

(assert (=> b!5085719 m!6142570))

(assert (=> bm!354404 d!1645934))

(declare-fun b!5085722 () Bool)

(declare-fun e!3171933 () List!58580)

(assert (=> b!5085722 (= e!3171933 (Cons!58456 (h!64904 (list!19033 (left!42849 (left!42849 xs!286)))) (++!12815 (t!371417 (list!19033 (left!42849 (left!42849 xs!286)))) (list!19033 (right!43179 (left!42849 xs!286))))))))

(declare-fun d!1645936 () Bool)

(declare-fun e!3171934 () Bool)

(assert (=> d!1645936 e!3171934))

(declare-fun res!2165075 () Bool)

(assert (=> d!1645936 (=> (not res!2165075) (not e!3171934))))

(declare-fun lt!2091619 () List!58580)

(assert (=> d!1645936 (= res!2165075 (= (content!10430 lt!2091619) ((_ map or) (content!10430 (list!19033 (left!42849 (left!42849 xs!286)))) (content!10430 (list!19033 (right!43179 (left!42849 xs!286)))))))))

(assert (=> d!1645936 (= lt!2091619 e!3171933)))

(declare-fun c!873835 () Bool)

(assert (=> d!1645936 (= c!873835 ((_ is Nil!58456) (list!19033 (left!42849 (left!42849 xs!286)))))))

(assert (=> d!1645936 (= (++!12815 (list!19033 (left!42849 (left!42849 xs!286))) (list!19033 (right!43179 (left!42849 xs!286)))) lt!2091619)))

(declare-fun b!5085721 () Bool)

(assert (=> b!5085721 (= e!3171933 (list!19033 (right!43179 (left!42849 xs!286))))))

(declare-fun b!5085724 () Bool)

(assert (=> b!5085724 (= e!3171934 (or (not (= (list!19033 (right!43179 (left!42849 xs!286))) Nil!58456)) (= lt!2091619 (list!19033 (left!42849 (left!42849 xs!286))))))))

(declare-fun b!5085723 () Bool)

(declare-fun res!2165074 () Bool)

(assert (=> b!5085723 (=> (not res!2165074) (not e!3171934))))

(assert (=> b!5085723 (= res!2165074 (= (size!39119 lt!2091619) (+ (size!39119 (list!19033 (left!42849 (left!42849 xs!286)))) (size!39119 (list!19033 (right!43179 (left!42849 xs!286)))))))))

(assert (= (and d!1645936 c!873835) b!5085721))

(assert (= (and d!1645936 (not c!873835)) b!5085722))

(assert (= (and d!1645936 res!2165075) b!5085723))

(assert (= (and b!5085723 res!2165074) b!5085724))

(assert (=> b!5085722 m!6140296))

(declare-fun m!6142572 () Bool)

(assert (=> b!5085722 m!6142572))

(declare-fun m!6142574 () Bool)

(assert (=> d!1645936 m!6142574))

(assert (=> d!1645936 m!6140294))

(declare-fun m!6142576 () Bool)

(assert (=> d!1645936 m!6142576))

(assert (=> d!1645936 m!6140296))

(declare-fun m!6142578 () Bool)

(assert (=> d!1645936 m!6142578))

(declare-fun m!6142580 () Bool)

(assert (=> b!5085723 m!6142580))

(assert (=> b!5085723 m!6140294))

(assert (=> b!5085723 m!6142378))

(assert (=> b!5085723 m!6140296))

(assert (=> b!5085723 m!6142380))

(assert (=> b!5084579 d!1645936))

(declare-fun b!5085726 () Bool)

(declare-fun e!3171935 () List!58580)

(declare-fun e!3171936 () List!58580)

(assert (=> b!5085726 (= e!3171935 e!3171936)))

(declare-fun c!873837 () Bool)

(assert (=> b!5085726 (= c!873837 ((_ is Leaf!25884) (left!42849 (left!42849 xs!286))))))

(declare-fun b!5085725 () Bool)

(assert (=> b!5085725 (= e!3171935 Nil!58456)))

(declare-fun b!5085728 () Bool)

(assert (=> b!5085728 (= e!3171936 (++!12815 (list!19033 (left!42849 (left!42849 (left!42849 xs!286)))) (list!19033 (right!43179 (left!42849 (left!42849 xs!286))))))))

(declare-fun d!1645938 () Bool)

(declare-fun c!873836 () Bool)

(assert (=> d!1645938 (= c!873836 ((_ is Empty!15586) (left!42849 (left!42849 xs!286))))))

(assert (=> d!1645938 (= (list!19033 (left!42849 (left!42849 xs!286))) e!3171935)))

(declare-fun b!5085727 () Bool)

(assert (=> b!5085727 (= e!3171936 (list!19035 (xs!18964 (left!42849 (left!42849 xs!286)))))))

(assert (= (and d!1645938 c!873836) b!5085725))

(assert (= (and d!1645938 (not c!873836)) b!5085726))

(assert (= (and b!5085726 c!873837) b!5085727))

(assert (= (and b!5085726 (not c!873837)) b!5085728))

(declare-fun m!6142582 () Bool)

(assert (=> b!5085728 m!6142582))

(declare-fun m!6142584 () Bool)

(assert (=> b!5085728 m!6142584))

(assert (=> b!5085728 m!6142582))

(assert (=> b!5085728 m!6142584))

(declare-fun m!6142586 () Bool)

(assert (=> b!5085728 m!6142586))

(declare-fun m!6142588 () Bool)

(assert (=> b!5085727 m!6142588))

(assert (=> b!5084579 d!1645938))

(declare-fun b!5085730 () Bool)

(declare-fun e!3171937 () List!58580)

(declare-fun e!3171938 () List!58580)

(assert (=> b!5085730 (= e!3171937 e!3171938)))

(declare-fun c!873839 () Bool)

(assert (=> b!5085730 (= c!873839 ((_ is Leaf!25884) (right!43179 (left!42849 xs!286))))))

(declare-fun b!5085729 () Bool)

(assert (=> b!5085729 (= e!3171937 Nil!58456)))

(declare-fun b!5085732 () Bool)

(assert (=> b!5085732 (= e!3171938 (++!12815 (list!19033 (left!42849 (right!43179 (left!42849 xs!286)))) (list!19033 (right!43179 (right!43179 (left!42849 xs!286))))))))

(declare-fun d!1645940 () Bool)

(declare-fun c!873838 () Bool)

(assert (=> d!1645940 (= c!873838 ((_ is Empty!15586) (right!43179 (left!42849 xs!286))))))

(assert (=> d!1645940 (= (list!19033 (right!43179 (left!42849 xs!286))) e!3171937)))

(declare-fun b!5085731 () Bool)

(assert (=> b!5085731 (= e!3171938 (list!19035 (xs!18964 (right!43179 (left!42849 xs!286)))))))

(assert (= (and d!1645940 c!873838) b!5085729))

(assert (= (and d!1645940 (not c!873838)) b!5085730))

(assert (= (and b!5085730 c!873839) b!5085731))

(assert (= (and b!5085730 (not c!873839)) b!5085732))

(declare-fun m!6142590 () Bool)

(assert (=> b!5085732 m!6142590))

(declare-fun m!6142592 () Bool)

(assert (=> b!5085732 m!6142592))

(assert (=> b!5085732 m!6142590))

(assert (=> b!5085732 m!6142592))

(declare-fun m!6142594 () Bool)

(assert (=> b!5085732 m!6142594))

(assert (=> b!5085731 m!6142374))

(assert (=> b!5084579 d!1645940))

(declare-fun d!1645942 () Bool)

(declare-fun c!873840 () Bool)

(assert (=> d!1645942 (= c!873840 ((_ is Nil!58456) lt!2091457))))

(declare-fun e!3171939 () (InoxSet T!105272))

(assert (=> d!1645942 (= (content!10430 lt!2091457) e!3171939)))

(declare-fun b!5085733 () Bool)

(assert (=> b!5085733 (= e!3171939 ((as const (Array T!105272 Bool)) false))))

(declare-fun b!5085734 () Bool)

(assert (=> b!5085734 (= e!3171939 ((_ map or) (store ((as const (Array T!105272 Bool)) false) (h!64904 lt!2091457) true) (content!10430 (t!371417 lt!2091457))))))

(assert (= (and d!1645942 c!873840) b!5085733))

(assert (= (and d!1645942 (not c!873840)) b!5085734))

(declare-fun m!6142596 () Bool)

(assert (=> b!5085734 m!6142596))

(declare-fun m!6142598 () Bool)

(assert (=> b!5085734 m!6142598))

(assert (=> d!1645136 d!1645942))

(assert (=> d!1645136 d!1645916))

(assert (=> d!1645136 d!1645100))

(declare-fun d!1645944 () Bool)

(declare-fun lt!2091620 () Int)

(assert (=> d!1645944 (>= lt!2091620 0)))

(declare-fun e!3171940 () Int)

(assert (=> d!1645944 (= lt!2091620 e!3171940)))

(declare-fun c!873841 () Bool)

(assert (=> d!1645944 (= c!873841 ((_ is Nil!58456) (list!19035 (xs!18964 (right!43179 ys!41)))))))

(assert (=> d!1645944 (= (size!39119 (list!19035 (xs!18964 (right!43179 ys!41)))) lt!2091620)))

(declare-fun b!5085735 () Bool)

(assert (=> b!5085735 (= e!3171940 0)))

(declare-fun b!5085736 () Bool)

(assert (=> b!5085736 (= e!3171940 (+ 1 (size!39119 (t!371417 (list!19035 (xs!18964 (right!43179 ys!41)))))))))

(assert (= (and d!1645944 c!873841) b!5085735))

(assert (= (and d!1645944 (not c!873841)) b!5085736))

(declare-fun m!6142600 () Bool)

(assert (=> b!5085736 m!6142600))

(assert (=> d!1644996 d!1645944))

(declare-fun d!1645946 () Bool)

(assert (=> d!1645946 (= (list!19035 (xs!18964 (right!43179 ys!41))) (innerList!15674 (xs!18964 (right!43179 ys!41))))))

(assert (=> d!1644996 d!1645946))

(declare-fun b!5085738 () Bool)

(declare-fun e!3171941 () List!58580)

(assert (=> b!5085738 (= e!3171941 (Cons!58456 (h!64904 call!354399) (++!12815 (t!371417 call!354399) (list!19033 ys!41))))))

(declare-fun d!1645948 () Bool)

(declare-fun e!3171942 () Bool)

(assert (=> d!1645948 e!3171942))

(declare-fun res!2165077 () Bool)

(assert (=> d!1645948 (=> (not res!2165077) (not e!3171942))))

(declare-fun lt!2091621 () List!58580)

(assert (=> d!1645948 (= res!2165077 (= (content!10430 lt!2091621) ((_ map or) (content!10430 call!354399) (content!10430 (list!19033 ys!41)))))))

(assert (=> d!1645948 (= lt!2091621 e!3171941)))

(declare-fun c!873842 () Bool)

(assert (=> d!1645948 (= c!873842 ((_ is Nil!58456) call!354399))))

(assert (=> d!1645948 (= (++!12815 call!354399 (list!19033 ys!41)) lt!2091621)))

(declare-fun b!5085737 () Bool)

(assert (=> b!5085737 (= e!3171941 (list!19033 ys!41))))

(declare-fun b!5085740 () Bool)

(assert (=> b!5085740 (= e!3171942 (or (not (= (list!19033 ys!41) Nil!58456)) (= lt!2091621 call!354399)))))

(declare-fun b!5085739 () Bool)

(declare-fun res!2165076 () Bool)

(assert (=> b!5085739 (=> (not res!2165076) (not e!3171942))))

(assert (=> b!5085739 (= res!2165076 (= (size!39119 lt!2091621) (+ (size!39119 call!354399) (size!39119 (list!19033 ys!41)))))))

(assert (= (and d!1645948 c!873842) b!5085737))

(assert (= (and d!1645948 (not c!873842)) b!5085738))

(assert (= (and d!1645948 res!2165077) b!5085739))

(assert (= (and b!5085739 res!2165076) b!5085740))

(assert (=> b!5085738 m!6139376))

(declare-fun m!6142602 () Bool)

(assert (=> b!5085738 m!6142602))

(declare-fun m!6142604 () Bool)

(assert (=> d!1645948 m!6142604))

(declare-fun m!6142606 () Bool)

(assert (=> d!1645948 m!6142606))

(assert (=> d!1645948 m!6139376))

(assert (=> d!1645948 m!6139702))

(declare-fun m!6142608 () Bool)

(assert (=> b!5085739 m!6142608))

(declare-fun m!6142610 () Bool)

(assert (=> b!5085739 m!6142610))

(assert (=> b!5085739 m!6139376))

(assert (=> b!5085739 m!6139708))

(assert (=> bm!354394 d!1645948))

(declare-fun b!5085742 () Bool)

(declare-fun e!3171943 () List!58580)

(assert (=> b!5085742 (= e!3171943 (Cons!58456 (h!64904 call!354411) (++!12815 (t!371417 call!354411) (++!12815 (list!19033 (right!43179 (right!43179 xs!286))) (list!19033 ys!41)))))))

(declare-fun d!1645950 () Bool)

(declare-fun e!3171944 () Bool)

(assert (=> d!1645950 e!3171944))

(declare-fun res!2165079 () Bool)

(assert (=> d!1645950 (=> (not res!2165079) (not e!3171944))))

(declare-fun lt!2091622 () List!58580)

(assert (=> d!1645950 (= res!2165079 (= (content!10430 lt!2091622) ((_ map or) (content!10430 call!354411) (content!10430 (++!12815 (list!19033 (right!43179 (right!43179 xs!286))) (list!19033 ys!41))))))))

(assert (=> d!1645950 (= lt!2091622 e!3171943)))

(declare-fun c!873843 () Bool)

(assert (=> d!1645950 (= c!873843 ((_ is Nil!58456) call!354411))))

(assert (=> d!1645950 (= (++!12815 call!354411 (++!12815 (list!19033 (right!43179 (right!43179 xs!286))) (list!19033 ys!41))) lt!2091622)))

(declare-fun b!5085741 () Bool)

(assert (=> b!5085741 (= e!3171943 (++!12815 (list!19033 (right!43179 (right!43179 xs!286))) (list!19033 ys!41)))))

(declare-fun b!5085744 () Bool)

(assert (=> b!5085744 (= e!3171944 (or (not (= (++!12815 (list!19033 (right!43179 (right!43179 xs!286))) (list!19033 ys!41)) Nil!58456)) (= lt!2091622 call!354411)))))

(declare-fun b!5085743 () Bool)

(declare-fun res!2165078 () Bool)

(assert (=> b!5085743 (=> (not res!2165078) (not e!3171944))))

(assert (=> b!5085743 (= res!2165078 (= (size!39119 lt!2091622) (+ (size!39119 call!354411) (size!39119 (++!12815 (list!19033 (right!43179 (right!43179 xs!286))) (list!19033 ys!41))))))))

(assert (= (and d!1645950 c!873843) b!5085741))

(assert (= (and d!1645950 (not c!873843)) b!5085742))

(assert (= (and d!1645950 res!2165079) b!5085743))

(assert (= (and b!5085743 res!2165078) b!5085744))

(assert (=> b!5085742 m!6139642))

(declare-fun m!6142612 () Bool)

(assert (=> b!5085742 m!6142612))

(declare-fun m!6142614 () Bool)

(assert (=> d!1645950 m!6142614))

(declare-fun m!6142616 () Bool)

(assert (=> d!1645950 m!6142616))

(assert (=> d!1645950 m!6139642))

(declare-fun m!6142618 () Bool)

(assert (=> d!1645950 m!6142618))

(declare-fun m!6142620 () Bool)

(assert (=> b!5085743 m!6142620))

(declare-fun m!6142622 () Bool)

(assert (=> b!5085743 m!6142622))

(assert (=> b!5085743 m!6139642))

(declare-fun m!6142624 () Bool)

(assert (=> b!5085743 m!6142624))

(assert (=> bm!354406 d!1645950))

(declare-fun b!5085746 () Bool)

(declare-fun e!3171945 () List!58580)

(assert (=> b!5085746 (= e!3171945 (Cons!58456 (h!64904 (list!19033 (right!43179 (left!42849 ys!41)))) (++!12815 (t!371417 (list!19033 (right!43179 (left!42849 ys!41)))) (list!19033 (right!43179 ys!41)))))))

(declare-fun d!1645952 () Bool)

(declare-fun e!3171946 () Bool)

(assert (=> d!1645952 e!3171946))

(declare-fun res!2165081 () Bool)

(assert (=> d!1645952 (=> (not res!2165081) (not e!3171946))))

(declare-fun lt!2091623 () List!58580)

(assert (=> d!1645952 (= res!2165081 (= (content!10430 lt!2091623) ((_ map or) (content!10430 (list!19033 (right!43179 (left!42849 ys!41)))) (content!10430 (list!19033 (right!43179 ys!41))))))))

(assert (=> d!1645952 (= lt!2091623 e!3171945)))

(declare-fun c!873844 () Bool)

(assert (=> d!1645952 (= c!873844 ((_ is Nil!58456) (list!19033 (right!43179 (left!42849 ys!41)))))))

(assert (=> d!1645952 (= (++!12815 (list!19033 (right!43179 (left!42849 ys!41))) (list!19033 (right!43179 ys!41))) lt!2091623)))

(declare-fun b!5085745 () Bool)

(assert (=> b!5085745 (= e!3171945 (list!19033 (right!43179 ys!41)))))

(declare-fun b!5085748 () Bool)

(assert (=> b!5085748 (= e!3171946 (or (not (= (list!19033 (right!43179 ys!41)) Nil!58456)) (= lt!2091623 (list!19033 (right!43179 (left!42849 ys!41))))))))

(declare-fun b!5085747 () Bool)

(declare-fun res!2165080 () Bool)

(assert (=> b!5085747 (=> (not res!2165080) (not e!3171946))))

(assert (=> b!5085747 (= res!2165080 (= (size!39119 lt!2091623) (+ (size!39119 (list!19033 (right!43179 (left!42849 ys!41)))) (size!39119 (list!19033 (right!43179 ys!41))))))))

(assert (= (and d!1645952 c!873844) b!5085745))

(assert (= (and d!1645952 (not c!873844)) b!5085746))

(assert (= (and d!1645952 res!2165081) b!5085747))

(assert (= (and b!5085747 res!2165080) b!5085748))

(assert (=> b!5085746 m!6139658))

(declare-fun m!6142626 () Bool)

(assert (=> b!5085746 m!6142626))

(declare-fun m!6142628 () Bool)

(assert (=> d!1645952 m!6142628))

(assert (=> d!1645952 m!6139652))

(assert (=> d!1645952 m!6142152))

(assert (=> d!1645952 m!6139658))

(assert (=> d!1645952 m!6140722))

(declare-fun m!6142630 () Bool)

(assert (=> b!5085747 m!6142630))

(assert (=> b!5085747 m!6139652))

(assert (=> b!5085747 m!6142158))

(assert (=> b!5085747 m!6139658))

(assert (=> b!5085747 m!6140728))

(assert (=> bm!354397 d!1645952))

(assert (=> d!1645120 d!1645720))

(assert (=> d!1645120 d!1645722))

(declare-fun d!1645954 () Bool)

(declare-fun lt!2091624 () Int)

(assert (=> d!1645954 (>= lt!2091624 0)))

(declare-fun e!3171947 () Int)

(assert (=> d!1645954 (= lt!2091624 e!3171947)))

(declare-fun c!873845 () Bool)

(assert (=> d!1645954 (= c!873845 ((_ is Nil!58456) lt!2091459))))

(assert (=> d!1645954 (= (size!39119 lt!2091459) lt!2091624)))

(declare-fun b!5085749 () Bool)

(assert (=> b!5085749 (= e!3171947 0)))

(declare-fun b!5085750 () Bool)

(assert (=> b!5085750 (= e!3171947 (+ 1 (size!39119 (t!371417 lt!2091459))))))

(assert (= (and d!1645954 c!873845) b!5085749))

(assert (= (and d!1645954 (not c!873845)) b!5085750))

(declare-fun m!6142632 () Bool)

(assert (=> b!5085750 m!6142632))

(assert (=> b!5084803 d!1645954))

(declare-fun d!1645956 () Bool)

(declare-fun lt!2091625 () Int)

(assert (=> d!1645956 (>= lt!2091625 0)))

(declare-fun e!3171948 () Int)

(assert (=> d!1645956 (= lt!2091625 e!3171948)))

(declare-fun c!873846 () Bool)

(assert (=> d!1645956 (= c!873846 ((_ is Nil!58456) (list!19033 (left!42849 ys!41))))))

(assert (=> d!1645956 (= (size!39119 (list!19033 (left!42849 ys!41))) lt!2091625)))

(declare-fun b!5085751 () Bool)

(assert (=> b!5085751 (= e!3171948 0)))

(declare-fun b!5085752 () Bool)

(assert (=> b!5085752 (= e!3171948 (+ 1 (size!39119 (t!371417 (list!19033 (left!42849 ys!41))))))))

(assert (= (and d!1645956 c!873846) b!5085751))

(assert (= (and d!1645956 (not c!873846)) b!5085752))

(declare-fun m!6142634 () Bool)

(assert (=> b!5085752 m!6142634))

(assert (=> b!5084803 d!1645956))

(declare-fun d!1645958 () Bool)

(declare-fun lt!2091626 () Int)

(assert (=> d!1645958 (>= lt!2091626 0)))

(declare-fun e!3171949 () Int)

(assert (=> d!1645958 (= lt!2091626 e!3171949)))

(declare-fun c!873847 () Bool)

(assert (=> d!1645958 (= c!873847 ((_ is Nil!58456) (list!19033 (right!43179 ys!41))))))

(assert (=> d!1645958 (= (size!39119 (list!19033 (right!43179 ys!41))) lt!2091626)))

(declare-fun b!5085753 () Bool)

(assert (=> b!5085753 (= e!3171949 0)))

(declare-fun b!5085754 () Bool)

(assert (=> b!5085754 (= e!3171949 (+ 1 (size!39119 (t!371417 (list!19033 (right!43179 ys!41))))))))

(assert (= (and d!1645958 c!873847) b!5085753))

(assert (= (and d!1645958 (not c!873847)) b!5085754))

(declare-fun m!6142636 () Bool)

(assert (=> b!5085754 m!6142636))

(assert (=> b!5084803 d!1645958))

(declare-fun d!1645960 () Bool)

(declare-fun c!873848 () Bool)

(assert (=> d!1645960 (= c!873848 ((_ is Node!15586) (left!42849 (left!42849 (left!42849 err!4617)))))))

(declare-fun e!3171950 () Bool)

(assert (=> d!1645960 (= (inv!77676 (left!42849 (left!42849 (left!42849 err!4617)))) e!3171950)))

(declare-fun b!5085755 () Bool)

(assert (=> b!5085755 (= e!3171950 (inv!77680 (left!42849 (left!42849 (left!42849 err!4617)))))))

(declare-fun b!5085756 () Bool)

(declare-fun e!3171951 () Bool)

(assert (=> b!5085756 (= e!3171950 e!3171951)))

(declare-fun res!2165082 () Bool)

(assert (=> b!5085756 (= res!2165082 (not ((_ is Leaf!25884) (left!42849 (left!42849 (left!42849 err!4617))))))))

(assert (=> b!5085756 (=> res!2165082 e!3171951)))

(declare-fun b!5085757 () Bool)

(assert (=> b!5085757 (= e!3171951 (inv!77681 (left!42849 (left!42849 (left!42849 err!4617)))))))

(assert (= (and d!1645960 c!873848) b!5085755))

(assert (= (and d!1645960 (not c!873848)) b!5085756))

(assert (= (and b!5085756 (not res!2165082)) b!5085757))

(declare-fun m!6142638 () Bool)

(assert (=> b!5085755 m!6142638))

(declare-fun m!6142640 () Bool)

(assert (=> b!5085757 m!6142640))

(assert (=> b!5084817 d!1645960))

(declare-fun d!1645962 () Bool)

(declare-fun c!873849 () Bool)

(assert (=> d!1645962 (= c!873849 ((_ is Node!15586) (right!43179 (left!42849 (left!42849 err!4617)))))))

(declare-fun e!3171952 () Bool)

(assert (=> d!1645962 (= (inv!77676 (right!43179 (left!42849 (left!42849 err!4617)))) e!3171952)))

(declare-fun b!5085758 () Bool)

(assert (=> b!5085758 (= e!3171952 (inv!77680 (right!43179 (left!42849 (left!42849 err!4617)))))))

(declare-fun b!5085759 () Bool)

(declare-fun e!3171953 () Bool)

(assert (=> b!5085759 (= e!3171952 e!3171953)))

(declare-fun res!2165083 () Bool)

(assert (=> b!5085759 (= res!2165083 (not ((_ is Leaf!25884) (right!43179 (left!42849 (left!42849 err!4617))))))))

(assert (=> b!5085759 (=> res!2165083 e!3171953)))

(declare-fun b!5085760 () Bool)

(assert (=> b!5085760 (= e!3171953 (inv!77681 (right!43179 (left!42849 (left!42849 err!4617)))))))

(assert (= (and d!1645962 c!873849) b!5085758))

(assert (= (and d!1645962 (not c!873849)) b!5085759))

(assert (= (and b!5085759 (not res!2165083)) b!5085760))

(declare-fun m!6142642 () Bool)

(assert (=> b!5085758 m!6142642))

(declare-fun m!6142644 () Bool)

(assert (=> b!5085760 m!6142644))

(assert (=> b!5084817 d!1645962))

(declare-fun b!5085761 () Bool)

(declare-fun res!2165089 () Bool)

(declare-fun e!3171954 () Bool)

(assert (=> b!5085761 (=> (not res!2165089) (not e!3171954))))

(assert (=> b!5085761 (= res!2165089 (isBalanced!4448 (right!43179 (left!42849 (right!43179 lt!2091392)))))))

(declare-fun b!5085762 () Bool)

(declare-fun res!2165087 () Bool)

(assert (=> b!5085762 (=> (not res!2165087) (not e!3171954))))

(assert (=> b!5085762 (= res!2165087 (<= (- (height!2163 (left!42849 (left!42849 (right!43179 lt!2091392)))) (height!2163 (right!43179 (left!42849 (right!43179 lt!2091392))))) 1))))

(declare-fun b!5085763 () Bool)

(declare-fun e!3171955 () Bool)

(assert (=> b!5085763 (= e!3171955 e!3171954)))

(declare-fun res!2165085 () Bool)

(assert (=> b!5085763 (=> (not res!2165085) (not e!3171954))))

(assert (=> b!5085763 (= res!2165085 (<= (- 1) (- (height!2163 (left!42849 (left!42849 (right!43179 lt!2091392)))) (height!2163 (right!43179 (left!42849 (right!43179 lt!2091392)))))))))

(declare-fun b!5085764 () Bool)

(declare-fun res!2165088 () Bool)

(assert (=> b!5085764 (=> (not res!2165088) (not e!3171954))))

(assert (=> b!5085764 (= res!2165088 (not (isEmpty!31675 (left!42849 (left!42849 (right!43179 lt!2091392))))))))

(declare-fun b!5085765 () Bool)

(declare-fun res!2165084 () Bool)

(assert (=> b!5085765 (=> (not res!2165084) (not e!3171954))))

(assert (=> b!5085765 (= res!2165084 (isBalanced!4448 (left!42849 (left!42849 (right!43179 lt!2091392)))))))

(declare-fun b!5085766 () Bool)

(assert (=> b!5085766 (= e!3171954 (not (isEmpty!31675 (right!43179 (left!42849 (right!43179 lt!2091392))))))))

(declare-fun d!1645964 () Bool)

(declare-fun res!2165086 () Bool)

(assert (=> d!1645964 (=> res!2165086 e!3171955)))

(assert (=> d!1645964 (= res!2165086 (not ((_ is Node!15586) (left!42849 (right!43179 lt!2091392)))))))

(assert (=> d!1645964 (= (isBalanced!4448 (left!42849 (right!43179 lt!2091392))) e!3171955)))

(assert (= (and d!1645964 (not res!2165086)) b!5085763))

(assert (= (and b!5085763 res!2165085) b!5085762))

(assert (= (and b!5085762 res!2165087) b!5085765))

(assert (= (and b!5085765 res!2165084) b!5085761))

(assert (= (and b!5085761 res!2165089) b!5085764))

(assert (= (and b!5085764 res!2165088) b!5085766))

(declare-fun m!6142646 () Bool)

(assert (=> b!5085765 m!6142646))

(declare-fun m!6142648 () Bool)

(assert (=> b!5085766 m!6142648))

(declare-fun m!6142650 () Bool)

(assert (=> b!5085764 m!6142650))

(declare-fun m!6142652 () Bool)

(assert (=> b!5085763 m!6142652))

(declare-fun m!6142654 () Bool)

(assert (=> b!5085763 m!6142654))

(assert (=> b!5085762 m!6142652))

(assert (=> b!5085762 m!6142654))

(declare-fun m!6142656 () Bool)

(assert (=> b!5085761 m!6142656))

(assert (=> b!5084636 d!1645964))

(declare-fun d!1645966 () Bool)

(declare-fun lt!2091627 () Bool)

(assert (=> d!1645966 (= lt!2091627 (isEmpty!31677 (list!19033 (right!43179 (left!42849 lt!2091392)))))))

(assert (=> d!1645966 (= lt!2091627 (= (size!39121 (right!43179 (left!42849 lt!2091392))) 0))))

(assert (=> d!1645966 (= (isEmpty!31675 (right!43179 (left!42849 lt!2091392))) lt!2091627)))

(declare-fun bs!1190917 () Bool)

(assert (= bs!1190917 d!1645966))

(assert (=> bs!1190917 m!6140468))

(assert (=> bs!1190917 m!6140468))

(declare-fun m!6142658 () Bool)

(assert (=> bs!1190917 m!6142658))

(declare-fun m!6142660 () Bool)

(assert (=> bs!1190917 m!6142660))

(assert (=> b!5084761 d!1645966))

(declare-fun d!1645968 () Bool)

(declare-fun lt!2091628 () Int)

(assert (=> d!1645968 (>= lt!2091628 0)))

(declare-fun e!3171956 () Int)

(assert (=> d!1645968 (= lt!2091628 e!3171956)))

(declare-fun c!873850 () Bool)

(assert (=> d!1645968 (= c!873850 ((_ is Nil!58456) lt!2091457))))

(assert (=> d!1645968 (= (size!39119 lt!2091457) lt!2091628)))

(declare-fun b!5085767 () Bool)

(assert (=> b!5085767 (= e!3171956 0)))

(declare-fun b!5085768 () Bool)

(assert (=> b!5085768 (= e!3171956 (+ 1 (size!39119 (t!371417 lt!2091457))))))

(assert (= (and d!1645968 c!873850) b!5085767))

(assert (= (and d!1645968 (not c!873850)) b!5085768))

(declare-fun m!6142662 () Bool)

(assert (=> b!5085768 m!6142662))

(assert (=> b!5084781 d!1645968))

(declare-fun d!1645970 () Bool)

(declare-fun lt!2091629 () Int)

(assert (=> d!1645970 (>= lt!2091629 0)))

(declare-fun e!3171957 () Int)

(assert (=> d!1645970 (= lt!2091629 e!3171957)))

(declare-fun c!873851 () Bool)

(assert (=> d!1645970 (= c!873851 ((_ is Nil!58456) (t!371417 (list!19033 xs!286))))))

(assert (=> d!1645970 (= (size!39119 (t!371417 (list!19033 xs!286))) lt!2091629)))

(declare-fun b!5085769 () Bool)

(assert (=> b!5085769 (= e!3171957 0)))

(declare-fun b!5085770 () Bool)

(assert (=> b!5085770 (= e!3171957 (+ 1 (size!39119 (t!371417 (t!371417 (list!19033 xs!286))))))))

(assert (= (and d!1645970 c!873851) b!5085769))

(assert (= (and d!1645970 (not c!873851)) b!5085770))

(declare-fun m!6142664 () Bool)

(assert (=> b!5085770 m!6142664))

(assert (=> b!5084781 d!1645970))

(assert (=> b!5084781 d!1644992))

(declare-fun d!1645972 () Bool)

(declare-fun lt!2091630 () Int)

(assert (=> d!1645972 (>= lt!2091630 0)))

(declare-fun e!3171958 () Int)

(assert (=> d!1645972 (= lt!2091630 e!3171958)))

(declare-fun c!873852 () Bool)

(assert (=> d!1645972 (= c!873852 ((_ is Nil!58456) (t!371417 (innerList!15674 (xs!18964 err!4617)))))))

(assert (=> d!1645972 (= (size!39119 (t!371417 (innerList!15674 (xs!18964 err!4617)))) lt!2091630)))

(declare-fun b!5085771 () Bool)

(assert (=> b!5085771 (= e!3171958 0)))

(declare-fun b!5085772 () Bool)

(assert (=> b!5085772 (= e!3171958 (+ 1 (size!39119 (t!371417 (t!371417 (innerList!15674 (xs!18964 err!4617)))))))))

(assert (= (and d!1645972 c!873852) b!5085771))

(assert (= (and d!1645972 (not c!873852)) b!5085772))

(declare-fun m!6142666 () Bool)

(assert (=> b!5085772 m!6142666))

(assert (=> b!5084698 d!1645972))

(declare-fun b!5085774 () Bool)

(declare-fun e!3171959 () List!58580)

(assert (=> b!5085774 (= e!3171959 (Cons!58456 (h!64904 (t!371417 (list!19033 xs!286))) (++!12815 (t!371417 (t!371417 (list!19033 xs!286))) (list!19033 (left!42849 (left!42849 ys!41))))))))

(declare-fun d!1645974 () Bool)

(declare-fun e!3171960 () Bool)

(assert (=> d!1645974 e!3171960))

(declare-fun res!2165091 () Bool)

(assert (=> d!1645974 (=> (not res!2165091) (not e!3171960))))

(declare-fun lt!2091631 () List!58580)

(assert (=> d!1645974 (= res!2165091 (= (content!10430 lt!2091631) ((_ map or) (content!10430 (t!371417 (list!19033 xs!286))) (content!10430 (list!19033 (left!42849 (left!42849 ys!41)))))))))

(assert (=> d!1645974 (= lt!2091631 e!3171959)))

(declare-fun c!873853 () Bool)

(assert (=> d!1645974 (= c!873853 ((_ is Nil!58456) (t!371417 (list!19033 xs!286))))))

(assert (=> d!1645974 (= (++!12815 (t!371417 (list!19033 xs!286)) (list!19033 (left!42849 (left!42849 ys!41)))) lt!2091631)))

(declare-fun b!5085773 () Bool)

(assert (=> b!5085773 (= e!3171959 (list!19033 (left!42849 (left!42849 ys!41))))))

(declare-fun b!5085776 () Bool)

(assert (=> b!5085776 (= e!3171960 (or (not (= (list!19033 (left!42849 (left!42849 ys!41))) Nil!58456)) (= lt!2091631 (t!371417 (list!19033 xs!286)))))))

(declare-fun b!5085775 () Bool)

(declare-fun res!2165090 () Bool)

(assert (=> b!5085775 (=> (not res!2165090) (not e!3171960))))

(assert (=> b!5085775 (= res!2165090 (= (size!39119 lt!2091631) (+ (size!39119 (t!371417 (list!19033 xs!286))) (size!39119 (list!19033 (left!42849 (left!42849 ys!41)))))))))

(assert (= (and d!1645974 c!873853) b!5085773))

(assert (= (and d!1645974 (not c!873853)) b!5085774))

(assert (= (and d!1645974 res!2165091) b!5085775))

(assert (= (and b!5085775 res!2165090) b!5085776))

(assert (=> b!5085774 m!6139654))

(declare-fun m!6142668 () Bool)

(assert (=> b!5085774 m!6142668))

(declare-fun m!6142670 () Bool)

(assert (=> d!1645974 m!6142670))

(assert (=> d!1645974 m!6140592))

(assert (=> d!1645974 m!6139654))

(assert (=> d!1645974 m!6140524))

(declare-fun m!6142672 () Bool)

(assert (=> b!5085775 m!6142672))

(assert (=> b!5085775 m!6140320))

(assert (=> b!5085775 m!6139654))

(assert (=> b!5085775 m!6140528))

(assert (=> b!5084713 d!1645974))

(declare-fun d!1645976 () Bool)

(declare-fun lt!2091632 () Int)

(assert (=> d!1645976 (= lt!2091632 (size!39119 (list!19033 (left!42849 (right!43179 err!4617)))))))

(assert (=> d!1645976 (= lt!2091632 (ite ((_ is Empty!15586) (left!42849 (right!43179 err!4617))) 0 (ite ((_ is Leaf!25884) (left!42849 (right!43179 err!4617))) (csize!31403 (left!42849 (right!43179 err!4617))) (csize!31402 (left!42849 (right!43179 err!4617))))))))

(assert (=> d!1645976 (= (size!39121 (left!42849 (right!43179 err!4617))) lt!2091632)))

(declare-fun bs!1190918 () Bool)

(assert (= bs!1190918 d!1645976))

(declare-fun m!6142674 () Bool)

(assert (=> bs!1190918 m!6142674))

(assert (=> bs!1190918 m!6142674))

(declare-fun m!6142676 () Bool)

(assert (=> bs!1190918 m!6142676))

(assert (=> d!1645006 d!1645976))

(declare-fun d!1645978 () Bool)

(declare-fun lt!2091633 () Int)

(assert (=> d!1645978 (= lt!2091633 (size!39119 (list!19033 (right!43179 (right!43179 err!4617)))))))

(assert (=> d!1645978 (= lt!2091633 (ite ((_ is Empty!15586) (right!43179 (right!43179 err!4617))) 0 (ite ((_ is Leaf!25884) (right!43179 (right!43179 err!4617))) (csize!31403 (right!43179 (right!43179 err!4617))) (csize!31402 (right!43179 (right!43179 err!4617))))))))

(assert (=> d!1645978 (= (size!39121 (right!43179 (right!43179 err!4617))) lt!2091633)))

(declare-fun bs!1190919 () Bool)

(assert (= bs!1190919 d!1645978))

(declare-fun m!6142678 () Bool)

(assert (=> bs!1190919 m!6142678))

(assert (=> bs!1190919 m!6142678))

(declare-fun m!6142680 () Bool)

(assert (=> bs!1190919 m!6142680))

(assert (=> d!1645006 d!1645978))

(declare-fun d!1645980 () Bool)

(declare-fun lt!2091634 () Int)

(assert (=> d!1645980 (= lt!2091634 (size!39119 (list!19033 (left!42849 (left!42849 err!4617)))))))

(assert (=> d!1645980 (= lt!2091634 (ite ((_ is Empty!15586) (left!42849 (left!42849 err!4617))) 0 (ite ((_ is Leaf!25884) (left!42849 (left!42849 err!4617))) (csize!31403 (left!42849 (left!42849 err!4617))) (csize!31402 (left!42849 (left!42849 err!4617))))))))

(assert (=> d!1645980 (= (size!39121 (left!42849 (left!42849 err!4617))) lt!2091634)))

(declare-fun bs!1190920 () Bool)

(assert (= bs!1190920 d!1645980))

(declare-fun m!6142682 () Bool)

(assert (=> bs!1190920 m!6142682))

(assert (=> bs!1190920 m!6142682))

(declare-fun m!6142684 () Bool)

(assert (=> bs!1190920 m!6142684))

(assert (=> d!1645110 d!1645980))

(declare-fun d!1645982 () Bool)

(declare-fun lt!2091635 () Int)

(assert (=> d!1645982 (= lt!2091635 (size!39119 (list!19033 (right!43179 (left!42849 err!4617)))))))

(assert (=> d!1645982 (= lt!2091635 (ite ((_ is Empty!15586) (right!43179 (left!42849 err!4617))) 0 (ite ((_ is Leaf!25884) (right!43179 (left!42849 err!4617))) (csize!31403 (right!43179 (left!42849 err!4617))) (csize!31402 (right!43179 (left!42849 err!4617))))))))

(assert (=> d!1645982 (= (size!39121 (right!43179 (left!42849 err!4617))) lt!2091635)))

(declare-fun bs!1190921 () Bool)

(assert (= bs!1190921 d!1645982))

(declare-fun m!6142686 () Bool)

(assert (=> bs!1190921 m!6142686))

(assert (=> bs!1190921 m!6142686))

(declare-fun m!6142688 () Bool)

(assert (=> bs!1190921 m!6142688))

(assert (=> d!1645110 d!1645982))

(declare-fun b!5085778 () Bool)

(declare-fun e!3171961 () List!58580)

(assert (=> b!5085778 (= e!3171961 (Cons!58456 (h!64904 (list!19033 (left!42849 (right!43179 ys!41)))) (++!12815 (t!371417 (list!19033 (left!42849 (right!43179 ys!41)))) (list!19033 (right!43179 (right!43179 ys!41))))))))

(declare-fun d!1645984 () Bool)

(declare-fun e!3171962 () Bool)

(assert (=> d!1645984 e!3171962))

(declare-fun res!2165093 () Bool)

(assert (=> d!1645984 (=> (not res!2165093) (not e!3171962))))

(declare-fun lt!2091636 () List!58580)

(assert (=> d!1645984 (= res!2165093 (= (content!10430 lt!2091636) ((_ map or) (content!10430 (list!19033 (left!42849 (right!43179 ys!41)))) (content!10430 (list!19033 (right!43179 (right!43179 ys!41)))))))))

(assert (=> d!1645984 (= lt!2091636 e!3171961)))

(declare-fun c!873854 () Bool)

(assert (=> d!1645984 (= c!873854 ((_ is Nil!58456) (list!19033 (left!42849 (right!43179 ys!41)))))))

(assert (=> d!1645984 (= (++!12815 (list!19033 (left!42849 (right!43179 ys!41))) (list!19033 (right!43179 (right!43179 ys!41)))) lt!2091636)))

(declare-fun b!5085777 () Bool)

(assert (=> b!5085777 (= e!3171961 (list!19033 (right!43179 (right!43179 ys!41))))))

(declare-fun b!5085780 () Bool)

(assert (=> b!5085780 (= e!3171962 (or (not (= (list!19033 (right!43179 (right!43179 ys!41))) Nil!58456)) (= lt!2091636 (list!19033 (left!42849 (right!43179 ys!41))))))))

(declare-fun b!5085779 () Bool)

(declare-fun res!2165092 () Bool)

(assert (=> b!5085779 (=> (not res!2165092) (not e!3171962))))

(assert (=> b!5085779 (= res!2165092 (= (size!39119 lt!2091636) (+ (size!39119 (list!19033 (left!42849 (right!43179 ys!41)))) (size!39119 (list!19033 (right!43179 (right!43179 ys!41)))))))))

(assert (= (and d!1645984 c!873854) b!5085777))

(assert (= (and d!1645984 (not c!873854)) b!5085778))

(assert (= (and d!1645984 res!2165093) b!5085779))

(assert (= (and b!5085779 res!2165092) b!5085780))

(assert (=> b!5085778 m!6140498))

(declare-fun m!6142690 () Bool)

(assert (=> b!5085778 m!6142690))

(declare-fun m!6142692 () Bool)

(assert (=> d!1645984 m!6142692))

(assert (=> d!1645984 m!6140496))

(declare-fun m!6142694 () Bool)

(assert (=> d!1645984 m!6142694))

(assert (=> d!1645984 m!6140498))

(declare-fun m!6142696 () Bool)

(assert (=> d!1645984 m!6142696))

(declare-fun m!6142698 () Bool)

(assert (=> b!5085779 m!6142698))

(assert (=> b!5085779 m!6140496))

(assert (=> b!5085779 m!6142344))

(assert (=> b!5085779 m!6140498))

(assert (=> b!5085779 m!6142346))

(assert (=> b!5084705 d!1645984))

(declare-fun b!5085782 () Bool)

(declare-fun e!3171963 () List!58580)

(declare-fun e!3171964 () List!58580)

(assert (=> b!5085782 (= e!3171963 e!3171964)))

(declare-fun c!873856 () Bool)

(assert (=> b!5085782 (= c!873856 ((_ is Leaf!25884) (left!42849 (right!43179 ys!41))))))

(declare-fun b!5085781 () Bool)

(assert (=> b!5085781 (= e!3171963 Nil!58456)))

(declare-fun b!5085784 () Bool)

(assert (=> b!5085784 (= e!3171964 (++!12815 (list!19033 (left!42849 (left!42849 (right!43179 ys!41)))) (list!19033 (right!43179 (left!42849 (right!43179 ys!41))))))))

(declare-fun d!1645986 () Bool)

(declare-fun c!873855 () Bool)

(assert (=> d!1645986 (= c!873855 ((_ is Empty!15586) (left!42849 (right!43179 ys!41))))))

(assert (=> d!1645986 (= (list!19033 (left!42849 (right!43179 ys!41))) e!3171963)))

(declare-fun b!5085783 () Bool)

(assert (=> b!5085783 (= e!3171964 (list!19035 (xs!18964 (left!42849 (right!43179 ys!41)))))))

(assert (= (and d!1645986 c!873855) b!5085781))

(assert (= (and d!1645986 (not c!873855)) b!5085782))

(assert (= (and b!5085782 c!873856) b!5085783))

(assert (= (and b!5085782 (not c!873856)) b!5085784))

(declare-fun m!6142700 () Bool)

(assert (=> b!5085784 m!6142700))

(declare-fun m!6142702 () Bool)

(assert (=> b!5085784 m!6142702))

(assert (=> b!5085784 m!6142700))

(assert (=> b!5085784 m!6142702))

(declare-fun m!6142704 () Bool)

(assert (=> b!5085784 m!6142704))

(declare-fun m!6142706 () Bool)

(assert (=> b!5085783 m!6142706))

(assert (=> b!5084705 d!1645986))

(declare-fun b!5085786 () Bool)

(declare-fun e!3171965 () List!58580)

(declare-fun e!3171966 () List!58580)

(assert (=> b!5085786 (= e!3171965 e!3171966)))

(declare-fun c!873858 () Bool)

(assert (=> b!5085786 (= c!873858 ((_ is Leaf!25884) (right!43179 (right!43179 ys!41))))))

(declare-fun b!5085785 () Bool)

(assert (=> b!5085785 (= e!3171965 Nil!58456)))

(declare-fun b!5085788 () Bool)

(assert (=> b!5085788 (= e!3171966 (++!12815 (list!19033 (left!42849 (right!43179 (right!43179 ys!41)))) (list!19033 (right!43179 (right!43179 (right!43179 ys!41))))))))

(declare-fun d!1645988 () Bool)

(declare-fun c!873857 () Bool)

(assert (=> d!1645988 (= c!873857 ((_ is Empty!15586) (right!43179 (right!43179 ys!41))))))

(assert (=> d!1645988 (= (list!19033 (right!43179 (right!43179 ys!41))) e!3171965)))

(declare-fun b!5085787 () Bool)

(assert (=> b!5085787 (= e!3171966 (list!19035 (xs!18964 (right!43179 (right!43179 ys!41)))))))

(assert (= (and d!1645988 c!873857) b!5085785))

(assert (= (and d!1645988 (not c!873857)) b!5085786))

(assert (= (and b!5085786 c!873858) b!5085787))

(assert (= (and b!5085786 (not c!873858)) b!5085788))

(declare-fun m!6142708 () Bool)

(assert (=> b!5085788 m!6142708))

(declare-fun m!6142710 () Bool)

(assert (=> b!5085788 m!6142710))

(assert (=> b!5085788 m!6142708))

(assert (=> b!5085788 m!6142710))

(declare-fun m!6142712 () Bool)

(assert (=> b!5085788 m!6142712))

(assert (=> b!5085787 m!6142102))

(assert (=> b!5084705 d!1645988))

(assert (=> b!5084613 d!1645730))

(assert (=> b!5084613 d!1645732))

(assert (=> bm!354413 d!1645148))

(declare-fun d!1645990 () Bool)

(declare-fun lt!2091637 () Bool)

(assert (=> d!1645990 (= lt!2091637 (isEmpty!31677 (list!19033 (right!43179 (left!42849 xs!286)))))))

(assert (=> d!1645990 (= lt!2091637 (= (size!39121 (right!43179 (left!42849 xs!286))) 0))))

(assert (=> d!1645990 (= (isEmpty!31675 (right!43179 (left!42849 xs!286))) lt!2091637)))

(declare-fun bs!1190922 () Bool)

(assert (= bs!1190922 d!1645990))

(assert (=> bs!1190922 m!6140296))

(assert (=> bs!1190922 m!6140296))

(declare-fun m!6142714 () Bool)

(assert (=> bs!1190922 m!6142714))

(assert (=> bs!1190922 m!6140578))

(assert (=> b!5084794 d!1645990))

(declare-fun d!1645992 () Bool)

(assert (=> d!1645992 (= (max!0 (height!2163 (left!42849 err!4617)) (height!2163 (right!43179 err!4617))) (ite (< (height!2163 (left!42849 err!4617)) (height!2163 (right!43179 err!4617))) (height!2163 (right!43179 err!4617)) (height!2163 (left!42849 err!4617))))))

(assert (=> b!5084721 d!1645992))

(declare-fun d!1645994 () Bool)

(assert (=> d!1645994 (= (height!2163 (left!42849 err!4617)) (ite ((_ is Empty!15586) (left!42849 err!4617)) 0 (ite ((_ is Leaf!25884) (left!42849 err!4617)) 1 (cheight!15797 (left!42849 err!4617)))))))

(assert (=> b!5084721 d!1645994))

(declare-fun d!1645996 () Bool)

(assert (=> d!1645996 (= (height!2163 (right!43179 err!4617)) (ite ((_ is Empty!15586) (right!43179 err!4617)) 0 (ite ((_ is Leaf!25884) (right!43179 err!4617)) 1 (cheight!15797 (right!43179 err!4617)))))))

(assert (=> b!5084721 d!1645996))

(declare-fun b!5085790 () Bool)

(declare-fun e!3171967 () List!58580)

(assert (=> b!5085790 (= e!3171967 (Cons!58456 (h!64904 (t!371417 (list!19033 (left!42849 xs!286)))) (++!12815 (t!371417 (t!371417 (list!19033 (left!42849 xs!286)))) (list!19033 (right!43179 xs!286)))))))

(declare-fun d!1645998 () Bool)

(declare-fun e!3171968 () Bool)

(assert (=> d!1645998 e!3171968))

(declare-fun res!2165095 () Bool)

(assert (=> d!1645998 (=> (not res!2165095) (not e!3171968))))

(declare-fun lt!2091638 () List!58580)

(assert (=> d!1645998 (= res!2165095 (= (content!10430 lt!2091638) ((_ map or) (content!10430 (t!371417 (list!19033 (left!42849 xs!286)))) (content!10430 (list!19033 (right!43179 xs!286))))))))

(assert (=> d!1645998 (= lt!2091638 e!3171967)))

(declare-fun c!873859 () Bool)

(assert (=> d!1645998 (= c!873859 ((_ is Nil!58456) (t!371417 (list!19033 (left!42849 xs!286)))))))

(assert (=> d!1645998 (= (++!12815 (t!371417 (list!19033 (left!42849 xs!286))) (list!19033 (right!43179 xs!286))) lt!2091638)))

(declare-fun b!5085789 () Bool)

(assert (=> b!5085789 (= e!3171967 (list!19033 (right!43179 xs!286)))))

(declare-fun b!5085792 () Bool)

(assert (=> b!5085792 (= e!3171968 (or (not (= (list!19033 (right!43179 xs!286)) Nil!58456)) (= lt!2091638 (t!371417 (list!19033 (left!42849 xs!286))))))))

(declare-fun b!5085791 () Bool)

(declare-fun res!2165094 () Bool)

(assert (=> b!5085791 (=> (not res!2165094) (not e!3171968))))

(assert (=> b!5085791 (= res!2165094 (= (size!39119 lt!2091638) (+ (size!39119 (t!371417 (list!19033 (left!42849 xs!286)))) (size!39119 (list!19033 (right!43179 xs!286))))))))

(assert (= (and d!1645998 c!873859) b!5085789))

(assert (= (and d!1645998 (not c!873859)) b!5085790))

(assert (= (and d!1645998 res!2165095) b!5085791))

(assert (= (and b!5085791 res!2165094) b!5085792))

(assert (=> b!5085790 m!6139648))

(declare-fun m!6142716 () Bool)

(assert (=> b!5085790 m!6142716))

(declare-fun m!6142718 () Bool)

(assert (=> d!1645998 m!6142718))

(declare-fun m!6142720 () Bool)

(assert (=> d!1645998 m!6142720))

(assert (=> d!1645998 m!6139648))

(assert (=> d!1645998 m!6140286))

(declare-fun m!6142722 () Bool)

(assert (=> b!5085791 m!6142722))

(assert (=> b!5085791 m!6142558))

(assert (=> b!5085791 m!6139648))

(assert (=> b!5085791 m!6140292))

(assert (=> b!5084573 d!1645998))

(declare-fun d!1646000 () Bool)

(assert (=> d!1646000 (= (isEmpty!31677 (list!19033 (right!43179 lt!2091392))) ((_ is Nil!58456) (list!19033 (right!43179 lt!2091392))))))

(assert (=> d!1645048 d!1646000))

(assert (=> d!1645048 d!1645058))

(declare-fun d!1646002 () Bool)

(declare-fun lt!2091639 () Int)

(assert (=> d!1646002 (= lt!2091639 (size!39119 (list!19033 (right!43179 lt!2091392))))))

(assert (=> d!1646002 (= lt!2091639 (ite ((_ is Empty!15586) (right!43179 lt!2091392)) 0 (ite ((_ is Leaf!25884) (right!43179 lt!2091392)) (csize!31403 (right!43179 lt!2091392)) (csize!31402 (right!43179 lt!2091392)))))))

(assert (=> d!1646002 (= (size!39121 (right!43179 lt!2091392)) lt!2091639)))

(declare-fun bs!1190923 () Bool)

(assert (= bs!1190923 d!1646002))

(assert (=> bs!1190923 m!6139690))

(assert (=> bs!1190923 m!6139690))

(assert (=> bs!1190923 m!6140464))

(assert (=> d!1645048 d!1646002))

(assert (=> bm!354403 d!1644978))

(declare-fun d!1646004 () Bool)

(assert (=> d!1646004 (= (inv!77677 (xs!18964 (left!42849 (right!43179 xs!286)))) (<= (size!39119 (innerList!15674 (xs!18964 (left!42849 (right!43179 xs!286))))) 2147483647))))

(declare-fun bs!1190924 () Bool)

(assert (= bs!1190924 d!1646004))

(declare-fun m!6142724 () Bool)

(assert (=> bs!1190924 m!6142724))

(assert (=> b!5084825 d!1646004))

(declare-fun d!1646006 () Bool)

(declare-fun lt!2091640 () Int)

(assert (=> d!1646006 (>= lt!2091640 0)))

(declare-fun e!3171969 () Int)

(assert (=> d!1646006 (= lt!2091640 e!3171969)))

(declare-fun c!873860 () Bool)

(assert (=> d!1646006 (= c!873860 ((_ is Nil!58456) (innerList!15674 (xs!18964 (right!43179 err!4617)))))))

(assert (=> d!1646006 (= (size!39119 (innerList!15674 (xs!18964 (right!43179 err!4617)))) lt!2091640)))

(declare-fun b!5085793 () Bool)

(assert (=> b!5085793 (= e!3171969 0)))

(declare-fun b!5085794 () Bool)

(assert (=> b!5085794 (= e!3171969 (+ 1 (size!39119 (t!371417 (innerList!15674 (xs!18964 (right!43179 err!4617)))))))))

(assert (= (and d!1646006 c!873860) b!5085793))

(assert (= (and d!1646006 (not c!873860)) b!5085794))

(declare-fun m!6142726 () Bool)

(assert (=> b!5085794 m!6142726))

(assert (=> d!1645104 d!1646006))

(declare-fun d!1646008 () Bool)

(declare-fun lt!2091641 () Int)

(assert (=> d!1646008 (>= lt!2091641 0)))

(declare-fun e!3171970 () Int)

(assert (=> d!1646008 (= lt!2091641 e!3171970)))

(declare-fun c!873861 () Bool)

(assert (=> d!1646008 (= c!873861 ((_ is Nil!58456) (t!371417 lt!2091399)))))

(assert (=> d!1646008 (= (size!39119 (t!371417 lt!2091399)) lt!2091641)))

(declare-fun b!5085795 () Bool)

(assert (=> b!5085795 (= e!3171970 0)))

(declare-fun b!5085796 () Bool)

(assert (=> b!5085796 (= e!3171970 (+ 1 (size!39119 (t!371417 (t!371417 lt!2091399)))))))

(assert (= (and d!1646008 c!873861) b!5085795))

(assert (= (and d!1646008 (not c!873861)) b!5085796))

(declare-fun m!6142728 () Bool)

(assert (=> b!5085796 m!6142728))

(assert (=> b!5084598 d!1646008))

(declare-fun d!1646010 () Bool)

(assert (=> d!1646010 (= (isEmpty!31677 (list!19033 (right!43179 xs!286))) ((_ is Nil!58456) (list!19033 (right!43179 xs!286))))))

(assert (=> d!1645076 d!1646010))

(assert (=> d!1645076 d!1644982))

(assert (=> d!1645076 d!1645670))

(declare-fun d!1646012 () Bool)

(declare-fun c!873862 () Bool)

(assert (=> d!1646012 (= c!873862 ((_ is Nil!58456) lt!2091455))))

(declare-fun e!3171971 () (InoxSet T!105272))

(assert (=> d!1646012 (= (content!10430 lt!2091455) e!3171971)))

(declare-fun b!5085797 () Bool)

(assert (=> b!5085797 (= e!3171971 ((as const (Array T!105272 Bool)) false))))

(declare-fun b!5085798 () Bool)

(assert (=> b!5085798 (= e!3171971 ((_ map or) (store ((as const (Array T!105272 Bool)) false) (h!64904 lt!2091455) true) (content!10430 (t!371417 lt!2091455))))))

(assert (= (and d!1646012 c!873862) b!5085797))

(assert (= (and d!1646012 (not c!873862)) b!5085798))

(declare-fun m!6142730 () Bool)

(assert (=> b!5085798 m!6142730))

(declare-fun m!6142732 () Bool)

(assert (=> b!5085798 m!6142732))

(assert (=> d!1645116 d!1646012))

(declare-fun d!1646014 () Bool)

(declare-fun c!873863 () Bool)

(assert (=> d!1646014 (= c!873863 ((_ is Nil!58456) (list!19033 (right!43179 (right!43179 xs!286)))))))

(declare-fun e!3171972 () (InoxSet T!105272))

(assert (=> d!1646014 (= (content!10430 (list!19033 (right!43179 (right!43179 xs!286)))) e!3171972)))

(declare-fun b!5085799 () Bool)

(assert (=> b!5085799 (= e!3171972 ((as const (Array T!105272 Bool)) false))))

(declare-fun b!5085800 () Bool)

(assert (=> b!5085800 (= e!3171972 ((_ map or) (store ((as const (Array T!105272 Bool)) false) (h!64904 (list!19033 (right!43179 (right!43179 xs!286)))) true) (content!10430 (t!371417 (list!19033 (right!43179 (right!43179 xs!286)))))))))

(assert (= (and d!1646014 c!873863) b!5085799))

(assert (= (and d!1646014 (not c!873863)) b!5085800))

(declare-fun m!6142734 () Bool)

(assert (=> b!5085800 m!6142734))

(assert (=> b!5085800 m!6142356))

(assert (=> d!1645116 d!1646014))

(assert (=> d!1645116 d!1645100))

(declare-fun b!5085802 () Bool)

(declare-fun e!3171973 () List!58580)

(assert (=> b!5085802 (= e!3171973 (Cons!58456 (h!64904 (list!19033 (left!42849 (right!43179 xs!286)))) (++!12815 (t!371417 (list!19033 (left!42849 (right!43179 xs!286)))) (++!12815 (list!19033 (right!43179 (right!43179 xs!286))) (list!19033 ys!41)))))))

(declare-fun d!1646016 () Bool)

(declare-fun e!3171974 () Bool)

(assert (=> d!1646016 e!3171974))

(declare-fun res!2165097 () Bool)

(assert (=> d!1646016 (=> (not res!2165097) (not e!3171974))))

(declare-fun lt!2091642 () List!58580)

(assert (=> d!1646016 (= res!2165097 (= (content!10430 lt!2091642) ((_ map or) (content!10430 (list!19033 (left!42849 (right!43179 xs!286)))) (content!10430 (++!12815 (list!19033 (right!43179 (right!43179 xs!286))) (list!19033 ys!41))))))))

(assert (=> d!1646016 (= lt!2091642 e!3171973)))

(declare-fun c!873864 () Bool)

(assert (=> d!1646016 (= c!873864 ((_ is Nil!58456) (list!19033 (left!42849 (right!43179 xs!286)))))))

(assert (=> d!1646016 (= (++!12815 (list!19033 (left!42849 (right!43179 xs!286))) (++!12815 (list!19033 (right!43179 (right!43179 xs!286))) (list!19033 ys!41))) lt!2091642)))

(declare-fun b!5085801 () Bool)

(assert (=> b!5085801 (= e!3171973 (++!12815 (list!19033 (right!43179 (right!43179 xs!286))) (list!19033 ys!41)))))

(declare-fun b!5085804 () Bool)

(assert (=> b!5085804 (= e!3171974 (or (not (= (++!12815 (list!19033 (right!43179 (right!43179 xs!286))) (list!19033 ys!41)) Nil!58456)) (= lt!2091642 (list!19033 (left!42849 (right!43179 xs!286))))))))

(declare-fun b!5085803 () Bool)

(declare-fun res!2165096 () Bool)

(assert (=> b!5085803 (=> (not res!2165096) (not e!3171974))))

(assert (=> b!5085803 (= res!2165096 (= (size!39119 lt!2091642) (+ (size!39119 (list!19033 (left!42849 (right!43179 xs!286)))) (size!39119 (++!12815 (list!19033 (right!43179 (right!43179 xs!286))) (list!19033 ys!41))))))))

(assert (= (and d!1646016 c!873864) b!5085801))

(assert (= (and d!1646016 (not c!873864)) b!5085802))

(assert (= (and d!1646016 res!2165097) b!5085803))

(assert (= (and b!5085803 res!2165096) b!5085804))

(assert (=> b!5085802 m!6139642))

(declare-fun m!6142736 () Bool)

(assert (=> b!5085802 m!6142736))

(declare-fun m!6142738 () Bool)

(assert (=> d!1646016 m!6142738))

(assert (=> d!1646016 m!6139640))

(assert (=> d!1646016 m!6142232))

(assert (=> d!1646016 m!6139642))

(assert (=> d!1646016 m!6142618))

(declare-fun m!6142740 () Bool)

(assert (=> b!5085803 m!6142740))

(assert (=> b!5085803 m!6139640))

(assert (=> b!5085803 m!6142238))

(assert (=> b!5085803 m!6139642))

(assert (=> b!5085803 m!6142624))

(assert (=> bm!354405 d!1646016))

(assert (=> b!5084578 d!1645882))

(declare-fun d!1646018 () Bool)

(declare-fun lt!2091643 () Int)

(assert (=> d!1646018 (= lt!2091643 (size!39119 (list!19033 (left!42849 (left!42849 ys!41)))))))

(assert (=> d!1646018 (= lt!2091643 (ite ((_ is Empty!15586) (left!42849 (left!42849 ys!41))) 0 (ite ((_ is Leaf!25884) (left!42849 (left!42849 ys!41))) (csize!31403 (left!42849 (left!42849 ys!41))) (csize!31402 (left!42849 (left!42849 ys!41))))))))

(assert (=> d!1646018 (= (size!39121 (left!42849 (left!42849 ys!41))) lt!2091643)))

(declare-fun bs!1190925 () Bool)

(assert (= bs!1190925 d!1646018))

(assert (=> bs!1190925 m!6139654))

(assert (=> bs!1190925 m!6139654))

(assert (=> bs!1190925 m!6140528))

(assert (=> d!1645018 d!1646018))

(declare-fun d!1646020 () Bool)

(declare-fun lt!2091644 () Int)

(assert (=> d!1646020 (= lt!2091644 (size!39119 (list!19033 (right!43179 (left!42849 ys!41)))))))

(assert (=> d!1646020 (= lt!2091644 (ite ((_ is Empty!15586) (right!43179 (left!42849 ys!41))) 0 (ite ((_ is Leaf!25884) (right!43179 (left!42849 ys!41))) (csize!31403 (right!43179 (left!42849 ys!41))) (csize!31402 (right!43179 (left!42849 ys!41))))))))

(assert (=> d!1646020 (= (size!39121 (right!43179 (left!42849 ys!41))) lt!2091644)))

(declare-fun bs!1190926 () Bool)

(assert (= bs!1190926 d!1646020))

(assert (=> bs!1190926 m!6139652))

(assert (=> bs!1190926 m!6139652))

(assert (=> bs!1190926 m!6142158))

(assert (=> d!1645018 d!1646020))

(assert (=> b!5084725 d!1645752))

(assert (=> b!5084725 d!1645754))

(declare-fun d!1646022 () Bool)

(assert (=> d!1646022 (= (inv!77677 (xs!18964 (right!43179 (left!42849 err!4617)))) (<= (size!39119 (innerList!15674 (xs!18964 (right!43179 (left!42849 err!4617))))) 2147483647))))

(declare-fun bs!1190927 () Bool)

(assert (= bs!1190927 d!1646022))

(declare-fun m!6142742 () Bool)

(assert (=> bs!1190927 m!6142742))

(assert (=> b!5084821 d!1646022))

(declare-fun d!1646024 () Bool)

(declare-fun res!2165098 () Bool)

(declare-fun e!3171975 () Bool)

(assert (=> d!1646024 (=> (not res!2165098) (not e!3171975))))

(assert (=> d!1646024 (= res!2165098 (<= (size!39119 (list!19035 (xs!18964 (left!42849 (left!42849 ys!41))))) 512))))

(assert (=> d!1646024 (= (inv!77681 (left!42849 (left!42849 ys!41))) e!3171975)))

(declare-fun b!5085805 () Bool)

(declare-fun res!2165099 () Bool)

(assert (=> b!5085805 (=> (not res!2165099) (not e!3171975))))

(assert (=> b!5085805 (= res!2165099 (= (csize!31403 (left!42849 (left!42849 ys!41))) (size!39119 (list!19035 (xs!18964 (left!42849 (left!42849 ys!41)))))))))

(declare-fun b!5085806 () Bool)

(assert (=> b!5085806 (= e!3171975 (and (> (csize!31403 (left!42849 (left!42849 ys!41))) 0) (<= (csize!31403 (left!42849 (left!42849 ys!41))) 512)))))

(assert (= (and d!1646024 res!2165098) b!5085805))

(assert (= (and b!5085805 res!2165099) b!5085806))

(assert (=> d!1646024 m!6140536))

(assert (=> d!1646024 m!6140536))

(declare-fun m!6142744 () Bool)

(assert (=> d!1646024 m!6142744))

(assert (=> b!5085805 m!6140536))

(assert (=> b!5085805 m!6140536))

(assert (=> b!5085805 m!6142744))

(assert (=> b!5084785 d!1646024))

(declare-fun bm!354445 () Bool)

(declare-fun call!354453 () List!58580)

(assert (=> bm!354445 (= call!354453 (++!12815 (list!19033 (right!43179 (right!43179 xs!286))) (list!19033 ys!41)))))

(declare-fun b!5085807 () Bool)

(declare-fun e!3171976 () Bool)

(declare-fun call!354450 () List!58580)

(declare-fun call!354452 () List!58580)

(assert (=> b!5085807 (= e!3171976 (= call!354450 call!354452))))

(declare-fun lt!2091645 () Bool)

(assert (=> b!5085807 (= lt!2091645 (appendAssoc!314 (t!371417 (t!371417 (list!19033 (left!42849 (right!43179 xs!286))))) (list!19033 (right!43179 (right!43179 xs!286))) (list!19033 ys!41)))))

(declare-fun bm!354446 () Bool)

(declare-fun call!354451 () List!58580)

(assert (=> bm!354446 (= call!354450 (++!12815 call!354451 (list!19033 ys!41)))))

(declare-fun b!5085808 () Bool)

(assert (=> b!5085808 (= e!3171976 (= call!354450 call!354452))))

(declare-fun d!1646026 () Bool)

(assert (=> d!1646026 e!3171976))

(declare-fun c!873865 () Bool)

(assert (=> d!1646026 (= c!873865 ((_ is Nil!58456) (t!371417 (list!19033 (left!42849 (right!43179 xs!286))))))))

(assert (=> d!1646026 (= (appendAssoc!314 (t!371417 (list!19033 (left!42849 (right!43179 xs!286)))) (list!19033 (right!43179 (right!43179 xs!286))) (list!19033 ys!41)) true)))

(declare-fun bm!354447 () Bool)

(assert (=> bm!354447 (= call!354451 (++!12815 (t!371417 (list!19033 (left!42849 (right!43179 xs!286)))) (list!19033 (right!43179 (right!43179 xs!286)))))))

(declare-fun bm!354448 () Bool)

(assert (=> bm!354448 (= call!354452 (++!12815 (t!371417 (list!19033 (left!42849 (right!43179 xs!286)))) call!354453))))

(assert (= (and d!1646026 c!873865) b!5085808))

(assert (= (and d!1646026 (not c!873865)) b!5085807))

(assert (= (or b!5085808 b!5085807) bm!354447))

(assert (= (or b!5085808 b!5085807) bm!354445))

(assert (= (or b!5085808 b!5085807) bm!354448))

(assert (= (or b!5085808 b!5085807) bm!354446))

(declare-fun m!6142746 () Bool)

(assert (=> bm!354448 m!6142746))

(assert (=> b!5085807 m!6139636))

(assert (=> b!5085807 m!6139376))

(declare-fun m!6142748 () Bool)

(assert (=> b!5085807 m!6142748))

(assert (=> bm!354446 m!6139376))

(declare-fun m!6142750 () Bool)

(assert (=> bm!354446 m!6142750))

(assert (=> bm!354445 m!6139636))

(assert (=> bm!354445 m!6139376))

(assert (=> bm!354445 m!6139642))

(assert (=> bm!354447 m!6139636))

(declare-fun m!6142752 () Bool)

(assert (=> bm!354447 m!6142752))

(assert (=> b!5084657 d!1646026))

(declare-fun b!5085810 () Bool)

(declare-fun e!3171977 () List!58580)

(assert (=> b!5085810 (= e!3171977 (Cons!58456 (h!64904 (t!371417 (list!19033 (left!42849 ys!41)))) (++!12815 (t!371417 (t!371417 (list!19033 (left!42849 ys!41)))) (list!19033 (right!43179 ys!41)))))))

(declare-fun d!1646028 () Bool)

(declare-fun e!3171978 () Bool)

(assert (=> d!1646028 e!3171978))

(declare-fun res!2165101 () Bool)

(assert (=> d!1646028 (=> (not res!2165101) (not e!3171978))))

(declare-fun lt!2091646 () List!58580)

(assert (=> d!1646028 (= res!2165101 (= (content!10430 lt!2091646) ((_ map or) (content!10430 (t!371417 (list!19033 (left!42849 ys!41)))) (content!10430 (list!19033 (right!43179 ys!41))))))))

(assert (=> d!1646028 (= lt!2091646 e!3171977)))

(declare-fun c!873866 () Bool)

(assert (=> d!1646028 (= c!873866 ((_ is Nil!58456) (t!371417 (list!19033 (left!42849 ys!41)))))))

(assert (=> d!1646028 (= (++!12815 (t!371417 (list!19033 (left!42849 ys!41))) (list!19033 (right!43179 ys!41))) lt!2091646)))

(declare-fun b!5085809 () Bool)

(assert (=> b!5085809 (= e!3171977 (list!19033 (right!43179 ys!41)))))

(declare-fun b!5085812 () Bool)

(assert (=> b!5085812 (= e!3171978 (or (not (= (list!19033 (right!43179 ys!41)) Nil!58456)) (= lt!2091646 (t!371417 (list!19033 (left!42849 ys!41))))))))

(declare-fun b!5085811 () Bool)

(declare-fun res!2165100 () Bool)

(assert (=> b!5085811 (=> (not res!2165100) (not e!3171978))))

(assert (=> b!5085811 (= res!2165100 (= (size!39119 lt!2091646) (+ (size!39119 (t!371417 (list!19033 (left!42849 ys!41)))) (size!39119 (list!19033 (right!43179 ys!41))))))))

(assert (= (and d!1646028 c!873866) b!5085809))

(assert (= (and d!1646028 (not c!873866)) b!5085810))

(assert (= (and d!1646028 res!2165101) b!5085811))

(assert (= (and b!5085811 res!2165100) b!5085812))

(assert (=> b!5085810 m!6139658))

(declare-fun m!6142754 () Bool)

(assert (=> b!5085810 m!6142754))

(declare-fun m!6142756 () Bool)

(assert (=> d!1646028 m!6142756))

(assert (=> d!1646028 m!6142550))

(assert (=> d!1646028 m!6139658))

(assert (=> d!1646028 m!6140722))

(declare-fun m!6142758 () Bool)

(assert (=> b!5085811 m!6142758))

(assert (=> b!5085811 m!6142634))

(assert (=> b!5085811 m!6139658))

(assert (=> b!5085811 m!6140728))

(assert (=> b!5084802 d!1646028))

(declare-fun bm!354449 () Bool)

(declare-fun call!354457 () List!58580)

(assert (=> bm!354449 (= call!354457 (++!12815 (list!19033 (left!42849 (right!43179 xs!286))) (++!12815 (list!19033 (right!43179 (right!43179 xs!286))) (list!19033 ys!41))))))

(declare-fun b!5085813 () Bool)

(declare-fun e!3171979 () Bool)

(declare-fun call!354454 () List!58580)

(declare-fun call!354456 () List!58580)

(assert (=> b!5085813 (= e!3171979 (= call!354454 call!354456))))

(declare-fun lt!2091647 () Bool)

(assert (=> b!5085813 (= lt!2091647 (appendAssoc!314 (t!371417 (t!371417 (list!19033 (left!42849 xs!286)))) (list!19033 (left!42849 (right!43179 xs!286))) (++!12815 (list!19033 (right!43179 (right!43179 xs!286))) (list!19033 ys!41))))))

(declare-fun bm!354450 () Bool)

(declare-fun call!354455 () List!58580)

(assert (=> bm!354450 (= call!354454 (++!12815 call!354455 (++!12815 (list!19033 (right!43179 (right!43179 xs!286))) (list!19033 ys!41))))))

(declare-fun b!5085814 () Bool)

(assert (=> b!5085814 (= e!3171979 (= call!354454 call!354456))))

(declare-fun d!1646030 () Bool)

(assert (=> d!1646030 e!3171979))

(declare-fun c!873867 () Bool)

(assert (=> d!1646030 (= c!873867 ((_ is Nil!58456) (t!371417 (list!19033 (left!42849 xs!286)))))))

(assert (=> d!1646030 (= (appendAssoc!314 (t!371417 (list!19033 (left!42849 xs!286))) (list!19033 (left!42849 (right!43179 xs!286))) (++!12815 (list!19033 (right!43179 (right!43179 xs!286))) (list!19033 ys!41))) true)))

(declare-fun bm!354451 () Bool)

(assert (=> bm!354451 (= call!354455 (++!12815 (t!371417 (list!19033 (left!42849 xs!286))) (list!19033 (left!42849 (right!43179 xs!286)))))))

(declare-fun bm!354452 () Bool)

(assert (=> bm!354452 (= call!354456 (++!12815 (t!371417 (list!19033 (left!42849 xs!286))) call!354457))))

(assert (= (and d!1646030 c!873867) b!5085814))

(assert (= (and d!1646030 (not c!873867)) b!5085813))

(assert (= (or b!5085814 b!5085813) bm!354451))

(assert (= (or b!5085814 b!5085813) bm!354449))

(assert (= (or b!5085814 b!5085813) bm!354452))

(assert (= (or b!5085814 b!5085813) bm!354450))

(declare-fun m!6142760 () Bool)

(assert (=> bm!354452 m!6142760))

(assert (=> b!5085813 m!6139640))

(assert (=> b!5085813 m!6139642))

(declare-fun m!6142762 () Bool)

(assert (=> b!5085813 m!6142762))

(assert (=> bm!354450 m!6139642))

(declare-fun m!6142764 () Bool)

(assert (=> bm!354450 m!6142764))

(assert (=> bm!354449 m!6139640))

(assert (=> bm!354449 m!6139642))

(assert (=> bm!354449 m!6140628))

(assert (=> bm!354451 m!6139640))

(declare-fun m!6142766 () Bool)

(assert (=> bm!354451 m!6142766))

(assert (=> b!5084748 d!1646030))

(assert (=> d!1644998 d!1645800))

(assert (=> d!1644998 d!1645802))

(declare-fun b!5085816 () Bool)

(declare-fun e!3171980 () List!58580)

(assert (=> b!5085816 (= e!3171980 (Cons!58456 (h!64904 (list!19033 (left!42849 (right!43179 (left!42849 ys!41))))) (++!12815 (t!371417 (list!19033 (left!42849 (right!43179 (left!42849 ys!41))))) (list!19033 (right!43179 (right!43179 (left!42849 ys!41)))))))))

(declare-fun d!1646032 () Bool)

(declare-fun e!3171981 () Bool)

(assert (=> d!1646032 e!3171981))

(declare-fun res!2165103 () Bool)

(assert (=> d!1646032 (=> (not res!2165103) (not e!3171981))))

(declare-fun lt!2091648 () List!58580)

(assert (=> d!1646032 (= res!2165103 (= (content!10430 lt!2091648) ((_ map or) (content!10430 (list!19033 (left!42849 (right!43179 (left!42849 ys!41))))) (content!10430 (list!19033 (right!43179 (right!43179 (left!42849 ys!41))))))))))

(assert (=> d!1646032 (= lt!2091648 e!3171980)))

(declare-fun c!873868 () Bool)

(assert (=> d!1646032 (= c!873868 ((_ is Nil!58456) (list!19033 (left!42849 (right!43179 (left!42849 ys!41))))))))

(assert (=> d!1646032 (= (++!12815 (list!19033 (left!42849 (right!43179 (left!42849 ys!41)))) (list!19033 (right!43179 (right!43179 (left!42849 ys!41))))) lt!2091648)))

(declare-fun b!5085815 () Bool)

(assert (=> b!5085815 (= e!3171980 (list!19033 (right!43179 (right!43179 (left!42849 ys!41)))))))

(declare-fun b!5085818 () Bool)

(assert (=> b!5085818 (= e!3171981 (or (not (= (list!19033 (right!43179 (right!43179 (left!42849 ys!41)))) Nil!58456)) (= lt!2091648 (list!19033 (left!42849 (right!43179 (left!42849 ys!41)))))))))

(declare-fun b!5085817 () Bool)

(declare-fun res!2165102 () Bool)

(assert (=> b!5085817 (=> (not res!2165102) (not e!3171981))))

(assert (=> b!5085817 (= res!2165102 (= (size!39119 lt!2091648) (+ (size!39119 (list!19033 (left!42849 (right!43179 (left!42849 ys!41))))) (size!39119 (list!19033 (right!43179 (right!43179 (left!42849 ys!41))))))))))

(assert (= (and d!1646032 c!873868) b!5085815))

(assert (= (and d!1646032 (not c!873868)) b!5085816))

(assert (= (and d!1646032 res!2165103) b!5085817))

(assert (= (and b!5085817 res!2165102) b!5085818))

(assert (=> b!5085816 m!6140504))

(declare-fun m!6142768 () Bool)

(assert (=> b!5085816 m!6142768))

(declare-fun m!6142770 () Bool)

(assert (=> d!1646032 m!6142770))

(assert (=> d!1646032 m!6140502))

(declare-fun m!6142772 () Bool)

(assert (=> d!1646032 m!6142772))

(assert (=> d!1646032 m!6140504))

(declare-fun m!6142774 () Bool)

(assert (=> d!1646032 m!6142774))

(declare-fun m!6142776 () Bool)

(assert (=> b!5085817 m!6142776))

(assert (=> b!5085817 m!6140502))

(declare-fun m!6142778 () Bool)

(assert (=> b!5085817 m!6142778))

(assert (=> b!5085817 m!6140504))

(declare-fun m!6142780 () Bool)

(assert (=> b!5085817 m!6142780))

(assert (=> b!5084709 d!1646032))

(declare-fun b!5085820 () Bool)

(declare-fun e!3171982 () List!58580)

(declare-fun e!3171983 () List!58580)

(assert (=> b!5085820 (= e!3171982 e!3171983)))

(declare-fun c!873870 () Bool)

(assert (=> b!5085820 (= c!873870 ((_ is Leaf!25884) (left!42849 (right!43179 (left!42849 ys!41)))))))

(declare-fun b!5085819 () Bool)

(assert (=> b!5085819 (= e!3171982 Nil!58456)))

(declare-fun b!5085822 () Bool)

(assert (=> b!5085822 (= e!3171983 (++!12815 (list!19033 (left!42849 (left!42849 (right!43179 (left!42849 ys!41))))) (list!19033 (right!43179 (left!42849 (right!43179 (left!42849 ys!41)))))))))

(declare-fun d!1646034 () Bool)

(declare-fun c!873869 () Bool)

(assert (=> d!1646034 (= c!873869 ((_ is Empty!15586) (left!42849 (right!43179 (left!42849 ys!41)))))))

(assert (=> d!1646034 (= (list!19033 (left!42849 (right!43179 (left!42849 ys!41)))) e!3171982)))

(declare-fun b!5085821 () Bool)

(assert (=> b!5085821 (= e!3171983 (list!19035 (xs!18964 (left!42849 (right!43179 (left!42849 ys!41))))))))

(assert (= (and d!1646034 c!873869) b!5085819))

(assert (= (and d!1646034 (not c!873869)) b!5085820))

(assert (= (and b!5085820 c!873870) b!5085821))

(assert (= (and b!5085820 (not c!873870)) b!5085822))

(declare-fun m!6142782 () Bool)

(assert (=> b!5085822 m!6142782))

(declare-fun m!6142784 () Bool)

(assert (=> b!5085822 m!6142784))

(assert (=> b!5085822 m!6142782))

(assert (=> b!5085822 m!6142784))

(declare-fun m!6142786 () Bool)

(assert (=> b!5085822 m!6142786))

(declare-fun m!6142788 () Bool)

(assert (=> b!5085821 m!6142788))

(assert (=> b!5084709 d!1646034))

(declare-fun b!5085824 () Bool)

(declare-fun e!3171984 () List!58580)

(declare-fun e!3171985 () List!58580)

(assert (=> b!5085824 (= e!3171984 e!3171985)))

(declare-fun c!873872 () Bool)

(assert (=> b!5085824 (= c!873872 ((_ is Leaf!25884) (right!43179 (right!43179 (left!42849 ys!41)))))))

(declare-fun b!5085823 () Bool)

(assert (=> b!5085823 (= e!3171984 Nil!58456)))

(declare-fun b!5085826 () Bool)

(assert (=> b!5085826 (= e!3171985 (++!12815 (list!19033 (left!42849 (right!43179 (right!43179 (left!42849 ys!41))))) (list!19033 (right!43179 (right!43179 (right!43179 (left!42849 ys!41)))))))))

(declare-fun d!1646036 () Bool)

(declare-fun c!873871 () Bool)

(assert (=> d!1646036 (= c!873871 ((_ is Empty!15586) (right!43179 (right!43179 (left!42849 ys!41)))))))

(assert (=> d!1646036 (= (list!19033 (right!43179 (right!43179 (left!42849 ys!41)))) e!3171984)))

(declare-fun b!5085825 () Bool)

(assert (=> b!5085825 (= e!3171985 (list!19035 (xs!18964 (right!43179 (right!43179 (left!42849 ys!41))))))))

(assert (= (and d!1646036 c!873871) b!5085823))

(assert (= (and d!1646036 (not c!873871)) b!5085824))

(assert (= (and b!5085824 c!873872) b!5085825))

(assert (= (and b!5085824 (not c!873872)) b!5085826))

(declare-fun m!6142790 () Bool)

(assert (=> b!5085826 m!6142790))

(declare-fun m!6142792 () Bool)

(assert (=> b!5085826 m!6142792))

(assert (=> b!5085826 m!6142790))

(assert (=> b!5085826 m!6142792))

(declare-fun m!6142794 () Bool)

(assert (=> b!5085826 m!6142794))

(declare-fun m!6142796 () Bool)

(assert (=> b!5085825 m!6142796))

(assert (=> b!5084709 d!1646036))

(declare-fun d!1646038 () Bool)

(declare-fun lt!2091649 () Int)

(assert (=> d!1646038 (>= lt!2091649 0)))

(declare-fun e!3171986 () Int)

(assert (=> d!1646038 (= lt!2091649 e!3171986)))

(declare-fun c!873873 () Bool)

(assert (=> d!1646038 (= c!873873 ((_ is Nil!58456) lt!2091455))))

(assert (=> d!1646038 (= (size!39119 lt!2091455) lt!2091649)))

(declare-fun b!5085827 () Bool)

(assert (=> b!5085827 (= e!3171986 0)))

(declare-fun b!5085828 () Bool)

(assert (=> b!5085828 (= e!3171986 (+ 1 (size!39119 (t!371417 lt!2091455))))))

(assert (= (and d!1646038 c!873873) b!5085827))

(assert (= (and d!1646038 (not c!873873)) b!5085828))

(declare-fun m!6142798 () Bool)

(assert (=> b!5085828 m!6142798))

(assert (=> b!5084752 d!1646038))

(declare-fun d!1646040 () Bool)

(declare-fun lt!2091650 () Int)

(assert (=> d!1646040 (>= lt!2091650 0)))

(declare-fun e!3171987 () Int)

(assert (=> d!1646040 (= lt!2091650 e!3171987)))

(declare-fun c!873874 () Bool)

(assert (=> d!1646040 (= c!873874 ((_ is Nil!58456) (list!19033 (right!43179 (right!43179 xs!286)))))))

(assert (=> d!1646040 (= (size!39119 (list!19033 (right!43179 (right!43179 xs!286)))) lt!2091650)))

(declare-fun b!5085829 () Bool)

(assert (=> b!5085829 (= e!3171987 0)))

(declare-fun b!5085830 () Bool)

(assert (=> b!5085830 (= e!3171987 (+ 1 (size!39119 (t!371417 (list!19033 (right!43179 (right!43179 xs!286)))))))))

(assert (= (and d!1646040 c!873874) b!5085829))

(assert (= (and d!1646040 (not c!873874)) b!5085830))

(assert (=> b!5085830 m!6142360))

(assert (=> b!5084752 d!1646040))

(assert (=> b!5084752 d!1644992))

(declare-fun b!5085831 () Bool)

(declare-fun res!2165109 () Bool)

(declare-fun e!3171988 () Bool)

(assert (=> b!5085831 (=> (not res!2165109) (not e!3171988))))

(assert (=> b!5085831 (= res!2165109 (isBalanced!4448 (right!43179 (left!42849 (left!42849 lt!2091392)))))))

(declare-fun b!5085832 () Bool)

(declare-fun res!2165107 () Bool)

(assert (=> b!5085832 (=> (not res!2165107) (not e!3171988))))

(assert (=> b!5085832 (= res!2165107 (<= (- (height!2163 (left!42849 (left!42849 (left!42849 lt!2091392)))) (height!2163 (right!43179 (left!42849 (left!42849 lt!2091392))))) 1))))

(declare-fun b!5085833 () Bool)

(declare-fun e!3171989 () Bool)

(assert (=> b!5085833 (= e!3171989 e!3171988)))

(declare-fun res!2165105 () Bool)

(assert (=> b!5085833 (=> (not res!2165105) (not e!3171988))))

(assert (=> b!5085833 (= res!2165105 (<= (- 1) (- (height!2163 (left!42849 (left!42849 (left!42849 lt!2091392)))) (height!2163 (right!43179 (left!42849 (left!42849 lt!2091392)))))))))

(declare-fun b!5085834 () Bool)

(declare-fun res!2165108 () Bool)

(assert (=> b!5085834 (=> (not res!2165108) (not e!3171988))))

(assert (=> b!5085834 (= res!2165108 (not (isEmpty!31675 (left!42849 (left!42849 (left!42849 lt!2091392))))))))

(declare-fun b!5085835 () Bool)

(declare-fun res!2165104 () Bool)

(assert (=> b!5085835 (=> (not res!2165104) (not e!3171988))))

(assert (=> b!5085835 (= res!2165104 (isBalanced!4448 (left!42849 (left!42849 (left!42849 lt!2091392)))))))

(declare-fun b!5085836 () Bool)

(assert (=> b!5085836 (= e!3171988 (not (isEmpty!31675 (right!43179 (left!42849 (left!42849 lt!2091392))))))))

(declare-fun d!1646042 () Bool)

(declare-fun res!2165106 () Bool)

(assert (=> d!1646042 (=> res!2165106 e!3171989)))

(assert (=> d!1646042 (= res!2165106 (not ((_ is Node!15586) (left!42849 (left!42849 lt!2091392)))))))

(assert (=> d!1646042 (= (isBalanced!4448 (left!42849 (left!42849 lt!2091392))) e!3171989)))

(assert (= (and d!1646042 (not res!2165106)) b!5085833))

(assert (= (and b!5085833 res!2165105) b!5085832))

(assert (= (and b!5085832 res!2165107) b!5085835))

(assert (= (and b!5085835 res!2165104) b!5085831))

(assert (= (and b!5085831 res!2165109) b!5085834))

(assert (= (and b!5085834 res!2165108) b!5085836))

(declare-fun m!6142800 () Bool)

(assert (=> b!5085835 m!6142800))

(declare-fun m!6142802 () Bool)

(assert (=> b!5085836 m!6142802))

(declare-fun m!6142804 () Bool)

(assert (=> b!5085834 m!6142804))

(declare-fun m!6142806 () Bool)

(assert (=> b!5085833 m!6142806))

(declare-fun m!6142808 () Bool)

(assert (=> b!5085833 m!6142808))

(assert (=> b!5085832 m!6142806))

(assert (=> b!5085832 m!6142808))

(declare-fun m!6142810 () Bool)

(assert (=> b!5085831 m!6142810))

(assert (=> b!5084760 d!1646042))

(declare-fun d!1646044 () Bool)

(declare-fun lt!2091651 () Bool)

(assert (=> d!1646044 (= lt!2091651 (isEmpty!31677 (list!19033 (left!42849 (right!43179 lt!2091392)))))))

(assert (=> d!1646044 (= lt!2091651 (= (size!39121 (left!42849 (right!43179 lt!2091392))) 0))))

(assert (=> d!1646044 (= (isEmpty!31675 (left!42849 (right!43179 lt!2091392))) lt!2091651)))

(declare-fun bs!1190928 () Bool)

(assert (= bs!1190928 d!1646044))

(assert (=> bs!1190928 m!6140474))

(assert (=> bs!1190928 m!6140474))

(declare-fun m!6142812 () Bool)

(assert (=> bs!1190928 m!6142812))

(declare-fun m!6142814 () Bool)

(assert (=> bs!1190928 m!6142814))

(assert (=> b!5084635 d!1646044))

(declare-fun d!1646046 () Bool)

(declare-fun c!873875 () Bool)

(assert (=> d!1646046 (= c!873875 ((_ is Nil!58456) lt!2091430))))

(declare-fun e!3171990 () (InoxSet T!105272))

(assert (=> d!1646046 (= (content!10430 lt!2091430) e!3171990)))

(declare-fun b!5085837 () Bool)

(assert (=> b!5085837 (= e!3171990 ((as const (Array T!105272 Bool)) false))))

(declare-fun b!5085838 () Bool)

(assert (=> b!5085838 (= e!3171990 ((_ map or) (store ((as const (Array T!105272 Bool)) false) (h!64904 lt!2091430) true) (content!10430 (t!371417 lt!2091430))))))

(assert (= (and d!1646046 c!873875) b!5085837))

(assert (= (and d!1646046 (not c!873875)) b!5085838))

(declare-fun m!6142816 () Bool)

(assert (=> b!5085838 m!6142816))

(declare-fun m!6142818 () Bool)

(assert (=> b!5085838 m!6142818))

(assert (=> d!1644978 d!1646046))

(declare-fun d!1646048 () Bool)

(declare-fun c!873876 () Bool)

(assert (=> d!1646048 (= c!873876 ((_ is Nil!58456) (list!19033 (left!42849 xs!286))))))

(declare-fun e!3171991 () (InoxSet T!105272))

(assert (=> d!1646048 (= (content!10430 (list!19033 (left!42849 xs!286))) e!3171991)))

(declare-fun b!5085839 () Bool)

(assert (=> b!5085839 (= e!3171991 ((as const (Array T!105272 Bool)) false))))

(declare-fun b!5085840 () Bool)

(assert (=> b!5085840 (= e!3171991 ((_ map or) (store ((as const (Array T!105272 Bool)) false) (h!64904 (list!19033 (left!42849 xs!286))) true) (content!10430 (t!371417 (list!19033 (left!42849 xs!286))))))))

(assert (= (and d!1646048 c!873876) b!5085839))

(assert (= (and d!1646048 (not c!873876)) b!5085840))

(declare-fun m!6142820 () Bool)

(assert (=> b!5085840 m!6142820))

(assert (=> b!5085840 m!6142720))

(assert (=> d!1644978 d!1646048))

(declare-fun d!1646050 () Bool)

(declare-fun c!873877 () Bool)

(assert (=> d!1646050 (= c!873877 ((_ is Nil!58456) (list!19033 (right!43179 xs!286))))))

(declare-fun e!3171992 () (InoxSet T!105272))

(assert (=> d!1646050 (= (content!10430 (list!19033 (right!43179 xs!286))) e!3171992)))

(declare-fun b!5085841 () Bool)

(assert (=> b!5085841 (= e!3171992 ((as const (Array T!105272 Bool)) false))))

(declare-fun b!5085842 () Bool)

(assert (=> b!5085842 (= e!3171992 ((_ map or) (store ((as const (Array T!105272 Bool)) false) (h!64904 (list!19033 (right!43179 xs!286))) true) (content!10430 (t!371417 (list!19033 (right!43179 xs!286))))))))

(assert (= (and d!1646050 c!873877) b!5085841))

(assert (= (and d!1646050 (not c!873877)) b!5085842))

(declare-fun m!6142822 () Bool)

(assert (=> b!5085842 m!6142822))

(declare-fun m!6142824 () Bool)

(assert (=> b!5085842 m!6142824))

(assert (=> d!1644978 d!1646050))

(declare-fun d!1646052 () Bool)

(declare-fun res!2165110 () Bool)

(declare-fun e!3171993 () Bool)

(assert (=> d!1646052 (=> (not res!2165110) (not e!3171993))))

(assert (=> d!1646052 (= res!2165110 (= (csize!31402 (right!43179 (left!42849 err!4617))) (+ (size!39121 (left!42849 (right!43179 (left!42849 err!4617)))) (size!39121 (right!43179 (right!43179 (left!42849 err!4617)))))))))

(assert (=> d!1646052 (= (inv!77680 (right!43179 (left!42849 err!4617))) e!3171993)))

(declare-fun b!5085843 () Bool)

(declare-fun res!2165111 () Bool)

(assert (=> b!5085843 (=> (not res!2165111) (not e!3171993))))

(assert (=> b!5085843 (= res!2165111 (and (not (= (left!42849 (right!43179 (left!42849 err!4617))) Empty!15586)) (not (= (right!43179 (right!43179 (left!42849 err!4617))) Empty!15586))))))

(declare-fun b!5085844 () Bool)

(declare-fun res!2165112 () Bool)

(assert (=> b!5085844 (=> (not res!2165112) (not e!3171993))))

(assert (=> b!5085844 (= res!2165112 (= (cheight!15797 (right!43179 (left!42849 err!4617))) (+ (max!0 (height!2163 (left!42849 (right!43179 (left!42849 err!4617)))) (height!2163 (right!43179 (right!43179 (left!42849 err!4617))))) 1)))))

(declare-fun b!5085845 () Bool)

(assert (=> b!5085845 (= e!3171993 (<= 0 (cheight!15797 (right!43179 (left!42849 err!4617)))))))

(assert (= (and d!1646052 res!2165110) b!5085843))

(assert (= (and b!5085843 res!2165111) b!5085844))

(assert (= (and b!5085844 res!2165112) b!5085845))

(declare-fun m!6142826 () Bool)

(assert (=> d!1646052 m!6142826))

(declare-fun m!6142828 () Bool)

(assert (=> d!1646052 m!6142828))

(declare-fun m!6142830 () Bool)

(assert (=> b!5085844 m!6142830))

(declare-fun m!6142832 () Bool)

(assert (=> b!5085844 m!6142832))

(assert (=> b!5085844 m!6142830))

(assert (=> b!5085844 m!6142832))

(declare-fun m!6142834 () Bool)

(assert (=> b!5085844 m!6142834))

(assert (=> b!5084672 d!1646052))

(declare-fun d!1646054 () Bool)

(declare-fun res!2165113 () Bool)

(declare-fun e!3171994 () Bool)

(assert (=> d!1646054 (=> (not res!2165113) (not e!3171994))))

(assert (=> d!1646054 (= res!2165113 (<= (size!39119 (list!19035 (xs!18964 (left!42849 (right!43179 ys!41))))) 512))))

(assert (=> d!1646054 (= (inv!77681 (left!42849 (right!43179 ys!41))) e!3171994)))

(declare-fun b!5085846 () Bool)

(declare-fun res!2165114 () Bool)

(assert (=> b!5085846 (=> (not res!2165114) (not e!3171994))))

(assert (=> b!5085846 (= res!2165114 (= (csize!31403 (left!42849 (right!43179 ys!41))) (size!39119 (list!19035 (xs!18964 (left!42849 (right!43179 ys!41)))))))))

(declare-fun b!5085847 () Bool)

(assert (=> b!5085847 (= e!3171994 (and (> (csize!31403 (left!42849 (right!43179 ys!41))) 0) (<= (csize!31403 (left!42849 (right!43179 ys!41))) 512)))))

(assert (= (and d!1646054 res!2165113) b!5085846))

(assert (= (and b!5085846 res!2165114) b!5085847))

(assert (=> d!1646054 m!6142706))

(assert (=> d!1646054 m!6142706))

(declare-fun m!6142836 () Bool)

(assert (=> d!1646054 m!6142836))

(assert (=> b!5085846 m!6142706))

(assert (=> b!5085846 m!6142706))

(assert (=> b!5085846 m!6142836))

(assert (=> b!5084649 d!1646054))

(assert (=> b!5084600 d!1645970))

(declare-fun d!1646056 () Bool)

(assert (=> d!1646056 (= (isEmpty!31677 (list!19033 (left!42849 lt!2091392))) ((_ is Nil!58456) (list!19033 (left!42849 lt!2091392))))))

(assert (=> d!1645102 d!1646056))

(assert (=> d!1645102 d!1645056))

(declare-fun d!1646058 () Bool)

(declare-fun lt!2091652 () Int)

(assert (=> d!1646058 (= lt!2091652 (size!39119 (list!19033 (left!42849 lt!2091392))))))

(assert (=> d!1646058 (= lt!2091652 (ite ((_ is Empty!15586) (left!42849 lt!2091392)) 0 (ite ((_ is Leaf!25884) (left!42849 lt!2091392)) (csize!31403 (left!42849 lt!2091392)) (csize!31402 (left!42849 lt!2091392)))))))

(assert (=> d!1646058 (= (size!39121 (left!42849 lt!2091392)) lt!2091652)))

(declare-fun bs!1190929 () Bool)

(assert (= bs!1190929 d!1646058))

(assert (=> bs!1190929 m!6139688))

(assert (=> bs!1190929 m!6139688))

(assert (=> bs!1190929 m!6140462))

(assert (=> d!1645102 d!1646058))

(declare-fun b!5085849 () Bool)

(declare-fun e!3171995 () List!58580)

(assert (=> b!5085849 (= e!3171995 (Cons!58456 (h!64904 (t!371417 (t!371417 (list!19033 xs!286)))) (++!12815 (t!371417 (t!371417 (t!371417 (list!19033 xs!286)))) (list!19033 ys!41))))))

(declare-fun d!1646060 () Bool)

(declare-fun e!3171996 () Bool)

(assert (=> d!1646060 e!3171996))

(declare-fun res!2165116 () Bool)

(assert (=> d!1646060 (=> (not res!2165116) (not e!3171996))))

(declare-fun lt!2091653 () List!58580)

(assert (=> d!1646060 (= res!2165116 (= (content!10430 lt!2091653) ((_ map or) (content!10430 (t!371417 (t!371417 (list!19033 xs!286)))) (content!10430 (list!19033 ys!41)))))))

(assert (=> d!1646060 (= lt!2091653 e!3171995)))

(declare-fun c!873878 () Bool)

(assert (=> d!1646060 (= c!873878 ((_ is Nil!58456) (t!371417 (t!371417 (list!19033 xs!286)))))))

(assert (=> d!1646060 (= (++!12815 (t!371417 (t!371417 (list!19033 xs!286))) (list!19033 ys!41)) lt!2091653)))

(declare-fun b!5085848 () Bool)

(assert (=> b!5085848 (= e!3171995 (list!19033 ys!41))))

(declare-fun b!5085851 () Bool)

(assert (=> b!5085851 (= e!3171996 (or (not (= (list!19033 ys!41) Nil!58456)) (= lt!2091653 (t!371417 (t!371417 (list!19033 xs!286))))))))

(declare-fun b!5085850 () Bool)

(declare-fun res!2165115 () Bool)

(assert (=> b!5085850 (=> (not res!2165115) (not e!3171996))))

(assert (=> b!5085850 (= res!2165115 (= (size!39119 lt!2091653) (+ (size!39119 (t!371417 (t!371417 (list!19033 xs!286)))) (size!39119 (list!19033 ys!41)))))))

(assert (= (and d!1646060 c!873878) b!5085848))

(assert (= (and d!1646060 (not c!873878)) b!5085849))

(assert (= (and d!1646060 res!2165116) b!5085850))

(assert (= (and b!5085850 res!2165115) b!5085851))

(assert (=> b!5085849 m!6139376))

(declare-fun m!6142838 () Bool)

(assert (=> b!5085849 m!6142838))

(declare-fun m!6142840 () Bool)

(assert (=> d!1646060 m!6142840))

(assert (=> d!1646060 m!6142530))

(assert (=> d!1646060 m!6139376))

(assert (=> d!1646060 m!6139702))

(declare-fun m!6142842 () Bool)

(assert (=> b!5085850 m!6142842))

(assert (=> b!5085850 m!6142664))

(assert (=> b!5085850 m!6139376))

(assert (=> b!5085850 m!6139708))

(assert (=> b!5084780 d!1646060))

(assert (=> b!5084693 d!1645736))

(assert (=> b!5084693 d!1645738))

(assert (=> b!5084704 d!1645946))

(declare-fun d!1646062 () Bool)

(assert (=> d!1646062 (= (inv!77677 (xs!18964 (left!42849 (right!43179 err!4617)))) (<= (size!39119 (innerList!15674 (xs!18964 (left!42849 (right!43179 err!4617))))) 2147483647))))

(declare-fun bs!1190930 () Bool)

(assert (= bs!1190930 d!1646062))

(declare-fun m!6142844 () Bool)

(assert (=> bs!1190930 m!6142844))

(assert (=> b!5084838 d!1646062))

(assert (=> b!5084612 d!1645730))

(assert (=> b!5084612 d!1645732))

(declare-fun d!1646064 () Bool)

(assert (=> d!1646064 (= (inv!77677 (xs!18964 (right!43179 (left!42849 xs!286)))) (<= (size!39119 (innerList!15674 (xs!18964 (right!43179 (left!42849 xs!286))))) 2147483647))))

(declare-fun bs!1190931 () Bool)

(assert (= bs!1190931 d!1646064))

(declare-fun m!6142846 () Bool)

(assert (=> bs!1190931 m!6142846))

(assert (=> b!5084847 d!1646064))

(declare-fun d!1646066 () Bool)

(declare-fun res!2165117 () Bool)

(declare-fun e!3171997 () Bool)

(assert (=> d!1646066 (=> (not res!2165117) (not e!3171997))))

(assert (=> d!1646066 (= res!2165117 (= (csize!31402 (left!42849 (right!43179 err!4617))) (+ (size!39121 (left!42849 (left!42849 (right!43179 err!4617)))) (size!39121 (right!43179 (left!42849 (right!43179 err!4617)))))))))

(assert (=> d!1646066 (= (inv!77680 (left!42849 (right!43179 err!4617))) e!3171997)))

(declare-fun b!5085852 () Bool)

(declare-fun res!2165118 () Bool)

(assert (=> b!5085852 (=> (not res!2165118) (not e!3171997))))

(assert (=> b!5085852 (= res!2165118 (and (not (= (left!42849 (left!42849 (right!43179 err!4617))) Empty!15586)) (not (= (right!43179 (left!42849 (right!43179 err!4617))) Empty!15586))))))

(declare-fun b!5085853 () Bool)

(declare-fun res!2165119 () Bool)

(assert (=> b!5085853 (=> (not res!2165119) (not e!3171997))))

(assert (=> b!5085853 (= res!2165119 (= (cheight!15797 (left!42849 (right!43179 err!4617))) (+ (max!0 (height!2163 (left!42849 (left!42849 (right!43179 err!4617)))) (height!2163 (right!43179 (left!42849 (right!43179 err!4617))))) 1)))))

(declare-fun b!5085854 () Bool)

(assert (=> b!5085854 (= e!3171997 (<= 0 (cheight!15797 (left!42849 (right!43179 err!4617)))))))

(assert (= (and d!1646066 res!2165117) b!5085852))

(assert (= (and b!5085852 res!2165118) b!5085853))

(assert (= (and b!5085853 res!2165119) b!5085854))

(declare-fun m!6142848 () Bool)

(assert (=> d!1646066 m!6142848))

(declare-fun m!6142850 () Bool)

(assert (=> d!1646066 m!6142850))

(declare-fun m!6142852 () Bool)

(assert (=> b!5085853 m!6142852))

(declare-fun m!6142854 () Bool)

(assert (=> b!5085853 m!6142854))

(assert (=> b!5085853 m!6142852))

(assert (=> b!5085853 m!6142854))

(declare-fun m!6142856 () Bool)

(assert (=> b!5085853 m!6142856))

(assert (=> b!5084620 d!1646066))

(declare-fun d!1646068 () Bool)

(declare-fun lt!2091654 () Bool)

(assert (=> d!1646068 (= lt!2091654 (isEmpty!31677 (list!19033 (right!43179 (right!43179 ys!41)))))))

(assert (=> d!1646068 (= lt!2091654 (= (size!39121 (right!43179 (right!43179 ys!41))) 0))))

(assert (=> d!1646068 (= (isEmpty!31675 (right!43179 (right!43179 ys!41))) lt!2091654)))

(declare-fun bs!1190932 () Bool)

(assert (= bs!1190932 d!1646068))

(assert (=> bs!1190932 m!6140498))

(assert (=> bs!1190932 m!6140498))

(declare-fun m!6142858 () Bool)

(assert (=> bs!1190932 m!6142858))

(assert (=> bs!1190932 m!6140308))

(assert (=> b!5084696 d!1646068))

(declare-fun d!1646070 () Bool)

(declare-fun res!2165120 () Bool)

(declare-fun e!3171998 () Bool)

(assert (=> d!1646070 (=> (not res!2165120) (not e!3171998))))

(assert (=> d!1646070 (= res!2165120 (<= (size!39119 (list!19035 (xs!18964 (right!43179 (right!43179 xs!286))))) 512))))

(assert (=> d!1646070 (= (inv!77681 (right!43179 (right!43179 xs!286))) e!3171998)))

(declare-fun b!5085855 () Bool)

(declare-fun res!2165121 () Bool)

(assert (=> b!5085855 (=> (not res!2165121) (not e!3171998))))

(assert (=> b!5085855 (= res!2165121 (= (csize!31403 (right!43179 (right!43179 xs!286))) (size!39119 (list!19035 (xs!18964 (right!43179 (right!43179 xs!286)))))))))

(declare-fun b!5085856 () Bool)

(assert (=> b!5085856 (= e!3171998 (and (> (csize!31403 (right!43179 (right!43179 xs!286))) 0) (<= (csize!31403 (right!43179 (right!43179 xs!286))) 512)))))

(assert (= (and d!1646070 res!2165120) b!5085855))

(assert (= (and b!5085855 res!2165121) b!5085856))

(assert (=> d!1646070 m!6140426))

(assert (=> d!1646070 m!6140426))

(declare-fun m!6142860 () Bool)

(assert (=> d!1646070 m!6142860))

(assert (=> b!5085855 m!6140426))

(assert (=> b!5085855 m!6140426))

(assert (=> b!5085855 m!6142860))

(assert (=> b!5084778 d!1646070))

(declare-fun d!1646072 () Bool)

(declare-fun res!2165122 () Bool)

(declare-fun e!3171999 () Bool)

(assert (=> d!1646072 (=> (not res!2165122) (not e!3171999))))

(assert (=> d!1646072 (= res!2165122 (= (csize!31402 (right!43179 (left!42849 ys!41))) (+ (size!39121 (left!42849 (right!43179 (left!42849 ys!41)))) (size!39121 (right!43179 (right!43179 (left!42849 ys!41)))))))))

(assert (=> d!1646072 (= (inv!77680 (right!43179 (left!42849 ys!41))) e!3171999)))

(declare-fun b!5085857 () Bool)

(declare-fun res!2165123 () Bool)

(assert (=> b!5085857 (=> (not res!2165123) (not e!3171999))))

(assert (=> b!5085857 (= res!2165123 (and (not (= (left!42849 (right!43179 (left!42849 ys!41))) Empty!15586)) (not (= (right!43179 (right!43179 (left!42849 ys!41))) Empty!15586))))))

(declare-fun b!5085858 () Bool)

(declare-fun res!2165124 () Bool)

(assert (=> b!5085858 (=> (not res!2165124) (not e!3171999))))

(assert (=> b!5085858 (= res!2165124 (= (cheight!15797 (right!43179 (left!42849 ys!41))) (+ (max!0 (height!2163 (left!42849 (right!43179 (left!42849 ys!41)))) (height!2163 (right!43179 (right!43179 (left!42849 ys!41))))) 1)))))

(declare-fun b!5085859 () Bool)

(assert (=> b!5085859 (= e!3171999 (<= 0 (cheight!15797 (right!43179 (left!42849 ys!41)))))))

(assert (= (and d!1646072 res!2165122) b!5085857))

(assert (= (and b!5085857 res!2165123) b!5085858))

(assert (= (and b!5085858 res!2165124) b!5085859))

(declare-fun m!6142862 () Bool)

(assert (=> d!1646072 m!6142862))

(declare-fun m!6142864 () Bool)

(assert (=> d!1646072 m!6142864))

(assert (=> b!5085858 m!6142368))

(assert (=> b!5085858 m!6142370))

(assert (=> b!5085858 m!6142368))

(assert (=> b!5085858 m!6142370))

(declare-fun m!6142866 () Bool)

(assert (=> b!5085858 m!6142866))

(assert (=> b!5084786 d!1646072))

(declare-fun b!5085860 () Bool)

(declare-fun res!2165130 () Bool)

(declare-fun e!3172000 () Bool)

(assert (=> b!5085860 (=> (not res!2165130) (not e!3172000))))

(assert (=> b!5085860 (= res!2165130 (isBalanced!4448 (right!43179 (left!42849 (left!42849 ys!41)))))))

(declare-fun b!5085861 () Bool)

(declare-fun res!2165128 () Bool)

(assert (=> b!5085861 (=> (not res!2165128) (not e!3172000))))

(assert (=> b!5085861 (= res!2165128 (<= (- (height!2163 (left!42849 (left!42849 (left!42849 ys!41)))) (height!2163 (right!43179 (left!42849 (left!42849 ys!41))))) 1))))

(declare-fun b!5085862 () Bool)

(declare-fun e!3172001 () Bool)

(assert (=> b!5085862 (= e!3172001 e!3172000)))

(declare-fun res!2165126 () Bool)

(assert (=> b!5085862 (=> (not res!2165126) (not e!3172000))))

(assert (=> b!5085862 (= res!2165126 (<= (- 1) (- (height!2163 (left!42849 (left!42849 (left!42849 ys!41)))) (height!2163 (right!43179 (left!42849 (left!42849 ys!41)))))))))

(declare-fun b!5085863 () Bool)

(declare-fun res!2165129 () Bool)

(assert (=> b!5085863 (=> (not res!2165129) (not e!3172000))))

(assert (=> b!5085863 (= res!2165129 (not (isEmpty!31675 (left!42849 (left!42849 (left!42849 ys!41))))))))

(declare-fun b!5085864 () Bool)

(declare-fun res!2165125 () Bool)

(assert (=> b!5085864 (=> (not res!2165125) (not e!3172000))))

(assert (=> b!5085864 (= res!2165125 (isBalanced!4448 (left!42849 (left!42849 (left!42849 ys!41)))))))

(declare-fun b!5085865 () Bool)

(assert (=> b!5085865 (= e!3172000 (not (isEmpty!31675 (right!43179 (left!42849 (left!42849 ys!41))))))))

(declare-fun d!1646074 () Bool)

(declare-fun res!2165127 () Bool)

(assert (=> d!1646074 (=> res!2165127 e!3172001)))

(assert (=> d!1646074 (= res!2165127 (not ((_ is Node!15586) (left!42849 (left!42849 ys!41)))))))

(assert (=> d!1646074 (= (isBalanced!4448 (left!42849 (left!42849 ys!41))) e!3172001)))

(assert (= (and d!1646074 (not res!2165127)) b!5085862))

(assert (= (and b!5085862 res!2165126) b!5085861))

(assert (= (and b!5085861 res!2165128) b!5085864))

(assert (= (and b!5085864 res!2165125) b!5085860))

(assert (= (and b!5085860 res!2165130) b!5085863))

(assert (= (and b!5085863 res!2165129) b!5085865))

(declare-fun m!6142868 () Bool)

(assert (=> b!5085864 m!6142868))

(declare-fun m!6142870 () Bool)

(assert (=> b!5085865 m!6142870))

(declare-fun m!6142872 () Bool)

(assert (=> b!5085863 m!6142872))

(assert (=> b!5085862 m!6142332))

(assert (=> b!5085862 m!6142334))

(assert (=> b!5085861 m!6142332))

(assert (=> b!5085861 m!6142334))

(declare-fun m!6142874 () Bool)

(assert (=> b!5085860 m!6142874))

(assert (=> b!5084615 d!1646074))

(declare-fun b!5085867 () Bool)

(declare-fun e!3172002 () List!58580)

(assert (=> b!5085867 (= e!3172002 (Cons!58456 (h!64904 call!354419) (++!12815 (t!371417 call!354419) (list!19033 (right!43179 ys!41)))))))

(declare-fun d!1646076 () Bool)

(declare-fun e!3172003 () Bool)

(assert (=> d!1646076 e!3172003))

(declare-fun res!2165132 () Bool)

(assert (=> d!1646076 (=> (not res!2165132) (not e!3172003))))

(declare-fun lt!2091655 () List!58580)

(assert (=> d!1646076 (= res!2165132 (= (content!10430 lt!2091655) ((_ map or) (content!10430 call!354419) (content!10430 (list!19033 (right!43179 ys!41))))))))

(assert (=> d!1646076 (= lt!2091655 e!3172002)))

(declare-fun c!873879 () Bool)

(assert (=> d!1646076 (= c!873879 ((_ is Nil!58456) call!354419))))

(assert (=> d!1646076 (= (++!12815 call!354419 (list!19033 (right!43179 ys!41))) lt!2091655)))

(declare-fun b!5085866 () Bool)

(assert (=> b!5085866 (= e!3172002 (list!19033 (right!43179 ys!41)))))

(declare-fun b!5085869 () Bool)

(assert (=> b!5085869 (= e!3172003 (or (not (= (list!19033 (right!43179 ys!41)) Nil!58456)) (= lt!2091655 call!354419)))))

(declare-fun b!5085868 () Bool)

(declare-fun res!2165131 () Bool)

(assert (=> b!5085868 (=> (not res!2165131) (not e!3172003))))

(assert (=> b!5085868 (= res!2165131 (= (size!39119 lt!2091655) (+ (size!39119 call!354419) (size!39119 (list!19033 (right!43179 ys!41))))))))

(assert (= (and d!1646076 c!873879) b!5085866))

(assert (= (and d!1646076 (not c!873879)) b!5085867))

(assert (= (and d!1646076 res!2165132) b!5085868))

(assert (= (and b!5085868 res!2165131) b!5085869))

(assert (=> b!5085867 m!6139658))

(declare-fun m!6142876 () Bool)

(assert (=> b!5085867 m!6142876))

(declare-fun m!6142878 () Bool)

(assert (=> d!1646076 m!6142878))

(declare-fun m!6142880 () Bool)

(assert (=> d!1646076 m!6142880))

(assert (=> d!1646076 m!6139658))

(assert (=> d!1646076 m!6140722))

(declare-fun m!6142882 () Bool)

(assert (=> b!5085868 m!6142882))

(declare-fun m!6142884 () Bool)

(assert (=> b!5085868 m!6142884))

(assert (=> b!5085868 m!6139658))

(assert (=> b!5085868 m!6140728))

(assert (=> bm!354414 d!1646076))

(declare-fun d!1646078 () Bool)

(declare-fun c!873880 () Bool)

(assert (=> d!1646078 (= c!873880 ((_ is Node!15586) (left!42849 (right!43179 (right!43179 ys!41)))))))

(declare-fun e!3172004 () Bool)

(assert (=> d!1646078 (= (inv!77676 (left!42849 (right!43179 (right!43179 ys!41)))) e!3172004)))

(declare-fun b!5085870 () Bool)

(assert (=> b!5085870 (= e!3172004 (inv!77680 (left!42849 (right!43179 (right!43179 ys!41)))))))

(declare-fun b!5085871 () Bool)

(declare-fun e!3172005 () Bool)

(assert (=> b!5085871 (= e!3172004 e!3172005)))

(declare-fun res!2165133 () Bool)

(assert (=> b!5085871 (= res!2165133 (not ((_ is Leaf!25884) (left!42849 (right!43179 (right!43179 ys!41))))))))

(assert (=> b!5085871 (=> res!2165133 e!3172005)))

(declare-fun b!5085872 () Bool)

(assert (=> b!5085872 (= e!3172005 (inv!77681 (left!42849 (right!43179 (right!43179 ys!41)))))))

(assert (= (and d!1646078 c!873880) b!5085870))

(assert (= (and d!1646078 (not c!873880)) b!5085871))

(assert (= (and b!5085871 (not res!2165133)) b!5085872))

(declare-fun m!6142886 () Bool)

(assert (=> b!5085870 m!6142886))

(declare-fun m!6142888 () Bool)

(assert (=> b!5085872 m!6142888))

(assert (=> b!5084808 d!1646078))

(declare-fun d!1646080 () Bool)

(declare-fun c!873881 () Bool)

(assert (=> d!1646080 (= c!873881 ((_ is Node!15586) (right!43179 (right!43179 (right!43179 ys!41)))))))

(declare-fun e!3172006 () Bool)

(assert (=> d!1646080 (= (inv!77676 (right!43179 (right!43179 (right!43179 ys!41)))) e!3172006)))

(declare-fun b!5085873 () Bool)

(assert (=> b!5085873 (= e!3172006 (inv!77680 (right!43179 (right!43179 (right!43179 ys!41)))))))

(declare-fun b!5085874 () Bool)

(declare-fun e!3172007 () Bool)

(assert (=> b!5085874 (= e!3172006 e!3172007)))

(declare-fun res!2165134 () Bool)

(assert (=> b!5085874 (= res!2165134 (not ((_ is Leaf!25884) (right!43179 (right!43179 (right!43179 ys!41))))))))

(assert (=> b!5085874 (=> res!2165134 e!3172007)))

(declare-fun b!5085875 () Bool)

(assert (=> b!5085875 (= e!3172007 (inv!77681 (right!43179 (right!43179 (right!43179 ys!41)))))))

(assert (= (and d!1646080 c!873881) b!5085873))

(assert (= (and d!1646080 (not c!873881)) b!5085874))

(assert (= (and b!5085874 (not res!2165134)) b!5085875))

(declare-fun m!6142890 () Bool)

(assert (=> b!5085873 m!6142890))

(declare-fun m!6142892 () Bool)

(assert (=> b!5085875 m!6142892))

(assert (=> b!5084808 d!1646080))

(declare-fun d!1646082 () Bool)

(declare-fun res!2165135 () Bool)

(declare-fun e!3172008 () Bool)

(assert (=> d!1646082 (=> (not res!2165135) (not e!3172008))))

(assert (=> d!1646082 (= res!2165135 (<= (size!39119 (list!19035 (xs!18964 (left!42849 (left!42849 xs!286))))) 512))))

(assert (=> d!1646082 (= (inv!77681 (left!42849 (left!42849 xs!286))) e!3172008)))

(declare-fun b!5085876 () Bool)

(declare-fun res!2165136 () Bool)

(assert (=> b!5085876 (=> (not res!2165136) (not e!3172008))))

(assert (=> b!5085876 (= res!2165136 (= (csize!31403 (left!42849 (left!42849 xs!286))) (size!39119 (list!19035 (xs!18964 (left!42849 (left!42849 xs!286)))))))))

(declare-fun b!5085877 () Bool)

(assert (=> b!5085877 (= e!3172008 (and (> (csize!31403 (left!42849 (left!42849 xs!286))) 0) (<= (csize!31403 (left!42849 (left!42849 xs!286))) 512)))))

(assert (= (and d!1646082 res!2165135) b!5085876))

(assert (= (and b!5085876 res!2165136) b!5085877))

(assert (=> d!1646082 m!6142588))

(assert (=> d!1646082 m!6142588))

(declare-fun m!6142894 () Bool)

(assert (=> d!1646082 m!6142894))

(assert (=> b!5085876 m!6142588))

(assert (=> b!5085876 m!6142588))

(assert (=> b!5085876 m!6142894))

(assert (=> b!5084628 d!1646082))

(declare-fun b!5085879 () Bool)

(declare-fun e!3172009 () List!58580)

(assert (=> b!5085879 (= e!3172009 (Cons!58456 (h!64904 (list!19033 (left!42849 (left!42849 lt!2091392)))) (++!12815 (t!371417 (list!19033 (left!42849 (left!42849 lt!2091392)))) (list!19033 (right!43179 (left!42849 lt!2091392))))))))

(declare-fun d!1646084 () Bool)

(declare-fun e!3172010 () Bool)

(assert (=> d!1646084 e!3172010))

(declare-fun res!2165138 () Bool)

(assert (=> d!1646084 (=> (not res!2165138) (not e!3172010))))

(declare-fun lt!2091656 () List!58580)

(assert (=> d!1646084 (= res!2165138 (= (content!10430 lt!2091656) ((_ map or) (content!10430 (list!19033 (left!42849 (left!42849 lt!2091392)))) (content!10430 (list!19033 (right!43179 (left!42849 lt!2091392)))))))))

(assert (=> d!1646084 (= lt!2091656 e!3172009)))

(declare-fun c!873882 () Bool)

(assert (=> d!1646084 (= c!873882 ((_ is Nil!58456) (list!19033 (left!42849 (left!42849 lt!2091392)))))))

(assert (=> d!1646084 (= (++!12815 (list!19033 (left!42849 (left!42849 lt!2091392))) (list!19033 (right!43179 (left!42849 lt!2091392)))) lt!2091656)))

(declare-fun b!5085878 () Bool)

(assert (=> b!5085878 (= e!3172009 (list!19033 (right!43179 (left!42849 lt!2091392))))))

(declare-fun b!5085881 () Bool)

(assert (=> b!5085881 (= e!3172010 (or (not (= (list!19033 (right!43179 (left!42849 lt!2091392))) Nil!58456)) (= lt!2091656 (list!19033 (left!42849 (left!42849 lt!2091392))))))))

(declare-fun b!5085880 () Bool)

(declare-fun res!2165137 () Bool)

(assert (=> b!5085880 (=> (not res!2165137) (not e!3172010))))

(assert (=> b!5085880 (= res!2165137 (= (size!39119 lt!2091656) (+ (size!39119 (list!19033 (left!42849 (left!42849 lt!2091392)))) (size!39119 (list!19033 (right!43179 (left!42849 lt!2091392)))))))))

(assert (= (and d!1646084 c!873882) b!5085878))

(assert (= (and d!1646084 (not c!873882)) b!5085879))

(assert (= (and d!1646084 res!2165138) b!5085880))

(assert (= (and b!5085880 res!2165137) b!5085881))

(assert (=> b!5085879 m!6140468))

(declare-fun m!6142896 () Bool)

(assert (=> b!5085879 m!6142896))

(declare-fun m!6142898 () Bool)

(assert (=> d!1646084 m!6142898))

(assert (=> d!1646084 m!6140466))

(declare-fun m!6142900 () Bool)

(assert (=> d!1646084 m!6142900))

(assert (=> d!1646084 m!6140468))

(declare-fun m!6142902 () Bool)

(assert (=> d!1646084 m!6142902))

(declare-fun m!6142904 () Bool)

(assert (=> b!5085880 m!6142904))

(assert (=> b!5085880 m!6140466))

(declare-fun m!6142906 () Bool)

(assert (=> b!5085880 m!6142906))

(assert (=> b!5085880 m!6140468))

(declare-fun m!6142908 () Bool)

(assert (=> b!5085880 m!6142908))

(assert (=> b!5084686 d!1646084))

(declare-fun b!5085883 () Bool)

(declare-fun e!3172011 () List!58580)

(declare-fun e!3172012 () List!58580)

(assert (=> b!5085883 (= e!3172011 e!3172012)))

(declare-fun c!873884 () Bool)

(assert (=> b!5085883 (= c!873884 ((_ is Leaf!25884) (left!42849 (left!42849 lt!2091392))))))

(declare-fun b!5085882 () Bool)

(assert (=> b!5085882 (= e!3172011 Nil!58456)))

(declare-fun b!5085885 () Bool)

(assert (=> b!5085885 (= e!3172012 (++!12815 (list!19033 (left!42849 (left!42849 (left!42849 lt!2091392)))) (list!19033 (right!43179 (left!42849 (left!42849 lt!2091392))))))))

(declare-fun d!1646086 () Bool)

(declare-fun c!873883 () Bool)

(assert (=> d!1646086 (= c!873883 ((_ is Empty!15586) (left!42849 (left!42849 lt!2091392))))))

(assert (=> d!1646086 (= (list!19033 (left!42849 (left!42849 lt!2091392))) e!3172011)))

(declare-fun b!5085884 () Bool)

(assert (=> b!5085884 (= e!3172012 (list!19035 (xs!18964 (left!42849 (left!42849 lt!2091392)))))))

(assert (= (and d!1646086 c!873883) b!5085882))

(assert (= (and d!1646086 (not c!873883)) b!5085883))

(assert (= (and b!5085883 c!873884) b!5085884))

(assert (= (and b!5085883 (not c!873884)) b!5085885))

(declare-fun m!6142910 () Bool)

(assert (=> b!5085885 m!6142910))

(declare-fun m!6142912 () Bool)

(assert (=> b!5085885 m!6142912))

(assert (=> b!5085885 m!6142910))

(assert (=> b!5085885 m!6142912))

(declare-fun m!6142914 () Bool)

(assert (=> b!5085885 m!6142914))

(declare-fun m!6142916 () Bool)

(assert (=> b!5085884 m!6142916))

(assert (=> b!5084686 d!1646086))

(declare-fun b!5085887 () Bool)

(declare-fun e!3172013 () List!58580)

(declare-fun e!3172014 () List!58580)

(assert (=> b!5085887 (= e!3172013 e!3172014)))

(declare-fun c!873886 () Bool)

(assert (=> b!5085887 (= c!873886 ((_ is Leaf!25884) (right!43179 (left!42849 lt!2091392))))))

(declare-fun b!5085886 () Bool)

(assert (=> b!5085886 (= e!3172013 Nil!58456)))

(declare-fun b!5085889 () Bool)

(assert (=> b!5085889 (= e!3172014 (++!12815 (list!19033 (left!42849 (right!43179 (left!42849 lt!2091392)))) (list!19033 (right!43179 (right!43179 (left!42849 lt!2091392))))))))

(declare-fun d!1646088 () Bool)

(declare-fun c!873885 () Bool)

(assert (=> d!1646088 (= c!873885 ((_ is Empty!15586) (right!43179 (left!42849 lt!2091392))))))

(assert (=> d!1646088 (= (list!19033 (right!43179 (left!42849 lt!2091392))) e!3172013)))

(declare-fun b!5085888 () Bool)

(assert (=> b!5085888 (= e!3172014 (list!19035 (xs!18964 (right!43179 (left!42849 lt!2091392)))))))

(assert (= (and d!1646088 c!873885) b!5085886))

(assert (= (and d!1646088 (not c!873885)) b!5085887))

(assert (= (and b!5085887 c!873886) b!5085888))

(assert (= (and b!5085887 (not c!873886)) b!5085889))

(declare-fun m!6142918 () Bool)

(assert (=> b!5085889 m!6142918))

(declare-fun m!6142920 () Bool)

(assert (=> b!5085889 m!6142920))

(assert (=> b!5085889 m!6142918))

(assert (=> b!5085889 m!6142920))

(declare-fun m!6142922 () Bool)

(assert (=> b!5085889 m!6142922))

(declare-fun m!6142924 () Bool)

(assert (=> b!5085888 m!6142924))

(assert (=> b!5084686 d!1646088))

(assert (=> b!5084766 d!1645766))

(assert (=> b!5084766 d!1645768))

(declare-fun d!1646090 () Bool)

(declare-fun lt!2091657 () Int)

(assert (=> d!1646090 (>= lt!2091657 0)))

(declare-fun e!3172015 () Int)

(assert (=> d!1646090 (= lt!2091657 e!3172015)))

(declare-fun c!873887 () Bool)

(assert (=> d!1646090 (= c!873887 ((_ is Nil!58456) (t!371417 (innerList!15674 (xs!18964 xs!286)))))))

(assert (=> d!1646090 (= (size!39119 (t!371417 (innerList!15674 (xs!18964 xs!286)))) lt!2091657)))

(declare-fun b!5085890 () Bool)

(assert (=> b!5085890 (= e!3172015 0)))

(declare-fun b!5085891 () Bool)

(assert (=> b!5085891 (= e!3172015 (+ 1 (size!39119 (t!371417 (t!371417 (innerList!15674 (xs!18964 xs!286)))))))))

(assert (= (and d!1646090 c!873887) b!5085890))

(assert (= (and d!1646090 (not c!873887)) b!5085891))

(declare-fun m!6142926 () Bool)

(assert (=> b!5085891 m!6142926))

(assert (=> b!5084642 d!1646090))

(declare-fun d!1646092 () Bool)

(declare-fun res!2165139 () Bool)

(declare-fun e!3172016 () Bool)

(assert (=> d!1646092 (=> (not res!2165139) (not e!3172016))))

(assert (=> d!1646092 (= res!2165139 (= (csize!31402 (right!43179 (right!43179 ys!41))) (+ (size!39121 (left!42849 (right!43179 (right!43179 ys!41)))) (size!39121 (right!43179 (right!43179 (right!43179 ys!41)))))))))

(assert (=> d!1646092 (= (inv!77680 (right!43179 (right!43179 ys!41))) e!3172016)))

(declare-fun b!5085892 () Bool)

(declare-fun res!2165140 () Bool)

(assert (=> b!5085892 (=> (not res!2165140) (not e!3172016))))

(assert (=> b!5085892 (= res!2165140 (and (not (= (left!42849 (right!43179 (right!43179 ys!41))) Empty!15586)) (not (= (right!43179 (right!43179 (right!43179 ys!41))) Empty!15586))))))

(declare-fun b!5085893 () Bool)

(declare-fun res!2165141 () Bool)

(assert (=> b!5085893 (=> (not res!2165141) (not e!3172016))))

(assert (=> b!5085893 (= res!2165141 (= (cheight!15797 (right!43179 (right!43179 ys!41))) (+ (max!0 (height!2163 (left!42849 (right!43179 (right!43179 ys!41)))) (height!2163 (right!43179 (right!43179 (right!43179 ys!41))))) 1)))))

(declare-fun b!5085894 () Bool)

(assert (=> b!5085894 (= e!3172016 (<= 0 (cheight!15797 (right!43179 (right!43179 ys!41)))))))

(assert (= (and d!1646092 res!2165139) b!5085892))

(assert (= (and b!5085892 res!2165140) b!5085893))

(assert (= (and b!5085893 res!2165141) b!5085894))

(declare-fun m!6142928 () Bool)

(assert (=> d!1646092 m!6142928))

(declare-fun m!6142930 () Bool)

(assert (=> d!1646092 m!6142930))

(assert (=> b!5085893 m!6142514))

(assert (=> b!5085893 m!6142516))

(assert (=> b!5085893 m!6142514))

(assert (=> b!5085893 m!6142516))

(declare-fun m!6142932 () Bool)

(assert (=> b!5085893 m!6142932))

(assert (=> b!5084650 d!1646092))

(declare-fun d!1646094 () Bool)

(assert (=> d!1646094 (= (max!0 (height!2163 (left!42849 xs!286)) (height!2163 (right!43179 xs!286))) (ite (< (height!2163 (left!42849 xs!286)) (height!2163 (right!43179 xs!286))) (height!2163 (right!43179 xs!286)) (height!2163 (left!42849 xs!286))))))

(assert (=> b!5084700 d!1646094))

(assert (=> b!5084700 d!1645040))

(assert (=> b!5084700 d!1645042))

(declare-fun d!1646096 () Bool)

(assert (=> d!1646096 (= (inv!77677 (xs!18964 (right!43179 (left!42849 ys!41)))) (<= (size!39119 (innerList!15674 (xs!18964 (right!43179 (left!42849 ys!41))))) 2147483647))))

(declare-fun bs!1190933 () Bool)

(assert (= bs!1190933 d!1646096))

(declare-fun m!6142934 () Bool)

(assert (=> bs!1190933 m!6142934))

(assert (=> b!5084835 d!1646096))

(declare-fun d!1646098 () Bool)

(assert (=> d!1646098 (= (inv!77677 (xs!18964 (left!42849 (left!42849 xs!286)))) (<= (size!39119 (innerList!15674 (xs!18964 (left!42849 (left!42849 xs!286))))) 2147483647))))

(declare-fun bs!1190934 () Bool)

(assert (= bs!1190934 d!1646098))

(declare-fun m!6142936 () Bool)

(assert (=> bs!1190934 m!6142936))

(assert (=> b!5084844 d!1646098))

(declare-fun d!1646100 () Bool)

(declare-fun c!873888 () Bool)

(assert (=> d!1646100 (= c!873888 ((_ is Nil!58456) (t!371417 (list!19033 ys!41))))))

(declare-fun e!3172017 () (InoxSet T!105272))

(assert (=> d!1646100 (= (content!10430 (t!371417 (list!19033 ys!41))) e!3172017)))

(declare-fun b!5085895 () Bool)

(assert (=> b!5085895 (= e!3172017 ((as const (Array T!105272 Bool)) false))))

(declare-fun b!5085896 () Bool)

(assert (=> b!5085896 (= e!3172017 ((_ map or) (store ((as const (Array T!105272 Bool)) false) (h!64904 (t!371417 (list!19033 ys!41))) true) (content!10430 (t!371417 (t!371417 (list!19033 ys!41))))))))

(assert (= (and d!1646100 c!873888) b!5085895))

(assert (= (and d!1646100 (not c!873888)) b!5085896))

(declare-fun m!6142938 () Bool)

(assert (=> b!5085896 m!6142938))

(declare-fun m!6142940 () Bool)

(assert (=> b!5085896 m!6142940))

(assert (=> b!5084744 d!1646100))

(declare-fun d!1646102 () Bool)

(assert (=> d!1646102 (= (list!19035 (xs!18964 (left!42849 (right!43179 xs!286)))) (innerList!15674 (xs!18964 (left!42849 (right!43179 xs!286)))))))

(assert (=> b!5084661 d!1646102))

(assert (=> d!1645038 d!1645880))

(assert (=> d!1645038 d!1645882))

(declare-fun b!5085898 () Bool)

(declare-fun e!3172018 () List!58580)

(assert (=> b!5085898 (= e!3172018 (Cons!58456 (h!64904 call!354415) (++!12815 (t!371417 call!354415) (list!19033 (right!43179 (left!42849 ys!41))))))))

(declare-fun d!1646104 () Bool)

(declare-fun e!3172019 () Bool)

(assert (=> d!1646104 e!3172019))

(declare-fun res!2165143 () Bool)

(assert (=> d!1646104 (=> (not res!2165143) (not e!3172019))))

(declare-fun lt!2091658 () List!58580)

(assert (=> d!1646104 (= res!2165143 (= (content!10430 lt!2091658) ((_ map or) (content!10430 call!354415) (content!10430 (list!19033 (right!43179 (left!42849 ys!41)))))))))

(assert (=> d!1646104 (= lt!2091658 e!3172018)))

(declare-fun c!873889 () Bool)

(assert (=> d!1646104 (= c!873889 ((_ is Nil!58456) call!354415))))

(assert (=> d!1646104 (= (++!12815 call!354415 (list!19033 (right!43179 (left!42849 ys!41)))) lt!2091658)))

(declare-fun b!5085897 () Bool)

(assert (=> b!5085897 (= e!3172018 (list!19033 (right!43179 (left!42849 ys!41))))))

(declare-fun b!5085900 () Bool)

(assert (=> b!5085900 (= e!3172019 (or (not (= (list!19033 (right!43179 (left!42849 ys!41))) Nil!58456)) (= lt!2091658 call!354415)))))

(declare-fun b!5085899 () Bool)

(declare-fun res!2165142 () Bool)

(assert (=> b!5085899 (=> (not res!2165142) (not e!3172019))))

(assert (=> b!5085899 (= res!2165142 (= (size!39119 lt!2091658) (+ (size!39119 call!354415) (size!39119 (list!19033 (right!43179 (left!42849 ys!41)))))))))

(assert (= (and d!1646104 c!873889) b!5085897))

(assert (= (and d!1646104 (not c!873889)) b!5085898))

(assert (= (and d!1646104 res!2165143) b!5085899))

(assert (= (and b!5085899 res!2165142) b!5085900))

(assert (=> b!5085898 m!6139652))

(declare-fun m!6142942 () Bool)

(assert (=> b!5085898 m!6142942))

(declare-fun m!6142944 () Bool)

(assert (=> d!1646104 m!6142944))

(declare-fun m!6142946 () Bool)

(assert (=> d!1646104 m!6142946))

(assert (=> d!1646104 m!6139652))

(assert (=> d!1646104 m!6142152))

(declare-fun m!6142948 () Bool)

(assert (=> b!5085899 m!6142948))

(declare-fun m!6142950 () Bool)

(assert (=> b!5085899 m!6142950))

(assert (=> b!5085899 m!6139652))

(assert (=> b!5085899 m!6142158))

(assert (=> bm!354410 d!1646104))

(declare-fun b!5085902 () Bool)

(declare-fun e!3172020 () List!58580)

(assert (=> b!5085902 (= e!3172020 (Cons!58456 (h!64904 (list!19033 (left!42849 (right!43179 xs!286)))) (++!12815 (t!371417 (list!19033 (left!42849 (right!43179 xs!286)))) (list!19033 (right!43179 (right!43179 xs!286))))))))

(declare-fun d!1646106 () Bool)

(declare-fun e!3172021 () Bool)

(assert (=> d!1646106 e!3172021))

(declare-fun res!2165145 () Bool)

(assert (=> d!1646106 (=> (not res!2165145) (not e!3172021))))

(declare-fun lt!2091659 () List!58580)

(assert (=> d!1646106 (= res!2165145 (= (content!10430 lt!2091659) ((_ map or) (content!10430 (list!19033 (left!42849 (right!43179 xs!286)))) (content!10430 (list!19033 (right!43179 (right!43179 xs!286)))))))))

(assert (=> d!1646106 (= lt!2091659 e!3172020)))

(declare-fun c!873890 () Bool)

(assert (=> d!1646106 (= c!873890 ((_ is Nil!58456) (list!19033 (left!42849 (right!43179 xs!286)))))))

(assert (=> d!1646106 (= (++!12815 (list!19033 (left!42849 (right!43179 xs!286))) (list!19033 (right!43179 (right!43179 xs!286)))) lt!2091659)))

(declare-fun b!5085901 () Bool)

(assert (=> b!5085901 (= e!3172020 (list!19033 (right!43179 (right!43179 xs!286))))))

(declare-fun b!5085904 () Bool)

(assert (=> b!5085904 (= e!3172021 (or (not (= (list!19033 (right!43179 (right!43179 xs!286))) Nil!58456)) (= lt!2091659 (list!19033 (left!42849 (right!43179 xs!286))))))))

(declare-fun b!5085903 () Bool)

(declare-fun res!2165144 () Bool)

(assert (=> b!5085903 (=> (not res!2165144) (not e!3172021))))

(assert (=> b!5085903 (= res!2165144 (= (size!39119 lt!2091659) (+ (size!39119 (list!19033 (left!42849 (right!43179 xs!286)))) (size!39119 (list!19033 (right!43179 (right!43179 xs!286)))))))))

(assert (= (and d!1646106 c!873890) b!5085901))

(assert (= (and d!1646106 (not c!873890)) b!5085902))

(assert (= (and d!1646106 res!2165145) b!5085903))

(assert (= (and b!5085903 res!2165144) b!5085904))

(assert (=> b!5085902 m!6139636))

(assert (=> b!5085902 m!6142752))

(declare-fun m!6142952 () Bool)

(assert (=> d!1646106 m!6142952))

(assert (=> d!1646106 m!6139640))

(assert (=> d!1646106 m!6142232))

(assert (=> d!1646106 m!6139636))

(assert (=> d!1646106 m!6140636))

(declare-fun m!6142954 () Bool)

(assert (=> b!5085903 m!6142954))

(assert (=> b!5085903 m!6139640))

(assert (=> b!5085903 m!6142238))

(assert (=> b!5085903 m!6139636))

(assert (=> b!5085903 m!6140640))

(assert (=> bm!354395 d!1646106))

(declare-fun b!5085906 () Bool)

(declare-fun e!3172022 () List!58580)

(assert (=> b!5085906 (= e!3172022 (Cons!58456 (h!64904 (list!19033 (left!42849 xs!286))) (++!12815 (t!371417 (list!19033 (left!42849 xs!286))) (list!19033 (left!42849 (right!43179 xs!286))))))))

(declare-fun d!1646108 () Bool)

(declare-fun e!3172023 () Bool)

(assert (=> d!1646108 e!3172023))

(declare-fun res!2165147 () Bool)

(assert (=> d!1646108 (=> (not res!2165147) (not e!3172023))))

(declare-fun lt!2091660 () List!58580)

(assert (=> d!1646108 (= res!2165147 (= (content!10430 lt!2091660) ((_ map or) (content!10430 (list!19033 (left!42849 xs!286))) (content!10430 (list!19033 (left!42849 (right!43179 xs!286)))))))))

(assert (=> d!1646108 (= lt!2091660 e!3172022)))

(declare-fun c!873891 () Bool)

(assert (=> d!1646108 (= c!873891 ((_ is Nil!58456) (list!19033 (left!42849 xs!286))))))

(assert (=> d!1646108 (= (++!12815 (list!19033 (left!42849 xs!286)) (list!19033 (left!42849 (right!43179 xs!286)))) lt!2091660)))

(declare-fun b!5085905 () Bool)

(assert (=> b!5085905 (= e!3172022 (list!19033 (left!42849 (right!43179 xs!286))))))

(declare-fun b!5085908 () Bool)

(assert (=> b!5085908 (= e!3172023 (or (not (= (list!19033 (left!42849 (right!43179 xs!286))) Nil!58456)) (= lt!2091660 (list!19033 (left!42849 xs!286)))))))

(declare-fun b!5085907 () Bool)

(declare-fun res!2165146 () Bool)

(assert (=> b!5085907 (=> (not res!2165146) (not e!3172023))))

(assert (=> b!5085907 (= res!2165146 (= (size!39119 lt!2091660) (+ (size!39119 (list!19033 (left!42849 xs!286))) (size!39119 (list!19033 (left!42849 (right!43179 xs!286)))))))))

(assert (= (and d!1646108 c!873891) b!5085905))

(assert (= (and d!1646108 (not c!873891)) b!5085906))

(assert (= (and d!1646108 res!2165147) b!5085907))

(assert (= (and b!5085907 res!2165146) b!5085908))

(assert (=> b!5085906 m!6139640))

(assert (=> b!5085906 m!6142766))

(declare-fun m!6142956 () Bool)

(assert (=> d!1646108 m!6142956))

(assert (=> d!1646108 m!6139638))

(assert (=> d!1646108 m!6140284))

(assert (=> d!1646108 m!6139640))

(assert (=> d!1646108 m!6142232))

(declare-fun m!6142958 () Bool)

(assert (=> b!5085907 m!6142958))

(assert (=> b!5085907 m!6139638))

(assert (=> b!5085907 m!6140290))

(assert (=> b!5085907 m!6139640))

(assert (=> b!5085907 m!6142238))

(assert (=> bm!354407 d!1646108))

(declare-fun b!5085910 () Bool)

(declare-fun e!3172024 () List!58580)

(assert (=> b!5085910 (= e!3172024 (Cons!58456 (h!64904 call!354403) (++!12815 (t!371417 call!354403) (list!19033 (right!43179 ys!41)))))))

(declare-fun d!1646110 () Bool)

(declare-fun e!3172025 () Bool)

(assert (=> d!1646110 e!3172025))

(declare-fun res!2165149 () Bool)

(assert (=> d!1646110 (=> (not res!2165149) (not e!3172025))))

(declare-fun lt!2091661 () List!58580)

(assert (=> d!1646110 (= res!2165149 (= (content!10430 lt!2091661) ((_ map or) (content!10430 call!354403) (content!10430 (list!19033 (right!43179 ys!41))))))))

(assert (=> d!1646110 (= lt!2091661 e!3172024)))

(declare-fun c!873892 () Bool)

(assert (=> d!1646110 (= c!873892 ((_ is Nil!58456) call!354403))))

(assert (=> d!1646110 (= (++!12815 call!354403 (list!19033 (right!43179 ys!41))) lt!2091661)))

(declare-fun b!5085909 () Bool)

(assert (=> b!5085909 (= e!3172024 (list!19033 (right!43179 ys!41)))))

(declare-fun b!5085912 () Bool)

(assert (=> b!5085912 (= e!3172025 (or (not (= (list!19033 (right!43179 ys!41)) Nil!58456)) (= lt!2091661 call!354403)))))

(declare-fun b!5085911 () Bool)

(declare-fun res!2165148 () Bool)

(assert (=> b!5085911 (=> (not res!2165148) (not e!3172025))))

(assert (=> b!5085911 (= res!2165148 (= (size!39119 lt!2091661) (+ (size!39119 call!354403) (size!39119 (list!19033 (right!43179 ys!41))))))))

(assert (= (and d!1646110 c!873892) b!5085909))

(assert (= (and d!1646110 (not c!873892)) b!5085910))

(assert (= (and d!1646110 res!2165149) b!5085911))

(assert (= (and b!5085911 res!2165148) b!5085912))

(assert (=> b!5085910 m!6139658))

(declare-fun m!6142960 () Bool)

(assert (=> b!5085910 m!6142960))

(declare-fun m!6142962 () Bool)

(assert (=> d!1646110 m!6142962))

(declare-fun m!6142964 () Bool)

(assert (=> d!1646110 m!6142964))

(assert (=> d!1646110 m!6139658))

(assert (=> d!1646110 m!6140722))

(declare-fun m!6142966 () Bool)

(assert (=> b!5085911 m!6142966))

(declare-fun m!6142968 () Bool)

(assert (=> b!5085911 m!6142968))

(assert (=> b!5085911 m!6139658))

(assert (=> b!5085911 m!6140728))

(assert (=> bm!354398 d!1646110))

(declare-fun d!1646112 () Bool)

(declare-fun lt!2091662 () Int)

(assert (=> d!1646112 (>= lt!2091662 0)))

(declare-fun e!3172026 () Int)

(assert (=> d!1646112 (= lt!2091662 e!3172026)))

(declare-fun c!873893 () Bool)

(assert (=> d!1646112 (= c!873893 ((_ is Nil!58456) (innerList!15674 (xs!18964 (left!42849 err!4617)))))))

(assert (=> d!1646112 (= (size!39119 (innerList!15674 (xs!18964 (left!42849 err!4617)))) lt!2091662)))

(declare-fun b!5085913 () Bool)

(assert (=> b!5085913 (= e!3172026 0)))

(declare-fun b!5085914 () Bool)

(assert (=> b!5085914 (= e!3172026 (+ 1 (size!39119 (t!371417 (innerList!15674 (xs!18964 (left!42849 err!4617)))))))))

(assert (= (and d!1646112 c!873893) b!5085913))

(assert (= (and d!1646112 (not c!873893)) b!5085914))

(declare-fun m!6142970 () Bool)

(assert (=> b!5085914 m!6142970))

(assert (=> d!1645112 d!1646112))

(assert (=> b!5084675 d!1645832))

(assert (=> b!5084675 d!1645834))

(declare-fun d!1646114 () Bool)

(declare-fun lt!2091663 () Int)

(assert (=> d!1646114 (>= lt!2091663 0)))

(declare-fun e!3172027 () Int)

(assert (=> d!1646114 (= lt!2091663 e!3172027)))

(declare-fun c!873894 () Bool)

(assert (=> d!1646114 (= c!873894 ((_ is Nil!58456) (t!371417 (innerList!15674 (xs!18964 ys!41)))))))

(assert (=> d!1646114 (= (size!39119 (t!371417 (innerList!15674 (xs!18964 ys!41)))) lt!2091663)))

(declare-fun b!5085915 () Bool)

(assert (=> b!5085915 (= e!3172027 0)))

(declare-fun b!5085916 () Bool)

(assert (=> b!5085916 (= e!3172027 (+ 1 (size!39119 (t!371417 (t!371417 (innerList!15674 (xs!18964 ys!41)))))))))

(assert (= (and d!1646114 c!873894) b!5085915))

(assert (= (and d!1646114 (not c!873894)) b!5085916))

(declare-fun m!6142972 () Bool)

(assert (=> b!5085916 m!6142972))

(assert (=> b!5084731 d!1646114))

(declare-fun d!1646116 () Bool)

(declare-fun lt!2091664 () Int)

(assert (=> d!1646116 (>= lt!2091664 0)))

(declare-fun e!3172028 () Int)

(assert (=> d!1646116 (= lt!2091664 e!3172028)))

(declare-fun c!873895 () Bool)

(assert (=> d!1646116 (= c!873895 ((_ is Nil!58456) lt!2091444))))

(assert (=> d!1646116 (= (size!39119 lt!2091444) lt!2091664)))

(declare-fun b!5085917 () Bool)

(assert (=> b!5085917 (= e!3172028 0)))

(declare-fun b!5085918 () Bool)

(assert (=> b!5085918 (= e!3172028 (+ 1 (size!39119 (t!371417 lt!2091444))))))

(assert (= (and d!1646116 c!873895) b!5085917))

(assert (= (and d!1646116 (not c!873895)) b!5085918))

(declare-fun m!6142974 () Bool)

(assert (=> b!5085918 m!6142974))

(assert (=> b!5084681 d!1646116))

(declare-fun d!1646118 () Bool)

(declare-fun lt!2091665 () Int)

(assert (=> d!1646118 (>= lt!2091665 0)))

(declare-fun e!3172029 () Int)

(assert (=> d!1646118 (= lt!2091665 e!3172029)))

(declare-fun c!873896 () Bool)

(assert (=> d!1646118 (= c!873896 ((_ is Nil!58456) (list!19033 (left!42849 lt!2091392))))))

(assert (=> d!1646118 (= (size!39119 (list!19033 (left!42849 lt!2091392))) lt!2091665)))

(declare-fun b!5085919 () Bool)

(assert (=> b!5085919 (= e!3172029 0)))

(declare-fun b!5085920 () Bool)

(assert (=> b!5085920 (= e!3172029 (+ 1 (size!39119 (t!371417 (list!19033 (left!42849 lt!2091392))))))))

(assert (= (and d!1646118 c!873896) b!5085919))

(assert (= (and d!1646118 (not c!873896)) b!5085920))

(declare-fun m!6142976 () Bool)

(assert (=> b!5085920 m!6142976))

(assert (=> b!5084681 d!1646118))

(declare-fun d!1646120 () Bool)

(declare-fun lt!2091666 () Int)

(assert (=> d!1646120 (>= lt!2091666 0)))

(declare-fun e!3172030 () Int)

(assert (=> d!1646120 (= lt!2091666 e!3172030)))

(declare-fun c!873897 () Bool)

(assert (=> d!1646120 (= c!873897 ((_ is Nil!58456) (list!19033 (right!43179 lt!2091392))))))

(assert (=> d!1646120 (= (size!39119 (list!19033 (right!43179 lt!2091392))) lt!2091666)))

(declare-fun b!5085921 () Bool)

(assert (=> b!5085921 (= e!3172030 0)))

(declare-fun b!5085922 () Bool)

(assert (=> b!5085922 (= e!3172030 (+ 1 (size!39119 (t!371417 (list!19033 (right!43179 lt!2091392))))))))

(assert (= (and d!1646120 c!873897) b!5085921))

(assert (= (and d!1646120 (not c!873897)) b!5085922))

(declare-fun m!6142978 () Bool)

(assert (=> b!5085922 m!6142978))

(assert (=> b!5084681 d!1646120))

(declare-fun d!1646122 () Bool)

(assert (=> d!1646122 (= (list!19035 (xs!18964 (right!43179 lt!2091392))) (innerList!15674 (xs!18964 (right!43179 lt!2091392))))))

(assert (=> b!5084689 d!1646122))

(declare-fun b!5085923 () Bool)

(declare-fun res!2165155 () Bool)

(declare-fun e!3172031 () Bool)

(assert (=> b!5085923 (=> (not res!2165155) (not e!3172031))))

(assert (=> b!5085923 (= res!2165155 (isBalanced!4448 (right!43179 (right!43179 (left!42849 xs!286)))))))

(declare-fun b!5085924 () Bool)

(declare-fun res!2165153 () Bool)

(assert (=> b!5085924 (=> (not res!2165153) (not e!3172031))))

(assert (=> b!5085924 (= res!2165153 (<= (- (height!2163 (left!42849 (right!43179 (left!42849 xs!286)))) (height!2163 (right!43179 (right!43179 (left!42849 xs!286))))) 1))))

(declare-fun b!5085925 () Bool)

(declare-fun e!3172032 () Bool)

(assert (=> b!5085925 (= e!3172032 e!3172031)))

(declare-fun res!2165151 () Bool)

(assert (=> b!5085925 (=> (not res!2165151) (not e!3172031))))

(assert (=> b!5085925 (= res!2165151 (<= (- 1) (- (height!2163 (left!42849 (right!43179 (left!42849 xs!286)))) (height!2163 (right!43179 (right!43179 (left!42849 xs!286)))))))))

(declare-fun b!5085926 () Bool)

(declare-fun res!2165154 () Bool)

(assert (=> b!5085926 (=> (not res!2165154) (not e!3172031))))

(assert (=> b!5085926 (= res!2165154 (not (isEmpty!31675 (left!42849 (right!43179 (left!42849 xs!286))))))))

(declare-fun b!5085927 () Bool)

(declare-fun res!2165150 () Bool)

(assert (=> b!5085927 (=> (not res!2165150) (not e!3172031))))

(assert (=> b!5085927 (= res!2165150 (isBalanced!4448 (left!42849 (right!43179 (left!42849 xs!286)))))))

(declare-fun b!5085928 () Bool)

(assert (=> b!5085928 (= e!3172031 (not (isEmpty!31675 (right!43179 (right!43179 (left!42849 xs!286))))))))

(declare-fun d!1646124 () Bool)

(declare-fun res!2165152 () Bool)

(assert (=> d!1646124 (=> res!2165152 e!3172032)))

(assert (=> d!1646124 (= res!2165152 (not ((_ is Node!15586) (right!43179 (left!42849 xs!286)))))))

(assert (=> d!1646124 (= (isBalanced!4448 (right!43179 (left!42849 xs!286))) e!3172032)))

(assert (= (and d!1646124 (not res!2165152)) b!5085925))

(assert (= (and b!5085925 res!2165151) b!5085924))

(assert (= (and b!5085924 res!2165153) b!5085927))

(assert (= (and b!5085927 res!2165150) b!5085923))

(assert (= (and b!5085923 res!2165155) b!5085926))

(assert (= (and b!5085926 res!2165154) b!5085928))

(declare-fun m!6142980 () Bool)

(assert (=> b!5085927 m!6142980))

(declare-fun m!6142982 () Bool)

(assert (=> b!5085928 m!6142982))

(declare-fun m!6142984 () Bool)

(assert (=> b!5085926 m!6142984))

(assert (=> b!5085925 m!6142136))

(assert (=> b!5085925 m!6142138))

(assert (=> b!5085924 m!6142136))

(assert (=> b!5085924 m!6142138))

(declare-fun m!6142986 () Bool)

(assert (=> b!5085923 m!6142986))

(assert (=> b!5084789 d!1646124))

(declare-fun d!1646126 () Bool)

(assert (=> d!1646126 (= (list!19035 (xs!18964 (left!42849 lt!2091392))) (innerList!15674 (xs!18964 (left!42849 lt!2091392))))))

(assert (=> b!5084685 d!1646126))

(declare-fun b!5085929 () Bool)

(declare-fun res!2165161 () Bool)

(declare-fun e!3172033 () Bool)

(assert (=> b!5085929 (=> (not res!2165161) (not e!3172033))))

(assert (=> b!5085929 (= res!2165161 (isBalanced!4448 (right!43179 (left!42849 (right!43179 ys!41)))))))

(declare-fun b!5085930 () Bool)

(declare-fun res!2165159 () Bool)

(assert (=> b!5085930 (=> (not res!2165159) (not e!3172033))))

(assert (=> b!5085930 (= res!2165159 (<= (- (height!2163 (left!42849 (left!42849 (right!43179 ys!41)))) (height!2163 (right!43179 (left!42849 (right!43179 ys!41))))) 1))))

(declare-fun b!5085931 () Bool)

(declare-fun e!3172034 () Bool)

(assert (=> b!5085931 (= e!3172034 e!3172033)))

(declare-fun res!2165157 () Bool)

(assert (=> b!5085931 (=> (not res!2165157) (not e!3172033))))

(assert (=> b!5085931 (= res!2165157 (<= (- 1) (- (height!2163 (left!42849 (left!42849 (right!43179 ys!41)))) (height!2163 (right!43179 (left!42849 (right!43179 ys!41)))))))))

(declare-fun b!5085932 () Bool)

(declare-fun res!2165160 () Bool)

(assert (=> b!5085932 (=> (not res!2165160) (not e!3172033))))

(assert (=> b!5085932 (= res!2165160 (not (isEmpty!31675 (left!42849 (left!42849 (right!43179 ys!41))))))))

(declare-fun b!5085933 () Bool)

(declare-fun res!2165156 () Bool)

(assert (=> b!5085933 (=> (not res!2165156) (not e!3172033))))

(assert (=> b!5085933 (= res!2165156 (isBalanced!4448 (left!42849 (left!42849 (right!43179 ys!41)))))))

(declare-fun b!5085934 () Bool)

(assert (=> b!5085934 (= e!3172033 (not (isEmpty!31675 (right!43179 (left!42849 (right!43179 ys!41))))))))

(declare-fun d!1646128 () Bool)

(declare-fun res!2165158 () Bool)

(assert (=> d!1646128 (=> res!2165158 e!3172034)))

(assert (=> d!1646128 (= res!2165158 (not ((_ is Node!15586) (left!42849 (right!43179 ys!41)))))))

(assert (=> d!1646128 (= (isBalanced!4448 (left!42849 (right!43179 ys!41))) e!3172034)))

(assert (= (and d!1646128 (not res!2165158)) b!5085931))

(assert (= (and b!5085931 res!2165157) b!5085930))

(assert (= (and b!5085930 res!2165159) b!5085933))

(assert (= (and b!5085933 res!2165156) b!5085929))

(assert (= (and b!5085929 res!2165161) b!5085932))

(assert (= (and b!5085932 res!2165160) b!5085934))

(declare-fun m!6142988 () Bool)

(assert (=> b!5085933 m!6142988))

(declare-fun m!6142990 () Bool)

(assert (=> b!5085934 m!6142990))

(declare-fun m!6142992 () Bool)

(assert (=> b!5085932 m!6142992))

(assert (=> b!5085931 m!6142452))

(assert (=> b!5085931 m!6142454))

(assert (=> b!5085930 m!6142452))

(assert (=> b!5085930 m!6142454))

(declare-fun m!6142994 () Bool)

(assert (=> b!5085929 m!6142994))

(assert (=> b!5084695 d!1646128))

(declare-fun bm!354453 () Bool)

(declare-fun call!354461 () List!58580)

(assert (=> bm!354453 (= call!354461 (++!12815 (list!19033 (left!42849 ys!41)) (list!19033 (right!43179 ys!41))))))

(declare-fun b!5085935 () Bool)

(declare-fun e!3172035 () Bool)

(declare-fun call!354458 () List!58580)

(declare-fun call!354460 () List!58580)

(assert (=> b!5085935 (= e!3172035 (= call!354458 call!354460))))

(declare-fun lt!2091667 () Bool)

(assert (=> b!5085935 (= lt!2091667 (appendAssoc!314 (t!371417 (t!371417 (list!19033 xs!286))) (list!19033 (left!42849 ys!41)) (list!19033 (right!43179 ys!41))))))

(declare-fun bm!354454 () Bool)

(declare-fun call!354459 () List!58580)

(assert (=> bm!354454 (= call!354458 (++!12815 call!354459 (list!19033 (right!43179 ys!41))))))

(declare-fun b!5085936 () Bool)

(assert (=> b!5085936 (= e!3172035 (= call!354458 call!354460))))

(declare-fun d!1646130 () Bool)

(assert (=> d!1646130 e!3172035))

(declare-fun c!873898 () Bool)

(assert (=> d!1646130 (= c!873898 ((_ is Nil!58456) (t!371417 (list!19033 xs!286))))))

(assert (=> d!1646130 (= (appendAssoc!314 (t!371417 (list!19033 xs!286)) (list!19033 (left!42849 ys!41)) (list!19033 (right!43179 ys!41))) true)))

(declare-fun bm!354455 () Bool)

(assert (=> bm!354455 (= call!354459 (++!12815 (t!371417 (list!19033 xs!286)) (list!19033 (left!42849 ys!41))))))

(declare-fun bm!354456 () Bool)

(assert (=> bm!354456 (= call!354460 (++!12815 (t!371417 (list!19033 xs!286)) call!354461))))

(assert (= (and d!1646130 c!873898) b!5085936))

(assert (= (and d!1646130 (not c!873898)) b!5085935))

(assert (= (or b!5085936 b!5085935) bm!354455))

(assert (= (or b!5085936 b!5085935) bm!354453))

(assert (= (or b!5085936 b!5085935) bm!354456))

(assert (= (or b!5085936 b!5085935) bm!354454))

(declare-fun m!6142996 () Bool)

(assert (=> bm!354456 m!6142996))

(assert (=> b!5085935 m!6139662))

(assert (=> b!5085935 m!6139658))

(declare-fun m!6142998 () Bool)

(assert (=> b!5085935 m!6142998))

(assert (=> bm!354454 m!6139658))

(declare-fun m!6143000 () Bool)

(assert (=> bm!354454 m!6143000))

(assert (=> bm!354453 m!6139662))

(assert (=> bm!354453 m!6139658))

(assert (=> bm!354453 m!6139714))

(assert (=> bm!354455 m!6139662))

(assert (=> bm!354455 m!6142030))

(assert (=> b!5084795 d!1646130))

(declare-fun d!1646132 () Bool)

(declare-fun lt!2091668 () Bool)

(assert (=> d!1646132 (= lt!2091668 (isEmpty!31677 (list!19033 (left!42849 (left!42849 ys!41)))))))

(assert (=> d!1646132 (= lt!2091668 (= (size!39121 (left!42849 (left!42849 ys!41))) 0))))

(assert (=> d!1646132 (= (isEmpty!31675 (left!42849 (left!42849 ys!41))) lt!2091668)))

(declare-fun bs!1190935 () Bool)

(assert (= bs!1190935 d!1646132))

(assert (=> bs!1190935 m!6139654))

(assert (=> bs!1190935 m!6139654))

(declare-fun m!6143002 () Bool)

(assert (=> bs!1190935 m!6143002))

(assert (=> bs!1190935 m!6140384))

(assert (=> b!5084614 d!1646132))

(declare-fun d!1646134 () Bool)

(declare-fun c!873899 () Bool)

(assert (=> d!1646134 (= c!873899 ((_ is Node!15586) (left!42849 (left!42849 (left!42849 xs!286)))))))

(declare-fun e!3172036 () Bool)

(assert (=> d!1646134 (= (inv!77676 (left!42849 (left!42849 (left!42849 xs!286)))) e!3172036)))

(declare-fun b!5085937 () Bool)

(assert (=> b!5085937 (= e!3172036 (inv!77680 (left!42849 (left!42849 (left!42849 xs!286)))))))

(declare-fun b!5085938 () Bool)

(declare-fun e!3172037 () Bool)

(assert (=> b!5085938 (= e!3172036 e!3172037)))

(declare-fun res!2165162 () Bool)

(assert (=> b!5085938 (= res!2165162 (not ((_ is Leaf!25884) (left!42849 (left!42849 (left!42849 xs!286))))))))

(assert (=> b!5085938 (=> res!2165162 e!3172037)))

(declare-fun b!5085939 () Bool)

(assert (=> b!5085939 (= e!3172037 (inv!77681 (left!42849 (left!42849 (left!42849 xs!286)))))))

(assert (= (and d!1646134 c!873899) b!5085937))

(assert (= (and d!1646134 (not c!873899)) b!5085938))

(assert (= (and b!5085938 (not res!2165162)) b!5085939))

(declare-fun m!6143004 () Bool)

(assert (=> b!5085937 m!6143004))

(declare-fun m!6143006 () Bool)

(assert (=> b!5085939 m!6143006))

(assert (=> b!5084843 d!1646134))

(declare-fun d!1646136 () Bool)

(declare-fun c!873900 () Bool)

(assert (=> d!1646136 (= c!873900 ((_ is Node!15586) (right!43179 (left!42849 (left!42849 xs!286)))))))

(declare-fun e!3172038 () Bool)

(assert (=> d!1646136 (= (inv!77676 (right!43179 (left!42849 (left!42849 xs!286)))) e!3172038)))

(declare-fun b!5085940 () Bool)

(assert (=> b!5085940 (= e!3172038 (inv!77680 (right!43179 (left!42849 (left!42849 xs!286)))))))

(declare-fun b!5085941 () Bool)

(declare-fun e!3172039 () Bool)

(assert (=> b!5085941 (= e!3172038 e!3172039)))

(declare-fun res!2165163 () Bool)

(assert (=> b!5085941 (= res!2165163 (not ((_ is Leaf!25884) (right!43179 (left!42849 (left!42849 xs!286))))))))

(assert (=> b!5085941 (=> res!2165163 e!3172039)))

(declare-fun b!5085942 () Bool)

(assert (=> b!5085942 (= e!3172039 (inv!77681 (right!43179 (left!42849 (left!42849 xs!286)))))))

(assert (= (and d!1646136 c!873900) b!5085940))

(assert (= (and d!1646136 (not c!873900)) b!5085941))

(assert (= (and b!5085941 (not res!2165163)) b!5085942))

(declare-fun m!6143008 () Bool)

(assert (=> b!5085940 m!6143008))

(declare-fun m!6143010 () Bool)

(assert (=> b!5085942 m!6143010))

(assert (=> b!5084843 d!1646136))

(assert (=> d!1645052 d!1645876))

(assert (=> d!1645052 d!1645086))

(assert (=> b!5084583 d!1646106))

(assert (=> b!5084583 d!1645032))

(assert (=> b!5084583 d!1645034))

(declare-fun b!5085943 () Bool)

(declare-fun res!2165169 () Bool)

(declare-fun e!3172040 () Bool)

(assert (=> b!5085943 (=> (not res!2165169) (not e!3172040))))

(assert (=> b!5085943 (= res!2165169 (isBalanced!4448 (right!43179 (right!43179 (right!43179 xs!286)))))))

(declare-fun b!5085944 () Bool)

(declare-fun res!2165167 () Bool)

(assert (=> b!5085944 (=> (not res!2165167) (not e!3172040))))

(assert (=> b!5085944 (= res!2165167 (<= (- (height!2163 (left!42849 (right!43179 (right!43179 xs!286)))) (height!2163 (right!43179 (right!43179 (right!43179 xs!286))))) 1))))

(declare-fun b!5085945 () Bool)

(declare-fun e!3172041 () Bool)

(assert (=> b!5085945 (= e!3172041 e!3172040)))

(declare-fun res!2165165 () Bool)

(assert (=> b!5085945 (=> (not res!2165165) (not e!3172040))))

(assert (=> b!5085945 (= res!2165165 (<= (- 1) (- (height!2163 (left!42849 (right!43179 (right!43179 xs!286)))) (height!2163 (right!43179 (right!43179 (right!43179 xs!286)))))))))

(declare-fun b!5085946 () Bool)

(declare-fun res!2165168 () Bool)

(assert (=> b!5085946 (=> (not res!2165168) (not e!3172040))))

(assert (=> b!5085946 (= res!2165168 (not (isEmpty!31675 (left!42849 (right!43179 (right!43179 xs!286))))))))

(declare-fun b!5085947 () Bool)

(declare-fun res!2165164 () Bool)

(assert (=> b!5085947 (=> (not res!2165164) (not e!3172040))))

(assert (=> b!5085947 (= res!2165164 (isBalanced!4448 (left!42849 (right!43179 (right!43179 xs!286)))))))

(declare-fun b!5085948 () Bool)

(assert (=> b!5085948 (= e!3172040 (not (isEmpty!31675 (right!43179 (right!43179 (right!43179 xs!286))))))))

(declare-fun d!1646138 () Bool)

(declare-fun res!2165166 () Bool)

(assert (=> d!1646138 (=> res!2165166 e!3172041)))

(assert (=> d!1646138 (= res!2165166 (not ((_ is Node!15586) (right!43179 (right!43179 xs!286)))))))

(assert (=> d!1646138 (= (isBalanced!4448 (right!43179 (right!43179 xs!286))) e!3172041)))

(assert (= (and d!1646138 (not res!2165166)) b!5085945))

(assert (= (and b!5085945 res!2165165) b!5085944))

(assert (= (and b!5085944 res!2165167) b!5085947))

(assert (= (and b!5085947 res!2165164) b!5085943))

(assert (= (and b!5085943 res!2165169) b!5085946))

(assert (= (and b!5085946 res!2165168) b!5085948))

(declare-fun m!6143012 () Bool)

(assert (=> b!5085947 m!6143012))

(declare-fun m!6143014 () Bool)

(assert (=> b!5085948 m!6143014))

(declare-fun m!6143016 () Bool)

(assert (=> b!5085946 m!6143016))

(assert (=> b!5085945 m!6142536))

(assert (=> b!5085945 m!6142538))

(assert (=> b!5085944 m!6142536))

(assert (=> b!5085944 m!6142538))

(declare-fun m!6143018 () Bool)

(assert (=> b!5085943 m!6143018))

(assert (=> b!5084765 d!1646138))

(declare-fun d!1646140 () Bool)

(declare-fun lt!2091669 () Int)

(assert (=> d!1646140 (>= lt!2091669 0)))

(declare-fun e!3172042 () Int)

(assert (=> d!1646140 (= lt!2091669 e!3172042)))

(declare-fun c!873901 () Bool)

(assert (=> d!1646140 (= c!873901 ((_ is Nil!58456) (innerList!15674 (xs!18964 (right!43179 xs!286)))))))

(assert (=> d!1646140 (= (size!39119 (innerList!15674 (xs!18964 (right!43179 xs!286)))) lt!2091669)))

(declare-fun b!5085949 () Bool)

(assert (=> b!5085949 (= e!3172042 0)))

(declare-fun b!5085950 () Bool)

(assert (=> b!5085950 (= e!3172042 (+ 1 (size!39119 (t!371417 (innerList!15674 (xs!18964 (right!43179 xs!286)))))))))

(assert (= (and d!1646140 c!873901) b!5085949))

(assert (= (and d!1646140 (not c!873901)) b!5085950))

(declare-fun m!6143020 () Bool)

(assert (=> b!5085950 m!6143020))

(assert (=> d!1644986 d!1646140))

(declare-fun d!1646142 () Bool)

(declare-fun c!873902 () Bool)

(assert (=> d!1646142 (= c!873902 ((_ is Node!15586) (left!42849 (right!43179 (left!42849 ys!41)))))))

(declare-fun e!3172043 () Bool)

(assert (=> d!1646142 (= (inv!77676 (left!42849 (right!43179 (left!42849 ys!41)))) e!3172043)))

(declare-fun b!5085951 () Bool)

(assert (=> b!5085951 (= e!3172043 (inv!77680 (left!42849 (right!43179 (left!42849 ys!41)))))))

(declare-fun b!5085952 () Bool)

(declare-fun e!3172044 () Bool)

(assert (=> b!5085952 (= e!3172043 e!3172044)))

(declare-fun res!2165170 () Bool)

(assert (=> b!5085952 (= res!2165170 (not ((_ is Leaf!25884) (left!42849 (right!43179 (left!42849 ys!41))))))))

(assert (=> b!5085952 (=> res!2165170 e!3172044)))

(declare-fun b!5085953 () Bool)

(assert (=> b!5085953 (= e!3172044 (inv!77681 (left!42849 (right!43179 (left!42849 ys!41)))))))

(assert (= (and d!1646142 c!873902) b!5085951))

(assert (= (and d!1646142 (not c!873902)) b!5085952))

(assert (= (and b!5085952 (not res!2165170)) b!5085953))

(declare-fun m!6143022 () Bool)

(assert (=> b!5085951 m!6143022))

(declare-fun m!6143024 () Bool)

(assert (=> b!5085953 m!6143024))

(assert (=> b!5084834 d!1646142))

(declare-fun d!1646144 () Bool)

(declare-fun c!873903 () Bool)

(assert (=> d!1646144 (= c!873903 ((_ is Node!15586) (right!43179 (right!43179 (left!42849 ys!41)))))))

(declare-fun e!3172045 () Bool)

(assert (=> d!1646144 (= (inv!77676 (right!43179 (right!43179 (left!42849 ys!41)))) e!3172045)))

(declare-fun b!5085954 () Bool)

(assert (=> b!5085954 (= e!3172045 (inv!77680 (right!43179 (right!43179 (left!42849 ys!41)))))))

(declare-fun b!5085955 () Bool)

(declare-fun e!3172046 () Bool)

(assert (=> b!5085955 (= e!3172045 e!3172046)))

(declare-fun res!2165171 () Bool)

(assert (=> b!5085955 (= res!2165171 (not ((_ is Leaf!25884) (right!43179 (right!43179 (left!42849 ys!41))))))))

(assert (=> b!5085955 (=> res!2165171 e!3172046)))

(declare-fun b!5085956 () Bool)

(assert (=> b!5085956 (= e!3172046 (inv!77681 (right!43179 (right!43179 (left!42849 ys!41)))))))

(assert (= (and d!1646144 c!873903) b!5085954))

(assert (= (and d!1646144 (not c!873903)) b!5085955))

(assert (= (and b!5085955 (not res!2165171)) b!5085956))

(declare-fun m!6143026 () Bool)

(assert (=> b!5085954 m!6143026))

(declare-fun m!6143028 () Bool)

(assert (=> b!5085956 m!6143028))

(assert (=> b!5084834 d!1646144))

(assert (=> bm!354409 d!1645806))

(assert (=> b!5084607 d!1645944))

(assert (=> b!5084607 d!1645946))

(declare-fun d!1646146 () Bool)

(declare-fun c!873904 () Bool)

(assert (=> d!1646146 (= c!873904 ((_ is Nil!58456) lt!2091447))))

(declare-fun e!3172047 () (InoxSet T!105272))

(assert (=> d!1646146 (= (content!10430 lt!2091447) e!3172047)))

(declare-fun b!5085957 () Bool)

(assert (=> b!5085957 (= e!3172047 ((as const (Array T!105272 Bool)) false))))

(declare-fun b!5085958 () Bool)

(assert (=> b!5085958 (= e!3172047 ((_ map or) (store ((as const (Array T!105272 Bool)) false) (h!64904 lt!2091447) true) (content!10430 (t!371417 lt!2091447))))))

(assert (= (and d!1646146 c!873904) b!5085957))

(assert (= (and d!1646146 (not c!873904)) b!5085958))

(declare-fun m!6143030 () Bool)

(assert (=> b!5085958 m!6143030))

(declare-fun m!6143032 () Bool)

(assert (=> b!5085958 m!6143032))

(assert (=> d!1645072 d!1646146))

(assert (=> d!1645072 d!1645098))

(declare-fun d!1646148 () Bool)

(declare-fun c!873905 () Bool)

(assert (=> d!1646148 (= c!873905 ((_ is Nil!58456) (list!19033 (left!42849 (left!42849 ys!41)))))))

(declare-fun e!3172048 () (InoxSet T!105272))

(assert (=> d!1646148 (= (content!10430 (list!19033 (left!42849 (left!42849 ys!41)))) e!3172048)))

(declare-fun b!5085959 () Bool)

(assert (=> b!5085959 (= e!3172048 ((as const (Array T!105272 Bool)) false))))

(declare-fun b!5085960 () Bool)

(assert (=> b!5085960 (= e!3172048 ((_ map or) (store ((as const (Array T!105272 Bool)) false) (h!64904 (list!19033 (left!42849 (left!42849 ys!41)))) true) (content!10430 (t!371417 (list!19033 (left!42849 (left!42849 ys!41)))))))))

(assert (= (and d!1646148 c!873905) b!5085959))

(assert (= (and d!1646148 (not c!873905)) b!5085960))

(declare-fun m!6143034 () Bool)

(assert (=> b!5085960 m!6143034))

(declare-fun m!6143036 () Bool)

(assert (=> b!5085960 m!6143036))

(assert (=> d!1645072 d!1646148))

(declare-fun d!1646150 () Bool)

(declare-fun c!873906 () Bool)

(assert (=> d!1646150 (= c!873906 ((_ is Nil!58456) lt!2091444))))

(declare-fun e!3172049 () (InoxSet T!105272))

(assert (=> d!1646150 (= (content!10430 lt!2091444) e!3172049)))

(declare-fun b!5085961 () Bool)

(assert (=> b!5085961 (= e!3172049 ((as const (Array T!105272 Bool)) false))))

(declare-fun b!5085962 () Bool)

(assert (=> b!5085962 (= e!3172049 ((_ map or) (store ((as const (Array T!105272 Bool)) false) (h!64904 lt!2091444) true) (content!10430 (t!371417 lt!2091444))))))

(assert (= (and d!1646150 c!873906) b!5085961))

(assert (= (and d!1646150 (not c!873906)) b!5085962))

(declare-fun m!6143038 () Bool)

(assert (=> b!5085962 m!6143038))

(declare-fun m!6143040 () Bool)

(assert (=> b!5085962 m!6143040))

(assert (=> d!1645054 d!1646150))

(declare-fun d!1646152 () Bool)

(declare-fun c!873907 () Bool)

(assert (=> d!1646152 (= c!873907 ((_ is Nil!58456) (list!19033 (left!42849 lt!2091392))))))

(declare-fun e!3172050 () (InoxSet T!105272))

(assert (=> d!1646152 (= (content!10430 (list!19033 (left!42849 lt!2091392))) e!3172050)))

(declare-fun b!5085963 () Bool)

(assert (=> b!5085963 (= e!3172050 ((as const (Array T!105272 Bool)) false))))

(declare-fun b!5085964 () Bool)

(assert (=> b!5085964 (= e!3172050 ((_ map or) (store ((as const (Array T!105272 Bool)) false) (h!64904 (list!19033 (left!42849 lt!2091392))) true) (content!10430 (t!371417 (list!19033 (left!42849 lt!2091392))))))))

(assert (= (and d!1646152 c!873907) b!5085963))

(assert (= (and d!1646152 (not c!873907)) b!5085964))

(declare-fun m!6143042 () Bool)

(assert (=> b!5085964 m!6143042))

(declare-fun m!6143044 () Bool)

(assert (=> b!5085964 m!6143044))

(assert (=> d!1645054 d!1646152))

(declare-fun d!1646154 () Bool)

(declare-fun c!873908 () Bool)

(assert (=> d!1646154 (= c!873908 ((_ is Nil!58456) (list!19033 (right!43179 lt!2091392))))))

(declare-fun e!3172051 () (InoxSet T!105272))

(assert (=> d!1646154 (= (content!10430 (list!19033 (right!43179 lt!2091392))) e!3172051)))

(declare-fun b!5085965 () Bool)

(assert (=> b!5085965 (= e!3172051 ((as const (Array T!105272 Bool)) false))))

(declare-fun b!5085966 () Bool)

(assert (=> b!5085966 (= e!3172051 ((_ map or) (store ((as const (Array T!105272 Bool)) false) (h!64904 (list!19033 (right!43179 lt!2091392))) true) (content!10430 (t!371417 (list!19033 (right!43179 lt!2091392))))))))

(assert (= (and d!1646154 c!873908) b!5085965))

(assert (= (and d!1646154 (not c!873908)) b!5085966))

(declare-fun m!6143046 () Bool)

(assert (=> b!5085966 m!6143046))

(declare-fun m!6143048 () Bool)

(assert (=> b!5085966 m!6143048))

(assert (=> d!1645054 d!1646154))

(declare-fun bm!354457 () Bool)

(declare-fun call!354465 () List!58580)

(assert (=> bm!354457 (= call!354465 (++!12815 (list!19033 (left!42849 (left!42849 ys!41))) (list!19033 (right!43179 (left!42849 ys!41)))))))

(declare-fun b!5085967 () Bool)

(declare-fun e!3172052 () Bool)

(declare-fun call!354462 () List!58580)

(declare-fun call!354464 () List!58580)

(assert (=> b!5085967 (= e!3172052 (= call!354462 call!354464))))

(declare-fun lt!2091670 () Bool)

(assert (=> b!5085967 (= lt!2091670 (appendAssoc!314 (t!371417 (t!371417 (list!19033 xs!286))) (list!19033 (left!42849 (left!42849 ys!41))) (list!19033 (right!43179 (left!42849 ys!41)))))))

(declare-fun bm!354458 () Bool)

(declare-fun call!354463 () List!58580)

(assert (=> bm!354458 (= call!354462 (++!12815 call!354463 (list!19033 (right!43179 (left!42849 ys!41)))))))

(declare-fun b!5085968 () Bool)

(assert (=> b!5085968 (= e!3172052 (= call!354462 call!354464))))

(declare-fun d!1646156 () Bool)

(assert (=> d!1646156 e!3172052))

(declare-fun c!873909 () Bool)

(assert (=> d!1646156 (= c!873909 ((_ is Nil!58456) (t!371417 (list!19033 xs!286))))))

(assert (=> d!1646156 (= (appendAssoc!314 (t!371417 (list!19033 xs!286)) (list!19033 (left!42849 (left!42849 ys!41))) (list!19033 (right!43179 (left!42849 ys!41)))) true)))

(declare-fun bm!354459 () Bool)

(assert (=> bm!354459 (= call!354463 (++!12815 (t!371417 (list!19033 xs!286)) (list!19033 (left!42849 (left!42849 ys!41)))))))

(declare-fun bm!354460 () Bool)

(assert (=> bm!354460 (= call!354464 (++!12815 (t!371417 (list!19033 xs!286)) call!354465))))

(assert (= (and d!1646156 c!873909) b!5085968))

(assert (= (and d!1646156 (not c!873909)) b!5085967))

(assert (= (or b!5085968 b!5085967) bm!354459))

(assert (= (or b!5085968 b!5085967) bm!354457))

(assert (= (or b!5085968 b!5085967) bm!354460))

(assert (= (or b!5085968 b!5085967) bm!354458))

(declare-fun m!6143050 () Bool)

(assert (=> bm!354460 m!6143050))

(assert (=> b!5085967 m!6139654))

(assert (=> b!5085967 m!6139652))

(declare-fun m!6143052 () Bool)

(assert (=> b!5085967 m!6143052))

(assert (=> bm!354458 m!6139652))

(declare-fun m!6143054 () Bool)

(assert (=> bm!354458 m!6143054))

(assert (=> bm!354457 m!6139654))

(assert (=> bm!354457 m!6139652))

(assert (=> bm!354457 m!6140676))

(assert (=> bm!354459 m!6139654))

(assert (=> bm!354459 m!6140520))

(assert (=> b!5084771 d!1646156))

(declare-fun d!1646158 () Bool)

(declare-fun lt!2091671 () Bool)

(assert (=> d!1646158 (= lt!2091671 (isEmpty!31677 (list!19033 (right!43179 (right!43179 lt!2091392)))))))

(assert (=> d!1646158 (= lt!2091671 (= (size!39121 (right!43179 (right!43179 lt!2091392))) 0))))

(assert (=> d!1646158 (= (isEmpty!31675 (right!43179 (right!43179 lt!2091392))) lt!2091671)))

(declare-fun bs!1190936 () Bool)

(assert (= bs!1190936 d!1646158))

(assert (=> bs!1190936 m!6140476))

(assert (=> bs!1190936 m!6140476))

(declare-fun m!6143056 () Bool)

(assert (=> bs!1190936 m!6143056))

(declare-fun m!6143058 () Bool)

(assert (=> bs!1190936 m!6143058))

(assert (=> b!5084637 d!1646158))

(declare-fun d!1646160 () Bool)

(assert (=> d!1646160 (= (isEmpty!31677 (list!19033 (left!42849 ys!41))) ((_ is Nil!58456) (list!19033 (left!42849 ys!41))))))

(assert (=> d!1645084 d!1646160))

(assert (=> d!1645084 d!1645146))

(assert (=> d!1645084 d!1645822))

(declare-fun d!1646162 () Bool)

(assert (=> d!1646162 (= (inv!77677 (xs!18964 (left!42849 (left!42849 err!4617)))) (<= (size!39119 (innerList!15674 (xs!18964 (left!42849 (left!42849 err!4617))))) 2147483647))))

(declare-fun bs!1190937 () Bool)

(assert (= bs!1190937 d!1646162))

(declare-fun m!6143060 () Bool)

(assert (=> bs!1190937 m!6143060))

(assert (=> b!5084818 d!1646162))

(assert (=> b!5084643 d!1645890))

(assert (=> b!5084643 d!1645892))

(declare-fun bm!354461 () Bool)

(declare-fun call!354469 () List!58580)

(assert (=> bm!354461 (= call!354469 (++!12815 (list!19033 (right!43179 (left!42849 ys!41))) (list!19033 (right!43179 ys!41))))))

(declare-fun b!5085969 () Bool)

(declare-fun e!3172053 () Bool)

(declare-fun call!354466 () List!58580)

(declare-fun call!354468 () List!58580)

(assert (=> b!5085969 (= e!3172053 (= call!354466 call!354468))))

(declare-fun lt!2091672 () Bool)

(assert (=> b!5085969 (= lt!2091672 (appendAssoc!314 (t!371417 (t!371417 (++!12815 (list!19033 xs!286) (list!19033 (left!42849 (left!42849 ys!41)))))) (list!19033 (right!43179 (left!42849 ys!41))) (list!19033 (right!43179 ys!41))))))

(declare-fun bm!354462 () Bool)

(declare-fun call!354467 () List!58580)

(assert (=> bm!354462 (= call!354466 (++!12815 call!354467 (list!19033 (right!43179 ys!41))))))

(declare-fun b!5085970 () Bool)

(assert (=> b!5085970 (= e!3172053 (= call!354466 call!354468))))

(declare-fun d!1646164 () Bool)

(assert (=> d!1646164 e!3172053))

(declare-fun c!873910 () Bool)

(assert (=> d!1646164 (= c!873910 ((_ is Nil!58456) (t!371417 (++!12815 (list!19033 xs!286) (list!19033 (left!42849 (left!42849 ys!41)))))))))

(assert (=> d!1646164 (= (appendAssoc!314 (t!371417 (++!12815 (list!19033 xs!286) (list!19033 (left!42849 (left!42849 ys!41))))) (list!19033 (right!43179 (left!42849 ys!41))) (list!19033 (right!43179 ys!41))) true)))

(declare-fun bm!354463 () Bool)

(assert (=> bm!354463 (= call!354467 (++!12815 (t!371417 (++!12815 (list!19033 xs!286) (list!19033 (left!42849 (left!42849 ys!41))))) (list!19033 (right!43179 (left!42849 ys!41)))))))

(declare-fun bm!354464 () Bool)

(assert (=> bm!354464 (= call!354468 (++!12815 (t!371417 (++!12815 (list!19033 xs!286) (list!19033 (left!42849 (left!42849 ys!41))))) call!354469))))

(assert (= (and d!1646164 c!873910) b!5085970))

(assert (= (and d!1646164 (not c!873910)) b!5085969))

(assert (= (or b!5085970 b!5085969) bm!354463))

(assert (= (or b!5085970 b!5085969) bm!354461))

(assert (= (or b!5085970 b!5085969) bm!354464))

(assert (= (or b!5085970 b!5085969) bm!354462))

(declare-fun m!6143062 () Bool)

(assert (=> bm!354464 m!6143062))

(assert (=> b!5085969 m!6139652))

(assert (=> b!5085969 m!6139658))

(declare-fun m!6143064 () Bool)

(assert (=> b!5085969 m!6143064))

(assert (=> bm!354462 m!6139658))

(declare-fun m!6143066 () Bool)

(assert (=> bm!354462 m!6143066))

(assert (=> bm!354461 m!6139652))

(assert (=> bm!354461 m!6139658))

(assert (=> bm!354461 m!6140516))

(assert (=> bm!354463 m!6139652))

(assert (=> bm!354463 m!6142146))

(assert (=> b!5084710 d!1646164))

(assert (=> b!5084278 d!1645132))

(assert (=> b!5084278 d!1645134))

(declare-fun d!1646166 () Bool)

(declare-fun lt!2091673 () Int)

(assert (=> d!1646166 (>= lt!2091673 0)))

(declare-fun e!3172054 () Int)

(assert (=> d!1646166 (= lt!2091673 e!3172054)))

(declare-fun c!873911 () Bool)

(assert (=> d!1646166 (= c!873911 ((_ is Nil!58456) lt!2091447))))

(assert (=> d!1646166 (= (size!39119 lt!2091447) lt!2091673)))

(declare-fun b!5085971 () Bool)

(assert (=> b!5085971 (= e!3172054 0)))

(declare-fun b!5085972 () Bool)

(assert (=> b!5085972 (= e!3172054 (+ 1 (size!39119 (t!371417 lt!2091447))))))

(assert (= (and d!1646166 c!873911) b!5085971))

(assert (= (and d!1646166 (not c!873911)) b!5085972))

(declare-fun m!6143068 () Bool)

(assert (=> b!5085972 m!6143068))

(assert (=> b!5084714 d!1646166))

(assert (=> b!5084714 d!1644990))

(declare-fun d!1646168 () Bool)

(declare-fun lt!2091674 () Int)

(assert (=> d!1646168 (>= lt!2091674 0)))

(declare-fun e!3172055 () Int)

(assert (=> d!1646168 (= lt!2091674 e!3172055)))

(declare-fun c!873912 () Bool)

(assert (=> d!1646168 (= c!873912 ((_ is Nil!58456) (list!19033 (left!42849 (left!42849 ys!41)))))))

(assert (=> d!1646168 (= (size!39119 (list!19033 (left!42849 (left!42849 ys!41)))) lt!2091674)))

(declare-fun b!5085973 () Bool)

(assert (=> b!5085973 (= e!3172055 0)))

(declare-fun b!5085974 () Bool)

(assert (=> b!5085974 (= e!3172055 (+ 1 (size!39119 (t!371417 (list!19033 (left!42849 (left!42849 ys!41)))))))))

(assert (= (and d!1646168 c!873912) b!5085973))

(assert (= (and d!1646168 (not c!873912)) b!5085974))

(declare-fun m!6143070 () Bool)

(assert (=> b!5085974 m!6143070))

(assert (=> b!5084714 d!1646168))

(assert (=> b!5084269 d!1645138))

(assert (=> b!5084269 d!1645140))

(declare-fun d!1646170 () Bool)

(declare-fun lt!2091675 () Int)

(assert (=> d!1646170 (= lt!2091675 (size!39119 (list!19033 (left!42849 err!4617))))))

(assert (=> d!1646170 (= lt!2091675 (ite ((_ is Empty!15586) (left!42849 err!4617)) 0 (ite ((_ is Leaf!25884) (left!42849 err!4617)) (csize!31403 (left!42849 err!4617)) (csize!31402 (left!42849 err!4617)))))))

(assert (=> d!1646170 (= (size!39121 (left!42849 err!4617)) lt!2091675)))

(declare-fun bs!1190938 () Bool)

(assert (= bs!1190938 d!1646170))

(declare-fun m!6143072 () Bool)

(assert (=> bs!1190938 m!6143072))

(assert (=> bs!1190938 m!6143072))

(declare-fun m!6143074 () Bool)

(assert (=> bs!1190938 m!6143074))

(assert (=> d!1645080 d!1646170))

(declare-fun d!1646172 () Bool)

(declare-fun lt!2091676 () Int)

(assert (=> d!1646172 (= lt!2091676 (size!39119 (list!19033 (right!43179 err!4617))))))

(assert (=> d!1646172 (= lt!2091676 (ite ((_ is Empty!15586) (right!43179 err!4617)) 0 (ite ((_ is Leaf!25884) (right!43179 err!4617)) (csize!31403 (right!43179 err!4617)) (csize!31402 (right!43179 err!4617)))))))

(assert (=> d!1646172 (= (size!39121 (right!43179 err!4617)) lt!2091676)))

(declare-fun bs!1190939 () Bool)

(assert (= bs!1190939 d!1646172))

(declare-fun m!6143076 () Bool)

(assert (=> bs!1190939 m!6143076))

(assert (=> bs!1190939 m!6143076))

(declare-fun m!6143078 () Bool)

(assert (=> bs!1190939 m!6143078))

(assert (=> d!1645080 d!1646172))

(declare-fun d!1646174 () Bool)

(declare-fun res!2165172 () Bool)

(declare-fun e!3172056 () Bool)

(assert (=> d!1646174 (=> (not res!2165172) (not e!3172056))))

(assert (=> d!1646174 (= res!2165172 (<= (size!39119 (list!19035 (xs!18964 (left!42849 (right!43179 err!4617))))) 512))))

(assert (=> d!1646174 (= (inv!77681 (left!42849 (right!43179 err!4617))) e!3172056)))

(declare-fun b!5085975 () Bool)

(declare-fun res!2165173 () Bool)

(assert (=> b!5085975 (=> (not res!2165173) (not e!3172056))))

(assert (=> b!5085975 (= res!2165173 (= (csize!31403 (left!42849 (right!43179 err!4617))) (size!39119 (list!19035 (xs!18964 (left!42849 (right!43179 err!4617)))))))))

(declare-fun b!5085976 () Bool)

(assert (=> b!5085976 (= e!3172056 (and (> (csize!31403 (left!42849 (right!43179 err!4617))) 0) (<= (csize!31403 (left!42849 (right!43179 err!4617))) 512)))))

(assert (= (and d!1646174 res!2165172) b!5085975))

(assert (= (and b!5085975 res!2165173) b!5085976))

(declare-fun m!6143080 () Bool)

(assert (=> d!1646174 m!6143080))

(assert (=> d!1646174 m!6143080))

(declare-fun m!6143082 () Bool)

(assert (=> d!1646174 m!6143082))

(assert (=> b!5085975 m!6143080))

(assert (=> b!5085975 m!6143080))

(assert (=> b!5085975 m!6143082))

(assert (=> b!5084622 d!1646174))

(declare-fun d!1646176 () Bool)

(declare-fun res!2165174 () Bool)

(declare-fun e!3172057 () Bool)

(assert (=> d!1646176 (=> (not res!2165174) (not e!3172057))))

(assert (=> d!1646176 (= res!2165174 (<= (size!39119 (list!19035 (xs!18964 (right!43179 (left!42849 err!4617))))) 512))))

(assert (=> d!1646176 (= (inv!77681 (right!43179 (left!42849 err!4617))) e!3172057)))

(declare-fun b!5085977 () Bool)

(declare-fun res!2165175 () Bool)

(assert (=> b!5085977 (=> (not res!2165175) (not e!3172057))))

(assert (=> b!5085977 (= res!2165175 (= (csize!31403 (right!43179 (left!42849 err!4617))) (size!39119 (list!19035 (xs!18964 (right!43179 (left!42849 err!4617)))))))))

(declare-fun b!5085978 () Bool)

(assert (=> b!5085978 (= e!3172057 (and (> (csize!31403 (right!43179 (left!42849 err!4617))) 0) (<= (csize!31403 (right!43179 (left!42849 err!4617))) 512)))))

(assert (= (and d!1646176 res!2165174) b!5085977))

(assert (= (and b!5085977 res!2165175) b!5085978))

(declare-fun m!6143084 () Bool)

(assert (=> d!1646176 m!6143084))

(assert (=> d!1646176 m!6143084))

(declare-fun m!6143086 () Bool)

(assert (=> d!1646176 m!6143086))

(assert (=> b!5085977 m!6143084))

(assert (=> b!5085977 m!6143084))

(assert (=> b!5085977 m!6143086))

(assert (=> b!5084674 d!1646176))

(declare-fun b!5085980 () Bool)

(declare-fun e!3172058 () List!58580)

(assert (=> b!5085980 (= e!3172058 (Cons!58456 (h!64904 (t!371417 (list!19033 (left!42849 lt!2091392)))) (++!12815 (t!371417 (t!371417 (list!19033 (left!42849 lt!2091392)))) (list!19033 (right!43179 lt!2091392)))))))

(declare-fun d!1646178 () Bool)

(declare-fun e!3172059 () Bool)

(assert (=> d!1646178 e!3172059))

(declare-fun res!2165177 () Bool)

(assert (=> d!1646178 (=> (not res!2165177) (not e!3172059))))

(declare-fun lt!2091677 () List!58580)

(assert (=> d!1646178 (= res!2165177 (= (content!10430 lt!2091677) ((_ map or) (content!10430 (t!371417 (list!19033 (left!42849 lt!2091392)))) (content!10430 (list!19033 (right!43179 lt!2091392))))))))

(assert (=> d!1646178 (= lt!2091677 e!3172058)))

(declare-fun c!873913 () Bool)

(assert (=> d!1646178 (= c!873913 ((_ is Nil!58456) (t!371417 (list!19033 (left!42849 lt!2091392)))))))

(assert (=> d!1646178 (= (++!12815 (t!371417 (list!19033 (left!42849 lt!2091392))) (list!19033 (right!43179 lt!2091392))) lt!2091677)))

(declare-fun b!5085979 () Bool)

(assert (=> b!5085979 (= e!3172058 (list!19033 (right!43179 lt!2091392)))))

(declare-fun b!5085982 () Bool)

(assert (=> b!5085982 (= e!3172059 (or (not (= (list!19033 (right!43179 lt!2091392)) Nil!58456)) (= lt!2091677 (t!371417 (list!19033 (left!42849 lt!2091392))))))))

(declare-fun b!5085981 () Bool)

(declare-fun res!2165176 () Bool)

(assert (=> b!5085981 (=> (not res!2165176) (not e!3172059))))

(assert (=> b!5085981 (= res!2165176 (= (size!39119 lt!2091677) (+ (size!39119 (t!371417 (list!19033 (left!42849 lt!2091392)))) (size!39119 (list!19033 (right!43179 lt!2091392))))))))

(assert (= (and d!1646178 c!873913) b!5085979))

(assert (= (and d!1646178 (not c!873913)) b!5085980))

(assert (= (and d!1646178 res!2165177) b!5085981))

(assert (= (and b!5085981 res!2165176) b!5085982))

(assert (=> b!5085980 m!6139690))

(declare-fun m!6143088 () Bool)

(assert (=> b!5085980 m!6143088))

(declare-fun m!6143090 () Bool)

(assert (=> d!1646178 m!6143090))

(assert (=> d!1646178 m!6143044))

(assert (=> d!1646178 m!6139690))

(assert (=> d!1646178 m!6140458))

(declare-fun m!6143092 () Bool)

(assert (=> b!5085981 m!6143092))

(assert (=> b!5085981 m!6142976))

(assert (=> b!5085981 m!6139690))

(assert (=> b!5085981 m!6140464))

(assert (=> b!5084680 d!1646178))

(declare-fun d!1646180 () Bool)

(assert (=> d!1646180 (= (max!0 (height!2163 (left!42849 (right!43179 xs!286))) (height!2163 (right!43179 (right!43179 xs!286)))) (ite (< (height!2163 (left!42849 (right!43179 xs!286))) (height!2163 (right!43179 (right!43179 xs!286)))) (height!2163 (right!43179 (right!43179 xs!286))) (height!2163 (left!42849 (right!43179 xs!286)))))))

(assert (=> b!5084728 d!1646180))

(assert (=> b!5084728 d!1645766))

(assert (=> b!5084728 d!1645768))

(declare-fun b!5085983 () Bool)

(declare-fun e!3172060 () Bool)

(declare-fun tp!1417831 () Bool)

(assert (=> b!5085983 (= e!3172060 (and tp_is_empty!37095 tp!1417831))))

(assert (=> b!5084839 (= tp!1417725 e!3172060)))

(assert (= (and b!5084839 ((_ is Cons!58456) (innerList!15674 (xs!18964 (left!42849 (right!43179 err!4617)))))) b!5085983))

(declare-fun tp!1417833 () Bool)

(declare-fun b!5085984 () Bool)

(declare-fun tp!1417834 () Bool)

(declare-fun e!3172061 () Bool)

(assert (=> b!5085984 (= e!3172061 (and (inv!77676 (left!42849 (left!42849 (left!42849 (left!42849 xs!286))))) tp!1417833 (inv!77676 (right!43179 (left!42849 (left!42849 (left!42849 xs!286))))) tp!1417834))))

(declare-fun b!5085986 () Bool)

(declare-fun e!3172062 () Bool)

(declare-fun tp!1417832 () Bool)

(assert (=> b!5085986 (= e!3172062 tp!1417832)))

(declare-fun b!5085985 () Bool)

(assert (=> b!5085985 (= e!3172061 (and (inv!77677 (xs!18964 (left!42849 (left!42849 (left!42849 xs!286))))) e!3172062))))

(assert (=> b!5084843 (= tp!1417732 (and (inv!77676 (left!42849 (left!42849 (left!42849 xs!286)))) e!3172061))))

(assert (= (and b!5084843 ((_ is Node!15586) (left!42849 (left!42849 (left!42849 xs!286))))) b!5085984))

(assert (= b!5085985 b!5085986))

(assert (= (and b!5084843 ((_ is Leaf!25884) (left!42849 (left!42849 (left!42849 xs!286))))) b!5085985))

(declare-fun m!6143094 () Bool)

(assert (=> b!5085984 m!6143094))

(declare-fun m!6143096 () Bool)

(assert (=> b!5085984 m!6143096))

(declare-fun m!6143098 () Bool)

(assert (=> b!5085985 m!6143098))

(assert (=> b!5084843 m!6140790))

(declare-fun tp!1417837 () Bool)

(declare-fun e!3172063 () Bool)

(declare-fun b!5085987 () Bool)

(declare-fun tp!1417836 () Bool)

(assert (=> b!5085987 (= e!3172063 (and (inv!77676 (left!42849 (right!43179 (left!42849 (left!42849 xs!286))))) tp!1417836 (inv!77676 (right!43179 (right!43179 (left!42849 (left!42849 xs!286))))) tp!1417837))))

(declare-fun b!5085989 () Bool)

(declare-fun e!3172064 () Bool)

(declare-fun tp!1417835 () Bool)

(assert (=> b!5085989 (= e!3172064 tp!1417835)))

(declare-fun b!5085988 () Bool)

(assert (=> b!5085988 (= e!3172063 (and (inv!77677 (xs!18964 (right!43179 (left!42849 (left!42849 xs!286))))) e!3172064))))

(assert (=> b!5084843 (= tp!1417733 (and (inv!77676 (right!43179 (left!42849 (left!42849 xs!286)))) e!3172063))))

(assert (= (and b!5084843 ((_ is Node!15586) (right!43179 (left!42849 (left!42849 xs!286))))) b!5085987))

(assert (= b!5085988 b!5085989))

(assert (= (and b!5084843 ((_ is Leaf!25884) (right!43179 (left!42849 (left!42849 xs!286))))) b!5085988))

(declare-fun m!6143100 () Bool)

(assert (=> b!5085987 m!6143100))

(declare-fun m!6143102 () Bool)

(assert (=> b!5085987 m!6143102))

(declare-fun m!6143104 () Bool)

(assert (=> b!5085988 m!6143104))

(assert (=> b!5084843 m!6140792))

(declare-fun b!5085990 () Bool)

(declare-fun e!3172065 () Bool)

(declare-fun tp!1417838 () Bool)

(assert (=> b!5085990 (= e!3172065 (and tp_is_empty!37095 tp!1417838))))

(assert (=> b!5084826 (= tp!1417712 e!3172065)))

(assert (= (and b!5084826 ((_ is Cons!58456) (innerList!15674 (xs!18964 (left!42849 (right!43179 xs!286)))))) b!5085990))

(declare-fun e!3172066 () Bool)

(declare-fun tp!1417841 () Bool)

(declare-fun b!5085991 () Bool)

(declare-fun tp!1417840 () Bool)

(assert (=> b!5085991 (= e!3172066 (and (inv!77676 (left!42849 (left!42849 (right!43179 (right!43179 ys!41))))) tp!1417840 (inv!77676 (right!43179 (left!42849 (right!43179 (right!43179 ys!41))))) tp!1417841))))

(declare-fun b!5085993 () Bool)

(declare-fun e!3172067 () Bool)

(declare-fun tp!1417839 () Bool)

(assert (=> b!5085993 (= e!3172067 tp!1417839)))

(declare-fun b!5085992 () Bool)

(assert (=> b!5085992 (= e!3172066 (and (inv!77677 (xs!18964 (left!42849 (right!43179 (right!43179 ys!41))))) e!3172067))))

(assert (=> b!5084808 (= tp!1417697 (and (inv!77676 (left!42849 (right!43179 (right!43179 ys!41)))) e!3172066))))

(assert (= (and b!5084808 ((_ is Node!15586) (left!42849 (right!43179 (right!43179 ys!41))))) b!5085991))

(assert (= b!5085992 b!5085993))

(assert (= (and b!5084808 ((_ is Leaf!25884) (left!42849 (right!43179 (right!43179 ys!41))))) b!5085992))

(declare-fun m!6143106 () Bool)

(assert (=> b!5085991 m!6143106))

(declare-fun m!6143108 () Bool)

(assert (=> b!5085991 m!6143108))

(declare-fun m!6143110 () Bool)

(assert (=> b!5085992 m!6143110))

(assert (=> b!5084808 m!6140736))

(declare-fun tp!1417844 () Bool)

(declare-fun e!3172068 () Bool)

(declare-fun tp!1417843 () Bool)

(declare-fun b!5085994 () Bool)

(assert (=> b!5085994 (= e!3172068 (and (inv!77676 (left!42849 (right!43179 (right!43179 (right!43179 ys!41))))) tp!1417843 (inv!77676 (right!43179 (right!43179 (right!43179 (right!43179 ys!41))))) tp!1417844))))

(declare-fun b!5085996 () Bool)

(declare-fun e!3172069 () Bool)

(declare-fun tp!1417842 () Bool)

(assert (=> b!5085996 (= e!3172069 tp!1417842)))

(declare-fun b!5085995 () Bool)

(assert (=> b!5085995 (= e!3172068 (and (inv!77677 (xs!18964 (right!43179 (right!43179 (right!43179 ys!41))))) e!3172069))))

(assert (=> b!5084808 (= tp!1417698 (and (inv!77676 (right!43179 (right!43179 (right!43179 ys!41)))) e!3172068))))

(assert (= (and b!5084808 ((_ is Node!15586) (right!43179 (right!43179 (right!43179 ys!41))))) b!5085994))

(assert (= b!5085995 b!5085996))

(assert (= (and b!5084808 ((_ is Leaf!25884) (right!43179 (right!43179 (right!43179 ys!41))))) b!5085995))

(declare-fun m!6143112 () Bool)

(assert (=> b!5085994 m!6143112))

(declare-fun m!6143114 () Bool)

(assert (=> b!5085994 m!6143114))

(declare-fun m!6143116 () Bool)

(assert (=> b!5085995 m!6143116))

(assert (=> b!5084808 m!6140738))

(declare-fun b!5085997 () Bool)

(declare-fun e!3172070 () Bool)

(declare-fun tp!1417845 () Bool)

(assert (=> b!5085997 (= e!3172070 (and tp_is_empty!37095 tp!1417845))))

(assert (=> b!5084814 (= tp!1417702 e!3172070)))

(assert (= (and b!5084814 ((_ is Cons!58456) (t!371417 (innerList!15674 (xs!18964 (right!43179 xs!286)))))) b!5085997))

(declare-fun e!3172071 () Bool)

(declare-fun tp!1417847 () Bool)

(declare-fun tp!1417848 () Bool)

(declare-fun b!5085998 () Bool)

(assert (=> b!5085998 (= e!3172071 (and (inv!77676 (left!42849 (left!42849 (left!42849 (right!43179 xs!286))))) tp!1417847 (inv!77676 (right!43179 (left!42849 (left!42849 (right!43179 xs!286))))) tp!1417848))))

(declare-fun b!5086000 () Bool)

(declare-fun e!3172072 () Bool)

(declare-fun tp!1417846 () Bool)

(assert (=> b!5086000 (= e!3172072 tp!1417846)))

(declare-fun b!5085999 () Bool)

(assert (=> b!5085999 (= e!3172071 (and (inv!77677 (xs!18964 (left!42849 (left!42849 (right!43179 xs!286))))) e!3172072))))

(assert (=> b!5084824 (= tp!1417713 (and (inv!77676 (left!42849 (left!42849 (right!43179 xs!286)))) e!3172071))))

(assert (= (and b!5084824 ((_ is Node!15586) (left!42849 (left!42849 (right!43179 xs!286))))) b!5085998))

(assert (= b!5085999 b!5086000))

(assert (= (and b!5084824 ((_ is Leaf!25884) (left!42849 (left!42849 (right!43179 xs!286))))) b!5085999))

(declare-fun m!6143118 () Bool)

(assert (=> b!5085998 m!6143118))

(declare-fun m!6143120 () Bool)

(assert (=> b!5085998 m!6143120))

(declare-fun m!6143122 () Bool)

(assert (=> b!5085999 m!6143122))

(assert (=> b!5084824 m!6140754))

(declare-fun e!3172073 () Bool)

(declare-fun tp!1417850 () Bool)

(declare-fun tp!1417851 () Bool)

(declare-fun b!5086001 () Bool)

(assert (=> b!5086001 (= e!3172073 (and (inv!77676 (left!42849 (right!43179 (left!42849 (right!43179 xs!286))))) tp!1417850 (inv!77676 (right!43179 (right!43179 (left!42849 (right!43179 xs!286))))) tp!1417851))))

(declare-fun b!5086003 () Bool)

(declare-fun e!3172074 () Bool)

(declare-fun tp!1417849 () Bool)

(assert (=> b!5086003 (= e!3172074 tp!1417849)))

(declare-fun b!5086002 () Bool)

(assert (=> b!5086002 (= e!3172073 (and (inv!77677 (xs!18964 (right!43179 (left!42849 (right!43179 xs!286))))) e!3172074))))

(assert (=> b!5084824 (= tp!1417714 (and (inv!77676 (right!43179 (left!42849 (right!43179 xs!286)))) e!3172073))))

(assert (= (and b!5084824 ((_ is Node!15586) (right!43179 (left!42849 (right!43179 xs!286))))) b!5086001))

(assert (= b!5086002 b!5086003))

(assert (= (and b!5084824 ((_ is Leaf!25884) (right!43179 (left!42849 (right!43179 xs!286))))) b!5086002))

(declare-fun m!6143124 () Bool)

(assert (=> b!5086001 m!6143124))

(declare-fun m!6143126 () Bool)

(assert (=> b!5086001 m!6143126))

(declare-fun m!6143128 () Bool)

(assert (=> b!5086002 m!6143128))

(assert (=> b!5084824 m!6140756))

(declare-fun e!3172075 () Bool)

(declare-fun tp!1417853 () Bool)

(declare-fun b!5086004 () Bool)

(declare-fun tp!1417854 () Bool)

(assert (=> b!5086004 (= e!3172075 (and (inv!77676 (left!42849 (left!42849 (right!43179 (left!42849 err!4617))))) tp!1417853 (inv!77676 (right!43179 (left!42849 (right!43179 (left!42849 err!4617))))) tp!1417854))))

(declare-fun b!5086006 () Bool)

(declare-fun e!3172076 () Bool)

(declare-fun tp!1417852 () Bool)

(assert (=> b!5086006 (= e!3172076 tp!1417852)))

(declare-fun b!5086005 () Bool)

(assert (=> b!5086005 (= e!3172075 (and (inv!77677 (xs!18964 (left!42849 (right!43179 (left!42849 err!4617))))) e!3172076))))

(assert (=> b!5084820 (= tp!1417709 (and (inv!77676 (left!42849 (right!43179 (left!42849 err!4617)))) e!3172075))))

(assert (= (and b!5084820 ((_ is Node!15586) (left!42849 (right!43179 (left!42849 err!4617))))) b!5086004))

(assert (= b!5086005 b!5086006))

(assert (= (and b!5084820 ((_ is Leaf!25884) (left!42849 (right!43179 (left!42849 err!4617))))) b!5086005))

(declare-fun m!6143130 () Bool)

(assert (=> b!5086004 m!6143130))

(declare-fun m!6143132 () Bool)

(assert (=> b!5086004 m!6143132))

(declare-fun m!6143134 () Bool)

(assert (=> b!5086005 m!6143134))

(assert (=> b!5084820 m!6140748))

(declare-fun e!3172077 () Bool)

(declare-fun tp!1417856 () Bool)

(declare-fun tp!1417857 () Bool)

(declare-fun b!5086007 () Bool)

(assert (=> b!5086007 (= e!3172077 (and (inv!77676 (left!42849 (right!43179 (right!43179 (left!42849 err!4617))))) tp!1417856 (inv!77676 (right!43179 (right!43179 (right!43179 (left!42849 err!4617))))) tp!1417857))))

(declare-fun b!5086009 () Bool)

(declare-fun e!3172078 () Bool)

(declare-fun tp!1417855 () Bool)

(assert (=> b!5086009 (= e!3172078 tp!1417855)))

(declare-fun b!5086008 () Bool)

(assert (=> b!5086008 (= e!3172077 (and (inv!77677 (xs!18964 (right!43179 (right!43179 (left!42849 err!4617))))) e!3172078))))

(assert (=> b!5084820 (= tp!1417710 (and (inv!77676 (right!43179 (right!43179 (left!42849 err!4617)))) e!3172077))))

(assert (= (and b!5084820 ((_ is Node!15586) (right!43179 (right!43179 (left!42849 err!4617))))) b!5086007))

(assert (= b!5086008 b!5086009))

(assert (= (and b!5084820 ((_ is Leaf!25884) (right!43179 (right!43179 (left!42849 err!4617))))) b!5086008))

(declare-fun m!6143136 () Bool)

(assert (=> b!5086007 m!6143136))

(declare-fun m!6143138 () Bool)

(assert (=> b!5086007 m!6143138))

(declare-fun m!6143140 () Bool)

(assert (=> b!5086008 m!6143140))

(assert (=> b!5084820 m!6140750))

(declare-fun b!5086010 () Bool)

(declare-fun e!3172079 () Bool)

(declare-fun tp!1417858 () Bool)

(assert (=> b!5086010 (= e!3172079 (and tp_is_empty!37095 tp!1417858))))

(assert (=> b!5084836 (= tp!1417722 e!3172079)))

(assert (= (and b!5084836 ((_ is Cons!58456) (innerList!15674 (xs!18964 (right!43179 (left!42849 ys!41)))))) b!5086010))

(declare-fun b!5086011 () Bool)

(declare-fun e!3172080 () Bool)

(declare-fun tp!1417859 () Bool)

(assert (=> b!5086011 (= e!3172080 (and tp_is_empty!37095 tp!1417859))))

(assert (=> b!5084845 (= tp!1417731 e!3172080)))

(assert (= (and b!5084845 ((_ is Cons!58456) (innerList!15674 (xs!18964 (left!42849 (left!42849 xs!286)))))) b!5086011))

(declare-fun b!5086012 () Bool)

(declare-fun e!3172081 () Bool)

(declare-fun tp!1417860 () Bool)

(assert (=> b!5086012 (= e!3172081 (and tp_is_empty!37095 tp!1417860))))

(assert (=> b!5084830 (= tp!1417718 e!3172081)))

(assert (= (and b!5084830 ((_ is Cons!58456) (t!371417 (t!371417 (innerList!15674 (xs!18964 err!4617)))))) b!5086012))

(declare-fun b!5086013 () Bool)

(declare-fun e!3172082 () Bool)

(declare-fun tp!1417861 () Bool)

(assert (=> b!5086013 (= e!3172082 (and tp_is_empty!37095 tp!1417861))))

(assert (=> b!5084810 (= tp!1417696 e!3172082)))

(assert (= (and b!5084810 ((_ is Cons!58456) (innerList!15674 (xs!18964 (right!43179 (right!43179 ys!41)))))) b!5086013))

(declare-fun tp!1417863 () Bool)

(declare-fun b!5086014 () Bool)

(declare-fun e!3172083 () Bool)

(declare-fun tp!1417864 () Bool)

(assert (=> b!5086014 (= e!3172083 (and (inv!77676 (left!42849 (left!42849 (right!43179 (left!42849 ys!41))))) tp!1417863 (inv!77676 (right!43179 (left!42849 (right!43179 (left!42849 ys!41))))) tp!1417864))))

(declare-fun b!5086016 () Bool)

(declare-fun e!3172084 () Bool)

(declare-fun tp!1417862 () Bool)

(assert (=> b!5086016 (= e!3172084 tp!1417862)))

(declare-fun b!5086015 () Bool)

(assert (=> b!5086015 (= e!3172083 (and (inv!77677 (xs!18964 (left!42849 (right!43179 (left!42849 ys!41))))) e!3172084))))

(assert (=> b!5084834 (= tp!1417723 (and (inv!77676 (left!42849 (right!43179 (left!42849 ys!41)))) e!3172083))))

(assert (= (and b!5084834 ((_ is Node!15586) (left!42849 (right!43179 (left!42849 ys!41))))) b!5086014))

(assert (= b!5086015 b!5086016))

(assert (= (and b!5084834 ((_ is Leaf!25884) (left!42849 (right!43179 (left!42849 ys!41))))) b!5086015))

(declare-fun m!6143142 () Bool)

(assert (=> b!5086014 m!6143142))

(declare-fun m!6143144 () Bool)

(assert (=> b!5086014 m!6143144))

(declare-fun m!6143146 () Bool)

(assert (=> b!5086015 m!6143146))

(assert (=> b!5084834 m!6140772))

(declare-fun e!3172085 () Bool)

(declare-fun tp!1417867 () Bool)

(declare-fun tp!1417866 () Bool)

(declare-fun b!5086017 () Bool)

(assert (=> b!5086017 (= e!3172085 (and (inv!77676 (left!42849 (right!43179 (right!43179 (left!42849 ys!41))))) tp!1417866 (inv!77676 (right!43179 (right!43179 (right!43179 (left!42849 ys!41))))) tp!1417867))))

(declare-fun b!5086019 () Bool)

(declare-fun e!3172086 () Bool)

(declare-fun tp!1417865 () Bool)

(assert (=> b!5086019 (= e!3172086 tp!1417865)))

(declare-fun b!5086018 () Bool)

(assert (=> b!5086018 (= e!3172085 (and (inv!77677 (xs!18964 (right!43179 (right!43179 (left!42849 ys!41))))) e!3172086))))

(assert (=> b!5084834 (= tp!1417724 (and (inv!77676 (right!43179 (right!43179 (left!42849 ys!41)))) e!3172085))))

(assert (= (and b!5084834 ((_ is Node!15586) (right!43179 (right!43179 (left!42849 ys!41))))) b!5086017))

(assert (= b!5086018 b!5086019))

(assert (= (and b!5084834 ((_ is Leaf!25884) (right!43179 (right!43179 (left!42849 ys!41))))) b!5086018))

(declare-fun m!6143148 () Bool)

(assert (=> b!5086017 m!6143148))

(declare-fun m!6143150 () Bool)

(assert (=> b!5086017 m!6143150))

(declare-fun m!6143152 () Bool)

(assert (=> b!5086018 m!6143152))

(assert (=> b!5084834 m!6140774))

(declare-fun b!5086020 () Bool)

(declare-fun e!3172087 () Bool)

(declare-fun tp!1417868 () Bool)

(assert (=> b!5086020 (= e!3172087 (and tp_is_empty!37095 tp!1417868))))

(assert (=> b!5084815 (= tp!1417703 e!3172087)))

(assert (= (and b!5084815 ((_ is Cons!58456) (t!371417 (innerList!15674 (xs!18964 (left!42849 ys!41)))))) b!5086020))

(declare-fun b!5086021 () Bool)

(declare-fun e!3172088 () Bool)

(declare-fun tp!1417869 () Bool)

(assert (=> b!5086021 (= e!3172088 (and tp_is_empty!37095 tp!1417869))))

(assert (=> b!5084822 (= tp!1417708 e!3172088)))

(assert (= (and b!5084822 ((_ is Cons!58456) (innerList!15674 (xs!18964 (right!43179 (left!42849 err!4617)))))) b!5086021))

(declare-fun b!5086022 () Bool)

(declare-fun e!3172089 () Bool)

(declare-fun tp!1417870 () Bool)

(assert (=> b!5086022 (= e!3172089 (and tp_is_empty!37095 tp!1417870))))

(assert (=> b!5084816 (= tp!1417704 e!3172089)))

(assert (= (and b!5084816 ((_ is Cons!58456) (t!371417 (t!371417 (innerList!15674 (xs!18964 xs!286)))))) b!5086022))

(declare-fun b!5086023 () Bool)

(declare-fun e!3172090 () Bool)

(declare-fun tp!1417871 () Bool)

(assert (=> b!5086023 (= e!3172090 (and tp_is_empty!37095 tp!1417871))))

(assert (=> b!5084849 (= tp!1417737 e!3172090)))

(assert (= (and b!5084849 ((_ is Cons!58456) (t!371417 (innerList!15674 (xs!18964 (right!43179 err!4617)))))) b!5086023))

(declare-fun e!3172091 () Bool)

(declare-fun tp!1417874 () Bool)

(declare-fun b!5086024 () Bool)

(declare-fun tp!1417873 () Bool)

(assert (=> b!5086024 (= e!3172091 (and (inv!77676 (left!42849 (left!42849 (left!42849 (left!42849 ys!41))))) tp!1417873 (inv!77676 (right!43179 (left!42849 (left!42849 (left!42849 ys!41))))) tp!1417874))))

(declare-fun b!5086026 () Bool)

(declare-fun e!3172092 () Bool)

(declare-fun tp!1417872 () Bool)

(assert (=> b!5086026 (= e!3172092 tp!1417872)))

(declare-fun b!5086025 () Bool)

(assert (=> b!5086025 (= e!3172091 (and (inv!77677 (xs!18964 (left!42849 (left!42849 (left!42849 ys!41))))) e!3172092))))

(assert (=> b!5084831 (= tp!1417720 (and (inv!77676 (left!42849 (left!42849 (left!42849 ys!41)))) e!3172091))))

(assert (= (and b!5084831 ((_ is Node!15586) (left!42849 (left!42849 (left!42849 ys!41))))) b!5086024))

(assert (= b!5086025 b!5086026))

(assert (= (and b!5084831 ((_ is Leaf!25884) (left!42849 (left!42849 (left!42849 ys!41))))) b!5086025))

(declare-fun m!6143154 () Bool)

(assert (=> b!5086024 m!6143154))

(declare-fun m!6143156 () Bool)

(assert (=> b!5086024 m!6143156))

(declare-fun m!6143158 () Bool)

(assert (=> b!5086025 m!6143158))

(assert (=> b!5084831 m!6140766))

(declare-fun b!5086027 () Bool)

(declare-fun e!3172093 () Bool)

(declare-fun tp!1417877 () Bool)

(declare-fun tp!1417876 () Bool)

(assert (=> b!5086027 (= e!3172093 (and (inv!77676 (left!42849 (right!43179 (left!42849 (left!42849 ys!41))))) tp!1417876 (inv!77676 (right!43179 (right!43179 (left!42849 (left!42849 ys!41))))) tp!1417877))))

(declare-fun b!5086029 () Bool)

(declare-fun e!3172094 () Bool)

(declare-fun tp!1417875 () Bool)

(assert (=> b!5086029 (= e!3172094 tp!1417875)))

(declare-fun b!5086028 () Bool)

(assert (=> b!5086028 (= e!3172093 (and (inv!77677 (xs!18964 (right!43179 (left!42849 (left!42849 ys!41))))) e!3172094))))

(assert (=> b!5084831 (= tp!1417721 (and (inv!77676 (right!43179 (left!42849 (left!42849 ys!41)))) e!3172093))))

(assert (= (and b!5084831 ((_ is Node!15586) (right!43179 (left!42849 (left!42849 ys!41))))) b!5086027))

(assert (= b!5086028 b!5086029))

(assert (= (and b!5084831 ((_ is Leaf!25884) (right!43179 (left!42849 (left!42849 ys!41))))) b!5086028))

(declare-fun m!6143160 () Bool)

(assert (=> b!5086027 m!6143160))

(declare-fun m!6143162 () Bool)

(assert (=> b!5086027 m!6143162))

(declare-fun m!6143164 () Bool)

(assert (=> b!5086028 m!6143164))

(assert (=> b!5084831 m!6140768))

(declare-fun tp!1417880 () Bool)

(declare-fun tp!1417879 () Bool)

(declare-fun b!5086030 () Bool)

(declare-fun e!3172095 () Bool)

(assert (=> b!5086030 (= e!3172095 (and (inv!77676 (left!42849 (left!42849 (right!43179 (right!43179 err!4617))))) tp!1417879 (inv!77676 (right!43179 (left!42849 (right!43179 (right!43179 err!4617))))) tp!1417880))))

(declare-fun b!5086032 () Bool)

(declare-fun e!3172096 () Bool)

(declare-fun tp!1417878 () Bool)

(assert (=> b!5086032 (= e!3172096 tp!1417878)))

(declare-fun b!5086031 () Bool)

(assert (=> b!5086031 (= e!3172095 (and (inv!77677 (xs!18964 (left!42849 (right!43179 (right!43179 err!4617))))) e!3172096))))

(assert (=> b!5084840 (= tp!1417729 (and (inv!77676 (left!42849 (right!43179 (right!43179 err!4617)))) e!3172095))))

(assert (= (and b!5084840 ((_ is Node!15586) (left!42849 (right!43179 (right!43179 err!4617))))) b!5086030))

(assert (= b!5086031 b!5086032))

(assert (= (and b!5084840 ((_ is Leaf!25884) (left!42849 (right!43179 (right!43179 err!4617))))) b!5086031))

(declare-fun m!6143166 () Bool)

(assert (=> b!5086030 m!6143166))

(declare-fun m!6143168 () Bool)

(assert (=> b!5086030 m!6143168))

(declare-fun m!6143170 () Bool)

(assert (=> b!5086031 m!6143170))

(assert (=> b!5084840 m!6140784))

(declare-fun tp!1417883 () Bool)

(declare-fun b!5086033 () Bool)

(declare-fun tp!1417882 () Bool)

(declare-fun e!3172097 () Bool)

(assert (=> b!5086033 (= e!3172097 (and (inv!77676 (left!42849 (right!43179 (right!43179 (right!43179 err!4617))))) tp!1417882 (inv!77676 (right!43179 (right!43179 (right!43179 (right!43179 err!4617))))) tp!1417883))))

(declare-fun b!5086035 () Bool)

(declare-fun e!3172098 () Bool)

(declare-fun tp!1417881 () Bool)

(assert (=> b!5086035 (= e!3172098 tp!1417881)))

(declare-fun b!5086034 () Bool)

(assert (=> b!5086034 (= e!3172097 (and (inv!77677 (xs!18964 (right!43179 (right!43179 (right!43179 err!4617))))) e!3172098))))

(assert (=> b!5084840 (= tp!1417730 (and (inv!77676 (right!43179 (right!43179 (right!43179 err!4617)))) e!3172097))))

(assert (= (and b!5084840 ((_ is Node!15586) (right!43179 (right!43179 (right!43179 err!4617))))) b!5086033))

(assert (= b!5086034 b!5086035))

(assert (= (and b!5084840 ((_ is Leaf!25884) (right!43179 (right!43179 (right!43179 err!4617))))) b!5086034))

(declare-fun m!6143172 () Bool)

(assert (=> b!5086033 m!6143172))

(declare-fun m!6143174 () Bool)

(assert (=> b!5086033 m!6143174))

(declare-fun m!6143176 () Bool)

(assert (=> b!5086034 m!6143176))

(assert (=> b!5084840 m!6140786))

(declare-fun tp!1417885 () Bool)

(declare-fun e!3172099 () Bool)

(declare-fun b!5086036 () Bool)

(declare-fun tp!1417886 () Bool)

(assert (=> b!5086036 (= e!3172099 (and (inv!77676 (left!42849 (left!42849 (left!42849 (right!43179 ys!41))))) tp!1417885 (inv!77676 (right!43179 (left!42849 (left!42849 (right!43179 ys!41))))) tp!1417886))))

(declare-fun b!5086038 () Bool)

(declare-fun e!3172100 () Bool)

(declare-fun tp!1417884 () Bool)

(assert (=> b!5086038 (= e!3172100 tp!1417884)))

(declare-fun b!5086037 () Bool)

(assert (=> b!5086037 (= e!3172099 (and (inv!77677 (xs!18964 (left!42849 (left!42849 (right!43179 ys!41))))) e!3172100))))

(assert (=> b!5084805 (= tp!1417694 (and (inv!77676 (left!42849 (left!42849 (right!43179 ys!41)))) e!3172099))))

(assert (= (and b!5084805 ((_ is Node!15586) (left!42849 (left!42849 (right!43179 ys!41))))) b!5086036))

(assert (= b!5086037 b!5086038))

(assert (= (and b!5084805 ((_ is Leaf!25884) (left!42849 (left!42849 (right!43179 ys!41))))) b!5086037))

(declare-fun m!6143178 () Bool)

(assert (=> b!5086036 m!6143178))

(declare-fun m!6143180 () Bool)

(assert (=> b!5086036 m!6143180))

(declare-fun m!6143182 () Bool)

(assert (=> b!5086037 m!6143182))

(assert (=> b!5084805 m!6140730))

(declare-fun e!3172101 () Bool)

(declare-fun b!5086039 () Bool)

(declare-fun tp!1417888 () Bool)

(declare-fun tp!1417889 () Bool)

(assert (=> b!5086039 (= e!3172101 (and (inv!77676 (left!42849 (right!43179 (left!42849 (right!43179 ys!41))))) tp!1417888 (inv!77676 (right!43179 (right!43179 (left!42849 (right!43179 ys!41))))) tp!1417889))))

(declare-fun b!5086041 () Bool)

(declare-fun e!3172102 () Bool)

(declare-fun tp!1417887 () Bool)

(assert (=> b!5086041 (= e!3172102 tp!1417887)))

(declare-fun b!5086040 () Bool)

(assert (=> b!5086040 (= e!3172101 (and (inv!77677 (xs!18964 (right!43179 (left!42849 (right!43179 ys!41))))) e!3172102))))

(assert (=> b!5084805 (= tp!1417695 (and (inv!77676 (right!43179 (left!42849 (right!43179 ys!41)))) e!3172101))))

(assert (= (and b!5084805 ((_ is Node!15586) (right!43179 (left!42849 (right!43179 ys!41))))) b!5086039))

(assert (= b!5086040 b!5086041))

(assert (= (and b!5084805 ((_ is Leaf!25884) (right!43179 (left!42849 (right!43179 ys!41))))) b!5086040))

(declare-fun m!6143184 () Bool)

(assert (=> b!5086039 m!6143184))

(declare-fun m!6143186 () Bool)

(assert (=> b!5086039 m!6143186))

(declare-fun m!6143188 () Bool)

(assert (=> b!5086040 m!6143188))

(assert (=> b!5084805 m!6140732))

(declare-fun tp!1417891 () Bool)

(declare-fun b!5086042 () Bool)

(declare-fun tp!1417892 () Bool)

(declare-fun e!3172103 () Bool)

(assert (=> b!5086042 (= e!3172103 (and (inv!77676 (left!42849 (left!42849 (left!42849 (left!42849 err!4617))))) tp!1417891 (inv!77676 (right!43179 (left!42849 (left!42849 (left!42849 err!4617))))) tp!1417892))))

(declare-fun b!5086044 () Bool)

(declare-fun e!3172104 () Bool)

(declare-fun tp!1417890 () Bool)

(assert (=> b!5086044 (= e!3172104 tp!1417890)))

(declare-fun b!5086043 () Bool)

(assert (=> b!5086043 (= e!3172103 (and (inv!77677 (xs!18964 (left!42849 (left!42849 (left!42849 err!4617))))) e!3172104))))

(assert (=> b!5084817 (= tp!1417706 (and (inv!77676 (left!42849 (left!42849 (left!42849 err!4617)))) e!3172103))))

(assert (= (and b!5084817 ((_ is Node!15586) (left!42849 (left!42849 (left!42849 err!4617))))) b!5086042))

(assert (= b!5086043 b!5086044))

(assert (= (and b!5084817 ((_ is Leaf!25884) (left!42849 (left!42849 (left!42849 err!4617))))) b!5086043))

(declare-fun m!6143190 () Bool)

(assert (=> b!5086042 m!6143190))

(declare-fun m!6143192 () Bool)

(assert (=> b!5086042 m!6143192))

(declare-fun m!6143194 () Bool)

(assert (=> b!5086043 m!6143194))

(assert (=> b!5084817 m!6140742))

(declare-fun e!3172105 () Bool)

(declare-fun tp!1417894 () Bool)

(declare-fun b!5086045 () Bool)

(declare-fun tp!1417895 () Bool)

(assert (=> b!5086045 (= e!3172105 (and (inv!77676 (left!42849 (right!43179 (left!42849 (left!42849 err!4617))))) tp!1417894 (inv!77676 (right!43179 (right!43179 (left!42849 (left!42849 err!4617))))) tp!1417895))))

(declare-fun b!5086047 () Bool)

(declare-fun e!3172106 () Bool)

(declare-fun tp!1417893 () Bool)

(assert (=> b!5086047 (= e!3172106 tp!1417893)))

(declare-fun b!5086046 () Bool)

(assert (=> b!5086046 (= e!3172105 (and (inv!77677 (xs!18964 (right!43179 (left!42849 (left!42849 err!4617))))) e!3172106))))

(assert (=> b!5084817 (= tp!1417707 (and (inv!77676 (right!43179 (left!42849 (left!42849 err!4617)))) e!3172105))))

(assert (= (and b!5084817 ((_ is Node!15586) (right!43179 (left!42849 (left!42849 err!4617))))) b!5086045))

(assert (= b!5086046 b!5086047))

(assert (= (and b!5084817 ((_ is Leaf!25884) (right!43179 (left!42849 (left!42849 err!4617))))) b!5086046))

(declare-fun m!6143196 () Bool)

(assert (=> b!5086045 m!6143196))

(declare-fun m!6143198 () Bool)

(assert (=> b!5086045 m!6143198))

(declare-fun m!6143200 () Bool)

(assert (=> b!5086046 m!6143200))

(assert (=> b!5084817 m!6140744))

(declare-fun b!5086048 () Bool)

(declare-fun e!3172107 () Bool)

(declare-fun tp!1417896 () Bool)

(assert (=> b!5086048 (= e!3172107 (and tp_is_empty!37095 tp!1417896))))

(assert (=> b!5084833 (= tp!1417719 e!3172107)))

(assert (= (and b!5084833 ((_ is Cons!58456) (innerList!15674 (xs!18964 (left!42849 (left!42849 ys!41)))))) b!5086048))

(declare-fun b!5086049 () Bool)

(declare-fun e!3172108 () Bool)

(declare-fun tp!1417897 () Bool)

(assert (=> b!5086049 (= e!3172108 (and tp_is_empty!37095 tp!1417897))))

(assert (=> b!5084811 (= tp!1417699 e!3172108)))

(assert (= (and b!5084811 ((_ is Cons!58456) (t!371417 (innerList!15674 (xs!18964 (left!42849 err!4617)))))) b!5086049))

(declare-fun b!5086050 () Bool)

(declare-fun e!3172109 () Bool)

(declare-fun tp!1417898 () Bool)

(assert (=> b!5086050 (= e!3172109 (and tp_is_empty!37095 tp!1417898))))

(assert (=> b!5084842 (= tp!1417728 e!3172109)))

(assert (= (and b!5084842 ((_ is Cons!58456) (innerList!15674 (xs!18964 (right!43179 (right!43179 err!4617)))))) b!5086050))

(declare-fun b!5086051 () Bool)

(declare-fun e!3172110 () Bool)

(declare-fun tp!1417899 () Bool)

(assert (=> b!5086051 (= e!3172110 (and tp_is_empty!37095 tp!1417899))))

(assert (=> b!5084807 (= tp!1417693 e!3172110)))

(assert (= (and b!5084807 ((_ is Cons!58456) (innerList!15674 (xs!18964 (left!42849 (right!43179 ys!41)))))) b!5086051))

(declare-fun b!5086052 () Bool)

(declare-fun e!3172111 () Bool)

(declare-fun tp!1417900 () Bool)

(assert (=> b!5086052 (= e!3172111 (and tp_is_empty!37095 tp!1417900))))

(assert (=> b!5084812 (= tp!1417700 e!3172111)))

(assert (= (and b!5084812 ((_ is Cons!58456) (t!371417 (innerList!15674 (xs!18964 (right!43179 ys!41)))))) b!5086052))

(declare-fun b!5086053 () Bool)

(declare-fun e!3172112 () Bool)

(declare-fun tp!1417901 () Bool)

(assert (=> b!5086053 (= e!3172112 (and tp_is_empty!37095 tp!1417901))))

(assert (=> b!5084823 (= tp!1417711 e!3172112)))

(assert (= (and b!5084823 ((_ is Cons!58456) (t!371417 (innerList!15674 (xs!18964 (left!42849 xs!286)))))) b!5086053))

(declare-fun b!5086054 () Bool)

(declare-fun e!3172113 () Bool)

(declare-fun tp!1417902 () Bool)

(assert (=> b!5086054 (= e!3172113 (and tp_is_empty!37095 tp!1417902))))

(assert (=> b!5084819 (= tp!1417705 e!3172113)))

(assert (= (and b!5084819 ((_ is Cons!58456) (innerList!15674 (xs!18964 (left!42849 (left!42849 err!4617)))))) b!5086054))

(declare-fun tp!1417904 () Bool)

(declare-fun e!3172114 () Bool)

(declare-fun tp!1417905 () Bool)

(declare-fun b!5086055 () Bool)

(assert (=> b!5086055 (= e!3172114 (and (inv!77676 (left!42849 (left!42849 (right!43179 (right!43179 xs!286))))) tp!1417904 (inv!77676 (right!43179 (left!42849 (right!43179 (right!43179 xs!286))))) tp!1417905))))

(declare-fun b!5086057 () Bool)

(declare-fun e!3172115 () Bool)

(declare-fun tp!1417903 () Bool)

(assert (=> b!5086057 (= e!3172115 tp!1417903)))

(declare-fun b!5086056 () Bool)

(assert (=> b!5086056 (= e!3172114 (and (inv!77677 (xs!18964 (left!42849 (right!43179 (right!43179 xs!286))))) e!3172115))))

(assert (=> b!5084827 (= tp!1417716 (and (inv!77676 (left!42849 (right!43179 (right!43179 xs!286)))) e!3172114))))

(assert (= (and b!5084827 ((_ is Node!15586) (left!42849 (right!43179 (right!43179 xs!286))))) b!5086055))

(assert (= b!5086056 b!5086057))

(assert (= (and b!5084827 ((_ is Leaf!25884) (left!42849 (right!43179 (right!43179 xs!286))))) b!5086056))

(declare-fun m!6143202 () Bool)

(assert (=> b!5086055 m!6143202))

(declare-fun m!6143204 () Bool)

(assert (=> b!5086055 m!6143204))

(declare-fun m!6143206 () Bool)

(assert (=> b!5086056 m!6143206))

(assert (=> b!5084827 m!6140760))

(declare-fun tp!1417908 () Bool)

(declare-fun b!5086058 () Bool)

(declare-fun e!3172116 () Bool)

(declare-fun tp!1417907 () Bool)

(assert (=> b!5086058 (= e!3172116 (and (inv!77676 (left!42849 (right!43179 (right!43179 (right!43179 xs!286))))) tp!1417907 (inv!77676 (right!43179 (right!43179 (right!43179 (right!43179 xs!286))))) tp!1417908))))

(declare-fun b!5086060 () Bool)

(declare-fun e!3172117 () Bool)

(declare-fun tp!1417906 () Bool)

(assert (=> b!5086060 (= e!3172117 tp!1417906)))

(declare-fun b!5086059 () Bool)

(assert (=> b!5086059 (= e!3172116 (and (inv!77677 (xs!18964 (right!43179 (right!43179 (right!43179 xs!286))))) e!3172117))))

(assert (=> b!5084827 (= tp!1417717 (and (inv!77676 (right!43179 (right!43179 (right!43179 xs!286)))) e!3172116))))

(assert (= (and b!5084827 ((_ is Node!15586) (right!43179 (right!43179 (right!43179 xs!286))))) b!5086058))

(assert (= b!5086059 b!5086060))

(assert (= (and b!5084827 ((_ is Leaf!25884) (right!43179 (right!43179 (right!43179 xs!286))))) b!5086059))

(declare-fun m!6143208 () Bool)

(assert (=> b!5086058 m!6143208))

(declare-fun m!6143210 () Bool)

(assert (=> b!5086058 m!6143210))

(declare-fun m!6143212 () Bool)

(assert (=> b!5086059 m!6143212))

(assert (=> b!5084827 m!6140762))

(declare-fun b!5086061 () Bool)

(declare-fun e!3172118 () Bool)

(declare-fun tp!1417909 () Bool)

(assert (=> b!5086061 (= e!3172118 (and tp_is_empty!37095 tp!1417909))))

(assert (=> b!5084848 (= tp!1417734 e!3172118)))

(assert (= (and b!5084848 ((_ is Cons!58456) (innerList!15674 (xs!18964 (right!43179 (left!42849 xs!286)))))) b!5086061))

(declare-fun b!5086062 () Bool)

(declare-fun e!3172119 () Bool)

(declare-fun tp!1417910 () Bool)

(assert (=> b!5086062 (= e!3172119 (and tp_is_empty!37095 tp!1417910))))

(assert (=> b!5084813 (= tp!1417701 e!3172119)))

(assert (= (and b!5084813 ((_ is Cons!58456) (t!371417 (t!371417 (innerList!15674 (xs!18964 ys!41)))))) b!5086062))

(declare-fun e!3172120 () Bool)

(declare-fun tp!1417912 () Bool)

(declare-fun tp!1417913 () Bool)

(declare-fun b!5086063 () Bool)

(assert (=> b!5086063 (= e!3172120 (and (inv!77676 (left!42849 (left!42849 (left!42849 (right!43179 err!4617))))) tp!1417912 (inv!77676 (right!43179 (left!42849 (left!42849 (right!43179 err!4617))))) tp!1417913))))

(declare-fun b!5086065 () Bool)

(declare-fun e!3172121 () Bool)

(declare-fun tp!1417911 () Bool)

(assert (=> b!5086065 (= e!3172121 tp!1417911)))

(declare-fun b!5086064 () Bool)

(assert (=> b!5086064 (= e!3172120 (and (inv!77677 (xs!18964 (left!42849 (left!42849 (right!43179 err!4617))))) e!3172121))))

(assert (=> b!5084837 (= tp!1417726 (and (inv!77676 (left!42849 (left!42849 (right!43179 err!4617)))) e!3172120))))

(assert (= (and b!5084837 ((_ is Node!15586) (left!42849 (left!42849 (right!43179 err!4617))))) b!5086063))

(assert (= b!5086064 b!5086065))

(assert (= (and b!5084837 ((_ is Leaf!25884) (left!42849 (left!42849 (right!43179 err!4617))))) b!5086064))

(declare-fun m!6143214 () Bool)

(assert (=> b!5086063 m!6143214))

(declare-fun m!6143216 () Bool)

(assert (=> b!5086063 m!6143216))

(declare-fun m!6143218 () Bool)

(assert (=> b!5086064 m!6143218))

(assert (=> b!5084837 m!6140778))

(declare-fun tp!1417915 () Bool)

(declare-fun b!5086066 () Bool)

(declare-fun tp!1417916 () Bool)

(declare-fun e!3172122 () Bool)

(assert (=> b!5086066 (= e!3172122 (and (inv!77676 (left!42849 (right!43179 (left!42849 (right!43179 err!4617))))) tp!1417915 (inv!77676 (right!43179 (right!43179 (left!42849 (right!43179 err!4617))))) tp!1417916))))

(declare-fun b!5086068 () Bool)

(declare-fun e!3172123 () Bool)

(declare-fun tp!1417914 () Bool)

(assert (=> b!5086068 (= e!3172123 tp!1417914)))

(declare-fun b!5086067 () Bool)

(assert (=> b!5086067 (= e!3172122 (and (inv!77677 (xs!18964 (right!43179 (left!42849 (right!43179 err!4617))))) e!3172123))))

(assert (=> b!5084837 (= tp!1417727 (and (inv!77676 (right!43179 (left!42849 (right!43179 err!4617)))) e!3172122))))

(assert (= (and b!5084837 ((_ is Node!15586) (right!43179 (left!42849 (right!43179 err!4617))))) b!5086066))

(assert (= b!5086067 b!5086068))

(assert (= (and b!5084837 ((_ is Leaf!25884) (right!43179 (left!42849 (right!43179 err!4617))))) b!5086067))

(declare-fun m!6143220 () Bool)

(assert (=> b!5086066 m!6143220))

(declare-fun m!6143222 () Bool)

(assert (=> b!5086066 m!6143222))

(declare-fun m!6143224 () Bool)

(assert (=> b!5086067 m!6143224))

(assert (=> b!5084837 m!6140780))

(declare-fun e!3172124 () Bool)

(declare-fun tp!1417918 () Bool)

(declare-fun tp!1417919 () Bool)

(declare-fun b!5086069 () Bool)

(assert (=> b!5086069 (= e!3172124 (and (inv!77676 (left!42849 (left!42849 (right!43179 (left!42849 xs!286))))) tp!1417918 (inv!77676 (right!43179 (left!42849 (right!43179 (left!42849 xs!286))))) tp!1417919))))

(declare-fun b!5086071 () Bool)

(declare-fun e!3172125 () Bool)

(declare-fun tp!1417917 () Bool)

(assert (=> b!5086071 (= e!3172125 tp!1417917)))

(declare-fun b!5086070 () Bool)

(assert (=> b!5086070 (= e!3172124 (and (inv!77677 (xs!18964 (left!42849 (right!43179 (left!42849 xs!286))))) e!3172125))))

(assert (=> b!5084846 (= tp!1417735 (and (inv!77676 (left!42849 (right!43179 (left!42849 xs!286)))) e!3172124))))

(assert (= (and b!5084846 ((_ is Node!15586) (left!42849 (right!43179 (left!42849 xs!286))))) b!5086069))

(assert (= b!5086070 b!5086071))

(assert (= (and b!5084846 ((_ is Leaf!25884) (left!42849 (right!43179 (left!42849 xs!286))))) b!5086070))

(declare-fun m!6143226 () Bool)

(assert (=> b!5086069 m!6143226))

(declare-fun m!6143228 () Bool)

(assert (=> b!5086069 m!6143228))

(declare-fun m!6143230 () Bool)

(assert (=> b!5086070 m!6143230))

(assert (=> b!5084846 m!6140796))

(declare-fun e!3172126 () Bool)

(declare-fun tp!1417922 () Bool)

(declare-fun b!5086072 () Bool)

(declare-fun tp!1417921 () Bool)

(assert (=> b!5086072 (= e!3172126 (and (inv!77676 (left!42849 (right!43179 (right!43179 (left!42849 xs!286))))) tp!1417921 (inv!77676 (right!43179 (right!43179 (right!43179 (left!42849 xs!286))))) tp!1417922))))

(declare-fun b!5086074 () Bool)

(declare-fun e!3172127 () Bool)

(declare-fun tp!1417920 () Bool)

(assert (=> b!5086074 (= e!3172127 tp!1417920)))

(declare-fun b!5086073 () Bool)

(assert (=> b!5086073 (= e!3172126 (and (inv!77677 (xs!18964 (right!43179 (right!43179 (left!42849 xs!286))))) e!3172127))))

(assert (=> b!5084846 (= tp!1417736 (and (inv!77676 (right!43179 (right!43179 (left!42849 xs!286)))) e!3172126))))

(assert (= (and b!5084846 ((_ is Node!15586) (right!43179 (right!43179 (left!42849 xs!286))))) b!5086072))

(assert (= b!5086073 b!5086074))

(assert (= (and b!5084846 ((_ is Leaf!25884) (right!43179 (right!43179 (left!42849 xs!286))))) b!5086073))

(declare-fun m!6143232 () Bool)

(assert (=> b!5086072 m!6143232))

(declare-fun m!6143234 () Bool)

(assert (=> b!5086072 m!6143234))

(declare-fun m!6143236 () Bool)

(assert (=> b!5086073 m!6143236))

(assert (=> b!5084846 m!6140798))

(declare-fun b!5086075 () Bool)

(declare-fun e!3172128 () Bool)

(declare-fun tp!1417923 () Bool)

(assert (=> b!5086075 (= e!3172128 (and tp_is_empty!37095 tp!1417923))))

(assert (=> b!5084829 (= tp!1417715 e!3172128)))

(assert (= (and b!5084829 ((_ is Cons!58456) (innerList!15674 (xs!18964 (right!43179 (right!43179 xs!286)))))) b!5086075))

(check-sat (not b!5086051) (not b!5085624) (not b!5085574) (not d!1645778) (not b!5085732) (not b!5085652) (not b!5085868) (not d!1645856) (not b!5085907) (not b!5085760) (not b!5085931) (not b!5085752) (not d!1646096) (not b!5085728) (not b!5085646) (not b!5085626) (not b!5085488) (not b!5085943) (not b!5085842) (not b!5085855) (not b!5085864) (not b!5085639) (not b!5085899) (not b!5085534) (not b!5085924) (not b!5085474) (not b!5085849) (not b!5086007) (not d!1646044) (not d!1645740) (not b!5085653) (not b!5085562) (not b!5085821) (not b!5085906) (not b!5085779) (not d!1645748) (not b!5085564) (not b!5085987) (not d!1645668) (not d!1646178) (not b!5085617) (not d!1645974) (not b!5085543) (not b!5085992) (not b!5086018) (not d!1645872) (not b!5086000) (not d!1646002) (not b!5085634) (not b!5086011) (not d!1645742) (not b!5085750) (not b!5085506) (not b!5085916) (not b!5085693) (not d!1646066) (not b!5086054) (not d!1645912) (not b!5085655) (not d!1645896) (not d!1645806) (not b!5085935) (not b!5086015) (not b!5086029) (not b!5085954) (not b!5085670) (not b!5085903) (not d!1645822) (not b!5086017) (not d!1645696) (not b!5085966) (not b!5086041) (not b!5086048) (not b!5085565) (not b!5085480) (not b!5085853) (not b!5085975) (not b!5085734) (not b!5086020) (not b!5086062) (not b!5085516) (not d!1645680) (not b!5085888) (not d!1645884) (not b!5085746) (not bm!354454) (not bm!354461) (not d!1645888) (not b!5085788) (not d!1646068) (not b!5086057) (not d!1645936) (not b!5086014) (not b!5086049) (not b!5085757) (not b!5086053) (not d!1646110) (not b!5086060) (not b!5086065) (not b!5085813) (not b!5085742) (not b!5085918) (not b!5085642) (not b!5086052) (not b!5086044) (not d!1645990) (not b!5084808) tp_is_empty!37095 (not b!5085691) (not b!5086036) (not b!5086043) (not bm!354452) (not b!5085556) (not b!5085948) (not b!5085731) (not b!5085876) (not b!5085990) (not b!5085595) (not d!1646054) (not b!5086045) (not b!5085858) (not b!5085951) (not b!5086023) (not b!5085630) (not b!5085770) (not d!1645868) (not b!5085774) (not d!1645670) (not b!5085492) (not b!5085862) (not b!5084846) (not bm!354464) (not d!1646016) (not b!5085712) (not b!5085513) (not b!5086040) (not b!5085551) (not b!5085977) (not b!5085592) (not b!5085603) (not d!1645904) (not b!5085587) (not b!5085544) (not d!1645914) (not d!1646020) (not b!5085778) (not d!1645688) (not b!5086019) (not b!5085510) (not b!5085671) (not b!5085950) (not b!5085974) (not b!5085599) (not d!1646024) (not b!5085539) (not d!1645854) (not b!5085980) (not b!5085844) (not d!1646004) (not b!5086072) (not b!5085860) (not d!1645900) (not b!5085497) (not b!5084824) (not b!5085891) (not b!5086032) (not b!5085722) (not b!5085772) (not b!5086004) (not b!5085714) (not b!5085684) (not d!1646170) (not b!5085502) (not b!5085526) (not b!5085967) (not d!1646106) (not b!5085602) (not b!5085998) (not b!5086050) (not bm!354459) (not b!5085483) (not d!1646104) (not b!5085628) (not d!1645870) (not b!5085558) (not b!5085656) (not b!5085613) (not b!5085953) (not d!1645708) (not bm!354458) (not b!5085493) (not b!5085766) (not b!5085923) (not b!5085879) (not b!5085958) (not b!5085548) (not b!5085475) (not b!5084820) (not b!5085996) (not b!5086063) (not d!1645998) (not d!1646098) (not d!1645700) (not bm!354457) (not b!5086055) (not b!5086024) (not b!5085710) (not b!5085467) (not b!5085610) (not b!5085945) (not bm!354444) (not b!5085660) (not b!5086039) (not b!5086008) (not b!5086037) (not b!5085648) (not b!5085828) (not b!5085885) (not b!5085763) (not d!1646064) (not b!5085567) (not b!5085870) (not b!5084817) (not b!5085880) (not b!5086005) (not d!1645918) (not b!5085962) (not b!5085787) (not b!5085701) (not b!5085570) (not b!5085875) (not b!5085645) (not b!5085914) (not d!1645794) (not bm!354441) (not b!5085850) (not d!1646158) (not b!5085969) (not b!5086002) (not b!5085794) (not b!5085889) (not d!1645758) (not b!5085704) (not b!5085620) (not b!5085986) (not b!5085579) (not b!5085810) (not b!5085535) (not b!5085479) (not b!5085991) (not d!1645686) (not b!5085688) (not b!5085800) (not b!5085623) (not b!5086068) (not bm!354443) (not b!5085925) (not bm!354446) (not d!1645682) (not b!5085873) (not d!1646132) (not d!1645980) (not d!1645950) (not b!5085667) (not b!5085719) (not b!5086009) (not b!5085833) (not b!5085494) (not b!5085514) (not b!5085633) (not b!5085736) (not b!5085466) (not b!5086061) (not b!5085631) (not b!5086056) (not b!5085865) (not bm!354463) (not b!5086016) (not b!5085463) (not b!5085499) (not d!1645934) (not b!5085846) (not b!5086069) (not b!5085586) (not bm!354450) (not d!1646084) (not b!5086026) (not b!5085825) (not b!5085911) (not b!5085657) (not d!1645844) (not b!5085495) (not b!5085993) (not b!5085605) (not d!1646060) (not b!5086071) (not b!5085867) (not b!5085522) (not d!1645702) (not d!1645978) (not d!1645952) (not b!5086013) (not b!5085690) (not b!5085926) (not d!1646072) (not b!5085525) (not b!5085981) (not d!1645750) (not d!1645840) (not b!5085559) (not b!5086047) (not b!5085942) (not d!1645894) (not b!5086064) (not b!5085531) (not b!5085960) (not b!5085512) (not b!5085674) (not bm!354449) (not d!1645842) (not b!5085600) (not d!1645858) (not b!5085675) (not b!5086030) (not b!5085687) (not d!1645966) (not b!5084831) (not b!5085920) (not b!5085503) (not b!5085933) (not b!5085550) (not bm!354442) (not d!1645984) (not b!5086031) (not b!5085597) (not d!1646032) (not b!5085641) (not b!5085798) (not b!5085505) (not b!5085486) (not b!5085989) (not d!1646172) (not b!5085622) (not b!5085754) (not b!5085694) (not bm!354456) (not b!5085922) (not b!5085755) (not b!5085988) (not bm!354453) (not b!5085791) (not bm!354460) (not b!5085716) (not b!5085817) (not d!1646092) (not b!5085831) (not b!5085832) (not d!1645948) (not b!5085802) (not b!5085591) (not b!5085768) (not b!5085983) (not d!1645704) (not b!5085984) (not bm!354451) (not b!5086059) (not b!5086001) (not b!5085790) (not b!5085805) (not b!5085529) (not b!5084837) (not b!5085547) (not b!5085937) (not b!5085511) (not b!5085985) (not b!5085651) (not b!5085783) (not b!5085708) (not b!5085803) (not d!1645830) (not b!5085509) (not b!5085840) (not b!5085738) (not b!5085758) (not b!5085761) (not b!5086003) (not b!5085934) (not b!5085723) (not d!1645726) (not b!5086027) (not bm!354455) (not d!1645898) (not b!5085580) (not d!1646082) (not b!5085838) (not b!5085569) (not b!5085893) (not b!5085554) (not b!5085508) (not d!1646058) (not b!5086025) (not b!5085932) (not b!5085956) (not b!5085471) (not d!1645744) (not b!5085470) (not b!5085872) (not b!5085659) (not b!5085484) (not b!5085590) (not b!5085699) (not d!1646162) (not b!5085594) (not b!5086035) (not b!5086006) (not d!1646108) (not b!5085929) (not b!5085545) (not b!5086010) (not b!5085718) (not d!1646052) (not b!5085836) (not b!5085863) (not b!5085618) (not b!5085692) (not b!5085654) (not b!5085621) (not b!5084805) (not d!1645784) (not d!1646018) (not b!5085930) (not b!5086067) (not d!1645786) (not b!5085816) (not b!5085553) (not b!5085636) (not b!5085944) (not bm!354447) (not b!5085683) (not b!5086022) (not b!5085739) (not d!1646022) (not b!5085835) (not bm!354448) (not d!1645782) (not b!5084840) (not d!1646174) (not b!5085747) (not b!5085902) (not b!5086075) (not b!5086012) (not b!5085664) (not b!5085940) (not b!5085762) (not d!1645746) (not b!5086074) (not b!5085727) (not b!5085928) (not b!5085822) (not d!1646070) (not b!5085625) (not b!5085997) (not b!5086033) (not b!5085589) (not b!5085575) (not b!5085896) (not b!5085678) (not b!5085898) (not b!5085606) (not b!5085679) (not d!1645850) (not b!5085972) (not b!5086058) (not b!5085796) (not b!5085663) (not b!5085811) (not d!1646076) (not b!5086038) (not b!5085615) (not b!5085927) (not b!5085743) (not b!5085884) (not b!5085696) (not b!5085995) (not b!5085947) (not d!1646062) (not b!5085830) (not b!5085764) (not b!5085608) (not b!5086046) (not d!1645976) (not d!1646176) (not b!5086028) (not b!5085588) (not b!5085994) (not bm!354445) (not b!5085583) (not d!1645874) (not b!5085540) (not b!5085910) (not b!5085572) (not b!5085521) (not b!5085861) (not b!5085775) (not b!5086070) (not b!5085826) (not b!5085706) (not b!5086073) (not b!5085807) (not b!5084843) (not b!5085964) (not b!5085946) (not d!1646028) (not b!5085784) (not d!1645982) (not b!5086042) (not b!5085939) (not d!1645760) (not b!5086021) (not b!5085518) (not b!5085584) (not d!1645886) (not b!5085491) (not b!5085999) (not b!5085637) (not bm!354462) (not b!5085490) (not b!5086066) (not b!5085765) (not b!5085689) (not b!5084834) (not b!5084827) (not b!5086034) (not b!5085834))
(check-sat)
