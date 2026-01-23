; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!534734 () Bool)

(assert start!534734)

(declare-fun b!5056849 () Bool)

(declare-fun e!3156687 () Bool)

(declare-fun tp!1413409 () Bool)

(assert (=> b!5056849 (= e!3156687 tp!1413409)))

(declare-fun b!5056850 () Bool)

(declare-fun res!2153307 () Bool)

(declare-fun e!3156689 () Bool)

(assert (=> b!5056850 (=> (not res!2153307) (not e!3156689))))

(declare-datatypes ((T!105048 0))(
  ( (T!105049 (val!23638 Int)) )
))
(declare-datatypes ((List!58548 0))(
  ( (Nil!58424) (Cons!58424 (h!64872 T!105048) (t!371231 List!58548)) )
))
(declare-datatypes ((IArray!31169 0))(
  ( (IArray!31170 (innerList!15642 List!58548)) )
))
(declare-datatypes ((Conc!15554 0))(
  ( (Node!15554 (left!42801 Conc!15554) (right!43131 Conc!15554) (csize!31338 Int) (cheight!15765 Int)) (Leaf!25836 (xs!18888 IArray!31169) (csize!31339 Int)) (Empty!15554) )
))
(declare-fun xs!286 () Conc!15554)

(declare-fun ys!41 () Conc!15554)

(assert (=> b!5056850 (= res!2153307 (and (not (= xs!286 Empty!15554)) (not (= ys!41 Empty!15554))))))

(declare-fun res!2153308 () Bool)

(assert (=> start!534734 (=> (not res!2153308) (not e!3156689))))

(declare-fun isBalanced!4416 (Conc!15554) Bool)

(assert (=> start!534734 (= res!2153308 (isBalanced!4416 xs!286))))

(assert (=> start!534734 e!3156689))

(declare-fun e!3156691 () Bool)

(declare-fun inv!77500 (Conc!15554) Bool)

(assert (=> start!534734 (and (inv!77500 xs!286) e!3156691)))

(declare-fun e!3156686 () Bool)

(assert (=> start!534734 (and (inv!77500 ys!41) e!3156686)))

(declare-fun b!5056851 () Bool)

(declare-fun inv!77501 (IArray!31169) Bool)

(assert (=> b!5056851 (= e!3156691 (and (inv!77501 (xs!18888 xs!286)) e!3156687))))

(declare-fun tp!1413407 () Bool)

(declare-fun tp!1413404 () Bool)

(declare-fun b!5056852 () Bool)

(assert (=> b!5056852 (= e!3156691 (and (inv!77500 (left!42801 xs!286)) tp!1413407 (inv!77500 (right!43131 xs!286)) tp!1413404))))

(declare-fun b!5056853 () Bool)

(declare-fun e!3156688 () Bool)

(assert (=> b!5056853 (= e!3156689 e!3156688)))

(declare-fun res!2153313 () Bool)

(assert (=> b!5056853 (=> (not res!2153313) (not e!3156688))))

(declare-fun lt!2087513 () Int)

(assert (=> b!5056853 (= res!2153313 (and (<= (- 1) lt!2087513) (<= lt!2087513 1)))))

(declare-fun lt!2087511 () Int)

(declare-fun lt!2087514 () Int)

(assert (=> b!5056853 (= lt!2087513 (- lt!2087511 lt!2087514))))

(declare-fun height!2131 (Conc!15554) Int)

(assert (=> b!5056853 (= lt!2087514 (height!2131 xs!286))))

(assert (=> b!5056853 (= lt!2087511 (height!2131 ys!41))))

(declare-fun tp!1413408 () Bool)

(declare-fun tp!1413405 () Bool)

(declare-fun b!5056854 () Bool)

(assert (=> b!5056854 (= e!3156686 (and (inv!77500 (left!42801 ys!41)) tp!1413408 (inv!77500 (right!43131 ys!41)) tp!1413405))))

(declare-fun b!5056855 () Bool)

(declare-fun e!3156690 () Bool)

(declare-fun e!3156692 () Bool)

(assert (=> b!5056855 (= e!3156690 e!3156692)))

(declare-fun res!2153309 () Bool)

(assert (=> b!5056855 (=> res!2153309 e!3156692)))

(declare-fun lt!2087512 () Int)

(declare-fun lt!2087510 () Int)

(assert (=> b!5056855 (= res!2153309 (or (> lt!2087512 (+ 1 lt!2087510)) (< lt!2087512 lt!2087510)))))

(declare-fun lt!2087515 () Conc!15554)

(assert (=> b!5056855 (= lt!2087512 (height!2131 lt!2087515))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5056855 (= lt!2087510 (max!0 lt!2087514 lt!2087511))))

(declare-fun b!5056856 () Bool)

(assert (=> b!5056856 (= e!3156688 e!3156690)))

(declare-fun res!2153311 () Bool)

(assert (=> b!5056856 (=> res!2153311 e!3156690)))

(declare-fun appendAssocInst!904 (Conc!15554 Conc!15554) Bool)

(assert (=> b!5056856 (= res!2153311 (not (appendAssocInst!904 xs!286 ys!41)))))

(declare-fun <>!390 (Conc!15554 Conc!15554) Conc!15554)

(assert (=> b!5056856 (= lt!2087515 (<>!390 xs!286 ys!41))))

(declare-fun b!5056857 () Bool)

(declare-fun res!2153310 () Bool)

(assert (=> b!5056857 (=> (not res!2153310) (not e!3156689))))

(assert (=> b!5056857 (= res!2153310 (isBalanced!4416 ys!41))))

(declare-fun b!5056858 () Bool)

(declare-fun list!18969 (Conc!15554) List!58548)

(declare-fun ++!12773 (List!58548 List!58548) List!58548)

(assert (=> b!5056858 (= e!3156692 (not (= (list!18969 lt!2087515) (++!12773 (list!18969 xs!286) (list!18969 ys!41)))))))

(declare-fun b!5056859 () Bool)

(declare-fun res!2153312 () Bool)

(assert (=> b!5056859 (=> res!2153312 e!3156690)))

(assert (=> b!5056859 (= res!2153312 (not (isBalanced!4416 lt!2087515)))))

(declare-fun b!5056860 () Bool)

(declare-fun e!3156685 () Bool)

(declare-fun tp!1413406 () Bool)

(assert (=> b!5056860 (= e!3156685 tp!1413406)))

(declare-fun b!5056861 () Bool)

(assert (=> b!5056861 (= e!3156686 (and (inv!77501 (xs!18888 ys!41)) e!3156685))))

(assert (= (and start!534734 res!2153308) b!5056857))

(assert (= (and b!5056857 res!2153310) b!5056850))

(assert (= (and b!5056850 res!2153307) b!5056853))

(assert (= (and b!5056853 res!2153313) b!5056856))

(assert (= (and b!5056856 (not res!2153311)) b!5056859))

(assert (= (and b!5056859 (not res!2153312)) b!5056855))

(assert (= (and b!5056855 (not res!2153309)) b!5056858))

(get-info :version)

(assert (= (and start!534734 ((_ is Node!15554) xs!286)) b!5056852))

(assert (= b!5056851 b!5056849))

(assert (= (and start!534734 ((_ is Leaf!25836) xs!286)) b!5056851))

(assert (= (and start!534734 ((_ is Node!15554) ys!41)) b!5056854))

(assert (= b!5056861 b!5056860))

(assert (= (and start!534734 ((_ is Leaf!25836) ys!41)) b!5056861))

(declare-fun m!6092016 () Bool)

(assert (=> b!5056858 m!6092016))

(declare-fun m!6092018 () Bool)

(assert (=> b!5056858 m!6092018))

(declare-fun m!6092020 () Bool)

(assert (=> b!5056858 m!6092020))

(assert (=> b!5056858 m!6092018))

(assert (=> b!5056858 m!6092020))

(declare-fun m!6092022 () Bool)

(assert (=> b!5056858 m!6092022))

(declare-fun m!6092024 () Bool)

(assert (=> b!5056856 m!6092024))

(declare-fun m!6092026 () Bool)

(assert (=> b!5056856 m!6092026))

(declare-fun m!6092028 () Bool)

(assert (=> b!5056855 m!6092028))

(declare-fun m!6092030 () Bool)

(assert (=> b!5056855 m!6092030))

(declare-fun m!6092032 () Bool)

(assert (=> b!5056853 m!6092032))

(declare-fun m!6092034 () Bool)

(assert (=> b!5056853 m!6092034))

(declare-fun m!6092036 () Bool)

(assert (=> b!5056854 m!6092036))

(declare-fun m!6092038 () Bool)

(assert (=> b!5056854 m!6092038))

(declare-fun m!6092040 () Bool)

(assert (=> b!5056859 m!6092040))

(declare-fun m!6092042 () Bool)

(assert (=> start!534734 m!6092042))

(declare-fun m!6092044 () Bool)

(assert (=> start!534734 m!6092044))

(declare-fun m!6092046 () Bool)

(assert (=> start!534734 m!6092046))

(declare-fun m!6092048 () Bool)

(assert (=> b!5056857 m!6092048))

(declare-fun m!6092050 () Bool)

(assert (=> b!5056852 m!6092050))

(declare-fun m!6092052 () Bool)

(assert (=> b!5056852 m!6092052))

(declare-fun m!6092054 () Bool)

(assert (=> b!5056851 m!6092054))

(declare-fun m!6092056 () Bool)

(assert (=> b!5056861 m!6092056))

(check-sat (not b!5056852) (not b!5056858) (not b!5056854) (not b!5056859) (not b!5056861) (not b!5056853) (not start!534734) (not b!5056860) (not b!5056851) (not b!5056857) (not b!5056855) (not b!5056856) (not b!5056849))
(check-sat)
(get-model)

(declare-fun d!1627448 () Bool)

(assert (=> d!1627448 (= (height!2131 xs!286) (ite ((_ is Empty!15554) xs!286) 0 (ite ((_ is Leaf!25836) xs!286) 1 (cheight!15765 xs!286))))))

(assert (=> b!5056853 d!1627448))

(declare-fun d!1627450 () Bool)

(assert (=> d!1627450 (= (height!2131 ys!41) (ite ((_ is Empty!15554) ys!41) 0 (ite ((_ is Leaf!25836) ys!41) 1 (cheight!15765 ys!41))))))

(assert (=> b!5056853 d!1627450))

(declare-fun b!5056886 () Bool)

(declare-fun res!2153335 () Bool)

(declare-fun e!3156706 () Bool)

(assert (=> b!5056886 (=> (not res!2153335) (not e!3156706))))

(assert (=> b!5056886 (= res!2153335 (<= (- (height!2131 (left!42801 xs!286)) (height!2131 (right!43131 xs!286))) 1))))

(declare-fun b!5056887 () Bool)

(declare-fun e!3156705 () Bool)

(assert (=> b!5056887 (= e!3156705 e!3156706)))

(declare-fun res!2153331 () Bool)

(assert (=> b!5056887 (=> (not res!2153331) (not e!3156706))))

(assert (=> b!5056887 (= res!2153331 (<= (- 1) (- (height!2131 (left!42801 xs!286)) (height!2131 (right!43131 xs!286)))))))

(declare-fun b!5056888 () Bool)

(declare-fun res!2153333 () Bool)

(assert (=> b!5056888 (=> (not res!2153333) (not e!3156706))))

(declare-fun isEmpty!31610 (Conc!15554) Bool)

(assert (=> b!5056888 (= res!2153333 (not (isEmpty!31610 (left!42801 xs!286))))))

(declare-fun b!5056889 () Bool)

(assert (=> b!5056889 (= e!3156706 (not (isEmpty!31610 (right!43131 xs!286))))))

(declare-fun b!5056890 () Bool)

(declare-fun res!2153330 () Bool)

(assert (=> b!5056890 (=> (not res!2153330) (not e!3156706))))

(assert (=> b!5056890 (= res!2153330 (isBalanced!4416 (right!43131 xs!286)))))

(declare-fun d!1627452 () Bool)

(declare-fun res!2153334 () Bool)

(assert (=> d!1627452 (=> res!2153334 e!3156705)))

(assert (=> d!1627452 (= res!2153334 (not ((_ is Node!15554) xs!286)))))

(assert (=> d!1627452 (= (isBalanced!4416 xs!286) e!3156705)))

(declare-fun b!5056891 () Bool)

(declare-fun res!2153332 () Bool)

(assert (=> b!5056891 (=> (not res!2153332) (not e!3156706))))

(assert (=> b!5056891 (= res!2153332 (isBalanced!4416 (left!42801 xs!286)))))

(assert (= (and d!1627452 (not res!2153334)) b!5056887))

(assert (= (and b!5056887 res!2153331) b!5056886))

(assert (= (and b!5056886 res!2153335) b!5056891))

(assert (= (and b!5056891 res!2153332) b!5056890))

(assert (= (and b!5056890 res!2153330) b!5056888))

(assert (= (and b!5056888 res!2153333) b!5056889))

(declare-fun m!6092066 () Bool)

(assert (=> b!5056890 m!6092066))

(declare-fun m!6092068 () Bool)

(assert (=> b!5056891 m!6092068))

(declare-fun m!6092070 () Bool)

(assert (=> b!5056889 m!6092070))

(declare-fun m!6092072 () Bool)

(assert (=> b!5056887 m!6092072))

(declare-fun m!6092074 () Bool)

(assert (=> b!5056887 m!6092074))

(declare-fun m!6092076 () Bool)

(assert (=> b!5056888 m!6092076))

(assert (=> b!5056886 m!6092072))

(assert (=> b!5056886 m!6092074))

(assert (=> start!534734 d!1627452))

(declare-fun d!1627462 () Bool)

(declare-fun c!867570 () Bool)

(assert (=> d!1627462 (= c!867570 ((_ is Node!15554) xs!286))))

(declare-fun e!3156723 () Bool)

(assert (=> d!1627462 (= (inv!77500 xs!286) e!3156723)))

(declare-fun b!5056910 () Bool)

(declare-fun inv!77504 (Conc!15554) Bool)

(assert (=> b!5056910 (= e!3156723 (inv!77504 xs!286))))

(declare-fun b!5056911 () Bool)

(declare-fun e!3156724 () Bool)

(assert (=> b!5056911 (= e!3156723 e!3156724)))

(declare-fun res!2153350 () Bool)

(assert (=> b!5056911 (= res!2153350 (not ((_ is Leaf!25836) xs!286)))))

(assert (=> b!5056911 (=> res!2153350 e!3156724)))

(declare-fun b!5056912 () Bool)

(declare-fun inv!77505 (Conc!15554) Bool)

(assert (=> b!5056912 (= e!3156724 (inv!77505 xs!286))))

(assert (= (and d!1627462 c!867570) b!5056910))

(assert (= (and d!1627462 (not c!867570)) b!5056911))

(assert (= (and b!5056911 (not res!2153350)) b!5056912))

(declare-fun m!6092078 () Bool)

(assert (=> b!5056910 m!6092078))

(declare-fun m!6092080 () Bool)

(assert (=> b!5056912 m!6092080))

(assert (=> start!534734 d!1627462))

(declare-fun d!1627464 () Bool)

(declare-fun c!867571 () Bool)

(assert (=> d!1627464 (= c!867571 ((_ is Node!15554) ys!41))))

(declare-fun e!3156731 () Bool)

(assert (=> d!1627464 (= (inv!77500 ys!41) e!3156731)))

(declare-fun b!5056919 () Bool)

(assert (=> b!5056919 (= e!3156731 (inv!77504 ys!41))))

(declare-fun b!5056920 () Bool)

(declare-fun e!3156732 () Bool)

(assert (=> b!5056920 (= e!3156731 e!3156732)))

(declare-fun res!2153357 () Bool)

(assert (=> b!5056920 (= res!2153357 (not ((_ is Leaf!25836) ys!41)))))

(assert (=> b!5056920 (=> res!2153357 e!3156732)))

(declare-fun b!5056921 () Bool)

(assert (=> b!5056921 (= e!3156732 (inv!77505 ys!41))))

(assert (= (and d!1627464 c!867571) b!5056919))

(assert (= (and d!1627464 (not c!867571)) b!5056920))

(assert (= (and b!5056920 (not res!2153357)) b!5056921))

(declare-fun m!6092082 () Bool)

(assert (=> b!5056919 m!6092082))

(declare-fun m!6092084 () Bool)

(assert (=> b!5056921 m!6092084))

(assert (=> start!534734 d!1627464))

(declare-fun b!5056932 () Bool)

(declare-fun e!3156738 () List!58548)

(declare-fun list!18970 (IArray!31169) List!58548)

(assert (=> b!5056932 (= e!3156738 (list!18970 (xs!18888 lt!2087515)))))

(declare-fun b!5056931 () Bool)

(declare-fun e!3156737 () List!58548)

(assert (=> b!5056931 (= e!3156737 e!3156738)))

(declare-fun c!867577 () Bool)

(assert (=> b!5056931 (= c!867577 ((_ is Leaf!25836) lt!2087515))))

(declare-fun d!1627466 () Bool)

(declare-fun c!867576 () Bool)

(assert (=> d!1627466 (= c!867576 ((_ is Empty!15554) lt!2087515))))

(assert (=> d!1627466 (= (list!18969 lt!2087515) e!3156737)))

(declare-fun b!5056930 () Bool)

(assert (=> b!5056930 (= e!3156737 Nil!58424)))

(declare-fun b!5056933 () Bool)

(assert (=> b!5056933 (= e!3156738 (++!12773 (list!18969 (left!42801 lt!2087515)) (list!18969 (right!43131 lt!2087515))))))

(assert (= (and d!1627466 c!867576) b!5056930))

(assert (= (and d!1627466 (not c!867576)) b!5056931))

(assert (= (and b!5056931 c!867577) b!5056932))

(assert (= (and b!5056931 (not c!867577)) b!5056933))

(declare-fun m!6092086 () Bool)

(assert (=> b!5056932 m!6092086))

(declare-fun m!6092088 () Bool)

(assert (=> b!5056933 m!6092088))

(declare-fun m!6092090 () Bool)

(assert (=> b!5056933 m!6092090))

(assert (=> b!5056933 m!6092088))

(assert (=> b!5056933 m!6092090))

(declare-fun m!6092092 () Bool)

(assert (=> b!5056933 m!6092092))

(assert (=> b!5056858 d!1627466))

(declare-fun b!5056954 () Bool)

(declare-fun lt!2087518 () List!58548)

(declare-fun e!3156752 () Bool)

(assert (=> b!5056954 (= e!3156752 (or (not (= (list!18969 ys!41) Nil!58424)) (= lt!2087518 (list!18969 xs!286))))))

(declare-fun b!5056951 () Bool)

(declare-fun e!3156753 () List!58548)

(assert (=> b!5056951 (= e!3156753 (list!18969 ys!41))))

(declare-fun b!5056952 () Bool)

(assert (=> b!5056952 (= e!3156753 (Cons!58424 (h!64872 (list!18969 xs!286)) (++!12773 (t!371231 (list!18969 xs!286)) (list!18969 ys!41))))))

(declare-fun b!5056953 () Bool)

(declare-fun res!2153371 () Bool)

(assert (=> b!5056953 (=> (not res!2153371) (not e!3156752))))

(declare-fun size!39055 (List!58548) Int)

(assert (=> b!5056953 (= res!2153371 (= (size!39055 lt!2087518) (+ (size!39055 (list!18969 xs!286)) (size!39055 (list!18969 ys!41)))))))

(declare-fun d!1627468 () Bool)

(assert (=> d!1627468 e!3156752))

(declare-fun res!2153372 () Bool)

(assert (=> d!1627468 (=> (not res!2153372) (not e!3156752))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10411 (List!58548) (InoxSet T!105048))

(assert (=> d!1627468 (= res!2153372 (= (content!10411 lt!2087518) ((_ map or) (content!10411 (list!18969 xs!286)) (content!10411 (list!18969 ys!41)))))))

(assert (=> d!1627468 (= lt!2087518 e!3156753)))

(declare-fun c!867580 () Bool)

(assert (=> d!1627468 (= c!867580 ((_ is Nil!58424) (list!18969 xs!286)))))

(assert (=> d!1627468 (= (++!12773 (list!18969 xs!286) (list!18969 ys!41)) lt!2087518)))

(assert (= (and d!1627468 c!867580) b!5056951))

(assert (= (and d!1627468 (not c!867580)) b!5056952))

(assert (= (and d!1627468 res!2153372) b!5056953))

(assert (= (and b!5056953 res!2153371) b!5056954))

(assert (=> b!5056952 m!6092020))

(declare-fun m!6092126 () Bool)

(assert (=> b!5056952 m!6092126))

(declare-fun m!6092128 () Bool)

(assert (=> b!5056953 m!6092128))

(assert (=> b!5056953 m!6092018))

(declare-fun m!6092130 () Bool)

(assert (=> b!5056953 m!6092130))

(assert (=> b!5056953 m!6092020))

(declare-fun m!6092132 () Bool)

(assert (=> b!5056953 m!6092132))

(declare-fun m!6092134 () Bool)

(assert (=> d!1627468 m!6092134))

(assert (=> d!1627468 m!6092018))

(declare-fun m!6092136 () Bool)

(assert (=> d!1627468 m!6092136))

(assert (=> d!1627468 m!6092020))

(declare-fun m!6092138 () Bool)

(assert (=> d!1627468 m!6092138))

(assert (=> b!5056858 d!1627468))

(declare-fun b!5056957 () Bool)

(declare-fun e!3156755 () List!58548)

(assert (=> b!5056957 (= e!3156755 (list!18970 (xs!18888 xs!286)))))

(declare-fun b!5056956 () Bool)

(declare-fun e!3156754 () List!58548)

(assert (=> b!5056956 (= e!3156754 e!3156755)))

(declare-fun c!867582 () Bool)

(assert (=> b!5056956 (= c!867582 ((_ is Leaf!25836) xs!286))))

(declare-fun d!1627472 () Bool)

(declare-fun c!867581 () Bool)

(assert (=> d!1627472 (= c!867581 ((_ is Empty!15554) xs!286))))

(assert (=> d!1627472 (= (list!18969 xs!286) e!3156754)))

(declare-fun b!5056955 () Bool)

(assert (=> b!5056955 (= e!3156754 Nil!58424)))

(declare-fun b!5056958 () Bool)

(assert (=> b!5056958 (= e!3156755 (++!12773 (list!18969 (left!42801 xs!286)) (list!18969 (right!43131 xs!286))))))

(assert (= (and d!1627472 c!867581) b!5056955))

(assert (= (and d!1627472 (not c!867581)) b!5056956))

(assert (= (and b!5056956 c!867582) b!5056957))

(assert (= (and b!5056956 (not c!867582)) b!5056958))

(declare-fun m!6092140 () Bool)

(assert (=> b!5056957 m!6092140))

(declare-fun m!6092142 () Bool)

(assert (=> b!5056958 m!6092142))

(declare-fun m!6092144 () Bool)

(assert (=> b!5056958 m!6092144))

(assert (=> b!5056958 m!6092142))

(assert (=> b!5056958 m!6092144))

(declare-fun m!6092146 () Bool)

(assert (=> b!5056958 m!6092146))

(assert (=> b!5056858 d!1627472))

(declare-fun b!5056961 () Bool)

(declare-fun e!3156757 () List!58548)

(assert (=> b!5056961 (= e!3156757 (list!18970 (xs!18888 ys!41)))))

(declare-fun b!5056960 () Bool)

(declare-fun e!3156756 () List!58548)

(assert (=> b!5056960 (= e!3156756 e!3156757)))

(declare-fun c!867584 () Bool)

(assert (=> b!5056960 (= c!867584 ((_ is Leaf!25836) ys!41))))

(declare-fun d!1627474 () Bool)

(declare-fun c!867583 () Bool)

(assert (=> d!1627474 (= c!867583 ((_ is Empty!15554) ys!41))))

(assert (=> d!1627474 (= (list!18969 ys!41) e!3156756)))

(declare-fun b!5056959 () Bool)

(assert (=> b!5056959 (= e!3156756 Nil!58424)))

(declare-fun b!5056962 () Bool)

(assert (=> b!5056962 (= e!3156757 (++!12773 (list!18969 (left!42801 ys!41)) (list!18969 (right!43131 ys!41))))))

(assert (= (and d!1627474 c!867583) b!5056959))

(assert (= (and d!1627474 (not c!867583)) b!5056960))

(assert (= (and b!5056960 c!867584) b!5056961))

(assert (= (and b!5056960 (not c!867584)) b!5056962))

(declare-fun m!6092148 () Bool)

(assert (=> b!5056961 m!6092148))

(declare-fun m!6092150 () Bool)

(assert (=> b!5056962 m!6092150))

(declare-fun m!6092152 () Bool)

(assert (=> b!5056962 m!6092152))

(assert (=> b!5056962 m!6092150))

(assert (=> b!5056962 m!6092152))

(declare-fun m!6092154 () Bool)

(assert (=> b!5056962 m!6092154))

(assert (=> b!5056858 d!1627474))

(declare-fun b!5056963 () Bool)

(declare-fun res!2153378 () Bool)

(declare-fun e!3156759 () Bool)

(assert (=> b!5056963 (=> (not res!2153378) (not e!3156759))))

(assert (=> b!5056963 (= res!2153378 (<= (- (height!2131 (left!42801 lt!2087515)) (height!2131 (right!43131 lt!2087515))) 1))))

(declare-fun b!5056964 () Bool)

(declare-fun e!3156758 () Bool)

(assert (=> b!5056964 (= e!3156758 e!3156759)))

(declare-fun res!2153374 () Bool)

(assert (=> b!5056964 (=> (not res!2153374) (not e!3156759))))

(assert (=> b!5056964 (= res!2153374 (<= (- 1) (- (height!2131 (left!42801 lt!2087515)) (height!2131 (right!43131 lt!2087515)))))))

(declare-fun b!5056965 () Bool)

(declare-fun res!2153376 () Bool)

(assert (=> b!5056965 (=> (not res!2153376) (not e!3156759))))

(assert (=> b!5056965 (= res!2153376 (not (isEmpty!31610 (left!42801 lt!2087515))))))

(declare-fun b!5056966 () Bool)

(assert (=> b!5056966 (= e!3156759 (not (isEmpty!31610 (right!43131 lt!2087515))))))

(declare-fun b!5056967 () Bool)

(declare-fun res!2153373 () Bool)

(assert (=> b!5056967 (=> (not res!2153373) (not e!3156759))))

(assert (=> b!5056967 (= res!2153373 (isBalanced!4416 (right!43131 lt!2087515)))))

(declare-fun d!1627476 () Bool)

(declare-fun res!2153377 () Bool)

(assert (=> d!1627476 (=> res!2153377 e!3156758)))

(assert (=> d!1627476 (= res!2153377 (not ((_ is Node!15554) lt!2087515)))))

(assert (=> d!1627476 (= (isBalanced!4416 lt!2087515) e!3156758)))

(declare-fun b!5056968 () Bool)

(declare-fun res!2153375 () Bool)

(assert (=> b!5056968 (=> (not res!2153375) (not e!3156759))))

(assert (=> b!5056968 (= res!2153375 (isBalanced!4416 (left!42801 lt!2087515)))))

(assert (= (and d!1627476 (not res!2153377)) b!5056964))

(assert (= (and b!5056964 res!2153374) b!5056963))

(assert (= (and b!5056963 res!2153378) b!5056968))

(assert (= (and b!5056968 res!2153375) b!5056967))

(assert (= (and b!5056967 res!2153373) b!5056965))

(assert (= (and b!5056965 res!2153376) b!5056966))

(declare-fun m!6092156 () Bool)

(assert (=> b!5056967 m!6092156))

(declare-fun m!6092158 () Bool)

(assert (=> b!5056968 m!6092158))

(declare-fun m!6092160 () Bool)

(assert (=> b!5056966 m!6092160))

(declare-fun m!6092162 () Bool)

(assert (=> b!5056964 m!6092162))

(declare-fun m!6092164 () Bool)

(assert (=> b!5056964 m!6092164))

(declare-fun m!6092166 () Bool)

(assert (=> b!5056965 m!6092166))

(assert (=> b!5056963 m!6092162))

(assert (=> b!5056963 m!6092164))

(assert (=> b!5056859 d!1627476))

(declare-fun b!5056977 () Bool)

(declare-fun res!2153384 () Bool)

(declare-fun e!3156765 () Bool)

(assert (=> b!5056977 (=> (not res!2153384) (not e!3156765))))

(assert (=> b!5056977 (= res!2153384 (<= (- (height!2131 (left!42801 ys!41)) (height!2131 (right!43131 ys!41))) 1))))

(declare-fun b!5056978 () Bool)

(declare-fun e!3156764 () Bool)

(assert (=> b!5056978 (= e!3156764 e!3156765)))

(declare-fun res!2153380 () Bool)

(assert (=> b!5056978 (=> (not res!2153380) (not e!3156765))))

(assert (=> b!5056978 (= res!2153380 (<= (- 1) (- (height!2131 (left!42801 ys!41)) (height!2131 (right!43131 ys!41)))))))

(declare-fun b!5056979 () Bool)

(declare-fun res!2153382 () Bool)

(assert (=> b!5056979 (=> (not res!2153382) (not e!3156765))))

(assert (=> b!5056979 (= res!2153382 (not (isEmpty!31610 (left!42801 ys!41))))))

(declare-fun b!5056980 () Bool)

(assert (=> b!5056980 (= e!3156765 (not (isEmpty!31610 (right!43131 ys!41))))))

(declare-fun b!5056981 () Bool)

(declare-fun res!2153379 () Bool)

(assert (=> b!5056981 (=> (not res!2153379) (not e!3156765))))

(assert (=> b!5056981 (= res!2153379 (isBalanced!4416 (right!43131 ys!41)))))

(declare-fun d!1627478 () Bool)

(declare-fun res!2153383 () Bool)

(assert (=> d!1627478 (=> res!2153383 e!3156764)))

(assert (=> d!1627478 (= res!2153383 (not ((_ is Node!15554) ys!41)))))

(assert (=> d!1627478 (= (isBalanced!4416 ys!41) e!3156764)))

(declare-fun b!5056982 () Bool)

(declare-fun res!2153381 () Bool)

(assert (=> b!5056982 (=> (not res!2153381) (not e!3156765))))

(assert (=> b!5056982 (= res!2153381 (isBalanced!4416 (left!42801 ys!41)))))

(assert (= (and d!1627478 (not res!2153383)) b!5056978))

(assert (= (and b!5056978 res!2153380) b!5056977))

(assert (= (and b!5056977 res!2153384) b!5056982))

(assert (= (and b!5056982 res!2153381) b!5056981))

(assert (= (and b!5056981 res!2153379) b!5056979))

(assert (= (and b!5056979 res!2153382) b!5056980))

(declare-fun m!6092168 () Bool)

(assert (=> b!5056981 m!6092168))

(declare-fun m!6092170 () Bool)

(assert (=> b!5056982 m!6092170))

(declare-fun m!6092172 () Bool)

(assert (=> b!5056980 m!6092172))

(declare-fun m!6092174 () Bool)

(assert (=> b!5056978 m!6092174))

(declare-fun m!6092176 () Bool)

(assert (=> b!5056978 m!6092176))

(declare-fun m!6092178 () Bool)

(assert (=> b!5056979 m!6092178))

(assert (=> b!5056977 m!6092174))

(assert (=> b!5056977 m!6092176))

(assert (=> b!5056857 d!1627478))

(declare-fun d!1627480 () Bool)

(declare-fun c!867589 () Bool)

(assert (=> d!1627480 (= c!867589 ((_ is Node!15554) (left!42801 xs!286)))))

(declare-fun e!3156766 () Bool)

(assert (=> d!1627480 (= (inv!77500 (left!42801 xs!286)) e!3156766)))

(declare-fun b!5056983 () Bool)

(assert (=> b!5056983 (= e!3156766 (inv!77504 (left!42801 xs!286)))))

(declare-fun b!5056984 () Bool)

(declare-fun e!3156767 () Bool)

(assert (=> b!5056984 (= e!3156766 e!3156767)))

(declare-fun res!2153385 () Bool)

(assert (=> b!5056984 (= res!2153385 (not ((_ is Leaf!25836) (left!42801 xs!286))))))

(assert (=> b!5056984 (=> res!2153385 e!3156767)))

(declare-fun b!5056985 () Bool)

(assert (=> b!5056985 (= e!3156767 (inv!77505 (left!42801 xs!286)))))

(assert (= (and d!1627480 c!867589) b!5056983))

(assert (= (and d!1627480 (not c!867589)) b!5056984))

(assert (= (and b!5056984 (not res!2153385)) b!5056985))

(declare-fun m!6092180 () Bool)

(assert (=> b!5056983 m!6092180))

(declare-fun m!6092182 () Bool)

(assert (=> b!5056985 m!6092182))

(assert (=> b!5056852 d!1627480))

(declare-fun d!1627482 () Bool)

(declare-fun c!867590 () Bool)

(assert (=> d!1627482 (= c!867590 ((_ is Node!15554) (right!43131 xs!286)))))

(declare-fun e!3156768 () Bool)

(assert (=> d!1627482 (= (inv!77500 (right!43131 xs!286)) e!3156768)))

(declare-fun b!5056986 () Bool)

(assert (=> b!5056986 (= e!3156768 (inv!77504 (right!43131 xs!286)))))

(declare-fun b!5056987 () Bool)

(declare-fun e!3156769 () Bool)

(assert (=> b!5056987 (= e!3156768 e!3156769)))

(declare-fun res!2153386 () Bool)

(assert (=> b!5056987 (= res!2153386 (not ((_ is Leaf!25836) (right!43131 xs!286))))))

(assert (=> b!5056987 (=> res!2153386 e!3156769)))

(declare-fun b!5056988 () Bool)

(assert (=> b!5056988 (= e!3156769 (inv!77505 (right!43131 xs!286)))))

(assert (= (and d!1627482 c!867590) b!5056986))

(assert (= (and d!1627482 (not c!867590)) b!5056987))

(assert (= (and b!5056987 (not res!2153386)) b!5056988))

(declare-fun m!6092184 () Bool)

(assert (=> b!5056986 m!6092184))

(declare-fun m!6092186 () Bool)

(assert (=> b!5056988 m!6092186))

(assert (=> b!5056852 d!1627482))

(declare-fun d!1627484 () Bool)

(assert (=> d!1627484 (= (inv!77501 (xs!18888 ys!41)) (<= (size!39055 (innerList!15642 (xs!18888 ys!41))) 2147483647))))

(declare-fun bs!1189410 () Bool)

(assert (= bs!1189410 d!1627484))

(declare-fun m!6092188 () Bool)

(assert (=> bs!1189410 m!6092188))

(assert (=> b!5056861 d!1627484))

(declare-fun d!1627486 () Bool)

(assert (=> d!1627486 (= (inv!77501 (xs!18888 xs!286)) (<= (size!39055 (innerList!15642 (xs!18888 xs!286))) 2147483647))))

(declare-fun bs!1189411 () Bool)

(assert (= bs!1189411 d!1627486))

(declare-fun m!6092190 () Bool)

(assert (=> bs!1189411 m!6092190))

(assert (=> b!5056851 d!1627486))

(declare-fun b!5057061 () Bool)

(declare-fun e!3156813 () Bool)

(declare-fun e!3156812 () Bool)

(assert (=> b!5057061 (= e!3156813 e!3156812)))

(declare-fun res!2153442 () Bool)

(assert (=> b!5057061 (=> (not res!2153442) (not e!3156812))))

(declare-fun appendAssoc!296 (List!58548 List!58548 List!58548) Bool)

(assert (=> b!5057061 (= res!2153442 (appendAssoc!296 (list!18969 xs!286) (list!18969 (left!42801 (left!42801 ys!41))) (list!18969 (right!43131 (left!42801 ys!41)))))))

(declare-fun b!5057062 () Bool)

(declare-fun e!3156818 () Bool)

(declare-fun e!3156816 () Bool)

(assert (=> b!5057062 (= e!3156818 e!3156816)))

(declare-fun res!2153445 () Bool)

(assert (=> b!5057062 (=> (not res!2153445) (not e!3156816))))

(assert (=> b!5057062 (= res!2153445 (appendAssoc!296 (list!18969 (left!42801 xs!286)) (list!18969 (right!43131 xs!286)) (list!18969 ys!41)))))

(declare-fun b!5057063 () Bool)

(declare-fun e!3156819 () Bool)

(assert (=> b!5057063 (= e!3156819 e!3156813)))

(declare-fun res!2153441 () Bool)

(assert (=> b!5057063 (=> res!2153441 e!3156813)))

(assert (=> b!5057063 (= res!2153441 (not ((_ is Node!15554) (left!42801 ys!41))))))

(declare-fun b!5057064 () Bool)

(declare-fun e!3156820 () Bool)

(declare-fun e!3156814 () Bool)

(assert (=> b!5057064 (= e!3156820 e!3156814)))

(declare-fun res!2153446 () Bool)

(assert (=> b!5057064 (=> (not res!2153446) (not e!3156814))))

(assert (=> b!5057064 (= res!2153446 (appendAssoc!296 (list!18969 (left!42801 (right!43131 xs!286))) (list!18969 (right!43131 (right!43131 xs!286))) (list!18969 ys!41)))))

(declare-fun b!5057065 () Bool)

(declare-fun e!3156815 () Bool)

(declare-fun e!3156817 () Bool)

(assert (=> b!5057065 (= e!3156815 e!3156817)))

(declare-fun res!2153447 () Bool)

(assert (=> b!5057065 (=> res!2153447 e!3156817)))

(assert (=> b!5057065 (= res!2153447 (not ((_ is Node!15554) ys!41)))))

(declare-fun b!5057066 () Bool)

(assert (=> b!5057066 (= e!3156816 e!3156820)))

(declare-fun res!2153439 () Bool)

(assert (=> b!5057066 (=> res!2153439 e!3156820)))

(assert (=> b!5057066 (= res!2153439 (not ((_ is Node!15554) (right!43131 xs!286))))))

(declare-fun b!5057067 () Bool)

(assert (=> b!5057067 (= e!3156812 (appendAssoc!296 (++!12773 (list!18969 xs!286) (list!18969 (left!42801 (left!42801 ys!41)))) (list!18969 (right!43131 (left!42801 ys!41))) (list!18969 (right!43131 ys!41))))))

(declare-fun d!1627488 () Bool)

(assert (=> d!1627488 e!3156815))

(declare-fun res!2153443 () Bool)

(assert (=> d!1627488 (=> (not res!2153443) (not e!3156815))))

(assert (=> d!1627488 (= res!2153443 e!3156818)))

(declare-fun res!2153444 () Bool)

(assert (=> d!1627488 (=> res!2153444 e!3156818)))

(assert (=> d!1627488 (= res!2153444 (not ((_ is Node!15554) xs!286)))))

(assert (=> d!1627488 (= (appendAssocInst!904 xs!286 ys!41) true)))

(declare-fun b!5057068 () Bool)

(assert (=> b!5057068 (= e!3156814 (appendAssoc!296 (list!18969 (left!42801 xs!286)) (list!18969 (left!42801 (right!43131 xs!286))) (++!12773 (list!18969 (right!43131 (right!43131 xs!286))) (list!18969 ys!41))))))

(declare-fun b!5057069 () Bool)

(assert (=> b!5057069 (= e!3156817 e!3156819)))

(declare-fun res!2153440 () Bool)

(assert (=> b!5057069 (=> (not res!2153440) (not e!3156819))))

(assert (=> b!5057069 (= res!2153440 (appendAssoc!296 (list!18969 xs!286) (list!18969 (left!42801 ys!41)) (list!18969 (right!43131 ys!41))))))

(assert (= (and d!1627488 (not res!2153444)) b!5057062))

(assert (= (and b!5057062 res!2153445) b!5057066))

(assert (= (and b!5057066 (not res!2153439)) b!5057064))

(assert (= (and b!5057064 res!2153446) b!5057068))

(assert (= (and d!1627488 res!2153443) b!5057065))

(assert (= (and b!5057065 (not res!2153447)) b!5057069))

(assert (= (and b!5057069 res!2153440) b!5057063))

(assert (= (and b!5057063 (not res!2153441)) b!5057061))

(assert (= (and b!5057061 res!2153442) b!5057067))

(declare-fun m!6092264 () Bool)

(assert (=> b!5057067 m!6092264))

(assert (=> b!5057067 m!6092018))

(declare-fun m!6092266 () Bool)

(assert (=> b!5057067 m!6092266))

(assert (=> b!5057067 m!6092018))

(assert (=> b!5057067 m!6092264))

(declare-fun m!6092268 () Bool)

(assert (=> b!5057067 m!6092268))

(assert (=> b!5057067 m!6092152))

(assert (=> b!5057067 m!6092268))

(assert (=> b!5057067 m!6092266))

(assert (=> b!5057067 m!6092152))

(declare-fun m!6092270 () Bool)

(assert (=> b!5057067 m!6092270))

(assert (=> b!5057062 m!6092142))

(assert (=> b!5057062 m!6092144))

(assert (=> b!5057062 m!6092020))

(assert (=> b!5057062 m!6092142))

(assert (=> b!5057062 m!6092144))

(assert (=> b!5057062 m!6092020))

(declare-fun m!6092272 () Bool)

(assert (=> b!5057062 m!6092272))

(assert (=> b!5057061 m!6092018))

(assert (=> b!5057061 m!6092264))

(assert (=> b!5057061 m!6092266))

(assert (=> b!5057061 m!6092018))

(assert (=> b!5057061 m!6092264))

(assert (=> b!5057061 m!6092266))

(declare-fun m!6092274 () Bool)

(assert (=> b!5057061 m!6092274))

(declare-fun m!6092276 () Bool)

(assert (=> b!5057068 m!6092276))

(assert (=> b!5057068 m!6092020))

(declare-fun m!6092278 () Bool)

(assert (=> b!5057068 m!6092278))

(declare-fun m!6092280 () Bool)

(assert (=> b!5057068 m!6092280))

(assert (=> b!5057068 m!6092276))

(assert (=> b!5057068 m!6092142))

(assert (=> b!5057068 m!6092142))

(assert (=> b!5057068 m!6092280))

(assert (=> b!5057068 m!6092278))

(declare-fun m!6092282 () Bool)

(assert (=> b!5057068 m!6092282))

(assert (=> b!5057068 m!6092020))

(assert (=> b!5057064 m!6092280))

(assert (=> b!5057064 m!6092276))

(assert (=> b!5057064 m!6092020))

(assert (=> b!5057064 m!6092280))

(assert (=> b!5057064 m!6092276))

(assert (=> b!5057064 m!6092020))

(declare-fun m!6092284 () Bool)

(assert (=> b!5057064 m!6092284))

(assert (=> b!5057069 m!6092018))

(assert (=> b!5057069 m!6092150))

(assert (=> b!5057069 m!6092152))

(assert (=> b!5057069 m!6092018))

(assert (=> b!5057069 m!6092150))

(assert (=> b!5057069 m!6092152))

(declare-fun m!6092286 () Bool)

(assert (=> b!5057069 m!6092286))

(assert (=> b!5056856 d!1627488))

(declare-fun b!5057121 () Bool)

(declare-fun e!3156848 () Conc!15554)

(assert (=> b!5057121 (= e!3156848 xs!286)))

(declare-fun b!5057120 () Bool)

(declare-fun e!3156847 () Conc!15554)

(assert (=> b!5057120 (= e!3156847 e!3156848)))

(declare-fun c!867614 () Bool)

(assert (=> b!5057120 (= c!867614 (= ys!41 Empty!15554))))

(declare-fun b!5057122 () Bool)

(declare-fun size!39057 (Conc!15554) Int)

(assert (=> b!5057122 (= e!3156848 (Node!15554 xs!286 ys!41 (+ (size!39057 xs!286) (size!39057 ys!41)) (+ (max!0 (height!2131 xs!286) (height!2131 ys!41)) 1)))))

(declare-fun b!5057119 () Bool)

(assert (=> b!5057119 (= e!3156847 ys!41)))

(declare-fun d!1627516 () Bool)

(declare-fun lt!2087527 () Conc!15554)

(assert (=> d!1627516 (= (list!18969 lt!2087527) (++!12773 (list!18969 xs!286) (list!18969 ys!41)))))

(assert (=> d!1627516 (= lt!2087527 e!3156847)))

(declare-fun c!867615 () Bool)

(assert (=> d!1627516 (= c!867615 (= xs!286 Empty!15554))))

(assert (=> d!1627516 (= (<>!390 xs!286 ys!41) lt!2087527)))

(assert (= (and d!1627516 c!867615) b!5057119))

(assert (= (and d!1627516 (not c!867615)) b!5057120))

(assert (= (and b!5057120 c!867614) b!5057121))

(assert (= (and b!5057120 (not c!867614)) b!5057122))

(assert (=> b!5057122 m!6092034))

(declare-fun m!6092334 () Bool)

(assert (=> b!5057122 m!6092334))

(assert (=> b!5057122 m!6092032))

(assert (=> b!5057122 m!6092034))

(declare-fun m!6092336 () Bool)

(assert (=> b!5057122 m!6092336))

(assert (=> b!5057122 m!6092032))

(declare-fun m!6092338 () Bool)

(assert (=> b!5057122 m!6092338))

(declare-fun m!6092340 () Bool)

(assert (=> d!1627516 m!6092340))

(assert (=> d!1627516 m!6092018))

(assert (=> d!1627516 m!6092020))

(assert (=> d!1627516 m!6092018))

(assert (=> d!1627516 m!6092020))

(assert (=> d!1627516 m!6092022))

(assert (=> b!5056856 d!1627516))

(declare-fun d!1627522 () Bool)

(declare-fun c!867616 () Bool)

(assert (=> d!1627522 (= c!867616 ((_ is Node!15554) (left!42801 ys!41)))))

(declare-fun e!3156853 () Bool)

(assert (=> d!1627522 (= (inv!77500 (left!42801 ys!41)) e!3156853)))

(declare-fun b!5057130 () Bool)

(assert (=> b!5057130 (= e!3156853 (inv!77504 (left!42801 ys!41)))))

(declare-fun b!5057131 () Bool)

(declare-fun e!3156854 () Bool)

(assert (=> b!5057131 (= e!3156853 e!3156854)))

(declare-fun res!2153454 () Bool)

(assert (=> b!5057131 (= res!2153454 (not ((_ is Leaf!25836) (left!42801 ys!41))))))

(assert (=> b!5057131 (=> res!2153454 e!3156854)))

(declare-fun b!5057132 () Bool)

(assert (=> b!5057132 (= e!3156854 (inv!77505 (left!42801 ys!41)))))

(assert (= (and d!1627522 c!867616) b!5057130))

(assert (= (and d!1627522 (not c!867616)) b!5057131))

(assert (= (and b!5057131 (not res!2153454)) b!5057132))

(declare-fun m!6092342 () Bool)

(assert (=> b!5057130 m!6092342))

(declare-fun m!6092344 () Bool)

(assert (=> b!5057132 m!6092344))

(assert (=> b!5056854 d!1627522))

(declare-fun d!1627524 () Bool)

(declare-fun c!867617 () Bool)

(assert (=> d!1627524 (= c!867617 ((_ is Node!15554) (right!43131 ys!41)))))

(declare-fun e!3156857 () Bool)

(assert (=> d!1627524 (= (inv!77500 (right!43131 ys!41)) e!3156857)))

(declare-fun b!5057135 () Bool)

(assert (=> b!5057135 (= e!3156857 (inv!77504 (right!43131 ys!41)))))

(declare-fun b!5057136 () Bool)

(declare-fun e!3156858 () Bool)

(assert (=> b!5057136 (= e!3156857 e!3156858)))

(declare-fun res!2153455 () Bool)

(assert (=> b!5057136 (= res!2153455 (not ((_ is Leaf!25836) (right!43131 ys!41))))))

(assert (=> b!5057136 (=> res!2153455 e!3156858)))

(declare-fun b!5057137 () Bool)

(assert (=> b!5057137 (= e!3156858 (inv!77505 (right!43131 ys!41)))))

(assert (= (and d!1627524 c!867617) b!5057135))

(assert (= (and d!1627524 (not c!867617)) b!5057136))

(assert (= (and b!5057136 (not res!2153455)) b!5057137))

(declare-fun m!6092346 () Bool)

(assert (=> b!5057135 m!6092346))

(declare-fun m!6092348 () Bool)

(assert (=> b!5057137 m!6092348))

(assert (=> b!5056854 d!1627524))

(declare-fun d!1627526 () Bool)

(assert (=> d!1627526 (= (height!2131 lt!2087515) (ite ((_ is Empty!15554) lt!2087515) 0 (ite ((_ is Leaf!25836) lt!2087515) 1 (cheight!15765 lt!2087515))))))

(assert (=> b!5056855 d!1627526))

(declare-fun d!1627528 () Bool)

(assert (=> d!1627528 (= (max!0 lt!2087514 lt!2087511) (ite (< lt!2087514 lt!2087511) lt!2087511 lt!2087514))))

(assert (=> b!5056855 d!1627528))

(declare-fun tp!1413438 () Bool)

(declare-fun e!3156863 () Bool)

(declare-fun tp!1413440 () Bool)

(declare-fun b!5057146 () Bool)

(assert (=> b!5057146 (= e!3156863 (and (inv!77500 (left!42801 (left!42801 xs!286))) tp!1413438 (inv!77500 (right!43131 (left!42801 xs!286))) tp!1413440))))

(declare-fun b!5057148 () Bool)

(declare-fun e!3156864 () Bool)

(declare-fun tp!1413439 () Bool)

(assert (=> b!5057148 (= e!3156864 tp!1413439)))

(declare-fun b!5057147 () Bool)

(assert (=> b!5057147 (= e!3156863 (and (inv!77501 (xs!18888 (left!42801 xs!286))) e!3156864))))

(assert (=> b!5056852 (= tp!1413407 (and (inv!77500 (left!42801 xs!286)) e!3156863))))

(assert (= (and b!5056852 ((_ is Node!15554) (left!42801 xs!286))) b!5057146))

(assert (= b!5057147 b!5057148))

(assert (= (and b!5056852 ((_ is Leaf!25836) (left!42801 xs!286))) b!5057147))

(declare-fun m!6092350 () Bool)

(assert (=> b!5057146 m!6092350))

(declare-fun m!6092352 () Bool)

(assert (=> b!5057146 m!6092352))

(declare-fun m!6092354 () Bool)

(assert (=> b!5057147 m!6092354))

(assert (=> b!5056852 m!6092050))

(declare-fun e!3156865 () Bool)

(declare-fun tp!1413441 () Bool)

(declare-fun tp!1413443 () Bool)

(declare-fun b!5057149 () Bool)

(assert (=> b!5057149 (= e!3156865 (and (inv!77500 (left!42801 (right!43131 xs!286))) tp!1413441 (inv!77500 (right!43131 (right!43131 xs!286))) tp!1413443))))

(declare-fun b!5057151 () Bool)

(declare-fun e!3156866 () Bool)

(declare-fun tp!1413442 () Bool)

(assert (=> b!5057151 (= e!3156866 tp!1413442)))

(declare-fun b!5057150 () Bool)

(assert (=> b!5057150 (= e!3156865 (and (inv!77501 (xs!18888 (right!43131 xs!286))) e!3156866))))

(assert (=> b!5056852 (= tp!1413404 (and (inv!77500 (right!43131 xs!286)) e!3156865))))

(assert (= (and b!5056852 ((_ is Node!15554) (right!43131 xs!286))) b!5057149))

(assert (= b!5057150 b!5057151))

(assert (= (and b!5056852 ((_ is Leaf!25836) (right!43131 xs!286))) b!5057150))

(declare-fun m!6092356 () Bool)

(assert (=> b!5057149 m!6092356))

(declare-fun m!6092358 () Bool)

(assert (=> b!5057149 m!6092358))

(declare-fun m!6092360 () Bool)

(assert (=> b!5057150 m!6092360))

(assert (=> b!5056852 m!6092052))

(declare-fun b!5057156 () Bool)

(declare-fun e!3156869 () Bool)

(declare-fun tp_is_empty!37031 () Bool)

(declare-fun tp!1413446 () Bool)

(assert (=> b!5057156 (= e!3156869 (and tp_is_empty!37031 tp!1413446))))

(assert (=> b!5056849 (= tp!1413409 e!3156869)))

(assert (= (and b!5056849 ((_ is Cons!58424) (innerList!15642 (xs!18888 xs!286)))) b!5057156))

(declare-fun e!3156870 () Bool)

(declare-fun b!5057157 () Bool)

(declare-fun tp!1413449 () Bool)

(declare-fun tp!1413447 () Bool)

(assert (=> b!5057157 (= e!3156870 (and (inv!77500 (left!42801 (left!42801 ys!41))) tp!1413447 (inv!77500 (right!43131 (left!42801 ys!41))) tp!1413449))))

(declare-fun b!5057159 () Bool)

(declare-fun e!3156871 () Bool)

(declare-fun tp!1413448 () Bool)

(assert (=> b!5057159 (= e!3156871 tp!1413448)))

(declare-fun b!5057158 () Bool)

(assert (=> b!5057158 (= e!3156870 (and (inv!77501 (xs!18888 (left!42801 ys!41))) e!3156871))))

(assert (=> b!5056854 (= tp!1413408 (and (inv!77500 (left!42801 ys!41)) e!3156870))))

(assert (= (and b!5056854 ((_ is Node!15554) (left!42801 ys!41))) b!5057157))

(assert (= b!5057158 b!5057159))

(assert (= (and b!5056854 ((_ is Leaf!25836) (left!42801 ys!41))) b!5057158))

(declare-fun m!6092362 () Bool)

(assert (=> b!5057157 m!6092362))

(declare-fun m!6092364 () Bool)

(assert (=> b!5057157 m!6092364))

(declare-fun m!6092366 () Bool)

(assert (=> b!5057158 m!6092366))

(assert (=> b!5056854 m!6092036))

(declare-fun e!3156872 () Bool)

(declare-fun tp!1413452 () Bool)

(declare-fun tp!1413450 () Bool)

(declare-fun b!5057160 () Bool)

(assert (=> b!5057160 (= e!3156872 (and (inv!77500 (left!42801 (right!43131 ys!41))) tp!1413450 (inv!77500 (right!43131 (right!43131 ys!41))) tp!1413452))))

(declare-fun b!5057162 () Bool)

(declare-fun e!3156873 () Bool)

(declare-fun tp!1413451 () Bool)

(assert (=> b!5057162 (= e!3156873 tp!1413451)))

(declare-fun b!5057161 () Bool)

(assert (=> b!5057161 (= e!3156872 (and (inv!77501 (xs!18888 (right!43131 ys!41))) e!3156873))))

(assert (=> b!5056854 (= tp!1413405 (and (inv!77500 (right!43131 ys!41)) e!3156872))))

(assert (= (and b!5056854 ((_ is Node!15554) (right!43131 ys!41))) b!5057160))

(assert (= b!5057161 b!5057162))

(assert (= (and b!5056854 ((_ is Leaf!25836) (right!43131 ys!41))) b!5057161))

(declare-fun m!6092368 () Bool)

(assert (=> b!5057160 m!6092368))

(declare-fun m!6092370 () Bool)

(assert (=> b!5057160 m!6092370))

(declare-fun m!6092372 () Bool)

(assert (=> b!5057161 m!6092372))

(assert (=> b!5056854 m!6092038))

(declare-fun b!5057163 () Bool)

(declare-fun e!3156874 () Bool)

(declare-fun tp!1413453 () Bool)

(assert (=> b!5057163 (= e!3156874 (and tp_is_empty!37031 tp!1413453))))

(assert (=> b!5056860 (= tp!1413406 e!3156874)))

(assert (= (and b!5056860 ((_ is Cons!58424) (innerList!15642 (xs!18888 ys!41)))) b!5057163))

(check-sat (not b!5056968) (not b!5056964) (not b!5056967) (not b!5057064) (not b!5057062) (not b!5056981) (not b!5057147) (not b!5056932) (not b!5056910) (not b!5057067) (not b!5056852) (not b!5057146) (not b!5057069) (not b!5056919) (not b!5056979) (not b!5056986) (not b!5057061) (not b!5057150) (not b!5057157) (not b!5056977) (not b!5056961) (not b!5056978) (not b!5056962) (not b!5056966) (not b!5056854) (not b!5056889) (not b!5056886) (not b!5057148) (not b!5057122) (not b!5056957) (not b!5056985) (not b!5057156) (not d!1627516) (not b!5057137) (not b!5057135) (not b!5057132) (not b!5056891) (not b!5056887) (not b!5056980) (not b!5057158) (not b!5057163) (not b!5057161) (not d!1627486) (not b!5056890) (not b!5056921) (not b!5056952) (not b!5057130) (not b!5056988) (not b!5057160) (not b!5056965) (not b!5056958) (not b!5056953) (not b!5056983) (not b!5056912) (not b!5057159) (not b!5056982) (not b!5057162) (not b!5057151) (not b!5057068) (not d!1627484) (not b!5056888) (not d!1627468) (not b!5056933) tp_is_empty!37031 (not b!5057149) (not b!5056963))
(check-sat)
(get-model)

(declare-fun d!1627530 () Bool)

(declare-fun res!2153460 () Bool)

(declare-fun e!3156877 () Bool)

(assert (=> d!1627530 (=> (not res!2153460) (not e!3156877))))

(assert (=> d!1627530 (= res!2153460 (<= (size!39055 (list!18970 (xs!18888 (left!42801 ys!41)))) 512))))

(assert (=> d!1627530 (= (inv!77505 (left!42801 ys!41)) e!3156877)))

(declare-fun b!5057168 () Bool)

(declare-fun res!2153461 () Bool)

(assert (=> b!5057168 (=> (not res!2153461) (not e!3156877))))

(assert (=> b!5057168 (= res!2153461 (= (csize!31339 (left!42801 ys!41)) (size!39055 (list!18970 (xs!18888 (left!42801 ys!41))))))))

(declare-fun b!5057169 () Bool)

(assert (=> b!5057169 (= e!3156877 (and (> (csize!31339 (left!42801 ys!41)) 0) (<= (csize!31339 (left!42801 ys!41)) 512)))))

(assert (= (and d!1627530 res!2153460) b!5057168))

(assert (= (and b!5057168 res!2153461) b!5057169))

(declare-fun m!6092374 () Bool)

(assert (=> d!1627530 m!6092374))

(assert (=> d!1627530 m!6092374))

(declare-fun m!6092376 () Bool)

(assert (=> d!1627530 m!6092376))

(assert (=> b!5057168 m!6092374))

(assert (=> b!5057168 m!6092374))

(assert (=> b!5057168 m!6092376))

(assert (=> b!5057132 d!1627530))

(declare-fun d!1627532 () Bool)

(assert (=> d!1627532 (= (inv!77501 (xs!18888 (left!42801 ys!41))) (<= (size!39055 (innerList!15642 (xs!18888 (left!42801 ys!41)))) 2147483647))))

(declare-fun bs!1189414 () Bool)

(assert (= bs!1189414 d!1627532))

(declare-fun m!6092378 () Bool)

(assert (=> bs!1189414 m!6092378))

(assert (=> b!5057158 d!1627532))

(assert (=> b!5056852 d!1627480))

(assert (=> b!5056852 d!1627482))

(declare-fun d!1627534 () Bool)

(declare-fun c!867618 () Bool)

(assert (=> d!1627534 (= c!867618 ((_ is Node!15554) (left!42801 (left!42801 xs!286))))))

(declare-fun e!3156878 () Bool)

(assert (=> d!1627534 (= (inv!77500 (left!42801 (left!42801 xs!286))) e!3156878)))

(declare-fun b!5057170 () Bool)

(assert (=> b!5057170 (= e!3156878 (inv!77504 (left!42801 (left!42801 xs!286))))))

(declare-fun b!5057171 () Bool)

(declare-fun e!3156879 () Bool)

(assert (=> b!5057171 (= e!3156878 e!3156879)))

(declare-fun res!2153462 () Bool)

(assert (=> b!5057171 (= res!2153462 (not ((_ is Leaf!25836) (left!42801 (left!42801 xs!286)))))))

(assert (=> b!5057171 (=> res!2153462 e!3156879)))

(declare-fun b!5057172 () Bool)

(assert (=> b!5057172 (= e!3156879 (inv!77505 (left!42801 (left!42801 xs!286))))))

(assert (= (and d!1627534 c!867618) b!5057170))

(assert (= (and d!1627534 (not c!867618)) b!5057171))

(assert (= (and b!5057171 (not res!2153462)) b!5057172))

(declare-fun m!6092380 () Bool)

(assert (=> b!5057170 m!6092380))

(declare-fun m!6092382 () Bool)

(assert (=> b!5057172 m!6092382))

(assert (=> b!5057146 d!1627534))

(declare-fun d!1627536 () Bool)

(declare-fun c!867619 () Bool)

(assert (=> d!1627536 (= c!867619 ((_ is Node!15554) (right!43131 (left!42801 xs!286))))))

(declare-fun e!3156880 () Bool)

(assert (=> d!1627536 (= (inv!77500 (right!43131 (left!42801 xs!286))) e!3156880)))

(declare-fun b!5057173 () Bool)

(assert (=> b!5057173 (= e!3156880 (inv!77504 (right!43131 (left!42801 xs!286))))))

(declare-fun b!5057174 () Bool)

(declare-fun e!3156881 () Bool)

(assert (=> b!5057174 (= e!3156880 e!3156881)))

(declare-fun res!2153463 () Bool)

(assert (=> b!5057174 (= res!2153463 (not ((_ is Leaf!25836) (right!43131 (left!42801 xs!286)))))))

(assert (=> b!5057174 (=> res!2153463 e!3156881)))

(declare-fun b!5057175 () Bool)

(assert (=> b!5057175 (= e!3156881 (inv!77505 (right!43131 (left!42801 xs!286))))))

(assert (= (and d!1627536 c!867619) b!5057173))

(assert (= (and d!1627536 (not c!867619)) b!5057174))

(assert (= (and b!5057174 (not res!2153463)) b!5057175))

(declare-fun m!6092384 () Bool)

(assert (=> b!5057173 m!6092384))

(declare-fun m!6092386 () Bool)

(assert (=> b!5057175 m!6092386))

(assert (=> b!5057146 d!1627536))

(declare-fun d!1627538 () Bool)

(declare-fun c!867622 () Bool)

(assert (=> d!1627538 (= c!867622 ((_ is Nil!58424) lt!2087518))))

(declare-fun e!3156884 () (InoxSet T!105048))

(assert (=> d!1627538 (= (content!10411 lt!2087518) e!3156884)))

(declare-fun b!5057180 () Bool)

(assert (=> b!5057180 (= e!3156884 ((as const (Array T!105048 Bool)) false))))

(declare-fun b!5057181 () Bool)

(assert (=> b!5057181 (= e!3156884 ((_ map or) (store ((as const (Array T!105048 Bool)) false) (h!64872 lt!2087518) true) (content!10411 (t!371231 lt!2087518))))))

(assert (= (and d!1627538 c!867622) b!5057180))

(assert (= (and d!1627538 (not c!867622)) b!5057181))

(declare-fun m!6092388 () Bool)

(assert (=> b!5057181 m!6092388))

(declare-fun m!6092390 () Bool)

(assert (=> b!5057181 m!6092390))

(assert (=> d!1627468 d!1627538))

(declare-fun d!1627540 () Bool)

(declare-fun c!867623 () Bool)

(assert (=> d!1627540 (= c!867623 ((_ is Nil!58424) (list!18969 xs!286)))))

(declare-fun e!3156885 () (InoxSet T!105048))

(assert (=> d!1627540 (= (content!10411 (list!18969 xs!286)) e!3156885)))

(declare-fun b!5057182 () Bool)

(assert (=> b!5057182 (= e!3156885 ((as const (Array T!105048 Bool)) false))))

(declare-fun b!5057183 () Bool)

(assert (=> b!5057183 (= e!3156885 ((_ map or) (store ((as const (Array T!105048 Bool)) false) (h!64872 (list!18969 xs!286)) true) (content!10411 (t!371231 (list!18969 xs!286)))))))

(assert (= (and d!1627540 c!867623) b!5057182))

(assert (= (and d!1627540 (not c!867623)) b!5057183))

(declare-fun m!6092392 () Bool)

(assert (=> b!5057183 m!6092392))

(declare-fun m!6092394 () Bool)

(assert (=> b!5057183 m!6092394))

(assert (=> d!1627468 d!1627540))

(declare-fun d!1627542 () Bool)

(declare-fun c!867624 () Bool)

(assert (=> d!1627542 (= c!867624 ((_ is Nil!58424) (list!18969 ys!41)))))

(declare-fun e!3156886 () (InoxSet T!105048))

(assert (=> d!1627542 (= (content!10411 (list!18969 ys!41)) e!3156886)))

(declare-fun b!5057184 () Bool)

(assert (=> b!5057184 (= e!3156886 ((as const (Array T!105048 Bool)) false))))

(declare-fun b!5057185 () Bool)

(assert (=> b!5057185 (= e!3156886 ((_ map or) (store ((as const (Array T!105048 Bool)) false) (h!64872 (list!18969 ys!41)) true) (content!10411 (t!371231 (list!18969 ys!41)))))))

(assert (= (and d!1627542 c!867624) b!5057184))

(assert (= (and d!1627542 (not c!867624)) b!5057185))

(declare-fun m!6092396 () Bool)

(assert (=> b!5057185 m!6092396))

(declare-fun m!6092398 () Bool)

(assert (=> b!5057185 m!6092398))

(assert (=> d!1627468 d!1627542))

(declare-fun b!5057188 () Bool)

(declare-fun e!3156888 () List!58548)

(assert (=> b!5057188 (= e!3156888 (list!18970 (xs!18888 lt!2087527)))))

(declare-fun b!5057187 () Bool)

(declare-fun e!3156887 () List!58548)

(assert (=> b!5057187 (= e!3156887 e!3156888)))

(declare-fun c!867626 () Bool)

(assert (=> b!5057187 (= c!867626 ((_ is Leaf!25836) lt!2087527))))

(declare-fun d!1627544 () Bool)

(declare-fun c!867625 () Bool)

(assert (=> d!1627544 (= c!867625 ((_ is Empty!15554) lt!2087527))))

(assert (=> d!1627544 (= (list!18969 lt!2087527) e!3156887)))

(declare-fun b!5057186 () Bool)

(assert (=> b!5057186 (= e!3156887 Nil!58424)))

(declare-fun b!5057189 () Bool)

(assert (=> b!5057189 (= e!3156888 (++!12773 (list!18969 (left!42801 lt!2087527)) (list!18969 (right!43131 lt!2087527))))))

(assert (= (and d!1627544 c!867625) b!5057186))

(assert (= (and d!1627544 (not c!867625)) b!5057187))

(assert (= (and b!5057187 c!867626) b!5057188))

(assert (= (and b!5057187 (not c!867626)) b!5057189))

(declare-fun m!6092400 () Bool)

(assert (=> b!5057188 m!6092400))

(declare-fun m!6092402 () Bool)

(assert (=> b!5057189 m!6092402))

(declare-fun m!6092404 () Bool)

(assert (=> b!5057189 m!6092404))

(assert (=> b!5057189 m!6092402))

(assert (=> b!5057189 m!6092404))

(declare-fun m!6092406 () Bool)

(assert (=> b!5057189 m!6092406))

(assert (=> d!1627516 d!1627544))

(assert (=> d!1627516 d!1627468))

(assert (=> d!1627516 d!1627472))

(assert (=> d!1627516 d!1627474))

(declare-fun d!1627546 () Bool)

(declare-fun res!2153464 () Bool)

(declare-fun e!3156889 () Bool)

(assert (=> d!1627546 (=> (not res!2153464) (not e!3156889))))

(assert (=> d!1627546 (= res!2153464 (<= (size!39055 (list!18970 (xs!18888 (right!43131 ys!41)))) 512))))

(assert (=> d!1627546 (= (inv!77505 (right!43131 ys!41)) e!3156889)))

(declare-fun b!5057190 () Bool)

(declare-fun res!2153465 () Bool)

(assert (=> b!5057190 (=> (not res!2153465) (not e!3156889))))

(assert (=> b!5057190 (= res!2153465 (= (csize!31339 (right!43131 ys!41)) (size!39055 (list!18970 (xs!18888 (right!43131 ys!41))))))))

(declare-fun b!5057191 () Bool)

(assert (=> b!5057191 (= e!3156889 (and (> (csize!31339 (right!43131 ys!41)) 0) (<= (csize!31339 (right!43131 ys!41)) 512)))))

(assert (= (and d!1627546 res!2153464) b!5057190))

(assert (= (and b!5057190 res!2153465) b!5057191))

(declare-fun m!6092408 () Bool)

(assert (=> d!1627546 m!6092408))

(assert (=> d!1627546 m!6092408))

(declare-fun m!6092410 () Bool)

(assert (=> d!1627546 m!6092410))

(assert (=> b!5057190 m!6092408))

(assert (=> b!5057190 m!6092408))

(assert (=> b!5057190 m!6092410))

(assert (=> b!5057137 d!1627546))

(declare-fun d!1627548 () Bool)

(declare-fun res!2153472 () Bool)

(declare-fun e!3156892 () Bool)

(assert (=> d!1627548 (=> (not res!2153472) (not e!3156892))))

(assert (=> d!1627548 (= res!2153472 (= (csize!31338 (left!42801 ys!41)) (+ (size!39057 (left!42801 (left!42801 ys!41))) (size!39057 (right!43131 (left!42801 ys!41))))))))

(assert (=> d!1627548 (= (inv!77504 (left!42801 ys!41)) e!3156892)))

(declare-fun b!5057198 () Bool)

(declare-fun res!2153473 () Bool)

(assert (=> b!5057198 (=> (not res!2153473) (not e!3156892))))

(assert (=> b!5057198 (= res!2153473 (and (not (= (left!42801 (left!42801 ys!41)) Empty!15554)) (not (= (right!43131 (left!42801 ys!41)) Empty!15554))))))

(declare-fun b!5057199 () Bool)

(declare-fun res!2153474 () Bool)

(assert (=> b!5057199 (=> (not res!2153474) (not e!3156892))))

(assert (=> b!5057199 (= res!2153474 (= (cheight!15765 (left!42801 ys!41)) (+ (max!0 (height!2131 (left!42801 (left!42801 ys!41))) (height!2131 (right!43131 (left!42801 ys!41)))) 1)))))

(declare-fun b!5057200 () Bool)

(assert (=> b!5057200 (= e!3156892 (<= 0 (cheight!15765 (left!42801 ys!41))))))

(assert (= (and d!1627548 res!2153472) b!5057198))

(assert (= (and b!5057198 res!2153473) b!5057199))

(assert (= (and b!5057199 res!2153474) b!5057200))

(declare-fun m!6092412 () Bool)

(assert (=> d!1627548 m!6092412))

(declare-fun m!6092414 () Bool)

(assert (=> d!1627548 m!6092414))

(declare-fun m!6092416 () Bool)

(assert (=> b!5057199 m!6092416))

(declare-fun m!6092418 () Bool)

(assert (=> b!5057199 m!6092418))

(assert (=> b!5057199 m!6092416))

(assert (=> b!5057199 m!6092418))

(declare-fun m!6092420 () Bool)

(assert (=> b!5057199 m!6092420))

(assert (=> b!5057130 d!1627548))

(declare-fun d!1627550 () Bool)

(declare-fun lt!2087530 () Bool)

(declare-fun isEmpty!31612 (List!58548) Bool)

(assert (=> d!1627550 (= lt!2087530 (isEmpty!31612 (list!18969 (right!43131 lt!2087515))))))

(assert (=> d!1627550 (= lt!2087530 (= (size!39057 (right!43131 lt!2087515)) 0))))

(assert (=> d!1627550 (= (isEmpty!31610 (right!43131 lt!2087515)) lt!2087530)))

(declare-fun bs!1189415 () Bool)

(assert (= bs!1189415 d!1627550))

(assert (=> bs!1189415 m!6092090))

(assert (=> bs!1189415 m!6092090))

(declare-fun m!6092422 () Bool)

(assert (=> bs!1189415 m!6092422))

(declare-fun m!6092424 () Bool)

(assert (=> bs!1189415 m!6092424))

(assert (=> b!5056966 d!1627550))

(declare-fun d!1627552 () Bool)

(declare-fun res!2153475 () Bool)

(declare-fun e!3156893 () Bool)

(assert (=> d!1627552 (=> (not res!2153475) (not e!3156893))))

(assert (=> d!1627552 (= res!2153475 (= (csize!31338 xs!286) (+ (size!39057 (left!42801 xs!286)) (size!39057 (right!43131 xs!286)))))))

(assert (=> d!1627552 (= (inv!77504 xs!286) e!3156893)))

(declare-fun b!5057201 () Bool)

(declare-fun res!2153476 () Bool)

(assert (=> b!5057201 (=> (not res!2153476) (not e!3156893))))

(assert (=> b!5057201 (= res!2153476 (and (not (= (left!42801 xs!286) Empty!15554)) (not (= (right!43131 xs!286) Empty!15554))))))

(declare-fun b!5057202 () Bool)

(declare-fun res!2153477 () Bool)

(assert (=> b!5057202 (=> (not res!2153477) (not e!3156893))))

(assert (=> b!5057202 (= res!2153477 (= (cheight!15765 xs!286) (+ (max!0 (height!2131 (left!42801 xs!286)) (height!2131 (right!43131 xs!286))) 1)))))

(declare-fun b!5057203 () Bool)

(assert (=> b!5057203 (= e!3156893 (<= 0 (cheight!15765 xs!286)))))

(assert (= (and d!1627552 res!2153475) b!5057201))

(assert (= (and b!5057201 res!2153476) b!5057202))

(assert (= (and b!5057202 res!2153477) b!5057203))

(declare-fun m!6092426 () Bool)

(assert (=> d!1627552 m!6092426))

(declare-fun m!6092428 () Bool)

(assert (=> d!1627552 m!6092428))

(assert (=> b!5057202 m!6092072))

(assert (=> b!5057202 m!6092074))

(assert (=> b!5057202 m!6092072))

(assert (=> b!5057202 m!6092074))

(declare-fun m!6092430 () Bool)

(assert (=> b!5057202 m!6092430))

(assert (=> b!5056910 d!1627552))

(declare-fun d!1627554 () Bool)

(declare-fun res!2153478 () Bool)

(declare-fun e!3156894 () Bool)

(assert (=> d!1627554 (=> (not res!2153478) (not e!3156894))))

(assert (=> d!1627554 (= res!2153478 (<= (size!39055 (list!18970 (xs!18888 (right!43131 xs!286)))) 512))))

(assert (=> d!1627554 (= (inv!77505 (right!43131 xs!286)) e!3156894)))

(declare-fun b!5057204 () Bool)

(declare-fun res!2153479 () Bool)

(assert (=> b!5057204 (=> (not res!2153479) (not e!3156894))))

(assert (=> b!5057204 (= res!2153479 (= (csize!31339 (right!43131 xs!286)) (size!39055 (list!18970 (xs!18888 (right!43131 xs!286))))))))

(declare-fun b!5057205 () Bool)

(assert (=> b!5057205 (= e!3156894 (and (> (csize!31339 (right!43131 xs!286)) 0) (<= (csize!31339 (right!43131 xs!286)) 512)))))

(assert (= (and d!1627554 res!2153478) b!5057204))

(assert (= (and b!5057204 res!2153479) b!5057205))

(declare-fun m!6092432 () Bool)

(assert (=> d!1627554 m!6092432))

(assert (=> d!1627554 m!6092432))

(declare-fun m!6092434 () Bool)

(assert (=> d!1627554 m!6092434))

(assert (=> b!5057204 m!6092432))

(assert (=> b!5057204 m!6092432))

(assert (=> b!5057204 m!6092434))

(assert (=> b!5056988 d!1627554))

(declare-fun d!1627556 () Bool)

(assert (=> d!1627556 (= (list!18970 (xs!18888 lt!2087515)) (innerList!15642 (xs!18888 lt!2087515)))))

(assert (=> b!5056932 d!1627556))

(declare-fun d!1627558 () Bool)

(declare-fun res!2153480 () Bool)

(declare-fun e!3156895 () Bool)

(assert (=> d!1627558 (=> (not res!2153480) (not e!3156895))))

(assert (=> d!1627558 (= res!2153480 (= (csize!31338 (right!43131 xs!286)) (+ (size!39057 (left!42801 (right!43131 xs!286))) (size!39057 (right!43131 (right!43131 xs!286))))))))

(assert (=> d!1627558 (= (inv!77504 (right!43131 xs!286)) e!3156895)))

(declare-fun b!5057206 () Bool)

(declare-fun res!2153481 () Bool)

(assert (=> b!5057206 (=> (not res!2153481) (not e!3156895))))

(assert (=> b!5057206 (= res!2153481 (and (not (= (left!42801 (right!43131 xs!286)) Empty!15554)) (not (= (right!43131 (right!43131 xs!286)) Empty!15554))))))

(declare-fun b!5057207 () Bool)

(declare-fun res!2153482 () Bool)

(assert (=> b!5057207 (=> (not res!2153482) (not e!3156895))))

(assert (=> b!5057207 (= res!2153482 (= (cheight!15765 (right!43131 xs!286)) (+ (max!0 (height!2131 (left!42801 (right!43131 xs!286))) (height!2131 (right!43131 (right!43131 xs!286)))) 1)))))

(declare-fun b!5057208 () Bool)

(assert (=> b!5057208 (= e!3156895 (<= 0 (cheight!15765 (right!43131 xs!286))))))

(assert (= (and d!1627558 res!2153480) b!5057206))

(assert (= (and b!5057206 res!2153481) b!5057207))

(assert (= (and b!5057207 res!2153482) b!5057208))

(declare-fun m!6092436 () Bool)

(assert (=> d!1627558 m!6092436))

(declare-fun m!6092438 () Bool)

(assert (=> d!1627558 m!6092438))

(declare-fun m!6092440 () Bool)

(assert (=> b!5057207 m!6092440))

(declare-fun m!6092442 () Bool)

(assert (=> b!5057207 m!6092442))

(assert (=> b!5057207 m!6092440))

(assert (=> b!5057207 m!6092442))

(declare-fun m!6092444 () Bool)

(assert (=> b!5057207 m!6092444))

(assert (=> b!5056986 d!1627558))

(declare-fun d!1627560 () Bool)

(assert (=> d!1627560 (= (list!18970 (xs!18888 ys!41)) (innerList!15642 (xs!18888 ys!41)))))

(assert (=> b!5056961 d!1627560))

(declare-fun d!1627562 () Bool)

(declare-fun lt!2087533 () Int)

(assert (=> d!1627562 (>= lt!2087533 0)))

(declare-fun e!3156898 () Int)

(assert (=> d!1627562 (= lt!2087533 e!3156898)))

(declare-fun c!867629 () Bool)

(assert (=> d!1627562 (= c!867629 ((_ is Nil!58424) lt!2087518))))

(assert (=> d!1627562 (= (size!39055 lt!2087518) lt!2087533)))

(declare-fun b!5057213 () Bool)

(assert (=> b!5057213 (= e!3156898 0)))

(declare-fun b!5057214 () Bool)

(assert (=> b!5057214 (= e!3156898 (+ 1 (size!39055 (t!371231 lt!2087518))))))

(assert (= (and d!1627562 c!867629) b!5057213))

(assert (= (and d!1627562 (not c!867629)) b!5057214))

(declare-fun m!6092446 () Bool)

(assert (=> b!5057214 m!6092446))

(assert (=> b!5056953 d!1627562))

(declare-fun d!1627564 () Bool)

(declare-fun lt!2087534 () Int)

(assert (=> d!1627564 (>= lt!2087534 0)))

(declare-fun e!3156899 () Int)

(assert (=> d!1627564 (= lt!2087534 e!3156899)))

(declare-fun c!867630 () Bool)

(assert (=> d!1627564 (= c!867630 ((_ is Nil!58424) (list!18969 xs!286)))))

(assert (=> d!1627564 (= (size!39055 (list!18969 xs!286)) lt!2087534)))

(declare-fun b!5057215 () Bool)

(assert (=> b!5057215 (= e!3156899 0)))

(declare-fun b!5057216 () Bool)

(assert (=> b!5057216 (= e!3156899 (+ 1 (size!39055 (t!371231 (list!18969 xs!286)))))))

(assert (= (and d!1627564 c!867630) b!5057215))

(assert (= (and d!1627564 (not c!867630)) b!5057216))

(declare-fun m!6092448 () Bool)

(assert (=> b!5057216 m!6092448))

(assert (=> b!5056953 d!1627564))

(declare-fun d!1627566 () Bool)

(declare-fun lt!2087535 () Int)

(assert (=> d!1627566 (>= lt!2087535 0)))

(declare-fun e!3156900 () Int)

(assert (=> d!1627566 (= lt!2087535 e!3156900)))

(declare-fun c!867631 () Bool)

(assert (=> d!1627566 (= c!867631 ((_ is Nil!58424) (list!18969 ys!41)))))

(assert (=> d!1627566 (= (size!39055 (list!18969 ys!41)) lt!2087535)))

(declare-fun b!5057217 () Bool)

(assert (=> b!5057217 (= e!3156900 0)))

(declare-fun b!5057218 () Bool)

(assert (=> b!5057218 (= e!3156900 (+ 1 (size!39055 (t!371231 (list!18969 ys!41)))))))

(assert (= (and d!1627566 c!867631) b!5057217))

(assert (= (and d!1627566 (not c!867631)) b!5057218))

(declare-fun m!6092450 () Bool)

(assert (=> b!5057218 m!6092450))

(assert (=> b!5056953 d!1627566))

(declare-fun d!1627568 () Bool)

(assert (=> d!1627568 (= (height!2131 (left!42801 lt!2087515)) (ite ((_ is Empty!15554) (left!42801 lt!2087515)) 0 (ite ((_ is Leaf!25836) (left!42801 lt!2087515)) 1 (cheight!15765 (left!42801 lt!2087515)))))))

(assert (=> b!5056964 d!1627568))

(declare-fun d!1627570 () Bool)

(assert (=> d!1627570 (= (height!2131 (right!43131 lt!2087515)) (ite ((_ is Empty!15554) (right!43131 lt!2087515)) 0 (ite ((_ is Leaf!25836) (right!43131 lt!2087515)) 1 (cheight!15765 (right!43131 lt!2087515)))))))

(assert (=> b!5056964 d!1627570))

(assert (=> b!5056854 d!1627522))

(assert (=> b!5056854 d!1627524))

(declare-fun d!1627572 () Bool)

(assert (=> d!1627572 (= (inv!77501 (xs!18888 (right!43131 xs!286))) (<= (size!39055 (innerList!15642 (xs!18888 (right!43131 xs!286)))) 2147483647))))

(declare-fun bs!1189416 () Bool)

(assert (= bs!1189416 d!1627572))

(declare-fun m!6092452 () Bool)

(assert (=> bs!1189416 m!6092452))

(assert (=> b!5057150 d!1627572))

(declare-fun d!1627574 () Bool)

(declare-fun lt!2087536 () Bool)

(assert (=> d!1627574 (= lt!2087536 (isEmpty!31612 (list!18969 (left!42801 xs!286))))))

(assert (=> d!1627574 (= lt!2087536 (= (size!39057 (left!42801 xs!286)) 0))))

(assert (=> d!1627574 (= (isEmpty!31610 (left!42801 xs!286)) lt!2087536)))

(declare-fun bs!1189417 () Bool)

(assert (= bs!1189417 d!1627574))

(assert (=> bs!1189417 m!6092142))

(assert (=> bs!1189417 m!6092142))

(declare-fun m!6092454 () Bool)

(assert (=> bs!1189417 m!6092454))

(assert (=> bs!1189417 m!6092426))

(assert (=> b!5056888 d!1627574))

(declare-fun d!1627576 () Bool)

(assert (=> d!1627576 (= (height!2131 (left!42801 xs!286)) (ite ((_ is Empty!15554) (left!42801 xs!286)) 0 (ite ((_ is Leaf!25836) (left!42801 xs!286)) 1 (cheight!15765 (left!42801 xs!286)))))))

(assert (=> b!5056886 d!1627576))

(declare-fun d!1627578 () Bool)

(assert (=> d!1627578 (= (height!2131 (right!43131 xs!286)) (ite ((_ is Empty!15554) (right!43131 xs!286)) 0 (ite ((_ is Leaf!25836) (right!43131 xs!286)) 1 (cheight!15765 (right!43131 xs!286)))))))

(assert (=> b!5056886 d!1627578))

(declare-fun d!1627580 () Bool)

(assert (=> d!1627580 (= (height!2131 (left!42801 ys!41)) (ite ((_ is Empty!15554) (left!42801 ys!41)) 0 (ite ((_ is Leaf!25836) (left!42801 ys!41)) 1 (cheight!15765 (left!42801 ys!41)))))))

(assert (=> b!5056977 d!1627580))

(declare-fun d!1627582 () Bool)

(assert (=> d!1627582 (= (height!2131 (right!43131 ys!41)) (ite ((_ is Empty!15554) (right!43131 ys!41)) 0 (ite ((_ is Leaf!25836) (right!43131 ys!41)) 1 (cheight!15765 (right!43131 ys!41)))))))

(assert (=> b!5056977 d!1627582))

(declare-fun bm!352169 () Bool)

(declare-fun call!352177 () List!58548)

(declare-fun call!352176 () List!58548)

(assert (=> bm!352169 (= call!352177 (++!12773 (list!18969 xs!286) call!352176))))

(declare-fun bm!352170 () Bool)

(declare-fun call!352174 () List!58548)

(declare-fun call!352175 () List!58548)

(assert (=> bm!352170 (= call!352174 (++!12773 call!352175 (list!18969 (right!43131 (left!42801 ys!41)))))))

(declare-fun d!1627584 () Bool)

(declare-fun e!3156903 () Bool)

(assert (=> d!1627584 e!3156903))

(declare-fun c!867634 () Bool)

(assert (=> d!1627584 (= c!867634 ((_ is Nil!58424) (list!18969 xs!286)))))

(assert (=> d!1627584 (= (appendAssoc!296 (list!18969 xs!286) (list!18969 (left!42801 (left!42801 ys!41))) (list!18969 (right!43131 (left!42801 ys!41)))) true)))

(declare-fun b!5057223 () Bool)

(assert (=> b!5057223 (= e!3156903 (= call!352174 call!352177))))

(declare-fun lt!2087539 () Bool)

(assert (=> b!5057223 (= lt!2087539 (appendAssoc!296 (t!371231 (list!18969 xs!286)) (list!18969 (left!42801 (left!42801 ys!41))) (list!18969 (right!43131 (left!42801 ys!41)))))))

(declare-fun bm!352171 () Bool)

(assert (=> bm!352171 (= call!352175 (++!12773 (list!18969 xs!286) (list!18969 (left!42801 (left!42801 ys!41)))))))

(declare-fun bm!352172 () Bool)

(assert (=> bm!352172 (= call!352176 (++!12773 (list!18969 (left!42801 (left!42801 ys!41))) (list!18969 (right!43131 (left!42801 ys!41)))))))

(declare-fun b!5057224 () Bool)

(assert (=> b!5057224 (= e!3156903 (= call!352174 call!352177))))

(assert (= (and d!1627584 c!867634) b!5057224))

(assert (= (and d!1627584 (not c!867634)) b!5057223))

(assert (= (or b!5057224 b!5057223) bm!352171))

(assert (= (or b!5057224 b!5057223) bm!352172))

(assert (= (or b!5057224 b!5057223) bm!352169))

(assert (= (or b!5057224 b!5057223) bm!352170))

(assert (=> bm!352171 m!6092018))

(assert (=> bm!352171 m!6092264))

(assert (=> bm!352171 m!6092268))

(assert (=> bm!352170 m!6092266))

(declare-fun m!6092456 () Bool)

(assert (=> bm!352170 m!6092456))

(assert (=> b!5057223 m!6092264))

(assert (=> b!5057223 m!6092266))

(declare-fun m!6092458 () Bool)

(assert (=> b!5057223 m!6092458))

(assert (=> bm!352169 m!6092018))

(declare-fun m!6092460 () Bool)

(assert (=> bm!352169 m!6092460))

(assert (=> bm!352172 m!6092264))

(assert (=> bm!352172 m!6092266))

(declare-fun m!6092462 () Bool)

(assert (=> bm!352172 m!6092462))

(assert (=> b!5057061 d!1627584))

(assert (=> b!5057061 d!1627472))

(declare-fun b!5057227 () Bool)

(declare-fun e!3156905 () List!58548)

(assert (=> b!5057227 (= e!3156905 (list!18970 (xs!18888 (left!42801 (left!42801 ys!41)))))))

(declare-fun b!5057226 () Bool)

(declare-fun e!3156904 () List!58548)

(assert (=> b!5057226 (= e!3156904 e!3156905)))

(declare-fun c!867636 () Bool)

(assert (=> b!5057226 (= c!867636 ((_ is Leaf!25836) (left!42801 (left!42801 ys!41))))))

(declare-fun d!1627586 () Bool)

(declare-fun c!867635 () Bool)

(assert (=> d!1627586 (= c!867635 ((_ is Empty!15554) (left!42801 (left!42801 ys!41))))))

(assert (=> d!1627586 (= (list!18969 (left!42801 (left!42801 ys!41))) e!3156904)))

(declare-fun b!5057225 () Bool)

(assert (=> b!5057225 (= e!3156904 Nil!58424)))

(declare-fun b!5057228 () Bool)

(assert (=> b!5057228 (= e!3156905 (++!12773 (list!18969 (left!42801 (left!42801 (left!42801 ys!41)))) (list!18969 (right!43131 (left!42801 (left!42801 ys!41))))))))

(assert (= (and d!1627586 c!867635) b!5057225))

(assert (= (and d!1627586 (not c!867635)) b!5057226))

(assert (= (and b!5057226 c!867636) b!5057227))

(assert (= (and b!5057226 (not c!867636)) b!5057228))

(declare-fun m!6092464 () Bool)

(assert (=> b!5057227 m!6092464))

(declare-fun m!6092466 () Bool)

(assert (=> b!5057228 m!6092466))

(declare-fun m!6092468 () Bool)

(assert (=> b!5057228 m!6092468))

(assert (=> b!5057228 m!6092466))

(assert (=> b!5057228 m!6092468))

(declare-fun m!6092470 () Bool)

(assert (=> b!5057228 m!6092470))

(assert (=> b!5057061 d!1627586))

(declare-fun b!5057231 () Bool)

(declare-fun e!3156907 () List!58548)

(assert (=> b!5057231 (= e!3156907 (list!18970 (xs!18888 (right!43131 (left!42801 ys!41)))))))

(declare-fun b!5057230 () Bool)

(declare-fun e!3156906 () List!58548)

(assert (=> b!5057230 (= e!3156906 e!3156907)))

(declare-fun c!867638 () Bool)

(assert (=> b!5057230 (= c!867638 ((_ is Leaf!25836) (right!43131 (left!42801 ys!41))))))

(declare-fun d!1627588 () Bool)

(declare-fun c!867637 () Bool)

(assert (=> d!1627588 (= c!867637 ((_ is Empty!15554) (right!43131 (left!42801 ys!41))))))

(assert (=> d!1627588 (= (list!18969 (right!43131 (left!42801 ys!41))) e!3156906)))

(declare-fun b!5057229 () Bool)

(assert (=> b!5057229 (= e!3156906 Nil!58424)))

(declare-fun b!5057232 () Bool)

(assert (=> b!5057232 (= e!3156907 (++!12773 (list!18969 (left!42801 (right!43131 (left!42801 ys!41)))) (list!18969 (right!43131 (right!43131 (left!42801 ys!41))))))))

(assert (= (and d!1627588 c!867637) b!5057229))

(assert (= (and d!1627588 (not c!867637)) b!5057230))

(assert (= (and b!5057230 c!867638) b!5057231))

(assert (= (and b!5057230 (not c!867638)) b!5057232))

(declare-fun m!6092472 () Bool)

(assert (=> b!5057231 m!6092472))

(declare-fun m!6092474 () Bool)

(assert (=> b!5057232 m!6092474))

(declare-fun m!6092476 () Bool)

(assert (=> b!5057232 m!6092476))

(assert (=> b!5057232 m!6092474))

(assert (=> b!5057232 m!6092476))

(declare-fun m!6092478 () Bool)

(assert (=> b!5057232 m!6092478))

(assert (=> b!5057061 d!1627588))

(declare-fun b!5057233 () Bool)

(declare-fun res!2153488 () Bool)

(declare-fun e!3156909 () Bool)

(assert (=> b!5057233 (=> (not res!2153488) (not e!3156909))))

(assert (=> b!5057233 (= res!2153488 (<= (- (height!2131 (left!42801 (right!43131 lt!2087515))) (height!2131 (right!43131 (right!43131 lt!2087515)))) 1))))

(declare-fun b!5057234 () Bool)

(declare-fun e!3156908 () Bool)

(assert (=> b!5057234 (= e!3156908 e!3156909)))

(declare-fun res!2153484 () Bool)

(assert (=> b!5057234 (=> (not res!2153484) (not e!3156909))))

(assert (=> b!5057234 (= res!2153484 (<= (- 1) (- (height!2131 (left!42801 (right!43131 lt!2087515))) (height!2131 (right!43131 (right!43131 lt!2087515))))))))

(declare-fun b!5057235 () Bool)

(declare-fun res!2153486 () Bool)

(assert (=> b!5057235 (=> (not res!2153486) (not e!3156909))))

(assert (=> b!5057235 (= res!2153486 (not (isEmpty!31610 (left!42801 (right!43131 lt!2087515)))))))

(declare-fun b!5057236 () Bool)

(assert (=> b!5057236 (= e!3156909 (not (isEmpty!31610 (right!43131 (right!43131 lt!2087515)))))))

(declare-fun b!5057237 () Bool)

(declare-fun res!2153483 () Bool)

(assert (=> b!5057237 (=> (not res!2153483) (not e!3156909))))

(assert (=> b!5057237 (= res!2153483 (isBalanced!4416 (right!43131 (right!43131 lt!2087515))))))

(declare-fun d!1627590 () Bool)

(declare-fun res!2153487 () Bool)

(assert (=> d!1627590 (=> res!2153487 e!3156908)))

(assert (=> d!1627590 (= res!2153487 (not ((_ is Node!15554) (right!43131 lt!2087515))))))

(assert (=> d!1627590 (= (isBalanced!4416 (right!43131 lt!2087515)) e!3156908)))

(declare-fun b!5057238 () Bool)

(declare-fun res!2153485 () Bool)

(assert (=> b!5057238 (=> (not res!2153485) (not e!3156909))))

(assert (=> b!5057238 (= res!2153485 (isBalanced!4416 (left!42801 (right!43131 lt!2087515))))))

(assert (= (and d!1627590 (not res!2153487)) b!5057234))

(assert (= (and b!5057234 res!2153484) b!5057233))

(assert (= (and b!5057233 res!2153488) b!5057238))

(assert (= (and b!5057238 res!2153485) b!5057237))

(assert (= (and b!5057237 res!2153483) b!5057235))

(assert (= (and b!5057235 res!2153486) b!5057236))

(declare-fun m!6092480 () Bool)

(assert (=> b!5057237 m!6092480))

(declare-fun m!6092482 () Bool)

(assert (=> b!5057238 m!6092482))

(declare-fun m!6092484 () Bool)

(assert (=> b!5057236 m!6092484))

(declare-fun m!6092486 () Bool)

(assert (=> b!5057234 m!6092486))

(declare-fun m!6092488 () Bool)

(assert (=> b!5057234 m!6092488))

(declare-fun m!6092490 () Bool)

(assert (=> b!5057235 m!6092490))

(assert (=> b!5057233 m!6092486))

(assert (=> b!5057233 m!6092488))

(assert (=> b!5056967 d!1627590))

(declare-fun d!1627592 () Bool)

(assert (=> d!1627592 (= (list!18970 (xs!18888 xs!286)) (innerList!15642 (xs!18888 xs!286)))))

(assert (=> b!5056957 d!1627592))

(declare-fun b!5057242 () Bool)

(declare-fun e!3156910 () Bool)

(declare-fun lt!2087540 () List!58548)

(assert (=> b!5057242 (= e!3156910 (or (not (= (list!18969 (right!43131 lt!2087515)) Nil!58424)) (= lt!2087540 (list!18969 (left!42801 lt!2087515)))))))

(declare-fun b!5057239 () Bool)

(declare-fun e!3156911 () List!58548)

(assert (=> b!5057239 (= e!3156911 (list!18969 (right!43131 lt!2087515)))))

(declare-fun b!5057240 () Bool)

(assert (=> b!5057240 (= e!3156911 (Cons!58424 (h!64872 (list!18969 (left!42801 lt!2087515))) (++!12773 (t!371231 (list!18969 (left!42801 lt!2087515))) (list!18969 (right!43131 lt!2087515)))))))

(declare-fun b!5057241 () Bool)

(declare-fun res!2153489 () Bool)

(assert (=> b!5057241 (=> (not res!2153489) (not e!3156910))))

(assert (=> b!5057241 (= res!2153489 (= (size!39055 lt!2087540) (+ (size!39055 (list!18969 (left!42801 lt!2087515))) (size!39055 (list!18969 (right!43131 lt!2087515))))))))

(declare-fun d!1627594 () Bool)

(assert (=> d!1627594 e!3156910))

(declare-fun res!2153490 () Bool)

(assert (=> d!1627594 (=> (not res!2153490) (not e!3156910))))

(assert (=> d!1627594 (= res!2153490 (= (content!10411 lt!2087540) ((_ map or) (content!10411 (list!18969 (left!42801 lt!2087515))) (content!10411 (list!18969 (right!43131 lt!2087515))))))))

(assert (=> d!1627594 (= lt!2087540 e!3156911)))

(declare-fun c!867639 () Bool)

(assert (=> d!1627594 (= c!867639 ((_ is Nil!58424) (list!18969 (left!42801 lt!2087515))))))

(assert (=> d!1627594 (= (++!12773 (list!18969 (left!42801 lt!2087515)) (list!18969 (right!43131 lt!2087515))) lt!2087540)))

(assert (= (and d!1627594 c!867639) b!5057239))

(assert (= (and d!1627594 (not c!867639)) b!5057240))

(assert (= (and d!1627594 res!2153490) b!5057241))

(assert (= (and b!5057241 res!2153489) b!5057242))

(assert (=> b!5057240 m!6092090))

(declare-fun m!6092492 () Bool)

(assert (=> b!5057240 m!6092492))

(declare-fun m!6092494 () Bool)

(assert (=> b!5057241 m!6092494))

(assert (=> b!5057241 m!6092088))

(declare-fun m!6092496 () Bool)

(assert (=> b!5057241 m!6092496))

(assert (=> b!5057241 m!6092090))

(declare-fun m!6092498 () Bool)

(assert (=> b!5057241 m!6092498))

(declare-fun m!6092500 () Bool)

(assert (=> d!1627594 m!6092500))

(assert (=> d!1627594 m!6092088))

(declare-fun m!6092502 () Bool)

(assert (=> d!1627594 m!6092502))

(assert (=> d!1627594 m!6092090))

(declare-fun m!6092504 () Bool)

(assert (=> d!1627594 m!6092504))

(assert (=> b!5056933 d!1627594))

(declare-fun b!5057245 () Bool)

(declare-fun e!3156913 () List!58548)

(assert (=> b!5057245 (= e!3156913 (list!18970 (xs!18888 (left!42801 lt!2087515))))))

(declare-fun b!5057244 () Bool)

(declare-fun e!3156912 () List!58548)

(assert (=> b!5057244 (= e!3156912 e!3156913)))

(declare-fun c!867641 () Bool)

(assert (=> b!5057244 (= c!867641 ((_ is Leaf!25836) (left!42801 lt!2087515)))))

(declare-fun d!1627596 () Bool)

(declare-fun c!867640 () Bool)

(assert (=> d!1627596 (= c!867640 ((_ is Empty!15554) (left!42801 lt!2087515)))))

(assert (=> d!1627596 (= (list!18969 (left!42801 lt!2087515)) e!3156912)))

(declare-fun b!5057243 () Bool)

(assert (=> b!5057243 (= e!3156912 Nil!58424)))

(declare-fun b!5057246 () Bool)

(assert (=> b!5057246 (= e!3156913 (++!12773 (list!18969 (left!42801 (left!42801 lt!2087515))) (list!18969 (right!43131 (left!42801 lt!2087515)))))))

(assert (= (and d!1627596 c!867640) b!5057243))

(assert (= (and d!1627596 (not c!867640)) b!5057244))

(assert (= (and b!5057244 c!867641) b!5057245))

(assert (= (and b!5057244 (not c!867641)) b!5057246))

(declare-fun m!6092506 () Bool)

(assert (=> b!5057245 m!6092506))

(declare-fun m!6092508 () Bool)

(assert (=> b!5057246 m!6092508))

(declare-fun m!6092510 () Bool)

(assert (=> b!5057246 m!6092510))

(assert (=> b!5057246 m!6092508))

(assert (=> b!5057246 m!6092510))

(declare-fun m!6092512 () Bool)

(assert (=> b!5057246 m!6092512))

(assert (=> b!5056933 d!1627596))

(declare-fun b!5057249 () Bool)

(declare-fun e!3156915 () List!58548)

(assert (=> b!5057249 (= e!3156915 (list!18970 (xs!18888 (right!43131 lt!2087515))))))

(declare-fun b!5057248 () Bool)

(declare-fun e!3156914 () List!58548)

(assert (=> b!5057248 (= e!3156914 e!3156915)))

(declare-fun c!867643 () Bool)

(assert (=> b!5057248 (= c!867643 ((_ is Leaf!25836) (right!43131 lt!2087515)))))

(declare-fun d!1627598 () Bool)

(declare-fun c!867642 () Bool)

(assert (=> d!1627598 (= c!867642 ((_ is Empty!15554) (right!43131 lt!2087515)))))

(assert (=> d!1627598 (= (list!18969 (right!43131 lt!2087515)) e!3156914)))

(declare-fun b!5057247 () Bool)

(assert (=> b!5057247 (= e!3156914 Nil!58424)))

(declare-fun b!5057250 () Bool)

(assert (=> b!5057250 (= e!3156915 (++!12773 (list!18969 (left!42801 (right!43131 lt!2087515))) (list!18969 (right!43131 (right!43131 lt!2087515)))))))

(assert (= (and d!1627598 c!867642) b!5057247))

(assert (= (and d!1627598 (not c!867642)) b!5057248))

(assert (= (and b!5057248 c!867643) b!5057249))

(assert (= (and b!5057248 (not c!867643)) b!5057250))

(declare-fun m!6092514 () Bool)

(assert (=> b!5057249 m!6092514))

(declare-fun m!6092516 () Bool)

(assert (=> b!5057250 m!6092516))

(declare-fun m!6092518 () Bool)

(assert (=> b!5057250 m!6092518))

(assert (=> b!5057250 m!6092516))

(assert (=> b!5057250 m!6092518))

(declare-fun m!6092520 () Bool)

(assert (=> b!5057250 m!6092520))

(assert (=> b!5056933 d!1627598))

(declare-fun d!1627600 () Bool)

(declare-fun res!2153491 () Bool)

(declare-fun e!3156916 () Bool)

(assert (=> d!1627600 (=> (not res!2153491) (not e!3156916))))

(assert (=> d!1627600 (= res!2153491 (= (csize!31338 (right!43131 ys!41)) (+ (size!39057 (left!42801 (right!43131 ys!41))) (size!39057 (right!43131 (right!43131 ys!41))))))))

(assert (=> d!1627600 (= (inv!77504 (right!43131 ys!41)) e!3156916)))

(declare-fun b!5057251 () Bool)

(declare-fun res!2153492 () Bool)

(assert (=> b!5057251 (=> (not res!2153492) (not e!3156916))))

(assert (=> b!5057251 (= res!2153492 (and (not (= (left!42801 (right!43131 ys!41)) Empty!15554)) (not (= (right!43131 (right!43131 ys!41)) Empty!15554))))))

(declare-fun b!5057252 () Bool)

(declare-fun res!2153493 () Bool)

(assert (=> b!5057252 (=> (not res!2153493) (not e!3156916))))

(assert (=> b!5057252 (= res!2153493 (= (cheight!15765 (right!43131 ys!41)) (+ (max!0 (height!2131 (left!42801 (right!43131 ys!41))) (height!2131 (right!43131 (right!43131 ys!41)))) 1)))))

(declare-fun b!5057253 () Bool)

(assert (=> b!5057253 (= e!3156916 (<= 0 (cheight!15765 (right!43131 ys!41))))))

(assert (= (and d!1627600 res!2153491) b!5057251))

(assert (= (and b!5057251 res!2153492) b!5057252))

(assert (= (and b!5057252 res!2153493) b!5057253))

(declare-fun m!6092522 () Bool)

(assert (=> d!1627600 m!6092522))

(declare-fun m!6092524 () Bool)

(assert (=> d!1627600 m!6092524))

(declare-fun m!6092526 () Bool)

(assert (=> b!5057252 m!6092526))

(declare-fun m!6092528 () Bool)

(assert (=> b!5057252 m!6092528))

(assert (=> b!5057252 m!6092526))

(assert (=> b!5057252 m!6092528))

(declare-fun m!6092530 () Bool)

(assert (=> b!5057252 m!6092530))

(assert (=> b!5057135 d!1627600))

(declare-fun bm!352173 () Bool)

(declare-fun call!352181 () List!58548)

(declare-fun call!352180 () List!58548)

(assert (=> bm!352173 (= call!352181 (++!12773 (list!18969 xs!286) call!352180))))

(declare-fun bm!352174 () Bool)

(declare-fun call!352178 () List!58548)

(declare-fun call!352179 () List!58548)

(assert (=> bm!352174 (= call!352178 (++!12773 call!352179 (list!18969 (right!43131 ys!41))))))

(declare-fun d!1627602 () Bool)

(declare-fun e!3156917 () Bool)

(assert (=> d!1627602 e!3156917))

(declare-fun c!867644 () Bool)

(assert (=> d!1627602 (= c!867644 ((_ is Nil!58424) (list!18969 xs!286)))))

(assert (=> d!1627602 (= (appendAssoc!296 (list!18969 xs!286) (list!18969 (left!42801 ys!41)) (list!18969 (right!43131 ys!41))) true)))

(declare-fun b!5057254 () Bool)

(assert (=> b!5057254 (= e!3156917 (= call!352178 call!352181))))

(declare-fun lt!2087541 () Bool)

(assert (=> b!5057254 (= lt!2087541 (appendAssoc!296 (t!371231 (list!18969 xs!286)) (list!18969 (left!42801 ys!41)) (list!18969 (right!43131 ys!41))))))

(declare-fun bm!352175 () Bool)

(assert (=> bm!352175 (= call!352179 (++!12773 (list!18969 xs!286) (list!18969 (left!42801 ys!41))))))

(declare-fun bm!352176 () Bool)

(assert (=> bm!352176 (= call!352180 (++!12773 (list!18969 (left!42801 ys!41)) (list!18969 (right!43131 ys!41))))))

(declare-fun b!5057255 () Bool)

(assert (=> b!5057255 (= e!3156917 (= call!352178 call!352181))))

(assert (= (and d!1627602 c!867644) b!5057255))

(assert (= (and d!1627602 (not c!867644)) b!5057254))

(assert (= (or b!5057255 b!5057254) bm!352175))

(assert (= (or b!5057255 b!5057254) bm!352176))

(assert (= (or b!5057255 b!5057254) bm!352173))

(assert (= (or b!5057255 b!5057254) bm!352174))

(assert (=> bm!352175 m!6092018))

(assert (=> bm!352175 m!6092150))

(declare-fun m!6092532 () Bool)

(assert (=> bm!352175 m!6092532))

(assert (=> bm!352174 m!6092152))

(declare-fun m!6092534 () Bool)

(assert (=> bm!352174 m!6092534))

(assert (=> b!5057254 m!6092150))

(assert (=> b!5057254 m!6092152))

(declare-fun m!6092536 () Bool)

(assert (=> b!5057254 m!6092536))

(assert (=> bm!352173 m!6092018))

(declare-fun m!6092538 () Bool)

(assert (=> bm!352173 m!6092538))

(assert (=> bm!352176 m!6092150))

(assert (=> bm!352176 m!6092152))

(assert (=> bm!352176 m!6092154))

(assert (=> b!5057069 d!1627602))

(assert (=> b!5057069 d!1627472))

(declare-fun b!5057258 () Bool)

(declare-fun e!3156919 () List!58548)

(assert (=> b!5057258 (= e!3156919 (list!18970 (xs!18888 (left!42801 ys!41))))))

(declare-fun b!5057257 () Bool)

(declare-fun e!3156918 () List!58548)

(assert (=> b!5057257 (= e!3156918 e!3156919)))

(declare-fun c!867646 () Bool)

(assert (=> b!5057257 (= c!867646 ((_ is Leaf!25836) (left!42801 ys!41)))))

(declare-fun d!1627604 () Bool)

(declare-fun c!867645 () Bool)

(assert (=> d!1627604 (= c!867645 ((_ is Empty!15554) (left!42801 ys!41)))))

(assert (=> d!1627604 (= (list!18969 (left!42801 ys!41)) e!3156918)))

(declare-fun b!5057256 () Bool)

(assert (=> b!5057256 (= e!3156918 Nil!58424)))

(declare-fun b!5057259 () Bool)

(assert (=> b!5057259 (= e!3156919 (++!12773 (list!18969 (left!42801 (left!42801 ys!41))) (list!18969 (right!43131 (left!42801 ys!41)))))))

(assert (= (and d!1627604 c!867645) b!5057256))

(assert (= (and d!1627604 (not c!867645)) b!5057257))

(assert (= (and b!5057257 c!867646) b!5057258))

(assert (= (and b!5057257 (not c!867646)) b!5057259))

(assert (=> b!5057258 m!6092374))

(assert (=> b!5057259 m!6092264))

(assert (=> b!5057259 m!6092266))

(assert (=> b!5057259 m!6092264))

(assert (=> b!5057259 m!6092266))

(assert (=> b!5057259 m!6092462))

(assert (=> b!5057069 d!1627604))

(declare-fun b!5057262 () Bool)

(declare-fun e!3156921 () List!58548)

(assert (=> b!5057262 (= e!3156921 (list!18970 (xs!18888 (right!43131 ys!41))))))

(declare-fun b!5057261 () Bool)

(declare-fun e!3156920 () List!58548)

(assert (=> b!5057261 (= e!3156920 e!3156921)))

(declare-fun c!867648 () Bool)

(assert (=> b!5057261 (= c!867648 ((_ is Leaf!25836) (right!43131 ys!41)))))

(declare-fun d!1627606 () Bool)

(declare-fun c!867647 () Bool)

(assert (=> d!1627606 (= c!867647 ((_ is Empty!15554) (right!43131 ys!41)))))

(assert (=> d!1627606 (= (list!18969 (right!43131 ys!41)) e!3156920)))

(declare-fun b!5057260 () Bool)

(assert (=> b!5057260 (= e!3156920 Nil!58424)))

(declare-fun b!5057263 () Bool)

(assert (=> b!5057263 (= e!3156921 (++!12773 (list!18969 (left!42801 (right!43131 ys!41))) (list!18969 (right!43131 (right!43131 ys!41)))))))

(assert (= (and d!1627606 c!867647) b!5057260))

(assert (= (and d!1627606 (not c!867647)) b!5057261))

(assert (= (and b!5057261 c!867648) b!5057262))

(assert (= (and b!5057261 (not c!867648)) b!5057263))

(assert (=> b!5057262 m!6092408))

(declare-fun m!6092540 () Bool)

(assert (=> b!5057263 m!6092540))

(declare-fun m!6092542 () Bool)

(assert (=> b!5057263 m!6092542))

(assert (=> b!5057263 m!6092540))

(assert (=> b!5057263 m!6092542))

(declare-fun m!6092544 () Bool)

(assert (=> b!5057263 m!6092544))

(assert (=> b!5057069 d!1627606))

(declare-fun b!5057264 () Bool)

(declare-fun res!2153499 () Bool)

(declare-fun e!3156923 () Bool)

(assert (=> b!5057264 (=> (not res!2153499) (not e!3156923))))

(assert (=> b!5057264 (= res!2153499 (<= (- (height!2131 (left!42801 (right!43131 xs!286))) (height!2131 (right!43131 (right!43131 xs!286)))) 1))))

(declare-fun b!5057265 () Bool)

(declare-fun e!3156922 () Bool)

(assert (=> b!5057265 (= e!3156922 e!3156923)))

(declare-fun res!2153495 () Bool)

(assert (=> b!5057265 (=> (not res!2153495) (not e!3156923))))

(assert (=> b!5057265 (= res!2153495 (<= (- 1) (- (height!2131 (left!42801 (right!43131 xs!286))) (height!2131 (right!43131 (right!43131 xs!286))))))))

(declare-fun b!5057266 () Bool)

(declare-fun res!2153497 () Bool)

(assert (=> b!5057266 (=> (not res!2153497) (not e!3156923))))

(assert (=> b!5057266 (= res!2153497 (not (isEmpty!31610 (left!42801 (right!43131 xs!286)))))))

(declare-fun b!5057267 () Bool)

(assert (=> b!5057267 (= e!3156923 (not (isEmpty!31610 (right!43131 (right!43131 xs!286)))))))

(declare-fun b!5057268 () Bool)

(declare-fun res!2153494 () Bool)

(assert (=> b!5057268 (=> (not res!2153494) (not e!3156923))))

(assert (=> b!5057268 (= res!2153494 (isBalanced!4416 (right!43131 (right!43131 xs!286))))))

(declare-fun d!1627608 () Bool)

(declare-fun res!2153498 () Bool)

(assert (=> d!1627608 (=> res!2153498 e!3156922)))

(assert (=> d!1627608 (= res!2153498 (not ((_ is Node!15554) (right!43131 xs!286))))))

(assert (=> d!1627608 (= (isBalanced!4416 (right!43131 xs!286)) e!3156922)))

(declare-fun b!5057269 () Bool)

(declare-fun res!2153496 () Bool)

(assert (=> b!5057269 (=> (not res!2153496) (not e!3156923))))

(assert (=> b!5057269 (= res!2153496 (isBalanced!4416 (left!42801 (right!43131 xs!286))))))

(assert (= (and d!1627608 (not res!2153498)) b!5057265))

(assert (= (and b!5057265 res!2153495) b!5057264))

(assert (= (and b!5057264 res!2153499) b!5057269))

(assert (= (and b!5057269 res!2153496) b!5057268))

(assert (= (and b!5057268 res!2153494) b!5057266))

(assert (= (and b!5057266 res!2153497) b!5057267))

(declare-fun m!6092546 () Bool)

(assert (=> b!5057268 m!6092546))

(declare-fun m!6092548 () Bool)

(assert (=> b!5057269 m!6092548))

(declare-fun m!6092550 () Bool)

(assert (=> b!5057267 m!6092550))

(assert (=> b!5057265 m!6092440))

(assert (=> b!5057265 m!6092442))

(declare-fun m!6092552 () Bool)

(assert (=> b!5057266 m!6092552))

(assert (=> b!5057264 m!6092440))

(assert (=> b!5057264 m!6092442))

(assert (=> b!5056890 d!1627608))

(declare-fun b!5057270 () Bool)

(declare-fun res!2153505 () Bool)

(declare-fun e!3156925 () Bool)

(assert (=> b!5057270 (=> (not res!2153505) (not e!3156925))))

(assert (=> b!5057270 (= res!2153505 (<= (- (height!2131 (left!42801 (right!43131 ys!41))) (height!2131 (right!43131 (right!43131 ys!41)))) 1))))

(declare-fun b!5057271 () Bool)

(declare-fun e!3156924 () Bool)

(assert (=> b!5057271 (= e!3156924 e!3156925)))

(declare-fun res!2153501 () Bool)

(assert (=> b!5057271 (=> (not res!2153501) (not e!3156925))))

(assert (=> b!5057271 (= res!2153501 (<= (- 1) (- (height!2131 (left!42801 (right!43131 ys!41))) (height!2131 (right!43131 (right!43131 ys!41))))))))

(declare-fun b!5057272 () Bool)

(declare-fun res!2153503 () Bool)

(assert (=> b!5057272 (=> (not res!2153503) (not e!3156925))))

(assert (=> b!5057272 (= res!2153503 (not (isEmpty!31610 (left!42801 (right!43131 ys!41)))))))

(declare-fun b!5057273 () Bool)

(assert (=> b!5057273 (= e!3156925 (not (isEmpty!31610 (right!43131 (right!43131 ys!41)))))))

(declare-fun b!5057274 () Bool)

(declare-fun res!2153500 () Bool)

(assert (=> b!5057274 (=> (not res!2153500) (not e!3156925))))

(assert (=> b!5057274 (= res!2153500 (isBalanced!4416 (right!43131 (right!43131 ys!41))))))

(declare-fun d!1627610 () Bool)

(declare-fun res!2153504 () Bool)

(assert (=> d!1627610 (=> res!2153504 e!3156924)))

(assert (=> d!1627610 (= res!2153504 (not ((_ is Node!15554) (right!43131 ys!41))))))

(assert (=> d!1627610 (= (isBalanced!4416 (right!43131 ys!41)) e!3156924)))

(declare-fun b!5057275 () Bool)

(declare-fun res!2153502 () Bool)

(assert (=> b!5057275 (=> (not res!2153502) (not e!3156925))))

(assert (=> b!5057275 (= res!2153502 (isBalanced!4416 (left!42801 (right!43131 ys!41))))))

(assert (= (and d!1627610 (not res!2153504)) b!5057271))

(assert (= (and b!5057271 res!2153501) b!5057270))

(assert (= (and b!5057270 res!2153505) b!5057275))

(assert (= (and b!5057275 res!2153502) b!5057274))

(assert (= (and b!5057274 res!2153500) b!5057272))

(assert (= (and b!5057272 res!2153503) b!5057273))

(declare-fun m!6092554 () Bool)

(assert (=> b!5057274 m!6092554))

(declare-fun m!6092556 () Bool)

(assert (=> b!5057275 m!6092556))

(declare-fun m!6092558 () Bool)

(assert (=> b!5057273 m!6092558))

(assert (=> b!5057271 m!6092526))

(assert (=> b!5057271 m!6092528))

(declare-fun m!6092560 () Bool)

(assert (=> b!5057272 m!6092560))

(assert (=> b!5057270 m!6092526))

(assert (=> b!5057270 m!6092528))

(assert (=> b!5056981 d!1627610))

(assert (=> b!5057067 d!1627472))

(assert (=> b!5057067 d!1627606))

(assert (=> b!5057067 d!1627588))

(declare-fun call!352184 () List!58548)

(declare-fun call!352185 () List!58548)

(declare-fun bm!352177 () Bool)

(assert (=> bm!352177 (= call!352185 (++!12773 (++!12773 (list!18969 xs!286) (list!18969 (left!42801 (left!42801 ys!41)))) call!352184))))

(declare-fun bm!352178 () Bool)

(declare-fun call!352182 () List!58548)

(declare-fun call!352183 () List!58548)

(assert (=> bm!352178 (= call!352182 (++!12773 call!352183 (list!18969 (right!43131 ys!41))))))

(declare-fun d!1627612 () Bool)

(declare-fun e!3156926 () Bool)

(assert (=> d!1627612 e!3156926))

(declare-fun c!867649 () Bool)

(assert (=> d!1627612 (= c!867649 ((_ is Nil!58424) (++!12773 (list!18969 xs!286) (list!18969 (left!42801 (left!42801 ys!41))))))))

(assert (=> d!1627612 (= (appendAssoc!296 (++!12773 (list!18969 xs!286) (list!18969 (left!42801 (left!42801 ys!41)))) (list!18969 (right!43131 (left!42801 ys!41))) (list!18969 (right!43131 ys!41))) true)))

(declare-fun b!5057276 () Bool)

(assert (=> b!5057276 (= e!3156926 (= call!352182 call!352185))))

(declare-fun lt!2087542 () Bool)

(assert (=> b!5057276 (= lt!2087542 (appendAssoc!296 (t!371231 (++!12773 (list!18969 xs!286) (list!18969 (left!42801 (left!42801 ys!41))))) (list!18969 (right!43131 (left!42801 ys!41))) (list!18969 (right!43131 ys!41))))))

(declare-fun bm!352179 () Bool)

(assert (=> bm!352179 (= call!352183 (++!12773 (++!12773 (list!18969 xs!286) (list!18969 (left!42801 (left!42801 ys!41)))) (list!18969 (right!43131 (left!42801 ys!41)))))))

(declare-fun bm!352180 () Bool)

(assert (=> bm!352180 (= call!352184 (++!12773 (list!18969 (right!43131 (left!42801 ys!41))) (list!18969 (right!43131 ys!41))))))

(declare-fun b!5057277 () Bool)

(assert (=> b!5057277 (= e!3156926 (= call!352182 call!352185))))

(assert (= (and d!1627612 c!867649) b!5057277))

(assert (= (and d!1627612 (not c!867649)) b!5057276))

(assert (= (or b!5057277 b!5057276) bm!352179))

(assert (= (or b!5057277 b!5057276) bm!352180))

(assert (= (or b!5057277 b!5057276) bm!352177))

(assert (= (or b!5057277 b!5057276) bm!352178))

(assert (=> bm!352179 m!6092268))

(assert (=> bm!352179 m!6092266))

(declare-fun m!6092562 () Bool)

(assert (=> bm!352179 m!6092562))

(assert (=> bm!352178 m!6092152))

(declare-fun m!6092564 () Bool)

(assert (=> bm!352178 m!6092564))

(assert (=> b!5057276 m!6092266))

(assert (=> b!5057276 m!6092152))

(declare-fun m!6092566 () Bool)

(assert (=> b!5057276 m!6092566))

(assert (=> bm!352177 m!6092268))

(declare-fun m!6092568 () Bool)

(assert (=> bm!352177 m!6092568))

(assert (=> bm!352180 m!6092266))

(assert (=> bm!352180 m!6092152))

(declare-fun m!6092570 () Bool)

(assert (=> bm!352180 m!6092570))

(assert (=> b!5057067 d!1627612))

(declare-fun b!5057281 () Bool)

(declare-fun e!3156927 () Bool)

(declare-fun lt!2087543 () List!58548)

(assert (=> b!5057281 (= e!3156927 (or (not (= (list!18969 (left!42801 (left!42801 ys!41))) Nil!58424)) (= lt!2087543 (list!18969 xs!286))))))

(declare-fun b!5057278 () Bool)

(declare-fun e!3156928 () List!58548)

(assert (=> b!5057278 (= e!3156928 (list!18969 (left!42801 (left!42801 ys!41))))))

(declare-fun b!5057279 () Bool)

(assert (=> b!5057279 (= e!3156928 (Cons!58424 (h!64872 (list!18969 xs!286)) (++!12773 (t!371231 (list!18969 xs!286)) (list!18969 (left!42801 (left!42801 ys!41))))))))

(declare-fun b!5057280 () Bool)

(declare-fun res!2153506 () Bool)

(assert (=> b!5057280 (=> (not res!2153506) (not e!3156927))))

(assert (=> b!5057280 (= res!2153506 (= (size!39055 lt!2087543) (+ (size!39055 (list!18969 xs!286)) (size!39055 (list!18969 (left!42801 (left!42801 ys!41)))))))))

(declare-fun d!1627614 () Bool)

(assert (=> d!1627614 e!3156927))

(declare-fun res!2153507 () Bool)

(assert (=> d!1627614 (=> (not res!2153507) (not e!3156927))))

(assert (=> d!1627614 (= res!2153507 (= (content!10411 lt!2087543) ((_ map or) (content!10411 (list!18969 xs!286)) (content!10411 (list!18969 (left!42801 (left!42801 ys!41)))))))))

(assert (=> d!1627614 (= lt!2087543 e!3156928)))

(declare-fun c!867650 () Bool)

(assert (=> d!1627614 (= c!867650 ((_ is Nil!58424) (list!18969 xs!286)))))

(assert (=> d!1627614 (= (++!12773 (list!18969 xs!286) (list!18969 (left!42801 (left!42801 ys!41)))) lt!2087543)))

(assert (= (and d!1627614 c!867650) b!5057278))

(assert (= (and d!1627614 (not c!867650)) b!5057279))

(assert (= (and d!1627614 res!2153507) b!5057280))

(assert (= (and b!5057280 res!2153506) b!5057281))

(assert (=> b!5057279 m!6092264))

(declare-fun m!6092572 () Bool)

(assert (=> b!5057279 m!6092572))

(declare-fun m!6092574 () Bool)

(assert (=> b!5057280 m!6092574))

(assert (=> b!5057280 m!6092018))

(assert (=> b!5057280 m!6092130))

(assert (=> b!5057280 m!6092264))

(declare-fun m!6092576 () Bool)

(assert (=> b!5057280 m!6092576))

(declare-fun m!6092578 () Bool)

(assert (=> d!1627614 m!6092578))

(assert (=> d!1627614 m!6092018))

(assert (=> d!1627614 m!6092136))

(assert (=> d!1627614 m!6092264))

(declare-fun m!6092580 () Bool)

(assert (=> d!1627614 m!6092580))

(assert (=> b!5057067 d!1627614))

(assert (=> b!5057067 d!1627586))

(declare-fun d!1627616 () Bool)

(declare-fun lt!2087544 () Bool)

(assert (=> d!1627616 (= lt!2087544 (isEmpty!31612 (list!18969 (left!42801 ys!41))))))

(assert (=> d!1627616 (= lt!2087544 (= (size!39057 (left!42801 ys!41)) 0))))

(assert (=> d!1627616 (= (isEmpty!31610 (left!42801 ys!41)) lt!2087544)))

(declare-fun bs!1189418 () Bool)

(assert (= bs!1189418 d!1627616))

(assert (=> bs!1189418 m!6092150))

(assert (=> bs!1189418 m!6092150))

(declare-fun m!6092582 () Bool)

(assert (=> bs!1189418 m!6092582))

(declare-fun m!6092584 () Bool)

(assert (=> bs!1189418 m!6092584))

(assert (=> b!5056979 d!1627616))

(declare-fun d!1627618 () Bool)

(declare-fun c!867651 () Bool)

(assert (=> d!1627618 (= c!867651 ((_ is Node!15554) (left!42801 (right!43131 ys!41))))))

(declare-fun e!3156929 () Bool)

(assert (=> d!1627618 (= (inv!77500 (left!42801 (right!43131 ys!41))) e!3156929)))

(declare-fun b!5057282 () Bool)

(assert (=> b!5057282 (= e!3156929 (inv!77504 (left!42801 (right!43131 ys!41))))))

(declare-fun b!5057283 () Bool)

(declare-fun e!3156930 () Bool)

(assert (=> b!5057283 (= e!3156929 e!3156930)))

(declare-fun res!2153508 () Bool)

(assert (=> b!5057283 (= res!2153508 (not ((_ is Leaf!25836) (left!42801 (right!43131 ys!41)))))))

(assert (=> b!5057283 (=> res!2153508 e!3156930)))

(declare-fun b!5057284 () Bool)

(assert (=> b!5057284 (= e!3156930 (inv!77505 (left!42801 (right!43131 ys!41))))))

(assert (= (and d!1627618 c!867651) b!5057282))

(assert (= (and d!1627618 (not c!867651)) b!5057283))

(assert (= (and b!5057283 (not res!2153508)) b!5057284))

(declare-fun m!6092586 () Bool)

(assert (=> b!5057282 m!6092586))

(declare-fun m!6092588 () Bool)

(assert (=> b!5057284 m!6092588))

(assert (=> b!5057160 d!1627618))

(declare-fun d!1627620 () Bool)

(declare-fun c!867652 () Bool)

(assert (=> d!1627620 (= c!867652 ((_ is Node!15554) (right!43131 (right!43131 ys!41))))))

(declare-fun e!3156931 () Bool)

(assert (=> d!1627620 (= (inv!77500 (right!43131 (right!43131 ys!41))) e!3156931)))

(declare-fun b!5057285 () Bool)

(assert (=> b!5057285 (= e!3156931 (inv!77504 (right!43131 (right!43131 ys!41))))))

(declare-fun b!5057286 () Bool)

(declare-fun e!3156932 () Bool)

(assert (=> b!5057286 (= e!3156931 e!3156932)))

(declare-fun res!2153509 () Bool)

(assert (=> b!5057286 (= res!2153509 (not ((_ is Leaf!25836) (right!43131 (right!43131 ys!41)))))))

(assert (=> b!5057286 (=> res!2153509 e!3156932)))

(declare-fun b!5057287 () Bool)

(assert (=> b!5057287 (= e!3156932 (inv!77505 (right!43131 (right!43131 ys!41))))))

(assert (= (and d!1627620 c!867652) b!5057285))

(assert (= (and d!1627620 (not c!867652)) b!5057286))

(assert (= (and b!5057286 (not res!2153509)) b!5057287))

(declare-fun m!6092590 () Bool)

(assert (=> b!5057285 m!6092590))

(declare-fun m!6092592 () Bool)

(assert (=> b!5057287 m!6092592))

(assert (=> b!5057160 d!1627620))

(declare-fun d!1627622 () Bool)

(declare-fun lt!2087545 () Int)

(assert (=> d!1627622 (>= lt!2087545 0)))

(declare-fun e!3156933 () Int)

(assert (=> d!1627622 (= lt!2087545 e!3156933)))

(declare-fun c!867653 () Bool)

(assert (=> d!1627622 (= c!867653 ((_ is Nil!58424) (innerList!15642 (xs!18888 xs!286))))))

(assert (=> d!1627622 (= (size!39055 (innerList!15642 (xs!18888 xs!286))) lt!2087545)))

(declare-fun b!5057288 () Bool)

(assert (=> b!5057288 (= e!3156933 0)))

(declare-fun b!5057289 () Bool)

(assert (=> b!5057289 (= e!3156933 (+ 1 (size!39055 (t!371231 (innerList!15642 (xs!18888 xs!286))))))))

(assert (= (and d!1627622 c!867653) b!5057288))

(assert (= (and d!1627622 (not c!867653)) b!5057289))

(declare-fun m!6092594 () Bool)

(assert (=> b!5057289 m!6092594))

(assert (=> d!1627486 d!1627622))

(declare-fun d!1627624 () Bool)

(declare-fun c!867654 () Bool)

(assert (=> d!1627624 (= c!867654 ((_ is Node!15554) (left!42801 (left!42801 ys!41))))))

(declare-fun e!3156934 () Bool)

(assert (=> d!1627624 (= (inv!77500 (left!42801 (left!42801 ys!41))) e!3156934)))

(declare-fun b!5057290 () Bool)

(assert (=> b!5057290 (= e!3156934 (inv!77504 (left!42801 (left!42801 ys!41))))))

(declare-fun b!5057291 () Bool)

(declare-fun e!3156935 () Bool)

(assert (=> b!5057291 (= e!3156934 e!3156935)))

(declare-fun res!2153510 () Bool)

(assert (=> b!5057291 (= res!2153510 (not ((_ is Leaf!25836) (left!42801 (left!42801 ys!41)))))))

(assert (=> b!5057291 (=> res!2153510 e!3156935)))

(declare-fun b!5057292 () Bool)

(assert (=> b!5057292 (= e!3156935 (inv!77505 (left!42801 (left!42801 ys!41))))))

(assert (= (and d!1627624 c!867654) b!5057290))

(assert (= (and d!1627624 (not c!867654)) b!5057291))

(assert (= (and b!5057291 (not res!2153510)) b!5057292))

(declare-fun m!6092596 () Bool)

(assert (=> b!5057290 m!6092596))

(declare-fun m!6092598 () Bool)

(assert (=> b!5057292 m!6092598))

(assert (=> b!5057157 d!1627624))

(declare-fun d!1627626 () Bool)

(declare-fun c!867655 () Bool)

(assert (=> d!1627626 (= c!867655 ((_ is Node!15554) (right!43131 (left!42801 ys!41))))))

(declare-fun e!3156936 () Bool)

(assert (=> d!1627626 (= (inv!77500 (right!43131 (left!42801 ys!41))) e!3156936)))

(declare-fun b!5057293 () Bool)

(assert (=> b!5057293 (= e!3156936 (inv!77504 (right!43131 (left!42801 ys!41))))))

(declare-fun b!5057294 () Bool)

(declare-fun e!3156937 () Bool)

(assert (=> b!5057294 (= e!3156936 e!3156937)))

(declare-fun res!2153511 () Bool)

(assert (=> b!5057294 (= res!2153511 (not ((_ is Leaf!25836) (right!43131 (left!42801 ys!41)))))))

(assert (=> b!5057294 (=> res!2153511 e!3156937)))

(declare-fun b!5057295 () Bool)

(assert (=> b!5057295 (= e!3156937 (inv!77505 (right!43131 (left!42801 ys!41))))))

(assert (= (and d!1627626 c!867655) b!5057293))

(assert (= (and d!1627626 (not c!867655)) b!5057294))

(assert (= (and b!5057294 (not res!2153511)) b!5057295))

(declare-fun m!6092600 () Bool)

(assert (=> b!5057293 m!6092600))

(declare-fun m!6092602 () Bool)

(assert (=> b!5057295 m!6092602))

(assert (=> b!5057157 d!1627626))

(declare-fun d!1627628 () Bool)

(assert (=> d!1627628 (= (inv!77501 (xs!18888 (left!42801 xs!286))) (<= (size!39055 (innerList!15642 (xs!18888 (left!42801 xs!286)))) 2147483647))))

(declare-fun bs!1189419 () Bool)

(assert (= bs!1189419 d!1627628))

(declare-fun m!6092604 () Bool)

(assert (=> bs!1189419 m!6092604))

(assert (=> b!5057147 d!1627628))

(declare-fun b!5057299 () Bool)

(declare-fun e!3156938 () Bool)

(declare-fun lt!2087546 () List!58548)

(assert (=> b!5057299 (= e!3156938 (or (not (= (list!18969 (right!43131 ys!41)) Nil!58424)) (= lt!2087546 (list!18969 (left!42801 ys!41)))))))

(declare-fun b!5057296 () Bool)

(declare-fun e!3156939 () List!58548)

(assert (=> b!5057296 (= e!3156939 (list!18969 (right!43131 ys!41)))))

(declare-fun b!5057297 () Bool)

(assert (=> b!5057297 (= e!3156939 (Cons!58424 (h!64872 (list!18969 (left!42801 ys!41))) (++!12773 (t!371231 (list!18969 (left!42801 ys!41))) (list!18969 (right!43131 ys!41)))))))

(declare-fun b!5057298 () Bool)

(declare-fun res!2153512 () Bool)

(assert (=> b!5057298 (=> (not res!2153512) (not e!3156938))))

(assert (=> b!5057298 (= res!2153512 (= (size!39055 lt!2087546) (+ (size!39055 (list!18969 (left!42801 ys!41))) (size!39055 (list!18969 (right!43131 ys!41))))))))

(declare-fun d!1627630 () Bool)

(assert (=> d!1627630 e!3156938))

(declare-fun res!2153513 () Bool)

(assert (=> d!1627630 (=> (not res!2153513) (not e!3156938))))

(assert (=> d!1627630 (= res!2153513 (= (content!10411 lt!2087546) ((_ map or) (content!10411 (list!18969 (left!42801 ys!41))) (content!10411 (list!18969 (right!43131 ys!41))))))))

(assert (=> d!1627630 (= lt!2087546 e!3156939)))

(declare-fun c!867656 () Bool)

(assert (=> d!1627630 (= c!867656 ((_ is Nil!58424) (list!18969 (left!42801 ys!41))))))

(assert (=> d!1627630 (= (++!12773 (list!18969 (left!42801 ys!41)) (list!18969 (right!43131 ys!41))) lt!2087546)))

(assert (= (and d!1627630 c!867656) b!5057296))

(assert (= (and d!1627630 (not c!867656)) b!5057297))

(assert (= (and d!1627630 res!2153513) b!5057298))

(assert (= (and b!5057298 res!2153512) b!5057299))

(assert (=> b!5057297 m!6092152))

(declare-fun m!6092606 () Bool)

(assert (=> b!5057297 m!6092606))

(declare-fun m!6092608 () Bool)

(assert (=> b!5057298 m!6092608))

(assert (=> b!5057298 m!6092150))

(declare-fun m!6092610 () Bool)

(assert (=> b!5057298 m!6092610))

(assert (=> b!5057298 m!6092152))

(declare-fun m!6092612 () Bool)

(assert (=> b!5057298 m!6092612))

(declare-fun m!6092614 () Bool)

(assert (=> d!1627630 m!6092614))

(assert (=> d!1627630 m!6092150))

(declare-fun m!6092616 () Bool)

(assert (=> d!1627630 m!6092616))

(assert (=> d!1627630 m!6092152))

(declare-fun m!6092618 () Bool)

(assert (=> d!1627630 m!6092618))

(assert (=> b!5056962 d!1627630))

(assert (=> b!5056962 d!1627604))

(assert (=> b!5056962 d!1627606))

(declare-fun d!1627632 () Bool)

(declare-fun lt!2087547 () Bool)

(assert (=> d!1627632 (= lt!2087547 (isEmpty!31612 (list!18969 (left!42801 lt!2087515))))))

(assert (=> d!1627632 (= lt!2087547 (= (size!39057 (left!42801 lt!2087515)) 0))))

(assert (=> d!1627632 (= (isEmpty!31610 (left!42801 lt!2087515)) lt!2087547)))

(declare-fun bs!1189420 () Bool)

(assert (= bs!1189420 d!1627632))

(assert (=> bs!1189420 m!6092088))

(assert (=> bs!1189420 m!6092088))

(declare-fun m!6092620 () Bool)

(assert (=> bs!1189420 m!6092620))

(declare-fun m!6092622 () Bool)

(assert (=> bs!1189420 m!6092622))

(assert (=> b!5056965 d!1627632))

(assert (=> b!5056963 d!1627568))

(assert (=> b!5056963 d!1627570))

(declare-fun e!3156940 () Bool)

(declare-fun lt!2087548 () List!58548)

(declare-fun b!5057303 () Bool)

(assert (=> b!5057303 (= e!3156940 (or (not (= (list!18969 ys!41) Nil!58424)) (= lt!2087548 (t!371231 (list!18969 xs!286)))))))

(declare-fun b!5057300 () Bool)

(declare-fun e!3156941 () List!58548)

(assert (=> b!5057300 (= e!3156941 (list!18969 ys!41))))

(declare-fun b!5057301 () Bool)

(assert (=> b!5057301 (= e!3156941 (Cons!58424 (h!64872 (t!371231 (list!18969 xs!286))) (++!12773 (t!371231 (t!371231 (list!18969 xs!286))) (list!18969 ys!41))))))

(declare-fun b!5057302 () Bool)

(declare-fun res!2153514 () Bool)

(assert (=> b!5057302 (=> (not res!2153514) (not e!3156940))))

(assert (=> b!5057302 (= res!2153514 (= (size!39055 lt!2087548) (+ (size!39055 (t!371231 (list!18969 xs!286))) (size!39055 (list!18969 ys!41)))))))

(declare-fun d!1627634 () Bool)

(assert (=> d!1627634 e!3156940))

(declare-fun res!2153515 () Bool)

(assert (=> d!1627634 (=> (not res!2153515) (not e!3156940))))

(assert (=> d!1627634 (= res!2153515 (= (content!10411 lt!2087548) ((_ map or) (content!10411 (t!371231 (list!18969 xs!286))) (content!10411 (list!18969 ys!41)))))))

(assert (=> d!1627634 (= lt!2087548 e!3156941)))

(declare-fun c!867657 () Bool)

(assert (=> d!1627634 (= c!867657 ((_ is Nil!58424) (t!371231 (list!18969 xs!286))))))

(assert (=> d!1627634 (= (++!12773 (t!371231 (list!18969 xs!286)) (list!18969 ys!41)) lt!2087548)))

(assert (= (and d!1627634 c!867657) b!5057300))

(assert (= (and d!1627634 (not c!867657)) b!5057301))

(assert (= (and d!1627634 res!2153515) b!5057302))

(assert (= (and b!5057302 res!2153514) b!5057303))

(assert (=> b!5057301 m!6092020))

(declare-fun m!6092624 () Bool)

(assert (=> b!5057301 m!6092624))

(declare-fun m!6092626 () Bool)

(assert (=> b!5057302 m!6092626))

(assert (=> b!5057302 m!6092448))

(assert (=> b!5057302 m!6092020))

(assert (=> b!5057302 m!6092132))

(declare-fun m!6092628 () Bool)

(assert (=> d!1627634 m!6092628))

(assert (=> d!1627634 m!6092394))

(assert (=> d!1627634 m!6092020))

(assert (=> d!1627634 m!6092138))

(assert (=> b!5056952 d!1627634))

(assert (=> b!5056978 d!1627580))

(assert (=> b!5056978 d!1627582))

(assert (=> b!5056887 d!1627576))

(assert (=> b!5056887 d!1627578))

(declare-fun bm!352181 () Bool)

(declare-fun call!352189 () List!58548)

(declare-fun call!352188 () List!58548)

(assert (=> bm!352181 (= call!352189 (++!12773 (list!18969 (left!42801 (right!43131 xs!286))) call!352188))))

(declare-fun bm!352182 () Bool)

(declare-fun call!352186 () List!58548)

(declare-fun call!352187 () List!58548)

(assert (=> bm!352182 (= call!352186 (++!12773 call!352187 (list!18969 ys!41)))))

(declare-fun d!1627636 () Bool)

(declare-fun e!3156942 () Bool)

(assert (=> d!1627636 e!3156942))

(declare-fun c!867658 () Bool)

(assert (=> d!1627636 (= c!867658 ((_ is Nil!58424) (list!18969 (left!42801 (right!43131 xs!286)))))))

(assert (=> d!1627636 (= (appendAssoc!296 (list!18969 (left!42801 (right!43131 xs!286))) (list!18969 (right!43131 (right!43131 xs!286))) (list!18969 ys!41)) true)))

(declare-fun b!5057304 () Bool)

(assert (=> b!5057304 (= e!3156942 (= call!352186 call!352189))))

(declare-fun lt!2087549 () Bool)

(assert (=> b!5057304 (= lt!2087549 (appendAssoc!296 (t!371231 (list!18969 (left!42801 (right!43131 xs!286)))) (list!18969 (right!43131 (right!43131 xs!286))) (list!18969 ys!41)))))

(declare-fun bm!352183 () Bool)

(assert (=> bm!352183 (= call!352187 (++!12773 (list!18969 (left!42801 (right!43131 xs!286))) (list!18969 (right!43131 (right!43131 xs!286)))))))

(declare-fun bm!352184 () Bool)

(assert (=> bm!352184 (= call!352188 (++!12773 (list!18969 (right!43131 (right!43131 xs!286))) (list!18969 ys!41)))))

(declare-fun b!5057305 () Bool)

(assert (=> b!5057305 (= e!3156942 (= call!352186 call!352189))))

(assert (= (and d!1627636 c!867658) b!5057305))

(assert (= (and d!1627636 (not c!867658)) b!5057304))

(assert (= (or b!5057305 b!5057304) bm!352183))

(assert (= (or b!5057305 b!5057304) bm!352184))

(assert (= (or b!5057305 b!5057304) bm!352181))

(assert (= (or b!5057305 b!5057304) bm!352182))

(assert (=> bm!352183 m!6092280))

(assert (=> bm!352183 m!6092276))

(declare-fun m!6092630 () Bool)

(assert (=> bm!352183 m!6092630))

(assert (=> bm!352182 m!6092020))

(declare-fun m!6092632 () Bool)

(assert (=> bm!352182 m!6092632))

(assert (=> b!5057304 m!6092276))

(assert (=> b!5057304 m!6092020))

(declare-fun m!6092634 () Bool)

(assert (=> b!5057304 m!6092634))

(assert (=> bm!352181 m!6092280))

(declare-fun m!6092636 () Bool)

(assert (=> bm!352181 m!6092636))

(assert (=> bm!352184 m!6092276))

(assert (=> bm!352184 m!6092020))

(assert (=> bm!352184 m!6092278))

(assert (=> b!5057064 d!1627636))

(declare-fun b!5057308 () Bool)

(declare-fun e!3156944 () List!58548)

(assert (=> b!5057308 (= e!3156944 (list!18970 (xs!18888 (left!42801 (right!43131 xs!286)))))))

(declare-fun b!5057307 () Bool)

(declare-fun e!3156943 () List!58548)

(assert (=> b!5057307 (= e!3156943 e!3156944)))

(declare-fun c!867660 () Bool)

(assert (=> b!5057307 (= c!867660 ((_ is Leaf!25836) (left!42801 (right!43131 xs!286))))))

(declare-fun d!1627638 () Bool)

(declare-fun c!867659 () Bool)

(assert (=> d!1627638 (= c!867659 ((_ is Empty!15554) (left!42801 (right!43131 xs!286))))))

(assert (=> d!1627638 (= (list!18969 (left!42801 (right!43131 xs!286))) e!3156943)))

(declare-fun b!5057306 () Bool)

(assert (=> b!5057306 (= e!3156943 Nil!58424)))

(declare-fun b!5057309 () Bool)

(assert (=> b!5057309 (= e!3156944 (++!12773 (list!18969 (left!42801 (left!42801 (right!43131 xs!286)))) (list!18969 (right!43131 (left!42801 (right!43131 xs!286))))))))

(assert (= (and d!1627638 c!867659) b!5057306))

(assert (= (and d!1627638 (not c!867659)) b!5057307))

(assert (= (and b!5057307 c!867660) b!5057308))

(assert (= (and b!5057307 (not c!867660)) b!5057309))

(declare-fun m!6092638 () Bool)

(assert (=> b!5057308 m!6092638))

(declare-fun m!6092640 () Bool)

(assert (=> b!5057309 m!6092640))

(declare-fun m!6092642 () Bool)

(assert (=> b!5057309 m!6092642))

(assert (=> b!5057309 m!6092640))

(assert (=> b!5057309 m!6092642))

(declare-fun m!6092644 () Bool)

(assert (=> b!5057309 m!6092644))

(assert (=> b!5057064 d!1627638))

(declare-fun b!5057312 () Bool)

(declare-fun e!3156946 () List!58548)

(assert (=> b!5057312 (= e!3156946 (list!18970 (xs!18888 (right!43131 (right!43131 xs!286)))))))

(declare-fun b!5057311 () Bool)

(declare-fun e!3156945 () List!58548)

(assert (=> b!5057311 (= e!3156945 e!3156946)))

(declare-fun c!867662 () Bool)

(assert (=> b!5057311 (= c!867662 ((_ is Leaf!25836) (right!43131 (right!43131 xs!286))))))

(declare-fun d!1627640 () Bool)

(declare-fun c!867661 () Bool)

(assert (=> d!1627640 (= c!867661 ((_ is Empty!15554) (right!43131 (right!43131 xs!286))))))

(assert (=> d!1627640 (= (list!18969 (right!43131 (right!43131 xs!286))) e!3156945)))

(declare-fun b!5057310 () Bool)

(assert (=> b!5057310 (= e!3156945 Nil!58424)))

(declare-fun b!5057313 () Bool)

(assert (=> b!5057313 (= e!3156946 (++!12773 (list!18969 (left!42801 (right!43131 (right!43131 xs!286)))) (list!18969 (right!43131 (right!43131 (right!43131 xs!286))))))))

(assert (= (and d!1627640 c!867661) b!5057310))

(assert (= (and d!1627640 (not c!867661)) b!5057311))

(assert (= (and b!5057311 c!867662) b!5057312))

(assert (= (and b!5057311 (not c!867662)) b!5057313))

(declare-fun m!6092646 () Bool)

(assert (=> b!5057312 m!6092646))

(declare-fun m!6092648 () Bool)

(assert (=> b!5057313 m!6092648))

(declare-fun m!6092650 () Bool)

(assert (=> b!5057313 m!6092650))

(assert (=> b!5057313 m!6092648))

(assert (=> b!5057313 m!6092650))

(declare-fun m!6092652 () Bool)

(assert (=> b!5057313 m!6092652))

(assert (=> b!5057064 d!1627640))

(assert (=> b!5057064 d!1627474))

(declare-fun bm!352185 () Bool)

(declare-fun call!352193 () List!58548)

(declare-fun call!352192 () List!58548)

(assert (=> bm!352185 (= call!352193 (++!12773 (list!18969 (left!42801 xs!286)) call!352192))))

(declare-fun bm!352186 () Bool)

(declare-fun call!352190 () List!58548)

(declare-fun call!352191 () List!58548)

(assert (=> bm!352186 (= call!352190 (++!12773 call!352191 (list!18969 ys!41)))))

(declare-fun d!1627642 () Bool)

(declare-fun e!3156947 () Bool)

(assert (=> d!1627642 e!3156947))

(declare-fun c!867663 () Bool)

(assert (=> d!1627642 (= c!867663 ((_ is Nil!58424) (list!18969 (left!42801 xs!286))))))

(assert (=> d!1627642 (= (appendAssoc!296 (list!18969 (left!42801 xs!286)) (list!18969 (right!43131 xs!286)) (list!18969 ys!41)) true)))

(declare-fun b!5057314 () Bool)

(assert (=> b!5057314 (= e!3156947 (= call!352190 call!352193))))

(declare-fun lt!2087550 () Bool)

(assert (=> b!5057314 (= lt!2087550 (appendAssoc!296 (t!371231 (list!18969 (left!42801 xs!286))) (list!18969 (right!43131 xs!286)) (list!18969 ys!41)))))

(declare-fun bm!352187 () Bool)

(assert (=> bm!352187 (= call!352191 (++!12773 (list!18969 (left!42801 xs!286)) (list!18969 (right!43131 xs!286))))))

(declare-fun bm!352188 () Bool)

(assert (=> bm!352188 (= call!352192 (++!12773 (list!18969 (right!43131 xs!286)) (list!18969 ys!41)))))

(declare-fun b!5057315 () Bool)

(assert (=> b!5057315 (= e!3156947 (= call!352190 call!352193))))

(assert (= (and d!1627642 c!867663) b!5057315))

(assert (= (and d!1627642 (not c!867663)) b!5057314))

(assert (= (or b!5057315 b!5057314) bm!352187))

(assert (= (or b!5057315 b!5057314) bm!352188))

(assert (= (or b!5057315 b!5057314) bm!352185))

(assert (= (or b!5057315 b!5057314) bm!352186))

(assert (=> bm!352187 m!6092142))

(assert (=> bm!352187 m!6092144))

(assert (=> bm!352187 m!6092146))

(assert (=> bm!352186 m!6092020))

(declare-fun m!6092654 () Bool)

(assert (=> bm!352186 m!6092654))

(assert (=> b!5057314 m!6092144))

(assert (=> b!5057314 m!6092020))

(declare-fun m!6092656 () Bool)

(assert (=> b!5057314 m!6092656))

(assert (=> bm!352185 m!6092142))

(declare-fun m!6092658 () Bool)

(assert (=> bm!352185 m!6092658))

(assert (=> bm!352188 m!6092144))

(assert (=> bm!352188 m!6092020))

(declare-fun m!6092660 () Bool)

(assert (=> bm!352188 m!6092660))

(assert (=> b!5057062 d!1627642))

(declare-fun b!5057318 () Bool)

(declare-fun e!3156949 () List!58548)

(assert (=> b!5057318 (= e!3156949 (list!18970 (xs!18888 (left!42801 xs!286))))))

(declare-fun b!5057317 () Bool)

(declare-fun e!3156948 () List!58548)

(assert (=> b!5057317 (= e!3156948 e!3156949)))

(declare-fun c!867665 () Bool)

(assert (=> b!5057317 (= c!867665 ((_ is Leaf!25836) (left!42801 xs!286)))))

(declare-fun d!1627644 () Bool)

(declare-fun c!867664 () Bool)

(assert (=> d!1627644 (= c!867664 ((_ is Empty!15554) (left!42801 xs!286)))))

(assert (=> d!1627644 (= (list!18969 (left!42801 xs!286)) e!3156948)))

(declare-fun b!5057316 () Bool)

(assert (=> b!5057316 (= e!3156948 Nil!58424)))

(declare-fun b!5057319 () Bool)

(assert (=> b!5057319 (= e!3156949 (++!12773 (list!18969 (left!42801 (left!42801 xs!286))) (list!18969 (right!43131 (left!42801 xs!286)))))))

(assert (= (and d!1627644 c!867664) b!5057316))

(assert (= (and d!1627644 (not c!867664)) b!5057317))

(assert (= (and b!5057317 c!867665) b!5057318))

(assert (= (and b!5057317 (not c!867665)) b!5057319))

(declare-fun m!6092662 () Bool)

(assert (=> b!5057318 m!6092662))

(declare-fun m!6092664 () Bool)

(assert (=> b!5057319 m!6092664))

(declare-fun m!6092666 () Bool)

(assert (=> b!5057319 m!6092666))

(assert (=> b!5057319 m!6092664))

(assert (=> b!5057319 m!6092666))

(declare-fun m!6092668 () Bool)

(assert (=> b!5057319 m!6092668))

(assert (=> b!5057062 d!1627644))

(declare-fun b!5057322 () Bool)

(declare-fun e!3156951 () List!58548)

(assert (=> b!5057322 (= e!3156951 (list!18970 (xs!18888 (right!43131 xs!286))))))

(declare-fun b!5057321 () Bool)

(declare-fun e!3156950 () List!58548)

(assert (=> b!5057321 (= e!3156950 e!3156951)))

(declare-fun c!867667 () Bool)

(assert (=> b!5057321 (= c!867667 ((_ is Leaf!25836) (right!43131 xs!286)))))

(declare-fun d!1627646 () Bool)

(declare-fun c!867666 () Bool)

(assert (=> d!1627646 (= c!867666 ((_ is Empty!15554) (right!43131 xs!286)))))

(assert (=> d!1627646 (= (list!18969 (right!43131 xs!286)) e!3156950)))

(declare-fun b!5057320 () Bool)

(assert (=> b!5057320 (= e!3156950 Nil!58424)))

(declare-fun b!5057323 () Bool)

(assert (=> b!5057323 (= e!3156951 (++!12773 (list!18969 (left!42801 (right!43131 xs!286))) (list!18969 (right!43131 (right!43131 xs!286)))))))

(assert (= (and d!1627646 c!867666) b!5057320))

(assert (= (and d!1627646 (not c!867666)) b!5057321))

(assert (= (and b!5057321 c!867667) b!5057322))

(assert (= (and b!5057321 (not c!867667)) b!5057323))

(assert (=> b!5057322 m!6092432))

(assert (=> b!5057323 m!6092280))

(assert (=> b!5057323 m!6092276))

(assert (=> b!5057323 m!6092280))

(assert (=> b!5057323 m!6092276))

(assert (=> b!5057323 m!6092630))

(assert (=> b!5057062 d!1627646))

(assert (=> b!5057062 d!1627474))

(declare-fun d!1627648 () Bool)

(declare-fun c!867668 () Bool)

(assert (=> d!1627648 (= c!867668 ((_ is Node!15554) (left!42801 (right!43131 xs!286))))))

(declare-fun e!3156952 () Bool)

(assert (=> d!1627648 (= (inv!77500 (left!42801 (right!43131 xs!286))) e!3156952)))

(declare-fun b!5057324 () Bool)

(assert (=> b!5057324 (= e!3156952 (inv!77504 (left!42801 (right!43131 xs!286))))))

(declare-fun b!5057325 () Bool)

(declare-fun e!3156953 () Bool)

(assert (=> b!5057325 (= e!3156952 e!3156953)))

(declare-fun res!2153516 () Bool)

(assert (=> b!5057325 (= res!2153516 (not ((_ is Leaf!25836) (left!42801 (right!43131 xs!286)))))))

(assert (=> b!5057325 (=> res!2153516 e!3156953)))

(declare-fun b!5057326 () Bool)

(assert (=> b!5057326 (= e!3156953 (inv!77505 (left!42801 (right!43131 xs!286))))))

(assert (= (and d!1627648 c!867668) b!5057324))

(assert (= (and d!1627648 (not c!867668)) b!5057325))

(assert (= (and b!5057325 (not res!2153516)) b!5057326))

(declare-fun m!6092670 () Bool)

(assert (=> b!5057324 m!6092670))

(declare-fun m!6092672 () Bool)

(assert (=> b!5057326 m!6092672))

(assert (=> b!5057149 d!1627648))

(declare-fun d!1627652 () Bool)

(declare-fun c!867669 () Bool)

(assert (=> d!1627652 (= c!867669 ((_ is Node!15554) (right!43131 (right!43131 xs!286))))))

(declare-fun e!3156954 () Bool)

(assert (=> d!1627652 (= (inv!77500 (right!43131 (right!43131 xs!286))) e!3156954)))

(declare-fun b!5057327 () Bool)

(assert (=> b!5057327 (= e!3156954 (inv!77504 (right!43131 (right!43131 xs!286))))))

(declare-fun b!5057328 () Bool)

(declare-fun e!3156955 () Bool)

(assert (=> b!5057328 (= e!3156954 e!3156955)))

(declare-fun res!2153517 () Bool)

(assert (=> b!5057328 (= res!2153517 (not ((_ is Leaf!25836) (right!43131 (right!43131 xs!286)))))))

(assert (=> b!5057328 (=> res!2153517 e!3156955)))

(declare-fun b!5057329 () Bool)

(assert (=> b!5057329 (= e!3156955 (inv!77505 (right!43131 (right!43131 xs!286))))))

(assert (= (and d!1627652 c!867669) b!5057327))

(assert (= (and d!1627652 (not c!867669)) b!5057328))

(assert (= (and b!5057328 (not res!2153517)) b!5057329))

(declare-fun m!6092674 () Bool)

(assert (=> b!5057327 m!6092674))

(declare-fun m!6092676 () Bool)

(assert (=> b!5057329 m!6092676))

(assert (=> b!5057149 d!1627652))

(declare-fun b!5057333 () Bool)

(declare-fun e!3156956 () Bool)

(declare-fun lt!2087551 () List!58548)

(assert (=> b!5057333 (= e!3156956 (or (not (= (list!18969 (right!43131 xs!286)) Nil!58424)) (= lt!2087551 (list!18969 (left!42801 xs!286)))))))

(declare-fun b!5057330 () Bool)

(declare-fun e!3156957 () List!58548)

(assert (=> b!5057330 (= e!3156957 (list!18969 (right!43131 xs!286)))))

(declare-fun b!5057331 () Bool)

(assert (=> b!5057331 (= e!3156957 (Cons!58424 (h!64872 (list!18969 (left!42801 xs!286))) (++!12773 (t!371231 (list!18969 (left!42801 xs!286))) (list!18969 (right!43131 xs!286)))))))

(declare-fun b!5057332 () Bool)

(declare-fun res!2153518 () Bool)

(assert (=> b!5057332 (=> (not res!2153518) (not e!3156956))))

(assert (=> b!5057332 (= res!2153518 (= (size!39055 lt!2087551) (+ (size!39055 (list!18969 (left!42801 xs!286))) (size!39055 (list!18969 (right!43131 xs!286))))))))

(declare-fun d!1627654 () Bool)

(assert (=> d!1627654 e!3156956))

(declare-fun res!2153519 () Bool)

(assert (=> d!1627654 (=> (not res!2153519) (not e!3156956))))

(assert (=> d!1627654 (= res!2153519 (= (content!10411 lt!2087551) ((_ map or) (content!10411 (list!18969 (left!42801 xs!286))) (content!10411 (list!18969 (right!43131 xs!286))))))))

(assert (=> d!1627654 (= lt!2087551 e!3156957)))

(declare-fun c!867670 () Bool)

(assert (=> d!1627654 (= c!867670 ((_ is Nil!58424) (list!18969 (left!42801 xs!286))))))

(assert (=> d!1627654 (= (++!12773 (list!18969 (left!42801 xs!286)) (list!18969 (right!43131 xs!286))) lt!2087551)))

(assert (= (and d!1627654 c!867670) b!5057330))

(assert (= (and d!1627654 (not c!867670)) b!5057331))

(assert (= (and d!1627654 res!2153519) b!5057332))

(assert (= (and b!5057332 res!2153518) b!5057333))

(assert (=> b!5057331 m!6092144))

(declare-fun m!6092678 () Bool)

(assert (=> b!5057331 m!6092678))

(declare-fun m!6092680 () Bool)

(assert (=> b!5057332 m!6092680))

(assert (=> b!5057332 m!6092142))

(declare-fun m!6092682 () Bool)

(assert (=> b!5057332 m!6092682))

(assert (=> b!5057332 m!6092144))

(declare-fun m!6092684 () Bool)

(assert (=> b!5057332 m!6092684))

(declare-fun m!6092686 () Bool)

(assert (=> d!1627654 m!6092686))

(assert (=> d!1627654 m!6092142))

(declare-fun m!6092688 () Bool)

(assert (=> d!1627654 m!6092688))

(assert (=> d!1627654 m!6092144))

(declare-fun m!6092690 () Bool)

(assert (=> d!1627654 m!6092690))

(assert (=> b!5056958 d!1627654))

(assert (=> b!5056958 d!1627644))

(assert (=> b!5056958 d!1627646))

(declare-fun b!5057334 () Bool)

(declare-fun res!2153525 () Bool)

(declare-fun e!3156959 () Bool)

(assert (=> b!5057334 (=> (not res!2153525) (not e!3156959))))

(assert (=> b!5057334 (= res!2153525 (<= (- (height!2131 (left!42801 (left!42801 lt!2087515))) (height!2131 (right!43131 (left!42801 lt!2087515)))) 1))))

(declare-fun b!5057335 () Bool)

(declare-fun e!3156958 () Bool)

(assert (=> b!5057335 (= e!3156958 e!3156959)))

(declare-fun res!2153521 () Bool)

(assert (=> b!5057335 (=> (not res!2153521) (not e!3156959))))

(assert (=> b!5057335 (= res!2153521 (<= (- 1) (- (height!2131 (left!42801 (left!42801 lt!2087515))) (height!2131 (right!43131 (left!42801 lt!2087515))))))))

(declare-fun b!5057336 () Bool)

(declare-fun res!2153523 () Bool)

(assert (=> b!5057336 (=> (not res!2153523) (not e!3156959))))

(assert (=> b!5057336 (= res!2153523 (not (isEmpty!31610 (left!42801 (left!42801 lt!2087515)))))))

(declare-fun b!5057337 () Bool)

(assert (=> b!5057337 (= e!3156959 (not (isEmpty!31610 (right!43131 (left!42801 lt!2087515)))))))

(declare-fun b!5057338 () Bool)

(declare-fun res!2153520 () Bool)

(assert (=> b!5057338 (=> (not res!2153520) (not e!3156959))))

(assert (=> b!5057338 (= res!2153520 (isBalanced!4416 (right!43131 (left!42801 lt!2087515))))))

(declare-fun d!1627656 () Bool)

(declare-fun res!2153524 () Bool)

(assert (=> d!1627656 (=> res!2153524 e!3156958)))

(assert (=> d!1627656 (= res!2153524 (not ((_ is Node!15554) (left!42801 lt!2087515))))))

(assert (=> d!1627656 (= (isBalanced!4416 (left!42801 lt!2087515)) e!3156958)))

(declare-fun b!5057339 () Bool)

(declare-fun res!2153522 () Bool)

(assert (=> b!5057339 (=> (not res!2153522) (not e!3156959))))

(assert (=> b!5057339 (= res!2153522 (isBalanced!4416 (left!42801 (left!42801 lt!2087515))))))

(assert (= (and d!1627656 (not res!2153524)) b!5057335))

(assert (= (and b!5057335 res!2153521) b!5057334))

(assert (= (and b!5057334 res!2153525) b!5057339))

(assert (= (and b!5057339 res!2153522) b!5057338))

(assert (= (and b!5057338 res!2153520) b!5057336))

(assert (= (and b!5057336 res!2153523) b!5057337))

(declare-fun m!6092692 () Bool)

(assert (=> b!5057338 m!6092692))

(declare-fun m!6092694 () Bool)

(assert (=> b!5057339 m!6092694))

(declare-fun m!6092696 () Bool)

(assert (=> b!5057337 m!6092696))

(declare-fun m!6092698 () Bool)

(assert (=> b!5057335 m!6092698))

(declare-fun m!6092700 () Bool)

(assert (=> b!5057335 m!6092700))

(declare-fun m!6092702 () Bool)

(assert (=> b!5057336 m!6092702))

(assert (=> b!5057334 m!6092698))

(assert (=> b!5057334 m!6092700))

(assert (=> b!5056968 d!1627656))

(declare-fun d!1627658 () Bool)

(declare-fun res!2153526 () Bool)

(declare-fun e!3156960 () Bool)

(assert (=> d!1627658 (=> (not res!2153526) (not e!3156960))))

(assert (=> d!1627658 (= res!2153526 (<= (size!39055 (list!18970 (xs!18888 xs!286))) 512))))

(assert (=> d!1627658 (= (inv!77505 xs!286) e!3156960)))

(declare-fun b!5057340 () Bool)

(declare-fun res!2153527 () Bool)

(assert (=> b!5057340 (=> (not res!2153527) (not e!3156960))))

(assert (=> b!5057340 (= res!2153527 (= (csize!31339 xs!286) (size!39055 (list!18970 (xs!18888 xs!286)))))))

(declare-fun b!5057341 () Bool)

(assert (=> b!5057341 (= e!3156960 (and (> (csize!31339 xs!286) 0) (<= (csize!31339 xs!286) 512)))))

(assert (= (and d!1627658 res!2153526) b!5057340))

(assert (= (and b!5057340 res!2153527) b!5057341))

(assert (=> d!1627658 m!6092140))

(assert (=> d!1627658 m!6092140))

(declare-fun m!6092704 () Bool)

(assert (=> d!1627658 m!6092704))

(assert (=> b!5057340 m!6092140))

(assert (=> b!5057340 m!6092140))

(assert (=> b!5057340 m!6092704))

(assert (=> b!5056912 d!1627658))

(declare-fun d!1627660 () Bool)

(declare-fun res!2153532 () Bool)

(declare-fun e!3156963 () Bool)

(assert (=> d!1627660 (=> (not res!2153532) (not e!3156963))))

(assert (=> d!1627660 (= res!2153532 (<= (size!39055 (list!18970 (xs!18888 ys!41))) 512))))

(assert (=> d!1627660 (= (inv!77505 ys!41) e!3156963)))

(declare-fun b!5057346 () Bool)

(declare-fun res!2153533 () Bool)

(assert (=> b!5057346 (=> (not res!2153533) (not e!3156963))))

(assert (=> b!5057346 (= res!2153533 (= (csize!31339 ys!41) (size!39055 (list!18970 (xs!18888 ys!41)))))))

(declare-fun b!5057347 () Bool)

(assert (=> b!5057347 (= e!3156963 (and (> (csize!31339 ys!41) 0) (<= (csize!31339 ys!41) 512)))))

(assert (= (and d!1627660 res!2153532) b!5057346))

(assert (= (and b!5057346 res!2153533) b!5057347))

(assert (=> d!1627660 m!6092148))

(assert (=> d!1627660 m!6092148))

(declare-fun m!6092706 () Bool)

(assert (=> d!1627660 m!6092706))

(assert (=> b!5057346 m!6092148))

(assert (=> b!5057346 m!6092148))

(assert (=> b!5057346 m!6092706))

(assert (=> b!5056921 d!1627660))

(declare-fun b!5057348 () Bool)

(declare-fun res!2153539 () Bool)

(declare-fun e!3156965 () Bool)

(assert (=> b!5057348 (=> (not res!2153539) (not e!3156965))))

(assert (=> b!5057348 (= res!2153539 (<= (- (height!2131 (left!42801 (left!42801 ys!41))) (height!2131 (right!43131 (left!42801 ys!41)))) 1))))

(declare-fun b!5057349 () Bool)

(declare-fun e!3156964 () Bool)

(assert (=> b!5057349 (= e!3156964 e!3156965)))

(declare-fun res!2153535 () Bool)

(assert (=> b!5057349 (=> (not res!2153535) (not e!3156965))))

(assert (=> b!5057349 (= res!2153535 (<= (- 1) (- (height!2131 (left!42801 (left!42801 ys!41))) (height!2131 (right!43131 (left!42801 ys!41))))))))

(declare-fun b!5057350 () Bool)

(declare-fun res!2153537 () Bool)

(assert (=> b!5057350 (=> (not res!2153537) (not e!3156965))))

(assert (=> b!5057350 (= res!2153537 (not (isEmpty!31610 (left!42801 (left!42801 ys!41)))))))

(declare-fun b!5057351 () Bool)

(assert (=> b!5057351 (= e!3156965 (not (isEmpty!31610 (right!43131 (left!42801 ys!41)))))))

(declare-fun b!5057352 () Bool)

(declare-fun res!2153534 () Bool)

(assert (=> b!5057352 (=> (not res!2153534) (not e!3156965))))

(assert (=> b!5057352 (= res!2153534 (isBalanced!4416 (right!43131 (left!42801 ys!41))))))

(declare-fun d!1627662 () Bool)

(declare-fun res!2153538 () Bool)

(assert (=> d!1627662 (=> res!2153538 e!3156964)))

(assert (=> d!1627662 (= res!2153538 (not ((_ is Node!15554) (left!42801 ys!41))))))

(assert (=> d!1627662 (= (isBalanced!4416 (left!42801 ys!41)) e!3156964)))

(declare-fun b!5057353 () Bool)

(declare-fun res!2153536 () Bool)

(assert (=> b!5057353 (=> (not res!2153536) (not e!3156965))))

(assert (=> b!5057353 (= res!2153536 (isBalanced!4416 (left!42801 (left!42801 ys!41))))))

(assert (= (and d!1627662 (not res!2153538)) b!5057349))

(assert (= (and b!5057349 res!2153535) b!5057348))

(assert (= (and b!5057348 res!2153539) b!5057353))

(assert (= (and b!5057353 res!2153536) b!5057352))

(assert (= (and b!5057352 res!2153534) b!5057350))

(assert (= (and b!5057350 res!2153537) b!5057351))

(declare-fun m!6092708 () Bool)

(assert (=> b!5057352 m!6092708))

(declare-fun m!6092710 () Bool)

(assert (=> b!5057353 m!6092710))

(declare-fun m!6092712 () Bool)

(assert (=> b!5057351 m!6092712))

(assert (=> b!5057349 m!6092416))

(assert (=> b!5057349 m!6092418))

(declare-fun m!6092714 () Bool)

(assert (=> b!5057350 m!6092714))

(assert (=> b!5057348 m!6092416))

(assert (=> b!5057348 m!6092418))

(assert (=> b!5056982 d!1627662))

(declare-fun d!1627664 () Bool)

(declare-fun res!2153540 () Bool)

(declare-fun e!3156966 () Bool)

(assert (=> d!1627664 (=> (not res!2153540) (not e!3156966))))

(assert (=> d!1627664 (= res!2153540 (= (csize!31338 ys!41) (+ (size!39057 (left!42801 ys!41)) (size!39057 (right!43131 ys!41)))))))

(assert (=> d!1627664 (= (inv!77504 ys!41) e!3156966)))

(declare-fun b!5057354 () Bool)

(declare-fun res!2153541 () Bool)

(assert (=> b!5057354 (=> (not res!2153541) (not e!3156966))))

(assert (=> b!5057354 (= res!2153541 (and (not (= (left!42801 ys!41) Empty!15554)) (not (= (right!43131 ys!41) Empty!15554))))))

(declare-fun b!5057355 () Bool)

(declare-fun res!2153542 () Bool)

(assert (=> b!5057355 (=> (not res!2153542) (not e!3156966))))

(assert (=> b!5057355 (= res!2153542 (= (cheight!15765 ys!41) (+ (max!0 (height!2131 (left!42801 ys!41)) (height!2131 (right!43131 ys!41))) 1)))))

(declare-fun b!5057356 () Bool)

(assert (=> b!5057356 (= e!3156966 (<= 0 (cheight!15765 ys!41)))))

(assert (= (and d!1627664 res!2153540) b!5057354))

(assert (= (and b!5057354 res!2153541) b!5057355))

(assert (= (and b!5057355 res!2153542) b!5057356))

(assert (=> d!1627664 m!6092584))

(declare-fun m!6092716 () Bool)

(assert (=> d!1627664 m!6092716))

(assert (=> b!5057355 m!6092174))

(assert (=> b!5057355 m!6092176))

(assert (=> b!5057355 m!6092174))

(assert (=> b!5057355 m!6092176))

(declare-fun m!6092718 () Bool)

(assert (=> b!5057355 m!6092718))

(assert (=> b!5056919 d!1627664))

(declare-fun b!5057357 () Bool)

(declare-fun res!2153548 () Bool)

(declare-fun e!3156968 () Bool)

(assert (=> b!5057357 (=> (not res!2153548) (not e!3156968))))

(assert (=> b!5057357 (= res!2153548 (<= (- (height!2131 (left!42801 (left!42801 xs!286))) (height!2131 (right!43131 (left!42801 xs!286)))) 1))))

(declare-fun b!5057358 () Bool)

(declare-fun e!3156967 () Bool)

(assert (=> b!5057358 (= e!3156967 e!3156968)))

(declare-fun res!2153544 () Bool)

(assert (=> b!5057358 (=> (not res!2153544) (not e!3156968))))

(assert (=> b!5057358 (= res!2153544 (<= (- 1) (- (height!2131 (left!42801 (left!42801 xs!286))) (height!2131 (right!43131 (left!42801 xs!286))))))))

(declare-fun b!5057359 () Bool)

(declare-fun res!2153546 () Bool)

(assert (=> b!5057359 (=> (not res!2153546) (not e!3156968))))

(assert (=> b!5057359 (= res!2153546 (not (isEmpty!31610 (left!42801 (left!42801 xs!286)))))))

(declare-fun b!5057360 () Bool)

(assert (=> b!5057360 (= e!3156968 (not (isEmpty!31610 (right!43131 (left!42801 xs!286)))))))

(declare-fun b!5057361 () Bool)

(declare-fun res!2153543 () Bool)

(assert (=> b!5057361 (=> (not res!2153543) (not e!3156968))))

(assert (=> b!5057361 (= res!2153543 (isBalanced!4416 (right!43131 (left!42801 xs!286))))))

(declare-fun d!1627666 () Bool)

(declare-fun res!2153547 () Bool)

(assert (=> d!1627666 (=> res!2153547 e!3156967)))

(assert (=> d!1627666 (= res!2153547 (not ((_ is Node!15554) (left!42801 xs!286))))))

(assert (=> d!1627666 (= (isBalanced!4416 (left!42801 xs!286)) e!3156967)))

(declare-fun b!5057362 () Bool)

(declare-fun res!2153545 () Bool)

(assert (=> b!5057362 (=> (not res!2153545) (not e!3156968))))

(assert (=> b!5057362 (= res!2153545 (isBalanced!4416 (left!42801 (left!42801 xs!286))))))

(assert (= (and d!1627666 (not res!2153547)) b!5057358))

(assert (= (and b!5057358 res!2153544) b!5057357))

(assert (= (and b!5057357 res!2153548) b!5057362))

(assert (= (and b!5057362 res!2153545) b!5057361))

(assert (= (and b!5057361 res!2153543) b!5057359))

(assert (= (and b!5057359 res!2153546) b!5057360))

(declare-fun m!6092720 () Bool)

(assert (=> b!5057361 m!6092720))

(declare-fun m!6092722 () Bool)

(assert (=> b!5057362 m!6092722))

(declare-fun m!6092724 () Bool)

(assert (=> b!5057360 m!6092724))

(declare-fun m!6092728 () Bool)

(assert (=> b!5057358 m!6092728))

(declare-fun m!6092730 () Bool)

(assert (=> b!5057358 m!6092730))

(declare-fun m!6092732 () Bool)

(assert (=> b!5057359 m!6092732))

(assert (=> b!5057357 m!6092728))

(assert (=> b!5057357 m!6092730))

(assert (=> b!5056891 d!1627666))

(declare-fun d!1627668 () Bool)

(declare-fun res!2153551 () Bool)

(declare-fun e!3156970 () Bool)

(assert (=> d!1627668 (=> (not res!2153551) (not e!3156970))))

(assert (=> d!1627668 (= res!2153551 (<= (size!39055 (list!18970 (xs!18888 (left!42801 xs!286)))) 512))))

(assert (=> d!1627668 (= (inv!77505 (left!42801 xs!286)) e!3156970)))

(declare-fun b!5057365 () Bool)

(declare-fun res!2153552 () Bool)

(assert (=> b!5057365 (=> (not res!2153552) (not e!3156970))))

(assert (=> b!5057365 (= res!2153552 (= (csize!31339 (left!42801 xs!286)) (size!39055 (list!18970 (xs!18888 (left!42801 xs!286))))))))

(declare-fun b!5057366 () Bool)

(assert (=> b!5057366 (= e!3156970 (and (> (csize!31339 (left!42801 xs!286)) 0) (<= (csize!31339 (left!42801 xs!286)) 512)))))

(assert (= (and d!1627668 res!2153551) b!5057365))

(assert (= (and b!5057365 res!2153552) b!5057366))

(assert (=> d!1627668 m!6092662))

(assert (=> d!1627668 m!6092662))

(declare-fun m!6092734 () Bool)

(assert (=> d!1627668 m!6092734))

(assert (=> b!5057365 m!6092662))

(assert (=> b!5057365 m!6092662))

(assert (=> b!5057365 m!6092734))

(assert (=> b!5056985 d!1627668))

(assert (=> b!5057068 d!1627474))

(assert (=> b!5057068 d!1627644))

(assert (=> b!5057068 d!1627640))

(declare-fun bm!352189 () Bool)

(declare-fun call!352197 () List!58548)

(declare-fun call!352196 () List!58548)

(assert (=> bm!352189 (= call!352197 (++!12773 (list!18969 (left!42801 xs!286)) call!352196))))

(declare-fun bm!352190 () Bool)

(declare-fun call!352194 () List!58548)

(declare-fun call!352195 () List!58548)

(assert (=> bm!352190 (= call!352194 (++!12773 call!352195 (++!12773 (list!18969 (right!43131 (right!43131 xs!286))) (list!18969 ys!41))))))

(declare-fun d!1627672 () Bool)

(declare-fun e!3156972 () Bool)

(assert (=> d!1627672 e!3156972))

(declare-fun c!867671 () Bool)

(assert (=> d!1627672 (= c!867671 ((_ is Nil!58424) (list!18969 (left!42801 xs!286))))))

(assert (=> d!1627672 (= (appendAssoc!296 (list!18969 (left!42801 xs!286)) (list!18969 (left!42801 (right!43131 xs!286))) (++!12773 (list!18969 (right!43131 (right!43131 xs!286))) (list!18969 ys!41))) true)))

(declare-fun b!5057369 () Bool)

(assert (=> b!5057369 (= e!3156972 (= call!352194 call!352197))))

(declare-fun lt!2087552 () Bool)

(assert (=> b!5057369 (= lt!2087552 (appendAssoc!296 (t!371231 (list!18969 (left!42801 xs!286))) (list!18969 (left!42801 (right!43131 xs!286))) (++!12773 (list!18969 (right!43131 (right!43131 xs!286))) (list!18969 ys!41))))))

(declare-fun bm!352191 () Bool)

(assert (=> bm!352191 (= call!352195 (++!12773 (list!18969 (left!42801 xs!286)) (list!18969 (left!42801 (right!43131 xs!286)))))))

(declare-fun bm!352192 () Bool)

(assert (=> bm!352192 (= call!352196 (++!12773 (list!18969 (left!42801 (right!43131 xs!286))) (++!12773 (list!18969 (right!43131 (right!43131 xs!286))) (list!18969 ys!41))))))

(declare-fun b!5057370 () Bool)

(assert (=> b!5057370 (= e!3156972 (= call!352194 call!352197))))

(assert (= (and d!1627672 c!867671) b!5057370))

(assert (= (and d!1627672 (not c!867671)) b!5057369))

(assert (= (or b!5057370 b!5057369) bm!352191))

(assert (= (or b!5057370 b!5057369) bm!352192))

(assert (= (or b!5057370 b!5057369) bm!352189))

(assert (= (or b!5057370 b!5057369) bm!352190))

(assert (=> bm!352191 m!6092142))

(assert (=> bm!352191 m!6092280))

(declare-fun m!6092744 () Bool)

(assert (=> bm!352191 m!6092744))

(assert (=> bm!352190 m!6092278))

(declare-fun m!6092746 () Bool)

(assert (=> bm!352190 m!6092746))

(assert (=> b!5057369 m!6092280))

(assert (=> b!5057369 m!6092278))

(declare-fun m!6092748 () Bool)

(assert (=> b!5057369 m!6092748))

(assert (=> bm!352189 m!6092142))

(declare-fun m!6092750 () Bool)

(assert (=> bm!352189 m!6092750))

(assert (=> bm!352192 m!6092280))

(assert (=> bm!352192 m!6092278))

(declare-fun m!6092752 () Bool)

(assert (=> bm!352192 m!6092752))

(assert (=> b!5057068 d!1627672))

(assert (=> b!5057068 d!1627638))

(declare-fun b!5057376 () Bool)

(declare-fun lt!2087553 () List!58548)

(declare-fun e!3156974 () Bool)

(assert (=> b!5057376 (= e!3156974 (or (not (= (list!18969 ys!41) Nil!58424)) (= lt!2087553 (list!18969 (right!43131 (right!43131 xs!286))))))))

(declare-fun b!5057373 () Bool)

(declare-fun e!3156975 () List!58548)

(assert (=> b!5057373 (= e!3156975 (list!18969 ys!41))))

(declare-fun b!5057374 () Bool)

(assert (=> b!5057374 (= e!3156975 (Cons!58424 (h!64872 (list!18969 (right!43131 (right!43131 xs!286)))) (++!12773 (t!371231 (list!18969 (right!43131 (right!43131 xs!286)))) (list!18969 ys!41))))))

(declare-fun b!5057375 () Bool)

(declare-fun res!2153557 () Bool)

(assert (=> b!5057375 (=> (not res!2153557) (not e!3156974))))

(assert (=> b!5057375 (= res!2153557 (= (size!39055 lt!2087553) (+ (size!39055 (list!18969 (right!43131 (right!43131 xs!286)))) (size!39055 (list!18969 ys!41)))))))

(declare-fun d!1627678 () Bool)

(assert (=> d!1627678 e!3156974))

(declare-fun res!2153558 () Bool)

(assert (=> d!1627678 (=> (not res!2153558) (not e!3156974))))

(assert (=> d!1627678 (= res!2153558 (= (content!10411 lt!2087553) ((_ map or) (content!10411 (list!18969 (right!43131 (right!43131 xs!286)))) (content!10411 (list!18969 ys!41)))))))

(assert (=> d!1627678 (= lt!2087553 e!3156975)))

(declare-fun c!867672 () Bool)

(assert (=> d!1627678 (= c!867672 ((_ is Nil!58424) (list!18969 (right!43131 (right!43131 xs!286)))))))

(assert (=> d!1627678 (= (++!12773 (list!18969 (right!43131 (right!43131 xs!286))) (list!18969 ys!41)) lt!2087553)))

(assert (= (and d!1627678 c!867672) b!5057373))

(assert (= (and d!1627678 (not c!867672)) b!5057374))

(assert (= (and d!1627678 res!2153558) b!5057375))

(assert (= (and b!5057375 res!2153557) b!5057376))

(assert (=> b!5057374 m!6092020))

(declare-fun m!6092754 () Bool)

(assert (=> b!5057374 m!6092754))

(declare-fun m!6092756 () Bool)

(assert (=> b!5057375 m!6092756))

(assert (=> b!5057375 m!6092276))

(declare-fun m!6092758 () Bool)

(assert (=> b!5057375 m!6092758))

(assert (=> b!5057375 m!6092020))

(assert (=> b!5057375 m!6092132))

(declare-fun m!6092760 () Bool)

(assert (=> d!1627678 m!6092760))

(assert (=> d!1627678 m!6092276))

(declare-fun m!6092762 () Bool)

(assert (=> d!1627678 m!6092762))

(assert (=> d!1627678 m!6092020))

(assert (=> d!1627678 m!6092138))

(assert (=> b!5057068 d!1627678))

(declare-fun d!1627680 () Bool)

(assert (=> d!1627680 (= (inv!77501 (xs!18888 (right!43131 ys!41))) (<= (size!39055 (innerList!15642 (xs!18888 (right!43131 ys!41)))) 2147483647))))

(declare-fun bs!1189421 () Bool)

(assert (= bs!1189421 d!1627680))

(declare-fun m!6092764 () Bool)

(assert (=> bs!1189421 m!6092764))

(assert (=> b!5057161 d!1627680))

(declare-fun d!1627682 () Bool)

(declare-fun lt!2087554 () Int)

(assert (=> d!1627682 (>= lt!2087554 0)))

(declare-fun e!3156976 () Int)

(assert (=> d!1627682 (= lt!2087554 e!3156976)))

(declare-fun c!867673 () Bool)

(assert (=> d!1627682 (= c!867673 ((_ is Nil!58424) (innerList!15642 (xs!18888 ys!41))))))

(assert (=> d!1627682 (= (size!39055 (innerList!15642 (xs!18888 ys!41))) lt!2087554)))

(declare-fun b!5057377 () Bool)

(assert (=> b!5057377 (= e!3156976 0)))

(declare-fun b!5057378 () Bool)

(assert (=> b!5057378 (= e!3156976 (+ 1 (size!39055 (t!371231 (innerList!15642 (xs!18888 ys!41))))))))

(assert (= (and d!1627682 c!867673) b!5057377))

(assert (= (and d!1627682 (not c!867673)) b!5057378))

(declare-fun m!6092766 () Bool)

(assert (=> b!5057378 m!6092766))

(assert (=> d!1627484 d!1627682))

(declare-fun d!1627684 () Bool)

(assert (=> d!1627684 (= (max!0 (height!2131 xs!286) (height!2131 ys!41)) (ite (< (height!2131 xs!286) (height!2131 ys!41)) (height!2131 ys!41) (height!2131 xs!286)))))

(assert (=> b!5057122 d!1627684))

(assert (=> b!5057122 d!1627450))

(declare-fun d!1627686 () Bool)

(declare-fun lt!2087557 () Int)

(assert (=> d!1627686 (= lt!2087557 (size!39055 (list!18969 xs!286)))))

(assert (=> d!1627686 (= lt!2087557 (ite ((_ is Empty!15554) xs!286) 0 (ite ((_ is Leaf!25836) xs!286) (csize!31339 xs!286) (csize!31338 xs!286))))))

(assert (=> d!1627686 (= (size!39057 xs!286) lt!2087557)))

(declare-fun bs!1189422 () Bool)

(assert (= bs!1189422 d!1627686))

(assert (=> bs!1189422 m!6092018))

(assert (=> bs!1189422 m!6092018))

(assert (=> bs!1189422 m!6092130))

(assert (=> b!5057122 d!1627686))

(assert (=> b!5057122 d!1627448))

(declare-fun d!1627688 () Bool)

(declare-fun lt!2087558 () Int)

(assert (=> d!1627688 (= lt!2087558 (size!39055 (list!18969 ys!41)))))

(assert (=> d!1627688 (= lt!2087558 (ite ((_ is Empty!15554) ys!41) 0 (ite ((_ is Leaf!25836) ys!41) (csize!31339 ys!41) (csize!31338 ys!41))))))

(assert (=> d!1627688 (= (size!39057 ys!41) lt!2087558)))

(declare-fun bs!1189423 () Bool)

(assert (= bs!1189423 d!1627688))

(assert (=> bs!1189423 m!6092020))

(assert (=> bs!1189423 m!6092020))

(assert (=> bs!1189423 m!6092132))

(assert (=> b!5057122 d!1627688))

(declare-fun d!1627690 () Bool)

(declare-fun lt!2087559 () Bool)

(assert (=> d!1627690 (= lt!2087559 (isEmpty!31612 (list!18969 (right!43131 ys!41))))))

(assert (=> d!1627690 (= lt!2087559 (= (size!39057 (right!43131 ys!41)) 0))))

(assert (=> d!1627690 (= (isEmpty!31610 (right!43131 ys!41)) lt!2087559)))

(declare-fun bs!1189424 () Bool)

(assert (= bs!1189424 d!1627690))

(assert (=> bs!1189424 m!6092152))

(assert (=> bs!1189424 m!6092152))

(declare-fun m!6092768 () Bool)

(assert (=> bs!1189424 m!6092768))

(assert (=> bs!1189424 m!6092716))

(assert (=> b!5056980 d!1627690))

(declare-fun d!1627692 () Bool)

(declare-fun lt!2087560 () Bool)

(assert (=> d!1627692 (= lt!2087560 (isEmpty!31612 (list!18969 (right!43131 xs!286))))))

(assert (=> d!1627692 (= lt!2087560 (= (size!39057 (right!43131 xs!286)) 0))))

(assert (=> d!1627692 (= (isEmpty!31610 (right!43131 xs!286)) lt!2087560)))

(declare-fun bs!1189425 () Bool)

(assert (= bs!1189425 d!1627692))

(assert (=> bs!1189425 m!6092144))

(assert (=> bs!1189425 m!6092144))

(declare-fun m!6092770 () Bool)

(assert (=> bs!1189425 m!6092770))

(assert (=> bs!1189425 m!6092428))

(assert (=> b!5056889 d!1627692))

(declare-fun d!1627694 () Bool)

(declare-fun res!2153565 () Bool)

(declare-fun e!3156979 () Bool)

(assert (=> d!1627694 (=> (not res!2153565) (not e!3156979))))

(assert (=> d!1627694 (= res!2153565 (= (csize!31338 (left!42801 xs!286)) (+ (size!39057 (left!42801 (left!42801 xs!286))) (size!39057 (right!43131 (left!42801 xs!286))))))))

(assert (=> d!1627694 (= (inv!77504 (left!42801 xs!286)) e!3156979)))

(declare-fun b!5057385 () Bool)

(declare-fun res!2153566 () Bool)

(assert (=> b!5057385 (=> (not res!2153566) (not e!3156979))))

(assert (=> b!5057385 (= res!2153566 (and (not (= (left!42801 (left!42801 xs!286)) Empty!15554)) (not (= (right!43131 (left!42801 xs!286)) Empty!15554))))))

(declare-fun b!5057386 () Bool)

(declare-fun res!2153567 () Bool)

(assert (=> b!5057386 (=> (not res!2153567) (not e!3156979))))

(assert (=> b!5057386 (= res!2153567 (= (cheight!15765 (left!42801 xs!286)) (+ (max!0 (height!2131 (left!42801 (left!42801 xs!286))) (height!2131 (right!43131 (left!42801 xs!286)))) 1)))))

(declare-fun b!5057387 () Bool)

(assert (=> b!5057387 (= e!3156979 (<= 0 (cheight!15765 (left!42801 xs!286))))))

(assert (= (and d!1627694 res!2153565) b!5057385))

(assert (= (and b!5057385 res!2153566) b!5057386))

(assert (= (and b!5057386 res!2153567) b!5057387))

(declare-fun m!6092772 () Bool)

(assert (=> d!1627694 m!6092772))

(declare-fun m!6092774 () Bool)

(assert (=> d!1627694 m!6092774))

(assert (=> b!5057386 m!6092728))

(assert (=> b!5057386 m!6092730))

(assert (=> b!5057386 m!6092728))

(assert (=> b!5057386 m!6092730))

(declare-fun m!6092776 () Bool)

(assert (=> b!5057386 m!6092776))

(assert (=> b!5056983 d!1627694))

(declare-fun b!5057388 () Bool)

(declare-fun e!3156980 () Bool)

(declare-fun tp!1413454 () Bool)

(assert (=> b!5057388 (= e!3156980 (and tp_is_empty!37031 tp!1413454))))

(assert (=> b!5057159 (= tp!1413448 e!3156980)))

(assert (= (and b!5057159 ((_ is Cons!58424) (innerList!15642 (xs!18888 (left!42801 ys!41))))) b!5057388))

(declare-fun tp!1413457 () Bool)

(declare-fun b!5057389 () Bool)

(declare-fun e!3156981 () Bool)

(declare-fun tp!1413455 () Bool)

(assert (=> b!5057389 (= e!3156981 (and (inv!77500 (left!42801 (left!42801 (right!43131 xs!286)))) tp!1413455 (inv!77500 (right!43131 (left!42801 (right!43131 xs!286)))) tp!1413457))))

(declare-fun b!5057391 () Bool)

(declare-fun e!3156982 () Bool)

(declare-fun tp!1413456 () Bool)

(assert (=> b!5057391 (= e!3156982 tp!1413456)))

(declare-fun b!5057390 () Bool)

(assert (=> b!5057390 (= e!3156981 (and (inv!77501 (xs!18888 (left!42801 (right!43131 xs!286)))) e!3156982))))

(assert (=> b!5057149 (= tp!1413441 (and (inv!77500 (left!42801 (right!43131 xs!286))) e!3156981))))

(assert (= (and b!5057149 ((_ is Node!15554) (left!42801 (right!43131 xs!286)))) b!5057389))

(assert (= b!5057390 b!5057391))

(assert (= (and b!5057149 ((_ is Leaf!25836) (left!42801 (right!43131 xs!286)))) b!5057390))

(declare-fun m!6092778 () Bool)

(assert (=> b!5057389 m!6092778))

(declare-fun m!6092780 () Bool)

(assert (=> b!5057389 m!6092780))

(declare-fun m!6092782 () Bool)

(assert (=> b!5057390 m!6092782))

(assert (=> b!5057149 m!6092356))

(declare-fun tp!1413460 () Bool)

(declare-fun tp!1413458 () Bool)

(declare-fun e!3156984 () Bool)

(declare-fun b!5057395 () Bool)

(assert (=> b!5057395 (= e!3156984 (and (inv!77500 (left!42801 (right!43131 (right!43131 xs!286)))) tp!1413458 (inv!77500 (right!43131 (right!43131 (right!43131 xs!286)))) tp!1413460))))

(declare-fun b!5057397 () Bool)

(declare-fun e!3156985 () Bool)

(declare-fun tp!1413459 () Bool)

(assert (=> b!5057397 (= e!3156985 tp!1413459)))

(declare-fun b!5057396 () Bool)

(assert (=> b!5057396 (= e!3156984 (and (inv!77501 (xs!18888 (right!43131 (right!43131 xs!286)))) e!3156985))))

(assert (=> b!5057149 (= tp!1413443 (and (inv!77500 (right!43131 (right!43131 xs!286))) e!3156984))))

(assert (= (and b!5057149 ((_ is Node!15554) (right!43131 (right!43131 xs!286)))) b!5057395))

(assert (= b!5057396 b!5057397))

(assert (= (and b!5057149 ((_ is Leaf!25836) (right!43131 (right!43131 xs!286)))) b!5057396))

(declare-fun m!6092792 () Bool)

(assert (=> b!5057395 m!6092792))

(declare-fun m!6092794 () Bool)

(assert (=> b!5057395 m!6092794))

(declare-fun m!6092796 () Bool)

(assert (=> b!5057396 m!6092796))

(assert (=> b!5057149 m!6092358))

(declare-fun b!5057398 () Bool)

(declare-fun e!3156986 () Bool)

(declare-fun tp!1413461 () Bool)

(assert (=> b!5057398 (= e!3156986 (and tp_is_empty!37031 tp!1413461))))

(assert (=> b!5057156 (= tp!1413446 e!3156986)))

(assert (= (and b!5057156 ((_ is Cons!58424) (t!371231 (innerList!15642 (xs!18888 xs!286))))) b!5057398))

(declare-fun b!5057399 () Bool)

(declare-fun e!3156987 () Bool)

(declare-fun tp!1413462 () Bool)

(assert (=> b!5057399 (= e!3156987 (and tp_is_empty!37031 tp!1413462))))

(assert (=> b!5057148 (= tp!1413439 e!3156987)))

(assert (= (and b!5057148 ((_ is Cons!58424) (innerList!15642 (xs!18888 (left!42801 xs!286))))) b!5057399))

(declare-fun e!3156988 () Bool)

(declare-fun tp!1413463 () Bool)

(declare-fun tp!1413465 () Bool)

(declare-fun b!5057400 () Bool)

(assert (=> b!5057400 (= e!3156988 (and (inv!77500 (left!42801 (left!42801 (left!42801 ys!41)))) tp!1413463 (inv!77500 (right!43131 (left!42801 (left!42801 ys!41)))) tp!1413465))))

(declare-fun b!5057402 () Bool)

(declare-fun e!3156989 () Bool)

(declare-fun tp!1413464 () Bool)

(assert (=> b!5057402 (= e!3156989 tp!1413464)))

(declare-fun b!5057401 () Bool)

(assert (=> b!5057401 (= e!3156988 (and (inv!77501 (xs!18888 (left!42801 (left!42801 ys!41)))) e!3156989))))

(assert (=> b!5057157 (= tp!1413447 (and (inv!77500 (left!42801 (left!42801 ys!41))) e!3156988))))

(assert (= (and b!5057157 ((_ is Node!15554) (left!42801 (left!42801 ys!41)))) b!5057400))

(assert (= b!5057401 b!5057402))

(assert (= (and b!5057157 ((_ is Leaf!25836) (left!42801 (left!42801 ys!41)))) b!5057401))

(declare-fun m!6092800 () Bool)

(assert (=> b!5057400 m!6092800))

(declare-fun m!6092802 () Bool)

(assert (=> b!5057400 m!6092802))

(declare-fun m!6092804 () Bool)

(assert (=> b!5057401 m!6092804))

(assert (=> b!5057157 m!6092362))

(declare-fun b!5057406 () Bool)

(declare-fun e!3156991 () Bool)

(declare-fun tp!1413466 () Bool)

(declare-fun tp!1413468 () Bool)

(assert (=> b!5057406 (= e!3156991 (and (inv!77500 (left!42801 (right!43131 (left!42801 ys!41)))) tp!1413466 (inv!77500 (right!43131 (right!43131 (left!42801 ys!41)))) tp!1413468))))

(declare-fun b!5057408 () Bool)

(declare-fun e!3156992 () Bool)

(declare-fun tp!1413467 () Bool)

(assert (=> b!5057408 (= e!3156992 tp!1413467)))

(declare-fun b!5057407 () Bool)

(assert (=> b!5057407 (= e!3156991 (and (inv!77501 (xs!18888 (right!43131 (left!42801 ys!41)))) e!3156992))))

(assert (=> b!5057157 (= tp!1413449 (and (inv!77500 (right!43131 (left!42801 ys!41))) e!3156991))))

(assert (= (and b!5057157 ((_ is Node!15554) (right!43131 (left!42801 ys!41)))) b!5057406))

(assert (= b!5057407 b!5057408))

(assert (= (and b!5057157 ((_ is Leaf!25836) (right!43131 (left!42801 ys!41)))) b!5057407))

(declare-fun m!6092810 () Bool)

(assert (=> b!5057406 m!6092810))

(declare-fun m!6092812 () Bool)

(assert (=> b!5057406 m!6092812))

(declare-fun m!6092814 () Bool)

(assert (=> b!5057407 m!6092814))

(assert (=> b!5057157 m!6092364))

(declare-fun b!5057409 () Bool)

(declare-fun e!3156993 () Bool)

(declare-fun tp!1413469 () Bool)

(assert (=> b!5057409 (= e!3156993 (and tp_is_empty!37031 tp!1413469))))

(assert (=> b!5057162 (= tp!1413451 e!3156993)))

(assert (= (and b!5057162 ((_ is Cons!58424) (innerList!15642 (xs!18888 (right!43131 ys!41))))) b!5057409))

(declare-fun e!3156994 () Bool)

(declare-fun tp!1413472 () Bool)

(declare-fun b!5057410 () Bool)

(declare-fun tp!1413470 () Bool)

(assert (=> b!5057410 (= e!3156994 (and (inv!77500 (left!42801 (left!42801 (left!42801 xs!286)))) tp!1413470 (inv!77500 (right!43131 (left!42801 (left!42801 xs!286)))) tp!1413472))))

(declare-fun b!5057412 () Bool)

(declare-fun e!3156995 () Bool)

(declare-fun tp!1413471 () Bool)

(assert (=> b!5057412 (= e!3156995 tp!1413471)))

(declare-fun b!5057411 () Bool)

(assert (=> b!5057411 (= e!3156994 (and (inv!77501 (xs!18888 (left!42801 (left!42801 xs!286)))) e!3156995))))

(assert (=> b!5057146 (= tp!1413438 (and (inv!77500 (left!42801 (left!42801 xs!286))) e!3156994))))

(assert (= (and b!5057146 ((_ is Node!15554) (left!42801 (left!42801 xs!286)))) b!5057410))

(assert (= b!5057411 b!5057412))

(assert (= (and b!5057146 ((_ is Leaf!25836) (left!42801 (left!42801 xs!286)))) b!5057411))

(declare-fun m!6092818 () Bool)

(assert (=> b!5057410 m!6092818))

(declare-fun m!6092820 () Bool)

(assert (=> b!5057410 m!6092820))

(declare-fun m!6092822 () Bool)

(assert (=> b!5057411 m!6092822))

(assert (=> b!5057146 m!6092350))

(declare-fun tp!1413473 () Bool)

(declare-fun b!5057413 () Bool)

(declare-fun e!3156996 () Bool)

(declare-fun tp!1413475 () Bool)

(assert (=> b!5057413 (= e!3156996 (and (inv!77500 (left!42801 (right!43131 (left!42801 xs!286)))) tp!1413473 (inv!77500 (right!43131 (right!43131 (left!42801 xs!286)))) tp!1413475))))

(declare-fun b!5057415 () Bool)

(declare-fun e!3156997 () Bool)

(declare-fun tp!1413474 () Bool)

(assert (=> b!5057415 (= e!3156997 tp!1413474)))

(declare-fun b!5057414 () Bool)

(assert (=> b!5057414 (= e!3156996 (and (inv!77501 (xs!18888 (right!43131 (left!42801 xs!286)))) e!3156997))))

(assert (=> b!5057146 (= tp!1413440 (and (inv!77500 (right!43131 (left!42801 xs!286))) e!3156996))))

(assert (= (and b!5057146 ((_ is Node!15554) (right!43131 (left!42801 xs!286)))) b!5057413))

(assert (= b!5057414 b!5057415))

(assert (= (and b!5057146 ((_ is Leaf!25836) (right!43131 (left!42801 xs!286)))) b!5057414))

(declare-fun m!6092824 () Bool)

(assert (=> b!5057413 m!6092824))

(declare-fun m!6092826 () Bool)

(assert (=> b!5057413 m!6092826))

(declare-fun m!6092828 () Bool)

(assert (=> b!5057414 m!6092828))

(assert (=> b!5057146 m!6092352))

(declare-fun b!5057416 () Bool)

(declare-fun e!3156998 () Bool)

(declare-fun tp!1413476 () Bool)

(assert (=> b!5057416 (= e!3156998 (and tp_is_empty!37031 tp!1413476))))

(assert (=> b!5057151 (= tp!1413442 e!3156998)))

(assert (= (and b!5057151 ((_ is Cons!58424) (innerList!15642 (xs!18888 (right!43131 xs!286))))) b!5057416))

(declare-fun e!3156999 () Bool)

(declare-fun tp!1413477 () Bool)

(declare-fun tp!1413479 () Bool)

(declare-fun b!5057417 () Bool)

(assert (=> b!5057417 (= e!3156999 (and (inv!77500 (left!42801 (left!42801 (right!43131 ys!41)))) tp!1413477 (inv!77500 (right!43131 (left!42801 (right!43131 ys!41)))) tp!1413479))))

(declare-fun b!5057419 () Bool)

(declare-fun e!3157000 () Bool)

(declare-fun tp!1413478 () Bool)

(assert (=> b!5057419 (= e!3157000 tp!1413478)))

(declare-fun b!5057418 () Bool)

(assert (=> b!5057418 (= e!3156999 (and (inv!77501 (xs!18888 (left!42801 (right!43131 ys!41)))) e!3157000))))

(assert (=> b!5057160 (= tp!1413450 (and (inv!77500 (left!42801 (right!43131 ys!41))) e!3156999))))

(assert (= (and b!5057160 ((_ is Node!15554) (left!42801 (right!43131 ys!41)))) b!5057417))

(assert (= b!5057418 b!5057419))

(assert (= (and b!5057160 ((_ is Leaf!25836) (left!42801 (right!43131 ys!41)))) b!5057418))

(declare-fun m!6092830 () Bool)

(assert (=> b!5057417 m!6092830))

(declare-fun m!6092832 () Bool)

(assert (=> b!5057417 m!6092832))

(declare-fun m!6092834 () Bool)

(assert (=> b!5057418 m!6092834))

(assert (=> b!5057160 m!6092368))

(declare-fun tp!1413482 () Bool)

(declare-fun e!3157001 () Bool)

(declare-fun tp!1413480 () Bool)

(declare-fun b!5057420 () Bool)

(assert (=> b!5057420 (= e!3157001 (and (inv!77500 (left!42801 (right!43131 (right!43131 ys!41)))) tp!1413480 (inv!77500 (right!43131 (right!43131 (right!43131 ys!41)))) tp!1413482))))

(declare-fun b!5057422 () Bool)

(declare-fun e!3157002 () Bool)

(declare-fun tp!1413481 () Bool)

(assert (=> b!5057422 (= e!3157002 tp!1413481)))

(declare-fun b!5057421 () Bool)

(assert (=> b!5057421 (= e!3157001 (and (inv!77501 (xs!18888 (right!43131 (right!43131 ys!41)))) e!3157002))))

(assert (=> b!5057160 (= tp!1413452 (and (inv!77500 (right!43131 (right!43131 ys!41))) e!3157001))))

(assert (= (and b!5057160 ((_ is Node!15554) (right!43131 (right!43131 ys!41)))) b!5057420))

(assert (= b!5057421 b!5057422))

(assert (= (and b!5057160 ((_ is Leaf!25836) (right!43131 (right!43131 ys!41)))) b!5057421))

(declare-fun m!6092836 () Bool)

(assert (=> b!5057420 m!6092836))

(declare-fun m!6092838 () Bool)

(assert (=> b!5057420 m!6092838))

(declare-fun m!6092840 () Bool)

(assert (=> b!5057421 m!6092840))

(assert (=> b!5057160 m!6092370))

(declare-fun b!5057423 () Bool)

(declare-fun e!3157003 () Bool)

(declare-fun tp!1413483 () Bool)

(assert (=> b!5057423 (= e!3157003 (and tp_is_empty!37031 tp!1413483))))

(assert (=> b!5057163 (= tp!1413453 e!3157003)))

(assert (= (and b!5057163 ((_ is Cons!58424) (t!371231 (innerList!15642 (xs!18888 ys!41))))) b!5057423))

(check-sat (not d!1627634) (not b!5057241) (not b!5057271) (not d!1627688) (not b!5057146) (not b!5057223) (not b!5057349) (not b!5057357) (not b!5057273) (not bm!352174) (not b!5057188) (not b!5057332) (not b!5057293) (not b!5057419) (not d!1627550) (not b!5057183) (not b!5057318) (not b!5057397) (not b!5057324) (not b!5057216) (not b!5057269) (not b!5057175) (not b!5057415) (not b!5057298) (not b!5057202) (not b!5057378) (not b!5057172) (not b!5057190) (not bm!352185) (not b!5057335) (not bm!352182) (not b!5057231) (not b!5057389) (not b!5057319) (not bm!352188) (not b!5057422) (not b!5057279) (not bm!352175) (not b!5057274) (not b!5057416) (not b!5057375) (not b!5057388) (not d!1627554) (not d!1627628) (not d!1627548) (not bm!352186) (not d!1627658) (not b!5057157) (not b!5057276) (not b!5057301) (not d!1627552) (not bm!352191) (not b!5057199) (not d!1627654) (not b!5057395) (not b!5057398) (not b!5057189) (not b!5057181) (not b!5057408) (not d!1627614) (not d!1627660) (not b!5057411) (not b!5057313) (not bm!352179) (not b!5057268) (not b!5057235) (not b!5057282) (not b!5057284) (not b!5057168) (not b!5057365) (not b!5057238) (not b!5057396) (not b!5057240) (not b!5057360) (not b!5057304) (not b!5057391) (not b!5057214) (not b!5057290) (not b!5057312) (not b!5057362) (not b!5057353) (not b!5057173) (not b!5057338) (not b!5057302) (not b!5057417) (not b!5057334) (not d!1627546) (not b!5057322) (not b!5057414) (not b!5057295) (not b!5057399) (not b!5057263) (not bm!352176) (not d!1627632) (not b!5057406) (not bm!352171) (not b!5057259) (not b!5057350) (not b!5057204) (not b!5057280) (not b!5057409) (not b!5057267) (not d!1627558) (not b!5057234) (not d!1627668) (not b!5057245) (not bm!352177) (not d!1627600) (not b!5057246) (not bm!352183) (not b!5057358) (not b!5057228) (not b!5057407) (not b!5057386) (not b!5057272) (not bm!352169) (not d!1627686) (not b!5057185) (not b!5057323) (not b!5057420) (not bm!352190) (not b!5057252) (not b!5057418) (not b!5057390) (not b!5057227) (not d!1627690) (not b!5057285) (not b!5057297) (not b!5057326) (not b!5057331) (not b!5057160) (not b!5057266) (not d!1627574) (not b!5057207) (not b!5057337) (not b!5057423) (not b!5057346) (not d!1627530) (not b!5057287) (not b!5057270) (not b!5057233) (not b!5057359) (not b!5057361) (not bm!352178) (not b!5057329) (not b!5057374) (not bm!352184) (not b!5057265) (not d!1627532) (not b!5057314) (not b!5057170) (not d!1627572) (not b!5057308) (not b!5057412) (not bm!352192) (not b!5057250) (not b!5057289) (not b!5057339) (not b!5057254) (not b!5057275) (not b!5057327) (not b!5057355) (not b!5057292) (not b!5057400) (not b!5057336) (not b!5057236) (not b!5057348) (not d!1627680) (not b!5057351) (not b!5057421) (not b!5057402) (not d!1627694) (not d!1627678) (not b!5057232) (not b!5057401) (not d!1627692) (not b!5057218) (not b!5057413) (not b!5057264) (not bm!352180) (not b!5057262) (not b!5057369) (not b!5057258) (not b!5057352) (not b!5057249) (not bm!352172) (not b!5057340) (not bm!352187) (not bm!352173) (not d!1627630) tp_is_empty!37031 (not b!5057410) (not b!5057309) (not bm!352189) (not bm!352181) (not b!5057149) (not b!5057237) (not d!1627616) (not bm!352170) (not d!1627594) (not d!1627664))
(check-sat)
(get-model)

(declare-fun d!1627846 () Bool)

(declare-fun lt!2087594 () Int)

(assert (=> d!1627846 (= lt!2087594 (size!39055 (list!18969 (left!42801 xs!286))))))

(assert (=> d!1627846 (= lt!2087594 (ite ((_ is Empty!15554) (left!42801 xs!286)) 0 (ite ((_ is Leaf!25836) (left!42801 xs!286)) (csize!31339 (left!42801 xs!286)) (csize!31338 (left!42801 xs!286)))))))

(assert (=> d!1627846 (= (size!39057 (left!42801 xs!286)) lt!2087594)))

(declare-fun bs!1189438 () Bool)

(assert (= bs!1189438 d!1627846))

(assert (=> bs!1189438 m!6092142))

(assert (=> bs!1189438 m!6092142))

(assert (=> bs!1189438 m!6092682))

(assert (=> d!1627552 d!1627846))

(declare-fun d!1627848 () Bool)

(declare-fun lt!2087595 () Int)

(assert (=> d!1627848 (= lt!2087595 (size!39055 (list!18969 (right!43131 xs!286))))))

(assert (=> d!1627848 (= lt!2087595 (ite ((_ is Empty!15554) (right!43131 xs!286)) 0 (ite ((_ is Leaf!25836) (right!43131 xs!286)) (csize!31339 (right!43131 xs!286)) (csize!31338 (right!43131 xs!286)))))))

(assert (=> d!1627848 (= (size!39057 (right!43131 xs!286)) lt!2087595)))

(declare-fun bs!1189439 () Bool)

(assert (= bs!1189439 d!1627848))

(assert (=> bs!1189439 m!6092144))

(assert (=> bs!1189439 m!6092144))

(assert (=> bs!1189439 m!6092684))

(assert (=> d!1627552 d!1627848))

(declare-fun d!1627850 () Bool)

(declare-fun c!867730 () Bool)

(assert (=> d!1627850 (= c!867730 ((_ is Nil!58424) lt!2087540))))

(declare-fun e!3157115 () (InoxSet T!105048))

(assert (=> d!1627850 (= (content!10411 lt!2087540) e!3157115)))

(declare-fun b!5057640 () Bool)

(assert (=> b!5057640 (= e!3157115 ((as const (Array T!105048 Bool)) false))))

(declare-fun b!5057641 () Bool)

(assert (=> b!5057641 (= e!3157115 ((_ map or) (store ((as const (Array T!105048 Bool)) false) (h!64872 lt!2087540) true) (content!10411 (t!371231 lt!2087540))))))

(assert (= (and d!1627850 c!867730) b!5057640))

(assert (= (and d!1627850 (not c!867730)) b!5057641))

(declare-fun m!6093258 () Bool)

(assert (=> b!5057641 m!6093258))

(declare-fun m!6093260 () Bool)

(assert (=> b!5057641 m!6093260))

(assert (=> d!1627594 d!1627850))

(declare-fun d!1627852 () Bool)

(declare-fun c!867731 () Bool)

(assert (=> d!1627852 (= c!867731 ((_ is Nil!58424) (list!18969 (left!42801 lt!2087515))))))

(declare-fun e!3157116 () (InoxSet T!105048))

(assert (=> d!1627852 (= (content!10411 (list!18969 (left!42801 lt!2087515))) e!3157116)))

(declare-fun b!5057642 () Bool)

(assert (=> b!5057642 (= e!3157116 ((as const (Array T!105048 Bool)) false))))

(declare-fun b!5057643 () Bool)

(assert (=> b!5057643 (= e!3157116 ((_ map or) (store ((as const (Array T!105048 Bool)) false) (h!64872 (list!18969 (left!42801 lt!2087515))) true) (content!10411 (t!371231 (list!18969 (left!42801 lt!2087515))))))))

(assert (= (and d!1627852 c!867731) b!5057642))

(assert (= (and d!1627852 (not c!867731)) b!5057643))

(declare-fun m!6093262 () Bool)

(assert (=> b!5057643 m!6093262))

(declare-fun m!6093264 () Bool)

(assert (=> b!5057643 m!6093264))

(assert (=> d!1627594 d!1627852))

(declare-fun d!1627854 () Bool)

(declare-fun c!867732 () Bool)

(assert (=> d!1627854 (= c!867732 ((_ is Nil!58424) (list!18969 (right!43131 lt!2087515))))))

(declare-fun e!3157117 () (InoxSet T!105048))

(assert (=> d!1627854 (= (content!10411 (list!18969 (right!43131 lt!2087515))) e!3157117)))

(declare-fun b!5057644 () Bool)

(assert (=> b!5057644 (= e!3157117 ((as const (Array T!105048 Bool)) false))))

(declare-fun b!5057645 () Bool)

(assert (=> b!5057645 (= e!3157117 ((_ map or) (store ((as const (Array T!105048 Bool)) false) (h!64872 (list!18969 (right!43131 lt!2087515))) true) (content!10411 (t!371231 (list!18969 (right!43131 lt!2087515))))))))

(assert (= (and d!1627854 c!867732) b!5057644))

(assert (= (and d!1627854 (not c!867732)) b!5057645))

(declare-fun m!6093266 () Bool)

(assert (=> b!5057645 m!6093266))

(declare-fun m!6093268 () Bool)

(assert (=> b!5057645 m!6093268))

(assert (=> d!1627594 d!1627854))

(declare-fun d!1627856 () Bool)

(assert (=> d!1627856 (= (height!2131 (left!42801 (right!43131 lt!2087515))) (ite ((_ is Empty!15554) (left!42801 (right!43131 lt!2087515))) 0 (ite ((_ is Leaf!25836) (left!42801 (right!43131 lt!2087515))) 1 (cheight!15765 (left!42801 (right!43131 lt!2087515))))))))

(assert (=> b!5057233 d!1627856))

(declare-fun d!1627858 () Bool)

(assert (=> d!1627858 (= (height!2131 (right!43131 (right!43131 lt!2087515))) (ite ((_ is Empty!15554) (right!43131 (right!43131 lt!2087515))) 0 (ite ((_ is Leaf!25836) (right!43131 (right!43131 lt!2087515))) 1 (cheight!15765 (right!43131 (right!43131 lt!2087515))))))))

(assert (=> b!5057233 d!1627858))

(declare-fun bm!352225 () Bool)

(declare-fun call!352233 () List!58548)

(declare-fun call!352232 () List!58548)

(assert (=> bm!352225 (= call!352233 (++!12773 (t!371231 (list!18969 (left!42801 (right!43131 xs!286)))) call!352232))))

(declare-fun bm!352226 () Bool)

(declare-fun call!352230 () List!58548)

(declare-fun call!352231 () List!58548)

(assert (=> bm!352226 (= call!352230 (++!12773 call!352231 (list!18969 ys!41)))))

(declare-fun d!1627860 () Bool)

(declare-fun e!3157118 () Bool)

(assert (=> d!1627860 e!3157118))

(declare-fun c!867733 () Bool)

(assert (=> d!1627860 (= c!867733 ((_ is Nil!58424) (t!371231 (list!18969 (left!42801 (right!43131 xs!286))))))))

(assert (=> d!1627860 (= (appendAssoc!296 (t!371231 (list!18969 (left!42801 (right!43131 xs!286)))) (list!18969 (right!43131 (right!43131 xs!286))) (list!18969 ys!41)) true)))

(declare-fun b!5057646 () Bool)

(assert (=> b!5057646 (= e!3157118 (= call!352230 call!352233))))

(declare-fun lt!2087596 () Bool)

(assert (=> b!5057646 (= lt!2087596 (appendAssoc!296 (t!371231 (t!371231 (list!18969 (left!42801 (right!43131 xs!286))))) (list!18969 (right!43131 (right!43131 xs!286))) (list!18969 ys!41)))))

(declare-fun bm!352227 () Bool)

(assert (=> bm!352227 (= call!352231 (++!12773 (t!371231 (list!18969 (left!42801 (right!43131 xs!286)))) (list!18969 (right!43131 (right!43131 xs!286)))))))

(declare-fun bm!352228 () Bool)

(assert (=> bm!352228 (= call!352232 (++!12773 (list!18969 (right!43131 (right!43131 xs!286))) (list!18969 ys!41)))))

(declare-fun b!5057647 () Bool)

(assert (=> b!5057647 (= e!3157118 (= call!352230 call!352233))))

(assert (= (and d!1627860 c!867733) b!5057647))

(assert (= (and d!1627860 (not c!867733)) b!5057646))

(assert (= (or b!5057647 b!5057646) bm!352227))

(assert (= (or b!5057647 b!5057646) bm!352228))

(assert (= (or b!5057647 b!5057646) bm!352225))

(assert (= (or b!5057647 b!5057646) bm!352226))

(assert (=> bm!352227 m!6092276))

(declare-fun m!6093270 () Bool)

(assert (=> bm!352227 m!6093270))

(assert (=> bm!352226 m!6092020))

(declare-fun m!6093272 () Bool)

(assert (=> bm!352226 m!6093272))

(assert (=> b!5057646 m!6092276))

(assert (=> b!5057646 m!6092020))

(declare-fun m!6093274 () Bool)

(assert (=> b!5057646 m!6093274))

(declare-fun m!6093276 () Bool)

(assert (=> bm!352225 m!6093276))

(assert (=> bm!352228 m!6092276))

(assert (=> bm!352228 m!6092020))

(assert (=> bm!352228 m!6092278))

(assert (=> b!5057304 d!1627860))

(declare-fun d!1627862 () Bool)

(declare-fun lt!2087597 () Int)

(assert (=> d!1627862 (>= lt!2087597 0)))

(declare-fun e!3157119 () Int)

(assert (=> d!1627862 (= lt!2087597 e!3157119)))

(declare-fun c!867734 () Bool)

(assert (=> d!1627862 (= c!867734 ((_ is Nil!58424) (innerList!15642 (xs!18888 (right!43131 ys!41)))))))

(assert (=> d!1627862 (= (size!39055 (innerList!15642 (xs!18888 (right!43131 ys!41)))) lt!2087597)))

(declare-fun b!5057648 () Bool)

(assert (=> b!5057648 (= e!3157119 0)))

(declare-fun b!5057649 () Bool)

(assert (=> b!5057649 (= e!3157119 (+ 1 (size!39055 (t!371231 (innerList!15642 (xs!18888 (right!43131 ys!41)))))))))

(assert (= (and d!1627862 c!867734) b!5057648))

(assert (= (and d!1627862 (not c!867734)) b!5057649))

(declare-fun m!6093278 () Bool)

(assert (=> b!5057649 m!6093278))

(assert (=> d!1627680 d!1627862))

(assert (=> d!1627688 d!1627566))

(assert (=> d!1627688 d!1627474))

(declare-fun d!1627864 () Bool)

(declare-fun res!2153648 () Bool)

(declare-fun e!3157120 () Bool)

(assert (=> d!1627864 (=> (not res!2153648) (not e!3157120))))

(assert (=> d!1627864 (= res!2153648 (= (csize!31338 (left!42801 (right!43131 xs!286))) (+ (size!39057 (left!42801 (left!42801 (right!43131 xs!286)))) (size!39057 (right!43131 (left!42801 (right!43131 xs!286)))))))))

(assert (=> d!1627864 (= (inv!77504 (left!42801 (right!43131 xs!286))) e!3157120)))

(declare-fun b!5057650 () Bool)

(declare-fun res!2153649 () Bool)

(assert (=> b!5057650 (=> (not res!2153649) (not e!3157120))))

(assert (=> b!5057650 (= res!2153649 (and (not (= (left!42801 (left!42801 (right!43131 xs!286))) Empty!15554)) (not (= (right!43131 (left!42801 (right!43131 xs!286))) Empty!15554))))))

(declare-fun b!5057651 () Bool)

(declare-fun res!2153650 () Bool)

(assert (=> b!5057651 (=> (not res!2153650) (not e!3157120))))

(assert (=> b!5057651 (= res!2153650 (= (cheight!15765 (left!42801 (right!43131 xs!286))) (+ (max!0 (height!2131 (left!42801 (left!42801 (right!43131 xs!286)))) (height!2131 (right!43131 (left!42801 (right!43131 xs!286))))) 1)))))

(declare-fun b!5057652 () Bool)

(assert (=> b!5057652 (= e!3157120 (<= 0 (cheight!15765 (left!42801 (right!43131 xs!286)))))))

(assert (= (and d!1627864 res!2153648) b!5057650))

(assert (= (and b!5057650 res!2153649) b!5057651))

(assert (= (and b!5057651 res!2153650) b!5057652))

(declare-fun m!6093280 () Bool)

(assert (=> d!1627864 m!6093280))

(declare-fun m!6093282 () Bool)

(assert (=> d!1627864 m!6093282))

(declare-fun m!6093284 () Bool)

(assert (=> b!5057651 m!6093284))

(declare-fun m!6093286 () Bool)

(assert (=> b!5057651 m!6093286))

(assert (=> b!5057651 m!6093284))

(assert (=> b!5057651 m!6093286))

(declare-fun m!6093288 () Bool)

(assert (=> b!5057651 m!6093288))

(assert (=> b!5057324 d!1627864))

(declare-fun b!5057653 () Bool)

(declare-fun res!2153656 () Bool)

(declare-fun e!3157122 () Bool)

(assert (=> b!5057653 (=> (not res!2153656) (not e!3157122))))

(assert (=> b!5057653 (= res!2153656 (<= (- (height!2131 (left!42801 (left!42801 (left!42801 lt!2087515)))) (height!2131 (right!43131 (left!42801 (left!42801 lt!2087515))))) 1))))

(declare-fun b!5057654 () Bool)

(declare-fun e!3157121 () Bool)

(assert (=> b!5057654 (= e!3157121 e!3157122)))

(declare-fun res!2153652 () Bool)

(assert (=> b!5057654 (=> (not res!2153652) (not e!3157122))))

(assert (=> b!5057654 (= res!2153652 (<= (- 1) (- (height!2131 (left!42801 (left!42801 (left!42801 lt!2087515)))) (height!2131 (right!43131 (left!42801 (left!42801 lt!2087515)))))))))

(declare-fun b!5057655 () Bool)

(declare-fun res!2153654 () Bool)

(assert (=> b!5057655 (=> (not res!2153654) (not e!3157122))))

(assert (=> b!5057655 (= res!2153654 (not (isEmpty!31610 (left!42801 (left!42801 (left!42801 lt!2087515))))))))

(declare-fun b!5057656 () Bool)

(assert (=> b!5057656 (= e!3157122 (not (isEmpty!31610 (right!43131 (left!42801 (left!42801 lt!2087515))))))))

(declare-fun b!5057657 () Bool)

(declare-fun res!2153651 () Bool)

(assert (=> b!5057657 (=> (not res!2153651) (not e!3157122))))

(assert (=> b!5057657 (= res!2153651 (isBalanced!4416 (right!43131 (left!42801 (left!42801 lt!2087515)))))))

(declare-fun d!1627866 () Bool)

(declare-fun res!2153655 () Bool)

(assert (=> d!1627866 (=> res!2153655 e!3157121)))

(assert (=> d!1627866 (= res!2153655 (not ((_ is Node!15554) (left!42801 (left!42801 lt!2087515)))))))

(assert (=> d!1627866 (= (isBalanced!4416 (left!42801 (left!42801 lt!2087515))) e!3157121)))

(declare-fun b!5057658 () Bool)

(declare-fun res!2153653 () Bool)

(assert (=> b!5057658 (=> (not res!2153653) (not e!3157122))))

(assert (=> b!5057658 (= res!2153653 (isBalanced!4416 (left!42801 (left!42801 (left!42801 lt!2087515)))))))

(assert (= (and d!1627866 (not res!2153655)) b!5057654))

(assert (= (and b!5057654 res!2153652) b!5057653))

(assert (= (and b!5057653 res!2153656) b!5057658))

(assert (= (and b!5057658 res!2153653) b!5057657))

(assert (= (and b!5057657 res!2153651) b!5057655))

(assert (= (and b!5057655 res!2153654) b!5057656))

(declare-fun m!6093290 () Bool)

(assert (=> b!5057657 m!6093290))

(declare-fun m!6093292 () Bool)

(assert (=> b!5057658 m!6093292))

(declare-fun m!6093294 () Bool)

(assert (=> b!5057656 m!6093294))

(declare-fun m!6093296 () Bool)

(assert (=> b!5057654 m!6093296))

(declare-fun m!6093298 () Bool)

(assert (=> b!5057654 m!6093298))

(declare-fun m!6093300 () Bool)

(assert (=> b!5057655 m!6093300))

(assert (=> b!5057653 m!6093296))

(assert (=> b!5057653 m!6093298))

(assert (=> b!5057339 d!1627866))

(declare-fun d!1627868 () Bool)

(declare-fun res!2153657 () Bool)

(declare-fun e!3157123 () Bool)

(assert (=> d!1627868 (=> (not res!2153657) (not e!3157123))))

(assert (=> d!1627868 (= res!2153657 (= (csize!31338 (left!42801 (left!42801 ys!41))) (+ (size!39057 (left!42801 (left!42801 (left!42801 ys!41)))) (size!39057 (right!43131 (left!42801 (left!42801 ys!41)))))))))

(assert (=> d!1627868 (= (inv!77504 (left!42801 (left!42801 ys!41))) e!3157123)))

(declare-fun b!5057659 () Bool)

(declare-fun res!2153658 () Bool)

(assert (=> b!5057659 (=> (not res!2153658) (not e!3157123))))

(assert (=> b!5057659 (= res!2153658 (and (not (= (left!42801 (left!42801 (left!42801 ys!41))) Empty!15554)) (not (= (right!43131 (left!42801 (left!42801 ys!41))) Empty!15554))))))

(declare-fun b!5057660 () Bool)

(declare-fun res!2153659 () Bool)

(assert (=> b!5057660 (=> (not res!2153659) (not e!3157123))))

(assert (=> b!5057660 (= res!2153659 (= (cheight!15765 (left!42801 (left!42801 ys!41))) (+ (max!0 (height!2131 (left!42801 (left!42801 (left!42801 ys!41)))) (height!2131 (right!43131 (left!42801 (left!42801 ys!41))))) 1)))))

(declare-fun b!5057661 () Bool)

(assert (=> b!5057661 (= e!3157123 (<= 0 (cheight!15765 (left!42801 (left!42801 ys!41)))))))

(assert (= (and d!1627868 res!2153657) b!5057659))

(assert (= (and b!5057659 res!2153658) b!5057660))

(assert (= (and b!5057660 res!2153659) b!5057661))

(declare-fun m!6093302 () Bool)

(assert (=> d!1627868 m!6093302))

(declare-fun m!6093304 () Bool)

(assert (=> d!1627868 m!6093304))

(declare-fun m!6093306 () Bool)

(assert (=> b!5057660 m!6093306))

(declare-fun m!6093308 () Bool)

(assert (=> b!5057660 m!6093308))

(assert (=> b!5057660 m!6093306))

(assert (=> b!5057660 m!6093308))

(declare-fun m!6093310 () Bool)

(assert (=> b!5057660 m!6093310))

(assert (=> b!5057290 d!1627868))

(assert (=> b!5057146 d!1627534))

(assert (=> b!5057146 d!1627536))

(declare-fun b!5057665 () Bool)

(declare-fun e!3157124 () Bool)

(declare-fun lt!2087598 () List!58548)

(assert (=> b!5057665 (= e!3157124 (or (not (= (list!18969 (right!43131 (left!42801 (right!43131 xs!286)))) Nil!58424)) (= lt!2087598 (list!18969 (left!42801 (left!42801 (right!43131 xs!286)))))))))

(declare-fun b!5057662 () Bool)

(declare-fun e!3157125 () List!58548)

(assert (=> b!5057662 (= e!3157125 (list!18969 (right!43131 (left!42801 (right!43131 xs!286)))))))

(declare-fun b!5057663 () Bool)

(assert (=> b!5057663 (= e!3157125 (Cons!58424 (h!64872 (list!18969 (left!42801 (left!42801 (right!43131 xs!286))))) (++!12773 (t!371231 (list!18969 (left!42801 (left!42801 (right!43131 xs!286))))) (list!18969 (right!43131 (left!42801 (right!43131 xs!286)))))))))

(declare-fun b!5057664 () Bool)

(declare-fun res!2153660 () Bool)

(assert (=> b!5057664 (=> (not res!2153660) (not e!3157124))))

(assert (=> b!5057664 (= res!2153660 (= (size!39055 lt!2087598) (+ (size!39055 (list!18969 (left!42801 (left!42801 (right!43131 xs!286))))) (size!39055 (list!18969 (right!43131 (left!42801 (right!43131 xs!286))))))))))

(declare-fun d!1627870 () Bool)

(assert (=> d!1627870 e!3157124))

(declare-fun res!2153661 () Bool)

(assert (=> d!1627870 (=> (not res!2153661) (not e!3157124))))

(assert (=> d!1627870 (= res!2153661 (= (content!10411 lt!2087598) ((_ map or) (content!10411 (list!18969 (left!42801 (left!42801 (right!43131 xs!286))))) (content!10411 (list!18969 (right!43131 (left!42801 (right!43131 xs!286))))))))))

(assert (=> d!1627870 (= lt!2087598 e!3157125)))

(declare-fun c!867735 () Bool)

(assert (=> d!1627870 (= c!867735 ((_ is Nil!58424) (list!18969 (left!42801 (left!42801 (right!43131 xs!286))))))))

(assert (=> d!1627870 (= (++!12773 (list!18969 (left!42801 (left!42801 (right!43131 xs!286)))) (list!18969 (right!43131 (left!42801 (right!43131 xs!286))))) lt!2087598)))

(assert (= (and d!1627870 c!867735) b!5057662))

(assert (= (and d!1627870 (not c!867735)) b!5057663))

(assert (= (and d!1627870 res!2153661) b!5057664))

(assert (= (and b!5057664 res!2153660) b!5057665))

(assert (=> b!5057663 m!6092642))

(declare-fun m!6093312 () Bool)

(assert (=> b!5057663 m!6093312))

(declare-fun m!6093314 () Bool)

(assert (=> b!5057664 m!6093314))

(assert (=> b!5057664 m!6092640))

(declare-fun m!6093316 () Bool)

(assert (=> b!5057664 m!6093316))

(assert (=> b!5057664 m!6092642))

(declare-fun m!6093318 () Bool)

(assert (=> b!5057664 m!6093318))

(declare-fun m!6093320 () Bool)

(assert (=> d!1627870 m!6093320))

(assert (=> d!1627870 m!6092640))

(declare-fun m!6093322 () Bool)

(assert (=> d!1627870 m!6093322))

(assert (=> d!1627870 m!6092642))

(declare-fun m!6093324 () Bool)

(assert (=> d!1627870 m!6093324))

(assert (=> b!5057309 d!1627870))

(declare-fun b!5057668 () Bool)

(declare-fun e!3157127 () List!58548)

(assert (=> b!5057668 (= e!3157127 (list!18970 (xs!18888 (left!42801 (left!42801 (right!43131 xs!286))))))))

(declare-fun b!5057667 () Bool)

(declare-fun e!3157126 () List!58548)

(assert (=> b!5057667 (= e!3157126 e!3157127)))

(declare-fun c!867737 () Bool)

(assert (=> b!5057667 (= c!867737 ((_ is Leaf!25836) (left!42801 (left!42801 (right!43131 xs!286)))))))

(declare-fun d!1627872 () Bool)

(declare-fun c!867736 () Bool)

(assert (=> d!1627872 (= c!867736 ((_ is Empty!15554) (left!42801 (left!42801 (right!43131 xs!286)))))))

(assert (=> d!1627872 (= (list!18969 (left!42801 (left!42801 (right!43131 xs!286)))) e!3157126)))

(declare-fun b!5057666 () Bool)

(assert (=> b!5057666 (= e!3157126 Nil!58424)))

(declare-fun b!5057669 () Bool)

(assert (=> b!5057669 (= e!3157127 (++!12773 (list!18969 (left!42801 (left!42801 (left!42801 (right!43131 xs!286))))) (list!18969 (right!43131 (left!42801 (left!42801 (right!43131 xs!286)))))))))

(assert (= (and d!1627872 c!867736) b!5057666))

(assert (= (and d!1627872 (not c!867736)) b!5057667))

(assert (= (and b!5057667 c!867737) b!5057668))

(assert (= (and b!5057667 (not c!867737)) b!5057669))

(declare-fun m!6093326 () Bool)

(assert (=> b!5057668 m!6093326))

(declare-fun m!6093328 () Bool)

(assert (=> b!5057669 m!6093328))

(declare-fun m!6093330 () Bool)

(assert (=> b!5057669 m!6093330))

(assert (=> b!5057669 m!6093328))

(assert (=> b!5057669 m!6093330))

(declare-fun m!6093332 () Bool)

(assert (=> b!5057669 m!6093332))

(assert (=> b!5057309 d!1627872))

(declare-fun b!5057672 () Bool)

(declare-fun e!3157129 () List!58548)

(assert (=> b!5057672 (= e!3157129 (list!18970 (xs!18888 (right!43131 (left!42801 (right!43131 xs!286))))))))

(declare-fun b!5057671 () Bool)

(declare-fun e!3157128 () List!58548)

(assert (=> b!5057671 (= e!3157128 e!3157129)))

(declare-fun c!867739 () Bool)

(assert (=> b!5057671 (= c!867739 ((_ is Leaf!25836) (right!43131 (left!42801 (right!43131 xs!286)))))))

(declare-fun d!1627874 () Bool)

(declare-fun c!867738 () Bool)

(assert (=> d!1627874 (= c!867738 ((_ is Empty!15554) (right!43131 (left!42801 (right!43131 xs!286)))))))

(assert (=> d!1627874 (= (list!18969 (right!43131 (left!42801 (right!43131 xs!286)))) e!3157128)))

(declare-fun b!5057670 () Bool)

(assert (=> b!5057670 (= e!3157128 Nil!58424)))

(declare-fun b!5057673 () Bool)

(assert (=> b!5057673 (= e!3157129 (++!12773 (list!18969 (left!42801 (right!43131 (left!42801 (right!43131 xs!286))))) (list!18969 (right!43131 (right!43131 (left!42801 (right!43131 xs!286)))))))))

(assert (= (and d!1627874 c!867738) b!5057670))

(assert (= (and d!1627874 (not c!867738)) b!5057671))

(assert (= (and b!5057671 c!867739) b!5057672))

(assert (= (and b!5057671 (not c!867739)) b!5057673))

(declare-fun m!6093334 () Bool)

(assert (=> b!5057672 m!6093334))

(declare-fun m!6093336 () Bool)

(assert (=> b!5057673 m!6093336))

(declare-fun m!6093338 () Bool)

(assert (=> b!5057673 m!6093338))

(assert (=> b!5057673 m!6093336))

(assert (=> b!5057673 m!6093338))

(declare-fun m!6093340 () Bool)

(assert (=> b!5057673 m!6093340))

(assert (=> b!5057309 d!1627874))

(declare-fun b!5057674 () Bool)

(declare-fun res!2153667 () Bool)

(declare-fun e!3157131 () Bool)

(assert (=> b!5057674 (=> (not res!2153667) (not e!3157131))))

(assert (=> b!5057674 (= res!2153667 (<= (- (height!2131 (left!42801 (left!42801 (right!43131 ys!41)))) (height!2131 (right!43131 (left!42801 (right!43131 ys!41))))) 1))))

(declare-fun b!5057675 () Bool)

(declare-fun e!3157130 () Bool)

(assert (=> b!5057675 (= e!3157130 e!3157131)))

(declare-fun res!2153663 () Bool)

(assert (=> b!5057675 (=> (not res!2153663) (not e!3157131))))

(assert (=> b!5057675 (= res!2153663 (<= (- 1) (- (height!2131 (left!42801 (left!42801 (right!43131 ys!41)))) (height!2131 (right!43131 (left!42801 (right!43131 ys!41)))))))))

(declare-fun b!5057676 () Bool)

(declare-fun res!2153665 () Bool)

(assert (=> b!5057676 (=> (not res!2153665) (not e!3157131))))

(assert (=> b!5057676 (= res!2153665 (not (isEmpty!31610 (left!42801 (left!42801 (right!43131 ys!41))))))))

(declare-fun b!5057677 () Bool)

(assert (=> b!5057677 (= e!3157131 (not (isEmpty!31610 (right!43131 (left!42801 (right!43131 ys!41))))))))

(declare-fun b!5057678 () Bool)

(declare-fun res!2153662 () Bool)

(assert (=> b!5057678 (=> (not res!2153662) (not e!3157131))))

(assert (=> b!5057678 (= res!2153662 (isBalanced!4416 (right!43131 (left!42801 (right!43131 ys!41)))))))

(declare-fun d!1627876 () Bool)

(declare-fun res!2153666 () Bool)

(assert (=> d!1627876 (=> res!2153666 e!3157130)))

(assert (=> d!1627876 (= res!2153666 (not ((_ is Node!15554) (left!42801 (right!43131 ys!41)))))))

(assert (=> d!1627876 (= (isBalanced!4416 (left!42801 (right!43131 ys!41))) e!3157130)))

(declare-fun b!5057679 () Bool)

(declare-fun res!2153664 () Bool)

(assert (=> b!5057679 (=> (not res!2153664) (not e!3157131))))

(assert (=> b!5057679 (= res!2153664 (isBalanced!4416 (left!42801 (left!42801 (right!43131 ys!41)))))))

(assert (= (and d!1627876 (not res!2153666)) b!5057675))

(assert (= (and b!5057675 res!2153663) b!5057674))

(assert (= (and b!5057674 res!2153667) b!5057679))

(assert (= (and b!5057679 res!2153664) b!5057678))

(assert (= (and b!5057678 res!2153662) b!5057676))

(assert (= (and b!5057676 res!2153665) b!5057677))

(declare-fun m!6093342 () Bool)

(assert (=> b!5057678 m!6093342))

(declare-fun m!6093344 () Bool)

(assert (=> b!5057679 m!6093344))

(declare-fun m!6093346 () Bool)

(assert (=> b!5057677 m!6093346))

(declare-fun m!6093348 () Bool)

(assert (=> b!5057675 m!6093348))

(declare-fun m!6093350 () Bool)

(assert (=> b!5057675 m!6093350))

(declare-fun m!6093352 () Bool)

(assert (=> b!5057676 m!6093352))

(assert (=> b!5057674 m!6093348))

(assert (=> b!5057674 m!6093350))

(assert (=> b!5057275 d!1627876))

(declare-fun b!5057683 () Bool)

(declare-fun lt!2087599 () List!58548)

(declare-fun e!3157132 () Bool)

(assert (=> b!5057683 (= e!3157132 (or (not (= (list!18969 (right!43131 (left!42801 ys!41))) Nil!58424)) (= lt!2087599 (++!12773 (list!18969 xs!286) (list!18969 (left!42801 (left!42801 ys!41)))))))))

(declare-fun b!5057680 () Bool)

(declare-fun e!3157133 () List!58548)

(assert (=> b!5057680 (= e!3157133 (list!18969 (right!43131 (left!42801 ys!41))))))

(declare-fun b!5057681 () Bool)

(assert (=> b!5057681 (= e!3157133 (Cons!58424 (h!64872 (++!12773 (list!18969 xs!286) (list!18969 (left!42801 (left!42801 ys!41))))) (++!12773 (t!371231 (++!12773 (list!18969 xs!286) (list!18969 (left!42801 (left!42801 ys!41))))) (list!18969 (right!43131 (left!42801 ys!41))))))))

(declare-fun b!5057682 () Bool)

(declare-fun res!2153668 () Bool)

(assert (=> b!5057682 (=> (not res!2153668) (not e!3157132))))

(assert (=> b!5057682 (= res!2153668 (= (size!39055 lt!2087599) (+ (size!39055 (++!12773 (list!18969 xs!286) (list!18969 (left!42801 (left!42801 ys!41))))) (size!39055 (list!18969 (right!43131 (left!42801 ys!41)))))))))

(declare-fun d!1627878 () Bool)

(assert (=> d!1627878 e!3157132))

(declare-fun res!2153669 () Bool)

(assert (=> d!1627878 (=> (not res!2153669) (not e!3157132))))

(assert (=> d!1627878 (= res!2153669 (= (content!10411 lt!2087599) ((_ map or) (content!10411 (++!12773 (list!18969 xs!286) (list!18969 (left!42801 (left!42801 ys!41))))) (content!10411 (list!18969 (right!43131 (left!42801 ys!41)))))))))

(assert (=> d!1627878 (= lt!2087599 e!3157133)))

(declare-fun c!867740 () Bool)

(assert (=> d!1627878 (= c!867740 ((_ is Nil!58424) (++!12773 (list!18969 xs!286) (list!18969 (left!42801 (left!42801 ys!41))))))))

(assert (=> d!1627878 (= (++!12773 (++!12773 (list!18969 xs!286) (list!18969 (left!42801 (left!42801 ys!41)))) (list!18969 (right!43131 (left!42801 ys!41)))) lt!2087599)))

(assert (= (and d!1627878 c!867740) b!5057680))

(assert (= (and d!1627878 (not c!867740)) b!5057681))

(assert (= (and d!1627878 res!2153669) b!5057682))

(assert (= (and b!5057682 res!2153668) b!5057683))

(assert (=> b!5057681 m!6092266))

(declare-fun m!6093354 () Bool)

(assert (=> b!5057681 m!6093354))

(declare-fun m!6093356 () Bool)

(assert (=> b!5057682 m!6093356))

(assert (=> b!5057682 m!6092268))

(declare-fun m!6093358 () Bool)

(assert (=> b!5057682 m!6093358))

(assert (=> b!5057682 m!6092266))

(declare-fun m!6093360 () Bool)

(assert (=> b!5057682 m!6093360))

(declare-fun m!6093362 () Bool)

(assert (=> d!1627878 m!6093362))

(assert (=> d!1627878 m!6092268))

(declare-fun m!6093364 () Bool)

(assert (=> d!1627878 m!6093364))

(assert (=> d!1627878 m!6092266))

(declare-fun m!6093366 () Bool)

(assert (=> d!1627878 m!6093366))

(assert (=> bm!352179 d!1627878))

(declare-fun d!1627880 () Bool)

(assert (=> d!1627880 (= (list!18970 (xs!18888 (left!42801 (left!42801 ys!41)))) (innerList!15642 (xs!18888 (left!42801 (left!42801 ys!41)))))))

(assert (=> b!5057227 d!1627880))

(declare-fun lt!2087600 () List!58548)

(declare-fun b!5057687 () Bool)

(declare-fun e!3157134 () Bool)

(assert (=> b!5057687 (= e!3157134 (or (not (= (list!18969 (right!43131 (left!42801 ys!41))) Nil!58424)) (= lt!2087600 call!352175)))))

(declare-fun b!5057684 () Bool)

(declare-fun e!3157135 () List!58548)

(assert (=> b!5057684 (= e!3157135 (list!18969 (right!43131 (left!42801 ys!41))))))

(declare-fun b!5057685 () Bool)

(assert (=> b!5057685 (= e!3157135 (Cons!58424 (h!64872 call!352175) (++!12773 (t!371231 call!352175) (list!18969 (right!43131 (left!42801 ys!41))))))))

(declare-fun b!5057686 () Bool)

(declare-fun res!2153670 () Bool)

(assert (=> b!5057686 (=> (not res!2153670) (not e!3157134))))

(assert (=> b!5057686 (= res!2153670 (= (size!39055 lt!2087600) (+ (size!39055 call!352175) (size!39055 (list!18969 (right!43131 (left!42801 ys!41)))))))))

(declare-fun d!1627882 () Bool)

(assert (=> d!1627882 e!3157134))

(declare-fun res!2153671 () Bool)

(assert (=> d!1627882 (=> (not res!2153671) (not e!3157134))))

(assert (=> d!1627882 (= res!2153671 (= (content!10411 lt!2087600) ((_ map or) (content!10411 call!352175) (content!10411 (list!18969 (right!43131 (left!42801 ys!41)))))))))

(assert (=> d!1627882 (= lt!2087600 e!3157135)))

(declare-fun c!867741 () Bool)

(assert (=> d!1627882 (= c!867741 ((_ is Nil!58424) call!352175))))

(assert (=> d!1627882 (= (++!12773 call!352175 (list!18969 (right!43131 (left!42801 ys!41)))) lt!2087600)))

(assert (= (and d!1627882 c!867741) b!5057684))

(assert (= (and d!1627882 (not c!867741)) b!5057685))

(assert (= (and d!1627882 res!2153671) b!5057686))

(assert (= (and b!5057686 res!2153670) b!5057687))

(assert (=> b!5057685 m!6092266))

(declare-fun m!6093368 () Bool)

(assert (=> b!5057685 m!6093368))

(declare-fun m!6093370 () Bool)

(assert (=> b!5057686 m!6093370))

(declare-fun m!6093372 () Bool)

(assert (=> b!5057686 m!6093372))

(assert (=> b!5057686 m!6092266))

(assert (=> b!5057686 m!6093360))

(declare-fun m!6093374 () Bool)

(assert (=> d!1627882 m!6093374))

(declare-fun m!6093376 () Bool)

(assert (=> d!1627882 m!6093376))

(assert (=> d!1627882 m!6092266))

(assert (=> d!1627882 m!6093366))

(assert (=> bm!352170 d!1627882))

(declare-fun d!1627884 () Bool)

(assert (=> d!1627884 (= (isEmpty!31612 (list!18969 (right!43131 ys!41))) ((_ is Nil!58424) (list!18969 (right!43131 ys!41))))))

(assert (=> d!1627690 d!1627884))

(assert (=> d!1627690 d!1627606))

(declare-fun d!1627886 () Bool)

(declare-fun lt!2087601 () Int)

(assert (=> d!1627886 (= lt!2087601 (size!39055 (list!18969 (right!43131 ys!41))))))

(assert (=> d!1627886 (= lt!2087601 (ite ((_ is Empty!15554) (right!43131 ys!41)) 0 (ite ((_ is Leaf!25836) (right!43131 ys!41)) (csize!31339 (right!43131 ys!41)) (csize!31338 (right!43131 ys!41)))))))

(assert (=> d!1627886 (= (size!39057 (right!43131 ys!41)) lt!2087601)))

(declare-fun bs!1189440 () Bool)

(assert (= bs!1189440 d!1627886))

(assert (=> bs!1189440 m!6092152))

(assert (=> bs!1189440 m!6092152))

(assert (=> bs!1189440 m!6092612))

(assert (=> d!1627690 d!1627886))

(declare-fun d!1627888 () Bool)

(declare-fun lt!2087602 () Int)

(assert (=> d!1627888 (>= lt!2087602 0)))

(declare-fun e!3157136 () Int)

(assert (=> d!1627888 (= lt!2087602 e!3157136)))

(declare-fun c!867742 () Bool)

(assert (=> d!1627888 (= c!867742 ((_ is Nil!58424) (list!18970 (xs!18888 (left!42801 xs!286)))))))

(assert (=> d!1627888 (= (size!39055 (list!18970 (xs!18888 (left!42801 xs!286)))) lt!2087602)))

(declare-fun b!5057688 () Bool)

(assert (=> b!5057688 (= e!3157136 0)))

(declare-fun b!5057689 () Bool)

(assert (=> b!5057689 (= e!3157136 (+ 1 (size!39055 (t!371231 (list!18970 (xs!18888 (left!42801 xs!286)))))))))

(assert (= (and d!1627888 c!867742) b!5057688))

(assert (= (and d!1627888 (not c!867742)) b!5057689))

(declare-fun m!6093378 () Bool)

(assert (=> b!5057689 m!6093378))

(assert (=> d!1627668 d!1627888))

(declare-fun d!1627890 () Bool)

(assert (=> d!1627890 (= (list!18970 (xs!18888 (left!42801 xs!286))) (innerList!15642 (xs!18888 (left!42801 xs!286))))))

(assert (=> d!1627668 d!1627890))

(declare-fun d!1627892 () Bool)

(declare-fun c!867743 () Bool)

(assert (=> d!1627892 (= c!867743 ((_ is Node!15554) (left!42801 (right!43131 (left!42801 xs!286)))))))

(declare-fun e!3157137 () Bool)

(assert (=> d!1627892 (= (inv!77500 (left!42801 (right!43131 (left!42801 xs!286)))) e!3157137)))

(declare-fun b!5057690 () Bool)

(assert (=> b!5057690 (= e!3157137 (inv!77504 (left!42801 (right!43131 (left!42801 xs!286)))))))

(declare-fun b!5057691 () Bool)

(declare-fun e!3157138 () Bool)

(assert (=> b!5057691 (= e!3157137 e!3157138)))

(declare-fun res!2153672 () Bool)

(assert (=> b!5057691 (= res!2153672 (not ((_ is Leaf!25836) (left!42801 (right!43131 (left!42801 xs!286))))))))

(assert (=> b!5057691 (=> res!2153672 e!3157138)))

(declare-fun b!5057692 () Bool)

(assert (=> b!5057692 (= e!3157138 (inv!77505 (left!42801 (right!43131 (left!42801 xs!286)))))))

(assert (= (and d!1627892 c!867743) b!5057690))

(assert (= (and d!1627892 (not c!867743)) b!5057691))

(assert (= (and b!5057691 (not res!2153672)) b!5057692))

(declare-fun m!6093380 () Bool)

(assert (=> b!5057690 m!6093380))

(declare-fun m!6093382 () Bool)

(assert (=> b!5057692 m!6093382))

(assert (=> b!5057413 d!1627892))

(declare-fun d!1627894 () Bool)

(declare-fun c!867744 () Bool)

(assert (=> d!1627894 (= c!867744 ((_ is Node!15554) (right!43131 (right!43131 (left!42801 xs!286)))))))

(declare-fun e!3157139 () Bool)

(assert (=> d!1627894 (= (inv!77500 (right!43131 (right!43131 (left!42801 xs!286)))) e!3157139)))

(declare-fun b!5057693 () Bool)

(assert (=> b!5057693 (= e!3157139 (inv!77504 (right!43131 (right!43131 (left!42801 xs!286)))))))

(declare-fun b!5057694 () Bool)

(declare-fun e!3157140 () Bool)

(assert (=> b!5057694 (= e!3157139 e!3157140)))

(declare-fun res!2153673 () Bool)

(assert (=> b!5057694 (= res!2153673 (not ((_ is Leaf!25836) (right!43131 (right!43131 (left!42801 xs!286))))))))

(assert (=> b!5057694 (=> res!2153673 e!3157140)))

(declare-fun b!5057695 () Bool)

(assert (=> b!5057695 (= e!3157140 (inv!77505 (right!43131 (right!43131 (left!42801 xs!286)))))))

(assert (= (and d!1627894 c!867744) b!5057693))

(assert (= (and d!1627894 (not c!867744)) b!5057694))

(assert (= (and b!5057694 (not res!2153673)) b!5057695))

(declare-fun m!6093384 () Bool)

(assert (=> b!5057693 m!6093384))

(declare-fun m!6093386 () Bool)

(assert (=> b!5057695 m!6093386))

(assert (=> b!5057413 d!1627894))

(declare-fun b!5057696 () Bool)

(declare-fun res!2153679 () Bool)

(declare-fun e!3157142 () Bool)

(assert (=> b!5057696 (=> (not res!2153679) (not e!3157142))))

(assert (=> b!5057696 (= res!2153679 (<= (- (height!2131 (left!42801 (right!43131 (right!43131 lt!2087515)))) (height!2131 (right!43131 (right!43131 (right!43131 lt!2087515))))) 1))))

(declare-fun b!5057697 () Bool)

(declare-fun e!3157141 () Bool)

(assert (=> b!5057697 (= e!3157141 e!3157142)))

(declare-fun res!2153675 () Bool)

(assert (=> b!5057697 (=> (not res!2153675) (not e!3157142))))

(assert (=> b!5057697 (= res!2153675 (<= (- 1) (- (height!2131 (left!42801 (right!43131 (right!43131 lt!2087515)))) (height!2131 (right!43131 (right!43131 (right!43131 lt!2087515)))))))))

(declare-fun b!5057698 () Bool)

(declare-fun res!2153677 () Bool)

(assert (=> b!5057698 (=> (not res!2153677) (not e!3157142))))

(assert (=> b!5057698 (= res!2153677 (not (isEmpty!31610 (left!42801 (right!43131 (right!43131 lt!2087515))))))))

(declare-fun b!5057699 () Bool)

(assert (=> b!5057699 (= e!3157142 (not (isEmpty!31610 (right!43131 (right!43131 (right!43131 lt!2087515))))))))

(declare-fun b!5057700 () Bool)

(declare-fun res!2153674 () Bool)

(assert (=> b!5057700 (=> (not res!2153674) (not e!3157142))))

(assert (=> b!5057700 (= res!2153674 (isBalanced!4416 (right!43131 (right!43131 (right!43131 lt!2087515)))))))

(declare-fun d!1627896 () Bool)

(declare-fun res!2153678 () Bool)

(assert (=> d!1627896 (=> res!2153678 e!3157141)))

(assert (=> d!1627896 (= res!2153678 (not ((_ is Node!15554) (right!43131 (right!43131 lt!2087515)))))))

(assert (=> d!1627896 (= (isBalanced!4416 (right!43131 (right!43131 lt!2087515))) e!3157141)))

(declare-fun b!5057701 () Bool)

(declare-fun res!2153676 () Bool)

(assert (=> b!5057701 (=> (not res!2153676) (not e!3157142))))

(assert (=> b!5057701 (= res!2153676 (isBalanced!4416 (left!42801 (right!43131 (right!43131 lt!2087515)))))))

(assert (= (and d!1627896 (not res!2153678)) b!5057697))

(assert (= (and b!5057697 res!2153675) b!5057696))

(assert (= (and b!5057696 res!2153679) b!5057701))

(assert (= (and b!5057701 res!2153676) b!5057700))

(assert (= (and b!5057700 res!2153674) b!5057698))

(assert (= (and b!5057698 res!2153677) b!5057699))

(declare-fun m!6093388 () Bool)

(assert (=> b!5057700 m!6093388))

(declare-fun m!6093390 () Bool)

(assert (=> b!5057701 m!6093390))

(declare-fun m!6093392 () Bool)

(assert (=> b!5057699 m!6093392))

(declare-fun m!6093394 () Bool)

(assert (=> b!5057697 m!6093394))

(declare-fun m!6093396 () Bool)

(assert (=> b!5057697 m!6093396))

(declare-fun m!6093398 () Bool)

(assert (=> b!5057698 m!6093398))

(assert (=> b!5057696 m!6093394))

(assert (=> b!5057696 m!6093396))

(assert (=> b!5057237 d!1627896))

(declare-fun d!1627898 () Bool)

(declare-fun lt!2087603 () Int)

(assert (=> d!1627898 (>= lt!2087603 0)))

(declare-fun e!3157143 () Int)

(assert (=> d!1627898 (= lt!2087603 e!3157143)))

(declare-fun c!867745 () Bool)

(assert (=> d!1627898 (= c!867745 ((_ is Nil!58424) (t!371231 (list!18969 ys!41))))))

(assert (=> d!1627898 (= (size!39055 (t!371231 (list!18969 ys!41))) lt!2087603)))

(declare-fun b!5057702 () Bool)

(assert (=> b!5057702 (= e!3157143 0)))

(declare-fun b!5057703 () Bool)

(assert (=> b!5057703 (= e!3157143 (+ 1 (size!39055 (t!371231 (t!371231 (list!18969 ys!41))))))))

(assert (= (and d!1627898 c!867745) b!5057702))

(assert (= (and d!1627898 (not c!867745)) b!5057703))

(declare-fun m!6093400 () Bool)

(assert (=> b!5057703 m!6093400))

(assert (=> b!5057218 d!1627898))

(declare-fun d!1627900 () Bool)

(declare-fun c!867746 () Bool)

(assert (=> d!1627900 (= c!867746 ((_ is Node!15554) (left!42801 (left!42801 (right!43131 ys!41)))))))

(declare-fun e!3157144 () Bool)

(assert (=> d!1627900 (= (inv!77500 (left!42801 (left!42801 (right!43131 ys!41)))) e!3157144)))

(declare-fun b!5057704 () Bool)

(assert (=> b!5057704 (= e!3157144 (inv!77504 (left!42801 (left!42801 (right!43131 ys!41)))))))

(declare-fun b!5057705 () Bool)

(declare-fun e!3157145 () Bool)

(assert (=> b!5057705 (= e!3157144 e!3157145)))

(declare-fun res!2153680 () Bool)

(assert (=> b!5057705 (= res!2153680 (not ((_ is Leaf!25836) (left!42801 (left!42801 (right!43131 ys!41))))))))

(assert (=> b!5057705 (=> res!2153680 e!3157145)))

(declare-fun b!5057706 () Bool)

(assert (=> b!5057706 (= e!3157145 (inv!77505 (left!42801 (left!42801 (right!43131 ys!41)))))))

(assert (= (and d!1627900 c!867746) b!5057704))

(assert (= (and d!1627900 (not c!867746)) b!5057705))

(assert (= (and b!5057705 (not res!2153680)) b!5057706))

(declare-fun m!6093402 () Bool)

(assert (=> b!5057704 m!6093402))

(declare-fun m!6093404 () Bool)

(assert (=> b!5057706 m!6093404))

(assert (=> b!5057417 d!1627900))

(declare-fun d!1627902 () Bool)

(declare-fun c!867747 () Bool)

(assert (=> d!1627902 (= c!867747 ((_ is Node!15554) (right!43131 (left!42801 (right!43131 ys!41)))))))

(declare-fun e!3157146 () Bool)

(assert (=> d!1627902 (= (inv!77500 (right!43131 (left!42801 (right!43131 ys!41)))) e!3157146)))

(declare-fun b!5057707 () Bool)

(assert (=> b!5057707 (= e!3157146 (inv!77504 (right!43131 (left!42801 (right!43131 ys!41)))))))

(declare-fun b!5057708 () Bool)

(declare-fun e!3157147 () Bool)

(assert (=> b!5057708 (= e!3157146 e!3157147)))

(declare-fun res!2153681 () Bool)

(assert (=> b!5057708 (= res!2153681 (not ((_ is Leaf!25836) (right!43131 (left!42801 (right!43131 ys!41))))))))

(assert (=> b!5057708 (=> res!2153681 e!3157147)))

(declare-fun b!5057709 () Bool)

(assert (=> b!5057709 (= e!3157147 (inv!77505 (right!43131 (left!42801 (right!43131 ys!41)))))))

(assert (= (and d!1627902 c!867747) b!5057707))

(assert (= (and d!1627902 (not c!867747)) b!5057708))

(assert (= (and b!5057708 (not res!2153681)) b!5057709))

(declare-fun m!6093406 () Bool)

(assert (=> b!5057707 m!6093406))

(declare-fun m!6093408 () Bool)

(assert (=> b!5057709 m!6093408))

(assert (=> b!5057417 d!1627902))

(declare-fun d!1627904 () Bool)

(declare-fun c!867748 () Bool)

(assert (=> d!1627904 (= c!867748 ((_ is Nil!58424) (t!371231 (list!18969 ys!41))))))

(declare-fun e!3157148 () (InoxSet T!105048))

(assert (=> d!1627904 (= (content!10411 (t!371231 (list!18969 ys!41))) e!3157148)))

(declare-fun b!5057710 () Bool)

(assert (=> b!5057710 (= e!3157148 ((as const (Array T!105048 Bool)) false))))

(declare-fun b!5057711 () Bool)

(assert (=> b!5057711 (= e!3157148 ((_ map or) (store ((as const (Array T!105048 Bool)) false) (h!64872 (t!371231 (list!18969 ys!41))) true) (content!10411 (t!371231 (t!371231 (list!18969 ys!41))))))))

(assert (= (and d!1627904 c!867748) b!5057710))

(assert (= (and d!1627904 (not c!867748)) b!5057711))

(declare-fun m!6093410 () Bool)

(assert (=> b!5057711 m!6093410))

(declare-fun m!6093412 () Bool)

(assert (=> b!5057711 m!6093412))

(assert (=> b!5057185 d!1627904))

(declare-fun d!1627906 () Bool)

(assert (=> d!1627906 (= (height!2131 (left!42801 (left!42801 xs!286))) (ite ((_ is Empty!15554) (left!42801 (left!42801 xs!286))) 0 (ite ((_ is Leaf!25836) (left!42801 (left!42801 xs!286))) 1 (cheight!15765 (left!42801 (left!42801 xs!286))))))))

(assert (=> b!5057358 d!1627906))

(declare-fun d!1627908 () Bool)

(assert (=> d!1627908 (= (height!2131 (right!43131 (left!42801 xs!286))) (ite ((_ is Empty!15554) (right!43131 (left!42801 xs!286))) 0 (ite ((_ is Leaf!25836) (right!43131 (left!42801 xs!286))) 1 (cheight!15765 (right!43131 (left!42801 xs!286))))))))

(assert (=> b!5057358 d!1627908))

(declare-fun d!1627910 () Bool)

(assert (=> d!1627910 (= (list!18970 (xs!18888 (right!43131 xs!286))) (innerList!15642 (xs!18888 (right!43131 xs!286))))))

(assert (=> b!5057322 d!1627910))

(declare-fun d!1627912 () Bool)

(declare-fun res!2153682 () Bool)

(declare-fun e!3157149 () Bool)

(assert (=> d!1627912 (=> (not res!2153682) (not e!3157149))))

(assert (=> d!1627912 (= res!2153682 (<= (size!39055 (list!18970 (xs!18888 (left!42801 (left!42801 xs!286))))) 512))))

(assert (=> d!1627912 (= (inv!77505 (left!42801 (left!42801 xs!286))) e!3157149)))

(declare-fun b!5057712 () Bool)

(declare-fun res!2153683 () Bool)

(assert (=> b!5057712 (=> (not res!2153683) (not e!3157149))))

(assert (=> b!5057712 (= res!2153683 (= (csize!31339 (left!42801 (left!42801 xs!286))) (size!39055 (list!18970 (xs!18888 (left!42801 (left!42801 xs!286)))))))))

(declare-fun b!5057713 () Bool)

(assert (=> b!5057713 (= e!3157149 (and (> (csize!31339 (left!42801 (left!42801 xs!286))) 0) (<= (csize!31339 (left!42801 (left!42801 xs!286))) 512)))))

(assert (= (and d!1627912 res!2153682) b!5057712))

(assert (= (and b!5057712 res!2153683) b!5057713))

(declare-fun m!6093414 () Bool)

(assert (=> d!1627912 m!6093414))

(assert (=> d!1627912 m!6093414))

(declare-fun m!6093416 () Bool)

(assert (=> d!1627912 m!6093416))

(assert (=> b!5057712 m!6093414))

(assert (=> b!5057712 m!6093414))

(assert (=> b!5057712 m!6093416))

(assert (=> b!5057172 d!1627912))

(declare-fun d!1627914 () Bool)

(declare-fun lt!2087604 () Int)

(assert (=> d!1627914 (>= lt!2087604 0)))

(declare-fun e!3157150 () Int)

(assert (=> d!1627914 (= lt!2087604 e!3157150)))

(declare-fun c!867749 () Bool)

(assert (=> d!1627914 (= c!867749 ((_ is Nil!58424) lt!2087540))))

(assert (=> d!1627914 (= (size!39055 lt!2087540) lt!2087604)))

(declare-fun b!5057714 () Bool)

(assert (=> b!5057714 (= e!3157150 0)))

(declare-fun b!5057715 () Bool)

(assert (=> b!5057715 (= e!3157150 (+ 1 (size!39055 (t!371231 lt!2087540))))))

(assert (= (and d!1627914 c!867749) b!5057714))

(assert (= (and d!1627914 (not c!867749)) b!5057715))

(declare-fun m!6093418 () Bool)

(assert (=> b!5057715 m!6093418))

(assert (=> b!5057241 d!1627914))

(declare-fun d!1627916 () Bool)

(declare-fun lt!2087605 () Int)

(assert (=> d!1627916 (>= lt!2087605 0)))

(declare-fun e!3157151 () Int)

(assert (=> d!1627916 (= lt!2087605 e!3157151)))

(declare-fun c!867750 () Bool)

(assert (=> d!1627916 (= c!867750 ((_ is Nil!58424) (list!18969 (left!42801 lt!2087515))))))

(assert (=> d!1627916 (= (size!39055 (list!18969 (left!42801 lt!2087515))) lt!2087605)))

(declare-fun b!5057716 () Bool)

(assert (=> b!5057716 (= e!3157151 0)))

(declare-fun b!5057717 () Bool)

(assert (=> b!5057717 (= e!3157151 (+ 1 (size!39055 (t!371231 (list!18969 (left!42801 lt!2087515))))))))

(assert (= (and d!1627916 c!867750) b!5057716))

(assert (= (and d!1627916 (not c!867750)) b!5057717))

(declare-fun m!6093420 () Bool)

(assert (=> b!5057717 m!6093420))

(assert (=> b!5057241 d!1627916))

(declare-fun d!1627918 () Bool)

(declare-fun lt!2087606 () Int)

(assert (=> d!1627918 (>= lt!2087606 0)))

(declare-fun e!3157152 () Int)

(assert (=> d!1627918 (= lt!2087606 e!3157152)))

(declare-fun c!867751 () Bool)

(assert (=> d!1627918 (= c!867751 ((_ is Nil!58424) (list!18969 (right!43131 lt!2087515))))))

(assert (=> d!1627918 (= (size!39055 (list!18969 (right!43131 lt!2087515))) lt!2087606)))

(declare-fun b!5057718 () Bool)

(assert (=> b!5057718 (= e!3157152 0)))

(declare-fun b!5057719 () Bool)

(assert (=> b!5057719 (= e!3157152 (+ 1 (size!39055 (t!371231 (list!18969 (right!43131 lt!2087515))))))))

(assert (= (and d!1627918 c!867751) b!5057718))

(assert (= (and d!1627918 (not c!867751)) b!5057719))

(declare-fun m!6093422 () Bool)

(assert (=> b!5057719 m!6093422))

(assert (=> b!5057241 d!1627918))

(declare-fun d!1627920 () Bool)

(assert (=> d!1627920 (= (height!2131 (left!42801 (right!43131 xs!286))) (ite ((_ is Empty!15554) (left!42801 (right!43131 xs!286))) 0 (ite ((_ is Leaf!25836) (left!42801 (right!43131 xs!286))) 1 (cheight!15765 (left!42801 (right!43131 xs!286))))))))

(assert (=> b!5057264 d!1627920))

(declare-fun d!1627922 () Bool)

(assert (=> d!1627922 (= (height!2131 (right!43131 (right!43131 xs!286))) (ite ((_ is Empty!15554) (right!43131 (right!43131 xs!286))) 0 (ite ((_ is Leaf!25836) (right!43131 (right!43131 xs!286))) 1 (cheight!15765 (right!43131 (right!43131 xs!286))))))))

(assert (=> b!5057264 d!1627922))

(assert (=> bm!352176 d!1627630))

(declare-fun d!1627924 () Bool)

(assert (=> d!1627924 (= (list!18970 (xs!18888 (right!43131 lt!2087515))) (innerList!15642 (xs!18888 (right!43131 lt!2087515))))))

(assert (=> b!5057249 d!1627924))

(declare-fun d!1627926 () Bool)

(assert (=> d!1627926 (= (inv!77501 (xs!18888 (right!43131 (left!42801 xs!286)))) (<= (size!39055 (innerList!15642 (xs!18888 (right!43131 (left!42801 xs!286))))) 2147483647))))

(declare-fun bs!1189441 () Bool)

(assert (= bs!1189441 d!1627926))

(declare-fun m!6093424 () Bool)

(assert (=> bs!1189441 m!6093424))

(assert (=> b!5057414 d!1627926))

(declare-fun bm!352229 () Bool)

(declare-fun call!352237 () List!58548)

(declare-fun call!352236 () List!58548)

(assert (=> bm!352229 (= call!352237 (++!12773 (t!371231 (list!18969 xs!286)) call!352236))))

(declare-fun bm!352230 () Bool)

(declare-fun call!352234 () List!58548)

(declare-fun call!352235 () List!58548)

(assert (=> bm!352230 (= call!352234 (++!12773 call!352235 (list!18969 (right!43131 (left!42801 ys!41)))))))

(declare-fun d!1627928 () Bool)

(declare-fun e!3157153 () Bool)

(assert (=> d!1627928 e!3157153))

(declare-fun c!867752 () Bool)

(assert (=> d!1627928 (= c!867752 ((_ is Nil!58424) (t!371231 (list!18969 xs!286))))))

(assert (=> d!1627928 (= (appendAssoc!296 (t!371231 (list!18969 xs!286)) (list!18969 (left!42801 (left!42801 ys!41))) (list!18969 (right!43131 (left!42801 ys!41)))) true)))

(declare-fun b!5057720 () Bool)

(assert (=> b!5057720 (= e!3157153 (= call!352234 call!352237))))

(declare-fun lt!2087607 () Bool)

(assert (=> b!5057720 (= lt!2087607 (appendAssoc!296 (t!371231 (t!371231 (list!18969 xs!286))) (list!18969 (left!42801 (left!42801 ys!41))) (list!18969 (right!43131 (left!42801 ys!41)))))))

(declare-fun bm!352231 () Bool)

(assert (=> bm!352231 (= call!352235 (++!12773 (t!371231 (list!18969 xs!286)) (list!18969 (left!42801 (left!42801 ys!41)))))))

(declare-fun bm!352232 () Bool)

(assert (=> bm!352232 (= call!352236 (++!12773 (list!18969 (left!42801 (left!42801 ys!41))) (list!18969 (right!43131 (left!42801 ys!41)))))))

(declare-fun b!5057721 () Bool)

(assert (=> b!5057721 (= e!3157153 (= call!352234 call!352237))))

(assert (= (and d!1627928 c!867752) b!5057721))

(assert (= (and d!1627928 (not c!867752)) b!5057720))

(assert (= (or b!5057721 b!5057720) bm!352231))

(assert (= (or b!5057721 b!5057720) bm!352232))

(assert (= (or b!5057721 b!5057720) bm!352229))

(assert (= (or b!5057721 b!5057720) bm!352230))

(assert (=> bm!352231 m!6092264))

(assert (=> bm!352231 m!6092572))

(assert (=> bm!352230 m!6092266))

(declare-fun m!6093426 () Bool)

(assert (=> bm!352230 m!6093426))

(assert (=> b!5057720 m!6092264))

(assert (=> b!5057720 m!6092266))

(declare-fun m!6093428 () Bool)

(assert (=> b!5057720 m!6093428))

(declare-fun m!6093430 () Bool)

(assert (=> bm!352229 m!6093430))

(assert (=> bm!352232 m!6092264))

(assert (=> bm!352232 m!6092266))

(assert (=> bm!352232 m!6092462))

(assert (=> b!5057223 d!1627928))

(declare-fun d!1627930 () Bool)

(declare-fun res!2153684 () Bool)

(declare-fun e!3157154 () Bool)

(assert (=> d!1627930 (=> (not res!2153684) (not e!3157154))))

(assert (=> d!1627930 (= res!2153684 (= (csize!31338 (right!43131 (left!42801 ys!41))) (+ (size!39057 (left!42801 (right!43131 (left!42801 ys!41)))) (size!39057 (right!43131 (right!43131 (left!42801 ys!41)))))))))

(assert (=> d!1627930 (= (inv!77504 (right!43131 (left!42801 ys!41))) e!3157154)))

(declare-fun b!5057722 () Bool)

(declare-fun res!2153685 () Bool)

(assert (=> b!5057722 (=> (not res!2153685) (not e!3157154))))

(assert (=> b!5057722 (= res!2153685 (and (not (= (left!42801 (right!43131 (left!42801 ys!41))) Empty!15554)) (not (= (right!43131 (right!43131 (left!42801 ys!41))) Empty!15554))))))

(declare-fun b!5057723 () Bool)

(declare-fun res!2153686 () Bool)

(assert (=> b!5057723 (=> (not res!2153686) (not e!3157154))))

(assert (=> b!5057723 (= res!2153686 (= (cheight!15765 (right!43131 (left!42801 ys!41))) (+ (max!0 (height!2131 (left!42801 (right!43131 (left!42801 ys!41)))) (height!2131 (right!43131 (right!43131 (left!42801 ys!41))))) 1)))))

(declare-fun b!5057724 () Bool)

(assert (=> b!5057724 (= e!3157154 (<= 0 (cheight!15765 (right!43131 (left!42801 ys!41)))))))

(assert (= (and d!1627930 res!2153684) b!5057722))

(assert (= (and b!5057722 res!2153685) b!5057723))

(assert (= (and b!5057723 res!2153686) b!5057724))

(declare-fun m!6093432 () Bool)

(assert (=> d!1627930 m!6093432))

(declare-fun m!6093434 () Bool)

(assert (=> d!1627930 m!6093434))

(declare-fun m!6093436 () Bool)

(assert (=> b!5057723 m!6093436))

(declare-fun m!6093438 () Bool)

(assert (=> b!5057723 m!6093438))

(assert (=> b!5057723 m!6093436))

(assert (=> b!5057723 m!6093438))

(declare-fun m!6093440 () Bool)

(assert (=> b!5057723 m!6093440))

(assert (=> b!5057293 d!1627930))

(declare-fun b!5057728 () Bool)

(declare-fun e!3157155 () Bool)

(declare-fun lt!2087608 () List!58548)

(assert (=> b!5057728 (= e!3157155 (or (not (= (list!18969 (right!43131 ys!41)) Nil!58424)) (= lt!2087608 (t!371231 (list!18969 (left!42801 ys!41))))))))

(declare-fun b!5057725 () Bool)

(declare-fun e!3157156 () List!58548)

(assert (=> b!5057725 (= e!3157156 (list!18969 (right!43131 ys!41)))))

(declare-fun b!5057726 () Bool)

(assert (=> b!5057726 (= e!3157156 (Cons!58424 (h!64872 (t!371231 (list!18969 (left!42801 ys!41)))) (++!12773 (t!371231 (t!371231 (list!18969 (left!42801 ys!41)))) (list!18969 (right!43131 ys!41)))))))

(declare-fun b!5057727 () Bool)

(declare-fun res!2153687 () Bool)

(assert (=> b!5057727 (=> (not res!2153687) (not e!3157155))))

(assert (=> b!5057727 (= res!2153687 (= (size!39055 lt!2087608) (+ (size!39055 (t!371231 (list!18969 (left!42801 ys!41)))) (size!39055 (list!18969 (right!43131 ys!41))))))))

(declare-fun d!1627932 () Bool)

(assert (=> d!1627932 e!3157155))

(declare-fun res!2153688 () Bool)

(assert (=> d!1627932 (=> (not res!2153688) (not e!3157155))))

(assert (=> d!1627932 (= res!2153688 (= (content!10411 lt!2087608) ((_ map or) (content!10411 (t!371231 (list!18969 (left!42801 ys!41)))) (content!10411 (list!18969 (right!43131 ys!41))))))))

(assert (=> d!1627932 (= lt!2087608 e!3157156)))

(declare-fun c!867753 () Bool)

(assert (=> d!1627932 (= c!867753 ((_ is Nil!58424) (t!371231 (list!18969 (left!42801 ys!41)))))))

(assert (=> d!1627932 (= (++!12773 (t!371231 (list!18969 (left!42801 ys!41))) (list!18969 (right!43131 ys!41))) lt!2087608)))

(assert (= (and d!1627932 c!867753) b!5057725))

(assert (= (and d!1627932 (not c!867753)) b!5057726))

(assert (= (and d!1627932 res!2153688) b!5057727))

(assert (= (and b!5057727 res!2153687) b!5057728))

(assert (=> b!5057726 m!6092152))

(declare-fun m!6093442 () Bool)

(assert (=> b!5057726 m!6093442))

(declare-fun m!6093444 () Bool)

(assert (=> b!5057727 m!6093444))

(declare-fun m!6093446 () Bool)

(assert (=> b!5057727 m!6093446))

(assert (=> b!5057727 m!6092152))

(assert (=> b!5057727 m!6092612))

(declare-fun m!6093448 () Bool)

(assert (=> d!1627932 m!6093448))

(declare-fun m!6093450 () Bool)

(assert (=> d!1627932 m!6093450))

(assert (=> d!1627932 m!6092152))

(assert (=> d!1627932 m!6092618))

(assert (=> b!5057297 d!1627932))

(declare-fun d!1627934 () Bool)

(assert (=> d!1627934 (= (height!2131 (left!42801 (left!42801 ys!41))) (ite ((_ is Empty!15554) (left!42801 (left!42801 ys!41))) 0 (ite ((_ is Leaf!25836) (left!42801 (left!42801 ys!41))) 1 (cheight!15765 (left!42801 (left!42801 ys!41))))))))

(assert (=> b!5057349 d!1627934))

(declare-fun d!1627936 () Bool)

(assert (=> d!1627936 (= (height!2131 (right!43131 (left!42801 ys!41))) (ite ((_ is Empty!15554) (right!43131 (left!42801 ys!41))) 0 (ite ((_ is Leaf!25836) (right!43131 (left!42801 ys!41))) 1 (cheight!15765 (right!43131 (left!42801 ys!41))))))))

(assert (=> b!5057349 d!1627936))

(declare-fun d!1627938 () Bool)

(declare-fun c!867754 () Bool)

(assert (=> d!1627938 (= c!867754 ((_ is Node!15554) (left!42801 (left!42801 (left!42801 ys!41)))))))

(declare-fun e!3157157 () Bool)

(assert (=> d!1627938 (= (inv!77500 (left!42801 (left!42801 (left!42801 ys!41)))) e!3157157)))

(declare-fun b!5057729 () Bool)

(assert (=> b!5057729 (= e!3157157 (inv!77504 (left!42801 (left!42801 (left!42801 ys!41)))))))

(declare-fun b!5057730 () Bool)

(declare-fun e!3157158 () Bool)

(assert (=> b!5057730 (= e!3157157 e!3157158)))

(declare-fun res!2153689 () Bool)

(assert (=> b!5057730 (= res!2153689 (not ((_ is Leaf!25836) (left!42801 (left!42801 (left!42801 ys!41))))))))

(assert (=> b!5057730 (=> res!2153689 e!3157158)))

(declare-fun b!5057731 () Bool)

(assert (=> b!5057731 (= e!3157158 (inv!77505 (left!42801 (left!42801 (left!42801 ys!41)))))))

(assert (= (and d!1627938 c!867754) b!5057729))

(assert (= (and d!1627938 (not c!867754)) b!5057730))

(assert (= (and b!5057730 (not res!2153689)) b!5057731))

(declare-fun m!6093452 () Bool)

(assert (=> b!5057729 m!6093452))

(declare-fun m!6093454 () Bool)

(assert (=> b!5057731 m!6093454))

(assert (=> b!5057400 d!1627938))

(declare-fun d!1627940 () Bool)

(declare-fun c!867755 () Bool)

(assert (=> d!1627940 (= c!867755 ((_ is Node!15554) (right!43131 (left!42801 (left!42801 ys!41)))))))

(declare-fun e!3157159 () Bool)

(assert (=> d!1627940 (= (inv!77500 (right!43131 (left!42801 (left!42801 ys!41)))) e!3157159)))

(declare-fun b!5057732 () Bool)

(assert (=> b!5057732 (= e!3157159 (inv!77504 (right!43131 (left!42801 (left!42801 ys!41)))))))

(declare-fun b!5057733 () Bool)

(declare-fun e!3157160 () Bool)

(assert (=> b!5057733 (= e!3157159 e!3157160)))

(declare-fun res!2153690 () Bool)

(assert (=> b!5057733 (= res!2153690 (not ((_ is Leaf!25836) (right!43131 (left!42801 (left!42801 ys!41))))))))

(assert (=> b!5057733 (=> res!2153690 e!3157160)))

(declare-fun b!5057734 () Bool)

(assert (=> b!5057734 (= e!3157160 (inv!77505 (right!43131 (left!42801 (left!42801 ys!41)))))))

(assert (= (and d!1627940 c!867755) b!5057732))

(assert (= (and d!1627940 (not c!867755)) b!5057733))

(assert (= (and b!5057733 (not res!2153690)) b!5057734))

(declare-fun m!6093456 () Bool)

(assert (=> b!5057732 m!6093456))

(declare-fun m!6093458 () Bool)

(assert (=> b!5057734 m!6093458))

(assert (=> b!5057400 d!1627940))

(declare-fun b!5057738 () Bool)

(declare-fun e!3157161 () Bool)

(declare-fun lt!2087609 () List!58548)

(assert (=> b!5057738 (= e!3157161 (or (not (= (list!18969 (right!43131 (right!43131 ys!41))) Nil!58424)) (= lt!2087609 (list!18969 (left!42801 (right!43131 ys!41))))))))

(declare-fun b!5057735 () Bool)

(declare-fun e!3157162 () List!58548)

(assert (=> b!5057735 (= e!3157162 (list!18969 (right!43131 (right!43131 ys!41))))))

(declare-fun b!5057736 () Bool)

(assert (=> b!5057736 (= e!3157162 (Cons!58424 (h!64872 (list!18969 (left!42801 (right!43131 ys!41)))) (++!12773 (t!371231 (list!18969 (left!42801 (right!43131 ys!41)))) (list!18969 (right!43131 (right!43131 ys!41))))))))

(declare-fun b!5057737 () Bool)

(declare-fun res!2153691 () Bool)

(assert (=> b!5057737 (=> (not res!2153691) (not e!3157161))))

(assert (=> b!5057737 (= res!2153691 (= (size!39055 lt!2087609) (+ (size!39055 (list!18969 (left!42801 (right!43131 ys!41)))) (size!39055 (list!18969 (right!43131 (right!43131 ys!41)))))))))

(declare-fun d!1627942 () Bool)

(assert (=> d!1627942 e!3157161))

(declare-fun res!2153692 () Bool)

(assert (=> d!1627942 (=> (not res!2153692) (not e!3157161))))

(assert (=> d!1627942 (= res!2153692 (= (content!10411 lt!2087609) ((_ map or) (content!10411 (list!18969 (left!42801 (right!43131 ys!41)))) (content!10411 (list!18969 (right!43131 (right!43131 ys!41)))))))))

(assert (=> d!1627942 (= lt!2087609 e!3157162)))

(declare-fun c!867756 () Bool)

(assert (=> d!1627942 (= c!867756 ((_ is Nil!58424) (list!18969 (left!42801 (right!43131 ys!41)))))))

(assert (=> d!1627942 (= (++!12773 (list!18969 (left!42801 (right!43131 ys!41))) (list!18969 (right!43131 (right!43131 ys!41)))) lt!2087609)))

(assert (= (and d!1627942 c!867756) b!5057735))

(assert (= (and d!1627942 (not c!867756)) b!5057736))

(assert (= (and d!1627942 res!2153692) b!5057737))

(assert (= (and b!5057737 res!2153691) b!5057738))

(assert (=> b!5057736 m!6092542))

(declare-fun m!6093460 () Bool)

(assert (=> b!5057736 m!6093460))

(declare-fun m!6093462 () Bool)

(assert (=> b!5057737 m!6093462))

(assert (=> b!5057737 m!6092540))

(declare-fun m!6093464 () Bool)

(assert (=> b!5057737 m!6093464))

(assert (=> b!5057737 m!6092542))

(declare-fun m!6093466 () Bool)

(assert (=> b!5057737 m!6093466))

(declare-fun m!6093468 () Bool)

(assert (=> d!1627942 m!6093468))

(assert (=> d!1627942 m!6092540))

(declare-fun m!6093470 () Bool)

(assert (=> d!1627942 m!6093470))

(assert (=> d!1627942 m!6092542))

(declare-fun m!6093472 () Bool)

(assert (=> d!1627942 m!6093472))

(assert (=> b!5057263 d!1627942))

(declare-fun b!5057741 () Bool)

(declare-fun e!3157164 () List!58548)

(assert (=> b!5057741 (= e!3157164 (list!18970 (xs!18888 (left!42801 (right!43131 ys!41)))))))

(declare-fun b!5057740 () Bool)

(declare-fun e!3157163 () List!58548)

(assert (=> b!5057740 (= e!3157163 e!3157164)))

(declare-fun c!867758 () Bool)

(assert (=> b!5057740 (= c!867758 ((_ is Leaf!25836) (left!42801 (right!43131 ys!41))))))

(declare-fun d!1627944 () Bool)

(declare-fun c!867757 () Bool)

(assert (=> d!1627944 (= c!867757 ((_ is Empty!15554) (left!42801 (right!43131 ys!41))))))

(assert (=> d!1627944 (= (list!18969 (left!42801 (right!43131 ys!41))) e!3157163)))

(declare-fun b!5057739 () Bool)

(assert (=> b!5057739 (= e!3157163 Nil!58424)))

(declare-fun b!5057742 () Bool)

(assert (=> b!5057742 (= e!3157164 (++!12773 (list!18969 (left!42801 (left!42801 (right!43131 ys!41)))) (list!18969 (right!43131 (left!42801 (right!43131 ys!41))))))))

(assert (= (and d!1627944 c!867757) b!5057739))

(assert (= (and d!1627944 (not c!867757)) b!5057740))

(assert (= (and b!5057740 c!867758) b!5057741))

(assert (= (and b!5057740 (not c!867758)) b!5057742))

(declare-fun m!6093474 () Bool)

(assert (=> b!5057741 m!6093474))

(declare-fun m!6093476 () Bool)

(assert (=> b!5057742 m!6093476))

(declare-fun m!6093478 () Bool)

(assert (=> b!5057742 m!6093478))

(assert (=> b!5057742 m!6093476))

(assert (=> b!5057742 m!6093478))

(declare-fun m!6093480 () Bool)

(assert (=> b!5057742 m!6093480))

(assert (=> b!5057263 d!1627944))

(declare-fun b!5057745 () Bool)

(declare-fun e!3157166 () List!58548)

(assert (=> b!5057745 (= e!3157166 (list!18970 (xs!18888 (right!43131 (right!43131 ys!41)))))))

(declare-fun b!5057744 () Bool)

(declare-fun e!3157165 () List!58548)

(assert (=> b!5057744 (= e!3157165 e!3157166)))

(declare-fun c!867760 () Bool)

(assert (=> b!5057744 (= c!867760 ((_ is Leaf!25836) (right!43131 (right!43131 ys!41))))))

(declare-fun d!1627946 () Bool)

(declare-fun c!867759 () Bool)

(assert (=> d!1627946 (= c!867759 ((_ is Empty!15554) (right!43131 (right!43131 ys!41))))))

(assert (=> d!1627946 (= (list!18969 (right!43131 (right!43131 ys!41))) e!3157165)))

(declare-fun b!5057743 () Bool)

(assert (=> b!5057743 (= e!3157165 Nil!58424)))

(declare-fun b!5057746 () Bool)

(assert (=> b!5057746 (= e!3157166 (++!12773 (list!18969 (left!42801 (right!43131 (right!43131 ys!41)))) (list!18969 (right!43131 (right!43131 (right!43131 ys!41))))))))

(assert (= (and d!1627946 c!867759) b!5057743))

(assert (= (and d!1627946 (not c!867759)) b!5057744))

(assert (= (and b!5057744 c!867760) b!5057745))

(assert (= (and b!5057744 (not c!867760)) b!5057746))

(declare-fun m!6093482 () Bool)

(assert (=> b!5057745 m!6093482))

(declare-fun m!6093484 () Bool)

(assert (=> b!5057746 m!6093484))

(declare-fun m!6093486 () Bool)

(assert (=> b!5057746 m!6093486))

(assert (=> b!5057746 m!6093484))

(assert (=> b!5057746 m!6093486))

(declare-fun m!6093488 () Bool)

(assert (=> b!5057746 m!6093488))

(assert (=> b!5057263 d!1627946))

(declare-fun d!1627948 () Bool)

(assert (=> d!1627948 (= (list!18970 (xs!18888 (right!43131 (right!43131 xs!286)))) (innerList!15642 (xs!18888 (right!43131 (right!43131 xs!286)))))))

(assert (=> b!5057312 d!1627948))

(declare-fun b!5057747 () Bool)

(declare-fun res!2153698 () Bool)

(declare-fun e!3157168 () Bool)

(assert (=> b!5057747 (=> (not res!2153698) (not e!3157168))))

(assert (=> b!5057747 (= res!2153698 (<= (- (height!2131 (left!42801 (right!43131 (right!43131 xs!286)))) (height!2131 (right!43131 (right!43131 (right!43131 xs!286))))) 1))))

(declare-fun b!5057748 () Bool)

(declare-fun e!3157167 () Bool)

(assert (=> b!5057748 (= e!3157167 e!3157168)))

(declare-fun res!2153694 () Bool)

(assert (=> b!5057748 (=> (not res!2153694) (not e!3157168))))

(assert (=> b!5057748 (= res!2153694 (<= (- 1) (- (height!2131 (left!42801 (right!43131 (right!43131 xs!286)))) (height!2131 (right!43131 (right!43131 (right!43131 xs!286)))))))))

(declare-fun b!5057749 () Bool)

(declare-fun res!2153696 () Bool)

(assert (=> b!5057749 (=> (not res!2153696) (not e!3157168))))

(assert (=> b!5057749 (= res!2153696 (not (isEmpty!31610 (left!42801 (right!43131 (right!43131 xs!286))))))))

(declare-fun b!5057750 () Bool)

(assert (=> b!5057750 (= e!3157168 (not (isEmpty!31610 (right!43131 (right!43131 (right!43131 xs!286))))))))

(declare-fun b!5057751 () Bool)

(declare-fun res!2153693 () Bool)

(assert (=> b!5057751 (=> (not res!2153693) (not e!3157168))))

(assert (=> b!5057751 (= res!2153693 (isBalanced!4416 (right!43131 (right!43131 (right!43131 xs!286)))))))

(declare-fun d!1627950 () Bool)

(declare-fun res!2153697 () Bool)

(assert (=> d!1627950 (=> res!2153697 e!3157167)))

(assert (=> d!1627950 (= res!2153697 (not ((_ is Node!15554) (right!43131 (right!43131 xs!286)))))))

(assert (=> d!1627950 (= (isBalanced!4416 (right!43131 (right!43131 xs!286))) e!3157167)))

(declare-fun b!5057752 () Bool)

(declare-fun res!2153695 () Bool)

(assert (=> b!5057752 (=> (not res!2153695) (not e!3157168))))

(assert (=> b!5057752 (= res!2153695 (isBalanced!4416 (left!42801 (right!43131 (right!43131 xs!286)))))))

(assert (= (and d!1627950 (not res!2153697)) b!5057748))

(assert (= (and b!5057748 res!2153694) b!5057747))

(assert (= (and b!5057747 res!2153698) b!5057752))

(assert (= (and b!5057752 res!2153695) b!5057751))

(assert (= (and b!5057751 res!2153693) b!5057749))

(assert (= (and b!5057749 res!2153696) b!5057750))

(declare-fun m!6093490 () Bool)

(assert (=> b!5057751 m!6093490))

(declare-fun m!6093492 () Bool)

(assert (=> b!5057752 m!6093492))

(declare-fun m!6093494 () Bool)

(assert (=> b!5057750 m!6093494))

(declare-fun m!6093496 () Bool)

(assert (=> b!5057748 m!6093496))

(declare-fun m!6093498 () Bool)

(assert (=> b!5057748 m!6093498))

(declare-fun m!6093500 () Bool)

(assert (=> b!5057749 m!6093500))

(assert (=> b!5057747 m!6093496))

(assert (=> b!5057747 m!6093498))

(assert (=> b!5057268 d!1627950))

(declare-fun bm!352233 () Bool)

(declare-fun call!352241 () List!58548)

(declare-fun call!352240 () List!58548)

(assert (=> bm!352233 (= call!352241 (++!12773 (t!371231 (list!18969 (left!42801 xs!286))) call!352240))))

(declare-fun bm!352234 () Bool)

(declare-fun call!352238 () List!58548)

(declare-fun call!352239 () List!58548)

(assert (=> bm!352234 (= call!352238 (++!12773 call!352239 (list!18969 ys!41)))))

(declare-fun d!1627952 () Bool)

(declare-fun e!3157169 () Bool)

(assert (=> d!1627952 e!3157169))

(declare-fun c!867761 () Bool)

(assert (=> d!1627952 (= c!867761 ((_ is Nil!58424) (t!371231 (list!18969 (left!42801 xs!286)))))))

(assert (=> d!1627952 (= (appendAssoc!296 (t!371231 (list!18969 (left!42801 xs!286))) (list!18969 (right!43131 xs!286)) (list!18969 ys!41)) true)))

(declare-fun b!5057753 () Bool)

(assert (=> b!5057753 (= e!3157169 (= call!352238 call!352241))))

(declare-fun lt!2087610 () Bool)

(assert (=> b!5057753 (= lt!2087610 (appendAssoc!296 (t!371231 (t!371231 (list!18969 (left!42801 xs!286)))) (list!18969 (right!43131 xs!286)) (list!18969 ys!41)))))

(declare-fun bm!352235 () Bool)

(assert (=> bm!352235 (= call!352239 (++!12773 (t!371231 (list!18969 (left!42801 xs!286))) (list!18969 (right!43131 xs!286))))))

(declare-fun bm!352236 () Bool)

(assert (=> bm!352236 (= call!352240 (++!12773 (list!18969 (right!43131 xs!286)) (list!18969 ys!41)))))

(declare-fun b!5057754 () Bool)

(assert (=> b!5057754 (= e!3157169 (= call!352238 call!352241))))

(assert (= (and d!1627952 c!867761) b!5057754))

(assert (= (and d!1627952 (not c!867761)) b!5057753))

(assert (= (or b!5057754 b!5057753) bm!352235))

(assert (= (or b!5057754 b!5057753) bm!352236))

(assert (= (or b!5057754 b!5057753) bm!352233))

(assert (= (or b!5057754 b!5057753) bm!352234))

(assert (=> bm!352235 m!6092144))

(assert (=> bm!352235 m!6092678))

(assert (=> bm!352234 m!6092020))

(declare-fun m!6093502 () Bool)

(assert (=> bm!352234 m!6093502))

(assert (=> b!5057753 m!6092144))

(assert (=> b!5057753 m!6092020))

(declare-fun m!6093504 () Bool)

(assert (=> b!5057753 m!6093504))

(declare-fun m!6093506 () Bool)

(assert (=> bm!352233 m!6093506))

(assert (=> bm!352236 m!6092144))

(assert (=> bm!352236 m!6092020))

(assert (=> bm!352236 m!6092660))

(assert (=> b!5057314 d!1627952))

(declare-fun d!1627954 () Bool)

(assert (=> d!1627954 (= (height!2131 (left!42801 (right!43131 ys!41))) (ite ((_ is Empty!15554) (left!42801 (right!43131 ys!41))) 0 (ite ((_ is Leaf!25836) (left!42801 (right!43131 ys!41))) 1 (cheight!15765 (left!42801 (right!43131 ys!41))))))))

(assert (=> b!5057271 d!1627954))

(declare-fun d!1627956 () Bool)

(assert (=> d!1627956 (= (height!2131 (right!43131 (right!43131 ys!41))) (ite ((_ is Empty!15554) (right!43131 (right!43131 ys!41))) 0 (ite ((_ is Leaf!25836) (right!43131 (right!43131 ys!41))) 1 (cheight!15765 (right!43131 (right!43131 ys!41))))))))

(assert (=> b!5057271 d!1627956))

(declare-fun e!3157170 () Bool)

(declare-fun b!5057758 () Bool)

(declare-fun lt!2087611 () List!58548)

(assert (=> b!5057758 (= e!3157170 (or (not (= call!352196 Nil!58424)) (= lt!2087611 (list!18969 (left!42801 xs!286)))))))

(declare-fun b!5057755 () Bool)

(declare-fun e!3157171 () List!58548)

(assert (=> b!5057755 (= e!3157171 call!352196)))

(declare-fun b!5057756 () Bool)

(assert (=> b!5057756 (= e!3157171 (Cons!58424 (h!64872 (list!18969 (left!42801 xs!286))) (++!12773 (t!371231 (list!18969 (left!42801 xs!286))) call!352196)))))

(declare-fun b!5057757 () Bool)

(declare-fun res!2153699 () Bool)

(assert (=> b!5057757 (=> (not res!2153699) (not e!3157170))))

(assert (=> b!5057757 (= res!2153699 (= (size!39055 lt!2087611) (+ (size!39055 (list!18969 (left!42801 xs!286))) (size!39055 call!352196))))))

(declare-fun d!1627958 () Bool)

(assert (=> d!1627958 e!3157170))

(declare-fun res!2153700 () Bool)

(assert (=> d!1627958 (=> (not res!2153700) (not e!3157170))))

(assert (=> d!1627958 (= res!2153700 (= (content!10411 lt!2087611) ((_ map or) (content!10411 (list!18969 (left!42801 xs!286))) (content!10411 call!352196))))))

(assert (=> d!1627958 (= lt!2087611 e!3157171)))

(declare-fun c!867762 () Bool)

(assert (=> d!1627958 (= c!867762 ((_ is Nil!58424) (list!18969 (left!42801 xs!286))))))

(assert (=> d!1627958 (= (++!12773 (list!18969 (left!42801 xs!286)) call!352196) lt!2087611)))

(assert (= (and d!1627958 c!867762) b!5057755))

(assert (= (and d!1627958 (not c!867762)) b!5057756))

(assert (= (and d!1627958 res!2153700) b!5057757))

(assert (= (and b!5057757 res!2153699) b!5057758))

(declare-fun m!6093508 () Bool)

(assert (=> b!5057756 m!6093508))

(declare-fun m!6093510 () Bool)

(assert (=> b!5057757 m!6093510))

(assert (=> b!5057757 m!6092142))

(assert (=> b!5057757 m!6092682))

(declare-fun m!6093512 () Bool)

(assert (=> b!5057757 m!6093512))

(declare-fun m!6093514 () Bool)

(assert (=> d!1627958 m!6093514))

(assert (=> d!1627958 m!6092142))

(assert (=> d!1627958 m!6092688))

(declare-fun m!6093516 () Bool)

(assert (=> d!1627958 m!6093516))

(assert (=> bm!352189 d!1627958))

(declare-fun b!5057762 () Bool)

(declare-fun e!3157172 () Bool)

(declare-fun lt!2087612 () List!58548)

(assert (=> b!5057762 (= e!3157172 (or (not (= (list!18969 (right!43131 (left!42801 xs!286))) Nil!58424)) (= lt!2087612 (list!18969 (left!42801 (left!42801 xs!286))))))))

(declare-fun b!5057759 () Bool)

(declare-fun e!3157173 () List!58548)

(assert (=> b!5057759 (= e!3157173 (list!18969 (right!43131 (left!42801 xs!286))))))

(declare-fun b!5057760 () Bool)

(assert (=> b!5057760 (= e!3157173 (Cons!58424 (h!64872 (list!18969 (left!42801 (left!42801 xs!286)))) (++!12773 (t!371231 (list!18969 (left!42801 (left!42801 xs!286)))) (list!18969 (right!43131 (left!42801 xs!286))))))))

(declare-fun b!5057761 () Bool)

(declare-fun res!2153701 () Bool)

(assert (=> b!5057761 (=> (not res!2153701) (not e!3157172))))

(assert (=> b!5057761 (= res!2153701 (= (size!39055 lt!2087612) (+ (size!39055 (list!18969 (left!42801 (left!42801 xs!286)))) (size!39055 (list!18969 (right!43131 (left!42801 xs!286)))))))))

(declare-fun d!1627960 () Bool)

(assert (=> d!1627960 e!3157172))

(declare-fun res!2153702 () Bool)

(assert (=> d!1627960 (=> (not res!2153702) (not e!3157172))))

(assert (=> d!1627960 (= res!2153702 (= (content!10411 lt!2087612) ((_ map or) (content!10411 (list!18969 (left!42801 (left!42801 xs!286)))) (content!10411 (list!18969 (right!43131 (left!42801 xs!286)))))))))

(assert (=> d!1627960 (= lt!2087612 e!3157173)))

(declare-fun c!867763 () Bool)

(assert (=> d!1627960 (= c!867763 ((_ is Nil!58424) (list!18969 (left!42801 (left!42801 xs!286)))))))

(assert (=> d!1627960 (= (++!12773 (list!18969 (left!42801 (left!42801 xs!286))) (list!18969 (right!43131 (left!42801 xs!286)))) lt!2087612)))

(assert (= (and d!1627960 c!867763) b!5057759))

(assert (= (and d!1627960 (not c!867763)) b!5057760))

(assert (= (and d!1627960 res!2153702) b!5057761))

(assert (= (and b!5057761 res!2153701) b!5057762))

(assert (=> b!5057760 m!6092666))

(declare-fun m!6093518 () Bool)

(assert (=> b!5057760 m!6093518))

(declare-fun m!6093520 () Bool)

(assert (=> b!5057761 m!6093520))

(assert (=> b!5057761 m!6092664))

(declare-fun m!6093522 () Bool)

(assert (=> b!5057761 m!6093522))

(assert (=> b!5057761 m!6092666))

(declare-fun m!6093524 () Bool)

(assert (=> b!5057761 m!6093524))

(declare-fun m!6093526 () Bool)

(assert (=> d!1627960 m!6093526))

(assert (=> d!1627960 m!6092664))

(declare-fun m!6093528 () Bool)

(assert (=> d!1627960 m!6093528))

(assert (=> d!1627960 m!6092666))

(declare-fun m!6093530 () Bool)

(assert (=> d!1627960 m!6093530))

(assert (=> b!5057319 d!1627960))

(declare-fun b!5057765 () Bool)

(declare-fun e!3157175 () List!58548)

(assert (=> b!5057765 (= e!3157175 (list!18970 (xs!18888 (left!42801 (left!42801 xs!286)))))))

(declare-fun b!5057764 () Bool)

(declare-fun e!3157174 () List!58548)

(assert (=> b!5057764 (= e!3157174 e!3157175)))

(declare-fun c!867765 () Bool)

(assert (=> b!5057764 (= c!867765 ((_ is Leaf!25836) (left!42801 (left!42801 xs!286))))))

(declare-fun d!1627962 () Bool)

(declare-fun c!867764 () Bool)

(assert (=> d!1627962 (= c!867764 ((_ is Empty!15554) (left!42801 (left!42801 xs!286))))))

(assert (=> d!1627962 (= (list!18969 (left!42801 (left!42801 xs!286))) e!3157174)))

(declare-fun b!5057763 () Bool)

(assert (=> b!5057763 (= e!3157174 Nil!58424)))

(declare-fun b!5057766 () Bool)

(assert (=> b!5057766 (= e!3157175 (++!12773 (list!18969 (left!42801 (left!42801 (left!42801 xs!286)))) (list!18969 (right!43131 (left!42801 (left!42801 xs!286))))))))

(assert (= (and d!1627962 c!867764) b!5057763))

(assert (= (and d!1627962 (not c!867764)) b!5057764))

(assert (= (and b!5057764 c!867765) b!5057765))

(assert (= (and b!5057764 (not c!867765)) b!5057766))

(assert (=> b!5057765 m!6093414))

(declare-fun m!6093532 () Bool)

(assert (=> b!5057766 m!6093532))

(declare-fun m!6093534 () Bool)

(assert (=> b!5057766 m!6093534))

(assert (=> b!5057766 m!6093532))

(assert (=> b!5057766 m!6093534))

(declare-fun m!6093536 () Bool)

(assert (=> b!5057766 m!6093536))

(assert (=> b!5057319 d!1627962))

(declare-fun b!5057769 () Bool)

(declare-fun e!3157177 () List!58548)

(assert (=> b!5057769 (= e!3157177 (list!18970 (xs!18888 (right!43131 (left!42801 xs!286)))))))

(declare-fun b!5057768 () Bool)

(declare-fun e!3157176 () List!58548)

(assert (=> b!5057768 (= e!3157176 e!3157177)))

(declare-fun c!867767 () Bool)

(assert (=> b!5057768 (= c!867767 ((_ is Leaf!25836) (right!43131 (left!42801 xs!286))))))

(declare-fun d!1627964 () Bool)

(declare-fun c!867766 () Bool)

(assert (=> d!1627964 (= c!867766 ((_ is Empty!15554) (right!43131 (left!42801 xs!286))))))

(assert (=> d!1627964 (= (list!18969 (right!43131 (left!42801 xs!286))) e!3157176)))

(declare-fun b!5057767 () Bool)

(assert (=> b!5057767 (= e!3157176 Nil!58424)))

(declare-fun b!5057770 () Bool)

(assert (=> b!5057770 (= e!3157177 (++!12773 (list!18969 (left!42801 (right!43131 (left!42801 xs!286)))) (list!18969 (right!43131 (right!43131 (left!42801 xs!286))))))))

(assert (= (and d!1627964 c!867766) b!5057767))

(assert (= (and d!1627964 (not c!867766)) b!5057768))

(assert (= (and b!5057768 c!867767) b!5057769))

(assert (= (and b!5057768 (not c!867767)) b!5057770))

(declare-fun m!6093538 () Bool)

(assert (=> b!5057769 m!6093538))

(declare-fun m!6093540 () Bool)

(assert (=> b!5057770 m!6093540))

(declare-fun m!6093542 () Bool)

(assert (=> b!5057770 m!6093542))

(assert (=> b!5057770 m!6093540))

(assert (=> b!5057770 m!6093542))

(declare-fun m!6093544 () Bool)

(assert (=> b!5057770 m!6093544))

(assert (=> b!5057319 d!1627964))

(declare-fun d!1627966 () Bool)

(declare-fun lt!2087613 () Int)

(assert (=> d!1627966 (>= lt!2087613 0)))

(declare-fun e!3157178 () Int)

(assert (=> d!1627966 (= lt!2087613 e!3157178)))

(declare-fun c!867768 () Bool)

(assert (=> d!1627966 (= c!867768 ((_ is Nil!58424) (list!18970 (xs!18888 xs!286))))))

(assert (=> d!1627966 (= (size!39055 (list!18970 (xs!18888 xs!286))) lt!2087613)))

(declare-fun b!5057771 () Bool)

(assert (=> b!5057771 (= e!3157178 0)))

(declare-fun b!5057772 () Bool)

(assert (=> b!5057772 (= e!3157178 (+ 1 (size!39055 (t!371231 (list!18970 (xs!18888 xs!286))))))))

(assert (= (and d!1627966 c!867768) b!5057771))

(assert (= (and d!1627966 (not c!867768)) b!5057772))

(declare-fun m!6093546 () Bool)

(assert (=> b!5057772 m!6093546))

(assert (=> b!5057340 d!1627966))

(assert (=> b!5057340 d!1627592))

(declare-fun d!1627968 () Bool)

(declare-fun lt!2087614 () Int)

(assert (=> d!1627968 (>= lt!2087614 0)))

(declare-fun e!3157179 () Int)

(assert (=> d!1627968 (= lt!2087614 e!3157179)))

(declare-fun c!867769 () Bool)

(assert (=> d!1627968 (= c!867769 ((_ is Nil!58424) (innerList!15642 (xs!18888 (left!42801 xs!286)))))))

(assert (=> d!1627968 (= (size!39055 (innerList!15642 (xs!18888 (left!42801 xs!286)))) lt!2087614)))

(declare-fun b!5057773 () Bool)

(assert (=> b!5057773 (= e!3157179 0)))

(declare-fun b!5057774 () Bool)

(assert (=> b!5057774 (= e!3157179 (+ 1 (size!39055 (t!371231 (innerList!15642 (xs!18888 (left!42801 xs!286)))))))))

(assert (= (and d!1627968 c!867769) b!5057773))

(assert (= (and d!1627968 (not c!867769)) b!5057774))

(declare-fun m!6093548 () Bool)

(assert (=> b!5057774 m!6093548))

(assert (=> d!1627628 d!1627968))

(declare-fun d!1627970 () Bool)

(declare-fun c!867770 () Bool)

(assert (=> d!1627970 (= c!867770 ((_ is Node!15554) (left!42801 (left!42801 (right!43131 xs!286)))))))

(declare-fun e!3157180 () Bool)

(assert (=> d!1627970 (= (inv!77500 (left!42801 (left!42801 (right!43131 xs!286)))) e!3157180)))

(declare-fun b!5057775 () Bool)

(assert (=> b!5057775 (= e!3157180 (inv!77504 (left!42801 (left!42801 (right!43131 xs!286)))))))

(declare-fun b!5057776 () Bool)

(declare-fun e!3157181 () Bool)

(assert (=> b!5057776 (= e!3157180 e!3157181)))

(declare-fun res!2153703 () Bool)

(assert (=> b!5057776 (= res!2153703 (not ((_ is Leaf!25836) (left!42801 (left!42801 (right!43131 xs!286))))))))

(assert (=> b!5057776 (=> res!2153703 e!3157181)))

(declare-fun b!5057777 () Bool)

(assert (=> b!5057777 (= e!3157181 (inv!77505 (left!42801 (left!42801 (right!43131 xs!286)))))))

(assert (= (and d!1627970 c!867770) b!5057775))

(assert (= (and d!1627970 (not c!867770)) b!5057776))

(assert (= (and b!5057776 (not res!2153703)) b!5057777))

(declare-fun m!6093550 () Bool)

(assert (=> b!5057775 m!6093550))

(declare-fun m!6093552 () Bool)

(assert (=> b!5057777 m!6093552))

(assert (=> b!5057389 d!1627970))

(declare-fun d!1627972 () Bool)

(declare-fun c!867771 () Bool)

(assert (=> d!1627972 (= c!867771 ((_ is Node!15554) (right!43131 (left!42801 (right!43131 xs!286)))))))

(declare-fun e!3157182 () Bool)

(assert (=> d!1627972 (= (inv!77500 (right!43131 (left!42801 (right!43131 xs!286)))) e!3157182)))

(declare-fun b!5057778 () Bool)

(assert (=> b!5057778 (= e!3157182 (inv!77504 (right!43131 (left!42801 (right!43131 xs!286)))))))

(declare-fun b!5057779 () Bool)

(declare-fun e!3157183 () Bool)

(assert (=> b!5057779 (= e!3157182 e!3157183)))

(declare-fun res!2153704 () Bool)

(assert (=> b!5057779 (= res!2153704 (not ((_ is Leaf!25836) (right!43131 (left!42801 (right!43131 xs!286))))))))

(assert (=> b!5057779 (=> res!2153704 e!3157183)))

(declare-fun b!5057780 () Bool)

(assert (=> b!5057780 (= e!3157183 (inv!77505 (right!43131 (left!42801 (right!43131 xs!286)))))))

(assert (= (and d!1627972 c!867771) b!5057778))

(assert (= (and d!1627972 (not c!867771)) b!5057779))

(assert (= (and b!5057779 (not res!2153704)) b!5057780))

(declare-fun m!6093554 () Bool)

(assert (=> b!5057778 m!6093554))

(declare-fun m!6093556 () Bool)

(assert (=> b!5057780 m!6093556))

(assert (=> b!5057389 d!1627972))

(declare-fun d!1627974 () Bool)

(declare-fun c!867772 () Bool)

(assert (=> d!1627974 (= c!867772 ((_ is Node!15554) (left!42801 (right!43131 (right!43131 xs!286)))))))

(declare-fun e!3157184 () Bool)

(assert (=> d!1627974 (= (inv!77500 (left!42801 (right!43131 (right!43131 xs!286)))) e!3157184)))

(declare-fun b!5057781 () Bool)

(assert (=> b!5057781 (= e!3157184 (inv!77504 (left!42801 (right!43131 (right!43131 xs!286)))))))

(declare-fun b!5057782 () Bool)

(declare-fun e!3157185 () Bool)

(assert (=> b!5057782 (= e!3157184 e!3157185)))

(declare-fun res!2153705 () Bool)

(assert (=> b!5057782 (= res!2153705 (not ((_ is Leaf!25836) (left!42801 (right!43131 (right!43131 xs!286))))))))

(assert (=> b!5057782 (=> res!2153705 e!3157185)))

(declare-fun b!5057783 () Bool)

(assert (=> b!5057783 (= e!3157185 (inv!77505 (left!42801 (right!43131 (right!43131 xs!286)))))))

(assert (= (and d!1627974 c!867772) b!5057781))

(assert (= (and d!1627974 (not c!867772)) b!5057782))

(assert (= (and b!5057782 (not res!2153705)) b!5057783))

(declare-fun m!6093558 () Bool)

(assert (=> b!5057781 m!6093558))

(declare-fun m!6093560 () Bool)

(assert (=> b!5057783 m!6093560))

(assert (=> b!5057395 d!1627974))

(declare-fun d!1627976 () Bool)

(declare-fun c!867773 () Bool)

(assert (=> d!1627976 (= c!867773 ((_ is Node!15554) (right!43131 (right!43131 (right!43131 xs!286)))))))

(declare-fun e!3157186 () Bool)

(assert (=> d!1627976 (= (inv!77500 (right!43131 (right!43131 (right!43131 xs!286)))) e!3157186)))

(declare-fun b!5057784 () Bool)

(assert (=> b!5057784 (= e!3157186 (inv!77504 (right!43131 (right!43131 (right!43131 xs!286)))))))

(declare-fun b!5057785 () Bool)

(declare-fun e!3157187 () Bool)

(assert (=> b!5057785 (= e!3157186 e!3157187)))

(declare-fun res!2153706 () Bool)

(assert (=> b!5057785 (= res!2153706 (not ((_ is Leaf!25836) (right!43131 (right!43131 (right!43131 xs!286))))))))

(assert (=> b!5057785 (=> res!2153706 e!3157187)))

(declare-fun b!5057786 () Bool)

(assert (=> b!5057786 (= e!3157187 (inv!77505 (right!43131 (right!43131 (right!43131 xs!286)))))))

(assert (= (and d!1627976 c!867773) b!5057784))

(assert (= (and d!1627976 (not c!867773)) b!5057785))

(assert (= (and b!5057785 (not res!2153706)) b!5057786))

(declare-fun m!6093562 () Bool)

(assert (=> b!5057784 m!6093562))

(declare-fun m!6093564 () Bool)

(assert (=> b!5057786 m!6093564))

(assert (=> b!5057395 d!1627976))

(declare-fun d!1627978 () Bool)

(assert (=> d!1627978 (= (isEmpty!31612 (list!18969 (left!42801 xs!286))) ((_ is Nil!58424) (list!18969 (left!42801 xs!286))))))

(assert (=> d!1627574 d!1627978))

(assert (=> d!1627574 d!1627644))

(assert (=> d!1627574 d!1627846))

(declare-fun b!5057787 () Bool)

(declare-fun res!2153712 () Bool)

(declare-fun e!3157189 () Bool)

(assert (=> b!5057787 (=> (not res!2153712) (not e!3157189))))

(assert (=> b!5057787 (= res!2153712 (<= (- (height!2131 (left!42801 (left!42801 (left!42801 ys!41)))) (height!2131 (right!43131 (left!42801 (left!42801 ys!41))))) 1))))

(declare-fun b!5057788 () Bool)

(declare-fun e!3157188 () Bool)

(assert (=> b!5057788 (= e!3157188 e!3157189)))

(declare-fun res!2153708 () Bool)

(assert (=> b!5057788 (=> (not res!2153708) (not e!3157189))))

(assert (=> b!5057788 (= res!2153708 (<= (- 1) (- (height!2131 (left!42801 (left!42801 (left!42801 ys!41)))) (height!2131 (right!43131 (left!42801 (left!42801 ys!41)))))))))

(declare-fun b!5057789 () Bool)

(declare-fun res!2153710 () Bool)

(assert (=> b!5057789 (=> (not res!2153710) (not e!3157189))))

(assert (=> b!5057789 (= res!2153710 (not (isEmpty!31610 (left!42801 (left!42801 (left!42801 ys!41))))))))

(declare-fun b!5057790 () Bool)

(assert (=> b!5057790 (= e!3157189 (not (isEmpty!31610 (right!43131 (left!42801 (left!42801 ys!41))))))))

(declare-fun b!5057791 () Bool)

(declare-fun res!2153707 () Bool)

(assert (=> b!5057791 (=> (not res!2153707) (not e!3157189))))

(assert (=> b!5057791 (= res!2153707 (isBalanced!4416 (right!43131 (left!42801 (left!42801 ys!41)))))))

(declare-fun d!1627980 () Bool)

(declare-fun res!2153711 () Bool)

(assert (=> d!1627980 (=> res!2153711 e!3157188)))

(assert (=> d!1627980 (= res!2153711 (not ((_ is Node!15554) (left!42801 (left!42801 ys!41)))))))

(assert (=> d!1627980 (= (isBalanced!4416 (left!42801 (left!42801 ys!41))) e!3157188)))

(declare-fun b!5057792 () Bool)

(declare-fun res!2153709 () Bool)

(assert (=> b!5057792 (=> (not res!2153709) (not e!3157189))))

(assert (=> b!5057792 (= res!2153709 (isBalanced!4416 (left!42801 (left!42801 (left!42801 ys!41)))))))

(assert (= (and d!1627980 (not res!2153711)) b!5057788))

(assert (= (and b!5057788 res!2153708) b!5057787))

(assert (= (and b!5057787 res!2153712) b!5057792))

(assert (= (and b!5057792 res!2153709) b!5057791))

(assert (= (and b!5057791 res!2153707) b!5057789))

(assert (= (and b!5057789 res!2153710) b!5057790))

(declare-fun m!6093566 () Bool)

(assert (=> b!5057791 m!6093566))

(declare-fun m!6093568 () Bool)

(assert (=> b!5057792 m!6093568))

(declare-fun m!6093570 () Bool)

(assert (=> b!5057790 m!6093570))

(assert (=> b!5057788 m!6093306))

(assert (=> b!5057788 m!6093308))

(declare-fun m!6093572 () Bool)

(assert (=> b!5057789 m!6093572))

(assert (=> b!5057787 m!6093306))

(assert (=> b!5057787 m!6093308))

(assert (=> b!5057353 d!1627980))

(declare-fun d!1627982 () Bool)

(assert (=> d!1627982 (= (list!18970 (xs!18888 lt!2087527)) (innerList!15642 (xs!18888 lt!2087527)))))

(assert (=> b!5057188 d!1627982))

(assert (=> b!5057160 d!1627618))

(assert (=> b!5057160 d!1627620))

(declare-fun d!1627984 () Bool)

(declare-fun res!2153713 () Bool)

(declare-fun e!3157190 () Bool)

(assert (=> d!1627984 (=> (not res!2153713) (not e!3157190))))

(assert (=> d!1627984 (= res!2153713 (<= (size!39055 (list!18970 (xs!18888 (right!43131 (right!43131 xs!286))))) 512))))

(assert (=> d!1627984 (= (inv!77505 (right!43131 (right!43131 xs!286))) e!3157190)))

(declare-fun b!5057793 () Bool)

(declare-fun res!2153714 () Bool)

(assert (=> b!5057793 (=> (not res!2153714) (not e!3157190))))

(assert (=> b!5057793 (= res!2153714 (= (csize!31339 (right!43131 (right!43131 xs!286))) (size!39055 (list!18970 (xs!18888 (right!43131 (right!43131 xs!286)))))))))

(declare-fun b!5057794 () Bool)

(assert (=> b!5057794 (= e!3157190 (and (> (csize!31339 (right!43131 (right!43131 xs!286))) 0) (<= (csize!31339 (right!43131 (right!43131 xs!286))) 512)))))

(assert (= (and d!1627984 res!2153713) b!5057793))

(assert (= (and b!5057793 res!2153714) b!5057794))

(assert (=> d!1627984 m!6092646))

(assert (=> d!1627984 m!6092646))

(declare-fun m!6093574 () Bool)

(assert (=> d!1627984 m!6093574))

(assert (=> b!5057793 m!6092646))

(assert (=> b!5057793 m!6092646))

(assert (=> b!5057793 m!6093574))

(assert (=> b!5057329 d!1627984))

(declare-fun b!5057798 () Bool)

(declare-fun e!3157191 () Bool)

(declare-fun lt!2087615 () List!58548)

(assert (=> b!5057798 (= e!3157191 (or (not (= (list!18969 (right!43131 (left!42801 lt!2087515))) Nil!58424)) (= lt!2087615 (list!18969 (left!42801 (left!42801 lt!2087515))))))))

(declare-fun b!5057795 () Bool)

(declare-fun e!3157192 () List!58548)

(assert (=> b!5057795 (= e!3157192 (list!18969 (right!43131 (left!42801 lt!2087515))))))

(declare-fun b!5057796 () Bool)

(assert (=> b!5057796 (= e!3157192 (Cons!58424 (h!64872 (list!18969 (left!42801 (left!42801 lt!2087515)))) (++!12773 (t!371231 (list!18969 (left!42801 (left!42801 lt!2087515)))) (list!18969 (right!43131 (left!42801 lt!2087515))))))))

(declare-fun b!5057797 () Bool)

(declare-fun res!2153715 () Bool)

(assert (=> b!5057797 (=> (not res!2153715) (not e!3157191))))

(assert (=> b!5057797 (= res!2153715 (= (size!39055 lt!2087615) (+ (size!39055 (list!18969 (left!42801 (left!42801 lt!2087515)))) (size!39055 (list!18969 (right!43131 (left!42801 lt!2087515)))))))))

(declare-fun d!1627986 () Bool)

(assert (=> d!1627986 e!3157191))

(declare-fun res!2153716 () Bool)

(assert (=> d!1627986 (=> (not res!2153716) (not e!3157191))))

(assert (=> d!1627986 (= res!2153716 (= (content!10411 lt!2087615) ((_ map or) (content!10411 (list!18969 (left!42801 (left!42801 lt!2087515)))) (content!10411 (list!18969 (right!43131 (left!42801 lt!2087515)))))))))

(assert (=> d!1627986 (= lt!2087615 e!3157192)))

(declare-fun c!867774 () Bool)

(assert (=> d!1627986 (= c!867774 ((_ is Nil!58424) (list!18969 (left!42801 (left!42801 lt!2087515)))))))

(assert (=> d!1627986 (= (++!12773 (list!18969 (left!42801 (left!42801 lt!2087515))) (list!18969 (right!43131 (left!42801 lt!2087515)))) lt!2087615)))

(assert (= (and d!1627986 c!867774) b!5057795))

(assert (= (and d!1627986 (not c!867774)) b!5057796))

(assert (= (and d!1627986 res!2153716) b!5057797))

(assert (= (and b!5057797 res!2153715) b!5057798))

(assert (=> b!5057796 m!6092510))

(declare-fun m!6093576 () Bool)

(assert (=> b!5057796 m!6093576))

(declare-fun m!6093578 () Bool)

(assert (=> b!5057797 m!6093578))

(assert (=> b!5057797 m!6092508))

(declare-fun m!6093580 () Bool)

(assert (=> b!5057797 m!6093580))

(assert (=> b!5057797 m!6092510))

(declare-fun m!6093582 () Bool)

(assert (=> b!5057797 m!6093582))

(declare-fun m!6093584 () Bool)

(assert (=> d!1627986 m!6093584))

(assert (=> d!1627986 m!6092508))

(declare-fun m!6093586 () Bool)

(assert (=> d!1627986 m!6093586))

(assert (=> d!1627986 m!6092510))

(declare-fun m!6093588 () Bool)

(assert (=> d!1627986 m!6093588))

(assert (=> b!5057246 d!1627986))

(declare-fun b!5057801 () Bool)

(declare-fun e!3157194 () List!58548)

(assert (=> b!5057801 (= e!3157194 (list!18970 (xs!18888 (left!42801 (left!42801 lt!2087515)))))))

(declare-fun b!5057800 () Bool)

(declare-fun e!3157193 () List!58548)

(assert (=> b!5057800 (= e!3157193 e!3157194)))

(declare-fun c!867776 () Bool)

(assert (=> b!5057800 (= c!867776 ((_ is Leaf!25836) (left!42801 (left!42801 lt!2087515))))))

(declare-fun d!1627988 () Bool)

(declare-fun c!867775 () Bool)

(assert (=> d!1627988 (= c!867775 ((_ is Empty!15554) (left!42801 (left!42801 lt!2087515))))))

(assert (=> d!1627988 (= (list!18969 (left!42801 (left!42801 lt!2087515))) e!3157193)))

(declare-fun b!5057799 () Bool)

(assert (=> b!5057799 (= e!3157193 Nil!58424)))

(declare-fun b!5057802 () Bool)

(assert (=> b!5057802 (= e!3157194 (++!12773 (list!18969 (left!42801 (left!42801 (left!42801 lt!2087515)))) (list!18969 (right!43131 (left!42801 (left!42801 lt!2087515))))))))

(assert (= (and d!1627988 c!867775) b!5057799))

(assert (= (and d!1627988 (not c!867775)) b!5057800))

(assert (= (and b!5057800 c!867776) b!5057801))

(assert (= (and b!5057800 (not c!867776)) b!5057802))

(declare-fun m!6093590 () Bool)

(assert (=> b!5057801 m!6093590))

(declare-fun m!6093592 () Bool)

(assert (=> b!5057802 m!6093592))

(declare-fun m!6093594 () Bool)

(assert (=> b!5057802 m!6093594))

(assert (=> b!5057802 m!6093592))

(assert (=> b!5057802 m!6093594))

(declare-fun m!6093596 () Bool)

(assert (=> b!5057802 m!6093596))

(assert (=> b!5057246 d!1627988))

(declare-fun b!5057805 () Bool)

(declare-fun e!3157196 () List!58548)

(assert (=> b!5057805 (= e!3157196 (list!18970 (xs!18888 (right!43131 (left!42801 lt!2087515)))))))

(declare-fun b!5057804 () Bool)

(declare-fun e!3157195 () List!58548)

(assert (=> b!5057804 (= e!3157195 e!3157196)))

(declare-fun c!867778 () Bool)

(assert (=> b!5057804 (= c!867778 ((_ is Leaf!25836) (right!43131 (left!42801 lt!2087515))))))

(declare-fun d!1627990 () Bool)

(declare-fun c!867777 () Bool)

(assert (=> d!1627990 (= c!867777 ((_ is Empty!15554) (right!43131 (left!42801 lt!2087515))))))

(assert (=> d!1627990 (= (list!18969 (right!43131 (left!42801 lt!2087515))) e!3157195)))

(declare-fun b!5057803 () Bool)

(assert (=> b!5057803 (= e!3157195 Nil!58424)))

(declare-fun b!5057806 () Bool)

(assert (=> b!5057806 (= e!3157196 (++!12773 (list!18969 (left!42801 (right!43131 (left!42801 lt!2087515)))) (list!18969 (right!43131 (right!43131 (left!42801 lt!2087515))))))))

(assert (= (and d!1627990 c!867777) b!5057803))

(assert (= (and d!1627990 (not c!867777)) b!5057804))

(assert (= (and b!5057804 c!867778) b!5057805))

(assert (= (and b!5057804 (not c!867778)) b!5057806))

(declare-fun m!6093598 () Bool)

(assert (=> b!5057805 m!6093598))

(declare-fun m!6093600 () Bool)

(assert (=> b!5057806 m!6093600))

(declare-fun m!6093602 () Bool)

(assert (=> b!5057806 m!6093602))

(assert (=> b!5057806 m!6093600))

(assert (=> b!5057806 m!6093602))

(declare-fun m!6093604 () Bool)

(assert (=> b!5057806 m!6093604))

(assert (=> b!5057246 d!1627990))

(declare-fun d!1627992 () Bool)

(assert (=> d!1627992 (= (height!2131 (left!42801 (left!42801 lt!2087515))) (ite ((_ is Empty!15554) (left!42801 (left!42801 lt!2087515))) 0 (ite ((_ is Leaf!25836) (left!42801 (left!42801 lt!2087515))) 1 (cheight!15765 (left!42801 (left!42801 lt!2087515))))))))

(assert (=> b!5057335 d!1627992))

(declare-fun d!1627994 () Bool)

(assert (=> d!1627994 (= (height!2131 (right!43131 (left!42801 lt!2087515))) (ite ((_ is Empty!15554) (right!43131 (left!42801 lt!2087515))) 0 (ite ((_ is Leaf!25836) (right!43131 (left!42801 lt!2087515))) 1 (cheight!15765 (right!43131 (left!42801 lt!2087515))))))))

(assert (=> b!5057335 d!1627994))

(declare-fun d!1627996 () Bool)

(declare-fun res!2153717 () Bool)

(declare-fun e!3157197 () Bool)

(assert (=> d!1627996 (=> (not res!2153717) (not e!3157197))))

(assert (=> d!1627996 (= res!2153717 (= (csize!31338 (right!43131 (left!42801 xs!286))) (+ (size!39057 (left!42801 (right!43131 (left!42801 xs!286)))) (size!39057 (right!43131 (right!43131 (left!42801 xs!286)))))))))

(assert (=> d!1627996 (= (inv!77504 (right!43131 (left!42801 xs!286))) e!3157197)))

(declare-fun b!5057807 () Bool)

(declare-fun res!2153718 () Bool)

(assert (=> b!5057807 (=> (not res!2153718) (not e!3157197))))

(assert (=> b!5057807 (= res!2153718 (and (not (= (left!42801 (right!43131 (left!42801 xs!286))) Empty!15554)) (not (= (right!43131 (right!43131 (left!42801 xs!286))) Empty!15554))))))

(declare-fun b!5057808 () Bool)

(declare-fun res!2153719 () Bool)

(assert (=> b!5057808 (=> (not res!2153719) (not e!3157197))))

(assert (=> b!5057808 (= res!2153719 (= (cheight!15765 (right!43131 (left!42801 xs!286))) (+ (max!0 (height!2131 (left!42801 (right!43131 (left!42801 xs!286)))) (height!2131 (right!43131 (right!43131 (left!42801 xs!286))))) 1)))))

(declare-fun b!5057809 () Bool)

(assert (=> b!5057809 (= e!3157197 (<= 0 (cheight!15765 (right!43131 (left!42801 xs!286)))))))

(assert (= (and d!1627996 res!2153717) b!5057807))

(assert (= (and b!5057807 res!2153718) b!5057808))

(assert (= (and b!5057808 res!2153719) b!5057809))

(declare-fun m!6093606 () Bool)

(assert (=> d!1627996 m!6093606))

(declare-fun m!6093608 () Bool)

(assert (=> d!1627996 m!6093608))

(declare-fun m!6093610 () Bool)

(assert (=> b!5057808 m!6093610))

(declare-fun m!6093612 () Bool)

(assert (=> b!5057808 m!6093612))

(assert (=> b!5057808 m!6093610))

(assert (=> b!5057808 m!6093612))

(declare-fun m!6093614 () Bool)

(assert (=> b!5057808 m!6093614))

(assert (=> b!5057173 d!1627996))

(declare-fun d!1627998 () Bool)

(declare-fun c!867779 () Bool)

(assert (=> d!1627998 (= c!867779 ((_ is Nil!58424) lt!2087553))))

(declare-fun e!3157198 () (InoxSet T!105048))

(assert (=> d!1627998 (= (content!10411 lt!2087553) e!3157198)))

(declare-fun b!5057810 () Bool)

(assert (=> b!5057810 (= e!3157198 ((as const (Array T!105048 Bool)) false))))

(declare-fun b!5057811 () Bool)

(assert (=> b!5057811 (= e!3157198 ((_ map or) (store ((as const (Array T!105048 Bool)) false) (h!64872 lt!2087553) true) (content!10411 (t!371231 lt!2087553))))))

(assert (= (and d!1627998 c!867779) b!5057810))

(assert (= (and d!1627998 (not c!867779)) b!5057811))

(declare-fun m!6093616 () Bool)

(assert (=> b!5057811 m!6093616))

(declare-fun m!6093618 () Bool)

(assert (=> b!5057811 m!6093618))

(assert (=> d!1627678 d!1627998))

(declare-fun d!1628000 () Bool)

(declare-fun c!867780 () Bool)

(assert (=> d!1628000 (= c!867780 ((_ is Nil!58424) (list!18969 (right!43131 (right!43131 xs!286)))))))

(declare-fun e!3157199 () (InoxSet T!105048))

(assert (=> d!1628000 (= (content!10411 (list!18969 (right!43131 (right!43131 xs!286)))) e!3157199)))

(declare-fun b!5057812 () Bool)

(assert (=> b!5057812 (= e!3157199 ((as const (Array T!105048 Bool)) false))))

(declare-fun b!5057813 () Bool)

(assert (=> b!5057813 (= e!3157199 ((_ map or) (store ((as const (Array T!105048 Bool)) false) (h!64872 (list!18969 (right!43131 (right!43131 xs!286)))) true) (content!10411 (t!371231 (list!18969 (right!43131 (right!43131 xs!286)))))))))

(assert (= (and d!1628000 c!867780) b!5057812))

(assert (= (and d!1628000 (not c!867780)) b!5057813))

(declare-fun m!6093620 () Bool)

(assert (=> b!5057813 m!6093620))

(declare-fun m!6093622 () Bool)

(assert (=> b!5057813 m!6093622))

(assert (=> d!1627678 d!1628000))

(assert (=> d!1627678 d!1627542))

(declare-fun b!5057814 () Bool)

(declare-fun res!2153725 () Bool)

(declare-fun e!3157201 () Bool)

(assert (=> b!5057814 (=> (not res!2153725) (not e!3157201))))

(assert (=> b!5057814 (= res!2153725 (<= (- (height!2131 (left!42801 (right!43131 (right!43131 ys!41)))) (height!2131 (right!43131 (right!43131 (right!43131 ys!41))))) 1))))

(declare-fun b!5057815 () Bool)

(declare-fun e!3157200 () Bool)

(assert (=> b!5057815 (= e!3157200 e!3157201)))

(declare-fun res!2153721 () Bool)

(assert (=> b!5057815 (=> (not res!2153721) (not e!3157201))))

(assert (=> b!5057815 (= res!2153721 (<= (- 1) (- (height!2131 (left!42801 (right!43131 (right!43131 ys!41)))) (height!2131 (right!43131 (right!43131 (right!43131 ys!41)))))))))

(declare-fun b!5057816 () Bool)

(declare-fun res!2153723 () Bool)

(assert (=> b!5057816 (=> (not res!2153723) (not e!3157201))))

(assert (=> b!5057816 (= res!2153723 (not (isEmpty!31610 (left!42801 (right!43131 (right!43131 ys!41))))))))

(declare-fun b!5057817 () Bool)

(assert (=> b!5057817 (= e!3157201 (not (isEmpty!31610 (right!43131 (right!43131 (right!43131 ys!41))))))))

(declare-fun b!5057818 () Bool)

(declare-fun res!2153720 () Bool)

(assert (=> b!5057818 (=> (not res!2153720) (not e!3157201))))

(assert (=> b!5057818 (= res!2153720 (isBalanced!4416 (right!43131 (right!43131 (right!43131 ys!41)))))))

(declare-fun d!1628002 () Bool)

(declare-fun res!2153724 () Bool)

(assert (=> d!1628002 (=> res!2153724 e!3157200)))

(assert (=> d!1628002 (= res!2153724 (not ((_ is Node!15554) (right!43131 (right!43131 ys!41)))))))

(assert (=> d!1628002 (= (isBalanced!4416 (right!43131 (right!43131 ys!41))) e!3157200)))

(declare-fun b!5057819 () Bool)

(declare-fun res!2153722 () Bool)

(assert (=> b!5057819 (=> (not res!2153722) (not e!3157201))))

(assert (=> b!5057819 (= res!2153722 (isBalanced!4416 (left!42801 (right!43131 (right!43131 ys!41)))))))

(assert (= (and d!1628002 (not res!2153724)) b!5057815))

(assert (= (and b!5057815 res!2153721) b!5057814))

(assert (= (and b!5057814 res!2153725) b!5057819))

(assert (= (and b!5057819 res!2153722) b!5057818))

(assert (= (and b!5057818 res!2153720) b!5057816))

(assert (= (and b!5057816 res!2153723) b!5057817))

(declare-fun m!6093624 () Bool)

(assert (=> b!5057818 m!6093624))

(declare-fun m!6093626 () Bool)

(assert (=> b!5057819 m!6093626))

(declare-fun m!6093628 () Bool)

(assert (=> b!5057817 m!6093628))

(declare-fun m!6093630 () Bool)

(assert (=> b!5057815 m!6093630))

(declare-fun m!6093632 () Bool)

(assert (=> b!5057815 m!6093632))

(declare-fun m!6093634 () Bool)

(assert (=> b!5057816 m!6093634))

(assert (=> b!5057814 m!6093630))

(assert (=> b!5057814 m!6093632))

(assert (=> b!5057274 d!1628002))

(declare-fun b!5057823 () Bool)

(declare-fun e!3157202 () Bool)

(declare-fun lt!2087616 () List!58548)

(assert (=> b!5057823 (= e!3157202 (or (not (= (list!18969 (left!42801 (right!43131 xs!286))) Nil!58424)) (= lt!2087616 (list!18969 (left!42801 xs!286)))))))

(declare-fun b!5057820 () Bool)

(declare-fun e!3157203 () List!58548)

(assert (=> b!5057820 (= e!3157203 (list!18969 (left!42801 (right!43131 xs!286))))))

(declare-fun b!5057821 () Bool)

(assert (=> b!5057821 (= e!3157203 (Cons!58424 (h!64872 (list!18969 (left!42801 xs!286))) (++!12773 (t!371231 (list!18969 (left!42801 xs!286))) (list!18969 (left!42801 (right!43131 xs!286))))))))

(declare-fun b!5057822 () Bool)

(declare-fun res!2153726 () Bool)

(assert (=> b!5057822 (=> (not res!2153726) (not e!3157202))))

(assert (=> b!5057822 (= res!2153726 (= (size!39055 lt!2087616) (+ (size!39055 (list!18969 (left!42801 xs!286))) (size!39055 (list!18969 (left!42801 (right!43131 xs!286)))))))))

(declare-fun d!1628004 () Bool)

(assert (=> d!1628004 e!3157202))

(declare-fun res!2153727 () Bool)

(assert (=> d!1628004 (=> (not res!2153727) (not e!3157202))))

(assert (=> d!1628004 (= res!2153727 (= (content!10411 lt!2087616) ((_ map or) (content!10411 (list!18969 (left!42801 xs!286))) (content!10411 (list!18969 (left!42801 (right!43131 xs!286)))))))))

(assert (=> d!1628004 (= lt!2087616 e!3157203)))

(declare-fun c!867781 () Bool)

(assert (=> d!1628004 (= c!867781 ((_ is Nil!58424) (list!18969 (left!42801 xs!286))))))

(assert (=> d!1628004 (= (++!12773 (list!18969 (left!42801 xs!286)) (list!18969 (left!42801 (right!43131 xs!286)))) lt!2087616)))

(assert (= (and d!1628004 c!867781) b!5057820))

(assert (= (and d!1628004 (not c!867781)) b!5057821))

(assert (= (and d!1628004 res!2153727) b!5057822))

(assert (= (and b!5057822 res!2153726) b!5057823))

(assert (=> b!5057821 m!6092280))

(declare-fun m!6093636 () Bool)

(assert (=> b!5057821 m!6093636))

(declare-fun m!6093638 () Bool)

(assert (=> b!5057822 m!6093638))

(assert (=> b!5057822 m!6092142))

(assert (=> b!5057822 m!6092682))

(assert (=> b!5057822 m!6092280))

(declare-fun m!6093640 () Bool)

(assert (=> b!5057822 m!6093640))

(declare-fun m!6093642 () Bool)

(assert (=> d!1628004 m!6093642))

(assert (=> d!1628004 m!6092142))

(assert (=> d!1628004 m!6092688))

(assert (=> d!1628004 m!6092280))

(declare-fun m!6093644 () Bool)

(assert (=> d!1628004 m!6093644))

(assert (=> bm!352191 d!1628004))

(declare-fun call!352244 () List!58548)

(declare-fun bm!352237 () Bool)

(declare-fun call!352245 () List!58548)

(assert (=> bm!352237 (= call!352245 (++!12773 (t!371231 (++!12773 (list!18969 xs!286) (list!18969 (left!42801 (left!42801 ys!41))))) call!352244))))

(declare-fun bm!352238 () Bool)

(declare-fun call!352242 () List!58548)

(declare-fun call!352243 () List!58548)

(assert (=> bm!352238 (= call!352242 (++!12773 call!352243 (list!18969 (right!43131 ys!41))))))

(declare-fun d!1628006 () Bool)

(declare-fun e!3157204 () Bool)

(assert (=> d!1628006 e!3157204))

(declare-fun c!867782 () Bool)

(assert (=> d!1628006 (= c!867782 ((_ is Nil!58424) (t!371231 (++!12773 (list!18969 xs!286) (list!18969 (left!42801 (left!42801 ys!41)))))))))

(assert (=> d!1628006 (= (appendAssoc!296 (t!371231 (++!12773 (list!18969 xs!286) (list!18969 (left!42801 (left!42801 ys!41))))) (list!18969 (right!43131 (left!42801 ys!41))) (list!18969 (right!43131 ys!41))) true)))

(declare-fun b!5057824 () Bool)

(assert (=> b!5057824 (= e!3157204 (= call!352242 call!352245))))

(declare-fun lt!2087617 () Bool)

(assert (=> b!5057824 (= lt!2087617 (appendAssoc!296 (t!371231 (t!371231 (++!12773 (list!18969 xs!286) (list!18969 (left!42801 (left!42801 ys!41)))))) (list!18969 (right!43131 (left!42801 ys!41))) (list!18969 (right!43131 ys!41))))))

(declare-fun bm!352239 () Bool)

(assert (=> bm!352239 (= call!352243 (++!12773 (t!371231 (++!12773 (list!18969 xs!286) (list!18969 (left!42801 (left!42801 ys!41))))) (list!18969 (right!43131 (left!42801 ys!41)))))))

(declare-fun bm!352240 () Bool)

(assert (=> bm!352240 (= call!352244 (++!12773 (list!18969 (right!43131 (left!42801 ys!41))) (list!18969 (right!43131 ys!41))))))

(declare-fun b!5057825 () Bool)

(assert (=> b!5057825 (= e!3157204 (= call!352242 call!352245))))

(assert (= (and d!1628006 c!867782) b!5057825))

(assert (= (and d!1628006 (not c!867782)) b!5057824))

(assert (= (or b!5057825 b!5057824) bm!352239))

(assert (= (or b!5057825 b!5057824) bm!352240))

(assert (= (or b!5057825 b!5057824) bm!352237))

(assert (= (or b!5057825 b!5057824) bm!352238))

(assert (=> bm!352239 m!6092266))

(assert (=> bm!352239 m!6093354))

(assert (=> bm!352238 m!6092152))

(declare-fun m!6093646 () Bool)

(assert (=> bm!352238 m!6093646))

(assert (=> b!5057824 m!6092266))

(assert (=> b!5057824 m!6092152))

(declare-fun m!6093648 () Bool)

(assert (=> b!5057824 m!6093648))

(declare-fun m!6093650 () Bool)

(assert (=> bm!352237 m!6093650))

(assert (=> bm!352240 m!6092266))

(assert (=> bm!352240 m!6092152))

(assert (=> bm!352240 m!6092570))

(assert (=> b!5057276 d!1628006))

(assert (=> b!5057157 d!1627624))

(assert (=> b!5057157 d!1627626))

(declare-fun d!1628008 () Bool)

(declare-fun lt!2087618 () Int)

(assert (=> d!1628008 (= lt!2087618 (size!39055 (list!18969 (left!42801 (right!43131 ys!41)))))))

(assert (=> d!1628008 (= lt!2087618 (ite ((_ is Empty!15554) (left!42801 (right!43131 ys!41))) 0 (ite ((_ is Leaf!25836) (left!42801 (right!43131 ys!41))) (csize!31339 (left!42801 (right!43131 ys!41))) (csize!31338 (left!42801 (right!43131 ys!41))))))))

(assert (=> d!1628008 (= (size!39057 (left!42801 (right!43131 ys!41))) lt!2087618)))

(declare-fun bs!1189442 () Bool)

(assert (= bs!1189442 d!1628008))

(assert (=> bs!1189442 m!6092540))

(assert (=> bs!1189442 m!6092540))

(assert (=> bs!1189442 m!6093464))

(assert (=> d!1627600 d!1628008))

(declare-fun d!1628010 () Bool)

(declare-fun lt!2087619 () Int)

(assert (=> d!1628010 (= lt!2087619 (size!39055 (list!18969 (right!43131 (right!43131 ys!41)))))))

(assert (=> d!1628010 (= lt!2087619 (ite ((_ is Empty!15554) (right!43131 (right!43131 ys!41))) 0 (ite ((_ is Leaf!25836) (right!43131 (right!43131 ys!41))) (csize!31339 (right!43131 (right!43131 ys!41))) (csize!31338 (right!43131 (right!43131 ys!41))))))))

(assert (=> d!1628010 (= (size!39057 (right!43131 (right!43131 ys!41))) lt!2087619)))

(declare-fun bs!1189443 () Bool)

(assert (= bs!1189443 d!1628010))

(assert (=> bs!1189443 m!6092542))

(assert (=> bs!1189443 m!6092542))

(assert (=> bs!1189443 m!6093466))

(assert (=> d!1627600 d!1628010))

(declare-fun lt!2087620 () List!58548)

(declare-fun b!5057829 () Bool)

(declare-fun e!3157205 () Bool)

(assert (=> b!5057829 (= e!3157205 (or (not (= (list!18969 ys!41) Nil!58424)) (= lt!2087620 call!352187)))))

(declare-fun b!5057826 () Bool)

(declare-fun e!3157206 () List!58548)

(assert (=> b!5057826 (= e!3157206 (list!18969 ys!41))))

(declare-fun b!5057827 () Bool)

(assert (=> b!5057827 (= e!3157206 (Cons!58424 (h!64872 call!352187) (++!12773 (t!371231 call!352187) (list!18969 ys!41))))))

(declare-fun b!5057828 () Bool)

(declare-fun res!2153728 () Bool)

(assert (=> b!5057828 (=> (not res!2153728) (not e!3157205))))

(assert (=> b!5057828 (= res!2153728 (= (size!39055 lt!2087620) (+ (size!39055 call!352187) (size!39055 (list!18969 ys!41)))))))

(declare-fun d!1628012 () Bool)

(assert (=> d!1628012 e!3157205))

(declare-fun res!2153729 () Bool)

(assert (=> d!1628012 (=> (not res!2153729) (not e!3157205))))

(assert (=> d!1628012 (= res!2153729 (= (content!10411 lt!2087620) ((_ map or) (content!10411 call!352187) (content!10411 (list!18969 ys!41)))))))

(assert (=> d!1628012 (= lt!2087620 e!3157206)))

(declare-fun c!867783 () Bool)

(assert (=> d!1628012 (= c!867783 ((_ is Nil!58424) call!352187))))

(assert (=> d!1628012 (= (++!12773 call!352187 (list!18969 ys!41)) lt!2087620)))

(assert (= (and d!1628012 c!867783) b!5057826))

(assert (= (and d!1628012 (not c!867783)) b!5057827))

(assert (= (and d!1628012 res!2153729) b!5057828))

(assert (= (and b!5057828 res!2153728) b!5057829))

(assert (=> b!5057827 m!6092020))

(declare-fun m!6093652 () Bool)

(assert (=> b!5057827 m!6093652))

(declare-fun m!6093654 () Bool)

(assert (=> b!5057828 m!6093654))

(declare-fun m!6093656 () Bool)

(assert (=> b!5057828 m!6093656))

(assert (=> b!5057828 m!6092020))

(assert (=> b!5057828 m!6092132))

(declare-fun m!6093658 () Bool)

(assert (=> d!1628012 m!6093658))

(declare-fun m!6093660 () Bool)

(assert (=> d!1628012 m!6093660))

(assert (=> d!1628012 m!6092020))

(assert (=> d!1628012 m!6092138))

(assert (=> bm!352182 d!1628012))

(declare-fun d!1628014 () Bool)

(assert (=> d!1628014 (= (list!18970 (xs!18888 (left!42801 (right!43131 xs!286)))) (innerList!15642 (xs!18888 (left!42801 (right!43131 xs!286)))))))

(assert (=> b!5057308 d!1628014))

(declare-fun bm!352241 () Bool)

(declare-fun call!352249 () List!58548)

(declare-fun call!352248 () List!58548)

(assert (=> bm!352241 (= call!352249 (++!12773 (t!371231 (list!18969 xs!286)) call!352248))))

(declare-fun bm!352242 () Bool)

(declare-fun call!352246 () List!58548)

(declare-fun call!352247 () List!58548)

(assert (=> bm!352242 (= call!352246 (++!12773 call!352247 (list!18969 (right!43131 ys!41))))))

(declare-fun d!1628016 () Bool)

(declare-fun e!3157207 () Bool)

(assert (=> d!1628016 e!3157207))

(declare-fun c!867784 () Bool)

(assert (=> d!1628016 (= c!867784 ((_ is Nil!58424) (t!371231 (list!18969 xs!286))))))

(assert (=> d!1628016 (= (appendAssoc!296 (t!371231 (list!18969 xs!286)) (list!18969 (left!42801 ys!41)) (list!18969 (right!43131 ys!41))) true)))

(declare-fun b!5057830 () Bool)

(assert (=> b!5057830 (= e!3157207 (= call!352246 call!352249))))

(declare-fun lt!2087621 () Bool)

(assert (=> b!5057830 (= lt!2087621 (appendAssoc!296 (t!371231 (t!371231 (list!18969 xs!286))) (list!18969 (left!42801 ys!41)) (list!18969 (right!43131 ys!41))))))

(declare-fun bm!352243 () Bool)

(assert (=> bm!352243 (= call!352247 (++!12773 (t!371231 (list!18969 xs!286)) (list!18969 (left!42801 ys!41))))))

(declare-fun bm!352244 () Bool)

(assert (=> bm!352244 (= call!352248 (++!12773 (list!18969 (left!42801 ys!41)) (list!18969 (right!43131 ys!41))))))

(declare-fun b!5057831 () Bool)

(assert (=> b!5057831 (= e!3157207 (= call!352246 call!352249))))

(assert (= (and d!1628016 c!867784) b!5057831))

(assert (= (and d!1628016 (not c!867784)) b!5057830))

(assert (= (or b!5057831 b!5057830) bm!352243))

(assert (= (or b!5057831 b!5057830) bm!352244))

(assert (= (or b!5057831 b!5057830) bm!352241))

(assert (= (or b!5057831 b!5057830) bm!352242))

(assert (=> bm!352243 m!6092150))

(declare-fun m!6093662 () Bool)

(assert (=> bm!352243 m!6093662))

(assert (=> bm!352242 m!6092152))

(declare-fun m!6093664 () Bool)

(assert (=> bm!352242 m!6093664))

(assert (=> b!5057830 m!6092150))

(assert (=> b!5057830 m!6092152))

(declare-fun m!6093666 () Bool)

(assert (=> b!5057830 m!6093666))

(declare-fun m!6093668 () Bool)

(assert (=> bm!352241 m!6093668))

(assert (=> bm!352244 m!6092150))

(assert (=> bm!352244 m!6092152))

(assert (=> bm!352244 m!6092154))

(assert (=> b!5057254 d!1628016))

(declare-fun d!1628018 () Bool)

(declare-fun lt!2087622 () Int)

(assert (=> d!1628018 (>= lt!2087622 0)))

(declare-fun e!3157208 () Int)

(assert (=> d!1628018 (= lt!2087622 e!3157208)))

(declare-fun c!867785 () Bool)

(assert (=> d!1628018 (= c!867785 ((_ is Nil!58424) (t!371231 lt!2087518)))))

(assert (=> d!1628018 (= (size!39055 (t!371231 lt!2087518)) lt!2087622)))

(declare-fun b!5057832 () Bool)

(assert (=> b!5057832 (= e!3157208 0)))

(declare-fun b!5057833 () Bool)

(assert (=> b!5057833 (= e!3157208 (+ 1 (size!39055 (t!371231 (t!371231 lt!2087518)))))))

(assert (= (and d!1628018 c!867785) b!5057832))

(assert (= (and d!1628018 (not c!867785)) b!5057833))

(declare-fun m!6093670 () Bool)

(assert (=> b!5057833 m!6093670))

(assert (=> b!5057214 d!1628018))

(declare-fun d!1628020 () Bool)

(declare-fun lt!2087623 () Int)

(assert (=> d!1628020 (>= lt!2087623 0)))

(declare-fun e!3157209 () Int)

(assert (=> d!1628020 (= lt!2087623 e!3157209)))

(declare-fun c!867786 () Bool)

(assert (=> d!1628020 (= c!867786 ((_ is Nil!58424) (list!18970 (xs!18888 (right!43131 ys!41)))))))

(assert (=> d!1628020 (= (size!39055 (list!18970 (xs!18888 (right!43131 ys!41)))) lt!2087623)))

(declare-fun b!5057834 () Bool)

(assert (=> b!5057834 (= e!3157209 0)))

(declare-fun b!5057835 () Bool)

(assert (=> b!5057835 (= e!3157209 (+ 1 (size!39055 (t!371231 (list!18970 (xs!18888 (right!43131 ys!41)))))))))

(assert (= (and d!1628020 c!867786) b!5057834))

(assert (= (and d!1628020 (not c!867786)) b!5057835))

(declare-fun m!6093672 () Bool)

(assert (=> b!5057835 m!6093672))

(assert (=> d!1627546 d!1628020))

(declare-fun d!1628022 () Bool)

(assert (=> d!1628022 (= (list!18970 (xs!18888 (right!43131 ys!41))) (innerList!15642 (xs!18888 (right!43131 ys!41))))))

(assert (=> d!1627546 d!1628022))

(declare-fun lt!2087624 () List!58548)

(declare-fun b!5057839 () Bool)

(declare-fun e!3157210 () Bool)

(assert (=> b!5057839 (= e!3157210 (or (not (= call!352176 Nil!58424)) (= lt!2087624 (list!18969 xs!286))))))

(declare-fun b!5057836 () Bool)

(declare-fun e!3157211 () List!58548)

(assert (=> b!5057836 (= e!3157211 call!352176)))

(declare-fun b!5057837 () Bool)

(assert (=> b!5057837 (= e!3157211 (Cons!58424 (h!64872 (list!18969 xs!286)) (++!12773 (t!371231 (list!18969 xs!286)) call!352176)))))

(declare-fun b!5057838 () Bool)

(declare-fun res!2153730 () Bool)

(assert (=> b!5057838 (=> (not res!2153730) (not e!3157210))))

(assert (=> b!5057838 (= res!2153730 (= (size!39055 lt!2087624) (+ (size!39055 (list!18969 xs!286)) (size!39055 call!352176))))))

(declare-fun d!1628024 () Bool)

(assert (=> d!1628024 e!3157210))

(declare-fun res!2153731 () Bool)

(assert (=> d!1628024 (=> (not res!2153731) (not e!3157210))))

(assert (=> d!1628024 (= res!2153731 (= (content!10411 lt!2087624) ((_ map or) (content!10411 (list!18969 xs!286)) (content!10411 call!352176))))))

(assert (=> d!1628024 (= lt!2087624 e!3157211)))

(declare-fun c!867787 () Bool)

(assert (=> d!1628024 (= c!867787 ((_ is Nil!58424) (list!18969 xs!286)))))

(assert (=> d!1628024 (= (++!12773 (list!18969 xs!286) call!352176) lt!2087624)))

(assert (= (and d!1628024 c!867787) b!5057836))

(assert (= (and d!1628024 (not c!867787)) b!5057837))

(assert (= (and d!1628024 res!2153731) b!5057838))

(assert (= (and b!5057838 res!2153730) b!5057839))

(declare-fun m!6093674 () Bool)

(assert (=> b!5057837 m!6093674))

(declare-fun m!6093676 () Bool)

(assert (=> b!5057838 m!6093676))

(assert (=> b!5057838 m!6092018))

(assert (=> b!5057838 m!6092130))

(declare-fun m!6093678 () Bool)

(assert (=> b!5057838 m!6093678))

(declare-fun m!6093680 () Bool)

(assert (=> d!1628024 m!6093680))

(assert (=> d!1628024 m!6092018))

(assert (=> d!1628024 m!6092136))

(declare-fun m!6093682 () Bool)

(assert (=> d!1628024 m!6093682))

(assert (=> bm!352169 d!1628024))

(declare-fun b!5057840 () Bool)

(declare-fun res!2153737 () Bool)

(declare-fun e!3157213 () Bool)

(assert (=> b!5057840 (=> (not res!2153737) (not e!3157213))))

(assert (=> b!5057840 (= res!2153737 (<= (- (height!2131 (left!42801 (right!43131 (left!42801 xs!286)))) (height!2131 (right!43131 (right!43131 (left!42801 xs!286))))) 1))))

(declare-fun b!5057841 () Bool)

(declare-fun e!3157212 () Bool)

(assert (=> b!5057841 (= e!3157212 e!3157213)))

(declare-fun res!2153733 () Bool)

(assert (=> b!5057841 (=> (not res!2153733) (not e!3157213))))

(assert (=> b!5057841 (= res!2153733 (<= (- 1) (- (height!2131 (left!42801 (right!43131 (left!42801 xs!286)))) (height!2131 (right!43131 (right!43131 (left!42801 xs!286)))))))))

(declare-fun b!5057842 () Bool)

(declare-fun res!2153735 () Bool)

(assert (=> b!5057842 (=> (not res!2153735) (not e!3157213))))

(assert (=> b!5057842 (= res!2153735 (not (isEmpty!31610 (left!42801 (right!43131 (left!42801 xs!286))))))))

(declare-fun b!5057843 () Bool)

(assert (=> b!5057843 (= e!3157213 (not (isEmpty!31610 (right!43131 (right!43131 (left!42801 xs!286))))))))

(declare-fun b!5057844 () Bool)

(declare-fun res!2153732 () Bool)

(assert (=> b!5057844 (=> (not res!2153732) (not e!3157213))))

(assert (=> b!5057844 (= res!2153732 (isBalanced!4416 (right!43131 (right!43131 (left!42801 xs!286)))))))

(declare-fun d!1628026 () Bool)

(declare-fun res!2153736 () Bool)

(assert (=> d!1628026 (=> res!2153736 e!3157212)))

(assert (=> d!1628026 (= res!2153736 (not ((_ is Node!15554) (right!43131 (left!42801 xs!286)))))))

(assert (=> d!1628026 (= (isBalanced!4416 (right!43131 (left!42801 xs!286))) e!3157212)))

(declare-fun b!5057845 () Bool)

(declare-fun res!2153734 () Bool)

(assert (=> b!5057845 (=> (not res!2153734) (not e!3157213))))

(assert (=> b!5057845 (= res!2153734 (isBalanced!4416 (left!42801 (right!43131 (left!42801 xs!286)))))))

(assert (= (and d!1628026 (not res!2153736)) b!5057841))

(assert (= (and b!5057841 res!2153733) b!5057840))

(assert (= (and b!5057840 res!2153737) b!5057845))

(assert (= (and b!5057845 res!2153734) b!5057844))

(assert (= (and b!5057844 res!2153732) b!5057842))

(assert (= (and b!5057842 res!2153735) b!5057843))

(declare-fun m!6093684 () Bool)

(assert (=> b!5057844 m!6093684))

(declare-fun m!6093686 () Bool)

(assert (=> b!5057845 m!6093686))

(declare-fun m!6093688 () Bool)

(assert (=> b!5057843 m!6093688))

(assert (=> b!5057841 m!6093610))

(assert (=> b!5057841 m!6093612))

(declare-fun m!6093690 () Bool)

(assert (=> b!5057842 m!6093690))

(assert (=> b!5057840 m!6093610))

(assert (=> b!5057840 m!6093612))

(assert (=> b!5057361 d!1628026))

(declare-fun b!5057849 () Bool)

(declare-fun e!3157214 () Bool)

(declare-fun lt!2087625 () List!58548)

(assert (=> b!5057849 (= e!3157214 (or (not (= (list!18969 (right!43131 (left!42801 ys!41))) Nil!58424)) (= lt!2087625 (list!18969 (left!42801 (left!42801 ys!41))))))))

(declare-fun b!5057846 () Bool)

(declare-fun e!3157215 () List!58548)

(assert (=> b!5057846 (= e!3157215 (list!18969 (right!43131 (left!42801 ys!41))))))

(declare-fun b!5057847 () Bool)

(assert (=> b!5057847 (= e!3157215 (Cons!58424 (h!64872 (list!18969 (left!42801 (left!42801 ys!41)))) (++!12773 (t!371231 (list!18969 (left!42801 (left!42801 ys!41)))) (list!18969 (right!43131 (left!42801 ys!41))))))))

(declare-fun b!5057848 () Bool)

(declare-fun res!2153738 () Bool)

(assert (=> b!5057848 (=> (not res!2153738) (not e!3157214))))

(assert (=> b!5057848 (= res!2153738 (= (size!39055 lt!2087625) (+ (size!39055 (list!18969 (left!42801 (left!42801 ys!41)))) (size!39055 (list!18969 (right!43131 (left!42801 ys!41)))))))))

(declare-fun d!1628028 () Bool)

(assert (=> d!1628028 e!3157214))

(declare-fun res!2153739 () Bool)

(assert (=> d!1628028 (=> (not res!2153739) (not e!3157214))))

(assert (=> d!1628028 (= res!2153739 (= (content!10411 lt!2087625) ((_ map or) (content!10411 (list!18969 (left!42801 (left!42801 ys!41)))) (content!10411 (list!18969 (right!43131 (left!42801 ys!41)))))))))

(assert (=> d!1628028 (= lt!2087625 e!3157215)))

(declare-fun c!867788 () Bool)

(assert (=> d!1628028 (= c!867788 ((_ is Nil!58424) (list!18969 (left!42801 (left!42801 ys!41)))))))

(assert (=> d!1628028 (= (++!12773 (list!18969 (left!42801 (left!42801 ys!41))) (list!18969 (right!43131 (left!42801 ys!41)))) lt!2087625)))

(assert (= (and d!1628028 c!867788) b!5057846))

(assert (= (and d!1628028 (not c!867788)) b!5057847))

(assert (= (and d!1628028 res!2153739) b!5057848))

(assert (= (and b!5057848 res!2153738) b!5057849))

(assert (=> b!5057847 m!6092266))

(declare-fun m!6093692 () Bool)

(assert (=> b!5057847 m!6093692))

(declare-fun m!6093694 () Bool)

(assert (=> b!5057848 m!6093694))

(assert (=> b!5057848 m!6092264))

(assert (=> b!5057848 m!6092576))

(assert (=> b!5057848 m!6092266))

(assert (=> b!5057848 m!6093360))

(declare-fun m!6093696 () Bool)

(assert (=> d!1628028 m!6093696))

(assert (=> d!1628028 m!6092264))

(assert (=> d!1628028 m!6092580))

(assert (=> d!1628028 m!6092266))

(assert (=> d!1628028 m!6093366))

(assert (=> b!5057259 d!1628028))

(assert (=> b!5057259 d!1627586))

(assert (=> b!5057259 d!1627588))

(assert (=> b!5057357 d!1627906))

(assert (=> b!5057357 d!1627908))

(declare-fun d!1628030 () Bool)

(declare-fun lt!2087626 () Bool)

(assert (=> d!1628030 (= lt!2087626 (isEmpty!31612 (list!18969 (right!43131 (right!43131 lt!2087515)))))))

(assert (=> d!1628030 (= lt!2087626 (= (size!39057 (right!43131 (right!43131 lt!2087515))) 0))))

(assert (=> d!1628030 (= (isEmpty!31610 (right!43131 (right!43131 lt!2087515))) lt!2087626)))

(declare-fun bs!1189444 () Bool)

(assert (= bs!1189444 d!1628030))

(assert (=> bs!1189444 m!6092518))

(assert (=> bs!1189444 m!6092518))

(declare-fun m!6093698 () Bool)

(assert (=> bs!1189444 m!6093698))

(declare-fun m!6093700 () Bool)

(assert (=> bs!1189444 m!6093700))

(assert (=> b!5057236 d!1628030))

(declare-fun d!1628032 () Bool)

(declare-fun res!2153740 () Bool)

(declare-fun e!3157216 () Bool)

(assert (=> d!1628032 (=> (not res!2153740) (not e!3157216))))

(assert (=> d!1628032 (= res!2153740 (= (csize!31338 (left!42801 (right!43131 ys!41))) (+ (size!39057 (left!42801 (left!42801 (right!43131 ys!41)))) (size!39057 (right!43131 (left!42801 (right!43131 ys!41)))))))))

(assert (=> d!1628032 (= (inv!77504 (left!42801 (right!43131 ys!41))) e!3157216)))

(declare-fun b!5057850 () Bool)

(declare-fun res!2153741 () Bool)

(assert (=> b!5057850 (=> (not res!2153741) (not e!3157216))))

(assert (=> b!5057850 (= res!2153741 (and (not (= (left!42801 (left!42801 (right!43131 ys!41))) Empty!15554)) (not (= (right!43131 (left!42801 (right!43131 ys!41))) Empty!15554))))))

(declare-fun b!5057851 () Bool)

(declare-fun res!2153742 () Bool)

(assert (=> b!5057851 (=> (not res!2153742) (not e!3157216))))

(assert (=> b!5057851 (= res!2153742 (= (cheight!15765 (left!42801 (right!43131 ys!41))) (+ (max!0 (height!2131 (left!42801 (left!42801 (right!43131 ys!41)))) (height!2131 (right!43131 (left!42801 (right!43131 ys!41))))) 1)))))

(declare-fun b!5057852 () Bool)

(assert (=> b!5057852 (= e!3157216 (<= 0 (cheight!15765 (left!42801 (right!43131 ys!41)))))))

(assert (= (and d!1628032 res!2153740) b!5057850))

(assert (= (and b!5057850 res!2153741) b!5057851))

(assert (= (and b!5057851 res!2153742) b!5057852))

(declare-fun m!6093702 () Bool)

(assert (=> d!1628032 m!6093702))

(declare-fun m!6093704 () Bool)

(assert (=> d!1628032 m!6093704))

(assert (=> b!5057851 m!6093348))

(assert (=> b!5057851 m!6093350))

(assert (=> b!5057851 m!6093348))

(assert (=> b!5057851 m!6093350))

(declare-fun m!6093706 () Bool)

(assert (=> b!5057851 m!6093706))

(assert (=> b!5057282 d!1628032))

(declare-fun d!1628034 () Bool)

(declare-fun lt!2087627 () Int)

(assert (=> d!1628034 (>= lt!2087627 0)))

(declare-fun e!3157217 () Int)

(assert (=> d!1628034 (= lt!2087627 e!3157217)))

(declare-fun c!867789 () Bool)

(assert (=> d!1628034 (= c!867789 ((_ is Nil!58424) (innerList!15642 (xs!18888 (right!43131 xs!286)))))))

(assert (=> d!1628034 (= (size!39055 (innerList!15642 (xs!18888 (right!43131 xs!286)))) lt!2087627)))

(declare-fun b!5057853 () Bool)

(assert (=> b!5057853 (= e!3157217 0)))

(declare-fun b!5057854 () Bool)

(assert (=> b!5057854 (= e!3157217 (+ 1 (size!39055 (t!371231 (innerList!15642 (xs!18888 (right!43131 xs!286)))))))))

(assert (= (and d!1628034 c!867789) b!5057853))

(assert (= (and d!1628034 (not c!867789)) b!5057854))

(declare-fun m!6093708 () Bool)

(assert (=> b!5057854 m!6093708))

(assert (=> d!1627572 d!1628034))

(declare-fun d!1628036 () Bool)

(declare-fun lt!2087628 () Int)

(assert (=> d!1628036 (>= lt!2087628 0)))

(declare-fun e!3157218 () Int)

(assert (=> d!1628036 (= lt!2087628 e!3157218)))

(declare-fun c!867790 () Bool)

(assert (=> d!1628036 (= c!867790 ((_ is Nil!58424) lt!2087553))))

(assert (=> d!1628036 (= (size!39055 lt!2087553) lt!2087628)))

(declare-fun b!5057855 () Bool)

(assert (=> b!5057855 (= e!3157218 0)))

(declare-fun b!5057856 () Bool)

(assert (=> b!5057856 (= e!3157218 (+ 1 (size!39055 (t!371231 lt!2087553))))))

(assert (= (and d!1628036 c!867790) b!5057855))

(assert (= (and d!1628036 (not c!867790)) b!5057856))

(declare-fun m!6093710 () Bool)

(assert (=> b!5057856 m!6093710))

(assert (=> b!5057375 d!1628036))

(declare-fun d!1628038 () Bool)

(declare-fun lt!2087629 () Int)

(assert (=> d!1628038 (>= lt!2087629 0)))

(declare-fun e!3157219 () Int)

(assert (=> d!1628038 (= lt!2087629 e!3157219)))

(declare-fun c!867791 () Bool)

(assert (=> d!1628038 (= c!867791 ((_ is Nil!58424) (list!18969 (right!43131 (right!43131 xs!286)))))))

(assert (=> d!1628038 (= (size!39055 (list!18969 (right!43131 (right!43131 xs!286)))) lt!2087629)))

(declare-fun b!5057857 () Bool)

(assert (=> b!5057857 (= e!3157219 0)))

(declare-fun b!5057858 () Bool)

(assert (=> b!5057858 (= e!3157219 (+ 1 (size!39055 (t!371231 (list!18969 (right!43131 (right!43131 xs!286)))))))))

(assert (= (and d!1628038 c!867791) b!5057857))

(assert (= (and d!1628038 (not c!867791)) b!5057858))

(declare-fun m!6093712 () Bool)

(assert (=> b!5057858 m!6093712))

(assert (=> b!5057375 d!1628038))

(assert (=> b!5057375 d!1627566))

(declare-fun b!5057859 () Bool)

(declare-fun res!2153748 () Bool)

(declare-fun e!3157221 () Bool)

(assert (=> b!5057859 (=> (not res!2153748) (not e!3157221))))

(assert (=> b!5057859 (= res!2153748 (<= (- (height!2131 (left!42801 (right!43131 (left!42801 ys!41)))) (height!2131 (right!43131 (right!43131 (left!42801 ys!41))))) 1))))

(declare-fun b!5057860 () Bool)

(declare-fun e!3157220 () Bool)

(assert (=> b!5057860 (= e!3157220 e!3157221)))

(declare-fun res!2153744 () Bool)

(assert (=> b!5057860 (=> (not res!2153744) (not e!3157221))))

(assert (=> b!5057860 (= res!2153744 (<= (- 1) (- (height!2131 (left!42801 (right!43131 (left!42801 ys!41)))) (height!2131 (right!43131 (right!43131 (left!42801 ys!41)))))))))

(declare-fun b!5057861 () Bool)

(declare-fun res!2153746 () Bool)

(assert (=> b!5057861 (=> (not res!2153746) (not e!3157221))))

(assert (=> b!5057861 (= res!2153746 (not (isEmpty!31610 (left!42801 (right!43131 (left!42801 ys!41))))))))

(declare-fun b!5057862 () Bool)

(assert (=> b!5057862 (= e!3157221 (not (isEmpty!31610 (right!43131 (right!43131 (left!42801 ys!41))))))))

(declare-fun b!5057863 () Bool)

(declare-fun res!2153743 () Bool)

(assert (=> b!5057863 (=> (not res!2153743) (not e!3157221))))

(assert (=> b!5057863 (= res!2153743 (isBalanced!4416 (right!43131 (right!43131 (left!42801 ys!41)))))))

(declare-fun d!1628040 () Bool)

(declare-fun res!2153747 () Bool)

(assert (=> d!1628040 (=> res!2153747 e!3157220)))

(assert (=> d!1628040 (= res!2153747 (not ((_ is Node!15554) (right!43131 (left!42801 ys!41)))))))

(assert (=> d!1628040 (= (isBalanced!4416 (right!43131 (left!42801 ys!41))) e!3157220)))

(declare-fun b!5057864 () Bool)

(declare-fun res!2153745 () Bool)

(assert (=> b!5057864 (=> (not res!2153745) (not e!3157221))))

(assert (=> b!5057864 (= res!2153745 (isBalanced!4416 (left!42801 (right!43131 (left!42801 ys!41)))))))

(assert (= (and d!1628040 (not res!2153747)) b!5057860))

(assert (= (and b!5057860 res!2153744) b!5057859))

(assert (= (and b!5057859 res!2153748) b!5057864))

(assert (= (and b!5057864 res!2153745) b!5057863))

(assert (= (and b!5057863 res!2153743) b!5057861))

(assert (= (and b!5057861 res!2153746) b!5057862))

(declare-fun m!6093714 () Bool)

(assert (=> b!5057863 m!6093714))

(declare-fun m!6093716 () Bool)

(assert (=> b!5057864 m!6093716))

(declare-fun m!6093718 () Bool)

(assert (=> b!5057862 m!6093718))

(assert (=> b!5057860 m!6093436))

(assert (=> b!5057860 m!6093438))

(declare-fun m!6093720 () Bool)

(assert (=> b!5057861 m!6093720))

(assert (=> b!5057859 m!6093436))

(assert (=> b!5057859 m!6093438))

(assert (=> b!5057352 d!1628040))

(declare-fun d!1628042 () Bool)

(assert (=> d!1628042 (= (inv!77501 (xs!18888 (right!43131 (left!42801 ys!41)))) (<= (size!39055 (innerList!15642 (xs!18888 (right!43131 (left!42801 ys!41))))) 2147483647))))

(declare-fun bs!1189445 () Bool)

(assert (= bs!1189445 d!1628042))

(declare-fun m!6093722 () Bool)

(assert (=> bs!1189445 m!6093722))

(assert (=> b!5057407 d!1628042))

(declare-fun b!5057868 () Bool)

(declare-fun e!3157222 () Bool)

(declare-fun lt!2087630 () List!58548)

(assert (=> b!5057868 (= e!3157222 (or (not (= (list!18969 (right!43131 lt!2087515)) Nil!58424)) (= lt!2087630 (t!371231 (list!18969 (left!42801 lt!2087515))))))))

(declare-fun b!5057865 () Bool)

(declare-fun e!3157223 () List!58548)

(assert (=> b!5057865 (= e!3157223 (list!18969 (right!43131 lt!2087515)))))

(declare-fun b!5057866 () Bool)

(assert (=> b!5057866 (= e!3157223 (Cons!58424 (h!64872 (t!371231 (list!18969 (left!42801 lt!2087515)))) (++!12773 (t!371231 (t!371231 (list!18969 (left!42801 lt!2087515)))) (list!18969 (right!43131 lt!2087515)))))))

(declare-fun b!5057867 () Bool)

(declare-fun res!2153749 () Bool)

(assert (=> b!5057867 (=> (not res!2153749) (not e!3157222))))

(assert (=> b!5057867 (= res!2153749 (= (size!39055 lt!2087630) (+ (size!39055 (t!371231 (list!18969 (left!42801 lt!2087515)))) (size!39055 (list!18969 (right!43131 lt!2087515))))))))

(declare-fun d!1628044 () Bool)

(assert (=> d!1628044 e!3157222))

(declare-fun res!2153750 () Bool)

(assert (=> d!1628044 (=> (not res!2153750) (not e!3157222))))

(assert (=> d!1628044 (= res!2153750 (= (content!10411 lt!2087630) ((_ map or) (content!10411 (t!371231 (list!18969 (left!42801 lt!2087515)))) (content!10411 (list!18969 (right!43131 lt!2087515))))))))

(assert (=> d!1628044 (= lt!2087630 e!3157223)))

(declare-fun c!867792 () Bool)

(assert (=> d!1628044 (= c!867792 ((_ is Nil!58424) (t!371231 (list!18969 (left!42801 lt!2087515)))))))

(assert (=> d!1628044 (= (++!12773 (t!371231 (list!18969 (left!42801 lt!2087515))) (list!18969 (right!43131 lt!2087515))) lt!2087630)))

(assert (= (and d!1628044 c!867792) b!5057865))

(assert (= (and d!1628044 (not c!867792)) b!5057866))

(assert (= (and d!1628044 res!2153750) b!5057867))

(assert (= (and b!5057867 res!2153749) b!5057868))

(assert (=> b!5057866 m!6092090))

(declare-fun m!6093724 () Bool)

(assert (=> b!5057866 m!6093724))

(declare-fun m!6093726 () Bool)

(assert (=> b!5057867 m!6093726))

(assert (=> b!5057867 m!6093420))

(assert (=> b!5057867 m!6092090))

(assert (=> b!5057867 m!6092498))

(declare-fun m!6093728 () Bool)

(assert (=> d!1628044 m!6093728))

(assert (=> d!1628044 m!6093264))

(assert (=> d!1628044 m!6092090))

(assert (=> d!1628044 m!6092504))

(assert (=> b!5057240 d!1628044))

(declare-fun d!1628046 () Bool)

(assert (=> d!1628046 (= (isEmpty!31612 (list!18969 (right!43131 lt!2087515))) ((_ is Nil!58424) (list!18969 (right!43131 lt!2087515))))))

(assert (=> d!1627550 d!1628046))

(assert (=> d!1627550 d!1627598))

(declare-fun d!1628048 () Bool)

(declare-fun lt!2087631 () Int)

(assert (=> d!1628048 (= lt!2087631 (size!39055 (list!18969 (right!43131 lt!2087515))))))

(assert (=> d!1628048 (= lt!2087631 (ite ((_ is Empty!15554) (right!43131 lt!2087515)) 0 (ite ((_ is Leaf!25836) (right!43131 lt!2087515)) (csize!31339 (right!43131 lt!2087515)) (csize!31338 (right!43131 lt!2087515)))))))

(assert (=> d!1628048 (= (size!39057 (right!43131 lt!2087515)) lt!2087631)))

(declare-fun bs!1189446 () Bool)

(assert (= bs!1189446 d!1628048))

(assert (=> bs!1189446 m!6092090))

(assert (=> bs!1189446 m!6092090))

(assert (=> bs!1189446 m!6092498))

(assert (=> d!1627550 d!1628048))

(assert (=> b!5057348 d!1627934))

(assert (=> b!5057348 d!1627936))

(declare-fun d!1628050 () Bool)

(assert (=> d!1628050 (= (max!0 (height!2131 (left!42801 ys!41)) (height!2131 (right!43131 ys!41))) (ite (< (height!2131 (left!42801 ys!41)) (height!2131 (right!43131 ys!41))) (height!2131 (right!43131 ys!41)) (height!2131 (left!42801 ys!41))))))

(assert (=> b!5057355 d!1628050))

(assert (=> b!5057355 d!1627580))

(assert (=> b!5057355 d!1627582))

(declare-fun b!5057869 () Bool)

(declare-fun res!2153756 () Bool)

(declare-fun e!3157225 () Bool)

(assert (=> b!5057869 (=> (not res!2153756) (not e!3157225))))

(assert (=> b!5057869 (= res!2153756 (<= (- (height!2131 (left!42801 (left!42801 (left!42801 xs!286)))) (height!2131 (right!43131 (left!42801 (left!42801 xs!286))))) 1))))

(declare-fun b!5057870 () Bool)

(declare-fun e!3157224 () Bool)

(assert (=> b!5057870 (= e!3157224 e!3157225)))

(declare-fun res!2153752 () Bool)

(assert (=> b!5057870 (=> (not res!2153752) (not e!3157225))))

(assert (=> b!5057870 (= res!2153752 (<= (- 1) (- (height!2131 (left!42801 (left!42801 (left!42801 xs!286)))) (height!2131 (right!43131 (left!42801 (left!42801 xs!286)))))))))

(declare-fun b!5057871 () Bool)

(declare-fun res!2153754 () Bool)

(assert (=> b!5057871 (=> (not res!2153754) (not e!3157225))))

(assert (=> b!5057871 (= res!2153754 (not (isEmpty!31610 (left!42801 (left!42801 (left!42801 xs!286))))))))

(declare-fun b!5057872 () Bool)

(assert (=> b!5057872 (= e!3157225 (not (isEmpty!31610 (right!43131 (left!42801 (left!42801 xs!286))))))))

(declare-fun b!5057873 () Bool)

(declare-fun res!2153751 () Bool)

(assert (=> b!5057873 (=> (not res!2153751) (not e!3157225))))

(assert (=> b!5057873 (= res!2153751 (isBalanced!4416 (right!43131 (left!42801 (left!42801 xs!286)))))))

(declare-fun d!1628052 () Bool)

(declare-fun res!2153755 () Bool)

(assert (=> d!1628052 (=> res!2153755 e!3157224)))

(assert (=> d!1628052 (= res!2153755 (not ((_ is Node!15554) (left!42801 (left!42801 xs!286)))))))

(assert (=> d!1628052 (= (isBalanced!4416 (left!42801 (left!42801 xs!286))) e!3157224)))

(declare-fun b!5057874 () Bool)

(declare-fun res!2153753 () Bool)

(assert (=> b!5057874 (=> (not res!2153753) (not e!3157225))))

(assert (=> b!5057874 (= res!2153753 (isBalanced!4416 (left!42801 (left!42801 (left!42801 xs!286)))))))

(assert (= (and d!1628052 (not res!2153755)) b!5057870))

(assert (= (and b!5057870 res!2153752) b!5057869))

(assert (= (and b!5057869 res!2153756) b!5057874))

(assert (= (and b!5057874 res!2153753) b!5057873))

(assert (= (and b!5057873 res!2153751) b!5057871))

(assert (= (and b!5057871 res!2153754) b!5057872))

(declare-fun m!6093730 () Bool)

(assert (=> b!5057873 m!6093730))

(declare-fun m!6093732 () Bool)

(assert (=> b!5057874 m!6093732))

(declare-fun m!6093734 () Bool)

(assert (=> b!5057872 m!6093734))

(declare-fun m!6093736 () Bool)

(assert (=> b!5057870 m!6093736))

(declare-fun m!6093738 () Bool)

(assert (=> b!5057870 m!6093738))

(declare-fun m!6093740 () Bool)

(assert (=> b!5057871 m!6093740))

(assert (=> b!5057869 m!6093736))

(assert (=> b!5057869 m!6093738))

(assert (=> b!5057362 d!1628052))

(declare-fun e!3157226 () Bool)

(declare-fun lt!2087632 () List!58548)

(declare-fun b!5057878 () Bool)

(assert (=> b!5057878 (= e!3157226 (or (not (= (list!18969 (left!42801 ys!41)) Nil!58424)) (= lt!2087632 (list!18969 xs!286))))))

(declare-fun b!5057875 () Bool)

(declare-fun e!3157227 () List!58548)

(assert (=> b!5057875 (= e!3157227 (list!18969 (left!42801 ys!41)))))

(declare-fun b!5057876 () Bool)

(assert (=> b!5057876 (= e!3157227 (Cons!58424 (h!64872 (list!18969 xs!286)) (++!12773 (t!371231 (list!18969 xs!286)) (list!18969 (left!42801 ys!41)))))))

(declare-fun b!5057877 () Bool)

(declare-fun res!2153757 () Bool)

(assert (=> b!5057877 (=> (not res!2153757) (not e!3157226))))

(assert (=> b!5057877 (= res!2153757 (= (size!39055 lt!2087632) (+ (size!39055 (list!18969 xs!286)) (size!39055 (list!18969 (left!42801 ys!41))))))))

(declare-fun d!1628054 () Bool)

(assert (=> d!1628054 e!3157226))

(declare-fun res!2153758 () Bool)

(assert (=> d!1628054 (=> (not res!2153758) (not e!3157226))))

(assert (=> d!1628054 (= res!2153758 (= (content!10411 lt!2087632) ((_ map or) (content!10411 (list!18969 xs!286)) (content!10411 (list!18969 (left!42801 ys!41))))))))

(assert (=> d!1628054 (= lt!2087632 e!3157227)))

(declare-fun c!867793 () Bool)

(assert (=> d!1628054 (= c!867793 ((_ is Nil!58424) (list!18969 xs!286)))))

(assert (=> d!1628054 (= (++!12773 (list!18969 xs!286) (list!18969 (left!42801 ys!41))) lt!2087632)))

(assert (= (and d!1628054 c!867793) b!5057875))

(assert (= (and d!1628054 (not c!867793)) b!5057876))

(assert (= (and d!1628054 res!2153758) b!5057877))

(assert (= (and b!5057877 res!2153757) b!5057878))

(assert (=> b!5057876 m!6092150))

(assert (=> b!5057876 m!6093662))

(declare-fun m!6093742 () Bool)

(assert (=> b!5057877 m!6093742))

(assert (=> b!5057877 m!6092018))

(assert (=> b!5057877 m!6092130))

(assert (=> b!5057877 m!6092150))

(assert (=> b!5057877 m!6092610))

(declare-fun m!6093744 () Bool)

(assert (=> d!1628054 m!6093744))

(assert (=> d!1628054 m!6092018))

(assert (=> d!1628054 m!6092136))

(assert (=> d!1628054 m!6092150))

(assert (=> d!1628054 m!6092616))

(assert (=> bm!352175 d!1628054))

(declare-fun d!1628056 () Bool)

(declare-fun lt!2087633 () Int)

(assert (=> d!1628056 (>= lt!2087633 0)))

(declare-fun e!3157228 () Int)

(assert (=> d!1628056 (= lt!2087633 e!3157228)))

(declare-fun c!867794 () Bool)

(assert (=> d!1628056 (= c!867794 ((_ is Nil!58424) (t!371231 (innerList!15642 (xs!18888 xs!286)))))))

(assert (=> d!1628056 (= (size!39055 (t!371231 (innerList!15642 (xs!18888 xs!286)))) lt!2087633)))

(declare-fun b!5057879 () Bool)

(assert (=> b!5057879 (= e!3157228 0)))

(declare-fun b!5057880 () Bool)

(assert (=> b!5057880 (= e!3157228 (+ 1 (size!39055 (t!371231 (t!371231 (innerList!15642 (xs!18888 xs!286)))))))))

(assert (= (and d!1628056 c!867794) b!5057879))

(assert (= (and d!1628056 (not c!867794)) b!5057880))

(declare-fun m!6093746 () Bool)

(assert (=> b!5057880 m!6093746))

(assert (=> b!5057289 d!1628056))

(declare-fun d!1628058 () Bool)

(assert (=> d!1628058 (= (max!0 (height!2131 (left!42801 (left!42801 ys!41))) (height!2131 (right!43131 (left!42801 ys!41)))) (ite (< (height!2131 (left!42801 (left!42801 ys!41))) (height!2131 (right!43131 (left!42801 ys!41)))) (height!2131 (right!43131 (left!42801 ys!41))) (height!2131 (left!42801 (left!42801 ys!41)))))))

(assert (=> b!5057199 d!1628058))

(assert (=> b!5057199 d!1627934))

(assert (=> b!5057199 d!1627936))

(assert (=> b!5057262 d!1628022))

(assert (=> d!1627686 d!1627564))

(assert (=> d!1627686 d!1627472))

(declare-fun d!1628060 () Bool)

(declare-fun lt!2087634 () Int)

(assert (=> d!1628060 (>= lt!2087634 0)))

(declare-fun e!3157229 () Int)

(assert (=> d!1628060 (= lt!2087634 e!3157229)))

(declare-fun c!867795 () Bool)

(assert (=> d!1628060 (= c!867795 ((_ is Nil!58424) (t!371231 (list!18969 xs!286))))))

(assert (=> d!1628060 (= (size!39055 (t!371231 (list!18969 xs!286))) lt!2087634)))

(declare-fun b!5057881 () Bool)

(assert (=> b!5057881 (= e!3157229 0)))

(declare-fun b!5057882 () Bool)

(assert (=> b!5057882 (= e!3157229 (+ 1 (size!39055 (t!371231 (t!371231 (list!18969 xs!286))))))))

(assert (= (and d!1628060 c!867795) b!5057881))

(assert (= (and d!1628060 (not c!867795)) b!5057882))

(declare-fun m!6093748 () Bool)

(assert (=> b!5057882 m!6093748))

(assert (=> b!5057216 d!1628060))

(declare-fun d!1628062 () Bool)

(declare-fun res!2153759 () Bool)

(declare-fun e!3157230 () Bool)

(assert (=> d!1628062 (=> (not res!2153759) (not e!3157230))))

(assert (=> d!1628062 (= res!2153759 (= (csize!31338 (right!43131 (right!43131 ys!41))) (+ (size!39057 (left!42801 (right!43131 (right!43131 ys!41)))) (size!39057 (right!43131 (right!43131 (right!43131 ys!41)))))))))

(assert (=> d!1628062 (= (inv!77504 (right!43131 (right!43131 ys!41))) e!3157230)))

(declare-fun b!5057883 () Bool)

(declare-fun res!2153760 () Bool)

(assert (=> b!5057883 (=> (not res!2153760) (not e!3157230))))

(assert (=> b!5057883 (= res!2153760 (and (not (= (left!42801 (right!43131 (right!43131 ys!41))) Empty!15554)) (not (= (right!43131 (right!43131 (right!43131 ys!41))) Empty!15554))))))

(declare-fun b!5057884 () Bool)

(declare-fun res!2153761 () Bool)

(assert (=> b!5057884 (=> (not res!2153761) (not e!3157230))))

(assert (=> b!5057884 (= res!2153761 (= (cheight!15765 (right!43131 (right!43131 ys!41))) (+ (max!0 (height!2131 (left!42801 (right!43131 (right!43131 ys!41)))) (height!2131 (right!43131 (right!43131 (right!43131 ys!41))))) 1)))))

(declare-fun b!5057885 () Bool)

(assert (=> b!5057885 (= e!3157230 (<= 0 (cheight!15765 (right!43131 (right!43131 ys!41)))))))

(assert (= (and d!1628062 res!2153759) b!5057883))

(assert (= (and b!5057883 res!2153760) b!5057884))

(assert (= (and b!5057884 res!2153761) b!5057885))

(declare-fun m!6093750 () Bool)

(assert (=> d!1628062 m!6093750))

(declare-fun m!6093752 () Bool)

(assert (=> d!1628062 m!6093752))

(assert (=> b!5057884 m!6093630))

(assert (=> b!5057884 m!6093632))

(assert (=> b!5057884 m!6093630))

(assert (=> b!5057884 m!6093632))

(declare-fun m!6093754 () Bool)

(assert (=> b!5057884 m!6093754))

(assert (=> b!5057285 d!1628062))

(declare-fun b!5057886 () Bool)

(declare-fun res!2153767 () Bool)

(declare-fun e!3157232 () Bool)

(assert (=> b!5057886 (=> (not res!2153767) (not e!3157232))))

(assert (=> b!5057886 (= res!2153767 (<= (- (height!2131 (left!42801 (right!43131 (left!42801 lt!2087515)))) (height!2131 (right!43131 (right!43131 (left!42801 lt!2087515))))) 1))))

(declare-fun b!5057887 () Bool)

(declare-fun e!3157231 () Bool)

(assert (=> b!5057887 (= e!3157231 e!3157232)))

(declare-fun res!2153763 () Bool)

(assert (=> b!5057887 (=> (not res!2153763) (not e!3157232))))

(assert (=> b!5057887 (= res!2153763 (<= (- 1) (- (height!2131 (left!42801 (right!43131 (left!42801 lt!2087515)))) (height!2131 (right!43131 (right!43131 (left!42801 lt!2087515)))))))))

(declare-fun b!5057888 () Bool)

(declare-fun res!2153765 () Bool)

(assert (=> b!5057888 (=> (not res!2153765) (not e!3157232))))

(assert (=> b!5057888 (= res!2153765 (not (isEmpty!31610 (left!42801 (right!43131 (left!42801 lt!2087515))))))))

(declare-fun b!5057889 () Bool)

(assert (=> b!5057889 (= e!3157232 (not (isEmpty!31610 (right!43131 (right!43131 (left!42801 lt!2087515))))))))

(declare-fun b!5057890 () Bool)

(declare-fun res!2153762 () Bool)

(assert (=> b!5057890 (=> (not res!2153762) (not e!3157232))))

(assert (=> b!5057890 (= res!2153762 (isBalanced!4416 (right!43131 (right!43131 (left!42801 lt!2087515)))))))

(declare-fun d!1628064 () Bool)

(declare-fun res!2153766 () Bool)

(assert (=> d!1628064 (=> res!2153766 e!3157231)))

(assert (=> d!1628064 (= res!2153766 (not ((_ is Node!15554) (right!43131 (left!42801 lt!2087515)))))))

(assert (=> d!1628064 (= (isBalanced!4416 (right!43131 (left!42801 lt!2087515))) e!3157231)))

(declare-fun b!5057891 () Bool)

(declare-fun res!2153764 () Bool)

(assert (=> b!5057891 (=> (not res!2153764) (not e!3157232))))

(assert (=> b!5057891 (= res!2153764 (isBalanced!4416 (left!42801 (right!43131 (left!42801 lt!2087515)))))))

(assert (= (and d!1628064 (not res!2153766)) b!5057887))

(assert (= (and b!5057887 res!2153763) b!5057886))

(assert (= (and b!5057886 res!2153767) b!5057891))

(assert (= (and b!5057891 res!2153764) b!5057890))

(assert (= (and b!5057890 res!2153762) b!5057888))

(assert (= (and b!5057888 res!2153765) b!5057889))

(declare-fun m!6093756 () Bool)

(assert (=> b!5057890 m!6093756))

(declare-fun m!6093758 () Bool)

(assert (=> b!5057891 m!6093758))

(declare-fun m!6093760 () Bool)

(assert (=> b!5057889 m!6093760))

(declare-fun m!6093762 () Bool)

(assert (=> b!5057887 m!6093762))

(declare-fun m!6093764 () Bool)

(assert (=> b!5057887 m!6093764))

(declare-fun m!6093766 () Bool)

(assert (=> b!5057888 m!6093766))

(assert (=> b!5057886 m!6093762))

(assert (=> b!5057886 m!6093764))

(assert (=> b!5057338 d!1628064))

(declare-fun d!1628066 () Bool)

(declare-fun lt!2087635 () Int)

(assert (=> d!1628066 (= lt!2087635 (size!39055 (list!18969 (left!42801 (left!42801 xs!286)))))))

(assert (=> d!1628066 (= lt!2087635 (ite ((_ is Empty!15554) (left!42801 (left!42801 xs!286))) 0 (ite ((_ is Leaf!25836) (left!42801 (left!42801 xs!286))) (csize!31339 (left!42801 (left!42801 xs!286))) (csize!31338 (left!42801 (left!42801 xs!286))))))))

(assert (=> d!1628066 (= (size!39057 (left!42801 (left!42801 xs!286))) lt!2087635)))

(declare-fun bs!1189447 () Bool)

(assert (= bs!1189447 d!1628066))

(assert (=> bs!1189447 m!6092664))

(assert (=> bs!1189447 m!6092664))

(assert (=> bs!1189447 m!6093522))

(assert (=> d!1627694 d!1628066))

(declare-fun d!1628068 () Bool)

(declare-fun lt!2087636 () Int)

(assert (=> d!1628068 (= lt!2087636 (size!39055 (list!18969 (right!43131 (left!42801 xs!286)))))))

(assert (=> d!1628068 (= lt!2087636 (ite ((_ is Empty!15554) (right!43131 (left!42801 xs!286))) 0 (ite ((_ is Leaf!25836) (right!43131 (left!42801 xs!286))) (csize!31339 (right!43131 (left!42801 xs!286))) (csize!31338 (right!43131 (left!42801 xs!286))))))))

(assert (=> d!1628068 (= (size!39057 (right!43131 (left!42801 xs!286))) lt!2087636)))

(declare-fun bs!1189448 () Bool)

(assert (= bs!1189448 d!1628068))

(assert (=> bs!1189448 m!6092666))

(assert (=> bs!1189448 m!6092666))

(assert (=> bs!1189448 m!6093524))

(assert (=> d!1627694 d!1628068))

(declare-fun d!1628070 () Bool)

(assert (=> d!1628070 (= (max!0 (height!2131 (left!42801 (right!43131 xs!286))) (height!2131 (right!43131 (right!43131 xs!286)))) (ite (< (height!2131 (left!42801 (right!43131 xs!286))) (height!2131 (right!43131 (right!43131 xs!286)))) (height!2131 (right!43131 (right!43131 xs!286))) (height!2131 (left!42801 (right!43131 xs!286)))))))

(assert (=> b!5057207 d!1628070))

(assert (=> b!5057207 d!1627920))

(assert (=> b!5057207 d!1627922))

(assert (=> b!5057334 d!1627992))

(assert (=> b!5057334 d!1627994))

(declare-fun d!1628072 () Bool)

(assert (=> d!1628072 (= (list!18970 (xs!18888 (left!42801 lt!2087515))) (innerList!15642 (xs!18888 (left!42801 lt!2087515))))))

(assert (=> b!5057245 d!1628072))

(declare-fun d!1628074 () Bool)

(declare-fun lt!2087637 () Bool)

(assert (=> d!1628074 (= lt!2087637 (isEmpty!31612 (list!18969 (right!43131 (right!43131 xs!286)))))))

(assert (=> d!1628074 (= lt!2087637 (= (size!39057 (right!43131 (right!43131 xs!286))) 0))))

(assert (=> d!1628074 (= (isEmpty!31610 (right!43131 (right!43131 xs!286))) lt!2087637)))

(declare-fun bs!1189449 () Bool)

(assert (= bs!1189449 d!1628074))

(assert (=> bs!1189449 m!6092276))

(assert (=> bs!1189449 m!6092276))

(declare-fun m!6093768 () Bool)

(assert (=> bs!1189449 m!6093768))

(assert (=> bs!1189449 m!6092438))

(assert (=> b!5057267 d!1628074))

(declare-fun d!1628076 () Bool)

(assert (=> d!1628076 (= (inv!77501 (xs!18888 (left!42801 (left!42801 xs!286)))) (<= (size!39055 (innerList!15642 (xs!18888 (left!42801 (left!42801 xs!286))))) 2147483647))))

(declare-fun bs!1189450 () Bool)

(assert (= bs!1189450 d!1628076))

(declare-fun m!6093770 () Bool)

(assert (=> bs!1189450 m!6093770))

(assert (=> b!5057411 d!1628076))

(declare-fun lt!2087638 () List!58548)

(declare-fun b!5057895 () Bool)

(declare-fun e!3157233 () Bool)

(assert (=> b!5057895 (= e!3157233 (or (not (= (list!18969 ys!41) Nil!58424)) (= lt!2087638 call!352191)))))

(declare-fun b!5057892 () Bool)

(declare-fun e!3157234 () List!58548)

(assert (=> b!5057892 (= e!3157234 (list!18969 ys!41))))

(declare-fun b!5057893 () Bool)

(assert (=> b!5057893 (= e!3157234 (Cons!58424 (h!64872 call!352191) (++!12773 (t!371231 call!352191) (list!18969 ys!41))))))

(declare-fun b!5057894 () Bool)

(declare-fun res!2153768 () Bool)

(assert (=> b!5057894 (=> (not res!2153768) (not e!3157233))))

(assert (=> b!5057894 (= res!2153768 (= (size!39055 lt!2087638) (+ (size!39055 call!352191) (size!39055 (list!18969 ys!41)))))))

(declare-fun d!1628078 () Bool)

(assert (=> d!1628078 e!3157233))

(declare-fun res!2153769 () Bool)

(assert (=> d!1628078 (=> (not res!2153769) (not e!3157233))))

(assert (=> d!1628078 (= res!2153769 (= (content!10411 lt!2087638) ((_ map or) (content!10411 call!352191) (content!10411 (list!18969 ys!41)))))))

(assert (=> d!1628078 (= lt!2087638 e!3157234)))

(declare-fun c!867796 () Bool)

(assert (=> d!1628078 (= c!867796 ((_ is Nil!58424) call!352191))))

(assert (=> d!1628078 (= (++!12773 call!352191 (list!18969 ys!41)) lt!2087638)))

(assert (= (and d!1628078 c!867796) b!5057892))

(assert (= (and d!1628078 (not c!867796)) b!5057893))

(assert (= (and d!1628078 res!2153769) b!5057894))

(assert (= (and b!5057894 res!2153768) b!5057895))

(assert (=> b!5057893 m!6092020))

(declare-fun m!6093772 () Bool)

(assert (=> b!5057893 m!6093772))

(declare-fun m!6093774 () Bool)

(assert (=> b!5057894 m!6093774))

(declare-fun m!6093776 () Bool)

(assert (=> b!5057894 m!6093776))

(assert (=> b!5057894 m!6092020))

(assert (=> b!5057894 m!6092132))

(declare-fun m!6093778 () Bool)

(assert (=> d!1628078 m!6093778))

(declare-fun m!6093780 () Bool)

(assert (=> d!1628078 m!6093780))

(assert (=> d!1628078 m!6092020))

(assert (=> d!1628078 m!6092138))

(assert (=> bm!352186 d!1628078))

(assert (=> b!5057270 d!1627954))

(assert (=> b!5057270 d!1627956))

(assert (=> b!5057318 d!1627890))

(declare-fun b!5057899 () Bool)

(declare-fun e!3157235 () Bool)

(declare-fun lt!2087639 () List!58548)

(assert (=> b!5057899 (= e!3157235 (or (not (= (++!12773 (list!18969 (right!43131 (right!43131 xs!286))) (list!18969 ys!41)) Nil!58424)) (= lt!2087639 (list!18969 (left!42801 (right!43131 xs!286))))))))

(declare-fun b!5057896 () Bool)

(declare-fun e!3157236 () List!58548)

(assert (=> b!5057896 (= e!3157236 (++!12773 (list!18969 (right!43131 (right!43131 xs!286))) (list!18969 ys!41)))))

(declare-fun b!5057897 () Bool)

(assert (=> b!5057897 (= e!3157236 (Cons!58424 (h!64872 (list!18969 (left!42801 (right!43131 xs!286)))) (++!12773 (t!371231 (list!18969 (left!42801 (right!43131 xs!286)))) (++!12773 (list!18969 (right!43131 (right!43131 xs!286))) (list!18969 ys!41)))))))

(declare-fun b!5057898 () Bool)

(declare-fun res!2153770 () Bool)

(assert (=> b!5057898 (=> (not res!2153770) (not e!3157235))))

(assert (=> b!5057898 (= res!2153770 (= (size!39055 lt!2087639) (+ (size!39055 (list!18969 (left!42801 (right!43131 xs!286)))) (size!39055 (++!12773 (list!18969 (right!43131 (right!43131 xs!286))) (list!18969 ys!41))))))))

(declare-fun d!1628080 () Bool)

(assert (=> d!1628080 e!3157235))

(declare-fun res!2153771 () Bool)

(assert (=> d!1628080 (=> (not res!2153771) (not e!3157235))))

(assert (=> d!1628080 (= res!2153771 (= (content!10411 lt!2087639) ((_ map or) (content!10411 (list!18969 (left!42801 (right!43131 xs!286)))) (content!10411 (++!12773 (list!18969 (right!43131 (right!43131 xs!286))) (list!18969 ys!41))))))))

(assert (=> d!1628080 (= lt!2087639 e!3157236)))

(declare-fun c!867797 () Bool)

(assert (=> d!1628080 (= c!867797 ((_ is Nil!58424) (list!18969 (left!42801 (right!43131 xs!286)))))))

(assert (=> d!1628080 (= (++!12773 (list!18969 (left!42801 (right!43131 xs!286))) (++!12773 (list!18969 (right!43131 (right!43131 xs!286))) (list!18969 ys!41))) lt!2087639)))

(assert (= (and d!1628080 c!867797) b!5057896))

(assert (= (and d!1628080 (not c!867797)) b!5057897))

(assert (= (and d!1628080 res!2153771) b!5057898))

(assert (= (and b!5057898 res!2153770) b!5057899))

(assert (=> b!5057897 m!6092278))

(declare-fun m!6093782 () Bool)

(assert (=> b!5057897 m!6093782))

(declare-fun m!6093784 () Bool)

(assert (=> b!5057898 m!6093784))

(assert (=> b!5057898 m!6092280))

(assert (=> b!5057898 m!6093640))

(assert (=> b!5057898 m!6092278))

(declare-fun m!6093786 () Bool)

(assert (=> b!5057898 m!6093786))

(declare-fun m!6093788 () Bool)

(assert (=> d!1628080 m!6093788))

(assert (=> d!1628080 m!6092280))

(assert (=> d!1628080 m!6093644))

(assert (=> d!1628080 m!6092278))

(declare-fun m!6093790 () Bool)

(assert (=> d!1628080 m!6093790))

(assert (=> bm!352192 d!1628080))

(declare-fun d!1628082 () Bool)

(declare-fun res!2153772 () Bool)

(declare-fun e!3157237 () Bool)

(assert (=> d!1628082 (=> (not res!2153772) (not e!3157237))))

(assert (=> d!1628082 (= res!2153772 (<= (size!39055 (list!18970 (xs!18888 (left!42801 (right!43131 xs!286))))) 512))))

(assert (=> d!1628082 (= (inv!77505 (left!42801 (right!43131 xs!286))) e!3157237)))

(declare-fun b!5057900 () Bool)

(declare-fun res!2153773 () Bool)

(assert (=> b!5057900 (=> (not res!2153773) (not e!3157237))))

(assert (=> b!5057900 (= res!2153773 (= (csize!31339 (left!42801 (right!43131 xs!286))) (size!39055 (list!18970 (xs!18888 (left!42801 (right!43131 xs!286)))))))))

(declare-fun b!5057901 () Bool)

(assert (=> b!5057901 (= e!3157237 (and (> (csize!31339 (left!42801 (right!43131 xs!286))) 0) (<= (csize!31339 (left!42801 (right!43131 xs!286))) 512)))))

(assert (= (and d!1628082 res!2153772) b!5057900))

(assert (= (and b!5057900 res!2153773) b!5057901))

(assert (=> d!1628082 m!6092638))

(assert (=> d!1628082 m!6092638))

(declare-fun m!6093792 () Bool)

(assert (=> d!1628082 m!6093792))

(assert (=> b!5057900 m!6092638))

(assert (=> b!5057900 m!6092638))

(assert (=> b!5057900 m!6093792))

(assert (=> b!5057326 d!1628082))

(declare-fun d!1628084 () Bool)

(declare-fun lt!2087640 () Int)

(assert (=> d!1628084 (>= lt!2087640 0)))

(declare-fun e!3157238 () Int)

(assert (=> d!1628084 (= lt!2087640 e!3157238)))

(declare-fun c!867798 () Bool)

(assert (=> d!1628084 (= c!867798 ((_ is Nil!58424) lt!2087543))))

(assert (=> d!1628084 (= (size!39055 lt!2087543) lt!2087640)))

(declare-fun b!5057902 () Bool)

(assert (=> b!5057902 (= e!3157238 0)))

(declare-fun b!5057903 () Bool)

(assert (=> b!5057903 (= e!3157238 (+ 1 (size!39055 (t!371231 lt!2087543))))))

(assert (= (and d!1628084 c!867798) b!5057902))

(assert (= (and d!1628084 (not c!867798)) b!5057903))

(declare-fun m!6093794 () Bool)

(assert (=> b!5057903 m!6093794))

(assert (=> b!5057280 d!1628084))

(assert (=> b!5057280 d!1627564))

(declare-fun d!1628086 () Bool)

(declare-fun lt!2087641 () Int)

(assert (=> d!1628086 (>= lt!2087641 0)))

(declare-fun e!3157239 () Int)

(assert (=> d!1628086 (= lt!2087641 e!3157239)))

(declare-fun c!867799 () Bool)

(assert (=> d!1628086 (= c!867799 ((_ is Nil!58424) (list!18969 (left!42801 (left!42801 ys!41)))))))

(assert (=> d!1628086 (= (size!39055 (list!18969 (left!42801 (left!42801 ys!41)))) lt!2087641)))

(declare-fun b!5057904 () Bool)

(assert (=> b!5057904 (= e!3157239 0)))

(declare-fun b!5057905 () Bool)

(assert (=> b!5057905 (= e!3157239 (+ 1 (size!39055 (t!371231 (list!18969 (left!42801 (left!42801 ys!41)))))))))

(assert (= (and d!1628086 c!867799) b!5057904))

(assert (= (and d!1628086 (not c!867799)) b!5057905))

(declare-fun m!6093796 () Bool)

(assert (=> b!5057905 m!6093796))

(assert (=> b!5057280 d!1628086))

(declare-fun d!1628088 () Bool)

(declare-fun c!867800 () Bool)

(assert (=> d!1628088 (= c!867800 ((_ is Nil!58424) lt!2087551))))

(declare-fun e!3157240 () (InoxSet T!105048))

(assert (=> d!1628088 (= (content!10411 lt!2087551) e!3157240)))

(declare-fun b!5057906 () Bool)

(assert (=> b!5057906 (= e!3157240 ((as const (Array T!105048 Bool)) false))))

(declare-fun b!5057907 () Bool)

(assert (=> b!5057907 (= e!3157240 ((_ map or) (store ((as const (Array T!105048 Bool)) false) (h!64872 lt!2087551) true) (content!10411 (t!371231 lt!2087551))))))

(assert (= (and d!1628088 c!867800) b!5057906))

(assert (= (and d!1628088 (not c!867800)) b!5057907))

(declare-fun m!6093798 () Bool)

(assert (=> b!5057907 m!6093798))

(declare-fun m!6093800 () Bool)

(assert (=> b!5057907 m!6093800))

(assert (=> d!1627654 d!1628088))

(declare-fun d!1628090 () Bool)

(declare-fun c!867801 () Bool)

(assert (=> d!1628090 (= c!867801 ((_ is Nil!58424) (list!18969 (left!42801 xs!286))))))

(declare-fun e!3157241 () (InoxSet T!105048))

(assert (=> d!1628090 (= (content!10411 (list!18969 (left!42801 xs!286))) e!3157241)))

(declare-fun b!5057908 () Bool)

(assert (=> b!5057908 (= e!3157241 ((as const (Array T!105048 Bool)) false))))

(declare-fun b!5057909 () Bool)

(assert (=> b!5057909 (= e!3157241 ((_ map or) (store ((as const (Array T!105048 Bool)) false) (h!64872 (list!18969 (left!42801 xs!286))) true) (content!10411 (t!371231 (list!18969 (left!42801 xs!286))))))))

(assert (= (and d!1628090 c!867801) b!5057908))

(assert (= (and d!1628090 (not c!867801)) b!5057909))

(declare-fun m!6093802 () Bool)

(assert (=> b!5057909 m!6093802))

(declare-fun m!6093804 () Bool)

(assert (=> b!5057909 m!6093804))

(assert (=> d!1627654 d!1628090))

(declare-fun d!1628092 () Bool)

(declare-fun c!867802 () Bool)

(assert (=> d!1628092 (= c!867802 ((_ is Nil!58424) (list!18969 (right!43131 xs!286))))))

(declare-fun e!3157242 () (InoxSet T!105048))

(assert (=> d!1628092 (= (content!10411 (list!18969 (right!43131 xs!286))) e!3157242)))

(declare-fun b!5057910 () Bool)

(assert (=> b!5057910 (= e!3157242 ((as const (Array T!105048 Bool)) false))))

(declare-fun b!5057911 () Bool)

(assert (=> b!5057911 (= e!3157242 ((_ map or) (store ((as const (Array T!105048 Bool)) false) (h!64872 (list!18969 (right!43131 xs!286))) true) (content!10411 (t!371231 (list!18969 (right!43131 xs!286))))))))

(assert (= (and d!1628092 c!867802) b!5057910))

(assert (= (and d!1628092 (not c!867802)) b!5057911))

(declare-fun m!6093806 () Bool)

(assert (=> b!5057911 m!6093806))

(declare-fun m!6093808 () Bool)

(assert (=> b!5057911 m!6093808))

(assert (=> d!1627654 d!1628092))

(declare-fun d!1628094 () Bool)

(declare-fun lt!2087642 () Int)

(assert (=> d!1628094 (= lt!2087642 (size!39055 (list!18969 (left!42801 ys!41))))))

(assert (=> d!1628094 (= lt!2087642 (ite ((_ is Empty!15554) (left!42801 ys!41)) 0 (ite ((_ is Leaf!25836) (left!42801 ys!41)) (csize!31339 (left!42801 ys!41)) (csize!31338 (left!42801 ys!41)))))))

(assert (=> d!1628094 (= (size!39057 (left!42801 ys!41)) lt!2087642)))

(declare-fun bs!1189451 () Bool)

(assert (= bs!1189451 d!1628094))

(assert (=> bs!1189451 m!6092150))

(assert (=> bs!1189451 m!6092150))

(assert (=> bs!1189451 m!6092610))

(assert (=> d!1627664 d!1628094))

(assert (=> d!1627664 d!1627886))

(declare-fun d!1628096 () Bool)

(declare-fun lt!2087643 () Int)

(assert (=> d!1628096 (>= lt!2087643 0)))

(declare-fun e!3157243 () Int)

(assert (=> d!1628096 (= lt!2087643 e!3157243)))

(declare-fun c!867803 () Bool)

(assert (=> d!1628096 (= c!867803 ((_ is Nil!58424) lt!2087548))))

(assert (=> d!1628096 (= (size!39055 lt!2087548) lt!2087643)))

(declare-fun b!5057912 () Bool)

(assert (=> b!5057912 (= e!3157243 0)))

(declare-fun b!5057913 () Bool)

(assert (=> b!5057913 (= e!3157243 (+ 1 (size!39055 (t!371231 lt!2087548))))))

(assert (= (and d!1628096 c!867803) b!5057912))

(assert (= (and d!1628096 (not c!867803)) b!5057913))

(declare-fun m!6093810 () Bool)

(assert (=> b!5057913 m!6093810))

(assert (=> b!5057302 d!1628096))

(assert (=> b!5057302 d!1628060))

(assert (=> b!5057302 d!1627566))

(assert (=> bm!352184 d!1627678))

(declare-fun d!1628098 () Bool)

(declare-fun lt!2087644 () Int)

(assert (=> d!1628098 (>= lt!2087644 0)))

(declare-fun e!3157244 () Int)

(assert (=> d!1628098 (= lt!2087644 e!3157244)))

(declare-fun c!867804 () Bool)

(assert (=> d!1628098 (= c!867804 ((_ is Nil!58424) (list!18970 (xs!18888 (right!43131 xs!286)))))))

(assert (=> d!1628098 (= (size!39055 (list!18970 (xs!18888 (right!43131 xs!286)))) lt!2087644)))

(declare-fun b!5057914 () Bool)

(assert (=> b!5057914 (= e!3157244 0)))

(declare-fun b!5057915 () Bool)

(assert (=> b!5057915 (= e!3157244 (+ 1 (size!39055 (t!371231 (list!18970 (xs!18888 (right!43131 xs!286)))))))))

(assert (= (and d!1628098 c!867804) b!5057914))

(assert (= (and d!1628098 (not c!867804)) b!5057915))

(declare-fun m!6093812 () Bool)

(assert (=> b!5057915 m!6093812))

(assert (=> b!5057204 d!1628098))

(assert (=> b!5057204 d!1627910))

(declare-fun e!3157245 () Bool)

(declare-fun b!5057919 () Bool)

(declare-fun lt!2087645 () List!58548)

(assert (=> b!5057919 (= e!3157245 (or (not (= call!352188 Nil!58424)) (= lt!2087645 (list!18969 (left!42801 (right!43131 xs!286))))))))

(declare-fun b!5057916 () Bool)

(declare-fun e!3157246 () List!58548)

(assert (=> b!5057916 (= e!3157246 call!352188)))

(declare-fun b!5057917 () Bool)

(assert (=> b!5057917 (= e!3157246 (Cons!58424 (h!64872 (list!18969 (left!42801 (right!43131 xs!286)))) (++!12773 (t!371231 (list!18969 (left!42801 (right!43131 xs!286)))) call!352188)))))

(declare-fun b!5057918 () Bool)

(declare-fun res!2153774 () Bool)

(assert (=> b!5057918 (=> (not res!2153774) (not e!3157245))))

(assert (=> b!5057918 (= res!2153774 (= (size!39055 lt!2087645) (+ (size!39055 (list!18969 (left!42801 (right!43131 xs!286)))) (size!39055 call!352188))))))

(declare-fun d!1628100 () Bool)

(assert (=> d!1628100 e!3157245))

(declare-fun res!2153775 () Bool)

(assert (=> d!1628100 (=> (not res!2153775) (not e!3157245))))

(assert (=> d!1628100 (= res!2153775 (= (content!10411 lt!2087645) ((_ map or) (content!10411 (list!18969 (left!42801 (right!43131 xs!286)))) (content!10411 call!352188))))))

(assert (=> d!1628100 (= lt!2087645 e!3157246)))

(declare-fun c!867805 () Bool)

(assert (=> d!1628100 (= c!867805 ((_ is Nil!58424) (list!18969 (left!42801 (right!43131 xs!286)))))))

(assert (=> d!1628100 (= (++!12773 (list!18969 (left!42801 (right!43131 xs!286))) call!352188) lt!2087645)))

(assert (= (and d!1628100 c!867805) b!5057916))

(assert (= (and d!1628100 (not c!867805)) b!5057917))

(assert (= (and d!1628100 res!2153775) b!5057918))

(assert (= (and b!5057918 res!2153774) b!5057919))

(declare-fun m!6093814 () Bool)

(assert (=> b!5057917 m!6093814))

(declare-fun m!6093816 () Bool)

(assert (=> b!5057918 m!6093816))

(assert (=> b!5057918 m!6092280))

(assert (=> b!5057918 m!6093640))

(declare-fun m!6093818 () Bool)

(assert (=> b!5057918 m!6093818))

(declare-fun m!6093820 () Bool)

(assert (=> d!1628100 m!6093820))

(assert (=> d!1628100 m!6092280))

(assert (=> d!1628100 m!6093644))

(declare-fun m!6093822 () Bool)

(assert (=> d!1628100 m!6093822))

(assert (=> bm!352181 d!1628100))

(declare-fun d!1628102 () Bool)

(declare-fun res!2153776 () Bool)

(declare-fun e!3157247 () Bool)

(assert (=> d!1628102 (=> (not res!2153776) (not e!3157247))))

(assert (=> d!1628102 (= res!2153776 (<= (size!39055 (list!18970 (xs!18888 (left!42801 (left!42801 ys!41))))) 512))))

(assert (=> d!1628102 (= (inv!77505 (left!42801 (left!42801 ys!41))) e!3157247)))

(declare-fun b!5057920 () Bool)

(declare-fun res!2153777 () Bool)

(assert (=> b!5057920 (=> (not res!2153777) (not e!3157247))))

(assert (=> b!5057920 (= res!2153777 (= (csize!31339 (left!42801 (left!42801 ys!41))) (size!39055 (list!18970 (xs!18888 (left!42801 (left!42801 ys!41)))))))))

(declare-fun b!5057921 () Bool)

(assert (=> b!5057921 (= e!3157247 (and (> (csize!31339 (left!42801 (left!42801 ys!41))) 0) (<= (csize!31339 (left!42801 (left!42801 ys!41))) 512)))))

(assert (= (and d!1628102 res!2153776) b!5057920))

(assert (= (and b!5057920 res!2153777) b!5057921))

(assert (=> d!1628102 m!6092464))

(assert (=> d!1628102 m!6092464))

(declare-fun m!6093824 () Bool)

(assert (=> d!1628102 m!6093824))

(assert (=> b!5057920 m!6092464))

(assert (=> b!5057920 m!6092464))

(assert (=> b!5057920 m!6093824))

(assert (=> b!5057292 d!1628102))

(declare-fun d!1628104 () Bool)

(declare-fun lt!2087646 () Int)

(assert (=> d!1628104 (>= lt!2087646 0)))

(declare-fun e!3157248 () Int)

(assert (=> d!1628104 (= lt!2087646 e!3157248)))

(declare-fun c!867806 () Bool)

(assert (=> d!1628104 (= c!867806 ((_ is Nil!58424) (list!18970 (xs!18888 (left!42801 ys!41)))))))

(assert (=> d!1628104 (= (size!39055 (list!18970 (xs!18888 (left!42801 ys!41)))) lt!2087646)))

(declare-fun b!5057922 () Bool)

(assert (=> b!5057922 (= e!3157248 0)))

(declare-fun b!5057923 () Bool)

(assert (=> b!5057923 (= e!3157248 (+ 1 (size!39055 (t!371231 (list!18970 (xs!18888 (left!42801 ys!41)))))))))

(assert (= (and d!1628104 c!867806) b!5057922))

(assert (= (and d!1628104 (not c!867806)) b!5057923))

(declare-fun m!6093826 () Bool)

(assert (=> b!5057923 m!6093826))

(assert (=> d!1627530 d!1628104))

(declare-fun d!1628106 () Bool)

(assert (=> d!1628106 (= (list!18970 (xs!18888 (left!42801 ys!41))) (innerList!15642 (xs!18888 (left!42801 ys!41))))))

(assert (=> d!1627530 d!1628106))

(declare-fun d!1628108 () Bool)

(assert (=> d!1628108 (= (inv!77501 (xs!18888 (left!42801 (right!43131 xs!286)))) (<= (size!39055 (innerList!15642 (xs!18888 (left!42801 (right!43131 xs!286))))) 2147483647))))

(declare-fun bs!1189452 () Bool)

(assert (= bs!1189452 d!1628108))

(declare-fun m!6093828 () Bool)

(assert (=> bs!1189452 m!6093828))

(assert (=> b!5057390 d!1628108))

(declare-fun d!1628110 () Bool)

(declare-fun lt!2087647 () Bool)

(assert (=> d!1628110 (= lt!2087647 (isEmpty!31612 (list!18969 (right!43131 (left!42801 xs!286)))))))

(assert (=> d!1628110 (= lt!2087647 (= (size!39057 (right!43131 (left!42801 xs!286))) 0))))

(assert (=> d!1628110 (= (isEmpty!31610 (right!43131 (left!42801 xs!286))) lt!2087647)))

(declare-fun bs!1189453 () Bool)

(assert (= bs!1189453 d!1628110))

(assert (=> bs!1189453 m!6092666))

(assert (=> bs!1189453 m!6092666))

(declare-fun m!6093830 () Bool)

(assert (=> bs!1189453 m!6093830))

(assert (=> bs!1189453 m!6092774))

(assert (=> b!5057360 d!1628110))

(assert (=> b!5057258 d!1628106))

(declare-fun d!1628112 () Bool)

(assert (=> d!1628112 (= (max!0 (height!2131 (left!42801 xs!286)) (height!2131 (right!43131 xs!286))) (ite (< (height!2131 (left!42801 xs!286)) (height!2131 (right!43131 xs!286))) (height!2131 (right!43131 xs!286)) (height!2131 (left!42801 xs!286))))))

(assert (=> b!5057202 d!1628112))

(assert (=> b!5057202 d!1627576))

(assert (=> b!5057202 d!1627578))

(declare-fun lt!2087648 () List!58548)

(declare-fun b!5057927 () Bool)

(declare-fun e!3157249 () Bool)

(assert (=> b!5057927 (= e!3157249 (or (not (= (list!18969 (right!43131 ys!41)) Nil!58424)) (= lt!2087648 call!352179)))))

(declare-fun b!5057924 () Bool)

(declare-fun e!3157250 () List!58548)

(assert (=> b!5057924 (= e!3157250 (list!18969 (right!43131 ys!41)))))

(declare-fun b!5057925 () Bool)

(assert (=> b!5057925 (= e!3157250 (Cons!58424 (h!64872 call!352179) (++!12773 (t!371231 call!352179) (list!18969 (right!43131 ys!41)))))))

(declare-fun b!5057926 () Bool)

(declare-fun res!2153778 () Bool)

(assert (=> b!5057926 (=> (not res!2153778) (not e!3157249))))

(assert (=> b!5057926 (= res!2153778 (= (size!39055 lt!2087648) (+ (size!39055 call!352179) (size!39055 (list!18969 (right!43131 ys!41))))))))

(declare-fun d!1628114 () Bool)

(assert (=> d!1628114 e!3157249))

(declare-fun res!2153779 () Bool)

(assert (=> d!1628114 (=> (not res!2153779) (not e!3157249))))

(assert (=> d!1628114 (= res!2153779 (= (content!10411 lt!2087648) ((_ map or) (content!10411 call!352179) (content!10411 (list!18969 (right!43131 ys!41))))))))

(assert (=> d!1628114 (= lt!2087648 e!3157250)))

(declare-fun c!867807 () Bool)

(assert (=> d!1628114 (= c!867807 ((_ is Nil!58424) call!352179))))

(assert (=> d!1628114 (= (++!12773 call!352179 (list!18969 (right!43131 ys!41))) lt!2087648)))

(assert (= (and d!1628114 c!867807) b!5057924))

(assert (= (and d!1628114 (not c!867807)) b!5057925))

(assert (= (and d!1628114 res!2153779) b!5057926))

(assert (= (and b!5057926 res!2153778) b!5057927))

(assert (=> b!5057925 m!6092152))

(declare-fun m!6093832 () Bool)

(assert (=> b!5057925 m!6093832))

(declare-fun m!6093834 () Bool)

(assert (=> b!5057926 m!6093834))

(declare-fun m!6093836 () Bool)

(assert (=> b!5057926 m!6093836))

(assert (=> b!5057926 m!6092152))

(assert (=> b!5057926 m!6092612))

(declare-fun m!6093838 () Bool)

(assert (=> d!1628114 m!6093838))

(declare-fun m!6093840 () Bool)

(assert (=> d!1628114 m!6093840))

(assert (=> d!1628114 m!6092152))

(assert (=> d!1628114 m!6092618))

(assert (=> bm!352174 d!1628114))

(declare-fun d!1628116 () Bool)

(assert (=> d!1628116 (= (isEmpty!31612 (list!18969 (left!42801 lt!2087515))) ((_ is Nil!58424) (list!18969 (left!42801 lt!2087515))))))

(assert (=> d!1627632 d!1628116))

(assert (=> d!1627632 d!1627596))

(declare-fun d!1628118 () Bool)

(declare-fun lt!2087649 () Int)

(assert (=> d!1628118 (= lt!2087649 (size!39055 (list!18969 (left!42801 lt!2087515))))))

(assert (=> d!1628118 (= lt!2087649 (ite ((_ is Empty!15554) (left!42801 lt!2087515)) 0 (ite ((_ is Leaf!25836) (left!42801 lt!2087515)) (csize!31339 (left!42801 lt!2087515)) (csize!31338 (left!42801 lt!2087515)))))))

(assert (=> d!1628118 (= (size!39057 (left!42801 lt!2087515)) lt!2087649)))

(declare-fun bs!1189454 () Bool)

(assert (= bs!1189454 d!1628118))

(assert (=> bs!1189454 m!6092088))

(assert (=> bs!1189454 m!6092088))

(assert (=> bs!1189454 m!6092496))

(assert (=> d!1627632 d!1628118))

(declare-fun d!1628120 () Bool)

(declare-fun lt!2087650 () Bool)

(assert (=> d!1628120 (= lt!2087650 (isEmpty!31612 (list!18969 (left!42801 (right!43131 lt!2087515)))))))

(assert (=> d!1628120 (= lt!2087650 (= (size!39057 (left!42801 (right!43131 lt!2087515))) 0))))

(assert (=> d!1628120 (= (isEmpty!31610 (left!42801 (right!43131 lt!2087515))) lt!2087650)))

(declare-fun bs!1189455 () Bool)

(assert (= bs!1189455 d!1628120))

(assert (=> bs!1189455 m!6092516))

(assert (=> bs!1189455 m!6092516))

(declare-fun m!6093842 () Bool)

(assert (=> bs!1189455 m!6093842))

(declare-fun m!6093844 () Bool)

(assert (=> bs!1189455 m!6093844))

(assert (=> b!5057235 d!1628120))

(declare-fun b!5057931 () Bool)

(declare-fun e!3157251 () Bool)

(declare-fun lt!2087651 () List!58548)

(assert (=> b!5057931 (= e!3157251 (or (not (= (list!18969 (right!43131 (right!43131 (left!42801 ys!41)))) Nil!58424)) (= lt!2087651 (list!18969 (left!42801 (right!43131 (left!42801 ys!41)))))))))

(declare-fun b!5057928 () Bool)

(declare-fun e!3157252 () List!58548)

(assert (=> b!5057928 (= e!3157252 (list!18969 (right!43131 (right!43131 (left!42801 ys!41)))))))

(declare-fun b!5057929 () Bool)

(assert (=> b!5057929 (= e!3157252 (Cons!58424 (h!64872 (list!18969 (left!42801 (right!43131 (left!42801 ys!41))))) (++!12773 (t!371231 (list!18969 (left!42801 (right!43131 (left!42801 ys!41))))) (list!18969 (right!43131 (right!43131 (left!42801 ys!41)))))))))

(declare-fun b!5057930 () Bool)

(declare-fun res!2153780 () Bool)

(assert (=> b!5057930 (=> (not res!2153780) (not e!3157251))))

(assert (=> b!5057930 (= res!2153780 (= (size!39055 lt!2087651) (+ (size!39055 (list!18969 (left!42801 (right!43131 (left!42801 ys!41))))) (size!39055 (list!18969 (right!43131 (right!43131 (left!42801 ys!41))))))))))

(declare-fun d!1628122 () Bool)

(assert (=> d!1628122 e!3157251))

(declare-fun res!2153781 () Bool)

(assert (=> d!1628122 (=> (not res!2153781) (not e!3157251))))

(assert (=> d!1628122 (= res!2153781 (= (content!10411 lt!2087651) ((_ map or) (content!10411 (list!18969 (left!42801 (right!43131 (left!42801 ys!41))))) (content!10411 (list!18969 (right!43131 (right!43131 (left!42801 ys!41))))))))))

(assert (=> d!1628122 (= lt!2087651 e!3157252)))

(declare-fun c!867808 () Bool)

(assert (=> d!1628122 (= c!867808 ((_ is Nil!58424) (list!18969 (left!42801 (right!43131 (left!42801 ys!41))))))))

(assert (=> d!1628122 (= (++!12773 (list!18969 (left!42801 (right!43131 (left!42801 ys!41)))) (list!18969 (right!43131 (right!43131 (left!42801 ys!41))))) lt!2087651)))

(assert (= (and d!1628122 c!867808) b!5057928))

(assert (= (and d!1628122 (not c!867808)) b!5057929))

(assert (= (and d!1628122 res!2153781) b!5057930))

(assert (= (and b!5057930 res!2153780) b!5057931))

(assert (=> b!5057929 m!6092476))

(declare-fun m!6093846 () Bool)

(assert (=> b!5057929 m!6093846))

(declare-fun m!6093848 () Bool)

(assert (=> b!5057930 m!6093848))

(assert (=> b!5057930 m!6092474))

(declare-fun m!6093850 () Bool)

(assert (=> b!5057930 m!6093850))

(assert (=> b!5057930 m!6092476))

(declare-fun m!6093852 () Bool)

(assert (=> b!5057930 m!6093852))

(declare-fun m!6093854 () Bool)

(assert (=> d!1628122 m!6093854))

(assert (=> d!1628122 m!6092474))

(declare-fun m!6093856 () Bool)

(assert (=> d!1628122 m!6093856))

(assert (=> d!1628122 m!6092476))

(declare-fun m!6093858 () Bool)

(assert (=> d!1628122 m!6093858))

(assert (=> b!5057232 d!1628122))

(declare-fun b!5057934 () Bool)

(declare-fun e!3157254 () List!58548)

(assert (=> b!5057934 (= e!3157254 (list!18970 (xs!18888 (left!42801 (right!43131 (left!42801 ys!41))))))))

(declare-fun b!5057933 () Bool)

(declare-fun e!3157253 () List!58548)

(assert (=> b!5057933 (= e!3157253 e!3157254)))

(declare-fun c!867810 () Bool)

(assert (=> b!5057933 (= c!867810 ((_ is Leaf!25836) (left!42801 (right!43131 (left!42801 ys!41)))))))

(declare-fun d!1628124 () Bool)

(declare-fun c!867809 () Bool)

(assert (=> d!1628124 (= c!867809 ((_ is Empty!15554) (left!42801 (right!43131 (left!42801 ys!41)))))))

(assert (=> d!1628124 (= (list!18969 (left!42801 (right!43131 (left!42801 ys!41)))) e!3157253)))

(declare-fun b!5057932 () Bool)

(assert (=> b!5057932 (= e!3157253 Nil!58424)))

(declare-fun b!5057935 () Bool)

(assert (=> b!5057935 (= e!3157254 (++!12773 (list!18969 (left!42801 (left!42801 (right!43131 (left!42801 ys!41))))) (list!18969 (right!43131 (left!42801 (right!43131 (left!42801 ys!41)))))))))

(assert (= (and d!1628124 c!867809) b!5057932))

(assert (= (and d!1628124 (not c!867809)) b!5057933))

(assert (= (and b!5057933 c!867810) b!5057934))

(assert (= (and b!5057933 (not c!867810)) b!5057935))

(declare-fun m!6093860 () Bool)

(assert (=> b!5057934 m!6093860))

(declare-fun m!6093862 () Bool)

(assert (=> b!5057935 m!6093862))

(declare-fun m!6093864 () Bool)

(assert (=> b!5057935 m!6093864))

(assert (=> b!5057935 m!6093862))

(assert (=> b!5057935 m!6093864))

(declare-fun m!6093866 () Bool)

(assert (=> b!5057935 m!6093866))

(assert (=> b!5057232 d!1628124))

(declare-fun b!5057938 () Bool)

(declare-fun e!3157256 () List!58548)

(assert (=> b!5057938 (= e!3157256 (list!18970 (xs!18888 (right!43131 (right!43131 (left!42801 ys!41))))))))

(declare-fun b!5057937 () Bool)

(declare-fun e!3157255 () List!58548)

(assert (=> b!5057937 (= e!3157255 e!3157256)))

(declare-fun c!867812 () Bool)

(assert (=> b!5057937 (= c!867812 ((_ is Leaf!25836) (right!43131 (right!43131 (left!42801 ys!41)))))))

(declare-fun d!1628126 () Bool)

(declare-fun c!867811 () Bool)

(assert (=> d!1628126 (= c!867811 ((_ is Empty!15554) (right!43131 (right!43131 (left!42801 ys!41)))))))

(assert (=> d!1628126 (= (list!18969 (right!43131 (right!43131 (left!42801 ys!41)))) e!3157255)))

(declare-fun b!5057936 () Bool)

(assert (=> b!5057936 (= e!3157255 Nil!58424)))

(declare-fun b!5057939 () Bool)

(assert (=> b!5057939 (= e!3157256 (++!12773 (list!18969 (left!42801 (right!43131 (right!43131 (left!42801 ys!41))))) (list!18969 (right!43131 (right!43131 (right!43131 (left!42801 ys!41)))))))))

(assert (= (and d!1628126 c!867811) b!5057936))

(assert (= (and d!1628126 (not c!867811)) b!5057937))

(assert (= (and b!5057937 c!867812) b!5057938))

(assert (= (and b!5057937 (not c!867812)) b!5057939))

(declare-fun m!6093868 () Bool)

(assert (=> b!5057938 m!6093868))

(declare-fun m!6093870 () Bool)

(assert (=> b!5057939 m!6093870))

(declare-fun m!6093872 () Bool)

(assert (=> b!5057939 m!6093872))

(assert (=> b!5057939 m!6093870))

(assert (=> b!5057939 m!6093872))

(declare-fun m!6093874 () Bool)

(assert (=> b!5057939 m!6093874))

(assert (=> b!5057232 d!1628126))

(declare-fun d!1628128 () Bool)

(declare-fun lt!2087652 () Bool)

(assert (=> d!1628128 (= lt!2087652 (isEmpty!31612 (list!18969 (right!43131 (left!42801 ys!41)))))))

(assert (=> d!1628128 (= lt!2087652 (= (size!39057 (right!43131 (left!42801 ys!41))) 0))))

(assert (=> d!1628128 (= (isEmpty!31610 (right!43131 (left!42801 ys!41))) lt!2087652)))

(declare-fun bs!1189456 () Bool)

(assert (= bs!1189456 d!1628128))

(assert (=> bs!1189456 m!6092266))

(assert (=> bs!1189456 m!6092266))

(declare-fun m!6093876 () Bool)

(assert (=> bs!1189456 m!6093876))

(assert (=> bs!1189456 m!6092414))

(assert (=> b!5057351 d!1628128))

(declare-fun d!1628130 () Bool)

(declare-fun c!867813 () Bool)

(assert (=> d!1628130 (= c!867813 ((_ is Node!15554) (left!42801 (right!43131 (left!42801 ys!41)))))))

(declare-fun e!3157257 () Bool)

(assert (=> d!1628130 (= (inv!77500 (left!42801 (right!43131 (left!42801 ys!41)))) e!3157257)))

(declare-fun b!5057940 () Bool)

(assert (=> b!5057940 (= e!3157257 (inv!77504 (left!42801 (right!43131 (left!42801 ys!41)))))))

(declare-fun b!5057941 () Bool)

(declare-fun e!3157258 () Bool)

(assert (=> b!5057941 (= e!3157257 e!3157258)))

(declare-fun res!2153782 () Bool)

(assert (=> b!5057941 (= res!2153782 (not ((_ is Leaf!25836) (left!42801 (right!43131 (left!42801 ys!41))))))))

(assert (=> b!5057941 (=> res!2153782 e!3157258)))

(declare-fun b!5057942 () Bool)

(assert (=> b!5057942 (= e!3157258 (inv!77505 (left!42801 (right!43131 (left!42801 ys!41)))))))

(assert (= (and d!1628130 c!867813) b!5057940))

(assert (= (and d!1628130 (not c!867813)) b!5057941))

(assert (= (and b!5057941 (not res!2153782)) b!5057942))

(declare-fun m!6093878 () Bool)

(assert (=> b!5057940 m!6093878))

(declare-fun m!6093880 () Bool)

(assert (=> b!5057942 m!6093880))

(assert (=> b!5057406 d!1628130))

(declare-fun d!1628132 () Bool)

(declare-fun c!867814 () Bool)

(assert (=> d!1628132 (= c!867814 ((_ is Node!15554) (right!43131 (right!43131 (left!42801 ys!41)))))))

(declare-fun e!3157259 () Bool)

(assert (=> d!1628132 (= (inv!77500 (right!43131 (right!43131 (left!42801 ys!41)))) e!3157259)))

(declare-fun b!5057943 () Bool)

(assert (=> b!5057943 (= e!3157259 (inv!77504 (right!43131 (right!43131 (left!42801 ys!41)))))))

(declare-fun b!5057944 () Bool)

(declare-fun e!3157260 () Bool)

(assert (=> b!5057944 (= e!3157259 e!3157260)))

(declare-fun res!2153783 () Bool)

(assert (=> b!5057944 (= res!2153783 (not ((_ is Leaf!25836) (right!43131 (right!43131 (left!42801 ys!41))))))))

(assert (=> b!5057944 (=> res!2153783 e!3157260)))

(declare-fun b!5057945 () Bool)

(assert (=> b!5057945 (= e!3157260 (inv!77505 (right!43131 (right!43131 (left!42801 ys!41)))))))

(assert (= (and d!1628132 c!867814) b!5057943))

(assert (= (and d!1628132 (not c!867814)) b!5057944))

(assert (= (and b!5057944 (not res!2153783)) b!5057945))

(declare-fun m!6093882 () Bool)

(assert (=> b!5057943 m!6093882))

(declare-fun m!6093884 () Bool)

(assert (=> b!5057945 m!6093884))

(assert (=> b!5057406 d!1628132))

(declare-fun d!1628134 () Bool)

(declare-fun res!2153784 () Bool)

(declare-fun e!3157261 () Bool)

(assert (=> d!1628134 (=> (not res!2153784) (not e!3157261))))

(assert (=> d!1628134 (= res!2153784 (= (csize!31338 (left!42801 (left!42801 xs!286))) (+ (size!39057 (left!42801 (left!42801 (left!42801 xs!286)))) (size!39057 (right!43131 (left!42801 (left!42801 xs!286)))))))))

(assert (=> d!1628134 (= (inv!77504 (left!42801 (left!42801 xs!286))) e!3157261)))

(declare-fun b!5057946 () Bool)

(declare-fun res!2153785 () Bool)

(assert (=> b!5057946 (=> (not res!2153785) (not e!3157261))))

(assert (=> b!5057946 (= res!2153785 (and (not (= (left!42801 (left!42801 (left!42801 xs!286))) Empty!15554)) (not (= (right!43131 (left!42801 (left!42801 xs!286))) Empty!15554))))))

(declare-fun b!5057947 () Bool)

(declare-fun res!2153786 () Bool)

(assert (=> b!5057947 (=> (not res!2153786) (not e!3157261))))

(assert (=> b!5057947 (= res!2153786 (= (cheight!15765 (left!42801 (left!42801 xs!286))) (+ (max!0 (height!2131 (left!42801 (left!42801 (left!42801 xs!286)))) (height!2131 (right!43131 (left!42801 (left!42801 xs!286))))) 1)))))

(declare-fun b!5057948 () Bool)

(assert (=> b!5057948 (= e!3157261 (<= 0 (cheight!15765 (left!42801 (left!42801 xs!286)))))))

(assert (= (and d!1628134 res!2153784) b!5057946))

(assert (= (and b!5057946 res!2153785) b!5057947))

(assert (= (and b!5057947 res!2153786) b!5057948))

(declare-fun m!6093886 () Bool)

(assert (=> d!1628134 m!6093886))

(declare-fun m!6093888 () Bool)

(assert (=> d!1628134 m!6093888))

(assert (=> b!5057947 m!6093736))

(assert (=> b!5057947 m!6093738))

(assert (=> b!5057947 m!6093736))

(assert (=> b!5057947 m!6093738))

(declare-fun m!6093890 () Bool)

(assert (=> b!5057947 m!6093890))

(assert (=> b!5057170 d!1628134))

(declare-fun d!1628136 () Bool)

(declare-fun res!2153787 () Bool)

(declare-fun e!3157262 () Bool)

(assert (=> d!1628136 (=> (not res!2153787) (not e!3157262))))

(assert (=> d!1628136 (= res!2153787 (<= (size!39055 (list!18970 (xs!18888 (right!43131 (left!42801 ys!41))))) 512))))

(assert (=> d!1628136 (= (inv!77505 (right!43131 (left!42801 ys!41))) e!3157262)))

(declare-fun b!5057949 () Bool)

(declare-fun res!2153788 () Bool)

(assert (=> b!5057949 (=> (not res!2153788) (not e!3157262))))

(assert (=> b!5057949 (= res!2153788 (= (csize!31339 (right!43131 (left!42801 ys!41))) (size!39055 (list!18970 (xs!18888 (right!43131 (left!42801 ys!41)))))))))

(declare-fun b!5057950 () Bool)

(assert (=> b!5057950 (= e!3157262 (and (> (csize!31339 (right!43131 (left!42801 ys!41))) 0) (<= (csize!31339 (right!43131 (left!42801 ys!41))) 512)))))

(assert (= (and d!1628136 res!2153787) b!5057949))

(assert (= (and b!5057949 res!2153788) b!5057950))

(assert (=> d!1628136 m!6092472))

(assert (=> d!1628136 m!6092472))

(declare-fun m!6093892 () Bool)

(assert (=> d!1628136 m!6093892))

(assert (=> b!5057949 m!6092472))

(assert (=> b!5057949 m!6092472))

(assert (=> b!5057949 m!6093892))

(assert (=> b!5057295 d!1628136))

(declare-fun d!1628138 () Bool)

(declare-fun lt!2087653 () Int)

(assert (=> d!1628138 (>= lt!2087653 0)))

(declare-fun e!3157263 () Int)

(assert (=> d!1628138 (= lt!2087653 e!3157263)))

(declare-fun c!867815 () Bool)

(assert (=> d!1628138 (= c!867815 ((_ is Nil!58424) (list!18970 (xs!18888 ys!41))))))

(assert (=> d!1628138 (= (size!39055 (list!18970 (xs!18888 ys!41))) lt!2087653)))

(declare-fun b!5057951 () Bool)

(assert (=> b!5057951 (= e!3157263 0)))

(declare-fun b!5057952 () Bool)

(assert (=> b!5057952 (= e!3157263 (+ 1 (size!39055 (t!371231 (list!18970 (xs!18888 ys!41))))))))

(assert (= (and d!1628138 c!867815) b!5057951))

(assert (= (and d!1628138 (not c!867815)) b!5057952))

(declare-fun m!6093894 () Bool)

(assert (=> b!5057952 m!6093894))

(assert (=> d!1627660 d!1628138))

(assert (=> d!1627660 d!1627560))

(assert (=> b!5057190 d!1628020))

(assert (=> b!5057190 d!1628022))

(declare-fun d!1628140 () Bool)

(declare-fun lt!2087654 () Int)

(assert (=> d!1628140 (>= lt!2087654 0)))

(declare-fun e!3157264 () Int)

(assert (=> d!1628140 (= lt!2087654 e!3157264)))

(declare-fun c!867816 () Bool)

(assert (=> d!1628140 (= c!867816 ((_ is Nil!58424) lt!2087551))))

(assert (=> d!1628140 (= (size!39055 lt!2087551) lt!2087654)))

(declare-fun b!5057953 () Bool)

(assert (=> b!5057953 (= e!3157264 0)))

(declare-fun b!5057954 () Bool)

(assert (=> b!5057954 (= e!3157264 (+ 1 (size!39055 (t!371231 lt!2087551))))))

(assert (= (and d!1628140 c!867816) b!5057953))

(assert (= (and d!1628140 (not c!867816)) b!5057954))

(declare-fun m!6093896 () Bool)

(assert (=> b!5057954 m!6093896))

(assert (=> b!5057332 d!1628140))

(declare-fun d!1628142 () Bool)

(declare-fun lt!2087655 () Int)

(assert (=> d!1628142 (>= lt!2087655 0)))

(declare-fun e!3157265 () Int)

(assert (=> d!1628142 (= lt!2087655 e!3157265)))

(declare-fun c!867817 () Bool)

(assert (=> d!1628142 (= c!867817 ((_ is Nil!58424) (list!18969 (left!42801 xs!286))))))

(assert (=> d!1628142 (= (size!39055 (list!18969 (left!42801 xs!286))) lt!2087655)))

(declare-fun b!5057955 () Bool)

(assert (=> b!5057955 (= e!3157265 0)))

(declare-fun b!5057956 () Bool)

(assert (=> b!5057956 (= e!3157265 (+ 1 (size!39055 (t!371231 (list!18969 (left!42801 xs!286))))))))

(assert (= (and d!1628142 c!867817) b!5057955))

(assert (= (and d!1628142 (not c!867817)) b!5057956))

(declare-fun m!6093898 () Bool)

(assert (=> b!5057956 m!6093898))

(assert (=> b!5057332 d!1628142))

(declare-fun d!1628144 () Bool)

(declare-fun lt!2087656 () Int)

(assert (=> d!1628144 (>= lt!2087656 0)))

(declare-fun e!3157266 () Int)

(assert (=> d!1628144 (= lt!2087656 e!3157266)))

(declare-fun c!867818 () Bool)

(assert (=> d!1628144 (= c!867818 ((_ is Nil!58424) (list!18969 (right!43131 xs!286))))))

(assert (=> d!1628144 (= (size!39055 (list!18969 (right!43131 xs!286))) lt!2087656)))

(declare-fun b!5057957 () Bool)

(assert (=> b!5057957 (= e!3157266 0)))

(declare-fun b!5057958 () Bool)

(assert (=> b!5057958 (= e!3157266 (+ 1 (size!39055 (t!371231 (list!18969 (right!43131 xs!286))))))))

(assert (= (and d!1628144 c!867818) b!5057957))

(assert (= (and d!1628144 (not c!867818)) b!5057958))

(declare-fun m!6093900 () Bool)

(assert (=> b!5057958 m!6093900))

(assert (=> b!5057332 d!1628144))

(assert (=> bm!352172 d!1628028))

(declare-fun lt!2087657 () List!58548)

(declare-fun e!3157267 () Bool)

(declare-fun b!5057962 () Bool)

(assert (=> b!5057962 (= e!3157267 (or (not (= (list!18969 ys!41) Nil!58424)) (= lt!2087657 (t!371231 (list!18969 (right!43131 (right!43131 xs!286)))))))))

(declare-fun b!5057959 () Bool)

(declare-fun e!3157268 () List!58548)

(assert (=> b!5057959 (= e!3157268 (list!18969 ys!41))))

(declare-fun b!5057960 () Bool)

(assert (=> b!5057960 (= e!3157268 (Cons!58424 (h!64872 (t!371231 (list!18969 (right!43131 (right!43131 xs!286))))) (++!12773 (t!371231 (t!371231 (list!18969 (right!43131 (right!43131 xs!286))))) (list!18969 ys!41))))))

(declare-fun b!5057961 () Bool)

(declare-fun res!2153789 () Bool)

(assert (=> b!5057961 (=> (not res!2153789) (not e!3157267))))

(assert (=> b!5057961 (= res!2153789 (= (size!39055 lt!2087657) (+ (size!39055 (t!371231 (list!18969 (right!43131 (right!43131 xs!286))))) (size!39055 (list!18969 ys!41)))))))

(declare-fun d!1628146 () Bool)

(assert (=> d!1628146 e!3157267))

(declare-fun res!2153790 () Bool)

(assert (=> d!1628146 (=> (not res!2153790) (not e!3157267))))

(assert (=> d!1628146 (= res!2153790 (= (content!10411 lt!2087657) ((_ map or) (content!10411 (t!371231 (list!18969 (right!43131 (right!43131 xs!286))))) (content!10411 (list!18969 ys!41)))))))

(assert (=> d!1628146 (= lt!2087657 e!3157268)))

(declare-fun c!867819 () Bool)

(assert (=> d!1628146 (= c!867819 ((_ is Nil!58424) (t!371231 (list!18969 (right!43131 (right!43131 xs!286))))))))

(assert (=> d!1628146 (= (++!12773 (t!371231 (list!18969 (right!43131 (right!43131 xs!286)))) (list!18969 ys!41)) lt!2087657)))

(assert (= (and d!1628146 c!867819) b!5057959))

(assert (= (and d!1628146 (not c!867819)) b!5057960))

(assert (= (and d!1628146 res!2153790) b!5057961))

(assert (= (and b!5057961 res!2153789) b!5057962))

(assert (=> b!5057960 m!6092020))

(declare-fun m!6093902 () Bool)

(assert (=> b!5057960 m!6093902))

(declare-fun m!6093904 () Bool)

(assert (=> b!5057961 m!6093904))

(assert (=> b!5057961 m!6093712))

(assert (=> b!5057961 m!6092020))

(assert (=> b!5057961 m!6092132))

(declare-fun m!6093906 () Bool)

(assert (=> d!1628146 m!6093906))

(assert (=> d!1628146 m!6093622))

(assert (=> d!1628146 m!6092020))

(assert (=> d!1628146 m!6092138))

(assert (=> b!5057374 d!1628146))

(declare-fun d!1628148 () Bool)

(declare-fun lt!2087658 () Bool)

(assert (=> d!1628148 (= lt!2087658 (isEmpty!31612 (list!18969 (right!43131 (left!42801 lt!2087515)))))))

(assert (=> d!1628148 (= lt!2087658 (= (size!39057 (right!43131 (left!42801 lt!2087515))) 0))))

(assert (=> d!1628148 (= (isEmpty!31610 (right!43131 (left!42801 lt!2087515))) lt!2087658)))

(declare-fun bs!1189457 () Bool)

(assert (= bs!1189457 d!1628148))

(assert (=> bs!1189457 m!6092510))

(assert (=> bs!1189457 m!6092510))

(declare-fun m!6093908 () Bool)

(assert (=> bs!1189457 m!6093908))

(declare-fun m!6093910 () Bool)

(assert (=> bs!1189457 m!6093910))

(assert (=> b!5057337 d!1628148))

(assert (=> b!5057346 d!1628138))

(assert (=> b!5057346 d!1627560))

(declare-fun e!3157269 () Bool)

(declare-fun lt!2087659 () List!58548)

(declare-fun b!5057966 () Bool)

(assert (=> b!5057966 (= e!3157269 (or (not (= (list!18969 ys!41) Nil!58424)) (= lt!2087659 (list!18969 (right!43131 xs!286)))))))

(declare-fun b!5057963 () Bool)

(declare-fun e!3157270 () List!58548)

(assert (=> b!5057963 (= e!3157270 (list!18969 ys!41))))

(declare-fun b!5057964 () Bool)

(assert (=> b!5057964 (= e!3157270 (Cons!58424 (h!64872 (list!18969 (right!43131 xs!286))) (++!12773 (t!371231 (list!18969 (right!43131 xs!286))) (list!18969 ys!41))))))

(declare-fun b!5057965 () Bool)

(declare-fun res!2153791 () Bool)

(assert (=> b!5057965 (=> (not res!2153791) (not e!3157269))))

(assert (=> b!5057965 (= res!2153791 (= (size!39055 lt!2087659) (+ (size!39055 (list!18969 (right!43131 xs!286))) (size!39055 (list!18969 ys!41)))))))

(declare-fun d!1628150 () Bool)

(assert (=> d!1628150 e!3157269))

(declare-fun res!2153792 () Bool)

(assert (=> d!1628150 (=> (not res!2153792) (not e!3157269))))

(assert (=> d!1628150 (= res!2153792 (= (content!10411 lt!2087659) ((_ map or) (content!10411 (list!18969 (right!43131 xs!286))) (content!10411 (list!18969 ys!41)))))))

(assert (=> d!1628150 (= lt!2087659 e!3157270)))

(declare-fun c!867820 () Bool)

(assert (=> d!1628150 (= c!867820 ((_ is Nil!58424) (list!18969 (right!43131 xs!286))))))

(assert (=> d!1628150 (= (++!12773 (list!18969 (right!43131 xs!286)) (list!18969 ys!41)) lt!2087659)))

(assert (= (and d!1628150 c!867820) b!5057963))

(assert (= (and d!1628150 (not c!867820)) b!5057964))

(assert (= (and d!1628150 res!2153792) b!5057965))

(assert (= (and b!5057965 res!2153791) b!5057966))

(assert (=> b!5057964 m!6092020))

(declare-fun m!6093912 () Bool)

(assert (=> b!5057964 m!6093912))

(declare-fun m!6093914 () Bool)

(assert (=> b!5057965 m!6093914))

(assert (=> b!5057965 m!6092144))

(assert (=> b!5057965 m!6092684))

(assert (=> b!5057965 m!6092020))

(assert (=> b!5057965 m!6092132))

(declare-fun m!6093916 () Bool)

(assert (=> d!1628150 m!6093916))

(assert (=> d!1628150 m!6092144))

(assert (=> d!1628150 m!6092690))

(assert (=> d!1628150 m!6092020))

(assert (=> d!1628150 m!6092138))

(assert (=> bm!352188 d!1628150))

(declare-fun d!1628152 () Bool)

(declare-fun lt!2087660 () Bool)

(assert (=> d!1628152 (= lt!2087660 (isEmpty!31612 (list!18969 (right!43131 (right!43131 ys!41)))))))

(assert (=> d!1628152 (= lt!2087660 (= (size!39057 (right!43131 (right!43131 ys!41))) 0))))

(assert (=> d!1628152 (= (isEmpty!31610 (right!43131 (right!43131 ys!41))) lt!2087660)))

(declare-fun bs!1189458 () Bool)

(assert (= bs!1189458 d!1628152))

(assert (=> bs!1189458 m!6092542))

(assert (=> bs!1189458 m!6092542))

(declare-fun m!6093918 () Bool)

(assert (=> bs!1189458 m!6093918))

(assert (=> bs!1189458 m!6092524))

(assert (=> b!5057273 d!1628152))

(declare-fun bm!352245 () Bool)

(declare-fun call!352253 () List!58548)

(declare-fun call!352252 () List!58548)

(assert (=> bm!352245 (= call!352253 (++!12773 (t!371231 (list!18969 (left!42801 xs!286))) call!352252))))

(declare-fun call!352251 () List!58548)

(declare-fun bm!352246 () Bool)

(declare-fun call!352250 () List!58548)

(assert (=> bm!352246 (= call!352250 (++!12773 call!352251 (++!12773 (list!18969 (right!43131 (right!43131 xs!286))) (list!18969 ys!41))))))

(declare-fun d!1628154 () Bool)

(declare-fun e!3157271 () Bool)

(assert (=> d!1628154 e!3157271))

(declare-fun c!867821 () Bool)

(assert (=> d!1628154 (= c!867821 ((_ is Nil!58424) (t!371231 (list!18969 (left!42801 xs!286)))))))

(assert (=> d!1628154 (= (appendAssoc!296 (t!371231 (list!18969 (left!42801 xs!286))) (list!18969 (left!42801 (right!43131 xs!286))) (++!12773 (list!18969 (right!43131 (right!43131 xs!286))) (list!18969 ys!41))) true)))

(declare-fun b!5057967 () Bool)

(assert (=> b!5057967 (= e!3157271 (= call!352250 call!352253))))

(declare-fun lt!2087661 () Bool)

(assert (=> b!5057967 (= lt!2087661 (appendAssoc!296 (t!371231 (t!371231 (list!18969 (left!42801 xs!286)))) (list!18969 (left!42801 (right!43131 xs!286))) (++!12773 (list!18969 (right!43131 (right!43131 xs!286))) (list!18969 ys!41))))))

(declare-fun bm!352247 () Bool)

(assert (=> bm!352247 (= call!352251 (++!12773 (t!371231 (list!18969 (left!42801 xs!286))) (list!18969 (left!42801 (right!43131 xs!286)))))))

(declare-fun bm!352248 () Bool)

(assert (=> bm!352248 (= call!352252 (++!12773 (list!18969 (left!42801 (right!43131 xs!286))) (++!12773 (list!18969 (right!43131 (right!43131 xs!286))) (list!18969 ys!41))))))

(declare-fun b!5057968 () Bool)

(assert (=> b!5057968 (= e!3157271 (= call!352250 call!352253))))

(assert (= (and d!1628154 c!867821) b!5057968))

(assert (= (and d!1628154 (not c!867821)) b!5057967))

(assert (= (or b!5057968 b!5057967) bm!352247))

(assert (= (or b!5057968 b!5057967) bm!352248))

(assert (= (or b!5057968 b!5057967) bm!352245))

(assert (= (or b!5057968 b!5057967) bm!352246))

(assert (=> bm!352247 m!6092280))

(assert (=> bm!352247 m!6093636))

(assert (=> bm!352246 m!6092278))

(declare-fun m!6093920 () Bool)

(assert (=> bm!352246 m!6093920))

(assert (=> b!5057967 m!6092280))

(assert (=> b!5057967 m!6092278))

(declare-fun m!6093922 () Bool)

(assert (=> b!5057967 m!6093922))

(declare-fun m!6093924 () Bool)

(assert (=> bm!352245 m!6093924))

(assert (=> bm!352248 m!6092280))

(assert (=> bm!352248 m!6092278))

(assert (=> bm!352248 m!6092752))

(assert (=> b!5057369 d!1628154))

(assert (=> d!1627554 d!1628098))

(assert (=> d!1627554 d!1627910))

(declare-fun b!5057972 () Bool)

(declare-fun lt!2087662 () List!58548)

(declare-fun e!3157272 () Bool)

(assert (=> b!5057972 (= e!3157272 (or (not (= (list!18969 (right!43131 ys!41)) Nil!58424)) (= lt!2087662 call!352183)))))

(declare-fun b!5057969 () Bool)

(declare-fun e!3157273 () List!58548)

(assert (=> b!5057969 (= e!3157273 (list!18969 (right!43131 ys!41)))))

(declare-fun b!5057970 () Bool)

(assert (=> b!5057970 (= e!3157273 (Cons!58424 (h!64872 call!352183) (++!12773 (t!371231 call!352183) (list!18969 (right!43131 ys!41)))))))

(declare-fun b!5057971 () Bool)

(declare-fun res!2153793 () Bool)

(assert (=> b!5057971 (=> (not res!2153793) (not e!3157272))))

(assert (=> b!5057971 (= res!2153793 (= (size!39055 lt!2087662) (+ (size!39055 call!352183) (size!39055 (list!18969 (right!43131 ys!41))))))))

(declare-fun d!1628156 () Bool)

(assert (=> d!1628156 e!3157272))

(declare-fun res!2153794 () Bool)

(assert (=> d!1628156 (=> (not res!2153794) (not e!3157272))))

(assert (=> d!1628156 (= res!2153794 (= (content!10411 lt!2087662) ((_ map or) (content!10411 call!352183) (content!10411 (list!18969 (right!43131 ys!41))))))))

(assert (=> d!1628156 (= lt!2087662 e!3157273)))

(declare-fun c!867822 () Bool)

(assert (=> d!1628156 (= c!867822 ((_ is Nil!58424) call!352183))))

(assert (=> d!1628156 (= (++!12773 call!352183 (list!18969 (right!43131 ys!41))) lt!2087662)))

(assert (= (and d!1628156 c!867822) b!5057969))

(assert (= (and d!1628156 (not c!867822)) b!5057970))

(assert (= (and d!1628156 res!2153794) b!5057971))

(assert (= (and b!5057971 res!2153793) b!5057972))

(assert (=> b!5057970 m!6092152))

(declare-fun m!6093926 () Bool)

(assert (=> b!5057970 m!6093926))

(declare-fun m!6093928 () Bool)

(assert (=> b!5057971 m!6093928))

(declare-fun m!6093930 () Bool)

(assert (=> b!5057971 m!6093930))

(assert (=> b!5057971 m!6092152))

(assert (=> b!5057971 m!6092612))

(declare-fun m!6093932 () Bool)

(assert (=> d!1628156 m!6093932))

(declare-fun m!6093934 () Bool)

(assert (=> d!1628156 m!6093934))

(assert (=> d!1628156 m!6092152))

(assert (=> d!1628156 m!6092618))

(assert (=> bm!352178 d!1628156))

(declare-fun d!1628158 () Bool)

(assert (=> d!1628158 (= (inv!77501 (xs!18888 (right!43131 (right!43131 ys!41)))) (<= (size!39055 (innerList!15642 (xs!18888 (right!43131 (right!43131 ys!41))))) 2147483647))))

(declare-fun bs!1189459 () Bool)

(assert (= bs!1189459 d!1628158))

(declare-fun m!6093936 () Bool)

(assert (=> bs!1189459 m!6093936))

(assert (=> b!5057421 d!1628158))

(declare-fun b!5057976 () Bool)

(declare-fun lt!2087663 () List!58548)

(declare-fun e!3157274 () Bool)

(assert (=> b!5057976 (= e!3157274 (or (not (= call!352192 Nil!58424)) (= lt!2087663 (list!18969 (left!42801 xs!286)))))))

(declare-fun b!5057973 () Bool)

(declare-fun e!3157275 () List!58548)

(assert (=> b!5057973 (= e!3157275 call!352192)))

(declare-fun b!5057974 () Bool)

(assert (=> b!5057974 (= e!3157275 (Cons!58424 (h!64872 (list!18969 (left!42801 xs!286))) (++!12773 (t!371231 (list!18969 (left!42801 xs!286))) call!352192)))))

(declare-fun b!5057975 () Bool)

(declare-fun res!2153795 () Bool)

(assert (=> b!5057975 (=> (not res!2153795) (not e!3157274))))

(assert (=> b!5057975 (= res!2153795 (= (size!39055 lt!2087663) (+ (size!39055 (list!18969 (left!42801 xs!286))) (size!39055 call!352192))))))

(declare-fun d!1628160 () Bool)

(assert (=> d!1628160 e!3157274))

(declare-fun res!2153796 () Bool)

(assert (=> d!1628160 (=> (not res!2153796) (not e!3157274))))

(assert (=> d!1628160 (= res!2153796 (= (content!10411 lt!2087663) ((_ map or) (content!10411 (list!18969 (left!42801 xs!286))) (content!10411 call!352192))))))

(assert (=> d!1628160 (= lt!2087663 e!3157275)))

(declare-fun c!867823 () Bool)

(assert (=> d!1628160 (= c!867823 ((_ is Nil!58424) (list!18969 (left!42801 xs!286))))))

(assert (=> d!1628160 (= (++!12773 (list!18969 (left!42801 xs!286)) call!352192) lt!2087663)))

(assert (= (and d!1628160 c!867823) b!5057973))

(assert (= (and d!1628160 (not c!867823)) b!5057974))

(assert (= (and d!1628160 res!2153796) b!5057975))

(assert (= (and b!5057975 res!2153795) b!5057976))

(declare-fun m!6093938 () Bool)

(assert (=> b!5057974 m!6093938))

(declare-fun m!6093940 () Bool)

(assert (=> b!5057975 m!6093940))

(assert (=> b!5057975 m!6092142))

(assert (=> b!5057975 m!6092682))

(declare-fun m!6093942 () Bool)

(assert (=> b!5057975 m!6093942))

(declare-fun m!6093944 () Bool)

(assert (=> d!1628160 m!6093944))

(assert (=> d!1628160 m!6092142))

(assert (=> d!1628160 m!6092688))

(declare-fun m!6093946 () Bool)

(assert (=> d!1628160 m!6093946))

(assert (=> bm!352185 d!1628160))

(assert (=> b!5057168 d!1628104))

(assert (=> b!5057168 d!1628106))

(declare-fun d!1628162 () Bool)

(declare-fun res!2153797 () Bool)

(declare-fun e!3157276 () Bool)

(assert (=> d!1628162 (=> (not res!2153797) (not e!3157276))))

(assert (=> d!1628162 (= res!2153797 (= (csize!31338 (right!43131 (right!43131 xs!286))) (+ (size!39057 (left!42801 (right!43131 (right!43131 xs!286)))) (size!39057 (right!43131 (right!43131 (right!43131 xs!286)))))))))

(assert (=> d!1628162 (= (inv!77504 (right!43131 (right!43131 xs!286))) e!3157276)))

(declare-fun b!5057977 () Bool)

(declare-fun res!2153798 () Bool)

(assert (=> b!5057977 (=> (not res!2153798) (not e!3157276))))

(assert (=> b!5057977 (= res!2153798 (and (not (= (left!42801 (right!43131 (right!43131 xs!286))) Empty!15554)) (not (= (right!43131 (right!43131 (right!43131 xs!286))) Empty!15554))))))

(declare-fun b!5057978 () Bool)

(declare-fun res!2153799 () Bool)

(assert (=> b!5057978 (=> (not res!2153799) (not e!3157276))))

(assert (=> b!5057978 (= res!2153799 (= (cheight!15765 (right!43131 (right!43131 xs!286))) (+ (max!0 (height!2131 (left!42801 (right!43131 (right!43131 xs!286)))) (height!2131 (right!43131 (right!43131 (right!43131 xs!286))))) 1)))))

(declare-fun b!5057979 () Bool)

(assert (=> b!5057979 (= e!3157276 (<= 0 (cheight!15765 (right!43131 (right!43131 xs!286)))))))

(assert (= (and d!1628162 res!2153797) b!5057977))

(assert (= (and b!5057977 res!2153798) b!5057978))

(assert (= (and b!5057978 res!2153799) b!5057979))

(declare-fun m!6093948 () Bool)

(assert (=> d!1628162 m!6093948))

(declare-fun m!6093950 () Bool)

(assert (=> d!1628162 m!6093950))

(assert (=> b!5057978 m!6093496))

(assert (=> b!5057978 m!6093498))

(assert (=> b!5057978 m!6093496))

(assert (=> b!5057978 m!6093498))

(declare-fun m!6093952 () Bool)

(assert (=> b!5057978 m!6093952))

(assert (=> b!5057327 d!1628162))

(declare-fun d!1628164 () Bool)

(assert (=> d!1628164 (= (isEmpty!31612 (list!18969 (left!42801 ys!41))) ((_ is Nil!58424) (list!18969 (left!42801 ys!41))))))

(assert (=> d!1627616 d!1628164))

(assert (=> d!1627616 d!1627604))

(assert (=> d!1627616 d!1628094))

(declare-fun d!1628166 () Bool)

(declare-fun c!867824 () Bool)

(assert (=> d!1628166 (= c!867824 ((_ is Nil!58424) (t!371231 (list!18969 xs!286))))))

(declare-fun e!3157277 () (InoxSet T!105048))

(assert (=> d!1628166 (= (content!10411 (t!371231 (list!18969 xs!286))) e!3157277)))

(declare-fun b!5057980 () Bool)

(assert (=> b!5057980 (= e!3157277 ((as const (Array T!105048 Bool)) false))))

(declare-fun b!5057981 () Bool)

(assert (=> b!5057981 (= e!3157277 ((_ map or) (store ((as const (Array T!105048 Bool)) false) (h!64872 (t!371231 (list!18969 xs!286))) true) (content!10411 (t!371231 (t!371231 (list!18969 xs!286))))))))

(assert (= (and d!1628166 c!867824) b!5057980))

(assert (= (and d!1628166 (not c!867824)) b!5057981))

(declare-fun m!6093954 () Bool)

(assert (=> b!5057981 m!6093954))

(declare-fun m!6093956 () Bool)

(assert (=> b!5057981 m!6093956))

(assert (=> b!5057183 d!1628166))

(declare-fun d!1628168 () Bool)

(declare-fun lt!2087664 () Bool)

(assert (=> d!1628168 (= lt!2087664 (isEmpty!31612 (list!18969 (left!42801 (right!43131 xs!286)))))))

(assert (=> d!1628168 (= lt!2087664 (= (size!39057 (left!42801 (right!43131 xs!286))) 0))))

(assert (=> d!1628168 (= (isEmpty!31610 (left!42801 (right!43131 xs!286))) lt!2087664)))

(declare-fun bs!1189460 () Bool)

(assert (= bs!1189460 d!1628168))

(assert (=> bs!1189460 m!6092280))

(assert (=> bs!1189460 m!6092280))

(declare-fun m!6093958 () Bool)

(assert (=> bs!1189460 m!6093958))

(assert (=> bs!1189460 m!6092436))

(assert (=> b!5057266 d!1628168))

(declare-fun d!1628170 () Bool)

(declare-fun c!867825 () Bool)

(assert (=> d!1628170 (= c!867825 ((_ is Node!15554) (left!42801 (left!42801 (left!42801 xs!286)))))))

(declare-fun e!3157278 () Bool)

(assert (=> d!1628170 (= (inv!77500 (left!42801 (left!42801 (left!42801 xs!286)))) e!3157278)))

(declare-fun b!5057982 () Bool)

(assert (=> b!5057982 (= e!3157278 (inv!77504 (left!42801 (left!42801 (left!42801 xs!286)))))))

(declare-fun b!5057983 () Bool)

(declare-fun e!3157279 () Bool)

(assert (=> b!5057983 (= e!3157278 e!3157279)))

(declare-fun res!2153800 () Bool)

(assert (=> b!5057983 (= res!2153800 (not ((_ is Leaf!25836) (left!42801 (left!42801 (left!42801 xs!286))))))))

(assert (=> b!5057983 (=> res!2153800 e!3157279)))

(declare-fun b!5057984 () Bool)

(assert (=> b!5057984 (= e!3157279 (inv!77505 (left!42801 (left!42801 (left!42801 xs!286)))))))

(assert (= (and d!1628170 c!867825) b!5057982))

(assert (= (and d!1628170 (not c!867825)) b!5057983))

(assert (= (and b!5057983 (not res!2153800)) b!5057984))

(declare-fun m!6093960 () Bool)

(assert (=> b!5057982 m!6093960))

(declare-fun m!6093962 () Bool)

(assert (=> b!5057984 m!6093962))

(assert (=> b!5057410 d!1628170))

(declare-fun d!1628172 () Bool)

(declare-fun c!867826 () Bool)

(assert (=> d!1628172 (= c!867826 ((_ is Node!15554) (right!43131 (left!42801 (left!42801 xs!286)))))))

(declare-fun e!3157280 () Bool)

(assert (=> d!1628172 (= (inv!77500 (right!43131 (left!42801 (left!42801 xs!286)))) e!3157280)))

(declare-fun b!5057985 () Bool)

(assert (=> b!5057985 (= e!3157280 (inv!77504 (right!43131 (left!42801 (left!42801 xs!286)))))))

(declare-fun b!5057986 () Bool)

(declare-fun e!3157281 () Bool)

(assert (=> b!5057986 (= e!3157280 e!3157281)))

(declare-fun res!2153801 () Bool)

(assert (=> b!5057986 (= res!2153801 (not ((_ is Leaf!25836) (right!43131 (left!42801 (left!42801 xs!286))))))))

(assert (=> b!5057986 (=> res!2153801 e!3157281)))

(declare-fun b!5057987 () Bool)

(assert (=> b!5057987 (= e!3157281 (inv!77505 (right!43131 (left!42801 (left!42801 xs!286)))))))

(assert (= (and d!1628172 c!867826) b!5057985))

(assert (= (and d!1628172 (not c!867826)) b!5057986))

(assert (= (and b!5057986 (not res!2153801)) b!5057987))

(declare-fun m!6093964 () Bool)

(assert (=> b!5057985 m!6093964))

(declare-fun m!6093966 () Bool)

(assert (=> b!5057987 m!6093966))

(assert (=> b!5057410 d!1628172))

(declare-fun b!5057991 () Bool)

(declare-fun e!3157282 () Bool)

(declare-fun lt!2087665 () List!58548)

(assert (=> b!5057991 (= e!3157282 (or (not (= (list!18969 (right!43131 (right!43131 xs!286))) Nil!58424)) (= lt!2087665 (list!18969 (left!42801 (right!43131 xs!286))))))))

(declare-fun b!5057988 () Bool)

(declare-fun e!3157283 () List!58548)

(assert (=> b!5057988 (= e!3157283 (list!18969 (right!43131 (right!43131 xs!286))))))

(declare-fun b!5057989 () Bool)

(assert (=> b!5057989 (= e!3157283 (Cons!58424 (h!64872 (list!18969 (left!42801 (right!43131 xs!286)))) (++!12773 (t!371231 (list!18969 (left!42801 (right!43131 xs!286)))) (list!18969 (right!43131 (right!43131 xs!286))))))))

(declare-fun b!5057990 () Bool)

(declare-fun res!2153802 () Bool)

(assert (=> b!5057990 (=> (not res!2153802) (not e!3157282))))

(assert (=> b!5057990 (= res!2153802 (= (size!39055 lt!2087665) (+ (size!39055 (list!18969 (left!42801 (right!43131 xs!286)))) (size!39055 (list!18969 (right!43131 (right!43131 xs!286)))))))))

(declare-fun d!1628174 () Bool)

(assert (=> d!1628174 e!3157282))

(declare-fun res!2153803 () Bool)

(assert (=> d!1628174 (=> (not res!2153803) (not e!3157282))))

(assert (=> d!1628174 (= res!2153803 (= (content!10411 lt!2087665) ((_ map or) (content!10411 (list!18969 (left!42801 (right!43131 xs!286)))) (content!10411 (list!18969 (right!43131 (right!43131 xs!286)))))))))

(assert (=> d!1628174 (= lt!2087665 e!3157283)))

(declare-fun c!867827 () Bool)

(assert (=> d!1628174 (= c!867827 ((_ is Nil!58424) (list!18969 (left!42801 (right!43131 xs!286)))))))

(assert (=> d!1628174 (= (++!12773 (list!18969 (left!42801 (right!43131 xs!286))) (list!18969 (right!43131 (right!43131 xs!286)))) lt!2087665)))

(assert (= (and d!1628174 c!867827) b!5057988))

(assert (= (and d!1628174 (not c!867827)) b!5057989))

(assert (= (and d!1628174 res!2153803) b!5057990))

(assert (= (and b!5057990 res!2153802) b!5057991))

(assert (=> b!5057989 m!6092276))

(assert (=> b!5057989 m!6093270))

(declare-fun m!6093968 () Bool)

(assert (=> b!5057990 m!6093968))

(assert (=> b!5057990 m!6092280))

(assert (=> b!5057990 m!6093640))

(assert (=> b!5057990 m!6092276))

(assert (=> b!5057990 m!6092758))

(declare-fun m!6093970 () Bool)

(assert (=> d!1628174 m!6093970))

(assert (=> d!1628174 m!6092280))

(assert (=> d!1628174 m!6093644))

(assert (=> d!1628174 m!6092276))

(assert (=> d!1628174 m!6092762))

(assert (=> bm!352183 d!1628174))

(declare-fun d!1628176 () Bool)

(assert (=> d!1628176 (= (max!0 (height!2131 (left!42801 (left!42801 xs!286))) (height!2131 (right!43131 (left!42801 xs!286)))) (ite (< (height!2131 (left!42801 (left!42801 xs!286))) (height!2131 (right!43131 (left!42801 xs!286)))) (height!2131 (right!43131 (left!42801 xs!286))) (height!2131 (left!42801 (left!42801 xs!286)))))))

(assert (=> b!5057386 d!1628176))

(assert (=> b!5057386 d!1627906))

(assert (=> b!5057386 d!1627908))

(declare-fun d!1628178 () Bool)

(declare-fun c!867828 () Bool)

(assert (=> d!1628178 (= c!867828 ((_ is Nil!58424) lt!2087546))))

(declare-fun e!3157284 () (InoxSet T!105048))

(assert (=> d!1628178 (= (content!10411 lt!2087546) e!3157284)))

(declare-fun b!5057992 () Bool)

(assert (=> b!5057992 (= e!3157284 ((as const (Array T!105048 Bool)) false))))

(declare-fun b!5057993 () Bool)

(assert (=> b!5057993 (= e!3157284 ((_ map or) (store ((as const (Array T!105048 Bool)) false) (h!64872 lt!2087546) true) (content!10411 (t!371231 lt!2087546))))))

(assert (= (and d!1628178 c!867828) b!5057992))

(assert (= (and d!1628178 (not c!867828)) b!5057993))

(declare-fun m!6093972 () Bool)

(assert (=> b!5057993 m!6093972))

(declare-fun m!6093974 () Bool)

(assert (=> b!5057993 m!6093974))

(assert (=> d!1627630 d!1628178))

(declare-fun d!1628180 () Bool)

(declare-fun c!867829 () Bool)

(assert (=> d!1628180 (= c!867829 ((_ is Nil!58424) (list!18969 (left!42801 ys!41))))))

(declare-fun e!3157285 () (InoxSet T!105048))

(assert (=> d!1628180 (= (content!10411 (list!18969 (left!42801 ys!41))) e!3157285)))

(declare-fun b!5057994 () Bool)

(assert (=> b!5057994 (= e!3157285 ((as const (Array T!105048 Bool)) false))))

(declare-fun b!5057995 () Bool)

(assert (=> b!5057995 (= e!3157285 ((_ map or) (store ((as const (Array T!105048 Bool)) false) (h!64872 (list!18969 (left!42801 ys!41))) true) (content!10411 (t!371231 (list!18969 (left!42801 ys!41))))))))

(assert (= (and d!1628180 c!867829) b!5057994))

(assert (= (and d!1628180 (not c!867829)) b!5057995))

(declare-fun m!6093976 () Bool)

(assert (=> b!5057995 m!6093976))

(assert (=> b!5057995 m!6093450))

(assert (=> d!1627630 d!1628180))

(declare-fun d!1628182 () Bool)

(declare-fun c!867830 () Bool)

(assert (=> d!1628182 (= c!867830 ((_ is Nil!58424) (list!18969 (right!43131 ys!41))))))

(declare-fun e!3157286 () (InoxSet T!105048))

(assert (=> d!1628182 (= (content!10411 (list!18969 (right!43131 ys!41))) e!3157286)))

(declare-fun b!5057996 () Bool)

(assert (=> b!5057996 (= e!3157286 ((as const (Array T!105048 Bool)) false))))

(declare-fun b!5057997 () Bool)

(assert (=> b!5057997 (= e!3157286 ((_ map or) (store ((as const (Array T!105048 Bool)) false) (h!64872 (list!18969 (right!43131 ys!41))) true) (content!10411 (t!371231 (list!18969 (right!43131 ys!41))))))))

(assert (= (and d!1628182 c!867830) b!5057996))

(assert (= (and d!1628182 (not c!867830)) b!5057997))

(declare-fun m!6093978 () Bool)

(assert (=> b!5057997 m!6093978))

(declare-fun m!6093980 () Bool)

(assert (=> b!5057997 m!6093980))

(assert (=> d!1627630 d!1628182))

(declare-fun d!1628184 () Bool)

(declare-fun lt!2087666 () Int)

(assert (=> d!1628184 (>= lt!2087666 0)))

(declare-fun e!3157287 () Int)

(assert (=> d!1628184 (= lt!2087666 e!3157287)))

(declare-fun c!867831 () Bool)

(assert (=> d!1628184 (= c!867831 ((_ is Nil!58424) (innerList!15642 (xs!18888 (left!42801 ys!41)))))))

(assert (=> d!1628184 (= (size!39055 (innerList!15642 (xs!18888 (left!42801 ys!41)))) lt!2087666)))

(declare-fun b!5057998 () Bool)

(assert (=> b!5057998 (= e!3157287 0)))

(declare-fun b!5057999 () Bool)

(assert (=> b!5057999 (= e!3157287 (+ 1 (size!39055 (t!371231 (innerList!15642 (xs!18888 (left!42801 ys!41)))))))))

(assert (= (and d!1628184 c!867831) b!5057998))

(assert (= (and d!1628184 (not c!867831)) b!5057999))

(declare-fun m!6093982 () Bool)

(assert (=> b!5057999 m!6093982))

(assert (=> d!1627532 d!1628184))

(declare-fun e!3157288 () Bool)

(declare-fun b!5058003 () Bool)

(declare-fun lt!2087667 () List!58548)

(assert (=> b!5058003 (= e!3157288 (or (not (= (list!18969 ys!41) Nil!58424)) (= lt!2087667 (t!371231 (t!371231 (list!18969 xs!286))))))))

(declare-fun b!5058000 () Bool)

(declare-fun e!3157289 () List!58548)

(assert (=> b!5058000 (= e!3157289 (list!18969 ys!41))))

(declare-fun b!5058001 () Bool)

(assert (=> b!5058001 (= e!3157289 (Cons!58424 (h!64872 (t!371231 (t!371231 (list!18969 xs!286)))) (++!12773 (t!371231 (t!371231 (t!371231 (list!18969 xs!286)))) (list!18969 ys!41))))))

(declare-fun b!5058002 () Bool)

(declare-fun res!2153804 () Bool)

(assert (=> b!5058002 (=> (not res!2153804) (not e!3157288))))

(assert (=> b!5058002 (= res!2153804 (= (size!39055 lt!2087667) (+ (size!39055 (t!371231 (t!371231 (list!18969 xs!286)))) (size!39055 (list!18969 ys!41)))))))

(declare-fun d!1628186 () Bool)

(assert (=> d!1628186 e!3157288))

(declare-fun res!2153805 () Bool)

(assert (=> d!1628186 (=> (not res!2153805) (not e!3157288))))

(assert (=> d!1628186 (= res!2153805 (= (content!10411 lt!2087667) ((_ map or) (content!10411 (t!371231 (t!371231 (list!18969 xs!286)))) (content!10411 (list!18969 ys!41)))))))

(assert (=> d!1628186 (= lt!2087667 e!3157289)))

(declare-fun c!867832 () Bool)

(assert (=> d!1628186 (= c!867832 ((_ is Nil!58424) (t!371231 (t!371231 (list!18969 xs!286)))))))

(assert (=> d!1628186 (= (++!12773 (t!371231 (t!371231 (list!18969 xs!286))) (list!18969 ys!41)) lt!2087667)))

(assert (= (and d!1628186 c!867832) b!5058000))

(assert (= (and d!1628186 (not c!867832)) b!5058001))

(assert (= (and d!1628186 res!2153805) b!5058002))

(assert (= (and b!5058002 res!2153804) b!5058003))

(assert (=> b!5058001 m!6092020))

(declare-fun m!6093984 () Bool)

(assert (=> b!5058001 m!6093984))

(declare-fun m!6093986 () Bool)

(assert (=> b!5058002 m!6093986))

(assert (=> b!5058002 m!6093748))

(assert (=> b!5058002 m!6092020))

(assert (=> b!5058002 m!6092132))

(declare-fun m!6093988 () Bool)

(assert (=> d!1628186 m!6093988))

(assert (=> d!1628186 m!6093956))

(assert (=> d!1628186 m!6092020))

(assert (=> d!1628186 m!6092138))

(assert (=> b!5057301 d!1628186))

(declare-fun d!1628188 () Bool)

(assert (=> d!1628188 (= (inv!77501 (xs!18888 (right!43131 (right!43131 xs!286)))) (<= (size!39055 (innerList!15642 (xs!18888 (right!43131 (right!43131 xs!286))))) 2147483647))))

(declare-fun bs!1189461 () Bool)

(assert (= bs!1189461 d!1628188))

(declare-fun m!6093990 () Bool)

(assert (=> bs!1189461 m!6093990))

(assert (=> b!5057396 d!1628188))

(declare-fun b!5058007 () Bool)

(declare-fun e!3157290 () Bool)

(declare-fun lt!2087668 () List!58548)

(assert (=> b!5058007 (= e!3157290 (or (not (= (list!18969 (right!43131 ys!41)) Nil!58424)) (= lt!2087668 (list!18969 (right!43131 (left!42801 ys!41))))))))

(declare-fun b!5058004 () Bool)

(declare-fun e!3157291 () List!58548)

(assert (=> b!5058004 (= e!3157291 (list!18969 (right!43131 ys!41)))))

(declare-fun b!5058005 () Bool)

(assert (=> b!5058005 (= e!3157291 (Cons!58424 (h!64872 (list!18969 (right!43131 (left!42801 ys!41)))) (++!12773 (t!371231 (list!18969 (right!43131 (left!42801 ys!41)))) (list!18969 (right!43131 ys!41)))))))

(declare-fun b!5058006 () Bool)

(declare-fun res!2153806 () Bool)

(assert (=> b!5058006 (=> (not res!2153806) (not e!3157290))))

(assert (=> b!5058006 (= res!2153806 (= (size!39055 lt!2087668) (+ (size!39055 (list!18969 (right!43131 (left!42801 ys!41)))) (size!39055 (list!18969 (right!43131 ys!41))))))))

(declare-fun d!1628190 () Bool)

(assert (=> d!1628190 e!3157290))

(declare-fun res!2153807 () Bool)

(assert (=> d!1628190 (=> (not res!2153807) (not e!3157290))))

(assert (=> d!1628190 (= res!2153807 (= (content!10411 lt!2087668) ((_ map or) (content!10411 (list!18969 (right!43131 (left!42801 ys!41)))) (content!10411 (list!18969 (right!43131 ys!41))))))))

(assert (=> d!1628190 (= lt!2087668 e!3157291)))

(declare-fun c!867833 () Bool)

(assert (=> d!1628190 (= c!867833 ((_ is Nil!58424) (list!18969 (right!43131 (left!42801 ys!41)))))))

(assert (=> d!1628190 (= (++!12773 (list!18969 (right!43131 (left!42801 ys!41))) (list!18969 (right!43131 ys!41))) lt!2087668)))

(assert (= (and d!1628190 c!867833) b!5058004))

(assert (= (and d!1628190 (not c!867833)) b!5058005))

(assert (= (and d!1628190 res!2153807) b!5058006))

(assert (= (and b!5058006 res!2153806) b!5058007))

(assert (=> b!5058005 m!6092152))

(declare-fun m!6093992 () Bool)

(assert (=> b!5058005 m!6093992))

(declare-fun m!6093994 () Bool)

(assert (=> b!5058006 m!6093994))

(assert (=> b!5058006 m!6092266))

(assert (=> b!5058006 m!6093360))

(assert (=> b!5058006 m!6092152))

(assert (=> b!5058006 m!6092612))

(declare-fun m!6093996 () Bool)

(assert (=> d!1628190 m!6093996))

(assert (=> d!1628190 m!6092266))

(assert (=> d!1628190 m!6093366))

(assert (=> d!1628190 m!6092152))

(assert (=> d!1628190 m!6092618))

(assert (=> bm!352180 d!1628190))

(declare-fun lt!2087669 () List!58548)

(declare-fun e!3157292 () Bool)

(declare-fun b!5058011 () Bool)

(assert (=> b!5058011 (= e!3157292 (or (not (= (list!18969 (left!42801 (left!42801 ys!41))) Nil!58424)) (= lt!2087669 (t!371231 (list!18969 xs!286)))))))

(declare-fun b!5058008 () Bool)

(declare-fun e!3157293 () List!58548)

(assert (=> b!5058008 (= e!3157293 (list!18969 (left!42801 (left!42801 ys!41))))))

(declare-fun b!5058009 () Bool)

(assert (=> b!5058009 (= e!3157293 (Cons!58424 (h!64872 (t!371231 (list!18969 xs!286))) (++!12773 (t!371231 (t!371231 (list!18969 xs!286))) (list!18969 (left!42801 (left!42801 ys!41))))))))

(declare-fun b!5058010 () Bool)

(declare-fun res!2153808 () Bool)

(assert (=> b!5058010 (=> (not res!2153808) (not e!3157292))))

(assert (=> b!5058010 (= res!2153808 (= (size!39055 lt!2087669) (+ (size!39055 (t!371231 (list!18969 xs!286))) (size!39055 (list!18969 (left!42801 (left!42801 ys!41)))))))))

(declare-fun d!1628192 () Bool)

(assert (=> d!1628192 e!3157292))

(declare-fun res!2153809 () Bool)

(assert (=> d!1628192 (=> (not res!2153809) (not e!3157292))))

(assert (=> d!1628192 (= res!2153809 (= (content!10411 lt!2087669) ((_ map or) (content!10411 (t!371231 (list!18969 xs!286))) (content!10411 (list!18969 (left!42801 (left!42801 ys!41)))))))))

(assert (=> d!1628192 (= lt!2087669 e!3157293)))

(declare-fun c!867834 () Bool)

(assert (=> d!1628192 (= c!867834 ((_ is Nil!58424) (t!371231 (list!18969 xs!286))))))

(assert (=> d!1628192 (= (++!12773 (t!371231 (list!18969 xs!286)) (list!18969 (left!42801 (left!42801 ys!41)))) lt!2087669)))

(assert (= (and d!1628192 c!867834) b!5058008))

(assert (= (and d!1628192 (not c!867834)) b!5058009))

(assert (= (and d!1628192 res!2153809) b!5058010))

(assert (= (and b!5058010 res!2153808) b!5058011))

(assert (=> b!5058009 m!6092264))

(declare-fun m!6093998 () Bool)

(assert (=> b!5058009 m!6093998))

(declare-fun m!6094000 () Bool)

(assert (=> b!5058010 m!6094000))

(assert (=> b!5058010 m!6092448))

(assert (=> b!5058010 m!6092264))

(assert (=> b!5058010 m!6092576))

(declare-fun m!6094002 () Bool)

(assert (=> d!1628192 m!6094002))

(assert (=> d!1628192 m!6092394))

(assert (=> d!1628192 m!6092264))

(assert (=> d!1628192 m!6092580))

(assert (=> b!5057279 d!1628192))

(declare-fun d!1628194 () Bool)

(declare-fun res!2153810 () Bool)

(declare-fun e!3157294 () Bool)

(assert (=> d!1628194 (=> (not res!2153810) (not e!3157294))))

(assert (=> d!1628194 (= res!2153810 (<= (size!39055 (list!18970 (xs!18888 (right!43131 (right!43131 ys!41))))) 512))))

(assert (=> d!1628194 (= (inv!77505 (right!43131 (right!43131 ys!41))) e!3157294)))

(declare-fun b!5058012 () Bool)

(declare-fun res!2153811 () Bool)

(assert (=> b!5058012 (=> (not res!2153811) (not e!3157294))))

(assert (=> b!5058012 (= res!2153811 (= (csize!31339 (right!43131 (right!43131 ys!41))) (size!39055 (list!18970 (xs!18888 (right!43131 (right!43131 ys!41)))))))))

(declare-fun b!5058013 () Bool)

(assert (=> b!5058013 (= e!3157294 (and (> (csize!31339 (right!43131 (right!43131 ys!41))) 0) (<= (csize!31339 (right!43131 (right!43131 ys!41))) 512)))))

(assert (= (and d!1628194 res!2153810) b!5058012))

(assert (= (and b!5058012 res!2153811) b!5058013))

(assert (=> d!1628194 m!6093482))

(assert (=> d!1628194 m!6093482))

(declare-fun m!6094004 () Bool)

(assert (=> d!1628194 m!6094004))

(assert (=> b!5058012 m!6093482))

(assert (=> b!5058012 m!6093482))

(assert (=> b!5058012 m!6094004))

(assert (=> b!5057287 d!1628194))

(declare-fun b!5058014 () Bool)

(declare-fun res!2153817 () Bool)

(declare-fun e!3157296 () Bool)

(assert (=> b!5058014 (=> (not res!2153817) (not e!3157296))))

(assert (=> b!5058014 (= res!2153817 (<= (- (height!2131 (left!42801 (left!42801 (right!43131 lt!2087515)))) (height!2131 (right!43131 (left!42801 (right!43131 lt!2087515))))) 1))))

(declare-fun b!5058015 () Bool)

(declare-fun e!3157295 () Bool)

(assert (=> b!5058015 (= e!3157295 e!3157296)))

(declare-fun res!2153813 () Bool)

(assert (=> b!5058015 (=> (not res!2153813) (not e!3157296))))

(assert (=> b!5058015 (= res!2153813 (<= (- 1) (- (height!2131 (left!42801 (left!42801 (right!43131 lt!2087515)))) (height!2131 (right!43131 (left!42801 (right!43131 lt!2087515)))))))))

(declare-fun b!5058016 () Bool)

(declare-fun res!2153815 () Bool)

(assert (=> b!5058016 (=> (not res!2153815) (not e!3157296))))

(assert (=> b!5058016 (= res!2153815 (not (isEmpty!31610 (left!42801 (left!42801 (right!43131 lt!2087515))))))))

(declare-fun b!5058017 () Bool)

(assert (=> b!5058017 (= e!3157296 (not (isEmpty!31610 (right!43131 (left!42801 (right!43131 lt!2087515))))))))

(declare-fun b!5058018 () Bool)

(declare-fun res!2153812 () Bool)

(assert (=> b!5058018 (=> (not res!2153812) (not e!3157296))))

(assert (=> b!5058018 (= res!2153812 (isBalanced!4416 (right!43131 (left!42801 (right!43131 lt!2087515)))))))

(declare-fun d!1628196 () Bool)

(declare-fun res!2153816 () Bool)

(assert (=> d!1628196 (=> res!2153816 e!3157295)))

(assert (=> d!1628196 (= res!2153816 (not ((_ is Node!15554) (left!42801 (right!43131 lt!2087515)))))))

(assert (=> d!1628196 (= (isBalanced!4416 (left!42801 (right!43131 lt!2087515))) e!3157295)))

(declare-fun b!5058019 () Bool)

(declare-fun res!2153814 () Bool)

(assert (=> b!5058019 (=> (not res!2153814) (not e!3157296))))

(assert (=> b!5058019 (= res!2153814 (isBalanced!4416 (left!42801 (left!42801 (right!43131 lt!2087515)))))))

(assert (= (and d!1628196 (not res!2153816)) b!5058015))

(assert (= (and b!5058015 res!2153813) b!5058014))

(assert (= (and b!5058014 res!2153817) b!5058019))

(assert (= (and b!5058019 res!2153814) b!5058018))

(assert (= (and b!5058018 res!2153812) b!5058016))

(assert (= (and b!5058016 res!2153815) b!5058017))

(declare-fun m!6094006 () Bool)

(assert (=> b!5058018 m!6094006))

(declare-fun m!6094008 () Bool)

(assert (=> b!5058019 m!6094008))

(declare-fun m!6094010 () Bool)

(assert (=> b!5058017 m!6094010))

(declare-fun m!6094012 () Bool)

(assert (=> b!5058015 m!6094012))

(declare-fun m!6094014 () Bool)

(assert (=> b!5058015 m!6094014))

(declare-fun m!6094016 () Bool)

(assert (=> b!5058016 m!6094016))

(assert (=> b!5058014 m!6094012))

(assert (=> b!5058014 m!6094014))

(assert (=> b!5057238 d!1628196))

(declare-fun b!5058023 () Bool)

(declare-fun e!3157297 () Bool)

(declare-fun lt!2087670 () List!58548)

(assert (=> b!5058023 (= e!3157297 (or (not (= (list!18969 (right!43131 (left!42801 (left!42801 ys!41)))) Nil!58424)) (= lt!2087670 (list!18969 (left!42801 (left!42801 (left!42801 ys!41)))))))))

(declare-fun b!5058020 () Bool)

(declare-fun e!3157298 () List!58548)

(assert (=> b!5058020 (= e!3157298 (list!18969 (right!43131 (left!42801 (left!42801 ys!41)))))))

(declare-fun b!5058021 () Bool)

(assert (=> b!5058021 (= e!3157298 (Cons!58424 (h!64872 (list!18969 (left!42801 (left!42801 (left!42801 ys!41))))) (++!12773 (t!371231 (list!18969 (left!42801 (left!42801 (left!42801 ys!41))))) (list!18969 (right!43131 (left!42801 (left!42801 ys!41)))))))))

(declare-fun b!5058022 () Bool)

(declare-fun res!2153818 () Bool)

(assert (=> b!5058022 (=> (not res!2153818) (not e!3157297))))

(assert (=> b!5058022 (= res!2153818 (= (size!39055 lt!2087670) (+ (size!39055 (list!18969 (left!42801 (left!42801 (left!42801 ys!41))))) (size!39055 (list!18969 (right!43131 (left!42801 (left!42801 ys!41))))))))))

(declare-fun d!1628198 () Bool)

(assert (=> d!1628198 e!3157297))

(declare-fun res!2153819 () Bool)

(assert (=> d!1628198 (=> (not res!2153819) (not e!3157297))))

(assert (=> d!1628198 (= res!2153819 (= (content!10411 lt!2087670) ((_ map or) (content!10411 (list!18969 (left!42801 (left!42801 (left!42801 ys!41))))) (content!10411 (list!18969 (right!43131 (left!42801 (left!42801 ys!41))))))))))

(assert (=> d!1628198 (= lt!2087670 e!3157298)))

(declare-fun c!867835 () Bool)

(assert (=> d!1628198 (= c!867835 ((_ is Nil!58424) (list!18969 (left!42801 (left!42801 (left!42801 ys!41))))))))

(assert (=> d!1628198 (= (++!12773 (list!18969 (left!42801 (left!42801 (left!42801 ys!41)))) (list!18969 (right!43131 (left!42801 (left!42801 ys!41))))) lt!2087670)))

(assert (= (and d!1628198 c!867835) b!5058020))

(assert (= (and d!1628198 (not c!867835)) b!5058021))

(assert (= (and d!1628198 res!2153819) b!5058022))

(assert (= (and b!5058022 res!2153818) b!5058023))

(assert (=> b!5058021 m!6092468))

(declare-fun m!6094018 () Bool)

(assert (=> b!5058021 m!6094018))

(declare-fun m!6094020 () Bool)

(assert (=> b!5058022 m!6094020))

(assert (=> b!5058022 m!6092466))

(declare-fun m!6094022 () Bool)

(assert (=> b!5058022 m!6094022))

(assert (=> b!5058022 m!6092468))

(declare-fun m!6094024 () Bool)

(assert (=> b!5058022 m!6094024))

(declare-fun m!6094026 () Bool)

(assert (=> d!1628198 m!6094026))

(assert (=> d!1628198 m!6092466))

(declare-fun m!6094028 () Bool)

(assert (=> d!1628198 m!6094028))

(assert (=> d!1628198 m!6092468))

(declare-fun m!6094030 () Bool)

(assert (=> d!1628198 m!6094030))

(assert (=> b!5057228 d!1628198))

(declare-fun b!5058026 () Bool)

(declare-fun e!3157300 () List!58548)

(assert (=> b!5058026 (= e!3157300 (list!18970 (xs!18888 (left!42801 (left!42801 (left!42801 ys!41))))))))

(declare-fun b!5058025 () Bool)

(declare-fun e!3157299 () List!58548)

(assert (=> b!5058025 (= e!3157299 e!3157300)))

(declare-fun c!867837 () Bool)

(assert (=> b!5058025 (= c!867837 ((_ is Leaf!25836) (left!42801 (left!42801 (left!42801 ys!41)))))))

(declare-fun d!1628200 () Bool)

(declare-fun c!867836 () Bool)

(assert (=> d!1628200 (= c!867836 ((_ is Empty!15554) (left!42801 (left!42801 (left!42801 ys!41)))))))

(assert (=> d!1628200 (= (list!18969 (left!42801 (left!42801 (left!42801 ys!41)))) e!3157299)))

(declare-fun b!5058024 () Bool)

(assert (=> b!5058024 (= e!3157299 Nil!58424)))

(declare-fun b!5058027 () Bool)

(assert (=> b!5058027 (= e!3157300 (++!12773 (list!18969 (left!42801 (left!42801 (left!42801 (left!42801 ys!41))))) (list!18969 (right!43131 (left!42801 (left!42801 (left!42801 ys!41)))))))))

(assert (= (and d!1628200 c!867836) b!5058024))

(assert (= (and d!1628200 (not c!867836)) b!5058025))

(assert (= (and b!5058025 c!867837) b!5058026))

(assert (= (and b!5058025 (not c!867837)) b!5058027))

(declare-fun m!6094032 () Bool)

(assert (=> b!5058026 m!6094032))

(declare-fun m!6094034 () Bool)

(assert (=> b!5058027 m!6094034))

(declare-fun m!6094036 () Bool)

(assert (=> b!5058027 m!6094036))

(assert (=> b!5058027 m!6094034))

(assert (=> b!5058027 m!6094036))

(declare-fun m!6094038 () Bool)

(assert (=> b!5058027 m!6094038))

(assert (=> b!5057228 d!1628200))

(declare-fun b!5058030 () Bool)

(declare-fun e!3157302 () List!58548)

(assert (=> b!5058030 (= e!3157302 (list!18970 (xs!18888 (right!43131 (left!42801 (left!42801 ys!41))))))))

(declare-fun b!5058029 () Bool)

(declare-fun e!3157301 () List!58548)

(assert (=> b!5058029 (= e!3157301 e!3157302)))

(declare-fun c!867839 () Bool)

(assert (=> b!5058029 (= c!867839 ((_ is Leaf!25836) (right!43131 (left!42801 (left!42801 ys!41)))))))

(declare-fun d!1628202 () Bool)

(declare-fun c!867838 () Bool)

(assert (=> d!1628202 (= c!867838 ((_ is Empty!15554) (right!43131 (left!42801 (left!42801 ys!41)))))))

(assert (=> d!1628202 (= (list!18969 (right!43131 (left!42801 (left!42801 ys!41)))) e!3157301)))

(declare-fun b!5058028 () Bool)

(assert (=> b!5058028 (= e!3157301 Nil!58424)))

(declare-fun b!5058031 () Bool)

(assert (=> b!5058031 (= e!3157302 (++!12773 (list!18969 (left!42801 (right!43131 (left!42801 (left!42801 ys!41))))) (list!18969 (right!43131 (right!43131 (left!42801 (left!42801 ys!41)))))))))

(assert (= (and d!1628202 c!867838) b!5058028))

(assert (= (and d!1628202 (not c!867838)) b!5058029))

(assert (= (and b!5058029 c!867839) b!5058030))

(assert (= (and b!5058029 (not c!867839)) b!5058031))

(declare-fun m!6094040 () Bool)

(assert (=> b!5058030 m!6094040))

(declare-fun m!6094042 () Bool)

(assert (=> b!5058031 m!6094042))

(declare-fun m!6094044 () Bool)

(assert (=> b!5058031 m!6094044))

(assert (=> b!5058031 m!6094042))

(assert (=> b!5058031 m!6094044))

(declare-fun m!6094046 () Bool)

(assert (=> b!5058031 m!6094046))

(assert (=> b!5057228 d!1628202))

(declare-fun lt!2087671 () List!58548)

(declare-fun b!5058035 () Bool)

(declare-fun e!3157303 () Bool)

(assert (=> b!5058035 (= e!3157303 (or (not (= call!352180 Nil!58424)) (= lt!2087671 (list!18969 xs!286))))))

(declare-fun b!5058032 () Bool)

(declare-fun e!3157304 () List!58548)

(assert (=> b!5058032 (= e!3157304 call!352180)))

(declare-fun b!5058033 () Bool)

(assert (=> b!5058033 (= e!3157304 (Cons!58424 (h!64872 (list!18969 xs!286)) (++!12773 (t!371231 (list!18969 xs!286)) call!352180)))))

(declare-fun b!5058034 () Bool)

(declare-fun res!2153820 () Bool)

(assert (=> b!5058034 (=> (not res!2153820) (not e!3157303))))

(assert (=> b!5058034 (= res!2153820 (= (size!39055 lt!2087671) (+ (size!39055 (list!18969 xs!286)) (size!39055 call!352180))))))

(declare-fun d!1628204 () Bool)

(assert (=> d!1628204 e!3157303))

(declare-fun res!2153821 () Bool)

(assert (=> d!1628204 (=> (not res!2153821) (not e!3157303))))

(assert (=> d!1628204 (= res!2153821 (= (content!10411 lt!2087671) ((_ map or) (content!10411 (list!18969 xs!286)) (content!10411 call!352180))))))

(assert (=> d!1628204 (= lt!2087671 e!3157304)))

(declare-fun c!867840 () Bool)

(assert (=> d!1628204 (= c!867840 ((_ is Nil!58424) (list!18969 xs!286)))))

(assert (=> d!1628204 (= (++!12773 (list!18969 xs!286) call!352180) lt!2087671)))

(assert (= (and d!1628204 c!867840) b!5058032))

(assert (= (and d!1628204 (not c!867840)) b!5058033))

(assert (= (and d!1628204 res!2153821) b!5058034))

(assert (= (and b!5058034 res!2153820) b!5058035))

(declare-fun m!6094048 () Bool)

(assert (=> b!5058033 m!6094048))

(declare-fun m!6094050 () Bool)

(assert (=> b!5058034 m!6094050))

(assert (=> b!5058034 m!6092018))

(assert (=> b!5058034 m!6092130))

(declare-fun m!6094052 () Bool)

(assert (=> b!5058034 m!6094052))

(declare-fun m!6094054 () Bool)

(assert (=> d!1628204 m!6094054))

(assert (=> d!1628204 m!6092018))

(assert (=> d!1628204 m!6092136))

(declare-fun m!6094056 () Bool)

(assert (=> d!1628204 m!6094056))

(assert (=> bm!352173 d!1628204))

(declare-fun d!1628206 () Bool)

(assert (=> d!1628206 (= (max!0 (height!2131 (left!42801 (right!43131 ys!41))) (height!2131 (right!43131 (right!43131 ys!41)))) (ite (< (height!2131 (left!42801 (right!43131 ys!41))) (height!2131 (right!43131 (right!43131 ys!41)))) (height!2131 (right!43131 (right!43131 ys!41))) (height!2131 (left!42801 (right!43131 ys!41)))))))

(assert (=> b!5057252 d!1628206))

(assert (=> b!5057252 d!1627954))

(assert (=> b!5057252 d!1627956))

(declare-fun d!1628208 () Bool)

(declare-fun res!2153822 () Bool)

(declare-fun e!3157305 () Bool)

(assert (=> d!1628208 (=> (not res!2153822) (not e!3157305))))

(assert (=> d!1628208 (= res!2153822 (<= (size!39055 (list!18970 (xs!18888 (left!42801 (right!43131 ys!41))))) 512))))

(assert (=> d!1628208 (= (inv!77505 (left!42801 (right!43131 ys!41))) e!3157305)))

(declare-fun b!5058036 () Bool)

(declare-fun res!2153823 () Bool)

(assert (=> b!5058036 (=> (not res!2153823) (not e!3157305))))

(assert (=> b!5058036 (= res!2153823 (= (csize!31339 (left!42801 (right!43131 ys!41))) (size!39055 (list!18970 (xs!18888 (left!42801 (right!43131 ys!41)))))))))

(declare-fun b!5058037 () Bool)

(assert (=> b!5058037 (= e!3157305 (and (> (csize!31339 (left!42801 (right!43131 ys!41))) 0) (<= (csize!31339 (left!42801 (right!43131 ys!41))) 512)))))

(assert (= (and d!1628208 res!2153822) b!5058036))

(assert (= (and b!5058036 res!2153823) b!5058037))

(assert (=> d!1628208 m!6093474))

(assert (=> d!1628208 m!6093474))

(declare-fun m!6094058 () Bool)

(assert (=> d!1628208 m!6094058))

(assert (=> b!5058036 m!6093474))

(assert (=> b!5058036 m!6093474))

(assert (=> b!5058036 m!6094058))

(assert (=> b!5057284 d!1628208))

(declare-fun d!1628210 () Bool)

(declare-fun c!867841 () Bool)

(assert (=> d!1628210 (= c!867841 ((_ is Nil!58424) (t!371231 lt!2087518)))))

(declare-fun e!3157306 () (InoxSet T!105048))

(assert (=> d!1628210 (= (content!10411 (t!371231 lt!2087518)) e!3157306)))

(declare-fun b!5058038 () Bool)

(assert (=> b!5058038 (= e!3157306 ((as const (Array T!105048 Bool)) false))))

(declare-fun b!5058039 () Bool)

(assert (=> b!5058039 (= e!3157306 ((_ map or) (store ((as const (Array T!105048 Bool)) false) (h!64872 (t!371231 lt!2087518)) true) (content!10411 (t!371231 (t!371231 lt!2087518)))))))

(assert (= (and d!1628210 c!867841) b!5058038))

(assert (= (and d!1628210 (not c!867841)) b!5058039))

(declare-fun m!6094060 () Bool)

(assert (=> b!5058039 m!6094060))

(declare-fun m!6094062 () Bool)

(assert (=> b!5058039 m!6094062))

(assert (=> b!5057181 d!1628210))

(declare-fun d!1628212 () Bool)

(declare-fun res!2153824 () Bool)

(declare-fun e!3157307 () Bool)

(assert (=> d!1628212 (=> (not res!2153824) (not e!3157307))))

(assert (=> d!1628212 (= res!2153824 (<= (size!39055 (list!18970 (xs!18888 (right!43131 (left!42801 xs!286))))) 512))))

(assert (=> d!1628212 (= (inv!77505 (right!43131 (left!42801 xs!286))) e!3157307)))

(declare-fun b!5058040 () Bool)

(declare-fun res!2153825 () Bool)

(assert (=> b!5058040 (=> (not res!2153825) (not e!3157307))))

(assert (=> b!5058040 (= res!2153825 (= (csize!31339 (right!43131 (left!42801 xs!286))) (size!39055 (list!18970 (xs!18888 (right!43131 (left!42801 xs!286)))))))))

(declare-fun b!5058041 () Bool)

(assert (=> b!5058041 (= e!3157307 (and (> (csize!31339 (right!43131 (left!42801 xs!286))) 0) (<= (csize!31339 (right!43131 (left!42801 xs!286))) 512)))))

(assert (= (and d!1628212 res!2153824) b!5058040))

(assert (= (and b!5058040 res!2153825) b!5058041))

(assert (=> d!1628212 m!6093538))

(assert (=> d!1628212 m!6093538))

(declare-fun m!6094064 () Bool)

(assert (=> d!1628212 m!6094064))

(assert (=> b!5058040 m!6093538))

(assert (=> b!5058040 m!6093538))

(assert (=> b!5058040 m!6094064))

(assert (=> b!5057175 d!1628212))

(declare-fun d!1628214 () Bool)

(declare-fun lt!2087672 () Bool)

(assert (=> d!1628214 (= lt!2087672 (isEmpty!31612 (list!18969 (left!42801 (left!42801 xs!286)))))))

(assert (=> d!1628214 (= lt!2087672 (= (size!39057 (left!42801 (left!42801 xs!286))) 0))))

(assert (=> d!1628214 (= (isEmpty!31610 (left!42801 (left!42801 xs!286))) lt!2087672)))

(declare-fun bs!1189462 () Bool)

(assert (= bs!1189462 d!1628214))

(assert (=> bs!1189462 m!6092664))

(assert (=> bs!1189462 m!6092664))

(declare-fun m!6094066 () Bool)

(assert (=> bs!1189462 m!6094066))

(assert (=> bs!1189462 m!6092772))

(assert (=> b!5057359 d!1628214))

(assert (=> b!5057234 d!1627856))

(assert (=> b!5057234 d!1627858))

(declare-fun d!1628216 () Bool)

(assert (=> d!1628216 (= (list!18970 (xs!18888 (right!43131 (left!42801 ys!41)))) (innerList!15642 (xs!18888 (right!43131 (left!42801 ys!41)))))))

(assert (=> b!5057231 d!1628216))

(declare-fun d!1628218 () Bool)

(assert (=> d!1628218 (= (inv!77501 (xs!18888 (left!42801 (right!43131 ys!41)))) (<= (size!39055 (innerList!15642 (xs!18888 (left!42801 (right!43131 ys!41))))) 2147483647))))

(declare-fun bs!1189463 () Bool)

(assert (= bs!1189463 d!1628218))

(declare-fun m!6094068 () Bool)

(assert (=> bs!1189463 m!6094068))

(assert (=> b!5057418 d!1628218))

(declare-fun d!1628220 () Bool)

(assert (=> d!1628220 (= (isEmpty!31612 (list!18969 (right!43131 xs!286))) ((_ is Nil!58424) (list!18969 (right!43131 xs!286))))))

(assert (=> d!1627692 d!1628220))

(assert (=> d!1627692 d!1627646))

(assert (=> d!1627692 d!1627848))

(assert (=> d!1627658 d!1627966))

(assert (=> d!1627658 d!1627592))

(declare-fun d!1628222 () Bool)

(declare-fun lt!2087673 () Int)

(assert (=> d!1628222 (>= lt!2087673 0)))

(declare-fun e!3157308 () Int)

(assert (=> d!1628222 (= lt!2087673 e!3157308)))

(declare-fun c!867842 () Bool)

(assert (=> d!1628222 (= c!867842 ((_ is Nil!58424) lt!2087546))))

(assert (=> d!1628222 (= (size!39055 lt!2087546) lt!2087673)))

(declare-fun b!5058042 () Bool)

(assert (=> b!5058042 (= e!3157308 0)))

(declare-fun b!5058043 () Bool)

(assert (=> b!5058043 (= e!3157308 (+ 1 (size!39055 (t!371231 lt!2087546))))))

(assert (= (and d!1628222 c!867842) b!5058042))

(assert (= (and d!1628222 (not c!867842)) b!5058043))

(declare-fun m!6094070 () Bool)

(assert (=> b!5058043 m!6094070))

(assert (=> b!5057298 d!1628222))

(declare-fun d!1628224 () Bool)

(declare-fun lt!2087674 () Int)

(assert (=> d!1628224 (>= lt!2087674 0)))

(declare-fun e!3157309 () Int)

(assert (=> d!1628224 (= lt!2087674 e!3157309)))

(declare-fun c!867843 () Bool)

(assert (=> d!1628224 (= c!867843 ((_ is Nil!58424) (list!18969 (left!42801 ys!41))))))

(assert (=> d!1628224 (= (size!39055 (list!18969 (left!42801 ys!41))) lt!2087674)))

(declare-fun b!5058044 () Bool)

(assert (=> b!5058044 (= e!3157309 0)))

(declare-fun b!5058045 () Bool)

(assert (=> b!5058045 (= e!3157309 (+ 1 (size!39055 (t!371231 (list!18969 (left!42801 ys!41))))))))

(assert (= (and d!1628224 c!867843) b!5058044))

(assert (= (and d!1628224 (not c!867843)) b!5058045))

(assert (=> b!5058045 m!6093446))

(assert (=> b!5057298 d!1628224))

(declare-fun d!1628226 () Bool)

(declare-fun lt!2087675 () Int)

(assert (=> d!1628226 (>= lt!2087675 0)))

(declare-fun e!3157310 () Int)

(assert (=> d!1628226 (= lt!2087675 e!3157310)))

(declare-fun c!867844 () Bool)

(assert (=> d!1628226 (= c!867844 ((_ is Nil!58424) (list!18969 (right!43131 ys!41))))))

(assert (=> d!1628226 (= (size!39055 (list!18969 (right!43131 ys!41))) lt!2087675)))

(declare-fun b!5058046 () Bool)

(assert (=> b!5058046 (= e!3157310 0)))

(declare-fun b!5058047 () Bool)

(assert (=> b!5058047 (= e!3157310 (+ 1 (size!39055 (t!371231 (list!18969 (right!43131 ys!41))))))))

(assert (= (and d!1628226 c!867844) b!5058046))

(assert (= (and d!1628226 (not c!867844)) b!5058047))

(declare-fun m!6094072 () Bool)

(assert (=> b!5058047 m!6094072))

(assert (=> b!5057298 d!1628226))

(declare-fun d!1628228 () Bool)

(declare-fun lt!2087676 () Bool)

(assert (=> d!1628228 (= lt!2087676 (isEmpty!31612 (list!18969 (left!42801 (left!42801 ys!41)))))))

(assert (=> d!1628228 (= lt!2087676 (= (size!39057 (left!42801 (left!42801 ys!41))) 0))))

(assert (=> d!1628228 (= (isEmpty!31610 (left!42801 (left!42801 ys!41))) lt!2087676)))

(declare-fun bs!1189464 () Bool)

(assert (= bs!1189464 d!1628228))

(assert (=> bs!1189464 m!6092264))

(assert (=> bs!1189464 m!6092264))

(declare-fun m!6094074 () Bool)

(assert (=> bs!1189464 m!6094074))

(assert (=> bs!1189464 m!6092412))

(assert (=> b!5057350 d!1628228))

(declare-fun b!5058051 () Bool)

(declare-fun e!3157311 () Bool)

(declare-fun lt!2087677 () List!58548)

(assert (=> b!5058051 (= e!3157311 (or (not (= (list!18969 (right!43131 (right!43131 lt!2087515))) Nil!58424)) (= lt!2087677 (list!18969 (left!42801 (right!43131 lt!2087515))))))))

(declare-fun b!5058048 () Bool)

(declare-fun e!3157312 () List!58548)

(assert (=> b!5058048 (= e!3157312 (list!18969 (right!43131 (right!43131 lt!2087515))))))

(declare-fun b!5058049 () Bool)

(assert (=> b!5058049 (= e!3157312 (Cons!58424 (h!64872 (list!18969 (left!42801 (right!43131 lt!2087515)))) (++!12773 (t!371231 (list!18969 (left!42801 (right!43131 lt!2087515)))) (list!18969 (right!43131 (right!43131 lt!2087515))))))))

(declare-fun b!5058050 () Bool)

(declare-fun res!2153826 () Bool)

(assert (=> b!5058050 (=> (not res!2153826) (not e!3157311))))

(assert (=> b!5058050 (= res!2153826 (= (size!39055 lt!2087677) (+ (size!39055 (list!18969 (left!42801 (right!43131 lt!2087515)))) (size!39055 (list!18969 (right!43131 (right!43131 lt!2087515)))))))))

(declare-fun d!1628230 () Bool)

(assert (=> d!1628230 e!3157311))

(declare-fun res!2153827 () Bool)

(assert (=> d!1628230 (=> (not res!2153827) (not e!3157311))))

(assert (=> d!1628230 (= res!2153827 (= (content!10411 lt!2087677) ((_ map or) (content!10411 (list!18969 (left!42801 (right!43131 lt!2087515)))) (content!10411 (list!18969 (right!43131 (right!43131 lt!2087515)))))))))

(assert (=> d!1628230 (= lt!2087677 e!3157312)))

(declare-fun c!867845 () Bool)

(assert (=> d!1628230 (= c!867845 ((_ is Nil!58424) (list!18969 (left!42801 (right!43131 lt!2087515)))))))

(assert (=> d!1628230 (= (++!12773 (list!18969 (left!42801 (right!43131 lt!2087515))) (list!18969 (right!43131 (right!43131 lt!2087515)))) lt!2087677)))

(assert (= (and d!1628230 c!867845) b!5058048))

(assert (= (and d!1628230 (not c!867845)) b!5058049))

(assert (= (and d!1628230 res!2153827) b!5058050))

(assert (= (and b!5058050 res!2153826) b!5058051))

(assert (=> b!5058049 m!6092518))

(declare-fun m!6094076 () Bool)

(assert (=> b!5058049 m!6094076))

(declare-fun m!6094078 () Bool)

(assert (=> b!5058050 m!6094078))

(assert (=> b!5058050 m!6092516))

(declare-fun m!6094080 () Bool)

(assert (=> b!5058050 m!6094080))

(assert (=> b!5058050 m!6092518))

(declare-fun m!6094082 () Bool)

(assert (=> b!5058050 m!6094082))

(declare-fun m!6094084 () Bool)

(assert (=> d!1628230 m!6094084))

(assert (=> d!1628230 m!6092516))

(declare-fun m!6094086 () Bool)

(assert (=> d!1628230 m!6094086))

(assert (=> d!1628230 m!6092518))

(declare-fun m!6094088 () Bool)

(assert (=> d!1628230 m!6094088))

(assert (=> b!5057250 d!1628230))

(declare-fun b!5058054 () Bool)

(declare-fun e!3157314 () List!58548)

(assert (=> b!5058054 (= e!3157314 (list!18970 (xs!18888 (left!42801 (right!43131 lt!2087515)))))))

(declare-fun b!5058053 () Bool)

(declare-fun e!3157313 () List!58548)

(assert (=> b!5058053 (= e!3157313 e!3157314)))

(declare-fun c!867847 () Bool)

(assert (=> b!5058053 (= c!867847 ((_ is Leaf!25836) (left!42801 (right!43131 lt!2087515))))))

(declare-fun d!1628232 () Bool)

(declare-fun c!867846 () Bool)

(assert (=> d!1628232 (= c!867846 ((_ is Empty!15554) (left!42801 (right!43131 lt!2087515))))))

(assert (=> d!1628232 (= (list!18969 (left!42801 (right!43131 lt!2087515))) e!3157313)))

(declare-fun b!5058052 () Bool)

(assert (=> b!5058052 (= e!3157313 Nil!58424)))

(declare-fun b!5058055 () Bool)

(assert (=> b!5058055 (= e!3157314 (++!12773 (list!18969 (left!42801 (left!42801 (right!43131 lt!2087515)))) (list!18969 (right!43131 (left!42801 (right!43131 lt!2087515))))))))

(assert (= (and d!1628232 c!867846) b!5058052))

(assert (= (and d!1628232 (not c!867846)) b!5058053))

(assert (= (and b!5058053 c!867847) b!5058054))

(assert (= (and b!5058053 (not c!867847)) b!5058055))

(declare-fun m!6094090 () Bool)

(assert (=> b!5058054 m!6094090))

(declare-fun m!6094092 () Bool)

(assert (=> b!5058055 m!6094092))

(declare-fun m!6094094 () Bool)

(assert (=> b!5058055 m!6094094))

(assert (=> b!5058055 m!6094092))

(assert (=> b!5058055 m!6094094))

(declare-fun m!6094096 () Bool)

(assert (=> b!5058055 m!6094096))

(assert (=> b!5057250 d!1628232))

(declare-fun b!5058058 () Bool)

(declare-fun e!3157316 () List!58548)

(assert (=> b!5058058 (= e!3157316 (list!18970 (xs!18888 (right!43131 (right!43131 lt!2087515)))))))

(declare-fun b!5058057 () Bool)

(declare-fun e!3157315 () List!58548)

(assert (=> b!5058057 (= e!3157315 e!3157316)))

(declare-fun c!867849 () Bool)

(assert (=> b!5058057 (= c!867849 ((_ is Leaf!25836) (right!43131 (right!43131 lt!2087515))))))

(declare-fun d!1628234 () Bool)

(declare-fun c!867848 () Bool)

(assert (=> d!1628234 (= c!867848 ((_ is Empty!15554) (right!43131 (right!43131 lt!2087515))))))

(assert (=> d!1628234 (= (list!18969 (right!43131 (right!43131 lt!2087515))) e!3157315)))

(declare-fun b!5058056 () Bool)

(assert (=> b!5058056 (= e!3157315 Nil!58424)))

(declare-fun b!5058059 () Bool)

(assert (=> b!5058059 (= e!3157316 (++!12773 (list!18969 (left!42801 (right!43131 (right!43131 lt!2087515)))) (list!18969 (right!43131 (right!43131 (right!43131 lt!2087515))))))))

(assert (= (and d!1628234 c!867848) b!5058056))

(assert (= (and d!1628234 (not c!867848)) b!5058057))

(assert (= (and b!5058057 c!867849) b!5058058))

(assert (= (and b!5058057 (not c!867849)) b!5058059))

(declare-fun m!6094098 () Bool)

(assert (=> b!5058058 m!6094098))

(declare-fun m!6094100 () Bool)

(assert (=> b!5058059 m!6094100))

(declare-fun m!6094102 () Bool)

(assert (=> b!5058059 m!6094102))

(assert (=> b!5058059 m!6094100))

(assert (=> b!5058059 m!6094102))

(declare-fun m!6094104 () Bool)

(assert (=> b!5058059 m!6094104))

(assert (=> b!5057250 d!1628234))

(declare-fun d!1628236 () Bool)

(declare-fun lt!2087678 () Int)

(assert (=> d!1628236 (= lt!2087678 (size!39055 (list!18969 (left!42801 (right!43131 xs!286)))))))

(assert (=> d!1628236 (= lt!2087678 (ite ((_ is Empty!15554) (left!42801 (right!43131 xs!286))) 0 (ite ((_ is Leaf!25836) (left!42801 (right!43131 xs!286))) (csize!31339 (left!42801 (right!43131 xs!286))) (csize!31338 (left!42801 (right!43131 xs!286))))))))

(assert (=> d!1628236 (= (size!39057 (left!42801 (right!43131 xs!286))) lt!2087678)))

(declare-fun bs!1189465 () Bool)

(assert (= bs!1189465 d!1628236))

(assert (=> bs!1189465 m!6092280))

(assert (=> bs!1189465 m!6092280))

(assert (=> bs!1189465 m!6093640))

(assert (=> d!1627558 d!1628236))

(declare-fun d!1628238 () Bool)

(declare-fun lt!2087679 () Int)

(assert (=> d!1628238 (= lt!2087679 (size!39055 (list!18969 (right!43131 (right!43131 xs!286)))))))

(assert (=> d!1628238 (= lt!2087679 (ite ((_ is Empty!15554) (right!43131 (right!43131 xs!286))) 0 (ite ((_ is Leaf!25836) (right!43131 (right!43131 xs!286))) (csize!31339 (right!43131 (right!43131 xs!286))) (csize!31338 (right!43131 (right!43131 xs!286))))))))

(assert (=> d!1628238 (= (size!39057 (right!43131 (right!43131 xs!286))) lt!2087679)))

(declare-fun bs!1189466 () Bool)

(assert (= bs!1189466 d!1628238))

(assert (=> bs!1189466 m!6092276))

(assert (=> bs!1189466 m!6092276))

(assert (=> bs!1189466 m!6092758))

(assert (=> d!1627558 d!1628238))

(assert (=> b!5057323 d!1628174))

(assert (=> b!5057323 d!1627638))

(assert (=> b!5057323 d!1627640))

(declare-fun d!1628240 () Bool)

(declare-fun c!867850 () Bool)

(assert (=> d!1628240 (= c!867850 ((_ is Nil!58424) lt!2087543))))

(declare-fun e!3157317 () (InoxSet T!105048))

(assert (=> d!1628240 (= (content!10411 lt!2087543) e!3157317)))

(declare-fun b!5058060 () Bool)

(assert (=> b!5058060 (= e!3157317 ((as const (Array T!105048 Bool)) false))))

(declare-fun b!5058061 () Bool)

(assert (=> b!5058061 (= e!3157317 ((_ map or) (store ((as const (Array T!105048 Bool)) false) (h!64872 lt!2087543) true) (content!10411 (t!371231 lt!2087543))))))

(assert (= (and d!1628240 c!867850) b!5058060))

(assert (= (and d!1628240 (not c!867850)) b!5058061))

(declare-fun m!6094106 () Bool)

(assert (=> b!5058061 m!6094106))

(declare-fun m!6094108 () Bool)

(assert (=> b!5058061 m!6094108))

(assert (=> d!1627614 d!1628240))

(assert (=> d!1627614 d!1627540))

(declare-fun d!1628242 () Bool)

(declare-fun c!867851 () Bool)

(assert (=> d!1628242 (= c!867851 ((_ is Nil!58424) (list!18969 (left!42801 (left!42801 ys!41)))))))

(declare-fun e!3157318 () (InoxSet T!105048))

(assert (=> d!1628242 (= (content!10411 (list!18969 (left!42801 (left!42801 ys!41)))) e!3157318)))

(declare-fun b!5058062 () Bool)

(assert (=> b!5058062 (= e!3157318 ((as const (Array T!105048 Bool)) false))))

(declare-fun b!5058063 () Bool)

(assert (=> b!5058063 (= e!3157318 ((_ map or) (store ((as const (Array T!105048 Bool)) false) (h!64872 (list!18969 (left!42801 (left!42801 ys!41)))) true) (content!10411 (t!371231 (list!18969 (left!42801 (left!42801 ys!41)))))))))

(assert (= (and d!1628242 c!867851) b!5058062))

(assert (= (and d!1628242 (not c!867851)) b!5058063))

(declare-fun m!6094110 () Bool)

(assert (=> b!5058063 m!6094110))

(declare-fun m!6094112 () Bool)

(assert (=> b!5058063 m!6094112))

(assert (=> d!1627614 d!1628242))

(assert (=> b!5057149 d!1627648))

(assert (=> b!5057149 d!1627652))

(declare-fun d!1628244 () Bool)

(declare-fun lt!2087680 () Int)

(assert (=> d!1628244 (>= lt!2087680 0)))

(declare-fun e!3157319 () Int)

(assert (=> d!1628244 (= lt!2087680 e!3157319)))

(declare-fun c!867852 () Bool)

(assert (=> d!1628244 (= c!867852 ((_ is Nil!58424) (t!371231 (innerList!15642 (xs!18888 ys!41)))))))

(assert (=> d!1628244 (= (size!39055 (t!371231 (innerList!15642 (xs!18888 ys!41)))) lt!2087680)))

(declare-fun b!5058064 () Bool)

(assert (=> b!5058064 (= e!3157319 0)))

(declare-fun b!5058065 () Bool)

(assert (=> b!5058065 (= e!3157319 (+ 1 (size!39055 (t!371231 (t!371231 (innerList!15642 (xs!18888 ys!41)))))))))

(assert (= (and d!1628244 c!867852) b!5058064))

(assert (= (and d!1628244 (not c!867852)) b!5058065))

(declare-fun m!6094114 () Bool)

(assert (=> b!5058065 m!6094114))

(assert (=> b!5057378 d!1628244))

(declare-fun b!5058069 () Bool)

(declare-fun e!3157320 () Bool)

(declare-fun lt!2087681 () List!58548)

(assert (=> b!5058069 (= e!3157320 (or (not (= (list!18969 (right!43131 xs!286)) Nil!58424)) (= lt!2087681 (t!371231 (list!18969 (left!42801 xs!286))))))))

(declare-fun b!5058066 () Bool)

(declare-fun e!3157321 () List!58548)

(assert (=> b!5058066 (= e!3157321 (list!18969 (right!43131 xs!286)))))

(declare-fun b!5058067 () Bool)

(assert (=> b!5058067 (= e!3157321 (Cons!58424 (h!64872 (t!371231 (list!18969 (left!42801 xs!286)))) (++!12773 (t!371231 (t!371231 (list!18969 (left!42801 xs!286)))) (list!18969 (right!43131 xs!286)))))))

(declare-fun b!5058068 () Bool)

(declare-fun res!2153828 () Bool)

(assert (=> b!5058068 (=> (not res!2153828) (not e!3157320))))

(assert (=> b!5058068 (= res!2153828 (= (size!39055 lt!2087681) (+ (size!39055 (t!371231 (list!18969 (left!42801 xs!286)))) (size!39055 (list!18969 (right!43131 xs!286))))))))

(declare-fun d!1628246 () Bool)

(assert (=> d!1628246 e!3157320))

(declare-fun res!2153829 () Bool)

(assert (=> d!1628246 (=> (not res!2153829) (not e!3157320))))

(assert (=> d!1628246 (= res!2153829 (= (content!10411 lt!2087681) ((_ map or) (content!10411 (t!371231 (list!18969 (left!42801 xs!286)))) (content!10411 (list!18969 (right!43131 xs!286))))))))

(assert (=> d!1628246 (= lt!2087681 e!3157321)))

(declare-fun c!867853 () Bool)

(assert (=> d!1628246 (= c!867853 ((_ is Nil!58424) (t!371231 (list!18969 (left!42801 xs!286)))))))

(assert (=> d!1628246 (= (++!12773 (t!371231 (list!18969 (left!42801 xs!286))) (list!18969 (right!43131 xs!286))) lt!2087681)))

(assert (= (and d!1628246 c!867853) b!5058066))

(assert (= (and d!1628246 (not c!867853)) b!5058067))

(assert (= (and d!1628246 res!2153829) b!5058068))

(assert (= (and b!5058068 res!2153828) b!5058069))

(assert (=> b!5058067 m!6092144))

(declare-fun m!6094116 () Bool)

(assert (=> b!5058067 m!6094116))

(declare-fun m!6094118 () Bool)

(assert (=> b!5058068 m!6094118))

(assert (=> b!5058068 m!6093898))

(assert (=> b!5058068 m!6092144))

(assert (=> b!5058068 m!6092684))

(declare-fun m!6094120 () Bool)

(assert (=> d!1628246 m!6094120))

(assert (=> d!1628246 m!6093804))

(assert (=> d!1628246 m!6092144))

(assert (=> d!1628246 m!6092690))

(assert (=> b!5057331 d!1628246))

(declare-fun d!1628248 () Bool)

(assert (=> d!1628248 (= (inv!77501 (xs!18888 (left!42801 (left!42801 ys!41)))) (<= (size!39055 (innerList!15642 (xs!18888 (left!42801 (left!42801 ys!41))))) 2147483647))))

(declare-fun bs!1189467 () Bool)

(assert (= bs!1189467 d!1628248))

(declare-fun m!6094122 () Bool)

(assert (=> bs!1189467 m!6094122))

(assert (=> b!5057401 d!1628248))

(assert (=> bm!352171 d!1627614))

(declare-fun b!5058073 () Bool)

(declare-fun lt!2087682 () List!58548)

(declare-fun e!3157322 () Bool)

(assert (=> b!5058073 (= e!3157322 (or (not (= call!352184 Nil!58424)) (= lt!2087682 (++!12773 (list!18969 xs!286) (list!18969 (left!42801 (left!42801 ys!41)))))))))

(declare-fun b!5058070 () Bool)

(declare-fun e!3157323 () List!58548)

(assert (=> b!5058070 (= e!3157323 call!352184)))

(declare-fun b!5058071 () Bool)

(assert (=> b!5058071 (= e!3157323 (Cons!58424 (h!64872 (++!12773 (list!18969 xs!286) (list!18969 (left!42801 (left!42801 ys!41))))) (++!12773 (t!371231 (++!12773 (list!18969 xs!286) (list!18969 (left!42801 (left!42801 ys!41))))) call!352184)))))

(declare-fun b!5058072 () Bool)

(declare-fun res!2153830 () Bool)

(assert (=> b!5058072 (=> (not res!2153830) (not e!3157322))))

(assert (=> b!5058072 (= res!2153830 (= (size!39055 lt!2087682) (+ (size!39055 (++!12773 (list!18969 xs!286) (list!18969 (left!42801 (left!42801 ys!41))))) (size!39055 call!352184))))))

(declare-fun d!1628250 () Bool)

(assert (=> d!1628250 e!3157322))

(declare-fun res!2153831 () Bool)

(assert (=> d!1628250 (=> (not res!2153831) (not e!3157322))))

(assert (=> d!1628250 (= res!2153831 (= (content!10411 lt!2087682) ((_ map or) (content!10411 (++!12773 (list!18969 xs!286) (list!18969 (left!42801 (left!42801 ys!41))))) (content!10411 call!352184))))))

(assert (=> d!1628250 (= lt!2087682 e!3157323)))

(declare-fun c!867854 () Bool)

(assert (=> d!1628250 (= c!867854 ((_ is Nil!58424) (++!12773 (list!18969 xs!286) (list!18969 (left!42801 (left!42801 ys!41))))))))

(assert (=> d!1628250 (= (++!12773 (++!12773 (list!18969 xs!286) (list!18969 (left!42801 (left!42801 ys!41)))) call!352184) lt!2087682)))

(assert (= (and d!1628250 c!867854) b!5058070))

(assert (= (and d!1628250 (not c!867854)) b!5058071))

(assert (= (and d!1628250 res!2153831) b!5058072))

(assert (= (and b!5058072 res!2153830) b!5058073))

(declare-fun m!6094124 () Bool)

(assert (=> b!5058071 m!6094124))

(declare-fun m!6094126 () Bool)

(assert (=> b!5058072 m!6094126))

(assert (=> b!5058072 m!6092268))

(assert (=> b!5058072 m!6093358))

(declare-fun m!6094128 () Bool)

(assert (=> b!5058072 m!6094128))

(declare-fun m!6094130 () Bool)

(assert (=> d!1628250 m!6094130))

(assert (=> d!1628250 m!6092268))

(assert (=> d!1628250 m!6093364))

(declare-fun m!6094132 () Bool)

(assert (=> d!1628250 m!6094132))

(assert (=> bm!352177 d!1628250))

(declare-fun d!1628252 () Bool)

(declare-fun c!867855 () Bool)

(assert (=> d!1628252 (= c!867855 ((_ is Node!15554) (left!42801 (right!43131 (right!43131 ys!41)))))))

(declare-fun e!3157324 () Bool)

(assert (=> d!1628252 (= (inv!77500 (left!42801 (right!43131 (right!43131 ys!41)))) e!3157324)))

(declare-fun b!5058074 () Bool)

(assert (=> b!5058074 (= e!3157324 (inv!77504 (left!42801 (right!43131 (right!43131 ys!41)))))))

(declare-fun b!5058075 () Bool)

(declare-fun e!3157325 () Bool)

(assert (=> b!5058075 (= e!3157324 e!3157325)))

(declare-fun res!2153832 () Bool)

(assert (=> b!5058075 (= res!2153832 (not ((_ is Leaf!25836) (left!42801 (right!43131 (right!43131 ys!41))))))))

(assert (=> b!5058075 (=> res!2153832 e!3157325)))

(declare-fun b!5058076 () Bool)

(assert (=> b!5058076 (= e!3157325 (inv!77505 (left!42801 (right!43131 (right!43131 ys!41)))))))

(assert (= (and d!1628252 c!867855) b!5058074))

(assert (= (and d!1628252 (not c!867855)) b!5058075))

(assert (= (and b!5058075 (not res!2153832)) b!5058076))

(declare-fun m!6094134 () Bool)

(assert (=> b!5058074 m!6094134))

(declare-fun m!6094136 () Bool)

(assert (=> b!5058076 m!6094136))

(assert (=> b!5057420 d!1628252))

(declare-fun d!1628254 () Bool)

(declare-fun c!867856 () Bool)

(assert (=> d!1628254 (= c!867856 ((_ is Node!15554) (right!43131 (right!43131 (right!43131 ys!41)))))))

(declare-fun e!3157326 () Bool)

(assert (=> d!1628254 (= (inv!77500 (right!43131 (right!43131 (right!43131 ys!41)))) e!3157326)))

(declare-fun b!5058077 () Bool)

(assert (=> b!5058077 (= e!3157326 (inv!77504 (right!43131 (right!43131 (right!43131 ys!41)))))))

(declare-fun b!5058078 () Bool)

(declare-fun e!3157327 () Bool)

(assert (=> b!5058078 (= e!3157326 e!3157327)))

(declare-fun res!2153833 () Bool)

(assert (=> b!5058078 (= res!2153833 (not ((_ is Leaf!25836) (right!43131 (right!43131 (right!43131 ys!41))))))))

(assert (=> b!5058078 (=> res!2153833 e!3157327)))

(declare-fun b!5058079 () Bool)

(assert (=> b!5058079 (= e!3157327 (inv!77505 (right!43131 (right!43131 (right!43131 ys!41)))))))

(assert (= (and d!1628254 c!867856) b!5058077))

(assert (= (and d!1628254 (not c!867856)) b!5058078))

(assert (= (and b!5058078 (not res!2153833)) b!5058079))

(declare-fun m!6094138 () Bool)

(assert (=> b!5058077 m!6094138))

(declare-fun m!6094140 () Bool)

(assert (=> b!5058079 m!6094140))

(assert (=> b!5057420 d!1628254))

(declare-fun d!1628256 () Bool)

(declare-fun lt!2087683 () Int)

(assert (=> d!1628256 (= lt!2087683 (size!39055 (list!18969 (left!42801 (left!42801 ys!41)))))))

(assert (=> d!1628256 (= lt!2087683 (ite ((_ is Empty!15554) (left!42801 (left!42801 ys!41))) 0 (ite ((_ is Leaf!25836) (left!42801 (left!42801 ys!41))) (csize!31339 (left!42801 (left!42801 ys!41))) (csize!31338 (left!42801 (left!42801 ys!41))))))))

(assert (=> d!1628256 (= (size!39057 (left!42801 (left!42801 ys!41))) lt!2087683)))

(declare-fun bs!1189468 () Bool)

(assert (= bs!1189468 d!1628256))

(assert (=> bs!1189468 m!6092264))

(assert (=> bs!1189468 m!6092264))

(assert (=> bs!1189468 m!6092576))

(assert (=> d!1627548 d!1628256))

(declare-fun d!1628258 () Bool)

(declare-fun lt!2087684 () Int)

(assert (=> d!1628258 (= lt!2087684 (size!39055 (list!18969 (right!43131 (left!42801 ys!41)))))))

(assert (=> d!1628258 (= lt!2087684 (ite ((_ is Empty!15554) (right!43131 (left!42801 ys!41))) 0 (ite ((_ is Leaf!25836) (right!43131 (left!42801 ys!41))) (csize!31339 (right!43131 (left!42801 ys!41))) (csize!31338 (right!43131 (left!42801 ys!41))))))))

(assert (=> d!1628258 (= (size!39057 (right!43131 (left!42801 ys!41))) lt!2087684)))

(declare-fun bs!1189469 () Bool)

(assert (= bs!1189469 d!1628258))

(assert (=> bs!1189469 m!6092266))

(assert (=> bs!1189469 m!6092266))

(assert (=> bs!1189469 m!6093360))

(assert (=> d!1627548 d!1628258))

(declare-fun b!5058083 () Bool)

(declare-fun e!3157328 () Bool)

(declare-fun lt!2087685 () List!58548)

(assert (=> b!5058083 (= e!3157328 (or (not (= (list!18969 (right!43131 lt!2087527)) Nil!58424)) (= lt!2087685 (list!18969 (left!42801 lt!2087527)))))))

(declare-fun b!5058080 () Bool)

(declare-fun e!3157329 () List!58548)

(assert (=> b!5058080 (= e!3157329 (list!18969 (right!43131 lt!2087527)))))

(declare-fun b!5058081 () Bool)

(assert (=> b!5058081 (= e!3157329 (Cons!58424 (h!64872 (list!18969 (left!42801 lt!2087527))) (++!12773 (t!371231 (list!18969 (left!42801 lt!2087527))) (list!18969 (right!43131 lt!2087527)))))))

(declare-fun b!5058082 () Bool)

(declare-fun res!2153834 () Bool)

(assert (=> b!5058082 (=> (not res!2153834) (not e!3157328))))

(assert (=> b!5058082 (= res!2153834 (= (size!39055 lt!2087685) (+ (size!39055 (list!18969 (left!42801 lt!2087527))) (size!39055 (list!18969 (right!43131 lt!2087527))))))))

(declare-fun d!1628260 () Bool)

(assert (=> d!1628260 e!3157328))

(declare-fun res!2153835 () Bool)

(assert (=> d!1628260 (=> (not res!2153835) (not e!3157328))))

(assert (=> d!1628260 (= res!2153835 (= (content!10411 lt!2087685) ((_ map or) (content!10411 (list!18969 (left!42801 lt!2087527))) (content!10411 (list!18969 (right!43131 lt!2087527))))))))

(assert (=> d!1628260 (= lt!2087685 e!3157329)))

(declare-fun c!867857 () Bool)

(assert (=> d!1628260 (= c!867857 ((_ is Nil!58424) (list!18969 (left!42801 lt!2087527))))))

(assert (=> d!1628260 (= (++!12773 (list!18969 (left!42801 lt!2087527)) (list!18969 (right!43131 lt!2087527))) lt!2087685)))

(assert (= (and d!1628260 c!867857) b!5058080))

(assert (= (and d!1628260 (not c!867857)) b!5058081))

(assert (= (and d!1628260 res!2153835) b!5058082))

(assert (= (and b!5058082 res!2153834) b!5058083))

(assert (=> b!5058081 m!6092404))

(declare-fun m!6094142 () Bool)

(assert (=> b!5058081 m!6094142))

(declare-fun m!6094144 () Bool)

(assert (=> b!5058082 m!6094144))

(assert (=> b!5058082 m!6092402))

(declare-fun m!6094146 () Bool)

(assert (=> b!5058082 m!6094146))

(assert (=> b!5058082 m!6092404))

(declare-fun m!6094148 () Bool)

(assert (=> b!5058082 m!6094148))

(declare-fun m!6094150 () Bool)

(assert (=> d!1628260 m!6094150))

(assert (=> d!1628260 m!6092402))

(declare-fun m!6094152 () Bool)

(assert (=> d!1628260 m!6094152))

(assert (=> d!1628260 m!6092404))

(declare-fun m!6094154 () Bool)

(assert (=> d!1628260 m!6094154))

(assert (=> b!5057189 d!1628260))

(declare-fun b!5058086 () Bool)

(declare-fun e!3157331 () List!58548)

(assert (=> b!5058086 (= e!3157331 (list!18970 (xs!18888 (left!42801 lt!2087527))))))

(declare-fun b!5058085 () Bool)

(declare-fun e!3157330 () List!58548)

(assert (=> b!5058085 (= e!3157330 e!3157331)))

(declare-fun c!867859 () Bool)

(assert (=> b!5058085 (= c!867859 ((_ is Leaf!25836) (left!42801 lt!2087527)))))

(declare-fun d!1628262 () Bool)

(declare-fun c!867858 () Bool)

(assert (=> d!1628262 (= c!867858 ((_ is Empty!15554) (left!42801 lt!2087527)))))

(assert (=> d!1628262 (= (list!18969 (left!42801 lt!2087527)) e!3157330)))

(declare-fun b!5058084 () Bool)

(assert (=> b!5058084 (= e!3157330 Nil!58424)))

(declare-fun b!5058087 () Bool)

(assert (=> b!5058087 (= e!3157331 (++!12773 (list!18969 (left!42801 (left!42801 lt!2087527))) (list!18969 (right!43131 (left!42801 lt!2087527)))))))

(assert (= (and d!1628262 c!867858) b!5058084))

(assert (= (and d!1628262 (not c!867858)) b!5058085))

(assert (= (and b!5058085 c!867859) b!5058086))

(assert (= (and b!5058085 (not c!867859)) b!5058087))

(declare-fun m!6094156 () Bool)

(assert (=> b!5058086 m!6094156))

(declare-fun m!6094158 () Bool)

(assert (=> b!5058087 m!6094158))

(declare-fun m!6094160 () Bool)

(assert (=> b!5058087 m!6094160))

(assert (=> b!5058087 m!6094158))

(assert (=> b!5058087 m!6094160))

(declare-fun m!6094162 () Bool)

(assert (=> b!5058087 m!6094162))

(assert (=> b!5057189 d!1628262))

(declare-fun b!5058090 () Bool)

(declare-fun e!3157333 () List!58548)

(assert (=> b!5058090 (= e!3157333 (list!18970 (xs!18888 (right!43131 lt!2087527))))))

(declare-fun b!5058089 () Bool)

(declare-fun e!3157332 () List!58548)

(assert (=> b!5058089 (= e!3157332 e!3157333)))

(declare-fun c!867861 () Bool)

(assert (=> b!5058089 (= c!867861 ((_ is Leaf!25836) (right!43131 lt!2087527)))))

(declare-fun d!1628264 () Bool)

(declare-fun c!867860 () Bool)

(assert (=> d!1628264 (= c!867860 ((_ is Empty!15554) (right!43131 lt!2087527)))))

(assert (=> d!1628264 (= (list!18969 (right!43131 lt!2087527)) e!3157332)))

(declare-fun b!5058088 () Bool)

(assert (=> b!5058088 (= e!3157332 Nil!58424)))

(declare-fun b!5058091 () Bool)

(assert (=> b!5058091 (= e!3157333 (++!12773 (list!18969 (left!42801 (right!43131 lt!2087527))) (list!18969 (right!43131 (right!43131 lt!2087527)))))))

(assert (= (and d!1628264 c!867860) b!5058088))

(assert (= (and d!1628264 (not c!867860)) b!5058089))

(assert (= (and b!5058089 c!867861) b!5058090))

(assert (= (and b!5058089 (not c!867861)) b!5058091))

(declare-fun m!6094164 () Bool)

(assert (=> b!5058090 m!6094164))

(declare-fun m!6094166 () Bool)

(assert (=> b!5058091 m!6094166))

(declare-fun m!6094168 () Bool)

(assert (=> b!5058091 m!6094168))

(assert (=> b!5058091 m!6094166))

(assert (=> b!5058091 m!6094168))

(declare-fun m!6094170 () Bool)

(assert (=> b!5058091 m!6094170))

(assert (=> b!5057189 d!1628264))

(declare-fun b!5058095 () Bool)

(declare-fun e!3157334 () Bool)

(declare-fun lt!2087686 () List!58548)

(assert (=> b!5058095 (= e!3157334 (or (not (= (list!18969 (right!43131 (right!43131 (right!43131 xs!286)))) Nil!58424)) (= lt!2087686 (list!18969 (left!42801 (right!43131 (right!43131 xs!286)))))))))

(declare-fun b!5058092 () Bool)

(declare-fun e!3157335 () List!58548)

(assert (=> b!5058092 (= e!3157335 (list!18969 (right!43131 (right!43131 (right!43131 xs!286)))))))

(declare-fun b!5058093 () Bool)

(assert (=> b!5058093 (= e!3157335 (Cons!58424 (h!64872 (list!18969 (left!42801 (right!43131 (right!43131 xs!286))))) (++!12773 (t!371231 (list!18969 (left!42801 (right!43131 (right!43131 xs!286))))) (list!18969 (right!43131 (right!43131 (right!43131 xs!286)))))))))

(declare-fun b!5058094 () Bool)

(declare-fun res!2153836 () Bool)

(assert (=> b!5058094 (=> (not res!2153836) (not e!3157334))))

(assert (=> b!5058094 (= res!2153836 (= (size!39055 lt!2087686) (+ (size!39055 (list!18969 (left!42801 (right!43131 (right!43131 xs!286))))) (size!39055 (list!18969 (right!43131 (right!43131 (right!43131 xs!286))))))))))

(declare-fun d!1628266 () Bool)

(assert (=> d!1628266 e!3157334))

(declare-fun res!2153837 () Bool)

(assert (=> d!1628266 (=> (not res!2153837) (not e!3157334))))

(assert (=> d!1628266 (= res!2153837 (= (content!10411 lt!2087686) ((_ map or) (content!10411 (list!18969 (left!42801 (right!43131 (right!43131 xs!286))))) (content!10411 (list!18969 (right!43131 (right!43131 (right!43131 xs!286))))))))))

(assert (=> d!1628266 (= lt!2087686 e!3157335)))

(declare-fun c!867862 () Bool)

(assert (=> d!1628266 (= c!867862 ((_ is Nil!58424) (list!18969 (left!42801 (right!43131 (right!43131 xs!286))))))))

(assert (=> d!1628266 (= (++!12773 (list!18969 (left!42801 (right!43131 (right!43131 xs!286)))) (list!18969 (right!43131 (right!43131 (right!43131 xs!286))))) lt!2087686)))

(assert (= (and d!1628266 c!867862) b!5058092))

(assert (= (and d!1628266 (not c!867862)) b!5058093))

(assert (= (and d!1628266 res!2153837) b!5058094))

(assert (= (and b!5058094 res!2153836) b!5058095))

(assert (=> b!5058093 m!6092650))

(declare-fun m!6094172 () Bool)

(assert (=> b!5058093 m!6094172))

(declare-fun m!6094174 () Bool)

(assert (=> b!5058094 m!6094174))

(assert (=> b!5058094 m!6092648))

(declare-fun m!6094176 () Bool)

(assert (=> b!5058094 m!6094176))

(assert (=> b!5058094 m!6092650))

(declare-fun m!6094178 () Bool)

(assert (=> b!5058094 m!6094178))

(declare-fun m!6094180 () Bool)

(assert (=> d!1628266 m!6094180))

(assert (=> d!1628266 m!6092648))

(declare-fun m!6094182 () Bool)

(assert (=> d!1628266 m!6094182))

(assert (=> d!1628266 m!6092650))

(declare-fun m!6094184 () Bool)

(assert (=> d!1628266 m!6094184))

(assert (=> b!5057313 d!1628266))

(declare-fun b!5058098 () Bool)

(declare-fun e!3157337 () List!58548)

(assert (=> b!5058098 (= e!3157337 (list!18970 (xs!18888 (left!42801 (right!43131 (right!43131 xs!286))))))))

(declare-fun b!5058097 () Bool)

(declare-fun e!3157336 () List!58548)

(assert (=> b!5058097 (= e!3157336 e!3157337)))

(declare-fun c!867864 () Bool)

(assert (=> b!5058097 (= c!867864 ((_ is Leaf!25836) (left!42801 (right!43131 (right!43131 xs!286)))))))

(declare-fun d!1628268 () Bool)

(declare-fun c!867863 () Bool)

(assert (=> d!1628268 (= c!867863 ((_ is Empty!15554) (left!42801 (right!43131 (right!43131 xs!286)))))))

(assert (=> d!1628268 (= (list!18969 (left!42801 (right!43131 (right!43131 xs!286)))) e!3157336)))

(declare-fun b!5058096 () Bool)

(assert (=> b!5058096 (= e!3157336 Nil!58424)))

(declare-fun b!5058099 () Bool)

(assert (=> b!5058099 (= e!3157337 (++!12773 (list!18969 (left!42801 (left!42801 (right!43131 (right!43131 xs!286))))) (list!18969 (right!43131 (left!42801 (right!43131 (right!43131 xs!286)))))))))

(assert (= (and d!1628268 c!867863) b!5058096))

(assert (= (and d!1628268 (not c!867863)) b!5058097))

(assert (= (and b!5058097 c!867864) b!5058098))

(assert (= (and b!5058097 (not c!867864)) b!5058099))

(declare-fun m!6094186 () Bool)

(assert (=> b!5058098 m!6094186))

(declare-fun m!6094188 () Bool)

(assert (=> b!5058099 m!6094188))

(declare-fun m!6094190 () Bool)

(assert (=> b!5058099 m!6094190))

(assert (=> b!5058099 m!6094188))

(assert (=> b!5058099 m!6094190))

(declare-fun m!6094192 () Bool)

(assert (=> b!5058099 m!6094192))

(assert (=> b!5057313 d!1628268))

(declare-fun b!5058102 () Bool)

(declare-fun e!3157339 () List!58548)

(assert (=> b!5058102 (= e!3157339 (list!18970 (xs!18888 (right!43131 (right!43131 (right!43131 xs!286))))))))

(declare-fun b!5058101 () Bool)

(declare-fun e!3157338 () List!58548)

(assert (=> b!5058101 (= e!3157338 e!3157339)))

(declare-fun c!867866 () Bool)

(assert (=> b!5058101 (= c!867866 ((_ is Leaf!25836) (right!43131 (right!43131 (right!43131 xs!286)))))))

(declare-fun d!1628270 () Bool)

(declare-fun c!867865 () Bool)

(assert (=> d!1628270 (= c!867865 ((_ is Empty!15554) (right!43131 (right!43131 (right!43131 xs!286)))))))

(assert (=> d!1628270 (= (list!18969 (right!43131 (right!43131 (right!43131 xs!286)))) e!3157338)))

(declare-fun b!5058100 () Bool)

(assert (=> b!5058100 (= e!3157338 Nil!58424)))

(declare-fun b!5058103 () Bool)

(assert (=> b!5058103 (= e!3157339 (++!12773 (list!18969 (left!42801 (right!43131 (right!43131 (right!43131 xs!286))))) (list!18969 (right!43131 (right!43131 (right!43131 (right!43131 xs!286)))))))))

(assert (= (and d!1628270 c!867865) b!5058100))

(assert (= (and d!1628270 (not c!867865)) b!5058101))

(assert (= (and b!5058101 c!867866) b!5058102))

(assert (= (and b!5058101 (not c!867866)) b!5058103))

(declare-fun m!6094194 () Bool)

(assert (=> b!5058102 m!6094194))

(declare-fun m!6094196 () Bool)

(assert (=> b!5058103 m!6094196))

(declare-fun m!6094198 () Bool)

(assert (=> b!5058103 m!6094198))

(assert (=> b!5058103 m!6094196))

(assert (=> b!5058103 m!6094198))

(declare-fun m!6094200 () Bool)

(assert (=> b!5058103 m!6094200))

(assert (=> b!5057313 d!1628270))

(declare-fun b!5058104 () Bool)

(declare-fun res!2153843 () Bool)

(declare-fun e!3157341 () Bool)

(assert (=> b!5058104 (=> (not res!2153843) (not e!3157341))))

(assert (=> b!5058104 (= res!2153843 (<= (- (height!2131 (left!42801 (left!42801 (right!43131 xs!286)))) (height!2131 (right!43131 (left!42801 (right!43131 xs!286))))) 1))))

(declare-fun b!5058105 () Bool)

(declare-fun e!3157340 () Bool)

(assert (=> b!5058105 (= e!3157340 e!3157341)))

(declare-fun res!2153839 () Bool)

(assert (=> b!5058105 (=> (not res!2153839) (not e!3157341))))

(assert (=> b!5058105 (= res!2153839 (<= (- 1) (- (height!2131 (left!42801 (left!42801 (right!43131 xs!286)))) (height!2131 (right!43131 (left!42801 (right!43131 xs!286)))))))))

(declare-fun b!5058106 () Bool)

(declare-fun res!2153841 () Bool)

(assert (=> b!5058106 (=> (not res!2153841) (not e!3157341))))

(assert (=> b!5058106 (= res!2153841 (not (isEmpty!31610 (left!42801 (left!42801 (right!43131 xs!286))))))))

(declare-fun b!5058107 () Bool)

(assert (=> b!5058107 (= e!3157341 (not (isEmpty!31610 (right!43131 (left!42801 (right!43131 xs!286))))))))

(declare-fun b!5058108 () Bool)

(declare-fun res!2153838 () Bool)

(assert (=> b!5058108 (=> (not res!2153838) (not e!3157341))))

(assert (=> b!5058108 (= res!2153838 (isBalanced!4416 (right!43131 (left!42801 (right!43131 xs!286)))))))

(declare-fun d!1628272 () Bool)

(declare-fun res!2153842 () Bool)

(assert (=> d!1628272 (=> res!2153842 e!3157340)))

(assert (=> d!1628272 (= res!2153842 (not ((_ is Node!15554) (left!42801 (right!43131 xs!286)))))))

(assert (=> d!1628272 (= (isBalanced!4416 (left!42801 (right!43131 xs!286))) e!3157340)))

(declare-fun b!5058109 () Bool)

(declare-fun res!2153840 () Bool)

(assert (=> b!5058109 (=> (not res!2153840) (not e!3157341))))

(assert (=> b!5058109 (= res!2153840 (isBalanced!4416 (left!42801 (left!42801 (right!43131 xs!286)))))))

(assert (= (and d!1628272 (not res!2153842)) b!5058105))

(assert (= (and b!5058105 res!2153839) b!5058104))

(assert (= (and b!5058104 res!2153843) b!5058109))

(assert (= (and b!5058109 res!2153840) b!5058108))

(assert (= (and b!5058108 res!2153838) b!5058106))

(assert (= (and b!5058106 res!2153841) b!5058107))

(declare-fun m!6094202 () Bool)

(assert (=> b!5058108 m!6094202))

(declare-fun m!6094204 () Bool)

(assert (=> b!5058109 m!6094204))

(declare-fun m!6094206 () Bool)

(assert (=> b!5058107 m!6094206))

(assert (=> b!5058105 m!6093284))

(assert (=> b!5058105 m!6093286))

(declare-fun m!6094208 () Bool)

(assert (=> b!5058106 m!6094208))

(assert (=> b!5058104 m!6093284))

(assert (=> b!5058104 m!6093286))

(assert (=> b!5057269 d!1628272))

(assert (=> bm!352187 d!1627654))

(declare-fun d!1628274 () Bool)

(declare-fun lt!2087687 () Bool)

(assert (=> d!1628274 (= lt!2087687 (isEmpty!31612 (list!18969 (left!42801 (right!43131 ys!41)))))))

(assert (=> d!1628274 (= lt!2087687 (= (size!39057 (left!42801 (right!43131 ys!41))) 0))))

(assert (=> d!1628274 (= (isEmpty!31610 (left!42801 (right!43131 ys!41))) lt!2087687)))

(declare-fun bs!1189470 () Bool)

(assert (= bs!1189470 d!1628274))

(assert (=> bs!1189470 m!6092540))

(assert (=> bs!1189470 m!6092540))

(declare-fun m!6094210 () Bool)

(assert (=> bs!1189470 m!6094210))

(assert (=> bs!1189470 m!6092522))

(assert (=> b!5057272 d!1628274))

(declare-fun lt!2087688 () List!58548)

(declare-fun e!3157342 () Bool)

(declare-fun b!5058113 () Bool)

(assert (=> b!5058113 (= e!3157342 (or (not (= (++!12773 (list!18969 (right!43131 (right!43131 xs!286))) (list!18969 ys!41)) Nil!58424)) (= lt!2087688 call!352195)))))

(declare-fun b!5058110 () Bool)

(declare-fun e!3157343 () List!58548)

(assert (=> b!5058110 (= e!3157343 (++!12773 (list!18969 (right!43131 (right!43131 xs!286))) (list!18969 ys!41)))))

(declare-fun b!5058111 () Bool)

(assert (=> b!5058111 (= e!3157343 (Cons!58424 (h!64872 call!352195) (++!12773 (t!371231 call!352195) (++!12773 (list!18969 (right!43131 (right!43131 xs!286))) (list!18969 ys!41)))))))

(declare-fun b!5058112 () Bool)

(declare-fun res!2153844 () Bool)

(assert (=> b!5058112 (=> (not res!2153844) (not e!3157342))))

(assert (=> b!5058112 (= res!2153844 (= (size!39055 lt!2087688) (+ (size!39055 call!352195) (size!39055 (++!12773 (list!18969 (right!43131 (right!43131 xs!286))) (list!18969 ys!41))))))))

(declare-fun d!1628276 () Bool)

(assert (=> d!1628276 e!3157342))

(declare-fun res!2153845 () Bool)

(assert (=> d!1628276 (=> (not res!2153845) (not e!3157342))))

(assert (=> d!1628276 (= res!2153845 (= (content!10411 lt!2087688) ((_ map or) (content!10411 call!352195) (content!10411 (++!12773 (list!18969 (right!43131 (right!43131 xs!286))) (list!18969 ys!41))))))))

(assert (=> d!1628276 (= lt!2087688 e!3157343)))

(declare-fun c!867867 () Bool)

(assert (=> d!1628276 (= c!867867 ((_ is Nil!58424) call!352195))))

(assert (=> d!1628276 (= (++!12773 call!352195 (++!12773 (list!18969 (right!43131 (right!43131 xs!286))) (list!18969 ys!41))) lt!2087688)))

(assert (= (and d!1628276 c!867867) b!5058110))

(assert (= (and d!1628276 (not c!867867)) b!5058111))

(assert (= (and d!1628276 res!2153845) b!5058112))

(assert (= (and b!5058112 res!2153844) b!5058113))

(assert (=> b!5058111 m!6092278))

(declare-fun m!6094212 () Bool)

(assert (=> b!5058111 m!6094212))

(declare-fun m!6094214 () Bool)

(assert (=> b!5058112 m!6094214))

(declare-fun m!6094216 () Bool)

(assert (=> b!5058112 m!6094216))

(assert (=> b!5058112 m!6092278))

(assert (=> b!5058112 m!6093786))

(declare-fun m!6094218 () Bool)

(assert (=> d!1628276 m!6094218))

(declare-fun m!6094220 () Bool)

(assert (=> d!1628276 m!6094220))

(assert (=> d!1628276 m!6092278))

(assert (=> d!1628276 m!6093790))

(assert (=> bm!352190 d!1628276))

(assert (=> b!5057265 d!1627920))

(assert (=> b!5057265 d!1627922))

(assert (=> b!5057365 d!1627888))

(assert (=> b!5057365 d!1627890))

(declare-fun d!1628278 () Bool)

(declare-fun lt!2087689 () Bool)

(assert (=> d!1628278 (= lt!2087689 (isEmpty!31612 (list!18969 (left!42801 (left!42801 lt!2087515)))))))

(assert (=> d!1628278 (= lt!2087689 (= (size!39057 (left!42801 (left!42801 lt!2087515))) 0))))

(assert (=> d!1628278 (= (isEmpty!31610 (left!42801 (left!42801 lt!2087515))) lt!2087689)))

(declare-fun bs!1189471 () Bool)

(assert (= bs!1189471 d!1628278))

(assert (=> bs!1189471 m!6092508))

(assert (=> bs!1189471 m!6092508))

(declare-fun m!6094222 () Bool)

(assert (=> bs!1189471 m!6094222))

(declare-fun m!6094224 () Bool)

(assert (=> bs!1189471 m!6094224))

(assert (=> b!5057336 d!1628278))

(declare-fun d!1628280 () Bool)

(declare-fun c!867868 () Bool)

(assert (=> d!1628280 (= c!867868 ((_ is Nil!58424) lt!2087548))))

(declare-fun e!3157344 () (InoxSet T!105048))

(assert (=> d!1628280 (= (content!10411 lt!2087548) e!3157344)))

(declare-fun b!5058114 () Bool)

(assert (=> b!5058114 (= e!3157344 ((as const (Array T!105048 Bool)) false))))

(declare-fun b!5058115 () Bool)

(assert (=> b!5058115 (= e!3157344 ((_ map or) (store ((as const (Array T!105048 Bool)) false) (h!64872 lt!2087548) true) (content!10411 (t!371231 lt!2087548))))))

(assert (= (and d!1628280 c!867868) b!5058114))

(assert (= (and d!1628280 (not c!867868)) b!5058115))

(declare-fun m!6094226 () Bool)

(assert (=> b!5058115 m!6094226))

(declare-fun m!6094228 () Bool)

(assert (=> b!5058115 m!6094228))

(assert (=> d!1627634 d!1628280))

(assert (=> d!1627634 d!1628166))

(assert (=> d!1627634 d!1627542))

(declare-fun b!5058116 () Bool)

(declare-fun e!3157345 () Bool)

(declare-fun tp!1413514 () Bool)

(assert (=> b!5058116 (= e!3157345 (and tp_is_empty!37031 tp!1413514))))

(assert (=> b!5057391 (= tp!1413456 e!3157345)))

(assert (= (and b!5057391 ((_ is Cons!58424) (innerList!15642 (xs!18888 (left!42801 (right!43131 xs!286)))))) b!5058116))

(declare-fun b!5058117 () Bool)

(declare-fun e!3157346 () Bool)

(declare-fun tp!1413515 () Bool)

(assert (=> b!5058117 (= e!3157346 (and tp_is_empty!37031 tp!1413515))))

(assert (=> b!5057402 (= tp!1413464 e!3157346)))

(assert (= (and b!5057402 ((_ is Cons!58424) (innerList!15642 (xs!18888 (left!42801 (left!42801 ys!41)))))) b!5058117))

(declare-fun e!3157347 () Bool)

(declare-fun tp!1413518 () Bool)

(declare-fun b!5058118 () Bool)

(declare-fun tp!1413516 () Bool)

(assert (=> b!5058118 (= e!3157347 (and (inv!77500 (left!42801 (left!42801 (right!43131 (left!42801 ys!41))))) tp!1413516 (inv!77500 (right!43131 (left!42801 (right!43131 (left!42801 ys!41))))) tp!1413518))))

(declare-fun b!5058120 () Bool)

(declare-fun e!3157348 () Bool)

(declare-fun tp!1413517 () Bool)

(assert (=> b!5058120 (= e!3157348 tp!1413517)))

(declare-fun b!5058119 () Bool)

(assert (=> b!5058119 (= e!3157347 (and (inv!77501 (xs!18888 (left!42801 (right!43131 (left!42801 ys!41))))) e!3157348))))

(assert (=> b!5057406 (= tp!1413466 (and (inv!77500 (left!42801 (right!43131 (left!42801 ys!41)))) e!3157347))))

(assert (= (and b!5057406 ((_ is Node!15554) (left!42801 (right!43131 (left!42801 ys!41))))) b!5058118))

(assert (= b!5058119 b!5058120))

(assert (= (and b!5057406 ((_ is Leaf!25836) (left!42801 (right!43131 (left!42801 ys!41))))) b!5058119))

(declare-fun m!6094230 () Bool)

(assert (=> b!5058118 m!6094230))

(declare-fun m!6094232 () Bool)

(assert (=> b!5058118 m!6094232))

(declare-fun m!6094234 () Bool)

(assert (=> b!5058119 m!6094234))

(assert (=> b!5057406 m!6092810))

(declare-fun tp!1413519 () Bool)

(declare-fun b!5058121 () Bool)

(declare-fun tp!1413521 () Bool)

(declare-fun e!3157349 () Bool)

(assert (=> b!5058121 (= e!3157349 (and (inv!77500 (left!42801 (right!43131 (right!43131 (left!42801 ys!41))))) tp!1413519 (inv!77500 (right!43131 (right!43131 (right!43131 (left!42801 ys!41))))) tp!1413521))))

(declare-fun b!5058123 () Bool)

(declare-fun e!3157350 () Bool)

(declare-fun tp!1413520 () Bool)

(assert (=> b!5058123 (= e!3157350 tp!1413520)))

(declare-fun b!5058122 () Bool)

(assert (=> b!5058122 (= e!3157349 (and (inv!77501 (xs!18888 (right!43131 (right!43131 (left!42801 ys!41))))) e!3157350))))

(assert (=> b!5057406 (= tp!1413468 (and (inv!77500 (right!43131 (right!43131 (left!42801 ys!41)))) e!3157349))))

(assert (= (and b!5057406 ((_ is Node!15554) (right!43131 (right!43131 (left!42801 ys!41))))) b!5058121))

(assert (= b!5058122 b!5058123))

(assert (= (and b!5057406 ((_ is Leaf!25836) (right!43131 (right!43131 (left!42801 ys!41))))) b!5058122))

(declare-fun m!6094236 () Bool)

(assert (=> b!5058121 m!6094236))

(declare-fun m!6094238 () Bool)

(assert (=> b!5058121 m!6094238))

(declare-fun m!6094240 () Bool)

(assert (=> b!5058122 m!6094240))

(assert (=> b!5057406 m!6092812))

(declare-fun b!5058124 () Bool)

(declare-fun e!3157351 () Bool)

(declare-fun tp!1413522 () Bool)

(assert (=> b!5058124 (= e!3157351 (and tp_is_empty!37031 tp!1413522))))

(assert (=> b!5057408 (= tp!1413467 e!3157351)))

(assert (= (and b!5057408 ((_ is Cons!58424) (innerList!15642 (xs!18888 (right!43131 (left!42801 ys!41)))))) b!5058124))

(declare-fun b!5058125 () Bool)

(declare-fun e!3157352 () Bool)

(declare-fun tp!1413523 () Bool)

(assert (=> b!5058125 (= e!3157352 (and tp_is_empty!37031 tp!1413523))))

(assert (=> b!5057388 (= tp!1413454 e!3157352)))

(assert (= (and b!5057388 ((_ is Cons!58424) (t!371231 (innerList!15642 (xs!18888 (left!42801 ys!41)))))) b!5058125))

(declare-fun b!5058126 () Bool)

(declare-fun e!3157353 () Bool)

(declare-fun tp!1413524 () Bool)

(assert (=> b!5058126 (= e!3157353 (and tp_is_empty!37031 tp!1413524))))

(assert (=> b!5057399 (= tp!1413462 e!3157353)))

(assert (= (and b!5057399 ((_ is Cons!58424) (t!371231 (innerList!15642 (xs!18888 (left!42801 xs!286)))))) b!5058126))

(declare-fun b!5058127 () Bool)

(declare-fun e!3157354 () Bool)

(declare-fun tp!1413525 () Bool)

(assert (=> b!5058127 (= e!3157354 (and tp_is_empty!37031 tp!1413525))))

(assert (=> b!5057422 (= tp!1413481 e!3157354)))

(assert (= (and b!5057422 ((_ is Cons!58424) (innerList!15642 (xs!18888 (right!43131 (right!43131 ys!41)))))) b!5058127))

(declare-fun b!5058128 () Bool)

(declare-fun e!3157355 () Bool)

(declare-fun tp!1413526 () Bool)

(assert (=> b!5058128 (= e!3157355 (and tp_is_empty!37031 tp!1413526))))

(assert (=> b!5057415 (= tp!1413474 e!3157355)))

(assert (= (and b!5057415 ((_ is Cons!58424) (innerList!15642 (xs!18888 (right!43131 (left!42801 xs!286)))))) b!5058128))

(declare-fun b!5058129 () Bool)

(declare-fun e!3157356 () Bool)

(declare-fun tp!1413527 () Bool)

(assert (=> b!5058129 (= e!3157356 (and tp_is_empty!37031 tp!1413527))))

(assert (=> b!5057397 (= tp!1413459 e!3157356)))

(assert (= (and b!5057397 ((_ is Cons!58424) (innerList!15642 (xs!18888 (right!43131 (right!43131 xs!286)))))) b!5058129))

(declare-fun tp!1413528 () Bool)

(declare-fun b!5058130 () Bool)

(declare-fun e!3157357 () Bool)

(declare-fun tp!1413530 () Bool)

(assert (=> b!5058130 (= e!3157357 (and (inv!77500 (left!42801 (left!42801 (left!42801 (left!42801 ys!41))))) tp!1413528 (inv!77500 (right!43131 (left!42801 (left!42801 (left!42801 ys!41))))) tp!1413530))))

(declare-fun b!5058132 () Bool)

(declare-fun e!3157358 () Bool)

(declare-fun tp!1413529 () Bool)

(assert (=> b!5058132 (= e!3157358 tp!1413529)))

(declare-fun b!5058131 () Bool)

(assert (=> b!5058131 (= e!3157357 (and (inv!77501 (xs!18888 (left!42801 (left!42801 (left!42801 ys!41))))) e!3157358))))

(assert (=> b!5057400 (= tp!1413463 (and (inv!77500 (left!42801 (left!42801 (left!42801 ys!41)))) e!3157357))))

(assert (= (and b!5057400 ((_ is Node!15554) (left!42801 (left!42801 (left!42801 ys!41))))) b!5058130))

(assert (= b!5058131 b!5058132))

(assert (= (and b!5057400 ((_ is Leaf!25836) (left!42801 (left!42801 (left!42801 ys!41))))) b!5058131))

(declare-fun m!6094242 () Bool)

(assert (=> b!5058130 m!6094242))

(declare-fun m!6094244 () Bool)

(assert (=> b!5058130 m!6094244))

(declare-fun m!6094246 () Bool)

(assert (=> b!5058131 m!6094246))

(assert (=> b!5057400 m!6092800))

(declare-fun e!3157359 () Bool)

(declare-fun tp!1413531 () Bool)

(declare-fun b!5058133 () Bool)

(declare-fun tp!1413533 () Bool)

(assert (=> b!5058133 (= e!3157359 (and (inv!77500 (left!42801 (right!43131 (left!42801 (left!42801 ys!41))))) tp!1413531 (inv!77500 (right!43131 (right!43131 (left!42801 (left!42801 ys!41))))) tp!1413533))))

(declare-fun b!5058135 () Bool)

(declare-fun e!3157360 () Bool)

(declare-fun tp!1413532 () Bool)

(assert (=> b!5058135 (= e!3157360 tp!1413532)))

(declare-fun b!5058134 () Bool)

(assert (=> b!5058134 (= e!3157359 (and (inv!77501 (xs!18888 (right!43131 (left!42801 (left!42801 ys!41))))) e!3157360))))

(assert (=> b!5057400 (= tp!1413465 (and (inv!77500 (right!43131 (left!42801 (left!42801 ys!41)))) e!3157359))))

(assert (= (and b!5057400 ((_ is Node!15554) (right!43131 (left!42801 (left!42801 ys!41))))) b!5058133))

(assert (= b!5058134 b!5058135))

(assert (= (and b!5057400 ((_ is Leaf!25836) (right!43131 (left!42801 (left!42801 ys!41))))) b!5058134))

(declare-fun m!6094248 () Bool)

(assert (=> b!5058133 m!6094248))

(declare-fun m!6094250 () Bool)

(assert (=> b!5058133 m!6094250))

(declare-fun m!6094252 () Bool)

(assert (=> b!5058134 m!6094252))

(assert (=> b!5057400 m!6092802))

(declare-fun tp!1413536 () Bool)

(declare-fun tp!1413534 () Bool)

(declare-fun b!5058136 () Bool)

(declare-fun e!3157361 () Bool)

(assert (=> b!5058136 (= e!3157361 (and (inv!77500 (left!42801 (left!42801 (right!43131 (right!43131 ys!41))))) tp!1413534 (inv!77500 (right!43131 (left!42801 (right!43131 (right!43131 ys!41))))) tp!1413536))))

(declare-fun b!5058138 () Bool)

(declare-fun e!3157362 () Bool)

(declare-fun tp!1413535 () Bool)

(assert (=> b!5058138 (= e!3157362 tp!1413535)))

(declare-fun b!5058137 () Bool)

(assert (=> b!5058137 (= e!3157361 (and (inv!77501 (xs!18888 (left!42801 (right!43131 (right!43131 ys!41))))) e!3157362))))

(assert (=> b!5057420 (= tp!1413480 (and (inv!77500 (left!42801 (right!43131 (right!43131 ys!41)))) e!3157361))))

(assert (= (and b!5057420 ((_ is Node!15554) (left!42801 (right!43131 (right!43131 ys!41))))) b!5058136))

(assert (= b!5058137 b!5058138))

(assert (= (and b!5057420 ((_ is Leaf!25836) (left!42801 (right!43131 (right!43131 ys!41))))) b!5058137))

(declare-fun m!6094254 () Bool)

(assert (=> b!5058136 m!6094254))

(declare-fun m!6094256 () Bool)

(assert (=> b!5058136 m!6094256))

(declare-fun m!6094258 () Bool)

(assert (=> b!5058137 m!6094258))

(assert (=> b!5057420 m!6092836))

(declare-fun tp!1413537 () Bool)

(declare-fun b!5058139 () Bool)

(declare-fun e!3157363 () Bool)

(declare-fun tp!1413539 () Bool)

(assert (=> b!5058139 (= e!3157363 (and (inv!77500 (left!42801 (right!43131 (right!43131 (right!43131 ys!41))))) tp!1413537 (inv!77500 (right!43131 (right!43131 (right!43131 (right!43131 ys!41))))) tp!1413539))))

(declare-fun b!5058141 () Bool)

(declare-fun e!3157364 () Bool)

(declare-fun tp!1413538 () Bool)

(assert (=> b!5058141 (= e!3157364 tp!1413538)))

(declare-fun b!5058140 () Bool)

(assert (=> b!5058140 (= e!3157363 (and (inv!77501 (xs!18888 (right!43131 (right!43131 (right!43131 ys!41))))) e!3157364))))

(assert (=> b!5057420 (= tp!1413482 (and (inv!77500 (right!43131 (right!43131 (right!43131 ys!41)))) e!3157363))))

(assert (= (and b!5057420 ((_ is Node!15554) (right!43131 (right!43131 (right!43131 ys!41))))) b!5058139))

(assert (= b!5058140 b!5058141))

(assert (= (and b!5057420 ((_ is Leaf!25836) (right!43131 (right!43131 (right!43131 ys!41))))) b!5058140))

(declare-fun m!6094260 () Bool)

(assert (=> b!5058139 m!6094260))

(declare-fun m!6094262 () Bool)

(assert (=> b!5058139 m!6094262))

(declare-fun m!6094264 () Bool)

(assert (=> b!5058140 m!6094264))

(assert (=> b!5057420 m!6092838))

(declare-fun b!5058142 () Bool)

(declare-fun e!3157365 () Bool)

(declare-fun tp!1413540 () Bool)

(assert (=> b!5058142 (= e!3157365 (and tp_is_empty!37031 tp!1413540))))

(assert (=> b!5057412 (= tp!1413471 e!3157365)))

(assert (= (and b!5057412 ((_ is Cons!58424) (innerList!15642 (xs!18888 (left!42801 (left!42801 xs!286)))))) b!5058142))

(declare-fun b!5058143 () Bool)

(declare-fun e!3157366 () Bool)

(declare-fun tp!1413541 () Bool)

(assert (=> b!5058143 (= e!3157366 (and tp_is_empty!37031 tp!1413541))))

(assert (=> b!5057416 (= tp!1413476 e!3157366)))

(assert (= (and b!5057416 ((_ is Cons!58424) (t!371231 (innerList!15642 (xs!18888 (right!43131 xs!286)))))) b!5058143))

(declare-fun b!5058144 () Bool)

(declare-fun e!3157367 () Bool)

(declare-fun tp!1413542 () Bool)

(declare-fun tp!1413544 () Bool)

(assert (=> b!5058144 (= e!3157367 (and (inv!77500 (left!42801 (left!42801 (left!42801 (right!43131 xs!286))))) tp!1413542 (inv!77500 (right!43131 (left!42801 (left!42801 (right!43131 xs!286))))) tp!1413544))))

(declare-fun b!5058146 () Bool)

(declare-fun e!3157368 () Bool)

(declare-fun tp!1413543 () Bool)

(assert (=> b!5058146 (= e!3157368 tp!1413543)))

(declare-fun b!5058145 () Bool)

(assert (=> b!5058145 (= e!3157367 (and (inv!77501 (xs!18888 (left!42801 (left!42801 (right!43131 xs!286))))) e!3157368))))

(assert (=> b!5057389 (= tp!1413455 (and (inv!77500 (left!42801 (left!42801 (right!43131 xs!286)))) e!3157367))))

(assert (= (and b!5057389 ((_ is Node!15554) (left!42801 (left!42801 (right!43131 xs!286))))) b!5058144))

(assert (= b!5058145 b!5058146))

(assert (= (and b!5057389 ((_ is Leaf!25836) (left!42801 (left!42801 (right!43131 xs!286))))) b!5058145))

(declare-fun m!6094266 () Bool)

(assert (=> b!5058144 m!6094266))

(declare-fun m!6094268 () Bool)

(assert (=> b!5058144 m!6094268))

(declare-fun m!6094270 () Bool)

(assert (=> b!5058145 m!6094270))

(assert (=> b!5057389 m!6092778))

(declare-fun b!5058147 () Bool)

(declare-fun tp!1413545 () Bool)

(declare-fun tp!1413547 () Bool)

(declare-fun e!3157369 () Bool)

(assert (=> b!5058147 (= e!3157369 (and (inv!77500 (left!42801 (right!43131 (left!42801 (right!43131 xs!286))))) tp!1413545 (inv!77500 (right!43131 (right!43131 (left!42801 (right!43131 xs!286))))) tp!1413547))))

(declare-fun b!5058149 () Bool)

(declare-fun e!3157370 () Bool)

(declare-fun tp!1413546 () Bool)

(assert (=> b!5058149 (= e!3157370 tp!1413546)))

(declare-fun b!5058148 () Bool)

(assert (=> b!5058148 (= e!3157369 (and (inv!77501 (xs!18888 (right!43131 (left!42801 (right!43131 xs!286))))) e!3157370))))

(assert (=> b!5057389 (= tp!1413457 (and (inv!77500 (right!43131 (left!42801 (right!43131 xs!286)))) e!3157369))))

(assert (= (and b!5057389 ((_ is Node!15554) (right!43131 (left!42801 (right!43131 xs!286))))) b!5058147))

(assert (= b!5058148 b!5058149))

(assert (= (and b!5057389 ((_ is Leaf!25836) (right!43131 (left!42801 (right!43131 xs!286))))) b!5058148))

(declare-fun m!6094272 () Bool)

(assert (=> b!5058147 m!6094272))

(declare-fun m!6094274 () Bool)

(assert (=> b!5058147 m!6094274))

(declare-fun m!6094276 () Bool)

(assert (=> b!5058148 m!6094276))

(assert (=> b!5057389 m!6092780))

(declare-fun tp!1413548 () Bool)

(declare-fun e!3157371 () Bool)

(declare-fun tp!1413550 () Bool)

(declare-fun b!5058150 () Bool)

(assert (=> b!5058150 (= e!3157371 (and (inv!77500 (left!42801 (left!42801 (right!43131 (left!42801 xs!286))))) tp!1413548 (inv!77500 (right!43131 (left!42801 (right!43131 (left!42801 xs!286))))) tp!1413550))))

(declare-fun b!5058152 () Bool)

(declare-fun e!3157372 () Bool)

(declare-fun tp!1413549 () Bool)

(assert (=> b!5058152 (= e!3157372 tp!1413549)))

(declare-fun b!5058151 () Bool)

(assert (=> b!5058151 (= e!3157371 (and (inv!77501 (xs!18888 (left!42801 (right!43131 (left!42801 xs!286))))) e!3157372))))

(assert (=> b!5057413 (= tp!1413473 (and (inv!77500 (left!42801 (right!43131 (left!42801 xs!286)))) e!3157371))))

(assert (= (and b!5057413 ((_ is Node!15554) (left!42801 (right!43131 (left!42801 xs!286))))) b!5058150))

(assert (= b!5058151 b!5058152))

(assert (= (and b!5057413 ((_ is Leaf!25836) (left!42801 (right!43131 (left!42801 xs!286))))) b!5058151))

(declare-fun m!6094278 () Bool)

(assert (=> b!5058150 m!6094278))

(declare-fun m!6094280 () Bool)

(assert (=> b!5058150 m!6094280))

(declare-fun m!6094282 () Bool)

(assert (=> b!5058151 m!6094282))

(assert (=> b!5057413 m!6092824))

(declare-fun tp!1413553 () Bool)

(declare-fun tp!1413551 () Bool)

(declare-fun b!5058153 () Bool)

(declare-fun e!3157373 () Bool)

(assert (=> b!5058153 (= e!3157373 (and (inv!77500 (left!42801 (right!43131 (right!43131 (left!42801 xs!286))))) tp!1413551 (inv!77500 (right!43131 (right!43131 (right!43131 (left!42801 xs!286))))) tp!1413553))))

(declare-fun b!5058155 () Bool)

(declare-fun e!3157374 () Bool)

(declare-fun tp!1413552 () Bool)

(assert (=> b!5058155 (= e!3157374 tp!1413552)))

(declare-fun b!5058154 () Bool)

(assert (=> b!5058154 (= e!3157373 (and (inv!77501 (xs!18888 (right!43131 (right!43131 (left!42801 xs!286))))) e!3157374))))

(assert (=> b!5057413 (= tp!1413475 (and (inv!77500 (right!43131 (right!43131 (left!42801 xs!286)))) e!3157373))))

(assert (= (and b!5057413 ((_ is Node!15554) (right!43131 (right!43131 (left!42801 xs!286))))) b!5058153))

(assert (= b!5058154 b!5058155))

(assert (= (and b!5057413 ((_ is Leaf!25836) (right!43131 (right!43131 (left!42801 xs!286))))) b!5058154))

(declare-fun m!6094284 () Bool)

(assert (=> b!5058153 m!6094284))

(declare-fun m!6094286 () Bool)

(assert (=> b!5058153 m!6094286))

(declare-fun m!6094288 () Bool)

(assert (=> b!5058154 m!6094288))

(assert (=> b!5057413 m!6092826))

(declare-fun b!5058156 () Bool)

(declare-fun tp!1413554 () Bool)

(declare-fun tp!1413556 () Bool)

(declare-fun e!3157375 () Bool)

(assert (=> b!5058156 (= e!3157375 (and (inv!77500 (left!42801 (left!42801 (right!43131 (right!43131 xs!286))))) tp!1413554 (inv!77500 (right!43131 (left!42801 (right!43131 (right!43131 xs!286))))) tp!1413556))))

(declare-fun b!5058158 () Bool)

(declare-fun e!3157376 () Bool)

(declare-fun tp!1413555 () Bool)

(assert (=> b!5058158 (= e!3157376 tp!1413555)))

(declare-fun b!5058157 () Bool)

(assert (=> b!5058157 (= e!3157375 (and (inv!77501 (xs!18888 (left!42801 (right!43131 (right!43131 xs!286))))) e!3157376))))

(assert (=> b!5057395 (= tp!1413458 (and (inv!77500 (left!42801 (right!43131 (right!43131 xs!286)))) e!3157375))))

(assert (= (and b!5057395 ((_ is Node!15554) (left!42801 (right!43131 (right!43131 xs!286))))) b!5058156))

(assert (= b!5058157 b!5058158))

(assert (= (and b!5057395 ((_ is Leaf!25836) (left!42801 (right!43131 (right!43131 xs!286))))) b!5058157))

(declare-fun m!6094290 () Bool)

(assert (=> b!5058156 m!6094290))

(declare-fun m!6094292 () Bool)

(assert (=> b!5058156 m!6094292))

(declare-fun m!6094294 () Bool)

(assert (=> b!5058157 m!6094294))

(assert (=> b!5057395 m!6092792))

(declare-fun b!5058159 () Bool)

(declare-fun e!3157377 () Bool)

(declare-fun tp!1413559 () Bool)

(declare-fun tp!1413557 () Bool)

(assert (=> b!5058159 (= e!3157377 (and (inv!77500 (left!42801 (right!43131 (right!43131 (right!43131 xs!286))))) tp!1413557 (inv!77500 (right!43131 (right!43131 (right!43131 (right!43131 xs!286))))) tp!1413559))))

(declare-fun b!5058161 () Bool)

(declare-fun e!3157378 () Bool)

(declare-fun tp!1413558 () Bool)

(assert (=> b!5058161 (= e!3157378 tp!1413558)))

(declare-fun b!5058160 () Bool)

(assert (=> b!5058160 (= e!3157377 (and (inv!77501 (xs!18888 (right!43131 (right!43131 (right!43131 xs!286))))) e!3157378))))

(assert (=> b!5057395 (= tp!1413460 (and (inv!77500 (right!43131 (right!43131 (right!43131 xs!286)))) e!3157377))))

(assert (= (and b!5057395 ((_ is Node!15554) (right!43131 (right!43131 (right!43131 xs!286))))) b!5058159))

(assert (= b!5058160 b!5058161))

(assert (= (and b!5057395 ((_ is Leaf!25836) (right!43131 (right!43131 (right!43131 xs!286))))) b!5058160))

(declare-fun m!6094296 () Bool)

(assert (=> b!5058159 m!6094296))

(declare-fun m!6094298 () Bool)

(assert (=> b!5058159 m!6094298))

(declare-fun m!6094300 () Bool)

(assert (=> b!5058160 m!6094300))

(assert (=> b!5057395 m!6092794))

(declare-fun b!5058162 () Bool)

(declare-fun e!3157379 () Bool)

(declare-fun tp!1413560 () Bool)

(assert (=> b!5058162 (= e!3157379 (and tp_is_empty!37031 tp!1413560))))

(assert (=> b!5057398 (= tp!1413461 e!3157379)))

(assert (= (and b!5057398 ((_ is Cons!58424) (t!371231 (t!371231 (innerList!15642 (xs!18888 xs!286)))))) b!5058162))

(declare-fun b!5058163 () Bool)

(declare-fun e!3157380 () Bool)

(declare-fun tp!1413561 () Bool)

(assert (=> b!5058163 (= e!3157380 (and tp_is_empty!37031 tp!1413561))))

(assert (=> b!5057423 (= tp!1413483 e!3157380)))

(assert (= (and b!5057423 ((_ is Cons!58424) (t!371231 (t!371231 (innerList!15642 (xs!18888 ys!41)))))) b!5058163))

(declare-fun tp!1413562 () Bool)

(declare-fun tp!1413564 () Bool)

(declare-fun b!5058164 () Bool)

(declare-fun e!3157381 () Bool)

(assert (=> b!5058164 (= e!3157381 (and (inv!77500 (left!42801 (left!42801 (left!42801 (right!43131 ys!41))))) tp!1413562 (inv!77500 (right!43131 (left!42801 (left!42801 (right!43131 ys!41))))) tp!1413564))))

(declare-fun b!5058166 () Bool)

(declare-fun e!3157382 () Bool)

(declare-fun tp!1413563 () Bool)

(assert (=> b!5058166 (= e!3157382 tp!1413563)))

(declare-fun b!5058165 () Bool)

(assert (=> b!5058165 (= e!3157381 (and (inv!77501 (xs!18888 (left!42801 (left!42801 (right!43131 ys!41))))) e!3157382))))

(assert (=> b!5057417 (= tp!1413477 (and (inv!77500 (left!42801 (left!42801 (right!43131 ys!41)))) e!3157381))))

(assert (= (and b!5057417 ((_ is Node!15554) (left!42801 (left!42801 (right!43131 ys!41))))) b!5058164))

(assert (= b!5058165 b!5058166))

(assert (= (and b!5057417 ((_ is Leaf!25836) (left!42801 (left!42801 (right!43131 ys!41))))) b!5058165))

(declare-fun m!6094302 () Bool)

(assert (=> b!5058164 m!6094302))

(declare-fun m!6094304 () Bool)

(assert (=> b!5058164 m!6094304))

(declare-fun m!6094306 () Bool)

(assert (=> b!5058165 m!6094306))

(assert (=> b!5057417 m!6092830))

(declare-fun tp!1413565 () Bool)

(declare-fun b!5058167 () Bool)

(declare-fun e!3157383 () Bool)

(declare-fun tp!1413567 () Bool)

(assert (=> b!5058167 (= e!3157383 (and (inv!77500 (left!42801 (right!43131 (left!42801 (right!43131 ys!41))))) tp!1413565 (inv!77500 (right!43131 (right!43131 (left!42801 (right!43131 ys!41))))) tp!1413567))))

(declare-fun b!5058169 () Bool)

(declare-fun e!3157384 () Bool)

(declare-fun tp!1413566 () Bool)

(assert (=> b!5058169 (= e!3157384 tp!1413566)))

(declare-fun b!5058168 () Bool)

(assert (=> b!5058168 (= e!3157383 (and (inv!77501 (xs!18888 (right!43131 (left!42801 (right!43131 ys!41))))) e!3157384))))

(assert (=> b!5057417 (= tp!1413479 (and (inv!77500 (right!43131 (left!42801 (right!43131 ys!41)))) e!3157383))))

(assert (= (and b!5057417 ((_ is Node!15554) (right!43131 (left!42801 (right!43131 ys!41))))) b!5058167))

(assert (= b!5058168 b!5058169))

(assert (= (and b!5057417 ((_ is Leaf!25836) (right!43131 (left!42801 (right!43131 ys!41))))) b!5058168))

(declare-fun m!6094308 () Bool)

(assert (=> b!5058167 m!6094308))

(declare-fun m!6094310 () Bool)

(assert (=> b!5058167 m!6094310))

(declare-fun m!6094312 () Bool)

(assert (=> b!5058168 m!6094312))

(assert (=> b!5057417 m!6092832))

(declare-fun b!5058170 () Bool)

(declare-fun e!3157385 () Bool)

(declare-fun tp!1413568 () Bool)

(assert (=> b!5058170 (= e!3157385 (and tp_is_empty!37031 tp!1413568))))

(assert (=> b!5057419 (= tp!1413478 e!3157385)))

(assert (= (and b!5057419 ((_ is Cons!58424) (innerList!15642 (xs!18888 (left!42801 (right!43131 ys!41)))))) b!5058170))

(declare-fun b!5058171 () Bool)

(declare-fun e!3157386 () Bool)

(declare-fun tp!1413569 () Bool)

(assert (=> b!5058171 (= e!3157386 (and tp_is_empty!37031 tp!1413569))))

(assert (=> b!5057409 (= tp!1413469 e!3157386)))

(assert (= (and b!5057409 ((_ is Cons!58424) (t!371231 (innerList!15642 (xs!18888 (right!43131 ys!41)))))) b!5058171))

(declare-fun e!3157387 () Bool)

(declare-fun tp!1413570 () Bool)

(declare-fun tp!1413572 () Bool)

(declare-fun b!5058172 () Bool)

(assert (=> b!5058172 (= e!3157387 (and (inv!77500 (left!42801 (left!42801 (left!42801 (left!42801 xs!286))))) tp!1413570 (inv!77500 (right!43131 (left!42801 (left!42801 (left!42801 xs!286))))) tp!1413572))))

(declare-fun b!5058174 () Bool)

(declare-fun e!3157388 () Bool)

(declare-fun tp!1413571 () Bool)

(assert (=> b!5058174 (= e!3157388 tp!1413571)))

(declare-fun b!5058173 () Bool)

(assert (=> b!5058173 (= e!3157387 (and (inv!77501 (xs!18888 (left!42801 (left!42801 (left!42801 xs!286))))) e!3157388))))

(assert (=> b!5057410 (= tp!1413470 (and (inv!77500 (left!42801 (left!42801 (left!42801 xs!286)))) e!3157387))))

(assert (= (and b!5057410 ((_ is Node!15554) (left!42801 (left!42801 (left!42801 xs!286))))) b!5058172))

(assert (= b!5058173 b!5058174))

(assert (= (and b!5057410 ((_ is Leaf!25836) (left!42801 (left!42801 (left!42801 xs!286))))) b!5058173))

(declare-fun m!6094314 () Bool)

(assert (=> b!5058172 m!6094314))

(declare-fun m!6094316 () Bool)

(assert (=> b!5058172 m!6094316))

(declare-fun m!6094318 () Bool)

(assert (=> b!5058173 m!6094318))

(assert (=> b!5057410 m!6092818))

(declare-fun b!5058175 () Bool)

(declare-fun e!3157389 () Bool)

(declare-fun tp!1413575 () Bool)

(declare-fun tp!1413573 () Bool)

(assert (=> b!5058175 (= e!3157389 (and (inv!77500 (left!42801 (right!43131 (left!42801 (left!42801 xs!286))))) tp!1413573 (inv!77500 (right!43131 (right!43131 (left!42801 (left!42801 xs!286))))) tp!1413575))))

(declare-fun b!5058177 () Bool)

(declare-fun e!3157390 () Bool)

(declare-fun tp!1413574 () Bool)

(assert (=> b!5058177 (= e!3157390 tp!1413574)))

(declare-fun b!5058176 () Bool)

(assert (=> b!5058176 (= e!3157389 (and (inv!77501 (xs!18888 (right!43131 (left!42801 (left!42801 xs!286))))) e!3157390))))

(assert (=> b!5057410 (= tp!1413472 (and (inv!77500 (right!43131 (left!42801 (left!42801 xs!286)))) e!3157389))))

(assert (= (and b!5057410 ((_ is Node!15554) (right!43131 (left!42801 (left!42801 xs!286))))) b!5058175))

(assert (= b!5058176 b!5058177))

(assert (= (and b!5057410 ((_ is Leaf!25836) (right!43131 (left!42801 (left!42801 xs!286))))) b!5058176))

(declare-fun m!6094320 () Bool)

(assert (=> b!5058175 m!6094320))

(declare-fun m!6094322 () Bool)

(assert (=> b!5058175 m!6094322))

(declare-fun m!6094324 () Bool)

(assert (=> b!5058176 m!6094324))

(assert (=> b!5057410 m!6092820))

(check-sat (not b!5058014) (not b!5057643) (not d!1628008) (not d!1628266) (not b!5057681) (not b!5057797) (not b!5058124) (not b!5057822) (not b!5058130) (not b!5057911) (not d!1628276) (not b!5057742) (not d!1628218) (not d!1628032) (not b!5057843) (not b!5057651) (not b!5058143) (not d!1628256) (not d!1628212) (not b!5058054) (not b!5057813) (not b!5057699) (not b!5057707) (not b!5057848) (not b!5057819) (not b!5057654) (not b!5057841) (not b!5058039) (not b!5057851) (not d!1628146) (not d!1628156) (not b!5057673) (not b!5057672) (not b!5058019) (not b!5058072) (not b!5058009) (not b!5057751) (not b!5057811) (not b!5058047) (not b!5057925) (not b!5058137) (not b!5057706) (not d!1628004) (not d!1628260) (not b!5057824) (not b!5058055) (not b!5057701) (not b!5058074) (not b!5057990) (not b!5057985) (not bm!352235) (not bm!352234) (not b!5057984) (not bm!352225) (not b!5057787) (not b!5057866) (not b!5057940) (not b!5058148) (not b!5057656) (not d!1628102) (not b!5058094) (not b!5057917) (not b!5058034) (not b!5057913) (not b!5057389) (not b!5058093) (not b!5057877) (not b!5058021) (not b!5057842) (not b!5057960) (not d!1627960) (not b!5057859) (not b!5058031) (not b!5057726) (not bm!352229) (not b!5058134) (not d!1628246) (not bm!352237) (not b!5058162) (not b!5057745) (not b!5057774) (not b!5058173) (not d!1628044) (not b!5057982) (not b!5057761) (not b!5057645) (not d!1628128) (not d!1627882) (not b!5058104) (not b!5057870) (not b!5057660) (not d!1628012) (not d!1628082) (not b!5057934) (not b!5058122) (not b!5057678) (not b!5057974) (not b!5057938) (not b!5057862) (not bm!352227) (not b!5058002) (not b!5057695) (not d!1628274) (not b!5057697) (not b!5057952) (not b!5057939) (not b!5057750) (not b!5057821) (not d!1627984) (not b!5057395) (not b!5057856) (not b!5058099) (not b!5057887) (not b!5057970) (not b!5058010) (not b!5057796) (not d!1628186) (not b!5057864) (not b!5057657) (not d!1628042) (not d!1628158) (not b!5057669) (not d!1628066) (not b!5057682) (not b!5057749) (not b!5057765) (not b!5057792) (not b!5058033) (not d!1628148) (not bm!352236) (not b!5058161) (not b!5058005) (not b!5057717) (not b!5057668) (not b!5058149) (not d!1627864) (not b!5057756) (not b!5057847) (not d!1628230) (not b!5058135) (not b!5057907) (not bm!352248) (not b!5058165) (not b!5057975) (not b!5057833) (not d!1627886) (not d!1628108) (not b!5057698) (not b!5057748) (not b!5057978) (not b!5057817) (not b!5057815) (not b!5058160) (not b!5058098) (not b!5057860) (not b!5057801) (not b!5058159) (not b!5057655) (not b!5058059) (not b!5057777) (not b!5057769) (not b!5057788) (not b!5057903) (not b!5057685) (not b!5057753) (not b!5057791) (not b!5057417) (not b!5057926) (not b!5058108) (not d!1628136) (not b!5058169) (not bm!352230) (not b!5057858) (not b!5058144) (not b!5058102) (not bm!352231) (not b!5058049) (not d!1627846) (not b!5058058) (not b!5057897) (not bm!352239) (not b!5057918) (not d!1628114) (not b!5057989) (not b!5058015) (not b!5057793) (not b!5058016) (not b!5057696) (not b!5058117) (not b!5058154) (not b!5057929) (not d!1628110) (not b!5057840) (not b!5057674) (not b!5057406) (not b!5058171) (not d!1628062) (not b!5058077) (not b!5057935) (not b!5057827) (not bm!352247) (not b!5057712) (not b!5058147) (not b!5057746) (not bm!352242) (not b!5058138) (not b!5057942) (not b!5058123) (not d!1628120) (not b!5057818) (not b!5057830) (not d!1628248) (not b!5057854) (not bm!352244) (not b!5057915) (not b!5057770) (not b!5057693) (not d!1628192) (not d!1628024) (not b!5058050) (not d!1628028) (not d!1627986) (not b!5057805) (not b!5057704) (not b!5058155) (not b!5058036) (not b!5058132) (not bm!352243) (not b!5057987) (not d!1628188) (not b!5057757) (not b!5058082) (not b!5057752) (not b!5057700) (not b!5058177) (not d!1628160) (not b!5057971) (not d!1628048) (not d!1628238) (not d!1628118) (not d!1627932) (not d!1628190) (not b!5057781) (not b!5057889) (not b!5058030) (not b!5057835) (not b!5057675) (not b!5057954) (not b!5058012) (not b!5057873) (not b!5057890) (not b!5057711) (not b!5057920) (not b!5057900) (not b!5057861) (not b!5058107) (not b!5058076) (not b!5057731) (not b!5058164) (not b!5057844) (not b!5058139) (not b!5057420) (not b!5058133) (not b!5058006) (not b!5057863) (not b!5058063) (not b!5057806) (not b!5057814) (not b!5058125) (not b!5058087) (not d!1628152) (not b!5057816) (not b!5057884) (not d!1628078) (not b!5058067) (not b!5057876) (not b!5058150) (not d!1627848) (not b!5058156) (not b!5057686) (not d!1628076) (not d!1627870) (not b!5057719) (not b!5058121) (not b!5057898) (not b!5058045) (not b!5057888) (not b!5057930) (not b!5057676) (not d!1628198) (not b!5057663) (not b!5057703) (not b!5057783) (not b!5057802) (not b!5057947) (not b!5057874) (not b!5057993) (not b!5058152) (not b!5057772) (not b!5058176) (not b!5058120) (not b!5058163) (not bm!352241) (not bm!352238) (not b!5057828) (not b!5057780) (not b!5057646) (not b!5058157) (not b!5057789) (not d!1628214) (not b!5057729) (not b!5058119) (not b!5058071) (not b!5057909) (not b!5057845) (not b!5057689) (not b!5057964) (not b!5057999) (not d!1628278) (not d!1627868) (not d!1627930) (not b!5057961) (not bm!352245) (not b!5058112) (not d!1628074) (not bm!352228) (not bm!352232) (not b!5057653) (not d!1628208) (not d!1628250) (not b!5058026) (not b!5058068) (not d!1628258) (not b!5057880) (not b!5057894) (not b!5058027) (not d!1628236) (not b!5057838) (not b!5057715) (not d!1628162) (not b!5057692) (not b!5058079) (not d!1627926) (not b!5057997) (not b!5058141) (not b!5057943) (not b!5057720) (not d!1627996) (not d!1628030) (not b!5057747) (not b!5057882) (not b!5057732) (not b!5058170) (not d!1627912) (not b!5058109) (not d!1628122) (not b!5058172) (not b!5058127) (not b!5057709) (not b!5058142) (not d!1628194) (not b!5057734) (not b!5058105) (not d!1627878) (not d!1628204) (not b!5058175) (not b!5057867) (not b!5058153) (not d!1628228) (not b!5057400) (not b!5057677) (not b!5058106) (not b!5058131) (not b!5057741) (not b!5058166) (not b!5058022) (not b!5057872) (not b!5057727) (not b!5057766) (not b!5057871) (not b!5057869) (not b!5058158) (not b!5057905) (not b!5058001) (not b!5058116) (not b!5057736) (not d!1628068) (not b!5057981) (not b!5058129) (not bm!352246) (not d!1628080) (not b!5057837) (not b!5058090) (not bm!352226) (not b!5058136) (not b!5058086) (not b!5058103) (not b!5058140) (not d!1627942) (not b!5057775) (not b!5058174) (not b!5057949) (not b!5058091) (not b!5057967) (not d!1627958) (not b!5057760) (not b!5058065) (not b!5058040) (not b!5058081) (not b!5057723) (not b!5058118) (not b!5057679) (not b!5057413) (not b!5057965) (not b!5058111) (not b!5058146) (not b!5057923) (not b!5057658) (not b!5058061) (not d!1628010) (not b!5057790) (not b!5057737) (not b!5058128) (not b!5057690) (not b!5057995) (not b!5058018) (not b!5058126) (not b!5058115) (not d!1628168) (not bm!352240) (not b!5057786) (not b!5058151) (not b!5057893) (not b!5057784) (not d!1628094) (not b!5057808) (not b!5057956) (not d!1628054) tp_is_empty!37031 (not b!5057886) (not b!5057958) (not b!5057778) (not b!5057891) (not b!5057410) (not b!5057664) (not b!5057649) (not b!5058145) (not b!5057945) (not bm!352233) (not b!5058043) (not d!1628100) (not d!1628174) (not b!5058017) (not b!5057641) (not b!5058168) (not d!1628134) (not d!1628150) (not b!5058167))
(check-sat)
