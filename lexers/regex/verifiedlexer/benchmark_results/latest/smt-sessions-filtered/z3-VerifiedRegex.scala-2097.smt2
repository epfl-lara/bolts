; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106116 () Bool)

(assert start!106116)

(declare-fun b!1193171 () Bool)

(declare-fun e!766753 () Bool)

(declare-fun e!766752 () Bool)

(assert (=> b!1193171 (= e!766753 (not e!766752))))

(declare-fun res!538805 () Bool)

(assert (=> b!1193171 (=> res!538805 e!766752)))

(declare-fun from!553 () Int)

(declare-fun until!31 () Int)

(declare-fun lt!409707 () Int)

(assert (=> b!1193171 (= res!538805 (or (<= lt!409707 from!553) (<= until!31 lt!409707)))))

(declare-datatypes ((T!21572 0))(
  ( (T!21573 (val!3858 Int)) )
))
(declare-datatypes ((List!12037 0))(
  ( (Nil!12013) (Cons!12013 (h!17414 T!21572) (t!112299 List!12037)) )
))
(declare-datatypes ((IArray!7897 0))(
  ( (IArray!7898 (innerList!4006 List!12037)) )
))
(declare-datatypes ((Conc!3946 0))(
  ( (Node!3946 (left!10467 Conc!3946) (right!10797 Conc!3946) (csize!8122 Int) (cheight!4157 Int)) (Leaf!6044 (xs!6651 IArray!7897) (csize!8123 Int)) (Empty!3946) )
))
(declare-fun t!4115 () Conc!3946)

(declare-fun size!9510 (Conc!3946) Int)

(assert (=> b!1193171 (= lt!409707 (size!9510 (left!10467 t!4115)))))

(declare-fun e!766756 () Bool)

(assert (=> b!1193171 e!766756))

(declare-fun c!198161 () Bool)

(declare-fun lt!409713 () Int)

(assert (=> b!1193171 (= c!198161 (<= lt!409713 from!553))))

(declare-fun lt!409714 () List!12037)

(declare-fun lt!409711 () List!12037)

(declare-fun lt!409710 () List!12037)

(declare-fun slice!432 (List!12037 Int Int) List!12037)

(declare-fun ++!3050 (List!12037 List!12037) List!12037)

(assert (=> b!1193171 (= lt!409710 (slice!432 (++!3050 lt!409711 lt!409714) from!553 until!31))))

(declare-fun size!9511 (List!12037) Int)

(assert (=> b!1193171 (= lt!409713 (size!9511 lt!409711))))

(declare-datatypes ((Unit!18432 0))(
  ( (Unit!18433) )
))
(declare-fun lt!409712 () Unit!18432)

(declare-fun sliceLemma!27 (List!12037 List!12037 Int Int) Unit!18432)

(assert (=> b!1193171 (= lt!409712 (sliceLemma!27 lt!409711 lt!409714 from!553 until!31))))

(declare-fun list!4435 (Conc!3946) List!12037)

(assert (=> b!1193171 (= lt!409714 (list!4435 (right!10797 t!4115)))))

(assert (=> b!1193171 (= lt!409711 (list!4435 (left!10467 t!4115)))))

(declare-fun call!82915 () List!12037)

(declare-fun c!198162 () Bool)

(declare-fun bm!82910 () Bool)

(assert (=> bm!82910 (= call!82915 (slice!432 (ite c!198161 lt!409714 lt!409711) (ite c!198161 (- from!553 lt!409713) from!553) (ite c!198161 (- until!31 lt!409713) (ite c!198162 until!31 lt!409713))))))

(declare-fun b!1193172 () Bool)

(declare-fun e!766755 () List!12037)

(assert (=> b!1193172 (= e!766756 (= lt!409710 e!766755))))

(assert (=> b!1193172 (= c!198162 (<= until!31 lt!409713))))

(declare-fun b!1193173 () Bool)

(declare-fun call!82916 () List!12037)

(assert (=> b!1193173 (= e!766755 call!82916)))

(declare-fun b!1193174 () Bool)

(declare-fun res!538804 () Bool)

(assert (=> b!1193174 (=> (not res!538804) (not e!766753))))

(declare-fun isBalanced!1131 (Conc!3946) Bool)

(assert (=> b!1193174 (= res!538804 (isBalanced!1131 t!4115))))

(declare-fun res!538806 () Bool)

(assert (=> start!106116 (=> (not res!538806) (not e!766753))))

(assert (=> start!106116 (= res!538806 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> start!106116 e!766753))

(assert (=> start!106116 true))

(declare-fun e!766754 () Bool)

(declare-fun inv!15958 (Conc!3946) Bool)

(assert (=> start!106116 (and (inv!15958 t!4115) e!766754)))

(declare-fun b!1193175 () Bool)

(declare-fun e!766757 () Bool)

(assert (=> b!1193175 (= e!766752 e!766757)))

(declare-fun res!538807 () Bool)

(assert (=> b!1193175 (=> (not res!538807) (not e!766757))))

(declare-fun lt!409708 () Int)

(assert (=> b!1193175 (= res!538807 (<= 0 lt!409708))))

(assert (=> b!1193175 (= lt!409708 (- until!31 lt!409707))))

(declare-fun lt!409709 () Conc!3946)

(declare-fun slice!433 (Conc!3946 Int Int) Conc!3946)

(assert (=> b!1193175 (= lt!409709 (slice!433 (left!10467 t!4115) from!553 lt!409707))))

(declare-fun b!1193176 () Bool)

(assert (=> b!1193176 (= e!766756 (= lt!409710 call!82915))))

(declare-fun b!1193177 () Bool)

(declare-fun res!538809 () Bool)

(assert (=> b!1193177 (=> (not res!538809) (not e!766757))))

(assert (=> b!1193177 (= res!538809 (<= lt!409708 (size!9510 (right!10797 t!4115))))))

(declare-fun b!1193178 () Bool)

(assert (=> b!1193178 (= e!766755 (++!3050 call!82916 (slice!432 lt!409714 0 (- until!31 lt!409713))))))

(declare-fun bm!82911 () Bool)

(assert (=> bm!82911 (= call!82916 call!82915)))

(declare-fun b!1193179 () Bool)

(declare-fun res!538808 () Bool)

(assert (=> b!1193179 (=> (not res!538808) (not e!766753))))

(assert (=> b!1193179 (= res!538808 (<= until!31 (size!9510 t!4115)))))

(declare-fun b!1193180 () Bool)

(declare-fun e!766758 () Bool)

(declare-fun inv!15959 (IArray!7897) Bool)

(assert (=> b!1193180 (= e!766754 (and (inv!15959 (xs!6651 t!4115)) e!766758))))

(declare-fun b!1193181 () Bool)

(declare-fun res!538810 () Bool)

(assert (=> b!1193181 (=> (not res!538810) (not e!766753))))

(get-info :version)

(assert (=> b!1193181 (= res!538810 (and (not (= from!553 until!31)) (not ((_ is Leaf!6044) t!4115)) ((_ is Node!3946) t!4115)))))

(declare-fun b!1193182 () Bool)

(declare-fun tp!340201 () Bool)

(assert (=> b!1193182 (= e!766758 tp!340201)))

(declare-fun b!1193183 () Bool)

(declare-fun tp!340200 () Bool)

(declare-fun tp!340199 () Bool)

(assert (=> b!1193183 (= e!766754 (and (inv!15958 (left!10467 t!4115)) tp!340199 (inv!15958 (right!10797 t!4115)) tp!340200))))

(declare-fun b!1193184 () Bool)

(assert (=> b!1193184 (= e!766757 (isBalanced!1131 (right!10797 t!4115)))))

(assert (= (and start!106116 res!538806) b!1193179))

(assert (= (and b!1193179 res!538808) b!1193174))

(assert (= (and b!1193174 res!538804) b!1193181))

(assert (= (and b!1193181 res!538810) b!1193171))

(assert (= (and b!1193171 c!198161) b!1193176))

(assert (= (and b!1193171 (not c!198161)) b!1193172))

(assert (= (and b!1193172 c!198162) b!1193173))

(assert (= (and b!1193172 (not c!198162)) b!1193178))

(assert (= (or b!1193173 b!1193178) bm!82911))

(assert (= (or b!1193176 bm!82911) bm!82910))

(assert (= (and b!1193171 (not res!538805)) b!1193175))

(assert (= (and b!1193175 res!538807) b!1193177))

(assert (= (and b!1193177 res!538809) b!1193184))

(assert (= (and start!106116 ((_ is Node!3946) t!4115)) b!1193183))

(assert (= b!1193180 b!1193182))

(assert (= (and start!106116 ((_ is Leaf!6044) t!4115)) b!1193180))

(declare-fun m!1367949 () Bool)

(assert (=> start!106116 m!1367949))

(declare-fun m!1367951 () Bool)

(assert (=> b!1193174 m!1367951))

(declare-fun m!1367953 () Bool)

(assert (=> bm!82910 m!1367953))

(declare-fun m!1367955 () Bool)

(assert (=> b!1193178 m!1367955))

(assert (=> b!1193178 m!1367955))

(declare-fun m!1367957 () Bool)

(assert (=> b!1193178 m!1367957))

(declare-fun m!1367959 () Bool)

(assert (=> b!1193183 m!1367959))

(declare-fun m!1367961 () Bool)

(assert (=> b!1193183 m!1367961))

(declare-fun m!1367963 () Bool)

(assert (=> b!1193179 m!1367963))

(declare-fun m!1367965 () Bool)

(assert (=> b!1193171 m!1367965))

(declare-fun m!1367967 () Bool)

(assert (=> b!1193171 m!1367967))

(declare-fun m!1367969 () Bool)

(assert (=> b!1193171 m!1367969))

(declare-fun m!1367971 () Bool)

(assert (=> b!1193171 m!1367971))

(declare-fun m!1367973 () Bool)

(assert (=> b!1193171 m!1367973))

(declare-fun m!1367975 () Bool)

(assert (=> b!1193171 m!1367975))

(assert (=> b!1193171 m!1367975))

(declare-fun m!1367977 () Bool)

(assert (=> b!1193171 m!1367977))

(declare-fun m!1367979 () Bool)

(assert (=> b!1193175 m!1367979))

(declare-fun m!1367981 () Bool)

(assert (=> b!1193184 m!1367981))

(declare-fun m!1367983 () Bool)

(assert (=> b!1193180 m!1367983))

(declare-fun m!1367985 () Bool)

(assert (=> b!1193177 m!1367985))

(check-sat (not bm!82910) (not b!1193183) (not start!106116) (not b!1193175) (not b!1193180) (not b!1193179) (not b!1193182) (not b!1193177) (not b!1193171) (not b!1193184) (not b!1193174) (not b!1193178))
(check-sat)
(get-model)

(declare-fun b!1193197 () Bool)

(declare-fun e!766763 () Bool)

(declare-fun isEmpty!7225 (Conc!3946) Bool)

(assert (=> b!1193197 (= e!766763 (not (isEmpty!7225 (right!10797 t!4115))))))

(declare-fun b!1193198 () Bool)

(declare-fun e!766764 () Bool)

(assert (=> b!1193198 (= e!766764 e!766763)))

(declare-fun res!538823 () Bool)

(assert (=> b!1193198 (=> (not res!538823) (not e!766763))))

(declare-fun height!544 (Conc!3946) Int)

(assert (=> b!1193198 (= res!538823 (<= (- 1) (- (height!544 (left!10467 t!4115)) (height!544 (right!10797 t!4115)))))))

(declare-fun d!340772 () Bool)

(declare-fun res!538825 () Bool)

(assert (=> d!340772 (=> res!538825 e!766764)))

(assert (=> d!340772 (= res!538825 (not ((_ is Node!3946) t!4115)))))

(assert (=> d!340772 (= (isBalanced!1131 t!4115) e!766764)))

(declare-fun b!1193199 () Bool)

(declare-fun res!538826 () Bool)

(assert (=> b!1193199 (=> (not res!538826) (not e!766763))))

(assert (=> b!1193199 (= res!538826 (isBalanced!1131 (right!10797 t!4115)))))

(declare-fun b!1193200 () Bool)

(declare-fun res!538828 () Bool)

(assert (=> b!1193200 (=> (not res!538828) (not e!766763))))

(assert (=> b!1193200 (= res!538828 (isBalanced!1131 (left!10467 t!4115)))))

(declare-fun b!1193201 () Bool)

(declare-fun res!538827 () Bool)

(assert (=> b!1193201 (=> (not res!538827) (not e!766763))))

(assert (=> b!1193201 (= res!538827 (<= (- (height!544 (left!10467 t!4115)) (height!544 (right!10797 t!4115))) 1))))

(declare-fun b!1193202 () Bool)

(declare-fun res!538824 () Bool)

(assert (=> b!1193202 (=> (not res!538824) (not e!766763))))

(assert (=> b!1193202 (= res!538824 (not (isEmpty!7225 (left!10467 t!4115))))))

(assert (= (and d!340772 (not res!538825)) b!1193198))

(assert (= (and b!1193198 res!538823) b!1193201))

(assert (= (and b!1193201 res!538827) b!1193200))

(assert (= (and b!1193200 res!538828) b!1193199))

(assert (= (and b!1193199 res!538826) b!1193202))

(assert (= (and b!1193202 res!538824) b!1193197))

(declare-fun m!1367987 () Bool)

(assert (=> b!1193200 m!1367987))

(declare-fun m!1367989 () Bool)

(assert (=> b!1193197 m!1367989))

(declare-fun m!1367991 () Bool)

(assert (=> b!1193198 m!1367991))

(declare-fun m!1367993 () Bool)

(assert (=> b!1193198 m!1367993))

(assert (=> b!1193199 m!1367981))

(assert (=> b!1193201 m!1367991))

(assert (=> b!1193201 m!1367993))

(declare-fun m!1367995 () Bool)

(assert (=> b!1193202 m!1367995))

(assert (=> b!1193174 d!340772))

(declare-fun d!340774 () Bool)

(declare-fun c!198165 () Bool)

(assert (=> d!340774 (= c!198165 ((_ is Node!3946) (left!10467 t!4115)))))

(declare-fun e!766769 () Bool)

(assert (=> d!340774 (= (inv!15958 (left!10467 t!4115)) e!766769)))

(declare-fun b!1193209 () Bool)

(declare-fun inv!15962 (Conc!3946) Bool)

(assert (=> b!1193209 (= e!766769 (inv!15962 (left!10467 t!4115)))))

(declare-fun b!1193210 () Bool)

(declare-fun e!766770 () Bool)

(assert (=> b!1193210 (= e!766769 e!766770)))

(declare-fun res!538831 () Bool)

(assert (=> b!1193210 (= res!538831 (not ((_ is Leaf!6044) (left!10467 t!4115))))))

(assert (=> b!1193210 (=> res!538831 e!766770)))

(declare-fun b!1193211 () Bool)

(declare-fun inv!15963 (Conc!3946) Bool)

(assert (=> b!1193211 (= e!766770 (inv!15963 (left!10467 t!4115)))))

(assert (= (and d!340774 c!198165) b!1193209))

(assert (= (and d!340774 (not c!198165)) b!1193210))

(assert (= (and b!1193210 (not res!538831)) b!1193211))

(declare-fun m!1367997 () Bool)

(assert (=> b!1193209 m!1367997))

(declare-fun m!1367999 () Bool)

(assert (=> b!1193211 m!1367999))

(assert (=> b!1193183 d!340774))

(declare-fun d!340778 () Bool)

(declare-fun c!198166 () Bool)

(assert (=> d!340778 (= c!198166 ((_ is Node!3946) (right!10797 t!4115)))))

(declare-fun e!766771 () Bool)

(assert (=> d!340778 (= (inv!15958 (right!10797 t!4115)) e!766771)))

(declare-fun b!1193212 () Bool)

(assert (=> b!1193212 (= e!766771 (inv!15962 (right!10797 t!4115)))))

(declare-fun b!1193213 () Bool)

(declare-fun e!766772 () Bool)

(assert (=> b!1193213 (= e!766771 e!766772)))

(declare-fun res!538832 () Bool)

(assert (=> b!1193213 (= res!538832 (not ((_ is Leaf!6044) (right!10797 t!4115))))))

(assert (=> b!1193213 (=> res!538832 e!766772)))

(declare-fun b!1193214 () Bool)

(assert (=> b!1193214 (= e!766772 (inv!15963 (right!10797 t!4115)))))

(assert (= (and d!340778 c!198166) b!1193212))

(assert (= (and d!340778 (not c!198166)) b!1193213))

(assert (= (and b!1193213 (not res!538832)) b!1193214))

(declare-fun m!1368001 () Bool)

(assert (=> b!1193212 m!1368001))

(declare-fun m!1368003 () Bool)

(assert (=> b!1193214 m!1368003))

(assert (=> b!1193183 d!340778))

(declare-fun bm!82933 () Bool)

(declare-fun call!82942 () Int)

(declare-fun lt!409741 () List!12037)

(assert (=> bm!82933 (= call!82942 (size!9511 lt!409741))))

(declare-fun b!1193343 () Bool)

(declare-fun e!766842 () Conc!3946)

(declare-fun e!766838 () Conc!3946)

(assert (=> b!1193343 (= e!766842 e!766838)))

(declare-fun c!198209 () Bool)

(assert (=> b!1193343 (= c!198209 ((_ is Leaf!6044) (left!10467 t!4115)))))

(declare-fun b!1193344 () Bool)

(declare-fun c!198216 () Bool)

(assert (=> b!1193344 (= c!198216 (<= (size!9510 (left!10467 (left!10467 t!4115))) from!553))))

(declare-fun lt!409738 () Unit!18432)

(declare-fun lt!409739 () Unit!18432)

(assert (=> b!1193344 (= lt!409738 lt!409739)))

(declare-fun e!766841 () List!12037)

(declare-fun lt!409742 () List!12037)

(assert (=> b!1193344 (= (slice!432 (++!3050 lt!409741 lt!409742) from!553 lt!409707) e!766841)))

(declare-fun c!198213 () Bool)

(assert (=> b!1193344 (= c!198213 (<= (size!9511 lt!409741) from!553))))

(assert (=> b!1193344 (= lt!409739 (sliceLemma!27 lt!409741 lt!409742 from!553 lt!409707))))

(assert (=> b!1193344 (= lt!409742 (list!4435 (right!10797 (left!10467 t!4115))))))

(assert (=> b!1193344 (= lt!409741 (list!4435 (left!10467 (left!10467 t!4115))))))

(declare-fun e!766844 () Conc!3946)

(assert (=> b!1193344 (= e!766838 e!766844)))

(declare-fun e!766847 () Int)

(declare-fun call!82939 () List!12037)

(declare-fun bm!82934 () Bool)

(assert (=> bm!82934 (= call!82939 (slice!432 (ite c!198213 lt!409742 lt!409741) (ite c!198213 (- from!553 call!82942) from!553) (ite c!198213 (- lt!409707 call!82942) e!766847)))))

(declare-fun bm!82935 () Bool)

(declare-fun call!82943 () Int)

(assert (=> bm!82935 (= call!82943 (size!9510 (left!10467 (left!10467 t!4115))))))

(declare-fun call!82938 () Conc!3946)

(declare-fun c!198210 () Bool)

(declare-fun e!766839 () Int)

(declare-fun bm!82936 () Bool)

(assert (=> bm!82936 (= call!82938 (slice!433 (ite c!198216 (right!10797 (left!10467 t!4115)) (ite c!198210 (left!10467 (left!10467 t!4115)) (right!10797 (left!10467 t!4115)))) (ite c!198216 (- from!553 call!82943) (ite c!198210 from!553 0)) (ite c!198216 (- lt!409707 call!82943) e!766839)))))

(declare-fun b!1193345 () Bool)

(declare-fun e!766848 () Conc!3946)

(assert (=> b!1193345 (= e!766848 Empty!3946)))

(declare-fun b!1193346 () Bool)

(declare-fun c!198212 () Bool)

(assert (=> b!1193346 (= c!198212 (= (- lt!409707 from!553) 0))))

(assert (=> b!1193346 (= e!766838 e!766848)))

(declare-fun b!1193347 () Bool)

(declare-fun res!538879 () Bool)

(declare-fun e!766846 () Bool)

(assert (=> b!1193347 (=> (not res!538879) (not e!766846))))

(assert (=> b!1193347 (= res!538879 (<= lt!409707 (size!9510 (left!10467 t!4115))))))

(declare-fun b!1193348 () Bool)

(declare-fun e!766843 () Conc!3946)

(declare-fun call!82940 () Conc!3946)

(assert (=> b!1193348 (= e!766843 call!82940)))

(declare-fun b!1193349 () Bool)

(assert (=> b!1193349 (= e!766844 call!82938)))

(declare-fun b!1193350 () Bool)

(assert (=> b!1193350 (= e!766844 e!766843)))

(assert (=> b!1193350 (= c!198210 (<= lt!409707 call!82943))))

(declare-fun b!1193351 () Bool)

(assert (=> b!1193351 (= e!766839 lt!409707)))

(declare-fun b!1193352 () Bool)

(assert (=> b!1193352 (= e!766847 call!82942)))

(declare-fun b!1193353 () Bool)

(assert (=> b!1193353 (= e!766839 (- lt!409707 call!82943))))

(declare-fun b!1193354 () Bool)

(declare-fun e!766840 () List!12037)

(assert (=> b!1193354 (= e!766841 e!766840)))

(declare-fun c!198215 () Bool)

(assert (=> b!1193354 (= c!198215 (<= lt!409707 call!82942))))

(declare-fun call!82941 () List!12037)

(declare-fun b!1193355 () Bool)

(assert (=> b!1193355 (= e!766840 (++!3050 call!82941 (slice!432 lt!409742 0 (- lt!409707 call!82942))))))

(declare-fun bm!82937 () Bool)

(declare-fun c!198211 () Bool)

(assert (=> bm!82937 (= c!198211 c!198215)))

(assert (=> bm!82937 (= call!82941 call!82939)))

(declare-fun b!1193356 () Bool)

(declare-fun slice!434 (IArray!7897 Int Int) IArray!7897)

(assert (=> b!1193356 (= e!766848 (Leaf!6044 (slice!434 (xs!6651 (left!10467 t!4115)) from!553 lt!409707) (- lt!409707 from!553)))))

(declare-fun d!340780 () Bool)

(declare-fun e!766845 () Bool)

(assert (=> d!340780 e!766845))

(declare-fun res!538877 () Bool)

(assert (=> d!340780 (=> (not res!538877) (not e!766845))))

(declare-fun lt!409740 () Conc!3946)

(assert (=> d!340780 (= res!538877 (isBalanced!1131 lt!409740))))

(assert (=> d!340780 (= lt!409740 e!766842)))

(declare-fun c!198214 () Bool)

(assert (=> d!340780 (= c!198214 (= from!553 lt!409707))))

(assert (=> d!340780 e!766846))

(declare-fun res!538878 () Bool)

(assert (=> d!340780 (=> (not res!538878) (not e!766846))))

(assert (=> d!340780 (= res!538878 (and (<= 0 from!553) (<= from!553 lt!409707)))))

(assert (=> d!340780 (= (slice!433 (left!10467 t!4115) from!553 lt!409707) lt!409740)))

(declare-fun b!1193357 () Bool)

(assert (=> b!1193357 (= e!766846 (isBalanced!1131 (left!10467 t!4115)))))

(declare-fun b!1193358 () Bool)

(declare-fun ++!3051 (Conc!3946 Conc!3946) Conc!3946)

(assert (=> b!1193358 (= e!766843 (++!3051 (slice!433 (left!10467 (left!10467 t!4115)) from!553 call!82943) call!82940))))

(declare-fun b!1193359 () Bool)

(assert (=> b!1193359 (= e!766842 Empty!3946)))

(declare-fun bm!82938 () Bool)

(declare-fun c!198217 () Bool)

(assert (=> bm!82938 (= c!198217 c!198210)))

(assert (=> bm!82938 (= call!82940 call!82938)))

(declare-fun b!1193360 () Bool)

(assert (=> b!1193360 (= e!766847 lt!409707)))

(declare-fun b!1193361 () Bool)

(assert (=> b!1193361 (= e!766845 (= (list!4435 lt!409740) (slice!432 (list!4435 (left!10467 t!4115)) from!553 lt!409707)))))

(declare-fun b!1193362 () Bool)

(assert (=> b!1193362 (= e!766840 call!82941)))

(declare-fun b!1193363 () Bool)

(assert (=> b!1193363 (= e!766841 call!82939)))

(assert (= (and d!340780 res!538878) b!1193347))

(assert (= (and b!1193347 res!538879) b!1193357))

(assert (= (and d!340780 c!198214) b!1193359))

(assert (= (and d!340780 (not c!198214)) b!1193343))

(assert (= (and b!1193343 c!198209) b!1193346))

(assert (= (and b!1193343 (not c!198209)) b!1193344))

(assert (= (and b!1193346 c!198212) b!1193345))

(assert (= (and b!1193346 (not c!198212)) b!1193356))

(assert (= (and b!1193344 c!198213) b!1193363))

(assert (= (and b!1193344 (not c!198213)) b!1193354))

(assert (= (and b!1193354 c!198215) b!1193362))

(assert (= (and b!1193354 (not c!198215)) b!1193355))

(assert (= (or b!1193362 b!1193355) bm!82937))

(assert (= (and bm!82937 c!198211) b!1193360))

(assert (= (and bm!82937 (not c!198211)) b!1193352))

(assert (= (or b!1193363 b!1193352 b!1193354 b!1193355) bm!82933))

(assert (= (or b!1193363 bm!82937) bm!82934))

(assert (= (and b!1193344 c!198216) b!1193349))

(assert (= (and b!1193344 (not c!198216)) b!1193350))

(assert (= (and b!1193350 c!198210) b!1193348))

(assert (= (and b!1193350 (not c!198210)) b!1193358))

(assert (= (or b!1193348 b!1193358) bm!82938))

(assert (= (and bm!82938 c!198217) b!1193351))

(assert (= (and bm!82938 (not c!198217)) b!1193353))

(assert (= (or b!1193349 b!1193353 b!1193358 b!1193350) bm!82935))

(assert (= (or b!1193349 bm!82938) bm!82936))

(assert (= (and d!340780 res!538877) b!1193361))

(assert (=> b!1193347 m!1367973))

(declare-fun m!1368101 () Bool)

(assert (=> b!1193344 m!1368101))

(declare-fun m!1368105 () Bool)

(assert (=> b!1193344 m!1368105))

(declare-fun m!1368111 () Bool)

(assert (=> b!1193344 m!1368111))

(assert (=> b!1193344 m!1368101))

(declare-fun m!1368115 () Bool)

(assert (=> b!1193344 m!1368115))

(declare-fun m!1368117 () Bool)

(assert (=> b!1193344 m!1368117))

(declare-fun m!1368119 () Bool)

(assert (=> b!1193344 m!1368119))

(declare-fun m!1368121 () Bool)

(assert (=> b!1193344 m!1368121))

(declare-fun m!1368123 () Bool)

(assert (=> b!1193356 m!1368123))

(declare-fun m!1368125 () Bool)

(assert (=> b!1193358 m!1368125))

(assert (=> b!1193358 m!1368125))

(declare-fun m!1368127 () Bool)

(assert (=> b!1193358 m!1368127))

(declare-fun m!1368129 () Bool)

(assert (=> b!1193355 m!1368129))

(assert (=> b!1193355 m!1368129))

(declare-fun m!1368131 () Bool)

(assert (=> b!1193355 m!1368131))

(assert (=> bm!82935 m!1368117))

(declare-fun m!1368133 () Bool)

(assert (=> d!340780 m!1368133))

(declare-fun m!1368135 () Bool)

(assert (=> bm!82936 m!1368135))

(assert (=> b!1193357 m!1367987))

(assert (=> bm!82933 m!1368105))

(declare-fun m!1368137 () Bool)

(assert (=> b!1193361 m!1368137))

(assert (=> b!1193361 m!1367965))

(assert (=> b!1193361 m!1367965))

(declare-fun m!1368139 () Bool)

(assert (=> b!1193361 m!1368139))

(declare-fun m!1368141 () Bool)

(assert (=> bm!82934 m!1368141))

(assert (=> b!1193175 d!340780))

(declare-fun b!1193376 () Bool)

(declare-fun e!766855 () Bool)

(assert (=> b!1193376 (= e!766855 (not (isEmpty!7225 (right!10797 (right!10797 t!4115)))))))

(declare-fun b!1193377 () Bool)

(declare-fun e!766856 () Bool)

(assert (=> b!1193377 (= e!766856 e!766855)))

(declare-fun res!538882 () Bool)

(assert (=> b!1193377 (=> (not res!538882) (not e!766855))))

(assert (=> b!1193377 (= res!538882 (<= (- 1) (- (height!544 (left!10467 (right!10797 t!4115))) (height!544 (right!10797 (right!10797 t!4115))))))))

(declare-fun d!340814 () Bool)

(declare-fun res!538884 () Bool)

(assert (=> d!340814 (=> res!538884 e!766856)))

(assert (=> d!340814 (= res!538884 (not ((_ is Node!3946) (right!10797 t!4115))))))

(assert (=> d!340814 (= (isBalanced!1131 (right!10797 t!4115)) e!766856)))

(declare-fun b!1193378 () Bool)

(declare-fun res!538885 () Bool)

(assert (=> b!1193378 (=> (not res!538885) (not e!766855))))

(assert (=> b!1193378 (= res!538885 (isBalanced!1131 (right!10797 (right!10797 t!4115))))))

(declare-fun b!1193379 () Bool)

(declare-fun res!538887 () Bool)

(assert (=> b!1193379 (=> (not res!538887) (not e!766855))))

(assert (=> b!1193379 (= res!538887 (isBalanced!1131 (left!10467 (right!10797 t!4115))))))

(declare-fun b!1193380 () Bool)

(declare-fun res!538886 () Bool)

(assert (=> b!1193380 (=> (not res!538886) (not e!766855))))

(assert (=> b!1193380 (= res!538886 (<= (- (height!544 (left!10467 (right!10797 t!4115))) (height!544 (right!10797 (right!10797 t!4115)))) 1))))

(declare-fun b!1193381 () Bool)

(declare-fun res!538883 () Bool)

(assert (=> b!1193381 (=> (not res!538883) (not e!766855))))

(assert (=> b!1193381 (= res!538883 (not (isEmpty!7225 (left!10467 (right!10797 t!4115)))))))

(assert (= (and d!340814 (not res!538884)) b!1193377))

(assert (= (and b!1193377 res!538882) b!1193380))

(assert (= (and b!1193380 res!538886) b!1193379))

(assert (= (and b!1193379 res!538887) b!1193378))

(assert (= (and b!1193378 res!538885) b!1193381))

(assert (= (and b!1193381 res!538883) b!1193376))

(declare-fun m!1368143 () Bool)

(assert (=> b!1193379 m!1368143))

(declare-fun m!1368145 () Bool)

(assert (=> b!1193376 m!1368145))

(declare-fun m!1368147 () Bool)

(assert (=> b!1193377 m!1368147))

(declare-fun m!1368149 () Bool)

(assert (=> b!1193377 m!1368149))

(declare-fun m!1368151 () Bool)

(assert (=> b!1193378 m!1368151))

(assert (=> b!1193380 m!1368147))

(assert (=> b!1193380 m!1368149))

(declare-fun m!1368153 () Bool)

(assert (=> b!1193381 m!1368153))

(assert (=> b!1193184 d!340814))

(declare-fun d!340816 () Bool)

(declare-fun c!198223 () Bool)

(assert (=> d!340816 (= c!198223 ((_ is Node!3946) t!4115))))

(declare-fun e!766857 () Bool)

(assert (=> d!340816 (= (inv!15958 t!4115) e!766857)))

(declare-fun b!1193382 () Bool)

(assert (=> b!1193382 (= e!766857 (inv!15962 t!4115))))

(declare-fun b!1193383 () Bool)

(declare-fun e!766858 () Bool)

(assert (=> b!1193383 (= e!766857 e!766858)))

(declare-fun res!538888 () Bool)

(assert (=> b!1193383 (= res!538888 (not ((_ is Leaf!6044) t!4115)))))

(assert (=> b!1193383 (=> res!538888 e!766858)))

(declare-fun b!1193384 () Bool)

(assert (=> b!1193384 (= e!766858 (inv!15963 t!4115))))

(assert (= (and d!340816 c!198223) b!1193382))

(assert (= (and d!340816 (not c!198223)) b!1193383))

(assert (= (and b!1193383 (not res!538888)) b!1193384))

(declare-fun m!1368155 () Bool)

(assert (=> b!1193382 m!1368155))

(declare-fun m!1368157 () Bool)

(assert (=> b!1193384 m!1368157))

(assert (=> start!106116 d!340816))

(declare-fun b!1193393 () Bool)

(declare-fun e!766864 () List!12037)

(assert (=> b!1193393 (= e!766864 (slice!432 lt!409714 0 (- until!31 lt!409713)))))

(declare-fun b!1193394 () Bool)

(assert (=> b!1193394 (= e!766864 (Cons!12013 (h!17414 call!82916) (++!3050 (t!112299 call!82916) (slice!432 lt!409714 0 (- until!31 lt!409713)))))))

(declare-fun d!340818 () Bool)

(declare-fun e!766863 () Bool)

(assert (=> d!340818 e!766863))

(declare-fun res!538893 () Bool)

(assert (=> d!340818 (=> (not res!538893) (not e!766863))))

(declare-fun lt!409746 () List!12037)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1670 (List!12037) (InoxSet T!21572))

(assert (=> d!340818 (= res!538893 (= (content!1670 lt!409746) ((_ map or) (content!1670 call!82916) (content!1670 (slice!432 lt!409714 0 (- until!31 lt!409713))))))))

(assert (=> d!340818 (= lt!409746 e!766864)))

(declare-fun c!198226 () Bool)

(assert (=> d!340818 (= c!198226 ((_ is Nil!12013) call!82916))))

(assert (=> d!340818 (= (++!3050 call!82916 (slice!432 lt!409714 0 (- until!31 lt!409713))) lt!409746)))

(declare-fun b!1193396 () Bool)

(assert (=> b!1193396 (= e!766863 (or (not (= (slice!432 lt!409714 0 (- until!31 lt!409713)) Nil!12013)) (= lt!409746 call!82916)))))

(declare-fun b!1193395 () Bool)

(declare-fun res!538894 () Bool)

(assert (=> b!1193395 (=> (not res!538894) (not e!766863))))

(assert (=> b!1193395 (= res!538894 (= (size!9511 lt!409746) (+ (size!9511 call!82916) (size!9511 (slice!432 lt!409714 0 (- until!31 lt!409713))))))))

(assert (= (and d!340818 c!198226) b!1193393))

(assert (= (and d!340818 (not c!198226)) b!1193394))

(assert (= (and d!340818 res!538893) b!1193395))

(assert (= (and b!1193395 res!538894) b!1193396))

(assert (=> b!1193394 m!1367955))

(declare-fun m!1368159 () Bool)

(assert (=> b!1193394 m!1368159))

(declare-fun m!1368161 () Bool)

(assert (=> d!340818 m!1368161))

(declare-fun m!1368163 () Bool)

(assert (=> d!340818 m!1368163))

(assert (=> d!340818 m!1367955))

(declare-fun m!1368165 () Bool)

(assert (=> d!340818 m!1368165))

(declare-fun m!1368167 () Bool)

(assert (=> b!1193395 m!1368167))

(declare-fun m!1368169 () Bool)

(assert (=> b!1193395 m!1368169))

(assert (=> b!1193395 m!1367955))

(declare-fun m!1368171 () Bool)

(assert (=> b!1193395 m!1368171))

(assert (=> b!1193178 d!340818))

(declare-fun d!340820 () Bool)

(declare-fun take!111 (List!12037 Int) List!12037)

(declare-fun drop!583 (List!12037 Int) List!12037)

(assert (=> d!340820 (= (slice!432 lt!409714 0 (- until!31 lt!409713)) (take!111 (drop!583 lt!409714 0) (- (- until!31 lt!409713) 0)))))

(declare-fun bs!287972 () Bool)

(assert (= bs!287972 d!340820))

(declare-fun m!1368173 () Bool)

(assert (=> bs!287972 m!1368173))

(assert (=> bs!287972 m!1368173))

(declare-fun m!1368175 () Bool)

(assert (=> bs!287972 m!1368175))

(assert (=> b!1193178 d!340820))

(declare-fun d!340822 () Bool)

(declare-fun lt!409749 () Int)

(assert (=> d!340822 (= lt!409749 (size!9511 (list!4435 (right!10797 t!4115))))))

(assert (=> d!340822 (= lt!409749 (ite ((_ is Empty!3946) (right!10797 t!4115)) 0 (ite ((_ is Leaf!6044) (right!10797 t!4115)) (csize!8123 (right!10797 t!4115)) (csize!8122 (right!10797 t!4115)))))))

(assert (=> d!340822 (= (size!9510 (right!10797 t!4115)) lt!409749)))

(declare-fun bs!287973 () Bool)

(assert (= bs!287973 d!340822))

(assert (=> bs!287973 m!1367967))

(assert (=> bs!287973 m!1367967))

(declare-fun m!1368177 () Bool)

(assert (=> bs!287973 m!1368177))

(assert (=> b!1193177 d!340822))

(declare-fun d!340824 () Bool)

(declare-fun lt!409750 () Int)

(assert (=> d!340824 (= lt!409750 (size!9511 (list!4435 (left!10467 t!4115))))))

(assert (=> d!340824 (= lt!409750 (ite ((_ is Empty!3946) (left!10467 t!4115)) 0 (ite ((_ is Leaf!6044) (left!10467 t!4115)) (csize!8123 (left!10467 t!4115)) (csize!8122 (left!10467 t!4115)))))))

(assert (=> d!340824 (= (size!9510 (left!10467 t!4115)) lt!409750)))

(declare-fun bs!287974 () Bool)

(assert (= bs!287974 d!340824))

(assert (=> bs!287974 m!1367965))

(assert (=> bs!287974 m!1367965))

(declare-fun m!1368179 () Bool)

(assert (=> bs!287974 m!1368179))

(assert (=> b!1193171 d!340824))

(declare-fun d!340826 () Bool)

(assert (=> d!340826 (= (slice!432 (++!3050 lt!409711 lt!409714) from!553 until!31) (take!111 (drop!583 (++!3050 lt!409711 lt!409714) from!553) (- until!31 from!553)))))

(declare-fun bs!287975 () Bool)

(assert (= bs!287975 d!340826))

(assert (=> bs!287975 m!1367975))

(declare-fun m!1368181 () Bool)

(assert (=> bs!287975 m!1368181))

(assert (=> bs!287975 m!1368181))

(declare-fun m!1368183 () Bool)

(assert (=> bs!287975 m!1368183))

(assert (=> b!1193171 d!340826))

(declare-fun d!340828 () Bool)

(declare-fun lt!409753 () Int)

(assert (=> d!340828 (>= lt!409753 0)))

(declare-fun e!766867 () Int)

(assert (=> d!340828 (= lt!409753 e!766867)))

(declare-fun c!198229 () Bool)

(assert (=> d!340828 (= c!198229 ((_ is Nil!12013) lt!409711))))

(assert (=> d!340828 (= (size!9511 lt!409711) lt!409753)))

(declare-fun b!1193401 () Bool)

(assert (=> b!1193401 (= e!766867 0)))

(declare-fun b!1193402 () Bool)

(assert (=> b!1193402 (= e!766867 (+ 1 (size!9511 (t!112299 lt!409711))))))

(assert (= (and d!340828 c!198229) b!1193401))

(assert (= (and d!340828 (not c!198229)) b!1193402))

(declare-fun m!1368185 () Bool)

(assert (=> b!1193402 m!1368185))

(assert (=> b!1193171 d!340828))

(declare-fun b!1193427 () Bool)

(declare-fun e!766880 () List!12037)

(assert (=> b!1193427 (= e!766880 Nil!12013)))

(declare-fun b!1193428 () Bool)

(declare-fun e!766881 () List!12037)

(assert (=> b!1193428 (= e!766880 e!766881)))

(declare-fun c!198241 () Bool)

(assert (=> b!1193428 (= c!198241 ((_ is Leaf!6044) (left!10467 t!4115)))))

(declare-fun b!1193429 () Bool)

(declare-fun list!4437 (IArray!7897) List!12037)

(assert (=> b!1193429 (= e!766881 (list!4437 (xs!6651 (left!10467 t!4115))))))

(declare-fun d!340830 () Bool)

(declare-fun c!198240 () Bool)

(assert (=> d!340830 (= c!198240 ((_ is Empty!3946) (left!10467 t!4115)))))

(assert (=> d!340830 (= (list!4435 (left!10467 t!4115)) e!766880)))

(declare-fun b!1193430 () Bool)

(assert (=> b!1193430 (= e!766881 (++!3050 (list!4435 (left!10467 (left!10467 t!4115))) (list!4435 (right!10797 (left!10467 t!4115)))))))

(assert (= (and d!340830 c!198240) b!1193427))

(assert (= (and d!340830 (not c!198240)) b!1193428))

(assert (= (and b!1193428 c!198241) b!1193429))

(assert (= (and b!1193428 (not c!198241)) b!1193430))

(declare-fun m!1368187 () Bool)

(assert (=> b!1193429 m!1368187))

(assert (=> b!1193430 m!1368119))

(assert (=> b!1193430 m!1368121))

(assert (=> b!1193430 m!1368119))

(assert (=> b!1193430 m!1368121))

(declare-fun m!1368189 () Bool)

(assert (=> b!1193430 m!1368189))

(assert (=> b!1193171 d!340830))

(declare-fun b!1193439 () Bool)

(declare-fun e!766887 () List!12037)

(assert (=> b!1193439 (= e!766887 lt!409714)))

(declare-fun b!1193440 () Bool)

(assert (=> b!1193440 (= e!766887 (Cons!12013 (h!17414 lt!409711) (++!3050 (t!112299 lt!409711) lt!409714)))))

(declare-fun d!340832 () Bool)

(declare-fun e!766886 () Bool)

(assert (=> d!340832 e!766886))

(declare-fun res!538899 () Bool)

(assert (=> d!340832 (=> (not res!538899) (not e!766886))))

(declare-fun lt!409764 () List!12037)

(assert (=> d!340832 (= res!538899 (= (content!1670 lt!409764) ((_ map or) (content!1670 lt!409711) (content!1670 lt!409714))))))

(assert (=> d!340832 (= lt!409764 e!766887)))

(declare-fun c!198246 () Bool)

(assert (=> d!340832 (= c!198246 ((_ is Nil!12013) lt!409711))))

(assert (=> d!340832 (= (++!3050 lt!409711 lt!409714) lt!409764)))

(declare-fun b!1193442 () Bool)

(assert (=> b!1193442 (= e!766886 (or (not (= lt!409714 Nil!12013)) (= lt!409764 lt!409711)))))

(declare-fun b!1193441 () Bool)

(declare-fun res!538900 () Bool)

(assert (=> b!1193441 (=> (not res!538900) (not e!766886))))

(assert (=> b!1193441 (= res!538900 (= (size!9511 lt!409764) (+ (size!9511 lt!409711) (size!9511 lt!409714))))))

(assert (= (and d!340832 c!198246) b!1193439))

(assert (= (and d!340832 (not c!198246)) b!1193440))

(assert (= (and d!340832 res!538899) b!1193441))

(assert (= (and b!1193441 res!538900) b!1193442))

(declare-fun m!1368191 () Bool)

(assert (=> b!1193440 m!1368191))

(declare-fun m!1368193 () Bool)

(assert (=> d!340832 m!1368193))

(declare-fun m!1368195 () Bool)

(assert (=> d!340832 m!1368195))

(declare-fun m!1368197 () Bool)

(assert (=> d!340832 m!1368197))

(declare-fun m!1368199 () Bool)

(assert (=> b!1193441 m!1368199))

(assert (=> b!1193441 m!1367971))

(declare-fun m!1368201 () Bool)

(assert (=> b!1193441 m!1368201))

(assert (=> b!1193171 d!340832))

(declare-fun b!1193447 () Bool)

(declare-fun e!766890 () List!12037)

(assert (=> b!1193447 (= e!766890 Nil!12013)))

(declare-fun b!1193448 () Bool)

(declare-fun e!766891 () List!12037)

(assert (=> b!1193448 (= e!766890 e!766891)))

(declare-fun c!198250 () Bool)

(assert (=> b!1193448 (= c!198250 ((_ is Leaf!6044) (right!10797 t!4115)))))

(declare-fun b!1193449 () Bool)

(assert (=> b!1193449 (= e!766891 (list!4437 (xs!6651 (right!10797 t!4115))))))

(declare-fun d!340834 () Bool)

(declare-fun c!198249 () Bool)

(assert (=> d!340834 (= c!198249 ((_ is Empty!3946) (right!10797 t!4115)))))

(assert (=> d!340834 (= (list!4435 (right!10797 t!4115)) e!766890)))

(declare-fun b!1193450 () Bool)

(assert (=> b!1193450 (= e!766891 (++!3050 (list!4435 (left!10467 (right!10797 t!4115))) (list!4435 (right!10797 (right!10797 t!4115)))))))

(assert (= (and d!340834 c!198249) b!1193447))

(assert (= (and d!340834 (not c!198249)) b!1193448))

(assert (= (and b!1193448 c!198250) b!1193449))

(assert (= (and b!1193448 (not c!198250)) b!1193450))

(declare-fun m!1368203 () Bool)

(assert (=> b!1193449 m!1368203))

(declare-fun m!1368205 () Bool)

(assert (=> b!1193450 m!1368205))

(declare-fun m!1368207 () Bool)

(assert (=> b!1193450 m!1368207))

(assert (=> b!1193450 m!1368205))

(assert (=> b!1193450 m!1368207))

(declare-fun m!1368209 () Bool)

(assert (=> b!1193450 m!1368209))

(assert (=> b!1193171 d!340834))

(declare-fun b!1193504 () Bool)

(declare-fun e!766924 () Int)

(declare-fun call!82969 () Int)

(assert (=> b!1193504 (= e!766924 call!82969)))

(declare-fun bm!82963 () Bool)

(assert (=> bm!82963 (= call!82969 (size!9511 lt!409711))))

(declare-fun d!340836 () Bool)

(declare-fun e!766923 () List!12037)

(assert (=> d!340836 (= (slice!432 (++!3050 lt!409711 lt!409714) from!553 until!31) e!766923)))

(declare-fun c!198273 () Bool)

(assert (=> d!340836 (= c!198273 (<= (size!9511 lt!409711) from!553))))

(declare-fun lt!409773 () Unit!18432)

(declare-fun choose!7712 (List!12037 List!12037 Int Int) Unit!18432)

(assert (=> d!340836 (= lt!409773 (choose!7712 lt!409711 lt!409714 from!553 until!31))))

(declare-fun e!766922 () Bool)

(assert (=> d!340836 e!766922))

(declare-fun res!538908 () Bool)

(assert (=> d!340836 (=> (not res!538908) (not e!766922))))

(assert (=> d!340836 (= res!538908 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> d!340836 (= (sliceLemma!27 lt!409711 lt!409714 from!553 until!31) lt!409773)))

(declare-fun call!82970 () List!12037)

(declare-fun bm!82964 () Bool)

(assert (=> bm!82964 (= call!82970 (slice!432 (ite c!198273 lt!409714 lt!409711) (ite c!198273 (- from!553 call!82969) from!553) (ite c!198273 (- until!31 call!82969) e!766924)))))

(declare-fun b!1193505 () Bool)

(assert (=> b!1193505 (= e!766922 (<= until!31 (+ (size!9511 lt!409711) (size!9511 lt!409714))))))

(declare-fun bm!82965 () Bool)

(declare-fun c!198272 () Bool)

(declare-fun c!198274 () Bool)

(assert (=> bm!82965 (= c!198272 c!198274)))

(declare-fun call!82968 () List!12037)

(assert (=> bm!82965 (= call!82968 call!82970)))

(declare-fun b!1193506 () Bool)

(assert (=> b!1193506 (= e!766924 until!31)))

(declare-fun b!1193507 () Bool)

(assert (=> b!1193507 (= e!766923 call!82970)))

(declare-fun b!1193508 () Bool)

(declare-fun e!766921 () List!12037)

(assert (=> b!1193508 (= e!766921 call!82968)))

(declare-fun b!1193509 () Bool)

(assert (=> b!1193509 (= e!766923 e!766921)))

(assert (=> b!1193509 (= c!198274 (<= until!31 call!82969))))

(declare-fun b!1193510 () Bool)

(assert (=> b!1193510 (= e!766921 (++!3050 call!82968 (slice!432 lt!409714 0 (- until!31 call!82969))))))

(assert (= (and d!340836 res!538908) b!1193505))

(assert (= (and d!340836 c!198273) b!1193507))

(assert (= (and d!340836 (not c!198273)) b!1193509))

(assert (= (and b!1193509 c!198274) b!1193508))

(assert (= (and b!1193509 (not c!198274)) b!1193510))

(assert (= (or b!1193508 b!1193510) bm!82965))

(assert (= (and bm!82965 c!198272) b!1193506))

(assert (= (and bm!82965 (not c!198272)) b!1193504))

(assert (= (or b!1193507 b!1193504 b!1193509 b!1193510) bm!82963))

(assert (= (or b!1193507 bm!82965) bm!82964))

(declare-fun m!1368245 () Bool)

(assert (=> b!1193510 m!1368245))

(assert (=> b!1193510 m!1368245))

(declare-fun m!1368247 () Bool)

(assert (=> b!1193510 m!1368247))

(declare-fun m!1368251 () Bool)

(assert (=> bm!82964 m!1368251))

(assert (=> d!340836 m!1367975))

(assert (=> d!340836 m!1367975))

(assert (=> d!340836 m!1367977))

(assert (=> d!340836 m!1367971))

(declare-fun m!1368257 () Bool)

(assert (=> d!340836 m!1368257))

(assert (=> bm!82963 m!1367971))

(assert (=> b!1193505 m!1367971))

(assert (=> b!1193505 m!1368201))

(assert (=> b!1193171 d!340836))

(declare-fun d!340842 () Bool)

(declare-fun lt!409774 () Int)

(assert (=> d!340842 (= lt!409774 (size!9511 (list!4435 t!4115)))))

(assert (=> d!340842 (= lt!409774 (ite ((_ is Empty!3946) t!4115) 0 (ite ((_ is Leaf!6044) t!4115) (csize!8123 t!4115) (csize!8122 t!4115))))))

(assert (=> d!340842 (= (size!9510 t!4115) lt!409774)))

(declare-fun bs!287978 () Bool)

(assert (= bs!287978 d!340842))

(declare-fun m!1368265 () Bool)

(assert (=> bs!287978 m!1368265))

(assert (=> bs!287978 m!1368265))

(declare-fun m!1368267 () Bool)

(assert (=> bs!287978 m!1368267))

(assert (=> b!1193179 d!340842))

(declare-fun d!340844 () Bool)

(assert (=> d!340844 (= (slice!432 (ite c!198161 lt!409714 lt!409711) (ite c!198161 (- from!553 lt!409713) from!553) (ite c!198161 (- until!31 lt!409713) (ite c!198162 until!31 lt!409713))) (take!111 (drop!583 (ite c!198161 lt!409714 lt!409711) (ite c!198161 (- from!553 lt!409713) from!553)) (- (ite c!198161 (- until!31 lt!409713) (ite c!198162 until!31 lt!409713)) (ite c!198161 (- from!553 lt!409713) from!553))))))

(declare-fun bs!287979 () Bool)

(assert (= bs!287979 d!340844))

(declare-fun m!1368269 () Bool)

(assert (=> bs!287979 m!1368269))

(assert (=> bs!287979 m!1368269))

(declare-fun m!1368271 () Bool)

(assert (=> bs!287979 m!1368271))

(assert (=> bm!82910 d!340844))

(declare-fun d!340846 () Bool)

(assert (=> d!340846 (= (inv!15959 (xs!6651 t!4115)) (<= (size!9511 (innerList!4006 (xs!6651 t!4115))) 2147483647))))

(declare-fun bs!287980 () Bool)

(assert (= bs!287980 d!340846))

(declare-fun m!1368273 () Bool)

(assert (=> bs!287980 m!1368273))

(assert (=> b!1193180 d!340846))

(declare-fun b!1193530 () Bool)

(declare-fun e!766936 () Bool)

(declare-fun tp_is_empty!5927 () Bool)

(declare-fun tp!340219 () Bool)

(assert (=> b!1193530 (= e!766936 (and tp_is_empty!5927 tp!340219))))

(assert (=> b!1193182 (= tp!340201 e!766936)))

(assert (= (and b!1193182 ((_ is Cons!12013) (innerList!4006 (xs!6651 t!4115)))) b!1193530))

(declare-fun e!766942 () Bool)

(declare-fun tp!340227 () Bool)

(declare-fun b!1193539 () Bool)

(declare-fun tp!340228 () Bool)

(assert (=> b!1193539 (= e!766942 (and (inv!15958 (left!10467 (left!10467 t!4115))) tp!340227 (inv!15958 (right!10797 (left!10467 t!4115))) tp!340228))))

(declare-fun b!1193541 () Bool)

(declare-fun e!766941 () Bool)

(declare-fun tp!340226 () Bool)

(assert (=> b!1193541 (= e!766941 tp!340226)))

(declare-fun b!1193540 () Bool)

(assert (=> b!1193540 (= e!766942 (and (inv!15959 (xs!6651 (left!10467 t!4115))) e!766941))))

(assert (=> b!1193183 (= tp!340199 (and (inv!15958 (left!10467 t!4115)) e!766942))))

(assert (= (and b!1193183 ((_ is Node!3946) (left!10467 t!4115))) b!1193539))

(assert (= b!1193540 b!1193541))

(assert (= (and b!1193183 ((_ is Leaf!6044) (left!10467 t!4115))) b!1193540))

(declare-fun m!1368275 () Bool)

(assert (=> b!1193539 m!1368275))

(declare-fun m!1368277 () Bool)

(assert (=> b!1193539 m!1368277))

(declare-fun m!1368279 () Bool)

(assert (=> b!1193540 m!1368279))

(assert (=> b!1193183 m!1367959))

(declare-fun b!1193542 () Bool)

(declare-fun tp!340231 () Bool)

(declare-fun tp!340230 () Bool)

(declare-fun e!766944 () Bool)

(assert (=> b!1193542 (= e!766944 (and (inv!15958 (left!10467 (right!10797 t!4115))) tp!340230 (inv!15958 (right!10797 (right!10797 t!4115))) tp!340231))))

(declare-fun b!1193544 () Bool)

(declare-fun e!766943 () Bool)

(declare-fun tp!340229 () Bool)

(assert (=> b!1193544 (= e!766943 tp!340229)))

(declare-fun b!1193543 () Bool)

(assert (=> b!1193543 (= e!766944 (and (inv!15959 (xs!6651 (right!10797 t!4115))) e!766943))))

(assert (=> b!1193183 (= tp!340200 (and (inv!15958 (right!10797 t!4115)) e!766944))))

(assert (= (and b!1193183 ((_ is Node!3946) (right!10797 t!4115))) b!1193542))

(assert (= b!1193543 b!1193544))

(assert (= (and b!1193183 ((_ is Leaf!6044) (right!10797 t!4115))) b!1193543))

(declare-fun m!1368281 () Bool)

(assert (=> b!1193542 m!1368281))

(declare-fun m!1368283 () Bool)

(assert (=> b!1193542 m!1368283))

(declare-fun m!1368285 () Bool)

(assert (=> b!1193543 m!1368285))

(assert (=> b!1193183 m!1367961))

(check-sat (not b!1193530) (not b!1193441) (not d!340836) (not b!1193214) (not b!1193202) (not bm!82934) (not b!1193382) (not bm!82936) (not bm!82963) (not b!1193199) (not b!1193358) (not b!1193379) (not b!1193183) (not b!1193200) (not b!1193212) (not b!1193541) (not b!1193430) (not b!1193356) (not b!1193209) (not bm!82964) (not b!1193197) (not d!340846) (not d!340842) (not b!1193440) (not d!340822) (not d!340818) (not b!1193376) (not b!1193347) (not b!1193198) (not d!340832) (not d!340780) (not b!1193361) (not d!340824) (not d!340844) (not b!1193449) (not bm!82933) (not b!1193543) (not b!1193377) (not b!1193344) (not b!1193381) (not b!1193380) (not b!1193357) (not b!1193201) (not b!1193539) (not b!1193544) (not b!1193510) (not bm!82935) (not b!1193505) (not b!1193211) (not b!1193355) (not b!1193450) (not b!1193540) (not b!1193429) (not b!1193394) (not d!340820) (not b!1193384) (not d!340826) (not b!1193378) (not b!1193542) (not b!1193395) (not b!1193402) tp_is_empty!5927)
(check-sat)
