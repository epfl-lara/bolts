; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!517706 () Bool)

(assert start!517706)

(declare-fun res!2103780 () Bool)

(declare-fun e!3080063 () Bool)

(assert (=> start!517706 (=> (not res!2103780) (not e!3080063))))

(declare-datatypes ((C!26982 0))(
  ( (C!26983 (val!22825 Int)) )
))
(declare-datatypes ((List!56835 0))(
  ( (Nil!56711) (Cons!56711 (h!63159 C!26982) (t!367311 List!56835)) )
))
(declare-fun lt!2029306 () List!56835)

(declare-fun lt!2029304 () List!56835)

(assert (=> start!517706 (= res!2103780 (= lt!2029306 lt!2029304))))

(declare-datatypes ((IArray!29831 0))(
  ( (IArray!29832 (innerList!14973 List!56835)) )
))
(declare-datatypes ((Conc!14885 0))(
  ( (Node!14885 (left!41362 Conc!14885) (right!41692 Conc!14885) (csize!30000 Int) (cheight!15096 Int)) (Leaf!24761 (xs!18209 IArray!29831) (csize!30001 Int)) (Empty!14885) )
))
(declare-datatypes ((BalanceConc!29200 0))(
  ( (BalanceConc!29201 (c!840151 Conc!14885)) )
))
(declare-fun totalInput!685 () BalanceConc!29200)

(declare-fun list!17976 (BalanceConc!29200) List!56835)

(assert (=> start!517706 (= lt!2029304 (list!17976 totalInput!685))))

(declare-fun testedP!110 () List!56835)

(declare-fun testedSuffix!70 () List!56835)

(declare-fun ++!12341 (List!56835 List!56835) List!56835)

(assert (=> start!517706 (= lt!2029306 (++!12341 testedP!110 testedSuffix!70))))

(assert (=> start!517706 e!3080063))

(declare-fun e!3080064 () Bool)

(assert (=> start!517706 e!3080064))

(assert (=> start!517706 true))

(declare-fun e!3080062 () Bool)

(declare-fun inv!73546 (BalanceConc!29200) Bool)

(assert (=> start!517706 (and (inv!73546 totalInput!685) e!3080062)))

(declare-fun e!3080061 () Bool)

(assert (=> start!517706 e!3080061))

(declare-fun b!4929922 () Bool)

(declare-fun res!2103779 () Bool)

(declare-fun e!3080059 () Bool)

(assert (=> b!4929922 (=> (not res!2103779) (not e!3080059))))

(declare-fun totalInputSize!132 () Int)

(declare-fun size!37515 (BalanceConc!29200) Int)

(assert (=> b!4929922 (= res!2103779 (= totalInputSize!132 (size!37515 totalInput!685)))))

(declare-fun b!4929923 () Bool)

(assert (=> b!4929923 (= e!3080063 e!3080059)))

(declare-fun res!2103781 () Bool)

(assert (=> b!4929923 (=> (not res!2103781) (not e!3080059))))

(declare-fun testedPSize!70 () Int)

(declare-fun lt!2029307 () Int)

(assert (=> b!4929923 (= res!2103781 (= testedPSize!70 lt!2029307))))

(declare-fun size!37516 (List!56835) Int)

(assert (=> b!4929923 (= lt!2029307 (size!37516 testedP!110))))

(declare-fun b!4929924 () Bool)

(declare-fun tp_is_empty!35929 () Bool)

(declare-fun tp!1383958 () Bool)

(assert (=> b!4929924 (= e!3080061 (and tp_is_empty!35929 tp!1383958))))

(declare-fun b!4929925 () Bool)

(declare-fun e!3080060 () Bool)

(assert (=> b!4929925 (= e!3080059 (not e!3080060))))

(declare-fun res!2103782 () Bool)

(assert (=> b!4929925 (=> res!2103782 e!3080060)))

(declare-fun isPrefix!4974 (List!56835 List!56835) Bool)

(assert (=> b!4929925 (= res!2103782 (not (isPrefix!4974 testedP!110 lt!2029304)))))

(assert (=> b!4929925 (isPrefix!4974 testedP!110 lt!2029306)))

(declare-datatypes ((Unit!147335 0))(
  ( (Unit!147336) )
))
(declare-fun lt!2029308 () Unit!147335)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3198 (List!56835 List!56835) Unit!147335)

(assert (=> b!4929925 (= lt!2029308 (lemmaConcatTwoListThenFirstIsPrefix!3198 testedP!110 testedSuffix!70))))

(declare-fun b!4929926 () Bool)

(assert (=> b!4929926 (= e!3080060 (>= (size!37516 lt!2029304) lt!2029307))))

(declare-fun lt!2029305 () List!56835)

(assert (=> b!4929926 (= testedSuffix!70 lt!2029305)))

(declare-fun lt!2029309 () Unit!147335)

(declare-fun lemmaSamePrefixThenSameSuffix!2372 (List!56835 List!56835 List!56835 List!56835 List!56835) Unit!147335)

(assert (=> b!4929926 (= lt!2029309 (lemmaSamePrefixThenSameSuffix!2372 testedP!110 testedSuffix!70 testedP!110 lt!2029305 lt!2029304))))

(declare-fun getSuffix!2958 (List!56835 List!56835) List!56835)

(assert (=> b!4929926 (= lt!2029305 (getSuffix!2958 lt!2029304 testedP!110))))

(declare-fun b!4929927 () Bool)

(declare-fun tp!1383959 () Bool)

(declare-fun inv!73547 (Conc!14885) Bool)

(assert (=> b!4929927 (= e!3080062 (and (inv!73547 (c!840151 totalInput!685)) tp!1383959))))

(declare-fun b!4929928 () Bool)

(declare-fun tp!1383960 () Bool)

(assert (=> b!4929928 (= e!3080064 (and tp_is_empty!35929 tp!1383960))))

(assert (= (and start!517706 res!2103780) b!4929923))

(assert (= (and b!4929923 res!2103781) b!4929922))

(assert (= (and b!4929922 res!2103779) b!4929925))

(assert (= (and b!4929925 (not res!2103782)) b!4929926))

(assert (= (and start!517706 (is-Cons!56711 testedP!110)) b!4929928))

(assert (= start!517706 b!4929927))

(assert (= (and start!517706 (is-Cons!56711 testedSuffix!70)) b!4929924))

(declare-fun m!5950040 () Bool)

(assert (=> b!4929926 m!5950040))

(declare-fun m!5950042 () Bool)

(assert (=> b!4929926 m!5950042))

(declare-fun m!5950044 () Bool)

(assert (=> b!4929926 m!5950044))

(declare-fun m!5950046 () Bool)

(assert (=> start!517706 m!5950046))

(declare-fun m!5950048 () Bool)

(assert (=> start!517706 m!5950048))

(declare-fun m!5950050 () Bool)

(assert (=> start!517706 m!5950050))

(declare-fun m!5950052 () Bool)

(assert (=> b!4929927 m!5950052))

(declare-fun m!5950054 () Bool)

(assert (=> b!4929925 m!5950054))

(declare-fun m!5950056 () Bool)

(assert (=> b!4929925 m!5950056))

(declare-fun m!5950058 () Bool)

(assert (=> b!4929925 m!5950058))

(declare-fun m!5950060 () Bool)

(assert (=> b!4929923 m!5950060))

(declare-fun m!5950062 () Bool)

(assert (=> b!4929922 m!5950062))

(push 1)

(assert (not start!517706))

(assert (not b!4929927))

(assert (not b!4929922))

(assert (not b!4929925))

(assert (not b!4929926))

(assert (not b!4929923))

(assert tp_is_empty!35929)

(assert (not b!4929928))

(assert (not b!4929924))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1587240 () Bool)

(declare-fun list!17978 (Conc!14885) List!56835)

(assert (=> d!1587240 (= (list!17976 totalInput!685) (list!17978 (c!840151 totalInput!685)))))

(declare-fun bs!1180243 () Bool)

(assert (= bs!1180243 d!1587240))

(declare-fun m!5950088 () Bool)

(assert (=> bs!1180243 m!5950088))

(assert (=> start!517706 d!1587240))

(declare-fun b!4929964 () Bool)

(declare-fun e!3080090 () List!56835)

(assert (=> b!4929964 (= e!3080090 testedSuffix!70)))

(declare-fun d!1587244 () Bool)

(declare-fun e!3080091 () Bool)

(assert (=> d!1587244 e!3080091))

(declare-fun res!2103799 () Bool)

(assert (=> d!1587244 (=> (not res!2103799) (not e!3080091))))

(declare-fun lt!2029335 () List!56835)

(declare-fun content!10080 (List!56835) (Set C!26982))

(assert (=> d!1587244 (= res!2103799 (= (content!10080 lt!2029335) (set.union (content!10080 testedP!110) (content!10080 testedSuffix!70))))))

(assert (=> d!1587244 (= lt!2029335 e!3080090)))

(declare-fun c!840158 () Bool)

(assert (=> d!1587244 (= c!840158 (is-Nil!56711 testedP!110))))

(assert (=> d!1587244 (= (++!12341 testedP!110 testedSuffix!70) lt!2029335)))

(declare-fun b!4929965 () Bool)

(assert (=> b!4929965 (= e!3080090 (Cons!56711 (h!63159 testedP!110) (++!12341 (t!367311 testedP!110) testedSuffix!70)))))

(declare-fun b!4929966 () Bool)

(declare-fun res!2103800 () Bool)

(assert (=> b!4929966 (=> (not res!2103800) (not e!3080091))))

(assert (=> b!4929966 (= res!2103800 (= (size!37516 lt!2029335) (+ (size!37516 testedP!110) (size!37516 testedSuffix!70))))))

(declare-fun b!4929967 () Bool)

(assert (=> b!4929967 (= e!3080091 (or (not (= testedSuffix!70 Nil!56711)) (= lt!2029335 testedP!110)))))

(assert (= (and d!1587244 c!840158) b!4929964))

(assert (= (and d!1587244 (not c!840158)) b!4929965))

(assert (= (and d!1587244 res!2103799) b!4929966))

(assert (= (and b!4929966 res!2103800) b!4929967))

(declare-fun m!5950092 () Bool)

(assert (=> d!1587244 m!5950092))

(declare-fun m!5950094 () Bool)

(assert (=> d!1587244 m!5950094))

(declare-fun m!5950096 () Bool)

(assert (=> d!1587244 m!5950096))

(declare-fun m!5950100 () Bool)

(assert (=> b!4929965 m!5950100))

(declare-fun m!5950102 () Bool)

(assert (=> b!4929966 m!5950102))

(assert (=> b!4929966 m!5950060))

(declare-fun m!5950104 () Bool)

(assert (=> b!4929966 m!5950104))

(assert (=> start!517706 d!1587244))

(declare-fun d!1587250 () Bool)

(declare-fun isBalanced!4094 (Conc!14885) Bool)

(assert (=> d!1587250 (= (inv!73546 totalInput!685) (isBalanced!4094 (c!840151 totalInput!685)))))

(declare-fun bs!1180245 () Bool)

(assert (= bs!1180245 d!1587250))

(declare-fun m!5950106 () Bool)

(assert (=> bs!1180245 m!5950106))

(assert (=> start!517706 d!1587250))

(declare-fun d!1587252 () Bool)

(declare-fun lt!2029342 () Int)

(assert (=> d!1587252 (>= lt!2029342 0)))

(declare-fun e!3080097 () Int)

(assert (=> d!1587252 (= lt!2029342 e!3080097)))

(declare-fun c!840164 () Bool)

(assert (=> d!1587252 (= c!840164 (is-Nil!56711 testedP!110))))

(assert (=> d!1587252 (= (size!37516 testedP!110) lt!2029342)))

(declare-fun b!4929978 () Bool)

(assert (=> b!4929978 (= e!3080097 0)))

(declare-fun b!4929979 () Bool)

(assert (=> b!4929979 (= e!3080097 (+ 1 (size!37516 (t!367311 testedP!110))))))

(assert (= (and d!1587252 c!840164) b!4929978))

(assert (= (and d!1587252 (not c!840164)) b!4929979))

(declare-fun m!5950114 () Bool)

(assert (=> b!4929979 m!5950114))

(assert (=> b!4929923 d!1587252))

(declare-fun d!1587258 () Bool)

(declare-fun lt!2029346 () Int)

(assert (=> d!1587258 (= lt!2029346 (size!37516 (list!17976 totalInput!685)))))

(declare-fun size!37519 (Conc!14885) Int)

(assert (=> d!1587258 (= lt!2029346 (size!37519 (c!840151 totalInput!685)))))

(assert (=> d!1587258 (= (size!37515 totalInput!685) lt!2029346)))

(declare-fun bs!1180246 () Bool)

(assert (= bs!1180246 d!1587258))

(assert (=> bs!1180246 m!5950046))

(assert (=> bs!1180246 m!5950046))

(declare-fun m!5950118 () Bool)

(assert (=> bs!1180246 m!5950118))

(declare-fun m!5950120 () Bool)

(assert (=> bs!1180246 m!5950120))

(assert (=> b!4929922 d!1587258))

(declare-fun b!4930002 () Bool)

(declare-fun e!3080112 () Bool)

(assert (=> b!4930002 (= e!3080112 (>= (size!37516 lt!2029304) (size!37516 testedP!110)))))

(declare-fun b!4929999 () Bool)

(declare-fun e!3080113 () Bool)

(declare-fun e!3080111 () Bool)

(assert (=> b!4929999 (= e!3080113 e!3080111)))

(declare-fun res!2103814 () Bool)

(assert (=> b!4929999 (=> (not res!2103814) (not e!3080111))))

(assert (=> b!4929999 (= res!2103814 (not (is-Nil!56711 lt!2029304)))))

(declare-fun d!1587260 () Bool)

(assert (=> d!1587260 e!3080112))

(declare-fun res!2103812 () Bool)

(assert (=> d!1587260 (=> res!2103812 e!3080112)))

(declare-fun lt!2029352 () Bool)

(assert (=> d!1587260 (= res!2103812 (not lt!2029352))))

(assert (=> d!1587260 (= lt!2029352 e!3080113)))

(declare-fun res!2103815 () Bool)

(assert (=> d!1587260 (=> res!2103815 e!3080113)))

(assert (=> d!1587260 (= res!2103815 (is-Nil!56711 testedP!110))))

(assert (=> d!1587260 (= (isPrefix!4974 testedP!110 lt!2029304) lt!2029352)))

(declare-fun b!4930000 () Bool)

(declare-fun res!2103813 () Bool)

(assert (=> b!4930000 (=> (not res!2103813) (not e!3080111))))

(declare-fun head!10529 (List!56835) C!26982)

(assert (=> b!4930000 (= res!2103813 (= (head!10529 testedP!110) (head!10529 lt!2029304)))))

(declare-fun b!4930001 () Bool)

(declare-fun tail!9677 (List!56835) List!56835)

(assert (=> b!4930001 (= e!3080111 (isPrefix!4974 (tail!9677 testedP!110) (tail!9677 lt!2029304)))))

(assert (= (and d!1587260 (not res!2103815)) b!4929999))

(assert (= (and b!4929999 res!2103814) b!4930000))

(assert (= (and b!4930000 res!2103813) b!4930001))

(assert (= (and d!1587260 (not res!2103812)) b!4930002))

(assert (=> b!4930002 m!5950040))

(assert (=> b!4930002 m!5950060))

(declare-fun m!5950130 () Bool)

(assert (=> b!4930000 m!5950130))

(declare-fun m!5950132 () Bool)

(assert (=> b!4930000 m!5950132))

(declare-fun m!5950134 () Bool)

(assert (=> b!4930001 m!5950134))

(declare-fun m!5950136 () Bool)

(assert (=> b!4930001 m!5950136))

(assert (=> b!4930001 m!5950134))

(assert (=> b!4930001 m!5950136))

(declare-fun m!5950138 () Bool)

(assert (=> b!4930001 m!5950138))

(assert (=> b!4929925 d!1587260))

(declare-fun b!4930006 () Bool)

(declare-fun e!3080115 () Bool)

(assert (=> b!4930006 (= e!3080115 (>= (size!37516 lt!2029306) (size!37516 testedP!110)))))

(declare-fun b!4930003 () Bool)

(declare-fun e!3080116 () Bool)

(declare-fun e!3080114 () Bool)

(assert (=> b!4930003 (= e!3080116 e!3080114)))

(declare-fun res!2103818 () Bool)

(assert (=> b!4930003 (=> (not res!2103818) (not e!3080114))))

(assert (=> b!4930003 (= res!2103818 (not (is-Nil!56711 lt!2029306)))))

(declare-fun d!1587266 () Bool)

(assert (=> d!1587266 e!3080115))

(declare-fun res!2103816 () Bool)

(assert (=> d!1587266 (=> res!2103816 e!3080115)))

(declare-fun lt!2029353 () Bool)

(assert (=> d!1587266 (= res!2103816 (not lt!2029353))))

(assert (=> d!1587266 (= lt!2029353 e!3080116)))

(declare-fun res!2103819 () Bool)

(assert (=> d!1587266 (=> res!2103819 e!3080116)))

(assert (=> d!1587266 (= res!2103819 (is-Nil!56711 testedP!110))))

(assert (=> d!1587266 (= (isPrefix!4974 testedP!110 lt!2029306) lt!2029353)))

(declare-fun b!4930004 () Bool)

(declare-fun res!2103817 () Bool)

(assert (=> b!4930004 (=> (not res!2103817) (not e!3080114))))

(assert (=> b!4930004 (= res!2103817 (= (head!10529 testedP!110) (head!10529 lt!2029306)))))

(declare-fun b!4930005 () Bool)

(assert (=> b!4930005 (= e!3080114 (isPrefix!4974 (tail!9677 testedP!110) (tail!9677 lt!2029306)))))

(assert (= (and d!1587266 (not res!2103819)) b!4930003))

(assert (= (and b!4930003 res!2103818) b!4930004))

(assert (= (and b!4930004 res!2103817) b!4930005))

(assert (= (and d!1587266 (not res!2103816)) b!4930006))

(declare-fun m!5950142 () Bool)

(assert (=> b!4930006 m!5950142))

(assert (=> b!4930006 m!5950060))

(assert (=> b!4930004 m!5950130))

(declare-fun m!5950144 () Bool)

(assert (=> b!4930004 m!5950144))

(assert (=> b!4930005 m!5950134))

(declare-fun m!5950146 () Bool)

(assert (=> b!4930005 m!5950146))

(assert (=> b!4930005 m!5950134))

(assert (=> b!4930005 m!5950146))

(declare-fun m!5950148 () Bool)

(assert (=> b!4930005 m!5950148))

(assert (=> b!4929925 d!1587266))

(declare-fun d!1587270 () Bool)

(assert (=> d!1587270 (isPrefix!4974 testedP!110 (++!12341 testedP!110 testedSuffix!70))))

(declare-fun lt!2029356 () Unit!147335)

(declare-fun choose!36125 (List!56835 List!56835) Unit!147335)

(assert (=> d!1587270 (= lt!2029356 (choose!36125 testedP!110 testedSuffix!70))))

(assert (=> d!1587270 (= (lemmaConcatTwoListThenFirstIsPrefix!3198 testedP!110 testedSuffix!70) lt!2029356)))

(declare-fun bs!1180249 () Bool)

(assert (= bs!1180249 d!1587270))

(assert (=> bs!1180249 m!5950048))

(assert (=> bs!1180249 m!5950048))

(declare-fun m!5950150 () Bool)

(assert (=> bs!1180249 m!5950150))

(declare-fun m!5950152 () Bool)

(assert (=> bs!1180249 m!5950152))

(assert (=> b!4929925 d!1587270))

(declare-fun d!1587272 () Bool)

(declare-fun c!840174 () Bool)

(assert (=> d!1587272 (= c!840174 (is-Node!14885 (c!840151 totalInput!685)))))

(declare-fun e!3080127 () Bool)

(assert (=> d!1587272 (= (inv!73547 (c!840151 totalInput!685)) e!3080127)))

(declare-fun b!4930025 () Bool)

(declare-fun inv!73552 (Conc!14885) Bool)

(assert (=> b!4930025 (= e!3080127 (inv!73552 (c!840151 totalInput!685)))))

(declare-fun b!4930026 () Bool)

(declare-fun e!3080128 () Bool)

(assert (=> b!4930026 (= e!3080127 e!3080128)))

(declare-fun res!2103828 () Bool)

(assert (=> b!4930026 (= res!2103828 (not (is-Leaf!24761 (c!840151 totalInput!685))))))

(assert (=> b!4930026 (=> res!2103828 e!3080128)))

(declare-fun b!4930027 () Bool)

(declare-fun inv!73553 (Conc!14885) Bool)

(assert (=> b!4930027 (= e!3080128 (inv!73553 (c!840151 totalInput!685)))))

(assert (= (and d!1587272 c!840174) b!4930025))

(assert (= (and d!1587272 (not c!840174)) b!4930026))

(assert (= (and b!4930026 (not res!2103828)) b!4930027))

(declare-fun m!5950166 () Bool)

(assert (=> b!4930025 m!5950166))

(declare-fun m!5950168 () Bool)

(assert (=> b!4930027 m!5950168))

(assert (=> b!4929927 d!1587272))

(declare-fun d!1587276 () Bool)

(declare-fun lt!2029360 () Int)

(assert (=> d!1587276 (>= lt!2029360 0)))

(declare-fun e!3080129 () Int)

(assert (=> d!1587276 (= lt!2029360 e!3080129)))

(declare-fun c!840175 () Bool)

(assert (=> d!1587276 (= c!840175 (is-Nil!56711 lt!2029304))))

(assert (=> d!1587276 (= (size!37516 lt!2029304) lt!2029360)))

(declare-fun b!4930028 () Bool)

(assert (=> b!4930028 (= e!3080129 0)))

(declare-fun b!4930029 () Bool)

(assert (=> b!4930029 (= e!3080129 (+ 1 (size!37516 (t!367311 lt!2029304))))))

(assert (= (and d!1587276 c!840175) b!4930028))

(assert (= (and d!1587276 (not c!840175)) b!4930029))

(declare-fun m!5950170 () Bool)

(assert (=> b!4930029 m!5950170))

(assert (=> b!4929926 d!1587276))

(declare-fun d!1587278 () Bool)

(assert (=> d!1587278 (= testedSuffix!70 lt!2029305)))

(declare-fun lt!2029363 () Unit!147335)

(declare-fun choose!36126 (List!56835 List!56835 List!56835 List!56835 List!56835) Unit!147335)

(assert (=> d!1587278 (= lt!2029363 (choose!36126 testedP!110 testedSuffix!70 testedP!110 lt!2029305 lt!2029304))))

(assert (=> d!1587278 (isPrefix!4974 testedP!110 lt!2029304)))

(assert (=> d!1587278 (= (lemmaSamePrefixThenSameSuffix!2372 testedP!110 testedSuffix!70 testedP!110 lt!2029305 lt!2029304) lt!2029363)))

(declare-fun bs!1180251 () Bool)

(assert (= bs!1180251 d!1587278))

(declare-fun m!5950174 () Bool)

(assert (=> bs!1180251 m!5950174))

(assert (=> bs!1180251 m!5950054))

(assert (=> b!4929926 d!1587278))

(declare-fun d!1587282 () Bool)

(declare-fun lt!2029370 () List!56835)

(assert (=> d!1587282 (= (++!12341 testedP!110 lt!2029370) lt!2029304)))

(declare-fun e!3080144 () List!56835)

(assert (=> d!1587282 (= lt!2029370 e!3080144)))

(declare-fun c!840178 () Bool)

(assert (=> d!1587282 (= c!840178 (is-Cons!56711 testedP!110))))

(assert (=> d!1587282 (>= (size!37516 lt!2029304) (size!37516 testedP!110))))

(assert (=> d!1587282 (= (getSuffix!2958 lt!2029304 testedP!110) lt!2029370)))

(declare-fun b!4930050 () Bool)

(assert (=> b!4930050 (= e!3080144 (getSuffix!2958 (tail!9677 lt!2029304) (t!367311 testedP!110)))))

(declare-fun b!4930051 () Bool)

(assert (=> b!4930051 (= e!3080144 lt!2029304)))

(assert (= (and d!1587282 c!840178) b!4930050))

(assert (= (and d!1587282 (not c!840178)) b!4930051))

(declare-fun m!5950186 () Bool)

(assert (=> d!1587282 m!5950186))

(assert (=> d!1587282 m!5950040))

(assert (=> d!1587282 m!5950060))

(assert (=> b!4930050 m!5950136))

(assert (=> b!4930050 m!5950136))

(declare-fun m!5950194 () Bool)

(assert (=> b!4930050 m!5950194))

(assert (=> b!4929926 d!1587282))

(declare-fun b!4930056 () Bool)

(declare-fun e!3080147 () Bool)

(declare-fun tp!1383972 () Bool)

(assert (=> b!4930056 (= e!3080147 (and tp_is_empty!35929 tp!1383972))))

(assert (=> b!4929928 (= tp!1383960 e!3080147)))

(assert (= (and b!4929928 (is-Cons!56711 (t!367311 testedP!110))) b!4930056))

(declare-fun b!4930057 () Bool)

(declare-fun e!3080148 () Bool)

(declare-fun tp!1383973 () Bool)

(assert (=> b!4930057 (= e!3080148 (and tp_is_empty!35929 tp!1383973))))

(assert (=> b!4929924 (= tp!1383958 e!3080148)))

(assert (= (and b!4929924 (is-Cons!56711 (t!367311 testedSuffix!70))) b!4930057))

(declare-fun tp!1383981 () Bool)

(declare-fun e!3080154 () Bool)

(declare-fun tp!1383982 () Bool)

(declare-fun b!4930066 () Bool)

(assert (=> b!4930066 (= e!3080154 (and (inv!73547 (left!41362 (c!840151 totalInput!685))) tp!1383981 (inv!73547 (right!41692 (c!840151 totalInput!685))) tp!1383982))))

(declare-fun b!4930069 () Bool)

(declare-fun e!3080153 () Bool)

(declare-fun tp!1383980 () Bool)

(assert (=> b!4930069 (= e!3080153 tp!1383980)))

(declare-fun b!4930067 () Bool)

(declare-fun inv!73554 (IArray!29831) Bool)

(assert (=> b!4930067 (= e!3080154 (and (inv!73554 (xs!18209 (c!840151 totalInput!685))) e!3080153))))

(assert (=> b!4929927 (= tp!1383959 (and (inv!73547 (c!840151 totalInput!685)) e!3080154))))

(assert (= (and b!4929927 (is-Node!14885 (c!840151 totalInput!685))) b!4930066))

(assert (= b!4930067 b!4930069))

(assert (= (and b!4929927 (is-Leaf!24761 (c!840151 totalInput!685))) b!4930067))

(declare-fun m!5950200 () Bool)

(assert (=> b!4930066 m!5950200))

(declare-fun m!5950202 () Bool)

(assert (=> b!4930066 m!5950202))

(declare-fun m!5950204 () Bool)

(assert (=> b!4930067 m!5950204))

(assert (=> b!4929927 m!5950052))

(push 1)

(assert (not d!1587282))

(assert (not b!4930004))

(assert (not b!4930067))

(assert (not d!1587278))

(assert (not b!4930006))

(assert (not b!4929927))

(assert (not b!4930056))

(assert (not b!4930029))

(assert (not b!4930050))

(assert (not b!4930000))

(assert (not b!4929966))

(assert (not d!1587258))

(assert tp_is_empty!35929)

(assert (not b!4929965))

(assert (not b!4930057))

(assert (not b!4930025))

(assert (not d!1587250))

(assert (not b!4930069))

(assert (not b!4930005))

(assert (not b!4930002))

(assert (not b!4930001))

(assert (not b!4930066))

(assert (not b!4929979))

(assert (not d!1587270))

(assert (not d!1587244))

(assert (not b!4930027))

(assert (not d!1587240))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

