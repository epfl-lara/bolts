; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!535170 () Bool)

(assert start!535170)

(declare-fun b!5068585 () Bool)

(declare-fun e!3162836 () Bool)

(declare-datatypes ((T!105132 0))(
  ( (T!105133 (val!23650 Int)) )
))
(declare-datatypes ((List!58560 0))(
  ( (Nil!58436) (Cons!58436 (h!64884 T!105132) (t!371303 List!58560)) )
))
(declare-datatypes ((IArray!31193 0))(
  ( (IArray!31194 (innerList!15654 List!58560)) )
))
(declare-datatypes ((Conc!15566 0))(
  ( (Node!15566 (left!42819 Conc!15566) (right!43149 Conc!15566) (csize!31362 Int) (cheight!15777 Int)) (Leaf!25854 (xs!18922 IArray!31193) (csize!31363 Int)) (Empty!15566) )
))
(declare-fun ys!41 () Conc!15566)

(declare-fun e!3162837 () Bool)

(declare-fun inv!77566 (IArray!31193) Bool)

(assert (=> b!5068585 (= e!3162836 (and (inv!77566 (xs!18922 ys!41)) e!3162837))))

(declare-fun xs!286 () Conc!15566)

(declare-fun tp!1414992 () Bool)

(declare-fun b!5068586 () Bool)

(declare-fun tp!1414988 () Bool)

(declare-fun e!3162838 () Bool)

(declare-fun inv!77567 (Conc!15566) Bool)

(assert (=> b!5068586 (= e!3162838 (and (inv!77567 (left!42819 xs!286)) tp!1414992 (inv!77567 (right!43149 xs!286)) tp!1414988))))

(declare-fun b!5068588 () Bool)

(declare-fun e!3162840 () Bool)

(get-info :version)

(assert (=> b!5068588 (= e!3162840 (not ((_ is Node!15566) (right!43149 xs!286))))))

(declare-fun b!5068589 () Bool)

(declare-fun e!3162839 () Bool)

(declare-fun tp!1414991 () Bool)

(assert (=> b!5068589 (= e!3162839 tp!1414991)))

(declare-fun b!5068590 () Bool)

(declare-fun res!2157991 () Bool)

(declare-fun e!3162835 () Bool)

(assert (=> b!5068590 (=> (not res!2157991) (not e!3162835))))

(assert (=> b!5068590 (= res!2157991 (and (not (= xs!286 Empty!15566)) (not (= ys!41 Empty!15566))))))

(declare-fun b!5068591 () Bool)

(assert (=> b!5068591 (= e!3162838 (and (inv!77566 (xs!18922 xs!286)) e!3162839))))

(declare-fun res!2157988 () Bool)

(assert (=> start!535170 (=> (not res!2157988) (not e!3162835))))

(declare-fun isBalanced!4428 (Conc!15566) Bool)

(assert (=> start!535170 (= res!2157988 (isBalanced!4428 xs!286))))

(assert (=> start!535170 e!3162835))

(assert (=> start!535170 (and (inv!77567 xs!286) e!3162838)))

(assert (=> start!535170 (and (inv!77567 ys!41) e!3162836)))

(declare-fun b!5068587 () Bool)

(declare-fun tp!1414989 () Bool)

(assert (=> b!5068587 (= e!3162837 tp!1414989)))

(declare-fun b!5068592 () Bool)

(declare-fun res!2157990 () Bool)

(assert (=> b!5068592 (=> (not res!2157990) (not e!3162835))))

(assert (=> b!5068592 (= res!2157990 (isBalanced!4428 ys!41))))

(declare-fun b!5068593 () Bool)

(assert (=> b!5068593 (= e!3162835 e!3162840)))

(declare-fun res!2157987 () Bool)

(assert (=> b!5068593 (=> (not res!2157987) (not e!3162840))))

(declare-fun lt!2089259 () Int)

(assert (=> b!5068593 (= res!2157987 (and (or (> (- 1) lt!2089259) (> lt!2089259 1)) (< lt!2089259 (- 1)) ((_ is Node!15566) xs!286)))))

(declare-fun height!2143 (Conc!15566) Int)

(assert (=> b!5068593 (= lt!2089259 (- (height!2143 ys!41) (height!2143 xs!286)))))

(declare-fun tp!1414990 () Bool)

(declare-fun b!5068594 () Bool)

(declare-fun tp!1414993 () Bool)

(assert (=> b!5068594 (= e!3162836 (and (inv!77567 (left!42819 ys!41)) tp!1414993 (inv!77567 (right!43149 ys!41)) tp!1414990))))

(declare-fun b!5068595 () Bool)

(declare-fun res!2157989 () Bool)

(assert (=> b!5068595 (=> (not res!2157989) (not e!3162840))))

(assert (=> b!5068595 (= res!2157989 (< (height!2143 (left!42819 xs!286)) (height!2143 (right!43149 xs!286))))))

(assert (= (and start!535170 res!2157988) b!5068592))

(assert (= (and b!5068592 res!2157990) b!5068590))

(assert (= (and b!5068590 res!2157991) b!5068593))

(assert (= (and b!5068593 res!2157987) b!5068595))

(assert (= (and b!5068595 res!2157989) b!5068588))

(assert (= (and start!535170 ((_ is Node!15566) xs!286)) b!5068586))

(assert (= b!5068591 b!5068589))

(assert (= (and start!535170 ((_ is Leaf!25854) xs!286)) b!5068591))

(assert (= (and start!535170 ((_ is Node!15566) ys!41)) b!5068594))

(assert (= b!5068585 b!5068587))

(assert (= (and start!535170 ((_ is Leaf!25854) ys!41)) b!5068585))

(declare-fun m!6112842 () Bool)

(assert (=> b!5068592 m!6112842))

(declare-fun m!6112844 () Bool)

(assert (=> b!5068586 m!6112844))

(declare-fun m!6112846 () Bool)

(assert (=> b!5068586 m!6112846))

(declare-fun m!6112848 () Bool)

(assert (=> b!5068594 m!6112848))

(declare-fun m!6112850 () Bool)

(assert (=> b!5068594 m!6112850))

(declare-fun m!6112852 () Bool)

(assert (=> b!5068585 m!6112852))

(declare-fun m!6112854 () Bool)

(assert (=> b!5068595 m!6112854))

(declare-fun m!6112856 () Bool)

(assert (=> b!5068595 m!6112856))

(declare-fun m!6112858 () Bool)

(assert (=> b!5068591 m!6112858))

(declare-fun m!6112860 () Bool)

(assert (=> b!5068593 m!6112860))

(declare-fun m!6112862 () Bool)

(assert (=> b!5068593 m!6112862))

(declare-fun m!6112864 () Bool)

(assert (=> start!535170 m!6112864))

(declare-fun m!6112866 () Bool)

(assert (=> start!535170 m!6112866))

(declare-fun m!6112868 () Bool)

(assert (=> start!535170 m!6112868))

(check-sat (not b!5068586) (not start!535170) (not b!5068595) (not b!5068591) (not b!5068594) (not b!5068589) (not b!5068585) (not b!5068592) (not b!5068587) (not b!5068593))
(check-sat)
(get-model)

(declare-fun d!1635012 () Bool)

(declare-fun c!870278 () Bool)

(assert (=> d!1635012 (= c!870278 ((_ is Node!15566) (left!42819 ys!41)))))

(declare-fun e!3162845 () Bool)

(assert (=> d!1635012 (= (inv!77567 (left!42819 ys!41)) e!3162845)))

(declare-fun b!5068602 () Bool)

(declare-fun inv!77568 (Conc!15566) Bool)

(assert (=> b!5068602 (= e!3162845 (inv!77568 (left!42819 ys!41)))))

(declare-fun b!5068603 () Bool)

(declare-fun e!3162846 () Bool)

(assert (=> b!5068603 (= e!3162845 e!3162846)))

(declare-fun res!2157994 () Bool)

(assert (=> b!5068603 (= res!2157994 (not ((_ is Leaf!25854) (left!42819 ys!41))))))

(assert (=> b!5068603 (=> res!2157994 e!3162846)))

(declare-fun b!5068604 () Bool)

(declare-fun inv!77569 (Conc!15566) Bool)

(assert (=> b!5068604 (= e!3162846 (inv!77569 (left!42819 ys!41)))))

(assert (= (and d!1635012 c!870278) b!5068602))

(assert (= (and d!1635012 (not c!870278)) b!5068603))

(assert (= (and b!5068603 (not res!2157994)) b!5068604))

(declare-fun m!6112870 () Bool)

(assert (=> b!5068602 m!6112870))

(declare-fun m!6112872 () Bool)

(assert (=> b!5068604 m!6112872))

(assert (=> b!5068594 d!1635012))

(declare-fun d!1635016 () Bool)

(declare-fun c!870279 () Bool)

(assert (=> d!1635016 (= c!870279 ((_ is Node!15566) (right!43149 ys!41)))))

(declare-fun e!3162847 () Bool)

(assert (=> d!1635016 (= (inv!77567 (right!43149 ys!41)) e!3162847)))

(declare-fun b!5068605 () Bool)

(assert (=> b!5068605 (= e!3162847 (inv!77568 (right!43149 ys!41)))))

(declare-fun b!5068606 () Bool)

(declare-fun e!3162848 () Bool)

(assert (=> b!5068606 (= e!3162847 e!3162848)))

(declare-fun res!2157995 () Bool)

(assert (=> b!5068606 (= res!2157995 (not ((_ is Leaf!25854) (right!43149 ys!41))))))

(assert (=> b!5068606 (=> res!2157995 e!3162848)))

(declare-fun b!5068607 () Bool)

(assert (=> b!5068607 (= e!3162848 (inv!77569 (right!43149 ys!41)))))

(assert (= (and d!1635016 c!870279) b!5068605))

(assert (= (and d!1635016 (not c!870279)) b!5068606))

(assert (= (and b!5068606 (not res!2157995)) b!5068607))

(declare-fun m!6112874 () Bool)

(assert (=> b!5068605 m!6112874))

(declare-fun m!6112876 () Bool)

(assert (=> b!5068607 m!6112876))

(assert (=> b!5068594 d!1635016))

(declare-fun d!1635018 () Bool)

(assert (=> d!1635018 (= (height!2143 (left!42819 xs!286)) (ite ((_ is Empty!15566) (left!42819 xs!286)) 0 (ite ((_ is Leaf!25854) (left!42819 xs!286)) 1 (cheight!15777 (left!42819 xs!286)))))))

(assert (=> b!5068595 d!1635018))

(declare-fun d!1635020 () Bool)

(assert (=> d!1635020 (= (height!2143 (right!43149 xs!286)) (ite ((_ is Empty!15566) (right!43149 xs!286)) 0 (ite ((_ is Leaf!25854) (right!43149 xs!286)) 1 (cheight!15777 (right!43149 xs!286)))))))

(assert (=> b!5068595 d!1635020))

(declare-fun d!1635022 () Bool)

(assert (=> d!1635022 (= (height!2143 ys!41) (ite ((_ is Empty!15566) ys!41) 0 (ite ((_ is Leaf!25854) ys!41) 1 (cheight!15777 ys!41))))))

(assert (=> b!5068593 d!1635022))

(declare-fun d!1635024 () Bool)

(assert (=> d!1635024 (= (height!2143 xs!286) (ite ((_ is Empty!15566) xs!286) 0 (ite ((_ is Leaf!25854) xs!286) 1 (cheight!15777 xs!286))))))

(assert (=> b!5068593 d!1635024))

(declare-fun b!5068644 () Bool)

(declare-fun e!3162864 () Bool)

(declare-fun isEmpty!31635 (Conc!15566) Bool)

(assert (=> b!5068644 (= e!3162864 (not (isEmpty!31635 (right!43149 xs!286))))))

(declare-fun b!5068645 () Bool)

(declare-fun res!2158031 () Bool)

(assert (=> b!5068645 (=> (not res!2158031) (not e!3162864))))

(assert (=> b!5068645 (= res!2158031 (not (isEmpty!31635 (left!42819 xs!286))))))

(declare-fun d!1635026 () Bool)

(declare-fun res!2158029 () Bool)

(declare-fun e!3162863 () Bool)

(assert (=> d!1635026 (=> res!2158029 e!3162863)))

(assert (=> d!1635026 (= res!2158029 (not ((_ is Node!15566) xs!286)))))

(assert (=> d!1635026 (= (isBalanced!4428 xs!286) e!3162863)))

(declare-fun b!5068646 () Bool)

(assert (=> b!5068646 (= e!3162863 e!3162864)))

(declare-fun res!2158028 () Bool)

(assert (=> b!5068646 (=> (not res!2158028) (not e!3162864))))

(assert (=> b!5068646 (= res!2158028 (<= (- 1) (- (height!2143 (left!42819 xs!286)) (height!2143 (right!43149 xs!286)))))))

(declare-fun b!5068647 () Bool)

(declare-fun res!2158033 () Bool)

(assert (=> b!5068647 (=> (not res!2158033) (not e!3162864))))

(assert (=> b!5068647 (= res!2158033 (isBalanced!4428 (right!43149 xs!286)))))

(declare-fun b!5068648 () Bool)

(declare-fun res!2158030 () Bool)

(assert (=> b!5068648 (=> (not res!2158030) (not e!3162864))))

(assert (=> b!5068648 (= res!2158030 (<= (- (height!2143 (left!42819 xs!286)) (height!2143 (right!43149 xs!286))) 1))))

(declare-fun b!5068649 () Bool)

(declare-fun res!2158032 () Bool)

(assert (=> b!5068649 (=> (not res!2158032) (not e!3162864))))

(assert (=> b!5068649 (= res!2158032 (isBalanced!4428 (left!42819 xs!286)))))

(assert (= (and d!1635026 (not res!2158029)) b!5068646))

(assert (= (and b!5068646 res!2158028) b!5068648))

(assert (= (and b!5068648 res!2158030) b!5068649))

(assert (= (and b!5068649 res!2158032) b!5068647))

(assert (= (and b!5068647 res!2158033) b!5068645))

(assert (= (and b!5068645 res!2158031) b!5068644))

(assert (=> b!5068648 m!6112854))

(assert (=> b!5068648 m!6112856))

(declare-fun m!6112890 () Bool)

(assert (=> b!5068647 m!6112890))

(assert (=> b!5068646 m!6112854))

(assert (=> b!5068646 m!6112856))

(declare-fun m!6112892 () Bool)

(assert (=> b!5068649 m!6112892))

(declare-fun m!6112894 () Bool)

(assert (=> b!5068645 m!6112894))

(declare-fun m!6112896 () Bool)

(assert (=> b!5068644 m!6112896))

(assert (=> start!535170 d!1635026))

(declare-fun d!1635030 () Bool)

(declare-fun c!870283 () Bool)

(assert (=> d!1635030 (= c!870283 ((_ is Node!15566) xs!286))))

(declare-fun e!3162867 () Bool)

(assert (=> d!1635030 (= (inv!77567 xs!286) e!3162867)))

(declare-fun b!5068653 () Bool)

(assert (=> b!5068653 (= e!3162867 (inv!77568 xs!286))))

(declare-fun b!5068654 () Bool)

(declare-fun e!3162868 () Bool)

(assert (=> b!5068654 (= e!3162867 e!3162868)))

(declare-fun res!2158035 () Bool)

(assert (=> b!5068654 (= res!2158035 (not ((_ is Leaf!25854) xs!286)))))

(assert (=> b!5068654 (=> res!2158035 e!3162868)))

(declare-fun b!5068655 () Bool)

(assert (=> b!5068655 (= e!3162868 (inv!77569 xs!286))))

(assert (= (and d!1635030 c!870283) b!5068653))

(assert (= (and d!1635030 (not c!870283)) b!5068654))

(assert (= (and b!5068654 (not res!2158035)) b!5068655))

(declare-fun m!6112902 () Bool)

(assert (=> b!5068653 m!6112902))

(declare-fun m!6112904 () Bool)

(assert (=> b!5068655 m!6112904))

(assert (=> start!535170 d!1635030))

(declare-fun d!1635034 () Bool)

(declare-fun c!870285 () Bool)

(assert (=> d!1635034 (= c!870285 ((_ is Node!15566) ys!41))))

(declare-fun e!3162871 () Bool)

(assert (=> d!1635034 (= (inv!77567 ys!41) e!3162871)))

(declare-fun b!5068659 () Bool)

(assert (=> b!5068659 (= e!3162871 (inv!77568 ys!41))))

(declare-fun b!5068660 () Bool)

(declare-fun e!3162872 () Bool)

(assert (=> b!5068660 (= e!3162871 e!3162872)))

(declare-fun res!2158037 () Bool)

(assert (=> b!5068660 (= res!2158037 (not ((_ is Leaf!25854) ys!41)))))

(assert (=> b!5068660 (=> res!2158037 e!3162872)))

(declare-fun b!5068661 () Bool)

(assert (=> b!5068661 (= e!3162872 (inv!77569 ys!41))))

(assert (= (and d!1635034 c!870285) b!5068659))

(assert (= (and d!1635034 (not c!870285)) b!5068660))

(assert (= (and b!5068660 (not res!2158037)) b!5068661))

(declare-fun m!6112910 () Bool)

(assert (=> b!5068659 m!6112910))

(declare-fun m!6112912 () Bool)

(assert (=> b!5068661 m!6112912))

(assert (=> start!535170 d!1635034))

(declare-fun d!1635038 () Bool)

(declare-fun c!870286 () Bool)

(assert (=> d!1635038 (= c!870286 ((_ is Node!15566) (left!42819 xs!286)))))

(declare-fun e!3162873 () Bool)

(assert (=> d!1635038 (= (inv!77567 (left!42819 xs!286)) e!3162873)))

(declare-fun b!5068662 () Bool)

(assert (=> b!5068662 (= e!3162873 (inv!77568 (left!42819 xs!286)))))

(declare-fun b!5068663 () Bool)

(declare-fun e!3162874 () Bool)

(assert (=> b!5068663 (= e!3162873 e!3162874)))

(declare-fun res!2158038 () Bool)

(assert (=> b!5068663 (= res!2158038 (not ((_ is Leaf!25854) (left!42819 xs!286))))))

(assert (=> b!5068663 (=> res!2158038 e!3162874)))

(declare-fun b!5068664 () Bool)

(assert (=> b!5068664 (= e!3162874 (inv!77569 (left!42819 xs!286)))))

(assert (= (and d!1635038 c!870286) b!5068662))

(assert (= (and d!1635038 (not c!870286)) b!5068663))

(assert (= (and b!5068663 (not res!2158038)) b!5068664))

(declare-fun m!6112914 () Bool)

(assert (=> b!5068662 m!6112914))

(declare-fun m!6112916 () Bool)

(assert (=> b!5068664 m!6112916))

(assert (=> b!5068586 d!1635038))

(declare-fun d!1635040 () Bool)

(declare-fun c!870287 () Bool)

(assert (=> d!1635040 (= c!870287 ((_ is Node!15566) (right!43149 xs!286)))))

(declare-fun e!3162875 () Bool)

(assert (=> d!1635040 (= (inv!77567 (right!43149 xs!286)) e!3162875)))

(declare-fun b!5068665 () Bool)

(assert (=> b!5068665 (= e!3162875 (inv!77568 (right!43149 xs!286)))))

(declare-fun b!5068666 () Bool)

(declare-fun e!3162876 () Bool)

(assert (=> b!5068666 (= e!3162875 e!3162876)))

(declare-fun res!2158039 () Bool)

(assert (=> b!5068666 (= res!2158039 (not ((_ is Leaf!25854) (right!43149 xs!286))))))

(assert (=> b!5068666 (=> res!2158039 e!3162876)))

(declare-fun b!5068667 () Bool)

(assert (=> b!5068667 (= e!3162876 (inv!77569 (right!43149 xs!286)))))

(assert (= (and d!1635040 c!870287) b!5068665))

(assert (= (and d!1635040 (not c!870287)) b!5068666))

(assert (= (and b!5068666 (not res!2158039)) b!5068667))

(declare-fun m!6112918 () Bool)

(assert (=> b!5068665 m!6112918))

(declare-fun m!6112920 () Bool)

(assert (=> b!5068667 m!6112920))

(assert (=> b!5068586 d!1635040))

(declare-fun b!5068668 () Bool)

(declare-fun e!3162878 () Bool)

(assert (=> b!5068668 (= e!3162878 (not (isEmpty!31635 (right!43149 ys!41))))))

(declare-fun b!5068669 () Bool)

(declare-fun res!2158043 () Bool)

(assert (=> b!5068669 (=> (not res!2158043) (not e!3162878))))

(assert (=> b!5068669 (= res!2158043 (not (isEmpty!31635 (left!42819 ys!41))))))

(declare-fun d!1635042 () Bool)

(declare-fun res!2158041 () Bool)

(declare-fun e!3162877 () Bool)

(assert (=> d!1635042 (=> res!2158041 e!3162877)))

(assert (=> d!1635042 (= res!2158041 (not ((_ is Node!15566) ys!41)))))

(assert (=> d!1635042 (= (isBalanced!4428 ys!41) e!3162877)))

(declare-fun b!5068670 () Bool)

(assert (=> b!5068670 (= e!3162877 e!3162878)))

(declare-fun res!2158040 () Bool)

(assert (=> b!5068670 (=> (not res!2158040) (not e!3162878))))

(assert (=> b!5068670 (= res!2158040 (<= (- 1) (- (height!2143 (left!42819 ys!41)) (height!2143 (right!43149 ys!41)))))))

(declare-fun b!5068671 () Bool)

(declare-fun res!2158045 () Bool)

(assert (=> b!5068671 (=> (not res!2158045) (not e!3162878))))

(assert (=> b!5068671 (= res!2158045 (isBalanced!4428 (right!43149 ys!41)))))

(declare-fun b!5068672 () Bool)

(declare-fun res!2158042 () Bool)

(assert (=> b!5068672 (=> (not res!2158042) (not e!3162878))))

(assert (=> b!5068672 (= res!2158042 (<= (- (height!2143 (left!42819 ys!41)) (height!2143 (right!43149 ys!41))) 1))))

(declare-fun b!5068673 () Bool)

(declare-fun res!2158044 () Bool)

(assert (=> b!5068673 (=> (not res!2158044) (not e!3162878))))

(assert (=> b!5068673 (= res!2158044 (isBalanced!4428 (left!42819 ys!41)))))

(assert (= (and d!1635042 (not res!2158041)) b!5068670))

(assert (= (and b!5068670 res!2158040) b!5068672))

(assert (= (and b!5068672 res!2158042) b!5068673))

(assert (= (and b!5068673 res!2158044) b!5068671))

(assert (= (and b!5068671 res!2158045) b!5068669))

(assert (= (and b!5068669 res!2158043) b!5068668))

(declare-fun m!6112922 () Bool)

(assert (=> b!5068672 m!6112922))

(declare-fun m!6112924 () Bool)

(assert (=> b!5068672 m!6112924))

(declare-fun m!6112926 () Bool)

(assert (=> b!5068671 m!6112926))

(assert (=> b!5068670 m!6112922))

(assert (=> b!5068670 m!6112924))

(declare-fun m!6112928 () Bool)

(assert (=> b!5068673 m!6112928))

(declare-fun m!6112930 () Bool)

(assert (=> b!5068669 m!6112930))

(declare-fun m!6112932 () Bool)

(assert (=> b!5068668 m!6112932))

(assert (=> b!5068592 d!1635042))

(declare-fun d!1635048 () Bool)

(declare-fun size!39079 (List!58560) Int)

(assert (=> d!1635048 (= (inv!77566 (xs!18922 ys!41)) (<= (size!39079 (innerList!15654 (xs!18922 ys!41))) 2147483647))))

(declare-fun bs!1190002 () Bool)

(assert (= bs!1190002 d!1635048))

(declare-fun m!6112938 () Bool)

(assert (=> bs!1190002 m!6112938))

(assert (=> b!5068585 d!1635048))

(declare-fun d!1635054 () Bool)

(assert (=> d!1635054 (= (inv!77566 (xs!18922 xs!286)) (<= (size!39079 (innerList!15654 (xs!18922 xs!286))) 2147483647))))

(declare-fun bs!1190003 () Bool)

(assert (= bs!1190003 d!1635054))

(declare-fun m!6112942 () Bool)

(assert (=> bs!1190003 m!6112942))

(assert (=> b!5068591 d!1635054))

(declare-fun tp!1415002 () Bool)

(declare-fun e!3162896 () Bool)

(declare-fun tp!1415004 () Bool)

(declare-fun b!5068704 () Bool)

(assert (=> b!5068704 (= e!3162896 (and (inv!77567 (left!42819 (left!42819 ys!41))) tp!1415002 (inv!77567 (right!43149 (left!42819 ys!41))) tp!1415004))))

(declare-fun b!5068706 () Bool)

(declare-fun e!3162895 () Bool)

(declare-fun tp!1415003 () Bool)

(assert (=> b!5068706 (= e!3162895 tp!1415003)))

(declare-fun b!5068705 () Bool)

(assert (=> b!5068705 (= e!3162896 (and (inv!77566 (xs!18922 (left!42819 ys!41))) e!3162895))))

(assert (=> b!5068594 (= tp!1414993 (and (inv!77567 (left!42819 ys!41)) e!3162896))))

(assert (= (and b!5068594 ((_ is Node!15566) (left!42819 ys!41))) b!5068704))

(assert (= b!5068705 b!5068706))

(assert (= (and b!5068594 ((_ is Leaf!25854) (left!42819 ys!41))) b!5068705))

(declare-fun m!6112966 () Bool)

(assert (=> b!5068704 m!6112966))

(declare-fun m!6112968 () Bool)

(assert (=> b!5068704 m!6112968))

(declare-fun m!6112970 () Bool)

(assert (=> b!5068705 m!6112970))

(assert (=> b!5068594 m!6112848))

(declare-fun tp!1415007 () Bool)

(declare-fun tp!1415010 () Bool)

(declare-fun b!5068712 () Bool)

(declare-fun e!3162901 () Bool)

(assert (=> b!5068712 (= e!3162901 (and (inv!77567 (left!42819 (right!43149 ys!41))) tp!1415007 (inv!77567 (right!43149 (right!43149 ys!41))) tp!1415010))))

(declare-fun b!5068714 () Bool)

(declare-fun e!3162900 () Bool)

(declare-fun tp!1415009 () Bool)

(assert (=> b!5068714 (= e!3162900 tp!1415009)))

(declare-fun b!5068713 () Bool)

(assert (=> b!5068713 (= e!3162901 (and (inv!77566 (xs!18922 (right!43149 ys!41))) e!3162900))))

(assert (=> b!5068594 (= tp!1414990 (and (inv!77567 (right!43149 ys!41)) e!3162901))))

(assert (= (and b!5068594 ((_ is Node!15566) (right!43149 ys!41))) b!5068712))

(assert (= b!5068713 b!5068714))

(assert (= (and b!5068594 ((_ is Leaf!25854) (right!43149 ys!41))) b!5068713))

(declare-fun m!6112972 () Bool)

(assert (=> b!5068712 m!6112972))

(declare-fun m!6112974 () Bool)

(assert (=> b!5068712 m!6112974))

(declare-fun m!6112976 () Bool)

(assert (=> b!5068713 m!6112976))

(assert (=> b!5068594 m!6112850))

(declare-fun b!5068723 () Bool)

(declare-fun e!3162906 () Bool)

(declare-fun tp_is_empty!37055 () Bool)

(declare-fun tp!1415017 () Bool)

(assert (=> b!5068723 (= e!3162906 (and tp_is_empty!37055 tp!1415017))))

(assert (=> b!5068589 (= tp!1414991 e!3162906)))

(assert (= (and b!5068589 ((_ is Cons!58436) (innerList!15654 (xs!18922 xs!286)))) b!5068723))

(declare-fun tp!1415020 () Bool)

(declare-fun b!5068724 () Bool)

(declare-fun tp!1415018 () Bool)

(declare-fun e!3162908 () Bool)

(assert (=> b!5068724 (= e!3162908 (and (inv!77567 (left!42819 (left!42819 xs!286))) tp!1415018 (inv!77567 (right!43149 (left!42819 xs!286))) tp!1415020))))

(declare-fun b!5068726 () Bool)

(declare-fun e!3162907 () Bool)

(declare-fun tp!1415019 () Bool)

(assert (=> b!5068726 (= e!3162907 tp!1415019)))

(declare-fun b!5068725 () Bool)

(assert (=> b!5068725 (= e!3162908 (and (inv!77566 (xs!18922 (left!42819 xs!286))) e!3162907))))

(assert (=> b!5068586 (= tp!1414992 (and (inv!77567 (left!42819 xs!286)) e!3162908))))

(assert (= (and b!5068586 ((_ is Node!15566) (left!42819 xs!286))) b!5068724))

(assert (= b!5068725 b!5068726))

(assert (= (and b!5068586 ((_ is Leaf!25854) (left!42819 xs!286))) b!5068725))

(declare-fun m!6112978 () Bool)

(assert (=> b!5068724 m!6112978))

(declare-fun m!6112980 () Bool)

(assert (=> b!5068724 m!6112980))

(declare-fun m!6112982 () Bool)

(assert (=> b!5068725 m!6112982))

(assert (=> b!5068586 m!6112844))

(declare-fun tp!1415021 () Bool)

(declare-fun e!3162910 () Bool)

(declare-fun tp!1415023 () Bool)

(declare-fun b!5068727 () Bool)

(assert (=> b!5068727 (= e!3162910 (and (inv!77567 (left!42819 (right!43149 xs!286))) tp!1415021 (inv!77567 (right!43149 (right!43149 xs!286))) tp!1415023))))

(declare-fun b!5068729 () Bool)

(declare-fun e!3162909 () Bool)

(declare-fun tp!1415022 () Bool)

(assert (=> b!5068729 (= e!3162909 tp!1415022)))

(declare-fun b!5068728 () Bool)

(assert (=> b!5068728 (= e!3162910 (and (inv!77566 (xs!18922 (right!43149 xs!286))) e!3162909))))

(assert (=> b!5068586 (= tp!1414988 (and (inv!77567 (right!43149 xs!286)) e!3162910))))

(assert (= (and b!5068586 ((_ is Node!15566) (right!43149 xs!286))) b!5068727))

(assert (= b!5068728 b!5068729))

(assert (= (and b!5068586 ((_ is Leaf!25854) (right!43149 xs!286))) b!5068728))

(declare-fun m!6112984 () Bool)

(assert (=> b!5068727 m!6112984))

(declare-fun m!6112986 () Bool)

(assert (=> b!5068727 m!6112986))

(declare-fun m!6112988 () Bool)

(assert (=> b!5068728 m!6112988))

(assert (=> b!5068586 m!6112846))

(declare-fun b!5068733 () Bool)

(declare-fun e!3162913 () Bool)

(declare-fun tp!1415027 () Bool)

(assert (=> b!5068733 (= e!3162913 (and tp_is_empty!37055 tp!1415027))))

(assert (=> b!5068587 (= tp!1414989 e!3162913)))

(assert (= (and b!5068587 ((_ is Cons!58436) (innerList!15654 (xs!18922 ys!41)))) b!5068733))

(check-sat (not b!5068648) (not b!5068705) (not b!5068671) (not b!5068668) (not b!5068714) (not b!5068655) (not b!5068729) (not b!5068704) (not b!5068673) (not b!5068647) (not b!5068602) (not b!5068586) (not b!5068670) tp_is_empty!37055 (not b!5068659) (not d!1635054) (not b!5068725) (not b!5068728) (not b!5068724) (not b!5068653) (not b!5068605) (not b!5068646) (not b!5068712) (not b!5068672) (not b!5068726) (not b!5068607) (not b!5068594) (not b!5068727) (not b!5068664) (not b!5068733) (not b!5068662) (not b!5068667) (not b!5068713) (not b!5068644) (not b!5068723) (not b!5068649) (not b!5068669) (not b!5068645) (not b!5068665) (not b!5068661) (not b!5068706) (not d!1635048) (not b!5068604))
(check-sat)
(get-model)

(assert (=> b!5068594 d!1635012))

(assert (=> b!5068594 d!1635016))

(declare-fun d!1635068 () Bool)

(declare-fun res!2158062 () Bool)

(declare-fun e!3162923 () Bool)

(assert (=> d!1635068 (=> (not res!2158062) (not e!3162923))))

(declare-fun size!39080 (Conc!15566) Int)

(assert (=> d!1635068 (= res!2158062 (= (csize!31362 xs!286) (+ (size!39080 (left!42819 xs!286)) (size!39080 (right!43149 xs!286)))))))

(assert (=> d!1635068 (= (inv!77568 xs!286) e!3162923)))

(declare-fun b!5068750 () Bool)

(declare-fun res!2158063 () Bool)

(assert (=> b!5068750 (=> (not res!2158063) (not e!3162923))))

(assert (=> b!5068750 (= res!2158063 (and (not (= (left!42819 xs!286) Empty!15566)) (not (= (right!43149 xs!286) Empty!15566))))))

(declare-fun b!5068751 () Bool)

(declare-fun res!2158064 () Bool)

(assert (=> b!5068751 (=> (not res!2158064) (not e!3162923))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5068751 (= res!2158064 (= (cheight!15777 xs!286) (+ (max!0 (height!2143 (left!42819 xs!286)) (height!2143 (right!43149 xs!286))) 1)))))

(declare-fun b!5068752 () Bool)

(assert (=> b!5068752 (= e!3162923 (<= 0 (cheight!15777 xs!286)))))

(assert (= (and d!1635068 res!2158062) b!5068750))

(assert (= (and b!5068750 res!2158063) b!5068751))

(assert (= (and b!5068751 res!2158064) b!5068752))

(declare-fun m!6113014 () Bool)

(assert (=> d!1635068 m!6113014))

(declare-fun m!6113016 () Bool)

(assert (=> d!1635068 m!6113016))

(assert (=> b!5068751 m!6112854))

(assert (=> b!5068751 m!6112856))

(assert (=> b!5068751 m!6112854))

(assert (=> b!5068751 m!6112856))

(declare-fun m!6113018 () Bool)

(assert (=> b!5068751 m!6113018))

(assert (=> b!5068653 d!1635068))

(declare-fun d!1635070 () Bool)

(declare-fun res!2158069 () Bool)

(declare-fun e!3162926 () Bool)

(assert (=> d!1635070 (=> (not res!2158069) (not e!3162926))))

(declare-fun list!18992 (IArray!31193) List!58560)

(assert (=> d!1635070 (= res!2158069 (<= (size!39079 (list!18992 (xs!18922 (left!42819 xs!286)))) 512))))

(assert (=> d!1635070 (= (inv!77569 (left!42819 xs!286)) e!3162926)))

(declare-fun b!5068757 () Bool)

(declare-fun res!2158070 () Bool)

(assert (=> b!5068757 (=> (not res!2158070) (not e!3162926))))

(assert (=> b!5068757 (= res!2158070 (= (csize!31363 (left!42819 xs!286)) (size!39079 (list!18992 (xs!18922 (left!42819 xs!286))))))))

(declare-fun b!5068758 () Bool)

(assert (=> b!5068758 (= e!3162926 (and (> (csize!31363 (left!42819 xs!286)) 0) (<= (csize!31363 (left!42819 xs!286)) 512)))))

(assert (= (and d!1635070 res!2158069) b!5068757))

(assert (= (and b!5068757 res!2158070) b!5068758))

(declare-fun m!6113020 () Bool)

(assert (=> d!1635070 m!6113020))

(assert (=> d!1635070 m!6113020))

(declare-fun m!6113022 () Bool)

(assert (=> d!1635070 m!6113022))

(assert (=> b!5068757 m!6113020))

(assert (=> b!5068757 m!6113020))

(assert (=> b!5068757 m!6113022))

(assert (=> b!5068664 d!1635070))

(declare-fun d!1635072 () Bool)

(declare-fun res!2158071 () Bool)

(declare-fun e!3162927 () Bool)

(assert (=> d!1635072 (=> (not res!2158071) (not e!3162927))))

(assert (=> d!1635072 (= res!2158071 (= (csize!31362 (left!42819 xs!286)) (+ (size!39080 (left!42819 (left!42819 xs!286))) (size!39080 (right!43149 (left!42819 xs!286))))))))

(assert (=> d!1635072 (= (inv!77568 (left!42819 xs!286)) e!3162927)))

(declare-fun b!5068759 () Bool)

(declare-fun res!2158072 () Bool)

(assert (=> b!5068759 (=> (not res!2158072) (not e!3162927))))

(assert (=> b!5068759 (= res!2158072 (and (not (= (left!42819 (left!42819 xs!286)) Empty!15566)) (not (= (right!43149 (left!42819 xs!286)) Empty!15566))))))

(declare-fun b!5068760 () Bool)

(declare-fun res!2158073 () Bool)

(assert (=> b!5068760 (=> (not res!2158073) (not e!3162927))))

(assert (=> b!5068760 (= res!2158073 (= (cheight!15777 (left!42819 xs!286)) (+ (max!0 (height!2143 (left!42819 (left!42819 xs!286))) (height!2143 (right!43149 (left!42819 xs!286)))) 1)))))

(declare-fun b!5068761 () Bool)

(assert (=> b!5068761 (= e!3162927 (<= 0 (cheight!15777 (left!42819 xs!286))))))

(assert (= (and d!1635072 res!2158071) b!5068759))

(assert (= (and b!5068759 res!2158072) b!5068760))

(assert (= (and b!5068760 res!2158073) b!5068761))

(declare-fun m!6113024 () Bool)

(assert (=> d!1635072 m!6113024))

(declare-fun m!6113026 () Bool)

(assert (=> d!1635072 m!6113026))

(declare-fun m!6113028 () Bool)

(assert (=> b!5068760 m!6113028))

(declare-fun m!6113030 () Bool)

(assert (=> b!5068760 m!6113030))

(assert (=> b!5068760 m!6113028))

(assert (=> b!5068760 m!6113030))

(declare-fun m!6113032 () Bool)

(assert (=> b!5068760 m!6113032))

(assert (=> b!5068662 d!1635072))

(declare-fun b!5068762 () Bool)

(declare-fun e!3162929 () Bool)

(assert (=> b!5068762 (= e!3162929 (not (isEmpty!31635 (right!43149 (right!43149 ys!41)))))))

(declare-fun b!5068763 () Bool)

(declare-fun res!2158077 () Bool)

(assert (=> b!5068763 (=> (not res!2158077) (not e!3162929))))

(assert (=> b!5068763 (= res!2158077 (not (isEmpty!31635 (left!42819 (right!43149 ys!41)))))))

(declare-fun d!1635074 () Bool)

(declare-fun res!2158075 () Bool)

(declare-fun e!3162928 () Bool)

(assert (=> d!1635074 (=> res!2158075 e!3162928)))

(assert (=> d!1635074 (= res!2158075 (not ((_ is Node!15566) (right!43149 ys!41))))))

(assert (=> d!1635074 (= (isBalanced!4428 (right!43149 ys!41)) e!3162928)))

(declare-fun b!5068764 () Bool)

(assert (=> b!5068764 (= e!3162928 e!3162929)))

(declare-fun res!2158074 () Bool)

(assert (=> b!5068764 (=> (not res!2158074) (not e!3162929))))

(assert (=> b!5068764 (= res!2158074 (<= (- 1) (- (height!2143 (left!42819 (right!43149 ys!41))) (height!2143 (right!43149 (right!43149 ys!41))))))))

(declare-fun b!5068765 () Bool)

(declare-fun res!2158079 () Bool)

(assert (=> b!5068765 (=> (not res!2158079) (not e!3162929))))

(assert (=> b!5068765 (= res!2158079 (isBalanced!4428 (right!43149 (right!43149 ys!41))))))

(declare-fun b!5068766 () Bool)

(declare-fun res!2158076 () Bool)

(assert (=> b!5068766 (=> (not res!2158076) (not e!3162929))))

(assert (=> b!5068766 (= res!2158076 (<= (- (height!2143 (left!42819 (right!43149 ys!41))) (height!2143 (right!43149 (right!43149 ys!41)))) 1))))

(declare-fun b!5068767 () Bool)

(declare-fun res!2158078 () Bool)

(assert (=> b!5068767 (=> (not res!2158078) (not e!3162929))))

(assert (=> b!5068767 (= res!2158078 (isBalanced!4428 (left!42819 (right!43149 ys!41))))))

(assert (= (and d!1635074 (not res!2158075)) b!5068764))

(assert (= (and b!5068764 res!2158074) b!5068766))

(assert (= (and b!5068766 res!2158076) b!5068767))

(assert (= (and b!5068767 res!2158078) b!5068765))

(assert (= (and b!5068765 res!2158079) b!5068763))

(assert (= (and b!5068763 res!2158077) b!5068762))

(declare-fun m!6113034 () Bool)

(assert (=> b!5068766 m!6113034))

(declare-fun m!6113036 () Bool)

(assert (=> b!5068766 m!6113036))

(declare-fun m!6113038 () Bool)

(assert (=> b!5068765 m!6113038))

(assert (=> b!5068764 m!6113034))

(assert (=> b!5068764 m!6113036))

(declare-fun m!6113040 () Bool)

(assert (=> b!5068767 m!6113040))

(declare-fun m!6113042 () Bool)

(assert (=> b!5068763 m!6113042))

(declare-fun m!6113044 () Bool)

(assert (=> b!5068762 m!6113044))

(assert (=> b!5068671 d!1635074))

(declare-fun d!1635076 () Bool)

(declare-fun res!2158080 () Bool)

(declare-fun e!3162930 () Bool)

(assert (=> d!1635076 (=> (not res!2158080) (not e!3162930))))

(assert (=> d!1635076 (= res!2158080 (= (csize!31362 (left!42819 ys!41)) (+ (size!39080 (left!42819 (left!42819 ys!41))) (size!39080 (right!43149 (left!42819 ys!41))))))))

(assert (=> d!1635076 (= (inv!77568 (left!42819 ys!41)) e!3162930)))

(declare-fun b!5068768 () Bool)

(declare-fun res!2158081 () Bool)

(assert (=> b!5068768 (=> (not res!2158081) (not e!3162930))))

(assert (=> b!5068768 (= res!2158081 (and (not (= (left!42819 (left!42819 ys!41)) Empty!15566)) (not (= (right!43149 (left!42819 ys!41)) Empty!15566))))))

(declare-fun b!5068769 () Bool)

(declare-fun res!2158082 () Bool)

(assert (=> b!5068769 (=> (not res!2158082) (not e!3162930))))

(assert (=> b!5068769 (= res!2158082 (= (cheight!15777 (left!42819 ys!41)) (+ (max!0 (height!2143 (left!42819 (left!42819 ys!41))) (height!2143 (right!43149 (left!42819 ys!41)))) 1)))))

(declare-fun b!5068770 () Bool)

(assert (=> b!5068770 (= e!3162930 (<= 0 (cheight!15777 (left!42819 ys!41))))))

(assert (= (and d!1635076 res!2158080) b!5068768))

(assert (= (and b!5068768 res!2158081) b!5068769))

(assert (= (and b!5068769 res!2158082) b!5068770))

(declare-fun m!6113046 () Bool)

(assert (=> d!1635076 m!6113046))

(declare-fun m!6113048 () Bool)

(assert (=> d!1635076 m!6113048))

(declare-fun m!6113050 () Bool)

(assert (=> b!5068769 m!6113050))

(declare-fun m!6113052 () Bool)

(assert (=> b!5068769 m!6113052))

(assert (=> b!5068769 m!6113050))

(assert (=> b!5068769 m!6113052))

(declare-fun m!6113054 () Bool)

(assert (=> b!5068769 m!6113054))

(assert (=> b!5068602 d!1635076))

(declare-fun d!1635078 () Bool)

(declare-fun c!870292 () Bool)

(assert (=> d!1635078 (= c!870292 ((_ is Node!15566) (left!42819 (left!42819 xs!286))))))

(declare-fun e!3162931 () Bool)

(assert (=> d!1635078 (= (inv!77567 (left!42819 (left!42819 xs!286))) e!3162931)))

(declare-fun b!5068771 () Bool)

(assert (=> b!5068771 (= e!3162931 (inv!77568 (left!42819 (left!42819 xs!286))))))

(declare-fun b!5068772 () Bool)

(declare-fun e!3162932 () Bool)

(assert (=> b!5068772 (= e!3162931 e!3162932)))

(declare-fun res!2158083 () Bool)

(assert (=> b!5068772 (= res!2158083 (not ((_ is Leaf!25854) (left!42819 (left!42819 xs!286)))))))

(assert (=> b!5068772 (=> res!2158083 e!3162932)))

(declare-fun b!5068773 () Bool)

(assert (=> b!5068773 (= e!3162932 (inv!77569 (left!42819 (left!42819 xs!286))))))

(assert (= (and d!1635078 c!870292) b!5068771))

(assert (= (and d!1635078 (not c!870292)) b!5068772))

(assert (= (and b!5068772 (not res!2158083)) b!5068773))

(declare-fun m!6113056 () Bool)

(assert (=> b!5068771 m!6113056))

(declare-fun m!6113058 () Bool)

(assert (=> b!5068773 m!6113058))

(assert (=> b!5068724 d!1635078))

(declare-fun d!1635080 () Bool)

(declare-fun c!870293 () Bool)

(assert (=> d!1635080 (= c!870293 ((_ is Node!15566) (right!43149 (left!42819 xs!286))))))

(declare-fun e!3162933 () Bool)

(assert (=> d!1635080 (= (inv!77567 (right!43149 (left!42819 xs!286))) e!3162933)))

(declare-fun b!5068774 () Bool)

(assert (=> b!5068774 (= e!3162933 (inv!77568 (right!43149 (left!42819 xs!286))))))

(declare-fun b!5068775 () Bool)

(declare-fun e!3162934 () Bool)

(assert (=> b!5068775 (= e!3162933 e!3162934)))

(declare-fun res!2158084 () Bool)

(assert (=> b!5068775 (= res!2158084 (not ((_ is Leaf!25854) (right!43149 (left!42819 xs!286)))))))

(assert (=> b!5068775 (=> res!2158084 e!3162934)))

(declare-fun b!5068776 () Bool)

(assert (=> b!5068776 (= e!3162934 (inv!77569 (right!43149 (left!42819 xs!286))))))

(assert (= (and d!1635080 c!870293) b!5068774))

(assert (= (and d!1635080 (not c!870293)) b!5068775))

(assert (= (and b!5068775 (not res!2158084)) b!5068776))

(declare-fun m!6113060 () Bool)

(assert (=> b!5068774 m!6113060))

(declare-fun m!6113062 () Bool)

(assert (=> b!5068776 m!6113062))

(assert (=> b!5068724 d!1635080))

(assert (=> b!5068646 d!1635018))

(assert (=> b!5068646 d!1635020))

(declare-fun d!1635082 () Bool)

(declare-fun c!870294 () Bool)

(assert (=> d!1635082 (= c!870294 ((_ is Node!15566) (left!42819 (right!43149 ys!41))))))

(declare-fun e!3162935 () Bool)

(assert (=> d!1635082 (= (inv!77567 (left!42819 (right!43149 ys!41))) e!3162935)))

(declare-fun b!5068777 () Bool)

(assert (=> b!5068777 (= e!3162935 (inv!77568 (left!42819 (right!43149 ys!41))))))

(declare-fun b!5068778 () Bool)

(declare-fun e!3162936 () Bool)

(assert (=> b!5068778 (= e!3162935 e!3162936)))

(declare-fun res!2158085 () Bool)

(assert (=> b!5068778 (= res!2158085 (not ((_ is Leaf!25854) (left!42819 (right!43149 ys!41)))))))

(assert (=> b!5068778 (=> res!2158085 e!3162936)))

(declare-fun b!5068779 () Bool)

(assert (=> b!5068779 (= e!3162936 (inv!77569 (left!42819 (right!43149 ys!41))))))

(assert (= (and d!1635082 c!870294) b!5068777))

(assert (= (and d!1635082 (not c!870294)) b!5068778))

(assert (= (and b!5068778 (not res!2158085)) b!5068779))

(declare-fun m!6113064 () Bool)

(assert (=> b!5068777 m!6113064))

(declare-fun m!6113066 () Bool)

(assert (=> b!5068779 m!6113066))

(assert (=> b!5068712 d!1635082))

(declare-fun d!1635084 () Bool)

(declare-fun c!870295 () Bool)

(assert (=> d!1635084 (= c!870295 ((_ is Node!15566) (right!43149 (right!43149 ys!41))))))

(declare-fun e!3162937 () Bool)

(assert (=> d!1635084 (= (inv!77567 (right!43149 (right!43149 ys!41))) e!3162937)))

(declare-fun b!5068780 () Bool)

(assert (=> b!5068780 (= e!3162937 (inv!77568 (right!43149 (right!43149 ys!41))))))

(declare-fun b!5068781 () Bool)

(declare-fun e!3162938 () Bool)

(assert (=> b!5068781 (= e!3162937 e!3162938)))

(declare-fun res!2158086 () Bool)

(assert (=> b!5068781 (= res!2158086 (not ((_ is Leaf!25854) (right!43149 (right!43149 ys!41)))))))

(assert (=> b!5068781 (=> res!2158086 e!3162938)))

(declare-fun b!5068782 () Bool)

(assert (=> b!5068782 (= e!3162938 (inv!77569 (right!43149 (right!43149 ys!41))))))

(assert (= (and d!1635084 c!870295) b!5068780))

(assert (= (and d!1635084 (not c!870295)) b!5068781))

(assert (= (and b!5068781 (not res!2158086)) b!5068782))

(declare-fun m!6113068 () Bool)

(assert (=> b!5068780 m!6113068))

(declare-fun m!6113070 () Bool)

(assert (=> b!5068782 m!6113070))

(assert (=> b!5068712 d!1635084))

(declare-fun d!1635086 () Bool)

(assert (=> d!1635086 (= (height!2143 (left!42819 ys!41)) (ite ((_ is Empty!15566) (left!42819 ys!41)) 0 (ite ((_ is Leaf!25854) (left!42819 ys!41)) 1 (cheight!15777 (left!42819 ys!41)))))))

(assert (=> b!5068672 d!1635086))

(declare-fun d!1635088 () Bool)

(assert (=> d!1635088 (= (height!2143 (right!43149 ys!41)) (ite ((_ is Empty!15566) (right!43149 ys!41)) 0 (ite ((_ is Leaf!25854) (right!43149 ys!41)) 1 (cheight!15777 (right!43149 ys!41)))))))

(assert (=> b!5068672 d!1635088))

(declare-fun d!1635090 () Bool)

(declare-fun lt!2089262 () Int)

(assert (=> d!1635090 (>= lt!2089262 0)))

(declare-fun e!3162941 () Int)

(assert (=> d!1635090 (= lt!2089262 e!3162941)))

(declare-fun c!870298 () Bool)

(assert (=> d!1635090 (= c!870298 ((_ is Nil!58436) (innerList!15654 (xs!18922 ys!41))))))

(assert (=> d!1635090 (= (size!39079 (innerList!15654 (xs!18922 ys!41))) lt!2089262)))

(declare-fun b!5068787 () Bool)

(assert (=> b!5068787 (= e!3162941 0)))

(declare-fun b!5068788 () Bool)

(assert (=> b!5068788 (= e!3162941 (+ 1 (size!39079 (t!371303 (innerList!15654 (xs!18922 ys!41))))))))

(assert (= (and d!1635090 c!870298) b!5068787))

(assert (= (and d!1635090 (not c!870298)) b!5068788))

(declare-fun m!6113072 () Bool)

(assert (=> b!5068788 m!6113072))

(assert (=> d!1635048 d!1635090))

(declare-fun d!1635092 () Bool)

(declare-fun lt!2089265 () Bool)

(declare-fun isEmpty!31636 (List!58560) Bool)

(declare-fun list!18993 (Conc!15566) List!58560)

(assert (=> d!1635092 (= lt!2089265 (isEmpty!31636 (list!18993 (right!43149 xs!286))))))

(assert (=> d!1635092 (= lt!2089265 (= (size!39080 (right!43149 xs!286)) 0))))

(assert (=> d!1635092 (= (isEmpty!31635 (right!43149 xs!286)) lt!2089265)))

(declare-fun bs!1190004 () Bool)

(assert (= bs!1190004 d!1635092))

(declare-fun m!6113074 () Bool)

(assert (=> bs!1190004 m!6113074))

(assert (=> bs!1190004 m!6113074))

(declare-fun m!6113076 () Bool)

(assert (=> bs!1190004 m!6113076))

(assert (=> bs!1190004 m!6113016))

(assert (=> b!5068644 d!1635092))

(assert (=> b!5068670 d!1635086))

(assert (=> b!5068670 d!1635088))

(declare-fun d!1635094 () Bool)

(assert (=> d!1635094 (= (inv!77566 (xs!18922 (left!42819 xs!286))) (<= (size!39079 (innerList!15654 (xs!18922 (left!42819 xs!286)))) 2147483647))))

(declare-fun bs!1190005 () Bool)

(assert (= bs!1190005 d!1635094))

(declare-fun m!6113078 () Bool)

(assert (=> bs!1190005 m!6113078))

(assert (=> b!5068725 d!1635094))

(declare-fun d!1635096 () Bool)

(declare-fun lt!2089266 () Bool)

(assert (=> d!1635096 (= lt!2089266 (isEmpty!31636 (list!18993 (left!42819 xs!286))))))

(assert (=> d!1635096 (= lt!2089266 (= (size!39080 (left!42819 xs!286)) 0))))

(assert (=> d!1635096 (= (isEmpty!31635 (left!42819 xs!286)) lt!2089266)))

(declare-fun bs!1190006 () Bool)

(assert (= bs!1190006 d!1635096))

(declare-fun m!6113080 () Bool)

(assert (=> bs!1190006 m!6113080))

(assert (=> bs!1190006 m!6113080))

(declare-fun m!6113082 () Bool)

(assert (=> bs!1190006 m!6113082))

(assert (=> bs!1190006 m!6113014))

(assert (=> b!5068645 d!1635096))

(assert (=> b!5068648 d!1635018))

(assert (=> b!5068648 d!1635020))

(declare-fun d!1635098 () Bool)

(declare-fun res!2158087 () Bool)

(declare-fun e!3162942 () Bool)

(assert (=> d!1635098 (=> (not res!2158087) (not e!3162942))))

(assert (=> d!1635098 (= res!2158087 (<= (size!39079 (list!18992 (xs!18922 (right!43149 xs!286)))) 512))))

(assert (=> d!1635098 (= (inv!77569 (right!43149 xs!286)) e!3162942)))

(declare-fun b!5068789 () Bool)

(declare-fun res!2158088 () Bool)

(assert (=> b!5068789 (=> (not res!2158088) (not e!3162942))))

(assert (=> b!5068789 (= res!2158088 (= (csize!31363 (right!43149 xs!286)) (size!39079 (list!18992 (xs!18922 (right!43149 xs!286))))))))

(declare-fun b!5068790 () Bool)

(assert (=> b!5068790 (= e!3162942 (and (> (csize!31363 (right!43149 xs!286)) 0) (<= (csize!31363 (right!43149 xs!286)) 512)))))

(assert (= (and d!1635098 res!2158087) b!5068789))

(assert (= (and b!5068789 res!2158088) b!5068790))

(declare-fun m!6113084 () Bool)

(assert (=> d!1635098 m!6113084))

(assert (=> d!1635098 m!6113084))

(declare-fun m!6113086 () Bool)

(assert (=> d!1635098 m!6113086))

(assert (=> b!5068789 m!6113084))

(assert (=> b!5068789 m!6113084))

(assert (=> b!5068789 m!6113086))

(assert (=> b!5068667 d!1635098))

(declare-fun b!5068791 () Bool)

(declare-fun e!3162944 () Bool)

(assert (=> b!5068791 (= e!3162944 (not (isEmpty!31635 (right!43149 (left!42819 xs!286)))))))

(declare-fun b!5068792 () Bool)

(declare-fun res!2158092 () Bool)

(assert (=> b!5068792 (=> (not res!2158092) (not e!3162944))))

(assert (=> b!5068792 (= res!2158092 (not (isEmpty!31635 (left!42819 (left!42819 xs!286)))))))

(declare-fun d!1635100 () Bool)

(declare-fun res!2158090 () Bool)

(declare-fun e!3162943 () Bool)

(assert (=> d!1635100 (=> res!2158090 e!3162943)))

(assert (=> d!1635100 (= res!2158090 (not ((_ is Node!15566) (left!42819 xs!286))))))

(assert (=> d!1635100 (= (isBalanced!4428 (left!42819 xs!286)) e!3162943)))

(declare-fun b!5068793 () Bool)

(assert (=> b!5068793 (= e!3162943 e!3162944)))

(declare-fun res!2158089 () Bool)

(assert (=> b!5068793 (=> (not res!2158089) (not e!3162944))))

(assert (=> b!5068793 (= res!2158089 (<= (- 1) (- (height!2143 (left!42819 (left!42819 xs!286))) (height!2143 (right!43149 (left!42819 xs!286))))))))

(declare-fun b!5068794 () Bool)

(declare-fun res!2158094 () Bool)

(assert (=> b!5068794 (=> (not res!2158094) (not e!3162944))))

(assert (=> b!5068794 (= res!2158094 (isBalanced!4428 (right!43149 (left!42819 xs!286))))))

(declare-fun b!5068795 () Bool)

(declare-fun res!2158091 () Bool)

(assert (=> b!5068795 (=> (not res!2158091) (not e!3162944))))

(assert (=> b!5068795 (= res!2158091 (<= (- (height!2143 (left!42819 (left!42819 xs!286))) (height!2143 (right!43149 (left!42819 xs!286)))) 1))))

(declare-fun b!5068796 () Bool)

(declare-fun res!2158093 () Bool)

(assert (=> b!5068796 (=> (not res!2158093) (not e!3162944))))

(assert (=> b!5068796 (= res!2158093 (isBalanced!4428 (left!42819 (left!42819 xs!286))))))

(assert (= (and d!1635100 (not res!2158090)) b!5068793))

(assert (= (and b!5068793 res!2158089) b!5068795))

(assert (= (and b!5068795 res!2158091) b!5068796))

(assert (= (and b!5068796 res!2158093) b!5068794))

(assert (= (and b!5068794 res!2158094) b!5068792))

(assert (= (and b!5068792 res!2158092) b!5068791))

(assert (=> b!5068795 m!6113028))

(assert (=> b!5068795 m!6113030))

(declare-fun m!6113088 () Bool)

(assert (=> b!5068794 m!6113088))

(assert (=> b!5068793 m!6113028))

(assert (=> b!5068793 m!6113030))

(declare-fun m!6113090 () Bool)

(assert (=> b!5068796 m!6113090))

(declare-fun m!6113092 () Bool)

(assert (=> b!5068792 m!6113092))

(declare-fun m!6113094 () Bool)

(assert (=> b!5068791 m!6113094))

(assert (=> b!5068649 d!1635100))

(declare-fun d!1635102 () Bool)

(declare-fun res!2158095 () Bool)

(declare-fun e!3162945 () Bool)

(assert (=> d!1635102 (=> (not res!2158095) (not e!3162945))))

(assert (=> d!1635102 (= res!2158095 (= (csize!31362 (right!43149 xs!286)) (+ (size!39080 (left!42819 (right!43149 xs!286))) (size!39080 (right!43149 (right!43149 xs!286))))))))

(assert (=> d!1635102 (= (inv!77568 (right!43149 xs!286)) e!3162945)))

(declare-fun b!5068797 () Bool)

(declare-fun res!2158096 () Bool)

(assert (=> b!5068797 (=> (not res!2158096) (not e!3162945))))

(assert (=> b!5068797 (= res!2158096 (and (not (= (left!42819 (right!43149 xs!286)) Empty!15566)) (not (= (right!43149 (right!43149 xs!286)) Empty!15566))))))

(declare-fun b!5068798 () Bool)

(declare-fun res!2158097 () Bool)

(assert (=> b!5068798 (=> (not res!2158097) (not e!3162945))))

(assert (=> b!5068798 (= res!2158097 (= (cheight!15777 (right!43149 xs!286)) (+ (max!0 (height!2143 (left!42819 (right!43149 xs!286))) (height!2143 (right!43149 (right!43149 xs!286)))) 1)))))

(declare-fun b!5068799 () Bool)

(assert (=> b!5068799 (= e!3162945 (<= 0 (cheight!15777 (right!43149 xs!286))))))

(assert (= (and d!1635102 res!2158095) b!5068797))

(assert (= (and b!5068797 res!2158096) b!5068798))

(assert (= (and b!5068798 res!2158097) b!5068799))

(declare-fun m!6113096 () Bool)

(assert (=> d!1635102 m!6113096))

(declare-fun m!6113098 () Bool)

(assert (=> d!1635102 m!6113098))

(declare-fun m!6113100 () Bool)

(assert (=> b!5068798 m!6113100))

(declare-fun m!6113102 () Bool)

(assert (=> b!5068798 m!6113102))

(assert (=> b!5068798 m!6113100))

(assert (=> b!5068798 m!6113102))

(declare-fun m!6113104 () Bool)

(assert (=> b!5068798 m!6113104))

(assert (=> b!5068665 d!1635102))

(declare-fun b!5068800 () Bool)

(declare-fun e!3162947 () Bool)

(assert (=> b!5068800 (= e!3162947 (not (isEmpty!31635 (right!43149 (right!43149 xs!286)))))))

(declare-fun b!5068801 () Bool)

(declare-fun res!2158101 () Bool)

(assert (=> b!5068801 (=> (not res!2158101) (not e!3162947))))

(assert (=> b!5068801 (= res!2158101 (not (isEmpty!31635 (left!42819 (right!43149 xs!286)))))))

(declare-fun d!1635104 () Bool)

(declare-fun res!2158099 () Bool)

(declare-fun e!3162946 () Bool)

(assert (=> d!1635104 (=> res!2158099 e!3162946)))

(assert (=> d!1635104 (= res!2158099 (not ((_ is Node!15566) (right!43149 xs!286))))))

(assert (=> d!1635104 (= (isBalanced!4428 (right!43149 xs!286)) e!3162946)))

(declare-fun b!5068802 () Bool)

(assert (=> b!5068802 (= e!3162946 e!3162947)))

(declare-fun res!2158098 () Bool)

(assert (=> b!5068802 (=> (not res!2158098) (not e!3162947))))

(assert (=> b!5068802 (= res!2158098 (<= (- 1) (- (height!2143 (left!42819 (right!43149 xs!286))) (height!2143 (right!43149 (right!43149 xs!286))))))))

(declare-fun b!5068803 () Bool)

(declare-fun res!2158103 () Bool)

(assert (=> b!5068803 (=> (not res!2158103) (not e!3162947))))

(assert (=> b!5068803 (= res!2158103 (isBalanced!4428 (right!43149 (right!43149 xs!286))))))

(declare-fun b!5068804 () Bool)

(declare-fun res!2158100 () Bool)

(assert (=> b!5068804 (=> (not res!2158100) (not e!3162947))))

(assert (=> b!5068804 (= res!2158100 (<= (- (height!2143 (left!42819 (right!43149 xs!286))) (height!2143 (right!43149 (right!43149 xs!286)))) 1))))

(declare-fun b!5068805 () Bool)

(declare-fun res!2158102 () Bool)

(assert (=> b!5068805 (=> (not res!2158102) (not e!3162947))))

(assert (=> b!5068805 (= res!2158102 (isBalanced!4428 (left!42819 (right!43149 xs!286))))))

(assert (= (and d!1635104 (not res!2158099)) b!5068802))

(assert (= (and b!5068802 res!2158098) b!5068804))

(assert (= (and b!5068804 res!2158100) b!5068805))

(assert (= (and b!5068805 res!2158102) b!5068803))

(assert (= (and b!5068803 res!2158103) b!5068801))

(assert (= (and b!5068801 res!2158101) b!5068800))

(assert (=> b!5068804 m!6113100))

(assert (=> b!5068804 m!6113102))

(declare-fun m!6113106 () Bool)

(assert (=> b!5068803 m!6113106))

(assert (=> b!5068802 m!6113100))

(assert (=> b!5068802 m!6113102))

(declare-fun m!6113108 () Bool)

(assert (=> b!5068805 m!6113108))

(declare-fun m!6113110 () Bool)

(assert (=> b!5068801 m!6113110))

(declare-fun m!6113112 () Bool)

(assert (=> b!5068800 m!6113112))

(assert (=> b!5068647 d!1635104))

(declare-fun d!1635106 () Bool)

(assert (=> d!1635106 (= (inv!77566 (xs!18922 (right!43149 ys!41))) (<= (size!39079 (innerList!15654 (xs!18922 (right!43149 ys!41)))) 2147483647))))

(declare-fun bs!1190007 () Bool)

(assert (= bs!1190007 d!1635106))

(declare-fun m!6113114 () Bool)

(assert (=> bs!1190007 m!6113114))

(assert (=> b!5068713 d!1635106))

(declare-fun b!5068806 () Bool)

(declare-fun e!3162949 () Bool)

(assert (=> b!5068806 (= e!3162949 (not (isEmpty!31635 (right!43149 (left!42819 ys!41)))))))

(declare-fun b!5068807 () Bool)

(declare-fun res!2158107 () Bool)

(assert (=> b!5068807 (=> (not res!2158107) (not e!3162949))))

(assert (=> b!5068807 (= res!2158107 (not (isEmpty!31635 (left!42819 (left!42819 ys!41)))))))

(declare-fun d!1635108 () Bool)

(declare-fun res!2158105 () Bool)

(declare-fun e!3162948 () Bool)

(assert (=> d!1635108 (=> res!2158105 e!3162948)))

(assert (=> d!1635108 (= res!2158105 (not ((_ is Node!15566) (left!42819 ys!41))))))

(assert (=> d!1635108 (= (isBalanced!4428 (left!42819 ys!41)) e!3162948)))

(declare-fun b!5068808 () Bool)

(assert (=> b!5068808 (= e!3162948 e!3162949)))

(declare-fun res!2158104 () Bool)

(assert (=> b!5068808 (=> (not res!2158104) (not e!3162949))))

(assert (=> b!5068808 (= res!2158104 (<= (- 1) (- (height!2143 (left!42819 (left!42819 ys!41))) (height!2143 (right!43149 (left!42819 ys!41))))))))

(declare-fun b!5068809 () Bool)

(declare-fun res!2158109 () Bool)

(assert (=> b!5068809 (=> (not res!2158109) (not e!3162949))))

(assert (=> b!5068809 (= res!2158109 (isBalanced!4428 (right!43149 (left!42819 ys!41))))))

(declare-fun b!5068810 () Bool)

(declare-fun res!2158106 () Bool)

(assert (=> b!5068810 (=> (not res!2158106) (not e!3162949))))

(assert (=> b!5068810 (= res!2158106 (<= (- (height!2143 (left!42819 (left!42819 ys!41))) (height!2143 (right!43149 (left!42819 ys!41)))) 1))))

(declare-fun b!5068811 () Bool)

(declare-fun res!2158108 () Bool)

(assert (=> b!5068811 (=> (not res!2158108) (not e!3162949))))

(assert (=> b!5068811 (= res!2158108 (isBalanced!4428 (left!42819 (left!42819 ys!41))))))

(assert (= (and d!1635108 (not res!2158105)) b!5068808))

(assert (= (and b!5068808 res!2158104) b!5068810))

(assert (= (and b!5068810 res!2158106) b!5068811))

(assert (= (and b!5068811 res!2158108) b!5068809))

(assert (= (and b!5068809 res!2158109) b!5068807))

(assert (= (and b!5068807 res!2158107) b!5068806))

(assert (=> b!5068810 m!6113050))

(assert (=> b!5068810 m!6113052))

(declare-fun m!6113116 () Bool)

(assert (=> b!5068809 m!6113116))

(assert (=> b!5068808 m!6113050))

(assert (=> b!5068808 m!6113052))

(declare-fun m!6113118 () Bool)

(assert (=> b!5068811 m!6113118))

(declare-fun m!6113120 () Bool)

(assert (=> b!5068807 m!6113120))

(declare-fun m!6113122 () Bool)

(assert (=> b!5068806 m!6113122))

(assert (=> b!5068673 d!1635108))

(declare-fun d!1635110 () Bool)

(declare-fun res!2158110 () Bool)

(declare-fun e!3162950 () Bool)

(assert (=> d!1635110 (=> (not res!2158110) (not e!3162950))))

(assert (=> d!1635110 (= res!2158110 (<= (size!39079 (list!18992 (xs!18922 (left!42819 ys!41)))) 512))))

(assert (=> d!1635110 (= (inv!77569 (left!42819 ys!41)) e!3162950)))

(declare-fun b!5068812 () Bool)

(declare-fun res!2158111 () Bool)

(assert (=> b!5068812 (=> (not res!2158111) (not e!3162950))))

(assert (=> b!5068812 (= res!2158111 (= (csize!31363 (left!42819 ys!41)) (size!39079 (list!18992 (xs!18922 (left!42819 ys!41))))))))

(declare-fun b!5068813 () Bool)

(assert (=> b!5068813 (= e!3162950 (and (> (csize!31363 (left!42819 ys!41)) 0) (<= (csize!31363 (left!42819 ys!41)) 512)))))

(assert (= (and d!1635110 res!2158110) b!5068812))

(assert (= (and b!5068812 res!2158111) b!5068813))

(declare-fun m!6113124 () Bool)

(assert (=> d!1635110 m!6113124))

(assert (=> d!1635110 m!6113124))

(declare-fun m!6113126 () Bool)

(assert (=> d!1635110 m!6113126))

(assert (=> b!5068812 m!6113124))

(assert (=> b!5068812 m!6113124))

(assert (=> b!5068812 m!6113126))

(assert (=> b!5068604 d!1635110))

(declare-fun d!1635112 () Bool)

(declare-fun c!870299 () Bool)

(assert (=> d!1635112 (= c!870299 ((_ is Node!15566) (left!42819 (left!42819 ys!41))))))

(declare-fun e!3162951 () Bool)

(assert (=> d!1635112 (= (inv!77567 (left!42819 (left!42819 ys!41))) e!3162951)))

(declare-fun b!5068814 () Bool)

(assert (=> b!5068814 (= e!3162951 (inv!77568 (left!42819 (left!42819 ys!41))))))

(declare-fun b!5068815 () Bool)

(declare-fun e!3162952 () Bool)

(assert (=> b!5068815 (= e!3162951 e!3162952)))

(declare-fun res!2158112 () Bool)

(assert (=> b!5068815 (= res!2158112 (not ((_ is Leaf!25854) (left!42819 (left!42819 ys!41)))))))

(assert (=> b!5068815 (=> res!2158112 e!3162952)))

(declare-fun b!5068816 () Bool)

(assert (=> b!5068816 (= e!3162952 (inv!77569 (left!42819 (left!42819 ys!41))))))

(assert (= (and d!1635112 c!870299) b!5068814))

(assert (= (and d!1635112 (not c!870299)) b!5068815))

(assert (= (and b!5068815 (not res!2158112)) b!5068816))

(declare-fun m!6113128 () Bool)

(assert (=> b!5068814 m!6113128))

(declare-fun m!6113130 () Bool)

(assert (=> b!5068816 m!6113130))

(assert (=> b!5068704 d!1635112))

(declare-fun d!1635114 () Bool)

(declare-fun c!870300 () Bool)

(assert (=> d!1635114 (= c!870300 ((_ is Node!15566) (right!43149 (left!42819 ys!41))))))

(declare-fun e!3162953 () Bool)

(assert (=> d!1635114 (= (inv!77567 (right!43149 (left!42819 ys!41))) e!3162953)))

(declare-fun b!5068817 () Bool)

(assert (=> b!5068817 (= e!3162953 (inv!77568 (right!43149 (left!42819 ys!41))))))

(declare-fun b!5068818 () Bool)

(declare-fun e!3162954 () Bool)

(assert (=> b!5068818 (= e!3162953 e!3162954)))

(declare-fun res!2158113 () Bool)

(assert (=> b!5068818 (= res!2158113 (not ((_ is Leaf!25854) (right!43149 (left!42819 ys!41)))))))

(assert (=> b!5068818 (=> res!2158113 e!3162954)))

(declare-fun b!5068819 () Bool)

(assert (=> b!5068819 (= e!3162954 (inv!77569 (right!43149 (left!42819 ys!41))))))

(assert (= (and d!1635114 c!870300) b!5068817))

(assert (= (and d!1635114 (not c!870300)) b!5068818))

(assert (= (and b!5068818 (not res!2158113)) b!5068819))

(declare-fun m!6113132 () Bool)

(assert (=> b!5068817 m!6113132))

(declare-fun m!6113134 () Bool)

(assert (=> b!5068819 m!6113134))

(assert (=> b!5068704 d!1635114))

(declare-fun d!1635116 () Bool)

(declare-fun res!2158114 () Bool)

(declare-fun e!3162955 () Bool)

(assert (=> d!1635116 (=> (not res!2158114) (not e!3162955))))

(assert (=> d!1635116 (= res!2158114 (<= (size!39079 (list!18992 (xs!18922 ys!41))) 512))))

(assert (=> d!1635116 (= (inv!77569 ys!41) e!3162955)))

(declare-fun b!5068820 () Bool)

(declare-fun res!2158115 () Bool)

(assert (=> b!5068820 (=> (not res!2158115) (not e!3162955))))

(assert (=> b!5068820 (= res!2158115 (= (csize!31363 ys!41) (size!39079 (list!18992 (xs!18922 ys!41)))))))

(declare-fun b!5068821 () Bool)

(assert (=> b!5068821 (= e!3162955 (and (> (csize!31363 ys!41) 0) (<= (csize!31363 ys!41) 512)))))

(assert (= (and d!1635116 res!2158114) b!5068820))

(assert (= (and b!5068820 res!2158115) b!5068821))

(declare-fun m!6113136 () Bool)

(assert (=> d!1635116 m!6113136))

(assert (=> d!1635116 m!6113136))

(declare-fun m!6113138 () Bool)

(assert (=> d!1635116 m!6113138))

(assert (=> b!5068820 m!6113136))

(assert (=> b!5068820 m!6113136))

(assert (=> b!5068820 m!6113138))

(assert (=> b!5068661 d!1635116))

(declare-fun d!1635118 () Bool)

(declare-fun res!2158116 () Bool)

(declare-fun e!3162956 () Bool)

(assert (=> d!1635118 (=> (not res!2158116) (not e!3162956))))

(assert (=> d!1635118 (= res!2158116 (<= (size!39079 (list!18992 (xs!18922 (right!43149 ys!41)))) 512))))

(assert (=> d!1635118 (= (inv!77569 (right!43149 ys!41)) e!3162956)))

(declare-fun b!5068822 () Bool)

(declare-fun res!2158117 () Bool)

(assert (=> b!5068822 (=> (not res!2158117) (not e!3162956))))

(assert (=> b!5068822 (= res!2158117 (= (csize!31363 (right!43149 ys!41)) (size!39079 (list!18992 (xs!18922 (right!43149 ys!41))))))))

(declare-fun b!5068823 () Bool)

(assert (=> b!5068823 (= e!3162956 (and (> (csize!31363 (right!43149 ys!41)) 0) (<= (csize!31363 (right!43149 ys!41)) 512)))))

(assert (= (and d!1635118 res!2158116) b!5068822))

(assert (= (and b!5068822 res!2158117) b!5068823))

(declare-fun m!6113140 () Bool)

(assert (=> d!1635118 m!6113140))

(assert (=> d!1635118 m!6113140))

(declare-fun m!6113142 () Bool)

(assert (=> d!1635118 m!6113142))

(assert (=> b!5068822 m!6113140))

(assert (=> b!5068822 m!6113140))

(assert (=> b!5068822 m!6113142))

(assert (=> b!5068607 d!1635118))

(declare-fun d!1635120 () Bool)

(assert (=> d!1635120 (= (inv!77566 (xs!18922 (left!42819 ys!41))) (<= (size!39079 (innerList!15654 (xs!18922 (left!42819 ys!41)))) 2147483647))))

(declare-fun bs!1190008 () Bool)

(assert (= bs!1190008 d!1635120))

(declare-fun m!6113144 () Bool)

(assert (=> bs!1190008 m!6113144))

(assert (=> b!5068705 d!1635120))

(assert (=> b!5068586 d!1635038))

(assert (=> b!5068586 d!1635040))

(declare-fun d!1635122 () Bool)

(declare-fun lt!2089267 () Bool)

(assert (=> d!1635122 (= lt!2089267 (isEmpty!31636 (list!18993 (left!42819 ys!41))))))

(assert (=> d!1635122 (= lt!2089267 (= (size!39080 (left!42819 ys!41)) 0))))

(assert (=> d!1635122 (= (isEmpty!31635 (left!42819 ys!41)) lt!2089267)))

(declare-fun bs!1190009 () Bool)

(assert (= bs!1190009 d!1635122))

(declare-fun m!6113146 () Bool)

(assert (=> bs!1190009 m!6113146))

(assert (=> bs!1190009 m!6113146))

(declare-fun m!6113148 () Bool)

(assert (=> bs!1190009 m!6113148))

(declare-fun m!6113150 () Bool)

(assert (=> bs!1190009 m!6113150))

(assert (=> b!5068669 d!1635122))

(declare-fun d!1635124 () Bool)

(declare-fun lt!2089268 () Bool)

(assert (=> d!1635124 (= lt!2089268 (isEmpty!31636 (list!18993 (right!43149 ys!41))))))

(assert (=> d!1635124 (= lt!2089268 (= (size!39080 (right!43149 ys!41)) 0))))

(assert (=> d!1635124 (= (isEmpty!31635 (right!43149 ys!41)) lt!2089268)))

(declare-fun bs!1190010 () Bool)

(assert (= bs!1190010 d!1635124))

(declare-fun m!6113152 () Bool)

(assert (=> bs!1190010 m!6113152))

(assert (=> bs!1190010 m!6113152))

(declare-fun m!6113154 () Bool)

(assert (=> bs!1190010 m!6113154))

(declare-fun m!6113156 () Bool)

(assert (=> bs!1190010 m!6113156))

(assert (=> b!5068668 d!1635124))

(declare-fun d!1635126 () Bool)

(declare-fun res!2158118 () Bool)

(declare-fun e!3162957 () Bool)

(assert (=> d!1635126 (=> (not res!2158118) (not e!3162957))))

(assert (=> d!1635126 (= res!2158118 (<= (size!39079 (list!18992 (xs!18922 xs!286))) 512))))

(assert (=> d!1635126 (= (inv!77569 xs!286) e!3162957)))

(declare-fun b!5068824 () Bool)

(declare-fun res!2158119 () Bool)

(assert (=> b!5068824 (=> (not res!2158119) (not e!3162957))))

(assert (=> b!5068824 (= res!2158119 (= (csize!31363 xs!286) (size!39079 (list!18992 (xs!18922 xs!286)))))))

(declare-fun b!5068825 () Bool)

(assert (=> b!5068825 (= e!3162957 (and (> (csize!31363 xs!286) 0) (<= (csize!31363 xs!286) 512)))))

(assert (= (and d!1635126 res!2158118) b!5068824))

(assert (= (and b!5068824 res!2158119) b!5068825))

(declare-fun m!6113158 () Bool)

(assert (=> d!1635126 m!6113158))

(assert (=> d!1635126 m!6113158))

(declare-fun m!6113160 () Bool)

(assert (=> d!1635126 m!6113160))

(assert (=> b!5068824 m!6113158))

(assert (=> b!5068824 m!6113158))

(assert (=> b!5068824 m!6113160))

(assert (=> b!5068655 d!1635126))

(declare-fun d!1635128 () Bool)

(declare-fun res!2158120 () Bool)

(declare-fun e!3162958 () Bool)

(assert (=> d!1635128 (=> (not res!2158120) (not e!3162958))))

(assert (=> d!1635128 (= res!2158120 (= (csize!31362 ys!41) (+ (size!39080 (left!42819 ys!41)) (size!39080 (right!43149 ys!41)))))))

(assert (=> d!1635128 (= (inv!77568 ys!41) e!3162958)))

(declare-fun b!5068826 () Bool)

(declare-fun res!2158121 () Bool)

(assert (=> b!5068826 (=> (not res!2158121) (not e!3162958))))

(assert (=> b!5068826 (= res!2158121 (and (not (= (left!42819 ys!41) Empty!15566)) (not (= (right!43149 ys!41) Empty!15566))))))

(declare-fun b!5068827 () Bool)

(declare-fun res!2158122 () Bool)

(assert (=> b!5068827 (=> (not res!2158122) (not e!3162958))))

(assert (=> b!5068827 (= res!2158122 (= (cheight!15777 ys!41) (+ (max!0 (height!2143 (left!42819 ys!41)) (height!2143 (right!43149 ys!41))) 1)))))

(declare-fun b!5068828 () Bool)

(assert (=> b!5068828 (= e!3162958 (<= 0 (cheight!15777 ys!41)))))

(assert (= (and d!1635128 res!2158120) b!5068826))

(assert (= (and b!5068826 res!2158121) b!5068827))

(assert (= (and b!5068827 res!2158122) b!5068828))

(assert (=> d!1635128 m!6113150))

(assert (=> d!1635128 m!6113156))

(assert (=> b!5068827 m!6112922))

(assert (=> b!5068827 m!6112924))

(assert (=> b!5068827 m!6112922))

(assert (=> b!5068827 m!6112924))

(declare-fun m!6113162 () Bool)

(assert (=> b!5068827 m!6113162))

(assert (=> b!5068659 d!1635128))

(declare-fun d!1635130 () Bool)

(assert (=> d!1635130 (= (inv!77566 (xs!18922 (right!43149 xs!286))) (<= (size!39079 (innerList!15654 (xs!18922 (right!43149 xs!286)))) 2147483647))))

(declare-fun bs!1190011 () Bool)

(assert (= bs!1190011 d!1635130))

(declare-fun m!6113164 () Bool)

(assert (=> bs!1190011 m!6113164))

(assert (=> b!5068728 d!1635130))

(declare-fun d!1635132 () Bool)

(declare-fun lt!2089269 () Int)

(assert (=> d!1635132 (>= lt!2089269 0)))

(declare-fun e!3162959 () Int)

(assert (=> d!1635132 (= lt!2089269 e!3162959)))

(declare-fun c!870301 () Bool)

(assert (=> d!1635132 (= c!870301 ((_ is Nil!58436) (innerList!15654 (xs!18922 xs!286))))))

(assert (=> d!1635132 (= (size!39079 (innerList!15654 (xs!18922 xs!286))) lt!2089269)))

(declare-fun b!5068829 () Bool)

(assert (=> b!5068829 (= e!3162959 0)))

(declare-fun b!5068830 () Bool)

(assert (=> b!5068830 (= e!3162959 (+ 1 (size!39079 (t!371303 (innerList!15654 (xs!18922 xs!286))))))))

(assert (= (and d!1635132 c!870301) b!5068829))

(assert (= (and d!1635132 (not c!870301)) b!5068830))

(declare-fun m!6113166 () Bool)

(assert (=> b!5068830 m!6113166))

(assert (=> d!1635054 d!1635132))

(declare-fun d!1635134 () Bool)

(declare-fun res!2158123 () Bool)

(declare-fun e!3162960 () Bool)

(assert (=> d!1635134 (=> (not res!2158123) (not e!3162960))))

(assert (=> d!1635134 (= res!2158123 (= (csize!31362 (right!43149 ys!41)) (+ (size!39080 (left!42819 (right!43149 ys!41))) (size!39080 (right!43149 (right!43149 ys!41))))))))

(assert (=> d!1635134 (= (inv!77568 (right!43149 ys!41)) e!3162960)))

(declare-fun b!5068831 () Bool)

(declare-fun res!2158124 () Bool)

(assert (=> b!5068831 (=> (not res!2158124) (not e!3162960))))

(assert (=> b!5068831 (= res!2158124 (and (not (= (left!42819 (right!43149 ys!41)) Empty!15566)) (not (= (right!43149 (right!43149 ys!41)) Empty!15566))))))

(declare-fun b!5068832 () Bool)

(declare-fun res!2158125 () Bool)

(assert (=> b!5068832 (=> (not res!2158125) (not e!3162960))))

(assert (=> b!5068832 (= res!2158125 (= (cheight!15777 (right!43149 ys!41)) (+ (max!0 (height!2143 (left!42819 (right!43149 ys!41))) (height!2143 (right!43149 (right!43149 ys!41)))) 1)))))

(declare-fun b!5068833 () Bool)

(assert (=> b!5068833 (= e!3162960 (<= 0 (cheight!15777 (right!43149 ys!41))))))

(assert (= (and d!1635134 res!2158123) b!5068831))

(assert (= (and b!5068831 res!2158124) b!5068832))

(assert (= (and b!5068832 res!2158125) b!5068833))

(declare-fun m!6113168 () Bool)

(assert (=> d!1635134 m!6113168))

(declare-fun m!6113170 () Bool)

(assert (=> d!1635134 m!6113170))

(assert (=> b!5068832 m!6113034))

(assert (=> b!5068832 m!6113036))

(assert (=> b!5068832 m!6113034))

(assert (=> b!5068832 m!6113036))

(declare-fun m!6113172 () Bool)

(assert (=> b!5068832 m!6113172))

(assert (=> b!5068605 d!1635134))

(declare-fun d!1635136 () Bool)

(declare-fun c!870302 () Bool)

(assert (=> d!1635136 (= c!870302 ((_ is Node!15566) (left!42819 (right!43149 xs!286))))))

(declare-fun e!3162961 () Bool)

(assert (=> d!1635136 (= (inv!77567 (left!42819 (right!43149 xs!286))) e!3162961)))

(declare-fun b!5068834 () Bool)

(assert (=> b!5068834 (= e!3162961 (inv!77568 (left!42819 (right!43149 xs!286))))))

(declare-fun b!5068835 () Bool)

(declare-fun e!3162962 () Bool)

(assert (=> b!5068835 (= e!3162961 e!3162962)))

(declare-fun res!2158126 () Bool)

(assert (=> b!5068835 (= res!2158126 (not ((_ is Leaf!25854) (left!42819 (right!43149 xs!286)))))))

(assert (=> b!5068835 (=> res!2158126 e!3162962)))

(declare-fun b!5068836 () Bool)

(assert (=> b!5068836 (= e!3162962 (inv!77569 (left!42819 (right!43149 xs!286))))))

(assert (= (and d!1635136 c!870302) b!5068834))

(assert (= (and d!1635136 (not c!870302)) b!5068835))

(assert (= (and b!5068835 (not res!2158126)) b!5068836))

(declare-fun m!6113174 () Bool)

(assert (=> b!5068834 m!6113174))

(declare-fun m!6113176 () Bool)

(assert (=> b!5068836 m!6113176))

(assert (=> b!5068727 d!1635136))

(declare-fun d!1635138 () Bool)

(declare-fun c!870303 () Bool)

(assert (=> d!1635138 (= c!870303 ((_ is Node!15566) (right!43149 (right!43149 xs!286))))))

(declare-fun e!3162963 () Bool)

(assert (=> d!1635138 (= (inv!77567 (right!43149 (right!43149 xs!286))) e!3162963)))

(declare-fun b!5068837 () Bool)

(assert (=> b!5068837 (= e!3162963 (inv!77568 (right!43149 (right!43149 xs!286))))))

(declare-fun b!5068838 () Bool)

(declare-fun e!3162964 () Bool)

(assert (=> b!5068838 (= e!3162963 e!3162964)))

(declare-fun res!2158127 () Bool)

(assert (=> b!5068838 (= res!2158127 (not ((_ is Leaf!25854) (right!43149 (right!43149 xs!286)))))))

(assert (=> b!5068838 (=> res!2158127 e!3162964)))

(declare-fun b!5068839 () Bool)

(assert (=> b!5068839 (= e!3162964 (inv!77569 (right!43149 (right!43149 xs!286))))))

(assert (= (and d!1635138 c!870303) b!5068837))

(assert (= (and d!1635138 (not c!870303)) b!5068838))

(assert (= (and b!5068838 (not res!2158127)) b!5068839))

(declare-fun m!6113178 () Bool)

(assert (=> b!5068837 m!6113178))

(declare-fun m!6113180 () Bool)

(assert (=> b!5068839 m!6113180))

(assert (=> b!5068727 d!1635138))

(declare-fun b!5068840 () Bool)

(declare-fun e!3162965 () Bool)

(declare-fun tp!1415038 () Bool)

(assert (=> b!5068840 (= e!3162965 (and tp_is_empty!37055 tp!1415038))))

(assert (=> b!5068729 (= tp!1415022 e!3162965)))

(assert (= (and b!5068729 ((_ is Cons!58436) (innerList!15654 (xs!18922 (right!43149 xs!286))))) b!5068840))

(declare-fun tp!1415039 () Bool)

(declare-fun e!3162967 () Bool)

(declare-fun tp!1415041 () Bool)

(declare-fun b!5068841 () Bool)

(assert (=> b!5068841 (= e!3162967 (and (inv!77567 (left!42819 (left!42819 (left!42819 xs!286)))) tp!1415039 (inv!77567 (right!43149 (left!42819 (left!42819 xs!286)))) tp!1415041))))

(declare-fun b!5068843 () Bool)

(declare-fun e!3162966 () Bool)

(declare-fun tp!1415040 () Bool)

(assert (=> b!5068843 (= e!3162966 tp!1415040)))

(declare-fun b!5068842 () Bool)

(assert (=> b!5068842 (= e!3162967 (and (inv!77566 (xs!18922 (left!42819 (left!42819 xs!286)))) e!3162966))))

(assert (=> b!5068724 (= tp!1415018 (and (inv!77567 (left!42819 (left!42819 xs!286))) e!3162967))))

(assert (= (and b!5068724 ((_ is Node!15566) (left!42819 (left!42819 xs!286)))) b!5068841))

(assert (= b!5068842 b!5068843))

(assert (= (and b!5068724 ((_ is Leaf!25854) (left!42819 (left!42819 xs!286)))) b!5068842))

(declare-fun m!6113182 () Bool)

(assert (=> b!5068841 m!6113182))

(declare-fun m!6113184 () Bool)

(assert (=> b!5068841 m!6113184))

(declare-fun m!6113186 () Bool)

(assert (=> b!5068842 m!6113186))

(assert (=> b!5068724 m!6112978))

(declare-fun e!3162969 () Bool)

(declare-fun b!5068844 () Bool)

(declare-fun tp!1415044 () Bool)

(declare-fun tp!1415042 () Bool)

(assert (=> b!5068844 (= e!3162969 (and (inv!77567 (left!42819 (right!43149 (left!42819 xs!286)))) tp!1415042 (inv!77567 (right!43149 (right!43149 (left!42819 xs!286)))) tp!1415044))))

(declare-fun b!5068846 () Bool)

(declare-fun e!3162968 () Bool)

(declare-fun tp!1415043 () Bool)

(assert (=> b!5068846 (= e!3162968 tp!1415043)))

(declare-fun b!5068845 () Bool)

(assert (=> b!5068845 (= e!3162969 (and (inv!77566 (xs!18922 (right!43149 (left!42819 xs!286)))) e!3162968))))

(assert (=> b!5068724 (= tp!1415020 (and (inv!77567 (right!43149 (left!42819 xs!286))) e!3162969))))

(assert (= (and b!5068724 ((_ is Node!15566) (right!43149 (left!42819 xs!286)))) b!5068844))

(assert (= b!5068845 b!5068846))

(assert (= (and b!5068724 ((_ is Leaf!25854) (right!43149 (left!42819 xs!286)))) b!5068845))

(declare-fun m!6113188 () Bool)

(assert (=> b!5068844 m!6113188))

(declare-fun m!6113190 () Bool)

(assert (=> b!5068844 m!6113190))

(declare-fun m!6113192 () Bool)

(assert (=> b!5068845 m!6113192))

(assert (=> b!5068724 m!6112980))

(declare-fun b!5068847 () Bool)

(declare-fun e!3162970 () Bool)

(declare-fun tp!1415045 () Bool)

(assert (=> b!5068847 (= e!3162970 (and tp_is_empty!37055 tp!1415045))))

(assert (=> b!5068706 (= tp!1415003 e!3162970)))

(assert (= (and b!5068706 ((_ is Cons!58436) (innerList!15654 (xs!18922 (left!42819 ys!41))))) b!5068847))

(declare-fun b!5068848 () Bool)

(declare-fun e!3162972 () Bool)

(declare-fun tp!1415046 () Bool)

(declare-fun tp!1415048 () Bool)

(assert (=> b!5068848 (= e!3162972 (and (inv!77567 (left!42819 (left!42819 (right!43149 ys!41)))) tp!1415046 (inv!77567 (right!43149 (left!42819 (right!43149 ys!41)))) tp!1415048))))

(declare-fun b!5068850 () Bool)

(declare-fun e!3162971 () Bool)

(declare-fun tp!1415047 () Bool)

(assert (=> b!5068850 (= e!3162971 tp!1415047)))

(declare-fun b!5068849 () Bool)

(assert (=> b!5068849 (= e!3162972 (and (inv!77566 (xs!18922 (left!42819 (right!43149 ys!41)))) e!3162971))))

(assert (=> b!5068712 (= tp!1415007 (and (inv!77567 (left!42819 (right!43149 ys!41))) e!3162972))))

(assert (= (and b!5068712 ((_ is Node!15566) (left!42819 (right!43149 ys!41)))) b!5068848))

(assert (= b!5068849 b!5068850))

(assert (= (and b!5068712 ((_ is Leaf!25854) (left!42819 (right!43149 ys!41)))) b!5068849))

(declare-fun m!6113194 () Bool)

(assert (=> b!5068848 m!6113194))

(declare-fun m!6113196 () Bool)

(assert (=> b!5068848 m!6113196))

(declare-fun m!6113198 () Bool)

(assert (=> b!5068849 m!6113198))

(assert (=> b!5068712 m!6112972))

(declare-fun tp!1415051 () Bool)

(declare-fun tp!1415049 () Bool)

(declare-fun e!3162974 () Bool)

(declare-fun b!5068851 () Bool)

(assert (=> b!5068851 (= e!3162974 (and (inv!77567 (left!42819 (right!43149 (right!43149 ys!41)))) tp!1415049 (inv!77567 (right!43149 (right!43149 (right!43149 ys!41)))) tp!1415051))))

(declare-fun b!5068853 () Bool)

(declare-fun e!3162973 () Bool)

(declare-fun tp!1415050 () Bool)

(assert (=> b!5068853 (= e!3162973 tp!1415050)))

(declare-fun b!5068852 () Bool)

(assert (=> b!5068852 (= e!3162974 (and (inv!77566 (xs!18922 (right!43149 (right!43149 ys!41)))) e!3162973))))

(assert (=> b!5068712 (= tp!1415010 (and (inv!77567 (right!43149 (right!43149 ys!41))) e!3162974))))

(assert (= (and b!5068712 ((_ is Node!15566) (right!43149 (right!43149 ys!41)))) b!5068851))

(assert (= b!5068852 b!5068853))

(assert (= (and b!5068712 ((_ is Leaf!25854) (right!43149 (right!43149 ys!41)))) b!5068852))

(declare-fun m!6113200 () Bool)

(assert (=> b!5068851 m!6113200))

(declare-fun m!6113202 () Bool)

(assert (=> b!5068851 m!6113202))

(declare-fun m!6113204 () Bool)

(assert (=> b!5068852 m!6113204))

(assert (=> b!5068712 m!6112974))

(declare-fun b!5068854 () Bool)

(declare-fun tp!1415052 () Bool)

(declare-fun e!3162976 () Bool)

(declare-fun tp!1415054 () Bool)

(assert (=> b!5068854 (= e!3162976 (and (inv!77567 (left!42819 (left!42819 (left!42819 ys!41)))) tp!1415052 (inv!77567 (right!43149 (left!42819 (left!42819 ys!41)))) tp!1415054))))

(declare-fun b!5068856 () Bool)

(declare-fun e!3162975 () Bool)

(declare-fun tp!1415053 () Bool)

(assert (=> b!5068856 (= e!3162975 tp!1415053)))

(declare-fun b!5068855 () Bool)

(assert (=> b!5068855 (= e!3162976 (and (inv!77566 (xs!18922 (left!42819 (left!42819 ys!41)))) e!3162975))))

(assert (=> b!5068704 (= tp!1415002 (and (inv!77567 (left!42819 (left!42819 ys!41))) e!3162976))))

(assert (= (and b!5068704 ((_ is Node!15566) (left!42819 (left!42819 ys!41)))) b!5068854))

(assert (= b!5068855 b!5068856))

(assert (= (and b!5068704 ((_ is Leaf!25854) (left!42819 (left!42819 ys!41)))) b!5068855))

(declare-fun m!6113206 () Bool)

(assert (=> b!5068854 m!6113206))

(declare-fun m!6113208 () Bool)

(assert (=> b!5068854 m!6113208))

(declare-fun m!6113210 () Bool)

(assert (=> b!5068855 m!6113210))

(assert (=> b!5068704 m!6112966))

(declare-fun tp!1415055 () Bool)

(declare-fun b!5068857 () Bool)

(declare-fun tp!1415057 () Bool)

(declare-fun e!3162978 () Bool)

(assert (=> b!5068857 (= e!3162978 (and (inv!77567 (left!42819 (right!43149 (left!42819 ys!41)))) tp!1415055 (inv!77567 (right!43149 (right!43149 (left!42819 ys!41)))) tp!1415057))))

(declare-fun b!5068859 () Bool)

(declare-fun e!3162977 () Bool)

(declare-fun tp!1415056 () Bool)

(assert (=> b!5068859 (= e!3162977 tp!1415056)))

(declare-fun b!5068858 () Bool)

(assert (=> b!5068858 (= e!3162978 (and (inv!77566 (xs!18922 (right!43149 (left!42819 ys!41)))) e!3162977))))

(assert (=> b!5068704 (= tp!1415004 (and (inv!77567 (right!43149 (left!42819 ys!41))) e!3162978))))

(assert (= (and b!5068704 ((_ is Node!15566) (right!43149 (left!42819 ys!41)))) b!5068857))

(assert (= b!5068858 b!5068859))

(assert (= (and b!5068704 ((_ is Leaf!25854) (right!43149 (left!42819 ys!41)))) b!5068858))

(declare-fun m!6113212 () Bool)

(assert (=> b!5068857 m!6113212))

(declare-fun m!6113214 () Bool)

(assert (=> b!5068857 m!6113214))

(declare-fun m!6113216 () Bool)

(assert (=> b!5068858 m!6113216))

(assert (=> b!5068704 m!6112968))

(declare-fun b!5068860 () Bool)

(declare-fun e!3162979 () Bool)

(declare-fun tp!1415058 () Bool)

(assert (=> b!5068860 (= e!3162979 (and tp_is_empty!37055 tp!1415058))))

(assert (=> b!5068723 (= tp!1415017 e!3162979)))

(assert (= (and b!5068723 ((_ is Cons!58436) (t!371303 (innerList!15654 (xs!18922 xs!286))))) b!5068860))

(declare-fun b!5068861 () Bool)

(declare-fun e!3162980 () Bool)

(declare-fun tp!1415059 () Bool)

(assert (=> b!5068861 (= e!3162980 (and tp_is_empty!37055 tp!1415059))))

(assert (=> b!5068733 (= tp!1415027 e!3162980)))

(assert (= (and b!5068733 ((_ is Cons!58436) (t!371303 (innerList!15654 (xs!18922 ys!41))))) b!5068861))

(declare-fun b!5068862 () Bool)

(declare-fun e!3162981 () Bool)

(declare-fun tp!1415060 () Bool)

(assert (=> b!5068862 (= e!3162981 (and tp_is_empty!37055 tp!1415060))))

(assert (=> b!5068714 (= tp!1415009 e!3162981)))

(assert (= (and b!5068714 ((_ is Cons!58436) (innerList!15654 (xs!18922 (right!43149 ys!41))))) b!5068862))

(declare-fun b!5068863 () Bool)

(declare-fun e!3162982 () Bool)

(declare-fun tp!1415061 () Bool)

(assert (=> b!5068863 (= e!3162982 (and tp_is_empty!37055 tp!1415061))))

(assert (=> b!5068726 (= tp!1415019 e!3162982)))

(assert (= (and b!5068726 ((_ is Cons!58436) (innerList!15654 (xs!18922 (left!42819 xs!286))))) b!5068863))

(declare-fun tp!1415064 () Bool)

(declare-fun tp!1415062 () Bool)

(declare-fun b!5068864 () Bool)

(declare-fun e!3162984 () Bool)

(assert (=> b!5068864 (= e!3162984 (and (inv!77567 (left!42819 (left!42819 (right!43149 xs!286)))) tp!1415062 (inv!77567 (right!43149 (left!42819 (right!43149 xs!286)))) tp!1415064))))

(declare-fun b!5068866 () Bool)

(declare-fun e!3162983 () Bool)

(declare-fun tp!1415063 () Bool)

(assert (=> b!5068866 (= e!3162983 tp!1415063)))

(declare-fun b!5068865 () Bool)

(assert (=> b!5068865 (= e!3162984 (and (inv!77566 (xs!18922 (left!42819 (right!43149 xs!286)))) e!3162983))))

(assert (=> b!5068727 (= tp!1415021 (and (inv!77567 (left!42819 (right!43149 xs!286))) e!3162984))))

(assert (= (and b!5068727 ((_ is Node!15566) (left!42819 (right!43149 xs!286)))) b!5068864))

(assert (= b!5068865 b!5068866))

(assert (= (and b!5068727 ((_ is Leaf!25854) (left!42819 (right!43149 xs!286)))) b!5068865))

(declare-fun m!6113218 () Bool)

(assert (=> b!5068864 m!6113218))

(declare-fun m!6113220 () Bool)

(assert (=> b!5068864 m!6113220))

(declare-fun m!6113222 () Bool)

(assert (=> b!5068865 m!6113222))

(assert (=> b!5068727 m!6112984))

(declare-fun b!5068867 () Bool)

(declare-fun tp!1415065 () Bool)

(declare-fun e!3162986 () Bool)

(declare-fun tp!1415067 () Bool)

(assert (=> b!5068867 (= e!3162986 (and (inv!77567 (left!42819 (right!43149 (right!43149 xs!286)))) tp!1415065 (inv!77567 (right!43149 (right!43149 (right!43149 xs!286)))) tp!1415067))))

(declare-fun b!5068869 () Bool)

(declare-fun e!3162985 () Bool)

(declare-fun tp!1415066 () Bool)

(assert (=> b!5068869 (= e!3162985 tp!1415066)))

(declare-fun b!5068868 () Bool)

(assert (=> b!5068868 (= e!3162986 (and (inv!77566 (xs!18922 (right!43149 (right!43149 xs!286)))) e!3162985))))

(assert (=> b!5068727 (= tp!1415023 (and (inv!77567 (right!43149 (right!43149 xs!286))) e!3162986))))

(assert (= (and b!5068727 ((_ is Node!15566) (right!43149 (right!43149 xs!286)))) b!5068867))

(assert (= b!5068868 b!5068869))

(assert (= (and b!5068727 ((_ is Leaf!25854) (right!43149 (right!43149 xs!286)))) b!5068868))

(declare-fun m!6113224 () Bool)

(assert (=> b!5068867 m!6113224))

(declare-fun m!6113226 () Bool)

(assert (=> b!5068867 m!6113226))

(declare-fun m!6113228 () Bool)

(assert (=> b!5068868 m!6113228))

(assert (=> b!5068727 m!6112986))

(check-sat (not b!5068777) (not b!5068810) (not b!5068798) (not b!5068819) (not b!5068793) (not b!5068751) (not b!5068868) (not b!5068800) (not b!5068840) (not b!5068863) (not b!5068796) (not d!1635106) (not b!5068774) tp_is_empty!37055 (not b!5068850) (not b!5068816) (not b!5068869) (not b!5068841) (not d!1635134) (not b!5068792) (not b!5068866) (not b!5068862) (not b!5068854) (not b!5068843) (not b!5068724) (not b!5068865) (not b!5068844) (not b!5068820) (not b!5068856) (not b!5068807) (not b!5068837) (not b!5068766) (not b!5068771) (not d!1635068) (not b!5068763) (not b!5068764) (not b!5068830) (not b!5068847) (not d!1635092) (not b!5068779) (not b!5068857) (not b!5068845) (not b!5068789) (not b!5068776) (not b!5068806) (not b!5068811) (not b!5068834) (not b!5068712) (not d!1635124) (not b!5068801) (not b!5068860) (not b!5068788) (not d!1635094) (not b!5068757) (not b!5068851) (not b!5068824) (not b!5068827) (not d!1635120) (not b!5068805) (not d!1635072) (not b!5068795) (not b!5068808) (not d!1635110) (not b!5068812) (not d!1635128) (not b!5068858) (not d!1635118) (not b!5068867) (not b!5068727) (not b!5068859) (not d!1635070) (not b!5068817) (not b!5068852) (not b!5068853) (not b!5068861) (not b!5068839) (not b!5068791) (not b!5068804) (not b!5068704) (not d!1635098) (not b!5068782) (not b!5068765) (not b!5068780) (not b!5068762) (not b!5068836) (not b!5068864) (not b!5068814) (not b!5068773) (not b!5068855) (not b!5068802) (not b!5068822) (not b!5068848) (not b!5068846) (not d!1635076) (not d!1635122) (not d!1635102) (not d!1635096) (not b!5068842) (not b!5068809) (not d!1635130) (not b!5068794) (not b!5068849) (not b!5068803) (not b!5068760) (not d!1635116) (not d!1635126) (not b!5068767) (not b!5068832) (not b!5068769))
(check-sat)
(get-model)

(declare-fun d!1635212 () Bool)

(declare-fun lt!2089280 () Int)

(assert (=> d!1635212 (>= lt!2089280 0)))

(declare-fun e!3163053 () Int)

(assert (=> d!1635212 (= lt!2089280 e!3163053)))

(declare-fun c!870316 () Bool)

(assert (=> d!1635212 (= c!870316 ((_ is Nil!58436) (list!18992 (xs!18922 (right!43149 ys!41)))))))

(assert (=> d!1635212 (= (size!39079 (list!18992 (xs!18922 (right!43149 ys!41)))) lt!2089280)))

(declare-fun b!5068996 () Bool)

(assert (=> b!5068996 (= e!3163053 0)))

(declare-fun b!5068997 () Bool)

(assert (=> b!5068997 (= e!3163053 (+ 1 (size!39079 (t!371303 (list!18992 (xs!18922 (right!43149 ys!41)))))))))

(assert (= (and d!1635212 c!870316) b!5068996))

(assert (= (and d!1635212 (not c!870316)) b!5068997))

(declare-fun m!6113446 () Bool)

(assert (=> b!5068997 m!6113446))

(assert (=> d!1635118 d!1635212))

(declare-fun d!1635214 () Bool)

(assert (=> d!1635214 (= (list!18992 (xs!18922 (right!43149 ys!41))) (innerList!15654 (xs!18922 (right!43149 ys!41))))))

(assert (=> d!1635118 d!1635214))

(declare-fun d!1635216 () Bool)

(declare-fun lt!2089281 () Bool)

(assert (=> d!1635216 (= lt!2089281 (isEmpty!31636 (list!18993 (right!43149 (left!42819 ys!41)))))))

(assert (=> d!1635216 (= lt!2089281 (= (size!39080 (right!43149 (left!42819 ys!41))) 0))))

(assert (=> d!1635216 (= (isEmpty!31635 (right!43149 (left!42819 ys!41))) lt!2089281)))

(declare-fun bs!1190020 () Bool)

(assert (= bs!1190020 d!1635216))

(declare-fun m!6113448 () Bool)

(assert (=> bs!1190020 m!6113448))

(assert (=> bs!1190020 m!6113448))

(declare-fun m!6113450 () Bool)

(assert (=> bs!1190020 m!6113450))

(assert (=> bs!1190020 m!6113048))

(assert (=> b!5068806 d!1635216))

(declare-fun d!1635218 () Bool)

(assert (=> d!1635218 (= (max!0 (height!2143 (left!42819 (left!42819 xs!286))) (height!2143 (right!43149 (left!42819 xs!286)))) (ite (< (height!2143 (left!42819 (left!42819 xs!286))) (height!2143 (right!43149 (left!42819 xs!286)))) (height!2143 (right!43149 (left!42819 xs!286))) (height!2143 (left!42819 (left!42819 xs!286)))))))

(assert (=> b!5068760 d!1635218))

(declare-fun d!1635220 () Bool)

(assert (=> d!1635220 (= (height!2143 (left!42819 (left!42819 xs!286))) (ite ((_ is Empty!15566) (left!42819 (left!42819 xs!286))) 0 (ite ((_ is Leaf!25854) (left!42819 (left!42819 xs!286))) 1 (cheight!15777 (left!42819 (left!42819 xs!286))))))))

(assert (=> b!5068760 d!1635220))

(declare-fun d!1635222 () Bool)

(assert (=> d!1635222 (= (height!2143 (right!43149 (left!42819 xs!286))) (ite ((_ is Empty!15566) (right!43149 (left!42819 xs!286))) 0 (ite ((_ is Leaf!25854) (right!43149 (left!42819 xs!286))) 1 (cheight!15777 (right!43149 (left!42819 xs!286))))))))

(assert (=> b!5068760 d!1635222))

(declare-fun d!1635224 () Bool)

(declare-fun c!870317 () Bool)

(assert (=> d!1635224 (= c!870317 ((_ is Node!15566) (left!42819 (right!43149 (left!42819 ys!41)))))))

(declare-fun e!3163054 () Bool)

(assert (=> d!1635224 (= (inv!77567 (left!42819 (right!43149 (left!42819 ys!41)))) e!3163054)))

(declare-fun b!5068998 () Bool)

(assert (=> b!5068998 (= e!3163054 (inv!77568 (left!42819 (right!43149 (left!42819 ys!41)))))))

(declare-fun b!5068999 () Bool)

(declare-fun e!3163055 () Bool)

(assert (=> b!5068999 (= e!3163054 e!3163055)))

(declare-fun res!2158200 () Bool)

(assert (=> b!5068999 (= res!2158200 (not ((_ is Leaf!25854) (left!42819 (right!43149 (left!42819 ys!41))))))))

(assert (=> b!5068999 (=> res!2158200 e!3163055)))

(declare-fun b!5069000 () Bool)

(assert (=> b!5069000 (= e!3163055 (inv!77569 (left!42819 (right!43149 (left!42819 ys!41)))))))

(assert (= (and d!1635224 c!870317) b!5068998))

(assert (= (and d!1635224 (not c!870317)) b!5068999))

(assert (= (and b!5068999 (not res!2158200)) b!5069000))

(declare-fun m!6113452 () Bool)

(assert (=> b!5068998 m!6113452))

(declare-fun m!6113454 () Bool)

(assert (=> b!5069000 m!6113454))

(assert (=> b!5068857 d!1635224))

(declare-fun d!1635226 () Bool)

(declare-fun c!870318 () Bool)

(assert (=> d!1635226 (= c!870318 ((_ is Node!15566) (right!43149 (right!43149 (left!42819 ys!41)))))))

(declare-fun e!3163056 () Bool)

(assert (=> d!1635226 (= (inv!77567 (right!43149 (right!43149 (left!42819 ys!41)))) e!3163056)))

(declare-fun b!5069001 () Bool)

(assert (=> b!5069001 (= e!3163056 (inv!77568 (right!43149 (right!43149 (left!42819 ys!41)))))))

(declare-fun b!5069002 () Bool)

(declare-fun e!3163057 () Bool)

(assert (=> b!5069002 (= e!3163056 e!3163057)))

(declare-fun res!2158201 () Bool)

(assert (=> b!5069002 (= res!2158201 (not ((_ is Leaf!25854) (right!43149 (right!43149 (left!42819 ys!41))))))))

(assert (=> b!5069002 (=> res!2158201 e!3163057)))

(declare-fun b!5069003 () Bool)

(assert (=> b!5069003 (= e!3163057 (inv!77569 (right!43149 (right!43149 (left!42819 ys!41)))))))

(assert (= (and d!1635226 c!870318) b!5069001))

(assert (= (and d!1635226 (not c!870318)) b!5069002))

(assert (= (and b!5069002 (not res!2158201)) b!5069003))

(declare-fun m!6113456 () Bool)

(assert (=> b!5069001 m!6113456))

(declare-fun m!6113458 () Bool)

(assert (=> b!5069003 m!6113458))

(assert (=> b!5068857 d!1635226))

(declare-fun d!1635228 () Bool)

(declare-fun res!2158202 () Bool)

(declare-fun e!3163058 () Bool)

(assert (=> d!1635228 (=> (not res!2158202) (not e!3163058))))

(assert (=> d!1635228 (= res!2158202 (<= (size!39079 (list!18992 (xs!18922 (right!43149 (right!43149 xs!286))))) 512))))

(assert (=> d!1635228 (= (inv!77569 (right!43149 (right!43149 xs!286))) e!3163058)))

(declare-fun b!5069004 () Bool)

(declare-fun res!2158203 () Bool)

(assert (=> b!5069004 (=> (not res!2158203) (not e!3163058))))

(assert (=> b!5069004 (= res!2158203 (= (csize!31363 (right!43149 (right!43149 xs!286))) (size!39079 (list!18992 (xs!18922 (right!43149 (right!43149 xs!286)))))))))

(declare-fun b!5069005 () Bool)

(assert (=> b!5069005 (= e!3163058 (and (> (csize!31363 (right!43149 (right!43149 xs!286))) 0) (<= (csize!31363 (right!43149 (right!43149 xs!286))) 512)))))

(assert (= (and d!1635228 res!2158202) b!5069004))

(assert (= (and b!5069004 res!2158203) b!5069005))

(declare-fun m!6113460 () Bool)

(assert (=> d!1635228 m!6113460))

(assert (=> d!1635228 m!6113460))

(declare-fun m!6113462 () Bool)

(assert (=> d!1635228 m!6113462))

(assert (=> b!5069004 m!6113460))

(assert (=> b!5069004 m!6113460))

(assert (=> b!5069004 m!6113462))

(assert (=> b!5068839 d!1635228))

(declare-fun d!1635230 () Bool)

(declare-fun lt!2089282 () Int)

(assert (=> d!1635230 (>= lt!2089282 0)))

(declare-fun e!3163059 () Int)

(assert (=> d!1635230 (= lt!2089282 e!3163059)))

(declare-fun c!870319 () Bool)

(assert (=> d!1635230 (= c!870319 ((_ is Nil!58436) (innerList!15654 (xs!18922 (left!42819 xs!286)))))))

(assert (=> d!1635230 (= (size!39079 (innerList!15654 (xs!18922 (left!42819 xs!286)))) lt!2089282)))

(declare-fun b!5069006 () Bool)

(assert (=> b!5069006 (= e!3163059 0)))

(declare-fun b!5069007 () Bool)

(assert (=> b!5069007 (= e!3163059 (+ 1 (size!39079 (t!371303 (innerList!15654 (xs!18922 (left!42819 xs!286)))))))))

(assert (= (and d!1635230 c!870319) b!5069006))

(assert (= (and d!1635230 (not c!870319)) b!5069007))

(declare-fun m!6113464 () Bool)

(assert (=> b!5069007 m!6113464))

(assert (=> d!1635094 d!1635230))

(declare-fun d!1635232 () Bool)

(declare-fun lt!2089283 () Bool)

(assert (=> d!1635232 (= lt!2089283 (isEmpty!31636 (list!18993 (left!42819 (right!43149 ys!41)))))))

(assert (=> d!1635232 (= lt!2089283 (= (size!39080 (left!42819 (right!43149 ys!41))) 0))))

(assert (=> d!1635232 (= (isEmpty!31635 (left!42819 (right!43149 ys!41))) lt!2089283)))

(declare-fun bs!1190021 () Bool)

(assert (= bs!1190021 d!1635232))

(declare-fun m!6113466 () Bool)

(assert (=> bs!1190021 m!6113466))

(assert (=> bs!1190021 m!6113466))

(declare-fun m!6113468 () Bool)

(assert (=> bs!1190021 m!6113468))

(assert (=> bs!1190021 m!6113168))

(assert (=> b!5068763 d!1635232))

(declare-fun d!1635234 () Bool)

(declare-fun res!2158204 () Bool)

(declare-fun e!3163060 () Bool)

(assert (=> d!1635234 (=> (not res!2158204) (not e!3163060))))

(assert (=> d!1635234 (= res!2158204 (= (csize!31362 (right!43149 (left!42819 ys!41))) (+ (size!39080 (left!42819 (right!43149 (left!42819 ys!41)))) (size!39080 (right!43149 (right!43149 (left!42819 ys!41)))))))))

(assert (=> d!1635234 (= (inv!77568 (right!43149 (left!42819 ys!41))) e!3163060)))

(declare-fun b!5069008 () Bool)

(declare-fun res!2158205 () Bool)

(assert (=> b!5069008 (=> (not res!2158205) (not e!3163060))))

(assert (=> b!5069008 (= res!2158205 (and (not (= (left!42819 (right!43149 (left!42819 ys!41))) Empty!15566)) (not (= (right!43149 (right!43149 (left!42819 ys!41))) Empty!15566))))))

(declare-fun b!5069009 () Bool)

(declare-fun res!2158206 () Bool)

(assert (=> b!5069009 (=> (not res!2158206) (not e!3163060))))

(assert (=> b!5069009 (= res!2158206 (= (cheight!15777 (right!43149 (left!42819 ys!41))) (+ (max!0 (height!2143 (left!42819 (right!43149 (left!42819 ys!41)))) (height!2143 (right!43149 (right!43149 (left!42819 ys!41))))) 1)))))

(declare-fun b!5069010 () Bool)

(assert (=> b!5069010 (= e!3163060 (<= 0 (cheight!15777 (right!43149 (left!42819 ys!41)))))))

(assert (= (and d!1635234 res!2158204) b!5069008))

(assert (= (and b!5069008 res!2158205) b!5069009))

(assert (= (and b!5069009 res!2158206) b!5069010))

(declare-fun m!6113470 () Bool)

(assert (=> d!1635234 m!6113470))

(declare-fun m!6113472 () Bool)

(assert (=> d!1635234 m!6113472))

(declare-fun m!6113474 () Bool)

(assert (=> b!5069009 m!6113474))

(declare-fun m!6113476 () Bool)

(assert (=> b!5069009 m!6113476))

(assert (=> b!5069009 m!6113474))

(assert (=> b!5069009 m!6113476))

(declare-fun m!6113478 () Bool)

(assert (=> b!5069009 m!6113478))

(assert (=> b!5068817 d!1635234))

(declare-fun d!1635236 () Bool)

(declare-fun res!2158207 () Bool)

(declare-fun e!3163061 () Bool)

(assert (=> d!1635236 (=> (not res!2158207) (not e!3163061))))

(assert (=> d!1635236 (= res!2158207 (= (csize!31362 (left!42819 (left!42819 xs!286))) (+ (size!39080 (left!42819 (left!42819 (left!42819 xs!286)))) (size!39080 (right!43149 (left!42819 (left!42819 xs!286)))))))))

(assert (=> d!1635236 (= (inv!77568 (left!42819 (left!42819 xs!286))) e!3163061)))

(declare-fun b!5069011 () Bool)

(declare-fun res!2158208 () Bool)

(assert (=> b!5069011 (=> (not res!2158208) (not e!3163061))))

(assert (=> b!5069011 (= res!2158208 (and (not (= (left!42819 (left!42819 (left!42819 xs!286))) Empty!15566)) (not (= (right!43149 (left!42819 (left!42819 xs!286))) Empty!15566))))))

(declare-fun b!5069012 () Bool)

(declare-fun res!2158209 () Bool)

(assert (=> b!5069012 (=> (not res!2158209) (not e!3163061))))

(assert (=> b!5069012 (= res!2158209 (= (cheight!15777 (left!42819 (left!42819 xs!286))) (+ (max!0 (height!2143 (left!42819 (left!42819 (left!42819 xs!286)))) (height!2143 (right!43149 (left!42819 (left!42819 xs!286))))) 1)))))

(declare-fun b!5069013 () Bool)

(assert (=> b!5069013 (= e!3163061 (<= 0 (cheight!15777 (left!42819 (left!42819 xs!286)))))))

(assert (= (and d!1635236 res!2158207) b!5069011))

(assert (= (and b!5069011 res!2158208) b!5069012))

(assert (= (and b!5069012 res!2158209) b!5069013))

(declare-fun m!6113480 () Bool)

(assert (=> d!1635236 m!6113480))

(declare-fun m!6113482 () Bool)

(assert (=> d!1635236 m!6113482))

(declare-fun m!6113484 () Bool)

(assert (=> b!5069012 m!6113484))

(declare-fun m!6113486 () Bool)

(assert (=> b!5069012 m!6113486))

(assert (=> b!5069012 m!6113484))

(assert (=> b!5069012 m!6113486))

(declare-fun m!6113488 () Bool)

(assert (=> b!5069012 m!6113488))

(assert (=> b!5068771 d!1635236))

(declare-fun d!1635238 () Bool)

(declare-fun c!870320 () Bool)

(assert (=> d!1635238 (= c!870320 ((_ is Node!15566) (left!42819 (left!42819 (right!43149 ys!41)))))))

(declare-fun e!3163062 () Bool)

(assert (=> d!1635238 (= (inv!77567 (left!42819 (left!42819 (right!43149 ys!41)))) e!3163062)))

(declare-fun b!5069014 () Bool)

(assert (=> b!5069014 (= e!3163062 (inv!77568 (left!42819 (left!42819 (right!43149 ys!41)))))))

(declare-fun b!5069015 () Bool)

(declare-fun e!3163063 () Bool)

(assert (=> b!5069015 (= e!3163062 e!3163063)))

(declare-fun res!2158210 () Bool)

(assert (=> b!5069015 (= res!2158210 (not ((_ is Leaf!25854) (left!42819 (left!42819 (right!43149 ys!41))))))))

(assert (=> b!5069015 (=> res!2158210 e!3163063)))

(declare-fun b!5069016 () Bool)

(assert (=> b!5069016 (= e!3163063 (inv!77569 (left!42819 (left!42819 (right!43149 ys!41)))))))

(assert (= (and d!1635238 c!870320) b!5069014))

(assert (= (and d!1635238 (not c!870320)) b!5069015))

(assert (= (and b!5069015 (not res!2158210)) b!5069016))

(declare-fun m!6113490 () Bool)

(assert (=> b!5069014 m!6113490))

(declare-fun m!6113492 () Bool)

(assert (=> b!5069016 m!6113492))

(assert (=> b!5068848 d!1635238))

(declare-fun d!1635240 () Bool)

(declare-fun c!870321 () Bool)

(assert (=> d!1635240 (= c!870321 ((_ is Node!15566) (right!43149 (left!42819 (right!43149 ys!41)))))))

(declare-fun e!3163064 () Bool)

(assert (=> d!1635240 (= (inv!77567 (right!43149 (left!42819 (right!43149 ys!41)))) e!3163064)))

(declare-fun b!5069017 () Bool)

(assert (=> b!5069017 (= e!3163064 (inv!77568 (right!43149 (left!42819 (right!43149 ys!41)))))))

(declare-fun b!5069018 () Bool)

(declare-fun e!3163065 () Bool)

(assert (=> b!5069018 (= e!3163064 e!3163065)))

(declare-fun res!2158211 () Bool)

(assert (=> b!5069018 (= res!2158211 (not ((_ is Leaf!25854) (right!43149 (left!42819 (right!43149 ys!41))))))))

(assert (=> b!5069018 (=> res!2158211 e!3163065)))

(declare-fun b!5069019 () Bool)

(assert (=> b!5069019 (= e!3163065 (inv!77569 (right!43149 (left!42819 (right!43149 ys!41)))))))

(assert (= (and d!1635240 c!870321) b!5069017))

(assert (= (and d!1635240 (not c!870321)) b!5069018))

(assert (= (and b!5069018 (not res!2158211)) b!5069019))

(declare-fun m!6113494 () Bool)

(assert (=> b!5069017 m!6113494))

(declare-fun m!6113496 () Bool)

(assert (=> b!5069019 m!6113496))

(assert (=> b!5068848 d!1635240))

(assert (=> b!5068822 d!1635212))

(assert (=> b!5068822 d!1635214))

(declare-fun d!1635242 () Bool)

(declare-fun res!2158212 () Bool)

(declare-fun e!3163066 () Bool)

(assert (=> d!1635242 (=> (not res!2158212) (not e!3163066))))

(assert (=> d!1635242 (= res!2158212 (<= (size!39079 (list!18992 (xs!18922 (left!42819 (left!42819 xs!286))))) 512))))

(assert (=> d!1635242 (= (inv!77569 (left!42819 (left!42819 xs!286))) e!3163066)))

(declare-fun b!5069020 () Bool)

(declare-fun res!2158213 () Bool)

(assert (=> b!5069020 (=> (not res!2158213) (not e!3163066))))

(assert (=> b!5069020 (= res!2158213 (= (csize!31363 (left!42819 (left!42819 xs!286))) (size!39079 (list!18992 (xs!18922 (left!42819 (left!42819 xs!286)))))))))

(declare-fun b!5069021 () Bool)

(assert (=> b!5069021 (= e!3163066 (and (> (csize!31363 (left!42819 (left!42819 xs!286))) 0) (<= (csize!31363 (left!42819 (left!42819 xs!286))) 512)))))

(assert (= (and d!1635242 res!2158212) b!5069020))

(assert (= (and b!5069020 res!2158213) b!5069021))

(declare-fun m!6113498 () Bool)

(assert (=> d!1635242 m!6113498))

(assert (=> d!1635242 m!6113498))

(declare-fun m!6113500 () Bool)

(assert (=> d!1635242 m!6113500))

(assert (=> b!5069020 m!6113498))

(assert (=> b!5069020 m!6113498))

(assert (=> b!5069020 m!6113500))

(assert (=> b!5068773 d!1635242))

(declare-fun d!1635244 () Bool)

(assert (=> d!1635244 (= (height!2143 (left!42819 (left!42819 ys!41))) (ite ((_ is Empty!15566) (left!42819 (left!42819 ys!41))) 0 (ite ((_ is Leaf!25854) (left!42819 (left!42819 ys!41))) 1 (cheight!15777 (left!42819 (left!42819 ys!41))))))))

(assert (=> b!5068808 d!1635244))

(declare-fun d!1635246 () Bool)

(assert (=> d!1635246 (= (height!2143 (right!43149 (left!42819 ys!41))) (ite ((_ is Empty!15566) (right!43149 (left!42819 ys!41))) 0 (ite ((_ is Leaf!25854) (right!43149 (left!42819 ys!41))) 1 (cheight!15777 (right!43149 (left!42819 ys!41))))))))

(assert (=> b!5068808 d!1635246))

(declare-fun d!1635248 () Bool)

(declare-fun lt!2089284 () Int)

(assert (=> d!1635248 (>= lt!2089284 0)))

(declare-fun e!3163067 () Int)

(assert (=> d!1635248 (= lt!2089284 e!3163067)))

(declare-fun c!870322 () Bool)

(assert (=> d!1635248 (= c!870322 ((_ is Nil!58436) (list!18992 (xs!18922 (left!42819 ys!41)))))))

(assert (=> d!1635248 (= (size!39079 (list!18992 (xs!18922 (left!42819 ys!41)))) lt!2089284)))

(declare-fun b!5069022 () Bool)

(assert (=> b!5069022 (= e!3163067 0)))

(declare-fun b!5069023 () Bool)

(assert (=> b!5069023 (= e!3163067 (+ 1 (size!39079 (t!371303 (list!18992 (xs!18922 (left!42819 ys!41)))))))))

(assert (= (and d!1635248 c!870322) b!5069022))

(assert (= (and d!1635248 (not c!870322)) b!5069023))

(declare-fun m!6113502 () Bool)

(assert (=> b!5069023 m!6113502))

(assert (=> d!1635110 d!1635248))

(declare-fun d!1635250 () Bool)

(assert (=> d!1635250 (= (list!18992 (xs!18922 (left!42819 ys!41))) (innerList!15654 (xs!18922 (left!42819 ys!41))))))

(assert (=> d!1635110 d!1635250))

(declare-fun d!1635252 () Bool)

(declare-fun lt!2089285 () Int)

(assert (=> d!1635252 (>= lt!2089285 0)))

(declare-fun e!3163068 () Int)

(assert (=> d!1635252 (= lt!2089285 e!3163068)))

(declare-fun c!870323 () Bool)

(assert (=> d!1635252 (= c!870323 ((_ is Nil!58436) (list!18992 (xs!18922 (right!43149 xs!286)))))))

(assert (=> d!1635252 (= (size!39079 (list!18992 (xs!18922 (right!43149 xs!286)))) lt!2089285)))

(declare-fun b!5069024 () Bool)

(assert (=> b!5069024 (= e!3163068 0)))

(declare-fun b!5069025 () Bool)

(assert (=> b!5069025 (= e!3163068 (+ 1 (size!39079 (t!371303 (list!18992 (xs!18922 (right!43149 xs!286)))))))))

(assert (= (and d!1635252 c!870323) b!5069024))

(assert (= (and d!1635252 (not c!870323)) b!5069025))

(declare-fun m!6113504 () Bool)

(assert (=> b!5069025 m!6113504))

(assert (=> d!1635098 d!1635252))

(declare-fun d!1635254 () Bool)

(assert (=> d!1635254 (= (list!18992 (xs!18922 (right!43149 xs!286))) (innerList!15654 (xs!18922 (right!43149 xs!286))))))

(assert (=> d!1635098 d!1635254))

(declare-fun d!1635256 () Bool)

(declare-fun lt!2089286 () Bool)

(assert (=> d!1635256 (= lt!2089286 (isEmpty!31636 (list!18993 (left!42819 (left!42819 xs!286)))))))

(assert (=> d!1635256 (= lt!2089286 (= (size!39080 (left!42819 (left!42819 xs!286))) 0))))

(assert (=> d!1635256 (= (isEmpty!31635 (left!42819 (left!42819 xs!286))) lt!2089286)))

(declare-fun bs!1190022 () Bool)

(assert (= bs!1190022 d!1635256))

(declare-fun m!6113506 () Bool)

(assert (=> bs!1190022 m!6113506))

(assert (=> bs!1190022 m!6113506))

(declare-fun m!6113508 () Bool)

(assert (=> bs!1190022 m!6113508))

(assert (=> bs!1190022 m!6113024))

(assert (=> b!5068792 d!1635256))

(assert (=> b!5068712 d!1635082))

(assert (=> b!5068712 d!1635084))

(declare-fun d!1635258 () Bool)

(declare-fun res!2158214 () Bool)

(declare-fun e!3163069 () Bool)

(assert (=> d!1635258 (=> (not res!2158214) (not e!3163069))))

(assert (=> d!1635258 (= res!2158214 (= (csize!31362 (right!43149 (left!42819 xs!286))) (+ (size!39080 (left!42819 (right!43149 (left!42819 xs!286)))) (size!39080 (right!43149 (right!43149 (left!42819 xs!286)))))))))

(assert (=> d!1635258 (= (inv!77568 (right!43149 (left!42819 xs!286))) e!3163069)))

(declare-fun b!5069026 () Bool)

(declare-fun res!2158215 () Bool)

(assert (=> b!5069026 (=> (not res!2158215) (not e!3163069))))

(assert (=> b!5069026 (= res!2158215 (and (not (= (left!42819 (right!43149 (left!42819 xs!286))) Empty!15566)) (not (= (right!43149 (right!43149 (left!42819 xs!286))) Empty!15566))))))

(declare-fun b!5069027 () Bool)

(declare-fun res!2158216 () Bool)

(assert (=> b!5069027 (=> (not res!2158216) (not e!3163069))))

(assert (=> b!5069027 (= res!2158216 (= (cheight!15777 (right!43149 (left!42819 xs!286))) (+ (max!0 (height!2143 (left!42819 (right!43149 (left!42819 xs!286)))) (height!2143 (right!43149 (right!43149 (left!42819 xs!286))))) 1)))))

(declare-fun b!5069028 () Bool)

(assert (=> b!5069028 (= e!3163069 (<= 0 (cheight!15777 (right!43149 (left!42819 xs!286)))))))

(assert (= (and d!1635258 res!2158214) b!5069026))

(assert (= (and b!5069026 res!2158215) b!5069027))

(assert (= (and b!5069027 res!2158216) b!5069028))

(declare-fun m!6113510 () Bool)

(assert (=> d!1635258 m!6113510))

(declare-fun m!6113512 () Bool)

(assert (=> d!1635258 m!6113512))

(declare-fun m!6113514 () Bool)

(assert (=> b!5069027 m!6113514))

(declare-fun m!6113516 () Bool)

(assert (=> b!5069027 m!6113516))

(assert (=> b!5069027 m!6113514))

(assert (=> b!5069027 m!6113516))

(declare-fun m!6113518 () Bool)

(assert (=> b!5069027 m!6113518))

(assert (=> b!5068774 d!1635258))

(declare-fun b!5069029 () Bool)

(declare-fun e!3163071 () Bool)

(assert (=> b!5069029 (= e!3163071 (not (isEmpty!31635 (right!43149 (right!43149 (left!42819 xs!286))))))))

(declare-fun b!5069030 () Bool)

(declare-fun res!2158220 () Bool)

(assert (=> b!5069030 (=> (not res!2158220) (not e!3163071))))

(assert (=> b!5069030 (= res!2158220 (not (isEmpty!31635 (left!42819 (right!43149 (left!42819 xs!286))))))))

(declare-fun d!1635260 () Bool)

(declare-fun res!2158218 () Bool)

(declare-fun e!3163070 () Bool)

(assert (=> d!1635260 (=> res!2158218 e!3163070)))

(assert (=> d!1635260 (= res!2158218 (not ((_ is Node!15566) (right!43149 (left!42819 xs!286)))))))

(assert (=> d!1635260 (= (isBalanced!4428 (right!43149 (left!42819 xs!286))) e!3163070)))

(declare-fun b!5069031 () Bool)

(assert (=> b!5069031 (= e!3163070 e!3163071)))

(declare-fun res!2158217 () Bool)

(assert (=> b!5069031 (=> (not res!2158217) (not e!3163071))))

(assert (=> b!5069031 (= res!2158217 (<= (- 1) (- (height!2143 (left!42819 (right!43149 (left!42819 xs!286)))) (height!2143 (right!43149 (right!43149 (left!42819 xs!286)))))))))

(declare-fun b!5069032 () Bool)

(declare-fun res!2158222 () Bool)

(assert (=> b!5069032 (=> (not res!2158222) (not e!3163071))))

(assert (=> b!5069032 (= res!2158222 (isBalanced!4428 (right!43149 (right!43149 (left!42819 xs!286)))))))

(declare-fun b!5069033 () Bool)

(declare-fun res!2158219 () Bool)

(assert (=> b!5069033 (=> (not res!2158219) (not e!3163071))))

(assert (=> b!5069033 (= res!2158219 (<= (- (height!2143 (left!42819 (right!43149 (left!42819 xs!286)))) (height!2143 (right!43149 (right!43149 (left!42819 xs!286))))) 1))))

(declare-fun b!5069034 () Bool)

(declare-fun res!2158221 () Bool)

(assert (=> b!5069034 (=> (not res!2158221) (not e!3163071))))

(assert (=> b!5069034 (= res!2158221 (isBalanced!4428 (left!42819 (right!43149 (left!42819 xs!286)))))))

(assert (= (and d!1635260 (not res!2158218)) b!5069031))

(assert (= (and b!5069031 res!2158217) b!5069033))

(assert (= (and b!5069033 res!2158219) b!5069034))

(assert (= (and b!5069034 res!2158221) b!5069032))

(assert (= (and b!5069032 res!2158222) b!5069030))

(assert (= (and b!5069030 res!2158220) b!5069029))

(assert (=> b!5069033 m!6113514))

(assert (=> b!5069033 m!6113516))

(declare-fun m!6113520 () Bool)

(assert (=> b!5069032 m!6113520))

(assert (=> b!5069031 m!6113514))

(assert (=> b!5069031 m!6113516))

(declare-fun m!6113522 () Bool)

(assert (=> b!5069034 m!6113522))

(declare-fun m!6113524 () Bool)

(assert (=> b!5069030 m!6113524))

(declare-fun m!6113526 () Bool)

(assert (=> b!5069029 m!6113526))

(assert (=> b!5068794 d!1635260))

(declare-fun d!1635262 () Bool)

(declare-fun res!2158223 () Bool)

(declare-fun e!3163072 () Bool)

(assert (=> d!1635262 (=> (not res!2158223) (not e!3163072))))

(assert (=> d!1635262 (= res!2158223 (<= (size!39079 (list!18992 (xs!18922 (right!43149 (left!42819 xs!286))))) 512))))

(assert (=> d!1635262 (= (inv!77569 (right!43149 (left!42819 xs!286))) e!3163072)))

(declare-fun b!5069035 () Bool)

(declare-fun res!2158224 () Bool)

(assert (=> b!5069035 (=> (not res!2158224) (not e!3163072))))

(assert (=> b!5069035 (= res!2158224 (= (csize!31363 (right!43149 (left!42819 xs!286))) (size!39079 (list!18992 (xs!18922 (right!43149 (left!42819 xs!286)))))))))

(declare-fun b!5069036 () Bool)

(assert (=> b!5069036 (= e!3163072 (and (> (csize!31363 (right!43149 (left!42819 xs!286))) 0) (<= (csize!31363 (right!43149 (left!42819 xs!286))) 512)))))

(assert (= (and d!1635262 res!2158223) b!5069035))

(assert (= (and b!5069035 res!2158224) b!5069036))

(declare-fun m!6113528 () Bool)

(assert (=> d!1635262 m!6113528))

(assert (=> d!1635262 m!6113528))

(declare-fun m!6113530 () Bool)

(assert (=> d!1635262 m!6113530))

(assert (=> b!5069035 m!6113528))

(assert (=> b!5069035 m!6113528))

(assert (=> b!5069035 m!6113530))

(assert (=> b!5068776 d!1635262))

(declare-fun d!1635264 () Bool)

(assert (=> d!1635264 (= (height!2143 (left!42819 (right!43149 xs!286))) (ite ((_ is Empty!15566) (left!42819 (right!43149 xs!286))) 0 (ite ((_ is Leaf!25854) (left!42819 (right!43149 xs!286))) 1 (cheight!15777 (left!42819 (right!43149 xs!286))))))))

(assert (=> b!5068802 d!1635264))

(declare-fun d!1635266 () Bool)

(assert (=> d!1635266 (= (height!2143 (right!43149 (right!43149 xs!286))) (ite ((_ is Empty!15566) (right!43149 (right!43149 xs!286))) 0 (ite ((_ is Leaf!25854) (right!43149 (right!43149 xs!286))) 1 (cheight!15777 (right!43149 (right!43149 xs!286))))))))

(assert (=> b!5068802 d!1635266))

(declare-fun d!1635268 () Bool)

(assert (=> d!1635268 (= (inv!77566 (xs!18922 (right!43149 (right!43149 ys!41)))) (<= (size!39079 (innerList!15654 (xs!18922 (right!43149 (right!43149 ys!41))))) 2147483647))))

(declare-fun bs!1190023 () Bool)

(assert (= bs!1190023 d!1635268))

(declare-fun m!6113532 () Bool)

(assert (=> bs!1190023 m!6113532))

(assert (=> b!5068852 d!1635268))

(declare-fun d!1635270 () Bool)

(declare-fun lt!2089289 () Int)

(assert (=> d!1635270 (= lt!2089289 (size!39079 (list!18993 (left!42819 (left!42819 xs!286)))))))

(assert (=> d!1635270 (= lt!2089289 (ite ((_ is Empty!15566) (left!42819 (left!42819 xs!286))) 0 (ite ((_ is Leaf!25854) (left!42819 (left!42819 xs!286))) (csize!31363 (left!42819 (left!42819 xs!286))) (csize!31362 (left!42819 (left!42819 xs!286))))))))

(assert (=> d!1635270 (= (size!39080 (left!42819 (left!42819 xs!286))) lt!2089289)))

(declare-fun bs!1190024 () Bool)

(assert (= bs!1190024 d!1635270))

(assert (=> bs!1190024 m!6113506))

(assert (=> bs!1190024 m!6113506))

(declare-fun m!6113534 () Bool)

(assert (=> bs!1190024 m!6113534))

(assert (=> d!1635072 d!1635270))

(declare-fun d!1635272 () Bool)

(declare-fun lt!2089290 () Int)

(assert (=> d!1635272 (= lt!2089290 (size!39079 (list!18993 (right!43149 (left!42819 xs!286)))))))

(assert (=> d!1635272 (= lt!2089290 (ite ((_ is Empty!15566) (right!43149 (left!42819 xs!286))) 0 (ite ((_ is Leaf!25854) (right!43149 (left!42819 xs!286))) (csize!31363 (right!43149 (left!42819 xs!286))) (csize!31362 (right!43149 (left!42819 xs!286))))))))

(assert (=> d!1635272 (= (size!39080 (right!43149 (left!42819 xs!286))) lt!2089290)))

(declare-fun bs!1190025 () Bool)

(assert (= bs!1190025 d!1635272))

(declare-fun m!6113536 () Bool)

(assert (=> bs!1190025 m!6113536))

(assert (=> bs!1190025 m!6113536))

(declare-fun m!6113538 () Bool)

(assert (=> bs!1190025 m!6113538))

(assert (=> d!1635072 d!1635272))

(declare-fun d!1635274 () Bool)

(declare-fun lt!2089291 () Int)

(assert (=> d!1635274 (>= lt!2089291 0)))

(declare-fun e!3163073 () Int)

(assert (=> d!1635274 (= lt!2089291 e!3163073)))

(declare-fun c!870324 () Bool)

(assert (=> d!1635274 (= c!870324 ((_ is Nil!58436) (list!18992 (xs!18922 xs!286))))))

(assert (=> d!1635274 (= (size!39079 (list!18992 (xs!18922 xs!286))) lt!2089291)))

(declare-fun b!5069037 () Bool)

(assert (=> b!5069037 (= e!3163073 0)))

(declare-fun b!5069038 () Bool)

(assert (=> b!5069038 (= e!3163073 (+ 1 (size!39079 (t!371303 (list!18992 (xs!18922 xs!286))))))))

(assert (= (and d!1635274 c!870324) b!5069037))

(assert (= (and d!1635274 (not c!870324)) b!5069038))

(declare-fun m!6113540 () Bool)

(assert (=> b!5069038 m!6113540))

(assert (=> b!5068824 d!1635274))

(declare-fun d!1635276 () Bool)

(assert (=> d!1635276 (= (list!18992 (xs!18922 xs!286)) (innerList!15654 (xs!18922 xs!286)))))

(assert (=> b!5068824 d!1635276))

(assert (=> b!5068804 d!1635264))

(assert (=> b!5068804 d!1635266))

(assert (=> b!5068812 d!1635248))

(assert (=> b!5068812 d!1635250))

(assert (=> b!5068789 d!1635252))

(assert (=> b!5068789 d!1635254))

(declare-fun d!1635278 () Bool)

(declare-fun c!870325 () Bool)

(assert (=> d!1635278 (= c!870325 ((_ is Node!15566) (left!42819 (right!43149 (right!43149 xs!286)))))))

(declare-fun e!3163074 () Bool)

(assert (=> d!1635278 (= (inv!77567 (left!42819 (right!43149 (right!43149 xs!286)))) e!3163074)))

(declare-fun b!5069039 () Bool)

(assert (=> b!5069039 (= e!3163074 (inv!77568 (left!42819 (right!43149 (right!43149 xs!286)))))))

(declare-fun b!5069040 () Bool)

(declare-fun e!3163075 () Bool)

(assert (=> b!5069040 (= e!3163074 e!3163075)))

(declare-fun res!2158225 () Bool)

(assert (=> b!5069040 (= res!2158225 (not ((_ is Leaf!25854) (left!42819 (right!43149 (right!43149 xs!286))))))))

(assert (=> b!5069040 (=> res!2158225 e!3163075)))

(declare-fun b!5069041 () Bool)

(assert (=> b!5069041 (= e!3163075 (inv!77569 (left!42819 (right!43149 (right!43149 xs!286)))))))

(assert (= (and d!1635278 c!870325) b!5069039))

(assert (= (and d!1635278 (not c!870325)) b!5069040))

(assert (= (and b!5069040 (not res!2158225)) b!5069041))

(declare-fun m!6113542 () Bool)

(assert (=> b!5069039 m!6113542))

(declare-fun m!6113544 () Bool)

(assert (=> b!5069041 m!6113544))

(assert (=> b!5068867 d!1635278))

(declare-fun d!1635280 () Bool)

(declare-fun c!870326 () Bool)

(assert (=> d!1635280 (= c!870326 ((_ is Node!15566) (right!43149 (right!43149 (right!43149 xs!286)))))))

(declare-fun e!3163076 () Bool)

(assert (=> d!1635280 (= (inv!77567 (right!43149 (right!43149 (right!43149 xs!286)))) e!3163076)))

(declare-fun b!5069042 () Bool)

(assert (=> b!5069042 (= e!3163076 (inv!77568 (right!43149 (right!43149 (right!43149 xs!286)))))))

(declare-fun b!5069043 () Bool)

(declare-fun e!3163077 () Bool)

(assert (=> b!5069043 (= e!3163076 e!3163077)))

(declare-fun res!2158226 () Bool)

(assert (=> b!5069043 (= res!2158226 (not ((_ is Leaf!25854) (right!43149 (right!43149 (right!43149 xs!286))))))))

(assert (=> b!5069043 (=> res!2158226 e!3163077)))

(declare-fun b!5069044 () Bool)

(assert (=> b!5069044 (= e!3163077 (inv!77569 (right!43149 (right!43149 (right!43149 xs!286)))))))

(assert (= (and d!1635280 c!870326) b!5069042))

(assert (= (and d!1635280 (not c!870326)) b!5069043))

(assert (= (and b!5069043 (not res!2158226)) b!5069044))

(declare-fun m!6113546 () Bool)

(assert (=> b!5069042 m!6113546))

(declare-fun m!6113548 () Bool)

(assert (=> b!5069044 m!6113548))

(assert (=> b!5068867 d!1635280))

(declare-fun d!1635282 () Bool)

(declare-fun res!2158227 () Bool)

(declare-fun e!3163078 () Bool)

(assert (=> d!1635282 (=> (not res!2158227) (not e!3163078))))

(assert (=> d!1635282 (= res!2158227 (= (csize!31362 (right!43149 (right!43149 xs!286))) (+ (size!39080 (left!42819 (right!43149 (right!43149 xs!286)))) (size!39080 (right!43149 (right!43149 (right!43149 xs!286)))))))))

(assert (=> d!1635282 (= (inv!77568 (right!43149 (right!43149 xs!286))) e!3163078)))

(declare-fun b!5069045 () Bool)

(declare-fun res!2158228 () Bool)

(assert (=> b!5069045 (=> (not res!2158228) (not e!3163078))))

(assert (=> b!5069045 (= res!2158228 (and (not (= (left!42819 (right!43149 (right!43149 xs!286))) Empty!15566)) (not (= (right!43149 (right!43149 (right!43149 xs!286))) Empty!15566))))))

(declare-fun b!5069046 () Bool)

(declare-fun res!2158229 () Bool)

(assert (=> b!5069046 (=> (not res!2158229) (not e!3163078))))

(assert (=> b!5069046 (= res!2158229 (= (cheight!15777 (right!43149 (right!43149 xs!286))) (+ (max!0 (height!2143 (left!42819 (right!43149 (right!43149 xs!286)))) (height!2143 (right!43149 (right!43149 (right!43149 xs!286))))) 1)))))

(declare-fun b!5069047 () Bool)

(assert (=> b!5069047 (= e!3163078 (<= 0 (cheight!15777 (right!43149 (right!43149 xs!286)))))))

(assert (= (and d!1635282 res!2158227) b!5069045))

(assert (= (and b!5069045 res!2158228) b!5069046))

(assert (= (and b!5069046 res!2158229) b!5069047))

(declare-fun m!6113550 () Bool)

(assert (=> d!1635282 m!6113550))

(declare-fun m!6113552 () Bool)

(assert (=> d!1635282 m!6113552))

(declare-fun m!6113554 () Bool)

(assert (=> b!5069046 m!6113554))

(declare-fun m!6113556 () Bool)

(assert (=> b!5069046 m!6113556))

(assert (=> b!5069046 m!6113554))

(assert (=> b!5069046 m!6113556))

(declare-fun m!6113558 () Bool)

(assert (=> b!5069046 m!6113558))

(assert (=> b!5068837 d!1635282))

(declare-fun b!5069048 () Bool)

(declare-fun e!3163080 () Bool)

(assert (=> b!5069048 (= e!3163080 (not (isEmpty!31635 (right!43149 (left!42819 (left!42819 xs!286))))))))

(declare-fun b!5069049 () Bool)

(declare-fun res!2158233 () Bool)

(assert (=> b!5069049 (=> (not res!2158233) (not e!3163080))))

(assert (=> b!5069049 (= res!2158233 (not (isEmpty!31635 (left!42819 (left!42819 (left!42819 xs!286))))))))

(declare-fun d!1635284 () Bool)

(declare-fun res!2158231 () Bool)

(declare-fun e!3163079 () Bool)

(assert (=> d!1635284 (=> res!2158231 e!3163079)))

(assert (=> d!1635284 (= res!2158231 (not ((_ is Node!15566) (left!42819 (left!42819 xs!286)))))))

(assert (=> d!1635284 (= (isBalanced!4428 (left!42819 (left!42819 xs!286))) e!3163079)))

(declare-fun b!5069050 () Bool)

(assert (=> b!5069050 (= e!3163079 e!3163080)))

(declare-fun res!2158230 () Bool)

(assert (=> b!5069050 (=> (not res!2158230) (not e!3163080))))

(assert (=> b!5069050 (= res!2158230 (<= (- 1) (- (height!2143 (left!42819 (left!42819 (left!42819 xs!286)))) (height!2143 (right!43149 (left!42819 (left!42819 xs!286)))))))))

(declare-fun b!5069051 () Bool)

(declare-fun res!2158235 () Bool)

(assert (=> b!5069051 (=> (not res!2158235) (not e!3163080))))

(assert (=> b!5069051 (= res!2158235 (isBalanced!4428 (right!43149 (left!42819 (left!42819 xs!286)))))))

(declare-fun b!5069052 () Bool)

(declare-fun res!2158232 () Bool)

(assert (=> b!5069052 (=> (not res!2158232) (not e!3163080))))

(assert (=> b!5069052 (= res!2158232 (<= (- (height!2143 (left!42819 (left!42819 (left!42819 xs!286)))) (height!2143 (right!43149 (left!42819 (left!42819 xs!286))))) 1))))

(declare-fun b!5069053 () Bool)

(declare-fun res!2158234 () Bool)

(assert (=> b!5069053 (=> (not res!2158234) (not e!3163080))))

(assert (=> b!5069053 (= res!2158234 (isBalanced!4428 (left!42819 (left!42819 (left!42819 xs!286)))))))

(assert (= (and d!1635284 (not res!2158231)) b!5069050))

(assert (= (and b!5069050 res!2158230) b!5069052))

(assert (= (and b!5069052 res!2158232) b!5069053))

(assert (= (and b!5069053 res!2158234) b!5069051))

(assert (= (and b!5069051 res!2158235) b!5069049))

(assert (= (and b!5069049 res!2158233) b!5069048))

(assert (=> b!5069052 m!6113484))

(assert (=> b!5069052 m!6113486))

(declare-fun m!6113560 () Bool)

(assert (=> b!5069051 m!6113560))

(assert (=> b!5069050 m!6113484))

(assert (=> b!5069050 m!6113486))

(declare-fun m!6113562 () Bool)

(assert (=> b!5069053 m!6113562))

(declare-fun m!6113564 () Bool)

(assert (=> b!5069049 m!6113564))

(declare-fun m!6113566 () Bool)

(assert (=> b!5069048 m!6113566))

(assert (=> b!5068796 d!1635284))

(declare-fun d!1635286 () Bool)

(assert (=> d!1635286 (= (max!0 (height!2143 (left!42819 ys!41)) (height!2143 (right!43149 ys!41))) (ite (< (height!2143 (left!42819 ys!41)) (height!2143 (right!43149 ys!41))) (height!2143 (right!43149 ys!41)) (height!2143 (left!42819 ys!41))))))

(assert (=> b!5068827 d!1635286))

(assert (=> b!5068827 d!1635086))

(assert (=> b!5068827 d!1635088))

(assert (=> b!5068704 d!1635112))

(assert (=> b!5068704 d!1635114))

(declare-fun d!1635288 () Bool)

(declare-fun lt!2089292 () Int)

(assert (=> d!1635288 (>= lt!2089292 0)))

(declare-fun e!3163081 () Int)

(assert (=> d!1635288 (= lt!2089292 e!3163081)))

(declare-fun c!870327 () Bool)

(assert (=> d!1635288 (= c!870327 ((_ is Nil!58436) (innerList!15654 (xs!18922 (left!42819 ys!41)))))))

(assert (=> d!1635288 (= (size!39079 (innerList!15654 (xs!18922 (left!42819 ys!41)))) lt!2089292)))

(declare-fun b!5069054 () Bool)

(assert (=> b!5069054 (= e!3163081 0)))

(declare-fun b!5069055 () Bool)

(assert (=> b!5069055 (= e!3163081 (+ 1 (size!39079 (t!371303 (innerList!15654 (xs!18922 (left!42819 ys!41)))))))))

(assert (= (and d!1635288 c!870327) b!5069054))

(assert (= (and d!1635288 (not c!870327)) b!5069055))

(declare-fun m!6113568 () Bool)

(assert (=> b!5069055 m!6113568))

(assert (=> d!1635120 d!1635288))

(declare-fun d!1635290 () Bool)

(declare-fun c!870328 () Bool)

(assert (=> d!1635290 (= c!870328 ((_ is Node!15566) (left!42819 (left!42819 (left!42819 xs!286)))))))

(declare-fun e!3163082 () Bool)

(assert (=> d!1635290 (= (inv!77567 (left!42819 (left!42819 (left!42819 xs!286)))) e!3163082)))

(declare-fun b!5069056 () Bool)

(assert (=> b!5069056 (= e!3163082 (inv!77568 (left!42819 (left!42819 (left!42819 xs!286)))))))

(declare-fun b!5069057 () Bool)

(declare-fun e!3163083 () Bool)

(assert (=> b!5069057 (= e!3163082 e!3163083)))

(declare-fun res!2158236 () Bool)

(assert (=> b!5069057 (= res!2158236 (not ((_ is Leaf!25854) (left!42819 (left!42819 (left!42819 xs!286))))))))

(assert (=> b!5069057 (=> res!2158236 e!3163083)))

(declare-fun b!5069058 () Bool)

(assert (=> b!5069058 (= e!3163083 (inv!77569 (left!42819 (left!42819 (left!42819 xs!286)))))))

(assert (= (and d!1635290 c!870328) b!5069056))

(assert (= (and d!1635290 (not c!870328)) b!5069057))

(assert (= (and b!5069057 (not res!2158236)) b!5069058))

(declare-fun m!6113570 () Bool)

(assert (=> b!5069056 m!6113570))

(declare-fun m!6113572 () Bool)

(assert (=> b!5069058 m!6113572))

(assert (=> b!5068841 d!1635290))

(declare-fun d!1635292 () Bool)

(declare-fun c!870329 () Bool)

(assert (=> d!1635292 (= c!870329 ((_ is Node!15566) (right!43149 (left!42819 (left!42819 xs!286)))))))

(declare-fun e!3163084 () Bool)

(assert (=> d!1635292 (= (inv!77567 (right!43149 (left!42819 (left!42819 xs!286)))) e!3163084)))

(declare-fun b!5069059 () Bool)

(assert (=> b!5069059 (= e!3163084 (inv!77568 (right!43149 (left!42819 (left!42819 xs!286)))))))

(declare-fun b!5069060 () Bool)

(declare-fun e!3163085 () Bool)

(assert (=> b!5069060 (= e!3163084 e!3163085)))

(declare-fun res!2158237 () Bool)

(assert (=> b!5069060 (= res!2158237 (not ((_ is Leaf!25854) (right!43149 (left!42819 (left!42819 xs!286))))))))

(assert (=> b!5069060 (=> res!2158237 e!3163085)))

(declare-fun b!5069061 () Bool)

(assert (=> b!5069061 (= e!3163085 (inv!77569 (right!43149 (left!42819 (left!42819 xs!286)))))))

(assert (= (and d!1635292 c!870329) b!5069059))

(assert (= (and d!1635292 (not c!870329)) b!5069060))

(assert (= (and b!5069060 (not res!2158237)) b!5069061))

(declare-fun m!6113574 () Bool)

(assert (=> b!5069059 m!6113574))

(declare-fun m!6113576 () Bool)

(assert (=> b!5069061 m!6113576))

(assert (=> b!5068841 d!1635292))

(assert (=> d!1635126 d!1635274))

(assert (=> d!1635126 d!1635276))

(declare-fun d!1635294 () Bool)

(declare-fun lt!2089293 () Bool)

(assert (=> d!1635294 (= lt!2089293 (isEmpty!31636 (list!18993 (right!43149 (right!43149 xs!286)))))))

(assert (=> d!1635294 (= lt!2089293 (= (size!39080 (right!43149 (right!43149 xs!286))) 0))))

(assert (=> d!1635294 (= (isEmpty!31635 (right!43149 (right!43149 xs!286))) lt!2089293)))

(declare-fun bs!1190026 () Bool)

(assert (= bs!1190026 d!1635294))

(declare-fun m!6113578 () Bool)

(assert (=> bs!1190026 m!6113578))

(assert (=> bs!1190026 m!6113578))

(declare-fun m!6113580 () Bool)

(assert (=> bs!1190026 m!6113580))

(assert (=> bs!1190026 m!6113098))

(assert (=> b!5068800 d!1635294))

(declare-fun d!1635296 () Bool)

(assert (=> d!1635296 (= (max!0 (height!2143 (left!42819 (right!43149 ys!41))) (height!2143 (right!43149 (right!43149 ys!41)))) (ite (< (height!2143 (left!42819 (right!43149 ys!41))) (height!2143 (right!43149 (right!43149 ys!41)))) (height!2143 (right!43149 (right!43149 ys!41))) (height!2143 (left!42819 (right!43149 ys!41)))))))

(assert (=> b!5068832 d!1635296))

(declare-fun d!1635298 () Bool)

(assert (=> d!1635298 (= (height!2143 (left!42819 (right!43149 ys!41))) (ite ((_ is Empty!15566) (left!42819 (right!43149 ys!41))) 0 (ite ((_ is Leaf!25854) (left!42819 (right!43149 ys!41))) 1 (cheight!15777 (left!42819 (right!43149 ys!41))))))))

(assert (=> b!5068832 d!1635298))

(declare-fun d!1635300 () Bool)

(assert (=> d!1635300 (= (height!2143 (right!43149 (right!43149 ys!41))) (ite ((_ is Empty!15566) (right!43149 (right!43149 ys!41))) 0 (ite ((_ is Leaf!25854) (right!43149 (right!43149 ys!41))) 1 (cheight!15777 (right!43149 (right!43149 ys!41))))))))

(assert (=> b!5068832 d!1635300))

(declare-fun d!1635302 () Bool)

(assert (=> d!1635302 (= (max!0 (height!2143 (left!42819 (left!42819 ys!41))) (height!2143 (right!43149 (left!42819 ys!41)))) (ite (< (height!2143 (left!42819 (left!42819 ys!41))) (height!2143 (right!43149 (left!42819 ys!41)))) (height!2143 (right!43149 (left!42819 ys!41))) (height!2143 (left!42819 (left!42819 ys!41)))))))

(assert (=> b!5068769 d!1635302))

(assert (=> b!5068769 d!1635244))

(assert (=> b!5068769 d!1635246))

(declare-fun d!1635304 () Bool)

(assert (=> d!1635304 (= (isEmpty!31636 (list!18993 (right!43149 ys!41))) ((_ is Nil!58436) (list!18993 (right!43149 ys!41))))))

(assert (=> d!1635124 d!1635304))

(declare-fun b!5069070 () Bool)

(declare-fun e!3163090 () List!58560)

(assert (=> b!5069070 (= e!3163090 Nil!58436)))

(declare-fun b!5069072 () Bool)

(declare-fun e!3163091 () List!58560)

(assert (=> b!5069072 (= e!3163091 (list!18992 (xs!18922 (right!43149 ys!41))))))

(declare-fun b!5069071 () Bool)

(assert (=> b!5069071 (= e!3163090 e!3163091)))

(declare-fun c!870335 () Bool)

(assert (=> b!5069071 (= c!870335 ((_ is Leaf!25854) (right!43149 ys!41)))))

(declare-fun d!1635306 () Bool)

(declare-fun c!870334 () Bool)

(assert (=> d!1635306 (= c!870334 ((_ is Empty!15566) (right!43149 ys!41)))))

(assert (=> d!1635306 (= (list!18993 (right!43149 ys!41)) e!3163090)))

(declare-fun b!5069073 () Bool)

(declare-fun ++!12791 (List!58560 List!58560) List!58560)

(assert (=> b!5069073 (= e!3163091 (++!12791 (list!18993 (left!42819 (right!43149 ys!41))) (list!18993 (right!43149 (right!43149 ys!41)))))))

(assert (= (and d!1635306 c!870334) b!5069070))

(assert (= (and d!1635306 (not c!870334)) b!5069071))

(assert (= (and b!5069071 c!870335) b!5069072))

(assert (= (and b!5069071 (not c!870335)) b!5069073))

(assert (=> b!5069072 m!6113140))

(assert (=> b!5069073 m!6113466))

(declare-fun m!6113582 () Bool)

(assert (=> b!5069073 m!6113582))

(assert (=> b!5069073 m!6113466))

(assert (=> b!5069073 m!6113582))

(declare-fun m!6113584 () Bool)

(assert (=> b!5069073 m!6113584))

(assert (=> d!1635124 d!1635306))

(declare-fun d!1635308 () Bool)

(declare-fun lt!2089294 () Int)

(assert (=> d!1635308 (= lt!2089294 (size!39079 (list!18993 (right!43149 ys!41))))))

(assert (=> d!1635308 (= lt!2089294 (ite ((_ is Empty!15566) (right!43149 ys!41)) 0 (ite ((_ is Leaf!25854) (right!43149 ys!41)) (csize!31363 (right!43149 ys!41)) (csize!31362 (right!43149 ys!41)))))))

(assert (=> d!1635308 (= (size!39080 (right!43149 ys!41)) lt!2089294)))

(declare-fun bs!1190027 () Bool)

(assert (= bs!1190027 d!1635308))

(assert (=> bs!1190027 m!6113152))

(assert (=> bs!1190027 m!6113152))

(declare-fun m!6113586 () Bool)

(assert (=> bs!1190027 m!6113586))

(assert (=> d!1635124 d!1635308))

(declare-fun d!1635310 () Bool)

(assert (=> d!1635310 (= (max!0 (height!2143 (left!42819 xs!286)) (height!2143 (right!43149 xs!286))) (ite (< (height!2143 (left!42819 xs!286)) (height!2143 (right!43149 xs!286))) (height!2143 (right!43149 xs!286)) (height!2143 (left!42819 xs!286))))))

(assert (=> b!5068751 d!1635310))

(assert (=> b!5068751 d!1635018))

(assert (=> b!5068751 d!1635020))

(declare-fun d!1635312 () Bool)

(declare-fun lt!2089295 () Int)

(assert (=> d!1635312 (= lt!2089295 (size!39079 (list!18993 (left!42819 ys!41))))))

(assert (=> d!1635312 (= lt!2089295 (ite ((_ is Empty!15566) (left!42819 ys!41)) 0 (ite ((_ is Leaf!25854) (left!42819 ys!41)) (csize!31363 (left!42819 ys!41)) (csize!31362 (left!42819 ys!41)))))))

(assert (=> d!1635312 (= (size!39080 (left!42819 ys!41)) lt!2089295)))

(declare-fun bs!1190028 () Bool)

(assert (= bs!1190028 d!1635312))

(assert (=> bs!1190028 m!6113146))

(assert (=> bs!1190028 m!6113146))

(declare-fun m!6113588 () Bool)

(assert (=> bs!1190028 m!6113588))

(assert (=> d!1635128 d!1635312))

(assert (=> d!1635128 d!1635308))

(declare-fun d!1635314 () Bool)

(declare-fun res!2158238 () Bool)

(declare-fun e!3163092 () Bool)

(assert (=> d!1635314 (=> (not res!2158238) (not e!3163092))))

(assert (=> d!1635314 (= res!2158238 (= (csize!31362 (left!42819 (right!43149 ys!41))) (+ (size!39080 (left!42819 (left!42819 (right!43149 ys!41)))) (size!39080 (right!43149 (left!42819 (right!43149 ys!41)))))))))

(assert (=> d!1635314 (= (inv!77568 (left!42819 (right!43149 ys!41))) e!3163092)))

(declare-fun b!5069074 () Bool)

(declare-fun res!2158239 () Bool)

(assert (=> b!5069074 (=> (not res!2158239) (not e!3163092))))

(assert (=> b!5069074 (= res!2158239 (and (not (= (left!42819 (left!42819 (right!43149 ys!41))) Empty!15566)) (not (= (right!43149 (left!42819 (right!43149 ys!41))) Empty!15566))))))

(declare-fun b!5069075 () Bool)

(declare-fun res!2158240 () Bool)

(assert (=> b!5069075 (=> (not res!2158240) (not e!3163092))))

(assert (=> b!5069075 (= res!2158240 (= (cheight!15777 (left!42819 (right!43149 ys!41))) (+ (max!0 (height!2143 (left!42819 (left!42819 (right!43149 ys!41)))) (height!2143 (right!43149 (left!42819 (right!43149 ys!41))))) 1)))))

(declare-fun b!5069076 () Bool)

(assert (=> b!5069076 (= e!3163092 (<= 0 (cheight!15777 (left!42819 (right!43149 ys!41)))))))

(assert (= (and d!1635314 res!2158238) b!5069074))

(assert (= (and b!5069074 res!2158239) b!5069075))

(assert (= (and b!5069075 res!2158240) b!5069076))

(declare-fun m!6113590 () Bool)

(assert (=> d!1635314 m!6113590))

(declare-fun m!6113592 () Bool)

(assert (=> d!1635314 m!6113592))

(declare-fun m!6113594 () Bool)

(assert (=> b!5069075 m!6113594))

(declare-fun m!6113596 () Bool)

(assert (=> b!5069075 m!6113596))

(assert (=> b!5069075 m!6113594))

(assert (=> b!5069075 m!6113596))

(declare-fun m!6113598 () Bool)

(assert (=> b!5069075 m!6113598))

(assert (=> b!5068777 d!1635314))

(declare-fun b!5069077 () Bool)

(declare-fun e!3163094 () Bool)

(assert (=> b!5069077 (= e!3163094 (not (isEmpty!31635 (right!43149 (left!42819 (left!42819 ys!41))))))))

(declare-fun b!5069078 () Bool)

(declare-fun res!2158244 () Bool)

(assert (=> b!5069078 (=> (not res!2158244) (not e!3163094))))

(assert (=> b!5069078 (= res!2158244 (not (isEmpty!31635 (left!42819 (left!42819 (left!42819 ys!41))))))))

(declare-fun d!1635316 () Bool)

(declare-fun res!2158242 () Bool)

(declare-fun e!3163093 () Bool)

(assert (=> d!1635316 (=> res!2158242 e!3163093)))

(assert (=> d!1635316 (= res!2158242 (not ((_ is Node!15566) (left!42819 (left!42819 ys!41)))))))

(assert (=> d!1635316 (= (isBalanced!4428 (left!42819 (left!42819 ys!41))) e!3163093)))

(declare-fun b!5069079 () Bool)

(assert (=> b!5069079 (= e!3163093 e!3163094)))

(declare-fun res!2158241 () Bool)

(assert (=> b!5069079 (=> (not res!2158241) (not e!3163094))))

(assert (=> b!5069079 (= res!2158241 (<= (- 1) (- (height!2143 (left!42819 (left!42819 (left!42819 ys!41)))) (height!2143 (right!43149 (left!42819 (left!42819 ys!41)))))))))

(declare-fun b!5069080 () Bool)

(declare-fun res!2158246 () Bool)

(assert (=> b!5069080 (=> (not res!2158246) (not e!3163094))))

(assert (=> b!5069080 (= res!2158246 (isBalanced!4428 (right!43149 (left!42819 (left!42819 ys!41)))))))

(declare-fun b!5069081 () Bool)

(declare-fun res!2158243 () Bool)

(assert (=> b!5069081 (=> (not res!2158243) (not e!3163094))))

(assert (=> b!5069081 (= res!2158243 (<= (- (height!2143 (left!42819 (left!42819 (left!42819 ys!41)))) (height!2143 (right!43149 (left!42819 (left!42819 ys!41))))) 1))))

(declare-fun b!5069082 () Bool)

(declare-fun res!2158245 () Bool)

(assert (=> b!5069082 (=> (not res!2158245) (not e!3163094))))

(assert (=> b!5069082 (= res!2158245 (isBalanced!4428 (left!42819 (left!42819 (left!42819 ys!41)))))))

(assert (= (and d!1635316 (not res!2158242)) b!5069079))

(assert (= (and b!5069079 res!2158241) b!5069081))

(assert (= (and b!5069081 res!2158243) b!5069082))

(assert (= (and b!5069082 res!2158245) b!5069080))

(assert (= (and b!5069080 res!2158246) b!5069078))

(assert (= (and b!5069078 res!2158244) b!5069077))

(declare-fun m!6113600 () Bool)

(assert (=> b!5069081 m!6113600))

(declare-fun m!6113602 () Bool)

(assert (=> b!5069081 m!6113602))

(declare-fun m!6113604 () Bool)

(assert (=> b!5069080 m!6113604))

(assert (=> b!5069079 m!6113600))

(assert (=> b!5069079 m!6113602))

(declare-fun m!6113606 () Bool)

(assert (=> b!5069082 m!6113606))

(declare-fun m!6113608 () Bool)

(assert (=> b!5069078 m!6113608))

(declare-fun m!6113610 () Bool)

(assert (=> b!5069077 m!6113610))

(assert (=> b!5068811 d!1635316))

(assert (=> b!5068766 d!1635298))

(assert (=> b!5068766 d!1635300))

(declare-fun d!1635318 () Bool)

(declare-fun c!870336 () Bool)

(assert (=> d!1635318 (= c!870336 ((_ is Node!15566) (left!42819 (left!42819 (right!43149 xs!286)))))))

(declare-fun e!3163095 () Bool)

(assert (=> d!1635318 (= (inv!77567 (left!42819 (left!42819 (right!43149 xs!286)))) e!3163095)))

(declare-fun b!5069083 () Bool)

(assert (=> b!5069083 (= e!3163095 (inv!77568 (left!42819 (left!42819 (right!43149 xs!286)))))))

(declare-fun b!5069084 () Bool)

(declare-fun e!3163096 () Bool)

(assert (=> b!5069084 (= e!3163095 e!3163096)))

(declare-fun res!2158247 () Bool)

(assert (=> b!5069084 (= res!2158247 (not ((_ is Leaf!25854) (left!42819 (left!42819 (right!43149 xs!286))))))))

(assert (=> b!5069084 (=> res!2158247 e!3163096)))

(declare-fun b!5069085 () Bool)

(assert (=> b!5069085 (= e!3163096 (inv!77569 (left!42819 (left!42819 (right!43149 xs!286)))))))

(assert (= (and d!1635318 c!870336) b!5069083))

(assert (= (and d!1635318 (not c!870336)) b!5069084))

(assert (= (and b!5069084 (not res!2158247)) b!5069085))

(declare-fun m!6113612 () Bool)

(assert (=> b!5069083 m!6113612))

(declare-fun m!6113614 () Bool)

(assert (=> b!5069085 m!6113614))

(assert (=> b!5068864 d!1635318))

(declare-fun d!1635320 () Bool)

(declare-fun c!870337 () Bool)

(assert (=> d!1635320 (= c!870337 ((_ is Node!15566) (right!43149 (left!42819 (right!43149 xs!286)))))))

(declare-fun e!3163097 () Bool)

(assert (=> d!1635320 (= (inv!77567 (right!43149 (left!42819 (right!43149 xs!286)))) e!3163097)))

(declare-fun b!5069086 () Bool)

(assert (=> b!5069086 (= e!3163097 (inv!77568 (right!43149 (left!42819 (right!43149 xs!286)))))))

(declare-fun b!5069087 () Bool)

(declare-fun e!3163098 () Bool)

(assert (=> b!5069087 (= e!3163097 e!3163098)))

(declare-fun res!2158248 () Bool)

(assert (=> b!5069087 (= res!2158248 (not ((_ is Leaf!25854) (right!43149 (left!42819 (right!43149 xs!286))))))))

(assert (=> b!5069087 (=> res!2158248 e!3163098)))

(declare-fun b!5069088 () Bool)

(assert (=> b!5069088 (= e!3163098 (inv!77569 (right!43149 (left!42819 (right!43149 xs!286)))))))

(assert (= (and d!1635320 c!870337) b!5069086))

(assert (= (and d!1635320 (not c!870337)) b!5069087))

(assert (= (and b!5069087 (not res!2158248)) b!5069088))

(declare-fun m!6113616 () Bool)

(assert (=> b!5069086 m!6113616))

(declare-fun m!6113618 () Bool)

(assert (=> b!5069088 m!6113618))

(assert (=> b!5068864 d!1635320))

(declare-fun d!1635322 () Bool)

(declare-fun lt!2089296 () Int)

(assert (=> d!1635322 (= lt!2089296 (size!39079 (list!18993 (left!42819 (right!43149 ys!41)))))))

(assert (=> d!1635322 (= lt!2089296 (ite ((_ is Empty!15566) (left!42819 (right!43149 ys!41))) 0 (ite ((_ is Leaf!25854) (left!42819 (right!43149 ys!41))) (csize!31363 (left!42819 (right!43149 ys!41))) (csize!31362 (left!42819 (right!43149 ys!41))))))))

(assert (=> d!1635322 (= (size!39080 (left!42819 (right!43149 ys!41))) lt!2089296)))

(declare-fun bs!1190029 () Bool)

(assert (= bs!1190029 d!1635322))

(assert (=> bs!1190029 m!6113466))

(assert (=> bs!1190029 m!6113466))

(declare-fun m!6113620 () Bool)

(assert (=> bs!1190029 m!6113620))

(assert (=> d!1635134 d!1635322))

(declare-fun d!1635324 () Bool)

(declare-fun lt!2089297 () Int)

(assert (=> d!1635324 (= lt!2089297 (size!39079 (list!18993 (right!43149 (right!43149 ys!41)))))))

(assert (=> d!1635324 (= lt!2089297 (ite ((_ is Empty!15566) (right!43149 (right!43149 ys!41))) 0 (ite ((_ is Leaf!25854) (right!43149 (right!43149 ys!41))) (csize!31363 (right!43149 (right!43149 ys!41))) (csize!31362 (right!43149 (right!43149 ys!41))))))))

(assert (=> d!1635324 (= (size!39080 (right!43149 (right!43149 ys!41))) lt!2089297)))

(declare-fun bs!1190030 () Bool)

(assert (= bs!1190030 d!1635324))

(assert (=> bs!1190030 m!6113582))

(assert (=> bs!1190030 m!6113582))

(declare-fun m!6113622 () Bool)

(assert (=> bs!1190030 m!6113622))

(assert (=> d!1635134 d!1635324))

(declare-fun d!1635326 () Bool)

(assert (=> d!1635326 (= (isEmpty!31636 (list!18993 (left!42819 xs!286))) ((_ is Nil!58436) (list!18993 (left!42819 xs!286))))))

(assert (=> d!1635096 d!1635326))

(declare-fun b!5069089 () Bool)

(declare-fun e!3163099 () List!58560)

(assert (=> b!5069089 (= e!3163099 Nil!58436)))

(declare-fun b!5069091 () Bool)

(declare-fun e!3163100 () List!58560)

(assert (=> b!5069091 (= e!3163100 (list!18992 (xs!18922 (left!42819 xs!286))))))

(declare-fun b!5069090 () Bool)

(assert (=> b!5069090 (= e!3163099 e!3163100)))

(declare-fun c!870339 () Bool)

(assert (=> b!5069090 (= c!870339 ((_ is Leaf!25854) (left!42819 xs!286)))))

(declare-fun d!1635328 () Bool)

(declare-fun c!870338 () Bool)

(assert (=> d!1635328 (= c!870338 ((_ is Empty!15566) (left!42819 xs!286)))))

(assert (=> d!1635328 (= (list!18993 (left!42819 xs!286)) e!3163099)))

(declare-fun b!5069092 () Bool)

(assert (=> b!5069092 (= e!3163100 (++!12791 (list!18993 (left!42819 (left!42819 xs!286))) (list!18993 (right!43149 (left!42819 xs!286)))))))

(assert (= (and d!1635328 c!870338) b!5069089))

(assert (= (and d!1635328 (not c!870338)) b!5069090))

(assert (= (and b!5069090 c!870339) b!5069091))

(assert (= (and b!5069090 (not c!870339)) b!5069092))

(assert (=> b!5069091 m!6113020))

(assert (=> b!5069092 m!6113506))

(assert (=> b!5069092 m!6113536))

(assert (=> b!5069092 m!6113506))

(assert (=> b!5069092 m!6113536))

(declare-fun m!6113624 () Bool)

(assert (=> b!5069092 m!6113624))

(assert (=> d!1635096 d!1635328))

(declare-fun d!1635330 () Bool)

(declare-fun lt!2089298 () Int)

(assert (=> d!1635330 (= lt!2089298 (size!39079 (list!18993 (left!42819 xs!286))))))

(assert (=> d!1635330 (= lt!2089298 (ite ((_ is Empty!15566) (left!42819 xs!286)) 0 (ite ((_ is Leaf!25854) (left!42819 xs!286)) (csize!31363 (left!42819 xs!286)) (csize!31362 (left!42819 xs!286)))))))

(assert (=> d!1635330 (= (size!39080 (left!42819 xs!286)) lt!2089298)))

(declare-fun bs!1190031 () Bool)

(assert (= bs!1190031 d!1635330))

(assert (=> bs!1190031 m!6113080))

(assert (=> bs!1190031 m!6113080))

(declare-fun m!6113626 () Bool)

(assert (=> bs!1190031 m!6113626))

(assert (=> d!1635096 d!1635330))

(declare-fun d!1635332 () Bool)

(assert (=> d!1635332 (= (inv!77566 (xs!18922 (right!43149 (left!42819 xs!286)))) (<= (size!39079 (innerList!15654 (xs!18922 (right!43149 (left!42819 xs!286))))) 2147483647))))

(declare-fun bs!1190032 () Bool)

(assert (= bs!1190032 d!1635332))

(declare-fun m!6113628 () Bool)

(assert (=> bs!1190032 m!6113628))

(assert (=> b!5068845 d!1635332))

(declare-fun d!1635334 () Bool)

(declare-fun res!2158249 () Bool)

(declare-fun e!3163101 () Bool)

(assert (=> d!1635334 (=> (not res!2158249) (not e!3163101))))

(assert (=> d!1635334 (= res!2158249 (<= (size!39079 (list!18992 (xs!18922 (left!42819 (right!43149 ys!41))))) 512))))

(assert (=> d!1635334 (= (inv!77569 (left!42819 (right!43149 ys!41))) e!3163101)))

(declare-fun b!5069093 () Bool)

(declare-fun res!2158250 () Bool)

(assert (=> b!5069093 (=> (not res!2158250) (not e!3163101))))

(assert (=> b!5069093 (= res!2158250 (= (csize!31363 (left!42819 (right!43149 ys!41))) (size!39079 (list!18992 (xs!18922 (left!42819 (right!43149 ys!41)))))))))

(declare-fun b!5069094 () Bool)

(assert (=> b!5069094 (= e!3163101 (and (> (csize!31363 (left!42819 (right!43149 ys!41))) 0) (<= (csize!31363 (left!42819 (right!43149 ys!41))) 512)))))

(assert (= (and d!1635334 res!2158249) b!5069093))

(assert (= (and b!5069093 res!2158250) b!5069094))

(declare-fun m!6113630 () Bool)

(assert (=> d!1635334 m!6113630))

(assert (=> d!1635334 m!6113630))

(declare-fun m!6113632 () Bool)

(assert (=> d!1635334 m!6113632))

(assert (=> b!5069093 m!6113630))

(assert (=> b!5069093 m!6113630))

(assert (=> b!5069093 m!6113632))

(assert (=> b!5068779 d!1635334))

(declare-fun d!1635336 () Bool)

(declare-fun lt!2089299 () Int)

(assert (=> d!1635336 (>= lt!2089299 0)))

(declare-fun e!3163102 () Int)

(assert (=> d!1635336 (= lt!2089299 e!3163102)))

(declare-fun c!870340 () Bool)

(assert (=> d!1635336 (= c!870340 ((_ is Nil!58436) (innerList!15654 (xs!18922 (right!43149 ys!41)))))))

(assert (=> d!1635336 (= (size!39079 (innerList!15654 (xs!18922 (right!43149 ys!41)))) lt!2089299)))

(declare-fun b!5069095 () Bool)

(assert (=> b!5069095 (= e!3163102 0)))

(declare-fun b!5069096 () Bool)

(assert (=> b!5069096 (= e!3163102 (+ 1 (size!39079 (t!371303 (innerList!15654 (xs!18922 (right!43149 ys!41)))))))))

(assert (= (and d!1635336 c!870340) b!5069095))

(assert (= (and d!1635336 (not c!870340)) b!5069096))

(declare-fun m!6113634 () Bool)

(assert (=> b!5069096 m!6113634))

(assert (=> d!1635106 d!1635336))

(assert (=> b!5068727 d!1635136))

(assert (=> b!5068727 d!1635138))

(declare-fun d!1635338 () Bool)

(declare-fun c!870341 () Bool)

(assert (=> d!1635338 (= c!870341 ((_ is Node!15566) (left!42819 (left!42819 (left!42819 ys!41)))))))

(declare-fun e!3163103 () Bool)

(assert (=> d!1635338 (= (inv!77567 (left!42819 (left!42819 (left!42819 ys!41)))) e!3163103)))

(declare-fun b!5069097 () Bool)

(assert (=> b!5069097 (= e!3163103 (inv!77568 (left!42819 (left!42819 (left!42819 ys!41)))))))

(declare-fun b!5069098 () Bool)

(declare-fun e!3163104 () Bool)

(assert (=> b!5069098 (= e!3163103 e!3163104)))

(declare-fun res!2158251 () Bool)

(assert (=> b!5069098 (= res!2158251 (not ((_ is Leaf!25854) (left!42819 (left!42819 (left!42819 ys!41))))))))

(assert (=> b!5069098 (=> res!2158251 e!3163104)))

(declare-fun b!5069099 () Bool)

(assert (=> b!5069099 (= e!3163104 (inv!77569 (left!42819 (left!42819 (left!42819 ys!41)))))))

(assert (= (and d!1635338 c!870341) b!5069097))

(assert (= (and d!1635338 (not c!870341)) b!5069098))

(assert (= (and b!5069098 (not res!2158251)) b!5069099))

(declare-fun m!6113636 () Bool)

(assert (=> b!5069097 m!6113636))

(declare-fun m!6113638 () Bool)

(assert (=> b!5069099 m!6113638))

(assert (=> b!5068854 d!1635338))

(declare-fun d!1635340 () Bool)

(declare-fun c!870342 () Bool)

(assert (=> d!1635340 (= c!870342 ((_ is Node!15566) (right!43149 (left!42819 (left!42819 ys!41)))))))

(declare-fun e!3163105 () Bool)

(assert (=> d!1635340 (= (inv!77567 (right!43149 (left!42819 (left!42819 ys!41)))) e!3163105)))

(declare-fun b!5069100 () Bool)

(assert (=> b!5069100 (= e!3163105 (inv!77568 (right!43149 (left!42819 (left!42819 ys!41)))))))

(declare-fun b!5069101 () Bool)

(declare-fun e!3163106 () Bool)

(assert (=> b!5069101 (= e!3163105 e!3163106)))

(declare-fun res!2158252 () Bool)

(assert (=> b!5069101 (= res!2158252 (not ((_ is Leaf!25854) (right!43149 (left!42819 (left!42819 ys!41))))))))

(assert (=> b!5069101 (=> res!2158252 e!3163106)))

(declare-fun b!5069102 () Bool)

(assert (=> b!5069102 (= e!3163106 (inv!77569 (right!43149 (left!42819 (left!42819 ys!41)))))))

(assert (= (and d!1635340 c!870342) b!5069100))

(assert (= (and d!1635340 (not c!870342)) b!5069101))

(assert (= (and b!5069101 (not res!2158252)) b!5069102))

(declare-fun m!6113640 () Bool)

(assert (=> b!5069100 m!6113640))

(declare-fun m!6113642 () Bool)

(assert (=> b!5069102 m!6113642))

(assert (=> b!5068854 d!1635340))

(declare-fun d!1635342 () Bool)

(declare-fun lt!2089300 () Int)

(assert (=> d!1635342 (= lt!2089300 (size!39079 (list!18993 (left!42819 (left!42819 ys!41)))))))

(assert (=> d!1635342 (= lt!2089300 (ite ((_ is Empty!15566) (left!42819 (left!42819 ys!41))) 0 (ite ((_ is Leaf!25854) (left!42819 (left!42819 ys!41))) (csize!31363 (left!42819 (left!42819 ys!41))) (csize!31362 (left!42819 (left!42819 ys!41))))))))

(assert (=> d!1635342 (= (size!39080 (left!42819 (left!42819 ys!41))) lt!2089300)))

(declare-fun bs!1190033 () Bool)

(assert (= bs!1190033 d!1635342))

(declare-fun m!6113644 () Bool)

(assert (=> bs!1190033 m!6113644))

(assert (=> bs!1190033 m!6113644))

(declare-fun m!6113646 () Bool)

(assert (=> bs!1190033 m!6113646))

(assert (=> d!1635076 d!1635342))

(declare-fun d!1635344 () Bool)

(declare-fun lt!2089301 () Int)

(assert (=> d!1635344 (= lt!2089301 (size!39079 (list!18993 (right!43149 (left!42819 ys!41)))))))

(assert (=> d!1635344 (= lt!2089301 (ite ((_ is Empty!15566) (right!43149 (left!42819 ys!41))) 0 (ite ((_ is Leaf!25854) (right!43149 (left!42819 ys!41))) (csize!31363 (right!43149 (left!42819 ys!41))) (csize!31362 (right!43149 (left!42819 ys!41))))))))

(assert (=> d!1635344 (= (size!39080 (right!43149 (left!42819 ys!41))) lt!2089301)))

(declare-fun bs!1190034 () Bool)

(assert (= bs!1190034 d!1635344))

(assert (=> bs!1190034 m!6113448))

(assert (=> bs!1190034 m!6113448))

(declare-fun m!6113648 () Bool)

(assert (=> bs!1190034 m!6113648))

(assert (=> d!1635076 d!1635344))

(declare-fun d!1635346 () Bool)

(assert (=> d!1635346 (= (inv!77566 (xs!18922 (right!43149 (right!43149 xs!286)))) (<= (size!39079 (innerList!15654 (xs!18922 (right!43149 (right!43149 xs!286))))) 2147483647))))

(declare-fun bs!1190035 () Bool)

(assert (= bs!1190035 d!1635346))

(declare-fun m!6113650 () Bool)

(assert (=> bs!1190035 m!6113650))

(assert (=> b!5068868 d!1635346))

(declare-fun d!1635348 () Bool)

(declare-fun res!2158253 () Bool)

(declare-fun e!3163107 () Bool)

(assert (=> d!1635348 (=> (not res!2158253) (not e!3163107))))

(assert (=> d!1635348 (= res!2158253 (<= (size!39079 (list!18992 (xs!18922 (right!43149 (right!43149 ys!41))))) 512))))

(assert (=> d!1635348 (= (inv!77569 (right!43149 (right!43149 ys!41))) e!3163107)))

(declare-fun b!5069103 () Bool)

(declare-fun res!2158254 () Bool)

(assert (=> b!5069103 (=> (not res!2158254) (not e!3163107))))

(assert (=> b!5069103 (= res!2158254 (= (csize!31363 (right!43149 (right!43149 ys!41))) (size!39079 (list!18992 (xs!18922 (right!43149 (right!43149 ys!41)))))))))

(declare-fun b!5069104 () Bool)

(assert (=> b!5069104 (= e!3163107 (and (> (csize!31363 (right!43149 (right!43149 ys!41))) 0) (<= (csize!31363 (right!43149 (right!43149 ys!41))) 512)))))

(assert (= (and d!1635348 res!2158253) b!5069103))

(assert (= (and b!5069103 res!2158254) b!5069104))

(declare-fun m!6113652 () Bool)

(assert (=> d!1635348 m!6113652))

(assert (=> d!1635348 m!6113652))

(declare-fun m!6113654 () Bool)

(assert (=> d!1635348 m!6113654))

(assert (=> b!5069103 m!6113652))

(assert (=> b!5069103 m!6113652))

(assert (=> b!5069103 m!6113654))

(assert (=> b!5068782 d!1635348))

(declare-fun d!1635350 () Bool)

(assert (=> d!1635350 (= (inv!77566 (xs!18922 (left!42819 (right!43149 ys!41)))) (<= (size!39079 (innerList!15654 (xs!18922 (left!42819 (right!43149 ys!41))))) 2147483647))))

(declare-fun bs!1190036 () Bool)

(assert (= bs!1190036 d!1635350))

(declare-fun m!6113656 () Bool)

(assert (=> bs!1190036 m!6113656))

(assert (=> b!5068849 d!1635350))

(declare-fun d!1635352 () Bool)

(declare-fun lt!2089302 () Bool)

(assert (=> d!1635352 (= lt!2089302 (isEmpty!31636 (list!18993 (left!42819 (left!42819 ys!41)))))))

(assert (=> d!1635352 (= lt!2089302 (= (size!39080 (left!42819 (left!42819 ys!41))) 0))))

(assert (=> d!1635352 (= (isEmpty!31635 (left!42819 (left!42819 ys!41))) lt!2089302)))

(declare-fun bs!1190037 () Bool)

(assert (= bs!1190037 d!1635352))

(assert (=> bs!1190037 m!6113644))

(assert (=> bs!1190037 m!6113644))

(declare-fun m!6113658 () Bool)

(assert (=> bs!1190037 m!6113658))

(assert (=> bs!1190037 m!6113046))

(assert (=> b!5068807 d!1635352))

(declare-fun d!1635354 () Bool)

(assert (=> d!1635354 (= (inv!77566 (xs!18922 (right!43149 (left!42819 ys!41)))) (<= (size!39079 (innerList!15654 (xs!18922 (right!43149 (left!42819 ys!41))))) 2147483647))))

(declare-fun bs!1190038 () Bool)

(assert (= bs!1190038 d!1635354))

(declare-fun m!6113660 () Bool)

(assert (=> bs!1190038 m!6113660))

(assert (=> b!5068858 d!1635354))

(declare-fun d!1635356 () Bool)

(declare-fun lt!2089303 () Bool)

(assert (=> d!1635356 (= lt!2089303 (isEmpty!31636 (list!18993 (right!43149 (right!43149 ys!41)))))))

(assert (=> d!1635356 (= lt!2089303 (= (size!39080 (right!43149 (right!43149 ys!41))) 0))))

(assert (=> d!1635356 (= (isEmpty!31635 (right!43149 (right!43149 ys!41))) lt!2089303)))

(declare-fun bs!1190039 () Bool)

(assert (= bs!1190039 d!1635356))

(assert (=> bs!1190039 m!6113582))

(assert (=> bs!1190039 m!6113582))

(declare-fun m!6113662 () Bool)

(assert (=> bs!1190039 m!6113662))

(assert (=> bs!1190039 m!6113170))

(assert (=> b!5068762 d!1635356))

(declare-fun b!5069105 () Bool)

(declare-fun e!3163109 () Bool)

(assert (=> b!5069105 (= e!3163109 (not (isEmpty!31635 (right!43149 (right!43149 (left!42819 ys!41))))))))

(declare-fun b!5069106 () Bool)

(declare-fun res!2158258 () Bool)

(assert (=> b!5069106 (=> (not res!2158258) (not e!3163109))))

(assert (=> b!5069106 (= res!2158258 (not (isEmpty!31635 (left!42819 (right!43149 (left!42819 ys!41))))))))

(declare-fun d!1635358 () Bool)

(declare-fun res!2158256 () Bool)

(declare-fun e!3163108 () Bool)

(assert (=> d!1635358 (=> res!2158256 e!3163108)))

(assert (=> d!1635358 (= res!2158256 (not ((_ is Node!15566) (right!43149 (left!42819 ys!41)))))))

(assert (=> d!1635358 (= (isBalanced!4428 (right!43149 (left!42819 ys!41))) e!3163108)))

(declare-fun b!5069107 () Bool)

(assert (=> b!5069107 (= e!3163108 e!3163109)))

(declare-fun res!2158255 () Bool)

(assert (=> b!5069107 (=> (not res!2158255) (not e!3163109))))

(assert (=> b!5069107 (= res!2158255 (<= (- 1) (- (height!2143 (left!42819 (right!43149 (left!42819 ys!41)))) (height!2143 (right!43149 (right!43149 (left!42819 ys!41)))))))))

(declare-fun b!5069108 () Bool)

(declare-fun res!2158260 () Bool)

(assert (=> b!5069108 (=> (not res!2158260) (not e!3163109))))

(assert (=> b!5069108 (= res!2158260 (isBalanced!4428 (right!43149 (right!43149 (left!42819 ys!41)))))))

(declare-fun b!5069109 () Bool)

(declare-fun res!2158257 () Bool)

(assert (=> b!5069109 (=> (not res!2158257) (not e!3163109))))

(assert (=> b!5069109 (= res!2158257 (<= (- (height!2143 (left!42819 (right!43149 (left!42819 ys!41)))) (height!2143 (right!43149 (right!43149 (left!42819 ys!41))))) 1))))

(declare-fun b!5069110 () Bool)

(declare-fun res!2158259 () Bool)

(assert (=> b!5069110 (=> (not res!2158259) (not e!3163109))))

(assert (=> b!5069110 (= res!2158259 (isBalanced!4428 (left!42819 (right!43149 (left!42819 ys!41)))))))

(assert (= (and d!1635358 (not res!2158256)) b!5069107))

(assert (= (and b!5069107 res!2158255) b!5069109))

(assert (= (and b!5069109 res!2158257) b!5069110))

(assert (= (and b!5069110 res!2158259) b!5069108))

(assert (= (and b!5069108 res!2158260) b!5069106))

(assert (= (and b!5069106 res!2158258) b!5069105))

(assert (=> b!5069109 m!6113474))

(assert (=> b!5069109 m!6113476))

(declare-fun m!6113664 () Bool)

(assert (=> b!5069108 m!6113664))

(assert (=> b!5069107 m!6113474))

(assert (=> b!5069107 m!6113476))

(declare-fun m!6113666 () Bool)

(assert (=> b!5069110 m!6113666))

(declare-fun m!6113668 () Bool)

(assert (=> b!5069106 m!6113668))

(declare-fun m!6113670 () Bool)

(assert (=> b!5069105 m!6113670))

(assert (=> b!5068809 d!1635358))

(declare-fun d!1635360 () Bool)

(declare-fun lt!2089304 () Int)

(assert (=> d!1635360 (>= lt!2089304 0)))

(declare-fun e!3163110 () Int)

(assert (=> d!1635360 (= lt!2089304 e!3163110)))

(declare-fun c!870343 () Bool)

(assert (=> d!1635360 (= c!870343 ((_ is Nil!58436) (t!371303 (innerList!15654 (xs!18922 xs!286)))))))

(assert (=> d!1635360 (= (size!39079 (t!371303 (innerList!15654 (xs!18922 xs!286)))) lt!2089304)))

(declare-fun b!5069111 () Bool)

(assert (=> b!5069111 (= e!3163110 0)))

(declare-fun b!5069112 () Bool)

(assert (=> b!5069112 (= e!3163110 (+ 1 (size!39079 (t!371303 (t!371303 (innerList!15654 (xs!18922 xs!286)))))))))

(assert (= (and d!1635360 c!870343) b!5069111))

(assert (= (and d!1635360 (not c!870343)) b!5069112))

(declare-fun m!6113672 () Bool)

(assert (=> b!5069112 m!6113672))

(assert (=> b!5068830 d!1635360))

(assert (=> b!5068764 d!1635298))

(assert (=> b!5068764 d!1635300))

(assert (=> d!1635068 d!1635330))

(declare-fun d!1635362 () Bool)

(declare-fun lt!2089305 () Int)

(assert (=> d!1635362 (= lt!2089305 (size!39079 (list!18993 (right!43149 xs!286))))))

(assert (=> d!1635362 (= lt!2089305 (ite ((_ is Empty!15566) (right!43149 xs!286)) 0 (ite ((_ is Leaf!25854) (right!43149 xs!286)) (csize!31363 (right!43149 xs!286)) (csize!31362 (right!43149 xs!286)))))))

(assert (=> d!1635362 (= (size!39080 (right!43149 xs!286)) lt!2089305)))

(declare-fun bs!1190040 () Bool)

(assert (= bs!1190040 d!1635362))

(assert (=> bs!1190040 m!6113074))

(assert (=> bs!1190040 m!6113074))

(declare-fun m!6113674 () Bool)

(assert (=> bs!1190040 m!6113674))

(assert (=> d!1635068 d!1635362))

(declare-fun d!1635364 () Bool)

(assert (=> d!1635364 (= (isEmpty!31636 (list!18993 (left!42819 ys!41))) ((_ is Nil!58436) (list!18993 (left!42819 ys!41))))))

(assert (=> d!1635122 d!1635364))

(declare-fun b!5069113 () Bool)

(declare-fun e!3163111 () List!58560)

(assert (=> b!5069113 (= e!3163111 Nil!58436)))

(declare-fun b!5069115 () Bool)

(declare-fun e!3163112 () List!58560)

(assert (=> b!5069115 (= e!3163112 (list!18992 (xs!18922 (left!42819 ys!41))))))

(declare-fun b!5069114 () Bool)

(assert (=> b!5069114 (= e!3163111 e!3163112)))

(declare-fun c!870345 () Bool)

(assert (=> b!5069114 (= c!870345 ((_ is Leaf!25854) (left!42819 ys!41)))))

(declare-fun d!1635366 () Bool)

(declare-fun c!870344 () Bool)

(assert (=> d!1635366 (= c!870344 ((_ is Empty!15566) (left!42819 ys!41)))))

(assert (=> d!1635366 (= (list!18993 (left!42819 ys!41)) e!3163111)))

(declare-fun b!5069116 () Bool)

(assert (=> b!5069116 (= e!3163112 (++!12791 (list!18993 (left!42819 (left!42819 ys!41))) (list!18993 (right!43149 (left!42819 ys!41)))))))

(assert (= (and d!1635366 c!870344) b!5069113))

(assert (= (and d!1635366 (not c!870344)) b!5069114))

(assert (= (and b!5069114 c!870345) b!5069115))

(assert (= (and b!5069114 (not c!870345)) b!5069116))

(assert (=> b!5069115 m!6113124))

(assert (=> b!5069116 m!6113644))

(assert (=> b!5069116 m!6113448))

(assert (=> b!5069116 m!6113644))

(assert (=> b!5069116 m!6113448))

(declare-fun m!6113676 () Bool)

(assert (=> b!5069116 m!6113676))

(assert (=> d!1635122 d!1635366))

(assert (=> d!1635122 d!1635312))

(declare-fun d!1635368 () Bool)

(declare-fun lt!2089306 () Bool)

(assert (=> d!1635368 (= lt!2089306 (isEmpty!31636 (list!18993 (left!42819 (right!43149 xs!286)))))))

(assert (=> d!1635368 (= lt!2089306 (= (size!39080 (left!42819 (right!43149 xs!286))) 0))))

(assert (=> d!1635368 (= (isEmpty!31635 (left!42819 (right!43149 xs!286))) lt!2089306)))

(declare-fun bs!1190041 () Bool)

(assert (= bs!1190041 d!1635368))

(declare-fun m!6113678 () Bool)

(assert (=> bs!1190041 m!6113678))

(assert (=> bs!1190041 m!6113678))

(declare-fun m!6113680 () Bool)

(assert (=> bs!1190041 m!6113680))

(assert (=> bs!1190041 m!6113096))

(assert (=> b!5068801 d!1635368))

(assert (=> b!5068724 d!1635078))

(assert (=> b!5068724 d!1635080))

(declare-fun d!1635370 () Bool)

(declare-fun c!870346 () Bool)

(assert (=> d!1635370 (= c!870346 ((_ is Node!15566) (left!42819 (right!43149 (right!43149 ys!41)))))))

(declare-fun e!3163113 () Bool)

(assert (=> d!1635370 (= (inv!77567 (left!42819 (right!43149 (right!43149 ys!41)))) e!3163113)))

(declare-fun b!5069117 () Bool)

(assert (=> b!5069117 (= e!3163113 (inv!77568 (left!42819 (right!43149 (right!43149 ys!41)))))))

(declare-fun b!5069118 () Bool)

(declare-fun e!3163114 () Bool)

(assert (=> b!5069118 (= e!3163113 e!3163114)))

(declare-fun res!2158261 () Bool)

(assert (=> b!5069118 (= res!2158261 (not ((_ is Leaf!25854) (left!42819 (right!43149 (right!43149 ys!41))))))))

(assert (=> b!5069118 (=> res!2158261 e!3163114)))

(declare-fun b!5069119 () Bool)

(assert (=> b!5069119 (= e!3163114 (inv!77569 (left!42819 (right!43149 (right!43149 ys!41)))))))

(assert (= (and d!1635370 c!870346) b!5069117))

(assert (= (and d!1635370 (not c!870346)) b!5069118))

(assert (= (and b!5069118 (not res!2158261)) b!5069119))

(declare-fun m!6113682 () Bool)

(assert (=> b!5069117 m!6113682))

(declare-fun m!6113684 () Bool)

(assert (=> b!5069119 m!6113684))

(assert (=> b!5068851 d!1635370))

(declare-fun d!1635372 () Bool)

(declare-fun c!870347 () Bool)

(assert (=> d!1635372 (= c!870347 ((_ is Node!15566) (right!43149 (right!43149 (right!43149 ys!41)))))))

(declare-fun e!3163115 () Bool)

(assert (=> d!1635372 (= (inv!77567 (right!43149 (right!43149 (right!43149 ys!41)))) e!3163115)))

(declare-fun b!5069120 () Bool)

(assert (=> b!5069120 (= e!3163115 (inv!77568 (right!43149 (right!43149 (right!43149 ys!41)))))))

(declare-fun b!5069121 () Bool)

(declare-fun e!3163116 () Bool)

(assert (=> b!5069121 (= e!3163115 e!3163116)))

(declare-fun res!2158262 () Bool)

(assert (=> b!5069121 (= res!2158262 (not ((_ is Leaf!25854) (right!43149 (right!43149 (right!43149 ys!41))))))))

(assert (=> b!5069121 (=> res!2158262 e!3163116)))

(declare-fun b!5069122 () Bool)

(assert (=> b!5069122 (= e!3163116 (inv!77569 (right!43149 (right!43149 (right!43149 ys!41)))))))

(assert (= (and d!1635372 c!870347) b!5069120))

(assert (= (and d!1635372 (not c!870347)) b!5069121))

(assert (= (and b!5069121 (not res!2158262)) b!5069122))

(declare-fun m!6113686 () Bool)

(assert (=> b!5069120 m!6113686))

(declare-fun m!6113688 () Bool)

(assert (=> b!5069122 m!6113688))

(assert (=> b!5068851 d!1635372))

(declare-fun d!1635374 () Bool)

(declare-fun lt!2089307 () Int)

(assert (=> d!1635374 (>= lt!2089307 0)))

(declare-fun e!3163117 () Int)

(assert (=> d!1635374 (= lt!2089307 e!3163117)))

(declare-fun c!870348 () Bool)

(assert (=> d!1635374 (= c!870348 ((_ is Nil!58436) (innerList!15654 (xs!18922 (right!43149 xs!286)))))))

(assert (=> d!1635374 (= (size!39079 (innerList!15654 (xs!18922 (right!43149 xs!286)))) lt!2089307)))

(declare-fun b!5069123 () Bool)

(assert (=> b!5069123 (= e!3163117 0)))

(declare-fun b!5069124 () Bool)

(assert (=> b!5069124 (= e!3163117 (+ 1 (size!39079 (t!371303 (innerList!15654 (xs!18922 (right!43149 xs!286)))))))))

(assert (= (and d!1635374 c!870348) b!5069123))

(assert (= (and d!1635374 (not c!870348)) b!5069124))

(declare-fun m!6113690 () Bool)

(assert (=> b!5069124 m!6113690))

(assert (=> d!1635130 d!1635374))

(assert (=> b!5068793 d!1635220))

(assert (=> b!5068793 d!1635222))

(assert (=> b!5068795 d!1635220))

(assert (=> b!5068795 d!1635222))

(declare-fun b!5069125 () Bool)

(declare-fun e!3163119 () Bool)

(assert (=> b!5069125 (= e!3163119 (not (isEmpty!31635 (right!43149 (right!43149 (right!43149 xs!286))))))))

(declare-fun b!5069126 () Bool)

(declare-fun res!2158266 () Bool)

(assert (=> b!5069126 (=> (not res!2158266) (not e!3163119))))

(assert (=> b!5069126 (= res!2158266 (not (isEmpty!31635 (left!42819 (right!43149 (right!43149 xs!286))))))))

(declare-fun d!1635376 () Bool)

(declare-fun res!2158264 () Bool)

(declare-fun e!3163118 () Bool)

(assert (=> d!1635376 (=> res!2158264 e!3163118)))

(assert (=> d!1635376 (= res!2158264 (not ((_ is Node!15566) (right!43149 (right!43149 xs!286)))))))

(assert (=> d!1635376 (= (isBalanced!4428 (right!43149 (right!43149 xs!286))) e!3163118)))

(declare-fun b!5069127 () Bool)

(assert (=> b!5069127 (= e!3163118 e!3163119)))

(declare-fun res!2158263 () Bool)

(assert (=> b!5069127 (=> (not res!2158263) (not e!3163119))))

(assert (=> b!5069127 (= res!2158263 (<= (- 1) (- (height!2143 (left!42819 (right!43149 (right!43149 xs!286)))) (height!2143 (right!43149 (right!43149 (right!43149 xs!286)))))))))

(declare-fun b!5069128 () Bool)

(declare-fun res!2158268 () Bool)

(assert (=> b!5069128 (=> (not res!2158268) (not e!3163119))))

(assert (=> b!5069128 (= res!2158268 (isBalanced!4428 (right!43149 (right!43149 (right!43149 xs!286)))))))

(declare-fun b!5069129 () Bool)

(declare-fun res!2158265 () Bool)

(assert (=> b!5069129 (=> (not res!2158265) (not e!3163119))))

(assert (=> b!5069129 (= res!2158265 (<= (- (height!2143 (left!42819 (right!43149 (right!43149 xs!286)))) (height!2143 (right!43149 (right!43149 (right!43149 xs!286))))) 1))))

(declare-fun b!5069130 () Bool)

(declare-fun res!2158267 () Bool)

(assert (=> b!5069130 (=> (not res!2158267) (not e!3163119))))

(assert (=> b!5069130 (= res!2158267 (isBalanced!4428 (left!42819 (right!43149 (right!43149 xs!286)))))))

(assert (= (and d!1635376 (not res!2158264)) b!5069127))

(assert (= (and b!5069127 res!2158263) b!5069129))

(assert (= (and b!5069129 res!2158265) b!5069130))

(assert (= (and b!5069130 res!2158267) b!5069128))

(assert (= (and b!5069128 res!2158268) b!5069126))

(assert (= (and b!5069126 res!2158266) b!5069125))

(assert (=> b!5069129 m!6113554))

(assert (=> b!5069129 m!6113556))

(declare-fun m!6113692 () Bool)

(assert (=> b!5069128 m!6113692))

(assert (=> b!5069127 m!6113554))

(assert (=> b!5069127 m!6113556))

(declare-fun m!6113694 () Bool)

(assert (=> b!5069130 m!6113694))

(declare-fun m!6113696 () Bool)

(assert (=> b!5069126 m!6113696))

(declare-fun m!6113698 () Bool)

(assert (=> b!5069125 m!6113698))

(assert (=> b!5068803 d!1635376))

(declare-fun b!5069131 () Bool)

(declare-fun e!3163121 () Bool)

(assert (=> b!5069131 (= e!3163121 (not (isEmpty!31635 (right!43149 (left!42819 (right!43149 xs!286))))))))

(declare-fun b!5069132 () Bool)

(declare-fun res!2158272 () Bool)

(assert (=> b!5069132 (=> (not res!2158272) (not e!3163121))))

(assert (=> b!5069132 (= res!2158272 (not (isEmpty!31635 (left!42819 (left!42819 (right!43149 xs!286))))))))

(declare-fun d!1635378 () Bool)

(declare-fun res!2158270 () Bool)

(declare-fun e!3163120 () Bool)

(assert (=> d!1635378 (=> res!2158270 e!3163120)))

(assert (=> d!1635378 (= res!2158270 (not ((_ is Node!15566) (left!42819 (right!43149 xs!286)))))))

(assert (=> d!1635378 (= (isBalanced!4428 (left!42819 (right!43149 xs!286))) e!3163120)))

(declare-fun b!5069133 () Bool)

(assert (=> b!5069133 (= e!3163120 e!3163121)))

(declare-fun res!2158269 () Bool)

(assert (=> b!5069133 (=> (not res!2158269) (not e!3163121))))

(assert (=> b!5069133 (= res!2158269 (<= (- 1) (- (height!2143 (left!42819 (left!42819 (right!43149 xs!286)))) (height!2143 (right!43149 (left!42819 (right!43149 xs!286)))))))))

(declare-fun b!5069134 () Bool)

(declare-fun res!2158274 () Bool)

(assert (=> b!5069134 (=> (not res!2158274) (not e!3163121))))

(assert (=> b!5069134 (= res!2158274 (isBalanced!4428 (right!43149 (left!42819 (right!43149 xs!286)))))))

(declare-fun b!5069135 () Bool)

(declare-fun res!2158271 () Bool)

(assert (=> b!5069135 (=> (not res!2158271) (not e!3163121))))

(assert (=> b!5069135 (= res!2158271 (<= (- (height!2143 (left!42819 (left!42819 (right!43149 xs!286)))) (height!2143 (right!43149 (left!42819 (right!43149 xs!286))))) 1))))

(declare-fun b!5069136 () Bool)

(declare-fun res!2158273 () Bool)

(assert (=> b!5069136 (=> (not res!2158273) (not e!3163121))))

(assert (=> b!5069136 (= res!2158273 (isBalanced!4428 (left!42819 (left!42819 (right!43149 xs!286)))))))

(assert (= (and d!1635378 (not res!2158270)) b!5069133))

(assert (= (and b!5069133 res!2158269) b!5069135))

(assert (= (and b!5069135 res!2158271) b!5069136))

(assert (= (and b!5069136 res!2158273) b!5069134))

(assert (= (and b!5069134 res!2158274) b!5069132))

(assert (= (and b!5069132 res!2158272) b!5069131))

(declare-fun m!6113700 () Bool)

(assert (=> b!5069135 m!6113700))

(declare-fun m!6113702 () Bool)

(assert (=> b!5069135 m!6113702))

(declare-fun m!6113704 () Bool)

(assert (=> b!5069134 m!6113704))

(assert (=> b!5069133 m!6113700))

(assert (=> b!5069133 m!6113702))

(declare-fun m!6113706 () Bool)

(assert (=> b!5069136 m!6113706))

(declare-fun m!6113708 () Bool)

(assert (=> b!5069132 m!6113708))

(declare-fun m!6113710 () Bool)

(assert (=> b!5069131 m!6113710))

(assert (=> b!5068805 d!1635378))

(declare-fun d!1635380 () Bool)

(declare-fun res!2158275 () Bool)

(declare-fun e!3163122 () Bool)

(assert (=> d!1635380 (=> (not res!2158275) (not e!3163122))))

(assert (=> d!1635380 (= res!2158275 (= (csize!31362 (right!43149 (right!43149 ys!41))) (+ (size!39080 (left!42819 (right!43149 (right!43149 ys!41)))) (size!39080 (right!43149 (right!43149 (right!43149 ys!41)))))))))

(assert (=> d!1635380 (= (inv!77568 (right!43149 (right!43149 ys!41))) e!3163122)))

(declare-fun b!5069137 () Bool)

(declare-fun res!2158276 () Bool)

(assert (=> b!5069137 (=> (not res!2158276) (not e!3163122))))

(assert (=> b!5069137 (= res!2158276 (and (not (= (left!42819 (right!43149 (right!43149 ys!41))) Empty!15566)) (not (= (right!43149 (right!43149 (right!43149 ys!41))) Empty!15566))))))

(declare-fun b!5069138 () Bool)

(declare-fun res!2158277 () Bool)

(assert (=> b!5069138 (=> (not res!2158277) (not e!3163122))))

(assert (=> b!5069138 (= res!2158277 (= (cheight!15777 (right!43149 (right!43149 ys!41))) (+ (max!0 (height!2143 (left!42819 (right!43149 (right!43149 ys!41)))) (height!2143 (right!43149 (right!43149 (right!43149 ys!41))))) 1)))))

(declare-fun b!5069139 () Bool)

(assert (=> b!5069139 (= e!3163122 (<= 0 (cheight!15777 (right!43149 (right!43149 ys!41)))))))

(assert (= (and d!1635380 res!2158275) b!5069137))

(assert (= (and b!5069137 res!2158276) b!5069138))

(assert (= (and b!5069138 res!2158277) b!5069139))

(declare-fun m!6113712 () Bool)

(assert (=> d!1635380 m!6113712))

(declare-fun m!6113714 () Bool)

(assert (=> d!1635380 m!6113714))

(declare-fun m!6113716 () Bool)

(assert (=> b!5069138 m!6113716))

(declare-fun m!6113718 () Bool)

(assert (=> b!5069138 m!6113718))

(assert (=> b!5069138 m!6113716))

(assert (=> b!5069138 m!6113718))

(declare-fun m!6113720 () Bool)

(assert (=> b!5069138 m!6113720))

(assert (=> b!5068780 d!1635380))

(declare-fun d!1635382 () Bool)

(declare-fun res!2158278 () Bool)

(declare-fun e!3163123 () Bool)

(assert (=> d!1635382 (=> (not res!2158278) (not e!3163123))))

(assert (=> d!1635382 (= res!2158278 (= (csize!31362 (left!42819 (left!42819 ys!41))) (+ (size!39080 (left!42819 (left!42819 (left!42819 ys!41)))) (size!39080 (right!43149 (left!42819 (left!42819 ys!41)))))))))

(assert (=> d!1635382 (= (inv!77568 (left!42819 (left!42819 ys!41))) e!3163123)))

(declare-fun b!5069140 () Bool)

(declare-fun res!2158279 () Bool)

(assert (=> b!5069140 (=> (not res!2158279) (not e!3163123))))

(assert (=> b!5069140 (= res!2158279 (and (not (= (left!42819 (left!42819 (left!42819 ys!41))) Empty!15566)) (not (= (right!43149 (left!42819 (left!42819 ys!41))) Empty!15566))))))

(declare-fun b!5069141 () Bool)

(declare-fun res!2158280 () Bool)

(assert (=> b!5069141 (=> (not res!2158280) (not e!3163123))))

(assert (=> b!5069141 (= res!2158280 (= (cheight!15777 (left!42819 (left!42819 ys!41))) (+ (max!0 (height!2143 (left!42819 (left!42819 (left!42819 ys!41)))) (height!2143 (right!43149 (left!42819 (left!42819 ys!41))))) 1)))))

(declare-fun b!5069142 () Bool)

(assert (=> b!5069142 (= e!3163123 (<= 0 (cheight!15777 (left!42819 (left!42819 ys!41)))))))

(assert (= (and d!1635382 res!2158278) b!5069140))

(assert (= (and b!5069140 res!2158279) b!5069141))

(assert (= (and b!5069141 res!2158280) b!5069142))

(declare-fun m!6113722 () Bool)

(assert (=> d!1635382 m!6113722))

(declare-fun m!6113724 () Bool)

(assert (=> d!1635382 m!6113724))

(assert (=> b!5069141 m!6113600))

(assert (=> b!5069141 m!6113602))

(assert (=> b!5069141 m!6113600))

(assert (=> b!5069141 m!6113602))

(declare-fun m!6113726 () Bool)

(assert (=> b!5069141 m!6113726))

(assert (=> b!5068814 d!1635382))

(declare-fun d!1635384 () Bool)

(declare-fun lt!2089308 () Int)

(assert (=> d!1635384 (>= lt!2089308 0)))

(declare-fun e!3163124 () Int)

(assert (=> d!1635384 (= lt!2089308 e!3163124)))

(declare-fun c!870349 () Bool)

(assert (=> d!1635384 (= c!870349 ((_ is Nil!58436) (list!18992 (xs!18922 ys!41))))))

(assert (=> d!1635384 (= (size!39079 (list!18992 (xs!18922 ys!41))) lt!2089308)))

(declare-fun b!5069143 () Bool)

(assert (=> b!5069143 (= e!3163124 0)))

(declare-fun b!5069144 () Bool)

(assert (=> b!5069144 (= e!3163124 (+ 1 (size!39079 (t!371303 (list!18992 (xs!18922 ys!41))))))))

(assert (= (and d!1635384 c!870349) b!5069143))

(assert (= (and d!1635384 (not c!870349)) b!5069144))

(declare-fun m!6113728 () Bool)

(assert (=> b!5069144 m!6113728))

(assert (=> d!1635116 d!1635384))

(declare-fun d!1635386 () Bool)

(assert (=> d!1635386 (= (list!18992 (xs!18922 ys!41)) (innerList!15654 (xs!18922 ys!41)))))

(assert (=> d!1635116 d!1635386))

(declare-fun d!1635388 () Bool)

(assert (=> d!1635388 (= (isEmpty!31636 (list!18993 (right!43149 xs!286))) ((_ is Nil!58436) (list!18993 (right!43149 xs!286))))))

(assert (=> d!1635092 d!1635388))

(declare-fun b!5069145 () Bool)

(declare-fun e!3163125 () List!58560)

(assert (=> b!5069145 (= e!3163125 Nil!58436)))

(declare-fun b!5069147 () Bool)

(declare-fun e!3163126 () List!58560)

(assert (=> b!5069147 (= e!3163126 (list!18992 (xs!18922 (right!43149 xs!286))))))

(declare-fun b!5069146 () Bool)

(assert (=> b!5069146 (= e!3163125 e!3163126)))

(declare-fun c!870351 () Bool)

(assert (=> b!5069146 (= c!870351 ((_ is Leaf!25854) (right!43149 xs!286)))))

(declare-fun d!1635390 () Bool)

(declare-fun c!870350 () Bool)

(assert (=> d!1635390 (= c!870350 ((_ is Empty!15566) (right!43149 xs!286)))))

(assert (=> d!1635390 (= (list!18993 (right!43149 xs!286)) e!3163125)))

(declare-fun b!5069148 () Bool)

(assert (=> b!5069148 (= e!3163126 (++!12791 (list!18993 (left!42819 (right!43149 xs!286))) (list!18993 (right!43149 (right!43149 xs!286)))))))

(assert (= (and d!1635390 c!870350) b!5069145))

(assert (= (and d!1635390 (not c!870350)) b!5069146))

(assert (= (and b!5069146 c!870351) b!5069147))

(assert (= (and b!5069146 (not c!870351)) b!5069148))

(assert (=> b!5069147 m!6113084))

(assert (=> b!5069148 m!6113678))

(assert (=> b!5069148 m!6113578))

(assert (=> b!5069148 m!6113678))

(assert (=> b!5069148 m!6113578))

(declare-fun m!6113730 () Bool)

(assert (=> b!5069148 m!6113730))

(assert (=> d!1635092 d!1635390))

(assert (=> d!1635092 d!1635362))

(declare-fun d!1635392 () Bool)

(declare-fun res!2158281 () Bool)

(declare-fun e!3163127 () Bool)

(assert (=> d!1635392 (=> (not res!2158281) (not e!3163127))))

(assert (=> d!1635392 (= res!2158281 (<= (size!39079 (list!18992 (xs!18922 (left!42819 (left!42819 ys!41))))) 512))))

(assert (=> d!1635392 (= (inv!77569 (left!42819 (left!42819 ys!41))) e!3163127)))

(declare-fun b!5069149 () Bool)

(declare-fun res!2158282 () Bool)

(assert (=> b!5069149 (=> (not res!2158282) (not e!3163127))))

(assert (=> b!5069149 (= res!2158282 (= (csize!31363 (left!42819 (left!42819 ys!41))) (size!39079 (list!18992 (xs!18922 (left!42819 (left!42819 ys!41)))))))))

(declare-fun b!5069150 () Bool)

(assert (=> b!5069150 (= e!3163127 (and (> (csize!31363 (left!42819 (left!42819 ys!41))) 0) (<= (csize!31363 (left!42819 (left!42819 ys!41))) 512)))))

(assert (= (and d!1635392 res!2158281) b!5069149))

(assert (= (and b!5069149 res!2158282) b!5069150))

(declare-fun m!6113732 () Bool)

(assert (=> d!1635392 m!6113732))

(assert (=> d!1635392 m!6113732))

(declare-fun m!6113734 () Bool)

(assert (=> d!1635392 m!6113734))

(assert (=> b!5069149 m!6113732))

(assert (=> b!5069149 m!6113732))

(assert (=> b!5069149 m!6113734))

(assert (=> b!5068816 d!1635392))

(assert (=> b!5068820 d!1635384))

(assert (=> b!5068820 d!1635386))

(declare-fun d!1635394 () Bool)

(declare-fun lt!2089309 () Bool)

(assert (=> d!1635394 (= lt!2089309 (isEmpty!31636 (list!18993 (right!43149 (left!42819 xs!286)))))))

(assert (=> d!1635394 (= lt!2089309 (= (size!39080 (right!43149 (left!42819 xs!286))) 0))))

(assert (=> d!1635394 (= (isEmpty!31635 (right!43149 (left!42819 xs!286))) lt!2089309)))

(declare-fun bs!1190042 () Bool)

(assert (= bs!1190042 d!1635394))

(assert (=> bs!1190042 m!6113536))

(assert (=> bs!1190042 m!6113536))

(declare-fun m!6113736 () Bool)

(assert (=> bs!1190042 m!6113736))

(assert (=> bs!1190042 m!6113026))

(assert (=> b!5068791 d!1635394))

(declare-fun d!1635396 () Bool)

(assert (=> d!1635396 (= (inv!77566 (xs!18922 (left!42819 (left!42819 xs!286)))) (<= (size!39079 (innerList!15654 (xs!18922 (left!42819 (left!42819 xs!286))))) 2147483647))))

(declare-fun bs!1190043 () Bool)

(assert (= bs!1190043 d!1635396))

(declare-fun m!6113738 () Bool)

(assert (=> bs!1190043 m!6113738))

(assert (=> b!5068842 d!1635396))

(declare-fun d!1635398 () Bool)

(assert (=> d!1635398 (= (max!0 (height!2143 (left!42819 (right!43149 xs!286))) (height!2143 (right!43149 (right!43149 xs!286)))) (ite (< (height!2143 (left!42819 (right!43149 xs!286))) (height!2143 (right!43149 (right!43149 xs!286)))) (height!2143 (right!43149 (right!43149 xs!286))) (height!2143 (left!42819 (right!43149 xs!286)))))))

(assert (=> b!5068798 d!1635398))

(assert (=> b!5068798 d!1635264))

(assert (=> b!5068798 d!1635266))

(declare-fun d!1635400 () Bool)

(declare-fun lt!2089310 () Int)

(assert (=> d!1635400 (>= lt!2089310 0)))

(declare-fun e!3163128 () Int)

(assert (=> d!1635400 (= lt!2089310 e!3163128)))

(declare-fun c!870352 () Bool)

(assert (=> d!1635400 (= c!870352 ((_ is Nil!58436) (list!18992 (xs!18922 (left!42819 xs!286)))))))

(assert (=> d!1635400 (= (size!39079 (list!18992 (xs!18922 (left!42819 xs!286)))) lt!2089310)))

(declare-fun b!5069151 () Bool)

(assert (=> b!5069151 (= e!3163128 0)))

(declare-fun b!5069152 () Bool)

(assert (=> b!5069152 (= e!3163128 (+ 1 (size!39079 (t!371303 (list!18992 (xs!18922 (left!42819 xs!286)))))))))

(assert (= (and d!1635400 c!870352) b!5069151))

(assert (= (and d!1635400 (not c!870352)) b!5069152))

(declare-fun m!6113740 () Bool)

(assert (=> b!5069152 m!6113740))

(assert (=> d!1635070 d!1635400))

(declare-fun d!1635402 () Bool)

(assert (=> d!1635402 (= (list!18992 (xs!18922 (left!42819 xs!286))) (innerList!15654 (xs!18922 (left!42819 xs!286))))))

(assert (=> d!1635070 d!1635402))

(assert (=> b!5068810 d!1635244))

(assert (=> b!5068810 d!1635246))

(declare-fun b!5069153 () Bool)

(declare-fun e!3163130 () Bool)

(assert (=> b!5069153 (= e!3163130 (not (isEmpty!31635 (right!43149 (right!43149 (right!43149 ys!41))))))))

(declare-fun b!5069154 () Bool)

(declare-fun res!2158286 () Bool)

(assert (=> b!5069154 (=> (not res!2158286) (not e!3163130))))

(assert (=> b!5069154 (= res!2158286 (not (isEmpty!31635 (left!42819 (right!43149 (right!43149 ys!41))))))))

(declare-fun d!1635404 () Bool)

(declare-fun res!2158284 () Bool)

(declare-fun e!3163129 () Bool)

(assert (=> d!1635404 (=> res!2158284 e!3163129)))

(assert (=> d!1635404 (= res!2158284 (not ((_ is Node!15566) (right!43149 (right!43149 ys!41)))))))

(assert (=> d!1635404 (= (isBalanced!4428 (right!43149 (right!43149 ys!41))) e!3163129)))

(declare-fun b!5069155 () Bool)

(assert (=> b!5069155 (= e!3163129 e!3163130)))

(declare-fun res!2158283 () Bool)

(assert (=> b!5069155 (=> (not res!2158283) (not e!3163130))))

(assert (=> b!5069155 (= res!2158283 (<= (- 1) (- (height!2143 (left!42819 (right!43149 (right!43149 ys!41)))) (height!2143 (right!43149 (right!43149 (right!43149 ys!41)))))))))

(declare-fun b!5069156 () Bool)

(declare-fun res!2158288 () Bool)

(assert (=> b!5069156 (=> (not res!2158288) (not e!3163130))))

(assert (=> b!5069156 (= res!2158288 (isBalanced!4428 (right!43149 (right!43149 (right!43149 ys!41)))))))

(declare-fun b!5069157 () Bool)

(declare-fun res!2158285 () Bool)

(assert (=> b!5069157 (=> (not res!2158285) (not e!3163130))))

(assert (=> b!5069157 (= res!2158285 (<= (- (height!2143 (left!42819 (right!43149 (right!43149 ys!41)))) (height!2143 (right!43149 (right!43149 (right!43149 ys!41))))) 1))))

(declare-fun b!5069158 () Bool)

(declare-fun res!2158287 () Bool)

(assert (=> b!5069158 (=> (not res!2158287) (not e!3163130))))

(assert (=> b!5069158 (= res!2158287 (isBalanced!4428 (left!42819 (right!43149 (right!43149 ys!41)))))))

(assert (= (and d!1635404 (not res!2158284)) b!5069155))

(assert (= (and b!5069155 res!2158283) b!5069157))

(assert (= (and b!5069157 res!2158285) b!5069158))

(assert (= (and b!5069158 res!2158287) b!5069156))

(assert (= (and b!5069156 res!2158288) b!5069154))

(assert (= (and b!5069154 res!2158286) b!5069153))

(assert (=> b!5069157 m!6113716))

(assert (=> b!5069157 m!6113718))

(declare-fun m!6113742 () Bool)

(assert (=> b!5069156 m!6113742))

(assert (=> b!5069155 m!6113716))

(assert (=> b!5069155 m!6113718))

(declare-fun m!6113744 () Bool)

(assert (=> b!5069158 m!6113744))

(declare-fun m!6113746 () Bool)

(assert (=> b!5069154 m!6113746))

(declare-fun m!6113748 () Bool)

(assert (=> b!5069153 m!6113748))

(assert (=> b!5068765 d!1635404))

(declare-fun d!1635406 () Bool)

(declare-fun res!2158289 () Bool)

(declare-fun e!3163131 () Bool)

(assert (=> d!1635406 (=> (not res!2158289) (not e!3163131))))

(assert (=> d!1635406 (= res!2158289 (<= (size!39079 (list!18992 (xs!18922 (right!43149 (left!42819 ys!41))))) 512))))

(assert (=> d!1635406 (= (inv!77569 (right!43149 (left!42819 ys!41))) e!3163131)))

(declare-fun b!5069159 () Bool)

(declare-fun res!2158290 () Bool)

(assert (=> b!5069159 (=> (not res!2158290) (not e!3163131))))

(assert (=> b!5069159 (= res!2158290 (= (csize!31363 (right!43149 (left!42819 ys!41))) (size!39079 (list!18992 (xs!18922 (right!43149 (left!42819 ys!41)))))))))

(declare-fun b!5069160 () Bool)

(assert (=> b!5069160 (= e!3163131 (and (> (csize!31363 (right!43149 (left!42819 ys!41))) 0) (<= (csize!31363 (right!43149 (left!42819 ys!41))) 512)))))

(assert (= (and d!1635406 res!2158289) b!5069159))

(assert (= (and b!5069159 res!2158290) b!5069160))

(declare-fun m!6113750 () Bool)

(assert (=> d!1635406 m!6113750))

(assert (=> d!1635406 m!6113750))

(declare-fun m!6113752 () Bool)

(assert (=> d!1635406 m!6113752))

(assert (=> b!5069159 m!6113750))

(assert (=> b!5069159 m!6113750))

(assert (=> b!5069159 m!6113752))

(assert (=> b!5068819 d!1635406))

(declare-fun b!5069161 () Bool)

(declare-fun e!3163133 () Bool)

(assert (=> b!5069161 (= e!3163133 (not (isEmpty!31635 (right!43149 (left!42819 (right!43149 ys!41))))))))

(declare-fun b!5069162 () Bool)

(declare-fun res!2158294 () Bool)

(assert (=> b!5069162 (=> (not res!2158294) (not e!3163133))))

(assert (=> b!5069162 (= res!2158294 (not (isEmpty!31635 (left!42819 (left!42819 (right!43149 ys!41))))))))

(declare-fun d!1635408 () Bool)

(declare-fun res!2158292 () Bool)

(declare-fun e!3163132 () Bool)

(assert (=> d!1635408 (=> res!2158292 e!3163132)))

(assert (=> d!1635408 (= res!2158292 (not ((_ is Node!15566) (left!42819 (right!43149 ys!41)))))))

(assert (=> d!1635408 (= (isBalanced!4428 (left!42819 (right!43149 ys!41))) e!3163132)))

(declare-fun b!5069163 () Bool)

(assert (=> b!5069163 (= e!3163132 e!3163133)))

(declare-fun res!2158291 () Bool)

(assert (=> b!5069163 (=> (not res!2158291) (not e!3163133))))

(assert (=> b!5069163 (= res!2158291 (<= (- 1) (- (height!2143 (left!42819 (left!42819 (right!43149 ys!41)))) (height!2143 (right!43149 (left!42819 (right!43149 ys!41)))))))))

(declare-fun b!5069164 () Bool)

(declare-fun res!2158296 () Bool)

(assert (=> b!5069164 (=> (not res!2158296) (not e!3163133))))

(assert (=> b!5069164 (= res!2158296 (isBalanced!4428 (right!43149 (left!42819 (right!43149 ys!41)))))))

(declare-fun b!5069165 () Bool)

(declare-fun res!2158293 () Bool)

(assert (=> b!5069165 (=> (not res!2158293) (not e!3163133))))

(assert (=> b!5069165 (= res!2158293 (<= (- (height!2143 (left!42819 (left!42819 (right!43149 ys!41)))) (height!2143 (right!43149 (left!42819 (right!43149 ys!41))))) 1))))

(declare-fun b!5069166 () Bool)

(declare-fun res!2158295 () Bool)

(assert (=> b!5069166 (=> (not res!2158295) (not e!3163133))))

(assert (=> b!5069166 (= res!2158295 (isBalanced!4428 (left!42819 (left!42819 (right!43149 ys!41)))))))

(assert (= (and d!1635408 (not res!2158292)) b!5069163))

(assert (= (and b!5069163 res!2158291) b!5069165))

(assert (= (and b!5069165 res!2158293) b!5069166))

(assert (= (and b!5069166 res!2158295) b!5069164))

(assert (= (and b!5069164 res!2158296) b!5069162))

(assert (= (and b!5069162 res!2158294) b!5069161))

(assert (=> b!5069165 m!6113594))

(assert (=> b!5069165 m!6113596))

(declare-fun m!6113754 () Bool)

(assert (=> b!5069164 m!6113754))

(assert (=> b!5069163 m!6113594))

(assert (=> b!5069163 m!6113596))

(declare-fun m!6113756 () Bool)

(assert (=> b!5069166 m!6113756))

(declare-fun m!6113758 () Bool)

(assert (=> b!5069162 m!6113758))

(declare-fun m!6113760 () Bool)

(assert (=> b!5069161 m!6113760))

(assert (=> b!5068767 d!1635408))

(declare-fun d!1635410 () Bool)

(assert (=> d!1635410 (= (inv!77566 (xs!18922 (left!42819 (right!43149 xs!286)))) (<= (size!39079 (innerList!15654 (xs!18922 (left!42819 (right!43149 xs!286))))) 2147483647))))

(declare-fun bs!1190044 () Bool)

(assert (= bs!1190044 d!1635410))

(declare-fun m!6113762 () Bool)

(assert (=> bs!1190044 m!6113762))

(assert (=> b!5068865 d!1635410))

(declare-fun d!1635412 () Bool)

(declare-fun res!2158297 () Bool)

(declare-fun e!3163134 () Bool)

(assert (=> d!1635412 (=> (not res!2158297) (not e!3163134))))

(assert (=> d!1635412 (= res!2158297 (= (csize!31362 (left!42819 (right!43149 xs!286))) (+ (size!39080 (left!42819 (left!42819 (right!43149 xs!286)))) (size!39080 (right!43149 (left!42819 (right!43149 xs!286)))))))))

(assert (=> d!1635412 (= (inv!77568 (left!42819 (right!43149 xs!286))) e!3163134)))

(declare-fun b!5069167 () Bool)

(declare-fun res!2158298 () Bool)

(assert (=> b!5069167 (=> (not res!2158298) (not e!3163134))))

(assert (=> b!5069167 (= res!2158298 (and (not (= (left!42819 (left!42819 (right!43149 xs!286))) Empty!15566)) (not (= (right!43149 (left!42819 (right!43149 xs!286))) Empty!15566))))))

(declare-fun b!5069168 () Bool)

(declare-fun res!2158299 () Bool)

(assert (=> b!5069168 (=> (not res!2158299) (not e!3163134))))

(assert (=> b!5069168 (= res!2158299 (= (cheight!15777 (left!42819 (right!43149 xs!286))) (+ (max!0 (height!2143 (left!42819 (left!42819 (right!43149 xs!286)))) (height!2143 (right!43149 (left!42819 (right!43149 xs!286))))) 1)))))

(declare-fun b!5069169 () Bool)

(assert (=> b!5069169 (= e!3163134 (<= 0 (cheight!15777 (left!42819 (right!43149 xs!286)))))))

(assert (= (and d!1635412 res!2158297) b!5069167))

(assert (= (and b!5069167 res!2158298) b!5069168))

(assert (= (and b!5069168 res!2158299) b!5069169))

(declare-fun m!6113764 () Bool)

(assert (=> d!1635412 m!6113764))

(declare-fun m!6113766 () Bool)

(assert (=> d!1635412 m!6113766))

(assert (=> b!5069168 m!6113700))

(assert (=> b!5069168 m!6113702))

(assert (=> b!5069168 m!6113700))

(assert (=> b!5069168 m!6113702))

(declare-fun m!6113768 () Bool)

(assert (=> b!5069168 m!6113768))

(assert (=> b!5068834 d!1635412))

(declare-fun d!1635414 () Bool)

(declare-fun c!870353 () Bool)

(assert (=> d!1635414 (= c!870353 ((_ is Node!15566) (left!42819 (right!43149 (left!42819 xs!286)))))))

(declare-fun e!3163135 () Bool)

(assert (=> d!1635414 (= (inv!77567 (left!42819 (right!43149 (left!42819 xs!286)))) e!3163135)))

(declare-fun b!5069170 () Bool)

(assert (=> b!5069170 (= e!3163135 (inv!77568 (left!42819 (right!43149 (left!42819 xs!286)))))))

(declare-fun b!5069171 () Bool)

(declare-fun e!3163136 () Bool)

(assert (=> b!5069171 (= e!3163135 e!3163136)))

(declare-fun res!2158300 () Bool)

(assert (=> b!5069171 (= res!2158300 (not ((_ is Leaf!25854) (left!42819 (right!43149 (left!42819 xs!286))))))))

(assert (=> b!5069171 (=> res!2158300 e!3163136)))

(declare-fun b!5069172 () Bool)

(assert (=> b!5069172 (= e!3163136 (inv!77569 (left!42819 (right!43149 (left!42819 xs!286)))))))

(assert (= (and d!1635414 c!870353) b!5069170))

(assert (= (and d!1635414 (not c!870353)) b!5069171))

(assert (= (and b!5069171 (not res!2158300)) b!5069172))

(declare-fun m!6113770 () Bool)

(assert (=> b!5069170 m!6113770))

(declare-fun m!6113772 () Bool)

(assert (=> b!5069172 m!6113772))

(assert (=> b!5068844 d!1635414))

(declare-fun d!1635416 () Bool)

(declare-fun c!870354 () Bool)

(assert (=> d!1635416 (= c!870354 ((_ is Node!15566) (right!43149 (right!43149 (left!42819 xs!286)))))))

(declare-fun e!3163137 () Bool)

(assert (=> d!1635416 (= (inv!77567 (right!43149 (right!43149 (left!42819 xs!286)))) e!3163137)))

(declare-fun b!5069173 () Bool)

(assert (=> b!5069173 (= e!3163137 (inv!77568 (right!43149 (right!43149 (left!42819 xs!286)))))))

(declare-fun b!5069174 () Bool)

(declare-fun e!3163138 () Bool)

(assert (=> b!5069174 (= e!3163137 e!3163138)))

(declare-fun res!2158301 () Bool)

(assert (=> b!5069174 (= res!2158301 (not ((_ is Leaf!25854) (right!43149 (right!43149 (left!42819 xs!286))))))))

(assert (=> b!5069174 (=> res!2158301 e!3163138)))

(declare-fun b!5069175 () Bool)

(assert (=> b!5069175 (= e!3163138 (inv!77569 (right!43149 (right!43149 (left!42819 xs!286)))))))

(assert (= (and d!1635416 c!870354) b!5069173))

(assert (= (and d!1635416 (not c!870354)) b!5069174))

(assert (= (and b!5069174 (not res!2158301)) b!5069175))

(declare-fun m!6113774 () Bool)

(assert (=> b!5069173 m!6113774))

(declare-fun m!6113776 () Bool)

(assert (=> b!5069175 m!6113776))

(assert (=> b!5068844 d!1635416))

(declare-fun d!1635418 () Bool)

(declare-fun lt!2089311 () Int)

(assert (=> d!1635418 (= lt!2089311 (size!39079 (list!18993 (left!42819 (right!43149 xs!286)))))))

(assert (=> d!1635418 (= lt!2089311 (ite ((_ is Empty!15566) (left!42819 (right!43149 xs!286))) 0 (ite ((_ is Leaf!25854) (left!42819 (right!43149 xs!286))) (csize!31363 (left!42819 (right!43149 xs!286))) (csize!31362 (left!42819 (right!43149 xs!286))))))))

(assert (=> d!1635418 (= (size!39080 (left!42819 (right!43149 xs!286))) lt!2089311)))

(declare-fun bs!1190045 () Bool)

(assert (= bs!1190045 d!1635418))

(assert (=> bs!1190045 m!6113678))

(assert (=> bs!1190045 m!6113678))

(declare-fun m!6113778 () Bool)

(assert (=> bs!1190045 m!6113778))

(assert (=> d!1635102 d!1635418))

(declare-fun d!1635420 () Bool)

(declare-fun lt!2089312 () Int)

(assert (=> d!1635420 (= lt!2089312 (size!39079 (list!18993 (right!43149 (right!43149 xs!286)))))))

(assert (=> d!1635420 (= lt!2089312 (ite ((_ is Empty!15566) (right!43149 (right!43149 xs!286))) 0 (ite ((_ is Leaf!25854) (right!43149 (right!43149 xs!286))) (csize!31363 (right!43149 (right!43149 xs!286))) (csize!31362 (right!43149 (right!43149 xs!286))))))))

(assert (=> d!1635420 (= (size!39080 (right!43149 (right!43149 xs!286))) lt!2089312)))

(declare-fun bs!1190046 () Bool)

(assert (= bs!1190046 d!1635420))

(assert (=> bs!1190046 m!6113578))

(assert (=> bs!1190046 m!6113578))

(declare-fun m!6113780 () Bool)

(assert (=> bs!1190046 m!6113780))

(assert (=> d!1635102 d!1635420))

(declare-fun d!1635422 () Bool)

(declare-fun lt!2089313 () Int)

(assert (=> d!1635422 (>= lt!2089313 0)))

(declare-fun e!3163139 () Int)

(assert (=> d!1635422 (= lt!2089313 e!3163139)))

(declare-fun c!870355 () Bool)

(assert (=> d!1635422 (= c!870355 ((_ is Nil!58436) (t!371303 (innerList!15654 (xs!18922 ys!41)))))))

(assert (=> d!1635422 (= (size!39079 (t!371303 (innerList!15654 (xs!18922 ys!41)))) lt!2089313)))

(declare-fun b!5069176 () Bool)

(assert (=> b!5069176 (= e!3163139 0)))

(declare-fun b!5069177 () Bool)

(assert (=> b!5069177 (= e!3163139 (+ 1 (size!39079 (t!371303 (t!371303 (innerList!15654 (xs!18922 ys!41)))))))))

(assert (= (and d!1635422 c!870355) b!5069176))

(assert (= (and d!1635422 (not c!870355)) b!5069177))

(declare-fun m!6113782 () Bool)

(assert (=> b!5069177 m!6113782))

(assert (=> b!5068788 d!1635422))

(assert (=> b!5068757 d!1635400))

(assert (=> b!5068757 d!1635402))

(declare-fun d!1635424 () Bool)

(assert (=> d!1635424 (= (inv!77566 (xs!18922 (left!42819 (left!42819 ys!41)))) (<= (size!39079 (innerList!15654 (xs!18922 (left!42819 (left!42819 ys!41))))) 2147483647))))

(declare-fun bs!1190047 () Bool)

(assert (= bs!1190047 d!1635424))

(declare-fun m!6113784 () Bool)

(assert (=> bs!1190047 m!6113784))

(assert (=> b!5068855 d!1635424))

(declare-fun d!1635426 () Bool)

(declare-fun res!2158302 () Bool)

(declare-fun e!3163140 () Bool)

(assert (=> d!1635426 (=> (not res!2158302) (not e!3163140))))

(assert (=> d!1635426 (= res!2158302 (<= (size!39079 (list!18992 (xs!18922 (left!42819 (right!43149 xs!286))))) 512))))

(assert (=> d!1635426 (= (inv!77569 (left!42819 (right!43149 xs!286))) e!3163140)))

(declare-fun b!5069178 () Bool)

(declare-fun res!2158303 () Bool)

(assert (=> b!5069178 (=> (not res!2158303) (not e!3163140))))

(assert (=> b!5069178 (= res!2158303 (= (csize!31363 (left!42819 (right!43149 xs!286))) (size!39079 (list!18992 (xs!18922 (left!42819 (right!43149 xs!286)))))))))

(declare-fun b!5069179 () Bool)

(assert (=> b!5069179 (= e!3163140 (and (> (csize!31363 (left!42819 (right!43149 xs!286))) 0) (<= (csize!31363 (left!42819 (right!43149 xs!286))) 512)))))

(assert (= (and d!1635426 res!2158302) b!5069178))

(assert (= (and b!5069178 res!2158303) b!5069179))

(declare-fun m!6113786 () Bool)

(assert (=> d!1635426 m!6113786))

(assert (=> d!1635426 m!6113786))

(declare-fun m!6113788 () Bool)

(assert (=> d!1635426 m!6113788))

(assert (=> b!5069178 m!6113786))

(assert (=> b!5069178 m!6113786))

(assert (=> b!5069178 m!6113788))

(assert (=> b!5068836 d!1635426))

(declare-fun b!5069180 () Bool)

(declare-fun e!3163141 () Bool)

(declare-fun tp!1415098 () Bool)

(assert (=> b!5069180 (= e!3163141 (and tp_is_empty!37055 tp!1415098))))

(assert (=> b!5068863 (= tp!1415061 e!3163141)))

(assert (= (and b!5068863 ((_ is Cons!58436) (t!371303 (innerList!15654 (xs!18922 (left!42819 xs!286)))))) b!5069180))

(declare-fun b!5069181 () Bool)

(declare-fun e!3163142 () Bool)

(declare-fun tp!1415099 () Bool)

(assert (=> b!5069181 (= e!3163142 (and tp_is_empty!37055 tp!1415099))))

(assert (=> b!5068856 (= tp!1415053 e!3163142)))

(assert (= (and b!5068856 ((_ is Cons!58436) (innerList!15654 (xs!18922 (left!42819 (left!42819 ys!41)))))) b!5069181))

(declare-fun b!5069182 () Bool)

(declare-fun e!3163143 () Bool)

(declare-fun tp!1415100 () Bool)

(assert (=> b!5069182 (= e!3163143 (and tp_is_empty!37055 tp!1415100))))

(assert (=> b!5068860 (= tp!1415058 e!3163143)))

(assert (= (and b!5068860 ((_ is Cons!58436) (t!371303 (t!371303 (innerList!15654 (xs!18922 xs!286)))))) b!5069182))

(declare-fun tp!1415101 () Bool)

(declare-fun tp!1415103 () Bool)

(declare-fun b!5069183 () Bool)

(declare-fun e!3163145 () Bool)

(assert (=> b!5069183 (= e!3163145 (and (inv!77567 (left!42819 (left!42819 (right!43149 (left!42819 ys!41))))) tp!1415101 (inv!77567 (right!43149 (left!42819 (right!43149 (left!42819 ys!41))))) tp!1415103))))

(declare-fun b!5069185 () Bool)

(declare-fun e!3163144 () Bool)

(declare-fun tp!1415102 () Bool)

(assert (=> b!5069185 (= e!3163144 tp!1415102)))

(declare-fun b!5069184 () Bool)

(assert (=> b!5069184 (= e!3163145 (and (inv!77566 (xs!18922 (left!42819 (right!43149 (left!42819 ys!41))))) e!3163144))))

(assert (=> b!5068857 (= tp!1415055 (and (inv!77567 (left!42819 (right!43149 (left!42819 ys!41)))) e!3163145))))

(assert (= (and b!5068857 ((_ is Node!15566) (left!42819 (right!43149 (left!42819 ys!41))))) b!5069183))

(assert (= b!5069184 b!5069185))

(assert (= (and b!5068857 ((_ is Leaf!25854) (left!42819 (right!43149 (left!42819 ys!41))))) b!5069184))

(declare-fun m!6113790 () Bool)

(assert (=> b!5069183 m!6113790))

(declare-fun m!6113792 () Bool)

(assert (=> b!5069183 m!6113792))

(declare-fun m!6113794 () Bool)

(assert (=> b!5069184 m!6113794))

(assert (=> b!5068857 m!6113212))

(declare-fun tp!1415106 () Bool)

(declare-fun b!5069186 () Bool)

(declare-fun tp!1415104 () Bool)

(declare-fun e!3163147 () Bool)

(assert (=> b!5069186 (= e!3163147 (and (inv!77567 (left!42819 (right!43149 (right!43149 (left!42819 ys!41))))) tp!1415104 (inv!77567 (right!43149 (right!43149 (right!43149 (left!42819 ys!41))))) tp!1415106))))

(declare-fun b!5069188 () Bool)

(declare-fun e!3163146 () Bool)

(declare-fun tp!1415105 () Bool)

(assert (=> b!5069188 (= e!3163146 tp!1415105)))

(declare-fun b!5069187 () Bool)

(assert (=> b!5069187 (= e!3163147 (and (inv!77566 (xs!18922 (right!43149 (right!43149 (left!42819 ys!41))))) e!3163146))))

(assert (=> b!5068857 (= tp!1415057 (and (inv!77567 (right!43149 (right!43149 (left!42819 ys!41)))) e!3163147))))

(assert (= (and b!5068857 ((_ is Node!15566) (right!43149 (right!43149 (left!42819 ys!41))))) b!5069186))

(assert (= b!5069187 b!5069188))

(assert (= (and b!5068857 ((_ is Leaf!25854) (right!43149 (right!43149 (left!42819 ys!41))))) b!5069187))

(declare-fun m!6113796 () Bool)

(assert (=> b!5069186 m!6113796))

(declare-fun m!6113798 () Bool)

(assert (=> b!5069186 m!6113798))

(declare-fun m!6113800 () Bool)

(assert (=> b!5069187 m!6113800))

(assert (=> b!5068857 m!6113214))

(declare-fun b!5069189 () Bool)

(declare-fun e!3163148 () Bool)

(declare-fun tp!1415107 () Bool)

(assert (=> b!5069189 (= e!3163148 (and tp_is_empty!37055 tp!1415107))))

(assert (=> b!5068869 (= tp!1415066 e!3163148)))

(assert (= (and b!5068869 ((_ is Cons!58436) (innerList!15654 (xs!18922 (right!43149 (right!43149 xs!286)))))) b!5069189))

(declare-fun b!5069190 () Bool)

(declare-fun e!3163150 () Bool)

(declare-fun tp!1415110 () Bool)

(declare-fun tp!1415108 () Bool)

(assert (=> b!5069190 (= e!3163150 (and (inv!77567 (left!42819 (left!42819 (left!42819 (left!42819 xs!286))))) tp!1415108 (inv!77567 (right!43149 (left!42819 (left!42819 (left!42819 xs!286))))) tp!1415110))))

(declare-fun b!5069192 () Bool)

(declare-fun e!3163149 () Bool)

(declare-fun tp!1415109 () Bool)

(assert (=> b!5069192 (= e!3163149 tp!1415109)))

(declare-fun b!5069191 () Bool)

(assert (=> b!5069191 (= e!3163150 (and (inv!77566 (xs!18922 (left!42819 (left!42819 (left!42819 xs!286))))) e!3163149))))

(assert (=> b!5068841 (= tp!1415039 (and (inv!77567 (left!42819 (left!42819 (left!42819 xs!286)))) e!3163150))))

(assert (= (and b!5068841 ((_ is Node!15566) (left!42819 (left!42819 (left!42819 xs!286))))) b!5069190))

(assert (= b!5069191 b!5069192))

(assert (= (and b!5068841 ((_ is Leaf!25854) (left!42819 (left!42819 (left!42819 xs!286))))) b!5069191))

(declare-fun m!6113802 () Bool)

(assert (=> b!5069190 m!6113802))

(declare-fun m!6113804 () Bool)

(assert (=> b!5069190 m!6113804))

(declare-fun m!6113806 () Bool)

(assert (=> b!5069191 m!6113806))

(assert (=> b!5068841 m!6113182))

(declare-fun b!5069193 () Bool)

(declare-fun tp!1415113 () Bool)

(declare-fun tp!1415111 () Bool)

(declare-fun e!3163152 () Bool)

(assert (=> b!5069193 (= e!3163152 (and (inv!77567 (left!42819 (right!43149 (left!42819 (left!42819 xs!286))))) tp!1415111 (inv!77567 (right!43149 (right!43149 (left!42819 (left!42819 xs!286))))) tp!1415113))))

(declare-fun b!5069195 () Bool)

(declare-fun e!3163151 () Bool)

(declare-fun tp!1415112 () Bool)

(assert (=> b!5069195 (= e!3163151 tp!1415112)))

(declare-fun b!5069194 () Bool)

(assert (=> b!5069194 (= e!3163152 (and (inv!77566 (xs!18922 (right!43149 (left!42819 (left!42819 xs!286))))) e!3163151))))

(assert (=> b!5068841 (= tp!1415041 (and (inv!77567 (right!43149 (left!42819 (left!42819 xs!286)))) e!3163152))))

(assert (= (and b!5068841 ((_ is Node!15566) (right!43149 (left!42819 (left!42819 xs!286))))) b!5069193))

(assert (= b!5069194 b!5069195))

(assert (= (and b!5068841 ((_ is Leaf!25854) (right!43149 (left!42819 (left!42819 xs!286))))) b!5069194))

(declare-fun m!6113808 () Bool)

(assert (=> b!5069193 m!6113808))

(declare-fun m!6113810 () Bool)

(assert (=> b!5069193 m!6113810))

(declare-fun m!6113812 () Bool)

(assert (=> b!5069194 m!6113812))

(assert (=> b!5068841 m!6113184))

(declare-fun tp!1415114 () Bool)

(declare-fun tp!1415116 () Bool)

(declare-fun e!3163154 () Bool)

(declare-fun b!5069196 () Bool)

(assert (=> b!5069196 (= e!3163154 (and (inv!77567 (left!42819 (left!42819 (left!42819 (right!43149 ys!41))))) tp!1415114 (inv!77567 (right!43149 (left!42819 (left!42819 (right!43149 ys!41))))) tp!1415116))))

(declare-fun b!5069198 () Bool)

(declare-fun e!3163153 () Bool)

(declare-fun tp!1415115 () Bool)

(assert (=> b!5069198 (= e!3163153 tp!1415115)))

(declare-fun b!5069197 () Bool)

(assert (=> b!5069197 (= e!3163154 (and (inv!77566 (xs!18922 (left!42819 (left!42819 (right!43149 ys!41))))) e!3163153))))

(assert (=> b!5068848 (= tp!1415046 (and (inv!77567 (left!42819 (left!42819 (right!43149 ys!41)))) e!3163154))))

(assert (= (and b!5068848 ((_ is Node!15566) (left!42819 (left!42819 (right!43149 ys!41))))) b!5069196))

(assert (= b!5069197 b!5069198))

(assert (= (and b!5068848 ((_ is Leaf!25854) (left!42819 (left!42819 (right!43149 ys!41))))) b!5069197))

(declare-fun m!6113814 () Bool)

(assert (=> b!5069196 m!6113814))

(declare-fun m!6113816 () Bool)

(assert (=> b!5069196 m!6113816))

(declare-fun m!6113818 () Bool)

(assert (=> b!5069197 m!6113818))

(assert (=> b!5068848 m!6113194))

(declare-fun b!5069199 () Bool)

(declare-fun tp!1415117 () Bool)

(declare-fun tp!1415119 () Bool)

(declare-fun e!3163156 () Bool)

(assert (=> b!5069199 (= e!3163156 (and (inv!77567 (left!42819 (right!43149 (left!42819 (right!43149 ys!41))))) tp!1415117 (inv!77567 (right!43149 (right!43149 (left!42819 (right!43149 ys!41))))) tp!1415119))))

(declare-fun b!5069201 () Bool)

(declare-fun e!3163155 () Bool)

(declare-fun tp!1415118 () Bool)

(assert (=> b!5069201 (= e!3163155 tp!1415118)))

(declare-fun b!5069200 () Bool)

(assert (=> b!5069200 (= e!3163156 (and (inv!77566 (xs!18922 (right!43149 (left!42819 (right!43149 ys!41))))) e!3163155))))

(assert (=> b!5068848 (= tp!1415048 (and (inv!77567 (right!43149 (left!42819 (right!43149 ys!41)))) e!3163156))))

(assert (= (and b!5068848 ((_ is Node!15566) (right!43149 (left!42819 (right!43149 ys!41))))) b!5069199))

(assert (= b!5069200 b!5069201))

(assert (= (and b!5068848 ((_ is Leaf!25854) (right!43149 (left!42819 (right!43149 ys!41))))) b!5069200))

(declare-fun m!6113820 () Bool)

(assert (=> b!5069199 m!6113820))

(declare-fun m!6113822 () Bool)

(assert (=> b!5069199 m!6113822))

(declare-fun m!6113824 () Bool)

(assert (=> b!5069200 m!6113824))

(assert (=> b!5068848 m!6113196))

(declare-fun b!5069202 () Bool)

(declare-fun e!3163157 () Bool)

(declare-fun tp!1415120 () Bool)

(assert (=> b!5069202 (= e!3163157 (and tp_is_empty!37055 tp!1415120))))

(assert (=> b!5068850 (= tp!1415047 e!3163157)))

(assert (= (and b!5068850 ((_ is Cons!58436) (innerList!15654 (xs!18922 (left!42819 (right!43149 ys!41)))))) b!5069202))

(declare-fun b!5069203 () Bool)

(declare-fun e!3163158 () Bool)

(declare-fun tp!1415121 () Bool)

(assert (=> b!5069203 (= e!3163158 (and tp_is_empty!37055 tp!1415121))))

(assert (=> b!5068859 (= tp!1415056 e!3163158)))

(assert (= (and b!5068859 ((_ is Cons!58436) (innerList!15654 (xs!18922 (right!43149 (left!42819 ys!41)))))) b!5069203))

(declare-fun tp!1415124 () Bool)

(declare-fun b!5069204 () Bool)

(declare-fun tp!1415122 () Bool)

(declare-fun e!3163160 () Bool)

(assert (=> b!5069204 (= e!3163160 (and (inv!77567 (left!42819 (left!42819 (right!43149 (right!43149 ys!41))))) tp!1415122 (inv!77567 (right!43149 (left!42819 (right!43149 (right!43149 ys!41))))) tp!1415124))))

(declare-fun b!5069206 () Bool)

(declare-fun e!3163159 () Bool)

(declare-fun tp!1415123 () Bool)

(assert (=> b!5069206 (= e!3163159 tp!1415123)))

(declare-fun b!5069205 () Bool)

(assert (=> b!5069205 (= e!3163160 (and (inv!77566 (xs!18922 (left!42819 (right!43149 (right!43149 ys!41))))) e!3163159))))

(assert (=> b!5068851 (= tp!1415049 (and (inv!77567 (left!42819 (right!43149 (right!43149 ys!41)))) e!3163160))))

(assert (= (and b!5068851 ((_ is Node!15566) (left!42819 (right!43149 (right!43149 ys!41))))) b!5069204))

(assert (= b!5069205 b!5069206))

(assert (= (and b!5068851 ((_ is Leaf!25854) (left!42819 (right!43149 (right!43149 ys!41))))) b!5069205))

(declare-fun m!6113826 () Bool)

(assert (=> b!5069204 m!6113826))

(declare-fun m!6113828 () Bool)

(assert (=> b!5069204 m!6113828))

(declare-fun m!6113830 () Bool)

(assert (=> b!5069205 m!6113830))

(assert (=> b!5068851 m!6113200))

(declare-fun tp!1415127 () Bool)

(declare-fun tp!1415125 () Bool)

(declare-fun b!5069207 () Bool)

(declare-fun e!3163162 () Bool)

(assert (=> b!5069207 (= e!3163162 (and (inv!77567 (left!42819 (right!43149 (right!43149 (right!43149 ys!41))))) tp!1415125 (inv!77567 (right!43149 (right!43149 (right!43149 (right!43149 ys!41))))) tp!1415127))))

(declare-fun b!5069209 () Bool)

(declare-fun e!3163161 () Bool)

(declare-fun tp!1415126 () Bool)

(assert (=> b!5069209 (= e!3163161 tp!1415126)))

(declare-fun b!5069208 () Bool)

(assert (=> b!5069208 (= e!3163162 (and (inv!77566 (xs!18922 (right!43149 (right!43149 (right!43149 ys!41))))) e!3163161))))

(assert (=> b!5068851 (= tp!1415051 (and (inv!77567 (right!43149 (right!43149 (right!43149 ys!41)))) e!3163162))))

(assert (= (and b!5068851 ((_ is Node!15566) (right!43149 (right!43149 (right!43149 ys!41))))) b!5069207))

(assert (= b!5069208 b!5069209))

(assert (= (and b!5068851 ((_ is Leaf!25854) (right!43149 (right!43149 (right!43149 ys!41))))) b!5069208))

(declare-fun m!6113832 () Bool)

(assert (=> b!5069207 m!6113832))

(declare-fun m!6113834 () Bool)

(assert (=> b!5069207 m!6113834))

(declare-fun m!6113836 () Bool)

(assert (=> b!5069208 m!6113836))

(assert (=> b!5068851 m!6113202))

(declare-fun b!5069210 () Bool)

(declare-fun e!3163163 () Bool)

(declare-fun tp!1415128 () Bool)

(assert (=> b!5069210 (= e!3163163 (and tp_is_empty!37055 tp!1415128))))

(assert (=> b!5068843 (= tp!1415040 e!3163163)))

(assert (= (and b!5068843 ((_ is Cons!58436) (innerList!15654 (xs!18922 (left!42819 (left!42819 xs!286)))))) b!5069210))

(declare-fun b!5069211 () Bool)

(declare-fun e!3163164 () Bool)

(declare-fun tp!1415129 () Bool)

(assert (=> b!5069211 (= e!3163164 (and tp_is_empty!37055 tp!1415129))))

(assert (=> b!5068861 (= tp!1415059 e!3163164)))

(assert (= (and b!5068861 ((_ is Cons!58436) (t!371303 (t!371303 (innerList!15654 (xs!18922 ys!41)))))) b!5069211))

(declare-fun b!5069212 () Bool)

(declare-fun e!3163165 () Bool)

(declare-fun tp!1415130 () Bool)

(assert (=> b!5069212 (= e!3163165 (and tp_is_empty!37055 tp!1415130))))

(assert (=> b!5068847 (= tp!1415045 e!3163165)))

(assert (= (and b!5068847 ((_ is Cons!58436) (t!371303 (innerList!15654 (xs!18922 (left!42819 ys!41)))))) b!5069212))

(declare-fun tp!1415133 () Bool)

(declare-fun tp!1415131 () Bool)

(declare-fun b!5069213 () Bool)

(declare-fun e!3163167 () Bool)

(assert (=> b!5069213 (= e!3163167 (and (inv!77567 (left!42819 (left!42819 (right!43149 (left!42819 xs!286))))) tp!1415131 (inv!77567 (right!43149 (left!42819 (right!43149 (left!42819 xs!286))))) tp!1415133))))

(declare-fun b!5069215 () Bool)

(declare-fun e!3163166 () Bool)

(declare-fun tp!1415132 () Bool)

(assert (=> b!5069215 (= e!3163166 tp!1415132)))

(declare-fun b!5069214 () Bool)

(assert (=> b!5069214 (= e!3163167 (and (inv!77566 (xs!18922 (left!42819 (right!43149 (left!42819 xs!286))))) e!3163166))))

(assert (=> b!5068844 (= tp!1415042 (and (inv!77567 (left!42819 (right!43149 (left!42819 xs!286)))) e!3163167))))

(assert (= (and b!5068844 ((_ is Node!15566) (left!42819 (right!43149 (left!42819 xs!286))))) b!5069213))

(assert (= b!5069214 b!5069215))

(assert (= (and b!5068844 ((_ is Leaf!25854) (left!42819 (right!43149 (left!42819 xs!286))))) b!5069214))

(declare-fun m!6113838 () Bool)

(assert (=> b!5069213 m!6113838))

(declare-fun m!6113840 () Bool)

(assert (=> b!5069213 m!6113840))

(declare-fun m!6113842 () Bool)

(assert (=> b!5069214 m!6113842))

(assert (=> b!5068844 m!6113188))

(declare-fun b!5069216 () Bool)

(declare-fun tp!1415136 () Bool)

(declare-fun tp!1415134 () Bool)

(declare-fun e!3163169 () Bool)

(assert (=> b!5069216 (= e!3163169 (and (inv!77567 (left!42819 (right!43149 (right!43149 (left!42819 xs!286))))) tp!1415134 (inv!77567 (right!43149 (right!43149 (right!43149 (left!42819 xs!286))))) tp!1415136))))

(declare-fun b!5069218 () Bool)

(declare-fun e!3163168 () Bool)

(declare-fun tp!1415135 () Bool)

(assert (=> b!5069218 (= e!3163168 tp!1415135)))

(declare-fun b!5069217 () Bool)

(assert (=> b!5069217 (= e!3163169 (and (inv!77566 (xs!18922 (right!43149 (right!43149 (left!42819 xs!286))))) e!3163168))))

(assert (=> b!5068844 (= tp!1415044 (and (inv!77567 (right!43149 (right!43149 (left!42819 xs!286)))) e!3163169))))

(assert (= (and b!5068844 ((_ is Node!15566) (right!43149 (right!43149 (left!42819 xs!286))))) b!5069216))

(assert (= b!5069217 b!5069218))

(assert (= (and b!5068844 ((_ is Leaf!25854) (right!43149 (right!43149 (left!42819 xs!286))))) b!5069217))

(declare-fun m!6113844 () Bool)

(assert (=> b!5069216 m!6113844))

(declare-fun m!6113846 () Bool)

(assert (=> b!5069216 m!6113846))

(declare-fun m!6113848 () Bool)

(assert (=> b!5069217 m!6113848))

(assert (=> b!5068844 m!6113190))

(declare-fun tp!1415139 () Bool)

(declare-fun e!3163171 () Bool)

(declare-fun b!5069219 () Bool)

(declare-fun tp!1415137 () Bool)

(assert (=> b!5069219 (= e!3163171 (and (inv!77567 (left!42819 (left!42819 (left!42819 (right!43149 xs!286))))) tp!1415137 (inv!77567 (right!43149 (left!42819 (left!42819 (right!43149 xs!286))))) tp!1415139))))

(declare-fun b!5069221 () Bool)

(declare-fun e!3163170 () Bool)

(declare-fun tp!1415138 () Bool)

(assert (=> b!5069221 (= e!3163170 tp!1415138)))

(declare-fun b!5069220 () Bool)

(assert (=> b!5069220 (= e!3163171 (and (inv!77566 (xs!18922 (left!42819 (left!42819 (right!43149 xs!286))))) e!3163170))))

(assert (=> b!5068864 (= tp!1415062 (and (inv!77567 (left!42819 (left!42819 (right!43149 xs!286)))) e!3163171))))

(assert (= (and b!5068864 ((_ is Node!15566) (left!42819 (left!42819 (right!43149 xs!286))))) b!5069219))

(assert (= b!5069220 b!5069221))

(assert (= (and b!5068864 ((_ is Leaf!25854) (left!42819 (left!42819 (right!43149 xs!286))))) b!5069220))

(declare-fun m!6113850 () Bool)

(assert (=> b!5069219 m!6113850))

(declare-fun m!6113852 () Bool)

(assert (=> b!5069219 m!6113852))

(declare-fun m!6113854 () Bool)

(assert (=> b!5069220 m!6113854))

(assert (=> b!5068864 m!6113218))

(declare-fun tp!1415142 () Bool)

(declare-fun e!3163173 () Bool)

(declare-fun b!5069222 () Bool)

(declare-fun tp!1415140 () Bool)

(assert (=> b!5069222 (= e!3163173 (and (inv!77567 (left!42819 (right!43149 (left!42819 (right!43149 xs!286))))) tp!1415140 (inv!77567 (right!43149 (right!43149 (left!42819 (right!43149 xs!286))))) tp!1415142))))

(declare-fun b!5069224 () Bool)

(declare-fun e!3163172 () Bool)

(declare-fun tp!1415141 () Bool)

(assert (=> b!5069224 (= e!3163172 tp!1415141)))

(declare-fun b!5069223 () Bool)

(assert (=> b!5069223 (= e!3163173 (and (inv!77566 (xs!18922 (right!43149 (left!42819 (right!43149 xs!286))))) e!3163172))))

(assert (=> b!5068864 (= tp!1415064 (and (inv!77567 (right!43149 (left!42819 (right!43149 xs!286)))) e!3163173))))

(assert (= (and b!5068864 ((_ is Node!15566) (right!43149 (left!42819 (right!43149 xs!286))))) b!5069222))

(assert (= b!5069223 b!5069224))

(assert (= (and b!5068864 ((_ is Leaf!25854) (right!43149 (left!42819 (right!43149 xs!286))))) b!5069223))

(declare-fun m!6113856 () Bool)

(assert (=> b!5069222 m!6113856))

(declare-fun m!6113858 () Bool)

(assert (=> b!5069222 m!6113858))

(declare-fun m!6113860 () Bool)

(assert (=> b!5069223 m!6113860))

(assert (=> b!5068864 m!6113220))

(declare-fun b!5069225 () Bool)

(declare-fun e!3163174 () Bool)

(declare-fun tp!1415143 () Bool)

(assert (=> b!5069225 (= e!3163174 (and tp_is_empty!37055 tp!1415143))))

(assert (=> b!5068846 (= tp!1415043 e!3163174)))

(assert (= (and b!5068846 ((_ is Cons!58436) (innerList!15654 (xs!18922 (right!43149 (left!42819 xs!286)))))) b!5069225))

(declare-fun b!5069226 () Bool)

(declare-fun e!3163175 () Bool)

(declare-fun tp!1415144 () Bool)

(assert (=> b!5069226 (= e!3163175 (and tp_is_empty!37055 tp!1415144))))

(assert (=> b!5068866 (= tp!1415063 e!3163175)))

(assert (= (and b!5068866 ((_ is Cons!58436) (innerList!15654 (xs!18922 (left!42819 (right!43149 xs!286)))))) b!5069226))

(declare-fun b!5069227 () Bool)

(declare-fun e!3163176 () Bool)

(declare-fun tp!1415145 () Bool)

(assert (=> b!5069227 (= e!3163176 (and tp_is_empty!37055 tp!1415145))))

(assert (=> b!5068862 (= tp!1415060 e!3163176)))

(assert (= (and b!5068862 ((_ is Cons!58436) (t!371303 (innerList!15654 (xs!18922 (right!43149 ys!41)))))) b!5069227))

(declare-fun b!5069228 () Bool)

(declare-fun e!3163177 () Bool)

(declare-fun tp!1415146 () Bool)

(assert (=> b!5069228 (= e!3163177 (and tp_is_empty!37055 tp!1415146))))

(assert (=> b!5068840 (= tp!1415038 e!3163177)))

(assert (= (and b!5068840 ((_ is Cons!58436) (t!371303 (innerList!15654 (xs!18922 (right!43149 xs!286)))))) b!5069228))

(declare-fun b!5069229 () Bool)

(declare-fun e!3163178 () Bool)

(declare-fun tp!1415147 () Bool)

(assert (=> b!5069229 (= e!3163178 (and tp_is_empty!37055 tp!1415147))))

(assert (=> b!5068853 (= tp!1415050 e!3163178)))

(assert (= (and b!5068853 ((_ is Cons!58436) (innerList!15654 (xs!18922 (right!43149 (right!43149 ys!41)))))) b!5069229))

(declare-fun tp!1415150 () Bool)

(declare-fun e!3163180 () Bool)

(declare-fun tp!1415148 () Bool)

(declare-fun b!5069230 () Bool)

(assert (=> b!5069230 (= e!3163180 (and (inv!77567 (left!42819 (left!42819 (right!43149 (right!43149 xs!286))))) tp!1415148 (inv!77567 (right!43149 (left!42819 (right!43149 (right!43149 xs!286))))) tp!1415150))))

(declare-fun b!5069232 () Bool)

(declare-fun e!3163179 () Bool)

(declare-fun tp!1415149 () Bool)

(assert (=> b!5069232 (= e!3163179 tp!1415149)))

(declare-fun b!5069231 () Bool)

(assert (=> b!5069231 (= e!3163180 (and (inv!77566 (xs!18922 (left!42819 (right!43149 (right!43149 xs!286))))) e!3163179))))

(assert (=> b!5068867 (= tp!1415065 (and (inv!77567 (left!42819 (right!43149 (right!43149 xs!286)))) e!3163180))))

(assert (= (and b!5068867 ((_ is Node!15566) (left!42819 (right!43149 (right!43149 xs!286))))) b!5069230))

(assert (= b!5069231 b!5069232))

(assert (= (and b!5068867 ((_ is Leaf!25854) (left!42819 (right!43149 (right!43149 xs!286))))) b!5069231))

(declare-fun m!6113862 () Bool)

(assert (=> b!5069230 m!6113862))

(declare-fun m!6113864 () Bool)

(assert (=> b!5069230 m!6113864))

(declare-fun m!6113866 () Bool)

(assert (=> b!5069231 m!6113866))

(assert (=> b!5068867 m!6113224))

(declare-fun e!3163182 () Bool)

(declare-fun b!5069233 () Bool)

(declare-fun tp!1415153 () Bool)

(declare-fun tp!1415151 () Bool)

(assert (=> b!5069233 (= e!3163182 (and (inv!77567 (left!42819 (right!43149 (right!43149 (right!43149 xs!286))))) tp!1415151 (inv!77567 (right!43149 (right!43149 (right!43149 (right!43149 xs!286))))) tp!1415153))))

(declare-fun b!5069235 () Bool)

(declare-fun e!3163181 () Bool)

(declare-fun tp!1415152 () Bool)

(assert (=> b!5069235 (= e!3163181 tp!1415152)))

(declare-fun b!5069234 () Bool)

(assert (=> b!5069234 (= e!3163182 (and (inv!77566 (xs!18922 (right!43149 (right!43149 (right!43149 xs!286))))) e!3163181))))

(assert (=> b!5068867 (= tp!1415067 (and (inv!77567 (right!43149 (right!43149 (right!43149 xs!286)))) e!3163182))))

(assert (= (and b!5068867 ((_ is Node!15566) (right!43149 (right!43149 (right!43149 xs!286))))) b!5069233))

(assert (= b!5069234 b!5069235))

(assert (= (and b!5068867 ((_ is Leaf!25854) (right!43149 (right!43149 (right!43149 xs!286))))) b!5069234))

(declare-fun m!6113868 () Bool)

(assert (=> b!5069233 m!6113868))

(declare-fun m!6113870 () Bool)

(assert (=> b!5069233 m!6113870))

(declare-fun m!6113872 () Bool)

(assert (=> b!5069234 m!6113872))

(assert (=> b!5068867 m!6113226))

(declare-fun tp!1415156 () Bool)

(declare-fun tp!1415154 () Bool)

(declare-fun e!3163184 () Bool)

(declare-fun b!5069236 () Bool)

(assert (=> b!5069236 (= e!3163184 (and (inv!77567 (left!42819 (left!42819 (left!42819 (left!42819 ys!41))))) tp!1415154 (inv!77567 (right!43149 (left!42819 (left!42819 (left!42819 ys!41))))) tp!1415156))))

(declare-fun b!5069238 () Bool)

(declare-fun e!3163183 () Bool)

(declare-fun tp!1415155 () Bool)

(assert (=> b!5069238 (= e!3163183 tp!1415155)))

(declare-fun b!5069237 () Bool)

(assert (=> b!5069237 (= e!3163184 (and (inv!77566 (xs!18922 (left!42819 (left!42819 (left!42819 ys!41))))) e!3163183))))

(assert (=> b!5068854 (= tp!1415052 (and (inv!77567 (left!42819 (left!42819 (left!42819 ys!41)))) e!3163184))))

(assert (= (and b!5068854 ((_ is Node!15566) (left!42819 (left!42819 (left!42819 ys!41))))) b!5069236))

(assert (= b!5069237 b!5069238))

(assert (= (and b!5068854 ((_ is Leaf!25854) (left!42819 (left!42819 (left!42819 ys!41))))) b!5069237))

(declare-fun m!6113874 () Bool)

(assert (=> b!5069236 m!6113874))

(declare-fun m!6113876 () Bool)

(assert (=> b!5069236 m!6113876))

(declare-fun m!6113878 () Bool)

(assert (=> b!5069237 m!6113878))

(assert (=> b!5068854 m!6113206))

(declare-fun b!5069239 () Bool)

(declare-fun tp!1415159 () Bool)

(declare-fun tp!1415157 () Bool)

(declare-fun e!3163186 () Bool)

(assert (=> b!5069239 (= e!3163186 (and (inv!77567 (left!42819 (right!43149 (left!42819 (left!42819 ys!41))))) tp!1415157 (inv!77567 (right!43149 (right!43149 (left!42819 (left!42819 ys!41))))) tp!1415159))))

(declare-fun b!5069241 () Bool)

(declare-fun e!3163185 () Bool)

(declare-fun tp!1415158 () Bool)

(assert (=> b!5069241 (= e!3163185 tp!1415158)))

(declare-fun b!5069240 () Bool)

(assert (=> b!5069240 (= e!3163186 (and (inv!77566 (xs!18922 (right!43149 (left!42819 (left!42819 ys!41))))) e!3163185))))

(assert (=> b!5068854 (= tp!1415054 (and (inv!77567 (right!43149 (left!42819 (left!42819 ys!41)))) e!3163186))))

(assert (= (and b!5068854 ((_ is Node!15566) (right!43149 (left!42819 (left!42819 ys!41))))) b!5069239))

(assert (= b!5069240 b!5069241))

(assert (= (and b!5068854 ((_ is Leaf!25854) (right!43149 (left!42819 (left!42819 ys!41))))) b!5069240))

(declare-fun m!6113880 () Bool)

(assert (=> b!5069239 m!6113880))

(declare-fun m!6113882 () Bool)

(assert (=> b!5069239 m!6113882))

(declare-fun m!6113884 () Bool)

(assert (=> b!5069240 m!6113884))

(assert (=> b!5068854 m!6113208))

(check-sat (not b!5069112) (not b!5069233) (not b!5069170) (not b!5069014) (not d!1635216) tp_is_empty!37055 (not b!5069178) (not b!5069200) (not b!5069099) (not b!5069165) (not b!5069033) (not b!5069213) (not d!1635270) (not b!5069202) (not b!5069159) (not d!1635418) (not d!1635356) (not b!5069051) (not b!5069034) (not b!5069122) (not d!1635234) (not b!5069224) (not b!5069182) (not b!5069164) (not b!5069023) (not b!5069108) (not b!5069166) (not b!5069194) (not b!5069128) (not b!5068841) (not b!5069186) (not d!1635262) (not b!5069105) (not b!5069020) (not d!1635258) (not d!1635268) (not b!5069211) (not b!5069199) (not b!5069197) (not b!5069050) (not b!5068997) (not b!5069053) (not b!5069188) (not d!1635410) (not b!5069155) (not b!5069061) (not b!5069055) (not b!5069239) (not b!5069136) (not b!5068854) (not b!5068844) (not b!5069019) (not b!5069227) (not b!5069100) (not b!5069077) (not d!1635368) (not b!5069212) (not b!5069078) (not b!5069131) (not b!5069185) (not b!5069203) (not b!5069148) (not b!5069097) (not b!5069125) (not b!5069056) (not b!5069223) (not b!5069115) (not d!1635282) (not d!1635346) (not b!5069187) (not b!5069184) (not b!5069025) (not d!1635420) (not b!5069130) (not d!1635352) (not b!5069161) (not d!1635308) (not b!5069144) (not b!5069232) (not b!5068857) (not b!5068998) (not b!5069120) (not d!1635232) (not b!5069196) (not b!5069016) (not d!1635350) (not b!5069027) (not b!5069083) (not b!5069236) (not b!5069198) (not d!1635394) (not d!1635396) (not b!5069181) (not d!1635272) (not b!5069046) (not b!5069175) (not b!5069093) (not d!1635426) (not b!5069133) (not d!1635314) (not b!5069042) (not b!5069030) (not b!5069103) (not b!5069158) (not b!5069210) (not b!5068851) (not b!5069209) (not b!5069225) (not b!5069009) (not b!5069163) (not b!5069192) (not b!5069141) (not b!5069138) (not b!5069007) (not b!5069106) (not b!5069222) (not b!5069109) (not b!5069215) (not b!5069134) (not b!5069152) (not d!1635324) (not b!5069079) (not b!5069231) (not b!5069085) (not b!5069230) (not b!5069029) (not d!1635392) (not d!1635312) (not b!5069044) (not b!5069041) (not b!5069052) (not d!1635348) (not b!5069217) (not d!1635294) (not d!1635242) (not b!5068867) (not b!5069110) (not b!5069214) (not b!5069240) (not b!5069208) (not b!5069035) (not b!5069038) (not b!5069149) (not b!5069156) (not b!5069157) (not b!5069189) (not b!5069241) (not b!5069229) (not b!5069204) (not d!1635362) (not b!5069220) (not d!1635380) (not b!5069001) (not b!5069127) (not b!5069086) (not b!5069147) (not b!5069000) (not b!5069080) (not b!5069124) (not d!1635342) (not d!1635424) (not b!5068864) (not b!5069219) (not d!1635354) (not b!5069119) (not b!5069117) (not b!5069092) (not b!5069153) (not b!5069032) (not b!5069096) (not d!1635330) (not b!5069183) (not b!5068848) (not b!5069195) (not d!1635322) (not b!5069172) (not b!5069221) (not b!5069234) (not b!5069191) (not b!5069107) (not d!1635334) (not b!5069058) (not b!5069177) (not b!5069082) (not b!5069207) (not d!1635406) (not b!5069238) (not b!5069126) (not b!5069180) (not b!5069228) (not b!5069235) (not b!5069088) (not b!5069116) (not d!1635228) (not b!5069173) (not b!5069017) (not b!5069003) (not b!5069048) (not d!1635412) (not b!5069031) (not b!5069162) (not d!1635344) (not b!5069075) (not b!5069072) (not b!5069039) (not b!5069226) (not b!5069135) (not b!5069201) (not b!5069012) (not b!5069129) (not b!5069004) (not b!5069132) (not d!1635256) (not b!5069049) (not d!1635236) (not d!1635382) (not b!5069193) (not b!5069216) (not b!5069206) (not b!5069237) (not b!5069218) (not b!5069091) (not b!5069073) (not d!1635332) (not b!5069205) (not b!5069102) (not b!5069059) (not b!5069168) (not b!5069154) (not b!5069081) (not b!5069190))
(check-sat)
