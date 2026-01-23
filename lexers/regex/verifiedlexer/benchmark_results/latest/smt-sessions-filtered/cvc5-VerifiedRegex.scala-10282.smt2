; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!534808 () Bool)

(assert start!534808)

(declare-fun b!5058738 () Bool)

(declare-fun res!2154058 () Bool)

(declare-fun e!3157683 () Bool)

(assert (=> b!5058738 (=> (not res!2154058) (not e!3157683))))

(declare-datatypes ((T!105060 0))(
  ( (T!105061 (val!23639 Int)) )
))
(declare-datatypes ((List!58549 0))(
  ( (Nil!58425) (Cons!58425 (h!64873 T!105060) (t!371242 List!58549)) )
))
(declare-datatypes ((IArray!31171 0))(
  ( (IArray!31172 (innerList!15643 List!58549)) )
))
(declare-datatypes ((Conc!15555 0))(
  ( (Node!15555 (left!42803 Conc!15555) (right!43133 Conc!15555) (csize!31340 Int) (cheight!15766 Int)) (Leaf!25838 (xs!18893 IArray!31171) (csize!31341 Int)) (Empty!15555) )
))
(declare-fun ys!41 () Conc!15555)

(declare-fun isBalanced!4417 (Conc!15555) Bool)

(assert (=> b!5058738 (= res!2154058 (isBalanced!4417 ys!41))))

(declare-fun lt!2087795 () Int)

(declare-fun b!5058739 () Bool)

(declare-fun e!3157685 () Bool)

(declare-fun lt!2087797 () Int)

(declare-fun lt!2087796 () Int)

(declare-fun abs!0 (Int) Int)

(assert (=> b!5058739 (= e!3157685 (>= (abs!0 (- lt!2087796 lt!2087795)) (abs!0 (- lt!2087797 lt!2087795))))))

(declare-fun tp!1413654 () Bool)

(declare-fun e!3157687 () Bool)

(declare-fun b!5058740 () Bool)

(declare-fun tp!1413650 () Bool)

(declare-fun inv!77509 (Conc!15555) Bool)

(assert (=> b!5058740 (= e!3157687 (and (inv!77509 (left!42803 ys!41)) tp!1413650 (inv!77509 (right!43133 ys!41)) tp!1413654))))

(declare-fun b!5058741 () Bool)

(declare-fun e!3157681 () Bool)

(assert (=> b!5058741 (= e!3157683 e!3157681)))

(declare-fun res!2154054 () Bool)

(assert (=> b!5058741 (=> (not res!2154054) (not e!3157681))))

(declare-fun lt!2087794 () Int)

(declare-fun xs!286 () Conc!15555)

(assert (=> b!5058741 (= res!2154054 (and (or (> (- 1) lt!2087794) (> lt!2087794 1)) (< lt!2087794 (- 1)) (is-Node!15555 xs!286)))))

(assert (=> b!5058741 (= lt!2087794 (- lt!2087795 lt!2087797))))

(declare-fun height!2132 (Conc!15555) Int)

(assert (=> b!5058741 (= lt!2087797 (height!2132 xs!286))))

(assert (=> b!5058741 (= lt!2087795 (height!2132 ys!41))))

(declare-fun b!5058742 () Bool)

(assert (=> b!5058742 (= e!3157681 e!3157685)))

(declare-fun res!2154055 () Bool)

(assert (=> b!5058742 (=> (not res!2154055) (not e!3157685))))

(assert (=> b!5058742 (= res!2154055 (>= (height!2132 (left!42803 xs!286)) lt!2087796))))

(assert (=> b!5058742 (= lt!2087796 (height!2132 (right!43133 xs!286)))))

(declare-fun b!5058743 () Bool)

(declare-fun res!2154056 () Bool)

(assert (=> b!5058743 (=> (not res!2154056) (not e!3157683))))

(assert (=> b!5058743 (= res!2154056 (and (not (= xs!286 Empty!15555)) (not (= ys!41 Empty!15555))))))

(declare-fun res!2154057 () Bool)

(assert (=> start!534808 (=> (not res!2154057) (not e!3157683))))

(assert (=> start!534808 (= res!2154057 (isBalanced!4417 xs!286))))

(assert (=> start!534808 e!3157683))

(declare-fun e!3157682 () Bool)

(assert (=> start!534808 (and (inv!77509 xs!286) e!3157682)))

(assert (=> start!534808 (and (inv!77509 ys!41) e!3157687)))

(declare-fun b!5058744 () Bool)

(declare-fun e!3157686 () Bool)

(declare-fun tp!1413651 () Bool)

(assert (=> b!5058744 (= e!3157686 tp!1413651)))

(declare-fun b!5058745 () Bool)

(declare-fun e!3157684 () Bool)

(declare-fun tp!1413653 () Bool)

(assert (=> b!5058745 (= e!3157684 tp!1413653)))

(declare-fun b!5058746 () Bool)

(declare-fun tp!1413655 () Bool)

(declare-fun tp!1413652 () Bool)

(assert (=> b!5058746 (= e!3157682 (and (inv!77509 (left!42803 xs!286)) tp!1413652 (inv!77509 (right!43133 xs!286)) tp!1413655))))

(declare-fun b!5058747 () Bool)

(declare-fun inv!77510 (IArray!31171) Bool)

(assert (=> b!5058747 (= e!3157682 (and (inv!77510 (xs!18893 xs!286)) e!3157684))))

(declare-fun b!5058748 () Bool)

(assert (=> b!5058748 (= e!3157687 (and (inv!77510 (xs!18893 ys!41)) e!3157686))))

(assert (= (and start!534808 res!2154057) b!5058738))

(assert (= (and b!5058738 res!2154058) b!5058743))

(assert (= (and b!5058743 res!2154056) b!5058741))

(assert (= (and b!5058741 res!2154054) b!5058742))

(assert (= (and b!5058742 res!2154055) b!5058739))

(assert (= (and start!534808 (is-Node!15555 xs!286)) b!5058746))

(assert (= b!5058747 b!5058745))

(assert (= (and start!534808 (is-Leaf!25838 xs!286)) b!5058747))

(assert (= (and start!534808 (is-Node!15555 ys!41)) b!5058740))

(assert (= b!5058748 b!5058744))

(assert (= (and start!534808 (is-Leaf!25838 ys!41)) b!5058748))

(declare-fun m!6095394 () Bool)

(assert (=> b!5058748 m!6095394))

(declare-fun m!6095396 () Bool)

(assert (=> start!534808 m!6095396))

(declare-fun m!6095398 () Bool)

(assert (=> start!534808 m!6095398))

(declare-fun m!6095400 () Bool)

(assert (=> start!534808 m!6095400))

(declare-fun m!6095402 () Bool)

(assert (=> b!5058747 m!6095402))

(declare-fun m!6095404 () Bool)

(assert (=> b!5058742 m!6095404))

(declare-fun m!6095406 () Bool)

(assert (=> b!5058742 m!6095406))

(declare-fun m!6095408 () Bool)

(assert (=> b!5058746 m!6095408))

(declare-fun m!6095410 () Bool)

(assert (=> b!5058746 m!6095410))

(declare-fun m!6095412 () Bool)

(assert (=> b!5058738 m!6095412))

(declare-fun m!6095414 () Bool)

(assert (=> b!5058740 m!6095414))

(declare-fun m!6095416 () Bool)

(assert (=> b!5058740 m!6095416))

(declare-fun m!6095418 () Bool)

(assert (=> b!5058741 m!6095418))

(declare-fun m!6095420 () Bool)

(assert (=> b!5058741 m!6095420))

(declare-fun m!6095422 () Bool)

(assert (=> b!5058739 m!6095422))

(declare-fun m!6095424 () Bool)

(assert (=> b!5058739 m!6095424))

(push 1)

(assert (not b!5058742))

(assert (not b!5058748))

(assert (not b!5058744))

(assert (not start!534808))

(assert (not b!5058741))

(assert (not b!5058740))

(assert (not b!5058747))

(assert (not b!5058746))

(assert (not b!5058739))

(assert (not b!5058745))

(assert (not b!5058738))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5058794 () Bool)

(declare-fun res!2154086 () Bool)

(declare-fun e!3157713 () Bool)

(assert (=> b!5058794 (=> (not res!2154086) (not e!3157713))))

(assert (=> b!5058794 (= res!2154086 (<= (- (height!2132 (left!42803 ys!41)) (height!2132 (right!43133 ys!41))) 1))))

(declare-fun b!5058795 () Bool)

(declare-fun res!2154087 () Bool)

(assert (=> b!5058795 (=> (not res!2154087) (not e!3157713))))

(declare-fun isEmpty!31614 (Conc!15555) Bool)

(assert (=> b!5058795 (= res!2154087 (not (isEmpty!31614 (left!42803 ys!41))))))

(declare-fun b!5058796 () Bool)

(assert (=> b!5058796 (= e!3157713 (not (isEmpty!31614 (right!43133 ys!41))))))

(declare-fun b!5058797 () Bool)

(declare-fun res!2154090 () Bool)

(assert (=> b!5058797 (=> (not res!2154090) (not e!3157713))))

(assert (=> b!5058797 (= res!2154090 (isBalanced!4417 (right!43133 ys!41)))))

(declare-fun b!5058798 () Bool)

(declare-fun e!3157714 () Bool)

(assert (=> b!5058798 (= e!3157714 e!3157713)))

(declare-fun res!2154088 () Bool)

(assert (=> b!5058798 (=> (not res!2154088) (not e!3157713))))

(assert (=> b!5058798 (= res!2154088 (<= (- 1) (- (height!2132 (left!42803 ys!41)) (height!2132 (right!43133 ys!41)))))))

(declare-fun d!1628719 () Bool)

(declare-fun res!2154091 () Bool)

(assert (=> d!1628719 (=> res!2154091 e!3157714)))

(assert (=> d!1628719 (= res!2154091 (not (is-Node!15555 ys!41)))))

(assert (=> d!1628719 (= (isBalanced!4417 ys!41) e!3157714)))

(declare-fun b!5058799 () Bool)

(declare-fun res!2154089 () Bool)

(assert (=> b!5058799 (=> (not res!2154089) (not e!3157713))))

(assert (=> b!5058799 (= res!2154089 (isBalanced!4417 (left!42803 ys!41)))))

(assert (= (and d!1628719 (not res!2154091)) b!5058798))

(assert (= (and b!5058798 res!2154088) b!5058794))

(assert (= (and b!5058794 res!2154086) b!5058799))

(assert (= (and b!5058799 res!2154089) b!5058797))

(assert (= (and b!5058797 res!2154090) b!5058795))

(assert (= (and b!5058795 res!2154087) b!5058796))

(declare-fun m!6095458 () Bool)

(assert (=> b!5058798 m!6095458))

(declare-fun m!6095460 () Bool)

(assert (=> b!5058798 m!6095460))

(declare-fun m!6095462 () Bool)

(assert (=> b!5058799 m!6095462))

(declare-fun m!6095464 () Bool)

(assert (=> b!5058795 m!6095464))

(assert (=> b!5058794 m!6095458))

(assert (=> b!5058794 m!6095460))

(declare-fun m!6095466 () Bool)

(assert (=> b!5058796 m!6095466))

(declare-fun m!6095468 () Bool)

(assert (=> b!5058797 m!6095468))

(assert (=> b!5058738 d!1628719))

(declare-fun d!1628723 () Bool)

(declare-fun size!39058 (List!58549) Int)

(assert (=> d!1628723 (= (inv!77510 (xs!18893 xs!286)) (<= (size!39058 (innerList!15643 (xs!18893 xs!286))) 2147483647))))

(declare-fun bs!1189508 () Bool)

(assert (= bs!1189508 d!1628723))

(declare-fun m!6095470 () Bool)

(assert (=> bs!1189508 m!6095470))

(assert (=> b!5058747 d!1628723))

(declare-fun d!1628725 () Bool)

(assert (=> d!1628725 (= (height!2132 (left!42803 xs!286)) (ite (is-Empty!15555 (left!42803 xs!286)) 0 (ite (is-Leaf!25838 (left!42803 xs!286)) 1 (cheight!15766 (left!42803 xs!286)))))))

(assert (=> b!5058742 d!1628725))

(declare-fun d!1628727 () Bool)

(assert (=> d!1628727 (= (height!2132 (right!43133 xs!286)) (ite (is-Empty!15555 (right!43133 xs!286)) 0 (ite (is-Leaf!25838 (right!43133 xs!286)) 1 (cheight!15766 (right!43133 xs!286)))))))

(assert (=> b!5058742 d!1628727))

(declare-fun d!1628729 () Bool)

(assert (=> d!1628729 (= (inv!77510 (xs!18893 ys!41)) (<= (size!39058 (innerList!15643 (xs!18893 ys!41))) 2147483647))))

(declare-fun bs!1189509 () Bool)

(assert (= bs!1189509 d!1628729))

(declare-fun m!6095472 () Bool)

(assert (=> bs!1189509 m!6095472))

(assert (=> b!5058748 d!1628729))

(declare-fun d!1628731 () Bool)

(declare-fun c!868010 () Bool)

(assert (=> d!1628731 (= c!868010 (is-Node!15555 (left!42803 xs!286)))))

(declare-fun e!3157725 () Bool)

(assert (=> d!1628731 (= (inv!77509 (left!42803 xs!286)) e!3157725)))

(declare-fun b!5058824 () Bool)

(declare-fun inv!77513 (Conc!15555) Bool)

(assert (=> b!5058824 (= e!3157725 (inv!77513 (left!42803 xs!286)))))

(declare-fun b!5058825 () Bool)

(declare-fun e!3157726 () Bool)

(assert (=> b!5058825 (= e!3157725 e!3157726)))

(declare-fun res!2154112 () Bool)

(assert (=> b!5058825 (= res!2154112 (not (is-Leaf!25838 (left!42803 xs!286))))))

(assert (=> b!5058825 (=> res!2154112 e!3157726)))

(declare-fun b!5058826 () Bool)

(declare-fun inv!77514 (Conc!15555) Bool)

(assert (=> b!5058826 (= e!3157726 (inv!77514 (left!42803 xs!286)))))

(assert (= (and d!1628731 c!868010) b!5058824))

(assert (= (and d!1628731 (not c!868010)) b!5058825))

(assert (= (and b!5058825 (not res!2154112)) b!5058826))

(declare-fun m!6095474 () Bool)

(assert (=> b!5058824 m!6095474))

(declare-fun m!6095476 () Bool)

(assert (=> b!5058826 m!6095476))

(assert (=> b!5058746 d!1628731))

(declare-fun d!1628733 () Bool)

(declare-fun c!868011 () Bool)

(assert (=> d!1628733 (= c!868011 (is-Node!15555 (right!43133 xs!286)))))

(declare-fun e!3157727 () Bool)

(assert (=> d!1628733 (= (inv!77509 (right!43133 xs!286)) e!3157727)))

(declare-fun b!5058827 () Bool)

(assert (=> b!5058827 (= e!3157727 (inv!77513 (right!43133 xs!286)))))

(declare-fun b!5058828 () Bool)

(declare-fun e!3157728 () Bool)

(assert (=> b!5058828 (= e!3157727 e!3157728)))

(declare-fun res!2154113 () Bool)

(assert (=> b!5058828 (= res!2154113 (not (is-Leaf!25838 (right!43133 xs!286))))))

(assert (=> b!5058828 (=> res!2154113 e!3157728)))

(declare-fun b!5058829 () Bool)

(assert (=> b!5058829 (= e!3157728 (inv!77514 (right!43133 xs!286)))))

(assert (= (and d!1628733 c!868011) b!5058827))

(assert (= (and d!1628733 (not c!868011)) b!5058828))

(assert (= (and b!5058828 (not res!2154113)) b!5058829))

(declare-fun m!6095478 () Bool)

(assert (=> b!5058827 m!6095478))

(declare-fun m!6095480 () Bool)

(assert (=> b!5058829 m!6095480))

(assert (=> b!5058746 d!1628733))

(declare-fun d!1628735 () Bool)

(assert (=> d!1628735 (= (height!2132 xs!286) (ite (is-Empty!15555 xs!286) 0 (ite (is-Leaf!25838 xs!286) 1 (cheight!15766 xs!286))))))

(assert (=> b!5058741 d!1628735))

(declare-fun d!1628737 () Bool)

(assert (=> d!1628737 (= (height!2132 ys!41) (ite (is-Empty!15555 ys!41) 0 (ite (is-Leaf!25838 ys!41) 1 (cheight!15766 ys!41))))))

(assert (=> b!5058741 d!1628737))

(declare-fun d!1628739 () Bool)

(assert (=> d!1628739 (= (abs!0 (- lt!2087796 lt!2087795)) (ite (<= 0 (- lt!2087796 lt!2087795)) (- lt!2087796 lt!2087795) (- (- lt!2087796 lt!2087795))))))

(assert (=> b!5058739 d!1628739))

(declare-fun d!1628743 () Bool)

(assert (=> d!1628743 (= (abs!0 (- lt!2087797 lt!2087795)) (ite (<= 0 (- lt!2087797 lt!2087795)) (- lt!2087797 lt!2087795) (- (- lt!2087797 lt!2087795))))))

(assert (=> b!5058739 d!1628743))

(declare-fun b!5058830 () Bool)

(declare-fun res!2154114 () Bool)

(declare-fun e!3157729 () Bool)

(assert (=> b!5058830 (=> (not res!2154114) (not e!3157729))))

(assert (=> b!5058830 (= res!2154114 (<= (- (height!2132 (left!42803 xs!286)) (height!2132 (right!43133 xs!286))) 1))))

(declare-fun b!5058831 () Bool)

(declare-fun res!2154115 () Bool)

(assert (=> b!5058831 (=> (not res!2154115) (not e!3157729))))

(assert (=> b!5058831 (= res!2154115 (not (isEmpty!31614 (left!42803 xs!286))))))

(declare-fun b!5058832 () Bool)

(assert (=> b!5058832 (= e!3157729 (not (isEmpty!31614 (right!43133 xs!286))))))

(declare-fun b!5058833 () Bool)

(declare-fun res!2154118 () Bool)

(assert (=> b!5058833 (=> (not res!2154118) (not e!3157729))))

(assert (=> b!5058833 (= res!2154118 (isBalanced!4417 (right!43133 xs!286)))))

(declare-fun b!5058834 () Bool)

(declare-fun e!3157730 () Bool)

(assert (=> b!5058834 (= e!3157730 e!3157729)))

(declare-fun res!2154116 () Bool)

(assert (=> b!5058834 (=> (not res!2154116) (not e!3157729))))

(assert (=> b!5058834 (= res!2154116 (<= (- 1) (- (height!2132 (left!42803 xs!286)) (height!2132 (right!43133 xs!286)))))))

(declare-fun d!1628745 () Bool)

(declare-fun res!2154119 () Bool)

(assert (=> d!1628745 (=> res!2154119 e!3157730)))

(assert (=> d!1628745 (= res!2154119 (not (is-Node!15555 xs!286)))))

(assert (=> d!1628745 (= (isBalanced!4417 xs!286) e!3157730)))

(declare-fun b!5058835 () Bool)

(declare-fun res!2154117 () Bool)

(assert (=> b!5058835 (=> (not res!2154117) (not e!3157729))))

(assert (=> b!5058835 (= res!2154117 (isBalanced!4417 (left!42803 xs!286)))))

(assert (= (and d!1628745 (not res!2154119)) b!5058834))

(assert (= (and b!5058834 res!2154116) b!5058830))

(assert (= (and b!5058830 res!2154114) b!5058835))

(assert (= (and b!5058835 res!2154117) b!5058833))

(assert (= (and b!5058833 res!2154118) b!5058831))

(assert (= (and b!5058831 res!2154115) b!5058832))

(assert (=> b!5058834 m!6095404))

(assert (=> b!5058834 m!6095406))

(declare-fun m!6095490 () Bool)

(assert (=> b!5058835 m!6095490))

(declare-fun m!6095492 () Bool)

(assert (=> b!5058831 m!6095492))

(assert (=> b!5058830 m!6095404))

(assert (=> b!5058830 m!6095406))

(declare-fun m!6095494 () Bool)

(assert (=> b!5058832 m!6095494))

(declare-fun m!6095496 () Bool)

(assert (=> b!5058833 m!6095496))

(assert (=> start!534808 d!1628745))

(declare-fun d!1628747 () Bool)

(declare-fun c!868012 () Bool)

(assert (=> d!1628747 (= c!868012 (is-Node!15555 xs!286))))

(declare-fun e!3157731 () Bool)

(assert (=> d!1628747 (= (inv!77509 xs!286) e!3157731)))

(declare-fun b!5058836 () Bool)

(assert (=> b!5058836 (= e!3157731 (inv!77513 xs!286))))

(declare-fun b!5058837 () Bool)

(declare-fun e!3157732 () Bool)

(assert (=> b!5058837 (= e!3157731 e!3157732)))

(declare-fun res!2154120 () Bool)

(assert (=> b!5058837 (= res!2154120 (not (is-Leaf!25838 xs!286)))))

(assert (=> b!5058837 (=> res!2154120 e!3157732)))

(declare-fun b!5058838 () Bool)

(assert (=> b!5058838 (= e!3157732 (inv!77514 xs!286))))

(assert (= (and d!1628747 c!868012) b!5058836))

(assert (= (and d!1628747 (not c!868012)) b!5058837))

(assert (= (and b!5058837 (not res!2154120)) b!5058838))

(declare-fun m!6095498 () Bool)

(assert (=> b!5058836 m!6095498))

(declare-fun m!6095500 () Bool)

(assert (=> b!5058838 m!6095500))

(assert (=> start!534808 d!1628747))

(declare-fun d!1628749 () Bool)

(declare-fun c!868013 () Bool)

(assert (=> d!1628749 (= c!868013 (is-Node!15555 ys!41))))

(declare-fun e!3157733 () Bool)

(assert (=> d!1628749 (= (inv!77509 ys!41) e!3157733)))

(declare-fun b!5058839 () Bool)

(assert (=> b!5058839 (= e!3157733 (inv!77513 ys!41))))

(declare-fun b!5058840 () Bool)

(declare-fun e!3157734 () Bool)

(assert (=> b!5058840 (= e!3157733 e!3157734)))

(declare-fun res!2154121 () Bool)

(assert (=> b!5058840 (= res!2154121 (not (is-Leaf!25838 ys!41)))))

(assert (=> b!5058840 (=> res!2154121 e!3157734)))

(declare-fun b!5058841 () Bool)

(assert (=> b!5058841 (= e!3157734 (inv!77514 ys!41))))

(assert (= (and d!1628749 c!868013) b!5058839))

(assert (= (and d!1628749 (not c!868013)) b!5058840))

(assert (= (and b!5058840 (not res!2154121)) b!5058841))

(declare-fun m!6095502 () Bool)

(assert (=> b!5058839 m!6095502))

(declare-fun m!6095504 () Bool)

(assert (=> b!5058841 m!6095504))

(assert (=> start!534808 d!1628749))

(declare-fun d!1628751 () Bool)

(declare-fun c!868014 () Bool)

(assert (=> d!1628751 (= c!868014 (is-Node!15555 (left!42803 ys!41)))))

(declare-fun e!3157735 () Bool)

(assert (=> d!1628751 (= (inv!77509 (left!42803 ys!41)) e!3157735)))

(declare-fun b!5058842 () Bool)

(assert (=> b!5058842 (= e!3157735 (inv!77513 (left!42803 ys!41)))))

(declare-fun b!5058843 () Bool)

(declare-fun e!3157736 () Bool)

(assert (=> b!5058843 (= e!3157735 e!3157736)))

(declare-fun res!2154122 () Bool)

(assert (=> b!5058843 (= res!2154122 (not (is-Leaf!25838 (left!42803 ys!41))))))

(assert (=> b!5058843 (=> res!2154122 e!3157736)))

(declare-fun b!5058844 () Bool)

(assert (=> b!5058844 (= e!3157736 (inv!77514 (left!42803 ys!41)))))

(assert (= (and d!1628751 c!868014) b!5058842))

(assert (= (and d!1628751 (not c!868014)) b!5058843))

(assert (= (and b!5058843 (not res!2154122)) b!5058844))

(declare-fun m!6095506 () Bool)

(assert (=> b!5058842 m!6095506))

(declare-fun m!6095508 () Bool)

(assert (=> b!5058844 m!6095508))

(assert (=> b!5058740 d!1628751))

(declare-fun d!1628753 () Bool)

(declare-fun c!868015 () Bool)

(assert (=> d!1628753 (= c!868015 (is-Node!15555 (right!43133 ys!41)))))

(declare-fun e!3157737 () Bool)

(assert (=> d!1628753 (= (inv!77509 (right!43133 ys!41)) e!3157737)))

(declare-fun b!5058845 () Bool)

(assert (=> b!5058845 (= e!3157737 (inv!77513 (right!43133 ys!41)))))

(declare-fun b!5058846 () Bool)

(declare-fun e!3157738 () Bool)

(assert (=> b!5058846 (= e!3157737 e!3157738)))

(declare-fun res!2154123 () Bool)

(assert (=> b!5058846 (= res!2154123 (not (is-Leaf!25838 (right!43133 ys!41))))))

(assert (=> b!5058846 (=> res!2154123 e!3157738)))

(declare-fun b!5058847 () Bool)

(assert (=> b!5058847 (= e!3157738 (inv!77514 (right!43133 ys!41)))))

(assert (= (and d!1628753 c!868015) b!5058845))

(assert (= (and d!1628753 (not c!868015)) b!5058846))

(assert (= (and b!5058846 (not res!2154123)) b!5058847))

(declare-fun m!6095510 () Bool)

(assert (=> b!5058845 m!6095510))

(declare-fun m!6095512 () Bool)

(assert (=> b!5058847 m!6095512))

(assert (=> b!5058740 d!1628753))

(declare-fun b!5058852 () Bool)

(declare-fun e!3157741 () Bool)

(declare-fun tp_is_empty!37033 () Bool)

(declare-fun tp!1413676 () Bool)

(assert (=> b!5058852 (= e!3157741 (and tp_is_empty!37033 tp!1413676))))

(assert (=> b!5058744 (= tp!1413651 e!3157741)))

(assert (= (and b!5058744 (is-Cons!58425 (innerList!15643 (xs!18893 ys!41)))) b!5058852))

(declare-fun e!3157747 () Bool)

(declare-fun b!5058861 () Bool)

(declare-fun tp!1413683 () Bool)

(declare-fun tp!1413684 () Bool)

(assert (=> b!5058861 (= e!3157747 (and (inv!77509 (left!42803 (left!42803 xs!286))) tp!1413684 (inv!77509 (right!43133 (left!42803 xs!286))) tp!1413683))))

(declare-fun b!5058863 () Bool)

(declare-fun e!3157746 () Bool)

(declare-fun tp!1413685 () Bool)

(assert (=> b!5058863 (= e!3157746 tp!1413685)))

(declare-fun b!5058862 () Bool)

(assert (=> b!5058862 (= e!3157747 (and (inv!77510 (xs!18893 (left!42803 xs!286))) e!3157746))))

(assert (=> b!5058746 (= tp!1413652 (and (inv!77509 (left!42803 xs!286)) e!3157747))))

(assert (= (and b!5058746 (is-Node!15555 (left!42803 xs!286))) b!5058861))

(assert (= b!5058862 b!5058863))

(assert (= (and b!5058746 (is-Leaf!25838 (left!42803 xs!286))) b!5058862))

(declare-fun m!6095514 () Bool)

(assert (=> b!5058861 m!6095514))

(declare-fun m!6095516 () Bool)

(assert (=> b!5058861 m!6095516))

(declare-fun m!6095518 () Bool)

(assert (=> b!5058862 m!6095518))

(assert (=> b!5058746 m!6095408))

(declare-fun e!3157749 () Bool)

(declare-fun b!5058864 () Bool)

(declare-fun tp!1413686 () Bool)

(declare-fun tp!1413687 () Bool)

(assert (=> b!5058864 (= e!3157749 (and (inv!77509 (left!42803 (right!43133 xs!286))) tp!1413687 (inv!77509 (right!43133 (right!43133 xs!286))) tp!1413686))))

(declare-fun b!5058866 () Bool)

(declare-fun e!3157748 () Bool)

(declare-fun tp!1413688 () Bool)

(assert (=> b!5058866 (= e!3157748 tp!1413688)))

(declare-fun b!5058865 () Bool)

(assert (=> b!5058865 (= e!3157749 (and (inv!77510 (xs!18893 (right!43133 xs!286))) e!3157748))))

(assert (=> b!5058746 (= tp!1413655 (and (inv!77509 (right!43133 xs!286)) e!3157749))))

(assert (= (and b!5058746 (is-Node!15555 (right!43133 xs!286))) b!5058864))

(assert (= b!5058865 b!5058866))

(assert (= (and b!5058746 (is-Leaf!25838 (right!43133 xs!286))) b!5058865))

(declare-fun m!6095520 () Bool)

(assert (=> b!5058864 m!6095520))

(declare-fun m!6095522 () Bool)

(assert (=> b!5058864 m!6095522))

(declare-fun m!6095524 () Bool)

(assert (=> b!5058865 m!6095524))

(assert (=> b!5058746 m!6095410))

(declare-fun b!5058871 () Bool)

(declare-fun e!3157751 () Bool)

(declare-fun tp!1413689 () Bool)

(assert (=> b!5058871 (= e!3157751 (and tp_is_empty!37033 tp!1413689))))

(assert (=> b!5058745 (= tp!1413653 e!3157751)))

(assert (= (and b!5058745 (is-Cons!58425 (innerList!15643 (xs!18893 xs!286)))) b!5058871))

(declare-fun tp!1413691 () Bool)

(declare-fun e!3157754 () Bool)

(declare-fun b!5058872 () Bool)

(declare-fun tp!1413690 () Bool)

(assert (=> b!5058872 (= e!3157754 (and (inv!77509 (left!42803 (left!42803 ys!41))) tp!1413691 (inv!77509 (right!43133 (left!42803 ys!41))) tp!1413690))))

(declare-fun b!5058874 () Bool)

(declare-fun e!3157753 () Bool)

(declare-fun tp!1413692 () Bool)

(assert (=> b!5058874 (= e!3157753 tp!1413692)))

(declare-fun b!5058873 () Bool)

(assert (=> b!5058873 (= e!3157754 (and (inv!77510 (xs!18893 (left!42803 ys!41))) e!3157753))))

(assert (=> b!5058740 (= tp!1413650 (and (inv!77509 (left!42803 ys!41)) e!3157754))))

(assert (= (and b!5058740 (is-Node!15555 (left!42803 ys!41))) b!5058872))

(assert (= b!5058873 b!5058874))

(assert (= (and b!5058740 (is-Leaf!25838 (left!42803 ys!41))) b!5058873))

(declare-fun m!6095526 () Bool)

(assert (=> b!5058872 m!6095526))

(declare-fun m!6095528 () Bool)

(assert (=> b!5058872 m!6095528))

(declare-fun m!6095530 () Bool)

(assert (=> b!5058873 m!6095530))

(assert (=> b!5058740 m!6095414))

(declare-fun tp!1413693 () Bool)

(declare-fun b!5058877 () Bool)

(declare-fun tp!1413694 () Bool)

(declare-fun e!3157758 () Bool)

(assert (=> b!5058877 (= e!3157758 (and (inv!77509 (left!42803 (right!43133 ys!41))) tp!1413694 (inv!77509 (right!43133 (right!43133 ys!41))) tp!1413693))))

(declare-fun b!5058879 () Bool)

(declare-fun e!3157757 () Bool)

(declare-fun tp!1413695 () Bool)

(assert (=> b!5058879 (= e!3157757 tp!1413695)))

(declare-fun b!5058878 () Bool)

(assert (=> b!5058878 (= e!3157758 (and (inv!77510 (xs!18893 (right!43133 ys!41))) e!3157757))))

(assert (=> b!5058740 (= tp!1413654 (and (inv!77509 (right!43133 ys!41)) e!3157758))))

(assert (= (and b!5058740 (is-Node!15555 (right!43133 ys!41))) b!5058877))

(assert (= b!5058878 b!5058879))

(assert (= (and b!5058740 (is-Leaf!25838 (right!43133 ys!41))) b!5058878))

(declare-fun m!6095532 () Bool)

(assert (=> b!5058877 m!6095532))

(declare-fun m!6095534 () Bool)

(assert (=> b!5058877 m!6095534))

(declare-fun m!6095536 () Bool)

(assert (=> b!5058878 m!6095536))

(assert (=> b!5058740 m!6095416))

(push 1)

(assert (not b!5058852))

(assert (not b!5058797))

(assert (not b!5058874))

(assert (not b!5058798))

(assert (not b!5058799))

(assert (not b!5058873))

(assert (not b!5058833))

(assert (not b!5058842))

(assert (not b!5058831))

(assert (not b!5058835))

(assert (not b!5058795))

(assert (not b!5058866))

(assert (not b!5058877))

(assert (not b!5058832))

(assert (not b!5058878))

(assert (not b!5058845))

(assert (not d!1628729))

(assert (not b!5058794))

(assert (not b!5058864))

(assert (not b!5058871))

(assert tp_is_empty!37033)

(assert (not b!5058796))

(assert (not b!5058861))

(assert (not b!5058824))

(assert (not b!5058841))

(assert (not b!5058847))

(assert (not b!5058829))

(assert (not b!5058844))

(assert (not b!5058839))

(assert (not b!5058740))

(assert (not b!5058879))

(assert (not b!5058826))

(assert (not b!5058827))

(assert (not b!5058838))

(assert (not b!5058746))

(assert (not b!5058863))

(assert (not b!5058830))

(assert (not b!5058862))

(assert (not b!5058834))

(assert (not b!5058836))

(assert (not b!5058865))

(assert (not b!5058872))

(assert (not d!1628723))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1628783 () Bool)

(declare-fun res!2154142 () Bool)

(declare-fun e!3157791 () Bool)

(assert (=> d!1628783 (=> (not res!2154142) (not e!3157791))))

(declare-fun list!18972 (IArray!31171) List!58549)

(assert (=> d!1628783 (= res!2154142 (<= (size!39058 (list!18972 (xs!18893 xs!286))) 512))))

(assert (=> d!1628783 (= (inv!77514 xs!286) e!3157791)))

(declare-fun b!5058934 () Bool)

(declare-fun res!2154143 () Bool)

(assert (=> b!5058934 (=> (not res!2154143) (not e!3157791))))

(assert (=> b!5058934 (= res!2154143 (= (csize!31341 xs!286) (size!39058 (list!18972 (xs!18893 xs!286)))))))

(declare-fun b!5058935 () Bool)

(assert (=> b!5058935 (= e!3157791 (and (> (csize!31341 xs!286) 0) (<= (csize!31341 xs!286) 512)))))

(assert (= (and d!1628783 res!2154142) b!5058934))

(assert (= (and b!5058934 res!2154143) b!5058935))

(declare-fun m!6095602 () Bool)

(assert (=> d!1628783 m!6095602))

(assert (=> d!1628783 m!6095602))

(declare-fun m!6095604 () Bool)

(assert (=> d!1628783 m!6095604))

(assert (=> b!5058934 m!6095602))

(assert (=> b!5058934 m!6095602))

(assert (=> b!5058934 m!6095604))

(assert (=> b!5058838 d!1628783))

(declare-fun d!1628785 () Bool)

(declare-fun lt!2087812 () Bool)

(declare-fun isEmpty!31616 (List!58549) Bool)

(declare-fun list!18973 (Conc!15555) List!58549)

(assert (=> d!1628785 (= lt!2087812 (isEmpty!31616 (list!18973 (left!42803 xs!286))))))

(declare-fun size!39060 (Conc!15555) Int)

(assert (=> d!1628785 (= lt!2087812 (= (size!39060 (left!42803 xs!286)) 0))))

(assert (=> d!1628785 (= (isEmpty!31614 (left!42803 xs!286)) lt!2087812)))

(declare-fun bs!1189512 () Bool)

(assert (= bs!1189512 d!1628785))

(declare-fun m!6095606 () Bool)

(assert (=> bs!1189512 m!6095606))

(assert (=> bs!1189512 m!6095606))

(declare-fun m!6095608 () Bool)

(assert (=> bs!1189512 m!6095608))

(declare-fun m!6095610 () Bool)

(assert (=> bs!1189512 m!6095610))

(assert (=> b!5058831 d!1628785))

(declare-fun d!1628787 () Bool)

(declare-fun c!868024 () Bool)

(assert (=> d!1628787 (= c!868024 (is-Node!15555 (left!42803 (right!43133 ys!41))))))

(declare-fun e!3157792 () Bool)

(assert (=> d!1628787 (= (inv!77509 (left!42803 (right!43133 ys!41))) e!3157792)))

(declare-fun b!5058936 () Bool)

(assert (=> b!5058936 (= e!3157792 (inv!77513 (left!42803 (right!43133 ys!41))))))

(declare-fun b!5058937 () Bool)

(declare-fun e!3157793 () Bool)

(assert (=> b!5058937 (= e!3157792 e!3157793)))

(declare-fun res!2154144 () Bool)

(assert (=> b!5058937 (= res!2154144 (not (is-Leaf!25838 (left!42803 (right!43133 ys!41)))))))

(assert (=> b!5058937 (=> res!2154144 e!3157793)))

(declare-fun b!5058938 () Bool)

(assert (=> b!5058938 (= e!3157793 (inv!77514 (left!42803 (right!43133 ys!41))))))

(assert (= (and d!1628787 c!868024) b!5058936))

(assert (= (and d!1628787 (not c!868024)) b!5058937))

(assert (= (and b!5058937 (not res!2154144)) b!5058938))

(declare-fun m!6095612 () Bool)

(assert (=> b!5058936 m!6095612))

(declare-fun m!6095614 () Bool)

(assert (=> b!5058938 m!6095614))

(assert (=> b!5058877 d!1628787))

(declare-fun d!1628789 () Bool)

(declare-fun c!868025 () Bool)

(assert (=> d!1628789 (= c!868025 (is-Node!15555 (right!43133 (right!43133 ys!41))))))

(declare-fun e!3157794 () Bool)

(assert (=> d!1628789 (= (inv!77509 (right!43133 (right!43133 ys!41))) e!3157794)))

(declare-fun b!5058939 () Bool)

(assert (=> b!5058939 (= e!3157794 (inv!77513 (right!43133 (right!43133 ys!41))))))

(declare-fun b!5058940 () Bool)

(declare-fun e!3157795 () Bool)

(assert (=> b!5058940 (= e!3157794 e!3157795)))

(declare-fun res!2154145 () Bool)

(assert (=> b!5058940 (= res!2154145 (not (is-Leaf!25838 (right!43133 (right!43133 ys!41)))))))

(assert (=> b!5058940 (=> res!2154145 e!3157795)))

(declare-fun b!5058941 () Bool)

(assert (=> b!5058941 (= e!3157795 (inv!77514 (right!43133 (right!43133 ys!41))))))

(assert (= (and d!1628789 c!868025) b!5058939))

(assert (= (and d!1628789 (not c!868025)) b!5058940))

(assert (= (and b!5058940 (not res!2154145)) b!5058941))

(declare-fun m!6095616 () Bool)

(assert (=> b!5058939 m!6095616))

(declare-fun m!6095618 () Bool)

(assert (=> b!5058941 m!6095618))

(assert (=> b!5058877 d!1628789))

(assert (=> b!5058830 d!1628725))

(assert (=> b!5058830 d!1628727))

(declare-fun b!5058942 () Bool)

(declare-fun res!2154146 () Bool)

(declare-fun e!3157796 () Bool)

(assert (=> b!5058942 (=> (not res!2154146) (not e!3157796))))

(assert (=> b!5058942 (= res!2154146 (<= (- (height!2132 (left!42803 (right!43133 xs!286))) (height!2132 (right!43133 (right!43133 xs!286)))) 1))))

(declare-fun b!5058943 () Bool)

(declare-fun res!2154147 () Bool)

(assert (=> b!5058943 (=> (not res!2154147) (not e!3157796))))

(assert (=> b!5058943 (= res!2154147 (not (isEmpty!31614 (left!42803 (right!43133 xs!286)))))))

(declare-fun b!5058944 () Bool)

(assert (=> b!5058944 (= e!3157796 (not (isEmpty!31614 (right!43133 (right!43133 xs!286)))))))

(declare-fun b!5058945 () Bool)

(declare-fun res!2154150 () Bool)

(assert (=> b!5058945 (=> (not res!2154150) (not e!3157796))))

(assert (=> b!5058945 (= res!2154150 (isBalanced!4417 (right!43133 (right!43133 xs!286))))))

(declare-fun b!5058946 () Bool)

(declare-fun e!3157797 () Bool)

(assert (=> b!5058946 (= e!3157797 e!3157796)))

(declare-fun res!2154148 () Bool)

(assert (=> b!5058946 (=> (not res!2154148) (not e!3157796))))

(assert (=> b!5058946 (= res!2154148 (<= (- 1) (- (height!2132 (left!42803 (right!43133 xs!286))) (height!2132 (right!43133 (right!43133 xs!286))))))))

(declare-fun d!1628791 () Bool)

(declare-fun res!2154151 () Bool)

(assert (=> d!1628791 (=> res!2154151 e!3157797)))

(assert (=> d!1628791 (= res!2154151 (not (is-Node!15555 (right!43133 xs!286))))))

(assert (=> d!1628791 (= (isBalanced!4417 (right!43133 xs!286)) e!3157797)))

(declare-fun b!5058947 () Bool)

(declare-fun res!2154149 () Bool)

(assert (=> b!5058947 (=> (not res!2154149) (not e!3157796))))

(assert (=> b!5058947 (= res!2154149 (isBalanced!4417 (left!42803 (right!43133 xs!286))))))

(assert (= (and d!1628791 (not res!2154151)) b!5058946))

(assert (= (and b!5058946 res!2154148) b!5058942))

(assert (= (and b!5058942 res!2154146) b!5058947))

(assert (= (and b!5058947 res!2154149) b!5058945))

(assert (= (and b!5058945 res!2154150) b!5058943))

(assert (= (and b!5058943 res!2154147) b!5058944))

(declare-fun m!6095620 () Bool)

(assert (=> b!5058946 m!6095620))

(declare-fun m!6095622 () Bool)

(assert (=> b!5058946 m!6095622))

(declare-fun m!6095624 () Bool)

(assert (=> b!5058947 m!6095624))

(declare-fun m!6095626 () Bool)

(assert (=> b!5058943 m!6095626))

(assert (=> b!5058942 m!6095620))

(assert (=> b!5058942 m!6095622))

(declare-fun m!6095628 () Bool)

(assert (=> b!5058944 m!6095628))

(declare-fun m!6095630 () Bool)

(assert (=> b!5058945 m!6095630))

(assert (=> b!5058833 d!1628791))

(declare-fun d!1628793 () Bool)

(declare-fun res!2154158 () Bool)

(declare-fun e!3157800 () Bool)

(assert (=> d!1628793 (=> (not res!2154158) (not e!3157800))))

(assert (=> d!1628793 (= res!2154158 (= (csize!31340 (left!42803 ys!41)) (+ (size!39060 (left!42803 (left!42803 ys!41))) (size!39060 (right!43133 (left!42803 ys!41))))))))

(assert (=> d!1628793 (= (inv!77513 (left!42803 ys!41)) e!3157800)))

(declare-fun b!5058954 () Bool)

(declare-fun res!2154159 () Bool)

(assert (=> b!5058954 (=> (not res!2154159) (not e!3157800))))

(assert (=> b!5058954 (= res!2154159 (and (not (= (left!42803 (left!42803 ys!41)) Empty!15555)) (not (= (right!43133 (left!42803 ys!41)) Empty!15555))))))

(declare-fun b!5058955 () Bool)

(declare-fun res!2154160 () Bool)

(assert (=> b!5058955 (=> (not res!2154160) (not e!3157800))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5058955 (= res!2154160 (= (cheight!15766 (left!42803 ys!41)) (+ (max!0 (height!2132 (left!42803 (left!42803 ys!41))) (height!2132 (right!43133 (left!42803 ys!41)))) 1)))))

(declare-fun b!5058956 () Bool)

(assert (=> b!5058956 (= e!3157800 (<= 0 (cheight!15766 (left!42803 ys!41))))))

(assert (= (and d!1628793 res!2154158) b!5058954))

(assert (= (and b!5058954 res!2154159) b!5058955))

(assert (= (and b!5058955 res!2154160) b!5058956))

(declare-fun m!6095632 () Bool)

(assert (=> d!1628793 m!6095632))

(declare-fun m!6095634 () Bool)

(assert (=> d!1628793 m!6095634))

(declare-fun m!6095636 () Bool)

(assert (=> b!5058955 m!6095636))

(declare-fun m!6095638 () Bool)

(assert (=> b!5058955 m!6095638))

(assert (=> b!5058955 m!6095636))

(assert (=> b!5058955 m!6095638))

(declare-fun m!6095640 () Bool)

(assert (=> b!5058955 m!6095640))

(assert (=> b!5058842 d!1628793))

(declare-fun d!1628795 () Bool)

(declare-fun c!868026 () Bool)

(assert (=> d!1628795 (= c!868026 (is-Node!15555 (left!42803 (left!42803 xs!286))))))

(declare-fun e!3157801 () Bool)

(assert (=> d!1628795 (= (inv!77509 (left!42803 (left!42803 xs!286))) e!3157801)))

(declare-fun b!5058957 () Bool)

(assert (=> b!5058957 (= e!3157801 (inv!77513 (left!42803 (left!42803 xs!286))))))

(declare-fun b!5058958 () Bool)

(declare-fun e!3157802 () Bool)

(assert (=> b!5058958 (= e!3157801 e!3157802)))

(declare-fun res!2154161 () Bool)

(assert (=> b!5058958 (= res!2154161 (not (is-Leaf!25838 (left!42803 (left!42803 xs!286)))))))

(assert (=> b!5058958 (=> res!2154161 e!3157802)))

(declare-fun b!5058959 () Bool)

(assert (=> b!5058959 (= e!3157802 (inv!77514 (left!42803 (left!42803 xs!286))))))

(assert (= (and d!1628795 c!868026) b!5058957))

(assert (= (and d!1628795 (not c!868026)) b!5058958))

(assert (= (and b!5058958 (not res!2154161)) b!5058959))

(declare-fun m!6095642 () Bool)

(assert (=> b!5058957 m!6095642))

(declare-fun m!6095644 () Bool)

(assert (=> b!5058959 m!6095644))

(assert (=> b!5058861 d!1628795))

(declare-fun d!1628797 () Bool)

(declare-fun c!868027 () Bool)

(assert (=> d!1628797 (= c!868027 (is-Node!15555 (right!43133 (left!42803 xs!286))))))

(declare-fun e!3157803 () Bool)

(assert (=> d!1628797 (= (inv!77509 (right!43133 (left!42803 xs!286))) e!3157803)))

(declare-fun b!5058960 () Bool)

(assert (=> b!5058960 (= e!3157803 (inv!77513 (right!43133 (left!42803 xs!286))))))

(declare-fun b!5058961 () Bool)

(declare-fun e!3157804 () Bool)

(assert (=> b!5058961 (= e!3157803 e!3157804)))

(declare-fun res!2154162 () Bool)

(assert (=> b!5058961 (= res!2154162 (not (is-Leaf!25838 (right!43133 (left!42803 xs!286)))))))

(assert (=> b!5058961 (=> res!2154162 e!3157804)))

(declare-fun b!5058962 () Bool)

(assert (=> b!5058962 (= e!3157804 (inv!77514 (right!43133 (left!42803 xs!286))))))

(assert (= (and d!1628797 c!868027) b!5058960))

(assert (= (and d!1628797 (not c!868027)) b!5058961))

(assert (= (and b!5058961 (not res!2154162)) b!5058962))

(declare-fun m!6095646 () Bool)

(assert (=> b!5058960 m!6095646))

(declare-fun m!6095648 () Bool)

(assert (=> b!5058962 m!6095648))

(assert (=> b!5058861 d!1628797))

(declare-fun d!1628799 () Bool)

(assert (=> d!1628799 (= (inv!77510 (xs!18893 (right!43133 ys!41))) (<= (size!39058 (innerList!15643 (xs!18893 (right!43133 ys!41)))) 2147483647))))

(declare-fun bs!1189513 () Bool)

(assert (= bs!1189513 d!1628799))

(declare-fun m!6095650 () Bool)

(assert (=> bs!1189513 m!6095650))

(assert (=> b!5058878 d!1628799))

(declare-fun d!1628801 () Bool)

(assert (=> d!1628801 (= (inv!77510 (xs!18893 (left!42803 ys!41))) (<= (size!39058 (innerList!15643 (xs!18893 (left!42803 ys!41)))) 2147483647))))

(declare-fun bs!1189514 () Bool)

(assert (= bs!1189514 d!1628801))

(declare-fun m!6095652 () Bool)

(assert (=> bs!1189514 m!6095652))

(assert (=> b!5058873 d!1628801))

(assert (=> b!5058834 d!1628725))

(assert (=> b!5058834 d!1628727))

(declare-fun d!1628803 () Bool)

(declare-fun lt!2087813 () Bool)

(assert (=> d!1628803 (= lt!2087813 (isEmpty!31616 (list!18973 (right!43133 xs!286))))))

(assert (=> d!1628803 (= lt!2087813 (= (size!39060 (right!43133 xs!286)) 0))))

(assert (=> d!1628803 (= (isEmpty!31614 (right!43133 xs!286)) lt!2087813)))

(declare-fun bs!1189515 () Bool)

(assert (= bs!1189515 d!1628803))

(declare-fun m!6095654 () Bool)

(assert (=> bs!1189515 m!6095654))

(assert (=> bs!1189515 m!6095654))

(declare-fun m!6095656 () Bool)

(assert (=> bs!1189515 m!6095656))

(declare-fun m!6095658 () Bool)

(assert (=> bs!1189515 m!6095658))

(assert (=> b!5058832 d!1628803))

(assert (=> b!5058740 d!1628751))

(assert (=> b!5058740 d!1628753))

(declare-fun d!1628805 () Bool)

(declare-fun c!868028 () Bool)

(assert (=> d!1628805 (= c!868028 (is-Node!15555 (left!42803 (left!42803 ys!41))))))

(declare-fun e!3157805 () Bool)

(assert (=> d!1628805 (= (inv!77509 (left!42803 (left!42803 ys!41))) e!3157805)))

(declare-fun b!5058963 () Bool)

(assert (=> b!5058963 (= e!3157805 (inv!77513 (left!42803 (left!42803 ys!41))))))

(declare-fun b!5058964 () Bool)

(declare-fun e!3157806 () Bool)

(assert (=> b!5058964 (= e!3157805 e!3157806)))

(declare-fun res!2154163 () Bool)

(assert (=> b!5058964 (= res!2154163 (not (is-Leaf!25838 (left!42803 (left!42803 ys!41)))))))

(assert (=> b!5058964 (=> res!2154163 e!3157806)))

(declare-fun b!5058965 () Bool)

(assert (=> b!5058965 (= e!3157806 (inv!77514 (left!42803 (left!42803 ys!41))))))

(assert (= (and d!1628805 c!868028) b!5058963))

(assert (= (and d!1628805 (not c!868028)) b!5058964))

(assert (= (and b!5058964 (not res!2154163)) b!5058965))

(declare-fun m!6095660 () Bool)

(assert (=> b!5058963 m!6095660))

(declare-fun m!6095662 () Bool)

(assert (=> b!5058965 m!6095662))

(assert (=> b!5058872 d!1628805))

(declare-fun d!1628807 () Bool)

(declare-fun c!868029 () Bool)

(assert (=> d!1628807 (= c!868029 (is-Node!15555 (right!43133 (left!42803 ys!41))))))

(declare-fun e!3157807 () Bool)

(assert (=> d!1628807 (= (inv!77509 (right!43133 (left!42803 ys!41))) e!3157807)))

(declare-fun b!5058966 () Bool)

(assert (=> b!5058966 (= e!3157807 (inv!77513 (right!43133 (left!42803 ys!41))))))

(declare-fun b!5058967 () Bool)

(declare-fun e!3157808 () Bool)

(assert (=> b!5058967 (= e!3157807 e!3157808)))

(declare-fun res!2154164 () Bool)

(assert (=> b!5058967 (= res!2154164 (not (is-Leaf!25838 (right!43133 (left!42803 ys!41)))))))

(assert (=> b!5058967 (=> res!2154164 e!3157808)))

(declare-fun b!5058968 () Bool)

(assert (=> b!5058968 (= e!3157808 (inv!77514 (right!43133 (left!42803 ys!41))))))

(assert (= (and d!1628807 c!868029) b!5058966))

(assert (= (and d!1628807 (not c!868029)) b!5058967))

(assert (= (and b!5058967 (not res!2154164)) b!5058968))

(declare-fun m!6095664 () Bool)

(assert (=> b!5058966 m!6095664))

(declare-fun m!6095666 () Bool)

(assert (=> b!5058968 m!6095666))

(assert (=> b!5058872 d!1628807))

(declare-fun d!1628809 () Bool)

(declare-fun res!2154165 () Bool)

(declare-fun e!3157809 () Bool)

(assert (=> d!1628809 (=> (not res!2154165) (not e!3157809))))

(assert (=> d!1628809 (= res!2154165 (<= (size!39058 (list!18972 (xs!18893 (right!43133 xs!286)))) 512))))

(assert (=> d!1628809 (= (inv!77514 (right!43133 xs!286)) e!3157809)))

(declare-fun b!5058969 () Bool)

(declare-fun res!2154166 () Bool)

(assert (=> b!5058969 (=> (not res!2154166) (not e!3157809))))

(assert (=> b!5058969 (= res!2154166 (= (csize!31341 (right!43133 xs!286)) (size!39058 (list!18972 (xs!18893 (right!43133 xs!286))))))))

(declare-fun b!5058970 () Bool)

(assert (=> b!5058970 (= e!3157809 (and (> (csize!31341 (right!43133 xs!286)) 0) (<= (csize!31341 (right!43133 xs!286)) 512)))))

(assert (= (and d!1628809 res!2154165) b!5058969))

(assert (= (and b!5058969 res!2154166) b!5058970))

(declare-fun m!6095668 () Bool)

(assert (=> d!1628809 m!6095668))

(assert (=> d!1628809 m!6095668))

(declare-fun m!6095670 () Bool)

(assert (=> d!1628809 m!6095670))

(assert (=> b!5058969 m!6095668))

(assert (=> b!5058969 m!6095668))

(assert (=> b!5058969 m!6095670))

(assert (=> b!5058829 d!1628809))

(declare-fun d!1628811 () Bool)

(assert (=> d!1628811 (= (inv!77510 (xs!18893 (left!42803 xs!286))) (<= (size!39058 (innerList!15643 (xs!18893 (left!42803 xs!286)))) 2147483647))))

(declare-fun bs!1189516 () Bool)

(assert (= bs!1189516 d!1628811))

(declare-fun m!6095672 () Bool)

(assert (=> bs!1189516 m!6095672))

(assert (=> b!5058862 d!1628811))

(declare-fun d!1628813 () Bool)

(declare-fun res!2154167 () Bool)

(declare-fun e!3157810 () Bool)

(assert (=> d!1628813 (=> (not res!2154167) (not e!3157810))))

(assert (=> d!1628813 (= res!2154167 (= (csize!31340 (right!43133 xs!286)) (+ (size!39060 (left!42803 (right!43133 xs!286))) (size!39060 (right!43133 (right!43133 xs!286))))))))

(assert (=> d!1628813 (= (inv!77513 (right!43133 xs!286)) e!3157810)))

(declare-fun b!5058971 () Bool)

(declare-fun res!2154168 () Bool)

(assert (=> b!5058971 (=> (not res!2154168) (not e!3157810))))

(assert (=> b!5058971 (= res!2154168 (and (not (= (left!42803 (right!43133 xs!286)) Empty!15555)) (not (= (right!43133 (right!43133 xs!286)) Empty!15555))))))

(declare-fun b!5058972 () Bool)

(declare-fun res!2154169 () Bool)

(assert (=> b!5058972 (=> (not res!2154169) (not e!3157810))))

(assert (=> b!5058972 (= res!2154169 (= (cheight!15766 (right!43133 xs!286)) (+ (max!0 (height!2132 (left!42803 (right!43133 xs!286))) (height!2132 (right!43133 (right!43133 xs!286)))) 1)))))

(declare-fun b!5058973 () Bool)

(assert (=> b!5058973 (= e!3157810 (<= 0 (cheight!15766 (right!43133 xs!286))))))

(assert (= (and d!1628813 res!2154167) b!5058971))

(assert (= (and b!5058971 res!2154168) b!5058972))

(assert (= (and b!5058972 res!2154169) b!5058973))

(declare-fun m!6095674 () Bool)

(assert (=> d!1628813 m!6095674))

(declare-fun m!6095676 () Bool)

(assert (=> d!1628813 m!6095676))

(assert (=> b!5058972 m!6095620))

(assert (=> b!5058972 m!6095622))

(assert (=> b!5058972 m!6095620))

(assert (=> b!5058972 m!6095622))

(declare-fun m!6095678 () Bool)

(assert (=> b!5058972 m!6095678))

(assert (=> b!5058827 d!1628813))

(declare-fun b!5058974 () Bool)

(declare-fun res!2154170 () Bool)

(declare-fun e!3157811 () Bool)

(assert (=> b!5058974 (=> (not res!2154170) (not e!3157811))))

(assert (=> b!5058974 (= res!2154170 (<= (- (height!2132 (left!42803 (left!42803 xs!286))) (height!2132 (right!43133 (left!42803 xs!286)))) 1))))

(declare-fun b!5058975 () Bool)

(declare-fun res!2154171 () Bool)

(assert (=> b!5058975 (=> (not res!2154171) (not e!3157811))))

(assert (=> b!5058975 (= res!2154171 (not (isEmpty!31614 (left!42803 (left!42803 xs!286)))))))

(declare-fun b!5058976 () Bool)

(assert (=> b!5058976 (= e!3157811 (not (isEmpty!31614 (right!43133 (left!42803 xs!286)))))))

(declare-fun b!5058977 () Bool)

(declare-fun res!2154174 () Bool)

(assert (=> b!5058977 (=> (not res!2154174) (not e!3157811))))

(assert (=> b!5058977 (= res!2154174 (isBalanced!4417 (right!43133 (left!42803 xs!286))))))

(declare-fun b!5058978 () Bool)

(declare-fun e!3157812 () Bool)

(assert (=> b!5058978 (= e!3157812 e!3157811)))

(declare-fun res!2154172 () Bool)

(assert (=> b!5058978 (=> (not res!2154172) (not e!3157811))))

(assert (=> b!5058978 (= res!2154172 (<= (- 1) (- (height!2132 (left!42803 (left!42803 xs!286))) (height!2132 (right!43133 (left!42803 xs!286))))))))

(declare-fun d!1628815 () Bool)

(declare-fun res!2154175 () Bool)

(assert (=> d!1628815 (=> res!2154175 e!3157812)))

(assert (=> d!1628815 (= res!2154175 (not (is-Node!15555 (left!42803 xs!286))))))

(assert (=> d!1628815 (= (isBalanced!4417 (left!42803 xs!286)) e!3157812)))

(declare-fun b!5058979 () Bool)

(declare-fun res!2154173 () Bool)

(assert (=> b!5058979 (=> (not res!2154173) (not e!3157811))))

(assert (=> b!5058979 (= res!2154173 (isBalanced!4417 (left!42803 (left!42803 xs!286))))))

(assert (= (and d!1628815 (not res!2154175)) b!5058978))

(assert (= (and b!5058978 res!2154172) b!5058974))

(assert (= (and b!5058974 res!2154170) b!5058979))

(assert (= (and b!5058979 res!2154173) b!5058977))

(assert (= (and b!5058977 res!2154174) b!5058975))

(assert (= (and b!5058975 res!2154171) b!5058976))

(declare-fun m!6095680 () Bool)

(assert (=> b!5058978 m!6095680))

(declare-fun m!6095682 () Bool)

(assert (=> b!5058978 m!6095682))

(declare-fun m!6095684 () Bool)

(assert (=> b!5058979 m!6095684))

(declare-fun m!6095686 () Bool)

(assert (=> b!5058975 m!6095686))

(assert (=> b!5058974 m!6095680))

(assert (=> b!5058974 m!6095682))

(declare-fun m!6095688 () Bool)

(assert (=> b!5058976 m!6095688))

(declare-fun m!6095690 () Bool)

(assert (=> b!5058977 m!6095690))

(assert (=> b!5058835 d!1628815))

(declare-fun d!1628817 () Bool)

(declare-fun res!2154176 () Bool)

(declare-fun e!3157813 () Bool)

(assert (=> d!1628817 (=> (not res!2154176) (not e!3157813))))

(assert (=> d!1628817 (= res!2154176 (<= (size!39058 (list!18972 (xs!18893 (left!42803 ys!41)))) 512))))

(assert (=> d!1628817 (= (inv!77514 (left!42803 ys!41)) e!3157813)))

(declare-fun b!5058980 () Bool)

(declare-fun res!2154177 () Bool)

(assert (=> b!5058980 (=> (not res!2154177) (not e!3157813))))

(assert (=> b!5058980 (= res!2154177 (= (csize!31341 (left!42803 ys!41)) (size!39058 (list!18972 (xs!18893 (left!42803 ys!41))))))))

(declare-fun b!5058981 () Bool)

(assert (=> b!5058981 (= e!3157813 (and (> (csize!31341 (left!42803 ys!41)) 0) (<= (csize!31341 (left!42803 ys!41)) 512)))))

(assert (= (and d!1628817 res!2154176) b!5058980))

(assert (= (and b!5058980 res!2154177) b!5058981))

(declare-fun m!6095692 () Bool)

(assert (=> d!1628817 m!6095692))

(assert (=> d!1628817 m!6095692))

(declare-fun m!6095694 () Bool)

(assert (=> d!1628817 m!6095694))

(assert (=> b!5058980 m!6095692))

(assert (=> b!5058980 m!6095692))

(assert (=> b!5058980 m!6095694))

(assert (=> b!5058844 d!1628817))

(assert (=> b!5058746 d!1628731))

(assert (=> b!5058746 d!1628733))

(declare-fun d!1628819 () Bool)

(declare-fun res!2154178 () Bool)

(declare-fun e!3157814 () Bool)

(assert (=> d!1628819 (=> (not res!2154178) (not e!3157814))))

(assert (=> d!1628819 (= res!2154178 (= (csize!31340 ys!41) (+ (size!39060 (left!42803 ys!41)) (size!39060 (right!43133 ys!41)))))))

(assert (=> d!1628819 (= (inv!77513 ys!41) e!3157814)))

(declare-fun b!5058982 () Bool)

(declare-fun res!2154179 () Bool)

(assert (=> b!5058982 (=> (not res!2154179) (not e!3157814))))

(assert (=> b!5058982 (= res!2154179 (and (not (= (left!42803 ys!41) Empty!15555)) (not (= (right!43133 ys!41) Empty!15555))))))

(declare-fun b!5058983 () Bool)

(declare-fun res!2154180 () Bool)

(assert (=> b!5058983 (=> (not res!2154180) (not e!3157814))))

(assert (=> b!5058983 (= res!2154180 (= (cheight!15766 ys!41) (+ (max!0 (height!2132 (left!42803 ys!41)) (height!2132 (right!43133 ys!41))) 1)))))

(declare-fun b!5058984 () Bool)

(assert (=> b!5058984 (= e!3157814 (<= 0 (cheight!15766 ys!41)))))

(assert (= (and d!1628819 res!2154178) b!5058982))

(assert (= (and b!5058982 res!2154179) b!5058983))

(assert (= (and b!5058983 res!2154180) b!5058984))

(declare-fun m!6095696 () Bool)

(assert (=> d!1628819 m!6095696))

(declare-fun m!6095698 () Bool)

(assert (=> d!1628819 m!6095698))

(assert (=> b!5058983 m!6095458))

(assert (=> b!5058983 m!6095460))

(assert (=> b!5058983 m!6095458))

(assert (=> b!5058983 m!6095460))

(declare-fun m!6095700 () Bool)

(assert (=> b!5058983 m!6095700))

(assert (=> b!5058839 d!1628819))

(declare-fun d!1628821 () Bool)

(declare-fun res!2154181 () Bool)

(declare-fun e!3157815 () Bool)

(assert (=> d!1628821 (=> (not res!2154181) (not e!3157815))))

(assert (=> d!1628821 (= res!2154181 (<= (size!39058 (list!18972 (xs!18893 ys!41))) 512))))

(assert (=> d!1628821 (= (inv!77514 ys!41) e!3157815)))

(declare-fun b!5058985 () Bool)

(declare-fun res!2154182 () Bool)

(assert (=> b!5058985 (=> (not res!2154182) (not e!3157815))))

(assert (=> b!5058985 (= res!2154182 (= (csize!31341 ys!41) (size!39058 (list!18972 (xs!18893 ys!41)))))))

(declare-fun b!5058986 () Bool)

(assert (=> b!5058986 (= e!3157815 (and (> (csize!31341 ys!41) 0) (<= (csize!31341 ys!41) 512)))))

(assert (= (and d!1628821 res!2154181) b!5058985))

(assert (= (and b!5058985 res!2154182) b!5058986))

(declare-fun m!6095702 () Bool)

(assert (=> d!1628821 m!6095702))

(assert (=> d!1628821 m!6095702))

(declare-fun m!6095704 () Bool)

(assert (=> d!1628821 m!6095704))

(assert (=> b!5058985 m!6095702))

(assert (=> b!5058985 m!6095702))

(assert (=> b!5058985 m!6095704))

(assert (=> b!5058841 d!1628821))

(declare-fun d!1628823 () Bool)

(assert (=> d!1628823 (= (height!2132 (left!42803 ys!41)) (ite (is-Empty!15555 (left!42803 ys!41)) 0 (ite (is-Leaf!25838 (left!42803 ys!41)) 1 (cheight!15766 (left!42803 ys!41)))))))

(assert (=> b!5058794 d!1628823))

(declare-fun d!1628825 () Bool)

(assert (=> d!1628825 (= (height!2132 (right!43133 ys!41)) (ite (is-Empty!15555 (right!43133 ys!41)) 0 (ite (is-Leaf!25838 (right!43133 ys!41)) 1 (cheight!15766 (right!43133 ys!41)))))))

(assert (=> b!5058794 d!1628825))

(declare-fun d!1628827 () Bool)

(declare-fun lt!2087816 () Int)

(assert (=> d!1628827 (>= lt!2087816 0)))

(declare-fun e!3157818 () Int)

(assert (=> d!1628827 (= lt!2087816 e!3157818)))

(declare-fun c!868032 () Bool)

(assert (=> d!1628827 (= c!868032 (is-Nil!58425 (innerList!15643 (xs!18893 ys!41))))))

(assert (=> d!1628827 (= (size!39058 (innerList!15643 (xs!18893 ys!41))) lt!2087816)))

(declare-fun b!5058991 () Bool)

(assert (=> b!5058991 (= e!3157818 0)))

(declare-fun b!5058992 () Bool)

(assert (=> b!5058992 (= e!3157818 (+ 1 (size!39058 (t!371242 (innerList!15643 (xs!18893 ys!41))))))))

(assert (= (and d!1628827 c!868032) b!5058991))

(assert (= (and d!1628827 (not c!868032)) b!5058992))

(declare-fun m!6095706 () Bool)

(assert (=> b!5058992 m!6095706))

(assert (=> d!1628729 d!1628827))

(declare-fun d!1628829 () Bool)

(declare-fun lt!2087817 () Bool)

(assert (=> d!1628829 (= lt!2087817 (isEmpty!31616 (list!18973 (left!42803 ys!41))))))

(assert (=> d!1628829 (= lt!2087817 (= (size!39060 (left!42803 ys!41)) 0))))

(assert (=> d!1628829 (= (isEmpty!31614 (left!42803 ys!41)) lt!2087817)))

(declare-fun bs!1189517 () Bool)

(assert (= bs!1189517 d!1628829))

(declare-fun m!6095708 () Bool)

(assert (=> bs!1189517 m!6095708))

(assert (=> bs!1189517 m!6095708))

(declare-fun m!6095710 () Bool)

(assert (=> bs!1189517 m!6095710))

(assert (=> bs!1189517 m!6095696))

(assert (=> b!5058795 d!1628829))

(declare-fun d!1628831 () Bool)

(declare-fun res!2154183 () Bool)

(declare-fun e!3157819 () Bool)

(assert (=> d!1628831 (=> (not res!2154183) (not e!3157819))))

(assert (=> d!1628831 (= res!2154183 (= (csize!31340 (left!42803 xs!286)) (+ (size!39060 (left!42803 (left!42803 xs!286))) (size!39060 (right!43133 (left!42803 xs!286))))))))

(assert (=> d!1628831 (= (inv!77513 (left!42803 xs!286)) e!3157819)))

(declare-fun b!5058993 () Bool)

(declare-fun res!2154184 () Bool)

(assert (=> b!5058993 (=> (not res!2154184) (not e!3157819))))

(assert (=> b!5058993 (= res!2154184 (and (not (= (left!42803 (left!42803 xs!286)) Empty!15555)) (not (= (right!43133 (left!42803 xs!286)) Empty!15555))))))

(declare-fun b!5058994 () Bool)

(declare-fun res!2154185 () Bool)

(assert (=> b!5058994 (=> (not res!2154185) (not e!3157819))))

(assert (=> b!5058994 (= res!2154185 (= (cheight!15766 (left!42803 xs!286)) (+ (max!0 (height!2132 (left!42803 (left!42803 xs!286))) (height!2132 (right!43133 (left!42803 xs!286)))) 1)))))

(declare-fun b!5058995 () Bool)

(assert (=> b!5058995 (= e!3157819 (<= 0 (cheight!15766 (left!42803 xs!286))))))

(assert (= (and d!1628831 res!2154183) b!5058993))

(assert (= (and b!5058993 res!2154184) b!5058994))

(assert (= (and b!5058994 res!2154185) b!5058995))

(declare-fun m!6095712 () Bool)

(assert (=> d!1628831 m!6095712))

(declare-fun m!6095714 () Bool)

(assert (=> d!1628831 m!6095714))

(assert (=> b!5058994 m!6095680))

(assert (=> b!5058994 m!6095682))

(assert (=> b!5058994 m!6095680))

(assert (=> b!5058994 m!6095682))

(declare-fun m!6095716 () Bool)

(assert (=> b!5058994 m!6095716))

(assert (=> b!5058824 d!1628831))

(declare-fun d!1628833 () Bool)

(declare-fun lt!2087818 () Int)

(assert (=> d!1628833 (>= lt!2087818 0)))

(declare-fun e!3157820 () Int)

(assert (=> d!1628833 (= lt!2087818 e!3157820)))

(declare-fun c!868033 () Bool)

(assert (=> d!1628833 (= c!868033 (is-Nil!58425 (innerList!15643 (xs!18893 xs!286))))))

(assert (=> d!1628833 (= (size!39058 (innerList!15643 (xs!18893 xs!286))) lt!2087818)))

(declare-fun b!5058996 () Bool)

(assert (=> b!5058996 (= e!3157820 0)))

(declare-fun b!5058997 () Bool)

(assert (=> b!5058997 (= e!3157820 (+ 1 (size!39058 (t!371242 (innerList!15643 (xs!18893 xs!286))))))))

(assert (= (and d!1628833 c!868033) b!5058996))

(assert (= (and d!1628833 (not c!868033)) b!5058997))

(declare-fun m!6095718 () Bool)

(assert (=> b!5058997 m!6095718))

(assert (=> d!1628723 d!1628833))

(declare-fun d!1628835 () Bool)

(declare-fun res!2154186 () Bool)

(declare-fun e!3157821 () Bool)

(assert (=> d!1628835 (=> (not res!2154186) (not e!3157821))))

(assert (=> d!1628835 (= res!2154186 (= (csize!31340 (right!43133 ys!41)) (+ (size!39060 (left!42803 (right!43133 ys!41))) (size!39060 (right!43133 (right!43133 ys!41))))))))

(assert (=> d!1628835 (= (inv!77513 (right!43133 ys!41)) e!3157821)))

(declare-fun b!5058998 () Bool)

(declare-fun res!2154187 () Bool)

(assert (=> b!5058998 (=> (not res!2154187) (not e!3157821))))

(assert (=> b!5058998 (= res!2154187 (and (not (= (left!42803 (right!43133 ys!41)) Empty!15555)) (not (= (right!43133 (right!43133 ys!41)) Empty!15555))))))

(declare-fun b!5058999 () Bool)

(declare-fun res!2154188 () Bool)

(assert (=> b!5058999 (=> (not res!2154188) (not e!3157821))))

(assert (=> b!5058999 (= res!2154188 (= (cheight!15766 (right!43133 ys!41)) (+ (max!0 (height!2132 (left!42803 (right!43133 ys!41))) (height!2132 (right!43133 (right!43133 ys!41)))) 1)))))

(declare-fun b!5059000 () Bool)

(assert (=> b!5059000 (= e!3157821 (<= 0 (cheight!15766 (right!43133 ys!41))))))

(assert (= (and d!1628835 res!2154186) b!5058998))

(assert (= (and b!5058998 res!2154187) b!5058999))

(assert (= (and b!5058999 res!2154188) b!5059000))

(declare-fun m!6095720 () Bool)

(assert (=> d!1628835 m!6095720))

(declare-fun m!6095722 () Bool)

(assert (=> d!1628835 m!6095722))

(declare-fun m!6095724 () Bool)

(assert (=> b!5058999 m!6095724))

(declare-fun m!6095726 () Bool)

(assert (=> b!5058999 m!6095726))

(assert (=> b!5058999 m!6095724))

(assert (=> b!5058999 m!6095726))

(declare-fun m!6095728 () Bool)

(assert (=> b!5058999 m!6095728))

(assert (=> b!5058845 d!1628835))

(declare-fun b!5059001 () Bool)

(declare-fun res!2154189 () Bool)

(declare-fun e!3157822 () Bool)

(assert (=> b!5059001 (=> (not res!2154189) (not e!3157822))))

(assert (=> b!5059001 (= res!2154189 (<= (- (height!2132 (left!42803 (right!43133 ys!41))) (height!2132 (right!43133 (right!43133 ys!41)))) 1))))

(declare-fun b!5059002 () Bool)

(declare-fun res!2154190 () Bool)

(assert (=> b!5059002 (=> (not res!2154190) (not e!3157822))))

(assert (=> b!5059002 (= res!2154190 (not (isEmpty!31614 (left!42803 (right!43133 ys!41)))))))

(declare-fun b!5059003 () Bool)

(assert (=> b!5059003 (= e!3157822 (not (isEmpty!31614 (right!43133 (right!43133 ys!41)))))))

(declare-fun b!5059004 () Bool)

(declare-fun res!2154193 () Bool)

(assert (=> b!5059004 (=> (not res!2154193) (not e!3157822))))

(assert (=> b!5059004 (= res!2154193 (isBalanced!4417 (right!43133 (right!43133 ys!41))))))

(declare-fun b!5059005 () Bool)

(declare-fun e!3157823 () Bool)

(assert (=> b!5059005 (= e!3157823 e!3157822)))

(declare-fun res!2154191 () Bool)

(assert (=> b!5059005 (=> (not res!2154191) (not e!3157822))))

(assert (=> b!5059005 (= res!2154191 (<= (- 1) (- (height!2132 (left!42803 (right!43133 ys!41))) (height!2132 (right!43133 (right!43133 ys!41))))))))

(declare-fun d!1628837 () Bool)

(declare-fun res!2154194 () Bool)

(assert (=> d!1628837 (=> res!2154194 e!3157823)))

(assert (=> d!1628837 (= res!2154194 (not (is-Node!15555 (right!43133 ys!41))))))

(assert (=> d!1628837 (= (isBalanced!4417 (right!43133 ys!41)) e!3157823)))

(declare-fun b!5059006 () Bool)

(declare-fun res!2154192 () Bool)

(assert (=> b!5059006 (=> (not res!2154192) (not e!3157822))))

(assert (=> b!5059006 (= res!2154192 (isBalanced!4417 (left!42803 (right!43133 ys!41))))))

(assert (= (and d!1628837 (not res!2154194)) b!5059005))

(assert (= (and b!5059005 res!2154191) b!5059001))

(assert (= (and b!5059001 res!2154189) b!5059006))

(assert (= (and b!5059006 res!2154192) b!5059004))

(assert (= (and b!5059004 res!2154193) b!5059002))

(assert (= (and b!5059002 res!2154190) b!5059003))

(assert (=> b!5059005 m!6095724))

(assert (=> b!5059005 m!6095726))

(declare-fun m!6095730 () Bool)

(assert (=> b!5059006 m!6095730))

(declare-fun m!6095732 () Bool)

(assert (=> b!5059002 m!6095732))

(assert (=> b!5059001 m!6095724))

(assert (=> b!5059001 m!6095726))

(declare-fun m!6095734 () Bool)

(assert (=> b!5059003 m!6095734))

(declare-fun m!6095736 () Bool)

(assert (=> b!5059004 m!6095736))

(assert (=> b!5058797 d!1628837))

(declare-fun d!1628839 () Bool)

(declare-fun c!868034 () Bool)

(assert (=> d!1628839 (= c!868034 (is-Node!15555 (left!42803 (right!43133 xs!286))))))

(declare-fun e!3157824 () Bool)

(assert (=> d!1628839 (= (inv!77509 (left!42803 (right!43133 xs!286))) e!3157824)))

(declare-fun b!5059007 () Bool)

(assert (=> b!5059007 (= e!3157824 (inv!77513 (left!42803 (right!43133 xs!286))))))

(declare-fun b!5059008 () Bool)

(declare-fun e!3157825 () Bool)

(assert (=> b!5059008 (= e!3157824 e!3157825)))

(declare-fun res!2154195 () Bool)

(assert (=> b!5059008 (= res!2154195 (not (is-Leaf!25838 (left!42803 (right!43133 xs!286)))))))

(assert (=> b!5059008 (=> res!2154195 e!3157825)))

(declare-fun b!5059009 () Bool)

(assert (=> b!5059009 (= e!3157825 (inv!77514 (left!42803 (right!43133 xs!286))))))

(assert (= (and d!1628839 c!868034) b!5059007))

(assert (= (and d!1628839 (not c!868034)) b!5059008))

(assert (= (and b!5059008 (not res!2154195)) b!5059009))

(declare-fun m!6095738 () Bool)

(assert (=> b!5059007 m!6095738))

(declare-fun m!6095740 () Bool)

(assert (=> b!5059009 m!6095740))

(assert (=> b!5058864 d!1628839))

(declare-fun d!1628841 () Bool)

(declare-fun c!868035 () Bool)

(assert (=> d!1628841 (= c!868035 (is-Node!15555 (right!43133 (right!43133 xs!286))))))

(declare-fun e!3157826 () Bool)

(assert (=> d!1628841 (= (inv!77509 (right!43133 (right!43133 xs!286))) e!3157826)))

(declare-fun b!5059010 () Bool)

(assert (=> b!5059010 (= e!3157826 (inv!77513 (right!43133 (right!43133 xs!286))))))

(declare-fun b!5059011 () Bool)

(declare-fun e!3157827 () Bool)

(assert (=> b!5059011 (= e!3157826 e!3157827)))

(declare-fun res!2154196 () Bool)

(assert (=> b!5059011 (= res!2154196 (not (is-Leaf!25838 (right!43133 (right!43133 xs!286)))))))

(assert (=> b!5059011 (=> res!2154196 e!3157827)))

(declare-fun b!5059012 () Bool)

(assert (=> b!5059012 (= e!3157827 (inv!77514 (right!43133 (right!43133 xs!286))))))

(assert (= (and d!1628841 c!868035) b!5059010))

(assert (= (and d!1628841 (not c!868035)) b!5059011))

(assert (= (and b!5059011 (not res!2154196)) b!5059012))

(declare-fun m!6095742 () Bool)

(assert (=> b!5059010 m!6095742))

(declare-fun m!6095744 () Bool)

(assert (=> b!5059012 m!6095744))

(assert (=> b!5058864 d!1628841))

(declare-fun d!1628843 () Bool)

(declare-fun res!2154197 () Bool)

(declare-fun e!3157828 () Bool)

(assert (=> d!1628843 (=> (not res!2154197) (not e!3157828))))

(assert (=> d!1628843 (= res!2154197 (<= (size!39058 (list!18972 (xs!18893 (left!42803 xs!286)))) 512))))

(assert (=> d!1628843 (= (inv!77514 (left!42803 xs!286)) e!3157828)))

(declare-fun b!5059013 () Bool)

(declare-fun res!2154198 () Bool)

(assert (=> b!5059013 (=> (not res!2154198) (not e!3157828))))

(assert (=> b!5059013 (= res!2154198 (= (csize!31341 (left!42803 xs!286)) (size!39058 (list!18972 (xs!18893 (left!42803 xs!286))))))))

(declare-fun b!5059014 () Bool)

(assert (=> b!5059014 (= e!3157828 (and (> (csize!31341 (left!42803 xs!286)) 0) (<= (csize!31341 (left!42803 xs!286)) 512)))))

(assert (= (and d!1628843 res!2154197) b!5059013))

(assert (= (and b!5059013 res!2154198) b!5059014))

(declare-fun m!6095746 () Bool)

(assert (=> d!1628843 m!6095746))

(assert (=> d!1628843 m!6095746))

(declare-fun m!6095748 () Bool)

(assert (=> d!1628843 m!6095748))

(assert (=> b!5059013 m!6095746))

(assert (=> b!5059013 m!6095746))

(assert (=> b!5059013 m!6095748))

(assert (=> b!5058826 d!1628843))

(declare-fun d!1628845 () Bool)

(declare-fun lt!2087819 () Bool)

(assert (=> d!1628845 (= lt!2087819 (isEmpty!31616 (list!18973 (right!43133 ys!41))))))

(assert (=> d!1628845 (= lt!2087819 (= (size!39060 (right!43133 ys!41)) 0))))

(assert (=> d!1628845 (= (isEmpty!31614 (right!43133 ys!41)) lt!2087819)))

(declare-fun bs!1189518 () Bool)

(assert (= bs!1189518 d!1628845))

(declare-fun m!6095750 () Bool)

(assert (=> bs!1189518 m!6095750))

(assert (=> bs!1189518 m!6095750))

(declare-fun m!6095752 () Bool)

(assert (=> bs!1189518 m!6095752))

(assert (=> bs!1189518 m!6095698))

(assert (=> b!5058796 d!1628845))

(declare-fun d!1628847 () Bool)

(declare-fun res!2154199 () Bool)

(declare-fun e!3157829 () Bool)

(assert (=> d!1628847 (=> (not res!2154199) (not e!3157829))))

(assert (=> d!1628847 (= res!2154199 (= (csize!31340 xs!286) (+ (size!39060 (left!42803 xs!286)) (size!39060 (right!43133 xs!286)))))))

(assert (=> d!1628847 (= (inv!77513 xs!286) e!3157829)))

(declare-fun b!5059015 () Bool)

(declare-fun res!2154200 () Bool)

(assert (=> b!5059015 (=> (not res!2154200) (not e!3157829))))

(assert (=> b!5059015 (= res!2154200 (and (not (= (left!42803 xs!286) Empty!15555)) (not (= (right!43133 xs!286) Empty!15555))))))

(declare-fun b!5059016 () Bool)

(declare-fun res!2154201 () Bool)

(assert (=> b!5059016 (=> (not res!2154201) (not e!3157829))))

(assert (=> b!5059016 (= res!2154201 (= (cheight!15766 xs!286) (+ (max!0 (height!2132 (left!42803 xs!286)) (height!2132 (right!43133 xs!286))) 1)))))

(declare-fun b!5059017 () Bool)

(assert (=> b!5059017 (= e!3157829 (<= 0 (cheight!15766 xs!286)))))

(assert (= (and d!1628847 res!2154199) b!5059015))

(assert (= (and b!5059015 res!2154200) b!5059016))

(assert (= (and b!5059016 res!2154201) b!5059017))

(assert (=> d!1628847 m!6095610))

(assert (=> d!1628847 m!6095658))

(assert (=> b!5059016 m!6095404))

(assert (=> b!5059016 m!6095406))

(assert (=> b!5059016 m!6095404))

(assert (=> b!5059016 m!6095406))

(declare-fun m!6095754 () Bool)

(assert (=> b!5059016 m!6095754))

(assert (=> b!5058836 d!1628847))

(assert (=> b!5058798 d!1628823))

(assert (=> b!5058798 d!1628825))

(declare-fun d!1628849 () Bool)

(declare-fun res!2154202 () Bool)

(declare-fun e!3157830 () Bool)

(assert (=> d!1628849 (=> (not res!2154202) (not e!3157830))))

(assert (=> d!1628849 (= res!2154202 (<= (size!39058 (list!18972 (xs!18893 (right!43133 ys!41)))) 512))))

(assert (=> d!1628849 (= (inv!77514 (right!43133 ys!41)) e!3157830)))

(declare-fun b!5059018 () Bool)

(declare-fun res!2154203 () Bool)

(assert (=> b!5059018 (=> (not res!2154203) (not e!3157830))))

(assert (=> b!5059018 (= res!2154203 (= (csize!31341 (right!43133 ys!41)) (size!39058 (list!18972 (xs!18893 (right!43133 ys!41))))))))

(declare-fun b!5059019 () Bool)

(assert (=> b!5059019 (= e!3157830 (and (> (csize!31341 (right!43133 ys!41)) 0) (<= (csize!31341 (right!43133 ys!41)) 512)))))

(assert (= (and d!1628849 res!2154202) b!5059018))

(assert (= (and b!5059018 res!2154203) b!5059019))

(declare-fun m!6095756 () Bool)

(assert (=> d!1628849 m!6095756))

(assert (=> d!1628849 m!6095756))

(declare-fun m!6095758 () Bool)

(assert (=> d!1628849 m!6095758))

(assert (=> b!5059018 m!6095756))

(assert (=> b!5059018 m!6095756))

(assert (=> b!5059018 m!6095758))

(assert (=> b!5058847 d!1628849))

(declare-fun d!1628851 () Bool)

(assert (=> d!1628851 (= (inv!77510 (xs!18893 (right!43133 xs!286))) (<= (size!39058 (innerList!15643 (xs!18893 (right!43133 xs!286)))) 2147483647))))

(declare-fun bs!1189519 () Bool)

(assert (= bs!1189519 d!1628851))

(declare-fun m!6095760 () Bool)

(assert (=> bs!1189519 m!6095760))

(assert (=> b!5058865 d!1628851))

(declare-fun b!5059020 () Bool)

(declare-fun res!2154204 () Bool)

(declare-fun e!3157831 () Bool)

(assert (=> b!5059020 (=> (not res!2154204) (not e!3157831))))

(assert (=> b!5059020 (= res!2154204 (<= (- (height!2132 (left!42803 (left!42803 ys!41))) (height!2132 (right!43133 (left!42803 ys!41)))) 1))))

(declare-fun b!5059021 () Bool)

(declare-fun res!2154205 () Bool)

(assert (=> b!5059021 (=> (not res!2154205) (not e!3157831))))

(assert (=> b!5059021 (= res!2154205 (not (isEmpty!31614 (left!42803 (left!42803 ys!41)))))))

(declare-fun b!5059022 () Bool)

(assert (=> b!5059022 (= e!3157831 (not (isEmpty!31614 (right!43133 (left!42803 ys!41)))))))

(declare-fun b!5059023 () Bool)

(declare-fun res!2154208 () Bool)

(assert (=> b!5059023 (=> (not res!2154208) (not e!3157831))))

(assert (=> b!5059023 (= res!2154208 (isBalanced!4417 (right!43133 (left!42803 ys!41))))))

(declare-fun b!5059024 () Bool)

(declare-fun e!3157832 () Bool)

(assert (=> b!5059024 (= e!3157832 e!3157831)))

(declare-fun res!2154206 () Bool)

(assert (=> b!5059024 (=> (not res!2154206) (not e!3157831))))

(assert (=> b!5059024 (= res!2154206 (<= (- 1) (- (height!2132 (left!42803 (left!42803 ys!41))) (height!2132 (right!43133 (left!42803 ys!41))))))))

(declare-fun d!1628853 () Bool)

(declare-fun res!2154209 () Bool)

(assert (=> d!1628853 (=> res!2154209 e!3157832)))

(assert (=> d!1628853 (= res!2154209 (not (is-Node!15555 (left!42803 ys!41))))))

(assert (=> d!1628853 (= (isBalanced!4417 (left!42803 ys!41)) e!3157832)))

(declare-fun b!5059025 () Bool)

(declare-fun res!2154207 () Bool)

(assert (=> b!5059025 (=> (not res!2154207) (not e!3157831))))

(assert (=> b!5059025 (= res!2154207 (isBalanced!4417 (left!42803 (left!42803 ys!41))))))

(assert (= (and d!1628853 (not res!2154209)) b!5059024))

(assert (= (and b!5059024 res!2154206) b!5059020))

(assert (= (and b!5059020 res!2154204) b!5059025))

(assert (= (and b!5059025 res!2154207) b!5059023))

(assert (= (and b!5059023 res!2154208) b!5059021))

(assert (= (and b!5059021 res!2154205) b!5059022))

(assert (=> b!5059024 m!6095636))

(assert (=> b!5059024 m!6095638))

(declare-fun m!6095762 () Bool)

(assert (=> b!5059025 m!6095762))

(declare-fun m!6095764 () Bool)

(assert (=> b!5059021 m!6095764))

(assert (=> b!5059020 m!6095636))

(assert (=> b!5059020 m!6095638))

(declare-fun m!6095766 () Bool)

(assert (=> b!5059022 m!6095766))

(declare-fun m!6095768 () Bool)

(assert (=> b!5059023 m!6095768))

(assert (=> b!5058799 d!1628853))

(declare-fun b!5059026 () Bool)

(declare-fun e!3157833 () Bool)

(declare-fun tp!1413718 () Bool)

(assert (=> b!5059026 (= e!3157833 (and tp_is_empty!37033 tp!1413718))))

(assert (=> b!5058871 (= tp!1413689 e!3157833)))

(assert (= (and b!5058871 (is-Cons!58425 (t!371242 (innerList!15643 (xs!18893 xs!286))))) b!5059026))

(declare-fun b!5059027 () Bool)

(declare-fun tp!1413719 () Bool)

(declare-fun tp!1413720 () Bool)

(declare-fun e!3157835 () Bool)

(assert (=> b!5059027 (= e!3157835 (and (inv!77509 (left!42803 (left!42803 (right!43133 xs!286)))) tp!1413720 (inv!77509 (right!43133 (left!42803 (right!43133 xs!286)))) tp!1413719))))

(declare-fun b!5059029 () Bool)

(declare-fun e!3157834 () Bool)

(declare-fun tp!1413721 () Bool)

(assert (=> b!5059029 (= e!3157834 tp!1413721)))

(declare-fun b!5059028 () Bool)

(assert (=> b!5059028 (= e!3157835 (and (inv!77510 (xs!18893 (left!42803 (right!43133 xs!286)))) e!3157834))))

(assert (=> b!5058864 (= tp!1413687 (and (inv!77509 (left!42803 (right!43133 xs!286))) e!3157835))))

(assert (= (and b!5058864 (is-Node!15555 (left!42803 (right!43133 xs!286)))) b!5059027))

(assert (= b!5059028 b!5059029))

(assert (= (and b!5058864 (is-Leaf!25838 (left!42803 (right!43133 xs!286)))) b!5059028))

(declare-fun m!6095770 () Bool)

(assert (=> b!5059027 m!6095770))

(declare-fun m!6095772 () Bool)

(assert (=> b!5059027 m!6095772))

(declare-fun m!6095774 () Bool)

(assert (=> b!5059028 m!6095774))

(assert (=> b!5058864 m!6095520))

(declare-fun tp!1413722 () Bool)

(declare-fun tp!1413723 () Bool)

(declare-fun b!5059030 () Bool)

(declare-fun e!3157837 () Bool)

(assert (=> b!5059030 (= e!3157837 (and (inv!77509 (left!42803 (right!43133 (right!43133 xs!286)))) tp!1413723 (inv!77509 (right!43133 (right!43133 (right!43133 xs!286)))) tp!1413722))))

(declare-fun b!5059032 () Bool)

(declare-fun e!3157836 () Bool)

(declare-fun tp!1413724 () Bool)

(assert (=> b!5059032 (= e!3157836 tp!1413724)))

(declare-fun b!5059031 () Bool)

(assert (=> b!5059031 (= e!3157837 (and (inv!77510 (xs!18893 (right!43133 (right!43133 xs!286)))) e!3157836))))

(assert (=> b!5058864 (= tp!1413686 (and (inv!77509 (right!43133 (right!43133 xs!286))) e!3157837))))

(assert (= (and b!5058864 (is-Node!15555 (right!43133 (right!43133 xs!286)))) b!5059030))

(assert (= b!5059031 b!5059032))

(assert (= (and b!5058864 (is-Leaf!25838 (right!43133 (right!43133 xs!286)))) b!5059031))

(declare-fun m!6095776 () Bool)

(assert (=> b!5059030 m!6095776))

(declare-fun m!6095778 () Bool)

(assert (=> b!5059030 m!6095778))

(declare-fun m!6095780 () Bool)

(assert (=> b!5059031 m!6095780))

(assert (=> b!5058864 m!6095522))

(declare-fun tp!1413726 () Bool)

(declare-fun b!5059033 () Bool)

(declare-fun tp!1413725 () Bool)

(declare-fun e!3157839 () Bool)

(assert (=> b!5059033 (= e!3157839 (and (inv!77509 (left!42803 (left!42803 (right!43133 ys!41)))) tp!1413726 (inv!77509 (right!43133 (left!42803 (right!43133 ys!41)))) tp!1413725))))

(declare-fun b!5059035 () Bool)

(declare-fun e!3157838 () Bool)

(declare-fun tp!1413727 () Bool)

(assert (=> b!5059035 (= e!3157838 tp!1413727)))

(declare-fun b!5059034 () Bool)

(assert (=> b!5059034 (= e!3157839 (and (inv!77510 (xs!18893 (left!42803 (right!43133 ys!41)))) e!3157838))))

(assert (=> b!5058877 (= tp!1413694 (and (inv!77509 (left!42803 (right!43133 ys!41))) e!3157839))))

(assert (= (and b!5058877 (is-Node!15555 (left!42803 (right!43133 ys!41)))) b!5059033))

(assert (= b!5059034 b!5059035))

(assert (= (and b!5058877 (is-Leaf!25838 (left!42803 (right!43133 ys!41)))) b!5059034))

(declare-fun m!6095782 () Bool)

(assert (=> b!5059033 m!6095782))

(declare-fun m!6095784 () Bool)

(assert (=> b!5059033 m!6095784))

(declare-fun m!6095786 () Bool)

(assert (=> b!5059034 m!6095786))

(assert (=> b!5058877 m!6095532))

(declare-fun tp!1413729 () Bool)

(declare-fun b!5059036 () Bool)

(declare-fun tp!1413728 () Bool)

(declare-fun e!3157841 () Bool)

(assert (=> b!5059036 (= e!3157841 (and (inv!77509 (left!42803 (right!43133 (right!43133 ys!41)))) tp!1413729 (inv!77509 (right!43133 (right!43133 (right!43133 ys!41)))) tp!1413728))))

(declare-fun b!5059038 () Bool)

(declare-fun e!3157840 () Bool)

(declare-fun tp!1413730 () Bool)

(assert (=> b!5059038 (= e!3157840 tp!1413730)))

(declare-fun b!5059037 () Bool)

(assert (=> b!5059037 (= e!3157841 (and (inv!77510 (xs!18893 (right!43133 (right!43133 ys!41)))) e!3157840))))

(assert (=> b!5058877 (= tp!1413693 (and (inv!77509 (right!43133 (right!43133 ys!41))) e!3157841))))

(assert (= (and b!5058877 (is-Node!15555 (right!43133 (right!43133 ys!41)))) b!5059036))

(assert (= b!5059037 b!5059038))

(assert (= (and b!5058877 (is-Leaf!25838 (right!43133 (right!43133 ys!41)))) b!5059037))

(declare-fun m!6095788 () Bool)

(assert (=> b!5059036 m!6095788))

(declare-fun m!6095790 () Bool)

(assert (=> b!5059036 m!6095790))

(declare-fun m!6095792 () Bool)

(assert (=> b!5059037 m!6095792))

(assert (=> b!5058877 m!6095534))

(declare-fun b!5059039 () Bool)

(declare-fun e!3157842 () Bool)

(declare-fun tp!1413731 () Bool)

(assert (=> b!5059039 (= e!3157842 (and tp_is_empty!37033 tp!1413731))))

(assert (=> b!5058874 (= tp!1413692 e!3157842)))

(assert (= (and b!5058874 (is-Cons!58425 (innerList!15643 (xs!18893 (left!42803 ys!41))))) b!5059039))

(declare-fun b!5059040 () Bool)

(declare-fun e!3157843 () Bool)

(declare-fun tp!1413732 () Bool)

(assert (=> b!5059040 (= e!3157843 (and tp_is_empty!37033 tp!1413732))))

(assert (=> b!5058863 (= tp!1413685 e!3157843)))

(assert (= (and b!5058863 (is-Cons!58425 (innerList!15643 (xs!18893 (left!42803 xs!286))))) b!5059040))

(declare-fun tp!1413734 () Bool)

(declare-fun e!3157845 () Bool)

(declare-fun b!5059041 () Bool)

(declare-fun tp!1413733 () Bool)

(assert (=> b!5059041 (= e!3157845 (and (inv!77509 (left!42803 (left!42803 (left!42803 xs!286)))) tp!1413734 (inv!77509 (right!43133 (left!42803 (left!42803 xs!286)))) tp!1413733))))

(declare-fun b!5059043 () Bool)

(declare-fun e!3157844 () Bool)

(declare-fun tp!1413735 () Bool)

(assert (=> b!5059043 (= e!3157844 tp!1413735)))

(declare-fun b!5059042 () Bool)

(assert (=> b!5059042 (= e!3157845 (and (inv!77510 (xs!18893 (left!42803 (left!42803 xs!286)))) e!3157844))))

(assert (=> b!5058861 (= tp!1413684 (and (inv!77509 (left!42803 (left!42803 xs!286))) e!3157845))))

(assert (= (and b!5058861 (is-Node!15555 (left!42803 (left!42803 xs!286)))) b!5059041))

(assert (= b!5059042 b!5059043))

(assert (= (and b!5058861 (is-Leaf!25838 (left!42803 (left!42803 xs!286)))) b!5059042))

(declare-fun m!6095794 () Bool)

(assert (=> b!5059041 m!6095794))

(declare-fun m!6095796 () Bool)

(assert (=> b!5059041 m!6095796))

(declare-fun m!6095798 () Bool)

(assert (=> b!5059042 m!6095798))

(assert (=> b!5058861 m!6095514))

(declare-fun tp!1413736 () Bool)

(declare-fun b!5059044 () Bool)

(declare-fun tp!1413737 () Bool)

(declare-fun e!3157847 () Bool)

(assert (=> b!5059044 (= e!3157847 (and (inv!77509 (left!42803 (right!43133 (left!42803 xs!286)))) tp!1413737 (inv!77509 (right!43133 (right!43133 (left!42803 xs!286)))) tp!1413736))))

(declare-fun b!5059046 () Bool)

(declare-fun e!3157846 () Bool)

(declare-fun tp!1413738 () Bool)

(assert (=> b!5059046 (= e!3157846 tp!1413738)))

(declare-fun b!5059045 () Bool)

(assert (=> b!5059045 (= e!3157847 (and (inv!77510 (xs!18893 (right!43133 (left!42803 xs!286)))) e!3157846))))

(assert (=> b!5058861 (= tp!1413683 (and (inv!77509 (right!43133 (left!42803 xs!286))) e!3157847))))

(assert (= (and b!5058861 (is-Node!15555 (right!43133 (left!42803 xs!286)))) b!5059044))

(assert (= b!5059045 b!5059046))

(assert (= (and b!5058861 (is-Leaf!25838 (right!43133 (left!42803 xs!286)))) b!5059045))

(declare-fun m!6095800 () Bool)

(assert (=> b!5059044 m!6095800))

(declare-fun m!6095802 () Bool)

(assert (=> b!5059044 m!6095802))

(declare-fun m!6095804 () Bool)

(assert (=> b!5059045 m!6095804))

(assert (=> b!5058861 m!6095516))

(declare-fun b!5059047 () Bool)

(declare-fun e!3157848 () Bool)

(declare-fun tp!1413739 () Bool)

(assert (=> b!5059047 (= e!3157848 (and tp_is_empty!37033 tp!1413739))))

(assert (=> b!5058866 (= tp!1413688 e!3157848)))

(assert (= (and b!5058866 (is-Cons!58425 (innerList!15643 (xs!18893 (right!43133 xs!286))))) b!5059047))

(declare-fun b!5059048 () Bool)

(declare-fun e!3157849 () Bool)

(declare-fun tp!1413740 () Bool)

(assert (=> b!5059048 (= e!3157849 (and tp_is_empty!37033 tp!1413740))))

(assert (=> b!5058852 (= tp!1413676 e!3157849)))

(assert (= (and b!5058852 (is-Cons!58425 (t!371242 (innerList!15643 (xs!18893 ys!41))))) b!5059048))

(declare-fun b!5059049 () Bool)

(declare-fun e!3157850 () Bool)

(declare-fun tp!1413741 () Bool)

(assert (=> b!5059049 (= e!3157850 (and tp_is_empty!37033 tp!1413741))))

(assert (=> b!5058879 (= tp!1413695 e!3157850)))

(assert (= (and b!5058879 (is-Cons!58425 (innerList!15643 (xs!18893 (right!43133 ys!41))))) b!5059049))

(declare-fun tp!1413743 () Bool)

(declare-fun b!5059050 () Bool)

(declare-fun tp!1413742 () Bool)

(declare-fun e!3157852 () Bool)

(assert (=> b!5059050 (= e!3157852 (and (inv!77509 (left!42803 (left!42803 (left!42803 ys!41)))) tp!1413743 (inv!77509 (right!43133 (left!42803 (left!42803 ys!41)))) tp!1413742))))

(declare-fun b!5059052 () Bool)

(declare-fun e!3157851 () Bool)

(declare-fun tp!1413744 () Bool)

(assert (=> b!5059052 (= e!3157851 tp!1413744)))

(declare-fun b!5059051 () Bool)

(assert (=> b!5059051 (= e!3157852 (and (inv!77510 (xs!18893 (left!42803 (left!42803 ys!41)))) e!3157851))))

(assert (=> b!5058872 (= tp!1413691 (and (inv!77509 (left!42803 (left!42803 ys!41))) e!3157852))))

(assert (= (and b!5058872 (is-Node!15555 (left!42803 (left!42803 ys!41)))) b!5059050))

(assert (= b!5059051 b!5059052))

(assert (= (and b!5058872 (is-Leaf!25838 (left!42803 (left!42803 ys!41)))) b!5059051))

(declare-fun m!6095806 () Bool)

(assert (=> b!5059050 m!6095806))

(declare-fun m!6095808 () Bool)

(assert (=> b!5059050 m!6095808))

(declare-fun m!6095810 () Bool)

(assert (=> b!5059051 m!6095810))

(assert (=> b!5058872 m!6095526))

(declare-fun e!3157854 () Bool)

(declare-fun tp!1413745 () Bool)

(declare-fun tp!1413746 () Bool)

(declare-fun b!5059053 () Bool)

(assert (=> b!5059053 (= e!3157854 (and (inv!77509 (left!42803 (right!43133 (left!42803 ys!41)))) tp!1413746 (inv!77509 (right!43133 (right!43133 (left!42803 ys!41)))) tp!1413745))))

(declare-fun b!5059055 () Bool)

(declare-fun e!3157853 () Bool)

(declare-fun tp!1413747 () Bool)

(assert (=> b!5059055 (= e!3157853 tp!1413747)))

(declare-fun b!5059054 () Bool)

(assert (=> b!5059054 (= e!3157854 (and (inv!77510 (xs!18893 (right!43133 (left!42803 ys!41)))) e!3157853))))

(assert (=> b!5058872 (= tp!1413690 (and (inv!77509 (right!43133 (left!42803 ys!41))) e!3157854))))

(assert (= (and b!5058872 (is-Node!15555 (right!43133 (left!42803 ys!41)))) b!5059053))

(assert (= b!5059054 b!5059055))

(assert (= (and b!5058872 (is-Leaf!25838 (right!43133 (left!42803 ys!41)))) b!5059054))

(declare-fun m!6095812 () Bool)

(assert (=> b!5059053 m!6095812))

(declare-fun m!6095814 () Bool)

(assert (=> b!5059053 m!6095814))

(declare-fun m!6095816 () Bool)

(assert (=> b!5059054 m!6095816))

(assert (=> b!5058872 m!6095528))

(push 1)

(assert (not b!5058941))

(assert tp_is_empty!37033)

(assert (not b!5058979))

(assert (not b!5059048))

(assert (not b!5058965))

(assert (not b!5059003))

(assert (not b!5059027))

(assert (not b!5059026))

(assert (not b!5059037))

(assert (not b!5059004))

(assert (not b!5058934))

(assert (not b!5059025))

(assert (not b!5059034))

(assert (not b!5059035))

(assert (not b!5059054))

(assert (not b!5058877))

(assert (not d!1628803))

(assert (not d!1628821))

(assert (not b!5058946))

(assert (not b!5059039))

(assert (not b!5058957))

(assert (not d!1628813))

(assert (not d!1628831))

(assert (not b!5059006))

(assert (not b!5059036))

(assert (not d!1628817))

(assert (not b!5059010))

(assert (not b!5058939))

(assert (not b!5058999))

(assert (not b!5059051))

(assert (not b!5059028))

(assert (not b!5059018))

(assert (not b!5058977))

(assert (not b!5058997))

(assert (not b!5058966))

(assert (not b!5058969))

(assert (not b!5059046))

(assert (not b!5058864))

(assert (not b!5059052))

(assert (not b!5059045))

(assert (not d!1628801))

(assert (not b!5059031))

(assert (not b!5059009))

(assert (not b!5058861))

(assert (not b!5058960))

(assert (not b!5059042))

(assert (not b!5058938))

(assert (not b!5059033))

(assert (not d!1628793))

(assert (not b!5058945))

(assert (not b!5059040))

(assert (not b!5058947))

(assert (not b!5059007))

(assert (not b!5059024))

(assert (not b!5059043))

(assert (not b!5059013))

(assert (not b!5059012))

(assert (not b!5059049))

(assert (not b!5058962))

(assert (not b!5059021))

(assert (not b!5059047))

(assert (not b!5058943))

(assert (not d!1628851))

(assert (not b!5058963))

(assert (not b!5058959))

(assert (not b!5058968))

(assert (not b!5059030))

(assert (not b!5059055))

(assert (not b!5059044))

(assert (not d!1628845))

(assert (not b!5059032))

(assert (not b!5059005))

(assert (not d!1628847))

(assert (not b!5058978))

(assert (not b!5058985))

(assert (not b!5058975))

(assert (not b!5059029))

(assert (not b!5058980))

(assert (not b!5059038))

(assert (not d!1628829))

(assert (not b!5059016))

(assert (not b!5059001))

(assert (not d!1628819))

(assert (not d!1628783))

(assert (not b!5058983))

(assert (not d!1628799))

(assert (not b!5059053))

(assert (not d!1628811))

(assert (not b!5059002))

(assert (not b!5058974))

(assert (not b!5059050))

(assert (not b!5058992))

(assert (not b!5059020))

(assert (not d!1628843))

(assert (not b!5059023))

(assert (not b!5058936))

(assert (not b!5058942))

(assert (not b!5058972))

(assert (not d!1628849))

(assert (not d!1628809))

(assert (not d!1628835))

(assert (not b!5058994))

(assert (not b!5058944))

(assert (not b!5058955))

(assert (not b!5058976))

(assert (not b!5059041))

(assert (not b!5058872))

(assert (not d!1628785))

(assert (not b!5059022))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1628927 () Bool)

(declare-fun lt!2087832 () Int)

(assert (=> d!1628927 (= lt!2087832 (size!39058 (list!18973 (left!42803 (right!43133 xs!286)))))))

(assert (=> d!1628927 (= lt!2087832 (ite (is-Empty!15555 (left!42803 (right!43133 xs!286))) 0 (ite (is-Leaf!25838 (left!42803 (right!43133 xs!286))) (csize!31341 (left!42803 (right!43133 xs!286))) (csize!31340 (left!42803 (right!43133 xs!286))))))))

(assert (=> d!1628927 (= (size!39060 (left!42803 (right!43133 xs!286))) lt!2087832)))

(declare-fun bs!1189528 () Bool)

(assert (= bs!1189528 d!1628927))

(declare-fun m!6096034 () Bool)

(assert (=> bs!1189528 m!6096034))

(assert (=> bs!1189528 m!6096034))

(declare-fun m!6096036 () Bool)

(assert (=> bs!1189528 m!6096036))

(assert (=> d!1628813 d!1628927))

(declare-fun d!1628929 () Bool)

(declare-fun lt!2087833 () Int)

(assert (=> d!1628929 (= lt!2087833 (size!39058 (list!18973 (right!43133 (right!43133 xs!286)))))))

(assert (=> d!1628929 (= lt!2087833 (ite (is-Empty!15555 (right!43133 (right!43133 xs!286))) 0 (ite (is-Leaf!25838 (right!43133 (right!43133 xs!286))) (csize!31341 (right!43133 (right!43133 xs!286))) (csize!31340 (right!43133 (right!43133 xs!286))))))))

(assert (=> d!1628929 (= (size!39060 (right!43133 (right!43133 xs!286))) lt!2087833)))

(declare-fun bs!1189529 () Bool)

(assert (= bs!1189529 d!1628929))

(declare-fun m!6096038 () Bool)

(assert (=> bs!1189529 m!6096038))

(assert (=> bs!1189529 m!6096038))

(declare-fun m!6096040 () Bool)

(assert (=> bs!1189529 m!6096040))

(assert (=> d!1628813 d!1628929))

(declare-fun d!1628931 () Bool)

(assert (=> d!1628931 (= (inv!77510 (xs!18893 (left!42803 (left!42803 ys!41)))) (<= (size!39058 (innerList!15643 (xs!18893 (left!42803 (left!42803 ys!41))))) 2147483647))))

(declare-fun bs!1189530 () Bool)

(assert (= bs!1189530 d!1628931))

(declare-fun m!6096042 () Bool)

(assert (=> bs!1189530 m!6096042))

(assert (=> b!5059051 d!1628931))

(declare-fun d!1628933 () Bool)

(declare-fun c!868048 () Bool)

(assert (=> d!1628933 (= c!868048 (is-Node!15555 (left!42803 (right!43133 (right!43133 xs!286)))))))

(declare-fun e!3157921 () Bool)

(assert (=> d!1628933 (= (inv!77509 (left!42803 (right!43133 (right!43133 xs!286)))) e!3157921)))

(declare-fun b!5059182 () Bool)

(assert (=> b!5059182 (= e!3157921 (inv!77513 (left!42803 (right!43133 (right!43133 xs!286)))))))

(declare-fun b!5059183 () Bool)

(declare-fun e!3157922 () Bool)

(assert (=> b!5059183 (= e!3157921 e!3157922)))

(declare-fun res!2154282 () Bool)

(assert (=> b!5059183 (= res!2154282 (not (is-Leaf!25838 (left!42803 (right!43133 (right!43133 xs!286))))))))

(assert (=> b!5059183 (=> res!2154282 e!3157922)))

(declare-fun b!5059184 () Bool)

(assert (=> b!5059184 (= e!3157922 (inv!77514 (left!42803 (right!43133 (right!43133 xs!286)))))))

(assert (= (and d!1628933 c!868048) b!5059182))

(assert (= (and d!1628933 (not c!868048)) b!5059183))

(assert (= (and b!5059183 (not res!2154282)) b!5059184))

(declare-fun m!6096044 () Bool)

(assert (=> b!5059182 m!6096044))

(declare-fun m!6096046 () Bool)

(assert (=> b!5059184 m!6096046))

(assert (=> b!5059030 d!1628933))

(declare-fun d!1628935 () Bool)

(declare-fun c!868049 () Bool)

(assert (=> d!1628935 (= c!868049 (is-Node!15555 (right!43133 (right!43133 (right!43133 xs!286)))))))

(declare-fun e!3157923 () Bool)

(assert (=> d!1628935 (= (inv!77509 (right!43133 (right!43133 (right!43133 xs!286)))) e!3157923)))

(declare-fun b!5059185 () Bool)

(assert (=> b!5059185 (= e!3157923 (inv!77513 (right!43133 (right!43133 (right!43133 xs!286)))))))

(declare-fun b!5059186 () Bool)

(declare-fun e!3157924 () Bool)

(assert (=> b!5059186 (= e!3157923 e!3157924)))

(declare-fun res!2154283 () Bool)

(assert (=> b!5059186 (= res!2154283 (not (is-Leaf!25838 (right!43133 (right!43133 (right!43133 xs!286))))))))

(assert (=> b!5059186 (=> res!2154283 e!3157924)))

(declare-fun b!5059187 () Bool)

(assert (=> b!5059187 (= e!3157924 (inv!77514 (right!43133 (right!43133 (right!43133 xs!286)))))))

(assert (= (and d!1628935 c!868049) b!5059185))

(assert (= (and d!1628935 (not c!868049)) b!5059186))

(assert (= (and b!5059186 (not res!2154283)) b!5059187))

(declare-fun m!6096048 () Bool)

(assert (=> b!5059185 m!6096048))

(declare-fun m!6096050 () Bool)

(assert (=> b!5059187 m!6096050))

(assert (=> b!5059030 d!1628935))

(declare-fun d!1628937 () Bool)

(assert (=> d!1628937 (= (height!2132 (left!42803 (right!43133 ys!41))) (ite (is-Empty!15555 (left!42803 (right!43133 ys!41))) 0 (ite (is-Leaf!25838 (left!42803 (right!43133 ys!41))) 1 (cheight!15766 (left!42803 (right!43133 ys!41))))))))

(assert (=> b!5059005 d!1628937))

(declare-fun d!1628939 () Bool)

(assert (=> d!1628939 (= (height!2132 (right!43133 (right!43133 ys!41))) (ite (is-Empty!15555 (right!43133 (right!43133 ys!41))) 0 (ite (is-Leaf!25838 (right!43133 (right!43133 ys!41))) 1 (cheight!15766 (right!43133 (right!43133 ys!41))))))))

(assert (=> b!5059005 d!1628939))

(declare-fun d!1628941 () Bool)

(assert (=> d!1628941 (= (isEmpty!31616 (list!18973 (left!42803 xs!286))) (is-Nil!58425 (list!18973 (left!42803 xs!286))))))

(assert (=> d!1628785 d!1628941))

(declare-fun d!1628943 () Bool)

(declare-fun c!868054 () Bool)

(assert (=> d!1628943 (= c!868054 (is-Empty!15555 (left!42803 xs!286)))))

(declare-fun e!3157929 () List!58549)

(assert (=> d!1628943 (= (list!18973 (left!42803 xs!286)) e!3157929)))

(declare-fun b!5059199 () Bool)

(declare-fun e!3157930 () List!58549)

(declare-fun ++!12774 (List!58549 List!58549) List!58549)

(assert (=> b!5059199 (= e!3157930 (++!12774 (list!18973 (left!42803 (left!42803 xs!286))) (list!18973 (right!43133 (left!42803 xs!286)))))))

(declare-fun b!5059196 () Bool)

(assert (=> b!5059196 (= e!3157929 Nil!58425)))

(declare-fun b!5059198 () Bool)

(assert (=> b!5059198 (= e!3157930 (list!18972 (xs!18893 (left!42803 xs!286))))))

(declare-fun b!5059197 () Bool)

(assert (=> b!5059197 (= e!3157929 e!3157930)))

(declare-fun c!868055 () Bool)

(assert (=> b!5059197 (= c!868055 (is-Leaf!25838 (left!42803 xs!286)))))

(assert (= (and d!1628943 c!868054) b!5059196))

(assert (= (and d!1628943 (not c!868054)) b!5059197))

(assert (= (and b!5059197 c!868055) b!5059198))

(assert (= (and b!5059197 (not c!868055)) b!5059199))

(declare-fun m!6096052 () Bool)

(assert (=> b!5059199 m!6096052))

(declare-fun m!6096054 () Bool)

(assert (=> b!5059199 m!6096054))

(assert (=> b!5059199 m!6096052))

(assert (=> b!5059199 m!6096054))

(declare-fun m!6096056 () Bool)

(assert (=> b!5059199 m!6096056))

(assert (=> b!5059198 m!6095746))

(assert (=> d!1628785 d!1628943))

(declare-fun d!1628945 () Bool)

(declare-fun lt!2087834 () Int)

(assert (=> d!1628945 (= lt!2087834 (size!39058 (list!18973 (left!42803 xs!286))))))

(assert (=> d!1628945 (= lt!2087834 (ite (is-Empty!15555 (left!42803 xs!286)) 0 (ite (is-Leaf!25838 (left!42803 xs!286)) (csize!31341 (left!42803 xs!286)) (csize!31340 (left!42803 xs!286)))))))

(assert (=> d!1628945 (= (size!39060 (left!42803 xs!286)) lt!2087834)))

(declare-fun bs!1189531 () Bool)

(assert (= bs!1189531 d!1628945))

(assert (=> bs!1189531 m!6095606))

(assert (=> bs!1189531 m!6095606))

(declare-fun m!6096058 () Bool)

(assert (=> bs!1189531 m!6096058))

(assert (=> d!1628785 d!1628945))

(assert (=> b!5058877 d!1628787))

(assert (=> b!5058877 d!1628789))

(declare-fun d!1628947 () Bool)

(declare-fun lt!2087835 () Int)

(assert (=> d!1628947 (>= lt!2087835 0)))

(declare-fun e!3157931 () Int)

(assert (=> d!1628947 (= lt!2087835 e!3157931)))

(declare-fun c!868056 () Bool)

(assert (=> d!1628947 (= c!868056 (is-Nil!58425 (list!18972 (xs!18893 (right!43133 ys!41)))))))

(assert (=> d!1628947 (= (size!39058 (list!18972 (xs!18893 (right!43133 ys!41)))) lt!2087835)))

(declare-fun b!5059200 () Bool)

(assert (=> b!5059200 (= e!3157931 0)))

(declare-fun b!5059201 () Bool)

(assert (=> b!5059201 (= e!3157931 (+ 1 (size!39058 (t!371242 (list!18972 (xs!18893 (right!43133 ys!41)))))))))

(assert (= (and d!1628947 c!868056) b!5059200))

(assert (= (and d!1628947 (not c!868056)) b!5059201))

(declare-fun m!6096060 () Bool)

(assert (=> b!5059201 m!6096060))

(assert (=> d!1628849 d!1628947))

(declare-fun d!1628949 () Bool)

(assert (=> d!1628949 (= (list!18972 (xs!18893 (right!43133 ys!41))) (innerList!15643 (xs!18893 (right!43133 ys!41))))))

(assert (=> d!1628849 d!1628949))

(declare-fun d!1628951 () Bool)

(declare-fun lt!2087836 () Int)

(assert (=> d!1628951 (= lt!2087836 (size!39058 (list!18973 (left!42803 (left!42803 ys!41)))))))

(assert (=> d!1628951 (= lt!2087836 (ite (is-Empty!15555 (left!42803 (left!42803 ys!41))) 0 (ite (is-Leaf!25838 (left!42803 (left!42803 ys!41))) (csize!31341 (left!42803 (left!42803 ys!41))) (csize!31340 (left!42803 (left!42803 ys!41))))))))

(assert (=> d!1628951 (= (size!39060 (left!42803 (left!42803 ys!41))) lt!2087836)))

(declare-fun bs!1189532 () Bool)

(assert (= bs!1189532 d!1628951))

(declare-fun m!6096062 () Bool)

(assert (=> bs!1189532 m!6096062))

(assert (=> bs!1189532 m!6096062))

(declare-fun m!6096064 () Bool)

(assert (=> bs!1189532 m!6096064))

(assert (=> d!1628793 d!1628951))

(declare-fun d!1628953 () Bool)

(declare-fun lt!2087837 () Int)

(assert (=> d!1628953 (= lt!2087837 (size!39058 (list!18973 (right!43133 (left!42803 ys!41)))))))

(assert (=> d!1628953 (= lt!2087837 (ite (is-Empty!15555 (right!43133 (left!42803 ys!41))) 0 (ite (is-Leaf!25838 (right!43133 (left!42803 ys!41))) (csize!31341 (right!43133 (left!42803 ys!41))) (csize!31340 (right!43133 (left!42803 ys!41))))))))

(assert (=> d!1628953 (= (size!39060 (right!43133 (left!42803 ys!41))) lt!2087837)))

(declare-fun bs!1189533 () Bool)

(assert (= bs!1189533 d!1628953))

(declare-fun m!6096066 () Bool)

(assert (=> bs!1189533 m!6096066))

(assert (=> bs!1189533 m!6096066))

(declare-fun m!6096068 () Bool)

(assert (=> bs!1189533 m!6096068))

(assert (=> d!1628793 d!1628953))

(declare-fun d!1628955 () Bool)

(declare-fun lt!2087838 () Bool)

(assert (=> d!1628955 (= lt!2087838 (isEmpty!31616 (list!18973 (left!42803 (left!42803 xs!286)))))))

(assert (=> d!1628955 (= lt!2087838 (= (size!39060 (left!42803 (left!42803 xs!286))) 0))))

(assert (=> d!1628955 (= (isEmpty!31614 (left!42803 (left!42803 xs!286))) lt!2087838)))

(declare-fun bs!1189534 () Bool)

(assert (= bs!1189534 d!1628955))

(assert (=> bs!1189534 m!6096052))

(assert (=> bs!1189534 m!6096052))

(declare-fun m!6096070 () Bool)

(assert (=> bs!1189534 m!6096070))

(assert (=> bs!1189534 m!6095712))

(assert (=> b!5058975 d!1628955))

(declare-fun d!1628957 () Bool)

(declare-fun lt!2087839 () Int)

(assert (=> d!1628957 (>= lt!2087839 0)))

(declare-fun e!3157932 () Int)

(assert (=> d!1628957 (= lt!2087839 e!3157932)))

(declare-fun c!868057 () Bool)

(assert (=> d!1628957 (= c!868057 (is-Nil!58425 (list!18972 (xs!18893 ys!41))))))

(assert (=> d!1628957 (= (size!39058 (list!18972 (xs!18893 ys!41))) lt!2087839)))

(declare-fun b!5059202 () Bool)

(assert (=> b!5059202 (= e!3157932 0)))

(declare-fun b!5059203 () Bool)

(assert (=> b!5059203 (= e!3157932 (+ 1 (size!39058 (t!371242 (list!18972 (xs!18893 ys!41))))))))

(assert (= (and d!1628957 c!868057) b!5059202))

(assert (= (and d!1628957 (not c!868057)) b!5059203))

(declare-fun m!6096072 () Bool)

(assert (=> b!5059203 m!6096072))

(assert (=> d!1628821 d!1628957))

(declare-fun d!1628959 () Bool)

(assert (=> d!1628959 (= (list!18972 (xs!18893 ys!41)) (innerList!15643 (xs!18893 ys!41)))))

(assert (=> d!1628821 d!1628959))

(declare-fun d!1628961 () Bool)

(declare-fun c!868058 () Bool)

(assert (=> d!1628961 (= c!868058 (is-Node!15555 (left!42803 (left!42803 (left!42803 xs!286)))))))

(declare-fun e!3157933 () Bool)

(assert (=> d!1628961 (= (inv!77509 (left!42803 (left!42803 (left!42803 xs!286)))) e!3157933)))

(declare-fun b!5059204 () Bool)

(assert (=> b!5059204 (= e!3157933 (inv!77513 (left!42803 (left!42803 (left!42803 xs!286)))))))

(declare-fun b!5059205 () Bool)

(declare-fun e!3157934 () Bool)

(assert (=> b!5059205 (= e!3157933 e!3157934)))

(declare-fun res!2154284 () Bool)

(assert (=> b!5059205 (= res!2154284 (not (is-Leaf!25838 (left!42803 (left!42803 (left!42803 xs!286))))))))

(assert (=> b!5059205 (=> res!2154284 e!3157934)))

(declare-fun b!5059206 () Bool)

(assert (=> b!5059206 (= e!3157934 (inv!77514 (left!42803 (left!42803 (left!42803 xs!286)))))))

(assert (= (and d!1628961 c!868058) b!5059204))

(assert (= (and d!1628961 (not c!868058)) b!5059205))

(assert (= (and b!5059205 (not res!2154284)) b!5059206))

(declare-fun m!6096074 () Bool)

(assert (=> b!5059204 m!6096074))

(declare-fun m!6096076 () Bool)

(assert (=> b!5059206 m!6096076))

(assert (=> b!5059041 d!1628961))

(declare-fun d!1628963 () Bool)

(declare-fun c!868059 () Bool)

(assert (=> d!1628963 (= c!868059 (is-Node!15555 (right!43133 (left!42803 (left!42803 xs!286)))))))

(declare-fun e!3157935 () Bool)

(assert (=> d!1628963 (= (inv!77509 (right!43133 (left!42803 (left!42803 xs!286)))) e!3157935)))

(declare-fun b!5059207 () Bool)

(assert (=> b!5059207 (= e!3157935 (inv!77513 (right!43133 (left!42803 (left!42803 xs!286)))))))

(declare-fun b!5059208 () Bool)

(declare-fun e!3157936 () Bool)

(assert (=> b!5059208 (= e!3157935 e!3157936)))

(declare-fun res!2154285 () Bool)

(assert (=> b!5059208 (= res!2154285 (not (is-Leaf!25838 (right!43133 (left!42803 (left!42803 xs!286))))))))

(assert (=> b!5059208 (=> res!2154285 e!3157936)))

(declare-fun b!5059209 () Bool)

(assert (=> b!5059209 (= e!3157936 (inv!77514 (right!43133 (left!42803 (left!42803 xs!286)))))))

(assert (= (and d!1628963 c!868059) b!5059207))

(assert (= (and d!1628963 (not c!868059)) b!5059208))

(assert (= (and b!5059208 (not res!2154285)) b!5059209))

(declare-fun m!6096078 () Bool)

(assert (=> b!5059207 m!6096078))

(declare-fun m!6096080 () Bool)

(assert (=> b!5059209 m!6096080))

(assert (=> b!5059041 d!1628963))

(declare-fun d!1628965 () Bool)

(assert (=> d!1628965 (= (isEmpty!31616 (list!18973 (right!43133 ys!41))) (is-Nil!58425 (list!18973 (right!43133 ys!41))))))

(assert (=> d!1628845 d!1628965))

(declare-fun d!1628967 () Bool)

(declare-fun c!868060 () Bool)

(assert (=> d!1628967 (= c!868060 (is-Empty!15555 (right!43133 ys!41)))))

(declare-fun e!3157937 () List!58549)

(assert (=> d!1628967 (= (list!18973 (right!43133 ys!41)) e!3157937)))

(declare-fun b!5059213 () Bool)

(declare-fun e!3157938 () List!58549)

(assert (=> b!5059213 (= e!3157938 (++!12774 (list!18973 (left!42803 (right!43133 ys!41))) (list!18973 (right!43133 (right!43133 ys!41)))))))

(declare-fun b!5059210 () Bool)

(assert (=> b!5059210 (= e!3157937 Nil!58425)))

(declare-fun b!5059212 () Bool)

(assert (=> b!5059212 (= e!3157938 (list!18972 (xs!18893 (right!43133 ys!41))))))

(declare-fun b!5059211 () Bool)

(assert (=> b!5059211 (= e!3157937 e!3157938)))

(declare-fun c!868061 () Bool)

(assert (=> b!5059211 (= c!868061 (is-Leaf!25838 (right!43133 ys!41)))))

(assert (= (and d!1628967 c!868060) b!5059210))

(assert (= (and d!1628967 (not c!868060)) b!5059211))

(assert (= (and b!5059211 c!868061) b!5059212))

(assert (= (and b!5059211 (not c!868061)) b!5059213))

(declare-fun m!6096082 () Bool)

(assert (=> b!5059213 m!6096082))

(declare-fun m!6096084 () Bool)

(assert (=> b!5059213 m!6096084))

(assert (=> b!5059213 m!6096082))

(assert (=> b!5059213 m!6096084))

(declare-fun m!6096086 () Bool)

(assert (=> b!5059213 m!6096086))

(assert (=> b!5059212 m!6095756))

(assert (=> d!1628845 d!1628967))

(declare-fun d!1628969 () Bool)

(declare-fun lt!2087840 () Int)

(assert (=> d!1628969 (= lt!2087840 (size!39058 (list!18973 (right!43133 ys!41))))))

(assert (=> d!1628969 (= lt!2087840 (ite (is-Empty!15555 (right!43133 ys!41)) 0 (ite (is-Leaf!25838 (right!43133 ys!41)) (csize!31341 (right!43133 ys!41)) (csize!31340 (right!43133 ys!41)))))))

(assert (=> d!1628969 (= (size!39060 (right!43133 ys!41)) lt!2087840)))

(declare-fun bs!1189535 () Bool)

(assert (= bs!1189535 d!1628969))

(assert (=> bs!1189535 m!6095750))

(assert (=> bs!1189535 m!6095750))

(declare-fun m!6096088 () Bool)

(assert (=> bs!1189535 m!6096088))

(assert (=> d!1628845 d!1628969))

(declare-fun d!1628971 () Bool)

(assert (=> d!1628971 (= (height!2132 (left!42803 (right!43133 xs!286))) (ite (is-Empty!15555 (left!42803 (right!43133 xs!286))) 0 (ite (is-Leaf!25838 (left!42803 (right!43133 xs!286))) 1 (cheight!15766 (left!42803 (right!43133 xs!286))))))))

(assert (=> b!5058942 d!1628971))

(declare-fun d!1628973 () Bool)

(assert (=> d!1628973 (= (height!2132 (right!43133 (right!43133 xs!286))) (ite (is-Empty!15555 (right!43133 (right!43133 xs!286))) 0 (ite (is-Leaf!25838 (right!43133 (right!43133 xs!286))) 1 (cheight!15766 (right!43133 (right!43133 xs!286))))))))

(assert (=> b!5058942 d!1628973))

(assert (=> b!5059018 d!1628947))

(assert (=> b!5059018 d!1628949))

(declare-fun d!1628975 () Bool)

(assert (=> d!1628975 (= (max!0 (height!2132 (left!42803 (right!43133 xs!286))) (height!2132 (right!43133 (right!43133 xs!286)))) (ite (< (height!2132 (left!42803 (right!43133 xs!286))) (height!2132 (right!43133 (right!43133 xs!286)))) (height!2132 (right!43133 (right!43133 xs!286))) (height!2132 (left!42803 (right!43133 xs!286)))))))

(assert (=> b!5058972 d!1628975))

(assert (=> b!5058972 d!1628971))

(assert (=> b!5058972 d!1628973))

(declare-fun d!1628977 () Bool)

(assert (=> d!1628977 (= (height!2132 (left!42803 (left!42803 ys!41))) (ite (is-Empty!15555 (left!42803 (left!42803 ys!41))) 0 (ite (is-Leaf!25838 (left!42803 (left!42803 ys!41))) 1 (cheight!15766 (left!42803 (left!42803 ys!41))))))))

(assert (=> b!5059020 d!1628977))

(declare-fun d!1628979 () Bool)

(assert (=> d!1628979 (= (height!2132 (right!43133 (left!42803 ys!41))) (ite (is-Empty!15555 (right!43133 (left!42803 ys!41))) 0 (ite (is-Leaf!25838 (right!43133 (left!42803 ys!41))) 1 (cheight!15766 (right!43133 (left!42803 ys!41))))))))

(assert (=> b!5059020 d!1628979))

(declare-fun d!1628981 () Bool)

(declare-fun lt!2087841 () Int)

(assert (=> d!1628981 (>= lt!2087841 0)))

(declare-fun e!3157939 () Int)

(assert (=> d!1628981 (= lt!2087841 e!3157939)))

(declare-fun c!868062 () Bool)

(assert (=> d!1628981 (= c!868062 (is-Nil!58425 (t!371242 (innerList!15643 (xs!18893 xs!286)))))))

(assert (=> d!1628981 (= (size!39058 (t!371242 (innerList!15643 (xs!18893 xs!286)))) lt!2087841)))

(declare-fun b!5059214 () Bool)

(assert (=> b!5059214 (= e!3157939 0)))

(declare-fun b!5059215 () Bool)

(assert (=> b!5059215 (= e!3157939 (+ 1 (size!39058 (t!371242 (t!371242 (innerList!15643 (xs!18893 xs!286)))))))))

(assert (= (and d!1628981 c!868062) b!5059214))

(assert (= (and d!1628981 (not c!868062)) b!5059215))

(declare-fun m!6096090 () Bool)

(assert (=> b!5059215 m!6096090))

(assert (=> b!5058997 d!1628981))

(declare-fun b!5059216 () Bool)

(declare-fun res!2154286 () Bool)

(declare-fun e!3157940 () Bool)

(assert (=> b!5059216 (=> (not res!2154286) (not e!3157940))))

(assert (=> b!5059216 (= res!2154286 (<= (- (height!2132 (left!42803 (right!43133 (left!42803 xs!286)))) (height!2132 (right!43133 (right!43133 (left!42803 xs!286))))) 1))))

(declare-fun b!5059217 () Bool)

(declare-fun res!2154287 () Bool)

(assert (=> b!5059217 (=> (not res!2154287) (not e!3157940))))

(assert (=> b!5059217 (= res!2154287 (not (isEmpty!31614 (left!42803 (right!43133 (left!42803 xs!286))))))))

(declare-fun b!5059218 () Bool)

(assert (=> b!5059218 (= e!3157940 (not (isEmpty!31614 (right!43133 (right!43133 (left!42803 xs!286))))))))

(declare-fun b!5059219 () Bool)

(declare-fun res!2154290 () Bool)

(assert (=> b!5059219 (=> (not res!2154290) (not e!3157940))))

(assert (=> b!5059219 (= res!2154290 (isBalanced!4417 (right!43133 (right!43133 (left!42803 xs!286)))))))

(declare-fun b!5059220 () Bool)

(declare-fun e!3157941 () Bool)

(assert (=> b!5059220 (= e!3157941 e!3157940)))

(declare-fun res!2154288 () Bool)

(assert (=> b!5059220 (=> (not res!2154288) (not e!3157940))))

(assert (=> b!5059220 (= res!2154288 (<= (- 1) (- (height!2132 (left!42803 (right!43133 (left!42803 xs!286)))) (height!2132 (right!43133 (right!43133 (left!42803 xs!286)))))))))

(declare-fun d!1628983 () Bool)

(declare-fun res!2154291 () Bool)

(assert (=> d!1628983 (=> res!2154291 e!3157941)))

(assert (=> d!1628983 (= res!2154291 (not (is-Node!15555 (right!43133 (left!42803 xs!286)))))))

(assert (=> d!1628983 (= (isBalanced!4417 (right!43133 (left!42803 xs!286))) e!3157941)))

(declare-fun b!5059221 () Bool)

(declare-fun res!2154289 () Bool)

(assert (=> b!5059221 (=> (not res!2154289) (not e!3157940))))

(assert (=> b!5059221 (= res!2154289 (isBalanced!4417 (left!42803 (right!43133 (left!42803 xs!286)))))))

(assert (= (and d!1628983 (not res!2154291)) b!5059220))

(assert (= (and b!5059220 res!2154288) b!5059216))

(assert (= (and b!5059216 res!2154286) b!5059221))

(assert (= (and b!5059221 res!2154289) b!5059219))

(assert (= (and b!5059219 res!2154290) b!5059217))

(assert (= (and b!5059217 res!2154287) b!5059218))

(declare-fun m!6096092 () Bool)

(assert (=> b!5059220 m!6096092))

(declare-fun m!6096094 () Bool)

(assert (=> b!5059220 m!6096094))

(declare-fun m!6096096 () Bool)

(assert (=> b!5059221 m!6096096))

(declare-fun m!6096098 () Bool)

(assert (=> b!5059217 m!6096098))

(assert (=> b!5059216 m!6096092))

(assert (=> b!5059216 m!6096094))

(declare-fun m!6096100 () Bool)

(assert (=> b!5059218 m!6096100))

(declare-fun m!6096102 () Bool)

(assert (=> b!5059219 m!6096102))

(assert (=> b!5058977 d!1628983))

(declare-fun d!1628985 () Bool)

(assert (=> d!1628985 (= (max!0 (height!2132 (left!42803 (left!42803 ys!41))) (height!2132 (right!43133 (left!42803 ys!41)))) (ite (< (height!2132 (left!42803 (left!42803 ys!41))) (height!2132 (right!43133 (left!42803 ys!41)))) (height!2132 (right!43133 (left!42803 ys!41))) (height!2132 (left!42803 (left!42803 ys!41)))))))

(assert (=> b!5058955 d!1628985))

(assert (=> b!5058955 d!1628977))

(assert (=> b!5058955 d!1628979))

(declare-fun d!1628987 () Bool)

(declare-fun lt!2087842 () Bool)

(assert (=> d!1628987 (= lt!2087842 (isEmpty!31616 (list!18973 (right!43133 (left!42803 ys!41)))))))

(assert (=> d!1628987 (= lt!2087842 (= (size!39060 (right!43133 (left!42803 ys!41))) 0))))

(assert (=> d!1628987 (= (isEmpty!31614 (right!43133 (left!42803 ys!41))) lt!2087842)))

(declare-fun bs!1189536 () Bool)

(assert (= bs!1189536 d!1628987))

(assert (=> bs!1189536 m!6096066))

(assert (=> bs!1189536 m!6096066))

(declare-fun m!6096104 () Bool)

(assert (=> bs!1189536 m!6096104))

(assert (=> bs!1189536 m!6095634))

(assert (=> b!5059022 d!1628987))

(declare-fun b!5059222 () Bool)

(declare-fun res!2154292 () Bool)

(declare-fun e!3157942 () Bool)

(assert (=> b!5059222 (=> (not res!2154292) (not e!3157942))))

(assert (=> b!5059222 (= res!2154292 (<= (- (height!2132 (left!42803 (left!42803 (left!42803 xs!286)))) (height!2132 (right!43133 (left!42803 (left!42803 xs!286))))) 1))))

(declare-fun b!5059223 () Bool)

(declare-fun res!2154293 () Bool)

(assert (=> b!5059223 (=> (not res!2154293) (not e!3157942))))

(assert (=> b!5059223 (= res!2154293 (not (isEmpty!31614 (left!42803 (left!42803 (left!42803 xs!286))))))))

(declare-fun b!5059224 () Bool)

(assert (=> b!5059224 (= e!3157942 (not (isEmpty!31614 (right!43133 (left!42803 (left!42803 xs!286))))))))

(declare-fun b!5059225 () Bool)

(declare-fun res!2154296 () Bool)

(assert (=> b!5059225 (=> (not res!2154296) (not e!3157942))))

(assert (=> b!5059225 (= res!2154296 (isBalanced!4417 (right!43133 (left!42803 (left!42803 xs!286)))))))

(declare-fun b!5059226 () Bool)

(declare-fun e!3157943 () Bool)

(assert (=> b!5059226 (= e!3157943 e!3157942)))

(declare-fun res!2154294 () Bool)

(assert (=> b!5059226 (=> (not res!2154294) (not e!3157942))))

(assert (=> b!5059226 (= res!2154294 (<= (- 1) (- (height!2132 (left!42803 (left!42803 (left!42803 xs!286)))) (height!2132 (right!43133 (left!42803 (left!42803 xs!286)))))))))

(declare-fun d!1628989 () Bool)

(declare-fun res!2154297 () Bool)

(assert (=> d!1628989 (=> res!2154297 e!3157943)))

(assert (=> d!1628989 (= res!2154297 (not (is-Node!15555 (left!42803 (left!42803 xs!286)))))))

(assert (=> d!1628989 (= (isBalanced!4417 (left!42803 (left!42803 xs!286))) e!3157943)))

(declare-fun b!5059227 () Bool)

(declare-fun res!2154295 () Bool)

(assert (=> b!5059227 (=> (not res!2154295) (not e!3157942))))

(assert (=> b!5059227 (= res!2154295 (isBalanced!4417 (left!42803 (left!42803 (left!42803 xs!286)))))))

(assert (= (and d!1628989 (not res!2154297)) b!5059226))

(assert (= (and b!5059226 res!2154294) b!5059222))

(assert (= (and b!5059222 res!2154292) b!5059227))

(assert (= (and b!5059227 res!2154295) b!5059225))

(assert (= (and b!5059225 res!2154296) b!5059223))

(assert (= (and b!5059223 res!2154293) b!5059224))

(declare-fun m!6096106 () Bool)

(assert (=> b!5059226 m!6096106))

(declare-fun m!6096108 () Bool)

(assert (=> b!5059226 m!6096108))

(declare-fun m!6096110 () Bool)

(assert (=> b!5059227 m!6096110))

(declare-fun m!6096112 () Bool)

(assert (=> b!5059223 m!6096112))

(assert (=> b!5059222 m!6096106))

(assert (=> b!5059222 m!6096108))

(declare-fun m!6096114 () Bool)

(assert (=> b!5059224 m!6096114))

(declare-fun m!6096116 () Bool)

(assert (=> b!5059225 m!6096116))

(assert (=> b!5058979 d!1628989))

(declare-fun d!1628991 () Bool)

(assert (=> d!1628991 (= (inv!77510 (xs!18893 (left!42803 (right!43133 xs!286)))) (<= (size!39058 (innerList!15643 (xs!18893 (left!42803 (right!43133 xs!286))))) 2147483647))))

(declare-fun bs!1189537 () Bool)

(assert (= bs!1189537 d!1628991))

(declare-fun m!6096118 () Bool)

(assert (=> bs!1189537 m!6096118))

(assert (=> b!5059028 d!1628991))

(declare-fun d!1628993 () Bool)

(declare-fun lt!2087843 () Int)

(assert (=> d!1628993 (>= lt!2087843 0)))

(declare-fun e!3157944 () Int)

(assert (=> d!1628993 (= lt!2087843 e!3157944)))

(declare-fun c!868063 () Bool)

(assert (=> d!1628993 (= c!868063 (is-Nil!58425 (innerList!15643 (xs!18893 (left!42803 ys!41)))))))

(assert (=> d!1628993 (= (size!39058 (innerList!15643 (xs!18893 (left!42803 ys!41)))) lt!2087843)))

(declare-fun b!5059228 () Bool)

(assert (=> b!5059228 (= e!3157944 0)))

(declare-fun b!5059229 () Bool)

(assert (=> b!5059229 (= e!3157944 (+ 1 (size!39058 (t!371242 (innerList!15643 (xs!18893 (left!42803 ys!41)))))))))

(assert (= (and d!1628993 c!868063) b!5059228))

(assert (= (and d!1628993 (not c!868063)) b!5059229))

(declare-fun m!6096120 () Bool)

(assert (=> b!5059229 m!6096120))

(assert (=> d!1628801 d!1628993))

(declare-fun d!1628995 () Bool)

(assert (=> d!1628995 (= (inv!77510 (xs!18893 (right!43133 (right!43133 ys!41)))) (<= (size!39058 (innerList!15643 (xs!18893 (right!43133 (right!43133 ys!41))))) 2147483647))))

(declare-fun bs!1189538 () Bool)

(assert (= bs!1189538 d!1628995))

(declare-fun m!6096122 () Bool)

(assert (=> bs!1189538 m!6096122))

(assert (=> b!5059037 d!1628995))

(declare-fun d!1628997 () Bool)

(declare-fun res!2154298 () Bool)

(declare-fun e!3157945 () Bool)

(assert (=> d!1628997 (=> (not res!2154298) (not e!3157945))))

(assert (=> d!1628997 (= res!2154298 (= (csize!31340 (right!43133 (right!43133 xs!286))) (+ (size!39060 (left!42803 (right!43133 (right!43133 xs!286)))) (size!39060 (right!43133 (right!43133 (right!43133 xs!286)))))))))

(assert (=> d!1628997 (= (inv!77513 (right!43133 (right!43133 xs!286))) e!3157945)))

(declare-fun b!5059230 () Bool)

(declare-fun res!2154299 () Bool)

(assert (=> b!5059230 (=> (not res!2154299) (not e!3157945))))

(assert (=> b!5059230 (= res!2154299 (and (not (= (left!42803 (right!43133 (right!43133 xs!286))) Empty!15555)) (not (= (right!43133 (right!43133 (right!43133 xs!286))) Empty!15555))))))

(declare-fun b!5059231 () Bool)

(declare-fun res!2154300 () Bool)

(assert (=> b!5059231 (=> (not res!2154300) (not e!3157945))))

(assert (=> b!5059231 (= res!2154300 (= (cheight!15766 (right!43133 (right!43133 xs!286))) (+ (max!0 (height!2132 (left!42803 (right!43133 (right!43133 xs!286)))) (height!2132 (right!43133 (right!43133 (right!43133 xs!286))))) 1)))))

(declare-fun b!5059232 () Bool)

(assert (=> b!5059232 (= e!3157945 (<= 0 (cheight!15766 (right!43133 (right!43133 xs!286)))))))

(assert (= (and d!1628997 res!2154298) b!5059230))

(assert (= (and b!5059230 res!2154299) b!5059231))

(assert (= (and b!5059231 res!2154300) b!5059232))

(declare-fun m!6096124 () Bool)

(assert (=> d!1628997 m!6096124))

(declare-fun m!6096126 () Bool)

(assert (=> d!1628997 m!6096126))

(declare-fun m!6096128 () Bool)

(assert (=> b!5059231 m!6096128))

(declare-fun m!6096130 () Bool)

(assert (=> b!5059231 m!6096130))

(assert (=> b!5059231 m!6096128))

(assert (=> b!5059231 m!6096130))

(declare-fun m!6096132 () Bool)

(assert (=> b!5059231 m!6096132))

(assert (=> b!5059010 d!1628997))

(declare-fun d!1628999 () Bool)

(declare-fun res!2154301 () Bool)

(declare-fun e!3157946 () Bool)

(assert (=> d!1628999 (=> (not res!2154301) (not e!3157946))))

(assert (=> d!1628999 (= res!2154301 (<= (size!39058 (list!18972 (xs!18893 (right!43133 (right!43133 xs!286))))) 512))))

(assert (=> d!1628999 (= (inv!77514 (right!43133 (right!43133 xs!286))) e!3157946)))

(declare-fun b!5059233 () Bool)

(declare-fun res!2154302 () Bool)

(assert (=> b!5059233 (=> (not res!2154302) (not e!3157946))))

(assert (=> b!5059233 (= res!2154302 (= (csize!31341 (right!43133 (right!43133 xs!286))) (size!39058 (list!18972 (xs!18893 (right!43133 (right!43133 xs!286)))))))))

(declare-fun b!5059234 () Bool)

(assert (=> b!5059234 (= e!3157946 (and (> (csize!31341 (right!43133 (right!43133 xs!286))) 0) (<= (csize!31341 (right!43133 (right!43133 xs!286))) 512)))))

(assert (= (and d!1628999 res!2154301) b!5059233))

(assert (= (and b!5059233 res!2154302) b!5059234))

(declare-fun m!6096134 () Bool)

(assert (=> d!1628999 m!6096134))

(assert (=> d!1628999 m!6096134))

(declare-fun m!6096136 () Bool)

(assert (=> d!1628999 m!6096136))

(assert (=> b!5059233 m!6096134))

(assert (=> b!5059233 m!6096134))

(assert (=> b!5059233 m!6096136))

(assert (=> b!5059012 d!1628999))

(assert (=> b!5058985 d!1628957))

(assert (=> b!5058985 d!1628959))

(declare-fun d!1629001 () Bool)

(declare-fun lt!2087844 () Bool)

(assert (=> d!1629001 (= lt!2087844 (isEmpty!31616 (list!18973 (right!43133 (right!43133 xs!286)))))))

(assert (=> d!1629001 (= lt!2087844 (= (size!39060 (right!43133 (right!43133 xs!286))) 0))))

(assert (=> d!1629001 (= (isEmpty!31614 (right!43133 (right!43133 xs!286))) lt!2087844)))

(declare-fun bs!1189539 () Bool)

(assert (= bs!1189539 d!1629001))

(assert (=> bs!1189539 m!6096038))

(assert (=> bs!1189539 m!6096038))

(declare-fun m!6096138 () Bool)

(assert (=> bs!1189539 m!6096138))

(assert (=> bs!1189539 m!6095676))

(assert (=> b!5058944 d!1629001))

(declare-fun d!1629003 () Bool)

(assert (=> d!1629003 (= (isEmpty!31616 (list!18973 (right!43133 xs!286))) (is-Nil!58425 (list!18973 (right!43133 xs!286))))))

(assert (=> d!1628803 d!1629003))

(declare-fun d!1629005 () Bool)

(declare-fun c!868064 () Bool)

(assert (=> d!1629005 (= c!868064 (is-Empty!15555 (right!43133 xs!286)))))

(declare-fun e!3157947 () List!58549)

(assert (=> d!1629005 (= (list!18973 (right!43133 xs!286)) e!3157947)))

(declare-fun b!5059238 () Bool)

(declare-fun e!3157948 () List!58549)

(assert (=> b!5059238 (= e!3157948 (++!12774 (list!18973 (left!42803 (right!43133 xs!286))) (list!18973 (right!43133 (right!43133 xs!286)))))))

(declare-fun b!5059235 () Bool)

(assert (=> b!5059235 (= e!3157947 Nil!58425)))

(declare-fun b!5059237 () Bool)

(assert (=> b!5059237 (= e!3157948 (list!18972 (xs!18893 (right!43133 xs!286))))))

(declare-fun b!5059236 () Bool)

(assert (=> b!5059236 (= e!3157947 e!3157948)))

(declare-fun c!868065 () Bool)

(assert (=> b!5059236 (= c!868065 (is-Leaf!25838 (right!43133 xs!286)))))

(assert (= (and d!1629005 c!868064) b!5059235))

(assert (= (and d!1629005 (not c!868064)) b!5059236))

(assert (= (and b!5059236 c!868065) b!5059237))

(assert (= (and b!5059236 (not c!868065)) b!5059238))

(assert (=> b!5059238 m!6096034))

(assert (=> b!5059238 m!6096038))

(assert (=> b!5059238 m!6096034))

(assert (=> b!5059238 m!6096038))

(declare-fun m!6096140 () Bool)

(assert (=> b!5059238 m!6096140))

(assert (=> b!5059237 m!6095668))

(assert (=> d!1628803 d!1629005))

(declare-fun d!1629007 () Bool)

(declare-fun lt!2087845 () Int)

(assert (=> d!1629007 (= lt!2087845 (size!39058 (list!18973 (right!43133 xs!286))))))

(assert (=> d!1629007 (= lt!2087845 (ite (is-Empty!15555 (right!43133 xs!286)) 0 (ite (is-Leaf!25838 (right!43133 xs!286)) (csize!31341 (right!43133 xs!286)) (csize!31340 (right!43133 xs!286)))))))

(assert (=> d!1629007 (= (size!39060 (right!43133 xs!286)) lt!2087845)))

(declare-fun bs!1189540 () Bool)

(assert (= bs!1189540 d!1629007))

(assert (=> bs!1189540 m!6095654))

(assert (=> bs!1189540 m!6095654))

(declare-fun m!6096142 () Bool)

(assert (=> bs!1189540 m!6096142))

(assert (=> d!1628803 d!1629007))

(declare-fun b!5059239 () Bool)

(declare-fun res!2154303 () Bool)

(declare-fun e!3157949 () Bool)

(assert (=> b!5059239 (=> (not res!2154303) (not e!3157949))))

(assert (=> b!5059239 (= res!2154303 (<= (- (height!2132 (left!42803 (left!42803 (right!43133 xs!286)))) (height!2132 (right!43133 (left!42803 (right!43133 xs!286))))) 1))))

(declare-fun b!5059240 () Bool)

(declare-fun res!2154304 () Bool)

(assert (=> b!5059240 (=> (not res!2154304) (not e!3157949))))

(assert (=> b!5059240 (= res!2154304 (not (isEmpty!31614 (left!42803 (left!42803 (right!43133 xs!286))))))))

(declare-fun b!5059241 () Bool)

(assert (=> b!5059241 (= e!3157949 (not (isEmpty!31614 (right!43133 (left!42803 (right!43133 xs!286))))))))

(declare-fun b!5059242 () Bool)

(declare-fun res!2154307 () Bool)

(assert (=> b!5059242 (=> (not res!2154307) (not e!3157949))))

(assert (=> b!5059242 (= res!2154307 (isBalanced!4417 (right!43133 (left!42803 (right!43133 xs!286)))))))

(declare-fun b!5059243 () Bool)

(declare-fun e!3157950 () Bool)

(assert (=> b!5059243 (= e!3157950 e!3157949)))

(declare-fun res!2154305 () Bool)

(assert (=> b!5059243 (=> (not res!2154305) (not e!3157949))))

(assert (=> b!5059243 (= res!2154305 (<= (- 1) (- (height!2132 (left!42803 (left!42803 (right!43133 xs!286)))) (height!2132 (right!43133 (left!42803 (right!43133 xs!286)))))))))

(declare-fun d!1629009 () Bool)

(declare-fun res!2154308 () Bool)

(assert (=> d!1629009 (=> res!2154308 e!3157950)))

(assert (=> d!1629009 (= res!2154308 (not (is-Node!15555 (left!42803 (right!43133 xs!286)))))))

(assert (=> d!1629009 (= (isBalanced!4417 (left!42803 (right!43133 xs!286))) e!3157950)))

(declare-fun b!5059244 () Bool)

(declare-fun res!2154306 () Bool)

(assert (=> b!5059244 (=> (not res!2154306) (not e!3157949))))

(assert (=> b!5059244 (= res!2154306 (isBalanced!4417 (left!42803 (left!42803 (right!43133 xs!286)))))))

(assert (= (and d!1629009 (not res!2154308)) b!5059243))

(assert (= (and b!5059243 res!2154305) b!5059239))

(assert (= (and b!5059239 res!2154303) b!5059244))

(assert (= (and b!5059244 res!2154306) b!5059242))

(assert (= (and b!5059242 res!2154307) b!5059240))

(assert (= (and b!5059240 res!2154304) b!5059241))

(declare-fun m!6096144 () Bool)

(assert (=> b!5059243 m!6096144))

(declare-fun m!6096146 () Bool)

(assert (=> b!5059243 m!6096146))

(declare-fun m!6096148 () Bool)

(assert (=> b!5059244 m!6096148))

(declare-fun m!6096150 () Bool)

(assert (=> b!5059240 m!6096150))

(assert (=> b!5059239 m!6096144))

(assert (=> b!5059239 m!6096146))

(declare-fun m!6096152 () Bool)

(assert (=> b!5059241 m!6096152))

(declare-fun m!6096154 () Bool)

(assert (=> b!5059242 m!6096154))

(assert (=> b!5058947 d!1629009))

(declare-fun b!5059245 () Bool)

(declare-fun res!2154309 () Bool)

(declare-fun e!3157951 () Bool)

(assert (=> b!5059245 (=> (not res!2154309) (not e!3157951))))

(assert (=> b!5059245 (= res!2154309 (<= (- (height!2132 (left!42803 (left!42803 (left!42803 ys!41)))) (height!2132 (right!43133 (left!42803 (left!42803 ys!41))))) 1))))

(declare-fun b!5059246 () Bool)

(declare-fun res!2154310 () Bool)

(assert (=> b!5059246 (=> (not res!2154310) (not e!3157951))))

(assert (=> b!5059246 (= res!2154310 (not (isEmpty!31614 (left!42803 (left!42803 (left!42803 ys!41))))))))

(declare-fun b!5059247 () Bool)

(assert (=> b!5059247 (= e!3157951 (not (isEmpty!31614 (right!43133 (left!42803 (left!42803 ys!41))))))))

(declare-fun b!5059248 () Bool)

(declare-fun res!2154313 () Bool)

(assert (=> b!5059248 (=> (not res!2154313) (not e!3157951))))

(assert (=> b!5059248 (= res!2154313 (isBalanced!4417 (right!43133 (left!42803 (left!42803 ys!41)))))))

(declare-fun b!5059249 () Bool)

(declare-fun e!3157952 () Bool)

(assert (=> b!5059249 (= e!3157952 e!3157951)))

(declare-fun res!2154311 () Bool)

(assert (=> b!5059249 (=> (not res!2154311) (not e!3157951))))

(assert (=> b!5059249 (= res!2154311 (<= (- 1) (- (height!2132 (left!42803 (left!42803 (left!42803 ys!41)))) (height!2132 (right!43133 (left!42803 (left!42803 ys!41)))))))))

(declare-fun d!1629011 () Bool)

(declare-fun res!2154314 () Bool)

(assert (=> d!1629011 (=> res!2154314 e!3157952)))

(assert (=> d!1629011 (= res!2154314 (not (is-Node!15555 (left!42803 (left!42803 ys!41)))))))

(assert (=> d!1629011 (= (isBalanced!4417 (left!42803 (left!42803 ys!41))) e!3157952)))

(declare-fun b!5059250 () Bool)

(declare-fun res!2154312 () Bool)

(assert (=> b!5059250 (=> (not res!2154312) (not e!3157951))))

(assert (=> b!5059250 (= res!2154312 (isBalanced!4417 (left!42803 (left!42803 (left!42803 ys!41)))))))

(assert (= (and d!1629011 (not res!2154314)) b!5059249))

(assert (= (and b!5059249 res!2154311) b!5059245))

(assert (= (and b!5059245 res!2154309) b!5059250))

(assert (= (and b!5059250 res!2154312) b!5059248))

(assert (= (and b!5059248 res!2154313) b!5059246))

(assert (= (and b!5059246 res!2154310) b!5059247))

(declare-fun m!6096156 () Bool)

(assert (=> b!5059249 m!6096156))

(declare-fun m!6096158 () Bool)

(assert (=> b!5059249 m!6096158))

(declare-fun m!6096160 () Bool)

(assert (=> b!5059250 m!6096160))

(declare-fun m!6096162 () Bool)

(assert (=> b!5059246 m!6096162))

(assert (=> b!5059245 m!6096156))

(assert (=> b!5059245 m!6096158))

(declare-fun m!6096164 () Bool)

(assert (=> b!5059247 m!6096164))

(declare-fun m!6096166 () Bool)

(assert (=> b!5059248 m!6096166))

(assert (=> b!5059025 d!1629011))

(declare-fun d!1629013 () Bool)

(declare-fun lt!2087846 () Int)

(assert (=> d!1629013 (>= lt!2087846 0)))

(declare-fun e!3157953 () Int)

(assert (=> d!1629013 (= lt!2087846 e!3157953)))

(declare-fun c!868066 () Bool)

(assert (=> d!1629013 (= c!868066 (is-Nil!58425 (innerList!15643 (xs!18893 (right!43133 xs!286)))))))

(assert (=> d!1629013 (= (size!39058 (innerList!15643 (xs!18893 (right!43133 xs!286)))) lt!2087846)))

(declare-fun b!5059251 () Bool)

(assert (=> b!5059251 (= e!3157953 0)))

(declare-fun b!5059252 () Bool)

(assert (=> b!5059252 (= e!3157953 (+ 1 (size!39058 (t!371242 (innerList!15643 (xs!18893 (right!43133 xs!286)))))))))

(assert (= (and d!1629013 c!868066) b!5059251))

(assert (= (and d!1629013 (not c!868066)) b!5059252))

(declare-fun m!6096168 () Bool)

(assert (=> b!5059252 m!6096168))

(assert (=> d!1628851 d!1629013))

(declare-fun d!1629015 () Bool)

(assert (=> d!1629015 (= (max!0 (height!2132 (left!42803 (left!42803 xs!286))) (height!2132 (right!43133 (left!42803 xs!286)))) (ite (< (height!2132 (left!42803 (left!42803 xs!286))) (height!2132 (right!43133 (left!42803 xs!286)))) (height!2132 (right!43133 (left!42803 xs!286))) (height!2132 (left!42803 (left!42803 xs!286)))))))

(assert (=> b!5058994 d!1629015))

(declare-fun d!1629017 () Bool)

(assert (=> d!1629017 (= (height!2132 (left!42803 (left!42803 xs!286))) (ite (is-Empty!15555 (left!42803 (left!42803 xs!286))) 0 (ite (is-Leaf!25838 (left!42803 (left!42803 xs!286))) 1 (cheight!15766 (left!42803 (left!42803 xs!286))))))))

(assert (=> b!5058994 d!1629017))

(declare-fun d!1629019 () Bool)

(assert (=> d!1629019 (= (height!2132 (right!43133 (left!42803 xs!286))) (ite (is-Empty!15555 (right!43133 (left!42803 xs!286))) 0 (ite (is-Leaf!25838 (right!43133 (left!42803 xs!286))) 1 (cheight!15766 (right!43133 (left!42803 xs!286))))))))

(assert (=> b!5058994 d!1629019))

(declare-fun d!1629021 () Bool)

(declare-fun c!868067 () Bool)

(assert (=> d!1629021 (= c!868067 (is-Node!15555 (left!42803 (right!43133 (left!42803 ys!41)))))))

(declare-fun e!3157954 () Bool)

(assert (=> d!1629021 (= (inv!77509 (left!42803 (right!43133 (left!42803 ys!41)))) e!3157954)))

(declare-fun b!5059253 () Bool)

(assert (=> b!5059253 (= e!3157954 (inv!77513 (left!42803 (right!43133 (left!42803 ys!41)))))))

(declare-fun b!5059254 () Bool)

(declare-fun e!3157955 () Bool)

(assert (=> b!5059254 (= e!3157954 e!3157955)))

(declare-fun res!2154315 () Bool)

(assert (=> b!5059254 (= res!2154315 (not (is-Leaf!25838 (left!42803 (right!43133 (left!42803 ys!41))))))))

(assert (=> b!5059254 (=> res!2154315 e!3157955)))

(declare-fun b!5059255 () Bool)

(assert (=> b!5059255 (= e!3157955 (inv!77514 (left!42803 (right!43133 (left!42803 ys!41)))))))

(assert (= (and d!1629021 c!868067) b!5059253))

(assert (= (and d!1629021 (not c!868067)) b!5059254))

(assert (= (and b!5059254 (not res!2154315)) b!5059255))

(declare-fun m!6096170 () Bool)

(assert (=> b!5059253 m!6096170))

(declare-fun m!6096172 () Bool)

(assert (=> b!5059255 m!6096172))

(assert (=> b!5059053 d!1629021))

(declare-fun d!1629023 () Bool)

(declare-fun c!868068 () Bool)

(assert (=> d!1629023 (= c!868068 (is-Node!15555 (right!43133 (right!43133 (left!42803 ys!41)))))))

(declare-fun e!3157956 () Bool)

(assert (=> d!1629023 (= (inv!77509 (right!43133 (right!43133 (left!42803 ys!41)))) e!3157956)))

(declare-fun b!5059256 () Bool)

(assert (=> b!5059256 (= e!3157956 (inv!77513 (right!43133 (right!43133 (left!42803 ys!41)))))))

(declare-fun b!5059257 () Bool)

(declare-fun e!3157957 () Bool)

(assert (=> b!5059257 (= e!3157956 e!3157957)))

(declare-fun res!2154316 () Bool)

(assert (=> b!5059257 (= res!2154316 (not (is-Leaf!25838 (right!43133 (right!43133 (left!42803 ys!41))))))))

(assert (=> b!5059257 (=> res!2154316 e!3157957)))

(declare-fun b!5059258 () Bool)

(assert (=> b!5059258 (= e!3157957 (inv!77514 (right!43133 (right!43133 (left!42803 ys!41)))))))

(assert (= (and d!1629023 c!868068) b!5059256))

(assert (= (and d!1629023 (not c!868068)) b!5059257))

(assert (= (and b!5059257 (not res!2154316)) b!5059258))

(declare-fun m!6096174 () Bool)

(assert (=> b!5059256 m!6096174))

(declare-fun m!6096176 () Bool)

(assert (=> b!5059258 m!6096176))

(assert (=> b!5059053 d!1629023))

(declare-fun d!1629025 () Bool)

(assert (=> d!1629025 (= (inv!77510 (xs!18893 (left!42803 (right!43133 ys!41)))) (<= (size!39058 (innerList!15643 (xs!18893 (left!42803 (right!43133 ys!41))))) 2147483647))))

(declare-fun bs!1189541 () Bool)

(assert (= bs!1189541 d!1629025))

(declare-fun m!6096178 () Bool)

(assert (=> bs!1189541 m!6096178))

(assert (=> b!5059034 d!1629025))

(assert (=> b!5058864 d!1628839))

(assert (=> b!5058864 d!1628841))

(assert (=> b!5059001 d!1628937))

(assert (=> b!5059001 d!1628939))

(declare-fun d!1629027 () Bool)

(declare-fun lt!2087847 () Bool)

(assert (=> d!1629027 (= lt!2087847 (isEmpty!31616 (list!18973 (right!43133 (right!43133 ys!41)))))))

(assert (=> d!1629027 (= lt!2087847 (= (size!39060 (right!43133 (right!43133 ys!41))) 0))))

(assert (=> d!1629027 (= (isEmpty!31614 (right!43133 (right!43133 ys!41))) lt!2087847)))

(declare-fun bs!1189542 () Bool)

(assert (= bs!1189542 d!1629027))

(assert (=> bs!1189542 m!6096084))

(assert (=> bs!1189542 m!6096084))

(declare-fun m!6096180 () Bool)

(assert (=> bs!1189542 m!6096180))

(assert (=> bs!1189542 m!6095722))

(assert (=> b!5059003 d!1629027))

(declare-fun d!1629029 () Bool)

(assert (=> d!1629029 (= (inv!77510 (xs!18893 (right!43133 (left!42803 xs!286)))) (<= (size!39058 (innerList!15643 (xs!18893 (right!43133 (left!42803 xs!286))))) 2147483647))))

(declare-fun bs!1189543 () Bool)

(assert (= bs!1189543 d!1629029))

(declare-fun m!6096182 () Bool)

(assert (=> bs!1189543 m!6096182))

(assert (=> b!5059045 d!1629029))

(declare-fun d!1629031 () Bool)

(declare-fun res!2154317 () Bool)

(declare-fun e!3157958 () Bool)

(assert (=> d!1629031 (=> (not res!2154317) (not e!3157958))))

(assert (=> d!1629031 (= res!2154317 (<= (size!39058 (list!18972 (xs!18893 (left!42803 (right!43133 ys!41))))) 512))))

(assert (=> d!1629031 (= (inv!77514 (left!42803 (right!43133 ys!41))) e!3157958)))

(declare-fun b!5059259 () Bool)

(declare-fun res!2154318 () Bool)

(assert (=> b!5059259 (=> (not res!2154318) (not e!3157958))))

(assert (=> b!5059259 (= res!2154318 (= (csize!31341 (left!42803 (right!43133 ys!41))) (size!39058 (list!18972 (xs!18893 (left!42803 (right!43133 ys!41)))))))))

(declare-fun b!5059260 () Bool)

(assert (=> b!5059260 (= e!3157958 (and (> (csize!31341 (left!42803 (right!43133 ys!41))) 0) (<= (csize!31341 (left!42803 (right!43133 ys!41))) 512)))))

(assert (= (and d!1629031 res!2154317) b!5059259))

(assert (= (and b!5059259 res!2154318) b!5059260))

(declare-fun m!6096184 () Bool)

(assert (=> d!1629031 m!6096184))

(assert (=> d!1629031 m!6096184))

(declare-fun m!6096186 () Bool)

(assert (=> d!1629031 m!6096186))

(assert (=> b!5059259 m!6096184))

(assert (=> b!5059259 m!6096184))

(assert (=> b!5059259 m!6096186))

(assert (=> b!5058938 d!1629031))

(declare-fun d!1629033 () Bool)

(declare-fun res!2154319 () Bool)

(declare-fun e!3157959 () Bool)

(assert (=> d!1629033 (=> (not res!2154319) (not e!3157959))))

(assert (=> d!1629033 (= res!2154319 (<= (size!39058 (list!18972 (xs!18893 (right!43133 (left!42803 ys!41))))) 512))))

(assert (=> d!1629033 (= (inv!77514 (right!43133 (left!42803 ys!41))) e!3157959)))

(declare-fun b!5059261 () Bool)

(declare-fun res!2154320 () Bool)

(assert (=> b!5059261 (=> (not res!2154320) (not e!3157959))))

(assert (=> b!5059261 (= res!2154320 (= (csize!31341 (right!43133 (left!42803 ys!41))) (size!39058 (list!18972 (xs!18893 (right!43133 (left!42803 ys!41)))))))))

(declare-fun b!5059262 () Bool)

(assert (=> b!5059262 (= e!3157959 (and (> (csize!31341 (right!43133 (left!42803 ys!41))) 0) (<= (csize!31341 (right!43133 (left!42803 ys!41))) 512)))))

(assert (= (and d!1629033 res!2154319) b!5059261))

(assert (= (and b!5059261 res!2154320) b!5059262))

(declare-fun m!6096188 () Bool)

(assert (=> d!1629033 m!6096188))

(assert (=> d!1629033 m!6096188))

(declare-fun m!6096190 () Bool)

(assert (=> d!1629033 m!6096190))

(assert (=> b!5059261 m!6096188))

(assert (=> b!5059261 m!6096188))

(assert (=> b!5059261 m!6096190))

(assert (=> b!5058968 d!1629033))

(declare-fun d!1629035 () Bool)

(assert (=> d!1629035 (= (isEmpty!31616 (list!18973 (left!42803 ys!41))) (is-Nil!58425 (list!18973 (left!42803 ys!41))))))

(assert (=> d!1628829 d!1629035))

(declare-fun d!1629037 () Bool)

(declare-fun c!868069 () Bool)

(assert (=> d!1629037 (= c!868069 (is-Empty!15555 (left!42803 ys!41)))))

(declare-fun e!3157960 () List!58549)

(assert (=> d!1629037 (= (list!18973 (left!42803 ys!41)) e!3157960)))

(declare-fun b!5059266 () Bool)

(declare-fun e!3157961 () List!58549)

(assert (=> b!5059266 (= e!3157961 (++!12774 (list!18973 (left!42803 (left!42803 ys!41))) (list!18973 (right!43133 (left!42803 ys!41)))))))

(declare-fun b!5059263 () Bool)

(assert (=> b!5059263 (= e!3157960 Nil!58425)))

(declare-fun b!5059265 () Bool)

(assert (=> b!5059265 (= e!3157961 (list!18972 (xs!18893 (left!42803 ys!41))))))

(declare-fun b!5059264 () Bool)

(assert (=> b!5059264 (= e!3157960 e!3157961)))

(declare-fun c!868070 () Bool)

(assert (=> b!5059264 (= c!868070 (is-Leaf!25838 (left!42803 ys!41)))))

(assert (= (and d!1629037 c!868069) b!5059263))

(assert (= (and d!1629037 (not c!868069)) b!5059264))

(assert (= (and b!5059264 c!868070) b!5059265))

(assert (= (and b!5059264 (not c!868070)) b!5059266))

(assert (=> b!5059266 m!6096062))

(assert (=> b!5059266 m!6096066))

(assert (=> b!5059266 m!6096062))

(assert (=> b!5059266 m!6096066))

(declare-fun m!6096192 () Bool)

(assert (=> b!5059266 m!6096192))

(assert (=> b!5059265 m!6095692))

(assert (=> d!1628829 d!1629037))

(declare-fun d!1629039 () Bool)

(declare-fun lt!2087848 () Int)

(assert (=> d!1629039 (= lt!2087848 (size!39058 (list!18973 (left!42803 ys!41))))))

(assert (=> d!1629039 (= lt!2087848 (ite (is-Empty!15555 (left!42803 ys!41)) 0 (ite (is-Leaf!25838 (left!42803 ys!41)) (csize!31341 (left!42803 ys!41)) (csize!31340 (left!42803 ys!41)))))))

(assert (=> d!1629039 (= (size!39060 (left!42803 ys!41)) lt!2087848)))

(declare-fun bs!1189544 () Bool)

(assert (= bs!1189544 d!1629039))

(assert (=> bs!1189544 m!6095708))

(assert (=> bs!1189544 m!6095708))

(declare-fun m!6096194 () Bool)

(assert (=> bs!1189544 m!6096194))

(assert (=> d!1628829 d!1629039))

(declare-fun d!1629041 () Bool)

(declare-fun c!868071 () Bool)

(assert (=> d!1629041 (= c!868071 (is-Node!15555 (left!42803 (left!42803 (left!42803 ys!41)))))))

(declare-fun e!3157962 () Bool)

(assert (=> d!1629041 (= (inv!77509 (left!42803 (left!42803 (left!42803 ys!41)))) e!3157962)))

(declare-fun b!5059267 () Bool)

(assert (=> b!5059267 (= e!3157962 (inv!77513 (left!42803 (left!42803 (left!42803 ys!41)))))))

(declare-fun b!5059268 () Bool)

(declare-fun e!3157963 () Bool)

(assert (=> b!5059268 (= e!3157962 e!3157963)))

(declare-fun res!2154321 () Bool)

(assert (=> b!5059268 (= res!2154321 (not (is-Leaf!25838 (left!42803 (left!42803 (left!42803 ys!41))))))))

(assert (=> b!5059268 (=> res!2154321 e!3157963)))

(declare-fun b!5059269 () Bool)

(assert (=> b!5059269 (= e!3157963 (inv!77514 (left!42803 (left!42803 (left!42803 ys!41)))))))

(assert (= (and d!1629041 c!868071) b!5059267))

(assert (= (and d!1629041 (not c!868071)) b!5059268))

(assert (= (and b!5059268 (not res!2154321)) b!5059269))

(declare-fun m!6096196 () Bool)

(assert (=> b!5059267 m!6096196))

(declare-fun m!6096198 () Bool)

(assert (=> b!5059269 m!6096198))

(assert (=> b!5059050 d!1629041))

(declare-fun d!1629043 () Bool)

(declare-fun c!868072 () Bool)

(assert (=> d!1629043 (= c!868072 (is-Node!15555 (right!43133 (left!42803 (left!42803 ys!41)))))))

(declare-fun e!3157964 () Bool)

(assert (=> d!1629043 (= (inv!77509 (right!43133 (left!42803 (left!42803 ys!41)))) e!3157964)))

(declare-fun b!5059270 () Bool)

(assert (=> b!5059270 (= e!3157964 (inv!77513 (right!43133 (left!42803 (left!42803 ys!41)))))))

(declare-fun b!5059271 () Bool)

(declare-fun e!3157965 () Bool)

(assert (=> b!5059271 (= e!3157964 e!3157965)))

(declare-fun res!2154322 () Bool)

(assert (=> b!5059271 (= res!2154322 (not (is-Leaf!25838 (right!43133 (left!42803 (left!42803 ys!41))))))))

(assert (=> b!5059271 (=> res!2154322 e!3157965)))

(declare-fun b!5059272 () Bool)

(assert (=> b!5059272 (= e!3157965 (inv!77514 (right!43133 (left!42803 (left!42803 ys!41)))))))

(assert (= (and d!1629043 c!868072) b!5059270))

(assert (= (and d!1629043 (not c!868072)) b!5059271))

(assert (= (and b!5059271 (not res!2154322)) b!5059272))

(declare-fun m!6096200 () Bool)

(assert (=> b!5059270 m!6096200))

(declare-fun m!6096202 () Bool)

(assert (=> b!5059272 m!6096202))

(assert (=> b!5059050 d!1629043))

(declare-fun d!1629045 () Bool)

(declare-fun lt!2087849 () Int)

(assert (=> d!1629045 (>= lt!2087849 0)))

(declare-fun e!3157966 () Int)

(assert (=> d!1629045 (= lt!2087849 e!3157966)))

(declare-fun c!868073 () Bool)

(assert (=> d!1629045 (= c!868073 (is-Nil!58425 (list!18972 (xs!18893 (left!42803 ys!41)))))))

(assert (=> d!1629045 (= (size!39058 (list!18972 (xs!18893 (left!42803 ys!41)))) lt!2087849)))

(declare-fun b!5059273 () Bool)

(assert (=> b!5059273 (= e!3157966 0)))

(declare-fun b!5059274 () Bool)

(assert (=> b!5059274 (= e!3157966 (+ 1 (size!39058 (t!371242 (list!18972 (xs!18893 (left!42803 ys!41)))))))))

(assert (= (and d!1629045 c!868073) b!5059273))

(assert (= (and d!1629045 (not c!868073)) b!5059274))

(declare-fun m!6096204 () Bool)

(assert (=> b!5059274 m!6096204))

(assert (=> d!1628817 d!1629045))

(declare-fun d!1629047 () Bool)

(assert (=> d!1629047 (= (list!18972 (xs!18893 (left!42803 ys!41))) (innerList!15643 (xs!18893 (left!42803 ys!41))))))

(assert (=> d!1628817 d!1629047))

(declare-fun d!1629049 () Bool)

(assert (=> d!1629049 (= (inv!77510 (xs!18893 (right!43133 (right!43133 xs!286)))) (<= (size!39058 (innerList!15643 (xs!18893 (right!43133 (right!43133 xs!286))))) 2147483647))))

(declare-fun bs!1189545 () Bool)

(assert (= bs!1189545 d!1629049))

(declare-fun m!6096206 () Bool)

(assert (=> bs!1189545 m!6096206))

(assert (=> b!5059031 d!1629049))

(declare-fun b!5059275 () Bool)

(declare-fun res!2154323 () Bool)

(declare-fun e!3157967 () Bool)

(assert (=> b!5059275 (=> (not res!2154323) (not e!3157967))))

(assert (=> b!5059275 (= res!2154323 (<= (- (height!2132 (left!42803 (left!42803 (right!43133 ys!41)))) (height!2132 (right!43133 (left!42803 (right!43133 ys!41))))) 1))))

(declare-fun b!5059276 () Bool)

(declare-fun res!2154324 () Bool)

(assert (=> b!5059276 (=> (not res!2154324) (not e!3157967))))

(assert (=> b!5059276 (= res!2154324 (not (isEmpty!31614 (left!42803 (left!42803 (right!43133 ys!41))))))))

(declare-fun b!5059277 () Bool)

(assert (=> b!5059277 (= e!3157967 (not (isEmpty!31614 (right!43133 (left!42803 (right!43133 ys!41))))))))

(declare-fun b!5059278 () Bool)

(declare-fun res!2154327 () Bool)

(assert (=> b!5059278 (=> (not res!2154327) (not e!3157967))))

(assert (=> b!5059278 (= res!2154327 (isBalanced!4417 (right!43133 (left!42803 (right!43133 ys!41)))))))

(declare-fun b!5059279 () Bool)

(declare-fun e!3157968 () Bool)

(assert (=> b!5059279 (= e!3157968 e!3157967)))

(declare-fun res!2154325 () Bool)

(assert (=> b!5059279 (=> (not res!2154325) (not e!3157967))))

(assert (=> b!5059279 (= res!2154325 (<= (- 1) (- (height!2132 (left!42803 (left!42803 (right!43133 ys!41)))) (height!2132 (right!43133 (left!42803 (right!43133 ys!41)))))))))

(declare-fun d!1629051 () Bool)

(declare-fun res!2154328 () Bool)

(assert (=> d!1629051 (=> res!2154328 e!3157968)))

(assert (=> d!1629051 (= res!2154328 (not (is-Node!15555 (left!42803 (right!43133 ys!41)))))))

(assert (=> d!1629051 (= (isBalanced!4417 (left!42803 (right!43133 ys!41))) e!3157968)))

(declare-fun b!5059280 () Bool)

(declare-fun res!2154326 () Bool)

(assert (=> b!5059280 (=> (not res!2154326) (not e!3157967))))

(assert (=> b!5059280 (= res!2154326 (isBalanced!4417 (left!42803 (left!42803 (right!43133 ys!41)))))))

(assert (= (and d!1629051 (not res!2154328)) b!5059279))

(assert (= (and b!5059279 res!2154325) b!5059275))

(assert (= (and b!5059275 res!2154323) b!5059280))

(assert (= (and b!5059280 res!2154326) b!5059278))

(assert (= (and b!5059278 res!2154327) b!5059276))

(assert (= (and b!5059276 res!2154324) b!5059277))

(declare-fun m!6096208 () Bool)

(assert (=> b!5059279 m!6096208))

(declare-fun m!6096210 () Bool)

(assert (=> b!5059279 m!6096210))

(declare-fun m!6096212 () Bool)

(assert (=> b!5059280 m!6096212))

(declare-fun m!6096214 () Bool)

(assert (=> b!5059276 m!6096214))

(assert (=> b!5059275 m!6096208))

(assert (=> b!5059275 m!6096210))

(declare-fun m!6096216 () Bool)

(assert (=> b!5059277 m!6096216))

(declare-fun m!6096218 () Bool)

(assert (=> b!5059278 m!6096218))

(assert (=> b!5059006 d!1629051))

(assert (=> b!5058974 d!1629017))

(assert (=> b!5058974 d!1629019))

(assert (=> b!5058861 d!1628795))

(assert (=> b!5058861 d!1628797))

(declare-fun d!1629053 () Bool)

(declare-fun res!2154329 () Bool)

(declare-fun e!3157969 () Bool)

(assert (=> d!1629053 (=> (not res!2154329) (not e!3157969))))

(assert (=> d!1629053 (= res!2154329 (= (csize!31340 (left!42803 (left!42803 xs!286))) (+ (size!39060 (left!42803 (left!42803 (left!42803 xs!286)))) (size!39060 (right!43133 (left!42803 (left!42803 xs!286)))))))))

(assert (=> d!1629053 (= (inv!77513 (left!42803 (left!42803 xs!286))) e!3157969)))

(declare-fun b!5059281 () Bool)

(declare-fun res!2154330 () Bool)

(assert (=> b!5059281 (=> (not res!2154330) (not e!3157969))))

(assert (=> b!5059281 (= res!2154330 (and (not (= (left!42803 (left!42803 (left!42803 xs!286))) Empty!15555)) (not (= (right!43133 (left!42803 (left!42803 xs!286))) Empty!15555))))))

(declare-fun b!5059282 () Bool)

(declare-fun res!2154331 () Bool)

(assert (=> b!5059282 (=> (not res!2154331) (not e!3157969))))

(assert (=> b!5059282 (= res!2154331 (= (cheight!15766 (left!42803 (left!42803 xs!286))) (+ (max!0 (height!2132 (left!42803 (left!42803 (left!42803 xs!286)))) (height!2132 (right!43133 (left!42803 (left!42803 xs!286))))) 1)))))

(declare-fun b!5059283 () Bool)

(assert (=> b!5059283 (= e!3157969 (<= 0 (cheight!15766 (left!42803 (left!42803 xs!286)))))))

(assert (= (and d!1629053 res!2154329) b!5059281))

(assert (= (and b!5059281 res!2154330) b!5059282))

(assert (= (and b!5059282 res!2154331) b!5059283))

(declare-fun m!6096220 () Bool)

(assert (=> d!1629053 m!6096220))

(declare-fun m!6096222 () Bool)

(assert (=> d!1629053 m!6096222))

(assert (=> b!5059282 m!6096106))

(assert (=> b!5059282 m!6096108))

(assert (=> b!5059282 m!6096106))

(assert (=> b!5059282 m!6096108))

(declare-fun m!6096224 () Bool)

(assert (=> b!5059282 m!6096224))

(assert (=> b!5058957 d!1629053))

(declare-fun d!1629055 () Bool)

(declare-fun lt!2087850 () Int)

(assert (=> d!1629055 (>= lt!2087850 0)))

(declare-fun e!3157970 () Int)

(assert (=> d!1629055 (= lt!2087850 e!3157970)))

(declare-fun c!868074 () Bool)

(assert (=> d!1629055 (= c!868074 (is-Nil!58425 (innerList!15643 (xs!18893 (right!43133 ys!41)))))))

(assert (=> d!1629055 (= (size!39058 (innerList!15643 (xs!18893 (right!43133 ys!41)))) lt!2087850)))

(declare-fun b!5059284 () Bool)

(assert (=> b!5059284 (= e!3157970 0)))

(declare-fun b!5059285 () Bool)

(assert (=> b!5059285 (= e!3157970 (+ 1 (size!39058 (t!371242 (innerList!15643 (xs!18893 (right!43133 ys!41)))))))))

(assert (= (and d!1629055 c!868074) b!5059284))

(assert (= (and d!1629055 (not c!868074)) b!5059285))

(declare-fun m!6096226 () Bool)

(assert (=> b!5059285 m!6096226))

(assert (=> d!1628799 d!1629055))

(assert (=> b!5058872 d!1628805))

(assert (=> b!5058872 d!1628807))

(declare-fun d!1629057 () Bool)

(declare-fun lt!2087851 () Int)

(assert (=> d!1629057 (>= lt!2087851 0)))

(declare-fun e!3157971 () Int)

(assert (=> d!1629057 (= lt!2087851 e!3157971)))

(declare-fun c!868075 () Bool)

(assert (=> d!1629057 (= c!868075 (is-Nil!58425 (list!18972 (xs!18893 (right!43133 xs!286)))))))

(assert (=> d!1629057 (= (size!39058 (list!18972 (xs!18893 (right!43133 xs!286)))) lt!2087851)))

(declare-fun b!5059286 () Bool)

(assert (=> b!5059286 (= e!3157971 0)))

(declare-fun b!5059287 () Bool)

(assert (=> b!5059287 (= e!3157971 (+ 1 (size!39058 (t!371242 (list!18972 (xs!18893 (right!43133 xs!286)))))))))

(assert (= (and d!1629057 c!868075) b!5059286))

(assert (= (and d!1629057 (not c!868075)) b!5059287))

(declare-fun m!6096228 () Bool)

(assert (=> b!5059287 m!6096228))

(assert (=> d!1628809 d!1629057))

(declare-fun d!1629059 () Bool)

(assert (=> d!1629059 (= (list!18972 (xs!18893 (right!43133 xs!286))) (innerList!15643 (xs!18893 (right!43133 xs!286))))))

(assert (=> d!1628809 d!1629059))

(declare-fun d!1629061 () Bool)

(declare-fun lt!2087852 () Bool)

(assert (=> d!1629061 (= lt!2087852 (isEmpty!31616 (list!18973 (right!43133 (left!42803 xs!286)))))))

(assert (=> d!1629061 (= lt!2087852 (= (size!39060 (right!43133 (left!42803 xs!286))) 0))))

(assert (=> d!1629061 (= (isEmpty!31614 (right!43133 (left!42803 xs!286))) lt!2087852)))

(declare-fun bs!1189546 () Bool)

(assert (= bs!1189546 d!1629061))

(assert (=> bs!1189546 m!6096054))

(assert (=> bs!1189546 m!6096054))

(declare-fun m!6096230 () Bool)

(assert (=> bs!1189546 m!6096230))

(assert (=> bs!1189546 m!6095714))

(assert (=> b!5058976 d!1629061))

(assert (=> b!5058980 d!1629045))

(assert (=> b!5058980 d!1629047))

(declare-fun d!1629063 () Bool)

(declare-fun res!2154332 () Bool)

(declare-fun e!3157972 () Bool)

(assert (=> d!1629063 (=> (not res!2154332) (not e!3157972))))

(assert (=> d!1629063 (= res!2154332 (<= (size!39058 (list!18972 (xs!18893 (left!42803 (left!42803 xs!286))))) 512))))

(assert (=> d!1629063 (= (inv!77514 (left!42803 (left!42803 xs!286))) e!3157972)))

(declare-fun b!5059288 () Bool)

(declare-fun res!2154333 () Bool)

(assert (=> b!5059288 (=> (not res!2154333) (not e!3157972))))

(assert (=> b!5059288 (= res!2154333 (= (csize!31341 (left!42803 (left!42803 xs!286))) (size!39058 (list!18972 (xs!18893 (left!42803 (left!42803 xs!286)))))))))

(declare-fun b!5059289 () Bool)

(assert (=> b!5059289 (= e!3157972 (and (> (csize!31341 (left!42803 (left!42803 xs!286))) 0) (<= (csize!31341 (left!42803 (left!42803 xs!286))) 512)))))

(assert (= (and d!1629063 res!2154332) b!5059288))

(assert (= (and b!5059288 res!2154333) b!5059289))

(declare-fun m!6096232 () Bool)

(assert (=> d!1629063 m!6096232))

(assert (=> d!1629063 m!6096232))

(declare-fun m!6096234 () Bool)

(assert (=> d!1629063 m!6096234))

(assert (=> b!5059288 m!6096232))

(assert (=> b!5059288 m!6096232))

(assert (=> b!5059288 m!6096234))

(assert (=> b!5058959 d!1629063))

(assert (=> b!5058978 d!1629017))

(assert (=> b!5058978 d!1629019))

(declare-fun d!1629065 () Bool)

(declare-fun c!868076 () Bool)

(assert (=> d!1629065 (= c!868076 (is-Node!15555 (left!42803 (left!42803 (right!43133 xs!286)))))))

(declare-fun e!3157973 () Bool)

(assert (=> d!1629065 (= (inv!77509 (left!42803 (left!42803 (right!43133 xs!286)))) e!3157973)))

(declare-fun b!5059290 () Bool)

(assert (=> b!5059290 (= e!3157973 (inv!77513 (left!42803 (left!42803 (right!43133 xs!286)))))))

(declare-fun b!5059291 () Bool)

(declare-fun e!3157974 () Bool)

(assert (=> b!5059291 (= e!3157973 e!3157974)))

(declare-fun res!2154334 () Bool)

(assert (=> b!5059291 (= res!2154334 (not (is-Leaf!25838 (left!42803 (left!42803 (right!43133 xs!286))))))))

(assert (=> b!5059291 (=> res!2154334 e!3157974)))

(declare-fun b!5059292 () Bool)

(assert (=> b!5059292 (= e!3157974 (inv!77514 (left!42803 (left!42803 (right!43133 xs!286)))))))

(assert (= (and d!1629065 c!868076) b!5059290))

(assert (= (and d!1629065 (not c!868076)) b!5059291))

(assert (= (and b!5059291 (not res!2154334)) b!5059292))

(declare-fun m!6096236 () Bool)

(assert (=> b!5059290 m!6096236))

(declare-fun m!6096238 () Bool)

(assert (=> b!5059292 m!6096238))

(assert (=> b!5059027 d!1629065))

(declare-fun d!1629067 () Bool)

(declare-fun c!868077 () Bool)

(assert (=> d!1629067 (= c!868077 (is-Node!15555 (right!43133 (left!42803 (right!43133 xs!286)))))))

(declare-fun e!3157975 () Bool)

(assert (=> d!1629067 (= (inv!77509 (right!43133 (left!42803 (right!43133 xs!286)))) e!3157975)))

(declare-fun b!5059293 () Bool)

(assert (=> b!5059293 (= e!3157975 (inv!77513 (right!43133 (left!42803 (right!43133 xs!286)))))))

(declare-fun b!5059294 () Bool)

(declare-fun e!3157976 () Bool)

(assert (=> b!5059294 (= e!3157975 e!3157976)))

(declare-fun res!2154335 () Bool)

(assert (=> b!5059294 (= res!2154335 (not (is-Leaf!25838 (right!43133 (left!42803 (right!43133 xs!286))))))))

(assert (=> b!5059294 (=> res!2154335 e!3157976)))

(declare-fun b!5059295 () Bool)

(assert (=> b!5059295 (= e!3157976 (inv!77514 (right!43133 (left!42803 (right!43133 xs!286)))))))

(assert (= (and d!1629067 c!868077) b!5059293))

(assert (= (and d!1629067 (not c!868077)) b!5059294))

(assert (= (and b!5059294 (not res!2154335)) b!5059295))

(declare-fun m!6096240 () Bool)

(assert (=> b!5059293 m!6096240))

(declare-fun m!6096242 () Bool)

(assert (=> b!5059295 m!6096242))

(assert (=> b!5059027 d!1629067))

(declare-fun d!1629069 () Bool)

(declare-fun c!868078 () Bool)

(assert (=> d!1629069 (= c!868078 (is-Node!15555 (left!42803 (right!43133 (right!43133 ys!41)))))))

(declare-fun e!3157977 () Bool)

(assert (=> d!1629069 (= (inv!77509 (left!42803 (right!43133 (right!43133 ys!41)))) e!3157977)))

(declare-fun b!5059296 () Bool)

(assert (=> b!5059296 (= e!3157977 (inv!77513 (left!42803 (right!43133 (right!43133 ys!41)))))))

(declare-fun b!5059297 () Bool)

(declare-fun e!3157978 () Bool)

(assert (=> b!5059297 (= e!3157977 e!3157978)))

(declare-fun res!2154336 () Bool)

(assert (=> b!5059297 (= res!2154336 (not (is-Leaf!25838 (left!42803 (right!43133 (right!43133 ys!41))))))))

(assert (=> b!5059297 (=> res!2154336 e!3157978)))

(declare-fun b!5059298 () Bool)

(assert (=> b!5059298 (= e!3157978 (inv!77514 (left!42803 (right!43133 (right!43133 ys!41)))))))

(assert (= (and d!1629069 c!868078) b!5059296))

(assert (= (and d!1629069 (not c!868078)) b!5059297))

(assert (= (and b!5059297 (not res!2154336)) b!5059298))

(declare-fun m!6096244 () Bool)

(assert (=> b!5059296 m!6096244))

(declare-fun m!6096246 () Bool)

(assert (=> b!5059298 m!6096246))

(assert (=> b!5059036 d!1629069))

(declare-fun d!1629071 () Bool)

(declare-fun c!868079 () Bool)

(assert (=> d!1629071 (= c!868079 (is-Node!15555 (right!43133 (right!43133 (right!43133 ys!41)))))))

(declare-fun e!3157979 () Bool)

(assert (=> d!1629071 (= (inv!77509 (right!43133 (right!43133 (right!43133 ys!41)))) e!3157979)))

(declare-fun b!5059299 () Bool)

(assert (=> b!5059299 (= e!3157979 (inv!77513 (right!43133 (right!43133 (right!43133 ys!41)))))))

(declare-fun b!5059300 () Bool)

(declare-fun e!3157980 () Bool)

(assert (=> b!5059300 (= e!3157979 e!3157980)))

(declare-fun res!2154337 () Bool)

(assert (=> b!5059300 (= res!2154337 (not (is-Leaf!25838 (right!43133 (right!43133 (right!43133 ys!41))))))))

(assert (=> b!5059300 (=> res!2154337 e!3157980)))

(declare-fun b!5059301 () Bool)

(assert (=> b!5059301 (= e!3157980 (inv!77514 (right!43133 (right!43133 (right!43133 ys!41)))))))

(assert (= (and d!1629071 c!868079) b!5059299))

(assert (= (and d!1629071 (not c!868079)) b!5059300))

(assert (= (and b!5059300 (not res!2154337)) b!5059301))

(declare-fun m!6096248 () Bool)

(assert (=> b!5059299 m!6096248))

(declare-fun m!6096250 () Bool)

(assert (=> b!5059301 m!6096250))

(assert (=> b!5059036 d!1629071))

(declare-fun d!1629073 () Bool)

(declare-fun res!2154338 () Bool)

(declare-fun e!3157981 () Bool)

(assert (=> d!1629073 (=> (not res!2154338) (not e!3157981))))

(assert (=> d!1629073 (= res!2154338 (= (csize!31340 (left!42803 (left!42803 ys!41))) (+ (size!39060 (left!42803 (left!42803 (left!42803 ys!41)))) (size!39060 (right!43133 (left!42803 (left!42803 ys!41)))))))))

(assert (=> d!1629073 (= (inv!77513 (left!42803 (left!42803 ys!41))) e!3157981)))

(declare-fun b!5059302 () Bool)

(declare-fun res!2154339 () Bool)

(assert (=> b!5059302 (=> (not res!2154339) (not e!3157981))))

(assert (=> b!5059302 (= res!2154339 (and (not (= (left!42803 (left!42803 (left!42803 ys!41))) Empty!15555)) (not (= (right!43133 (left!42803 (left!42803 ys!41))) Empty!15555))))))

(declare-fun b!5059303 () Bool)

(declare-fun res!2154340 () Bool)

(assert (=> b!5059303 (=> (not res!2154340) (not e!3157981))))

(assert (=> b!5059303 (= res!2154340 (= (cheight!15766 (left!42803 (left!42803 ys!41))) (+ (max!0 (height!2132 (left!42803 (left!42803 (left!42803 ys!41)))) (height!2132 (right!43133 (left!42803 (left!42803 ys!41))))) 1)))))

(declare-fun b!5059304 () Bool)

(assert (=> b!5059304 (= e!3157981 (<= 0 (cheight!15766 (left!42803 (left!42803 ys!41)))))))

(assert (= (and d!1629073 res!2154338) b!5059302))

(assert (= (and b!5059302 res!2154339) b!5059303))

(assert (= (and b!5059303 res!2154340) b!5059304))

(declare-fun m!6096252 () Bool)

(assert (=> d!1629073 m!6096252))

(declare-fun m!6096254 () Bool)

(assert (=> d!1629073 m!6096254))

(assert (=> b!5059303 m!6096156))

(assert (=> b!5059303 m!6096158))

(assert (=> b!5059303 m!6096156))

(assert (=> b!5059303 m!6096158))

(declare-fun m!6096256 () Bool)

(assert (=> b!5059303 m!6096256))

(assert (=> b!5058963 d!1629073))

(declare-fun d!1629075 () Bool)

(assert (=> d!1629075 (= (inv!77510 (xs!18893 (left!42803 (left!42803 xs!286)))) (<= (size!39058 (innerList!15643 (xs!18893 (left!42803 (left!42803 xs!286))))) 2147483647))))

(declare-fun bs!1189547 () Bool)

(assert (= bs!1189547 d!1629075))

(declare-fun m!6096258 () Bool)

(assert (=> bs!1189547 m!6096258))

(assert (=> b!5059042 d!1629075))

(declare-fun d!1629077 () Bool)

(declare-fun res!2154341 () Bool)

(declare-fun e!3157982 () Bool)

(assert (=> d!1629077 (=> (not res!2154341) (not e!3157982))))

(assert (=> d!1629077 (= res!2154341 (<= (size!39058 (list!18972 (xs!18893 (left!42803 (left!42803 ys!41))))) 512))))

(assert (=> d!1629077 (= (inv!77514 (left!42803 (left!42803 ys!41))) e!3157982)))

(declare-fun b!5059305 () Bool)

(declare-fun res!2154342 () Bool)

(assert (=> b!5059305 (=> (not res!2154342) (not e!3157982))))

(assert (=> b!5059305 (= res!2154342 (= (csize!31341 (left!42803 (left!42803 ys!41))) (size!39058 (list!18972 (xs!18893 (left!42803 (left!42803 ys!41)))))))))

(declare-fun b!5059306 () Bool)

(assert (=> b!5059306 (= e!3157982 (and (> (csize!31341 (left!42803 (left!42803 ys!41))) 0) (<= (csize!31341 (left!42803 (left!42803 ys!41))) 512)))))

(assert (= (and d!1629077 res!2154341) b!5059305))

(assert (= (and b!5059305 res!2154342) b!5059306))

(declare-fun m!6096260 () Bool)

(assert (=> d!1629077 m!6096260))

(assert (=> d!1629077 m!6096260))

(declare-fun m!6096262 () Bool)

(assert (=> d!1629077 m!6096262))

(assert (=> b!5059305 m!6096260))

(assert (=> b!5059305 m!6096260))

(assert (=> b!5059305 m!6096262))

(assert (=> b!5058965 d!1629077))

(declare-fun d!1629079 () Bool)

(declare-fun lt!2087853 () Bool)

(assert (=> d!1629079 (= lt!2087853 (isEmpty!31616 (list!18973 (left!42803 (right!43133 xs!286)))))))

(assert (=> d!1629079 (= lt!2087853 (= (size!39060 (left!42803 (right!43133 xs!286))) 0))))

(assert (=> d!1629079 (= (isEmpty!31614 (left!42803 (right!43133 xs!286))) lt!2087853)))

(declare-fun bs!1189548 () Bool)

(assert (= bs!1189548 d!1629079))

(assert (=> bs!1189548 m!6096034))

(assert (=> bs!1189548 m!6096034))

(declare-fun m!6096264 () Bool)

(assert (=> bs!1189548 m!6096264))

(assert (=> bs!1189548 m!6095674))

(assert (=> b!5058943 d!1629079))

(declare-fun d!1629081 () Bool)

(declare-fun lt!2087854 () Int)

(assert (=> d!1629081 (= lt!2087854 (size!39058 (list!18973 (left!42803 (left!42803 xs!286)))))))

(assert (=> d!1629081 (= lt!2087854 (ite (is-Empty!15555 (left!42803 (left!42803 xs!286))) 0 (ite (is-Leaf!25838 (left!42803 (left!42803 xs!286))) (csize!31341 (left!42803 (left!42803 xs!286))) (csize!31340 (left!42803 (left!42803 xs!286))))))))

(assert (=> d!1629081 (= (size!39060 (left!42803 (left!42803 xs!286))) lt!2087854)))

(declare-fun bs!1189549 () Bool)

(assert (= bs!1189549 d!1629081))

(assert (=> bs!1189549 m!6096052))

(assert (=> bs!1189549 m!6096052))

(declare-fun m!6096266 () Bool)

(assert (=> bs!1189549 m!6096266))

(assert (=> d!1628831 d!1629081))

(declare-fun d!1629083 () Bool)

(declare-fun lt!2087855 () Int)

(assert (=> d!1629083 (= lt!2087855 (size!39058 (list!18973 (right!43133 (left!42803 xs!286)))))))

(assert (=> d!1629083 (= lt!2087855 (ite (is-Empty!15555 (right!43133 (left!42803 xs!286))) 0 (ite (is-Leaf!25838 (right!43133 (left!42803 xs!286))) (csize!31341 (right!43133 (left!42803 xs!286))) (csize!31340 (right!43133 (left!42803 xs!286))))))))

(assert (=> d!1629083 (= (size!39060 (right!43133 (left!42803 xs!286))) lt!2087855)))

(declare-fun bs!1189550 () Bool)

(assert (= bs!1189550 d!1629083))

(assert (=> bs!1189550 m!6096054))

(assert (=> bs!1189550 m!6096054))

(declare-fun m!6096268 () Bool)

(assert (=> bs!1189550 m!6096268))

(assert (=> d!1628831 d!1629083))

(declare-fun d!1629085 () Bool)

(declare-fun lt!2087856 () Bool)

(assert (=> d!1629085 (= lt!2087856 (isEmpty!31616 (list!18973 (left!42803 (left!42803 ys!41)))))))

(assert (=> d!1629085 (= lt!2087856 (= (size!39060 (left!42803 (left!42803 ys!41))) 0))))

(assert (=> d!1629085 (= (isEmpty!31614 (left!42803 (left!42803 ys!41))) lt!2087856)))

(declare-fun bs!1189551 () Bool)

(assert (= bs!1189551 d!1629085))

(assert (=> bs!1189551 m!6096062))

(assert (=> bs!1189551 m!6096062))

(declare-fun m!6096270 () Bool)

(assert (=> bs!1189551 m!6096270))

(assert (=> bs!1189551 m!6095632))

(assert (=> b!5059021 d!1629085))

(assert (=> b!5058969 d!1629057))

(assert (=> b!5058969 d!1629059))

(declare-fun b!5059307 () Bool)

(declare-fun res!2154343 () Bool)

(declare-fun e!3157983 () Bool)

(assert (=> b!5059307 (=> (not res!2154343) (not e!3157983))))

(assert (=> b!5059307 (= res!2154343 (<= (- (height!2132 (left!42803 (right!43133 (right!43133 xs!286)))) (height!2132 (right!43133 (right!43133 (right!43133 xs!286))))) 1))))

(declare-fun b!5059308 () Bool)

(declare-fun res!2154344 () Bool)

(assert (=> b!5059308 (=> (not res!2154344) (not e!3157983))))

(assert (=> b!5059308 (= res!2154344 (not (isEmpty!31614 (left!42803 (right!43133 (right!43133 xs!286))))))))

(declare-fun b!5059309 () Bool)

(assert (=> b!5059309 (= e!3157983 (not (isEmpty!31614 (right!43133 (right!43133 (right!43133 xs!286))))))))

(declare-fun b!5059310 () Bool)

(declare-fun res!2154347 () Bool)

(assert (=> b!5059310 (=> (not res!2154347) (not e!3157983))))

(assert (=> b!5059310 (= res!2154347 (isBalanced!4417 (right!43133 (right!43133 (right!43133 xs!286)))))))

(declare-fun b!5059311 () Bool)

(declare-fun e!3157984 () Bool)

(assert (=> b!5059311 (= e!3157984 e!3157983)))

(declare-fun res!2154345 () Bool)

(assert (=> b!5059311 (=> (not res!2154345) (not e!3157983))))

(assert (=> b!5059311 (= res!2154345 (<= (- 1) (- (height!2132 (left!42803 (right!43133 (right!43133 xs!286)))) (height!2132 (right!43133 (right!43133 (right!43133 xs!286)))))))))

(declare-fun d!1629087 () Bool)

(declare-fun res!2154348 () Bool)

(assert (=> d!1629087 (=> res!2154348 e!3157984)))

(assert (=> d!1629087 (= res!2154348 (not (is-Node!15555 (right!43133 (right!43133 xs!286)))))))

(assert (=> d!1629087 (= (isBalanced!4417 (right!43133 (right!43133 xs!286))) e!3157984)))

(declare-fun b!5059312 () Bool)

(declare-fun res!2154346 () Bool)

(assert (=> b!5059312 (=> (not res!2154346) (not e!3157983))))

(assert (=> b!5059312 (= res!2154346 (isBalanced!4417 (left!42803 (right!43133 (right!43133 xs!286)))))))

(assert (= (and d!1629087 (not res!2154348)) b!5059311))

(assert (= (and b!5059311 res!2154345) b!5059307))

(assert (= (and b!5059307 res!2154343) b!5059312))

(assert (= (and b!5059312 res!2154346) b!5059310))

(assert (= (and b!5059310 res!2154347) b!5059308))

(assert (= (and b!5059308 res!2154344) b!5059309))

(assert (=> b!5059311 m!6096128))

(assert (=> b!5059311 m!6096130))

(declare-fun m!6096272 () Bool)

(assert (=> b!5059312 m!6096272))

(declare-fun m!6096274 () Bool)

(assert (=> b!5059308 m!6096274))

(assert (=> b!5059307 m!6096128))

(assert (=> b!5059307 m!6096130))

(declare-fun m!6096276 () Bool)

(assert (=> b!5059309 m!6096276))

(declare-fun m!6096278 () Bool)

(assert (=> b!5059310 m!6096278))

(assert (=> b!5058945 d!1629087))

(declare-fun b!5059313 () Bool)

(declare-fun res!2154349 () Bool)

(declare-fun e!3157985 () Bool)

(assert (=> b!5059313 (=> (not res!2154349) (not e!3157985))))

(assert (=> b!5059313 (= res!2154349 (<= (- (height!2132 (left!42803 (right!43133 (left!42803 ys!41)))) (height!2132 (right!43133 (right!43133 (left!42803 ys!41))))) 1))))

(declare-fun b!5059314 () Bool)

(declare-fun res!2154350 () Bool)

(assert (=> b!5059314 (=> (not res!2154350) (not e!3157985))))

(assert (=> b!5059314 (= res!2154350 (not (isEmpty!31614 (left!42803 (right!43133 (left!42803 ys!41))))))))

(declare-fun b!5059315 () Bool)

(assert (=> b!5059315 (= e!3157985 (not (isEmpty!31614 (right!43133 (right!43133 (left!42803 ys!41))))))))

(declare-fun b!5059316 () Bool)

(declare-fun res!2154353 () Bool)

(assert (=> b!5059316 (=> (not res!2154353) (not e!3157985))))

(assert (=> b!5059316 (= res!2154353 (isBalanced!4417 (right!43133 (right!43133 (left!42803 ys!41)))))))

(declare-fun b!5059317 () Bool)

(declare-fun e!3157986 () Bool)

(assert (=> b!5059317 (= e!3157986 e!3157985)))

(declare-fun res!2154351 () Bool)

(assert (=> b!5059317 (=> (not res!2154351) (not e!3157985))))

(assert (=> b!5059317 (= res!2154351 (<= (- 1) (- (height!2132 (left!42803 (right!43133 (left!42803 ys!41)))) (height!2132 (right!43133 (right!43133 (left!42803 ys!41)))))))))

(declare-fun d!1629089 () Bool)

(declare-fun res!2154354 () Bool)

(assert (=> d!1629089 (=> res!2154354 e!3157986)))

(assert (=> d!1629089 (= res!2154354 (not (is-Node!15555 (right!43133 (left!42803 ys!41)))))))

(assert (=> d!1629089 (= (isBalanced!4417 (right!43133 (left!42803 ys!41))) e!3157986)))

(declare-fun b!5059318 () Bool)

(declare-fun res!2154352 () Bool)

(assert (=> b!5059318 (=> (not res!2154352) (not e!3157985))))

(assert (=> b!5059318 (= res!2154352 (isBalanced!4417 (left!42803 (right!43133 (left!42803 ys!41)))))))

(assert (= (and d!1629089 (not res!2154354)) b!5059317))

(assert (= (and b!5059317 res!2154351) b!5059313))

(assert (= (and b!5059313 res!2154349) b!5059318))

(assert (= (and b!5059318 res!2154352) b!5059316))

(assert (= (and b!5059316 res!2154353) b!5059314))

(assert (= (and b!5059314 res!2154350) b!5059315))

(declare-fun m!6096280 () Bool)

(assert (=> b!5059317 m!6096280))

(declare-fun m!6096282 () Bool)

(assert (=> b!5059317 m!6096282))

(declare-fun m!6096284 () Bool)

(assert (=> b!5059318 m!6096284))

(declare-fun m!6096286 () Bool)

(assert (=> b!5059314 m!6096286))

(assert (=> b!5059313 m!6096280))

(assert (=> b!5059313 m!6096282))

(declare-fun m!6096288 () Bool)

(assert (=> b!5059315 m!6096288))

(declare-fun m!6096290 () Bool)

(assert (=> b!5059316 m!6096290))

(assert (=> b!5059023 d!1629089))

(declare-fun d!1629091 () Bool)

(declare-fun res!2154355 () Bool)

(declare-fun e!3157987 () Bool)

(assert (=> d!1629091 (=> (not res!2154355) (not e!3157987))))

(assert (=> d!1629091 (= res!2154355 (= (csize!31340 (right!43133 (right!43133 ys!41))) (+ (size!39060 (left!42803 (right!43133 (right!43133 ys!41)))) (size!39060 (right!43133 (right!43133 (right!43133 ys!41)))))))))

(assert (=> d!1629091 (= (inv!77513 (right!43133 (right!43133 ys!41))) e!3157987)))

(declare-fun b!5059319 () Bool)

(declare-fun res!2154356 () Bool)

(assert (=> b!5059319 (=> (not res!2154356) (not e!3157987))))

(assert (=> b!5059319 (= res!2154356 (and (not (= (left!42803 (right!43133 (right!43133 ys!41))) Empty!15555)) (not (= (right!43133 (right!43133 (right!43133 ys!41))) Empty!15555))))))

(declare-fun b!5059320 () Bool)

(declare-fun res!2154357 () Bool)

(assert (=> b!5059320 (=> (not res!2154357) (not e!3157987))))

(assert (=> b!5059320 (= res!2154357 (= (cheight!15766 (right!43133 (right!43133 ys!41))) (+ (max!0 (height!2132 (left!42803 (right!43133 (right!43133 ys!41)))) (height!2132 (right!43133 (right!43133 (right!43133 ys!41))))) 1)))))

(declare-fun b!5059321 () Bool)

(assert (=> b!5059321 (= e!3157987 (<= 0 (cheight!15766 (right!43133 (right!43133 ys!41)))))))

(assert (= (and d!1629091 res!2154355) b!5059319))

(assert (= (and b!5059319 res!2154356) b!5059320))

(assert (= (and b!5059320 res!2154357) b!5059321))

(declare-fun m!6096292 () Bool)

(assert (=> d!1629091 m!6096292))

(declare-fun m!6096294 () Bool)

(assert (=> d!1629091 m!6096294))

(declare-fun m!6096296 () Bool)

(assert (=> b!5059320 m!6096296))

(declare-fun m!6096298 () Bool)

(assert (=> b!5059320 m!6096298))

(assert (=> b!5059320 m!6096296))

(assert (=> b!5059320 m!6096298))

(declare-fun m!6096300 () Bool)

(assert (=> b!5059320 m!6096300))

(assert (=> b!5058939 d!1629091))

(assert (=> b!5058946 d!1628971))

(assert (=> b!5058946 d!1628973))

(assert (=> b!5059024 d!1628977))

(assert (=> b!5059024 d!1628979))

(declare-fun d!1629093 () Bool)

(declare-fun lt!2087857 () Int)

(assert (=> d!1629093 (= lt!2087857 (size!39058 (list!18973 (left!42803 (right!43133 ys!41)))))))

(assert (=> d!1629093 (= lt!2087857 (ite (is-Empty!15555 (left!42803 (right!43133 ys!41))) 0 (ite (is-Leaf!25838 (left!42803 (right!43133 ys!41))) (csize!31341 (left!42803 (right!43133 ys!41))) (csize!31340 (left!42803 (right!43133 ys!41))))))))

(assert (=> d!1629093 (= (size!39060 (left!42803 (right!43133 ys!41))) lt!2087857)))

(declare-fun bs!1189552 () Bool)

(assert (= bs!1189552 d!1629093))

(assert (=> bs!1189552 m!6096082))

(assert (=> bs!1189552 m!6096082))

(declare-fun m!6096302 () Bool)

(assert (=> bs!1189552 m!6096302))

(assert (=> d!1628835 d!1629093))

(declare-fun d!1629095 () Bool)

(declare-fun lt!2087858 () Int)

(assert (=> d!1629095 (= lt!2087858 (size!39058 (list!18973 (right!43133 (right!43133 ys!41)))))))

(assert (=> d!1629095 (= lt!2087858 (ite (is-Empty!15555 (right!43133 (right!43133 ys!41))) 0 (ite (is-Leaf!25838 (right!43133 (right!43133 ys!41))) (csize!31341 (right!43133 (right!43133 ys!41))) (csize!31340 (right!43133 (right!43133 ys!41))))))))

(assert (=> d!1629095 (= (size!39060 (right!43133 (right!43133 ys!41))) lt!2087858)))

(declare-fun bs!1189553 () Bool)

(assert (= bs!1189553 d!1629095))

(assert (=> bs!1189553 m!6096084))

(assert (=> bs!1189553 m!6096084))

(declare-fun m!6096304 () Bool)

(assert (=> bs!1189553 m!6096304))

(assert (=> d!1628835 d!1629095))

(assert (=> d!1628819 d!1629039))

(assert (=> d!1628819 d!1628969))

(declare-fun d!1629097 () Bool)

(declare-fun lt!2087859 () Int)

(assert (=> d!1629097 (>= lt!2087859 0)))

(declare-fun e!3157988 () Int)

(assert (=> d!1629097 (= lt!2087859 e!3157988)))

(declare-fun c!868080 () Bool)

(assert (=> d!1629097 (= c!868080 (is-Nil!58425 (list!18972 (xs!18893 xs!286))))))

(assert (=> d!1629097 (= (size!39058 (list!18972 (xs!18893 xs!286))) lt!2087859)))

(declare-fun b!5059322 () Bool)

(assert (=> b!5059322 (= e!3157988 0)))

(declare-fun b!5059323 () Bool)

(assert (=> b!5059323 (= e!3157988 (+ 1 (size!39058 (t!371242 (list!18972 (xs!18893 xs!286))))))))

(assert (= (and d!1629097 c!868080) b!5059322))

(assert (= (and d!1629097 (not c!868080)) b!5059323))

(declare-fun m!6096306 () Bool)

(assert (=> b!5059323 m!6096306))

(assert (=> b!5058934 d!1629097))

(declare-fun d!1629099 () Bool)

(assert (=> d!1629099 (= (list!18972 (xs!18893 xs!286)) (innerList!15643 (xs!18893 xs!286)))))

(assert (=> b!5058934 d!1629099))

(declare-fun d!1629101 () Bool)

(declare-fun c!868081 () Bool)

(assert (=> d!1629101 (= c!868081 (is-Node!15555 (left!42803 (left!42803 (right!43133 ys!41)))))))

(declare-fun e!3157989 () Bool)

(assert (=> d!1629101 (= (inv!77509 (left!42803 (left!42803 (right!43133 ys!41)))) e!3157989)))

(declare-fun b!5059324 () Bool)

(assert (=> b!5059324 (= e!3157989 (inv!77513 (left!42803 (left!42803 (right!43133 ys!41)))))))

(declare-fun b!5059325 () Bool)

(declare-fun e!3157990 () Bool)

(assert (=> b!5059325 (= e!3157989 e!3157990)))

(declare-fun res!2154358 () Bool)

(assert (=> b!5059325 (= res!2154358 (not (is-Leaf!25838 (left!42803 (left!42803 (right!43133 ys!41))))))))

(assert (=> b!5059325 (=> res!2154358 e!3157990)))

(declare-fun b!5059326 () Bool)

(assert (=> b!5059326 (= e!3157990 (inv!77514 (left!42803 (left!42803 (right!43133 ys!41)))))))

(assert (= (and d!1629101 c!868081) b!5059324))

(assert (= (and d!1629101 (not c!868081)) b!5059325))

(assert (= (and b!5059325 (not res!2154358)) b!5059326))

(declare-fun m!6096308 () Bool)

(assert (=> b!5059324 m!6096308))

(declare-fun m!6096310 () Bool)

(assert (=> b!5059326 m!6096310))

(assert (=> b!5059033 d!1629101))

(declare-fun d!1629103 () Bool)

(declare-fun c!868082 () Bool)

(assert (=> d!1629103 (= c!868082 (is-Node!15555 (right!43133 (left!42803 (right!43133 ys!41)))))))

(declare-fun e!3157991 () Bool)

(assert (=> d!1629103 (= (inv!77509 (right!43133 (left!42803 (right!43133 ys!41)))) e!3157991)))

(declare-fun b!5059327 () Bool)

(assert (=> b!5059327 (= e!3157991 (inv!77513 (right!43133 (left!42803 (right!43133 ys!41)))))))

(declare-fun b!5059328 () Bool)

(declare-fun e!3157992 () Bool)

(assert (=> b!5059328 (= e!3157991 e!3157992)))

(declare-fun res!2154359 () Bool)

(assert (=> b!5059328 (= res!2154359 (not (is-Leaf!25838 (right!43133 (left!42803 (right!43133 ys!41))))))))

(assert (=> b!5059328 (=> res!2154359 e!3157992)))

(declare-fun b!5059329 () Bool)

(assert (=> b!5059329 (= e!3157992 (inv!77514 (right!43133 (left!42803 (right!43133 ys!41)))))))

(assert (= (and d!1629103 c!868082) b!5059327))

(assert (= (and d!1629103 (not c!868082)) b!5059328))

(assert (= (and b!5059328 (not res!2154359)) b!5059329))

(declare-fun m!6096312 () Bool)

(assert (=> b!5059327 m!6096312))

(declare-fun m!6096314 () Bool)

(assert (=> b!5059329 m!6096314))

(assert (=> b!5059033 d!1629103))

(declare-fun d!1629105 () Bool)

(declare-fun res!2154360 () Bool)

(declare-fun e!3157993 () Bool)

(assert (=> d!1629105 (=> (not res!2154360) (not e!3157993))))

(assert (=> d!1629105 (= res!2154360 (<= (size!39058 (list!18972 (xs!18893 (right!43133 (right!43133 ys!41))))) 512))))

(assert (=> d!1629105 (= (inv!77514 (right!43133 (right!43133 ys!41))) e!3157993)))

(declare-fun b!5059330 () Bool)

(declare-fun res!2154361 () Bool)

(assert (=> b!5059330 (=> (not res!2154361) (not e!3157993))))

(assert (=> b!5059330 (= res!2154361 (= (csize!31341 (right!43133 (right!43133 ys!41))) (size!39058 (list!18972 (xs!18893 (right!43133 (right!43133 ys!41)))))))))

(declare-fun b!5059331 () Bool)

(assert (=> b!5059331 (= e!3157993 (and (> (csize!31341 (right!43133 (right!43133 ys!41))) 0) (<= (csize!31341 (right!43133 (right!43133 ys!41))) 512)))))

(assert (= (and d!1629105 res!2154360) b!5059330))

(assert (= (and b!5059330 res!2154361) b!5059331))

(declare-fun m!6096316 () Bool)

(assert (=> d!1629105 m!6096316))

(assert (=> d!1629105 m!6096316))

(declare-fun m!6096318 () Bool)

(assert (=> d!1629105 m!6096318))

(assert (=> b!5059330 m!6096316))

(assert (=> b!5059330 m!6096316))

(assert (=> b!5059330 m!6096318))

(assert (=> b!5058941 d!1629105))

(assert (=> d!1628847 d!1628945))

(assert (=> d!1628847 d!1629007))

(declare-fun d!1629107 () Bool)

(assert (=> d!1629107 (= (inv!77510 (xs!18893 (right!43133 (left!42803 ys!41)))) (<= (size!39058 (innerList!15643 (xs!18893 (right!43133 (left!42803 ys!41))))) 2147483647))))

(declare-fun bs!1189554 () Bool)

(assert (= bs!1189554 d!1629107))

(declare-fun m!6096320 () Bool)

(assert (=> bs!1189554 m!6096320))

(assert (=> b!5059054 d!1629107))

(declare-fun d!1629109 () Bool)

(assert (=> d!1629109 (= (max!0 (height!2132 (left!42803 (right!43133 ys!41))) (height!2132 (right!43133 (right!43133 ys!41)))) (ite (< (height!2132 (left!42803 (right!43133 ys!41))) (height!2132 (right!43133 (right!43133 ys!41)))) (height!2132 (right!43133 (right!43133 ys!41))) (height!2132 (left!42803 (right!43133 ys!41)))))))

(assert (=> b!5058999 d!1629109))

(assert (=> b!5058999 d!1628937))

(assert (=> b!5058999 d!1628939))

(declare-fun d!1629111 () Bool)

(declare-fun res!2154362 () Bool)

(declare-fun e!3157994 () Bool)

(assert (=> d!1629111 (=> (not res!2154362) (not e!3157994))))

(assert (=> d!1629111 (= res!2154362 (= (csize!31340 (right!43133 (left!42803 xs!286))) (+ (size!39060 (left!42803 (right!43133 (left!42803 xs!286)))) (size!39060 (right!43133 (right!43133 (left!42803 xs!286)))))))))

(assert (=> d!1629111 (= (inv!77513 (right!43133 (left!42803 xs!286))) e!3157994)))

(declare-fun b!5059332 () Bool)

(declare-fun res!2154363 () Bool)

(assert (=> b!5059332 (=> (not res!2154363) (not e!3157994))))

(assert (=> b!5059332 (= res!2154363 (and (not (= (left!42803 (right!43133 (left!42803 xs!286))) Empty!15555)) (not (= (right!43133 (right!43133 (left!42803 xs!286))) Empty!15555))))))

(declare-fun b!5059333 () Bool)

(declare-fun res!2154364 () Bool)

(assert (=> b!5059333 (=> (not res!2154364) (not e!3157994))))

(assert (=> b!5059333 (= res!2154364 (= (cheight!15766 (right!43133 (left!42803 xs!286))) (+ (max!0 (height!2132 (left!42803 (right!43133 (left!42803 xs!286)))) (height!2132 (right!43133 (right!43133 (left!42803 xs!286))))) 1)))))

(declare-fun b!5059334 () Bool)

(assert (=> b!5059334 (= e!3157994 (<= 0 (cheight!15766 (right!43133 (left!42803 xs!286)))))))

(assert (= (and d!1629111 res!2154362) b!5059332))

(assert (= (and b!5059332 res!2154363) b!5059333))

(assert (= (and b!5059333 res!2154364) b!5059334))

(declare-fun m!6096322 () Bool)

(assert (=> d!1629111 m!6096322))

(declare-fun m!6096324 () Bool)

(assert (=> d!1629111 m!6096324))

(assert (=> b!5059333 m!6096092))

(assert (=> b!5059333 m!6096094))

(assert (=> b!5059333 m!6096092))

(assert (=> b!5059333 m!6096094))

(declare-fun m!6096326 () Bool)

(assert (=> b!5059333 m!6096326))

(assert (=> b!5058960 d!1629111))

(declare-fun d!1629113 () Bool)

(declare-fun res!2154365 () Bool)

(declare-fun e!3157995 () Bool)

(assert (=> d!1629113 (=> (not res!2154365) (not e!3157995))))

(assert (=> d!1629113 (= res!2154365 (= (csize!31340 (left!42803 (right!43133 xs!286))) (+ (size!39060 (left!42803 (left!42803 (right!43133 xs!286)))) (size!39060 (right!43133 (left!42803 (right!43133 xs!286)))))))))

(assert (=> d!1629113 (= (inv!77513 (left!42803 (right!43133 xs!286))) e!3157995)))

(declare-fun b!5059335 () Bool)

(declare-fun res!2154366 () Bool)

(assert (=> b!5059335 (=> (not res!2154366) (not e!3157995))))

(assert (=> b!5059335 (= res!2154366 (and (not (= (left!42803 (left!42803 (right!43133 xs!286))) Empty!15555)) (not (= (right!43133 (left!42803 (right!43133 xs!286))) Empty!15555))))))

(declare-fun b!5059336 () Bool)

(declare-fun res!2154367 () Bool)

(assert (=> b!5059336 (=> (not res!2154367) (not e!3157995))))

(assert (=> b!5059336 (= res!2154367 (= (cheight!15766 (left!42803 (right!43133 xs!286))) (+ (max!0 (height!2132 (left!42803 (left!42803 (right!43133 xs!286)))) (height!2132 (right!43133 (left!42803 (right!43133 xs!286))))) 1)))))

(declare-fun b!5059337 () Bool)

(assert (=> b!5059337 (= e!3157995 (<= 0 (cheight!15766 (left!42803 (right!43133 xs!286)))))))

(assert (= (and d!1629113 res!2154365) b!5059335))

(assert (= (and b!5059335 res!2154366) b!5059336))

(assert (= (and b!5059336 res!2154367) b!5059337))

(declare-fun m!6096328 () Bool)

(assert (=> d!1629113 m!6096328))

(declare-fun m!6096330 () Bool)

(assert (=> d!1629113 m!6096330))

(assert (=> b!5059336 m!6096144))

(assert (=> b!5059336 m!6096146))

(assert (=> b!5059336 m!6096144))

(assert (=> b!5059336 m!6096146))

(declare-fun m!6096332 () Bool)

(assert (=> b!5059336 m!6096332))

(assert (=> b!5059007 d!1629113))

(declare-fun d!1629115 () Bool)

(declare-fun lt!2087860 () Int)

(assert (=> d!1629115 (>= lt!2087860 0)))

(declare-fun e!3157996 () Int)

(assert (=> d!1629115 (= lt!2087860 e!3157996)))

(declare-fun c!868083 () Bool)

(assert (=> d!1629115 (= c!868083 (is-Nil!58425 (list!18972 (xs!18893 (left!42803 xs!286)))))))

(assert (=> d!1629115 (= (size!39058 (list!18972 (xs!18893 (left!42803 xs!286)))) lt!2087860)))

(declare-fun b!5059338 () Bool)

(assert (=> b!5059338 (= e!3157996 0)))

(declare-fun b!5059339 () Bool)

(assert (=> b!5059339 (= e!3157996 (+ 1 (size!39058 (t!371242 (list!18972 (xs!18893 (left!42803 xs!286)))))))))

(assert (= (and d!1629115 c!868083) b!5059338))

(assert (= (and d!1629115 (not c!868083)) b!5059339))

(declare-fun m!6096334 () Bool)

(assert (=> b!5059339 m!6096334))

(assert (=> d!1628843 d!1629115))

(declare-fun d!1629117 () Bool)

(assert (=> d!1629117 (= (list!18972 (xs!18893 (left!42803 xs!286))) (innerList!15643 (xs!18893 (left!42803 xs!286))))))

(assert (=> d!1628843 d!1629117))

(declare-fun d!1629119 () Bool)

(declare-fun res!2154368 () Bool)

(declare-fun e!3157997 () Bool)

(assert (=> d!1629119 (=> (not res!2154368) (not e!3157997))))

(assert (=> d!1629119 (= res!2154368 (<= (size!39058 (list!18972 (xs!18893 (right!43133 (left!42803 xs!286))))) 512))))

(assert (=> d!1629119 (= (inv!77514 (right!43133 (left!42803 xs!286))) e!3157997)))

(declare-fun b!5059340 () Bool)

(declare-fun res!2154369 () Bool)

(assert (=> b!5059340 (=> (not res!2154369) (not e!3157997))))

(assert (=> b!5059340 (= res!2154369 (= (csize!31341 (right!43133 (left!42803 xs!286))) (size!39058 (list!18972 (xs!18893 (right!43133 (left!42803 xs!286)))))))))

(declare-fun b!5059341 () Bool)

(assert (=> b!5059341 (= e!3157997 (and (> (csize!31341 (right!43133 (left!42803 xs!286))) 0) (<= (csize!31341 (right!43133 (left!42803 xs!286))) 512)))))

(assert (= (and d!1629119 res!2154368) b!5059340))

(assert (= (and b!5059340 res!2154369) b!5059341))

(declare-fun m!6096336 () Bool)

(assert (=> d!1629119 m!6096336))

(assert (=> d!1629119 m!6096336))

(declare-fun m!6096338 () Bool)

(assert (=> d!1629119 m!6096338))

(assert (=> b!5059340 m!6096336))

(assert (=> b!5059340 m!6096336))

(assert (=> b!5059340 m!6096338))

(assert (=> b!5058962 d!1629119))

(declare-fun d!1629121 () Bool)

(assert (=> d!1629121 (= (max!0 (height!2132 (left!42803 ys!41)) (height!2132 (right!43133 ys!41))) (ite (< (height!2132 (left!42803 ys!41)) (height!2132 (right!43133 ys!41))) (height!2132 (right!43133 ys!41)) (height!2132 (left!42803 ys!41))))))

(assert (=> b!5058983 d!1629121))

(assert (=> b!5058983 d!1628823))

(assert (=> b!5058983 d!1628825))

(declare-fun d!1629123 () Bool)

(declare-fun res!2154370 () Bool)

(declare-fun e!3157998 () Bool)

(assert (=> d!1629123 (=> (not res!2154370) (not e!3157998))))

(assert (=> d!1629123 (= res!2154370 (<= (size!39058 (list!18972 (xs!18893 (left!42803 (right!43133 xs!286))))) 512))))

(assert (=> d!1629123 (= (inv!77514 (left!42803 (right!43133 xs!286))) e!3157998)))

(declare-fun b!5059342 () Bool)

(declare-fun res!2154371 () Bool)

(assert (=> b!5059342 (=> (not res!2154371) (not e!3157998))))

(assert (=> b!5059342 (= res!2154371 (= (csize!31341 (left!42803 (right!43133 xs!286))) (size!39058 (list!18972 (xs!18893 (left!42803 (right!43133 xs!286)))))))))

(declare-fun b!5059343 () Bool)

(assert (=> b!5059343 (= e!3157998 (and (> (csize!31341 (left!42803 (right!43133 xs!286))) 0) (<= (csize!31341 (left!42803 (right!43133 xs!286))) 512)))))

(assert (= (and d!1629123 res!2154370) b!5059342))

(assert (= (and b!5059342 res!2154371) b!5059343))

(declare-fun m!6096340 () Bool)

(assert (=> d!1629123 m!6096340))

(assert (=> d!1629123 m!6096340))

(declare-fun m!6096342 () Bool)

(assert (=> d!1629123 m!6096342))

(assert (=> b!5059342 m!6096340))

(assert (=> b!5059342 m!6096340))

(assert (=> b!5059342 m!6096342))

(assert (=> b!5059009 d!1629123))

(declare-fun d!1629125 () Bool)

(declare-fun lt!2087861 () Int)

(assert (=> d!1629125 (>= lt!2087861 0)))

(declare-fun e!3157999 () Int)

(assert (=> d!1629125 (= lt!2087861 e!3157999)))

(declare-fun c!868084 () Bool)

(assert (=> d!1629125 (= c!868084 (is-Nil!58425 (t!371242 (innerList!15643 (xs!18893 ys!41)))))))

(assert (=> d!1629125 (= (size!39058 (t!371242 (innerList!15643 (xs!18893 ys!41)))) lt!2087861)))

(declare-fun b!5059344 () Bool)

(assert (=> b!5059344 (= e!3157999 0)))

(declare-fun b!5059345 () Bool)

(assert (=> b!5059345 (= e!3157999 (+ 1 (size!39058 (t!371242 (t!371242 (innerList!15643 (xs!18893 ys!41)))))))))

(assert (= (and d!1629125 c!868084) b!5059344))

(assert (= (and d!1629125 (not c!868084)) b!5059345))

(declare-fun m!6096344 () Bool)

(assert (=> b!5059345 m!6096344))

(assert (=> b!5058992 d!1629125))

(declare-fun d!1629127 () Bool)

(declare-fun lt!2087862 () Int)

(assert (=> d!1629127 (>= lt!2087862 0)))

(declare-fun e!3158000 () Int)

(assert (=> d!1629127 (= lt!2087862 e!3158000)))

(declare-fun c!868085 () Bool)

(assert (=> d!1629127 (= c!868085 (is-Nil!58425 (innerList!15643 (xs!18893 (left!42803 xs!286)))))))

(assert (=> d!1629127 (= (size!39058 (innerList!15643 (xs!18893 (left!42803 xs!286)))) lt!2087862)))

(declare-fun b!5059346 () Bool)

(assert (=> b!5059346 (= e!3158000 0)))

(declare-fun b!5059347 () Bool)

(assert (=> b!5059347 (= e!3158000 (+ 1 (size!39058 (t!371242 (innerList!15643 (xs!18893 (left!42803 xs!286)))))))))

(assert (= (and d!1629127 c!868085) b!5059346))

(assert (= (and d!1629127 (not c!868085)) b!5059347))

(declare-fun m!6096346 () Bool)

(assert (=> b!5059347 m!6096346))

(assert (=> d!1628811 d!1629127))

(declare-fun d!1629129 () Bool)

(declare-fun res!2154372 () Bool)

(declare-fun e!3158001 () Bool)

(assert (=> d!1629129 (=> (not res!2154372) (not e!3158001))))

(assert (=> d!1629129 (= res!2154372 (= (csize!31340 (right!43133 (left!42803 ys!41))) (+ (size!39060 (left!42803 (right!43133 (left!42803 ys!41)))) (size!39060 (right!43133 (right!43133 (left!42803 ys!41)))))))))

(assert (=> d!1629129 (= (inv!77513 (right!43133 (left!42803 ys!41))) e!3158001)))

(declare-fun b!5059348 () Bool)

(declare-fun res!2154373 () Bool)

(assert (=> b!5059348 (=> (not res!2154373) (not e!3158001))))

(assert (=> b!5059348 (= res!2154373 (and (not (= (left!42803 (right!43133 (left!42803 ys!41))) Empty!15555)) (not (= (right!43133 (right!43133 (left!42803 ys!41))) Empty!15555))))))

(declare-fun b!5059349 () Bool)

(declare-fun res!2154374 () Bool)

(assert (=> b!5059349 (=> (not res!2154374) (not e!3158001))))

(assert (=> b!5059349 (= res!2154374 (= (cheight!15766 (right!43133 (left!42803 ys!41))) (+ (max!0 (height!2132 (left!42803 (right!43133 (left!42803 ys!41)))) (height!2132 (right!43133 (right!43133 (left!42803 ys!41))))) 1)))))

(declare-fun b!5059350 () Bool)

(assert (=> b!5059350 (= e!3158001 (<= 0 (cheight!15766 (right!43133 (left!42803 ys!41)))))))

(assert (= (and d!1629129 res!2154372) b!5059348))

(assert (= (and b!5059348 res!2154373) b!5059349))

(assert (= (and b!5059349 res!2154374) b!5059350))

(declare-fun m!6096348 () Bool)

(assert (=> d!1629129 m!6096348))

(declare-fun m!6096350 () Bool)

(assert (=> d!1629129 m!6096350))

(assert (=> b!5059349 m!6096280))

(assert (=> b!5059349 m!6096282))

(assert (=> b!5059349 m!6096280))

(assert (=> b!5059349 m!6096282))

(declare-fun m!6096352 () Bool)

(assert (=> b!5059349 m!6096352))

(assert (=> b!5058966 d!1629129))

(declare-fun d!1629131 () Bool)

(declare-fun c!868086 () Bool)

(assert (=> d!1629131 (= c!868086 (is-Node!15555 (left!42803 (right!43133 (left!42803 xs!286)))))))

(declare-fun e!3158002 () Bool)

(assert (=> d!1629131 (= (inv!77509 (left!42803 (right!43133 (left!42803 xs!286)))) e!3158002)))

(declare-fun b!5059351 () Bool)

(assert (=> b!5059351 (= e!3158002 (inv!77513 (left!42803 (right!43133 (left!42803 xs!286)))))))

(declare-fun b!5059352 () Bool)

(declare-fun e!3158003 () Bool)

(assert (=> b!5059352 (= e!3158002 e!3158003)))

(declare-fun res!2154375 () Bool)

(assert (=> b!5059352 (= res!2154375 (not (is-Leaf!25838 (left!42803 (right!43133 (left!42803 xs!286))))))))

(assert (=> b!5059352 (=> res!2154375 e!3158003)))

(declare-fun b!5059353 () Bool)

(assert (=> b!5059353 (= e!3158003 (inv!77514 (left!42803 (right!43133 (left!42803 xs!286)))))))

(assert (= (and d!1629131 c!868086) b!5059351))

(assert (= (and d!1629131 (not c!868086)) b!5059352))

(assert (= (and b!5059352 (not res!2154375)) b!5059353))

(declare-fun m!6096354 () Bool)

(assert (=> b!5059351 m!6096354))

(declare-fun m!6096356 () Bool)

(assert (=> b!5059353 m!6096356))

(assert (=> b!5059044 d!1629131))

(declare-fun d!1629133 () Bool)

(declare-fun c!868087 () Bool)

(assert (=> d!1629133 (= c!868087 (is-Node!15555 (right!43133 (right!43133 (left!42803 xs!286)))))))

(declare-fun e!3158004 () Bool)

(assert (=> d!1629133 (= (inv!77509 (right!43133 (right!43133 (left!42803 xs!286)))) e!3158004)))

(declare-fun b!5059354 () Bool)

(assert (=> b!5059354 (= e!3158004 (inv!77513 (right!43133 (right!43133 (left!42803 xs!286)))))))

(declare-fun b!5059355 () Bool)

(declare-fun e!3158005 () Bool)

(assert (=> b!5059355 (= e!3158004 e!3158005)))

(declare-fun res!2154376 () Bool)

(assert (=> b!5059355 (= res!2154376 (not (is-Leaf!25838 (right!43133 (right!43133 (left!42803 xs!286))))))))

(assert (=> b!5059355 (=> res!2154376 e!3158005)))

(declare-fun b!5059356 () Bool)

(assert (=> b!5059356 (= e!3158005 (inv!77514 (right!43133 (right!43133 (left!42803 xs!286)))))))

(assert (= (and d!1629133 c!868087) b!5059354))

(assert (= (and d!1629133 (not c!868087)) b!5059355))

(assert (= (and b!5059355 (not res!2154376)) b!5059356))

(declare-fun m!6096358 () Bool)

(assert (=> b!5059354 m!6096358))

(declare-fun m!6096360 () Bool)

(assert (=> b!5059356 m!6096360))

(assert (=> b!5059044 d!1629133))

(declare-fun d!1629135 () Bool)

(assert (=> d!1629135 (= (max!0 (height!2132 (left!42803 xs!286)) (height!2132 (right!43133 xs!286))) (ite (< (height!2132 (left!42803 xs!286)) (height!2132 (right!43133 xs!286))) (height!2132 (right!43133 xs!286)) (height!2132 (left!42803 xs!286))))))

(assert (=> b!5059016 d!1629135))

(assert (=> b!5059016 d!1628725))

(assert (=> b!5059016 d!1628727))

(assert (=> d!1628783 d!1629097))

(assert (=> d!1628783 d!1629099))

(declare-fun d!1629137 () Bool)

(declare-fun lt!2087863 () Bool)

(assert (=> d!1629137 (= lt!2087863 (isEmpty!31616 (list!18973 (left!42803 (right!43133 ys!41)))))))

(assert (=> d!1629137 (= lt!2087863 (= (size!39060 (left!42803 (right!43133 ys!41))) 0))))

(assert (=> d!1629137 (= (isEmpty!31614 (left!42803 (right!43133 ys!41))) lt!2087863)))

(declare-fun bs!1189555 () Bool)

(assert (= bs!1189555 d!1629137))

(assert (=> bs!1189555 m!6096082))

(assert (=> bs!1189555 m!6096082))

(declare-fun m!6096362 () Bool)

(assert (=> bs!1189555 m!6096362))

(assert (=> bs!1189555 m!6095720))

(assert (=> b!5059002 d!1629137))

(declare-fun b!5059357 () Bool)

(declare-fun res!2154377 () Bool)

(declare-fun e!3158006 () Bool)

(assert (=> b!5059357 (=> (not res!2154377) (not e!3158006))))

(assert (=> b!5059357 (= res!2154377 (<= (- (height!2132 (left!42803 (right!43133 (right!43133 ys!41)))) (height!2132 (right!43133 (right!43133 (right!43133 ys!41))))) 1))))

(declare-fun b!5059358 () Bool)

(declare-fun res!2154378 () Bool)

(assert (=> b!5059358 (=> (not res!2154378) (not e!3158006))))

(assert (=> b!5059358 (= res!2154378 (not (isEmpty!31614 (left!42803 (right!43133 (right!43133 ys!41))))))))

(declare-fun b!5059359 () Bool)

(assert (=> b!5059359 (= e!3158006 (not (isEmpty!31614 (right!43133 (right!43133 (right!43133 ys!41))))))))

(declare-fun b!5059360 () Bool)

(declare-fun res!2154381 () Bool)

(assert (=> b!5059360 (=> (not res!2154381) (not e!3158006))))

(assert (=> b!5059360 (= res!2154381 (isBalanced!4417 (right!43133 (right!43133 (right!43133 ys!41)))))))

(declare-fun b!5059361 () Bool)

(declare-fun e!3158007 () Bool)

(assert (=> b!5059361 (= e!3158007 e!3158006)))

(declare-fun res!2154379 () Bool)

(assert (=> b!5059361 (=> (not res!2154379) (not e!3158006))))

(assert (=> b!5059361 (= res!2154379 (<= (- 1) (- (height!2132 (left!42803 (right!43133 (right!43133 ys!41)))) (height!2132 (right!43133 (right!43133 (right!43133 ys!41)))))))))

(declare-fun d!1629139 () Bool)

(declare-fun res!2154382 () Bool)

(assert (=> d!1629139 (=> res!2154382 e!3158007)))

(assert (=> d!1629139 (= res!2154382 (not (is-Node!15555 (right!43133 (right!43133 ys!41)))))))

(assert (=> d!1629139 (= (isBalanced!4417 (right!43133 (right!43133 ys!41))) e!3158007)))

(declare-fun b!5059362 () Bool)

(declare-fun res!2154380 () Bool)

(assert (=> b!5059362 (=> (not res!2154380) (not e!3158006))))

(assert (=> b!5059362 (= res!2154380 (isBalanced!4417 (left!42803 (right!43133 (right!43133 ys!41)))))))

(assert (= (and d!1629139 (not res!2154382)) b!5059361))

(assert (= (and b!5059361 res!2154379) b!5059357))

(assert (= (and b!5059357 res!2154377) b!5059362))

(assert (= (and b!5059362 res!2154380) b!5059360))

(assert (= (and b!5059360 res!2154381) b!5059358))

(assert (= (and b!5059358 res!2154378) b!5059359))

(assert (=> b!5059361 m!6096296))

(assert (=> b!5059361 m!6096298))

(declare-fun m!6096364 () Bool)

(assert (=> b!5059362 m!6096364))

(declare-fun m!6096366 () Bool)

(assert (=> b!5059358 m!6096366))

(assert (=> b!5059357 m!6096296))

(assert (=> b!5059357 m!6096298))

(declare-fun m!6096368 () Bool)

(assert (=> b!5059359 m!6096368))

(declare-fun m!6096370 () Bool)

(assert (=> b!5059360 m!6096370))

(assert (=> b!5059004 d!1629139))

(declare-fun d!1629141 () Bool)

(declare-fun res!2154383 () Bool)

(declare-fun e!3158008 () Bool)

(assert (=> d!1629141 (=> (not res!2154383) (not e!3158008))))

(assert (=> d!1629141 (= res!2154383 (= (csize!31340 (left!42803 (right!43133 ys!41))) (+ (size!39060 (left!42803 (left!42803 (right!43133 ys!41)))) (size!39060 (right!43133 (left!42803 (right!43133 ys!41)))))))))

(assert (=> d!1629141 (= (inv!77513 (left!42803 (right!43133 ys!41))) e!3158008)))

(declare-fun b!5059363 () Bool)

(declare-fun res!2154384 () Bool)

(assert (=> b!5059363 (=> (not res!2154384) (not e!3158008))))

(assert (=> b!5059363 (= res!2154384 (and (not (= (left!42803 (left!42803 (right!43133 ys!41))) Empty!15555)) (not (= (right!43133 (left!42803 (right!43133 ys!41))) Empty!15555))))))

(declare-fun b!5059364 () Bool)

(declare-fun res!2154385 () Bool)

(assert (=> b!5059364 (=> (not res!2154385) (not e!3158008))))

(assert (=> b!5059364 (= res!2154385 (= (cheight!15766 (left!42803 (right!43133 ys!41))) (+ (max!0 (height!2132 (left!42803 (left!42803 (right!43133 ys!41)))) (height!2132 (right!43133 (left!42803 (right!43133 ys!41))))) 1)))))

(declare-fun b!5059365 () Bool)

(assert (=> b!5059365 (= e!3158008 (<= 0 (cheight!15766 (left!42803 (right!43133 ys!41)))))))

(assert (= (and d!1629141 res!2154383) b!5059363))

(assert (= (and b!5059363 res!2154384) b!5059364))

(assert (= (and b!5059364 res!2154385) b!5059365))

(declare-fun m!6096372 () Bool)

(assert (=> d!1629141 m!6096372))

(declare-fun m!6096374 () Bool)

(assert (=> d!1629141 m!6096374))

(assert (=> b!5059364 m!6096208))

(assert (=> b!5059364 m!6096210))

(assert (=> b!5059364 m!6096208))

(assert (=> b!5059364 m!6096210))

(declare-fun m!6096376 () Bool)

(assert (=> b!5059364 m!6096376))

(assert (=> b!5058936 d!1629141))

(assert (=> b!5059013 d!1629115))

(assert (=> b!5059013 d!1629117))

(declare-fun b!5059366 () Bool)

(declare-fun e!3158009 () Bool)

(declare-fun tp!1413778 () Bool)

(assert (=> b!5059366 (= e!3158009 (and tp_is_empty!37033 tp!1413778))))

(assert (=> b!5059046 (= tp!1413738 e!3158009)))

(assert (= (and b!5059046 (is-Cons!58425 (innerList!15643 (xs!18893 (right!43133 (left!42803 xs!286)))))) b!5059366))

(declare-fun e!3158011 () Bool)

(declare-fun b!5059367 () Bool)

(declare-fun tp!1413780 () Bool)

(declare-fun tp!1413779 () Bool)

(assert (=> b!5059367 (= e!3158011 (and (inv!77509 (left!42803 (left!42803 (right!43133 (right!43133 xs!286))))) tp!1413780 (inv!77509 (right!43133 (left!42803 (right!43133 (right!43133 xs!286))))) tp!1413779))))

(declare-fun b!5059369 () Bool)

(declare-fun e!3158010 () Bool)

(declare-fun tp!1413781 () Bool)

(assert (=> b!5059369 (= e!3158010 tp!1413781)))

(declare-fun b!5059368 () Bool)

(assert (=> b!5059368 (= e!3158011 (and (inv!77510 (xs!18893 (left!42803 (right!43133 (right!43133 xs!286))))) e!3158010))))

(assert (=> b!5059030 (= tp!1413723 (and (inv!77509 (left!42803 (right!43133 (right!43133 xs!286)))) e!3158011))))

(assert (= (and b!5059030 (is-Node!15555 (left!42803 (right!43133 (right!43133 xs!286))))) b!5059367))

(assert (= b!5059368 b!5059369))

(assert (= (and b!5059030 (is-Leaf!25838 (left!42803 (right!43133 (right!43133 xs!286))))) b!5059368))

(declare-fun m!6096378 () Bool)

(assert (=> b!5059367 m!6096378))

(declare-fun m!6096380 () Bool)

(assert (=> b!5059367 m!6096380))

(declare-fun m!6096382 () Bool)

(assert (=> b!5059368 m!6096382))

(assert (=> b!5059030 m!6095776))

(declare-fun e!3158013 () Bool)

(declare-fun tp!1413782 () Bool)

(declare-fun tp!1413783 () Bool)

(declare-fun b!5059370 () Bool)

(assert (=> b!5059370 (= e!3158013 (and (inv!77509 (left!42803 (right!43133 (right!43133 (right!43133 xs!286))))) tp!1413783 (inv!77509 (right!43133 (right!43133 (right!43133 (right!43133 xs!286))))) tp!1413782))))

(declare-fun b!5059372 () Bool)

(declare-fun e!3158012 () Bool)

(declare-fun tp!1413784 () Bool)

(assert (=> b!5059372 (= e!3158012 tp!1413784)))

(declare-fun b!5059371 () Bool)

(assert (=> b!5059371 (= e!3158013 (and (inv!77510 (xs!18893 (right!43133 (right!43133 (right!43133 xs!286))))) e!3158012))))

(assert (=> b!5059030 (= tp!1413722 (and (inv!77509 (right!43133 (right!43133 (right!43133 xs!286)))) e!3158013))))

(assert (= (and b!5059030 (is-Node!15555 (right!43133 (right!43133 (right!43133 xs!286))))) b!5059370))

(assert (= b!5059371 b!5059372))

(assert (= (and b!5059030 (is-Leaf!25838 (right!43133 (right!43133 (right!43133 xs!286))))) b!5059371))

(declare-fun m!6096384 () Bool)

(assert (=> b!5059370 m!6096384))

(declare-fun m!6096386 () Bool)

(assert (=> b!5059370 m!6096386))

(declare-fun m!6096388 () Bool)

(assert (=> b!5059371 m!6096388))

(assert (=> b!5059030 m!6095778))

(declare-fun e!3158015 () Bool)

(declare-fun b!5059373 () Bool)

(declare-fun tp!1413785 () Bool)

(declare-fun tp!1413786 () Bool)

(assert (=> b!5059373 (= e!3158015 (and (inv!77509 (left!42803 (left!42803 (left!42803 (left!42803 ys!41))))) tp!1413786 (inv!77509 (right!43133 (left!42803 (left!42803 (left!42803 ys!41))))) tp!1413785))))

(declare-fun b!5059375 () Bool)

(declare-fun e!3158014 () Bool)

(declare-fun tp!1413787 () Bool)

(assert (=> b!5059375 (= e!3158014 tp!1413787)))

(declare-fun b!5059374 () Bool)

(assert (=> b!5059374 (= e!3158015 (and (inv!77510 (xs!18893 (left!42803 (left!42803 (left!42803 ys!41))))) e!3158014))))

(assert (=> b!5059050 (= tp!1413743 (and (inv!77509 (left!42803 (left!42803 (left!42803 ys!41)))) e!3158015))))

(assert (= (and b!5059050 (is-Node!15555 (left!42803 (left!42803 (left!42803 ys!41))))) b!5059373))

(assert (= b!5059374 b!5059375))

(assert (= (and b!5059050 (is-Leaf!25838 (left!42803 (left!42803 (left!42803 ys!41))))) b!5059374))

(declare-fun m!6096390 () Bool)

(assert (=> b!5059373 m!6096390))

(declare-fun m!6096392 () Bool)

(assert (=> b!5059373 m!6096392))

(declare-fun m!6096394 () Bool)

(assert (=> b!5059374 m!6096394))

(assert (=> b!5059050 m!6095806))

(declare-fun tp!1413789 () Bool)

(declare-fun tp!1413788 () Bool)

(declare-fun b!5059376 () Bool)

(declare-fun e!3158017 () Bool)

(assert (=> b!5059376 (= e!3158017 (and (inv!77509 (left!42803 (right!43133 (left!42803 (left!42803 ys!41))))) tp!1413789 (inv!77509 (right!43133 (right!43133 (left!42803 (left!42803 ys!41))))) tp!1413788))))

(declare-fun b!5059378 () Bool)

(declare-fun e!3158016 () Bool)

(declare-fun tp!1413790 () Bool)

(assert (=> b!5059378 (= e!3158016 tp!1413790)))

(declare-fun b!5059377 () Bool)

(assert (=> b!5059377 (= e!3158017 (and (inv!77510 (xs!18893 (right!43133 (left!42803 (left!42803 ys!41))))) e!3158016))))

(assert (=> b!5059050 (= tp!1413742 (and (inv!77509 (right!43133 (left!42803 (left!42803 ys!41)))) e!3158017))))

(assert (= (and b!5059050 (is-Node!15555 (right!43133 (left!42803 (left!42803 ys!41))))) b!5059376))

(assert (= b!5059377 b!5059378))

(assert (= (and b!5059050 (is-Leaf!25838 (right!43133 (left!42803 (left!42803 ys!41))))) b!5059377))

(declare-fun m!6096396 () Bool)

(assert (=> b!5059376 m!6096396))

(declare-fun m!6096398 () Bool)

(assert (=> b!5059376 m!6096398))

(declare-fun m!6096400 () Bool)

(assert (=> b!5059377 m!6096400))

(assert (=> b!5059050 m!6095808))

(declare-fun b!5059379 () Bool)

(declare-fun e!3158018 () Bool)

(declare-fun tp!1413791 () Bool)

(assert (=> b!5059379 (= e!3158018 (and tp_is_empty!37033 tp!1413791))))

(assert (=> b!5059032 (= tp!1413724 e!3158018)))

(assert (= (and b!5059032 (is-Cons!58425 (innerList!15643 (xs!18893 (right!43133 (right!43133 xs!286)))))) b!5059379))

(declare-fun b!5059380 () Bool)

(declare-fun e!3158019 () Bool)

(declare-fun tp!1413792 () Bool)

(assert (=> b!5059380 (= e!3158019 (and tp_is_empty!37033 tp!1413792))))

(assert (=> b!5059052 (= tp!1413744 e!3158019)))

(assert (= (and b!5059052 (is-Cons!58425 (innerList!15643 (xs!18893 (left!42803 (left!42803 ys!41)))))) b!5059380))

(declare-fun b!5059381 () Bool)

(declare-fun e!3158020 () Bool)

(declare-fun tp!1413793 () Bool)

(assert (=> b!5059381 (= e!3158020 (and tp_is_empty!37033 tp!1413793))))

(assert (=> b!5059048 (= tp!1413740 e!3158020)))

(assert (= (and b!5059048 (is-Cons!58425 (t!371242 (t!371242 (innerList!15643 (xs!18893 ys!41)))))) b!5059381))

(declare-fun b!5059382 () Bool)

(declare-fun e!3158021 () Bool)

(declare-fun tp!1413794 () Bool)

(assert (=> b!5059382 (= e!3158021 (and tp_is_empty!37033 tp!1413794))))

(assert (=> b!5059026 (= tp!1413718 e!3158021)))

(assert (= (and b!5059026 (is-Cons!58425 (t!371242 (t!371242 (innerList!15643 (xs!18893 xs!286)))))) b!5059382))

(declare-fun b!5059383 () Bool)

(declare-fun e!3158023 () Bool)

(declare-fun tp!1413796 () Bool)

(declare-fun tp!1413795 () Bool)

(assert (=> b!5059383 (= e!3158023 (and (inv!77509 (left!42803 (left!42803 (left!42803 (right!43133 ys!41))))) tp!1413796 (inv!77509 (right!43133 (left!42803 (left!42803 (right!43133 ys!41))))) tp!1413795))))

(declare-fun b!5059385 () Bool)

(declare-fun e!3158022 () Bool)

(declare-fun tp!1413797 () Bool)

(assert (=> b!5059385 (= e!3158022 tp!1413797)))

(declare-fun b!5059384 () Bool)

(assert (=> b!5059384 (= e!3158023 (and (inv!77510 (xs!18893 (left!42803 (left!42803 (right!43133 ys!41))))) e!3158022))))

(assert (=> b!5059033 (= tp!1413726 (and (inv!77509 (left!42803 (left!42803 (right!43133 ys!41)))) e!3158023))))

(assert (= (and b!5059033 (is-Node!15555 (left!42803 (left!42803 (right!43133 ys!41))))) b!5059383))

(assert (= b!5059384 b!5059385))

(assert (= (and b!5059033 (is-Leaf!25838 (left!42803 (left!42803 (right!43133 ys!41))))) b!5059384))

(declare-fun m!6096402 () Bool)

(assert (=> b!5059383 m!6096402))

(declare-fun m!6096404 () Bool)

(assert (=> b!5059383 m!6096404))

(declare-fun m!6096406 () Bool)

(assert (=> b!5059384 m!6096406))

(assert (=> b!5059033 m!6095782))

(declare-fun tp!1413798 () Bool)

(declare-fun tp!1413799 () Bool)

(declare-fun e!3158025 () Bool)

(declare-fun b!5059386 () Bool)

(assert (=> b!5059386 (= e!3158025 (and (inv!77509 (left!42803 (right!43133 (left!42803 (right!43133 ys!41))))) tp!1413799 (inv!77509 (right!43133 (right!43133 (left!42803 (right!43133 ys!41))))) tp!1413798))))

(declare-fun b!5059388 () Bool)

(declare-fun e!3158024 () Bool)

(declare-fun tp!1413800 () Bool)

(assert (=> b!5059388 (= e!3158024 tp!1413800)))

(declare-fun b!5059387 () Bool)

(assert (=> b!5059387 (= e!3158025 (and (inv!77510 (xs!18893 (right!43133 (left!42803 (right!43133 ys!41))))) e!3158024))))

(assert (=> b!5059033 (= tp!1413725 (and (inv!77509 (right!43133 (left!42803 (right!43133 ys!41)))) e!3158025))))

(assert (= (and b!5059033 (is-Node!15555 (right!43133 (left!42803 (right!43133 ys!41))))) b!5059386))

(assert (= b!5059387 b!5059388))

(assert (= (and b!5059033 (is-Leaf!25838 (right!43133 (left!42803 (right!43133 ys!41))))) b!5059387))

(declare-fun m!6096408 () Bool)

(assert (=> b!5059386 m!6096408))

(declare-fun m!6096410 () Bool)

(assert (=> b!5059386 m!6096410))

(declare-fun m!6096412 () Bool)

(assert (=> b!5059387 m!6096412))

(assert (=> b!5059033 m!6095784))

(declare-fun tp!1413802 () Bool)

(declare-fun tp!1413801 () Bool)

(declare-fun e!3158027 () Bool)

(declare-fun b!5059389 () Bool)

(assert (=> b!5059389 (= e!3158027 (and (inv!77509 (left!42803 (left!42803 (right!43133 (left!42803 ys!41))))) tp!1413802 (inv!77509 (right!43133 (left!42803 (right!43133 (left!42803 ys!41))))) tp!1413801))))

(declare-fun b!5059391 () Bool)

(declare-fun e!3158026 () Bool)

(declare-fun tp!1413803 () Bool)

(assert (=> b!5059391 (= e!3158026 tp!1413803)))

(declare-fun b!5059390 () Bool)

(assert (=> b!5059390 (= e!3158027 (and (inv!77510 (xs!18893 (left!42803 (right!43133 (left!42803 ys!41))))) e!3158026))))

(assert (=> b!5059053 (= tp!1413746 (and (inv!77509 (left!42803 (right!43133 (left!42803 ys!41)))) e!3158027))))

(assert (= (and b!5059053 (is-Node!15555 (left!42803 (right!43133 (left!42803 ys!41))))) b!5059389))

(assert (= b!5059390 b!5059391))

(assert (= (and b!5059053 (is-Leaf!25838 (left!42803 (right!43133 (left!42803 ys!41))))) b!5059390))

(declare-fun m!6096414 () Bool)

(assert (=> b!5059389 m!6096414))

(declare-fun m!6096416 () Bool)

(assert (=> b!5059389 m!6096416))

(declare-fun m!6096418 () Bool)

(assert (=> b!5059390 m!6096418))

(assert (=> b!5059053 m!6095812))

(declare-fun tp!1413805 () Bool)

(declare-fun b!5059392 () Bool)

(declare-fun tp!1413804 () Bool)

(declare-fun e!3158029 () Bool)

(assert (=> b!5059392 (= e!3158029 (and (inv!77509 (left!42803 (right!43133 (right!43133 (left!42803 ys!41))))) tp!1413805 (inv!77509 (right!43133 (right!43133 (right!43133 (left!42803 ys!41))))) tp!1413804))))

(declare-fun b!5059394 () Bool)

(declare-fun e!3158028 () Bool)

(declare-fun tp!1413806 () Bool)

(assert (=> b!5059394 (= e!3158028 tp!1413806)))

(declare-fun b!5059393 () Bool)

(assert (=> b!5059393 (= e!3158029 (and (inv!77510 (xs!18893 (right!43133 (right!43133 (left!42803 ys!41))))) e!3158028))))

(assert (=> b!5059053 (= tp!1413745 (and (inv!77509 (right!43133 (right!43133 (left!42803 ys!41)))) e!3158029))))

(assert (= (and b!5059053 (is-Node!15555 (right!43133 (right!43133 (left!42803 ys!41))))) b!5059392))

(assert (= b!5059393 b!5059394))

(assert (= (and b!5059053 (is-Leaf!25838 (right!43133 (right!43133 (left!42803 ys!41))))) b!5059393))

(declare-fun m!6096420 () Bool)

(assert (=> b!5059392 m!6096420))

(declare-fun m!6096422 () Bool)

(assert (=> b!5059392 m!6096422))

(declare-fun m!6096424 () Bool)

(assert (=> b!5059393 m!6096424))

(assert (=> b!5059053 m!6095814))

(declare-fun b!5059395 () Bool)

(declare-fun e!3158030 () Bool)

(declare-fun tp!1413807 () Bool)

(assert (=> b!5059395 (= e!3158030 (and tp_is_empty!37033 tp!1413807))))

(assert (=> b!5059049 (= tp!1413741 e!3158030)))

(assert (= (and b!5059049 (is-Cons!58425 (t!371242 (innerList!15643 (xs!18893 (right!43133 ys!41)))))) b!5059395))

(declare-fun e!3158032 () Bool)

(declare-fun tp!1413808 () Bool)

(declare-fun b!5059396 () Bool)

(declare-fun tp!1413809 () Bool)

(assert (=> b!5059396 (= e!3158032 (and (inv!77509 (left!42803 (left!42803 (left!42803 (left!42803 xs!286))))) tp!1413809 (inv!77509 (right!43133 (left!42803 (left!42803 (left!42803 xs!286))))) tp!1413808))))

(declare-fun b!5059398 () Bool)

(declare-fun e!3158031 () Bool)

(declare-fun tp!1413810 () Bool)

(assert (=> b!5059398 (= e!3158031 tp!1413810)))

(declare-fun b!5059397 () Bool)

(assert (=> b!5059397 (= e!3158032 (and (inv!77510 (xs!18893 (left!42803 (left!42803 (left!42803 xs!286))))) e!3158031))))

(assert (=> b!5059041 (= tp!1413734 (and (inv!77509 (left!42803 (left!42803 (left!42803 xs!286)))) e!3158032))))

(assert (= (and b!5059041 (is-Node!15555 (left!42803 (left!42803 (left!42803 xs!286))))) b!5059396))

(assert (= b!5059397 b!5059398))

(assert (= (and b!5059041 (is-Leaf!25838 (left!42803 (left!42803 (left!42803 xs!286))))) b!5059397))

(declare-fun m!6096426 () Bool)

(assert (=> b!5059396 m!6096426))

(declare-fun m!6096428 () Bool)

(assert (=> b!5059396 m!6096428))

(declare-fun m!6096430 () Bool)

(assert (=> b!5059397 m!6096430))

(assert (=> b!5059041 m!6095794))

(declare-fun e!3158034 () Bool)

(declare-fun b!5059399 () Bool)

(declare-fun tp!1413811 () Bool)

(declare-fun tp!1413812 () Bool)

(assert (=> b!5059399 (= e!3158034 (and (inv!77509 (left!42803 (right!43133 (left!42803 (left!42803 xs!286))))) tp!1413812 (inv!77509 (right!43133 (right!43133 (left!42803 (left!42803 xs!286))))) tp!1413811))))

(declare-fun b!5059401 () Bool)

(declare-fun e!3158033 () Bool)

(declare-fun tp!1413813 () Bool)

(assert (=> b!5059401 (= e!3158033 tp!1413813)))

(declare-fun b!5059400 () Bool)

(assert (=> b!5059400 (= e!3158034 (and (inv!77510 (xs!18893 (right!43133 (left!42803 (left!42803 xs!286))))) e!3158033))))

(assert (=> b!5059041 (= tp!1413733 (and (inv!77509 (right!43133 (left!42803 (left!42803 xs!286)))) e!3158034))))

(assert (= (and b!5059041 (is-Node!15555 (right!43133 (left!42803 (left!42803 xs!286))))) b!5059399))

(assert (= b!5059400 b!5059401))

(assert (= (and b!5059041 (is-Leaf!25838 (right!43133 (left!42803 (left!42803 xs!286))))) b!5059400))

(declare-fun m!6096432 () Bool)

(assert (=> b!5059399 m!6096432))

(declare-fun m!6096434 () Bool)

(assert (=> b!5059399 m!6096434))

(declare-fun m!6096436 () Bool)

(assert (=> b!5059400 m!6096436))

(assert (=> b!5059041 m!6095796))

(declare-fun b!5059402 () Bool)

(declare-fun e!3158035 () Bool)

(declare-fun tp!1413814 () Bool)

(assert (=> b!5059402 (= e!3158035 (and tp_is_empty!37033 tp!1413814))))

(assert (=> b!5059035 (= tp!1413727 e!3158035)))

(assert (= (and b!5059035 (is-Cons!58425 (innerList!15643 (xs!18893 (left!42803 (right!43133 ys!41)))))) b!5059402))

(declare-fun b!5059403 () Bool)

(declare-fun e!3158036 () Bool)

(declare-fun tp!1413815 () Bool)

(assert (=> b!5059403 (= e!3158036 (and tp_is_empty!37033 tp!1413815))))

(assert (=> b!5059055 (= tp!1413747 e!3158036)))

(assert (= (and b!5059055 (is-Cons!58425 (innerList!15643 (xs!18893 (right!43133 (left!42803 ys!41)))))) b!5059403))

(declare-fun b!5059404 () Bool)

(declare-fun e!3158037 () Bool)

(declare-fun tp!1413816 () Bool)

(assert (=> b!5059404 (= e!3158037 (and tp_is_empty!37033 tp!1413816))))

(assert (=> b!5059043 (= tp!1413735 e!3158037)))

(assert (= (and b!5059043 (is-Cons!58425 (innerList!15643 (xs!18893 (left!42803 (left!42803 xs!286)))))) b!5059404))

(declare-fun b!5059405 () Bool)

(declare-fun tp!1413818 () Bool)

(declare-fun e!3158039 () Bool)

(declare-fun tp!1413817 () Bool)

(assert (=> b!5059405 (= e!3158039 (and (inv!77509 (left!42803 (left!42803 (left!42803 (right!43133 xs!286))))) tp!1413818 (inv!77509 (right!43133 (left!42803 (left!42803 (right!43133 xs!286))))) tp!1413817))))

(declare-fun b!5059407 () Bool)

(declare-fun e!3158038 () Bool)

(declare-fun tp!1413819 () Bool)

(assert (=> b!5059407 (= e!3158038 tp!1413819)))

(declare-fun b!5059406 () Bool)

(assert (=> b!5059406 (= e!3158039 (and (inv!77510 (xs!18893 (left!42803 (left!42803 (right!43133 xs!286))))) e!3158038))))

(assert (=> b!5059027 (= tp!1413720 (and (inv!77509 (left!42803 (left!42803 (right!43133 xs!286)))) e!3158039))))

(assert (= (and b!5059027 (is-Node!15555 (left!42803 (left!42803 (right!43133 xs!286))))) b!5059405))

(assert (= b!5059406 b!5059407))

(assert (= (and b!5059027 (is-Leaf!25838 (left!42803 (left!42803 (right!43133 xs!286))))) b!5059406))

(declare-fun m!6096438 () Bool)

(assert (=> b!5059405 m!6096438))

(declare-fun m!6096440 () Bool)

(assert (=> b!5059405 m!6096440))

(declare-fun m!6096442 () Bool)

(assert (=> b!5059406 m!6096442))

(assert (=> b!5059027 m!6095770))

(declare-fun e!3158041 () Bool)

(declare-fun b!5059408 () Bool)

(declare-fun tp!1413821 () Bool)

(declare-fun tp!1413820 () Bool)

(assert (=> b!5059408 (= e!3158041 (and (inv!77509 (left!42803 (right!43133 (left!42803 (right!43133 xs!286))))) tp!1413821 (inv!77509 (right!43133 (right!43133 (left!42803 (right!43133 xs!286))))) tp!1413820))))

(declare-fun b!5059410 () Bool)

(declare-fun e!3158040 () Bool)

(declare-fun tp!1413822 () Bool)

(assert (=> b!5059410 (= e!3158040 tp!1413822)))

(declare-fun b!5059409 () Bool)

(assert (=> b!5059409 (= e!3158041 (and (inv!77510 (xs!18893 (right!43133 (left!42803 (right!43133 xs!286))))) e!3158040))))

(assert (=> b!5059027 (= tp!1413719 (and (inv!77509 (right!43133 (left!42803 (right!43133 xs!286)))) e!3158041))))

(assert (= (and b!5059027 (is-Node!15555 (right!43133 (left!42803 (right!43133 xs!286))))) b!5059408))

(assert (= b!5059409 b!5059410))

(assert (= (and b!5059027 (is-Leaf!25838 (right!43133 (left!42803 (right!43133 xs!286))))) b!5059409))

(declare-fun m!6096444 () Bool)

(assert (=> b!5059408 m!6096444))

(declare-fun m!6096446 () Bool)

(assert (=> b!5059408 m!6096446))

(declare-fun m!6096448 () Bool)

(assert (=> b!5059409 m!6096448))

(assert (=> b!5059027 m!6095772))

(declare-fun b!5059411 () Bool)

(declare-fun e!3158042 () Bool)

(declare-fun tp!1413823 () Bool)

(assert (=> b!5059411 (= e!3158042 (and tp_is_empty!37033 tp!1413823))))

(assert (=> b!5059039 (= tp!1413731 e!3158042)))

(assert (= (and b!5059039 (is-Cons!58425 (t!371242 (innerList!15643 (xs!18893 (left!42803 ys!41)))))) b!5059411))

(declare-fun tp!1413825 () Bool)

(declare-fun tp!1413824 () Bool)

(declare-fun e!3158044 () Bool)

(declare-fun b!5059412 () Bool)

(assert (=> b!5059412 (= e!3158044 (and (inv!77509 (left!42803 (left!42803 (right!43133 (right!43133 ys!41))))) tp!1413825 (inv!77509 (right!43133 (left!42803 (right!43133 (right!43133 ys!41))))) tp!1413824))))

(declare-fun b!5059414 () Bool)

(declare-fun e!3158043 () Bool)

(declare-fun tp!1413826 () Bool)

(assert (=> b!5059414 (= e!3158043 tp!1413826)))

(declare-fun b!5059413 () Bool)

(assert (=> b!5059413 (= e!3158044 (and (inv!77510 (xs!18893 (left!42803 (right!43133 (right!43133 ys!41))))) e!3158043))))

(assert (=> b!5059036 (= tp!1413729 (and (inv!77509 (left!42803 (right!43133 (right!43133 ys!41)))) e!3158044))))

(assert (= (and b!5059036 (is-Node!15555 (left!42803 (right!43133 (right!43133 ys!41))))) b!5059412))

(assert (= b!5059413 b!5059414))

(assert (= (and b!5059036 (is-Leaf!25838 (left!42803 (right!43133 (right!43133 ys!41))))) b!5059413))

(declare-fun m!6096450 () Bool)

(assert (=> b!5059412 m!6096450))

(declare-fun m!6096452 () Bool)

(assert (=> b!5059412 m!6096452))

(declare-fun m!6096454 () Bool)

(assert (=> b!5059413 m!6096454))

(assert (=> b!5059036 m!6095788))

(declare-fun tp!1413828 () Bool)

(declare-fun tp!1413827 () Bool)

(declare-fun e!3158046 () Bool)

(declare-fun b!5059415 () Bool)

(assert (=> b!5059415 (= e!3158046 (and (inv!77509 (left!42803 (right!43133 (right!43133 (right!43133 ys!41))))) tp!1413828 (inv!77509 (right!43133 (right!43133 (right!43133 (right!43133 ys!41))))) tp!1413827))))

(declare-fun b!5059417 () Bool)

(declare-fun e!3158045 () Bool)

(declare-fun tp!1413829 () Bool)

(assert (=> b!5059417 (= e!3158045 tp!1413829)))

(declare-fun b!5059416 () Bool)

(assert (=> b!5059416 (= e!3158046 (and (inv!77510 (xs!18893 (right!43133 (right!43133 (right!43133 ys!41))))) e!3158045))))

(assert (=> b!5059036 (= tp!1413728 (and (inv!77509 (right!43133 (right!43133 (right!43133 ys!41)))) e!3158046))))

(assert (= (and b!5059036 (is-Node!15555 (right!43133 (right!43133 (right!43133 ys!41))))) b!5059415))

(assert (= b!5059416 b!5059417))

(assert (= (and b!5059036 (is-Leaf!25838 (right!43133 (right!43133 (right!43133 ys!41))))) b!5059416))

(declare-fun m!6096456 () Bool)

(assert (=> b!5059415 m!6096456))

(declare-fun m!6096458 () Bool)

(assert (=> b!5059415 m!6096458))

(declare-fun m!6096460 () Bool)

(assert (=> b!5059416 m!6096460))

(assert (=> b!5059036 m!6095790))

(declare-fun b!5059418 () Bool)

(declare-fun e!3158047 () Bool)

(declare-fun tp!1413830 () Bool)

(assert (=> b!5059418 (= e!3158047 (and tp_is_empty!37033 tp!1413830))))

(assert (=> b!5059038 (= tp!1413730 e!3158047)))

(assert (= (and b!5059038 (is-Cons!58425 (innerList!15643 (xs!18893 (right!43133 (right!43133 ys!41)))))) b!5059418))

(declare-fun e!3158049 () Bool)

(declare-fun b!5059419 () Bool)

(declare-fun tp!1413831 () Bool)

(declare-fun tp!1413832 () Bool)

(assert (=> b!5059419 (= e!3158049 (and (inv!77509 (left!42803 (left!42803 (right!43133 (left!42803 xs!286))))) tp!1413832 (inv!77509 (right!43133 (left!42803 (right!43133 (left!42803 xs!286))))) tp!1413831))))

(declare-fun b!5059421 () Bool)

(declare-fun e!3158048 () Bool)

(declare-fun tp!1413833 () Bool)

(assert (=> b!5059421 (= e!3158048 tp!1413833)))

(declare-fun b!5059420 () Bool)

(assert (=> b!5059420 (= e!3158049 (and (inv!77510 (xs!18893 (left!42803 (right!43133 (left!42803 xs!286))))) e!3158048))))

(assert (=> b!5059044 (= tp!1413737 (and (inv!77509 (left!42803 (right!43133 (left!42803 xs!286)))) e!3158049))))

(assert (= (and b!5059044 (is-Node!15555 (left!42803 (right!43133 (left!42803 xs!286))))) b!5059419))

(assert (= b!5059420 b!5059421))

(assert (= (and b!5059044 (is-Leaf!25838 (left!42803 (right!43133 (left!42803 xs!286))))) b!5059420))

(declare-fun m!6096462 () Bool)

(assert (=> b!5059419 m!6096462))

(declare-fun m!6096464 () Bool)

(assert (=> b!5059419 m!6096464))

(declare-fun m!6096466 () Bool)

(assert (=> b!5059420 m!6096466))

(assert (=> b!5059044 m!6095800))

(declare-fun b!5059422 () Bool)

(declare-fun tp!1413835 () Bool)

(declare-fun tp!1413834 () Bool)

(declare-fun e!3158051 () Bool)

(assert (=> b!5059422 (= e!3158051 (and (inv!77509 (left!42803 (right!43133 (right!43133 (left!42803 xs!286))))) tp!1413835 (inv!77509 (right!43133 (right!43133 (right!43133 (left!42803 xs!286))))) tp!1413834))))

(declare-fun b!5059424 () Bool)

(declare-fun e!3158050 () Bool)

(declare-fun tp!1413836 () Bool)

(assert (=> b!5059424 (= e!3158050 tp!1413836)))

(declare-fun b!5059423 () Bool)

(assert (=> b!5059423 (= e!3158051 (and (inv!77510 (xs!18893 (right!43133 (right!43133 (left!42803 xs!286))))) e!3158050))))

(assert (=> b!5059044 (= tp!1413736 (and (inv!77509 (right!43133 (right!43133 (left!42803 xs!286)))) e!3158051))))

(assert (= (and b!5059044 (is-Node!15555 (right!43133 (right!43133 (left!42803 xs!286))))) b!5059422))

(assert (= b!5059423 b!5059424))

(assert (= (and b!5059044 (is-Leaf!25838 (right!43133 (right!43133 (left!42803 xs!286))))) b!5059423))

(declare-fun m!6096468 () Bool)

(assert (=> b!5059422 m!6096468))

(declare-fun m!6096470 () Bool)

(assert (=> b!5059422 m!6096470))

(declare-fun m!6096472 () Bool)

(assert (=> b!5059423 m!6096472))

(assert (=> b!5059044 m!6095802))

(declare-fun b!5059425 () Bool)

(declare-fun e!3158052 () Bool)

(declare-fun tp!1413837 () Bool)

(assert (=> b!5059425 (= e!3158052 (and tp_is_empty!37033 tp!1413837))))

(assert (=> b!5059040 (= tp!1413732 e!3158052)))

(assert (= (and b!5059040 (is-Cons!58425 (t!371242 (innerList!15643 (xs!18893 (left!42803 xs!286)))))) b!5059425))

(declare-fun b!5059426 () Bool)

(declare-fun e!3158053 () Bool)

(declare-fun tp!1413838 () Bool)

(assert (=> b!5059426 (= e!3158053 (and tp_is_empty!37033 tp!1413838))))

(assert (=> b!5059029 (= tp!1413721 e!3158053)))

(assert (= (and b!5059029 (is-Cons!58425 (innerList!15643 (xs!18893 (left!42803 (right!43133 xs!286)))))) b!5059426))

(declare-fun b!5059427 () Bool)

(declare-fun e!3158054 () Bool)

(declare-fun tp!1413839 () Bool)

(assert (=> b!5059427 (= e!3158054 (and tp_is_empty!37033 tp!1413839))))

(assert (=> b!5059047 (= tp!1413739 e!3158054)))

(assert (= (and b!5059047 (is-Cons!58425 (t!371242 (innerList!15643 (xs!18893 (right!43133 xs!286)))))) b!5059427))

(push 1)

(assert (not b!5059358))

(assert (not b!5059027))

(assert (not d!1629029))

(assert (not b!5059320))

(assert (not b!5059252))

(assert (not b!5059272))

(assert (not b!5059258))

(assert (not b!5059313))

(assert (not b!5059227))

(assert (not b!5059290))

(assert (not b!5059391))

(assert (not b!5059285))

(assert (not d!1629141))

(assert (not b!5059407))

(assert (not d!1629049))

(assert (not b!5059351))

(assert (not b!5059224))

(assert (not b!5059292))

(assert (not b!5059256))

(assert (not b!5059279))

(assert (not b!5059243))

(assert (not b!5059295))

(assert (not b!5059340))

(assert (not b!5059246))

(assert (not b!5059384))

(assert (not b!5059036))

(assert (not d!1629129))

(assert (not b!5059364))

(assert (not b!5059354))

(assert (not b!5059206))

(assert (not b!5059373))

(assert (not b!5059360))

(assert (not d!1628995))

(assert (not b!5059239))

(assert (not b!5059380))

(assert (not b!5059417))

(assert (not b!5059293))

(assert (not b!5059275))

(assert (not b!5059370))

(assert (not b!5059361))

(assert (not b!5059395))

(assert (not b!5059305))

(assert (not b!5059238))

(assert (not b!5059184))

(assert (not b!5059424))

(assert (not d!1629007))

(assert (not b!5059402))

(assert (not d!1629033))

(assert (not b!5059398))

(assert (not b!5059267))

(assert (not b!5059390))

(assert (not b!5059367))

(assert (not b!5059241))

(assert (not b!5059215))

(assert (not b!5059385))

(assert (not b!5059225))

(assert (not b!5059248))

(assert (not b!5059209))

(assert (not b!5059330))

(assert (not b!5059217))

(assert (not d!1629027))

(assert (not b!5059418))

(assert tp_is_empty!37033)

(assert (not b!5059244))

(assert (not b!5059329))

(assert (not b!5059216))

(assert (not b!5059379))

(assert (not b!5059287))

(assert (not b!5059323))

(assert (not b!5059309))

(assert (not b!5059310))

(assert (not b!5059393))

(assert (not d!1628929))

(assert (not b!5059392))

(assert (not b!5059377))

(assert (not b!5059421))

(assert (not b!5059315))

(assert (not b!5059372))

(assert (not b!5059240))

(assert (not b!5059261))

(assert (not d!1628969))

(assert (not b!5059033))

(assert (not b!5059376))

(assert (not b!5059399))

(assert (not d!1629111))

(assert (not b!5059388))

(assert (not d!1628991))

(assert (not b!5059326))

(assert (not d!1629107))

(assert (not b!5059182))

(assert (not b!5059423))

(assert (not b!5059308))

(assert (not b!5059274))

(assert (not d!1629079))

(assert (not b!5059349))

(assert (not b!5059237))

(assert (not d!1629105))

(assert (not b!5059353))

(assert (not d!1629083))

(assert (not b!5059378))

(assert (not b!5059307))

(assert (not d!1629113))

(assert (not d!1629137))

(assert (not b!5059357))

(assert (not b!5059408))

(assert (not b!5059404))

(assert (not b!5059400))

(assert (not b!5059356))

(assert (not b!5059422))

(assert (not b!5059250))

(assert (not d!1629093))

(assert (not b!5059362))

(assert (not d!1629119))

(assert (not b!5059414))

(assert (not b!5059259))

(assert (not b!5059277))

(assert (not b!5059368))

(assert (not b!5059255))

(assert (not d!1629075))

(assert (not b!5059299))

(assert (not b!5059226))

(assert (not b!5059187))

(assert (not b!5059233))

(assert (not b!5059266))

(assert (not b!5059371))

(assert (not b!5059359))

(assert (not b!5059280))

(assert (not b!5059411))

(assert (not d!1628931))

(assert (not d!1629081))

(assert (not b!5059253))

(assert (not b!5059276))

(assert (not b!5059198))

(assert (not d!1629073))

(assert (not b!5059030))

(assert (not b!5059298))

(assert (not b!5059410))

(assert (not d!1628927))

(assert (not b!5059223))

(assert (not b!5059333))

(assert (not d!1629095))

(assert (not b!5059044))

(assert (not b!5059249))

(assert (not d!1628953))

(assert (not b!5059316))

(assert (not d!1629085))

(assert (not b!5059327))

(assert (not b!5059427))

(assert (not b!5059265))

(assert (not b!5059386))

(assert (not b!5059204))

(assert (not b!5059212))

(assert (not b!5059245))

(assert (not b!5059413))

(assert (not b!5059278))

(assert (not b!5059288))

(assert (not b!5059314))

(assert (not b!5059416))

(assert (not b!5059425))

(assert (not b!5059270))

(assert (not d!1628987))

(assert (not b!5059382))

(assert (not b!5059369))

(assert (not d!1629053))

(assert (not b!5059381))

(assert (not d!1628955))

(assert (not d!1628945))

(assert (not d!1629001))

(assert (not b!5059420))

(assert (not b!5059406))

(assert (not d!1628951))

(assert (not b!5059201))

(assert (not d!1629031))

(assert (not b!5059199))

(assert (not b!5059303))

(assert (not d!1629123))

(assert (not b!5059426))

(assert (not b!5059419))

(assert (not b!5059366))

(assert (not b!5059387))

(assert (not b!5059213))

(assert (not b!5059053))

(assert (not b!5059405))

(assert (not b!5059324))

(assert (not d!1629039))

(assert (not d!1628999))

(assert (not b!5059242))

(assert (not b!5059374))

(assert (not b!5059317))

(assert (not b!5059396))

(assert (not b!5059221))

(assert (not b!5059231))

(assert (not b!5059336))

(assert (not b!5059207))

(assert (not d!1629091))

(assert (not b!5059269))

(assert (not b!5059401))

(assert (not b!5059247))

(assert (not b!5059050))

(assert (not b!5059220))

(assert (not b!5059219))

(assert (not b!5059311))

(assert (not d!1628997))

(assert (not b!5059375))

(assert (not b!5059296))

(assert (not b!5059389))

(assert (not b!5059409))

(assert (not b!5059347))

(assert (not b!5059383))

(assert (not b!5059345))

(assert (not b!5059397))

(assert (not d!1629077))

(assert (not d!1629063))

(assert (not b!5059339))

(assert (not b!5059218))

(assert (not b!5059301))

(assert (not b!5059415))

(assert (not b!5059403))

(assert (not b!5059203))

(assert (not d!1629061))

(assert (not b!5059394))

(assert (not b!5059312))

(assert (not b!5059412))

(assert (not b!5059185))

(assert (not b!5059282))

(assert (not d!1629025))

(assert (not b!5059041))

(assert (not b!5059229))

(assert (not b!5059318))

(assert (not b!5059342))

(assert (not b!5059222))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

