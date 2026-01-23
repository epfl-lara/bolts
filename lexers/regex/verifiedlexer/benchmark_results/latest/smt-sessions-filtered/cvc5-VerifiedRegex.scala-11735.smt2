; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!663458 () Bool)

(assert start!663458)

(declare-fun b!6875102 () Bool)

(declare-fun e!4143828 () Bool)

(declare-fun tp!1888568 () Bool)

(declare-fun tp!1888570 () Bool)

(assert (=> b!6875102 (= e!4143828 (and tp!1888568 tp!1888570))))

(declare-fun res!2803611 () Bool)

(declare-fun e!4143831 () Bool)

(assert (=> start!663458 (=> (not res!2803611) (not e!4143831))))

(declare-datatypes ((C!33702 0))(
  ( (C!33703 (val!26553 Int)) )
))
(declare-datatypes ((Regex!16716 0))(
  ( (ElementMatch!16716 (c!1279360 C!33702)) (Concat!25561 (regOne!33944 Regex!16716) (regTwo!33944 Regex!16716)) (EmptyExpr!16716) (Star!16716 (reg!17045 Regex!16716)) (EmptyLang!16716) (Union!16716 (regOne!33945 Regex!16716) (regTwo!33945 Regex!16716)) )
))
(declare-datatypes ((List!66443 0))(
  ( (Nil!66319) (Cons!66319 (h!72767 Regex!16716) (t!380186 List!66443)) )
))
(declare-datatypes ((Context!12200 0))(
  ( (Context!12201 (exprs!6600 List!66443)) )
))
(declare-datatypes ((List!66444 0))(
  ( (Nil!66320) (Cons!66320 (h!72768 Context!12200) (t!380187 List!66444)) )
))
(declare-fun zl!1520 () List!66444)

(declare-fun r!11177 () Regex!16716)

(declare-fun contains!20372 (List!66443 Regex!16716) Bool)

(declare-fun unfocusZipperList!2133 (List!66444) List!66443)

(assert (=> start!663458 (= res!2803611 (contains!20372 (unfocusZipperList!2133 zl!1520) r!11177))))

(assert (=> start!663458 e!4143831))

(declare-fun e!4143829 () Bool)

(assert (=> start!663458 e!4143829))

(assert (=> start!663458 e!4143828))

(declare-fun c!130 () Context!12200)

(declare-fun e!4143827 () Bool)

(declare-fun inv!85038 (Context!12200) Bool)

(assert (=> start!663458 (and (inv!85038 c!130) e!4143827)))

(declare-fun b!6875103 () Bool)

(declare-fun res!2803612 () Bool)

(assert (=> b!6875103 (=> (not res!2803612) (not e!4143831))))

(assert (=> b!6875103 (= res!2803612 (not (contains!20372 (unfocusZipperList!2133 (t!380187 zl!1520)) r!11177)))))

(declare-fun tp!1888573 () Bool)

(declare-fun b!6875104 () Bool)

(declare-fun e!4143830 () Bool)

(assert (=> b!6875104 (= e!4143829 (and (inv!85038 (h!72768 zl!1520)) e!4143830 tp!1888573))))

(declare-fun b!6875105 () Bool)

(declare-fun tp!1888572 () Bool)

(assert (=> b!6875105 (= e!4143827 tp!1888572)))

(declare-fun b!6875106 () Bool)

(declare-fun tp_is_empty!42685 () Bool)

(assert (=> b!6875106 (= e!4143828 tp_is_empty!42685)))

(declare-fun b!6875107 () Bool)

(declare-fun tp!1888575 () Bool)

(assert (=> b!6875107 (= e!4143830 tp!1888575)))

(declare-fun b!6875108 () Bool)

(declare-fun res!2803613 () Bool)

(assert (=> b!6875108 (=> (not res!2803613) (not e!4143831))))

(assert (=> b!6875108 (= res!2803613 (is-Cons!66320 zl!1520))))

(declare-fun b!6875109 () Bool)

(declare-fun lambda!389178 () Int)

(declare-fun forall!15915 (List!66443 Int) Bool)

(assert (=> b!6875109 (= e!4143831 (not (forall!15915 (exprs!6600 c!130) lambda!389178)))))

(declare-fun b!6875110 () Bool)

(declare-fun tp!1888571 () Bool)

(assert (=> b!6875110 (= e!4143828 tp!1888571)))

(declare-fun b!6875111 () Bool)

(declare-fun tp!1888574 () Bool)

(declare-fun tp!1888569 () Bool)

(assert (=> b!6875111 (= e!4143828 (and tp!1888574 tp!1888569))))

(assert (= (and start!663458 res!2803611) b!6875108))

(assert (= (and b!6875108 res!2803613) b!6875103))

(assert (= (and b!6875103 res!2803612) b!6875109))

(assert (= b!6875104 b!6875107))

(assert (= (and start!663458 (is-Cons!66320 zl!1520)) b!6875104))

(assert (= (and start!663458 (is-ElementMatch!16716 r!11177)) b!6875106))

(assert (= (and start!663458 (is-Concat!25561 r!11177)) b!6875111))

(assert (= (and start!663458 (is-Star!16716 r!11177)) b!6875110))

(assert (= (and start!663458 (is-Union!16716 r!11177)) b!6875102))

(assert (= start!663458 b!6875105))

(declare-fun m!7603800 () Bool)

(assert (=> start!663458 m!7603800))

(assert (=> start!663458 m!7603800))

(declare-fun m!7603802 () Bool)

(assert (=> start!663458 m!7603802))

(declare-fun m!7603804 () Bool)

(assert (=> start!663458 m!7603804))

(declare-fun m!7603806 () Bool)

(assert (=> b!6875103 m!7603806))

(assert (=> b!6875103 m!7603806))

(declare-fun m!7603808 () Bool)

(assert (=> b!6875103 m!7603808))

(declare-fun m!7603810 () Bool)

(assert (=> b!6875104 m!7603810))

(declare-fun m!7603812 () Bool)

(assert (=> b!6875109 m!7603812))

(push 1)

(assert (not b!6875107))

(assert (not start!663458))

(assert (not b!6875105))

(assert (not b!6875102))

(assert (not b!6875109))

(assert (not b!6875104))

(assert (not b!6875110))

(assert tp_is_empty!42685)

(assert (not b!6875103))

(assert (not b!6875111))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2159156 () Bool)

(declare-fun lt!2459047 () Bool)

(declare-fun content!13023 (List!66443) (Set Regex!16716))

(assert (=> d!2159156 (= lt!2459047 (set.member r!11177 (content!13023 (unfocusZipperList!2133 zl!1520))))))

(declare-fun e!4143851 () Bool)

(assert (=> d!2159156 (= lt!2459047 e!4143851)))

(declare-fun res!2803627 () Bool)

(assert (=> d!2159156 (=> (not res!2803627) (not e!4143851))))

(assert (=> d!2159156 (= res!2803627 (is-Cons!66319 (unfocusZipperList!2133 zl!1520)))))

(assert (=> d!2159156 (= (contains!20372 (unfocusZipperList!2133 zl!1520) r!11177) lt!2459047)))

(declare-fun b!6875146 () Bool)

(declare-fun e!4143852 () Bool)

(assert (=> b!6875146 (= e!4143851 e!4143852)))

(declare-fun res!2803628 () Bool)

(assert (=> b!6875146 (=> res!2803628 e!4143852)))

(assert (=> b!6875146 (= res!2803628 (= (h!72767 (unfocusZipperList!2133 zl!1520)) r!11177))))

(declare-fun b!6875147 () Bool)

(assert (=> b!6875147 (= e!4143852 (contains!20372 (t!380186 (unfocusZipperList!2133 zl!1520)) r!11177))))

(assert (= (and d!2159156 res!2803627) b!6875146))

(assert (= (and b!6875146 (not res!2803628)) b!6875147))

(assert (=> d!2159156 m!7603800))

(declare-fun m!7603828 () Bool)

(assert (=> d!2159156 m!7603828))

(declare-fun m!7603830 () Bool)

(assert (=> d!2159156 m!7603830))

(declare-fun m!7603832 () Bool)

(assert (=> b!6875147 m!7603832))

(assert (=> start!663458 d!2159156))

(declare-fun bs!1837666 () Bool)

(declare-fun d!2159158 () Bool)

(assert (= bs!1837666 (and d!2159158 b!6875109)))

(declare-fun lambda!389184 () Int)

(assert (=> bs!1837666 (= lambda!389184 lambda!389178)))

(declare-fun lt!2459050 () List!66443)

(assert (=> d!2159158 (forall!15915 lt!2459050 lambda!389184)))

(declare-fun e!4143859 () List!66443)

(assert (=> d!2159158 (= lt!2459050 e!4143859)))

(declare-fun c!1279364 () Bool)

(assert (=> d!2159158 (= c!1279364 (is-Cons!66320 zl!1520))))

(assert (=> d!2159158 (= (unfocusZipperList!2133 zl!1520) lt!2459050)))

(declare-fun b!6875156 () Bool)

(declare-fun generalisedConcat!2300 (List!66443) Regex!16716)

(assert (=> b!6875156 (= e!4143859 (Cons!66319 (generalisedConcat!2300 (exprs!6600 (h!72768 zl!1520))) (unfocusZipperList!2133 (t!380187 zl!1520))))))

(declare-fun b!6875157 () Bool)

(assert (=> b!6875157 (= e!4143859 Nil!66319)))

(assert (= (and d!2159158 c!1279364) b!6875156))

(assert (= (and d!2159158 (not c!1279364)) b!6875157))

(declare-fun m!7603834 () Bool)

(assert (=> d!2159158 m!7603834))

(declare-fun m!7603836 () Bool)

(assert (=> b!6875156 m!7603836))

(assert (=> b!6875156 m!7603806))

(assert (=> start!663458 d!2159158))

(declare-fun bs!1837667 () Bool)

(declare-fun d!2159162 () Bool)

(assert (= bs!1837667 (and d!2159162 b!6875109)))

(declare-fun lambda!389187 () Int)

(assert (=> bs!1837667 (= lambda!389187 lambda!389178)))

(declare-fun bs!1837668 () Bool)

(assert (= bs!1837668 (and d!2159162 d!2159158)))

(assert (=> bs!1837668 (= lambda!389187 lambda!389184)))

(assert (=> d!2159162 (= (inv!85038 c!130) (forall!15915 (exprs!6600 c!130) lambda!389187))))

(declare-fun bs!1837669 () Bool)

(assert (= bs!1837669 d!2159162))

(declare-fun m!7603838 () Bool)

(assert (=> bs!1837669 m!7603838))

(assert (=> start!663458 d!2159162))

(declare-fun d!2159164 () Bool)

(declare-fun lt!2459051 () Bool)

(assert (=> d!2159164 (= lt!2459051 (set.member r!11177 (content!13023 (unfocusZipperList!2133 (t!380187 zl!1520)))))))

(declare-fun e!4143862 () Bool)

(assert (=> d!2159164 (= lt!2459051 e!4143862)))

(declare-fun res!2803635 () Bool)

(assert (=> d!2159164 (=> (not res!2803635) (not e!4143862))))

(assert (=> d!2159164 (= res!2803635 (is-Cons!66319 (unfocusZipperList!2133 (t!380187 zl!1520))))))

(assert (=> d!2159164 (= (contains!20372 (unfocusZipperList!2133 (t!380187 zl!1520)) r!11177) lt!2459051)))

(declare-fun b!6875160 () Bool)

(declare-fun e!4143863 () Bool)

(assert (=> b!6875160 (= e!4143862 e!4143863)))

(declare-fun res!2803636 () Bool)

(assert (=> b!6875160 (=> res!2803636 e!4143863)))

(assert (=> b!6875160 (= res!2803636 (= (h!72767 (unfocusZipperList!2133 (t!380187 zl!1520))) r!11177))))

(declare-fun b!6875161 () Bool)

(assert (=> b!6875161 (= e!4143863 (contains!20372 (t!380186 (unfocusZipperList!2133 (t!380187 zl!1520))) r!11177))))

(assert (= (and d!2159164 res!2803635) b!6875160))

(assert (= (and b!6875160 (not res!2803636)) b!6875161))

(assert (=> d!2159164 m!7603806))

(declare-fun m!7603840 () Bool)

(assert (=> d!2159164 m!7603840))

(declare-fun m!7603842 () Bool)

(assert (=> d!2159164 m!7603842))

(declare-fun m!7603844 () Bool)

(assert (=> b!6875161 m!7603844))

(assert (=> b!6875103 d!2159164))

(declare-fun bs!1837670 () Bool)

(declare-fun d!2159166 () Bool)

(assert (= bs!1837670 (and d!2159166 b!6875109)))

(declare-fun lambda!389188 () Int)

(assert (=> bs!1837670 (= lambda!389188 lambda!389178)))

(declare-fun bs!1837671 () Bool)

(assert (= bs!1837671 (and d!2159166 d!2159158)))

(assert (=> bs!1837671 (= lambda!389188 lambda!389184)))

(declare-fun bs!1837672 () Bool)

(assert (= bs!1837672 (and d!2159166 d!2159162)))

(assert (=> bs!1837672 (= lambda!389188 lambda!389187)))

(declare-fun lt!2459052 () List!66443)

(assert (=> d!2159166 (forall!15915 lt!2459052 lambda!389188)))

(declare-fun e!4143864 () List!66443)

(assert (=> d!2159166 (= lt!2459052 e!4143864)))

(declare-fun c!1279365 () Bool)

(assert (=> d!2159166 (= c!1279365 (is-Cons!66320 (t!380187 zl!1520)))))

(assert (=> d!2159166 (= (unfocusZipperList!2133 (t!380187 zl!1520)) lt!2459052)))

(declare-fun b!6875162 () Bool)

(assert (=> b!6875162 (= e!4143864 (Cons!66319 (generalisedConcat!2300 (exprs!6600 (h!72768 (t!380187 zl!1520)))) (unfocusZipperList!2133 (t!380187 (t!380187 zl!1520)))))))

(declare-fun b!6875163 () Bool)

(assert (=> b!6875163 (= e!4143864 Nil!66319)))

(assert (= (and d!2159166 c!1279365) b!6875162))

(assert (= (and d!2159166 (not c!1279365)) b!6875163))

(declare-fun m!7603848 () Bool)

(assert (=> d!2159166 m!7603848))

(declare-fun m!7603850 () Bool)

(assert (=> b!6875162 m!7603850))

(declare-fun m!7603852 () Bool)

(assert (=> b!6875162 m!7603852))

(assert (=> b!6875103 d!2159166))

(declare-fun d!2159168 () Bool)

(declare-fun res!2803641 () Bool)

(declare-fun e!4143869 () Bool)

(assert (=> d!2159168 (=> res!2803641 e!4143869)))

(assert (=> d!2159168 (= res!2803641 (is-Nil!66319 (exprs!6600 c!130)))))

(assert (=> d!2159168 (= (forall!15915 (exprs!6600 c!130) lambda!389178) e!4143869)))

(declare-fun b!6875168 () Bool)

(declare-fun e!4143870 () Bool)

(assert (=> b!6875168 (= e!4143869 e!4143870)))

(declare-fun res!2803642 () Bool)

(assert (=> b!6875168 (=> (not res!2803642) (not e!4143870))))

(declare-fun dynLambda!26553 (Int Regex!16716) Bool)

(assert (=> b!6875168 (= res!2803642 (dynLambda!26553 lambda!389178 (h!72767 (exprs!6600 c!130))))))

(declare-fun b!6875169 () Bool)

(assert (=> b!6875169 (= e!4143870 (forall!15915 (t!380186 (exprs!6600 c!130)) lambda!389178))))

(assert (= (and d!2159168 (not res!2803641)) b!6875168))

(assert (= (and b!6875168 res!2803642) b!6875169))

(declare-fun b_lambda!260165 () Bool)

(assert (=> (not b_lambda!260165) (not b!6875168)))

(declare-fun m!7603856 () Bool)

(assert (=> b!6875168 m!7603856))

(declare-fun m!7603858 () Bool)

(assert (=> b!6875169 m!7603858))

(assert (=> b!6875109 d!2159168))

(declare-fun bs!1837673 () Bool)

(declare-fun d!2159172 () Bool)

(assert (= bs!1837673 (and d!2159172 b!6875109)))

(declare-fun lambda!389189 () Int)

(assert (=> bs!1837673 (= lambda!389189 lambda!389178)))

(declare-fun bs!1837674 () Bool)

(assert (= bs!1837674 (and d!2159172 d!2159158)))

(assert (=> bs!1837674 (= lambda!389189 lambda!389184)))

(declare-fun bs!1837675 () Bool)

(assert (= bs!1837675 (and d!2159172 d!2159162)))

(assert (=> bs!1837675 (= lambda!389189 lambda!389187)))

(declare-fun bs!1837676 () Bool)

(assert (= bs!1837676 (and d!2159172 d!2159166)))

(assert (=> bs!1837676 (= lambda!389189 lambda!389188)))

(assert (=> d!2159172 (= (inv!85038 (h!72768 zl!1520)) (forall!15915 (exprs!6600 (h!72768 zl!1520)) lambda!389189))))

(declare-fun bs!1837677 () Bool)

(assert (= bs!1837677 d!2159172))

(declare-fun m!7603860 () Bool)

(assert (=> bs!1837677 m!7603860))

(assert (=> b!6875104 d!2159172))

(declare-fun b!6875174 () Bool)

(declare-fun e!4143873 () Bool)

(declare-fun tp!1888604 () Bool)

(declare-fun tp!1888605 () Bool)

(assert (=> b!6875174 (= e!4143873 (and tp!1888604 tp!1888605))))

(assert (=> b!6875107 (= tp!1888575 e!4143873)))

(assert (= (and b!6875107 (is-Cons!66319 (exprs!6600 (h!72768 zl!1520)))) b!6875174))

(declare-fun b!6875186 () Bool)

(declare-fun e!4143876 () Bool)

(declare-fun tp!1888618 () Bool)

(declare-fun tp!1888619 () Bool)

(assert (=> b!6875186 (= e!4143876 (and tp!1888618 tp!1888619))))

(declare-fun b!6875187 () Bool)

(declare-fun tp!1888620 () Bool)

(assert (=> b!6875187 (= e!4143876 tp!1888620)))

(declare-fun b!6875185 () Bool)

(assert (=> b!6875185 (= e!4143876 tp_is_empty!42685)))

(assert (=> b!6875102 (= tp!1888568 e!4143876)))

(declare-fun b!6875188 () Bool)

(declare-fun tp!1888616 () Bool)

(declare-fun tp!1888617 () Bool)

(assert (=> b!6875188 (= e!4143876 (and tp!1888616 tp!1888617))))

(assert (= (and b!6875102 (is-ElementMatch!16716 (regOne!33945 r!11177))) b!6875185))

(assert (= (and b!6875102 (is-Concat!25561 (regOne!33945 r!11177))) b!6875186))

(assert (= (and b!6875102 (is-Star!16716 (regOne!33945 r!11177))) b!6875187))

(assert (= (and b!6875102 (is-Union!16716 (regOne!33945 r!11177))) b!6875188))

(declare-fun b!6875190 () Bool)

(declare-fun e!4143877 () Bool)

(declare-fun tp!1888623 () Bool)

(declare-fun tp!1888624 () Bool)

(assert (=> b!6875190 (= e!4143877 (and tp!1888623 tp!1888624))))

(declare-fun b!6875191 () Bool)

(declare-fun tp!1888625 () Bool)

(assert (=> b!6875191 (= e!4143877 tp!1888625)))

(declare-fun b!6875189 () Bool)

(assert (=> b!6875189 (= e!4143877 tp_is_empty!42685)))

(assert (=> b!6875102 (= tp!1888570 e!4143877)))

(declare-fun b!6875192 () Bool)

(declare-fun tp!1888621 () Bool)

(declare-fun tp!1888622 () Bool)

(assert (=> b!6875192 (= e!4143877 (and tp!1888621 tp!1888622))))

(assert (= (and b!6875102 (is-ElementMatch!16716 (regTwo!33945 r!11177))) b!6875189))

(assert (= (and b!6875102 (is-Concat!25561 (regTwo!33945 r!11177))) b!6875190))

(assert (= (and b!6875102 (is-Star!16716 (regTwo!33945 r!11177))) b!6875191))

(assert (= (and b!6875102 (is-Union!16716 (regTwo!33945 r!11177))) b!6875192))

(declare-fun b!6875204 () Bool)

(declare-fun e!4143887 () Bool)

(declare-fun tp!1888630 () Bool)

(assert (=> b!6875204 (= e!4143887 tp!1888630)))

(declare-fun b!6875203 () Bool)

(declare-fun e!4143886 () Bool)

(declare-fun tp!1888631 () Bool)

(assert (=> b!6875203 (= e!4143886 (and (inv!85038 (h!72768 (t!380187 zl!1520))) e!4143887 tp!1888631))))

(assert (=> b!6875104 (= tp!1888573 e!4143886)))

(assert (= b!6875203 b!6875204))

(assert (= (and b!6875104 (is-Cons!66320 (t!380187 zl!1520))) b!6875203))

(declare-fun m!7603862 () Bool)

(assert (=> b!6875203 m!7603862))

(declare-fun b!6875206 () Bool)

(declare-fun e!4143888 () Bool)

(declare-fun tp!1888634 () Bool)

(declare-fun tp!1888635 () Bool)

(assert (=> b!6875206 (= e!4143888 (and tp!1888634 tp!1888635))))

(declare-fun b!6875207 () Bool)

(declare-fun tp!1888636 () Bool)

(assert (=> b!6875207 (= e!4143888 tp!1888636)))

(declare-fun b!6875205 () Bool)

(assert (=> b!6875205 (= e!4143888 tp_is_empty!42685)))

(assert (=> b!6875110 (= tp!1888571 e!4143888)))

(declare-fun b!6875208 () Bool)

(declare-fun tp!1888632 () Bool)

(declare-fun tp!1888633 () Bool)

(assert (=> b!6875208 (= e!4143888 (and tp!1888632 tp!1888633))))

(assert (= (and b!6875110 (is-ElementMatch!16716 (reg!17045 r!11177))) b!6875205))

(assert (= (and b!6875110 (is-Concat!25561 (reg!17045 r!11177))) b!6875206))

(assert (= (and b!6875110 (is-Star!16716 (reg!17045 r!11177))) b!6875207))

(assert (= (and b!6875110 (is-Union!16716 (reg!17045 r!11177))) b!6875208))

(declare-fun b!6875209 () Bool)

(declare-fun e!4143889 () Bool)

(declare-fun tp!1888637 () Bool)

(declare-fun tp!1888638 () Bool)

(assert (=> b!6875209 (= e!4143889 (and tp!1888637 tp!1888638))))

(assert (=> b!6875105 (= tp!1888572 e!4143889)))

(assert (= (and b!6875105 (is-Cons!66319 (exprs!6600 c!130))) b!6875209))

(declare-fun b!6875211 () Bool)

(declare-fun e!4143890 () Bool)

(declare-fun tp!1888641 () Bool)

(declare-fun tp!1888642 () Bool)

(assert (=> b!6875211 (= e!4143890 (and tp!1888641 tp!1888642))))

(declare-fun b!6875212 () Bool)

(declare-fun tp!1888643 () Bool)

(assert (=> b!6875212 (= e!4143890 tp!1888643)))

(declare-fun b!6875210 () Bool)

(assert (=> b!6875210 (= e!4143890 tp_is_empty!42685)))

(assert (=> b!6875111 (= tp!1888574 e!4143890)))

(declare-fun b!6875213 () Bool)

(declare-fun tp!1888639 () Bool)

(declare-fun tp!1888640 () Bool)

(assert (=> b!6875213 (= e!4143890 (and tp!1888639 tp!1888640))))

(assert (= (and b!6875111 (is-ElementMatch!16716 (regOne!33944 r!11177))) b!6875210))

(assert (= (and b!6875111 (is-Concat!25561 (regOne!33944 r!11177))) b!6875211))

(assert (= (and b!6875111 (is-Star!16716 (regOne!33944 r!11177))) b!6875212))

(assert (= (and b!6875111 (is-Union!16716 (regOne!33944 r!11177))) b!6875213))

(declare-fun b!6875215 () Bool)

(declare-fun e!4143891 () Bool)

(declare-fun tp!1888646 () Bool)

(declare-fun tp!1888647 () Bool)

(assert (=> b!6875215 (= e!4143891 (and tp!1888646 tp!1888647))))

(declare-fun b!6875216 () Bool)

(declare-fun tp!1888648 () Bool)

(assert (=> b!6875216 (= e!4143891 tp!1888648)))

(declare-fun b!6875214 () Bool)

(assert (=> b!6875214 (= e!4143891 tp_is_empty!42685)))

(assert (=> b!6875111 (= tp!1888569 e!4143891)))

(declare-fun b!6875217 () Bool)

(declare-fun tp!1888644 () Bool)

(declare-fun tp!1888645 () Bool)

(assert (=> b!6875217 (= e!4143891 (and tp!1888644 tp!1888645))))

(assert (= (and b!6875111 (is-ElementMatch!16716 (regTwo!33944 r!11177))) b!6875214))

(assert (= (and b!6875111 (is-Concat!25561 (regTwo!33944 r!11177))) b!6875215))

(assert (= (and b!6875111 (is-Star!16716 (regTwo!33944 r!11177))) b!6875216))

(assert (= (and b!6875111 (is-Union!16716 (regTwo!33944 r!11177))) b!6875217))

(declare-fun b_lambda!260167 () Bool)

(assert (= b_lambda!260165 (or b!6875109 b_lambda!260167)))

(declare-fun bs!1837678 () Bool)

(declare-fun d!2159174 () Bool)

(assert (= bs!1837678 (and d!2159174 b!6875109)))

(declare-fun validRegex!8449 (Regex!16716) Bool)

(assert (=> bs!1837678 (= (dynLambda!26553 lambda!389178 (h!72767 (exprs!6600 c!130))) (validRegex!8449 (h!72767 (exprs!6600 c!130))))))

(declare-fun m!7603864 () Bool)

(assert (=> bs!1837678 m!7603864))

(assert (=> b!6875168 d!2159174))

(push 1)

(assert (not d!2159158))

(assert (not b!6875216))

(assert (not b!6875206))

(assert (not b!6875161))

(assert (not b!6875212))

(assert (not b!6875207))

(assert (not bs!1837678))

(assert (not d!2159156))

(assert (not b!6875162))

(assert (not b!6875188))

(assert (not b!6875191))

(assert (not d!2159172))

(assert (not b!6875174))

(assert (not d!2159164))

(assert (not b!6875215))

(assert (not b_lambda!260167))

(assert (not b!6875209))

(assert (not b!6875208))

(assert (not d!2159166))

(assert (not b!6875156))

(assert (not b!6875169))

(assert (not b!6875186))

(assert tp_is_empty!42685)

(assert (not b!6875204))

(assert (not b!6875192))

(assert (not b!6875203))

(assert (not b!6875190))

(assert (not b!6875147))

(assert (not b!6875217))

(assert (not b!6875187))

(assert (not d!2159162))

(assert (not b!6875213))

(assert (not b!6875211))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

