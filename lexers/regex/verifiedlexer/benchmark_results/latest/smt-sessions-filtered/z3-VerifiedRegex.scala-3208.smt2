; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!187000 () Bool)

(assert start!187000)

(declare-fun res!836601 () Bool)

(declare-fun e!1192404 () Bool)

(assert (=> start!187000 (=> (not res!836601) (not e!1192404))))

(declare-datatypes ((T!33186 0))(
  ( (T!33187 (val!5952 Int)) )
))
(declare-datatypes ((List!20769 0))(
  ( (Nil!20687) (Cons!20687 (h!26088 T!33186) (t!172930 List!20769)) )
))
(declare-datatypes ((IArray!13769 0))(
  ( (IArray!13770 (innerList!6942 List!20769)) )
))
(declare-datatypes ((Conc!6882 0))(
  ( (Node!6882 (left!16676 Conc!6882) (right!17006 Conc!6882) (csize!13994 Int) (cheight!7093 Int)) (Leaf!10091 (xs!9764 IArray!13769) (csize!13995 Int)) (Empty!6882) )
))
(declare-fun t!4595 () Conc!6882)

(declare-fun isBalanced!2183 (Conc!6882) Bool)

(assert (=> start!187000 (= res!836601 (isBalanced!2183 t!4595))))

(assert (=> start!187000 e!1192404))

(declare-fun e!1192405 () Bool)

(declare-fun inv!27407 (Conc!6882) Bool)

(assert (=> start!187000 (and (inv!27407 t!4595) e!1192405)))

(declare-fun b!1868560 () Bool)

(declare-fun e!1192403 () Bool)

(declare-fun inv!27408 (IArray!13769) Bool)

(assert (=> b!1868560 (= e!1192405 (and (inv!27408 (xs!9764 t!4595)) e!1192403))))

(declare-fun tp!531787 () Bool)

(declare-fun tp!531789 () Bool)

(declare-fun b!1868561 () Bool)

(assert (=> b!1868561 (= e!1192405 (and (inv!27407 (left!16676 t!4595)) tp!531787 (inv!27407 (right!17006 t!4595)) tp!531789))))

(declare-fun b!1868562 () Bool)

(declare-fun res!836598 () Bool)

(assert (=> b!1868562 (=> (not res!836598) (not e!1192404))))

(get-info :version)

(assert (=> b!1868562 (= res!836598 (and (not ((_ is Leaf!10091) t!4595)) ((_ is Node!6882) t!4595)))))

(declare-fun b!1868563 () Bool)

(declare-fun res!836599 () Bool)

(assert (=> b!1868563 (=> (not res!836599) (not e!1192404))))

(declare-fun isEmpty!12915 (Conc!6882) Bool)

(assert (=> b!1868563 (= res!836599 (isEmpty!12915 (left!16676 t!4595)))))

(declare-fun b!1868564 () Bool)

(declare-fun ConcPrimitiveSize!14 (Conc!6882) Int)

(assert (=> b!1868564 (= e!1192404 (>= (ConcPrimitiveSize!14 (right!17006 t!4595)) (ConcPrimitiveSize!14 t!4595)))))

(declare-fun b!1868565 () Bool)

(declare-fun res!836600 () Bool)

(assert (=> b!1868565 (=> (not res!836600) (not e!1192404))))

(assert (=> b!1868565 (= res!836600 (not (isEmpty!12915 t!4595)))))

(declare-fun b!1868566 () Bool)

(declare-fun tp!531788 () Bool)

(assert (=> b!1868566 (= e!1192403 tp!531788)))

(assert (= (and start!187000 res!836601) b!1868565))

(assert (= (and b!1868565 res!836600) b!1868562))

(assert (= (and b!1868562 res!836598) b!1868563))

(assert (= (and b!1868563 res!836599) b!1868564))

(assert (= (and start!187000 ((_ is Node!6882) t!4595)) b!1868561))

(assert (= b!1868560 b!1868566))

(assert (= (and start!187000 ((_ is Leaf!10091) t!4595)) b!1868560))

(declare-fun m!2294225 () Bool)

(assert (=> b!1868564 m!2294225))

(declare-fun m!2294227 () Bool)

(assert (=> b!1868564 m!2294227))

(declare-fun m!2294229 () Bool)

(assert (=> b!1868561 m!2294229))

(declare-fun m!2294231 () Bool)

(assert (=> b!1868561 m!2294231))

(declare-fun m!2294233 () Bool)

(assert (=> b!1868560 m!2294233))

(declare-fun m!2294235 () Bool)

(assert (=> b!1868565 m!2294235))

(declare-fun m!2294237 () Bool)

(assert (=> b!1868563 m!2294237))

(declare-fun m!2294239 () Bool)

(assert (=> start!187000 m!2294239))

(declare-fun m!2294241 () Bool)

(assert (=> start!187000 m!2294241))

(check-sat (not b!1868563) (not b!1868564) (not b!1868561) (not b!1868565) (not b!1868560) (not b!1868566) (not start!187000))
(check-sat)
(get-model)

(declare-fun d!571171 () Bool)

(declare-fun c!304438 () Bool)

(assert (=> d!571171 (= c!304438 ((_ is Node!6882) (left!16676 t!4595)))))

(declare-fun e!1192414 () Bool)

(assert (=> d!571171 (= (inv!27407 (left!16676 t!4595)) e!1192414)))

(declare-fun b!1868581 () Bool)

(declare-fun inv!27409 (Conc!6882) Bool)

(assert (=> b!1868581 (= e!1192414 (inv!27409 (left!16676 t!4595)))))

(declare-fun b!1868582 () Bool)

(declare-fun e!1192415 () Bool)

(assert (=> b!1868582 (= e!1192414 e!1192415)))

(declare-fun res!836604 () Bool)

(assert (=> b!1868582 (= res!836604 (not ((_ is Leaf!10091) (left!16676 t!4595))))))

(assert (=> b!1868582 (=> res!836604 e!1192415)))

(declare-fun b!1868583 () Bool)

(declare-fun inv!27410 (Conc!6882) Bool)

(assert (=> b!1868583 (= e!1192415 (inv!27410 (left!16676 t!4595)))))

(assert (= (and d!571171 c!304438) b!1868581))

(assert (= (and d!571171 (not c!304438)) b!1868582))

(assert (= (and b!1868582 (not res!836604)) b!1868583))

(declare-fun m!2294243 () Bool)

(assert (=> b!1868581 m!2294243))

(declare-fun m!2294245 () Bool)

(assert (=> b!1868583 m!2294245))

(assert (=> b!1868561 d!571171))

(declare-fun d!571173 () Bool)

(declare-fun c!304439 () Bool)

(assert (=> d!571173 (= c!304439 ((_ is Node!6882) (right!17006 t!4595)))))

(declare-fun e!1192416 () Bool)

(assert (=> d!571173 (= (inv!27407 (right!17006 t!4595)) e!1192416)))

(declare-fun b!1868584 () Bool)

(assert (=> b!1868584 (= e!1192416 (inv!27409 (right!17006 t!4595)))))

(declare-fun b!1868585 () Bool)

(declare-fun e!1192417 () Bool)

(assert (=> b!1868585 (= e!1192416 e!1192417)))

(declare-fun res!836605 () Bool)

(assert (=> b!1868585 (= res!836605 (not ((_ is Leaf!10091) (right!17006 t!4595))))))

(assert (=> b!1868585 (=> res!836605 e!1192417)))

(declare-fun b!1868586 () Bool)

(assert (=> b!1868586 (= e!1192417 (inv!27410 (right!17006 t!4595)))))

(assert (= (and d!571173 c!304439) b!1868584))

(assert (= (and d!571173 (not c!304439)) b!1868585))

(assert (= (and b!1868585 (not res!836605)) b!1868586))

(declare-fun m!2294247 () Bool)

(assert (=> b!1868584 m!2294247))

(declare-fun m!2294249 () Bool)

(assert (=> b!1868586 m!2294249))

(assert (=> b!1868561 d!571173))

(declare-fun b!1868603 () Bool)

(declare-fun e!1192427 () Int)

(declare-fun call!115922 () Int)

(declare-fun IArrayPrimitiveSize!13 (IArray!13769) Int)

(assert (=> b!1868603 (= e!1192427 (+ 1 (IArrayPrimitiveSize!13 (xs!9764 (right!17006 t!4595))) call!115922))))

(declare-fun b!1868604 () Bool)

(declare-fun e!1192426 () Int)

(assert (=> b!1868604 (= e!1192426 e!1192427)))

(declare-fun c!304449 () Bool)

(assert (=> b!1868604 (= c!304449 ((_ is Leaf!10091) (right!17006 t!4595)))))

(declare-fun bm!115917 () Bool)

(declare-fun c!304448 () Bool)

(declare-fun BigIntAbs!0 (Int) Int)

(assert (=> bm!115917 (= call!115922 (BigIntAbs!0 (ite c!304448 (cheight!7093 (right!17006 t!4595)) (csize!13995 (right!17006 t!4595)))))))

(declare-fun d!571175 () Bool)

(declare-fun lt!718910 () Int)

(assert (=> d!571175 (>= lt!718910 0)))

(assert (=> d!571175 (= lt!718910 e!1192426)))

(assert (=> d!571175 (= c!304448 ((_ is Node!6882) (right!17006 t!4595)))))

(assert (=> d!571175 (= (ConcPrimitiveSize!14 (right!17006 t!4595)) lt!718910)))

(declare-fun b!1868605 () Bool)

(assert (=> b!1868605 (= e!1192427 0)))

(declare-fun b!1868606 () Bool)

(assert (=> b!1868606 (= e!1192426 (+ 1 (ConcPrimitiveSize!14 (left!16676 (right!17006 t!4595))) (ConcPrimitiveSize!14 (right!17006 (right!17006 t!4595))) (BigIntAbs!0 (csize!13994 (right!17006 t!4595))) call!115922))))

(assert (= (and d!571175 c!304448) b!1868606))

(assert (= (and d!571175 (not c!304448)) b!1868604))

(assert (= (and b!1868604 c!304449) b!1868603))

(assert (= (and b!1868604 (not c!304449)) b!1868605))

(assert (= (or b!1868606 b!1868603) bm!115917))

(declare-fun m!2294269 () Bool)

(assert (=> b!1868603 m!2294269))

(declare-fun m!2294271 () Bool)

(assert (=> bm!115917 m!2294271))

(declare-fun m!2294273 () Bool)

(assert (=> b!1868606 m!2294273))

(declare-fun m!2294277 () Bool)

(assert (=> b!1868606 m!2294277))

(declare-fun m!2294279 () Bool)

(assert (=> b!1868606 m!2294279))

(assert (=> b!1868564 d!571175))

(declare-fun b!1868607 () Bool)

(declare-fun e!1192429 () Int)

(declare-fun call!115923 () Int)

(assert (=> b!1868607 (= e!1192429 (+ 1 (IArrayPrimitiveSize!13 (xs!9764 t!4595)) call!115923))))

(declare-fun b!1868608 () Bool)

(declare-fun e!1192428 () Int)

(assert (=> b!1868608 (= e!1192428 e!1192429)))

(declare-fun c!304451 () Bool)

(assert (=> b!1868608 (= c!304451 ((_ is Leaf!10091) t!4595))))

(declare-fun bm!115918 () Bool)

(declare-fun c!304450 () Bool)

(assert (=> bm!115918 (= call!115923 (BigIntAbs!0 (ite c!304450 (cheight!7093 t!4595) (csize!13995 t!4595))))))

(declare-fun d!571181 () Bool)

(declare-fun lt!718912 () Int)

(assert (=> d!571181 (>= lt!718912 0)))

(assert (=> d!571181 (= lt!718912 e!1192428)))

(assert (=> d!571181 (= c!304450 ((_ is Node!6882) t!4595))))

(assert (=> d!571181 (= (ConcPrimitiveSize!14 t!4595) lt!718912)))

(declare-fun b!1868609 () Bool)

(assert (=> b!1868609 (= e!1192429 0)))

(declare-fun b!1868610 () Bool)

(assert (=> b!1868610 (= e!1192428 (+ 1 (ConcPrimitiveSize!14 (left!16676 t!4595)) (ConcPrimitiveSize!14 (right!17006 t!4595)) (BigIntAbs!0 (csize!13994 t!4595)) call!115923))))

(assert (= (and d!571181 c!304450) b!1868610))

(assert (= (and d!571181 (not c!304450)) b!1868608))

(assert (= (and b!1868608 c!304451) b!1868607))

(assert (= (and b!1868608 (not c!304451)) b!1868609))

(assert (= (or b!1868610 b!1868607) bm!115918))

(declare-fun m!2294285 () Bool)

(assert (=> b!1868607 m!2294285))

(declare-fun m!2294287 () Bool)

(assert (=> bm!115918 m!2294287))

(declare-fun m!2294289 () Bool)

(assert (=> b!1868610 m!2294289))

(assert (=> b!1868610 m!2294225))

(declare-fun m!2294291 () Bool)

(assert (=> b!1868610 m!2294291))

(assert (=> b!1868564 d!571181))

(declare-fun b!1868635 () Bool)

(declare-fun e!1192438 () Bool)

(assert (=> b!1868635 (= e!1192438 (not (isEmpty!12915 (right!17006 t!4595))))))

(declare-fun b!1868636 () Bool)

(declare-fun res!836630 () Bool)

(assert (=> b!1868636 (=> (not res!836630) (not e!1192438))))

(assert (=> b!1868636 (= res!836630 (isBalanced!2183 (right!17006 t!4595)))))

(declare-fun b!1868637 () Bool)

(declare-fun res!836635 () Bool)

(assert (=> b!1868637 (=> (not res!836635) (not e!1192438))))

(assert (=> b!1868637 (= res!836635 (isBalanced!2183 (left!16676 t!4595)))))

(declare-fun b!1868639 () Bool)

(declare-fun res!836634 () Bool)

(assert (=> b!1868639 (=> (not res!836634) (not e!1192438))))

(assert (=> b!1868639 (= res!836634 (not (isEmpty!12915 (left!16676 t!4595))))))

(declare-fun b!1868640 () Bool)

(declare-fun res!836631 () Bool)

(assert (=> b!1868640 (=> (not res!836631) (not e!1192438))))

(declare-fun height!1068 (Conc!6882) Int)

(assert (=> b!1868640 (= res!836631 (<= (- (height!1068 (left!16676 t!4595)) (height!1068 (right!17006 t!4595))) 1))))

(declare-fun d!571185 () Bool)

(declare-fun res!836632 () Bool)

(declare-fun e!1192439 () Bool)

(assert (=> d!571185 (=> res!836632 e!1192439)))

(assert (=> d!571185 (= res!836632 (not ((_ is Node!6882) t!4595)))))

(assert (=> d!571185 (= (isBalanced!2183 t!4595) e!1192439)))

(declare-fun b!1868638 () Bool)

(assert (=> b!1868638 (= e!1192439 e!1192438)))

(declare-fun res!836633 () Bool)

(assert (=> b!1868638 (=> (not res!836633) (not e!1192438))))

(assert (=> b!1868638 (= res!836633 (<= (- 1) (- (height!1068 (left!16676 t!4595)) (height!1068 (right!17006 t!4595)))))))

(assert (= (and d!571185 (not res!836632)) b!1868638))

(assert (= (and b!1868638 res!836633) b!1868640))

(assert (= (and b!1868640 res!836631) b!1868637))

(assert (= (and b!1868637 res!836635) b!1868636))

(assert (= (and b!1868636 res!836630) b!1868639))

(assert (= (and b!1868639 res!836634) b!1868635))

(declare-fun m!2294293 () Bool)

(assert (=> b!1868640 m!2294293))

(declare-fun m!2294295 () Bool)

(assert (=> b!1868640 m!2294295))

(declare-fun m!2294297 () Bool)

(assert (=> b!1868636 m!2294297))

(declare-fun m!2294299 () Bool)

(assert (=> b!1868637 m!2294299))

(assert (=> b!1868638 m!2294293))

(assert (=> b!1868638 m!2294295))

(declare-fun m!2294301 () Bool)

(assert (=> b!1868635 m!2294301))

(assert (=> b!1868639 m!2294237))

(assert (=> start!187000 d!571185))

(declare-fun d!571187 () Bool)

(declare-fun c!304452 () Bool)

(assert (=> d!571187 (= c!304452 ((_ is Node!6882) t!4595))))

(declare-fun e!1192440 () Bool)

(assert (=> d!571187 (= (inv!27407 t!4595) e!1192440)))

(declare-fun b!1868641 () Bool)

(assert (=> b!1868641 (= e!1192440 (inv!27409 t!4595))))

(declare-fun b!1868642 () Bool)

(declare-fun e!1192441 () Bool)

(assert (=> b!1868642 (= e!1192440 e!1192441)))

(declare-fun res!836636 () Bool)

(assert (=> b!1868642 (= res!836636 (not ((_ is Leaf!10091) t!4595)))))

(assert (=> b!1868642 (=> res!836636 e!1192441)))

(declare-fun b!1868643 () Bool)

(assert (=> b!1868643 (= e!1192441 (inv!27410 t!4595))))

(assert (= (and d!571187 c!304452) b!1868641))

(assert (= (and d!571187 (not c!304452)) b!1868642))

(assert (= (and b!1868642 (not res!836636)) b!1868643))

(declare-fun m!2294303 () Bool)

(assert (=> b!1868641 m!2294303))

(declare-fun m!2294305 () Bool)

(assert (=> b!1868643 m!2294305))

(assert (=> start!187000 d!571187))

(declare-fun d!571189 () Bool)

(declare-fun lt!718915 () Bool)

(declare-fun isEmpty!12917 (List!20769) Bool)

(declare-fun list!8472 (Conc!6882) List!20769)

(assert (=> d!571189 (= lt!718915 (isEmpty!12917 (list!8472 (left!16676 t!4595))))))

(declare-fun size!16407 (Conc!6882) Int)

(assert (=> d!571189 (= lt!718915 (= (size!16407 (left!16676 t!4595)) 0))))

(assert (=> d!571189 (= (isEmpty!12915 (left!16676 t!4595)) lt!718915)))

(declare-fun bs!411877 () Bool)

(assert (= bs!411877 d!571189))

(declare-fun m!2294317 () Bool)

(assert (=> bs!411877 m!2294317))

(assert (=> bs!411877 m!2294317))

(declare-fun m!2294319 () Bool)

(assert (=> bs!411877 m!2294319))

(declare-fun m!2294321 () Bool)

(assert (=> bs!411877 m!2294321))

(assert (=> b!1868563 d!571189))

(declare-fun d!571193 () Bool)

(declare-fun size!16408 (List!20769) Int)

(assert (=> d!571193 (= (inv!27408 (xs!9764 t!4595)) (<= (size!16408 (innerList!6942 (xs!9764 t!4595))) 2147483647))))

(declare-fun bs!411878 () Bool)

(assert (= bs!411878 d!571193))

(declare-fun m!2294323 () Bool)

(assert (=> bs!411878 m!2294323))

(assert (=> b!1868560 d!571193))

(declare-fun d!571195 () Bool)

(declare-fun lt!718916 () Bool)

(assert (=> d!571195 (= lt!718916 (isEmpty!12917 (list!8472 t!4595)))))

(assert (=> d!571195 (= lt!718916 (= (size!16407 t!4595) 0))))

(assert (=> d!571195 (= (isEmpty!12915 t!4595) lt!718916)))

(declare-fun bs!411879 () Bool)

(assert (= bs!411879 d!571195))

(declare-fun m!2294325 () Bool)

(assert (=> bs!411879 m!2294325))

(assert (=> bs!411879 m!2294325))

(declare-fun m!2294327 () Bool)

(assert (=> bs!411879 m!2294327))

(declare-fun m!2294329 () Bool)

(assert (=> bs!411879 m!2294329))

(assert (=> b!1868565 d!571195))

(declare-fun tp!531796 () Bool)

(declare-fun e!1192455 () Bool)

(declare-fun tp!531798 () Bool)

(declare-fun b!1868667 () Bool)

(assert (=> b!1868667 (= e!1192455 (and (inv!27407 (left!16676 (left!16676 t!4595))) tp!531796 (inv!27407 (right!17006 (left!16676 t!4595))) tp!531798))))

(declare-fun b!1868669 () Bool)

(declare-fun e!1192454 () Bool)

(declare-fun tp!531797 () Bool)

(assert (=> b!1868669 (= e!1192454 tp!531797)))

(declare-fun b!1868668 () Bool)

(assert (=> b!1868668 (= e!1192455 (and (inv!27408 (xs!9764 (left!16676 t!4595))) e!1192454))))

(assert (=> b!1868561 (= tp!531787 (and (inv!27407 (left!16676 t!4595)) e!1192455))))

(assert (= (and b!1868561 ((_ is Node!6882) (left!16676 t!4595))) b!1868667))

(assert (= b!1868668 b!1868669))

(assert (= (and b!1868561 ((_ is Leaf!10091) (left!16676 t!4595))) b!1868668))

(declare-fun m!2294337 () Bool)

(assert (=> b!1868667 m!2294337))

(declare-fun m!2294339 () Bool)

(assert (=> b!1868667 m!2294339))

(declare-fun m!2294343 () Bool)

(assert (=> b!1868668 m!2294343))

(assert (=> b!1868561 m!2294229))

(declare-fun tp!531801 () Bool)

(declare-fun tp!531799 () Bool)

(declare-fun b!1868670 () Bool)

(declare-fun e!1192457 () Bool)

(assert (=> b!1868670 (= e!1192457 (and (inv!27407 (left!16676 (right!17006 t!4595))) tp!531799 (inv!27407 (right!17006 (right!17006 t!4595))) tp!531801))))

(declare-fun b!1868672 () Bool)

(declare-fun e!1192456 () Bool)

(declare-fun tp!531800 () Bool)

(assert (=> b!1868672 (= e!1192456 tp!531800)))

(declare-fun b!1868671 () Bool)

(assert (=> b!1868671 (= e!1192457 (and (inv!27408 (xs!9764 (right!17006 t!4595))) e!1192456))))

(assert (=> b!1868561 (= tp!531789 (and (inv!27407 (right!17006 t!4595)) e!1192457))))

(assert (= (and b!1868561 ((_ is Node!6882) (right!17006 t!4595))) b!1868670))

(assert (= b!1868671 b!1868672))

(assert (= (and b!1868561 ((_ is Leaf!10091) (right!17006 t!4595))) b!1868671))

(declare-fun m!2294347 () Bool)

(assert (=> b!1868670 m!2294347))

(declare-fun m!2294349 () Bool)

(assert (=> b!1868670 m!2294349))

(declare-fun m!2294351 () Bool)

(assert (=> b!1868671 m!2294351))

(assert (=> b!1868561 m!2294231))

(declare-fun b!1868677 () Bool)

(declare-fun e!1192460 () Bool)

(declare-fun tp_is_empty!8681 () Bool)

(declare-fun tp!531804 () Bool)

(assert (=> b!1868677 (= e!1192460 (and tp_is_empty!8681 tp!531804))))

(assert (=> b!1868566 (= tp!531788 e!1192460)))

(assert (= (and b!1868566 ((_ is Cons!20687) (innerList!6942 (xs!9764 t!4595)))) b!1868677))

(check-sat (not b!1868606) (not b!1868640) tp_is_empty!8681 (not b!1868671) (not b!1868610) (not b!1868667) (not b!1868670) (not b!1868643) (not b!1868581) (not b!1868583) (not b!1868586) (not b!1868669) (not b!1868668) (not b!1868607) (not b!1868672) (not b!1868639) (not bm!115918) (not bm!115917) (not b!1868638) (not d!571193) (not b!1868561) (not b!1868603) (not b!1868637) (not d!571195) (not b!1868641) (not b!1868635) (not b!1868677) (not b!1868584) (not b!1868636) (not d!571189))
(check-sat)
