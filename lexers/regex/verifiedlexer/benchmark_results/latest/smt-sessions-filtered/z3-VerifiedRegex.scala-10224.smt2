; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!533566 () Bool)

(assert start!533566)

(declare-fun b!5044067 () Bool)

(declare-fun e!3149775 () Bool)

(declare-fun i!618 () Int)

(declare-datatypes ((T!104250 0))(
  ( (T!104251 (val!23524 Int)) )
))
(declare-datatypes ((List!58434 0))(
  ( (Nil!58310) (Cons!58310 (h!64758 T!104250) (t!371021 List!58434)) )
))
(declare-datatypes ((IArray!31105 0))(
  ( (IArray!31106 (innerList!15610 List!58434)) )
))
(declare-datatypes ((Conc!15522 0))(
  ( (Node!15522 (left!42712 Conc!15522) (right!43042 Conc!15522) (csize!31274 Int) (cheight!15733 Int)) (Leaf!25747 (xs!18848 IArray!31105) (csize!31275 Int)) (Empty!15522) )
))
(declare-fun t!4198 () Conc!15522)

(declare-fun size!38924 (List!58434) Int)

(declare-fun list!18929 (Conc!15522) List!58434)

(assert (=> b!5044067 (= e!3149775 (> i!618 (+ (size!38924 (list!18929 (left!42712 t!4198))) (size!38924 (list!18929 (right!43042 t!4198))))))))

(declare-fun res!2148745 () Bool)

(assert (=> start!533566 (=> (not res!2148745) (not e!3149775))))

(declare-fun isBalanced!4384 (Conc!15522) Bool)

(assert (=> start!533566 (= res!2148745 (isBalanced!4384 t!4198))))

(assert (=> start!533566 e!3149775))

(declare-fun e!3149776 () Bool)

(declare-fun inv!77205 (Conc!15522) Bool)

(assert (=> start!533566 (and (inv!77205 t!4198) e!3149776)))

(assert (=> start!533566 true))

(declare-fun b!5044068 () Bool)

(declare-fun res!2148744 () Bool)

(assert (=> b!5044068 (=> (not res!2148744) (not e!3149775))))

(assert (=> b!5044068 (= res!2148744 (<= 0 i!618))))

(declare-fun b!5044069 () Bool)

(declare-fun res!2148742 () Bool)

(assert (=> b!5044069 (=> (not res!2148742) (not e!3149775))))

(get-info :version)

(assert (=> b!5044069 (= res!2148742 (and (not ((_ is Empty!15522) t!4198)) (not ((_ is Leaf!25747) t!4198))))))

(declare-fun b!5044070 () Bool)

(declare-fun tp!1411481 () Bool)

(declare-fun tp!1411479 () Bool)

(assert (=> b!5044070 (= e!3149776 (and (inv!77205 (left!42712 t!4198)) tp!1411479 (inv!77205 (right!43042 t!4198)) tp!1411481))))

(declare-fun b!5044071 () Bool)

(declare-fun res!2148743 () Bool)

(assert (=> b!5044071 (=> (not res!2148743) (not e!3149775))))

(declare-fun size!38925 (Conc!15522) Int)

(assert (=> b!5044071 (= res!2148743 (<= i!618 (size!38925 t!4198)))))

(declare-fun b!5044072 () Bool)

(declare-fun e!3149774 () Bool)

(declare-fun tp!1411480 () Bool)

(assert (=> b!5044072 (= e!3149774 tp!1411480)))

(declare-fun b!5044073 () Bool)

(declare-fun inv!77206 (IArray!31105) Bool)

(assert (=> b!5044073 (= e!3149776 (and (inv!77206 (xs!18848 t!4198)) e!3149774))))

(assert (= (and start!533566 res!2148745) b!5044068))

(assert (= (and b!5044068 res!2148744) b!5044071))

(assert (= (and b!5044071 res!2148743) b!5044069))

(assert (= (and b!5044069 res!2148742) b!5044067))

(assert (= (and start!533566 ((_ is Node!15522) t!4198)) b!5044070))

(assert (= b!5044073 b!5044072))

(assert (= (and start!533566 ((_ is Leaf!25747) t!4198)) b!5044073))

(declare-fun m!6078966 () Bool)

(assert (=> b!5044067 m!6078966))

(assert (=> b!5044067 m!6078966))

(declare-fun m!6078968 () Bool)

(assert (=> b!5044067 m!6078968))

(declare-fun m!6078970 () Bool)

(assert (=> b!5044067 m!6078970))

(assert (=> b!5044067 m!6078970))

(declare-fun m!6078972 () Bool)

(assert (=> b!5044067 m!6078972))

(declare-fun m!6078974 () Bool)

(assert (=> b!5044070 m!6078974))

(declare-fun m!6078976 () Bool)

(assert (=> b!5044070 m!6078976))

(declare-fun m!6078978 () Bool)

(assert (=> b!5044071 m!6078978))

(declare-fun m!6078980 () Bool)

(assert (=> start!533566 m!6078980))

(declare-fun m!6078982 () Bool)

(assert (=> start!533566 m!6078982))

(declare-fun m!6078984 () Bool)

(assert (=> b!5044073 m!6078984))

(check-sat (not b!5044073) (not start!533566) (not b!5044070) (not b!5044067) (not b!5044072) (not b!5044071))
(check-sat)
(get-model)

(declare-fun d!1623291 () Bool)

(declare-fun lt!2084891 () Int)

(assert (=> d!1623291 (>= lt!2084891 0)))

(declare-fun e!3149782 () Int)

(assert (=> d!1623291 (= lt!2084891 e!3149782)))

(declare-fun c!864527 () Bool)

(assert (=> d!1623291 (= c!864527 ((_ is Nil!58310) (list!18929 (left!42712 t!4198))))))

(assert (=> d!1623291 (= (size!38924 (list!18929 (left!42712 t!4198))) lt!2084891)))

(declare-fun b!5044084 () Bool)

(assert (=> b!5044084 (= e!3149782 0)))

(declare-fun b!5044085 () Bool)

(assert (=> b!5044085 (= e!3149782 (+ 1 (size!38924 (t!371021 (list!18929 (left!42712 t!4198))))))))

(assert (= (and d!1623291 c!864527) b!5044084))

(assert (= (and d!1623291 (not c!864527)) b!5044085))

(declare-fun m!6078988 () Bool)

(assert (=> b!5044085 m!6078988))

(assert (=> b!5044067 d!1623291))

(declare-fun b!5044111 () Bool)

(declare-fun e!3149795 () List!58434)

(declare-fun ++!12734 (List!58434 List!58434) List!58434)

(assert (=> b!5044111 (= e!3149795 (++!12734 (list!18929 (left!42712 (left!42712 t!4198))) (list!18929 (right!43042 (left!42712 t!4198)))))))

(declare-fun b!5044109 () Bool)

(declare-fun e!3149794 () List!58434)

(assert (=> b!5044109 (= e!3149794 e!3149795)))

(declare-fun c!864540 () Bool)

(assert (=> b!5044109 (= c!864540 ((_ is Leaf!25747) (left!42712 t!4198)))))

(declare-fun b!5044108 () Bool)

(assert (=> b!5044108 (= e!3149794 Nil!58310)))

(declare-fun d!1623295 () Bool)

(declare-fun c!864539 () Bool)

(assert (=> d!1623295 (= c!864539 ((_ is Empty!15522) (left!42712 t!4198)))))

(assert (=> d!1623295 (= (list!18929 (left!42712 t!4198)) e!3149794)))

(declare-fun b!5044110 () Bool)

(declare-fun list!18931 (IArray!31105) List!58434)

(assert (=> b!5044110 (= e!3149795 (list!18931 (xs!18848 (left!42712 t!4198))))))

(assert (= (and d!1623295 c!864539) b!5044108))

(assert (= (and d!1623295 (not c!864539)) b!5044109))

(assert (= (and b!5044109 c!864540) b!5044110))

(assert (= (and b!5044109 (not c!864540)) b!5044111))

(declare-fun m!6079000 () Bool)

(assert (=> b!5044111 m!6079000))

(declare-fun m!6079002 () Bool)

(assert (=> b!5044111 m!6079002))

(assert (=> b!5044111 m!6079000))

(assert (=> b!5044111 m!6079002))

(declare-fun m!6079008 () Bool)

(assert (=> b!5044111 m!6079008))

(declare-fun m!6079012 () Bool)

(assert (=> b!5044110 m!6079012))

(assert (=> b!5044067 d!1623295))

(declare-fun d!1623301 () Bool)

(declare-fun lt!2084893 () Int)

(assert (=> d!1623301 (>= lt!2084893 0)))

(declare-fun e!3149798 () Int)

(assert (=> d!1623301 (= lt!2084893 e!3149798)))

(declare-fun c!864543 () Bool)

(assert (=> d!1623301 (= c!864543 ((_ is Nil!58310) (list!18929 (right!43042 t!4198))))))

(assert (=> d!1623301 (= (size!38924 (list!18929 (right!43042 t!4198))) lt!2084893)))

(declare-fun b!5044116 () Bool)

(assert (=> b!5044116 (= e!3149798 0)))

(declare-fun b!5044117 () Bool)

(assert (=> b!5044117 (= e!3149798 (+ 1 (size!38924 (t!371021 (list!18929 (right!43042 t!4198))))))))

(assert (= (and d!1623301 c!864543) b!5044116))

(assert (= (and d!1623301 (not c!864543)) b!5044117))

(declare-fun m!6079016 () Bool)

(assert (=> b!5044117 m!6079016))

(assert (=> b!5044067 d!1623301))

(declare-fun b!5044121 () Bool)

(declare-fun e!3149800 () List!58434)

(assert (=> b!5044121 (= e!3149800 (++!12734 (list!18929 (left!42712 (right!43042 t!4198))) (list!18929 (right!43042 (right!43042 t!4198)))))))

(declare-fun b!5044119 () Bool)

(declare-fun e!3149799 () List!58434)

(assert (=> b!5044119 (= e!3149799 e!3149800)))

(declare-fun c!864545 () Bool)

(assert (=> b!5044119 (= c!864545 ((_ is Leaf!25747) (right!43042 t!4198)))))

(declare-fun b!5044118 () Bool)

(assert (=> b!5044118 (= e!3149799 Nil!58310)))

(declare-fun d!1623305 () Bool)

(declare-fun c!864544 () Bool)

(assert (=> d!1623305 (= c!864544 ((_ is Empty!15522) (right!43042 t!4198)))))

(assert (=> d!1623305 (= (list!18929 (right!43042 t!4198)) e!3149799)))

(declare-fun b!5044120 () Bool)

(assert (=> b!5044120 (= e!3149800 (list!18931 (xs!18848 (right!43042 t!4198))))))

(assert (= (and d!1623305 c!864544) b!5044118))

(assert (= (and d!1623305 (not c!864544)) b!5044119))

(assert (= (and b!5044119 c!864545) b!5044120))

(assert (= (and b!5044119 (not c!864545)) b!5044121))

(declare-fun m!6079018 () Bool)

(assert (=> b!5044121 m!6079018))

(declare-fun m!6079020 () Bool)

(assert (=> b!5044121 m!6079020))

(assert (=> b!5044121 m!6079018))

(assert (=> b!5044121 m!6079020))

(declare-fun m!6079022 () Bool)

(assert (=> b!5044121 m!6079022))

(declare-fun m!6079024 () Bool)

(assert (=> b!5044120 m!6079024))

(assert (=> b!5044067 d!1623305))

(declare-fun b!5044152 () Bool)

(declare-fun res!2148778 () Bool)

(declare-fun e!3149812 () Bool)

(assert (=> b!5044152 (=> (not res!2148778) (not e!3149812))))

(declare-fun height!2100 (Conc!15522) Int)

(assert (=> b!5044152 (= res!2148778 (<= (- (height!2100 (left!42712 t!4198)) (height!2100 (right!43042 t!4198))) 1))))

(declare-fun d!1623307 () Bool)

(declare-fun res!2148776 () Bool)

(declare-fun e!3149811 () Bool)

(assert (=> d!1623307 (=> res!2148776 e!3149811)))

(assert (=> d!1623307 (= res!2148776 (not ((_ is Node!15522) t!4198)))))

(assert (=> d!1623307 (= (isBalanced!4384 t!4198) e!3149811)))

(declare-fun b!5044153 () Bool)

(declare-fun isEmpty!31550 (Conc!15522) Bool)

(assert (=> b!5044153 (= e!3149812 (not (isEmpty!31550 (right!43042 t!4198))))))

(declare-fun b!5044154 () Bool)

(declare-fun res!2148780 () Bool)

(assert (=> b!5044154 (=> (not res!2148780) (not e!3149812))))

(assert (=> b!5044154 (= res!2148780 (not (isEmpty!31550 (left!42712 t!4198))))))

(declare-fun b!5044155 () Bool)

(declare-fun res!2148781 () Bool)

(assert (=> b!5044155 (=> (not res!2148781) (not e!3149812))))

(assert (=> b!5044155 (= res!2148781 (isBalanced!4384 (left!42712 t!4198)))))

(declare-fun b!5044156 () Bool)

(declare-fun res!2148779 () Bool)

(assert (=> b!5044156 (=> (not res!2148779) (not e!3149812))))

(assert (=> b!5044156 (= res!2148779 (isBalanced!4384 (right!43042 t!4198)))))

(declare-fun b!5044157 () Bool)

(assert (=> b!5044157 (= e!3149811 e!3149812)))

(declare-fun res!2148777 () Bool)

(assert (=> b!5044157 (=> (not res!2148777) (not e!3149812))))

(assert (=> b!5044157 (= res!2148777 (<= (- 1) (- (height!2100 (left!42712 t!4198)) (height!2100 (right!43042 t!4198)))))))

(assert (= (and d!1623307 (not res!2148776)) b!5044157))

(assert (= (and b!5044157 res!2148777) b!5044152))

(assert (= (and b!5044152 res!2148778) b!5044155))

(assert (= (and b!5044155 res!2148781) b!5044156))

(assert (= (and b!5044156 res!2148779) b!5044154))

(assert (= (and b!5044154 res!2148780) b!5044153))

(declare-fun m!6079038 () Bool)

(assert (=> b!5044154 m!6079038))

(declare-fun m!6079040 () Bool)

(assert (=> b!5044156 m!6079040))

(declare-fun m!6079042 () Bool)

(assert (=> b!5044155 m!6079042))

(declare-fun m!6079044 () Bool)

(assert (=> b!5044157 m!6079044))

(declare-fun m!6079046 () Bool)

(assert (=> b!5044157 m!6079046))

(assert (=> b!5044152 m!6079044))

(assert (=> b!5044152 m!6079046))

(declare-fun m!6079048 () Bool)

(assert (=> b!5044153 m!6079048))

(assert (=> start!533566 d!1623307))

(declare-fun d!1623311 () Bool)

(declare-fun c!864551 () Bool)

(assert (=> d!1623311 (= c!864551 ((_ is Node!15522) t!4198))))

(declare-fun e!3149823 () Bool)

(assert (=> d!1623311 (= (inv!77205 t!4198) e!3149823)))

(declare-fun b!5044173 () Bool)

(declare-fun inv!77207 (Conc!15522) Bool)

(assert (=> b!5044173 (= e!3149823 (inv!77207 t!4198))))

(declare-fun b!5044174 () Bool)

(declare-fun e!3149824 () Bool)

(assert (=> b!5044174 (= e!3149823 e!3149824)))

(declare-fun res!2148787 () Bool)

(assert (=> b!5044174 (= res!2148787 (not ((_ is Leaf!25747) t!4198)))))

(assert (=> b!5044174 (=> res!2148787 e!3149824)))

(declare-fun b!5044175 () Bool)

(declare-fun inv!77208 (Conc!15522) Bool)

(assert (=> b!5044175 (= e!3149824 (inv!77208 t!4198))))

(assert (= (and d!1623311 c!864551) b!5044173))

(assert (= (and d!1623311 (not c!864551)) b!5044174))

(assert (= (and b!5044174 (not res!2148787)) b!5044175))

(declare-fun m!6079054 () Bool)

(assert (=> b!5044173 m!6079054))

(declare-fun m!6079056 () Bool)

(assert (=> b!5044175 m!6079056))

(assert (=> start!533566 d!1623311))

(declare-fun d!1623315 () Bool)

(declare-fun c!864552 () Bool)

(assert (=> d!1623315 (= c!864552 ((_ is Node!15522) (left!42712 t!4198)))))

(declare-fun e!3149825 () Bool)

(assert (=> d!1623315 (= (inv!77205 (left!42712 t!4198)) e!3149825)))

(declare-fun b!5044176 () Bool)

(assert (=> b!5044176 (= e!3149825 (inv!77207 (left!42712 t!4198)))))

(declare-fun b!5044177 () Bool)

(declare-fun e!3149826 () Bool)

(assert (=> b!5044177 (= e!3149825 e!3149826)))

(declare-fun res!2148788 () Bool)

(assert (=> b!5044177 (= res!2148788 (not ((_ is Leaf!25747) (left!42712 t!4198))))))

(assert (=> b!5044177 (=> res!2148788 e!3149826)))

(declare-fun b!5044178 () Bool)

(assert (=> b!5044178 (= e!3149826 (inv!77208 (left!42712 t!4198)))))

(assert (= (and d!1623315 c!864552) b!5044176))

(assert (= (and d!1623315 (not c!864552)) b!5044177))

(assert (= (and b!5044177 (not res!2148788)) b!5044178))

(declare-fun m!6079058 () Bool)

(assert (=> b!5044176 m!6079058))

(declare-fun m!6079060 () Bool)

(assert (=> b!5044178 m!6079060))

(assert (=> b!5044070 d!1623315))

(declare-fun d!1623317 () Bool)

(declare-fun c!864553 () Bool)

(assert (=> d!1623317 (= c!864553 ((_ is Node!15522) (right!43042 t!4198)))))

(declare-fun e!3149827 () Bool)

(assert (=> d!1623317 (= (inv!77205 (right!43042 t!4198)) e!3149827)))

(declare-fun b!5044179 () Bool)

(assert (=> b!5044179 (= e!3149827 (inv!77207 (right!43042 t!4198)))))

(declare-fun b!5044180 () Bool)

(declare-fun e!3149828 () Bool)

(assert (=> b!5044180 (= e!3149827 e!3149828)))

(declare-fun res!2148789 () Bool)

(assert (=> b!5044180 (= res!2148789 (not ((_ is Leaf!25747) (right!43042 t!4198))))))

(assert (=> b!5044180 (=> res!2148789 e!3149828)))

(declare-fun b!5044181 () Bool)

(assert (=> b!5044181 (= e!3149828 (inv!77208 (right!43042 t!4198)))))

(assert (= (and d!1623317 c!864553) b!5044179))

(assert (= (and d!1623317 (not c!864553)) b!5044180))

(assert (= (and b!5044180 (not res!2148789)) b!5044181))

(declare-fun m!6079062 () Bool)

(assert (=> b!5044179 m!6079062))

(declare-fun m!6079064 () Bool)

(assert (=> b!5044181 m!6079064))

(assert (=> b!5044070 d!1623317))

(declare-fun d!1623319 () Bool)

(declare-fun lt!2084899 () Int)

(assert (=> d!1623319 (= lt!2084899 (size!38924 (list!18929 t!4198)))))

(assert (=> d!1623319 (= lt!2084899 (ite ((_ is Empty!15522) t!4198) 0 (ite ((_ is Leaf!25747) t!4198) (csize!31275 t!4198) (csize!31274 t!4198))))))

(assert (=> d!1623319 (= (size!38925 t!4198) lt!2084899)))

(declare-fun bs!1189076 () Bool)

(assert (= bs!1189076 d!1623319))

(declare-fun m!6079074 () Bool)

(assert (=> bs!1189076 m!6079074))

(assert (=> bs!1189076 m!6079074))

(declare-fun m!6079078 () Bool)

(assert (=> bs!1189076 m!6079078))

(assert (=> b!5044071 d!1623319))

(declare-fun d!1623327 () Bool)

(assert (=> d!1623327 (= (inv!77206 (xs!18848 t!4198)) (<= (size!38924 (innerList!15610 (xs!18848 t!4198))) 2147483647))))

(declare-fun bs!1189077 () Bool)

(assert (= bs!1189077 d!1623327))

(declare-fun m!6079084 () Bool)

(assert (=> bs!1189077 m!6079084))

(assert (=> b!5044073 d!1623327))

(declare-fun b!5044205 () Bool)

(declare-fun e!3149842 () Bool)

(declare-fun tp_is_empty!36807 () Bool)

(declare-fun tp!1411493 () Bool)

(assert (=> b!5044205 (= e!3149842 (and tp_is_empty!36807 tp!1411493))))

(assert (=> b!5044072 (= tp!1411480 e!3149842)))

(assert (= (and b!5044072 ((_ is Cons!58310) (innerList!15610 (xs!18848 t!4198)))) b!5044205))

(declare-fun tp!1411506 () Bool)

(declare-fun e!3149852 () Bool)

(declare-fun b!5044220 () Bool)

(declare-fun tp!1411507 () Bool)

(assert (=> b!5044220 (= e!3149852 (and (inv!77205 (left!42712 (left!42712 t!4198))) tp!1411506 (inv!77205 (right!43042 (left!42712 t!4198))) tp!1411507))))

(declare-fun b!5044222 () Bool)

(declare-fun e!3149851 () Bool)

(declare-fun tp!1411508 () Bool)

(assert (=> b!5044222 (= e!3149851 tp!1411508)))

(declare-fun b!5044221 () Bool)

(assert (=> b!5044221 (= e!3149852 (and (inv!77206 (xs!18848 (left!42712 t!4198))) e!3149851))))

(assert (=> b!5044070 (= tp!1411479 (and (inv!77205 (left!42712 t!4198)) e!3149852))))

(assert (= (and b!5044070 ((_ is Node!15522) (left!42712 t!4198))) b!5044220))

(assert (= b!5044221 b!5044222))

(assert (= (and b!5044070 ((_ is Leaf!25747) (left!42712 t!4198))) b!5044221))

(declare-fun m!6079098 () Bool)

(assert (=> b!5044220 m!6079098))

(declare-fun m!6079100 () Bool)

(assert (=> b!5044220 m!6079100))

(declare-fun m!6079102 () Bool)

(assert (=> b!5044221 m!6079102))

(assert (=> b!5044070 m!6078974))

(declare-fun e!3149854 () Bool)

(declare-fun tp!1411509 () Bool)

(declare-fun b!5044223 () Bool)

(declare-fun tp!1411510 () Bool)

(assert (=> b!5044223 (= e!3149854 (and (inv!77205 (left!42712 (right!43042 t!4198))) tp!1411509 (inv!77205 (right!43042 (right!43042 t!4198))) tp!1411510))))

(declare-fun b!5044225 () Bool)

(declare-fun e!3149853 () Bool)

(declare-fun tp!1411511 () Bool)

(assert (=> b!5044225 (= e!3149853 tp!1411511)))

(declare-fun b!5044224 () Bool)

(assert (=> b!5044224 (= e!3149854 (and (inv!77206 (xs!18848 (right!43042 t!4198))) e!3149853))))

(assert (=> b!5044070 (= tp!1411481 (and (inv!77205 (right!43042 t!4198)) e!3149854))))

(assert (= (and b!5044070 ((_ is Node!15522) (right!43042 t!4198))) b!5044223))

(assert (= b!5044224 b!5044225))

(assert (= (and b!5044070 ((_ is Leaf!25747) (right!43042 t!4198))) b!5044224))

(declare-fun m!6079104 () Bool)

(assert (=> b!5044223 m!6079104))

(declare-fun m!6079106 () Bool)

(assert (=> b!5044223 m!6079106))

(declare-fun m!6079108 () Bool)

(assert (=> b!5044224 m!6079108))

(assert (=> b!5044070 m!6078976))

(check-sat (not b!5044178) (not b!5044157) (not b!5044155) (not b!5044224) (not b!5044153) (not b!5044085) (not b!5044205) (not b!5044175) (not b!5044110) (not b!5044176) (not b!5044120) (not b!5044222) (not b!5044154) (not b!5044152) (not b!5044225) (not b!5044220) (not b!5044070) (not d!1623319) (not b!5044117) (not b!5044179) (not b!5044223) (not b!5044156) (not b!5044121) tp_is_empty!36807 (not b!5044221) (not d!1623327) (not b!5044173) (not b!5044111) (not b!5044181))
(check-sat)
(get-model)

(declare-fun d!1623329 () Bool)

(assert (=> d!1623329 (= (list!18931 (xs!18848 (right!43042 t!4198))) (innerList!15610 (xs!18848 (right!43042 t!4198))))))

(assert (=> b!5044120 d!1623329))

(declare-fun d!1623331 () Bool)

(declare-fun c!864556 () Bool)

(assert (=> d!1623331 (= c!864556 ((_ is Node!15522) (left!42712 (right!43042 t!4198))))))

(declare-fun e!3149855 () Bool)

(assert (=> d!1623331 (= (inv!77205 (left!42712 (right!43042 t!4198))) e!3149855)))

(declare-fun b!5044226 () Bool)

(assert (=> b!5044226 (= e!3149855 (inv!77207 (left!42712 (right!43042 t!4198))))))

(declare-fun b!5044227 () Bool)

(declare-fun e!3149856 () Bool)

(assert (=> b!5044227 (= e!3149855 e!3149856)))

(declare-fun res!2148792 () Bool)

(assert (=> b!5044227 (= res!2148792 (not ((_ is Leaf!25747) (left!42712 (right!43042 t!4198)))))))

(assert (=> b!5044227 (=> res!2148792 e!3149856)))

(declare-fun b!5044228 () Bool)

(assert (=> b!5044228 (= e!3149856 (inv!77208 (left!42712 (right!43042 t!4198))))))

(assert (= (and d!1623331 c!864556) b!5044226))

(assert (= (and d!1623331 (not c!864556)) b!5044227))

(assert (= (and b!5044227 (not res!2148792)) b!5044228))

(declare-fun m!6079110 () Bool)

(assert (=> b!5044226 m!6079110))

(declare-fun m!6079112 () Bool)

(assert (=> b!5044228 m!6079112))

(assert (=> b!5044223 d!1623331))

(declare-fun d!1623333 () Bool)

(declare-fun c!864557 () Bool)

(assert (=> d!1623333 (= c!864557 ((_ is Node!15522) (right!43042 (right!43042 t!4198))))))

(declare-fun e!3149857 () Bool)

(assert (=> d!1623333 (= (inv!77205 (right!43042 (right!43042 t!4198))) e!3149857)))

(declare-fun b!5044229 () Bool)

(assert (=> b!5044229 (= e!3149857 (inv!77207 (right!43042 (right!43042 t!4198))))))

(declare-fun b!5044230 () Bool)

(declare-fun e!3149858 () Bool)

(assert (=> b!5044230 (= e!3149857 e!3149858)))

(declare-fun res!2148793 () Bool)

(assert (=> b!5044230 (= res!2148793 (not ((_ is Leaf!25747) (right!43042 (right!43042 t!4198)))))))

(assert (=> b!5044230 (=> res!2148793 e!3149858)))

(declare-fun b!5044231 () Bool)

(assert (=> b!5044231 (= e!3149858 (inv!77208 (right!43042 (right!43042 t!4198))))))

(assert (= (and d!1623333 c!864557) b!5044229))

(assert (= (and d!1623333 (not c!864557)) b!5044230))

(assert (= (and b!5044230 (not res!2148793)) b!5044231))

(declare-fun m!6079114 () Bool)

(assert (=> b!5044229 m!6079114))

(declare-fun m!6079116 () Bool)

(assert (=> b!5044231 m!6079116))

(assert (=> b!5044223 d!1623333))

(declare-fun d!1623335 () Bool)

(assert (=> d!1623335 (= (inv!77206 (xs!18848 (right!43042 t!4198))) (<= (size!38924 (innerList!15610 (xs!18848 (right!43042 t!4198)))) 2147483647))))

(declare-fun bs!1189078 () Bool)

(assert (= bs!1189078 d!1623335))

(declare-fun m!6079118 () Bool)

(assert (=> bs!1189078 m!6079118))

(assert (=> b!5044224 d!1623335))

(assert (=> b!5044070 d!1623315))

(assert (=> b!5044070 d!1623317))

(declare-fun d!1623337 () Bool)

(declare-fun lt!2084902 () Bool)

(declare-fun isEmpty!31551 (List!58434) Bool)

(assert (=> d!1623337 (= lt!2084902 (isEmpty!31551 (list!18929 (right!43042 t!4198))))))

(assert (=> d!1623337 (= lt!2084902 (= (size!38925 (right!43042 t!4198)) 0))))

(assert (=> d!1623337 (= (isEmpty!31550 (right!43042 t!4198)) lt!2084902)))

(declare-fun bs!1189079 () Bool)

(assert (= bs!1189079 d!1623337))

(assert (=> bs!1189079 m!6078970))

(assert (=> bs!1189079 m!6078970))

(declare-fun m!6079120 () Bool)

(assert (=> bs!1189079 m!6079120))

(declare-fun m!6079122 () Bool)

(assert (=> bs!1189079 m!6079122))

(assert (=> b!5044153 d!1623337))

(declare-fun d!1623339 () Bool)

(declare-fun c!864558 () Bool)

(assert (=> d!1623339 (= c!864558 ((_ is Node!15522) (left!42712 (left!42712 t!4198))))))

(declare-fun e!3149859 () Bool)

(assert (=> d!1623339 (= (inv!77205 (left!42712 (left!42712 t!4198))) e!3149859)))

(declare-fun b!5044232 () Bool)

(assert (=> b!5044232 (= e!3149859 (inv!77207 (left!42712 (left!42712 t!4198))))))

(declare-fun b!5044233 () Bool)

(declare-fun e!3149860 () Bool)

(assert (=> b!5044233 (= e!3149859 e!3149860)))

(declare-fun res!2148794 () Bool)

(assert (=> b!5044233 (= res!2148794 (not ((_ is Leaf!25747) (left!42712 (left!42712 t!4198)))))))

(assert (=> b!5044233 (=> res!2148794 e!3149860)))

(declare-fun b!5044234 () Bool)

(assert (=> b!5044234 (= e!3149860 (inv!77208 (left!42712 (left!42712 t!4198))))))

(assert (= (and d!1623339 c!864558) b!5044232))

(assert (= (and d!1623339 (not c!864558)) b!5044233))

(assert (= (and b!5044233 (not res!2148794)) b!5044234))

(declare-fun m!6079124 () Bool)

(assert (=> b!5044232 m!6079124))

(declare-fun m!6079126 () Bool)

(assert (=> b!5044234 m!6079126))

(assert (=> b!5044220 d!1623339))

(declare-fun d!1623341 () Bool)

(declare-fun c!864559 () Bool)

(assert (=> d!1623341 (= c!864559 ((_ is Node!15522) (right!43042 (left!42712 t!4198))))))

(declare-fun e!3149861 () Bool)

(assert (=> d!1623341 (= (inv!77205 (right!43042 (left!42712 t!4198))) e!3149861)))

(declare-fun b!5044235 () Bool)

(assert (=> b!5044235 (= e!3149861 (inv!77207 (right!43042 (left!42712 t!4198))))))

(declare-fun b!5044236 () Bool)

(declare-fun e!3149862 () Bool)

(assert (=> b!5044236 (= e!3149861 e!3149862)))

(declare-fun res!2148795 () Bool)

(assert (=> b!5044236 (= res!2148795 (not ((_ is Leaf!25747) (right!43042 (left!42712 t!4198)))))))

(assert (=> b!5044236 (=> res!2148795 e!3149862)))

(declare-fun b!5044237 () Bool)

(assert (=> b!5044237 (= e!3149862 (inv!77208 (right!43042 (left!42712 t!4198))))))

(assert (= (and d!1623341 c!864559) b!5044235))

(assert (= (and d!1623341 (not c!864559)) b!5044236))

(assert (= (and b!5044236 (not res!2148795)) b!5044237))

(declare-fun m!6079128 () Bool)

(assert (=> b!5044235 m!6079128))

(declare-fun m!6079130 () Bool)

(assert (=> b!5044237 m!6079130))

(assert (=> b!5044220 d!1623341))

(declare-fun d!1623343 () Bool)

(declare-fun lt!2084903 () Bool)

(assert (=> d!1623343 (= lt!2084903 (isEmpty!31551 (list!18929 (left!42712 t!4198))))))

(assert (=> d!1623343 (= lt!2084903 (= (size!38925 (left!42712 t!4198)) 0))))

(assert (=> d!1623343 (= (isEmpty!31550 (left!42712 t!4198)) lt!2084903)))

(declare-fun bs!1189080 () Bool)

(assert (= bs!1189080 d!1623343))

(assert (=> bs!1189080 m!6078966))

(assert (=> bs!1189080 m!6078966))

(declare-fun m!6079132 () Bool)

(assert (=> bs!1189080 m!6079132))

(declare-fun m!6079134 () Bool)

(assert (=> bs!1189080 m!6079134))

(assert (=> b!5044154 d!1623343))

(declare-fun b!5044248 () Bool)

(declare-fun res!2148800 () Bool)

(declare-fun e!3149868 () Bool)

(assert (=> b!5044248 (=> (not res!2148800) (not e!3149868))))

(declare-fun lt!2084906 () List!58434)

(assert (=> b!5044248 (= res!2148800 (= (size!38924 lt!2084906) (+ (size!38924 (list!18929 (left!42712 (right!43042 t!4198)))) (size!38924 (list!18929 (right!43042 (right!43042 t!4198)))))))))

(declare-fun b!5044249 () Bool)

(assert (=> b!5044249 (= e!3149868 (or (not (= (list!18929 (right!43042 (right!43042 t!4198))) Nil!58310)) (= lt!2084906 (list!18929 (left!42712 (right!43042 t!4198))))))))

(declare-fun b!5044247 () Bool)

(declare-fun e!3149867 () List!58434)

(assert (=> b!5044247 (= e!3149867 (Cons!58310 (h!64758 (list!18929 (left!42712 (right!43042 t!4198)))) (++!12734 (t!371021 (list!18929 (left!42712 (right!43042 t!4198)))) (list!18929 (right!43042 (right!43042 t!4198))))))))

(declare-fun d!1623345 () Bool)

(assert (=> d!1623345 e!3149868))

(declare-fun res!2148801 () Bool)

(assert (=> d!1623345 (=> (not res!2148801) (not e!3149868))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10362 (List!58434) (InoxSet T!104250))

(assert (=> d!1623345 (= res!2148801 (= (content!10362 lt!2084906) ((_ map or) (content!10362 (list!18929 (left!42712 (right!43042 t!4198)))) (content!10362 (list!18929 (right!43042 (right!43042 t!4198)))))))))

(assert (=> d!1623345 (= lt!2084906 e!3149867)))

(declare-fun c!864562 () Bool)

(assert (=> d!1623345 (= c!864562 ((_ is Nil!58310) (list!18929 (left!42712 (right!43042 t!4198)))))))

(assert (=> d!1623345 (= (++!12734 (list!18929 (left!42712 (right!43042 t!4198))) (list!18929 (right!43042 (right!43042 t!4198)))) lt!2084906)))

(declare-fun b!5044246 () Bool)

(assert (=> b!5044246 (= e!3149867 (list!18929 (right!43042 (right!43042 t!4198))))))

(assert (= (and d!1623345 c!864562) b!5044246))

(assert (= (and d!1623345 (not c!864562)) b!5044247))

(assert (= (and d!1623345 res!2148801) b!5044248))

(assert (= (and b!5044248 res!2148800) b!5044249))

(declare-fun m!6079136 () Bool)

(assert (=> b!5044248 m!6079136))

(assert (=> b!5044248 m!6079018))

(declare-fun m!6079138 () Bool)

(assert (=> b!5044248 m!6079138))

(assert (=> b!5044248 m!6079020))

(declare-fun m!6079140 () Bool)

(assert (=> b!5044248 m!6079140))

(assert (=> b!5044247 m!6079020))

(declare-fun m!6079142 () Bool)

(assert (=> b!5044247 m!6079142))

(declare-fun m!6079144 () Bool)

(assert (=> d!1623345 m!6079144))

(assert (=> d!1623345 m!6079018))

(declare-fun m!6079146 () Bool)

(assert (=> d!1623345 m!6079146))

(assert (=> d!1623345 m!6079020))

(declare-fun m!6079148 () Bool)

(assert (=> d!1623345 m!6079148))

(assert (=> b!5044121 d!1623345))

(declare-fun b!5044253 () Bool)

(declare-fun e!3149870 () List!58434)

(assert (=> b!5044253 (= e!3149870 (++!12734 (list!18929 (left!42712 (left!42712 (right!43042 t!4198)))) (list!18929 (right!43042 (left!42712 (right!43042 t!4198))))))))

(declare-fun b!5044251 () Bool)

(declare-fun e!3149869 () List!58434)

(assert (=> b!5044251 (= e!3149869 e!3149870)))

(declare-fun c!864564 () Bool)

(assert (=> b!5044251 (= c!864564 ((_ is Leaf!25747) (left!42712 (right!43042 t!4198))))))

(declare-fun b!5044250 () Bool)

(assert (=> b!5044250 (= e!3149869 Nil!58310)))

(declare-fun d!1623347 () Bool)

(declare-fun c!864563 () Bool)

(assert (=> d!1623347 (= c!864563 ((_ is Empty!15522) (left!42712 (right!43042 t!4198))))))

(assert (=> d!1623347 (= (list!18929 (left!42712 (right!43042 t!4198))) e!3149869)))

(declare-fun b!5044252 () Bool)

(assert (=> b!5044252 (= e!3149870 (list!18931 (xs!18848 (left!42712 (right!43042 t!4198)))))))

(assert (= (and d!1623347 c!864563) b!5044250))

(assert (= (and d!1623347 (not c!864563)) b!5044251))

(assert (= (and b!5044251 c!864564) b!5044252))

(assert (= (and b!5044251 (not c!864564)) b!5044253))

(declare-fun m!6079150 () Bool)

(assert (=> b!5044253 m!6079150))

(declare-fun m!6079152 () Bool)

(assert (=> b!5044253 m!6079152))

(assert (=> b!5044253 m!6079150))

(assert (=> b!5044253 m!6079152))

(declare-fun m!6079154 () Bool)

(assert (=> b!5044253 m!6079154))

(declare-fun m!6079156 () Bool)

(assert (=> b!5044252 m!6079156))

(assert (=> b!5044121 d!1623347))

(declare-fun b!5044257 () Bool)

(declare-fun e!3149872 () List!58434)

(assert (=> b!5044257 (= e!3149872 (++!12734 (list!18929 (left!42712 (right!43042 (right!43042 t!4198)))) (list!18929 (right!43042 (right!43042 (right!43042 t!4198))))))))

(declare-fun b!5044255 () Bool)

(declare-fun e!3149871 () List!58434)

(assert (=> b!5044255 (= e!3149871 e!3149872)))

(declare-fun c!864566 () Bool)

(assert (=> b!5044255 (= c!864566 ((_ is Leaf!25747) (right!43042 (right!43042 t!4198))))))

(declare-fun b!5044254 () Bool)

(assert (=> b!5044254 (= e!3149871 Nil!58310)))

(declare-fun d!1623349 () Bool)

(declare-fun c!864565 () Bool)

(assert (=> d!1623349 (= c!864565 ((_ is Empty!15522) (right!43042 (right!43042 t!4198))))))

(assert (=> d!1623349 (= (list!18929 (right!43042 (right!43042 t!4198))) e!3149871)))

(declare-fun b!5044256 () Bool)

(assert (=> b!5044256 (= e!3149872 (list!18931 (xs!18848 (right!43042 (right!43042 t!4198)))))))

(assert (= (and d!1623349 c!864565) b!5044254))

(assert (= (and d!1623349 (not c!864565)) b!5044255))

(assert (= (and b!5044255 c!864566) b!5044256))

(assert (= (and b!5044255 (not c!864566)) b!5044257))

(declare-fun m!6079158 () Bool)

(assert (=> b!5044257 m!6079158))

(declare-fun m!6079160 () Bool)

(assert (=> b!5044257 m!6079160))

(assert (=> b!5044257 m!6079158))

(assert (=> b!5044257 m!6079160))

(declare-fun m!6079162 () Bool)

(assert (=> b!5044257 m!6079162))

(declare-fun m!6079164 () Bool)

(assert (=> b!5044256 m!6079164))

(assert (=> b!5044121 d!1623349))

(declare-fun d!1623351 () Bool)

(assert (=> d!1623351 (= (height!2100 (left!42712 t!4198)) (ite ((_ is Empty!15522) (left!42712 t!4198)) 0 (ite ((_ is Leaf!25747) (left!42712 t!4198)) 1 (cheight!15733 (left!42712 t!4198)))))))

(assert (=> b!5044152 d!1623351))

(declare-fun d!1623353 () Bool)

(assert (=> d!1623353 (= (height!2100 (right!43042 t!4198)) (ite ((_ is Empty!15522) (right!43042 t!4198)) 0 (ite ((_ is Leaf!25747) (right!43042 t!4198)) 1 (cheight!15733 (right!43042 t!4198)))))))

(assert (=> b!5044152 d!1623353))

(declare-fun d!1623355 () Bool)

(declare-fun lt!2084907 () Int)

(assert (=> d!1623355 (>= lt!2084907 0)))

(declare-fun e!3149873 () Int)

(assert (=> d!1623355 (= lt!2084907 e!3149873)))

(declare-fun c!864567 () Bool)

(assert (=> d!1623355 (= c!864567 ((_ is Nil!58310) (list!18929 t!4198)))))

(assert (=> d!1623355 (= (size!38924 (list!18929 t!4198)) lt!2084907)))

(declare-fun b!5044258 () Bool)

(assert (=> b!5044258 (= e!3149873 0)))

(declare-fun b!5044259 () Bool)

(assert (=> b!5044259 (= e!3149873 (+ 1 (size!38924 (t!371021 (list!18929 t!4198)))))))

(assert (= (and d!1623355 c!864567) b!5044258))

(assert (= (and d!1623355 (not c!864567)) b!5044259))

(declare-fun m!6079166 () Bool)

(assert (=> b!5044259 m!6079166))

(assert (=> d!1623319 d!1623355))

(declare-fun b!5044263 () Bool)

(declare-fun e!3149875 () List!58434)

(assert (=> b!5044263 (= e!3149875 (++!12734 (list!18929 (left!42712 t!4198)) (list!18929 (right!43042 t!4198))))))

(declare-fun b!5044261 () Bool)

(declare-fun e!3149874 () List!58434)

(assert (=> b!5044261 (= e!3149874 e!3149875)))

(declare-fun c!864569 () Bool)

(assert (=> b!5044261 (= c!864569 ((_ is Leaf!25747) t!4198))))

(declare-fun b!5044260 () Bool)

(assert (=> b!5044260 (= e!3149874 Nil!58310)))

(declare-fun d!1623357 () Bool)

(declare-fun c!864568 () Bool)

(assert (=> d!1623357 (= c!864568 ((_ is Empty!15522) t!4198))))

(assert (=> d!1623357 (= (list!18929 t!4198) e!3149874)))

(declare-fun b!5044262 () Bool)

(assert (=> b!5044262 (= e!3149875 (list!18931 (xs!18848 t!4198)))))

(assert (= (and d!1623357 c!864568) b!5044260))

(assert (= (and d!1623357 (not c!864568)) b!5044261))

(assert (= (and b!5044261 c!864569) b!5044262))

(assert (= (and b!5044261 (not c!864569)) b!5044263))

(assert (=> b!5044263 m!6078966))

(assert (=> b!5044263 m!6078970))

(assert (=> b!5044263 m!6078966))

(assert (=> b!5044263 m!6078970))

(declare-fun m!6079168 () Bool)

(assert (=> b!5044263 m!6079168))

(declare-fun m!6079170 () Bool)

(assert (=> b!5044262 m!6079170))

(assert (=> d!1623319 d!1623357))

(declare-fun d!1623359 () Bool)

(declare-fun res!2148808 () Bool)

(declare-fun e!3149878 () Bool)

(assert (=> d!1623359 (=> (not res!2148808) (not e!3149878))))

(assert (=> d!1623359 (= res!2148808 (= (csize!31274 (left!42712 t!4198)) (+ (size!38925 (left!42712 (left!42712 t!4198))) (size!38925 (right!43042 (left!42712 t!4198))))))))

(assert (=> d!1623359 (= (inv!77207 (left!42712 t!4198)) e!3149878)))

(declare-fun b!5044270 () Bool)

(declare-fun res!2148809 () Bool)

(assert (=> b!5044270 (=> (not res!2148809) (not e!3149878))))

(assert (=> b!5044270 (= res!2148809 (and (not (= (left!42712 (left!42712 t!4198)) Empty!15522)) (not (= (right!43042 (left!42712 t!4198)) Empty!15522))))))

(declare-fun b!5044271 () Bool)

(declare-fun res!2148810 () Bool)

(assert (=> b!5044271 (=> (not res!2148810) (not e!3149878))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5044271 (= res!2148810 (= (cheight!15733 (left!42712 t!4198)) (+ (max!0 (height!2100 (left!42712 (left!42712 t!4198))) (height!2100 (right!43042 (left!42712 t!4198)))) 1)))))

(declare-fun b!5044272 () Bool)

(assert (=> b!5044272 (= e!3149878 (<= 0 (cheight!15733 (left!42712 t!4198))))))

(assert (= (and d!1623359 res!2148808) b!5044270))

(assert (= (and b!5044270 res!2148809) b!5044271))

(assert (= (and b!5044271 res!2148810) b!5044272))

(declare-fun m!6079172 () Bool)

(assert (=> d!1623359 m!6079172))

(declare-fun m!6079174 () Bool)

(assert (=> d!1623359 m!6079174))

(declare-fun m!6079176 () Bool)

(assert (=> b!5044271 m!6079176))

(declare-fun m!6079178 () Bool)

(assert (=> b!5044271 m!6079178))

(assert (=> b!5044271 m!6079176))

(assert (=> b!5044271 m!6079178))

(declare-fun m!6079180 () Bool)

(assert (=> b!5044271 m!6079180))

(assert (=> b!5044176 d!1623359))

(declare-fun b!5044273 () Bool)

(declare-fun res!2148813 () Bool)

(declare-fun e!3149880 () Bool)

(assert (=> b!5044273 (=> (not res!2148813) (not e!3149880))))

(assert (=> b!5044273 (= res!2148813 (<= (- (height!2100 (left!42712 (right!43042 t!4198))) (height!2100 (right!43042 (right!43042 t!4198)))) 1))))

(declare-fun d!1623361 () Bool)

(declare-fun res!2148811 () Bool)

(declare-fun e!3149879 () Bool)

(assert (=> d!1623361 (=> res!2148811 e!3149879)))

(assert (=> d!1623361 (= res!2148811 (not ((_ is Node!15522) (right!43042 t!4198))))))

(assert (=> d!1623361 (= (isBalanced!4384 (right!43042 t!4198)) e!3149879)))

(declare-fun b!5044274 () Bool)

(assert (=> b!5044274 (= e!3149880 (not (isEmpty!31550 (right!43042 (right!43042 t!4198)))))))

(declare-fun b!5044275 () Bool)

(declare-fun res!2148815 () Bool)

(assert (=> b!5044275 (=> (not res!2148815) (not e!3149880))))

(assert (=> b!5044275 (= res!2148815 (not (isEmpty!31550 (left!42712 (right!43042 t!4198)))))))

(declare-fun b!5044276 () Bool)

(declare-fun res!2148816 () Bool)

(assert (=> b!5044276 (=> (not res!2148816) (not e!3149880))))

(assert (=> b!5044276 (= res!2148816 (isBalanced!4384 (left!42712 (right!43042 t!4198))))))

(declare-fun b!5044277 () Bool)

(declare-fun res!2148814 () Bool)

(assert (=> b!5044277 (=> (not res!2148814) (not e!3149880))))

(assert (=> b!5044277 (= res!2148814 (isBalanced!4384 (right!43042 (right!43042 t!4198))))))

(declare-fun b!5044278 () Bool)

(assert (=> b!5044278 (= e!3149879 e!3149880)))

(declare-fun res!2148812 () Bool)

(assert (=> b!5044278 (=> (not res!2148812) (not e!3149880))))

(assert (=> b!5044278 (= res!2148812 (<= (- 1) (- (height!2100 (left!42712 (right!43042 t!4198))) (height!2100 (right!43042 (right!43042 t!4198))))))))

(assert (= (and d!1623361 (not res!2148811)) b!5044278))

(assert (= (and b!5044278 res!2148812) b!5044273))

(assert (= (and b!5044273 res!2148813) b!5044276))

(assert (= (and b!5044276 res!2148816) b!5044277))

(assert (= (and b!5044277 res!2148814) b!5044275))

(assert (= (and b!5044275 res!2148815) b!5044274))

(declare-fun m!6079182 () Bool)

(assert (=> b!5044275 m!6079182))

(declare-fun m!6079184 () Bool)

(assert (=> b!5044277 m!6079184))

(declare-fun m!6079186 () Bool)

(assert (=> b!5044276 m!6079186))

(declare-fun m!6079188 () Bool)

(assert (=> b!5044278 m!6079188))

(declare-fun m!6079190 () Bool)

(assert (=> b!5044278 m!6079190))

(assert (=> b!5044273 m!6079188))

(assert (=> b!5044273 m!6079190))

(declare-fun m!6079192 () Bool)

(assert (=> b!5044274 m!6079192))

(assert (=> b!5044156 d!1623361))

(declare-fun d!1623363 () Bool)

(assert (=> d!1623363 (= (inv!77206 (xs!18848 (left!42712 t!4198))) (<= (size!38924 (innerList!15610 (xs!18848 (left!42712 t!4198)))) 2147483647))))

(declare-fun bs!1189081 () Bool)

(assert (= bs!1189081 d!1623363))

(declare-fun m!6079194 () Bool)

(assert (=> bs!1189081 m!6079194))

(assert (=> b!5044221 d!1623363))

(declare-fun d!1623365 () Bool)

(declare-fun res!2148827 () Bool)

(declare-fun e!3149885 () Bool)

(assert (=> d!1623365 (=> (not res!2148827) (not e!3149885))))

(assert (=> d!1623365 (= res!2148827 (<= (size!38924 (list!18931 (xs!18848 (left!42712 t!4198)))) 512))))

(assert (=> d!1623365 (= (inv!77208 (left!42712 t!4198)) e!3149885)))

(declare-fun b!5044289 () Bool)

(declare-fun res!2148828 () Bool)

(assert (=> b!5044289 (=> (not res!2148828) (not e!3149885))))

(assert (=> b!5044289 (= res!2148828 (= (csize!31275 (left!42712 t!4198)) (size!38924 (list!18931 (xs!18848 (left!42712 t!4198))))))))

(declare-fun b!5044290 () Bool)

(assert (=> b!5044290 (= e!3149885 (and (> (csize!31275 (left!42712 t!4198)) 0) (<= (csize!31275 (left!42712 t!4198)) 512)))))

(assert (= (and d!1623365 res!2148827) b!5044289))

(assert (= (and b!5044289 res!2148828) b!5044290))

(assert (=> d!1623365 m!6079012))

(assert (=> d!1623365 m!6079012))

(declare-fun m!6079208 () Bool)

(assert (=> d!1623365 m!6079208))

(assert (=> b!5044289 m!6079012))

(assert (=> b!5044289 m!6079012))

(assert (=> b!5044289 m!6079208))

(assert (=> b!5044178 d!1623365))

(declare-fun b!5044294 () Bool)

(declare-fun res!2148832 () Bool)

(declare-fun e!3149889 () Bool)

(assert (=> b!5044294 (=> (not res!2148832) (not e!3149889))))

(assert (=> b!5044294 (= res!2148832 (<= (- (height!2100 (left!42712 (left!42712 t!4198))) (height!2100 (right!43042 (left!42712 t!4198)))) 1))))

(declare-fun d!1623371 () Bool)

(declare-fun res!2148830 () Bool)

(declare-fun e!3149888 () Bool)

(assert (=> d!1623371 (=> res!2148830 e!3149888)))

(assert (=> d!1623371 (= res!2148830 (not ((_ is Node!15522) (left!42712 t!4198))))))

(assert (=> d!1623371 (= (isBalanced!4384 (left!42712 t!4198)) e!3149888)))

(declare-fun b!5044295 () Bool)

(assert (=> b!5044295 (= e!3149889 (not (isEmpty!31550 (right!43042 (left!42712 t!4198)))))))

(declare-fun b!5044296 () Bool)

(declare-fun res!2148834 () Bool)

(assert (=> b!5044296 (=> (not res!2148834) (not e!3149889))))

(assert (=> b!5044296 (= res!2148834 (not (isEmpty!31550 (left!42712 (left!42712 t!4198)))))))

(declare-fun b!5044297 () Bool)

(declare-fun res!2148835 () Bool)

(assert (=> b!5044297 (=> (not res!2148835) (not e!3149889))))

(assert (=> b!5044297 (= res!2148835 (isBalanced!4384 (left!42712 (left!42712 t!4198))))))

(declare-fun b!5044298 () Bool)

(declare-fun res!2148833 () Bool)

(assert (=> b!5044298 (=> (not res!2148833) (not e!3149889))))

(assert (=> b!5044298 (= res!2148833 (isBalanced!4384 (right!43042 (left!42712 t!4198))))))

(declare-fun b!5044299 () Bool)

(assert (=> b!5044299 (= e!3149888 e!3149889)))

(declare-fun res!2148831 () Bool)

(assert (=> b!5044299 (=> (not res!2148831) (not e!3149889))))

(assert (=> b!5044299 (= res!2148831 (<= (- 1) (- (height!2100 (left!42712 (left!42712 t!4198))) (height!2100 (right!43042 (left!42712 t!4198))))))))

(assert (= (and d!1623371 (not res!2148830)) b!5044299))

(assert (= (and b!5044299 res!2148831) b!5044294))

(assert (= (and b!5044294 res!2148832) b!5044297))

(assert (= (and b!5044297 res!2148835) b!5044298))

(assert (= (and b!5044298 res!2148833) b!5044296))

(assert (= (and b!5044296 res!2148834) b!5044295))

(declare-fun m!6079218 () Bool)

(assert (=> b!5044296 m!6079218))

(declare-fun m!6079220 () Bool)

(assert (=> b!5044298 m!6079220))

(declare-fun m!6079222 () Bool)

(assert (=> b!5044297 m!6079222))

(assert (=> b!5044299 m!6079176))

(assert (=> b!5044299 m!6079178))

(assert (=> b!5044294 m!6079176))

(assert (=> b!5044294 m!6079178))

(declare-fun m!6079224 () Bool)

(assert (=> b!5044295 m!6079224))

(assert (=> b!5044155 d!1623371))

(assert (=> b!5044157 d!1623351))

(assert (=> b!5044157 d!1623353))

(declare-fun d!1623377 () Bool)

(declare-fun lt!2084908 () Int)

(assert (=> d!1623377 (>= lt!2084908 0)))

(declare-fun e!3149892 () Int)

(assert (=> d!1623377 (= lt!2084908 e!3149892)))

(declare-fun c!864572 () Bool)

(assert (=> d!1623377 (= c!864572 ((_ is Nil!58310) (t!371021 (list!18929 (left!42712 t!4198)))))))

(assert (=> d!1623377 (= (size!38924 (t!371021 (list!18929 (left!42712 t!4198)))) lt!2084908)))

(declare-fun b!5044303 () Bool)

(assert (=> b!5044303 (= e!3149892 0)))

(declare-fun b!5044304 () Bool)

(assert (=> b!5044304 (= e!3149892 (+ 1 (size!38924 (t!371021 (t!371021 (list!18929 (left!42712 t!4198)))))))))

(assert (= (and d!1623377 c!864572) b!5044303))

(assert (= (and d!1623377 (not c!864572)) b!5044304))

(declare-fun m!6079226 () Bool)

(assert (=> b!5044304 m!6079226))

(assert (=> b!5044085 d!1623377))

(declare-fun d!1623379 () Bool)

(declare-fun res!2148837 () Bool)

(declare-fun e!3149893 () Bool)

(assert (=> d!1623379 (=> (not res!2148837) (not e!3149893))))

(assert (=> d!1623379 (= res!2148837 (= (csize!31274 t!4198) (+ (size!38925 (left!42712 t!4198)) (size!38925 (right!43042 t!4198)))))))

(assert (=> d!1623379 (= (inv!77207 t!4198) e!3149893)))

(declare-fun b!5044305 () Bool)

(declare-fun res!2148838 () Bool)

(assert (=> b!5044305 (=> (not res!2148838) (not e!3149893))))

(assert (=> b!5044305 (= res!2148838 (and (not (= (left!42712 t!4198) Empty!15522)) (not (= (right!43042 t!4198) Empty!15522))))))

(declare-fun b!5044306 () Bool)

(declare-fun res!2148839 () Bool)

(assert (=> b!5044306 (=> (not res!2148839) (not e!3149893))))

(assert (=> b!5044306 (= res!2148839 (= (cheight!15733 t!4198) (+ (max!0 (height!2100 (left!42712 t!4198)) (height!2100 (right!43042 t!4198))) 1)))))

(declare-fun b!5044307 () Bool)

(assert (=> b!5044307 (= e!3149893 (<= 0 (cheight!15733 t!4198)))))

(assert (= (and d!1623379 res!2148837) b!5044305))

(assert (= (and b!5044305 res!2148838) b!5044306))

(assert (= (and b!5044306 res!2148839) b!5044307))

(assert (=> d!1623379 m!6079134))

(assert (=> d!1623379 m!6079122))

(assert (=> b!5044306 m!6079044))

(assert (=> b!5044306 m!6079046))

(assert (=> b!5044306 m!6079044))

(assert (=> b!5044306 m!6079046))

(declare-fun m!6079228 () Bool)

(assert (=> b!5044306 m!6079228))

(assert (=> b!5044173 d!1623379))

(declare-fun d!1623381 () Bool)

(declare-fun lt!2084909 () Int)

(assert (=> d!1623381 (>= lt!2084909 0)))

(declare-fun e!3149894 () Int)

(assert (=> d!1623381 (= lt!2084909 e!3149894)))

(declare-fun c!864573 () Bool)

(assert (=> d!1623381 (= c!864573 ((_ is Nil!58310) (t!371021 (list!18929 (right!43042 t!4198)))))))

(assert (=> d!1623381 (= (size!38924 (t!371021 (list!18929 (right!43042 t!4198)))) lt!2084909)))

(declare-fun b!5044308 () Bool)

(assert (=> b!5044308 (= e!3149894 0)))

(declare-fun b!5044309 () Bool)

(assert (=> b!5044309 (= e!3149894 (+ 1 (size!38924 (t!371021 (t!371021 (list!18929 (right!43042 t!4198)))))))))

(assert (= (and d!1623381 c!864573) b!5044308))

(assert (= (and d!1623381 (not c!864573)) b!5044309))

(declare-fun m!6079230 () Bool)

(assert (=> b!5044309 m!6079230))

(assert (=> b!5044117 d!1623381))

(declare-fun d!1623385 () Bool)

(declare-fun lt!2084910 () Int)

(assert (=> d!1623385 (>= lt!2084910 0)))

(declare-fun e!3149895 () Int)

(assert (=> d!1623385 (= lt!2084910 e!3149895)))

(declare-fun c!864574 () Bool)

(assert (=> d!1623385 (= c!864574 ((_ is Nil!58310) (innerList!15610 (xs!18848 t!4198))))))

(assert (=> d!1623385 (= (size!38924 (innerList!15610 (xs!18848 t!4198))) lt!2084910)))

(declare-fun b!5044310 () Bool)

(assert (=> b!5044310 (= e!3149895 0)))

(declare-fun b!5044311 () Bool)

(assert (=> b!5044311 (= e!3149895 (+ 1 (size!38924 (t!371021 (innerList!15610 (xs!18848 t!4198))))))))

(assert (= (and d!1623385 c!864574) b!5044310))

(assert (= (and d!1623385 (not c!864574)) b!5044311))

(declare-fun m!6079232 () Bool)

(assert (=> b!5044311 m!6079232))

(assert (=> d!1623327 d!1623385))

(declare-fun d!1623389 () Bool)

(declare-fun res!2148840 () Bool)

(declare-fun e!3149896 () Bool)

(assert (=> d!1623389 (=> (not res!2148840) (not e!3149896))))

(assert (=> d!1623389 (= res!2148840 (<= (size!38924 (list!18931 (xs!18848 t!4198))) 512))))

(assert (=> d!1623389 (= (inv!77208 t!4198) e!3149896)))

(declare-fun b!5044312 () Bool)

(declare-fun res!2148841 () Bool)

(assert (=> b!5044312 (=> (not res!2148841) (not e!3149896))))

(assert (=> b!5044312 (= res!2148841 (= (csize!31275 t!4198) (size!38924 (list!18931 (xs!18848 t!4198)))))))

(declare-fun b!5044313 () Bool)

(assert (=> b!5044313 (= e!3149896 (and (> (csize!31275 t!4198) 0) (<= (csize!31275 t!4198) 512)))))

(assert (= (and d!1623389 res!2148840) b!5044312))

(assert (= (and b!5044312 res!2148841) b!5044313))

(assert (=> d!1623389 m!6079170))

(assert (=> d!1623389 m!6079170))

(declare-fun m!6079234 () Bool)

(assert (=> d!1623389 m!6079234))

(assert (=> b!5044312 m!6079170))

(assert (=> b!5044312 m!6079170))

(assert (=> b!5044312 m!6079234))

(assert (=> b!5044175 d!1623389))

(declare-fun b!5044316 () Bool)

(declare-fun res!2148842 () Bool)

(declare-fun e!3149898 () Bool)

(assert (=> b!5044316 (=> (not res!2148842) (not e!3149898))))

(declare-fun lt!2084911 () List!58434)

(assert (=> b!5044316 (= res!2148842 (= (size!38924 lt!2084911) (+ (size!38924 (list!18929 (left!42712 (left!42712 t!4198)))) (size!38924 (list!18929 (right!43042 (left!42712 t!4198)))))))))

(declare-fun b!5044317 () Bool)

(assert (=> b!5044317 (= e!3149898 (or (not (= (list!18929 (right!43042 (left!42712 t!4198))) Nil!58310)) (= lt!2084911 (list!18929 (left!42712 (left!42712 t!4198))))))))

(declare-fun b!5044315 () Bool)

(declare-fun e!3149897 () List!58434)

(assert (=> b!5044315 (= e!3149897 (Cons!58310 (h!64758 (list!18929 (left!42712 (left!42712 t!4198)))) (++!12734 (t!371021 (list!18929 (left!42712 (left!42712 t!4198)))) (list!18929 (right!43042 (left!42712 t!4198))))))))

(declare-fun d!1623391 () Bool)

(assert (=> d!1623391 e!3149898))

(declare-fun res!2148843 () Bool)

(assert (=> d!1623391 (=> (not res!2148843) (not e!3149898))))

(assert (=> d!1623391 (= res!2148843 (= (content!10362 lt!2084911) ((_ map or) (content!10362 (list!18929 (left!42712 (left!42712 t!4198)))) (content!10362 (list!18929 (right!43042 (left!42712 t!4198)))))))))

(assert (=> d!1623391 (= lt!2084911 e!3149897)))

(declare-fun c!864575 () Bool)

(assert (=> d!1623391 (= c!864575 ((_ is Nil!58310) (list!18929 (left!42712 (left!42712 t!4198)))))))

(assert (=> d!1623391 (= (++!12734 (list!18929 (left!42712 (left!42712 t!4198))) (list!18929 (right!43042 (left!42712 t!4198)))) lt!2084911)))

(declare-fun b!5044314 () Bool)

(assert (=> b!5044314 (= e!3149897 (list!18929 (right!43042 (left!42712 t!4198))))))

(assert (= (and d!1623391 c!864575) b!5044314))

(assert (= (and d!1623391 (not c!864575)) b!5044315))

(assert (= (and d!1623391 res!2148843) b!5044316))

(assert (= (and b!5044316 res!2148842) b!5044317))

(declare-fun m!6079236 () Bool)

(assert (=> b!5044316 m!6079236))

(assert (=> b!5044316 m!6079000))

(declare-fun m!6079238 () Bool)

(assert (=> b!5044316 m!6079238))

(assert (=> b!5044316 m!6079002))

(declare-fun m!6079240 () Bool)

(assert (=> b!5044316 m!6079240))

(assert (=> b!5044315 m!6079002))

(declare-fun m!6079242 () Bool)

(assert (=> b!5044315 m!6079242))

(declare-fun m!6079244 () Bool)

(assert (=> d!1623391 m!6079244))

(assert (=> d!1623391 m!6079000))

(declare-fun m!6079246 () Bool)

(assert (=> d!1623391 m!6079246))

(assert (=> d!1623391 m!6079002))

(declare-fun m!6079248 () Bool)

(assert (=> d!1623391 m!6079248))

(assert (=> b!5044111 d!1623391))

(declare-fun b!5044321 () Bool)

(declare-fun e!3149900 () List!58434)

(assert (=> b!5044321 (= e!3149900 (++!12734 (list!18929 (left!42712 (left!42712 (left!42712 t!4198)))) (list!18929 (right!43042 (left!42712 (left!42712 t!4198))))))))

(declare-fun b!5044319 () Bool)

(declare-fun e!3149899 () List!58434)

(assert (=> b!5044319 (= e!3149899 e!3149900)))

(declare-fun c!864577 () Bool)

(assert (=> b!5044319 (= c!864577 ((_ is Leaf!25747) (left!42712 (left!42712 t!4198))))))

(declare-fun b!5044318 () Bool)

(assert (=> b!5044318 (= e!3149899 Nil!58310)))

(declare-fun d!1623393 () Bool)

(declare-fun c!864576 () Bool)

(assert (=> d!1623393 (= c!864576 ((_ is Empty!15522) (left!42712 (left!42712 t!4198))))))

(assert (=> d!1623393 (= (list!18929 (left!42712 (left!42712 t!4198))) e!3149899)))

(declare-fun b!5044320 () Bool)

(assert (=> b!5044320 (= e!3149900 (list!18931 (xs!18848 (left!42712 (left!42712 t!4198)))))))

(assert (= (and d!1623393 c!864576) b!5044318))

(assert (= (and d!1623393 (not c!864576)) b!5044319))

(assert (= (and b!5044319 c!864577) b!5044320))

(assert (= (and b!5044319 (not c!864577)) b!5044321))

(declare-fun m!6079250 () Bool)

(assert (=> b!5044321 m!6079250))

(declare-fun m!6079252 () Bool)

(assert (=> b!5044321 m!6079252))

(assert (=> b!5044321 m!6079250))

(assert (=> b!5044321 m!6079252))

(declare-fun m!6079254 () Bool)

(assert (=> b!5044321 m!6079254))

(declare-fun m!6079256 () Bool)

(assert (=> b!5044320 m!6079256))

(assert (=> b!5044111 d!1623393))

(declare-fun b!5044325 () Bool)

(declare-fun e!3149902 () List!58434)

(assert (=> b!5044325 (= e!3149902 (++!12734 (list!18929 (left!42712 (right!43042 (left!42712 t!4198)))) (list!18929 (right!43042 (right!43042 (left!42712 t!4198))))))))

(declare-fun b!5044323 () Bool)

(declare-fun e!3149901 () List!58434)

(assert (=> b!5044323 (= e!3149901 e!3149902)))

(declare-fun c!864579 () Bool)

(assert (=> b!5044323 (= c!864579 ((_ is Leaf!25747) (right!43042 (left!42712 t!4198))))))

(declare-fun b!5044322 () Bool)

(assert (=> b!5044322 (= e!3149901 Nil!58310)))

(declare-fun d!1623395 () Bool)

(declare-fun c!864578 () Bool)

(assert (=> d!1623395 (= c!864578 ((_ is Empty!15522) (right!43042 (left!42712 t!4198))))))

(assert (=> d!1623395 (= (list!18929 (right!43042 (left!42712 t!4198))) e!3149901)))

(declare-fun b!5044324 () Bool)

(assert (=> b!5044324 (= e!3149902 (list!18931 (xs!18848 (right!43042 (left!42712 t!4198)))))))

(assert (= (and d!1623395 c!864578) b!5044322))

(assert (= (and d!1623395 (not c!864578)) b!5044323))

(assert (= (and b!5044323 c!864579) b!5044324))

(assert (= (and b!5044323 (not c!864579)) b!5044325))

(declare-fun m!6079258 () Bool)

(assert (=> b!5044325 m!6079258))

(declare-fun m!6079260 () Bool)

(assert (=> b!5044325 m!6079260))

(assert (=> b!5044325 m!6079258))

(assert (=> b!5044325 m!6079260))

(declare-fun m!6079262 () Bool)

(assert (=> b!5044325 m!6079262))

(declare-fun m!6079264 () Bool)

(assert (=> b!5044324 m!6079264))

(assert (=> b!5044111 d!1623395))

(declare-fun d!1623397 () Bool)

(declare-fun res!2148844 () Bool)

(declare-fun e!3149903 () Bool)

(assert (=> d!1623397 (=> (not res!2148844) (not e!3149903))))

(assert (=> d!1623397 (= res!2148844 (= (csize!31274 (right!43042 t!4198)) (+ (size!38925 (left!42712 (right!43042 t!4198))) (size!38925 (right!43042 (right!43042 t!4198))))))))

(assert (=> d!1623397 (= (inv!77207 (right!43042 t!4198)) e!3149903)))

(declare-fun b!5044326 () Bool)

(declare-fun res!2148845 () Bool)

(assert (=> b!5044326 (=> (not res!2148845) (not e!3149903))))

(assert (=> b!5044326 (= res!2148845 (and (not (= (left!42712 (right!43042 t!4198)) Empty!15522)) (not (= (right!43042 (right!43042 t!4198)) Empty!15522))))))

(declare-fun b!5044327 () Bool)

(declare-fun res!2148846 () Bool)

(assert (=> b!5044327 (=> (not res!2148846) (not e!3149903))))

(assert (=> b!5044327 (= res!2148846 (= (cheight!15733 (right!43042 t!4198)) (+ (max!0 (height!2100 (left!42712 (right!43042 t!4198))) (height!2100 (right!43042 (right!43042 t!4198)))) 1)))))

(declare-fun b!5044328 () Bool)

(assert (=> b!5044328 (= e!3149903 (<= 0 (cheight!15733 (right!43042 t!4198))))))

(assert (= (and d!1623397 res!2148844) b!5044326))

(assert (= (and b!5044326 res!2148845) b!5044327))

(assert (= (and b!5044327 res!2148846) b!5044328))

(declare-fun m!6079266 () Bool)

(assert (=> d!1623397 m!6079266))

(declare-fun m!6079268 () Bool)

(assert (=> d!1623397 m!6079268))

(assert (=> b!5044327 m!6079188))

(assert (=> b!5044327 m!6079190))

(assert (=> b!5044327 m!6079188))

(assert (=> b!5044327 m!6079190))

(declare-fun m!6079270 () Bool)

(assert (=> b!5044327 m!6079270))

(assert (=> b!5044179 d!1623397))

(declare-fun d!1623399 () Bool)

(assert (=> d!1623399 (= (list!18931 (xs!18848 (left!42712 t!4198))) (innerList!15610 (xs!18848 (left!42712 t!4198))))))

(assert (=> b!5044110 d!1623399))

(declare-fun d!1623401 () Bool)

(declare-fun res!2148847 () Bool)

(declare-fun e!3149904 () Bool)

(assert (=> d!1623401 (=> (not res!2148847) (not e!3149904))))

(assert (=> d!1623401 (= res!2148847 (<= (size!38924 (list!18931 (xs!18848 (right!43042 t!4198)))) 512))))

(assert (=> d!1623401 (= (inv!77208 (right!43042 t!4198)) e!3149904)))

(declare-fun b!5044329 () Bool)

(declare-fun res!2148848 () Bool)

(assert (=> b!5044329 (=> (not res!2148848) (not e!3149904))))

(assert (=> b!5044329 (= res!2148848 (= (csize!31275 (right!43042 t!4198)) (size!38924 (list!18931 (xs!18848 (right!43042 t!4198))))))))

(declare-fun b!5044330 () Bool)

(assert (=> b!5044330 (= e!3149904 (and (> (csize!31275 (right!43042 t!4198)) 0) (<= (csize!31275 (right!43042 t!4198)) 512)))))

(assert (= (and d!1623401 res!2148847) b!5044329))

(assert (= (and b!5044329 res!2148848) b!5044330))

(assert (=> d!1623401 m!6079024))

(assert (=> d!1623401 m!6079024))

(declare-fun m!6079276 () Bool)

(assert (=> d!1623401 m!6079276))

(assert (=> b!5044329 m!6079024))

(assert (=> b!5044329 m!6079024))

(assert (=> b!5044329 m!6079276))

(assert (=> b!5044181 d!1623401))

(declare-fun b!5044331 () Bool)

(declare-fun e!3149905 () Bool)

(declare-fun tp!1411512 () Bool)

(assert (=> b!5044331 (= e!3149905 (and tp_is_empty!36807 tp!1411512))))

(assert (=> b!5044222 (= tp!1411508 e!3149905)))

(assert (= (and b!5044222 ((_ is Cons!58310) (innerList!15610 (xs!18848 (left!42712 t!4198))))) b!5044331))

(declare-fun b!5044332 () Bool)

(declare-fun tp!1411514 () Bool)

(declare-fun tp!1411513 () Bool)

(declare-fun e!3149907 () Bool)

(assert (=> b!5044332 (= e!3149907 (and (inv!77205 (left!42712 (left!42712 (right!43042 t!4198)))) tp!1411513 (inv!77205 (right!43042 (left!42712 (right!43042 t!4198)))) tp!1411514))))

(declare-fun b!5044334 () Bool)

(declare-fun e!3149906 () Bool)

(declare-fun tp!1411515 () Bool)

(assert (=> b!5044334 (= e!3149906 tp!1411515)))

(declare-fun b!5044333 () Bool)

(assert (=> b!5044333 (= e!3149907 (and (inv!77206 (xs!18848 (left!42712 (right!43042 t!4198)))) e!3149906))))

(assert (=> b!5044223 (= tp!1411509 (and (inv!77205 (left!42712 (right!43042 t!4198))) e!3149907))))

(assert (= (and b!5044223 ((_ is Node!15522) (left!42712 (right!43042 t!4198)))) b!5044332))

(assert (= b!5044333 b!5044334))

(assert (= (and b!5044223 ((_ is Leaf!25747) (left!42712 (right!43042 t!4198)))) b!5044333))

(declare-fun m!6079278 () Bool)

(assert (=> b!5044332 m!6079278))

(declare-fun m!6079280 () Bool)

(assert (=> b!5044332 m!6079280))

(declare-fun m!6079282 () Bool)

(assert (=> b!5044333 m!6079282))

(assert (=> b!5044223 m!6079104))

(declare-fun tp!1411516 () Bool)

(declare-fun tp!1411517 () Bool)

(declare-fun e!3149909 () Bool)

(declare-fun b!5044335 () Bool)

(assert (=> b!5044335 (= e!3149909 (and (inv!77205 (left!42712 (right!43042 (right!43042 t!4198)))) tp!1411516 (inv!77205 (right!43042 (right!43042 (right!43042 t!4198)))) tp!1411517))))

(declare-fun b!5044337 () Bool)

(declare-fun e!3149908 () Bool)

(declare-fun tp!1411518 () Bool)

(assert (=> b!5044337 (= e!3149908 tp!1411518)))

(declare-fun b!5044336 () Bool)

(assert (=> b!5044336 (= e!3149909 (and (inv!77206 (xs!18848 (right!43042 (right!43042 t!4198)))) e!3149908))))

(assert (=> b!5044223 (= tp!1411510 (and (inv!77205 (right!43042 (right!43042 t!4198))) e!3149909))))

(assert (= (and b!5044223 ((_ is Node!15522) (right!43042 (right!43042 t!4198)))) b!5044335))

(assert (= b!5044336 b!5044337))

(assert (= (and b!5044223 ((_ is Leaf!25747) (right!43042 (right!43042 t!4198)))) b!5044336))

(declare-fun m!6079284 () Bool)

(assert (=> b!5044335 m!6079284))

(declare-fun m!6079286 () Bool)

(assert (=> b!5044335 m!6079286))

(declare-fun m!6079288 () Bool)

(assert (=> b!5044336 m!6079288))

(assert (=> b!5044223 m!6079106))

(declare-fun b!5044338 () Bool)

(declare-fun e!3149910 () Bool)

(declare-fun tp!1411519 () Bool)

(assert (=> b!5044338 (= e!3149910 (and tp_is_empty!36807 tp!1411519))))

(assert (=> b!5044205 (= tp!1411493 e!3149910)))

(assert (= (and b!5044205 ((_ is Cons!58310) (t!371021 (innerList!15610 (xs!18848 t!4198))))) b!5044338))

(declare-fun tp!1411521 () Bool)

(declare-fun tp!1411520 () Bool)

(declare-fun b!5044339 () Bool)

(declare-fun e!3149912 () Bool)

(assert (=> b!5044339 (= e!3149912 (and (inv!77205 (left!42712 (left!42712 (left!42712 t!4198)))) tp!1411520 (inv!77205 (right!43042 (left!42712 (left!42712 t!4198)))) tp!1411521))))

(declare-fun b!5044341 () Bool)

(declare-fun e!3149911 () Bool)

(declare-fun tp!1411522 () Bool)

(assert (=> b!5044341 (= e!3149911 tp!1411522)))

(declare-fun b!5044340 () Bool)

(assert (=> b!5044340 (= e!3149912 (and (inv!77206 (xs!18848 (left!42712 (left!42712 t!4198)))) e!3149911))))

(assert (=> b!5044220 (= tp!1411506 (and (inv!77205 (left!42712 (left!42712 t!4198))) e!3149912))))

(assert (= (and b!5044220 ((_ is Node!15522) (left!42712 (left!42712 t!4198)))) b!5044339))

(assert (= b!5044340 b!5044341))

(assert (= (and b!5044220 ((_ is Leaf!25747) (left!42712 (left!42712 t!4198)))) b!5044340))

(declare-fun m!6079290 () Bool)

(assert (=> b!5044339 m!6079290))

(declare-fun m!6079292 () Bool)

(assert (=> b!5044339 m!6079292))

(declare-fun m!6079294 () Bool)

(assert (=> b!5044340 m!6079294))

(assert (=> b!5044220 m!6079098))

(declare-fun e!3149916 () Bool)

(declare-fun tp!1411524 () Bool)

(declare-fun tp!1411523 () Bool)

(declare-fun b!5044346 () Bool)

(assert (=> b!5044346 (= e!3149916 (and (inv!77205 (left!42712 (right!43042 (left!42712 t!4198)))) tp!1411523 (inv!77205 (right!43042 (right!43042 (left!42712 t!4198)))) tp!1411524))))

(declare-fun b!5044348 () Bool)

(declare-fun e!3149915 () Bool)

(declare-fun tp!1411525 () Bool)

(assert (=> b!5044348 (= e!3149915 tp!1411525)))

(declare-fun b!5044347 () Bool)

(assert (=> b!5044347 (= e!3149916 (and (inv!77206 (xs!18848 (right!43042 (left!42712 t!4198)))) e!3149915))))

(assert (=> b!5044220 (= tp!1411507 (and (inv!77205 (right!43042 (left!42712 t!4198))) e!3149916))))

(assert (= (and b!5044220 ((_ is Node!15522) (right!43042 (left!42712 t!4198)))) b!5044346))

(assert (= b!5044347 b!5044348))

(assert (= (and b!5044220 ((_ is Leaf!25747) (right!43042 (left!42712 t!4198)))) b!5044347))

(declare-fun m!6079296 () Bool)

(assert (=> b!5044346 m!6079296))

(declare-fun m!6079298 () Bool)

(assert (=> b!5044346 m!6079298))

(declare-fun m!6079300 () Bool)

(assert (=> b!5044347 m!6079300))

(assert (=> b!5044220 m!6079100))

(declare-fun b!5044349 () Bool)

(declare-fun e!3149917 () Bool)

(declare-fun tp!1411526 () Bool)

(assert (=> b!5044349 (= e!3149917 (and tp_is_empty!36807 tp!1411526))))

(assert (=> b!5044225 (= tp!1411511 e!3149917)))

(assert (= (and b!5044225 ((_ is Cons!58310) (innerList!15610 (xs!18848 (right!43042 t!4198))))) b!5044349))

(check-sat (not d!1623337) (not b!5044297) (not b!5044341) (not b!5044220) (not b!5044231) (not b!5044256) (not b!5044333) (not b!5044273) (not d!1623359) (not b!5044331) (not b!5044228) (not b!5044329) (not b!5044253) (not b!5044234) (not b!5044337) (not d!1623379) (not b!5044338) (not b!5044327) (not b!5044237) (not b!5044321) (not d!1623345) (not b!5044336) (not b!5044295) (not b!5044325) (not b!5044247) (not b!5044262) (not b!5044332) (not b!5044324) (not d!1623363) (not b!5044235) (not b!5044223) (not b!5044334) (not b!5044271) (not b!5044289) (not b!5044296) (not b!5044294) (not b!5044335) (not b!5044274) (not b!5044263) tp_is_empty!36807 (not b!5044340) (not b!5044257) (not b!5044299) (not b!5044306) (not d!1623335) (not b!5044315) (not b!5044309) (not d!1623391) (not b!5044259) (not b!5044349) (not b!5044275) (not b!5044346) (not d!1623397) (not b!5044252) (not b!5044311) (not b!5044232) (not b!5044278) (not b!5044276) (not d!1623343) (not b!5044320) (not d!1623365) (not b!5044316) (not b!5044229) (not b!5044304) (not d!1623401) (not b!5044339) (not b!5044298) (not b!5044277) (not b!5044226) (not b!5044347) (not b!5044312) (not b!5044248) (not b!5044348) (not d!1623389))
(check-sat)
(get-model)

(assert (=> b!5044223 d!1623331))

(assert (=> b!5044223 d!1623333))

(declare-fun d!1623453 () Bool)

(assert (=> d!1623453 (= (height!2100 (left!42712 (left!42712 t!4198))) (ite ((_ is Empty!15522) (left!42712 (left!42712 t!4198))) 0 (ite ((_ is Leaf!25747) (left!42712 (left!42712 t!4198))) 1 (cheight!15733 (left!42712 (left!42712 t!4198))))))))

(assert (=> b!5044299 d!1623453))

(declare-fun d!1623455 () Bool)

(assert (=> d!1623455 (= (height!2100 (right!43042 (left!42712 t!4198))) (ite ((_ is Empty!15522) (right!43042 (left!42712 t!4198))) 0 (ite ((_ is Leaf!25747) (right!43042 (left!42712 t!4198))) 1 (cheight!15733 (right!43042 (left!42712 t!4198))))))))

(assert (=> b!5044299 d!1623455))

(declare-fun d!1623457 () Bool)

(assert (=> d!1623457 (= (list!18931 (xs!18848 t!4198)) (innerList!15610 (xs!18848 t!4198)))))

(assert (=> b!5044262 d!1623457))

(declare-fun d!1623459 () Bool)

(declare-fun c!864600 () Bool)

(assert (=> d!1623459 (= c!864600 ((_ is Node!15522) (left!42712 (left!42712 (right!43042 t!4198)))))))

(declare-fun e!3149965 () Bool)

(assert (=> d!1623459 (= (inv!77205 (left!42712 (left!42712 (right!43042 t!4198)))) e!3149965)))

(declare-fun b!5044442 () Bool)

(assert (=> b!5044442 (= e!3149965 (inv!77207 (left!42712 (left!42712 (right!43042 t!4198)))))))

(declare-fun b!5044443 () Bool)

(declare-fun e!3149966 () Bool)

(assert (=> b!5044443 (= e!3149965 e!3149966)))

(declare-fun res!2148890 () Bool)

(assert (=> b!5044443 (= res!2148890 (not ((_ is Leaf!25747) (left!42712 (left!42712 (right!43042 t!4198))))))))

(assert (=> b!5044443 (=> res!2148890 e!3149966)))

(declare-fun b!5044444 () Bool)

(assert (=> b!5044444 (= e!3149966 (inv!77208 (left!42712 (left!42712 (right!43042 t!4198)))))))

(assert (= (and d!1623459 c!864600) b!5044442))

(assert (= (and d!1623459 (not c!864600)) b!5044443))

(assert (= (and b!5044443 (not res!2148890)) b!5044444))

(declare-fun m!6079446 () Bool)

(assert (=> b!5044442 m!6079446))

(declare-fun m!6079448 () Bool)

(assert (=> b!5044444 m!6079448))

(assert (=> b!5044332 d!1623459))

(declare-fun d!1623461 () Bool)

(declare-fun c!864601 () Bool)

(assert (=> d!1623461 (= c!864601 ((_ is Node!15522) (right!43042 (left!42712 (right!43042 t!4198)))))))

(declare-fun e!3149967 () Bool)

(assert (=> d!1623461 (= (inv!77205 (right!43042 (left!42712 (right!43042 t!4198)))) e!3149967)))

(declare-fun b!5044445 () Bool)

(assert (=> b!5044445 (= e!3149967 (inv!77207 (right!43042 (left!42712 (right!43042 t!4198)))))))

(declare-fun b!5044446 () Bool)

(declare-fun e!3149968 () Bool)

(assert (=> b!5044446 (= e!3149967 e!3149968)))

(declare-fun res!2148891 () Bool)

(assert (=> b!5044446 (= res!2148891 (not ((_ is Leaf!25747) (right!43042 (left!42712 (right!43042 t!4198))))))))

(assert (=> b!5044446 (=> res!2148891 e!3149968)))

(declare-fun b!5044447 () Bool)

(assert (=> b!5044447 (= e!3149968 (inv!77208 (right!43042 (left!42712 (right!43042 t!4198)))))))

(assert (= (and d!1623461 c!864601) b!5044445))

(assert (= (and d!1623461 (not c!864601)) b!5044446))

(assert (= (and b!5044446 (not res!2148891)) b!5044447))

(declare-fun m!6079450 () Bool)

(assert (=> b!5044445 m!6079450))

(declare-fun m!6079452 () Bool)

(assert (=> b!5044447 m!6079452))

(assert (=> b!5044332 d!1623461))

(declare-fun d!1623463 () Bool)

(declare-fun lt!2084924 () Int)

(assert (=> d!1623463 (>= lt!2084924 0)))

(declare-fun e!3149969 () Int)

(assert (=> d!1623463 (= lt!2084924 e!3149969)))

(declare-fun c!864602 () Bool)

(assert (=> d!1623463 (= c!864602 ((_ is Nil!58310) (list!18931 (xs!18848 (left!42712 t!4198)))))))

(assert (=> d!1623463 (= (size!38924 (list!18931 (xs!18848 (left!42712 t!4198)))) lt!2084924)))

(declare-fun b!5044448 () Bool)

(assert (=> b!5044448 (= e!3149969 0)))

(declare-fun b!5044449 () Bool)

(assert (=> b!5044449 (= e!3149969 (+ 1 (size!38924 (t!371021 (list!18931 (xs!18848 (left!42712 t!4198)))))))))

(assert (= (and d!1623463 c!864602) b!5044448))

(assert (= (and d!1623463 (not c!864602)) b!5044449))

(declare-fun m!6079454 () Bool)

(assert (=> b!5044449 m!6079454))

(assert (=> b!5044289 d!1623463))

(assert (=> b!5044289 d!1623399))

(declare-fun d!1623465 () Bool)

(declare-fun lt!2084925 () Int)

(assert (=> d!1623465 (>= lt!2084925 0)))

(declare-fun e!3149970 () Int)

(assert (=> d!1623465 (= lt!2084925 e!3149970)))

(declare-fun c!864603 () Bool)

(assert (=> d!1623465 (= c!864603 ((_ is Nil!58310) (list!18931 (xs!18848 (right!43042 t!4198)))))))

(assert (=> d!1623465 (= (size!38924 (list!18931 (xs!18848 (right!43042 t!4198)))) lt!2084925)))

(declare-fun b!5044450 () Bool)

(assert (=> b!5044450 (= e!3149970 0)))

(declare-fun b!5044451 () Bool)

(assert (=> b!5044451 (= e!3149970 (+ 1 (size!38924 (t!371021 (list!18931 (xs!18848 (right!43042 t!4198)))))))))

(assert (= (and d!1623465 c!864603) b!5044450))

(assert (= (and d!1623465 (not c!864603)) b!5044451))

(declare-fun m!6079456 () Bool)

(assert (=> b!5044451 m!6079456))

(assert (=> b!5044329 d!1623465))

(assert (=> b!5044329 d!1623329))

(declare-fun d!1623467 () Bool)

(assert (=> d!1623467 (= (max!0 (height!2100 (left!42712 t!4198)) (height!2100 (right!43042 t!4198))) (ite (< (height!2100 (left!42712 t!4198)) (height!2100 (right!43042 t!4198))) (height!2100 (right!43042 t!4198)) (height!2100 (left!42712 t!4198))))))

(assert (=> b!5044306 d!1623467))

(assert (=> b!5044306 d!1623351))

(assert (=> b!5044306 d!1623353))

(declare-fun d!1623469 () Bool)

(assert (=> d!1623469 (= (list!18931 (xs!18848 (right!43042 (left!42712 t!4198)))) (innerList!15610 (xs!18848 (right!43042 (left!42712 t!4198)))))))

(assert (=> b!5044324 d!1623469))

(declare-fun d!1623471 () Bool)

(declare-fun c!864604 () Bool)

(assert (=> d!1623471 (= c!864604 ((_ is Node!15522) (left!42712 (left!42712 (left!42712 t!4198)))))))

(declare-fun e!3149971 () Bool)

(assert (=> d!1623471 (= (inv!77205 (left!42712 (left!42712 (left!42712 t!4198)))) e!3149971)))

(declare-fun b!5044452 () Bool)

(assert (=> b!5044452 (= e!3149971 (inv!77207 (left!42712 (left!42712 (left!42712 t!4198)))))))

(declare-fun b!5044453 () Bool)

(declare-fun e!3149972 () Bool)

(assert (=> b!5044453 (= e!3149971 e!3149972)))

(declare-fun res!2148892 () Bool)

(assert (=> b!5044453 (= res!2148892 (not ((_ is Leaf!25747) (left!42712 (left!42712 (left!42712 t!4198))))))))

(assert (=> b!5044453 (=> res!2148892 e!3149972)))

(declare-fun b!5044454 () Bool)

(assert (=> b!5044454 (= e!3149972 (inv!77208 (left!42712 (left!42712 (left!42712 t!4198)))))))

(assert (= (and d!1623471 c!864604) b!5044452))

(assert (= (and d!1623471 (not c!864604)) b!5044453))

(assert (= (and b!5044453 (not res!2148892)) b!5044454))

(declare-fun m!6079458 () Bool)

(assert (=> b!5044452 m!6079458))

(declare-fun m!6079460 () Bool)

(assert (=> b!5044454 m!6079460))

(assert (=> b!5044339 d!1623471))

(declare-fun d!1623473 () Bool)

(declare-fun c!864605 () Bool)

(assert (=> d!1623473 (= c!864605 ((_ is Node!15522) (right!43042 (left!42712 (left!42712 t!4198)))))))

(declare-fun e!3149973 () Bool)

(assert (=> d!1623473 (= (inv!77205 (right!43042 (left!42712 (left!42712 t!4198)))) e!3149973)))

(declare-fun b!5044455 () Bool)

(assert (=> b!5044455 (= e!3149973 (inv!77207 (right!43042 (left!42712 (left!42712 t!4198)))))))

(declare-fun b!5044456 () Bool)

(declare-fun e!3149974 () Bool)

(assert (=> b!5044456 (= e!3149973 e!3149974)))

(declare-fun res!2148893 () Bool)

(assert (=> b!5044456 (= res!2148893 (not ((_ is Leaf!25747) (right!43042 (left!42712 (left!42712 t!4198))))))))

(assert (=> b!5044456 (=> res!2148893 e!3149974)))

(declare-fun b!5044457 () Bool)

(assert (=> b!5044457 (= e!3149974 (inv!77208 (right!43042 (left!42712 (left!42712 t!4198)))))))

(assert (= (and d!1623473 c!864605) b!5044455))

(assert (= (and d!1623473 (not c!864605)) b!5044456))

(assert (= (and b!5044456 (not res!2148893)) b!5044457))

(declare-fun m!6079462 () Bool)

(assert (=> b!5044455 m!6079462))

(declare-fun m!6079464 () Bool)

(assert (=> b!5044457 m!6079464))

(assert (=> b!5044339 d!1623473))

(declare-fun d!1623475 () Bool)

(declare-fun lt!2084926 () Int)

(assert (=> d!1623475 (>= lt!2084926 0)))

(declare-fun e!3149975 () Int)

(assert (=> d!1623475 (= lt!2084926 e!3149975)))

(declare-fun c!864606 () Bool)

(assert (=> d!1623475 (= c!864606 ((_ is Nil!58310) lt!2084911))))

(assert (=> d!1623475 (= (size!38924 lt!2084911) lt!2084926)))

(declare-fun b!5044458 () Bool)

(assert (=> b!5044458 (= e!3149975 0)))

(declare-fun b!5044459 () Bool)

(assert (=> b!5044459 (= e!3149975 (+ 1 (size!38924 (t!371021 lt!2084911))))))

(assert (= (and d!1623475 c!864606) b!5044458))

(assert (= (and d!1623475 (not c!864606)) b!5044459))

(declare-fun m!6079466 () Bool)

(assert (=> b!5044459 m!6079466))

(assert (=> b!5044316 d!1623475))

(declare-fun d!1623477 () Bool)

(declare-fun lt!2084927 () Int)

(assert (=> d!1623477 (>= lt!2084927 0)))

(declare-fun e!3149976 () Int)

(assert (=> d!1623477 (= lt!2084927 e!3149976)))

(declare-fun c!864607 () Bool)

(assert (=> d!1623477 (= c!864607 ((_ is Nil!58310) (list!18929 (left!42712 (left!42712 t!4198)))))))

(assert (=> d!1623477 (= (size!38924 (list!18929 (left!42712 (left!42712 t!4198)))) lt!2084927)))

(declare-fun b!5044460 () Bool)

(assert (=> b!5044460 (= e!3149976 0)))

(declare-fun b!5044461 () Bool)

(assert (=> b!5044461 (= e!3149976 (+ 1 (size!38924 (t!371021 (list!18929 (left!42712 (left!42712 t!4198)))))))))

(assert (= (and d!1623477 c!864607) b!5044460))

(assert (= (and d!1623477 (not c!864607)) b!5044461))

(declare-fun m!6079468 () Bool)

(assert (=> b!5044461 m!6079468))

(assert (=> b!5044316 d!1623477))

(declare-fun d!1623479 () Bool)

(declare-fun lt!2084928 () Int)

(assert (=> d!1623479 (>= lt!2084928 0)))

(declare-fun e!3149977 () Int)

(assert (=> d!1623479 (= lt!2084928 e!3149977)))

(declare-fun c!864608 () Bool)

(assert (=> d!1623479 (= c!864608 ((_ is Nil!58310) (list!18929 (right!43042 (left!42712 t!4198)))))))

(assert (=> d!1623479 (= (size!38924 (list!18929 (right!43042 (left!42712 t!4198)))) lt!2084928)))

(declare-fun b!5044462 () Bool)

(assert (=> b!5044462 (= e!3149977 0)))

(declare-fun b!5044463 () Bool)

(assert (=> b!5044463 (= e!3149977 (+ 1 (size!38924 (t!371021 (list!18929 (right!43042 (left!42712 t!4198)))))))))

(assert (= (and d!1623479 c!864608) b!5044462))

(assert (= (and d!1623479 (not c!864608)) b!5044463))

(declare-fun m!6079470 () Bool)

(assert (=> b!5044463 m!6079470))

(assert (=> b!5044316 d!1623479))

(declare-fun d!1623481 () Bool)

(declare-fun lt!2084929 () Int)

(assert (=> d!1623481 (>= lt!2084929 0)))

(declare-fun e!3149978 () Int)

(assert (=> d!1623481 (= lt!2084929 e!3149978)))

(declare-fun c!864609 () Bool)

(assert (=> d!1623481 (= c!864609 ((_ is Nil!58310) (innerList!15610 (xs!18848 (left!42712 t!4198)))))))

(assert (=> d!1623481 (= (size!38924 (innerList!15610 (xs!18848 (left!42712 t!4198)))) lt!2084929)))

(declare-fun b!5044464 () Bool)

(assert (=> b!5044464 (= e!3149978 0)))

(declare-fun b!5044465 () Bool)

(assert (=> b!5044465 (= e!3149978 (+ 1 (size!38924 (t!371021 (innerList!15610 (xs!18848 (left!42712 t!4198)))))))))

(assert (= (and d!1623481 c!864609) b!5044464))

(assert (= (and d!1623481 (not c!864609)) b!5044465))

(declare-fun m!6079472 () Bool)

(assert (=> b!5044465 m!6079472))

(assert (=> d!1623363 d!1623481))

(declare-fun d!1623483 () Bool)

(declare-fun res!2148894 () Bool)

(declare-fun e!3149979 () Bool)

(assert (=> d!1623483 (=> (not res!2148894) (not e!3149979))))

(assert (=> d!1623483 (= res!2148894 (= (csize!31274 (left!42712 (right!43042 t!4198))) (+ (size!38925 (left!42712 (left!42712 (right!43042 t!4198)))) (size!38925 (right!43042 (left!42712 (right!43042 t!4198)))))))))

(assert (=> d!1623483 (= (inv!77207 (left!42712 (right!43042 t!4198))) e!3149979)))

(declare-fun b!5044466 () Bool)

(declare-fun res!2148895 () Bool)

(assert (=> b!5044466 (=> (not res!2148895) (not e!3149979))))

(assert (=> b!5044466 (= res!2148895 (and (not (= (left!42712 (left!42712 (right!43042 t!4198))) Empty!15522)) (not (= (right!43042 (left!42712 (right!43042 t!4198))) Empty!15522))))))

(declare-fun b!5044467 () Bool)

(declare-fun res!2148896 () Bool)

(assert (=> b!5044467 (=> (not res!2148896) (not e!3149979))))

(assert (=> b!5044467 (= res!2148896 (= (cheight!15733 (left!42712 (right!43042 t!4198))) (+ (max!0 (height!2100 (left!42712 (left!42712 (right!43042 t!4198)))) (height!2100 (right!43042 (left!42712 (right!43042 t!4198))))) 1)))))

(declare-fun b!5044468 () Bool)

(assert (=> b!5044468 (= e!3149979 (<= 0 (cheight!15733 (left!42712 (right!43042 t!4198)))))))

(assert (= (and d!1623483 res!2148894) b!5044466))

(assert (= (and b!5044466 res!2148895) b!5044467))

(assert (= (and b!5044467 res!2148896) b!5044468))

(declare-fun m!6079474 () Bool)

(assert (=> d!1623483 m!6079474))

(declare-fun m!6079476 () Bool)

(assert (=> d!1623483 m!6079476))

(declare-fun m!6079478 () Bool)

(assert (=> b!5044467 m!6079478))

(declare-fun m!6079480 () Bool)

(assert (=> b!5044467 m!6079480))

(assert (=> b!5044467 m!6079478))

(assert (=> b!5044467 m!6079480))

(declare-fun m!6079482 () Bool)

(assert (=> b!5044467 m!6079482))

(assert (=> b!5044226 d!1623483))

(declare-fun d!1623485 () Bool)

(declare-fun lt!2084930 () Bool)

(assert (=> d!1623485 (= lt!2084930 (isEmpty!31551 (list!18929 (right!43042 (right!43042 t!4198)))))))

(assert (=> d!1623485 (= lt!2084930 (= (size!38925 (right!43042 (right!43042 t!4198))) 0))))

(assert (=> d!1623485 (= (isEmpty!31550 (right!43042 (right!43042 t!4198))) lt!2084930)))

(declare-fun bs!1189086 () Bool)

(assert (= bs!1189086 d!1623485))

(assert (=> bs!1189086 m!6079020))

(assert (=> bs!1189086 m!6079020))

(declare-fun m!6079484 () Bool)

(assert (=> bs!1189086 m!6079484))

(assert (=> bs!1189086 m!6079268))

(assert (=> b!5044274 d!1623485))

(declare-fun d!1623487 () Bool)

(assert (=> d!1623487 (= (isEmpty!31551 (list!18929 (left!42712 t!4198))) ((_ is Nil!58310) (list!18929 (left!42712 t!4198))))))

(assert (=> d!1623343 d!1623487))

(assert (=> d!1623343 d!1623295))

(declare-fun d!1623489 () Bool)

(declare-fun lt!2084931 () Int)

(assert (=> d!1623489 (= lt!2084931 (size!38924 (list!18929 (left!42712 t!4198))))))

(assert (=> d!1623489 (= lt!2084931 (ite ((_ is Empty!15522) (left!42712 t!4198)) 0 (ite ((_ is Leaf!25747) (left!42712 t!4198)) (csize!31275 (left!42712 t!4198)) (csize!31274 (left!42712 t!4198)))))))

(assert (=> d!1623489 (= (size!38925 (left!42712 t!4198)) lt!2084931)))

(declare-fun bs!1189087 () Bool)

(assert (= bs!1189087 d!1623489))

(assert (=> bs!1189087 m!6078966))

(assert (=> bs!1189087 m!6078966))

(assert (=> bs!1189087 m!6078968))

(assert (=> d!1623343 d!1623489))

(declare-fun d!1623491 () Bool)

(assert (=> d!1623491 (= (max!0 (height!2100 (left!42712 (left!42712 t!4198))) (height!2100 (right!43042 (left!42712 t!4198)))) (ite (< (height!2100 (left!42712 (left!42712 t!4198))) (height!2100 (right!43042 (left!42712 t!4198)))) (height!2100 (right!43042 (left!42712 t!4198))) (height!2100 (left!42712 (left!42712 t!4198)))))))

(assert (=> b!5044271 d!1623491))

(assert (=> b!5044271 d!1623453))

(assert (=> b!5044271 d!1623455))

(declare-fun d!1623493 () Bool)

(assert (=> d!1623493 (= (list!18931 (xs!18848 (left!42712 (left!42712 t!4198)))) (innerList!15610 (xs!18848 (left!42712 (left!42712 t!4198)))))))

(assert (=> b!5044320 d!1623493))

(declare-fun d!1623495 () Bool)

(assert (=> d!1623495 (= (inv!77206 (xs!18848 (left!42712 (left!42712 t!4198)))) (<= (size!38924 (innerList!15610 (xs!18848 (left!42712 (left!42712 t!4198))))) 2147483647))))

(declare-fun bs!1189088 () Bool)

(assert (= bs!1189088 d!1623495))

(declare-fun m!6079486 () Bool)

(assert (=> bs!1189088 m!6079486))

(assert (=> b!5044340 d!1623495))

(declare-fun b!5044471 () Bool)

(declare-fun res!2148897 () Bool)

(declare-fun e!3149981 () Bool)

(assert (=> b!5044471 (=> (not res!2148897) (not e!3149981))))

(declare-fun lt!2084932 () List!58434)

(assert (=> b!5044471 (= res!2148897 (= (size!38924 lt!2084932) (+ (size!38924 (list!18929 (left!42712 (right!43042 (right!43042 t!4198))))) (size!38924 (list!18929 (right!43042 (right!43042 (right!43042 t!4198))))))))))

(declare-fun b!5044472 () Bool)

(assert (=> b!5044472 (= e!3149981 (or (not (= (list!18929 (right!43042 (right!43042 (right!43042 t!4198)))) Nil!58310)) (= lt!2084932 (list!18929 (left!42712 (right!43042 (right!43042 t!4198)))))))))

(declare-fun b!5044470 () Bool)

(declare-fun e!3149980 () List!58434)

(assert (=> b!5044470 (= e!3149980 (Cons!58310 (h!64758 (list!18929 (left!42712 (right!43042 (right!43042 t!4198))))) (++!12734 (t!371021 (list!18929 (left!42712 (right!43042 (right!43042 t!4198))))) (list!18929 (right!43042 (right!43042 (right!43042 t!4198)))))))))

(declare-fun d!1623497 () Bool)

(assert (=> d!1623497 e!3149981))

(declare-fun res!2148898 () Bool)

(assert (=> d!1623497 (=> (not res!2148898) (not e!3149981))))

(assert (=> d!1623497 (= res!2148898 (= (content!10362 lt!2084932) ((_ map or) (content!10362 (list!18929 (left!42712 (right!43042 (right!43042 t!4198))))) (content!10362 (list!18929 (right!43042 (right!43042 (right!43042 t!4198))))))))))

(assert (=> d!1623497 (= lt!2084932 e!3149980)))

(declare-fun c!864610 () Bool)

(assert (=> d!1623497 (= c!864610 ((_ is Nil!58310) (list!18929 (left!42712 (right!43042 (right!43042 t!4198))))))))

(assert (=> d!1623497 (= (++!12734 (list!18929 (left!42712 (right!43042 (right!43042 t!4198)))) (list!18929 (right!43042 (right!43042 (right!43042 t!4198))))) lt!2084932)))

(declare-fun b!5044469 () Bool)

(assert (=> b!5044469 (= e!3149980 (list!18929 (right!43042 (right!43042 (right!43042 t!4198)))))))

(assert (= (and d!1623497 c!864610) b!5044469))

(assert (= (and d!1623497 (not c!864610)) b!5044470))

(assert (= (and d!1623497 res!2148898) b!5044471))

(assert (= (and b!5044471 res!2148897) b!5044472))

(declare-fun m!6079488 () Bool)

(assert (=> b!5044471 m!6079488))

(assert (=> b!5044471 m!6079158))

(declare-fun m!6079490 () Bool)

(assert (=> b!5044471 m!6079490))

(assert (=> b!5044471 m!6079160))

(declare-fun m!6079492 () Bool)

(assert (=> b!5044471 m!6079492))

(assert (=> b!5044470 m!6079160))

(declare-fun m!6079494 () Bool)

(assert (=> b!5044470 m!6079494))

(declare-fun m!6079496 () Bool)

(assert (=> d!1623497 m!6079496))

(assert (=> d!1623497 m!6079158))

(declare-fun m!6079498 () Bool)

(assert (=> d!1623497 m!6079498))

(assert (=> d!1623497 m!6079160))

(declare-fun m!6079500 () Bool)

(assert (=> d!1623497 m!6079500))

(assert (=> b!5044257 d!1623497))

(declare-fun b!5044476 () Bool)

(declare-fun e!3149983 () List!58434)

(assert (=> b!5044476 (= e!3149983 (++!12734 (list!18929 (left!42712 (left!42712 (right!43042 (right!43042 t!4198))))) (list!18929 (right!43042 (left!42712 (right!43042 (right!43042 t!4198)))))))))

(declare-fun b!5044474 () Bool)

(declare-fun e!3149982 () List!58434)

(assert (=> b!5044474 (= e!3149982 e!3149983)))

(declare-fun c!864612 () Bool)

(assert (=> b!5044474 (= c!864612 ((_ is Leaf!25747) (left!42712 (right!43042 (right!43042 t!4198)))))))

(declare-fun b!5044473 () Bool)

(assert (=> b!5044473 (= e!3149982 Nil!58310)))

(declare-fun d!1623499 () Bool)

(declare-fun c!864611 () Bool)

(assert (=> d!1623499 (= c!864611 ((_ is Empty!15522) (left!42712 (right!43042 (right!43042 t!4198)))))))

(assert (=> d!1623499 (= (list!18929 (left!42712 (right!43042 (right!43042 t!4198)))) e!3149982)))

(declare-fun b!5044475 () Bool)

(assert (=> b!5044475 (= e!3149983 (list!18931 (xs!18848 (left!42712 (right!43042 (right!43042 t!4198))))))))

(assert (= (and d!1623499 c!864611) b!5044473))

(assert (= (and d!1623499 (not c!864611)) b!5044474))

(assert (= (and b!5044474 c!864612) b!5044475))

(assert (= (and b!5044474 (not c!864612)) b!5044476))

(declare-fun m!6079502 () Bool)

(assert (=> b!5044476 m!6079502))

(declare-fun m!6079504 () Bool)

(assert (=> b!5044476 m!6079504))

(assert (=> b!5044476 m!6079502))

(assert (=> b!5044476 m!6079504))

(declare-fun m!6079506 () Bool)

(assert (=> b!5044476 m!6079506))

(declare-fun m!6079508 () Bool)

(assert (=> b!5044475 m!6079508))

(assert (=> b!5044257 d!1623499))

(declare-fun b!5044480 () Bool)

(declare-fun e!3149985 () List!58434)

(assert (=> b!5044480 (= e!3149985 (++!12734 (list!18929 (left!42712 (right!43042 (right!43042 (right!43042 t!4198))))) (list!18929 (right!43042 (right!43042 (right!43042 (right!43042 t!4198)))))))))

(declare-fun b!5044478 () Bool)

(declare-fun e!3149984 () List!58434)

(assert (=> b!5044478 (= e!3149984 e!3149985)))

(declare-fun c!864614 () Bool)

(assert (=> b!5044478 (= c!864614 ((_ is Leaf!25747) (right!43042 (right!43042 (right!43042 t!4198)))))))

(declare-fun b!5044477 () Bool)

(assert (=> b!5044477 (= e!3149984 Nil!58310)))

(declare-fun d!1623501 () Bool)

(declare-fun c!864613 () Bool)

(assert (=> d!1623501 (= c!864613 ((_ is Empty!15522) (right!43042 (right!43042 (right!43042 t!4198)))))))

(assert (=> d!1623501 (= (list!18929 (right!43042 (right!43042 (right!43042 t!4198)))) e!3149984)))

(declare-fun b!5044479 () Bool)

(assert (=> b!5044479 (= e!3149985 (list!18931 (xs!18848 (right!43042 (right!43042 (right!43042 t!4198))))))))

(assert (= (and d!1623501 c!864613) b!5044477))

(assert (= (and d!1623501 (not c!864613)) b!5044478))

(assert (= (and b!5044478 c!864614) b!5044479))

(assert (= (and b!5044478 (not c!864614)) b!5044480))

(declare-fun m!6079510 () Bool)

(assert (=> b!5044480 m!6079510))

(declare-fun m!6079512 () Bool)

(assert (=> b!5044480 m!6079512))

(assert (=> b!5044480 m!6079510))

(assert (=> b!5044480 m!6079512))

(declare-fun m!6079514 () Bool)

(assert (=> b!5044480 m!6079514))

(declare-fun m!6079516 () Bool)

(assert (=> b!5044479 m!6079516))

(assert (=> b!5044257 d!1623501))

(declare-fun d!1623503 () Bool)

(declare-fun lt!2084933 () Int)

(assert (=> d!1623503 (>= lt!2084933 0)))

(declare-fun e!3149986 () Int)

(assert (=> d!1623503 (= lt!2084933 e!3149986)))

(declare-fun c!864615 () Bool)

(assert (=> d!1623503 (= c!864615 ((_ is Nil!58310) (innerList!15610 (xs!18848 (right!43042 t!4198)))))))

(assert (=> d!1623503 (= (size!38924 (innerList!15610 (xs!18848 (right!43042 t!4198)))) lt!2084933)))

(declare-fun b!5044481 () Bool)

(assert (=> b!5044481 (= e!3149986 0)))

(declare-fun b!5044482 () Bool)

(assert (=> b!5044482 (= e!3149986 (+ 1 (size!38924 (t!371021 (innerList!15610 (xs!18848 (right!43042 t!4198)))))))))

(assert (= (and d!1623503 c!864615) b!5044481))

(assert (= (and d!1623503 (not c!864615)) b!5044482))

(declare-fun m!6079518 () Bool)

(assert (=> b!5044482 m!6079518))

(assert (=> d!1623335 d!1623503))

(declare-fun d!1623505 () Bool)

(declare-fun lt!2084934 () Int)

(assert (=> d!1623505 (>= lt!2084934 0)))

(declare-fun e!3149987 () Int)

(assert (=> d!1623505 (= lt!2084934 e!3149987)))

(declare-fun c!864616 () Bool)

(assert (=> d!1623505 (= c!864616 ((_ is Nil!58310) (list!18931 (xs!18848 t!4198))))))

(assert (=> d!1623505 (= (size!38924 (list!18931 (xs!18848 t!4198))) lt!2084934)))

(declare-fun b!5044483 () Bool)

(assert (=> b!5044483 (= e!3149987 0)))

(declare-fun b!5044484 () Bool)

(assert (=> b!5044484 (= e!3149987 (+ 1 (size!38924 (t!371021 (list!18931 (xs!18848 t!4198))))))))

(assert (= (and d!1623505 c!864616) b!5044483))

(assert (= (and d!1623505 (not c!864616)) b!5044484))

(declare-fun m!6079520 () Bool)

(assert (=> b!5044484 m!6079520))

(assert (=> d!1623389 d!1623505))

(assert (=> d!1623389 d!1623457))

(declare-fun d!1623507 () Bool)

(declare-fun res!2148899 () Bool)

(declare-fun e!3149988 () Bool)

(assert (=> d!1623507 (=> (not res!2148899) (not e!3149988))))

(assert (=> d!1623507 (= res!2148899 (<= (size!38924 (list!18931 (xs!18848 (left!42712 (left!42712 t!4198))))) 512))))

(assert (=> d!1623507 (= (inv!77208 (left!42712 (left!42712 t!4198))) e!3149988)))

(declare-fun b!5044485 () Bool)

(declare-fun res!2148900 () Bool)

(assert (=> b!5044485 (=> (not res!2148900) (not e!3149988))))

(assert (=> b!5044485 (= res!2148900 (= (csize!31275 (left!42712 (left!42712 t!4198))) (size!38924 (list!18931 (xs!18848 (left!42712 (left!42712 t!4198)))))))))

(declare-fun b!5044486 () Bool)

(assert (=> b!5044486 (= e!3149988 (and (> (csize!31275 (left!42712 (left!42712 t!4198))) 0) (<= (csize!31275 (left!42712 (left!42712 t!4198))) 512)))))

(assert (= (and d!1623507 res!2148899) b!5044485))

(assert (= (and b!5044485 res!2148900) b!5044486))

(assert (=> d!1623507 m!6079256))

(assert (=> d!1623507 m!6079256))

(declare-fun m!6079522 () Bool)

(assert (=> d!1623507 m!6079522))

(assert (=> b!5044485 m!6079256))

(assert (=> b!5044485 m!6079256))

(assert (=> b!5044485 m!6079522))

(assert (=> b!5044234 d!1623507))

(declare-fun d!1623509 () Bool)

(assert (=> d!1623509 (= (inv!77206 (xs!18848 (right!43042 (right!43042 t!4198)))) (<= (size!38924 (innerList!15610 (xs!18848 (right!43042 (right!43042 t!4198))))) 2147483647))))

(declare-fun bs!1189089 () Bool)

(assert (= bs!1189089 d!1623509))

(declare-fun m!6079524 () Bool)

(assert (=> bs!1189089 m!6079524))

(assert (=> b!5044336 d!1623509))

(assert (=> b!5044312 d!1623505))

(assert (=> b!5044312 d!1623457))

(declare-fun d!1623511 () Bool)

(declare-fun res!2148901 () Bool)

(declare-fun e!3149989 () Bool)

(assert (=> d!1623511 (=> (not res!2148901) (not e!3149989))))

(assert (=> d!1623511 (= res!2148901 (= (csize!31274 (left!42712 (left!42712 t!4198))) (+ (size!38925 (left!42712 (left!42712 (left!42712 t!4198)))) (size!38925 (right!43042 (left!42712 (left!42712 t!4198)))))))))

(assert (=> d!1623511 (= (inv!77207 (left!42712 (left!42712 t!4198))) e!3149989)))

(declare-fun b!5044487 () Bool)

(declare-fun res!2148902 () Bool)

(assert (=> b!5044487 (=> (not res!2148902) (not e!3149989))))

(assert (=> b!5044487 (= res!2148902 (and (not (= (left!42712 (left!42712 (left!42712 t!4198))) Empty!15522)) (not (= (right!43042 (left!42712 (left!42712 t!4198))) Empty!15522))))))

(declare-fun b!5044488 () Bool)

(declare-fun res!2148903 () Bool)

(assert (=> b!5044488 (=> (not res!2148903) (not e!3149989))))

(assert (=> b!5044488 (= res!2148903 (= (cheight!15733 (left!42712 (left!42712 t!4198))) (+ (max!0 (height!2100 (left!42712 (left!42712 (left!42712 t!4198)))) (height!2100 (right!43042 (left!42712 (left!42712 t!4198))))) 1)))))

(declare-fun b!5044489 () Bool)

(assert (=> b!5044489 (= e!3149989 (<= 0 (cheight!15733 (left!42712 (left!42712 t!4198)))))))

(assert (= (and d!1623511 res!2148901) b!5044487))

(assert (= (and b!5044487 res!2148902) b!5044488))

(assert (= (and b!5044488 res!2148903) b!5044489))

(declare-fun m!6079526 () Bool)

(assert (=> d!1623511 m!6079526))

(declare-fun m!6079528 () Bool)

(assert (=> d!1623511 m!6079528))

(declare-fun m!6079530 () Bool)

(assert (=> b!5044488 m!6079530))

(declare-fun m!6079532 () Bool)

(assert (=> b!5044488 m!6079532))

(assert (=> b!5044488 m!6079530))

(assert (=> b!5044488 m!6079532))

(declare-fun m!6079534 () Bool)

(assert (=> b!5044488 m!6079534))

(assert (=> b!5044232 d!1623511))

(declare-fun d!1623513 () Bool)

(assert (=> d!1623513 (= (list!18931 (xs!18848 (left!42712 (right!43042 t!4198)))) (innerList!15610 (xs!18848 (left!42712 (right!43042 t!4198)))))))

(assert (=> b!5044252 d!1623513))

(declare-fun d!1623515 () Bool)

(declare-fun res!2148904 () Bool)

(declare-fun e!3149990 () Bool)

(assert (=> d!1623515 (=> (not res!2148904) (not e!3149990))))

(assert (=> d!1623515 (= res!2148904 (<= (size!38924 (list!18931 (xs!18848 (left!42712 (right!43042 t!4198))))) 512))))

(assert (=> d!1623515 (= (inv!77208 (left!42712 (right!43042 t!4198))) e!3149990)))

(declare-fun b!5044490 () Bool)

(declare-fun res!2148905 () Bool)

(assert (=> b!5044490 (=> (not res!2148905) (not e!3149990))))

(assert (=> b!5044490 (= res!2148905 (= (csize!31275 (left!42712 (right!43042 t!4198))) (size!38924 (list!18931 (xs!18848 (left!42712 (right!43042 t!4198)))))))))

(declare-fun b!5044491 () Bool)

(assert (=> b!5044491 (= e!3149990 (and (> (csize!31275 (left!42712 (right!43042 t!4198))) 0) (<= (csize!31275 (left!42712 (right!43042 t!4198))) 512)))))

(assert (= (and d!1623515 res!2148904) b!5044490))

(assert (= (and b!5044490 res!2148905) b!5044491))

(assert (=> d!1623515 m!6079156))

(assert (=> d!1623515 m!6079156))

(declare-fun m!6079536 () Bool)

(assert (=> d!1623515 m!6079536))

(assert (=> b!5044490 m!6079156))

(assert (=> b!5044490 m!6079156))

(assert (=> b!5044490 m!6079536))

(assert (=> b!5044228 d!1623515))

(assert (=> d!1623365 d!1623463))

(assert (=> d!1623365 d!1623399))

(declare-fun d!1623517 () Bool)

(declare-fun lt!2084935 () Int)

(assert (=> d!1623517 (>= lt!2084935 0)))

(declare-fun e!3149991 () Int)

(assert (=> d!1623517 (= lt!2084935 e!3149991)))

(declare-fun c!864617 () Bool)

(assert (=> d!1623517 (= c!864617 ((_ is Nil!58310) (t!371021 (t!371021 (list!18929 (left!42712 t!4198))))))))

(assert (=> d!1623517 (= (size!38924 (t!371021 (t!371021 (list!18929 (left!42712 t!4198))))) lt!2084935)))

(declare-fun b!5044492 () Bool)

(assert (=> b!5044492 (= e!3149991 0)))

(declare-fun b!5044493 () Bool)

(assert (=> b!5044493 (= e!3149991 (+ 1 (size!38924 (t!371021 (t!371021 (t!371021 (list!18929 (left!42712 t!4198))))))))))

(assert (= (and d!1623517 c!864617) b!5044492))

(assert (= (and d!1623517 (not c!864617)) b!5044493))

(declare-fun m!6079538 () Bool)

(assert (=> b!5044493 m!6079538))

(assert (=> b!5044304 d!1623517))

(declare-fun b!5044494 () Bool)

(declare-fun res!2148908 () Bool)

(declare-fun e!3149993 () Bool)

(assert (=> b!5044494 (=> (not res!2148908) (not e!3149993))))

(assert (=> b!5044494 (= res!2148908 (<= (- (height!2100 (left!42712 (left!42712 (right!43042 t!4198)))) (height!2100 (right!43042 (left!42712 (right!43042 t!4198))))) 1))))

(declare-fun d!1623519 () Bool)

(declare-fun res!2148906 () Bool)

(declare-fun e!3149992 () Bool)

(assert (=> d!1623519 (=> res!2148906 e!3149992)))

(assert (=> d!1623519 (= res!2148906 (not ((_ is Node!15522) (left!42712 (right!43042 t!4198)))))))

(assert (=> d!1623519 (= (isBalanced!4384 (left!42712 (right!43042 t!4198))) e!3149992)))

(declare-fun b!5044495 () Bool)

(assert (=> b!5044495 (= e!3149993 (not (isEmpty!31550 (right!43042 (left!42712 (right!43042 t!4198))))))))

(declare-fun b!5044496 () Bool)

(declare-fun res!2148910 () Bool)

(assert (=> b!5044496 (=> (not res!2148910) (not e!3149993))))

(assert (=> b!5044496 (= res!2148910 (not (isEmpty!31550 (left!42712 (left!42712 (right!43042 t!4198))))))))

(declare-fun b!5044497 () Bool)

(declare-fun res!2148911 () Bool)

(assert (=> b!5044497 (=> (not res!2148911) (not e!3149993))))

(assert (=> b!5044497 (= res!2148911 (isBalanced!4384 (left!42712 (left!42712 (right!43042 t!4198)))))))

(declare-fun b!5044498 () Bool)

(declare-fun res!2148909 () Bool)

(assert (=> b!5044498 (=> (not res!2148909) (not e!3149993))))

(assert (=> b!5044498 (= res!2148909 (isBalanced!4384 (right!43042 (left!42712 (right!43042 t!4198)))))))

(declare-fun b!5044499 () Bool)

(assert (=> b!5044499 (= e!3149992 e!3149993)))

(declare-fun res!2148907 () Bool)

(assert (=> b!5044499 (=> (not res!2148907) (not e!3149993))))

(assert (=> b!5044499 (= res!2148907 (<= (- 1) (- (height!2100 (left!42712 (left!42712 (right!43042 t!4198)))) (height!2100 (right!43042 (left!42712 (right!43042 t!4198)))))))))

(assert (= (and d!1623519 (not res!2148906)) b!5044499))

(assert (= (and b!5044499 res!2148907) b!5044494))

(assert (= (and b!5044494 res!2148908) b!5044497))

(assert (= (and b!5044497 res!2148911) b!5044498))

(assert (= (and b!5044498 res!2148909) b!5044496))

(assert (= (and b!5044496 res!2148910) b!5044495))

(declare-fun m!6079540 () Bool)

(assert (=> b!5044496 m!6079540))

(declare-fun m!6079542 () Bool)

(assert (=> b!5044498 m!6079542))

(declare-fun m!6079544 () Bool)

(assert (=> b!5044497 m!6079544))

(assert (=> b!5044499 m!6079478))

(assert (=> b!5044499 m!6079480))

(assert (=> b!5044494 m!6079478))

(assert (=> b!5044494 m!6079480))

(declare-fun m!6079546 () Bool)

(assert (=> b!5044495 m!6079546))

(assert (=> b!5044276 d!1623519))

(assert (=> d!1623379 d!1623489))

(declare-fun d!1623521 () Bool)

(declare-fun lt!2084936 () Int)

(assert (=> d!1623521 (= lt!2084936 (size!38924 (list!18929 (right!43042 t!4198))))))

(assert (=> d!1623521 (= lt!2084936 (ite ((_ is Empty!15522) (right!43042 t!4198)) 0 (ite ((_ is Leaf!25747) (right!43042 t!4198)) (csize!31275 (right!43042 t!4198)) (csize!31274 (right!43042 t!4198)))))))

(assert (=> d!1623521 (= (size!38925 (right!43042 t!4198)) lt!2084936)))

(declare-fun bs!1189090 () Bool)

(assert (= bs!1189090 d!1623521))

(assert (=> bs!1189090 m!6078970))

(assert (=> bs!1189090 m!6078970))

(assert (=> bs!1189090 m!6078972))

(assert (=> d!1623379 d!1623521))

(declare-fun d!1623523 () Bool)

(declare-fun lt!2084937 () Int)

(assert (=> d!1623523 (>= lt!2084937 0)))

(declare-fun e!3149994 () Int)

(assert (=> d!1623523 (= lt!2084937 e!3149994)))

(declare-fun c!864618 () Bool)

(assert (=> d!1623523 (= c!864618 ((_ is Nil!58310) (t!371021 (t!371021 (list!18929 (right!43042 t!4198))))))))

(assert (=> d!1623523 (= (size!38924 (t!371021 (t!371021 (list!18929 (right!43042 t!4198))))) lt!2084937)))

(declare-fun b!5044500 () Bool)

(assert (=> b!5044500 (= e!3149994 0)))

(declare-fun b!5044501 () Bool)

(assert (=> b!5044501 (= e!3149994 (+ 1 (size!38924 (t!371021 (t!371021 (t!371021 (list!18929 (right!43042 t!4198))))))))))

(assert (= (and d!1623523 c!864618) b!5044500))

(assert (= (and d!1623523 (not c!864618)) b!5044501))

(declare-fun m!6079548 () Bool)

(assert (=> b!5044501 m!6079548))

(assert (=> b!5044309 d!1623523))

(declare-fun d!1623525 () Bool)

(assert (=> d!1623525 (= (height!2100 (left!42712 (right!43042 t!4198))) (ite ((_ is Empty!15522) (left!42712 (right!43042 t!4198))) 0 (ite ((_ is Leaf!25747) (left!42712 (right!43042 t!4198))) 1 (cheight!15733 (left!42712 (right!43042 t!4198))))))))

(assert (=> b!5044278 d!1623525))

(declare-fun d!1623527 () Bool)

(assert (=> d!1623527 (= (height!2100 (right!43042 (right!43042 t!4198))) (ite ((_ is Empty!15522) (right!43042 (right!43042 t!4198))) 0 (ite ((_ is Leaf!25747) (right!43042 (right!43042 t!4198))) 1 (cheight!15733 (right!43042 (right!43042 t!4198))))))))

(assert (=> b!5044278 d!1623527))

(declare-fun d!1623529 () Bool)

(assert (=> d!1623529 (= (inv!77206 (xs!18848 (right!43042 (left!42712 t!4198)))) (<= (size!38924 (innerList!15610 (xs!18848 (right!43042 (left!42712 t!4198))))) 2147483647))))

(declare-fun bs!1189091 () Bool)

(assert (= bs!1189091 d!1623529))

(declare-fun m!6079550 () Bool)

(assert (=> bs!1189091 m!6079550))

(assert (=> b!5044347 d!1623529))

(assert (=> d!1623401 d!1623465))

(assert (=> d!1623401 d!1623329))

(declare-fun d!1623531 () Bool)

(declare-fun c!864621 () Bool)

(assert (=> d!1623531 (= c!864621 ((_ is Nil!58310) lt!2084906))))

(declare-fun e!3149997 () (InoxSet T!104250))

(assert (=> d!1623531 (= (content!10362 lt!2084906) e!3149997)))

(declare-fun b!5044506 () Bool)

(assert (=> b!5044506 (= e!3149997 ((as const (Array T!104250 Bool)) false))))

(declare-fun b!5044507 () Bool)

(assert (=> b!5044507 (= e!3149997 ((_ map or) (store ((as const (Array T!104250 Bool)) false) (h!64758 lt!2084906) true) (content!10362 (t!371021 lt!2084906))))))

(assert (= (and d!1623531 c!864621) b!5044506))

(assert (= (and d!1623531 (not c!864621)) b!5044507))

(declare-fun m!6079552 () Bool)

(assert (=> b!5044507 m!6079552))

(declare-fun m!6079554 () Bool)

(assert (=> b!5044507 m!6079554))

(assert (=> d!1623345 d!1623531))

(declare-fun d!1623533 () Bool)

(declare-fun c!864622 () Bool)

(assert (=> d!1623533 (= c!864622 ((_ is Nil!58310) (list!18929 (left!42712 (right!43042 t!4198)))))))

(declare-fun e!3149998 () (InoxSet T!104250))

(assert (=> d!1623533 (= (content!10362 (list!18929 (left!42712 (right!43042 t!4198)))) e!3149998)))

(declare-fun b!5044508 () Bool)

(assert (=> b!5044508 (= e!3149998 ((as const (Array T!104250 Bool)) false))))

(declare-fun b!5044509 () Bool)

(assert (=> b!5044509 (= e!3149998 ((_ map or) (store ((as const (Array T!104250 Bool)) false) (h!64758 (list!18929 (left!42712 (right!43042 t!4198)))) true) (content!10362 (t!371021 (list!18929 (left!42712 (right!43042 t!4198)))))))))

(assert (= (and d!1623533 c!864622) b!5044508))

(assert (= (and d!1623533 (not c!864622)) b!5044509))

(declare-fun m!6079556 () Bool)

(assert (=> b!5044509 m!6079556))

(declare-fun m!6079558 () Bool)

(assert (=> b!5044509 m!6079558))

(assert (=> d!1623345 d!1623533))

(declare-fun d!1623535 () Bool)

(declare-fun c!864623 () Bool)

(assert (=> d!1623535 (= c!864623 ((_ is Nil!58310) (list!18929 (right!43042 (right!43042 t!4198)))))))

(declare-fun e!3149999 () (InoxSet T!104250))

(assert (=> d!1623535 (= (content!10362 (list!18929 (right!43042 (right!43042 t!4198)))) e!3149999)))

(declare-fun b!5044510 () Bool)

(assert (=> b!5044510 (= e!3149999 ((as const (Array T!104250 Bool)) false))))

(declare-fun b!5044511 () Bool)

(assert (=> b!5044511 (= e!3149999 ((_ map or) (store ((as const (Array T!104250 Bool)) false) (h!64758 (list!18929 (right!43042 (right!43042 t!4198)))) true) (content!10362 (t!371021 (list!18929 (right!43042 (right!43042 t!4198)))))))))

(assert (= (and d!1623535 c!864623) b!5044510))

(assert (= (and d!1623535 (not c!864623)) b!5044511))

(declare-fun m!6079560 () Bool)

(assert (=> b!5044511 m!6079560))

(declare-fun m!6079562 () Bool)

(assert (=> b!5044511 m!6079562))

(assert (=> d!1623345 d!1623535))

(declare-fun b!5044512 () Bool)

(declare-fun res!2148914 () Bool)

(declare-fun e!3150001 () Bool)

(assert (=> b!5044512 (=> (not res!2148914) (not e!3150001))))

(assert (=> b!5044512 (= res!2148914 (<= (- (height!2100 (left!42712 (left!42712 (left!42712 t!4198)))) (height!2100 (right!43042 (left!42712 (left!42712 t!4198))))) 1))))

(declare-fun d!1623537 () Bool)

(declare-fun res!2148912 () Bool)

(declare-fun e!3150000 () Bool)

(assert (=> d!1623537 (=> res!2148912 e!3150000)))

(assert (=> d!1623537 (= res!2148912 (not ((_ is Node!15522) (left!42712 (left!42712 t!4198)))))))

(assert (=> d!1623537 (= (isBalanced!4384 (left!42712 (left!42712 t!4198))) e!3150000)))

(declare-fun b!5044513 () Bool)

(assert (=> b!5044513 (= e!3150001 (not (isEmpty!31550 (right!43042 (left!42712 (left!42712 t!4198))))))))

(declare-fun b!5044514 () Bool)

(declare-fun res!2148916 () Bool)

(assert (=> b!5044514 (=> (not res!2148916) (not e!3150001))))

(assert (=> b!5044514 (= res!2148916 (not (isEmpty!31550 (left!42712 (left!42712 (left!42712 t!4198))))))))

(declare-fun b!5044515 () Bool)

(declare-fun res!2148917 () Bool)

(assert (=> b!5044515 (=> (not res!2148917) (not e!3150001))))

(assert (=> b!5044515 (= res!2148917 (isBalanced!4384 (left!42712 (left!42712 (left!42712 t!4198)))))))

(declare-fun b!5044516 () Bool)

(declare-fun res!2148915 () Bool)

(assert (=> b!5044516 (=> (not res!2148915) (not e!3150001))))

(assert (=> b!5044516 (= res!2148915 (isBalanced!4384 (right!43042 (left!42712 (left!42712 t!4198)))))))

(declare-fun b!5044517 () Bool)

(assert (=> b!5044517 (= e!3150000 e!3150001)))

(declare-fun res!2148913 () Bool)

(assert (=> b!5044517 (=> (not res!2148913) (not e!3150001))))

(assert (=> b!5044517 (= res!2148913 (<= (- 1) (- (height!2100 (left!42712 (left!42712 (left!42712 t!4198)))) (height!2100 (right!43042 (left!42712 (left!42712 t!4198)))))))))

(assert (= (and d!1623537 (not res!2148912)) b!5044517))

(assert (= (and b!5044517 res!2148913) b!5044512))

(assert (= (and b!5044512 res!2148914) b!5044515))

(assert (= (and b!5044515 res!2148917) b!5044516))

(assert (= (and b!5044516 res!2148915) b!5044514))

(assert (= (and b!5044514 res!2148916) b!5044513))

(declare-fun m!6079564 () Bool)

(assert (=> b!5044514 m!6079564))

(declare-fun m!6079566 () Bool)

(assert (=> b!5044516 m!6079566))

(declare-fun m!6079568 () Bool)

(assert (=> b!5044515 m!6079568))

(assert (=> b!5044517 m!6079530))

(assert (=> b!5044517 m!6079532))

(assert (=> b!5044512 m!6079530))

(assert (=> b!5044512 m!6079532))

(declare-fun m!6079570 () Bool)

(assert (=> b!5044513 m!6079570))

(assert (=> b!5044297 d!1623537))

(declare-fun d!1623539 () Bool)

(declare-fun lt!2084938 () Bool)

(assert (=> d!1623539 (= lt!2084938 (isEmpty!31551 (list!18929 (right!43042 (left!42712 t!4198)))))))

(assert (=> d!1623539 (= lt!2084938 (= (size!38925 (right!43042 (left!42712 t!4198))) 0))))

(assert (=> d!1623539 (= (isEmpty!31550 (right!43042 (left!42712 t!4198))) lt!2084938)))

(declare-fun bs!1189092 () Bool)

(assert (= bs!1189092 d!1623539))

(assert (=> bs!1189092 m!6079002))

(assert (=> bs!1189092 m!6079002))

(declare-fun m!6079572 () Bool)

(assert (=> bs!1189092 m!6079572))

(assert (=> bs!1189092 m!6079174))

(assert (=> b!5044295 d!1623539))

(declare-fun d!1623541 () Bool)

(assert (=> d!1623541 (= (inv!77206 (xs!18848 (left!42712 (right!43042 t!4198)))) (<= (size!38924 (innerList!15610 (xs!18848 (left!42712 (right!43042 t!4198))))) 2147483647))))

(declare-fun bs!1189093 () Bool)

(assert (= bs!1189093 d!1623541))

(declare-fun m!6079574 () Bool)

(assert (=> bs!1189093 m!6079574))

(assert (=> b!5044333 d!1623541))

(declare-fun d!1623543 () Bool)

(declare-fun lt!2084939 () Int)

(assert (=> d!1623543 (= lt!2084939 (size!38924 (list!18929 (left!42712 (right!43042 t!4198)))))))

(assert (=> d!1623543 (= lt!2084939 (ite ((_ is Empty!15522) (left!42712 (right!43042 t!4198))) 0 (ite ((_ is Leaf!25747) (left!42712 (right!43042 t!4198))) (csize!31275 (left!42712 (right!43042 t!4198))) (csize!31274 (left!42712 (right!43042 t!4198))))))))

(assert (=> d!1623543 (= (size!38925 (left!42712 (right!43042 t!4198))) lt!2084939)))

(declare-fun bs!1189094 () Bool)

(assert (= bs!1189094 d!1623543))

(assert (=> bs!1189094 m!6079018))

(assert (=> bs!1189094 m!6079018))

(assert (=> bs!1189094 m!6079138))

(assert (=> d!1623397 d!1623543))

(declare-fun d!1623545 () Bool)

(declare-fun lt!2084940 () Int)

(assert (=> d!1623545 (= lt!2084940 (size!38924 (list!18929 (right!43042 (right!43042 t!4198)))))))

(assert (=> d!1623545 (= lt!2084940 (ite ((_ is Empty!15522) (right!43042 (right!43042 t!4198))) 0 (ite ((_ is Leaf!25747) (right!43042 (right!43042 t!4198))) (csize!31275 (right!43042 (right!43042 t!4198))) (csize!31274 (right!43042 (right!43042 t!4198))))))))

(assert (=> d!1623545 (= (size!38925 (right!43042 (right!43042 t!4198))) lt!2084940)))

(declare-fun bs!1189095 () Bool)

(assert (= bs!1189095 d!1623545))

(assert (=> bs!1189095 m!6079020))

(assert (=> bs!1189095 m!6079020))

(assert (=> bs!1189095 m!6079140))

(assert (=> d!1623397 d!1623545))

(declare-fun b!5044518 () Bool)

(declare-fun res!2148920 () Bool)

(declare-fun e!3150003 () Bool)

(assert (=> b!5044518 (=> (not res!2148920) (not e!3150003))))

(assert (=> b!5044518 (= res!2148920 (<= (- (height!2100 (left!42712 (right!43042 (left!42712 t!4198)))) (height!2100 (right!43042 (right!43042 (left!42712 t!4198))))) 1))))

(declare-fun d!1623547 () Bool)

(declare-fun res!2148918 () Bool)

(declare-fun e!3150002 () Bool)

(assert (=> d!1623547 (=> res!2148918 e!3150002)))

(assert (=> d!1623547 (= res!2148918 (not ((_ is Node!15522) (right!43042 (left!42712 t!4198)))))))

(assert (=> d!1623547 (= (isBalanced!4384 (right!43042 (left!42712 t!4198))) e!3150002)))

(declare-fun b!5044519 () Bool)

(assert (=> b!5044519 (= e!3150003 (not (isEmpty!31550 (right!43042 (right!43042 (left!42712 t!4198))))))))

(declare-fun b!5044520 () Bool)

(declare-fun res!2148922 () Bool)

(assert (=> b!5044520 (=> (not res!2148922) (not e!3150003))))

(assert (=> b!5044520 (= res!2148922 (not (isEmpty!31550 (left!42712 (right!43042 (left!42712 t!4198))))))))

(declare-fun b!5044521 () Bool)

(declare-fun res!2148923 () Bool)

(assert (=> b!5044521 (=> (not res!2148923) (not e!3150003))))

(assert (=> b!5044521 (= res!2148923 (isBalanced!4384 (left!42712 (right!43042 (left!42712 t!4198)))))))

(declare-fun b!5044522 () Bool)

(declare-fun res!2148921 () Bool)

(assert (=> b!5044522 (=> (not res!2148921) (not e!3150003))))

(assert (=> b!5044522 (= res!2148921 (isBalanced!4384 (right!43042 (right!43042 (left!42712 t!4198)))))))

(declare-fun b!5044523 () Bool)

(assert (=> b!5044523 (= e!3150002 e!3150003)))

(declare-fun res!2148919 () Bool)

(assert (=> b!5044523 (=> (not res!2148919) (not e!3150003))))

(assert (=> b!5044523 (= res!2148919 (<= (- 1) (- (height!2100 (left!42712 (right!43042 (left!42712 t!4198)))) (height!2100 (right!43042 (right!43042 (left!42712 t!4198)))))))))

(assert (= (and d!1623547 (not res!2148918)) b!5044523))

(assert (= (and b!5044523 res!2148919) b!5044518))

(assert (= (and b!5044518 res!2148920) b!5044521))

(assert (= (and b!5044521 res!2148923) b!5044522))

(assert (= (and b!5044522 res!2148921) b!5044520))

(assert (= (and b!5044520 res!2148922) b!5044519))

(declare-fun m!6079576 () Bool)

(assert (=> b!5044520 m!6079576))

(declare-fun m!6079578 () Bool)

(assert (=> b!5044522 m!6079578))

(declare-fun m!6079580 () Bool)

(assert (=> b!5044521 m!6079580))

(declare-fun m!6079582 () Bool)

(assert (=> b!5044523 m!6079582))

(declare-fun m!6079584 () Bool)

(assert (=> b!5044523 m!6079584))

(assert (=> b!5044518 m!6079582))

(assert (=> b!5044518 m!6079584))

(declare-fun m!6079586 () Bool)

(assert (=> b!5044519 m!6079586))

(assert (=> b!5044298 d!1623547))

(assert (=> b!5044220 d!1623339))

(assert (=> b!5044220 d!1623341))

(declare-fun d!1623549 () Bool)

(declare-fun res!2148924 () Bool)

(declare-fun e!3150004 () Bool)

(assert (=> d!1623549 (=> (not res!2148924) (not e!3150004))))

(assert (=> d!1623549 (= res!2148924 (= (csize!31274 (right!43042 (left!42712 t!4198))) (+ (size!38925 (left!42712 (right!43042 (left!42712 t!4198)))) (size!38925 (right!43042 (right!43042 (left!42712 t!4198)))))))))

(assert (=> d!1623549 (= (inv!77207 (right!43042 (left!42712 t!4198))) e!3150004)))

(declare-fun b!5044524 () Bool)

(declare-fun res!2148925 () Bool)

(assert (=> b!5044524 (=> (not res!2148925) (not e!3150004))))

(assert (=> b!5044524 (= res!2148925 (and (not (= (left!42712 (right!43042 (left!42712 t!4198))) Empty!15522)) (not (= (right!43042 (right!43042 (left!42712 t!4198))) Empty!15522))))))

(declare-fun b!5044525 () Bool)

(declare-fun res!2148926 () Bool)

(assert (=> b!5044525 (=> (not res!2148926) (not e!3150004))))

(assert (=> b!5044525 (= res!2148926 (= (cheight!15733 (right!43042 (left!42712 t!4198))) (+ (max!0 (height!2100 (left!42712 (right!43042 (left!42712 t!4198)))) (height!2100 (right!43042 (right!43042 (left!42712 t!4198))))) 1)))))

(declare-fun b!5044526 () Bool)

(assert (=> b!5044526 (= e!3150004 (<= 0 (cheight!15733 (right!43042 (left!42712 t!4198)))))))

(assert (= (and d!1623549 res!2148924) b!5044524))

(assert (= (and b!5044524 res!2148925) b!5044525))

(assert (= (and b!5044525 res!2148926) b!5044526))

(declare-fun m!6079588 () Bool)

(assert (=> d!1623549 m!6079588))

(declare-fun m!6079590 () Bool)

(assert (=> d!1623549 m!6079590))

(assert (=> b!5044525 m!6079582))

(assert (=> b!5044525 m!6079584))

(assert (=> b!5044525 m!6079582))

(assert (=> b!5044525 m!6079584))

(declare-fun m!6079592 () Bool)

(assert (=> b!5044525 m!6079592))

(assert (=> b!5044235 d!1623549))

(declare-fun b!5044529 () Bool)

(declare-fun res!2148927 () Bool)

(declare-fun e!3150006 () Bool)

(assert (=> b!5044529 (=> (not res!2148927) (not e!3150006))))

(declare-fun lt!2084941 () List!58434)

(assert (=> b!5044529 (= res!2148927 (= (size!38924 lt!2084941) (+ (size!38924 (list!18929 (left!42712 t!4198))) (size!38924 (list!18929 (right!43042 t!4198))))))))

(declare-fun b!5044530 () Bool)

(assert (=> b!5044530 (= e!3150006 (or (not (= (list!18929 (right!43042 t!4198)) Nil!58310)) (= lt!2084941 (list!18929 (left!42712 t!4198)))))))

(declare-fun b!5044528 () Bool)

(declare-fun e!3150005 () List!58434)

(assert (=> b!5044528 (= e!3150005 (Cons!58310 (h!64758 (list!18929 (left!42712 t!4198))) (++!12734 (t!371021 (list!18929 (left!42712 t!4198))) (list!18929 (right!43042 t!4198)))))))

(declare-fun d!1623551 () Bool)

(assert (=> d!1623551 e!3150006))

(declare-fun res!2148928 () Bool)

(assert (=> d!1623551 (=> (not res!2148928) (not e!3150006))))

(assert (=> d!1623551 (= res!2148928 (= (content!10362 lt!2084941) ((_ map or) (content!10362 (list!18929 (left!42712 t!4198))) (content!10362 (list!18929 (right!43042 t!4198))))))))

(assert (=> d!1623551 (= lt!2084941 e!3150005)))

(declare-fun c!864624 () Bool)

(assert (=> d!1623551 (= c!864624 ((_ is Nil!58310) (list!18929 (left!42712 t!4198))))))

(assert (=> d!1623551 (= (++!12734 (list!18929 (left!42712 t!4198)) (list!18929 (right!43042 t!4198))) lt!2084941)))

(declare-fun b!5044527 () Bool)

(assert (=> b!5044527 (= e!3150005 (list!18929 (right!43042 t!4198)))))

(assert (= (and d!1623551 c!864624) b!5044527))

(assert (= (and d!1623551 (not c!864624)) b!5044528))

(assert (= (and d!1623551 res!2148928) b!5044529))

(assert (= (and b!5044529 res!2148927) b!5044530))

(declare-fun m!6079594 () Bool)

(assert (=> b!5044529 m!6079594))

(assert (=> b!5044529 m!6078966))

(assert (=> b!5044529 m!6078968))

(assert (=> b!5044529 m!6078970))

(assert (=> b!5044529 m!6078972))

(assert (=> b!5044528 m!6078970))

(declare-fun m!6079596 () Bool)

(assert (=> b!5044528 m!6079596))

(declare-fun m!6079598 () Bool)

(assert (=> d!1623551 m!6079598))

(assert (=> d!1623551 m!6078966))

(declare-fun m!6079600 () Bool)

(assert (=> d!1623551 m!6079600))

(assert (=> d!1623551 m!6078970))

(declare-fun m!6079602 () Bool)

(assert (=> d!1623551 m!6079602))

(assert (=> b!5044263 d!1623551))

(assert (=> b!5044263 d!1623295))

(assert (=> b!5044263 d!1623305))

(declare-fun d!1623553 () Bool)

(declare-fun res!2148929 () Bool)

(declare-fun e!3150007 () Bool)

(assert (=> d!1623553 (=> (not res!2148929) (not e!3150007))))

(assert (=> d!1623553 (= res!2148929 (= (csize!31274 (right!43042 (right!43042 t!4198))) (+ (size!38925 (left!42712 (right!43042 (right!43042 t!4198)))) (size!38925 (right!43042 (right!43042 (right!43042 t!4198)))))))))

(assert (=> d!1623553 (= (inv!77207 (right!43042 (right!43042 t!4198))) e!3150007)))

(declare-fun b!5044531 () Bool)

(declare-fun res!2148930 () Bool)

(assert (=> b!5044531 (=> (not res!2148930) (not e!3150007))))

(assert (=> b!5044531 (= res!2148930 (and (not (= (left!42712 (right!43042 (right!43042 t!4198))) Empty!15522)) (not (= (right!43042 (right!43042 (right!43042 t!4198))) Empty!15522))))))

(declare-fun b!5044532 () Bool)

(declare-fun res!2148931 () Bool)

(assert (=> b!5044532 (=> (not res!2148931) (not e!3150007))))

(assert (=> b!5044532 (= res!2148931 (= (cheight!15733 (right!43042 (right!43042 t!4198))) (+ (max!0 (height!2100 (left!42712 (right!43042 (right!43042 t!4198)))) (height!2100 (right!43042 (right!43042 (right!43042 t!4198))))) 1)))))

(declare-fun b!5044533 () Bool)

(assert (=> b!5044533 (= e!3150007 (<= 0 (cheight!15733 (right!43042 (right!43042 t!4198)))))))

(assert (= (and d!1623553 res!2148929) b!5044531))

(assert (= (and b!5044531 res!2148930) b!5044532))

(assert (= (and b!5044532 res!2148931) b!5044533))

(declare-fun m!6079604 () Bool)

(assert (=> d!1623553 m!6079604))

(declare-fun m!6079606 () Bool)

(assert (=> d!1623553 m!6079606))

(declare-fun m!6079608 () Bool)

(assert (=> b!5044532 m!6079608))

(declare-fun m!6079610 () Bool)

(assert (=> b!5044532 m!6079610))

(assert (=> b!5044532 m!6079608))

(assert (=> b!5044532 m!6079610))

(declare-fun m!6079612 () Bool)

(assert (=> b!5044532 m!6079612))

(assert (=> b!5044229 d!1623553))

(declare-fun d!1623555 () Bool)

(declare-fun res!2148932 () Bool)

(declare-fun e!3150008 () Bool)

(assert (=> d!1623555 (=> (not res!2148932) (not e!3150008))))

(assert (=> d!1623555 (= res!2148932 (<= (size!38924 (list!18931 (xs!18848 (right!43042 (left!42712 t!4198))))) 512))))

(assert (=> d!1623555 (= (inv!77208 (right!43042 (left!42712 t!4198))) e!3150008)))

(declare-fun b!5044534 () Bool)

(declare-fun res!2148933 () Bool)

(assert (=> b!5044534 (=> (not res!2148933) (not e!3150008))))

(assert (=> b!5044534 (= res!2148933 (= (csize!31275 (right!43042 (left!42712 t!4198))) (size!38924 (list!18931 (xs!18848 (right!43042 (left!42712 t!4198)))))))))

(declare-fun b!5044535 () Bool)

(assert (=> b!5044535 (= e!3150008 (and (> (csize!31275 (right!43042 (left!42712 t!4198))) 0) (<= (csize!31275 (right!43042 (left!42712 t!4198))) 512)))))

(assert (= (and d!1623555 res!2148932) b!5044534))

(assert (= (and b!5044534 res!2148933) b!5044535))

(assert (=> d!1623555 m!6079264))

(assert (=> d!1623555 m!6079264))

(declare-fun m!6079614 () Bool)

(assert (=> d!1623555 m!6079614))

(assert (=> b!5044534 m!6079264))

(assert (=> b!5044534 m!6079264))

(assert (=> b!5044534 m!6079614))

(assert (=> b!5044237 d!1623555))

(declare-fun b!5044538 () Bool)

(declare-fun res!2148934 () Bool)

(declare-fun e!3150010 () Bool)

(assert (=> b!5044538 (=> (not res!2148934) (not e!3150010))))

(declare-fun lt!2084942 () List!58434)

(assert (=> b!5044538 (= res!2148934 (= (size!38924 lt!2084942) (+ (size!38924 (t!371021 (list!18929 (left!42712 (left!42712 t!4198))))) (size!38924 (list!18929 (right!43042 (left!42712 t!4198)))))))))

(declare-fun b!5044539 () Bool)

(assert (=> b!5044539 (= e!3150010 (or (not (= (list!18929 (right!43042 (left!42712 t!4198))) Nil!58310)) (= lt!2084942 (t!371021 (list!18929 (left!42712 (left!42712 t!4198)))))))))

(declare-fun b!5044537 () Bool)

(declare-fun e!3150009 () List!58434)

(assert (=> b!5044537 (= e!3150009 (Cons!58310 (h!64758 (t!371021 (list!18929 (left!42712 (left!42712 t!4198))))) (++!12734 (t!371021 (t!371021 (list!18929 (left!42712 (left!42712 t!4198))))) (list!18929 (right!43042 (left!42712 t!4198))))))))

(declare-fun d!1623557 () Bool)

(assert (=> d!1623557 e!3150010))

(declare-fun res!2148935 () Bool)

(assert (=> d!1623557 (=> (not res!2148935) (not e!3150010))))

(assert (=> d!1623557 (= res!2148935 (= (content!10362 lt!2084942) ((_ map or) (content!10362 (t!371021 (list!18929 (left!42712 (left!42712 t!4198))))) (content!10362 (list!18929 (right!43042 (left!42712 t!4198)))))))))

(assert (=> d!1623557 (= lt!2084942 e!3150009)))

(declare-fun c!864625 () Bool)

(assert (=> d!1623557 (= c!864625 ((_ is Nil!58310) (t!371021 (list!18929 (left!42712 (left!42712 t!4198))))))))

(assert (=> d!1623557 (= (++!12734 (t!371021 (list!18929 (left!42712 (left!42712 t!4198)))) (list!18929 (right!43042 (left!42712 t!4198)))) lt!2084942)))

(declare-fun b!5044536 () Bool)

(assert (=> b!5044536 (= e!3150009 (list!18929 (right!43042 (left!42712 t!4198))))))

(assert (= (and d!1623557 c!864625) b!5044536))

(assert (= (and d!1623557 (not c!864625)) b!5044537))

(assert (= (and d!1623557 res!2148935) b!5044538))

(assert (= (and b!5044538 res!2148934) b!5044539))

(declare-fun m!6079616 () Bool)

(assert (=> b!5044538 m!6079616))

(assert (=> b!5044538 m!6079468))

(assert (=> b!5044538 m!6079002))

(assert (=> b!5044538 m!6079240))

(assert (=> b!5044537 m!6079002))

(declare-fun m!6079618 () Bool)

(assert (=> b!5044537 m!6079618))

(declare-fun m!6079620 () Bool)

(assert (=> d!1623557 m!6079620))

(declare-fun m!6079622 () Bool)

(assert (=> d!1623557 m!6079622))

(assert (=> d!1623557 m!6079002))

(assert (=> d!1623557 m!6079248))

(assert (=> b!5044315 d!1623557))

(declare-fun d!1623559 () Bool)

(declare-fun res!2148936 () Bool)

(declare-fun e!3150011 () Bool)

(assert (=> d!1623559 (=> (not res!2148936) (not e!3150011))))

(assert (=> d!1623559 (= res!2148936 (<= (size!38924 (list!18931 (xs!18848 (right!43042 (right!43042 t!4198))))) 512))))

(assert (=> d!1623559 (= (inv!77208 (right!43042 (right!43042 t!4198))) e!3150011)))

(declare-fun b!5044540 () Bool)

(declare-fun res!2148937 () Bool)

(assert (=> b!5044540 (=> (not res!2148937) (not e!3150011))))

(assert (=> b!5044540 (= res!2148937 (= (csize!31275 (right!43042 (right!43042 t!4198))) (size!38924 (list!18931 (xs!18848 (right!43042 (right!43042 t!4198)))))))))

(declare-fun b!5044541 () Bool)

(assert (=> b!5044541 (= e!3150011 (and (> (csize!31275 (right!43042 (right!43042 t!4198))) 0) (<= (csize!31275 (right!43042 (right!43042 t!4198))) 512)))))

(assert (= (and d!1623559 res!2148936) b!5044540))

(assert (= (and b!5044540 res!2148937) b!5044541))

(assert (=> d!1623559 m!6079164))

(assert (=> d!1623559 m!6079164))

(declare-fun m!6079624 () Bool)

(assert (=> d!1623559 m!6079624))

(assert (=> b!5044540 m!6079164))

(assert (=> b!5044540 m!6079164))

(assert (=> b!5044540 m!6079624))

(assert (=> b!5044231 d!1623559))

(declare-fun d!1623561 () Bool)

(declare-fun lt!2084943 () Int)

(assert (=> d!1623561 (>= lt!2084943 0)))

(declare-fun e!3150012 () Int)

(assert (=> d!1623561 (= lt!2084943 e!3150012)))

(declare-fun c!864626 () Bool)

(assert (=> d!1623561 (= c!864626 ((_ is Nil!58310) (t!371021 (innerList!15610 (xs!18848 t!4198)))))))

(assert (=> d!1623561 (= (size!38924 (t!371021 (innerList!15610 (xs!18848 t!4198)))) lt!2084943)))

(declare-fun b!5044542 () Bool)

(assert (=> b!5044542 (= e!3150012 0)))

(declare-fun b!5044543 () Bool)

(assert (=> b!5044543 (= e!3150012 (+ 1 (size!38924 (t!371021 (t!371021 (innerList!15610 (xs!18848 t!4198)))))))))

(assert (= (and d!1623561 c!864626) b!5044542))

(assert (= (and d!1623561 (not c!864626)) b!5044543))

(declare-fun m!6079626 () Bool)

(assert (=> b!5044543 m!6079626))

(assert (=> b!5044311 d!1623561))

(declare-fun b!5044546 () Bool)

(declare-fun res!2148938 () Bool)

(declare-fun e!3150014 () Bool)

(assert (=> b!5044546 (=> (not res!2148938) (not e!3150014))))

(declare-fun lt!2084944 () List!58434)

(assert (=> b!5044546 (= res!2148938 (= (size!38924 lt!2084944) (+ (size!38924 (t!371021 (list!18929 (left!42712 (right!43042 t!4198))))) (size!38924 (list!18929 (right!43042 (right!43042 t!4198)))))))))

(declare-fun b!5044547 () Bool)

(assert (=> b!5044547 (= e!3150014 (or (not (= (list!18929 (right!43042 (right!43042 t!4198))) Nil!58310)) (= lt!2084944 (t!371021 (list!18929 (left!42712 (right!43042 t!4198)))))))))

(declare-fun b!5044545 () Bool)

(declare-fun e!3150013 () List!58434)

(assert (=> b!5044545 (= e!3150013 (Cons!58310 (h!64758 (t!371021 (list!18929 (left!42712 (right!43042 t!4198))))) (++!12734 (t!371021 (t!371021 (list!18929 (left!42712 (right!43042 t!4198))))) (list!18929 (right!43042 (right!43042 t!4198))))))))

(declare-fun d!1623563 () Bool)

(assert (=> d!1623563 e!3150014))

(declare-fun res!2148939 () Bool)

(assert (=> d!1623563 (=> (not res!2148939) (not e!3150014))))

(assert (=> d!1623563 (= res!2148939 (= (content!10362 lt!2084944) ((_ map or) (content!10362 (t!371021 (list!18929 (left!42712 (right!43042 t!4198))))) (content!10362 (list!18929 (right!43042 (right!43042 t!4198)))))))))

(assert (=> d!1623563 (= lt!2084944 e!3150013)))

(declare-fun c!864627 () Bool)

(assert (=> d!1623563 (= c!864627 ((_ is Nil!58310) (t!371021 (list!18929 (left!42712 (right!43042 t!4198))))))))

(assert (=> d!1623563 (= (++!12734 (t!371021 (list!18929 (left!42712 (right!43042 t!4198)))) (list!18929 (right!43042 (right!43042 t!4198)))) lt!2084944)))

(declare-fun b!5044544 () Bool)

(assert (=> b!5044544 (= e!3150013 (list!18929 (right!43042 (right!43042 t!4198))))))

(assert (= (and d!1623563 c!864627) b!5044544))

(assert (= (and d!1623563 (not c!864627)) b!5044545))

(assert (= (and d!1623563 res!2148939) b!5044546))

(assert (= (and b!5044546 res!2148938) b!5044547))

(declare-fun m!6079628 () Bool)

(assert (=> b!5044546 m!6079628))

(declare-fun m!6079630 () Bool)

(assert (=> b!5044546 m!6079630))

(assert (=> b!5044546 m!6079020))

(assert (=> b!5044546 m!6079140))

(assert (=> b!5044545 m!6079020))

(declare-fun m!6079632 () Bool)

(assert (=> b!5044545 m!6079632))

(declare-fun m!6079634 () Bool)

(assert (=> d!1623563 m!6079634))

(assert (=> d!1623563 m!6079558))

(assert (=> d!1623563 m!6079020))

(assert (=> d!1623563 m!6079148))

(assert (=> b!5044247 d!1623563))

(declare-fun d!1623565 () Bool)

(assert (=> d!1623565 (= (max!0 (height!2100 (left!42712 (right!43042 t!4198))) (height!2100 (right!43042 (right!43042 t!4198)))) (ite (< (height!2100 (left!42712 (right!43042 t!4198))) (height!2100 (right!43042 (right!43042 t!4198)))) (height!2100 (right!43042 (right!43042 t!4198))) (height!2100 (left!42712 (right!43042 t!4198)))))))

(assert (=> b!5044327 d!1623565))

(assert (=> b!5044327 d!1623525))

(assert (=> b!5044327 d!1623527))

(declare-fun b!5044550 () Bool)

(declare-fun res!2148940 () Bool)

(declare-fun e!3150016 () Bool)

(assert (=> b!5044550 (=> (not res!2148940) (not e!3150016))))

(declare-fun lt!2084945 () List!58434)

(assert (=> b!5044550 (= res!2148940 (= (size!38924 lt!2084945) (+ (size!38924 (list!18929 (left!42712 (right!43042 (left!42712 t!4198))))) (size!38924 (list!18929 (right!43042 (right!43042 (left!42712 t!4198))))))))))

(declare-fun b!5044551 () Bool)

(assert (=> b!5044551 (= e!3150016 (or (not (= (list!18929 (right!43042 (right!43042 (left!42712 t!4198)))) Nil!58310)) (= lt!2084945 (list!18929 (left!42712 (right!43042 (left!42712 t!4198)))))))))

(declare-fun b!5044549 () Bool)

(declare-fun e!3150015 () List!58434)

(assert (=> b!5044549 (= e!3150015 (Cons!58310 (h!64758 (list!18929 (left!42712 (right!43042 (left!42712 t!4198))))) (++!12734 (t!371021 (list!18929 (left!42712 (right!43042 (left!42712 t!4198))))) (list!18929 (right!43042 (right!43042 (left!42712 t!4198)))))))))

(declare-fun d!1623567 () Bool)

(assert (=> d!1623567 e!3150016))

(declare-fun res!2148941 () Bool)

(assert (=> d!1623567 (=> (not res!2148941) (not e!3150016))))

(assert (=> d!1623567 (= res!2148941 (= (content!10362 lt!2084945) ((_ map or) (content!10362 (list!18929 (left!42712 (right!43042 (left!42712 t!4198))))) (content!10362 (list!18929 (right!43042 (right!43042 (left!42712 t!4198))))))))))

(assert (=> d!1623567 (= lt!2084945 e!3150015)))

(declare-fun c!864628 () Bool)

(assert (=> d!1623567 (= c!864628 ((_ is Nil!58310) (list!18929 (left!42712 (right!43042 (left!42712 t!4198))))))))

(assert (=> d!1623567 (= (++!12734 (list!18929 (left!42712 (right!43042 (left!42712 t!4198)))) (list!18929 (right!43042 (right!43042 (left!42712 t!4198))))) lt!2084945)))

(declare-fun b!5044548 () Bool)

(assert (=> b!5044548 (= e!3150015 (list!18929 (right!43042 (right!43042 (left!42712 t!4198)))))))

(assert (= (and d!1623567 c!864628) b!5044548))

(assert (= (and d!1623567 (not c!864628)) b!5044549))

(assert (= (and d!1623567 res!2148941) b!5044550))

(assert (= (and b!5044550 res!2148940) b!5044551))

(declare-fun m!6079636 () Bool)

(assert (=> b!5044550 m!6079636))

(assert (=> b!5044550 m!6079258))

(declare-fun m!6079638 () Bool)

(assert (=> b!5044550 m!6079638))

(assert (=> b!5044550 m!6079260))

(declare-fun m!6079640 () Bool)

(assert (=> b!5044550 m!6079640))

(assert (=> b!5044549 m!6079260))

(declare-fun m!6079642 () Bool)

(assert (=> b!5044549 m!6079642))

(declare-fun m!6079644 () Bool)

(assert (=> d!1623567 m!6079644))

(assert (=> d!1623567 m!6079258))

(declare-fun m!6079646 () Bool)

(assert (=> d!1623567 m!6079646))

(assert (=> d!1623567 m!6079260))

(declare-fun m!6079648 () Bool)

(assert (=> d!1623567 m!6079648))

(assert (=> b!5044325 d!1623567))

(declare-fun b!5044555 () Bool)

(declare-fun e!3150018 () List!58434)

(assert (=> b!5044555 (= e!3150018 (++!12734 (list!18929 (left!42712 (left!42712 (right!43042 (left!42712 t!4198))))) (list!18929 (right!43042 (left!42712 (right!43042 (left!42712 t!4198)))))))))

(declare-fun b!5044553 () Bool)

(declare-fun e!3150017 () List!58434)

(assert (=> b!5044553 (= e!3150017 e!3150018)))

(declare-fun c!864630 () Bool)

(assert (=> b!5044553 (= c!864630 ((_ is Leaf!25747) (left!42712 (right!43042 (left!42712 t!4198)))))))

(declare-fun b!5044552 () Bool)

(assert (=> b!5044552 (= e!3150017 Nil!58310)))

(declare-fun d!1623569 () Bool)

(declare-fun c!864629 () Bool)

(assert (=> d!1623569 (= c!864629 ((_ is Empty!15522) (left!42712 (right!43042 (left!42712 t!4198)))))))

(assert (=> d!1623569 (= (list!18929 (left!42712 (right!43042 (left!42712 t!4198)))) e!3150017)))

(declare-fun b!5044554 () Bool)

(assert (=> b!5044554 (= e!3150018 (list!18931 (xs!18848 (left!42712 (right!43042 (left!42712 t!4198))))))))

(assert (= (and d!1623569 c!864629) b!5044552))

(assert (= (and d!1623569 (not c!864629)) b!5044553))

(assert (= (and b!5044553 c!864630) b!5044554))

(assert (= (and b!5044553 (not c!864630)) b!5044555))

(declare-fun m!6079650 () Bool)

(assert (=> b!5044555 m!6079650))

(declare-fun m!6079652 () Bool)

(assert (=> b!5044555 m!6079652))

(assert (=> b!5044555 m!6079650))

(assert (=> b!5044555 m!6079652))

(declare-fun m!6079654 () Bool)

(assert (=> b!5044555 m!6079654))

(declare-fun m!6079656 () Bool)

(assert (=> b!5044554 m!6079656))

(assert (=> b!5044325 d!1623569))

(declare-fun b!5044559 () Bool)

(declare-fun e!3150020 () List!58434)

(assert (=> b!5044559 (= e!3150020 (++!12734 (list!18929 (left!42712 (right!43042 (right!43042 (left!42712 t!4198))))) (list!18929 (right!43042 (right!43042 (right!43042 (left!42712 t!4198)))))))))

(declare-fun b!5044557 () Bool)

(declare-fun e!3150019 () List!58434)

(assert (=> b!5044557 (= e!3150019 e!3150020)))

(declare-fun c!864632 () Bool)

(assert (=> b!5044557 (= c!864632 ((_ is Leaf!25747) (right!43042 (right!43042 (left!42712 t!4198)))))))

(declare-fun b!5044556 () Bool)

(assert (=> b!5044556 (= e!3150019 Nil!58310)))

(declare-fun d!1623571 () Bool)

(declare-fun c!864631 () Bool)

(assert (=> d!1623571 (= c!864631 ((_ is Empty!15522) (right!43042 (right!43042 (left!42712 t!4198)))))))

(assert (=> d!1623571 (= (list!18929 (right!43042 (right!43042 (left!42712 t!4198)))) e!3150019)))

(declare-fun b!5044558 () Bool)

(assert (=> b!5044558 (= e!3150020 (list!18931 (xs!18848 (right!43042 (right!43042 (left!42712 t!4198))))))))

(assert (= (and d!1623571 c!864631) b!5044556))

(assert (= (and d!1623571 (not c!864631)) b!5044557))

(assert (= (and b!5044557 c!864632) b!5044558))

(assert (= (and b!5044557 (not c!864632)) b!5044559))

(declare-fun m!6079658 () Bool)

(assert (=> b!5044559 m!6079658))

(declare-fun m!6079660 () Bool)

(assert (=> b!5044559 m!6079660))

(assert (=> b!5044559 m!6079658))

(assert (=> b!5044559 m!6079660))

(declare-fun m!6079662 () Bool)

(assert (=> b!5044559 m!6079662))

(declare-fun m!6079664 () Bool)

(assert (=> b!5044558 m!6079664))

(assert (=> b!5044325 d!1623571))

(declare-fun d!1623573 () Bool)

(declare-fun lt!2084946 () Int)

(assert (=> d!1623573 (= lt!2084946 (size!38924 (list!18929 (left!42712 (left!42712 t!4198)))))))

(assert (=> d!1623573 (= lt!2084946 (ite ((_ is Empty!15522) (left!42712 (left!42712 t!4198))) 0 (ite ((_ is Leaf!25747) (left!42712 (left!42712 t!4198))) (csize!31275 (left!42712 (left!42712 t!4198))) (csize!31274 (left!42712 (left!42712 t!4198))))))))

(assert (=> d!1623573 (= (size!38925 (left!42712 (left!42712 t!4198))) lt!2084946)))

(declare-fun bs!1189096 () Bool)

(assert (= bs!1189096 d!1623573))

(assert (=> bs!1189096 m!6079000))

(assert (=> bs!1189096 m!6079000))

(assert (=> bs!1189096 m!6079238))

(assert (=> d!1623359 d!1623573))

(declare-fun d!1623575 () Bool)

(declare-fun lt!2084947 () Int)

(assert (=> d!1623575 (= lt!2084947 (size!38924 (list!18929 (right!43042 (left!42712 t!4198)))))))

(assert (=> d!1623575 (= lt!2084947 (ite ((_ is Empty!15522) (right!43042 (left!42712 t!4198))) 0 (ite ((_ is Leaf!25747) (right!43042 (left!42712 t!4198))) (csize!31275 (right!43042 (left!42712 t!4198))) (csize!31274 (right!43042 (left!42712 t!4198))))))))

(assert (=> d!1623575 (= (size!38925 (right!43042 (left!42712 t!4198))) lt!2084947)))

(declare-fun bs!1189097 () Bool)

(assert (= bs!1189097 d!1623575))

(assert (=> bs!1189097 m!6079002))

(assert (=> bs!1189097 m!6079002))

(assert (=> bs!1189097 m!6079240))

(assert (=> d!1623359 d!1623575))

(declare-fun b!5044562 () Bool)

(declare-fun res!2148942 () Bool)

(declare-fun e!3150022 () Bool)

(assert (=> b!5044562 (=> (not res!2148942) (not e!3150022))))

(declare-fun lt!2084948 () List!58434)

(assert (=> b!5044562 (= res!2148942 (= (size!38924 lt!2084948) (+ (size!38924 (list!18929 (left!42712 (left!42712 (left!42712 t!4198))))) (size!38924 (list!18929 (right!43042 (left!42712 (left!42712 t!4198))))))))))

(declare-fun b!5044563 () Bool)

(assert (=> b!5044563 (= e!3150022 (or (not (= (list!18929 (right!43042 (left!42712 (left!42712 t!4198)))) Nil!58310)) (= lt!2084948 (list!18929 (left!42712 (left!42712 (left!42712 t!4198)))))))))

(declare-fun b!5044561 () Bool)

(declare-fun e!3150021 () List!58434)

(assert (=> b!5044561 (= e!3150021 (Cons!58310 (h!64758 (list!18929 (left!42712 (left!42712 (left!42712 t!4198))))) (++!12734 (t!371021 (list!18929 (left!42712 (left!42712 (left!42712 t!4198))))) (list!18929 (right!43042 (left!42712 (left!42712 t!4198)))))))))

(declare-fun d!1623577 () Bool)

(assert (=> d!1623577 e!3150022))

(declare-fun res!2148943 () Bool)

(assert (=> d!1623577 (=> (not res!2148943) (not e!3150022))))

(assert (=> d!1623577 (= res!2148943 (= (content!10362 lt!2084948) ((_ map or) (content!10362 (list!18929 (left!42712 (left!42712 (left!42712 t!4198))))) (content!10362 (list!18929 (right!43042 (left!42712 (left!42712 t!4198))))))))))

(assert (=> d!1623577 (= lt!2084948 e!3150021)))

(declare-fun c!864633 () Bool)

(assert (=> d!1623577 (= c!864633 ((_ is Nil!58310) (list!18929 (left!42712 (left!42712 (left!42712 t!4198))))))))

(assert (=> d!1623577 (= (++!12734 (list!18929 (left!42712 (left!42712 (left!42712 t!4198)))) (list!18929 (right!43042 (left!42712 (left!42712 t!4198))))) lt!2084948)))

(declare-fun b!5044560 () Bool)

(assert (=> b!5044560 (= e!3150021 (list!18929 (right!43042 (left!42712 (left!42712 t!4198)))))))

(assert (= (and d!1623577 c!864633) b!5044560))

(assert (= (and d!1623577 (not c!864633)) b!5044561))

(assert (= (and d!1623577 res!2148943) b!5044562))

(assert (= (and b!5044562 res!2148942) b!5044563))

(declare-fun m!6079666 () Bool)

(assert (=> b!5044562 m!6079666))

(assert (=> b!5044562 m!6079250))

(declare-fun m!6079668 () Bool)

(assert (=> b!5044562 m!6079668))

(assert (=> b!5044562 m!6079252))

(declare-fun m!6079670 () Bool)

(assert (=> b!5044562 m!6079670))

(assert (=> b!5044561 m!6079252))

(declare-fun m!6079672 () Bool)

(assert (=> b!5044561 m!6079672))

(declare-fun m!6079674 () Bool)

(assert (=> d!1623577 m!6079674))

(assert (=> d!1623577 m!6079250))

(declare-fun m!6079676 () Bool)

(assert (=> d!1623577 m!6079676))

(assert (=> d!1623577 m!6079252))

(declare-fun m!6079678 () Bool)

(assert (=> d!1623577 m!6079678))

(assert (=> b!5044321 d!1623577))

(declare-fun b!5044567 () Bool)

(declare-fun e!3150024 () List!58434)

(assert (=> b!5044567 (= e!3150024 (++!12734 (list!18929 (left!42712 (left!42712 (left!42712 (left!42712 t!4198))))) (list!18929 (right!43042 (left!42712 (left!42712 (left!42712 t!4198)))))))))

(declare-fun b!5044565 () Bool)

(declare-fun e!3150023 () List!58434)

(assert (=> b!5044565 (= e!3150023 e!3150024)))

(declare-fun c!864635 () Bool)

(assert (=> b!5044565 (= c!864635 ((_ is Leaf!25747) (left!42712 (left!42712 (left!42712 t!4198)))))))

(declare-fun b!5044564 () Bool)

(assert (=> b!5044564 (= e!3150023 Nil!58310)))

(declare-fun d!1623579 () Bool)

(declare-fun c!864634 () Bool)

(assert (=> d!1623579 (= c!864634 ((_ is Empty!15522) (left!42712 (left!42712 (left!42712 t!4198)))))))

(assert (=> d!1623579 (= (list!18929 (left!42712 (left!42712 (left!42712 t!4198)))) e!3150023)))

(declare-fun b!5044566 () Bool)

(assert (=> b!5044566 (= e!3150024 (list!18931 (xs!18848 (left!42712 (left!42712 (left!42712 t!4198))))))))

(assert (= (and d!1623579 c!864634) b!5044564))

(assert (= (and d!1623579 (not c!864634)) b!5044565))

(assert (= (and b!5044565 c!864635) b!5044566))

(assert (= (and b!5044565 (not c!864635)) b!5044567))

(declare-fun m!6079680 () Bool)

(assert (=> b!5044567 m!6079680))

(declare-fun m!6079682 () Bool)

(assert (=> b!5044567 m!6079682))

(assert (=> b!5044567 m!6079680))

(assert (=> b!5044567 m!6079682))

(declare-fun m!6079684 () Bool)

(assert (=> b!5044567 m!6079684))

(declare-fun m!6079686 () Bool)

(assert (=> b!5044566 m!6079686))

(assert (=> b!5044321 d!1623579))

(declare-fun b!5044571 () Bool)

(declare-fun e!3150026 () List!58434)

(assert (=> b!5044571 (= e!3150026 (++!12734 (list!18929 (left!42712 (right!43042 (left!42712 (left!42712 t!4198))))) (list!18929 (right!43042 (right!43042 (left!42712 (left!42712 t!4198)))))))))

(declare-fun b!5044569 () Bool)

(declare-fun e!3150025 () List!58434)

(assert (=> b!5044569 (= e!3150025 e!3150026)))

(declare-fun c!864637 () Bool)

(assert (=> b!5044569 (= c!864637 ((_ is Leaf!25747) (right!43042 (left!42712 (left!42712 t!4198)))))))

(declare-fun b!5044568 () Bool)

(assert (=> b!5044568 (= e!3150025 Nil!58310)))

(declare-fun d!1623581 () Bool)

(declare-fun c!864636 () Bool)

(assert (=> d!1623581 (= c!864636 ((_ is Empty!15522) (right!43042 (left!42712 (left!42712 t!4198)))))))

(assert (=> d!1623581 (= (list!18929 (right!43042 (left!42712 (left!42712 t!4198)))) e!3150025)))

(declare-fun b!5044570 () Bool)

(assert (=> b!5044570 (= e!3150026 (list!18931 (xs!18848 (right!43042 (left!42712 (left!42712 t!4198))))))))

(assert (= (and d!1623581 c!864636) b!5044568))

(assert (= (and d!1623581 (not c!864636)) b!5044569))

(assert (= (and b!5044569 c!864637) b!5044570))

(assert (= (and b!5044569 (not c!864637)) b!5044571))

(declare-fun m!6079688 () Bool)

(assert (=> b!5044571 m!6079688))

(declare-fun m!6079690 () Bool)

(assert (=> b!5044571 m!6079690))

(assert (=> b!5044571 m!6079688))

(assert (=> b!5044571 m!6079690))

(declare-fun m!6079692 () Bool)

(assert (=> b!5044571 m!6079692))

(declare-fun m!6079694 () Bool)

(assert (=> b!5044570 m!6079694))

(assert (=> b!5044321 d!1623581))

(declare-fun d!1623583 () Bool)

(declare-fun lt!2084949 () Int)

(assert (=> d!1623583 (>= lt!2084949 0)))

(declare-fun e!3150027 () Int)

(assert (=> d!1623583 (= lt!2084949 e!3150027)))

(declare-fun c!864638 () Bool)

(assert (=> d!1623583 (= c!864638 ((_ is Nil!58310) (t!371021 (list!18929 t!4198))))))

(assert (=> d!1623583 (= (size!38924 (t!371021 (list!18929 t!4198))) lt!2084949)))

(declare-fun b!5044572 () Bool)

(assert (=> b!5044572 (= e!3150027 0)))

(declare-fun b!5044573 () Bool)

(assert (=> b!5044573 (= e!3150027 (+ 1 (size!38924 (t!371021 (t!371021 (list!18929 t!4198))))))))

(assert (= (and d!1623583 c!864638) b!5044572))

(assert (= (and d!1623583 (not c!864638)) b!5044573))

(declare-fun m!6079696 () Bool)

(assert (=> b!5044573 m!6079696))

(assert (=> b!5044259 d!1623583))

(declare-fun d!1623585 () Bool)

(assert (=> d!1623585 (= (list!18931 (xs!18848 (right!43042 (right!43042 t!4198)))) (innerList!15610 (xs!18848 (right!43042 (right!43042 t!4198)))))))

(assert (=> b!5044256 d!1623585))

(declare-fun d!1623587 () Bool)

(declare-fun lt!2084950 () Int)

(assert (=> d!1623587 (>= lt!2084950 0)))

(declare-fun e!3150028 () Int)

(assert (=> d!1623587 (= lt!2084950 e!3150028)))

(declare-fun c!864639 () Bool)

(assert (=> d!1623587 (= c!864639 ((_ is Nil!58310) lt!2084906))))

(assert (=> d!1623587 (= (size!38924 lt!2084906) lt!2084950)))

(declare-fun b!5044574 () Bool)

(assert (=> b!5044574 (= e!3150028 0)))

(declare-fun b!5044575 () Bool)

(assert (=> b!5044575 (= e!3150028 (+ 1 (size!38924 (t!371021 lt!2084906))))))

(assert (= (and d!1623587 c!864639) b!5044574))

(assert (= (and d!1623587 (not c!864639)) b!5044575))

(declare-fun m!6079698 () Bool)

(assert (=> b!5044575 m!6079698))

(assert (=> b!5044248 d!1623587))

(declare-fun d!1623589 () Bool)

(declare-fun lt!2084951 () Int)

(assert (=> d!1623589 (>= lt!2084951 0)))

(declare-fun e!3150029 () Int)

(assert (=> d!1623589 (= lt!2084951 e!3150029)))

(declare-fun c!864640 () Bool)

(assert (=> d!1623589 (= c!864640 ((_ is Nil!58310) (list!18929 (left!42712 (right!43042 t!4198)))))))

(assert (=> d!1623589 (= (size!38924 (list!18929 (left!42712 (right!43042 t!4198)))) lt!2084951)))

(declare-fun b!5044576 () Bool)

(assert (=> b!5044576 (= e!3150029 0)))

(declare-fun b!5044577 () Bool)

(assert (=> b!5044577 (= e!3150029 (+ 1 (size!38924 (t!371021 (list!18929 (left!42712 (right!43042 t!4198)))))))))

(assert (= (and d!1623589 c!864640) b!5044576))

(assert (= (and d!1623589 (not c!864640)) b!5044577))

(assert (=> b!5044577 m!6079630))

(assert (=> b!5044248 d!1623589))

(declare-fun d!1623591 () Bool)

(declare-fun lt!2084952 () Int)

(assert (=> d!1623591 (>= lt!2084952 0)))

(declare-fun e!3150030 () Int)

(assert (=> d!1623591 (= lt!2084952 e!3150030)))

(declare-fun c!864641 () Bool)

(assert (=> d!1623591 (= c!864641 ((_ is Nil!58310) (list!18929 (right!43042 (right!43042 t!4198)))))))

(assert (=> d!1623591 (= (size!38924 (list!18929 (right!43042 (right!43042 t!4198)))) lt!2084952)))

(declare-fun b!5044578 () Bool)

(assert (=> b!5044578 (= e!3150030 0)))

(declare-fun b!5044579 () Bool)

(assert (=> b!5044579 (= e!3150030 (+ 1 (size!38924 (t!371021 (list!18929 (right!43042 (right!43042 t!4198)))))))))

(assert (= (and d!1623591 c!864641) b!5044578))

(assert (= (and d!1623591 (not c!864641)) b!5044579))

(declare-fun m!6079700 () Bool)

(assert (=> b!5044579 m!6079700))

(assert (=> b!5044248 d!1623591))

(assert (=> b!5044273 d!1623525))

(assert (=> b!5044273 d!1623527))

(declare-fun d!1623593 () Bool)

(declare-fun c!864642 () Bool)

(assert (=> d!1623593 (= c!864642 ((_ is Node!15522) (left!42712 (right!43042 (right!43042 t!4198)))))))

(declare-fun e!3150031 () Bool)

(assert (=> d!1623593 (= (inv!77205 (left!42712 (right!43042 (right!43042 t!4198)))) e!3150031)))

(declare-fun b!5044580 () Bool)

(assert (=> b!5044580 (= e!3150031 (inv!77207 (left!42712 (right!43042 (right!43042 t!4198)))))))

(declare-fun b!5044581 () Bool)

(declare-fun e!3150032 () Bool)

(assert (=> b!5044581 (= e!3150031 e!3150032)))

(declare-fun res!2148944 () Bool)

(assert (=> b!5044581 (= res!2148944 (not ((_ is Leaf!25747) (left!42712 (right!43042 (right!43042 t!4198))))))))

(assert (=> b!5044581 (=> res!2148944 e!3150032)))

(declare-fun b!5044582 () Bool)

(assert (=> b!5044582 (= e!3150032 (inv!77208 (left!42712 (right!43042 (right!43042 t!4198)))))))

(assert (= (and d!1623593 c!864642) b!5044580))

(assert (= (and d!1623593 (not c!864642)) b!5044581))

(assert (= (and b!5044581 (not res!2148944)) b!5044582))

(declare-fun m!6079702 () Bool)

(assert (=> b!5044580 m!6079702))

(declare-fun m!6079704 () Bool)

(assert (=> b!5044582 m!6079704))

(assert (=> b!5044335 d!1623593))

(declare-fun d!1623595 () Bool)

(declare-fun c!864643 () Bool)

(assert (=> d!1623595 (= c!864643 ((_ is Node!15522) (right!43042 (right!43042 (right!43042 t!4198)))))))

(declare-fun e!3150033 () Bool)

(assert (=> d!1623595 (= (inv!77205 (right!43042 (right!43042 (right!43042 t!4198)))) e!3150033)))

(declare-fun b!5044583 () Bool)

(assert (=> b!5044583 (= e!3150033 (inv!77207 (right!43042 (right!43042 (right!43042 t!4198)))))))

(declare-fun b!5044584 () Bool)

(declare-fun e!3150034 () Bool)

(assert (=> b!5044584 (= e!3150033 e!3150034)))

(declare-fun res!2148945 () Bool)

(assert (=> b!5044584 (= res!2148945 (not ((_ is Leaf!25747) (right!43042 (right!43042 (right!43042 t!4198))))))))

(assert (=> b!5044584 (=> res!2148945 e!3150034)))

(declare-fun b!5044585 () Bool)

(assert (=> b!5044585 (= e!3150034 (inv!77208 (right!43042 (right!43042 (right!43042 t!4198)))))))

(assert (= (and d!1623595 c!864643) b!5044583))

(assert (= (and d!1623595 (not c!864643)) b!5044584))

(assert (= (and b!5044584 (not res!2148945)) b!5044585))

(declare-fun m!6079706 () Bool)

(assert (=> b!5044583 m!6079706))

(declare-fun m!6079708 () Bool)

(assert (=> b!5044585 m!6079708))

(assert (=> b!5044335 d!1623595))

(declare-fun b!5044588 () Bool)

(declare-fun res!2148946 () Bool)

(declare-fun e!3150036 () Bool)

(assert (=> b!5044588 (=> (not res!2148946) (not e!3150036))))

(declare-fun lt!2084953 () List!58434)

(assert (=> b!5044588 (= res!2148946 (= (size!38924 lt!2084953) (+ (size!38924 (list!18929 (left!42712 (left!42712 (right!43042 t!4198))))) (size!38924 (list!18929 (right!43042 (left!42712 (right!43042 t!4198))))))))))

(declare-fun b!5044589 () Bool)

(assert (=> b!5044589 (= e!3150036 (or (not (= (list!18929 (right!43042 (left!42712 (right!43042 t!4198)))) Nil!58310)) (= lt!2084953 (list!18929 (left!42712 (left!42712 (right!43042 t!4198)))))))))

(declare-fun b!5044587 () Bool)

(declare-fun e!3150035 () List!58434)

(assert (=> b!5044587 (= e!3150035 (Cons!58310 (h!64758 (list!18929 (left!42712 (left!42712 (right!43042 t!4198))))) (++!12734 (t!371021 (list!18929 (left!42712 (left!42712 (right!43042 t!4198))))) (list!18929 (right!43042 (left!42712 (right!43042 t!4198)))))))))

(declare-fun d!1623597 () Bool)

(assert (=> d!1623597 e!3150036))

(declare-fun res!2148947 () Bool)

(assert (=> d!1623597 (=> (not res!2148947) (not e!3150036))))

(assert (=> d!1623597 (= res!2148947 (= (content!10362 lt!2084953) ((_ map or) (content!10362 (list!18929 (left!42712 (left!42712 (right!43042 t!4198))))) (content!10362 (list!18929 (right!43042 (left!42712 (right!43042 t!4198))))))))))

(assert (=> d!1623597 (= lt!2084953 e!3150035)))

(declare-fun c!864644 () Bool)

(assert (=> d!1623597 (= c!864644 ((_ is Nil!58310) (list!18929 (left!42712 (left!42712 (right!43042 t!4198))))))))

(assert (=> d!1623597 (= (++!12734 (list!18929 (left!42712 (left!42712 (right!43042 t!4198)))) (list!18929 (right!43042 (left!42712 (right!43042 t!4198))))) lt!2084953)))

(declare-fun b!5044586 () Bool)

(assert (=> b!5044586 (= e!3150035 (list!18929 (right!43042 (left!42712 (right!43042 t!4198)))))))

(assert (= (and d!1623597 c!864644) b!5044586))

(assert (= (and d!1623597 (not c!864644)) b!5044587))

(assert (= (and d!1623597 res!2148947) b!5044588))

(assert (= (and b!5044588 res!2148946) b!5044589))

(declare-fun m!6079710 () Bool)

(assert (=> b!5044588 m!6079710))

(assert (=> b!5044588 m!6079150))

(declare-fun m!6079712 () Bool)

(assert (=> b!5044588 m!6079712))

(assert (=> b!5044588 m!6079152))

(declare-fun m!6079714 () Bool)

(assert (=> b!5044588 m!6079714))

(assert (=> b!5044587 m!6079152))

(declare-fun m!6079716 () Bool)

(assert (=> b!5044587 m!6079716))

(declare-fun m!6079718 () Bool)

(assert (=> d!1623597 m!6079718))

(assert (=> d!1623597 m!6079150))

(declare-fun m!6079720 () Bool)

(assert (=> d!1623597 m!6079720))

(assert (=> d!1623597 m!6079152))

(declare-fun m!6079722 () Bool)

(assert (=> d!1623597 m!6079722))

(assert (=> b!5044253 d!1623597))

(declare-fun b!5044593 () Bool)

(declare-fun e!3150038 () List!58434)

(assert (=> b!5044593 (= e!3150038 (++!12734 (list!18929 (left!42712 (left!42712 (left!42712 (right!43042 t!4198))))) (list!18929 (right!43042 (left!42712 (left!42712 (right!43042 t!4198)))))))))

(declare-fun b!5044591 () Bool)

(declare-fun e!3150037 () List!58434)

(assert (=> b!5044591 (= e!3150037 e!3150038)))

(declare-fun c!864646 () Bool)

(assert (=> b!5044591 (= c!864646 ((_ is Leaf!25747) (left!42712 (left!42712 (right!43042 t!4198)))))))

(declare-fun b!5044590 () Bool)

(assert (=> b!5044590 (= e!3150037 Nil!58310)))

(declare-fun d!1623599 () Bool)

(declare-fun c!864645 () Bool)

(assert (=> d!1623599 (= c!864645 ((_ is Empty!15522) (left!42712 (left!42712 (right!43042 t!4198)))))))

(assert (=> d!1623599 (= (list!18929 (left!42712 (left!42712 (right!43042 t!4198)))) e!3150037)))

(declare-fun b!5044592 () Bool)

(assert (=> b!5044592 (= e!3150038 (list!18931 (xs!18848 (left!42712 (left!42712 (right!43042 t!4198))))))))

(assert (= (and d!1623599 c!864645) b!5044590))

(assert (= (and d!1623599 (not c!864645)) b!5044591))

(assert (= (and b!5044591 c!864646) b!5044592))

(assert (= (and b!5044591 (not c!864646)) b!5044593))

(declare-fun m!6079724 () Bool)

(assert (=> b!5044593 m!6079724))

(declare-fun m!6079726 () Bool)

(assert (=> b!5044593 m!6079726))

(assert (=> b!5044593 m!6079724))

(assert (=> b!5044593 m!6079726))

(declare-fun m!6079728 () Bool)

(assert (=> b!5044593 m!6079728))

(declare-fun m!6079730 () Bool)

(assert (=> b!5044592 m!6079730))

(assert (=> b!5044253 d!1623599))

(declare-fun b!5044597 () Bool)

(declare-fun e!3150040 () List!58434)

(assert (=> b!5044597 (= e!3150040 (++!12734 (list!18929 (left!42712 (right!43042 (left!42712 (right!43042 t!4198))))) (list!18929 (right!43042 (right!43042 (left!42712 (right!43042 t!4198)))))))))

(declare-fun b!5044595 () Bool)

(declare-fun e!3150039 () List!58434)

(assert (=> b!5044595 (= e!3150039 e!3150040)))

(declare-fun c!864648 () Bool)

(assert (=> b!5044595 (= c!864648 ((_ is Leaf!25747) (right!43042 (left!42712 (right!43042 t!4198)))))))

(declare-fun b!5044594 () Bool)

(assert (=> b!5044594 (= e!3150039 Nil!58310)))

(declare-fun d!1623601 () Bool)

(declare-fun c!864647 () Bool)

(assert (=> d!1623601 (= c!864647 ((_ is Empty!15522) (right!43042 (left!42712 (right!43042 t!4198)))))))

(assert (=> d!1623601 (= (list!18929 (right!43042 (left!42712 (right!43042 t!4198)))) e!3150039)))

(declare-fun b!5044596 () Bool)

(assert (=> b!5044596 (= e!3150040 (list!18931 (xs!18848 (right!43042 (left!42712 (right!43042 t!4198))))))))

(assert (= (and d!1623601 c!864647) b!5044594))

(assert (= (and d!1623601 (not c!864647)) b!5044595))

(assert (= (and b!5044595 c!864648) b!5044596))

(assert (= (and b!5044595 (not c!864648)) b!5044597))

(declare-fun m!6079732 () Bool)

(assert (=> b!5044597 m!6079732))

(declare-fun m!6079734 () Bool)

(assert (=> b!5044597 m!6079734))

(assert (=> b!5044597 m!6079732))

(assert (=> b!5044597 m!6079734))

(declare-fun m!6079736 () Bool)

(assert (=> b!5044597 m!6079736))

(declare-fun m!6079738 () Bool)

(assert (=> b!5044596 m!6079738))

(assert (=> b!5044253 d!1623601))

(declare-fun b!5044598 () Bool)

(declare-fun res!2148950 () Bool)

(declare-fun e!3150042 () Bool)

(assert (=> b!5044598 (=> (not res!2148950) (not e!3150042))))

(assert (=> b!5044598 (= res!2148950 (<= (- (height!2100 (left!42712 (right!43042 (right!43042 t!4198)))) (height!2100 (right!43042 (right!43042 (right!43042 t!4198))))) 1))))

(declare-fun d!1623603 () Bool)

(declare-fun res!2148948 () Bool)

(declare-fun e!3150041 () Bool)

(assert (=> d!1623603 (=> res!2148948 e!3150041)))

(assert (=> d!1623603 (= res!2148948 (not ((_ is Node!15522) (right!43042 (right!43042 t!4198)))))))

(assert (=> d!1623603 (= (isBalanced!4384 (right!43042 (right!43042 t!4198))) e!3150041)))

(declare-fun b!5044599 () Bool)

(assert (=> b!5044599 (= e!3150042 (not (isEmpty!31550 (right!43042 (right!43042 (right!43042 t!4198))))))))

(declare-fun b!5044600 () Bool)

(declare-fun res!2148952 () Bool)

(assert (=> b!5044600 (=> (not res!2148952) (not e!3150042))))

(assert (=> b!5044600 (= res!2148952 (not (isEmpty!31550 (left!42712 (right!43042 (right!43042 t!4198))))))))

(declare-fun b!5044601 () Bool)

(declare-fun res!2148953 () Bool)

(assert (=> b!5044601 (=> (not res!2148953) (not e!3150042))))

(assert (=> b!5044601 (= res!2148953 (isBalanced!4384 (left!42712 (right!43042 (right!43042 t!4198)))))))

(declare-fun b!5044602 () Bool)

(declare-fun res!2148951 () Bool)

(assert (=> b!5044602 (=> (not res!2148951) (not e!3150042))))

(assert (=> b!5044602 (= res!2148951 (isBalanced!4384 (right!43042 (right!43042 (right!43042 t!4198)))))))

(declare-fun b!5044603 () Bool)

(assert (=> b!5044603 (= e!3150041 e!3150042)))

(declare-fun res!2148949 () Bool)

(assert (=> b!5044603 (=> (not res!2148949) (not e!3150042))))

(assert (=> b!5044603 (= res!2148949 (<= (- 1) (- (height!2100 (left!42712 (right!43042 (right!43042 t!4198)))) (height!2100 (right!43042 (right!43042 (right!43042 t!4198)))))))))

(assert (= (and d!1623603 (not res!2148948)) b!5044603))

(assert (= (and b!5044603 res!2148949) b!5044598))

(assert (= (and b!5044598 res!2148950) b!5044601))

(assert (= (and b!5044601 res!2148953) b!5044602))

(assert (= (and b!5044602 res!2148951) b!5044600))

(assert (= (and b!5044600 res!2148952) b!5044599))

(declare-fun m!6079740 () Bool)

(assert (=> b!5044600 m!6079740))

(declare-fun m!6079742 () Bool)

(assert (=> b!5044602 m!6079742))

(declare-fun m!6079744 () Bool)

(assert (=> b!5044601 m!6079744))

(assert (=> b!5044603 m!6079608))

(assert (=> b!5044603 m!6079610))

(assert (=> b!5044598 m!6079608))

(assert (=> b!5044598 m!6079610))

(declare-fun m!6079746 () Bool)

(assert (=> b!5044599 m!6079746))

(assert (=> b!5044277 d!1623603))

(declare-fun d!1623605 () Bool)

(declare-fun lt!2084954 () Bool)

(assert (=> d!1623605 (= lt!2084954 (isEmpty!31551 (list!18929 (left!42712 (right!43042 t!4198)))))))

(assert (=> d!1623605 (= lt!2084954 (= (size!38925 (left!42712 (right!43042 t!4198))) 0))))

(assert (=> d!1623605 (= (isEmpty!31550 (left!42712 (right!43042 t!4198))) lt!2084954)))

(declare-fun bs!1189098 () Bool)

(assert (= bs!1189098 d!1623605))

(assert (=> bs!1189098 m!6079018))

(assert (=> bs!1189098 m!6079018))

(declare-fun m!6079748 () Bool)

(assert (=> bs!1189098 m!6079748))

(assert (=> bs!1189098 m!6079266))

(assert (=> b!5044275 d!1623605))

(assert (=> b!5044294 d!1623453))

(assert (=> b!5044294 d!1623455))

(declare-fun d!1623607 () Bool)

(declare-fun c!864649 () Bool)

(assert (=> d!1623607 (= c!864649 ((_ is Node!15522) (left!42712 (right!43042 (left!42712 t!4198)))))))

(declare-fun e!3150043 () Bool)

(assert (=> d!1623607 (= (inv!77205 (left!42712 (right!43042 (left!42712 t!4198)))) e!3150043)))

(declare-fun b!5044604 () Bool)

(assert (=> b!5044604 (= e!3150043 (inv!77207 (left!42712 (right!43042 (left!42712 t!4198)))))))

(declare-fun b!5044605 () Bool)

(declare-fun e!3150044 () Bool)

(assert (=> b!5044605 (= e!3150043 e!3150044)))

(declare-fun res!2148954 () Bool)

(assert (=> b!5044605 (= res!2148954 (not ((_ is Leaf!25747) (left!42712 (right!43042 (left!42712 t!4198))))))))

(assert (=> b!5044605 (=> res!2148954 e!3150044)))

(declare-fun b!5044606 () Bool)

(assert (=> b!5044606 (= e!3150044 (inv!77208 (left!42712 (right!43042 (left!42712 t!4198)))))))

(assert (= (and d!1623607 c!864649) b!5044604))

(assert (= (and d!1623607 (not c!864649)) b!5044605))

(assert (= (and b!5044605 (not res!2148954)) b!5044606))

(declare-fun m!6079750 () Bool)

(assert (=> b!5044604 m!6079750))

(declare-fun m!6079752 () Bool)

(assert (=> b!5044606 m!6079752))

(assert (=> b!5044346 d!1623607))

(declare-fun d!1623609 () Bool)

(declare-fun c!864650 () Bool)

(assert (=> d!1623609 (= c!864650 ((_ is Node!15522) (right!43042 (right!43042 (left!42712 t!4198)))))))

(declare-fun e!3150045 () Bool)

(assert (=> d!1623609 (= (inv!77205 (right!43042 (right!43042 (left!42712 t!4198)))) e!3150045)))

(declare-fun b!5044607 () Bool)

(assert (=> b!5044607 (= e!3150045 (inv!77207 (right!43042 (right!43042 (left!42712 t!4198)))))))

(declare-fun b!5044608 () Bool)

(declare-fun e!3150046 () Bool)

(assert (=> b!5044608 (= e!3150045 e!3150046)))

(declare-fun res!2148955 () Bool)

(assert (=> b!5044608 (= res!2148955 (not ((_ is Leaf!25747) (right!43042 (right!43042 (left!42712 t!4198))))))))

(assert (=> b!5044608 (=> res!2148955 e!3150046)))

(declare-fun b!5044609 () Bool)

(assert (=> b!5044609 (= e!3150046 (inv!77208 (right!43042 (right!43042 (left!42712 t!4198)))))))

(assert (= (and d!1623609 c!864650) b!5044607))

(assert (= (and d!1623609 (not c!864650)) b!5044608))

(assert (= (and b!5044608 (not res!2148955)) b!5044609))

(declare-fun m!6079754 () Bool)

(assert (=> b!5044607 m!6079754))

(declare-fun m!6079756 () Bool)

(assert (=> b!5044609 m!6079756))

(assert (=> b!5044346 d!1623609))

(declare-fun d!1623611 () Bool)

(assert (=> d!1623611 (= (isEmpty!31551 (list!18929 (right!43042 t!4198))) ((_ is Nil!58310) (list!18929 (right!43042 t!4198))))))

(assert (=> d!1623337 d!1623611))

(assert (=> d!1623337 d!1623305))

(assert (=> d!1623337 d!1623521))

(declare-fun d!1623613 () Bool)

(declare-fun lt!2084955 () Bool)

(assert (=> d!1623613 (= lt!2084955 (isEmpty!31551 (list!18929 (left!42712 (left!42712 t!4198)))))))

(assert (=> d!1623613 (= lt!2084955 (= (size!38925 (left!42712 (left!42712 t!4198))) 0))))

(assert (=> d!1623613 (= (isEmpty!31550 (left!42712 (left!42712 t!4198))) lt!2084955)))

(declare-fun bs!1189099 () Bool)

(assert (= bs!1189099 d!1623613))

(assert (=> bs!1189099 m!6079000))

(assert (=> bs!1189099 m!6079000))

(declare-fun m!6079758 () Bool)

(assert (=> bs!1189099 m!6079758))

(assert (=> bs!1189099 m!6079172))

(assert (=> b!5044296 d!1623613))

(declare-fun d!1623615 () Bool)

(declare-fun c!864651 () Bool)

(assert (=> d!1623615 (= c!864651 ((_ is Nil!58310) lt!2084911))))

(declare-fun e!3150047 () (InoxSet T!104250))

(assert (=> d!1623615 (= (content!10362 lt!2084911) e!3150047)))

(declare-fun b!5044610 () Bool)

(assert (=> b!5044610 (= e!3150047 ((as const (Array T!104250 Bool)) false))))

(declare-fun b!5044611 () Bool)

(assert (=> b!5044611 (= e!3150047 ((_ map or) (store ((as const (Array T!104250 Bool)) false) (h!64758 lt!2084911) true) (content!10362 (t!371021 lt!2084911))))))

(assert (= (and d!1623615 c!864651) b!5044610))

(assert (= (and d!1623615 (not c!864651)) b!5044611))

(declare-fun m!6079760 () Bool)

(assert (=> b!5044611 m!6079760))

(declare-fun m!6079762 () Bool)

(assert (=> b!5044611 m!6079762))

(assert (=> d!1623391 d!1623615))

(declare-fun d!1623617 () Bool)

(declare-fun c!864652 () Bool)

(assert (=> d!1623617 (= c!864652 ((_ is Nil!58310) (list!18929 (left!42712 (left!42712 t!4198)))))))

(declare-fun e!3150048 () (InoxSet T!104250))

(assert (=> d!1623617 (= (content!10362 (list!18929 (left!42712 (left!42712 t!4198)))) e!3150048)))

(declare-fun b!5044612 () Bool)

(assert (=> b!5044612 (= e!3150048 ((as const (Array T!104250 Bool)) false))))

(declare-fun b!5044613 () Bool)

(assert (=> b!5044613 (= e!3150048 ((_ map or) (store ((as const (Array T!104250 Bool)) false) (h!64758 (list!18929 (left!42712 (left!42712 t!4198)))) true) (content!10362 (t!371021 (list!18929 (left!42712 (left!42712 t!4198)))))))))

(assert (= (and d!1623617 c!864652) b!5044612))

(assert (= (and d!1623617 (not c!864652)) b!5044613))

(declare-fun m!6079764 () Bool)

(assert (=> b!5044613 m!6079764))

(assert (=> b!5044613 m!6079622))

(assert (=> d!1623391 d!1623617))

(declare-fun d!1623619 () Bool)

(declare-fun c!864653 () Bool)

(assert (=> d!1623619 (= c!864653 ((_ is Nil!58310) (list!18929 (right!43042 (left!42712 t!4198)))))))

(declare-fun e!3150049 () (InoxSet T!104250))

(assert (=> d!1623619 (= (content!10362 (list!18929 (right!43042 (left!42712 t!4198)))) e!3150049)))

(declare-fun b!5044614 () Bool)

(assert (=> b!5044614 (= e!3150049 ((as const (Array T!104250 Bool)) false))))

(declare-fun b!5044615 () Bool)

(assert (=> b!5044615 (= e!3150049 ((_ map or) (store ((as const (Array T!104250 Bool)) false) (h!64758 (list!18929 (right!43042 (left!42712 t!4198)))) true) (content!10362 (t!371021 (list!18929 (right!43042 (left!42712 t!4198)))))))))

(assert (= (and d!1623619 c!864653) b!5044614))

(assert (= (and d!1623619 (not c!864653)) b!5044615))

(declare-fun m!6079766 () Bool)

(assert (=> b!5044615 m!6079766))

(declare-fun m!6079768 () Bool)

(assert (=> b!5044615 m!6079768))

(assert (=> d!1623391 d!1623619))

(declare-fun b!5044616 () Bool)

(declare-fun e!3150050 () Bool)

(declare-fun tp!1411542 () Bool)

(assert (=> b!5044616 (= e!3150050 (and tp_is_empty!36807 tp!1411542))))

(assert (=> b!5044341 (= tp!1411522 e!3150050)))

(assert (= (and b!5044341 ((_ is Cons!58310) (innerList!15610 (xs!18848 (left!42712 (left!42712 t!4198)))))) b!5044616))

(declare-fun b!5044617 () Bool)

(declare-fun e!3150051 () Bool)

(declare-fun tp!1411543 () Bool)

(assert (=> b!5044617 (= e!3150051 (and tp_is_empty!36807 tp!1411543))))

(assert (=> b!5044348 (= tp!1411525 e!3150051)))

(assert (= (and b!5044348 ((_ is Cons!58310) (innerList!15610 (xs!18848 (right!43042 (left!42712 t!4198)))))) b!5044617))

(declare-fun e!3150053 () Bool)

(declare-fun tp!1411544 () Bool)

(declare-fun tp!1411545 () Bool)

(declare-fun b!5044618 () Bool)

(assert (=> b!5044618 (= e!3150053 (and (inv!77205 (left!42712 (left!42712 (right!43042 (left!42712 t!4198))))) tp!1411544 (inv!77205 (right!43042 (left!42712 (right!43042 (left!42712 t!4198))))) tp!1411545))))

(declare-fun b!5044620 () Bool)

(declare-fun e!3150052 () Bool)

(declare-fun tp!1411546 () Bool)

(assert (=> b!5044620 (= e!3150052 tp!1411546)))

(declare-fun b!5044619 () Bool)

(assert (=> b!5044619 (= e!3150053 (and (inv!77206 (xs!18848 (left!42712 (right!43042 (left!42712 t!4198))))) e!3150052))))

(assert (=> b!5044346 (= tp!1411523 (and (inv!77205 (left!42712 (right!43042 (left!42712 t!4198)))) e!3150053))))

(assert (= (and b!5044346 ((_ is Node!15522) (left!42712 (right!43042 (left!42712 t!4198))))) b!5044618))

(assert (= b!5044619 b!5044620))

(assert (= (and b!5044346 ((_ is Leaf!25747) (left!42712 (right!43042 (left!42712 t!4198))))) b!5044619))

(declare-fun m!6079770 () Bool)

(assert (=> b!5044618 m!6079770))

(declare-fun m!6079772 () Bool)

(assert (=> b!5044618 m!6079772))

(declare-fun m!6079774 () Bool)

(assert (=> b!5044619 m!6079774))

(assert (=> b!5044346 m!6079296))

(declare-fun b!5044621 () Bool)

(declare-fun e!3150055 () Bool)

(declare-fun tp!1411547 () Bool)

(declare-fun tp!1411548 () Bool)

(assert (=> b!5044621 (= e!3150055 (and (inv!77205 (left!42712 (right!43042 (right!43042 (left!42712 t!4198))))) tp!1411547 (inv!77205 (right!43042 (right!43042 (right!43042 (left!42712 t!4198))))) tp!1411548))))

(declare-fun b!5044623 () Bool)

(declare-fun e!3150054 () Bool)

(declare-fun tp!1411549 () Bool)

(assert (=> b!5044623 (= e!3150054 tp!1411549)))

(declare-fun b!5044622 () Bool)

(assert (=> b!5044622 (= e!3150055 (and (inv!77206 (xs!18848 (right!43042 (right!43042 (left!42712 t!4198))))) e!3150054))))

(assert (=> b!5044346 (= tp!1411524 (and (inv!77205 (right!43042 (right!43042 (left!42712 t!4198)))) e!3150055))))

(assert (= (and b!5044346 ((_ is Node!15522) (right!43042 (right!43042 (left!42712 t!4198))))) b!5044621))

(assert (= b!5044622 b!5044623))

(assert (= (and b!5044346 ((_ is Leaf!25747) (right!43042 (right!43042 (left!42712 t!4198))))) b!5044622))

(declare-fun m!6079776 () Bool)

(assert (=> b!5044621 m!6079776))

(declare-fun m!6079778 () Bool)

(assert (=> b!5044621 m!6079778))

(declare-fun m!6079780 () Bool)

(assert (=> b!5044622 m!6079780))

(assert (=> b!5044346 m!6079298))

(declare-fun b!5044624 () Bool)

(declare-fun e!3150056 () Bool)

(declare-fun tp!1411550 () Bool)

(assert (=> b!5044624 (= e!3150056 (and tp_is_empty!36807 tp!1411550))))

(assert (=> b!5044331 (= tp!1411512 e!3150056)))

(assert (= (and b!5044331 ((_ is Cons!58310) (t!371021 (innerList!15610 (xs!18848 (left!42712 t!4198)))))) b!5044624))

(declare-fun b!5044625 () Bool)

(declare-fun e!3150057 () Bool)

(declare-fun tp!1411551 () Bool)

(assert (=> b!5044625 (= e!3150057 (and tp_is_empty!36807 tp!1411551))))

(assert (=> b!5044349 (= tp!1411526 e!3150057)))

(assert (= (and b!5044349 ((_ is Cons!58310) (t!371021 (innerList!15610 (xs!18848 (right!43042 t!4198)))))) b!5044625))

(declare-fun e!3150059 () Bool)

(declare-fun tp!1411553 () Bool)

(declare-fun b!5044626 () Bool)

(declare-fun tp!1411552 () Bool)

(assert (=> b!5044626 (= e!3150059 (and (inv!77205 (left!42712 (left!42712 (left!42712 (right!43042 t!4198))))) tp!1411552 (inv!77205 (right!43042 (left!42712 (left!42712 (right!43042 t!4198))))) tp!1411553))))

(declare-fun b!5044628 () Bool)

(declare-fun e!3150058 () Bool)

(declare-fun tp!1411554 () Bool)

(assert (=> b!5044628 (= e!3150058 tp!1411554)))

(declare-fun b!5044627 () Bool)

(assert (=> b!5044627 (= e!3150059 (and (inv!77206 (xs!18848 (left!42712 (left!42712 (right!43042 t!4198))))) e!3150058))))

(assert (=> b!5044332 (= tp!1411513 (and (inv!77205 (left!42712 (left!42712 (right!43042 t!4198)))) e!3150059))))

(assert (= (and b!5044332 ((_ is Node!15522) (left!42712 (left!42712 (right!43042 t!4198))))) b!5044626))

(assert (= b!5044627 b!5044628))

(assert (= (and b!5044332 ((_ is Leaf!25747) (left!42712 (left!42712 (right!43042 t!4198))))) b!5044627))

(declare-fun m!6079782 () Bool)

(assert (=> b!5044626 m!6079782))

(declare-fun m!6079784 () Bool)

(assert (=> b!5044626 m!6079784))

(declare-fun m!6079786 () Bool)

(assert (=> b!5044627 m!6079786))

(assert (=> b!5044332 m!6079278))

(declare-fun tp!1411555 () Bool)

(declare-fun tp!1411556 () Bool)

(declare-fun b!5044629 () Bool)

(declare-fun e!3150061 () Bool)

(assert (=> b!5044629 (= e!3150061 (and (inv!77205 (left!42712 (right!43042 (left!42712 (right!43042 t!4198))))) tp!1411555 (inv!77205 (right!43042 (right!43042 (left!42712 (right!43042 t!4198))))) tp!1411556))))

(declare-fun b!5044631 () Bool)

(declare-fun e!3150060 () Bool)

(declare-fun tp!1411557 () Bool)

(assert (=> b!5044631 (= e!3150060 tp!1411557)))

(declare-fun b!5044630 () Bool)

(assert (=> b!5044630 (= e!3150061 (and (inv!77206 (xs!18848 (right!43042 (left!42712 (right!43042 t!4198))))) e!3150060))))

(assert (=> b!5044332 (= tp!1411514 (and (inv!77205 (right!43042 (left!42712 (right!43042 t!4198)))) e!3150061))))

(assert (= (and b!5044332 ((_ is Node!15522) (right!43042 (left!42712 (right!43042 t!4198))))) b!5044629))

(assert (= b!5044630 b!5044631))

(assert (= (and b!5044332 ((_ is Leaf!25747) (right!43042 (left!42712 (right!43042 t!4198))))) b!5044630))

(declare-fun m!6079788 () Bool)

(assert (=> b!5044629 m!6079788))

(declare-fun m!6079790 () Bool)

(assert (=> b!5044629 m!6079790))

(declare-fun m!6079792 () Bool)

(assert (=> b!5044630 m!6079792))

(assert (=> b!5044332 m!6079280))

(declare-fun b!5044632 () Bool)

(declare-fun e!3150062 () Bool)

(declare-fun tp!1411558 () Bool)

(assert (=> b!5044632 (= e!3150062 (and tp_is_empty!36807 tp!1411558))))

(assert (=> b!5044337 (= tp!1411518 e!3150062)))

(assert (= (and b!5044337 ((_ is Cons!58310) (innerList!15610 (xs!18848 (right!43042 (right!43042 t!4198)))))) b!5044632))

(declare-fun tp!1411560 () Bool)

(declare-fun e!3150064 () Bool)

(declare-fun b!5044633 () Bool)

(declare-fun tp!1411559 () Bool)

(assert (=> b!5044633 (= e!3150064 (and (inv!77205 (left!42712 (left!42712 (right!43042 (right!43042 t!4198))))) tp!1411559 (inv!77205 (right!43042 (left!42712 (right!43042 (right!43042 t!4198))))) tp!1411560))))

(declare-fun b!5044635 () Bool)

(declare-fun e!3150063 () Bool)

(declare-fun tp!1411561 () Bool)

(assert (=> b!5044635 (= e!3150063 tp!1411561)))

(declare-fun b!5044634 () Bool)

(assert (=> b!5044634 (= e!3150064 (and (inv!77206 (xs!18848 (left!42712 (right!43042 (right!43042 t!4198))))) e!3150063))))

(assert (=> b!5044335 (= tp!1411516 (and (inv!77205 (left!42712 (right!43042 (right!43042 t!4198)))) e!3150064))))

(assert (= (and b!5044335 ((_ is Node!15522) (left!42712 (right!43042 (right!43042 t!4198))))) b!5044633))

(assert (= b!5044634 b!5044635))

(assert (= (and b!5044335 ((_ is Leaf!25747) (left!42712 (right!43042 (right!43042 t!4198))))) b!5044634))

(declare-fun m!6079794 () Bool)

(assert (=> b!5044633 m!6079794))

(declare-fun m!6079796 () Bool)

(assert (=> b!5044633 m!6079796))

(declare-fun m!6079798 () Bool)

(assert (=> b!5044634 m!6079798))

(assert (=> b!5044335 m!6079284))

(declare-fun e!3150066 () Bool)

(declare-fun tp!1411563 () Bool)

(declare-fun b!5044636 () Bool)

(declare-fun tp!1411562 () Bool)

(assert (=> b!5044636 (= e!3150066 (and (inv!77205 (left!42712 (right!43042 (right!43042 (right!43042 t!4198))))) tp!1411562 (inv!77205 (right!43042 (right!43042 (right!43042 (right!43042 t!4198))))) tp!1411563))))

(declare-fun b!5044638 () Bool)

(declare-fun e!3150065 () Bool)

(declare-fun tp!1411564 () Bool)

(assert (=> b!5044638 (= e!3150065 tp!1411564)))

(declare-fun b!5044637 () Bool)

(assert (=> b!5044637 (= e!3150066 (and (inv!77206 (xs!18848 (right!43042 (right!43042 (right!43042 t!4198))))) e!3150065))))

(assert (=> b!5044335 (= tp!1411517 (and (inv!77205 (right!43042 (right!43042 (right!43042 t!4198)))) e!3150066))))

(assert (= (and b!5044335 ((_ is Node!15522) (right!43042 (right!43042 (right!43042 t!4198))))) b!5044636))

(assert (= b!5044637 b!5044638))

(assert (= (and b!5044335 ((_ is Leaf!25747) (right!43042 (right!43042 (right!43042 t!4198))))) b!5044637))

(declare-fun m!6079800 () Bool)

(assert (=> b!5044636 m!6079800))

(declare-fun m!6079802 () Bool)

(assert (=> b!5044636 m!6079802))

(declare-fun m!6079804 () Bool)

(assert (=> b!5044637 m!6079804))

(assert (=> b!5044335 m!6079286))

(declare-fun b!5044639 () Bool)

(declare-fun e!3150067 () Bool)

(declare-fun tp!1411565 () Bool)

(assert (=> b!5044639 (= e!3150067 (and tp_is_empty!36807 tp!1411565))))

(assert (=> b!5044338 (= tp!1411519 e!3150067)))

(assert (= (and b!5044338 ((_ is Cons!58310) (t!371021 (t!371021 (innerList!15610 (xs!18848 t!4198)))))) b!5044639))

(declare-fun e!3150069 () Bool)

(declare-fun b!5044640 () Bool)

(declare-fun tp!1411566 () Bool)

(declare-fun tp!1411567 () Bool)

(assert (=> b!5044640 (= e!3150069 (and (inv!77205 (left!42712 (left!42712 (left!42712 (left!42712 t!4198))))) tp!1411566 (inv!77205 (right!43042 (left!42712 (left!42712 (left!42712 t!4198))))) tp!1411567))))

(declare-fun b!5044642 () Bool)

(declare-fun e!3150068 () Bool)

(declare-fun tp!1411568 () Bool)

(assert (=> b!5044642 (= e!3150068 tp!1411568)))

(declare-fun b!5044641 () Bool)

(assert (=> b!5044641 (= e!3150069 (and (inv!77206 (xs!18848 (left!42712 (left!42712 (left!42712 t!4198))))) e!3150068))))

(assert (=> b!5044339 (= tp!1411520 (and (inv!77205 (left!42712 (left!42712 (left!42712 t!4198)))) e!3150069))))

(assert (= (and b!5044339 ((_ is Node!15522) (left!42712 (left!42712 (left!42712 t!4198))))) b!5044640))

(assert (= b!5044641 b!5044642))

(assert (= (and b!5044339 ((_ is Leaf!25747) (left!42712 (left!42712 (left!42712 t!4198))))) b!5044641))

(declare-fun m!6079806 () Bool)

(assert (=> b!5044640 m!6079806))

(declare-fun m!6079808 () Bool)

(assert (=> b!5044640 m!6079808))

(declare-fun m!6079810 () Bool)

(assert (=> b!5044641 m!6079810))

(assert (=> b!5044339 m!6079290))

(declare-fun tp!1411570 () Bool)

(declare-fun b!5044643 () Bool)

(declare-fun e!3150071 () Bool)

(declare-fun tp!1411569 () Bool)

(assert (=> b!5044643 (= e!3150071 (and (inv!77205 (left!42712 (right!43042 (left!42712 (left!42712 t!4198))))) tp!1411569 (inv!77205 (right!43042 (right!43042 (left!42712 (left!42712 t!4198))))) tp!1411570))))

(declare-fun b!5044645 () Bool)

(declare-fun e!3150070 () Bool)

(declare-fun tp!1411571 () Bool)

(assert (=> b!5044645 (= e!3150070 tp!1411571)))

(declare-fun b!5044644 () Bool)

(assert (=> b!5044644 (= e!3150071 (and (inv!77206 (xs!18848 (right!43042 (left!42712 (left!42712 t!4198))))) e!3150070))))

(assert (=> b!5044339 (= tp!1411521 (and (inv!77205 (right!43042 (left!42712 (left!42712 t!4198)))) e!3150071))))

(assert (= (and b!5044339 ((_ is Node!15522) (right!43042 (left!42712 (left!42712 t!4198))))) b!5044643))

(assert (= b!5044644 b!5044645))

(assert (= (and b!5044339 ((_ is Leaf!25747) (right!43042 (left!42712 (left!42712 t!4198))))) b!5044644))

(declare-fun m!6079812 () Bool)

(assert (=> b!5044643 m!6079812))

(declare-fun m!6079814 () Bool)

(assert (=> b!5044643 m!6079814))

(declare-fun m!6079816 () Bool)

(assert (=> b!5044644 m!6079816))

(assert (=> b!5044339 m!6079292))

(declare-fun b!5044646 () Bool)

(declare-fun e!3150072 () Bool)

(declare-fun tp!1411572 () Bool)

(assert (=> b!5044646 (= e!3150072 (and tp_is_empty!36807 tp!1411572))))

(assert (=> b!5044334 (= tp!1411515 e!3150072)))

(assert (= (and b!5044334 ((_ is Cons!58310) (innerList!15610 (xs!18848 (left!42712 (right!43042 t!4198)))))) b!5044646))

(check-sat (not d!1623613) (not b!5044485) (not b!5044631) (not b!5044495) (not b!5044494) (not d!1623511) (not b!5044639) (not b!5044507) (not b!5044442) (not b!5044497) (not b!5044488) (not b!5044622) (not b!5044607) (not b!5044635) (not b!5044629) (not b!5044537) (not b!5044630) (not b!5044550) (not b!5044643) (not b!5044620) (not b!5044609) (not b!5044454) (not b!5044493) (not b!5044471) (not b!5044562) (not d!1623605) (not b!5044499) (not b!5044484) (not b!5044490) (not b!5044567) (not b!5044461) (not b!5044587) (not b!5044637) (not b!5044602) (not b!5044633) (not b!5044638) (not b!5044467) (not b!5044599) (not d!1623545) (not b!5044618) (not b!5044625) (not d!1623509) (not b!5044582) (not b!5044549) (not b!5044538) (not b!5044623) (not b!5044546) (not b!5044529) (not b!5044593) (not b!5044444) (not b!5044583) (not b!5044332) (not b!5044465) (not b!5044479) (not b!5044606) (not d!1623497) (not b!5044561) (not b!5044579) (not d!1623541) (not b!5044575) (not b!5044457) (not d!1623529) (not b!5044588) (not b!5044603) (not b!5044476) (not b!5044475) (not d!1623563) (not b!5044463) (not b!5044570) (not b!5044632) (not b!5044543) (not b!5044636) (not b!5044459) (not d!1623549) (not b!5044540) (not d!1623515) (not b!5044592) (not d!1623489) (not b!5044573) (not b!5044626) (not b!5044525) (not b!5044554) (not b!5044335) (not b!5044455) (not b!5044501) (not b!5044480) (not d!1623495) tp_is_empty!36807 (not b!5044447) (not b!5044517) (not b!5044641) (not b!5044516) (not b!5044566) (not b!5044627) (not b!5044617) (not b!5044621) (not b!5044646) (not b!5044512) (not b!5044513) (not b!5044645) (not b!5044470) (not d!1623573) (not b!5044577) (not b!5044515) (not b!5044511) (not d!1623553) (not b!5044346) (not b!5044518) (not d!1623521) (not b!5044598) (not b!5044628) (not b!5044600) (not b!5044532) (not d!1623557) (not b!5044521) (not b!5044445) (not b!5044611) (not d!1623485) (not b!5044555) (not b!5044634) (not b!5044601) (not b!5044509) (not b!5044558) (not d!1623539) (not b!5044452) (not b!5044644) (not b!5044580) (not b!5044451) (not d!1623555) (not b!5044496) (not b!5044449) (not b!5044519) (not b!5044522) (not d!1623597) (not b!5044571) (not b!5044642) (not b!5044482) (not b!5044619) (not d!1623567) (not b!5044534) (not b!5044520) (not d!1623575) (not d!1623551) (not b!5044624) (not b!5044585) (not b!5044339) (not b!5044596) (not b!5044616) (not b!5044559) (not b!5044597) (not d!1623507) (not b!5044514) (not b!5044640) (not b!5044613) (not b!5044604) (not b!5044615) (not b!5044498) (not d!1623559) (not d!1623577) (not d!1623483) (not b!5044528) (not b!5044523) (not b!5044545) (not d!1623543))
(check-sat)
