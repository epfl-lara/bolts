; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!187022 () Bool)

(assert start!187022)

(declare-fun b!1868719 () Bool)

(declare-fun e!1192484 () Bool)

(declare-fun tp!531826 () Bool)

(assert (=> b!1868719 (= e!1192484 tp!531826)))

(declare-fun res!836662 () Bool)

(declare-fun e!1192486 () Bool)

(assert (=> start!187022 (=> (not res!836662) (not e!1192486))))

(declare-datatypes ((T!33198 0))(
  ( (T!33199 (val!5953 Int)) )
))
(declare-datatypes ((List!20770 0))(
  ( (Nil!20688) (Cons!20688 (h!26089 T!33198) (t!172935 List!20770)) )
))
(declare-datatypes ((IArray!13771 0))(
  ( (IArray!13772 (innerList!6943 List!20770)) )
))
(declare-datatypes ((Conc!6883 0))(
  ( (Node!6883 (left!16678 Conc!6883) (right!17008 Conc!6883) (csize!13996 Int) (cheight!7094 Int)) (Leaf!10093 (xs!9765 IArray!13771) (csize!13997 Int)) (Empty!6883) )
))
(declare-fun t!4595 () Conc!6883)

(declare-fun isBalanced!2184 (Conc!6883) Bool)

(assert (=> start!187022 (= res!836662 (isBalanced!2184 t!4595))))

(assert (=> start!187022 e!1192486))

(declare-fun e!1192487 () Bool)

(declare-fun inv!27416 (Conc!6883) Bool)

(assert (=> start!187022 (and (inv!27416 t!4595) e!1192487)))

(declare-fun b!1868720 () Bool)

(declare-fun inv!27417 (IArray!13771) Bool)

(assert (=> b!1868720 (= e!1192487 (and (inv!27417 (xs!9765 t!4595)) e!1192484))))

(declare-fun b!1868721 () Bool)

(declare-fun res!836658 () Bool)

(assert (=> b!1868721 (=> (not res!836658) (not e!1192486))))

(assert (=> b!1868721 (= res!836658 (and (not (is-Leaf!10093 t!4595)) (is-Node!6883 t!4595)))))

(declare-fun b!1868722 () Bool)

(declare-fun e!1192485 () Bool)

(assert (=> b!1868722 (= e!1192486 e!1192485)))

(declare-fun res!836659 () Bool)

(assert (=> b!1868722 (=> res!836659 e!1192485)))

(declare-fun lt!718920 () Conc!6883)

(assert (=> b!1868722 (= res!836659 (not (isBalanced!2184 lt!718920)))))

(declare-fun tail!2834 (Conc!6883) Conc!6883)

(assert (=> b!1868722 (= lt!718920 (tail!2834 (right!17008 t!4595)))))

(declare-fun b!1868723 () Bool)

(declare-fun res!836660 () Bool)

(assert (=> b!1868723 (=> (not res!836660) (not e!1192486))))

(declare-fun isEmpty!12918 (Conc!6883) Bool)

(assert (=> b!1868723 (= res!836660 (not (isEmpty!12918 t!4595)))))

(declare-fun b!1868724 () Bool)

(declare-fun res!836661 () Bool)

(assert (=> b!1868724 (=> (not res!836661) (not e!1192486))))

(assert (=> b!1868724 (= res!836661 (isEmpty!12918 (left!16678 t!4595)))))

(declare-fun b!1868725 () Bool)

(declare-fun tp!531827 () Bool)

(declare-fun tp!531828 () Bool)

(assert (=> b!1868725 (= e!1192487 (and (inv!27416 (left!16678 t!4595)) tp!531827 (inv!27416 (right!17008 t!4595)) tp!531828))))

(declare-fun b!1868726 () Bool)

(declare-fun list!8473 (Conc!6883) List!20770)

(declare-fun tail!2835 (List!20770) List!20770)

(assert (=> b!1868726 (= e!1192485 (not (= (list!8473 lt!718920) (tail!2835 (list!8473 t!4595)))))))

(assert (= (and start!187022 res!836662) b!1868723))

(assert (= (and b!1868723 res!836660) b!1868721))

(assert (= (and b!1868721 res!836658) b!1868724))

(assert (= (and b!1868724 res!836661) b!1868722))

(assert (= (and b!1868722 (not res!836659)) b!1868726))

(assert (= (and start!187022 (is-Node!6883 t!4595)) b!1868725))

(assert (= b!1868720 b!1868719))

(assert (= (and start!187022 (is-Leaf!10093 t!4595)) b!1868720))

(declare-fun m!2294375 () Bool)

(assert (=> b!1868723 m!2294375))

(declare-fun m!2294377 () Bool)

(assert (=> b!1868726 m!2294377))

(declare-fun m!2294379 () Bool)

(assert (=> b!1868726 m!2294379))

(assert (=> b!1868726 m!2294379))

(declare-fun m!2294381 () Bool)

(assert (=> b!1868726 m!2294381))

(declare-fun m!2294383 () Bool)

(assert (=> b!1868725 m!2294383))

(declare-fun m!2294385 () Bool)

(assert (=> b!1868725 m!2294385))

(declare-fun m!2294387 () Bool)

(assert (=> b!1868722 m!2294387))

(declare-fun m!2294389 () Bool)

(assert (=> b!1868722 m!2294389))

(declare-fun m!2294391 () Bool)

(assert (=> b!1868720 m!2294391))

(declare-fun m!2294393 () Bool)

(assert (=> start!187022 m!2294393))

(declare-fun m!2294395 () Bool)

(assert (=> start!187022 m!2294395))

(declare-fun m!2294397 () Bool)

(assert (=> b!1868724 m!2294397))

(push 1)

(assert (not b!1868726))

(assert (not b!1868725))

(assert (not b!1868722))

(assert (not b!1868719))

(assert (not start!187022))

(assert (not b!1868724))

(assert (not b!1868723))

(assert (not b!1868720))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!571206 () Bool)

(declare-fun lt!718926 () Bool)

(declare-fun isEmpty!12920 (List!20770) Bool)

(assert (=> d!571206 (= lt!718926 (isEmpty!12920 (list!8473 t!4595)))))

(declare-fun size!16409 (Conc!6883) Int)

(assert (=> d!571206 (= lt!718926 (= (size!16409 t!4595) 0))))

(assert (=> d!571206 (= (isEmpty!12918 t!4595) lt!718926)))

(declare-fun bs!411884 () Bool)

(assert (= bs!411884 d!571206))

(assert (=> bs!411884 m!2294379))

(assert (=> bs!411884 m!2294379))

(declare-fun m!2294423 () Bool)

(assert (=> bs!411884 m!2294423))

(declare-fun m!2294425 () Bool)

(assert (=> bs!411884 m!2294425))

(assert (=> b!1868723 d!571206))

(declare-fun b!1868779 () Bool)

(declare-fun e!1192512 () Bool)

(assert (=> b!1868779 (= e!1192512 (not (isEmpty!12918 (right!17008 lt!718920))))))

(declare-fun d!571210 () Bool)

(declare-fun res!836694 () Bool)

(declare-fun e!1192513 () Bool)

(assert (=> d!571210 (=> res!836694 e!1192513)))

(assert (=> d!571210 (= res!836694 (not (is-Node!6883 lt!718920)))))

(assert (=> d!571210 (= (isBalanced!2184 lt!718920) e!1192513)))

(declare-fun b!1868780 () Bool)

(assert (=> b!1868780 (= e!1192513 e!1192512)))

(declare-fun res!836693 () Bool)

(assert (=> b!1868780 (=> (not res!836693) (not e!1192512))))

(declare-fun height!1070 (Conc!6883) Int)

(assert (=> b!1868780 (= res!836693 (<= (- 1) (- (height!1070 (left!16678 lt!718920)) (height!1070 (right!17008 lt!718920)))))))

(declare-fun b!1868781 () Bool)

(declare-fun res!836692 () Bool)

(assert (=> b!1868781 (=> (not res!836692) (not e!1192512))))

(assert (=> b!1868781 (= res!836692 (not (isEmpty!12918 (left!16678 lt!718920))))))

(declare-fun b!1868782 () Bool)

(declare-fun res!836690 () Bool)

(assert (=> b!1868782 (=> (not res!836690) (not e!1192512))))

(assert (=> b!1868782 (= res!836690 (isBalanced!2184 (right!17008 lt!718920)))))

(declare-fun b!1868783 () Bool)

(declare-fun res!836695 () Bool)

(assert (=> b!1868783 (=> (not res!836695) (not e!1192512))))

(assert (=> b!1868783 (= res!836695 (isBalanced!2184 (left!16678 lt!718920)))))

(declare-fun b!1868784 () Bool)

(declare-fun res!836691 () Bool)

(assert (=> b!1868784 (=> (not res!836691) (not e!1192512))))

(assert (=> b!1868784 (= res!836691 (<= (- (height!1070 (left!16678 lt!718920)) (height!1070 (right!17008 lt!718920))) 1))))

(assert (= (and d!571210 (not res!836694)) b!1868780))

(assert (= (and b!1868780 res!836693) b!1868784))

(assert (= (and b!1868784 res!836691) b!1868783))

(assert (= (and b!1868783 res!836695) b!1868782))

(assert (= (and b!1868782 res!836690) b!1868781))

(assert (= (and b!1868781 res!836692) b!1868779))

(declare-fun m!2294443 () Bool)

(assert (=> b!1868784 m!2294443))

(declare-fun m!2294445 () Bool)

(assert (=> b!1868784 m!2294445))

(declare-fun m!2294447 () Bool)

(assert (=> b!1868783 m!2294447))

(declare-fun m!2294449 () Bool)

(assert (=> b!1868779 m!2294449))

(assert (=> b!1868780 m!2294443))

(assert (=> b!1868780 m!2294445))

(declare-fun m!2294451 () Bool)

(assert (=> b!1868781 m!2294451))

(declare-fun m!2294453 () Bool)

(assert (=> b!1868782 m!2294453))

(assert (=> b!1868722 d!571210))

(declare-fun d!571218 () Bool)

(declare-fun e!1192540 () Bool)

(assert (=> d!571218 e!1192540))

(declare-fun res!836723 () Bool)

(assert (=> d!571218 (=> (not res!836723) (not e!1192540))))

(declare-fun lt!718964 () Conc!6883)

(assert (=> d!571218 (= res!836723 (isBalanced!2184 lt!718964))))

(declare-fun e!1192544 () Conc!6883)

(assert (=> d!571218 (= lt!718964 e!1192544)))

(declare-fun c!304479 () Bool)

(assert (=> d!571218 (= c!304479 (is-Leaf!10093 (right!17008 t!4595)))))

(assert (=> d!571218 (isBalanced!2184 (right!17008 t!4595))))

(assert (=> d!571218 (= (tail!2834 (right!17008 t!4595)) lt!718964)))

(declare-fun bm!115927 () Bool)

(declare-fun call!115933 () Conc!6883)

(declare-fun c!304478 () Bool)

(assert (=> bm!115927 (= call!115933 (tail!2834 (ite c!304478 (right!17008 (right!17008 t!4595)) (left!16678 (right!17008 t!4595)))))))

(declare-fun b!1868835 () Bool)

(assert (=> b!1868835 (= e!1192540 (= (list!8473 lt!718964) (tail!2835 (list!8473 (right!17008 t!4595)))))))

(declare-fun b!1868836 () Bool)

(declare-datatypes ((Unit!35305 0))(
  ( (Unit!35306) )
))
(declare-fun lt!718961 () Unit!35305)

(declare-fun lt!718960 () Unit!35305)

(assert (=> b!1868836 (= lt!718961 lt!718960)))

(declare-fun call!115932 () List!20770)

(declare-fun lt!718965 () List!20770)

(declare-fun slice!582 (List!20770 Int Int) List!20770)

(declare-fun size!16410 (List!20770) Int)

(assert (=> b!1868836 (= call!115932 (slice!582 lt!718965 1 (size!16410 lt!718965)))))

(declare-fun sliceTailLemma!37 (List!20770) Unit!35305)

(assert (=> b!1868836 (= lt!718960 (sliceTailLemma!37 lt!718965))))

(declare-fun list!8476 (IArray!13771) List!20770)

(assert (=> b!1868836 (= lt!718965 (list!8476 (xs!9765 (right!17008 t!4595))))))

(declare-fun e!1192542 () Conc!6883)

(declare-fun slice!583 (IArray!13771 Int Int) IArray!13771)

(assert (=> b!1868836 (= e!1192542 (Leaf!10093 (slice!583 (xs!9765 (right!17008 t!4595)) 1 (csize!13997 (right!17008 t!4595))) (- (csize!13997 (right!17008 t!4595)) 1)))))

(declare-fun b!1868837 () Bool)

(declare-fun lt!718963 () Unit!35305)

(declare-fun lt!718966 () Unit!35305)

(assert (=> b!1868837 (= lt!718963 lt!718966)))

(declare-fun lt!718959 () List!20770)

(declare-fun lt!718962 () List!20770)

(declare-fun ++!5610 (List!20770 List!20770) List!20770)

(assert (=> b!1868837 (= (tail!2835 (++!5610 lt!718959 lt!718962)) (++!5610 call!115932 lt!718962))))

(declare-fun lemmaTailOfConcatIsTailConcat!39 (List!20770 List!20770) Unit!35305)

(assert (=> b!1868837 (= lt!718966 (lemmaTailOfConcatIsTailConcat!39 lt!718959 lt!718962))))

(assert (=> b!1868837 (= lt!718962 (list!8473 (right!17008 (right!17008 t!4595))))))

(assert (=> b!1868837 (= lt!718959 (list!8473 (left!16678 (right!17008 t!4595))))))

(declare-fun e!1192543 () Conc!6883)

(declare-fun ++!5611 (Conc!6883 Conc!6883) Conc!6883)

(assert (=> b!1868837 (= e!1192543 (++!5611 call!115933 (right!17008 (right!17008 t!4595))))))

(declare-fun b!1868838 () Bool)

(assert (=> b!1868838 (= e!1192544 e!1192542)))

(declare-fun c!304480 () Bool)

(assert (=> b!1868838 (= c!304480 (= (csize!13997 (right!17008 t!4595)) 1))))

(declare-fun b!1868839 () Bool)

(assert (=> b!1868839 (= e!1192544 e!1192543)))

(declare-fun res!836722 () Bool)

(assert (=> b!1868839 (= res!836722 (is-Node!6883 (right!17008 t!4595)))))

(declare-fun e!1192541 () Bool)

(assert (=> b!1868839 (=> (not res!836722) (not e!1192541))))

(assert (=> b!1868839 (= c!304478 e!1192541)))

(declare-fun bm!115928 () Bool)

(assert (=> bm!115928 (= call!115932 (tail!2835 (ite c!304479 lt!718965 lt!718959)))))

(declare-fun b!1868840 () Bool)

(assert (=> b!1868840 (= e!1192543 call!115933)))

(declare-fun b!1868841 () Bool)

(assert (=> b!1868841 (= e!1192541 (isEmpty!12918 (left!16678 (right!17008 t!4595))))))

(declare-fun b!1868842 () Bool)

(assert (=> b!1868842 (= e!1192542 Empty!6883)))

(assert (= (and d!571218 c!304479) b!1868838))

(assert (= (and d!571218 (not c!304479)) b!1868839))

(assert (= (and b!1868838 c!304480) b!1868842))

(assert (= (and b!1868838 (not c!304480)) b!1868836))

(assert (= (and b!1868839 res!836722) b!1868841))

(assert (= (and b!1868839 c!304478) b!1868840))

(assert (= (and b!1868839 (not c!304478)) b!1868837))

(assert (= (or b!1868840 b!1868837) bm!115927))

(assert (= (or b!1868836 b!1868837) bm!115928))

(assert (= (and d!571218 res!836723) b!1868835))

(declare-fun m!2294467 () Bool)

(assert (=> b!1868835 m!2294467))

(declare-fun m!2294469 () Bool)

(assert (=> b!1868835 m!2294469))

(assert (=> b!1868835 m!2294469))

(declare-fun m!2294471 () Bool)

(assert (=> b!1868835 m!2294471))

(declare-fun m!2294473 () Bool)

(assert (=> bm!115927 m!2294473))

(declare-fun m!2294475 () Bool)

(assert (=> b!1868841 m!2294475))

(declare-fun m!2294477 () Bool)

(assert (=> b!1868836 m!2294477))

(declare-fun m!2294479 () Bool)

(assert (=> b!1868836 m!2294479))

(declare-fun m!2294481 () Bool)

(assert (=> b!1868836 m!2294481))

(declare-fun m!2294483 () Bool)

(assert (=> b!1868836 m!2294483))

(assert (=> b!1868836 m!2294481))

(declare-fun m!2294485 () Bool)

(assert (=> b!1868836 m!2294485))

(declare-fun m!2294487 () Bool)

(assert (=> bm!115928 m!2294487))

(declare-fun m!2294489 () Bool)

(assert (=> b!1868837 m!2294489))

(declare-fun m!2294491 () Bool)

(assert (=> b!1868837 m!2294491))

(assert (=> b!1868837 m!2294489))

(declare-fun m!2294493 () Bool)

(assert (=> b!1868837 m!2294493))

(declare-fun m!2294495 () Bool)

(assert (=> b!1868837 m!2294495))

(declare-fun m!2294497 () Bool)

(assert (=> b!1868837 m!2294497))

(declare-fun m!2294499 () Bool)

(assert (=> b!1868837 m!2294499))

(declare-fun m!2294501 () Bool)

(assert (=> b!1868837 m!2294501))

(declare-fun m!2294503 () Bool)

(assert (=> d!571218 m!2294503))

(declare-fun m!2294505 () Bool)

(assert (=> d!571218 m!2294505))

(assert (=> b!1868722 d!571218))

(declare-fun d!571222 () Bool)

(declare-fun lt!718967 () Bool)

(assert (=> d!571222 (= lt!718967 (isEmpty!12920 (list!8473 (left!16678 t!4595))))))

(assert (=> d!571222 (= lt!718967 (= (size!16409 (left!16678 t!4595)) 0))))

(assert (=> d!571222 (= (isEmpty!12918 (left!16678 t!4595)) lt!718967)))

(declare-fun bs!411885 () Bool)

(assert (= bs!411885 d!571222))

(declare-fun m!2294507 () Bool)

(assert (=> bs!411885 m!2294507))

(assert (=> bs!411885 m!2294507))

(declare-fun m!2294509 () Bool)

(assert (=> bs!411885 m!2294509))

(declare-fun m!2294511 () Bool)

(assert (=> bs!411885 m!2294511))

(assert (=> b!1868724 d!571222))

(declare-fun d!571224 () Bool)

(assert (=> d!571224 (= (inv!27417 (xs!9765 t!4595)) (<= (size!16410 (innerList!6943 (xs!9765 t!4595))) 2147483647))))

(declare-fun bs!411886 () Bool)

(assert (= bs!411886 d!571224))

(declare-fun m!2294513 () Bool)

(assert (=> bs!411886 m!2294513))

(assert (=> b!1868720 d!571224))

(declare-fun d!571226 () Bool)

(declare-fun c!304486 () Bool)

(assert (=> d!571226 (= c!304486 (is-Node!6883 (left!16678 t!4595)))))

(declare-fun e!1192554 () Bool)

(assert (=> d!571226 (= (inv!27416 (left!16678 t!4595)) e!1192554)))

(declare-fun b!1868857 () Bool)

(declare-fun inv!27420 (Conc!6883) Bool)

(assert (=> b!1868857 (= e!1192554 (inv!27420 (left!16678 t!4595)))))

(declare-fun b!1868858 () Bool)

(declare-fun e!1192555 () Bool)

(assert (=> b!1868858 (= e!1192554 e!1192555)))

(declare-fun res!836728 () Bool)

(assert (=> b!1868858 (= res!836728 (not (is-Leaf!10093 (left!16678 t!4595))))))

(assert (=> b!1868858 (=> res!836728 e!1192555)))

(declare-fun b!1868859 () Bool)

(declare-fun inv!27421 (Conc!6883) Bool)

(assert (=> b!1868859 (= e!1192555 (inv!27421 (left!16678 t!4595)))))

(assert (= (and d!571226 c!304486) b!1868857))

(assert (= (and d!571226 (not c!304486)) b!1868858))

(assert (= (and b!1868858 (not res!836728)) b!1868859))

(declare-fun m!2294553 () Bool)

(assert (=> b!1868857 m!2294553))

(declare-fun m!2294555 () Bool)

(assert (=> b!1868859 m!2294555))

(assert (=> b!1868725 d!571226))

(declare-fun d!571230 () Bool)

(declare-fun c!304487 () Bool)

(assert (=> d!571230 (= c!304487 (is-Node!6883 (right!17008 t!4595)))))

(declare-fun e!1192556 () Bool)

(assert (=> d!571230 (= (inv!27416 (right!17008 t!4595)) e!1192556)))

(declare-fun b!1868860 () Bool)

(assert (=> b!1868860 (= e!1192556 (inv!27420 (right!17008 t!4595)))))

(declare-fun b!1868861 () Bool)

(declare-fun e!1192557 () Bool)

(assert (=> b!1868861 (= e!1192556 e!1192557)))

(declare-fun res!836729 () Bool)

(assert (=> b!1868861 (= res!836729 (not (is-Leaf!10093 (right!17008 t!4595))))))

(assert (=> b!1868861 (=> res!836729 e!1192557)))

(declare-fun b!1868862 () Bool)

(assert (=> b!1868862 (= e!1192557 (inv!27421 (right!17008 t!4595)))))

(assert (= (and d!571230 c!304487) b!1868860))

(assert (= (and d!571230 (not c!304487)) b!1868861))

(assert (= (and b!1868861 (not res!836729)) b!1868862))

(declare-fun m!2294557 () Bool)

(assert (=> b!1868860 m!2294557))

(declare-fun m!2294559 () Bool)

(assert (=> b!1868862 m!2294559))

(assert (=> b!1868725 d!571230))

(declare-fun b!1868863 () Bool)

(declare-fun e!1192558 () Bool)

(assert (=> b!1868863 (= e!1192558 (not (isEmpty!12918 (right!17008 t!4595))))))

(declare-fun d!571232 () Bool)

(declare-fun res!836734 () Bool)

(declare-fun e!1192559 () Bool)

(assert (=> d!571232 (=> res!836734 e!1192559)))

(assert (=> d!571232 (= res!836734 (not (is-Node!6883 t!4595)))))

(assert (=> d!571232 (= (isBalanced!2184 t!4595) e!1192559)))

(declare-fun b!1868864 () Bool)

(assert (=> b!1868864 (= e!1192559 e!1192558)))

(declare-fun res!836733 () Bool)

(assert (=> b!1868864 (=> (not res!836733) (not e!1192558))))

(assert (=> b!1868864 (= res!836733 (<= (- 1) (- (height!1070 (left!16678 t!4595)) (height!1070 (right!17008 t!4595)))))))

(declare-fun b!1868865 () Bool)

(declare-fun res!836732 () Bool)

(assert (=> b!1868865 (=> (not res!836732) (not e!1192558))))

(assert (=> b!1868865 (= res!836732 (not (isEmpty!12918 (left!16678 t!4595))))))

(declare-fun b!1868866 () Bool)

(declare-fun res!836730 () Bool)

(assert (=> b!1868866 (=> (not res!836730) (not e!1192558))))

(assert (=> b!1868866 (= res!836730 (isBalanced!2184 (right!17008 t!4595)))))

(declare-fun b!1868867 () Bool)

(declare-fun res!836735 () Bool)

(assert (=> b!1868867 (=> (not res!836735) (not e!1192558))))

(assert (=> b!1868867 (= res!836735 (isBalanced!2184 (left!16678 t!4595)))))

(declare-fun b!1868868 () Bool)

(declare-fun res!836731 () Bool)

(assert (=> b!1868868 (=> (not res!836731) (not e!1192558))))

(assert (=> b!1868868 (= res!836731 (<= (- (height!1070 (left!16678 t!4595)) (height!1070 (right!17008 t!4595))) 1))))

(assert (= (and d!571232 (not res!836734)) b!1868864))

(assert (= (and b!1868864 res!836733) b!1868868))

(assert (= (and b!1868868 res!836731) b!1868867))

(assert (= (and b!1868867 res!836735) b!1868866))

(assert (= (and b!1868866 res!836730) b!1868865))

(assert (= (and b!1868865 res!836732) b!1868863))

(declare-fun m!2294561 () Bool)

(assert (=> b!1868868 m!2294561))

(declare-fun m!2294563 () Bool)

(assert (=> b!1868868 m!2294563))

(declare-fun m!2294565 () Bool)

(assert (=> b!1868867 m!2294565))

(declare-fun m!2294567 () Bool)

(assert (=> b!1868863 m!2294567))

(assert (=> b!1868864 m!2294561))

(assert (=> b!1868864 m!2294563))

(assert (=> b!1868865 m!2294397))

(assert (=> b!1868866 m!2294505))

(assert (=> start!187022 d!571232))

(declare-fun d!571234 () Bool)

(declare-fun c!304488 () Bool)

(assert (=> d!571234 (= c!304488 (is-Node!6883 t!4595))))

(declare-fun e!1192560 () Bool)

(assert (=> d!571234 (= (inv!27416 t!4595) e!1192560)))

(declare-fun b!1868869 () Bool)

(assert (=> b!1868869 (= e!1192560 (inv!27420 t!4595))))

(declare-fun b!1868870 () Bool)

(declare-fun e!1192561 () Bool)

(assert (=> b!1868870 (= e!1192560 e!1192561)))

(declare-fun res!836736 () Bool)

(assert (=> b!1868870 (= res!836736 (not (is-Leaf!10093 t!4595)))))

(assert (=> b!1868870 (=> res!836736 e!1192561)))

(declare-fun b!1868871 () Bool)

(assert (=> b!1868871 (= e!1192561 (inv!27421 t!4595))))

(assert (= (and d!571234 c!304488) b!1868869))

(assert (= (and d!571234 (not c!304488)) b!1868870))

(assert (= (and b!1868870 (not res!836736)) b!1868871))

(declare-fun m!2294569 () Bool)

(assert (=> b!1868869 m!2294569))

(declare-fun m!2294571 () Bool)

(assert (=> b!1868871 m!2294571))

(assert (=> start!187022 d!571234))

(declare-fun b!1868893 () Bool)

(declare-fun e!1192574 () List!20770)

(declare-fun e!1192575 () List!20770)

(assert (=> b!1868893 (= e!1192574 e!1192575)))

(declare-fun c!304498 () Bool)

(assert (=> b!1868893 (= c!304498 (is-Leaf!10093 lt!718920))))

(declare-fun b!1868894 () Bool)

(assert (=> b!1868894 (= e!1192575 (list!8476 (xs!9765 lt!718920)))))

(declare-fun d!571236 () Bool)

(declare-fun c!304497 () Bool)

(assert (=> d!571236 (= c!304497 (is-Empty!6883 lt!718920))))

(assert (=> d!571236 (= (list!8473 lt!718920) e!1192574)))

(declare-fun b!1868892 () Bool)

(assert (=> b!1868892 (= e!1192574 Nil!20688)))

(declare-fun b!1868895 () Bool)

(assert (=> b!1868895 (= e!1192575 (++!5610 (list!8473 (left!16678 lt!718920)) (list!8473 (right!17008 lt!718920))))))

(assert (= (and d!571236 c!304497) b!1868892))

(assert (= (and d!571236 (not c!304497)) b!1868893))

(assert (= (and b!1868893 c!304498) b!1868894))

(assert (= (and b!1868893 (not c!304498)) b!1868895))

(declare-fun m!2294581 () Bool)

(assert (=> b!1868894 m!2294581))

(declare-fun m!2294583 () Bool)

(assert (=> b!1868895 m!2294583))

(declare-fun m!2294585 () Bool)

(assert (=> b!1868895 m!2294585))

(assert (=> b!1868895 m!2294583))

(assert (=> b!1868895 m!2294585))

(declare-fun m!2294587 () Bool)

(assert (=> b!1868895 m!2294587))

(assert (=> b!1868726 d!571236))

(declare-fun d!571242 () Bool)

(assert (=> d!571242 (= (tail!2835 (list!8473 t!4595)) (t!172935 (list!8473 t!4595)))))

(assert (=> b!1868726 d!571242))

(declare-fun b!1868897 () Bool)

(declare-fun e!1192576 () List!20770)

(declare-fun e!1192577 () List!20770)

(assert (=> b!1868897 (= e!1192576 e!1192577)))

(declare-fun c!304500 () Bool)

(assert (=> b!1868897 (= c!304500 (is-Leaf!10093 t!4595))))

(declare-fun b!1868898 () Bool)

(assert (=> b!1868898 (= e!1192577 (list!8476 (xs!9765 t!4595)))))

(declare-fun d!571244 () Bool)

(declare-fun c!304499 () Bool)

(assert (=> d!571244 (= c!304499 (is-Empty!6883 t!4595))))

(assert (=> d!571244 (= (list!8473 t!4595) e!1192576)))

(declare-fun b!1868896 () Bool)

(assert (=> b!1868896 (= e!1192576 Nil!20688)))

(declare-fun b!1868899 () Bool)

(assert (=> b!1868899 (= e!1192577 (++!5610 (list!8473 (left!16678 t!4595)) (list!8473 (right!17008 t!4595))))))

(assert (= (and d!571244 c!304499) b!1868896))

(assert (= (and d!571244 (not c!304499)) b!1868897))

(assert (= (and b!1868897 c!304500) b!1868898))

(assert (= (and b!1868897 (not c!304500)) b!1868899))

(declare-fun m!2294589 () Bool)

(assert (=> b!1868898 m!2294589))

(assert (=> b!1868899 m!2294507))

(assert (=> b!1868899 m!2294469))

(assert (=> b!1868899 m!2294507))

(assert (=> b!1868899 m!2294469))

(declare-fun m!2294591 () Bool)

(assert (=> b!1868899 m!2294591))

(assert (=> b!1868726 d!571244))

(declare-fun b!1868910 () Bool)

(declare-fun e!1192582 () Bool)

(declare-fun tp_is_empty!8685 () Bool)

(declare-fun tp!531840 () Bool)

(assert (=> b!1868910 (= e!1192582 (and tp_is_empty!8685 tp!531840))))

(assert (=> b!1868719 (= tp!531826 e!1192582)))

(assert (= (and b!1868719 (is-Cons!20688 (innerList!6943 (xs!9765 t!4595)))) b!1868910))

(declare-fun b!1868922 () Bool)

(declare-fun tp!531847 () Bool)

(declare-fun e!1192590 () Bool)

(declare-fun tp!531848 () Bool)

(assert (=> b!1868922 (= e!1192590 (and (inv!27416 (left!16678 (left!16678 t!4595))) tp!531847 (inv!27416 (right!17008 (left!16678 t!4595))) tp!531848))))

(declare-fun b!1868924 () Bool)

(declare-fun e!1192589 () Bool)

(declare-fun tp!531849 () Bool)

(assert (=> b!1868924 (= e!1192589 tp!531849)))

(declare-fun b!1868923 () Bool)

(assert (=> b!1868923 (= e!1192590 (and (inv!27417 (xs!9765 (left!16678 t!4595))) e!1192589))))

(assert (=> b!1868725 (= tp!531827 (and (inv!27416 (left!16678 t!4595)) e!1192590))))

(assert (= (and b!1868725 (is-Node!6883 (left!16678 t!4595))) b!1868922))

(assert (= b!1868923 b!1868924))

(assert (= (and b!1868725 (is-Leaf!10093 (left!16678 t!4595))) b!1868923))

(declare-fun m!2294609 () Bool)

(assert (=> b!1868922 m!2294609))

(declare-fun m!2294611 () Bool)

(assert (=> b!1868922 m!2294611))

(declare-fun m!2294613 () Bool)

(assert (=> b!1868923 m!2294613))

(assert (=> b!1868725 m!2294383))

(declare-fun e!1192592 () Bool)

(declare-fun tp!531851 () Bool)

(declare-fun tp!531850 () Bool)

(declare-fun b!1868925 () Bool)

(assert (=> b!1868925 (= e!1192592 (and (inv!27416 (left!16678 (right!17008 t!4595))) tp!531850 (inv!27416 (right!17008 (right!17008 t!4595))) tp!531851))))

(declare-fun b!1868927 () Bool)

(declare-fun e!1192591 () Bool)

(declare-fun tp!531852 () Bool)

(assert (=> b!1868927 (= e!1192591 tp!531852)))

(declare-fun b!1868926 () Bool)

(assert (=> b!1868926 (= e!1192592 (and (inv!27417 (xs!9765 (right!17008 t!4595))) e!1192591))))

(assert (=> b!1868725 (= tp!531828 (and (inv!27416 (right!17008 t!4595)) e!1192592))))

(assert (= (and b!1868725 (is-Node!6883 (right!17008 t!4595))) b!1868925))

(assert (= b!1868926 b!1868927))

(assert (= (and b!1868725 (is-Leaf!10093 (right!17008 t!4595))) b!1868926))

(declare-fun m!2294617 () Bool)

(assert (=> b!1868925 m!2294617))

(declare-fun m!2294619 () Bool)

(assert (=> b!1868925 m!2294619))

(declare-fun m!2294621 () Bool)

(assert (=> b!1868926 m!2294621))

(assert (=> b!1868725 m!2294385))

(push 1)

(assert (not b!1868924))

(assert (not b!1868725))

(assert (not bm!115927))

(assert (not d!571206))

(assert (not b!1868836))

(assert (not b!1868862))

(assert (not b!1868860))

(assert (not b!1868859))

(assert (not b!1868841))

(assert (not b!1868866))

(assert (not b!1868781))

(assert (not b!1868867))

(assert (not b!1868926))

(assert (not b!1868864))

(assert (not b!1868922))

(assert (not d!571224))

(assert (not b!1868899))

(assert (not b!1868782))

(assert (not b!1868923))

(assert (not b!1868910))

(assert (not b!1868865))

(assert (not b!1868925))

(assert (not b!1868869))

(assert (not b!1868779))

(assert (not b!1868898))

(assert (not b!1868927))

(assert (not b!1868871))

(assert (not b!1868857))

(assert (not bm!115928))

(assert (not b!1868837))

(assert (not b!1868894))

(assert (not b!1868863))

(assert (not b!1868783))

(assert (not b!1868784))

(assert (not b!1868868))

(assert (not b!1868895))

(assert (not d!571218))

(assert (not d!571222))

(assert (not b!1868780))

(assert (not b!1868835))

(assert tp_is_empty!8685)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

