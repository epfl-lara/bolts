; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!533102 () Bool)

(assert start!533102)

(declare-fun b!5038824 () Bool)

(declare-fun res!2146886 () Bool)

(declare-fun e!3146991 () Bool)

(assert (=> b!5038824 (=> (not res!2146886) (not e!3146991))))

(declare-fun i!618 () Int)

(declare-datatypes ((T!104166 0))(
  ( (T!104167 (val!23512 Int)) )
))
(declare-datatypes ((List!58422 0))(
  ( (Nil!58298) (Cons!58298 (h!64746 T!104166) (t!370955 List!58422)) )
))
(declare-datatypes ((IArray!31081 0))(
  ( (IArray!31082 (innerList!15598 List!58422)) )
))
(declare-datatypes ((Conc!15510 0))(
  ( (Node!15510 (left!42694 Conc!15510) (right!43024 Conc!15510) (csize!31250 Int) (cheight!15721 Int)) (Leaf!25729 (xs!18836 IArray!31081) (csize!31251 Int)) (Empty!15510) )
))
(declare-fun t!4198 () Conc!15510)

(declare-fun size!38893 (Conc!15510) Int)

(assert (=> b!5038824 (= res!2146886 (<= i!618 (size!38893 t!4198)))))

(declare-fun res!2146888 () Bool)

(assert (=> start!533102 (=> (not res!2146888) (not e!3146991))))

(declare-fun isBalanced!4372 (Conc!15510) Bool)

(assert (=> start!533102 (= res!2146888 (isBalanced!4372 t!4198))))

(assert (=> start!533102 e!3146991))

(declare-fun e!3146992 () Bool)

(declare-fun inv!77139 (Conc!15510) Bool)

(assert (=> start!533102 (and (inv!77139 t!4198) e!3146992)))

(assert (=> start!533102 true))

(declare-fun b!5038825 () Bool)

(declare-fun res!2146887 () Bool)

(assert (=> b!5038825 (=> (not res!2146887) (not e!3146991))))

(assert (=> b!5038825 (= res!2146887 (<= 0 i!618))))

(declare-fun b!5038826 () Bool)

(declare-fun e!3146990 () Bool)

(declare-fun tp!1410768 () Bool)

(assert (=> b!5038826 (= e!3146990 tp!1410768)))

(declare-fun tp!1410770 () Bool)

(declare-fun b!5038827 () Bool)

(declare-fun tp!1410769 () Bool)

(assert (=> b!5038827 (= e!3146992 (and (inv!77139 (left!42694 t!4198)) tp!1410769 (inv!77139 (right!43024 t!4198)) tp!1410770))))

(declare-fun b!5038828 () Bool)

(assert (=> b!5038828 (= e!3146991 (not (inv!77139 Empty!15510)))))

(declare-fun b!5038829 () Bool)

(declare-fun inv!77140 (IArray!31081) Bool)

(assert (=> b!5038829 (= e!3146992 (and (inv!77140 (xs!18836 t!4198)) e!3146990))))

(declare-fun b!5038830 () Bool)

(declare-fun res!2146889 () Bool)

(assert (=> b!5038830 (=> (not res!2146889) (not e!3146991))))

(get-info :version)

(assert (=> b!5038830 (= res!2146889 (and (not ((_ is Empty!15510) t!4198)) ((_ is Leaf!25729) t!4198) (> i!618 0) (= i!618 (csize!31251 t!4198))))))

(assert (= (and start!533102 res!2146888) b!5038825))

(assert (= (and b!5038825 res!2146887) b!5038824))

(assert (= (and b!5038824 res!2146886) b!5038830))

(assert (= (and b!5038830 res!2146889) b!5038828))

(assert (= (and start!533102 ((_ is Node!15510) t!4198)) b!5038827))

(assert (= b!5038829 b!5038826))

(assert (= (and start!533102 ((_ is Leaf!25729) t!4198)) b!5038829))

(declare-fun m!6072502 () Bool)

(assert (=> b!5038829 m!6072502))

(declare-fun m!6072504 () Bool)

(assert (=> b!5038827 m!6072504))

(declare-fun m!6072506 () Bool)

(assert (=> b!5038827 m!6072506))

(declare-fun m!6072508 () Bool)

(assert (=> start!533102 m!6072508))

(declare-fun m!6072510 () Bool)

(assert (=> start!533102 m!6072510))

(declare-fun m!6072512 () Bool)

(assert (=> b!5038824 m!6072512))

(declare-fun m!6072514 () Bool)

(assert (=> b!5038828 m!6072514))

(check-sat (not b!5038824) (not b!5038829) (not b!5038828) (not b!5038827) (not b!5038826) (not start!533102))
(check-sat)
(get-model)

(declare-fun d!1620641 () Bool)

(declare-fun lt!2084031 () Int)

(declare-fun size!38894 (List!58422) Int)

(declare-fun list!18906 (Conc!15510) List!58422)

(assert (=> d!1620641 (= lt!2084031 (size!38894 (list!18906 t!4198)))))

(assert (=> d!1620641 (= lt!2084031 (ite ((_ is Empty!15510) t!4198) 0 (ite ((_ is Leaf!25729) t!4198) (csize!31251 t!4198) (csize!31250 t!4198))))))

(assert (=> d!1620641 (= (size!38893 t!4198) lt!2084031)))

(declare-fun bs!1188834 () Bool)

(assert (= bs!1188834 d!1620641))

(declare-fun m!6072516 () Bool)

(assert (=> bs!1188834 m!6072516))

(assert (=> bs!1188834 m!6072516))

(declare-fun m!6072518 () Bool)

(assert (=> bs!1188834 m!6072518))

(assert (=> b!5038824 d!1620641))

(declare-fun d!1620643 () Bool)

(assert (=> d!1620643 (= (inv!77140 (xs!18836 t!4198)) (<= (size!38894 (innerList!15598 (xs!18836 t!4198))) 2147483647))))

(declare-fun bs!1188835 () Bool)

(assert (= bs!1188835 d!1620643))

(declare-fun m!6072528 () Bool)

(assert (=> bs!1188835 m!6072528))

(assert (=> b!5038829 d!1620643))

(declare-fun b!5038868 () Bool)

(declare-fun res!2146922 () Bool)

(declare-fun e!3147010 () Bool)

(assert (=> b!5038868 (=> (not res!2146922) (not e!3147010))))

(declare-fun isEmpty!31527 (Conc!15510) Bool)

(assert (=> b!5038868 (= res!2146922 (not (isEmpty!31527 (left!42694 t!4198))))))

(declare-fun b!5038869 () Bool)

(declare-fun res!2146919 () Bool)

(assert (=> b!5038869 (=> (not res!2146919) (not e!3147010))))

(declare-fun height!2088 (Conc!15510) Int)

(assert (=> b!5038869 (= res!2146919 (<= (- (height!2088 (left!42694 t!4198)) (height!2088 (right!43024 t!4198))) 1))))

(declare-fun b!5038870 () Bool)

(declare-fun res!2146918 () Bool)

(assert (=> b!5038870 (=> (not res!2146918) (not e!3147010))))

(assert (=> b!5038870 (= res!2146918 (isBalanced!4372 (left!42694 t!4198)))))

(declare-fun b!5038867 () Bool)

(assert (=> b!5038867 (= e!3147010 (not (isEmpty!31527 (right!43024 t!4198))))))

(declare-fun d!1620649 () Bool)

(declare-fun res!2146923 () Bool)

(declare-fun e!3147009 () Bool)

(assert (=> d!1620649 (=> res!2146923 e!3147009)))

(assert (=> d!1620649 (= res!2146923 (not ((_ is Node!15510) t!4198)))))

(assert (=> d!1620649 (= (isBalanced!4372 t!4198) e!3147009)))

(declare-fun b!5038871 () Bool)

(declare-fun res!2146920 () Bool)

(assert (=> b!5038871 (=> (not res!2146920) (not e!3147010))))

(assert (=> b!5038871 (= res!2146920 (isBalanced!4372 (right!43024 t!4198)))))

(declare-fun b!5038872 () Bool)

(assert (=> b!5038872 (= e!3147009 e!3147010)))

(declare-fun res!2146921 () Bool)

(assert (=> b!5038872 (=> (not res!2146921) (not e!3147010))))

(assert (=> b!5038872 (= res!2146921 (<= (- 1) (- (height!2088 (left!42694 t!4198)) (height!2088 (right!43024 t!4198)))))))

(assert (= (and d!1620649 (not res!2146923)) b!5038872))

(assert (= (and b!5038872 res!2146921) b!5038869))

(assert (= (and b!5038869 res!2146919) b!5038870))

(assert (= (and b!5038870 res!2146918) b!5038871))

(assert (= (and b!5038871 res!2146920) b!5038868))

(assert (= (and b!5038868 res!2146922) b!5038867))

(declare-fun m!6072532 () Bool)

(assert (=> b!5038871 m!6072532))

(declare-fun m!6072534 () Bool)

(assert (=> b!5038872 m!6072534))

(declare-fun m!6072536 () Bool)

(assert (=> b!5038872 m!6072536))

(assert (=> b!5038869 m!6072534))

(assert (=> b!5038869 m!6072536))

(declare-fun m!6072538 () Bool)

(assert (=> b!5038868 m!6072538))

(declare-fun m!6072540 () Bool)

(assert (=> b!5038867 m!6072540))

(declare-fun m!6072542 () Bool)

(assert (=> b!5038870 m!6072542))

(assert (=> start!533102 d!1620649))

(declare-fun d!1620653 () Bool)

(declare-fun c!863216 () Bool)

(assert (=> d!1620653 (= c!863216 ((_ is Node!15510) t!4198))))

(declare-fun e!3147021 () Bool)

(assert (=> d!1620653 (= (inv!77139 t!4198) e!3147021)))

(declare-fun b!5038891 () Bool)

(declare-fun inv!77143 (Conc!15510) Bool)

(assert (=> b!5038891 (= e!3147021 (inv!77143 t!4198))))

(declare-fun b!5038892 () Bool)

(declare-fun e!3147022 () Bool)

(assert (=> b!5038892 (= e!3147021 e!3147022)))

(declare-fun res!2146934 () Bool)

(assert (=> b!5038892 (= res!2146934 (not ((_ is Leaf!25729) t!4198)))))

(assert (=> b!5038892 (=> res!2146934 e!3147022)))

(declare-fun b!5038893 () Bool)

(declare-fun inv!77144 (Conc!15510) Bool)

(assert (=> b!5038893 (= e!3147022 (inv!77144 t!4198))))

(assert (= (and d!1620653 c!863216) b!5038891))

(assert (= (and d!1620653 (not c!863216)) b!5038892))

(assert (= (and b!5038892 (not res!2146934)) b!5038893))

(declare-fun m!6072564 () Bool)

(assert (=> b!5038891 m!6072564))

(declare-fun m!6072566 () Bool)

(assert (=> b!5038893 m!6072566))

(assert (=> start!533102 d!1620653))

(declare-fun d!1620661 () Bool)

(declare-fun c!863217 () Bool)

(assert (=> d!1620661 (= c!863217 ((_ is Node!15510) (left!42694 t!4198)))))

(declare-fun e!3147023 () Bool)

(assert (=> d!1620661 (= (inv!77139 (left!42694 t!4198)) e!3147023)))

(declare-fun b!5038894 () Bool)

(assert (=> b!5038894 (= e!3147023 (inv!77143 (left!42694 t!4198)))))

(declare-fun b!5038895 () Bool)

(declare-fun e!3147024 () Bool)

(assert (=> b!5038895 (= e!3147023 e!3147024)))

(declare-fun res!2146935 () Bool)

(assert (=> b!5038895 (= res!2146935 (not ((_ is Leaf!25729) (left!42694 t!4198))))))

(assert (=> b!5038895 (=> res!2146935 e!3147024)))

(declare-fun b!5038896 () Bool)

(assert (=> b!5038896 (= e!3147024 (inv!77144 (left!42694 t!4198)))))

(assert (= (and d!1620661 c!863217) b!5038894))

(assert (= (and d!1620661 (not c!863217)) b!5038895))

(assert (= (and b!5038895 (not res!2146935)) b!5038896))

(declare-fun m!6072568 () Bool)

(assert (=> b!5038894 m!6072568))

(declare-fun m!6072570 () Bool)

(assert (=> b!5038896 m!6072570))

(assert (=> b!5038827 d!1620661))

(declare-fun d!1620663 () Bool)

(declare-fun c!863218 () Bool)

(assert (=> d!1620663 (= c!863218 ((_ is Node!15510) (right!43024 t!4198)))))

(declare-fun e!3147025 () Bool)

(assert (=> d!1620663 (= (inv!77139 (right!43024 t!4198)) e!3147025)))

(declare-fun b!5038897 () Bool)

(assert (=> b!5038897 (= e!3147025 (inv!77143 (right!43024 t!4198)))))

(declare-fun b!5038898 () Bool)

(declare-fun e!3147026 () Bool)

(assert (=> b!5038898 (= e!3147025 e!3147026)))

(declare-fun res!2146936 () Bool)

(assert (=> b!5038898 (= res!2146936 (not ((_ is Leaf!25729) (right!43024 t!4198))))))

(assert (=> b!5038898 (=> res!2146936 e!3147026)))

(declare-fun b!5038899 () Bool)

(assert (=> b!5038899 (= e!3147026 (inv!77144 (right!43024 t!4198)))))

(assert (= (and d!1620663 c!863218) b!5038897))

(assert (= (and d!1620663 (not c!863218)) b!5038898))

(assert (= (and b!5038898 (not res!2146936)) b!5038899))

(declare-fun m!6072574 () Bool)

(assert (=> b!5038897 m!6072574))

(declare-fun m!6072576 () Bool)

(assert (=> b!5038899 m!6072576))

(assert (=> b!5038827 d!1620663))

(declare-fun d!1620665 () Bool)

(declare-fun c!863219 () Bool)

(assert (=> d!1620665 (= c!863219 ((_ is Node!15510) Empty!15510))))

(declare-fun e!3147029 () Bool)

(assert (=> d!1620665 (= (inv!77139 Empty!15510) e!3147029)))

(declare-fun b!5038904 () Bool)

(assert (=> b!5038904 (= e!3147029 (inv!77143 Empty!15510))))

(declare-fun b!5038905 () Bool)

(declare-fun e!3147030 () Bool)

(assert (=> b!5038905 (= e!3147029 e!3147030)))

(declare-fun res!2146937 () Bool)

(assert (=> b!5038905 (= res!2146937 (not ((_ is Leaf!25729) Empty!15510)))))

(assert (=> b!5038905 (=> res!2146937 e!3147030)))

(declare-fun b!5038906 () Bool)

(assert (=> b!5038906 (= e!3147030 (inv!77144 Empty!15510))))

(assert (= (and d!1620665 c!863219) b!5038904))

(assert (= (and d!1620665 (not c!863219)) b!5038905))

(assert (= (and b!5038905 (not res!2146937)) b!5038906))

(declare-fun m!6072580 () Bool)

(assert (=> b!5038904 m!6072580))

(declare-fun m!6072582 () Bool)

(assert (=> b!5038906 m!6072582))

(assert (=> b!5038828 d!1620665))

(declare-fun b!5038915 () Bool)

(declare-fun e!3147035 () Bool)

(declare-fun tp_is_empty!36781 () Bool)

(declare-fun tp!1410779 () Bool)

(assert (=> b!5038915 (= e!3147035 (and tp_is_empty!36781 tp!1410779))))

(assert (=> b!5038826 (= tp!1410768 e!3147035)))

(assert (= (and b!5038826 ((_ is Cons!58298) (innerList!15598 (xs!18836 t!4198)))) b!5038915))

(declare-fun tp!1410795 () Bool)

(declare-fun b!5038934 () Bool)

(declare-fun tp!1410796 () Bool)

(declare-fun e!3147047 () Bool)

(assert (=> b!5038934 (= e!3147047 (and (inv!77139 (left!42694 (left!42694 t!4198))) tp!1410796 (inv!77139 (right!43024 (left!42694 t!4198))) tp!1410795))))

(declare-fun b!5038936 () Bool)

(declare-fun e!3147046 () Bool)

(declare-fun tp!1410794 () Bool)

(assert (=> b!5038936 (= e!3147046 tp!1410794)))

(declare-fun b!5038935 () Bool)

(assert (=> b!5038935 (= e!3147047 (and (inv!77140 (xs!18836 (left!42694 t!4198))) e!3147046))))

(assert (=> b!5038827 (= tp!1410769 (and (inv!77139 (left!42694 t!4198)) e!3147047))))

(assert (= (and b!5038827 ((_ is Node!15510) (left!42694 t!4198))) b!5038934))

(assert (= b!5038935 b!5038936))

(assert (= (and b!5038827 ((_ is Leaf!25729) (left!42694 t!4198))) b!5038935))

(declare-fun m!6072596 () Bool)

(assert (=> b!5038934 m!6072596))

(declare-fun m!6072598 () Bool)

(assert (=> b!5038934 m!6072598))

(declare-fun m!6072600 () Bool)

(assert (=> b!5038935 m!6072600))

(assert (=> b!5038827 m!6072504))

(declare-fun tp!1410800 () Bool)

(declare-fun e!3147050 () Bool)

(declare-fun b!5038938 () Bool)

(declare-fun tp!1410799 () Bool)

(assert (=> b!5038938 (= e!3147050 (and (inv!77139 (left!42694 (right!43024 t!4198))) tp!1410800 (inv!77139 (right!43024 (right!43024 t!4198))) tp!1410799))))

(declare-fun b!5038940 () Bool)

(declare-fun e!3147049 () Bool)

(declare-fun tp!1410798 () Bool)

(assert (=> b!5038940 (= e!3147049 tp!1410798)))

(declare-fun b!5038939 () Bool)

(assert (=> b!5038939 (= e!3147050 (and (inv!77140 (xs!18836 (right!43024 t!4198))) e!3147049))))

(assert (=> b!5038827 (= tp!1410770 (and (inv!77139 (right!43024 t!4198)) e!3147050))))

(assert (= (and b!5038827 ((_ is Node!15510) (right!43024 t!4198))) b!5038938))

(assert (= b!5038939 b!5038940))

(assert (= (and b!5038827 ((_ is Leaf!25729) (right!43024 t!4198))) b!5038939))

(declare-fun m!6072602 () Bool)

(assert (=> b!5038938 m!6072602))

(declare-fun m!6072604 () Bool)

(assert (=> b!5038938 m!6072604))

(declare-fun m!6072606 () Bool)

(assert (=> b!5038939 m!6072606))

(assert (=> b!5038827 m!6072506))

(check-sat (not b!5038940) (not b!5038868) (not b!5038906) (not b!5038891) (not b!5038936) (not b!5038894) tp_is_empty!36781 (not b!5038938) (not b!5038935) (not b!5038896) (not b!5038871) (not b!5038893) (not b!5038934) (not b!5038897) (not b!5038870) (not b!5038869) (not b!5038867) (not b!5038899) (not b!5038939) (not b!5038904) (not d!1620641) (not b!5038915) (not d!1620643) (not b!5038827) (not b!5038872))
(check-sat)
